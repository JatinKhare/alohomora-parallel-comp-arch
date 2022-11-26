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
  volatile bool locked;
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
qnode* I_unlock = new qnode;
qnode* I;

class mcs_lock {
	public:
void my_lock (qnode **L, qnode *I) {

    I->next = NULL;
    qnode *predecessor = I;

    predecessor = __sync_lock_test_and_set(L, predecessor);

    if (predecessor!=NULL) {
        I->locked = true;
        predecessor->next = I;
        while (I->locked)
                ;
    }
}

void unlock () {

   if (!I->next){
          if(__sync_val_compare_and_swap(L, I, NULL) == I)
           return;
    }
    while (!I->next){;}

    I->next->locked = false;

};

}
// Increment val once each time the lock is acquired
void inc(mcs_lock &t, std::int64_t &val) {
	for(int i=0;i<100;i++) {
		//qnode* I = new qnode;
		t.lock();
		val++;
		t.unlock();
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
	  val = 0;
    for (auto i = 0u; i < num_threads; i++) {
      threads.emplace_back([&] { inc(sl, val); });
    }
    // Join threads
    for (auto &thread : threads) thread.join();
    threads.clear();
    std::cout<<"val = "<<val<<"\n";
  }
}
BENCHMARK(mcs_lock_benchmark)
    ->RangeMultiplier(2)
    ->Range(1, std::thread::hardware_concurrency())
    ->UseRealTime()
    ->Unit(benchmark::kMillisecond);

BENCHMARK_MAIN();
