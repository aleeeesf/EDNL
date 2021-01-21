	.file	"Problema4.cpp"
	.text
	.section .rdata,"dr"
__ZStL19piecewise_construct:
	.space 1
.lcomm __ZStL8__ioinit,1,1
	.section	.text$_ZNSt14_Bit_referenceC1EPmm,"x"
	.linkonce discard
	.align 2
	.globl	__ZNSt14_Bit_referenceC1EPmm
	.def	__ZNSt14_Bit_referenceC1EPmm;	.scl	2;	.type	32;	.endef
__ZNSt14_Bit_referenceC1EPmm:
LFB1690:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$4, %esp
	movl	%ecx, -4(%ebp)
	movl	-4(%ebp), %eax
	movl	8(%ebp), %edx
	movl	%edx, (%eax)
	movl	-4(%ebp), %eax
	movl	12(%ebp), %edx
	movl	%edx, 4(%eax)
	nop
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret	$8
	.cfi_endproc
LFE1690:
	.section	.text$_ZNKSt14_Bit_referencecvbEv,"x"
	.linkonce discard
	.align 2
	.globl	__ZNKSt14_Bit_referencecvbEv
	.def	__ZNKSt14_Bit_referencecvbEv;	.scl	2;	.type	32;	.endef
__ZNKSt14_Bit_referencecvbEv:
LFB1694:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$4, %esp
	movl	%ecx, -4(%ebp)
	movl	-4(%ebp), %eax
	movl	(%eax), %eax
	movl	(%eax), %edx
	movl	-4(%ebp), %eax
	movl	4(%eax), %eax
	andl	%edx, %eax
	testl	%eax, %eax
	setne	%al
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE1694:
	.section	.text$_ZNSt14_Bit_referenceaSEb,"x"
	.linkonce discard
	.align 2
	.globl	__ZNSt14_Bit_referenceaSEb
	.def	__ZNSt14_Bit_referenceaSEb;	.scl	2;	.type	32;	.endef
__ZNSt14_Bit_referenceaSEb:
LFB1695:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$8, %esp
	movl	%ecx, -4(%ebp)
	movl	8(%ebp), %eax
	movb	%al, -8(%ebp)
	cmpb	$0, -8(%ebp)
	je	L5
	movl	-4(%ebp), %eax
	movl	(%eax), %eax
	movl	(%eax), %ecx
	movl	-4(%ebp), %eax
	movl	4(%eax), %edx
	movl	-4(%ebp), %eax
	movl	(%eax), %eax
	orl	%ecx, %edx
	movl	%edx, (%eax)
	jmp	L6
L5:
	movl	-4(%ebp), %eax
	movl	(%eax), %eax
	movl	(%eax), %edx
	movl	-4(%ebp), %eax
	movl	4(%eax), %eax
	notl	%eax
	movl	%eax, %ecx
	movl	-4(%ebp), %eax
	movl	(%eax), %eax
	andl	%ecx, %edx
	movl	%edx, (%eax)
L6:
	movl	-4(%ebp), %eax
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret	$4
	.cfi_endproc
LFE1695:
	.section	.text$_ZNSt18_Bit_iterator_baseC2EPmj,"x"
	.linkonce discard
	.align 2
	.globl	__ZNSt18_Bit_iterator_baseC2EPmj
	.def	__ZNSt18_Bit_iterator_baseC2EPmj;	.scl	2;	.type	32;	.endef
__ZNSt18_Bit_iterator_baseC2EPmj:
LFB1704:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$4, %esp
	movl	%ecx, -4(%ebp)
	movl	-4(%ebp), %eax
	movl	8(%ebp), %edx
	movl	%edx, (%eax)
	movl	-4(%ebp), %eax
	movl	12(%ebp), %edx
	movl	%edx, 4(%eax)
	nop
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret	$8
	.cfi_endproc
LFE1704:
	.section	.text$_ZNSt18_Bit_iterator_base7_M_incrEi,"x"
	.linkonce discard
	.align 2
	.globl	__ZNSt18_Bit_iterator_base7_M_incrEi
	.def	__ZNSt18_Bit_iterator_base7_M_incrEi;	.scl	2;	.type	32;	.endef
__ZNSt18_Bit_iterator_base7_M_incrEi:
LFB1708:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$20, %esp
	movl	%ecx, -20(%ebp)
	movl	-20(%ebp), %eax
	movl	4(%eax), %edx
	movl	8(%ebp), %eax
	addl	%edx, %eax
	movl	%eax, -4(%ebp)
	movl	-20(%ebp), %eax
	movl	(%eax), %edx
	movl	-4(%ebp), %eax
	movl	%eax, %ecx
	sarl	$31, %ecx
	andl	$31, %ecx
	addl	%ecx, %eax
	sarl	$5, %eax
	sall	$2, %eax
	addl	%eax, %edx
	movl	-20(%ebp), %eax
	movl	%edx, (%eax)
	movl	-4(%ebp), %eax
	cltd
	shrl	$27, %edx
	addl	%edx, %eax
	andl	$31, %eax
	subl	%edx, %eax
	movl	%eax, -4(%ebp)
	cmpl	$0, -4(%ebp)
	jns	L10
	addl	$32, -4(%ebp)
	movl	-20(%ebp), %eax
	movl	(%eax), %eax
	leal	-4(%eax), %edx
	movl	-20(%ebp), %eax
	movl	%edx, (%eax)
L10:
	movl	-4(%ebp), %edx
	movl	-20(%ebp), %eax
	movl	%edx, 4(%eax)
	nop
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret	$4
	.cfi_endproc
LFE1708:
	.section	.text$_ZNSt13_Bit_iteratorC1Ev,"x"
	.linkonce discard
	.align 2
	.globl	__ZNSt13_Bit_iteratorC1Ev
	.def	__ZNSt13_Bit_iteratorC1Ev;	.scl	2;	.type	32;	.endef
__ZNSt13_Bit_iteratorC1Ev:
LFB1718:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$40, %esp
	movl	%ecx, -12(%ebp)
	movl	-12(%ebp), %eax
	movl	$0, 4(%esp)
	movl	$0, (%esp)
	movl	%eax, %ecx
	call	__ZNSt18_Bit_iterator_baseC2EPmj
	subl	$8, %esp
	nop
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE1718:
	.section	.text$_ZNSt13_Bit_iteratorC1EPmj,"x"
	.linkonce discard
	.align 2
	.globl	__ZNSt13_Bit_iteratorC1EPmj
	.def	__ZNSt13_Bit_iteratorC1EPmj;	.scl	2;	.type	32;	.endef
__ZNSt13_Bit_iteratorC1EPmj:
LFB1721:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$40, %esp
	movl	%ecx, -12(%ebp)
	movl	-12(%ebp), %eax
	movl	12(%ebp), %edx
	movl	%edx, 4(%esp)
	movl	8(%ebp), %edx
	movl	%edx, (%esp)
	movl	%eax, %ecx
	call	__ZNSt18_Bit_iterator_baseC2EPmj
	subl	$8, %esp
	nop
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret	$8
	.cfi_endproc
LFE1721:
	.section	.text$_ZNKSt13_Bit_iteratordeEv,"x"
	.linkonce discard
	.align 2
	.globl	__ZNKSt13_Bit_iteratordeEv
	.def	__ZNKSt13_Bit_iteratordeEv;	.scl	2;	.type	32;	.endef
__ZNKSt13_Bit_iteratordeEv:
LFB1723:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$56, %esp
	movl	%ecx, -28(%ebp)
	movl	-28(%ebp), %eax
	movl	4(%eax), %eax
	movl	$1, %edx
	movl	%eax, %ecx
	sall	%cl, %edx
	movl	%edx, %ecx
	movl	-28(%ebp), %eax
	movl	(%eax), %edx
	leal	-16(%ebp), %eax
	movl	%ecx, 4(%esp)
	movl	%edx, (%esp)
	movl	%eax, %ecx
	call	__ZNSt14_Bit_referenceC1EPmm
	subl	$8, %esp
	movl	-16(%ebp), %eax
	movl	-12(%ebp), %edx
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE1723:
	.section	.text$_ZNSt13_Bit_iteratorpLEi,"x"
	.linkonce discard
	.align 2
	.globl	__ZNSt13_Bit_iteratorpLEi
	.def	__ZNSt13_Bit_iteratorpLEi;	.scl	2;	.type	32;	.endef
__ZNSt13_Bit_iteratorpLEi:
LFB1728:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$40, %esp
	movl	%ecx, -12(%ebp)
	movl	-12(%ebp), %eax
	movl	8(%ebp), %edx
	movl	%edx, (%esp)
	movl	%eax, %ecx
	call	__ZNSt18_Bit_iterator_base7_M_incrEi
	subl	$4, %esp
	movl	-12(%ebp), %eax
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret	$4
	.cfi_endproc
LFE1728:
	.section	.text$_ZNKSt13_Bit_iteratorplEi,"x"
	.linkonce discard
	.align 2
	.globl	__ZNKSt13_Bit_iteratorplEi
	.def	__ZNKSt13_Bit_iteratorplEi;	.scl	2;	.type	32;	.endef
__ZNKSt13_Bit_iteratorplEi:
LFB1730:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$56, %esp
	movl	%ecx, -28(%ebp)
	movl	-28(%ebp), %eax
	movl	4(%eax), %edx
	movl	(%eax), %eax
	movl	%eax, -16(%ebp)
	movl	%edx, -12(%ebp)
	leal	-16(%ebp), %eax
	movl	8(%ebp), %edx
	movl	%edx, (%esp)
	movl	%eax, %ecx
	call	__ZNSt13_Bit_iteratorpLEi
	subl	$4, %esp
	movl	4(%eax), %edx
	movl	(%eax), %eax
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret	$4
	.cfi_endproc
LFE1730:
	.section .rdata,"dr"
__ZStL13allocator_arg:
	.space 1
__ZStL6ignore:
	.space 1
	.text
	.align 2
	.globl	__ZN9Particion4unirEii
	.def	__ZN9Particion4unirEii;	.scl	2;	.type	32;	.endef
__ZN9Particion4unirEii:
LFB2783:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%ebx
	subl	$36, %esp
	.cfi_offset 3, -12
	movl	%ecx, -12(%ebp)
	movl	12(%ebp), %edx
	movl	-12(%ebp), %eax
	movl	%edx, (%esp)
	movl	%eax, %ecx
	call	__ZNSt6vectorIiSaIiEEixEj
	subl	$4, %esp
	movl	(%eax), %ebx
	movl	8(%ebp), %edx
	movl	-12(%ebp), %eax
	movl	%edx, (%esp)
	movl	%eax, %ecx
	call	__ZNSt6vectorIiSaIiEEixEj
	subl	$4, %esp
	movl	(%eax), %eax
	cmpl	%eax, %ebx
	setl	%al
	testb	%al, %al
	je	L20
	movl	8(%ebp), %edx
	movl	-12(%ebp), %eax
	movl	%edx, (%esp)
	movl	%eax, %ecx
	call	__ZNSt6vectorIiSaIiEEixEj
	subl	$4, %esp
	movl	12(%ebp), %edx
	movl	%edx, (%eax)
	jmp	L23
L20:
	movl	8(%ebp), %edx
	movl	-12(%ebp), %eax
	movl	%edx, (%esp)
	movl	%eax, %ecx
	call	__ZNSt6vectorIiSaIiEEixEj
	subl	$4, %esp
	movl	(%eax), %ebx
	movl	12(%ebp), %edx
	movl	-12(%ebp), %eax
	movl	%edx, (%esp)
	movl	%eax, %ecx
	call	__ZNSt6vectorIiSaIiEEixEj
	subl	$4, %esp
	movl	(%eax), %eax
	cmpl	%eax, %ebx
	sete	%al
	testb	%al, %al
	je	L22
	movl	8(%ebp), %edx
	movl	-12(%ebp), %eax
	movl	%edx, (%esp)
	movl	%eax, %ecx
	call	__ZNSt6vectorIiSaIiEEixEj
	subl	$4, %esp
	movl	(%eax), %edx
	subl	$1, %edx
	movl	%edx, (%eax)
L22:
	movl	12(%ebp), %edx
	movl	-12(%ebp), %eax
	movl	%edx, (%esp)
	movl	%eax, %ecx
	call	__ZNSt6vectorIiSaIiEEixEj
	subl	$4, %esp
	movl	8(%ebp), %edx
	movl	%edx, (%eax)
L23:
	nop
	movl	-4(%ebp), %ebx
	leave
	.cfi_restore 5
	.cfi_restore 3
	.cfi_def_cfa 4, 4
	ret	$8
	.cfi_endproc
LFE2783:
	.align 2
	.globl	__ZNK9Particion9encontrarEi
	.def	__ZNK9Particion9encontrarEi;	.scl	2;	.type	32;	.endef
__ZNK9Particion9encontrarEi:
LFB2784:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$56, %esp
	movl	%ecx, -28(%ebp)
	movl	8(%ebp), %eax
	movl	%eax, -12(%ebp)
L26:
	movl	-12(%ebp), %edx
	movl	-28(%ebp), %eax
	movl	%edx, (%esp)
	movl	%eax, %ecx
	call	__ZNSt6vectorIiSaIiEEixEj
	subl	$4, %esp
	movl	(%eax), %eax
	notl	%eax
	shrl	$31, %eax
	testb	%al, %al
	je	L25
	movl	-12(%ebp), %edx
	movl	-28(%ebp), %eax
	movl	%edx, (%esp)
	movl	%eax, %ecx
	call	__ZNSt6vectorIiSaIiEEixEj
	subl	$4, %esp
	movl	(%eax), %eax
	movl	%eax, -12(%ebp)
	jmp	L26
L25:
	movl	8(%ebp), %edx
	movl	-28(%ebp), %eax
	movl	%edx, (%esp)
	movl	%eax, %ecx
	call	__ZNSt6vectorIiSaIiEEixEj
	subl	$4, %esp
	movl	(%eax), %eax
	notl	%eax
	shrl	$31, %eax
	testb	%al, %al
	je	L27
	movl	8(%ebp), %edx
	movl	-28(%ebp), %eax
	movl	%edx, (%esp)
	movl	%eax, %ecx
	call	__ZNSt6vectorIiSaIiEEixEj
	subl	$4, %esp
	movl	(%eax), %eax
	movl	%eax, -16(%ebp)
	movl	8(%ebp), %edx
	movl	-28(%ebp), %eax
	movl	%edx, (%esp)
	movl	%eax, %ecx
	call	__ZNSt6vectorIiSaIiEEixEj
	subl	$4, %esp
	movl	-12(%ebp), %edx
	movl	%edx, (%eax)
	movl	-16(%ebp), %eax
	movl	%eax, 8(%ebp)
	jmp	L25
L27:
	movl	-12(%ebp), %eax
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret	$4
	.cfi_endproc
LFE2784:
	.section	.text$_ZNSt12_Vector_baseIdSaIdEE12_Vector_implD1Ev,"x"
	.linkonce discard
	.align 2
	.globl	__ZNSt12_Vector_baseIdSaIdEE12_Vector_implD1Ev
	.def	__ZNSt12_Vector_baseIdSaIdEE12_Vector_implD1Ev;	.scl	2;	.type	32;	.endef
__ZNSt12_Vector_baseIdSaIdEE12_Vector_implD1Ev:
LFB2799:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$24, %esp
	movl	%ecx, -12(%ebp)
	movl	-12(%ebp), %eax
	movl	%eax, %ecx
	call	__ZNSaIdED2Ev
	nop
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE2799:
	.section	.text$_ZNSt12_Vector_baseIdSaIdEEC2Ev,"x"
	.linkonce discard
	.align 2
	.globl	__ZNSt12_Vector_baseIdSaIdEEC2Ev
	.def	__ZNSt12_Vector_baseIdSaIdEEC2Ev;	.scl	2;	.type	32;	.endef
__ZNSt12_Vector_baseIdSaIdEEC2Ev:
LFB2800:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$24, %esp
	movl	%ecx, -12(%ebp)
	movl	-12(%ebp), %eax
	movl	%eax, %ecx
	call	__ZNSt12_Vector_baseIdSaIdEE12_Vector_implC1Ev
	nop
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE2800:
	.section	.text$_ZNSt6vectorIdSaIdEEC1Ev,"x"
	.linkonce discard
	.align 2
	.globl	__ZNSt6vectorIdSaIdEEC1Ev
	.def	__ZNSt6vectorIdSaIdEEC1Ev;	.scl	2;	.type	32;	.endef
__ZNSt6vectorIdSaIdEEC1Ev:
LFB2803:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$24, %esp
	movl	%ecx, -12(%ebp)
	movl	-12(%ebp), %eax
	movl	%eax, %ecx
	call	__ZNSt12_Vector_baseIdSaIdEEC2Ev
	nop
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE2803:
	.section	.text$_ZNSt12_Vector_baseIjSaIjEE12_Vector_implD1Ev,"x"
	.linkonce discard
	.align 2
	.globl	__ZNSt12_Vector_baseIjSaIjEE12_Vector_implD1Ev
	.def	__ZNSt12_Vector_baseIjSaIjEE12_Vector_implD1Ev;	.scl	2;	.type	32;	.endef
__ZNSt12_Vector_baseIjSaIjEE12_Vector_implD1Ev:
LFB2808:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$24, %esp
	movl	%ecx, -12(%ebp)
	movl	-12(%ebp), %eax
	movl	%eax, %ecx
	call	__ZNSaIjED2Ev
	nop
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE2808:
	.section	.text$_ZNSt12_Vector_baseIjSaIjEEC2Ev,"x"
	.linkonce discard
	.align 2
	.globl	__ZNSt12_Vector_baseIjSaIjEEC2Ev
	.def	__ZNSt12_Vector_baseIjSaIjEEC2Ev;	.scl	2;	.type	32;	.endef
__ZNSt12_Vector_baseIjSaIjEEC2Ev:
LFB2809:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$24, %esp
	movl	%ecx, -12(%ebp)
	movl	-12(%ebp), %eax
	movl	%eax, %ecx
	call	__ZNSt12_Vector_baseIjSaIjEE12_Vector_implC1Ev
	nop
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE2809:
	.section	.text$_ZNSt6vectorIjSaIjEEC1Ev,"x"
	.linkonce discard
	.align 2
	.globl	__ZNSt6vectorIjSaIjEEC1Ev
	.def	__ZNSt6vectorIjSaIjEEC1Ev;	.scl	2;	.type	32;	.endef
__ZNSt6vectorIjSaIjEEC1Ev:
LFB2812:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$24, %esp
	movl	%ecx, -12(%ebp)
	movl	-12(%ebp), %eax
	movl	%eax, %ecx
	call	__ZNSt12_Vector_baseIjSaIjEEC2Ev
	nop
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE2812:
	.section	.text$_ZN9__gnu_cxx14__alloc_traitsISaIdEdE15_S_always_equalEv,"x"
	.linkonce discard
	.globl	__ZN9__gnu_cxx14__alloc_traitsISaIdEdE15_S_always_equalEv
	.def	__ZN9__gnu_cxx14__alloc_traitsISaIdEdE15_S_always_equalEv;	.scl	2;	.type	32;	.endef
__ZN9__gnu_cxx14__alloc_traitsISaIdEdE15_S_always_equalEv:
LFB2815:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	movl	$1, %eax
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE2815:
	.text
	.globl	__Z18Cementos_ZuelandiaRK6GrafoPIdERKSt6vectorIiSaIiEERKj
	.def	__Z18Cementos_ZuelandiaRK6GrafoPIdERKSt6vectorIiSaIiEERKj;	.scl	2;	.type	32;	.endef
__Z18Cementos_ZuelandiaRK6GrafoPIdERKSt6vectorIiSaIiEERKj:
LFB2794:
	.cfi_startproc
	.cfi_personality 0,___gxx_personality_v0
	.cfi_lsda 0,LLSDA2794
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%ebx
	subl	$116, %esp
	.cfi_offset 3, -12
	leal	-60(%ebp), %eax
	movl	%eax, %ecx
	call	__ZNSt6vectorIdSaIdEEC1Ev
	leal	-72(%ebp), %eax
	movl	%eax, %ecx
	call	__ZNSt6vectorIdSaIdEEC1Ev
	leal	-84(%ebp), %eax
	movl	%eax, %ecx
	call	__ZNSt6vectorIjSaIjEEC1Ev
	movl	8(%ebp), %ecx
	call	__ZNK6GrafoPIdE7numVertEv
	movl	%eax, -24(%ebp)
	movl	16(%ebp), %eax
	movl	(%eax), %edx
	leal	-48(%ebp), %eax
	leal	-84(%ebp), %ecx
	movl	%ecx, 12(%esp)
	movl	%edx, 8(%esp)
	movl	8(%ebp), %edx
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
LEHB0:
	call	__Z8DijkstraIdESt6vectorIT_SaIS1_EERK6GrafoPIS1_ENS5_7verticeERS0_IS8_SaIS8_EE
	leal	-60(%ebp), %eax
	leal	-48(%ebp), %edx
	movl	%edx, (%esp)
	movl	%eax, %ecx
	call	__ZNSt6vectorIdSaIdEEaSEOS1_
	subl	$4, %esp
	leal	-48(%ebp), %eax
	movl	%eax, %ecx
	call	__ZNSt6vectorIdSaIdEED1Ev
	movl	16(%ebp), %eax
	movl	(%eax), %edx
	leal	-36(%ebp), %eax
	leal	-84(%ebp), %ecx
	movl	%ecx, 12(%esp)
	movl	%edx, 8(%esp)
	movl	8(%ebp), %edx
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	__Z8DijkstraIdESt6vectorIT_SaIS1_EERK6GrafoPIS1_ENS5_7verticeERS0_IS8_SaIS8_EE
LEHE0:
	leal	-72(%ebp), %eax
	leal	-36(%ebp), %edx
	movl	%edx, (%esp)
	movl	%eax, %ecx
	call	__ZNSt6vectorIdSaIdEEaSEOS1_
	subl	$4, %esp
	leal	-36(%ebp), %eax
	movl	%eax, %ecx
	call	__ZNSt6vectorIdSaIdEED1Ev
	movl	$0, -20(%ebp)
L39:
	movl	-24(%ebp), %eax
	leal	-1(%eax), %edx
	movl	-20(%ebp), %eax
	cmpl	%eax, %edx
	jb	L38
	movl	-20(%ebp), %edx
	leal	-72(%ebp), %eax
	movl	%edx, (%esp)
	movl	%eax, %ecx
	call	__ZNSt6vectorIdSaIdEEixEj
	subl	$4, %esp
	fldl	(%eax)
	fstpl	-96(%ebp)
	movl	-20(%ebp), %edx
	leal	-60(%ebp), %eax
	movl	%edx, (%esp)
	movl	%eax, %ecx
	call	__ZNSt6vectorIdSaIdEEixEj
	subl	$4, %esp
	fldl	(%eax)
	fldl	-96(%ebp)
	fstpl	8(%esp)
	fstpl	(%esp)
	call	__Z4sumaIdET_S0_S0_
	fstpl	-96(%ebp)
	movl	-20(%ebp), %edx
	movl	12(%ebp), %eax
	movl	%edx, (%esp)
	movl	%eax, %ecx
	call	__ZNKSt6vectorIiSaIiEEixEj
	subl	$4, %esp
	movl	(%eax), %eax
	movl	%eax, -100(%ebp)
	fildl	-100(%ebp)
	fmull	-96(%ebp)
	fstpl	-16(%ebp)
	addl	$1, -20(%ebp)
	jmp	L39
L38:
	fldl	-16(%ebp)
	fstpl	-96(%ebp)
	leal	-84(%ebp), %eax
	movl	%eax, %ecx
	call	__ZNSt6vectorIjSaIjEED1Ev
	leal	-72(%ebp), %eax
	movl	%eax, %ecx
	call	__ZNSt6vectorIdSaIdEED1Ev
	leal	-60(%ebp), %eax
	movl	%eax, %ecx
	call	__ZNSt6vectorIdSaIdEED1Ev
	fldl	-96(%ebp)
	jmp	L43
L42:
	movl	%eax, %ebx
	leal	-84(%ebp), %eax
	movl	%eax, %ecx
	call	__ZNSt6vectorIjSaIjEED1Ev
	leal	-72(%ebp), %eax
	movl	%eax, %ecx
	call	__ZNSt6vectorIdSaIdEED1Ev
	leal	-60(%ebp), %eax
	movl	%eax, %ecx
	call	__ZNSt6vectorIdSaIdEED1Ev
	movl	%ebx, %eax
	movl	%eax, (%esp)
LEHB1:
	call	__Unwind_Resume
LEHE1:
L43:
	movl	-4(%ebp), %ebx
	leave
	.cfi_restore 5
	.cfi_restore 3
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE2794:
	.def	___gxx_personality_v0;	.scl	2;	.type	32;	.endef
	.section	.gcc_except_table,"w"
