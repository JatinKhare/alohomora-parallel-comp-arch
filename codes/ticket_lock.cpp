#include <benchmark/benchmark.h>
#include <atomic>
#include <cstdint>
#include <iostream>
#include <thread>
#include <vector>
#include <pthread.h>
#include <stdlib.h>


class ticket_lock {
 private:
  //What is the current thread's ticket number 
  std::atomic<int> * my_ticket_num = new std::atomic<int>;
  my_ticket_num->store(0, std::memory_order_release);
  //Currently which request is being served 
  volatile std::uint16_t curr_serving{0};

 public:
 std::atomic<int*> *L = new std::atomic<int*>;

L->exchange(int);
  // Locking mechanism
  void lock() {
    //Get in the ticket line 
    short *value;
    *value = my_ticket_num;
    std::atomic_compare_exchange_strong(&my_ticket_num, value, 11);
    //auto place = my_ticket_num.fetch_add(1);//Converts to xadd instruction (atomic function)
	//Service your request if you are at the place which is currently being served 	
    while (curr_serving != my_ticket_num)
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
    val++;
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



