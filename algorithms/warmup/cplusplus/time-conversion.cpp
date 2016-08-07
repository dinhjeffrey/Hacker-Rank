#include <cmath>
#include <cstdio>
#include <vector>
#include <iostream>
#include <algorithm>
using namespace std;

int main(){
    string time;
    cin >> time;
    
    //check if time is AM/PM to see if we need to convert or not
    string amOrPM = time.substr(8);

    if (amOrPM == "AM")
    {
        //need to check if 12:00:00AM to make it 00:00:00AM
        //cout << time.substr(0,2);
        if (time.substr(0,2) == "12")
            cout << "00" << time.substr(2,6);
        else
            cout << time.substr(0,8);
    }
    else
    {
        //check for 12:00:00PM
        if (time.substr(0,2) == "12")
            cout << time.substr(0,8);
        else
        {
            int val = (time[0] - '0')*10 + (time[1]-'0');
            val += 12;
            cout << val << time.substr(2,6);
        }
            
    }



    return 0;
}
