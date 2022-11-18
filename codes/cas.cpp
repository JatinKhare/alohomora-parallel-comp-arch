#include <atomic>
#include <cstdint>
#include <iostream>
#include <thread>
#include <vector>
#include <pthread.h>
#include <stdlib.h>
using namespace std;

//pthread_mutex_t mutext_lock;
int s = 0;

std::atomic<int> val{0};
//int val = 0;
void increase_counter()
{
    //incrementing:	val++;
    int old_value = val.load() ;
    while (!val.compare_exchange_weak(old_value, old_value +1))
          ;
}


void *lock_example(void *arg) {
  //std::cout<<" Thread = "<<std::this_thread::get_id()<<"\n";
  for(int i=0;i<2000;i++) {
    increase_counter();
    /*pthread_mutex_lock(&mutext_lock);
    print_ll(*L);
    pthread_mutex_unlock(&mutext_lock);
    */
    
  }

  return NULL;
}

int main(){

    /*if (pthread_mutex_init(&mutext_lock, NULL) != 0) {
        printf("\n mutex init has failed\n");
        return 1;
    }*/

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
