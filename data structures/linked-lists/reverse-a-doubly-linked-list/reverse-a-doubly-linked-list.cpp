/*
 Reverse a doubly linked list, input list may also be empty
 Node is defined as
 struct Node
 {
 int data;
 Node *next;
 Node *prev;
 }
 */
// NULL<-1-><-2-><-3->NULL
Node* Reverse(Node* head)
{
    // if list is empty return NULL
    if(head==NULL) return NULL;
    // assign node variables
    Node *current, *prev, *next;
    current = head;
    prev = NULL;
    // loops until the end of the list
    while(current->next != NULL) {
        next = current->next;
        current->next = prev;
        prev = current;
        current = next;
    }
    // after while loop, current = next which is 2-><-3-><-NULL
    current->next = current->prev;
    // current is 2-><-3-><-2
    current->prev = NULL;
    // current is NULL-><-3-><-2
    // successfully reversed linked list
    head = current;
    return head;
}