/*
 Insert Node in a doubly sorted linked list
 After each insertion, the list should be sorted
 Node is defined as
 struct Node
 {
 int data;
 Node *next;
 Node *prev;
 }
 */
// sort and insert in the correct order
Node* SortedInsert(Node *head,int data)
{
    // creates newNode in heap so memory doesn't deallocate as oppose to stack
    Node *newNode = new Node;
    // assigns newNode data
    newNode->data = data;
    // assigns newNode links
    newNode->prev = NULL;
    newNode->next = NULL;
    // if empty list, update head to the newNode
    if (head == NULL) {
        head = newNode;
        return head;
    }
    // insert at the beginning
    if (newNode->data <= head->data) {
        head->prev = newNode;
        newNode->next = head;
        head = newNode;
        return head;
    }
    // create new temp called curr
    Node *curr = head;
    while (curr->next != NULL) {
        // find the correct position in link
        // at node where its curr->data is greater than the input newNode->data
        if(newNode->data <= curr->data) {
            // updates links
            curr->prev->next = newNode;
            newNode->prev = curr->prev;
            curr->prev = newNode;
            newNode->next = curr;
            return head;
        }
        curr = curr->next;
    }
    // comparing if last curr->data is bigger than newNode->data
    // inserts right before last node
    if (newNode->data < curr->data) {
        curr->prev->next = newNode;
        newNode->prev = curr->prev;
        curr->prev = newNode;
        newNode->next = curr;
        return head;
    }
    // inserts at the last node
    curr->next = newNode;
    newNode->prev = curr;
    return head;
}
