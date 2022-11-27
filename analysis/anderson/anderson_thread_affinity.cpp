#include <benchmark/benchmark.h>
#include <cassert>
#include <thread>
#include <cstdint>
#include <iostream>
#include <thread>
#include <vector>
#include <pthread.h>
#include <stdlib.h>
using namespace std;

<<<<<<< HEAD
#define NUM_THREADS 4
#define CRITICAL_SECTION_SIZE 1
#define LOOP_COUNT 100000
#define CACHELINE_SIZE 64
class Spinlock {

public:
=======
#define CACHELINE_SIZE 64

#define NUM_THREADS 4
#define CRITICAL_SECTION_SIZE 1
#define LOOP_COUNT 100000

class Spinlock {
 private:
 	std::atomic<std::uint16_t> line{0};
 	volatile std::uint16_t serving{0};
 public:
>>>>>>> 9b00b83339dea3d27c8fb1b324da9f1a9b83a181
    Spinlock(size_t maxThreads=std::thread::hardware_concurrency()) :
        LockedFlags(maxThreads)
    {
        for (auto &flag : LockedFlags)
            flag.first = true;
 
        LockedFlags[0].first = false;
    }
<<<<<<< HEAD
 
    void lock()
    {   
        const size_t index = (NextFreeIdx.fetch_add(1))%LockedFlags.size();
        auto &flag = LockedFlags[index].first;
 
        // Ensure overflow never happens
        if (index == 0)
            NextFreeIdx -= LockedFlags.size();
 
        while (flag);
 
        flag = true;
    }
 
