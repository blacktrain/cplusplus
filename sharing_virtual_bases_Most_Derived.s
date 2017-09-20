	.file	"sharing_virtual_bases_Most_Derived.cc"
	.section	.rodata
.LC0:
	.string	"Shared_Virt::foo() "
	.text
	.align 2
	.globl	_ZN11Shared_Virt3fooEv
	.type	_ZN11Shared_Virt3fooEv, @function
_ZN11Shared_Virt3fooEv:
.LFB0:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movl	$.LC0, %edi
	call	puts
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	_ZN11Shared_Virt3fooEv, .-_ZN11Shared_Virt3fooEv
	.section	.rodata
.LC1:
	.string	"Nonvirt2::bar() "
	.text
	.align 2
	.globl	_ZN8Nonvirt23barEv
	.type	_ZN8Nonvirt23barEv, @function
_ZN8Nonvirt23barEv:
.LFB1:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movl	$.LC1, %edi
	call	puts
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1:
	.size	_ZN8Nonvirt23barEv, .-_ZN8Nonvirt23barEv
	.section	.rodata
.LC2:
	.string	"Nonvirt3::baz() "
	.text
	.align 2
	.globl	_ZN8Nonvirt33bazEv
	.type	_ZN8Nonvirt33bazEv, @function
_ZN8Nonvirt33bazEv:
.LFB2:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movl	$.LC2, %edi
	call	puts
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2:
	.size	_ZN8Nonvirt33bazEv, .-_ZN8Nonvirt33bazEv
	.section	.rodata
.LC3:
	.string	"Nonvirt1::foo() "
	.text
	.align 2
	.globl	_ZN8Nonvirt13fooEv
	.type	_ZN8Nonvirt13fooEv, @function
_ZN8Nonvirt13fooEv:
.LFB3:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movl	$.LC3, %edi
	call	puts
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3:
	.size	_ZN8Nonvirt13fooEv, .-_ZN8Nonvirt13fooEv
	.section	.rodata
.LC4:
	.string	"Most_Derived::bar() "
	.text
	.align 2
	.globl	_ZN12Most_Derived3barEv
	.type	_ZN12Most_Derived3barEv, @function
_ZN12Most_Derived3barEv:
.LFB4:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movl	$.LC4, %edi
	call	puts
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4:
	.size	_ZN12Most_Derived3barEv, .-_ZN12Most_Derived3barEv
	.globl	_ZThn8_N12Most_Derived3barEv
	.type	_ZThn8_N12Most_Derived3barEv, @function
_ZThn8_N12Most_Derived3barEv:
.LFB22:
	.cfi_startproc
	subq	$8, %rdi
	jmp	_ZN12Most_Derived3barEv
	.cfi_endproc
.LFE22:
	.size	_ZThn8_N12Most_Derived3barEv, .-_ZThn8_N12Most_Derived3barEv
	.section	.text._ZN11Shared_VirtC2Ev,"axG",@progbits,_ZN11Shared_VirtC5Ev,comdat
	.align 2
	.weak	_ZN11Shared_VirtC2Ev
	.type	_ZN11Shared_VirtC2Ev, @function
_ZN11Shared_VirtC2Ev: # Shared_Virt::Shared_Virt() arg:rdi action:将_ZTV11Shared_Virt+16的值写到rdi寄存器指向的内存地址
.LFB7:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	$_ZTV11Shared_Virt+16, (%rax)
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7:
	.size	_ZN11Shared_VirtC2Ev, .-_ZN11Shared_VirtC2Ev
	.weak	_ZN11Shared_VirtC1Ev
	.set	_ZN11Shared_VirtC1Ev,_ZN11Shared_VirtC2Ev
	.section	.text._ZN8Nonvirt1C2Ev,"axG",@progbits,_ZN8Nonvirt1C5Ev,comdat
	.align 2
	.weak	_ZN8Nonvirt1C2Ev
	.type	_ZN8Nonvirt1C2Ev, @function
