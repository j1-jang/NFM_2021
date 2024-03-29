	.section	.text
	.align	32
	#Procedure 0x4014c9
	.globl sub_4014c9
	.type sub_4014c9, @function
sub_4014c9:

	hlt	
	.section	.text
	.align	32
	#Procedure 0x4014ca
	.globl sub_4014ca
	.type sub_4014ca, @function
sub_4014ca:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401502
	.globl sub_401502
	.type sub_401502, @function
sub_401502:

	nop	dword ptr [rax]
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40154a
	.globl sub_40154a
	.type sub_40154a, @function
sub_40154a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40156c
	.globl sub_40156c
	.type sub_40156c, @function
sub_40156c:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40157d
	.globl sub_40157d
	.type sub_40157d, @function
sub_40157d:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x401596
	.globl sub_401596
	.type sub_401596, @function
sub_401596:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4015a0
	.globl set_quoting_flags
	.type set_quoting_flags, @function
set_quoting_flags:

	test	rdi, rdi
	mov	ecx, OFFSET FLAT:default_quoting_options
	cmovne	rcx, rdi
	mov	eax, dword ptr [rcx + 4]
	mov	dword ptr [rcx + 4], esi
	ret	
	.section	.text
	.align	32
	#Procedure 0x4015b3
	.globl sub_4015b3
	.type sub_4015b3, @function
sub_4015b3:

	nop	word ptr cs:[rax + rax]
.label_15:
	test	rcx, rcx
	jne	.label_9
	mov	eax, 0x80
	xor	edx, edx
	div	rbx
	xor	ecx, ecx
	cmp	rbx, 0x80
	seta	cl
	add	rcx, rax
.label_9:
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rcx
	jb	.label_13
.label_14:
	mov	qword ptr [rsi], rcx
	imul	rbx, rcx
	test	rdi, rdi
	je	.label_12
	test	rbx, rbx
	jne	.label_12
	call	free
	xor	eax, eax
	pop	rbx
	ret	
	.section	.text
	.align	32
	#Procedure 0x40160c
	.globl x2nrealloc
	.type x2nrealloc, @function
x2nrealloc:

	push	rbx
	mov	rbx, rdx
	mov	rcx, qword ptr [rsi]
	test	rdi, rdi
	je	.label_15
	movabs	rax, 0x5555555555555554
	xor	edx, edx
	div	rbx
	cmp	rax, rcx
	jbe	.label_11
	mov	rax, rcx
	shr	rax, 1
	lea	rcx, [rcx + rax + 1]
	jmp	.label_14
.label_12:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_10
	test	rax, rax
	je	.label_11
.label_10:
	pop	rbx
	ret	
.label_11:
	call	xalloc_die
.label_13:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x401657
	.globl sub_401657
	.type sub_401657, @function
sub_401657:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401660

	.globl xalloc_die
	.type xalloc_die, @function
xalloc_die:
	push	rbx
	mov	ebx, dword ptr [rip + exit_failure]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_16
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	esi, esi
	mov	edx, OFFSET FLAT:label_17
	xor	eax, eax
	mov	edi, ebx
	call	error
	call	abort
	.section	.text
	.align	32
	#Procedure 0x401690
	.globl quotearg_style_mem
	.type quotearg_style_mem, @function
quotearg_style_mem:

	sub	rsp, 0x78
	xorps	xmm0, xmm0
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp + 0x30], 0
	cmp	edi, 0xa
	je	.label_18
	mov	dword ptr [rsp + 0x40], edi
	mov	eax, dword ptr [rsp + 0x30]
	mov	dword ptr [rsp + 0x74], eax
	movaps	xmm0, xmmword ptr [rsp]
	movaps	xmm1, xmmword ptr [rsp + 0x10]
	movaps	xmm2, xmmword ptr [rsp + 0x20]
	movups	xmmword ptr [rsp + 0x64], xmm2
	movups	xmmword ptr [rsp + 0x54], xmm1
	movups	xmmword ptr [rsp + 0x44], xmm0
	lea	rcx, [rsp + 0x40]
	xor	edi, edi
	call	quotearg_n_options
	add	rsp, 0x78
	ret	
.label_18:
	call	abort
	.section	.text
	.align	32
	#Procedure 0x4016f1
	.globl sub_4016f1
	.type sub_4016f1, @function
sub_4016f1:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401700

	.globl rpl_fflush
	.type rpl_fflush, @function
rpl_fflush:
	push	rbx
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_19
	mov	rdi, rbx
	call	__freading
	test	eax, eax
	je	.label_19
	test	byte ptr [rbx + 1], 1
	je	.label_19
	xor	esi, esi
	mov	edx, 1
	mov	rdi, rbx
	call	rpl_fseeko
.label_19:
	mov	rdi, rbx
	pop	rbx
	jmp	fflush
	.section	.text
	.align	32
	#Procedure 0x401733
	.globl sub_401733
	.type sub_401733, @function
sub_401733:

	nop	word ptr cs:[rax + rax]
.label_24:
	xor	ebx, ebx
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_20
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	ebp, ebp
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	mov	rcx, rbp
	call	error
.label_21:
	mov	esi, OFFSET FLAT:gidtostr_ptr.buf
	mov	rdi, rbp
	call	umaxtostr
	mov	rdi, rax
.label_22:
	mov	rsi, qword ptr [rip + stdout]
	call	fputs_unlocked
	mov	eax, ebx
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40178e
	.globl sub_40178e
	.type sub_40178e, @function
sub_40178e:

	nop	dword ptr [rax]
	nop	word ptr cs:[rax + rax]
.label_23:
	mov	ebp, ebp
	mov	bl, 1
	jmp	.label_21
	.section	.text
	.align	32
	#Procedure 0x4017a3
	.globl print_group
	.type print_group, @function
print_group:

	push	rbp
	push	rbx
	push	rax
	mov	ebp, edi
	test	sil, sil
	je	.label_23
	mov	edi, ebp
	call	getgrgid
	test	rax, rax
	je	.label_24
	mov	rdi, qword ptr [rax]
	mov	bl, 1
	jmp	.label_22
	.section	.text
	.align	32
	#Procedure 0x4017c0

	.globl set_program_name
	.type set_program_name, @function
set_program_name:
	push	r14
	push	rbx
	push	rax
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_25
	mov	esi, 0x2f
	mov	rdi, rbx
	call	strrchr
	test	rax, rax
	lea	r14, [rax + 1]
	cmove	r14, rbx
	mov	rax, r14
	sub	rax, rbx
	cmp	rax, 7
	jl	.label_27
	lea	rdi, [r14 - 7]
	mov	esi, OFFSET FLAT:label_29
	mov	edx, 7
	call	strncmp
	test	eax, eax
	jne	.label_27
	mov	esi, OFFSET FLAT:label_28
	mov	edx, 3
	mov	rdi, r14
	call	strncmp
	test	eax, eax
	jne	.label_30
	add	r14, 3
	mov	qword ptr [rip + __progname],  r14
.label_30:
	mov	rbx, r14
.label_27:
	mov	qword ptr [rip + program_name],  rbx
	mov	qword ptr [rip + __progname_full],  rbx
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
.label_25:
	mov	rcx, qword ptr [rip + stderr]
	mov	edi, OFFSET FLAT:label_26
	mov	esi, 0x37
	mov	edx, 1
	call	fwrite
	call	abort
	.section	.text
	.align	32
	#Procedure 0x401861
	.globl sub_401861
	.type sub_401861, @function
sub_401861:

	nop	word ptr cs:[rax + rax]
.label_34:
	call	abort
	.section	.text
	.align	32
	#Procedure 0x401875
	.globl quotearg_custom
	.type quotearg_custom, @function
quotearg_custom:

	sub	rsp, 0x38
	mov	rax, rdx
	mov	rcx, qword ptr [rip + label_31]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0, xmmword ptr [rip + label_32]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_33]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rdi, rdi
	je	.label_34
	test	rsi, rsi
	je	.label_34
	mov	qword ptr [rsp + 0x28], rdi
	mov	qword ptr [rsp + 0x30], rsi
	lea	rcx, [rsp]
	xor	edi, edi
	mov	rdx, -1
	mov	rsi, rax
	call	quotearg_n_options
	add	rsp, 0x38
	ret	
	.section	.text
	.align	32
	#Procedure 0x4018e0
	.globl quotearg_n_style
	.type quotearg_n_style, @function
quotearg_n_style:

	sub	rsp, 0x78
	mov	rax, rdx
	xorps	xmm0, xmm0
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp + 0x30], 0
	cmp	esi, 0xa
	je	.label_35
	mov	dword ptr [rsp + 0x40], esi
	mov	ecx, dword ptr [rsp + 0x30]
	mov	dword ptr [rsp + 0x74], ecx
	movaps	xmm0, xmmword ptr [rsp]
	movaps	xmm1, xmmword ptr [rsp + 0x10]
	movaps	xmm2, xmmword ptr [rsp + 0x20]
	movups	xmmword ptr [rsp + 0x64], xmm2
	movups	xmmword ptr [rsp + 0x54], xmm1
	movups	xmmword ptr [rsp + 0x44], xmm0
	lea	rcx, [rsp + 0x40]
	mov	rdx, -1
	mov	rsi, rax
	call	quotearg_n_options
	add	rsp, 0x78
	ret	
.label_35:
	call	abort
	.section	.text
	.align	32
	#Procedure 0x40194c
	.globl sub_40194c
	.type sub_40194c, @function
sub_40194c:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x401950
	.globl emit_bug_reporting_address
	.type emit_bug_reporting_address, @function
emit_bug_reporting_address:

	push	rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_36
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_37
	xor	eax, eax
	mov	rsi, rcx
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_39
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_40
	mov	ecx, OFFSET FLAT:label_41
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_38
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	pop	rax
	jmp	fputs_unlocked
	.section	.text
	.align	32
	#Procedure 0x4019c4
	.globl sub_4019c4
	.type sub_4019c4, @function
sub_4019c4:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4019d0

	.globl xrealloc
	.type xrealloc, @function
xrealloc:
	push	rbx
	mov	rbx, rsi
	test	rdi, rdi
	je	.label_42
	test	rbx, rbx
	jne	.label_42
	call	free
	xor	eax, eax
	pop	rbx
	ret	
.label_42:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_44
	test	rax, rax
	je	.label_43
.label_44:
	pop	rbx
	ret	
.label_43:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x401a00
	.globl quotearg_n_custom
	.type quotearg_n_custom, @function
quotearg_n_custom:

	sub	rsp, 0x38
	mov	rax, qword ptr [rip + label_31]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0, xmmword ptr [rip + label_32]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_33]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rsi, rsi
	je	.label_45
	test	rdx, rdx
	je	.label_45
	mov	qword ptr [rsp + 0x28], rsi
	mov	qword ptr [rsp + 0x30], rdx
	lea	rax, [rsp]
	mov	rdx, -1
	mov	rsi, rcx
	mov	rcx, rax
	call	quotearg_n_options
	add	rsp, 0x38
	ret	
.label_45:
	call	abort
	.section	.text
	.align	32
	#Procedure 0x401a6e
	.globl sub_401a6e
	.type sub_401a6e, @function
sub_401a6e:

	nop	
	.section	.text
	.align	32
	#Procedure 0x401a70

	.globl version_etc
	.type version_etc, @function
version_etc:
	sub	rsp, 0xd8
	test	al, al
	je	.label_46
	movaps	xmmword ptr [rsp + 0x50], xmm0
	movaps	xmmword ptr [rsp + 0x60], xmm1
	movaps	xmmword ptr [rsp + 0x70], xmm2
	movaps	xmmword ptr [rsp + 0x80], xmm3
	movaps	xmmword ptr [rsp + 0x90], xmm4
	movaps	xmmword ptr [rsp + 0xa0], xmm5
	movaps	xmmword ptr [rsp + 0xb0], xmm6
	movaps	xmmword ptr [rsp + 0xc0], xmm7
.label_46:
	mov	qword ptr [rsp + 0x48], r9
	mov	qword ptr [rsp + 0x40], r8
	lea	rax, [rsp + 0x20]
	mov	qword ptr [rsp + 0x10], rax
	lea	rax, [rsp + 0xe0]
	mov	qword ptr [rsp + 8], rax
	mov	dword ptr [rsp + 4], 0x30
	mov	dword ptr [rsp], 0x20
	lea	r8, [rsp]
	call	version_etc_va
	add	rsp, 0xd8
	ret	
	.section	.text
	.align	32
	#Procedure 0x401af3
	.globl sub_401af3
	.type sub_401af3, @function
sub_401af3:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401b00
	.globl quotearg_n_style_colon
	.type quotearg_n_style_colon, @function
quotearg_n_style_colon:

	sub	rsp, 0x78
	mov	rax, rdx
	xorps	xmm0, xmm0
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp + 0x30], 0
	cmp	esi, 0xa
	je	.label_47
	mov	ecx, dword ptr [rsp + 0x30]
	mov	dword ptr [rsp + 0x70], ecx
	movaps	xmm0, xmmword ptr [rsp]
	movaps	xmm1, xmmword ptr [rsp + 0x10]
	movaps	xmm2, xmmword ptr [rsp + 0x20]
	movaps	xmmword ptr [rsp + 0x60], xmm2
	movaps	xmmword ptr [rsp + 0x50], xmm1
	movaps	xmmword ptr [rsp + 0x40], xmm0
	mov	dword ptr [rsp], esi
	mov	ecx, dword ptr [rsp + 0x70]
	mov	dword ptr [rsp + 0x34], ecx
	movaps	xmm0, xmmword ptr [rsp + 0x40]
	movaps	xmm1, xmmword ptr [rsp + 0x50]
	movaps	xmm2, xmmword ptr [rsp + 0x60]
	movups	xmmword ptr [rsp + 0x24], xmm2
	movups	xmmword ptr [rsp + 0x14], xmm1
	movups	xmmword ptr [rsp + 4], xmm0
	or	byte ptr [rsp + 0xf], 4
	lea	rcx, [rsp]
	mov	rdx, -1
	mov	rsi, rax
	call	quotearg_n_options
	add	rsp, 0x78
	ret	
.label_47:
	call	abort
	.section	.text
	.align	32
	#Procedure 0x401b95
	.globl sub_401b95
	.type sub_401b95, @function
sub_401b95:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401ba0
	.globl quotearg_char_mem
	.type quotearg_char_mem, @function
