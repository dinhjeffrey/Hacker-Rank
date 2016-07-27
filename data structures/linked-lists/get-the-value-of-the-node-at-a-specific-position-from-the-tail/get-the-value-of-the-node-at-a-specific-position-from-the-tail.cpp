/*
 Get Nth element from the end in a linked list of integers
 Number of elements in the list will always be greater than N.
 Node is defined as
 struct Node
 {
 int data;
 struct Node *next;
 }
 */
int GetNode(Node *head,int positionFromTail)
{
    // This is a "method-only" submission.
    // You only need to complete this method.
    struct Node *forward = head;
    struct Node *backward = head;
    int n;
    while (forward->next != NULL) {
        n++;
        forward = forward->next;
    }
    for (int i=0; i<(n-positionFromTail); i++) {
        backward = backward->next;
    }
    return backward->data;
}