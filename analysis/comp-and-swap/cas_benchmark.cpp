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
#define CRITICAL_SECTION_SIZE 1000

//#define STACK_LIST

#define LOOP_COUNT 10000

//#define ORIGINAL
#define BLOCKING_LOCK
//#define PAUSE_ARM
//#define PAUSE_x86
//#define SCHED_YIELD

#ifdef BLOCKING_LOCK
	std::condition_variable cvar;
	std::mutex Mutex;
#endif
std::atomic<bool> lock_flag{false};
int val;
//std::vector<std::chrono::milliseconds> starve_count;
std::chrono::time_point<std::chrono::system_clock> start[128], end_time[128];
std::chrono::duration<double> elapsed_seconds[128], max_elapsed_seconds[128], max_time;
//double start_time[128], end_time[128];
//int thread_counter = 0;
void my_lock(){
  bool expected = false;
#ifdef BLOCKING_LOCK
	std::unique_lock<std::mutex> lock(Mutex);
#endif
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
	start[i] = high_resolution_clock::now();
	my_lock();
	end_time[i] = high_resolution_clock::now();
#ifdef STACK_LIST
    push_pop_func(i);
#endif

#ifdef COUNTER
    increase_counter();
#endif
	my_unlock();
	elapsed_seconds[i] = end_time[i] - start[i];
	if(elapsed_seconds[i].count() > max_elapsed_seconds[i].count())
		max_elapsed_seconds[i] = elapsed_seconds[i];
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
#ifdef COUNTER
    for(int i = 0; i<128; i++){
	    if(max_elapsed_seconds[i].count()>max_time.count())
		    max_time = max_elapsed_seconds[i];
    }
    //cout<<"val = "<<val<<"\n";
    assert(val == LOOP_COUNT*CRITICAL_SECTION_SIZE*num_threads);
#endif

#ifdef STACK_LIST
    //cout<<"size_of_SL() = "<<size_of_SL()<<"LOOP_COUNT = "<<LOOP_COUNT/2<<"\n";
    assert(size_of_SL() == num_threads*LOOP_COUNT/2);
#endif
    auto max_ = -1;

    //cout<<"Worse starvation = "<<*max_element(starve_count.begin(), starve_count.end())<<"\n";
  }
    cout<<"Maximum wait time = "<<max_time.count()<<"\n";
}
BENCHMARK(cas_benchmark)
    ->RangeMultiplier(2)
    ->Range(1, std::thread::hardware_concurrency())
    ->UseRealTime()
    ->Unit(benchmark::kMillisecond);

BENCHMARK_MAIN();
