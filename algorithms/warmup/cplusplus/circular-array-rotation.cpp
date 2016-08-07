#include <cmath>
#include <cstdio>
#include <vector>
#include <iostream>
#include <algorithm>
using namespace std;


int main() {
    /* Enter your code here. Read input from STDIN. Print output to STDOUT */
    
    int n;
    int k;
    int q;
    cin >> n;
    cin >> k;
    cin >> q;
    int circularArray[n];
    for (int i = 0; i < n; i++)
        cin >> circularArray[i];
    
    int queries[q];
    for (int i = 0; i < q; i++)
        cin >> queries[i];
    
    int newArray[n];
    for (int i = 0; i < n; i++)
    {
        int index = (i + k) % n;
        newArray[index] = circularArray[i];
    }
    
    for (int i = 0; i < q; i++)
    {
        //index of q query
        int qIndex = queries[i];
        cout << newArray[qIndex] << endl;
    }
    
    return 0;
}
