	.section	.text
	.align	16
	#Procedure 0x401879
	.globl sub_401879
	.type sub_401879, @function
sub_401879:

	hlt	
	.section	.text
	.align	16
	#Procedure 0x40187a
	.globl sub_40187a
	.type sub_40187a, @function
sub_40187a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4018b2
	.globl sub_4018b2
	.type sub_4018b2, @function
sub_4018b2:

	nop	dword ptr [rax]
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4018fa
	.globl sub_4018fa
	.type sub_4018fa, @function
sub_4018fa:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40191c
	.globl sub_40191c
	.type sub_40191c, @function
sub_40191c:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x40192d
	.globl sub_40192d
	.type sub_40192d, @function
sub_40192d:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x401946
	.globl sub_401946
	.type sub_401946, @function
sub_401946:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401950
	.globl xcalloc
	.type xcalloc, @function
xcalloc:

	push	rax
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	jb	.label_9
	call	rpl_calloc
	test	rax, rax
	je	.label_9
	pop	rcx
	ret	
.label_9:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x401976
	.globl sub_401976
	.type sub_401976, @function
sub_401976:

	nop	word ptr cs:[rax + rax]
.label_10:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x401985
	.globl sub_401985
	.type sub_401985, @function
sub_401985:

	nop	
	.section	.text
	.align	16
	#Procedure 0x401987
	.globl quotearg_n_custom
	.type quotearg_n_custom, @function
quotearg_n_custom:

	sub	rsp, 0x38
	mov	rax, qword ptr [rip + label_11]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0, xmmword ptr [rip + label_12]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_13]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rsi, rsi
	je	.label_10
	test	rdx, rdx
	je	.label_10
	mov	qword ptr [rsp + 0x28], rsi
	mov	qword ptr [rsp + 0x30], rdx
	lea	rax, [rsp]
	mov	rdx, -1
	mov	rsi, rcx
	mov	rcx, rax
	call	quotearg_n_options
	add	rsp, 0x38
	ret	
	.section	.text
	.align	16
	#Procedure 0x4019f0
	.globl quotearg_colon_mem
	.type quotearg_colon_mem, @function
quotearg_colon_mem:

	sub	rsp, 0x38
	mov	rax, rsi
	mov	rdx, rdi
	mov	rcx, qword ptr [rip + label_11]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0, xmmword ptr [rip + label_12]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_13]
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
	.align	16
	#Procedure 0x401a44
	.globl sub_401a44
	.type sub_401a44, @function
sub_401a44:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401a50

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
	je	.label_15
	test	r15, r15
	je	.label_14
.label_15:
	mov	rdi, r15
	mov	rsi, r14
	mov	rdx, rbx
	call	memcpy
	mov	rax, r15
	pop	rbx
	pop	r14
	pop	r15
	ret	
.label_14:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x401a92
	.globl sub_401a92
	.type sub_401a92, @function
sub_401a92:

	nop	word ptr cs:[rax + rax]
.label_16:
	push	rax
	call	abort
	.section	.text
	.align	16
	#Procedure 0x401aa6
	.globl sub_401aa6
	.type sub_401aa6, @function
sub_401aa6:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401aab
	.globl set_custom_quoting
	.type set_custom_quoting, @function
set_custom_quoting:

	test	rdi, rdi
	mov	eax, OFFSET FLAT:default_quoting_options
	cmovne	rax, rdi
	mov	dword ptr [rax], 0xa
	test	rsi, rsi
	je	.label_16
	test	rdx, rdx
	je	.label_16
	mov	qword ptr [rax + 0x28], rsi
	mov	qword ptr [rax + 0x30], rdx
	ret	
	.section	.text
	.align	16
	#Procedure 0x401ad0

	.globl randread
	.type randread, @function
randread:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	r15, rdx
	mov	rbx, rsi
	mov	r14, rdi
	mov	rcx, qword ptr [r14]
	test	rcx, rcx
	je	.label_22
	mov	esi, 1
	mov	rdi, rbx
	mov	rdx, r15
	call	fread_unlocked
	mov	rbp, rax
	call	__errno_location
	mov	r12, rax
	jmp	.label_18
	.section	.text
	.align	16
	#Procedure 0x401b09
	.globl sub_401b09
	.type sub_401b09, @function
sub_401b09:

	nop	dword ptr [rax]
.label_17:
	add	rbx, rbp
	mov	rax, qword ptr [r14]
	mov	eax, dword ptr [rax]
	and	eax, 0x20
	cmovne	eax, dword ptr [r12]
	mov	dword ptr [r12], eax
	mov	rdi, qword ptr [r14 + 0x10]
	call	qword ptr [r14 + 8]
	mov	rcx, qword ptr [r14]
	mov	esi, 1
	mov	rdi, rbx
	mov	rdx, r15
	call	fread_unlocked
	mov	rbp, rax
.label_18:
	sub	r15, rbp
	jne	.label_17
	jmp	.label_19
.label_22:
	mov	r12, qword ptr [r14 + 0x18]
	lea	r13, [r14 + 0x838]
	mov	rsi, r13
	sub	rsi, r12
	add	rsi, 0x800
	cmp	r12, r15
	jae	.label_20
	lea	rbp, [r14 + 0x20]
	mov	rdi, rbx
	mov	rdx, r12
	call	memcpy
	add	rbx, r12
	sub	r15, r12
	xor	r12d, r12d
	nop	word ptr cs:[rax + rax]
.label_23:
	cmp	r15, 0x800
	jb	.label_21
	mov	rdi, rbp
	mov	rsi, rbx
	call	isaac_refill
	add	rbx, 0x800
	add	r15, -0x800
	jne	.label_23
	jmp	.label_24
.label_21:
	mov	rdi, rbp
	mov	rsi, r13
	call	isaac_refill
	mov	r12d, 0x800
	mov	rsi, r13
.label_20:
	mov	rdi, rbx
	mov	rdx, r15
	call	memcpy
	sub	r12, r15
.label_24:
	mov	qword ptr [r14 + 0x18], r12
.label_19:
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x401beb
	.globl sub_401beb
	.type sub_401beb, @function
sub_401beb:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401bf0

	.globl rpl_fclose
	.type rpl_fclose, @function
rpl_fclose:
	push	rbp
	push	r14
	push	rbx
	mov	rbx, rdi
	call	fileno
	test	eax, eax
	js	.label_25
	mov	rdi, rbx
	call	__freading
	test	eax, eax
	je	.label_27
	mov	rdi, rbx
	call	fileno
	xor	esi, esi
	mov	edx, 1
	mov	edi, eax
	call	lseek
	cmp	rax, -1
	je	.label_25
.label_27:
	mov	rdi, rbx
	call	rpl_fflush
	test	eax, eax
	je	.label_25
	call	__errno_location
	mov	r14, rax
	mov	ebp, dword ptr [r14]
	mov	rdi, rbx
	call	fclose
	test	ebp, ebp
	je	.label_26
	mov	dword ptr [r14], ebp
	mov	eax, 0xffffffff
.label_26:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
.label_25:
	mov	rdi, rbx
	pop	rbx
	pop	r14
	pop	rbp
	jmp	fclose
	.section	.text
	.align	16
	#Procedure 0x401c64
	.globl sub_401c64
	.type sub_401c64, @function
sub_401c64:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401c70
	.globl try_tempname
	.type try_tempname, @function
try_tempname:

	mov	r8d, 6
	jmp	try_tempname_len
	.section	.text
	.align	16
	#Procedure 0x401c7b
	.globl sub_401c7b
	.type sub_401c7b, @function
sub_401c7b:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401c80
	.globl quotearg_n_mem
	.type quotearg_n_mem, @function
quotearg_n_mem:

	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	.section	.text
	.align	16
	#Procedure 0x401c8a
	.globl sub_401c8a
	.type sub_401c8a, @function
sub_401c8a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401c90

	.globl randint_all_free
	.type randint_all_free, @function
randint_all_free:
	push	rbp
	push	r15
	push	r14
	push	rbx
	push	rax
	mov	rbx, rdi
	mov	rdi, qword ptr [rbx]
	call	randread_free
	mov	r14d, eax
	call	__errno_location
	mov	rbp, rax
	mov	r15d, dword ptr [rbp]
	mov	esi, 0x18
	mov	rdi, rbx
	call	explicit_bzero
	mov	rdi, rbx
	call	free
	mov	dword ptr [rbp], r15d
	mov	eax, r14d
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x401cd8
	.globl sub_401cd8
	.type sub_401cd8, @function
sub_401cd8:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401ce0

	.globl main
	.type main, @function
main:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x38
	mov	r12, rsi
	mov	ebp, edi
	mov	rdi, qword ptr [r12]
	call	set_program_name
	mov	edi, 6
	mov	esi, OFFSET FLAT:label_58
	call	setlocale
	mov	edi, OFFSET FLAT:label_31
	mov	esi, OFFSET FLAT:label_32
	call	bindtextdomain
	mov	edi, OFFSET FLAT:label_31
	call	textdomain
	mov	edi, OFFSET FLAT:maybe_close_stdout
	call	atexit
	xor	ecx, ecx
	xor	r13d, r13d
	xor	ebx, ebx
	xor	eax, eax
	mov	qword ptr [rsp + 0x28], rax
	xor	r14d, r14d
	xor	eax, eax
	mov	qword ptr [rsp + 0x10], rax
.label_480:
	mov	r15d, ecx
	mov	cl, r13b
	mov	byte ptr [rsp + 0xf], r15b
.label_477:
	mov	r13b, cl
	mov	cl, bl
.label_481:
	mov	bl, cl
	jmp	.label_52
.label_482:
	mov	rax, qword ptr [rip + optarg]
	mov	qword ptr [rsp + 0x28], rax
	nop	word ptr cs:[rax + rax]
.label_52:
	mov	cl, r14b
.label_479:
	mov	r14b, cl
	mov	edx, OFFSET FLAT:label_57
	mov	ecx, OFFSET FLAT:longopts
	xor	r8d, r8d
	mov	edi, ebp
	mov	rsi, r12
	call	getopt_long
	cmp	eax, 0x55
	jle	.label_63
	add	eax, -0x56
	cmp	eax, 0x2a
	ja	.label_49
	mov	cl, 1
	jmp	qword ptr [(rax * 8) + label_67]
.label_478:
	mov	r15b, 1
	mov	rax, qword ptr [rip + optarg]
	mov	qword ptr [rsp + 0x10], rax
	jmp	.label_52
.label_63:
	cmp	eax, -1
	jne	.label_51
	mov	qword ptr [rsp + 0x30], r13
	mov	qword ptr [rsp + 0x20], rbx
	movsxd	rax, dword ptr [rip + optind]
	sub	ebp, eax
	cmp	ebp, 2
	jae	.label_72
	mov	r13d, OFFSET FLAT:label_78
	mov	cl, 1
	test	ebp, ebp
	je	.label_79
	mov	r13, qword ptr [r12 + rax*8]
	mov	ecx, r15d
.label_79:
	mov	byte ptr [rsp + 0xe], cl
	cmp	qword ptr [rsp + 0x28], 0
	je	.label_83
	mov	rdi, r13
	call	strlen
	mov	rbx, rax
	test	rbx, rbx
	je	.label_28
	cmp	byte ptr [r13 + rbx - 1], 0x58
	jne	.label_28
	mov	r12, qword ptr [rsp + 0x28]
	mov	rdi, r12
	call	strlen
	mov	r15, rax
	lea	rdi, [rbx + r15 + 1]
	call	xmalloc
	mov	rbp, rax
	mov	rdi, rbp
	mov	rsi, r13
	mov	rdx, rbx
	call	memcpy
	mov	r13, rbp
	add	rbp, rbx
	mov	qword ptr [rsp + 0x18], r15
	lea	rdx, [r15 + 1]
	mov	rdi, rbp
	mov	rsi, r12
	call	memcpy
	mov	rbx, qword ptr [rsp + 0x20]
	jmp	.label_54
.label_83:
	mov	rdi, r13
	call	xstrdup
	mov	rbx, rax
	mov	esi, 0x58
	mov	rdi, rbx
	call	strrchr
	mov	rbp, rax
	test	rbp, rbp
	je	.label_60
	mov	r13, rbx
	inc	rbp
	jmp	.label_61
.label_60:
	xor	esi, esi
	mov	r13, rbx
	mov	rdi, rbx
	call	__rawmemchr
	mov	rbp, rax
.label_61:
	mov	rbx, qword ptr [rsp + 0x20]
	mov	rdi, rbp
	call	strlen
	mov	qword ptr [rsp + 0x18], rax
.label_54:
	cmp	qword ptr [rsp + 0x18], 0
	je	.label_69
	mov	rdi, rbp
	call	last_component
	cmp	rax, rbp
	jne	.label_73
.label_69:
	mov	r15, r13
	sub	rbp, r15
	mov	r13, rbx
	je	.label_74
	lea	rax, [r15 - 1]
	xor	ebx, ebx
.label_56:
	cmp	byte ptr [rbp + rax], 0x58
	jne	.label_80
	inc	rbx
	dec	rax
	cmp	rbp, rbx
	jne	.label_56
.label_80:
	cmp	rbx, 2
	jbe	.label_74
	test	byte ptr [rsp + 0xe], 1
	je	.label_82
	cmp	byte ptr [rsp + 0xf], 0
	je	.label_30
	mov	edi, OFFSET FLAT:label_33
	call	getenv
	mov	rbp, rax
	test	rbp, rbp
	je	.label_64
	cmp	byte ptr [rbp], 0
	jne	.label_35
.label_64:
	cmp	qword ptr [rsp + 0x10], 0
	je	.label_41
	mov	rax, qword ptr [rsp + 0x10]
	cmp	byte ptr [rax], 0
	mov	rbp, rax
	jne	.label_35
.label_41:
	mov	ebp, OFFSET FLAT:label_45
.label_35:
	mov	rdi, r15
	call	last_component
	cmp	rax, r15
	je	.label_48
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_50
	jmp	.label_43
.label_30:
	mov	rcx, qword ptr [rsp + 0x10]
	test	rcx, rcx
	je	.label_53
	cmp	byte ptr [rcx], 0
	jne	.label_55
.label_53:
	mov	edi, OFFSET FLAT:label_33
	call	getenv
	mov	ecx, OFFSET FLAT:label_45
	test	rax, rax
	je	.label_55
	cmp	byte ptr [rax], 0
	mov	ecx, OFFSET FLAT:label_45
	cmovne	rcx, rax
.label_55:
	cmp	byte ptr [r15], 0x2f
	mov	rbp, rcx
	je	.label_44
.label_48:
	xor	edx, edx
	mov	rdi, rbp
	mov	rsi, r15
	call	file_name_concat
	mov	rbp, rax
	mov	rdi, r15
	call	free
	mov	r15, rbp
