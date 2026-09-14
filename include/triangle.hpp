// triangle.hpp

#ifndef TRIANGLE_HPP
#define TRIANGLE_HPP

class Triangle {
public:
    Triangle();                     // default ctor
    Triangle(float b, float h);     // parameterized ctor

    void set_values(float b, float h);
    float area() const;

private:
    float base;
    float height;
};

#endif // TRIANGLE_HPP