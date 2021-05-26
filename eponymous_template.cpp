#include <iostream>
using namespace std;

template <typename T>
T Pair(T t)
{
    T[] Pair(T t) { return [ t, t ]; }
}

int main()
{
    cout << Pair<int>(2) << endl;
    cout << Pair<int>(5) << endl;
    return 0;
}