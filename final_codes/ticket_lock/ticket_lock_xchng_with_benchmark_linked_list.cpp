#include <benchmark/benchmark.h>

#include <atomic>
#include <cstdint>
#include <thread>
#include <vector>
#include "../include/header.h"
int incref(std::atomic<int>* r)
{
    int v;
    do {
        v = r->load();
    } while (!std::atomic_compare_exchange_strong(r, &v, v+1));
    return v;
}
class ticket_lock {
 private:
  //What is the current thread's ticket number 
  std::atomic<int> my_ticket_num{0};
  //Currently which request is being served 
  volatile int curr_serving{0};

 public:
  // Locking mechanism
  void lock() {
    //Get in the ticket line 
    auto place = incref(&my_ticket_num);//Converts to xadd instruction (atomic function)
	//Service your request if you are at the place which is currently being served 	
        while (curr_serving != place)
      ;
  }

  // Unlocking mechanism
  // Increment curr_serving number to pass the lock
  void unlock() {
    asm volatile("" : : : "memory");
    curr_serving = curr_serving + 1;
  }
};

// Increment val once each time the lock is acquired
void inc(ticket_lock &t, std::int64_t &val) {
  for (int i = 0; i < 100000; i++) {
    t.lock();
    push_pop_func(i);
    t.unlock();
  }
}

// Small Benchmark (Google benchmark runnning mechanism)
static void ticket_lock_benchmark(benchmark::State &s) {
  // Sweep over a range of threads
  auto num_threads = s.range(0);

  // Value we will increment
  std::int64_t val = 0;

  // Allocate a vector of threads
  std::vector<std::thread> threads;
  threads.reserve(num_threads);

  ticket_lock sl;

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
BENCHMARK(ticket_lock_benchmark)
    ->RangeMultiplier(2)
    ->Range(1, std::thread::hardware_concurrency())
    ->UseRealTime()
    ->Unit(benchmark::kMillisecond);

BENCHMARK_MAIN();
