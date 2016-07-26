#include<stdlib.h>
#include<stdio.h>

struct Node {
    int data;
    Node* next;
};
struct Node* head; // global variable
void Insert(int x) {
    Node* temp = new Node();
    temp->data = x;
    temp->next = head; // same as temp->next = NULL; if (head != NULL) temp->next = head; // inserting at beginning so set head to the new insert
    head = temp;
}
void Print() {
    Node* temp = head;
    printf("List is: ");
    while(temp != NULL) {
        printf(" %d", temp->data);
        temp = temp->next;
    }
    printf("\n");
}
int main() {
    head = NULL; // empty list
    printf("How many numbers?\n");
    int n,i,x;
    scanf("%d", &n);
    for(i = 0; i<n; i++) {
        printf("Enter the number \n");
        scanf("%d", &x);
        Insert(x);
        Print();
    }
}