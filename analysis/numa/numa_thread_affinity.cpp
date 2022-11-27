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
cna_node_t** tail = new cna_node_t*;

typedef struct cna_node {
            uintptr_t spin ;
            int socket ;
            struct cna_node *secTail ;
            struct cna_node *next;
} cna_node_t;
        std::uint64_t val =0;

class NumaLock {
	private:
        //This function (instruction ) helps us get the numa node number
        int current_numa_node()
        {
            unsigned long a,d,c;
            asm volatile("rdtscp" : "=a" (a), "=d" (d), "=c" (c));
            int chip = (c & 0xFFF000)>>12;
            int core = c & 0xFFF;
            return (chip);
        }

        cna_node_t * find_successor (cna_node_t *me){
        cna_node_t *next = me->next;
        int mySocket = me->socket;
        if (mySocket == -1)
            mySocket = current_numa_node();
        // Check if my immediate successor is on the same socket
        if (next->socket == mySocket)
            return next;
        cna_node_t *secHead = next;
        cna_node_t * secTail = next;
        cna_node_t *cur = next->next;
        //Traverse the main queue
        while (cur)
        {
            //Check if cur is running on my socket 
            if (cur->socket == mySocket)
            {
                if (me->spin > 1)
                    (( cna_node_t *)( me->spin))->secTail->next = secHead;
                else
                    me->spin = ( uintptr_t )secHead;
                secTail ->next = NULL;
                (( cna_node_t *)( me->spin))->secTail = secTail ;
                return cur;
            }
            secTail = cur;
            cur = cur->next;
        }
        return NULL;
    }
    #define THRESHOLD (0xffff)
    int keep_lock_local ()
    {
        //return pseudo_rand() & THRESHOLD;
        return true;
    }
        	
    public:

int cna_lock(cna_node_t** tail  , cna_node_t *me)
    {
    me->next = 0;
    me->socket = -1;
    me->spin = 0;
    //Add myself to the main queue
    cna_node_t *tail_=  __sync_lock_test_and_set(tail, me);
    //__sync_val_compare_and_swap(tail, *tail, me);
    // No one there?
    if (! tail_ )
    {   me->spin = 1; //spin variable is reused as secondary head
        return 0;
    }
    // Someone there, need to link in 
    me->socket = current_numa_node();
    tail_->next = me;
    //Wait for the lock to become available
    while (!me->spin)
    {
       asm("pause");
    }
    return 0;
}

		void cna_unlock(cna_node_t** tail , cna_node_t *me) {
    // Is there a successor in the main queue? 
    if (! me->next)
    {
        // Is there a node in the secondary queue?
        if (me->spin == 1)
        {
            //If not, try to set tail to NULL, indicating that
            //both main and secondary queues are empty
            //if(tail->compare_exchange_strong(me,NULL)) {
            if(__sync_val_compare_and_swap(tail, me, NULL) == me){
                return;
            }
        }
        else
        {
            //Otherwise, try to set tail to the last node in
            //the secondary queue 
            cna_node_t *secHead = (cna_node_t *)me->spin;
            if(__sync_val_compare_and_swap(tail, me, secHead->secTail) == me){
            //if (tail->compare_exchange_strong(me,secHead->secTail))
                //If successful, pass the lock to the head of
                //the secondary queue 
                secHead->spin = 1;
                return;
            }
        }
        // Wait for successor to appear 
        while (me->next == NULL) {
            asm("pause");
        }
    }
    //Determine the next lock holder and pass the lock by
    //setting its spin field 
    cna_node_t *succ = NULL;
    if ( keep_lock_local () && (succ = find_successor (me)))
    {
        succ->spin = me->spin;
    }
    else if (me->spin > 1)
    {
        succ = (cna_node_t *)me->spin;
        succ->secTail->next = me->next;
        succ->spin = 1;
    }
    else
    {
        me->next->spin = 1;
    }
}
};


// Increment val once each time the lock is acquired
void inc(NumaLock &s, std::int64_t &val) {
	for (int i = 0; i < LOOP_COUNT; i++) {
		cna_node_t* me= new cna_node_t;
        s.cna_lock(tail, me);
		for(int j = 0; j<CRITICAL_SECTION_SIZE; j++)
		    val++;
		s.cna_unlock(tail, me);
        free(me);
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
	NumaLock s1;

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
	NumaLock s1;
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
