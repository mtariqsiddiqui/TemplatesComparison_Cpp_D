#include <iostream> 
using namespace std;

void print_this() {} 

template <typename T, typename... Types> 
void print_this(T var1, Types... var2) 
{ 
	cout << var1 << endl ; 
	print_this(var2...) ; 
} 

int main() 
{ 
	print_this(1, 2, 3.5, 'C', "String"); 
	return 0;
}