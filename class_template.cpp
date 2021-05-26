#include <iostream>
#include <vector>
using namespace std;

template <class T>
class Stack
{
private:
    vector<T> elements;

public:
    // Stack() {}
    void push(T const &elem)
    {
        elements.push_back(elem);
    }

    void pop()
    {
        elements.pop_back();
    }

    const T top() const
    {
        return elements.back();
    }

    const size_t length()
    {
        return elements.size();
    }
};

int main()
{
    Stack<int> intStack;
    intStack.push(11);
    intStack.push(22);
    intStack.push(33);
    cout << intStack.top() << endl;
    intStack.pop();
    cout << intStack.top() << endl;
    intStack.pop();
    cout << intStack.top() << endl;
    intStack.pop();
    return 0;
}