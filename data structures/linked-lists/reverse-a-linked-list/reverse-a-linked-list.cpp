
/*
 Reverse a linked list and return pointer to the head
 The input list will have at least one element
 Node is defined as
 struct Node
 {
 int data;
 struct Node *next;
 }
 */
Node* Reverse(Node *head)
{
    // creates nodes named current, prev, next
    struct Node *current, *prev, *next;
    // sets current and previous to their respective values. current is head because it is starting position while previous is where we want the head to be pointing, which is null, since we are reverse a linked list
    current = head;
    prev = NULL;
    while (current != NULL) {
        // updates next [current, link] -> [int, link] = next
        next = current->next;
        // updates link of current.next to value of previous
        current->next = prev;
        // updates previous value
        prev = current;
        // updates current value
        current = next;
    }
    // at the end of list, sets head to the last value in linked list which is previous
    head = prev;
    return head;
}