.label_82:
	mov	rdi, r15
	call	xstrdup
	mov	rbp, rax
	mov	rax, qword ptr [rsp + 0x30]
	test	al, al
	je	.label_71
	cmp	r13b, 1
	mov	ecx, 1
	sbb	ecx, -1
	xor	r12d, r12d
	xor	edx, edx
	mov	rdi, rbp
	mov	rsi, qword ptr [rsp + 0x18]
	mov	r8, rbx
	call	gen_tempname_len
	test	eax, eax
	je	.label_81
	test	r14b, r14b
	je	.label_77
	mov	r12d, 1
	jmp	.label_29
.label_71:
	xor	ecx, ecx
	test	r13b, r13b
	setne	cl
	add	ecx, ecx
	xor	edx, edx
	mov	rdi, rbp
	mov	rsi, qword ptr [rsp + 0x18]
	mov	r8, rbx
	call	gen_tempname_len
	test	eax, eax
	js	.label_59
	test	r13b, r13b
	je	.label_36
	mov	rdi, rbp
	call	puts
	xor	r12d, r12d
	jmp	.label_29
.label_81:
	mov	rdi, rbp
	call	puts
	test	r13b, r13b
	jne	.label_29
	jmp	.label_46
.label_77:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_66
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	mov	rdi, r15
	call	quote
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, rbp
	call	error
	mov	r12d, 1
	jmp	.label_29
.label_36:
	mov	edi, eax
	call	close
	test	eax, eax
	je	.label_62
.label_59:
	mov	r12d, 1
	test	r14b, r14b
	jne	.label_29
	call	__errno_location
	mov	r14d, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_75
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	mov	rdi, r15
	call	quote
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, r14d
	mov	rdx, rbp
	call	error
	jmp	.label_29
.label_62:
	mov	rdi, rbp
	call	puts
.label_46:
	mov	byte ptr [rip + stdout_closed],  1
	mov	rdi, qword ptr [rip + stdout]
	call	close_stream
	xor	r12d, r12d
	test	eax, eax
	je	.label_29
	call	__errno_location
	mov	ebx, dword ptr [rax]
	mov	rdi, rbp
	call	remove
	mov	r12d, 1
	test	r14b, r14b
	jne	.label_29
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_34
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, rcx
	call	error
.label_29:
	mov	eax, r12d
	add	rsp, 0x38
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_51:
	cmp	eax, 0xffffff7d
	je	.label_47
	cmp	eax, 0xffffff7e
	jne	.label_49
	xor	edi, edi
	call	usage
.label_47:
	mov	rdi, qword ptr [rip + stdout]
	mov	rcx, qword ptr [rip + Version]
	mov	qword ptr [rsp], 0
	mov	esi, OFFSET FLAT:label_37
	mov	edx, OFFSET FLAT:label_38
	mov	r8d, OFFSET FLAT:label_39
	mov	r9d, OFFSET FLAT:label_40
	xor	eax, eax
	call	version_etc
	xor	edi, edi
	call	exit
.label_74:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_65
.label_43:
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	rdi, r15
	jmp	.label_68
.label_49:
	mov	edi, 1
	call	usage
.label_28:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_70
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	rdi, r13
	jmp	.label_68
.label_72:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_76
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	call	error
	mov	edi, 1
	call	usage
.label_73:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_84
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	rdi, rbp
.label_68:
	call	quote
	mov	rcx, rax
	mov	edi, 1
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rbx
	call	error
.label_44:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_42
	jmp	.label_43
	.section	.text
	.align	16
	#Procedure 0x402238
	.globl sub_402238
	.type sub_402238, @function
sub_402238:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402240

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
	jmp	.label_128
	.section	.text
	.align	16
	#Procedure 0x4022ef
	.globl sub_4022ef
	.type sub_4022ef, @function
sub_4022ef:

	nop	
.label_163:
	cmp	r8d, 2
	setne	al
	cmp	byte ptr [rsp + 0xf], 0
	setne	dl
	mov	rsi, qword ptr [rsp + 0xa8]
	test	sil, 1
	mov	bl, byte ptr [rsp + 0x34]
	mov	rsi, qword ptr [rsp + 0xc0]
	je	.label_159
	or	al, dl
	jne	.label_159
	test	dil, 1
	jne	.label_162
	cmp	qword ptr [rsp + 0x68], 0
	je	.label_159
	test	rbp, rbp
	mov	r15d, r8d
	mov	al, bl
	mov	qword ptr [rsp + 0x48], rcx
	mov	r12d, esi
	mov	r13, qword ptr [rsp + 0x68]
	je	.label_128
	jmp	.label_159
.label_507:
	mov	r8d, 5
	test	r12b, 1
	jne	.label_169
	test	rbp, rbp
	je	.label_174
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax], 0x22
.label_174:
	mov	r14d, 1
	jmp	.label_176
.label_508:
	mov	r13b, 1
	mov	r8d, 5
	xor	r14d, r14d
	mov	eax, OFFSET FLAT:label_178
	mov	qword ptr [rsp + 0x58], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0x50], rax
	mov	sil, 1
	jmp	.label_123
.label_169:
	xor	r14d, r14d
.label_176:
	mov	eax, OFFSET FLAT:label_178
	mov	qword ptr [rsp + 0x58], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0x50], rax
	mov	r13b, 1
	jmp	.label_201
	.section	.text
	.align	16
	#Procedure 0x4023bf
	.globl sub_4023bf
	.type sub_4023bf, @function
sub_4023bf:

	nop	
.label_128:
	mov	rbp, r13
	xor	r14d, r14d
	mov	ecx, r15d
	cmp	r15d, 0xa
	ja	.label_196
	mov	r8d, 7
	mov	r13b, 1
	xor	esi, esi
	mov	r10, qword ptr [rsp + 0x28]
	mov	r11, qword ptr [rsp + 0x48]
	jmp	qword ptr [(rcx * 8) + label_173]
.label_509:
	mov	r14d, edi
	mov	edi, OFFSET FLAT:label_207
	mov	esi, r15d
	mov	ebx, r9d
	call	gettext_quote
	mov	qword ptr [rsp + 0x80], rax
	mov	edi, OFFSET FLAT:label_85
	mov	esi, r15d
	call	gettext_quote
	mov	r9d, ebx
	mov	edi, r14d
	mov	qword ptr [rsp + 0x78], rax
.label_510:
	mov	byte ptr [rsp + 0x1e], dil
	mov	dword ptr [rsp + 0x60], r9d
	test	r12b, 1
	mov	r14d, 0
	mov	rcx, qword ptr [rsp + 0x80]
	jne	.label_96
	mov	al, byte ptr [rcx]
	test	al, al
	mov	r14d, 0
	je	.label_96
	xor	r14d, r14d
	nop	
.label_115:
	cmp	r14, rbp
	jae	.label_110
	mov	rdx, qword ptr [rsp + 0x10]
	mov	byte ptr [rdx + r14], al
.label_110:
	movzx	eax, byte ptr [rcx + r14 + 1]
	inc	r14
	test	al, al
	jne	.label_115
.label_96:
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
	jmp	.label_123
.label_502:
	xor	r8d, r8d
	xor	r14d, r14d
	mov	r13d, eax
	xor	esi, esi
	jmp	.label_123
.label_505:
	mov	al, 1
.label_503:
	mov	r12b, 1
.label_506:
	test	r12b, 1
	mov	cl, 1
	je	.label_135
	mov	ecx, eax
.label_135:
	mov	al, cl
.label_504:
	mov	r8d, 2
	test	r12b, 1
	jne	.label_137
	test	rbp, rbp
	je	.label_143
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx], 0x27
.label_143:
	mov	r14d, 1
	jmp	.label_144
.label_137:
	xor	r14d, r14d
.label_144:
	mov	ecx, OFFSET FLAT:label_85
	mov	qword ptr [rsp + 0x58], rcx
	mov	ecx, 1
	mov	qword ptr [rsp + 0x50], rcx
	mov	r13d, eax
.label_201:
	mov	sil, r12b
.label_123:
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
	jmp	.label_151
	.section	.text
	.align	16
	#Procedure 0x402581
	.globl sub_402581
	.type sub_402581, @function
sub_402581:

	nop	word ptr cs:[rax + rax]
.label_111:
	inc	r12
.label_151:
	cmp	r11, -1
	je	.label_182
	cmp	r12, r11
	jne	.label_185
	jmp	.label_187
	.section	.text
	.align	16
	#Procedure 0x4025a3
	.globl sub_4025a3
	.type sub_4025a3, @function
sub_4025a3:

	nop	word ptr cs:[rax + rax]
.label_182:
	mov	rcx, -1
	cmp	byte ptr [r10 + r12], 0
	je	.label_190
.label_185:
	cmp	byte ptr [rsp + 0x37], 0
	je	.label_197
	mov	rax, qword ptr [rsp + 0x50]
	lea	rbx, [r12 + rax]
	cmp	rax, 2
	jb	.label_200
	cmp	r11, -1
	jne	.label_200
	mov	r15d, edi
	mov	rdi, r10
	mov	r13d, r9d
	call	strlen
	mov	r9d, r13d
	mov	r8, qword ptr [rsp + 0x38]
	mov	edi, r15d
	mov	r10, qword ptr [rsp + 0x28]
	mov	r11, rax
.label_200:
	cmp	rbx, r11
	jbe	.label_211
.label_197:
	xor	esi, esi
.label_126:
	movzx	r15d, byte ptr [r10 + r12]
	cmp	r15, 0x7e
	ja	.label_86
	xor	edx, edx
	mov	r13b, 1
	mov	cl, 0x6e
	mov	bl, 0x61
	xor	eax, eax
	jmp	qword ptr [(r15 * 8) + label_92]
.label_551:
	test	r12, r12
	jne	.label_99
	jmp	.label_101
	.section	.text
	.align	16
	#Procedure 0x402636
	.globl sub_402636
	.type sub_402636, @function
sub_402636:

	nop	word ptr cs:[rax + rax]
.label_211:
	mov	r13d, r9d
	mov	r15d, edi
	mov	rbx, r11
	lea	rdi, [r10 + r12]
	mov	rsi, qword ptr [rsp + 0x58]
	mov	rdx, qword ptr [rsp + 0x50]
	call	memcmp
	test	eax, eax
	sete	sil
	jne	.label_113
	cmp	byte ptr [rsp + 0xf], 0
	mov	r10, qword ptr [rsp + 0x28]
	mov	r11, rbx
	mov	edi, r15d
	mov	r8, qword ptr [rsp + 0x38]
	mov	r9d, r13d
	je	.label_126
	jmp	.label_95
.label_113:
	mov	r10, qword ptr [rsp + 0x28]
	mov	r11, rbx
	mov	edi, r15d
	mov	r8, qword ptr [rsp + 0x38]
	mov	r9d, r13d
	jmp	.label_126
.label_555:
	xor	eax, eax
	cmp	r11, -1
	je	.label_130
	test	r12, r12
	jne	.label_134
	cmp	r11, 1
	je	.label_101
	xor	r13d, r13d
	jmp	.label_91
.label_544:
	cmp	byte ptr [rsp + 0x1f], 0
	je	.label_139
	cmp	byte ptr [rsp + 0xf], 0
	jne	.label_95
	cmp	r8d, 2
	jne	.label_146
	mov	eax, r9d
	and	al, 1
	jne	.label_146
	cmp	r14, rbp
	jae	.label_147
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x27
.label_147:
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	jae	.label_150
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx + rax], 0x24
.label_150:
	lea	rax, [r14 + 2]
	cmp	rax, rbp
	jae	.label_154
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx + rax], 0x27
.label_154:
	add	r14, 3
	mov	r9b, 1
.label_146:
	mov	rcx, r14
	cmp	rcx, rbp
	jae	.label_160
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + rcx], 0x5c
.label_160:
	lea	r14, [rcx + 1]
	mov	al, 1
	mov	r15b, 0x30
	cmp	r8d, 2
	je	.label_161
	lea	rdx, [r12 + 1]
	cmp	rdx, r11
	jae	.label_161
	mov	dl, byte ptr [r10 + rdx]
	add	dl, 0xd0
	cmp	dl, 9
	ja	.label_161
	cmp	r14, rbp
	jae	.label_106
	mov	rdx, qword ptr [rsp + 0x10]
	mov	byte ptr [rdx + r14], 0x30
.label_106:
	lea	rdx, [rcx + 2]
	cmp	rdx, rbp
	jae	.label_100
	mov	ebx, esi
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + rdx], 0x30
	mov	esi, ebx
.label_100:
	add	rcx, 3
	xor	r13d, r13d
	mov	r14, rcx
	jmp	.label_91
.label_545:
	mov	bl, 0x62
	jmp	.label_183
.label_546:
	mov	cl, 0x74
	jmp	.label_98
.label_547:
	mov	bl, 0x76
	jmp	.label_183
.label_548:
	mov	bl, 0x66
	jmp	.label_183
.label_549:
	mov	cl, 0x72
	jmp	.label_98
.label_552:
	mov	r15b, 0x27
	mov	al, 1
	mov	qword ptr [rsp + 0xa8], rax
	cmp	r8d, 2
	jne	.label_193
	cmp	byte ptr [rsp + 0xf], 0
	jne	.label_118
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
	jae	.label_203
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x27
.label_203:
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	jae	.label_87
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx + rax], 0x5c
.label_87:
	lea	rax, [r14 + 2]
	cmp	rax, rbp
	jae	.label_94
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx + rax], 0x27
.label_94:
	add	r14, 3
	xor	r9d, r9d
.label_193:
	xor	eax, eax
	mov	r13b, 1
	jmp	.label_91
.label_553:
	mov	r15b, 0x3f
	cmp	r8d, 5
	je	.label_105
	cmp	r8d, 2
	jne	.label_99
	cmp	byte ptr [rsp + 0xf], 0
	je	.label_99
	jmp	.label_118
.label_554:
	cmp	r8d, 2
	jne	.label_120
	cmp	byte ptr [rsp + 0xf], 0
	jne	.label_118
	mov	r15b, 0x5c
	xor	eax, eax
	jmp	.label_125
.label_86:
	cmp	qword ptr [rsp + 0xb8], 1
	mov	qword ptr [rsp + 0xa0], rbp
	mov	byte ptr [rsp + 0x1e], dil
	mov	dword ptr [rsp + 0x60], r9d
	mov	dword ptr [rsp + 0x94], esi
	jne	.label_127
	mov	qword ptr [rsp + 0x48], r11
	call	__ctype_b_loc
	mov	r10, qword ptr [rsp + 0x28]
	mov	rax, qword ptr [rax]
	movzx	r13d, word ptr [rax + r15*2]
	shr	r13d, 0xe
	and	r13b, 1
	mov	ebx, 1
	jmp	.label_114
.label_130:
	test	r12, r12
	jne	.label_145
	mov	cl, byte ptr [r10 + 1]
	test	cl, cl
	jne	.label_145
.label_101:
	mov	dl, 1
.label_550:
	cmp	byte ptr [rsp + 0x27], 0
	je	.label_118
	xor	eax, eax
	mov	r13b, dl
