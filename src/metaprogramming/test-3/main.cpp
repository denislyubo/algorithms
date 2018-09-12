#include <type_traits>
#include <iostream>

using namespace std;

template<typename T> struct has_foo{
private:  // Спрячем от пользователя детали реализации.
    static int detect(...);  // Статическую функцию и вызывать проще.
    template<typename U> static decltype(std::declval<U>().foo(42)) detect(const U&);
public:
    static constexpr bool value = std::is_same<void, decltype(detect(std::declval<T>()))>::value;  // Вот видите, готово.
};


class A {
public:
    void foo(int f) {

    }
};

int main() {
    A a;

    cout << "has foo: " << boolalpha << has_foo<A>::value << endl;



    return 0;
}
