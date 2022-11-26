#include <benchmark/benchmark.h>
#include <emmintrin.h>
#include <atomic>
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
using namespace std;

#define LOOP_COUNT 100000
#define CRITICAL_SECTION_SIZE 1   
//#define NUM_THREADS 8


using namespace std::chrono;

#define COUNTER
//#define STACK_LIST


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
int val;
#ifdef TIME_ANALYSIS
	std::chrono::time_point<std::chrono::system_clock> start[256], end_time[256];
	std::chrono::duration<double> elapsed_seconds[256], max_elapsed_seconds[256], max_time;
#endif
#ifdef RANDOM_BACKOFF
	// Random number generator
  std::uniform_int_distribution<int> dist;
  std::mt19937 rng;
#endif
std::atomic<int> lock_flag1{0};
std::atomic<int> lock_flag2{0};

typedef struct qnode {
  struct qnode *next;
  bool locked;
} qnode;


int val =0;
qnode* L = new qnode;

class mcs_lock {
        public:
void lock (qnode **L, qnode *I) {
   
    I->next = NULL;
    qnode *predecessor = I;
    
    predecessor = __sync_lock_test_and_set(L, predecessor);

    if (predecessor!=NULL) {
        I->locked = true;
        predecessor->next = I;
        while (I->locked){
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
          cvar.wait(lock);
        #endif
    }
}
};

void unlock (qnode** L, qnode *I) {

   if (!I->next){
          if(__sync_val_compare_and_swap(L, I, NULL) == I)
	   return;
    }
    while (!I->next){;} 

    I->next->locked = false;
    #ifdef BLOCKING_LOCK
    cvar.notify_all();
    //cvar.notify_one();
    #endif
};
};

// Increment val once each time the lock is acquired
void inc(mcs_lock &t, std::int64_t &val) {
        for(int i=0;i<LOOP_COUNT;i++) {
                qnode* I = new qnode;
                t.lock(&L, I);
                val++;
                t.unlock(&L, I);
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

  L = NULL;
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
    //std::cout<<"val = "<<val<<"\n";
    assert(val == LOOP_COUNT*CRITICAL_SECTION_SIZE*num_threads);
  }
}
BENCHMARK(mcs_lock_benchmark)
    ->RangeMultiplier(2)
    ->Range(1, std::thread::hardware_concurrency()*2)
    ->UseRealTime()
    ->Unit(benchmark::kMillisecond);

BENCHMARK_MAIN();
