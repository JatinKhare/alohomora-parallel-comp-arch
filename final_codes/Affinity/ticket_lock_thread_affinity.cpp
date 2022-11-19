// This program shows off setting thread affinity
// By: Nick from CoffeeBeforeArch

#include <benchmark/benchmark.h>
#include <pthread.h>

#include <atomic>
#include <cassert>
#include <thread>

// Simple Spinlock
// Now uses ticket system for fairness
class Spinlock {
 private:
  // Lock is now two counters:
  //  1.) The latest place taken in line
  //  2.) Which number is currently being served
  std::atomic<std::uint16_t> line{0};
  // Needs to avoid the compiler putting this in a register!
  volatile std::uint16_t serving{0};
  //std::uint16_t serving{0};
 public:
  // Locking mechanism
  void lock() {
    // Get the latest place in line (and increment the value)
    auto place = line.fetch_add(1);

    // Wait until our number is "called"
    while (serving != place)
      ;
  }

  // Unlocking mechanism
  // Increment serving number to pass the lock
  // No need for an atomic! The thread with the lock is the only one that
  // accesses this variable!
  void unlock() {
    asm volatile("" : : : "memory");
    serving = serving + 1;
  }
};

// Increment val once each time the lock is acquired
void inc(Spinlock &s, std::int64_t &val) {
  for (int i = 0; i < 1000; i++) {
    s.lock();
    val++;
    s.unlock();
  }
}

//  Aligned type
//  Allows us to keep to atomics from sitting on the same cache line
struct alignas(64) AlignedAtomic {
  AlignedAtomic(int v) { val = v; }
  std::int64_t val;
};

void os_scheduler() {
  AlignedAtomic a{0};
  AlignedAtomic b{0};
  Spinlock s1;
  // Create four threads and use lambda to launch work
  std::thread t1([&]() { inc(s1,a.val); });
  std::thread t2([&]() { inc(s1,a.val); });
  std::thread t3([&]() { inc(s1,b.val); });
  std::thread t4([&]() { inc(s1,b.val); });

  // Join the threads
  t1.join();
  t2.join();
  t3.join();
  t4.join();
}

// Data sharing benchmark w/ OS scheduling
static void osScheduling(benchmark::State& s) {
  while (s.KeepRunning()) {
    os_scheduler();
  }
}
BENCHMARK(osScheduling)->UseRealTime()->Unit(benchmark::kMillisecond);

void thread_affinity() {
  AlignedAtomic a{0};
  AlignedAtomic b{0};
  Spinlock s1;
  // Create cpu sets for threads 0,1 and 2,3
  cpu_set_t cpu_set_1;
  cpu_set_t cpu_set_2;

  // Zero them out
  CPU_ZERO(&cpu_set_1);
  CPU_ZERO(&cpu_set_2);

  // And set the CPU cores we want to pin the threads too
  CPU_SET(0, &cpu_set_1);
  CPU_SET(1, &cpu_set_2);

  // Create thread 0 and 1, and pin them to core 0
  std::thread t0([&]() { inc(s1,a.val); });
  assert(pthread_setaffinity_np(t0.native_handle(), sizeof(cpu_set_t),
                                &cpu_set_1) == 0);
  std::thread t1([&]() { inc(s1,a.val); });
  assert(pthread_setaffinity_np(t1.native_handle(), sizeof(cpu_set_t),
                                &cpu_set_1) == 0);

  // Create thread 1 and 2, and pin them to core 1
  std::thread t2([&]() { inc(s1,b.val); });
  assert(pthread_setaffinity_np(t2.native_handle(), sizeof(cpu_set_t),
                                &cpu_set_2) == 0);
  std::thread t3([&]() { inc(s1,b.val); });
  assert(pthread_setaffinity_np(t3.native_handle(), sizeof(cpu_set_t),
                                &cpu_set_2) == 0);

  // Join the threads
  t0.join();
  t1.join();
  t2.join();
  t3.join();
}

// Data sharing benchmark w/ manual scheduling
static void threadAffinity(benchmark::State& s) {
  while (s.KeepRunning()) {
    thread_affinity();
  }
}
BENCHMARK(threadAffinity)->UseRealTime()->Unit(benchmark::kMillisecond);

BENCHMARK_MAIN();