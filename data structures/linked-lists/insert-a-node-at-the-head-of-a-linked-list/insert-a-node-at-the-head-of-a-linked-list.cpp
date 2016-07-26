/*
 Insert Node at the begining of a linked list
 Initially head pointer argument could be NULL for empty list
 Node is defined as
 struct Node
 {
 int data;
 struct Node *next;
 }
 return back the pointer to the head of the linked list in the below method.
 */
Node* Insert(Node *head,int data)
{
    // Complete this method
    // creates new head node and sets pointer to any node before that came in as head
    Node* temp = new Node;
    temp->data = data;
    temp->next = head; // same as temp->next = NULL; if (head != NULL) temp->next = head; // inserting at beginning so set head to the new insert
    // sets new head
    head = temp;
    return head;
}
