import std.stdio;

T DoubleIt(T)(T value)
{
    return 2 * value;
}

int main()
{
    writeln(DoubleIt!int(3));
    writeln(DoubleIt!double(3.75));
    return 0;
}