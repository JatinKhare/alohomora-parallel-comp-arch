#include <atomic>
#include <cstdint>
#include <iostream>
#include <thread>
#include <vector>
#include <pthread.h>
#include <stdlib.h>
using namespace std;

pthread_mutex_t mutext_lock1;

//#define DEBUG

typedef struct qnode {
  struct qnode *next;
  volatile bool locked;
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

int came_here = 0;
int val =0;
std::atomic<qnode*> *L = new std::atomic<qnode*>;

void lock (qnode *I) {
   
    I->next = NULL;
    qnode *predecessor = new qnode;
    predecessor = I;   
    //cout<<"before predecessor = "<<predecessor<<", I = "<<I<<"\n";
    predecessor = L->exchange(predecessor);
    //cout<<"after predecessor = "<<predecessor<<", I = "<<I<<"\n";
    //std::atomic_compare_exchange_strong(L, &temp_qnode, predecessor/* std::memory_order_release, std::memory_order_relaxed*/);

    if (predecessor!=NULL) {
        came_here++;
        I->locked = true;
        predecessor->next = I;
        bool wait;
        int j = 0;
        do{
          #ifdef DEBUG
          if(j==0){
          pthread_mutex_lock(&mutext_lock1);
          std::cout<<"I am stuck = "<<predecessor<<"\n";
          pthread_mutex_unlock(&mutext_lock1);
          }
          #endif
          wait = I->locked;
          j++;
        }while(!wait);
    }
    else{          
    #ifdef DEBUG
      pthread_mutex_lock(&mutext_lock1);
      std::cout<<"getting my lock directly = "<<predecessor<<"\n";
      pthread_mutex_unlock(&mutext_lock1);
     #endif
  }
  if(predecessor!=NULL){
    #ifdef DEBUG
        pthread_mutex_lock(&mutext_lock1);
        std::cout<<"getting lock  after waiting = "<<predecessor<<"\n";
        pthread_mutex_unlock(&mutext_lock1);
    #endif
    }

}

void unlock (qnode *I) {
  qnode * next_;
  if(I->next){
    #ifdef DEBUG
    pthread_mutex_lock(&mutext_lock1);
    std::cout<<"releasing my lock directly = "<<I<<"\n";
    pthread_mutex_unlock(&mutext_lock1);
    #endif
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
    do{
      #ifdef DEBUG
      pthread_mutex_lock(&mutext_lock1);
      std::cout<<"waiting to release my lock = "<<I<<"\n";
      pthread_mutex_unlock(&mutext_lock1);
      #endif
      next_ = I->next;
    }while(!next_);


    if(userper)
      userper->next = I->next;
    else
      I->next->locked = false;
  }
  
    
    //std::cout<<"["<<std::this_thread::get_id()<<"] Going into unlock\n";
   /*if (!I->next){
       if(std::atomic_compare_exchange_strong(L, &I, NULL))
          return;
    }

    while (!I->next){
      std::cout<<"here..\n";
        ;
    } 
    I->next->locked = false;
    */
}



void *lock_example(void *arg) {
  //std::cout<<" Thread = "<<std::this_thread::get_id()<<"\n";
  
    for(int i=0;i<500;i++) {
      qnode* I = new qnode;
      lock(I);
      val++;
      asm volatile("" : : : "memory");
      unlock(I);
      free(I);
  }




  return NULL;
}

int main(){
  if (pthread_mutex_init(&mutext_lock1, NULL) != 0) {
      printf("\n mutex init has failed\n");
      return 1;
  }
  *L=NULL;
  int NUM_THREADS=100;
  pthread_t threads[NUM_THREADS];
  for (int i = 0; i < NUM_THREADS; i++) {
    pthread_create( &threads[i], NULL, &lock_example,NULL);
  }
  for(int i=0;i<NUM_THREADS;i++) {
    pthread_join(threads[i],NULL);
  }
  std::cout<<"counter = "<<val<<"\n";
  std::cout<<"came_here = "<<came_here<<"\n";

}