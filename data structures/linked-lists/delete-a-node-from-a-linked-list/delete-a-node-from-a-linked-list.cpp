/*
 Delete Node at a given position in a linked list
 Node is defined as
 struct Node
 {
 int data;
 struct Node *next;
 }
 */
Node* Delete(Node *head, int position)
{
    // Complete this method
    // creates a new node temp1 and sets it to head
    struct Node* temp1 = head;
    // if deleting node at first position
    if (position==0) {
        // set head pointer to point at the position after first position
        head = temp1->next;
        //delete the first position
        delete(temp1);
        return head;
    }
    int i;
    // loops through until position found
    for(i=0; i<position-1; i++) {
        temp1 = temp1->next;
    }
    // creates temp2 and sets it to the next node temp1 is pointing to
    // [temp1] -> [int, next] = [temp2] -> [int2, next2]
    struct Node* temp2 = temp1->next;
    // updates [temp1] -> [int2, next2]
    temp1->next = temp2->next;
    // removes [temp2] from memory
    delete(temp2);
    return head;
}
