#include <benchmark/benchmark.h>
#include <atomic>
#include <cstdint>
#include <iostream>
#include <thread>
#include <vector>
#include <pthread.h>
#include <stdlib.h>
using namespace std;

//pthread_mutex_t mutext_lock;


typedef struct qnode {
  struct qnode *next;
  bool locked;
} qnode;


void print_ll(qnode * root){
  int i = 0;
  while(root!=NULL){
    cout<<"("<<std::this_thread::get_id()<<")"<<root<<"("<<i<<") -> ";
    root = root->next;
    i++;
  }
  cout<<"\n";
}


int val =0;
std::atomic<qnode*> *L = new std::atomic<qnode*>;

class mcs_lock {
	public:
void lock (std::atomic<qnode*> *L, qnode *I) {
   
    I->next = NULL;
    qnode *predecessor = new qnode;
    predecessor = I;   
    //cout<<"before predecessor = "<<predecessor<<", I = "<<I<<"\n";
    predecessor = L->exchange(predecessor);
    //cout<<"after predecessor = "<<predecessor<<", I = "<<I<<"\n";
    //std::atomic_compare_exchange_strong(L, &temp_qnode, predecessor/* std::memory_order_release, std::memory_order_relaxed*/);
    if (predecessor!=NULL) {
        //std::cout<<"waiting for predecessor to make me free : )\n";
        I->locked = true;
        predecessor->next = I;
        while (I->locked)
        ;//std::cout<<"waiting to get freed :)\n";
    }
}

void unlock (std::atomic<qnode*> *L, qnode *I) {

  if(I->next){
    I->next->locked = false;
  }
  else{
    qnode *old_tail = NULL;
    //cout<<"old_tail = "<<old_tail<<", *L = "<<*L<<"\n";
    old_tail = L->exchange(old_tail);
    //cout<<"old_tail = "<<old_tail<<", *L = "<<*L<<"\n";
    if(old_tail == I)
      return;

    qnode *userper = old_tail;
    //cout<<"userper = "<<userper<<", *L = "<<*L<<"\n";
    userper = L->exchange(userper);
    /*cout<<"userper = "<<userper<<", *L = "<<*L<<"\n";*/
    while((I->next) == NULL){
        ;//std::cout<<"waiting to get the new node I added to my next :)\n";
    }
    if(userper)
      userper->next = I->next;
    else
      I->next->locked = false;
  }
    
    //std::cout<<"["<<std::this_thread::get_id()<<"] Going into unlock\n";
/*    if (!I->next){
       if(std::atomic_compare_exchange_strong(L, &I, NULL))
          return;
    }

    while (!I->next){
      std::cout<<"here..\n";
        ;
    } 
    I->next->locked = false;
    */
}
};


  
// Increment val once each time the lock is acquired
void inc(mcs_lock &t, std::int64_t &val) {
	for(int i=0;i<100000;i++) {
		qnode* I = new qnode;
		t.lock(L, I);
		val++;
		t.unlock(L, I);
		free(I);
	}
}


 
// Small Benchmark (Google benchmark runnning mechanism)
static void mcs_lock_benchmark(benchmark::State &s) {
  // Sweep over a range of threads
  auto num_threads = s.range(0);

  // Value we will increment
  std::int64_t val = 0;

  // Allocate a vector of threads
  std::vector<std::thread> threads;
  threads.reserve(num_threads);

  *L = NULL;
  mcs_lock sl;

  // Timing loop
  for (auto _ : s) {
    for (auto i = 0u; i < num_threads; i++) {
      threads.emplace_back([&] { inc(sl, val); });
    }
    // Join threads
    for (auto &thread : threads) thread.join();
    threads.clear();
  }
}
BENCHMARK(mcs_lock_benchmark)
    ->RangeMultiplier(2)
    ->Range(1, std::thread::hardware_concurrency())
    ->UseRealTime()
    ->Unit(benchmark::kMillisecond);

BENCHMARK_MAIN();