_ZN8Nonvirt1C2Ev: # Nonvirt1::Nonvirt1()	arg:rdi action:将vtable_Nonvirt1 + 16的值写到rdi寄存器指向的内存地址
.LFB10:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	$_ZTV8Nonvirt1+16, (%rax)
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10:
	.size	_ZN8Nonvirt1C2Ev, .-_ZN8Nonvirt1C2Ev
	.weak	_ZN8Nonvirt1C1Ev
	.set	_ZN8Nonvirt1C1Ev,_ZN8Nonvirt1C2Ev
	.section	.text._ZN8Nonvirt2C2Ev,"axG",@progbits,_ZN8Nonvirt2C2Ev,comdat
	.align 2
	.weak	_ZN8Nonvirt2C2Ev
	.type	_ZN8Nonvirt2C2Ev, @function
_ZN8Nonvirt2C2Ev: # Nonvirt2::Nonvirt2() arg: rsi,rdi action:
.LFB13:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	subq	$32, %rax
	movq	(%rax), %rax
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	addq	%rax, %rdx
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, (%rdx)
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE13:
	.size	_ZN8Nonvirt2C2Ev, .-_ZN8Nonvirt2C2Ev
	.section	.text._ZN8Nonvirt3C2Ev,"axG",@progbits,_ZN8Nonvirt3C2Ev,comdat
	.align 2
	.weak	_ZN8Nonvirt3C2Ev
	.type	_ZN8Nonvirt3C2Ev, @function
_ZN8Nonvirt3C2Ev:	#Nonvirt3::Nonvirt3() arg: rsi,rdi action:
.LFB16:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	subq	$32, %rax
	movq	(%rax), %rax
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	addq	%rax, %rdx
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, (%rdx)
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE16:
	.size	_ZN8Nonvirt3C2Ev, .-_ZN8Nonvirt3C2Ev
	.section	.text._ZN12Most_DerivedC1Ev,"axG",@progbits,_ZN12Most_DerivedC1Ev,comdat
	.align 2
	.weak	_ZN12Most_DerivedC1Ev
	.type	_ZN12Most_DerivedC1Ev, @function
_ZN12Most_DerivedC1Ev:
.LFB19:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	addq	$8, %rax
	movq	%rax, %rdi			#(%rdi) = (%rdi) + 8
	call	_ZN11Shared_VirtC2Ev		#call Shared_Virt::Shared_Virt()
	movq	-8(%rbp), %rax
	movq	%rax, %rdi			#%rdi = -8(%rbp)
	call	_ZN8Nonvirt1C2Ev		#call Nonvirt1::Nonvirt1()
	movl	$_ZTT12Most_Derived+8, %edx	#%edx = VTT for Most_Derived + 8
	movq	-8(%rbp), %rax
	addq	$8, %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZN8Nonvirt2C2Ev		#call Nonvirt2::Nonvirt2()
	movl	$_ZTT12Most_Derived+24, %edx	#%edx = VTT for Most_Derived + 24
	movq	-8(%rbp), %rax
	addq	$16, %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZN8Nonvirt3C2Ev		#call Nonvirt3::Nonvirt3()
	movl	$_ZTV12Most_Derived+24, %edx	#%edx = VTT for Most_Derived + 24
	movq	-8(%rbp), %rax
	movq	%rdx, (%rax)
	movl	$_ZTV12Most_Derived+72, %edx	#%edx = VTT for Most_Derived + 72
	movq	-8(%rbp), %rax
	movq	%rdx, 8(%rax)
	movl	$8, %edx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	movl	$_ZTV12Most_Derived+72, %edx	#%edx = VTT for Most_Derived + 72
	movq	%rdx, (%rax)
	movl	$_ZTV12Most_Derived+120, %edx	#%edx = VTT for Most_Derived + 120
	movq	-8(%rbp), %rax
	movq	%rdx, 16(%rax)
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE19:
	.size	_ZN12Most_DerivedC1Ev, .-_ZN12Most_DerivedC1Ev
	.globl	a
	.bss
	.align 32
	.type	a, @object
	.size	a, 32
