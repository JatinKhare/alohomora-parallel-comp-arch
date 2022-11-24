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

//#define COUNTER
#define CRITICAL_SECTION_SIZE 1

#define STACK_LIST

#define LOOP_COUNT 10000

//#define ORIGINAL
//#define BLOCKING_LOCK
//#define PAUSE_ARM
//#define PAUSE_x86
#define SCHED_YIELD



#ifdef BLOCKING_LOCK
	std::condition_variable cvar;
	std::mutex Mutex;
#endif

using namespace std;

std::atomic<bool> lock_flag{false};
int val;

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

void *lock_example() {
  for(int i=0;i<LOOP_COUNT;i++) {
    my_lock();
#ifdef STACK_LIST
    push_pop_func(i);
#endif
#ifdef COUNTER
    increase_counter();
#endif
    my_unlock();
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
      threads.emplace_back([&] { lock_example(); });
    }
    // Join threads
    for (auto &thread : threads) thread.join();
    threads.clear();
#ifdef COUNTER
    assert(val == LOOP_COUNT*num_threads);
#endif

#ifdef STACK_LIST
    //cout<<"size_of_SL() = "<<size_of_SL()<<"LOOP_COUNT = "<<LOOP_COUNT/2<<"\n";
    assert(size_of_SL() == num_threads*LOOP_COUNT/2);
#endif
    //cout<<"val = "<<val<<"\n";
  }
  //sem_destroy(&mutex);
}
BENCHMARK(cas_benchmark)
    ->RangeMultiplier(2)
    ->Range(1, std::thread::hardware_concurrency())
    ->UseRealTime()
    ->Unit(benchmark::kMillisecond);

BENCHMARK_MAIN();
