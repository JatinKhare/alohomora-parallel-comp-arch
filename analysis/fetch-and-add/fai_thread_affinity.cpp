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

#define CRITICAL_SECTION_SIZE 1
#define LOOP_COUNT 100000
class Spinlock {
	private:
		std::atomic<int> lock_flag{0};
	public:

		void lock(){
		    do{
		        while(lock_flag.load()){;}
		    }while ((lock_flag.fetch_add(1)!=0));

		}

		void unlock(){
			lock_flag.store(0);
		}
};


// Increment val once each time the lock is acquired
void inc(Spinlock &s, std::int64_t &val) {
	for (int i = 0; i < LOOP_COUNT; i++) {
		s.lock();
		for(int j = 0; j<CRITICAL_SECTION_SIZE; j++)
			val++;
		//val++;
		s.unlock();
	}
}

//  Aligned type
//  Allows us to keep to atomics from sitting on the same cache line
struct alignas(64) AlignedAtomic {
	AlignedAtomic(int v) { val = v; }
	std::int64_t val;
};

static void os_scheduler(benchmark::State &s) {
        auto num_threads= s.range(0);
	
	for(auto _:s) {
	AlignedAtomic a{0};
	AlignedAtomic b{0};
	Spinlock s1;

	std::vector<std::thread> threads(num_threads);
	for (unsigned i = 0; i < num_threads; i++) {
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
        {
        // If thread Object is Joinable then Join that thread.
        if (th.joinable())
            th.join();
        }
    	
    if(num_threads>=4) {	
        assert(a.val== num_threads*LOOP_COUNT*CRITICAL_SECTION_SIZE/2);
        assert(b.val== num_threads*LOOP_COUNT*CRITICAL_SECTION_SIZE/2);
    }
    }
}
// Data sharing benchmark w/ OS scheduling
//static void osScheduling(benchmark::State& s) {
//	while (s.KeepRunning()) {
//		os_scheduler();
//	}
//}

BENCHMARK(os_scheduler)
->RangeMultiplier(2)
->Range(1,std::thread::hardware_concurrency()*4)
->UseRealTime()
->Unit(benchmark::kMillisecond);


static void thread_affinity(benchmark::State &s) {
	auto num_threads= s.range(0);
	
	for(auto _:s){
	AlignedAtomic a{0};
	AlignedAtomic b{0};
	Spinlock s1;
	int index[4] = {0, 0, 0, 1};//worse case
	//int index[4] = {0, 1, 0, 1};//best case
	//int index[4] = {30, 7, 31, 127};
	//int index[8] = {0, 1, 30, 31, 66, 67, 94, 97}; //worst arrangement
	//int index[8] = {0, 1, 0, 1, 0, 1, 0, 1};	//best arrangement
	//int index[8] = {0, 4, 1, 5, 2, 6, 3, 7};	//cache ping pong
	std::vector<std::thread> threads(num_threads);
	for (unsigned i = 0; i < num_threads; i++) {
		cpu_set_t cpuset;
		CPU_ZERO(&cpuset);
		//CPU_SET(index[i], &cpuset);
		CPU_SET(i%8, &cpuset);
		//if(i%2)
		//	CPU_SET(0, &cpuset);
		//else
		//	CPU_SET(1, &cpuset);
		//	CPU_SET(i, &cpuset);
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
	if(num_threads>=4) {
		assert(a.val== num_threads*LOOP_COUNT*CRITICAL_SECTION_SIZE/2);
		assert(b.val== num_threads*LOOP_COUNT*CRITICAL_SECTION_SIZE/2);
        }
	}
}

// Data sharing benchmark w/ manual scheduling
//static void threadAffinity(benchmark::State& s) {
//	while (s.KeepRunning()) {
//		thread_affinity();
//	}
//}
BENCHMARK(thread_affinity)
->RangeMultiplier(2)
->Range(1,std::thread::hardware_concurrency()*2)
->UseRealTime()
->Unit(benchmark::kMillisecond);
BENCHMARK_MAIN();