a:
	.zero	32
	.weak	_ZTV12Most_Derived
	.section	.rodata._ZTV12Most_Derived,"aG",@progbits,_ZTV12Most_Derived,comdat
	.align 64
	.type	_ZTV12Most_Derived, @object
	.size	_ZTV12Most_Derived, 136
_ZTV12Most_Derived:
	.quad	8
	.quad	0
	.quad	_ZTI12Most_Derived
	.quad	_ZN8Nonvirt13fooEv
	.quad	_ZN12Most_Derived3barEv
	.quad	0
	.quad	0
	.quad	-8
	.quad	_ZTI12Most_Derived
	.quad	_ZN11Shared_Virt3fooEv
	.quad	_ZThn8_N12Most_Derived3barEv
	.quad	-8
	.quad	-8
	.quad	-16
	.quad	_ZTI12Most_Derived
	.quad	0
	.quad	_ZN8Nonvirt33bazEv
	.weak	_ZTT12Most_Derived
	.section	.rodata._ZTT12Most_Derived,"aG",@progbits,_ZTV12Most_Derived,comdat
	.align 64
	.type	_ZTT12Most_Derived, @object
	.size	_ZTT12Most_Derived, 64
_ZTT12Most_Derived:
	.quad	_ZTV12Most_Derived+24
	.quad	_ZTC12Most_Derived8_8Nonvirt2+32
	.quad	_ZTC12Most_Derived8_8Nonvirt2+32
	.quad	_ZTC12Most_Derived16_8Nonvirt3+32
	.quad	_ZTC12Most_Derived16_8Nonvirt3+72
	.quad	_ZTV12Most_Derived+72
	.quad	_ZTV12Most_Derived+72
	.quad	_ZTV12Most_Derived+120
	.hidden	_ZTC12Most_Derived8_8Nonvirt2
	.weak	_ZTC12Most_Derived8_8Nonvirt2
	.section	.rodata._ZTC12Most_Derived8_8Nonvirt2,"aG",@progbits,_ZTV12Most_Derived,comdat
	.align 32
	.type	_ZTC12Most_Derived8_8Nonvirt2, @object
	.size	_ZTC12Most_Derived8_8Nonvirt2, 48
_ZTC12Most_Derived8_8Nonvirt2:
	.quad	0
	.quad	0
	.quad	0
	.quad	_ZTI8Nonvirt2
	.quad	_ZN11Shared_Virt3fooEv
	.quad	_ZN8Nonvirt23barEv
	.hidden	_ZTC12Most_Derived16_8Nonvirt3
	.weak	_ZTC12Most_Derived16_8Nonvirt3
	.section	.rodata._ZTC12Most_Derived16_8Nonvirt3,"aG",@progbits,_ZTV12Most_Derived,comdat
	.align 64
	.type	_ZTC12Most_Derived16_8Nonvirt3, @object
	.size	_ZTC12Most_Derived16_8Nonvirt3, 80
_ZTC12Most_Derived16_8Nonvirt3:
	.quad	-8
	.quad	-8
	.quad	0
	.quad	_ZTI8Nonvirt3
	.quad	_ZN11Shared_Virt3fooEv
	.quad	_ZN8Nonvirt33bazEv
	.quad	0
	.quad	8
	.quad	_ZTI8Nonvirt3
	.quad	_ZN11Shared_Virt3fooEv
	.weak	_ZTV8Nonvirt1
	.section	.rodata._ZTV8Nonvirt1,"aG",@progbits,_ZTV8Nonvirt1,comdat
	.align 16
	.type	_ZTV8Nonvirt1, @object
	.size	_ZTV8Nonvirt1, 24
_ZTV8Nonvirt1:
	.quad	0
	.quad	_ZTI8Nonvirt1
	.quad	_ZN8Nonvirt13fooEv
	.weak	_ZTV8Nonvirt3
	.section	.rodata._ZTV8Nonvirt3,"aG",@progbits,_ZTV8Nonvirt3,comdat
	.align 32
	.type	_ZTV8Nonvirt3, @object
	.size	_ZTV8Nonvirt3, 48
