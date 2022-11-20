#include <atomic>
#include <cstdint>
#include <iostream>
#include <thread>
#include <vector>
#include <pthread.h>
#include <stdlib.h>
#include <xmmintrin.h>
#include <time.h>
#include <sys/stat.h>
#include <sys/mman.h>
#include <unistd.h>
using namespace std;

pthread_mutex_t mutex_lock1;
pthread_mutex_t mutex_lock2;
pthread_mutex_t mutex_lock3;

std::atomic<bool> lock_flag1{0};
std::atomic<int> lock_flag2{0};
std::atomic<int> lock_flag3{0};

typedef struct qnode {
  struct qnode *next;
 volatile bool locked;
} qnode;

int came_here1 = 0, came_here2 = 0, came_here3 = 0;
int val =0;
 qnode *L = new qnode;
 qnode* predecessor = new qnode;
void print_ll( qnode * root){
  int i = 0;
  while(root!=NULL){
    cout<</*"("<<std::this_thread::get_id()<<")"<<*/root<<"("<<i<<") -> ";
    root = root->next;
    i++;
  }
  cout<<"\n";
}


void my_lock ( qnode *I) {
  
    I->next = NULL;
    
    while (lock_flag1.exchange(true)){;}

    qnode *temp = L;
    L = I;
    predecessor = temp;   
    //cout<<"predecessor = "<<predecessor<<"\n";
    //cout<<"L = "<<L<<"\n";

    lock_flag1.exchange(false);  
    
    if(predecessor == NULL)
      return;

    I->locked = true;
    predecessor->next = I;
    while(I->locked){
      ;//cout<<"I_old_1 = "<<predecessor<<"\n";
    }
}

void my_unlock ( qnode *I) {

    volatile qnode *next_;

    if(!(I->next)){  

      while (lock_flag1.exchange(true));
      if(L == I){
        L = NULL;
      }
      lock_flag1.exchange(false);    
      
      if(L == NULL){
        return;
      }
    }

    do {
        next_ = I->next;
        ;//cout<<"I_old_2 = "<<I<<"\n";
    } while (!next_);

    I->next->locked = false;
}


void *lock_example(void *arg) {
  for(int i=0;i<100;i++) {
     qnode* I = new qnode;
    my_lock(I);
    val++;
    asm volatile ("" : : : "memory");    
    my_unlock(I);
    free((void*)I);
  }

  return NULL;
}

int main(){

    if (pthread_mutex_init(&mutex_lock1, NULL) != 0) {
        printf("\n mutex init has failed\n");
        return 1;
    }
    if (pthread_mutex_init(&mutex_lock2, NULL) != 0) {
        printf("\n mutex init has failed\n");
        return 1;
    }
    if (pthread_mutex_init(&mutex_lock3, NULL) != 0) {
        printf("\n mutex init has failed\n");
        return 1;
    }

  L = NULL; 
  int NUM_THREADS=2;
  pthread_t threads[NUM_THREADS];
  for (int i = 0; i < NUM_THREADS; i++) {
    pthread_create( &threads[i], NULL, &lock_example,NULL);
  }
  for(int i=0;i<NUM_THREADS;i++) {
    pthread_join(threads[i],NULL);
  }
  std::cout<<"counter = "<<val<<"\n";
  //std::cout<<"came_here1 = "<<came_here1<<"\n";
  //std::cout<<"came_here2 = "<<came_here2<<"\n";
  //std::cout<<"came_here3 = "<<came_here3<<"\n";


}