.label_91:
	cmp	byte ptr [rsp + 0x36], 0
	je	.label_152
	cmp	qword ptr [rsp + 0x100], 0
	jne	.label_155
	jmp	.label_157
	.section	.text
	.align	16
	#Procedure 0x402914
	.globl sub_402914
	.type sub_402914, @function
sub_402914:

	nop	word ptr cs:[rax + rax]
.label_152:
	cmp	byte ptr [rsp + 0x35], 0
	je	.label_157
.label_155:
	mov	ecx, r15d
	shr	cl, 5
	movzx	edx, cl
	mov	ebx, esi
	mov	esi, 1
	mov	ecx, r15d
	shl	esi, cl
	test	bl, bl
	jne	.label_124
	mov	rcx, qword ptr [rsp + 0x100]
	and	esi, dword ptr [rcx + rdx*4]
	jmp	.label_165
	.section	.text
	.align	16
	#Procedure 0x40294d
	.globl sub_40294d
	.type sub_40294d, @function
sub_40294d:

	nop	dword ptr [rax]
.label_157:
	test	sil, sil
.label_165:
	mov	ebx, r15d
	je	.label_103
	jmp	.label_172
.label_124:
	mov	ebx, r15d
	jmp	.label_172
.label_139:
	cmp	dword ptr [rsp + 0x9c], 0
	jne	.label_111
	xor	r15d, r15d
	jmp	.label_99
.label_120:
	mov	cl, 0x5c
	cmp	byte ptr [rsp + 0x32], 0
	je	.label_98
	xor	eax, eax
	mov	r15b, 0x5c
.label_125:
	xor	r13d, r13d
	jmp	.label_103
.label_98:
	cmp	byte ptr [rsp + 0x27], 0
	mov	ebx, ecx
	je	.label_118
.label_183:
	xor	eax, eax
	cmp	byte ptr [rsp + 0x1f], 0
	mov	r13d, 0
	je	.label_91
	nop	
.label_172:
	cmp	byte ptr [rsp + 0xf], 0
	jne	.label_95
	cmp	r8d, 2
	jne	.label_194
	mov	eax, r9d
	and	al, 1
	jne	.label_194
	cmp	r14, rbp
	jae	.label_199
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x27
.label_199:
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	jae	.label_204
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx + rax], 0x24
.label_204:
	lea	rax, [r14 + 2]
	cmp	rax, rbp
	jae	.label_206
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx + rax], 0x27
.label_206:
	add	r14, 3
	mov	r9b, 1
.label_194:
	cmp	r14, rbp
	jae	.label_181
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x5c
.label_181:
	inc	r14
	jmp	.label_168
.label_127:
	mov	qword ptr [rsp + 0x70], 0
	cmp	r11, -1
	jne	.label_93
	mov	rdi, r10
	call	strlen
	mov	r10, qword ptr [rsp + 0x28]
	mov	r11, rax
.label_93:
	cmp	byte ptr [rsp + 0x31], 0
	mov	qword ptr [rsp + 0x48], r11
	mov	qword ptr [rsp + 0x88], r12
	je	.label_167
	lea	rax, [r10 + r12]
	mov	qword ptr [rsp + 0xb0], rax
	mov	r13b, 1
	xor	r12d, r12d
	lea	rbp, [rsp + 0x70]
.label_170:
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
	je	.label_121
	cmp	rbx, -1
	mov	r10, qword ptr [rsp + 0x28]
	movabs	rsi, 0x20000002b
	je	.label_131
	test	rbx, rbx
	mov	r11, qword ptr [rsp + 0x48]
	je	.label_117
	cmp	rbx, 2
	mov	rbp, qword ptr [rsp + 0xa0]
	jb	.label_141
	mov	rax, qword ptr [rsp + 0x40]
	mov	rcx, qword ptr [rsp + 0xb0]
	lea	rax, [rcx + rax]
	mov	ecx, 1
	nop	dword ptr [rax]
.label_90:
	movsx	edx, byte ptr [rax + rcx]
	add	edx, -0x5b
	cmp	edx, 0x21
	ja	.label_179
	bt	rsi, rdx
	jb	.label_118
.label_179:
	inc	rcx
	cmp	rcx, rbx
	jb	.label_90
.label_141:
	mov	edi, dword ptr [rsp + 0x64]
	call	iswprint
	test	eax, eax
	jne	.label_89
	xor	r13d, r13d
.label_89:
	lea	rbp, [rsp + 0x70]
	mov	r12, qword ptr [rsp + 0x40]
	add	r12, rbx
	mov	rdi, rbp
	call	mbsinit
	test	eax, eax
	mov	r10, qword ptr [rsp + 0x28]
	mov	r11, qword ptr [rsp + 0x48]
	je	.label_170
	jmp	.label_133
.label_161:
	xor	r13d, r13d
	jmp	.label_91
.label_145:
	mov	r11, -1
	xor	r13d, r13d
	jmp	.label_91
.label_105:
	cmp	dword ptr [rsp + 0x98], 0
	je	.label_99
	lea	rcx, [r12 + 2]
	cmp	rcx, r11
	jae	.label_99
	cmp	byte ptr [r10 + r12 + 1], 0x3f
	jne	.label_99
	movsx	edx, byte ptr [r10 + rcx]
	xor	eax, eax
	cmp	edx, 0x3e
	ja	.label_180
	mov	ebx, esi
	movabs	rsi, 0x7000a38200000000
	bt	rsi, rdx
	jae	.label_184
	cmp	byte ptr [rsp + 0xf], 0
	jne	.label_189
	cmp	r14, rbp
	jae	.label_191
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x3f
.label_191:
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	jae	.label_198
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + rax], 0x22
.label_198:
	lea	rax, [r14 + 2]
	cmp	rax, rbp
	jae	.label_156
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + rax], 0x22
.label_156:
	lea	rax, [r14 + 3]
	cmp	rax, rbp
	jae	.label_177
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + rax], 0x3f
.label_177:
	add	r14, 4
	xor	eax, eax
	mov	r12, rcx
	mov	r15b, dl
.label_184:
	xor	r13d, r13d
	mov	esi, ebx
	jmp	.label_91
.label_99:
	xor	eax, eax
.label_134:
	xor	r13d, r13d
	jmp	.label_91
.label_167:
	mov	r13b, 1
	xor	r12d, r12d
	lea	rbx, [rsp + 0x70]
	nop	word ptr cs:[rax + rax]
.label_129:
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
	je	.label_102
	cmp	rbp, -1
	je	.label_119
	cmp	rbp, -2
	je	.label_121
	mov	edi, dword ptr [rsp + 0x64]
	call	iswprint
	test	eax, eax
	mov	r12, qword ptr [rsp + 0x40]
	jne	.label_112
	xor	r13d, r13d
.label_112:
	add	r12, rbp
	lea	rbx, [rsp + 0x70]
	mov	rdi, rbx
	call	mbsinit
	test	eax, eax
	mov	r10, qword ptr [rsp + 0x28]
	mov	r11, qword ptr [rsp + 0x48]
	je	.label_129
	jmp	.label_133
.label_121:
	mov	r10, qword ptr [rsp + 0x28]
	mov	rsi, qword ptr [rsp + 0x40]
	lea	rax, [rsi + r12]
	mov	rdx, qword ptr [rsp + 0x48]
	cmp	rax, rdx
	jae	.label_140
	lea	rax, [r10 + r12]
.label_148:
	cmp	byte ptr [rax + rsi], 0
	je	.label_140
	lea	rcx, [r12 + rsi + 1]
	inc	rsi
	cmp	rcx, rdx
	jb	.label_148
.label_140:
	mov	qword ptr [rsp + 0x40], rsi
.label_131:
	xor	r13d, r13d
	jmp	.label_117
.label_119:
	xor	r13d, r13d
.label_102:
	mov	r10, qword ptr [rsp + 0x28]
.label_117:
	mov	r12, qword ptr [rsp + 0x40]
.label_133:
	mov	rbx, r12
	mov	r12, qword ptr [rsp + 0x88]
.label_114:
	and	r13b, 1
	mov	eax, r13d
	or	al, byte ptr [rsp + 0x33]
	cmp	rbx, 1
	mov	rbp, qword ptr [rsp + 0xa0]
	mov	dil, byte ptr [rsp + 0x1e]
	mov	r8, qword ptr [rsp + 0x38]
	mov	r9d, dword ptr [rsp + 0x60]
	mov	esi, dword ptr [rsp + 0x94]
	ja	.label_149
	test	al, al
	je	.label_149
	xor	eax, eax
	mov	r11, qword ptr [rsp + 0x48]
	jmp	.label_91
.label_149:
	mov	byte ptr [rsp + 0x40], al
	add	rbx, r12
	xor	eax, eax
	mov	r11, qword ptr [rsp + 0x48]
	jmp	.label_164
	.section	.text
	.align	16
	#Procedure 0x402d47
	.globl sub_402d47
	.type sub_402d47, @function
sub_402d47:

	nop	word ptr [rax + rax]
.label_132:
	inc	r14
	mov	r15b, byte ptr [r10 + r12 + 1]
	mov	r12, rdx
.label_164:
	cmp	byte ptr [rsp + 0x40], 0
	je	.label_171
	test	sil, 1
	je	.label_108
	cmp	r14, rbp
	jae	.label_175
	mov	rdx, qword ptr [rsp + 0x10]
	mov	byte ptr [rdx + r14], 0x5c
.label_175:
	inc	r14
	xor	esi, esi
	jmp	.label_108
	.section	.text
	.align	16
	#Procedure 0x402d85
	.globl sub_402d85
	.type sub_402d85, @function
sub_402d85:

	nop	word ptr cs:[rax + rax]
.label_171:
	cmp	byte ptr [rsp + 0xf], 0
	jne	.label_95
	cmp	r8d, 2
	jne	.label_186
	mov	eax, r9d
	and	al, 1
	jne	.label_186
	cmp	r14, rbp
	jae	.label_188
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x27
.label_188:
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	jae	.label_192
	mov	rdx, qword ptr [rsp + 0x10]
	mov	byte ptr [rdx + rax], 0x24
.label_192:
	lea	rax, [r14 + 2]
	cmp	rax, rbp
	jae	.label_153
	mov	rdx, qword ptr [rsp + 0x10]
	mov	byte ptr [rdx + rax], 0x27
.label_153:
	add	r14, 3
	mov	r9b, 1
.label_186:
	cmp	r14, rbp
	jae	.label_205
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x5c
.label_205:
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	jae	.label_209
	mov	edx, r15d
	shr	dl, 6
	or	dl, 0x30
	mov	ecx, esi
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + rax], dl
	mov	esi, ecx
.label_209:
	lea	rax, [r14 + 2]
	cmp	rax, rbp
	jae	.label_88
	mov	edx, r15d
	shr	dl, 3
	and	dl, 7
	or	dl, 0x30
	mov	ecx, esi
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + rax], dl
	mov	esi, ecx
.label_88:
	add	r14, 3
	and	r15b, 7
	or	r15b, 0x30
	mov	al, 1
.label_108:
	lea	rdx, [r12 + 1]
	cmp	rbx, rdx
	jbe	.label_103
	test	r9b, 1
	je	.label_107
	mov	rcx, rbx
	mov	ebx, eax
	and	bl, 1
	jne	.label_202
	mov	r8, r12
	mov	r12d, esi
	cmp	r14, rbp
	jae	.label_166
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + r14], 0x27
.label_166:
	lea	rsi, [r14 + 1]
	cmp	rsi, rbp
	jae	.label_122
	mov	rbx, qword ptr [rsp + 0x10]
	mov	byte ptr [rbx + rsi], 0x27
.label_122:
	add	r14, 2
	xor	r9d, r9d
	mov	esi, r12d
	mov	rbx, rcx
	mov	r12, r8
	mov	r8, qword ptr [rsp + 0x38]
	jmp	.label_107
	.section	.text
	.align	16
	#Procedure 0x402e96
	.globl sub_402e96
	.type sub_402e96, @function
sub_402e96:

	nop	word ptr cs:[rax + rax]
.label_202:
	mov	rbx, rcx
.label_107:
	cmp	r14, rbp
	jae	.label_132
	mov	ecx, esi
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + r14], r15b
	mov	esi, ecx
	jmp	.label_132
	.section	.text
	.align	16
	#Procedure 0x402ebe
	.globl sub_402ebe
	.type sub_402ebe, @function
sub_402ebe:

	nop	
.label_103:
	test	r9b, 1
	je	.label_138
	and	al, 1
	jne	.label_138
	cmp	r14, rbp
	jae	.label_142
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x27
.label_142:
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	jae	.label_158
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx + rax], 0x27
.label_158:
	add	r14, 2
	xor	r9d, r9d
.label_138:
	mov	ebx, r15d
.label_168:
	cmp	r14, rbp
	jae	.label_195
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], bl
.label_195:
	inc	r14
	shl	r13b, 7
	sar	r13b, 7
	and	r13b, dil
	mov	edi, r13d
	jmp	.label_111
.label_180:
	xor	r13d, r13d
	jmp	.label_91
	.section	.text
	.align	16
	#Procedure 0x402f21
	.globl sub_402f21
	.type sub_402f21, @function
sub_402f21:

	nop	word ptr cs:[rax + rax]
.label_187:
	mov	rcx, r12
.label_190:
	cmp	r8d, 2
	setne	al
	test	r14, r14
	setne	dl
	cmp	byte ptr [rsp + 0xf], 0
	je	.label_163
	or	al, dl
	jne	.label_163
	mov	r11, rcx
	jmp	.label_95
.label_118:
	mov	eax, 2
.label_116:
	mov	qword ptr [rsp + 0x38], rax
.label_95:
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
.label_104:
	mov	r14, rax
.label_109:
	mov	rax, r14
	add	rsp, 0xc8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_159:
	mov	rdx, qword ptr [rsp + 0x58]
	test	rdx, rdx
	je	.label_136
	cmp	byte ptr [rsp + 0xf], 0
	mov	rcx, qword ptr [rsp + 0x10]
	jne	.label_97
	mov	al, byte ptr [rdx]
	test	al, al
	je	.label_97
	inc	rdx
	nop	dword ptr [rax + rax]
.label_210:
	cmp	r14, rbp
	jae	.label_208
	mov	byte ptr [rcx + r14], al
.label_208:
	inc	r14
	movzx	eax, byte ptr [rdx]
	inc	rdx
	test	al, al
	jne	.label_210
	jmp	.label_97
.label_162:
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
	jmp	.label_104
.label_136:
	mov	rcx, qword ptr [rsp + 0x10]
.label_97:
	cmp	r14, rbp
	jae	.label_109
	mov	byte ptr [rcx + r14], 0
	jmp	.label_109
.label_189:
	mov	eax, 5
	jmp	.label_116
.label_196:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x403070

	.globl randint_genmax
	.type randint_genmax, @function
randint_genmax:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x18
	mov	r13, rsi
	mov	r15, qword ptr [rdi]
	mov	rbx, qword ptr [rdi + 8]
	lea	rax, [rdi + 8]
	mov	qword ptr [rsp], rax
	mov	qword ptr [rsp + 8], rdi
	mov	r14, qword ptr [rdi + 0x10]
	lea	rbp, [r13 + 1]
	lea	r12, [rsp + 0x10]
	nop	word ptr cs:[rax + rax]
