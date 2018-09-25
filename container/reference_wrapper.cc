//此代码展示了container容器错误的保存了局部变量(已销毁的变量)
#include <iostream>
#include <algorithm>
#include <functional>
#include <list>


class object{
public:
	
	object(int i):i_(i){
		std::cout << i_<< "constructor\n";
	}

	object(const object& other){
		i_ = other.i_;
		std::cout << "copy constructor\n";
	}

	object(const object&& other){
		i_ = other.i_;
		std::cout << "move constructor\n";
	}

	~object(){
		std::cout << "destructor\n";
	}

	int& get(){
		return i_;
	}

private:
	int i_;
};

typedef std::list<std::reference_wrapper<object>> object_list;

void foo(object_list& obj_list){
	object obj0{0};
	object obj1{1};
	object obj2{2};
	object obj3{3};
	object obj4{4};

	obj_list.push_back(std::ref(obj0));
	obj_list.push_back(std::ref(obj1));
	obj_list.push_back(std::ref(obj2));
	obj_list.push_back(std::ref(obj3));
	obj_list.push_back(std::ref(obj4));
}

int main(){
	object_list obj_list;
	foo(obj_list);

	auto printer = [](object& obj){ std::cout << obj.get() << std::endl; };

	std::for_each(obj_list.begin(),obj_list.end(),printer);

	return 0;
}
