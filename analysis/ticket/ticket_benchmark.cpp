#include <benchmark/benchmark.h>
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
#include "../include/header.h"
#include <chrono>
#include <time.h>
using namespace std::chrono;

#define COUNTER
//#define STACK_LIST

#define CRITICAL_SECTION_SIZE 1000
#define LOOP_COUNT 1

//#define TIME_ANALYSIS

//#define ORIGINAL
#define BLOCKING_LOCK
//#define PAUSE_x86
//#define SCHED_YIELD

//#define ACTIVE_BACKOFF
//#define EXP_BACKOFF
//#define RANDOM_BACKOFF

//#define PAUSE_ARM


#ifdef EXP_BACKOFF
	#define MIN_BACKOFF 4
	#define MAX_BACKOFF 1024
#endif

#ifdef RANDOM_BACKOFF
	// Random number generator
  std::uniform_int_distribution<int> dist;
  std::mt19937 rng;
#endif

#ifdef BLOCKING_LOCK
  std::condition_variable cvar;
  std::mutex Mutex;
#endif
#ifdef TIME_ANALYSIS
  std::chrono::time_point<std::chrono::system_clock> start[256], end_time[256];
  std::chrono::duration<double> elapsed_seconds[256], max_elapsed_seconds[256], max_time;
#endif

std::atomic<std::uint64_t> line{0};
#ifndef BLOCKING_LOCK
volatile std::uint16_t serving{0};
#else
 std::atomic<uint64_t> serving{0};
#endif
int val;
void my_lock(){
#ifdef BLOCKING_LOCK
        std::unique_lock<std::mutex> lock(Mutex);
#endif
#ifdef RANDOM_BACKOFF
  	rng.seed(std::random_device()());
  	dist = std::uniform_int_distribution<int>(4, 1024);
#endif 

#ifdef EXP_BACKOFF
	int backoff_iters = MIN_BACKOFF;
#endif 
       	auto place = line.fetch_add(1);
#ifdef BLOCKING_LOCK
	if (place == serving.load(std::memory_order_acquire))
        	return; // uncontended case

    	//std::unique_lock<std::mutex> lock(mutex);
    	while (place != serving.load(std::memory_order_acquire)){
#else
	while (serving != place){
#endif   
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
       #ifdef ACTIVE_BACKOFF
          for (volatile int i = 0; i < 150; i += 1);
		 
        #endif

        #ifdef EXP_BACKOFF
          
          // Pause for some number of iterations
          for (int i = 0; i < backoff_iters; i++) {
           asm volatile("pause");
	  }
          // Get the backoff iterations for next time
          backoff_iters = std::min(backoff_iters << 1, MAX_BACKOFF);

        #endif

        #ifdef RANDOM_BACKOFF
          int backoff_iters = dist(rng);
          // Pause for some number of iterations
          for (int i = 0; i < backoff_iters; i++)  asm volatile("pause");
        #endif
      } 

}

void my_unlock(){

#ifdef BLOCKING_LOCK
    std::unique_lock<std::mutex> lock(Mutex);
    auto s = serving.load(std::memory_order_relaxed) + 1;
    serving.store(s, std::memory_order_release);
    auto d = line.load(std::memory_order_relaxed);
    //assert(s <= d);
    if (s < d) {
        // wake all waiters
        cvar.notify_all();
        //cvar.notify_one();
    }
#else
      asm volatile("" : : : "memory");
      serving = serving + 1;

#endif

}
void increase_counter()
{
    for(int j = 0; j<CRITICAL_SECTION_SIZE; j++){
  val++;
    }
}

void *lock_example(int i) { 
  for(int j=0;j<LOOP_COUNT;j++) {
#ifdef TIME_ANALYSIS
  start[i] = high_resolution_clock::now();
#endif
  my_lock();
#ifdef TIME_ANALYSIS
  end_time[i] = high_resolution_clock::now();
#endif
#ifdef STACK_LIST
    push_pop_func(j);
#endif

#ifdef COUNTER
    increase_counter();
#endif
  my_unlock();
#ifdef TIME_ANALYSIS
  elapsed_seconds[i] = end_time[i] - start[i];
  if(elapsed_seconds[i].count() > max_elapsed_seconds[i].count())
    max_elapsed_seconds[i] = elapsed_seconds[i];
#endif
  }

  return NULL;
}

// Small Benchmark (Google benchmark runnning mechanism)
static void ticket_benchmark(benchmark::State &s) {
  // Sweep over a range of threads
  auto num_threads = s.range(0);

  // Allocate a vector of threads
  std::vector<std::thread> threads;
  threads.reserve(num_threads);

  // Timing loop
  for (auto _ : s) {
    val = 0;
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
BENCHMARK(ticket_benchmark)
    ->RangeMultiplier(2)
    ->Range(1, std::thread::hardware_concurrency()*2)
    ->UseRealTime()
    ->Unit(benchmark::kMillisecond);

BENCHMARK_MAIN();
