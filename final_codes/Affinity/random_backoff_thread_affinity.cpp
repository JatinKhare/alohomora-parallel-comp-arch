// This program shows off setting thread affinity


#include <benchmark/benchmark.h>
#include <pthread.h>
#include <emmintrin.h>
#include <atomic>
#include <cassert>
#include <thread>

#include <cstdint>
#include <random>

// Simple Spinlock
// Now uses ticket system for fairness
class Spinlock {
 private:
  // Lock is just an atomic bool
  std::atomic<bool> locked{false};
  // Random number generator
  std::uniform_int_distribution<int> dist;
  std::mt19937 rng;

 public:
  // Constructor to set up our RNG
  Spinlock() {
    // Get random numbers between 4 and 1024
    rng.seed(std::random_device()());
    dist = std::uniform_int_distribution<int>(4, 1024);
  }

  // Locking mechanism
  void lock() {
    // Keep trying
    while (1) {
      // Try and grab the lock
      // Exit if we got the lock
      if (!locked.exchange(true)) return;

      // If we didn't get the lock, just read the value which gets cached
      // locally. This leads to less traffic.
      // Pause for a random number of iterations (between 4 and 1024)
      do {
        // Get a random number of iterations between 4 and 1024
        int backoff_iters = dist(rng);

        // Pause for some number of iterations
        for (int i = 0; i < backoff_iters; i++) _mm_pause();

        // Check to see if the lock is now free
      } while (locked.load());
    }
  }

  // Unlocking mechanism
  // Just set the lock to free (false)
  // Can also use the assignment operator
  void unlock() { locked.store(false); }
};

// Increment val once each time the lock is acquired
void inc(Spinlock &s, std::int64_t &val) {
  for (int i = 0; i < 100000; i++) {
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