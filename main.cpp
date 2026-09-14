// main.cpp
#include <iostream>
#include "triangle.hpp"

int main() {
    Triangle tri;
    tri.set_values(3.0f, 4.0f);
    std::cout << "area: " << tri.area() << std::endl;

    Triangle tri2(3.0f, 4.0f);
    std::cout << "area (ctor): " << tri2.area() << std::endl;

    return 0;
}