.label_214:
	cmp	r14, r13
	jae	.label_213
	mov	rax, r14
	xor	edx, edx
	nop	word ptr [rax + rax]
.label_212:
	shl	rax, 8
	or	rax, 0xff
	inc	rdx
	cmp	rax, r13
	jb	.label_212
	mov	rdi, r15
	mov	rsi, r12
	call	randread
	mov	rax, r12
.label_215:
	mov	rcx, rbx
	shl	rcx, 8
	movzx	ebx, byte ptr [rax]
	or	rbx, rcx
	shl	r14, 8
	or	r14, 0xff
	inc	rax
	cmp	r14, r13
	jb	.label_215
.label_213:
	mov	rcx, rbx
	mov	rsi, r14
	sub	rsi, r13
	je	.label_216
	xor	edx, edx
	mov	rax, rsi
	div	rbp
	mov	rdi, rdx
	sub	r14, rdi
	xor	edx, edx
	mov	rax, rcx
	div	rbp
	mov	rbx, rdx
	dec	rdi
	cmp	rcx, r14
	mov	r14, rdi
	ja	.label_214
	xor	edx, edx
	mov	rax, rcx
	div	rbp
	mov	rcx, qword ptr [rsp + 8]
	mov	qword ptr [rcx + 8], rax
	xor	edx, edx
	mov	rax, rsi
	div	rbp
	mov	qword ptr [rcx + 0x10], rax
	mov	rcx, rbx
	jmp	.label_217
.label_216:
	xorps	xmm0, xmm0
	mov	rax, qword ptr [rsp]
	movups	xmmword ptr [rax], xmm0
.label_217:
	mov	rax, rcx
	add	rsp, 0x18
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40316d
	.globl sub_40316d
	.type sub_40316d, @function
sub_40316d:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x403170
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
	.align	16
	#Procedure 0x403188
	.globl sub_403188
	.type sub_403188, @function
sub_403188:

	nop	dword ptr [rax + rax]
.label_218:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x403195
	.globl sub_403195
	.type sub_403195, @function
sub_403195:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x403199

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
	je	.label_218
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
	.section	.text
	.align	16
	#Procedure 0x4031d0
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
	.align	16
	#Procedure 0x403245
	.globl sub_403245
	.type sub_403245, @function
sub_403245:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403250
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
	.align	16
	#Procedure 0x403283
	.globl sub_403283
	.type sub_403283, @function
sub_403283:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403290

	.globl xalloc_die
	.type xalloc_die, @function
xalloc_die:
	push	rbx
	mov	ebx, dword ptr [rip + exit_failure]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_220
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	esi, esi
	mov	edx, OFFSET FLAT:label_221
	xor	eax, eax
	mov	edi, ebx
	call	error
	call	abort
	.section	.text
	.align	16
	#Procedure 0x4032c0
	.globl quotearg_n
	.type quotearg_n, @function
quotearg_n:

	mov	rdx, -1
	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	.section	.text
	.align	16
	#Procedure 0x4032ce
	.globl sub_4032ce
	.type sub_4032ce, @function
sub_4032ce:

	nop	
	.section	.text
	.align	16
	#Procedure 0x4032d0

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
	js	.label_225
	mov	eax, dword ptr [r13]
	mov	rbp, qword ptr [rip + slotvec]
	cmp	dword ptr [rip + nslots],  r12d
	mov	qword ptr [rsp + 0x18], r13
	mov	dword ptr [rsp], eax
	mov	qword ptr [rsp + 0x10], rbx
	mov	qword ptr [rsp + 8], r15
	jg	.label_228
	cmp	r12d, 0x7fffffff
	je	.label_223
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
	jne	.label_226
	movups	xmm0, xmmword ptr [rip + slotvec0]
	movups	xmmword ptr [r14], xmm0
.label_226:
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
.label_228:
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
	jbe	.label_224
	mov	rax, qword ptr [rsp + 0x18]
	mov	ebp, dword ptr [rsp]
	jmp	.label_227
.label_224:
	lea	rax, [rbp + r13]
	lea	r12, [rbp + r13 + 8]
	inc	r15
	mov	qword ptr [rax], r15
	mov	eax, OFFSET FLAT:slot0
	cmp	r14, rax
	mov	ebp, dword ptr [rsp]
	je	.label_222
	mov	rdi, r14
	call	free
.label_222:
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
.label_227:
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
.label_225:
	call	abort
.label_223:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x40348d
	.globl sub_40348d
	.type sub_40348d, @function
sub_40348d:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x403490

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
	je	.label_235
	mov	edx, OFFSET FLAT:label_244
	xor	eax, eax
	mov	rdi, r14
	mov	r8, rbx
	call	__fprintf_chk
	jmp	.label_231
.label_235:
	mov	edx, OFFSET FLAT:label_233
	xor	eax, eax
	mov	rdi, r14
	mov	rcx, rbx
	mov	r8, r9
	call	__fprintf_chk
.label_231:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_238
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
	mov	esi, OFFSET FLAT:label_234
	mov	edx, 5
	call	dcgettext
	mov	rdi, rax
	mov	rsi, r14
	call	fputs_unlocked
	cmp	r12, 9
	ja	.label_240
	jmp	qword ptr [(r12 * 8) + label_241]
.label_511:
	add	rsp, 8
	jmp	.label_232
.label_240:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_247
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
	jmp	.label_232
.label_512:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_239
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
.label_513:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_229
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
.label_514:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_245
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
.label_515:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_242
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
	jmp	.label_232
.label_516:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_237
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
	jmp	.label_232
.label_517:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_243
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
	jmp	.label_232
.label_518:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_246
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
	jmp	.label_232
.label_520:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_230
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
	jmp	.label_232
.label_519:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_236
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
.label_232:
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	16
	#Procedure 0x4037e8
	.globl sub_4037e8
	.type sub_4037e8, @function
sub_4037e8:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4037f0

	.globl try_dir
	.type try_dir, @function
try_dir:
	mov	esi, 0x1c0
	jmp	mkdir
	.section	.text
	.align	16
	#Procedure 0x4037fa
	.globl sub_4037fa
	.type sub_4037fa, @function
sub_4037fa:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403800
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
	.align	16
	#Procedure 0x403818
	.globl sub_403818
	.type sub_403818, @function
sub_403818:

	nop	dword ptr [rax + rax]
.label_248:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x403825
	.globl sub_403825
	.type sub_403825, @function
sub_403825:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403833

	.globl file_name_concat
	.type file_name_concat, @function
file_name_concat:
	push	rax
	call	mfile_name_concat
	test	rax, rax
	je	.label_248
	pop	rcx
	ret	
.label_249:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x403845
	.globl sub_403845
	.type sub_403845, @function
sub_403845:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x403849
	.globl quotearg_custom_mem
	.type quotearg_custom_mem, @function
quotearg_custom_mem:

	sub	rsp, 0x38
	mov	rax, qword ptr [rip + label_11]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0, xmmword ptr [rip + label_12]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_13]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rdi, rdi
	je	.label_249
	test	rsi, rsi
	je	.label_249
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
	.section	.text
	.align	16
	#Procedure 0x4038b0
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
	je	.label_250
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
.label_250:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x40391c
	.globl sub_40391c
	.type sub_40391c, @function
sub_40391c:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x403920
	.globl quotearg_char_mem
	.type quotearg_char_mem, @function
quotearg_char_mem:

	sub	rsp, 0x38
	mov	ecx, edx
	mov	r8, rsi
	mov	rdx, rdi
	mov	rsi, qword ptr [rip + label_11]
	mov	qword ptr [rsp + 0x30], rsi
	movups	xmm0, xmmword ptr [rip + label_12]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_13]
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
	.align	16
	#Procedure 0x40398e
	.globl sub_40398e
	.type sub_40398e, @function
sub_40398e:

	nop	
	.section	.text
	.align	16
	#Procedure 0x403990

	.globl version_etc_va
	.type version_etc_va, @function
version_etc_va:
	movsxd	r10, dword ptr [r8]
	cmp	r10, 0x28
	ja	.label_255
	mov	r9, r10
	add	r9, qword ptr [r8 + 0x10]
	lea	r10d, [r10 + 8]
	mov	dword ptr [r8], r10d
	jmp	.label_258
.label_255:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_258:
	sub	rsp, 0x58
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp], rax
	xor	r9d, r9d
	test	rax, rax
	je	.label_257
	cmp	r10d, 0x29
	jae	.label_254
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_256
.label_254:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_256:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 8], rax
	mov	r9d, 1
	test	rax, rax
	je	.label_257
	cmp	r10d, 0x29
	jae	.label_252
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_253
.label_252:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_253:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x10], rax
	mov	r9d, 2
	test	rax, rax
	je	.label_257
	cmp	r10d, 0x29
	jae	.label_263
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_251
.label_263:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_251:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x18], rax
	mov	r9d, 3
	test	rax, rax
	je	.label_257
	cmp	r10d, 0x29
	jae	.label_261
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_262
.label_261:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_262:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x20], rax
	mov	r9d, 4
	test	rax, rax
	je	.label_257
	cmp	r10d, 0x29
	jae	.label_259
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_260
.label_259:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_260:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x28], rax
	mov	r9d, 5
	test	rax, rax
	je	.label_257
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x30], rax
	mov	r9d, 6
	test	rax, rax
	je	.label_257
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x38], rax
	mov	r9d, 7
	test	rax, rax
	je	.label_257
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x40], rax
	mov	r9d, 8
	test	rax, rax
	je	.label_257
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x48], rax
	cmp	rax, 1
	mov	r9d, 9
	sbb	r9, -1
.label_257:
	lea	r8, [rsp]
	call	version_etc_arn
	add	rsp, 0x58
	ret	
	.section	.text
	.align	16
	#Procedure 0x403b72
	.globl sub_403b72
	.type sub_403b72, @function
sub_403b72:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403b80

	.globl rpl_nl_langinfo
	.type rpl_nl_langinfo, @function
rpl_nl_langinfo:
	lea	eax, [rdi - 0x27d8]
	lea	ecx, [rdi + 0x1d842]
	cmp	eax, 0xc
	cmovb	edi, ecx
	jmp	nl_langinfo
	.section	.text
	.align	16
	#Procedure 0x403b97
	.globl sub_403b97
	.type sub_403b97, @function
sub_403b97:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403ba0
	.globl close_stdout_set_ignore_EPIPE
	.type close_stdout_set_ignore_EPIPE, @function
close_stdout_set_ignore_EPIPE:

	mov	byte ptr [rip + ignore_EPIPE],  dil
	ret	
	.section	.text
	.align	16
	#Procedure 0x403ba8
	.globl sub_403ba8
	.type sub_403ba8, @function
sub_403ba8:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403bb0
	.globl quotearg_char
	.type quotearg_char, @function
quotearg_char:

	sub	rsp, 0x38
	mov	ecx, esi
	mov	rax, rdi
	mov	rdx, qword ptr [rip + label_11]
	mov	qword ptr [rsp + 0x30], rdx
	movups	xmm0, xmmword ptr [rip + label_12]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_13]
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
	.align	16
	#Procedure 0x403c1f
	.globl sub_403c1f
	.type sub_403c1f, @function
sub_403c1f:

	nop	
.label_265:
	mov	ebx, 0xffffffff
	test	eax, eax
	jne	.label_264
	call	__errno_location
	mov	dword ptr [rax], 0
.label_264:
	mov	eax, ebx
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x403c3b

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
	jne	.label_265
	test	eax, eax
	sete	cl
	neg	eax
	sbb	ebx, ebx
	test	r14, r14
	jne	.label_264
	test	cl, cl
	jne	.label_264
	call	__errno_location
	xor	ecx, ecx
	cmp	dword ptr [rax], 9
	mov	ebx, 0xffffffff
	cmove	ebx, ecx
	jmp	.label_264
	.section	.text
	.align	16
	#Procedure 0x403c80

	.globl xmalloc
	.type xmalloc, @function
xmalloc:
	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	je	.label_266
	test	rax, rax
	je	.label_267
.label_266:
	pop	rbx
	ret	
.label_267:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x403c9a
	.globl sub_403c9a
	.type sub_403c9a, @function
sub_403c9a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403ca0

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
	.align	16
	#Procedure 0x403cb9
	.globl sub_403cb9
	.type sub_403cb9, @function
sub_403cb9:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x403cc0

	.globl try_tempname_len
	.type try_tempname_len, @function
try_tempname_len:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x38
	mov	rbx, r8
	mov	qword ptr [rsp + 0x30], rcx
	mov	qword ptr [rsp + 0x28], rdx
	mov	ebp, esi
	mov	r15, rdi
	call	__errno_location
	mov	r13, rax
	mov	r12d, dword ptr [r13]
	mov	rdi, r15
	call	strlen
	mov	rsi, rbx
	mov	r14, rax
	movsxd	rbx, ebp
	lea	rax, [rbx + rsi]
	cmp	r14, rax
	jb	.label_277
	mov	rax, r14
	sub	rax, rsi
	sub	rax, rbx
	add	rax, r15
	mov	rcx, -1
	nop	dword ptr [rax]
.label_273:
	cmp	byte ptr [rax + rcx + 1], 0x58
	lea	rcx, [rcx + 1]
	je	.label_273
	cmp	rcx, rsi
	jae	.label_275
.label_277:
	mov	dword ptr [r13], 0x16
.label_274:
	mov	eax, 0xffffffff
.label_271:
	add	rsp, 0x38
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_275:
	xor	edi, edi
	mov	qword ptr [rsp + 8], rsi
	call	randint_all_new
	mov	rbp, rax
	mov	eax, 0xffffffff
	test	rbp, rbp
	je	.label_271
	mov	dword ptr [rsp + 0x1c], r12d
	mov	rax, qword ptr [rsp + 8]
	test	rax, rax
	mov	qword ptr [rsp + 0x10], r13
	mov	qword ptr [rsp + 0x20], r15
	je	.label_272
	neg	rax
	sub	r14, rbx
	add	r14, r15
	xor	r12d, r12d
	mov	qword ptr [rsp + 8], rax
	nop	word ptr cs:[rax + rax]
.label_276:
	mov	rbx, rax
	nop	word ptr cs:[rax + rax]
.label_279:
	mov	esi, 0x3d
	mov	rdi, rbp
	call	randint_genmax
	movzx	eax, byte ptr [rax + letters]
	mov	byte ptr [r14 + rbx], al
	inc	rbx
	jne	.label_279
	mov	rdi, r15
	mov	rsi, qword ptr [rsp + 0x28]
	call	qword ptr [rsp + 0x30]
	mov	r15d, eax
	test	r15d, r15d
	jns	.label_270
	mov	r13d, dword ptr [r13]
	cmp	r13d, 0x11
	mov	r15d, 0xffffffff
	jne	.label_268
	inc	r12d
	cmp	r12d, 0x3a2f8
	mov	r13, qword ptr [rsp + 0x10]
	mov	r15, qword ptr [rsp + 0x20]
	mov	rax, qword ptr [rsp + 8]
	jb	.label_276
	jmp	.label_269
