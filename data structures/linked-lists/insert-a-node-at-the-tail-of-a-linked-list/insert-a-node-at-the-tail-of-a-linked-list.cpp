/*
 Insert Node at the end of a linked list
 head pointer input could be NULL as well for empty list
 Node is defined as
 struct Node
 {
 int data;
 struct Node *next;
 }
 */
Node* Insert(Node *head,int data)
{
    // Complete this method
    // create new node called temp and set it's data and it's next to NULL
    Node *temp = new Node;
    temp->data = data;
    temp->next = NULL;
    // if head pointer input is empty, set head to temp
    if(head == NULL) {
        head = temp;
    } else {
        // initializes node to head to find the starting position to enter while loop and sets it to head
        Node *temp1 = new Node;
        temp1 = head;
        // loops through until the end
        while (temp1->next != NULL) {
            temp1 = temp1->next;
        }
        // assigns the last next pointer to the created temp at the beginning
        temp1->next = temp;
    }
    // returns the head node
    return head;
}
