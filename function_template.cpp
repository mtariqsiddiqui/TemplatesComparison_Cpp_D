#include <iostream>

template <typename T>
T DoubleIt(T value)
{
   return 2 * value;
}

int main()
{
   std::cout << DoubleIt<int>(3) << std::endl;
   std::cout << DoubleIt<double>(3.75) << std::endl;
   return 0;
}