#include <atomic>
#include <cstdint>
#include <iostream>
#include <thread>
#include <vector>
#include <pthread.h>
#include <stdlib.h>
using namespace std;

//pthread_mutex_t mutext_lock;


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
  cout<<"\n";
}


int val =0;
std::atomic<qnode*> *L = new std::atomic<qnode*>;

void lock (std::atomic<qnode*> *L, qnode *I) {
   
    I->next = NULL;
    qnode *predecessor = new qnode;
    predecessor = I;   
    //cout<<"before predecessor = "<<predecessor<<", I = "<<I<<"\n";
    predecessor = L->exchange(predecessor);
    //cout<<"after predecessor = "<<predecessor<<", I = "<<I<<"\n";
    //std::atomic_compare_exchange_strong(L, &temp_qnode, predecessor/* std::memory_order_release, std::memory_order_relaxed*/);
    if (predecessor!=NULL) {
        //std::cout<<"waiting for predecessor to make me free : )\n";
        I->locked = true;
        predecessor->next = I;
        while (I->locked)
        ;//std::cout<<"waiting to get freed :)\n";
    }
}

void unlock (std::atomic<qnode*> *L, qnode *I) {

  /*if(I->next){
    I->next->locked = false;
  }
  else{
    qnode *old_tail = NULL;
    //cout<<"old_tail = "<<old_tail<<", *L = "<<*L<<"\n";
    old_tail = L->exchange(old_tail);
    //cout<<"old_tail = "<<old_tail<<", *L = "<<*L<<"\n";
    if(old_tail == I)
      return;

    qnode *userper = old_tail;
    //cout<<"userper = "<<userper<<", *L = "<<*L<<"\n";
    userper = L->exchange(userper);
    while((I->next) == NULL){
        ;//std::cout<<"waiting to get the new node I added to my next :)\n";
    }
    if(userper)
      userper->next = I->next;
    else
      I->next->locked = false;
  }
    */
    //std::cout<<"["<<std::this_thread::get_id()<<"] Going into unlock\n";
   if (!I->next){
       if(std::atomic_compare_exchange_strong(L, &I, NULL))
          return;
    }

    while (!I->next){
      std::cout<<"here..\n";
        ;
    } 
    I->next->locked = false;
    
}



void *lock_example(void *arg) {
  //std::cout<<" Thread = "<<std::this_thread::get_id()<<"\n";
  for(int i=0;i<512;i++) {
    qnode* I = new qnode;
    lock(L, I);
    val++;
    unlock(L, I);
    free(I);
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

  *L=NULL;
  int NUM_THREADS=32;
  pthread_t threads[NUM_THREADS];
  for (int i = 0; i < NUM_THREADS; i++) {
    pthread_create( &threads[i], NULL, &lock_example,NULL);
  }
  for(int i=0;i<NUM_THREADS;i++) {
    pthread_join(threads[i],NULL);
  }
  std::cout<<"counter = "<<val<<"\n";

}