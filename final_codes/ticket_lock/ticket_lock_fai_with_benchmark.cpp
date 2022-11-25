#include <benchmark/benchmark.h>

#include <atomic>
#include <cstdint>
#include <thread>
#include <vector>

// Simple Spinlock
// Now uses ticket system for fairness
class Spinlock {
 private:
  std::atomic<std::uint16_t> line{0};
  volatile std::uint16_t serving{0};
 public:
  void lock() {
    auto place = line.fetch_add(1);
    while (serving != place){
      ;
    } 
  }
  void unlock() {
    asm volatile("" : : : "memory");
    serving = serving + 1;
  }
};

// Increment val once each time the lock is acquired
void inc(Spinlock &s, std::int64_t &val) {
  for (int i = 0; i < 100000; i++) {
    s.lock();
    val++;
    s.unlock();
  }
}

// Small Benchmark
static void ticket_lock(benchmark::State &s) {
  // Sweep over a range of threads
  auto num_threads = s.range(0);

  // Value we will increment
  std::int64_t val = 0;

  // Allocate a vector of threads
  std::vector<std::thread> threads;
  threads.reserve(num_threads);

  Spinlock sl;

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
BENCHMARK(ticket_lock)
    ->RangeMultiplier(2)
    ->Range(1, std::thread::hardware_concurrency())
    ->UseRealTime()
    ->Unit(benchmark::kMillisecond);

BENCHMARK_MAIN();
