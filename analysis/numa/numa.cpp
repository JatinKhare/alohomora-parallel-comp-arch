#include <benchmark/benchmark.h>
#include <emmintrin.h>
#include <atomic>
#include <random>
#include <cstdint>
#include <iostream>
#include <thread>
#include <vector>
#include <pthread.h>
#include <stdlib.h>
#include <sched.h>
#include <condition_variable>
#include <mutex>
#include <random>
#include "../include/header.h"
#include <chrono>
#include <time.h>
using namespace std::chrono;

#define COUNTER
//#define STACK_LIST

#define CRITICAL_SECTION_SIZE 1
#define LOOP_COUNT 1000

//#define TIME_ANALYSIS

//#define ORIGINAL
#define BLOCKING_LOCK
//#define PAUSE_x86
//#define SCHED_YIELD
//#define ACTIVE_BACKOFF
//#define EXP_BACKOFF
//#define RANDOM_BACKOFF

#ifdef EXP_BACKOFF
	#define MIN_BACKOFF 4
	#define MAX_BACKOFF 1024
#endif
//#define PAUSE_ARM
#ifdef BLOCKING_LOCK
	std::condition_variable cvar;
	std::mutex Mutex;
#endif
std::atomic<bool> lock_flag{false};
#ifdef TIME_ANALYSIS
	std::chrono::time_point<std::chrono::system_clock> start[256], end_time[256];
	std::chrono::duration<double> elapsed_seconds[256], max_elapsed_seconds[256], max_time;
#endif
#ifdef RANDOM_BACKOFF
	// Random number generator
  std::uniform_int_distribution<int> dist;
  std::mt19937 rng;
#endif


typedef struct cna_node {
    uintptr_t spin ;
    int socket ;
    struct cna_node *secTail ;
    struct cna_node *next;
} cna_node_t;
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
    return rand() & THRESHOLD;
    //return true;
}
int cna_lock(cna_node_t** tail  , cna_node_t *me)
{
    #ifdef BLOCKING_LOCK
	std::unique_lock<std::mutex> lock(Mutex);
    #endif
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
    /////////////////
#ifdef ACTIVE_BACKOFF
      while (1) {
       // Try and grab the lock
       //if (!lock_flag.exchange(true)) return;
      if(me->spin==1)return 0; 
       // Wait for the lock to be free
       do {
         // Pause for some number of iterations
         for (volatile int i = 0; i < 150; i += 1)
           ;
         // Read the lock state
       } while (!me->spin);
     }

#endif
#ifdef EXP_BACKOFF
     int backoff_iters = MIN_BACKOFF;
     while (1) {
      // Try and grab the lock
      // Return if we get the lock
      if(me->spin==1)return 0;

      // If we didn't get the lock, just read the value which gets cached
      // locally. This leads to less traffic.
      // Pause for an exponentially increasing number of iterations
      do {
        // Pause for some number of iterations
        for (int i = 0; i < backoff_iters; i++) _mm_pause();

        // Get the backoff iterations for next time
        backoff_iters = std::min(backoff_iters << 1, MAX_BACKOFF);

        // Check to see if the lock is free
      } while (!me->spin);
    }
#endif
#ifdef RANDOM_BACKOFF
    rng.seed(std::random_device()());
     
    dist = std::uniform_int_distribution<int>(4, 1024);
    // Keep trying
    while (1) {
      // Try and grab the lock
      // Exit if we got the lock
      if(me->spin==1)return 0;

      // If we didn't get the lock, just read the value which gets cached
      // locally. This leads to less traffic.
      // Pause for a random number of iterations (between 4 and 1024)
      do {
        // Get a random number of iterations between 4 and 1024
        int backoff_iters = dist(rng);

        // Pause for some number of iterations
        for (int i = 0; i < backoff_iters; i++) _mm_pause();

        // Check to see if the lock is now free
      }  while (!me->spin);
    }
#endif

    ////////////////

#ifndef ACTIVE_BACKOFF
#ifndef EXP_BACKOFF
#ifndef RANDOM_BACKOFF
    while (!me->spin){
#ifdef SCHED_YIELD
	sched_yield();
#endif

#ifdef PAUSE_ARM
	asm volatile("yield");
#endif

#ifdef PAUSE_x86
	asm volatile("pause");
#endif

#ifdef BLOCKING_LOCK
	cvar.wait(lock);
#endif
#ifdef ORIGINAL
;
#endif
    }
#endif
#endif
#endif
    return 0;
}

void increase_counter()
{
    for(int j = 0; j<CRITICAL_SECTION_SIZE; j++){
	val++;
    }
}
void cna_unlock(cna_node_t** tail , cna_node_t *me) {
    #ifdef BLOCKING_LOCK
	std::unique_lock<std::mutex> lock(Mutex);
    #endif
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
            ;//asm("pause");
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
        #ifdef BLOCKING_LOCK
        cvar.notify_all();
        //cvar.notify_one();
        #endif
}

void *lock_example(int i) { 
  for(int j=0;j<LOOP_COUNT;j++) {
    cna_node_t* me= new cna_node_t;
#ifdef TIME_ANALYSIS
	start[i] = high_resolution_clock::now();
#endif
    cna_lock(tail, me);
#ifdef TIME_ANALYSIS
	end_time[i] = high_resolution_clock::now();
#endif
#ifdef STACK_LIST
    push_pop_func(j);
#endif

#ifdef COUNTER
    val++;
#endif
    cna_unlock(tail, me);
#ifdef TIME_ANALYSIS
	elapsed_seconds[i] = end_time[i] - start[i];
	if(elapsed_seconds[i].count() > max_elapsed_seconds[i].count())
		max_elapsed_seconds[i] = elapsed_seconds[i];
#endif
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
    reset_sum();
    for (auto i = 0u; i < num_threads; i++) {
      threads.emplace_back([&] { lock_example(i); });
    }
    // Join threads
    for (auto &thread : threads) thread.join();
    threads.clear();
 #ifdef TIME_ANALYSIS
    for(int i = 0; i<256; i++){
	    if(max_elapsed_seconds[i].count()>max_time.count())
		    max_time = max_elapsed_seconds[i];
    }
#endif
#ifdef COUNTER
    //cout<<"val = "<<val<<"\n";
    assert(val == LOOP_COUNT*CRITICAL_SECTION_SIZE*num_threads);
#endif

#ifdef STACK_LIST
    //cout<<"size_of_SL() = "<<size_of_SL()<<", LOOP_COUNT/2 = "<<LOOP_COUNT/2<<", num_threads = "<<num_threads<<"\n";
    assert(size_of_SL() == num_threads*LOOP_COUNT/2);
#endif
    auto max_ = -1;

    //cout<<"Worse starvation = "<<*max_element(starve_count.begin(), starve_count.end())<<"\n";
  }
#ifdef TIME_ANALYSIS
    cout<<"Maximum wait time = "<<max_time.count()<<"\n";
#endif
}
BENCHMARK(numa_benchmark)
    ->RangeMultiplier(2)
    ->Range(1, std::thread::hardware_concurrency()*2)
    ->UseRealTime()
    ->Unit(benchmark::kMillisecond);

BENCHMARK_MAIN();

