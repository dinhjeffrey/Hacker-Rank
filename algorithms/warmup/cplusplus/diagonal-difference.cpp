#include <cmath>
#include <cstdio>
#include <vector>
#include <iostream>
#include <algorithm>
using namespace std;


int main(){
    int n;
    cin >> n;
    vector< vector<int> > a(n,vector<int>(n));
    for(int a_i = 0;a_i < n;a_i++){
       for(int a_j = 0;a_j < n;a_j++){
          cin >> a[a_i][a_j];
       }
    }
    
    //sum of primary diagonal
    int primSum = 0;
    for(int i =0; i < n; i++)
        primSum += a[i][i];
    
    //sum of secondary diagonal
    int secSum = 0;
    for(int i = 0; i < n; i++)
        secSum += a[i][(n-1)-i];
    
    int sum = abs(primSum - secSum);
    
    cout << sum << endl;
    
    return 0;
}