#include <benchmark/benchmark.h>

#include <atomic>
#include <cstdint>
#include <thread>
#include <vector>
#include <semaphore.h>

sem_t mutex;
// Increment val once each time the lock is acquired
void inc(std::int64_t &val) {
  for (int i = 0; i < 100000; i++) {
    sem_wait(&mutex);
    val++;
    sem_post(&mutex);
  }
}

// Small Benchmark (Google benchmark runnning mechanism)
static void semaphore_benchmark(benchmark::State &s) {
  // Sweep over a range of threads
  sem_init(&mutex, 0, 1);
  auto num_threads = s.range(0);

  // Value we will increment
  std::int64_t val = 0;

  // Allocate a vector of threads
  std::vector<std::thread> threads;
  threads.reserve(num_threads);

  //semaphore sl;

  // Timing loop
  for (auto _ : s) {
    for (auto i = 0u; i < num_threads; i++) {
      threads.emplace_back([&] { inc(val); });
    }
    // Join threads
    for (auto &thread : threads) thread.join();
    threads.clear();
  }
  sem_destroy(&mutex);
}
BENCHMARK(semaphore_benchmark)
    ->RangeMultiplier(2)
    ->Range(1, std::thread::hardware_concurrency())
    ->UseRealTime()
    ->Unit(benchmark::kMillisecond);

BENCHMARK_MAIN();