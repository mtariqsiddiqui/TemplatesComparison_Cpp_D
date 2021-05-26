class Stack(T)
{
private:
    T[] elements;

public:
    void push(T element)
    {
        elements ~= element;
    }

    void pop()
    {
        --elements.length;
    }

    const T top()
    {
        return elements[$ - 1];
    }

    const size_t length()
    {
        return elements.length;
    }
}

int main()
{
    import std.stdio;

    auto intStack = new Stack!int;
    intStack.push(11);
    intStack.push(22);
    intStack.push(33);

    writeln(intStack.top());
    intStack.pop();
    writeln(intStack.top());
    intStack.pop();
    writeln(intStack.top());
    intStack.pop();
    return 0;
}