/*
 Find merge point of two linked lists
 Node is defined as
 struct Node
 {
 int data;
 Node* next;
 }
 */
int length(struct Node *head) {
    int len = 0;
    while (head != NULL) {
        len += 1;
        head = head->next;
    }
    return len;
}
int FindMergeNode(Node *headA, Node *headB)
{
    int m = length(headA); // O(m)
    int n = length(headB); // O(n)
    int d = n - m;
    // swap the 2 linked list if m>n
    if (m > n) {
        struct Node *temp = headA;
        headA = headB;
        headB = temp;
        d = m - n;
    }
    // walk through d nodes of longer list, i.e. B
    for (int i=0; i<d; i+=1) { // O(m+n)
        headB = headB->next;
    }
    // now A and B are equidistant from the merge point
    while (headA != NULL && headB != NULL) {
        if (headA == headB) {
            return headA->data;
        }
        headA = headA->next;
        headB = headB->next;
    }
    // indicates no merge point
    return 0;
    // overall time complexity = O(m+n)
    // overall space complexity = O(1)
}