quotearg_char_mem:

	sub	rsp, 0x38
	mov	ecx, edx
	mov	r8, rsi
	mov	rdx, rdi
	mov	rsi, qword ptr [rip + label_31]
	mov	qword ptr [rsp + 0x30], rsi
	movups	xmm0, xmmword ptr [rip + label_32]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_33]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	eax, ecx
	shr	al, 5
	movzx	eax, al
	mov	esi, dword ptr [rsp + rax*4 + 8]
	mov	edi, esi
	shr	edi, cl
	not	edi
	and	edi, 1
	shl	edi, cl
	xor	edi, esi
	mov	dword ptr [rsp + rax*4 + 8], edi
	lea	rcx, [rsp]
	xor	edi, edi
	mov	rsi, rdx
	mov	rdx, r8
	call	quotearg_n_options
	add	rsp, 0x38
	ret	
	.section	.text
	.align	32
	#Procedure 0x401c0e
	.globl sub_401c0e
	.type sub_401c0e, @function
sub_401c0e:

	nop	
	.section	.text
	.align	32
	#Procedure 0x401c10
	.globl quotearg
	.type quotearg, @function
quotearg:

	mov	rax, rdi
	xor	edi, edi
	mov	rdx, -1
	mov	ecx, OFFSET FLAT:default_quoting_options
	mov	rsi, rax
	jmp	quotearg_n_options
	.section	.text
	.align	32
	#Procedure 0x401c29
	.globl sub_401c29
	.type sub_401c29, @function
sub_401c29:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x401c30
	.globl set_quoting_style
	.type set_quoting_style, @function
set_quoting_style:

	test	rdi, rdi
	mov	eax, OFFSET FLAT:default_quoting_options
	cmovne	rax, rdi
	mov	dword ptr [rax], esi
	ret	
	.section	.text
	.align	32
	#Procedure 0x401c3f
	.globl sub_401c3f
	.type sub_401c3f, @function
sub_401c3f:

	nop	
	.section	.text
	.align	32
	#Procedure 0x401c40
	.globl version_etc_ar
	.type version_etc_ar, @function
version_etc_ar:

	mov	r9, -1
	nop	word ptr [rax + rax]
.label_48:
	cmp	qword ptr [r8 + r9*8 + 8], 0
	lea	r9, [r9 + 1]
	jne	.label_48
	jmp	version_etc_arn
	.section	.text
	.align	32
	#Procedure 0x401c61
	.globl sub_401c61
	.type sub_401c61, @function
sub_401c61:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401c70

	.globl rpl_nl_langinfo
	.type rpl_nl_langinfo, @function
rpl_nl_langinfo:
	lea	eax, [rdi - 0x27d8]
	lea	ecx, [rdi + 0x1d842]
	cmp	eax, 0xc
	cmovb	edi, ecx
	jmp	nl_langinfo
	.section	.text
	.align	32
	#Procedure 0x401c87
	.globl sub_401c87
	.type sub_401c87, @function
sub_401c87:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401c90
	.globl close_stdout_set_ignore_EPIPE
	.type close_stdout_set_ignore_EPIPE, @function
close_stdout_set_ignore_EPIPE:

	mov	byte ptr [rip + ignore_EPIPE],  dil
	ret	
	.section	.text
	.align	32
	#Procedure 0x401c98
	.globl sub_401c98
	.type sub_401c98, @function
sub_401c98:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401ca0

	.globl rpl_calloc
	.type rpl_calloc, @function
rpl_calloc:
	test	rdi, rdi
	mov	eax, 1
	je	.label_49
	test	rsi, rsi
	mov	ecx, 1
	je	.label_50
	mov	rax, rsi
	imul	rax, rdi
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	mov	rax, rsi
	mov	rcx, rdi
	je	.label_50
	push	rax
	call	__errno_location
	mov	dword ptr [rax], 0xc
	xor	eax, eax
	pop	rcx
	ret	
.label_49:
	mov	ecx, 1
.label_50:
	mov	rdi, rcx
	mov	rsi, rax
	jmp	calloc
	.section	.text
	.align	32
	#Procedure 0x401ceb
	.globl sub_401ceb
	.type sub_401ceb, @function
sub_401ceb:

	nop	dword ptr [rax + rax]
.label_51:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x401cf5
	.globl sub_401cf5
	.type sub_401cf5, @function
sub_401cf5:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401cff
	.globl xcalloc
	.type xcalloc, @function
xcalloc:

	push	rax
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	jb	.label_51
	call	rpl_calloc
	test	rax, rax
	je	.label_51
	pop	rcx
	ret	
	.section	.text
	.align	32
	#Procedure 0x401d20
	.globl x2realloc
	.type x2realloc, @function
x2realloc:

	push	rbx
	mov	rax, qword ptr [rsi]
	test	rdi, rdi
	je	.label_52
	movabs	rcx, 0x5555555555555554
	cmp	rax, rcx
	jae	.label_53
	mov	rbx, rax
	shr	rbx, 1
	add	rbx, rax
	inc	rbx
	mov	qword ptr [rsi], rbx
	jne	.label_56
	call	free
	xor	eax, eax
	jmp	.label_54
.label_55:
	call	xalloc_die
.label_52:
	test	rax, rax
	mov	ebx, 0x80
	cmovne	rbx, rax
	test	rbx, rbx
	js	.label_55
	mov	qword ptr [rsi], rbx
.label_56:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_54
	test	rax, rax
	je	.label_55
.label_54:
	pop	rbx
	ret	
.label_53:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x401d84
	.globl sub_401d84
	.type sub_401d84, @function
sub_401d84:

	nop	word ptr cs:[rax + rax]
.label_57:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x401d95
	.globl sub_401d95
	.type sub_401d95, @function
sub_401d95:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401d9b
	.globl xcharalloc
	.type xcharalloc, @function
xcharalloc:

	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	je	.label_58
	test	rax, rax
	je	.label_57
.label_58:
	pop	rbx
	ret	
	.section	.text
	.align	32
	#Procedure 0x401db0
	.globl quotearg_char
	.type quotearg_char, @function
quotearg_char:

	sub	rsp, 0x38
	mov	ecx, esi
	mov	rax, rdi
	mov	rdx, qword ptr [rip + label_31]
	mov	qword ptr [rsp + 0x30], rdx
	movups	xmm0, xmmword ptr [rip + label_32]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_33]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	edx, ecx
	shr	dl, 5
	movzx	edx, dl
	mov	esi, dword ptr [rsp + rdx*4 + 8]
	mov	edi, esi
	shr	edi, cl
	not	edi
	and	edi, 1
	shl	edi, cl
	xor	edi, esi
	mov	dword ptr [rsp + rdx*4 + 8], edi
	lea	rcx, [rsp]
	xor	edi, edi
	mov	rdx, -1
	mov	rsi, rax
	call	quotearg_n_options
	add	rsp, 0x38
	ret	
	.section	.text
	.align	32
	#Procedure 0x401e1f
	.globl sub_401e1f
	.type sub_401e1f, @function
sub_401e1f:

	nop	
	.section	.text
	.align	32
	#Procedure 0x401e20
	.globl set_custom_quoting
	.type set_custom_quoting, @function
set_custom_quoting:

	test	rdi, rdi
	mov	eax, OFFSET FLAT:default_quoting_options
	cmovne	rax, rdi
	mov	dword ptr [rax], 0xa
	test	rsi, rsi
	je	.label_59
	test	rdx, rdx
	je	.label_59
	mov	qword ptr [rax + 0x28], rsi
	mov	qword ptr [rax + 0x30], rdx
	ret	
.label_59:
	push	rax
	call	abort
	.section	.text
	.align	32
	#Procedure 0x401e4b
	.globl sub_401e4b
	.type sub_401e4b, @function
sub_401e4b:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401e50
	.globl set_char_quoting
	.type set_char_quoting, @function
set_char_quoting:

	mov	ecx, esi
	test	rdi, rdi
	mov	esi, OFFSET FLAT:default_quoting_options
	cmovne	rsi, rdi
	mov	eax, ecx
	shr	al, 5
	movzx	r8d, al
	mov	r9d, dword ptr [rsi + r8*4 + 8]
	mov	edi, r9d
	shr	edi, cl
	mov	eax, edi
	and	eax, 1
	xor	edi, edx
	and	edi, 1
	shl	edi, cl
	xor	edi, r9d
	mov	dword ptr [rsi + r8*4 + 8], edi
	ret	
	.section	.text
	.align	32
	#Procedure 0x401e86
	.globl sub_401e86
	.type sub_401e86, @function
sub_401e86:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401e90
	.globl quotearg_alloc
	.type quotearg_alloc, @function
quotearg_alloc:

	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x18
	mov	rbx, rsi
	mov	qword ptr [rsp + 8], rbx
	mov	r12, rdi
	test	rdx, rdx
	mov	r14d, OFFSET FLAT:default_quoting_options
	cmovne	r14, rdx
	call	__errno_location
	mov	qword ptr [rsp + 0x10], rax
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rsp + 4], ecx
	mov	r8d, dword ptr [r14]
	mov	ebp, dword ptr [r14 + 4]
	or	ebp, 1
	lea	r15, [r14 + 8]
	sub	rsp, 8
	xor	edi, edi
	xor	esi, esi
	mov	rdx, r12
	mov	rcx, rbx
	mov	r9d, ebp
	push	qword ptr [r14 + 0x30]
	push	qword ptr [r14 + 0x28]
	push	r15
	call	quotearg_buffer_restyled
	add	rsp, 0x20
	mov	rbx, rax
	inc	rbx
	mov	rdi, rbx
	call	xmalloc
	mov	r13, rax
	mov	r8d, dword ptr [r14]
	sub	rsp, 8
	mov	rdi, r13
	mov	rsi, rbx
	mov	rdx, r12
	mov	rcx, qword ptr [rsp + 0x10]
	mov	r9d, ebp
	push	qword ptr [r14 + 0x30]
	push	qword ptr [r14 + 0x28]
	push	r15
	call	quotearg_buffer_restyled
	add	rsp, 0x20
	mov	eax, dword ptr [rsp + 4]
	mov	rcx, qword ptr [rsp + 0x10]
	mov	dword ptr [rcx], eax
	mov	rax, r13
	add	rsp, 0x18
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x401f51
	.globl sub_401f51
	.type sub_401f51, @function
sub_401f51:

	nop	word ptr cs:[rax + rax]
.label_60:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x401f65
	.globl sub_401f65
	.type sub_401f65, @function
sub_401f65:

	nop	dword ptr [rax + rax]
.label_62:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_61
	test	rax, rax
	je	.label_60
.label_61:
	pop	rbx
	ret	
	.section	.text
	.align	32
	#Procedure 0x401f81
	.globl xnrealloc
	.type xnrealloc, @function
xnrealloc:

	push	rbx
	mov	rbx, rdx
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rsi
	jb	.label_60
	imul	rbx, rsi
	test	rdi, rdi
	je	.label_62
	test	rbx, rbx
	jne	.label_62
	call	free
	xor	eax, eax
	pop	rbx
	ret	
	.section	.text
	.align	32
	#Procedure 0x401fb0
	.globl quotearg_buffer
	.type quotearg_buffer, @function
quotearg_buffer:

	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	r14, rcx
	mov	r15, rdx
	mov	r12, rsi
	mov	r13, rdi
	test	r8, r8
	mov	ebp, OFFSET FLAT:default_quoting_options
	cmovne	rbp, r8
	call	__errno_location
	mov	rbx, rax
	mov	eax, dword ptr [rbx]
	mov	dword ptr [rsp + 4], eax
	mov	r8, qword ptr [rbp]
	mov	r9, r8
	shr	r9, 0x20
	sub	rsp, 8
	mov	rdi, r13
	mov	rsi, r12
	mov	rdx, r15
	mov	rcx, r14
	push	qword ptr [rbp + 0x30]
	push	qword ptr [rbp + 0x28]
	lea	rax, [rbp + 8]
	push	rax
	call	quotearg_buffer_restyled
	add	rsp, 0x20
	mov	ecx, dword ptr [rsp + 4]
	mov	dword ptr [rbx], ecx
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x402025
	.globl sub_402025
	.type sub_402025, @function
sub_402025:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402030
	.globl get_quoting_style
	.type get_quoting_style, @function
get_quoting_style:

	test	rdi, rdi
	mov	eax, OFFSET FLAT:default_quoting_options
	cmovne	rax, rdi
	mov	eax, dword ptr [rax]
	ret	
	.section	.text
	.align	32
	#Procedure 0x40203f
	.globl sub_40203f
	.type sub_40203f, @function
sub_40203f:

	nop	
.label_63:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x402045
	.globl sub_402045
	.type sub_402045, @function
sub_402045:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402050
	.globl xnmalloc
	.type xnmalloc, @function
xnmalloc:

	push	rbx
	mov	rbx, rsi
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rdi
	jb	.label_63
	imul	rbx, rdi
	mov	rdi, rbx
	call	malloc
	test	rbx, rbx
	je	.label_64
	test	rax, rax
	je	.label_63
.label_64:
	pop	rbx
	ret	
	.section	.text
	.align	32
	#Procedure 0x402080

	.globl main
	.type main, @function
main:
	push	rbp
	push	r15
	push	r14
	push	r12
	push	rbx
	sub	rsp, 0x10
	mov	r15, rsi
	mov	r14d, edi
	mov	rdi, qword ptr [r15]
	call	set_program_name
	mov	edi, 6
	mov	esi, OFFSET FLAT:label_69
	call	setlocale
	mov	edi, OFFSET FLAT:label_73
	mov	esi, OFFSET FLAT:label_74
	call	bindtextdomain
	mov	edi, OFFSET FLAT:label_73
	call	textdomain
	mov	edi, OFFSET FLAT:close_stdout
	call	atexit
	mov	edx, OFFSET FLAT:label_69
	mov	ecx, OFFSET FLAT:longopts
	xor	r8d, r8d
	mov	edi, r14d
	mov	rsi, r15
	call	getopt_long
	cmp	eax, -1
	jne	.label_88
	mov	eax, dword ptr [rip + optind]
	cmp	eax, r14d
	jne	.label_90
	call	__errno_location
	mov	rbp, rax
	mov	dword ptr [rbp], 0
	call	getuid
	mov	r14d, eax
	cmp	r14d, -1
	jne	.label_66
	mov	ebx, dword ptr [rbp]
	test	ebx, ebx
	jne	.label_68
.label_66:
	mov	dword ptr [rbp], 0
	call	getegid
	mov	ebx, eax
	cmp	ebx, -1
	jne	.label_75
	mov	r15d, dword ptr [rbp]
	test	r15d, r15d
	jne	.label_76
.label_75:
	mov	dword ptr [rbp], 0
	call	getgid
	cmp	eax, -1
	jne	.label_82
	mov	ebp, dword ptr [rbp]
	test	ebp, ebp
	jne	.label_83
