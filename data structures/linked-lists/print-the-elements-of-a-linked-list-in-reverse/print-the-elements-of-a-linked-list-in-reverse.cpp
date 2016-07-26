/*
 Print elements of a linked list in reverse order as standard output
 head pointer could be NULL as well for empty list
 Node is defined as
 struct Node
 {
 int data;
 struct Node *next;
 }
 */
void ReversePrint(Node *head)
{
    // This is a "method-only" submission.
    // You only need to complete this method.
    // creates nodes named current, prev, next
    struct Node *current, *prev, *next;
    // sets current and previous to their respective values. current is head because it is starting position while previous is where we want the head to be pointing, which is null, since we are reverse a linked list
    current = head;
    prev = NULL;
    // allocate memory to an array and initialize i=0
    int array[100], i=0;
    while (current != NULL) {
        // store data into an array to print out later
        array[i] = current->data;
        i+=1;
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
    // goes through array in reverse order and prints
    for(int j=i-1; j>=0; j--) {
        cout<<array[j]<<endl;
    }
}
