.text
.globl	fcrypt_body
.type	fcrypt_body,@function
.align	16
fcrypt_body:
.L_fcrypt_body_begin:
	%ifdef __CET__

.byte	243,15,30,251
	%endif

	pushl	%ebp
	pushl	%ebx
	pushl	%esi
	pushl	%edi


	xorl	%edi,%edi
	xorl	%esi,%esi
	call	.L000PIC_me_up
.L000PIC_me_up:
	popl	%edx
	leal	_GLOBAL_OFFSET_TABLE_+[.-.L000PIC_me_up](%edx),%edx
	movl	DES_SPtrans@GOT(%edx),%edx
	pushl	%edx
	movl	28(%esp),%ebp
	pushl	$25
.L001start:


	movl	36(%esp),%eax
	movl	%esi,%edx
	shrl	$16,%edx
	movl	40(%esp),%ecx
	xorl	%esi,%edx
	andl	%edx,%eax
	andl	%ecx,%edx
	movl	%eax,%ebx
	shll	$16,%ebx
	movl	%edx,%ecx
	shll	$16,%ecx
	xorl	%ebx,%eax
	xorl	%ecx,%edx
	movl	(%ebp),%ebx
	xorl	%ebx,%eax
	movl	4(%ebp),%ecx
	xorl	%esi,%eax
	xorl	%esi,%edx
	xorl	%ecx,%edx
	andl	$0xfcfcfcfc,%eax
	xorl	%ebx,%ebx
	andl	$0xcfcfcfcf,%edx
	xorl	%ecx,%ecx
	movb	%al,%bl
	movb	%ah,%cl
	rorl	$4,%edx
	movl	4(%esp),%ebp
	xorl	(%ebp,%ebx,1),%edi
	movb	%dl,%bl
	xorl	0x200(%ebp,%ecx,1),%edi
	movb	%dh,%cl
	shrl	$16,%eax
	xorl	0x100(%ebp,%ebx,1),%edi
	movb	%ah,%bl
	shrl	$16,%edx
	xorl	0x300(%ebp,%ecx,1),%edi
	movb	%dh,%cl
	andl	$0xff,%eax
	andl	$0xff,%edx
	movl	0x600(%ebp,%ebx,1),%ebx
	xorl	%ebx,%edi
	movl	0x700(%ebp,%ecx,1),%ebx
	xorl	%ebx,%edi
	movl	0x400(%ebp,%eax,1),%ebx
	xorl	%ebx,%edi
	movl	0x500(%ebp,%edx,1),%ebx
	xorl	%ebx,%edi
	movl	32(%esp),%ebp


	movl	36(%esp),%eax
	movl	%edi,%edx
	shrl	$16,%edx
	movl	40(%esp),%ecx
	xorl	%edi,%edx
	andl	%edx,%eax
	andl	%ecx,%edx
	movl	%eax,%ebx
	shll	$16,%ebx
	movl	%edx,%ecx
	shll	$16,%ecx
	xorl	%ebx,%eax
	xorl	%ecx,%edx
	movl	8(%ebp),%ebx
	xorl	%ebx,%eax
	movl	12(%ebp),%ecx
	xorl	%edi,%eax
	xorl	%edi,%edx
	xorl	%ecx,%edx
	andl	$0xfcfcfcfc,%eax
	xorl	%ebx,%ebx
	andl	$0xcfcfcfcf,%edx
	xorl	%ecx,%ecx
	movb	%al,%bl
	movb	%ah,%cl
	rorl	$4,%edx
	movl	4(%esp),%ebp
	xorl	(%ebp,%ebx,1),%esi
	movb	%dl,%bl
	xorl	0x200(%ebp,%ecx,1),%esi
	movb	%dh,%cl
	shrl	$16,%eax
	xorl	0x100(%ebp,%ebx,1),%esi
	movb	%ah,%bl
	shrl	$16,%edx
	xorl	0x300(%ebp,%ecx,1),%esi
	movb	%dh,%cl
	andl	$0xff,%eax
	andl	$0xff,%edx
	movl	0x600(%ebp,%ebx,1),%ebx
	xorl	%ebx,%esi
	movl	0x700(%ebp,%ecx,1),%ebx
	xorl	%ebx,%esi
	movl	0x400(%ebp,%eax,1),%ebx
	xorl	%ebx,%esi
	movl	0x500(%ebp,%edx,1),%ebx
	xorl	%ebx,%esi
	movl	32(%esp),%ebp


	movl	36(%esp),%eax
	movl	%esi,%edx
	shrl	$16,%edx
	movl	40(%esp),%ecx
	xorl	%esi,%edx
	andl	%edx,%eax
	andl	%ecx,%edx
	movl	%eax,%ebx
	shll	$16,%ebx
	movl	%edx,%ecx
	shll	$16,%ecx
	xorl	%ebx,%eax
	xorl	%ecx,%edx
	movl	16(%ebp),%ebx
	xorl	%ebx,%eax
	movl	20(%ebp),%ecx
	xorl	%esi,%eax
	xorl	%esi,%edx
	xorl	%ecx,%edx
	andl	$0xfcfcfcfc,%eax
	xorl	%ebx,%ebx
	andl	$0xcfcfcfcf,%edx
	xorl	%ecx,%ecx
	movb	%al,%bl
	movb	%ah,%cl
	rorl	$4,%edx
	movl	4(%esp),%ebp
	xorl	(%ebp,%ebx,1),%edi
	movb	%dl,%bl
	xorl	0x200(%ebp,%ecx,1),%edi
	movb	%dh,%cl
	shrl	$16,%eax
	xorl	0x100(%ebp,%ebx,1),%edi
	movb	%ah,%bl
	shrl	$16,%edx
	xorl	0x300(%ebp,%ecx,1),%edi
	movb	%dh,%cl
	andl	$0xff,%eax
	andl	$0xff,%edx
	movl	0x600(%ebp,%ebx,1),%ebx
	xorl	%ebx,%edi
	movl	0x700(%ebp,%ecx,1),%ebx
	xorl	%ebx,%edi
	movl	0x400(%ebp,%eax,1),%ebx
	xorl	%ebx,%edi
	movl	0x500(%ebp,%edx,1),%ebx
	xorl	%ebx,%edi
	movl	32(%esp),%ebp


	movl	36(%esp),%eax
	movl	%edi,%edx
	shrl	$16,%edx
	movl	40(%esp),%ecx
	xorl	%edi,%edx
	andl	%edx,%eax
	andl	%ecx,%edx
	movl	%eax,%ebx
	shll	$16,%ebx
	movl	%edx,%ecx
	shll	$16,%ecx
	xorl	%ebx,%eax
	xorl	%ecx,%edx
	movl	24(%ebp),%ebx
	xorl	%ebx,%eax
	movl	28(%ebp),%ecx
	xorl	%edi,%eax
	xorl	%edi,%edx
	xorl	%ecx,%edx
	andl	$0xfcfcfcfc,%eax
	xorl	%ebx,%ebx
	andl	$0xcfcfcfcf,%edx
	xorl	%ecx,%ecx
	movb	%al,%bl
	movb	%ah,%cl
	rorl	$4,%edx
	movl	4(%esp),%ebp
	xorl	(%ebp,%ebx,1),%esi
	movb	%dl,%bl
	xorl	0x200(%ebp,%ecx,1),%esi
	movb	%dh,%cl
	shrl	$16,%eax
	xorl	0x100(%ebp,%ebx,1),%esi
	movb	%ah,%bl
	shrl	$16,%edx
	xorl	0x300(%ebp,%ecx,1),%esi
	movb	%dh,%cl
	andl	$0xff,%eax
	andl	$0xff,%edx
	movl	0x600(%ebp,%ebx,1),%ebx
	xorl	%ebx,%esi
	movl	0x700(%ebp,%ecx,1),%ebx
	xorl	%ebx,%esi
	movl	0x400(%ebp,%eax,1),%ebx
	xorl	%ebx,%esi
	movl	0x500(%ebp,%edx,1),%ebx
	xorl	%ebx,%esi
	movl	32(%esp),%ebp


	movl	36(%esp),%eax
	movl	%esi,%edx
	shrl	$16,%edx
	movl	40(%esp),%ecx
	xorl	%esi,%edx
	andl	%edx,%eax
	andl	%ecx,%edx
	movl	%eax,%ebx
	shll	$16,%ebx
	movl	%edx,%ecx
	shll	$16,%ecx
	xorl	%ebx,%eax
	xorl	%ecx,%edx
	movl	32(%ebp),%ebx
	xorl	%ebx,%eax
	movl	36(%ebp),%ecx
	xorl	%esi,%eax
	xorl	%esi,%edx
	xorl	%ecx,%edx
	andl	$0xfcfcfcfc,%eax
	xorl	%ebx,%ebx
	andl	$0xcfcfcfcf,%edx
	xorl	%ecx,%ecx
	movb	%al,%bl
	movb	%ah,%cl
	rorl	$4,%edx
	movl	4(%esp),%ebp
	xorl	(%ebp,%ebx,1),%edi
	movb	%dl,%bl
	xorl	0x200(%ebp,%ecx,1),%edi
	movb	%dh,%cl
	shrl	$16,%eax
	xorl	0x100(%ebp,%ebx,1),%edi
	movb	%ah,%bl
	shrl	$16,%edx
	xorl	0x300(%ebp,%ecx,1),%edi
	movb	%dh,%cl
	andl	$0xff,%eax
	andl	$0xff,%edx
	movl	0x600(%ebp,%ebx,1),%ebx
	xorl	%ebx,%edi
	movl	0x700(%ebp,%ecx,1),%ebx
	xorl	%ebx,%edi
	movl	0x400(%ebp,%eax,1),%ebx
	xorl	%ebx,%edi
	movl	0x500(%ebp,%edx,1),%ebx
	xorl	%ebx,%edi
	movl	32(%esp),%ebp


	movl	36(%esp),%eax
	movl	%edi,%edx
	shrl	$16,%edx
	movl	40(%esp),%ecx
	xorl	%edi,%edx
	andl	%edx,%eax
	andl	%ecx,%edx
	movl	%eax,%ebx
	shll	$16,%ebx
	movl	%edx,%ecx
	shll	$16,%ecx
	xorl	%ebx,%eax
	xorl	%ecx,%edx
	movl	40(%ebp),%ebx
	xorl	%ebx,%eax
	movl	44(%ebp),%ecx
	xorl	%edi,%eax
	xorl	%edi,%edx
	xorl	%ecx,%edx
	andl	$0xfcfcfcfc,%eax
	xorl	%ebx,%ebx
	andl	$0xcfcfcfcf,%edx
	xorl	%ecx,%ecx
	movb	%al,%bl
	movb	%ah,%cl
	rorl	$4,%edx
	movl	4(%esp),%ebp
	xorl	(%ebp,%ebx,1),%esi
	movb	%dl,%bl
	xorl	0x200(%ebp,%ecx,1),%esi
	movb	%dh,%cl
	shrl	$16,%eax
	xorl	0x100(%ebp,%ebx,1),%esi
	movb	%ah,%bl
	shrl	$16,%edx
	xorl	0x300(%ebp,%ecx,1),%esi
	movb	%dh,%cl
	andl	$0xff,%eax
	andl	$0xff,%edx
	movl	0x600(%ebp,%ebx,1),%ebx
	xorl	%ebx,%esi
	movl	0x700(%ebp,%ecx,1),%ebx
	xorl	%ebx,%esi
	movl	0x400(%ebp,%eax,1),%ebx
	xorl	%ebx,%esi
	movl	0x500(%ebp,%edx,1),%ebx
	xorl	%ebx,%esi
	movl	32(%esp),%ebp


	movl	36(%esp),%eax
	movl	%esi,%edx
	shrl	$16,%edx
	movl	40(%esp),%ecx
	xorl	%esi,%edx
	andl	%edx,%eax
	andl	%ecx,%edx
	movl	%eax,%ebx
	shll	$16,%ebx
	movl	%edx,%ecx
	shll	$16,%ecx
	xorl	%ebx,%eax
	xorl	%ecx,%edx
	movl	48(%ebp),%ebx
	xorl	%ebx,%eax
	movl	52(%ebp),%ecx
	xorl	%esi,%eax
	xorl	%esi,%edx
	xorl	%ecx,%edx
	andl	$0xfcfcfcfc,%eax
	xorl	%ebx,%ebx
	andl	$0xcfcfcfcf,%edx
	xorl	%ecx,%ecx
	movb	%al,%bl
	movb	%ah,%cl
	rorl	$4,%edx
	movl	4(%esp),%ebp
	xorl	(%ebp,%ebx,1),%edi
	movb	%dl,%bl
	xorl	0x200(%ebp,%ecx,1),%edi
	movb	%dh,%cl
	shrl	$16,%eax
	xorl	0x100(%ebp,%ebx,1),%edi
	movb	%ah,%bl
	shrl	$16,%edx
	xorl	0x300(%ebp,%ecx,1),%edi
	movb	%dh,%cl
	andl	$0xff,%eax
	andl	$0xff,%edx
	movl	0x600(%ebp,%ebx,1),%ebx
	xorl	%ebx,%edi
	movl	0x700(%ebp,%ecx,1),%ebx
	xorl	%ebx,%edi
	movl	0x400(%ebp,%eax,1),%ebx
	xorl	%ebx,%edi
	movl	0x500(%ebp,%edx,1),%ebx
	xorl	%ebx,%edi
	movl	32(%esp),%ebp


	movl	36(%esp),%eax
	movl	%edi,%edx
	shrl	$16,%edx
	movl	40(%esp),%ecx
	xorl	%edi,%edx
	andl	%edx,%eax
	andl	%ecx,%edx
	movl	%eax,%ebx
	shll	$16,%ebx
	movl	%edx,%ecx
	shll	$16,%ecx
	xorl	%ebx,%eax
	xorl	%ecx,%edx
	movl	56(%ebp),%ebx
	xorl	%ebx,%eax
	movl	60(%ebp),%ecx
	xorl	%edi,%eax
	xorl	%edi,%edx
	xorl	%ecx,%edx
	andl	$0xfcfcfcfc,%eax
	xorl	%ebx,%ebx
	andl	$0xcfcfcfcf,%edx
	xorl	%ecx,%ecx
	movb	%al,%bl
	movb	%ah,%cl
	rorl	$4,%edx
	movl	4(%esp),%ebp
	xorl	(%ebp,%ebx,1),%esi
	movb	%dl,%bl
	xorl	0x200(%ebp,%ecx,1),%esi
	movb	%dh,%cl
	shrl	$16,%eax
	xorl	0x100(%ebp,%ebx,1),%esi
	movb	%ah,%bl
	shrl	$16,%edx
	xorl	0x300(%ebp,%ecx,1),%esi
	movb	%dh,%cl
	andl	$0xff,%eax
	andl	$0xff,%edx
	movl	0x600(%ebp,%ebx,1),%ebx
	xorl	%ebx,%esi
	movl	0x700(%ebp,%ecx,1),%ebx
	xorl	%ebx,%esi
	movl	0x400(%ebp,%eax,1),%ebx
	xorl	%ebx,%esi
	movl	0x500(%ebp,%edx,1),%ebx
	xorl	%ebx,%esi
	movl	32(%esp),%ebp


	movl	36(%esp),%eax
	movl	%esi,%edx
	shrl	$16,%edx
	movl	40(%esp),%ecx
	xorl	%esi,%edx
	andl	%edx,%eax
	andl	%ecx,%edx
	movl	%eax,%ebx
	shll	$16,%ebx
	movl	%edx,%ecx
	shll	$16,%ecx
	xorl	%ebx,%eax
	xorl	%ecx,%edx
	movl	64(%ebp),%ebx
	xorl	%ebx,%eax
	movl	68(%ebp),%ecx
	xorl	%esi,%eax
	xorl	%esi,%edx
	xorl	%ecx,%edx
	andl	$0xfcfcfcfc,%eax
	xorl	%ebx,%ebx
	andl	$0xcfcfcfcf,%edx
	xorl	%ecx,%ecx
	movb	%al,%bl
	movb	%ah,%cl
	rorl	$4,%edx
	movl	4(%esp),%ebp
	xorl	(%ebp,%ebx,1),%edi
	movb	%dl,%bl
	xorl	0x200(%ebp,%ecx,1),%edi
	movb	%dh,%cl
	shrl	$16,%eax
	xorl	0x100(%ebp,%ebx,1),%edi
	movb	%ah,%bl
	shrl	$16,%edx
	xorl	0x300(%ebp,%ecx,1),%edi
	movb	%dh,%cl
	andl	$0xff,%eax
	andl	$0xff,%edx
	movl	0x600(%ebp,%ebx,1),%ebx
	xorl	%ebx,%edi
	movl	0x700(%ebp,%ecx,1),%ebx
	xorl	%ebx,%edi
	movl	0x400(%ebp,%eax,1),%ebx
	xorl	%ebx,%edi
	movl	0x500(%ebp,%edx,1),%ebx
	xorl	%ebx,%edi
	movl	32(%esp),%ebp


	movl	36(%esp),%eax
	movl	%edi,%edx
	shrl	$16,%edx
	movl	40(%esp),%ecx
	xorl	%edi,%edx
	andl	%edx,%eax
	andl	%ecx,%edx
	movl	%eax,%ebx
	shll	$16,%ebx
	movl	%edx,%ecx
	shll	$16,%ecx
	xorl	%ebx,%eax
	xorl	%ecx,%edx
	movl	72(%ebp),%ebx
	xorl	%ebx,%eax
	movl	76(%ebp),%ecx
	xorl	%edi,%eax
	xorl	%edi,%edx
	xorl	%ecx,%edx
	andl	$0xfcfcfcfc,%eax
	xorl	%ebx,%ebx
	andl	$0xcfcfcfcf,%edx
	xorl	%ecx,%ecx
	movb	%al,%bl
	movb	%ah,%cl
	rorl	$4,%edx
	movl	4(%esp),%ebp
	xorl	(%ebp,%ebx,1),%esi
	movb	%dl,%bl
	xorl	0x200(%ebp,%ecx,1),%esi
	movb	%dh,%cl
	shrl	$16,%eax
	xorl	0x100(%ebp,%ebx,1),%esi
	movb	%ah,%bl
	shrl	$16,%edx
	xorl	0x300(%ebp,%ecx,1),%esi
	movb	%dh,%cl
	andl	$0xff,%eax
	andl	$0xff,%edx
	movl	0x600(%ebp,%ebx,1),%ebx
	xorl	%ebx,%esi
	movl	0x700(%ebp,%ecx,1),%ebx
	xorl	%ebx,%esi
	movl	0x400(%ebp,%eax,1),%ebx
	xorl	%ebx,%esi
	movl	0x500(%ebp,%edx,1),%ebx
	xorl	%ebx,%esi
	movl	32(%esp),%ebp


	movl	36(%esp),%eax
	movl	%esi,%edx
	shrl	$16,%edx
	movl	40(%esp),%ecx
	xorl	%esi,%edx
	andl	%edx,%eax
	andl	%ecx,%edx
	movl	%eax,%ebx
	shll	$16,%ebx
	movl	%edx,%ecx
	shll	$16,%ecx
	xorl	%ebx,%eax
	xorl	%ecx,%edx
	movl	80(%ebp),%ebx
	xorl	%ebx,%eax
	movl	84(%ebp),%ecx
	xorl	%esi,%eax
	xorl	%esi,%edx
	xorl	%ecx,%edx
	andl	$0xfcfcfcfc,%eax
	xorl	%ebx,%ebx
	andl	$0xcfcfcfcf,%edx
	xorl	%ecx,%ecx
	movb	%al,%bl
	movb	%ah,%cl
	rorl	$4,%edx
	movl	4(%esp),%ebp
	xorl	(%ebp,%ebx,1),%edi
	movb	%dl,%bl
	xorl	0x200(%ebp,%ecx,1),%edi
	movb	%dh,%cl
	shrl	$16,%eax
	xorl	0x100(%ebp,%ebx,1),%edi
	movb	%ah,%bl
	shrl	$16,%edx
	xorl	0x300(%ebp,%ecx,1),%edi
	movb	%dh,%cl
	andl	$0xff,%eax
	andl	$0xff,%edx
	movl	0x600(%ebp,%ebx,1),%ebx
	xorl	%ebx,%edi
	movl	0x700(%ebp,%ecx,1),%ebx
	xorl	%ebx,%edi
	movl	0x400(%ebp,%eax,1),%ebx
	xorl	%ebx,%edi
	movl	0x500(%ebp,%edx,1),%ebx
	xorl	%ebx,%edi
	movl	32(%esp),%ebp


	movl	36(%esp),%eax
	movl	%edi,%edx
	shrl	$16,%edx
	movl	40(%esp),%ecx
	xorl	%edi,%edx
	andl	%edx,%eax
	andl	%ecx,%edx
	movl	%eax,%ebx
	shll	$16,%ebx
	movl	%edx,%ecx
	shll	$16,%ecx
	xorl	%ebx,%eax
	xorl	%ecx,%edx
	movl	88(%ebp),%ebx
	xorl	%ebx,%eax
	movl	92(%ebp),%ecx
	xorl	%edi,%eax
	xorl	%edi,%edx
	xorl	%ecx,%edx
	andl	$0xfcfcfcfc,%eax
	xorl	%ebx,%ebx
	andl	$0xcfcfcfcf,%edx
	xorl	%ecx,%ecx
	movb	%al,%bl
	movb	%ah,%cl
	rorl	$4,%edx
	movl	4(%esp),%ebp
	xorl	(%ebp,%ebx,1),%esi
	movb	%dl,%bl
	xorl	0x200(%ebp,%ecx,1),%esi
	movb	%dh,%cl
	shrl	$16,%eax
	xorl	0x100(%ebp,%ebx,1),%esi
	movb	%ah,%bl
	shrl	$16,%edx
	xorl	0x300(%ebp,%ecx,1),%esi
	movb	%dh,%cl
	andl	$0xff,%eax
	andl	$0xff,%edx
	movl	0x600(%ebp,%ebx,1),%ebx
	xorl	%ebx,%esi
	movl	0x700(%ebp,%ecx,1),%ebx
	xorl	%ebx,%esi
	movl	0x400(%ebp,%eax,1),%ebx
	xorl	%ebx,%esi
	movl	0x500(%ebp,%edx,1),%ebx
	xorl	%ebx,%esi
	movl	32(%esp),%ebp


	movl	36(%esp),%eax
	movl	%esi,%edx
	shrl	$16,%edx
	movl	40(%esp),%ecx
	xorl	%esi,%edx
	andl	%edx,%eax
	andl	%ecx,%edx
	movl	%eax,%ebx
	shll	$16,%ebx
	movl	%edx,%ecx
	shll	$16,%ecx
	xorl	%ebx,%eax
	xorl	%ecx,%edx
	movl	96(%ebp),%ebx
	xorl	%ebx,%eax
	movl	100(%ebp),%ecx
	xorl	%esi,%eax
	xorl	%esi,%edx
	xorl	%ecx,%edx
	andl	$0xfcfcfcfc,%eax
	xorl	%ebx,%ebx
	andl	$0xcfcfcfcf,%edx
	xorl	%ecx,%ecx
	movb	%al,%bl
	movb	%ah,%cl
	rorl	$4,%edx
	movl	4(%esp),%ebp
	xorl	(%ebp,%ebx,1),%edi
	movb	%dl,%bl
	xorl	0x200(%ebp,%ecx,1),%edi
	movb	%dh,%cl
	shrl	$16,%eax
	xorl	0x100(%ebp,%ebx,1),%edi
	movb	%ah,%bl
	shrl	$16,%edx
	xorl	0x300(%ebp,%ecx,1),%edi
	movb	%dh,%cl
	andl	$0xff,%eax
	andl	$0xff,%edx
	movl	0x600(%ebp,%ebx,1),%ebx
	xorl	%ebx,%edi
	movl	0x700(%ebp,%ecx,1),%ebx
	xorl	%ebx,%edi
	movl	0x400(%ebp,%eax,1),%ebx
	xorl	%ebx,%edi
	movl	0x500(%ebp,%edx,1),%ebx
	xorl	%ebx,%edi
	movl	32(%esp),%ebp


	movl	36(%esp),%eax
	movl	%edi,%edx
	shrl	$16,%edx
	movl	40(%esp),%ecx
	xorl	%edi,%edx
	andl	%edx,%eax
	andl	%ecx,%edx
	movl	%eax,%ebx
	shll	$16,%ebx
	movl	%edx,%ecx
	shll	$16,%ecx
	xorl	%ebx,%eax
	xorl	%ecx,%edx
	movl	104(%ebp),%ebx
	xorl	%ebx,%eax
	movl	108(%ebp),%ecx
	xorl	%edi,%eax
	xorl	%edi,%edx
	xorl	%ecx,%edx
	andl	$0xfcfcfcfc,%eax
	xorl	%ebx,%ebx
	andl	$0xcfcfcfcf,%edx
	xorl	%ecx,%ecx
	movb	%al,%bl
	movb	%ah,%cl
	rorl	$4,%edx
	movl	4(%esp),%ebp
	xorl	(%ebp,%ebx,1),%esi
	movb	%dl,%bl
	xorl	0x200(%ebp,%ecx,1),%esi
	movb	%dh,%cl
	shrl	$16,%eax
	xorl	0x100(%ebp,%ebx,1),%esi
	movb	%ah,%bl
	shrl	$16,%edx
	xorl	0x300(%ebp,%ecx,1),%esi
	movb	%dh,%cl
	andl	$0xff,%eax
	andl	$0xff,%edx
	movl	0x600(%ebp,%ebx,1),%ebx
	xorl	%ebx,%esi
	movl	0x700(%ebp,%ecx,1),%ebx
	xorl	%ebx,%esi
	movl	0x400(%ebp,%eax,1),%ebx
	xorl	%ebx,%esi
	movl	0x500(%ebp,%edx,1),%ebx
	xorl	%ebx,%esi
	movl	32(%esp),%ebp


	movl	36(%esp),%eax
	movl	%esi,%edx
	shrl	$16,%edx
	movl	40(%esp),%ecx
	xorl	%esi,%edx
	andl	%edx,%eax
	andl	%ecx,%edx
	movl	%eax,%ebx
	shll	$16,%ebx
	movl	%edx,%ecx
	shll	$16,%ecx
	xorl	%ebx,%eax
	xorl	%ecx,%edx
	movl	112(%ebp),%ebx
	xorl	%ebx,%eax
	movl	116(%ebp),%ecx
	xorl	%esi,%eax
	xorl	%esi,%edx
	xorl	%ecx,%edx
	andl	$0xfcfcfcfc,%eax
	xorl	%ebx,%ebx
	andl	$0xcfcfcfcf,%edx
	xorl	%ecx,%ecx
	movb	%al,%bl
	movb	%ah,%cl
	rorl	$4,%edx
	movl	4(%esp),%ebp
	xorl	(%ebp,%ebx,1),%edi
	movb	%dl,%bl
	xorl	0x200(%ebp,%ecx,1),%edi
	movb	%dh,%cl
	shrl	$16,%eax
	xorl	0x100(%ebp,%ebx,1),%edi
	movb	%ah,%bl
	shrl	$16,%edx
	xorl	0x300(%ebp,%ecx,1),%edi
	movb	%dh,%cl
	andl	$0xff,%eax
	andl	$0xff,%edx
	movl	0x600(%ebp,%ebx,1),%ebx
	xorl	%ebx,%edi
	movl	0x700(%ebp,%ecx,1),%ebx
	xorl	%ebx,%edi
	movl	0x400(%ebp,%eax,1),%ebx
	xorl	%ebx,%edi
	movl	0x500(%ebp,%edx,1),%ebx
	xorl	%ebx,%edi
	movl	32(%esp),%ebp


	movl	36(%esp),%eax
	movl	%edi,%edx
	shrl	$16,%edx
	movl	40(%esp),%ecx
	xorl	%edi,%edx
	andl	%edx,%eax
	andl	%ecx,%edx
	movl	%eax,%ebx
	shll	$16,%ebx
	movl	%edx,%ecx
	shll	$16,%ecx
	xorl	%ebx,%eax
	xorl	%ecx,%edx
	movl	120(%ebp),%ebx
	xorl	%ebx,%eax
	movl	124(%ebp),%ecx
	xorl	%edi,%eax
	xorl	%edi,%edx
	xorl	%ecx,%edx
	andl	$0xfcfcfcfc,%eax
	xorl	%ebx,%ebx
	andl	$0xcfcfcfcf,%edx
	xorl	%ecx,%ecx
	movb	%al,%bl
	movb	%ah,%cl
	rorl	$4,%edx
	movl	4(%esp),%ebp
	xorl	(%ebp,%ebx,1),%esi
	movb	%dl,%bl
	xorl	0x200(%ebp,%ecx,1),%esi
	movb	%dh,%cl
	shrl	$16,%eax
	xorl	0x100(%ebp,%ebx,1),%esi
	movb	%ah,%bl
	shrl	$16,%edx
	xorl	0x300(%ebp,%ecx,1),%esi
	movb	%dh,%cl
	andl	$0xff,%eax
	andl	$0xff,%edx
	movl	0x600(%ebp,%ebx,1),%ebx
	xorl	%ebx,%esi
	movl	0x700(%ebp,%ecx,1),%ebx
	xorl	%ebx,%esi
	movl	0x400(%ebp,%eax,1),%ebx
	xorl	%ebx,%esi
	movl	0x500(%ebp,%edx,1),%ebx
	xorl	%ebx,%esi
	movl	32(%esp),%ebp
	movl	(%esp),%ebx
	movl	%edi,%eax
	decl	%ebx
	movl	%esi,%edi
	movl	%eax,%esi
	movl	%ebx,(%esp)
	jnz	.L001start


	movl	28(%esp),%edx
	rorl	$1,%edi
	movl	%esi,%eax
	xorl	%edi,%esi
	andl	$0xaaaaaaaa,%esi
	xorl	%esi,%eax
	xorl	%esi,%edi

	roll	$23,%eax
	movl	%eax,%esi
	xorl	%edi,%eax
	andl	$0x03fc03fc,%eax
	xorl	%eax,%esi
	xorl	%eax,%edi

	roll	$10,%esi
	movl	%esi,%eax
	xorl	%edi,%esi
	andl	$0x33333333,%esi
	xorl	%esi,%eax
	xorl	%esi,%edi

	roll	$18,%edi
	movl	%edi,%esi
	xorl	%eax,%edi
	andl	$0xfff0000f,%edi
	xorl	%edi,%esi
	xorl	%edi,%eax

	roll	$12,%esi
	movl	%esi,%edi
	xorl	%eax,%esi
	andl	$0xf0f0f0f0,%esi
	xorl	%esi,%edi
	xorl	%esi,%eax

	rorl	$4,%eax
	movl	%eax,(%edx)
	movl	%edi,4(%edx)
	addl	$8,%esp
	popl	%edi
	popl	%esi
	popl	%ebx
	popl	%ebp
	ret
.size	fcrypt_body,.-.L_fcrypt_body_begin

	.section ".note.gnu.property", "a"
	.p2align 2
	.long 1f - 0f
	.long 4f - 1f
	.long 5
0:
	.asciz "GNU"
1:
	.p2align 2
	.long 0xc0000002
	.long 3f - 2f
2:
	.long 3
3:
	.p2align 2
4:
