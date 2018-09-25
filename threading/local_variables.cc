//线程函数引用或者持有调用此线程函数的外部函数的局部变量的指针，会导致dangling reference，或者dangling pointer

#include <iostream>
#include <thread>
#include <chrono>

struct func{
	int&	i;
	func(int i_):i(i_){}

	void operator() (){
		using namespace std::chrono_literals;
		for(unsigned j = 0;j < 1000000;++j){
			i = j;
			std::cout << i << std::endl;
			std::this_thread::sleep_for(1s);
		}
	}
};

void oops(){
	int local_variable = 0;
	std::thread my_thread{func{local_variable}};
	my_thread.detach();
}

int main(){
	oops();

	std::cout << "message from main entry point\n";

	return 0;
}
