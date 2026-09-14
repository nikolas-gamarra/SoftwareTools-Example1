// triangle.cpp
#include "triangle.hpp"

Triangle::Triangle() : base(0.0f), height(0.0f) {}

Triangle::Triangle(float b, float h) : base(b), height(h) {}

void Triangle::set_values(float b, float h) {
    base = b;
    height = h;
}
float Triangle::area() const {
    float _area = base * height / 2.0f;
    return _area;
}