.label_82:
	xor	edi, edi
	mov	r8d, 1
	mov	r9d, 0x20
	mov	esi, r14d
	mov	edx, eax
	mov	ecx, ebx
	call	print_group_list
	mov	bpl, al
	mov	rdi, qword ptr [rip + stdout]
	mov	rax, qword ptr [rdi + 0x28]
	cmp	rax, qword ptr [rdi + 0x30]
	jae	.label_92
	lea	rcx, [rax + 1]
	mov	qword ptr [rdi + 0x28], rcx
	mov	byte ptr [rax], 0xa
	jmp	.label_67
.label_90:
	mov	bpl, 1
	jge	.label_67
	mov	r12b, 1
	jmp	.label_65
.label_72:
	mov	esi, 0xa
	call	__overflow
	jmp	.label_77
	.section	.text
	.align	32
	#Procedure 0x4021bf
	.globl sub_4021bf
	.type sub_4021bf, @function
sub_4021bf:

	nop	
.label_65:
	cdqe	
	mov	rdi, qword ptr [r15 + rax*8]
	call	getpwnam
	test	rax, rax
	je	.label_80
	mov	rbx, qword ptr [rax + 0x10]
	mov	rbp, rbx
	shr	rbp, 0x20
	movsxd	rax, dword ptr [rip + optind]
	mov	rdx, qword ptr [r15 + rax*8]
	mov	edi, 1
	mov	esi, OFFSET FLAT:label_91
	xor	eax, eax
	call	__printf_chk
	movsxd	rax, dword ptr [rip + optind]
	mov	rdi, qword ptr [r15 + rax*8]
	mov	r8d, 1
	mov	r9d, 0x20
	mov	esi, ebx
	mov	edx, ebp
	mov	ecx, ebp
	call	print_group_list
	mov	bpl, al
	test	bpl, bpl
	je	.label_70
	mov	bpl, r12b
.label_70:
	mov	rdi, qword ptr [rip + stdout]
	mov	rax, qword ptr [rdi + 0x28]
	cmp	rax, qword ptr [rdi + 0x30]
	jae	.label_72
	lea	rcx, [rax + 1]
	mov	qword ptr [rdi + 0x28], rcx
	mov	byte ptr [rax], 0xa
	jmp	.label_77
	.section	.text
	.align	32
	#Procedure 0x40224a
	.globl sub_40224a
	.type sub_40224a, @function
sub_40224a:

	nop	word ptr [rax + rax]
.label_80:
	xor	ebp, ebp
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_87
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	movsxd	rax, dword ptr [rip + optind]
	mov	rdi, qword ptr [r15 + rax*8]
	call	quote
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rbx
	call	error
.label_77:
	mov	eax, dword ptr [rip + optind]
	inc	eax
	mov	dword ptr [rip + optind],  eax
	cmp	eax, r14d
	mov	r12d, ebp
	jl	.label_65
.label_67:
	not	bpl
	and	bpl, 1
	movzx	eax, bpl
	add	rsp, 0x10
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_92:
	mov	esi, 0xa
	call	__overflow
	jmp	.label_67
.label_88:
	cmp	eax, 0xffffff7d
	je	.label_79
	cmp	eax, 0xffffff7e
	jne	.label_81
	xor	edi, edi
	call	usage
.label_79:
	mov	rdi, qword ptr [rip + stdout]
	mov	rcx, qword ptr [rip + Version]
	mov	qword ptr [rsp], 0
	mov	esi, OFFSET FLAT:label_84
	mov	edx, OFFSET FLAT:label_40
	mov	r8d, OFFSET FLAT:label_85
	mov	r9d, OFFSET FLAT:label_86
	xor	eax, eax
	call	version_etc
	xor	edi, edi
	call	exit
.label_81:
	mov	edi, 1
	call	usage
.label_68:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_71
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, rcx
	call	error
.label_76:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_78
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	xor	eax, eax
	mov	esi, r15d
	mov	rdx, rcx
	call	error
.label_83:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_89
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	xor	eax, eax
	mov	esi, ebp
	mov	rdx, rcx
	call	error
	nop	
	.section	.text
	.align	32
	#Procedure 0x402390

	.globl mgetgroups
	.type mgetgroups, @function
mgetgroups:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x18
	mov	r12, rdx
	mov	r13d, esi
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_95
	mov	dword ptr [rsp + 0xc], 0xa
	xor	edi, edi
	mov	esi, 0x28
	call	realloc
	mov	rbp, rax
	mov	r14d, 0xffffffff
	test	rbp, rbp
	je	.label_100
	mov	qword ptr [rsp + 0x10], r12
	mov	r12d, 0xa
	lea	r15, [rsp + 0xc]
	jmp	.label_105
	.section	.text
	.align	32
	#Procedure 0x4023e8
	.globl sub_4023e8
	.type sub_4023e8, @function
sub_4023e8:

	nop	dword ptr [rax + rax]
.label_103:
	mov	r12d, dword ptr [rsp + 0xc]
	mov	rbp, rax
.label_105:
	mov	rdi, rbx
	mov	esi, r13d
	mov	rdx, rbp
	mov	rcx, r15
	call	getgrouplist
	mov	r14d, eax
	mov	eax, dword ptr [rsp + 0xc]
	test	r14d, r14d
	jns	.label_96
	cmp	r12d, eax
	jne	.label_96
	add	r12d, r12d
	mov	dword ptr [rsp + 0xc], r12d
	mov	eax, r12d
.label_96:
	test	eax, eax
	js	.label_98
	movsxd	rsi, eax
	shl	rsi, 2
	mov	rdi, rbp
	call	realloc
	test	rax, rax
	je	.label_102
	test	r14d, r14d
	js	.label_103
	mov	rcx, qword ptr [rsp + 0x10]
	mov	qword ptr [rcx], rax
	mov	r14d, dword ptr [rsp + 0xc]
	jmp	.label_100
.label_95:
	xor	edi, edi
	xor	esi, esi
	call	getgroups
	mov	dword ptr [rsp + 0xc], eax
	test	eax, eax
	js	.label_107
	cmp	r13d, -1
	jne	.label_108
	test	eax, eax
	mov	ebx, eax
	jne	.label_109
.label_108:
	lea	ebx, [rax + 1]
	mov	dword ptr [rsp + 0xc], ebx
	cmp	eax, -2
	jg	.label_109
	call	__errno_location
	mov	dword ptr [rax], 0xc
	jmp	.label_94
.label_109:
	movsxd	rsi, ebx
	shl	rsi, 2
	xor	edi, edi
	call	realloc
	mov	r15, rax
	mov	r14d, 0xffffffff
	test	r15, r15
	je	.label_100
	xor	eax, eax
	cmp	r13d, -1
	setne	al
	sub	ebx, eax
	lea	rsi, [r15 + rax*4]
	mov	edi, ebx
	call	getgroups
	test	eax, eax
	js	.label_104
	cmp	r13d, -1
	mov	r14d, eax
	je	.label_106
	mov	dword ptr [r15], r13d
	inc	eax
	mov	r14d, eax
.label_106:
	mov	qword ptr [r12], r15
	cmp	r14d, 2
	jl	.label_100
	movsxd	rax, r14d
	lea	rax, [r15 + rax*4]
	mov	rcx, r15
	add	rcx, 4
	cmp	rcx, rax
	jae	.label_100
	mov	edx, dword ptr [r15]
	mov	esi, edx
	nop	word ptr cs:[rax + rax]
.label_101:
	mov	edi, dword ptr [rcx]
	cmp	edi, edx
	je	.label_97
	cmp	edi, esi
	jne	.label_99
.label_97:
	dec	r14d
	add	rcx, 4
	cmp	rcx, rax
	jb	.label_101
	jmp	.label_100
.label_99:
	mov	dword ptr [r15 + 4], edi
	add	r15, 4
	add	rcx, 4
	cmp	rcx, rax
	mov	esi, edi
	jb	.label_101
	jmp	.label_100
.label_107:
	call	__errno_location
	mov	r14d, 0xffffffff
	cmp	dword ptr [rax], 0x26
	jne	.label_100
	xor	edi, edi
	mov	esi, 4
	call	realloc
	test	rax, rax
	je	.label_100
	mov	qword ptr [r12], rax
	mov	dword ptr [rax], r13d
	xor	r14d, r14d
	cmp	r13d, -1
	setne	r14b
	jmp	.label_100
.label_98:
	call	__errno_location
	mov	rbx, rax
	mov	dword ptr [rbx], 0xc
	jmp	.label_93
.label_102:
	call	__errno_location
	mov	rbx, rax
.label_93:
	mov	r14d, dword ptr [rbx]
	mov	rdi, rbp
	call	free
	mov	dword ptr [rbx], r14d
.label_94:
	mov	r14d, 0xffffffff
.label_100:
	mov	eax, r14d
	add	rsp, 0x18
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_104:
	call	__errno_location
	mov	rbx, rax
	mov	ebp, dword ptr [rbx]
	mov	rdi, r15
	call	free
	mov	dword ptr [rbx], ebp
	jmp	.label_100
	.section	.text
	.align	32
	#Procedure 0x4025d6
	.globl sub_4025d6
	.type sub_4025d6, @function
sub_4025d6:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4025e0

	.globl version_etc_arn
	.type version_etc_arn, @function
version_etc_arn:
	push	r15
	push	r14
	push	r12
	push	rbx
	push	rax
	mov	r12, r9
	mov	r15, r8
	mov	r9, rcx
	mov	rbx, rdx
	mov	rcx, rsi
	mov	r14, rdi
	mov	esi, 1
	test	rcx, rcx
	je	.label_122
	mov	edx, OFFSET FLAT:label_113
	xor	eax, eax
	mov	rdi, r14
	mov	r8, rbx
	call	__fprintf_chk
	jmp	.label_119
.label_122:
	mov	edx, OFFSET FLAT:label_120
	xor	eax, eax
	mov	rdi, r14
	mov	rcx, rbx
	mov	r8, r9
	call	__fprintf_chk
.label_119:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_124
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	esi, 1
	mov	edx, OFFSET FLAT:version_etc_copyright
	mov	r8d, 0x7e3
	xor	eax, eax
	mov	rdi, r14
	call	__fprintf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_121
	mov	edx, 5
	call	dcgettext
	mov	rdi, rax
	mov	rsi, r14
	call	fputs_unlocked
	cmp	r12, 9
	ja	.label_125
	jmp	qword ptr [(r12 * 8) + label_126]
.label_381:
	add	rsp, 8
	jmp	.label_112
.label_125:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_116
	mov	edx, 5
	call	dcgettext
	mov	rdx, rax
	mov	rcx, qword ptr [r15]
	mov	r8, qword ptr [r15 + 8]
	mov	r9, qword ptr [r15 + 0x10]
	mov	esi, 1
	mov	eax, 0
	mov	rdi, r14
	push	qword ptr [r15 + 0x40]
	push	qword ptr [r15 + 0x38]
	push	qword ptr [r15 + 0x30]
	push	qword ptr [r15 + 0x28]
	push	qword ptr [r15 + 0x20]
	push	qword ptr [r15 + 0x18]
	call	__fprintf_chk
	add	rsp, 0x38
	jmp	.label_112
.label_382:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_111
	mov	edx, 5
	call	dcgettext
	mov	rdx, rax
	mov	rcx, qword ptr [r15]
	mov	esi, 1
	xor	eax, eax
	mov	rdi, r14
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	jmp	__fprintf_chk
.label_383:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_117
	mov	edx, 5
	call	dcgettext
	mov	rdx, rax
	mov	rcx, qword ptr [r15]
	mov	r8, qword ptr [r15 + 8]
	mov	esi, 1
	xor	eax, eax
	mov	rdi, r14
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	jmp	__fprintf_chk
.label_384:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_114
	mov	edx, 5
	call	dcgettext
	mov	rdx, rax
	mov	rcx, qword ptr [r15]
	mov	r8, qword ptr [r15 + 8]
	mov	r9, qword ptr [r15 + 0x10]
	mov	esi, 1
	xor	eax, eax
	mov	rdi, r14
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	jmp	__fprintf_chk
.label_385:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_128
	mov	edx, 5
	call	dcgettext
	mov	rdx, rax
	mov	rcx, qword ptr [r15]
	mov	r8, qword ptr [r15 + 8]
	mov	r9, qword ptr [r15 + 0x10]
	sub	rsp, 8
	mov	esi, 1
	xor	eax, eax
	mov	rdi, r14
	push	qword ptr [r15 + 0x18]
	call	__fprintf_chk
	add	rsp, 0x18
	jmp	.label_112
.label_386:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_127
	mov	edx, 5
	call	dcgettext
	mov	rdx, rax
	mov	rcx, qword ptr [r15]
	mov	r8, qword ptr [r15 + 8]
	mov	r9, qword ptr [r15 + 0x10]
	mov	esi, 1
	mov	eax, 0
	mov	rdi, r14
	push	qword ptr [r15 + 0x20]
	push	qword ptr [r15 + 0x18]
	call	__fprintf_chk
	add	rsp, 0x18
	jmp	.label_112
.label_387:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_110
	mov	edx, 5
	call	dcgettext
	mov	rdx, rax
	mov	rcx, qword ptr [r15]
	mov	r8, qword ptr [r15 + 8]
	mov	r9, qword ptr [r15 + 0x10]
	sub	rsp, 8
	mov	esi, 1
	mov	eax, 0
	mov	rdi, r14
	push	qword ptr [r15 + 0x28]
	push	qword ptr [r15 + 0x20]
	push	qword ptr [r15 + 0x18]
	call	__fprintf_chk
	add	rsp, 0x28
	jmp	.label_112
.label_388:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_115
	mov	edx, 5
	call	dcgettext
	mov	rdx, rax
	mov	rcx, qword ptr [r15]
	mov	r8, qword ptr [r15 + 8]
	mov	r9, qword ptr [r15 + 0x10]
	mov	esi, 1
	mov	eax, 0
	mov	rdi, r14
	push	qword ptr [r15 + 0x30]
	push	qword ptr [r15 + 0x28]
	push	qword ptr [r15 + 0x20]
	push	qword ptr [r15 + 0x18]
	call	__fprintf_chk
	add	rsp, 0x28
	jmp	.label_112
.label_390:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_118
	mov	edx, 5
	call	dcgettext
	mov	rdx, rax
	mov	rcx, qword ptr [r15]
	mov	r8, qword ptr [r15 + 8]
	mov	r9, qword ptr [r15 + 0x10]
	mov	esi, 1
	mov	eax, 0
	mov	rdi, r14
	push	qword ptr [r15 + 0x40]
	push	qword ptr [r15 + 0x38]
	push	qword ptr [r15 + 0x30]
	push	qword ptr [r15 + 0x28]
	push	qword ptr [r15 + 0x20]
	push	qword ptr [r15 + 0x18]
	call	__fprintf_chk
	add	rsp, 0x38
	jmp	.label_112
