#include <atomic>
#include <cstdint>
#include <iostream>
#include <thread>
#include <vector>
#include <pthread.h>
#include <stdlib.h>
using namespace std;

std::atomic<int> my_ticket_num{0};
volatile std::uint16_t curr_serving{0};

int val = 0;

void my_lock() {

    auto place = my_ticket_num.fetch_add(1);
    while (curr_serving != place){
    }
  }

void my_unlock() {
    curr_serving = curr_serving + 1;
  }

void increase_counter()
{
  val++;
}


void *lock_example(void *arg) {
  for(int i=0;i<300;i++) {
    my_lock();
    increase_counter();
    my_unlock();
  }

  return NULL;
}

int main(){

    /*if (pthread_mutex_init(&mutext_lock, NULL) != 0) {
        printf("\n mutex init has failed\n");
        return 1;
    }*/

  int NUM_THREADS=101;
  pthread_t threads[NUM_THREADS];
  for (int i = 0; i < NUM_THREADS; i++) {
    pthread_create( &threads[i], NULL, &lock_example,NULL);
  }
  for(int i=0;i<NUM_THREADS;i++) {
    pthread_join(threads[i],NULL);
  }
  std::cout<<"counter = "<<val<<"\n";

}
