#include<iostream>
#include <thread>
#include <mutex>

using namespace std;

struct Node
{
	int data;
	Node *link;
};
 
std::mutex m;
Node *top=NULL;
int size=0;

void push_ll(int ele)
{	m.lock();
    Node *temp= new Node();
	temp->data= ele;
	temp->link= NULL;

	if(top==NULL)
		top= temp;
    else{
	    temp->link=top;
	    top=temp;
    }
    size++;
    m.unlock();
    return;
}
void pop_ll()
{	
    m.lock();
    if(top != NULL)	
    {
	    Node *next= top->link;
	    Node *del_node= top;
	    delete del_node;
	    top= next;
    }
    size--;
    m.unlock();
    return;
}
int top_peek_ll(){
	return top->data;
}
bool isEmpty_ll()
{	
	if(top==NULL)
		return 1;
	else
		return 0;
}

void printll(Node *top)
{
    while(top!=NULL)
    {
        cout<<top->data<<"->";
        top= top->link;
    }
    cout<<"\n";
}

void push_pop_func(int i)
{
    for(int k=0;k<1000;k++) 
    {
        push_ll(k*i);
        if(k%2==0)
        {
           pop_ll(); 
        }
    }
}

int main()
{
    
    int NUM_THREADS= 32;
    std::thread ts[NUM_THREADS];
    for(int i=0;i<NUM_THREADS;i++) 
        ts[i]= std::thread(push_pop_func,i);

    for(int i=0;i<NUM_THREADS;i++) 
        ts[i].join();

    //printll(top);
    cout<<"size = "<<size<<"\n";

}