.label_389:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_123
	mov	edx, 5
	call	dcgettext
	mov	rdx, rax
	mov	rcx, qword ptr [r15]
	mov	r8, qword ptr [r15 + 8]
	mov	r9, qword ptr [r15 + 0x10]
	sub	rsp, 8
	mov	esi, 1
	mov	eax, 0
	mov	rdi, r14
	push	qword ptr [r15 + 0x38]
	push	qword ptr [r15 + 0x30]
	push	qword ptr [r15 + 0x28]
	push	qword ptr [r15 + 0x20]
	push	qword ptr [r15 + 0x18]
	call	__fprintf_chk
	add	rsp, 0x38
.label_112:
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	32
	#Procedure 0x402938
	.globl sub_402938
	.type sub_402938, @function
sub_402938:

	nop	dword ptr [rax + rax]
.label_133:
	cmp	byte ptr [rbx], 0x60
	mov	ecx, OFFSET FLAT:label_129
	mov	eax, OFFSET FLAT:label_130
	jmp	.label_131
	.section	.text
	.align	32
	#Procedure 0x40294f
	.globl sub_40294f
	.type sub_40294f, @function
sub_40294f:

	nop	word ptr cs:[rax + rax]
.label_138:
	movsx	ecx, byte ptr [rax + 1]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x42
	jne	.label_132
	cmp	byte ptr [rax + 2], 0x31
	jne	.label_132
	cmp	byte ptr [rax + 3], 0x38
	jne	.label_132
	cmp	byte ptr [rax + 4], 0x30
	jne	.label_132
	cmp	byte ptr [rax + 5], 0x33
	jne	.label_132
	cmp	byte ptr [rax + 6], 0x30
	jne	.label_132
	cmp	byte ptr [rax + 7], 0
	je	.label_133
.label_132:
	cmp	ebp, 9
	mov	ecx, OFFSET FLAT:label_134
	mov	eax, OFFSET FLAT:label_135
.label_131:
	cmove	rax, rcx
.label_139:
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4029a2

	.globl gettext_quote
	.type gettext_quote, @function
gettext_quote:
	push	rbp
	push	rbx
	push	rax
	mov	ebp, esi
	mov	rbx, rdi
	xor	edi, edi
	mov	edx, 5
	mov	rsi, rbx
	call	dcgettext
	cmp	rax, rbx
	jne	.label_139
	call	locale_charset
	movsx	ecx, byte ptr [rax]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x47
	je	.label_138
	cmp	ecx, 0x55
	jne	.label_132
	movsx	ecx, byte ptr [rax + 1]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x54
	jne	.label_132
	movsx	ecx, byte ptr [rax + 2]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x46
	jne	.label_132
	cmp	byte ptr [rax + 3], 0x2d
	jne	.label_132
	cmp	byte ptr [rax + 4], 0x38
	jne	.label_132
	cmp	byte ptr [rax + 5], 0
	jne	.label_132
	cmp	byte ptr [rbx], 0x60
	mov	ecx, OFFSET FLAT:label_136
	mov	eax, OFFSET FLAT:label_137
	jmp	.label_131
	.section	.text
	.align	32
	#Procedure 0x402a10

	.globl version_etc_va
	.type version_etc_va, @function
version_etc_va:
	movsxd	r10, dword ptr [r8]
	cmp	r10, 0x28
	ja	.label_144
	mov	r9, r10
	add	r9, qword ptr [r8 + 0x10]
	lea	r10d, [r10 + 8]
	mov	dword ptr [r8], r10d
	jmp	.label_147
.label_144:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_147:
	sub	rsp, 0x58
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp], rax
	xor	r9d, r9d
	test	rax, rax
	je	.label_146
	cmp	r10d, 0x29
	jae	.label_143
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_145
.label_143:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_145:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 8], rax
	mov	r9d, 1
	test	rax, rax
	je	.label_146
	cmp	r10d, 0x29
	jae	.label_141
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_142
.label_141:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_142:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x10], rax
	mov	r9d, 2
	test	rax, rax
	je	.label_146
	cmp	r10d, 0x29
	jae	.label_152
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_140
.label_152:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_140:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x18], rax
	mov	r9d, 3
	test	rax, rax
	je	.label_146
	cmp	r10d, 0x29
	jae	.label_150
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_151
.label_150:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_151:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x20], rax
	mov	r9d, 4
	test	rax, rax
	je	.label_146
	cmp	r10d, 0x29
	jae	.label_148
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_149
.label_148:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_149:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x28], rax
	mov	r9d, 5
	test	rax, rax
	je	.label_146
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x30], rax
	mov	r9d, 6
	test	rax, rax
	je	.label_146
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x38], rax
	mov	r9d, 7
	test	rax, rax
	je	.label_146
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x40], rax
	mov	r9d, 8
	test	rax, rax
	je	.label_146
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x48], rax
	cmp	rax, 1
	mov	r9d, 9
	sbb	r9, -1
.label_146:
	lea	r8, [rsp]
	call	version_etc_arn
	add	rsp, 0x58
	ret	
	.section	.text
	.align	32
	#Procedure 0x402bf2
	.globl sub_402bf2
	.type sub_402bf2, @function
sub_402bf2:

	nop	word ptr cs:[rax + rax]
.label_158:
	mov	rbx, qword ptr [rip + stderr]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_153
	mov	edx, 5
	call	dcgettext
	mov	rdx, rax
	mov	rcx, qword ptr [rip + program_name]
	mov	esi, 1
	xor	eax, eax
	mov	rdi, rbx
	call	__fprintf_chk
	mov	edi, ebp
	call	exit
	.section	.text
	.align	32
	#Procedure 0x402c38
	.globl sub_402c38
	.type sub_402c38, @function
sub_402c38:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402c3d

	.globl usage
	.type usage, @function
usage:
	push	rbp
	push	rbx
	push	rax
	mov	ebp, edi
	test	ebp, ebp
	jne	.label_158
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_157
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	rdx, qword ptr [rip + program_name]
	mov	edi, 1
	xor	eax, eax
	mov	rsi, rcx
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_164
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_160
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_155
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_165
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_40
	mov	ecx, OFFSET FLAT:label_41
	xor	eax, eax
	call	__printf_chk
	mov	edi, 5
	xor	esi, esi
	call	setlocale
	test	rax, rax
	je	.label_162
	mov	esi, OFFSET FLAT:label_159
	mov	edx, 3
	mov	rdi, rax
	call	strncmp
	test	eax, eax
	je	.label_162
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_161
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
.label_162:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_156
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_41
	mov	ecx, OFFSET FLAT:label_84
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_163
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_84
	mov	ecx, OFFSET FLAT:label_154
	xor	eax, eax
	call	__printf_chk
	mov	edi, ebp
	call	exit
	.section	.text
	.align	32
	#Procedure 0x402da0

	.globl umaxtostr
	.type umaxtostr, @function
umaxtostr:
	mov	rcx, rdi
	mov	byte ptr [rsi + 0x14], 0
	add	rsi, 0x14
	movabs	r8, 0xcccccccccccccccd
	nop	word ptr cs:[rax + rax]
.label_166:
	mov	rax, rcx
	mul	r8
	shr	rdx, 3
	lea	eax, [rdx + rdx]
	lea	eax, [rax + rax*4]
	mov	edi, ecx
	sub	edi, eax
	or	edi, 0x30
	mov	byte ptr [rsi - 1], dil
	dec	rsi
	cmp	rcx, 9
	mov	rcx, rdx
	ja	.label_166
	mov	rax, rsi
	ret	
	.section	.text
	.align	32
	#Procedure 0x402deb
	.globl sub_402deb
	.type sub_402deb, @function
sub_402deb:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402df0

	.globl hard_locale
	.type hard_locale, @function
hard_locale:
	push	rbx
	xor	esi, esi
	call	setlocale
	mov	bl, 1
	test	rax, rax
	je	.label_168
	cmp	byte ptr [rax], 0x43
	jne	.label_170
	cmp	byte ptr [rax + 1], 0
	je	.label_167
.label_170:
	mov	esi, OFFSET FLAT:label_169
	mov	rdi, rax
	call	strcmp
	test	eax, eax
	jne	.label_168
.label_167:
	xor	ebx, ebx
.label_168:
	mov	eax, ebx
	pop	rbx
	ret	
	.section	.text
	.align	32
	#Procedure 0x402e21
	.globl sub_402e21
	.type sub_402e21, @function
sub_402e21:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402e30

	.globl close_stdout
	.type close_stdout, @function
close_stdout:
	push	rbp
	push	rbx
	push	rax
	mov	rdi, qword ptr [rip + stdout]
	call	close_stream
	test	eax, eax
	je	.label_176
	mov	bl, byte ptr [rip + ignore_EPIPE]
	call	__errno_location
	mov	rbp, rax
	cmp	bl, 0
	je	.label_173
	cmp	dword ptr [rbp], 0x20
	jne	.label_173
.label_176:
	mov	rdi, qword ptr [rip + stderr]
	call	close_stream
	test	eax, eax
	jne	.label_172
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
.label_172:
	mov	edi, dword ptr [rip + exit_failure]
	call	_exit
.label_171:
	call	quotearg_colon
	mov	rcx, rax
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_175
	xor	eax, eax
	mov	esi, ebp
	mov	r8, rbx
	call	error
	mov	edi, dword ptr [rip + exit_failure]
	call	_exit
	nop	dword ptr [rax]
	nop	dword ptr [rax + rax]
.label_173:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_174
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	rdi, qword ptr [rip + file_name]
	test	rdi, rdi
	mov	ebp, dword ptr [rbp]
	jne	.label_171
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_17
	xor	eax, eax
	mov	esi, ebp
	mov	rcx, rbx
	call	error
	mov	edi, dword ptr [rip + exit_failure]
	call	_exit
	.section	.text
	.align	32
	#Procedure 0x402ef0
	.globl quotearg_n
	.type quotearg_n, @function
quotearg_n:

	mov	rdx, -1
	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	.section	.text
	.align	32
	#Procedure 0x402efe
	.globl sub_402efe
	.type sub_402efe, @function
sub_402efe:

	nop	
	.section	.text
	.align	32
	#Procedure 0x402f00

	.globl quotearg_n_options
	.type quotearg_n_options, @function
quotearg_n_options:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x28
	mov	rbx, rcx
	mov	r15, rdx
	mov	qword ptr [rsp + 0x20], rsi
	mov	r12d, edi
	call	__errno_location
	mov	r13, rax
	test	r12d, r12d
	js	.label_177
	mov	eax, dword ptr [r13]
	mov	rbp, qword ptr [rip + slotvec]
	cmp	dword ptr [rip + nslots],  r12d
	mov	qword ptr [rsp + 0x18], r13
	mov	dword ptr [rsp], eax
	mov	qword ptr [rsp + 0x10], rbx
	mov	qword ptr [rsp + 8], r15
	jg	.label_180
	cmp	r12d, 0x7fffffff
	je	.label_182
	mov	ebx, OFFSET FLAT:slotvec0
	xor	edi, edi
	cmp	rbp, rbx
	cmovne	rdi, rbp
	lea	r15d, [r12 + 1]
	movsxd	rsi, r12d
	shl	rsi, 4
	add	rsi, 0x10
	call	xrealloc
	mov	r14, rax
	cmp	rbp, rbx
	mov	qword ptr [rip + slotvec],  r14
	jne	.label_178
	movups	xmm0, xmmword ptr [rip + slotvec0]
	movups	xmmword ptr [r14], xmm0
.label_178:
	movsxd	rax, dword ptr [rip + nslots]
	movsxd	rbp, r15d
	mov	rdx, rbp
	sub	rdx, rax
	shl	rax, 4
	mov	rdi, r14
	add	rdi, rax
	shl	rdx, 4
	xor	esi, esi
	call	memset
	mov	dword ptr [rip + nslots],  ebp
	mov	rbp, r14
	mov	rbx, qword ptr [rsp + 0x10]
	mov	r15, qword ptr [rsp + 8]
.label_180:
	movsxd	r13, r12d
	shl	r13, 4
	mov	r12, qword ptr [rbp + r13]
	mov	r14, qword ptr [rbp + r13 + 8]
	mov	r8d, dword ptr [rbx]
	mov	r9d, dword ptr [rbx + 4]
	or	r9d, 1
	lea	rax, [rbx + 8]
	sub	rsp, 8
	mov	rdi, r14
	mov	rsi, r12
	mov	rdx, qword ptr [rsp + 0x28]
	mov	rcx, r15
	mov	dword ptr [rsp + 0xc], r9d
	push	qword ptr [rbx + 0x30]
	push	qword ptr [rbx + 0x28]
	mov	rbx, rax
	push	rbx
	call	quotearg_buffer_restyled
	add	rsp, 0x20
	mov	r15, rax
	cmp	r12, r15
	jbe	.label_183
	mov	rax, qword ptr [rsp + 0x18]
	mov	ebp, dword ptr [rsp]
	jmp	.label_179
.label_183:
	lea	rax, [rbp + r13]
	lea	r12, [rbp + r13 + 8]
	inc	r15
	mov	qword ptr [rax], r15
	mov	eax, OFFSET FLAT:slot0
	cmp	r14, rax
	mov	ebp, dword ptr [rsp]
	je	.label_181
	mov	rdi, r14
	call	free
.label_181:
	mov	rdi, r15
	call	xmalloc
	mov	r14, rax
	mov	qword ptr [r12], r14
	mov	rax, qword ptr [rsp + 0x10]
	mov	r8d, dword ptr [rax]
	sub	rsp, 8
	mov	rdi, r14
	mov	rsi, r15
	mov	rdx, qword ptr [rsp + 0x28]
	mov	rcx, qword ptr [rsp + 0x10]
	mov	r9d, dword ptr [rsp + 0xc]
	push	qword ptr [rax + 0x30]
	push	qword ptr [rax + 0x28]
	push	rbx
	call	quotearg_buffer_restyled
	add	rsp, 0x20
	mov	rax, qword ptr [rsp + 0x18]
.label_179:
	mov	dword ptr [rax], ebp
	mov	rax, r14
	add	rsp, 0x28
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_177:
	call	abort
.label_182:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x4030bd
	.globl sub_4030bd
	.type sub_4030bd, @function
sub_4030bd:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4030c0

	.globl close_stream
	.type close_stream, @function
