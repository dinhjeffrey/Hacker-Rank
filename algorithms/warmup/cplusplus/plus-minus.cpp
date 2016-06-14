#include <cmath>
#include <cstdio>
#include <vector>
#include <iostream>
#include <algorithm>
using namespace std;


int main(){
    int n;
    cin >> n;
    vector<int> arr(n);
    for(int arr_i = 0;arr_i < n;arr_i++){
       cin >> arr[arr_i];
    }
    
    float posNums = 0;
    float negNums = 0;
    float zero = 0;
    for (int i = 0; i < n; i ++){
        if (arr[i] > 0)
            posNums++;
        else if (arr[i] < 0)
            negNums++;
        else
            zero++;
    }
    
    cout << posNums / n << endl;
    cout << negNums / n << endl;
    cout << zero / n << endl;
    return 0;
}