LLSDA2794:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 LLSDACSE2794-LLSDACSB2794
LLSDACSB2794:
	.uleb128 LEHB0-LFB2794
	.uleb128 LEHE0-LEHB0
	.uleb128 L42-LFB2794
	.uleb128 0
	.uleb128 LEHB1-LFB2794
	.uleb128 LEHE1-LEHB1
	.uleb128 0
	.uleb128 0
LLSDACSE2794:
	.text
	.section	.text$_ZNSaIbEC1Ev,"x"
	.linkonce discard
	.align 2
	.globl	__ZNSaIbEC1Ev
	.def	__ZNSaIbEC1Ev;	.scl	2;	.type	32;	.endef
__ZNSaIbEC1Ev:
LFB3071:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$24, %esp
	movl	%ecx, -12(%ebp)
	movl	-12(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN9__gnu_cxx13new_allocatorIbEC2Ev
	nop
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE3071:
	.section	.text$_ZNSaIbED1Ev,"x"
	.linkonce discard
	.align 2
	.globl	__ZNSaIbED1Ev
	.def	__ZNSaIbED1Ev;	.scl	2;	.type	32;	.endef
__ZNSaIbED1Ev:
LFB3074:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$24, %esp
	movl	%ecx, -12(%ebp)
	movl	-12(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN9__gnu_cxx13new_allocatorIbED2Ev
	nop
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE3074:
	.section	.text$_ZNSt6vectorIbSaIbEEC1EjRKbRKS0_,"x"
	.linkonce discard
	.align 2
	.globl	__ZNSt6vectorIbSaIbEEC1EjRKbRKS0_
	.def	__ZNSt6vectorIbSaIbEEC1EjRKbRKS0_;	.scl	2;	.type	32;	.endef
__ZNSt6vectorIbSaIbEEC1EjRKbRKS0_:
LFB3077:
	.cfi_startproc
	.cfi_personality 0,___gxx_personality_v0
	.cfi_lsda 0,LLSDA3077
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%ebx
	subl	$36, %esp
	.cfi_offset 3, -12
	movl	%ecx, -12(%ebp)
	movl	-12(%ebp), %eax
	movl	16(%ebp), %edx
	movl	%edx, (%esp)
	movl	%eax, %ecx
	call	__ZNSt13_Bvector_baseISaIbEEC2ERKS0_
	subl	$4, %esp
	movl	-12(%ebp), %eax
	movl	8(%ebp), %edx
	movl	%edx, (%esp)
	movl	%eax, %ecx
LEHB2:
	call	__ZNSt6vectorIbSaIbEE13_M_initializeEj
LEHE2:
	subl	$4, %esp
	movl	12(%ebp), %eax
	movzbl	(%eax), %eax
	movzbl	%al, %edx
	movl	-12(%ebp), %eax
	movl	%edx, (%esp)
	movl	%eax, %ecx
	call	__ZNSt6vectorIbSaIbEE19_M_initialize_valueEb
	subl	$4, %esp
	jmp	L49
L48:
	movl	%eax, %ebx
	movl	-12(%ebp), %eax
	movl	%eax, %ecx
	call	__ZNSt13_Bvector_baseISaIbEED2Ev
	movl	%ebx, %eax
	movl	%eax, (%esp)
LEHB3:
	call	__Unwind_Resume
LEHE3:
L49:
	movl	-4(%ebp), %ebx
	leave
	.cfi_restore 5
	.cfi_restore 3
	.cfi_def_cfa 4, 4
	ret	$12
	.cfi_endproc
LFE3077:
	.section	.gcc_except_table,"w"
LLSDA3077:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 LLSDACSE3077-LLSDACSB3077
LLSDACSB3077:
	.uleb128 LEHB2-LFB3077
	.uleb128 LEHE2-LEHB2
	.uleb128 L48-LFB3077
	.uleb128 0
	.uleb128 LEHB3-LFB3077
	.uleb128 LEHE3-LEHB3
	.uleb128 0
	.uleb128 0
LLSDACSE3077:
	.section	.text$_ZNSt6vectorIbSaIbEEC1EjRKbRKS0_,"x"
	.linkonce discard
	.section	.text$_ZNSt6vectorIbSaIbEED1Ev,"x"
	.linkonce discard
	.align 2
	.globl	__ZNSt6vectorIbSaIbEED1Ev
	.def	__ZNSt6vectorIbSaIbEED1Ev;	.scl	2;	.type	32;	.endef
__ZNSt6vectorIbSaIbEED1Ev:
LFB3080:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$24, %esp
	movl	%ecx, -12(%ebp)
	movl	-12(%ebp), %eax
	movl	%eax, %ecx
	call	__ZNSt13_Bvector_baseISaIbEED2Ev
	nop
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE3080:
	.section	.text$_ZNSt6vectorIiSaIiEEixEj,"x"
	.linkonce discard
	.align 2
	.globl	__ZNSt6vectorIiSaIiEEixEj
	.def	__ZNSt6vectorIiSaIiEEixEj;	.scl	2;	.type	32;	.endef
__ZNSt6vectorIiSaIiEEixEj:
LFB3108:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$4, %esp
	movl	%ecx, -4(%ebp)
	movl	-4(%ebp), %eax
	movl	(%eax), %eax
	movl	8(%ebp), %edx
	sall	$2, %edx
	addl	%edx, %eax
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret	$4
	.cfi_endproc
LFE3108:
	.section	.text$_ZNSt12_Vector_baseIdSaIdEE12_Vector_implC1Ev,"x"
	.linkonce discard
	.align 2
	.globl	__ZNSt12_Vector_baseIdSaIdEE12_Vector_implC1Ev
	.def	__ZNSt12_Vector_baseIdSaIdEE12_Vector_implC1Ev;	.scl	2;	.type	32;	.endef
__ZNSt12_Vector_baseIdSaIdEE12_Vector_implC1Ev:
LFB3111:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$24, %esp
	movl	%ecx, -12(%ebp)
	movl	-12(%ebp), %eax
	movl	%eax, %ecx
	call	__ZNSaIdEC2Ev
	movl	-12(%ebp), %eax
	movl	%eax, %ecx
	call	__ZNSt12_Vector_baseIdSaIdEE17_Vector_impl_dataC2Ev
	nop
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE3111:
	.section	.text$_ZNSaIdED2Ev,"x"
	.linkonce discard
	.align 2
	.globl	__ZNSaIdED2Ev
	.def	__ZNSaIdED2Ev;	.scl	2;	.type	32;	.endef
__ZNSaIdED2Ev:
LFB3113:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$24, %esp
	movl	%ecx, -12(%ebp)
	movl	-12(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN9__gnu_cxx13new_allocatorIdED2Ev
	nop
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE3113:
	.section	.text$_ZNSaIdED1Ev,"x"
	.linkonce discard
	.align 2
	.globl	__ZNSaIdED1Ev
	.def	__ZNSaIdED1Ev;	.scl	2;	.type	32;	.endef
__ZNSaIdED1Ev:
LFB3114:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$24, %esp
	movl	%ecx, -12(%ebp)
	movl	-12(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN9__gnu_cxx13new_allocatorIdED2Ev
	nop
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE3114:
	.section	.text$_ZNSt12_Vector_baseIdSaIdEED2Ev,"x"
	.linkonce discard
	.align 2
	.globl	__ZNSt12_Vector_baseIdSaIdEED2Ev
	.def	__ZNSt12_Vector_baseIdSaIdEED2Ev;	.scl	2;	.type	32;	.endef
__ZNSt12_Vector_baseIdSaIdEED2Ev:
LFB3116:
	.cfi_startproc
	.cfi_personality 0,___gxx_personality_v0
	.cfi_lsda 0,LLSDA3116
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$40, %esp
	movl	%ecx, -12(%ebp)
	movl	-12(%ebp), %eax
	movl	8(%eax), %edx
	movl	-12(%ebp), %eax
	movl	(%eax), %eax
	subl	%eax, %edx
	movl	%edx, %eax
	sarl	$3, %eax
	movl	%eax, %ecx
	movl	-12(%ebp), %eax
	movl	(%eax), %edx
	movl	-12(%ebp), %eax
	movl	%ecx, 4(%esp)
	movl	%edx, (%esp)
	movl	%eax, %ecx
	call	__ZNSt12_Vector_baseIdSaIdEE13_M_deallocateEPdj
	subl	$8, %esp
	movl	-12(%ebp), %eax
	movl	%eax, %ecx
	call	__ZNSt12_Vector_baseIdSaIdEE12_Vector_implD1Ev
	nop
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE3116:
	.section	.gcc_except_table,"w"
LLSDA3116:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 LLSDACSE3116-LLSDACSB3116
LLSDACSB3116:
LLSDACSE3116:
	.section	.text$_ZNSt12_Vector_baseIdSaIdEED2Ev,"x"
	.linkonce discard
	.section	.text$_ZNSt6vectorIdSaIdEED1Ev,"x"
	.linkonce discard
	.align 2
	.globl	__ZNSt6vectorIdSaIdEED1Ev
	.def	__ZNSt6vectorIdSaIdEED1Ev;	.scl	2;	.type	32;	.endef
__ZNSt6vectorIdSaIdEED1Ev:
LFB3120:
	.cfi_startproc
	.cfi_personality 0,___gxx_personality_v0
	.cfi_lsda 0,LLSDA3120
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$40, %esp
	movl	%ecx, -12(%ebp)
	movl	-12(%ebp), %eax
	movl	%eax, %ecx
	call	__ZNSt12_Vector_baseIdSaIdEE19_M_get_Tp_allocatorEv
	movl	-12(%ebp), %edx
	movl	4(%edx), %ecx
	movl	-12(%ebp), %edx
	movl	(%edx), %edx
	movl	%eax, 8(%esp)
	movl	%ecx, 4(%esp)
	movl	%edx, (%esp)
	call	__ZSt8_DestroyIPddEvT_S1_RSaIT0_E
	movl	-12(%ebp), %eax
	movl	%eax, %ecx
	call	__ZNSt12_Vector_baseIdSaIdEED2Ev
	nop
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE3120:
	.section	.gcc_except_table,"w"
LLSDA3120:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 LLSDACSE3120-LLSDACSB3120
LLSDACSB3120:
LLSDACSE3120:
	.section	.text$_ZNSt6vectorIdSaIdEED1Ev,"x"
	.linkonce discard
	.section	.text$_ZNSt12_Vector_baseIjSaIjEE12_Vector_implC1Ev,"x"
	.linkonce discard
	.align 2
	.globl	__ZNSt12_Vector_baseIjSaIjEE12_Vector_implC1Ev
	.def	__ZNSt12_Vector_baseIjSaIjEE12_Vector_implC1Ev;	.scl	2;	.type	32;	.endef
__ZNSt12_Vector_baseIjSaIjEE12_Vector_implC1Ev:
LFB3123:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$24, %esp
	movl	%ecx, -12(%ebp)
	movl	-12(%ebp), %eax
	movl	%eax, %ecx
	call	__ZNSaIjEC2Ev
	movl	-12(%ebp), %eax
	movl	%eax, %ecx
	call	__ZNSt12_Vector_baseIjSaIjEE17_Vector_impl_dataC2Ev
	nop
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE3123:
	.section	.text$_ZNSaIjED2Ev,"x"
	.linkonce discard
	.align 2
	.globl	__ZNSaIjED2Ev
	.def	__ZNSaIjED2Ev;	.scl	2;	.type	32;	.endef
__ZNSaIjED2Ev:
LFB3125:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$24, %esp
	movl	%ecx, -12(%ebp)
	movl	-12(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN9__gnu_cxx13new_allocatorIjED2Ev
	nop
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE3125:
	.section	.text$_ZNSaIjED1Ev,"x"
	.linkonce discard
	.align 2
	.globl	__ZNSaIjED1Ev
	.def	__ZNSaIjED1Ev;	.scl	2;	.type	32;	.endef
__ZNSaIjED1Ev:
LFB3126:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$24, %esp
	movl	%ecx, -12(%ebp)
	movl	-12(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN9__gnu_cxx13new_allocatorIjED2Ev
	nop
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE3126:
	.section	.text$_ZNSt12_Vector_baseIjSaIjEED2Ev,"x"
	.linkonce discard
	.align 2
	.globl	__ZNSt12_Vector_baseIjSaIjEED2Ev
	.def	__ZNSt12_Vector_baseIjSaIjEED2Ev;	.scl	2;	.type	32;	.endef
__ZNSt12_Vector_baseIjSaIjEED2Ev:
LFB3128:
	.cfi_startproc
	.cfi_personality 0,___gxx_personality_v0
	.cfi_lsda 0,LLSDA3128
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$40, %esp
	movl	%ecx, -12(%ebp)
	movl	-12(%ebp), %eax
	movl	8(%eax), %edx
	movl	-12(%ebp), %eax
	movl	(%eax), %eax
	subl	%eax, %edx
	movl	%edx, %eax
	sarl	$2, %eax
	movl	%eax, %ecx
	movl	-12(%ebp), %eax
	movl	(%eax), %edx
	movl	-12(%ebp), %eax
	movl	%ecx, 4(%esp)
	movl	%edx, (%esp)
	movl	%eax, %ecx
	call	__ZNSt12_Vector_baseIjSaIjEE13_M_deallocateEPjj
	subl	$8, %esp
	movl	-12(%ebp), %eax
	movl	%eax, %ecx
	call	__ZNSt12_Vector_baseIjSaIjEE12_Vector_implD1Ev
	nop
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE3128:
	.section	.gcc_except_table,"w"
LLSDA3128:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 LLSDACSE3128-LLSDACSB3128
LLSDACSB3128:
LLSDACSE3128:
	.section	.text$_ZNSt12_Vector_baseIjSaIjEED2Ev,"x"
	.linkonce discard
	.section	.text$_ZNSt6vectorIjSaIjEED1Ev,"x"
	.linkonce discard
	.align 2
	.globl	__ZNSt6vectorIjSaIjEED1Ev
	.def	__ZNSt6vectorIjSaIjEED1Ev;	.scl	2;	.type	32;	.endef
__ZNSt6vectorIjSaIjEED1Ev:
LFB3132:
	.cfi_startproc
	.cfi_personality 0,___gxx_personality_v0
	.cfi_lsda 0,LLSDA3132
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$40, %esp
	movl	%ecx, -12(%ebp)
	movl	-12(%ebp), %eax
	movl	%eax, %ecx
	call	__ZNSt12_Vector_baseIjSaIjEE19_M_get_Tp_allocatorEv
	movl	-12(%ebp), %edx
	movl	4(%edx), %ecx
	movl	-12(%ebp), %edx
	movl	(%edx), %edx
	movl	%eax, 8(%esp)
	movl	%ecx, 4(%esp)
	movl	%edx, (%esp)
	call	__ZSt8_DestroyIPjjEvT_S1_RSaIT0_E
	movl	-12(%ebp), %eax
	movl	%eax, %ecx
	call	__ZNSt12_Vector_baseIjSaIjEED2Ev
	nop
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE3132:
	.section	.gcc_except_table,"w"
LLSDA3132:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 LLSDACSE3132-LLSDACSB3132
LLSDACSB3132:
LLSDACSE3132:
	.section	.text$_ZNSt6vectorIjSaIjEED1Ev,"x"
	.linkonce discard
	.section	.text$_ZNK6GrafoPIdE7numVertEv,"x"
	.linkonce discard
	.align 2
	.globl	__ZNK6GrafoPIdE7numVertEv
	.def	__ZNK6GrafoPIdE7numVertEv;	.scl	2;	.type	32;	.endef
__ZNK6GrafoPIdE7numVertEv:
LFB3133:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$24, %esp
	movl	%ecx, -12(%ebp)
	movl	-12(%ebp), %eax
	movl	%eax, %ecx
	call	__ZNKSt6vectorIS_IdSaIdEESaIS1_EE4sizeEv
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE3133:
	.section	.text$_Z8DijkstraIdESt6vectorIT_SaIS1_EERK6GrafoPIS1_ENS5_7verticeERS0_IS8_SaIS8_EE,"x"
	.linkonce discard
	.globl	__Z8DijkstraIdESt6vectorIT_SaIS1_EERK6GrafoPIS1_ENS5_7verticeERS0_IS8_SaIS8_EE
	.def	__Z8DijkstraIdESt6vectorIT_SaIS1_EERK6GrafoPIS1_ENS5_7verticeERS0_IS8_SaIS8_EE;	.scl	2;	.type	32;	.endef
__Z8DijkstraIdESt6vectorIT_SaIS1_EERK6GrafoPIS1_ENS5_7verticeERS0_IS8_SaIS8_EE:
LFB3134:
	.cfi_startproc
	.cfi_personality 0,___gxx_personality_v0
	.cfi_lsda 0,LLSDA3134
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%ebx
	subl	$148, %esp
	.cfi_offset 3, -12
	movl	12(%ebp), %eax
	movl	%eax, %ecx
	call	__ZNK6GrafoPIdE7numVertEv
	movl	%eax, -36(%ebp)
	leal	-98(%ebp), %eax
	movl	%eax, %ecx
	call	__ZNSaIbEC1Ev
	movb	$0, -97(%ebp)
	leal	-120(%ebp), %eax
	leal	-98(%ebp), %edx
	movl	%edx, 8(%esp)
	leal	-97(%ebp), %edx
	movl	%edx, 4(%esp)
	movl	-36(%ebp), %edx
	movl	%edx, (%esp)
	movl	%eax, %ecx
LEHB4:
	call	__ZNSt6vectorIbSaIbEEC1EjRKbRKS0_
LEHE4:
	subl	$12, %esp
	leal	-98(%ebp), %eax
	movl	%eax, %ecx
	call	__ZNSaIbED1Ev
	movl	8(%ebp), %ecx
	call	__ZNSt6vectorIdSaIdEEC1Ev
	movl	16(%ebp), %edx
	movl	12(%ebp), %eax
	movl	%edx, (%esp)
	movl	%eax, %ecx
	call	__ZNK6GrafoPIdEixEj
	subl	$4, %esp
	movl	%eax, (%esp)
	movl	8(%ebp), %ecx
LEHB5:
	call	__ZNSt6vectorIdSaIdEEaSERKS1_
LEHE5:
	subl	$4, %esp
	movl	16(%ebp), %eax
	movl	%eax, (%esp)
	movl	8(%ebp), %ecx
	call	__ZNSt6vectorIdSaIdEEixEj
	subl	$4, %esp
	fldz
	fstpl	(%eax)
	leal	-81(%ebp), %eax
	movl	%eax, %ecx
	call	__ZNSaIjEC1Ev
	leal	-96(%ebp), %eax
	leal	-81(%ebp), %edx
	movl	%edx, 8(%esp)
	leal	16(%ebp), %edx
	movl	%edx, 4(%esp)
	movl	-36(%ebp), %edx
	movl	%edx, (%esp)
	movl	%eax, %ecx
LEHB6:
	call	__ZNSt6vectorIjSaIjEEC1EjRKjRKS0_
LEHE6:
	subl	$12, %esp
	movl	20(%ebp), %eax
	leal	-96(%ebp), %edx
	movl	%edx, (%esp)
	movl	%eax, %ecx
	call	__ZNSt6vectorIjSaIjEEaSEOS1_
	subl	$4, %esp
	leal	-96(%ebp), %eax
	movl	%eax, %ecx
	call	__ZNSt6vectorIjSaIjEED1Ev
	leal	-81(%ebp), %eax
	movl	%eax, %ecx
	call	__ZNSaIjED1Ev
	movl	16(%ebp), %edx
	leal	-120(%ebp), %eax
	movl	%edx, (%esp)
	movl	%eax, %ecx
	call	__ZNSt6vectorIbSaIbEEixEj
	subl	$4, %esp
	movl	%eax, -80(%ebp)
	movl	%edx, -76(%ebp)
	leal	-80(%ebp), %eax
	movl	$1, (%esp)
	movl	%eax, %ecx
	call	__ZNSt14_Bit_referenceaSEb
	subl	$4, %esp
	movl	$1, -20(%ebp)
L76:
	movl	-36(%ebp), %eax
	subl	$2, %eax
	cmpl	%eax, -20(%ebp)
	ja	L87
	fldl	LC2
	fstpl	-32(%ebp)
	movl	$0, -12(%ebp)
L72:
	movl	-12(%ebp), %eax
	cmpl	-36(%ebp), %eax
	jnb	L67
	leal	-120(%ebp), %eax
	movl	-12(%ebp), %edx
	movl	%edx, (%esp)
	movl	%eax, %ecx
	call	__ZNSt6vectorIbSaIbEEixEj
	subl	$4, %esp
	movl	%eax, -72(%ebp)
	movl	%edx, -68(%ebp)
	leal	-72(%ebp), %eax
	movl	%eax, %ecx
	call	__ZNKSt14_Bit_referencecvbEv
	xorl	$1, %eax
	testb	%al, %al
	je	L68
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	movl	8(%ebp), %ecx
	call	__ZNSt6vectorIdSaIdEEixEj
	subl	$4, %esp
	fldl	(%eax)
	fldl	-32(%ebp)
	fcompp
	fnstsw	%ax
	sahf
	jb	L68
	movl	$1, %eax
	jmp	L70
L68:
	movl	$0, %eax
L70:
	testb	%al, %al
	je	L71
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	movl	8(%ebp), %ecx
	call	__ZNSt6vectorIdSaIdEEixEj
	subl	$4, %esp
	fldl	(%eax)
	fstpl	-32(%ebp)
	movl	-12(%ebp), %eax
	movl	%eax, -16(%ebp)
L71:
	addl	$1, -12(%ebp)
	jmp	L72
L67:
	leal	-120(%ebp), %eax
	movl	-16(%ebp), %edx
	movl	%edx, (%esp)
	movl	%eax, %ecx
	call	__ZNSt6vectorIbSaIbEEixEj
	subl	$4, %esp
	movl	%eax, -64(%ebp)
	movl	%edx, -60(%ebp)
	leal	-64(%ebp), %eax
	movl	$1, (%esp)
	movl	%eax, %ecx
	call	__ZNSt14_Bit_referenceaSEb
	subl	$4, %esp
	movl	$0, -12(%ebp)
L75:
	movl	-12(%ebp), %eax
	cmpl	-36(%ebp), %eax
	jnb	L73
	leal	-120(%ebp), %eax
	movl	-12(%ebp), %edx
	movl	%edx, (%esp)
	movl	%eax, %ecx
	call	__ZNSt6vectorIbSaIbEEixEj
	subl	$4, %esp
	movl	%eax, -56(%ebp)
	movl	%edx, -52(%ebp)
	leal	-56(%ebp), %eax
	movl	%eax, %ecx
	call	__ZNKSt14_Bit_referencecvbEv
	xorl	$1, %eax
	testb	%al, %al
	je	L74
	movl	12(%ebp), %eax
	movl	-16(%ebp), %edx
	movl	%edx, (%esp)
	movl	%eax, %ecx
	call	__ZNK6GrafoPIdEixEj
	subl	$4, %esp
	movl	%eax, %edx
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	movl	%edx, %ecx
	call	__ZNKSt6vectorIdSaIdEEixEj
	subl	$4, %esp
	fldl	(%eax)
	fstpl	-128(%ebp)
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	movl	8(%ebp), %ecx
	call	__ZNSt6vectorIdSaIdEEixEj
	subl	$4, %esp
	fldl	(%eax)
	fldl	-128(%ebp)
	fstpl	8(%esp)
	fstpl	(%esp)
	call	__Z4sumaIdET_S0_S0_
	fstpl	-48(%ebp)
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	movl	8(%ebp), %ecx
	call	__ZNSt6vectorIdSaIdEEixEj
	subl	$4, %esp
	fldl	(%eax)
	fcompl	-48(%ebp)
	fnstsw	%ax
	sahf
	seta	%al
	testb	%al, %al
	je	L74
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	movl	8(%ebp), %ecx
	call	__ZNSt6vectorIdSaIdEEixEj
	subl	$4, %esp
	fldl	-48(%ebp)
	fstpl	(%eax)
	movl	20(%ebp), %eax
	movl	-12(%ebp), %edx
	movl	%edx, (%esp)
	movl	%eax, %ecx
	call	__ZNSt6vectorIjSaIjEEixEj
	subl	$4, %esp
	movl	-16(%ebp), %edx
	movl	%edx, (%eax)
L74:
	addl	$1, -12(%ebp)
	jmp	L75
L73:
	addl	$1, -20(%ebp)
	jmp	L76
L87:
	nop
	leal	-120(%ebp), %eax
	movl	%eax, %ecx
	call	__ZNSt6vectorIbSaIbEED1Ev
	jmp	L86
L81:
	movl	%eax, %ebx
	leal	-98(%ebp), %eax
	movl	%eax, %ecx
	call	__ZNSaIbED1Ev
	movl	%ebx, %eax
	movl	%eax, (%esp)
LEHB7:
	call	__Unwind_Resume
L83:
	movl	%eax, %ebx
	leal	-81(%ebp), %eax
	movl	%eax, %ecx
	call	__ZNSaIjED1Ev
	jmp	L80
L82:
	movl	%eax, %ebx
L80:
	movl	8(%ebp), %ecx
	call	__ZNSt6vectorIdSaIdEED1Ev
	leal	-120(%ebp), %eax
	movl	%eax, %ecx
	call	__ZNSt6vectorIbSaIbEED1Ev
	movl	%ebx, %eax
	movl	%eax, (%esp)
	call	__Unwind_Resume
LEHE7:
L86:
	movl	8(%ebp), %eax
	movl	-4(%ebp), %ebx
	leave
	.cfi_restore 5
	.cfi_restore 3
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE3134:
	.section	.gcc_except_table,"w"
LLSDA3134:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 LLSDACSE3134-LLSDACSB3134
LLSDACSB3134:
	.uleb128 LEHB4-LFB3134
	.uleb128 LEHE4-LEHB4
	.uleb128 L81-LFB3134
	.uleb128 0
	.uleb128 LEHB5-LFB3134
	.uleb128 LEHE5-LEHB5
	.uleb128 L82-LFB3134
	.uleb128 0
	.uleb128 LEHB6-LFB3134
	.uleb128 LEHE6-LEHB6
	.uleb128 L83-LFB3134
	.uleb128 0
	.uleb128 LEHB7-LFB3134
	.uleb128 LEHE7-LEHB7
	.uleb128 0
	.uleb128 0
LLSDACSE3134:
	.section	.text$_Z8DijkstraIdESt6vectorIT_SaIS1_EERK6GrafoPIS1_ENS5_7verticeERS0_IS8_SaIS8_EE,"x"
	.linkonce discard
	.section	.text$_ZNSt6vectorIdSaIdEEaSEOS1_,"x"
	.linkonce discard
	.align 2
	.globl	__ZNSt6vectorIdSaIdEEaSEOS1_
	.def	__ZNSt6vectorIdSaIdEEaSEOS1_;	.scl	2;	.type	32;	.endef
__ZNSt6vectorIdSaIdEEaSEOS1_:
LFB3144:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%ebx
	subl	$52, %esp
	.cfi_offset 3, -12
	movl	%ecx, -28(%ebp)
	movb	$1, -9(%ebp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	__ZSt4moveIRSt6vectorIdSaIdEEEONSt16remove_referenceIT_E4typeEOS5_
	movl	%eax, %edx
	movl	-28(%ebp), %eax
	movb	%bl, 4(%esp)
	movl	%edx, (%esp)
	movl	%eax, %ecx
	call	__ZNSt6vectorIdSaIdEE14_M_move_assignEOS1_St17integral_constantIbLb1EE
	subl	$8, %esp
	movl	-28(%ebp), %eax
	movl	-4(%ebp), %ebx
	leave
	.cfi_restore 5
	.cfi_restore 3
	.cfi_def_cfa 4, 4
	ret	$4
	.cfi_endproc
LFE3144:
	.section	.text$_ZNSt6vectorIdSaIdEEixEj,"x"
	.linkonce discard
	.align 2
	.globl	__ZNSt6vectorIdSaIdEEixEj
	.def	__ZNSt6vectorIdSaIdEEixEj;	.scl	2;	.type	32;	.endef
__ZNSt6vectorIdSaIdEEixEj:
LFB3145:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$4, %esp
	movl	%ecx, -4(%ebp)
	movl	-4(%ebp), %eax
	movl	(%eax), %eax
	movl	8(%ebp), %edx
	sall	$3, %edx
	addl	%edx, %eax
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret	$4
	.cfi_endproc
LFE3145:
	.section	.text$_Z4sumaIdET_S0_S0_,"x"
	.linkonce discard
	.globl	__Z4sumaIdET_S0_S0_
	.def	__Z4sumaIdET_S0_S0_;	.scl	2;	.type	32;	.endef
__Z4sumaIdET_S0_S0_:
LFB3146:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$32, %esp
	movl	8(%ebp), %eax
	movl	%eax, -24(%ebp)
	movl	12(%ebp), %eax
	movl	%eax, -20(%ebp)
	movl	16(%ebp), %eax
	movl	%eax, -32(%ebp)
	movl	20(%ebp), %eax
	movl	%eax, -28(%ebp)
	fldl	LC2
	fstpl	-8(%ebp)
	fldl	-24(%ebp)
	fldl	LC2
	fucompp
	fnstsw	%ax
	sahf
	jp	L98
	fldl	-24(%ebp)
	fldl	LC2
	fucompp
	fnstsw	%ax
	sahf
	je	L93
L98:
	fldl	-32(%ebp)
	fldl	LC2
	fucompp
	fnstsw	%ax
	sahf
	jp	L95
	fldl	-32(%ebp)
	fldl	LC2
	fucompp
	fnstsw	%ax
	sahf
	jne	L95
L93:
	fldl	LC2
	jmp	L97
L95:
	fldl	-24(%ebp)
	faddl	-32(%ebp)
L97:
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE3146:
	.section	.text$_ZNKSt6vectorIiSaIiEEixEj,"x"
	.linkonce discard
	.align 2
	.globl	__ZNKSt6vectorIiSaIiEEixEj
	.def	__ZNKSt6vectorIiSaIiEEixEj;	.scl	2;	.type	32;	.endef
__ZNKSt6vectorIiSaIiEEixEj:
LFB3147:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$4, %esp
	movl	%ecx, -4(%ebp)
	movl	-4(%ebp), %eax
	movl	(%eax), %eax
	movl	8(%ebp), %edx
	sall	$2, %edx
	addl	%edx, %eax
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret	$4
	.cfi_endproc
LFE3147:
	.section	.text$_ZN9__gnu_cxx13new_allocatorIbEC2Ev,"x"
	.linkonce discard
	.align 2
	.globl	__ZN9__gnu_cxx13new_allocatorIbEC2Ev
	.def	__ZN9__gnu_cxx13new_allocatorIbEC2Ev;	.scl	2;	.type	32;	.endef
__ZN9__gnu_cxx13new_allocatorIbEC2Ev:
LFB3254:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$4, %esp
	movl	%ecx, -4(%ebp)
	nop
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE3254:
	.section	.text$_ZN9__gnu_cxx13new_allocatorIbED2Ev,"x"
	.linkonce discard
	.align 2
	.globl	__ZN9__gnu_cxx13new_allocatorIbED2Ev
	.def	__ZN9__gnu_cxx13new_allocatorIbED2Ev;	.scl	2;	.type	32;	.endef
__ZN9__gnu_cxx13new_allocatorIbED2Ev:
LFB3257:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$4, %esp
	movl	%ecx, -4(%ebp)
	nop
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE3257:
	.section	.text$_ZNSt13_Bvector_baseISaIbEE13_Bvector_implD1Ev,"x"
	.linkonce discard
	.align 2
	.globl	__ZNSt13_Bvector_baseISaIbEE13_Bvector_implD1Ev
	.def	__ZNSt13_Bvector_baseISaIbEE13_Bvector_implD1Ev;	.scl	2;	.type	32;	.endef
__ZNSt13_Bvector_baseISaIbEE13_Bvector_implD1Ev:
LFB3262:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$24, %esp
	movl	%ecx, -12(%ebp)
	movl	-12(%ebp), %eax
	movl	%eax, %ecx
	call	__ZNSaImED2Ev
	nop
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE3262:
	.section	.text$_ZNSt13_Bvector_baseISaIbEEC2ERKS0_,"x"
	.linkonce discard
	.align 2
	.globl	__ZNSt13_Bvector_baseISaIbEEC2ERKS0_
	.def	__ZNSt13_Bvector_baseISaIbEEC2ERKS0_;	.scl	2;	.type	32;	.endef
__ZNSt13_Bvector_baseISaIbEEC2ERKS0_:
LFB3263:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%ebx
	subl	$52, %esp
	.cfi_offset 3, -12
	movl	%ecx, -28(%ebp)
	movl	-28(%ebp), %ebx
	leal	-9(%ebp), %eax
	movl	8(%ebp), %edx
	movl	%edx, (%esp)
	movl	%eax, %ecx
	call	__ZNSaImEC1IbEERKSaIT_E
	subl	$4, %esp
	leal	-9(%ebp), %eax
	movl	%eax, (%esp)
	movl	%ebx, %ecx
	call	__ZNSt13_Bvector_baseISaIbEE13_Bvector_implC1ERKSaImE
	subl	$4, %esp
	leal	-9(%ebp), %eax
	movl	%eax, %ecx
	call	__ZNSaImED1Ev
	nop
	movl	-4(%ebp), %ebx
	leave
	.cfi_restore 5
	.cfi_restore 3
	.cfi_def_cfa 4, 4
	ret	$4
	.cfi_endproc
LFE3263:
	.section	.text$_ZNSt13_Bvector_baseISaIbEED2Ev,"x"
	.linkonce discard
	.align 2
	.globl	__ZNSt13_Bvector_baseISaIbEED2Ev
	.def	__ZNSt13_Bvector_baseISaIbEED2Ev;	.scl	2;	.type	32;	.endef
__ZNSt13_Bvector_baseISaIbEED2Ev:
LFB3266:
	.cfi_startproc
	.cfi_personality 0,___gxx_personality_v0
	.cfi_lsda 0,LLSDA3266
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$24, %esp
	movl	%ecx, -12(%ebp)
	movl	-12(%ebp), %eax
	movl	%eax, %ecx
	call	__ZNSt13_Bvector_baseISaIbEE13_M_deallocateEv
	movl	-12(%ebp), %eax
	movl	%eax, %ecx
	call	__ZNSt13_Bvector_baseISaIbEE13_Bvector_implD1Ev
	nop
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE3266:
	.section	.gcc_except_table,"w"
LLSDA3266:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 LLSDACSE3266-LLSDACSB3266
LLSDACSB3266:
LLSDACSE3266:
	.section	.text$_ZNSt13_Bvector_baseISaIbEED2Ev,"x"
	.linkonce discard
	.section	.text$_ZNSt6vectorIbSaIbEE13_M_initializeEj,"x"
	.linkonce discard
	.align 2
	.globl	__ZNSt6vectorIbSaIbEE13_M_initializeEj
	.def	__ZNSt6vectorIbSaIbEE13_M_initializeEj;	.scl	2;	.type	32;	.endef
__ZNSt6vectorIbSaIbEE13_M_initializeEj:
LFB3268:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%ebx
	subl	$68, %esp
	.cfi_offset 3, -12
	movl	%ecx, -44(%ebp)
	cmpl	$0, 8(%ebp)
	je	L107
	movl	-44(%ebp), %eax
	movl	8(%ebp), %edx
	movl	%edx, (%esp)
	movl	%eax, %ecx
	call	__ZNSt13_Bvector_baseISaIbEE11_M_allocateEj
	subl	$4, %esp
	movl	%eax, -12(%ebp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	__ZNSt13_Bvector_baseISaIbEE8_S_nwordEj
	leal	0(,%eax,4), %edx
	movl	-12(%ebp), %eax
	addl	%eax, %edx
	movl	-44(%ebp), %eax
	movl	%edx, 16(%eax)
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	__ZSt11__addressofImEPT_RS0_
	movl	%eax, %edx
	leal	-28(%ebp), %eax
	movl	$0, 4(%esp)
	movl	%edx, (%esp)
	movl	%eax, %ecx
	call	__ZNSt13_Bit_iteratorC1EPmj
	subl	$8, %esp
	movl	-44(%ebp), %ecx
	movl	-28(%ebp), %eax
	movl	-24(%ebp), %edx
	movl	%eax, (%ecx)
	movl	%edx, 4(%ecx)
	jmp	L108
L107:
	movl	-44(%ebp), %eax
	movl	$0, 16(%eax)
	leal	-20(%ebp), %eax
	movl	$0, 4(%esp)
	movl	$0, (%esp)
	movl	%eax, %ecx
	call	__ZNSt13_Bit_iteratorC1EPmj
	subl	$8, %esp
	movl	-44(%ebp), %ecx
	movl	-20(%ebp), %eax
	movl	-16(%ebp), %edx
	movl	%eax, (%ecx)
	movl	%edx, 4(%ecx)
L108:
	movl	8(%ebp), %edx
	movl	-44(%ebp), %eax
	movl	-44(%ebp), %ebx
	movl	%edx, (%esp)
	movl	%eax, %ecx
	call	__ZNKSt13_Bit_iteratorplEi
	subl	$4, %esp
	movl	%eax, 8(%ebx)
	movl	%edx, 12(%ebx)
	nop
	movl	-4(%ebp), %ebx
	leave
	.cfi_restore 5
	.cfi_restore 3
	.cfi_def_cfa 4, 4
	ret	$4
	.cfi_endproc
LFE3268:
	.section	.text$_ZNSt6vectorIbSaIbEE19_M_initialize_valueEb,"x"
	.linkonce discard
	.align 2
	.globl	__ZNSt6vectorIbSaIbEE19_M_initialize_valueEb
	.def	__ZNSt6vectorIbSaIbEE19_M_initialize_valueEb;	.scl	2;	.type	32;	.endef
__ZNSt6vectorIbSaIbEE19_M_initialize_valueEb:
LFB3269:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$56, %esp
	movl	%ecx, -28(%ebp)
	movl	8(%ebp), %eax
	movb	%al, -32(%ebp)
	movl	-28(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -12(%ebp)
	cmpl	$0, -12(%ebp)
	je	L113
	movl	-28(%ebp), %eax
	movl	%eax, %ecx
	call	__ZNKSt13_Bvector_baseISaIbEE13_Bvector_impl11_M_end_addrEv
	subl	-12(%ebp), %eax
	movl	%eax, %edx
	cmpb	$0, -32(%ebp)
	je	L111
	movl	$-1, %eax
	jmp	L112
L111:
	movl	$0, %eax
L112:
	movl	%edx, 8(%esp)
	movl	%eax, 4(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	_memset
L113:
	nop
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret	$4
	.cfi_endproc
LFE3269:
	.section	.text$_ZNSaIdEC2Ev,"x"
	.linkonce discard
	.align 2
	.globl	__ZNSaIdEC2Ev
	.def	__ZNSaIdEC2Ev;	.scl	2;	.type	32;	.endef
__ZNSaIdEC2Ev:
LFB3309:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$24, %esp
	movl	%ecx, -12(%ebp)
	movl	-12(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN9__gnu_cxx13new_allocatorIdEC2Ev
	nop
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE3309:
	.section	.text$_ZNSt12_Vector_baseIdSaIdEE17_Vector_impl_dataC2Ev,"x"
	.linkonce discard
	.align 2
	.globl	__ZNSt12_Vector_baseIdSaIdEE17_Vector_impl_dataC2Ev
	.def	__ZNSt12_Vector_baseIdSaIdEE17_Vector_impl_dataC2Ev;	.scl	2;	.type	32;	.endef
__ZNSt12_Vector_baseIdSaIdEE17_Vector_impl_dataC2Ev:
LFB3312:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$4, %esp
	movl	%ecx, -4(%ebp)
	movl	-4(%ebp), %eax
	movl	$0, (%eax)
	movl	-4(%ebp), %eax
	movl	$0, 4(%eax)
	movl	-4(%ebp), %eax
	movl	$0, 8(%eax)
	nop
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE3312:
	.section	.text$_ZNSt12_Vector_baseIdSaIdEE17_Vector_impl_dataC1Ev,"x"
	.linkonce discard
	.align 2
	.globl	__ZNSt12_Vector_baseIdSaIdEE17_Vector_impl_dataC1Ev
	.def	__ZNSt12_Vector_baseIdSaIdEE17_Vector_impl_dataC1Ev;	.scl	2;	.type	32;	.endef
__ZNSt12_Vector_baseIdSaIdEE17_Vector_impl_dataC1Ev:
LFB3313:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$4, %esp
	movl	%ecx, -4(%ebp)
	movl	-4(%ebp), %eax
	movl	$0, (%eax)
	movl	-4(%ebp), %eax
	movl	$0, 4(%eax)
	movl	-4(%ebp), %eax
	movl	$0, 8(%eax)
	nop
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE3313:
	.section	.text$_ZN9__gnu_cxx13new_allocatorIdED2Ev,"x"
	.linkonce discard
	.align 2
	.globl	__ZN9__gnu_cxx13new_allocatorIdED2Ev
	.def	__ZN9__gnu_cxx13new_allocatorIdED2Ev;	.scl	2;	.type	32;	.endef
__ZN9__gnu_cxx13new_allocatorIdED2Ev:
LFB3315:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$4, %esp
	movl	%ecx, -4(%ebp)
	nop
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE3315:
	.section	.text$_ZNSt12_Vector_baseIdSaIdEE13_M_deallocateEPdj,"x"
	.linkonce discard
	.align 2
	.globl	__ZNSt12_Vector_baseIdSaIdEE13_M_deallocateEPdj
	.def	__ZNSt12_Vector_baseIdSaIdEE13_M_deallocateEPdj;	.scl	2;	.type	32;	.endef
__ZNSt12_Vector_baseIdSaIdEE13_M_deallocateEPdj:
LFB3317:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$40, %esp
	movl	%ecx, -12(%ebp)
	cmpl	$0, 8(%ebp)
	je	L120
	movl	-12(%ebp), %eax
	movl	12(%ebp), %edx
	movl	%edx, 8(%esp)
	movl	8(%ebp), %edx
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	__ZNSt16allocator_traitsISaIdEE10deallocateERS0_Pdj
L120:
	nop
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret	$8
	.cfi_endproc
LFE3317:
	.section	.text$_ZNSt12_Vector_baseIdSaIdEE19_M_get_Tp_allocatorEv,"x"
	.linkonce discard
	.align 2
	.globl	__ZNSt12_Vector_baseIdSaIdEE19_M_get_Tp_allocatorEv
	.def	__ZNSt12_Vector_baseIdSaIdEE19_M_get_Tp_allocatorEv;	.scl	2;	.type	32;	.endef
__ZNSt12_Vector_baseIdSaIdEE19_M_get_Tp_allocatorEv:
LFB3318:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$4, %esp
	movl	%ecx, -4(%ebp)
	movl	-4(%ebp), %eax
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE3318:
	.section	.text$_ZSt8_DestroyIPddEvT_S1_RSaIT0_E,"x"
	.linkonce discard
	.globl	__ZSt8_DestroyIPddEvT_S1_RSaIT0_E
	.def	__ZSt8_DestroyIPddEvT_S1_RSaIT0_E;	.scl	2;	.type	32;	.endef
__ZSt8_DestroyIPddEvT_S1_RSaIT0_E:
LFB3319:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$24, %esp
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	__ZSt8_DestroyIPdEvT_S1_
	nop
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE3319:
	.section	.text$_ZNSaIjEC2Ev,"x"
	.linkonce discard
	.align 2
	.globl	__ZNSaIjEC2Ev
	.def	__ZNSaIjEC2Ev;	.scl	2;	.type	32;	.endef
__ZNSaIjEC2Ev:
LFB3321:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$24, %esp
	movl	%ecx, -12(%ebp)
	movl	-12(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN9__gnu_cxx13new_allocatorIjEC2Ev
	nop
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE3321:
	.section	.text$_ZNSaIjEC1Ev,"x"
	.linkonce discard
	.align 2
	.globl	__ZNSaIjEC1Ev
	.def	__ZNSaIjEC1Ev;	.scl	2;	.type	32;	.endef
__ZNSaIjEC1Ev:
LFB3322:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$24, %esp
	movl	%ecx, -12(%ebp)
	movl	-12(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN9__gnu_cxx13new_allocatorIjEC2Ev
	nop
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE3322:
	.section	.text$_ZNSt12_Vector_baseIjSaIjEE17_Vector_impl_dataC2Ev,"x"
	.linkonce discard
	.align 2
	.globl	__ZNSt12_Vector_baseIjSaIjEE17_Vector_impl_dataC2Ev
	.def	__ZNSt12_Vector_baseIjSaIjEE17_Vector_impl_dataC2Ev;	.scl	2;	.type	32;	.endef
__ZNSt12_Vector_baseIjSaIjEE17_Vector_impl_dataC2Ev:
LFB3324:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$4, %esp
	movl	%ecx, -4(%ebp)
	movl	-4(%ebp), %eax
	movl	$0, (%eax)
	movl	-4(%ebp), %eax
	movl	$0, 4(%eax)
	movl	-4(%ebp), %eax
	movl	$0, 8(%eax)
	nop
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE3324:
	.section	.text$_ZNSt12_Vector_baseIjSaIjEE17_Vector_impl_dataC1Ev,"x"
	.linkonce discard
	.align 2
	.globl	__ZNSt12_Vector_baseIjSaIjEE17_Vector_impl_dataC1Ev
	.def	__ZNSt12_Vector_baseIjSaIjEE17_Vector_impl_dataC1Ev;	.scl	2;	.type	32;	.endef
__ZNSt12_Vector_baseIjSaIjEE17_Vector_impl_dataC1Ev:
LFB3325:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$4, %esp
	movl	%ecx, -4(%ebp)
	movl	-4(%ebp), %eax
	movl	$0, (%eax)
	movl	-4(%ebp), %eax
	movl	$0, 4(%eax)
	movl	-4(%ebp), %eax
	movl	$0, 8(%eax)
	nop
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE3325:
	.section	.text$_ZN9__gnu_cxx13new_allocatorIjED2Ev,"x"
	.linkonce discard
	.align 2
	.globl	__ZN9__gnu_cxx13new_allocatorIjED2Ev
	.def	__ZN9__gnu_cxx13new_allocatorIjED2Ev;	.scl	2;	.type	32;	.endef
__ZN9__gnu_cxx13new_allocatorIjED2Ev:
LFB3327:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$4, %esp
	movl	%ecx, -4(%ebp)
	nop
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE3327:
	.section	.text$_ZNSt12_Vector_baseIjSaIjEE13_M_deallocateEPjj,"x"
	.linkonce discard
	.align 2
	.globl	__ZNSt12_Vector_baseIjSaIjEE13_M_deallocateEPjj
	.def	__ZNSt12_Vector_baseIjSaIjEE13_M_deallocateEPjj;	.scl	2;	.type	32;	.endef
__ZNSt12_Vector_baseIjSaIjEE13_M_deallocateEPjj:
LFB3329:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$40, %esp
	movl	%ecx, -12(%ebp)
	cmpl	$0, 8(%ebp)
	je	L131
	movl	-12(%ebp), %eax
	movl	12(%ebp), %edx
	movl	%edx, 8(%esp)
	movl	8(%ebp), %edx
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	__ZNSt16allocator_traitsISaIjEE10deallocateERS0_Pjj
L131:
	nop
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret	$8
	.cfi_endproc
LFE3329:
	.section	.text$_ZNSt12_Vector_baseIjSaIjEE19_M_get_Tp_allocatorEv,"x"
	.linkonce discard
	.align 2
	.globl	__ZNSt12_Vector_baseIjSaIjEE19_M_get_Tp_allocatorEv
	.def	__ZNSt12_Vector_baseIjSaIjEE19_M_get_Tp_allocatorEv;	.scl	2;	.type	32;	.endef
__ZNSt12_Vector_baseIjSaIjEE19_M_get_Tp_allocatorEv:
LFB3330:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$4, %esp
	movl	%ecx, -4(%ebp)
	movl	-4(%ebp), %eax
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE3330:
	.section	.text$_ZSt8_DestroyIPjjEvT_S1_RSaIT0_E,"x"
	.linkonce discard
	.globl	__ZSt8_DestroyIPjjEvT_S1_RSaIT0_E
	.def	__ZSt8_DestroyIPjjEvT_S1_RSaIT0_E;	.scl	2;	.type	32;	.endef
__ZSt8_DestroyIPjjEvT_S1_RSaIT0_E:
LFB3331:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$24, %esp
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	__ZSt8_DestroyIPjEvT_S1_
	nop
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE3331:
	.section	.text$_ZNKSt6vectorIS_IdSaIdEESaIS1_EE4sizeEv,"x"
	.linkonce discard
	.align 2
	.globl	__ZNKSt6vectorIS_IdSaIdEESaIS1_EE4sizeEv
	.def	__ZNKSt6vectorIS_IdSaIdEESaIS1_EE4sizeEv;	.scl	2;	.type	32;	.endef
__ZNKSt6vectorIS_IdSaIdEESaIS1_EE4sizeEv:
LFB3332:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$4, %esp
	movl	%ecx, -4(%ebp)
	movl	-4(%ebp), %eax
	movl	4(%eax), %edx
	movl	-4(%ebp), %eax
	movl	(%eax), %eax
	subl	%eax, %edx
	movl	%edx, %eax
	sarl	$2, %eax
	imull	$-1431655765, %eax, %eax
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE3332:
	.section	.text$_ZNK6GrafoPIdEixEj,"x"
	.linkonce discard
	.align 2
	.globl	__ZNK6GrafoPIdEixEj
	.def	__ZNK6GrafoPIdEixEj;	.scl	2;	.type	32;	.endef
__ZNK6GrafoPIdEixEj:
LFB3333:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$40, %esp
	movl	%ecx, -12(%ebp)
	movl	-12(%ebp), %eax
	movl	8(%ebp), %edx
	movl	%edx, (%esp)
	movl	%eax, %ecx
	call	__ZNKSt6vectorIS_IdSaIdEESaIS1_EEixEj
	subl	$4, %esp
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret	$4
	.cfi_endproc
LFE3333:
	.section	.text$_ZN9__gnu_cxx14__alloc_traitsISaIdEdE27_S_propagate_on_copy_assignEv,"x"
	.linkonce discard
	.globl	__ZN9__gnu_cxx14__alloc_traitsISaIdEdE27_S_propagate_on_copy_assignEv
	.def	__ZN9__gnu_cxx14__alloc_traitsISaIdEdE27_S_propagate_on_copy_assignEv;	.scl	2;	.type	32;	.endef
__ZN9__gnu_cxx14__alloc_traitsISaIdEdE27_S_propagate_on_copy_assignEv:
LFB3335:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	movl	$0, %eax
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE3335:
	.section	.text$_ZNSt6vectorIdSaIdEEaSERKS1_,"x"
	.linkonce discard
	.align 2
	.globl	__ZNSt6vectorIdSaIdEEaSERKS1_
	.def	__ZNSt6vectorIdSaIdEEaSERKS1_;	.scl	2;	.type	32;	.endef
__ZNSt6vectorIdSaIdEEaSERKS1_:
LFB3334:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%edi
	pushl	%esi
	pushl	%ebx
	subl	$60, %esp
	.cfi_offset 7, -12
	.cfi_offset 6, -16
	.cfi_offset 3, -20
	movl	%ecx, -44(%ebp)
	movl	8(%ebp), %eax
	cmpl	-44(%ebp), %eax
	je	L142
	call	__ZN9__gnu_cxx14__alloc_traitsISaIdEdE27_S_propagate_on_copy_assignEv
	testb	%al, %al
	je	L143
	call	__ZN9__gnu_cxx14__alloc_traitsISaIdEdE15_S_always_equalEv
	xorl	$1, %eax
	testb	%al, %al
	je	L144
	movl	8(%ebp), %eax
	movl	%eax, %ecx
	call	__ZNKSt12_Vector_baseIdSaIdEE19_M_get_Tp_allocatorEv
	movl	%eax, %ebx
	movl	-44(%ebp), %eax
	movl	%eax, %ecx
	call	__ZNSt12_Vector_baseIdSaIdEE19_M_get_Tp_allocatorEv
	movl	%ebx, 4(%esp)
	movl	%eax, (%esp)
	call	__ZStneRKSaIdES1_
	testb	%al, %al
	je	L144
	movl	$1, %eax
	jmp	L145
L144:
	movl	$0, %eax
L145:
	testb	%al, %al
	je	L146
	movl	-44(%ebp), %eax
	movl	%eax, %ecx
	call	__ZNSt6vectorIdSaIdEE5clearEv
	movl	-44(%ebp), %eax
	movl	-44(%ebp), %edx
	movl	8(%edx), %ecx
	movl	-44(%ebp), %edx
	movl	(%edx), %edx
	subl	%edx, %ecx
	movl	%ecx, %edx
	sarl	$3, %edx
	movl	%edx, %ecx
	movl	-44(%ebp), %edx
	movl	(%edx), %edx
	movl	%ecx, 4(%esp)
	movl	%edx, (%esp)
	movl	%eax, %ecx
	call	__ZNSt12_Vector_baseIdSaIdEE13_M_deallocateEPdj
	subl	$8, %esp
	movl	-44(%ebp), %eax
	movl	$0, (%eax)
	movl	-44(%ebp), %eax
	movl	$0, 4(%eax)
	movl	-44(%ebp), %eax
	movl	$0, 8(%eax)
L146:
	movl	8(%ebp), %eax
	movl	%eax, %ecx
	call	__ZNKSt12_Vector_baseIdSaIdEE19_M_get_Tp_allocatorEv
	movl	%eax, %ebx
	movl	-44(%ebp), %eax
	movl	%eax, %ecx
	call	__ZNSt12_Vector_baseIdSaIdEE19_M_get_Tp_allocatorEv
	movl	%ebx, 4(%esp)
	movl	%eax, (%esp)
	call	__ZSt15__alloc_on_copyISaIdEEvRT_RKS1_
L143:
	movl	8(%ebp), %ecx
	call	__ZNKSt6vectorIdSaIdEE4sizeEv
	movl	%eax, -28(%ebp)
	movl	-44(%ebp), %eax
	movl	%eax, %ecx
	call	__ZNKSt6vectorIdSaIdEE8capacityEv
	cmpl	%eax, -28(%ebp)
	seta	%al
	testb	%al, %al
	je	L147
	movl	8(%ebp), %ecx
	call	__ZNKSt6vectorIdSaIdEE3endEv
	movl	%eax, %ebx
	movl	8(%ebp), %ecx
	call	__ZNKSt6vectorIdSaIdEE5beginEv
	movl	%eax, %edx
	movl	-44(%ebp), %eax
	movl	%ebx, 8(%esp)
	movl	%edx, 4(%esp)
	movl	-28(%ebp), %edx
	movl	%edx, (%esp)
	movl	%eax, %ecx
	call	__ZNSt6vectorIdSaIdEE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKdS1_EEEEPdjT_S9_
	subl	$12, %esp
	movl	%eax, -32(%ebp)
	movl	-44(%ebp), %eax
	movl	%eax, %ecx
	call	__ZNSt12_Vector_baseIdSaIdEE19_M_get_Tp_allocatorEv
	movl	-44(%ebp), %edx
	movl	4(%edx), %ecx
	movl	-44(%ebp), %edx
	movl	(%edx), %edx
	movl	%eax, 8(%esp)
	movl	%ecx, 4(%esp)
	movl	%edx, (%esp)
	call	__ZSt8_DestroyIPddEvT_S1_RSaIT0_E
	movl	-44(%ebp), %eax
	movl	-44(%ebp), %edx
	movl	8(%edx), %ecx
	movl	-44(%ebp), %edx
	movl	(%edx), %edx
	subl	%edx, %ecx
	movl	%ecx, %edx
	sarl	$3, %edx
	movl	%edx, %ecx
	movl	-44(%ebp), %edx
	movl	(%edx), %edx
	movl	%ecx, 4(%esp)
	movl	%edx, (%esp)
	movl	%eax, %ecx
	call	__ZNSt12_Vector_baseIdSaIdEE13_M_deallocateEPdj
	subl	$8, %esp
	movl	-44(%ebp), %eax
	movl	-32(%ebp), %edx
	movl	%edx, (%eax)
	movl	-44(%ebp), %eax
	movl	(%eax), %eax
	movl	-28(%ebp), %edx
	sall	$3, %edx
	addl	%eax, %edx
	movl	-44(%ebp), %eax
	movl	%edx, 8(%eax)
	jmp	L148
L147:
	movl	-44(%ebp), %eax
	movl	%eax, %ecx
	call	__ZNKSt6vectorIdSaIdEE4sizeEv
	cmpl	%eax, -28(%ebp)
	setbe	%al
	testb	%al, %al
	je	L149
	movl	-44(%ebp), %eax
	movl	%eax, %ecx
	call	__ZNSt12_Vector_baseIdSaIdEE19_M_get_Tp_allocatorEv
	movl	%eax, %esi
	movl	-44(%ebp), %eax
	movl	%eax, %ecx
	call	__ZNSt6vectorIdSaIdEE3endEv
	movl	%eax, %ebx
	movl	-44(%ebp), %eax
	movl	%eax, %ecx
	call	__ZNSt6vectorIdSaIdEE5beginEv
	movl	%eax, -48(%ebp)
	movl	8(%ebp), %ecx
	call	__ZNKSt6vectorIdSaIdEE3endEv
	movl	%eax, %edi
	movl	8(%ebp), %ecx
	call	__ZNKSt6vectorIdSaIdEE5beginEv
	movl	-48(%ebp), %ecx
	movl	%ecx, 8(%esp)
	movl	%edi, 4(%esp)
	movl	%eax, (%esp)
	call	__ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEEENS1_IPdS6_EEET0_T_SB_SA_
	movl	%esi, 8(%esp)
	movl	%ebx, 4(%esp)
	movl	%eax, (%esp)
	call	__ZSt8_DestroyIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEdEvT_S7_RSaIT0_E
	jmp	L148
L149:
	movl	-44(%ebp), %eax
	movl	(%eax), %ebx
	movl	8(%ebp), %eax
	movl	(%eax), %esi
	movl	-44(%ebp), %eax
	movl	%eax, %ecx
	call	__ZNKSt6vectorIdSaIdEE4sizeEv
	sall	$3, %eax
	leal	(%esi,%eax), %edx
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	%ebx, 8(%esp)
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	__ZSt4copyIPdS0_ET0_T_S2_S1_
	movl	-44(%ebp), %eax
	movl	%eax, %ecx
	call	__ZNSt12_Vector_baseIdSaIdEE19_M_get_Tp_allocatorEv
	movl	%eax, %ebx
	movl	-44(%ebp), %eax
	movl	4(%eax), %edi
	movl	8(%ebp), %eax
	movl	4(%eax), %esi
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -48(%ebp)
	movl	-44(%ebp), %eax
	movl	%eax, %ecx
	call	__ZNKSt6vectorIdSaIdEE4sizeEv
	sall	$3, %eax
	addl	-48(%ebp), %eax
	movl	%ebx, 12(%esp)
	movl	%edi, 8(%esp)
	movl	%esi, 4(%esp)
	movl	%eax, (%esp)
	call	__ZSt22__uninitialized_copy_aIPdS0_dET0_T_S2_S1_RSaIT1_E
L148:
	movl	-44(%ebp), %eax
	movl	(%eax), %eax
	movl	-28(%ebp), %edx
	sall	$3, %edx
	addl	%eax, %edx
	movl	-44(%ebp), %eax
	movl	%edx, 4(%eax)
L142:
	movl	-44(%ebp), %eax
	leal	-12(%ebp), %esp
	popl	%ebx
	.cfi_restore 3
	popl	%esi
	.cfi_restore 6
	popl	%edi
	.cfi_restore 7
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret	$4
	.cfi_endproc
LFE3334:
	.section	.text$_ZNSt6vectorIjSaIjEEC1EjRKjRKS0_,"x"
	.linkonce discard
	.align 2
	.globl	__ZNSt6vectorIjSaIjEEC1EjRKjRKS0_
	.def	__ZNSt6vectorIjSaIjEEC1EjRKjRKS0_;	.scl	2;	.type	32;	.endef
__ZNSt6vectorIjSaIjEEC1EjRKjRKS0_:
LFB3338:
	.cfi_startproc
	.cfi_personality 0,___gxx_personality_v0
	.cfi_lsda 0,LLSDA3338
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%ebx
	subl	$36, %esp
	.cfi_offset 3, -12
	movl	%ecx, -12(%ebp)
	movl	-12(%ebp), %ebx
	movl	16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
LEHB8:
	call	__ZNSt6vectorIjSaIjEE17_S_check_init_lenEjRKS0_
	movl	16(%ebp), %edx
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	movl	%ebx, %ecx
	call	__ZNSt12_Vector_baseIjSaIjEEC2EjRKS0_
LEHE8:
	subl	$8, %esp
	movl	-12(%ebp), %eax
	movl	12(%ebp), %edx
	movl	%edx, 4(%esp)
	movl	8(%ebp), %edx
	movl	%edx, (%esp)
	movl	%eax, %ecx
LEHB9:
	call	__ZNSt6vectorIjSaIjEE18_M_fill_initializeEjRKj
LEHE9:
	subl	$8, %esp
	jmp	L154
L153:
	movl	%eax, %ebx
	movl	-12(%ebp), %eax
	movl	%eax, %ecx
	call	__ZNSt12_Vector_baseIjSaIjEED2Ev
	movl	%ebx, %eax
	movl	%eax, (%esp)
LEHB10:
	call	__Unwind_Resume
LEHE10:
L154:
	movl	-4(%ebp), %ebx
	leave
	.cfi_restore 5
	.cfi_restore 3
	.cfi_def_cfa 4, 4
	ret	$12
	.cfi_endproc
LFE3338:
	.section	.gcc_except_table,"w"
LLSDA3338:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 LLSDACSE3338-LLSDACSB3338
LLSDACSB3338:
	.uleb128 LEHB8-LFB3338
	.uleb128 LEHE8-LEHB8
	.uleb128 0
	.uleb128 0
	.uleb128 LEHB9-LFB3338
	.uleb128 LEHE9-LEHB9
	.uleb128 L153-LFB3338
	.uleb128 0
	.uleb128 LEHB10-LFB3338
	.uleb128 LEHE10-LEHB10
	.uleb128 0
	.uleb128 0
LLSDACSE3338:
	.section	.text$_ZNSt6vectorIjSaIjEEC1EjRKjRKS0_,"x"
	.linkonce discard
	.section	.text$_ZNSt6vectorIjSaIjEEaSEOS1_,"x"
	.linkonce discard
	.align 2
	.globl	__ZNSt6vectorIjSaIjEEaSEOS1_
	.def	__ZNSt6vectorIjSaIjEEaSEOS1_;	.scl	2;	.type	32;	.endef
__ZNSt6vectorIjSaIjEEaSEOS1_:
LFB3339:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%ebx
	subl	$52, %esp
	.cfi_offset 3, -12
	movl	%ecx, -28(%ebp)
	movb	$1, -9(%ebp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	__ZSt4moveIRSt6vectorIjSaIjEEEONSt16remove_referenceIT_E4typeEOS5_
	movl	%eax, %edx
	movl	-28(%ebp), %eax
	movb	%bl, 4(%esp)
	movl	%edx, (%esp)
	movl	%eax, %ecx
	call	__ZNSt6vectorIjSaIjEE14_M_move_assignEOS1_St17integral_constantIbLb1EE
	subl	$8, %esp
	movl	-28(%ebp), %eax
	movl	-4(%ebp), %ebx
	leave
	.cfi_restore 5
	.cfi_restore 3
	.cfi_def_cfa 4, 4
	ret	$4
	.cfi_endproc
LFE3339:
	.section	.text$_ZNSt6vectorIbSaIbEEixEj,"x"
	.linkonce discard
	.align 2
	.globl	__ZNSt6vectorIbSaIbEEixEj
	.def	__ZNSt6vectorIbSaIbEEixEj;	.scl	2;	.type	32;	.endef
__ZNSt6vectorIbSaIbEEixEj:
LFB3340:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$56, %esp
	movl	%ecx, -28(%ebp)
	movl	8(%ebp), %eax
	andl	$31, %eax
	movl	%eax, %ecx
	movl	-28(%ebp), %eax
	movl	(%eax), %eax
	movl	8(%ebp), %edx
	shrl	$5, %edx
	sall	$2, %edx
	addl	%eax, %edx
	leal	-16(%ebp), %eax
	movl	%ecx, 4(%esp)
	movl	%edx, (%esp)
	movl	%eax, %ecx
	call	__ZNSt13_Bit_iteratorC1EPmj
	subl	$8, %esp
	leal	-16(%ebp), %eax
	movl	%eax, %ecx
	call	__ZNKSt13_Bit_iteratordeEv
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret	$4
	.cfi_endproc
LFE3340:
	.section	.text$_ZNKSt6vectorIdSaIdEEixEj,"x"
	.linkonce discard
	.align 2
	.globl	__ZNKSt6vectorIdSaIdEEixEj
	.def	__ZNKSt6vectorIdSaIdEEixEj;	.scl	2;	.type	32;	.endef
__ZNKSt6vectorIdSaIdEEixEj:
LFB3341:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$4, %esp
	movl	%ecx, -4(%ebp)
	movl	-4(%ebp), %eax
	movl	(%eax), %eax
	movl	8(%ebp), %edx
	sall	$3, %edx
	addl	%edx, %eax
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret	$4
	.cfi_endproc
LFE3341:
	.section	.text$_ZNSt6vectorIjSaIjEEixEj,"x"
	.linkonce discard
	.align 2
	.globl	__ZNSt6vectorIjSaIjEEixEj
	.def	__ZNSt6vectorIjSaIjEEixEj;	.scl	2;	.type	32;	.endef
__ZNSt6vectorIjSaIjEEixEj:
LFB3342:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$4, %esp
	movl	%ecx, -4(%ebp)
	movl	-4(%ebp), %eax
	movl	(%eax), %eax
	movl	8(%ebp), %edx
	sall	$2, %edx
	addl	%edx, %eax
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret	$4
	.cfi_endproc
LFE3342:
	.section	.text$_ZSt4moveIRSt6vectorIdSaIdEEEONSt16remove_referenceIT_E4typeEOS5_,"x"
	.linkonce discard
	.globl	__ZSt4moveIRSt6vectorIdSaIdEEEONSt16remove_referenceIT_E4typeEOS5_
	.def	__ZSt4moveIRSt6vectorIdSaIdEEEONSt16remove_referenceIT_E4typeEOS5_;	.scl	2;	.type	32;	.endef
__ZSt4moveIRSt6vectorIdSaIdEEEONSt16remove_referenceIT_E4typeEOS5_:
LFB3346:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	movl	8(%ebp), %eax
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE3346:
	.section	.text$_ZNSt6vectorIdSaIdEE14_M_move_assignEOS1_St17integral_constantIbLb1EE,"x"
	.linkonce discard
	.align 2
	.globl	__ZNSt6vectorIdSaIdEE14_M_move_assignEOS1_St17integral_constantIbLb1EE
	.def	__ZNSt6vectorIdSaIdEE14_M_move_assignEOS1_St17integral_constantIbLb1EE;	.scl	2;	.type	32;	.endef
__ZNSt6vectorIdSaIdEE14_M_move_assignEOS1_St17integral_constantIbLb1EE:
LFB3347:
	.cfi_startproc
	.cfi_personality 0,___gxx_personality_v0
	.cfi_lsda 0,LLSDA3347
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%ebx
	subl	$52, %esp
	.cfi_offset 3, -12
	movl	%ecx, -28(%ebp)
	movl	-28(%ebp), %edx
	leal	-9(%ebp), %eax
	movl	%edx, (%esp)
	movl	%eax, %ecx
	call	__ZNKSt12_Vector_baseIdSaIdEE13get_allocatorEv
	subl	$4, %esp
	leal	-24(%ebp), %eax
	leal	-9(%ebp), %edx
	movl	%edx, (%esp)
	movl	%eax, %ecx
	call	__ZNSt6vectorIdSaIdEEC1ERKS0_
	subl	$4, %esp
	leal	-9(%ebp), %eax
	movl	%eax, %ecx
	call	__ZNSaIdED1Ev
	movl	-28(%ebp), %eax
	movl	8(%ebp), %edx
	movl	%edx, (%esp)
	movl	%eax, %ecx
	call	__ZNSt12_Vector_baseIdSaIdEE17_Vector_impl_data12_M_swap_dataERS2_
	subl	$4, %esp
	movl	8(%ebp), %edx
	leal	-24(%ebp), %eax
	movl	%edx, (%esp)
	movl	%eax, %ecx
	call	__ZNSt12_Vector_baseIdSaIdEE17_Vector_impl_data12_M_swap_dataERS2_
	subl	$4, %esp
	movl	8(%ebp), %eax
	movl	%eax, %ecx
	call	__ZNSt12_Vector_baseIdSaIdEE19_M_get_Tp_allocatorEv
	movl	%eax, %ebx
	movl	-28(%ebp), %eax
	movl	%eax, %ecx
	call	__ZNSt12_Vector_baseIdSaIdEE19_M_get_Tp_allocatorEv
	movl	%ebx, 4(%esp)
	movl	%eax, (%esp)
	call	__ZSt15__alloc_on_moveISaIdEEvRT_S2_
	leal	-24(%ebp), %eax
	movl	%eax, %ecx
	call	__ZNSt6vectorIdSaIdEED1Ev
	nop
	movl	-4(%ebp), %ebx
	leave
	.cfi_restore 5
	.cfi_restore 3
	.cfi_def_cfa 4, 4
	ret	$8
	.cfi_endproc
LFE3347:
	.section	.gcc_except_table,"w"
LLSDA3347:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 LLSDACSE3347-LLSDACSB3347
LLSDACSB3347:
LLSDACSE3347:
	.section	.text$_ZNSt6vectorIdSaIdEE14_M_move_assignEOS1_St17integral_constantIbLb1EE,"x"
	.linkonce discard
	.section	.text$_ZNSaImEC1IbEERKSaIT_E,"x"
	.linkonce discard
	.align 2
	.globl	__ZNSaImEC1IbEERKSaIT_E
	.def	__ZNSaImEC1IbEERKSaIT_E;	.scl	2;	.type	32;	.endef
__ZNSaImEC1IbEERKSaIT_E:
LFB3383:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$24, %esp
	movl	%ecx, -12(%ebp)
	movl	-12(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN9__gnu_cxx13new_allocatorImEC2Ev
	nop
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret	$4
	.cfi_endproc
LFE3383:
	.section	.text$_ZNSaImED2Ev,"x"
	.linkonce discard
	.align 2
	.globl	__ZNSaImED2Ev
	.def	__ZNSaImED2Ev;	.scl	2;	.type	32;	.endef
__ZNSaImED2Ev:
LFB3385:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$24, %esp
	movl	%ecx, -12(%ebp)
	movl	-12(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN9__gnu_cxx13new_allocatorImED2Ev
	nop
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE3385:
	.section	.text$_ZNSaImED1Ev,"x"
	.linkonce discard
	.align 2
	.globl	__ZNSaImED1Ev
	.def	__ZNSaImED1Ev;	.scl	2;	.type	32;	.endef
__ZNSaImED1Ev:
LFB3386:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$24, %esp
	movl	%ecx, -12(%ebp)
	movl	-12(%ebp), %eax
	movl	%eax, %ecx
	call	__ZN9__gnu_cxx13new_allocatorImED2Ev
	nop
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE3386:
	.section	.text$_ZNSt13_Bvector_baseISaIbEE13_Bvector_implC1ERKSaImE,"x"
	.linkonce discard
	.align 2
	.globl	__ZNSt13_Bvector_baseISaIbEE13_Bvector_implC1ERKSaImE
	.def	__ZNSt13_Bvector_baseISaIbEE13_Bvector_implC1ERKSaImE;	.scl	2;	.type	32;	.endef
__ZNSt13_Bvector_baseISaIbEE13_Bvector_implC1ERKSaImE:
LFB3389:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$40, %esp
	movl	%ecx, -12(%ebp)
	movl	-12(%ebp), %eax
	movl	8(%ebp), %edx
	movl	%edx, (%esp)
	movl	%eax, %ecx
	call	__ZNSaImEC2ERKS_
	subl	$4, %esp
	movl	-12(%ebp), %eax
	movl	%eax, %ecx
	call	__ZNSt13_Bvector_baseISaIbEE18_Bvector_impl_dataC2Ev
	nop
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret	$4
	.cfi_endproc
LFE3389:
	.section	.text$_ZNSt13_Bvector_baseISaIbEE13_M_deallocateEv,"x"
	.linkonce discard
	.align 2
	.globl	__ZNSt13_Bvector_baseISaIbEE13_M_deallocateEv
	.def	__ZNSt13_Bvector_baseISaIbEE13_M_deallocateEv;	.scl	2;	.type	32;	.endef
__ZNSt13_Bvector_baseISaIbEE13_M_deallocateEv:
LFB3390:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$56, %esp
	movl	%ecx, -28(%ebp)
	movl	-28(%ebp), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	L172
	movl	-28(%ebp), %eax
	movl	%eax, %ecx
	call	__ZNKSt13_Bvector_baseISaIbEE13_Bvector_impl11_M_end_addrEv
	movl	-28(%ebp), %edx
	movl	(%edx), %edx
	subl	%edx, %eax
	sarl	$2, %eax
	movl	%eax, -12(%ebp)
	movl	-28(%ebp), %eax
	movl	16(%eax), %eax
	movl	-12(%ebp), %edx
	sall	$2, %edx
	negl	%edx
	leal	(%eax,%edx), %ecx
	movl	-28(%ebp), %eax
	movl	-12(%ebp), %edx
	movl	%edx, 8(%esp)
	movl	%ecx, 4(%esp)
	movl	%eax, (%esp)
	call	__ZNSt16allocator_traitsISaImEE10deallocateERS0_Pmj
	movl	-28(%ebp), %eax
	movl	%eax, %ecx
	call	__ZNSt13_Bvector_baseISaIbEE18_Bvector_impl_data8_M_resetEv
L172:
	nop
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE3390:
	.section	.text$_ZNSt13_Bvector_baseISaIbEE11_M_allocateEj,"x"
	.linkonce discard
	.align 2
	.globl	__ZNSt13_Bvector_baseISaIbEE11_M_allocateEj
	.def	__ZNSt13_Bvector_baseISaIbEE11_M_allocateEj;	.scl	2;	.type	32;	.endef
__ZNSt13_Bvector_baseISaIbEE11_M_allocateEj:
LFB3391:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$40, %esp
	movl	%ecx, -12(%ebp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	__ZNSt13_Bvector_baseISaIbEE8_S_nwordEj
	movl	-12(%ebp), %edx
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	__ZNSt16allocator_traitsISaImEE8allocateERS0_j
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret	$4
	.cfi_endproc
LFE3391:
	.section	.text$_ZNSt13_Bvector_baseISaIbEE8_S_nwordEj,"x"
	.linkonce discard
	.globl	__ZNSt13_Bvector_baseISaIbEE8_S_nwordEj
	.def	__ZNSt13_Bvector_baseISaIbEE8_S_nwordEj;	.scl	2;	.type	32;	.endef
__ZNSt13_Bvector_baseISaIbEE8_S_nwordEj:
LFB3392:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	movl	8(%ebp), %eax
	addl	$31, %eax
	shrl	$5, %eax
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE3392:
	.section	.text$_ZSt11__addressofImEPT_RS0_,"x"
	.linkonce discard
	.globl	__ZSt11__addressofImEPT_RS0_
	.def	__ZSt11__addressofImEPT_RS0_;	.scl	2;	.type	32;	.endef
__ZSt11__addressofImEPT_RS0_:
LFB3393:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	movl	8(%ebp), %eax
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE3393:
	.section	.text$_ZNKSt13_Bvector_baseISaIbEE13_Bvector_impl11_M_end_addrEv,"x"
	.linkonce discard
	.align 2
	.globl	__ZNKSt13_Bvector_baseISaIbEE13_Bvector_impl11_M_end_addrEv
	.def	__ZNKSt13_Bvector_baseISaIbEE13_Bvector_impl11_M_end_addrEv;	.scl	2;	.type	32;	.endef
__ZNKSt13_Bvector_baseISaIbEE13_Bvector_impl11_M_end_addrEv:
LFB3394:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$40, %esp
	movl	%ecx, -12(%ebp)
	movl	-12(%ebp), %eax
	movl	16(%eax), %eax
	testl	%eax, %eax
	je	L180
	movl	-12(%ebp), %eax
	movl	16(%eax), %eax
	subl	$4, %eax
	movl	%eax, (%esp)
	call	__ZSt11__addressofImEPT_RS0_
	addl	$4, %eax
	jmp	L181
L180:
	movl	$0, %eax
L181:
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE3394:
	.section	.text$_ZN9__gnu_cxx13new_allocatorIdEC2Ev,"x"
	.linkonce discard
	.align 2
	.globl	__ZN9__gnu_cxx13new_allocatorIdEC2Ev
	.def	__ZN9__gnu_cxx13new_allocatorIdEC2Ev;	.scl	2;	.type	32;	.endef
__ZN9__gnu_cxx13new_allocatorIdEC2Ev:
LFB3418:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$4, %esp
	movl	%ecx, -4(%ebp)
	nop
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE3418:
	.section	.text$_ZNSt16allocator_traitsISaIdEE10deallocateERS0_Pdj,"x"
	.linkonce discard
	.globl	__ZNSt16allocator_traitsISaIdEE10deallocateERS0_Pdj
	.def	__ZNSt16allocator_traitsISaIdEE10deallocateERS0_Pdj;	.scl	2;	.type	32;	.endef
__ZNSt16allocator_traitsISaIdEE10deallocateERS0_Pdj:
LFB3420:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$24, %esp
	movl	16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	movl	8(%ebp), %ecx
	call	__ZN9__gnu_cxx13new_allocatorIdE10deallocateEPdj
	subl	$8, %esp
	nop
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE3420:
	.section	.text$_ZSt8_DestroyIPdEvT_S1_,"x"
	.linkonce discard
	.globl	__ZSt8_DestroyIPdEvT_S1_
	.def	__ZSt8_DestroyIPdEvT_S1_;	.scl	2;	.type	32;	.endef
__ZSt8_DestroyIPdEvT_S1_:
LFB3421:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$24, %esp
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	__ZNSt12_Destroy_auxILb1EE9__destroyIPdEEvT_S3_
	nop
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE3421:
	.section	.text$_ZN9__gnu_cxx13new_allocatorIjEC2Ev,"x"
	.linkonce discard
	.align 2
	.globl	__ZN9__gnu_cxx13new_allocatorIjEC2Ev
	.def	__ZN9__gnu_cxx13new_allocatorIjEC2Ev;	.scl	2;	.type	32;	.endef
__ZN9__gnu_cxx13new_allocatorIjEC2Ev:
LFB3423:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$4, %esp
	movl	%ecx, -4(%ebp)
	nop
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE3423:
	.section	.text$_ZNSt16allocator_traitsISaIjEE10deallocateERS0_Pjj,"x"
	.linkonce discard
	.globl	__ZNSt16allocator_traitsISaIjEE10deallocateERS0_Pjj
	.def	__ZNSt16allocator_traitsISaIjEE10deallocateERS0_Pjj;	.scl	2;	.type	32;	.endef
__ZNSt16allocator_traitsISaIjEE10deallocateERS0_Pjj:
LFB3425:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$24, %esp
	movl	16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	movl	8(%ebp), %ecx
	call	__ZN9__gnu_cxx13new_allocatorIjE10deallocateEPjj
	subl	$8, %esp
	nop
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE3425:
	.section	.text$_ZSt8_DestroyIPjEvT_S1_,"x"
	.linkonce discard
	.globl	__ZSt8_DestroyIPjEvT_S1_
	.def	__ZSt8_DestroyIPjEvT_S1_;	.scl	2;	.type	32;	.endef
__ZSt8_DestroyIPjEvT_S1_:
LFB3426:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$24, %esp
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	__ZNSt12_Destroy_auxILb1EE9__destroyIPjEEvT_S3_
	nop
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE3426:
	.section	.text$_ZNKSt6vectorIS_IdSaIdEESaIS1_EEixEj,"x"
	.linkonce discard
	.align 2
	.globl	__ZNKSt6vectorIS_IdSaIdEESaIS1_EEixEj
	.def	__ZNKSt6vectorIS_IdSaIdEESaIS1_EEixEj;	.scl	2;	.type	32;	.endef
__ZNKSt6vectorIS_IdSaIdEESaIS1_EEixEj:
LFB3427:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$4, %esp
	movl	%ecx, -4(%ebp)
	movl	-4(%ebp), %eax
	movl	(%eax), %ecx
	movl	8(%ebp), %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$2, %eax
	addl	%ecx, %eax
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret	$4
	.cfi_endproc
LFE3427:
	.section	.text$_ZNKSt12_Vector_baseIdSaIdEE19_M_get_Tp_allocatorEv,"x"
	.linkonce discard
	.align 2
	.globl	__ZNKSt12_Vector_baseIdSaIdEE19_M_get_Tp_allocatorEv
	.def	__ZNKSt12_Vector_baseIdSaIdEE19_M_get_Tp_allocatorEv;	.scl	2;	.type	32;	.endef
__ZNKSt12_Vector_baseIdSaIdEE19_M_get_Tp_allocatorEv:
LFB3428:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$4, %esp
	movl	%ecx, -4(%ebp)
	movl	-4(%ebp), %eax
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE3428:
	.section	.text$_ZStneRKSaIdES1_,"x"
	.linkonce discard
	.globl	__ZStneRKSaIdES1_
	.def	__ZStneRKSaIdES1_;	.scl	2;	.type	32;	.endef
__ZStneRKSaIdES1_:
LFB3429:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	movl	$0, %eax
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE3429:
	.section	.text$_ZNSt6vectorIdSaIdEE5clearEv,"x"
	.linkonce discard
	.align 2
	.globl	__ZNSt6vectorIdSaIdEE5clearEv
	.def	__ZNSt6vectorIdSaIdEE5clearEv;	.scl	2;	.type	32;	.endef
__ZNSt6vectorIdSaIdEE5clearEv:
LFB3430:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$40, %esp
	movl	%ecx, -12(%ebp)
	movl	-12(%ebp), %eax
	movl	(%eax), %edx
	movl	-12(%ebp), %eax
	movl	%edx, (%esp)
	movl	%eax, %ecx
	call	__ZNSt6vectorIdSaIdEE15_M_erase_at_endEPd
	subl	$4, %esp
	nop
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE3430:
	.section	.text$_ZSt15__alloc_on_copyISaIdEEvRT_RKS1_,"x"
	.linkonce discard
	.globl	__ZSt15__alloc_on_copyISaIdEEvRT_RKS1_
	.def	__ZSt15__alloc_on_copyISaIdEEvRT_RKS1_;	.scl	2;	.type	32;	.endef
__ZSt15__alloc_on_copyISaIdEEvRT_RKS1_:
LFB3431:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$40, %esp
	movb	%al, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	__ZSt18__do_alloc_on_copyISaIdEEvRT_RKS1_St17integral_constantIbLb0EE
	nop
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE3431:
	.section	.text$_ZNKSt6vectorIdSaIdEE4sizeEv,"x"
	.linkonce discard
	.align 2
	.globl	__ZNKSt6vectorIdSaIdEE4sizeEv
	.def	__ZNKSt6vectorIdSaIdEE4sizeEv;	.scl	2;	.type	32;	.endef
__ZNKSt6vectorIdSaIdEE4sizeEv:
LFB3432:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$4, %esp
	movl	%ecx, -4(%ebp)
	movl	-4(%ebp), %eax
	movl	4(%eax), %edx
	movl	-4(%ebp), %eax
	movl	(%eax), %eax
	subl	%eax, %edx
	movl	%edx, %eax
	sarl	$3, %eax
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE3432:
	.section	.text$_ZNKSt6vectorIdSaIdEE8capacityEv,"x"
	.linkonce discard
	.align 2
	.globl	__ZNKSt6vectorIdSaIdEE8capacityEv
	.def	__ZNKSt6vectorIdSaIdEE8capacityEv;	.scl	2;	.type	32;	.endef
__ZNKSt6vectorIdSaIdEE8capacityEv:
LFB3433:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$4, %esp
	movl	%ecx, -4(%ebp)
	movl	-4(%ebp), %eax
	movl	8(%eax), %edx
	movl	-4(%ebp), %eax
	movl	(%eax), %eax
	subl	%eax, %edx
	movl	%edx, %eax
	sarl	$3, %eax
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE3433:
	.section	.text$_ZNKSt6vectorIdSaIdEE5beginEv,"x"
	.linkonce discard
	.align 2
	.globl	__ZNKSt6vectorIdSaIdEE5beginEv
	.def	__ZNKSt6vectorIdSaIdEE5beginEv;	.scl	2;	.type	32;	.endef
__ZNKSt6vectorIdSaIdEE5beginEv:
LFB3434:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$56, %esp
	movl	%ecx, -28(%ebp)
	movl	-28(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -12(%ebp)
	leal	-16(%ebp), %eax
	leal	-12(%ebp), %edx
	movl	%edx, (%esp)
	movl	%eax, %ecx
	call	__ZN9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEEC1ERKS2_
	subl	$4, %esp
	movl	-16(%ebp), %eax
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE3434:
	.section	.text$_ZNKSt6vectorIdSaIdEE3endEv,"x"
	.linkonce discard
	.align 2
	.globl	__ZNKSt6vectorIdSaIdEE3endEv
	.def	__ZNKSt6vectorIdSaIdEE3endEv;	.scl	2;	.type	32;	.endef
__ZNKSt6vectorIdSaIdEE3endEv:
LFB3435:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$56, %esp
	movl	%ecx, -28(%ebp)
	movl	-28(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -12(%ebp)
	leal	-16(%ebp), %eax
	leal	-12(%ebp), %edx
	movl	%edx, (%esp)
	movl	%eax, %ecx
	call	__ZN9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEEC1ERKS2_
	subl	$4, %esp
	movl	-16(%ebp), %eax
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE3435:
	.section	.text$_ZNSt6vectorIdSaIdEE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKdS1_EEEEPdjT_S9_,"x"
	.linkonce discard
	.align 2
	.globl	__ZNSt6vectorIdSaIdEE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKdS1_EEEEPdjT_S9_
	.def	__ZNSt6vectorIdSaIdEE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKdS1_EEEEPdjT_S9_;	.scl	2;	.type	32;	.endef
__ZNSt6vectorIdSaIdEE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKdS1_EEEEPdjT_S9_:
LFB3436:
	.cfi_startproc
	.cfi_personality 0,___gxx_personality_v0
	.cfi_lsda 0,LLSDA3436
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%ebx
	subl	$52, %esp
	.cfi_offset 3, -12
	movl	%ecx, -28(%ebp)
	movl	-28(%ebp), %eax
	movl	8(%ebp), %edx
	movl	%edx, (%esp)
	movl	%eax, %ecx
LEHB11:
	call	__ZNSt12_Vector_baseIdSaIdEE11_M_allocateEj
LEHE11:
	subl	$4, %esp
	movl	%eax, -12(%ebp)
	movl	-28(%ebp), %eax
	movl	%eax, %ecx
	call	__ZNSt12_Vector_baseIdSaIdEE19_M_get_Tp_allocatorEv
	movl	%eax, 12(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
LEHB12:
	call	__ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEEEPddET0_T_SA_S9_RSaIT1_E
LEHE12:
	movl	-12(%ebp), %eax
	jmp	L210
L208:
	movl	%eax, (%esp)
	call	___cxa_begin_catch
	movl	-28(%ebp), %eax
	movl	8(%ebp), %edx
	movl	%edx, 4(%esp)
	movl	-12(%ebp), %edx
	movl	%edx, (%esp)
	movl	%eax, %ecx
LEHB13:
	call	__ZNSt12_Vector_baseIdSaIdEE13_M_deallocateEPdj
	subl	$8, %esp
	call	___cxa_rethrow
LEHE13:
L209:
	movl	%eax, %ebx
	call	___cxa_end_catch
	movl	%ebx, %eax
	movl	%eax, (%esp)
LEHB14:
	call	__Unwind_Resume
LEHE14:
L210:
	movl	-4(%ebp), %ebx
	leave
	.cfi_restore 5
	.cfi_restore 3
	.cfi_def_cfa 4, 4
	ret	$12
	.cfi_endproc
LFE3436:
	.section	.gcc_except_table,"w"
	.align 4
LLSDA3436:
	.byte	0xff
	.byte	0
	.uleb128 LLSDATT3436-LLSDATTD3436
LLSDATTD3436:
	.byte	0x1
	.uleb128 LLSDACSE3436-LLSDACSB3436
LLSDACSB3436:
	.uleb128 LEHB11-LFB3436
	.uleb128 LEHE11-LEHB11
	.uleb128 0
	.uleb128 0
	.uleb128 LEHB12-LFB3436
	.uleb128 LEHE12-LEHB12
	.uleb128 L208-LFB3436
	.uleb128 0x1
	.uleb128 LEHB13-LFB3436
	.uleb128 LEHE13-LEHB13
	.uleb128 L209-LFB3436
	.uleb128 0
	.uleb128 LEHB14-LFB3436
	.uleb128 LEHE14-LEHB14
	.uleb128 0
	.uleb128 0
LLSDACSE3436:
	.byte	0x1
	.byte	0
	.align 4
	.long	0
LLSDATT3436:
	.section	.text$_ZNSt6vectorIdSaIdEE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKdS1_EEEEPdjT_S9_,"x"
	.linkonce discard
	.section	.text$_ZNSt6vectorIdSaIdEE5beginEv,"x"
	.linkonce discard
	.align 2
	.globl	__ZNSt6vectorIdSaIdEE5beginEv
	.def	__ZNSt6vectorIdSaIdEE5beginEv;	.scl	2;	.type	32;	.endef
__ZNSt6vectorIdSaIdEE5beginEv:
LFB3437:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$56, %esp
	movl	%ecx, -28(%ebp)
	movl	-28(%ebp), %edx
	leal	-12(%ebp), %eax
	movl	%edx, (%esp)
	movl	%eax, %ecx
	call	__ZN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEC1ERKS1_
	subl	$4, %esp
	movl	-12(%ebp), %eax
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE3437:
	.section	.text$_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEEENS1_IPdS6_EEET0_T_SB_SA_,"x"
	.linkonce discard
	.globl	__ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEEENS1_IPdS6_EEET0_T_SB_SA_
	.def	__ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEEENS1_IPdS6_EEET0_T_SB_SA_;	.scl	2;	.type	32;	.endef
__ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEEENS1_IPdS6_EEET0_T_SB_SA_:
LFB3438:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%ebx
	subl	$20, %esp
	.cfi_offset 3, -12
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	__ZSt12__miter_baseIN9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEEEET_S8_
	movl	%eax, %ebx
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	__ZSt12__miter_baseIN9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEEEET_S8_
	movl	16(%ebp), %edx
	movl	%edx, 8(%esp)
	movl	%ebx, 4(%esp)
	movl	%eax, (%esp)
	call	__ZSt14__copy_move_a2ILb0EN9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEEENS1_IPdS6_EEET1_T0_SB_SA_
	addl	$20, %esp
	popl	%ebx
	.cfi_restore 3
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE3438:
	.section	.text$_ZNSt6vectorIdSaIdEE3endEv,"x"
	.linkonce discard
	.align 2
	.globl	__ZNSt6vectorIdSaIdEE3endEv
	.def	__ZNSt6vectorIdSaIdEE3endEv;	.scl	2;	.type	32;	.endef
__ZNSt6vectorIdSaIdEE3endEv:
LFB3439:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$56, %esp
	movl	%ecx, -28(%ebp)
	movl	-28(%ebp), %eax
	leal	4(%eax), %edx
	leal	-12(%ebp), %eax
	movl	%edx, (%esp)
	movl	%eax, %ecx
	call	__ZN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEC1ERKS1_
	subl	$4, %esp
	movl	-12(%ebp), %eax
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE3439:
	.section	.text$_ZSt8_DestroyIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEdEvT_S7_RSaIT0_E,"x"
	.linkonce discard
	.globl	__ZSt8_DestroyIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEdEvT_S7_RSaIT0_E
	.def	__ZSt8_DestroyIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEdEvT_S7_RSaIT0_E;	.scl	2;	.type	32;	.endef
__ZSt8_DestroyIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEdEvT_S7_RSaIT0_E:
LFB3440:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$24, %esp
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	__ZSt8_DestroyIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEvT_S7_
	nop
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE3440:
	.section	.text$_ZSt4copyIPdS0_ET0_T_S2_S1_,"x"
	.linkonce discard
	.globl	__ZSt4copyIPdS0_ET0_T_S2_S1_
	.def	__ZSt4copyIPdS0_ET0_T_S2_S1_;	.scl	2;	.type	32;	.endef
__ZSt4copyIPdS0_ET0_T_S2_S1_:
LFB3441:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%ebx
	subl	$20, %esp
	.cfi_offset 3, -12
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	__ZSt12__miter_baseIPdET_S1_
	movl	%eax, %ebx
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	__ZSt12__miter_baseIPdET_S1_
	movl	16(%ebp), %edx
	movl	%edx, 8(%esp)
	movl	%ebx, 4(%esp)
	movl	%eax, (%esp)
	call	__ZSt14__copy_move_a2ILb0EPdS0_ET1_T0_S2_S1_
	addl	$20, %esp
	popl	%ebx
	.cfi_restore 3
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE3441:
	.section	.text$_ZSt22__uninitialized_copy_aIPdS0_dET0_T_S2_S1_RSaIT1_E,"x"
	.linkonce discard
	.globl	__ZSt22__uninitialized_copy_aIPdS0_dET0_T_S2_S1_RSaIT1_E
	.def	__ZSt22__uninitialized_copy_aIPdS0_dET0_T_S2_S1_RSaIT1_E;	.scl	2;	.type	32;	.endef
__ZSt22__uninitialized_copy_aIPdS0_dET0_T_S2_S1_RSaIT1_E:
LFB3442:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$24, %esp
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	__ZSt18uninitialized_copyIPdS0_ET0_T_S2_S1_
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE3442:
	.section .rdata,"dr"
	.align 4
LC3:
	.ascii "cannot create std::vector larger than max_size()\0"
	.section	.text$_ZNSt6vectorIjSaIjEE17_S_check_init_lenEjRKS0_,"x"
	.linkonce discard
	.globl	__ZNSt6vectorIjSaIjEE17_S_check_init_lenEjRKS0_
	.def	__ZNSt6vectorIjSaIjEE17_S_check_init_lenEjRKS0_;	.scl	2;	.type	32;	.endef
__ZNSt6vectorIjSaIjEE17_S_check_init_lenEjRKS0_:
LFB3443:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%ebx
	subl	$36, %esp
	.cfi_offset 3, -12
	leal	-9(%ebp), %eax
	movl	12(%ebp), %edx
	movl	%edx, (%esp)
	movl	%eax, %ecx
	call	__ZNSaIjEC1ERKS_
	subl	$4, %esp
	leal	-9(%ebp), %eax
	movl	%eax, (%esp)
	call	__ZNSt6vectorIjSaIjEE11_S_max_sizeERKS0_
	cmpl	%eax, 8(%ebp)
	seta	%bl
	leal	-9(%ebp), %eax
	movl	%eax, %ecx
	call	__ZNSaIjED1Ev
	testb	%bl, %bl
	je	L223
	movl	$LC3, (%esp)
	call	__ZSt20__throw_length_errorPKc
L223:
	movl	8(%ebp), %eax
	movl	-4(%ebp), %ebx
	leave
	.cfi_restore 5
	.cfi_restore 3
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE3443:
	.section	.text$_ZNSt12_Vector_baseIjSaIjEEC2EjRKS0_,"x"
	.linkonce discard
	.align 2
	.globl	__ZNSt12_Vector_baseIjSaIjEEC2EjRKS0_
	.def	__ZNSt12_Vector_baseIjSaIjEEC2EjRKS0_;	.scl	2;	.type	32;	.endef
__ZNSt12_Vector_baseIjSaIjEEC2EjRKS0_:
LFB3445:
	.cfi_startproc
	.cfi_personality 0,___gxx_personality_v0
	.cfi_lsda 0,LLSDA3445
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%ebx
	subl	$36, %esp
	.cfi_offset 3, -12
	movl	%ecx, -12(%ebp)
	movl	-12(%ebp), %eax
	movl	12(%ebp), %edx
	movl	%edx, (%esp)
	movl	%eax, %ecx
	call	__ZNSt12_Vector_baseIjSaIjEE12_Vector_implC1ERKS0_
	subl	$4, %esp
	movl	-12(%ebp), %eax
	movl	8(%ebp), %edx
	movl	%edx, (%esp)
	movl	%eax, %ecx
LEHB15:
	call	__ZNSt12_Vector_baseIjSaIjEE17_M_create_storageEj
LEHE15:
	subl	$4, %esp
	jmp	L228
L227:
	movl	%eax, %ebx
	movl	-12(%ebp), %eax
	movl	%eax, %ecx
	call	__ZNSt12_Vector_baseIjSaIjEE12_Vector_implD1Ev
	movl	%ebx, %eax
	movl	%eax, (%esp)
LEHB16:
	call	__Unwind_Resume
LEHE16:
L228:
	movl	-4(%ebp), %ebx
	leave
	.cfi_restore 5
	.cfi_restore 3
	.cfi_def_cfa 4, 4
	ret	$8
	.cfi_endproc
LFE3445:
	.section	.gcc_except_table,"w"
LLSDA3445:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 LLSDACSE3445-LLSDACSB3445
LLSDACSB3445:
	.uleb128 LEHB15-LFB3445
	.uleb128 LEHE15-LEHB15
	.uleb128 L227-LFB3445
	.uleb128 0
	.uleb128 LEHB16-LFB3445
	.uleb128 LEHE16-LEHB16
	.uleb128 0
	.uleb128 0
LLSDACSE3445:
	.section	.text$_ZNSt12_Vector_baseIjSaIjEEC2EjRKS0_,"x"
	.linkonce discard
	.section	.text$_ZNSt6vectorIjSaIjEE18_M_fill_initializeEjRKj,"x"
	.linkonce discard
	.align 2
	.globl	__ZNSt6vectorIjSaIjEE18_M_fill_initializeEjRKj
	.def	__ZNSt6vectorIjSaIjEE18_M_fill_initializeEjRKj;	.scl	2;	.type	32;	.endef
__ZNSt6vectorIjSaIjEE18_M_fill_initializeEjRKj:
LFB3447:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$40, %esp
	movl	%ecx, -12(%ebp)
	movl	-12(%ebp), %eax
	movl	%eax, %ecx
	call	__ZNSt12_Vector_baseIjSaIjEE19_M_get_Tp_allocatorEv
	movl	-12(%ebp), %edx
	movl	(%edx), %edx
	movl	%eax, 12(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	__ZSt24__uninitialized_fill_n_aIPjjjjET_S1_T0_RKT1_RSaIT2_E
	movl	-12(%ebp), %edx
	movl	%eax, 4(%edx)
	nop
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret	$8
	.cfi_endproc
LFE3447:
	.section	.text$_ZSt4moveIRSt6vectorIjSaIjEEEONSt16remove_referenceIT_E4typeEOS5_,"x"
	.linkonce discard
	.globl	__ZSt4moveIRSt6vectorIjSaIjEEEONSt16remove_referenceIT_E4typeEOS5_
	.def	__ZSt4moveIRSt6vectorIjSaIjEEEONSt16remove_referenceIT_E4typeEOS5_;	.scl	2;	.type	32;	.endef
__ZSt4moveIRSt6vectorIjSaIjEEEONSt16remove_referenceIT_E4typeEOS5_:
LFB3448:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	movl	8(%ebp), %eax
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE3448:
	.section	.text$_ZNSt6vectorIjSaIjEE14_M_move_assignEOS1_St17integral_constantIbLb1EE,"x"
	.linkonce discard
	.align 2
	.globl	__ZNSt6vectorIjSaIjEE14_M_move_assignEOS1_St17integral_constantIbLb1EE
	.def	__ZNSt6vectorIjSaIjEE14_M_move_assignEOS1_St17integral_constantIbLb1EE;	.scl	2;	.type	32;	.endef
__ZNSt6vectorIjSaIjEE14_M_move_assignEOS1_St17integral_constantIbLb1EE:
LFB3449:
	.cfi_startproc
	.cfi_personality 0,___gxx_personality_v0
	.cfi_lsda 0,LLSDA3449
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%ebx
	subl	$52, %esp
	.cfi_offset 3, -12
	movl	%ecx, -28(%ebp)
	movl	-28(%ebp), %edx
	leal	-9(%ebp), %eax
	movl	%edx, (%esp)
	movl	%eax, %ecx
	call	__ZNKSt12_Vector_baseIjSaIjEE13get_allocatorEv
	subl	$4, %esp
	leal	-24(%ebp), %eax
	leal	-9(%ebp), %edx
	movl	%edx, (%esp)
	movl	%eax, %ecx
	call	__ZNSt6vectorIjSaIjEEC1ERKS0_
	subl	$4, %esp
	leal	-9(%ebp), %eax
	movl	%eax, %ecx
	call	__ZNSaIjED1Ev
	movl	-28(%ebp), %eax
	movl	8(%ebp), %edx
	movl	%edx, (%esp)
	movl	%eax, %ecx
	call	__ZNSt12_Vector_baseIjSaIjEE17_Vector_impl_data12_M_swap_dataERS2_
	subl	$4, %esp
	movl	8(%ebp), %edx
	leal	-24(%ebp), %eax
	movl	%edx, (%esp)
	movl	%eax, %ecx
	call	__ZNSt12_Vector_baseIjSaIjEE17_Vector_impl_data12_M_swap_dataERS2_
	subl	$4, %esp
	movl	8(%ebp), %eax
	movl	%eax, %ecx
	call	__ZNSt12_Vector_baseIjSaIjEE19_M_get_Tp_allocatorEv
	movl	%eax, %ebx
	movl	-28(%ebp), %eax
	movl	%eax, %ecx
	call	__ZNSt12_Vector_baseIjSaIjEE19_M_get_Tp_allocatorEv
	movl	%ebx, 4(%esp)
	movl	%eax, (%esp)
	call	__ZSt15__alloc_on_moveISaIjEEvRT_S2_
	leal	-24(%ebp), %eax
	movl	%eax, %ecx
	call	__ZNSt6vectorIjSaIjEED1Ev
	nop
	movl	-4(%ebp), %ebx
	leave
	.cfi_restore 5
	.cfi_restore 3
	.cfi_def_cfa 4, 4
	ret	$8
	.cfi_endproc
LFE3449:
	.section	.gcc_except_table,"w"
LLSDA3449:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 LLSDACSE3449-LLSDACSB3449
LLSDACSB3449:
LLSDACSE3449:
	.section	.text$_ZNSt6vectorIjSaIjEE14_M_move_assignEOS1_St17integral_constantIbLb1EE,"x"
	.linkonce discard
	.section	.text$_ZNSaIdEC2ERKS_,"x"
	.linkonce discard
	.align 2
	.globl	__ZNSaIdEC2ERKS_
	.def	__ZNSaIdEC2ERKS_;	.scl	2;	.type	32;	.endef
__ZNSaIdEC2ERKS_:
LFB3452:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$40, %esp
	movl	%ecx, -12(%ebp)
	movl	-12(%ebp), %eax
	movl	8(%ebp), %edx
	movl	%edx, (%esp)
	movl	%eax, %ecx
	call	__ZN9__gnu_cxx13new_allocatorIdEC2ERKS1_
	subl	$4, %esp
	nop
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret	$4
	.cfi_endproc
LFE3452:
	.section	.text$_ZNSaIdEC1ERKS_,"x"
	.linkonce discard
	.align 2
	.globl	__ZNSaIdEC1ERKS_
	.def	__ZNSaIdEC1ERKS_;	.scl	2;	.type	32;	.endef
__ZNSaIdEC1ERKS_:
LFB3453:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$40, %esp
	movl	%ecx, -12(%ebp)
	movl	-12(%ebp), %eax
	movl	8(%ebp), %edx
	movl	%edx, (%esp)
	movl	%eax, %ecx
	call	__ZN9__gnu_cxx13new_allocatorIdEC2ERKS1_
	subl	$4, %esp
	nop
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret	$4
	.cfi_endproc
LFE3453:
	.section	.text$_ZNKSt12_Vector_baseIdSaIdEE13get_allocatorEv,"x"
	.linkonce discard
	.align 2
	.globl	__ZNKSt12_Vector_baseIdSaIdEE13get_allocatorEv
	.def	__ZNKSt12_Vector_baseIdSaIdEE13get_allocatorEv;	.scl	2;	.type	32;	.endef
__ZNKSt12_Vector_baseIdSaIdEE13get_allocatorEv:
LFB3457:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$40, %esp
	movl	%ecx, -12(%ebp)
	movl	8(%ebp), %ecx
	call	__ZNKSt12_Vector_baseIdSaIdEE19_M_get_Tp_allocatorEv
	movl	%eax, %edx
	movl	-12(%ebp), %eax
	movl	%edx, (%esp)
	movl	%eax, %ecx
	call	__ZNSaIdEC1ERKS_
	subl	$4, %esp
	movl	-12(%ebp), %eax
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret	$4
	.cfi_endproc
LFE3457:
	.section	.text$_ZNSt6vectorIdSaIdEEC1ERKS0_,"x"
	.linkonce discard
	.align 2
	.globl	__ZNSt6vectorIdSaIdEEC1ERKS0_
	.def	__ZNSt6vectorIdSaIdEEC1ERKS0_;	.scl	2;	.type	32;	.endef
__ZNSt6vectorIdSaIdEEC1ERKS0_:
LFB3460:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$40, %esp
	movl	%ecx, -12(%ebp)
	movl	-12(%ebp), %eax
	movl	8(%ebp), %edx
	movl	%edx, (%esp)
	movl	%eax, %ecx
	call	__ZNSt12_Vector_baseIdSaIdEEC2ERKS0_
	subl	$4, %esp
	nop
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret	$4
	.cfi_endproc
LFE3460:
	.section	.text$_ZNSt12_Vector_baseIdSaIdEE17_Vector_impl_data12_M_swap_dataERS2_,"x"
	.linkonce discard
	.align 2
	.globl	__ZNSt12_Vector_baseIdSaIdEE17_Vector_impl_data12_M_swap_dataERS2_
	.def	__ZNSt12_Vector_baseIdSaIdEE17_Vector_impl_data12_M_swap_dataERS2_;	.scl	2;	.type	32;	.endef
__ZNSt12_Vector_baseIdSaIdEE17_Vector_impl_data12_M_swap_dataERS2_:
LFB3461:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$56, %esp
	movl	%ecx, -28(%ebp)
	leal	-20(%ebp), %eax
	movl	%eax, %ecx
	call	__ZNSt12_Vector_baseIdSaIdEE17_Vector_impl_dataC1Ev
	leal	-20(%ebp), %eax
	movl	-28(%ebp), %edx
	movl	%edx, (%esp)
	movl	%eax, %ecx
	call	__ZNSt12_Vector_baseIdSaIdEE17_Vector_impl_data12_M_copy_dataERKS2_
	subl	$4, %esp
	movl	-28(%ebp), %eax
	movl	8(%ebp), %edx
	movl	%edx, (%esp)
	movl	%eax, %ecx
	call	__ZNSt12_Vector_baseIdSaIdEE17_Vector_impl_data12_M_copy_dataERKS2_
	subl	$4, %esp
	leal	-20(%ebp), %eax
	movl	%eax, (%esp)
	movl	8(%ebp), %ecx
	call	__ZNSt12_Vector_baseIdSaIdEE17_Vector_impl_data12_M_copy_dataERKS2_
	subl	$4, %esp
	nop
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret	$4
	.cfi_endproc
LFE3461:
	.section	.text$_ZSt15__alloc_on_moveISaIdEEvRT_S2_,"x"
	.linkonce discard
	.globl	__ZSt15__alloc_on_moveISaIdEEvRT_S2_
	.def	__ZSt15__alloc_on_moveISaIdEEvRT_S2_;	.scl	2;	.type	32;	.endef
__ZSt15__alloc_on_moveISaIdEEvRT_S2_:
LFB3462:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$40, %esp
	movb	%al, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	__ZSt18__do_alloc_on_moveISaIdEEvRT_S2_St17integral_constantIbLb1EE
	nop
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE3462:
	.section	.text$_ZN9__gnu_cxx13new_allocatorImEC2Ev,"x"
	.linkonce discard
	.align 2
	.globl	__ZN9__gnu_cxx13new_allocatorImEC2Ev
	.def	__ZN9__gnu_cxx13new_allocatorImEC2Ev;	.scl	2;	.type	32;	.endef
__ZN9__gnu_cxx13new_allocatorImEC2Ev:
LFB3497:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$4, %esp
	movl	%ecx, -4(%ebp)
	nop
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE3497:
	.section	.text$_ZN9__gnu_cxx13new_allocatorImED2Ev,"x"
	.linkonce discard
	.align 2
	.globl	__ZN9__gnu_cxx13new_allocatorImED2Ev
	.def	__ZN9__gnu_cxx13new_allocatorImED2Ev;	.scl	2;	.type	32;	.endef
__ZN9__gnu_cxx13new_allocatorImED2Ev:
LFB3500:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$4, %esp
	movl	%ecx, -4(%ebp)
	nop
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE3500:
	.section	.text$_ZNSaImEC2ERKS_,"x"
	.linkonce discard
	.align 2
	.globl	__ZNSaImEC2ERKS_
	.def	__ZNSaImEC2ERKS_;	.scl	2;	.type	32;	.endef
__ZNSaImEC2ERKS_:
LFB3503:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$40, %esp
	movl	%ecx, -12(%ebp)
	movl	-12(%ebp), %eax
	movl	8(%ebp), %edx
	movl	%edx, (%esp)
	movl	%eax, %ecx
	call	__ZN9__gnu_cxx13new_allocatorImEC2ERKS1_
	subl	$4, %esp
	nop
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret	$4
	.cfi_endproc
LFE3503:
	.section	.text$_ZNSt13_Bvector_baseISaIbEE18_Bvector_impl_dataC2Ev,"x"
	.linkonce discard
	.align 2
	.globl	__ZNSt13_Bvector_baseISaIbEE18_Bvector_impl_dataC2Ev
	.def	__ZNSt13_Bvector_baseISaIbEE18_Bvector_impl_dataC2Ev;	.scl	2;	.type	32;	.endef
__ZNSt13_Bvector_baseISaIbEE18_Bvector_impl_dataC2Ev:
LFB3506:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$24, %esp
	movl	%ecx, -12(%ebp)
	movl	-12(%ebp), %eax
	movl	%eax, %ecx
	call	__ZNSt13_Bit_iteratorC1Ev
	movl	-12(%ebp), %eax
	addl	$8, %eax
	movl	%eax, %ecx
	call	__ZNSt13_Bit_iteratorC1Ev
	movl	-12(%ebp), %eax
	movl	$0, 16(%eax)
	nop
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE3506:
	.section	.text$_ZNSt16allocator_traitsISaImEE10deallocateERS0_Pmj,"x"
	.linkonce discard
	.globl	__ZNSt16allocator_traitsISaImEE10deallocateERS0_Pmj
	.def	__ZNSt16allocator_traitsISaImEE10deallocateERS0_Pmj;	.scl	2;	.type	32;	.endef
__ZNSt16allocator_traitsISaImEE10deallocateERS0_Pmj:
LFB3508:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$24, %esp
	movl	16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	movl	8(%ebp), %ecx
	call	__ZN9__gnu_cxx13new_allocatorImE10deallocateEPmj
	subl	$8, %esp
	nop
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE3508:
	.section	.text$_ZNSt13_Bvector_baseISaIbEE18_Bvector_impl_data8_M_resetEv,"x"
	.linkonce discard
	.align 2
	.globl	__ZNSt13_Bvector_baseISaIbEE18_Bvector_impl_data8_M_resetEv
	.def	__ZNSt13_Bvector_baseISaIbEE18_Bvector_impl_data8_M_resetEv;	.scl	2;	.type	32;	.endef
__ZNSt13_Bvector_baseISaIbEE18_Bvector_impl_data8_M_resetEv:
LFB3509:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$40, %esp
	movl	%ecx, -28(%ebp)
	leal	-16(%ebp), %eax
	movl	%eax, %ecx
	call	__ZNSt13_Bit_iteratorC1Ev
	movl	-28(%ebp), %ecx
	movl	-16(%ebp), %eax
	movl	-12(%ebp), %edx
	movl	%eax, 8(%ecx)
	movl	%edx, 12(%ecx)
	movl	-28(%ebp), %eax
	addl	$8, %eax
	movl	-28(%ebp), %ecx
	movl	4(%eax), %edx
	movl	(%eax), %eax
	movl	%eax, (%ecx)
	movl	%edx, 4(%ecx)
	movl	-28(%ebp), %eax
	movl	$0, 16(%eax)
	nop
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE3509:
	.section	.text$_ZNSt16allocator_traitsISaImEE8allocateERS0_j,"x"
	.linkonce discard
	.globl	__ZNSt16allocator_traitsISaImEE8allocateERS0_j
	.def	__ZNSt16allocator_traitsISaImEE8allocateERS0_j;	.scl	2;	.type	32;	.endef
__ZNSt16allocator_traitsISaImEE8allocateERS0_j:
LFB3510:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$24, %esp
	movl	$0, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	movl	8(%ebp), %ecx
	call	__ZN9__gnu_cxx13new_allocatorImE8allocateEjPKv
	subl	$8, %esp
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE3510:
	.section	.text$_ZSt3minIjERKT_S2_S2_,"x"
	.linkonce discard
	.globl	__ZSt3minIjERKT_S2_S2_
	.def	__ZSt3minIjERKT_S2_S2_;	.scl	2;	.type	32;	.endef
__ZSt3minIjERKT_S2_S2_:
LFB3512:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	movl	12(%ebp), %eax
	movl	(%eax), %edx
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	cmpl	%eax, %edx
	jnb	L249
	movl	12(%ebp), %eax
	jmp	L250
L249:
	movl	8(%ebp), %eax
L250:
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE3512:
	.section	.text$_ZN9__gnu_cxx13new_allocatorIdE10deallocateEPdj,"x"
	.linkonce discard
	.align 2
	.globl	__ZN9__gnu_cxx13new_allocatorIdE10deallocateEPdj
	.def	__ZN9__gnu_cxx13new_allocatorIdE10deallocateEPdj;	.scl	2;	.type	32;	.endef
__ZN9__gnu_cxx13new_allocatorIdE10deallocateEPdj:
LFB3534:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$40, %esp
	movl	%ecx, -12(%ebp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	__ZdlPv
	nop
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret	$8
	.cfi_endproc
LFE3534:
	.section	.text$_ZNSt12_Destroy_auxILb1EE9__destroyIPdEEvT_S3_,"x"
	.linkonce discard
	.globl	__ZNSt12_Destroy_auxILb1EE9__destroyIPdEEvT_S3_
	.def	__ZNSt12_Destroy_auxILb1EE9__destroyIPdEEvT_S3_;	.scl	2;	.type	32;	.endef
__ZNSt12_Destroy_auxILb1EE9__destroyIPdEEvT_S3_:
LFB3535:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	nop
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE3535:
	.section	.text$_ZN9__gnu_cxx13new_allocatorIjE10deallocateEPjj,"x"
	.linkonce discard
	.align 2
	.globl	__ZN9__gnu_cxx13new_allocatorIjE10deallocateEPjj
	.def	__ZN9__gnu_cxx13new_allocatorIjE10deallocateEPjj;	.scl	2;	.type	32;	.endef
__ZN9__gnu_cxx13new_allocatorIjE10deallocateEPjj:
LFB3536:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$40, %esp
	movl	%ecx, -12(%ebp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	__ZdlPv
	nop
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret	$8
	.cfi_endproc
LFE3536:
	.section	.text$_ZNSt12_Destroy_auxILb1EE9__destroyIPjEEvT_S3_,"x"
	.linkonce discard
	.globl	__ZNSt12_Destroy_auxILb1EE9__destroyIPjEEvT_S3_
	.def	__ZNSt12_Destroy_auxILb1EE9__destroyIPjEEvT_S3_;	.scl	2;	.type	32;	.endef
__ZNSt12_Destroy_auxILb1EE9__destroyIPjEEvT_S3_:
LFB3537:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	nop
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE3537:
	.section	.text$_ZNSt6vectorIdSaIdEE15_M_erase_at_endEPd,"x"
	.linkonce discard
	.align 2
	.globl	__ZNSt6vectorIdSaIdEE15_M_erase_at_endEPd
	.def	__ZNSt6vectorIdSaIdEE15_M_erase_at_endEPd;	.scl	2;	.type	32;	.endef
__ZNSt6vectorIdSaIdEE15_M_erase_at_endEPd:
LFB3538:
	.cfi_startproc
	.cfi_personality 0,___gxx_personality_v0
	.cfi_lsda 0,LLSDA3538
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$56, %esp
	movl	%ecx, -28(%ebp)
	movl	-28(%ebp), %eax
	movl	4(%eax), %eax
	subl	8(%ebp), %eax
	sarl	$3, %eax
	movl	%eax, -12(%ebp)
	cmpl	$0, -12(%ebp)
	je	L257
	movl	-28(%ebp), %eax
	movl	%eax, %ecx
	call	__ZNSt12_Vector_baseIdSaIdEE19_M_get_Tp_allocatorEv
	movl	-28(%ebp), %edx
	movl	4(%edx), %edx
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	__ZSt8_DestroyIPddEvT_S1_RSaIT0_E
	movl	-28(%ebp), %eax
	movl	8(%ebp), %edx
	movl	%edx, 4(%eax)
L257:
	nop
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret	$4
	.cfi_endproc
LFE3538:
	.section	.gcc_except_table,"w"
LLSDA3538:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 LLSDACSE3538-LLSDACSB3538
LLSDACSB3538:
LLSDACSE3538:
	.section	.text$_ZNSt6vectorIdSaIdEE15_M_erase_at_endEPd,"x"
	.linkonce discard
	.section	.text$_ZSt18__do_alloc_on_copyISaIdEEvRT_RKS1_St17integral_constantIbLb0EE,"x"
	.linkonce discard
	.globl	__ZSt18__do_alloc_on_copyISaIdEEvRT_RKS1_St17integral_constantIbLb0EE
	.def	__ZSt18__do_alloc_on_copyISaIdEEvRT_RKS1_St17integral_constantIbLb0EE;	.scl	2;	.type	32;	.endef
__ZSt18__do_alloc_on_copyISaIdEEvRT_RKS1_St17integral_constantIbLb0EE:
LFB3539:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	nop
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE3539:
	.section	.text$_ZN9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEEC1ERKS2_,"x"
	.linkonce discard
	.align 2
	.globl	__ZN9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEEC1ERKS2_
	.def	__ZN9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEEC1ERKS2_;	.scl	2;	.type	32;	.endef
__ZN9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEEC1ERKS2_:
LFB3542:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$4, %esp
	movl	%ecx, -4(%ebp)
	movl	8(%ebp), %eax
	movl	(%eax), %edx
	movl	-4(%ebp), %eax
	movl	%edx, (%eax)
	nop
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret	$4
	.cfi_endproc
LFE3542:
	.section	.text$_ZNSt12_Vector_baseIdSaIdEE11_M_allocateEj,"x"
	.linkonce discard
	.align 2
	.globl	__ZNSt12_Vector_baseIdSaIdEE11_M_allocateEj
	.def	__ZNSt12_Vector_baseIdSaIdEE11_M_allocateEj;	.scl	2;	.type	32;	.endef
__ZNSt12_Vector_baseIdSaIdEE11_M_allocateEj:
LFB3543:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$40, %esp
	movl	%ecx, -12(%ebp)
	cmpl	$0, 8(%ebp)
	je	L261
	movl	-12(%ebp), %eax
	movl	8(%ebp), %edx
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	__ZNSt16allocator_traitsISaIdEE8allocateERS0_j
	jmp	L263
L261:
	movl	$0, %eax
L263:
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret	$4
	.cfi_endproc
LFE3543:
	.section	.text$_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEEEPddET0_T_SA_S9_RSaIT1_E,"x"
	.linkonce discard
	.globl	__ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEEEPddET0_T_SA_S9_RSaIT1_E
	.def	__ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEEEPddET0_T_SA_S9_RSaIT1_E;	.scl	2;	.type	32;	.endef
__ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEEEPddET0_T_SA_S9_RSaIT1_E:
LFB3544:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$24, %esp
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	__ZSt18uninitialized_copyIN9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEEEPdET0_T_SA_S9_
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE3544:
	.section	.text$_ZN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEC1ERKS1_,"x"
	.linkonce discard
	.align 2
	.globl	__ZN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEC1ERKS1_
	.def	__ZN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEC1ERKS1_;	.scl	2;	.type	32;	.endef
__ZN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEC1ERKS1_:
LFB3547:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$4, %esp
	movl	%ecx, -4(%ebp)
	movl	8(%ebp), %eax
	movl	(%eax), %edx
	movl	-4(%ebp), %eax
	movl	%edx, (%eax)
	nop
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret	$4
	.cfi_endproc
LFE3547:
	.section	.text$_ZSt12__miter_baseIN9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEEEET_S8_,"x"
	.linkonce discard
	.globl	__ZSt12__miter_baseIN9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEEEET_S8_
	.def	__ZSt12__miter_baseIN9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEEEET_S8_;	.scl	2;	.type	32;	.endef
__ZSt12__miter_baseIN9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEEEET_S8_:
LFB3548:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	movl	8(%ebp), %eax
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE3548:
	.section	.text$_ZSt14__copy_move_a2ILb0EN9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEEENS1_IPdS6_EEET1_T0_SB_SA_,"x"
	.linkonce discard
	.globl	__ZSt14__copy_move_a2ILb0EN9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEEENS1_IPdS6_EEET1_T0_SB_SA_
	.def	__ZSt14__copy_move_a2ILb0EN9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEEENS1_IPdS6_EEET1_T0_SB_SA_;	.scl	2;	.type	32;	.endef
__ZSt14__copy_move_a2ILb0EN9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEEENS1_IPdS6_EEET1_T0_SB_SA_:
LFB3549:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%esi
	pushl	%ebx
	subl	$16, %esp
	.cfi_offset 6, -12
	.cfi_offset 3, -16
	movl	16(%ebp), %eax
	movl	%eax, (%esp)
	call	__ZSt12__niter_baseIPdSt6vectorIdSaIdEEET_N9__gnu_cxx17__normal_iteratorIS4_T0_EE
	movl	%eax, %esi
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	__ZSt12__niter_baseIPKdSt6vectorIdSaIdEEET_N9__gnu_cxx17__normal_iteratorIS5_T0_EE
	movl	%eax, %ebx
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	__ZSt12__niter_baseIPKdSt6vectorIdSaIdEEET_N9__gnu_cxx17__normal_iteratorIS5_T0_EE
	movl	%esi, 8(%esp)
	movl	%ebx, 4(%esp)
	movl	%eax, (%esp)
	call	__ZSt13__copy_move_aILb0EPKdPdET1_T0_S4_S3_
	movl	%eax, 4(%esp)
	movl	16(%ebp), %eax
	movl	%eax, (%esp)
	call	__ZSt12__niter_wrapIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEES2_ET_S7_T0_
	addl	$16, %esp
	popl	%ebx
	.cfi_restore 3
	popl	%esi
	.cfi_restore 6
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE3549:
	.section	.text$_ZSt8_DestroyIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEvT_S7_,"x"
	.linkonce discard
	.globl	__ZSt8_DestroyIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEvT_S7_
	.def	__ZSt8_DestroyIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEvT_S7_;	.scl	2;	.type	32;	.endef
__ZSt8_DestroyIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEvT_S7_:
LFB3550:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$24, %esp
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	__ZNSt12_Destroy_auxILb1EE9__destroyIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEEvT_S9_
	nop
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE3550:
	.section	.text$_ZSt12__miter_baseIPdET_S1_,"x"
	.linkonce discard
	.globl	__ZSt12__miter_baseIPdET_S1_
	.def	__ZSt12__miter_baseIPdET_S1_;	.scl	2;	.type	32;	.endef
__ZSt12__miter_baseIPdET_S1_:
LFB3551:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	movl	8(%ebp), %eax
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE3551:
	.section	.text$_ZSt14__copy_move_a2ILb0EPdS0_ET1_T0_S2_S1_,"x"
	.linkonce discard
	.globl	__ZSt14__copy_move_a2ILb0EPdS0_ET1_T0_S2_S1_
	.def	__ZSt14__copy_move_a2ILb0EPdS0_ET1_T0_S2_S1_;	.scl	2;	.type	32;	.endef
__ZSt14__copy_move_a2ILb0EPdS0_ET1_T0_S2_S1_:
LFB3552:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%esi
	pushl	%ebx
	subl	$16, %esp
	.cfi_offset 6, -12
	.cfi_offset 3, -16
	movl	16(%ebp), %eax
	movl	%eax, (%esp)
	call	__ZSt12__niter_baseIPdET_S1_
	movl	%eax, %esi
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	__ZSt12__niter_baseIPdET_S1_
	movl	%eax, %ebx
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	__ZSt12__niter_baseIPdET_S1_
	movl	%esi, 8(%esp)
	movl	%ebx, 4(%esp)
	movl	%eax, (%esp)
	call	__ZSt13__copy_move_aILb0EPdS0_ET1_T0_S2_S1_
	movl	%eax, 4(%esp)
	leal	16(%ebp), %eax
	movl	%eax, (%esp)
	call	__ZSt12__niter_wrapIPdET_RKS1_S1_
	addl	$16, %esp
	popl	%ebx
	.cfi_restore 3
	popl	%esi
	.cfi_restore 6
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE3552:
	.section	.text$_ZSt18uninitialized_copyIPdS0_ET0_T_S2_S1_,"x"
	.linkonce discard
	.globl	__ZSt18uninitialized_copyIPdS0_ET0_T_S2_S1_
	.def	__ZSt18uninitialized_copyIPdS0_ET0_T_S2_S1_;	.scl	2;	.type	32;	.endef
__ZSt18uninitialized_copyIPdS0_ET0_T_S2_S1_:
LFB3553:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$40, %esp
	movb	$1, -9(%ebp)
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	__ZNSt20__uninitialized_copyILb1EE13__uninit_copyIPdS2_EET0_T_S4_S3_
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE3553:
	.section	.text$_ZNSt6vectorIjSaIjEE11_S_max_sizeERKS0_,"x"
	.linkonce discard
	.globl	__ZNSt6vectorIjSaIjEE11_S_max_sizeERKS0_
	.def	__ZNSt6vectorIjSaIjEE11_S_max_sizeERKS0_;	.scl	2;	.type	32;	.endef
__ZNSt6vectorIjSaIjEE11_S_max_sizeERKS0_:
LFB3554:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$40, %esp
	movl	$536870911, -12(%ebp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	__ZNSt16allocator_traitsISaIjEE8max_sizeERKS0_
	movl	%eax, -16(%ebp)
	leal	-16(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	__ZSt3minIjERKT_S2_S2_
	movl	(%eax), %eax
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE3554:
	.section	.text$_ZNSaIjEC2ERKS_,"x"
	.linkonce discard
	.align 2
	.globl	__ZNSaIjEC2ERKS_
	.def	__ZNSaIjEC2ERKS_;	.scl	2;	.type	32;	.endef
__ZNSaIjEC2ERKS_:
LFB3556:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$40, %esp
	movl	%ecx, -12(%ebp)
	movl	-12(%ebp), %eax
	movl	8(%ebp), %edx
	movl	%edx, (%esp)
	movl	%eax, %ecx
	call	__ZN9__gnu_cxx13new_allocatorIjEC2ERKS1_
	subl	$4, %esp
	nop
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret	$4
	.cfi_endproc
LFE3556:
	.section	.text$_ZNSaIjEC1ERKS_,"x"
	.linkonce discard
	.align 2
	.globl	__ZNSaIjEC1ERKS_
	.def	__ZNSaIjEC1ERKS_;	.scl	2;	.type	32;	.endef
__ZNSaIjEC1ERKS_:
LFB3557:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$40, %esp
	movl	%ecx, -12(%ebp)
	movl	-12(%ebp), %eax
	movl	8(%ebp), %edx
	movl	%edx, (%esp)
	movl	%eax, %ecx
	call	__ZN9__gnu_cxx13new_allocatorIjEC2ERKS1_
	subl	$4, %esp
	nop
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret	$4
	.cfi_endproc
LFE3557:
	.section	.text$_ZNSt12_Vector_baseIjSaIjEE12_Vector_implC1ERKS0_,"x"
	.linkonce discard
	.align 2
	.globl	__ZNSt12_Vector_baseIjSaIjEE12_Vector_implC1ERKS0_
	.def	__ZNSt12_Vector_baseIjSaIjEE12_Vector_implC1ERKS0_;	.scl	2;	.type	32;	.endef
__ZNSt12_Vector_baseIjSaIjEE12_Vector_implC1ERKS0_:
LFB3560:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$40, %esp
	movl	%ecx, -12(%ebp)
	movl	-12(%ebp), %eax
	movl	8(%ebp), %edx
	movl	%edx, (%esp)
	movl	%eax, %ecx
	call	__ZNSaIjEC2ERKS_
	subl	$4, %esp
	movl	-12(%ebp), %eax
	movl	%eax, %ecx
	call	__ZNSt12_Vector_baseIjSaIjEE17_Vector_impl_dataC2Ev
	nop
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret	$4
	.cfi_endproc
LFE3560:
	.section	.text$_ZNSt12_Vector_baseIjSaIjEE17_M_create_storageEj,"x"
	.linkonce discard
	.align 2
	.globl	__ZNSt12_Vector_baseIjSaIjEE17_M_create_storageEj
	.def	__ZNSt12_Vector_baseIjSaIjEE17_M_create_storageEj;	.scl	2;	.type	32;	.endef
__ZNSt12_Vector_baseIjSaIjEE17_M_create_storageEj:
LFB3561:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$40, %esp
	movl	%ecx, -12(%ebp)
	movl	-12(%ebp), %eax
	movl	8(%ebp), %edx
	movl	%edx, (%esp)
	movl	%eax, %ecx
	call	__ZNSt12_Vector_baseIjSaIjEE11_M_allocateEj
	subl	$4, %esp
	movl	-12(%ebp), %edx
	movl	%eax, (%edx)
	movl	-12(%ebp), %eax
	movl	(%eax), %edx
	movl	-12(%ebp), %eax
	movl	%edx, 4(%eax)
	movl	-12(%ebp), %eax
	movl	(%eax), %eax
	movl	8(%ebp), %edx
	sall	$2, %edx
	addl	%eax, %edx
	movl	-12(%ebp), %eax
	movl	%edx, 8(%eax)
	nop
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret	$4
	.cfi_endproc
LFE3561:
	.section	.text$_ZSt24__uninitialized_fill_n_aIPjjjjET_S1_T0_RKT1_RSaIT2_E,"x"
	.linkonce discard
	.globl	__ZSt24__uninitialized_fill_n_aIPjjjjET_S1_T0_RKT1_RSaIT2_E
	.def	__ZSt24__uninitialized_fill_n_aIPjjjjET_S1_T0_RKT1_RSaIT2_E;	.scl	2;	.type	32;	.endef
__ZSt24__uninitialized_fill_n_aIPjjjjET_S1_T0_RKT1_RSaIT2_E:
LFB3562:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$24, %esp
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	__ZSt20uninitialized_fill_nIPjjjET_S1_T0_RKT1_
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE3562:
	.section	.text$_ZNKSt12_Vector_baseIjSaIjEE13get_allocatorEv,"x"
	.linkonce discard
	.align 2
	.globl	__ZNKSt12_Vector_baseIjSaIjEE13get_allocatorEv
	.def	__ZNKSt12_Vector_baseIjSaIjEE13get_allocatorEv;	.scl	2;	.type	32;	.endef
__ZNKSt12_Vector_baseIjSaIjEE13get_allocatorEv:
LFB3563:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$40, %esp
	movl	%ecx, -12(%ebp)
	movl	8(%ebp), %ecx
	call	__ZNKSt12_Vector_baseIjSaIjEE19_M_get_Tp_allocatorEv
	movl	%eax, %edx
	movl	-12(%ebp), %eax
	movl	%edx, (%esp)
	movl	%eax, %ecx
	call	__ZNSaIjEC1ERKS_
	subl	$4, %esp
	movl	-12(%ebp), %eax
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret	$4
	.cfi_endproc
LFE3563:
	.section	.text$_ZNSt6vectorIjSaIjEEC1ERKS0_,"x"
	.linkonce discard
	.align 2
	.globl	__ZNSt6vectorIjSaIjEEC1ERKS0_
	.def	__ZNSt6vectorIjSaIjEEC1ERKS0_;	.scl	2;	.type	32;	.endef
__ZNSt6vectorIjSaIjEEC1ERKS0_:
LFB3566:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$40, %esp
	movl	%ecx, -12(%ebp)
	movl	-12(%ebp), %eax
	movl	8(%ebp), %edx
	movl	%edx, (%esp)
	movl	%eax, %ecx
	call	__ZNSt12_Vector_baseIjSaIjEEC2ERKS0_
	subl	$4, %esp
	nop
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret	$4
	.cfi_endproc
LFE3566:
	.section	.text$_ZNSt12_Vector_baseIjSaIjEE17_Vector_impl_data12_M_swap_dataERS2_,"x"
	.linkonce discard
	.align 2
	.globl	__ZNSt12_Vector_baseIjSaIjEE17_Vector_impl_data12_M_swap_dataERS2_
	.def	__ZNSt12_Vector_baseIjSaIjEE17_Vector_impl_data12_M_swap_dataERS2_;	.scl	2;	.type	32;	.endef
__ZNSt12_Vector_baseIjSaIjEE17_Vector_impl_data12_M_swap_dataERS2_:
LFB3567:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$56, %esp
	movl	%ecx, -28(%ebp)
	leal	-20(%ebp), %eax
	movl	%eax, %ecx
	call	__ZNSt12_Vector_baseIjSaIjEE17_Vector_impl_dataC1Ev
	leal	-20(%ebp), %eax
	movl	-28(%ebp), %edx
	movl	%edx, (%esp)
	movl	%eax, %ecx
	call	__ZNSt12_Vector_baseIjSaIjEE17_Vector_impl_data12_M_copy_dataERKS2_
	subl	$4, %esp
	movl	-28(%ebp), %eax
	movl	8(%ebp), %edx
	movl	%edx, (%esp)
	movl	%eax, %ecx
	call	__ZNSt12_Vector_baseIjSaIjEE17_Vector_impl_data12_M_copy_dataERKS2_
	subl	$4, %esp
	leal	-20(%ebp), %eax
	movl	%eax, (%esp)
	movl	8(%ebp), %ecx
	call	__ZNSt12_Vector_baseIjSaIjEE17_Vector_impl_data12_M_copy_dataERKS2_
	subl	$4, %esp
	nop
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret	$4
	.cfi_endproc
LFE3567:
	.section	.text$_ZSt15__alloc_on_moveISaIjEEvRT_S2_,"x"
	.linkonce discard
	.globl	__ZSt15__alloc_on_moveISaIjEEvRT_S2_
	.def	__ZSt15__alloc_on_moveISaIjEEvRT_S2_;	.scl	2;	.type	32;	.endef
__ZSt15__alloc_on_moveISaIjEEvRT_S2_:
LFB3568:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$40, %esp
	movb	%al, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	__ZSt18__do_alloc_on_moveISaIjEEvRT_S2_St17integral_constantIbLb1EE
	nop
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE3568:
	.section	.text$_ZN9__gnu_cxx13new_allocatorIdEC2ERKS1_,"x"
	.linkonce discard
	.align 2
	.globl	__ZN9__gnu_cxx13new_allocatorIdEC2ERKS1_
	.def	__ZN9__gnu_cxx13new_allocatorIdEC2ERKS1_;	.scl	2;	.type	32;	.endef
__ZN9__gnu_cxx13new_allocatorIdEC2ERKS1_:
LFB3570:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$4, %esp
	movl	%ecx, -4(%ebp)
	nop
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret	$4
	.cfi_endproc
LFE3570:
	.section	.text$_ZNSt12_Vector_baseIdSaIdEEC2ERKS0_,"x"
	.linkonce discard
	.align 2
	.globl	__ZNSt12_Vector_baseIdSaIdEEC2ERKS0_
	.def	__ZNSt12_Vector_baseIdSaIdEEC2ERKS0_;	.scl	2;	.type	32;	.endef
__ZNSt12_Vector_baseIdSaIdEEC2ERKS0_:
LFB3573:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$40, %esp
	movl	%ecx, -12(%ebp)
	movl	-12(%ebp), %eax
	movl	8(%ebp), %edx
	movl	%edx, (%esp)
	movl	%eax, %ecx
	call	__ZNSt12_Vector_baseIdSaIdEE12_Vector_implC1ERKS0_
	subl	$4, %esp
	nop
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret	$4
	.cfi_endproc
LFE3573:
	.section	.text$_ZNSt12_Vector_baseIdSaIdEE17_Vector_impl_data12_M_copy_dataERKS2_,"x"
	.linkonce discard
	.align 2
	.globl	__ZNSt12_Vector_baseIdSaIdEE17_Vector_impl_data12_M_copy_dataERKS2_
	.def	__ZNSt12_Vector_baseIdSaIdEE17_Vector_impl_data12_M_copy_dataERKS2_;	.scl	2;	.type	32;	.endef
__ZNSt12_Vector_baseIdSaIdEE17_Vector_impl_data12_M_copy_dataERKS2_:
LFB3575:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$4, %esp
	movl	%ecx, -4(%ebp)
	movl	8(%ebp), %eax
	movl	(%eax), %edx
	movl	-4(%ebp), %eax
	movl	%edx, (%eax)
	movl	8(%ebp), %eax
	movl	4(%eax), %edx
	movl	-4(%ebp), %eax
	movl	%edx, 4(%eax)
	movl	8(%ebp), %eax
	movl	8(%eax), %edx
	movl	-4(%ebp), %eax
	movl	%edx, 8(%eax)
	nop
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret	$4
	.cfi_endproc
LFE3575:
	.section	.text$_ZSt18__do_alloc_on_moveISaIdEEvRT_S2_St17integral_constantIbLb1EE,"x"
	.linkonce discard
	.globl	__ZSt18__do_alloc_on_moveISaIdEEvRT_S2_St17integral_constantIbLb1EE
	.def	__ZSt18__do_alloc_on_moveISaIdEEvRT_S2_St17integral_constantIbLb1EE;	.scl	2;	.type	32;	.endef
__ZSt18__do_alloc_on_moveISaIdEEvRT_S2_St17integral_constantIbLb1EE:
LFB3576:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$24, %esp
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	__ZSt4moveIRSaIdEEONSt16remove_referenceIT_E4typeEOS3_
	nop
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE3576:
	.section	.text$_ZN9__gnu_cxx13new_allocatorImEC2ERKS1_,"x"
	.linkonce discard
	.align 2
	.globl	__ZN9__gnu_cxx13new_allocatorImEC2ERKS1_
	.def	__ZN9__gnu_cxx13new_allocatorImEC2ERKS1_;	.scl	2;	.type	32;	.endef
__ZN9__gnu_cxx13new_allocatorImEC2ERKS1_:
LFB3606:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$4, %esp
	movl	%ecx, -4(%ebp)
	nop
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret	$4
	.cfi_endproc
LFE3606:
	.section	.text$_ZN9__gnu_cxx13new_allocatorImE10deallocateEPmj,"x"
	.linkonce discard
	.align 2
	.globl	__ZN9__gnu_cxx13new_allocatorImE10deallocateEPmj
	.def	__ZN9__gnu_cxx13new_allocatorImE10deallocateEPmj;	.scl	2;	.type	32;	.endef
__ZN9__gnu_cxx13new_allocatorImE10deallocateEPmj:
LFB3608:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$40, %esp
	movl	%ecx, -12(%ebp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	__ZdlPv
	nop
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret	$8
	.cfi_endproc
LFE3608:
	.section	.text$_ZN9__gnu_cxx13new_allocatorImE8allocateEjPKv,"x"
	.linkonce discard
	.align 2
	.globl	__ZN9__gnu_cxx13new_allocatorImE8allocateEjPKv
	.def	__ZN9__gnu_cxx13new_allocatorImE8allocateEjPKv;	.scl	2;	.type	32;	.endef
__ZN9__gnu_cxx13new_allocatorImE8allocateEjPKv:
LFB3609:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$40, %esp
	movl	%ecx, -12(%ebp)
	movl	-12(%ebp), %eax
	movl	%eax, %ecx
	call	__ZNK9__gnu_cxx13new_allocatorImE8max_sizeEv
	cmpl	%eax, 8(%ebp)
	seta	%al
	testb	%al, %al
	je	L298
	call	__ZSt17__throw_bad_allocv
L298:
	movl	8(%ebp), %eax
	sall	$2, %eax
	movl	%eax, (%esp)
	call	__Znwj
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret	$8
	.cfi_endproc
LFE3609:
	.section	.text$_ZNSt16allocator_traitsISaIdEE8allocateERS0_j,"x"
	.linkonce discard
	.globl	__ZNSt16allocator_traitsISaIdEE8allocateERS0_j
	.def	__ZNSt16allocator_traitsISaIdEE8allocateERS0_j;	.scl	2;	.type	32;	.endef
__ZNSt16allocator_traitsISaIdEE8allocateERS0_j:
LFB3620:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$24, %esp
	movl	$0, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	movl	8(%ebp), %ecx
	call	__ZN9__gnu_cxx13new_allocatorIdE8allocateEjPKv
	subl	$8, %esp
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE3620:
	.section	.text$_ZSt18uninitialized_copyIN9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEEEPdET0_T_SA_S9_,"x"
	.linkonce discard
	.globl	__ZSt18uninitialized_copyIN9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEEEPdET0_T_SA_S9_
	.def	__ZSt18uninitialized_copyIN9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEEEPdET0_T_SA_S9_;	.scl	2;	.type	32;	.endef
__ZSt18uninitialized_copyIN9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEEEPdET0_T_SA_S9_:
LFB3621:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$40, %esp
	movb	$1, -9(%ebp)
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	__ZNSt20__uninitialized_copyILb1EE13__uninit_copyIN9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEEEPdEET0_T_SC_SB_
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE3621:
	.section	.text$_ZSt12__niter_baseIPKdSt6vectorIdSaIdEEET_N9__gnu_cxx17__normal_iteratorIS5_T0_EE,"x"
	.linkonce discard
	.globl	__ZSt12__niter_baseIPKdSt6vectorIdSaIdEEET_N9__gnu_cxx17__normal_iteratorIS5_T0_EE
	.def	__ZSt12__niter_baseIPKdSt6vectorIdSaIdEEET_N9__gnu_cxx17__normal_iteratorIS5_T0_EE;	.scl	2;	.type	32;	.endef
__ZSt12__niter_baseIPKdSt6vectorIdSaIdEEET_N9__gnu_cxx17__normal_iteratorIS5_T0_EE:
LFB3622:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$8, %esp
	leal	8(%ebp), %ecx
	call	__ZNK9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEE4baseEv
	movl	(%eax), %eax
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE3622:
	.section	.text$_ZSt12__niter_baseIPdSt6vectorIdSaIdEEET_N9__gnu_cxx17__normal_iteratorIS4_T0_EE,"x"
	.linkonce discard
	.globl	__ZSt12__niter_baseIPdSt6vectorIdSaIdEEET_N9__gnu_cxx17__normal_iteratorIS4_T0_EE
	.def	__ZSt12__niter_baseIPdSt6vectorIdSaIdEEET_N9__gnu_cxx17__normal_iteratorIS4_T0_EE;	.scl	2;	.type	32;	.endef
__ZSt12__niter_baseIPdSt6vectorIdSaIdEEET_N9__gnu_cxx17__normal_iteratorIS4_T0_EE:
LFB3623:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$8, %esp
	leal	8(%ebp), %ecx
	call	__ZNK9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEE4baseEv
	movl	(%eax), %eax
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE3623:
	.section	.text$_ZSt13__copy_move_aILb0EPKdPdET1_T0_S4_S3_,"x"
	.linkonce discard
	.globl	__ZSt13__copy_move_aILb0EPKdPdET1_T0_S4_S3_
	.def	__ZSt13__copy_move_aILb0EPKdPdET1_T0_S4_S3_;	.scl	2;	.type	32;	.endef
__ZSt13__copy_move_aILb0EPKdPdET1_T0_S4_S3_:
LFB3624:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$40, %esp
	movb	$1, -9(%ebp)
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	__ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIdEEPT_PKS3_S6_S4_
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE3624:
	.section	.text$_ZSt12__niter_wrapIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEES2_ET_S7_T0_,"x"
	.linkonce discard
	.globl	__ZSt12__niter_wrapIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEES2_ET_S7_T0_
	.def	__ZSt12__niter_wrapIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEES2_ET_S7_T0_;	.scl	2;	.type	32;	.endef
__ZSt12__niter_wrapIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEES2_ET_S7_T0_:
LFB3625:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$24, %esp
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	__ZSt12__niter_baseIPdSt6vectorIdSaIdEEET_N9__gnu_cxx17__normal_iteratorIS4_T0_EE
	movl	12(%ebp), %edx
	subl	%eax, %edx
	movl	%edx, %eax
	sarl	$3, %eax
	movl	%eax, (%esp)
	leal	8(%ebp), %ecx
	call	__ZNK9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEplEi
	subl	$4, %esp
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE3625:
	.section	.text$_ZNSt12_Destroy_auxILb1EE9__destroyIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEEvT_S9_,"x"
	.linkonce discard
	.globl	__ZNSt12_Destroy_auxILb1EE9__destroyIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEEvT_S9_
	.def	__ZNSt12_Destroy_auxILb1EE9__destroyIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEEvT_S9_;	.scl	2;	.type	32;	.endef
__ZNSt12_Destroy_auxILb1EE9__destroyIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEEvT_S9_:
LFB3626:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	nop
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE3626:
	.section	.text$_ZSt12__niter_baseIPdET_S1_,"x"
	.linkonce discard
	.globl	__ZSt12__niter_baseIPdET_S1_
	.def	__ZSt12__niter_baseIPdET_S1_;	.scl	2;	.type	32;	.endef
__ZSt12__niter_baseIPdET_S1_:
LFB3627:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	movl	8(%ebp), %eax
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE3627:
	.section	.text$_ZSt13__copy_move_aILb0EPdS0_ET1_T0_S2_S1_,"x"
	.linkonce discard
	.globl	__ZSt13__copy_move_aILb0EPdS0_ET1_T0_S2_S1_
	.def	__ZSt13__copy_move_aILb0EPdS0_ET1_T0_S2_S1_;	.scl	2;	.type	32;	.endef
__ZSt13__copy_move_aILb0EPdS0_ET1_T0_S2_S1_:
LFB3628:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$40, %esp
	movb	$1, -9(%ebp)
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	__ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIdEEPT_PKS3_S6_S4_
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE3628:
	.section	.text$_ZSt12__niter_wrapIPdET_RKS1_S1_,"x"
	.linkonce discard
	.globl	__ZSt12__niter_wrapIPdET_RKS1_S1_
	.def	__ZSt12__niter_wrapIPdET_RKS1_S1_;	.scl	2;	.type	32;	.endef
__ZSt12__niter_wrapIPdET_RKS1_S1_:
LFB3629:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	movl	12(%ebp), %eax
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE3629:
	.section	.text$_ZNSt20__uninitialized_copyILb1EE13__uninit_copyIPdS2_EET0_T_S4_S3_,"x"
	.linkonce discard
	.globl	__ZNSt20__uninitialized_copyILb1EE13__uninit_copyIPdS2_EET0_T_S4_S3_
	.def	__ZNSt20__uninitialized_copyILb1EE13__uninit_copyIPdS2_EET0_T_S4_S3_;	.scl	2;	.type	32;	.endef
__ZNSt20__uninitialized_copyILb1EE13__uninit_copyIPdS2_EET0_T_S4_S3_:
LFB3630:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$24, %esp
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	__ZSt4copyIPdS0_ET0_T_S2_S1_
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE3630:
	.section	.text$_ZNSt16allocator_traitsISaIjEE8max_sizeERKS0_,"x"
	.linkonce discard
	.globl	__ZNSt16allocator_traitsISaIjEE8max_sizeERKS0_
	.def	__ZNSt16allocator_traitsISaIjEE8max_sizeERKS0_;	.scl	2;	.type	32;	.endef
__ZNSt16allocator_traitsISaIjEE8max_sizeERKS0_:
LFB3631:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$8, %esp
	movl	8(%ebp), %ecx
	call	__ZNK9__gnu_cxx13new_allocatorIjE8max_sizeEv
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE3631:
	.section	.text$_ZN9__gnu_cxx13new_allocatorIjEC2ERKS1_,"x"
	.linkonce discard
	.align 2
	.globl	__ZN9__gnu_cxx13new_allocatorIjEC2ERKS1_
	.def	__ZN9__gnu_cxx13new_allocatorIjEC2ERKS1_;	.scl	2;	.type	32;	.endef
__ZN9__gnu_cxx13new_allocatorIjEC2ERKS1_:
LFB3633:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$4, %esp
	movl	%ecx, -4(%ebp)
	nop
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret	$4
	.cfi_endproc
LFE3633:
	.section	.text$_ZNSt12_Vector_baseIjSaIjEE11_M_allocateEj,"x"
	.linkonce discard
	.align 2
	.globl	__ZNSt12_Vector_baseIjSaIjEE11_M_allocateEj
	.def	__ZNSt12_Vector_baseIjSaIjEE11_M_allocateEj;	.scl	2;	.type	32;	.endef
__ZNSt12_Vector_baseIjSaIjEE11_M_allocateEj:
LFB3635:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$40, %esp
	movl	%ecx, -12(%ebp)
	cmpl	$0, 8(%ebp)
	je	L325
	movl	-12(%ebp), %eax
	movl	8(%ebp), %edx
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	__ZNSt16allocator_traitsISaIjEE8allocateERS0_j
	jmp	L327
L325:
	movl	$0, %eax
L327:
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret	$4
	.cfi_endproc
LFE3635:
	.section	.text$_ZSt20uninitialized_fill_nIPjjjET_S1_T0_RKT1_,"x"
	.linkonce discard
	.globl	__ZSt20uninitialized_fill_nIPjjjET_S1_T0_RKT1_
	.def	__ZSt20uninitialized_fill_nIPjjjET_S1_T0_RKT1_;	.scl	2;	.type	32;	.endef
__ZSt20uninitialized_fill_nIPjjjET_S1_T0_RKT1_:
LFB3636:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$40, %esp
	movb	$1, -9(%ebp)
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	__ZNSt22__uninitialized_fill_nILb1EE15__uninit_fill_nIPjjjEET_S3_T0_RKT1_
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE3636:
	.section	.text$_ZNKSt12_Vector_baseIjSaIjEE19_M_get_Tp_allocatorEv,"x"
	.linkonce discard
	.align 2
	.globl	__ZNKSt12_Vector_baseIjSaIjEE19_M_get_Tp_allocatorEv
	.def	__ZNKSt12_Vector_baseIjSaIjEE19_M_get_Tp_allocatorEv;	.scl	2;	.type	32;	.endef
__ZNKSt12_Vector_baseIjSaIjEE19_M_get_Tp_allocatorEv:
LFB3637:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$4, %esp
	movl	%ecx, -4(%ebp)
	movl	-4(%ebp), %eax
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE3637:
	.section	.text$_ZNSt12_Vector_baseIjSaIjEEC2ERKS0_,"x"
	.linkonce discard
	.align 2
	.globl	__ZNSt12_Vector_baseIjSaIjEEC2ERKS0_
	.def	__ZNSt12_Vector_baseIjSaIjEEC2ERKS0_;	.scl	2;	.type	32;	.endef
__ZNSt12_Vector_baseIjSaIjEEC2ERKS0_:
LFB3639:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$40, %esp
	movl	%ecx, -12(%ebp)
	movl	-12(%ebp), %eax
	movl	8(%ebp), %edx
	movl	%edx, (%esp)
	movl	%eax, %ecx
	call	__ZNSt12_Vector_baseIjSaIjEE12_Vector_implC1ERKS0_
	subl	$4, %esp
	nop
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret	$4
	.cfi_endproc
LFE3639:
	.section	.text$_ZNSt12_Vector_baseIjSaIjEE17_Vector_impl_data12_M_copy_dataERKS2_,"x"
	.linkonce discard
	.align 2
	.globl	__ZNSt12_Vector_baseIjSaIjEE17_Vector_impl_data12_M_copy_dataERKS2_
	.def	__ZNSt12_Vector_baseIjSaIjEE17_Vector_impl_data12_M_copy_dataERKS2_;	.scl	2;	.type	32;	.endef
__ZNSt12_Vector_baseIjSaIjEE17_Vector_impl_data12_M_copy_dataERKS2_:
LFB3641:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$4, %esp
	movl	%ecx, -4(%ebp)
	movl	8(%ebp), %eax
	movl	(%eax), %edx
	movl	-4(%ebp), %eax
	movl	%edx, (%eax)
	movl	8(%ebp), %eax
	movl	4(%eax), %edx
	movl	-4(%ebp), %eax
	movl	%edx, 4(%eax)
	movl	8(%ebp), %eax
	movl	8(%eax), %edx
	movl	-4(%ebp), %eax
	movl	%edx, 8(%eax)
	nop
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret	$4
	.cfi_endproc
LFE3641:
	.section	.text$_ZSt18__do_alloc_on_moveISaIjEEvRT_S2_St17integral_constantIbLb1EE,"x"
	.linkonce discard
	.globl	__ZSt18__do_alloc_on_moveISaIjEEvRT_S2_St17integral_constantIbLb1EE
	.def	__ZSt18__do_alloc_on_moveISaIjEEvRT_S2_St17integral_constantIbLb1EE;	.scl	2;	.type	32;	.endef
__ZSt18__do_alloc_on_moveISaIjEEvRT_S2_St17integral_constantIbLb1EE:
LFB3642:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$24, %esp
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	__ZSt4moveIRSaIjEEONSt16remove_referenceIT_E4typeEOS3_
	nop
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE3642:
	.section	.text$_ZNSt12_Vector_baseIdSaIdEE12_Vector_implC1ERKS0_,"x"
	.linkonce discard
	.align 2
	.globl	__ZNSt12_Vector_baseIdSaIdEE12_Vector_implC1ERKS0_
	.def	__ZNSt12_Vector_baseIdSaIdEE12_Vector_implC1ERKS0_;	.scl	2;	.type	32;	.endef
__ZNSt12_Vector_baseIdSaIdEE12_Vector_implC1ERKS0_:
LFB3645:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$40, %esp
	movl	%ecx, -12(%ebp)
	movl	-12(%ebp), %eax
	movl	8(%ebp), %edx
	movl	%edx, (%esp)
	movl	%eax, %ecx
	call	__ZNSaIdEC2ERKS_
	subl	$4, %esp
	movl	-12(%ebp), %eax
	movl	%eax, %ecx
	call	__ZNSt12_Vector_baseIdSaIdEE17_Vector_impl_dataC2Ev
	nop
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret	$4
	.cfi_endproc
LFE3645:
	.section	.text$_ZSt4moveIRSaIdEEONSt16remove_referenceIT_E4typeEOS3_,"x"
	.linkonce discard
	.globl	__ZSt4moveIRSaIdEEONSt16remove_referenceIT_E4typeEOS3_
	.def	__ZSt4moveIRSaIdEEONSt16remove_referenceIT_E4typeEOS3_;	.scl	2;	.type	32;	.endef
__ZSt4moveIRSaIdEEONSt16remove_referenceIT_E4typeEOS3_:
LFB3646:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	movl	8(%ebp), %eax
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE3646:
	.section	.text$_ZNK9__gnu_cxx13new_allocatorImE8max_sizeEv,"x"
	.linkonce discard
	.align 2
	.globl	__ZNK9__gnu_cxx13new_allocatorImE8max_sizeEv
	.def	__ZNK9__gnu_cxx13new_allocatorImE8max_sizeEv;	.scl	2;	.type	32;	.endef
__ZNK9__gnu_cxx13new_allocatorImE8max_sizeEv:
LFB3671:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$4, %esp
	movl	%ecx, -4(%ebp)
	movl	$536870911, %eax
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE3671:
	.section	.text$_ZN9__gnu_cxx13new_allocatorIdE8allocateEjPKv,"x"
	.linkonce discard
	.align 2
	.globl	__ZN9__gnu_cxx13new_allocatorIdE8allocateEjPKv
	.def	__ZN9__gnu_cxx13new_allocatorIdE8allocateEjPKv;	.scl	2;	.type	32;	.endef
__ZN9__gnu_cxx13new_allocatorIdE8allocateEjPKv:
LFB3676:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$40, %esp
	movl	%ecx, -12(%ebp)
	movl	-12(%ebp), %eax
	movl	%eax, %ecx
	call	__ZNK9__gnu_cxx13new_allocatorIdE8max_sizeEv
	cmpl	%eax, 8(%ebp)
	seta	%al
	testb	%al, %al
	je	L341
	call	__ZSt17__throw_bad_allocv
L341:
	movl	8(%ebp), %eax
	sall	$3, %eax
	movl	%eax, (%esp)
	call	__Znwj
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret	$8
	.cfi_endproc
LFE3676:
	.section	.text$_ZNSt20__uninitialized_copyILb1EE13__uninit_copyIN9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEEEPdEET0_T_SC_SB_,"x"
	.linkonce discard
	.globl	__ZNSt20__uninitialized_copyILb1EE13__uninit_copyIN9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEEEPdEET0_T_SC_SB_
	.def	__ZNSt20__uninitialized_copyILb1EE13__uninit_copyIN9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEEEPdEET0_T_SC_SB_;	.scl	2;	.type	32;	.endef
__ZNSt20__uninitialized_copyILb1EE13__uninit_copyIN9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEEEPdEET0_T_SC_SB_:
LFB3677:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$24, %esp
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	__ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEEEPdET0_T_SA_S9_
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE3677:
	.section	.text$_ZNK9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEE4baseEv,"x"
	.linkonce discard
	.align 2
	.globl	__ZNK9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEE4baseEv
	.def	__ZNK9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEE4baseEv;	.scl	2;	.type	32;	.endef
__ZNK9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEE4baseEv:
LFB3678:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$4, %esp
	movl	%ecx, -4(%ebp)
	movl	-4(%ebp), %eax
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE3678:
	.section	.text$_ZNK9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEE4baseEv,"x"
	.linkonce discard
	.align 2
	.globl	__ZNK9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEE4baseEv
	.def	__ZNK9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEE4baseEv;	.scl	2;	.type	32;	.endef
__ZNK9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEE4baseEv:
LFB3679:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$4, %esp
	movl	%ecx, -4(%ebp)
	movl	-4(%ebp), %eax
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE3679:
	.section	.text$_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIdEEPT_PKS3_S6_S4_,"x"
	.linkonce discard
	.globl	__ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIdEEPT_PKS3_S6_S4_
	.def	__ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIdEEPT_PKS3_S6_S4_;	.scl	2;	.type	32;	.endef
__ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIdEEPT_PKS3_S6_S4_:
LFB3680:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$40, %esp
	movl	12(%ebp), %eax
	subl	8(%ebp), %eax
	sarl	$3, %eax
	movl	%eax, -12(%ebp)
	cmpl	$0, -12(%ebp)
	je	L350
	movl	-12(%ebp), %eax
	sall	$3, %eax
	movl	%eax, 8(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	16(%ebp), %eax
	movl	%eax, (%esp)
	call	_memmove
L350:
	movl	-12(%ebp), %eax
	leal	0(,%eax,8), %edx
	movl	16(%ebp), %eax
	addl	%edx, %eax
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE3680:
	.section	.text$_ZNK9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEplEi,"x"
	.linkonce discard
	.align 2
	.globl	__ZNK9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEplEi
	.def	__ZNK9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEplEi;	.scl	2;	.type	32;	.endef
__ZNK9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEplEi:
LFB3681:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$56, %esp
	movl	%ecx, -28(%ebp)
	movl	-28(%ebp), %eax
	movl	(%eax), %eax
	movl	8(%ebp), %edx
	sall	$3, %edx
	addl	%edx, %eax
	movl	%eax, -12(%ebp)
	leal	-16(%ebp), %eax
	leal	-12(%ebp), %edx
	movl	%edx, (%esp)
	movl	%eax, %ecx
	call	__ZN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEC1ERKS1_
	subl	$4, %esp
	movl	-16(%ebp), %eax
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret	$4
	.cfi_endproc
LFE3681:
	.section	.text$_ZNK9__gnu_cxx13new_allocatorIjE8max_sizeEv,"x"
	.linkonce discard
	.align 2
	.globl	__ZNK9__gnu_cxx13new_allocatorIjE8max_sizeEv
	.def	__ZNK9__gnu_cxx13new_allocatorIjE8max_sizeEv;	.scl	2;	.type	32;	.endef
__ZNK9__gnu_cxx13new_allocatorIjE8max_sizeEv:
LFB3682:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$4, %esp
	movl	%ecx, -4(%ebp)
	movl	$536870911, %eax
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE3682:
	.section	.text$_ZNSt16allocator_traitsISaIjEE8allocateERS0_j,"x"
	.linkonce discard
	.globl	__ZNSt16allocator_traitsISaIjEE8allocateERS0_j
	.def	__ZNSt16allocator_traitsISaIjEE8allocateERS0_j;	.scl	2;	.type	32;	.endef
__ZNSt16allocator_traitsISaIjEE8allocateERS0_j:
LFB3683:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$24, %esp
	movl	$0, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	movl	8(%ebp), %ecx
	call	__ZN9__gnu_cxx13new_allocatorIjE8allocateEjPKv
	subl	$8, %esp
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE3683:
	.section	.text$_ZNSt22__uninitialized_fill_nILb1EE15__uninit_fill_nIPjjjEET_S3_T0_RKT1_,"x"
	.linkonce discard
	.globl	__ZNSt22__uninitialized_fill_nILb1EE15__uninit_fill_nIPjjjEET_S3_T0_RKT1_
	.def	__ZNSt22__uninitialized_fill_nILb1EE15__uninit_fill_nIPjjjEET_S3_T0_RKT1_;	.scl	2;	.type	32;	.endef
__ZNSt22__uninitialized_fill_nILb1EE15__uninit_fill_nIPjjjEET_S3_T0_RKT1_:
LFB3684:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$24, %esp
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	__ZSt6fill_nIPjjjET_S1_T0_RKT1_
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE3684:
	.section	.text$_ZSt4moveIRSaIjEEONSt16remove_referenceIT_E4typeEOS3_,"x"
	.linkonce discard
	.globl	__ZSt4moveIRSaIjEEONSt16remove_referenceIT_E4typeEOS3_
	.def	__ZSt4moveIRSaIjEEONSt16remove_referenceIT_E4typeEOS3_;	.scl	2;	.type	32;	.endef
__ZSt4moveIRSaIjEEONSt16remove_referenceIT_E4typeEOS3_:
LFB3685:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	movl	8(%ebp), %eax
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE3685:
	.section	.text$_ZNK9__gnu_cxx13new_allocatorIdE8max_sizeEv,"x"
	.linkonce discard
	.align 2
	.globl	__ZNK9__gnu_cxx13new_allocatorIdE8max_sizeEv
	.def	__ZNK9__gnu_cxx13new_allocatorIdE8max_sizeEv;	.scl	2;	.type	32;	.endef
__ZNK9__gnu_cxx13new_allocatorIdE8max_sizeEv:
LFB3701:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$4, %esp
	movl	%ecx, -4(%ebp)
	movl	$268435455, %eax
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE3701:
	.section	.text$_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEEEPdET0_T_SA_S9_,"x"
	.linkonce discard
	.globl	__ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEEEPdET0_T_SA_S9_
	.def	__ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEEEPdET0_T_SA_S9_;	.scl	2;	.type	32;	.endef
__ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEEEPdET0_T_SA_S9_:
LFB3702:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%ebx
	subl	$20, %esp
	.cfi_offset 3, -12
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	__ZSt12__miter_baseIN9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEEEET_S8_
	movl	%eax, %ebx
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	__ZSt12__miter_baseIN9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEEEET_S8_
	movl	16(%ebp), %edx
	movl	%edx, 8(%esp)
	movl	%ebx, 4(%esp)
	movl	%eax, (%esp)
	call	__ZSt14__copy_move_a2ILb0EN9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEEEPdET1_T0_SA_S9_
	addl	$20, %esp
	popl	%ebx
	.cfi_restore 3
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE3702:
	.section	.text$_ZN9__gnu_cxx13new_allocatorIjE8allocateEjPKv,"x"
	.linkonce discard
	.align 2
	.globl	__ZN9__gnu_cxx13new_allocatorIjE8allocateEjPKv
	.def	__ZN9__gnu_cxx13new_allocatorIjE8allocateEjPKv;	.scl	2;	.type	32;	.endef
__ZN9__gnu_cxx13new_allocatorIjE8allocateEjPKv:
LFB3703:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$40, %esp
	movl	%ecx, -12(%ebp)
	movl	-12(%ebp), %eax
	movl	%eax, %ecx
	call	__ZNK9__gnu_cxx13new_allocatorIjE8max_sizeEv
	cmpl	%eax, 8(%ebp)
	seta	%al
	testb	%al, %al
	je	L367
	call	__ZSt17__throw_bad_allocv
L367:
	movl	8(%ebp), %eax
	sall	$2, %eax
	movl	%eax, (%esp)
	call	__Znwj
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret	$8
	.cfi_endproc
LFE3703:
	.section	.text$_ZSt6fill_nIPjjjET_S1_T0_RKT1_,"x"
	.linkonce discard
	.globl	__ZSt6fill_nIPjjjET_S1_T0_RKT1_
	.def	__ZSt6fill_nIPjjjET_S1_T0_RKT1_;	.scl	2;	.type	32;	.endef
__ZSt6fill_nIPjjjET_S1_T0_RKT1_:
LFB3704:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$24, %esp
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	__ZSt12__niter_baseIPjET_S1_
	movl	16(%ebp), %edx
	movl	%edx, 8(%esp)
	movl	12(%ebp), %edx
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	__ZSt10__fill_n_aIPjjjEN9__gnu_cxx11__enable_ifIXsrSt11__is_scalarIT1_E7__valueET_E6__typeES6_T0_RKS4_
	movl	%eax, 4(%esp)
	leal	8(%ebp), %eax
	movl	%eax, (%esp)
	call	__ZSt12__niter_wrapIPjET_RKS1_S1_
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE3704:
	.section	.text$_ZSt14__copy_move_a2ILb0EN9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEEEPdET1_T0_SA_S9_,"x"
	.linkonce discard
	.globl	__ZSt14__copy_move_a2ILb0EN9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEEEPdET1_T0_SA_S9_
	.def	__ZSt14__copy_move_a2ILb0EN9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEEEPdET1_T0_SA_S9_;	.scl	2;	.type	32;	.endef
__ZSt14__copy_move_a2ILb0EN9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEEEPdET1_T0_SA_S9_:
LFB3716:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%esi
	pushl	%ebx
	subl	$16, %esp
	.cfi_offset 6, -12
	.cfi_offset 3, -16
	movl	16(%ebp), %eax
	movl	%eax, (%esp)
	call	__ZSt12__niter_baseIPdET_S1_
	movl	%eax, %esi
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	__ZSt12__niter_baseIPKdSt6vectorIdSaIdEEET_N9__gnu_cxx17__normal_iteratorIS5_T0_EE
	movl	%eax, %ebx
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	__ZSt12__niter_baseIPKdSt6vectorIdSaIdEEET_N9__gnu_cxx17__normal_iteratorIS5_T0_EE
	movl	%esi, 8(%esp)
	movl	%ebx, 4(%esp)
	movl	%eax, (%esp)
	call	__ZSt13__copy_move_aILb0EPKdPdET1_T0_S4_S3_
	movl	%eax, 4(%esp)
	leal	16(%ebp), %eax
	movl	%eax, (%esp)
	call	__ZSt12__niter_wrapIPdET_RKS1_S1_
	addl	$16, %esp
	popl	%ebx
	.cfi_restore 3
	popl	%esi
	.cfi_restore 6
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE3716:
	.section	.text$_ZSt12__niter_baseIPjET_S1_,"x"
	.linkonce discard
	.globl	__ZSt12__niter_baseIPjET_S1_
	.def	__ZSt12__niter_baseIPjET_S1_;	.scl	2;	.type	32;	.endef
__ZSt12__niter_baseIPjET_S1_:
LFB3717:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	movl	8(%ebp), %eax
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE3717:
	.section	.text$_ZSt10__fill_n_aIPjjjEN9__gnu_cxx11__enable_ifIXsrSt11__is_scalarIT1_E7__valueET_E6__typeES6_T0_RKS4_,"x"
	.linkonce discard
	.globl	__ZSt10__fill_n_aIPjjjEN9__gnu_cxx11__enable_ifIXsrSt11__is_scalarIT1_E7__valueET_E6__typeES6_T0_RKS4_
	.def	__ZSt10__fill_n_aIPjjjEN9__gnu_cxx11__enable_ifIXsrSt11__is_scalarIT1_E7__valueET_E6__typeES6_T0_RKS4_;	.scl	2;	.type	32;	.endef
__ZSt10__fill_n_aIPjjjEN9__gnu_cxx11__enable_ifIXsrSt11__is_scalarIT1_E7__valueET_E6__typeES6_T0_RKS4_:
LFB3718:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$16, %esp
	movl	16(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -8(%ebp)
	movl	12(%ebp), %eax
	movl	%eax, -4(%ebp)
L377:
	cmpl	$0, -4(%ebp)
	je	L376
	movl	8(%ebp), %eax
	movl	-8(%ebp), %edx
	movl	%edx, (%eax)
	subl	$1, -4(%ebp)
	addl	$4, 8(%ebp)
	jmp	L377
L376:
	movl	8(%ebp), %eax
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE3718:
	.section	.text$_ZSt12__niter_wrapIPjET_RKS1_S1_,"x"
	.linkonce discard
	.globl	__ZSt12__niter_wrapIPjET_RKS1_S1_
	.def	__ZSt12__niter_wrapIPjET_RKS1_S1_;	.scl	2;	.type	32;	.endef
__ZSt12__niter_wrapIPjET_RKS1_S1_:
LFB3719:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	movl	12(%ebp), %eax
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE3719:
	.text
	.def	___tcf_0;	.scl	3;	.type	32;	.endef
___tcf_0:
LFB3737:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$8, %esp
	movl	$__ZStL8__ioinit, %ecx
	call	__ZNSt8ios_base4InitD1Ev
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE3737:
	.def	__Z41__static_initialization_and_destruction_0ii;	.scl	3;	.type	32;	.endef
__Z41__static_initialization_and_destruction_0ii:
LFB3736:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$24, %esp
	cmpl	$1, 8(%ebp)
	jne	L384
	cmpl	$65535, 12(%ebp)
	jne	L384
	movl	$__ZStL8__ioinit, %ecx
	call	__ZNSt8ios_base4InitC1Ev
	movl	$___tcf_0, (%esp)
	call	_atexit
L384:
	nop
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE3736:
	.def	__GLOBAL__sub_I__ZN9Particion4unirEii;	.scl	3;	.type	32;	.endef
__GLOBAL__sub_I__ZN9Particion4unirEii:
LFB3738:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$24, %esp
	movl	$65535, 4(%esp)
	movl	$1, (%esp)
	call	__Z41__static_initialization_and_destruction_0ii
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE3738:
	.section	.ctors,"w"
	.align 4
	.long	__GLOBAL__sub_I__ZN9Particion4unirEii
	.section .rdata,"dr"
	.align 8
LC2:
	.long	-1
	.long	2146435071
	.ident	"GCC: (MinGW.org GCC Build-20200227-1) 9.2.0"
	.def	__Unwind_Resume;	.scl	2;	.type	32;	.endef
	.def	_memset;	.scl	2;	.type	32;	.endef
	.def	___cxa_begin_catch;	.scl	2;	.type	32;	.endef
	.def	___cxa_rethrow;	.scl	2;	.type	32;	.endef
	.def	___cxa_end_catch;	.scl	2;	.type	32;	.endef
	.def	__ZSt20__throw_length_errorPKc;	.scl	2;	.type	32;	.endef
	.def	__ZdlPv;	.scl	2;	.type	32;	.endef
	.def	__ZSt17__throw_bad_allocv;	.scl	2;	.type	32;	.endef
	.def	__Znwj;	.scl	2;	.type	32;	.endef
	.def	_memmove;	.scl	2;	.type	32;	.endef
	.def	__ZNSt8ios_base4InitD1Ev;	.scl	2;	.type	32;	.endef
	.def	__ZNSt8ios_base4InitC1Ev;	.scl	2;	.type	32;	.endef
	.def	_atexit;	.scl	2;	.type	32;	.endef
