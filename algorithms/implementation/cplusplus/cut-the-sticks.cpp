#include <cmath>
#include <cstdio>
#include <vector>
#include <iostream>
#include <algorithm>
using namespace std;

bool IsZero (int i) { return ( i == 0 ); }

int main(){
    int n;
    cin >> n;
    vector<int> arr(n);
    for(int arr_i = 0;arr_i < n;arr_i++){
       cin >> arr[arr_i];
    }

    while (arr.size() != 0){
        // used http://stackoverflow.com/questions/10158756/using-stdmax-element-on-a-vectordouble for reference on how to use min_element function of the algorithm class
        cout << arr.size() << endl;
        int min = *min_element(begin(arr),end(arr));
        
        for (int i = 0; i < arr.size(); i++){
            arr[i] = arr[i] - min;
        }
        
        //don't 100% underland this line of code yet
        // it just removes all the 0s in the vector
        arr.erase(remove_if(arr.begin(), arr.end(), IsZero), arr.end()); 

    }
    
    return 0;
}
