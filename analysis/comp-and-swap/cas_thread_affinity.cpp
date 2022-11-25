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

#define NUM_THREADS 8
#define CRITICAL_SECTION_SIZE 100000
#define LOOP_COUNT 1000
class Spinlock {
	private:
		std::atomic<bool> lock_flag{false};
	public:
		void lock(){
			bool expected = false;
			while (!lock_flag.compare_exchange_strong(expected, true)) {
                                expected = false;
			}
		}

		void unlock(){
			lock_flag.store(false);
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

void os_scheduler() {

	AlignedAtomic a{0};
	AlignedAtomic b{0};
	cout<<"a = "<<&a.val<<", b = "<<&b.val<<"\n";
	Spinlock s1;

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
    	 {
        // If thread Object is Joinable then Join that thread.
        if (th.joinable())
            th.join();
    	}
	assert(a.val == NUM_THREADS*LOOP_COUNT*CRITICAL_SECTION_SIZE/2);
	assert(b.val == NUM_THREADS*LOOP_COUNT*CRITICAL_SECTION_SIZE/2);
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
	cout<<"a = "<<&a.val<<", b = "<<&b.val<<"\n";
	Spinlock s1;
	//int index[4] = {0, 1, 1, 0};//worse case
	//int index[4] = {0, 1, 0, 1};//best case
	//int index[4] = {30, 7, 31, 127};
	//int index[8] = {0, 1, 30, 31, 66, 67, 94, 97}; //worst arrangement
	int index[8] = {0, 0, 1, 1, 2, 2, 3, 3};	//best arrangement
	//int index[8] = {0, 4, 1, 5, 2, 6, 3, 7};	//cache ping pong
	std::vector<std::thread> threads(NUM_THREADS);
	for (unsigned i = 0; i < NUM_THREADS; i++) {
		cpu_set_t cpuset;
		CPU_ZERO(&cpuset);
		CPU_SET(index[i], &cpuset);
		//CPU_SET(i%2, &cpuset);

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
	assert(a.val == NUM_THREADS*LOOP_COUNT*CRITICAL_SECTION_SIZE/2);
	assert(b.val == NUM_THREADS*LOOP_COUNT*CRITICAL_SECTION_SIZE/2);

}

// Data sharing benchmark w/ manual scheduling
static void threadAffinity(benchmark::State& s) {
	while (s.KeepRunning()) {
		thread_affinity();
	}
}
BENCHMARK(threadAffinity)->UseRealTime()->Unit(benchmark::kMillisecond);

BENCHMARK_MAIN();