close_stream:
	push	rbp
	push	r14
	push	rbx
	mov	rbx, rdi
	call	__fpending
	mov	r14, rax
	mov	ebp, dword ptr [rbx]
	mov	rdi, rbx
	call	rpl_fclose
	test	bpl, 0x20
	jne	.label_185
	test	eax, eax
	sete	cl
	neg	eax
	sbb	ebx, ebx
	test	r14, r14
	jne	.label_184
	test	cl, cl
	jne	.label_184
	call	__errno_location
	xor	ecx, ecx
	cmp	dword ptr [rax], 9
	mov	ebx, 0xffffffff
	cmove	ebx, ecx
	jmp	.label_184
.label_185:
	mov	ebx, 0xffffffff
	test	eax, eax
	jne	.label_184
	call	__errno_location
	mov	dword ptr [rax], 0
.label_184:
	mov	eax, ebx
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x403120
	.globl close_stdout_set_file_name
	.type close_stdout_set_file_name, @function
close_stdout_set_file_name:

	mov	qword ptr [rip + file_name],  rdi
	ret	
	.section	.text
	.align	32
	#Procedure 0x403128
	.globl sub_403128
	.type sub_403128, @function
sub_403128:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403130

	.globl print_group_list
	.type print_group_list, @function
print_group_list:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x18
	mov	r14d, r9d
	mov	dword ptr [rsp + 4], r8d
	mov	r12d, ecx
	mov	ebx, edx
	mov	rbp, rdi
	mov	r15b, 1
	xor	r13d, r13d
	test	rbp, rbp
	je	.label_201
	mov	edi, esi
	call	getpwuid
	mov	r13, rax
	test	r13, r13
	setne	r15b
.label_201:
	mov	eax, dword ptr [rsp + 4]
	test	al, al
	je	.label_212
	mov	edi, ebx
	call	getgrgid
	test	rax, rax
	je	.label_203
	mov	rdi, qword ptr [rax]
	mov	rsi, qword ptr [rip + stdout]
	jmp	.label_215
.label_212:
	mov	edi, ebx
	mov	esi, OFFSET FLAT:gidtostr_ptr.buf
	jmp	.label_192
.label_203:
	xor	r15d, r15d
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_20
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	qword ptr [rsp + 8], rbp
	mov	ebp, ebx
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	mov	rcx, rbp
	call	error
	mov	esi, OFFSET FLAT:gidtostr_ptr.buf
	mov	rdi, rbp
	mov	rbp, qword ptr [rsp + 8]
.label_192:
	call	umaxtostr
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
.label_215:
	call	fputs_unlocked
	cmp	r12d, ebx
	je	.label_211
	mov	rdi, qword ptr [rip + stdout]
	mov	rax, qword ptr [rdi + 0x28]
	cmp	rax, qword ptr [rdi + 0x30]
	jae	.label_213
	lea	rcx, [rax + 1]
	mov	qword ptr [rdi + 0x28], rcx
	mov	byte ptr [rax], r14b
.label_216:
	mov	eax, dword ptr [rsp + 4]
	test	al, al
	je	.label_194
	mov	edi, r12d
	call	getgrgid
	test	rax, rax
	je	.label_196
	mov	rdi, qword ptr [rax]
	mov	rsi, qword ptr [rip + stdout]
	jmp	.label_206
.label_194:
	mov	edi, r12d
	mov	esi, OFFSET FLAT:gidtostr_ptr.buf
	jmp	.label_200
.label_196:
	xor	r15d, r15d
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_20
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	qword ptr [rsp + 8], rbp
	mov	ebp, r12d
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	mov	rcx, rbp
	call	error
	mov	esi, OFFSET FLAT:gidtostr_ptr.buf
	mov	rdi, rbp
	mov	rbp, qword ptr [rsp + 8]
.label_200:
	call	umaxtostr
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
.label_206:
	call	fputs_unlocked
.label_211:
	test	r13, r13
	mov	esi, r12d
	je	.label_190
	mov	esi, dword ptr [r13 + 0x14]
.label_190:
	lea	rdx, [rsp + 0x10]
	mov	rdi, rbp
	call	xgetgroups
	test	eax, eax
	js	.label_197
	mov	qword ptr [rsp + 8], r15
	je	.label_198
	movzx	r15d, r14b
	movsxd	r13, eax
	mov	eax, dword ptr [rsp + 4]
	test	al, al
	je	.label_202
	mov	dword ptr [rsp + 4], r15d
	xor	r15d, r15d
	jmp	.label_210
.label_197:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	test	rbp, rbp
	je	.label_207
	mov	esi, OFFSET FLAT:label_208
	mov	edx, 5
	call	dcgettext
	mov	rdi, rbp
	mov	rbp, rax
	call	quote
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, rbp
	call	error
	jmp	.label_187
.label_202:
	xor	ebp, ebp
	jmp	.label_188
.label_207:
	mov	esi, OFFSET FLAT:label_193
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, rcx
	call	error
.label_187:
	xor	eax, eax
	jmp	.label_199
.label_209:
	mov	esi, dword ptr [rsp + 4]
	call	__overflow
	jmp	.label_191
	.section	.text
	.align	32
	#Procedure 0x40333d
	.globl sub_40333d
	.type sub_40333d, @function
sub_40333d:

	nop	dword ptr [rax]
.label_210:
	mov	rax, qword ptr [rsp + 0x10]
	mov	eax, dword ptr [rax + r15*4]
	cmp	eax, ebx
	je	.label_204
	cmp	eax, r12d
	je	.label_204
	mov	rdi, qword ptr [rip + stdout]
	mov	rax, qword ptr [rdi + 0x28]
	cmp	rax, qword ptr [rdi + 0x30]
	jae	.label_209
	lea	rcx, [rax + 1]
	mov	qword ptr [rdi + 0x28], rcx
	mov	byte ptr [rax], r14b
.label_191:
	mov	rax, qword ptr [rsp + 0x10]
	mov	ebp, dword ptr [rax + r15*4]
	mov	edi, ebp
	call	getgrgid
	test	rax, rax
	je	.label_189
	mov	rdi, qword ptr [rax]
	mov	rsi, qword ptr [rip + stdout]
	jmp	.label_205
.label_189:
	xor	eax, eax
	mov	qword ptr [rsp + 8], rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_20
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	mov	rcx, rbp
	call	error
	mov	esi, OFFSET FLAT:gidtostr_ptr.buf
	mov	rdi, rbp
	call	umaxtostr
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
.label_205:
	call	fputs_unlocked
.label_204:
	inc	r15
	cmp	r15, r13
	jl	.label_210
	jmp	.label_198
.label_195:
	mov	esi, r15d
	call	__overflow
	jmp	.label_214
	.section	.text
	.align	32
	#Procedure 0x4033f7
	.globl sub_4033f7
	.type sub_4033f7, @function
sub_4033f7:

	nop	word ptr [rax + rax]
.label_188:
	mov	rax, qword ptr [rsp + 0x10]
	mov	eax, dword ptr [rax + rbp*4]
	cmp	eax, ebx
	je	.label_186
	cmp	eax, r12d
	je	.label_186
	mov	rdi, qword ptr [rip + stdout]
	mov	rax, qword ptr [rdi + 0x28]
	cmp	rax, qword ptr [rdi + 0x30]
	jae	.label_195
	lea	rcx, [rax + 1]
	mov	qword ptr [rdi + 0x28], rcx
	mov	byte ptr [rax], r14b
.label_214:
	mov	rax, qword ptr [rsp + 0x10]
	mov	edi, dword ptr [rax + rbp*4]
	mov	esi, OFFSET FLAT:gidtostr_ptr.buf
	call	umaxtostr
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
.label_186:
	inc	rbp
	cmp	rbp, r13
	jl	.label_188
.label_198:
	mov	rdi, qword ptr [rsp + 0x10]
	call	free
	mov	rax, qword ptr [rsp + 8]
	and	al, 1
.label_199:
	add	rsp, 0x18
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_213:
	movzx	esi, r14b
	call	__overflow
	jmp	.label_216
	.section	.text
	.align	32
	#Procedure 0x403484
	.globl sub_403484
	.type sub_403484, @function
sub_403484:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403490
	.globl quotearg_alloc_mem
	.type quotearg_alloc_mem, @function
quotearg_alloc_mem:

	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x28
	mov	rbx, rdx
	mov	qword ptr [rsp + 0x18], rbx
	mov	r14, rsi
	mov	qword ptr [rsp + 0x10], r14
	mov	r15, rdi
	mov	qword ptr [rsp + 8], r15
	test	rcx, rcx
	mov	r12d, OFFSET FLAT:default_quoting_options
	cmovne	r12, rcx
	call	__errno_location
	mov	qword ptr [rsp + 0x20], rax
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rsp + 4], ecx
	xor	ebp, ebp
	test	rbx, rbx
	sete	bpl
	or	ebp, dword ptr [r12 + 4]
	mov	r8d, dword ptr [r12]
	lea	r13, [r12 + 8]
	sub	rsp, 8
	xor	edi, edi
	xor	esi, esi
	mov	rdx, r15
	mov	rcx, r14
	mov	r9d, ebp
	push	qword ptr [r12 + 0x30]
	push	qword ptr [r12 + 0x28]
	push	r13
	call	quotearg_buffer_restyled
	add	rsp, 0x20
	mov	rbx, rax
	lea	r15, [rbx + 1]
	mov	rdi, r15
	call	xmalloc
	mov	r14, rax
	mov	r8d, dword ptr [r12]
	sub	rsp, 8
	mov	rdi, r14
	mov	rsi, r15
	mov	rdx, qword ptr [rsp + 0x10]
	mov	rcx, qword ptr [rsp + 0x18]
	mov	r9d, ebp
	push	qword ptr [r12 + 0x30]
	push	qword ptr [r12 + 0x28]
	push	r13
	call	quotearg_buffer_restyled
	mov	rax, qword ptr [rsp + 0x38]
	add	rsp, 0x20
	test	rax, rax
	mov	ecx, dword ptr [rsp + 4]
	mov	rdx, qword ptr [rsp + 0x20]
	mov	dword ptr [rdx], ecx
	je	.label_217
	mov	qword ptr [rax], rbx
.label_217:
	mov	rax, r14
	add	rsp, 0x28
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40357c
	.globl sub_40357c
	.type sub_40357c, @function
sub_40357c:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x403580

	.globl rpl_mbrtowc
	.type rpl_mbrtowc, @function
rpl_mbrtowc:
	push	r15
	push	r14
	push	r12
	push	rbx
	push	rax
	mov	r12, rdx
	mov	r14, rsi
	test	rdi, rdi
	lea	rbx, [rsp + 4]
	cmovne	rbx, rdi
	mov	rdi, rbx
	call	mbrtowc
	mov	r15, rax
	test	r12, r12
	je	.label_218
	cmp	r15, -2
	jb	.label_218
	xor	edi, edi
	call	hard_locale
	test	al, al
	jne	.label_218
	movzx	eax, byte ptr [r14]
	mov	dword ptr [rbx], eax
	mov	r15d, 1
.label_218:
	mov	rax, r15
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	32
	#Procedure 0x4035d6
	.globl sub_4035d6
	.type sub_4035d6, @function
sub_4035d6:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4035e0
	.globl quotearg_colon_mem
	.type quotearg_colon_mem, @function
quotearg_colon_mem:

	sub	rsp, 0x38
	mov	rax, rsi
	mov	rdx, rdi
	mov	rcx, qword ptr [rip + label_31]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0, xmmword ptr [rip + label_32]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_33]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	or	byte ptr [rsp + 0xf], 4
	lea	rcx, [rsp]
	xor	edi, edi
	mov	rsi, rdx
	mov	rdx, rax
	call	quotearg_n_options
	add	rsp, 0x38
	ret	
	.section	.text
	.align	32
	#Procedure 0x403634
	.globl sub_403634
	.type sub_403634, @function
sub_403634:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403640

	.globl quote
	.type quote, @function
quote:
	mov	rax, rdi
	xor	edi, edi
	mov	rdx, -1
	mov	ecx, OFFSET FLAT:quote_quoting_options
	mov	rsi, rax
	jmp	quotearg_n_options
	.section	.text
	.align	32
	#Procedure 0x403659
	.globl sub_403659
	.type sub_403659, @function
sub_403659:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x403660

	.globl xmemdup
	.type xmemdup, @function
xmemdup:
	push	r15
	push	r14
	push	rbx
	mov	rbx, rsi
	mov	r14, rdi
	mov	rdi, rbx
	call	malloc
	mov	r15, rax
	test	rbx, rbx
	je	.label_219
	test	r15, r15
	je	.label_220
.label_219:
	mov	rdi, r15
	mov	rsi, r14
	mov	rdx, rbx
	call	memcpy
	mov	rax, r15
	pop	rbx
	pop	r14
	pop	r15
	ret	
.label_220:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x40369c
	.globl sub_40369c
	.type sub_40369c, @function
sub_40369c:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4036a0

	.globl quotearg_buffer_restyled
	.type quotearg_buffer_restyled, @function
quotearg_buffer_restyled:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0xc8
	mov	ebx, r9d
	mov	r15d, r8d
	mov	qword ptr [rsp + 0x48], rcx
	mov	qword ptr [rsp + 0x28], rdx
	mov	r13, rsi
	mov	qword ptr [rsp + 0x10], rdi
	mov	rax, qword ptr [rsp + 0x110]
	mov	qword ptr [rsp + 0x78], rax
	mov	rax, qword ptr [rsp + 0x108]
	mov	qword ptr [rsp + 0x80], rax
	call	__ctype_get_mb_cur_max
	mov	qword ptr [rsp + 0xb8], rax
	mov	r12d, ebx
	shr	r12b, 1
	and	r12b, 1
	mov	eax, ebx
	and	eax, 1
	mov	dword ptr [rsp + 0x9c], eax
	mov	dword ptr [rsp + 0x20], ebx
	and	ebx, 4
	mov	dword ptr [rsp + 0x98], ebx
	mov	dil, 1
	mov	eax, 0
	mov	qword ptr [rsp + 0x68], rax
	mov	eax, 0
	mov	qword ptr [rsp + 0x58], rax
	mov	eax, 0
	mov	qword ptr [rsp + 0x50], rax
	mov	eax, 0
	xor	r9d, r9d
	xor	ecx, ecx
	mov	qword ptr [rsp + 0xa8], rcx
	jmp	.label_290
	.section	.text
	.align	32
	#Procedure 0x40374f
	.globl sub_40374f
	.type sub_40374f, @function
sub_40374f:

	nop	
.label_329:
	cmp	r8d, 2
	setne	al
	cmp	byte ptr [rsp + 0xf], 0
	setne	dl
	mov	rsi, qword ptr [rsp + 0xa8]
	test	sil, 1
	mov	bl, byte ptr [rsp + 0x34]
	mov	rsi, qword ptr [rsp + 0xc0]
	je	.label_312
	or	al, dl
	jne	.label_312
	test	dil, 1
	jne	.label_327
	cmp	qword ptr [rsp + 0x68], 0
	je	.label_312
	test	rbp, rbp
	mov	r15d, r8d
	mov	al, bl
	mov	qword ptr [rsp + 0x48], rcx
	mov	r12d, esi
	mov	r13, qword ptr [rsp + 0x68]
	je	.label_290
	jmp	.label_312
