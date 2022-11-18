#include <benchmark/benchmark.h>
#include <atomic>
#include <cstdint>
#include <iostream>
#include <thread>
#include <vector>
using namespace std;
typedef struct qnode {
  struct qnode *next;
  bool locked;
} qnode;
class mcs_lock {
//public:
public:
void lock (std::atomic<qnode*> *L, qnode *I) {
    I->next = NULL;
    qnode *predecessor = I;
    if ((L->exchange(predecessor)) != NULL) {
        I->locked = true;
        predecessor->next = I;
        while (I->locked)
        ;
    }
}
void unlock (std::atomic<qnode*> *L, qnode *I) {
    if (!I->next)
       if(std::atomic_compare_exchange_weak_explicit(L, &I, NULL, std::memory_order_release, std::memory_order_relaxed))
          return;
    while (!I->next){
        ;
    }
    I->next->locked = false;
}
};
  std::atomic<qnode*> *L = new std::atomic<qnode*>;
// Increment val once each time the lock is acquired
void inc(mcs_lock &t, std::int64_t &val) {
	qnode* I = new qnode;
  //for (int i = 0; i < 10; i++) {
    t.lock(L,I);
    val++;
    t.unlock(L,I);
  //}
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
    for (auto i = 0u; i < num_threads; i++) {
      threads.emplace_back([&] { inc(sl, val); });
    }
    // Join threads
    for (auto &thread : threads) thread.join();
    threads.clear();
  }
}
BENCHMARK(mcs_lock_benchmark)
    ->RangeMultiplier(2)
    ->Range(1, std::thread::hardware_concurrency())
    ->UseRealTime()
    ->Unit(benchmark::kMillisecond);
BENCHMARK_MAIN();