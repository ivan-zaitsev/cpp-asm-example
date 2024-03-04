#include <iostream>
#include "main.hpp"

extern "C" void byPointer();

extern "C" void byReference();

extern "C" void byValue();

extern "C" void byPointerExtern(D* d) {
    std::cout << "byPointerExtern: " << d->toString() << std::endl;
}

extern "C" void byReferenceExtern(B b) {
    std::cout << "byReferenceExtern: " << b.toString() << std::endl;
}

extern "C" void byValueExtern(B b) {
    std::cout << "byValueExtern: " << b.toString() << std::endl;
}

int main() {
    byPointer();
    byReference();
    byValue();
}

//int main() {
//    A a1;
//    a1.i1 = 1;
//    a1.i2 = 2;
//    a1.i3 = 3;
//
//    B b;
//    b.a1 = a1;
//    b.a2 = a1;
//
//    byPointerExtern(b);
//    byReferenceExtern(b);
//    byValueExtern(b);
//}
