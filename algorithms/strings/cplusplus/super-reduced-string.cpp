#include <cmath>
#include <cstdio>
#include <vector>
#include <iostream>
#include <algorithm>
using namespace std;


int main() {

	string S;
	cin >> S;

	bool isZero(false);
    
	for (int i = 0; i < (S.length() - 1); ++i)
		if (S[i] == S[i + 1])
		{
			S.erase(S.begin() + i);
			S.erase(S.begin() + i);

			if (S.length() == 0)
			{
				isZero = true;
				break;
			}
        
			i = -1;
		}

	if (isZero)
	    cout << "Empty String";
	else
	    cout << S;

	return 0;
}