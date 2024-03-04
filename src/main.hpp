#include <string>

class A {

public:
    int64_t i1;
    int64_t i2;
    int64_t i3;

    std::string toString() {
        return "A[i1=" + std::to_string(i1) + 
            ", i2=" + std::to_string(i2) + 
            ", i3=" + std::to_string(i3) + 
            "]";
    }

};

class B {

public:
    A a1;
    A a2;

    std::string toString() {
        return "B[a1=" + a1.toString() + ", a2=" + a2.toString() + "]";
    }

};

class C {

public:
    int64_t i1;
    int64_t i2;
    int64_t i3;

    std::string toString() {
        return "C[i1=" + std::to_string(i1) +
            ", i2=" + std::to_string(i2) +
            ", i3=" + std::to_string(i3) +
            "]";
    }

};

class D {

public:
    C* c1;
    C* c2;

    std::string toString() {
        return "D[c1=" + c1->toString() + ", c2=" + c2->toString() + "]";
    }

};