_ZTV8Nonvirt3:
	.quad	0
	.quad	0
	.quad	0
	.quad	_ZTI8Nonvirt3
	.quad	_ZN11Shared_Virt3fooEv
	.quad	_ZN8Nonvirt33bazEv
	.weak	_ZTT8Nonvirt3
	.section	.rodata._ZTT8Nonvirt3,"aG",@progbits,_ZTV8Nonvirt3,comdat
	.align 16
	.type	_ZTT8Nonvirt3, @object
	.size	_ZTT8Nonvirt3, 16
_ZTT8Nonvirt3:
	.quad	_ZTV8Nonvirt3+32
	.quad	_ZTV8Nonvirt3+32
	.weak	_ZTV8Nonvirt2
	.section	.rodata._ZTV8Nonvirt2,"aG",@progbits,_ZTV8Nonvirt2,comdat
	.align 32
	.type	_ZTV8Nonvirt2, @object
	.size	_ZTV8Nonvirt2, 48
_ZTV8Nonvirt2:
	.quad	0
	.quad	0
	.quad	0
	.quad	_ZTI8Nonvirt2
	.quad	_ZN11Shared_Virt3fooEv
	.quad	_ZN8Nonvirt23barEv
	.weak	_ZTT8Nonvirt2
	.section	.rodata._ZTT8Nonvirt2,"aG",@progbits,_ZTV8Nonvirt2,comdat
	.align 16
	.type	_ZTT8Nonvirt2, @object
	.size	_ZTT8Nonvirt2, 16
_ZTT8Nonvirt2:
	.quad	_ZTV8Nonvirt2+32
	.quad	_ZTV8Nonvirt2+32
	.weak	_ZTV11Shared_Virt
	.section	.rodata._ZTV11Shared_Virt,"aG",@progbits,_ZTV11Shared_Virt,comdat
	.align 16
	.type	_ZTV11Shared_Virt, @object
	.size	_ZTV11Shared_Virt, 24
_ZTV11Shared_Virt:
	.quad	0
	.quad	_ZTI11Shared_Virt
	.quad	_ZN11Shared_Virt3fooEv
	.weak	_ZTI12Most_Derived
	.section	.rodata._ZTI12Most_Derived,"aG",@progbits,_ZTI12Most_Derived,comdat
	.align 64
	.type	_ZTI12Most_Derived, @object
	.size	_ZTI12Most_Derived, 72
_ZTI12Most_Derived:
	.quad	_ZTVN10__cxxabiv121__vmi_class_type_infoE+16
	.quad	_ZTS12Most_Derived
	.long	2
	.long	3
	.quad	_ZTI8Nonvirt1
	.quad	2
	.quad	_ZTI8Nonvirt2
	.quad	2050
	.quad	_ZTI8Nonvirt3
	.quad	4098
	.weak	_ZTS12Most_Derived
	.section	.rodata._ZTS12Most_Derived,"aG",@progbits,_ZTS12Most_Derived,comdat
	.type	_ZTS12Most_Derived, @object
	.size	_ZTS12Most_Derived, 15
_ZTS12Most_Derived:
	.string	"12Most_Derived"
	.weak	_ZTI8Nonvirt1
	.section	.rodata._ZTI8Nonvirt1,"aG",@progbits,_ZTI8Nonvirt1,comdat
	.align 16
	.type	_ZTI8Nonvirt1, @object
	.size	_ZTI8Nonvirt1, 16
_ZTI8Nonvirt1:
	.quad	_ZTVN10__cxxabiv117__class_type_infoE+16
	.quad	_ZTS8Nonvirt1
	.weak	_ZTS8Nonvirt1
	.section	.rodata._ZTS8Nonvirt1,"aG",@progbits,_ZTS8Nonvirt1,comdat
	.type	_ZTS8Nonvirt1, @object
	.size	_ZTS8Nonvirt1, 10
