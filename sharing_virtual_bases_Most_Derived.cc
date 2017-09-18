/*
 Test case for sharing virtual bases.
 In Most_Derived,
 the primary base class is Nonvirt1,
 Nonvirt2 and Nonvirt3 share vptrs with
 virtual base Shared_Virt.Shared_Virt
 should be at the same offset as Nonvirt2.
 Should get:
 67% a.out
 (long)(Nonvirt1 *)dd - (long)dd = 0
 (long)(Nonvirt2 *)dd - (long)dd = 8
 (long)(Nonvirt3 *)dd - (long)dd = 16
 (long)(Shared_Virt *)dd - (long)dd = 8
 */

extern "C" int printf(const char *,...);
#define EVAL(EXPR) printf( #EXPR " = %d\n", (EXPR) );

struct Shared_Virt {
	virtual void foo();
};

struct Nonvirt2 : virtual Shared_Virt {
	virtual void bar();
};

struct Nonvirt3 : virtual Shared_Virt {
	virtual void baz();
	int test_aa;
};

struct Nonvirt1 {
	virtual void foo();
};

struct Most_Derived : Nonvirt1 , Nonvirt2 , Nonvirt3 {
	virtual void bar();
};

void Shared_Virt::foo() { printf("Shared_Virt::foo() \n"); }
void Nonvirt2::bar() { printf("Nonvirt2::bar() \n"); }
void Nonvirt3::baz() { printf("Nonvirt3::baz() \n"); }
void Nonvirt1::foo() { printf("Nonvirt1::foo() \n"); }
void Most_Derived::bar() { printf("Most_Derived::bar() \n"); }

#ifdef __x86_64__
typedef long long *ptr_t;
#else
typedef int *ptr_t;
#endif

typedef void (*ptr_vfunc)();

void test(){
	printf("%s\n",__func__);
}

main()
{
	Most_Derived *dd = new Most_Derived;
	Nonvirt1 *nonvirt1 = (Nonvirt1 *)dd;
	Nonvirt2 *nonvirt2 = (Nonvirt2 *)dd;
	Nonvirt3 *nonvirt3 = (Nonvirt3 *)dd;
	Shared_Virt *shared_virt = (Shared_Virt *)dd;

	EVAL((long)(Nonvirt1 *)dd - (long)dd);
	EVAL((long)(Nonvirt2 *)dd - (long)dd);
	EVAL((long)(Nonvirt3 *)dd - (long)dd);
	EVAL((long)(Shared_Virt *)dd - (long)dd);

	ptr_t vptr_most_derived = (ptr_t)dd;
	ptr_t vptr_nonvirt1 = (ptr_t)nonvirt1;
	ptr_t vptr_nonvirt2 = (ptr_t)nonvirt2;
	ptr_t vptr_nonvirt3 = (ptr_t)nonvirt3;
	ptr_t vptr_shared_virt = (ptr_t)shared_virt;

	printf("vptr_most_derived = %p\n",*vptr_most_derived);
	printf("vptr_nonvirt1 = %p\n",*vptr_nonvirt1);
	printf("vptr_nonvirt2 = %p\n",*vptr_nonvirt2);
	printf("vptr_nonvirt3 = %p\n",*vptr_nonvirt3);
	printf("vptr_shared_virt = %p\n",*vptr_shared_virt);

	ptr_vfunc vfunc = 0;

	//call Nonvirt1 virtual function 
	ptr_t *vtable_nonvirt1 = (ptr_t*)*vptr_nonvirt1;
	vfunc = (ptr_vfunc)vtable_nonvirt1[0];
	vfunc();

	//call shared_virt virtual function 
	ptr_t *vtable_shared_virt = (ptr_t*)*vptr_shared_virt;
	vfunc = (ptr_vfunc)vtable_shared_virt[0];
	vfunc();

	//call Nonvirt2 virtual function 
	ptr_t *vtable_nonvirt2 = (ptr_t*)*vptr_nonvirt2;
	vfunc = (ptr_vfunc)vtable_nonvirt2[1];
	vfunc();

	//call Nonvirt3 virtual function 
	ptr_t *vtable_nonvirt3 = (ptr_t*)*vptr_nonvirt3;
	vfunc = (ptr_vfunc)vtable_nonvirt3[1];
	vfunc();

	void *what = (void *)vtable_nonvirt3[0];
	if(!what)
		printf("error\n");

	dd->baz();
}
