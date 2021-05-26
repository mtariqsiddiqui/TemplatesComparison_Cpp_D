import std.stdio;

struct VolumeCalculator(T)
{
    T height;
    T width;
    T length;

    this(T h, T w, T l)
    {
        height = h;
        width = w;
        length = l;
    }

    T getVolume()
    {
        return height * width * length;
    }

    T calculateVolume(T H, T W, T L)
    {
        height = H;
        width = W;
        length = L;
        return height * width * length;
    }
}

int main()
{
    VolumeCalculator!int v1;
    writeln("First volume: ", v1.getVolume());
    v1.height = 2;
    v1.width = 3;
    v1.length = 4;
    writeln("First volume: ", v1.getVolume());

    VolumeCalculator!double v2;
    writeln("Second volume: ", v2.calculateVolume(2.1, 3.2, 4.3));
    writeln("Height: ", v2.height);
    writeln("Width: ", v2.width);
    writeln("Length: ", v2.length);

    VolumeCalculator!float v3 = VolumeCalculator!float(4.4, 5.8, 7.2);
    writeln("Third volume: ", v3.getVolume());
    return 0;
}