.label_272:
	xor	ebx, ebx
.label_278:
	mov	rdi, r15
	mov	rsi, qword ptr [rsp + 0x28]
	call	qword ptr [rsp + 0x30]
	mov	r15d, eax
	test	r15d, r15d
	jns	.label_270
	mov	r13d, dword ptr [r13]
	cmp	r13d, 0x11
	mov	r15d, 0xffffffff
	jne	.label_268
	inc	ebx
	cmp	ebx, 0x3a2f7
	mov	r13, qword ptr [rsp + 0x10]
	mov	r15, qword ptr [rsp + 0x20]
	jbe	.label_278
.label_269:
	mov	rdi, rbp
	call	randint_all_free
	mov	dword ptr [r13], 0x11
	jmp	.label_274
.label_270:
	mov	eax, dword ptr [rsp + 0x1c]
	mov	dword ptr [r13], eax
	mov	r13d, eax
.label_268:
	mov	rdi, rbp
	call	randint_all_free
	mov	rax, qword ptr [rsp + 0x10]
	mov	dword ptr [rax], r13d
	mov	eax, r15d
	jmp	.label_271
	.section	.text
	.align	16
	#Procedure 0x403e80

	.globl gen_tempname_len
	.type gen_tempname_len, @function
gen_tempname_len:
	push	rax
	mov	dword ptr [rsp + 4], edx
	cmp	ecx, 3
	jae	.label_280
	movsxd	rax, ecx
	mov	rcx, qword ptr [(rax * 8) + label_284]
	lea	rdx, [rsp + 4]
	call	try_tempname_len
	pop	rcx
	ret	
.label_280:
	mov	edi, OFFSET FLAT:label_281
	mov	esi, OFFSET FLAT:label_282
	mov	edx, 0x147
	mov	ecx, OFFSET FLAT:label_283
	call	__assert_fail
	.section	.text
	.align	16
	#Procedure 0x403eba
	.globl sub_403eba
	.type sub_403eba, @function
sub_403eba:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403ec0
	.globl get_quoting_style
	.type get_quoting_style, @function
get_quoting_style:

	test	rdi, rdi
	mov	eax, OFFSET FLAT:default_quoting_options
	cmovne	rax, rdi
	mov	eax, dword ptr [rax]
	ret	
	.section	.text
	.align	16
	#Procedure 0x403ecf
	.globl sub_403ecf
	.type sub_403ecf, @function
sub_403ecf:

	nop	
	.section	.text
	.align	16
	#Procedure 0x403ed0
	.globl quotearg_custom
	.type quotearg_custom, @function
quotearg_custom:

	sub	rsp, 0x38
	mov	rax, rdx
	mov	rcx, qword ptr [rip + label_11]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0, xmmword ptr [rip + label_12]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_13]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rdi, rdi
	je	.label_285
	test	rsi, rsi
	je	.label_285
	mov	qword ptr [rsp + 0x28], rdi
	mov	qword ptr [rsp + 0x30], rsi
	lea	rcx, [rsp]
	xor	edi, edi
	mov	rdx, -1
	mov	rsi, rax
	call	quotearg_n_options
	add	rsp, 0x38
	ret	
.label_285:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x403f40
	.globl version_etc_ar
	.type version_etc_ar, @function
version_etc_ar:

	mov	r9, -1
	nop	word ptr [rax + rax]
.label_286:
	cmp	qword ptr [r8 + r9*8 + 8], 0
	lea	r9, [r9 + 1]
	jne	.label_286
	jmp	version_etc_arn
	.section	.text
	.align	16
	#Procedure 0x403f61
	.globl sub_403f61
	.type sub_403f61, @function
sub_403f61:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403f70

	.globl isaac_seed
	.type isaac_seed, @function
isaac_seed:
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	movabs	rdx, 0x647c4677a2884b7c
	movabs	r8, 0xb9f8b322c73ac862
	movabs	rsi, 0x8c0ea5053d4712a0
	movabs	rcx, 0xb29b2e824a595524
	movabs	rax, 0x82f053db8355e0ce
	movabs	r11, 0x48fe4a0fa5a09315
	movabs	r10, 0xae985bf2cbfc89ed
	movabs	r9, 0x98f5704f6c44c0ab
	xor	ebx, ebx
	nop	dword ptr [rax + rax]
.label_287:
	add	rdx, qword ptr [rdi + rbx*8]
	add	r8, qword ptr [rdi + rbx*8 + 8]
	add	rsi, qword ptr [rdi + rbx*8 + 0x10]
	add	rcx, qword ptr [rdi + rbx*8 + 0x18]
	add	rax, qword ptr [rdi + rbx*8 + 0x20]
	add	r11, qword ptr [rdi + rbx*8 + 0x28]
	add	r10, qword ptr [rdi + rbx*8 + 0x30]
	add	r9, qword ptr [rdi + rbx*8 + 0x38]
	sub	rdx, rax
	mov	r14, r9
	shr	r14, 9
	xor	r14, r11
	add	r9, rdx
	sub	r8, r14
	lea	r11, [r8 + rdx]
	shl	rdx, 9
	mov	r15, rdx
	xor	r15, r10
	sub	rsi, r15
	mov	r10, r8
	shr	r8, 0x17
	xor	r9, r8
	add	r10, rsi
	sub	rcx, r9
	lea	r12, [rcx + rsi]
	shl	rsi, 0xf
	mov	rdx, rsi
	xor	rdx, r11
	sub	rax, rdx
	mov	r8, rcx
	shr	r8, 0xe
	xor	r8, r10
	mov	r10, rcx
	add	r10, rax
	sub	r14, r8
	lea	r13, [r14 + rax]
	shl	rax, 0x14
	mov	rsi, rax
	xor	rsi, r12
	sub	r15, rsi
	mov	rcx, r14
	shr	rcx, 0x11
	xor	rcx, r10
	mov	r11, r14
	add	r11, r15
	sub	r9, rcx
	lea	r10, [r9 + r15]
	shl	r15, 0xe
	mov	rax, r15
	xor	rax, r13
	mov	qword ptr [rdi + rbx*8], rdx
	mov	qword ptr [rdi + rbx*8 + 8], r8
	mov	qword ptr [rdi + rbx*8 + 0x10], rsi
	mov	qword ptr [rdi + rbx*8 + 0x18], rcx
	mov	qword ptr [rdi + rbx*8 + 0x20], rax
	mov	qword ptr [rdi + rbx*8 + 0x28], r11
	mov	qword ptr [rdi + rbx*8 + 0x30], r10
	mov	qword ptr [rdi + rbx*8 + 0x38], r9
	add	rbx, 8
	cmp	rbx, 0x100
	jl	.label_287
	xor	ebx, ebx
	nop	dword ptr [rax + rax]
.label_288:
	add	rdx, qword ptr [rdi + rbx*8]
	add	r8, qword ptr [rdi + rbx*8 + 8]
	add	rsi, qword ptr [rdi + rbx*8 + 0x10]
	add	rcx, qword ptr [rdi + rbx*8 + 0x18]
	add	rax, qword ptr [rdi + rbx*8 + 0x20]
	add	r11, qword ptr [rdi + rbx*8 + 0x28]
	add	r10, qword ptr [rdi + rbx*8 + 0x30]
	add	r9, qword ptr [rdi + rbx*8 + 0x38]
	sub	rdx, rax
	mov	r14, r9
	shr	r14, 9
	xor	r14, r11
	add	r9, rdx
	sub	r8, r14
	lea	r12, [r8 + rdx]
	shl	rdx, 9
	xor	rdx, r10
	sub	rsi, rdx
	mov	r11, r8
	shr	r11, 0x17
	xor	r11, r9
	add	r8, rsi
	sub	rcx, r11
	lea	r9, [rcx + rsi]
	shl	rsi, 0xf
	mov	r15, rsi
	xor	r15, r12
	sub	rax, r15
	mov	rsi, rcx
	shr	rsi, 0xe
	xor	r8, rsi
	add	rcx, rax
	sub	r14, r8
	lea	r12, [r14 + rax]
	shl	rax, 0x14
	mov	rsi, rax
	xor	rsi, r9
	sub	rdx, rsi
	mov	rax, r14
	shr	rax, 0x11
	xor	rcx, rax
	add	r14, rdx
	sub	r11, rcx
	lea	r10, [r11 + rdx]
	shl	rdx, 0xe
	xor	rdx, r12
	mov	qword ptr [rdi + rbx*8], r15
	mov	qword ptr [rdi + rbx*8 + 8], r8
	mov	qword ptr [rdi + rbx*8 + 0x10], rsi
	mov	qword ptr [rdi + rbx*8 + 0x18], rcx
	mov	qword ptr [rdi + rbx*8 + 0x20], rdx
	mov	qword ptr [rdi + rbx*8 + 0x28], r14
	mov	qword ptr [rdi + rbx*8 + 0x30], r10
	mov	qword ptr [rdi + rbx*8 + 0x38], r11
	add	rbx, 8
	cmp	rbx, 0x100
	mov	r9, r11
	mov	r11, r14
	mov	rax, rdx
	mov	rdx, r15
	jl	.label_288
	xorps	xmm0, xmm0
	movups	xmmword ptr [rdi + 0x800], xmm0
	mov	qword ptr [rdi + 0x810], 0
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	16
	#Procedure 0x4041c8
	.globl sub_4041c8
	.type sub_4041c8, @function
sub_4041c8:

	nop	dword ptr [rax + rax]
.label_289:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x4041d5
	.globl sub_4041d5
	.type sub_4041d5, @function
sub_4041d5:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4041db
	.globl xcharalloc
	.type xcharalloc, @function
xcharalloc:

	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	je	.label_290
	test	rax, rax
	je	.label_289
.label_290:
	pop	rbx
	ret	
	.section	.text
	.align	16
	#Procedure 0x4041f0

	.globl explicit_bzero
	.type explicit_bzero, @function
explicit_bzero:
	mov	rax, rsi
	xor	esi, esi
	mov	rdx, rax
	jmp	memset
	.section	.text
	.align	16
	#Procedure 0x4041fd
	.globl sub_4041fd
	.type sub_4041fd, @function
sub_4041fd:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x404200
	.globl randint_new
	.type randint_new, @function
randint_new:

	push	rbx
	mov	rbx, rdi
	mov	edi, 0x18
	call	xmalloc
	mov	qword ptr [rax], rbx
	xorps	xmm0, xmm0
	movups	xmmword ptr [rax + 8], xmm0
	pop	rbx
	ret	
	.section	.text
	.align	16
	#Procedure 0x40421a
	.globl sub_40421a
	.type sub_40421a, @function
sub_40421a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404220

	.globl dup_safer
	.type dup_safer, @function
dup_safer:
	xor	esi, esi
	mov	edx, 3
	xor	eax, eax
	jmp	rpl_fcntl
	.section	.text
	.align	16
	#Procedure 0x40422e
	.globl sub_40422e
	.type sub_40422e, @function
sub_40422e:

	nop	
	.section	.text
	.align	16
	#Procedure 0x404230

	.globl randread_free
	.type randread_free, @function
randread_free:
	push	r14
	push	rbx
	push	rax
	mov	rbx, rdi
	mov	r14, qword ptr [rbx]
	mov	esi, 0x1038
	call	explicit_bzero
	mov	rdi, rbx
	call	free
	test	r14, r14
	je	.label_291
	mov	rdi, r14
	add	rsp, 8
	pop	rbx
	pop	r14
	jmp	rpl_fclose
.label_291:
	xor	eax, eax
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	.section	.text
	.align	16
	#Procedure 0x40426a
	.globl sub_40426a
	.type sub_40426a, @function
sub_40426a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404270

	.globl quotearg_colon
	.type quotearg_colon, @function
quotearg_colon:
	sub	rsp, 0x38
	mov	rax, rdi
	mov	rcx, qword ptr [rip + label_11]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0, xmmword ptr [rip + label_12]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_13]
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
	.align	16
	#Procedure 0x4042c5
	.globl sub_4042c5
	.type sub_4042c5, @function
sub_4042c5:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4042d0

	.globl randint_all_new
	.type randint_all_new, @function
randint_all_new:
	push	rbx
	call	randread_new
	mov	rbx, rax
	xor	eax, eax
	test	rbx, rbx
	je	.label_292
	mov	edi, 0x18
	call	xmalloc
	mov	qword ptr [rax], rbx
	xorps	xmm0, xmm0
	movups	xmmword ptr [rax + 8], xmm0
.label_292:
	pop	rbx
	ret	
	.section	.text
	.align	16
	#Procedure 0x4042f6
	.globl sub_4042f6
	.type sub_4042f6, @function
sub_4042f6:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404300

	.globl fopen_safer
	.type fopen_safer, @function
fopen_safer:
	push	rbp
	push	r14
	push	rbx
	mov	r14, rsi
	call	fopen
	mov	rbx, rax
	xor	eax, eax
	test	rbx, rbx
	je	.label_293
	mov	rdi, rbx
	call	fileno
	cmp	eax, 2
	ja	.label_297
	mov	edi, eax
	call	dup_safer
	mov	ebp, eax
	test	ebp, ebp
	js	.label_294
	mov	rdi, rbx
	call	rpl_fclose
	test	eax, eax
	jne	.label_295
	mov	edi, ebp
	mov	rsi, r14
	call	fdopen
	test	rax, rax
	jne	.label_293
.label_295:
	call	__errno_location
	mov	rbx, rax
	mov	r14d, dword ptr [rbx]
	mov	edi, ebp
	call	close
	mov	dword ptr [rbx], r14d
	jmp	.label_296
.label_294:
	call	__errno_location
	mov	rbp, rax
	mov	r14d, dword ptr [rbp]
	mov	rdi, rbx
	call	rpl_fclose
	mov	dword ptr [rbp], r14d
.label_296:
	xor	eax, eax
.label_293:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x404381
	.globl sub_404381
	.type sub_404381, @function
sub_404381:

	nop	word ptr cs:[rax + rax]
.label_297:
	mov	rax, rbx
	jmp	.label_293
.label_302:
	cmp	byte ptr [rbx], 0x60
	mov	ecx, OFFSET FLAT:label_299
	mov	eax, OFFSET FLAT:label_300
	jmp	.label_301
	.section	.text
	.align	16
	#Procedure 0x40439f
	.globl sub_40439f
	.type sub_40439f, @function
sub_40439f:

	nop	word ptr cs:[rax + rax]
.label_305:
	movsx	ecx, byte ptr [rax + 1]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x42
	jne	.label_298
	cmp	byte ptr [rax + 2], 0x31
	jne	.label_298
	cmp	byte ptr [rax + 3], 0x38
	jne	.label_298
	cmp	byte ptr [rax + 4], 0x30
	jne	.label_298
	cmp	byte ptr [rax + 5], 0x33
	jne	.label_298
	cmp	byte ptr [rax + 6], 0x30
	jne	.label_298
	cmp	byte ptr [rax + 7], 0
	je	.label_302
