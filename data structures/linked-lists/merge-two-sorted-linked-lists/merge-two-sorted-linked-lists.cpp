/*
 Merge two sorted lists A and B as one linked list
 Node is defined as
 struct Node
 {
 int data;
 struct Node *next;
 }
 */
#include <iomanip>

Node* MergeLists(Node *headA, Node* headB)
{
    // check if either linked list is empty, then return the other one. when doing recursive, a new headA and headB will be passed in, so it will add the entire list correctly
    if (headA == NULL) {
        return headB;
    } else if (headB == NULL) {
        return headA;
    } else { // if neither empty go into this block
        if (headA->data <= headB->data) {
            headA->next = MergeLists(headA->next, headB);
            // returns the entire linked list after the recursion parses it in the correct order
            return headA;
        } else {
            headB->next = MergeLists(headA, headB->next);
            return headB;
        }
    }
}
