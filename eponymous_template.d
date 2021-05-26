import std.stdio;

template pair(T)
{
    T[] pair(T t) { return [ t, t ]; }
}

void main(string[] args)
{
    writeln(pair!int(2));
    writeln(pair!int(25));
    writeln(pair!int(62));
    writeln(pair!string("T"));

    foreach (key; pair!int(62))
    {
        writeln(key/2);
    }

    foreach (key; pair!string("T"))
    {
        writeln(key);
    }
}