.label_432:
	mov	r8d, 5
	test	r12b, 1
	jne	.label_333
	test	rbp, rbp
	je	.label_336
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax], 0x22
.label_336:
	mov	r14d, 1
	jmp	.label_340
.label_433:
	mov	r13b, 1
	mov	r8d, 5
	xor	r14d, r14d
	mov	eax, OFFSET FLAT:label_134
	mov	qword ptr [rsp + 0x58], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0x50], rax
	mov	sil, 1
	jmp	.label_282
.label_333:
	xor	r14d, r14d
.label_340:
	mov	eax, OFFSET FLAT:label_134
	mov	qword ptr [rsp + 0x58], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0x50], rax
	mov	r13b, 1
	jmp	.label_222
	.section	.text
	.align	32
	#Procedure 0x40381f
	.globl sub_40381f
	.type sub_40381f, @function
sub_40381f:

	nop	
.label_290:
	mov	rbp, r13
	xor	r14d, r14d
	mov	ecx, r15d
	cmp	r15d, 0xa
	ja	.label_232
	mov	r8d, 7
	mov	r13b, 1
	xor	esi, esi
	mov	r10, qword ptr [rsp + 0x28]
	mov	r11, qword ptr [rsp + 0x48]
	jmp	qword ptr [(rcx * 8) + label_306]
.label_434:
	mov	r14d, edi
	mov	edi, OFFSET FLAT:label_245
	mov	esi, r15d
	mov	ebx, r9d
	call	gettext_quote
	mov	qword ptr [rsp + 0x80], rax
	mov	edi, OFFSET FLAT:label_135
	mov	esi, r15d
	call	gettext_quote
	mov	r9d, ebx
	mov	edi, r14d
	mov	qword ptr [rsp + 0x78], rax
.label_435:
	mov	byte ptr [rsp + 0x1e], dil
	mov	dword ptr [rsp + 0x60], r9d
	test	r12b, 1
	mov	r14d, 0
	mov	rcx, qword ptr [rsp + 0x80]
	jne	.label_260
	mov	al, byte ptr [rcx]
	test	al, al
	mov	r14d, 0
	je	.label_260
	xor	r14d, r14d
	nop	
.label_249:
	cmp	r14, rbp
	jae	.label_233
	mov	rdx, qword ptr [rsp + 0x10]
	mov	byte ptr [rdx + r14], al
.label_233:
	movzx	eax, byte ptr [rcx + r14 + 1]
	inc	r14
	test	al, al
	jne	.label_249
.label_260:
	mov	rbx, qword ptr [rsp + 0x78]
	mov	rdi, rbx
	call	strlen
	mov	qword ptr [rsp + 0x50], rax
	mov	r8d, r15d
	mov	qword ptr [rsp + 0x58], rbx
	mov	r13b, 1
	mov	sil, r12b
	mov	r10, qword ptr [rsp + 0x28]
	mov	r11, qword ptr [rsp + 0x48]
	mov	dil, byte ptr [rsp + 0x1e]
	mov	r9d, dword ptr [rsp + 0x60]
	jmp	.label_282
.label_427:
	xor	r8d, r8d
	xor	r14d, r14d
	mov	r13d, eax
	xor	esi, esi
	jmp	.label_282
.label_430:
	mov	al, 1
.label_428:
	mov	r12b, 1
.label_431:
	test	r12b, 1
	mov	cl, 1
	je	.label_298
	mov	ecx, eax
.label_298:
	mov	al, cl
.label_429:
	mov	r8d, 2
	test	r12b, 1
	jne	.label_300
	test	rbp, rbp
	je	.label_305
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx], 0x27
.label_305:
	mov	r14d, 1
	jmp	.label_308
.label_300:
	xor	r14d, r14d
.label_308:
	mov	ecx, OFFSET FLAT:label_135
	mov	qword ptr [rsp + 0x58], rcx
	mov	ecx, 1
	mov	qword ptr [rsp + 0x50], rcx
	mov	r13d, eax
.label_222:
	mov	sil, r12b
.label_282:
	cmp	qword ptr [rsp + 0x100], 0
	setne	r12b
	cmp	r8d, 2
	setne	r15b
	sete	al
	mov	ecx, r13d
	and	cl, 1
	sete	byte ptr [rsp + 0x33]
	mov	ebx, r15d
	mov	byte ptr [rsp + 0x1f], cl
	and	bl, cl
	cmp	qword ptr [rsp + 0x50], 0
	setne	cl
	mov	edx, ecx
	mov	byte ptr [rsp + 0x36], bl
	and	dl, bl
	mov	byte ptr [rsp + 0x37], dl
	mov	ebx, esi
	and	bl, 1
	sete	dl
	and	al, bl
	mov	byte ptr [rsp + 0x31], al
	mov	byte ptr [rsp + 0xf], bl
	and	r12b, bl
	mov	byte ptr [rsp + 0x35], r12b
	or	dl, r15b
	mov	byte ptr [rsp + 0x27], dl
	mov	byte ptr [rsp + 0x34], r13b
	mov	qword ptr [rsp + 0xc0], rsi
	and	r13b, sil
	and	r13b, cl
	mov	byte ptr [rsp + 0x32], r13b
	xor	r12d, r12d
	mov	qword ptr [rsp + 0x38], r8
	jmp	.label_317
	.section	.text
	.align	32
	#Procedure 0x4039e1
	.globl sub_4039e1
	.type sub_4039e1, @function
sub_4039e1:

	nop	word ptr cs:[rax + rax]
.label_264:
	inc	r12
.label_317:
	cmp	r11, -1
	je	.label_343
	cmp	r12, r11
	jne	.label_344
	jmp	.label_345
	.section	.text
	.align	32
	#Procedure 0x403a03
	.globl sub_403a03
	.type sub_403a03, @function
sub_403a03:

	nop	word ptr cs:[rax + rax]
.label_343:
	mov	rcx, -1
	cmp	byte ptr [r10 + r12], 0
	je	.label_226
.label_344:
	cmp	byte ptr [rsp + 0x37], 0
	je	.label_234
	mov	rax, qword ptr [rsp + 0x50]
	lea	rbx, [r12 + rax]
	cmp	rax, 2
	jb	.label_237
	cmp	r11, -1
	jne	.label_237
	mov	r15d, edi
	mov	rdi, r10
	mov	r13d, r9d
	call	strlen
	mov	r9d, r13d
	mov	r8, qword ptr [rsp + 0x38]
	mov	edi, r15d
	mov	r10, qword ptr [rsp + 0x28]
	mov	r11, rax
.label_237:
	cmp	rbx, r11
	jbe	.label_250
.label_234:
	xor	esi, esi
.label_266:
	movzx	r15d, byte ptr [r10 + r12]
	cmp	r15, 0x7e
	ja	.label_252
	xor	edx, edx
	mov	r13b, 1
	mov	cl, 0x6e
	mov	bl, 0x61
	xor	eax, eax
	jmp	qword ptr [(r15 * 8) + label_257]
.label_450:
	test	r12, r12
	jne	.label_261
	jmp	.label_263
	.section	.text
	.align	32
	#Procedure 0x403a96
	.globl sub_403a96
	.type sub_403a96, @function
sub_403a96:

	nop	word ptr cs:[rax + rax]
.label_250:
	mov	r13d, r9d
	mov	r15d, edi
	mov	rbx, r11
	lea	rdi, [r10 + r12]
	mov	rsi, qword ptr [rsp + 0x58]
	mov	rdx, qword ptr [rsp + 0x50]
	call	memcmp
	test	eax, eax
	sete	sil
	jne	.label_275
	cmp	byte ptr [rsp + 0xf], 0
	mov	r10, qword ptr [rsp + 0x28]
	mov	r11, rbx
	mov	edi, r15d
	mov	r8, qword ptr [rsp + 0x38]
	mov	r9d, r13d
	je	.label_266
	jmp	.label_285
.label_275:
	mov	r10, qword ptr [rsp + 0x28]
	mov	r11, rbx
	mov	edi, r15d
	mov	r8, qword ptr [rsp + 0x38]
	mov	r9d, r13d
	jmp	.label_266
.label_454:
	xor	eax, eax
	cmp	r11, -1
	je	.label_293
	test	r12, r12
	jne	.label_297
	cmp	r11, 1
	je	.label_263
	xor	r13d, r13d
	jmp	.label_239
.label_443:
	cmp	byte ptr [rsp + 0x1f], 0
	je	.label_302
	cmp	byte ptr [rsp + 0xf], 0
	jne	.label_285
	cmp	r8d, 2
	jne	.label_310
	mov	eax, r9d
	and	al, 1
	jne	.label_310
	cmp	r14, rbp
	jae	.label_311
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x27
.label_311:
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	jae	.label_313
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx + rax], 0x24
.label_313:
	lea	rax, [r14 + 2]
	cmp	rax, rbp
	jae	.label_320
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx + rax], 0x27
.label_320:
	add	r14, 3
	mov	r9b, 1
.label_310:
	mov	rcx, r14
	cmp	rcx, rbp
	jae	.label_326
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + rcx], 0x5c
.label_326:
	lea	r14, [rcx + 1]
	mov	al, 1
	mov	r15b, 0x30
	cmp	r8d, 2
	je	.label_319
	lea	rdx, [r12 + 1]
	cmp	rdx, r11
	jae	.label_319
	mov	dl, byte ptr [r10 + rdx]
	add	dl, 0xd0
	cmp	dl, 9
	ja	.label_319
	cmp	r14, rbp
	jae	.label_325
	mov	rdx, qword ptr [rsp + 0x10]
	mov	byte ptr [rdx + r14], 0x30
.label_325:
	lea	rdx, [rcx + 2]
	cmp	rdx, rbp
	jae	.label_287
	mov	ebx, esi
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + rdx], 0x30
	mov	esi, ebx
.label_287:
	add	rcx, 3
	xor	r13d, r13d
	mov	r14, rcx
	jmp	.label_239
.label_444:
	mov	bl, 0x62
	jmp	.label_224
.label_445:
	mov	cl, 0x74
	jmp	.label_253
.label_446:
	mov	bl, 0x76
	jmp	.label_224
.label_447:
	mov	bl, 0x66
	jmp	.label_224
.label_448:
	mov	cl, 0x72
	jmp	.label_253
.label_451:
	mov	r15b, 0x27
	mov	al, 1
	mov	qword ptr [rsp + 0xa8], rax
	cmp	r8d, 2
	jne	.label_230
	cmp	byte ptr [rsp + 0xf], 0
	jne	.label_238
	test	rbp, rbp
	sete	al
	mov	rcx, qword ptr [rsp + 0x68]
	mov	rdx, rcx
	test	rdx, rdx
	setne	cl
	or	cl, al
	cmove	rdx, rbp
	mov	qword ptr [rsp + 0x68], rdx
	mov	eax, 0
	cmove	rbp, rax
	cmp	r14, rbp
	jae	.label_241
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x27
.label_241:
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	jae	.label_254
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx + rax], 0x5c
.label_254:
	lea	rax, [r14 + 2]
	cmp	rax, rbp
	jae	.label_259
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx + rax], 0x27
.label_259:
	add	r14, 3
	xor	r9d, r9d
.label_230:
	xor	eax, eax
	mov	r13b, 1
	jmp	.label_239
.label_452:
	mov	r15b, 0x3f
	cmp	r8d, 5
	je	.label_269
	cmp	r8d, 2
	jne	.label_261
	cmp	byte ptr [rsp + 0xf], 0
	je	.label_261
	jmp	.label_238
.label_453:
	cmp	r8d, 2
	jne	.label_279
	cmp	byte ptr [rsp + 0xf], 0
	jne	.label_238
	mov	r15b, 0x5c
	xor	eax, eax
	jmp	.label_307
.label_252:
	cmp	qword ptr [rsp + 0xb8], 1
	mov	qword ptr [rsp + 0xa0], rbp
	mov	byte ptr [rsp + 0x1e], dil
	mov	dword ptr [rsp + 0x60], r9d
	mov	dword ptr [rsp + 0x94], esi
	jne	.label_289
	mov	qword ptr [rsp + 0x48], r11
	call	__ctype_b_loc
	mov	r10, qword ptr [rsp + 0x28]
	mov	rax, qword ptr [rax]
	movzx	r13d, word ptr [rax + r15*2]
	shr	r13d, 0xe
	and	r13b, 1
	mov	ebx, 1
	jmp	.label_299
.label_293:
	test	r12, r12
	jne	.label_309
	mov	cl, byte ptr [r10 + 1]
	test	cl, cl
	jne	.label_309
.label_263:
	mov	dl, 1
.label_449:
	cmp	byte ptr [rsp + 0x27], 0
	je	.label_238
	xor	eax, eax
	mov	r13b, dl
.label_239:
	cmp	byte ptr [rsp + 0x36], 0
	je	.label_318
	cmp	qword ptr [rsp + 0x100], 0
	jne	.label_321
	jmp	.label_322
	.section	.text
	.align	32
	#Procedure 0x403d74
	.globl sub_403d74
	.type sub_403d74, @function
sub_403d74:

	nop	word ptr cs:[rax + rax]
.label_318:
	cmp	byte ptr [rsp + 0x35], 0
	je	.label_322
.label_321:
	mov	ecx, r15d
	shr	cl, 5
	movzx	edx, cl
	mov	ebx, esi
	mov	esi, 1
	mov	ecx, r15d
	shl	esi, cl
	test	bl, bl
	jne	.label_337
	mov	rcx, qword ptr [rsp + 0x100]
	and	esi, dword ptr [rcx + rdx*4]
	jmp	.label_331
	.section	.text
	.align	32
	#Procedure 0x403dad
	.globl sub_403dad
	.type sub_403dad, @function
sub_403dad:

	nop	dword ptr [rax]
.label_322:
	test	sil, sil
.label_331:
	mov	ebx, r15d
	je	.label_267
	jmp	.label_335
.label_337:
	mov	ebx, r15d
	jmp	.label_335
.label_302:
	cmp	dword ptr [rsp + 0x9c], 0
	jne	.label_264
	xor	r15d, r15d
	jmp	.label_261
.label_279:
	mov	cl, 0x5c
	cmp	byte ptr [rsp + 0x32], 0
	je	.label_253
	xor	eax, eax
	mov	r15b, 0x5c
.label_307:
	xor	r13d, r13d
	jmp	.label_267
