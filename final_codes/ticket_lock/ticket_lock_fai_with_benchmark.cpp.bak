#include <benchmark/benchmark.h>

#include <atomic>
#include <cstdint>
#include <thread>
#include <vector>
#include <sched.h>
#include <mutex>
#include <condition_variable>
#include <deque>
//#define SCHED_YEILD
#define BLOCKING_LOCK
//#define PAUSE
//#define QUEUE_LOCK
// Simple Spinlock
// Now uses ticket system for fairness
#ifdef QUEUE_LOCK
	struct queue_elem {
    std::condition_variable cvar;
    bool owner = false;
};  
bool locked = false;
#endif
class Spinlock {
 private:
  // Lock is now two counters:
  //  1.) The latest place taken in line
  //  2.) Which number is currently being served
  std::atomic<std::uint64_t> line{0};
  // Needs to avoid the compiler putting this in a register!
#ifdef BLOCKING_LOCK
  std::atomic<uint64_t> serving{0};
  std::condition_variable cvar;
  std::mutex mutex;
#endif
#ifdef PAUSE
  volatile std::uint64_t serving{0};
#endif
#ifdef SCHED_YEILD
  volatile std::uint64_t serving{0};
#endif
#ifdef QUEUE_LOCK
  std::atomic<uint64_t> serving{0};
  std::condition_variable cvar;
  std::mutex mutex;
  std::deque<queue_elem*> cvar_queue;
#endif
  
  //std::uint16_t serving{0};
  public:
  // Locking mechanism
  void lock() {
    // Get the latest place in line (and increment the value)
#ifdef BLOCKING_LOCK
     auto place = line.fetch_add(1, std::memory_order_relaxed);
#else
    auto place = line.fetch_add(1);
#endif
#ifdef BLOCKING_LOCK
    if(place == serving.load(std::memory_order_acquire))
		return;
	std::unique_lock<std::mutex> lock(mutex);
#endif
    // Wait until our number is "called"
#ifdef QUEUE_LOCK
std::unique_lock<std::mutex> guard(mutex);
    if (!locked) {
        locked = true;
        return;
    }

    queue_elem node;
    cvar_queue.push_back(&node);

    do {
        node.cvar.wait(guard);
    } while (!node.owner);

    assert(locked && cvar_queue.front() == &node);
    cvar_queue.pop_front();
	return;
#endif
#ifdef BLOCKING_LOCK
    while(place != serving.load(std::memory_order_acquire))
#else
    while (serving != place)
#endif
    {
#ifdef SCHED_YEILD
	 sched_yield();
#endif
#ifdef BLOCKING_LOCK
	  cvar.wait(lock);
#endif
#ifdef PAUSE
	__asm__ ( "pause;" );
#endif

    } 
  }

  // Unlocking mechanism
  // Increment serving number to pass the lock
  // No need for an atomic! The thread with the lock is the only one that
  // accesses this variable!
  void unlock() {
#ifdef QUEUE_LOCK
std::unique_lock<std::mutex> guard(mutex);
    if (cvar_queue.empty()) {
        locked = false;
    } else {
        auto& next = cvar_queue.front();
        next->owner = true;
        next->cvar.notify_one();
    }
#endif
#ifdef BLOCKING_LOCK	
	std::unique_lock<std::mutex> lock(mutex);
    auto s = serving.load(std::memory_order_relaxed) + 1;
    serving.store(s, std::memory_order_release);
    auto d = line.load(std::memory_order_relaxed);
    assert(s <= d);
    if (s < d) {
        // wake all waiters
        cvar.notify_all();
    }
#else 
	asm volatile("" : : : "memory");
    serving = serving + 1;
#endif
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
