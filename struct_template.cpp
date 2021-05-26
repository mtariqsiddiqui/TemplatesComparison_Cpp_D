#include <iostream>
using namespace std;
template <typename T>
struct VolumeCalculator
{
    T height;
    T width;
    T length;

    VolumeCalculator()
    {
        height = 0;
        width = 0;
        length = 0;
    }
    VolumeCalculator(T h, T w, T l)
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
};

int main()
{
    VolumeCalculator<int> v1;
    cout << "First volume: " << v1.getVolume() << endl;
    v1.height = 2;
    v1.width = 3;
    v1.length = 4;
    cout << "First volume: " << v1.getVolume() << endl;

    VolumeCalculator<double> v2;
    cout << "Second volume: " << v2.calculateVolume(2.1, 3.2, 4.3) << endl;
    cout << "Height: " << v2.height << endl;
    cout << "Width: " << v2.width << endl;
    cout << "Length: " << v2.length << endl;

    VolumeCalculator<float> v3 = VolumeCalculator<float>(4.4, 5.8, 7.2);
    cout << "Third volume: " << v3.getVolume() << endl;
    return 0;
}