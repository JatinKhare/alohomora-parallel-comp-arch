#include<iostream>
#include <thread>


using namespace std;

struct Node
{
	int data;
	Node *link;
};
 
Node *top=NULL;
void push_ll(int ele)
{	
    Node *temp= new Node();
	temp->data= ele;
	temp->link= NULL;

	if(top==NULL)
		top= temp;
    else{
	    temp->link=top;
	    top=temp;
    }
    return;
}
void pop_ll()
{	
   
    if(top != NULL)	
    {
	    Node *next= top->link;
	    Node *del_node= top;
	    delete del_node;
	    top= next;
    }   
    return;
}
void push_pop_func(int i)
{
    
        push_ll(i);
        if(i%2==0)
        {
           pop_ll(); 
        }
}
