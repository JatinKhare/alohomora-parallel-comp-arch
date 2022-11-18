#include <atomic>
#include <cstdint>
#include <iostream>
#include <thread>
#include <vector>
#include <pthread.h>
#include <stdlib.h>
using namespace std;

//#define TEST_TEST_AND_SET
#define TEST_AND_SET

std::atomic<int> lock_flag{0};

int val = 0;



void my_lock(){
    #ifdef TEST_TEST_AND_SET
    do{
        while(lock_flag.load()){;}
    }while (lock_flag.exchange(1));
    #endif
    #ifdef TEST_AND_SET
    while (lock_flag.exchange(1));
    #endif
}

void my_unlock(){
    lock_flag.exchange(0);
}

void increase_counter()
{
    val++;
}


void *lock_example(void *arg) {
  for(int i=0;i<2000;i++) {
    my_lock();
    increase_counter();
    my_unlock();
  }

  return NULL;
}

int main(){

  int NUM_THREADS=1024;
  pthread_t threads[NUM_THREADS];
  for (int i = 0; i < NUM_THREADS; i++) {
    pthread_create( &threads[i], NULL, &lock_example,NULL);
  }
  for(int i=0;i<NUM_THREADS;i++) {
    pthread_join(threads[i],NULL);
  }
  std::cout<<"counter = "<<val<<"\n";

}