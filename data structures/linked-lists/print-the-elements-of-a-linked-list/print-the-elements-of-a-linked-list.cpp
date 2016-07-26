/*
 Print elements of a linked list on console
 head pointer input could be NULL as well for empty list
 Node is defined as
 struct Node
 {
 int data;
 struct Node *next;
 }
 */
void Print(Node *head)
{
    while(head != NULL) {
        cout<< head->data <<endl; // prints head.data  cout: Standard output stream, endl: Insert newline and flush
        head = head->next; // sets head = head.next (next link)
    }
}