_ZTS8Nonvirt1:
	.string	"8Nonvirt1"
	.weak	_ZTI8Nonvirt3
	.section	.rodata._ZTI8Nonvirt3,"aG",@progbits,_ZTI8Nonvirt3,comdat
	.align 32
	.type	_ZTI8Nonvirt3, @object
	.size	_ZTI8Nonvirt3, 40
_ZTI8Nonvirt3:
	.quad	_ZTVN10__cxxabiv121__vmi_class_type_infoE+16
	.quad	_ZTS8Nonvirt3
	.long	0
	.long	1
	.quad	_ZTI11Shared_Virt
	.quad	-8189
	.weak	_ZTS8Nonvirt3
	.section	.rodata._ZTS8Nonvirt3,"aG",@progbits,_ZTS8Nonvirt3,comdat
	.type	_ZTS8Nonvirt3, @object
	.size	_ZTS8Nonvirt3, 10
_ZTS8Nonvirt3:
	.string	"8Nonvirt3"
	.weak	_ZTI8Nonvirt2
	.section	.rodata._ZTI8Nonvirt2,"aG",@progbits,_ZTI8Nonvirt2,comdat
	.align 32
	.type	_ZTI8Nonvirt2, @object
	.size	_ZTI8Nonvirt2, 40
_ZTI8Nonvirt2:
	.quad	_ZTVN10__cxxabiv121__vmi_class_type_infoE+16
	.quad	_ZTS8Nonvirt2
	.long	0
	.long	1
	.quad	_ZTI11Shared_Virt
	.quad	-8189
	.weak	_ZTS8Nonvirt2
	.section	.rodata._ZTS8Nonvirt2,"aG",@progbits,_ZTS8Nonvirt2,comdat
	.type	_ZTS8Nonvirt2, @object
	.size	_ZTS8Nonvirt2, 10
_ZTS8Nonvirt2:
	.string	"8Nonvirt2"
	.weak	_ZTI11Shared_Virt
	.section	.rodata._ZTI11Shared_Virt,"aG",@progbits,_ZTI11Shared_Virt,comdat
	.align 16
	.type	_ZTI11Shared_Virt, @object
	.size	_ZTI11Shared_Virt, 16
_ZTI11Shared_Virt:
	.quad	_ZTVN10__cxxabiv117__class_type_infoE+16
	.quad	_ZTS11Shared_Virt
	.weak	_ZTS11Shared_Virt
	.section	.rodata._ZTS11Shared_Virt,"aG",@progbits,_ZTS11Shared_Virt,comdat
	.type	_ZTS11Shared_Virt, @object
	.size	_ZTS11Shared_Virt, 14
_ZTS11Shared_Virt:
	.string	"11Shared_Virt"
	.text
	.type	_Z41__static_initialization_and_destruction_0ii, @function
_Z41__static_initialization_and_destruction_0ii:
.LFB20:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	cmpl	$1, -4(%rbp)
	jne	.L11
	cmpl	$65535, -8(%rbp)
	jne	.L11
	movl	$a, %edi
	call	_ZN12Most_DerivedC1Ev
.L11:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE20:
	.size	_Z41__static_initialization_and_destruction_0ii, .-_Z41__static_initialization_and_destruction_0ii
	.type	_GLOBAL__sub_I__ZN11Shared_Virt3fooEv, @function
_GLOBAL__sub_I__ZN11Shared_Virt3fooEv:
.LFB21:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	$65535, %esi
	movl	$1, %edi
	call	_Z41__static_initialization_and_destruction_0ii
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE21:
	.size	_GLOBAL__sub_I__ZN11Shared_Virt3fooEv, .-_GLOBAL__sub_I__ZN11Shared_Virt3fooEv
	.section	.init_array,"aw"
	.align 8
	.quad	_GLOBAL__sub_I__ZN11Shared_Virt3fooEv
	.ident	"GCC: (Debian 4.9.2-10) 4.9.2"
	.section	.note.GNU-stack,"",@progbits
