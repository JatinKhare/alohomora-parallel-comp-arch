#include <benchmark/benchmark.h>
#include <atomic>
#include <cstdint>
#include <iostream>
#include <thread>
#include <vector>
#include <pthread.h>
#include <stdlib.h>
using namespace std;

#define LOOP_COUNT 100000
#define CRITICAL_SECTION_SIZE 1   
//#define NUM_THREADS 8


std::atomic<int> lock_flag1{0};
std::atomic<int> lock_flag2{0};

typedef struct qnode {
  struct qnode *next;
  bool locked;
} qnode;


void print_ll(qnode * root){
  int i = 0;
  while(root!=NULL){
    cout<<"("<<std::this_thread::get_id()<<")"<<root<<"("<<i<<") -> ";
    root = root->next;
    i++;
  }
}


int val =0;
qnode* L = new qnode;

class mcs_lock {
        public:
void lock (qnode **L, qnode *I) {
   
    I->next = NULL;
    qnode *predecessor = I;
    
    predecessor = __sync_lock_test_and_set(L, predecessor);

    if (predecessor!=NULL) {
        I->locked = true;
        predecessor->next = I;
        while (I->locked)
		;
    }
};

void unlock (qnode** L, qnode *I) {

   if (!I->next){
          if(__sync_val_compare_and_swap(L, I, NULL) == I)
	   return;
    }
    while (!I->next){;} 

    I->next->locked = false;
    
};
};


/*void *lock_example(void *arg) {
  //std::cout<<" Thread = "<<std::this_thread::get_id()<<"\n";
  qnode* I = new qnode;
  for(int i=0;i<LOOP_COUNT;i++) {
    my_lock(&L, I);
      val++;
    my_unlock(&L, I);
  }
  free(I);

  return NULL;
}*/


// Increment val once each time the lock is acquired
void inc(mcs_lock &t, std::int64_t &val) {
        for(int i=0;i<LOOP_COUNT;i++) {
                qnode* I = new qnode;
                t.lock(&L, I);
                val++;
                t.unlock(&L, I);
        }
}



// Small Benchmark (Google benchmark runnning mechanism)
static void mcs_lock_benchmark(benchmark::State &s) {
  // Sweep over a range of threads
  auto num_threads = s.range(0);

  // Value we will increment
  std::int64_t val = 0;

  // Allocate a vector of threads
  std::vector<std::thread> threads;
  threads.reserve(num_threads);

  L = NULL;
  mcs_lock sl;

  // Timing loop
  for (auto _ : s) {
          val = 0;
    for (auto i = 0u; i < num_threads; i++) {
      threads.emplace_back([&] { inc(sl, val); });
    }
    // Join threads
    for (auto &thread : threads) thread.join();
    threads.clear();
    //std::cout<<"val = "<<val<<"\n";
    assert(val == LOOP_COUNT*CRITICAL_SECTION_SIZE*num_threads);
  }
}
BENCHMARK(mcs_lock_benchmark)
    ->RangeMultiplier(2)
    ->Range(1, std::thread::hardware_concurrency()*2)
    ->UseRealTime()
    ->Unit(benchmark::kMillisecond);

BENCHMARK_MAIN();


/*int main(){

  L = NULL; 
  pthread_t threads[NUM_THREADS];
  for (int i = 0; i < NUM_THREADS; i++) {
    pthread_create( &threads[i], NULL, &lock_example,NULL);
  }
  for(int i=0;i<NUM_THREADS;i++) {
    pthread_join(threads[i],NULL);
  }
  std::cout<<"counter = "<<val<<"\n";

}*/
