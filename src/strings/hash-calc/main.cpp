#include <iostream>
#include <string>

using namespace std;

long long calcHash(const string& s) {
    const int p = 31;
    long long hash = 0, p_pow = 1;
    for (size_t i=0; i<s.length(); ++i)
    {
        // желательно отнимать 'a' от кода буквы
        // единицу прибавляем, чтобы у строки вида 'aaaaa' хэш был ненулевой
        hash += (s[i] - 'a' + 1) * p_pow;
        p_pow *= p;
    }

    return hash;
}


int main() {

    string str("denis");

    cout << "Hash of string " << str << " is: " << calcHash(str) << endl;

    return 0;
}