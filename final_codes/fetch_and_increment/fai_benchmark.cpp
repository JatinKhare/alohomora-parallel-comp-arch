#include <benchmark/benchmark.h>
#include <atomic>
#include <cstdint>
#include <iostream>
#include <thread>
#include <vector>
#include <pthread.h>
#include <stdlib.h>
using namespace std;

int s = 0;

std::atomic<int> lock_flag{0};

int val = 0;


void my_lock(){
    do{
        while(lock_flag.load()){;}
    }while ((lock_flag.fetch_add(1)!=0));

}

void my_unlock(){
  lock_flag.store(0);
}

void increase_counter()
{
  val++;
}


void *lock_example() {
  for(int i=0;i<100000;i++) {
    my_lock();
    increase_counter();
    my_unlock();
  }

  return NULL;
}

// Small Benchmark (Google benchmark runnning mechanism)
static void fai_benchmark(benchmark::State &s) {
  // Sweep over a range of threads
  //sem_init(&mutex, 0, 1);
    //sema s1;
    //InitSem(1);
  auto num_threads = s.range(0);

  // Value we will increment
  std::int64_t val = 0;

  // Allocate a vector of threads
  std::vector<std::thread> threads;
  threads.reserve(num_threads);


 
  // Timing loop
  for (auto _ : s) {
    for (auto i = 0u; i < num_threads; i++) {
      threads.emplace_back([&] { lock_example(); });
    }
    // Join threads
    for (auto &thread : threads) thread.join();
    threads.clear();
  }
  //sem_destroy(&mutex);
}
BENCHMARK(fai_benchmark)
    ->RangeMultiplier(2)
    ->Range(1, std::thread::hardware_concurrency())
    ->UseRealTime()
    ->Unit(benchmark::kMillisecond);

BENCHMARK_MAIN();