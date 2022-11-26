#include <benchmark/benchmark.h>
#include <atomic>
#include <cstdint>
#include <thread>
#include <vector>
#include <utmpx.h>
#include <stdio.h>
#include<iostream>
using namespace std;
typedef struct cna_node {
    uintptr_t spin ;
    int socket ;
    struct cna_node *secTail ;
    struct cna_node *next;
} cna_node_t;
#define LOOP_COUNT 100000
std::uint64_t val =0;
cna_node_t** tail = new cna_node_t*;
//This function (instruction ) helps us get the numa node number
int current_numa_node()
{
    unsigned long a,d,c;
    asm volatile("rdtscp" : "=a" (a), "=d" (d), "=c" (c));
    int chip = (c & 0xFFF000)>>12;
    int core = c & 0xFFF;
    return (chip);
}
//int main(){
//cout<<"chip : "<<current_numa_node()<<"\n";
//}


cna_node_t * find_successor (cna_node_t *me)
{
    cna_node_t *next = me->next;
    int mySocket = me->socket;
    if (mySocket == -1)
        mySocket = current_numa_node();
    // Check if my immediate successor is on the same socket
    if (next->socket == mySocket)
        return next;
    cna_node_t *secHead = next;
    cna_node_t * secTail = next;
    cna_node_t *cur = next->next;
    //Traverse the main queue
    while (cur)
    {
        //Check if cur is running on my socket 
        if (cur->socket == mySocket)
        {
            if (me->spin > 1)
                (( cna_node_t *)( me->spin))->secTail->next = secHead;
            else
                me->spin = ( uintptr_t )secHead;
            secTail ->next = NULL;
            (( cna_node_t *)( me->spin))->secTail = secTail ;
            return cur;
        }
        secTail = cur;
        cur = cur->next;
    }
    return NULL;
}
//Long-term fairness threshold
#define THRESHOLD (0xffff)
int keep_lock_local ()
{
    //return pseudo_rand() & THRESHOLD;
    return true;
}
int cna_lock(cna_node_t** tail  , cna_node_t *me)
{
    me->next = 0;
    me->socket = -1;
    me->spin = 0;
    //Add myself to the main queue
    cna_node_t *tail_=  __sync_lock_test_and_set(tail, me);
    //__sync_val_compare_and_swap(tail, *tail, me);
    // No one there?
    if (! tail_ )
    {   me->spin = 1; //spin variable is reused as secondary head
        return 0;
    }
    // Someone there, need to link in 
    me->socket = current_numa_node();
    tail_->next = me;
    //Wait for the lock to become available
    while (!me->spin)
    {
       asm("pause");
    }
    return 0;
}
void cna_unlock(cna_node_t** tail , cna_node_t *me) {
    // Is there a successor in the main queue? 
    if (! me->next)
    {
        // Is there a node in the secondary queue?
        if (me->spin == 1)
        {
            //If not, try to set tail to NULL, indicating that
            //both main and secondary queues are empty
            //if(tail->compare_exchange_strong(me,NULL)) {
            if(__sync_val_compare_and_swap(tail, me, NULL) == me){
                return;
            }
        }
        else
        {
            //Otherwise, try to set tail to the last node in
            //the secondary queue 
            cna_node_t *secHead = (cna_node_t *)me->spin;
            if(__sync_val_compare_and_swap(tail, me, secHead->secTail) == me){
            //if (tail->compare_exchange_strong(me,secHead->secTail))
                //If successful, pass the lock to the head of
                //the secondary queue 
                secHead->spin = 1;
                return;
            }
        }
        // Wait for successor to appear 
        while (me->next == NULL) {
            asm("pause");
        }
    }
    //Determine the next lock holder and pass the lock by
    //setting its spin field 
    cna_node_t *succ = NULL;
    if ( keep_lock_local () && (succ = find_successor (me)))
    {
        succ->spin = me->spin;
    }
    else if (me->spin > 1)
    {
        succ = (cna_node_t *)me->spin;
        succ->secTail->next = me->next;
        succ->spin = 1;
    }
    else
    {
        me->next->spin = 1;
    }
}
void *lock_example(int i) {
  for(int i=0;i<LOOP_COUNT;i++) {
    cna_node_t* me= new cna_node_t;
    cna_lock(tail, me);
    val++;
    cna_unlock(tail, me);
    free(me);
  }
  return NULL;
}
// Small Benchmark (Google benchmark runnning mechanism)
static void numa_benchmark(benchmark::State &s) {
  // Sweep over a range of threads
  //sem_init(&mutex, 0, 1);
    //sema s1;
    //InitSem(1);
  auto num_threads = s.range(0);
  *tail = NULL;
  // Value we will increment

  // Allocate a vector of threads
  std::vector<std::thread> threads;
  threads.reserve(num_threads);



  // Timing loop
  for (auto _ : s) {
    val=0;
    for (auto i = 0u; i < num_threads; i++) {
      threads.emplace_back([&] { lock_example(i); });
    }
    // Join threads
    for (auto &thread : threads) thread.join();
    threads.clear();
  }
  //assert(val == num_threads * LOOP_COUNT);
}
BENCHMARK(numa_benchmark)
    ->RangeMultiplier(2)
    ->Range(1, std::thread::hardware_concurrency()*2)
    ->UseRealTime()
    ->Unit(benchmark::kMillisecond);

BENCHMARK_MAIN();
