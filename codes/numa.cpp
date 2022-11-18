#include <atomic>
#include <cstdint>
#include <thread>
#include <vector>
#include <utmpx.h>
#include <stdio.h>
#include<iostream>

using namespace std;
typedef struct cna_node {
    uintptr_t spin ;
    int socket ;
    struct cna_node *secTail ;
    struct cna_node *next;
} cna_node_t;

//typedef struct {
//    cna_node_t * tail ;
//} cna_lock_t ;

int val =0;
std::atomic<cna_node_t*> *tail = new std::atomic<cna_node_t*>;
//This function (instruction ) helps us get the numa node number
/*int current_numa_node()
{

    unsigned long a,d,c;
    __asm__ volatile("rdtscp" : "=a" (a), "=d" (d), "=c" (c));
    int chip = (c & 0xFFF000)>>12;
    int core = c & 0xFFF;
    //if(chip==1)
    //   //std::cout<<"**\n";
    //else if(chip==0)
    //   //std::cout<<"!!\n";
    //else
    //   //std::cout<<"xx\n";
    return (chip);

}*/

cna_node_t * find_successor (cna_node_t *me) 
{
    cna_node_t *next = me->next;
    int mySocket = me->socket;
    if (mySocket == -1) 
        mySocket = 0/*current_numa_node();*/;
    /* Check if my immediate successor is on the same socket */
    if (next->socket == mySocket) 
        return next;

    cna_node_t *secHead = next;
    cna_node_t * secTail = next;
    cna_node_t *cur = next->next;
    /* Traverse the main queue */
    while (cur) 
    {
        /* Check if cur is running on my socket */
        if (cur->socket == mySocket) 
        {
            if (me->spin > 1)
                (( cna_node_t *)( me->spin))->secTail->next = secHead;
            else 
                me->spin = ( uintptr_t )secHead;
            
            secTail ->next = NULL;
            (( cna_node_t *)( me->spin))->secTail = secTail ;
            return cur;
        }
        secTail = cur;
        cur = cur->next;
    }
    return NULL;
}
/* Long-term fairness threshold */
#define THRESHOLD (0xffff)
int keep_lock_local () 
{ 
    //return pseudo_rand() & THRESHOLD; 
    return true;
}


int cna_lock(std::atomic<cna_node_t *> *tail  , cna_node_t *me) 
{   //std::cout<<"inside lock\n";
    me->next = 0;
    me->socket = -1;
    me->spin = 0;
    /* Add myself to the rair queue */
    //cna_node_t * tail = SWAP(&lock->tail, me);
    //std::cout<<"be lock: tail= "<<*tail<<" me= "<<me<<"\n";
    cna_node_t *tail_= tail->exchange(me);
    //std::cout<<"af lock: tail= "<<*tail<<" me= "<<tail_<<"\n";
    /* No one there? */
    if (! tail_ ) 
    {   //std::cout<<"acquired lock Thread = "<<hex<<std::this_thread::get_id()<<"\n";
        me->spin = 1; 
        return 0; 
    }
    //std::cout<<"didn't acquire lock :( Thread = "<<hex<<std::this_thread::get_id()<<"\n";
    /* Someone there, need to link in */
    me->socket = 0/*current_numa_node()*/;
    tail_->next = me;
    /* Wait for the lock to become available */
    while (!me->spin)
    { 
       ;// _mm_pause(); 
    }
    return 0;
}

void cna_unlock(std::atomic<cna_node_t *> *tail , cna_node_t *me) {
    /* Is there a successor in the main queue? */
    //std::cout<<"inside unlock\n";
    if (! me->next) 
    {
        /* Is there a node in the secondary queue? */
        if (me->spin == 1) 
        {
            /* If not, try to set tail to NULL, indicating that
            both main and secondary queues are empty */
            //if (CAS(&tail, me, NULL) == me) return;
            //std::cout<<"checking 1\n";
            //std::cout<<" tail= "<<*tail<<" me= "<<me<<"\n";
            if(tail->compare_exchange_strong(me,NULL)) {
                return;
            }
            //std::cout<<" tail= "<<*tail<<" me= "<<me<<"\n";
        } 
        else 
        {   //std::cout<<"checking 2\n";
            /* Otherwise, try to set tail to the last node in
            the secondary queue */
            cna_node_t *secHead = (cna_node_t *)me->spin;
            if (tail->compare_exchange_strong(me,secHead->secTail)) 
            {
                /* If successful, pass the lock to the head of
                the secondary queue */
                secHead->spin = 1;
                return;
            }
        }
        /* Wait for successor to appear */
        //std::cout<<"inside while\n";
        while (me->next == NULL) { ;//CPU_PAUSE(); 
        }
    }
    /* Determine the next lock holder and pass the lock by
    setting its spin field */
    cna_node_t *succ = NULL;
    if ( keep_lock_local () && (succ = find_successor (me))) 
    {
        succ->spin = me->spin;
    } 
    else if (me->spin > 1) 
    {
        succ = (cna_node_t *)me->spin;
        succ->secTail->next = me->next;
        succ->spin = 1;
    } 
    else 
    {
        me->next->spin = 1;
    }
}
void *lock_example(void *arg) {
  ////std::cout<<" Thread = "<<std::this_thread::get_id()<<"\n";
  cna_node_t* me= new cna_node_t;
  
  for(int i=0;i<1024;i++) {
    //std::cout<<"lock_example: tail= "<<*tail<<" me= "<<me<<"\n";
    cna_lock(tail, me);
    val++;
    cna_unlock(tail, me);
    
    /*pthread_mutex_lock(&mutext_lock);
    print_ll(*L);
    pthread_mutex_unlock(&mutext_lock);
    */
    
  }
  
  free(me);

  return NULL;
}
int main()
{

  *tail=NULL;
  int NUM_THREADS=4;
  pthread_t threads[NUM_THREADS];
  for (int i = 0; i < NUM_THREADS; i++) {
    pthread_create( &threads[i], NULL, &lock_example,NULL);
  }
  for(int i=0;i<NUM_THREADS;i++) {
    pthread_join(threads[i],NULL);
  }
  std::cout<<"counter = "<<val<<"\n";

    return 0;
}
