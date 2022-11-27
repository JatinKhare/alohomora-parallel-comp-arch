#include <atomic>
#include <cstdint>
#include <iostream>
#include <thread>
#include <vector>
#include <pthread.h>
#include <stdlib.h>
using namespace std;

#define LOOP_COUNT 1000000
#define NUM_THREADS 32

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

void my_lock (qnode **L, qnode *I) {
   
    I->next = NULL;
    qnode *predecessor = I;
    
    predecessor = __sync_lock_test_and_set(L, predecessor);

    if (predecessor!=NULL) {
        I->locked = true;
        predecessor->next = I;
        while (I->locked)
		;
    }
}

void my_unlock (qnode** L, qnode *I) {

   if (!I->next){
          if(__sync_val_compare_and_swap(L, I, NULL) == I)
	   return;
    }
    while (!I->next){;} 

    I->next->locked = false;
    
}


void *lock_example(void *arg) {
  //std::cout<<" Thread = "<<std::this_thread::get_id()<<"\n";
  qnode* I = new qnode;
  for(int i=0;i<LOOP_COUNT;i++) {
    my_lock(&L, I);
      val++;
    my_unlock(&L, I);
  }
  free(I);

  return NULL;
}

int main(){

  L = NULL; 
  pthread_t threads[NUM_THREADS];
  for (int i = 0; i < NUM_THREADS; i++) {
    pthread_create( &threads[i], NULL, &lock_example,NULL);
  }
  for(int i=0;i<NUM_THREADS;i++) {
    pthread_join(threads[i],NULL);
  }
  std::cout<<"counter = "<<val<<"\n";

}
