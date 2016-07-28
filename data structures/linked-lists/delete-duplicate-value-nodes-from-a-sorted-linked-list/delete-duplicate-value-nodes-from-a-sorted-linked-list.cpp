/*
 Remove all duplicate elements from a sorted linked list
 Node is defined as
 struct Node
 {
 int data;
 struct Node *next;
 }
 */
Node* RemoveDuplicates(Node *head)
{
    Node *temp = head;
    // loop until the 2nd to last node
    while(temp->next != NULL) {
        // sets temp2 to equal the node after temp
        Node *temp2 = temp->next;
        // if the one node equals the data in the node after it
        if (temp->data == temp2->data) {
            // set the temp next 2 nodes down from it. doesn't set temp = temp2, so it can delete multiple repeated values
            temp->next = temp2->next;
            // delete middle node
            delete(temp2);
        } else {
            // set the node's next to the next node
            temp = temp2;
        }
    }
    return head;
}