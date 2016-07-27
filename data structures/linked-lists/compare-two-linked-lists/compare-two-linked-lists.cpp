/*
 Compare two linked lists A and B
 Return 1 if they are identical and 0 if they are not.
 Node is defined as
 struct Node
 {
 int data;
 struct Node *next;
 }
 */
int CompareLists(Node *headA, Node* headB)
{
    // If both lists are empty
    if (headA == NULL && headB == NULL)
        return true;
    
    // If both lists are not empty, then data of
    // current nodes must match, and same should
    // be recursively true for rest of the nodes.
    // will exit immediately if first condition, headA and headB datas, do not match
    if (headA != NULL && headB != NULL)
        return (headA->data == headB->data) && CompareLists(headA->next, headB->next);
    
    // If we reach here, then one of the lists
    // is empty and other is not
    return false;
}
