/*
 * File: mcs.c
 * Author: Tudor David <tudor.david@epfl.ch>
 *
 * Description: 
 *      MCS lock implementation
 *
 * The MIT License (MIT)
 *
 * Copyright (c) 2013 Tudor David
 *
 * Permission is hereby granted, free of charge, to any person obtaining a copy of
 * this software and associated documentation files (the "Software"), to deal in
 * the Software without restriction, including without limitation the rights to
 * use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of
 * the Software, and to permit persons to whom the Software is furnished to do so,
 * subject to the following conditions:
 *
 * The above copyright notice and this permission notice shall be included in all
 * copies or substantial portions of the Software.
 *
 * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
 * IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS
 * FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR
 * COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER
 * IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN
 * CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
 */



#include<iostream>
#include<assert.h>
#include<thread>
#include <benchmark/benchmark.h>
#include <atomic>
#include <cstdint>
#include <thread>
#include <vector>
#include <pthread.h>
#include <stdlib.h>
#include <condition_variable>
#include <mutex>
#include "../../analysis/include/header.h"
#include <chrono>
#include <time.h>
//#include "libslock/include/mcs.h"

#define CRITICAL_SECTION_SIZE 1
#define LOOP_COUNT 100000

//#define TIME_ANALYSIS

//#define ORIGINAL
//#define BLOCKING_LOCK
//#define PAUSE_x86
#define SCHED_YIELD

//#define PAUSE_ARM

#ifdef BLOCKING_LOCK
        std::condition_variable cvar;
        std::mutex Mutex;
#endif

pthread_mutex_t mutex_lock1;
pthread_mutex_t mutex_lock2;
pthread_mutex_t mutex_lock3;

static inline void* swap_pointer(volatile void* ptr, void *x) {

    __asm__ __volatile__("xchgq %0,%1"
            :"=r" ((unsigned long long) x)
            :"m" (*(volatile long long *)ptr), "0" ((unsigned long long) x)
            :"memory");

    return x;
}

auto loop_count = 10000;
int val;
typedef struct mcs_qnode {
    volatile uint8_t waiting;
    volatile struct mcs_qnode *volatile next;
#ifdef ADD_PADDING
#if CACHE_LINE_SIZE == 16
#else
    uint8_t padding[CACHE_LINE_SIZE - 16];
#endif
#endif
} mcs_qnode;

typedef volatile mcs_qnode *mcs_qnode_ptr;
typedef mcs_qnode_ptr mcs_lock; //initialized to NULL

typedef mcs_qnode* mcs_local_params;
    
typedef struct mcs_global_params {
    mcs_lock* the_lock;
#ifdef ADD_PADDING
    uint8_t padding[CACHE_LINE_SIZE - 8];
#endif
} mcs_global_params;
    
mcs_global_params the_lock;
void mcs_acquire(mcs_lock *L, mcs_qnode_ptr I) 
{   
#ifdef BLOCKING_LOCK
        std::unique_lock<std::mutex> lock(Mutex);
#endif
    I->next = NULL;
    
    __sync_synchronize();
    mcs_qnode_ptr pred = (mcs_qnode*) swap_pointer( L,(void *) I);
    
    /*pthread_mutex_lock(&mutex_lock1);
    mcs_qnode_ptr pred = (mcs_qnode*) L;
    *L = I;
    pthread_mutex_unlock(&mutex_lock1);*/
    
    if (pred == NULL)       /* lock was free */
        return;
    I->waiting = 1; // word on which to spin
    __sync_synchronize();
    pred->next = I; // make pred point to me
    
    while (I->waiting != 0) {
#ifdef SCHED_YIELD
        sched_yield();
#endif
#ifdef PAUSE_ARM
        asm volatile("yield");
#endif
#ifdef PAUSE_x86
        asm volatile("pause");
#endif
#ifdef BLOCKING_LOCK
        cvar.wait(lock);
#endif
   }
}

void mcs_release(mcs_lock *L, mcs_qnode_ptr I) 
{
    mcs_qnode_ptr succ;
    if (!(succ = I->next)) /* I seem to have no succ. */
    { 
        /* try to fix global pointer */
        if (__sync_val_compare_and_swap(L, I, NULL) == I) 
            return;

    /*pthread_mutex_lock(&mutex_lock1);
        if(*L==I){
            *L = NULL;
            return;
        }
    pthread_mutex_unlock(&mutex_lock1);*/

        do {
            succ = I->next;
        } while (!succ); // wait for successor
    }
    succ->waiting = 0;
#ifdef BLOCKING_LOCK
	  cvar.notify_all();
	  //cvar.notify_one();
#endif
}


int is_free_mcs(mcs_lock *L ){
    if ((*L) == NULL) return 1;
    return 0;
}

int init_mcs_global(mcs_global_params* the_lock) {
    //printf("Inside init_mcs_global\n");
    the_lock->the_lock=(mcs_lock*)malloc(sizeof(mcs_lock));
    *(the_lock->the_lock)=0;
    __sync_synchronize();
    return 0;
}


int init_mcs_local(uint32_t thread_num, mcs_qnode** the_qnode) {
    //printf("Inside init_mcs_local\n");
    //set_cpu(thread_num);

    (*the_qnode)=(mcs_qnode*)malloc(sizeof(mcs_qnode));

    __sync_synchronize();
    return 0;

}

void end_mcs_local(mcs_qnode* the_qnodes) {
    //printf("Inside end_mcs_local\n");
    free(the_qnodes);
}

void end_mcs_global(mcs_global_params the_locks) {
    //printf("Inside end_mcs_global\n");
    free(the_locks.the_lock);
}



void *do_something(void *id)
{
    int* my_core = (int*) id; 
    /* local data */
    mcs_local_params my_data;
    /*initialize this thread's local data*/
    init_mcs_local(*my_core, &my_data);


    __sync_synchronize();
    /*acquire the lock*/
    for(int i=0;i<loop_count;i++) {
        
        mcs_acquire(the_lock.the_lock,my_data);
           push_pop_func(i);
        /*release the lock*/
        mcs_release(the_lock.the_lock,my_data);
        
    }
    __sync_synchronize();
    /*free internal memory structures which may have been allocated for the local data*/
    end_mcs_local(my_data);

    return NULL;

}

// Small Benchmark (Google benchmark runnning mechanism)
static void mcs_lock_benchmark(benchmark::State &s) {
  // Sweep over a range of threads
  auto num_threads = s.range(0);

  // Value we will increment

  // Allocate a vector of threads
  std::vector<std::thread> threads;
  threads.reserve(num_threads);

  mcs_lock sl;
  init_mcs_global(&the_lock); 
  //int ids[]={0,1,2,3};

  __sync_synchronize();

  // Timing loop
  for (auto _ : s) {
    val = 0;
    for (auto i = 0u; i < num_threads; i++) {
      threads.emplace_back([&] { do_something(&i); });
    }
    // Join threads
    for (auto &thread : threads) thread.join();
    threads.clear();
    
  }
    
}


BENCHMARK(mcs_lock_benchmark)
    ->RangeMultiplier(2)
    ->Range(1, std::thread::hardware_concurrency()*2)
    ->UseRealTime()
    ->Unit(benchmark::kMillisecond);

BENCHMARK_MAIN();
