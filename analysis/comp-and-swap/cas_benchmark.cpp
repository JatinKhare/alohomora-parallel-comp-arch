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
using namespace std::chrono;

#define COUNTER
//#define STACK_LIST

#define CRITICAL_SECTION_SIZE 1
#define LOOP_COUNT 1000000 

//#define TIME_ANALYSIS

//#define ORIGINAL
//#define BLOCKING_LOCK
//#define PAUSE_x86
//#define SCHED_YIELD
//#define ACTIVE_BACKOFF
//#define EXP_BACKOFF
#define RANDOM_BACKOFF

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
void my_lock(){
  bool expected = false;
#ifdef BLOCKING_LOCK
	std::unique_lock<std::mutex> lock(Mutex);
#endif
#ifdef ACTIVE_BACKOFF
      while (1) {
       // Try and grab the lock
       //if (!lock_flag.exchange(true)) return;
      if(__sync_val_compare_and_swap((bool *)&lock_flag, expected, true) == expected)return;
       // Wait for the lock to be free
       do {
         // Pause for some number of iterations
         for (volatile int i = 0; i < 150; i += 1)
           ;
         // Read the lock state
       } while (lock_flag.load());
     }

#endif
#ifdef EXP_BACKOFF
     int backoff_iters = MIN_BACKOFF;
     while (1) {
      // Try and grab the lock
      // Return if we get the lock
      if (__sync_val_compare_and_swap((bool *)&lock_flag, expected, true) == expected) return;

      // If we didn't get the lock, just read the value which gets cached
      // locally. This leads to less traffic.
      // Pause for an exponentially increasing number of iterations
      do {
        // Pause for some number of iterations
        for (int i = 0; i < backoff_iters; i++) _mm_pause();

        // Get the backoff iterations for next time
        backoff_iters = std::min(backoff_iters << 1, MAX_BACKOFF);

        // Check to see if the lock is free
      } while (lock_flag.load());
    }
#endif
#ifdef RANDOM_BACKOFF
    rng.seed(std::random_device()());
     
    dist = std::uniform_int_distribution<int>(4, 1024);
    // Keep trying
    while (1) {
      // Try and grab the lock
      // Exit if we got the lock
      if (__sync_val_compare_and_swap((bool *)&lock_flag, expected, true) == expected) return;

      // If we didn't get the lock, just read the value which gets cached
      // locally. This leads to less traffic.
      // Pause for a random number of iterations (between 4 and 1024)
      do {
        // Get a random number of iterations between 4 and 1024
        int backoff_iters = dist(rng);

        // Pause for some number of iterations
        for (int i = 0; i < backoff_iters; i++) _mm_pause();

        // Check to see if the lock is now free
      } while (lock_flag.load());
    }
#endif
#ifndef ACTIVE_BACKOFF
#ifndef EXP_BACKOFF
#ifndef RANDOM_BACKOFF
	while (!lock_flag.compare_exchange_strong(expected, true)) {
		expected = false;
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
  }
#endif
#endif
#endif
}

void my_unlock(){
  lock_flag.store(false);
#ifdef BLOCKING_LOCK
  cvar.notify_all();
  //cvar.notify_one();
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
static void cas_benchmark(benchmark::State &s) {
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
BENCHMARK(cas_benchmark)
    ->RangeMultiplier(2)
    ->Range(1, std::thread::hardware_concurrency()*2)
    ->UseRealTime()
    ->Unit(benchmark::kMillisecond);

BENCHMARK_MAIN();
