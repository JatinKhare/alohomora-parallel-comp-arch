#include <atomic>
#include <cstdint>
#include <iostream>
#include <thread>
#include <vector>
#include <pthread.h>
#include <stdlib.h>
using namespace std;

pthread_mutex_t mutext_lock1;
pthread_mutex_t mutext_lock2;
pthread_mutex_t mutext_lock3;

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
  //cout<<"\n";
}


int val =0;
qnode *L = new qnode;

void my_lock (qnode *L, qnode *I) {
   
    I->next = NULL;
    //cout<<"before predecessor = "<<predecessor<<", I = "<<I<<"\n";

    //while (lock_flag1.exchange(1));
    qnode *predecessor = new qnode;
    pthread_mutex_lock(&mutext_lock1);

    cout<<"before I = "<<I<<", L = "<<L<<"\n";

    //predecessor = I;
    predecessor = L;   
    L = I;
    //lock_flag1.exchange(0);   

    cout<<"after predecessor = "<<predecessor<<", L = "<<L<<"\n\n";
    pthread_mutex_unlock(&mutext_lock1);

    //std::atomic_compare_exchange_strong(L, &temp_qnode, predecessor/* std::memory_order_release, std::memory_order_relaxed*/);
    if (predecessor!=NULL) {
        I->locked = true;
        predecessor->next = I;
        while (I->locked)
          std::cout<<"waiting for predecessor to make me free : )\n";
    }
    //cout<<"Got the lock!\n";
  free(predecessor);
}

void my_unlock (qnode *L, qnode *I) {

    if(!I->next){  
      pthread_mutex_lock(&mutext_lock2);
      //while (lock_flag2.exchange(1));
      cout<<"before I = "<<I<<", L = "<<L<<"\n";
      if(L == I){
        L = NULL;
      }
      cout<<"after I = "<<I<<", L = "<<L<<"\n\n";

      pthread_mutex_unlock(&mutext_lock2);

      //lock_flag2.exchange(0);    
      if(L == NULL){
        //cout<<"Unlocking.. no one to signal to.\n";
        return;
      }
    }
    
    while(!I->next){
        cout<<"Unlock? waiting for someone to be added\n";
        ;//std::cout<<"waiting to get the new node I added to my next :)\n";
    }
    I->next->locked = false;
    
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
  qnode* I = new qnode;
  for(int i=0;i<200;i++) {
    my_lock(L, I);
    val++;
    pthread_mutex_lock(&mutext_lock3);
    print_ll(L);
    pthread_mutex_unlock(&mutext_lock3);
    my_unlock(L, I);

  }
  free(I);

  return NULL;
}

int main(){

    /*if (pthread_mutex_init(&mutext_lock, NULL) != 0) {
        printf("\n mutex init has failed\n");
        return 1;
    }*/
  L = NULL; 
  int NUM_THREADS=10;
  pthread_t threads[NUM_THREADS];
  for (int i = 0; i < NUM_THREADS; i++) {
    pthread_create( &threads[i], NULL, &lock_example,NULL);
  }
  for(int i=0;i<NUM_THREADS;i++) {
    pthread_join(threads[i],NULL);
  }
  std::cout<<"counter = "<<val<<"\n";

}