    void unlock()
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
=======
 void lock()
 {  
     const size_t index = (NextFreeIdx.fetch_add(1))%LockedFlags.size();
     auto &flag = LockedFlags[index].first;
 
     // Ensure overflow never happens
     if (index == 0)
         NextFreeIdx -= LockedFlags.size();
 
     while (flag);
 
     flag = true;
 }
 void unlock()
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
 
>>>>>>> 9b00b83339dea3d27c8fb1b324da9f1a9b83a181
};


// Increment val once each time the lock is acquired
<<<<<<< HEAD
void inc(Spinlock *s, std::int64_t &val) {
	for (int i = 0; i < LOOP_COUNT; i++) {
		s->lock();
		for(int j = 0; j<CRITICAL_SECTION_SIZE; j++)
			val++;
		//val++;
		s->unlock();
=======
void inc(Spinlock &s, std::int64_t &val) {
	for (int i = 0; i < LOOP_COUNT; i++) {
		s.lock();
		for(int j = 0; j<CRITICAL_SECTION_SIZE; j++)
			val++;
		s.unlock();
>>>>>>> 9b00b83339dea3d27c8fb1b324da9f1a9b83a181
	}
}

//  Aligned type
//  Allows us to keep to atomics from sitting on the same cache line
struct alignas(64) AlignedAtomic {
	AlignedAtomic(int v) { val = v; }
	std::int64_t val;
};

void os_scheduler() {
<<<<<<< HEAD

	AlignedAtomic a{0};
	AlignedAtomic b{0};
	Spinlock* s1;
=======
	int affinity_ = 0;

	AlignedAtomic a{0};
	AlignedAtomic b{0};
	//cout<<"a = "<<&a.val<<", b = "<<&b.val<<"\n";
	Spinlock s1;
>>>>>>> 9b00b83339dea3d27c8fb1b324da9f1a9b83a181

	std::vector<std::thread> threads(NUM_THREADS);
	for (unsigned i = 0; i < NUM_THREADS; i++) {
	if(i%2){
		std::thread t([&]() {inc(s1, a.val); });
		threads.push_back(std::move(t));
	}
	else{
		std::thread t([&]() {inc(s1, b.val); });
		threads.push_back(std::move(t));
	}
	}
	for (std::thread & th : threads)
<<<<<<< HEAD
    {
        // If thread Object is Joinable then Join that thread.
        if (th.joinable())
            th.join();
    }
	assert(a.val== NUM_THREADS*LOOP_COUNT*CRITICAL_SECTION_SIZE/2);
	assert(b.val== NUM_THREADS*LOOP_COUNT*CRITICAL_SECTION_SIZE/2);
=======
    	 {
        // If thread Object is Joinable then Join that thread.
        if (th.joinable())
            th.join();
    	}
	assert(a.val == NUM_THREADS*LOOP_COUNT*CRITICAL_SECTION_SIZE/2);
	assert(b.val == NUM_THREADS*LOOP_COUNT*CRITICAL_SECTION_SIZE/2);
>>>>>>> 9b00b83339dea3d27c8fb1b324da9f1a9b83a181
}
// Data sharing benchmark w/ OS scheduling
static void osScheduling(benchmark::State& s) {
	while (s.KeepRunning()) {
		os_scheduler();
	}
}
BENCHMARK(osScheduling)->UseRealTime()->Unit(benchmark::kMillisecond);

void thread_affinity() {
<<<<<<< HEAD
         
	AlignedAtomic a{0};
	AlignedAtomic b{0};
	Spinlock *s1= new Spinlock(NUM_THREADS);
	int index[4] = {0, 0, 0, 1};//worse case
	//int index[4] = {0, 1, 0, 1};//best case
	//int index[4] = {30, 7, 31, 127};
	//int index[8] = {0, 1, 30, 31, 66, 67, 94, 97}; //worst arrangement
	//int index[8] = {0, 1, 0, 1, 0, 1, 0, 1};	//best arrangement
=======
	AlignedAtomic a{0};
	AlignedAtomic b{0};
	//cout<<"a = "<<&a.val<<", b = "<<&b.val<<"\n";
	Spinlock s1;
	int index[4] = {0, 1, 2, 3};//worse case
	//int index[4] = {0, 1, 0, 1};//best case
	//int index[4] = {30, 7, 31, 127};
	//int index[8] = {0, 1, 30, 31, 66, 67, 94, 97}; //worst arrangement
	//int index[8] = {0, 0, 1, 1, 2, 2, 3, 3};	//best arrangement
>>>>>>> 9b00b83339dea3d27c8fb1b324da9f1a9b83a181
	//int index[8] = {0, 4, 1, 5, 2, 6, 3, 7};	//cache ping pong
	std::vector<std::thread> threads(NUM_THREADS);
	for (unsigned i = 0; i < NUM_THREADS; i++) {
		cpu_set_t cpuset;
		CPU_ZERO(&cpuset);
<<<<<<< HEAD
		//CPU_SET(index[i], &cpuset);
		//CPU_SET(i%2, &cpuset);
		if(i%2)
			CPU_SET(0, &cpuset);
		else
			CPU_SET(1, &cpuset);
		//	CPU_SET(i, &cpuset);
=======
		CPU_SET(index[i], &cpuset);
		//CPU_SET(i%2, &cpuset);

>>>>>>> 9b00b83339dea3d27c8fb1b324da9f1a9b83a181
		int rc = -1;
		if(i%2){
			std::thread t([&]() {inc(s1, a.val); });

		rc = pthread_setaffinity_np(t.native_handle(), sizeof(cpu_set_t), &cpuset);
		threads.push_back(std::move(t));
		//threads.emplace_back([&] { inc(s1, a.val); });
		}
		else{
			std::thread t([&]() {inc(s1, b.val); });
		rc = pthread_setaffinity_np(t.native_handle(), sizeof(cpu_set_t), &cpuset);
			threads.push_back(std::move(t));
			//threads.emplace_back([&] { inc(s1, b.val); });
		}
		if (rc != 0) {
			std::cerr << "Error calling pthread_setaffinity_np: " << rc << "\n";
		}
	}
	for (std::thread & th : threads)
    	 {
        // If thread Object is Joinable then Join that thread.
        if (th.joinable())
            th.join();
    	}
<<<<<<< HEAD
	assert(a.val== NUM_THREADS*LOOP_COUNT*CRITICAL_SECTION_SIZE/2);
	assert(b.val== NUM_THREADS*LOOP_COUNT*CRITICAL_SECTION_SIZE/2);

}
=======
	assert(a.val == NUM_THREADS*LOOP_COUNT*CRITICAL_SECTION_SIZE/2);
	assert(b.val == NUM_THREADS*LOOP_COUNT*CRITICAL_SECTION_SIZE/2);

}	 
>>>>>>> 9b00b83339dea3d27c8fb1b324da9f1a9b83a181

// Data sharing benchmark w/ manual scheduling
static void threadAffinity(benchmark::State& s) {
	while (s.KeepRunning()) {
		thread_affinity();
	}
}
BENCHMARK(threadAffinity)->UseRealTime()->Unit(benchmark::kMillisecond);

BENCHMARK_MAIN();
