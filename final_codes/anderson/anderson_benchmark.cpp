#include<thread>
#include<atomic>
#include<vector>
#include<iostream>
#include<pthread.h>
#include<assert.h>
#include<benchmark/benchmark.h>
//getconf LEVEL1_DCACHE_LINESIZE on command line to get the l1d cache line size

#define CACHELINE_SIZE 64
int val=0;
int loop_count= 100000;
pthread_mutex_t mutex1;
class AndersonSpinLock
{
public:
    AndersonSpinLock(size_t maxThreads=std::thread::hardware_concurrency()) :
        LockedFlags(maxThreads)
    {
        for (auto &flag : LockedFlags)
            flag.first = true;
 
        LockedFlags[0].first = false;
    }
 
    void my_lock()
    {   
        const size_t index = (NextFreeIdx.fetch_add(1))%LockedFlags.size();
        auto &flag = LockedFlags[index].first;
 
        // Ensure overflow never happens
        if (index == 0)
            NextFreeIdx -= LockedFlags.size();
 
        while (flag);
 
        flag = true;
    }
 
    void my_unlock()
    {
        const size_t idx = NextServingIdx.fetch_add(1);
        LockedFlags[idx%LockedFlags.size()].first = false;
    }
 

    using PaddedFlag = std::pair<std::atomic_bool,
                                 uint8_t[CACHELINE_SIZE-sizeof(std::atomic_bool)]>;
    static_assert(sizeof(PaddedFlag) == CACHELINE_SIZE, "");
 
    alignas(CACHELINE_SIZE) std::vector<PaddedFlag> LockedFlags;
    alignas(CACHELINE_SIZE) std::atomic_size_t      NextFreeIdx = {0};
    alignas(CACHELINE_SIZE) std::atomic_size_t      NextServingIdx = {1};
};

void print_vector(AndersonSpinLock * and_lock){

    for(int i = 0; i <and_lock->LockedFlags.size(); i++){
        std::cout<<and_lock->LockedFlags[i].first<<" ";
    }
    std::cout<<"NextFreeIdx = "<<and_lock->NextFreeIdx<<", NextServingIdx = "<<and_lock->NextServingIdx;
    std::cout<<"\n";
}

void *lock_example(void *and_lock) {
  AndersonSpinLock *and_lock_= (AndersonSpinLock *)(and_lock);
  
  for(int i=0;i<loop_count;i++) {
    
    and_lock_->my_lock();
    val++;
    and_lock_->my_unlock();
        
  }
  return NULL;
}


// Small Benchmark (Google benchmark runnning mechanism)
static void anderson_lock_benchmark(benchmark::State &s) {
  // Sweep over a range of threads
  auto num_threads = s.range(0);
  AndersonSpinLock *lock_= new AndersonSpinLock(num_threads);
  // Value we will increment

  // Allocate a vector of threads
  std::vector<std::thread> threads;
  threads.reserve(num_threads);

 // Timing loop
  for (auto _ : s) {
    val = 0;
    for (auto i = 0u; i < num_threads; i++) {
      threads.emplace_back([&] { lock_example((void *)lock_); });
    }
    // Join threads
    for (auto &thread : threads) thread.join();
    threads.clear();
    assert(loop_count*num_threads == val); 
  }
    
}


BENCHMARK(anderson_lock_benchmark)
    ->RangeMultiplier(2)
    ->Range(1, std::thread::hardware_concurrency())
    ->UseRealTime()
    ->Unit(benchmark::kMillisecond);

BENCHMARK_MAIN();
