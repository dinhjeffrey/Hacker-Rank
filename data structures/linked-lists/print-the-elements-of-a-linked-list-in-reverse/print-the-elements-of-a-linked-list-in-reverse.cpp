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
    if (head == NULL) {
        return;
    }
    // recursion tree. loops through until end of linked list
    ReversePrint(head->next);
    // once the recursive is done, then prints head->data going back down the recursion tree.
    printf("%d\n", head->data);
}
