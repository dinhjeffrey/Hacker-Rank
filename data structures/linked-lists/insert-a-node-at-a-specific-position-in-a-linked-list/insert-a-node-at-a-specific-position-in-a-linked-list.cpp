/*
 Insert Node at a given position in a linked list
 head can be NULL
 First element in the linked list is at position 0
 Node is defined as
 struct Node
 {
 int data;
 struct Node *next;
 }
 */
Node* InsertNth(Node *head, int data, int position)
{
    // Complete this method only
    // Do not write main function.
    // creates new node temp1 sets data and next to NULL
    Node* temp1 = new Node;
    temp1->data = data;
    temp1->next = NULL;
    // if position == 0 then set it as the head
    if(position==0) {
        temp1->next = head;
        head = temp1;
        return head;
    }
    // set temp2 to head
    Node* temp2 = head;
    // loop through until the 2nd to last position reach to position n in linked list
    for(int i=0; i<position-1; i++) {
        temp2 = temp2->next;
    }
    // inserts temp1 by setting temp1->next to temp2->next (node at position n)
    // [temp1->data,] -> [data, next]
    temp1->next = temp2->next;
    // updates temp2->next to link to temp1 [temp2->data, next] -> [temp1->data,] -> [data, next]
    temp2->next = temp1;
    return head;
}