.label_298:
	cmp	ebp, 9
	mov	ecx, OFFSET FLAT:label_178
	mov	eax, OFFSET FLAT:label_85
.label_301:
	cmove	rax, rcx
.label_306:
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4043f2

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
	jne	.label_306
	call	locale_charset
	movsx	ecx, byte ptr [rax]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x47
	je	.label_305
	cmp	ecx, 0x55
	jne	.label_298
	movsx	ecx, byte ptr [rax + 1]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x54
	jne	.label_298
	movsx	ecx, byte ptr [rax + 2]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x46
	jne	.label_298
	cmp	byte ptr [rax + 3], 0x2d
	jne	.label_298
	cmp	byte ptr [rax + 4], 0x38
	jne	.label_298
	cmp	byte ptr [rax + 5], 0
	jne	.label_298
	cmp	byte ptr [rbx], 0x60
	mov	ecx, OFFSET FLAT:label_303
	mov	eax, OFFSET FLAT:label_304
	jmp	.label_301
	.section	.text
	.align	16
	#Procedure 0x404460
	.globl xnrealloc
	.type xnrealloc, @function
xnrealloc:

	push	rbx
	mov	rbx, rdx
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rsi
	jb	.label_307
	imul	rbx, rsi
	test	rdi, rdi
	je	.label_308
	test	rbx, rbx
	jne	.label_308
	call	free
	xor	eax, eax
	pop	rbx
	ret	
.label_307:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x404494
	.globl sub_404494
	.type sub_404494, @function
sub_404494:

	nop	dword ptr [rax + rax]
.label_308:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_309
	test	rax, rax
	je	.label_307
.label_309:
	pop	rbx
	ret	
	.section	.text
	.align	16
	#Procedure 0x4044b0
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
	.align	16
	#Procedure 0x4044e6
	.globl sub_4044e6
	.type sub_4044e6, @function
sub_4044e6:

	nop	word ptr cs:[rax + rax]
.label_310:
	mov	edi, 1
	call	_exit
	nop	dword ptr [rax]
.label_311:
	pop	rax
	jmp	close_stdout
	.section	.text
	.align	16
	#Procedure 0x404503

	.globl maybe_close_stdout
	.type maybe_close_stdout, @function
maybe_close_stdout:
	push	rax
	mov	al, byte ptr [rip + stdout_closed]
	test	al, al
	je	.label_311
	mov	rdi, qword ptr [rip + stderr]
	call	close_stream
	test	eax, eax
	jne	.label_310
	pop	rax
	ret	
.label_320:
	mov	rbx, qword ptr [rip + stderr]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_322
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
	.align	16
	#Procedure 0x404558
	.globl sub_404558
	.type sub_404558, @function
sub_404558:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x40455c

	.globl usage
	.type usage, @function
usage:
	push	rbp
	push	rbx
	push	rax
	mov	ebp, edi
	test	ebp, ebp
	jne	.label_320
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_324
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	rdx, qword ptr [rip + program_name]
	mov	edi, 1
	xor	eax, eax
	mov	rsi, rcx
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_316
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_330
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	mov	rsi, qword ptr [rip + stdout]
	mov	edi, OFFSET FLAT:label_325
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_318
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_313
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_326
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_327
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_328
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_329
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_317
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_38
	mov	ecx, OFFSET FLAT:label_314
	xor	eax, eax
	call	__printf_chk
	mov	edi, 5
	xor	esi, esi
	call	setlocale
	test	rax, rax
	je	.label_319
	mov	esi, OFFSET FLAT:label_321
	mov	edx, 3
	mov	rdi, rax
	call	strncmp
	test	eax, eax
	je	.label_319
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_312
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
.label_319:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_331
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_314
	mov	ecx, OFFSET FLAT:label_37
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_323
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_37
	mov	ecx, OFFSET FLAT:label_315
	xor	eax, eax
	call	__printf_chk
	mov	edi, ebp
	call	exit
	.section	.text
	.align	16
	#Procedure 0x404770
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
	je	.label_333
	test	r14, r14
	je	.label_332
.label_333:
	xor	esi, esi
	mov	rdi, r14
	mov	rdx, rbx
	call	memset
	mov	rax, r14
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
.label_332:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x4047a6
	.globl sub_4047a6
	.type sub_4047a6, @function
sub_4047a6:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4047b0

	.globl set_program_name
	.type set_program_name, @function
set_program_name:
	push	r14
	push	rbx
	push	rax
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_337
	mov	esi, 0x2f
	mov	rdi, rbx
	call	strrchr
	test	rax, rax
	lea	r14, [rax + 1]
	cmove	r14, rbx
	mov	rax, r14
	sub	rax, rbx
	cmp	rax, 7
	jl	.label_339
	lea	rdi, [r14 - 7]
	mov	esi, OFFSET FLAT:label_334
	mov	edx, 7
	call	strncmp
	test	eax, eax
	jne	.label_339
	mov	esi, OFFSET FLAT:label_336
	mov	edx, 3
	mov	rdi, r14
	call	strncmp
	test	eax, eax
	jne	.label_335
	add	r14, 3
	mov	qword ptr [rip + __progname],  r14
.label_335:
	mov	rbx, r14
.label_339:
	mov	qword ptr [rip + program_name],  rbx
	mov	qword ptr [rip + __progname_full],  rbx
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
.label_337:
	mov	rcx, qword ptr [rip + stderr]
	mov	edi, OFFSET FLAT:label_338
	mov	esi, 0x37
	mov	edx, 1
	call	fwrite
	call	abort
	.section	.text
	.align	16
	#Procedure 0x404851
	.globl sub_404851
	.type sub_404851, @function
sub_404851:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404860

	.globl hard_locale
	.type hard_locale, @function
hard_locale:
	push	rbx
	xor	esi, esi
	call	setlocale
	mov	bl, 1
	test	rax, rax
	je	.label_341
	cmp	byte ptr [rax], 0x43
	jne	.label_343
	cmp	byte ptr [rax + 1], 0
	je	.label_340
.label_343:
	mov	esi, OFFSET FLAT:label_342
	mov	rdi, rax
	call	strcmp
	test	eax, eax
	jne	.label_341
.label_340:
	xor	ebx, ebx
.label_341:
	mov	eax, ebx
	pop	rbx
	ret	
	.section	.text
	.align	16
	#Procedure 0x404891
	.globl sub_404891
	.type sub_404891, @function
sub_404891:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4048a0
	.globl quotearg_free
	.type quotearg_free, @function
quotearg_free:

	push	r15
	push	r14
	push	rbx
	mov	r14, qword ptr [rip + slotvec]
	cmp	dword ptr [rip + nslots],  2
	jl	.label_344
	lea	r15, [r14 + 0x18]
	mov	ebx, 1
	nop	
.label_347:
	mov	rdi, qword ptr [r15]
	call	free
	inc	rbx
	movsxd	rax, dword ptr [rip + nslots]
	add	r15, 0x10
	cmp	rbx, rax
	jl	.label_347
.label_344:
	mov	rdi, qword ptr [r14 + 8]
	mov	eax, OFFSET FLAT:slot0
	cmp	rdi, rax
	je	.label_348
	call	free
	mov	qword ptr [rip + slotvec0],  0x100
	mov	qword ptr [rip + label_345], OFFSET FLAT:slot0
.label_348:
	mov	eax, OFFSET FLAT:slotvec0
	cmp	r14, rax
	je	.label_346
	mov	rdi, r14
	call	free
	mov	qword ptr [rip + slotvec], OFFSET FLAT:slotvec0
.label_346:
	mov	dword ptr [rip + nslots],  1
	pop	rbx
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	16
	#Procedure 0x404931
	.globl sub_404931
	.type sub_404931, @function
sub_404931:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404940
	.globl close_stdout_set_file_name
	.type close_stdout_set_file_name, @function
close_stdout_set_file_name:

	mov	qword ptr [rip + file_name],  rdi
	ret	
	.section	.text
	.align	16
	#Procedure 0x404948
	.globl sub_404948
	.type sub_404948, @function
sub_404948:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404950
	.globl randint_free
	.type randint_free, @function
randint_free:

	push	rbx
	mov	rbx, rdi
	mov	esi, 0x18
	call	explicit_bzero
	mov	rdi, rbx
	pop	rbx
	jmp	free
	.section	.text
	.align	16
	#Procedure 0x404967
	.globl sub_404967
	.type sub_404967, @function
sub_404967:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404970
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
	je	.label_349
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
.label_349:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x4049d8
	.globl sub_4049d8
	.type sub_4049d8, @function
sub_4049d8:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4049e0

	.globl rpl_calloc
	.type rpl_calloc, @function
rpl_calloc:
	test	rdi, rdi
	mov	eax, 1
	je	.label_350
	test	rsi, rsi
	mov	ecx, 1
	je	.label_351
	mov	rax, rsi
	imul	rax, rdi
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	mov	rax, rsi
	mov	rcx, rdi
	je	.label_351
	push	rax
	call	__errno_location
	mov	dword ptr [rax], 0xc
	xor	eax, eax
	pop	rcx
	ret	
.label_350:
	mov	ecx, 1
.label_351:
	mov	rdi, rcx
	mov	rsi, rax
	jmp	calloc
	.section	.text
	.align	16
	#Procedure 0x404a2b
	.globl sub_404a2b
	.type sub_404a2b, @function
sub_404a2b:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404a30
	.globl quote_n_mem
	.type quote_n_mem, @function
quote_n_mem:

	mov	ecx, OFFSET FLAT:quote_quoting_options
	jmp	quotearg_n_options
	.section	.text
	.align	16
	#Procedure 0x404a3a
	.globl sub_404a3a
	.type sub_404a3a, @function
sub_404a3a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404a40

	.globl rpl_fflush
	.type rpl_fflush, @function
rpl_fflush:
	push	rbx
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_352
	mov	rdi, rbx
	call	__freading
	test	eax, eax
	je	.label_352
	test	byte ptr [rbx + 1], 1
	je	.label_352
	xor	esi, esi
	mov	edx, 1
	mov	rdi, rbx
	call	rpl_fseeko
.label_352:
	mov	rdi, rbx
	pop	rbx
	jmp	fflush
	.section	.text
	.align	16
	#Procedure 0x404a73
	.globl sub_404a73
	.type sub_404a73, @function
sub_404a73:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404a80
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
	.align	16
	#Procedure 0x404b41
	.globl sub_404b41
	.type sub_404b41, @function
sub_404b41:

	nop	word ptr cs:[rax + rax]
.label_353:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x404b55
	.globl sub_404b55
	.type sub_404b55, @function
sub_404b55:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404b60
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
	je	.label_353
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
	.section	.text
	.align	16
	#Procedure 0x404bf0
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
	je	.label_354
	mov	qword ptr [rax], rbx
.label_354:
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
	.align	16
	#Procedure 0x404cdc
	.globl sub_404cdc
	.type sub_404cdc, @function
sub_404cdc:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x404ce0
	.globl quote_n
	.type quote_n, @function
quote_n:

	mov	rdx, -1
	mov	ecx, OFFSET FLAT:quote_quoting_options
	jmp	quotearg_n_options
	.section	.text
	.align	16
	#Procedure 0x404cf1
	.globl sub_404cf1
	.type sub_404cf1, @function
sub_404cf1:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404d00

	.globl base_len
	.type base_len, @function
base_len:
	push	rbx
	mov	rbx, rdi
	call	strlen
	mov	rcx, rax
	nop	dword ptr [rax]
.label_356:
	mov	rax, rcx
	cmp	rax, 2
	jb	.label_355
	lea	rcx, [rax - 1]
	cmp	byte ptr [rbx + rax - 1], 0x2f
	je	.label_356
.label_355:
	pop	rbx
	ret	
	.section	.text
	.align	16
	#Procedure 0x404d26
	.globl sub_404d26
	.type sub_404d26, @function
sub_404d26:

	nop	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404d30

	.globl mfile_name_concat
	.type mfile_name_concat, @function
mfile_name_concat:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x18
	mov	qword ptr [rsp + 0x10], rdx
	mov	r15, rsi
	mov	r13, rdi
	call	last_component
	mov	rbx, rax
	mov	rdi, rbx
	call	base_len
	mov	rbp, rax
	sub	rbx, r13
	add	rbx, rbp
	mov	rdi, r15
	call	strlen
	test	rbp, rbp
	je	.label_359
	cmp	byte ptr [r13 + rbx - 1], 0x2f
	je	.label_360
	cmp	byte ptr [r15], 0x2f
	je	.label_360
	mov	r12b, 0x2f
	jmp	.label_357
.label_359:
	cmp	byte ptr [r15], 0x2f
	mov	r12b, 0x2e
	je	.label_357
.label_360:
	xor	r12d, r12d
.label_357:
	xor	ebp, ebp
	test	r12b, r12b
	setne	bpl
	mov	qword ptr [rsp + 8], rax
	lea	rax, [rax + rbx]
	lea	rdi, [rbp + rax + 1]
	call	malloc
	mov	r14, rax
	xor	eax, eax
	test	r14, r14
	je	.label_361
	mov	rcx, -1
	mov	rdi, r14
	mov	rsi, r13
	mov	rdx, rbx
	call	__mempcpy_chk
	mov	byte ptr [rax], r12b
	add	rbp, rax
	mov	rax, qword ptr [rsp + 0x10]
	test	rax, rax
	je	.label_358
	mov	qword ptr [rax], rbp
.label_358:
	mov	rcx, -1
	mov	rdi, rbp
	mov	rsi, r15
	mov	rdx, qword ptr [rsp + 8]
	call	__mempcpy_chk
	mov	byte ptr [rax], 0
	mov	rax, r14
.label_361:
	add	rsp, 0x18
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x404e08
	.globl sub_404e08
	.type sub_404e08, @function
sub_404e08:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404e10
	.globl xnmalloc
	.type xnmalloc, @function
xnmalloc:

	push	rbx
	mov	rbx, rsi
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rdi
	jb	.label_362
	imul	rbx, rdi
	mov	rdi, rbx
	call	malloc
	test	rbx, rbx
	je	.label_363
	test	rax, rax
	je	.label_362
.label_363:
	pop	rbx
	ret	
.label_362:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x404e45
	.globl sub_404e45
	.type sub_404e45, @function
sub_404e45:

	nop	word ptr cs:[rax + rax]
.label_369:
	test	rcx, rcx
	jne	.label_367
	mov	eax, 0x80
	xor	edx, edx
	div	rbx
	xor	ecx, ecx
	cmp	rbx, 0x80
	seta	cl
	add	rcx, rax
.label_367:
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rcx
	jb	.label_368
.label_370:
	mov	qword ptr [rsi], rcx
	imul	rbx, rcx
	test	rdi, rdi
	je	.label_364
	test	rbx, rbx
	jne	.label_364
	call	free
	xor	eax, eax
	pop	rbx
	ret	
