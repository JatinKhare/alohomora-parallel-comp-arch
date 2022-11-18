
//Ticket lock implementation with benchmark

#include <benchmark/benchmark.h>
#include <atomic>
#include <cstdint>
#include <iostream>
#include <thread>
#include <vector>
#include <pthread.h>
#include <stdlib.h>


std::atomic<int> count{0};

class CAS_lock {
 public:
 void increase_counter()
{
    int old_value = count.load() ;
    while (!count.compare_exchange_weak(old_value, old_value +1))
        ;
}
};

// Increment val once each time the lock is acquired
void inc(CAS_lock &t, std::int64_t &val) {
  for (int i = 0; i < 10; i++) {
    t.increase_counter();
  }
}

// Small Benchmark (Google benchmark runnning mechanism)
static void CAS_lock_benchmark(benchmark::State &s) {
  // Sweep over a range of threads
  auto num_threads = s.range(0);

  // Value we will increment
  std::int64_t val = 0;

  // Allocate a vector of threads
  std::vector<std::thread> threads;
  threads.reserve(num_threads);

  CAS_lock sl;

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
BENCHMARK(CAS_lock_benchmark)
    ->RangeMultiplier(2)
    ->Range(1, std::thread::hardware_concurrency())
    ->UseRealTime()
    ->Unit(benchmark::kMillisecond);

BENCHMARK_MAIN();



