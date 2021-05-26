module test;

import std.stdio;

int main()
{
    int[] elements;
    elements ~= 1;
    writeln(elements);
    elements ~= 2;
    writeln(elements);
    elements ~= 3;
    writeln(elements);


    --elements.length;
    writeln(elements);
    --elements.length;
    writeln(elements);
    --elements.length;
    writeln(elements);

    return 0;
}