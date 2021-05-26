import std.stdio;

void print_this() {}

void print_this(T, A...)(T t, A a)
{
    writeln(t);
    print_this(a);
}

int main()
{
    print_this(1, 2, 3.5, 'C', "Str");
    return 0;
}