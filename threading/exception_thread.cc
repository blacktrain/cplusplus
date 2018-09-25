#include <iostream>
#include <thread>
#include <chrono>

struct func{
	int& i;

	func(int i_):i(i_){}

	void operator() (){
		using namespace std::chrono_literals;

		for(unsigned j = 0;j < 10000000;j++){
			i = j;
			std::cout << i << std::endl;
			std::this_thread::sleep_for(1s);
		}
	}
};

void do_something_in_current_thread(){
	throw 1;
}

struct thread_guard{
	std::thread& t;

	thread_guard(std::thread& t_):t(t_){};
	~thread_guard(){
		std::cout << "~thread_guard\n";

		if(t.joinable()){
			std::cout << "~thread_guard\n";
			t.join();
		}
	}
};

void oops(){
	int local_value;
	std::thread my_thread{func{local_value}};
	thread_guard guard{my_thread};
	std::cout << "oops\n";
	do_something_in_current_thread();
	std::cout << "oops1\n";
}

int main(){
	try{
		oops();
	}
	catch(...){
		std::cout << "catch block\n";
	}

	std::cout << "continue\n";

	return 0;
}