.label_364:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_365
	test	rax, rax
	je	.label_366
.label_365:
	pop	rbx
	ret	
.label_368:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x404eb5
	.globl sub_404eb5
	.type sub_404eb5, @function
sub_404eb5:

	nop	word ptr [rax + rax]
.label_366:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x404ec3
	.globl x2nrealloc
	.type x2nrealloc, @function
x2nrealloc:

	push	rbx
	mov	rbx, rdx
	mov	rcx, qword ptr [rsi]
	test	rdi, rdi
	je	.label_369
	movabs	rax, 0x5555555555555554
	xor	edx, edx
	div	rbx
	cmp	rax, rcx
	jbe	.label_366
	mov	rax, rcx
	shr	rax, 1
	lea	rcx, [rcx + rax + 1]
	jmp	.label_370
	.section	.text
	.align	16
	#Procedure 0x404ef0
	.globl x2realloc
	.type x2realloc, @function
x2realloc:

	push	rbx
	mov	rax, qword ptr [rsi]
	test	rdi, rdi
	je	.label_373
	movabs	rcx, 0x5555555555555554
	cmp	rax, rcx
	jae	.label_375
	mov	rbx, rax
	shr	rbx, 1
	add	rbx, rax
	inc	rbx
	mov	qword ptr [rsi], rbx
	jne	.label_371
	call	free
	xor	eax, eax
	jmp	.label_372
.label_375:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x404f27
	.globl sub_404f27
	.type sub_404f27, @function
sub_404f27:

	nop	word ptr cs:[rax + rax]
.label_373:
	test	rax, rax
	mov	ebx, 0x80
	cmovne	rbx, rax
	test	rbx, rbx
	js	.label_374
	mov	qword ptr [rsi], rbx
.label_371:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_372
	test	rax, rax
	je	.label_374
.label_372:
	pop	rbx
	ret	
.label_374:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x404f60

	.globl isaac_refill
	.type isaac_refill, @function
isaac_refill:
	push	r14
	push	rbx
	mov	rdx, qword ptr [rdi + 0x800]
	mov	rax, qword ptr [rdi + 0x810]
	inc	rax
	mov	rcx, qword ptr [rdi + 0x808]
	add	rcx, rax
	mov	qword ptr [rdi + 0x810], rax
	lea	r9, [rdi + 0x400]
	lea	r8, [rdi + 0x20]
	cmp	r9, r8
	cmova	r8, r9
	mov	rax, rdi
	not	rax
	add	rax, r8
	shr	rax, 5
	lea	r8, [rax*4]
	shl	rax, 5
	lea	r10, [rsi + rax + 0x20]
	mov	r11, rdi
	nop	dword ptr [rax + rax]
.label_376:
	mov	rax, rdx
	shl	rax, 0x15
	xor	rax, rdx
	not	rax
	add	rax, qword ptr [r11 + 0x400]
	mov	rdx, qword ptr [r11]
	mov	ebx, edx
	and	ebx, 0x7f8
	add	rcx, qword ptr [rdi + rbx]
	add	rcx, rax
	mov	qword ptr [r11], rcx
	shr	rcx, 8
	and	ecx, 0x7f8
	add	rdx, qword ptr [rdi + rcx]
	mov	qword ptr [rsi], rdx
	mov	rbx, rax
	shr	rbx, 5
	xor	rbx, rax
	add	rbx, qword ptr [r11 + 0x408]
	mov	rcx, qword ptr [r11 + 8]
	mov	eax, ecx
	and	eax, 0x7f8
	add	rdx, rbx
	add	rdx, qword ptr [rdi + rax]
	mov	qword ptr [r11 + 8], rdx
	shr	rdx, 8
	and	edx, 0x7f8
	add	rcx, qword ptr [rdi + rdx]
	mov	qword ptr [rsi + 8], rcx
	mov	r14, rbx
	shl	r14, 0xc
	xor	r14, rbx
	add	r14, qword ptr [r11 + 0x410]
	mov	rax, qword ptr [r11 + 0x10]
	mov	edx, eax
	and	edx, 0x7f8
	add	rcx, r14
	add	rcx, qword ptr [rdi + rdx]
	mov	qword ptr [r11 + 0x10], rcx
	shr	rcx, 8
	and	ecx, 0x7f8
	add	rax, qword ptr [rdi + rcx]
	mov	qword ptr [rsi + 0x10], rax
	mov	rdx, r14
	shr	rdx, 0x21
	xor	rdx, r14
	add	rdx, qword ptr [r11 + 0x418]
	mov	rcx, qword ptr [r11 + 0x18]
	mov	ebx, ecx
	and	ebx, 0x7f8
	add	rax, rdx
	add	rax, qword ptr [rdi + rbx]
	mov	qword ptr [r11 + 0x18], rax
	shr	rax, 8
	and	eax, 0x7f8
	add	rcx, qword ptr [rdi + rax]
	mov	qword ptr [rsi + 0x18], rcx
	add	r11, 0x20
	add	rsi, 0x20
	cmp	r11, r9
	jb	.label_376
	lea	r9, [rdi + 0x800]
	lea	rsi, [rdi + r8*8 + 0x38]
	nop	word ptr cs:[rax + rax]
.label_377:
	mov	rbx, rdx
	shl	rbx, 0x15
	xor	rbx, rdx
	not	rbx
	add	rbx, qword ptr [rsi - 0x418]
	mov	rax, qword ptr [rsi - 0x18]
	mov	edx, eax
	and	edx, 0x7f8
	add	rcx, qword ptr [rdi + rdx]
	add	rcx, rbx
	mov	qword ptr [rsi - 0x18], rcx
	shr	rcx, 8
	and	ecx, 0x7f8
	add	rax, qword ptr [rdi + rcx]
	mov	qword ptr [r10], rax
	mov	rdx, rbx
	shr	rdx, 5
	xor	rdx, rbx
	add	rdx, qword ptr [rsi - 0x410]
	mov	rcx, qword ptr [rsi - 0x10]
	mov	ebx, ecx
	and	ebx, 0x7f8
	add	rax, rdx
	add	rax, qword ptr [rdi + rbx]
	mov	qword ptr [rsi - 0x10], rax
	shr	rax, 8
	and	eax, 0x7f8
	add	rcx, qword ptr [rdi + rax]
	mov	qword ptr [r10 + 8], rcx
	mov	rbx, rdx
	shl	rbx, 0xc
	xor	rbx, rdx
	add	rbx, qword ptr [rsi - 0x408]
	mov	rax, qword ptr [rsi - 8]
	mov	edx, eax
	and	edx, 0x7f8
	add	rcx, rbx
	add	rcx, qword ptr [rdi + rdx]
	mov	qword ptr [rsi - 8], rcx
	shr	rcx, 8
	and	ecx, 0x7f8
	add	rax, qword ptr [rdi + rcx]
	mov	qword ptr [r10 + 0x10], rax
	mov	rdx, rbx
	shr	rdx, 0x21
	xor	rdx, rbx
	add	rdx, qword ptr [rsi - 0x400]
	mov	rcx, qword ptr [rsi]
	mov	ebx, ecx
	and	ebx, 0x7f8
	add	rax, rdx
	add	rax, qword ptr [rdi + rbx]
	mov	qword ptr [rsi], rax
	shr	rax, 8
	and	eax, 0x7f8
	add	rcx, qword ptr [rdi + rax]
	mov	qword ptr [r10 + 0x18], rcx
	lea	rax, [rsi + 0x20]
	add	rsi, 8
	add	r10, 0x20
	cmp	rsi, r9
	mov	rsi, rax
	jb	.label_377
	mov	qword ptr [rdi + 0x800], rdx
	mov	qword ptr [rdi + 0x808], rcx
	pop	rbx
	pop	r14
	ret	
	.section	.text
	.align	16
	#Procedure 0x4051e0

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
	je	.label_378
	cmp	r15, -2
	jb	.label_378
	xor	edi, edi
	call	hard_locale
	test	al, al
	jne	.label_378
	movzx	eax, byte ptr [r14]
	mov	dword ptr [rbx], eax
	mov	r15d, 1
.label_378:
	mov	rax, r15
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	16
	#Procedure 0x405236
	.globl sub_405236
	.type sub_405236, @function
sub_405236:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405240
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
	.align	16
	#Procedure 0x405259
	.globl sub_405259
	.type sub_405259, @function
sub_405259:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x405260
	.globl emit_bug_reporting_address
	.type emit_bug_reporting_address, @function
emit_bug_reporting_address:

	push	rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_379
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_380
	xor	eax, eax
	mov	rsi, rcx
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_382
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_38
	mov	ecx, OFFSET FLAT:label_314
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_381
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	pop	rax
	jmp	fputs_unlocked
	.section	.text
	.align	16
	#Procedure 0x4052d4
	.globl sub_4052d4
	.type sub_4052d4, @function
sub_4052d4:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4052e0

	.globl version_etc
	.type version_etc, @function
version_etc:
	sub	rsp, 0xd8
	test	al, al
	je	.label_383
	movaps	xmmword ptr [rsp + 0x50], xmm0
	movaps	xmmword ptr [rsp + 0x60], xmm1
	movaps	xmmword ptr [rsp + 0x70], xmm2
	movaps	xmmword ptr [rsp + 0x80], xmm3
	movaps	xmmword ptr [rsp + 0x90], xmm4
	movaps	xmmword ptr [rsp + 0xa0], xmm5
	movaps	xmmword ptr [rsp + 0xb0], xmm6
	movaps	xmmword ptr [rsp + 0xc0], xmm7
.label_383:
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
	.align	16
	#Procedure 0x405363
	.globl sub_405363
	.type sub_405363, @function
sub_405363:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405370
	.globl randint_get_source
	.type randint_get_source, @function
randint_get_source:

	mov	rax, qword ptr [rdi]
	ret	
	.section	.text
	.align	16
	#Procedure 0x405374
	.globl sub_405374
	.type sub_405374, @function
sub_405374:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405380
	.globl quotearg_n_custom_mem
	.type quotearg_n_custom_mem, @function
quotearg_n_custom_mem:

	sub	rsp, 0x38
	mov	rax, qword ptr [rip + label_11]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0, xmmword ptr [rip + label_12]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_13]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rsi, rsi
	je	.label_384
	test	rdx, rdx
	je	.label_384
	mov	qword ptr [rsp + 0x28], rsi
	mov	qword ptr [rsp + 0x30], rdx
	lea	rax, [rsp]
	mov	rsi, rcx
	mov	rdx, r8
	mov	rcx, rax
	call	quotearg_n_options
	add	rsp, 0x38
	ret	
.label_384:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x4053ea
	.globl sub_4053ea
	.type sub_4053ea, @function
sub_4053ea:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4053f0
	.globl randread_set_handler
	.type randread_set_handler, @function
randread_set_handler:

	mov	qword ptr [rdi + 8], rsi
	ret	
	.section	.text
	.align	16
	#Procedure 0x4053f5
	.globl sub_4053f5
	.type sub_4053f5, @function
sub_4053f5:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405400
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
	.align	16
	#Procedure 0x405413
	.globl sub_405413
	.type sub_405413, @function
sub_405413:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405420

	.globl try_file
	.type try_file, @function
try_file:
	mov	esi, dword ptr [rsi]
	and	esi, 0xffffff3c
	or	esi, 0xc2
	mov	edx, 0x180
	xor	eax, eax
	jmp	open
	.section	.text
	.align	16
	#Procedure 0x40543a
	.globl sub_40543a
	.type sub_40543a, @function
sub_40543a:

	nop	word ptr [rax + rax]
.label_387:
	movzx	edx, byte ptr [rax + 1]
	inc	rax
	mov	sil, cl
.label_389:
	mov	cl, 1
	cmp	dl, 0x2f
	je	.label_387
	test	dl, dl
	je	.label_385
	mov	ecx, esi
	and	cl, 1
	je	.label_386
	xor	esi, esi
.label_386:
	test	cl, cl
	cmovne	rdi, rax
	mov	ecx, esi
	jmp	.label_387
	.section	.text
	.align	16
	#Procedure 0x405468

	.globl last_component
	.type last_component, @function
last_component:
	dec	rdi
	nop	word ptr cs:[rax + rax]
.label_388:
	movzx	edx, byte ptr [rdi + 1]
	inc	rdi
	cmp	dl, 0x2f
	je	.label_388
	xor	esi, esi
	mov	rax, rdi
	jmp	.label_389
	.section	.text
	.align	16
	#Procedure 0x40548b
	.globl sub_40548b
	.type sub_40548b, @function
sub_40548b:

	nop	word ptr cs:[rax + rax]
.label_385:
	mov	rax, rdi
	ret	
	.section	.text
	.align	16
	#Procedure 0x40549c
	.globl sub_40549c
	.type sub_40549c, @function
sub_40549c:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4054a0

	.globl close_stdout
	.type close_stdout, @function
close_stdout:
	push	rbp
	push	rbx
	push	rax
	mov	rdi, qword ptr [rip + stdout]
	call	close_stream
	test	eax, eax
	je	.label_392
	mov	bl, byte ptr [rip + ignore_EPIPE]
	call	__errno_location
	mov	rbp, rax
	cmp	bl, 0
	je	.label_390
	cmp	dword ptr [rbp], 0x20
	jne	.label_390
.label_392:
	mov	rdi, qword ptr [rip + stderr]
	call	close_stream
	test	eax, eax
	jne	.label_394
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
.label_394:
	mov	edi, dword ptr [rip + exit_failure]
	call	_exit
.label_393:
	call	quotearg_colon
	mov	rcx, rax
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_391
	xor	eax, eax
	mov	esi, ebp
	mov	r8, rbx
	call	error
	mov	edi, dword ptr [rip + exit_failure]
	call	_exit
	nop	word ptr cs:[rax + rax]
.label_390:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_34
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	rdi, qword ptr [rip + file_name]
	test	rdi, rdi
	mov	ebp, dword ptr [rbp]
	jne	.label_393
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_221
	xor	eax, eax
	mov	esi, ebp
	mov	rcx, rbx
	call	error
	mov	edi, dword ptr [rip + exit_failure]
	call	_exit
	.section	.text
	.align	16
	#Procedure 0x405560

	.globl try_nocreate
	.type try_nocreate, @function
try_nocreate:
	push	rbx
	sub	rsp, 0x90
	mov	rax, rdi
	lea	rdx, [rsp]
	mov	edi, 1
	mov	rsi, rax
	call	__lxstat
	mov	ebx, eax
	call	__errno_location
	test	ebx, ebx
	je	.label_395
	cmp	dword ptr [rax], 0x4b
	jne	.label_396
.label_395:
	mov	dword ptr [rax], 0x11
.label_396:
	xor	ecx, ecx
	cmp	dword ptr [rax], 2
	mov	eax, 0xffffffff
	cmove	eax, ecx
	add	rsp, 0x90
	pop	rbx
	ret	
	.section	.text
	.align	16
	#Procedure 0x4055a8
	.globl sub_4055a8
	.type sub_4055a8, @function
