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
