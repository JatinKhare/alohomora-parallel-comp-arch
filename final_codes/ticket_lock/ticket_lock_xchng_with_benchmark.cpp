#include <benchmark/benchmark.h>

#include <atomic>
#include <cstdint>
#include <thread>
#include <vector>
#include <sched.h>
//#define MEASURE_CONTENTION
using namespace std;
std::atomic<int> ticket_queued_total{0};
std::atomic<int> ticket_acquires{0};
static inline uint32_t
sub_abs(const uint32_t a, const uint32_t b)
{
  if (a > b)
    {
      return a - b;
    }
  else
    {
      return b - a;
    }
}
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
#ifdef MEASURE_CONTENTION
  std::uint8_t once = 1;
  ticket_acquires++;
#endif

    //Get in the ticket line 
    auto place = incref(&my_ticket_num);//Converts to xadd instruction (atomic function)
	//Service your request if you are at the place which is currently being served 	
        while (curr_serving != place)
		{
#ifdef MEASURE_CONTENTION
			if (once)
			{
				ticket_queued_total += sub_abs(curr_serving,place);
				//printf("queue = %d\n",sub_abs(curr_serving,place));
				once = 0;
			}
#endif 
		}
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
void
ticket_print_contention_stats()
{
  double avg_q = ticket_queued_total / (double) ticket_acquires;
  printf("#Acquires: %10llu / #Total queuing: %10llu / Avg. queuing: %.3f\n",
	 (long long unsigned) ticket_acquires, (long long unsigned) ticket_queued_total, avg_q);
}

double
ticket_avg_queue()
{
  double avg_q = ticket_queued_total / (double) ticket_acquires;
  return avg_q;
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
#ifdef MEASURE_CONTENTION
	 ticket_print_contention_stats();
#endif
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