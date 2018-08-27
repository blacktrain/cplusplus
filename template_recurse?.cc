#include <type_traits>
#include <iostream>

template<class>
class Doc_base;

template <class PRC>
class Any{
public:
	typedef Doc_base<PRC> Document;
};

template <class PRC>
class Doc_base{
public:
	typedef typename Any<PRC>::Document Document;
};

class value_processor{
};

template<typename T>
class debug;

int main(){
	typedef Any<value_processor>::Document::Document test;

	std::cout << std::boolalpha << std::is_same<Any<value_processor>::Document,Any<value_processor>::Document::Document>::value << std::endl;

	return 0;
}
