/*
 Detect a cycle in a linked list. Note that the head pointer may be 'NULL' if the list is empty.
 
 A Node is defined as:
 struct Node {
 int data;
 struct Node* next;
 }
 */

bool has_cycle(Node* head) {
    // assigns 2 variables to head
    Node* fast = head, *slow = head;
    // loops through the list
    // list isn't empty will enter loop
    while(fast != NULL) {
        // assigns fast to 2 nodes down from it
        fast = fast->next->next;
        // assigns slow to 1 node down from it
        slow = slow->next;
        // cycle found in adjacent nodes
        if(fast == slow) {
            return true;
        }
    }
    // empty list or no cyle
    return false;
}
