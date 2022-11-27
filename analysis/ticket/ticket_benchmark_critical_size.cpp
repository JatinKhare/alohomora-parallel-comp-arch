#include <benchmark/benchmark.h>
#include <atomic>
#include <cstdint>
#include <iostream>
#include <thread>
#include <vector>
#include <pthread.h>
#include <stdlib.h>
#define CRITICAL_SECTION_SIZE 100000
using namespace std;

//pthread_mutex_t mutext_lock;
int s = 0;

std::atomic<bool> lock_flag{false};
int val = 0;

void my_lock(){
  bool expected = false;
  while (!lock_flag.compare_exchange_strong(expected, true)) {
        expected = false;
  }
}

void my_unlock(){
  lock_flag.store(false);
}
void increase_counter()
{
    val++;
}

void *lock_example() {
  my_lock();
  for(int i=0;i<CRITICAL_SECTION_SIZE;i++) {
    increase_counter();
  }
  my_unlock();

  return NULL;
}

// Small Benchmark (Google benchmark runnning mechanism)
static void cas_benchmark(benchmark::State &s) {
  // Sweep over a range of threads
  auto num_threads = s.range(0);

  // Value we will increment
  std::int64_t val = 0;

  // Allocate a vector of threads
  std::vector<std::thread> threads;
  threads.reserve(num_threads);


 
  // Timing loop
  for (auto _ : s) {
	  val = 0;
    for (auto i = 0u; i < num_threads; i++) {
      threads.emplace_back([&] { lock_example(); });
    }
    // Join threads
    for (auto &thread : threads) thread.join();
    threads.clear();
    assert(val == CRITICAL_SECTION_SIZE*num_threads);
  }

}
BENCHMARK(cas_benchmark)
    ->RangeMultiplier(2)
    ->Range(1, std::thread::hardware_concurrency())
    ->UseRealTime()
    ->Unit(benchmark::kMillisecond);

BENCHMARK_MAIN();