sub_4055a8:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4055b0
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
	je	.label_397
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
.label_397:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x405611
	.globl sub_405611
	.type sub_405611, @function
sub_405611:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405620
	.globl randread_set_handler_arg
	.type randread_set_handler_arg, @function
randread_set_handler_arg:

	mov	qword ptr [rdi + 0x10], rsi
	ret	
	.section	.text
	.align	16
	#Procedure 0x405625
	.globl sub_405625
	.type sub_405625, @function
sub_405625:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405630

	.globl locale_charset
	.type locale_charset, @function
locale_charset:
	push	rax
	mov	edi, 0xe
	call	rpl_nl_langinfo
	test	rax, rax
	mov	ecx, OFFSET FLAT:label_58
	cmovne	rcx, rax
	cmp	byte ptr [rcx], 0
	mov	eax, OFFSET FLAT:label_398
	cmovne	rax, rcx
	pop	rcx
	ret	
	.section	.text
	.align	16
	#Procedure 0x405655
	.globl sub_405655
	.type sub_405655, @function
sub_405655:

	nop	word ptr cs:[rax + rax]
.label_399:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x405665
	.globl sub_405665
	.type sub_405665, @function
sub_405665:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40566d
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
	je	.label_399
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
	.section	.text
	.align	16
	#Procedure 0x4056d0

	.globl rpl_fcntl
	.type rpl_fcntl, @function
rpl_fcntl:
	push	rbp
	push	r14
	push	rbx
	sub	rsp, 0xd0
	mov	ebx, edi
	test	al, al
	je	.label_415
	movaps	xmmword ptr [rsp + 0x50], xmm0
	movaps	xmmword ptr [rsp + 0x60], xmm1
	movaps	xmmword ptr [rsp + 0x70], xmm2
	movaps	xmmword ptr [rsp + 0x80], xmm3
	movaps	xmmword ptr [rsp + 0x90], xmm4
	movaps	xmmword ptr [rsp + 0xa0], xmm5
	movaps	xmmword ptr [rsp + 0xb0], xmm6
	movaps	xmmword ptr [rsp + 0xc0], xmm7
.label_415:
	mov	qword ptr [rsp + 0x48], r9
	mov	qword ptr [rsp + 0x40], r8
	mov	qword ptr [rsp + 0x38], rcx
	mov	qword ptr [rsp + 0x30], rdx
	lea	rax, [rsp + 0x20]
	mov	qword ptr [rsp + 0x10], rax
	lea	rax, [rsp + 0xf0]
	mov	qword ptr [rsp + 8], rax
	mov	dword ptr [rsp + 4], 0x30
	mov	dword ptr [rsp], 0x10
	cmp	esi, 0xb
	ja	.label_404
	mov	eax, 0xa0a
	bt	eax, esi
	jb	.label_416
	mov	eax, 0x514
	bt	eax, esi
	jb	.label_405
	test	esi, esi
	jne	.label_404
	movsxd	rcx, dword ptr [rsp]
	cmp	rcx, 0x28
	ja	.label_419
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0x10]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp], ecx
	jmp	.label_420
.label_404:
	lea	eax, [rsi - 0x400]
	cmp	eax, 8
	ja	.label_400
	mov	ecx, 0x85
	bt	ecx, eax
	jb	.label_405
	mov	ecx, 0x102
	bt	ecx, eax
	jae	.label_408
.label_416:
	xor	eax, eax
	mov	edi, ebx
	call	fcntl
	jmp	.label_411
.label_405:
	movsxd	rcx, dword ptr [rsp]
	cmp	rcx, 0x28
	ja	.label_412
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0x10]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp], ecx
	jmp	.label_413
.label_412:
	mov	rax, qword ptr [rsp + 8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 8], rcx
.label_413:
	mov	edx, dword ptr [rax]
	xor	eax, eax
	mov	edi, ebx
.label_414:
	call	fcntl
.label_411:
	mov	ebp, eax
.label_401:
	mov	eax, ebp
	add	rsp, 0xd0
	pop	rbx
	pop	r14
	pop	rbp
	ret	
.label_408:
	cmp	eax, 6
	jne	.label_400
	movsxd	rcx, dword ptr [rsp]
	cmp	rcx, 0x28
	ja	.label_403
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0x10]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp], ecx
	jmp	.label_407
.label_400:
	movsxd	rcx, dword ptr [rsp]
	cmp	rcx, 0x28
	ja	.label_406
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0x10]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp], ecx
	jmp	.label_410
.label_419:
	mov	rax, qword ptr [rsp + 8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 8], rcx
.label_420:
	mov	edx, dword ptr [rax]
	xor	esi, esi
	xor	eax, eax
	mov	edi, ebx
	jmp	.label_414
.label_403:
	mov	rax, qword ptr [rsp + 8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 8], rcx
.label_407:
	mov	r14d, dword ptr [rax]
	cmp	dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec],  0
	js	.label_418
	mov	esi, 0x406
	xor	eax, eax
	mov	edi, ebx
	mov	edx, r14d
	call	fcntl
	mov	ebp, eax
	test	ebp, ebp
	jns	.label_402
	call	__errno_location
	cmp	dword ptr [rax], 0x16
	jne	.label_402
	xor	esi, esi
	xor	eax, eax
	mov	edi, ebx
	mov	edx, r14d
	call	fcntl
	mov	ebp, eax
	test	ebp, ebp
	js	.label_401
	mov	dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec],  0xffffffff
	mov	al, 1
	jmp	.label_409
.label_402:
	mov	dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec],  1
	jmp	.label_401
.label_406:
	mov	rax, qword ptr [rsp + 8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 8], rcx
.label_410:
	mov	rdx, qword ptr [rax]
	xor	eax, eax
	mov	edi, ebx
	call	fcntl
	jmp	.label_411
.label_418:
	xor	esi, esi
	xor	eax, eax
	mov	edi, ebx
	mov	edx, r14d
	call	fcntl
	mov	ebp, eax
	cmp	dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec],  -1
	sete	al
.label_409:
	test	al, al
	je	.label_401
	test	ebp, ebp
	js	.label_401
	mov	esi, 1
	xor	eax, eax
	mov	edi, ebp
	call	fcntl
	mov	ecx, eax
	test	ecx, ecx
	js	.label_417
	or	ecx, 1
	mov	esi, 2
	xor	eax, eax
	mov	edi, ebp
	mov	edx, ecx
	call	fcntl
	cmp	eax, -1
	jne	.label_401
.label_417:
	call	__errno_location
	mov	rbx, rax
	mov	r14d, dword ptr [rbx]
	mov	edi, ebp
	call	close
	mov	dword ptr [rbx], r14d
	mov	ebp, 0xffffffff
	jmp	.label_401
	.section	.text
	.align	16
	#Procedure 0x405961
	.globl sub_405961
	.type sub_405961, @function
sub_405961:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405970
	.globl gen_tempname
	.type gen_tempname, @function
gen_tempname:

	push	rax
	mov	dword ptr [rsp + 4], edx
	cmp	ecx, 3
	jae	.label_421
	movsxd	rax, ecx
	mov	rcx, qword ptr [(rax * 8) + label_284]
	lea	rdx, [rsp + 4]
	mov	r8d, 6
	call	try_tempname_len
	pop	rcx
	ret	
.label_421:
	mov	edi, OFFSET FLAT:label_281
	mov	esi, OFFSET FLAT:label_282
	mov	edx, 0x147
	mov	ecx, OFFSET FLAT:label_283
	call	__assert_fail
	.section	.text
	.align	16
	#Procedure 0x4059b0

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
	jne	.label_422
	mov	rax, qword ptr [rbx + 0x28]
	cmp	rax, qword ptr [rbx + 0x20]
	jne	.label_422
	cmp	qword ptr [rbx + 0x48], 0
	je	.label_423
.label_422:
	mov	rdi, rbx
	mov	rsi, rbp
	mov	edx, r14d
	pop	rbx
	pop	r14
	pop	rbp
	jmp	fseeko
.label_423:
	mov	rdi, rbx
	call	fileno
	mov	edi, eax
	mov	rsi, rbp
	mov	edx, r14d
	call	lseek
	mov	rcx, rax
	mov	eax, 0xffffffff
	cmp	rcx, -1
	je	.label_424
	and	byte ptr [rbx], 0xef
	mov	qword ptr [rbx + 0x90], rcx
	xor	eax, eax
.label_424:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x405a1e
	.globl sub_405a1e
	.type sub_405a1e, @function
sub_405a1e:

	nop	
.label_427:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x405a25

	.globl xrealloc
	.type xrealloc, @function
xrealloc:
	push	rbx
	mov	rbx, rsi
	test	rdi, rdi
	je	.label_426
	test	rbx, rbx
	jne	.label_426
	call	free
	xor	eax, eax
	pop	rbx
	ret	
.label_426:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_425
	test	rax, rax
	je	.label_427
.label_425:
	pop	rbx
	ret	
.label_434:
	mov	edi, 0x1038
	call	xmalloc
	mov	r15, rax
	mov	qword ptr [r15], 0
	mov	qword ptr [r15 + 8], OFFSET FLAT:randread_error
	mov	qword ptr [r15 + 0x10], 0
	jmp	.label_432
	.section	.text
	.align	16
	#Procedure 0x405a79

	.globl randread_new
	.type randread_new, @function
randread_new:
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x10
	mov	r12, rsi
	mov	r14, rdi
	test	r12, r12
	je	.label_434
	xor	ebx, ebx
	test	r14, r14
	je	.label_430
	mov	esi, OFFSET FLAT:label_431
	mov	rdi, r14
	call	fopen_safer
	mov	rbx, rax
	xor	r15d, r15d
	test	rbx, rbx
	je	.label_432
.label_430:
	mov	edi, 0x1038
	call	xmalloc
	mov	r15, rax
	mov	qword ptr [r15], rbx
	mov	qword ptr [r15 + 8], OFFSET FLAT:randread_error
	mov	qword ptr [r15 + 0x10], r14
	test	rbx, rbx
	je	.label_435
	mov	rsi, r15
	add	rsi, 0x18
	cmp	r12, 0x1000
	mov	ecx, 0x1000
	cmovbe	rcx, r12
	xor	edx, edx
	mov	rdi, rbx
	call	setvbuf
	jmp	.label_432
.label_435:
	mov	qword ptr [r15 + 0x18], 0
	mov	r14, r15
	add	r14, 0x20
	xor	r13d, r13d
	mov	edi, OFFSET FLAT:label_433
	xor	esi, esi
	xor	eax, eax
	call	open
	mov	ebx, eax
	test	ebx, ebx
	js	.label_429
	cmp	r12, 0x800
	mov	edx, 0x800
	cmovbe	rdx, r12
	mov	edi, ebx
	mov	rsi, r14
	call	read
	mov	r12, rax
	mov	edi, ebx
	call	close
	xor	r13d, r13d
	test	r12, r12
	js	.label_429
	cmp	r12, 0x7ff
	mov	r13, r12
	ja	.label_428
.label_429:
	mov	eax, 0x800
	sub	rax, r13
	cmp	rax, 0x10
	mov	ebx, 0x10
	cmovbe	rbx, rax
	lea	r12, [rsp]
	xor	esi, esi
	mov	rdi, r12
	call	gettimeofday
	lea	rdi, [r14 + r13]
	mov	rsi, r12
	mov	rdx, rbx
	call	memcpy
	add	rbx, r13
	cmp	rbx, 0x7ff
	ja	.label_428
	mov	eax, 0x800
	sub	rax, rbx
	cmp	rax, 4
	mov	r12d, 4
	cmovbe	r12, rax
	call	getpid
	mov	dword ptr [rsp], eax
	lea	rdi, [r14 + rbx]
	lea	rsi, [rsp]
	mov	rdx, r12
	call	memcpy
	add	r12, rbx
	cmp	r12, 0x7ff
	ja	.label_428
	mov	eax, 0x800
	sub	rax, r12
	cmp	rax, 4
	mov	ebx, 4
	cmovbe	rbx, rax
	call	getppid
	mov	dword ptr [rsp], eax
	lea	rdi, [r14 + r12]
	lea	rsi, [rsp]
	mov	rdx, rbx
	call	memcpy
	add	rbx, r12
	cmp	rbx, 0x7ff
	ja	.label_428
	mov	eax, 0x800
	sub	rax, rbx
	cmp	rax, 4
	mov	r12d, 4
	cmovbe	r12, rax
	call	getuid
	mov	dword ptr [rsp], eax
	lea	rdi, [r14 + rbx]
	lea	rsi, [rsp]
	mov	rdx, r12
	call	memcpy
	add	r12, rbx
	cmp	r12, 0x7ff
	ja	.label_428
	mov	eax, 0x800
	sub	rax, r12
	cmp	rax, 4
	mov	ebx, 4
	cmovbe	rbx, rax
	call	getgid
	mov	dword ptr [rsp], eax
	add	r12, r14
	lea	rsi, [rsp]
	mov	rdi, r12
	mov	rdx, rbx
	call	memcpy
.label_428:
	mov	rdi, r14
	call	isaac_seed
.label_432:
	mov	rax, r15
	add	rsp, 0x10
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	16
	#Procedure 0x405c98
	.globl sub_405c98
	.type sub_405c98, @function
sub_405c98:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405ca0
	.globl set_quoting_style
	.type set_quoting_style, @function
set_quoting_style:

	test	rdi, rdi
	mov	eax, OFFSET FLAT:default_quoting_options
	cmovne	rax, rdi
	mov	dword ptr [rax], esi
	ret	
	.section	.text
	.align	16
	#Procedure 0x405caf
	.globl sub_405caf
	.type sub_405caf, @function
sub_405caf:

	nop	
.label_440:
	mov	esi, OFFSET FLAT:label_436
.label_438:
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	mov	rdi, rbx
	call	quote
	mov	rcx, rax
	xor	eax, eax
	mov	edi, r14d
	mov	esi, r15d
	mov	rdx, rbp
	call	error
.label_439:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x405ce2
	.globl sub_405ce2
	.type sub_405ce2, @function
sub_405ce2:

	nop	
	.section	.text
	.align	16
	#Procedure 0x405ce4

	.globl randread_error
	.type randread_error, @function
randread_error:
	push	rbp
	push	r15
	push	r14
	push	rbx
	push	rax
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_439
	mov	r14d, dword ptr [rip + exit_failure]
	call	__errno_location
	mov	r15d, dword ptr [rax]
	xor	edi, edi
	test	r15d, r15d
	jne	.label_440
	mov	esi, OFFSET FLAT:label_437
	jmp	.label_438
	.section	.text
	.align	16
	#Procedure 0x405d75
	.globl sub_405d75
	.type sub_405d75, @function
sub_405d75:

	nop	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405d82
	.globl sub_405d82
	.type sub_405d82, @function
sub_405d82:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405da6
	.globl sub_405da6
	.type sub_405da6, @function
sub_405da6:

	nop	word ptr cs:[rax + rax]
