#include <bits/stdc++.h>
using namespace std;
bool is_palindrome (string s)
{
    int p,k;
    p = 0;
    k = s.size()-1;
    while(p<k)
    {
        if(s[p] != s[k]) return false;
        p++;
        k--;
    }
    return true;
}
int main (){
    int licznik = 0;
string s;
ifstream f("hasla.txt");
while(f>>s)
    {
        if(is_palindrome(s)) licznik++;
    }

cout << "Wynik = " << licznik << "\n";
}
