
#include <iostream>
#include <type_traits>
#include <memory>

template<typename T> struct is_shared_ptr : std::false_type {};
template<typename T> struct is_shared_ptr<std::shared_ptr<T>> : std::true_type {};

template <class T>
typename std::enable_if<is_shared_ptr<decltype(std::declval<T>().value)>::value, void>::type
func( T t )
{
    std::cout << "shared ptr" << std::endl;
}

template <class T>
typename std::enable_if<!is_shared_ptr<decltype(std::declval<T>().value)>::value, void>::type
func( T t )
{
    std::cout << "non shared" << std::endl;
}

using namespace std;

template <class T>
typename enable_if<is_pointer<T>::value, T>::type
foo(T t)
{
    cout << "raw ptr call" << endl;
  return t;
}

template <class T>
typename enable_if<is_shared_ptr<T>::value, T>::type
foo(T t)
{
    cout << "shared ptr call" << endl;
    return t;
}

int main() {
    int* a;
    std::shared_ptr<int> b;

    foo(a);

    foo(b);

    return 0;
}