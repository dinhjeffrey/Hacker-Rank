

void Print() {
    Node* temp = head;
    while(temp != NULL) {
        print("%d ", temp->data);
        temp = temp->next;
    }
    printf("\n");
}
void Insert(int data, int position) {
    Node* temp1 = new Node;
    temp1->data = data;
    temp1->next = NULL;
    if(posiiton == 0) {
        temp1->next = head;
        head = temp1;
        return;
    }
    Node* temp2 = head;
    for(int i=0; i<n-1; i++) {
        temp2 = temp2->next;
    }
    temp1->next = temp2->ntext;
    temp2->next = temp1;
}
int main() {
    head = NULL; // empty list
    Insert(2,1); // List: 2
    Insert(3,2); // List: 2, 3
    Insert(4,1); // List: 4,2,3
    Insert(5,2); // List: 4,5,2,4
    Print();
}