.label_253:
	cmp	byte ptr [rsp + 0x27], 0
	mov	ebx, ecx
	je	.label_238
.label_224:
	xor	eax, eax
	cmp	byte ptr [rsp + 0x1f], 0
	mov	r13d, 0
	je	.label_239
	nop	
.label_335:
	cmp	byte ptr [rsp + 0xf], 0
	jne	.label_285
	cmp	r8d, 2
	jne	.label_231
	mov	eax, r9d
	and	al, 1
	jne	.label_231
	cmp	r14, rbp
	jae	.label_236
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x27
.label_236:
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	jae	.label_242
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx + rax], 0x24
.label_242:
	lea	rax, [r14 + 2]
	cmp	rax, rbp
	jae	.label_244
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx + rax], 0x27
.label_244:
	add	r14, 3
	mov	r9b, 1
.label_231:
	cmp	r14, rbp
	jae	.label_251
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x5c
.label_251:
	inc	r14
	jmp	.label_271
.label_289:
	mov	qword ptr [rsp + 0x70], 0
	cmp	r11, -1
	jne	.label_258
	mov	rdi, r10
	call	strlen
	mov	r10, qword ptr [rsp + 0x28]
	mov	r11, rax
.label_258:
	cmp	byte ptr [rsp + 0x31], 0
	mov	qword ptr [rsp + 0x48], r11
	mov	qword ptr [rsp + 0x88], r12
	je	.label_328
	lea	rax, [r10 + r12]
	mov	qword ptr [rsp + 0xb0], rax
	mov	r13b, 1
	xor	r12d, r12d
	lea	rbp, [rsp + 0x70]
.label_323:
	mov	rax, r12
	mov	qword ptr [rsp + 0x40], rax
	mov	rcx, qword ptr [rsp + 0x88]
	lea	rax, [r12 + rcx]
	mov	r12, rcx
	lea	rsi, [r10 + rax]
	mov	rdx, r11
	sub	rdx, rax
	lea	rdi, [rsp + 0x64]
	mov	rcx, rbp
	call	rpl_mbrtowc
	mov	rbx, rax
	cmp	rbx, -2
	je	.label_280
	cmp	rbx, -1
	mov	r10, qword ptr [rsp + 0x28]
	movabs	rsi, 0x20000002b
	je	.label_294
	test	rbx, rbx
	mov	r11, qword ptr [rsp + 0x48]
	je	.label_270
	cmp	rbx, 2
	mov	rbp, qword ptr [rsp + 0xa0]
	jb	.label_303
	mov	rax, qword ptr [rsp + 0x40]
	mov	rcx, qword ptr [rsp + 0xb0]
	lea	rax, [rcx + rax]
	mov	ecx, 1
	nop	dword ptr [rax]
.label_332:
	movsx	edx, byte ptr [rax + rcx]
	add	edx, -0x5b
	cmp	edx, 0x21
	ja	.label_291
	bt	rsi, rdx
	jb	.label_238
.label_291:
	inc	rcx
	cmp	rcx, rbx
	jb	.label_332
.label_303:
	mov	edi, dword ptr [rsp + 0x64]
	call	iswprint
	test	eax, eax
	jne	.label_324
	xor	r13d, r13d
.label_324:
	lea	rbp, [rsp + 0x70]
	mov	r12, qword ptr [rsp + 0x40]
	add	r12, rbx
	mov	rdi, rbp
	call	mbsinit
	test	eax, eax
	mov	r10, qword ptr [rsp + 0x28]
	mov	r11, qword ptr [rsp + 0x48]
	je	.label_323
	jmp	.label_296
.label_319:
	xor	r13d, r13d
	jmp	.label_239
.label_309:
	mov	r11, -1
	xor	r13d, r13d
	jmp	.label_239
.label_269:
	cmp	dword ptr [rsp + 0x98], 0
	je	.label_261
	lea	rcx, [r12 + 2]
	cmp	rcx, r11
	jae	.label_261
	cmp	byte ptr [r10 + r12 + 1], 0x3f
	jne	.label_261
	movsx	edx, byte ptr [r10 + rcx]
	xor	eax, eax
	cmp	edx, 0x3e
	ja	.label_342
	mov	ebx, esi
	movabs	rsi, 0x7000a38200000000
	bt	rsi, rdx
	jae	.label_341
	cmp	byte ptr [rsp + 0xf], 0
	jne	.label_225
	cmp	r14, rbp
	jae	.label_228
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x3f
.label_228:
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	jae	.label_235
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + rax], 0x22
.label_235:
	lea	rax, [r14 + 2]
	cmp	rax, rbp
	jae	.label_255
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + rax], 0x22
.label_255:
	lea	rax, [r14 + 3]
	cmp	rax, rbp
	jae	.label_265
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + rax], 0x3f
.label_265:
	add	r14, 4
	xor	eax, eax
	mov	r12, rcx
	mov	r15b, dl
.label_341:
	xor	r13d, r13d
	mov	esi, ebx
	jmp	.label_239
.label_261:
	xor	eax, eax
.label_297:
	xor	r13d, r13d
	jmp	.label_239
.label_328:
	mov	r13b, 1
	xor	r12d, r12d
	lea	rbx, [rsp + 0x70]
	nop	word ptr cs:[rax + rax]
.label_338:
	mov	rax, r12
	mov	qword ptr [rsp + 0x40], rax
	mov	rcx, qword ptr [rsp + 0x88]
	lea	rax, [r12 + rcx]
	mov	r12, rcx
	lea	rsi, [r10 + rax]
	mov	rdx, r11
	sub	rdx, rax
	lea	rdi, [rsp + 0x64]
	mov	rcx, rbx
	call	rpl_mbrtowc
	mov	rbp, rax
	test	rbp, rbp
	je	.label_276
	cmp	rbp, -1
	je	.label_278
	cmp	rbp, -2
	je	.label_280
	mov	edi, dword ptr [rsp + 0x64]
	call	iswprint
	test	eax, eax
	mov	r12, qword ptr [rsp + 0x40]
	jne	.label_283
	xor	r13d, r13d
.label_283:
	add	r12, rbp
	lea	rbx, [rsp + 0x70]
	mov	rdi, rbx
	call	mbsinit
	test	eax, eax
	mov	r10, qword ptr [rsp + 0x28]
	mov	r11, qword ptr [rsp + 0x48]
	je	.label_338
	jmp	.label_296
.label_280:
	mov	r10, qword ptr [rsp + 0x28]
	mov	rsi, qword ptr [rsp + 0x40]
	lea	rax, [rsi + r12]
	mov	rdx, qword ptr [rsp + 0x48]
	cmp	rax, rdx
	jae	.label_286
	lea	rax, [r10 + r12]
.label_284:
	cmp	byte ptr [rax + rsi], 0
	je	.label_286
	lea	rcx, [r12 + rsi + 1]
	inc	rsi
	cmp	rcx, rdx
	jb	.label_284
.label_286:
	mov	qword ptr [rsp + 0x40], rsi
.label_294:
	xor	r13d, r13d
	jmp	.label_270
.label_278:
	xor	r13d, r13d
.label_276:
	mov	r10, qword ptr [rsp + 0x28]
.label_270:
	mov	r12, qword ptr [rsp + 0x40]
.label_296:
	mov	rbx, r12
	mov	r12, qword ptr [rsp + 0x88]
.label_299:
	and	r13b, 1
	mov	eax, r13d
	or	al, byte ptr [rsp + 0x33]
	cmp	rbx, 1
	mov	rbp, qword ptr [rsp + 0xa0]
	mov	dil, byte ptr [rsp + 0x1e]
	mov	r8, qword ptr [rsp + 0x38]
	mov	r9d, dword ptr [rsp + 0x60]
	mov	esi, dword ptr [rsp + 0x94]
	ja	.label_316
	test	al, al
	je	.label_316
	xor	eax, eax
	mov	r11, qword ptr [rsp + 0x48]
	jmp	.label_239
.label_316:
	mov	byte ptr [rsp + 0x40], al
	add	rbx, r12
	xor	eax, eax
	mov	r11, qword ptr [rsp + 0x48]
	jmp	.label_330
	.section	.text
	.align	32
	#Procedure 0x4041a7
	.globl sub_4041a7
	.type sub_4041a7, @function
sub_4041a7:

	nop	word ptr [rax + rax]
.label_295:
	inc	r14
	mov	r15b, byte ptr [r10 + r12 + 1]
	mov	r12, rdx
.label_330:
	cmp	byte ptr [rsp + 0x40], 0
	je	.label_334
	test	sil, 1
	je	.label_262
	cmp	r14, rbp
	jae	.label_339
	mov	rdx, qword ptr [rsp + 0x10]
	mov	byte ptr [rdx + r14], 0x5c
.label_339:
	inc	r14
	xor	esi, esi
	jmp	.label_262
	.section	.text
	.align	32
	#Procedure 0x4041e5
	.globl sub_4041e5
	.type sub_4041e5, @function
sub_4041e5:

	nop	word ptr cs:[rax + rax]
.label_334:
	cmp	byte ptr [rsp + 0xf], 0
	jne	.label_285
	cmp	r8d, 2
	jne	.label_221
	mov	eax, r9d
	and	al, 1
	jne	.label_221
	cmp	r14, rbp
	jae	.label_223
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x27
.label_223:
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	jae	.label_229
	mov	rdx, qword ptr [rsp + 0x10]
	mov	byte ptr [rdx + rax], 0x24
.label_229:
	lea	rax, [r14 + 2]
	cmp	rax, rbp
	jae	.label_288
	mov	rdx, qword ptr [rsp + 0x10]
	mov	byte ptr [rdx + rax], 0x27
.label_288:
	add	r14, 3
	mov	r9b, 1
.label_221:
	cmp	r14, rbp
	jae	.label_243
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x5c
.label_243:
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	jae	.label_247
	mov	edx, r15d
	shr	dl, 6
	or	dl, 0x30
	mov	ecx, esi
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + rax], dl
	mov	esi, ecx
.label_247:
	lea	rax, [r14 + 2]
	cmp	rax, rbp
	jae	.label_256
	mov	edx, r15d
	shr	dl, 3
	and	dl, 7
	or	dl, 0x30
	mov	ecx, esi
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + rax], dl
	mov	esi, ecx
.label_256:
	add	r14, 3
	and	r15b, 7
	or	r15b, 0x30
	mov	al, 1
.label_262:
	lea	rdx, [r12 + 1]
	cmp	rbx, rdx
	jbe	.label_267
	test	r9b, 1
	je	.label_272
	mov	rcx, rbx
	mov	ebx, eax
	and	bl, 1
	jne	.label_227
	mov	r8, r12
	mov	r12d, esi
	cmp	r14, rbp
	jae	.label_274
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + r14], 0x27
.label_274:
	lea	rsi, [r14 + 1]
	cmp	rsi, rbp
	jae	.label_281
	mov	rbx, qword ptr [rsp + 0x10]
	mov	byte ptr [rbx + rsi], 0x27
.label_281:
	add	r14, 2
	xor	r9d, r9d
	mov	esi, r12d
	mov	rbx, rcx
	mov	r12, r8
	mov	r8, qword ptr [rsp + 0x38]
	jmp	.label_272
	.section	.text
	.align	32
	#Procedure 0x4042f6
	.globl sub_4042f6
	.type sub_4042f6, @function
sub_4042f6:

	nop	word ptr cs:[rax + rax]
.label_227:
	mov	rbx, rcx
.label_272:
	cmp	r14, rbp
	jae	.label_295
	mov	ecx, esi
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + r14], r15b
	mov	esi, ecx
	jmp	.label_295
	.section	.text
	.align	32
	#Procedure 0x40431e
	.globl sub_40431e
	.type sub_40431e, @function
sub_40431e:

	nop	
.label_267:
	test	r9b, 1
	je	.label_301
	and	al, 1
	jne	.label_301
	cmp	r14, rbp
	jae	.label_304
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x27
.label_304:
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	jae	.label_315
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx + rax], 0x27
.label_315:
	add	r14, 2
	xor	r9d, r9d
.label_301:
	mov	ebx, r15d
.label_271:
	cmp	r14, rbp
	jae	.label_314
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], bl
.label_314:
	inc	r14
	shl	r13b, 7
	sar	r13b, 7
	and	r13b, dil
	mov	edi, r13d
	jmp	.label_264
.label_342:
	xor	r13d, r13d
	jmp	.label_239
	.section	.text
	.align	32
	#Procedure 0x404381
	.globl sub_404381
	.type sub_404381, @function
sub_404381:

	nop	word ptr cs:[rax + rax]
.label_345:
	mov	rcx, r12
.label_226:
	cmp	r8d, 2
	setne	al
	test	r14, r14
	setne	dl
	cmp	byte ptr [rsp + 0xf], 0
	je	.label_329
	or	al, dl
	jne	.label_329
	mov	r11, rcx
	jmp	.label_285
.label_238:
	mov	eax, 2
.label_277:
	mov	qword ptr [rsp + 0x38], rax
.label_285:
	mov	r9d, dword ptr [rsp + 0x20]
	cmp	byte ptr [rsp + 0x1f], 0
	mov	r8d, 4
	mov	rax, qword ptr [rsp + 0x38]
	cmove	r8d, eax
	cmp	eax, 2
	cmovne	r8d, eax
	and	r9d, 0xfffffffd
	sub	rsp, 8
	mov	rdi, qword ptr [rsp + 0x18]
	mov	rsi, rbp
	mov	rdx, r10
	mov	rcx, r11
	push	qword ptr [rsp + 0x80]
	push	qword ptr [rsp + 0x90]
	push	0
	call	quotearg_buffer_restyled
	add	rsp, 0x20
.label_268:
	mov	r14, rax
.label_273:
	mov	rax, r14
	add	rsp, 0xc8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_312:
	mov	rdx, qword ptr [rsp + 0x58]
	test	rdx, rdx
	je	.label_292
	cmp	byte ptr [rsp + 0xf], 0
	mov	rcx, qword ptr [rsp + 0x10]
	jne	.label_240
	mov	al, byte ptr [rdx]
	test	al, al
	je	.label_240
	inc	rdx
	nop	dword ptr [rax + rax]
.label_248:
	cmp	r14, rbp
	jae	.label_246
	mov	byte ptr [rcx + r14], al
.label_246:
	inc	r14
	movzx	eax, byte ptr [rdx]
	inc	rdx
	test	al, al
	jne	.label_248
	jmp	.label_240
