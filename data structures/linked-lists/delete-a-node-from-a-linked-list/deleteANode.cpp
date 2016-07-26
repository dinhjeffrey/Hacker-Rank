// Deltes node at position n
void Delete(int n) {
    struct Node* temp1 = head;
    if (n == 1) {
        head = temp1->next; // head now points to 2nd node
        free(temp1);
        return
    }
    int i;
    for(i=0; i<n-2; i++) {
        temp1 = temp1->next;
    }
    // temp1  points to (n-1)th node
    struct Node* temp2 = temp1->next; // nth node
    temp1->next = temp2->next;
    free(temp2); // delete temp2;
}