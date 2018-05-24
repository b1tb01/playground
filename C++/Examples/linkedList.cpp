#include <iostream>
#include <string>
using namespace std;


class LinkedList {

   struct Node {
      int x;
      Node *next;
   };


public:
   //constructor
   LinkedList() {
      head = NULL;
   }

   //destructor
   ~LinkedList() {
      //pointer for the head's address;
      Node *next = head;
      //go through the list and delete each node
      while(next) {
         //create a pointer to the node that is going to be deleted
         Node *deleteNode = next;
         //make sure to get the next nodes address before the one pointing to it is deleted
         next = next->next;
         //delete node marked for deletion
         delete deleteNode;
      }
   }

   void addValue(int val) {
      Node *n = new Node(); 
      n->x = val;
      n->next = head;

      head = n;
   }

   int popValue() {
      Node *n = head;
      int ret = n->x;

      head = head->next;
      delete n;
      return ret;
   }


   private:
      Node *head;
};


int main() {


   LinkedList list;

    list.addValue(5);
    list.addValue(10);
    list.addValue(20);

    cout << list.popValue() << endl;
    cout << list.popValue() << endl;
    cout << list.popValue() << endl;
    // because there is no error checking in popValue(), the following
    // is undefined behavior. Probably the program will crash, because
    // there are no more values in the list.
    // cout << list.popValue() << endl;

   return 0;
}