.label_327:
	sub	rsp, 8
	mov	r8d, 5
	mov	rdi, qword ptr [rsp + 0x18]
	mov	rsi, qword ptr [rsp + 0x70]
	mov	rdx, qword ptr [rsp + 0x30]
	mov	r9d, dword ptr [rsp + 0x28]
	push	qword ptr [rsp + 0x80]
	push	qword ptr [rsp + 0x90]
	push	qword ptr [rsp + 0x118]
	call	quotearg_buffer_restyled
	add	rsp, 0x20
	jmp	.label_268
.label_292:
	mov	rcx, qword ptr [rsp + 0x10]
.label_240:
	cmp	r14, rbp
	jae	.label_273
	mov	byte ptr [rcx + r14], 0
	jmp	.label_273
.label_225:
	mov	eax, 5
	jmp	.label_277
.label_232:
	call	abort
	.section	.text
	.align	32
	#Procedure 0x4044d0
	.globl quotearg_custom_mem
	.type quotearg_custom_mem, @function
quotearg_custom_mem:

	sub	rsp, 0x38
	mov	rax, qword ptr [rip + label_31]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0, xmmword ptr [rip + label_32]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_33]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rdi, rdi
	je	.label_346
	test	rsi, rsi
	je	.label_346
	mov	qword ptr [rsp + 0x28], rdi
	mov	qword ptr [rsp + 0x30], rsi
	lea	rax, [rsp]
	xor	edi, edi
	mov	rsi, rdx
	mov	rdx, rcx
	mov	rcx, rax
	call	quotearg_n_options
	add	rsp, 0x38
	ret	
.label_346:
	call	abort
	.section	.text
	.align	32
	#Procedure 0x40453c
	.globl sub_40453c
	.type sub_40453c, @function
sub_40453c:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x404540

	.globl rpl_fseeko
	.type rpl_fseeko, @function
rpl_fseeko:
	push	rbp
	push	r14
	push	rbx
	mov	r14d, edx
	mov	rbp, rsi
	mov	rbx, rdi
	mov	rax, qword ptr [rbx + 0x10]
	cmp	rax, qword ptr [rbx + 8]
	jne	.label_347
	mov	rax, qword ptr [rbx + 0x28]
	cmp	rax, qword ptr [rbx + 0x20]
	jne	.label_347
	cmp	qword ptr [rbx + 0x48], 0
	je	.label_348
.label_347:
	mov	rdi, rbx
	mov	rsi, rbp
	mov	edx, r14d
	pop	rbx
	pop	r14
	pop	rbp
	jmp	fseeko
.label_348:
	mov	rdi, rbx
	call	fileno
	mov	edi, eax
	mov	rsi, rbp
	mov	edx, r14d
	call	lseek
	mov	rcx, rax
	mov	eax, 0xffffffff
	cmp	rcx, -1
	je	.label_349
	and	byte ptr [rbx], 0xef
	mov	qword ptr [rbx + 0x90], rcx
	xor	eax, eax
.label_349:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4045ae
	.globl sub_4045ae
	.type sub_4045ae, @function
sub_4045ae:

	nop	
	.section	.text
	.align	32
	#Procedure 0x4045b0
	.globl quotearg_mem
	.type quotearg_mem, @function
quotearg_mem:

	mov	rax, rsi
	mov	rdx, rdi
	xor	edi, edi
	mov	ecx, OFFSET FLAT:default_quoting_options
	mov	rsi, rdx
	mov	rdx, rax
	jmp	quotearg_n_options
	.section	.text
	.align	32
	#Procedure 0x4045c8
	.globl sub_4045c8
	.type sub_4045c8, @function
sub_4045c8:

	nop	dword ptr [rax + rax]
.label_350:
	call	abort
	.section	.text
	.align	32
	#Procedure 0x4045d5
	.globl sub_4045d5
	.type sub_4045d5, @function
sub_4045d5:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4045dd
	.globl quotearg_style
	.type quotearg_style, @function
quotearg_style:

	sub	rsp, 0x78
	xorps	xmm0, xmm0
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp + 0x30], 0
	cmp	edi, 0xa
	je	.label_350
	mov	dword ptr [rsp + 0x40], edi
	mov	eax, dword ptr [rsp + 0x30]
	mov	dword ptr [rsp + 0x74], eax
	movaps	xmm0, xmmword ptr [rsp]
	movaps	xmm1, xmmword ptr [rsp + 0x10]
	movaps	xmm2, xmmword ptr [rsp + 0x20]
	movups	xmmword ptr [rsp + 0x64], xmm2
	movups	xmmword ptr [rsp + 0x54], xmm1
	movups	xmmword ptr [rsp + 0x44], xmm0
	lea	rcx, [rsp + 0x40]
	xor	edi, edi
	mov	rdx, -1
	call	quotearg_n_options
	add	rsp, 0x78
	ret	
.label_351:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x404645
	.globl sub_404645
	.type sub_404645, @function
sub_404645:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40464f
	.globl xzalloc
	.type xzalloc, @function
xzalloc:

	push	r14
	push	rbx
	push	rax
	mov	rbx, rdi
	call	malloc
	mov	r14, rax
	test	rbx, rbx
	je	.label_352
	test	r14, r14
	je	.label_351
.label_352:
	xor	esi, esi
	mov	rdi, r14
	mov	rdx, rbx
	call	memset
	mov	rax, r14
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	.section	.text
	.align	32
	#Procedure 0x404680
	.globl quote_mem
	.type quote_mem, @function
quote_mem:

	mov	rax, rsi
	mov	rdx, rdi
	xor	edi, edi
	mov	ecx, OFFSET FLAT:quote_quoting_options
	mov	rsi, rdx
	mov	rdx, rax
	jmp	quotearg_n_options
	.section	.text
	.align	32
	#Procedure 0x404698
	.globl sub_404698
	.type sub_404698, @function
sub_404698:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4046a0

	.globl xgetgroups
	.type xgetgroups, @function
xgetgroups:
	push	rbx
	call	mgetgroups
	mov	ebx, eax
	cmp	ebx, -1
	jne	.label_354
	call	__errno_location
	cmp	dword ptr [rax], 0xc
	je	.label_353
.label_354:
	mov	eax, ebx
	pop	rbx
	ret	
.label_353:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x4046c0

	.globl quotearg_colon
	.type quotearg_colon, @function
quotearg_colon:
	sub	rsp, 0x38
	mov	rax, rdi
	mov	rcx, qword ptr [rip + label_31]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0, xmmword ptr [rip + label_32]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_33]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	or	byte ptr [rsp + 0xf], 4
	lea	rcx, [rsp]
	xor	edi, edi
	mov	rdx, -1
	mov	rsi, rax
	call	quotearg_n_options
	add	rsp, 0x38
	ret	
	.section	.text
	.align	32
	#Procedure 0x404715
	.globl sub_404715
	.type sub_404715, @function
sub_404715:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404720
	.globl quotearg_n_mem
	.type quotearg_n_mem, @function
quotearg_n_mem:

	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	.section	.text
	.align	32
	#Procedure 0x40472a
	.globl sub_40472a
	.type sub_40472a, @function
sub_40472a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404730

	.globl rpl_fclose
	.type rpl_fclose, @function
rpl_fclose:
	push	rbp
	push	r14
	push	rbx
	mov	rbx, rdi
	call	fileno
	test	eax, eax
	js	.label_355
	mov	rdi, rbx
	call	__freading
	test	eax, eax
	je	.label_357
	mov	rdi, rbx
	call	fileno
	xor	esi, esi
	mov	edx, 1
	mov	edi, eax
	call	lseek
	cmp	rax, -1
	je	.label_355
.label_357:
	mov	rdi, rbx
	call	rpl_fflush
	test	eax, eax
	je	.label_355
	call	__errno_location
	mov	r14, rax
	mov	ebp, dword ptr [r14]
	mov	rdi, rbx
	call	fclose
	test	ebp, ebp
	je	.label_356
	mov	dword ptr [r14], ebp
	mov	eax, 0xffffffff
.label_356:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
.label_355:
	mov	rdi, rbx
	pop	rbx
	pop	r14
	pop	rbp
	jmp	fclose
	.section	.text
	.align	32
	#Procedure 0x4047a4
	.globl sub_4047a4
	.type sub_4047a4, @function
sub_4047a4:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4047b0
	.globl quote_n
	.type quote_n, @function
quote_n:

	mov	rdx, -1
	mov	ecx, OFFSET FLAT:quote_quoting_options
	jmp	quotearg_n_options
	.section	.text
	.align	32
	#Procedure 0x4047c1
	.globl sub_4047c1
	.type sub_4047c1, @function
sub_4047c1:

	nop	word ptr cs:[rax + rax]
.label_358:
	call	abort
	.section	.text
	.align	32
	#Procedure 0x4047d5
	.globl sub_4047d5
	.type sub_4047d5, @function
sub_4047d5:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4047db
	.globl quotearg_n_custom_mem
	.type quotearg_n_custom_mem, @function
quotearg_n_custom_mem:

	sub	rsp, 0x38
	mov	rax, qword ptr [rip + label_31]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0, xmmword ptr [rip + label_32]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_33]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rsi, rsi
	je	.label_358
	test	rdx, rdx
	je	.label_358
	mov	qword ptr [rsp + 0x28], rsi
	mov	qword ptr [rsp + 0x30], rdx
	lea	rax, [rsp]
	mov	rsi, rcx
	mov	rdx, r8
	mov	rcx, rax
	call	quotearg_n_options
	add	rsp, 0x38
	ret	
	.section	.text
	.align	32
	#Procedure 0x404840
	.globl quotearg_free
	.type quotearg_free, @function
quotearg_free:

	push	r15
	push	r14
	push	rbx
	mov	r14, qword ptr [rip + slotvec]
	cmp	dword ptr [rip + nslots],  2
	jl	.label_359
	lea	r15, [r14 + 0x18]
	mov	ebx, 1
	nop	
.label_361:
	mov	rdi, qword ptr [r15]
	call	free
	inc	rbx
	movsxd	rax, dword ptr [rip + nslots]
	add	r15, 0x10
	cmp	rbx, rax
	jl	.label_361
.label_359:
	mov	rdi, qword ptr [r14 + 8]
	mov	eax, OFFSET FLAT:slot0
	cmp	rdi, rax
	je	.label_363
	call	free
	mov	qword ptr [rip + slotvec0],  0x100
	mov	qword ptr [rip + label_362], OFFSET FLAT:slot0
.label_363:
	mov	eax, OFFSET FLAT:slotvec0
	cmp	r14, rax
	je	.label_360
	mov	rdi, r14
	call	free
	mov	qword ptr [rip + slotvec], OFFSET FLAT:slotvec0
.label_360:
	mov	dword ptr [rip + nslots],  1
	pop	rbx
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	32
	#Procedure 0x4048d1
	.globl sub_4048d1
	.type sub_4048d1, @function
sub_4048d1:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4048e0
	.globl quote_n_mem
	.type quote_n_mem, @function
quote_n_mem:

	mov	ecx, OFFSET FLAT:quote_quoting_options
	jmp	quotearg_n_options
	.section	.text
	.align	32
	#Procedure 0x4048ea
	.globl sub_4048ea
	.type sub_4048ea, @function
sub_4048ea:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4048f0
	.globl clone_quoting_options
	.type clone_quoting_options, @function
clone_quoting_options:

	push	rbp
	push	r14
	push	rbx
	mov	rbx, rdi
	call	__errno_location
	mov	r14, rax
	mov	ebp, dword ptr [r14]
	test	rbx, rbx
	mov	eax, OFFSET FLAT:default_quoting_options
	cmove	rbx, rax
	mov	esi, 0x38
	mov	rdi, rbx
	call	xmemdup
	mov	dword ptr [r14], ebp
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x404923
	.globl sub_404923
	.type sub_404923, @function
sub_404923:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404930

	.globl xmalloc
	.type xmalloc, @function
xmalloc:
	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	je	.label_364
	test	rax, rax
	je	.label_365
.label_364:
	pop	rbx
	ret	
.label_365:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x40494a
	.globl sub_40494a
	.type sub_40494a, @function
sub_40494a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404950

	.globl locale_charset
	.type locale_charset, @function
locale_charset:
	push	rax
	mov	edi, 0xe
	call	rpl_nl_langinfo
	test	rax, rax
	mov	ecx, OFFSET FLAT:label_69
	cmovne	rcx, rax
	cmp	byte ptr [rcx], 0
	mov	eax, OFFSET FLAT:label_366
	cmovne	rax, rcx
	pop	rcx
	ret	
	.section	.text
	.align	32
	#Procedure 0x404975
	.globl sub_404975
	.type sub_404975, @function
sub_404975:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404980
	.globl xstrdup
	.type xstrdup, @function
xstrdup:

	push	r15
	push	r14
	push	rbx
	mov	r14, rdi
	call	strlen
	mov	rbx, rax
	lea	rdi, [rbx + 1]
	call	malloc
	mov	r15, rax
	inc	rbx
	je	.label_368
	test	r15, r15
	je	.label_367
.label_368:
	mov	rdi, r15
	mov	rsi, r14
	mov	rdx, rbx
	call	memcpy
	mov	rax, r15
	pop	rbx
	pop	r14
	pop	r15
	ret	
.label_367:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x4049c2
	.globl sub_4049c2
	.type sub_4049c2, @function
sub_4049c2:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4049d0
	.globl quotearg_n_style_mem
	.type quotearg_n_style_mem, @function
quotearg_n_style_mem:

	sub	rsp, 0x78
	xorps	xmm0, xmm0
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp + 0x30], 0
	cmp	esi, 0xa
	je	.label_369
	mov	dword ptr [rsp + 0x40], esi
	mov	eax, dword ptr [rsp + 0x30]
	mov	dword ptr [rsp + 0x74], eax
	movaps	xmm0, xmmword ptr [rsp]
	movaps	xmm1, xmmword ptr [rsp + 0x10]
	movaps	xmm2, xmmword ptr [rsp + 0x20]
	movups	xmmword ptr [rsp + 0x64], xmm2
	movups	xmmword ptr [rsp + 0x54], xmm1
	movups	xmmword ptr [rsp + 0x44], xmm0
	lea	rax, [rsp + 0x40]
	mov	rsi, rdx
	mov	rdx, rcx
	mov	rcx, rax
	call	quotearg_n_options
	add	rsp, 0x78
	ret	
.label_369:
	call	abort
	.section	.text
	.align	32
	#Procedure 0x404a38
	.globl sub_404a38
	.type sub_404a38, @function
sub_404a38:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404aa5
	.globl sub_404aa5
	.type sub_404aa5, @function
sub_404aa5:

	nop	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404ab2
	.globl sub_404ab2
	.type sub_404ab2, @function
sub_404ab2:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404ad6
	.globl sub_404ad6
	.type sub_404ad6, @function
sub_404ad6:

	nop	word ptr cs:[rax + rax]
