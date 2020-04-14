	.section	.text
	.align	16
	#Procedure 0x401c79
	.globl sub_401c79
	.type sub_401c79, @function
sub_401c79:

	hlt	
	.section	.text
	.align	16
	#Procedure 0x401c7a
	.globl sub_401c7a
	.type sub_401c7a, @function
sub_401c7a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401cb2
	.globl sub_401cb2
	.type sub_401cb2, @function
sub_401cb2:

	nop	dword ptr [rax]
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401cfa
	.globl sub_401cfa
	.type sub_401cfa, @function
sub_401cfa:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401d1c
	.globl sub_401d1c
	.type sub_401d1c, @function
sub_401d1c:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x401d2d
	.globl sub_401d2d
	.type sub_401d2d, @function
sub_401d2d:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x401d46
	.globl sub_401d46
	.type sub_401d46, @function
sub_401d46:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401d50
	.globl quotearg_custom_mem
	.type quotearg_custom_mem, @function
quotearg_custom_mem:

	sub	rsp, 0x38
	mov	rax, qword ptr [rip + label_9]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0, xmmword ptr [rip + label_10]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_11]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rdi, rdi
	je	.label_12
	test	rsi, rsi
	je	.label_12
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
.label_12:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x401dbc
	.globl sub_401dbc
	.type sub_401dbc, @function
sub_401dbc:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x401dc0
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
	#Procedure 0x401df6
	.globl sub_401df6
	.type sub_401df6, @function
sub_401df6:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401e00
	.globl version_etc_ar
	.type version_etc_ar, @function
version_etc_ar:

	mov	r9, -1
	nop	word ptr [rax + rax]
.label_13:
	cmp	qword ptr [r8 + r9*8 + 8], 0
	lea	r9, [r9 + 1]
	jne	.label_13
	jmp	version_etc_arn
	.section	.text
	.align	16
	#Procedure 0x401e21
	.globl sub_401e21
	.type sub_401e21, @function
sub_401e21:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401e30

	.globl check_arrival
	.type check_arrival, @function
check_arrival:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x98
	mov	rbx, rdx
	mov	rbp, rsi
	mov	rax, qword ptr [rdi + 0x98]
	mov	dword ptr [rsp + 4], 0
	mov	qword ptr [rsp + 0x58], rax
	mov	rax, qword ptr [rax]
	shl	rdx, 4
	mov	rax, qword ptr [rax + rdx]
	mov	qword ptr [rsp + 0x40], rax
	mov	r12, qword ptr [rbp + 8]
	mov	qword ptr [rsp + 0x28], rdi
	movsxd	rax, dword ptr [rdi + 0xe0]
	lea	rdi, [rax + r9]
	cmp	r12, rdi
	mov	qword ptr [rsp + 0x50], r9
	mov	qword ptr [rsp + 0x90], r8
	mov	qword ptr [rsp + 0x48], rbx
	jle	.label_24
	mov	r14, qword ptr [rbp + 0x10]
.label_16:
	mov	r13, qword ptr [rbp]
	test	r13, r13
	cmove	r13, rcx
	mov	rdi, qword ptr [rsp + 0x28]
	mov	r15, qword ptr [rdi + 0x48]
	mov	rax, qword ptr [rdi + 0xb8]
	mov	qword ptr [rsp + 0x78], rax
	mov	qword ptr [rdi + 0xb8], r14
	mov	qword ptr [rdi + 0x48], r13
	lea	rsi, [r13 - 1]
	mov	edx, dword ptr [rdi + 0xa0]
	mov	rbx, rcx
	call	re_string_context_at
	cmp	r13, rbx
	mov	r12, qword ptr [rsp + 0x58]
	mov	qword ptr [rsp + 0x88], rbp
	mov	qword ptr [rsp + 0x80], r15
	mov	qword ptr [rsp + 8], r13
	jne	.label_46
	mov	dword ptr [rsp + 0x38], eax
	movaps	xmm0, xmmword ptr [rip + label_51]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	mov	edi, 8
	call	malloc
	mov	qword ptr [rsp + 0x20], rax
	test	rax, rax
	je	.label_19
	mov	rcx, qword ptr [rsp + 0x48]
	mov	qword ptr [rax], rcx
	mov	dword ptr [rsp + 4], 0
	lea	rsi, [rsp + 0x10]
	mov	rdi, r12
	mov	r13, qword ptr [rsp + 0x40]
	mov	rdx, r13
	mov	ebx, dword ptr [rsp + 0xd0]
	mov	ecx, ebx
	call	check_arrival_expand_ecl
	mov	ebp, eax
	mov	dword ptr [rsp + 4], ebp
	test	ebp, ebp
	jne	.label_27
	mov	rbp, qword ptr [rsp + 0x18]
	mov	r14, qword ptr [rsp + 0x28]
	jmp	.label_29
.label_46:
	mov	rdx, qword ptr [r14 + r13*8]
	test	rdx, rdx
	je	.label_43
	mov	dword ptr [rsp + 0x38], eax
	mov	al, byte ptr [rdx + 0x68]
	test	al, 0x40
	jne	.label_34
	xorps	xmm0, xmm0
	movaps	xmmword ptr [rsp + 0x10], xmm0
	mov	qword ptr [rsp + 0x20], 0
	xor	ebp, ebp
	mov	r14, qword ptr [rsp + 0x28]
	mov	r13, qword ptr [rsp + 0x40]
	jmp	.label_37
.label_43:
	xorps	xmm0, xmm0
	movaps	xmmword ptr [rsp + 0x10], xmm0
	mov	qword ptr [rsp + 0x20], 0
	xor	edx, edx
	mov	r14, qword ptr [rsp + 0x28]
	mov	r13, qword ptr [rsp + 0x40]
	mov	ebx, dword ptr [rsp + 0xd0]
	jmp	.label_30
.label_34:
	mov	rbp, qword ptr [rdx + 0x10]
	mov	qword ptr [rsp + 0x18], rbp
	test	rbp, rbp
	mov	r13, qword ptr [rsp + 0x40]
	jle	.label_44
	mov	qword ptr [rsp + 0x48], rdx
	mov	qword ptr [rsp + 0x10], rbp
	lea	r15, [rbp*8]
	mov	rdi, r15
	call	malloc
	mov	qword ptr [rsp + 0x20], rax
	test	rax, rax
	mov	r14, qword ptr [rsp + 0x28]
	mov	ebx, dword ptr [rsp + 0xd0]
	je	.label_19
	mov	r12, qword ptr [rsp + 0x48]
	mov	rsi, qword ptr [r12 + 0x18]
	mov	rdi, rax
	mov	rdx, r15
	call	memcpy
	mov	rdx, r12
	mov	al, byte ptr [rdx + 0x68]
	mov	dword ptr [rsp + 4], 0
	mov	r12, qword ptr [rsp + 0x58]
	jmp	.label_22
.label_44:
	xorps	xmm0, xmm0
	movaps	xmmword ptr [rsp + 0x10], xmm0
	mov	qword ptr [rsp + 0x20], 0
	xor	ebp, ebp
	mov	dword ptr [rsp + 4], 0
	mov	r14, qword ptr [rsp + 0x28]
.label_37:
	mov	ebx, dword ptr [rsp + 0xd0]
.label_22:
	test	al, 0x40
	je	.label_30
.label_29:
	test	rbp, rbp
	je	.label_31
	lea	rsi, [rsp + 0x10]
	mov	rdi, r14
	mov	rdx, qword ptr [rsp + 8]
	mov	rcx, r13
	mov	r8d, ebx
	call	expand_bkref_cache
	mov	ebp, eax
	mov	dword ptr [rsp + 4], ebp
	test	ebp, ebp
	jne	.label_27
.label_31:
	lea	rdi, [rsp + 4]
	lea	rdx, [rsp + 0x10]
	mov	rsi, r12
	mov	ecx, dword ptr [rsp + 0x38]
	call	re_acquire_state_context
	mov	rdx, rax
	test	rdx, rdx
	jne	.label_50
	mov	eax, dword ptr [rsp + 4]
	test	eax, eax
	jne	.label_23
.label_50:
	mov	rax, qword ptr [r14 + 0xb8]
	mov	rcx, qword ptr [rsp + 8]
	mov	qword ptr [rax + rcx*8], rdx
.label_30:
	mov	rax, qword ptr [rsp + 8]
	cmp	rax, qword ptr [rsp + 0x50]
	jge	.label_45
	xor	esi, esi
	nop	
.label_33:
	movsxd	rax, dword ptr [r14 + 0xe0]
	cmp	rsi, rax
	jg	.label_47
	mov	qword ptr [rsp + 0x38], rsi
	mov	qword ptr [rsp + 0x18], 0
	mov	rax, qword ptr [r14 + 0xb8]
	mov	rcx, qword ptr [rsp + 8]
	mov	rsi, qword ptr [rax + rcx*8 + 8]
	test	rsi, rsi
	je	.label_49
	add	rsi, 8
	lea	rdi, [rsp + 0x10]
	mov	rbp, rdx
	call	re_node_set_merge
	mov	rdx, rbp
	mov	dword ptr [rsp + 4], eax
	test	eax, eax
	jne	.label_23
.label_49:
	test	rdx, rdx
	je	.label_25
	mov	r13, qword ptr [r14 + 0x98]
	mov	dword ptr [rsp + 0x34], 0
	xorps	xmm0, xmm0
	movaps	xmmword ptr [rsp + 0x60], xmm0
	mov	qword ptr [rsp + 0x70], 0
	cmp	qword ptr [rdx + 0x28], 0
	mov	edi, 0
	jle	.label_18
	xor	ebx, ebx
	mov	qword ptr [rsp + 0x48], rdx
	nop	word ptr cs:[rax + rax]
.label_35:
	mov	rax, qword ptr [rdx + 0x30]
	mov	r15, qword ptr [rax + rbx*8]
	mov	rsi, qword ptr [r13]
	mov	rbp, r15
	shl	rbp, 4
	test	byte ptr [rsi + rbp + 0xa], 0x10
	je	.label_36
	mov	rdi, r13
	mov	rsi, r15
	mov	rdx, r14
	mov	r12, qword ptr [rsp + 8]
	mov	rcx, r12
	call	check_node_accept_bytes
	cmp	eax, 2
	jl	.label_40
	mov	rcx, qword ptr [r13 + 0x18]
	mov	rdx, qword ptr [rcx + r15*8]
	mov	rcx, r14
	movsxd	r14, eax
	add	r14, r12
	mov	rax, qword ptr [rcx + 0xb8]
	mov	rsi, qword ptr [rax + r14*8]
	mov	qword ptr [rsp + 0x68], 0
	test	rsi, rsi
	lea	rax, [rsp + 0x60]
	mov	rcx, rax
	je	.label_41
	add	rsi, 8
	mov	r12, rcx
	mov	rdi, r12
	mov	rbp, rdx
	call	re_node_set_merge
	mov	rdx, rbp
	mov	rcx, r12
	mov	r12d, eax
	mov	dword ptr [rsp + 0x34], r12d
	test	r12d, r12d
	jne	.label_15
.label_41:
	mov	rbp, rcx
	mov	rdi, rbp
	mov	rsi, rdx
	call	re_node_set_insert
	test	al, al
	mov	rdx, rbp
	je	.label_21
	lea	rdi, [rsp + 0x34]
	mov	rsi, r13
	call	re_acquire_state
	mov	rdx, qword ptr [rsp + 0x28]
	mov	rcx, qword ptr [rdx + 0xb8]
	mov	qword ptr [rcx + r14*8], rax
	mov	rax, qword ptr [rdx + 0xb8]
	cmp	qword ptr [rax + r14*8], 0
	mov	r14, rdx
	jne	.label_26
	mov	r12d, dword ptr [rsp + 0x34]
	test	r12d, r12d
	je	.label_26
	jmp	.label_15
	.section	.text
	.align	16
	#Procedure 0x40226e
	.globl sub_40226e
	.type sub_40226e, @function
sub_40226e:

	nop	
.label_40:
	test	eax, eax
	jne	.label_26
	mov	rsi, qword ptr [r13]
	nop	dword ptr [rax + rax]
.label_36:
	add	rsi, rbp
	mov	rdi, r14
	mov	rdx, qword ptr [rsp + 8]
	call	check_node_accept
	test	al, al
	je	.label_38
.label_26:
	mov	rax, qword ptr [r13 + 0x18]
	mov	rsi, qword ptr [rax + r15*8]
	lea	rdi, [rsp + 0x10]
	call	re_node_set_insert
	test	al, al
	je	.label_21
.label_38:
	inc	rbx
	mov	rdx, qword ptr [rsp + 0x48]
	cmp	rbx, qword ptr [rdx + 0x28]
	jl	.label_35
	mov	rdi, qword ptr [rsp + 0x70]
	mov	r12, qword ptr [rsp + 0x58]
.label_18:
	call	free
	mov	dword ptr [rsp + 4], 0
	mov	r13, qword ptr [rsp + 0x40]
	mov	ebx, dword ptr [rsp + 0xd0]
.label_25:
	mov	rax, qword ptr [rsp + 8]
	lea	rbp, [rax + 1]
	cmp	qword ptr [rsp + 0x18], 0
	lea	r15, [rsp + 0x10]
	je	.label_48
	mov	rdi, r12
	mov	rsi, r15
	mov	rdx, r13
	mov	ecx, ebx
	call	check_arrival_expand_ecl
	mov	dword ptr [rsp + 4], eax
	test	eax, eax
	jne	.label_23
	mov	rdi, r14
	mov	rsi, r15
	mov	rdx, rbp
	mov	rcx, r13
	mov	r8d, ebx
	call	expand_bkref_cache
	mov	dword ptr [rsp + 4], eax
	test	eax, eax
	jne	.label_23
.label_48:
	mov	edx, dword ptr [r14 + 0xa0]
	mov	rdi, r14
	mov	rsi, qword ptr [rsp + 8]
	call	re_string_context_at
	lea	rdi, [rsp + 4]
	mov	rsi, r12
	mov	rdx, r15
	mov	ecx, eax
	call	re_acquire_state_context
	mov	rdx, rax
	test	rdx, rdx
	jne	.label_28
	mov	eax, dword ptr [rsp + 4]
	test	eax, eax
	jne	.label_23
.label_28:
	mov	rsi, qword ptr [rsp + 0x38]
	inc	rsi
	test	rdx, rdx
	mov	rax, qword ptr [r14 + 0xb8]
	mov	rcx, qword ptr [rsp + 8]
	mov	qword ptr [rax + rcx*8 + 8], rdx
	mov	eax, 0
	cmovne	rsi, rax
	cmp	rbp, qword ptr [rsp + 0x50]
	mov	rax, rbp
	mov	qword ptr [rsp + 8], rax
	jl	.label_33
	jmp	.label_39
.label_45:
	mov	rbp, rax
	jmp	.label_39
.label_47:
	mov	rbp, qword ptr [rsp + 8]
.label_39:
	mov	rdi, qword ptr [rsp + 0x20]
	call	free
	mov	rax, qword ptr [r14 + 0xb8]
	mov	rcx, qword ptr [rsp + 0x50]
	mov	rax, qword ptr [rax + rcx*8]
	lea	rcx, [rax + 8]
	test	rax, rax
	cmove	rcx, rax
	mov	rax, qword ptr [rsp + 0x88]
	mov	qword ptr [rax], rbp
	mov	rax, qword ptr [rsp + 0x78]
	mov	qword ptr [r14 + 0xb8], rax
	mov	rax, qword ptr [rsp + 0x80]
	mov	qword ptr [r14 + 0x48], rax
	mov	rbx, qword ptr [rsp + 0x90]
	je	.label_14
	mov	rax, qword ptr [rcx + 8]
	test	rax, rax
	jle	.label_14
	xor	ebp, ebp
	dec	rax
	mov	rcx, qword ptr [rcx + 0x10]
	mov	edx, 0
	je	.label_17
	xor	edx, edx
.label_42:
	lea	rsi, [rdx + rax]
	shr	rsi, 1
	cmp	qword ptr [rcx + rsi*8], rbx
	lea	rdi, [rsi + 1]
	cmovl	rdx, rdi
	cmovge	rax, rsi
	cmp	rdx, rax
	jb	.label_42
.label_17:
	cmp	rdx, -1
	je	.label_14
	cmp	qword ptr [rcx + rdx*8], rbx
	je	.label_20
.label_14:
	mov	ebp, 1
.label_20:
	mov	eax, ebp
	add	rsp, 0x98
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_21:
	mov	rdi, qword ptr [rsp + 0x70]
	call	free
	mov	r12d, 0xc
	jmp	.label_32
.label_15:
	mov	rdi, qword ptr [rsp + 0x70]
	call	free
.label_32:
	mov	dword ptr [rsp + 4], r12d
.label_23:
	mov	rdi, qword ptr [rsp + 0x20]
	call	free
	mov	ebp, dword ptr [rsp + 4]
	jmp	.label_20
.label_24:
	mov	r13, rbp
	movabs	rdx, 0x7fffffffffffffff
	sub	rdx, r12
	mov	ebp, 0xc
	cmp	rdx, rdi
	jle	.label_20
	mov	qword ptr [rsp + 8], rcx
	mov	rcx, qword ptr [rsp + 0x50]
	lea	r15, [rax + rcx + 1]
	lea	rcx, [r15 + r12]
	mov	rax, rcx
	shr	rax, 0x3d
	jne	.label_20
	mov	rdi, qword ptr [r13 + 0x10]
	mov	qword ptr [rsp + 0x38], rcx
	lea	rsi, [rcx*8]
	call	realloc
	mov	r14, rax
	test	r14, r14
	je	.label_20
	mov	qword ptr [r13 + 0x10], r14
	mov	rax, qword ptr [rsp + 0x38]
	mov	qword ptr [r13 + 8], rax
	lea	rdi, [r14 + r12*8]
	shl	r15, 3
	xor	esi, esi
	mov	rdx, r15
	call	memset
	mov	rbp, r13
	mov	rcx, qword ptr [rsp + 8]
	jmp	.label_16
.label_27:
	mov	rdi, qword ptr [rsp + 0x20]
	call	free
	jmp	.label_20
.label_19:
	xorps	xmm0, xmm0
	movaps	xmmword ptr [rsp + 0x10], xmm0
	mov	dword ptr [rsp + 4], 0xc
	mov	ebp, 0xc
	jmp	.label_20
	.section	.text
	.align	16
	#Procedure 0x40253f
	.globl sub_40253f
	.type sub_40253f, @function
sub_40253f:

	nop	
	.section	.text
	.align	16
	#Procedure 0x402540

	.globl handle_line_error
	.type handle_line_error, @function
handle_line_error:
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x20
	mov	r14, rsi
	mov	rbx, rdi
	mov	r15, qword ptr [rip + stderr]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_52
	mov	edx, 5
	call	dcgettext
	mov	r12, rax
	mov	r13, qword ptr [rip + program_name]
	mov	rdi, qword ptr [rbx + 8]
	lea	rsi, [rsp]
	call	umaxtostr
	mov	rdi, rax
	call	quote
	mov	rbx, rax
	mov	esi, 1
	xor	eax, eax
	mov	rdi, r15
	mov	rdx, r12
	mov	rcx, r13
	mov	r8, rbx
	call	__fprintf_chk
	test	r14, r14
	mov	rbx, qword ptr [rip + stderr]
	jne	.label_54
	mov	esi, 1
	mov	edx, OFFSET FLAT:label_53
	xor	eax, eax
	mov	rdi, rbx
	call	__fprintf_chk
	call	cleanup_fatal
.label_54:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_55
	mov	edx, 5
	call	dcgettext
	mov	r15, rax
	lea	rsi, [rsp]
	mov	rdi, r14
	call	umaxtostr
	mov	rcx, rax
	mov	esi, 1
	xor	eax, eax
	mov	rdi, rbx
	mov	rdx, r15
	call	__fprintf_chk
	call	cleanup_fatal
	.section	.text
	.align	16
	#Procedure 0x402604
	.globl sub_402604
	.type sub_402604, @function
sub_402604:

	nop	word ptr cs:[rax + rax]
.label_67:
	mov	edi, 0x3c8
	call	malloc
	xor	r15d, r15d
	test	rax, rax
	je	.label_56
	mov	rcx, qword ptr [rbx + 0x70]
	mov	qword ptr [rax], rcx
	mov	qword ptr [rbx + 0x70], rax
	mov	dword ptr [rbx + 0x80], 0
	jmp	.label_64
.label_70:
	mov	edi, 0x3c8
	call	malloc
	xor	r13d, r13d
	test	rax, rax
	je	.label_67
	mov	rcx, qword ptr [rbx + 0x70]
	mov	qword ptr [rax], rcx
	mov	qword ptr [rbx + 0x70], rax
	mov	dword ptr [rbx + 0x80], 0
	jmp	.label_68
	.section	.text
	.align	16
	#Procedure 0x40266c

	.globl lower_subexp
	.type lower_subexp, @function
lower_subexp:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	r14, rcx
	mov	rbx, rsi
	mov	rbp, rdi
	mov	r12, qword ptr [r14 + 8]
	test	dl, 0x10
	je	.label_69
	test	r12, r12
	je	.label_69
	mov	rax, qword ptr [r14 + 0x28]
	cmp	rax, 0x3f
	jg	.label_65
	mov	rcx, qword ptr [rbx + 0xa0]
	bt	rcx, rax
	jae	.label_65
.label_69:
	mov	r13d, dword ptr [rbx + 0x80]
	cmp	r13d, 0xf
	mov	qword ptr [rsp], rbp
	je	.label_70
	mov	rax, qword ptr [rbx + 0x70]
.label_68:
	lea	ecx, [r13 + 1]
	mov	dword ptr [rbx + 0x80], ecx
	movsxd	rcx, r13d
	shl	rcx, 6
	lea	r13, [rax + rcx + 8]
	xorps	xmm0, xmm0
	movups	xmmword ptr [rax + rcx + 8], xmm0
	mov	qword ptr [rax + rcx + 0x18], 0
	mov	dword ptr [rax + rcx + 0x38], 8
	movups	xmmword ptr [rax + rcx + 0x20], xmm0
	mov	qword ptr [rax + rcx + 0x40], -1
	mov	r15d, dword ptr [rbx + 0x80]
	cmp	r15d, 0xf
	je	.label_67
	mov	rax, qword ptr [rbx + 0x70]
.label_64:
	lea	ecx, [r15 + 1]
	mov	dword ptr [rbx + 0x80], ecx
	movsxd	rcx, r15d
	shl	rcx, 6
	lea	r15, [rax + rcx + 8]
	xorps	xmm0, xmm0
	movups	xmmword ptr [rax + rcx + 8], xmm0
	mov	qword ptr [rax + rcx + 0x18], 0
	mov	dword ptr [rax + rcx + 0x38], 9
	movups	xmmword ptr [rax + rcx + 0x20], xmm0
	mov	qword ptr [rax + rcx + 0x40], -1
.label_56:
	test	r12, r12
	mov	rbp, r15
	je	.label_58
	mov	ebp, dword ptr [rbx + 0x80]
	cmp	ebp, 0xf
	je	.label_60
	mov	rax, qword ptr [rbx + 0x70]
.label_63:
	lea	ecx, [rbp + 1]
	mov	dword ptr [rbx + 0x80], ecx
	movsxd	rcx, ebp
	shl	rcx, 6
	lea	rbp, [rax + rcx + 8]
	mov	qword ptr [rax + rcx + 8], 0
	mov	qword ptr [rax + rcx + 0x10], r12
	mov	qword ptr [rax + rcx + 0x18], r15
	mov	dword ptr [rax + rcx + 0x38], 0x10
	xorps	xmm0, xmm0
	movups	xmmword ptr [rax + rcx + 0x20], xmm0
	mov	qword ptr [rax + rcx + 0x40], -1
	mov	qword ptr [r12], rbp
	test	r15, r15
	je	.label_58
	mov	qword ptr [r15], rbp
.label_58:
	mov	r12d, dword ptr [rbx + 0x80]
	cmp	r12d, 0xf
	je	.label_66
	mov	rax, qword ptr [rbx + 0x70]
.label_62:
	lea	ecx, [r12 + 1]
	mov	dword ptr [rbx + 0x80], ecx
	movsxd	rcx, r12d
	shl	rcx, 6
	lea	r12, [rax + rcx + 8]
	mov	qword ptr [rax + rcx + 8], 0
	mov	qword ptr [rax + rcx + 0x10], r13
	mov	qword ptr [rax + rcx + 0x18], rbp
	mov	dword ptr [rax + rcx + 0x38], 0x10
	xorps	xmm0, xmm0
	movups	xmmword ptr [rax + rcx + 0x20], xmm0
	mov	qword ptr [rax + rcx + 0x40], -1
	test	r13, r13
	je	.label_57
	mov	qword ptr [r13], r12
.label_57:
	test	rbp, rbp
	je	.label_59
	mov	qword ptr [rbp], r12
.label_59:
	test	r15, r15
	je	.label_61
	test	r13, r13
	je	.label_61
	test	rbp, rbp
	je	.label_61
	test	r12, r12
	je	.label_61
	mov	rax, qword ptr [r14 + 0x28]
	mov	qword ptr [r15 + 0x28], rax
	mov	qword ptr [r13 + 0x28], rax
	mov	eax, 0x80000
	and	eax, dword ptr [r14 + 0x30]
	mov	ecx, 0xfff7ffff
	mov	edx, dword ptr [r15 + 0x30]
	and	edx, ecx
	or	edx, eax
	mov	dword ptr [r15 + 0x30], edx
	and	ecx, dword ptr [r13 + 0x30]
	or	ecx, eax
	mov	dword ptr [r13 + 0x30], ecx
.label_65:
	mov	rax, r12
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_66:
	mov	edi, 0x3c8
	call	malloc
	xor	r12d, r12d
	test	rax, rax
	je	.label_59
	mov	rcx, qword ptr [rbx + 0x70]
	mov	qword ptr [rax], rcx
	mov	qword ptr [rbx + 0x70], rax
	mov	dword ptr [rbx + 0x80], 0
	jmp	.label_62
.label_61:
	mov	rax, qword ptr [rsp]
	mov	dword ptr [rax], 0xc
	xor	r12d, r12d
	jmp	.label_65
.label_60:
	mov	edi, 0x3c8
	call	malloc
	xor	ebp, ebp
	test	rax, rax
	je	.label_58
	mov	rcx, qword ptr [rbx + 0x70]
	mov	qword ptr [rax], rcx
	mov	qword ptr [rbx + 0x70], rax
	mov	dword ptr [rbx + 0x80], 0
	jmp	.label_63
	.section	.text
	.align	16
	#Procedure 0x4028fe
	.globl sub_4028fe
	.type sub_4028fe, @function
sub_4028fe:

	nop	
	.section	.text
	.align	16
	#Procedure 0x402900

	.globl remove_line
	.type remove_line, @function
remove_line:
	push	r14
	push	rbx
	push	rax
	mov	r14, qword ptr [rip + remove_line.prev_buf]
	test	r14, r14
	je	.label_71
	mov	rdi, qword ptr [r14 + 0x30]
	test	rdi, rdi
	je	.label_76
	nop	dword ptr [rax]
.label_74:
	mov	rbx, qword ptr [rdi + 0x518]
	call	free
	test	rbx, rbx
	mov	rdi, rbx
	jne	.label_74
.label_76:
	mov	qword ptr [r14 + 0x30], 0
	mov	rdi, qword ptr [r14 + 0x28]
	call	free
	mov	qword ptr [r14 + 0x28], 0
	mov	rdi, qword ptr [rip + remove_line.prev_buf]
	call	free
	mov	qword ptr [rip + remove_line.prev_buf],  0
.label_71:
	mov	rax, qword ptr [rip + head]
	test	rax, rax
	jne	.label_73
	xor	ebx, ebx
	call	load_buffer
	test	al, al
	je	.label_75
	mov	rax, qword ptr [rip + head]
.label_73:
	mov	rcx, qword ptr [rax + 0x18]
	cmp	qword ptr [rip + current_line],  rcx
	jae	.label_72
	mov	qword ptr [rip + current_line],  rcx
.label_72:
	inc	rcx
	mov	qword ptr [rax + 0x18], rcx
	mov	rcx, qword ptr [rax + 0x38]
	mov	rdx, qword ptr [rcx + 0x10]
	mov	rsi, rdx
	shl	rsi, 4
	lea	rbx, [rcx + rsi + 0x18]
	inc	rdx
	mov	qword ptr [rcx + 0x10], rdx
	cmp	rdx, qword ptr [rcx]
	jne	.label_75
	mov	rcx, qword ptr [rcx + 0x518]
	mov	qword ptr [rax + 0x38], rcx
	test	rcx, rcx
	je	.label_77
	cmp	qword ptr [rcx], 0
	jne	.label_75
.label_77:
	mov	qword ptr [rip + remove_line.prev_buf],  rax
	mov	rax, qword ptr [rax + 0x40]
	mov	qword ptr [rip + head],  rax
.label_75:
	mov	rax, rbx
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	.section	.text
	.align	16
	#Procedure 0x4029f0

	.globl search_cur_bkref_entry
	.type search_cur_bkref_entry, @function
search_cur_bkref_entry:
	mov	r8, qword ptr [rdi + 0xc8]
	xor	eax, eax
	test	r8, r8
	jle	.label_78
	mov	r9, qword ptr [rdi + 0xd8]
	xor	eax, eax
	mov	r11, r8
	nop	word ptr [rax + rax]
.label_79:
	lea	r10, [rax + r11]
	mov	rdx, r10
	shr	rdx, 0x3f
	add	rdx, r10
	sar	rdx, 1
	lea	rcx, [rdx + rdx*4]
	cmp	qword ptr [r9 + rcx*8 + 8], rsi
	cmovge	r11, rdx
	lea	rcx, [rdx + 1]
	cmovl	rax, rcx
	cmp	rax, r11
	jl	.label_79
.label_78:
	cmp	rax, r8
	jge	.label_81
	mov	rcx, qword ptr [rdi + 0xd8]
	lea	rdx, [rax + rax*4]
	cmp	qword ptr [rcx + rdx*8 + 8], rsi
	je	.label_80
.label_81:
	mov	rax, -1
.label_80:
	ret	
	.section	.text
	.align	16
	#Procedure 0x402a5a
	.globl sub_402a5a
	.type sub_402a5a, @function
sub_402a5a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402a60

	.globl link_nfa_nodes
	.type link_nfa_nodes, @function
link_nfa_nodes:
	push	r15
	push	r14
	push	r12
	push	rbx
	push	rax
	mov	rcx, qword ptr [rsi + 0x38]
	mov	edx, dword ptr [rsi + 0x30]
	mov	eax, edx
	add	al, 0xfe
	movzx	ebx, al
	cmp	bl, 0xe
	ja	.label_90
	xor	eax, eax
	jmp	qword ptr [(rbx * 8) + label_96]
.label_2691:
	mov	r14, qword ptr [rdi + 0x28]
	lea	rbx, [rcx + rcx*2]
	mov	rax, qword ptr [rsi + 0x20]
	mov	r15, qword ptr [rax + 0x38]
	movaps	xmm0, xmmword ptr [rip + label_51]
	movups	xmmword ptr [r14 + rbx*8], xmm0
	mov	edi, 8
	call	malloc
	mov	qword ptr [r14 + rbx*8 + 0x10], rax
	test	rax, rax
	je	.label_92
	mov	qword ptr [rax], r15
	jmp	.label_84
.label_2692:
	or	byte ptr [rdi + 0xb0], 1
	mov	rax, qword ptr [rsi + 8]
	mov	rdx, qword ptr [rsi + 0x10]
	add	rsi, 0x20
	test	rax, rax
	lea	rax, [rax + 0x18]
	cmove	rax, rsi
	mov	rax, qword ptr [rax]
	mov	r14, qword ptr [rax + 0x38]
	test	rdx, rdx
	lea	rax, [rdx + 0x18]
	cmove	rax, rsi
	test	r14, r14
	js	.label_82
	mov	rax, qword ptr [rax]
	mov	r15, qword ptr [rax + 0x38]
	test	r15, r15
	js	.label_93
	mov	r12, qword ptr [rdi + 0x28]
	lea	rbx, [rcx + rcx*2]
	mov	qword ptr [r12 + rbx*8], 2
	mov	edi, 0x10
	call	malloc
	mov	rcx, rax
	mov	qword ptr [r12 + rbx*8 + 0x10], rcx
	mov	eax, 0xc
	test	rcx, rcx
	je	.label_85
	lea	rax, [r12 + rbx*8 + 8]
	cmp	r14, r15
	jne	.label_95
	mov	qword ptr [rax], 1
	mov	qword ptr [rcx], r14
	jmp	.label_84
.label_2689:
	cmp	qword ptr [rsi + 0x20], 0
	mov	eax, 0
	je	.label_85
	mov	edi, OFFSET FLAT:label_2018
	mov	esi, OFFSET FLAT:label_87
	mov	edx, 0x59f
	mov	ecx, OFFSET FLAT:label_88
	call	__assert_fail
.label_2690:
	mov	rax, qword ptr [rsi + 0x20]
	mov	rbx, qword ptr [rax + 0x38]
	mov	rax, qword ptr [rdi + 0x18]
	mov	qword ptr [rax + rcx*8], rbx
	cmp	byte ptr [rsi + 0x30], 4
	jne	.label_84
	mov	r14, qword ptr [rdi + 0x28]
	lea	r15, [rcx + rcx*2]
	movaps	xmm0, xmmword ptr [rip + label_51]
	movups	xmmword ptr [r14 + r15*8], xmm0
	mov	edi, 8
	call	malloc
	mov	qword ptr [r14 + r15*8 + 0x10], rax
	test	rax, rax
	je	.label_2013
	mov	qword ptr [rax], rbx
	jmp	.label_84
.label_90:
	test	dl, 8
	jne	.label_83
	mov	rax, qword ptr [rsi + 0x20]
	mov	rax, qword ptr [rax + 0x38]
	mov	rdx, qword ptr [rdi + 0x18]
	mov	qword ptr [rdx + rcx*8], rax
	jmp	.label_84
.label_95:
	mov	qword ptr [rax], 2
	jge	.label_91
	mov	qword ptr [rcx], r14
	mov	qword ptr [rcx + 8], r15
	jmp	.label_84
.label_91:
	mov	qword ptr [rcx], r15
	mov	qword ptr [rcx + 8], r14
.label_84:
	xor	eax, eax
.label_85:
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
.label_92:
	lea	rax, [r14 + rbx*8]
.label_2016:
	xorps	xmm0, xmm0
	movups	xmmword ptr [rax], xmm0
	mov	eax, 0xc
	jmp	.label_85
.label_2013:
	lea	rax, [r14 + r15*8]
	jmp	.label_2016
.label_82:
	mov	edi, OFFSET FLAT:label_89
	mov	esi, OFFSET FLAT:label_87
	mov	edx, 0x5af
	mov	ecx, OFFSET FLAT:label_88
	call	__assert_fail
.label_93:
	mov	edi, OFFSET FLAT:label_94
	mov	esi, OFFSET FLAT:label_87
	mov	edx, 0x5b0
	mov	ecx, OFFSET FLAT:label_88
	call	__assert_fail
.label_83:
	mov	edi, OFFSET FLAT:label_86
	mov	esi, OFFSET FLAT:label_87
	mov	edx, 0x5c2
	mov	ecx, OFFSET FLAT:label_88
	call	__assert_fail
	.section	.text
	.align	16
	#Procedure 0x402c6a
	.globl sub_402c6a
	.type sub_402c6a, @function
sub_402c6a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402c70
	.globl rpl_re_compile_fastmap
	.type rpl_re_compile_fastmap, @function
rpl_re_compile_fastmap:

	push	r15
	push	r14
	push	rbx
	mov	r14, rdi
	mov	r15, qword ptr [r14]
	mov	rbx, qword ptr [r14 + 0x20]
	xorps	xmm0, xmm0
	movups	xmmword ptr [rbx + 0xf0], xmm0
	movups	xmmword ptr [rbx + 0xe0], xmm0
	movups	xmmword ptr [rbx + 0xd0], xmm0
	movups	xmmword ptr [rbx + 0xc0], xmm0
	movups	xmmword ptr [rbx + 0xb0], xmm0
	movups	xmmword ptr [rbx + 0xa0], xmm0
	movups	xmmword ptr [rbx + 0x90], xmm0
	movups	xmmword ptr [rbx + 0x80], xmm0
	movups	xmmword ptr [rbx + 0x70], xmm0
	movups	xmmword ptr [rbx + 0x60], xmm0
	movups	xmmword ptr [rbx + 0x50], xmm0
	movups	xmmword ptr [rbx + 0x40], xmm0
	movups	xmmword ptr [rbx + 0x30], xmm0
	movups	xmmword ptr [rbx + 0x20], xmm0
	movups	xmmword ptr [rbx + 0x10], xmm0
	movups	xmmword ptr [rbx], xmm0
	mov	rsi, qword ptr [r15 + 0x48]
	mov	rdx, rbx
	call	re_compile_fastmap_iter
	mov	rax, qword ptr [r15 + 0x48]
	mov	rsi, qword ptr [r15 + 0x50]
	cmp	rax, rsi
	je	.label_98
	mov	rdi, r14
	mov	rdx, rbx
	call	re_compile_fastmap_iter
	mov	rax, qword ptr [r15 + 0x48]
.label_98:
	mov	rsi, qword ptr [r15 + 0x58]
	cmp	rax, rsi
	je	.label_97
	mov	rdi, r14
	mov	rdx, rbx
	call	re_compile_fastmap_iter
	mov	rax, qword ptr [r15 + 0x48]
.label_97:
	mov	rsi, qword ptr [r15 + 0x60]
	cmp	rax, rsi
	je	.label_99
	mov	rdi, r14
	mov	rdx, rbx
	call	re_compile_fastmap_iter
.label_99:
	or	byte ptr [r14 + 0x38], 8
	xor	eax, eax
	pop	rbx
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	16
	#Procedure 0x402d3a
	.globl sub_402d3a
	.type sub_402d3a, @function
sub_402d3a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402d40

	.globl parse_reg_exp
	.type parse_reg_exp, @function
parse_reg_exp:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x38
	mov	r12, rdx
	mov	r15, qword ptr [rsi]
	mov	rax, qword ptr [r15 + 0xa8]
	mov	qword ptr [rsp + 0x20], rax
	mov	qword ptr [rsp], rdi
	mov	qword ptr [rsp + 0x28], rsi
	mov	qword ptr [rsp + 8], rcx
	mov	qword ptr [rsp + 0x18], r8
	mov	qword ptr [rsp + 0x10], r9
	call	parse_branch
	mov	rbx, rax
	xor	r13d, r13d
	test	rbx, rbx
	jne	.label_123
	mov	rax, qword ptr [rsp + 0x10]
	mov	eax, dword ptr [rax]
	test	eax, eax
	jne	.label_101
.label_123:
	cmp	byte ptr [r12 + 8], 0xa
	jne	.label_104
	mov	rax, qword ptr [rsp + 8]
	or	rax, 0x800000
	mov	qword ptr [rsp + 0x30], rax
	cmp	qword ptr [rsp + 0x18], 0
	jne	.label_107
	jmp	.label_108
.label_104:
	mov	r13, rbx
	jmp	.label_101
.label_102:
	mov	edi, 0x3c8
	call	malloc
	test	rax, rax
	je	.label_115
	mov	rcx, qword ptr [r15 + 0x70]
	mov	qword ptr [rax], rcx
	mov	qword ptr [r15 + 0x70], rax
	mov	dword ptr [r15 + 0x80], 0
	xor	ecx, ecx
	jmp	.label_119
	.section	.text
	.align	16
	#Procedure 0x402df4
	.globl sub_402df4
	.type sub_402df4, @function
sub_402df4:

	nop	word ptr cs:[rax + rax]
.label_107:
	mov	rdi, r12
	mov	rbp, qword ptr [rsp]
	mov	rsi, rbp
	mov	rdx, qword ptr [rsp + 0x30]
	call	peek_token
	cdqe	
	add	qword ptr [rbp + 0x48], rax
	movzx	eax, byte ptr [r12 + 8]
	mov	ecx, eax
	or	cl, 8
	cmp	cl, 0xa
	mov	r14d, 0
	mov	r13, qword ptr [rsp + 0x10]
	je	.label_103
	cmp	eax, 9
	mov	r14d, 0
	je	.label_103
	mov	rbp, qword ptr [r15 + 0xa8]
	mov	rax, qword ptr [rsp + 0x20]
	mov	qword ptr [r15 + 0xa8], rax
	mov	rdi, qword ptr [rsp]
	mov	rsi, qword ptr [rsp + 0x28]
	mov	rdx, r12
	mov	rcx, qword ptr [rsp + 8]
	mov	r8, qword ptr [rsp + 0x18]
	mov	r9, r13
	call	parse_branch
	mov	r14, rax
	test	r14, r14
	jne	.label_122
	mov	eax, dword ptr [r13]
	test	eax, eax
	jne	.label_110
.label_122:
	or	qword ptr [r15 + 0xa8], rbp
	nop	dword ptr [rax]
.label_103:
	mov	ecx, dword ptr [r15 + 0x80]
	cmp	ecx, 0xf
	je	.label_102
	mov	rax, qword ptr [r15 + 0x70]
.label_119:
	lea	edx, [rcx + 1]
	mov	dword ptr [r15 + 0x80], edx
	movsxd	rcx, ecx
	shl	rcx, 6
	lea	r13, [rax + rcx + 8]
	mov	qword ptr [rax + rcx + 8], 0
	mov	qword ptr [rax + rcx + 0x10], rbx
	mov	qword ptr [rax + rcx + 0x18], r14
	mov	dword ptr [rax + rcx + 0x38], 0xa
	xorps	xmm0, xmm0
	movups	xmmword ptr [rax + rcx + 0x20], xmm0
	mov	qword ptr [rax + rcx + 0x40], -1
	test	rbx, rbx
	je	.label_109
	mov	qword ptr [rbx], r13
.label_109:
	test	r14, r14
	je	.label_121
	mov	qword ptr [r14], r13
.label_121:
	cmp	byte ptr [r12 + 8], 0xa
	mov	rbx, r13
	je	.label_107
	jmp	.label_101
.label_112:
	mov	edi, 0x3c8
	call	malloc
	test	rax, rax
	je	.label_115
	mov	rcx, qword ptr [r15 + 0x70]
	mov	qword ptr [rax], rcx
	mov	qword ptr [r15 + 0x70], rax
	mov	dword ptr [r15 + 0x80], 0
	xor	ecx, ecx
	jmp	.label_106
	.section	.text
	.align	16
	#Procedure 0x402f3a
	.globl sub_402f3a
	.type sub_402f3a, @function
sub_402f3a:

	nop	word ptr [rax + rax]
.label_108:
	mov	rdi, r12
	mov	rbp, qword ptr [rsp]
	mov	rsi, rbp
	mov	rdx, qword ptr [rsp + 0x30]
	call	peek_token
	cdqe	
	add	qword ptr [rbp + 0x48], rax
	movzx	eax, byte ptr [r12 + 8]
	or	al, 8
	cmp	al, 0xa
	mov	ebp, 0
	mov	r13, qword ptr [rsp + 0x10]
	je	.label_117
	mov	r14, qword ptr [r15 + 0xa8]
	mov	rax, qword ptr [rsp + 0x20]
	mov	qword ptr [r15 + 0xa8], rax
	xor	r8d, r8d
	mov	rdi, qword ptr [rsp]
	mov	rsi, qword ptr [rsp + 0x28]
	mov	rdx, r12
	mov	rcx, qword ptr [rsp + 8]
	mov	r9, r13
	call	parse_branch
	mov	rbp, rax
	test	rbp, rbp
	jne	.label_113
	mov	eax, dword ptr [r13]
	test	eax, eax
	jne	.label_110
.label_113:
	or	qword ptr [r15 + 0xa8], r14
.label_117:
	mov	ecx, dword ptr [r15 + 0x80]
	cmp	ecx, 0xf
	je	.label_112
	mov	rax, qword ptr [r15 + 0x70]
.label_106:
	lea	edx, [rcx + 1]
	mov	dword ptr [r15 + 0x80], edx
	movsxd	rcx, ecx
	shl	rcx, 6
	lea	r13, [rax + rcx + 8]
	mov	qword ptr [rax + rcx + 8], 0
	mov	qword ptr [rax + rcx + 0x10], rbx
	mov	qword ptr [rax + rcx + 0x18], rbp
	mov	dword ptr [rax + rcx + 0x38], 0xa
	xorps	xmm0, xmm0
	movups	xmmword ptr [rax + rcx + 0x20], xmm0
	mov	qword ptr [rax + rcx + 0x40], -1
	test	rbx, rbx
	je	.label_118
	mov	qword ptr [rbx], r13
.label_118:
	test	rbp, rbp
	je	.label_105
	mov	qword ptr [rbp], r13
.label_105:
	cmp	byte ptr [r12 + 8], 0xa
	mov	rbx, r13
	je	.label_108
.label_101:
	mov	rax, r13
	add	rsp, 0x38
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_110:
	xor	r13d, r13d
	test	rbx, rbx
	je	.label_101
	mov	r14d, 0x400ff
	xor	r13d, r13d
.label_116:
	mov	rbp, rbx
	mov	rbx, qword ptr [rbp + 8]
	test	rbx, rbx
	jne	.label_116
	mov	rbx, qword ptr [rbp + 0x10]
	test	rbx, rbx
	jne	.label_116
.label_114:
	mov	eax, dword ptr [rbp + 0x30]
	and	eax, r14d
	cmp	eax, 3
	je	.label_120
	cmp	eax, 6
	jne	.label_100
	mov	rbx, qword ptr [rbp + 0x28]
	mov	rdi, qword ptr [rbx]
	call	free
	mov	rdi, qword ptr [rbx + 8]
	call	free
	mov	rdi, qword ptr [rbx + 0x10]
	call	free
	mov	rdi, qword ptr [rbx + 0x18]
	call	free
	mov	rdi, rbx
	jmp	.label_111
.label_120:
	mov	rdi, qword ptr [rbp + 0x28]
.label_111:
	call	free
.label_100:
	mov	rax, qword ptr [rbp]
	test	rax, rax
	je	.label_101
	mov	rbx, qword ptr [rax + 0x10]
	cmp	rbx, rbp
	mov	rbp, rax
	je	.label_114
	test	rbx, rbx
	mov	rbp, rax
	je	.label_114
	jmp	.label_116
.label_115:
	mov	dword ptr [r13], 0xc
	xor	r13d, r13d
	jmp	.label_101
.label_124:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x4030e5
	.globl sub_4030e5
	.type sub_4030e5, @function
sub_4030e5:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4030eb
	.globl xcharalloc
	.type xcharalloc, @function
xcharalloc:

	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	je	.label_125
	test	rax, rax
	je	.label_124
.label_125:
	pop	rbx
	ret	
	.section	.text
	.align	16
	#Procedure 0x403100

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
	je	.label_126
	cmp	r15, -2
	jb	.label_126
	xor	edi, edi
	call	hard_locale
	test	al, al
	jne	.label_126
	movzx	eax, byte ptr [r14]
	mov	dword ptr [rbx], eax
	mov	r15d, 1
.label_126:
	mov	rax, r15
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	16
	#Procedure 0x403156
	.globl sub_403156
	.type sub_403156, @function
sub_403156:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403160
	.globl rpl_regcomp
	.type rpl_regcomp, @function
rpl_regcomp:

	push	rbp
	push	r15
	push	r14
	push	r12
	push	rbx
	mov	ebp, edx
	mov	r14, rsi
	mov	r15, rdi
	xorps	xmm0, xmm0
	movups	xmmword ptr [r15], xmm0
	mov	qword ptr [r15 + 0x10], 0
	mov	edi, 0x100
	call	malloc
	mov	qword ptr [r15 + 0x20], rax
	mov	ebx, 0xc
	test	rax, rax
	je	.label_128
	test	bpl, 1
	mov	eax, 0x3b2fc
	mov	ecx, 0x10102c6
	cmovne	rcx, rax
	mov	ebx, ebp
	and	ebx, 2
	shl	rbx, 0x15
	or	rbx, rcx
	test	bpl, 4
	jne	.label_132
	lea	r12, [r15 + 0x38]
	mov	al, byte ptr [r15 + 0x38]
	and	al, 0x7f
	jmp	.label_133
.label_132:
	and	ebx, 0x143b2be
	or	rbx, 0x100
	lea	r12, [r15 + 0x38]
	mov	al, byte ptr [r15 + 0x38]
	or	al, 0x80
.label_133:
	mov	byte ptr [r15 + 0x38], al
	add	bpl, bpl
	and	bpl, 0x10
	and	al, 0xef
	or	al, bpl
	mov	byte ptr [r15 + 0x38], al
	mov	qword ptr [r15 + 0x28], 0
	mov	rdi, r14
	call	strlen
	mov	rdi, r15
	mov	rsi, r14
	mov	rdx, rax
	mov	rcx, rbx
	call	re_compile_internal
	cmp	eax, 0x10
	mov	ebx, 8
	cmovne	ebx, eax
	test	ebx, ebx
	jne	.label_131
	mov	rbx, qword ptr [r15]
	mov	rbp, qword ptr [r15 + 0x20]
	xorps	xmm0, xmm0
	movups	xmmword ptr [rbp + 0xf0], xmm0
	movups	xmmword ptr [rbp + 0xe0], xmm0
	movups	xmmword ptr [rbp + 0xd0], xmm0
	movups	xmmword ptr [rbp + 0xc0], xmm0
	movups	xmmword ptr [rbp + 0xb0], xmm0
	movups	xmmword ptr [rbp + 0xa0], xmm0
	movups	xmmword ptr [rbp + 0x90], xmm0
	movups	xmmword ptr [rbp + 0x80], xmm0
	movups	xmmword ptr [rbp + 0x70], xmm0
	movups	xmmword ptr [rbp + 0x60], xmm0
	movups	xmmword ptr [rbp + 0x50], xmm0
	movups	xmmword ptr [rbp + 0x40], xmm0
	movups	xmmword ptr [rbp + 0x30], xmm0
	movups	xmmword ptr [rbp + 0x20], xmm0
	movups	xmmword ptr [rbp + 0x10], xmm0
	movups	xmmword ptr [rbp], xmm0
	mov	rsi, qword ptr [rbx + 0x48]
	mov	rdi, r15
	mov	rdx, rbp
	call	re_compile_fastmap_iter
	mov	rax, qword ptr [rbx + 0x48]
	mov	rsi, qword ptr [rbx + 0x50]
	cmp	rax, rsi
	je	.label_127
	mov	rdi, r15
	mov	rdx, rbp
	call	re_compile_fastmap_iter
	mov	rax, qword ptr [rbx + 0x48]
.label_127:
	mov	rsi, qword ptr [rbx + 0x58]
	cmp	rax, rsi
	je	.label_129
	mov	rdi, r15
	mov	rdx, rbp
	call	re_compile_fastmap_iter
	mov	rax, qword ptr [rbx + 0x48]
.label_129:
	mov	rsi, qword ptr [rbx + 0x60]
	cmp	rax, rsi
	je	.label_130
	mov	rdi, r15
	mov	rdx, rbp
	call	re_compile_fastmap_iter
.label_130:
	or	byte ptr [r12], 8
	xor	ebx, ebx
.label_128:
	mov	eax, ebx
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_131:
	mov	rdi, qword ptr [r15 + 0x20]
	call	free
	mov	qword ptr [r15 + 0x20], 0
	jmp	.label_128
	.section	.text
	.align	16
	#Procedure 0x403308
	.globl sub_403308
	.type sub_403308, @function
sub_403308:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403310

	.globl build_charclass_op
	.type build_charclass_op, @function
build_charclass_op:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x18
	mov	r15, r9
	mov	dword ptr [rsp + 4], r8d
	mov	rbp, rcx
	mov	r14, rdx
	mov	r13, rsi
	mov	r12, rdi
	mov	qword ptr [rsp + 0x10], 0
	mov	edi, 0x20
	mov	esi, 1
	call	rpl_calloc
	mov	rbx, rax
	test	rbx, rbx
	je	.label_146
	mov	qword ptr [rsp + 8], r15
	mov	edi, 0x50
	mov	esi, 1
	call	rpl_calloc
	mov	r15, rax
	test	r15, r15
	je	.label_149
	mov	al, byte ptr [r15 + 0x20]
	and	al, 0xfe
	mov	ecx, dword ptr [rsp + 4]
	or	al, cl
	mov	byte ptr [r15 + 0x20], al
	lea	rcx, [rsp + 0x10]
	xor	r9d, r9d
	mov	rdi, r13
	mov	rsi, rbx
	mov	rdx, r15
	mov	r8, r14
	call	build_charclass
	mov	r14d, eax
	test	r14d, r14d
	jne	.label_141
	mov	al, byte ptr [rbp]
	test	al, al
	je	.label_138
	inc	rbp
	nop	word ptr cs:[rax + rax]
.label_143:
	movsx	rcx, al
	mov	eax, 1
	shl	rax, cl
	mov	rdx, rcx
	sar	rdx, 0x3f
	shr	rdx, 0x3a
	add	rdx, rcx
	sar	rdx, 6
	or	qword ptr [rbx + rdx*8], rax
	movzx	eax, byte ptr [rbp]
	inc	rbp
	test	al, al
	jne	.label_143
.label_138:
	mov	eax, dword ptr [rsp + 4]
	test	al, al
	je	.label_151
	movdqu	xmm0, xmmword ptr [rbx]
	pcmpeqd	xmm1, xmm1
	pxor	xmm0, xmm1
	movdqu	xmmword ptr [rbx], xmm0
	movdqu	xmm0, xmmword ptr [rbx + 0x10]
	pxor	xmm0, xmm1
	movdqu	xmmword ptr [rbx + 0x10], xmm0
.label_151:
	cmp	dword ptr [r12 + 0xb4], 2
	jl	.label_135
	mov	rax, qword ptr [r12 + 0x78]
	mov	rcx, qword ptr [rax]
	and	qword ptr [rbx], rcx
	mov	rcx, qword ptr [rax + 8]
	and	qword ptr [rbx + 8], rcx
	mov	rcx, qword ptr [rax + 0x10]
	and	qword ptr [rbx + 0x10], rcx
	mov	rax, qword ptr [rax + 0x18]
	and	qword ptr [rbx + 0x18], rax
.label_135:
	mov	ecx, dword ptr [r12 + 0x80]
	cmp	ecx, 0xf
	je	.label_144
	mov	rax, qword ptr [r12 + 0x70]
.label_136:
	lea	edx, [rcx + 1]
	mov	dword ptr [r12 + 0x80], edx
	movsxd	rcx, ecx
	shl	rcx, 6
	lea	r14, [rax + rcx + 8]
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [rax + rcx + 8], xmm0
	mov	qword ptr [rax + rcx + 0x18], 0
	mov	qword ptr [rax + rcx + 0x30], rbx
	mov	dword ptr [rax + rcx + 0x38], 3
	movdqu	xmmword ptr [rax + rcx + 0x20], xmm0
	mov	qword ptr [rax + rcx + 0x40], -1
	cmp	dword ptr [r12 + 0xb4], 2
	jl	.label_148
	or	byte ptr [r12 + 0xb0], 2
	mov	eax, dword ptr [r12 + 0x80]
	cmp	eax, 0xf
	je	.label_139
	mov	rbp, qword ptr [r12 + 0x70]
.label_150:
	lea	ecx, [rax + 1]
	mov	dword ptr [r12 + 0x80], ecx
	movsxd	rbx, eax
	shl	rbx, 6
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [rbp + rbx + 8], xmm0
	mov	qword ptr [rbp + rbx + 0x18], 0
	mov	qword ptr [rbp + rbx + 0x30], r15
	mov	dword ptr [rbp + rbx + 0x38], 6
	movdqu	xmmword ptr [rbp + rbx + 0x20], xmm0
	mov	qword ptr [rbp + rbx + 0x40], -1
	mov	eax, dword ptr [r12 + 0x80]
	cmp	eax, 0xf
	je	.label_147
	mov	rcx, qword ptr [r12 + 0x70]
.label_145:
	lea	rdx, [rbp + rbx + 8]
	lea	esi, [rax + 1]
	mov	dword ptr [r12 + 0x80], esi
	movsxd	rsi, eax
	shl	rsi, 6
	lea	rax, [rcx + rsi + 8]
	mov	qword ptr [rcx + rsi + 8], 0
	mov	qword ptr [rcx + rsi + 0x10], r14
	mov	qword ptr [rcx + rsi + 0x18], rdx
	mov	dword ptr [rcx + rsi + 0x38], 0xa
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [rcx + rsi + 0x20], xmm0
	mov	qword ptr [rcx + rsi + 0x40], -1
	mov	qword ptr [r14], rax
	mov	qword ptr [rdx], rax
	jmp	.label_137
.label_148:
	mov	rdi, qword ptr [r15]
	call	free
	mov	rdi, qword ptr [r15 + 8]
	call	free
	mov	rdi, qword ptr [r15 + 0x10]
	call	free
	mov	rdi, qword ptr [r15 + 0x18]
	call	free
	mov	rdi, r15
	call	free
	mov	rax, r14
.label_137:
	add	rsp, 0x18
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_146:
	mov	dword ptr [r15], 0xc
	jmp	.label_140
.label_149:
	mov	rdi, rbx
	jmp	.label_142
.label_141:
	mov	rdi, rbx
	call	free
	mov	rdi, qword ptr [r15]
	call	free
	mov	rdi, qword ptr [r15 + 8]
	call	free
	mov	rdi, qword ptr [r15 + 0x10]
	call	free
	mov	rdi, qword ptr [r15 + 0x18]
	call	free
	mov	rdi, r15
	call	free
	mov	rax, qword ptr [rsp + 8]
	mov	dword ptr [rax], r14d
	jmp	.label_140
.label_144:
	mov	edi, 0x3c8
	call	malloc
	test	rax, rax
	je	.label_134
	mov	rcx, qword ptr [r12 + 0x70]
	mov	qword ptr [rax], rcx
	mov	qword ptr [r12 + 0x70], rax
	mov	dword ptr [r12 + 0x80], 0
	xor	ecx, ecx
	jmp	.label_136
.label_139:
	mov	edi, 0x3c8
	call	malloc
	mov	rbp, rax
	test	rbp, rbp
	je	.label_134
	mov	rax, qword ptr [r12 + 0x70]
	mov	qword ptr [rbp], rax
	mov	qword ptr [r12 + 0x70], rbp
	mov	dword ptr [r12 + 0x80], 0
	xor	eax, eax
	jmp	.label_150
.label_134:
	mov	rdi, rbx
	call	free
	mov	rdi, qword ptr [r15]
	call	free
	mov	rdi, qword ptr [r15 + 8]
	call	free
	mov	rdi, qword ptr [r15 + 0x10]
	call	free
	mov	rdi, qword ptr [r15 + 0x18]
	call	free
	mov	rdi, r15
.label_142:
	call	free
	mov	rax, qword ptr [rsp + 8]
	mov	dword ptr [rax], 0xc
.label_140:
	xor	eax, eax
	jmp	.label_137
.label_147:
	mov	edi, 0x3c8
	call	malloc
	mov	rcx, rax
	xor	eax, eax
	test	rcx, rcx
	je	.label_137
	mov	rdx, qword ptr [r12 + 0x70]
	mov	qword ptr [rcx], rdx
	mov	qword ptr [r12 + 0x70], rcx
	mov	dword ptr [r12 + 0x80], 0
	jmp	.label_145
	.section	.text
	.align	16
	#Procedure 0x4036e2
	.globl sub_4036e2
	.type sub_4036e2, @function
sub_4036e2:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4036f0

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
	#Procedure 0x403709
	.globl sub_403709
	.type sub_403709, @function
sub_403709:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x403710

	.globl sift_states_backward
	.type sift_states_backward, @function
sift_states_backward:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x58
	mov	r14, rsi
	mov	r13, rdi
	mov	r15, qword ptr [r14 + 0x18]
	mov	rbx, qword ptr [r14 + 0x10]
	movaps	xmm0, xmmword ptr [rip + label_51]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	mov	edi, 8
	call	malloc
	mov	qword ptr [rsp + 0x30], rax
	test	rax, rax
	je	.label_162
	mov	qword ptr [rax], rbx
	lea	rcx, [rsp + 0x20]
	mov	rdi, r13
	mov	rsi, r14
	mov	rdx, r15
	call	update_cur_sifted_state
	mov	ebp, eax
	test	ebp, ebp
	jne	.label_159
	lea	rax, [r14 + 0x20]
	mov	qword ptr [rsp + 0x38], rax
	mov	dword ptr [rsp + 0x14], 0
	nop	word ptr cs:[rax + rax]
.label_158:
	mov	rdx, r15
	test	rdx, rdx
	jle	.label_165
	mov	rdi, qword ptr [r14]
	mov	ecx, dword ptr [rsp + 0x14]
	inc	ecx
	cmp	qword ptr [rdi + rdx*8], 0
	mov	eax, 0
	cmovne	ecx, eax
	cmp	ecx, dword ptr [r13 + 0xe0]
	jg	.label_155
	mov	dword ptr [rsp + 0x14], ecx
	mov	qword ptr [rsp + 0x28], 0
	lea	r15, [rdx - 1]
	mov	rax, qword ptr [r13 + 0xb8]
	mov	qword ptr [rsp + 0x40], rdx
	mov	rax, qword ptr [rax + rdx*8 - 8]
	test	rax, rax
	je	.label_168
	cmp	qword ptr [rax + 0x28], 0
	jle	.label_168
	mov	rcx, qword ptr [r13 + 0x98]
	mov	qword ptr [rsp + 0x18], rcx
	xor	ebx, ebx
	mov	qword ptr [rsp + 0x50], rax
	nop	dword ptr [rax + rax]
.label_170:
	mov	rax, qword ptr [rax + 0x30]
	mov	r12, qword ptr [rax + rbx*8]
	mov	rax, qword ptr [rsp + 0x18]
	mov	rax, qword ptr [rax]
	mov	rcx, r12
	mov	qword ptr [rsp + 8], rcx
	shl	r12, 4
	test	byte ptr [rax + r12 + 0xa], 0x10
	je	.label_154
	mov	rax, r14
	mov	r14, r15
	mov	r15, rax
	mov	rdx, r13
	mov	rax, qword ptr [rax + 0x18]
	mov	qword ptr [rsp + 0x48], rax
	mov	rbp, qword ptr [rdx + 0x98]
	mov	rdi, rbp
	mov	rsi, qword ptr [rsp + 8]
	mov	rcx, r14
	call	check_node_accept_bytes
	test	eax, eax
	jle	.label_166
	movsxd	rcx, eax
	mov	rsi, r14
	add	rcx, r14
	cmp	rcx, qword ptr [rsp + 0x48]
	jle	.label_167
	mov	r14, r15
	mov	r15, rsi
	jmp	.label_152
.label_166:
	mov	rcx, r15
	mov	r15, r14
	mov	r14, rcx
	jne	.label_152
	jmp	.label_154
.label_167:
	mov	r14, r15
	mov	rdx, qword ptr [r14]
	mov	rdx, qword ptr [rdx + rcx*8]
	test	rdx, rdx
	mov	r15, rsi
	je	.label_154
	mov	rsi, qword ptr [rdx + 0x10]
	test	rsi, rsi
	jle	.label_154
	mov	rcx, qword ptr [rbp + 0x18]
	mov	rdi, qword ptr [rsp + 8]
	mov	r8, qword ptr [rcx + rdi*8]
	dec	rsi
	mov	rdx, qword ptr [rdx + 0x18]
	mov	edi, 0
	je	.label_160
	xor	edi, edi
	nop	dword ptr [rax]
.label_169:
	lea	rbp, [rdi + rsi]
	shr	rbp, 1
	cmp	qword ptr [rdx + rbp*8], r8
	lea	rcx, [rbp + 1]
	cmovl	rdi, rcx
	cmovge	rsi, rbp
	cmp	rdi, rsi
	jb	.label_169
.label_160:
	test	eax, eax
	je	.label_154
	cmp	rdi, -1
	je	.label_154
	cmp	qword ptr [rdx + rdi*8], r8
	je	.label_152
.label_154:
	mov	rax, qword ptr [rsp + 0x18]
	add	r12, qword ptr [rax]
	mov	rdi, r13
	mov	rsi, r12
	mov	rdx, r15
	call	check_node_accept
	test	al, al
	je	.label_153
	mov	rax, qword ptr [r14]
	mov	rcx, qword ptr [rsp + 0x40]
	mov	rdx, qword ptr [rax + rcx*8]
	test	rdx, rdx
	je	.label_153
	mov	rax, qword ptr [rdx + 0x10]
	test	rax, rax
	jle	.label_153
	mov	rcx, qword ptr [rsp + 0x18]
	mov	rcx, qword ptr [rcx + 0x18]
	mov	rsi, qword ptr [rsp + 8]
	mov	rcx, qword ptr [rcx + rsi*8]
	dec	rax
	mov	rdx, qword ptr [rdx + 0x18]
	mov	esi, 0
	je	.label_161
	xor	esi, esi
	nop	word ptr cs:[rax + rax]
.label_157:
	lea	rdi, [rsi + rax]
	shr	rdi, 1
	cmp	qword ptr [rdx + rdi*8], rcx
	lea	rbp, [rdi + 1]
	cmovl	rsi, rbp
	cmovge	rax, rdi
	cmp	rsi, rax
	jb	.label_157
.label_161:
	cmp	rsi, -1
	je	.label_153
	mov	eax, 1
	cmp	qword ptr [rdx + rsi*8], rcx
	jne	.label_153
	nop	dword ptr [rax]
.label_152:
	cmp	qword ptr [r14 + 0x28], 0
	je	.label_156
	movsxd	rcx, eax
	add	rcx, r15
	mov	rax, qword ptr [rsp + 0x18]
	mov	rax, qword ptr [rax + 0x18]
	mov	r8, qword ptr [rsp + 8]
	mov	rdx, qword ptr [rax + r8*8]
	mov	rdi, r13
	mov	rsi, qword ptr [rsp + 0x38]
	mov	r9, r15
	call	check_dst_limits
	mov	ecx, 4
	test	al, al
	jne	.label_163
.label_156:
	lea	rdi, [rsp + 0x20]
	mov	rsi, qword ptr [rsp + 8]
	call	re_node_set_insert
	movzx	ecx, al
	xor	ecx, 1
.label_163:
	or	cl, 4
	mov	ebp, 0xc
	and	cl, 7
	cmp	cl, 4
	jne	.label_159
.label_153:
	inc	rbx
	mov	rax, qword ptr [rsp + 0x50]
	cmp	rbx, qword ptr [rax + 0x28]
	jl	.label_170
.label_168:
	mov	rdi, r13
	mov	rsi, r14
	mov	rdx, r15
	lea	rcx, [rsp + 0x20]
	call	update_cur_sifted_state
	mov	ebp, eax
	test	ebp, ebp
	je	.label_158
	jmp	.label_159
.label_165:
	xor	ebp, ebp
	jmp	.label_159
.label_155:
	shl	rdx, 3
	xor	ebp, ebp
	xor	esi, esi
	call	memset
.label_159:
	mov	rdi, qword ptr [rsp + 0x30]
	call	free
.label_164:
	mov	eax, ebp
	add	rsp, 0x58
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_162:
	xorps	xmm0, xmm0
	movaps	xmmword ptr [rsp + 0x20], xmm0
	mov	ebp, 0xc
	jmp	.label_164
	.section	.text
	.align	16
	#Procedure 0x403a69
	.globl sub_403a69
	.type sub_403a69, @function
sub_403a69:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x403a70

	.globl parse_bracket_element
	.type parse_bracket_element, @function
parse_bracket_element:
	push	r15
	push	r14
	push	rbx
	sub	rsp, 0x10
	mov	r15, rdx
	mov	r14, rdi
	mov	r11, qword ptr [rsi + 0x48]
	cmp	dword ptr [rsi + 0x90], 1
	je	.label_173
	lea	rax, [r11 + 1]
	mov	rbx, qword ptr [rsi + 0x30]
	cmp	rax, rbx
	jge	.label_173
	mov	r10, qword ptr [rsi + 0x10]
	lea	rax, [r10 + r11*4]
	mov	edi, 1
	nop	word ptr cs:[rax + rax]
.label_187:
	cmp	dword ptr [rax + rdi*4], -1
	jne	.label_189
	lea	rdx, [r11 + rdi + 1]
	inc	rdi
	cmp	rdx, rbx
	jl	.label_187
.label_189:
	cmp	edi, 2
	jl	.label_173
	mov	dword ptr [r14], 1
	mov	eax, dword ptr [r10 + r11*4]
	mov	dword ptr [r14 + 8], eax
	movsxd	rax, edi
	add	rax, r11
	mov	qword ptr [rsi + 0x48], rax
	jmp	.label_175
.label_173:
	movsxd	rax, ecx
	add	r11, rax
	mov	qword ptr [rsi + 0x48], r11
	movzx	edi, byte ptr [r15 + 8]
	mov	eax, edi
	add	al, 0xea
	movzx	eax, al
	cmp	al, 8
	ja	.label_182
	jmp	qword ptr [(rax * 8) + label_174]
.label_2680:
	mov	eax, 7
	cmp	qword ptr [rsi + 0x68], r11
	jle	.label_171
	mov	r11b, byte ptr [r15]
	xor	ecx, ecx
	jmp	.label_2007
	nop	word ptr cs:[rax + rax]
.label_177:
	inc	rcx
	movzx	edi, byte ptr [r15 + 8]
.label_2007:
	cmp	dil, 0x1e
	jne	.label_188
	cmp	byte ptr [rsi + 0x8b], 0
	jne	.label_191
	mov	rbx, qword ptr [rsi + 0x48]
	lea	rdi, [rbx + 1]
	mov	qword ptr [rsi + 0x48], rdi
	mov	rdx, qword ptr [rsi + 8]
	mov	bl, byte ptr [rdx + rbx]
	jmp	.label_179
	nop	dword ptr [rax]
.label_188:
	mov	rdx, qword ptr [rsi + 0x48]
	lea	rdi, [rdx + 1]
	mov	qword ptr [rsi + 0x48], rdi
	mov	rbx, qword ptr [rsi + 8]
.label_181:
	mov	bl, byte ptr [rbx + rdx]
.label_179:
	cmp	qword ptr [rsi + 0x68], rdi
	jle	.label_171
	cmp	bl, r11b
	jne	.label_190
	mov	rdx, qword ptr [rsi + 8]
	cmp	byte ptr [rdx + rdi], 0x5d
	je	.label_172
.label_190:
	mov	rdx, qword ptr [r14 + 8]
	mov	byte ptr [rdx + rcx], bl
	cmp	rcx, 0x1e
	jle	.label_177
	jmp	.label_171
.label_191:
	cmp	byte ptr [rsi + 0x8c], 0
	je	.label_180
	mov	r9, qword ptr [rsi + 0x30]
	mov	r8, qword ptr [rsi + 0x48]
	cmp	r8, r9
	je	.label_184
	mov	rdx, qword ptr [rsi + 0x10]
	cmp	dword ptr [rdx + r8*4], -1
	je	.label_178
.label_184:
	mov	rdx, qword ptr [rsi]
	mov	rdi, qword ptr [rsi + 0x18]
	mov	rbx, qword ptr [rsi + 0x28]
	add	rbx, qword ptr [rdi + r8*8]
	mov	bl, byte ptr [rdx + rbx]
	test	bl, bl
	js	.label_178
	mov	edi, 1
	cmp	dword ptr [rsi + 0x90], 1
	je	.label_176
	lea	rdx, [r8 + 1]
	cmp	rdx, r9
	jge	.label_176
	lea	r10, [r8*4]
	add	r10, qword ptr [rsi + 0x10]
	mov	edi, 1
.label_186:
	cmp	dword ptr [r10 + rdi*4], -1
	jne	.label_176
	lea	rdx, [r8 + rdi + 1]
	inc	rdi
	cmp	rdx, r9
	jl	.label_186
.label_176:
	movsxd	rdi, edi
	add	rdi, r8
	mov	qword ptr [rsi + 0x48], rdi
	jmp	.label_179
.label_180:
	mov	rdx, qword ptr [rsi + 0x48]
	lea	rdi, [rdx + 1]
	add	rdx, qword ptr [rsi + 0x28]
	mov	qword ptr [rsi + 0x48], rdi
	mov	rbx, qword ptr [rsi]
	jmp	.label_181
.label_178:
	lea	rdi, [r8 + 1]
	mov	qword ptr [rsi + 0x48], rdi
	mov	rdx, qword ptr [rsi + 8]
	mov	bl, byte ptr [rdx + r8]
	jmp	.label_179
.label_172:
	inc	rdi
	mov	qword ptr [rsi + 0x48], rdi
	movsxd	rax, ecx
	mov	rcx, qword ptr [r14 + 8]
	mov	byte ptr [rcx + rax], 0
	mov	cl, byte ptr [r15 + 8]
	xor	eax, eax
	cmp	cl, 0x1e
	je	.label_183
	cmp	cl, 0x1c
	je	.label_185
	cmp	cl, 0x1a
	jne	.label_171
	mov	dword ptr [r14], 3
	jmp	.label_171
.label_183:
	mov	dword ptr [r14], 4
	jmp	.label_171
.label_185:
	mov	dword ptr [r14], 2
	jmp	.label_171
.label_2679:
	test	r9b, r9b
	jne	.label_182
	lea	rdi, [rsp]
	mov	rdx, r8
	call	peek_token_bracket
	mov	eax, 0xb
	cmp	byte ptr [rsp + 8], 0x15
	jne	.label_171
.label_182:
	mov	dword ptr [r14], 0
	mov	al, byte ptr [r15]
	mov	byte ptr [r14 + 8], al
.label_175:
	xor	eax, eax
.label_171:
	add	rsp, 0x10
	pop	rbx
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	16
	#Procedure 0x403cca
	.globl sub_403cca
	.type sub_403cca, @function
sub_403cca:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403cd0
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
	#Procedure 0x403cdf
	.globl sub_403cdf
	.type sub_403cdf, @function
sub_403cdf:

	nop	
	.section	.text
	.align	16
	#Procedure 0x403ce0

	.globl update_cur_sifted_state
	.type update_cur_sifted_state, @function
update_cur_sifted_state:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0xb8
	mov	r11, rcx
	mov	r10, rdx
	mov	r14, rsi
	mov	rbx, rdi
	mov	r12, qword ptr [rbx + 0x98]
	mov	dword ptr [rsp + 4], 0
	mov	rax, qword ptr [rbx + 0xb8]
	mov	r13, qword ptr [rax + r10*8]
	lea	rax, [r13 + 8]
	test	r13, r13
	cmove	rax, r13
	mov	qword ptr [rsp + 0x30], rax
	cmp	qword ptr [r11 + 8], 0
	mov	qword ptr [rsp + 8], r10
	je	.label_208
	test	r13, r13
	je	.label_221
	mov	qword ptr [rsp + 0x28], r14
	mov	dword ptr [rsp + 0x50], 0
	lea	rdi, [rsp + 0x50]
	mov	qword ptr [rsp + 0x10], r12
	mov	rsi, r12
	mov	qword ptr [rsp + 0x20], r11
	mov	rdx, r11
	call	re_acquire_state
	mov	r14, rax
	mov	r12d, dword ptr [rsp + 0x50]
	test	r12d, r12d
	jne	.label_194
	mov	qword ptr [rsp + 0x18], rbx
	mov	r15, r14
	add	r15, 0x38
	cmp	qword ptr [r14 + 0x38], 0
	mov	rdx, qword ptr [rsp + 0x20]
	jne	.label_230
	mov	rdi, qword ptr [rdx + 8]
	mov	qword ptr [r14 + 0x38], rdi
	mov	qword ptr [r14 + 0x40], 0
	shl	rdi, 3
	call	malloc
	mov	qword ptr [r14 + 0x48], rax
	mov	r12d, 0xc
	test	rax, rax
	mov	ecx, 0xc
	je	.label_239
	xor	ecx, ecx
.label_239:
	test	rax, rax
	mov	dword ptr [rsp + 0x50], ecx
	je	.label_194
	mov	rdx, qword ptr [rsp + 0x20]
	cmp	qword ptr [rdx + 8], 0
	jle	.label_230
	xor	ebp, ebp
	nop	
.label_200:
	mov	rax, qword ptr [rsp + 0x10]
	mov	rax, qword ptr [rax + 0x38]
	mov	rcx, qword ptr [rdx + 0x10]
	mov	rcx, qword ptr [rcx + rbp*8]
	lea	rcx, [rcx + rcx*2]
	lea	rsi, [rax + rcx*8]
	mov	rdi, r15
	mov	rbx, rdx
	call	re_node_set_merge
	mov	dword ptr [rsp + 0x50], eax
	test	eax, eax
	jne	.label_194
	inc	rbp
	cmp	rbp, qword ptr [rbx + 8]
	mov	rdx, rbx
	jl	.label_200
.label_230:
	mov	rdi, rdx
	mov	rsi, qword ptr [rsp + 0x30]
	mov	rdx, r15
	call	re_node_set_add_intersect
	mov	r12d, eax
	mov	dword ptr [rsp + 4], r12d
	test	r12d, r12d
	mov	r9, qword ptr [rsp + 8]
	mov	r14, qword ptr [rsp + 0x28]
	mov	rbx, qword ptr [rsp + 0x18]
	jne	.label_197
	mov	rax, qword ptr [r14 + 0x28]
	test	rax, rax
	mov	r11, qword ptr [rsp + 0x20]
	mov	r12, qword ptr [rsp + 0x10]
	je	.label_221
	mov	qword ptr [rsp + 0x48], r13
	jle	.label_222
	mov	rax, qword ptr [rsp + 0x18]
	mov	rax, qword ptr [rax + 0xd8]
	mov	qword ptr [rsp + 0x38], rax
	xor	r13d, r13d
	mov	ebx, 0xfe
	nop	word ptr [rax + rax]
.label_192:
	mov	rax, qword ptr [r14 + 0x30]
	mov	rax, qword ptr [rax + r13*8]
	lea	rax, [rax + rax*4]
	mov	rcx, qword ptr [rsp + 0x38]
	cmp	qword ptr [rcx + rax*8 + 0x10], r9
	jge	.label_214
	mov	rcx, qword ptr [rsp + 0x38]
	cmp	qword ptr [rcx + rax*8 + 8], r9
	jl	.label_214
	mov	rsi, qword ptr [rsp + 0x38]
	mov	rdx, qword ptr [rsi + rax*8]
	mov	rcx, qword ptr [r12]
	shl	rdx, 4
	mov	r15, qword ptr [rcx + rdx]
	cmp	qword ptr [rsi + rax*8 + 0x18], r9
	mov	rax, qword ptr [r11 + 8]
	jne	.label_244
	test	rax, rax
	jle	.label_214
	mov	rdx, qword ptr [r11 + 0x10]
	mov	r14, -1
	mov	rsi, -1
	nop	dword ptr [rax + rax]
.label_212:
	mov	rbp, qword ptr [rdx]
	mov	rdi, rbp
	shl	rdi, 4
	movzx	ebx, byte ptr [rcx + rdi + 8]
	cmp	bl, 9
	je	.label_193
	cmp	bl, 8
	jne	.label_203
	cmp	r15, qword ptr [rcx + rdi]
	cmove	rsi, rbp
	jmp	.label_203
	.section	.text
	.align	16
	#Procedure 0x403f23
	.globl sub_403f23
	.type sub_403f23, @function
sub_403f23:

	nop	word ptr cs:[rax + rax]
.label_193:
	cmp	r15, qword ptr [rcx + rdi]
	cmove	r14, rbp
.label_203:
	add	rdx, 8
	dec	rax
	jne	.label_212
	test	rsi, rsi
	mov	ebx, 0xfe
	js	.label_218
	mov	rdi, qword ptr [rsp + 0x10]
	mov	rdx, r11
	mov	rcx, qword ptr [rsp + 0x30]
	call	sub_epsilon_src_nodes
	mov	r11, qword ptr [rsp + 0x20]
	mov	r9, qword ptr [rsp + 8]
	mov	r12d, eax
	test	r12d, r12d
	jne	.label_194
.label_218:
	test	r14, r14
	mov	r12, qword ptr [rsp + 0x10]
	js	.label_214
	mov	r8, qword ptr [r11 + 8]
	test	r8, r8
	jle	.label_214
	xor	r15d, r15d
	nop	word ptr cs:[rax + rax]
.label_231:
	mov	rcx, qword ptr [r11 + 0x10]
	mov	rsi, qword ptr [rcx + r15*8]
	mov	rdi, qword ptr [r12 + 0x38]
	lea	rcx, [rsi + rsi*2]
	mov	rdx, qword ptr [rdi + rcx*8 + 8]
	test	rdx, rdx
	jle	.label_204
	dec	rdx
	mov	rdi, qword ptr [rdi + rcx*8 + 0x10]
	mov	ebp, 0
	je	.label_243
	xor	ebp, ebp
	nop	dword ptr [rax]
.label_223:
	lea	rbx, [rbp + rdx]
	shr	rbx, 1
	cmp	qword ptr [rdi + rbx*8], r14
	lea	rax, [rbx + 1]
	cmovl	rbp, rax
	cmovge	rdx, rbx
	cmp	rbp, rdx
	jb	.label_223
.label_243:
	cmp	rbp, -1
	mov	ebx, 0xfe
	je	.label_204
	cmp	qword ptr [rdi + rbp*8], r14
	je	.label_219
.label_204:
	mov	rdi, qword ptr [r12 + 0x30]
	mov	rdx, qword ptr [rdi + rcx*8 + 8]
	test	rdx, rdx
	jle	.label_213
	dec	rdx
	mov	rcx, qword ptr [rdi + rcx*8 + 0x10]
	mov	edi, 0
	je	.label_199
	xor	edi, edi
	nop	
.label_250:
	lea	rax, [rdi + rdx]
	shr	rax, 1
	cmp	qword ptr [rcx + rax*8], r14
	lea	rbp, [rax + 1]
	cmovl	rdi, rbp
	cmovge	rdx, rax
	cmp	rdi, rdx
	jb	.label_250
.label_199:
	cmp	rdi, -1
	je	.label_213
	cmp	qword ptr [rcx + rdi*8], r14
	je	.label_219
.label_213:
	mov	rdi, r12
	mov	rdx, r11
	mov	rcx, qword ptr [rsp + 0x30]
	call	sub_epsilon_src_nodes
	mov	r11, qword ptr [rsp + 0x20]
	mov	r9, qword ptr [rsp + 8]
	mov	r12d, eax
	test	r12d, r12d
	jne	.label_194
	dec	r15
	mov	r8, qword ptr [r11 + 8]
	mov	r12, qword ptr [rsp + 0x10]
.label_219:
	inc	r15
	cmp	r15, r8
	jl	.label_231
	jmp	.label_214
.label_244:
	test	rax, rax
	jle	.label_214
	xor	ebp, ebp
	jmp	.label_235
	.section	.text
	.align	16
	#Procedure 0x404091
	.globl sub_404091
	.type sub_404091, @function
sub_404091:

	nop	word ptr cs:[rax + rax]
.label_251:
	mov	rcx, qword ptr [r12]
.label_235:
	mov	rdx, qword ptr [r11 + 0x10]
	mov	rsi, qword ptr [rdx + rbp*8]
	mov	rdx, rsi
	shl	rdx, 4
	mov	edi, dword ptr [rcx + rdx + 8]
	and	edi, ebx
	or	edi, 1
	cmp	edi, 9
	jne	.label_238
	cmp	r15, qword ptr [rcx + rdx]
	jne	.label_238
	mov	rdi, r12
	mov	rdx, r11
	mov	rcx, qword ptr [rsp + 0x30]
	call	sub_epsilon_src_nodes
	mov	r11, qword ptr [rsp + 0x20]
	mov	r9, qword ptr [rsp + 8]
	mov	r12d, eax
	test	r12d, r12d
	jne	.label_194
	mov	rax, qword ptr [r11 + 8]
	mov	r12, qword ptr [rsp + 0x10]
.label_238:
	inc	rbp
	cmp	rbp, rax
	jl	.label_251
	nop	
.label_214:
	inc	r13
	mov	r14, qword ptr [rsp + 0x28]
	cmp	r13, qword ptr [r14 + 0x28]
	jl	.label_192
.label_222:
	mov	dword ptr [rsp + 4], 0
	mov	rbx, qword ptr [rsp + 0x18]
	mov	r13, qword ptr [rsp + 0x48]
.label_221:
	lea	rdi, [rsp + 4]
	mov	rsi, r12
	mov	rdx, r11
	call	re_acquire_state
	mov	r10, qword ptr [rsp + 8]
	mov	rcx, qword ptr [r14]
	mov	qword ptr [rcx + r10*8], rax
	mov	r12d, dword ptr [rsp + 4]
	test	r12d, r12d
	je	.label_210
	jmp	.label_197
.label_208:
	mov	rax, qword ptr [r14]
	mov	qword ptr [rax + r10*8], 0
.label_210:
	test	r13, r13
	je	.label_205
	mov	rax, qword ptr [rbx + 0xb8]
	mov	rax, qword ptr [rax + r10*8]
	test	byte ptr [rax + 0x68], 0x40
	je	.label_205
	mov	rbp, qword ptr [rbx + 0x98]
	mov	rax, qword ptr [rbx + 0xc8]
	xor	r13d, r13d
	test	rax, rax
	jle	.label_245
	mov	rcx, qword ptr [rbx + 0xd8]
	xor	r13d, r13d
	mov	rdx, rax
	nop	dword ptr [rax + rax]
.label_237:
	lea	rsi, [rdx + r13]
	mov	rdi, rsi
	shr	rdi, 0x3f
	add	rdi, rsi
	sar	rdi, 1
	lea	rsi, [rdi + rdi*4]
	cmp	qword ptr [rcx + rsi*8 + 8], r10
	cmovge	rdx, rdi
	lea	rsi, [rdi + 1]
	cmovl	r13, rsi
	cmp	r13, rdx
	jl	.label_237
.label_245:
	cmp	r13, rax
	jge	.label_202
	cmp	r13, -1
	je	.label_202
	mov	rax, qword ptr [rbx + 0xd8]
	lea	rcx, [r13 + r13*4]
	mov	qword ptr [rsp + 0x88], rcx
	cmp	qword ptr [rax + rcx*8 + 8], r10
	jne	.label_202
	mov	qword ptr [rsp + 0x50], 0
	mov	rax, qword ptr [rsp + 0x30]
	cmp	qword ptr [rax + 8], 0
	jle	.label_202
	mov	qword ptr [rsp + 0x10], rbp
	mov	qword ptr [rsp + 0x18], rbx
	lea	rax, [r14 + 0x20]
	mov	qword ptr [rsp + 0x98], rax
	xor	ecx, ecx
	shl	qword ptr [rsp + 0x88], 3
	mov	qword ptr [rsp + 0x28], r14
	nop	dword ptr [rax]
.label_249:
	mov	rax, qword ptr [rsp + 0x30]
	mov	rax, qword ptr [rax + 0x10]
	mov	qword ptr [rsp + 0x20], rcx
	mov	r15, qword ptr [rax + rcx*8]
	mov	r12, qword ptr [rsp + 0x10]
	mov	rax, qword ptr [r12]
	mov	rcx, r15
	shl	rcx, 4
	movzx	eax, byte ptr [rax + rcx + 8]
	cmp	r15, qword ptr [r14 + 0x10]
	jne	.label_217
	cmp	eax, 4
	jne	.label_225
	cmp	qword ptr [r14 + 0x18], r10
	jne	.label_229
	jmp	.label_225
	.section	.text
	.align	16
	#Procedure 0x404281
	.globl sub_404281
	.type sub_404281, @function
sub_404281:

	nop	word ptr cs:[rax + rax]
.label_217:
	cmp	eax, 4
	jne	.label_225
.label_229:
	mov	rax, qword ptr [rsp + 0x18]
	mov	rbp, qword ptr [rax + 0xd8]
	add	rbp, qword ptr [rsp + 0x88]
	mov	rbx, r13
.label_246:
	cmp	qword ptr [rbp], r15
	jne	.label_195
	mov	rax, qword ptr [rbp + 0x18]
	mov	rcx, qword ptr [rbp + 0x10]
	mov	r9, rax
	sub	r9, rcx
	add	r9, r10
	cmp	rax, rcx
	je	.label_242
	lea	rcx, [r15*8]
	add	rcx, qword ptr [r12 + 0x18]
	jmp	.label_247
.label_242:
	mov	rax, qword ptr [r12 + 0x28]
	lea	rcx, [r15 + r15*2]
	mov	rcx, qword ptr [rax + rcx*8 + 0x10]
.label_247:
	cmp	r9, qword ptr [r14 + 0x18]
	jg	.label_195
	mov	rax, qword ptr [r14]
	mov	rdx, qword ptr [rax + r9*8]
	test	rdx, rdx
	je	.label_195
	mov	rax, qword ptr [rdx + 0x10]
	test	rax, rax
	jle	.label_195
	mov	r8, qword ptr [rcx]
	dec	rax
	mov	rcx, qword ptr [rdx + 0x18]
	mov	edx, 0
	je	.label_201
	xor	edx, edx
	nop	word ptr [rax + rax]
.label_206:
	lea	rsi, [rdx + rax]
	shr	rsi, 1
	cmp	qword ptr [rcx + rsi*8], r8
	lea	rdi, [rsi + 1]
	cmovl	rdx, rdi
	cmovge	rax, rsi
	cmp	rdx, rax
	jb	.label_206
.label_201:
	cmp	rdx, -1
	je	.label_195
	cmp	qword ptr [rcx + rdx*8], r8
	jne	.label_195
	mov	rdi, qword ptr [rsp + 0x18]
	mov	rsi, qword ptr [rsp + 0x98]
	mov	rdx, r15
	mov	rcx, r10
	call	check_dst_limits
	mov	r10, qword ptr [rsp + 8]
	test	al, al
	jne	.label_195
	cmp	qword ptr [rsp + 0x50], 0
	jne	.label_234
	mov	rax, qword ptr [r14 + 0x30]
	mov	qword ptr [rsp + 0x80], rax
	movups	xmm0, xmmword ptr [r14]
	movups	xmm1, xmmword ptr [r14 + 0x10]
	movups	xmm2, xmmword ptr [r14 + 0x20]
	movaps	xmmword ptr [rsp + 0x70], xmm2
	movaps	xmmword ptr [rsp + 0x60], xmm1
	movaps	xmmword ptr [rsp + 0x50], xmm0
	mov	rbp, r14
	mov	r14, qword ptr [r14 + 0x28]
	mov	qword ptr [rsp + 0x78], r14
	test	r14, r14
	jle	.label_236
	mov	qword ptr [rsp + 0x70], r14
	shl	r14, 3
	mov	rdi, r14
	call	malloc
	mov	qword ptr [rsp + 0x80], rax
	test	rax, rax
	je	.label_207
	mov	rsi, qword ptr [rbp + 0x30]
	mov	rdi, rax
	mov	rdx, r14
	mov	r14, rbp
	call	memcpy
	mov	r10, qword ptr [rsp + 8]
	jmp	.label_234
.label_236:
	lea	rax, [rsp + 0x70]
	xorps	xmm0, xmm0
	movups	xmmword ptr [rax], xmm0
	mov	qword ptr [rax + 0x10], 0
	mov	r14, rbp
.label_234:
	mov	qword ptr [rsp + 0x60], r15
	mov	qword ptr [rsp + 0x68], r10
	lea	rdi, [rsp + 0x70]
	mov	rsi, rbx
	call	re_node_set_insert
	mov	rcx, qword ptr [rsp + 8]
	mov	r12d, 0xc
	test	al, al
	je	.label_209
	mov	rax, qword ptr [rsp + 0x50]
	mov	qword ptr [rsp + 0x38], rax
	mov	rbp, qword ptr [rax + rcx*8]
	mov	rdi, qword ptr [rsp + 0x18]
	lea	rsi, [rsp + 0x50]
	call	sift_states_backward
	mov	r10, qword ptr [rsp + 8]
	mov	r12d, eax
	test	r12d, r12d
	jne	.label_209
	mov	r14, qword ptr [r14 + 8]
	test	r14, r14
	mov	rax, qword ptr [rsp + 0x38]
	je	.label_228
	mov	qword ptr [rsp + 0x90], rbp
	test	r10, r10
	lea	rdi, [rsp + 0xa0]
	js	.label_224
	mov	rbp, -1
	mov	qword ptr [rsp + 0x48], r15
	nop	dword ptr [rax + rax]
.label_216:
	mov	rsi, qword ptr [r14 + rbp*8 + 8]
	mov	rdx, qword ptr [rax + rbp*8 + 8]
	test	rsi, rsi
	je	.label_240
	test	rdx, rdx
	je	.label_215
	add	rsi, 8
	add	rdx, 8
	mov	r15, rdi
	call	re_node_set_init_union
	mov	r12d, eax
	mov	dword ptr [rsp + 0x44], r12d
	test	r12d, r12d
	jne	.label_209
	lea	rdi, [rsp + 0x44]
	mov	rsi, qword ptr [rsp + 0x10]
	mov	rdx, r15
	call	re_acquire_state
	mov	qword ptr [r14 + rbp*8 + 8], rax
	mov	rdi, qword ptr [rsp + 0xb0]
	call	free
	mov	r12d, dword ptr [rsp + 0x44]
	test	r12d, r12d
	mov	r10, qword ptr [rsp + 8]
	mov	rdi, r15
	mov	r15, qword ptr [rsp + 0x48]
	mov	rax, qword ptr [rsp + 0x38]
	je	.label_215
	jmp	.label_209
	.section	.text
	.align	16
	#Procedure 0x40452a
	.globl sub_40452a
	.type sub_40452a, @function
sub_40452a:

	nop	word ptr [rax + rax]
.label_240:
	mov	qword ptr [r14 + rbp*8 + 8], rdx
.label_215:
	inc	rbp
	cmp	rbp, r10
	jl	.label_216
.label_224:
	mov	rbp, qword ptr [rsp + 0x90]
.label_228:
	mov	qword ptr [rax + r10*8], rbp
	mov	rsi, qword ptr [rsp + 0x78]
	test	rsi, rsi
	mov	r14, qword ptr [rsp + 0x28]
	jle	.label_220
	mov	r12, rsi
	dec	r12
	mov	rcx, qword ptr [rsp + 0x80]
	mov	edx, 0
	je	.label_226
	mov	rdi, r12
	xor	edx, edx
	nop	word ptr [rax + rax]
.label_232:
	lea	rbp, [rdx + rdi]
	shr	rbp, 1
	cmp	qword ptr [rcx + rbp*8], rbx
	lea	rax, [rbp + 1]
	cmovl	rdx, rax
	cmovge	rdi, rbp
	cmp	rdx, rdi
	jb	.label_232
.label_226:
	cmp	qword ptr [rcx + rdx*8], rbx
	mov	rdi, -1
	cmove	rdi, rdx
	test	rdi, rdi
	js	.label_220
	cmp	rsi, rdi
	jle	.label_220
	mov	qword ptr [rsp + 0x78], r12
	cmp	r12, rdi
	jle	.label_220
	lea	r14, [rdx + 1]
	cmp	r12, r14
	mov	r11, r14
	cmovge	r11, r12
	sub	r11, rdx
	cmp	r11, 4
	jae	.label_196
	mov	r14, qword ptr [rsp + 0x28]
	jmp	.label_233
.label_196:
	mov	r8, r11
	and	r8, 0xfffffffffffffffc
	mov	r9, r11
	and	r9, 0xfffffffffffffffc
	je	.label_248
	cmp	r12, r14
	cmovge	r14, r12
	sub	r14, rdx
	add	r14, -4
	shr	r14, 2
	lea	r10d, [r14 + 1]
	and	r10d, 1
	test	r14, r14
	mov	edi, 0
	je	.label_211
	lea	rbp, [rcx + rdx*8 + 0x38]
	lea	rsi, [r10 - 1]
	sub	rsi, r14
	xor	edi, edi
	nop	word ptr cs:[rax + rax]
.label_241:
	movups	xmm0, xmmword ptr [rbp + rdi*8 - 0x30]
	movups	xmm1, xmmword ptr [rbp + rdi*8 - 0x20]
	movups	xmmword ptr [rbp + rdi*8 - 0x38], xmm0
	movups	xmmword ptr [rbp + rdi*8 - 0x28], xmm1
	movups	xmm0, xmmword ptr [rbp + rdi*8 - 0x10]
	movups	xmm1, xmmword ptr [rbp + rdi*8]
	movups	xmmword ptr [rbp + rdi*8 - 0x18], xmm0
	movups	xmmword ptr [rbp + rdi*8 - 8], xmm1
	add	rdi, 8
	add	rsi, 2
	jne	.label_241
.label_211:
	test	r10, r10
	je	.label_227
	add	rdi, rdx
	movups	xmm0, xmmword ptr [rcx + rdi*8 + 8]
	movups	xmm1, xmmword ptr [rcx + rdi*8 + 0x18]
	movups	xmmword ptr [rcx + rdi*8], xmm0
	movups	xmmword ptr [rcx + rdi*8 + 0x10], xmm1
.label_227:
	cmp	r11, r9
	mov	r10, qword ptr [rsp + 8]
	mov	r14, qword ptr [rsp + 0x28]
	je	.label_220
	add	rdx, r8
	jmp	.label_233
.label_248:
	mov	r14, qword ptr [rsp + 0x28]
	nop	word ptr cs:[rax + rax]
.label_233:
	mov	rax, qword ptr [rcx + rdx*8 + 8]
	mov	qword ptr [rcx + rdx*8], rax
	inc	rdx
	cmp	rdx, r12
	jl	.label_233
.label_220:
	lea	rbp, [rbx + rbx*4]
	shl	rbp, 3
	mov	rax, qword ptr [rsp + 0x18]
	add	rbp, qword ptr [rax + 0xd8]
	mov	r12, qword ptr [rsp + 0x10]
	nop	word ptr [rax + rax]
.label_195:
	inc	rbx
	cmp	byte ptr [rbp + 0x20], 0
	lea	rbp, [rbp + 0x28]
	jne	.label_246
.label_225:
	mov	rcx, qword ptr [rsp + 0x20]
	inc	rcx
	xor	r12d, r12d
	mov	rax, qword ptr [rsp + 0x30]
	cmp	rcx, qword ptr [rax + 8]
	jl	.label_249
.label_209:
	cmp	qword ptr [rsp + 0x50], 0
	je	.label_198
	mov	rdi, qword ptr [rsp + 0x80]
	call	free
.label_198:
	mov	dword ptr [rsp + 4], r12d
	test	r12d, r12d
	je	.label_205
	jmp	.label_197
.label_202:
	mov	dword ptr [rsp + 4], 0
.label_205:
	xor	r12d, r12d
.label_197:
	mov	eax, r12d
	add	rsp, 0xb8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_194:
	mov	dword ptr [rsp + 4], r12d
	jmp	.label_197
.label_207:
	xorps	xmm0, xmm0
	lea	rax, [rsp + 0x70]
	movups	xmmword ptr [rax], xmm0
	mov	r12d, 0xc
	jmp	.label_209
	.section	.text
	.align	16
	#Procedure 0x404766
	.globl sub_404766
	.type sub_404766, @function
sub_404766:

	nop	word ptr cs:[rax + rax]
.label_254:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_252
	test	rax, rax
	je	.label_253
.label_252:
	pop	rbx
	ret	
.label_253:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x404789

	.globl xrealloc
	.type xrealloc, @function
xrealloc:
	push	rbx
	mov	rbx, rsi
	test	rdi, rdi
	je	.label_254
	test	rbx, rbx
	jne	.label_254
	call	free
	xor	eax, eax
	pop	rbx
	ret	
.label_256:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_257
	test	rax, rax
	je	.label_255
.label_257:
	pop	rbx
	ret	
	.section	.text
	.align	16
	#Procedure 0x4047b4
	.globl xnrealloc
	.type xnrealloc, @function
xnrealloc:

	push	rbx
	mov	rbx, rdx
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rsi
	jb	.label_255
	imul	rbx, rsi
	test	rdi, rdi
	je	.label_256
	test	rbx, rbx
	jne	.label_256
	call	free
	xor	eax, eax
	pop	rbx
	ret	
.label_255:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x4047e8
	.globl sub_4047e8
	.type sub_4047e8, @function
sub_4047e8:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4047f0
	.globl quote_n_mem
	.type quote_n_mem, @function
quote_n_mem:

	mov	ecx, OFFSET FLAT:quote_quoting_options
	jmp	quotearg_n_options
	.section	.text
	.align	16
	#Procedure 0x4047fa
	.globl sub_4047fa
	.type sub_4047fa, @function
sub_4047fa:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404800

	.globl register_state
	.type register_state, @function
register_state:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	r15, rdx
	mov	rbx, rsi
	mov	r12, rdi
	mov	qword ptr [rbx], r15
	mov	r13, qword ptr [rbx + 0x10]
	mov	qword ptr [rbx + 0x20], r13
	mov	qword ptr [rbx + 0x28], 0
	lea	rdi, [r13*8]
	call	malloc
	mov	qword ptr [rbx + 0x30], rax
	mov	ecx, 0xc
	test	rax, rax
	je	.label_259
	test	r13, r13
	jle	.label_260
	xor	ebp, ebp
	nop	dword ptr [rax]
.label_263:
	mov	rcx, qword ptr [rbx + 0x18]
	mov	r14, qword ptr [rcx + rbp*8]
	mov	rcx, qword ptr [r12]
	mov	rdx, r14
	shl	rdx, 4
	test	byte ptr [rcx + rdx + 8], 8
	jne	.label_262
	mov	rdx, qword ptr [rbx + 0x20]
	mov	rcx, qword ptr [rbx + 0x28]
	cmp	rdx, rcx
	jne	.label_261
	lea	rcx, [rdx + rdx + 2]
	lea	rdx, [rdx + rdx]
	mov	qword ptr [rbx + 0x20], rcx
	lea	rsi, [rdx*8 + 0x10]
	mov	rdi, rax
	call	realloc
	test	rax, rax
	je	.label_258
	mov	qword ptr [rbx + 0x30], rax
	mov	rcx, qword ptr [rbx + 0x28]
.label_261:
	lea	rdx, [rcx + 1]
	mov	qword ptr [rbx + 0x28], rdx
	mov	qword ptr [rax + rcx*8], r14
	mov	r13, qword ptr [rbx + 0x10]
.label_262:
	inc	rbp
	cmp	rbp, r13
	jl	.label_263
.label_260:
	mov	r13, qword ptr [r12 + 0x40]
	and	r15, qword ptr [r12 + 0x88]
	lea	rbp, [r15 + r15*2]
	lea	r14, [r13 + rbp*8]
	mov	r15, qword ptr [r13 + rbp*8]
	cmp	qword ptr [r13 + rbp*8 + 8], r15
	jle	.label_264
	mov	rax, qword ptr [r13 + rbp*8 + 0x10]
.label_265:
	lea	rcx, [r15 + 1]
	mov	qword ptr [r14], rcx
	mov	qword ptr [rax + r15*8], rbx
	xor	ecx, ecx
.label_259:
	mov	eax, ecx
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_258:
	mov	ecx, 0xc
	jmp	.label_259
.label_264:
	lea	rax, [r15 + r15]
	mov	rdi, qword ptr [r13 + rbp*8 + 0x10]
	lea	rsi, [rax*8 + 0x10]
	call	realloc
	test	rax, rax
	mov	ecx, 0xc
	je	.label_259
	lea	rcx, [r13 + rbp*8 + 8]
	lea	rdx, [r15 + r15 + 2]
	mov	qword ptr [rcx + 8], rax
	mov	qword ptr [rcx], rdx
	mov	r15, qword ptr [r14]
	jmp	.label_265
	.section	.text
	.align	16
	#Procedure 0x40493b
	.globl sub_40493b
	.type sub_40493b, @function
sub_40493b:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404940

	.globl calc_eclosure_iter
	.type calc_eclosure_iter, @function
calc_eclosure_iter:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x48
	mov	dword ptr [rsp + 4], ecx
	mov	r12, rdx
	mov	rbp, rsi
	mov	rbx, rdi
	mov	r15, qword ptr [rbp + 0x28]
	lea	r14, [r12 + r12*2]
	mov	rax, qword ptr [r15 + r14*8 + 8]
	lea	rcx, [rax + 1]
	mov	qword ptr [rsp + 0x10], rcx
	mov	qword ptr [rsp + 0x18], 0
	lea	rdi, [rax*8 + 8]
	call	malloc
	mov	rcx, rax
	mov	qword ptr [rsp + 0x20], rcx
	mov	eax, 0xc
	test	rcx, rcx
	je	.label_269
	mov	qword ptr [rsp + 8], rbx
	mov	rax, qword ptr [rbp + 0x30]
	mov	qword ptr [rax + r14*8 + 8], -1
	mov	rcx, qword ptr [rbp]
	mov	rbx, r12
	shl	rbx, 4
	mov	eax, dword ptr [rcx + rbx + 8]
	mov	r8d, eax
	shr	r8d, 8
	and	r8d, 0x3ff
	je	.label_271
	lea	rdx, [r15 + r14*8 + 8]
	cmp	qword ptr [rdx], 0
	je	.label_271
	mov	rdx, qword ptr [r15 + r14*8 + 0x10]
	mov	rdx, qword ptr [rdx]
	shl	rdx, 4
	test	byte ptr [rcx + rdx + 0xa], 4
	jne	.label_271
	mov	rdi, rbp
	mov	rsi, r12
	mov	rdx, r12
	mov	rcx, r12
	call	duplicate_node_closure
	test	eax, eax
	jne	.label_269
	mov	rax, qword ptr [rbp]
	mov	eax, dword ptr [rax + rbx + 8]
.label_271:
	test	al, 8
	mov	qword ptr [rsp + 0x28], r12
	je	.label_270
	mov	rax, qword ptr [rbp + 0x28]
	cmp	qword ptr [rax + r14*8 + 8], 0
	jle	.label_270
	xor	r15d, r15d
	lea	rbx, [rsp + 0x30]
	xor	r12d, r12d
	nop	word ptr cs:[rax + rax]
.label_267:
	mov	rax, qword ptr [rax + r14*8 + 0x10]
	mov	rdx, qword ptr [rax + r12*8]
	mov	rax, qword ptr [rbp + 0x30]
	lea	r13, [rdx + rdx*2]
	mov	rcx, qword ptr [rax + r13*8 + 8]
	cmp	rcx, -1
	je	.label_266
	test	rcx, rcx
	jne	.label_273
	xor	ecx, ecx
	mov	rdi, rbx
	mov	rsi, rbp
	call	calc_eclosure_iter
	test	eax, eax
	je	.label_275
	jmp	.label_269
	.section	.text
	.align	16
	#Procedure 0x404a77
	.globl sub_404a77
	.type sub_404a77, @function
sub_404a77:

	nop	word ptr [rax + rax]
.label_273:
	mov	rcx, qword ptr [rax + r13*8 + 0x10]
	mov	qword ptr [rsp + 0x40], rcx
	movups	xmm0, xmmword ptr [rax + r13*8]
	movaps	xmmword ptr [rsp + 0x30], xmm0
.label_275:
	lea	rdi, [rsp + 0x10]
	mov	rsi, rbx
	call	re_node_set_merge
	test	eax, eax
	jne	.label_269
	mov	rax, qword ptr [rbp + 0x30]
	cmp	qword ptr [rax + r13*8 + 8], 0
	jne	.label_274
	mov	rdi, qword ptr [rsp + 0x40]
	call	free
.label_266:
	mov	r15b, 1
.label_274:
	inc	r12
	mov	rax, qword ptr [rbp + 0x28]
	cmp	r12, qword ptr [rax + r14*8 + 8]
	jl	.label_267
	jmp	.label_272
.label_270:
	xor	r15d, r15d
.label_272:
	lea	rdi, [rsp + 0x10]
	mov	rsi, qword ptr [rsp + 0x28]
	call	re_node_set_insert
	test	al, al
	mov	eax, 0xc
	je	.label_269
	test	r15b, 1
	mov	rax, qword ptr [rbp + 0x30]
	je	.label_276
	mov	ecx, dword ptr [rsp + 4]
	test	cl, cl
	jne	.label_276
	mov	qword ptr [rax + r14*8 + 8], 0
	jmp	.label_268
.label_276:
	mov	rcx, qword ptr [rsp + 0x20]
	mov	qword ptr [rax + r14*8 + 0x10], rcx
	movups	xmm0, xmmword ptr [rsp + 0x10]
	movups	xmmword ptr [rax + r14*8], xmm0
.label_268:
	mov	rcx, qword ptr [rsp + 8]
	mov	rax, qword ptr [rsp + 0x20]
	mov	qword ptr [rcx + 0x10], rax
	movups	xmm0, xmmword ptr [rsp + 0x10]
	movups	xmmword ptr [rcx], xmm0
	xor	eax, eax
.label_269:
	add	rsp, 0x48
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x404b49
	.globl sub_404b49
	.type sub_404b49, @function
sub_404b49:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x404b50

	.globl umaxtostr
	.type umaxtostr, @function
umaxtostr:
	mov	rcx, rdi
	mov	byte ptr [rsi + 0x14], 0
	add	rsi, 0x14
	movabs	r8, 0xcccccccccccccccd
	nop	word ptr cs:[rax + rax]
.label_277:
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
	ja	.label_277
	mov	rax, rsi
	ret	
	.section	.text
	.align	16
	#Procedure 0x404b9b
	.globl sub_404b9b
	.type sub_404b9b, @function
sub_404b9b:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404ba0

	.globl re_node_set_add_intersect
	.type re_node_set_add_intersect, @function
re_node_set_add_intersect:
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	mov	r14, rdx
	mov	r15, rsi
	mov	r12, rdi
	mov	rcx, qword ptr [r15 + 8]
	xor	eax, eax
	test	rcx, rcx
	je	.label_279
	mov	r11, qword ptr [r14 + 8]
	test	r11, r11
	je	.label_279
	lea	rax, [r11 + rcx]
	mov	r13, qword ptr [r12]
	mov	rdx, qword ptr [r12 + 8]
	lea	rsi, [rdx + rax]
	cmp	rsi, r13
	jle	.label_285
	add	r13, rax
	mov	rdi, qword ptr [r12 + 0x10]
	lea	rsi, [r13*8]
	call	realloc
	mov	rcx, rax
	mov	eax, 0xc
	test	rcx, rcx
	je	.label_279
	lea	r8, [r12 + 0x10]
	mov	qword ptr [r12 + 0x10], rcx
	mov	qword ptr [r12], r13
	mov	rdx, qword ptr [r12 + 8]
	mov	rcx, qword ptr [r15 + 8]
	mov	r11, qword ptr [r14 + 8]
	jmp	.label_284
.label_285:
	lea	r8, [r12 + 0x10]
.label_284:
	lea	r10, [rcx + rdx]
	add	r10, r11
	dec	rdx
	mov	rsi, qword ptr [r15 + 0x10]
	mov	r9, qword ptr [r14 + 0x10]
.label_295:
	dec	rcx
	mov	rdi, r11
.label_293:
	lea	r11, [rdi - 1]
	mov	rax, qword ptr [r9 + rdi*8 - 8]
	nop	dword ptr [rax]
.label_288:
	cmp	qword ptr [rsi + rcx*8], rax
	je	.label_286
	jl	.label_287
	test	rcx, rcx
	lea	rcx, [rcx - 1]
	jg	.label_288
	jmp	.label_282
	.section	.text
	.align	16
	#Procedure 0x404c63
	.globl sub_404c63
	.type sub_404c63, @function
sub_404c63:

	nop	word ptr cs:[rax + rax]
.label_287:
	cmp	rdi, 2
	mov	rdi, r11
	jge	.label_293
	jmp	.label_282
	.section	.text
	.align	16
	#Procedure 0x404c7b
	.globl sub_404c7b
	.type sub_404c7b, @function
sub_404c7b:

	nop	dword ptr [rax + rax]
.label_286:
	mov	rbx, qword ptr [r8]
	test	rdx, rdx
	js	.label_278
	nop	dword ptr [rax + rax]
.label_280:
	cmp	qword ptr [rbx + rdx*8], rax
	jle	.label_281
	test	rdx, rdx
	lea	rdx, [rdx - 1]
	jg	.label_280
	jmp	.label_278
.label_281:
	je	.label_283
	nop	word ptr cs:[rax + rax]
.label_278:
	mov	qword ptr [rbx + r10*8 - 8], rax
	dec	r10
.label_283:
	test	rcx, rcx
	jle	.label_282
	cmp	rdi, 2
	jge	.label_295
.label_282:
	mov	rdx, qword ptr [r12 + 8]
	lea	rcx, [rdx - 1]
	mov	r9, qword ptr [r15 + 8]
	add	r9, rcx
	add	r9, qword ptr [r14 + 8]
	mov	rax, r9
	sub	rax, r10
	lea	r8, [rax + 1]
	lea	rsi, [rax + rdx + 1]
	mov	qword ptr [r12 + 8], rsi
	mov	rdi, qword ptr [r12 + 0x10]
	test	rdx, rdx
	jle	.label_290
	test	rax, rax
	js	.label_290
	xor	edx, edx
.label_291:
	lea	rax, [rcx + r8]
	lea	rax, [rdi + rax*8]
	nop	dword ptr [rax + rax]
.label_292:
	mov	rbx, qword ptr [rdi + r9*8]
	mov	rsi, qword ptr [rdi + rcx*8]
	cmp	rbx, rsi
	jg	.label_289
	mov	qword ptr [rax], rsi
	add	rax, -8
	test	rcx, rcx
	lea	rcx, [rcx - 1]
	jg	.label_292
	jmp	.label_290
	.section	.text
	.align	16
	#Procedure 0x404d2f
	.globl sub_404d2f
	.type sub_404d2f, @function
sub_404d2f:

	nop	
.label_289:
	dec	r9
	dec	r8
	mov	qword ptr [rax], rbx
	jne	.label_291
	jmp	.label_294
.label_290:
	mov	rdx, r8
.label_294:
	lea	rsi, [rdi + r10*8]
	shl	rdx, 3
	call	memcpy
	xor	eax, eax
.label_279:
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	16
	#Procedure 0x404d59
	.globl sub_404d59
	.type sub_404d59, @function
sub_404d59:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x404d60
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
	#Procedure 0x404dd5
	.globl sub_404dd5
	.type sub_404dd5, @function
sub_404dd5:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404de0
	.globl rpl_re_set_syntax
	.type rpl_re_set_syntax, @function
rpl_re_set_syntax:

	mov	rax, qword ptr [rip + rpl_re_syntax_options]
	mov	qword ptr [rip + rpl_re_syntax_options],  rdi
	ret	
	.section	.text
	.align	16
	#Procedure 0x404def
	.globl sub_404def
	.type sub_404def, @function
sub_404def:

	nop	
	.section	.text
	.align	16
	#Procedure 0x404df0

	.globl set_regs
	.type set_regs, @function
set_regs:
	push	rbp
	mov	rbp, rsp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x88
	mov	r15, rcx
	mov	rbx, rdx
	mov	r12, rsi
	mov	rax, qword ptr [rip + label_337]
	mov	qword ptr [rbp - 0xa0], rax
	movups	xmm0, xmmword ptr [rip + label_338]
	movaps	xmmword ptr [rbp - 0xb0], xmm0
	xor	r13d, r13d
	test	r8b, r8b
	je	.label_339
	mov	r14, rdi
	mov	edi, 0x60
	call	malloc
	mov	qword ptr [rbp - 0xa0], rax
	mov	ecx, 0xc
	test	rax, rax
	je	.label_304
	lea	r13, [rbp - 0xb0]
	mov	rdi, r14
.label_339:
	mov	qword ptr [rbp - 0x98], rdi
	mov	r14, qword ptr [rdi + 0x90]
	xorps	xmm0, xmm0
	movaps	xmmword ptr [rbp - 0x70], xmm0
	mov	qword ptr [rbp - 0x60], 0
	mov	rdx, rbx
	shl	rdx, 4
	cmp	rdx, 0xfbf
	mov	qword ptr [rbp - 0x50], rdx
	ja	.label_309
	mov	rdi, rsp
	lea	rax, [rdx + 0xf]
	and	rax, 0xfffffffffffffff0
	sub	rdi, rax
	mov	rsp, rdi
	mov	dword ptr [rbp - 0x34], 0
	jmp	.label_322
.label_309:
	mov	rdi, rdx
	call	malloc
	mov	rdi, rax
	test	rdi, rdi
	je	.label_326
	mov	al, 1
	mov	dword ptr [rbp - 0x34], eax
	mov	rdx, qword ptr [rbp - 0x50]
.label_322:
	mov	qword ptr [rbp - 0x48], rdi
	mov	rsi, r15
	call	memcpy
	mov	r8, qword ptr [r15]
	xor	edi, edi
	cmp	r8, qword ptr [r15 + 8]
	jg	.label_329
	lea	rax, [r15 + 8]
	mov	qword ptr [rbp - 0x88], rax
	mov	qword ptr [rbp - 0x90], rbx
	mov	qword ptr [rbp - 0x58], r12
	mov	qword ptr [rbp - 0x40], r15
	jmp	.label_313
.label_326:
	mov	ecx, 0xc
	test	r13, r13
	je	.label_304
	cmp	qword ptr [r13], 0
	jle	.label_342
	xor	ebx, ebx
	xor	r15d, r15d
	nop	word ptr cs:[rax + rax]
.label_349:
	mov	rax, qword ptr [r13 + 0x10]
	mov	rdi, qword ptr [rax + rbx + 0x28]
	call	free
	mov	rax, qword ptr [r13 + 0x10]
	mov	rdi, qword ptr [rax + rbx + 0x10]
	call	free
	inc	r15
	add	rbx, 0x30
	cmp	r15, qword ptr [r13]
	jl	.label_349
.label_342:
	mov	rdi, qword ptr [r13 + 0x10]
	call	free
	mov	ecx, 0xc
	jmp	.label_304
.label_350:
	mov	r12, rax
	jmp	.label_332
	.section	.text
	.align	16
	#Procedure 0x404f64
	.globl sub_404f64
	.type sub_404f64, @function
sub_404f64:

	nop	word ptr cs:[rax + rax]
.label_313:
	mov	rax, qword ptr [rbp - 0x98]
	mov	rcx, qword ptr [rax]
	mov	rdx, r14
	shl	rdx, 4
	lea	rax, [rcx + rdx]
	mov	ecx, dword ptr [rcx + rdx + 8]
	cmp	cl, 9
	je	.label_353
	cmp	cl, 8
	jne	.label_297
	mov	rax, qword ptr [rax]
	inc	rax
	cmp	rax, rbx
	jge	.label_297
	shl	rax, 4
	mov	qword ptr [r15 + rax], r8
	mov	qword ptr [r15 + rax + 8], -1
	jmp	.label_297
	.section	.text
	.align	16
	#Procedure 0x404fb9
	.globl sub_404fb9
	.type sub_404fb9, @function
sub_404fb9:

	nop	dword ptr [rax]
.label_353:
	mov	rax, qword ptr [rax]
	inc	rax
	cmp	rax, rbx
	jge	.label_297
	shl	rax, 4
	cmp	qword ptr [r15 + rax], r8
	jge	.label_360
	mov	qword ptr [r15 + rax + 8], r8
	mov	rdi, qword ptr [rbp - 0x48]
	mov	rsi, r15
	jmp	.label_361
.label_360:
	test	ecx, 0x80000
	je	.label_355
	mov	rcx, qword ptr [rbp - 0x48]
	cmp	qword ptr [rcx + rax], -1
	je	.label_355
	mov	rdi, r15
	mov	rsi, qword ptr [rbp - 0x48]
.label_361:
	mov	rdx, qword ptr [rbp - 0x50]
	mov	qword ptr [rbp - 0x30], r8
	call	memcpy
	mov	r8, qword ptr [rbp - 0x30]
	jmp	.label_297
.label_355:
	mov	qword ptr [r15 + rax + 8], r8
	nop	word ptr cs:[rax + rax]
.label_297:
	cmp	r8, qword ptr [r15 + 8]
	jne	.label_302
	cmp	r14, qword ptr [r12 + 0xb0]
	jne	.label_302
	test	r13, r13
	je	.label_303
	test	rbx, rbx
	mov	eax, 0
	je	.label_306
	mov	rcx, qword ptr [rbp - 0x88]
	xor	eax, eax
	nop	word ptr cs:[rax + rax]
.label_315:
	cmp	qword ptr [rcx - 8], 0
	js	.label_311
	cmp	qword ptr [rcx], -1
	je	.label_306
.label_311:
	inc	rax
	add	rcx, 0x10
	cmp	rax, rbx
	jb	.label_315
.label_306:
	cmp	rax, rbx
	je	.label_317
	mov	rcx, qword ptr [r13]
	lea	rax, [rcx - 1]
	mov	qword ptr [r13], rax
	test	rcx, rcx
	jle	.label_319
	mov	rcx, qword ptr [r13 + 0x10]
	shl	rax, 4
	lea	rbx, [rax + rax*2]
	mov	r14, qword ptr [rcx + rbx]
	mov	rsi, qword ptr [rcx + rbx + 0x10]
	mov	rdi, r15
	mov	rdx, qword ptr [rbp - 0x50]
	call	memcpy
	mov	rdi, qword ptr [rbp - 0x60]
	call	free
	mov	rax, qword ptr [r13 + 0x10]
	mov	rdi, qword ptr [rax + rbx + 0x10]
	call	free
	mov	r8, r14
	mov	rax, qword ptr [r13 + 0x10]
	mov	rcx, qword ptr [rax + rbx + 0x28]
	mov	qword ptr [rbp - 0x60], rcx
	movups	xmm0, xmmword ptr [rax + rbx + 0x18]
	movaps	xmmword ptr [rbp - 0x70], xmm0
	mov	r14, qword ptr [rax + rbx + 8]
.label_302:
	mov	r15, qword ptr [r12 + 0x98]
	mov	rax, qword ptr [r15]
	mov	rbx, r14
	shl	rbx, 4
	mov	ecx, dword ptr [rax + rbx + 8]
	test	cl, 8
	mov	qword ptr [rbp - 0x30], r8
	jne	.label_334
	test	ecx, 0x100000
	jne	.label_343
	movzx	ecx, cl
	cmp	ecx, 4
	jne	.label_325
	mov	rax, qword ptr [rax + rbx]
	shl	rax, 4
	mov	rcx, qword ptr [rbp - 0x40]
	mov	rdi, qword ptr [rcx + rax + 0x10]
	mov	rax, qword ptr [rcx + rax + 0x18]
	mov	rdx, rax
	sub	rdx, rdi
	test	r13, r13
	je	.label_344
	cmp	rax, -1
	mov	rcx, qword ptr [rbp - 0x30]
	je	.label_312
	cmp	rdi, -1
	je	.label_312
	test	rdx, rdx
	je	.label_351
	mov	rax, qword ptr [rbp - 0x58]
	mov	rax, qword ptr [rax + 0x30]
	sub	rax, rcx
	cmp	rax, rdx
	jl	.label_312
	mov	rax, qword ptr [rbp - 0x58]
	mov	rsi, qword ptr [rax + 8]
	add	rdi, rsi
	add	rsi, rcx
	mov	rbx, rdx
	call	memcmp
	mov	rdx, rbx
	mov	rcx, qword ptr [rbp - 0x30]
	test	eax, eax
	jne	.label_312
	mov	rax, qword ptr [r15 + 0x18]
	mov	r12, qword ptr [rax + r14*8]
	add	rdx, rcx
	jmp	.label_358
	.section	.text
	.align	16
	#Procedure 0x4051b7
	.globl sub_4051b7
	.type sub_4051b7, @function
sub_4051b7:

	nop	word ptr [rax + rax]
.label_334:
	mov	rax, qword ptr [r12 + 0xb8]
	mov	r12, qword ptr [rax + r8*8]
	mov	rbx, qword ptr [r15 + 0x28]
	lea	rdi, [rbp - 0x70]
	mov	rsi, r14
	call	re_node_set_insert
	test	al, al
	je	.label_335
	lea	rax, [r14 + r14*2]
	mov	r10, qword ptr [rbx + rax*8 + 8]
	test	r10, r10
	jle	.label_307
	mov	r9, qword ptr [r12 + 0x10]
	test	r9, r9
	jle	.label_307
	mov	r8, qword ptr [rbx + rax*8 + 0x10]
	dec	r9
	mov	rsi, qword ptr [r12 + 0x18]
	je	.label_296
	mov	r11, -1
	xor	r14d, r14d
	mov	r15, qword ptr [rbp - 0x40]
	nop	word ptr cs:[rax + rax]
.label_318:
	mov	rbx, qword ptr [r8 + r14*8]
	mov	rdx, r9
	xor	eax, eax
	nop	dword ptr [rax]
.label_305:
	mov	rdi, rax
	lea	rcx, [rdi + rdx]
	shr	rcx, 1
	cmp	qword ptr [rsi + rcx*8], rbx
	lea	rax, [rcx + 1]
	cmovge	rax, rdi
	cmovge	rdx, rcx
	cmp	rax, rdx
	jb	.label_305
	cmp	rax, -1
	je	.label_310
	cmp	qword ptr [rsi + rax*8], rbx
	jne	.label_310
	cmp	r11, -1
	mov	r12, r11
	mov	r11, rbx
	jne	.label_314
.label_310:
	inc	r14
	cmp	r14, r10
	jl	.label_318
	mov	r12, r11
	jmp	.label_320
	.section	.text
	.align	16
	#Procedure 0x40528b
	.globl sub_40528b
	.type sub_40528b, @function
sub_40528b:

	nop	dword ptr [rax + rax]
.label_343:
	mov	rdi, r15
	mov	rsi, r14
	mov	rdx, r12
	mov	rcx, r8
	call	check_node_accept_bytes
	movsxd	rdx, eax
.label_298:
	test	rdx, rdx
	jne	.label_324
	jmp	.label_325
.label_296:
	mov	rbx, qword ptr [rsi]
	mov	r12, -1
	xor	ecx, ecx
	mov	r15, qword ptr [rbp - 0x40]
	nop	word ptr cs:[rax + rax]
.label_336:
	cmp	rbx, qword ptr [r8 + rcx*8]
	jne	.label_330
	cmp	r12, -1
	mov	rax, rbx
	je	.label_341
	jmp	.label_314
	.section	.text
	.align	16
	#Procedure 0x4052e1
	.globl sub_4052e1
	.type sub_4052e1, @function
sub_4052e1:

	nop	word ptr cs:[rax + rax]
.label_330:
	mov	rax, r12
.label_341:
	inc	rcx
	cmp	rcx, r10
	mov	r12, rax
	jl	.label_336
	mov	r12, rax
	jmp	.label_320
.label_314:
	mov	r9, qword ptr [rbp - 0x68]
	test	r9, r9
	jle	.label_301
	mov	rcx, r9
	dec	rcx
	mov	rax, qword ptr [rbp - 0x60]
	mov	edx, 0
	mov	r8, qword ptr [rbp - 0x30]
	je	.label_316
	xor	edx, edx
	nop	word ptr [rax + rax]
.label_346:
	lea	rsi, [rdx + rcx]
	shr	rsi, 1
	cmp	qword ptr [rax + rsi*8], r12
	lea	rdi, [rsi + 1]
	cmovl	rdx, rdi
	cmovge	rcx, rsi
	cmp	rdx, rcx
	jb	.label_346
.label_316:
	cmp	rdx, -1
	setne	cl
	cmp	qword ptr [rax + rdx*8], r12
	sete	dl
	and	dl, cl
	mov	rax, r12
	cmovne	rax, rbx
	test	dl, dl
	jne	.label_350
	test	r13, r13
	jne	.label_352
	mov	r12, rax
	jmp	.label_332
.label_344:
	test	rdx, rdx
	mov	rcx, qword ptr [rbp - 0x30]
	je	.label_351
	mov	rax, qword ptr [r15 + 0x18]
	mov	r12, qword ptr [rax + r14*8]
	add	rdx, rcx
	jmp	.label_308
.label_351:
	lea	rdi, [rbp - 0x70]
	mov	rsi, r14
	mov	r12, rdx
	call	re_node_set_insert
	mov	rdx, r12
	test	al, al
	je	.label_335
	mov	rax, qword ptr [rbp - 0x58]
	mov	rax, qword ptr [rax + 0xb8]
	mov	rcx, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rax + rcx*8]
	mov	rax, qword ptr [rcx + 0x10]
	test	rax, rax
	jle	.label_325
	mov	rdi, qword ptr [r15 + 0x28]
	lea	rsi, [r14 + r14*2]
	mov	rsi, qword ptr [rdi + rsi*8 + 0x10]
	mov	r12, qword ptr [rsi]
	dec	rax
	mov	r8, qword ptr [rcx + 0x18]
	mov	ecx, 0
	je	.label_327
	xor	ecx, ecx
	nop	dword ptr [rax + rax]
.label_364:
	lea	rsi, [rcx + rax]
	shr	rsi, 1
	cmp	qword ptr [r8 + rsi*8], r12
	lea	rdi, [rsi + 1]
	cmovl	rcx, rdi
	cmovge	rax, rsi
	cmp	rcx, rax
	jb	.label_364
.label_327:
	cmp	rcx, -1
	je	.label_298
	cmp	qword ptr [r8 + rcx*8], r12
	je	.label_299
	jmp	.label_298
	.section	.text
	.align	16
	#Procedure 0x405425
	.globl sub_405425
	.type sub_405425, @function
sub_405425:

	nop	word ptr cs:[rax + rax]
.label_325:
	add	rbx, qword ptr [r15]
	mov	rdi, qword ptr [rbp - 0x58]
	mov	rsi, rbx
	mov	rdx, qword ptr [rbp - 0x30]
	call	check_node_accept
	test	al, al
	mov	edx, 1
	je	.label_307
.label_324:
	add	rdx, qword ptr [rbp - 0x30]
	test	r13, r13
	mov	rax, qword ptr [r15 + 0x18]
	mov	r12, qword ptr [rax + r14*8]
	je	.label_308
.label_358:
	mov	rax, qword ptr [rbp - 0x58]
	cmp	rdx, qword ptr [rax + 0xa8]
	jg	.label_312
	mov	rax, qword ptr [rbp - 0x58]
	mov	rax, qword ptr [rax + 0xb8]
	mov	rcx, qword ptr [rax + rdx*8]
	test	rcx, rcx
	je	.label_312
	mov	rax, qword ptr [rcx + 0x10]
	test	rax, rax
	jle	.label_312
	dec	rax
	mov	rcx, qword ptr [rcx + 0x18]
	mov	ebx, 0
	je	.label_356
	xor	ebx, ebx
	nop	word ptr [rax + rax]
.label_300:
	lea	rsi, [rbx + rax]
	shr	rsi, 1
	cmp	qword ptr [rcx + rsi*8], r12
	lea	rdi, [rsi + 1]
	cmovl	rbx, rdi
	cmovge	rax, rsi
	cmp	rbx, rax
	jb	.label_300
.label_356:
	cmp	rbx, -1
	je	.label_307
	cmp	qword ptr [rcx + rbx*8], r12
	jne	.label_307
.label_308:
	mov	qword ptr [rbp - 0x68], 0
	mov	r8, rdx
	mov	r15, qword ptr [rbp - 0x40]
	jmp	.label_332
.label_301:
	test	r13, r13
	mov	r8, qword ptr [rbp - 0x30]
	je	.label_332
.label_352:
	mov	qword ptr [rbp - 0x80], r9
	mov	r14, qword ptr [r13]
	lea	rax, [r14 + 1]
	mov	qword ptr [r13], rax
	cmp	rax, qword ptr [r13 + 8]
	jne	.label_340
	mov	rdi, qword ptr [r13 + 0x10]
	shl	rax, 5
	lea	rsi, [rax + rax*2]
	call	realloc
	mov	r15, rax
	test	r15, r15
	je	.label_335
	shl	qword ptr [r13 + 8], 1
	mov	qword ptr [r13 + 0x10], r15
	mov	r8, qword ptr [rbp - 0x30]
	jmp	.label_347
.label_340:
	mov	r15, qword ptr [r13 + 0x10]
.label_347:
	lea	r14, [r14 + r14*2]
	shl	r14, 4
	mov	qword ptr [r15 + r14], r8
	mov	qword ptr [r15 + r14 + 8], rbx
	mov	rdi, qword ptr [rbp - 0x50]
	call	malloc
	mov	qword ptr [r15 + r14 + 0x10], rax
	test	rax, rax
	je	.label_335
	mov	rdi, rax
	mov	rsi, qword ptr [rbp - 0x40]
	mov	rdx, qword ptr [rbp - 0x50]
	call	memcpy
	lea	rax, [r15 + r14 + 0x18]
	mov	rbx, qword ptr [rbp - 0x80]
	mov	qword ptr [r15 + r14 + 0x20], rbx
	test	rbx, rbx
	jle	.label_354
	mov	qword ptr [rbp - 0x78], rax
	mov	qword ptr [rax], rbx
	shl	rbx, 3
	mov	rdi, rbx
	call	malloc
	mov	qword ptr [r15 + r14 + 0x28], rax
	test	rax, rax
	je	.label_359
	mov	rsi, qword ptr [rbp - 0x60]
	mov	rdi, rax
	mov	rdx, rbx
	call	memcpy
	jmp	.label_299
.label_354:
	xorps	xmm0, xmm0
	movups	xmmword ptr [rax], xmm0
	mov	qword ptr [rax + 0x10], 0
.label_299:
	mov	r15, qword ptr [rbp - 0x40]
.label_320:
	mov	r8, qword ptr [rbp - 0x30]
.label_332:
	test	r12, r12
	jns	.label_362
	cmp	r12, -2
	je	.label_335
	nop	dword ptr [rax]
.label_307:
	test	r13, r13
	je	.label_331
.label_312:
	mov	rcx, qword ptr [r13]
	lea	rax, [rcx - 1]
	mov	qword ptr [r13], rax
	test	rcx, rcx
	jle	.label_319
	mov	rcx, qword ptr [r13 + 0x10]
	shl	rax, 4
	lea	rbx, [rax + rax*2]
	mov	r14, qword ptr [rcx + rbx]
	mov	rsi, qword ptr [rcx + rbx + 0x10]
	mov	r15, qword ptr [rbp - 0x40]
	mov	rdi, r15
	mov	rdx, qword ptr [rbp - 0x50]
	call	memcpy
	mov	rdi, qword ptr [rbp - 0x60]
	call	free
	mov	rax, qword ptr [r13 + 0x10]
	mov	rdi, qword ptr [rax + rbx + 0x10]
	call	free
	mov	r8, r14
	mov	rax, qword ptr [r13 + 0x10]
	mov	rcx, qword ptr [rax + rbx + 0x28]
	mov	qword ptr [rbp - 0x60], rcx
	movups	xmm0, xmmword ptr [rax + rbx + 0x18]
	movaps	xmmword ptr [rbp - 0x70], xmm0
	mov	r12, qword ptr [rax + rbx + 8]
.label_362:
	cmp	r8, qword ptr [r15 + 8]
	mov	r14, r12
	mov	rbx, qword ptr [rbp - 0x90]
	mov	r12, qword ptr [rbp - 0x58]
	jle	.label_313
	mov	rdi, qword ptr [rbp - 0x60]
.label_329:
	call	free
	mov	eax, dword ptr [rbp - 0x34]
	test	al, al
	je	.label_321
	mov	rdi, qword ptr [rbp - 0x48]
	call	free
.label_321:
	xor	ecx, ecx
	test	r13, r13
	je	.label_304
	cmp	qword ptr [r13], 0
	jle	.label_323
	xor	ebx, ebx
	xor	r15d, r15d
	nop	dword ptr [rax]
.label_328:
	mov	rax, qword ptr [r13 + 0x10]
	mov	rdi, qword ptr [rax + rbx + 0x28]
	call	free
	mov	rax, qword ptr [r13 + 0x10]
	mov	rdi, qword ptr [rax + rbx + 0x10]
	call	free
	inc	r15
	add	rbx, 0x30
	cmp	r15, qword ptr [r13]
	jl	.label_328
.label_323:
	mov	rdi, qword ptr [r13 + 0x10]
.label_345:
	call	free
	xor	ecx, ecx
.label_304:
	mov	eax, ecx
	lea	rsp, [rbp - 0x28]
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_331:
	mov	rdi, qword ptr [rbp - 0x60]
	call	free
	mov	ecx, 1
	mov	eax, dword ptr [rbp - 0x34]
	test	al, al
	je	.label_304
	mov	rdi, qword ptr [rbp - 0x48]
	call	free
	mov	ecx, 1
	jmp	.label_304
.label_303:
	mov	rdi, qword ptr [rbp - 0x60]
	call	free
	xor	ecx, ecx
	mov	eax, dword ptr [rbp - 0x34]
	test	al, al
	je	.label_304
	mov	rdi, qword ptr [rbp - 0x48]
	jmp	.label_345
.label_317:
	mov	rdi, qword ptr [rbp - 0x60]
	call	free
	mov	eax, dword ptr [rbp - 0x34]
	test	al, al
	je	.label_348
	mov	rdi, qword ptr [rbp - 0x48]
	call	free
.label_348:
	cmp	qword ptr [r13], 0
	jle	.label_323
	xor	ebx, ebx
	xor	r14d, r14d
	nop	word ptr [rax + rax]
.label_333:
	mov	rax, qword ptr [r13 + 0x10]
	mov	rdi, qword ptr [rax + rbx + 0x28]
	call	free
	mov	rax, qword ptr [r13 + 0x10]
	mov	rdi, qword ptr [rax + rbx + 0x10]
	call	free
	inc	r14
	add	rbx, 0x30
	cmp	r14, qword ptr [r13]
	jl	.label_333
	jmp	.label_323
.label_359:
	xorps	xmm0, xmm0
	mov	rax, qword ptr [rbp - 0x78]
	movups	xmmword ptr [rax], xmm0
.label_335:
	mov	rdi, qword ptr [rbp - 0x60]
	call	free
	mov	eax, dword ptr [rbp - 0x34]
	test	al, al
	je	.label_357
	mov	rdi, qword ptr [rbp - 0x48]
	call	free
.label_357:
	mov	ecx, 0xc
	test	r13, r13
	je	.label_304
	cmp	qword ptr [r13], 0
	jle	.label_342
	xor	ebx, ebx
	xor	r15d, r15d
.label_363:
	mov	rax, qword ptr [r13 + 0x10]
	mov	rdi, qword ptr [rax + rbx + 0x28]
	call	free
	mov	rax, qword ptr [r13 + 0x10]
	mov	rdi, qword ptr [rax + rbx + 0x10]
	call	free
	inc	r15
	add	rbx, 0x30
	cmp	r15, qword ptr [r13]
	jl	.label_363
	jmp	.label_342
.label_319:
	mov	edi, OFFSET FLAT:label_365
	mov	esi, OFFSET FLAT:label_366
	mov	edx, 0x555
	mov	ecx, OFFSET FLAT:label_367
	call	__assert_fail
	.section	.text
	.align	16
	#Procedure 0x405816
	.globl sub_405816
	.type sub_405816, @function
sub_405816:

	nop	word ptr cs:[rax + rax]
.label_370:
	mov	rcx, qword ptr [r8 + rbx*8]
	mov	rsi, rcx
	shl	rsi, 4
	mov	esi, dword ptr [rdi + rsi + 8]
	cmp	sil, 2
	jne	.label_368
	shr	esi, 8
	test	si, 0x3ff
	je	.label_369
	test	sil, 8
	jne	.label_368
	test	eax, eax
	jne	.label_369
	test	sil, sil
	jns	.label_369
.label_368:
	inc	rbx
	cmp	rbx, rdx
	mov	ecx, 0
	jl	.label_370
.label_369:
	mov	rax, rcx
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	.section	.text
	.align	16
	#Procedure 0x405866
	.globl sub_405866
	.type sub_405866, @function
sub_405866:

	nop	word ptr cs:[rax + rax]
.label_377:
	test	ecx, ecx
	jne	.label_370
.label_372:
	mov	rcx, qword ptr [r8 + rbx*8]
	mov	rsi, rcx
	shl	rsi, 4
	mov	esi, dword ptr [rdi + rsi + 8]
	cmp	sil, 2
	jne	.label_371
	shr	esi, 8
	test	si, 0x3ff
	je	.label_369
	test	sil, 0x28
	jne	.label_371
	test	eax, eax
	jne	.label_369
	test	sil, sil
	jns	.label_369
	nop	
.label_371:
	inc	rbx
	cmp	rbx, rdx
	mov	ecx, 0
	jl	.label_372
	jmp	.label_369
	.section	.text
	.align	16
	#Procedure 0x4058b3
	.globl sub_4058b3
	.type sub_4058b3, @function
sub_4058b3:

	nop	
	.section	.text
	.align	16
	#Procedure 0x4058b4

	.globl check_halt_state_context
	.type check_halt_state_context, @function
check_halt_state_context:
	push	r14
	push	rbx
	push	rax
	mov	r14, rsi
	mov	rbx, rdi
	mov	eax, dword ptr [rbx + 0xa0]
	mov	rsi, rdx
	mov	edx, eax
	call	re_string_context_at
	mov	rdx, qword ptr [r14 + 0x10]
	xor	ecx, ecx
	test	rdx, rdx
	jle	.label_369
	mov	esi, eax
	mov	rcx, qword ptr [rbx + 0x98]
	mov	r8, qword ptr [r14 + 0x18]
	mov	rdi, qword ptr [rcx]
	mov	ecx, eax
	and	ecx, 2
	and	eax, 8
	xor	ebx, ebx
	test	sil, 1
	jne	.label_377
	test	ecx, ecx
	jne	.label_373
	nop	word ptr cs:[rax + rax]
.label_375:
	mov	rcx, qword ptr [r8 + rbx*8]
	mov	rsi, rcx
	shl	rsi, 4
	mov	esi, dword ptr [rdi + rsi + 8]
	cmp	sil, 2
	jne	.label_376
	shr	esi, 8
	test	si, 0x3ff
	je	.label_369
	test	sil, 0x24
	jne	.label_376
	test	eax, eax
	jne	.label_369
	test	sil, sil
	jns	.label_369
	nop	word ptr [rax + rax]
.label_376:
	inc	rbx
	cmp	rbx, rdx
	mov	ecx, 0
	jl	.label_375
	jmp	.label_369
	.section	.text
	.align	16
	#Procedure 0x405966
	.globl sub_405966
	.type sub_405966, @function
sub_405966:

	nop	word ptr cs:[rax + rax]
.label_373:
	mov	rcx, qword ptr [r8 + rbx*8]
	mov	rsi, rcx
	shl	rsi, 4
	mov	esi, dword ptr [rdi + rsi + 8]
	cmp	sil, 2
	jne	.label_374
	shr	esi, 8
	test	si, 0x3ff
	je	.label_369
	test	sil, 4
	jne	.label_374
	test	eax, eax
	jne	.label_369
	test	sil, sil
	jns	.label_369
.label_374:
	inc	rbx
	cmp	rbx, rdx
	mov	ecx, 0
	jl	.label_373
	jmp	.label_369
	.section	.text
	.align	16
	#Procedure 0x4059c0

	.globl check_dst_limits_calc_pos
	.type check_dst_limits_calc_pos, @function
check_dst_limits_calc_pos:
	mov	r10, qword ptr [rdi + 0xd8]
	lea	rsi, [rsi + rsi*4]
	mov	r11, qword ptr [r10 + rsi*8 + 0x10]
	mov	eax, 0xffffffff
	cmp	r11, r8
	jg	.label_378
	mov	r10, qword ptr [r10 + rsi*8 + 0x18]
	mov	eax, 1
	cmp	r10, r8
	jl	.label_378
	push	rbx
	xor	ebx, ebx
	cmp	r11, r8
	sete	bl
	xor	esi, esi
	cmp	r10, r8
	sete	sil
	add	esi, esi
	xor	eax, eax
	or	esi, ebx
	pop	rbx
	je	.label_378
	mov	r8, r9
	jmp	check_dst_limits_calc_pos_1
.label_378:
	ret	
	.section	.text
	.align	16
	#Procedure 0x405a0a
	.globl sub_405a0a
	.type sub_405a0a, @function
sub_405a0a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405a10

	.globl check_dst_limits_calc_pos_1
	.type check_dst_limits_calc_pos_1, @function
check_dst_limits_calc_pos_1:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x68
	mov	r9, rcx
	mov	qword ptr [rsp + 0x10], rdx
	mov	dword ptr [rsp + 0xc], esi
	mov	qword ptr [rsp + 0x30], rdi
	mov	rdi, qword ptr [rdi + 0x98]
	mov	rax, qword ptr [rdi + 0x30]
	lea	rcx, [r9 + r9*2]
	cmp	qword ptr [rax + rcx*8 + 8], 0
	jle	.label_384
	lea	r10, [rax + rcx*8 + 8]
	mov	edx, 1
	mov	rcx, qword ptr [rsp + 0x10]
	shl	rdx, cl
	mov	eax, dword ptr [rsp + 0xc]
	mov	esi, eax
	shl	esi, 0x1f
	sar	esi, 0x1f
	mov	dword ptr [rsp + 0x1c], esi
	mov	qword ptr [rsp + 0x60], rdx
	xor	rdx, 0xffff
	mov	qword ptr [rsp + 0x58], rdx
	mov	edx, eax
	and	edx, 2
	mov	dword ptr [rsp + 0x18], edx
	shr	edx, 1
	cmp	rcx, 0x3f
	setg	cl
	mov	dword ptr [rsp + 0x2c], edx
	or	cl, dl
	mov	byte ptr [rsp + 0xb], cl
	and	eax, 1
	mov	dword ptr [rsp + 0x54], eax
	xor	r14d, r14d
	mov	qword ptr [rsp + 0x20], r8
	mov	qword ptr [rsp + 0x48], r9
	mov	qword ptr [rsp + 0x40], rdi
	mov	qword ptr [rsp + 0x38], r10
	nop	word ptr [rax + rax]
.label_391:
	mov	rax, qword ptr [r10 + 8]
	mov	r15, qword ptr [rax + r14*8]
	mov	rax, qword ptr [rdi]
	mov	rsi, r15
	shl	rsi, 4
	lea	rdx, [rax + rsi]
	mov	al, byte ptr [rax + rsi + 8]
	cmp	al, 9
	je	.label_394
	cmp	al, 8
	je	.label_401
	cmp	al, 4
	jne	.label_379
	cmp	r8, -1
	je	.label_379
	lea	r13, [r8 + r8*4]
	shl	r13, 3
	mov	rax, qword ptr [rsp + 0x30]
	add	r13, qword ptr [rax + 0xd8]
	cmp	qword ptr [rsp + 0x10], 0x3f
	jg	.label_405
	mov	r12d, ecx
	nop	
.label_402:
	mov	ebp, 7
	cmp	qword ptr [r13], r15
	jne	.label_388
	movzx	eax, word ptr [r13 + 0x22]
	test	qword ptr [rsp + 0x60], rax
	je	.label_388
	mov	rax, qword ptr [rdi + 0x28]
	lea	rcx, [r15 + r15*2]
	mov	rax, qword ptr [rax + rcx*8 + 0x10]
	mov	rcx, qword ptr [rax]
	mov	ebp, 1
	cmp	rcx, r9
	jne	.label_393
	mov	ecx, dword ptr [rsp + 0x1c]
	jmp	.label_386
.label_393:
	mov	rdi, qword ptr [rsp + 0x30]
	mov	esi, dword ptr [rsp + 0xc]
	mov	rdx, qword ptr [rsp + 0x10]
	mov	r8, qword ptr [rsp + 0x20]
	call	check_dst_limits_calc_pos_1
	mov	r10, qword ptr [rsp + 0x38]
	mov	rdi, qword ptr [rsp + 0x40]
	mov	r9, qword ptr [rsp + 0x48]
	mov	r8, qword ptr [rsp + 0x20]
	mov	ecx, 0xffffffff
	cmp	eax, -1
	je	.label_386
	test	eax, eax
	jne	.label_385
	cmp	dword ptr [rsp + 0x18], 0
	mov	ecx, r12d
	mov	eax, 0
	cmovne	ecx, eax
	cmp	byte ptr [rsp + 0xb], 0
	mov	ebp, dword ptr [rsp + 0x2c]
	jne	.label_386
.label_385:
	movzx	eax, word ptr [r13 + 0x22]
	mov	rcx, qword ptr [rsp + 0x58]
	and	ecx, eax
	mov	word ptr [r13 + 0x22], cx
	xor	ebp, ebp
	nop	word ptr [rax + rax]
.label_388:
	mov	ecx, r12d
.label_386:
	mov	eax, ebp
	and	al, 7
	cmp	al, 7
	je	.label_400
	test	al, al
	jne	.label_381
.label_400:
	cmp	byte ptr [r13 + 0x20], 0
	lea	r13, [r13 + 0x28]
	mov	r12d, ecx
	jne	.label_402
	jmp	.label_379
	.section	.text
	.align	16
	#Procedure 0x405bfa
	.globl sub_405bfa
	.type sub_405bfa, @function
sub_405bfa:

	nop	word ptr [rax + rax]
.label_394:
	cmp	dword ptr [rsp + 0x18], 0
	je	.label_379
	xor	eax, eax
	jmp	.label_395
	.section	.text
	.align	16
	#Procedure 0x405c0f
	.globl sub_405c0f
	.type sub_405c0f, @function
sub_405c0f:

	nop	
.label_401:
	cmp	dword ptr [rsp + 0x54], 0
	je	.label_379
	mov	eax, 0xffffffff
.label_395:
	mov	rsi, qword ptr [rsp + 0x10]
	cmp	qword ptr [rdx], rsi
	jne	.label_379
	jmp	.label_387
.label_405:
	cmp	byte ptr [rsp + 0xb], 0
	je	.label_392
	mov	ebx, ecx
.label_397:
	mov	ebp, 7
	cmp	qword ptr [r13], r15
	jne	.label_380
	mov	rax, qword ptr [rdi + 0x28]
	lea	rcx, [r15 + r15*2]
	mov	rax, qword ptr [rax + rcx*8 + 0x10]
	mov	rcx, qword ptr [rax]
	mov	ebp, 1
	cmp	rcx, r9
	jne	.label_398
	mov	ecx, dword ptr [rsp + 0x1c]
	jmp	.label_382
	.section	.text
	.align	16
	#Procedure 0x405c6f
	.globl sub_405c6f
	.type sub_405c6f, @function
sub_405c6f:

	nop	
.label_398:
	mov	rdi, qword ptr [rsp + 0x30]
	mov	esi, dword ptr [rsp + 0xc]
	mov	rdx, qword ptr [rsp + 0x10]
	mov	r8, qword ptr [rsp + 0x20]
	call	check_dst_limits_calc_pos_1
	mov	r10, qword ptr [rsp + 0x38]
	mov	rdi, qword ptr [rsp + 0x40]
	mov	r9, qword ptr [rsp + 0x48]
	mov	r8, qword ptr [rsp + 0x20]
	mov	ecx, 0xffffffff
	cmp	eax, -1
	je	.label_382
	test	eax, eax
	jne	.label_390
	cmp	dword ptr [rsp + 0x18], 0
	mov	eax, 0
	cmovne	ebx, eax
	mov	ecx, ebx
	mov	ebp, dword ptr [rsp + 0x2c]
	jmp	.label_382
.label_390:
	xor	ebp, ebp
	nop	word ptr cs:[rax + rax]
.label_380:
	mov	ecx, ebx
.label_382:
	mov	eax, ebp
	and	al, 7
	cmp	al, 7
	je	.label_399
	test	al, al
	jne	.label_381
.label_399:
	cmp	byte ptr [r13 + 0x20], 0
	lea	r13, [r13 + 0x28]
	mov	ebx, ecx
	jne	.label_397
	jmp	.label_379
.label_392:
	mov	ebx, ecx
	nop	word ptr [rax + rax]
.label_396:
	mov	ebp, 7
	cmp	qword ptr [r13], r15
	jne	.label_404
	mov	rax, qword ptr [rdi + 0x28]
	lea	rcx, [r15 + r15*2]
	mov	rax, qword ptr [rax + rcx*8 + 0x10]
	mov	rcx, qword ptr [rax]
	mov	ebp, 1
	cmp	rcx, r9
	jne	.label_383
	mov	ecx, dword ptr [rsp + 0x1c]
	jmp	.label_389
	.section	.text
	.align	16
	#Procedure 0x405d2b
	.globl sub_405d2b
	.type sub_405d2b, @function
sub_405d2b:

	nop	dword ptr [rax + rax]
.label_383:
	mov	rdi, qword ptr [rsp + 0x30]
	mov	esi, dword ptr [rsp + 0xc]
	mov	rdx, qword ptr [rsp + 0x10]
	mov	r8, qword ptr [rsp + 0x20]
	call	check_dst_limits_calc_pos_1
	mov	r10, qword ptr [rsp + 0x38]
	mov	rdi, qword ptr [rsp + 0x40]
	mov	r9, qword ptr [rsp + 0x48]
	mov	r8, qword ptr [rsp + 0x20]
	mov	ecx, 0xffffffff
	cmp	eax, -1
	je	.label_389
	test	eax, eax
	jne	.label_403
	movzx	eax, word ptr [r13 + 0x22]
	mov	rcx, qword ptr [rsp + 0x58]
	and	ecx, eax
	mov	word ptr [r13 + 0x22], cx
.label_403:
	xor	ebp, ebp
.label_404:
	mov	ecx, ebx
.label_389:
	mov	eax, ebp
	and	al, 7
	cmp	al, 7
	je	.label_406
	test	al, al
	jne	.label_381
.label_406:
	cmp	byte ptr [r13 + 0x20], 0
	lea	r13, [r13 + 0x28]
	mov	ebx, ecx
	jne	.label_396
	jmp	.label_379
.label_381:
	test	ebp, ebp
	mov	eax, ecx
	jne	.label_387
	nop	word ptr cs:[rax + rax]
.label_379:
	inc	r14
	cmp	r14, qword ptr [r10]
	jl	.label_391
.label_384:
	mov	eax, dword ptr [rsp + 0xc]
	shr	eax, 1
	and	eax, 1
.label_387:
	add	rsp, 0x68
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x405dd4
	.globl sub_405dd4
	.type sub_405dd4, @function
sub_405dd4:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405de0

	.globl dup_safer
	.type dup_safer, @function
dup_safer:
	xor	esi, esi
	mov	edx, 3
	xor	eax, eax
	jmp	rpl_fcntl
	.section	.text
	.align	16
	#Procedure 0x405dee
	.globl sub_405dee
	.type sub_405dee, @function
sub_405dee:

	nop	
	.section	.text
	.align	16
	#Procedure 0x405df0

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
	jne	.label_408
	call	locale_charset
	movsx	ecx, byte ptr [rax]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x47
	je	.label_415
	cmp	ecx, 0x55
	jne	.label_407
	movsx	ecx, byte ptr [rax + 1]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x54
	jne	.label_407
	movsx	ecx, byte ptr [rax + 2]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x46
	jne	.label_407
	cmp	byte ptr [rax + 3], 0x2d
	jne	.label_407
	cmp	byte ptr [rax + 4], 0x38
	jne	.label_407
	cmp	byte ptr [rax + 5], 0
	jne	.label_407
	cmp	byte ptr [rbx], 0x60
	mov	ecx, OFFSET FLAT:label_412
	mov	eax, OFFSET FLAT:label_413
	jmp	.label_414
.label_415:
	movsx	ecx, byte ptr [rax + 1]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x42
	jne	.label_407
	cmp	byte ptr [rax + 2], 0x31
	jne	.label_407
	cmp	byte ptr [rax + 3], 0x38
	jne	.label_407
	cmp	byte ptr [rax + 4], 0x30
	jne	.label_407
	cmp	byte ptr [rax + 5], 0x33
	jne	.label_407
	cmp	byte ptr [rax + 6], 0x30
	jne	.label_407
	cmp	byte ptr [rax + 7], 0
	je	.label_409
.label_407:
	cmp	ebp, 9
	mov	ecx, OFFSET FLAT:label_410
	mov	eax, OFFSET FLAT:label_411
.label_414:
	cmove	rax, rcx
.label_408:
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
.label_409:
	cmp	byte ptr [rbx], 0x60
	mov	ecx, OFFSET FLAT:label_416
	mov	eax, OFFSET FLAT:label_417
	jmp	.label_414
	.section	.text
	.align	16
	#Procedure 0x405eb5
	.globl sub_405eb5
	.type sub_405eb5, @function
sub_405eb5:

	nop	word ptr cs:[rax + rax]
.label_418:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x405ec5
	.globl sub_405ec5
	.type sub_405ec5, @function
sub_405ec5:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405ed3
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
	je	.label_419
	test	r15, r15
	je	.label_418
.label_419:
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
	#Procedure 0x405f10

	.globl expand_bkref_cache
	.type expand_bkref_cache, @function
expand_bkref_cache:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x58
	mov	r15, rdx
	mov	r14, qword ptr [rdi + 0x98]
	mov	r9, qword ptr [rdi + 0xc8]
	xor	eax, eax
	test	r9, r9
	mov	r11d, 0
	jle	.label_424
	mov	r10, qword ptr [rdi + 0xd8]
	xor	r11d, r11d
	mov	rdx, r9
	nop	dword ptr [rax]
.label_443:
	lea	rbp, [rdx + r11]
	mov	rbx, rbp
	shr	rbx, 0x3f
	add	rbx, rbp
	sar	rbx, 1
	lea	rbp, [rbx + rbx*4]
	cmp	qword ptr [r10 + rbp*8 + 8], r15
	cmovge	rdx, rbx
	lea	rbp, [rbx + 1]
	cmovl	r11, rbp
	cmp	r11, rdx
	jl	.label_443
.label_424:
	cmp	r11, r9
	jge	.label_421
	cmp	r11, -1
	je	.label_421
	mov	qword ptr [rsp + 0x50], rcx
	mov	dword ptr [rsp + 0x44], r8d
	mov	rcx, qword ptr [rdi + 0xd8]
	lea	rdx, [r11 + r11*4]
	mov	qword ptr [rsp + 0x48], rdx
	cmp	qword ptr [rcx + rdx*8 + 8], r15
	jne	.label_421
	mov	dword ptr [rsp + 0xc], eax
	mov	qword ptr [rsp + 0x38], rsi
	mov	qword ptr [rsp + 0x30], rdi
	mov	qword ptr [rsp + 0x28], r14
	jmp	.label_437
.label_432:
	mov	rcx, qword ptr [rdi + 0xd8]
	nop	
.label_437:
	mov	rax, qword ptr [rsp + 0x48]
	lea	r13, [rcx + rax*8]
	nop	dword ptr [rax]
.label_433:
	mov	r9, qword ptr [rsi + 8]
	test	r9, r9
	jle	.label_428
	mov	rdx, qword ptr [r13]
	dec	r9
	mov	r8, qword ptr [rsi + 0x10]
	mov	eax, 0
	je	.label_448
	mov	rcx, r9
	xor	eax, eax
	nop	word ptr cs:[rax + rax]
.label_446:
	lea	rbp, [rax + rcx]
	shr	rbp, 1
	cmp	qword ptr [r8 + rbp*8], rdx
	lea	rbx, [rbp + 1]
	cmovl	rax, rbx
	cmovge	rcx, rbp
	cmp	rax, rcx
	jb	.label_446
.label_448:
	cmp	rax, -1
	je	.label_428
	cmp	qword ptr [r8 + rax*8], rdx
	jne	.label_428
	mov	r12, qword ptr [r13 + 0x18]
	add	r12, r15
	sub	r12, qword ptr [r13 + 0x10]
	cmp	r12, r15
	jne	.label_440
	test	r9, r9
	mov	rax, qword ptr [r14 + 0x28]
	lea	rdx, [rdx + rdx*2]
	mov	rdx, qword ptr [rax + rdx*8 + 0x10]
	mov	rbx, qword ptr [rdx]
	mov	edx, 0
	je	.label_444
	xor	edx, edx
.label_450:
	lea	rax, [rdx + r9]
	shr	rax, 1
	cmp	qword ptr [r8 + rax*8], rbx
	lea	rcx, [rax + 1]
	cmovl	rdx, rcx
	cmovge	r9, rax
	cmp	rdx, r9
	jb	.label_450
.label_444:
	cmp	rdx, -1
	je	.label_423
	mov	ecx, 4
	cmp	qword ptr [r8 + rdx*8], rbx
	je	.label_425
.label_423:
	movaps	xmm0, xmmword ptr [rip + label_51]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	mov	edi, 8
	call	malloc
	mov	qword ptr [rsp + 0x20], rax
	test	rax, rax
	je	.label_439
	mov	qword ptr [rax], rbx
	xor	r12d, r12d
.label_438:
	mov	dword ptr [rsp + 8], r12d
	mov	rdi, r14
	lea	rbx, [rsp + 0x10]
	mov	rsi, rbx
	mov	rdx, qword ptr [rsp + 0x50]
	mov	ecx, dword ptr [rsp + 0x44]
	call	check_arrival_expand_ecl
	mov	r14d, eax
	mov	rbp, qword ptr [rsp + 0x38]
	mov	rdi, rbp
	mov	rsi, rbx
	call	re_node_set_merge
	mov	ebx, eax
	mov	rdi, qword ptr [rsp + 0x20]
	call	free
	mov	rsi, rbp
	mov	eax, r14d
	or	eax, r12d
	mov	ecx, 2
	or	eax, ebx
	mov	rdi, qword ptr [rsp + 0x30]
	je	.label_425
	test	r14d, r14d
	cmovne	ebx, r14d
	test	r12d, r12d
	cmovne	ebx, r12d
	mov	dword ptr [rsp + 8], ebx
	mov	ecx, 1
	mov	dword ptr [rsp + 0xc], ebx
	jmp	.label_425
.label_440:
	mov	rax, qword ptr [r14 + 0x18]
	mov	r14, qword ptr [rax + rdx*8]
	mov	rax, qword ptr [rdi + 0xb8]
	mov	r9, qword ptr [rax + r12*8]
	test	r9, r9
	je	.label_441
	mov	r8, qword ptr [r9 + 0x10]
	test	r8, r8
	jle	.label_445
	mov	rcx, r8
	dec	rcx
	mov	rax, qword ptr [r9 + 0x18]
	mov	edx, 0
	je	.label_447
	xor	edx, edx
	nop	
.label_420:
	lea	rbp, [rdx + rcx]
	shr	rbp, 1
	cmp	qword ptr [rax + rbp*8], r14
	lea	rbx, [rbp + 1]
	cmovl	rdx, rbx
	cmovge	rcx, rbp
	cmp	rdx, rcx
	jb	.label_420
.label_447:
	cmp	rdx, -1
	je	.label_431
	mov	ecx, 4
	cmp	qword ptr [rax + rdx*8], r14
	je	.label_425
.label_431:
	mov	qword ptr [rsp + 0x18], r8
	test	r8, r8
	jle	.label_436
	mov	rbp, r9
	mov	qword ptr [rsp + 0x10], r8
	shl	r8, 3
	mov	rdi, r8
	mov	rbx, r8
	call	malloc
	mov	qword ptr [rsp + 0x20], rax
	test	rax, rax
	je	.label_435
	mov	rsi, qword ptr [rbp + 0x18]
	mov	rdi, rax
	mov	rdx, rbx
	call	memcpy
	jmp	.label_449
.label_441:
	movaps	xmm0, xmmword ptr [rip + label_51]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	mov	edi, 8
	call	malloc
	mov	qword ptr [rsp + 0x20], rax
	test	rax, rax
	je	.label_422
	mov	qword ptr [rax], r14
	mov	dword ptr [rsp + 8], 0
	jmp	.label_426
.label_445:
	mov	qword ptr [rsp + 0x18], r8
.label_436:
	xorps	xmm0, xmm0
	movaps	xmmword ptr [rsp + 0x10], xmm0
	mov	qword ptr [rsp + 0x20], 0
.label_449:
	xor	ebx, ebx
.label_427:
	mov	dword ptr [rsp + 8], ebx
	lea	rdi, [rsp + 0x10]
	mov	rsi, r14
	call	re_node_set_insert
	test	ebx, ebx
	jne	.label_442
	xor	al, 1
	jne	.label_442
.label_426:
	lea	rdi, [rsp + 8]
	mov	r14, qword ptr [rsp + 0x28]
	mov	rsi, r14
	lea	rdx, [rsp + 0x10]
	call	re_acquire_state
	mov	rbx, qword ptr [rsp + 0x30]
	mov	rcx, qword ptr [rbx + 0xb8]
	mov	qword ptr [rcx + r12*8], rax
	mov	rdi, qword ptr [rsp + 0x20]
	call	free
	mov	rdi, rbx
	mov	rax, qword ptr [rdi + 0xb8]
	cmp	qword ptr [rax + r12*8], 0
	sete	dl
	mov	eax, dword ptr [rsp + 8]
	test	eax, eax
	setne	cl
	and	cl, dl
	jne	.label_429
	mov	eax, dword ptr [rsp + 0xc]
.label_429:
	movzx	ecx, cl
	mov	dword ptr [rsp + 0xc], eax
	mov	rsi, qword ptr [rsp + 0x38]
	jmp	.label_434
.label_439:
	xorps	xmm0, xmm0
	movaps	xmmword ptr [rsp + 0x10], xmm0
	mov	r12d, 0xc
	jmp	.label_438
.label_442:
	mov	rdi, qword ptr [rsp + 0x20]
	call	free
	test	ebx, ebx
	mov	eax, 0xc
	cmove	ebx, eax
	mov	dword ptr [rsp + 8], ebx
	mov	ecx, 1
	mov	dword ptr [rsp + 0xc], ebx
	jmp	.label_451
.label_422:
	xorps	xmm0, xmm0
	movaps	xmmword ptr [rsp + 0x10], xmm0
	mov	dword ptr [rsp + 8], 0xc
	mov	dword ptr [rsp + 0xc], 0xc
	mov	ecx, 1
.label_451:
	mov	rsi, qword ptr [rsp + 0x38]
	mov	rdi, qword ptr [rsp + 0x30]
.label_425:
	mov	r14, qword ptr [rsp + 0x28]
.label_434:
	test	ecx, ecx
	je	.label_428
	cmp	ecx, 4
	jne	.label_430
.label_428:
	xor	eax, eax
	cmp	byte ptr [r13 + 0x20], 0
	lea	r13, [r13 + 0x28]
	jne	.label_433
	jmp	.label_421
.label_435:
	xorps	xmm0, xmm0
	movaps	xmmword ptr [rsp + 0x10], xmm0
	mov	ebx, 0xc
	jmp	.label_427
.label_430:
	cmp	ecx, 2
	je	.label_432
	mov	eax, dword ptr [rsp + 0xc]
.label_421:
	add	rsp, 0x58
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x406361
	.globl sub_406361
	.type sub_406361, @function
sub_406361:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406370

	.globl free_state
	.type free_state, @function
free_state:
	push	rbx
	mov	rbx, rdi
	mov	rdi, qword ptr [rbx + 0x30]
	call	free
	mov	rdi, qword ptr [rbx + 0x48]
	call	free
	mov	rax, qword ptr [rbx + 0x50]
	lea	rcx, [rbx + 8]
	cmp	rax, rcx
	je	.label_452
	mov	rdi, qword ptr [rax + 0x10]
	call	free
	mov	rdi, qword ptr [rbx + 0x50]
	call	free
.label_452:
	mov	rdi, qword ptr [rbx + 0x18]
	call	free
	mov	rdi, qword ptr [rbx + 0x60]
	call	free
	mov	rdi, qword ptr [rbx + 0x58]
	call	free
	mov	rdi, rbx
	pop	rbx
	jmp	free
	.section	.text
	.align	16
	#Procedure 0x4063c9
	.globl sub_4063c9
	.type sub_4063c9, @function
sub_4063c9:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4063d0

	.globl parse_branch
	.type parse_branch, @function
parse_branch:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x18
	mov	rbp, r9
	mov	r12, rdx
	mov	r13, rsi
	mov	r15, qword ptr [r13]
	mov	qword ptr [rsp + 8], rdi
	mov	qword ptr [rsp + 0x10], rcx
	mov	qword ptr [rsp], r8
	call	parse_expression
	mov	rbx, rax
	xor	r14d, r14d
	test	rbx, rbx
	jne	.label_484
	mov	eax, dword ptr [rbp]
	test	eax, eax
	jne	.label_453
.label_484:
	cmp	qword ptr [rsp], 0
	jne	.label_454
	jmp	.label_456
	.section	.text
	.align	16
	#Procedure 0x406421
	.globl sub_406421
	.type sub_406421, @function
sub_406421:

	nop	word ptr cs:[rax + rax]
.label_471:
	test	rbx, rbx
	cmove	rbx, r14
.label_456:
	movzx	eax, byte ptr [r12 + 8]
	or	al, 8
	cmp	al, 0xa
	je	.label_457
	xor	r8d, r8d
	mov	rdi, qword ptr [rsp + 8]
	mov	rsi, r13
	mov	rdx, r12
	mov	rcx, qword ptr [rsp + 0x10]
	mov	r9, rbp
	call	parse_expression
	mov	rcx, rbp
	mov	r14, rax
	test	rbx, rbx
	setne	al
	test	r14, r14
	jne	.label_466
	mov	ecx, dword ptr [rcx]
	test	ecx, ecx
	jne	.label_468
.label_466:
	test	rbx, rbx
	je	.label_471
	test	r14, r14
	je	.label_471
	mov	ecx, dword ptr [r15 + 0x80]
	cmp	ecx, 0xf
	je	.label_473
	mov	rax, qword ptr [r15 + 0x70]
.label_483:
	lea	edx, [rcx + 1]
	mov	dword ptr [r15 + 0x80], edx
	movsxd	rcx, ecx
	shl	rcx, 6
	lea	rdx, [rax + rcx + 8]
	mov	qword ptr [rax + rcx + 8], 0
	mov	qword ptr [rax + rcx + 0x10], rbx
	mov	qword ptr [rax + rcx + 0x18], r14
	mov	dword ptr [rax + rcx + 0x38], 0x10
	xorps	xmm0, xmm0
	movups	xmmword ptr [rax + rcx + 0x20], xmm0
	mov	qword ptr [rax + rcx + 0x40], -1
	mov	qword ptr [rbx], rdx
	mov	qword ptr [r14], rdx
	mov	rbx, rdx
	jmp	.label_456
.label_473:
	mov	edi, 0x3c8
	call	malloc
	test	rax, rax
	je	.label_475
	mov	rcx, qword ptr [r15 + 0x70]
	mov	qword ptr [rax], rcx
	mov	qword ptr [r15 + 0x70], rax
	mov	dword ptr [r15 + 0x80], 0
	xor	ecx, ecx
	jmp	.label_483
	.section	.text
	.align	16
	#Procedure 0x406514
	.globl sub_406514
	.type sub_406514, @function
sub_406514:

	nop	word ptr cs:[rax + rax]
.label_470:
	test	rbx, rbx
	cmove	rbx, r14
.label_454:
	movzx	eax, byte ptr [r12 + 8]
	mov	ecx, eax
	or	cl, 8
	cmp	cl, 0xa
	je	.label_457
	cmp	eax, 9
	je	.label_457
	mov	rdi, qword ptr [rsp + 8]
	mov	rsi, r13
	mov	rdx, r12
	mov	rcx, qword ptr [rsp + 0x10]
	mov	r8, qword ptr [rsp]
	mov	r9, rbp
	call	parse_expression
	mov	rcx, rbp
	mov	r14, rax
	test	rbx, rbx
	setne	al
	test	r14, r14
	jne	.label_461
	mov	ecx, dword ptr [rcx]
	test	ecx, ecx
	jne	.label_468
.label_461:
	test	rbx, rbx
	je	.label_470
	test	r14, r14
	je	.label_470
	mov	ecx, dword ptr [r15 + 0x80]
	cmp	ecx, 0xf
	je	.label_472
	mov	rax, qword ptr [r15 + 0x70]
.label_482:
	lea	edx, [rcx + 1]
	mov	dword ptr [r15 + 0x80], edx
	movsxd	rcx, ecx
	shl	rcx, 6
	lea	rdx, [rax + rcx + 8]
	mov	qword ptr [rax + rcx + 8], 0
	mov	qword ptr [rax + rcx + 0x10], rbx
	mov	qword ptr [rax + rcx + 0x18], r14
	mov	dword ptr [rax + rcx + 0x38], 0x10
	xorps	xmm0, xmm0
	movups	xmmword ptr [rax + rcx + 0x20], xmm0
	mov	qword ptr [rax + rcx + 0x40], -1
	mov	qword ptr [rbx], rdx
	mov	qword ptr [r14], rdx
	mov	rbx, rdx
	jmp	.label_454
.label_472:
	mov	edi, 0x3c8
	call	malloc
	test	rax, rax
	je	.label_475
	mov	rcx, qword ptr [r15 + 0x70]
	mov	qword ptr [rax], rcx
	mov	qword ptr [r15 + 0x70], rax
	mov	dword ptr [r15 + 0x80], 0
	xor	ecx, ecx
	jmp	.label_482
.label_457:
	mov	r14, rbx
.label_453:
	mov	rax, r14
	add	rsp, 0x18
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_468:
	xor	r14d, r14d
	test	al, al
	je	.label_453
	mov	r15d, 0x400ff
	xor	r14d, r14d
	nop	word ptr [rax + rax]
.label_460:
	mov	rbp, rbx
	mov	rbx, qword ptr [rbp + 8]
	test	rbx, rbx
	jne	.label_460
	mov	rbx, qword ptr [rbp + 0x10]
	test	rbx, rbx
	jne	.label_460
.label_478:
	mov	eax, dword ptr [rbp + 0x30]
	and	eax, r15d
	cmp	eax, 3
	je	.label_464
	cmp	eax, 6
	jne	.label_465
	mov	rbx, qword ptr [rbp + 0x28]
	mov	rdi, qword ptr [rbx]
	call	free
	mov	rdi, qword ptr [rbx + 8]
	call	free
	mov	rdi, qword ptr [rbx + 0x10]
	call	free
	mov	rdi, qword ptr [rbx + 0x18]
	call	free
	mov	rdi, rbx
	jmp	.label_474
.label_464:
	mov	rdi, qword ptr [rbp + 0x28]
.label_474:
	call	free
.label_465:
	mov	rax, qword ptr [rbp]
	test	rax, rax
	je	.label_453
	mov	rbx, qword ptr [rax + 0x10]
	cmp	rbx, rbp
	mov	rbp, rax
	je	.label_478
	test	rbx, rbx
	mov	rbp, rax
	je	.label_478
	jmp	.label_460
.label_475:
	mov	rcx, rbp
	mov	r15d, 0x400ff
.label_462:
	mov	r12, r14
	mov	r14, qword ptr [r12 + 8]
	test	r14, r14
	jne	.label_462
	mov	r14, qword ptr [r12 + 0x10]
	test	r14, r14
	jne	.label_462
.label_459:
	mov	eax, dword ptr [r12 + 0x30]
	and	eax, r15d
	cmp	eax, 3
	je	.label_480
	cmp	eax, 6
	jne	.label_481
	mov	r14, qword ptr [r12 + 0x28]
	mov	rdi, qword ptr [r14]
	call	free
	mov	rdi, qword ptr [r14 + 8]
	call	free
	mov	rdi, qword ptr [r14 + 0x10]
	call	free
	mov	rdi, qword ptr [r14 + 0x18]
	call	free
	mov	rdi, r14
	jmp	.label_455
.label_480:
	mov	rdi, qword ptr [r12 + 0x28]
.label_455:
	call	free
	mov	rcx, rbp
.label_481:
	mov	rax, qword ptr [r12]
	test	rax, rax
	je	.label_458
	mov	r14, qword ptr [rax + 0x10]
	cmp	r14, r12
	mov	r12, rax
	je	.label_459
	test	r14, r14
	mov	r12, rax
	je	.label_459
	jmp	.label_462
.label_458:
	mov	r14d, 0x400ff
.label_463:
	mov	r15, rbx
	mov	rbx, qword ptr [r15 + 8]
	test	rbx, rbx
	jne	.label_463
	mov	rbx, qword ptr [r15 + 0x10]
	test	rbx, rbx
	jne	.label_463
.label_479:
	mov	eax, dword ptr [r15 + 0x30]
	and	eax, r14d
	cmp	eax, 3
	je	.label_467
	cmp	eax, 6
	jne	.label_469
	mov	rbx, qword ptr [r15 + 0x28]
	mov	rdi, qword ptr [rbx]
	call	free
	mov	rdi, qword ptr [rbx + 8]
	call	free
	mov	rdi, qword ptr [rbx + 0x10]
	call	free
	mov	rdi, qword ptr [rbx + 0x18]
	call	free
	mov	rdi, rbx
	jmp	.label_476
.label_467:
	mov	rdi, qword ptr [r15 + 0x28]
.label_476:
	call	free
	mov	rcx, rbp
.label_469:
	mov	rax, qword ptr [r15]
	test	rax, rax
	je	.label_477
	mov	rbx, qword ptr [rax + 0x10]
	cmp	rbx, r15
	mov	r15, rax
	je	.label_479
	test	rbx, rbx
	mov	r15, rax
	je	.label_479
	jmp	.label_463
.label_477:
	mov	dword ptr [rcx], 0xc
	xor	r14d, r14d
	jmp	.label_453
	.section	.text
	.align	16
	#Procedure 0x4067db
	.globl sub_4067db
	.type sub_4067db, @function
sub_4067db:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4067e0

	.globl xstrtoumax
	.type xstrtoumax, @function
xstrtoumax:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x28
	mov	r14, r8
	mov	r12d, edx
	mov	rbp, rsi
	mov	rbx, rdi
	cmp	r12d, 0x25
	jae	.label_496
	mov	qword ptr [rsp + 8], rcx
	call	__errno_location
	mov	r15, rax
	mov	dword ptr [r15], 0
	call	__ctype_b_loc
	mov	rcx, qword ptr [rax]
	mov	rdx, rbx
	nop	word ptr cs:[rax + rax]
.label_492:
	movzx	eax, byte ptr [rdx]
	inc	rdx
	test	byte ptr [rcx + rax*2 + 1], 0x20
	jne	.label_492
	test	rbp, rbp
	lea	rsi, [rsp + 0x20]
	cmovne	rsi, rbp
	mov	r13d, 4
	cmp	al, 0x2d
	je	.label_486
	xor	ebp, ebp
	xor	ecx, ecx
	mov	rdi, rbx
	mov	qword ptr [rsp + 0x18], rsi
	mov	edx, r12d
	call	__strtoul_internal
	mov	r12, rax
	mov	rax, qword ptr [rsp + 0x18]
	mov	rcx, qword ptr [rax]
	cmp	rcx, rbx
	je	.label_499
	mov	eax, dword ptr [r15]
	test	eax, eax
	je	.label_506
	cmp	eax, 0x22
	jne	.label_486
	mov	ebp, 1
.label_506:
	test	r14, r14
	mov	r15d, ebp
	jne	.label_489
	jmp	.label_491
.label_499:
	test	r14, r14
	je	.label_486
	movsx	esi, byte ptr [rbx]
	test	esi, esi
	je	.label_486
	mov	rdi, r14
	mov	rbx, rcx
	call	strchr
	mov	rcx, rbx
	xor	r15d, r15d
	mov	r12d, 1
	test	rax, rax
	je	.label_486
.label_489:
	movsx	r13d, byte ptr [rcx]
	test	r13d, r13d
	je	.label_491
	mov	qword ptr [rsp + 0x10], rcx
	mov	rdi, r14
	mov	esi, r13d
	call	strchr
	test	rax, rax
	je	.label_500
	mov	ecx, 1
	mov	esi, 0x400
	lea	eax, [r13 - 0x45]
	cmp	eax, 0x2f
	ja	.label_488
	movabs	rdx, 0x814400308945
	bt	rdx, rax
	jae	.label_488
	mov	esi, 0x30
	mov	rdi, r14
	call	strchr
	mov	ecx, 1
	mov	esi, 0x400
	test	rax, rax
	je	.label_488
	mov	rax, qword ptr [rsp + 0x10]
	movsx	eax, byte ptr [rax + 1]
	mov	ecx, 1
	mov	esi, 0x400
	cmp	eax, 0x42
	je	.label_494
	cmp	eax, 0x44
	je	.label_494
	cmp	eax, 0x69
	jne	.label_488
	xor	eax, eax
	mov	rcx, qword ptr [rsp + 0x10]
	cmp	byte ptr [rcx + 2], 0x42
	sete	al
	lea	rcx, [rax + rax + 1]
	mov	esi, 0x400
	jmp	.label_488
.label_494:
	mov	ecx, 2
	mov	esi, 0x3e8
.label_488:
	add	r13d, -0x42
	cmp	r13d, 0x35
	ja	.label_500
	xor	eax, eax
	jmp	qword ptr [(r13 * 8) + label_487]
.label_2759:
	mov	rdi, -1
	mov	rax, -1
	xor	edx, edx
	div	rsi
	cmp	rax, r12
	sbb	r8b, r8b
	mov	rbx, r12
	imul	rbx, rsi
	cmp	rax, r12
	cmovb	rbx, rdi
	cmp	rax, rbx
	sbb	dl, dl
	mov	rbp, rbx
	imul	rbp, rsi
	cmp	rax, rbx
	cmovb	rbp, rdi
	cmp	rax, rbp
	sbb	bl, bl
	imul	rsi, rbp
	cmp	rax, rbp
	cmovb	rsi, rdi
	or	dl, r8b
	jmp	.label_497
.label_500:
	mov	rax, qword ptr [rsp + 8]
	mov	qword ptr [rax], r12
	or	r15d, 2
	jmp	.label_498
.label_2760:
	mov	rdi, -1
	mov	rax, -1
	xor	edx, edx
	div	rsi
	imul	rsi, r12
	cmp	rax, r12
	cmovb	rsi, rdi
	sbb	eax, eax
	jmp	.label_501
.label_2761:
	mov	rdi, -1
	mov	rax, -1
	xor	edx, edx
	div	rsi
	cmp	rax, r12
	sbb	r8b, r8b
	mov	rbx, r12
	imul	rbx, rsi
	cmp	rax, r12
	cmovb	rbx, rdi
	cmp	rax, rbx
	sbb	dl, dl
	imul	rsi, rbx
	cmp	rax, rbx
	cmovb	rsi, rdi
	or	dl, r8b
	jmp	.label_490
.label_2763:
	mov	r9, -1
	mov	rax, -1
	xor	edx, edx
	div	rsi
	cmp	rax, r12
	sbb	r8b, r8b
	mov	rbx, r12
	imul	rbx, rsi
	cmp	rax, r12
	cmovb	rbx, r9
	cmp	rax, rbx
	sbb	dl, dl
	mov	rbp, rbx
	imul	rbp, rsi
	cmp	rax, rbx
	cmovb	rbp, r9
	cmp	rax, rbp
	sbb	r10b, r10b
	mov	rdi, rbp
	imul	rdi, rsi
	cmp	rax, rbp
	cmovb	rdi, r9
	cmp	rax, rdi
	sbb	bl, bl
	imul	rsi, rdi
	cmp	rax, rdi
	cmovb	rsi, r9
	or	dl, r8b
	jmp	.label_495
.label_2757:
	xor	eax, eax
	mov	rdx, r12
	shr	rdx, 0x36
	setne	al
	shl	r12, 0xa
	jmp	.label_493
.label_2758:
	mov	rdi, -1
	mov	rax, -1
	xor	edx, edx
	div	rsi
	cmp	rax, r12
	sbb	r8b, r8b
	mov	rbx, r12
	imul	rbx, rsi
	cmp	rax, r12
	cmovb	rbx, rdi
	cmp	rax, rbx
	sbb	dl, dl
	mov	rbp, rbx
	imul	rbp, rsi
	cmp	rax, rbx
	cmovb	rbp, rdi
	cmp	rax, rbp
	sbb	r9b, r9b
	mov	rbx, rbp
	imul	rbx, rsi
	cmp	rax, rbp
	cmovb	rbx, rdi
	cmp	rax, rbx
	sbb	r10b, r10b
	mov	rbp, rbx
	imul	rbp, rsi
	cmp	rax, rbx
	cmovb	rbp, rdi
	cmp	rax, rbp
	sbb	r11b, r11b
	mov	rbx, rbp
	imul	rbx, rsi
	cmp	rax, rbp
	cmovb	rbx, rdi
	cmp	rax, rbx
	sbb	bpl, bpl
	imul	rsi, rbx
	cmp	rax, rbx
	cmovb	rsi, rdi
	or	dl, r8b
	or	dl, r9b
	or	dl, r10b
	or	dl, r11b
	or	dl, bpl
	jmp	.label_490
.label_2762:
	mov	rdi, -1
	mov	rax, -1
	xor	edx, edx
	div	rsi
	cmp	rax, r12
	sbb	r8b, r8b
	mov	rbx, r12
	imul	rbx, rsi
	cmp	rax, r12
	cmovb	rbx, rdi
	cmp	rax, rbx
	sbb	dl, dl
	mov	rbp, rbx
	imul	rbp, rsi
	cmp	rax, rbx
	cmovb	rbp, rdi
	cmp	rax, rbp
	sbb	r9b, r9b
	mov	rbx, rbp
	imul	rbx, rsi
	cmp	rax, rbp
	cmovb	rbx, rdi
	cmp	rax, rbx
	sbb	r10b, r10b
	mov	rbp, rbx
	imul	rbp, rsi
	cmp	rax, rbx
	cmovb	rbp, rdi
	cmp	rax, rbp
	sbb	bl, bl
	imul	rsi, rbp
	cmp	rax, rbp
	cmovb	rsi, rdi
	or	dl, r8b
	or	dl, r9b
.label_495:
	or	dl, r10b
.label_497:
	or	dl, bl
.label_490:
	and	dl, 1
	movzx	eax, dl
	mov	r12, rsi
	jmp	.label_485
.label_2764:
	mov	rdi, -1
	mov	rax, -1
	xor	edx, edx
	div	rsi
	cmp	rax, r12
	sbb	r8b, r8b
	mov	rbx, r12
	imul	rbx, rsi
	cmp	rax, r12
	cmovb	rbx, rdi
	cmp	rax, rbx
	sbb	dl, dl
	mov	rbp, rbx
	imul	rbp, rsi
	cmp	rax, rbx
	cmovb	rbp, rdi
	cmp	rax, rbp
	sbb	r9b, r9b
	mov	rbx, rbp
	imul	rbx, rsi
	cmp	rax, rbp
	cmovb	rbx, rdi
	cmp	rax, rbx
	sbb	r10b, r10b
	mov	rbp, rbx
	imul	rbp, rsi
	cmp	rax, rbx
	cmovb	rbp, rdi
	cmp	rax, rbp
	sbb	r11b, r11b
	mov	rbx, rbp
	imul	rbx, rsi
	cmp	rax, rbp
	cmovb	rbx, rdi
	cmp	rax, rbx
	sbb	r14b, r14b
	mov	rbp, rbx
	imul	rbp, rsi
	cmp	rax, rbx
	cmovb	rbp, rdi
	cmp	rax, rbp
	mov	r13d, r15d
	sbb	r15b, r15b
	mov	rbx, rbp
	imul	rbx, rsi
	cmp	rax, rbp
	cmovb	rbx, rdi
	cmp	rax, rbx
	sbb	bpl, bpl
	imul	rsi, rbx
	cmp	rax, rbx
	cmovb	rsi, rdi
	or	dl, r8b
	or	dl, r9b
	or	dl, r10b
	or	dl, r11b
	and	dl, 1
	or	dl, r14b
	or	dl, r15b
	mov	r15d, r13d
	or	dl, bpl
	jmp	.label_502
.label_2765:
	mov	rdi, -1
	mov	rax, -1
	xor	edx, edx
	div	rsi
	cmp	rax, r12
	sbb	r8b, r8b
	mov	rbx, r12
	imul	rbx, rsi
	cmp	rax, r12
	cmovb	rbx, rdi
	cmp	rax, rbx
	sbb	dl, dl
	mov	rbp, rbx
	imul	rbp, rsi
	cmp	rax, rbx
	cmovb	rbp, rdi
	cmp	rax, rbp
	sbb	r9b, r9b
	mov	rbx, rbp
	imul	rbx, rsi
	cmp	rax, rbp
	cmovb	rbx, rdi
	cmp	rax, rbx
	sbb	r10b, r10b
	mov	rbp, rbx
	imul	rbp, rsi
	cmp	rax, rbx
	cmovb	rbp, rdi
	cmp	rax, rbp
	sbb	r11b, r11b
	mov	rbx, rbp
	imul	rbx, rsi
	cmp	rax, rbp
	cmovb	rbx, rdi
	cmp	rax, rbx
	sbb	r14b, r14b
	mov	rbp, rbx
	imul	rbp, rsi
	cmp	rax, rbx
	cmovb	rbp, rdi
	cmp	rax, rbp
	sbb	bl, bl
	imul	rsi, rbp
	cmp	rax, rbp
	cmovb	rsi, rdi
	or	dl, r8b
	or	dl, r9b
	or	dl, r10b
	and	dl, 1
	or	dl, r11b
	or	dl, r14b
	or	dl, bl
.label_502:
	movzx	eax, dl
.label_501:
	and	eax, 1
	mov	r12, rsi
	jmp	.label_485
.label_2766:
	xor	eax, eax
	mov	rdx, r12
	shr	rdx, 0x37
	setne	al
	shl	r12, 9
.label_493:
	cmp	rdx, 1
	sbb	rdx, rdx
	not	rdx
	or	r12, rdx
	jmp	.label_485
.label_2767:
	lea	rax, [r12 + r12]
	test	r12, r12
	mov	rdx, -1
	cmovns	rdx, rax
	shr	r12, 0x3f
	mov	eax, r12d
	mov	r12, rdx
.label_485:
	or	eax, r15d
	mov	rdi, qword ptr [rsp + 0x10]
	lea	rdx, [rdi + rcx]
	mov	rsi, qword ptr [rsp + 0x18]
	mov	qword ptr [rsi], rdx
	lea	r15d, [rax + 2]
	cmp	byte ptr [rdi + rcx], 0
	cmove	r15d, eax
.label_491:
	mov	rax, qword ptr [rsp + 8]
	mov	qword ptr [rax], r12
.label_498:
	mov	r13d, r15d
.label_486:
	mov	eax, r13d
	add	rsp, 0x28
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_496:
	mov	edi, OFFSET FLAT:label_503
	mov	esi, OFFSET FLAT:label_504
	mov	edx, 0x54
	mov	ecx, OFFSET FLAT:label_505
	call	__assert_fail
	.section	.text
	.align	16
	#Procedure 0x406e11
	.globl sub_406e11
	.type sub_406e11, @function
sub_406e11:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406e20

	.globl main
	.type main, @function
main:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0xd8
	mov	rbx, rsi
	mov	r15d, edi
	mov	rdi, qword ptr [rbx]
	call	set_program_name
	mov	edi, 6
	mov	esi, OFFSET FLAT:label_547
	call	setlocale
	mov	edi, OFFSET FLAT:label_627
	mov	esi, OFFSET FLAT:label_628
	call	bindtextdomain
	mov	edi, OFFSET FLAT:label_627
	call	textdomain
	mov	edi, OFFSET FLAT:close_stdout
	call	atexit
	mov	qword ptr [rsp + 8], rbx
	mov	qword ptr [rip + global_argv],  rbx
	mov	qword ptr [rip + controls],  0
	mov	qword ptr [rip + control_used],  0
	mov	byte ptr [rip + suppress_count],  0
	mov	byte ptr [rip + remove_files],  1
	mov	byte ptr [rip + suppress_matched],  0
	mov	qword ptr [rip + prefix], OFFSET FLAT:label_634
	jmp	.label_635
	.section	.text
	.align	16
	#Procedure 0x406eb5
	.globl sub_406eb5
	.type sub_406eb5, @function
sub_406eb5:

	nop	word ptr cs:[rax + rax]
.label_2726:
	mov	byte ptr [rip + suppress_count],  1
.label_635:
	mov	edx, OFFSET FLAT:label_654
	mov	ecx, OFFSET FLAT:longopts
	xor	r8d, r8d
	mov	edi, r15d
	mov	rsi, qword ptr [rsp + 8]
	call	getopt_long
	cmp	eax, 0x61
	jle	.label_659
	add	eax, -0x62
	cmp	eax, 0x1e
	ja	.label_580
	jmp	qword ptr [(rax * 8) + label_666]
.label_2722:
	mov	rax, qword ptr [rip + optarg]
	mov	qword ptr [rip + suffix],  rax
	jmp	.label_635
.label_2723:
	mov	rax, qword ptr [rip + optarg]
	mov	qword ptr [rip + prefix],  rax
	jmp	.label_635
.label_2724:
	mov	byte ptr [rip + remove_files],  0
	jmp	.label_635
.label_2725:
	mov	rbx, qword ptr [rip + optarg]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_671
	mov	edx, 5
	call	dcgettext
	xor	esi, esi
	mov	edx, 0x7fffffff
	mov	ecx, OFFSET FLAT:label_547
	xor	r9d, r9d
	mov	rdi, rbx
	mov	r8, rax
	call	xdectoimax
	mov	dword ptr [rip + digits],  eax
	jmp	.label_635
.label_2727:
	mov	byte ptr [rip + elide_empty_files],  1
	jmp	.label_635
.label_2728:
	mov	byte ptr [rip + suppress_matched],  1
	jmp	.label_635
.label_659:
	cmp	eax, -1
	jne	.label_690
	mov	eax, dword ptr [rip + optind]
	mov	ecx, r15d
	sub	ecx, eax
	cmp	ecx, 1
	mov	dword ptr [rsp + 0x10], r15d
	jle	.label_693
	mov	rdi, qword ptr [rip + prefix]
	call	strlen
	mov	r14, rax
	cmp	qword ptr [rip + suffix],  0
	je	.label_575
	mov	r8, qword ptr [rip + suffix]
	xor	edi, edi
	movabs	rax, 0x100800001
	mov	r9d, 0x21000
	mov	rdx, r8
	jmp	.label_699
	.section	.text
	.align	16
	#Procedure 0x406fd8
	.globl sub_406fd8
	.type sub_406fd8, @function
sub_406fd8:

	nop	dword ptr [rax + rax]
.label_507:
	inc	rdx
.label_699:
	mov	bl, byte ptr [rdx]
	cmp	bl, 0x25
	je	.label_708
	test	bl, bl
	jne	.label_507
	jmp	.label_709
	.section	.text
	.align	16
	#Procedure 0x406ff3
	.globl sub_406ff3
	.type sub_406ff3, @function
sub_406ff3:

	nop	word ptr cs:[rax + rax]
.label_708:
	mov	cl, byte ptr [rdx + 1]
	inc	rdx
	cmp	cl, 0x25
	je	.label_507
	test	dil, 1
	jne	.label_509
	xor	edi, edi
	jmp	.label_511
	.section	.text
	.align	16
	#Procedure 0x407019
	.globl sub_407019
	.type sub_407019, @function
sub_407019:

	nop	dword ptr [rax]
.label_519:
	mov	cl, byte ptr [rdx + 1]
	inc	rdx
.label_511:
	movsx	ebp, cl
	lea	ebx, [rbp - 0x23]
	cmp	ebx, 0xd
	ja	.label_515
	jmp	qword ptr [(rbx * 8) + label_518]
.label_2862:
	or	edi, 2
	jmp	.label_519
	.section	.text
	.align	16
	#Procedure 0x40703d
	.globl sub_40703d
	.type sub_40703d, @function
sub_40703d:

	nop	dword ptr [rax]
.label_2863:
	or	edi, 1
	jmp	.label_519
	.section	.text
	.align	16
	#Procedure 0x407045
	.globl sub_407045
	.type sub_407045, @function
sub_407045:

	nop	word ptr cs:[rax + rax]
.label_515:
	add	ebp, -0x30
	cmp	ebp, 9
	ja	.label_527
	nop	dword ptr [rax + rax]
.label_530:
	movsx	ecx, byte ptr [rdx + 1]
	inc	rdx
	mov	esi, ecx
	add	esi, -0x30
	cmp	esi, 0xa
	jb	.label_530
.label_527:
	cmp	cl, 0x2e
	jne	.label_533
	nop	word ptr cs:[rax + rax]
.label_538:
	movsx	ecx, byte ptr [rdx + 1]
	inc	rdx
	mov	esi, ecx
	add	esi, -0x30
	cmp	esi, 0xa
	jb	.label_538
.label_533:
	mov	ebx, ecx
	add	bl, 0xa8
	movzx	ebp, bl
	cmp	bpl, 0x20
	ja	.label_541
	bt	rax, rbp
	jb	.label_705
	mov	ebx, 0xfffffffe
	bt	r9, rbp
	jae	.label_711
	mov	byte ptr [rdx], 0x75
	jmp	.label_549
.label_705:
	mov	ebx, 0xfffffffd
	jmp	.label_549
.label_711:
	cmp	rbp, 0x1d
	jne	.label_541
	nop	word ptr [rax + rax]
.label_549:
	and	ebx, edi
	mov	dil, 1
	je	.label_507
	movzx	ebp, cl
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_553
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	add	ebx, ebx
	and	ebx, 4
	xor	ebx, 0x27
	mov	edi, 1
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	mov	ecx, ebx
	mov	r8d, ebp
	call	error
.label_709:
	test	dil, 1
	je	.label_563
	mov	edi, 0
	mov	esi, 0
	mov	edx, 1
	xor	ecx, ecx
	mov	r9d, 0xffffffff
	xor	eax, eax
	call	__snprintf_chk
	test	eax, eax
	js	.label_569
	cdqe	
	jmp	.label_571
.label_575:
	mov	ecx, dword ptr [rip + digits]
	mov	eax, 0xa
	cmp	ecx, 0xa
	jb	.label_571
	movsxd	rax, dword ptr [rip + digits]
.label_571:
	mov	rcx, -2
	sub	rcx, r14
	cmp	rcx, rax
	jb	.label_569
	lea	rdi, [r14 + rax + 1]
	call	xmalloc
	mov	qword ptr [rip + filename_space],  rax
	movsxd	rax, dword ptr [rip + optind]
	lea	r13d, [rax + 1]
	mov	dword ptr [rip + optind],  r13d
	mov	rcx, qword ptr [rsp + 8]
	mov	rbx, qword ptr [rcx + rax*8]
	cmp	byte ptr [rbx], 0x2d
	jne	.label_582
	cmp	byte ptr [rbx + 1], 0
	je	.label_594
.label_582:
	xor	edi, edi
	xor	edx, edx
	xor	ecx, ecx
	mov	rsi, rbx
	call	fd_reopen
	test	eax, eax
	js	.label_600
	mov	r13d, dword ptr [rip + optind]
.label_594:
	cmp	r13d, r15d
	jge	.label_603
	nop	dword ptr [rax + rax]
.label_579:
	movsxd	r12, r13d
	mov	rax, qword ptr [rsp + 8]
	mov	rbx, qword ptr [rax + r12*8]
	movsx	r15d, byte ptr [rbx]
	cmp	r15d, 0x2f
	je	.label_606
	cmp	r15b, 0x25
	jne	.label_611
.label_606:
	lea	rbp, [rbx + 1]
	mov	rdi, rbp
	mov	esi, r15d
	call	strrchr
	mov	r14, rax
	test	r14, r14
	je	.label_614
	mov	rax, qword ptr [rip + control_used]
	cmp	rax, qword ptr [rip + new_control_record.control_allocated]
	mov	qword ptr [rsp + 0x18], rbp
	jne	.label_617
	mov	rdi, qword ptr [rip + controls]
	test	rdi, rdi
	je	.label_551
	movabs	rcx, 0xe38e38e38e38e3
	cmp	rax, rcx
	jae	.label_620
	mov	rcx, rax
	shr	rcx, 1
	lea	rax, [rax + rcx + 1]
	jmp	.label_624
	.section	.text
	.align	16
	#Procedure 0x407253
	.globl sub_407253
	.type sub_407253, @function
sub_407253:

	nop	word ptr cs:[rax + rax]
.label_611:
	mov	rax, qword ptr [rip + control_used]
	cmp	rax, qword ptr [rip + new_control_record.control_allocated]
	jne	.label_632
	mov	rdi, qword ptr [rip + controls]
	test	rdi, rdi
	je	.label_633
	movabs	rcx, 0xe38e38e38e38e3
	cmp	rax, rcx
	jae	.label_638
	mov	rcx, rax
	shr	rcx, 1
	lea	rcx, [rax + rcx + 1]
	jmp	.label_642
	.section	.text
	.align	16
	#Procedure 0x4072a3
	.globl sub_4072a3
	.type sub_4072a3, @function
sub_4072a3:

	nop	word ptr cs:[rax + rax]
.label_617:
	mov	rbp, qword ptr [rip + controls]
	jmp	.label_651
.label_632:
	mov	r15, qword ptr [rip + controls]
	jmp	.label_652
.label_551:
	test	rax, rax
	mov	ecx, 1
	cmove	rax, rcx
	movabs	rcx, 0x155555555555555
	cmp	rax, rcx
	ja	.label_653
.label_624:
	mov	qword ptr [rip + new_control_record.control_allocated],  rax
	shl	rax, 5
	lea	rsi, [rax + rax*2]
	call	xrealloc
	mov	rbp, rax
	mov	qword ptr [rip + controls],  rbp
	mov	rax, qword ptr [rip + control_used]
.label_651:
	mov	qword ptr [rsp + 0x20], rbx
	not	rbx
	add	rbx, r14
	lea	r12, [rax + rax*2]
	inc	rax
	shl	r12, 5
	cmp	r15b, 0x25
	mov	qword ptr [rip + control_used],  rax
	mov	byte ptr [rbp + r12 + 0x1c], 0
	xorps	xmm0, xmm0
	movups	xmmword ptr [rbp + r12], xmm0
	mov	qword ptr [rbp + r12 + 0x10], 0
	mov	dword ptr [rbp + r12 + 0x18], r13d
	sete	byte ptr [rbp + r12 + 0x1d]
	mov	byte ptr [rbp + r12 + 0x1e], 1
	lea	r15, [rbp + r12 + 0x20]
	movups	xmmword ptr [rbp + r12 + 0x20], xmm0
	mov	edi, 0x100
	call	xmalloc
	mov	qword ptr [rbp + r12 + 0x40], rax
	mov	qword ptr [rbp + r12 + 0x48], 0
	mov	qword ptr [rip + rpl_re_syntax_options],  0x2c6
	mov	rdi, qword ptr [rsp + 0x18]
	mov	rsi, rbx
	mov	rdx, r15
	call	rpl_re_compile_pattern
	mov	rbx, rax
	test	rbx, rbx
	jne	.label_694
	add	rbp, r12
	cmp	byte ptr [r14 + 1], 0
	je	.label_598
	inc	r14
	xor	esi, esi
	mov	edx, 0xa
	mov	r8d, OFFSET FLAT:label_547
	mov	rdi, r14
	mov	rcx, rbp
	call	xstrtoimax
	test	eax, eax
	mov	ecx, dword ptr [rsp + 0x10]
	je	.label_702
	jmp	.label_660
.label_633:
	test	rax, rax
	mov	ecx, 1
	cmovne	rcx, rax
	movabs	rax, 0x155555555555555
	cmp	rcx, rax
	ja	.label_668
.label_642:
	mov	qword ptr [rip + new_control_record.control_allocated],  rcx
	shl	rcx, 5
	lea	rsi, [rcx + rcx*2]
	call	xrealloc
	mov	r15, rax
	mov	qword ptr [rip + controls],  r15
	mov	rax, qword ptr [rip + control_used]
.label_652:
	lea	rcx, [rax + 1]
	mov	qword ptr [rip + control_used],  rcx
	lea	rbx, [rax + rax*2]
	shl	rbx, 5
	mov	byte ptr [r15 + rbx + 0x1e], 0
	mov	byte ptr [r15 + rbx + 0x1c], 0
	xorps	xmm0, xmm0
	movups	xmmword ptr [r15 + rbx], xmm0
	mov	qword ptr [r15 + rbx + 0x10], 0
	mov	dword ptr [r15 + rbx + 0x18], r13d
	mov	rax, qword ptr [rsp + 8]
	mov	rdi, qword ptr [rax + r12*8]
	xor	esi, esi
	mov	edx, 0xa
	mov	r8d, OFFSET FLAT:label_547
	lea	rcx, [rsp + 0x28]
	call	xstrtoumax
	test	eax, eax
	jne	.label_532
	mov	rax, qword ptr [rsp + 0x28]
	test	rax, rax
	je	.label_534
	lea	rbp, [r15 + rbx]
	cmp	rax, qword ptr [rip + parse_patterns.last_val]
	jb	.label_540
	jne	.label_544
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_545
	mov	edx, 5
	call	dcgettext
	mov	r14, rax
	mov	rax, qword ptr [rsp + 8]
	mov	rdi, qword ptr [rax + r12*8]
	call	quote
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, r14
	call	error
	mov	rax, qword ptr [rsp + 0x28]
.label_544:
	mov	qword ptr [rip + parse_patterns.last_val],  rax
	mov	qword ptr [r15 + rbx + 8], rax
.label_598:
	mov	ecx, dword ptr [rsp + 0x10]
.label_702:
	lea	ebx, [r13 + 1]
	cmp	ebx, ecx
	jge	.label_555
	movsxd	r15, ebx
	mov	rax, qword ptr [rsp + 8]
	mov	r14, qword ptr [rax + r15*8]
	cmp	byte ptr [r14], 0x7b
	jne	.label_555
	mov	rdi, r14
	call	strlen
	mov	r12, rax
	cmp	byte ptr [r14 + r12 - 1], 0x7d
	jne	.label_561
	mov	byte ptr [r14 + r12 - 1], 0
	lea	rdi, [r14 + 1]
	cmp	r12, 3
	jne	.label_564
	cmp	byte ptr [rdi], 0x2a
	jne	.label_564
	mov	byte ptr [rbp + 0x1c], 1
	jmp	.label_567
.label_564:
	xor	esi, esi
	mov	edx, 0xa
	mov	r8d, OFFSET FLAT:label_547
	lea	rcx, [rsp + 0x30]
	call	xstrtoumax
	test	eax, eax
	jne	.label_597
	mov	rax, qword ptr [rsp + 0x30]
	mov	qword ptr [rbp + 0x10], rax
.label_567:
	mov	byte ptr [r14 + r12 - 1], 0x7d
	mov	r13d, ebx
	mov	ecx, dword ptr [rsp + 0x10]
.label_555:
	inc	r13d
	cmp	r13d, ecx
	jl	.label_579
.label_603:
	mov	edi, OFFSET FLAT:caught_signals
	call	sigemptyset
	lea	rdx, [rsp + 0x30]
	mov	edi, 0xe
	xor	esi, esi
	call	sigaction
	cmp	qword ptr [rsp + 0x30], 1
	je	.label_588
	mov	edi, OFFSET FLAT:caught_signals
	mov	esi, 0xe
	call	sigaddset
.label_588:
	lea	rdx, [rsp + 0x30]
	mov	edi, 1
	xor	esi, esi
	call	sigaction
	cmp	qword ptr [rsp + 0x30], 1
	je	.label_599
	mov	edi, OFFSET FLAT:caught_signals
	mov	esi, 1
	call	sigaddset
.label_599:
	lea	rdx, [rsp + 0x30]
	mov	edi, 2
	xor	esi, esi
	call	sigaction
	cmp	qword ptr [rsp + 0x30], 1
	je	.label_608
	mov	edi, OFFSET FLAT:caught_signals
	mov	esi, 2
	call	sigaddset
.label_608:
	lea	rdx, [rsp + 0x30]
	mov	edi, 0xd
	xor	esi, esi
	call	sigaction
	cmp	qword ptr [rsp + 0x30], 1
	je	.label_616
	mov	edi, OFFSET FLAT:caught_signals
	mov	esi, 0xd
	call	sigaddset
.label_616:
	lea	rdx, [rsp + 0x30]
	mov	edi, 3
	xor	esi, esi
	call	sigaction
	cmp	qword ptr [rsp + 0x30], 1
	je	.label_618
	mov	edi, OFFSET FLAT:caught_signals
	mov	esi, 3
	call	sigaddset
.label_618:
	lea	rdx, [rsp + 0x30]
	mov	edi, 0xf
	xor	esi, esi
	call	sigaction
	cmp	qword ptr [rsp + 0x30], 1
	je	.label_629
	mov	edi, OFFSET FLAT:caught_signals
	mov	esi, 0xf
	call	sigaddset
.label_629:
	lea	rdx, [rsp + 0x30]
	mov	edi, 0x1d
	xor	esi, esi
	call	sigaction
	cmp	qword ptr [rsp + 0x30], 1
	je	.label_637
	mov	edi, OFFSET FLAT:caught_signals
	mov	esi, 0x1d
	call	sigaddset
.label_637:
	lea	rdx, [rsp + 0x30]
	mov	edi, 0x1b
	xor	esi, esi
	call	sigaction
	cmp	qword ptr [rsp + 0x30], 1
	je	.label_703
	mov	edi, OFFSET FLAT:caught_signals
	mov	esi, 0x1b
	call	sigaddset
.label_703:
	lea	rdx, [rsp + 0x30]
	mov	edi, 0x1a
	xor	esi, esi
	call	sigaction
	cmp	qword ptr [rsp + 0x30], 1
	je	.label_655
	mov	edi, OFFSET FLAT:caught_signals
	mov	esi, 0x1a
	call	sigaddset
.label_655:
	lea	rdx, [rsp + 0x30]
	mov	edi, 0x18
	xor	esi, esi
	call	sigaction
	cmp	qword ptr [rsp + 0x30], 1
	je	.label_663
	mov	edi, OFFSET FLAT:caught_signals
	mov	esi, 0x18
	call	sigaddset
.label_663:
	lea	rdx, [rsp + 0x30]
	mov	edi, 0x19
	xor	esi, esi
	call	sigaction
	cmp	qword ptr [rsp + 0x30], 1
	je	.label_669
	mov	edi, OFFSET FLAT:caught_signals
	mov	esi, 0x19
	call	sigaddset
.label_669:
	mov	qword ptr [rsp + 48], OFFSET FLAT:interrupt_handler
	movups	xmm0, xmmword ptr [rip + label_676]
	movups	xmmword ptr [rsp + 0xa8], xmm0
	movups	xmm0, xmmword ptr [rip + label_677]
	movups	xmmword ptr [rsp + 0x98], xmm0
	movups	xmm0, xmmword ptr [rip + label_678]
	movups	xmmword ptr [rsp + 0x88], xmm0
	movups	xmm0, xmmword ptr [rip + label_679]
	movups	xmmword ptr [rsp + 0x78], xmm0
	movups	xmm0, xmmword ptr [rip + label_680]
	movups	xmmword ptr [rsp + 0x68], xmm0
	movups	xmm0, xmmword ptr [rip + label_681]
	movups	xmmword ptr [rsp + 0x58], xmm0
	movups	xmm0, xmmword ptr [rip + label_682]
	movups	xmmword ptr [rsp + 0x48], xmm0
	movups	xmm0, xmmword ptr [rip + caught_signals]
	movups	xmmword ptr [rsp + 0x38], xmm0
	mov	dword ptr [rsp + 0xb8], 0
	mov	edi, OFFSET FLAT:caught_signals
	mov	esi, 0xe
	call	sigismember
	test	eax, eax
	je	.label_700
	lea	rsi, [rsp + 0x30]
	mov	edi, 0xe
	xor	edx, edx
	call	sigaction
.label_700:
	mov	edi, OFFSET FLAT:caught_signals
	mov	esi, 1
	call	sigismember
	test	eax, eax
	je	.label_707
	lea	rsi, [rsp + 0x30]
	mov	edi, 1
	xor	edx, edx
	call	sigaction
.label_707:
	mov	edi, OFFSET FLAT:caught_signals
	mov	esi, 2
	call	sigismember
	test	eax, eax
	je	.label_508
	lea	rsi, [rsp + 0x30]
	mov	edi, 2
	xor	edx, edx
	call	sigaction
.label_508:
	mov	edi, OFFSET FLAT:caught_signals
	mov	esi, 0xd
	call	sigismember
	test	eax, eax
	je	.label_516
	lea	rsi, [rsp + 0x30]
	mov	edi, 0xd
	xor	edx, edx
	call	sigaction
.label_516:
	mov	edi, OFFSET FLAT:caught_signals
	mov	esi, 3
	call	sigismember
	test	eax, eax
	je	.label_525
	lea	rsi, [rsp + 0x30]
	mov	edi, 3
	xor	edx, edx
	call	sigaction
.label_525:
	mov	edi, OFFSET FLAT:caught_signals
	mov	esi, 0xf
	call	sigismember
	test	eax, eax
	je	.label_645
	lea	rsi, [rsp + 0x30]
	mov	edi, 0xf
	xor	edx, edx
	call	sigaction
.label_645:
	mov	edi, OFFSET FLAT:caught_signals
	mov	esi, 0x1d
	call	sigismember
	test	eax, eax
	je	.label_542
	lea	rsi, [rsp + 0x30]
	mov	edi, 0x1d
	xor	edx, edx
	call	sigaction
.label_542:
	mov	edi, OFFSET FLAT:caught_signals
	mov	esi, 0x1b
	call	sigismember
	test	eax, eax
	je	.label_550
	lea	rsi, [rsp + 0x30]
	mov	edi, 0x1b
	xor	edx, edx
	call	sigaction
.label_550:
	mov	edi, OFFSET FLAT:caught_signals
	mov	esi, 0x1a
	call	sigismember
	test	eax, eax
	je	.label_554
	lea	rsi, [rsp + 0x30]
	mov	edi, 0x1a
	xor	edx, edx
	call	sigaction
.label_554:
	mov	edi, OFFSET FLAT:caught_signals
	mov	esi, 0x18
	call	sigismember
	test	eax, eax
	je	.label_560
	lea	rsi, [rsp + 0x30]
	mov	edi, 0x18
	xor	edx, edx
	call	sigaction
.label_560:
	mov	edi, OFFSET FLAT:caught_signals
	mov	esi, 0x19
	call	sigismember
	test	eax, eax
	je	.label_565
	lea	rsi, [rsp + 0x30]
	mov	edi, 0x19
	xor	edx, edx
	call	sigaction
.label_565:
	cmp	qword ptr [rip + control_used],  0
	je	.label_570
	mov	r14, qword ptr [rip + controls]
	xor	eax, eax
.label_697:
	mov	qword ptr [rsp + 0xd0], rax
	lea	r13, [rax + rax*2]
	shl	r13, 5
	cmp	byte ptr [r14 + r13 + 0x1e], 0
	je	.label_574
	xor	eax, eax
	jmp	.label_581
.label_596:
	mov	rax, qword ptr [rsp + 0x10]
	inc	rax
	mov	r14, qword ptr [rip + controls]
.label_581:
	cmp	byte ptr [r14 + r13 + 0x1c], 0
	jne	.label_584
	cmp	rax, qword ptr [r14 + r13 + 0x10]
	ja	.label_587
.label_584:
	mov	qword ptr [rsp + 0x10], rax
	mov	r12b, byte ptr [r14 + r13 + 0x1d]
	test	r12b, r12b
	jne	.label_591
	call	create_output_file
.label_591:
	lea	rbx, [r14 + r13]
	cmp	byte ptr [rip + suppress_matched],  1
	jne	.label_595
	mov	rax, qword ptr [rip + current_line]
	test	rax, rax
	je	.label_595
	call	remove_line
.label_595:
	lea	rax, [r14 + r13 + 0x1c]
	mov	qword ptr [rsp + 0x20], rax
	mov	qword ptr [rsp + 0x18], rbx
	cmp	qword ptr [rbx], 0
	lea	rax, [r14 + r13 + 0x20]
	mov	qword ptr [rsp + 8], rax
	js	.label_604
	test	r12b, r12b
	jne	.label_685
	jmp	.label_612
	.section	.text
	.align	16
	#Procedure 0x4079f1
	.globl sub_4079f1
	.type sub_4079f1, @function
sub_4079f1:

	nop	word ptr cs:[rax + rax]
.label_604:
	mov	rbx, qword ptr [rip + current_line]
	inc	rbx
	mov	qword ptr [rip + current_line],  rbx
	mov	rbp, qword ptr [rip + head]
	test	rbp, rbp
	jne	.label_615
	call	load_buffer
	test	al, al
	je	.label_592
	mov	rbp, qword ptr [rip + head]
.label_615:
	mov	rax, qword ptr [rbp + 0x10]
	cmp	rax, rbx
	ja	.label_592
	test	rbp, rbp
	je	.label_524
	mov	rcx, qword ptr [rbp + 0x20]
	add	rcx, rax
	cmp	rcx, rbx
	ja	.label_625
	nop	word ptr cs:[rax + rax]
.label_639:
	mov	rcx, qword ptr [rbp + 0x40]
	test	rcx, rcx
	jne	.label_696
	call	load_buffer
	test	al, al
	je	.label_592
	mov	rcx, qword ptr [rbp + 0x40]
	test	rcx, rcx
	je	.label_524
.label_696:
	mov	rax, qword ptr [rcx + 0x10]
	mov	rdx, qword ptr [rcx + 0x20]
	add	rdx, rax
	cmp	rdx, rbx
	mov	rbp, rcx
	jbe	.label_639
.label_625:
	sub	rbx, rax
	mov	rax, qword ptr [rbp + 0x30]
	cmp	rbx, 0x50
	jb	.label_643
	nop	word ptr cs:[rax + rax]
.label_514:
	add	rbx, -0x50
	mov	rax, qword ptr [rax + 0x518]
	cmp	rbx, 0x4f
	ja	.label_514
.label_643:
	shl	rbx, 4
	mov	rcx, qword ptr [rax + rbx + 0x18]
	mov	rsi, qword ptr [rax + rbx + 0x20]
	lea	rdx, [rcx - 1]
	cmp	byte ptr [rsi + rcx - 1], 0xa
	cmovne	rdx, rcx
	xor	ecx, ecx
	xor	r9d, r9d
	mov	rdi, qword ptr [rsp + 8]
	mov	r8, rdx
	call	rpl_re_search
	cmp	rax, -1
	jne	.label_665
	jmp	.label_604
	.section	.text
	.align	16
	#Procedure 0x407afd
	.globl sub_407afd
	.type sub_407afd, @function
sub_407afd:

	nop	dword ptr [rax]
.label_712:
	call	remove_line
.label_685:
	mov	rbx, qword ptr [rip + current_line]
	inc	rbx
	mov	qword ptr [rip + current_line],  rbx
	mov	rbp, qword ptr [rip + head]
	test	rbp, rbp
	jne	.label_667
	mov	r15b, 1
	call	load_buffer
	test	al, al
	je	.label_675
	mov	rbp, qword ptr [rip + head]
.label_667:
	mov	rax, qword ptr [rbp + 0x10]
	mov	r15b, 1
	cmp	rax, rbx
	ja	.label_675
	test	rbp, rbp
	je	.label_524
	mov	rcx, qword ptr [rbp + 0x20]
	add	rcx, rax
	cmp	rcx, rbx
	ja	.label_684
	nop	
.label_692:
	mov	rcx, qword ptr [rbp + 0x40]
	test	rcx, rcx
	jne	.label_687
	call	load_buffer
	test	al, al
	je	.label_675
	mov	rcx, qword ptr [rbp + 0x40]
	test	rcx, rcx
	je	.label_524
.label_687:
	mov	rax, qword ptr [rcx + 0x10]
	mov	rdx, qword ptr [rcx + 0x20]
	add	rdx, rax
	cmp	rdx, rbx
	mov	rbp, rcx
	jbe	.label_692
.label_684:
	sub	rbx, rax
	mov	rax, qword ptr [rbp + 0x30]
	cmp	rbx, 0x50
	jb	.label_695
	nop	word ptr cs:[rax + rax]
.label_698:
	add	rbx, -0x50
	mov	rax, qword ptr [rax + 0x518]
	cmp	rbx, 0x4f
	ja	.label_698
.label_695:
	shl	rbx, 4
	mov	rcx, qword ptr [rax + rbx + 0x18]
	mov	rsi, qword ptr [rax + rbx + 0x20]
	lea	rdx, [rcx - 1]
	cmp	byte ptr [rsi + rcx - 1], 0xa
	cmovne	rdx, rcx
	xor	ecx, ecx
	xor	r9d, r9d
	mov	rdi, qword ptr [rsp + 8]
	mov	r8, rdx
	call	rpl_re_search
	cmp	rax, -1
	jne	.label_665
	jmp	.label_712
	.section	.text
	.align	16
	#Procedure 0x407bfd
	.globl sub_407bfd
	.type sub_407bfd, @function
sub_407bfd:

	nop	dword ptr [rax]
.label_556:
	call	remove_line
	mov	rdi, rax
	call	save_line_to_file
.label_612:
	mov	rbx, qword ptr [rip + current_line]
	inc	rbx
	mov	qword ptr [rip + current_line],  rbx
	mov	rbp, qword ptr [rip + head]
	test	rbp, rbp
	jne	.label_510
	call	load_buffer
	test	al, al
	je	.label_517
	mov	rbp, qword ptr [rip + head]
.label_510:
	mov	rax, qword ptr [rbp + 0x10]
	cmp	rax, rbx
	ja	.label_517
	test	rbp, rbp
	je	.label_524
	mov	rcx, qword ptr [rbp + 0x20]
	add	rcx, rax
	cmp	rcx, rbx
	ja	.label_528
.label_539:
	mov	rcx, qword ptr [rbp + 0x40]
	test	rcx, rcx
	jne	.label_674
	call	load_buffer
	test	al, al
	je	.label_517
	mov	rcx, qword ptr [rbp + 0x40]
	test	rcx, rcx
	je	.label_524
.label_674:
	mov	rax, qword ptr [rcx + 0x10]
	mov	rdx, qword ptr [rcx + 0x20]
	add	rdx, rax
	cmp	rdx, rbx
	mov	rbp, rcx
	jbe	.label_539
.label_528:
	sub	rbx, rax
	mov	rax, qword ptr [rbp + 0x30]
	cmp	rbx, 0x50
	jb	.label_543
	nop	word ptr cs:[rax + rax]
.label_548:
	add	rbx, -0x50
	mov	rax, qword ptr [rax + 0x518]
	cmp	rbx, 0x4f
	ja	.label_548
.label_543:
	shl	rbx, 4
	mov	rcx, qword ptr [rax + rbx + 0x18]
	mov	rsi, qword ptr [rax + rbx + 0x20]
	lea	rdx, [rcx - 1]
	cmp	byte ptr [rsi + rcx - 1], 0xa
	cmovne	rdx, rcx
	xor	ecx, ecx
	xor	r9d, r9d
	mov	rdi, qword ptr [rsp + 8]
	mov	r8, rdx
	call	rpl_re_search
	cmp	rax, -1
	je	.label_556
.label_665:
	cmp	rax, -2
	mov	rax, qword ptr [rsp + 0x18]
	je	.label_558
	mov	r15, qword ptr [rax]
	add	r15, qword ptr [rip + current_line]
	movsxd	r14, dword ptr [r14 + r13 + 0x18]
	mov	rax, qword ptr [rip + head]
	test	rax, rax
	jne	.label_562
	call	load_buffer
	test	al, al
	je	.label_644
	mov	rax, qword ptr [rip + head]
.label_562:
	mov	rbx, r15
	sub	rbx, qword ptr [rax + 0x18]
	jb	.label_568
	je	.label_572
	xor	ebp, ebp
	test	r12b, r12b
	je	.label_573
	nop	dword ptr [rax]
.label_577:
	call	remove_line
	test	rax, rax
	je	.label_568
	inc	rbp
	cmp	rbp, rbx
	jb	.label_577
	jmp	.label_572
	.section	.text
	.align	16
	#Procedure 0x407d68
	.globl sub_407d68
	.type sub_407d68, @function
sub_407d68:

	nop	dword ptr [rax + rax]
.label_573:
	call	remove_line
	test	rax, rax
	je	.label_568
	mov	rdi, rax
	call	save_line_to_file
	inc	rbp
	cmp	rbp, rbx
	jb	.label_573
.label_572:
	test	r12b, r12b
	jne	.label_590
	call	close_output_file
.label_590:
	mov	rax, qword ptr [rsp + 0x18]
	cmp	qword ptr [rax], 0
	jle	.label_596
	mov	qword ptr [rip + current_line],  r15
	jmp	.label_596
	.section	.text
	.align	16
	#Procedure 0x407db3
	.globl sub_407db3
	.type sub_407db3, @function
sub_407db3:

	nop	word ptr cs:[rax + rax]
.label_574:
	xor	r15d, r15d
	jmp	.label_602
	.section	.text
	.align	16
	#Procedure 0x407dc5
	.globl sub_407dc5
	.type sub_407dc5, @function
sub_407dc5:

	nop	word ptr cs:[rax + rax]
.label_546:
	mov	r14, qword ptr [rip + controls]
	mov	r15, r12
.label_602:
	cmp	byte ptr [r14 + r13 + 0x1c], 0
	jne	.label_609
	cmp	r15, qword ptr [r14 + r13 + 0x10]
	ja	.label_587
.label_609:
	mov	rbx, qword ptr [r14 + r13 + 8]
	call	create_output_file
	mov	r12, qword ptr [rip + current_line]
	mov	rbp, qword ptr [rip + head]
	test	rbp, rbp
	jne	.label_613
	call	load_buffer
	test	al, al
	je	.label_607
	mov	rbp, qword ptr [rip + head]
.label_613:
	inc	r12
	mov	rax, qword ptr [rbp + 0x10]
	cmp	rax, r12
	ja	.label_607
	test	rbp, rbp
	je	.label_524
	add	rax, qword ptr [rbp + 0x20]
	cmp	rax, r12
	ja	.label_619
	nop	dword ptr [rax + rax]
.label_631:
	mov	rax, qword ptr [rbp + 0x40]
	test	rax, rax
	jne	.label_586
	call	load_buffer
	test	al, al
	je	.label_607
	mov	rax, qword ptr [rbp + 0x40]
	test	rax, rax
	je	.label_524
.label_586:
	mov	rcx, qword ptr [rax + 0x20]
	add	rcx, qword ptr [rax + 0x10]
	cmp	rcx, r12
	mov	rbp, rax
	jbe	.label_631
	jmp	.label_619
	.section	.text
	.align	16
	#Procedure 0x407e71
	.globl sub_407e71
	.type sub_407e71, @function
sub_407e71:

	nop	word ptr cs:[rax + rax]
.label_607:
	cmp	byte ptr [rip + suppress_matched],  1
	je	.label_658
.label_619:
	mov	rax, qword ptr [rip + head]
	test	rax, rax
	jne	.label_641
	call	load_buffer
	test	al, al
	je	.label_644
	mov	rax, qword ptr [rip + head]
.label_641:
	lea	r12, [r15 + 1]
	imul	rbx, r12
	mov	rbp, qword ptr [rax + 0x18]
	jmp	.label_650
	.section	.text
	.align	16
	#Procedure 0x407ebb
	.globl sub_407ebb
	.type sub_407ebb, @function
sub_407ebb:

	nop	dword ptr [rax + rax]
.label_657:
	inc	rbp
	mov	rdi, rax
	call	save_line_to_file
.label_650:
	cmp	rbp, rbx
	jae	.label_656
	call	remove_line
	test	rax, rax
	jne	.label_657
	jmp	.label_658
	.section	.text
	.align	16
	#Procedure 0x407edf
	.globl sub_407edf
	.type sub_407edf, @function
sub_407edf:

	nop	
.label_656:
	call	close_output_file
	cmp	byte ptr [rip + suppress_matched],  1
	jne	.label_578
	call	remove_line
.label_578:
	mov	rbx, qword ptr [rip + current_line]
	mov	rbp, qword ptr [rip + head]
	test	rbp, rbp
	jne	.label_664
	call	load_buffer
	test	al, al
	je	.label_640
	mov	rbp, qword ptr [rip + head]
.label_664:
	inc	rbx
	mov	rax, qword ptr [rbp + 0x10]
	cmp	rax, rbx
	ja	.label_640
	test	rbp, rbp
	je	.label_524
	add	rax, qword ptr [rbp + 0x20]
	cmp	rax, rbx
	ja	.label_546
	nop	dword ptr [rax + rax]
.label_686:
	mov	rax, qword ptr [rbp + 0x40]
	test	rax, rax
	jne	.label_585
	call	load_buffer
	test	al, al
	je	.label_640
	mov	rax, qword ptr [rbp + 0x40]
	test	rax, rax
	je	.label_524
.label_585:
	mov	rcx, qword ptr [rax + 0x20]
	add	rcx, qword ptr [rax + 0x10]
	cmp	rcx, rbx
	mov	rbp, rax
	jbe	.label_686
	jmp	.label_546
	.section	.text
	.align	16
	#Procedure 0x407f74
	.globl sub_407f74
	.type sub_407f74, @function
sub_407f74:

	nop	word ptr cs:[rax + rax]
.label_640:
	mov	al, byte ptr [rip + suppress_matched]
	test	al, al
	jne	.label_546
	jmp	.label_658
	.section	.text
	.align	16
	#Procedure 0x407f93
	.globl sub_407f93
	.type sub_407f93, @function
sub_407f93:

	nop	word ptr cs:[rax + rax]
.label_587:
	mov	rax, qword ptr [rsp + 0xd0]
	inc	rax
	cmp	rax, qword ptr [rip + control_used]
	jb	.label_697
.label_570:
	call	create_output_file
	jmp	.label_701
	.section	.text
	.align	16
	#Procedure 0x407fbf
	.globl sub_407fbf
	.type sub_407fbf, @function
sub_407fbf:

	nop	
.label_704:
	mov	rdi, rax
	call	save_line_to_file
.label_701:
	call	remove_line
	test	rax, rax
	jne	.label_704
	call	close_output_file
	xor	edi, edi
	call	close
	test	eax, eax
	jne	.label_706
	xor	eax, eax
	add	rsp, 0xd8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_592:
	mov	rax, qword ptr [rsp + 0x20]
	cmp	byte ptr [rax], 0
	je	.label_713
	test	r12b, r12b
	je	.label_557
	jmp	.label_526
	.section	.text
	.align	16
	#Procedure 0x40800f
	.globl sub_40800f
	.type sub_40800f, @function
sub_40800f:

	nop	
.label_513:
	mov	rdi, rax
	call	save_line_to_file
.label_557:
	call	remove_line
	test	rax, rax
	jne	.label_513
	call	close_output_file
.label_526:
	xor	edi, edi
	call	exit
.label_517:
	xor	r15d, r15d
.label_675:
	mov	rax, qword ptr [rsp + 0x20]
	cmp	byte ptr [rax], 0
	je	.label_605
	test	r15b, r15b
	je	.label_520
	jmp	.label_521
	.section	.text
	.align	16
	#Procedure 0x408046
	.globl sub_408046
	.type sub_408046, @function
sub_408046:

	nop	word ptr cs:[rax + rax]
.label_661:
	mov	rdi, rax
	call	save_line_to_file
.label_520:
	call	remove_line
	test	rax, rax
	jne	.label_661
	call	close_output_file
.label_521:
	xor	edi, edi
	call	exit
.label_658:
	add	r14, r13
	mov	rdi, r14
	mov	rsi, r15
	call	handle_line_error
.label_524:
	mov	edi, OFFSET FLAT:label_535
	mov	esi, OFFSET FLAT:label_536
	mov	edx, 0x26a
	mov	ecx, OFFSET FLAT:label_537
	call	__assert_fail
.label_568:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_691
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	mov	rax, qword ptr [rip + global_argv]
	mov	rdi, qword ptr [rax + r14*8]
	call	quote
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rbp
	call	error
	call	cleanup_fatal
.label_644:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_552
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, rcx
	call	error
.label_614:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_559
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	mov	rcx, rbx
	mov	r8d, r15d
	call	error
.label_694:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_566
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	mov	rdi, qword ptr [rsp + 0x20]
	call	quote
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rbp
	mov	r8, rbx
	call	error
	call	cleanup_fatal
.label_690:
	cmp	eax, 0xffffff7d
	je	.label_576
	cmp	eax, 0xffffff7e
	jne	.label_580
	xor	edi, edi
	call	usage
.label_660:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_583
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	rdi, qword ptr [rsp + 0x20]
	jmp	.label_589
.label_532:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_593
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	rax, qword ptr [rsp + 8]
	mov	rdi, qword ptr [rax + r12*8]
	jmp	.label_589
.label_534:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_601
	mov	edx, 5
	call	dcgettext
	mov	rdx, rax
	mov	rax, qword ptr [rsp + 8]
	mov	rcx, qword ptr [rax + r12*8]
	mov	edi, 1
	xor	esi, esi
	xor	eax, eax
	call	error
.label_540:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_610
	mov	edx, 5
	call	dcgettext
	mov	r14, rax
	mov	rax, qword ptr [rsp + 8]
	mov	rdi, qword ptr [rax + r12*8]
	call	quote
	mov	rbp, rax
	mov	rdi, qword ptr [rip + parse_patterns.last_val]
	lea	rsi, [rsp + 0x30]
	call	umaxtostr
	mov	rbx, rax
	mov	edi, 1
	xor	esi, esi
	xor	eax, eax
	mov	rdx, r14
	mov	rcx, rbp
	mov	r8, rbx
	call	error
.label_509:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_621
	jmp	.label_622
.label_541:
	test	cl, cl
	jne	.label_623
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_626
	jmp	.label_622
.label_561:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_630
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	rdi, r14
	jmp	.label_589
.label_620:
	call	xalloc_die
.label_597:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_636
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	rax, qword ptr [rip + global_argv]
	mov	rdi, qword ptr [rax + r15*8]
.label_589:
	call	quote
	mov	rcx, rax
	mov	edi, 1
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rbx
	call	error
.label_576:
	mov	rdi, qword ptr [rip + stdout]
	mov	rcx, qword ptr [rip + Version]
	mov	qword ptr [rsp], 0
	mov	esi, OFFSET FLAT:label_646
	mov	edx, OFFSET FLAT:label_647
	mov	r8d, OFFSET FLAT:label_648
	mov	r9d, OFFSET FLAT:label_649
	xor	eax, eax
	call	version_etc
	xor	edi, edi
	call	exit
.label_580:
	mov	edi, 1
	call	usage
.label_558:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_662
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
.label_529:
	mov	rdx, rcx
	call	error
	call	cleanup_fatal
.label_623:
	movzx	ebx, cl
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	test	byte ptr [rax + rbx*2 + 1], 0x40
	jne	.label_670
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_672
	jmp	.label_673
.label_653:
	call	xalloc_die
.label_638:
	call	xalloc_die
.label_569:
	call	xalloc_die
.label_670:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_683
.label_673:
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	mov	ecx, ebx
	call	error
.label_693:
	xor	edi, edi
	cmp	eax, r15d
	jge	.label_688
	mov	esi, OFFSET FLAT:label_689
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	movsxd	rax, dword ptr [rsp + 0x10]
	mov	rcx, qword ptr [rsp + 8]
	mov	rdi, qword ptr [rcx + rax*8 - 8]
	call	quote
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rbx
	call	error
	mov	edi, 1
	call	usage
.label_668:
	call	xalloc_die
.label_600:
	call	__errno_location
	mov	r14d, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_522
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	mov	edi, 4
	mov	rsi, rbx
	call	quotearg_style
	mov	rcx, rax
	mov	edi, 1
	xor	eax, eax
	mov	esi, r14d
	mov	rdx, rbp
	call	error
.label_563:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_710
.label_622:
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	call	error
.label_688:
	mov	esi, OFFSET FLAT:label_512
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
.label_706:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_523
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, ebx
	jmp	.label_529
.label_605:
	movzx	edx, r15b
	jmp	.label_531
.label_713:
	movzx	edx, r12b
.label_531:
	mov	rdi, qword ptr [rsp + 0x18]
	mov	rsi, qword ptr [rsp + 0x10]
	call	regexp_error
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x408490
	.globl rpl_re_search_2
	.type rpl_re_search_2, @function
rpl_re_search_2:

	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x18
	mov	rbx, r8
	mov	r15, rcx
	mov	r14, rdx
	mov	r13, rsi
	mov	rbp, qword ptr [rsp + 0x60]
	mov	rax, rbx
	or	rax, r14
	or	rax, rbp
	js	.label_717
	movabs	rax, 0x7fffffffffffffff
	test	rbx, rbx
	js	.label_719
	sub	rax, rbx
	cmp	rax, r14
	jl	.label_717
	lea	rdx, [rbx + r14]
	xor	r12d, r12d
	test	rbx, rbx
	jle	.label_716
	xor	r12d, r12d
	test	r14, r14
	jle	.label_714
	mov	qword ptr [rsp + 8], rdi
	mov	qword ptr [rsp], rdx
	mov	rdi, rdx
	mov	qword ptr [rsp + 0x10], r9
	call	malloc
	mov	r12, rax
	test	r12, r12
	je	.label_717
	mov	rdi, r12
	mov	rsi, r13
	mov	rdx, r14
	call	memcpy
	mov	rdi, r12
	add	rdi, r14
	mov	rsi, r15
	mov	rdx, rbx
	call	memcpy
	mov	rdi, qword ptr [rsp + 8]
	mov	r9, qword ptr [rsp + 0x10]
	mov	r13, r12
	mov	rdx, qword ptr [rsp]
	jmp	.label_716
.label_719:
	inc	rax
	sub	rax, rbx
	cmp	rax, r14
	jle	.label_718
.label_717:
	mov	rax, -2
	jmp	.label_715
.label_718:
	add	rbx, r14
	xor	r12d, r12d
	mov	rdx, rbx
	jmp	.label_716
.label_714:
	mov	r13, r15
.label_716:
	mov	r8, qword ptr [rsp + 0x50]
	mov	rsi, r13
	mov	rcx, r9
	mov	r9, rbp
	push	0
	push	qword ptr [rsp + 0x60]
	call	re_search_stub
	add	rsp, 0x10
	mov	rbx, rax
	mov	rdi, r12
	call	free
	mov	rax, rbx
.label_715:
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
	#Procedure 0x408595
	.globl sub_408595
	.type sub_408595, @function
sub_408595:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4085a0

	.globl re_node_set_insert
	.type re_node_set_insert, @function
re_node_set_insert:
	push	r14
	push	rbx
	push	rax
	mov	rbx, rsi
	mov	r14, rdi
	mov	rsi, qword ptr [r14]
	test	rsi, rsi
	je	.label_728
	mov	rcx, qword ptr [r14 + 8]
	test	rcx, rcx
	je	.label_730
	cmp	rsi, rcx
	jne	.label_732
	lea	rax, [rsi + rsi]
	mov	qword ptr [r14], rax
	mov	rdi, qword ptr [r14 + 0x10]
	shl	rsi, 4
	call	realloc
	test	rax, rax
	je	.label_723
	mov	qword ptr [r14 + 0x10], rax
	mov	rcx, qword ptr [r14 + 8]
	jmp	.label_726
.label_728:
	movaps	xmm0, xmmword ptr [rip + label_51]
	movups	xmmword ptr [r14], xmm0
	mov	edi, 8
	call	malloc
	mov	qword ptr [r14 + 0x10], rax
	test	rax, rax
	je	.label_733
	mov	qword ptr [rax], rbx
	jmp	.label_721
.label_730:
	mov	rax, qword ptr [r14 + 0x10]
	mov	qword ptr [rax], rbx
	jmp	.label_722
.label_732:
	mov	rax, qword ptr [r14 + 0x10]
.label_726:
	cmp	qword ptr [rax], rbx
	jle	.label_724
	test	rcx, rcx
	jle	.label_720
	nop	word ptr cs:[rax + rax]
.label_729:
	mov	rdx, qword ptr [rax + rcx*8 - 8]
	mov	qword ptr [rax + rcx*8], rdx
	cmp	rcx, 1
	lea	rcx, [rcx - 1]
	jg	.label_729
	jmp	.label_720
.label_724:
	mov	rdx, qword ptr [rax + rcx*8 - 8]
	jmp	.label_727
	.section	.text
	.align	16
	#Procedure 0x40864c
	.globl sub_40864c
	.type sub_40864c, @function
sub_40864c:

	nop	dword ptr [rax]
.label_725:
	mov	qword ptr [rax + rcx*8], rdx
	mov	rdx, qword ptr [rax + rcx*8 - 0x10]
	dec	rcx
.label_727:
	cmp	rdx, rbx
	jg	.label_725
.label_720:
	mov	qword ptr [rax + rcx*8], rbx
.label_722:
	inc	qword ptr [r14 + 8]
.label_721:
	mov	al, 1
.label_731:
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
.label_733:
	xorps	xmm0, xmm0
	movups	xmmword ptr [r14], xmm0
.label_723:
	xor	eax, eax
	jmp	.label_731
	.section	.text
	.align	16
	#Procedure 0x40867e
	.globl sub_40867e
	.type sub_40867e, @function
sub_40867e:

	nop	
	.section	.text
	.align	16
	#Procedure 0x408680

	.globl rpl_calloc
	.type rpl_calloc, @function
rpl_calloc:
	test	rdi, rdi
	mov	eax, 1
	je	.label_734
	test	rsi, rsi
	mov	ecx, 1
	je	.label_735
	mov	rax, rsi
	imul	rax, rdi
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	mov	rax, rsi
	mov	rcx, rdi
	je	.label_735
	push	rax
	call	__errno_location
	mov	dword ptr [rax], 0xc
	xor	eax, eax
	pop	rcx
	ret	
.label_734:
	mov	ecx, 1
.label_735:
	mov	rdi, rcx
	mov	rsi, rax
	jmp	calloc
	.section	.text
	.align	16
	#Procedure 0x4086cb
	.globl sub_4086cb
	.type sub_4086cb, @function
sub_4086cb:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4086d0
	.globl rpl_re_match
	.type rpl_re_match, @function
rpl_re_match:

	push	rax
	mov	rax, r8
	mov	r8d, 0
	mov	r9, rdx
	push	1
	push	rax
	call	re_search_stub
	add	rsp, 0x10
	pop	rcx
	ret	
	.section	.text
	.align	16
	#Procedure 0x4086eb
	.globl sub_4086eb
	.type sub_4086eb, @function
sub_4086eb:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4086f0

	.globl xnumtoimax
	.type xnumtoimax, @function
xnumtoimax:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	r14, r9
	mov	r12, rcx
	mov	r13, rdx
	mov	eax, esi
	mov	r15, rdi
	lea	rcx, [rsp]
	xor	esi, esi
	mov	edx, eax
	call	xstrtoimax
	test	eax, eax
	je	.label_741
	cmp	eax, 1
	je	.label_742
	cmp	eax, 3
	jne	.label_736
	call	__errno_location
	mov	dword ptr [rax], 0
	jmp	.label_737
.label_741:
	mov	rbx, qword ptr [rsp]
	cmp	rbx, r13
	jl	.label_740
	cmp	rbx, r12
	jle	.label_744
.label_740:
	cmp	rbx, 0x40000000
	jl	.label_743
.label_742:
	call	__errno_location
	mov	dword ptr [rax], 0x4b
	jmp	.label_737
.label_743:
	call	__errno_location
	cmp	rbx, -0x40000001
	jg	.label_738
	mov	dword ptr [rax], 0x4b
	jmp	.label_737
.label_738:
	mov	dword ptr [rax], 0x22
	jmp	.label_737
	.section	.text
	.align	16
	#Procedure 0x408773
	.globl sub_408773
	.type sub_408773, @function
sub_408773:

	nop	word ptr cs:[rax + rax]
.label_736:
	call	__errno_location
.label_737:
	mov	ecx, dword ptr [rsp + 0x40]
	test	ecx, ecx
	mov	ebx, 1
	cmovne	ebx, ecx
	mov	ebp, dword ptr [rax]
	xor	eax, eax
	cmp	ebp, 0x16
	cmove	ebp, eax
	mov	rdi, r15
	call	quote
	mov	r8, rax
	mov	edx, OFFSET FLAT:label_739
	xor	eax, eax
	mov	edi, ebx
	mov	esi, ebp
	mov	rcx, r14
	call	error
	mov	rbx, qword ptr [rsp]
.label_744:
	mov	rax, rbx
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
	#Procedure 0x4087d0

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
	je	.label_755
	mov	edx, OFFSET FLAT:label_760
	xor	eax, eax
	mov	rdi, r14
	mov	r8, rbx
	call	__fprintf_chk
	jmp	.label_747
.label_755:
	mov	edx, OFFSET FLAT:label_749
	xor	eax, eax
	mov	rdi, r14
	mov	rcx, rbx
	mov	r8, r9
	call	__fprintf_chk
.label_747:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_754
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
	mov	esi, OFFSET FLAT:label_750
	mov	edx, 5
	call	dcgettext
	mov	rdi, rax
	mov	rsi, r14
	call	fputs_unlocked
	cmp	r12, 9
	ja	.label_756
	jmp	qword ptr [(r12 * 8) + label_757]
.label_2789:
	add	rsp, 8
	jmp	.label_748
.label_756:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_763
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
	jmp	.label_748
.label_2790:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_751
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
.label_2791:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_745
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
.label_2792:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_761
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
.label_2793:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_758
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
	jmp	.label_748
.label_2794:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_753
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
	jmp	.label_748
.label_2795:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_759
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
	jmp	.label_748
.label_2796:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_762
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
	jmp	.label_748
.label_2798:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_746
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
	jmp	.label_748
.label_2797:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_752
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
.label_748:
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	16
	#Procedure 0x408b28
	.globl sub_408b28
	.type sub_408b28, @function
sub_408b28:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x408b30
	.globl quotearg_colon_mem
	.type quotearg_colon_mem, @function
quotearg_colon_mem:

	sub	rsp, 0x38
	mov	rax, rsi
	mov	rdx, rdi
	mov	rcx, qword ptr [rip + label_9]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0, xmmword ptr [rip + label_10]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_11]
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
	#Procedure 0x408b84
	.globl sub_408b84
	.type sub_408b84, @function
sub_408b84:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x408b90

	.globl check_node_accept_bytes
	.type check_node_accept_bytes, @function
check_node_accept_bytes:
	push	rbp
	push	r15
	push	r14
	push	r12
	push	rbx
	mov	r9, qword ptr [rdi]
	shl	rsi, 4
	movzx	r10d, byte ptr [r9 + rsi + 8]
	cmp	r10d, 7
	je	.label_783
	mov	r8d, dword ptr [rdx + 0x90]
	mov	ebx, 1
	cmp	r8d, 1
	je	.label_779
	lea	rax, [rcx + 1]
	mov	r11, qword ptr [rdx + 0x30]
	cmp	rax, r11
	jge	.label_779
	lea	rax, [rcx*4]
	add	rax, qword ptr [rdx + 0x10]
	mov	ebx, 1
	nop	
.label_784:
	cmp	dword ptr [rax + rbx*4], -1
	jne	.label_779
	lea	rbp, [rcx + rbx + 1]
	inc	rbx
	cmp	rbp, r11
	jl	.label_784
.label_779:
	cmp	r10d, 5
	jne	.label_788
	xor	r14d, r14d
	cmp	ebx, 2
	jl	.label_764
	mov	rax, qword ptr [rdi + 0xd8]
	test	al, 0x40
	jne	.label_767
	mov	rsi, qword ptr [rdx + 8]
	cmp	byte ptr [rsi + rcx], 0xa
	je	.label_764
.label_767:
	test	al, al
	jns	.label_773
	mov	rax, qword ptr [rdx + 8]
	cmp	byte ptr [rax + rcx], 0
	je	.label_764
.label_773:
	mov	r14d, ebx
	jmp	.label_764
.label_788:
	cmp	ebx, 1
	setg	al
	xor	r14d, r14d
	cmp	r10d, 6
	jne	.label_764
	test	al, al
	je	.label_764
	mov	r15, qword ptr [r9 + rsi]
	mov	rsi, qword ptr [r15 + 0x40]
	test	rsi, rsi
	jne	.label_778
	cmp	qword ptr [r15 + 0x48], 0
	jne	.label_778
	xor	r12d, r12d
	cmp	qword ptr [r15 + 0x28], 0
	je	.label_785
.label_778:
	cmp	r8d, 1
	jne	.label_787
	mov	rax, qword ptr [rdx + 8]
	movzx	r12d, byte ptr [rax + rcx]
	jmp	.label_785
.label_787:
	mov	rax, qword ptr [rdx + 0x10]
	mov	r12d, dword ptr [rax + rcx*4]
.label_785:
	mov	rax, qword ptr [r15 + 0x28]
	test	rax, rax
	jle	.label_770
	mov	rcx, qword ptr [r15]
	xor	edx, edx
	nop	dword ptr [rax + rax]
.label_776:
	cmp	r12d, dword ptr [rcx + rdx*4]
	je	.label_775
	inc	rdx
	cmp	rdx, rax
	jl	.label_776
.label_770:
	cmp	qword ptr [r15 + 0x48], 0
	jle	.label_772
	xor	ebp, ebp
	nop	word ptr [rax + rax]
.label_782:
	mov	rax, qword ptr [r15 + 0x18]
	mov	rsi, qword ptr [rax + rbp*8]
	mov	edi, r12d
	call	iswctype
	test	eax, eax
	jne	.label_775
	inc	rbp
	cmp	rbp, qword ptr [r15 + 0x48]
	jl	.label_782
	mov	rsi, qword ptr [r15 + 0x40]
.label_772:
	xor	ecx, ecx
	test	rsi, rsi
	jle	.label_780
	mov	rax, qword ptr [r15 + 8]
	xor	edx, edx
	nop	
.label_765:
	cmp	dword ptr [rax + rdx*4], r12d
	jg	.label_786
	mov	rcx, qword ptr [r15 + 0x10]
	cmp	r12d, dword ptr [rcx + rdx*4]
	jle	.label_775
.label_786:
	inc	rdx
	xor	ecx, ecx
	cmp	rdx, rsi
	jl	.label_765
	jmp	.label_780
.label_775:
	mov	ecx, ebx
.label_780:
	test	byte ptr [r15 + 0x20], 1
	jne	.label_771
	mov	r14d, ecx
	jmp	.label_764
.label_771:
	test	ecx, ecx
	jg	.label_764
	test	ebx, ebx
	mov	r14d, 1
	cmovg	r14d, ebx
.label_764:
	mov	eax, r14d
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_783:
	mov	rax, qword ptr [rdx + 8]
	mov	bl, byte ptr [rax + rcx]
	xor	r14d, r14d
	cmp	bl, 0xc2
	jb	.label_764
	lea	rsi, [rcx + 2]
	mov	rdx, qword ptr [rdx + 0x58]
	cmp	rsi, rdx
	jg	.label_764
	mov	dil, byte ptr [rax + rcx + 1]
	cmp	bl, 0xdf
	ja	.label_781
	cmp	dil, 0xc0
	sbb	eax, eax
	and	eax, 2
	xor	r14d, r14d
	test	dil, dil
	cmovs	r14d, eax
	jmp	.label_764
.label_781:
	cmp	bl, 0xef
	ja	.label_777
	mov	esi, 3
	cmp	bl, 0xe0
	jne	.label_768
	cmp	dil, 0xa0
	jb	.label_764
	jmp	.label_768
.label_777:
	cmp	bl, 0xf7
	ja	.label_769
	mov	esi, 4
	cmp	bl, 0xf0
	jne	.label_768
	cmp	dil, 0x90
	jb	.label_764
	jmp	.label_768
.label_769:
	cmp	bl, 0xfb
	ja	.label_774
	mov	esi, 5
	cmp	bl, 0xf8
	jne	.label_768
	cmp	dil, 0x88
	jb	.label_764
	jmp	.label_768
.label_774:
	cmp	bl, 0xfd
	ja	.label_764
	mov	esi, 6
	cmp	bl, 0xfc
	jne	.label_768
	cmp	dil, 0x84
	jb	.label_764
.label_768:
	mov	edi, esi
	lea	rbp, [rdi + rcx]
	cmp	rbp, rdx
	jg	.label_764
	add	rax, rcx
	mov	ecx, 1
.label_766:
	movzx	edx, byte ptr [rax + rcx]
	test	dl, dl
	jns	.label_764
	cmp	dl, 0xbf
	ja	.label_764
	inc	rcx
	cmp	rcx, rdi
	jl	.label_766
	mov	r14d, esi
	jmp	.label_764
	.section	.text
	.align	16
	#Procedure 0x408e13
	.globl sub_408e13
	.type sub_408e13, @function
sub_408e13:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x408e20

	.globl xstrtoimax
	.type xstrtoimax, @function
xstrtoimax:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x18
	mov	r14, r8
	mov	qword ptr [rsp], rcx
	mov	ebp, edx
	mov	rbx, rdi
	cmp	ebp, 0x25
	jae	.label_794
	test	rsi, rsi
	lea	r12, [rsp + 0x10]
	cmovne	r12, rsi
	call	__errno_location
	mov	r15, rax
	mov	dword ptr [r15], 0
	xor	r13d, r13d
	xor	ecx, ecx
	mov	rdi, rbx
	mov	rsi, r12
	mov	edx, ebp
	call	__strtol_internal
	mov	rbp, rax
	mov	qword ptr [rsp + 8], r12
	mov	r12, qword ptr [r12]
	cmp	r12, rbx
	je	.label_822
	mov	eax, dword ptr [r15]
	test	eax, eax
	je	.label_813
	mov	r13d, 4
	cmp	eax, 0x22
	jne	.label_811
	mov	r13d, 1
.label_813:
	test	r14, r14
	je	.label_819
	mov	r15d, r13d
	jmp	.label_824
.label_822:
	mov	r13d, 4
	test	r14, r14
	je	.label_811
	movsx	esi, byte ptr [rbx]
	test	esi, esi
	je	.label_811
	mov	rdi, r14
	call	strchr
	xor	r15d, r15d
	mov	ebp, 1
	test	rax, rax
	je	.label_811
.label_824:
	movsx	r13d, byte ptr [r12]
	test	r13d, r13d
	je	.label_834
	mov	rdi, r14
	mov	esi, r13d
	call	strchr
	test	rax, rax
	je	.label_816
	mov	ebx, 1
	mov	r10d, 0x400
	lea	eax, [r13 - 0x45]
	cmp	eax, 0x2f
	ja	.label_789
	movabs	rcx, 0x814400308945
	bt	rcx, rax
	jae	.label_789
	mov	esi, 0x30
	mov	rdi, r14
	call	strchr
	mov	ebx, 1
	mov	r10d, 0x400
	test	rax, rax
	je	.label_789
	movsx	eax, byte ptr [r12 + 1]
	mov	ebx, 1
	mov	r10d, 0x400
	cmp	eax, 0x42
	je	.label_800
	cmp	eax, 0x44
	je	.label_800
	cmp	eax, 0x69
	jne	.label_789
	xor	eax, eax
	cmp	byte ptr [r12 + 2], 0x42
	sete	al
	lea	rbx, [rax + rax + 1]
	mov	r10d, 0x400
	jmp	.label_789
.label_819:
	mov	rax, qword ptr [rsp]
	mov	qword ptr [rax], rbp
	jmp	.label_811
.label_800:
	mov	ebx, 2
	mov	r10d, 0x3e8
.label_789:
	add	r13d, -0x42
	cmp	r13d, 0x35
	ja	.label_816
	movabs	r9, 0x7fffffffffffffff
	xor	ecx, ecx
	mov	r8, rbp
	jmp	qword ptr [(r13 * 8) + label_820]
.label_2849:
	lea	r8, [r9 + 1]
	mov	rax, r8
	cqo	
	idiv	r10
	mov	r11, rax
	cmp	rbp, r11
	mov	r14d, 1
	mov	rsi, r8
	mov	ecx, 1
	jl	.label_827
	xor	edx, edx
	mov	rax, r9
	div	r10
	mov	rsi, rbp
	imul	rsi, r10
	xor	ecx, ecx
	cmp	rax, rbp
	setl	cl
	cmovl	rsi, r9
.label_827:
	cmp	rsi, r11
	mov	rdi, r8
	jl	.label_837
	xor	edx, edx
	mov	rax, r9
	div	r10
	mov	rdi, rsi
	imul	rdi, r10
	xor	r14d, r14d
	cmp	rax, rsi
	setl	r14b
	cmovl	rdi, r9
.label_837:
	or	r14d, ecx
	cmp	rdi, r11
	mov	ecx, 1
	jl	.label_792
	xor	edx, edx
	mov	rax, r9
	div	r10
	imul	r10, rdi
	xor	ecx, ecx
	cmp	rax, rdi
	setl	cl
	cmovl	r10, r9
	mov	r8, r10
.label_792:
	or	ecx, r14d
	jmp	.label_791
.label_816:
	mov	rax, qword ptr [rsp]
	mov	qword ptr [rax], rbp
	or	r15d, 2
	jmp	.label_833
.label_2850:
	lea	r8, [r9 + 1]
	mov	rax, r8
	cqo	
	idiv	r10
	cmp	rbp, rax
	mov	ecx, 1
	jl	.label_791
	xor	edx, edx
	mov	rax, r9
	div	r10
	imul	r10, rbp
	xor	ecx, ecx
	cmp	rax, rbp
	setl	cl
	cmovl	r10, r9
	mov	r8, r10
	jmp	.label_791
.label_2851:
	lea	r8, [r9 + 1]
	mov	rax, r8
	cqo	
	idiv	r10
	mov	rdi, rax
	cmp	rbp, rdi
	mov	ecx, 1
	mov	rsi, r8
	mov	r11d, 1
	jl	.label_817
	xor	edx, edx
	mov	rax, r9
	div	r10
	mov	rsi, rbp
	imul	rsi, r10
	xor	r11d, r11d
	cmp	rax, rbp
	setl	r11b
	cmovl	rsi, r9
.label_817:
	cmp	rsi, rdi
	jl	.label_830
	xor	edx, edx
	mov	rax, r9
	div	r10
	imul	r10, rsi
	xor	ecx, ecx
	cmp	rax, rsi
	setl	cl
	cmovl	r10, r9
	mov	r8, r10
.label_830:
	or	ecx, r11d
	jmp	.label_791
.label_2853:
	lea	r8, [r9 + 1]
	mov	rax, r8
	cqo	
	idiv	r10
	mov	r11, rax
	cmp	rbp, r11
	mov	r14d, 1
	mov	rdi, r8
	mov	ecx, 1
	jl	.label_838
	xor	edx, edx
	mov	rax, r9
	div	r10
	mov	rdi, rbp
	imul	rdi, r10
	xor	ecx, ecx
	cmp	rax, rbp
	setl	cl
	cmovl	rdi, r9
.label_838:
	mov	rbp, rbx
	cmp	rdi, r11
	mov	rsi, r8
	jl	.label_797
	xor	edx, edx
	mov	rax, r9
	div	r10
	mov	rsi, rdi
	imul	rsi, r10
	xor	r14d, r14d
	cmp	rax, rdi
	setl	r14b
	cmovl	rsi, r9
.label_797:
	or	r14d, ecx
	cmp	rsi, r11
	mov	ecx, 1
	mov	rbx, r8
	mov	edi, 1
	jl	.label_807
	xor	edx, edx
	mov	rax, r9
	div	r10
	mov	rbx, rsi
	imul	rbx, r10
	xor	edi, edi
	cmp	rax, rsi
	setl	dil
	cmovl	rbx, r9
.label_807:
	or	edi, r14d
	cmp	rbx, r11
	jl	.label_815
	xor	edx, edx
	mov	rax, r9
	div	r10
	imul	r10, rbx
	xor	ecx, ecx
	cmp	rax, rbx
	setl	cl
	cmovl	r10, r9
	mov	r8, r10
.label_815:
	or	ecx, edi
	mov	rbx, rbp
	jmp	.label_791
.label_2847:
	movabs	rax, 0xffe0000000000000
	cmp	rbp, rax
	jl	.label_814
	mov	r8, rbp
	shl	r8, 0xa
	movabs	rax, 0x1fffffffffffff
	jmp	.label_818
.label_2848:
	mov	r13, rbx
	lea	r8, [r9 + 1]
	mov	rax, r8
	cqo	
	idiv	r10
	mov	r11, rax
	cmp	rbp, r11
	mov	ebx, 1
	mov	rsi, r8
	mov	edi, 1
	jl	.label_806
	xor	edx, edx
	mov	rax, r9
	div	r10
	mov	rsi, rbp
	imul	rsi, r10
	xor	edi, edi
	cmp	rax, rbp
	setl	dil
	cmovl	rsi, r9
.label_806:
	cmp	rsi, r11
	mov	rcx, r8
	jl	.label_832
	xor	edx, edx
	mov	rax, r9
	div	r10
	mov	rcx, rsi
	imul	rcx, r10
	xor	ebx, ebx
	cmp	rax, rsi
	setl	bl
	cmovl	rcx, r9
.label_832:
	or	ebx, edi
	cmp	rcx, r11
	mov	r14d, 1
	mov	rsi, r8
	mov	ebp, 1
	jl	.label_803
	xor	edx, edx
	mov	rax, r9
	div	r10
	mov	rsi, rcx
	imul	rsi, r10
	xor	ebp, ebp
	cmp	rax, rcx
	setl	bpl
	cmovl	rsi, r9
.label_803:
	or	ebp, ebx
	cmp	rsi, r11
	mov	rdi, r8
	jl	.label_810
	xor	edx, edx
	mov	rax, r9
	div	r10
	mov	rdi, rsi
	imul	rdi, r10
	xor	r14d, r14d
	cmp	rax, rsi
	setl	r14b
	cmovl	rdi, r9
.label_810:
	or	r14d, ebp
	cmp	rdi, r11
	mov	ecx, 1
	mov	rsi, r8
	mov	ebx, 1
	jl	.label_821
	xor	edx, edx
	mov	rax, r9
	div	r10
	mov	rsi, rdi
	imul	rsi, r10
	xor	ebx, ebx
	cmp	rax, rdi
	setl	bl
	cmovl	rsi, r9
.label_821:
	or	ebx, r14d
	cmp	rsi, r11
	jl	.label_829
	xor	edx, edx
	mov	rax, r9
	div	r10
	imul	r10, rsi
	xor	ecx, ecx
	cmp	rax, rsi
	setl	cl
	cmovl	r10, r9
	mov	r8, r10
.label_829:
	or	ecx, ebx
	mov	rbx, r13
	jmp	.label_791
.label_2852:
	mov	r13, rbx
	lea	r8, [r9 + 1]
	mov	rax, r8
	cqo	
	idiv	r10
	mov	r11, rax
	cmp	rbp, r11
	mov	ebx, 1
	mov	rsi, r8
	mov	edi, 1
	jl	.label_840
	xor	edx, edx
	mov	rax, r9
	div	r10
	mov	rsi, rbp
	imul	rsi, r10
	xor	edi, edi
	cmp	rax, rbp
	setl	dil
	cmovl	rsi, r9
.label_840:
	cmp	rsi, r11
	mov	rcx, r8
	jl	.label_799
	xor	edx, edx
	mov	rax, r9
	div	r10
	mov	rcx, rsi
	imul	rcx, r10
	xor	ebx, ebx
	cmp	rax, rsi
	setl	bl
	cmovl	rcx, r9
.label_799:
	or	ebx, edi
	cmp	rcx, r11
	mov	r14d, 1
	mov	rsi, r8
	mov	ebp, 1
	jl	.label_808
	xor	edx, edx
	mov	rax, r9
	div	r10
	mov	rsi, rcx
	imul	rsi, r10
	xor	ebp, ebp
	cmp	rax, rcx
	setl	bpl
	cmovl	rsi, r9
.label_808:
	or	ebp, ebx
	cmp	rsi, r11
	mov	rdi, r8
	jl	.label_809
	xor	edx, edx
	mov	rax, r9
	div	r10
	mov	rdi, rsi
	imul	rdi, r10
	xor	r14d, r14d
	cmp	rax, rsi
	setl	r14b
	cmovl	rdi, r9
.label_809:
	or	r14d, ebp
	cmp	rdi, r11
	mov	ecx, 1
	mov	rbx, r13
	jl	.label_828
	xor	edx, edx
	mov	rax, r9
	div	r10
	imul	r10, rdi
	xor	ecx, ecx
	cmp	rax, rdi
	setl	cl
	cmovl	r10, r9
	mov	r8, r10
.label_828:
	or	ecx, r14d
	jmp	.label_791
.label_2854:
	mov	r13, rbx
	lea	r8, [r9 + 1]
	mov	rax, r8
	cqo	
	idiv	r10
	mov	r11, rax
	cmp	rbp, r11
	mov	edi, 1
	mov	rbx, r8
	mov	ecx, 1
	jl	.label_836
	xor	edx, edx
	mov	rax, r9
	div	r10
	mov	rbx, rbp
	imul	rbx, r10
	xor	ecx, ecx
	cmp	rax, rbp
	setl	cl
	cmovl	rbx, r9
.label_836:
	cmp	rbx, r11
	mov	rsi, r8
	jl	.label_795
	xor	edx, edx
	mov	rax, r9
	div	r10
	mov	rsi, rbx
	imul	rsi, r10
	xor	edi, edi
	cmp	rax, rbx
	setl	dil
	cmovl	rsi, r9
.label_795:
	or	edi, ecx
	cmp	rsi, r11
	mov	r14d, 1
	mov	rbx, r8
	mov	ecx, 1
	jl	.label_805
	xor	edx, edx
	mov	rax, r9
	div	r10
	mov	rbx, rsi
	imul	rbx, r10
	xor	ecx, ecx
	cmp	rax, rsi
	setl	cl
	cmovl	rbx, r9
.label_805:
	or	ecx, edi
	cmp	rbx, r11
	mov	rsi, r8
	jl	.label_812
	xor	edx, edx
	mov	rax, r9
	div	r10
	mov	rsi, rbx
	imul	rsi, r10
	xor	r14d, r14d
	cmp	rax, rbx
	setl	r14b
	cmovl	rsi, r9
.label_812:
	or	r14d, ecx
	cmp	rsi, r11
	mov	ebp, 1
	mov	rdi, r8
	mov	ecx, 1
	jl	.label_823
	xor	edx, edx
	mov	rax, r9
	div	r10
	mov	rdi, rsi
	imul	rdi, r10
	xor	ecx, ecx
	cmp	rax, rsi
	setl	cl
	cmovl	rdi, r9
.label_823:
	or	ecx, r14d
	cmp	rdi, r11
	mov	rsi, r8
	jl	.label_831
	xor	edx, edx
	mov	rax, r9
	div	r10
	mov	rsi, rdi
	imul	rsi, r10
	xor	ebp, ebp
	cmp	rax, rdi
	setl	bpl
	cmovl	rsi, r9
.label_831:
	or	ebp, ecx
	cmp	rsi, r11
	mov	ecx, 1
	mov	rbx, r8
	mov	edi, 1
	jl	.label_839
	xor	edx, edx
	mov	rax, r9
	div	r10
	mov	rbx, rsi
	imul	rbx, r10
	xor	edi, edi
	cmp	rax, rsi
	setl	dil
	cmovl	rbx, r9
.label_839:
	or	edi, ebp
	cmp	rbx, r11
	jl	.label_796
	xor	edx, edx
	mov	rax, r9
	div	r10
	imul	r10, rbx
	xor	ecx, ecx
	cmp	rax, rbx
	jmp	.label_802
.label_2855:
	mov	r13, rbx
	lea	r8, [r9 + 1]
	mov	rax, r8
	cqo	
	idiv	r10
	mov	r11, rax
	cmp	rbp, r11
	mov	edi, 1
	mov	rbx, r8
	mov	ecx, 1
	jl	.label_804
	xor	edx, edx
	mov	rax, r9
	div	r10
	mov	rbx, rbp
	imul	rbx, r10
	xor	ecx, ecx
	cmp	rax, rbp
	setl	cl
	cmovl	rbx, r9
.label_804:
	cmp	rbx, r11
	mov	rsi, r8
	jl	.label_801
	xor	edx, edx
	mov	rax, r9
	div	r10
	mov	rsi, rbx
	imul	rsi, r10
	xor	edi, edi
	cmp	rax, rbx
	setl	dil
	cmovl	rsi, r9
.label_801:
	or	edi, ecx
	cmp	rsi, r11
	mov	r14d, 1
	mov	rbx, r8
	mov	ecx, 1
	jl	.label_826
	xor	edx, edx
	mov	rax, r9
	div	r10
	mov	rbx, rsi
	imul	rbx, r10
	xor	ecx, ecx
	cmp	rax, rsi
	setl	cl
	cmovl	rbx, r9
.label_826:
	or	ecx, edi
	cmp	rbx, r11
	mov	rsi, r8
	jl	.label_835
	xor	edx, edx
	mov	rax, r9
	div	r10
	mov	rsi, rbx
	imul	rsi, r10
	xor	r14d, r14d
	cmp	rax, rbx
	setl	r14b
	cmovl	rsi, r9
.label_835:
	or	r14d, ecx
	cmp	rsi, r11
	mov	edi, 1
	mov	rbx, r8
	mov	ecx, 1
	jl	.label_790
	xor	edx, edx
	mov	rax, r9
	div	r10
	mov	rbx, rsi
	imul	rbx, r10
	xor	ecx, ecx
	cmp	rax, rsi
	setl	cl
	cmovl	rbx, r9
.label_790:
	or	ecx, r14d
	cmp	rbx, r11
	mov	rsi, r8
	jl	.label_798
	xor	edx, edx
	mov	rax, r9
	div	r10
	mov	rsi, rbx
	imul	rsi, r10
	xor	edi, edi
	cmp	rax, rbx
	setl	dil
	cmovl	rsi, r9
.label_798:
	or	edi, ecx
	cmp	rsi, r11
	mov	ecx, 1
	jl	.label_796
	xor	edx, edx
	mov	rax, r9
	div	r10
	imul	r10, rsi
	xor	ecx, ecx
	cmp	rax, rsi
.label_802:
	setl	cl
	cmovl	r10, r9
	mov	r8, r10
.label_796:
	or	ecx, edi
	mov	rbx, r13
	jmp	.label_791
.label_2856:
	movabs	rax, 0xffc0000000000000
	cmp	rbp, rax
	jl	.label_814
	mov	r8, rbp
	shl	r8, 9
	movabs	rax, 0x3fffffffffffff
	jmp	.label_818
.label_2857:
	movabs	rax, 0xc000000000000000
	cmp	rbp, rax
	jge	.label_825
.label_814:
	inc	r9
	mov	ecx, 1
	mov	r8, r9
	jmp	.label_791
.label_825:
	lea	r8, [rbp + rbp]
	movabs	rax, 0x3fffffffffffffff
.label_818:
	xor	ecx, ecx
	cmp	rbp, rax
	setg	cl
	cmovg	r8, r9
.label_791:
	or	ecx, r15d
	lea	rax, [r12 + rbx]
	mov	rdx, qword ptr [rsp + 8]
	mov	qword ptr [rdx], rax
	lea	r15d, [rcx + 2]
	cmp	byte ptr [r12 + rbx], 0
	cmove	r15d, ecx
	mov	rbp, r8
.label_834:
	mov	rax, qword ptr [rsp]
	mov	qword ptr [rax], rbp
.label_833:
	mov	r13d, r15d
.label_811:
	mov	eax, r13d
	add	rsp, 0x18
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_794:
	mov	edi, OFFSET FLAT:label_503
	mov	esi, OFFSET FLAT:label_504
	mov	edx, 0x54
	mov	ecx, OFFSET FLAT:label_793
	call	__assert_fail
	.section	.text
	.align	16
	#Procedure 0x409738
	.globl sub_409738
	.type sub_409738, @function
sub_409738:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x409740

	.globl check_arrival_expand_ecl
	.type check_arrival_expand_ecl, @function
check_arrival_expand_ecl:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x28
	mov	r15d, ecx
	mov	r13, rdx
	mov	r14, rsi
	mov	qword ptr [rsp + 8], rdi
	mov	r12, qword ptr [r14 + 8]
	mov	qword ptr [rsp + 0x10], r12
	mov	qword ptr [rsp + 0x18], 0
	lea	rdi, [r12*8]
	call	malloc
	mov	qword ptr [rsp + 0x20], rax
	mov	ebx, 0xc
	test	rax, rax
	je	.label_845
	test	r12, r12
	jle	.label_847
	xor	r12d, r12d
	jmp	.label_849
	.section	.text
	.align	16
	#Procedure 0x40979c
	.globl sub_40979c
	.type sub_40979c, @function
sub_40979c:

	nop	dword ptr [rax]
.label_849:
	mov	rax, qword ptr [r14 + 0x10]
	mov	rdx, qword ptr [rax + r12*8]
	mov	rax, qword ptr [rsp + 8]
	mov	r8, qword ptr [rax + 0x30]
	lea	r9, [rdx + rdx*2]
	mov	r10, qword ptr [r8 + r9*8 + 8]
	test	r10, r10
	jle	.label_841
	mov	rdi, qword ptr [r8 + r9*8 + 0x10]
	mov	rax, qword ptr [rsp + 8]
	mov	rbx, qword ptr [rax]
	xor	eax, eax
	nop	
.label_846:
	mov	rbp, qword ptr [rdi + rax*8]
	mov	rcx, rbp
	shl	rcx, 4
	movzx	esi, byte ptr [rbx + rcx + 8]
	cmp	esi, r15d
	jne	.label_842
	cmp	qword ptr [rbx + rcx], r13
	je	.label_843
.label_842:
	inc	rax
	cmp	rax, r10
	jl	.label_846
.label_841:
	lea	rsi, [r8 + r9*8]
	lea	rdi, [rsp + 0x10]
	call	re_node_set_merge
.label_848:
	mov	ebx, eax
	test	ebx, ebx
	jne	.label_844
	inc	r12
	cmp	r12, qword ptr [r14 + 8]
	jl	.label_849
.label_847:
	mov	rdi, qword ptr [r14 + 0x10]
	call	free
	mov	rax, qword ptr [rsp + 0x20]
	mov	qword ptr [r14 + 0x10], rax
	movups	xmm0, xmmword ptr [rsp + 0x10]
	movups	xmmword ptr [r14], xmm0
	xor	ebx, ebx
.label_845:
	mov	eax, ebx
	add	rsp, 0x28
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_843:
	cmp	rbp, -1
	je	.label_841
	mov	rdi, qword ptr [rsp + 8]
	lea	rsi, [rsp + 0x10]
	mov	rcx, r13
	mov	r8d, r15d
	call	check_arrival_expand_ecl_sub
	jmp	.label_848
	.section	.text
	.align	16
	#Procedure 0x40985b
	.globl sub_40985b
	.type sub_40985b, @function
sub_40985b:

	nop	dword ptr [rax]
.label_844:
	mov	rdi, qword ptr [rsp + 0x20]
	call	free
	jmp	.label_845
	.section	.text
	.align	16
	#Procedure 0x40986a
	.globl sub_40986a
	.type sub_40986a, @function
sub_40986a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x409870
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
	#Procedure 0x409888
	.globl sub_409888
	.type sub_409888, @function
sub_409888:

	nop	dword ptr [rax + rax]
.label_858:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	mov	rdx, qword ptr [rip + output_filename]
	xor	edi, edi
	mov	esi, 3
	call	quotearg_n_style_colon
	mov	rcx, rax
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_850
	xor	eax, eax
	mov	esi, ebx
.label_852:
	call	error
	mov	qword ptr [rip + output_stream],  0
	call	cleanup_fatal
	.section	.text
	.align	16
	#Procedure 0x4098cd
	.globl sub_4098cd
	.type sub_4098cd, @function
sub_4098cd:

	nop	word ptr cs:[rax + rax]
.label_856:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_851
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	rsi, qword ptr [rip + output_filename]
	mov	edi, 4
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rbx
	jmp	.label_852
	.section	.text
	.align	16
	#Procedure 0x40990c

	.globl close_output_file
	.type close_output_file, @function
close_output_file:
	push	rbp
	push	r15
	push	r14
	push	rbx
	sub	rsp, 0x88
	mov	rdi, qword ptr [rip + output_stream]
	test	rdi, rdi
	je	.label_857
	test	byte ptr [rdi], 0x20
	jne	.label_856
	call	rpl_fclose
	test	eax, eax
	jne	.label_858
	mov	rdi, qword ptr [rip + bytes_written]
	test	rdi, rdi
	jne	.label_854
	cmp	byte ptr [rip + elide_empty_files],  1
	jne	.label_854
	lea	r15, [rsp]
	xor	edi, edi
	mov	esi, OFFSET FLAT:caught_signals
	mov	rdx, r15
	call	sigprocmask
	mov	rdi, qword ptr [rip + output_filename]
	call	unlink
	mov	ebp, eax
	xor	ebx, ebx
	test	ebp, ebp
	sete	bl
	call	__errno_location
	mov	r14d, dword ptr [rax]
	sub	dword ptr [rip + files_created],  ebx
	mov	edi, 2
	xor	edx, edx
	mov	rsi, r15
	call	sigprocmask
	test	ebp, ebp
	je	.label_855
	mov	rdx, qword ptr [rip + output_filename]
	xor	edi, edi
	mov	esi, 3
	call	quotearg_n_style_colon
	mov	rcx, rax
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_850
	xor	eax, eax
	mov	esi, r14d
	call	error
	jmp	.label_855
.label_854:
	mov	al, byte ptr [rip + suppress_count]
	test	al, al
	jne	.label_855
	mov	rbx, qword ptr [rip + stdout]
	lea	rsi, [rsp]
	call	umaxtostr
	mov	rcx, rax
	mov	esi, 1
	mov	edx, OFFSET FLAT:label_853
	xor	eax, eax
	mov	rdi, rbx
	call	__fprintf_chk
.label_855:
	mov	qword ptr [rip + output_stream],  0
.label_857:
	add	rsp, 0x88
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x409a10

	.globl re_compile_fastmap_iter
	.type re_compile_fastmap_iter, @function
re_compile_fastmap_iter:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x138
	mov	r15, rdx
	mov	r13, rdi
	mov	rbx, qword ptr [r13]
	cmp	dword ptr [rbx + 0xb4], 1
	jne	.label_1282
	mov	al, byte ptr [r13 + 0x1a]
	and	al, 0x40
	shr	al, 6
	mov	dword ptr [rsp + 0xc], eax
	jmp	.label_1205
.label_1282:
	mov	dword ptr [rsp + 0xc], 0
.label_1205:
	cmp	qword ptr [rsi + 0x10], 0
	jle	.label_867
	xor	r14d, r14d
	mov	qword ptr [rsp + 0x20], r13
	mov	qword ptr [rsp + 0x10], rbx
	mov	qword ptr [rsp + 0x28], rsi
	nop	dword ptr [rax + rax]
.label_863:
	mov	rax, qword ptr [rsi + 0x18]
	mov	rbp, qword ptr [rax + r14*8]
	mov	rcx, qword ptr [rbx]
	mov	r12, rbp
	shl	r12, 4
	movzx	eax, byte ptr [rcx + r12 + 8]
	mov	edx, eax
	dec	dl
	movzx	edx, dl
	cmp	dl, 6
	ja	.label_958
	lea	rsi, [rcx + r12]
	jmp	qword ptr [(rdx * 8) + label_1221]
.label_2718:
	movzx	ebx, byte ptr [rsi]
	mov	byte ptr [r15 + rbx], 1
	mov	eax, dword ptr [rsp + 0xc]
	test	al, al
	je	.label_1402
	mov	eax, ebx
	sub	eax, -0x80
	cmp	eax, 0x17f
	ja	.label_1225
	call	__ctype_tolower_loc
	mov	rax, qword ptr [rax]
	mov	ebx, dword ptr [rax + rbx*4]
.label_1225:
	movsxd	rax, ebx
	mov	byte ptr [r15 + rax], 1
.label_1402:
	test	byte ptr [r13 + 0x1a], 0x40
	mov	rbx, qword ptr [rsp + 0x10]
	je	.label_958
	cmp	dword ptr [rbx + 0xb4], 2
	jl	.label_958
	mov	rax, qword ptr [rbx]
	mov	al, byte ptr [rax + r12]
	mov	byte ptr [rsp + 0x30], al
	inc	rbp
	cmp	rbp, qword ptr [rbx + 0x10]
	lea	r13, [rsp + 0x31]
	mov	edx, 0x2000ff
	jae	.label_1229
	add	r12, 0x18
	lea	r13, [rsp + 0x31]
	nop	word ptr cs:[rax + rax]
.label_988:
	mov	rax, qword ptr [rbx]
	mov	ecx, dword ptr [rax + r12]
	and	ecx, edx
	cmp	ecx, 0x200001
	jne	.label_1229
	movzx	eax, byte ptr [rax + r12 - 8]
	mov	byte ptr [r13], al
	inc	r13
	inc	rbp
	add	r12, 0x10
	cmp	rbp, qword ptr [rbx + 0x10]
	jb	.label_988
.label_1229:
	mov	r12, rbx
	mov	qword ptr [rsp], 0
	lea	rbp, [rsp + 0x30]
	sub	r13, rbp
	lea	rdi, [rsp + 0x1c]
	mov	rsi, rbp
	mov	rdx, r13
	lea	rbx, [rsp]
	mov	rcx, rbx
	call	rpl_mbrtowc
	cmp	rax, r13
	jne	.label_1050
	mov	edi, dword ptr [rsp + 0x1c]
	call	towlower
	mov	rdi, rbp
	mov	esi, eax
	mov	rdx, rbx
	call	wcrtomb
	cmp	rax, -1
	je	.label_1050
	movzx	eax, byte ptr [rsp + 0x30]
	mov	byte ptr [r15 + rax], 1
.label_1050:
	mov	r13, qword ptr [rsp + 0x20]
	jmp	.label_1256
	.section	.text
	.align	16
	#Procedure 0x409baa
	.globl sub_409baa
	.type sub_409baa, @function
sub_409baa:

	nop	word ptr [rax + rax]
.label_2720:
	mov	rax, qword ptr [rcx + r12]
	mov	rbp, qword ptr [rax]
	mov	eax, dword ptr [rsp + 0xc]
	test	al, al
	je	.label_1258
	xor	ebx, ebx
	nop	word ptr cs:[rax + rax]
.label_1269:
	bt	rbp, rbx
	jae	.label_1263
	mov	byte ptr [r15 + rbx], 1
	mov	eax, ebx
	sub	eax, -0x80
	cmp	eax, 0x180
	jae	.label_1264
	call	__ctype_tolower_loc
	mov	rax, qword ptr [rax]
	mov	eax, dword ptr [rax + rbx*4]
	jmp	.label_1266
	.section	.text
	.align	16
	#Procedure 0x409bf4
	.globl sub_409bf4
	.type sub_409bf4, @function
sub_409bf4:

	nop	word ptr cs:[rax + rax]
.label_1264:
	mov	eax, ebx
.label_1266:
	cdqe	
	mov	byte ptr [r15 + rax], 1
.label_1263:
	inc	rbx
	cmp	rbx, 0x40
	jne	.label_1269
	mov	rbx, qword ptr [rsp + 0x10]
	mov	rax, qword ptr [rbx]
	mov	rax, qword ptr [rax + r12]
	mov	r13, qword ptr [rax + 8]
	xor	ebp, ebp
	nop	word ptr cs:[rax + rax]
.label_1215:
	bt	r13, rbp
	jae	.label_1178
	mov	byte ptr [r15 + rbp + 0x40], 1
	lea	eax, [rbp + 0xc0]
	cmp	eax, 0x180
	jae	.label_1276
	call	__ctype_tolower_loc
	mov	rax, qword ptr [rax]
	mov	eax, dword ptr [rax + rbp*4 + 0x100]
	jmp	.label_1280
	.section	.text
	.align	16
	#Procedure 0x409c5a
	.globl sub_409c5a
	.type sub_409c5a, @function
sub_409c5a:

	nop	word ptr [rax + rax]
.label_1276:
	lea	rax, [rbp + 0x40]
.label_1280:
	cdqe	
	mov	byte ptr [r15 + rax], 1
.label_1178:
	inc	rbp
	cmp	rbp, 0x40
	jne	.label_1215
	mov	rax, qword ptr [rbx]
	mov	rax, qword ptr [rax + r12]
	mov	r13, qword ptr [rax + 0x10]
	xor	ebp, ebp
	nop	word ptr cs:[rax + rax]
.label_1294:
	bt	r13, rbp
	jae	.label_1288
	mov	byte ptr [r15 + rbp + 0x80], 1
	lea	eax, [rbp + 0x100]
	cmp	eax, 0x180
	jae	.label_1289
	call	__ctype_tolower_loc
	mov	rax, qword ptr [rax]
	mov	eax, dword ptr [rax + rbp*4 + 0x200]
	jmp	.label_1291
	.section	.text
	.align	16
	#Procedure 0x409cbd
	.globl sub_409cbd
	.type sub_409cbd, @function
sub_409cbd:

	nop	dword ptr [rax]
.label_1289:
	mov	rax, rbp
	sub	rax, -0x80
.label_1291:
	cdqe	
	mov	byte ptr [r15 + rax], 1
.label_1288:
	inc	rbp
	cmp	rbp, 0x40
	jne	.label_1294
	mov	rax, qword ptr [rbx]
	mov	rax, qword ptr [rax + r12]
	mov	r12, qword ptr [rax + 0x18]
	xor	ebp, ebp
	mov	r13, qword ptr [rsp + 0x20]
	nop	dword ptr [rax]
.label_1306:
	bt	r12, rbp
	jae	.label_1326
	mov	byte ptr [r15 + rbp + 0xc0], 1
	lea	eax, [rbp + 0x140]
	cmp	eax, 0x180
	jae	.label_1297
	call	__ctype_tolower_loc
	mov	rax, qword ptr [rax]
	mov	eax, dword ptr [rax + rbp*4 + 0x300]
	jmp	.label_1303
	.section	.text
	.align	16
	#Procedure 0x409d1d
	.globl sub_409d1d
	.type sub_409d1d, @function
sub_409d1d:

	nop	dword ptr [rax]
.label_1297:
	lea	rax, [rbp + 0xc0]
.label_1303:
	cdqe	
	mov	byte ptr [r15 + rax], 1
.label_1326:
	inc	rbp
	cmp	rbp, 0x40
	jne	.label_1306
	jmp	.label_958
	.section	.text
	.align	16
	#Procedure 0x409d3c
	.globl sub_409d3c
	.type sub_409d3c, @function
sub_409d3c:

	nop	dword ptr [rax]
.label_2721:
	mov	r12, qword ptr [rsi]
	cmp	dword ptr [rbx + 0xb4], 1
	jle	.label_869
	cmp	qword ptr [r12 + 0x48], 0
	jne	.label_1308
	test	byte ptr [r12 + 0x20], 1
	jne	.label_1308
	cmp	qword ptr [r12 + 0x40], 0
	je	.label_869
.label_1308:
	mov	r12, rbx
	mov	byte ptr [rsp], 0
	lea	rbp, [rsp + 0x30]
	lea	rbx, [rsp]
	nop	word ptr cs:[rax + rax]
.label_1327:
	mov	qword ptr [rsp + 0x30], 0
	xor	edi, edi
	mov	edx, 1
	mov	rsi, rbx
	mov	rcx, rbp
	call	rpl_mbrtowc
	movzx	ecx, byte ptr [rsp]
	cmp	rax, -2
	jne	.label_1325
	mov	byte ptr [r15 + rcx], 1
.label_1325:
	inc	cl
	mov	byte ptr [rsp], cl
	jne	.label_1327
.label_1256:
	mov	rbx, r12
	jmp	.label_958
.label_869:
	cmp	qword ptr [r12 + 0x28], 0
	jle	.label_958
	mov	eax, dword ptr [rsp + 0xc]
	xor	ebp, ebp
	test	al, al
	je	.label_972
	nop	word ptr cs:[rax + rax]
.label_1354:
	mov	qword ptr [rsp], 0
	mov	rax, qword ptr [r12]
	mov	esi, dword ptr [rax + rbp*4]
	lea	rdi, [rsp + 0x30]
	lea	rdx, [rsp]
	call	wcrtomb
	cmp	rax, -1
	je	.label_1337
	movzx	ebx, byte ptr [rsp + 0x30]
	mov	byte ptr [r15 + rbx], 1
	mov	eax, ebx
	sub	eax, -0x80
	cmp	eax, 0x17f
	ja	.label_1338
	call	__ctype_tolower_loc
	mov	rax, qword ptr [rax]
	mov	ebx, dword ptr [rax + rbx*4]
.label_1338:
	movsxd	rax, ebx
	mov	byte ptr [r15 + rax], 1
	mov	rbx, qword ptr [rsp + 0x10]
.label_1337:
	test	byte ptr [r13 + 0x1a], 0x40
	je	.label_1346
	cmp	dword ptr [rbx + 0xb4], 2
	jl	.label_1346
	mov	rax, qword ptr [r12]
	mov	edi, dword ptr [rax + rbp*4]
	call	towlower
	lea	rdi, [rsp + 0x30]
	mov	esi, eax
	lea	rdx, [rsp]
	call	wcrtomb
	cmp	rax, -1
	je	.label_1346
	movzx	eax, byte ptr [rsp + 0x30]
	mov	byte ptr [r15 + rax], 1
	nop	dword ptr [rax]
.label_1346:
	inc	rbp
	cmp	rbp, qword ptr [r12 + 0x28]
	jl	.label_1354
	jmp	.label_958
	.section	.text
	.align	16
	#Procedure 0x409e83
	.globl sub_409e83
	.type sub_409e83, @function
sub_409e83:

	nop	word ptr cs:[rax + rax]
.label_972:
	mov	qword ptr [rsp], 0
	mov	rax, qword ptr [r12]
	mov	esi, dword ptr [rax + rbp*4]
	lea	rdi, [rsp + 0x30]
	lea	rdx, [rsp]
	call	wcrtomb
	cmp	rax, -1
	je	.label_1359
	movzx	eax, byte ptr [rsp + 0x30]
	mov	byte ptr [r15 + rax], 1
.label_1359:
	test	byte ptr [r13 + 0x1a], 0x40
	je	.label_1362
	cmp	dword ptr [rbx + 0xb4], 2
	jl	.label_1362
	mov	rax, qword ptr [r12]
	mov	edi, dword ptr [rax + rbp*4]
	call	towlower
	lea	rdi, [rsp + 0x30]
	mov	esi, eax
	lea	rdx, [rsp]
	call	wcrtomb
	cmp	rax, -1
	je	.label_1362
	movzx	eax, byte ptr [rsp + 0x30]
	mov	byte ptr [r15 + rax], 1
	nop	dword ptr [rax]
.label_1362:
	inc	rbp
	cmp	rbp, qword ptr [r12 + 0x28]
	jl	.label_972
	jmp	.label_958
.label_1258:
	xor	eax, eax
	nop	word ptr cs:[rax + rax]
.label_1379:
	bt	rbp, rax
	jae	.label_1374
	mov	byte ptr [r15 + rax], 1
.label_1374:
	lea	rcx, [rax + 1]
	bt	rbp, rcx
	jae	.label_1375
	mov	byte ptr [r15 + rax + 1], 1
.label_1375:
	inc	rcx
	cmp	rcx, 0x40
	mov	rax, rcx
	jne	.label_1379
	mov	rax, qword ptr [rbx]
	mov	rax, qword ptr [rax + r12]
	mov	rax, qword ptr [rax + 8]
	xor	ecx, ecx
	nop	word ptr cs:[rax + rax]
.label_1390:
	bt	rax, rcx
	jae	.label_1385
	mov	byte ptr [r15 + rcx + 0x40], 1
.label_1385:
	lea	edx, [rcx + 1]
	bt	rax, rdx
	jae	.label_1286
	mov	byte ptr [r15 + rcx + 0x41], 1
.label_1286:
	add	rcx, 2
	cmp	rcx, 0x40
	jne	.label_1390
	mov	rax, qword ptr [rbx]
	mov	rax, qword ptr [rax + r12]
	mov	rax, qword ptr [rax + 0x10]
	xor	ecx, ecx
	nop	word ptr cs:[rax + rax]
.label_1357:
	bt	rax, rcx
	jae	.label_1396
	mov	byte ptr [r15 + rcx + 0x80], 1
.label_1396:
	lea	edx, [rcx + 1]
	bt	rax, rdx
	jae	.label_1341
	mov	byte ptr [r15 + rcx + 0x81], 1
.label_1341:
	add	rcx, 2
	cmp	rcx, 0x40
	jne	.label_1357
	mov	rax, qword ptr [rbx]
	mov	rax, qword ptr [rax + r12]
	mov	rax, qword ptr [rax + 0x18]
	xor	ecx, ecx
	nop	dword ptr [rax + rax]
.label_859:
	bt	rax, rcx
	jae	.label_1404
	mov	byte ptr [r15 + rcx + 0xc0], 1
.label_1404:
	lea	edx, [rcx + 1]
	bt	rax, rdx
	jae	.label_1394
	mov	byte ptr [r15 + rcx + 0xc1], 1
.label_1394:
	add	rcx, 2
	cmp	rcx, 0x40
	jne	.label_859
	nop	dword ptr [rax + rax]
.label_958:
	inc	r14
	mov	rsi, qword ptr [rsp + 0x28]
	cmp	r14, qword ptr [rsi + 0x10]
	jl	.label_863
	jmp	.label_867
.label_2719:
	movaps	xmm0, xmmword ptr [rip + label_898]
	movups	xmmword ptr [r15 + 0xf0], xmm0
	movups	xmmword ptr [r15 + 0xe0], xmm0
	movups	xmmword ptr [r15 + 0xd0], xmm0
	movups	xmmword ptr [r15 + 0xc0], xmm0
	movups	xmmword ptr [r15 + 0xb0], xmm0
	movups	xmmword ptr [r15 + 0xa0], xmm0
	movups	xmmword ptr [r15 + 0x90], xmm0
	movups	xmmword ptr [r15 + 0x80], xmm0
	movups	xmmword ptr [r15 + 0x70], xmm0
	movups	xmmword ptr [r15 + 0x60], xmm0
	movups	xmmword ptr [r15 + 0x50], xmm0
	movups	xmmword ptr [r15 + 0x40], xmm0
	movups	xmmword ptr [r15 + 0x30], xmm0
	movups	xmmword ptr [r15 + 0x20], xmm0
	movups	xmmword ptr [r15 + 0x10], xmm0
	movups	xmmword ptr [r15], xmm0
	cmp	eax, 2
	jne	.label_867
	or	byte ptr [r13 + 0x38], 1
.label_867:
	add	rsp, 0x138
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40a0ae
	.globl sub_40a0ae
	.type sub_40a0ae, @function
sub_40a0ae:

	nop	
	.section	.text
	.align	16
	#Procedure 0x40a0b0

	.globl transit_state_bkref
	.type transit_state_bkref, @function
transit_state_bkref:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0xa8
	cmp	qword ptr [rsi + 8], 0
	jle	.label_1444
	mov	rcx, qword ptr [rdi + 0x98]
	mov	r15, qword ptr [rdi + 0x48]
	xor	edx, edx
	mov	qword ptr [rsp + 0x20], rdi
	mov	qword ptr [rsp + 8], r15
	mov	qword ptr [rsp + 0x78], rsi
	mov	qword ptr [rsp + 0x50], rcx
	nop	dword ptr [rax]
.label_1454:
	mov	rax, qword ptr [rsi + 0x10]
	mov	qword ptr [rsp + 0x80], rdx
	mov	r14, qword ptr [rax + rdx*8]
	mov	rax, qword ptr [rcx]
	mov	rcx, r14
	mov	qword ptr [rsp + 0x48], rcx
	shl	r14, 4
	mov	ebx, dword ptr [rax + r14 + 8]
	cmp	bl, 4
	jne	.label_1422
	mov	ebp, ebx
	shr	ebp, 8
	test	bp, 0x3ff
	je	.label_1417
	mov	edx, dword ptr [rdi + 0xa0]
	mov	rsi, r15
	call	re_string_context_at
	mov	rdi, qword ptr [rsp + 0x20]
	mov	ecx, eax
	and	ecx, 1
	test	bpl, 4
	je	.label_1429
	test	ecx, ecx
	je	.label_1422
.label_1429:
	test	bh, 8
	je	.label_1439
	test	ecx, ecx
	jne	.label_1422
.label_1439:
	test	bh, 0x20
	je	.label_1443
	mov	ecx, eax
	and	ecx, 2
	je	.label_1422
.label_1443:
	test	bpl, bpl
	jns	.label_1417
	and	eax, 8
	je	.label_1422
	nop	word ptr [rax + rax]
.label_1417:
	mov	rax, qword ptr [rdi + 0xc8]
	mov	r8, qword ptr [rdi + 8]
	mov	rcx, qword ptr [rdi + 0x98]
	mov	qword ptr [rsp + 0x60], rcx
	mov	qword ptr [rsp + 0x40], rax
	test	rax, rax
	mov	eax, 0
	jle	.label_1453
	mov	rcx, qword ptr [rdi + 0xd8]
	xor	eax, eax
	mov	rdx, qword ptr [rsp + 0x40]
	nop	word ptr cs:[rax + rax]
.label_1470:
	lea	rsi, [rdx + rax]
	mov	rbp, rsi
	shr	rbp, 0x3f
	add	rbp, rsi
	sar	rbp, 1
	lea	rsi, [rbp + rbp*4]
	cmp	qword ptr [rcx + rsi*8 + 8], r15
	cmovge	rdx, rbp
	lea	rsi, [rbp + 1]
	cmovl	rax, rsi
	cmp	rax, rdx
	jl	.label_1470
.label_1453:
	cmp	rax, qword ptr [rsp + 0x40]
	jge	.label_1457
	cmp	rax, -1
	je	.label_1457
	mov	rcx, qword ptr [rdi + 0xd8]
	lea	rax, [rax + rax*4]
	cmp	qword ptr [rcx + rax*8 + 8], r15
	jne	.label_1457
	lea	rax, [rcx + rax*8]
	nop	
.label_1418:
	mov	rcx, qword ptr [rsp + 0x48]
	cmp	qword ptr [rax], rcx
	je	.label_1412
	cmp	byte ptr [rax + 0x20], 0
	lea	rax, [rax + 0x28]
	jne	.label_1418
.label_1457:
	cmp	qword ptr [rdi + 0xe8], 0
	jle	.label_1412
	mov	rax, qword ptr [rsp + 0x60]
	mov	rax, qword ptr [rax]
	mov	r14, qword ptr [rax + r14]
	xor	ecx, ecx
	mov	qword ptr [rsp + 0x30], rcx
	xor	edx, edx
	mov	qword ptr [rsp + 0x38], r14
	jmp	.label_1428
	.section	.text
	.align	16
	#Procedure 0x40a252
	.globl sub_40a252
	.type sub_40a252, @function
sub_40a252:

	nop	word ptr cs:[rax + rax]
.label_1408:
	mov	rax, qword ptr [rsp + 0x60]
	mov	rax, qword ptr [rax]
.label_1428:
	mov	rcx, qword ptr [rdi + 0xf8]
	mov	r9, qword ptr [rcx + rdx*8]
	mov	rcx, qword ptr [r9 + 8]
	shl	rcx, 4
	cmp	qword ptr [rax + rcx], r14
	mov	qword ptr [rsp + 0x88], rdx
	jne	.label_1449
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x28], rax
	mov	rax, qword ptr [r9 + 0x20]
	test	rax, rax
	mov	qword ptr [rsp + 0x10], r9
	jle	.label_1456
	mov	rcx, qword ptr [rsp + 8]
	xor	r14d, r14d
	jmp	.label_1440
.label_1456:
	xor	r14d, r14d
	mov	rcx, qword ptr [rsp + 8]
	jmp	.label_1420
.label_1466:
	mov	rdx, qword ptr [rdi + 0x58]
	mov	r10d, 7
	cmp	r13, rdx
	jg	.label_1467
	mov	rsi, qword ptr [rdi + 0x40]
	mov	r12, qword ptr [rdi + 0xc0]
	cmp	rsi, r13
	setle	r9b
	cmp	rsi, rdx
	setl	sil
	cmp	rax, rdx
	jl	.label_1476
	and	r9b, sil
	je	.label_1411
.label_1476:
	lea	esi, [r13 + 1]
	mov	qword ptr [rsp + 0x70], r8
	mov	qword ptr [rsp + 0x58], rcx
	call	extend_buffers
	mov	rcx, qword ptr [rsp + 0x58]
	mov	r9, qword ptr [rsp + 0x10]
	mov	r8, qword ptr [rsp + 0x70]
	mov	rdi, qword ptr [rsp + 0x20]
	test	eax, eax
	je	.label_1411
	mov	r10d, 1
	mov	qword ptr [rsp + 0x30], rax
	jmp	.label_1467
.label_1424:
	mov	r10d, 1
	mov	qword ptr [rsp + 0x28], rbx
	mov	rcx, r13
	mov	qword ptr [rsp + 0x30], rax
	jmp	.label_1425
.label_1411:
	mov	rdx, r13
	sub	rdx, r12
	jle	.label_1435
	mov	rax, qword ptr [rdi + 0xb8]
	lea	rdi, [rax + r12*8 + 8]
	shl	rdx, 3
	xor	esi, esi
	mov	qword ptr [rsp + 0x58], rcx
	call	memset
	mov	rcx, qword ptr [rsp + 0x58]
	mov	rdi, qword ptr [rsp + 0x20]
	mov	qword ptr [rdi + 0xc0], r13
.label_1435:
	mov	r12, rbp
	mov	r8, qword ptr [rdi + 8]
	jmp	.label_1478
	.section	.text
	.align	16
	#Procedure 0x40a384
	.globl sub_40a384
	.type sub_40a384, @function
sub_40a384:

	nop	word ptr cs:[rax + rax]
.label_1440:
	mov	rax, qword ptr [r9 + 0x28]
	mov	rbp, qword ptr [rax + r14*8]
	mov	rbx, qword ptr [rbp + 8]
	mov	r13, rbx
	mov	rax, qword ptr [rsp + 0x28]
	sub	r13, rax
	add	r13, rcx
	mov	r15, rbx
	sub	r15, rax
	jle	.label_1445
	mov	rax, qword ptr [rdi + 0x30]
	cmp	r13, rax
	mov	qword ptr [rsp + 0x68], rbx
	jg	.label_1466
	mov	r12, rbp
.label_1478:
	lea	rdi, [r8 + rcx]
	mov	rax, qword ptr [rsp + 0x28]
	lea	rsi, [r8 + rax]
	mov	rdx, r15
	mov	rbx, r8
	mov	r15, rcx
	call	memcmp
	mov	rcx, r15
	mov	r8, rbx
	mov	r10d, 7
	test	eax, eax
	mov	rdi, qword ptr [rsp + 0x20]
	mov	r9, qword ptr [rsp + 0x10]
	mov	rbp, r12
	mov	rbx, qword ptr [rsp + 0x68]
	jne	.label_1467
.label_1445:
	mov	rsi, r9
	mov	rdx, rbp
	mov	rcx, qword ptr [rsp + 0x48]
	mov	r8, qword ptr [rsp + 8]
	call	get_subexp_sub
	mov	rdi, qword ptr [rsp + 0x20]
	mov	r8, qword ptr [rdi + 8]
	mov	r10d, 9
	cmp	eax, 1
	je	.label_1415
	test	eax, eax
	jne	.label_1424
	xor	r10d, r10d
.label_1415:
	mov	qword ptr [rsp + 0x28], rbx
	mov	rcx, r13
.label_1425:
	mov	r9, qword ptr [rsp + 0x10]
.label_1467:
	mov	eax, r10d
	and	al, 0xf
	je	.label_1434
	cmp	al, 9
	jne	.label_1437
.label_1434:
	inc	r14
	mov	rax, qword ptr [r9 + 0x20]
	cmp	r14, rax
	jl	.label_1440
	jmp	.label_1420
.label_1437:
	cmp	al, 7
	jne	.label_1438
	mov	rax, qword ptr [r9 + 0x20]
	nop	
.label_1420:
	cmp	r14, rax
	jge	.label_1450
	mov	r15, qword ptr [rsp + 8]
	mov	r14, qword ptr [rsp + 0x38]
	jmp	.label_1449
	.section	.text
	.align	16
	#Procedure 0x40a484
	.globl sub_40a484
	.type sub_40a484, @function
sub_40a484:

	nop	word ptr cs:[rax + rax]
.label_1450:
	xor	ebx, ebx
	test	r14, r14
	setg	bl
	add	rbx, qword ptr [rsp + 0x28]
	mov	r15, qword ptr [rsp + 8]
	cmp	rbx, r15
	jle	.label_1458
	mov	r14, qword ptr [rsp + 0x38]
	jmp	.label_1449
.label_1458:
	mov	r14, qword ptr [rsp + 0x38]
	jmp	.label_1462
.label_1474:
	cmp	r13, -1
	je	.label_1447
	mov	rbp, r8
	mov	rsi, qword ptr [r9 + 0x10]
	test	rsi, rsi
	jne	.label_1472
	lea	rsi, [rbx + 1]
	sub	rsi, qword ptr [r9]
	mov	edi, 0x18
	call	rpl_calloc
	mov	r9, qword ptr [rsp + 0x10]
	mov	rdi, qword ptr [rsp + 0x20]
	mov	rsi, rax
	mov	qword ptr [r9 + 0x10], rsi
	test	rsi, rsi
	je	.label_1461
.label_1472:
	mov	rcx, qword ptr [r9]
	mov	rdx, qword ptr [r9 + 8]
	mov	dword ptr [rsp], 9
	mov	r8, r13
	mov	r9, rbx
	call	check_arrival
	cmp	eax, 1
	jne	.label_1452
	mov	rcx, r15
	mov	rdi, qword ptr [rsp + 0x20]
	mov	r15, qword ptr [rsp + 8]
	mov	r8, rbp
	mov	r9, qword ptr [rsp + 0x10]
	mov	r10d, 0xc
	jmp	.label_1410
.label_1452:
	test	eax, eax
	mov	r8, rbp
	jne	.label_1430
	mov	rcx, qword ptr [rsp + 0x10]
	mov	r14, qword ptr [rcx + 0x20]
	cmp	r14, qword ptr [rcx + 0x18]
	je	.label_1460
.label_1409:
	mov	edi, 1
	mov	esi, 0x28
	call	rpl_calloc
	mov	r10d, 1
	test	rax, rax
	je	.label_1448
	mov	rsi, qword ptr [rsp + 0x10]
	mov	rcx, qword ptr [rsi + 0x20]
	mov	rdx, qword ptr [rsi + 0x28]
	mov	qword ptr [rdx + rcx*8], rax
	mov	qword ptr [rax], r13
	mov	qword ptr [rax + 8], rbx
	inc	rcx
	mov	qword ptr [rsi + 0x20], rcx
	mov	rbp, qword ptr [rsp + 0x20]
	mov	rdi, rbp
	mov	rdx, rax
	mov	rcx, qword ptr [rsp + 0x48]
	mov	r8, qword ptr [rsp + 8]
	call	get_subexp_sub
	mov	rdi, rbp
	mov	r8, qword ptr [rdi + 8]
	cmp	eax, 1
	mov	r14, qword ptr [rsp + 0x38]
	jne	.label_1465
	mov	r10d, 0xc
	jmp	.label_1464
.label_1465:
	test	eax, eax
	jne	.label_1473
	xor	r10d, r10d
.label_1464:
	mov	rcx, r15
.label_1436:
	mov	r15, qword ptr [rsp + 8]
.label_1459:
	mov	r9, qword ptr [rsp + 0x10]
	jmp	.label_1410
.label_1461:
	mov	eax, 0xc
	mov	qword ptr [rsp + 0x30], rax
	mov	r10d, 1
	mov	rcx, r15
	mov	r15, qword ptr [rsp + 8]
	mov	r8, rbp
	jmp	.label_1410
.label_1431:
	mov	r10d, 0xa
	cmp	rcx, qword ptr [rdi + 0x58]
	jge	.label_1410
	mov	r14, r8
	mov	r12, rcx
	lea	r15, [rcx + 1]
	mov	esi, r15d
	mov	rbp, rdi
	call	extend_buffers
	test	eax, eax
	jne	.label_1423
	mov	r8, qword ptr [rbp + 8]
	mov	rdi, rbp
	mov	r14, qword ptr [rsp + 0x38]
	mov	r9, qword ptr [rsp + 0x10]
	mov	rcx, r12
	jmp	.label_1414
.label_1430:
	mov	r10d, 1
	mov	rcx, r15
	mov	qword ptr [rsp + 0x30], rax
	mov	rdi, qword ptr [rsp + 0x20]
	jmp	.label_1436
.label_1460:
	lea	rax, [r14 + r14]
	mov	rdi, qword ptr [rcx + 0x28]
	lea	rsi, [rax*8 + 8]
	mov	r12, rcx
	call	realloc
	test	rax, rax
	je	.label_1441
	lea	rcx, [r14 + r14 + 1]
	mov	qword ptr [r12 + 0x28], rax
	mov	qword ptr [r12 + 0x18], rcx
	jmp	.label_1409
.label_1448:
	mov	rcx, r15
	mov	eax, 0xc
	mov	qword ptr [rsp + 0x30], rax
	mov	rdi, qword ptr [rsp + 0x20]
	mov	r15, qword ptr [rsp + 8]
	mov	r8, rbp
	mov	r14, qword ptr [rsp + 0x38]
	jmp	.label_1459
.label_1473:
	mov	rcx, r15
	mov	qword ptr [rsp + 0x30], rax
	mov	r15, qword ptr [rsp + 8]
	mov	r9, qword ptr [rsp + 0x10]
	mov	r10d, 1
	jmp	.label_1410
.label_1423:
	mov	r10d, 1
	mov	qword ptr [rsp + 0x30], rax
	mov	rdi, rbp
	mov	r15, qword ptr [rsp + 8]
	mov	r8, r14
	mov	r14, qword ptr [rsp + 0x38]
	mov	r9, qword ptr [rsp + 0x10]
	mov	rcx, r12
	jmp	.label_1410
.label_1441:
	mov	eax, 0xc
	mov	qword ptr [rsp + 0x30], rax
	mov	r10d, 1
	mov	rcx, r15
	mov	rdi, qword ptr [rsp + 0x20]
	mov	r15, qword ptr [rsp + 8]
	mov	r8, rbp
	mov	r14, qword ptr [rsp + 0x38]
	mov	r9, r12
	jmp	.label_1410
	.section	.text
	.align	16
	#Procedure 0x40a72a
	.globl sub_40a72a
	.type sub_40a72a, @function
sub_40a72a:

	nop	word ptr [rax + rax]
.label_1462:
	cmp	rbx, qword ptr [r9]
	jle	.label_1427
	cmp	rcx, qword ptr [rdi + 0x30]
	jge	.label_1431
	lea	r15, [rcx + 1]
.label_1414:
	mov	al, byte ptr [r8 + rcx]
	mov	r10d, 0xa
	cmp	al, byte ptr [r8 + rbx - 1]
	je	.label_1433
	jmp	.label_1447
	.section	.text
	.align	16
	#Procedure 0x40a756
	.globl sub_40a756
	.type sub_40a756, @function
sub_40a756:

	nop	word ptr cs:[rax + rax]
.label_1427:
	mov	r15, rcx
.label_1433:
	mov	rax, qword ptr [rdi + 0xb8]
	mov	rcx, qword ptr [rax + rbx*8]
	mov	r10d, 0xc
	test	rcx, rcx
	je	.label_1447
	mov	rax, qword ptr [rcx + 0x10]
	test	rax, rax
	jle	.label_1447
	mov	rcx, qword ptr [rcx + 0x18]
	mov	rdx, qword ptr [rsp + 0x60]
	mov	rdx, qword ptr [rdx]
	xor	esi, esi
.label_1463:
	mov	r13, qword ptr [rcx + rsi*8]
	mov	rbp, r13
	shl	rbp, 4
	cmp	byte ptr [rdx + rbp + 8], 9
	jne	.label_1421
	cmp	qword ptr [rdx + rbp], r14
	je	.label_1474
.label_1421:
	inc	rsi
	cmp	rsi, rax
	jl	.label_1463
.label_1447:
	mov	rcx, r15
	mov	r15, qword ptr [rsp + 8]
.label_1410:
	mov	eax, r10d
	and	al, 0xf
	je	.label_1469
	cmp	al, 0xc
	jne	.label_1471
.label_1469:
	cmp	rbx, r15
	lea	rbx, [rbx + 1]
	jl	.label_1462
	jmp	.label_1449
.label_1438:
	mov	r15, qword ptr [rsp + 8]
	mov	r14, qword ptr [rsp + 0x38]
	jmp	.label_1477
.label_1471:
	cmp	al, 0xa
	je	.label_1449
.label_1477:
	cmp	r10d, 6
	je	.label_1449
	test	r10d, r10d
	jne	.label_1455
	nop	word ptr cs:[rax + rax]
.label_1449:
	mov	rdx, qword ptr [rsp + 0x88]
	inc	rdx
	cmp	rdx, qword ptr [rdi + 0xe8]
	jl	.label_1408
.label_1412:
	mov	dword ptr [rsp + 0x1c], 0
	mov	rbx, qword ptr [rsp + 0x40]
.label_1468:
	cmp	rbx, qword ptr [rdi + 0xc8]
	jge	.label_1422
	lea	rax, [rbx + rbx*4]
	lea	rbp, [rax*8 + 0x18]
	nop	
.label_1419:
	mov	rax, qword ptr [rdi + 0xd8]
	mov	rcx, qword ptr [rsp + 0x48]
	cmp	qword ptr [rax + rbp - 0x18], rcx
	jne	.label_1432
	cmp	qword ptr [rax + rbp - 0x10], r15
	jne	.label_1432
	mov	rdx, qword ptr [rax + rbp - 8]
	mov	rsi, qword ptr [rax + rbp]
	mov	rcx, qword ptr [rsp + 0x50]
	mov	r14, qword ptr [rcx + 0x30]
	cmp	rsi, rdx
	mov	qword ptr [rsp + 0x40], rbx
	jne	.label_1446
	mov	rax, qword ptr [rcx + 0x28]
	mov	rcx, qword ptr [rsp + 0x48]
	lea	rcx, [rcx + rcx*2]
	mov	rax, qword ptr [rax + rcx*8 + 0x10]
	jmp	.label_1451
.label_1446:
	mov	rax, qword ptr [rsp + 0x48]
	lea	rax, [rax*8]
	add	rax, qword ptr [rcx + 0x18]
.label_1451:
	mov	rax, qword ptr [rax]
	lea	r15, [rax + rax*2]
	mov	r12, qword ptr [rsp + 8]
	mov	qword ptr [rsp + 0x10], rsi
	lea	r13, [rsi + r12]
	mov	qword ptr [rsp + 0x28], rdx
	sub	r13, rdx
	lea	rsi, [r13 - 1]
	mov	edx, dword ptr [rdi + 0xa0]
	call	re_string_context_at
	mov	ebx, eax
	mov	rax, qword ptr [rsp + 0x20]
	mov	rcx, qword ptr [rax + 0xb8]
	mov	rax, qword ptr [rcx + r13*8]
	mov	rcx, qword ptr [rcx + r12*8]
	test	rcx, rcx
	mov	edx, 0
	je	.label_1475
	mov	rdx, qword ptr [rcx + 0x10]
.label_1475:
	mov	qword ptr [rsp + 0x68], rdx
	lea	r12, [r14 + r15*8]
	test	rax, rax
	lea	rcx, [rsp + 0x90]
	je	.label_1479
	mov	rsi, qword ptr [rax + 0x50]
	mov	r14, rcx
	mov	rdi, r14
	mov	rdx, r12
	call	re_node_set_init_union
	mov	dword ptr [rsp + 0x1c], eax
	test	eax, eax
	mov	r15, qword ptr [rsp + 8]
	jne	.label_1416
	lea	rdi, [rsp + 0x1c]
	mov	rsi, qword ptr [rsp + 0x50]
	mov	rdx, r14
	mov	ecx, ebx
	call	re_acquire_state_context
	mov	rbx, qword ptr [rsp + 0x20]
	mov	rcx, qword ptr [rbx + 0xb8]
	mov	qword ptr [rcx + r13*8], rax
	mov	rdi, qword ptr [rsp + 0xa0]
	call	free
	mov	rdi, rbx
	mov	rcx, qword ptr [rdi + 0xb8]
	cmp	qword ptr [rcx + r13*8], 0
	jne	.label_1442
	mov	eax, dword ptr [rsp + 0x1c]
	test	eax, eax
	je	.label_1442
	jmp	.label_1413
.label_1479:
	lea	rdi, [rsp + 0x1c]
	mov	rsi, qword ptr [rsp + 0x50]
	mov	rdx, r12
	mov	ecx, ebx
	call	re_acquire_state_context
	mov	rdi, qword ptr [rsp + 0x20]
	mov	rcx, qword ptr [rdi + 0xb8]
	mov	qword ptr [rcx + r13*8], rax
	mov	rcx, qword ptr [rdi + 0xb8]
	cmp	qword ptr [rcx + r13*8], 0
	mov	r15, qword ptr [rsp + 8]
	jne	.label_1442
	mov	eax, dword ptr [rsp + 0x1c]
	test	eax, eax
	mov	rbx, qword ptr [rsp + 0x40]
	mov	rdx, qword ptr [rsp + 0x28]
	mov	rsi, qword ptr [rsp + 0x10]
	je	.label_1426
	jmp	.label_1413
.label_1442:
	mov	rbx, qword ptr [rsp + 0x40]
	mov	rdx, qword ptr [rsp + 0x28]
	mov	rsi, qword ptr [rsp + 0x10]
.label_1426:
	cmp	rsi, rdx
	jne	.label_1432
	mov	rax, qword ptr [rcx + r15*8]
	mov	rcx, qword ptr [rsp + 0x68]
	cmp	qword ptr [rax + 0x10], rcx
	jle	.label_1432
	mov	rsi, r12
	mov	rdx, r15
	call	check_subexp_matching_top
	mov	rdi, qword ptr [rsp + 0x20]
	mov	dword ptr [rsp + 0x1c], eax
	test	eax, eax
	jne	.label_1413
	mov	rsi, r12
	call	transit_state_bkref
	mov	rdi, qword ptr [rsp + 0x20]
	mov	dword ptr [rsp + 0x1c], eax
	test	eax, eax
	jne	.label_1413
	nop	
.label_1432:
	inc	rbx
	add	rbp, 0x28
	cmp	rbx, qword ptr [rdi + 0xc8]
	jl	.label_1419
	nop	word ptr cs:[rax + rax]
.label_1422:
	mov	rdx, qword ptr [rsp + 0x80]
	inc	rdx
	mov	rsi, qword ptr [rsp + 0x78]
	cmp	rdx, qword ptr [rsi + 8]
	mov	rcx, qword ptr [rsp + 0x50]
	jl	.label_1454
	jmp	.label_1444
.label_1455:
	mov	rax, qword ptr [rsp + 0x30]
	mov	dword ptr [rsp + 0x1c], eax
	test	eax, eax
	mov	rbx, qword ptr [rsp + 0x40]
	je	.label_1468
	jmp	.label_1413
.label_1444:
	mov	dword ptr [rsp + 0x1c], 0
	xor	eax, eax
.label_1413:
	add	rsp, 0xa8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_1416:
	mov	rdi, qword ptr [rsp + 0xa0]
	mov	rbx, rax
	call	free
	mov	rax, rbx
	jmp	.label_1413
	.section	.text
	.align	16
	#Procedure 0x40aaaa
	.globl sub_40aaaa
	.type sub_40aaaa, @function
sub_40aaaa:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40aab0

	.globl parse_expression
	.type parse_expression, @function
parse_expression:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0xe8
	mov	r12, r9
	mov	r13, r8
	mov	rbx, rcx
	mov	r10, rdx
	mov	r14, rsi
	mov	r8, rdi
	mov	eax, dword ptr [r10 + 8]
	xor	r15d, r15d
	mov	ecx, eax
	dec	cl
	movzx	ecx, cl
	cmp	cl, 0x23
	ja	.label_968
	mov	rdi, qword ptr [r14]
	mov	qword ptr [rsp + 0x20], rbx
	mov	qword ptr [rsp + 0x10], r8
	mov	qword ptr [rsp + 8], r10
	mov	qword ptr [rsp + 0x18], rdi
	jmp	qword ptr [(rcx * 8) + label_1480]
.label_2751:
	mov	rsi, qword ptr [r8 + 0x78]
	xor	r8d, r8d
	cmp	al, 0x21
	sete	r8b
	mov	edx, OFFSET FLAT:label_1234
	mov	ecx, OFFSET FLAT:label_1235
	jmp	.label_1236
.label_2752:
	mov	rsi, qword ptr [r8 + 0x78]
	xor	r8d, r8d
	cmp	al, 0x23
	sete	r8b
	mov	edx, OFFSET FLAT:label_1239
	mov	ecx, OFFSET FLAT:label_547
.label_1236:
	mov	r9, r12
	call	build_charclass_op
	mov	rbp, rax
	xor	r15d, r15d
	test	rbp, rbp
	jne	.label_1243
	mov	eax, dword ptr [r12]
	test	eax, eax
.label_933:
	mov	r8, qword ptr [rsp + 0x10]
	mov	r10, qword ptr [rsp + 8]
	je	.label_905
	jmp	.label_968
.label_1243:
	mov	r8, qword ptr [rsp + 0x10]
	mov	r10, qword ptr [rsp + 8]
	jmp	.label_905
.label_2742:
	mov	ecx, dword ptr [rdi + 0x80]
	cmp	ecx, 0xf
	je	.label_1250
	mov	rax, qword ptr [rdi + 0x70]
.label_1207:
	lea	edx, [rcx + 1]
	mov	dword ptr [rdi + 0x80], edx
	movsxd	rcx, ecx
	shl	rcx, 6
	lea	r14, [rax + rcx + 8]
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [rax + rcx + 8], xmm0
	mov	qword ptr [rax + rcx + 0x18], 0
	movdqu	xmm1, xmmword ptr [r10]
	movdqu	xmmword ptr [rax + rcx + 0x30], xmm1
	and	byte ptr [rax + rcx + 0x3a], 0xf3
	movdqu	xmmword ptr [rax + rcx + 0x20], xmm0
	mov	qword ptr [rax + rcx + 0x40], -1
	cmp	dword ptr [rdi + 0xb4], 2
	jl	.label_1251
	mov	rax, qword ptr [r8 + 0x48]
	cmp	qword ptr [r8 + 0x68], rax
	jg	.label_1265
	mov	rbp, r14
	jmp	.label_905
.label_1317:
	mov	rcx, qword ptr [r8 + 0x10]
	cmp	dword ptr [rcx + rax*4], -1
	jne	.label_1267
	mov	rdi, r10
	mov	rsi, r8
	mov	rdx, rbx
	call	peek_token
	mov	rsi, qword ptr [rsp + 0x18]
	mov	r8, qword ptr [rsp + 0x10]
	cdqe	
	add	qword ptr [r8 + 0x48], rax
	mov	ecx, dword ptr [rsi + 0x80]
	cmp	ecx, 0xf
	je	.label_1270
	mov	rax, qword ptr [rsi + 0x70]
	pxor	xmm1, xmm1
.label_1305:
	lea	edx, [rcx + 1]
	mov	dword ptr [rsi + 0x80], edx
	movsxd	rcx, ecx
	shl	rcx, 6
	lea	rbx, [rax + rcx + 8]
	movdqu	xmmword ptr [rax + rcx + 8], xmm1
	mov	qword ptr [rax + rcx + 0x18], 0
	mov	r10, qword ptr [rsp + 8]
	movdqu	xmm0, xmmword ptr [r10]
	movdqu	xmmword ptr [rax + rcx + 0x30], xmm0
	and	byte ptr [rax + rcx + 0x3a], 0xf3
	movdqu	xmmword ptr [rax + rcx + 0x20], xmm1
	mov	qword ptr [rax + rcx + 0x40], -1
.label_1298:
	mov	ecx, dword ptr [rsi + 0x80]
	cmp	ecx, 0xf
	je	.label_1284
	mov	rax, qword ptr [rsi + 0x70]
.label_1314:
	lea	edx, [rcx + 1]
	mov	dword ptr [rsi + 0x80], edx
	movsxd	rcx, ecx
	shl	rcx, 6
	lea	rbp, [rax + rcx + 8]
	mov	qword ptr [rax + rcx + 8], 0
	mov	qword ptr [rax + rcx + 0x10], r14
	mov	qword ptr [rax + rcx + 0x18], rbx
	mov	dword ptr [rax + rcx + 0x38], 0x10
	movdqu	xmmword ptr [rax + rcx + 0x20], xmm1
	mov	qword ptr [rax + rcx + 0x40], -1
	mov	qword ptr [r14], rbp
	test	rbx, rbx
	je	.label_1220
	mov	qword ptr [rbx], rbp
	mov	rax, qword ptr [r8 + 0x48]
	cmp	qword ptr [r8 + 0x68], rax
	mov	r14, rbp
	mov	rbx, qword ptr [rsp + 0x20]
	jg	.label_1265
	jmp	.label_905
.label_1270:
	mov	edi, 0x3c8
	call	malloc
	mov	rsi, qword ptr [rsp + 0x18]
	mov	r8, qword ptr [rsp + 0x10]
	test	rax, rax
	mov	ebx, 0
	mov	r10, qword ptr [rsp + 8]
	pxor	xmm1, xmm1
	je	.label_1298
	mov	rcx, qword ptr [rsi + 0x70]
	mov	qword ptr [rax], rcx
	mov	qword ptr [rsi + 0x70], rax
	mov	dword ptr [rsi + 0x80], 0
	xor	ecx, ecx
	jmp	.label_1305
.label_1284:
	mov	edi, 0x3c8
	call	malloc
	pxor	xmm1, xmm1
	mov	rsi, qword ptr [rsp + 0x18]
	mov	r10, qword ptr [rsp + 8]
	mov	r8, qword ptr [rsp + 0x10]
	test	rax, rax
	je	.label_1220
	mov	rcx, qword ptr [rsi + 0x70]
	mov	qword ptr [rax], rcx
	mov	qword ptr [rsi + 0x70], rax
	mov	dword ptr [rsi + 0x80], 0
	xor	ecx, ecx
	jmp	.label_1314
.label_1265:
	cmp	rax, qword ptr [r8 + 0x30]
	jne	.label_1317
	mov	rbp, r14
	jmp	.label_905
.label_2743:
	mov	cl, byte ptr [r10]
	mov	eax, 1
	shl	eax, cl
	cdqe	
	test	qword ptr [rdi + 0xa8], rax
	je	.label_1321
	or	qword ptr [rdi + 0xa0], rax
	mov	ecx, dword ptr [rdi + 0x80]
	cmp	ecx, 0xf
	je	.label_1328
	mov	rax, qword ptr [rdi + 0x70]
.label_1300:
	lea	edx, [rcx + 1]
	mov	dword ptr [rdi + 0x80], edx
	movsxd	rcx, ecx
	shl	rcx, 6
	lea	rbp, [rax + rcx + 8]
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [rax + rcx + 8], xmm0
	mov	qword ptr [rax + rcx + 0x18], 0
	movdqu	xmm1, xmmword ptr [r10]
	movdqu	xmmword ptr [rax + rcx + 0x30], xmm1
	and	byte ptr [rax + rcx + 0x3a], 0xf3
	movdqu	xmmword ptr [rax + rcx + 0x20], xmm0
	mov	qword ptr [rax + rcx + 0x40], -1
	inc	qword ptr [rdi + 0x98]
	or	byte ptr [rdi + 0xb0], 2
	jmp	.label_905
.label_2744:
	mov	ecx, dword ptr [rdi + 0x80]
	cmp	ecx, 0xf
	je	.label_1344
	mov	rax, qword ptr [rdi + 0x70]
.label_1274:
	lea	edx, [rcx + 1]
	mov	dword ptr [rdi + 0x80], edx
	movsxd	rcx, ecx
	shl	rcx, 6
	lea	rbp, [rax + rcx + 8]
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [rax + rcx + 8], xmm0
	mov	qword ptr [rax + rcx + 0x18], 0
	movdqu	xmm1, xmmword ptr [r10]
	movdqu	xmmword ptr [rax + rcx + 0x30], xmm1
	and	byte ptr [rax + rcx + 0x3a], 0xf3
	movdqu	xmmword ptr [rax + rcx + 0x20], xmm0
	mov	qword ptr [rax + rcx + 0x40], -1
	cmp	dword ptr [rdi + 0xb4], 1
	jle	.label_905
	or	byte ptr [rdi + 0xb0], 2
	jmp	.label_905
.label_2745:
	mov	r15, qword ptr [r14 + 0x30]
	lea	rax, [r15 + 1]
	mov	qword ptr [r14 + 0x30], rax
	mov	rdx, rbx
	or	rdx, 0x800000
	mov	rdi, r10
	mov	rsi, r8
	call	peek_token
	mov	r10, qword ptr [rsp + 8]
	mov	r8, qword ptr [rsp + 0x10]
	cdqe	
	add	qword ptr [r8 + 0x48], rax
	xor	edi, edi
	cmp	byte ptr [r10 + 8], 9
	je	.label_1361
	mov	rbp, r15
	inc	r13
	mov	rdi, r8
	mov	rsi, r14
	mov	rdx, r10
	mov	rcx, rbx
	mov	r8, r13
	mov	r9, r12
	call	parse_reg_exp
	mov	r10, qword ptr [rsp + 8]
	mov	r8, qword ptr [rsp + 0x10]
	mov	rdi, rax
	xor	r15d, r15d
	cmp	dword ptr [r12], 0
	jne	.label_968
	cmp	byte ptr [r10 + 8], 9
	jne	.label_1369
	mov	r15, rbp
.label_1361:
	cmp	r15, 8
	mov	rsi, qword ptr [rsp + 0x18]
	ja	.label_1372
	mov	eax, 1
	mov	ecx, r15d
	shl	eax, cl
	cdqe	
	or	qword ptr [rsi + 0xa8], rax
.label_1372:
	mov	ecx, dword ptr [rsi + 0x80]
	cmp	ecx, 0xf
	je	.label_1378
	mov	rax, qword ptr [rsi + 0x70]
.label_1342:
	lea	edx, [rcx + 1]
	mov	dword ptr [rsi + 0x80], edx
	movsxd	rcx, ecx
	shl	rcx, 6
	lea	rbp, [rax + rcx + 8]
	mov	qword ptr [rax + rcx + 8], 0
	mov	qword ptr [rax + rcx + 0x10], rdi
	mov	qword ptr [rax + rcx + 0x18], 0
	mov	dword ptr [rax + rcx + 0x38], 0x11
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [rax + rcx + 0x20], xmm0
	mov	qword ptr [rax + rcx + 0x40], -1
	test	rdi, rdi
	je	.label_1255
	mov	qword ptr [rdi], rbp
.label_1255:
	mov	qword ptr [rax + rcx + 0x30], r15
	jmp	.label_905
.label_2748:
	mov	eax, dword ptr [r10]
	test	ax, 0x30f
	je	.label_1395
	mov	al, byte ptr [rdi + 0xb0]
	test	al, 0x10
	jne	.label_1261
	mov	ecx, eax
	or	cl, 0x10
	mov	byte ptr [rdi + 0xb0], cl
	xor	r14d, r14d
	test	al, 8
	mov	ebp, 0
	jne	.label_1345
	movdqa	xmm0, xmmword ptr [rip + label_1401]
	movdqu	xmmword ptr [rdi + 0xb8], xmm0
	mov	ebp, 2
	mov	r14d, 0x80
	test	al, 4
	je	.label_1345
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [rdi + 0xc8], xmm0
.label_1261:
	mov	eax, dword ptr [r10]
.label_1395:
	cmp	eax, 0x200
	je	.label_1407
	cmp	eax, 0x100
	jne	.label_861
	mov	dword ptr [r10], 6
	mov	r15, rdi
	sub	r15, -0x80
	mov	r14d, dword ptr [rdi + 0x80]
	cmp	r14d, 0xf
	je	.label_865
	mov	rax, qword ptr [rdi + 0x70]
.label_1388:
	lea	ecx, [r14 + 1]
	mov	dword ptr [r15], ecx
	movsxd	rcx, r14d
	shl	rcx, 6
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [rax + rcx + 8], xmm0
	mov	qword ptr [rax + rcx + 0x18], 0
	movdqu	xmm1, xmmword ptr [r10]
	movdqu	xmmword ptr [rax + rcx + 0x30], xmm1
	and	byte ptr [rax + rcx + 0x3a], 0xf3
	lea	r14, [rax + rcx + 8]
	movdqu	xmmword ptr [rax + rcx + 0x20], xmm0
	mov	qword ptr [rax + rcx + 0x40], -1
	mov	ecx, 9
	jmp	.label_872
.label_2750:
	test	ebx, 0x1000000
	jne	.label_887
.label_2747:
	test	bl, 0x20
	jne	.label_887
	test	bl, 0x10
	jne	.label_891
.label_2746:
	test	ebx, 0x20000
	jne	.label_893
	movzx	ecx, al
	cmp	ecx, 9
	jne	.label_893
	mov	dword ptr [r12], 0x10
	jmp	.label_866
.label_893:
	and	eax, 0xffffff00
	or	eax, 1
	mov	dword ptr [r10 + 8], eax
	mov	ecx, dword ptr [rdi + 0x80]
	cmp	ecx, 0xf
	je	.label_895
	mov	rax, qword ptr [rdi + 0x70]
.label_1272:
	lea	edx, [rcx + 1]
	mov	dword ptr [rdi + 0x80], edx
	movsxd	rcx, ecx
	shl	rcx, 6
	lea	rbp, [rax + rcx + 8]
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [rax + rcx + 8], xmm0
	mov	qword ptr [rax + rcx + 0x18], 0
	movdqu	xmm1, xmmword ptr [r10]
	movdqu	xmmword ptr [rax + rcx + 0x30], xmm1
	and	byte ptr [rax + rcx + 0x3a], 0xf3
.label_981:
	movdqu	xmmword ptr [rax + rcx + 0x20], xmm0
	mov	qword ptr [rax + rcx + 0x40], -1
	jmp	.label_905
.label_2749:
	mov	qword ptr [rsp + 0xa8], 0
	mov	edi, 0x20
	mov	esi, 1
	call	rpl_calloc
	mov	r14, rax
	mov	edi, 0x50
	mov	esi, 1
	call	rpl_calloc
	mov	r15, rax
	test	r14, r14
	je	.label_917
	test	r15, r15
	je	.label_917
	mov	rbp, qword ptr [rsp + 8]
	mov	rdi, rbp
	mov	rsi, qword ptr [rsp + 0x10]
	mov	rdx, rbx
	call	peek_token_bracket
	mov	rdx, rbp
	mov	ecx, dword ptr [rdx + 8]
	cmp	cl, 0x19
	je	.label_923
	cmp	cl, 2
	je	.label_924
	mov	dword ptr [rsp + 0x28], 0
	jmp	.label_926
.label_2753:
	mov	dword ptr [r12], 5
	jmp	.label_866
.label_891:
	mov	rdi, r10
	mov	rsi, r8
	mov	rdx, rbx
	mov	rbp, r8
	mov	r15, r10
	call	peek_token
	cdqe	
	add	qword ptr [rbp + 0x48], rax
	mov	rdi, rbp
	mov	rsi, r14
	mov	rdx, r15
	mov	rcx, rbx
	mov	r8, r13
	mov	r9, r12
	add	rsp, 0xe8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	jmp	parse_expression
.label_1251:
	mov	rbp, r14
	jmp	.label_905
.label_923:
	or	byte ptr [r15 + 0x20], 1
	test	bh, 1
	je	.label_944
	or	byte ptr [r14 + 1], 4
.label_944:
	cdqe	
	mov	rsi, qword ptr [rsp + 0x10]
	add	qword ptr [rsi + 0x48], rax
	mov	rdi, rdx
	mov	rdx, rbx
	call	peek_token_bracket
	mov	rdx, qword ptr [rsp + 8]
	mov	ecx, dword ptr [rdx + 8]
	cmp	cl, 2
	je	.label_924
	mov	sil, 1
	mov	dword ptr [rsp + 0x28], esi
.label_926:
	cmp	cl, 0x15
	jne	.label_952
	and	ecx, 0xffffff00
	or	ecx, 1
	mov	dword ptr [rdx + 8], ecx
.label_952:
	lea	rcx, [rsp + 0xc0]
	mov	qword ptr [rsp + 0x58], rcx
	mov	dword ptr [rsp + 0x50], 3
	lea	rdi, [rsp + 0x50]
	mov	r9d, 1
	mov	rsi, qword ptr [rsp + 0x10]
	mov	ecx, eax
	mov	r8, rbx
	call	parse_bracket_element
	test	eax, eax
	jne	.label_962
	mov	eax, ebx
	and	eax, 0x10000
	mov	qword ptr [rsp + 0x38], rax
	xor	eax, eax
	mov	qword ptr [rsp + 0x68], rax
	xor	eax, eax
	mov	qword ptr [rsp + 0x60], rax
	mov	qword ptr [rsp + 0x30], r15
	jmp	.label_907
.label_1136:
	cmp	al, 2
	je	.label_973
	lea	rax, [rsp + 0xc0]
	mov	qword ptr [rsp + 0x58], rax
	mov	dword ptr [rsp + 0x50], 3
	xor	r9d, r9d
	lea	rdi, [rsp + 0x50]
	mov	rsi, qword ptr [rsp + 0x10]
	mov	rdx, r10
	mov	ecx, r13d
	mov	r8, rbx
	call	parse_bracket_element
	test	eax, eax
	je	.label_907
	jmp	.label_962
.label_2675:
	mov	rcx, qword ptr [r15 + 0x28]
	cmp	qword ptr [rsp + 0x68], rcx
	je	.label_980
	mov	rax, qword ptr [r15]
.label_1047:
	mov	r10, qword ptr [rsp + 8]
	mov	r9, qword ptr [rsp + 0x18]
	mov	edx, dword ptr [rsp + 0x58]
	lea	rsi, [rcx + 1]
	mov	qword ptr [r15 + 0x28], rsi
	mov	dword ptr [rax + rcx*4], edx
	jmp	.label_983
.label_2676:
	mov	rbp, qword ptr [rsp + 0x58]
	mov	rdi, rbp
	call	strlen
	cmp	rax, 1
	je	.label_987
	jmp	.label_991
.label_1113:
	mov	rax, qword ptr [rsp + 0x58]
	mov	al, byte ptr [rax]
	jmp	.label_992
.label_1114:
	xor	eax, eax
.label_992:
	cmp	r15d, 3
	je	.label_993
	test	r15d, r15d
	jne	.label_994
	mov	bl, byte ptr [rsp + 0xa0]
	jmp	.label_995
.label_993:
	mov	rcx, qword ptr [rsp + 0xa0]
	mov	bl, byte ptr [rcx]
	jmp	.label_995
.label_994:
	xor	ebx, ebx
.label_995:
	cmp	ebp, 3
	je	.label_1000
	test	ebp, ebp
	jne	.label_1042
.label_1000:
	test	r12, r12
	movzx	edx, al
	je	.label_1001
	mov	edi, edx
	call	btowc
	mov	r9, qword ptr [rsp + 0x18]
	mov	r10, qword ptr [rsp + 8]
	mov	edx, eax
	jmp	.label_1001
.label_1042:
	mov	edx, dword ptr [rsp + 0x58]
.label_1001:
	cmp	r15d, 3
	je	.label_1006
	test	r15d, r15d
	jne	.label_1008
.label_1006:
	test	r12, r12
	movzx	eax, bl
	je	.label_1009
	mov	edi, eax
	mov	ebx, edx
	call	btowc
	mov	edx, ebx
	mov	r9, qword ptr [rsp + 0x18]
	mov	r10, qword ptr [rsp + 8]
	jmp	.label_1009
.label_1008:
	mov	eax, dword ptr [rsp + 0xa0]
.label_1009:
	mov	rbx, qword ptr [rsp + 0x20]
	cmp	edx, -1
	mov	ecx, 3
	je	.label_1014
	cmp	eax, -1
	je	.label_1014
	cmp	qword ptr [rsp + 0x38], 0
	je	.label_1018
	cmp	edx, eax
	mov	ecx, 0xb
	ja	.label_1014
.label_1018:
	test	r12, r12
	je	.label_1021
	mov	rsi, qword ptr [r12 + 0x40]
	cmp	qword ptr [rsp + 0x60], rsi
	je	.label_1023
	mov	rdi, qword ptr [r12 + 8]
	mov	rbp, qword ptr [r12 + 0x10]
.label_1343:
	mov	dword ptr [rdi + rsi*4], edx
	lea	rcx, [rsi + 1]
	mov	qword ptr [r12 + 0x40], rcx
	mov	dword ptr [rbp + rsi*4], eax
.label_1021:
	mov	r15, qword ptr [rsp + 0x30]
	mov	eax, eax
	mov	edx, edx
	xor	ecx, ecx
	mov	r12, qword ptr [rsp + 0x48]
	nop	dword ptr [rax]
.label_1039:
	cmp	rdx, rcx
	ja	.label_1032
	cmp	rcx, rax
	ja	.label_1032
	mov	esi, 1
	shl	rsi, cl
	mov	rdi, rcx
	sar	rdi, 0x3f
	shr	rdi, 0x3a
	add	rdi, rcx
	sar	rdi, 6
	or	qword ptr [r14 + rdi*8], rsi
.label_1032:
	inc	rcx
	cmp	rcx, 0x100
	jne	.label_1039
	mov	dword ptr [r12], 0
	jmp	.label_983
.label_980:
	mov	rax, qword ptr [rsp + 0x68]
	lea	rax, [rax + rax]
	mov	rdi, qword ptr [r15]
	lea	rsi, [rax*4 + 4]
	call	realloc
	test	rax, rax
	je	.label_903
	mov	rcx, qword ptr [rsp + 0x68]
	lea	rcx, [rcx + rcx + 1]
	mov	qword ptr [rsp + 0x68], rcx
	mov	r15, qword ptr [rsp + 0x30]
	mov	qword ptr [r15], rax
	mov	rcx, qword ptr [r15 + 0x28]
	mov	rbx, qword ptr [rsp + 0x20]
	jmp	.label_1047
.label_1023:
	mov	dword ptr [rsp + 0x40], eax
	mov	r15d, edx
	mov	rax, qword ptr [rsp + 0x60]
	lea	rax, [rax + rax]
	mov	rdi, qword ptr [r12 + 8]
	lea	rbp, [rax*4 + 4]
	mov	rsi, rbp
	call	realloc
	mov	rbx, rax
	mov	rdi, qword ptr [r12 + 0x10]
	mov	rsi, rbp
	call	realloc
	mov	rbp, rax
	mov	rdi, rbx
	test	rbx, rbx
	je	.label_1055
	test	rbp, rbp
	je	.label_1055
	mov	rax, qword ptr [rsp + 0x60]
	lea	rax, [rax + rax + 1]
	mov	qword ptr [rsp + 0x60], rax
	mov	qword ptr [r12 + 8], rdi
	mov	qword ptr [r12 + 0x10], rbp
	mov	rsi, qword ptr [r12 + 0x40]
	mov	rbx, qword ptr [rsp + 0x20]
	mov	r10, qword ptr [rsp + 8]
	mov	r9, qword ptr [rsp + 0x18]
	mov	edx, r15d
	mov	eax, dword ptr [rsp + 0x40]
	jmp	.label_1343
.label_907:
	mov	rdi, qword ptr [rsp + 8]
	mov	rsi, qword ptr [rsp + 0x10]
	mov	rdx, rbx
	call	peek_token_bracket
	mov	r13d, eax
	mov	ebp, dword ptr [rsp + 0x50]
	cmp	ebp, 2
	je	.label_1065
	cmp	ebp, 4
	jne	.label_1067
	mov	rax, qword ptr [rsp + 0x10]
	mov	rdi, qword ptr [rax + 0x78]
	mov	r8, qword ptr [rsp + 0x58]
	mov	rsi, r14
	mov	rdx, r15
	lea	rcx, [rsp + 0xa8]
	mov	r9, rbx
	call	build_charclass
	mov	dword ptr [r12], eax
	test	eax, eax
	mov	r10, qword ptr [rsp + 8]
	mov	r9, qword ptr [rsp + 0x18]
	je	.label_983
	jmp	.label_900
.label_1067:
	mov	rax, qword ptr [rsp + 8]
	mov	al, byte ptr [rax + 8]
	cmp	al, 0x16
	mov	rsi, qword ptr [rsp + 0x10]
	je	.label_939
	cmp	al, 2
	jne	.label_1079
	jmp	.label_1081
.label_939:
	movsxd	rax, r13d
	add	qword ptr [rsi + 0x48], rax
	lea	rdi, [rsp + 0xb0]
	mov	rdx, rbx
	mov	r15, rsi
	call	peek_token_bracket
	mov	cl, byte ptr [rsp + 0xb8]
	cmp	cl, 0x15
	je	.label_1083
	cmp	cl, 2
	je	.label_1086
	mov	qword ptr [rsp + 0x48], r12
	lea	rcx, [rsp + 0x70]
	mov	qword ptr [rsp + 0xa0], rcx
	mov	dword ptr [rsp + 0x98], 3
	mov	r9d, 1
	lea	rdi, [rsp + 0x98]
	mov	r15, qword ptr [rsp + 0x10]
	mov	rsi, r15
	lea	rdx, [rsp + 0xb0]
	mov	ecx, eax
	mov	r8, rbx
	call	parse_bracket_element
	test	eax, eax
	jne	.label_1092
	mov	rdi, qword ptr [rsp + 8]
	mov	rsi, r15
	mov	rdx, rbx
	call	peek_token_bracket
	mov	r13d, eax
	mov	r9, qword ptr [rsp + 0x18]
	cmp	dword ptr [r9 + 0xb4], 1
	mov	r12d, 0
	cmovg	r12, qword ptr [rsp + 0x30]
	mov	ecx, 0xb
	mov	r15d, dword ptr [rsp + 0x98]
	cmp	r15d, 2
	je	.label_1014
	cmp	r15d, 4
	je	.label_1014
	cmp	ebp, 3
	mov	r10, qword ptr [rsp + 8]
	jne	.label_1101
	mov	rdi, qword ptr [rsp + 0x58]
	call	strlen
	mov	r9, qword ptr [rsp + 0x18]
	mov	r10, qword ptr [rsp + 8]
	mov	ecx, 3
	cmp	rax, 1
	ja	.label_1014
.label_1101:
	cmp	r15d, 3
	jne	.label_1106
	mov	rdi, qword ptr [rsp + 0xa0]
	call	strlen
	mov	r9, qword ptr [rsp + 0x18]
	mov	r10, qword ptr [rsp + 8]
	mov	ecx, 3
	cmp	rax, 1
	ja	.label_1014
.label_1106:
	cmp	ebp, 3
	je	.label_1113
	test	ebp, ebp
	jne	.label_1114
	mov	al, byte ptr [rsp + 0x58]
	jmp	.label_992
.label_1083:
	mov	eax, r13d
	neg	eax
	cdqe	
	add	qword ptr [r15 + 0x48], rax
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + 8], 1
	mov	r15, qword ptr [rsp + 0x30]
.label_1079:
	mov	eax, ebp
	cmp	ebp, 3
	ja	.label_1120
	jmp	qword ptr [(rax * 8) + label_1121]
.label_2674:
	mov	cl, byte ptr [rsp + 0x58]
	mov	eax, 1
	shl	rax, cl
	shr	cl, 6
	movzx	ecx, cl
	or	qword ptr [r14 + rcx*8], rax
	jmp	.label_1123
.label_1065:
	mov	rbp, qword ptr [rsp + 0x58]
	mov	rdi, rbp
	call	strlen
	cmp	rax, 1
	jne	.label_1126
.label_987:
	mov	cl, byte ptr [rbp]
	mov	eax, 1
	shl	rax, cl
	shr	cl, 6
	movzx	ecx, cl
	or	qword ptr [r14 + rcx*8], rax
	mov	dword ptr [r12], 0
.label_1123:
	mov	r10, qword ptr [rsp + 8]
	mov	r9, qword ptr [rsp + 0x18]
.label_983:
	mov	al, byte ptr [r10 + 8]
	cmp	al, 0x15
	jne	.label_1136
	movsxd	rax, r13d
	mov	rcx, qword ptr [rsp + 0x10]
	add	qword ptr [rcx + 0x48], rax
	mov	eax, dword ptr [rsp + 0x28]
	test	al, al
	je	.label_1139
	movdqu	xmm0, xmmword ptr [r14]
	pcmpeqd	xmm1, xmm1
	pxor	xmm0, xmm1
	movdqu	xmmword ptr [r14], xmm0
	movdqu	xmm0, xmmword ptr [r14 + 0x10]
	pxor	xmm0, xmm1
	movdqu	xmmword ptr [r14 + 0x10], xmm0
.label_1139:
	mov	eax, dword ptr [r9 + 0xb4]
	cmp	eax, 2
	jl	.label_1148
	mov	rcx, qword ptr [r9 + 0x78]
	mov	rdx, qword ptr [rcx]
	and	qword ptr [r14], rdx
	mov	rdx, qword ptr [rcx + 8]
	and	qword ptr [r14 + 8], rdx
	mov	rdx, qword ptr [rcx + 0x10]
	and	qword ptr [r14 + 0x10], rdx
	mov	rcx, qword ptr [rcx + 0x18]
	and	qword ptr [r14 + 0x18], rcx
.label_1148:
	cmp	qword ptr [r15 + 0x28], 0
	jne	.label_1035
	cmp	qword ptr [r15 + 0x30], 0
	jne	.label_1035
	cmp	qword ptr [r15 + 0x38], 0
	jne	.label_1035
	cmp	qword ptr [r15 + 0x40], 0
	jne	.label_1035
	cmp	eax, 2
	jl	.label_894
	cmp	qword ptr [r15 + 0x48], 0
	jne	.label_1035
	test	byte ptr [r15 + 0x20], 1
	jne	.label_1035
.label_894:
	mov	rdi, qword ptr [r15]
	call	free
	mov	rdi, qword ptr [r15 + 8]
	call	free
	mov	rdi, qword ptr [r15 + 0x10]
	call	free
	mov	rdi, qword ptr [r15 + 0x18]
	call	free
	mov	rdi, r15
	call	free
	mov	rsi, qword ptr [rsp + 0x18]
	mov	ecx, dword ptr [rsi + 0x80]
	cmp	ecx, 0xf
	je	.label_1161
	mov	rax, qword ptr [rsi + 0x70]
.label_1128:
	mov	r8, qword ptr [rsp + 0x10]
	mov	r10, qword ptr [rsp + 8]
	lea	edx, [rcx + 1]
	mov	dword ptr [rsi + 0x80], edx
	movsxd	rcx, ecx
	shl	rcx, 6
	lea	rbp, [rax + rcx + 8]
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [rax + rcx + 8], xmm0
	mov	qword ptr [rax + rcx + 0x18], 0
	mov	qword ptr [rax + rcx + 0x30], r14
	mov	dword ptr [rax + rcx + 0x38], 3
	jmp	.label_981
.label_1035:
	or	byte ptr [r9 + 0xb0], 2
	mov	ecx, dword ptr [r9 + 0x80]
	cmp	ecx, 0xf
	je	.label_1170
	mov	rax, qword ptr [r9 + 0x70]
.label_1307:
	lea	edx, [rcx + 1]
	mov	dword ptr [r9 + 0x80], edx
	movsxd	rcx, ecx
	shl	rcx, 6
	lea	r15, [rax + rcx + 8]
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [rax + rcx + 8], xmm0
	mov	qword ptr [rax + rcx + 0x18], 0
	mov	rdx, qword ptr [rsp + 0x30]
	mov	qword ptr [rax + rcx + 0x30], rdx
	mov	dword ptr [rax + rcx + 0x38], 6
	movdqu	xmmword ptr [rax + rcx + 0x20], xmm0
	mov	qword ptr [rax + rcx + 0x40], -1
	cmp	qword ptr [r14], 0
	jne	.label_1172
	cmp	qword ptr [r14 + 8], 0
	jne	.label_1172
	cmp	qword ptr [r14 + 0x10], 0
	jne	.label_1172
	cmp	qword ptr [r14 + 0x18], 0
	je	.label_1182
.label_1172:
	mov	eax, dword ptr [r9 + 0x80]
	cmp	eax, 0xf
	je	.label_1185
	mov	rbp, qword ptr [r9 + 0x70]
	mov	r8, qword ptr [rsp + 0x10]
.label_1319:
	lea	ecx, [rax + 1]
	mov	dword ptr [r9 + 0x80], ecx
	movsxd	rbx, eax
	shl	rbx, 6
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [rbp + rbx + 8], xmm0
	mov	qword ptr [rbp + rbx + 0x18], 0
	mov	qword ptr [rbp + rbx + 0x30], r14
	mov	dword ptr [rbp + rbx + 0x38], 3
	movdqu	xmmword ptr [rbp + rbx + 0x20], xmm0
	mov	qword ptr [rbp + rbx + 0x40], -1
	mov	ecx, dword ptr [r9 + 0x80]
	cmp	ecx, 0xf
	je	.label_1187
	mov	rax, qword ptr [r9 + 0x70]
.label_1332:
	lea	rdx, [rbp + rbx + 8]
	lea	esi, [rcx + 1]
	mov	dword ptr [r9 + 0x80], esi
	movsxd	rcx, ecx
	shl	rcx, 6
	lea	rbp, [rax + rcx + 8]
	mov	qword ptr [rax + rcx + 8], 0
	mov	qword ptr [rax + rcx + 0x10], rdx
	mov	qword ptr [rax + rcx + 0x18], r15
	mov	dword ptr [rax + rcx + 0x38], 0xa
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [rax + rcx + 0x20], xmm0
	mov	qword ptr [rax + rcx + 0x40], -1
	mov	qword ptr [rdx], rbp
	mov	qword ptr [r15], rbp
	mov	rbx, qword ptr [rsp + 0x20]
.label_905:
	mov	rdi, r10
	mov	rsi, r8
	mov	rdx, rbx
	mov	r15, rbp
	call	peek_token
	mov	rdi, qword ptr [rsp + 8]
	mov	r8, qword ptr [rsp + 0x10]
	cdqe	
	add	qword ptr [r8 + 0x48], rax
	mov	eax, ebx
	and	eax, 0x1000000
	mov	qword ptr [rsp + 0x68], rax
	mov	eax, ebx
	and	eax, 0x200000
	mov	qword ptr [rsp + 0x60], rax
	mov	qword ptr [rsp + 0x48], r12
	nop	word ptr cs:[rax + rax]
.label_1166:
	movzx	eax, byte ptr [rdi + 8]
	cmp	al, 0x17
	ja	.label_968
	mov	ecx, 0x8c0800
	bt	rcx, rax
	jae	.label_968
	mov	r14, qword ptr [r8 + 0x48]
	movdqu	xmm0, xmmword ptr [rdi]
	movdqa	xmmword ptr [rsp + 0xc0], xmm0
	cmp	eax, 0x17
	mov	qword ptr [rsp + 0x28], r15
	jne	.label_1212
	mov	rsi, -1
	jmp	.label_1216
	nop	word ptr cs:[rax + rax]
.label_1212:
	xor	r13d, r13d
	cmp	eax, 0x12
	sete	r13b
	cmp	eax, 0x13
	mov	r15, -1
	mov	eax, 1
	cmove	r15, rax
.label_1330:
	mov	rsi, r8
	mov	rdx, rbx
	call	peek_token
	lea	r10, [rsp + 0x70]
	pxor	xmm1, xmm1
	mov	r9, qword ptr [rsp + 0x28]
	mov	rbp, qword ptr [rsp + 0x18]
	mov	r8, qword ptr [rsp + 0x10]
	cdqe	
	add	qword ptr [r8 + 0x48], rax
	test	r9, r9
	mov	ecx, 0
	je	.label_969
	mov	rax, r15
	mov	r11, r13
	or	rax, r11
	je	.label_1230
	test	r11, r11
	mov	eax, 0
	mov	qword ptr [rsp + 0x38], rax
	mov	r12, r9
	mov	rdi, qword ptr [rsp + 8]
	jg	.label_1233
.label_1304:
	cmp	byte ptr [r12 + 0x30], 0x11
	jne	.label_1238
	mov	rax, qword ptr [r12 + 0x28]
	mov	rdx, r12
	nop	
.label_1241:
	mov	rcx, rdx
	mov	rdx, qword ptr [rcx + 8]
	test	rdx, rdx
	jne	.label_1241
	mov	rdx, qword ptr [rcx + 0x10]
	test	rdx, rdx
	jne	.label_1241
	nop	word ptr cs:[rax + rax]
.label_1048:
	mov	edx, dword ptr [rcx + 0x30]
	cmp	dl, 0x11
	jne	.label_1246
	cmp	qword ptr [rcx + 0x28], rax
	jne	.label_1246
	or	edx, 0x80000
	mov	dword ptr [rcx + 0x30], edx
.label_1246:
	mov	rsi, qword ptr [rcx]
	test	rsi, rsi
	je	.label_1238
	mov	rdx, qword ptr [rsi + 0x10]
	cmp	rdx, rcx
	mov	rcx, rsi
	je	.label_1048
	test	rdx, rdx
	mov	rcx, rsi
	je	.label_1048
	jmp	.label_1241
	nop	word ptr cs:[rax + rax]
.label_1238:
	xor	ebx, ebx
	cmp	r15, -1
	sete	r14b
	mov	ecx, dword ptr [rbp + 0x80]
	cmp	ecx, 0xf
	je	.label_1252
	mov	rax, qword ptr [rbp + 0x70]
.label_989:
	mov	bl, r14b
	or	ebx, 0xa
	lea	edx, [rcx + 1]
	mov	dword ptr [rbp + 0x80], edx
	movsxd	rcx, ecx
	shl	rcx, 6
	lea	r14, [rax + rcx + 8]
	mov	qword ptr [rax + rcx + 8], 0
	mov	qword ptr [rax + rcx + 0x10], r12
	mov	qword ptr [rax + rcx + 0x18], 0
	mov	dword ptr [rax + rcx + 0x38], ebx
	movdqu	xmmword ptr [rax + rcx + 0x20], xmm1
	mov	qword ptr [rax + rcx + 0x40], -1
	test	r12, r12
	je	.label_1257
	mov	qword ptr [r12], r14
.label_1257:
	add	r11, 2
	cmp	r11, r15
	jg	.label_1268
	mov	qword ptr [rsp + 0x30], r15
	jmp	.label_912
.label_1051:
	lea	rax, [r13 + r13*4]
	lea	rax, [rcx + rax*2 - 0x30]
	cmp	rax, 0x8000
	mov	esi, 0x8000
	cmovle	rsi, rax
	nop	dword ptr [rax + rax]
.label_1216:
	mov	r13, rsi
	mov	rsi, r8
	mov	rdx, rbx
	call	peek_token
	mov	rdi, qword ptr [rsp + 8]
	mov	r8, qword ptr [rsp + 0x10]
	cdqe	
	add	qword ptr [r8 + 0x48], rax
	movzx	edx, byte ptr [rdi]
	movzx	ecx, dl
	movzx	eax, byte ptr [rdi + 8]
	mov	bl, 0x18
	cmp	al, 0x18
	je	.label_1278
	cmp	al, 2
	mov	r9, qword ptr [rsp + 0x28]
	je	.label_1281
	mov	sil, 0x2c
	cmp	dl, 0x2c
	mov	ebx, eax
	je	.label_1283
	cmp	dl, 0x30
	mov	rsi, -2
	mov	rbx, qword ptr [rsp + 0x20]
	jb	.label_1216
	cmp	eax, 1
	jne	.label_1216
	cmp	r13, -2
	je	.label_1216
	cmp	dl, 0x39
	ja	.label_1216
	cmp	r13, -1
	jne	.label_1051
	add	rcx, -0x30
	mov	rsi, rcx
	jmp	.label_1216
	nop	dword ptr [rax]
.label_1278:
	mov	esi, edx
	mov	r9, qword ptr [rsp + 0x28]
.label_1283:
	cmp	r13, -1
	jne	.label_1292
	cmp	sil, 0x2c
	jne	.label_1293
	cmp	eax, 1
	mov	r13d, 0
	je	.label_1290
	jmp	.label_1293
	nop	word ptr [rax + rax]
.label_1292:
	cmp	r13, -2
	je	.label_1281
.label_1290:
	cmp	bl, 0x18
	je	.label_1295
	cmp	bl, 1
	jne	.label_1281
	cmp	sil, 0x2c
	mov	rbx, qword ptr [rsp + 0x20]
	jne	.label_1281
	mov	rdx, -1
	jmp	.label_1299
.label_1295:
	mov	r15, r13
	mov	rbx, qword ptr [rsp + 0x20]
	jmp	.label_1302
.label_1322:
	lea	rax, [r15 + r15*4]
	lea	rdx, [rcx + rax*2 - 0x30]
	cmp	rdx, 0x8000
	mov	eax, 0x8000
	cmovg	rdx, rax
	nop	word ptr cs:[rax + rax]
.label_1299:
	mov	r15, rdx
	mov	rsi, r8
	mov	rdx, rbx
	call	peek_token
	mov	r9, qword ptr [rsp + 0x28]
	mov	rdi, qword ptr [rsp + 8]
	mov	r8, qword ptr [rsp + 0x10]
	cdqe	
	add	qword ptr [r8 + 0x48], rax
	movzx	ecx, byte ptr [rdi]
	movzx	eax, byte ptr [rdi + 8]
	cmp	al, 0x18
	je	.label_1309
	cmp	al, 2
	je	.label_1281
	cmp	cl, 0x2c
	je	.label_1309
	cmp	cl, 0x30
	mov	rdx, -2
	jb	.label_1299
	cmp	eax, 1
	jne	.label_1299
	cmp	r15, -2
	je	.label_1299
	cmp	cl, 0x39
	ja	.label_1299
	cmp	r15, -1
	jne	.label_1322
	add	rcx, -0x30
	mov	rdx, rcx
	jmp	.label_1299
.label_1309:
	cmp	r15, -2
	je	.label_1281
.label_1302:
	cmp	r15, -1
	sete	cl
	cmp	r13, r15
	setle	dl
	or	dl, cl
	cmp	dl, 1
	jne	.label_1293
	cmp	eax, 0x18
	jne	.label_1293
	cmp	r15, -1
	mov	rax, r15
	cmove	rax, r13
	cmp	rax, 0x8000
	jl	.label_1330
	mov	dword ptr [r12], 0xf
	jmp	.label_1007
	nop	dword ptr [rax]
.label_1293:
	mov	dword ptr [r12], 0xa
	jmp	.label_1007
.label_1281:
	cmp	qword ptr [rsp + 0x60], 0
	je	.label_1194
	mov	qword ptr [r8 + 0x48], r14
	movdqa	xmm0, xmmword ptr [rsp + 0xc0]
	movdqu	xmmword ptr [rdi], xmm0
	mov	byte ptr [rdi + 8], 1
	mov	rcx, r9
	jmp	.label_969
.label_1383:
	mov	qword ptr [rsp + 0x40], r11
	mov	edi, 0x3c8
	call	malloc
	test	rax, rax
	je	.label_1347
	mov	rbp, qword ptr [rsp + 0x18]
	mov	rcx, qword ptr [rbp + 0x70]
	mov	qword ptr [rax], rcx
	mov	qword ptr [rbp + 0x70], rax
	mov	dword ptr [rbp + 0x80], 0
	xor	ecx, ecx
	mov	r8, qword ptr [rsp + 0x10]
	mov	rdi, qword ptr [rsp + 8]
	mov	r9, qword ptr [rsp + 0x28]
	pxor	xmm1, xmm1
	lea	r10, [rsp + 0x70]
	mov	r11, qword ptr [rsp + 0x40]
	jmp	.label_1348
.label_897:
	mov	qword ptr [rsp + 0x40], r11
	mov	r12, r15
	mov	r15, qword ptr [rsp + 0x30]
	jmp	.label_1356
.label_909:
	mov	edi, 0x3c8
	mov	rbp, r11
	call	malloc
	mov	r11, rbp
	lea	r10, [rsp + 0x70]
	pxor	xmm1, xmm1
	mov	r9, qword ptr [rsp + 0x28]
	mov	rbp, qword ptr [rsp + 0x18]
	mov	rdi, qword ptr [rsp + 8]
	mov	r8, qword ptr [rsp + 0x10]
	test	rax, rax
	je	.label_899
	mov	rcx, qword ptr [rbp + 0x70]
	mov	qword ptr [rax], rcx
	mov	qword ptr [rbp + 0x70], rax
	mov	dword ptr [rbp + 0x80], 0
	xor	ecx, ecx
	jmp	.label_1364
.label_1347:
	mov	qword ptr [rsp + 0x70], 0
	jmp	.label_1366
.label_889:
	mov	qword ptr [rbx], 0
	mov	r15, qword ptr [rsp + 0x30]
.label_1366:
	xor	r12d, r12d
.label_1356:
	mov	edi, 0x3c8
	call	malloc
	test	rax, rax
	mov	r8, qword ptr [rsp + 0x10]
	mov	rdi, qword ptr [rsp + 8]
	mov	rbp, qword ptr [rsp + 0x18]
	mov	r9, qword ptr [rsp + 0x28]
	pxor	xmm1, xmm1
	lea	r10, [rsp + 0x70]
	mov	r11, qword ptr [rsp + 0x40]
	je	.label_899
	mov	rcx, qword ptr [rbp + 0x70]
	mov	qword ptr [rax], rcx
	mov	qword ptr [rbp + 0x70], rax
	mov	dword ptr [rbp + 0x80], 0
	xor	ecx, ecx
	jmp	.label_1376
	nop	dword ptr [rax + rax]
.label_912:
	mov	r13, qword ptr [r12]
	mov	ecx, dword ptr [rbp + 0x80]
	cmp	ecx, 0xf
	je	.label_1383
	mov	rax, qword ptr [rbp + 0x70]
.label_1348:
	lea	rdx, [r12 + 0x28]
	lea	esi, [rcx + 1]
	mov	dword ptr [rbp + 0x80], esi
	movsxd	rcx, ecx
	shl	rcx, 6
	movdqu	xmmword ptr [rax + rcx + 8], xmm1
	mov	qword ptr [rax + rcx + 0x18], 0
	movdqu	xmm0, xmmword ptr [rdx]
	movdqu	xmmword ptr [rax + rcx + 0x30], xmm0
	and	byte ptr [rax + rcx + 0x3a], 0xf3
	lea	r15, [rax + rcx + 8]
	movdqu	xmmword ptr [rax + rcx + 0x20], xmm1
	mov	qword ptr [rax + rcx + 0x40], -1
	mov	qword ptr [rsp + 0x70], r15
	mov	rcx, r15
	mov	rbx, r10
	jmp	.label_1387
	nop	dword ptr [rax + rax]
.label_884:
	lea	rdx, [r12 + 0x28]
	lea	esi, [rcx + 1]
	mov	dword ptr [rbp + 0x80], esi
	movsxd	rsi, ecx
	shl	rsi, 6
	movdqu	xmmword ptr [rax + rsi + 8], xmm1
	mov	qword ptr [rax + rsi + 0x18], 0
	movdqu	xmm0, xmmword ptr [rdx]
	movdqu	xmmword ptr [rax + rsi + 0x30], xmm0
	and	byte ptr [rax + rsi + 0x3a], 0xf3
	lea	rcx, [rax + rsi + 8]
	movdqu	xmmword ptr [rax + rsi + 0x20], xmm1
	mov	qword ptr [rax + rsi + 0x40], -1
	mov	qword ptr [rbx], rcx
.label_1387:
	mov	qword ptr [rcx], r13
	mov	rax, qword ptr [rbx]
	or	dword ptr [rax + 0x30], 0x40000
	mov	r13, qword ptr [rbx]
	mov	rax, qword ptr [r12 + 8]
	test	rax, rax
	je	.label_862
	lea	rbx, [r13 + 8]
	mov	r12, rax
	jmp	.label_868
	nop	dword ptr [rax]
.label_862:
	xor	eax, eax
	nop	word ptr cs:[rax + rax]
.label_943:
	mov	rcx, rax
	mov	rax, r12
	mov	r12, qword ptr [rax + 0x10]
	cmp	r12, rcx
	je	.label_874
	test	r12, r12
	jne	.label_876
.label_874:
	mov	r12, qword ptr [rax]
	mov	r13, qword ptr [r13]
	test	r12, r12
	jne	.label_943
	jmp	.label_1104
.label_876:
	lea	rbx, [r13 + 0x10]
.label_868:
	mov	ecx, dword ptr [rbp + 0x80]
	cmp	ecx, 0xf
	je	.label_881
	mov	rax, qword ptr [rbp + 0x70]
	jmp	.label_884
.label_881:
	mov	qword ptr [rsp + 0x40], r11
	mov	edi, 0x3c8
	call	malloc
	test	rax, rax
	je	.label_889
	mov	rbp, qword ptr [rsp + 0x18]
	mov	rcx, qword ptr [rbp + 0x70]
	mov	qword ptr [rax], rcx
	mov	qword ptr [rbp + 0x70], rax
	mov	dword ptr [rbp + 0x80], 0
	xor	ecx, ecx
	mov	r8, qword ptr [rsp + 0x10]
	mov	rdi, qword ptr [rsp + 8]
	mov	r9, qword ptr [rsp + 0x28]
	pxor	xmm1, xmm1
	lea	r10, [rsp + 0x70]
	mov	r11, qword ptr [rsp + 0x40]
	jmp	.label_884
.label_1104:
	mov	ecx, dword ptr [rbp + 0x80]
	cmp	ecx, 0xf
	je	.label_897
	mov	rax, qword ptr [rbp + 0x70]
	mov	r12, r15
	mov	r15, qword ptr [rsp + 0x30]
.label_1376:
	lea	edx, [rcx + 1]
	mov	dword ptr [rbp + 0x80], edx
	movsxd	rcx, ecx
	shl	rcx, 6
	lea	rbx, [rax + rcx + 8]
	mov	qword ptr [rax + rcx + 8], 0
	mov	qword ptr [rax + rcx + 0x10], r14
	mov	qword ptr [rax + rcx + 0x18], r12
	mov	dword ptr [rax + rcx + 0x38], 0x10
	movdqu	xmmword ptr [rax + rcx + 0x20], xmm1
	mov	qword ptr [rax + rcx + 0x40], -1
	mov	qword ptr [r14], rbx
	test	r12, r12
	je	.label_899
	mov	qword ptr [r12], rbx
	mov	ecx, dword ptr [rbp + 0x80]
	cmp	ecx, 0xf
	je	.label_909
	mov	rax, qword ptr [rbp + 0x70]
.label_1364:
	lea	edx, [rcx + 1]
	mov	dword ptr [rbp + 0x80], edx
	movsxd	rcx, ecx
	shl	rcx, 6
	lea	r14, [rax + rcx + 8]
	mov	qword ptr [rax + rcx + 8], 0
	mov	qword ptr [rax + rcx + 0x10], rbx
	mov	qword ptr [rax + rcx + 0x18], 0
	mov	dword ptr [rax + rcx + 0x38], 0xa
	movdqu	xmmword ptr [rax + rcx + 0x20], xmm1
	mov	qword ptr [rax + rcx + 0x40], -1
	mov	qword ptr [rbx], r14
	cmp	r11, r15
	lea	r11, [r11 + 1]
	jl	.label_912
.label_1268:
	mov	rbx, qword ptr [rsp + 0x38]
	test	rbx, rbx
	je	.label_927
	mov	ecx, dword ptr [rbp + 0x80]
	cmp	ecx, 0xf
	mov	r12, qword ptr [rsp + 0x48]
	je	.label_928
	mov	rax, qword ptr [rbp + 0x70]
.label_1049:
	lea	edx, [rcx + 1]
	mov	dword ptr [rbp + 0x80], edx
	movsxd	rcx, ecx
	shl	rcx, 6
	lea	rdx, [rax + rcx + 8]
	mov	qword ptr [rax + rcx + 8], 0
	mov	qword ptr [rax + rcx + 0x10], rbx
	mov	qword ptr [rax + rcx + 0x18], r14
	mov	dword ptr [rax + rcx + 0x38], 0x10
	movdqu	xmmword ptr [rax + rcx + 0x20], xmm1
	mov	qword ptr [rax + rcx + 0x40], -1
	mov	qword ptr [rbx], rdx
	mov	qword ptr [r14], rdx
	mov	r14, rdx
	jmp	.label_1219
.label_927:
	mov	r12, qword ptr [rsp + 0x48]
.label_1219:
	mov	rbx, qword ptr [rsp + 0x20]
	xor	eax, eax
	mov	rcx, r14
	jmp	.label_946
.label_1230:
	mov	rax, r9
	nop	word ptr cs:[rax + rax]
.label_885:
	mov	rbx, rax
	mov	rax, qword ptr [rbx + 8]
	test	rax, rax
	jne	.label_885
	mov	rax, qword ptr [rbx + 0x10]
	test	rax, rax
	jne	.label_885
.label_974:
	mov	eax, dword ptr [rbx + 0x30]
	mov	ecx, 0x400ff
	and	eax, ecx
	cmp	eax, 3
	je	.label_955
	cmp	eax, 6
	jne	.label_957
	mov	rbp, qword ptr [rbx + 0x28]
	mov	rdi, qword ptr [rbp]
	call	free
	mov	rdi, qword ptr [rbp + 8]
	call	free
	mov	rdi, qword ptr [rbp + 0x10]
	call	free
	mov	rdi, qword ptr [rbp + 0x18]
	call	free
	mov	rdi, rbp
	jmp	.label_964
.label_955:
	mov	rdi, qword ptr [rbx + 0x28]
.label_964:
	call	free
	mov	r9, qword ptr [rsp + 0x28]
	mov	r8, qword ptr [rsp + 0x10]
.label_957:
	mov	rdx, qword ptr [rbx]
	test	rdx, rdx
	mov	ecx, 0
	je	.label_969
	mov	rax, qword ptr [rdx + 0x10]
	cmp	rax, rbx
	mov	rbx, rdx
	je	.label_974
	test	rax, rax
	mov	rbx, rdx
	je	.label_974
	jmp	.label_885
.label_1233:
	cmp	r11, 1
	mov	rax, r9
	mov	qword ptr [rsp + 0x38], rax
	mov	r12, r9
	je	.label_977
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x38], rax
	mov	r12, r9
	mov	r14d, 2
	mov	rax, r9
	mov	qword ptr [rsp + 0x30], r15
	jmp	.label_978
.label_1252:
	mov	edi, 0x3c8
	call	malloc
	mov	r11, r13
	lea	r10, [rsp + 0x70]
	pxor	xmm1, xmm1
	mov	r9, qword ptr [rsp + 0x28]
	mov	rbp, qword ptr [rsp + 0x18]
	mov	rdi, qword ptr [rsp + 8]
	mov	r8, qword ptr [rsp + 0x10]
	test	rax, rax
	je	.label_899
	mov	rcx, qword ptr [rbp + 0x70]
	mov	qword ptr [rax], rcx
	mov	qword ptr [rbp + 0x70], rax
	mov	dword ptr [rbp + 0x80], 0
	xor	ecx, ecx
	jmp	.label_989
.label_928:
	mov	edi, 0x3c8
	call	malloc
	pxor	xmm1, xmm1
	mov	r9, qword ptr [rsp + 0x28]
	mov	rbp, qword ptr [rsp + 0x18]
	mov	r8, qword ptr [rsp + 0x10]
	test	rax, rax
	mov	ecx, 0
	je	.label_969
	mov	rcx, qword ptr [rbp + 0x70]
	mov	qword ptr [rax], rcx
	mov	qword ptr [rbp + 0x70], rax
	mov	dword ptr [rbp + 0x80], 0
	xor	ecx, ecx
	mov	rdi, qword ptr [rsp + 8]
	jmp	.label_1049
.label_1194:
	xor	ecx, ecx
	cmp	al, 2
	setne	cl
	add	ecx, 9
	mov	dword ptr [r12], ecx
	jmp	.label_1007
.label_1040:
	mov	edi, 0x3c8
	call	malloc
	test	rax, rax
	je	.label_1011
	mov	rbp, qword ptr [rsp + 0x18]
	mov	rcx, qword ptr [rbp + 0x70]
	mov	qword ptr [rax], rcx
	mov	qword ptr [rbp + 0x70], rax
	mov	dword ptr [rbp + 0x80], 0
	xor	ecx, ecx
	mov	r8, qword ptr [rsp + 0x10]
	mov	rdi, qword ptr [rsp + 8]
	mov	r9, qword ptr [rsp + 0x28]
	pxor	xmm1, xmm1
	lea	r10, [rsp + 0x70]
	mov	r11, r13
	jmp	.label_1012
.label_1085:
	mov	r12, rbx
	jmp	.label_1022
.label_1011:
	mov	qword ptr [rsp + 0x70], 0
	jmp	.label_1024
.label_1076:
	mov	qword ptr [r15], 0
.label_1024:
	xor	r12d, r12d
.label_1022:
	mov	edi, 0x3c8
	call	malloc
	test	rax, rax
	mov	r8, qword ptr [rsp + 0x10]
	mov	rdi, qword ptr [rsp + 8]
	mov	rbp, qword ptr [rsp + 0x18]
	mov	r9, qword ptr [rsp + 0x28]
	pxor	xmm1, xmm1
	lea	r10, [rsp + 0x70]
	mov	r11, r13
	mov	r15, qword ptr [rsp + 0x30]
	je	.label_899
	mov	rcx, qword ptr [rbp + 0x70]
	mov	qword ptr [rax], rcx
	mov	qword ptr [rbp + 0x70], rax
	mov	dword ptr [rbp + 0x80], 0
	xor	ecx, ecx
	jmp	.label_1036
.label_978:
	mov	ecx, dword ptr [rbp + 0x80]
	cmp	ecx, 0xf
	mov	qword ptr [rsp + 0x40], rax
	je	.label_1040
	mov	rax, qword ptr [rbp + 0x70]
.label_1012:
	lea	rdx, [r12 + 0x28]
	lea	esi, [rcx + 1]
	mov	dword ptr [rbp + 0x80], esi
	movsxd	rcx, ecx
	shl	rcx, 6
	movdqu	xmmword ptr [rax + rcx + 8], xmm1
	mov	qword ptr [rax + rcx + 0x18], 0
	movdqu	xmm0, xmmword ptr [rdx]
	movdqu	xmmword ptr [rax + rcx + 0x30], xmm0
	and	byte ptr [rax + rcx + 0x3a], 0xf3
	lea	rbx, [rax + rcx + 8]
	movdqu	xmmword ptr [rax + rcx + 0x20], xmm1
	mov	qword ptr [rax + rcx + 0x40], -1
	mov	qword ptr [rsp + 0x70], rbx
	mov	rcx, rbx
	mov	r15, r10
	jmp	.label_1044
.label_1073:
	lea	rdx, [r12 + 0x28]
	lea	esi, [rcx + 1]
	mov	dword ptr [rbp + 0x80], esi
	movsxd	rsi, ecx
	shl	rsi, 6
	movdqu	xmmword ptr [rax + rsi + 8], xmm1
	mov	qword ptr [rax + rsi + 0x18], 0
	movdqu	xmm0, xmmword ptr [rdx]
	movdqu	xmmword ptr [rax + rsi + 0x30], xmm0
	and	byte ptr [rax + rsi + 0x3a], 0xf3
	lea	rcx, [rax + rsi + 8]
	movdqu	xmmword ptr [rax + rsi + 0x20], xmm1
	mov	qword ptr [rax + rsi + 0x40], -1
	mov	qword ptr [r15], rcx
.label_1044:
	mov	rax, qword ptr [rsp + 0x38]
	mov	qword ptr [rcx], rax
	mov	rax, qword ptr [r15]
	or	dword ptr [rax + 0x30], 0x40000
	mov	rcx, qword ptr [r15]
	mov	rax, qword ptr [r12 + 8]
	test	rax, rax
	mov	qword ptr [rsp + 0x38], rcx
	je	.label_1060
	lea	r15, [rcx + 8]
	mov	r12, rax
	jmp	.label_1062
.label_1060:
	xor	eax, eax
	mov	r15, qword ptr [rsp + 0x30]
	nop	word ptr [rax + rax]
.label_1068:
	mov	rcx, rax
	mov	rax, r12
	mov	r12, qword ptr [rax + 0x10]
	cmp	r12, rcx
	je	.label_1405
	test	r12, r12
	jne	.label_1066
.label_1405:
	mov	r12, qword ptr [rax]
	mov	rcx, qword ptr [rsp + 0x38]
	mov	rcx, qword ptr [rcx]
	mov	qword ptr [rsp + 0x38], rcx
	test	r12, r12
	jne	.label_1068
	jmp	.label_1070
.label_1066:
	mov	rax, qword ptr [rsp + 0x38]
	lea	r15, [rax + 0x10]
.label_1062:
	mov	ecx, dword ptr [rbp + 0x80]
	cmp	ecx, 0xf
	je	.label_1072
	mov	rax, qword ptr [rbp + 0x70]
	jmp	.label_1073
.label_1072:
	mov	edi, 0x3c8
	call	malloc
	test	rax, rax
	je	.label_1076
	mov	rbp, qword ptr [rsp + 0x18]
	mov	rcx, qword ptr [rbp + 0x70]
	mov	qword ptr [rax], rcx
	mov	qword ptr [rbp + 0x70], rax
	mov	dword ptr [rbp + 0x80], 0
	xor	ecx, ecx
	mov	r8, qword ptr [rsp + 0x10]
	mov	rdi, qword ptr [rsp + 8]
	mov	r9, qword ptr [rsp + 0x28]
	pxor	xmm1, xmm1
	lea	r10, [rsp + 0x70]
	mov	r11, r13
	jmp	.label_1073
.label_1070:
	mov	ecx, dword ptr [rbp + 0x80]
	cmp	ecx, 0xf
	je	.label_1085
	mov	rax, qword ptr [rbp + 0x70]
	mov	r12, rbx
.label_1036:
	mov	rbx, qword ptr [rsp + 0x40]
	lea	edx, [rcx + 1]
	mov	dword ptr [rbp + 0x80], edx
	movsxd	rcx, ecx
	shl	rcx, 6
	lea	rdx, [rax + rcx + 8]
	mov	qword ptr [rax + rcx + 8], 0
	mov	qword ptr [rax + rcx + 0x10], rbx
	mov	qword ptr [rax + rcx + 0x18], r12
	mov	dword ptr [rax + rcx + 0x38], 0x10
	movdqu	xmmword ptr [rax + rcx + 0x20], xmm1
	mov	qword ptr [rax + rcx + 0x40], -1
	test	rbx, rbx
	je	.label_1088
	mov	qword ptr [rbx], rdx
.label_1088:
	mov	qword ptr [rsp + 0x38], rdx
	test	r12, r12
	je	.label_899
	mov	rax, qword ptr [rsp + 0x38]
	mov	qword ptr [r12], rax
	cmp	r14, r11
	lea	r14, [r14 + 1]
	jl	.label_978
.label_977:
	cmp	r11, r15
	jne	.label_1095
	mov	rcx, qword ptr [rsp + 0x38]
	mov	r12, qword ptr [rsp + 0x48]
	jmp	.label_969
.label_1095:
	mov	r14, qword ptr [r12]
	mov	ecx, dword ptr [rbp + 0x80]
	cmp	ecx, 0xf
	mov	qword ptr [rsp + 0x30], r15
	je	.label_1116
	mov	rax, qword ptr [rbp + 0x70]
.label_1392:
	lea	rdx, [r12 + 0x28]
	mov	rbx, r12
	lea	esi, [rcx + 1]
	mov	dword ptr [rbp + 0x80], esi
	movsxd	rcx, ecx
	shl	rcx, 6
	movdqu	xmmword ptr [rax + rcx + 8], xmm1
	mov	qword ptr [rax + rcx + 0x18], 0
	movdqu	xmm0, xmmword ptr [rdx]
	movdqu	xmmword ptr [rax + rcx + 0x30], xmm0
	and	byte ptr [rax + rcx + 0x3a], 0xf3
	lea	r12, [rax + rcx + 8]
	movdqu	xmmword ptr [rax + rcx + 0x20], xmm1
	mov	qword ptr [rax + rcx + 0x40], -1
	mov	qword ptr [rsp + 0x70], r12
	mov	rcx, r12
	mov	r15, r10
	jmp	.label_1103
.label_1141:
	lea	rdx, [rbx + 0x28]
	lea	esi, [rcx + 1]
	mov	dword ptr [rbp + 0x80], esi
	movsxd	rsi, ecx
	shl	rsi, 6
	movdqu	xmmword ptr [rax + rsi + 8], xmm1
	mov	qword ptr [rax + rsi + 0x18], 0
	movdqu	xmm0, xmmword ptr [rdx]
	movdqu	xmmword ptr [rax + rsi + 0x30], xmm0
	and	byte ptr [rax + rsi + 0x3a], 0xf3
	lea	rcx, [rax + rsi + 8]
	movdqu	xmmword ptr [rax + rsi + 0x20], xmm1
	mov	qword ptr [rax + rsi + 0x40], -1
	mov	qword ptr [r15], rcx
.label_1103:
	mov	qword ptr [rcx], r14
	mov	rax, qword ptr [r15]
	or	dword ptr [rax + 0x30], 0x40000
	mov	r14, qword ptr [r15]
	mov	rax, qword ptr [rbx + 8]
	test	rax, rax
	je	.label_1386
	lea	r15, [r14 + 8]
	mov	rbx, rax
	jmp	.label_1127
.label_1386:
	xor	eax, eax
	mov	r15, qword ptr [rsp + 0x30]
.label_1134:
	mov	rcx, rax
	mov	rax, rbx
	mov	rbx, qword ptr [rax + 0x10]
	cmp	rbx, rcx
	je	.label_1130
	test	rbx, rbx
	jne	.label_1132
.label_1130:
	mov	rbx, qword ptr [rax]
	mov	r14, qword ptr [r14]
	test	rbx, rbx
	jne	.label_1134
	jmp	.label_1304
.label_1132:
	lea	r15, [r14 + 0x10]
.label_1127:
	mov	ecx, dword ptr [rbp + 0x80]
	cmp	ecx, 0xf
	je	.label_1138
	mov	rax, qword ptr [rbp + 0x70]
	jmp	.label_1141
.label_1138:
	mov	edi, 0x3c8
	call	malloc
	test	rax, rax
	je	.label_1143
	mov	rbp, qword ptr [rsp + 0x18]
	mov	rcx, qword ptr [rbp + 0x70]
	mov	qword ptr [rax], rcx
	mov	qword ptr [rbp + 0x70], rax
	mov	dword ptr [rbp + 0x80], 0
	xor	ecx, ecx
	mov	r8, qword ptr [rsp + 0x10]
	mov	rdi, qword ptr [rsp + 8]
	mov	r9, qword ptr [rsp + 0x28]
	pxor	xmm1, xmm1
	lea	r10, [rsp + 0x70]
	mov	r11, r13
	jmp	.label_1141
.label_1116:
	mov	edi, 0x3c8
	call	malloc
	test	rax, rax
	je	.label_1153
	mov	rbp, qword ptr [rsp + 0x18]
	mov	rcx, qword ptr [rbp + 0x70]
	mov	qword ptr [rax], rcx
	mov	qword ptr [rbp + 0x70], rax
	mov	dword ptr [rbp + 0x80], 0
	xor	ecx, ecx
	mov	r8, qword ptr [rsp + 0x10]
	mov	rdi, qword ptr [rsp + 8]
	mov	r9, qword ptr [rsp + 0x28]
	pxor	xmm1, xmm1
	lea	r10, [rsp + 0x70]
	mov	r11, r13
	jmp	.label_1392
.label_1153:
	mov	qword ptr [rsp + 0x70], 0
	jmp	.label_1159
.label_1143:
	mov	qword ptr [r15], 0
.label_1159:
	mov	r8, qword ptr [rsp + 0x10]
	mov	r9, qword ptr [rsp + 0x28]
.label_899:
	mov	r12, qword ptr [rsp + 0x48]
	mov	dword ptr [r12], 0xc
.label_1007:
	xor	ecx, ecx
.label_969:
	test	rcx, rcx
	sete	al
	jne	.label_1162
	mov	edx, dword ptr [r12]
	test	edx, edx
	mov	rbx, qword ptr [rsp + 0x20]
	mov	rdi, qword ptr [rsp + 8]
	je	.label_946
	jmp	.label_1164
	nop	word ptr cs:[rax + rax]
.label_1162:
	mov	rbx, qword ptr [rsp + 0x20]
	mov	rdi, qword ptr [rsp + 8]
.label_946:
	cmp	qword ptr [rsp + 0x68], 0
	mov	r15, rcx
	je	.label_1166
	mov	dl, byte ptr [rdi + 8]
	cmp	dl, 0x17
	je	.label_1168
	cmp	dl, 0xb
	mov	r15, rcx
	jne	.label_1166
.label_1168:
	test	al, al
	jne	.label_887
	mov	r14d, 0x400ff
	nop	dword ptr [rax + rax]
.label_1054:
	mov	rbp, rcx
	mov	rcx, qword ptr [rbp + 8]
	test	rcx, rcx
	jne	.label_1054
	mov	rcx, qword ptr [rbp + 0x10]
	test	rcx, rcx
	jne	.label_1054
	nop	word ptr cs:[rax + rax]
.label_1183:
	mov	eax, dword ptr [rbp + 0x30]
	and	eax, r14d
	cmp	eax, 3
	je	.label_1175
	cmp	eax, 6
	jne	.label_1176
	mov	rbx, qword ptr [rbp + 0x28]
	mov	rdi, qword ptr [rbx]
	call	free
	mov	rdi, qword ptr [rbx + 8]
	call	free
	mov	rdi, qword ptr [rbx + 0x10]
	call	free
	mov	rdi, qword ptr [rbx + 0x18]
	call	free
	mov	rdi, rbx
	jmp	.label_1180
	nop	dword ptr [rax]
.label_1175:
	mov	rdi, qword ptr [rbp + 0x28]
.label_1180:
	call	free
.label_1176:
	mov	rax, qword ptr [rbp]
	test	rax, rax
	je	.label_887
	mov	rcx, qword ptr [rax + 0x10]
	cmp	rcx, rbp
	mov	rbp, rax
	je	.label_1183
	test	rcx, rcx
	mov	rbp, rax
	je	.label_1183
	jmp	.label_1054
.label_887:
	mov	dword ptr [r12], 0xd
.label_866:
	xor	r15d, r15d
.label_968:
	mov	rax, r15
	add	rsp, 0xe8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_1407:
	mov	dword ptr [r10], 5
	mov	r15, rdi
	sub	r15, -0x80
	mov	r14d, dword ptr [rdi + 0x80]
	cmp	r14d, 0xf
	je	.label_1189
	mov	rax, qword ptr [rdi + 0x70]
.label_1399:
	lea	ecx, [r14 + 1]
	mov	dword ptr [r15], ecx
	movsxd	rcx, r14d
	shl	rcx, 6
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [rax + rcx + 8], xmm0
	mov	qword ptr [rax + rcx + 0x18], 0
	movdqu	xmm1, xmmword ptr [r10]
	movdqu	xmmword ptr [rax + rcx + 0x30], xmm1
	and	byte ptr [rax + rcx + 0x3a], 0xf3
	lea	r14, [rax + rcx + 8]
	movdqu	xmmword ptr [rax + rcx + 0x20], xmm0
	mov	qword ptr [rax + rcx + 0x40], -1
	mov	ecx, 0xa
.label_872:
	mov	dword ptr [r10], ecx
	mov	ebp, dword ptr [r15]
	cmp	ebp, 0xf
	je	.label_1200
	mov	rax, qword ptr [rdi + 0x70]
.label_1355:
	lea	ecx, [rbp + 1]
	mov	dword ptr [r15], ecx
	movsxd	rcx, ebp
	shl	rcx, 6
	lea	rbp, [rax + rcx + 8]
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [rax + rcx + 8], xmm0
	mov	qword ptr [rax + rcx + 0x18], 0
	movdqu	xmm1, xmmword ptr [r10]
	movdqu	xmmword ptr [rax + rcx + 0x30], xmm1
	and	byte ptr [rax + rcx + 0x3a], 0xf3
	movdqu	xmmword ptr [rax + rcx + 0x20], xmm0
	mov	qword ptr [rax + rcx + 0x40], -1
.label_1352:
	mov	ecx, dword ptr [r15]
	cmp	ecx, 0xf
	je	.label_1206
	mov	rax, qword ptr [rdi + 0x70]
.label_1358:
	lea	edx, [rcx + 1]
	mov	dword ptr [r15], edx
	movsxd	rcx, ecx
	shl	rcx, 6
	lea	r15, [rax + rcx + 8]
	mov	qword ptr [rax + rcx + 8], 0
	mov	qword ptr [rax + rcx + 0x10], r14
	mov	qword ptr [rax + rcx + 0x18], rbp
	mov	dword ptr [rax + rcx + 0x38], 0xa
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [rax + rcx + 0x20], xmm0
	mov	qword ptr [rax + rcx + 0x40], -1
	test	r14, r14
	je	.label_1210
	mov	qword ptr [r14], r15
.label_1210:
	test	rbp, rbp
	je	.label_1220
	mov	qword ptr [rbp], r15
	test	r14, r14
	jne	.label_1222
	jmp	.label_1220
.label_861:
	mov	ecx, dword ptr [rdi + 0x80]
	cmp	ecx, 0xf
	je	.label_1224
	mov	rax, qword ptr [rdi + 0x70]
.label_1406:
	lea	edx, [rcx + 1]
	mov	dword ptr [rdi + 0x80], edx
	movsxd	rcx, ecx
	shl	rcx, 6
	lea	r15, [rax + rcx + 8]
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [rax + rcx + 8], xmm0
	mov	qword ptr [rax + rcx + 0x18], 0
	movdqu	xmm1, xmmword ptr [r10]
	movdqu	xmmword ptr [rax + rcx + 0x30], xmm1
	and	byte ptr [rax + rcx + 0x3a], 0xf3
	movdqu	xmmword ptr [rax + rcx + 0x20], xmm0
	mov	qword ptr [rax + rcx + 0x40], -1
.label_1222:
	mov	rdi, r10
	mov	rsi, r8
	mov	rdx, rbx
	mov	rbx, r8
	call	peek_token
	cdqe	
	add	qword ptr [rbx + 0x48], rax
	jmp	.label_968
.label_1267:
	mov	rbp, r14
	jmp	.label_905
.label_1164:
	xor	r15d, r15d
	test	r9, r9
	je	.label_968
	mov	r14d, 0x400ff
	xor	r15d, r15d
	nop	word ptr cs:[rax + rax]
.label_1245:
	mov	rbx, r9
	mov	r9, qword ptr [rbx + 8]
	test	r9, r9
	jne	.label_1245
	mov	r9, qword ptr [rbx + 0x10]
	test	r9, r9
	jne	.label_1245
.label_1102:
	mov	eax, dword ptr [rbx + 0x30]
	and	eax, r14d
	cmp	eax, 3
	je	.label_1247
	cmp	eax, 6
	jne	.label_1248
	mov	rbp, qword ptr [rbx + 0x28]
	mov	rdi, qword ptr [rbp]
	call	free
	mov	rdi, qword ptr [rbp + 8]
	call	free
	mov	rdi, qword ptr [rbp + 0x10]
	call	free
	mov	rdi, qword ptr [rbp + 0x18]
	call	free
	mov	rdi, rbp
	jmp	.label_1253
.label_1247:
	mov	rdi, qword ptr [rbx + 0x28]
.label_1253:
	call	free
.label_1248:
	mov	rax, qword ptr [rbx]
	test	rax, rax
	je	.label_968
	mov	r9, qword ptr [rax + 0x10]
	cmp	r9, rbx
	mov	rbx, rax
	je	.label_1102
	test	r9, r9
	mov	rbx, rax
	je	.label_1102
	jmp	.label_1245
.label_1182:
	mov	rdi, r14
	call	free
	mov	r10, qword ptr [rsp + 8]
	mov	rbp, r15
	mov	r8, qword ptr [rsp + 0x10]
	jmp	.label_905
.label_962:
	mov	dword ptr [r12], eax
	jmp	.label_900
.label_973:
	mov	dword ptr [r12], 7
	jmp	.label_900
.label_895:
	mov	edi, 0x3c8
	call	malloc
	test	rax, rax
	je	.label_1220
	mov	rdi, qword ptr [rsp + 0x18]
	mov	rcx, qword ptr [rdi + 0x70]
	mov	qword ptr [rax], rcx
	mov	qword ptr [rdi + 0x70], rax
	mov	dword ptr [rdi + 0x80], 0
	xor	ecx, ecx
	mov	rbx, qword ptr [rsp + 0x20]
	mov	r8, qword ptr [rsp + 0x10]
	mov	r10, qword ptr [rsp + 8]
	jmp	.label_1272
.label_924:
	mov	dword ptr [r12], 2
	jmp	.label_900
.label_1250:
	mov	edi, 0x3c8
	call	malloc
	test	rax, rax
	je	.label_1220
	mov	rdi, qword ptr [rsp + 0x18]
	mov	rcx, qword ptr [rdi + 0x70]
	mov	qword ptr [rax], rcx
	mov	qword ptr [rdi + 0x70], rax
	mov	dword ptr [rdi + 0x80], 0
	xor	ecx, ecx
	mov	rbx, qword ptr [rsp + 0x20]
	mov	r8, qword ptr [rsp + 0x10]
	mov	r10, qword ptr [rsp + 8]
	jmp	.label_1207
.label_1321:
	mov	dword ptr [r12], 6
	jmp	.label_866
.label_1344:
	mov	edi, 0x3c8
	call	malloc
	test	rax, rax
	je	.label_1220
	mov	rdi, qword ptr [rsp + 0x18]
	mov	rcx, qword ptr [rdi + 0x70]
	mov	qword ptr [rax], rcx
	mov	qword ptr [rdi + 0x70], rax
	mov	dword ptr [rdi + 0x80], 0
	xor	ecx, ecx
	mov	rbx, qword ptr [rsp + 0x20]
	mov	r8, qword ptr [rsp + 0x10]
	mov	r10, qword ptr [rsp + 8]
	jmp	.label_1274
.label_917:
	mov	rdi, r14
	call	free
	mov	rdi, r15
	call	free
	jmp	.label_1220
.label_1328:
	mov	edi, 0x3c8
	call	malloc
	test	rax, rax
	je	.label_1220
	mov	rdi, qword ptr [rsp + 0x18]
	mov	rcx, qword ptr [rdi + 0x70]
	mov	qword ptr [rax], rcx
	mov	qword ptr [rdi + 0x70], rax
	mov	dword ptr [rdi + 0x80], 0
	xor	ecx, ecx
	mov	rbx, qword ptr [rsp + 0x20]
	mov	r8, qword ptr [rsp + 0x10]
	mov	r10, qword ptr [rsp + 8]
	jmp	.label_1300
.label_1170:
	mov	edi, 0x3c8
	call	malloc
	test	rax, rax
	je	.label_903
	mov	r9, qword ptr [rsp + 0x18]
	mov	rcx, qword ptr [r9 + 0x70]
	mov	qword ptr [rax], rcx
	mov	qword ptr [r9 + 0x70], rax
	mov	dword ptr [r9 + 0x80], 0
	xor	ecx, ecx
	mov	rbx, qword ptr [rsp + 0x20]
	mov	r10, qword ptr [rsp + 8]
	jmp	.label_1307
.label_1185:
	mov	edi, 0x3c8
	call	malloc
	mov	rbp, rax
	test	rbp, rbp
	je	.label_903
	mov	r9, qword ptr [rsp + 0x18]
	mov	rax, qword ptr [r9 + 0x70]
	mov	qword ptr [rbp], rax
	mov	qword ptr [r9 + 0x70], rbp
	mov	dword ptr [r9 + 0x80], 0
	xor	eax, eax
	mov	r8, qword ptr [rsp + 0x10]
	mov	r10, qword ptr [rsp + 8]
	jmp	.label_1319
.label_1187:
	mov	edi, 0x3c8
	call	malloc
	test	rax, rax
	je	.label_903
	mov	r9, qword ptr [rsp + 0x18]
	mov	rcx, qword ptr [r9 + 0x70]
	mov	qword ptr [rax], rcx
	mov	qword ptr [r9 + 0x70], rax
	mov	dword ptr [r9 + 0x80], 0
	xor	ecx, ecx
	mov	r8, qword ptr [rsp + 0x10]
	mov	r10, qword ptr [rsp + 8]
	jmp	.label_1332
.label_1126:
	mov	dword ptr [r12], 3
	jmp	.label_900
.label_1378:
	mov	rbp, rdi
	mov	edi, 0x3c8
	call	malloc
	test	rax, rax
	je	.label_1220
	mov	rsi, qword ptr [rsp + 0x18]
	mov	rcx, qword ptr [rsi + 0x70]
	mov	qword ptr [rax], rcx
	mov	qword ptr [rsi + 0x70], rax
	mov	dword ptr [rsi + 0x80], 0
	xor	ecx, ecx
	mov	rbx, qword ptr [rsp + 0x20]
	mov	r8, qword ptr [rsp + 0x10]
	mov	r10, qword ptr [rsp + 8]
	mov	rdi, rbp
	jmp	.label_1342
.label_1200:
	mov	edi, 0x3c8
	call	malloc
	mov	rdi, qword ptr [rsp + 0x18]
	mov	r10, qword ptr [rsp + 8]
	mov	r8, qword ptr [rsp + 0x10]
	xor	ebp, ebp
	test	rax, rax
	je	.label_1352
	mov	rcx, qword ptr [rdi + 0x70]
	mov	qword ptr [rax], rcx
	mov	qword ptr [rdi + 0x70], rax
	mov	dword ptr [r15], 0
	jmp	.label_1355
.label_1206:
	mov	edi, 0x3c8
	call	malloc
	mov	r10, qword ptr [rsp + 8]
	mov	r8, qword ptr [rsp + 0x10]
	test	rax, rax
	je	.label_1220
	mov	rdx, qword ptr [rsp + 0x18]
	mov	rcx, qword ptr [rdx + 0x70]
	mov	qword ptr [rax], rcx
	mov	qword ptr [rdx + 0x70], rax
	mov	dword ptr [r15], 0
	xor	ecx, ecx
	jmp	.label_1358
.label_1081:
	mov	dword ptr [r12], 7
	jmp	.label_900
.label_1345:
	call	__ctype_b_loc
	mov	rdi, qword ptr [rsp + 0x18]
	mov	r10, qword ptr [rsp + 8]
	mov	r8, qword ptr [rsp + 0x10]
	mov	r9, qword ptr [rax]
	inc	r14
.label_1380:
	mov	rsi, r14
	xor	eax, eax
.label_1377:
	test	byte ptr [r9 + rsi*2 - 2], 8
	je	.label_1367
	mov	edx, 1
	mov	ecx, eax
	shl	rdx, cl
	or	qword ptr [rdi + rbp*8 + 0xb8], rdx
.label_1367:
	cmp	esi, 0x5f
	je	.label_1370
	movzx	ecx, word ptr [r9 + rsi*2]
	and	ecx, 8
	test	cx, cx
	je	.label_1371
.label_1370:
	lea	ecx, [rax + 1]
	mov	edx, 1
	shl	rdx, cl
	or	qword ptr [rdi + rbp*8 + 0xb8], rdx
.label_1371:
	add	rax, 2
	add	rsi, 2
	cmp	rax, 0x40
	jne	.label_1377
	inc	rbp
	add	r14, 0x40
	cmp	ebp, 4
	jne	.label_1380
	jmp	.label_1261
.label_865:
	mov	edi, 0x3c8
	call	malloc
	mov	ecx, 9
	xor	r14d, r14d
	test	rax, rax
	je	.label_1384
	mov	rdi, qword ptr [rsp + 0x18]
	mov	rcx, qword ptr [rdi + 0x70]
	mov	qword ptr [rax], rcx
	mov	qword ptr [rdi + 0x70], rax
	mov	dword ptr [rdi + 0x80], 0
	mov	rbx, qword ptr [rsp + 0x20]
	mov	r8, qword ptr [rsp + 0x10]
	mov	r10, qword ptr [rsp + 8]
	jmp	.label_1388
.label_1189:
	mov	edi, 0x3c8
	call	malloc
	mov	ecx, 0xa
	xor	r14d, r14d
	test	rax, rax
	je	.label_1384
	mov	rdi, qword ptr [rsp + 0x18]
	mov	rcx, qword ptr [rdi + 0x70]
	mov	qword ptr [rax], rcx
	mov	qword ptr [rdi + 0x70], rax
	mov	dword ptr [rdi + 0x80], 0
	mov	rbx, qword ptr [rsp + 0x20]
	mov	r8, qword ptr [rsp + 0x10]
	mov	r10, qword ptr [rsp + 8]
	jmp	.label_1399
.label_1224:
	mov	edi, 0x3c8
	call	malloc
	test	rax, rax
	je	.label_1220
	mov	rdi, qword ptr [rsp + 0x18]
	mov	rcx, qword ptr [rdi + 0x70]
	mov	qword ptr [rax], rcx
	mov	qword ptr [rdi + 0x70], rax
	mov	dword ptr [rdi + 0x80], 0
	xor	ecx, ecx
	mov	rbx, qword ptr [rsp + 0x20]
	mov	r8, qword ptr [rsp + 0x10]
	mov	r10, qword ptr [rsp + 8]
	jmp	.label_1406
.label_1220:
	mov	dword ptr [r12], 0xc
	jmp	.label_866
.label_1086:
	mov	dword ptr [r12], 7
	jmp	.label_870
.label_1384:
	mov	rbx, qword ptr [rsp + 0x20]
	mov	r8, qword ptr [rsp + 0x10]
	mov	r10, qword ptr [rsp + 8]
	mov	rdi, qword ptr [rsp + 0x18]
	jmp	.label_872
.label_1369:
	mov	rax, rdi
	test	rdi, rdi
	je	.label_877
	mov	r14d, 0x400ff
	mov	rcx, rax
.label_882:
	mov	rbp, rcx
	mov	rcx, qword ptr [rbp + 8]
	test	rcx, rcx
	jne	.label_882
	mov	rcx, qword ptr [rbp + 0x10]
	test	rcx, rcx
	jne	.label_882
.label_896:
	mov	eax, dword ptr [rbp + 0x30]
	and	eax, r14d
	cmp	eax, 3
	je	.label_886
	cmp	eax, 6
	jne	.label_888
	mov	rbx, qword ptr [rbp + 0x28]
	mov	rdi, qword ptr [rbx]
	call	free
	mov	rdi, qword ptr [rbx + 8]
	call	free
	mov	rdi, qword ptr [rbx + 0x10]
	call	free
	mov	rdi, qword ptr [rbx + 0x18]
	call	free
	mov	rdi, rbx
	jmp	.label_1034
.label_886:
	mov	rdi, qword ptr [rbp + 0x28]
.label_1034:
	call	free
.label_888:
	mov	rax, qword ptr [rbp]
	test	rax, rax
	je	.label_877
	mov	rcx, qword ptr [rax + 0x10]
	cmp	rcx, rbp
	mov	rbp, rax
	je	.label_896
	test	rcx, rcx
	mov	rbp, rax
	je	.label_896
	jmp	.label_882
.label_877:
	mov	dword ptr [r12], 8
	jmp	.label_866
.label_1092:
	mov	r12, qword ptr [rsp + 0x48]
	mov	dword ptr [r12], eax
	jmp	.label_870
.label_991:
	mov	dword ptr [r12], 3
	jmp	.label_900
.label_1161:
	mov	edi, 0x3c8
	call	malloc
	test	rax, rax
	je	.label_903
	mov	rsi, qword ptr [rsp + 0x18]
	mov	rcx, qword ptr [rsi + 0x70]
	mov	qword ptr [rax], rcx
	mov	qword ptr [rsi + 0x70], rax
	mov	dword ptr [rsi + 0x80], 0
	xor	ecx, ecx
	mov	rbx, qword ptr [rsp + 0x20]
	jmp	.label_1128
.label_903:
	mov	dword ptr [r12], 0xc
	mov	rbx, qword ptr [rsp + 0x20]
	jmp	.label_870
.label_1120:
	mov	edi, OFFSET FLAT:label_1149
	mov	esi, OFFSET FLAT:label_87
	mov	edx, 0xced
	mov	ecx, OFFSET FLAT:label_1150
	call	__assert_fail
.label_1055:
	call	free
	mov	rdi, rbp
	call	free
	mov	ecx, 0xc
	mov	rbx, qword ptr [rsp + 0x20]
.label_1014:
	mov	r12, qword ptr [rsp + 0x48]
	mov	dword ptr [r12], ecx
.label_870:
	mov	r15, qword ptr [rsp + 0x30]
.label_900:
	mov	rdi, r14
	call	free
	mov	rdi, qword ptr [r15]
	call	free
	mov	rdi, qword ptr [r15 + 8]
	call	free
	mov	rdi, qword ptr [r15 + 0x10]
	call	free
	mov	rdi, qword ptr [r15 + 0x18]
	call	free
	mov	rdi, r15
	call	free
	xor	ebp, ebp
	cmp	dword ptr [r12], 0
	mov	r15d, 0
	jmp	.label_933
	sub	rsp, 0x78
	mov	rax, rdx
	xorps	xmm0, xmm0
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp + 0x30], 0
	cmp	esi, 0xa
	je	.label_937
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
.label_937:
	call	abort
	nop	dword ptr [rax]
.label_967:
	mov	rcx, qword ptr [r15]
	mov	rdx, qword ptr [r15 + 8]
.label_1397:
	test	byte ptr [r13 + 0x38], 0x10
	jne	.label_956
	sub	rsp, 8
	mov	rdi, r13
	mov	rsi, r12
	mov	r8, rdx
	mov	r9, rdx
	push	rbx
	push	r15
	push	r14
	call	re_search_internal
	add	rsp, 0x20
	jmp	.label_959
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	mov	ebx, r8d
	mov	r15, rcx
	mov	r14, rdx
	mov	r12, rsi
	mov	r13, rdi
	mov	eax, 2
	cmp	ebx, 7
	ja	.label_960
	test	bl, 4
	jne	.label_967
	mov	rdi, r12
	call	strlen
	mov	rdx, rax
	xor	ecx, ecx
	jmp	.label_1397
.label_956:
	sub	rsp, 8
	mov	rdi, r13
	mov	rsi, r12
	mov	r8, rdx
	mov	r9, rdx
	push	rbx
	push	0
	push	0
	call	re_search_internal
	add	rsp, 0x20
.label_959:
	mov	ecx, eax
	xor	eax, eax
	test	ecx, ecx
	setne	al
.label_960:
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40d2e0

	.globl locale_charset
	.type locale_charset, @function
locale_charset:
	push	rax
	mov	edi, 0xe
	call	rpl_nl_langinfo
	test	rax, rax
	mov	ecx, OFFSET FLAT:label_547
	cmovne	rcx, rax
	cmp	byte ptr [rcx], 0
	mov	eax, OFFSET FLAT:label_1481
	cmovne	rax, rcx
	pop	rcx
	ret	
	nop	word ptr cs:[rax + rax]
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
	je	.label_1016
	mov	qword ptr [rax], rbx
.label_1016:
	mov	rax, r14
	add	rsp, 0x28
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	dword ptr [rax]
.label_1031:
	test	rax, rax
	mov	ebx, 0x80
	cmovne	rbx, rax
	test	rbx, rbx
	js	.label_1027
	mov	qword ptr [rsi], rbx
.label_1038:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_1029
	test	rax, rax
	je	.label_1027
.label_1029:
	pop	rbx
	ret	
.label_1027:
	call	xalloc_die
	push	rbx
	mov	rax, qword ptr [rsi]
	test	rdi, rdi
	je	.label_1031
	movabs	rcx, 0x5555555555555554
	cmp	rax, rcx
	jae	.label_1184
	mov	rbx, rax
	shr	rbx, 1
	add	rbx, rax
	inc	rbx
	mov	qword ptr [rsi], rbx
	jne	.label_1038
	call	free
	xor	eax, eax
	jmp	.label_1029
.label_1184:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40d470

	.globl get_subexp_sub
	.type get_subexp_sub, @function
get_subexp_sub:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x28
	mov	r14, r8
	mov	rbx, rcx
	mov	r12, rdx
	mov	r15, rsi
	mov	r13, rdi
	lea	rsi, [r12 + 0x10]
	mov	rdx, qword ptr [r12]
	mov	rcx, qword ptr [r12 + 8]
	mov	dword ptr [rsp], 8
	mov	r8, rbx
	mov	r9, r14
	call	check_arrival
	mov	ebp, eax
	test	ebp, ebp
	jne	.label_1482
	mov	qword ptr [rsp + 0x20], r15
	mov	rsi, qword ptr [r15]
	mov	rdi, qword ptr [r12 + 8]
	mov	r15, qword ptr [r13 + 0xc8]
	mov	rax, qword ptr [r13 + 0xd0]
	cmp	r15, rax
	jl	.label_1490
	mov	qword ptr [rsp + 0x10], rsi
	mov	qword ptr [rsp + 0x18], rdi
	mov	rdi, qword ptr [r13 + 0xd8]
	shl	rax, 4
	lea	rsi, [rax + rax*4]
	call	realloc
	test	rax, rax
	je	.label_1488
	mov	qword ptr [r13 + 0xd8], rax
	mov	r15, qword ptr [r13 + 0xc8]
	mov	rbp, qword ptr [r13 + 0xd0]
	lea	rcx, [r15 + r15*4]
	lea	rdi, [rax + rcx*8]
	lea	rax, [rbp*8]
	lea	rdx, [rax + rax*4]
	xor	esi, esi
	call	memset
	add	rbp, rbp
	mov	qword ptr [r13 + 0xd0], rbp
	mov	rdi, qword ptr [rsp + 0x18]
	mov	rsi, qword ptr [rsp + 0x10]
.label_1490:
	test	r15, r15
	jle	.label_1483
	lea	rcx, [r15 - 1]
	mov	rax, qword ptr [r13 + 0xd8]
	lea	rcx, [rcx + rcx*4]
	cmp	qword ptr [rax + rcx*8 + 8], r14
	jne	.label_1484
	mov	byte ptr [rax + rcx*8 + 0x20], 1
	jmp	.label_1484
.label_1483:
	mov	rax, qword ptr [r13 + 0xd8]
.label_1484:
	lea	rcx, [r15 + r15*4]
	mov	qword ptr [rax + rcx*8], rbx
	mov	qword ptr [rax + rcx*8 + 8], r14
	mov	qword ptr [rax + rcx*8 + 0x10], rsi
	mov	qword ptr [rax + rcx*8 + 0x18], rdi
	xor	edx, edx
	sub	rdi, rsi
	mov	si, 0xffff
	cmovne	si, dx
	mov	word ptr [rax + rcx*8 + 0x22], si
	inc	r15
	mov	qword ptr [r13 + 0xc8], r15
	mov	byte ptr [rax + rcx*8 + 0x20], 0
	movsxd	rax, dword ptr [r13 + 0xe0]
	cmp	rax, rdi
	jge	.label_1487
	mov	dword ptr [r13 + 0xe0], edi
.label_1487:
	add	r14, qword ptr [r12 + 8]
	mov	rax, qword ptr [rsp + 0x20]
	sub	r14, qword ptr [rax]
	mov	rax, qword ptr [r13 + 0x40]
	mov	r15, qword ptr [r13 + 0xc0]
	cmp	rax, r14
	jg	.label_1489
	cmp	rax, qword ptr [r13 + 0x58]
	jl	.label_1485
.label_1489:
	mov	rax, qword ptr [r13 + 0x30]
	cmp	rax, r14
	jg	.label_1486
	cmp	rax, qword ptr [r13 + 0x58]
	jge	.label_1486
.label_1485:
	lea	esi, [r14 + 1]
	mov	rdi, r13
	call	extend_buffers
	mov	ebp, eax
	test	ebp, ebp
	jne	.label_1482
.label_1486:
	xor	ebp, ebp
	mov	rdx, r14
	sub	rdx, r15
	jle	.label_1482
	mov	rax, qword ptr [r13 + 0xb8]
	lea	rdi, [rax + r15*8 + 8]
	shl	rdx, 3
	xor	ebp, ebp
	xor	esi, esi
	call	memset
	mov	qword ptr [r13 + 0xc0], r14
.label_1482:
	mov	eax, ebp
	add	rsp, 0x28
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_1488:
	mov	rdi, qword ptr [r13 + 0xd8]
	call	free
	mov	ebp, 0xc
	jmp	.label_1482
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40d650

	.globl extend_buffers
	.type extend_buffers, @function
extend_buffers:
	push	rbp
	push	r15
	push	r14
	push	rbx
	push	rax
	mov	r15, rdi
	mov	rbp, qword ptr [r15 + 0x40]
	mov	r14d, 0xc
	movabs	rax, 0xffffffffffffffe
	cmp	rbp, rax
	ja	.label_1495
	movsxd	rax, esi
	mov	rcx, qword ptr [r15 + 0x58]
	add	rbp, rbp
	cmp	rcx, rbp
	cmovle	rbp, rcx
	cmp	rax, rbp
	cmovge	rbp, rax
	cmp	dword ptr [r15 + 0x90], 2
	jl	.label_1501
	mov	rax, rbp
	shr	rax, 0x3d
	jne	.label_1495
	mov	rdi, qword ptr [r15 + 0x10]
	lea	rsi, [rbp*4]
	call	realloc
	test	rax, rax
	je	.label_1495
	mov	qword ptr [r15 + 0x10], rax
	mov	rdi, qword ptr [r15 + 0x18]
	test	rdi, rdi
	je	.label_1501
	lea	rsi, [rbp*8]
	call	realloc
	test	rax, rax
	je	.label_1495
	mov	qword ptr [r15 + 0x18], rax
.label_1501:
	cmp	byte ptr [r15 + 0x8b], 0
	je	.label_1505
	mov	rdi, qword ptr [r15 + 8]
	mov	rsi, rbp
	call	realloc
	test	rax, rax
	je	.label_1495
	mov	qword ptr [r15 + 8], rax
.label_1505:
	mov	qword ptr [r15 + 0x40], rbp
	mov	rdi, qword ptr [r15 + 0xb8]
	test	rdi, rdi
	je	.label_1492
	lea	rsi, [rbp*8 + 8]
	call	realloc
	test	rax, rax
	je	.label_1495
	mov	qword ptr [r15 + 0xb8], rax
.label_1492:
	cmp	byte ptr [r15 + 0x88], 0
	mov	eax, dword ptr [r15 + 0x90]
	je	.label_1498
	cmp	eax, 2
	jl	.label_1502
	mov	rdi, r15
	call	build_wcs_upper_buffer
	mov	r14d, eax
	test	r14d, r14d
	je	.label_1491
	jmp	.label_1495
.label_1498:
	cmp	eax, 2
	jl	.label_1504
	mov	rdi, r15
	call	build_wcs_buffer
	jmp	.label_1491
.label_1502:
	mov	rbp, qword ptr [r15 + 0x30]
	mov	r14, qword ptr [r15 + 0x40]
	mov	rax, qword ptr [r15 + 0x58]
	cmp	r14, rax
	cmovg	r14, rax
	cmp	rbp, r14
	jl	.label_1503
	jmp	.label_1494
.label_1504:
	mov	rdx, qword ptr [r15 + 0x78]
	test	rdx, rdx
	je	.label_1491
	mov	rax, qword ptr [r15 + 0x30]
	mov	rcx, qword ptr [r15 + 0x40]
	mov	rsi, qword ptr [r15 + 0x58]
	cmp	rcx, rsi
	cmovg	rcx, rsi
	cmp	rax, rcx
	jge	.label_1497
	mov	rsi, qword ptr [r15 + 0x28]
	add	rsi, rax
	mov	rdi, qword ptr [r15]
	mov	rbp, qword ptr [r15 + 8]
	movzx	esi, byte ptr [rdi + rsi]
	mov	dl, byte ptr [rdx + rsi]
	mov	byte ptr [rbp + rax], dl
	jmp	.label_1500
	nop	dword ptr [rax]
.label_1506:
	mov	rdx, qword ptr [r15 + 0x78]
	mov	rsi, qword ptr [r15]
	mov	rdi, qword ptr [r15 + 8]
	add	rsi, qword ptr [r15 + 0x28]
	movzx	esi, byte ptr [rax + rsi]
	movzx	edx, byte ptr [rdx + rsi]
	mov	byte ptr [rdi + rax], dl
.label_1500:
	inc	rax
	cmp	rax, rcx
	jl	.label_1506
	mov	rax, rcx
.label_1497:
	mov	qword ptr [r15 + 0x30], rax
	mov	qword ptr [r15 + 0x38], rax
	jmp	.label_1491
.label_1496:
	movzx	ecx, byte ptr [rax + rdx]
	jmp	.label_1493
	nop	word ptr cs:[rax + rax]
.label_1503:
	mov	rcx, qword ptr [r15]
	mov	rax, qword ptr [r15 + 0x78]
	add	rcx, qword ptr [r15 + 0x28]
	movzx	ecx, byte ptr [rbp + rcx]
	movzx	edx, cl
	test	rax, rax
	jne	.label_1496
.label_1493:
	movzx	ebx, cl
	mov	eax, ebx
	sub	eax, -0x80
	cmp	eax, 0x17f
	ja	.label_1499
	call	__ctype_toupper_loc
	mov	rax, qword ptr [rax]
	mov	ebx, dword ptr [rax + rbx*4]
.label_1499:
	mov	rax, qword ptr [r15 + 8]
	mov	byte ptr [rax + rbp], bl
	inc	rbp
	cmp	rbp, r14
	jl	.label_1503
	mov	rbp, r14
.label_1494:
	mov	qword ptr [r15 + 0x30], rbp
	mov	qword ptr [r15 + 0x38], rbp
.label_1491:
	xor	r14d, r14d
.label_1495:
	mov	eax, r14d
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x40d880

	.globl build_wcs_buffer
	.type build_wcs_buffer, @function
build_wcs_buffer:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x58
	mov	r13, rdi
	mov	rbx, qword ptr [r13 + 0x30]
	mov	r12, qword ptr [r13 + 0x40]
	mov	rax, qword ptr [r13 + 0x58]
	cmp	r12, rax
	cmovg	r12, rax
	cmp	r12, rbx
	jle	.label_1507
	lea	r14, [r13 + 0x20]
	lea	r15, [rsp + 0xc]
	jmp	.label_1515
	nop	dword ptr [rax + rax]
.label_1512:
	mov	rax, qword ptr [r13 + 0x28]
	add	rax, rbx
	mov	rcx, qword ptr [r13]
	movzx	ecx, byte ptr [rcx + rax]
	mov	dword ptr [rsp + 0xc], ecx
	mov	rax, qword ptr [r13 + 0x78]
	test	rax, rax
	jne	.label_1508
.label_1511:
	mov	qword ptr [r14], rbp
	mov	eax, 1
.label_1514:
	mov	rdx, qword ptr [r13 + 0x10]
	mov	dword ptr [rdx + rbx*4], ecx
	lea	rbp, [rax + rbx]
	lea	rcx, [rbx + 1]
	cmp	rcx, rbp
	jge	.label_1517
	lea	rdi, [rdx + rbx*4 + 4]
	lea	rdx, [rax*4 - 4]
	mov	esi, 0xff
	call	memset
	mov	rcx, rbp
.label_1517:
	cmp	r12, rcx
	mov	rbx, rcx
	jg	.label_1515
	jmp	.label_1516
.label_1509:
	mov	ecx, dword ptr [rsp + 0xc]
	jmp	.label_1514
.label_1513:
	cmp	dword ptr [r13 + 0x90], 0
	lea	rsi, [rsp + 0x10]
	jle	.label_1510
	xor	eax, eax
.label_1519:
	cmp	rax, rdx
	jge	.label_1518
	mov	rcx, qword ptr [r13]
	mov	rsi, qword ptr [r13 + 0x78]
	add	rcx, qword ptr [r13 + 0x28]
	add	rcx, rbx
	movzx	ecx, byte ptr [rax + rcx]
	movzx	ecx, byte ptr [rsi + rcx]
	mov	rsi, qword ptr [r13 + 8]
	add	rsi, rbx
	mov	byte ptr [rax + rsi], cl
	mov	byte ptr [rsp + rax + 0x10], cl
	inc	rax
	movsxd	rcx, dword ptr [r13 + 0x90]
	cmp	rax, rcx
	jl	.label_1519
	lea	rsi, [rsp + 0x10]
	jmp	.label_1510
.label_1508:
	movzx	ecx, byte ptr [rax + rcx]
	mov	dword ptr [rsp + 0xc], ecx
	jmp	.label_1511
.label_1518:
	lea	rsi, [rsp + 0x10]
	jmp	.label_1510
	nop	
.label_1515:
	mov	rdx, r12
	sub	rdx, rbx
	mov	rbp, qword ptr [r13 + 0x20]
	cmp	qword ptr [r13 + 0x78], 0
	jne	.label_1513
	mov	rsi, qword ptr [r13]
	add	rsi, qword ptr [r13 + 0x28]
	add	rsi, rbx
.label_1510:
	mov	rdi, r15
	mov	rcx, r14
	call	rpl_mbrtowc
	lea	rcx, [rax + 1]
	cmp	rcx, 2
	jb	.label_1512
	cmp	rax, -2
	jne	.label_1509
	mov	rax, qword ptr [r13 + 0x40]
	cmp	rax, qword ptr [r13 + 0x58]
	jge	.label_1512
	mov	qword ptr [r14], rbp
.label_1507:
	mov	rcx, rbx
.label_1516:
	mov	qword ptr [r13 + 0x30], rcx
	mov	qword ptr [r13 + 0x38], rcx
	add	rsp, 0x58
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40da00

	.globl re_acquire_state
	.type re_acquire_state, @function
re_acquire_state:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x18
	mov	r12, rdx
	mov	r14, rdi
	mov	r8, qword ptr [r12 + 8]
	test	r8, r8
	je	.label_1520
	mov	r15, r8
	jle	.label_1528
	mov	rcx, qword ptr [r12 + 0x10]
	xor	eax, eax
	cmp	r8, 4
	mov	r15, r8
	jb	.label_1532
	xor	eax, eax
	mov	rdx, r8
	and	rdx, 0xfffffffffffffffc
	mov	r15, r8
	je	.label_1532
	movq	xmm0, r8
	lea	rbp, [rdx - 4]
	mov	rbx, rbp
	shr	rbx, 2
	lea	eax, [rbx + 1]
	and	eax, 3
	xor	edi, edi
	cmp	rbp, 0xc
	jae	.label_1539
	pxor	xmm1, xmm1
	jmp	.label_1546
.label_1539:
	lea	rbp, [rax - 1]
	sub	rbp, rbx
	pxor	xmm1, xmm1
	xor	edi, edi
	nop	word ptr cs:[rax + rax]
.label_1542:
	movdqu	xmm2, xmmword ptr [rcx + rdi*8]
	movdqu	xmm3, xmmword ptr [rcx + rdi*8 + 0x10]
	paddq	xmm2, xmm0
	paddq	xmm3, xmm1
	movdqu	xmm0, xmmword ptr [rcx + rdi*8 + 0x20]
	movdqu	xmm1, xmmword ptr [rcx + rdi*8 + 0x30]
	movdqu	xmm4, xmmword ptr [rcx + rdi*8 + 0x40]
	movdqu	xmm5, xmmword ptr [rcx + rdi*8 + 0x50]
	paddq	xmm4, xmm0
	paddq	xmm4, xmm2
	paddq	xmm5, xmm1
	paddq	xmm5, xmm3
	movdqu	xmm0, xmmword ptr [rcx + rdi*8 + 0x60]
	movdqu	xmm1, xmmword ptr [rcx + rdi*8 + 0x70]
	paddq	xmm0, xmm4
	paddq	xmm1, xmm5
	add	rdi, 0x10
	add	rbp, 4
	jne	.label_1542
.label_1546:
	test	rax, rax
	je	.label_1548
	lea	rdi, [rcx + rdi*8 + 0x10]
	neg	rax
	nop	word ptr cs:[rax + rax]
.label_1526:
	movdqu	xmm2, xmmword ptr [rdi - 0x10]
	movdqu	xmm3, xmmword ptr [rdi]
	paddq	xmm0, xmm2
	paddq	xmm1, xmm3
	add	rdi, 0x20
	inc	rax
	jne	.label_1526
.label_1548:
	paddq	xmm0, xmm1
	pshufd	xmm1, xmm0, 0x4e
	paddq	xmm1, xmm0
	movq	r15, xmm1
	cmp	r8, rdx
	mov	rax, rdx
	je	.label_1528
.label_1532:
	mov	rdx, r8
	sub	rdx, rax
	lea	rcx, [rcx + rax*8]
	nop	
.label_1534:
	add	r15, qword ptr [rcx]
	add	rcx, 8
	dec	rdx
	jne	.label_1534
.label_1528:
	mov	rdx, qword ptr [rsi + 0x40]
	mov	rcx, qword ptr [rsi + 0x88]
	and	rcx, r15
	lea	rax, [rcx + rcx*2]
	mov	rcx, qword ptr [rdx + rax*8]
	test	rcx, rcx
	jle	.label_1537
	test	r12, r12
	je	.label_1545
	mov	rdx, qword ptr [rdx + rax*8 + 0x10]
	xor	ebx, ebx
	nop	word ptr [rax + rax]
.label_1538:
	mov	r13, qword ptr [rdx + rbx*8]
	cmp	r15, qword ptr [r13]
	jne	.label_1521
	cmp	qword ptr [r13 + 0x10], r8
	jne	.label_1521
	mov	rdi, r8
	nop	word ptr cs:[rax + rax]
.label_1531:
	test	rdi, rdi
	jle	.label_1529
	mov	rbp, qword ptr [r13 + 0x18]
	mov	rbp, qword ptr [rbp + rdi*8 - 8]
	mov	rax, qword ptr [r12 + 0x10]
	cmp	rbp, qword ptr [rax + rdi*8 - 8]
	lea	rdi, [rdi - 1]
	je	.label_1531
	nop	word ptr cs:[rax + rax]
.label_1521:
	inc	rbx
	cmp	rbx, rcx
	jl	.label_1538
	jmp	.label_1537
.label_1545:
	lea	rdx, [rcx - 1]
	mov	eax, ecx
	and	eax, 7
	cmp	rdx, 7
	jb	.label_1540
	mov	rdx, rax
	sub	rdx, rcx
	nop	
.label_1547:
	add	rdx, 8
	jne	.label_1547
.label_1540:
	test	rax, rax
	je	.label_1537
	neg	rax
	nop	
.label_1543:
	inc	rax
	jne	.label_1543
.label_1537:
	mov	qword ptr [rsp + 8], rsi
	mov	edi, 0x70
	mov	esi, 1
	call	rpl_calloc
	mov	r13, rax
	test	r13, r13
	je	.label_1527
	mov	rbx, r13
	add	rbx, 8
	mov	rdi, qword ptr [r12 + 8]
	mov	qword ptr [r13 + 0x10], rdi
	mov	rbp, qword ptr [r12 + 8]
	test	rbp, rbp
	mov	qword ptr [rsp + 0x10], r14
	jle	.label_1530
	mov	qword ptr [r13 + 8], rdi
	shl	rdi, 3
	call	malloc
	mov	qword ptr [r13 + 0x18], rax
	test	rax, rax
	je	.label_1544
	lea	r14, [r12 + 0x10]
	mov	rsi, qword ptr [r12 + 0x10]
	shl	rbp, 3
	mov	rdi, rax
	mov	rdx, rbp
	call	memcpy
	mov	qword ptr [r13 + 0x50], rbx
	mov	rdi, qword ptr [rsp + 8]
	jmp	.label_1541
.label_1530:
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [rbx], xmm0
	mov	qword ptr [rbx + 0x10], 0
	cmp	qword ptr [r12 + 8], 0
	mov	qword ptr [r13 + 0x50], rbx
	mov	rdi, qword ptr [rsp + 8]
	jle	.label_1522
	lea	r14, [r12 + 0x10]
.label_1541:
	xor	eax, eax
	nop	
.label_1535:
	mov	r8, qword ptr [rdi]
	mov	rdx, qword ptr [r14]
	mov	rsi, qword ptr [rdx + rax*8]
	shl	rsi, 4
	mov	ecx, dword ptr [r8 + rsi + 8]
	mov	edx, ecx
	and	edx, 0x3ffff
	cmp	edx, 1
	je	.label_1525
	mov	ebp, ecx
	shr	ebp, 0x14
	movzx	ebx, byte ptr [r13 + 0x68]
	mov	edx, ebx
	shr	dl, 5
	movzx	edx, dl
	or	edx, ebp
	shl	dl, 5
	and	dl, 0x20
	and	bl, 0xdf
	or	bl, dl
	mov	byte ptr [r13 + 0x68], bl
	cmp	cl, 0xc
	je	.label_1523
	cmp	cl, 4
	je	.label_1549
	cmp	cl, 2
	jne	.label_1550
	or	bl, 0x10
	jmp	.label_1524
.label_1549:
	or	bl, 0x40
	jmp	.label_1524
.label_1550:
	lea	rcx, [r8 + rsi + 8]
	test	dword ptr [rcx], 0x3ff00
	je	.label_1525
.label_1523:
	or	bl, 0x80
.label_1524:
	mov	byte ptr [r13 + 0x68], bl
.label_1525:
	inc	rax
	cmp	rax, qword ptr [r12 + 8]
	jl	.label_1535
.label_1522:
	mov	rsi, r13
	mov	rdx, r15
	call	register_state
	test	eax, eax
	jne	.label_1533
.label_1529:
	mov	rax, r13
	add	rsp, 0x18
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_1520:
	mov	dword ptr [r14], 0
	jmp	.label_1536
.label_1533:
	mov	rdi, r13
	call	free_state
	mov	r14, qword ptr [rsp + 0x10]
	jmp	.label_1527
.label_1544:
	mov	rdi, r13
	call	free
.label_1527:
	mov	dword ptr [r14], 0xc
.label_1536:
	xor	r13d, r13d
	jmp	.label_1529
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40dd80

	.globl re_node_set_init_union
	.type re_node_set_init_union, @function
re_node_set_init_union:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	rbx, rdx
	mov	r12, rsi
	mov	rbp, rdi
	test	r12, r12
	je	.label_1551
	mov	r13, qword ptr [r12 + 8]
	test	rbx, rbx
	je	.label_1559
	test	r13, r13
	jle	.label_1559
	mov	rdi, qword ptr [rbx + 8]
	test	rdi, rdi
	jle	.label_1559
	add	rdi, r13
	mov	qword ptr [rbp], rdi
	shl	rdi, 3
	call	malloc
	mov	qword ptr [rsp], rbp
	mov	qword ptr [rbp + 0x10], rax
	test	rax, rax
	mov	ecx, 0xc
	je	.label_1556
	xor	edi, edi
	xor	esi, esi
	xor	ebp, ebp
.label_1562:
	mov	r15, rdi
	mov	r14, rsi
	nop	word ptr cs:[rax + rax]
.label_1558:
	cmp	r14, qword ptr [rbx + 8]
	jge	.label_1561
	mov	rcx, qword ptr [r12 + 0x10]
	mov	rdx, qword ptr [rcx + rbp*8]
	mov	rcx, qword ptr [rbx + 0x10]
	mov	rcx, qword ptr [rcx + r14*8]
	cmp	rdx, rcx
	jle	.label_1553
	inc	r14
	mov	qword ptr [rax + r15*8], rcx
	inc	r15
	mov	r13, qword ptr [r12 + 8]
	cmp	rbp, r13
	jl	.label_1558
	jmp	.label_1561
.label_1553:
	mov	rdi, rbx
	sete	bl
	movzx	esi, bl
	mov	rbx, rdi
	add	rsi, r14
	inc	rbp
	lea	rdi, [r15 + 1]
	mov	qword ptr [rax + r15*8], rdx
	mov	r13, qword ptr [r12 + 8]
	cmp	rbp, r13
	jl	.label_1562
	xor	esi, esi
	cmp	rdx, rcx
	sete	sil
	inc	r15
	add	r14, rsi
.label_1561:
	sub	r13, rbp
	jle	.label_1560
	lea	rdi, [rax + r15*8]
	mov	rax, qword ptr [r12 + 0x10]
	lea	rsi, [rax + rbp*8]
	shl	r13, 3
	mov	rdx, r13
	call	memcpy
	sub	r15, rbp
	add	r15, qword ptr [r12 + 8]
	jmp	.label_1555
.label_1559:
	test	r13, r13
	jle	.label_1551
	mov	qword ptr [rbp + 8], r13
	mov	r15, qword ptr [r12 + 8]
	test	r15, r15
	jle	.label_1552
	mov	qword ptr [rbp], r13
	shl	r13, 3
	mov	rdi, r13
	call	malloc
	mov	qword ptr [rbp + 0x10], rax
	test	rax, rax
	je	.label_1554
	mov	rsi, qword ptr [r12 + 0x10]
	shl	r15, 3
	mov	rdi, rax
	mov	rdx, r15
	call	memcpy
	jmp	.label_1557
.label_1551:
	test	rbx, rbx
	je	.label_1552
	mov	rdi, qword ptr [rbx + 8]
	test	rdi, rdi
	jle	.label_1552
	mov	qword ptr [rbp + 8], rdi
	mov	r14, rbx
	mov	rbx, qword ptr [rbx + 8]
	test	rbx, rbx
	jle	.label_1552
	mov	qword ptr [rbp], rdi
	shl	rdi, 3
	call	malloc
	mov	qword ptr [rbp + 0x10], rax
	test	rax, rax
	je	.label_1554
	mov	rsi, qword ptr [r14 + 0x10]
	shl	rbx, 3
	mov	rdi, rax
	mov	rdx, rbx
	call	memcpy
	jmp	.label_1557
.label_1552:
	xorps	xmm0, xmm0
	movups	xmmword ptr [rbp], xmm0
	mov	qword ptr [rbp + 0x10], 0
	jmp	.label_1557
.label_1560:
	mov	rdx, qword ptr [rbx + 8]
	sub	rdx, r14
	jle	.label_1555
	lea	rdi, [rax + r15*8]
	mov	rax, qword ptr [rbx + 0x10]
	lea	rsi, [rax + r14*8]
	shl	rdx, 3
	call	memcpy
	sub	r15, r14
	add	r15, qword ptr [rbx + 8]
.label_1555:
	mov	rax, qword ptr [rsp]
	mov	qword ptr [rax + 8], r15
.label_1557:
	xor	ecx, ecx
.label_1556:
	mov	eax, ecx
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_1554:
	xorps	xmm0, xmm0
	movups	xmmword ptr [rbp], xmm0
	mov	ecx, 0xc
	jmp	.label_1556
	nop	word ptr cs:[rax + rax]
.label_1563:
	call	xalloc_die
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x40df99

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
	je	.label_1564
	test	r15, r15
	je	.label_1563
.label_1564:
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
	#Procedure 0x40dfd0

	.globl re_search_internal
	.type re_search_internal, @function
re_search_internal:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x228
	mov	r14, r9
	mov	rbp, rcx
	mov	r11, qword ptr [rsp + 0x260]
	mov	r10, qword ptr [rdi]
	xorps	xmm0, xmm0
	movaps	xmmword ptr [rsp + 0x150], xmm0
	movaps	xmmword ptr [rsp + 0x140], xmm0
	movaps	xmmword ptr [rsp + 0x130], xmm0
	movaps	xmmword ptr [rsp + 0x120], xmm0
	movaps	xmmword ptr [rsp + 0x110], xmm0
	movaps	xmmword ptr [rsp + 0x100], xmm0
	movaps	xmmword ptr [rsp + 0xf0], xmm0
	movaps	xmmword ptr [rsp + 0xe0], xmm0
	movaps	xmmword ptr [rsp + 0xd0], xmm0
	movaps	xmmword ptr [rsp + 0xc0], xmm0
	movaps	xmmword ptr [rsp + 0xb0], xmm0
	movaps	xmmword ptr [rsp + 0xa0], xmm0
	movaps	xmmword ptr [rsp + 0x90], xmm0
	movaps	xmmword ptr [rsp + 0x80], xmm0
	movaps	xmmword ptr [rsp + 0x70], xmm0
	movaps	xmmword ptr [rsp + 0x60], xmm0
	mov	qword ptr [rsp + 0xf8], r10
	mov	rax, qword ptr [rdi + 0x20]
	xor	r13d, r13d
	test	rax, rax
	je	.label_1576
	mov	cl, byte ptr [rdi + 0x38]
	and	cl, 9
	xor	ebx, ebx
	cmp	cl, 8
	cmovne	rax, rbx
	cmp	rbp, r8
	cmove	rax, rbx
	mov	r13, rax
.label_1576:
	mov	rax, qword ptr [rdi + 0x30]
	lea	r15, [r11 - 1]
	mov	rcx, r15
	sub	rcx, rax
	xor	r12d, r12d
	cmp	rax, r11
	cmovb	r12, rcx
	mov	ebx, 1
	cmp	qword ptr [rdi + 0x10], 0
	je	.label_1218
	mov	rax, qword ptr [r10 + 0x48]
	test	rax, rax
	je	.label_1218
	mov	rcx, qword ptr [r10 + 0x50]
	test	rcx, rcx
	je	.label_1218
	mov	r9, qword ptr [r10 + 0x58]
	test	r9, r9
	je	.label_1218
	mov	qword ptr [rsp + 0x50], rsi
	mov	rsi, r14
	cmp	qword ptr [r10 + 0x60], 0
	je	.label_1218
	mov	r14, qword ptr [rdi + 0x28]
	mov	qword ptr [rsp + 0x160], r14
	cmp	qword ptr [rax + 0x10], 0
	je	.label_1580
	mov	qword ptr [rsp + 8], r8
	mov	r14, rsi
	jmp	.label_1568
.label_1580:
	cmp	qword ptr [rcx + 0x10], 0
	mov	r14, rsi
	jne	.label_1569
	cmp	qword ptr [r9 + 0x10], 0
	je	.label_1570
	cmp	byte ptr [rdi + 0x38], 0
	js	.label_1569
.label_1570:
	xor	eax, eax
	mov	qword ptr [rsp + 8], rax
	test	rbp, rbp
	je	.label_1572
	test	r8, r8
	mov	ebp, 0
	jne	.label_1218
	jmp	.label_1568
.label_1569:
	mov	qword ptr [rsp + 8], r8
.label_1568:
	mov	qword ptr [rsp + 0x48], r13
	mov	qword ptr [rsp + 0x190], r15
	mov	qword ptr [rsp + 0x188], r12
	sub	r11, r12
	mov	qword ptr [rsp + 0x38], r11
	mov	byte ptr [rsp + 3], 1
	jne	.label_1577
	cmp	qword ptr [r10 + 0x98], 0
	setne	byte ptr [rsp + 3]
.label_1577:
	mov	r15, qword ptr [r10 + 0x10]
	inc	r15
	mov	qword ptr [rsp + 0x58], rdi
	mov	rcx, qword ptr [rdi + 0x18]
	movsxd	rax, dword ptr [r10 + 0xb4]
	cmp	rax, r15
	cmovge	r15, rax
	mov	rbx, rdx
	lea	rdi, [rbx + 1]
	cmp	rdi, r15
	cmovle	r15, rdi
	mov	rdx, qword ptr [rsp + 0x50]
	mov	qword ptr [rsp + 0x60], rdx
	mov	qword ptr [rsp + 0xb8], rbx
	mov	qword ptr [rsp + 0xb0], rbx
	mov	rsi, qword ptr [rsp + 0x160]
	mov	qword ptr [rsp + 0xd8], rsi
	shr	rcx, 0x16
	and	cl, 1
	mov	byte ptr [rsp + 0xe8], cl
	test	rsi, rsi
	mov	rsi, rbx
	setne	r12b
	or	r12b, cl
	mov	byte ptr [rsp + 0xeb], r12b
	mov	dword ptr [rsp + 0xf0], eax
	mov	cl, byte ptr [r10 + 0xb0]
	mov	edx, ecx
	shr	dl, 2
	and	dl, 1
	shr	cl, 3
	and	cl, 1
	cmp	rax, 2
	mov	byte ptr [rsp + 0xe9], dl
	mov	byte ptr [rsp + 0xea], cl
	mov	qword ptr [rsp + 0xc8], rsi
	mov	qword ptr [rsp + 0x170], rsi
	mov	qword ptr [rsp + 0xc0], rsi
	mov	qword ptr [rsp + 0x28], r10
	jl	.label_1566
	movabs	rax, 0x1ffffffffffffffe
	inc	rax
	mov	ebx, 0xc
	cmp	r15, rax
	ja	.label_1019
	lea	rsi, [r15*4]
	xor	edi, edi
	call	realloc
	test	rax, rax
	je	.label_1019
	mov	qword ptr [rsp + 0x70], rax
	mov	r10, qword ptr [rsp + 0x28]
.label_1566:
	mov	al, 1
	test	r12b, r12b
	je	.label_1567
	xor	edi, edi
	mov	rsi, r15
	call	realloc
	mov	ebx, 0xc
	test	rax, rax
	je	.label_1019
	mov	qword ptr [rsp + 0x68], rax
	xor	eax, eax
	mov	r10, qword ptr [rsp + 0x28]
.label_1567:
	mov	qword ptr [rsp + 0xa0], r15
	lea	rcx, [r10 + 0xb8]
	mov	qword ptr [rsp + 0xe0], rcx
	mov	rcx, qword ptr [r10 + 0xb0]
	mov	edx, ecx
	shr	dl, 4
	and	dl, 1
	mov	byte ptr [rsp + 0xee], dl
	xor	edx, edx
	test	al, al
	je	.label_1574
	shr	rcx, 0x20
	mov	rax, qword ptr [rsp + 0x50]
	mov	qword ptr [rsp + 0x68], rax
	xor	edx, edx
	cmp	ecx, 1
	cmovle	rdx, qword ptr [rsp + 0x170]
.label_1574:
	mov	qword ptr [rsp + 0x90], rdx
	mov	qword ptr [rsp + 0x98], rdx
	mov	qword ptr [rsp + 0xc8], r14
	mov	qword ptr [rsp + 0xc0], r14
	mov	rax, qword ptr [rsp + 0x58]
	mov	al, byte ptr [rax + 0x38]
	shr	al, 7
	mov	byte ptr [rsp + 0xed], al
	mov	r14, qword ptr [r10 + 0x98]
	lea	r13, [r14 + r14]
	mov	eax, dword ptr [rsp + 0x270]
	mov	dword ptr [rsp + 0x100], eax
	mov	qword ptr [rsp + 0x108], -1
	test	r14, r14
	jle	.label_1565
	mov	ebx, 0xc
	movabs	rax, 0x666666666666666
	cmp	r13, rax
	ja	.label_1019
	shl	r14, 4
	lea	rdi, [r14 + r14*4]
	call	malloc
	mov	r12, rax
	mov	qword ptr [rsp + 0x138], r12
	mov	rdi, r14
	call	malloc
	mov	qword ptr [rsp + 0x158], rax
	test	r12, r12
	je	.label_1019
	test	rax, rax
	je	.label_1019
.label_1565:
	mov	qword ptr [rsp + 0x130], r13
	mov	dword ptr [rsp + 0x140], 1
	mov	qword ptr [rsp + 0x150], r13
	cmp	qword ptr [rsp + 0x38], 1
	ja	.label_1573
	mov	rax, qword ptr [rsp + 0x28]
	test	byte ptr [rax + 0xb0], 2
	jne	.label_1573
	mov	qword ptr [rsp + 0x118], 0
	jmp	.label_1578
.label_1573:
	mov	ebx, 0xc
	movabs	rax, 0x1ffffffffffffffe
	cmp	r15, rax
	ja	.label_1019
	lea	rdi, [r15*8 + 8]
	call	malloc
	mov	qword ptr [rsp + 0x118], rax
	test	rax, rax
	je	.label_1019
.label_1578:
	mov	qword ptr [rsp + 0x20], rbp
	mov	eax, dword ptr [rsp + 0x270]
	lea	eax, [rax + rax]
	and	eax, 2
	xor	eax, 6
	mov	dword ptr [rsp + 0xd0], eax
	mov	rdi, qword ptr [rsp + 8]
	cmp	rdi, rbp
	mov	r14, rbp
	cmovle	r14, rdi
	mov	r12, rdi
	cmovl	r12, rbp
	mov	rax, qword ptr [rsp + 0x28]
	mov	eax, dword ptr [rax + 0xb4]
	mov	dword ptr [rsp + 0x17c], eax
	mov	ecx, 8
	cmp	qword ptr [rsp + 0x48], 0
	je	.label_1571
	cmp	dword ptr [rsp + 0x17c], 1
	mov	rsi, qword ptr [rsp + 0x160]
	je	.label_1579
	mov	ecx, 0x400000
	xor	eax, eax
	test	rsi, rsi
	jne	.label_1575
	mov	rdx, qword ptr [rsp + 0x58]
	and	rcx, qword ptr [rdx + 0x18]
	jne	.label_1575
.label_1579:
	mov	eax, 4
.label_1575:
	xor	ecx, ecx
	test	rsi, rsi
	setne	cl
	xor	edx, edx
	cmp	rbp, rdi
	setle	dl
	lea	ecx, [rcx + rdx*2]
	or	ecx, eax
.label_1571:
	lea	r15, [rsp + 0x98]
	cmp	rdi, rbp
	mov	eax, 1
	mov	rdx, -1
	cmovge	rdx, rax
	mov	qword ptr [rsp + 0x1f0], rdx
	xor	edx, edx
	cmp	rbp, rdi
	setle	byte ptr [rsp + 2]
	lea	rsi, [rsp + 0x20]
	mov	eax, 0
	mov	qword ptr [rsp + 0x1e8], rax
	cmovg	rsi, rdx
	mov	qword ptr [rsp + 0x210], rsi
	add	ecx, -4
	mov	qword ptr [rsp + 0x218], rcx
	mov	qword ptr [rsp + 0x40], r12
	mov	qword ptr [rsp + 0x198], r14
	jmp	.label_1108
.label_1572:
	xor	ebp, ebp
	jmp	.label_1568
.label_1074:
	mov	rdi, r14
	call	free
	mov	rdi, r13
	call	free
	test	ebx, ebx
	mov	r12, qword ptr [rsp + 0x40]
	mov	r15, qword ptr [rsp + 0x38]
	je	.label_1037
	cmp	ebx, 1
	lea	r15, [rsp + 0x98]
	mov	r14, qword ptr [rsp + 0x198]
	je	.label_1017
	jmp	.label_1019
.label_1244:
	test	al, al
	js	.label_1069
	cmp	byte ptr [rsp + 3], 0
	mov	rdx, rbx
	mov	ecx, 1
	jne	.label_1057
	mov	rbp, rbx
	jmp	.label_1071
.label_1100:
	mov	rax, qword ptr [r14 + 0x10]
	test	rax, rax
	jle	.label_911
	mov	r15, qword ptr [rsp + 0xf8]
	xor	ebx, ebx
	jmp	.label_1075
.label_1069:
	lea	rdi, [rsp + 0x60]
	mov	rsi, r14
	mov	rdx, rbx
	call	check_halt_state_context
	cmp	rax, 1
	sbb	rdx, rdx
	xor	ecx, ecx
	test	rax, rax
	sete	al
	setne	cl
	or	al, byte ptr [rsp + 3]
	je	.label_1078
	or	rdx, rbx
	jmp	.label_1057
.label_1078:
	mov	rbp, rbx
	jmp	.label_1071
.label_1124:
	mov	r12, qword ptr [rsp + 0x168]
	jmp	.label_1082
.label_1093:
	mov	rdi, qword ptr [rsp + 0x158]
	mov	rsi, r12
	shl	rsi, 4
	call	realloc
	test	rax, rax
	je	.label_1087
	add	r12, r12
	mov	qword ptr [rsp + 0x158], rax
	mov	qword ptr [rsp + 0x150], r12
	jmp	.label_1089
.label_1075:
	mov	rcx, qword ptr [r14 + 0x18]
	mov	r13, qword ptr [rcx + rbx*8]
	mov	rcx, qword ptr [r15]
	mov	rdx, r13
	shl	rdx, 4
	cmp	byte ptr [rcx + rdx + 8], 8
	jne	.label_1090
	mov	rcx, qword ptr [rcx + rdx]
	cmp	rcx, 0x3f
	jg	.label_1090
	mov	rdx, qword ptr [r15 + 0xa0]
	bt	rdx, rcx
	jae	.label_1090
	mov	r12, qword ptr [rsp + 0x148]
	cmp	r12, qword ptr [rsp + 0x150]
	je	.label_1093
.label_1089:
	mov	edi, 1
	mov	esi, 0x30
	call	rpl_calloc
	mov	rcx, qword ptr [rsp + 0x148]
	mov	rdx, qword ptr [rsp + 0x158]
	mov	qword ptr [rdx + rcx*8], rax
	mov	rax, qword ptr [rsp + 0x158]
	mov	rax, qword ptr [rax + rcx*8]
	test	rax, rax
	je	.label_1087
	mov	qword ptr [rax + 8], r13
	inc	rcx
	mov	qword ptr [rsp + 0x148], rcx
	mov	qword ptr [rax], 0
	mov	rax, qword ptr [r14 + 0x10]
	mov	r12, qword ptr [rsp + 0x40]
.label_1090:
	inc	rbx
	cmp	rbx, rax
	jl	.label_1075
.label_911:
	mov	dword ptr [rsp + 4], 0
	test	byte ptr [r14 + 0x68], 0x40
	je	.label_1105
	lea	rsi, [r14 + 8]
	lea	rdi, [rsp + 0x60]
	call	transit_state_bkref
	mov	dword ptr [rsp + 4], eax
	test	eax, eax
	jne	.label_1109
.label_1105:
	mov	dword ptr [rsp + 8], 0
	lea	r15, [rsp + 0x98]
	jmp	.label_1111
.label_1087:
	mov	ebp, 0xc
	jmp	.label_1115
.label_1109:
	movsxd	rbp, eax
	lea	r15, [rsp + 0x98]
	jmp	.label_1071
	nop	
.label_1108:
	mov	rax, qword ptr [rsp + 0x218]
	cmp	eax, 4
	ja	.label_1118
	jmp	qword ptr [(rax * 8) + label_1227]
.label_2686:
	cmp	rbp, r14
	jl	.label_1122
	mov	rdi, qword ptr [rsp + 0x160]
	test	rdi, rdi
	je	.label_1125
	mov	rcx, qword ptr [rsp + 0x170]
	mov	rdx, qword ptr [rsp + 0x50]
	mov	rsi, qword ptr [rsp + 0x48]
	nop	word ptr cs:[rax + rax]
.label_1135:
	cmp	rbp, rcx
	mov	eax, 0
	jge	.label_1129
	movzx	eax, byte ptr [rdx + rbp]
.label_1129:
	movzx	eax, byte ptr [rdi + rax]
	cmp	byte ptr [rsi + rax], 0
	jne	.label_1122
	lea	rax, [rbp - 1]
	mov	qword ptr [rsp + 0x20], rax
	cmp	rbp, r14
	mov	rbp, rax
	jg	.label_1135
	jmp	.label_1137
.label_2688:
	cmp	rbp, r12
	jge	.label_1140
	mov	rcx, qword ptr [rsp + 0x50]
	mov	rdx, qword ptr [rsp + 0x48]
	mov	rsi, qword ptr [rsp + 0x160]
	nop	dword ptr [rax]
.label_1145:
	movzx	eax, byte ptr [rcx + rbp]
	movzx	eax, byte ptr [rsi + rax]
	cmp	byte ptr [rdx + rax], 0
	jne	.label_1140
	inc	rbp
	mov	qword ptr [rsp + 0x20], rbp
	cmp	rbp, r12
	jl	.label_1145
	jmp	.label_1140
.label_2687:
	cmp	rbp, r12
	mov	rcx, qword ptr [rsp + 0x50]
	mov	rdx, qword ptr [rsp + 0x48]
	jge	.label_1140
	nop	dword ptr [rax]
.label_1151:
	movzx	eax, byte ptr [rcx + rbp]
	cmp	byte ptr [rdx + rax], 0
	jne	.label_1140
	inc	rbp
	mov	qword ptr [rsp + 0x20], rbp
	cmp	rbp, r12
	jl	.label_1151
	nop	word ptr [rax + rax]
.label_1140:
	cmp	rbp, r12
	jne	.label_1154
	xor	eax, eax
	cmp	r12, qword ptr [rsp + 0x170]
	mov	rcx, qword ptr [rsp + 0x50]
	jge	.label_1155
	movzx	eax, byte ptr [rcx + r12]
.label_1155:
	mov	rcx, qword ptr [rsp + 0x160]
	test	rcx, rcx
	je	.label_1156
	movzx	eax, byte ptr [rcx + rax]
.label_1156:
	mov	rcx, qword ptr [rsp + 0x48]
	mov	ebx, 1
	cmp	byte ptr [rcx + rax], 0
	mov	rbp, r12
	jne	.label_1154
	jmp	.label_1019
.label_1118:
	mov	rax, qword ptr [rsp + 0x88]
	jmp	.label_1160
	nop	word ptr cs:[rax + rax]
.label_1174:
	add	rbp, qword ptr [rsp + 0x1f0]
	mov	qword ptr [rsp + 0x20], rbp
	cmp	rbp, r14
	mov	ebx, 1
	jl	.label_1019
	cmp	rbp, r12
	jle	.label_1160
	jmp	.label_1019
.label_1169:
	lea	rdi, [rsp + 0x60]
	mov	rsi, rbp
	mov	edx, dword ptr [rsp + 0x270]
	call	re_string_reconstruct
	mov	ebx, eax
	test	ebx, ebx
	jne	.label_1019
	mov	rbp, qword ptr [rsp + 0x20]
	mov	rax, qword ptr [rsp + 0x88]
	mov	rcx, rbp
	sub	rcx, rax
	jmp	.label_1167
	nop	dword ptr [rax + rax]
.label_1160:
	mov	rcx, rbp
	sub	rcx, rax
	cmp	rcx, qword ptr [rsp + 0x98]
	jae	.label_1169
.label_1167:
	cmp	rbp, qword ptr [rsp + 0x170]
	mov	edx, 0
	mov	rsi, qword ptr [rsp + 0x48]
	jge	.label_1171
	mov	rdx, qword ptr [rsp + 0x68]
	movzx	edx, byte ptr [rdx + rcx]
.label_1171:
	cmp	byte ptr [rsi + rdx], 0
	je	.label_1174
	jmp	.label_1154
.label_1125:
	mov	rcx, qword ptr [rsp + 0x170]
	mov	rdx, qword ptr [rsp + 0x50]
	mov	rsi, qword ptr [rsp + 0x48]
	nop	dword ptr [rax + rax]
.label_1179:
	cmp	rbp, rcx
	mov	eax, 0
	jge	.label_1177
	movzx	eax, byte ptr [rdx + rbp]
.label_1177:
	cmp	byte ptr [rsi + rax], 0
	jne	.label_1122
	lea	rax, [rbp - 1]
	mov	qword ptr [rsp + 0x20], rax
	cmp	rbp, r14
	mov	rbp, rax
	jg	.label_1179
	jmp	.label_1137
	nop	word ptr [rax + rax]
.label_1122:
	mov	rax, rbp
.label_1137:
	mov	ebx, 1
	cmp	rax, r14
	mov	rbp, rax
	jl	.label_1019
.label_1154:
	lea	rdi, [rsp + 0x60]
	mov	rsi, rbp
	mov	edx, dword ptr [rsp + 0x270]
	call	re_string_reconstruct
	mov	ebx, eax
	test	ebx, ebx
	jne	.label_1019
	cmp	dword ptr [rsp + 0x17c], 1
	je	.label_1188
	mov	rax, qword ptr [rsp + 0x90]
	test	rax, rax
	je	.label_1188
	mov	rax, qword ptr [rsp + 0x70]
	cmp	dword ptr [rax], -1
	je	.label_1191
.label_1188:
	mov	dword ptr [rsp + 0x140], 0
	xorps	xmm0, xmm0
	movups	xmmword ptr [r15 + 0x88], xmm0
	mov	r13, qword ptr [rsp + 0xf8]
	mov	rbx, qword ptr [rsp + 0xa8]
	mov	dword ptr [rsp + 4], 0
	mov	r14, qword ptr [r13 + 0x48]
	cmp	byte ptr [r14 + 0x68], 0
	jns	.label_1193
	test	rbx, rbx
	jle	.label_1196
	lea	rax, [rbx - 1]
	cmp	qword ptr [rsp + 0xb8], rax
	je	.label_1199
	cmp	dword ptr [rsp + 0xf0], 2
	jl	.label_1201
	mov	rax, qword ptr [rsp + 0x70]
	mov	rcx, rbx
	nop	word ptr cs:[rax + rax]
.label_1203:
	mov	ebp, dword ptr [rax + rcx*4 - 4]
	cmp	ebp, -1
	jne	.label_1202
	dec	rcx
	jg	.label_1203
	mov	ecx, dword ptr [rsp + 0xd0]
	jmp	.label_1204
.label_1201:
	mov	rcx, qword ptr [rsp + 0x68]
	mov	rdx, qword ptr [rsp + 0xe0]
	movzx	eax, byte ptr [rcx + rax]
	mov	ecx, eax
	shr	cl, 6
	movzx	ecx, cl
	mov	rcx, qword ptr [rdx + rcx*8]
	bt	rcx, rax
	jb	.label_1213
	cmp	al, 0xa
	je	.label_1209
	jmp	.label_1193
.label_1202:
	cmp	byte ptr [rsp + 0xee], 0
	jne	.label_1211
.label_1232:
	cmp	ebp, 0xa
	jne	.label_1193
.label_1209:
	xor	ecx, ecx
	cmp	byte ptr [rsp + 0xed], 0
	setne	cl
	add	ecx, ecx
.label_1204:
	test	cl, 1
	jne	.label_1213
	mov	rbp, rbx
	test	ecx, ecx
	je	.label_1214
	mov	eax, ecx
	and	eax, 4
	sete	sil
	mov	edx, ecx
	and	edx, 2
	mov	bl, byte ptr [rsp + 2]
	je	.label_1217
	test	sil, sil
	jne	.label_1217
	mov	r14, qword ptr [r13 + 0x60]
	jmp	.label_1223
	nop	dword ptr [rax]
.label_1193:
	mov	rbp, rbx
	jmp	.label_1214
.label_1217:
	test	edx, edx
	jne	.label_1226
	test	eax, eax
	je	.label_1223
	mov	rdx, qword ptr [r14 + 0x50]
	lea	rdi, [rsp + 4]
	mov	rsi, r13
	call	re_acquire_state_context
	mov	r14, rax
	jmp	.label_1223
.label_1226:
	mov	r14, qword ptr [r13 + 0x58]
	jmp	.label_1223
.label_1196:
	mov	ecx, dword ptr [rsp + 0xd0]
	jmp	.label_1204
.label_1199:
	mov	ecx, dword ptr [rsp + 0x100]
	and	ecx, 2
	xor	ecx, 0xa
	jmp	.label_1204
.label_1211:
	mov	edi, ebp
	call	iswalnum
	cmp	ebp, 0x5f
	je	.label_1213
	test	eax, eax
	je	.label_1232
.label_1213:
	mov	rbp, rbx
	mov	r14, qword ptr [r13 + 0x50]
.label_1214:
	mov	bl, byte ptr [rsp + 2]
.label_1223:
	test	r14, r14
	je	.label_1237
	mov	rax, qword ptr [rsp + 0x118]
	test	rax, rax
	mov	cl, bl
	mov	dword ptr [rsp + 8], ecx
	je	.label_1111
	mov	qword ptr [rax + rbp*8], r14
	cmp	qword ptr [r13 + 0x98], 0
	mov	al, bl
	mov	dword ptr [rsp + 8], eax
	jne	.label_1100
.label_1111:
	mov	al, byte ptr [r14 + 0x68]
	mov	rdx, -1
	test	al, 0x10
	mov	ecx, 0
	mov	rbx, rbp
	jne	.label_1244
.label_1057:
	mov	rbp, qword ptr [rsp + 0xa8]
	mov	rax, qword ptr [rsp + 0x210]
.label_1061:
	mov	qword ptr [rsp + 0x220], rax
	mov	qword ptr [rsp + 0x168], rdx
	mov	qword ptr [rsp + 0x180], rbx
	cmp	qword ptr [rsp + 0xc8], rbp
	jle	.label_1005
	test	rcx, rcx
	sete	bl
	or	bl, byte ptr [rsp + 3]
	mov	r13, r14
	jmp	.label_1003
.label_936:
	add	ebp, 2
	lea	rdi, [rsp + 0x60]
	mov	esi, ebp
	call	extend_buffers
	mov	dword ptr [rsp + 4], eax
	test	eax, eax
	jne	.label_1259
	jmp	.label_938
.label_941:
	cmp	qword ptr [r13 + 0x10], 0
	jle	.label_1262
	mov	r8, qword ptr [rsp + 0xf8]
	xor	r14d, r14d
	mov	qword ptr [rsp + 0x18], r8
	jmp	.label_908
.label_947:
	mov	rax, qword ptr [rsp + 0xa8]
	test	rax, rax
	jle	.label_1131
	lea	rdx, [rax - 1]
	mov	ecx, 0xa
	cmp	qword ptr [rsp + 0xb8], rdx
	je	.label_916
	cmp	dword ptr [rsp + 0xf0], 2
	jl	.label_1271
	mov	rcx, qword ptr [rsp + 0x70]
.label_1275:
	mov	r14d, dword ptr [rcx + rax*4 - 4]
	cmp	r14d, -1
	jne	.label_1273
	dec	rax
	jg	.label_1275
	mov	ecx, dword ptr [rsp + 0xd0]
	jmp	.label_916
.label_986:
	cmp	r13, r14
	je	.label_1277
	mov	dword ptr [rsp + 8], 0
.label_1277:
	mov	rax, qword ptr [rsp + 0x180]
	cmove	rax, r12
	mov	qword ptr [rsp + 0x180], rax
	jmp	.label_1279
.label_1271:
	mov	rax, qword ptr [rsp + 0x68]
	mov	rcx, qword ptr [rsp + 0xe0]
	movzx	eax, byte ptr [rax + rdx]
	mov	edx, eax
	shr	dl, 6
	movzx	edx, dl
	mov	rdx, qword ptr [rcx + rdx*8]
	mov	ecx, 1
	bt	rdx, rax
	jb	.label_916
	xor	ecx, ecx
	cmp	al, 0xa
	je	.label_1285
	jmp	.label_916
.label_1273:
	cmp	byte ptr [rsp + 0xee], 0
	jne	.label_1287
.label_922:
	xor	ecx, ecx
	cmp	r14d, 0xa
	jne	.label_916
.label_1285:
	xor	ecx, ecx
	cmp	byte ptr [rsp + 0xed], 0
	setne	cl
	add	ecx, ecx
.label_916:
	and	ecx, 1
	shl	rcx, 8
	or	rcx, rbp
	mov	r14, qword ptr [rsi + rcx*8]
	jmp	.label_913
.label_871:
	mov	ecx, dword ptr [rsp + 0xd0]
	jmp	.label_883
.label_873:
	mov	ecx, dword ptr [rsp + 0x100]
	and	ecx, 2
	xor	ecx, 0xa
	jmp	.label_883
.label_892:
	mov	edi, ebp
	call	iswalnum
	cmp	ebp, 0x5f
	mov	ecx, 1
	je	.label_1099
	test	eax, eax
	lea	r15, [rsp + 0x98]
	je	.label_1296
	jmp	.label_883
.label_1099:
	lea	r15, [rsp + 0x98]
	jmp	.label_883
.label_908:
	mov	rax, qword ptr [r13 + 0x18]
	mov	rsi, qword ptr [rax + r14*8]
	mov	rax, qword ptr [r8]
	mov	rcx, rsi
	shl	rcx, 4
	mov	eax, dword ptr [rax + rcx + 8]
	test	eax, 0x100000
	je	.label_902
	mov	edi, eax
	shr	edi, 8
	test	di, 0x3ff
	mov	rcx, qword ptr [rsp + 0xa8]
	je	.label_1365
	test	rcx, rcx
	mov	dword ptr [rsp + 0x10], eax
	js	.label_1310
	cmp	qword ptr [rsp + 0xb8], rcx
	je	.label_1312
	cmp	dword ptr [rsp + 0xf0], 2
	jl	.label_1315
	mov	rax, qword ptr [rsp + 0x70]
	lea	rdx, [rcx + 1]
.label_1318:
	mov	ebp, dword ptr [rax + rdx*4 - 4]
	cmp	ebp, -1
	jne	.label_1316
	dec	rdx
	test	rdx, rdx
	jg	.label_1318
	mov	r9d, dword ptr [rsp + 0xd0]
	jmp	.label_1320
.label_1315:
	mov	rax, qword ptr [rsp + 0x68]
	mov	rbp, qword ptr [rsp + 0xe0]
	movzx	eax, byte ptr [rax + rcx]
	mov	edx, eax
	shr	dl, 6
	movzx	edx, dl
	mov	rdx, qword ptr [rbp + rdx*8]
	xor	r9d, r9d
	bt	rdx, rax
	jae	.label_1323
	mov	r9d, 1
	xor	edx, edx
	jmp	.label_1329
.label_1316:
	cmp	byte ptr [rsp + 0xee], 0
	jne	.label_1331
.label_1353:
	xor	r9d, r9d
	cmp	ebp, 0xa
	je	.label_1333
	jmp	.label_1320
.label_1323:
	cmp	al, 0xa
	jne	.label_1320
.label_1333:
	xor	r9d, r9d
	cmp	byte ptr [rsp + 0xed], 0
	setne	r9b
	add	r9d, r9d
.label_1320:
	mov	eax, r9d
	and	eax, 1
	sete	dl
	test	dil, 4
	je	.label_1329
	test	eax, eax
	mov	eax, dword ptr [rsp + 0x10]
	je	.label_902
	jmp	.label_1340
.label_1310:
	mov	r9d, dword ptr [rsp + 0xd0]
	jmp	.label_1320
.label_1312:
	mov	r9d, dword ptr [rsp + 0x100]
	and	r9d, 2
	xor	r9d, 0xa
	jmp	.label_1320
.label_1331:
	mov	dword ptr [rsp + 0x178], edi
	mov	qword ptr [rsp + 0x1e0], rcx
	mov	qword ptr [rsp + 0x30], rsi
	mov	edi, ebp
	call	iswalnum
	xor	edx, edx
	cmp	ebp, 0x5f
	mov	r9d, 1
	je	.label_1350
	test	eax, eax
	lea	r15, [rsp + 0x98]
	mov	r8, qword ptr [rsp + 0x18]
	mov	rsi, qword ptr [rsp + 0x30]
	mov	rcx, qword ptr [rsp + 0x1e0]
	mov	edi, dword ptr [rsp + 0x178]
	mov	eax, dword ptr [rsp + 0x10]
	je	.label_1353
	jmp	.label_1340
.label_1350:
	lea	r15, [rsp + 0x98]
	mov	r8, qword ptr [rsp + 0x18]
	mov	rsi, qword ptr [rsp + 0x30]
	mov	rcx, qword ptr [rsp + 0x1e0]
	mov	edi, dword ptr [rsp + 0x178]
.label_1329:
	mov	eax, dword ptr [rsp + 0x10]
.label_1340:
	test	ah, 8
	je	.label_1360
	test	dl, dl
	je	.label_902
.label_1360:
	test	ah, 0x20
	je	.label_1363
	mov	eax, r9d
	and	eax, 2
	je	.label_902
.label_1363:
	test	dil, dil
	jns	.label_1365
	and	r9d, 8
	je	.label_902
.label_1365:
	mov	qword ptr [rsp + 0x30], rsi
	mov	rdi, qword ptr [rsp + 0x18]
	lea	rdx, [rsp + 0x60]
	call	check_node_accept_bytes
	mov	rsi, qword ptr [rsp + 0x30]
	mov	r8, qword ptr [rsp + 0x18]
	test	eax, eax
	je	.label_902
	movsxd	rbp, eax
	add	rbp, qword ptr [rsp + 0xa8]
	mov	ecx, dword ptr [rsp + 0x140]
	cmp	ecx, eax
	cmovl	ecx, eax
	mov	dword ptr [rsp + 0x140], ecx
	mov	rdi, qword ptr [rsp + 0x120]
	mov	rcx, qword ptr [rsp + 0xa0]
	mov	rax, qword ptr [rsp + 0xb8]
	cmp	rcx, rbp
	mov	qword ptr [rsp + 0x10], rbp
	jg	.label_1368
	cmp	rcx, rax
	jl	.label_1381
.label_1368:
	mov	rcx, qword ptr [rsp + 0x90]
	cmp	rcx, rbp
	jg	.label_1382
	cmp	rcx, rax
	jge	.label_1382
.label_1381:
	lea	esi, [rbp + 1]
	mov	rbp, rdi
	lea	rdi, [rsp + 0x60]
	call	extend_buffers
	mov	rdi, rbp
	mov	rbp, qword ptr [rsp + 0x10]
	mov	rsi, qword ptr [rsp + 0x30]
	mov	r8, qword ptr [rsp + 0x18]
	test	eax, eax
	jne	.label_1389
.label_1382:
	mov	rdx, rbp
	sub	rdx, rdi
	jle	.label_1391
	mov	rax, qword ptr [rsp + 0x118]
	lea	rdi, [rax + rdi*8 + 8]
	shl	rdx, 3
	xor	esi, esi
	call	memset
	mov	rbp, qword ptr [rsp + 0x10]
	mov	rsi, qword ptr [rsp + 0x30]
	mov	r8, qword ptr [rsp + 0x18]
	mov	qword ptr [rsp + 0x120], rbp
.label_1391:
	mov	dword ptr [rsp + 0x1f8], 0
	mov	rax, qword ptr [r8 + 0x18]
	mov	rax, qword ptr [rax + rsi*8]
	lea	rdx, [rax + rax*2]
	shl	rdx, 3
	add	rdx, qword ptr [r8 + 0x30]
	mov	rax, qword ptr [rsp + 0x118]
	mov	rax, qword ptr [rax + rbp*8]
	test	rax, rax
	mov	qword ptr [rsp + 0x30], rax
	je	.label_1400
	mov	rsi, qword ptr [rax + 0x50]
	lea	rdi, [rsp + 0x1a0]
	call	re_node_set_init_union
	mov	rbp, qword ptr [rsp + 0x10]
	mov	dword ptr [rsp + 0x1f8], eax
	test	eax, eax
	je	.label_860
	jmp	.label_864
.label_1400:
	mov	rax, qword ptr [rdx + 0x10]
	mov	qword ptr [rsp + 0x1b0], rax
	movups	xmm0, xmmword ptr [rdx]
	movaps	xmmword ptr [rsp + 0x1a0], xmm0
.label_860:
	test	rbp, rbp
	jle	.label_871
	lea	rax, [rbp - 1]
	cmp	qword ptr [rsp + 0xb8], rax
	je	.label_873
	cmp	dword ptr [rsp + 0xf0], 2
	jl	.label_875
	mov	rax, qword ptr [rsp + 0x70]
	mov	rcx, rbp
.label_880:
	mov	ebp, dword ptr [rax + rcx*4 - 4]
	cmp	ebp, -1
	jne	.label_878
	dec	rcx
	jg	.label_880
	mov	ecx, dword ptr [rsp + 0xd0]
	jmp	.label_883
.label_875:
	mov	rcx, qword ptr [rsp + 0x68]
	mov	rdx, qword ptr [rsp + 0xe0]
	movzx	eax, byte ptr [rcx + rax]
	mov	ecx, eax
	shr	cl, 6
	movzx	ecx, cl
	mov	rdx, qword ptr [rdx + rcx*8]
	mov	ecx, 1
	bt	rdx, rax
	jb	.label_883
	xor	ecx, ecx
	cmp	al, 0xa
	je	.label_1010
	jmp	.label_883
.label_878:
	cmp	byte ptr [rsp + 0xee], 0
	jne	.label_892
.label_1296:
	xor	ecx, ecx
	cmp	ebp, 0xa
	jne	.label_883
.label_1010:
	xor	ecx, ecx
	cmp	byte ptr [rsp + 0xed], 0
	setne	cl
	add	ecx, ecx
.label_883:
	lea	rdi, [rsp + 0x1f8]
	mov	rsi, qword ptr [rsp + 0x18]
	lea	rdx, [rsp + 0x1a0]
	call	re_acquire_state_context
	cmp	qword ptr [rsp + 0x30], 0
	mov	rcx, qword ptr [rsp + 0x118]
	mov	rdx, qword ptr [rsp + 0x10]
	mov	qword ptr [rcx + rdx*8], rax
	je	.label_1064
	mov	rdi, qword ptr [rsp + 0x1b0]
	call	free
	mov	rdx, qword ptr [rsp + 0x10]
.label_1064:
	mov	rax, qword ptr [rsp + 0x118]
	cmp	qword ptr [rax + rdx*8], 0
	mov	r8, qword ptr [rsp + 0x18]
	jne	.label_902
	mov	eax, dword ptr [rsp + 0x1f8]
	test	eax, eax
	jne	.label_864
.label_902:
	inc	r14
	cmp	r14, qword ptr [r13 + 0x10]
	jl	.label_908
.label_1262:
	mov	dword ptr [rsp + 4], 0
	jmp	.label_910
.label_1389:
	mov	dword ptr [rsp + 0x1f8], eax
.label_864:
	mov	dword ptr [rsp + 4], eax
.label_953:
	xor	r14d, r14d
	jmp	.label_913
.label_1131:
	mov	ecx, dword ptr [rsp + 0xd0]
	jmp	.label_916
.label_1287:
	mov	qword ptr [rsp + 0x18], rsi
	mov	edi, r14d
	call	iswalnum
	cmp	r14d, 0x5f
	mov	ecx, 1
	je	.label_920
	test	eax, eax
	lea	r15, [rsp + 0x98]
	mov	rsi, qword ptr [rsp + 0x18]
	je	.label_922
	jmp	.label_916
.label_920:
	lea	r15, [rsp + 0x98]
	mov	rsi, qword ptr [rsp + 0x18]
	jmp	.label_916
	nop	dword ptr [rax + rax]
.label_1003:
	lea	r12, [rbp + 1]
	mov	rcx, qword ptr [rsp + 0xa0]
	mov	rax, qword ptr [rsp + 0xb8]
	cmp	r12, rcx
	jl	.label_930
	cmp	rcx, rax
	jl	.label_936
.label_930:
	mov	rcx, qword ptr [rsp + 0x90]
	cmp	r12, rcx
	jl	.label_938
	cmp	rcx, rax
	jl	.label_936
.label_938:
	test	byte ptr [r13 + 0x68], 0x20
	jne	.label_941
.label_910:
	mov	rax, qword ptr [rsp + 0xa8]
	lea	rcx, [rax + 1]
	mov	qword ptr [rsp + 0xa8], rcx
	mov	rcx, qword ptr [rsp + 0x68]
	movzx	ebp, byte ptr [rcx + rax]
.label_950:
	mov	rax, qword ptr [r13 + 0x58]
	test	rax, rax
	jne	.label_945
	mov	rsi, qword ptr [r13 + 0x60]
	test	rsi, rsi
	jne	.label_947
	mov	rdi, qword ptr [rsp + 0xf8]
	mov	rsi, r13
	call	build_trtable
	test	al, al
	jne	.label_950
	mov	dword ptr [rsp + 4], 0xc
	jmp	.label_953
	nop	word ptr [rax + rax]
.label_945:
	mov	r14, qword ptr [rax + rbp*8]
.label_913:
	cmp	qword ptr [rsp + 0x118], 0
	je	.label_1336
	lea	rdi, [rsp + 4]
	lea	rsi, [rsp + 0x60]
	mov	rdx, r14
	call	merge_state_with_log
	mov	r14, rax
.label_1336:
	test	r14, r14
	jne	.label_961
	cmp	dword ptr [rsp + 4], 0
	jne	.label_963
	mov	rax, qword ptr [rsp + 0x118]
	test	rax, rax
	setne	cl
	and	cl, bl
	cmp	cl, 1
	je	.label_965
	jmp	.label_971
	nop	word ptr cs:[rax + rax]
.label_1324:
	mov	rax, qword ptr [rsp + 0x118]
.label_965:
	mov	rdx, qword ptr [rsp + 0xa8]
	mov	rcx, qword ptr [rsp + 0x120]
	nop	dword ptr [rax + rax]
.label_1301:
	cmp	rdx, rcx
	jge	.label_971
	lea	rsi, [rdx + 1]
	mov	qword ptr [rsp + 0xa8], rsi
	cmp	qword ptr [rax + rdx*8 + 8], 0
	mov	rdx, rsi
	je	.label_1301
	xor	edx, edx
	lea	rdi, [rsp + 4]
	lea	rsi, [rsp + 0x60]
	call	merge_state_with_log
	mov	r14, rax
	test	r14, r14
	jne	.label_984
	mov	eax, dword ptr [rsp + 4]
	test	eax, eax
	je	.label_1324
.label_984:
	test	r14, r14
	je	.label_971
	nop	word ptr [rax + rax]
.label_961:
	mov	eax, dword ptr [rsp + 8]
	test	al, 1
	jne	.label_986
.label_1279:
	mov	r12, qword ptr [rsp + 0x40]
	mov	al, byte ptr [r14 + 0x68]
	test	al, 0x10
	jne	.label_990
	mov	rbp, qword ptr [rsp + 0xa8]
	jmp	.label_999
	nop	word ptr cs:[rax + rax]
.label_990:
	mov	rbp, qword ptr [rsp + 0xa8]
	test	al, al
	jns	.label_1002
	lea	rdi, [rsp + 0x60]
	mov	rsi, r14
	mov	rdx, rbp
	call	check_halt_state_context
	test	rax, rax
	jne	.label_1002
.label_999:
	cmp	qword ptr [rsp + 0xc8], rbp
	mov	r13, r14
	jg	.label_1003
	jmp	.label_1005
.label_1002:
	cmp	byte ptr [rsp + 3], 0
	mov	rdx, rbp
	mov	ecx, 1
	mov	eax, 0
	mov	rbx, qword ptr [rsp + 0x180]
	jne	.label_1061
	jmp	.label_1071
	nop	word ptr cs:[rax + rax]
.label_971:
	mov	r12, qword ptr [rsp + 0x40]
.label_1005:
	mov	rcx, qword ptr [rsp + 0x220]
	test	rcx, rcx
	je	.label_1013
	mov	rax, qword ptr [rsp + 0x180]
	add	qword ptr [rcx], rax
.label_1013:
	mov	rbp, qword ptr [rsp + 0x168]
.label_1071:
	cmp	rbp, -1
	mov	r14, qword ptr [rsp + 0x198]
	je	.label_1017
	mov	ebx, 0xc
	cmp	rbp, -2
	je	.label_1019
.label_1115:
	mov	r15, qword ptr [rsp + 0x38]
	cmp	r15, 1
	seta	al
	mov	qword ptr [rsp + 0x108], rbp
	mov	rcx, qword ptr [rsp + 0x58]
	test	byte ptr [rcx + 0x38], 0x10
	sete	r14b
	and	r14b, al
	je	.label_1025
	mov	rax, qword ptr [rsp + 0x118]
	mov	rsi, qword ptr [rax + rbp*8]
	lea	rdi, [rsp + 0x60]
	mov	rdx, rbp
	call	check_halt_state_context
	mov	qword ptr [rsp + 0x110], rax
	mov	rbx, qword ptr [rsp + 0x28]
	jmp	.label_1033
.label_1025:
	mov	rbx, qword ptr [rsp + 0x28]
	cmp	qword ptr [rbx + 0x98], 0
	je	.label_1037
	mov	rax, qword ptr [rsp + 0x118]
	mov	rsi, qword ptr [rax + rbp*8]
	lea	rdi, [rsp + 0x60]
	mov	rdx, rbp
	call	check_halt_state_context
	mov	qword ptr [rsp + 0x110], rax
	test	r14b, 1
	je	.label_1043
.label_1033:
	test	byte ptr [rbx + 0xb0], 1
	jne	.label_1045
.label_1043:
	cmp	qword ptr [rbx + 0x98], 0
	je	.label_1037
.label_1045:
	movabs	rax, 0x1ffffffffffffffe
	cmp	rbp, rax
	ja	.label_963
	mov	r15, qword ptr [rsp + 0xf8]
	mov	r12, qword ptr [rsp + 0x110]
	lea	rbx, [rbp*8 + 8]
	mov	rdi, rbx
	call	malloc
	mov	r14, rax
	test	r14, r14
	mov	r13d, 0
	je	.label_1052
	cmp	qword ptr [r15 + 0x98], 0
	je	.label_1053
	mov	qword ptr [rsp + 8], r15
	mov	rdi, rbx
	call	malloc
	mov	r13, rax
	test	r13, r13
	je	.label_1056
	xor	esi, esi
	mov	rdi, r13
	mov	rdx, rbx
	call	memset
	mov	qword ptr [rsp + 0x1a0], r14
	mov	qword ptr [rsp + 0x1a8], r13
	mov	qword ptr [rsp + 0x1b0], r12
	mov	qword ptr [rsp + 0x1b8], rbp
	lea	rax, [rsp + 0x1c0]
	xorps	xmm0, xmm0
	movups	xmmword ptr [rax], xmm0
	mov	qword ptr [rax + 0x10], 0
	lea	rdi, [rsp + 0x60]
	jmp	.label_1059
.label_1053:
	mov	qword ptr [rsp + 0x1a0], r14
	mov	qword ptr [rsp + 0x1a8], 0
	mov	qword ptr [rsp + 0x1b0], r12
	mov	qword ptr [rsp + 0x1b8], rbp
	lea	rax, [rsp + 0x1c0]
	xorps	xmm0, xmm0
	movups	xmmword ptr [rax], xmm0
	mov	qword ptr [rax + 0x10], 0
	lea	rdi, [rsp + 0x60]
	lea	rsi, [rsp + 0x1a0]
	call	sift_states_backward
	mov	ebx, eax
	test	ebx, ebx
	mov	r13d, 0
	jne	.label_1074
	cmp	qword ptr [r14], 0
	mov	r13d, 0
	je	.label_1077
	jmp	.label_1080
.label_1096:
	lea	rbx, [rsp + 0x60]
	mov	rdi, rbx
	mov	rdx, rbp
	call	check_halt_state_context
	mov	r12, rax
	lea	rdx, [rbp*8 + 8]
	xor	esi, esi
	mov	rdi, r13
	call	memset
	mov	qword ptr [rsp + 0x1a0], r14
	mov	qword ptr [rsp + 0x1a8], r13
	mov	qword ptr [rsp + 0x1b0], r12
	mov	qword ptr [rsp + 0x1b8], rbp
	lea	rax, [rsp + 0x1c0]
	xorps	xmm0, xmm0
	movups	xmmword ptr [rax], xmm0
	mov	qword ptr [rax + 0x10], 0
	mov	rdi, rbx
.label_1059:
	lea	rsi, [rsp + 0x1a0]
	call	sift_states_backward
	mov	ebx, eax
	test	ebx, ebx
	jne	.label_1074
	mov	rsi, qword ptr [r14]
	test	rsi, rsi
	jne	.label_1091
	cmp	qword ptr [r13], 0
	mov	esi, 0
	jne	.label_1091
	test	rbp, rbp
	jle	.label_1077
	mov	rax, qword ptr [rsp + 0x118]
	mov	rcx, rbp
	nop	dword ptr [rax]
.label_1098:
	lea	rbp, [rcx - 1]
	mov	rsi, qword ptr [rax + rcx*8 - 8]
	test	rsi, rsi
	je	.label_1094
	test	byte ptr [rsi + 0x68], 0x10
	jne	.label_1096
.label_1094:
	cmp	rcx, 2
	mov	rcx, rbp
	jge	.label_1098
.label_1077:
	mov	rdi, r14
	call	free
	mov	rdi, r13
	call	free
	lea	r15, [rsp + 0x98]
	mov	r14, qword ptr [rsp + 0x198]
	mov	r12, qword ptr [rsp + 0x40]
.label_1017:
	lea	rdi, [rsp + 0x60]
	call	match_ctx_clean
.label_1191:
	mov	rbp, qword ptr [rsp + 0x20]
	add	rbp, qword ptr [rsp + 0x1f0]
	mov	qword ptr [rsp + 0x20], rbp
	cmp	rbp, r14
	mov	ebx, 1
	jl	.label_1019
	cmp	r12, rbp
	jge	.label_1108
	jmp	.label_1019
.label_1091:
	test	rbp, rbp
	js	.label_1110
	xor	r15d, r15d
	mov	qword ptr [rsp + 0x168], r12
	jmp	.label_1112
	nop	word ptr cs:[rax + rax]
.label_1133:
	mov	rsi, qword ptr [r14 + r15*8 + 8]
	inc	r15
.label_1112:
	mov	rdx, qword ptr [r13 + r15*8]
	test	rsi, rsi
	je	.label_1117
	test	rdx, rdx
	je	.label_1119
	add	rsi, 8
	add	rdx, 8
	lea	r12, [rsp + 0x1f8]
	mov	rdi, r12
	call	re_node_set_init_union
	mov	ebx, eax
	mov	dword ptr [rsp + 4], ebx
	test	ebx, ebx
	jne	.label_1124
	lea	rdi, [rsp + 4]
	mov	rsi, qword ptr [rsp + 8]
	mov	rdx, r12
	call	re_acquire_state
	mov	qword ptr [r14 + r15*8], rax
	mov	rdi, qword ptr [rsp + 0x208]
	call	free
	mov	ebx, dword ptr [rsp + 4]
	test	ebx, ebx
	mov	r12, qword ptr [rsp + 0x168]
	je	.label_1119
	jmp	.label_1082
.label_1117:
	mov	qword ptr [r14 + r15*8], rdx
.label_1119:
	cmp	r15, rbp
	jl	.label_1133
.label_1110:
	xor	ebx, ebx
.label_1082:
	mov	rdi, r13
	call	free
	test	ebx, ebx
	mov	r13d, 0
	jne	.label_1074
.label_1080:
	mov	rdi, qword ptr [rsp + 0x118]
	call	free
	mov	qword ptr [rsp + 0x118], r14
	mov	qword ptr [rsp + 0x110], r12
	mov	qword ptr [rsp + 0x108], rbp
	mov	r15, qword ptr [rsp + 0x38]
.label_1037:
	test	r15, r15
	je	.label_1144
	cmp	r15, 1
	je	.label_1146
	mov	rax, qword ptr [rsp + 0x268]
	lea	rdi, [rax + 0x10]
	cmp	r15, 2
	mov	edx, 2
	cmova	rdx, r15
	shl	rdx, 4
	add	rdx, -0x10
	mov	esi, 0xff
	call	memset
.label_1146:
	mov	rax, qword ptr [rsp + 0x268]
	mov	rcx, rax
	mov	qword ptr [rcx], 0
	mov	rax, qword ptr [rsp + 0x108]
	mov	qword ptr [rcx + 8], rax
	cmp	r15, 2
	jb	.label_1152
	mov	rax, qword ptr [rsp + 0x58]
	mov	al, byte ptr [rax + 0x38]
	and	al, 0x10
	jne	.label_1152
	mov	rax, qword ptr [rsp + 0x28]
	test	byte ptr [rax + 0xb0], 1
	jne	.label_1157
	xor	eax, eax
	jmp	.label_1158
.label_1144:
	xor	ebx, ebx
	jmp	.label_1019
.label_1157:
	cmp	qword ptr [rax + 0x98], 0
	setg	al
.label_1158:
	mov	rdx, qword ptr [rsp + 0x38]
	mov	rcx, qword ptr [rsp + 0x58]
	mov	rdi, qword ptr [rcx]
	movzx	r8d, al
	lea	rsi, [rsp + 0x60]
	mov	rcx, qword ptr [rsp + 0x268]
	call	set_regs
	mov	ebx, eax
	test	ebx, ebx
	jne	.label_1019
.label_1152:
	cmp	byte ptr [rsp + 0xec], 0
	jne	.label_1163
	mov	rax, qword ptr [rsp + 0x20]
	mov	r15, qword ptr [rsp + 0x38]
	mov	edx, r15d
	and	edx, 1
	xor	ecx, ecx
	mov	rbx, qword ptr [rsp + 0x188]
	cmp	qword ptr [rsp + 0x190], rbx
	mov	r14, qword ptr [rsp + 0x28]
	je	.label_1165
	mov	rsi, r15
	sub	rsi, rdx
	mov	rcx, qword ptr [rsp + 0x268]
	lea	rdi, [rcx + 0x18]
	xor	ecx, ecx
	nop	
.label_1173:
	mov	rbp, qword ptr [rdi - 0x18]
	cmp	rbp, -1
	je	.label_1046
	add	rbp, rax
	mov	qword ptr [rdi - 0x18], rbp
	add	qword ptr [rdi - 0x10], rax
.label_1046:
	mov	rbp, qword ptr [rdi - 8]
	cmp	rbp, -1
	je	.label_1058
	add	rbp, rax
	mov	qword ptr [rdi - 8], rbp
	add	qword ptr [rdi], rax
.label_1058:
	add	rcx, 2
	add	rdi, 0x20
	cmp	rsi, rcx
	jne	.label_1173
.label_1165:
	test	rdx, rdx
	je	.label_1084
	shl	rcx, 4
	mov	rdx, qword ptr [rsp + 0x268]
	mov	rdx, qword ptr [rdx + rcx]
	cmp	rdx, -1
	je	.label_1084
	mov	rsi, qword ptr [rsp + 0x268]
	mov	rdi, rsi
	lea	rsi, [rdi + rcx]
	add	rdx, rax
	mov	qword ptr [rsi], rdx
	add	qword ptr [rdi + rcx + 8], rax
.label_1084:
	test	rbx, rbx
	jle	.label_1181
	mov	rdi, r15
	shl	rdi, 4
	add	rdi, qword ptr [rsp + 0x268]
	mov	rdx, rbx
	shl	rdx, 4
	mov	esi, 0xff
	call	memset
.label_1181:
	mov	rax, qword ptr [r14 + 0xe0]
	test	rax, rax
	je	.label_1186
	cmp	r15, 2
	mov	ebx, 0
	jb	.label_1019
	mov	rcx, qword ptr [rsp + 0x188]
	sub	qword ptr [rsp + 0x190], rcx
	mov	rcx, qword ptr [rsp + 0x268]
	lea	rcx, [rcx + 0x18]
	xor	edx, edx
	nop	dword ptr [rax]
.label_1195:
	mov	rsi, qword ptr [rax + rdx*8]
	cmp	rdx, rsi
	je	.label_1192
	shl	rsi, 4
	mov	rdi, qword ptr [rsp + 0x268]
	mov	rsi, qword ptr [rdi + rsi + 0x10]
	mov	qword ptr [rcx - 8], rsi
	mov	rsi, qword ptr [rax + rdx*8]
	shl	rsi, 4
	mov	rsi, qword ptr [rdi + rsi + 0x18]
	mov	qword ptr [rcx], rsi
.label_1192:
	inc	rdx
	add	rcx, 0x10
	xor	ebx, ebx
	cmp	qword ptr [rsp + 0x190], rdx
	jne	.label_1195
	jmp	.label_1019
.label_1186:
	xor	ebx, ebx
	jmp	.label_1019
.label_1259:
	cmp	eax, 0xc
	je	.label_963
	mov	edi, OFFSET FLAT:label_1197
	mov	esi, OFFSET FLAT:label_366
	mov	edx, 0x46c
	mov	ecx, OFFSET FLAT:label_1198
	call	__assert_fail
.label_1237:
	cmp	dword ptr [rsp + 4], 0xc
	je	.label_963
	mov	edi, OFFSET FLAT:label_1197
	mov	esi, OFFSET FLAT:label_366
	mov	edx, 0x435
	mov	ecx, OFFSET FLAT:label_1198
	call	__assert_fail
.label_1056:
	mov	qword ptr [rsp + 0x1e8], r14
.label_1052:
	mov	rdi, qword ptr [rsp + 0x1e8]
	call	free
	mov	rdi, r13
	call	free
.label_963:
	mov	ebx, 0xc
.label_1019:
	mov	rdi, qword ptr [rsp + 0x118]
	call	free
	mov	rax, qword ptr [rsp + 0x28]
	cmp	qword ptr [rax + 0x98], 0
	je	.label_1208
	lea	rdi, [rsp + 0x60]
	call	match_ctx_clean
	mov	rdi, qword ptr [rsp + 0x158]
	call	free
	mov	rdi, qword ptr [rsp + 0x138]
	call	free
.label_1208:
	mov	rdi, qword ptr [rsp + 0x70]
	call	free
	mov	rdi, qword ptr [rsp + 0x78]
	call	free
	cmp	byte ptr [rsp + 0xeb], 0
	je	.label_1218
	mov	rdi, qword ptr [rsp + 0x68]
	call	free
.label_1218:
	mov	eax, ebx
	add	rsp, 0x228
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_1163:
	mov	r8, qword ptr [rsp + 0x78]
	mov	rcx, qword ptr [rsp + 0x268]
	lea	rcx, [rcx + 8]
	mov	r15, qword ptr [rsp + 0x38]
	mov	rdx, r15
	mov	r14, qword ptr [rsp + 0x28]
	mov	rbx, qword ptr [rsp + 0x188]
.label_1240:
	mov	rsi, qword ptr [rcx - 8]
	cmp	rsi, -1
	je	.label_1335
	mov	rdi, qword ptr [rsp + 0x90]
	cmp	rsi, rdi
	lea	rsi, [r8 + rsi*8]
	lea	rbp, [rsp + 0x98]
	mov	rax, rbp
	cmove	rsi, rax
	mov	rsi, qword ptr [rsi]
	mov	qword ptr [rcx - 8], rsi
	mov	rbp, qword ptr [rcx]
	cmp	rbp, rdi
	lea	rdi, [r8 + rbp*8]
	cmove	rdi, rax
	mov	rbp, qword ptr [rsp + 0x20]
	add	rsi, rbp
	add	rbp, qword ptr [rdi]
	mov	qword ptr [rcx - 8], rsi
	mov	qword ptr [rcx], rbp
.label_1335:
	add	rcx, 0x10
	dec	rdx
	jne	.label_1240
	jmp	.label_1084
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40fb40

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
	jne	.label_1581
	mov	rax, qword ptr [rbx + 0x28]
	cmp	rax, qword ptr [rbx + 0x20]
	jne	.label_1581
	cmp	qword ptr [rbx + 0x48], 0
	je	.label_1582
.label_1581:
	mov	rdi, rbx
	mov	rsi, rbp
	mov	edx, r14d
	pop	rbx
	pop	r14
	pop	rbp
	jmp	fseeko
.label_1582:
	mov	rdi, rbx
	call	fileno
	mov	edi, eax
	mov	rsi, rbp
	mov	edx, r14d
	call	lseek
	mov	rcx, rax
	mov	eax, 0xffffffff
	cmp	rcx, -1
	je	.label_1583
	and	byte ptr [rbx], 0xef
	mov	qword ptr [rbx + 0x90], rcx
	xor	eax, eax
.label_1583:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	nop	
.label_1260:
	call	abort
	nop	word ptr [rax + rax]
	sub	rsp, 0x38
	mov	rax, qword ptr [rip + label_9]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0, xmmword ptr [rip + label_10]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_11]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rsi, rsi
	je	.label_1260
	test	rdx, rdx
	je	.label_1260
	mov	qword ptr [rsp + 0x28], rsi
	mov	qword ptr [rsp + 0x30], rdx
	lea	rax, [rsp]
	mov	rsi, rcx
	mov	rdx, r8
	mov	rcx, rax
	call	quotearg_n_options
	add	rsp, 0x38
	ret	
	mov	qword ptr [rip + file_name],  rdi
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40fc30

	.globl xalloc_die
	.type xalloc_die, @function
xalloc_die:
	push	rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_1584
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	mov	edx, OFFSET FLAT:label_850
	xor	eax, eax
	call	error
	call	cleanup_fatal
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40fc60

	.globl duplicate_node_closure
	.type duplicate_node_closure, @function
duplicate_node_closure:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x28
	mov	r13d, r8d
	mov	qword ptr [rsp + 0x20], rcx
	mov	rbp, rdx
	mov	r14, rsi
	mov	r12, rdi
.label_1594:
	mov	eax, r13d
	shl	eax, 8
	and	eax, 0x3ff00
	mov	dword ptr [rsp + 0xc], eax
	mov	r15, r14
	mov	dword ptr [rsp + 0x1c], r13d
	nop	word ptr cs:[rax + rax]
.label_1398:
	mov	rax, qword ptr [r12]
	mov	rdx, r15
	shl	rdx, 4
	cmp	byte ptr [rax + rdx + 8], 4
	jne	.label_1586
	mov	rcx, qword ptr [r12 + 0x18]
	mov	rdx, qword ptr [r12 + 0x28]
	mov	r13, qword ptr [rcx + r15*8]
	lea	r14, [rbp + rbp*2]
	mov	qword ptr [rdx + r14*8 + 8], 0
	mov	rbx, r13
	shl	rbx, 4
	mov	rsi, qword ptr [rax + rbx]
	mov	rdx, qword ptr [rax + rbx + 8]
	mov	rdi, r12
	call	re_dfa_add_node
	mov	rdi, rbp
	mov	rbp, rax
	mov	dword ptr [rsp + 8], 0xc
	cmp	rbp, -1
	je	.label_1142
	mov	rax, qword ptr [r12]
	mov	rcx, rbp
	shl	rcx, 4
	mov	edx, dword ptr [rax + rcx + 8]
	mov	esi, 0xfffc00ff
	and	edx, esi
	or	edx, dword ptr [rsp + 0xc]
	mov	dword ptr [rax + rcx + 8], edx
	mov	rax, qword ptr [r12]
	mov	edx, dword ptr [rax + rbx + 8]
	mov	esi, 0x3ff00
	and	edx, esi
	or	dword ptr [rax + rcx + 8], edx
	mov	rax, qword ptr [r12]
	or	dword ptr [rax + rcx + 8], 0x40000
	mov	rax, qword ptr [r12 + 0x20]
	mov	qword ptr [rax + rbp*8], r13
	mov	rax, qword ptr [r12 + 0x18]
	mov	rcx, qword ptr [rax + r15*8]
	mov	qword ptr [rax + rdi*8], rcx
	mov	rax, qword ptr [r12 + 0x28]
	lea	rdi, [rax + r14*8]
	mov	rsi, rbp
	call	re_node_set_insert
	test	al, al
	mov	r15, r13
	mov	r13d, dword ptr [rsp + 0x1c]
	jne	.label_1398
	jmp	.label_1142
	nop	dword ptr [rax + rax]
.label_1586:
	mov	r8, qword ptr [r12 + 0x28]
	lea	rcx, [r15 + r15*2]
	mov	rsi, qword ptr [r8 + rcx*8 + 8]
	test	rsi, rsi
	je	.label_1596
	mov	rdi, qword ptr [r8 + rcx*8 + 0x10]
	mov	r14, qword ptr [rdi]
	lea	rdi, [rbp + rbp*2]
	mov	qword ptr [rsp + 0x10], rdi
	mov	qword ptr [r8 + rdi*8 + 8], 0
	cmp	rsi, 1
	je	.label_1592
	mov	rdi, qword ptr [r12 + 0x10]
	lea	rsi, [rdi - 1]
	test	rsi, rsi
	jle	.label_1591
	mov	rdx, rsi
	shl	rdx, 4
	mov	ebx, dword ptr [rax + rdx + 8]
	mov	edx, ebx
	and	edx, 0x40000
	je	.label_1591
	mov	rdx, qword ptr [r12 + 0x20]
	shl	rdi, 4
	lea	rdi, [rax + rdi - 0x18]
	nop	word ptr cs:[rax + rax]
.label_1593:
	cmp	qword ptr [rdx + rsi*8], r14
	jne	.label_1589
	shr	ebx, 8
	and	ebx, 0x3ff
	cmp	ebx, r13d
	je	.label_1587
.label_1589:
	dec	rsi
	test	rsi, rsi
	jle	.label_1591
	mov	ebx, dword ptr [rdi]
	mov	ebp, ebx
	and	ebp, 0x40000
	add	rdi, -0x10
	test	ebp, ebp
	jne	.label_1593
	jmp	.label_1591
.label_1587:
	cmp	rsi, -1
	je	.label_1591
	mov	r15, rcx
	mov	rax, qword ptr [rsp + 0x10]
	lea	rdi, [r8 + rax*8]
	call	re_node_set_insert
	mov	dword ptr [rsp + 8], 0xc
	test	al, al
	jne	.label_1590
	jmp	.label_1142
	nop	dword ptr [rax]
.label_1591:
	mov	r15, rcx
	mov	rbx, r14
	shl	rbx, 4
	mov	rsi, qword ptr [rax + rbx]
	mov	rdx, qword ptr [rax + rbx + 8]
	mov	rdi, r12
	call	re_dfa_add_node
	mov	rbp, rax
	mov	dword ptr [rsp + 8], 0xc
	cmp	rbp, -1
	je	.label_1142
	mov	rax, qword ptr [r12]
	mov	rcx, rbp
	shl	rcx, 4
	mov	edx, dword ptr [rax + rcx + 8]
	mov	esi, 0xfffc00ff
	and	edx, esi
	or	edx, dword ptr [rsp + 0xc]
	mov	dword ptr [rax + rcx + 8], edx
	mov	rax, qword ptr [r12]
	mov	edx, dword ptr [rax + rbx + 8]
	mov	esi, 0x3ff00
	and	edx, esi
	or	dword ptr [rax + rcx + 8], edx
	mov	rax, qword ptr [r12]
	or	dword ptr [rax + rcx + 8], 0x40000
	mov	rax, qword ptr [r12 + 0x20]
	mov	qword ptr [rax + rbp*8], r14
	mov	rax, qword ptr [r12 + 0x28]
	mov	rcx, qword ptr [rsp + 0x10]
	lea	rdi, [rax + rcx*8]
	mov	rsi, rbp
	call	re_node_set_insert
	test	al, al
	je	.label_1142
	mov	rdi, r12
	mov	rsi, r14
	mov	rdx, rbp
	mov	rcx, qword ptr [rsp + 0x20]
	mov	r8d, r13d
	call	duplicate_node_closure
	mov	dword ptr [rsp + 8], eax
	test	eax, eax
	jne	.label_1142
.label_1590:
	mov	rax, qword ptr [r12]
	mov	rcx, qword ptr [r12 + 0x28]
	mov	rcx, qword ptr [rcx + r15*8 + 0x10]
	mov	r15, qword ptr [rcx + 8]
	mov	rbx, r15
	shl	rbx, 4
	mov	rsi, qword ptr [rax + rbx]
	mov	rdx, qword ptr [rax + rbx + 8]
	mov	rdi, r12
	call	re_dfa_add_node
	mov	rbp, rax
	mov	dword ptr [rsp + 8], 0xc
	cmp	rbp, -1
	je	.label_1142
	mov	rax, qword ptr [r12]
	mov	rcx, rbp
	shl	rcx, 4
	mov	edx, dword ptr [rax + rcx + 8]
	mov	esi, 0xfffc00ff
	and	edx, esi
	or	edx, dword ptr [rsp + 0xc]
	mov	dword ptr [rax + rcx + 8], edx
	mov	rax, qword ptr [r12]
	mov	edx, dword ptr [rax + rbx + 8]
	mov	esi, 0x3ff00
	and	edx, esi
	or	dword ptr [rax + rcx + 8], edx
	mov	rax, qword ptr [r12]
	or	dword ptr [rax + rcx + 8], 0x40000
	mov	rax, qword ptr [r12 + 0x20]
	mov	qword ptr [rax + rbp*8], r15
	mov	rax, qword ptr [r12 + 0x28]
	mov	rcx, qword ptr [rsp + 0x10]
	lea	rdi, [rax + rcx*8]
	mov	rsi, rbp
	call	re_node_set_insert
	test	al, al
	jne	.label_1398
	jmp	.label_1142
	nop	
.label_1592:
	cmp	r15, qword ptr [rsp + 0x20]
	jne	.label_1585
	cmp	rbp, r15
	jne	.label_1588
.label_1585:
	lea	rcx, [rax + rdx + 8]
	mov	ebp, dword ptr [rcx]
	mov	rbx, r14
	shl	rbx, 4
	mov	rsi, qword ptr [rax + rbx]
	mov	rdx, qword ptr [rax + rbx + 8]
	mov	rdi, r12
	call	re_dfa_add_node
	mov	r15, rax
	mov	dword ptr [rsp + 8], 0xc
	cmp	r15, -1
	je	.label_1142
.label_2770:
	shr	ebp, 8
	and	ebp, 0x3ff
	or	r13d, ebp
	mov	rax, qword ptr [r12]
	mov	rcx, r15
	shl	rcx, 4
	mov	edx, r13d
	shl	edx, 8
	and	edx, 0x3ff00
	mov	esi, dword ptr [rax + rcx + 8]
	mov	edi, 0xfffc00ff
	and	esi, edi
	or	esi, edx
	mov	dword ptr [rax + rcx + 8], esi
	mov	rax, qword ptr [r12]
	mov	edx, dword ptr [rax + rbx + 8]
	mov	esi, 0x3ff00
	and	edx, esi
	or	dword ptr [rax + rcx + 8], edx
	mov	rax, qword ptr [r12]
	or	dword ptr [rax + rcx + 8], 0x40000
	mov	rax, qword ptr [r12 + 0x20]
	mov	qword ptr [rax + r15*8], r14
	mov	rax, qword ptr [r12 + 0x28]
	mov	rcx, qword ptr [rsp + 0x10]
	lea	rdi, [rax + rcx*8]
	mov	rsi, r15
	call	re_node_set_insert
	test	al, al
	mov	rbp, r15
	jne	.label_1594
	jmp	.label_1142
.label_1596:
	mov	rax, qword ptr [r12 + 0x18]
	mov	rcx, qword ptr [rax + r15*8]
	mov	qword ptr [rax + rbp*8], rcx
.label_1595:
	mov	dword ptr [rsp + 8], 0
.label_1142:
	mov	eax, dword ptr [rsp + 8]
	add	rsp, 0x28
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_1588:
	mov	rax, qword ptr [rsp + 0x10]
	lea	rdi, [r8 + rax*8]
	mov	rsi, r14
	call	re_node_set_insert
	mov	dword ptr [rsp + 8], 0xc
	test	al, al
	jne	.label_1595
	jmp	.label_1142
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4100d0

	.globl xdectoimax
	.type xdectoimax, @function
xdectoimax:
	push	rax
	mov	r10, r8
	mov	rax, rcx
	mov	rcx, rdx
	mov	rdx, rsi
	mov	dword ptr [rsp], r9d
	mov	esi, 0xa
	mov	r8, rax
	mov	r9, r10
	call	xnumtoimax
	pop	rcx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x410100

	.globl regexp_error
	.type regexp_error, @function
regexp_error:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x18
	mov	r14d, edx
	mov	r15, rsi
	mov	rbp, rdi
	mov	r12, qword ptr [rip + stderr]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_1597
	mov	edx, 5
	call	dcgettext
	mov	r13, rax
	mov	rbx, qword ptr [rip + program_name]
	movsxd	rax, dword ptr [rbp + 0x18]
	mov	rcx, qword ptr [rip + global_argv]
	mov	rdi, qword ptr [rcx + rax*8]
	call	quote
	mov	rbp, rax
	mov	esi, 1
	xor	eax, eax
	mov	rdi, r12
	mov	rdx, r13
	mov	rcx, rbx
	mov	r8, rbp
	call	__fprintf_chk
	test	r15, r15
	je	.label_1598
	mov	rbx, qword ptr [rip + stderr]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_55
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	lea	rsi, [rsp]
	mov	rdi, r15
	call	umaxtostr
	mov	rcx, rax
	mov	esi, 1
	xor	eax, eax
	mov	rdi, rbx
	mov	rdx, rbp
	call	__fprintf_chk
	jmp	.label_1599
.label_932:
	mov	rdi, rax
	call	save_line_to_file
.label_940:
	call	remove_line
	test	rax, rax
	jne	.label_932
	call	close_output_file
.label_1249:
	call	cleanup_fatal
	nop	dword ptr [rax]
.label_1598:
	mov	rdi, qword ptr [rip + stderr]
	mov	esi, 1
	mov	edx, OFFSET FLAT:label_53
	xor	eax, eax
	call	__fprintf_chk
.label_1599:
	test	r14b, r14b
	je	.label_940
	jmp	.label_1249
	nop	word ptr [rax + rax]
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x18
	mov	rbx, r8
	mov	r15, rcx
	mov	r14, rdx
	mov	r13, rsi
	mov	rbp, qword ptr [rsp + 0x58]
	mov	rax, rbx
	or	rax, r14
	or	rax, rbp
	js	.label_942
	movabs	rax, 0x7fffffffffffffff
	test	rbx, rbx
	js	.label_948
	sub	rax, rbx
	cmp	rax, r14
	jl	.label_942
	lea	rdx, [rbx + r14]
	xor	r12d, r12d
	test	rbx, rbx
	jle	.label_949
	xor	r12d, r12d
	test	r14, r14
	jle	.label_954
	mov	qword ptr [rsp + 8], rdi
	mov	qword ptr [rsp], rdx
	mov	rdi, rdx
	mov	qword ptr [rsp + 0x10], r9
	call	malloc
	mov	r12, rax
	test	r12, r12
	je	.label_942
	mov	rdi, r12
	mov	rsi, r13
	mov	rdx, r14
	call	memcpy
	mov	rdi, r12
	add	rdi, r14
	mov	rsi, r15
	mov	rdx, rbx
	call	memcpy
	mov	rdi, qword ptr [rsp + 8]
	mov	r9, qword ptr [rsp + 0x10]
	mov	r13, r12
	mov	rdx, qword ptr [rsp]
	jmp	.label_949
.label_948:
	inc	rax
	sub	rax, rbx
	cmp	rax, r14
	jle	.label_1393
.label_942:
	mov	rax, -2
	jmp	.label_1403
.label_954:
	mov	r13, r15
.label_949:
	mov	r8d, 0
	mov	rsi, r13
	mov	rcx, r9
	mov	r9, rbp
	push	1
	push	qword ptr [rsp + 0x58]
	call	re_search_stub
	add	rsp, 0x10
	mov	rbx, rax
	mov	rdi, r12
	call	free
	mov	rax, rbx
.label_1403:
	add	rsp, 0x18
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
.label_1393:
	add	rbx, r14
	xor	r12d, r12d
	mov	rdx, rbx
	jmp	.label_949
.label_1601:
	mov	edi, ebp
	call	iswalnum
	cmp	ebp, 0x5f
	mov	edx, 1
	je	.label_985
	test	eax, eax
	je	.label_1604
	jmp	.label_985
	nop	
.label_1602:
	and	edx, 2
	xor	edx, 0xa
	jmp	.label_985
	.section	.text
	.align	16
	#Procedure 0x410320

	.globl re_string_context_at
	.type re_string_context_at, @function
re_string_context_at:
	push	rbp
	push	rbx
	push	rax
	mov	rbx, rdi
	test	rsi, rsi
	js	.label_1600
	cmp	qword ptr [rbx + 0x58], rsi
	je	.label_1602
	cmp	dword ptr [rbx + 0x90], 2
	jl	.label_1607
	mov	rax, qword ptr [rbx + 0x10]
	inc	rsi
	nop	dword ptr [rax]
.label_1605:
	mov	ebp, dword ptr [rax + rsi*4 - 4]
	cmp	ebp, -1
	jne	.label_1603
	dec	rsi
	test	rsi, rsi
	jg	.label_1605
	mov	edx, dword ptr [rbx + 0x70]
	jmp	.label_985
.label_1603:
	cmp	byte ptr [rbx + 0x8e], 0
	jne	.label_1601
.label_1604:
	xor	edx, edx
	cmp	ebp, 0xa
	jne	.label_985
.label_1606:
	xor	edx, edx
	cmp	byte ptr [rbx + 0x8d], 0
	setne	dl
	add	edx, edx
.label_985:
	mov	eax, edx
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
.label_1600:
	mov	edx, dword ptr [rbx + 0x70]
	jmp	.label_985
.label_1607:
	mov	rax, qword ptr [rbx + 8]
	mov	rcx, qword ptr [rbx + 0x80]
	movzx	eax, byte ptr [rax + rsi]
	mov	edx, eax
	shr	dl, 6
	movzx	edx, dl
	mov	rcx, qword ptr [rcx + rdx*8]
	mov	edx, 1
	bt	rcx, rax
	jb	.label_985
	xor	edx, edx
	cmp	al, 0xa
	je	.label_1606
	jmp	.label_985
	push	r15
	push	r14
	push	rbx
	mov	r14, qword ptr [rip + slotvec]
	cmp	dword ptr [rip + nslots],  2
	jl	.label_1015
	lea	r15, [r14 + 0x18]
	mov	ebx, 1
	nop	
.label_1020:
	mov	rdi, qword ptr [r15]
	call	free
	inc	rbx
	movsxd	rax, dword ptr [rip + nslots]
	add	r15, 0x10
	cmp	rbx, rax
	jl	.label_1020
.label_1015:
	mov	rdi, qword ptr [r14 + 8]
	mov	eax, OFFSET FLAT:slot0
	cmp	rdi, rax
	je	.label_1026
	call	free
	mov	qword ptr [rip + slotvec0],  0x100
	mov	qword ptr [rip + label_1028], OFFSET FLAT:slot0
.label_1026:
	mov	eax, OFFSET FLAT:slotvec0
	cmp	r14, rax
	je	.label_1030
	mov	rdi, r14
	call	free
	mov	qword ptr [rip + slotvec], OFFSET FLAT:slotvec0
.label_1030:
	mov	dword ptr [rip + nslots],  1
	pop	rbx
	pop	r14
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x410460

	.globl hard_locale
	.type hard_locale, @function
hard_locale:
	push	rbx
	xor	esi, esi
	call	setlocale
	mov	bl, 1
	test	rax, rax
	je	.label_1609
	cmp	byte ptr [rax], 0x43
	jne	.label_1611
	cmp	byte ptr [rax + 1], 0
	je	.label_1608
.label_1611:
	mov	esi, OFFSET FLAT:label_1610
	mov	rdi, rax
	call	strcmp
	test	eax, eax
	jne	.label_1609
.label_1608:
	xor	ebx, ebx
.label_1609:
	mov	eax, ebx
	pop	rbx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4104a0

	.globl version_etc
	.type version_etc, @function
version_etc:
	sub	rsp, 0xd8
	test	al, al
	je	.label_1612
	movaps	xmmword ptr [rsp + 0x50], xmm0
	movaps	xmmword ptr [rsp + 0x60], xmm1
	movaps	xmmword ptr [rsp + 0x70], xmm2
	movaps	xmmword ptr [rsp + 0x80], xmm3
	movaps	xmmword ptr [rsp + 0x90], xmm4
	movaps	xmmword ptr [rsp + 0xa0], xmm5
	movaps	xmmword ptr [rsp + 0xb0], xmm6
	movaps	xmmword ptr [rsp + 0xc0], xmm7
.label_1612:
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
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x410530

	.globl build_trtable
	.type build_trtable, @function
build_trtable:
	push	rbp
	mov	rbp, rsp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0xb8
	mov	r13, rsi
	mov	qword ptr [rbp - 0x70], rdi
	mov	edi, 0x3800
	call	malloc
	mov	r12, rax
	test	r12, r12
	je	.label_1703
	lea	rax, [r13 + 0x58]
	mov	qword ptr [rbp - 0xd0], rax
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [r13 + 0x58], xmm0
	movdqa	xmmword ptr [rbp - 0x50], xmm0
	movdqa	xmmword ptr [rbp - 0x60], xmm0
	xor	r14d, r14d
	cmp	qword ptr [r13 + 0x10], 0
	jle	.label_1664
	lea	rax, [r12 + 0x1800]
	mov	qword ptr [rbp - 0xa8], rax
	lea	rax, [r12 + 0x1818]
	mov	qword ptr [rbp - 0xd8], rax
	xor	r15d, r15d
	mov	qword ptr [rbp - 0x80], r12
	mov	qword ptr [rbp - 0xc0], r13
	nop	word ptr [rax + rax]
.label_1650:
	mov	rax, qword ptr [r13 + 0x18]
	mov	rsi, qword ptr [rax + r14*8]
	mov	rax, qword ptr [rbp - 0x70]
	mov	rdi, qword ptr [rax]
	shl	rsi, 4
	lea	r8, [rdi + rsi]
	mov	edx, dword ptr [rdi + rsi + 8]
	movzx	eax, dl
	cmp	eax, 1
	jne	.label_1723
	mov	cl, byte ptr [r8]
	mov	ebx, 1
	shl	rbx, cl
	shr	cl, 6
	movzx	ecx, cl
	or	qword ptr [rbp + rcx*8 - 0x60], rbx
	jmp	.label_1624
	nop	
.label_1723:
	cmp	dl, 7
	je	.label_1613
	cmp	dl, 5
	je	.label_1616
	cmp	dl, 3
	jne	.label_1619
	mov	rcx, qword ptr [r8]
	movups	xmm0, xmmword ptr [rcx]
	orps	xmm0, xmmword ptr [rbp - 0x60]
	movaps	xmmword ptr [rbp - 0x60], xmm0
	movdqu	xmm0, xmmword ptr [rcx + 0x10]
	por	xmm0, xmmword ptr [rbp - 0x50]
	movdqa	xmmword ptr [rbp - 0x50], xmm0
	jmp	.label_1624
.label_1613:
	pcmpeqd	xmm0, xmm0
	movdqa	xmmword ptr [rbp - 0x60], xmm0
	mov	rcx, qword ptr [rbp - 0x70]
	mov	rcx, qword ptr [rcx + 0xd8]
	mov	rbx, -2
	test	cl, 0x40
	jne	.label_1638
	mov	qword ptr [rbp - 0x60], -0x401
	mov	rbx, -0x402
.label_1638:
	test	cl, cl
	jns	.label_1624
	mov	qword ptr [rbp - 0x60], rbx
	jmp	.label_1624
.label_1616:
	mov	rbx, qword ptr [rbp - 0x70]
	cmp	dword ptr [rbx + 0xb4], 2
	jl	.label_1652
	mov	rcx, qword ptr [rbx + 0x78]
	movdqu	xmm0, xmmword ptr [rcx]
	por	xmm0, xmmword ptr [rbp - 0x60]
	movdqa	xmmword ptr [rbp - 0x60], xmm0
	movdqu	xmm1, xmmword ptr [rcx + 0x10]
	por	xmm1, xmmword ptr [rbp - 0x50]
	movdqa	xmmword ptr [rbp - 0x50], xmm1
	movq	rcx, xmm0
	jmp	.label_1656
.label_1652:
	pcmpeqd	xmm0, xmm0
	movdqa	xmmword ptr [rbp - 0x50], xmm0
	movdqa	xmmword ptr [rbp - 0x60], xmm0
	mov	rcx, -1
.label_1656:
	mov	rbx, qword ptr [rbx + 0xd8]
	test	bl, 0x40
	jne	.label_1668
	and	rcx, 0xfffffffffffffbff
	mov	qword ptr [rbp - 0x60], rcx
.label_1668:
	test	bl, bl
	jns	.label_1624
	and	rcx, 0xfffffffffffffffe
	mov	qword ptr [rbp - 0x60], rcx
	nop	dword ptr [rax + rax]
.label_1624:
	shr	edx, 8
	mov	ecx, edx
	and	ecx, 0x3ff
	je	.label_1626
	test	dl, 0x20
	je	.label_1675
	mov	rcx, qword ptr [rbp - 0x60]
	test	ch, 4
	pxor	xmm0, xmm0
	movdqa	xmmword ptr [rbp - 0x50], xmm0
	movdqa	xmmword ptr [rbp - 0x60], xmm0
	je	.label_1619
	mov	qword ptr [rbp - 0x60], 0x400
.label_1675:
	test	dl, dl
	js	.label_1632
	lea	rcx, [rdi + rsi + 8]
	test	dl, 4
	je	.label_1686
	cmp	eax, 1
	jne	.label_1691
	test	byte ptr [rcx + 2], 0x40
	je	.label_1632
.label_1691:
	mov	r9, r8
	mov	rsi, qword ptr [rbp - 0x70]
	cmp	dword ptr [rsi + 0xb4], 1
	jle	.label_1695
	mov	rdi, rsi
	mov	rsi, qword ptr [rdi + 0x78]
	movdqu	xmm0, xmmword ptr [rdi + 0xb8]
	movdqu	xmm1, xmmword ptr [rsi]
	pcmpeqd	xmm2, xmm2
	pxor	xmm1, xmm2
	por	xmm1, xmm0
	pand	xmm1, xmmword ptr [rbp - 0x60]
	movdqa	xmmword ptr [rbp - 0x60], xmm1
	movq	r8, xmm1
	pshufd	xmm0, xmm1, 0x4e
	movq	rbx, xmm0
	movdqu	xmm0, xmmword ptr [rdi + 0xc8]
	movdqu	xmm1, xmmword ptr [rsi + 0x10]
	pxor	xmm1, xmm2
	por	xmm1, xmm0
	pand	xmm1, xmmword ptr [rbp - 0x50]
	movq	rdi, xmm1
	or	rdi, r8
	or	rdi, rbx
	movdqa	xmmword ptr [rbp - 0x50], xmm1
	pshufd	xmm0, xmm1, 0x4e
	movq	rsi, xmm0
	or	rsi, rdi
	jmp	.label_1700
.label_1695:
	movdqu	xmm0, xmmword ptr [rsi + 0xb8]
	pand	xmm0, xmmword ptr [rbp - 0x60]
	movdqa	xmmword ptr [rbp - 0x60], xmm0
	movq	r8, xmm0
	pshufd	xmm0, xmm0, 0x4e
	movq	rdi, xmm0
	movdqu	xmm0, xmmword ptr [rsi + 0xc8]
	pand	xmm0, xmmword ptr [rbp - 0x50]
	movq	rbx, xmm0
	or	rbx, r8
	or	rbx, rdi
	movdqa	xmmword ptr [rbp - 0x50], xmm0
	pshufd	xmm0, xmm0, 0x4e
	movq	rsi, xmm0
	or	rsi, rbx
.label_1700:
	test	rsi, rsi
	mov	r8, r9
	je	.label_1619
.label_1686:
	test	dl, 8
	je	.label_1626
	cmp	eax, 1
	jne	.label_1629
	test	byte ptr [rcx + 2], 0x40
	jne	.label_1632
.label_1629:
	mov	rsi, qword ptr [rbp - 0x70]
	cmp	dword ptr [rsi + 0xb4], 1
	jle	.label_1634
	mov	rcx, qword ptr [rsi + 0x78]
	movdqu	xmm0, xmmword ptr [rsi + 0xb8]
	movdqu	xmm1, xmmword ptr [rcx]
	pand	xmm1, xmm0
	pandn	xmm1, xmmword ptr [rbp - 0x60]
	movdqa	xmmword ptr [rbp - 0x60], xmm1
	movq	rdx, xmm1
	pshufd	xmm0, xmm1, 0x4e
	mov	rdi, rsi
	movq	rsi, xmm0
	movdqu	xmm0, xmmword ptr [rdi + 0xc8]
	movdqu	xmm1, xmmword ptr [rcx + 0x10]
	pand	xmm1, xmm0
	pandn	xmm1, xmmword ptr [rbp - 0x50]
	movq	rdi, xmm1
	or	rdi, rdx
	or	rdi, rsi
	movdqa	xmmword ptr [rbp - 0x50], xmm1
	pshufd	xmm0, xmm1, 0x4e
	movq	rcx, xmm0
	or	rcx, rdi
	jmp	.label_1639
	nop	dword ptr [rax]
.label_1632:
	pxor	xmm0, xmm0
	movdqa	xmmword ptr [rbp - 0x50], xmm0
	movdqa	xmmword ptr [rbp - 0x60], xmm0
	jmp	.label_1619
.label_1634:
	movdqu	xmm0, xmmword ptr [rsi + 0xb8]
	pandn	xmm0, xmmword ptr [rbp - 0x60]
	movdqa	xmmword ptr [rbp - 0x60], xmm0
	movq	rcx, xmm0
	pshufd	xmm0, xmm0, 0x4e
	movq	rdx, xmm0
	movdqu	xmm0, xmmword ptr [rsi + 0xc8]
	pandn	xmm0, xmmword ptr [rbp - 0x50]
	movq	rsi, xmm0
	or	rsi, rcx
	or	rsi, rdx
	movdqa	xmmword ptr [rbp - 0x50], xmm0
	pshufd	xmm0, xmm0, 0x4e
	movq	rcx, xmm0
	or	rcx, rsi
.label_1639:
	test	rcx, rcx
	je	.label_1619
	nop	word ptr [rax + rax]
.label_1626:
	test	r15, r15
	mov	qword ptr [rbp - 0x90], r14
	jle	.label_1681
	cmp	eax, 1
	jne	.label_1684
	mov	rbx, qword ptr [rbp - 0xa8]
	mov	rsi, r12
	xor	edi, edi
	mov	qword ptr [rbp - 0xc8], r8
	jmp	.label_1670
.label_1681:
	xor	edi, edi
	jmp	.label_1622
.label_1684:
	mov	r9, qword ptr [rbp - 0x60]
	mov	rsi, qword ptr [rbp - 0x58]
	mov	r11, qword ptr [rbp - 0x50]
	mov	r14, qword ptr [rbp - 0x48]
	mov	rbx, qword ptr [rbp - 0xd8]
	mov	qword ptr [rbp - 0x38], r12
	xor	edi, edi
	jmp	.label_1711
.label_1718:
	mov	rdi, qword ptr [rbp - 0x68]
	mov	rsi, qword ptr [rbp - 0x98]
	mov	r11, qword ptr [rbp - 0xb8]
	mov	r9, r14
	jmp	.label_1692
.label_1678:
	pxor	xmm0, xmm0
	mov	rax, qword ptr [rbp - 0xb0]
	movdqu	xmmword ptr [rax], xmm0
	mov	r13d, 0x1a
	mov	r15, qword ptr [rbp - 0x30]
	mov	rdi, qword ptr [rbp - 0x68]
	mov	r9, qword ptr [rbp - 0xa0]
	mov	rsi, qword ptr [rbp - 0x98]
	mov	r11, qword ptr [rbp - 0xb8]
	jmp	.label_1692
.label_1711:
	mov	qword ptr [rbp - 0x30], r15
	mov	qword ptr [rbp - 0x68], rdi
	mov	rdx, qword ptr [rbx - 0x18]
	mov	rax, qword ptr [rbx - 0x10]
	mov	rdi, rdx
	and	rdi, r9
	mov	r8, rax
	and	r8, rsi
	mov	rcx, r8
	mov	qword ptr [rbp - 0xb0], rdi
	or	rcx, rdi
	mov	r10, qword ptr [rbx - 8]
	mov	r15, r10
	and	r15, r11
	or	rcx, r15
	mov	qword ptr [rbp - 0x88], rbx
	mov	rdi, qword ptr [rbx]
	mov	r12, r11
	mov	r11, rdi
	and	r11, r14
	mov	r13d, 0x13
	or	rcx, r11
	je	.label_1631
	mov	rcx, r9
	not	rcx
	and	rcx, rdx
	not	rdx
	and	r9, rdx
	mov	qword ptr [rbp - 0xa0], r9
	mov	qword ptr [rbp - 0x60], r9
	mov	rbx, rsi
	not	rbx
	and	rbx, rax
	mov	rdx, rbx
	or	rdx, rcx
	not	rax
	and	rsi, rax
	mov	qword ptr [rbp - 0x98], rsi
	mov	qword ptr [rbp - 0x58], rsi
	mov	rax, r12
	not	rax
	and	rax, r10
	or	rdx, rax
	not	r10
	and	r12, r10
	mov	qword ptr [rbp - 0xb8], r12
	mov	qword ptr [rbp - 0x50], r12
	mov	rsi, r14
	not	rsi
	and	rsi, rdi
	not	rdi
	and	r14, rdi
	mov	qword ptr [rbp - 0x48], r14
	or	rdx, rsi
	mov	r12, r14
	je	.label_1618
	mov	r10, qword ptr [rbp - 0x30]
	mov	rdx, r10
	shl	rdx, 5
	mov	rdi, qword ptr [rbp - 0xa8]
	mov	qword ptr [rdi + rdx], rcx
	mov	qword ptr [rdi + rdx + 8], rbx
	mov	qword ptr [rdi + rdx + 0x10], rax
	mov	qword ptr [rdi + rdx + 0x18], rsi
	mov	rbx, qword ptr [rbp - 0x88]
	mov	rax, qword ptr [rbp - 0xb0]
	mov	qword ptr [rbx - 0x18], rax
	mov	qword ptr [rbx - 0x10], r8
	mov	qword ptr [rbx - 8], r15
	mov	qword ptr [rbx], r11
	lea	r14, [r10 + r10*2]
	mov	r13, qword ptr [rbp - 0x80]
	lea	rcx, [r13 + r14*8]
	mov	rax, qword ptr [rbp - 0x38]
	mov	rdi, qword ptr [rax + 8]
	mov	qword ptr [r13 + r14*8 + 8], rdi
	mov	r15, qword ptr [rax + 8]
	test	r15, r15
	jle	.label_1658
	mov	qword ptr [rbp - 0xb0], rcx
	mov	qword ptr [rcx], rdi
	shl	rdi, 3
	call	malloc
	mov	qword ptr [r13 + r14*8 + 0x10], rax
	test	rax, rax
	je	.label_1678
	mov	rcx, qword ptr [rbp - 0x38]
	mov	rsi, qword ptr [rcx + 0x10]
	shl	r15, 3
	mov	rdi, rax
	mov	rdx, r15
	call	memcpy
	jmp	.label_1685
	nop	word ptr cs:[rax + rax]
.label_1631:
	mov	rdi, qword ptr [rbp - 0x68]
	mov	r15, qword ptr [rbp - 0x30]
	mov	r11, r12
	mov	r12, r14
	mov	rbx, qword ptr [rbp - 0x88]
	jmp	.label_1692
	nop	word ptr [rax + rax]
.label_1618:
	mov	rax, qword ptr [rbp - 0xc0]
	mov	r14, qword ptr [rbp - 0xa0]
	mov	r15, qword ptr [rbp - 0x30]
	mov	rbx, qword ptr [rbp - 0x88]
	jmp	.label_1701
.label_1658:
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [rcx], xmm0
	mov	qword ptr [rcx + 0x10], 0
.label_1685:
	mov	r14, qword ptr [rbp - 0xa0]
	mov	r15, qword ptr [rbp - 0x30]
	inc	r15
	mov	rax, qword ptr [rbp - 0xc0]
.label_1701:
	mov	rax, qword ptr [rax + 0x18]
	mov	rcx, qword ptr [rbp - 0x90]
	mov	rsi, qword ptr [rax + rcx*8]
	mov	rdi, qword ptr [rbp - 0x38]
	call	re_node_set_insert
	mov	r13d, 0x1a
	test	al, al
	je	.label_1718
	mov	rsi, qword ptr [rbp - 0x98]
	mov	rax, rsi
	mov	r9, r14
	or	rax, r9
	mov	r11, qword ptr [rbp - 0xb8]
	mov	rcx, r11
	or	rcx, r12
	or	rcx, rax
	mov	r13d, 0
	mov	eax, 0x11
	cmove	r13d, eax
	mov	rdi, qword ptr [rbp - 0x68]
.label_1692:
	mov	eax, r13d
	and	al, 0x1f
	je	.label_1733
	cmp	al, 0x13
	jne	.label_1663
.label_1733:
	mov	r14, r12
	inc	rdi
	add	qword ptr [rbp - 0x38], 0x18
	add	rbx, 0x20
	cmp	rdi, r15
	jl	.label_1711
	jmp	.label_1622
.label_1731:
	pxor	xmm0, xmm0
	mov	rax, qword ptr [rbp - 0xa0]
	movdqu	xmmword ptr [rax], xmm0
	mov	r13d, 0x1a
	mov	r15, qword ptr [rbp - 0x30]
	mov	r8, qword ptr [rbp - 0xc8]
	mov	rdi, qword ptr [rbp - 0x68]
	mov	rsi, qword ptr [rbp - 0x38]
	jmp	.label_1625
	nop	word ptr cs:[rax + rax]
.label_1670:
	movzx	eax, byte ptr [r8]
	mov	ecx, eax
	shr	cl, 6
	movzx	ecx, cl
	mov	rdx, qword ptr [rbx + rcx*8]
	mov	r13d, 0x13
	bt	rdx, rax
	jae	.label_1625
	mov	qword ptr [rbp - 0x38], rsi
	mov	qword ptr [rbp - 0x30], r15
	mov	rdx, qword ptr [rbp - 0x60]
	mov	r11, qword ptr [rbp - 0x58]
	mov	r9, qword ptr [rbx]
	mov	rcx, qword ptr [rbx + 8]
	mov	rax, r9
	and	rax, rdx
	mov	rsi, rcx
	and	rsi, r11
	mov	qword ptr [rbp - 0xa0], rsi
	mov	qword ptr [rbp - 0xb0], rax
	or	rsi, rax
	mov	rax, qword ptr [rbp - 0x50]
	mov	r12, qword ptr [rbx + 0x10]
	mov	r15, r12
	mov	qword ptr [rbp - 0x88], rax
	and	r15, rax
	or	rsi, r15
	mov	rax, qword ptr [rbp - 0x48]
	mov	r14, qword ptr [rbx + 0x18]
	mov	r10, r14
	and	r10, rax
	or	rsi, r10
	je	.label_1653
	mov	qword ptr [rbp - 0x68], rdi
	mov	rsi, rcx
	mov	rcx, rdx
	not	rcx
	and	rcx, r9
	not	r9
	and	r9, rdx
	mov	qword ptr [rbp - 0xb8], r9
	mov	qword ptr [rbp - 0x60], r9
	mov	r8, r11
	not	r8
	and	r8, rsi
	mov	rdx, r8
	or	rdx, rcx
	not	rsi
	and	rsi, r11
	mov	qword ptr [rbp - 0x98], rsi
	mov	qword ptr [rbp - 0x58], rsi
	mov	rdi, rax
	mov	rsi, qword ptr [rbp - 0x88]
	mov	rax, rsi
	not	rax
	and	rax, r12
	or	rdx, rax
	not	r12
	and	r12, rsi
	mov	qword ptr [rbp - 0x50], r12
	mov	rsi, rdi
	not	rsi
	and	rsi, r14
	not	r14
	and	r14, rdi
	mov	qword ptr [rbp - 0x48], r14
	or	rdx, rsi
	mov	qword ptr [rbp - 0x88], r14
	je	.label_1677
	mov	r11, qword ptr [rbp - 0x30]
	mov	rdx, r11
	shl	rdx, 5
	mov	rdi, qword ptr [rbp - 0xa8]
	mov	qword ptr [rdi + rdx], rcx
	mov	qword ptr [rdi + rdx + 8], r8
	mov	qword ptr [rdi + rdx + 0x10], rax
	mov	qword ptr [rdi + rdx + 0x18], rsi
	mov	rax, qword ptr [rbp - 0xb0]
	mov	qword ptr [rbx], rax
	mov	rax, qword ptr [rbp - 0xa0]
	mov	qword ptr [rbx + 8], rax
	mov	qword ptr [rbx + 0x10], r15
	mov	qword ptr [rbx + 0x18], r10
	lea	r15, [r11 + r11*2]
	mov	r13, qword ptr [rbp - 0x80]
	lea	rcx, [r13 + r15*8]
	mov	rax, qword ptr [rbp - 0x38]
	mov	rdi, qword ptr [rax + 8]
	mov	qword ptr [r13 + r15*8 + 8], rdi
	mov	rax, qword ptr [rax + 8]
	test	rax, rax
	jle	.label_1620
	mov	qword ptr [rbp - 0xb0], rax
	mov	qword ptr [rbp - 0xa0], rcx
	mov	qword ptr [rcx], rdi
	shl	rdi, 3
	call	malloc
	mov	qword ptr [r13 + r15*8 + 0x10], rax
	test	rax, rax
	mov	r14, qword ptr [rbp - 0x90]
	je	.label_1731
	mov	r15, qword ptr [rbp - 0x38]
	mov	rsi, qword ptr [r15 + 0x10]
	mov	rdx, qword ptr [rbp - 0xb0]
	shl	rdx, 3
	mov	rdi, rax
	call	memcpy
	inc	qword ptr [rbp - 0x30]
	jmp	.label_1617
	nop	dword ptr [rax]
.label_1653:
	mov	r15, qword ptr [rbp - 0x30]
	mov	rsi, qword ptr [rbp - 0x38]
	jmp	.label_1625
.label_1620:
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [rcx], xmm0
	mov	qword ptr [rcx + 0x10], 0
	inc	r11
	mov	qword ptr [rbp - 0x30], r11
.label_1677:
	mov	r14, qword ptr [rbp - 0x90]
	mov	r15, qword ptr [rbp - 0x38]
.label_1617:
	mov	rax, qword ptr [rbp - 0xc0]
	mov	rax, qword ptr [rax + 0x18]
	mov	rsi, qword ptr [rax + r14*8]
	mov	rdi, r15
	call	re_node_set_insert
	mov	r13d, 0x1a
	test	al, al
	mov	rsi, r15
	je	.label_1645
	mov	rax, qword ptr [rbp - 0x98]
	or	rax, qword ptr [rbp - 0xb8]
	or	r12, qword ptr [rbp - 0x88]
	or	r12, rax
	mov	r13d, 0
	mov	eax, 0x11
	cmove	r13d, eax
.label_1645:
	mov	r8, qword ptr [rbp - 0xc8]
	mov	rdi, qword ptr [rbp - 0x68]
	mov	r15, qword ptr [rbp - 0x30]
.label_1625:
	mov	eax, r13d
	and	al, 0x1f
	je	.label_1661
	cmp	al, 0x13
	jne	.label_1663
.label_1661:
	inc	rdi
	add	rsi, 0x18
	add	rbx, 0x20
	cmp	rdi, r15
	jl	.label_1670
	jmp	.label_1622
.label_1663:
	cmp	al, 0x11
	jne	.label_1667
	nop	
.label_1622:
	cmp	rdi, r15
	mov	r12, qword ptr [rbp - 0x80]
	mov	r13, qword ptr [rbp - 0xc0]
	mov	r14, qword ptr [rbp - 0x90]
	jne	.label_1619
	mov	rax, rdi
	shl	rax, 5
	movaps	xmm0, xmmword ptr [rbp - 0x60]
	movdqa	xmm1, xmmword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rbp - 0xa8]
	movdqu	xmmword ptr [rcx + rax + 0x10], xmm1
	movups	xmmword ptr [rcx + rax], xmm0
	lea	r15, [rdi + rdi*2]
	mov	rax, qword ptr [r13 + 0x18]
	mov	r14, qword ptr [rax + r14*8]
	movdqa	xmm0, xmmword ptr [rip + label_51]
	movdqu	xmmword ptr [r12 + r15*8], xmm0
	mov	rbx, rdi
	mov	edi, 8
	call	malloc
	mov	qword ptr [r12 + r15*8 + 0x10], rax
	test	rax, rax
	je	.label_1687
	mov	qword ptr [rax], r14
	inc	rbx
	pxor	xmm0, xmm0
	movdqa	xmmword ptr [rbp - 0x50], xmm0
	movdqa	xmmword ptr [rbp - 0x60], xmm0
	mov	r15, rbx
	jmp	.label_1693
.label_1667:
	and	r13b, 0x1f
	jne	.label_1699
	mov	r12, qword ptr [rbp - 0x80]
	mov	r13, qword ptr [rbp - 0xc0]
.label_1693:
	mov	r14, qword ptr [rbp - 0x90]
.label_1619:
	inc	r14
	cmp	r14, qword ptr [r13 + 0x10]
	jl	.label_1650
	test	r15, r15
	jle	.label_1710
.label_1660:
	lea	rax, [r15 + 1]
	mov	qword ptr [rbp - 0x60], rax
	mov	qword ptr [rbp - 0x58], 0
	lea	rdi, [r15*8 + 8]
	call	malloc
	mov	qword ptr [rbp - 0x50], rax
	mov	ecx, 0xc
	test	rax, rax
	je	.label_1715
	xor	ecx, ecx
.label_1715:
	mov	dword ptr [rbp - 0x74], ecx
	movabs	rcx, 0xaaaaaaaaaaaa855
	cmp	r15, rcx
	mov	rsi, qword ptr [rbp - 0x70]
	ja	.label_1719
	test	rax, rax
	je	.label_1719
	lea	rax, [r15*8]
	lea	rdi, [rax + rax*2]
	lea	rax, [rax + rax*2 + 0x3800]
	cmp	rax, 0xfbf
	ja	.label_1729
	mov	rax, rsp
	add	rdi, 0xf
	and	rdi, 0xfffffffffffffff0
	sub	rax, rdi
	mov	rsp, rax
	mov	dword ptr [rbp - 0xb8], 0
	jmp	.label_1732
.label_1729:
	call	malloc
	mov	rsi, qword ptr [rbp - 0x70]
	test	rax, rax
	je	.label_1719
	mov	cl, 1
	mov	dword ptr [rbp - 0xb8], ecx
.label_1732:
	mov	qword ptr [rbp - 0x38], rax
	lea	rax, [rax + r15*8]
	mov	qword ptr [rbp - 0x30], r15
	mov	qword ptr [rbp - 0xb0], rax
	lea	rax, [rax + r15*8]
	mov	qword ptr [rbp - 0xa0], rax
	xor	eax, eax
	mov	qword ptr [rbp - 0x88], rax
	lea	rbx, [rbp - 0x60]
	xor	eax, eax
	mov	qword ptr [rbp - 0x90], rax
	xor	r15d, r15d
	xor	eax, eax
	mov	qword ptr [rbp - 0x68], rax
	xor	r13d, r13d
	xor	eax, eax
	mov	qword ptr [rbp - 0x98], rax
	nop	dword ptr [rax + rax]
.label_1730:
	mov	qword ptr [rbp - 0x58], 0
	lea	rcx, [r13 + r13*2]
	mov	rax, qword ptr [r12 + rcx*8 + 8]
	test	rax, rax
	jle	.label_1665
	mov	rdx, qword ptr [rbp - 0x80]
	lea	r14, [rdx + rcx*8 + 8]
	xor	r12d, r12d
	nop	word ptr cs:[rax + rax]
.label_1673:
	mov	rcx, qword ptr [r14 + 8]
	mov	rcx, qword ptr [rcx + r12*8]
	mov	rdx, qword ptr [rsi + 0x18]
	mov	rcx, qword ptr [rdx + rcx*8]
	cmp	rcx, -1
	je	.label_1724
	mov	rax, qword ptr [rsi + 0x30]
	lea	rcx, [rcx + rcx*2]
	lea	rsi, [rax + rcx*8]
	mov	rdi, rbx
	call	re_node_set_merge
	mov	dword ptr [rbp - 0x74], eax
	test	eax, eax
	jne	.label_935
	mov	rax, qword ptr [r14]
	mov	rsi, qword ptr [rbp - 0x70]
.label_1724:
	inc	r12
	cmp	r12, rax
	jl	.label_1673
.label_1665:
	xor	ecx, ecx
	lea	rdi, [rbp - 0x74]
	mov	rdx, rbx
	call	re_acquire_state_context
	mov	rcx, qword ptr [rbp - 0x38]
	mov	qword ptr [rcx + r13*8], rax
	test	rax, rax
	jne	.label_1676
	mov	ecx, dword ptr [rbp - 0x74]
	test	ecx, ecx
	jne	.label_935
.label_1676:
	cmp	byte ptr [rax + 0x68], 0
	js	.label_1680
	mov	rcx, qword ptr [rbp - 0xb0]
	mov	qword ptr [rcx + r13*8], rax
	mov	rax, qword ptr [rbp - 0x38]
	mov	rax, qword ptr [rax + r13*8]
	mov	rcx, qword ptr [rbp - 0xa0]
	mov	qword ptr [rcx + r13*8], rax
	jmp	.label_931
	nop	word ptr cs:[rax + rax]
.label_1680:
	mov	ecx, 1
	lea	rdi, [rbp - 0x74]
	mov	rsi, qword ptr [rbp - 0x70]
	mov	rdx, rbx
	call	re_acquire_state_context
	mov	rcx, qword ptr [rbp - 0xb0]
	mov	qword ptr [rcx + r13*8], rax
	test	rax, rax
	jne	.label_915
	mov	ecx, dword ptr [rbp - 0x74]
	test	ecx, ecx
	jne	.label_935
.label_915:
	mov	rcx, qword ptr [rbp - 0x38]
	cmp	qword ptr [rcx + r13*8], rax
	je	.label_919
	mov	rdx, qword ptr [rbp - 0x70]
	cmp	dword ptr [rdx + 0xb4], 1
	mov	al, 1
	jg	.label_921
	mov	rax, qword ptr [rbp - 0x98]
.label_921:
	mov	qword ptr [rbp - 0x98], rax
	jmp	.label_925
.label_919:
	mov	rdx, qword ptr [rbp - 0x70]
.label_925:
	mov	ecx, 2
	lea	rdi, [rbp - 0x74]
	mov	rsi, rdx
	mov	rdx, rbx
	call	re_acquire_state_context
	mov	rcx, qword ptr [rbp - 0xa0]
	mov	qword ptr [rcx + r13*8], rax
	test	rax, rax
	jne	.label_931
	mov	eax, dword ptr [rbp - 0x74]
	test	eax, eax
	jne	.label_935
	nop	dword ptr [rax]
.label_931:
	mov	rax, r13
	shl	rax, 5
	mov	rcx, qword ptr [rbp - 0xa8]
	mov	rdx, qword ptr [rbp - 0x68]
	or	rdx, qword ptr [rcx + rax]
	mov	qword ptr [rbp - 0x68], rdx
	or	r15, qword ptr [rcx + rax + 8]
	mov	rdx, qword ptr [rbp - 0x90]
	or	rdx, qword ptr [rcx + rax + 0x10]
	mov	qword ptr [rbp - 0x90], rdx
	mov	rdx, qword ptr [rbp - 0x88]
	or	rdx, qword ptr [rcx + rax + 0x18]
	mov	qword ptr [rbp - 0x88], rdx
	inc	r13
	cmp	r13, qword ptr [rbp - 0x30]
	mov	r12, qword ptr [rbp - 0x80]
	mov	rsi, qword ptr [rbp - 0x70]
	jl	.label_1730
	mov	rax, qword ptr [rbp - 0x98]
	and	al, 1
	mov	qword ptr [rbp - 0x98], rax
	mov	edi, 8
	jne	.label_1679
	mov	esi, 0x100
	call	rpl_calloc
	mov	rcx, qword ptr [rbp - 0xd0]
	mov	qword ptr [rcx], rax
	test	rax, rax
	je	.label_935
	cmp	qword ptr [rbp - 0x68], 0
	mov	r14, qword ptr [rbp - 0x80]
	mov	r9, qword ptr [rbp - 0xa8]
	mov	rdi, qword ptr [rbp - 0x38]
	je	.label_1648
	lea	r8, [rdi - 8]
	mov	r10d, 1
	xor	esi, esi
	mov	rdx, qword ptr [rbp - 0x68]
	jmp	.label_1657
.label_1699:
	cmp	r13b, 0x1a
	mov	r12, qword ptr [rbp - 0x80]
	jne	.label_1660
.label_1689:
	mov	r14, -1
	test	r15, r15
	jle	.label_1664
	mov	rbx, r12
	add	rbx, 0x10
	nop	word ptr cs:[rax + rax]
.label_1671:
	mov	rdi, qword ptr [rbx]
	call	free
	add	rbx, 0x18
	dec	r15
	jne	.label_1671
.label_1664:
	mov	r15, r14
.label_1710:
	mov	rdi, r12
	call	free
	test	r15, r15
	je	.label_1688
	xor	eax, eax
	jmp	.label_1674
.label_1688:
	mov	edi, 8
	mov	esi, 0x100
	call	rpl_calloc
	mov	rcx, qword ptr [rbp - 0xd0]
	mov	qword ptr [rcx], rax
	test	rax, rax
	setne	al
	jmp	.label_1674
.label_1696:
	mov	rbx, r9
	mov	rcx, r8
.label_1682:
	add	rcx, 8
	test	qword ptr [rbx], r10
	lea	rbx, [rbx + 0x20]
	je	.label_1682
	mov	rbx, qword ptr [rbp - 0x70]
	test	qword ptr [rbx + 0xb8], r10
	je	.label_1643
	mov	rbx, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rcx + rbx*8]
	jmp	.label_1690
.label_1643:
	mov	rcx, qword ptr [rcx]
.label_1690:
	mov	qword ptr [rax + rsi*8], rcx
	jmp	.label_1669
	nop	
.label_1657:
	test	dl, 1
	jne	.label_1696
.label_1669:
	add	r10, r10
	shr	rdx, 1
	inc	rsi
	test	rdx, rdx
	jne	.label_1657
.label_1648:
	test	r15, r15
	mov	r11, qword ptr [rbp - 0x88]
	mov	r12, qword ptr [rbp - 0x90]
	je	.label_1702
	lea	r8, [rdi - 8]
	lea	r10, [r14 + 0x1808]
	mov	esi, 1
	mov	ebx, 0x40
	jmp	.label_1707
.label_1722:
	mov	rdx, r10
	mov	rcx, r8
.label_1713:
	add	rcx, 8
	test	qword ptr [rdx], rsi
	lea	rdx, [rdx + 0x20]
	je	.label_1713
	mov	rdx, qword ptr [rbp - 0x70]
	test	qword ptr [rdx + 0xc0], rsi
	je	.label_1712
	mov	rdx, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rcx + rdx*8]
	jmp	.label_1716
.label_1712:
	mov	rcx, qword ptr [rcx]
.label_1716:
	mov	qword ptr [rax + rbx*8], rcx
	jmp	.label_1720
.label_1707:
	test	r15b, 1
	jne	.label_1722
.label_1720:
	add	rsi, rsi
	shr	r15, 1
	inc	rbx
	test	r15, r15
	jne	.label_1707
.label_1702:
	test	r12, r12
	mov	r15, qword ptr [rbp - 0x30]
	je	.label_1725
	lea	r8, [rdi - 8]
	lea	r10, [r14 + 0x1810]
	mov	esi, 1
	mov	ebx, 0x80
	jmp	.label_1633
.label_1630:
	mov	rdx, r10
	mov	rcx, r8
.label_1623:
	add	rcx, 8
	test	qword ptr [rdx], rsi
	lea	rdx, [rdx + 0x20]
	je	.label_1623
	mov	rdx, qword ptr [rbp - 0x70]
	test	qword ptr [rdx + 0xc8], rsi
	je	.label_1640
	mov	rcx, qword ptr [rcx + r15*8]
	jmp	.label_1615
.label_1640:
	mov	rcx, qword ptr [rcx]
.label_1615:
	mov	qword ptr [rax + rbx*8], rcx
	jmp	.label_1621
	nop	word ptr cs:[rax + rax]
.label_1633:
	test	r12b, 1
	jne	.label_1630
.label_1621:
	add	rsi, rsi
	shr	r12, 1
	inc	rbx
	test	r12, r12
	jne	.label_1633
.label_1725:
	test	r11, r11
	je	.label_1637
	lea	r8, [rdi - 8]
	lea	r10, [r14 + 0x1818]
	mov	esi, 1
	mov	ebx, 0xc0
	jmp	.label_1641
.label_1659:
	mov	rdx, r10
	mov	rcx, r8
.label_1646:
	add	rcx, 8
	test	qword ptr [rdx], rsi
	lea	rdx, [rdx + 0x20]
	je	.label_1646
	mov	rdx, qword ptr [rbp - 0x70]
	test	qword ptr [rdx + 0xd0], rsi
	je	.label_1644
	mov	rcx, qword ptr [rcx + r15*8]
	jmp	.label_1727
.label_1644:
	mov	rcx, qword ptr [rcx]
.label_1727:
	mov	qword ptr [rax + rbx*8], rcx
	jmp	.label_1655
	nop	
.label_1641:
	test	r11b, 1
	jne	.label_1659
.label_1655:
	add	rsi, rsi
	shr	r11, 1
	inc	rbx
	test	r11, r11
	jne	.label_1641
.label_1637:
	mov	rcx, qword ptr [rbp - 0x68]
	test	ch, 4
	je	.label_1636
	xor	ecx, ecx
	nop	
.label_1666:
	test	byte ptr [r9 + 1], 4
	jne	.label_1705
	inc	rcx
	add	r9, 0x20
	cmp	rcx, r15
	jl	.label_1666
	jmp	.label_1636
.label_1705:
	mov	rdx, r15
	shl	rdx, 4
	add	rdx, rdi
	mov	rsi, qword ptr [rbp - 0x98]
	test	sil, sil
	mov	rcx, qword ptr [rdx + rcx*8]
	mov	qword ptr [rax + 0x50], rcx
	je	.label_1636
	mov	qword ptr [rax + 0x850], rcx
.label_1636:
	mov	eax, dword ptr [rbp - 0xb8]
	test	al, al
	je	.label_1672
	call	free
.label_1672:
	mov	rdi, qword ptr [rbp - 0x50]
	call	free
	mov	rbx, r14
	add	rbx, 0x10
	nop	dword ptr [rax]
.label_1717:
	mov	rdi, qword ptr [rbx]
	call	free
	add	rbx, 0x18
	dec	r15
	jne	.label_1717
	mov	rdi, r14
	call	free
	mov	al, 1
.label_1674:
	lea	rsp, [rbp - 0x28]
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_1687:
	lea	rax, [r12 + r15*8]
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [rax], xmm0
	mov	r15, rbx
	jmp	.label_1689
.label_1719:
	mov	rdi, qword ptr [rbp - 0x50]
	call	free
	jmp	.label_1698
.label_1703:
	xor	eax, eax
	jmp	.label_1674
.label_1679:
	mov	esi, 0x200
	call	rpl_calloc
	mov	rcx, qword ptr [rbp - 0xc0]
	mov	qword ptr [rcx + 0x60], rax
	test	rax, rax
	je	.label_935
	cmp	qword ptr [rbp - 0x68], 0
	mov	r14, qword ptr [rbp - 0x80]
	mov	rdi, qword ptr [rbp - 0x38]
	je	.label_1708
	lea	r8, [rdi - 8]
	mov	r9d, 1
	xor	esi, esi
	mov	rdx, qword ptr [rbp - 0x68]
	jmp	.label_1628
.label_935:
	mov	eax, dword ptr [rbp - 0xb8]
	test	al, al
	je	.label_1714
	mov	rdi, qword ptr [rbp - 0x38]
	call	free
.label_1714:
	mov	rdi, qword ptr [rbp - 0x50]
	call	free
	mov	r15, qword ptr [rbp - 0x30]
	test	r15, r15
	mov	r12, qword ptr [rbp - 0x80]
	jle	.label_1721
.label_1698:
	mov	rbx, r12
	add	rbx, 0x10
	nop	
.label_1726:
	mov	rdi, qword ptr [rbx]
	call	free
	add	rbx, 0x18
	dec	r15
	jne	.label_1726
.label_1721:
	mov	rdi, r12
	call	free
	xor	eax, eax
	jmp	.label_1674
.label_1627:
	mov	rbx, qword ptr [rbp - 0xa8]
	mov	rcx, r8
.label_1734:
	add	rcx, 8
	test	qword ptr [rbx], r9
	lea	rbx, [rbx + 0x20]
	je	.label_1734
	mov	rbx, qword ptr [rcx]
	mov	qword ptr [rax + rsi*8], rbx
	mov	rbx, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rcx + rbx*8]
	mov	qword ptr [rax + rsi*8 + 0x800], rcx
	mov	r14, qword ptr [rbp - 0x80]
	mov	rdi, qword ptr [rbp - 0x38]
	jmp	.label_1728
.label_1628:
	test	dl, 1
	jne	.label_1627
.label_1728:
	add	r9, r9
	shr	rdx, 1
	inc	rsi
	test	rdx, rdx
	jne	.label_1628
.label_1708:
	test	r15, r15
	mov	rcx, qword ptr [rbp - 0x88]
	mov	rdx, qword ptr [rbp - 0x90]
	je	.label_1635
	lea	r8, [rdi - 8]
	lea	r9, [r14 + 0x1808]
	mov	esi, 1
	mov	ebx, 0x40
	jmp	.label_1642
.label_1662:
	mov	rdx, r9
	mov	rcx, r8
.label_1647:
	add	rcx, 8
	test	qword ptr [rdx], rsi
	lea	rdx, [rdx + 0x20]
	je	.label_1647
	mov	rdx, qword ptr [rcx]
	mov	qword ptr [rax + rbx*8], rdx
	mov	rdx, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rcx + rdx*8]
	mov	qword ptr [rax + rbx*8 + 0x800], rcx
	mov	r14, qword ptr [rbp - 0x80]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rbp - 0x88]
	mov	rdx, qword ptr [rbp - 0x90]
	jmp	.label_1654
.label_1642:
	test	r15b, 1
	jne	.label_1662
.label_1654:
	add	rsi, rsi
	shr	r15, 1
	inc	rbx
	test	r15, r15
	jne	.label_1642
.label_1635:
	test	rdx, rdx
	mov	r15, qword ptr [rbp - 0x30]
	mov	r9, qword ptr [rbp - 0xa8]
	je	.label_1614
	lea	r8, [rdi - 8]
	lea	r10, [r14 + 0x1810]
	mov	esi, 1
	mov	ebx, 0x80
	jmp	.label_1649
.label_1683:
	mov	r11, rdx
	mov	rdx, r10
	mov	rcx, r8
.label_1651:
	add	rcx, 8
	test	qword ptr [rdx], rsi
	lea	rdx, [rdx + 0x20]
	je	.label_1651
	mov	rdx, qword ptr [rcx]
	mov	qword ptr [rax + rbx*8], rdx
	mov	r15, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rcx + r15*8]
	mov	qword ptr [rax + rbx*8 + 0x800], rcx
	mov	r14, qword ptr [rbp - 0x80]
	mov	r9, qword ptr [rbp - 0xa8]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rbp - 0x88]
	mov	rdx, r11
	jmp	.label_1709
.label_1649:
	test	dl, 1
	jne	.label_1683
.label_1709:
	add	rsi, rsi
	shr	rdx, 1
	inc	rbx
	test	rdx, rdx
	jne	.label_1649
.label_1614:
	test	rcx, rcx
	je	.label_1637
	lea	r8, [rdi - 8]
	lea	r10, [r14 + 0x1818]
	mov	esi, 1
	mov	ebx, 0xc0
	jmp	.label_1694
.label_1697:
	mov	r11, rcx
	mov	rdx, r10
	mov	rcx, r8
.label_1704:
	add	rcx, 8
	test	qword ptr [rdx], rsi
	lea	rdx, [rdx + 0x20]
	je	.label_1704
	mov	rdx, qword ptr [rcx]
	mov	qword ptr [rax + rbx*8], rdx
	mov	r15, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rcx + r15*8]
	mov	qword ptr [rax + rbx*8 + 0x800], rcx
	mov	r14, qword ptr [rbp - 0x80]
	mov	r9, qword ptr [rbp - 0xa8]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rcx, r11
	jmp	.label_1706
.label_1694:
	test	cl, 1
	jne	.label_1697
.label_1706:
	add	rsi, rsi
	shr	rcx, 1
	inc	rbx
	test	rcx, rcx
	jne	.label_1694
	jmp	.label_1637
	nop	word ptr cs:[rax + rax]
.label_1147:
	call	abort
	nop	word ptr cs:[rax + rax]
	sub	rsp, 0x78
	xorps	xmm0, xmm0
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp + 0x30], 0
	cmp	edi, 0xa
	je	.label_1147
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
	.section	.text
	.align	16
	#Procedure 0x411820

	.globl re_dfa_add_node
	.type re_dfa_add_node, @function
re_dfa_add_node:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x18
	mov	r14, rdx
	mov	r12, rsi
	mov	rbx, rdi
	mov	r13, qword ptr [rbx + 8]
	mov	rax, qword ptr [rbx + 0x10]
	cmp	rax, r13
	jae	.label_1737
.label_1738:
	mov	rcx, qword ptr [rbx]
	shl	rax, 4
	mov	qword ptr [rcx + rax], r12
	mov	qword ptr [rcx + rax + 8], r14
	mov	rax, qword ptr [rbx]
	mov	rcx, qword ptr [rbx + 0x10]
	shl	rcx, 4
	and	dword ptr [rax + rcx + 8], 0xfffc00ff
	movzx	eax, r14b
	cmp	eax, 5
	jne	.label_1736
	mov	cl, 1
	cmp	dword ptr [rbx + 0xb4], 1
	jg	.label_1740
.label_1736:
	cmp	eax, 6
	sete	cl
.label_1740:
	movzx	eax, cl
	mov	rcx, qword ptr [rbx]
	mov	rdx, qword ptr [rbx + 0x10]
	shl	rdx, 4
	shl	eax, 0x14
	mov	esi, 0xffefffff
	and	esi, dword ptr [rcx + rdx + 8]
	or	esi, eax
	mov	dword ptr [rcx + rdx + 8], esi
	mov	rax, qword ptr [rbx + 0x10]
	mov	rcx, qword ptr [rbx + 0x18]
	mov	qword ptr [rcx + rax*8], -1
	mov	rax, qword ptr [rbx + 0x10]
	mov	rcx, qword ptr [rbx + 0x28]
	lea	rax, [rax + rax*2]
	xorps	xmm0, xmm0
	movups	xmmword ptr [rcx + rax*8], xmm0
	mov	qword ptr [rcx + rax*8 + 0x10], 0
	mov	rax, qword ptr [rbx + 0x10]
	mov	rcx, qword ptr [rbx + 0x30]
	lea	rax, [rax + rax*2]
	movups	xmmword ptr [rcx + rax*8], xmm0
	mov	qword ptr [rcx + rax*8 + 0x10], 0
	mov	r15, qword ptr [rbx + 0x10]
	lea	rax, [r15 + 1]
	mov	qword ptr [rbx + 0x10], rax
.label_1739:
	mov	rax, r15
	add	rsp, 0x18
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_1737:
	lea	rcx, [r13 + r13]
	mov	r15, -1
	movabs	rax, 0xaaaaaaaaaaaaaaa
	cmp	rcx, rax
	ja	.label_1739
	mov	qword ptr [rsp + 0x10], rcx
	mov	rdi, qword ptr [rbx]
	mov	rsi, r13
	shl	rsi, 5
	call	realloc
	test	rax, rax
	je	.label_1739
	mov	qword ptr [rbx], rax
	mov	rdi, qword ptr [rbx + 0x18]
	shl	r13, 4
	mov	rsi, r13
	call	realloc
	mov	qword ptr [rsp + 8], rax
	mov	rdi, qword ptr [rbx + 0x20]
	mov	rsi, r13
	call	realloc
	mov	qword ptr [rsp], rax
	mov	rdi, qword ptr [rbx + 0x28]
	lea	rbp, [r13 + r13*2]
	mov	rsi, rbp
	call	realloc
	mov	r13, rax
	mov	rdi, qword ptr [rbx + 0x30]
	mov	rsi, rbp
	call	realloc
	mov	rbp, rax
	mov	rax, qword ptr [rsp]
	mov	rdi, qword ptr [rsp + 8]
	test	rdi, rdi
	je	.label_1735
	test	rax, rax
	je	.label_1735
	test	r13, r13
	je	.label_1735
	test	rbp, rbp
	je	.label_1735
	mov	qword ptr [rbx + 0x18], rdi
	mov	qword ptr [rbx + 0x20], rax
	mov	qword ptr [rbx + 0x28], r13
	mov	qword ptr [rbx + 0x30], rbp
	mov	rax, qword ptr [rsp + 0x10]
	mov	qword ptr [rbx + 8], rax
	mov	rax, qword ptr [rbx + 0x10]
	jmp	.label_1738
.label_1735:
	mov	rbx, rax
	call	free
	mov	rdi, rbx
	call	free
	mov	rdi, r13
	call	free
	mov	rdi, rbp
	call	free
	jmp	.label_1739
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4119f0

	.globl re_search_stub
	.type re_search_stub, @function
re_search_stub:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x28
	mov	rbx, rcx
	test	rbx, rbx
	mov	rbp, -1
	js	.label_1745
	mov	qword ptr [rsp + 0x20], rsi
	mov	qword ptr [rsp + 0x18], r9
	cmp	rbx, rdx
	jg	.label_1745
	xor	r12d, r12d
	add	r8, rbx
	js	.label_1751
	mov	r12, r8
.label_1751:
	mov	rsi, qword ptr [rsp + 0x60]
	cmp	r8, rdx
	cmovg	r12, rdx
	movzx	r13d, byte ptr [rdi + 0x38]
	cmp	r12, rbx
	mov	eax, r13d
	mov	qword ptr [rsp + 8], rdi
	mov	qword ptr [rsp + 0x10], rdx
	jle	.label_1748
	test	r13b, 8
	mov	eax, r13d
	jne	.label_1748
	mov	rbp, qword ptr [rdi + 0x20]
	test	rbp, rbp
	mov	eax, r13d
	je	.label_1748
	mov	r14, rbx
	mov	rbx, qword ptr [rdi]
	xorps	xmm0, xmm0
	movups	xmmword ptr [rbp + 0xf0], xmm0
	movups	xmmword ptr [rbp + 0xe0], xmm0
	movups	xmmword ptr [rbp + 0xd0], xmm0
	movups	xmmword ptr [rbp + 0xc0], xmm0
	movups	xmmword ptr [rbp + 0xb0], xmm0
	movups	xmmword ptr [rbp + 0xa0], xmm0
	movups	xmmword ptr [rbp + 0x90], xmm0
	movups	xmmword ptr [rbp + 0x80], xmm0
	movups	xmmword ptr [rbp + 0x70], xmm0
	movups	xmmword ptr [rbp + 0x60], xmm0
	movups	xmmword ptr [rbp + 0x50], xmm0
	movups	xmmword ptr [rbp + 0x40], xmm0
	movups	xmmword ptr [rbp + 0x30], xmm0
	movups	xmmword ptr [rbp + 0x20], xmm0
	movups	xmmword ptr [rbp + 0x10], xmm0
	movups	xmmword ptr [rbp], xmm0
	mov	rsi, qword ptr [rbx + 0x48]
	mov	rdx, rbp
	mov	r15, rdi
	call	re_compile_fastmap_iter
	mov	rax, qword ptr [rbx + 0x48]
	mov	rsi, qword ptr [rbx + 0x50]
	cmp	rax, rsi
	je	.label_1770
	mov	rdi, r15
	mov	rdx, rbp
	call	re_compile_fastmap_iter
	mov	rax, qword ptr [rbx + 0x48]
.label_1770:
	mov	rsi, qword ptr [rbx + 0x58]
	cmp	rax, rsi
	je	.label_1777
	mov	rdi, qword ptr [rsp + 8]
	mov	rdx, rbp
	call	re_compile_fastmap_iter
	mov	rax, qword ptr [rbx + 0x48]
.label_1777:
	mov	rsi, qword ptr [rbx + 0x60]
	cmp	rax, rsi
	mov	rdi, qword ptr [rsp + 8]
	je	.label_1763
	mov	rdx, rbp
	call	re_compile_fastmap_iter
	mov	rdi, qword ptr [rsp + 8]
.label_1763:
	mov	al, byte ptr [rdi + 0x38]
	or	al, 8
	mov	byte ptr [rdi + 0x38], al
	mov	rbx, r14
	mov	rsi, qword ptr [rsp + 0x60]
.label_1748:
	xor	r14d, r14d
	test	rsi, rsi
	mov	r15d, 1
	je	.label_1742
	mov	ecx, eax
	and	cl, 0x10
	jne	.label_1742
	and	al, 6
	cmp	al, 4
	jne	.label_1766
	mov	rax, qword ptr [rsi]
	mov	r15, qword ptr [rdi + 0x30]
	cmp	rax, r15
	ja	.label_1768
	xor	r14d, r14d
	test	rax, rax
	jle	.label_1773
	mov	r14, rsi
.label_1773:
	mov	r15d, 1
	test	rax, rax
	jle	.label_1742
	mov	r15, rax
	jmp	.label_1742
.label_1766:
	mov	r15, qword ptr [rdi + 0x30]
.label_1768:
	inc	r15
	mov	r14, rsi
.label_1742:
	mov	rdi, r15
	shl	rdi, 4
	call	malloc
	mov	rdi, qword ptr [rsp + 8]
	mov	rbp, -2
	test	rax, rax
	mov	rdx, qword ptr [rsp + 0x10]
	je	.label_1745
	mov	ecx, r13d
	shr	cl, 5
	and	cl, 1
	and	r13d, 0x40
	movzx	ecx, cl
	shr	r13d, 5
	or	r13d, ecx
	sub	rsp, 8
	mov	rsi, qword ptr [rsp + 0x28]
	mov	rcx, rbx
	mov	r8, r12
	mov	r9, qword ptr [rsp + 0x20]
	push	r13
	mov	r12, rax
	push	rax
	push	r15
	call	re_search_internal
	add	rsp, 0x20
	test	eax, eax
	je	.label_1772
	xor	ebp, ebp
	cmp	eax, 1
	sete	bpl
	or	rbp, 0xfffffffffffffffe
	mov	rdi, r12
.label_1762:
	call	free
.label_1745:
	mov	rax, rbp
	add	rsp, 0x28
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_1772:
	test	r14, r14
	mov	rdi, r12
	je	.label_1747
	mov	qword ptr [rsp + 0x10], rbx
	mov	r8, qword ptr [rsp + 8]
	mov	al, byte ptr [r8 + 0x38]
	shr	al, 1
	and	al, 3
	cmp	al, 2
	je	.label_1758
	lea	rbx, [r15 + 1]
	cmp	al, 1
	je	.label_1757
	test	al, al
	jne	.label_1761
	lea	r13, [rbx*8]
	mov	rdi, r13
	call	malloc
	mov	qword ptr [r14 + 8], rax
	xor	ebp, ebp
	mov	qword ptr [rsp + 0x18], rax
	test	rax, rax
	je	.label_1743
	mov	rdi, r13
	call	malloc
	mov	qword ptr [r14 + 0x10], rax
	test	rax, rax
	je	.label_1776
	mov	qword ptr [r14], rbx
	mov	r13d, 1
.label_1750:
	mov	r8, qword ptr [rsp + 8]
	mov	rdi, r12
	jmp	.label_1744
.label_1758:
	mov	rbx, qword ptr [r14]
	mov	r13d, 2
	cmp	rbx, r15
	jae	.label_1744
	mov	edi, OFFSET FLAT:label_1752
	mov	esi, OFFSET FLAT:label_366
	mov	edx, 0x1fb
	mov	ecx, OFFSET FLAT:label_1753
	call	__assert_fail
.label_1757:
	mov	rax, qword ptr [r14]
	mov	r13d, 1
	cmp	rbx, rax
	ja	.label_1759
	mov	rbx, rax
.label_1744:
	test	r15, r15
	jle	.label_1754
	mov	rcx, qword ptr [r14 + 8]
	mov	rax, qword ptr [r14 + 0x10]
	mov	r9d, r15d
	and	r9d, 1
	xor	edx, edx
	cmp	r15, 1
	je	.label_1767
	mov	rsi, r15
	sub	rsi, r9
	mov	rbp, rdi
	add	rbp, 0x18
	xor	edx, edx
	nop	word ptr cs:[rax + rax]
.label_1764:
	mov	rbx, qword ptr [rbp - 0x18]
	mov	qword ptr [rcx + rdx*8], rbx
	mov	rbx, qword ptr [rbp - 0x10]
	mov	qword ptr [rax + rdx*8], rbx
	mov	rbx, qword ptr [rbp - 8]
	mov	qword ptr [rcx + rdx*8 + 8], rbx
	mov	rbx, qword ptr [rbp]
	mov	qword ptr [rax + rdx*8 + 8], rbx
	add	rdx, 2
	add	rbp, 0x20
	cmp	rsi, rdx
	jne	.label_1764
.label_1767:
	test	r9, r9
	je	.label_1760
	mov	rsi, rdx
	shl	rsi, 4
	mov	rbp, qword ptr [rdi + rsi]
	mov	qword ptr [rcx + rdx*8], rbp
	mov	rcx, qword ptr [rdi + rsi + 8]
	mov	qword ptr [rax + rdx*8], rcx
.label_1760:
	mov	rbx, qword ptr [r14]
	jmp	.label_1755
.label_1754:
	xor	r15d, r15d
.label_1755:
	cmp	r15, rbx
	jae	.label_1771
	mov	rax, qword ptr [r14 + 8]
	mov	rcx, qword ptr [r14 + 0x10]
	mov	rbx, qword ptr [rsp + 0x10]
	nop	word ptr cs:[rax + rax]
.label_1741:
	mov	qword ptr [rcx + r15*8], -1
	mov	qword ptr [rax + r15*8], -1
	inc	r15
	cmp	r15, qword ptr [r14]
	jb	.label_1741
	mov	ebp, r13d
	jmp	.label_1746
.label_1771:
	mov	ebp, r13d
	mov	rbx, qword ptr [rsp + 0x10]
.label_1746:
	mov	al, byte ptr [r8 + 0x38]
	add	bpl, bpl
	and	al, 0xf9
	mov	ecx, ebp
	and	cl, 6
	or	cl, al
	and	bpl, 6
	mov	byte ptr [r8 + 0x38], cl
	mov	rbp, -2
	je	.label_1762
.label_1747:
	mov	al, byte ptr [rsp + 0x68]
	mov	rbp, qword ptr [rdi]
	test	al, al
	je	.label_1762
	cmp	rbp, rbx
	jne	.label_1769
	mov	rbp, qword ptr [rdi + 8]
	sub	rbp, rbx
	jmp	.label_1762
.label_1759:
	mov	rdi, qword ptr [r14 + 8]
	lea	rsi, [rbx*8]
	mov	qword ptr [rsp + 0x18], rsi
	call	realloc
	xor	ebp, ebp
	mov	qword ptr [rsp + 0x20], rax
	test	rax, rax
	je	.label_1743
	mov	rdi, qword ptr [r14 + 0x10]
	mov	rsi, qword ptr [rsp + 0x18]
	call	realloc
	test	rax, rax
	je	.label_1749
	mov	rcx, qword ptr [rsp + 0x20]
	mov	qword ptr [r14 + 8], rcx
	mov	qword ptr [r14 + 0x10], rax
	mov	qword ptr [r14], rbx
	jmp	.label_1750
.label_1776:
	mov	rdi, qword ptr [rsp + 0x18]
.label_1756:
	call	free
.label_1743:
	mov	rbx, qword ptr [rsp + 0x10]
	mov	r8, qword ptr [rsp + 8]
	mov	rdi, r12
	jmp	.label_1746
.label_1761:
	mov	edi, OFFSET FLAT:label_1765
	mov	esi, OFFSET FLAT:label_366
	mov	edx, 0x1f9
	mov	ecx, OFFSET FLAT:label_1753
	call	__assert_fail
.label_1769:
	mov	edi, OFFSET FLAT:label_1774
	mov	esi, OFFSET FLAT:label_366
	mov	edx, 0x1be
	mov	ecx, OFFSET FLAT:label_1775
	call	__assert_fail
.label_1749:
	mov	rdi, qword ptr [rsp + 0x20]
	jmp	.label_1756
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x411e90

	.globl free_dfa_content
	.type free_dfa_content, @function
free_dfa_content:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	r14, rdi
	mov	rax, qword ptr [r14]
	test	rax, rax
	je	.label_1785
	cmp	qword ptr [r14 + 0x10], 0
	je	.label_1785
	xor	ebx, ebx
	mov	r12d, 8
	mov	ebp, 0x400ff
	jmp	.label_1791
	nop	dword ptr [rax]
.label_1373:
	add	r12, 0x10
	mov	rax, qword ptr [r14]
.label_1791:
	mov	ecx, dword ptr [rax + r12]
	and	ecx, ebp
	cmp	ecx, 3
	je	.label_1780
	cmp	ecx, 6
	jne	.label_1783
	mov	r15, qword ptr [rax + r12 - 8]
	mov	rdi, qword ptr [r15]
	call	free
	mov	rdi, qword ptr [r15 + 8]
	call	free
	mov	rdi, qword ptr [r15 + 0x10]
	call	free
	mov	rdi, qword ptr [r15 + 0x18]
	call	free
	mov	rdi, r15
	jmp	.label_1794
	nop	word ptr cs:[rax + rax]
.label_1780:
	mov	rdi, qword ptr [rax + r12 - 8]
.label_1794:
	call	free
.label_1783:
	inc	rbx
	cmp	rbx, qword ptr [r14 + 0x10]
	jb	.label_1373
.label_1785:
	mov	rdi, qword ptr [r14 + 0x18]
	call	free
	cmp	qword ptr [r14 + 0x10], 0
	je	.label_1790
	lea	r12, [r14 + 0x30]
	lea	r15, [r14 + 0x38]
	lea	r13, [r14 + 0x28]
	xor	ebp, ebp
	mov	ebx, 0x10
	nop	word ptr cs:[rax + rax]
.label_1779:
	mov	rax, qword ptr [r12]
	test	rax, rax
	je	.label_1787
	mov	rdi, qword ptr [rax + rbx]
	call	free
.label_1787:
	mov	rax, qword ptr [r15]
	test	rax, rax
	je	.label_1788
	mov	rdi, qword ptr [rax + rbx]
	call	free
.label_1788:
	mov	rax, qword ptr [r13]
	test	rax, rax
	je	.label_1793
	mov	rdi, qword ptr [rax + rbx]
	call	free
.label_1793:
	inc	rbp
	add	rbx, 0x18
	cmp	rbp, qword ptr [r14 + 0x10]
	jb	.label_1779
	jmp	.label_1786
.label_1790:
	lea	r13, [r14 + 0x28]
	lea	r12, [r14 + 0x30]
	lea	r15, [r14 + 0x38]
.label_1786:
	mov	rdi, qword ptr [r13]
	call	free
	mov	rdi, qword ptr [r12]
	call	free
	mov	rdi, qword ptr [r15]
	call	free
	mov	rdi, qword ptr [r14]
	call	free
	mov	rdi, qword ptr [r14 + 0x40]
	test	rdi, rdi
	je	.label_1778
	xor	r15d, r15d
	jmp	.label_1781
.label_1782:
	mov	rdi, qword ptr [r14 + 0x40]
.label_1781:
	lea	rax, [r15 + r15*2]
	lea	r12, [rdi + rax*8 + 0x10]
	cmp	qword ptr [rdi + rax*8], 0
	jle	.label_1792
	lea	rbx, [rdi + rax*8]
	xor	ebp, ebp
	nop	word ptr [rax + rax]
.label_1789:
	mov	rax, qword ptr [r12]
	mov	rdi, qword ptr [rax + rbp*8]
	call	free_state
	inc	rbp
	cmp	rbp, qword ptr [rbx]
	jl	.label_1789
.label_1792:
	mov	rdi, qword ptr [r12]
	call	free
	inc	r15
	cmp	r15, qword ptr [r14 + 0x88]
	jbe	.label_1782
	mov	rdi, qword ptr [r14 + 0x40]
.label_1778:
	call	free
	mov	rdi, qword ptr [r14 + 0x78]
	mov	eax, OFFSET FLAT:utf8_sb_map
	cmp	rdi, rax
	je	.label_1784
	call	free
.label_1784:
	mov	rdi, qword ptr [r14 + 0xe0]
	call	free
	mov	rdi, r14
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	jmp	free
	nop	dword ptr [rax + rax]
.label_1798:
	mov	rcx, qword ptr [rip + stderr]
	mov	edi, OFFSET FLAT:label_879
	mov	esi, 0x37
	mov	edx, 1
	call	fwrite
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x41208f

	.globl set_program_name
	.type set_program_name, @function
set_program_name:
	push	r14
	push	rbx
	push	rax
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_1798
	mov	esi, 0x2f
	mov	rdi, rbx
	call	strrchr
	test	rax, rax
	lea	r14, [rax + 1]
	cmove	r14, rbx
	mov	rax, r14
	sub	rax, rbx
	cmp	rax, 7
	jl	.label_1796
	lea	rdi, [r14 - 7]
	mov	esi, OFFSET FLAT:label_1799
	mov	edx, 7
	call	strncmp
	test	eax, eax
	jne	.label_1796
	mov	esi, OFFSET FLAT:label_1797
	mov	edx, 3
	mov	rdi, r14
	call	strncmp
	test	eax, eax
	jne	.label_1795
	add	r14, 3
	mov	qword ptr [rip + __progname],  r14
.label_1795:
	mov	rbx, r14
.label_1796:
	mov	qword ptr [rip + program_name],  rbx
	mov	qword ptr [rip + __progname_full],  rbx
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
.label_904:
	call	abort
	nop	
	sub	rsp, 0x38
	mov	rax, qword ptr [rip + label_9]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0, xmmword ptr [rip + label_10]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_11]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rsi, rsi
	je	.label_904
	test	rdx, rdx
	je	.label_904
	mov	qword ptr [rsp + 0x28], rsi
	mov	qword ptr [rsp + 0x30], rdx
	lea	rax, [rsp]
	mov	rdx, -1
	mov	rsi, rcx
	mov	rcx, rax
	call	quotearg_n_options
	add	rsp, 0x38
	ret	
	mov	rdx, -1
	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	nop	
	.section	.text
	.align	16
	#Procedure 0x412190

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
	js	.label_1803
	mov	eax, dword ptr [r13]
	mov	rbp, qword ptr [rip + slotvec]
	cmp	dword ptr [rip + nslots],  r12d
	mov	qword ptr [rsp + 0x18], r13
	mov	dword ptr [rsp], eax
	mov	qword ptr [rsp + 0x10], rbx
	mov	qword ptr [rsp + 8], r15
	jg	.label_1806
	cmp	r12d, 0x7fffffff
	je	.label_1801
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
	jne	.label_1804
	movups	xmm0, xmmword ptr [rip + slotvec0]
	movups	xmmword ptr [r14], xmm0
.label_1804:
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
.label_1806:
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
	jbe	.label_1802
	mov	rax, qword ptr [rsp + 0x18]
	mov	ebp, dword ptr [rsp]
	jmp	.label_1805
.label_1802:
	lea	rax, [rbp + r13]
	lea	r12, [rbp + r13 + 8]
	inc	r15
	mov	qword ptr [rax], r15
	mov	eax, OFFSET FLAT:slot0
	cmp	r14, rax
	mov	ebp, dword ptr [rsp]
	je	.label_1800
	mov	rdi, r14
	call	free
.label_1800:
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
.label_1805:
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
.label_1803:
	call	abort
.label_1801:
	call	xalloc_die
	nop	dword ptr [rax]
	push	rbx
	mov	rbx, rdi
	mov	rdi, qword ptr [rbx]
	test	rdi, rdi
	je	.label_997
	call	free_dfa_content
.label_997:
	xorps	xmm0, xmm0
	movups	xmmword ptr [rbx], xmm0
	mov	rdi, qword ptr [rbx + 0x20]
	call	free
	mov	qword ptr [rbx + 0x20], 0
	mov	rdi, qword ptr [rbx + 0x28]
	call	free
	mov	qword ptr [rbx + 0x28], 0
	pop	rbx
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x412390

	.globl re_compile_internal
	.type re_compile_internal, @function
re_compile_internal:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0xe8
	mov	r13, rdx
	mov	r14, rsi
	mov	r15, rdi
	mov	dword ptr [rsp + 4], 0
	mov	al, byte ptr [r15 + 0x38]
	mov	qword ptr [rsp + 0x40], rcx
	mov	qword ptr [r15 + 0x18], rcx
	mov	qword ptr [r15 + 0x10], 0
	mov	qword ptr [r15 + 0x30], 0
	and	al, 0x90
	mov	byte ptr [r15 + 0x38], al
	mov	r12, qword ptr [r15]
	cmp	qword ptr [r15 + 8], 0xe7
	jbe	.label_1968
.label_1874:
	mov	qword ptr [r15 + 0x10], 0xe8
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [r12 + 0xd0], xmm0
	movdqu	xmmword ptr [r12 + 0xc0], xmm0
	movdqu	xmmword ptr [r12 + 0xb0], xmm0
	movdqu	xmmword ptr [r12 + 0xa0], xmm0
	movdqu	xmmword ptr [r12 + 0x90], xmm0
	movdqu	xmmword ptr [r12 + 0x80], xmm0
	movdqu	xmmword ptr [r12 + 0x70], xmm0
	movdqu	xmmword ptr [r12 + 0x60], xmm0
	movdqu	xmmword ptr [r12 + 0x50], xmm0
	movdqu	xmmword ptr [r12 + 0x40], xmm0
	movdqu	xmmword ptr [r12 + 0x30], xmm0
	movdqu	xmmword ptr [r12 + 0x20], xmm0
	movdqu	xmmword ptr [r12 + 0x10], xmm0
	movdqu	xmmword ptr [r12], xmm0
	mov	qword ptr [r12 + 0xe0], 0
	mov	dword ptr [r12 + 0x80], 0xf
	movabs	rax, 0x555555555555554
	cmp	r13, rax
	ja	.label_1871
	lea	rdi, [r13 + 1]
	mov	qword ptr [r12 + 8], rdi
	mov	rax, rdi
	mov	qword ptr [rsp + 8], rax
	shl	rdi, 4
	call	malloc
	mov	qword ptr [r12], rax
	mov	eax, 1
	nop	word ptr cs:[rax + rax]
.label_1827:
	mov	rbx, rax
	lea	rax, [rbx + rbx]
	cmp	rbx, r13
	jbe	.label_1827
	mov	edi, 0x18
	mov	rsi, rbx
	call	rpl_calloc
	mov	qword ptr [r12 + 0x40], rax
	dec	rbx
	mov	qword ptr [r12 + 0x88], rbx
	call	__ctype_get_mb_cur_max
	mov	dword ptr [r12 + 0xb4], eax
	mov	edi, 0xe
	call	rpl_nl_langinfo
	mov	cl, byte ptr [rax]
	or	cl, 0x20
	cmp	cl, 0x75
	jne	.label_1855
	mov	cl, byte ptr [rax + 1]
	or	cl, 0x20
	cmp	cl, 0x74
	jne	.label_1855
	mov	cl, byte ptr [rax + 2]
	or	cl, 0x20
	cmp	cl, 0x66
	jne	.label_1855
	xor	ecx, ecx
	cmp	byte ptr [rax + 3], 0x2d
	sete	cl
	cmp	byte ptr [rax + rcx + 3], 0x38
	jne	.label_1855
	cmp	byte ptr [rax + rcx + 4], 0
	jne	.label_1855
	or	byte ptr [r12 + 0xb0], 4
.label_1855:
	mov	rax, qword ptr [r12 + 0xb0]
	mov	ecx, eax
	and	cl, 0xf7
	mov	byte ptr [r12 + 0xb0], cl
	mov	rcx, rax
	shr	rcx, 0x20
	cmp	ecx, 2
	jl	.label_1886
	test	al, 4
	jne	.label_1867
	mov	edi, 0x20
	mov	esi, 1
	call	rpl_calloc
	mov	qword ptr [r12 + 0x78], rax
	test	rax, rax
	je	.label_1871
	xor	ebp, ebp
	nop	dword ptr [rax]
.label_1887:
	mov	edi, ebp
	call	btowc
	cmp	eax, -1
	je	.label_1877
	mov	edx, 1
	mov	ecx, ebp
	shl	rdx, cl
	mov	rcx, qword ptr [r12 + 0x78]
	or	qword ptr [rcx], rdx
.label_1877:
	cmp	ebp, 0x7f
	ja	.label_1883
	cmp	ebp, eax
	je	.label_1883
	or	byte ptr [r12 + 0xb0], 8
.label_1883:
	inc	rbp
	cmp	rbp, 0x40
	jne	.label_1887
	xor	ebp, ebp
	nop	dword ptr [rax + rax]
.label_1807:
	lea	rbx, [rbp + 0x40]
	mov	edi, ebx
	call	btowc
	cmp	eax, -1
	je	.label_1897
	mov	edx, 1
	mov	ecx, ebp
	shl	rdx, cl
	mov	rcx, qword ptr [r12 + 0x78]
	or	qword ptr [rcx + 8], rdx
.label_1897:
	cmp	ebx, eax
	je	.label_1973
	or	byte ptr [r12 + 0xb0], 8
.label_1973:
	inc	rbp
	cmp	rbp, 0x40
	jne	.label_1807
	xor	ebp, ebp
	nop	dword ptr [rax + rax]
.label_1915:
	mov	edi, ebp
	sub	edi, -0x80
	call	btowc
	cmp	eax, -1
	je	.label_1910
	mov	eax, 1
	mov	ecx, ebp
	shl	rax, cl
	mov	rcx, qword ptr [r12 + 0x78]
	or	qword ptr [rcx + 0x10], rax
.label_1910:
	inc	rbp
	cmp	rbp, 0x40
	jne	.label_1915
	xor	ebp, ebp
	nop	dword ptr [rax]
.label_1921:
	lea	edi, [rbp + 0xc0]
	call	btowc
	cmp	eax, -1
	je	.label_1917
	mov	eax, 1
	mov	ecx, ebp
	shl	rax, cl
	mov	rcx, qword ptr [r12 + 0x78]
	or	qword ptr [rcx + 0x18], rax
.label_1917:
	inc	rbp
	cmp	rbp, 0x40
	jne	.label_1921
	jmp	.label_1886
.label_1867:
	mov	qword ptr [r12 + 120], OFFSET FLAT:utf8_sb_map
.label_1886:
	cmp	qword ptr [r12], 0
	je	.label_1871
	cmp	qword ptr [r12 + 0x40], 0
	je	.label_1871
	mov	dword ptr [rsp + 4], 0
	mov	rbx, qword ptr [r15 + 0x28]
	mov	rcx, qword ptr [rsp + 0x40]
	and	ecx, 0x400000
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [rsp + 0xd0], xmm0
	movdqu	xmmword ptr [rsp + 0xc0], xmm0
	movdqu	xmmword ptr [rsp + 0xb0], xmm0
	movdqu	xmmword ptr [rsp + 0xa0], xmm0
	movdqu	xmmword ptr [rsp + 0x90], xmm0
	movdqu	xmmword ptr [rsp + 0x80], xmm0
	movdqu	xmmword ptr [rsp + 0x70], xmm0
	movdqu	xmmword ptr [rsp + 0x60], xmm0
	movdqu	xmmword ptr [rsp + 0x50], xmm0
	mov	qword ptr [rsp + 0x48], r14
	mov	qword ptr [rsp + 0xa0], r13
	mov	qword ptr [rsp + 0x98], r13
	mov	qword ptr [rsp + 0xc0], rbx
	mov	rax, rcx
	shr	rax, 0x16
	mov	byte ptr [rsp + 0xd0], al
	mov	qword ptr [rsp + 0xe0], rcx
	mov	rax, rcx
	or	rax, rbx
	setne	bpl
	setne	byte ptr [rsp + 0xd3]
	mov	edx, dword ptr [r12 + 0xb4]
	mov	dword ptr [rsp + 0xd8], edx
	mov	rcx, qword ptr [r12 + 0xb0]
	mov	eax, ecx
	shr	al, 2
	and	al, 1
	mov	byte ptr [rsp + 0xd1], al
	mov	eax, ecx
	shr	al, 3
	and	al, 1
	mov	byte ptr [rsp + 0xd2], al
	mov	qword ptr [rsp + 0xb0], r13
	mov	qword ptr [rsp + 0xa8], r13
	xor	eax, eax
	test	r13, r13
	mov	qword ptr [rsp + 0x18], r12
	jle	.label_1926
	cmp	edx, 2
	jl	.label_1966
	mov	r12d, 0xc
	mov	rax, qword ptr [rsp + 8]
	movabs	rcx, 0x1fffffffffffffff
	cmp	rax, rcx
	ja	.label_1825
	lea	rsi, [rax*4]
	xor	edi, edi
	call	realloc
	test	rax, rax
	je	.label_1825
	mov	qword ptr [rsp + 0x58], rax
	mov	r12, qword ptr [rsp + 0x18]
.label_1966:
	xor	eax, eax
	test	bpl, bpl
	mov	edx, 0
	je	.label_1974
	xor	edi, edi
	mov	rsi, qword ptr [rsp + 8]
	call	realloc
	mov	r12d, 0xc
	test	rax, rax
	je	.label_1825
	mov	qword ptr [rsp + 0x50], rax
	mov	dl, bpl
	mov	r12, qword ptr [rsp + 0x18]
.label_1974:
	mov	rcx, qword ptr [rsp + 8]
	mov	qword ptr [rsp + 0x88], rcx
	mov	ecx, dword ptr [r12 + 0xb4]
	mov	ebp, edx
	jmp	.label_1808
.label_1871:
	mov	dword ptr [rsp + 4], 0xc
	mov	rdi, r12
	call	free_dfa_content
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [r15], xmm0
	mov	eax, 0xc
	jmp	.label_1812
.label_1926:
	shr	rcx, 0x20
	xor	edx, edx
	mov	qword ptr [rsp + 8], rdx
.label_1808:
	test	bpl, bpl
	cmove	rax, r14
	mov	qword ptr [rsp + 0x50], rax
	cmp	qword ptr [rsp + 0xe0], 0
	je	.label_1819
	cmp	ecx, 2
	jl	.label_1920
	lea	rdi, [rsp + 0x48]
	call	build_wcs_upper_buffer
	mov	r12d, eax
	test	r12d, r12d
	jne	.label_1825
	lea	rbx, [rsp + 0x48]
	nop	dword ptr [rax + rax]
.label_1863:
	cmp	qword ptr [rsp + 0x80], r13
	mov	r12, qword ptr [rsp + 0x18]
	jge	.label_1853
	mov	rbp, qword ptr [rsp + 0x88]
	movsxd	rax, dword ptr [r12 + 0xb4]
	add	rax, qword ptr [rsp + 0x78]
	cmp	rbp, rax
	jg	.label_1853
	lea	r14, [rbp + rbp]
	cmp	dword ptr [rsp + 0xd8], 2
	jl	.label_1850
	mov	r12d, 0xc
	movabs	rax, 0x1fffffffffffffff
	cmp	r14, rax
	ja	.label_1825
	mov	rdi, qword ptr [rsp + 0x58]
	lea	rsi, [rbp*8]
	call	realloc
	test	rax, rax
	je	.label_1825
	mov	qword ptr [rsp + 0x58], rax
	mov	rdi, qword ptr [rsp + 0x60]
	test	rdi, rdi
	je	.label_1850
	shl	rbp, 4
	mov	rsi, rbp
	call	realloc
	test	rax, rax
	je	.label_1825
	mov	qword ptr [rsp + 0x60], rax
.label_1850:
	cmp	byte ptr [rsp + 0xd3], 0
	je	.label_1934
	mov	rdi, qword ptr [rsp + 0x50]
	mov	rsi, r14
	call	realloc
	mov	r12d, 0xc
	test	rax, rax
	je	.label_1825
	mov	qword ptr [rsp + 0x50], rax
.label_1934:
	mov	qword ptr [rsp + 0x88], r14
	mov	rdi, rbx
	call	build_wcs_upper_buffer
	mov	r12d, eax
	test	r12d, r12d
	je	.label_1863
.label_1825:
	mov	dword ptr [rsp + 4], r12d
	jmp	.label_1866
.label_1819:
	cmp	ecx, 2
	jl	.label_1868
	lea	rdi, [rsp + 0x48]
	call	build_wcs_buffer
	jmp	.label_1853
.label_1920:
	mov	rax, qword ptr [rsp + 8]
	cmp	rax, r13
	cmovg	rax, r13
	mov	r13, rax
	xor	eax, eax
	test	r13, r13
	jle	.label_1873
	xor	eax, eax
	mov	ebp, 1
	jmp	.label_1879
	nop	dword ptr [rax]
.label_1971:
	mov	r14, qword ptr [rsp + 0x48]
	mov	rax, qword ptr [rsp + 0x70]
	mov	rbx, qword ptr [rsp + 0xc0]
	inc	rbp
.label_1879:
	add	r14, rax
	movzx	eax, byte ptr [rbp + r14 - 1]
	movzx	ecx, al
	test	rbx, rbx
	jne	.label_1927
.label_1903:
	movzx	ebx, al
	mov	eax, ebx
	sub	eax, -0x80
	cmp	eax, 0x17f
	ja	.label_1895
	call	__ctype_toupper_loc
	mov	rax, qword ptr [rax]
	mov	ebx, dword ptr [rax + rbx*4]
.label_1895:
	mov	rax, qword ptr [rsp + 0x50]
	mov	byte ptr [rax + rbp - 1], bl
	cmp	rbp, r13
	jl	.label_1971
	jmp	.label_1902
.label_1927:
	movzx	eax, byte ptr [rbx + rcx]
	jmp	.label_1903
.label_1868:
	test	rbx, rbx
	je	.label_1906
	mov	rcx, qword ptr [rsp + 8]
	cmp	rcx, r13
	cmovg	rcx, r13
	mov	rdi, rcx
	xor	ecx, ecx
	test	rdi, rdi
	jle	.label_1907
	movzx	ecx, byte ptr [r14]
	mov	cl, byte ptr [rbx + rcx]
	mov	byte ptr [rax], cl
	mov	ecx, 1
	cmp	rdi, 1
	je	.label_1907
	mov	eax, 1
	nop	word ptr [rax + rax]
.label_1872:
	mov	rcx, qword ptr [rsp + 0x48]
	mov	rdx, qword ptr [rsp + 0x50]
	add	rcx, qword ptr [rsp + 0x70]
	movzx	ecx, byte ptr [rax + rcx]
	mov	rsi, qword ptr [rsp + 0xc0]
	movzx	ecx, byte ptr [rsi + rcx]
	mov	byte ptr [rdx + rax], cl
	inc	rax
	cmp	rax, rdi
	jl	.label_1872
	mov	rcx, rdi
.label_1907:
	mov	qword ptr [rsp + 0x78], rcx
	mov	qword ptr [rsp + 0x80], rcx
	jmp	.label_1853
.label_1902:
	mov	rax, r13
	jmp	.label_1873
.label_1906:
	mov	rax, qword ptr [rsp + 8]
.label_1873:
	mov	qword ptr [rsp + 0x78], rax
	mov	qword ptr [rsp + 0x80], rax
.label_1853:
	mov	dword ptr [rsp + 4], 0
	mov	qword ptr [r15 + 0x30], 0
	mov	rbx, qword ptr [r15]
	mov	rbp, qword ptr [rsp + 0x40]
	mov	qword ptr [rbx + 0xd8], rbp
	mov	rdx, rbp
	or	rdx, 0x800000
	lea	r14, [rsp + 0x20]
	lea	r13, [rsp + 0x48]
	mov	rdi, r14
	mov	rsi, r13
	call	peek_token
	cdqe	
	add	qword ptr [rsp + 0x90], rax
	lea	r9, [rsp + 4]
	xor	r8d, r8d
	mov	rdi, r13
	mov	rsi, r15
	mov	rdx, r14
	mov	rcx, rbp
	call	parse_reg_exp
	mov	r14, rax
	test	r14, r14
	jne	.label_1941
	mov	eax, dword ptr [rsp + 4]
	test	eax, eax
	jne	.label_1940
.label_1941:
	mov	ebp, dword ptr [rbx + 0x80]
	cmp	ebp, 0xf
	je	.label_1945
	mov	rax, qword ptr [rbx + 0x70]
.label_1824:
	lea	ecx, [rbp + 1]
	mov	dword ptr [rbx + 0x80], ecx
	movsxd	rcx, ebp
	shl	rcx, 6
	lea	rbp, [rax + rcx + 8]
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [rax + rcx + 8], xmm0
	mov	qword ptr [rax + rcx + 0x18], 0
	mov	dword ptr [rax + rcx + 0x38], 2
	movdqu	xmmword ptr [rax + rcx + 0x20], xmm0
	mov	qword ptr [rax + rcx + 0x40], -1
.label_1880:
	test	r14, r14
	mov	rcx, rbp
	je	.label_1959
	mov	ecx, dword ptr [rbx + 0x80]
	cmp	ecx, 0xf
	je	.label_1961
	mov	rax, qword ptr [rbx + 0x70]
.label_1896:
	lea	edx, [rcx + 1]
	mov	dword ptr [rbx + 0x80], edx
	movsxd	rdx, ecx
	shl	rdx, 6
	lea	rcx, [rax + rdx + 8]
	mov	qword ptr [rax + rdx + 8], 0
	mov	qword ptr [rax + rdx + 0x10], r14
	mov	qword ptr [rax + rdx + 0x18], rbp
	mov	dword ptr [rax + rdx + 0x38], 0x10
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [rax + rdx + 0x20], xmm0
	mov	qword ptr [rax + rdx + 0x40], -1
	mov	qword ptr [r14], rcx
	test	rbp, rbp
	je	.label_1894
	mov	qword ptr [rbp], rcx
.label_1959:
	test	rbp, rbp
	je	.label_1894
	test	rcx, rcx
	je	.label_1894
	mov	qword ptr [r12 + 0x68], rcx
	mov	rbx, qword ptr [r15]
	mov	rdi, qword ptr [rbx + 8]
	shl	rdi, 3
	call	malloc
	mov	qword ptr [rbx + 0x18], rax
	mov	rdi, qword ptr [rbx + 8]
	shl	rdi, 3
	call	malloc
	mov	qword ptr [rbx + 0x20], rax
	mov	rax, qword ptr [rbx + 8]
	shl	rax, 3
	lea	rdi, [rax + rax*2]
	call	malloc
	mov	qword ptr [rbx + 0x28], rax
	mov	rax, qword ptr [rbx + 8]
	shl	rax, 3
	lea	rdi, [rax + rax*2]
	call	malloc
	mov	qword ptr [rbx + 0x30], rax
	cmp	qword ptr [rbx + 0x18], 0
	je	.label_914
	cmp	qword ptr [rbx + 0x20], 0
	je	.label_914
	test	rax, rax
	je	.label_914
	mov	rax, qword ptr [rbx + 0x28]
	test	rax, rax
	je	.label_914
	mov	rbp, qword ptr [r15 + 0x30]
	lea	rdi, [rbp*8]
	call	malloc
	mov	qword ptr [rbx + 0xe0], rax
	test	rax, rax
	mov	r8, rbx
	mov	qword ptr [rsp + 8], r8
	je	.label_1822
	test	rbp, rbp
	je	.label_1826
	xor	edx, edx
	cmp	rbp, 4
	jb	.label_1828
	xor	edx, edx
	mov	rcx, rbp
	and	rcx, 0xfffffffffffffffc
	je	.label_1828
	lea	rbx, [rcx - 4]
	mov	rdi, rbx
	shr	rdi, 2
	lea	edx, [rdi + 1]
	and	edx, 3
	mov	esi, 1
	cmp	rbx, 0xc
	jae	.label_1831
	movq	xmm0, rsi
	pslldq	xmm0, 8
	jmp	.label_1834
.label_1822:
	lea	r12, [r8 + 0x68]
	jmp	.label_1837
.label_1831:
	lea	rsi, [rdx - 1]
	sub	rsi, rdi
	mov	edi, 1
	movq	xmm0, rdi
	pslldq	xmm0, 8
	movdqa	xmm8, xmmword ptr [rip + label_1840]
	movdqa	xmm9, xmmword ptr [rip + label_1841]
	movdqa	xmm10, xmmword ptr [rip + label_1842]
	movdqa	xmm11, xmmword ptr [rip + label_1843]
	movdqa	xmm5, xmmword ptr [rip + label_1844]
	movdqa	xmm6, xmmword ptr [rip + label_1845]
	movdqa	xmm7, xmmword ptr [rip + label_1846]
	movdqa	xmm1, xmmword ptr [rip + label_1847]
	nop	word ptr cs:[rax + rax]
.label_1859:
	movdqa	xmm2, xmm0
	paddq	xmm2, xmm8
	movdqa	xmm3, xmm0
	paddq	xmm3, xmm9
	movq	rdi, xmm0
	movdqu	xmmword ptr [rax + rdi*8], xmm0
	movdqu	xmmword ptr [rax + rdi*8 + 0x10], xmm2
	movdqa	xmm2, xmm0
	paddq	xmm2, xmm10
	movdqa	xmm4, xmm0
	paddq	xmm4, xmm11
	movq	rdi, xmm3
	movdqu	xmmword ptr [rax + rdi*8], xmm3
	movdqu	xmmword ptr [rax + rdi*8 + 0x10], xmm2
	movdqa	xmm2, xmm0
	paddq	xmm2, xmm5
	movdqa	xmm3, xmm0
	paddq	xmm3, xmm6
	movq	rdi, xmm4
	movdqu	xmmword ptr [rax + rdi*8], xmm4
	movdqu	xmmword ptr [rax + rdi*8 + 0x10], xmm2
	movdqa	xmm2, xmm0
	paddq	xmm2, xmm7
	paddq	xmm0, xmm1
	movq	rdi, xmm3
	movdqu	xmmword ptr [rax + rdi*8], xmm3
	movdqu	xmmword ptr [rax + rdi*8 + 0x10], xmm2
	add	rsi, 4
	jne	.label_1859
.label_1834:
	test	rdx, rdx
	je	.label_1891
	neg	rdx
	movdqa	xmm1, xmmword ptr [rip + label_1840]
	movdqa	xmm2, xmmword ptr [rip + label_1841]
	nop	word ptr cs:[rax + rax]
.label_1900:
	movdqa	xmm3, xmm0
	movq	rsi, xmm0
	movdqu	xmmword ptr [rax + rsi*8], xmm0
	paddq	xmm0, xmm1
	paddq	xmm3, xmm2
	movdqu	xmmword ptr [rax + rsi*8 + 0x10], xmm0
	inc	rdx
	movdqa	xmm0, xmm3
	jne	.label_1900
.label_1891:
	cmp	rbp, rcx
	mov	rdx, rcx
	je	.label_1826
	nop	dword ptr [rax]
.label_1828:
	mov	qword ptr [rax + rdx*8], rdx
	inc	rdx
	cmp	rdx, rbp
	jb	.label_1828
.label_1826:
	mov	rdx, qword ptr [r8 + 0x68]
	mov	cl, byte ptr [rdx + 0x30]
	cmp	cl, 0x11
	je	.label_1914
	cmp	cl, 4
	jne	.label_1916
	movsxd	rcx, dword ptr [rdx + 0x28]
	mov	rcx, qword ptr [rax + rcx*8]
	mov	qword ptr [rdx + 0x28], rcx
	mov	esi, 1
	shl	esi, cl
	movsxd	rcx, esi
	or	qword ptr [r8 + 0xa0], rcx
	jmp	.label_1916
.label_1914:
	mov	rcx, qword ptr [rdx + 8]
	test	rcx, rcx
	je	.label_1916
	cmp	byte ptr [rcx + 0x30], 0x11
	jne	.label_1916
	mov	rsi, qword ptr [rcx + 8]
	mov	rcx, qword ptr [rcx + 0x28]
	mov	qword ptr [rdx + 8], rsi
	test	rsi, rsi
	je	.label_1924
	mov	qword ptr [rsi], rdx
.label_1924:
	mov	rsi, qword ptr [rdx + 0x28]
	mov	rsi, qword ptr [rax + rsi*8]
	mov	qword ptr [rax + rcx*8], rsi
	cmp	rcx, 0x3f
	jg	.label_1916
	mov	rsi, -2
	rol	rsi, cl
	and	qword ptr [r8 + 0xa0], rsi
.label_1916:
	lea	r12, [r8 + 0x68]
	jmp	.label_1928
.label_1949:
	mov	rsi, -2
	rol	rsi, cl
	and	qword ptr [r8 + 0xa0], rsi
.label_1928:
	mov	rsi, rax
.label_1925:
	test	rsi, rsi
	jne	.label_1931
	mov	rdi, rdx
.label_1946:
	mov	rdx, qword ptr [rdi + 8]
	test	rdx, rdx
	jne	.label_1935
	xor	ecx, ecx
	nop	word ptr cs:[rax + rax]
.label_1885:
	mov	rsi, rcx
	mov	rcx, rdi
	mov	rdx, qword ptr [rcx + 0x10]
	cmp	rdx, rsi
	je	.label_1939
	test	rdx, rdx
	jne	.label_1935
.label_1939:
	mov	rdi, qword ptr [rcx]
	test	rdi, rdi
	jne	.label_1885
	jmp	.label_1899
.label_1935:
	mov	cl, byte ptr [rdx + 0x30]
	cmp	cl, 0x11
	je	.label_1944
	cmp	cl, 4
	mov	esi, 0
	mov	rdi, rdx
	jne	.label_1946
	jmp	.label_1925
.label_1944:
	mov	rcx, qword ptr [rdx + 8]
	test	rcx, rcx
	mov	rdi, rdx
	je	.label_1946
	cmp	byte ptr [rcx + 0x30], 0x11
	mov	rdi, rdx
	jne	.label_1946
	lea	rsi, [rdx + 8]
	lea	rdi, [rdx + 0x28]
	jmp	.label_1951
.label_1969:
	movsxd	rcx, dword ptr [rdi]
	mov	rcx, qword ptr [rsi + rcx*8]
	mov	qword ptr [rdi], rcx
	mov	edi, 1
	shl	edi, cl
	movsxd	rcx, edi
	or	qword ptr [r8 + 0xa0], rcx
.label_1931:
	mov	rbp, rdx
.label_1967:
	mov	rdx, qword ptr [rbp + 8]
	test	rdx, rdx
	jne	.label_1957
	xor	ecx, ecx
.label_1963:
	mov	rdi, rcx
	mov	rcx, rbp
	mov	rdx, qword ptr [rcx + 0x10]
	cmp	rdx, rdi
	je	.label_1960
	test	rdx, rdx
	jne	.label_1957
.label_1960:
	mov	rbp, qword ptr [rcx]
	test	rbp, rbp
	jne	.label_1963
	jmp	.label_1899
	nop	
.label_1957:
	lea	rdi, [rdx + 0x28]
	mov	cl, byte ptr [rdx + 0x30]
	cmp	cl, 0x11
	je	.label_1964
	cmp	cl, 4
	mov	rbp, rdx
	jne	.label_1967
	jmp	.label_1969
.label_1964:
	mov	rcx, qword ptr [rdx + 8]
	test	rcx, rcx
	mov	rbp, rdx
	je	.label_1967
	cmp	byte ptr [rcx + 0x30], 0x11
	mov	rbp, rdx
	jne	.label_1967
	lea	rsi, [rdx + 8]
.label_1951:
	mov	rbp, qword ptr [rcx + 8]
	mov	rcx, qword ptr [rcx + 0x28]
	mov	qword ptr [rsi], rbp
	test	rbp, rbp
	je	.label_1972
	mov	qword ptr [rbp], rdx
.label_1972:
	mov	rsi, qword ptr [rdi]
	mov	rsi, qword ptr [rax + rsi*8]
	mov	qword ptr [rax + rcx*8], rsi
	cmp	rcx, 0x3f
	mov	rsi, rax
	jg	.label_1925
	jmp	.label_1949
.label_1899:
	mov	rcx, qword ptr [r15 + 0x30]
	xor	edx, edx
	test	rcx, rcx
	je	.label_1976
	xor	edx, edx
	nop	dword ptr [rax]
.label_1977:
	cmp	rdx, qword ptr [rax + rdx*8]
	jne	.label_1976
	inc	rdx
	cmp	rdx, rcx
	jb	.label_1977
.label_1976:
	cmp	rdx, rcx
	jne	.label_1837
	mov	rdi, rax
	call	free
	mov	r8, qword ptr [rsp + 8]
	mov	qword ptr [r8 + 0xe0], 0
.label_1837:
	mov	rax, qword ptr [r12]
	lea	rbp, [rsp + 0x20]
	nop	word ptr cs:[rax + rax]
.label_1813:
	mov	rbx, rax
	mov	rax, qword ptr [rbx + 8]
	test	rax, rax
	jne	.label_1813
	mov	rax, qword ptr [rbx + 0x10]
	test	rax, rax
	jne	.label_1813
	xor	ecx, ecx
	jmp	.label_1817
	nop	dword ptr [rax]
.label_1838:
	mov	rcx, qword ptr [rdx + 8]
	mov	rbx, rdx
.label_1817:
	mov	dword ptr [rsp + 0x20], 0
	test	rcx, rcx
	je	.label_1820
	cmp	byte ptr [rcx + 0x30], 0x11
	jne	.label_1820
	mov	rsi, qword ptr [r15]
	mov	edx, dword ptr [r15 + 0x38]
	mov	rdi, rbp
	call	lower_subexp
	mov	r8, qword ptr [rsp + 8]
	mov	qword ptr [rbx + 8], rax
	test	rax, rax
	je	.label_1820
	mov	qword ptr [rax], rbx
	nop	word ptr [rax + rax]
.label_1820:
	mov	rcx, qword ptr [rbx + 0x10]
	test	rcx, rcx
	je	.label_1829
	cmp	byte ptr [rcx + 0x30], 0x11
	jne	.label_1829
	mov	rsi, qword ptr [r15]
	mov	edx, dword ptr [r15 + 0x38]
	mov	rdi, rbp
	call	lower_subexp
	mov	r8, qword ptr [rsp + 8]
	mov	qword ptr [rbx + 0x10], rax
	test	rax, rax
	je	.label_1829
	mov	qword ptr [rax], rbx
	nop	
.label_1829:
	mov	eax, dword ptr [rsp + 0x20]
	test	eax, eax
	jne	.label_982
	mov	rdx, qword ptr [rbx]
	test	rdx, rdx
	je	.label_1835
	mov	rax, qword ptr [rdx + 0x10]
	cmp	rax, rbx
	je	.label_1838
	test	rax, rax
	je	.label_1838
	jmp	.label_1813
.label_1835:
	mov	rax, qword ptr [r12]
	mov	ebx, 0xfffc00ff
	nop	dword ptr [rax + rax]
.label_1851:
	mov	rbp, rax
	mov	rax, qword ptr [rbp + 8]
	test	rax, rax
	jne	.label_1851
	mov	rax, qword ptr [rbp + 0x10]
	test	rax, rax
	jne	.label_1851
	nop	word ptr cs:[rax + rax]
.label_1876:
	cmp	byte ptr [rbp + 0x30], 0x10
	jne	.label_1933
	mov	rax, qword ptr [rbp + 8]
	mov	rcx, qword ptr [rax + 0x18]
	mov	qword ptr [rbp + 0x18], rcx
	mov	rax, qword ptr [rax + 0x38]
	mov	qword ptr [rbp + 0x38], rax
	jmp	.label_918
	nop	dword ptr [rax]
.label_1933:
	mov	qword ptr [rbp + 0x18], rbp
	mov	rsi, qword ptr [rbp + 0x28]
	mov	rdx, qword ptr [rbp + 0x30]
	mov	rdi, r8
	call	re_dfa_add_node
	mov	qword ptr [rbp + 0x38], rax
	cmp	rax, -1
	je	.label_914
	cmp	byte ptr [rbp + 0x30], 0xc
	mov	r8, qword ptr [rsp + 8]
	jne	.label_918
	mov	ecx, dword ptr [rbp + 0x28]
	mov	rdx, qword ptr [r8]
	shl	rax, 4
	shl	ecx, 8
	and	ecx, 0x3ff00
	mov	esi, dword ptr [rdx + rax + 8]
	and	esi, ebx
	or	esi, ecx
	mov	dword ptr [rdx + rax + 8], esi
.label_918:
	mov	rcx, qword ptr [rbp]
	test	rcx, rcx
	je	.label_1875
	mov	rax, qword ptr [rcx + 0x10]
	cmp	rax, rbp
	mov	rbp, rcx
	je	.label_1876
	test	rax, rax
	mov	rbp, rcx
	je	.label_1876
	jmp	.label_1851
.label_1875:
	mov	rbp, qword ptr [r12]
	mov	al, byte ptr [rbp + 0x30]
	cmp	al, 0x10
	je	.label_1884
	cmp	al, 0xb
	jne	.label_1888
	mov	rax, qword ptr [rbp + 8]
	mov	qword ptr [rax + 0x20], rbp
	jmp	.label_1889
.label_1884:
	mov	rax, qword ptr [rbp + 8]
	mov	rcx, qword ptr [rbp + 0x10]
	mov	rdx, qword ptr [rcx + 0x18]
	mov	qword ptr [rax + 0x20], rdx
	jmp	.label_1892
.label_1888:
	mov	rax, qword ptr [rbp + 8]
	test	rax, rax
	je	.label_1956
	mov	rcx, qword ptr [rbp + 0x20]
	mov	qword ptr [rax + 0x20], rcx
.label_1956:
	mov	rcx, qword ptr [rbp + 0x10]
	test	rcx, rcx
	je	.label_1889
.label_1892:
	mov	rdx, qword ptr [rbp + 0x20]
	mov	qword ptr [rcx + 0x20], rdx
.label_1889:
	mov	rdx, rbp
	jmp	.label_1904
.label_1898:
	mov	rax, qword ptr [rcx + 8]
	mov	rdx, qword ptr [rcx + 0x10]
	mov	rsi, qword ptr [rdx + 0x18]
	mov	qword ptr [rax + 0x20], rsi
	mov	rsi, qword ptr [rcx + 0x20]
	mov	qword ptr [rdx + 0x20], rsi
	mov	rdx, rcx
.label_1904:
	test	rax, rax
	mov	rcx, rax
	jne	.label_1912
	xor	eax, eax
	nop	dword ptr [rax]
.label_1878:
	mov	rsi, rax
	mov	rax, rdx
	mov	rcx, qword ptr [rax + 0x10]
	cmp	rcx, rsi
	je	.label_1856
	test	rcx, rcx
	jne	.label_1912
.label_1856:
	mov	rdx, qword ptr [rax]
	test	rdx, rdx
	jne	.label_1878
	jmp	.label_1918
	nop	
.label_1912:
	mov	al, byte ptr [rcx + 0x30]
	cmp	al, 0x10
	je	.label_1898
	cmp	al, 0xb
	jne	.label_1919
	mov	rax, qword ptr [rcx + 8]
	mov	qword ptr [rax + 0x20], rcx
	mov	rdx, rcx
	jmp	.label_1904
.label_1919:
	mov	rax, qword ptr [rcx + 8]
	test	rax, rax
	je	.label_1922
	mov	rdx, qword ptr [rcx + 0x20]
	mov	qword ptr [rax + 0x20], rdx
.label_1922:
	mov	rsi, qword ptr [rcx + 0x10]
	test	rsi, rsi
	mov	rdx, rcx
	je	.label_1904
	mov	rdx, qword ptr [rcx + 0x20]
	mov	qword ptr [rsi + 0x20], rdx
	mov	rdx, rcx
	jmp	.label_1904
.label_1918:
	mov	rdi, r8
	mov	rsi, rbp
	call	link_nfa_nodes
	mov	rsi, qword ptr [rsp + 8]
	test	eax, eax
	jne	.label_982
	nop	word ptr [rax + rax]
.label_906:
	mov	rbx, qword ptr [rbp + 8]
	test	rbx, rbx
	jne	.label_1930
	xor	eax, eax
	nop	dword ptr [rax + rax]
.label_1937:
	mov	rcx, rax
	mov	rax, rbp
	mov	rbx, qword ptr [rax + 0x10]
	cmp	rbx, rcx
	je	.label_1932
	test	rbx, rbx
	jne	.label_1930
.label_1932:
	mov	rbp, qword ptr [rax]
	test	rbp, rbp
	jne	.label_1937
	jmp	.label_1938
	nop	
.label_1930:
	mov	rdi, rsi
	mov	rsi, rbx
	call	link_nfa_nodes
	mov	rsi, qword ptr [rsp + 8]
	test	eax, eax
	mov	rbp, rbx
	je	.label_906
	jmp	.label_982
.label_1938:
	xor	eax, eax
	lea	r12, [rsp + 0x20]
	xor	r14d, r14d
	jmp	.label_1942
	nop	dword ptr [rax + rax]
.label_1952:
	inc	rbp
	mov	rax, rbp
.label_1942:
	cmp	rax, qword ptr [rsi + 0x10]
	jne	.label_1947
	xor	ebp, ebp
	test	r14b, 1
	mov	r14d, 0
	jne	.label_1948
	jmp	.label_1950
	nop	dword ptr [rax]
.label_1947:
	mov	rbp, rax
.label_1948:
	mov	rax, qword ptr [rsi + 0x30]
	lea	rbx, [rbp + rbp*2]
	cmp	qword ptr [rax + rbx*8 + 8], 0
	jne	.label_1952
	mov	ecx, 1
	mov	rdi, r12
	mov	rdx, rbp
	mov	r13, rsi
	call	calc_eclosure_iter
	test	eax, eax
	jne	.label_982
	mov	rax, qword ptr [r13 + 0x30]
	cmp	qword ptr [rax + rbx*8 + 8], 0
	mov	rsi, r13
	jne	.label_1952
	mov	rdi, qword ptr [rsp + 0x30]
	call	free
	mov	rsi, qword ptr [rsp + 8]
	mov	r14b, 1
	jmp	.label_1952
.label_1950:
	test	byte ptr [r15 + 0x38], 0x10
	mov	qword ptr [rsp + 0x38], r15
	mov	r14, qword ptr [rsp + 0x18]
	jne	.label_1965
	cmp	qword ptr [r15 + 0x30], 0
	je	.label_1965
	test	byte ptr [rsi + 0xb0], 1
	jne	.label_1970
.label_1965:
	cmp	qword ptr [rsi + 0x98], 0
	je	.label_1809
.label_1970:
	shl	rax, 3
	lea	rdi, [rax + rax*2]
	call	malloc
	mov	r8, qword ptr [rsp + 8]
	mov	qword ptr [r8 + 0x38], rax
	test	rax, rax
	je	.label_914
	cmp	qword ptr [r8 + 0x10], 0
	je	.label_1809
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [rax], xmm0
	mov	qword ptr [rax + 0x10], 0
	mov	rax, qword ptr [r8 + 0x10]
	cmp	rax, 2
	jb	.label_1975
	mov	ecx, 1
	mov	edx, 0x18
	nop	
.label_1881:
	mov	rax, qword ptr [r8 + 0x38]
	movdqu	xmmword ptr [rax + rdx], xmm0
	mov	qword ptr [rax + rdx + 0x10], 0
	inc	rcx
	mov	rax, qword ptr [r8 + 0x10]
	add	rdx, 0x18
	cmp	rcx, rax
	jb	.label_1881
.label_1975:
	test	rax, rax
	je	.label_1809
	mov	r9, qword ptr [r8 + 0x30]
	xor	ebp, ebp
	nop	word ptr cs:[rax + rax]
.label_1953:
	lea	r10, [rbp + rbp*2]
	cmp	qword ptr [r9 + r10*8 + 8], 0
	jle	.label_1816
	mov	r13, qword ptr [r9 + r10*8 + 0x10]
	xor	ebx, ebx
	mov	qword ptr [rsp + 0x40], r10
	nop	dword ptr [rax]
.label_1839:
	mov	r14, qword ptr [r8 + 0x38]
	mov	rax, qword ptr [r13 + rbx*8]
	lea	r12, [rax + rax*2]
	mov	rax, qword ptr [r14 + r12*8]
	lea	r15, [r14 + r12*8 + 8]
	mov	rdx, qword ptr [r14 + r12*8 + 8]
	cmp	rax, rdx
	jne	.label_1821
	lea	rcx, [r14 + r12*8]
	lea	rdx, [rax + rax + 2]
	lea	rax, [rax + rax]
	mov	qword ptr [rcx], rdx
	mov	rdi, qword ptr [r14 + r12*8 + 0x10]
	lea	rsi, [rax*8 + 0x10]
	call	realloc
	test	rax, rax
	je	.label_1830
	lea	rcx, [r14 + r12*8 + 0x10]
	mov	qword ptr [rcx], rax
	mov	rdx, qword ptr [r15]
	mov	r8, qword ptr [rsp + 8]
	mov	r9, qword ptr [r8 + 0x30]
	mov	r10, qword ptr [rsp + 0x40]
	jmp	.label_1832
	nop	word ptr cs:[rax + rax]
.label_1821:
	mov	rax, qword ptr [r14 + r12*8 + 0x10]
.label_1832:
	lea	rsi, [rdx + 1]
	mov	qword ptr [r15], rsi
	mov	qword ptr [rax + rdx*8], rbp
	inc	rbx
	cmp	rbx, qword ptr [r9 + r10*8 + 8]
	jl	.label_1839
	mov	rax, qword ptr [r8 + 0x10]
	mov	r15, qword ptr [rsp + 0x38]
	mov	r14, qword ptr [rsp + 0x18]
.label_1816:
	inc	rbp
	cmp	rbp, rax
	jb	.label_1953
.label_1809:
	mov	dword ptr [rsp + 4], 0
	cmp	qword ptr [rsp + 0xe0], 0
	jne	.label_1854
	mov	al, byte ptr [r14 + 0xb0]
	mov	ecx, eax
	and	cl, 4
	je	.label_1854
	cmp	qword ptr [r15 + 0x28], 0
	jne	.label_1854
	mov	rdx, qword ptr [r14 + 0x10]
	test	rdx, rdx
	je	.label_1858
	mov	rbp, qword ptr [r14]
	xor	r9d, r9d
	movabs	r8, 0x1000000010001
	mov	rcx, rbp
	xor	r10d, r10d
	xor	edi, edi
.label_1890:
	movzx	ebx, byte ptr [rcx + 8]
	dec	bl
	movzx	esi, bl
	cmp	sil, 0xb
	ja	.label_1865
	jmp	qword ptr [(rsi * 8) + label_1869]
.label_2697:
	cmp	byte ptr [rcx], 0
	mov	sil, 1
	js	.label_1870
	mov	esi, r10d
.label_1870:
	mov	r10b, sil
	jmp	.label_1823
.label_2698:
	mov	rsi, qword ptr [rcx]
	cmp	qword ptr [rsi + 0x10], 0
	jne	.label_1854
	cmp	qword ptr [rsi + 0x18], 0
	je	.label_1823
	jmp	.label_1854
.label_2699:
	mov	r9b, 1
	jmp	.label_1823
.label_2700:
	mov	esi, dword ptr [rcx]
	lea	ebx, [rsi - 0x10]
	cmp	ebx, 0x30
	ja	.label_1882
	bt	r8, rbx
	jb	.label_1823
.label_1882:
	cmp	esi, 0x80
	jne	.label_1854
.label_1823:
	inc	rdi
	add	rcx, 0x10
	cmp	rdi, rdx
	jb	.label_1890
	mov	cl, r9b
	and	cl, 1
	or	r10b, r9b
	test	r10b, 1
	je	.label_1893
	xor	eax, eax
	mov	edx, 8
	jmp	.label_1909
.label_914:
	mov	eax, 0xc
.label_982:
	mov	dword ptr [rsp + 4], eax
.label_1866:
	mov	r12, qword ptr [rsp + 0x18]
	jmp	.label_1901
.label_1852:
	add	rdx, 0x10
	mov	rbp, qword ptr [r14]
.label_1909:
	mov	esi, dword ptr [rbp + rdx]
	cmp	sil, 5
	je	.label_1905
	cmp	sil, 1
	jne	.label_1908
	cmp	byte ptr [rbp + rdx - 8], 0
	jns	.label_1908
	and	esi, 0xffdfffff
	jmp	.label_1911
.label_1905:
	and	esi, 0xffffff00
	or	esi, 7
.label_1911:
	mov	dword ptr [rbp + rdx], esi
.label_1908:
	inc	rax
	cmp	rax, qword ptr [r14 + 0x10]
	jb	.label_1852
	mov	al, byte ptr [r14 + 0xb0]
	jmp	.label_1893
.label_1858:
	xor	ecx, ecx
.label_1893:
	mov	dword ptr [r14 + 0xb4], 1
	cmp	qword ptr [r14 + 0x98], 0
	setg	dl
	or	dl, cl
	add	dl, dl
	and	al, 0xf9
	or	al, dl
	mov	byte ptr [r14 + 0xb0], al
.label_1854:
	mov	rax, qword ptr [r14 + 0x68]
	mov	rax, qword ptr [rax + 0x18]
	mov	rax, qword ptr [rax + 0x38]
	mov	qword ptr [r14 + 0x90], rax
	mov	r15, qword ptr [r14 + 0x30]
	lea	r12, [rax + rax*2]
	mov	r13, qword ptr [r15 + r12*8 + 8]
	mov	qword ptr [rsp + 0x28], r13
	mov	r14, qword ptr [r15 + r12*8 + 8]
	test	r14, r14
	jle	.label_1923
	mov	qword ptr [rsp + 0x20], r13
	lea	rdi, [r13*8]
	call	malloc
	mov	rbp, rax
	mov	qword ptr [rsp + 0x30], rbp
	test	rbp, rbp
	je	.label_1929
	mov	rsi, qword ptr [r15 + r12*8 + 0x10]
	shl	r14, 3
	mov	rdi, rbp
	mov	rdx, r14
	call	memcpy
	mov	dword ptr [rsp + 0x14], 0
	test	r13, r13
	mov	r15, qword ptr [rsp + 0x38]
	mov	r12, qword ptr [rsp + 0x18]
	jle	.label_1936
	mov	rax, qword ptr [r12 + 0x98]
	test	rax, rax
	jle	.label_1936
	xor	eax, eax
	lea	r14, [rsp + 0x20]
	jmp	.label_1943
	nop	dword ptr [rax + rax]
.label_1955:
	mov	rbp, qword ptr [rsp + 0x30]
.label_1943:
	mov	r8, qword ptr [rbp + rax*8]
	mov	rdx, qword ptr [r12]
	mov	rsi, r8
	shl	rsi, 4
	cmp	byte ptr [rdx + rsi + 8], 4
	jne	.label_1818
	test	r13, r13
	mov	edi, 0
	jle	.label_1864
	add	rsi, rdx
	xor	edi, edi
	nop	
.label_1958:
	mov	rcx, qword ptr [rbp + rdi*8]
	shl	rcx, 4
	cmp	byte ptr [rdx + rcx + 8], 9
	jne	.label_1954
	mov	rcx, qword ptr [rdx + rcx]
	cmp	rcx, qword ptr [rsi]
	je	.label_1864
.label_1954:
	inc	rdi
	cmp	rdi, r13
	jl	.label_1958
.label_1864:
	cmp	rdi, r13
	je	.label_1818
	mov	rcx, qword ptr [r12 + 0x28]
	lea	rdx, [r8 + r8*2]
	mov	rcx, qword ptr [rcx + rdx*8 + 0x10]
	mov	rcx, qword ptr [rcx]
	test	r13, r13
	jle	.label_1962
	mov	rdx, r13
	dec	rdx
	mov	esi, 0
	je	.label_1849
	xor	esi, esi
	nop	dword ptr [rax + rax]
.label_1860:
	lea	rdi, [rsi + rdx]
	shr	rdi, 1
	cmp	qword ptr [rbp + rdi*8], rcx
	lea	rbx, [rdi + 1]
	cmovl	rsi, rbx
	cmovge	rdx, rdi
	cmp	rsi, rdx
	jb	.label_1860
.label_1849:
	cmp	rsi, -1
	je	.label_1962
	cmp	qword ptr [rbp + rsi*8], rcx
	je	.label_1818
.label_1962:
	mov	rax, qword ptr [r12 + 0x30]
	lea	rcx, [rcx + rcx*2]
	lea	rsi, [rax + rcx*8]
	mov	rdi, r14
	call	re_node_set_merge
	test	eax, eax
	jne	.label_1862
	mov	r13, qword ptr [rsp + 0x28]
	xor	eax, eax
	nop	
.label_1818:
	inc	rax
	cmp	rax, r13
	jl	.label_1955
	jmp	.label_1936
.label_1923:
	pxor	xmm0, xmm0
	movdqa	xmmword ptr [rsp + 0x20], xmm0
	mov	qword ptr [rsp + 0x30], 0
	mov	dword ptr [rsp + 0x14], 0
	mov	r15, qword ptr [rsp + 0x38]
	mov	r12, qword ptr [rsp + 0x18]
.label_1936:
	lea	rdi, [rsp + 0x14]
	lea	rdx, [rsp + 0x20]
	xor	ecx, ecx
	mov	rsi, r12
	call	re_acquire_state_context
	mov	qword ptr [r12 + 0x48], rax
	test	rax, rax
	je	.label_1811
	cmp	byte ptr [rax + 0x68], 0
	js	.label_1814
	mov	qword ptr [r12 + 0x60], rax
	mov	qword ptr [r12 + 0x58], rax
	mov	qword ptr [r12 + 0x50], rax
	jmp	.label_1815
.label_1814:
	lea	rbx, [rsp + 0x14]
	lea	rbp, [rsp + 0x20]
	mov	ecx, 1
	mov	rdi, rbx
	mov	rsi, r12
	mov	rdx, rbp
	call	re_acquire_state_context
	mov	qword ptr [r12 + 0x50], rax
	mov	ecx, 2
	mov	rdi, rbx
	mov	rsi, r12
	mov	rdx, rbp
	call	re_acquire_state_context
	mov	qword ptr [r12 + 0x58], rax
	mov	ecx, 6
	mov	rdi, rbx
	mov	rsi, r12
	mov	rdx, rbp
	call	re_acquire_state_context
	mov	qword ptr [r12 + 0x60], rax
	cmp	qword ptr [r12 + 0x50], 0
	je	.label_1833
	test	rax, rax
	je	.label_1833
	mov	rax, qword ptr [r12 + 0x58]
	test	rax, rax
	je	.label_1833
.label_1815:
	mov	rdi, qword ptr [rsp + 0x30]
	call	free
	xor	eax, eax
.label_1862:
	mov	dword ptr [rsp + 4], eax
	mov	rbx, qword ptr [r15]
	mov	rdi, qword ptr [rbx + 0x70]
	test	rdi, rdi
	je	.label_1836
	nop	dword ptr [rax]
.label_1848:
	mov	rbp, qword ptr [rdi]
	call	free
	test	rbp, rbp
	mov	rdi, rbp
	jne	.label_1848
.label_1836:
	mov	qword ptr [rbx + 0x70], 0
	mov	dword ptr [rbx + 0x80], 0xf
	mov	qword ptr [rbx + 0x68], 0
	mov	rdi, qword ptr [rbx + 0x20]
	call	free
	mov	qword ptr [rbx + 0x20], 0
	mov	rdi, qword ptr [rsp + 0x58]
	call	free
	mov	rdi, qword ptr [rsp + 0x60]
	call	free
	cmp	byte ptr [rsp + 0xd3], 0
	je	.label_1857
	mov	rdi, qword ptr [rsp + 0x50]
	call	free
.label_1857:
	xor	eax, eax
	cmp	dword ptr [rsp + 4], 0
	je	.label_1812
	jmp	.label_1861
.label_1833:
	mov	eax, dword ptr [rsp + 0x14]
	jmp	.label_1862
.label_1830:
	mov	eax, 0xc
	mov	r15, qword ptr [rsp + 0x38]
	jmp	.label_982
.label_1968:
	mov	esi, 0xe8
	mov	rdi, r12
	call	realloc
	mov	r12, rax
	mov	eax, 0xc
	test	r12, r12
	je	.label_1812
	mov	qword ptr [r15 + 8], 0xe8
	mov	qword ptr [r15], r12
	jmp	.label_1874
.label_1945:
	mov	edi, 0x3c8
	call	malloc
	xor	ebp, ebp
	test	rax, rax
	je	.label_1880
	mov	rcx, qword ptr [rbx + 0x70]
	mov	qword ptr [rax], rcx
	mov	qword ptr [rbx + 0x70], rax
	mov	dword ptr [rbx + 0x80], 0
	jmp	.label_1824
.label_1961:
	mov	edi, 0x3c8
	call	malloc
	test	rax, rax
	je	.label_1894
	mov	rcx, qword ptr [rbx + 0x70]
	mov	qword ptr [rax], rcx
	mov	qword ptr [rbx + 0x70], rax
	mov	dword ptr [rbx + 0x80], 0
	xor	ecx, ecx
	jmp	.label_1896
.label_1894:
	mov	dword ptr [rsp + 4], 0xc
.label_1940:
	mov	qword ptr [r12 + 0x68], 0
.label_1901:
	mov	rbx, qword ptr [r15]
	mov	rdi, qword ptr [rbx + 0x70]
	test	rdi, rdi
	je	.label_1810
	nop	word ptr cs:[rax + rax]
.label_1913:
	mov	rbp, qword ptr [rdi]
	call	free
	test	rbp, rbp
	mov	rdi, rbp
	jne	.label_1913
.label_1810:
	mov	qword ptr [rbx + 0x70], 0
	mov	dword ptr [rbx + 0x80], 0xf
	mov	qword ptr [rbx + 0x68], 0
	mov	rdi, qword ptr [rbx + 0x20]
	call	free
	mov	qword ptr [rbx + 0x20], 0
	mov	rdi, qword ptr [rsp + 0x58]
	call	free
	mov	rdi, qword ptr [rsp + 0x60]
	call	free
	cmp	byte ptr [rsp + 0xd3], 0
	je	.label_1861
	mov	rdi, qword ptr [rsp + 0x50]
	call	free
.label_1861:
	mov	rdi, r12
	call	free_dfa_content
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [r15], xmm0
	mov	eax, dword ptr [rsp + 4]
.label_1812:
	add	rsp, 0xe8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_1811:
	mov	eax, dword ptr [rsp + 0x14]
	jmp	.label_1862
.label_1929:
	pxor	xmm0, xmm0
	movdqa	xmmword ptr [rsp + 0x20], xmm0
	mov	dword ptr [rsp + 0x14], 0xc
	mov	eax, 0xc
	mov	r15, qword ptr [rsp + 0x38]
	mov	r12, qword ptr [rsp + 0x18]
	jmp	.label_1862
.label_1865:
	call	abort
	nop	
	.section	.text
	.align	16
	#Procedure 0x413be0

	.globl interrupt_handler
	.type interrupt_handler, @function
interrupt_handler:
	push	rbp
	push	r15
	push	r14
	push	rbx
	push	rax
	mov	r14d, edi
	cmp	byte ptr [rip + remove_files],  0
	je	.label_1228
	cmp	dword ptr [rip + files_created],  0
	je	.label_1231
	xor	ebp, ebp
	nop	word ptr cs:[rax + rax]
.label_1254:
	mov	rdi, qword ptr [rip + filename_space]
	mov	rsi, qword ptr [rip + prefix]
	call	strcpy
	mov	r15, qword ptr [rip + suffix]
	mov	rbx, qword ptr [rip + filename_space]
	mov	rdi, qword ptr [rip + prefix]
	call	strlen
	mov	rdi, rax
	add	rdi, rbx
	cmp	r15, 0
	je	.label_1242
	mov	rcx, qword ptr [rip + suffix]
	mov	esi, 1
	mov	rdx, -1
	xor	eax, eax
	mov	r8d, ebp
	call	__sprintf_chk
	jmp	.label_1041
	nop	dword ptr [rax + rax]
.label_1242:
	mov	r8d, dword ptr [rip + digits]
	mov	esi, 1
	mov	rdx, -1
	mov	ecx, OFFSET FLAT:label_901
	xor	eax, eax
	mov	r9d, ebp
	call	__sprintf_chk
.label_1041:
	mov	rdi, qword ptr [rip + filename_space]
	call	unlink
	inc	ebp
	cmp	ebp, dword ptr [rip + files_created]
	jb	.label_1254
.label_1231:
	mov	dword ptr [rip + files_created],  0
.label_1228:
	xor	esi, esi
	mov	edi, r14d
	call	signal
	mov	edi, r14d
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	jmp	raise
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x413be0

	.globl rpl_nl_langinfo
	.type rpl_nl_langinfo, @function
rpl_nl_langinfo:
	lea	eax, [rdi - 0x27d8]
	lea	ecx, [rdi + 0x1d842]
	cmp	eax, 0xc
	cmovb	edi, ecx
	jmp	nl_langinfo
	nop	word ptr [rax + rax]
	mov	byte ptr [rip + ignore_EPIPE],  dil
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x413c10

	.globl xmalloc
	.type xmalloc, @function
xmalloc:
	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	je	.label_1978
	test	rax, rax
	je	.label_1979
.label_1978:
	pop	rbx
	ret	
.label_1979:
	call	xalloc_die
	nop	word ptr [rax + rax]
.label_1190:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	push	rbx
	mov	rbx, rsi
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rdi
	jb	.label_1190
	imul	rbx, rdi
	mov	rdi, rbx
	call	malloc
	test	rbx, rbx
	je	.label_1107
	test	rax, rax
	je	.label_1190
.label_1107:
	pop	rbx
	ret	
	.section	.text
	.align	16
	#Procedure 0x413c70

	.globl check_arrival_expand_ecl_sub
	.type check_arrival_expand_ecl_sub, @function
check_arrival_expand_ecl_sub:
	push	rbp
	push	r15
	push	r14
	push	r12
	push	rbx
	mov	r15d, r8d
	mov	r14, rcx
	mov	rbp, rdx
	mov	rbx, rsi
	mov	r12, rdi
	jmp	.label_1984
	nop	dword ptr [rax]
.label_1313:
	mov	rax, qword ptr [rax + rbp*8 + 0x10]
	mov	rbp, qword ptr [rax]
.label_1984:
	mov	rax, qword ptr [rbx + 8]
	test	rax, rax
	jle	.label_1985
	dec	rax
	mov	rcx, qword ptr [rbx + 0x10]
	mov	edx, 0
	je	.label_1981
	xor	edx, edx
	nop	word ptr cs:[rax + rax]
.label_1980:
	lea	rsi, [rdx + rax]
	shr	rsi, 1
	cmp	qword ptr [rcx + rsi*8], rbp
	lea	rdi, [rsi + 1]
	cmovl	rdx, rdi
	cmovge	rax, rsi
	cmp	rdx, rax
	jb	.label_1980
.label_1981:
	cmp	rdx, -1
	je	.label_1985
	cmp	qword ptr [rcx + rdx*8], rbp
	je	.label_1982
.label_1985:
	mov	rax, qword ptr [r12]
	mov	rcx, rbp
	shl	rcx, 4
	movzx	edx, byte ptr [rax + rcx + 8]
	cmp	edx, r15d
	jne	.label_1983
	cmp	qword ptr [rax + rcx], r14
	je	.label_1987
.label_1983:
	mov	rdi, rbx
	mov	rsi, rbp
	call	re_node_set_insert
	mov	ecx, eax
	mov	eax, 0xc
	test	cl, cl
	je	.label_1311
	mov	rax, qword ptr [r12 + 0x28]
	lea	rbp, [rbp + rbp*2]
	mov	rcx, qword ptr [rax + rbp*8 + 8]
	cmp	rcx, 2
	je	.label_1986
	test	rcx, rcx
	jne	.label_1313
	jmp	.label_1982
	nop	dword ptr [rax]
.label_1986:
	mov	rax, qword ptr [rax + rbp*8 + 0x10]
	mov	rdx, qword ptr [rax + 8]
	mov	rdi, r12
	mov	rsi, rbx
	mov	rcx, r14
	mov	r8d, r15d
	call	check_arrival_expand_ecl_sub
	test	eax, eax
	jne	.label_1311
	mov	rax, qword ptr [r12 + 0x28]
	jmp	.label_1313
.label_1987:
	cmp	r15d, 9
	jne	.label_1982
	mov	rdi, rbx
	mov	rsi, rbp
	call	re_node_set_insert
	mov	ecx, eax
	mov	eax, 0xc
	test	cl, cl
	je	.label_1311
.label_1982:
	xor	eax, eax
.label_1311:
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x413d90

	.globl check_node_accept
	.type check_node_accept, @function
check_node_accept:
	push	rbp
	push	r14
	push	rbx
	mov	rax, qword ptr [rdi + 8]
	movzx	ecx, byte ptr [rax + rdx]
	mov	ebp, dword ptr [rsi + 8]
	xor	eax, eax
	mov	r14d, ebp
	mov	ebx, ebp
	dec	bl
	movzx	ebp, bl
	cmp	bpl, 6
	ja	.label_1097
	jmp	qword ptr [(rbp * 8) + label_1988]
.label_2737:
	cmp	byte ptr [rsi], cl
	je	.label_975
	xor	eax, eax
	jmp	.label_1097
.label_2738:
	mov	rax, qword ptr [rsi]
	mov	ebx, ecx
	shr	bl, 6
	movzx	esi, bl
	mov	rax, qword ptr [rax + rsi*8]
	bt	rax, rcx
	jb	.label_975
	xor	eax, eax
	jmp	.label_1097
.label_2740:
	test	cl, cl
	js	.label_998
.label_2739:
	test	cl, cl
	je	.label_1334
	cmp	cl, 0xa
	jne	.label_975
	mov	rax, qword ptr [rdi + 0x98]
	test	byte ptr [rax + 0xd8], 0x40
	jne	.label_975
	xor	eax, eax
	jmp	.label_1097
.label_1334:
	mov	rax, qword ptr [rdi + 0x98]
	cmp	byte ptr [rax + 0xd8], 0
	js	.label_1339
.label_975:
	mov	eax, r14d
	mov	ebp, eax
	shr	ebp, 8
	mov	al, 1
	test	bp, 0x3ff
	je	.label_1097
	mov	eax, dword ptr [rdi + 0xa0]
	mov	rsi, rdx
	mov	edx, eax
	call	re_string_context_at
	mov	ecx, eax
	and	ecx, 1
	test	bpl, 4
	je	.label_1063
	test	ecx, ecx
	jne	.label_1063
	xor	eax, eax
	jmp	.label_1097
.label_1063:
	mov	edx, r14d
	test	dh, 8
	je	.label_1349
	test	ecx, ecx
	je	.label_1349
.label_998:
	xor	eax, eax
	jmp	.label_1097
.label_1349:
	mov	ecx, r14d
	test	ch, 0x20
	je	.label_1351
	mov	ecx, eax
	and	ecx, 2
	jne	.label_1351
.label_1339:
	xor	eax, eax
	jmp	.label_1097
.label_1351:
	and	eax, 8
	test	bpl, bpl
	setns	cl
	shr	eax, 3
	or	al, cl
.label_1097:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x413e80

	.globl re_node_set_merge
	.type re_node_set_merge, @function
re_node_set_merge:
	push	r15
	push	r14
	push	r12
	push	rbx
	push	rax
	mov	r14, rsi
	mov	r15, rdi
	test	r14, r14
	je	.label_1989
	mov	rax, qword ptr [r14 + 8]
	test	rax, rax
	je	.label_1989
	mov	rbx, qword ptr [r15]
	mov	rcx, qword ptr [r15 + 8]
	lea	rdx, [rcx + rax*2]
	cmp	rbx, rdx
	jge	.label_1996
	add	rbx, rax
	mov	rdi, qword ptr [r15 + 0x10]
	mov	rsi, rbx
	shl	rsi, 4
	call	realloc
	mov	rcx, rax
	mov	eax, 0xc
	test	rcx, rcx
	je	.label_1992
	add	rbx, rbx
	mov	qword ptr [r15 + 0x10], rcx
	mov	qword ptr [r15], rbx
	mov	rcx, qword ptr [r15 + 8]
	mov	rax, qword ptr [r14 + 8]
.label_1996:
	test	rcx, rcx
	je	.label_1997
	lea	r12, [rcx + rax*2]
	dec	rax
	dec	rcx
	mov	rdx, rax
	or	rdx, rcx
	js	.label_1999
	mov	rdx, qword ptr [r15 + 0x10]
	mov	rsi, qword ptr [r14 + 0x10]
	jmp	.label_1991
.label_1995:
	dec	rax
.label_2001:
	dec	rcx
	jmp	.label_1994
	nop	word ptr [rax + rax]
.label_1991:
	mov	rdi, qword ptr [rsi + rax*8]
	cmp	qword ptr [rdx + rcx*8], rdi
	je	.label_1995
	jge	.label_2001
	dec	rax
	mov	qword ptr [rdx + r12*8 - 8], rdi
	dec	r12
.label_1994:
	mov	rdi, rax
	or	rdi, rcx
	jns	.label_1991
.label_1999:
	test	rax, rax
	js	.label_2002
	lea	rcx, [rax + 1]
	sub	r12, rcx
	lea	rdi, [r12*8]
	add	rdi, qword ptr [r15 + 0x10]
	mov	rsi, qword ptr [r14 + 0x10]
	lea	rdx, [rax*8 + 8]
	call	memcpy
.label_2002:
	mov	r9, qword ptr [r15 + 8]
	mov	rax, qword ptr [r14 + 8]
	lea	rcx, [r9 + rax*2 - 1]
	mov	rsi, rcx
	sub	rsi, r12
	inc	rsi
	je	.label_1989
	lea	rax, [rsi + r9]
	mov	qword ptr [r15 + 8], rax
	mov	rdi, qword ptr [r15 + 0x10]
.label_1993:
	lea	r8, [r9 - 1]
	lea	rdx, [rsi*8]
	nop	dword ptr [rax + rax]
.label_1998:
	mov	rax, qword ptr [rdi + rcx*8]
	mov	rbx, qword ptr [rdi + r9*8 - 8]
	cmp	rax, rbx
	jle	.label_1990
	dec	rcx
	lea	rbx, [rdi + rdx]
	add	rdx, -8
	dec	rsi
	mov	qword ptr [rbx + r9*8 - 8], rax
	jne	.label_1998
	jmp	.label_1989
	nop	word ptr cs:[rax + rax]
.label_1990:
	lea	rax, [rdi + rdx]
	mov	qword ptr [rax + r9*8 - 8], rbx
	cmp	r9, 1
	mov	r9, r8
	jg	.label_1993
	lea	rsi, [rdi + r12*8]
.label_2000:
	call	memcpy
.label_1989:
	xor	eax, eax
.label_1992:
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
.label_1997:
	mov	qword ptr [r15 + 8], rax
	mov	rdi, qword ptr [r15 + 0x10]
	mov	rdx, qword ptr [r14 + 8]
	mov	rsi, qword ptr [r14 + 0x10]
	shl	rdx, 3
	jmp	.label_2000
	nop	
	.section	.text
	.align	16
	#Procedure 0x414010

	.globl peek_token
	.type peek_token, @function
peek_token:
	push	rbp
	push	r15
	push	r14
	push	r12
	push	rbx
	sub	rsp, 0x10
	mov	rbp, rsi
	mov	r15, rdi
	mov	rax, qword ptr [rbp + 0x48]
	cmp	qword ptr [rbp + 0x68], rax
	jle	.label_2006
	mov	r12, rdx
	mov	rcx, qword ptr [rbp + 8]
	movzx	ebx, byte ptr [rcx + rax]
	mov	byte ptr [r15], bl
	mov	r14d, dword ptr [r15 + 8]
	mov	eax, r14d
	and	eax, 0xff9fffff
	mov	dword ptr [r15 + 8], eax
	mov	edx, dword ptr [rbp + 0x90]
	cmp	edx, 2
	jl	.label_2012
	mov	rax, qword ptr [rbp + 0x48]
	cmp	rax, qword ptr [rbp + 0x30]
	je	.label_2012
	mov	rcx, qword ptr [rbp + 0x10]
	cmp	dword ptr [rcx + rax*4], -1
	je	.label_2017
.label_2012:
	cmp	bl, 0x5c
	jne	.label_2021
	mov	rcx, qword ptr [rbp + 0x48]
	lea	rax, [rcx + 1]
	cmp	rax, qword ptr [rbp + 0x58]
	jge	.label_2023
	cmp	byte ptr [rbp + 0x8b], 0
	jne	.label_2005
.label_2008:
	mov	rcx, qword ptr [rbp + 8]
	mov	bl, byte ptr [rcx + rax]
.label_2004:
	mov	byte ptr [r15], bl
	and	r14d, 0xff9fff00
	or	r14d, 1
	mov	dword ptr [r15 + 8], r14d
	cmp	dword ptr [rbp + 0x90], 2
	jl	.label_2009
	mov	rax, qword ptr [rbp + 0x10]
	mov	rcx, qword ptr [rbp + 0x48]
	mov	ebp, dword ptr [rax + rcx*4 + 4]
	mov	edi, ebp
	call	iswalnum
	test	eax, eax
	setne	al
	cmp	ebp, 0x5f
	sete	cl
	or	cl, al
	movzx	ecx, cl
	shl	ecx, 0x16
	mov	eax, 0xffbfffff
	and	eax, dword ptr [r15 + 8]
	or	eax, ecx
	movzx	ebp, bl
	jmp	.label_2020
.label_2006:
	mov	byte ptr [r15 + 8], 2
	xor	r14d, r14d
	jmp	.label_890
.label_2021:
	and	r14d, 0xff9fff00
	or	r14d, 1
	mov	dword ptr [r15 + 8], r14d
	cmp	dword ptr [rbp + 0x90], 2
	jl	.label_2003
	mov	rax, qword ptr [rbp + 0x10]
	mov	rcx, qword ptr [rbp + 0x48]
	mov	r14d, dword ptr [rax + rcx*4]
	mov	edi, r14d
	call	iswalnum
	test	eax, eax
	setne	al
	cmp	r14d, 0x5f
	sete	cl
	or	cl, al
	movzx	ecx, cl
	shl	ecx, 0x16
	mov	eax, 0xffbfffff
	and	eax, dword ptr [r15 + 8]
	or	eax, ecx
	jmp	.label_2010
.label_2023:
	and	r14d, 0xff9fff00
	or	r14d, 0x24
	jmp	.label_2015
.label_2003:
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	movzx	eax, word ptr [rax + rbx*2]
	xor	ecx, ecx
	cmp	bl, 0x5f
	sete	cl
	shr	eax, 3
	and	eax, 1
	or	eax, ecx
	shl	eax, 0x16
	or	eax, r14d
.label_2010:
	mov	dword ptr [r15 + 8], eax
	mov	r14d, 1
	add	bl, 0xf6
	movzx	ecx, bl
	cmp	cl, 0x73
	ja	.label_890
	jmp	qword ptr [(rcx * 8) + label_2011]
.label_2704:
	mov	rcx, r12
	test	ch, 8
	je	.label_890
	jmp	.label_929
.label_2009:
	movzx	ebp, bl
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	movzx	eax, word ptr [rax + rbp*2]
	xor	ecx, ecx
	cmp	bl, 0x5f
	sete	cl
	shr	eax, 3
	and	eax, 1
	or	eax, ecx
	shl	eax, 0x16
	or	eax, r14d
.label_2020:
	mov	dword ptr [r15 + 8], eax
	mov	r14d, 2
	add	bl, 0xd9
	movzx	ecx, bl
	cmp	cl, 0x56
	ja	.label_890
	jmp	qword ptr [(rcx * 8) + label_2019]
.label_2810:
	mov	rcx, r12
	test	ch, 0x40
	jne	.label_890
	and	eax, 0xffffff00
	or	eax, 4
	mov	dword ptr [r15 + 8], eax
	add	rbp, -0x31
	mov	qword ptr [r15], rbp
	jmp	.label_890
.label_2017:
	and	r14d, 0xff9fff00
	or	r14d, 0x200001
.label_2015:
	mov	dword ptr [r15 + 8], r14d
	mov	r14d, 1
.label_890:
	mov	eax, r14d
	add	rsp, 0x10
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_2705:
	mov	rdx, r12
	test	dl, 8
	jne	.label_951
	mov	rcx, qword ptr [rbp + 0x48]
	inc	rcx
	cmp	rcx, qword ptr [rbp + 0x58]
	je	.label_951
	mov	qword ptr [rbp + 0x48], rcx
	lea	rdi, [rsp]
	mov	rsi, rbp
	call	peek_token
	dec	qword ptr [rbp + 0x48]
	movzx	eax, byte ptr [rsp + 8]
	add	eax, -9
	cmp	eax, 1
	ja	.label_890
	mov	eax, dword ptr [r15 + 8]
.label_951:
	and	eax, 0xffffff00
	or	eax, 0xc
	mov	dword ptr [r15 + 8], eax
	mov	dword ptr [r15], 0x20
	jmp	.label_890
.label_2706:
	mov	rcx, r12
	test	ch, 0x20
	je	.label_890
	jmp	.label_966
.label_2707:
	mov	rcx, r12
	test	ch, 0x20
	je	.label_890
	jmp	.label_970
.label_2708:
	and	eax, 0xffffff00
	or	eax, 0xb
	mov	dword ptr [r15 + 8], eax
	jmp	.label_890
.label_2709:
	test	r12w, 0x402
	jne	.label_890
	jmp	.label_976
.label_2710:
	and	eax, 0xffffff00
	or	eax, 5
	mov	dword ptr [r15 + 8], eax
	jmp	.label_890
.label_2711:
	test	r12w, 0x402
	jne	.label_890
	jmp	.label_979
.label_2712:
	and	eax, 0xffffff00
	or	eax, 0x14
	mov	dword ptr [r15 + 8], eax
	jmp	.label_890
.label_2713:
	mov	rdx, r12
	test	edx, 0x800008
	jne	.label_934
	mov	rcx, qword ptr [rbp + 0x48]
	test	rcx, rcx
	je	.label_934
	test	dh, 8
	je	.label_890
	mov	rdx, qword ptr [rbp + 8]
	cmp	byte ptr [rdx + rcx - 1], 0xa
	jne	.label_890
.label_934:
	and	eax, 0xffffff00
	or	eax, 0xc
	mov	dword ptr [r15 + 8], eax
	mov	dword ptr [r15], 0x10
	jmp	.label_890
.label_2714:
	and	r12d, 0x1200
	cmp	r12, 0x1200
	jne	.label_890
	jmp	.label_996
.label_2715:
	mov	rcx, r12
	test	ch, 4
	jne	.label_890
	test	cx, cx
	js	.label_929
	jmp	.label_890
.label_2716:
	and	r12d, 0x1200
	cmp	r12, 0x1200
	jne	.label_890
	jmp	.label_1004
.label_2806:
	test	r12d, 0x80000
	jne	.label_890
	and	eax, 0xffffff00
	or	eax, 0xc
	mov	dword ptr [r15 + 8], eax
	mov	dword ptr [r15], 0x80
	jmp	.label_890
.label_2807:
	mov	rcx, r12
	test	ch, 0x20
	jne	.label_890
.label_966:
	and	eax, 0xffffff00
	or	eax, 8
	mov	dword ptr [r15 + 8], eax
	jmp	.label_890
.label_2808:
	mov	rcx, r12
	test	ch, 0x20
	jne	.label_890
.label_970:
	and	eax, 0xffffff00
	or	eax, 9
	mov	dword ptr [r15 + 8], eax
	jmp	.label_890
.label_2809:
	and	r12d, 0x402
	cmp	r12, 2
	jne	.label_890
.label_976:
	and	eax, 0xffffff00
	or	eax, 0x12
	mov	dword ptr [r15 + 8], eax
	jmp	.label_890
.label_2811:
	test	r12d, 0x80000
	jne	.label_890
	and	eax, 0xffffff00
	or	eax, 0xc
	mov	dword ptr [r15 + 8], eax
	mov	dword ptr [r15], 6
	jmp	.label_890
.label_2812:
	test	r12d, 0x80000
	jne	.label_890
	and	eax, 0xffffff00
	or	eax, 0xc
	mov	dword ptr [r15 + 8], eax
	mov	dword ptr [r15], 9
	jmp	.label_890
.label_2813:
	and	r12d, 0x402
	cmp	r12, 2
	jne	.label_890
.label_979:
	and	eax, 0xffffff00
	or	eax, 0x13
	mov	dword ptr [r15 + 8], eax
	jmp	.label_890
.label_2814:
	test	r12d, 0x80000
	jne	.label_890
	and	eax, 0xffffff00
	or	eax, 0xc
	mov	dword ptr [r15 + 8], eax
	mov	dword ptr [r15], 0x200
	jmp	.label_890
.label_2815:
	test	r12d, 0x80000
	jne	.label_890
	and	eax, 0xffffff00
	or	eax, 0x23
	mov	dword ptr [r15 + 8], eax
	jmp	.label_890
.label_2816:
	test	r12d, 0x80000
	jne	.label_890
	and	eax, 0xffffff00
	or	eax, 0x21
	mov	dword ptr [r15 + 8], eax
	jmp	.label_890
.label_2817:
	test	r12d, 0x80000
	jne	.label_890
	and	eax, 0xffffff00
	or	eax, 0xc
	mov	dword ptr [r15 + 8], eax
	mov	dword ptr [r15], 0x40
	jmp	.label_890
.label_2818:
	test	r12d, 0x80000
	jne	.label_890
	and	eax, 0xffffff00
	or	eax, 0xc
	mov	dword ptr [r15 + 8], eax
	mov	dword ptr [r15], 0x100
	jmp	.label_890
.label_2819:
	test	r12d, 0x80000
	jne	.label_890
	and	eax, 0xffffff00
	or	eax, 0x22
	mov	dword ptr [r15 + 8], eax
	jmp	.label_890
.label_2820:
	test	r12d, 0x80000
	jne	.label_890
	and	eax, 0xffffff00
	or	eax, 0x20
	mov	dword ptr [r15 + 8], eax
	jmp	.label_890
.label_2821:
	and	r12d, 0x1200
	cmp	r12, 0x200
	jne	.label_890
.label_996:
	and	eax, 0xffffff00
	or	eax, 0x17
	mov	dword ptr [r15 + 8], eax
	jmp	.label_890
.label_2822:
	mov	rcx, r12
	test	ch, 4
	jne	.label_890
	test	cx, cx
	js	.label_890
.label_929:
	and	eax, 0xffffff00
	or	eax, 0xa
	mov	dword ptr [r15 + 8], eax
	jmp	.label_890
.label_2823:
	and	r12d, 0x1200
	cmp	r12, 0x200
	jne	.label_890
.label_1004:
	and	eax, 0xffffff00
	or	eax, 0x18
	mov	dword ptr [r15 + 8], eax
	jmp	.label_890
.label_2005:
	cmp	edx, 2
	jl	.label_2014
	mov	rdx, qword ptr [rbp + 0x10]
	cmp	dword ptr [rdx + rcx*4 + 4], -1
	je	.label_2008
	lea	rsi, [rcx + 2]
	cmp	qword ptr [rbp + 0x30], rsi
	je	.label_2014
	cmp	dword ptr [rdx + rcx*4 + 8], -1
	je	.label_2008
.label_2014:
	mov	dl, byte ptr [rbp + 0x8c]
	test	dl, dl
	mov	rsi, rax
	je	.label_2022
	mov	rsi, qword ptr [rbp + 0x18]
	mov	rsi, qword ptr [rsi + rcx*8 + 8]
.label_2022:
	add	rsi, qword ptr [rbp + 0x28]
	test	dl, dl
	mov	rcx, qword ptr [rbp]
	mov	bl, byte ptr [rcx + rsi]
	je	.label_2004
	test	bl, bl
	js	.label_2008
	jmp	.label_2004
	.section	.text
	.align	16
	#Procedure 0x414628
	.globl sub_414628
	.type sub_414628, @function
sub_414628:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x414630

	.globl cleanup_fatal
	.type cleanup_fatal, @function
cleanup_fatal:
	push	rbp
	push	r14
	push	rbx
	sub	rsp, 0x80
	call	close_output_file
	lea	rdx, [rsp]
	xor	edi, edi
	mov	esi, OFFSET FLAT:caught_signals
	call	sigprocmask
	cmp	byte ptr [rip + remove_files],  0
	je	.label_2024
	cmp	dword ptr [rip + files_created],  0
	je	.label_2029
	xor	ebx, ebx
	nop	dword ptr [rax]
.label_2027:
	mov	rdi, qword ptr [rip + filename_space]
	mov	rsi, qword ptr [rip + prefix]
	call	strcpy
	mov	r14, qword ptr [rip + suffix]
	mov	rbp, qword ptr [rip + filename_space]
	mov	rdi, qword ptr [rip + prefix]
	call	strlen
	mov	rdi, rax
	add	rdi, rbp
	cmp	r14, 0
	je	.label_2028
	mov	rcx, qword ptr [rip + suffix]
	mov	esi, 1
	mov	rdx, -1
	xor	eax, eax
	mov	r8d, ebx
	call	__sprintf_chk
	jmp	.label_2025
	.section	.text
	.align	16
	#Procedure 0x4146c8
	.globl sub_4146c8
	.type sub_4146c8, @function
sub_4146c8:

	nop	dword ptr [rax + rax]
.label_2028:
	mov	r8d, dword ptr [rip + digits]
	mov	esi, 1
	mov	rdx, -1
	mov	ecx, OFFSET FLAT:label_901
	xor	eax, eax
	mov	r9d, ebx
	call	__sprintf_chk
.label_2025:
	mov	r14, qword ptr [rip + filename_space]
	mov	rdi, r14
	call	unlink
	test	eax, eax
	je	.label_2026
	call	__errno_location
	mov	ebp, dword ptr [rax]
	xor	edi, edi
	mov	esi, 3
	mov	rdx, r14
	call	quotearg_n_style_colon
	mov	rcx, rax
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_850
	xor	eax, eax
	mov	esi, ebp
	call	error
.label_2026:
	inc	ebx
	cmp	ebx, dword ptr [rip + files_created]
	jb	.label_2027
.label_2029:
	mov	dword ptr [rip + files_created],  0
.label_2024:
	lea	rsi, [rsp]
	mov	edi, 2
	xor	edx, edx
	call	sigprocmask
	mov	edi, 1
	call	exit
	.section	.text
	.align	16
	#Procedure 0x414760

	.globl match_ctx_clean
	.type match_ctx_clean, @function
match_ctx_clean:
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	mov	r14, rdi
	cmp	qword ptr [r14 + 0xe8], 0
	jle	.label_2030
	xor	r12d, r12d
	nop	dword ptr [rax]
.label_2033:
	mov	rax, qword ptr [r14 + 0xf8]
	mov	r15, qword ptr [rax + r12*8]
	cmp	qword ptr [r15 + 0x20], 0
	jle	.label_2031
	xor	ebx, ebx
	nop	word ptr cs:[rax + rax]
.label_2034:
	mov	rax, qword ptr [r15 + 0x28]
	mov	r13, qword ptr [rax + rbx*8]
	mov	rdi, qword ptr [r13 + 0x20]
	call	free
	mov	rdi, r13
	call	free
	inc	rbx
	cmp	rbx, qword ptr [r15 + 0x20]
	jl	.label_2034
.label_2031:
	mov	rdi, qword ptr [r15 + 0x28]
	call	free
	mov	rax, qword ptr [r15 + 0x10]
	test	rax, rax
	je	.label_2032
	mov	rdi, qword ptr [rax + 0x10]
	call	free
	mov	rdi, qword ptr [r15 + 0x10]
	call	free
.label_2032:
	mov	rdi, r15
	call	free
	inc	r12
	cmp	r12, qword ptr [r14 + 0xe8]
	jl	.label_2033
.label_2030:
	mov	qword ptr [r14 + 0xe8], 0
	mov	qword ptr [r14 + 0xc8], 0
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	16
	#Procedure 0x41481a
	.globl sub_41481a
	.type sub_41481a, @function
sub_41481a:

	nop	word ptr [rax + rax]
.label_2035:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x41482f
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
	je	.label_2036
	test	r14, r14
	je	.label_2035
.label_2036:
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
	.align	16
	#Procedure 0x414860

	.globl check_subexp_matching_top
	.type check_subexp_matching_top, @function
check_subexp_matching_top:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	qword ptr [rsp], rdx
	mov	r12, rsi
	mov	r15, rdi
	mov	rcx, qword ptr [r12 + 8]
	xor	eax, eax
	test	rcx, rcx
	jle	.label_2037
	mov	r13, qword ptr [r15 + 0x98]
	xor	ebx, ebx
	jmp	.label_2038
.label_2039:
	mov	rdi, qword ptr [r15 + 0xf8]
	mov	rsi, r14
	shl	rsi, 4
	call	realloc
	mov	rcx, rax
	mov	eax, 0xc
	test	rcx, rcx
	je	.label_2037
	add	r14, r14
	mov	qword ptr [r15 + 0xf8], rcx
	mov	qword ptr [r15 + 0xf0], r14
	jmp	.label_2041
	.section	.text
	.align	16
	#Procedure 0x4148c7
	.globl sub_4148c7
	.type sub_4148c7, @function
sub_4148c7:

	nop	word ptr [rax + rax]
.label_2038:
	mov	rax, qword ptr [r12 + 0x10]
	mov	rbp, qword ptr [rax + rbx*8]
	mov	rax, qword ptr [r13]
	mov	rdx, rbp
	shl	rdx, 4
	cmp	byte ptr [rax + rdx + 8], 8
	jne	.label_2040
	mov	rax, qword ptr [rax + rdx]
	cmp	rax, 0x3f
	jg	.label_2040
	mov	rdx, qword ptr [r13 + 0xa0]
	bt	rdx, rax
	jae	.label_2040
	mov	r14, qword ptr [r15 + 0xe8]
	cmp	r14, qword ptr [r15 + 0xf0]
	je	.label_2039
.label_2041:
	mov	edi, 1
	mov	esi, 0x30
	call	rpl_calloc
	mov	rcx, qword ptr [r15 + 0xe8]
	mov	rdx, qword ptr [r15 + 0xf8]
	mov	qword ptr [rdx + rcx*8], rax
	mov	rax, qword ptr [r15 + 0xf8]
	mov	rdx, qword ptr [rax + rcx*8]
	mov	eax, 0xc
	test	rdx, rdx
	je	.label_2037
	mov	qword ptr [rdx + 8], rbp
	inc	rcx
	mov	qword ptr [r15 + 0xe8], rcx
	mov	rax, qword ptr [rsp]
	mov	qword ptr [rdx], rax
	mov	rcx, qword ptr [r12 + 8]
	nop	word ptr [rax + rax]
.label_2040:
	inc	rbx
	xor	eax, eax
	cmp	rbx, rcx
	jl	.label_2038
.label_2037:
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
	#Procedure 0x41498d
	.globl sub_41498d
	.type sub_41498d, @function
sub_41498d:

	nop	dword ptr [rax]
.label_2042:
	mov	eax, ebx
.label_2043:
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x41499d
	.globl sub_41499d
	.type sub_41499d, @function
sub_41499d:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4149a7

	.globl fd_reopen
	.type fd_reopen, @function
fd_reopen:
	push	rbp
	push	r15
	push	r14
	push	rbx
	push	rax
	mov	ebp, edi
	xor	eax, eax
	mov	rdi, rsi
	mov	esi, edx
	mov	edx, ecx
	call	open
	mov	ebx, eax
	cmp	ebx, ebp
	je	.label_2042
	test	ebx, ebx
	js	.label_2042
	mov	edi, ebx
	mov	esi, ebp
	call	dup2
	mov	r14d, eax
	call	__errno_location
	mov	rbp, rax
	mov	r15d, dword ptr [rbp]
	mov	edi, ebx
	call	close
	mov	dword ptr [rbp], r15d
	mov	eax, r14d
	jmp	.label_2043
	.section	.text
	.align	16
	#Procedure 0x4149f0

	.globl version_etc_va
	.type version_etc_va, @function
version_etc_va:
	movsxd	r10, dword ptr [r8]
	cmp	r10, 0x28
	ja	.label_2054
	mov	r9, r10
	add	r9, qword ptr [r8 + 0x10]
	lea	r10d, [r10 + 8]
	mov	dword ptr [r8], r10d
	jmp	.label_2056
.label_2054:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_2056:
	sub	rsp, 0x58
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp], rax
	xor	r9d, r9d
	test	rax, rax
	je	.label_2044
	cmp	r10d, 0x29
	jae	.label_2053
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_2055
.label_2053:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_2055:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 8], rax
	mov	r9d, 1
	test	rax, rax
	je	.label_2044
	cmp	r10d, 0x29
	jae	.label_2051
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_2052
.label_2051:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_2052:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x10], rax
	mov	r9d, 2
	test	rax, rax
	je	.label_2044
	cmp	r10d, 0x29
	jae	.label_2049
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_2050
.label_2049:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_2050:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x18], rax
	mov	r9d, 3
	test	rax, rax
	je	.label_2044
	cmp	r10d, 0x29
	jae	.label_2047
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_2048
.label_2047:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_2048:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x20], rax
	mov	r9d, 4
	test	rax, rax
	je	.label_2044
	cmp	r10d, 0x29
	jae	.label_2045
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_2046
.label_2045:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_2046:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x28], rax
	mov	r9d, 5
	test	rax, rax
	je	.label_2044
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x30], rax
	mov	r9d, 6
	test	rax, rax
	je	.label_2044
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x38], rax
	mov	r9d, 7
	test	rax, rax
	je	.label_2044
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x40], rax
	mov	r9d, 8
	test	rax, rax
	je	.label_2044
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x48], rax
	cmp	rax, 1
	mov	r9d, 9
	sbb	r9, -1
.label_2044:
	lea	r8, [rsp]
	call	version_etc_arn
	add	rsp, 0x58
	ret	
	.section	.text
	.align	16
	#Procedure 0x414bd2
	.globl sub_414bd2
	.type sub_414bd2, @function
sub_414bd2:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x414be0

	.globl check_dst_limits
	.type check_dst_limits, @function
check_dst_limits:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x38
	mov	r14, r9
	mov	qword ptr [rsp + 0x28], r8
	mov	qword ptr [rsp + 0x18], rdx
	mov	rbx, rsi
	mov	rbp, rdi
	mov	qword ptr [rsp + 0x20], rcx
	mov	rsi, rcx
	call	search_cur_bkref_entry
	mov	qword ptr [rsp + 0x10], rax
	mov	rdi, rbp
	mov	qword ptr [rsp + 0x30], r14
	mov	rsi, r14
	call	search_cur_bkref_entry
	mov	qword ptr [rsp + 8], rax
	cmp	qword ptr [rbx + 8], 0
	jle	.label_2057
	mov	r14, qword ptr [rbp + 0x98]
	xor	r12d, r12d
	nop	dword ptr [rax]
.label_2059:
	mov	rax, qword ptr [rbp + 0xd8]
	mov	rcx, qword ptr [rbx + 0x10]
	mov	rsi, qword ptr [rcx + r12*8]
	lea	rcx, [rsi + rsi*4]
	mov	rax, qword ptr [rax + rcx*8]
	mov	rcx, qword ptr [r14]
	shl	rax, 4
	mov	r15, qword ptr [rcx + rax]
	mov	rdi, rbp
	mov	rdx, r15
	mov	rcx, qword ptr [rsp + 0x18]
	mov	r8, qword ptr [rsp + 0x20]
	mov	r9, qword ptr [rsp + 0x10]
	call	check_dst_limits_calc_pos
	mov	r13d, eax
	mov	rax, qword ptr [rbx + 0x10]
	mov	rsi, qword ptr [rax + r12*8]
	mov	rdi, rbp
	mov	rdx, r15
	mov	rcx, qword ptr [rsp + 0x28]
	mov	r8, qword ptr [rsp + 0x30]
	mov	r9, qword ptr [rsp + 8]
	call	check_dst_limits_calc_pos
	cmp	eax, r13d
	mov	al, 1
	jne	.label_2058
	inc	r12
	cmp	r12, qword ptr [rbx + 8]
	jl	.label_2059
.label_2057:
	xor	eax, eax
.label_2058:
	add	rsp, 0x38
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x414cc2
	.globl sub_414cc2
	.type sub_414cc2, @function
sub_414cc2:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x414cd0

	.globl rpl_fflush
	.type rpl_fflush, @function
rpl_fflush:
	push	rbx
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_2060
	mov	rdi, rbx
	call	__freading
	test	eax, eax
	je	.label_2060
	test	byte ptr [rbx + 1], 1
	je	.label_2060
	xor	esi, esi
	mov	edx, 1
	mov	rdi, rbx
	call	rpl_fseeko
.label_2060:
	mov	rdi, rbx
	pop	rbx
	jmp	fflush
	.section	.text
	.align	16
	#Procedure 0x414d03
	.globl sub_414d03
	.type sub_414d03, @function
sub_414d03:

	nop	word ptr cs:[rax + rax]
.label_2061:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x414d15
	.globl sub_414d15
	.type sub_414d15, @function
sub_414d15:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x414d1d
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
	je	.label_2061
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
	.section	.text
	.align	16
	#Procedure 0x414d80
	.globl x2nrealloc
	.type x2nrealloc, @function
x2nrealloc:

	push	rbx
	mov	rbx, rdx
	mov	rcx, qword ptr [rsi]
	test	rdi, rdi
	je	.label_2062
	movabs	rax, 0x5555555555555554
	xor	edx, edx
	div	rbx
	cmp	rax, rcx
	jbe	.label_2064
	mov	rax, rcx
	shr	rax, 1
	lea	rcx, [rcx + rax + 1]
	jmp	.label_2065
.label_2068:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_2066
	test	rax, rax
	je	.label_2064
.label_2066:
	pop	rbx
	ret	
.label_2062:
	test	rcx, rcx
	jne	.label_2063
	mov	eax, 0x80
	xor	edx, edx
	div	rbx
	xor	ecx, ecx
	cmp	rbx, 0x80
	seta	cl
	add	rcx, rax
.label_2063:
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rcx
	jb	.label_2067
.label_2065:
	mov	qword ptr [rsi], rcx
	imul	rbx, rcx
	test	rdi, rdi
	je	.label_2068
	test	rbx, rbx
	jne	.label_2068
	call	free
	xor	eax, eax
	pop	rbx
	ret	
.label_2064:
	call	xalloc_die
.label_2067:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x414e17
	.globl sub_414e17
	.type sub_414e17, @function
sub_414e17:

	nop	word ptr [rax + rax]
.label_2084:
	mov	rdi, qword ptr [rsp + 0x10]
	call	free
	jmp	.label_2069
	.section	.text
	.align	16
	#Procedure 0x414e2f
	.globl sub_414e2f
	.type sub_414e2f, @function
sub_414e2f:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x414e3e

	.globl sub_epsilon_src_nodes
	.type sub_epsilon_src_nodes, @function
sub_epsilon_src_nodes:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x38
	mov	qword ptr [rsp + 0x30], rcx
	mov	r12, rdx
	mov	r15, rsi
	mov	rax, qword ptr [rdi + 0x38]
	xorps	xmm0, xmm0
	movaps	xmmword ptr [rsp], xmm0
	mov	qword ptr [rsp + 0x10], 0
	lea	rcx, [r15 + r15*2]
	mov	r9, qword ptr [rax + rcx*8 + 8]
	test	r9, r9
	jle	.label_2090
	mov	qword ptr [rsp + 0x28], rax
	mov	qword ptr [rsp + 0x20], rcx
	lea	r13, [rax + rcx*8 + 8]
	xor	r14d, r14d
	nop	word ptr cs:[rax + rax]
.label_2087:
	mov	r11, qword ptr [r13 + 8]
	mov	rax, qword ptr [r11 + r14*8]
	cmp	rax, r15
	je	.label_2070
	mov	rdx, qword ptr [rdi]
	mov	rcx, rax
	shl	rcx, 4
	test	byte ptr [rdx + rcx + 8], 8
	je	.label_2070
	mov	rbp, qword ptr [rdi + 0x28]
	lea	r8, [rax + rax*2]
	mov	rax, qword ptr [rbp + r8*8 + 0x10]
	mov	rsi, qword ptr [rax]
	mov	r10, -1
	cmp	qword ptr [rbp + r8*8 + 8], 2
	jl	.label_2083
	mov	r10, qword ptr [rax + 8]
.label_2083:
	test	r9, r9
	jle	.label_2077
	mov	rax, r9
	dec	rax
	mov	ebp, 0
	je	.label_2097
	xor	ebp, ebp
	nop	dword ptr [rax]
.label_2101:
	lea	rbx, [rbp + rax]
	shr	rbx, 1
	cmp	qword ptr [r11 + rbx*8], rsi
	lea	rcx, [rbx + 1]
	cmovl	rbp, rcx
	cmovge	rax, rbx
	cmp	rbp, rax
	jb	.label_2101
.label_2097:
	cmp	rbp, -1
	je	.label_2077
	cmp	qword ptr [r11 + rbp*8], rsi
	je	.label_2078
.label_2077:
	mov	rbp, qword ptr [r12 + 8]
	test	rbp, rbp
	jle	.label_2078
	dec	rbp
	mov	rbx, qword ptr [r12 + 0x10]
	mov	eax, 0
	je	.label_2080
	xor	eax, eax
	nop	word ptr cs:[rax + rax]
.label_2089:
	lea	rcx, [rax + rbp]
	shr	rcx, 1
	cmp	qword ptr [rbx + rcx*8], rsi
	lea	rdx, [rcx + 1]
	cmovl	rax, rdx
	cmovge	rbp, rcx
	cmp	rax, rbp
	jb	.label_2089
.label_2080:
	cmp	rax, -1
	je	.label_2078
	cmp	qword ptr [rbx + rax*8], rsi
	je	.label_2100
.label_2078:
	test	r10, r10
	jle	.label_2070
	test	r9, r9
	jle	.label_2071
	mov	rax, r9
	dec	rax
	mov	esi, 0
	je	.label_2072
	xor	esi, esi
	nop	dword ptr [rax]
.label_2082:
	lea	rcx, [rsi + rax]
	shr	rcx, 1
	cmp	qword ptr [r11 + rcx*8], r10
	lea	rdx, [rcx + 1]
	cmovl	rsi, rdx
	cmovge	rax, rcx
	cmp	rsi, rax
	jb	.label_2082
.label_2072:
	cmp	rsi, -1
	je	.label_2071
	cmp	qword ptr [r11 + rsi*8], r10
	je	.label_2070
.label_2071:
	mov	rsi, qword ptr [r12 + 8]
	test	rsi, rsi
	jle	.label_2070
	dec	rsi
	mov	rbp, qword ptr [r12 + 0x10]
	mov	eax, 0
	je	.label_2088
	xor	eax, eax
	nop	word ptr [rax + rax]
.label_2096:
	lea	rcx, [rax + rsi]
	shr	rcx, 1
	cmp	qword ptr [rbp + rcx*8], r10
	lea	rdx, [rcx + 1]
	cmovl	rax, rdx
	cmovge	rsi, rcx
	cmp	rax, rsi
	jb	.label_2096
.label_2088:
	cmp	rax, -1
	je	.label_2070
	cmp	qword ptr [rbp + rax*8], r10
	jne	.label_2070
.label_2100:
	mov	rbx, rdi
	mov	rax, qword ptr [rdi + 0x38]
	lea	rdx, [rax + r8*8]
	lea	rdi, [rsp]
	mov	rsi, qword ptr [rsp + 0x30]
	call	re_node_set_add_intersect
	mov	ebp, eax
	test	ebp, ebp
	jne	.label_2084
	mov	r9, qword ptr [r13]
	mov	rdi, rbx
	nop	word ptr cs:[rax + rax]
.label_2070:
	inc	r14
	cmp	r14, r9
	jl	.label_2087
	test	r9, r9
	mov	rax, qword ptr [rsp + 0x28]
	mov	rcx, qword ptr [rsp + 0x20]
	jle	.label_2090
	mov	r9, qword ptr [rsp + 8]
	mov	rdi, qword ptr [rsp + 0x10]
	test	r9, r9
	mov	r8, qword ptr [rax + rcx*8 + 0x10]
	jle	.label_2098
	dec	r9
	xor	r14d, r14d
	nop	dword ptr [rax]
.label_2094:
	test	r9, r9
	mov	rsi, qword ptr [r8 + r14*8]
	mov	eax, 0
	je	.label_2074
	mov	rcx, r9
	xor	eax, eax
	nop	word ptr cs:[rax + rax]
.label_2079:
	lea	rbp, [rax + rcx]
	shr	rbp, 1
	cmp	qword ptr [rdi + rbp*8], rsi
	lea	rbx, [rbp + 1]
	cmovl	rax, rbx
	cmovge	rcx, rbp
	cmp	rax, rcx
	jb	.label_2079
.label_2074:
	cmp	rax, -1
	je	.label_2086
	cmp	qword ptr [rdi + rax*8], rsi
	je	.label_2075
.label_2086:
	mov	r11, qword ptr [r12 + 8]
	test	r11, r11
	jle	.label_2075
	mov	r10, r11
	dec	r10
	mov	rbp, qword ptr [r12 + 0x10]
	mov	eax, 0
	je	.label_2095
	mov	rbx, r10
	xor	eax, eax
	nop	word ptr cs:[rax + rax]
.label_2081:
	lea	rcx, [rax + rbx]
	shr	rcx, 1
	cmp	qword ptr [rbp + rcx*8], rsi
	lea	rdx, [rcx + 1]
	cmovl	rax, rdx
	cmovge	rbx, rcx
	cmp	rax, rbx
	jb	.label_2081
.label_2095:
	cmp	qword ptr [rbp + rax*8], rsi
	mov	rsi, -1
	cmove	rsi, rax
	test	rsi, rsi
	js	.label_2075
	cmp	r11, rsi
	jle	.label_2075
	mov	qword ptr [r12 + 8], r10
	cmp	r10, rsi
	jle	.label_2075
	nop	word ptr cs:[rax + rax]
.label_2076:
	mov	rcx, qword ptr [rbp + rax*8 + 8]
	mov	qword ptr [rbp + rax*8], rcx
	inc	rax
	cmp	rax, qword ptr [r12 + 8]
	jl	.label_2076
	nop	word ptr cs:[rax + rax]
.label_2075:
	inc	r14
	cmp	r14, qword ptr [r13]
	jl	.label_2094
	jmp	.label_2092
.label_2090:
	mov	rdi, qword ptr [rsp + 0x10]
.label_2092:
	call	free
	xor	ebp, ebp
.label_2069:
	mov	eax, ebp
	add	rsp, 0x38
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_2098:
	mov	r11, qword ptr [r12 + 8]
	xor	r10d, r10d
	nop	word ptr cs:[rax + rax]
.label_2093:
	test	r11, r11
	jle	.label_2073
	mov	rbx, qword ptr [r8 + r10*8]
	mov	r9, r11
	dec	r9
	mov	rsi, qword ptr [r12 + 0x10]
	mov	ebp, 0
	je	.label_2085
	mov	rax, r9
	xor	ebp, ebp
	nop	word ptr cs:[rax + rax]
.label_2099:
	lea	rcx, [rbp + rax]
	shr	rcx, 1
	cmp	qword ptr [rsi + rcx*8], rbx
	lea	rdx, [rcx + 1]
	cmovl	rbp, rdx
	cmovge	rax, rcx
	cmp	rbp, rax
	jb	.label_2099
.label_2085:
	cmp	qword ptr [rsi + rbp*8], rbx
	mov	rax, -1
	cmove	rax, rbp
	test	rax, rax
	js	.label_2073
	cmp	r11, rax
	jle	.label_2073
	mov	qword ptr [r12 + 8], r9
	cmp	r9, rax
	mov	r11, r9
	jle	.label_2073
	nop	word ptr cs:[rax + rax]
.label_2091:
	mov	rax, qword ptr [rsi + rbp*8 + 8]
	mov	qword ptr [rsi + rbp*8], rax
	inc	rbp
	mov	r11, qword ptr [r12 + 8]
	cmp	rbp, r11
	jl	.label_2091
	nop	word ptr cs:[rax + rax]
.label_2073:
	inc	r10
	cmp	r10, qword ptr [r13]
	jl	.label_2093
	jmp	.label_2092
	.section	.text
	.align	16
	#Procedure 0x415270
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
	#Procedure 0x4152a3
	.globl sub_4152a3
	.type sub_4152a3, @function
sub_4152a3:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4152b0

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
	je	.label_2102
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
.label_2102:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x415345
	.globl sub_415345
	.type sub_415345, @function
sub_415345:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x415350

	.globl quotearg_colon
	.type quotearg_colon, @function
quotearg_colon:
	sub	rsp, 0x38
	mov	rax, rdi
	mov	rcx, qword ptr [rip + label_9]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0, xmmword ptr [rip + label_10]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_11]
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
	#Procedure 0x4153a5
	.globl sub_4153a5
	.type sub_4153a5, @function
sub_4153a5:

	nop	word ptr cs:[rax + rax]
.label_2104:
	mov	rdi, rbx
	pop	rbx
	pop	r14
	pop	rbp
	jmp	fclose
	.section	.text
	.align	16
	#Procedure 0x4153bc
	.globl sub_4153bc
	.type sub_4153bc, @function
sub_4153bc:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4153c8

	.globl rpl_fclose
	.type rpl_fclose, @function
rpl_fclose:
	push	rbp
	push	r14
	push	rbx
	mov	rbx, rdi
	call	fileno
	test	eax, eax
	js	.label_2104
	mov	rdi, rbx
	call	__freading
	test	eax, eax
	je	.label_2103
	mov	rdi, rbx
	call	fileno
	xor	esi, esi
	mov	edx, 1
	mov	edi, eax
	call	lseek
	cmp	rax, -1
	je	.label_2104
.label_2103:
	mov	rdi, rbx
	call	rpl_fflush
	test	eax, eax
	je	.label_2104
	call	__errno_location
	mov	r14, rax
	mov	ebp, dword ptr [r14]
	mov	rdi, rbx
	call	fclose
	test	ebp, ebp
	je	.label_2105
	mov	dword ptr [r14], ebp
	mov	eax, 0xffffffff
.label_2105:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x415430

	.globl save_line_to_file
	.type save_line_to_file, @function
save_line_to_file:
	push	rbp
	push	rbx
	push	rax
	mov	rbx, rdi
	mov	rdx, qword ptr [rbx]
	mov	rdi, qword ptr [rbx + 8]
	mov	rcx, qword ptr [rip + output_stream]
	mov	esi, 1
	call	fwrite_unlocked
	cmp	rax, qword ptr [rbx]
	jne	.label_2106
	add	qword ptr [rip + bytes_written],  rax
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
.label_2106:
	call	__errno_location
	mov	ebp, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_851
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	rsi, qword ptr [rip + output_filename]
	mov	edi, 4
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, ebp
	mov	rdx, rbx
	call	error
	mov	qword ptr [rip + output_stream],  0
	call	cleanup_fatal
	.section	.text
	.align	16
	#Procedure 0x4154ae
	.globl sub_4154ae
	.type sub_4154ae, @function
sub_4154ae:

	nop	
.label_2107:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x4154b5
	.globl sub_4154b5
	.type sub_4154b5, @function
sub_4154b5:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4154bd

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
	je	.label_2107
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
.label_2108:
	push	rax
	call	abort
	.section	.text
	.align	16
	#Procedure 0x415526
	.globl sub_415526
	.type sub_415526, @function
sub_415526:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x41552b
	.globl set_custom_quoting
	.type set_custom_quoting, @function
set_custom_quoting:

	test	rdi, rdi
	mov	eax, OFFSET FLAT:default_quoting_options
	cmovne	rax, rdi
	mov	dword ptr [rax], 0xa
	test	rsi, rsi
	je	.label_2108
	test	rdx, rdx
	je	.label_2108
	mov	qword ptr [rax + 0x28], rsi
	mov	qword ptr [rax + 0x30], rdx
	ret	
.label_2113:
	mov	edi, dword ptr [rip + exit_failure]
	call	_exit
	.section	.text
	.align	16
	#Procedure 0x41555b

	.globl close_stdout
	.type close_stdout, @function
close_stdout:
	push	rbp
	push	rbx
	push	rax
	mov	rdi, qword ptr [rip + stdout]
	call	close_stream
	test	eax, eax
	je	.label_2111
	mov	bl, byte ptr [rip + ignore_EPIPE]
	call	__errno_location
	mov	rbp, rax
	cmp	bl, 0
	je	.label_2110
	cmp	dword ptr [rbp], 0x20
	jne	.label_2110
.label_2111:
	mov	rdi, qword ptr [rip + stderr]
	call	close_stream
	test	eax, eax
	jne	.label_2113
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
.label_2109:
	call	quotearg_colon
	mov	rcx, rax
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_739
	xor	eax, eax
	mov	esi, ebp
	mov	r8, rbx
	call	error
	mov	edi, dword ptr [rip + exit_failure]
	call	_exit
	nop	dword ptr [rax]
	nop	dword ptr [rax + rax]
.label_2110:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_2112
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	rdi, qword ptr [rip + file_name]
	test	rdi, rdi
	mov	ebp, dword ptr [rbp]
	jne	.label_2109
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_850
	xor	eax, eax
	mov	esi, ebp
	mov	rcx, rbx
	call	error
	mov	edi, dword ptr [rip + exit_failure]
	call	_exit
	.section	.text
	.align	16
	#Procedure 0x415610
	.globl quote_n
	.type quote_n, @function
quote_n:

	mov	rdx, -1
	mov	ecx, OFFSET FLAT:quote_quoting_options
	jmp	quotearg_n_options
	.section	.text
	.align	16
	#Procedure 0x415621
	.globl sub_415621
	.type sub_415621, @function
sub_415621:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x415630

	.globl rpl_re_search
	.type rpl_re_search, @function
rpl_re_search:
	push	rax
	mov	rax, r9
	mov	r9, rdx
	push	0
	push	rax
	call	re_search_stub
	add	rsp, 0x10
	pop	rcx
	ret	
	.section	.text
	.align	16
	#Procedure 0x415645
	.globl sub_415645
	.type sub_415645, @function
sub_415645:

	nop	word ptr cs:[rax + rax]
.label_2115:
	mov	ebx, 0xffffffff
	test	eax, eax
	jne	.label_2114
	call	__errno_location
	mov	dword ptr [rax], 0
.label_2114:
	mov	eax, ebx
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x41566b

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
	jne	.label_2115
	test	eax, eax
	sete	cl
	neg	eax
	sbb	ebx, ebx
	test	r14, r14
	jne	.label_2114
	test	cl, cl
	jne	.label_2114
	call	__errno_location
	xor	ecx, ecx
	cmp	dword ptr [rax], 9
	mov	ebx, 0xffffffff
	cmove	ebx, ecx
	jmp	.label_2114
	.section	.text
	.align	16
	#Procedure 0x4156b0

	.globl merge_state_with_log
	.type merge_state_with_log, @function
merge_state_with_log:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x18
	mov	rbx, rdx
	mov	r13, rsi
	mov	r15, rdi
	mov	r14, qword ptr [r13 + 0x48]
	mov	r12, qword ptr [r13 + 0x98]
	mov	rax, qword ptr [r13 + 0xb8]
	cmp	r14, qword ptr [r13 + 0xc0]
	jle	.label_2122
	mov	qword ptr [rax + r14*8], rbx
	mov	qword ptr [r13 + 0xc0], r14
	jmp	.label_2117
.label_2122:
	mov	rcx, qword ptr [rax + r14*8]
	test	rcx, rcx
	je	.label_2121
	mov	rdx, qword ptr [rcx + 0x50]
	test	rbx, rbx
	je	.label_2123
	mov	rbx, qword ptr [rbx + 0x50]
	lea	rdi, [rsp]
	mov	rsi, rbx
	call	re_node_set_init_union
	mov	dword ptr [r15], eax
	test	eax, eax
	jne	.label_2119
	mov	rsi, qword ptr [r13 + 0x48]
	test	rbx, rbx
	sete	bpl
	jmp	.label_2120
.label_2121:
	mov	qword ptr [rax + r14*8], rbx
	jmp	.label_2117
.label_2123:
	mov	rax, qword ptr [rdx + 0x10]
	mov	qword ptr [rsp + 0x10], rax
	movups	xmm0, xmmword ptr [rdx]
	movaps	xmmword ptr [rsp], xmm0
	mov	bpl, 1
	mov	rsi, r14
.label_2120:
	dec	rsi
	mov	edx, dword ptr [r13 + 0xa0]
	mov	rdi, r13
	call	re_string_context_at
	lea	rdx, [rsp]
	mov	rdi, r15
	mov	rsi, r12
	mov	ecx, eax
	call	re_acquire_state_context
	mov	rbx, rax
	mov	rax, qword ptr [r13 + 0xb8]
	mov	qword ptr [rax + r14*8], rbx
	test	bpl, bpl
	jne	.label_2117
	mov	rdi, qword ptr [rsp + 0x10]
	call	free
.label_2117:
	test	rbx, rbx
	je	.label_2116
	mov	rax, qword ptr [r12 + 0x98]
	test	rax, rax
	je	.label_2116
	lea	r12, [rbx + 8]
	mov	rdi, r13
	mov	rsi, r12
	mov	rdx, r14
	call	check_subexp_matching_top
	mov	ecx, eax
	mov	dword ptr [r15], ecx
	xor	eax, eax
	test	ecx, ecx
	jne	.label_2118
	test	byte ptr [rbx + 0x68], 0x40
	mov	rax, rbx
	je	.label_2118
	mov	rdi, r13
	mov	rsi, r12
	call	transit_state_bkref
	mov	ecx, eax
	mov	dword ptr [r15], ecx
	xor	eax, eax
	test	ecx, ecx
	jne	.label_2118
	mov	rax, qword ptr [r13 + 0xb8]
	mov	rax, qword ptr [rax + r14*8]
	jmp	.label_2118
.label_2116:
	mov	rax, rbx
.label_2118:
	add	rsp, 0x18
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_2119:
	xor	eax, eax
	jmp	.label_2118
	.section	.text
	.align	16
	#Procedure 0x4157f9
	.globl sub_4157f9
	.type sub_4157f9, @function
sub_4157f9:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x415800

	.globl re_acquire_state_context
	.type re_acquire_state_context, @function
re_acquire_state_context:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x28
	mov	r14, rsi
	mov	r12, rdi
	mov	r8, qword ptr [rdx + 8]
	test	r8, r8
	je	.label_2124
	mov	r15d, ecx
	add	r15, r8
	test	r8, r8
	jle	.label_2130
	mov	rbx, qword ptr [rdx + 0x10]
	xor	r9d, r9d
	cmp	r8, 4
	jb	.label_2152
	mov	r9, r8
	and	r9, 0xfffffffffffffffc
	je	.label_2141
	movq	xmm0, r15
	lea	rbp, [r9 - 4]
	mov	rax, rbp
	shr	rax, 2
	lea	esi, [rax + 1]
	and	esi, 3
	xor	edi, edi
	cmp	rbp, 0xc
	jae	.label_2175
	pxor	xmm1, xmm1
	jmp	.label_2147
.label_2124:
	mov	dword ptr [r12], 0
.label_2193:
	xor	r13d, r13d
	jmp	.label_2149
.label_2141:
	xor	r9d, r9d
	jmp	.label_2152
.label_2175:
	lea	rbp, [rsi - 1]
	sub	rbp, rax
	pxor	xmm1, xmm1
	xor	edi, edi
	nop	word ptr cs:[rax + rax]
.label_2158:
	movdqu	xmm2, xmmword ptr [rbx + rdi*8]
	movdqu	xmm3, xmmword ptr [rbx + rdi*8 + 0x10]
	paddq	xmm2, xmm0
	paddq	xmm3, xmm1
	movdqu	xmm0, xmmword ptr [rbx + rdi*8 + 0x20]
	movdqu	xmm1, xmmword ptr [rbx + rdi*8 + 0x30]
	movdqu	xmm4, xmmword ptr [rbx + rdi*8 + 0x40]
	movdqu	xmm5, xmmword ptr [rbx + rdi*8 + 0x50]
	paddq	xmm4, xmm0
	paddq	xmm4, xmm2
	paddq	xmm5, xmm1
	paddq	xmm5, xmm3
	movdqu	xmm0, xmmword ptr [rbx + rdi*8 + 0x60]
	movdqu	xmm1, xmmword ptr [rbx + rdi*8 + 0x70]
	paddq	xmm0, xmm4
	paddq	xmm1, xmm5
	add	rdi, 0x10
	add	rbp, 4
	jne	.label_2158
.label_2147:
	test	rsi, rsi
	je	.label_2201
	lea	rdi, [rbx + rdi*8 + 0x10]
	neg	rsi
	nop	word ptr cs:[rax + rax]
.label_2146:
	movdqu	xmm2, xmmword ptr [rdi - 0x10]
	movdqu	xmm3, xmmword ptr [rdi]
	paddq	xmm0, xmm2
	paddq	xmm1, xmm3
	add	rdi, 0x20
	inc	rsi
	jne	.label_2146
.label_2201:
	paddq	xmm0, xmm1
	pshufd	xmm1, xmm0, 0x4e
	paddq	xmm1, xmm0
	movq	r15, xmm1
	cmp	r8, r9
	je	.label_2130
.label_2152:
	mov	rsi, r8
	sub	rsi, r9
	lea	rax, [rbx + r9*8]
	nop	dword ptr [rax + rax]
.label_2184:
	add	r15, qword ptr [rax]
	add	rax, 8
	dec	rsi
	jne	.label_2184
.label_2130:
	mov	rsi, qword ptr [r14 + 0x40]
	mov	rax, qword ptr [r14 + 0x88]
	and	rax, r15
	lea	rax, [rax + rax*2]
	mov	r9, qword ptr [rsi + rax*8]
	test	r9, r9
	jle	.label_2129
	test	rdx, rdx
	je	.label_2172
	mov	r10, qword ptr [rsi + rax*8 + 0x10]
	xor	esi, esi
	nop	word ptr [rax + rax]
.label_2205:
	mov	r13, qword ptr [r10 + rsi*8]
	cmp	qword ptr [r13], r15
	jne	.label_2188
	movzx	eax, byte ptr [r13 + 0x68]
	and	eax, 0xf
	cmp	eax, ecx
	jne	.label_2188
	mov	rdi, qword ptr [r13 + 0x50]
	test	rdi, rdi
	je	.label_2188
	cmp	qword ptr [rdi + 8], r8
	jne	.label_2188
	mov	rax, r8
	nop	dword ptr [rax + rax]
.label_2200:
	test	rax, rax
	jle	.label_2149
	mov	rbp, qword ptr [rdi + 0x10]
	mov	rbp, qword ptr [rbp + rax*8 - 8]
	mov	rbx, qword ptr [rdx + 0x10]
	cmp	rbp, qword ptr [rbx + rax*8 - 8]
	lea	rax, [rax - 1]
	je	.label_2200
	nop	word ptr cs:[rax + rax]
.label_2188:
	inc	rsi
	cmp	rsi, r9
	jl	.label_2205
	jmp	.label_2129
.label_2172:
	lea	rsi, [r9 - 1]
	mov	eax, r9d
	and	eax, 7
	cmp	rsi, 7
	jb	.label_2202
	mov	rsi, rax
	sub	rsi, r9
.label_2128:
	add	rsi, 8
	jne	.label_2128
.label_2202:
	test	rax, rax
	je	.label_2129
	neg	rax
	nop	
.label_2166:
	inc	rax
	jne	.label_2166
.label_2129:
	mov	qword ptr [rsp], rdx
	mov	ebx, ecx
	mov	edi, 0x70
	mov	esi, 1
	call	rpl_calloc
	mov	r13, rax
	test	r13, r13
	je	.label_2140
	mov	qword ptr [rsp + 0x10], r14
	mov	r10, r13
	add	r10, 8
	mov	rsi, qword ptr [rsp]
	mov	rdi, qword ptr [rsi + 8]
	mov	qword ptr [r13 + 0x10], rdi
	mov	r14, qword ptr [rsi + 8]
	test	r14, r14
	mov	qword ptr [rsp + 0x18], r10
	mov	qword ptr [rsp + 0x20], r12
	jle	.label_2196
	mov	qword ptr [r13 + 8], rdi
	shl	rdi, 3
	call	malloc
	mov	qword ptr [r13 + 0x18], rax
	test	rax, rax
	je	.label_2153
	mov	rbp, qword ptr [rsp]
	mov	rsi, qword ptr [rbp + 0x10]
	shl	r14, 3
	mov	rdi, rax
	mov	rdx, r14
	call	memcpy
	mov	rsi, rbp
	mov	rdi, qword ptr [rsp + 0x10]
	mov	r10, qword ptr [rsp + 0x18]
	jmp	.label_2160
.label_2196:
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [r10], xmm0
	mov	qword ptr [r10 + 0x10], 0
	mov	rdi, qword ptr [rsp + 0x10]
.label_2160:
	mov	al, byte ptr [r13 + 0x68]
	mov	r9d, ebx
	mov	ecx, r9d
	and	cl, 0xf
	and	al, 0xf0
	or	al, cl
	mov	byte ptr [r13 + 0x68], al
	mov	qword ptr [r13 + 0x50], r10
	cmp	qword ptr [rsi + 8], 0
	jle	.label_2135
	mov	ecx, r9d
	mov	eax, r9d
	and	eax, 2
	and	r9d, 4
	test	cl, 1
	mov	dword ptr [rsp + 0xc], r9d
	jne	.label_2173
	xor	ebp, ebp
	xor	r8d, r8d
	test	eax, eax
	jne	.label_2133
	nop	word ptr cs:[rax + rax]
.label_2156:
	mov	rax, qword ptr [rdi]
	mov	rcx, qword ptr [rsi + 0x10]
	mov	rcx, qword ptr [rcx + rbp*8]
	shl	rcx, 4
	mov	edx, dword ptr [rax + rcx + 8]
	mov	r12d, edx
	shr	r12d, 8
	mov	ecx, r12d
	and	ecx, 0x3ff
	cmp	dl, 1
	jne	.label_2181
	test	ecx, ecx
	je	.label_2134
.label_2181:
	mov	esi, edx
	shr	esi, 0x14
	mov	bl, byte ptr [r13 + 0x68]
	mov	eax, ebx
	shr	al, 5
	movzx	eax, al
	or	eax, esi
	shl	al, 5
	and	al, 0x20
	and	bl, 0xdf
	or	bl, al
	mov	byte ptr [r13 + 0x68], bl
	cmp	dl, 2
	je	.label_2186
	cmp	dl, 4
	jne	.label_2189
	or	bl, 0x40
	jmp	.label_2185
.label_2186:
	or	bl, 0x10
.label_2185:
	mov	byte ptr [r13 + 0x68], bl
.label_2189:
	test	ecx, ecx
	je	.label_2192
	cmp	qword ptr [r13 + 0x50], r10
	jne	.label_2194
	mov	edi, 0x18
	call	malloc
	mov	r14, rax
	mov	qword ptr [r13 + 0x50], r14
	test	r14, r14
	je	.label_2145
	mov	rax, qword ptr [rsp]
	mov	rbx, qword ptr [rax + 8]
	mov	qword ptr [r14 + 8], rbx
	test	rbx, rbx
	jle	.label_2197
	mov	qword ptr [r14], rbx
	shl	rbx, 3
	mov	rdi, rbx
	call	malloc
	mov	qword ptr [r14 + 0x10], rax
	test	rax, rax
	je	.label_2155
	mov	rcx, qword ptr [rsp]
	mov	rsi, qword ptr [rcx + 0x10]
	mov	rdi, rax
	mov	rdx, rbx
	call	memcpy
	jmp	.label_2204
.label_2192:
	mov	rsi, qword ptr [rsp]
	jmp	.label_2134
.label_2197:
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [r14], xmm0
	mov	qword ptr [r14 + 0x10], 0
.label_2204:
	or	byte ptr [r13 + 0x68], 0x80
	xor	r8d, r8d
	mov	rdi, qword ptr [rsp + 0x10]
	mov	r9d, dword ptr [rsp + 0xc]
	mov	r10, qword ptr [rsp + 0x18]
.label_2194:
	test	r12b, 0x11
	mov	rsi, qword ptr [rsp]
	jne	.label_2132
	test	r9d, r9d
	jne	.label_2134
	and	r12d, 0x40
	je	.label_2134
.label_2132:
	mov	rax, rbp
	sub	rax, r8
	js	.label_2138
	mov	rcx, qword ptr [r13 + 0x10]
	cmp	rcx, rax
	jle	.label_2138
	dec	rcx
	mov	qword ptr [r13 + 0x10], rcx
	cmp	rcx, rax
	jle	.label_2138
	lea	rax, [rbp*8]
	add	rax, qword ptr [r13 + 0x18]
	mov	rcx, r8
	neg	rcx
	nop	word ptr cs:[rax + rax]
.label_2159:
	mov	rdx, qword ptr [rax + rcx*8 + 8]
	mov	qword ptr [rax + rcx*8], rdx
	lea	rdx, [rbp + rcx + 1]
	inc	rcx
	cmp	rdx, qword ptr [r13 + 0x10]
	jl	.label_2159
	nop	word ptr [rax + rax]
.label_2138:
	inc	r8
.label_2134:
	inc	rbp
	cmp	rbp, qword ptr [rsi + 8]
	jl	.label_2156
	jmp	.label_2135
	.section	.text
	.align	16
	#Procedure 0x415ca5
	.globl sub_415ca5
	.type sub_415ca5, @function
sub_415ca5:

	nop	word ptr cs:[rax + rax]
.label_2133:
	mov	rax, qword ptr [rdi]
	mov	rcx, qword ptr [rsi + 0x10]
	mov	rcx, qword ptr [rcx + rbp*8]
	shl	rcx, 4
	mov	edx, dword ptr [rax + rcx + 8]
	mov	r12d, edx
	shr	r12d, 8
	mov	ecx, r12d
	and	ecx, 0x3ff
	cmp	dl, 1
	jne	.label_2131
	test	ecx, ecx
	je	.label_2167
.label_2131:
	mov	esi, edx
	shr	esi, 0x14
	mov	bl, byte ptr [r13 + 0x68]
	mov	eax, ebx
	shr	al, 5
	movzx	eax, al
	or	eax, esi
	shl	al, 5
	and	al, 0x20
	and	bl, 0xdf
	or	bl, al
	mov	byte ptr [r13 + 0x68], bl
	cmp	dl, 2
	je	.label_2171
	cmp	dl, 4
	jne	.label_2176
	or	bl, 0x40
	jmp	.label_2177
.label_2171:
	or	bl, 0x10
.label_2177:
	mov	byte ptr [r13 + 0x68], bl
.label_2176:
	test	ecx, ecx
	je	.label_2178
	cmp	qword ptr [r13 + 0x50], r10
	jne	.label_2179
	mov	edi, 0x18
	call	malloc
	mov	r14, rax
	mov	qword ptr [r13 + 0x50], r14
	test	r14, r14
	je	.label_2145
	mov	rax, qword ptr [rsp]
	mov	rbx, qword ptr [rax + 8]
	mov	qword ptr [r14 + 8], rbx
	test	rbx, rbx
	jle	.label_2182
	mov	qword ptr [r14], rbx
	shl	rbx, 3
	mov	rdi, rbx
	call	malloc
	mov	qword ptr [r14 + 0x10], rax
	test	rax, rax
	je	.label_2155
	mov	rcx, qword ptr [rsp]
	mov	rsi, qword ptr [rcx + 0x10]
	mov	rdi, rax
	mov	rdx, rbx
	call	memcpy
	jmp	.label_2191
.label_2178:
	mov	rsi, qword ptr [rsp]
	jmp	.label_2167
.label_2182:
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [r14], xmm0
	mov	qword ptr [r14 + 0x10], 0
.label_2191:
	or	byte ptr [r13 + 0x68], 0x80
	xor	r8d, r8d
	mov	rdi, qword ptr [rsp + 0x10]
	mov	r9d, dword ptr [rsp + 0xc]
	mov	r10, qword ptr [rsp + 0x18]
.label_2179:
	test	r12b, 1
	mov	rsi, qword ptr [rsp]
	jne	.label_2198
	test	r9d, r9d
	jne	.label_2167
	and	r12d, 0x40
	je	.label_2167
.label_2198:
	mov	rax, rbp
	sub	rax, r8
	js	.label_2168
	mov	rcx, qword ptr [r13 + 0x10]
	cmp	rcx, rax
	jle	.label_2168
	dec	rcx
	mov	qword ptr [r13 + 0x10], rcx
	cmp	rcx, rax
	jle	.label_2168
	lea	rax, [rbp*8]
	add	rax, qword ptr [r13 + 0x18]
	mov	rcx, r8
	neg	rcx
	nop	word ptr cs:[rax + rax]
.label_2125:
	mov	rdx, qword ptr [rax + rcx*8 + 8]
	mov	qword ptr [rax + rcx*8], rdx
	lea	rdx, [rbp + rcx + 1]
	inc	rcx
	cmp	rdx, qword ptr [r13 + 0x10]
	jl	.label_2125
	nop	word ptr [rax + rax]
.label_2168:
	inc	r8
.label_2167:
	inc	rbp
	cmp	rbp, qword ptr [rsi + 8]
	jl	.label_2133
	jmp	.label_2135
.label_2173:
	test	eax, eax
	jne	.label_2137
	xor	ebp, ebp
	xor	r8d, r8d
	nop	word ptr cs:[rax + rax]
.label_2199:
	mov	rax, qword ptr [rdi]
	mov	rcx, qword ptr [rsi + 0x10]
	mov	rcx, qword ptr [rcx + rbp*8]
	shl	rcx, 4
	mov	edx, dword ptr [rax + rcx + 8]
	mov	r12d, edx
	shr	r12d, 8
	mov	ecx, r12d
	and	ecx, 0x3ff
	cmp	dl, 1
	jne	.label_2144
	test	ecx, ecx
	je	.label_2151
.label_2144:
	mov	esi, edx
	shr	esi, 0x14
	mov	bl, byte ptr [r13 + 0x68]
	mov	eax, ebx
	shr	al, 5
	movzx	eax, al
	or	eax, esi
	shl	al, 5
	and	al, 0x20
	and	bl, 0xdf
	or	bl, al
	mov	byte ptr [r13 + 0x68], bl
	cmp	dl, 2
	je	.label_2154
	cmp	dl, 4
	jne	.label_2161
	or	bl, 0x40
	jmp	.label_2163
.label_2154:
	or	bl, 0x10
.label_2163:
	mov	byte ptr [r13 + 0x68], bl
.label_2161:
	test	ecx, ecx
	je	.label_2164
	cmp	qword ptr [r13 + 0x50], r10
	jne	.label_2165
	mov	edi, 0x18
	call	malloc
	mov	r14, rax
	mov	qword ptr [r13 + 0x50], r14
	test	r14, r14
	je	.label_2145
	mov	rax, qword ptr [rsp]
	mov	rbx, qword ptr [rax + 8]
	mov	qword ptr [r14 + 8], rbx
	test	rbx, rbx
	jle	.label_2170
	mov	qword ptr [r14], rbx
	shl	rbx, 3
	mov	rdi, rbx
	call	malloc
	mov	qword ptr [r14 + 0x10], rax
	test	rax, rax
	je	.label_2155
	mov	rcx, qword ptr [rsp]
	mov	rsi, qword ptr [rcx + 0x10]
	mov	rdi, rax
	mov	rdx, rbx
	call	memcpy
	jmp	.label_2180
.label_2164:
	mov	rsi, qword ptr [rsp]
	jmp	.label_2151
.label_2170:
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [r14], xmm0
	mov	qword ptr [r14 + 0x10], 0
.label_2180:
	or	byte ptr [r13 + 0x68], 0x80
	xor	r8d, r8d
	mov	rdi, qword ptr [rsp + 0x10]
	mov	r9d, dword ptr [rsp + 0xc]
	mov	r10, qword ptr [rsp + 0x18]
.label_2165:
	test	r12b, 0x12
	mov	rsi, qword ptr [rsp]
	jne	.label_2187
	test	r9d, r9d
	jne	.label_2151
	and	r12d, 0x40
	je	.label_2151
.label_2187:
	mov	rax, rbp
	sub	rax, r8
	js	.label_2157
	mov	rcx, qword ptr [r13 + 0x10]
	cmp	rcx, rax
	jle	.label_2157
	dec	rcx
	mov	qword ptr [r13 + 0x10], rcx
	cmp	rcx, rax
	jle	.label_2157
	lea	rax, [rbp*8]
	add	rax, qword ptr [r13 + 0x18]
	mov	rcx, r8
	neg	rcx
	nop	word ptr cs:[rax + rax]
.label_2195:
	mov	rdx, qword ptr [rax + rcx*8 + 8]
	mov	qword ptr [rax + rcx*8], rdx
	lea	rdx, [rbp + rcx + 1]
	inc	rcx
	cmp	rdx, qword ptr [r13 + 0x10]
	jl	.label_2195
	nop	word ptr [rax + rax]
.label_2157:
	inc	r8
.label_2151:
	inc	rbp
	cmp	rbp, qword ptr [rsi + 8]
	jl	.label_2199
	jmp	.label_2135
.label_2137:
	xor	r12d, r12d
	xor	r8d, r8d
	nop	dword ptr [rax + rax]
.label_2183:
	mov	rcx, qword ptr [rdi]
	mov	rdx, qword ptr [rsi + 0x10]
	mov	rdx, qword ptr [rdx + r12*8]
	shl	rdx, 4
	mov	edx, dword ptr [rcx + rdx + 8]
	mov	ebp, edx
	shr	ebp, 8
	mov	ecx, ebp
	and	ecx, 0x3ff
	cmp	dl, 1
	jne	.label_2203
	test	ecx, ecx
	je	.label_2126
.label_2203:
	mov	esi, edx
	shr	esi, 0x14
	mov	al, byte ptr [r13 + 0x68]
	mov	ebx, eax
	shr	bl, 5
	movzx	ebx, bl
	or	ebx, esi
	shl	bl, 5
	and	bl, 0x20
	and	al, 0xdf
	or	al, bl
	mov	byte ptr [r13 + 0x68], al
	cmp	dl, 4
	je	.label_2127
	cmp	dl, 2
	jne	.label_2136
	or	al, 0x10
	jmp	.label_2139
.label_2127:
	or	al, 0x40
.label_2139:
	mov	byte ptr [r13 + 0x68], al
.label_2136:
	test	ecx, ecx
	je	.label_2142
	cmp	qword ptr [r13 + 0x50], r10
	jne	.label_2143
	mov	edi, 0x18
	call	malloc
	mov	r14, rax
	mov	qword ptr [r13 + 0x50], r14
	test	r14, r14
	je	.label_2145
	mov	rax, qword ptr [rsp]
	mov	rbx, qword ptr [rax + 8]
	mov	qword ptr [r14 + 8], rbx
	test	rbx, rbx
	jle	.label_2148
	mov	qword ptr [r14], rbx
	shl	rbx, 3
	mov	rdi, rbx
	call	malloc
	mov	qword ptr [r14 + 0x10], rax
	test	rax, rax
	je	.label_2155
	mov	rcx, qword ptr [rsp]
	mov	rsi, qword ptr [rcx + 0x10]
	mov	rdi, rax
	mov	rdx, rbx
	call	memcpy
	jmp	.label_2162
.label_2142:
	mov	rsi, qword ptr [rsp]
	jmp	.label_2126
.label_2148:
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [r14], xmm0
	mov	qword ptr [r14 + 0x10], 0
.label_2162:
	or	byte ptr [r13 + 0x68], 0x80
	xor	r8d, r8d
	mov	rdi, qword ptr [rsp + 0x10]
	mov	r9d, dword ptr [rsp + 0xc]
	mov	r10, qword ptr [rsp + 0x18]
.label_2143:
	test	bpl, 2
	mov	rsi, qword ptr [rsp]
	jne	.label_2169
	test	r9d, r9d
	jne	.label_2126
	and	ebp, 0x40
	je	.label_2126
.label_2169:
	mov	rcx, r12
	sub	rcx, r8
	js	.label_2174
	mov	rdx, qword ptr [r13 + 0x10]
	cmp	rdx, rcx
	jle	.label_2174
	dec	rdx
	mov	qword ptr [r13 + 0x10], rdx
	cmp	rdx, rcx
	jle	.label_2174
	lea	rcx, [r12*8]
	add	rcx, qword ptr [r13 + 0x18]
	mov	rdx, r8
	neg	rdx
.label_2150:
	mov	rax, qword ptr [rcx + rdx*8 + 8]
	mov	qword ptr [rcx + rdx*8], rax
	lea	rax, [r12 + rdx + 1]
	inc	rdx
	cmp	rax, qword ptr [r13 + 0x10]
	jl	.label_2150
	nop	word ptr [rax + rax]
.label_2174:
	inc	r8
.label_2126:
	inc	r12
	cmp	r12, qword ptr [rsi + 8]
	jl	.label_2183
.label_2135:
	mov	rsi, r13
	mov	rdx, r15
	call	register_state
	test	eax, eax
	jne	.label_2145
.label_2149:
	mov	rax, r13
	add	rsp, 0x28
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_2145:
	mov	rdi, r13
	call	free_state
	jmp	.label_2190
.label_2155:
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [r14], xmm0
.label_2190:
	mov	r12, qword ptr [rsp + 0x20]
.label_2140:
	mov	dword ptr [r12], 0xc
	jmp	.label_2193
.label_2153:
	mov	rdi, r13
	call	free
	jmp	.label_2140
	.section	.text
	.align	16
	#Procedure 0x4161a0

	.globl usage
	.type usage, @function
usage:
	push	rbp
	push	rbx
	push	rax
	mov	ebp, edi
	test	ebp, ebp
	jne	.label_2220
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_2223
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	rdx, qword ptr [rip + program_name]
	mov	edi, 1
	xor	eax, eax
	mov	rsi, rcx
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_2209
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_2211
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_2206
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_2210
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_2218
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_2215
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_2212
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_2225
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_2213
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_2214
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_647
	mov	ecx, OFFSET FLAT:label_2219
	xor	eax, eax
	call	__printf_chk
	mov	edi, 5
	xor	esi, esi
	call	setlocale
	test	rax, rax
	je	.label_2208
	mov	esi, OFFSET FLAT:label_2224
	mov	edx, 3
	mov	rdi, rax
	call	strncmp
	test	eax, eax
	je	.label_2208
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_2222
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
.label_2208:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_2216
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_2219
	mov	ecx, OFFSET FLAT:label_646
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_2217
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_646
	mov	ecx, OFFSET FLAT:label_2221
	xor	eax, eax
	call	__printf_chk
	mov	edi, ebp
	call	exit
.label_2220:
	mov	rbx, qword ptr [rip + stderr]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_2207
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
	#Procedure 0x4163fb
	.globl sub_4163fb
	.type sub_4163fb, @function
sub_4163fb:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x416400

	.globl re_string_reconstruct
	.type re_string_reconstruct, @function
re_string_reconstruct:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x38
	mov	r15d, edx
	mov	r12, rsi
	mov	rbx, rdi
	lea	r13, [rbx + 0x28]
	mov	rax, qword ptr [rbx + 0x28]
	cmp	rax, r12
	jle	.label_2226
	cmp	dword ptr [rbx + 0x90], 2
	jl	.label_2242
	mov	qword ptr [rbx + 0x20], 0
.label_2242:
	mov	rax, qword ptr [rbx + 0x50]
	mov	qword ptr [rbx + 0x58], rax
	mov	rax, qword ptr [rbx + 0x60]
	mov	qword ptr [rbx + 0x68], rax
	mov	byte ptr [rbx + 0x8c], 0
	lea	eax, [r15 + r15]
	and	eax, 2
	xor	eax, 6
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [r13], xmm0
	mov	qword ptr [r13 + 0x10], 0
	mov	dword ptr [rbx + 0x70], eax
	xor	eax, eax
	cmp	byte ptr [rbx + 0x8b], 0
	mov	r14, r12
	jne	.label_2251
	mov	rax, qword ptr [rbx]
	mov	qword ptr [rbx + 8], rax
	xor	eax, eax
	mov	r14, r12
.label_2251:
	test	r14, r14
	je	.label_2265
	mov	rbp, qword ptr [rbx + 0x38]
	cmp	r14, rbp
	jge	.label_2267
	cmp	byte ptr [rbx + 0x8c], 0
	jne	.label_2269
	lea	rsi, [r14 - 1]
	mov	rdi, rbx
	mov	edx, r15d
	call	re_string_context_at
	mov	dword ptr [rbx + 0x70], eax
	cmp	dword ptr [rbx + 0x90], 2
	jl	.label_2274
	mov	rdi, qword ptr [rbx + 0x10]
	mov	rdx, qword ptr [rbx + 0x30]
	lea	rsi, [rdi + r14*4]
	sub	rdx, r14
	shl	rdx, 2
	call	memmove
.label_2274:
	cmp	byte ptr [rbx + 0x8b], 0
	jne	.label_2238
.label_2263:
	sub	qword ptr [rbx + 0x30], r14
	sub	qword ptr [rbx + 0x38], r14
.label_2228:
	cmp	byte ptr [rbx + 0x8b], 0
	jne	.label_2265
	add	qword ptr [rbx + 8], r14
.label_2265:
	mov	qword ptr [rbx + 0x28], r12
	mov	rdx, qword ptr [rbx + 0x58]
	sub	rdx, r14
	mov	qword ptr [rbx + 0x58], rdx
	sub	qword ptr [rbx + 0x68], r14
	cmp	dword ptr [rbx + 0x90], 2
	jl	.label_2288
	cmp	byte ptr [rbx + 0x88], 0
	je	.label_2234
	mov	rdi, rbx
	call	build_wcs_upper_buffer
	test	eax, eax
	jne	.label_2243
	jmp	.label_2244
.label_2288:
	cmp	byte ptr [rbx + 0x8b], 0
	jne	.label_2246
	mov	qword ptr [rbx + 0x30], rdx
	jmp	.label_2244
.label_2234:
	mov	rdi, rbx
	call	build_wcs_buffer
.label_2244:
	mov	qword ptr [rbx + 0x48], 0
	xor	eax, eax
.label_2243:
	add	rsp, 0x38
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_2226:
	mov	r14, r12
	sub	r14, rax
	jmp	.label_2251
.label_2267:
	mov	rcx, qword ptr [rbx + 0x30]
	mov	qword ptr [rsp + 0x20], rcx
	movzx	r8d, word ptr [rbx + 0x8c]
	test	r8b, r8b
	jne	.label_2247
.label_2257:
	mov	qword ptr [rbx + 0x30], 0
	movsxd	rdi, dword ptr [rbx + 0x90]
	cmp	rdi, 2
	jl	.label_2249
	cmp	byte ptr [rbx + 0x89], 0
	je	.label_2270
	mov	r10, qword ptr [rbx]
	lea	rdx, [r10 + rax]
	mov	rsi, r14
	sub	rsi, rdi
	add	rsi, rdx
	cmp	rsi, r10
	cmovb	rsi, r10
	lea	r8, [rdx + r14]
	add	r10, r14
.label_2281:
	lea	rdi, [r10 + rax - 1]
	cmp	rdi, rsi
	jb	.label_2270
	movzx	ecx, byte ptr [rax + r10 - 1]
	and	cl, 0xc0
	dec	r10
	cmp	cl, 0x80
	je	.label_2281
	mov	qword ptr [rsp], r8
	add	rdx, qword ptr [rbx + 0x58]
	lea	rbp, [r10 + rax]
	sub	rdx, rbp
	mov	rdi, qword ptr [rbx + 0x78]
	test	rdi, rdi
	mov	rsi, rbp
	jne	.label_2285
.label_2227:
	mov	qword ptr [rsp + 8], 0
	lea	rdi, [rsp + 0x14]
	lea	rcx, [rsp + 8]
	call	rpl_mbrtowc
	mov	rdx, qword ptr [rsp]
	sub	rdx, rbp
	mov	esi, 0xffffffff
	mov	rcx, rax
	sub	rcx, rdx
	jb	.label_2275
	cmp	rax, -3
	ja	.label_2275
	mov	qword ptr [rbx + 0x20], 0
	mov	qword ptr [rbx + 0x30], rcx
	mov	esi, dword ptr [rsp + 0x14]
.label_2275:
	mov	edx, esi
	cmp	edx, -1
	jne	.label_2254
	mov	rax, qword ptr [rbx + 0x28]
	mov	rbp, qword ptr [rbx + 0x38]
.label_2270:
	add	rbp, rax
	mov	rax, rbp
	sub	rax, r12
	jge	.label_2259
	lea	rax, [rbx + 0x20]
	mov	qword ptr [rsp], rax
	jmp	.label_2262
.label_2269:
	mov	r8, qword ptr [rbx + 0x18]
	mov	rdx, qword ptr [rbx + 0x30]
	xor	ecx, ecx
	mov	qword ptr [rsp], rdx
.label_2273:
	lea	rsi, [rcx + rdx]
	mov	rax, rsi
	shr	rax, 0x3f
	add	rax, rsi
	sar	rax, 1
	mov	rsi, qword ptr [r8 + rax*8]
	cmp	rsi, r14
	mov	rdi, rax
	jg	.label_2266
	jge	.label_2271
	lea	rcx, [rax + 1]
	mov	rdi, rdx
.label_2266:
	cmp	rcx, rdi
	mov	rdx, rdi
	jl	.label_2273
.label_2271:
	xor	ecx, ecx
	cmp	rsi, r14
	setl	cl
	lea	rbp, [rcx + rax]
	lea	rsi, [rcx + rax - 1]
	mov	rdi, rbx
	mov	edx, r15d
	mov	r15, r8
	call	re_string_context_at
	mov	rsi, r15
	mov	dword ptr [rbx + 0x70], eax
	mov	rdi, qword ptr [rsp]
	mov	rdx, rdi
	sub	rdx, r14
	jle	.label_2280
	cmp	rbp, r14
	jne	.label_2280
	cmp	qword ptr [rsi + r14*8], r14
	jne	.label_2280
	mov	rdi, qword ptr [rbx + 0x10]
	lea	rsi, [rdi + r14*4]
	shl	rdx, 2
	call	memmove
	mov	rdi, qword ptr [rbx + 8]
	mov	rdx, qword ptr [rbx + 0x30]
	sub	rdx, r14
	lea	rsi, [rdi + r14]
	call	memmove
	movdqu	xmm0, xmmword ptr [rbx + 0x30]
	movq	xmm1, r14
	pshufd	xmm1, xmm1, 0x44
	psubq	xmm0, xmm1
	movdqu	xmmword ptr [rbx + 0x30], xmm0
	movq	rax, xmm0
	test	rax, rax
	jle	.label_2228
	mov	rax, qword ptr [rbx + 0x18]
	lea	rcx, [rax + r14*8]
	xor	edx, edx
.label_2248:
	mov	rsi, qword ptr [rcx + rdx*8]
	sub	rsi, r14
	mov	qword ptr [rax + rdx*8], rsi
	inc	rdx
	cmp	rdx, qword ptr [rbx + 0x30]
	jl	.label_2248
	jmp	.label_2228
.label_2238:
	mov	rdi, qword ptr [rbx + 8]
	mov	rdx, qword ptr [rbx + 0x30]
	sub	rdx, r14
	lea	rsi, [rdi + r14]
	call	memmove
	jmp	.label_2263
.label_2280:
	mov	rax, r14
	sub	rax, r12
	mov	rcx, qword ptr [rbx + 0x50]
	add	rcx, rax
	mov	qword ptr [rbx + 0x58], rcx
	add	rax, qword ptr [rbx + 0x60]
	mov	qword ptr [rbx + 0x68], rax
	mov	byte ptr [rbx + 0x8c], 0
.label_2235:
	mov	rax, rbp
	test	rax, rax
	jle	.label_2284
	lea	rbp, [rax - 1]
	cmp	qword ptr [rsi + rax*8 - 8], r14
	je	.label_2235
.label_2284:
	cmp	rax, rdi
	jge	.label_2236
	mov	rcx, qword ptr [rbx + 0x10]
.label_2276:
	cmp	dword ptr [rcx + rax*4], -1
	jne	.label_2236
	inc	rax
	cmp	rax, rdi
	jl	.label_2276
.label_2236:
	cmp	rax, rdi
	jne	.label_2278
	mov	qword ptr [rbx + 0x30], 0
	xor	eax, eax
	mov	qword ptr [rbx + 0x38], rax
	jmp	.label_2228
.label_2246:
	cmp	byte ptr [rbx + 0x88], 0
	je	.label_2268
	mov	r15, qword ptr [rbx + 0x30]
	mov	r14, qword ptr [rbx + 0x40]
	cmp	r14, rdx
	cmovg	r14, rdx
	cmp	r15, r14
	jl	.label_2282
	jmp	.label_2230
.label_2253:
	mov	r12, qword ptr [r13]
.label_2282:
	inc	r15
	add	r12, qword ptr [rbx]
	movzx	eax, byte ptr [r15 + r12 - 1]
	movzx	ecx, al
	mov	rdx, qword ptr [rbx + 0x78]
	test	rdx, rdx
	jne	.label_2233
.label_2258:
	movzx	ebp, al
	mov	eax, ebp
	sub	eax, -0x80
	cmp	eax, 0x17f
	ja	.label_2245
	call	__ctype_toupper_loc
	mov	rax, qword ptr [rax]
	mov	ebp, dword ptr [rax + rbp*4]
.label_2245:
	mov	rax, qword ptr [rbx + 8]
	mov	byte ptr [rax + r15 - 1], bpl
	cmp	r15, r14
	jl	.label_2253
	jmp	.label_2256
.label_2233:
	movzx	eax, byte ptr [rdx + rcx]
	jmp	.label_2258
.label_2249:
	add	rax, r14
	mov	rdx, qword ptr [rbx]
	mov	cl, byte ptr [rdx + rax - 1]
	movzx	edx, cl
	mov	qword ptr [rbx + 0x38], 0
	mov	rsi, qword ptr [rbx + 0x78]
	test	rsi, rsi
	je	.label_2260
	mov	cl, byte ptr [rsi + rdx]
.label_2260:
	mov	rdx, qword ptr [rbx + 0x80]
	mov	eax, ecx
	shr	al, 6
	movzx	eax, al
	mov	rax, qword ptr [rdx + rax*8]
	mov	edx, 1
	movzx	esi, cl
	bt	rax, rsi
	jb	.label_2264
	xor	edx, edx
	cmp	cl, 0xa
	jne	.label_2264
	movzx	eax, r8w
	xor	edx, edx
	cmp	eax, 0xff
	seta	dl
	add	edx, edx
.label_2264:
	mov	dword ptr [rbx + 0x70], edx
	jmp	.label_2228
.label_2278:
	mov	rbp, qword ptr [rsi + rax*8]
	sub	rbp, r14
	mov	qword ptr [rbx + 0x30], rbp
	xor	eax, eax
	test	rbp, rbp
	je	.label_2240
	jle	.label_2279
	mov	rdi, qword ptr [rbx + 0x10]
	lea	rdx, [rbp*4]
	mov	esi, 0xff
	call	memset
.label_2279:
	mov	rdi, qword ptr [rbx + 8]
	mov	esi, 0xff
	mov	rdx, rbp
	call	memset
	mov	rax, qword ptr [rbx + 0x30]
.label_2240:
	mov	qword ptr [rbx + 0x38], rax
	jmp	.label_2228
.label_2259:
	mov	rbp, rax
	mov	qword ptr [rbx + 0x30], rax
	jmp	.label_2229
.label_2268:
	mov	rsi, qword ptr [rbx + 0x78]
	test	rsi, rsi
	je	.label_2244
	mov	rax, qword ptr [rbx + 0x30]
	mov	rcx, qword ptr [rbx + 0x40]
	cmp	rcx, rdx
	cmovg	rcx, rdx
	cmp	rax, rcx
	jge	.label_2239
	add	r12, rax
	mov	rdx, qword ptr [rbx]
	mov	rdi, qword ptr [rbx + 8]
	movzx	edx, byte ptr [rdx + r12]
	mov	dl, byte ptr [rsi + rdx]
	jmp	.label_2250
.label_2261:
	mov	rdx, qword ptr [rbx + 0x78]
	mov	rsi, qword ptr [rbx]
	mov	rdi, qword ptr [rbx + 8]
	add	rsi, qword ptr [rbx + 0x28]
	movzx	esi, byte ptr [rax + rsi]
	movzx	edx, byte ptr [rdx + rsi]
.label_2250:
	mov	byte ptr [rdi + rax], dl
	inc	rax
	cmp	rax, rcx
	jl	.label_2261
	mov	rax, rcx
.label_2239:
	mov	qword ptr [rbx + 0x30], rax
	mov	qword ptr [rbx + 0x38], rax
	jmp	.label_2244
.label_2256:
	mov	r15, r14
.label_2230:
	mov	qword ptr [rbx + 0x30], r15
	mov	qword ptr [rbx + 0x38], r15
	jmp	.label_2244
.label_2283:
	mov	rcx, qword ptr [rsp + 0x28]
	xor	edx, edx
	cmp	qword ptr [rsp + 0x30], 0
	je	.label_2255
	test	rax, rax
	je	.label_2255
	mov	rax, qword ptr [rbx]
	movzx	edx, byte ptr [rax + rbp]
.label_2255:
	mov	rax, qword ptr [rsp]
	mov	qword ptr [rax], rcx
	mov	eax, 1
	jmp	.label_2287
.label_2262:
	mov	rax, qword ptr [rbx + 0x20]
	mov	qword ptr [rsp + 0x28], rax
	mov	rdx, qword ptr [rbx + 0x50]
	sub	rdx, rbp
	mov	rsi, qword ptr [rbx]
	add	rsi, rbp
	lea	rdi, [rsp + 8]
	mov	qword ptr [rsp + 0x30], rdx
	mov	rcx, qword ptr [rsp]
	call	rpl_mbrtowc
	lea	rcx, [rax - 1]
	cmp	rcx, -3
	jae	.label_2283
	mov	edx, dword ptr [rsp + 8]
.label_2287:
	add	rbp, rax
	mov	rax, rbp
	sub	rax, r12
	jl	.label_2262
	mov	rbp, rax
	mov	qword ptr [rbx + 0x30], rax
	cmp	edx, -1
	je	.label_2229
.label_2254:
	cmp	byte ptr [rbx + 0x8e], 0
	jne	.label_2237
.label_2277:
	xor	ecx, ecx
	cmp	edx, 0xa
	jne	.label_2232
	xor	ecx, ecx
	cmp	byte ptr [rbx + 0x8d], 0
	setne	cl
	add	ecx, ecx
.label_2232:
	mov	dword ptr [rbx + 0x70], ecx
	mov	rbp, qword ptr [rbx + 0x30]
	jmp	.label_2241
.label_2229:
	mov	rsi, qword ptr [rsp + 0x20]
	dec	rsi
	mov	rdi, rbx
	mov	edx, r15d
	call	re_string_context_at
	mov	dword ptr [rbx + 0x70], eax
.label_2241:
	test	rbp, rbp
	jne	.label_2252
.label_2272:
	mov	rax, qword ptr [rbx + 0x30]
	mov	qword ptr [rbx + 0x38], rax
	jmp	.label_2228
.label_2247:
	mov	rdx, r14
	sub	rdx, r12
	mov	rsi, qword ptr [rbx + 0x50]
	add	rsi, rdx
	mov	qword ptr [rbx + 0x58], rsi
	add	rdx, qword ptr [rbx + 0x60]
	mov	qword ptr [rbx + 0x68], rdx
	mov	byte ptr [rbx + 0x8c], 0
	jmp	.label_2257
.label_2252:
	jle	.label_2286
	mov	rdi, qword ptr [rbx + 0x10]
	lea	rdx, [rbp*4]
	mov	esi, 0xff
	call	memset
.label_2286:
	cmp	byte ptr [rbx + 0x8b], 0
	mov	rdx, rbp
	je	.label_2272
	mov	rdi, qword ptr [rbx + 8]
	mov	esi, 0xff
	call	memset
	jmp	.label_2272
.label_2237:
	mov	ebp, edx
	mov	edi, ebp
	call	iswalnum
	mov	edx, ebp
	cmp	ebp, 0x5f
	mov	ecx, 1
	je	.label_2232
	test	eax, eax
	je	.label_2277
	jmp	.label_2232
.label_2285:
	lea	rsi, [rsp + 0x1a]
	cmp	rdx, 7
	mov	r8d, 6
	cmovl	r8, rdx
	cmp	rdx, 6
	mov	ecx, 6
	cmovl	ecx, edx
	test	ecx, ecx
	jle	.label_2227
	movsxd	r8, r8d
	lea	r9, [rsp + r8 + 0x19]
	add	rax, r8
	lea	r10, [r10 + rax - 1]
	xor	ecx, ecx
.label_2231:
	movzx	eax, byte ptr [r10 + rcx]
	movzx	eax, byte ptr [rdi + rax]
	mov	byte ptr [r9 + rcx], al
	lea	rax, [r8 + rcx - 1]
	dec	rcx
	inc	rax
	cmp	rax, 1
	jg	.label_2231
	jmp	.label_2227
	.section	.text
	.align	16
	#Procedure 0x416b33
	.globl sub_416b33
	.type sub_416b33, @function
sub_416b33:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x416b40
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
	#Procedure 0x416b58
	.globl sub_416b58
	.type sub_416b58, @function
sub_416b58:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x416b60
	.globl quotearg_custom
	.type quotearg_custom, @function
quotearg_custom:

	sub	rsp, 0x38
	mov	rax, rdx
	mov	rcx, qword ptr [rip + label_9]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0, xmmword ptr [rip + label_10]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_11]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rdi, rdi
	je	.label_2289
	test	rsi, rsi
	je	.label_2289
	mov	qword ptr [rsp + 0x28], rdi
	mov	qword ptr [rsp + 0x30], rsi
	lea	rcx, [rsp]
	xor	edi, edi
	mov	rdx, -1
	mov	rsi, rax
	call	quotearg_n_options
	add	rsp, 0x38
	ret	
.label_2289:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x416bd0

	.globl rpl_fcntl
	.type rpl_fcntl, @function
rpl_fcntl:
	push	rbp
	push	r14
	push	rbx
	sub	rsp, 0xd0
	mov	ebx, edi
	test	al, al
	je	.label_2306
	movaps	xmmword ptr [rsp + 0x50], xmm0
	movaps	xmmword ptr [rsp + 0x60], xmm1
	movaps	xmmword ptr [rsp + 0x70], xmm2
	movaps	xmmword ptr [rsp + 0x80], xmm3
	movaps	xmmword ptr [rsp + 0x90], xmm4
	movaps	xmmword ptr [rsp + 0xa0], xmm5
	movaps	xmmword ptr [rsp + 0xb0], xmm6
	movaps	xmmword ptr [rsp + 0xc0], xmm7
.label_2306:
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
	ja	.label_2294
	mov	eax, 0xa0a
	bt	eax, esi
	jb	.label_2307
	mov	eax, 0x514
	bt	eax, esi
	jb	.label_2295
	test	esi, esi
	jne	.label_2294
	movsxd	rcx, dword ptr [rsp]
	cmp	rcx, 0x28
	ja	.label_2309
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0x10]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp], ecx
	jmp	.label_2310
.label_2294:
	lea	eax, [rsi - 0x400]
	cmp	eax, 8
	ja	.label_2290
	mov	ecx, 0x85
	bt	ecx, eax
	jb	.label_2295
	mov	ecx, 0x102
	bt	ecx, eax
	jae	.label_2297
.label_2307:
	xor	eax, eax
	mov	edi, ebx
	call	fcntl
	jmp	.label_2301
.label_2295:
	movsxd	rcx, dword ptr [rsp]
	cmp	rcx, 0x28
	ja	.label_2302
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0x10]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp], ecx
	jmp	.label_2303
.label_2302:
	mov	rax, qword ptr [rsp + 8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 8], rcx
.label_2303:
	mov	edx, dword ptr [rax]
	xor	eax, eax
	mov	edi, ebx
.label_2305:
	call	fcntl
.label_2301:
	mov	ebp, eax
.label_2291:
	mov	eax, ebp
	add	rsp, 0xd0
	pop	rbx
	pop	r14
	pop	rbp
	ret	
.label_2297:
	cmp	eax, 6
	jne	.label_2290
	movsxd	rcx, dword ptr [rsp]
	cmp	rcx, 0x28
	ja	.label_2293
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0x10]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp], ecx
	jmp	.label_2304
.label_2290:
	movsxd	rcx, dword ptr [rsp]
	cmp	rcx, 0x28
	ja	.label_2296
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0x10]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp], ecx
	jmp	.label_2299
.label_2309:
	mov	rax, qword ptr [rsp + 8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 8], rcx
.label_2310:
	mov	edx, dword ptr [rax]
	xor	esi, esi
	xor	eax, eax
	mov	edi, ebx
	jmp	.label_2305
.label_2293:
	mov	rax, qword ptr [rsp + 8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 8], rcx
.label_2304:
	mov	r14d, dword ptr [rax]
	cmp	dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec],  0
	js	.label_2308
	mov	esi, 0x406
	xor	eax, eax
	mov	edi, ebx
	mov	edx, r14d
	call	fcntl
	mov	ebp, eax
	test	ebp, ebp
	jns	.label_2292
	call	__errno_location
	cmp	dword ptr [rax], 0x16
	jne	.label_2292
	xor	esi, esi
	xor	eax, eax
	mov	edi, ebx
	mov	edx, r14d
	call	fcntl
	mov	ebp, eax
	test	ebp, ebp
	js	.label_2291
	mov	dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec],  0xffffffff
	mov	al, 1
	jmp	.label_2298
.label_2292:
	mov	dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec],  1
	jmp	.label_2291
.label_2296:
	mov	rax, qword ptr [rsp + 8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 8], rcx
.label_2299:
	mov	rdx, qword ptr [rax]
	xor	eax, eax
	mov	edi, ebx
	call	fcntl
	jmp	.label_2301
.label_2308:
	xor	esi, esi
	xor	eax, eax
	mov	edi, ebx
	mov	edx, r14d
	call	fcntl
	mov	ebp, eax
	cmp	dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec],  -1
	sete	al
.label_2298:
	test	al, al
	je	.label_2291
	test	ebp, ebp
	js	.label_2291
	mov	esi, 1
	xor	eax, eax
	mov	edi, ebp
	call	fcntl
	mov	ecx, eax
	test	ecx, ecx
	js	.label_2300
	or	ecx, 1
	mov	esi, 2
	xor	eax, eax
	mov	edi, ebp
	mov	edx, ecx
	call	fcntl
	cmp	eax, -1
	jne	.label_2291
.label_2300:
	call	__errno_location
	mov	rbx, rax
	mov	r14d, dword ptr [rbx]
	mov	edi, ebp
	call	close
	mov	dword ptr [rbx], r14d
	mov	ebp, 0xffffffff
	jmp	.label_2291
	.section	.text
	.align	16
	#Procedure 0x416e61
	.globl sub_416e61
	.type sub_416e61, @function
sub_416e61:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x416e70
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
	#Procedure 0x416e7f
	.globl sub_416e7f
	.type sub_416e7f, @function
sub_416e7f:

	nop	
.label_2311:
	xor	eax, eax
	pop	rcx
	ret	
	.section	.text
	.align	16
	#Procedure 0x416e84
	.globl sub_416e84
	.type sub_416e84, @function
sub_416e84:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x416e8f

	.globl rpl_re_compile_pattern
	.type rpl_re_compile_pattern, @function
rpl_re_compile_pattern:
	push	rax
	mov	r8, rsi
	mov	rsi, rdi
	mov	rcx, qword ptr [rip + rpl_re_syntax_options]
	mov	al, byte ptr [rdx + 0x38]
	mov	rdi, rcx
	shr	rdi, 0x15
	and	dil, 0x10
	and	al, 0x6f
	or	al, dil
	or	al, 0x80
	mov	byte ptr [rdx + 0x38], al
	mov	rdi, rdx
	mov	rdx, r8
	call	re_compile_internal
	test	eax, eax
	je	.label_2311
	cdqe	
	mov	esi, OFFSET FLAT:__re_error_msgid
	add	rsi, qword ptr [(rax * 8) + __re_error_msgid_idx]
	xor	edi, edi
	mov	edx, 5
	pop	rax
	jmp	dcgettext
	.section	.text
	.align	16
	#Procedure 0x416ee0

	.globl build_charclass
	.type build_charclass, @function
build_charclass:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	r12, r8
	mov	r13, rcx
	mov	rbx, rdx
	mov	r15, rsi
	mov	r14, rdi
	test	r9d, 0x400000
	je	.label_2350
	mov	esi, OFFSET FLAT:label_2354
	mov	rdi, r12
	call	strcmp
	test	eax, eax
	je	.label_2355
	mov	esi, OFFSET FLAT:label_2357
	mov	rdi, r12
	call	strcmp
	test	eax, eax
	jne	.label_2350
.label_2355:
	mov	r12d, OFFSET FLAT:label_2359
.label_2350:
	mov	rbp, qword ptr [r13]
	cmp	rbp, qword ptr [rbx + 0x48]
	je	.label_2360
.label_2322:
	mov	rdi, r12
	call	wctype
	mov	rcx, qword ptr [rbx + 0x48]
	lea	rdx, [rcx + 1]
	mov	qword ptr [rbx + 0x48], rdx
	mov	rdx, qword ptr [rbx + 0x18]
	mov	qword ptr [rdx + rcx*8], rax
	mov	esi, OFFSET FLAT:label_1234
	mov	rdi, r12
	call	strcmp
	test	eax, eax
	je	.label_2327
	mov	esi, OFFSET FLAT:label_2370
	mov	rdi, r12
	call	strcmp
	test	eax, eax
	je	.label_2371
	mov	esi, OFFSET FLAT:label_2357
	mov	rdi, r12
	call	strcmp
	test	eax, eax
	je	.label_2375
	mov	esi, OFFSET FLAT:label_1239
	mov	rdi, r12
	call	strcmp
	test	eax, eax
	je	.label_2378
	mov	esi, OFFSET FLAT:label_2359
	mov	rdi, r12
	call	strcmp
	test	eax, eax
	je	.label_2382
	mov	esi, OFFSET FLAT:label_2383
	mov	rdi, r12
	call	strcmp
	test	eax, eax
	je	.label_2344
	mov	esi, OFFSET FLAT:label_2387
	mov	rdi, r12
	call	strcmp
	test	eax, eax
	je	.label_2390
	mov	esi, OFFSET FLAT:label_2354
	mov	rdi, r12
	call	strcmp
	test	eax, eax
	je	.label_2394
	mov	esi, OFFSET FLAT:label_2397
	mov	rdi, r12
	call	strcmp
	test	eax, eax
	je	.label_2314
	mov	esi, OFFSET FLAT:label_2316
	mov	rdi, r12
	call	strcmp
	test	eax, eax
	je	.label_2317
	mov	esi, OFFSET FLAT:label_2319
	mov	rdi, r12
	call	strcmp
	test	eax, eax
	je	.label_2321
	mov	esi, OFFSET FLAT:label_2323
	mov	rdi, r12
	call	strcmp
	mov	ecx, eax
	mov	eax, 4
	test	ecx, ecx
	jne	.label_2313
	call	__ctype_b_loc
	test	r14, r14
	mov	rdx, qword ptr [rax]
	jne	.label_2328
	xor	ecx, ecx
.label_2337:
	test	byte ptr [rdx + rcx*2 + 1], 0x10
	je	.label_2332
	mov	eax, 1
	shl	rax, cl
	mov	rsi, rcx
	sar	rsi, 0x3f
	shr	rsi, 0x3a
	add	rsi, rcx
	sar	rsi, 6
	or	qword ptr [r15 + rsi*8], rax
.label_2332:
	inc	rcx
	xor	eax, eax
	cmp	rcx, 0x100
	jne	.label_2337
	jmp	.label_2313
.label_2327:
	call	__ctype_b_loc
	test	r14, r14
	mov	rdx, qword ptr [rax]
	jne	.label_2341
	xor	ecx, ecx
	nop	word ptr cs:[rax + rax]
.label_2351:
	test	byte ptr [rdx + rcx*2], 8
	je	.label_2343
	mov	eax, 1
	shl	rax, cl
	mov	rsi, rcx
	sar	rsi, 0x3f
	shr	rsi, 0x3a
	add	rsi, rcx
	sar	rsi, 6
	or	qword ptr [r15 + rsi*8], rax
.label_2343:
	inc	rcx
	xor	eax, eax
	cmp	rcx, 0x100
	jne	.label_2351
	jmp	.label_2313
.label_2371:
	call	__ctype_b_loc
	test	r14, r14
	mov	rdx, qword ptr [rax]
	jne	.label_2353
	xor	ecx, ecx
	nop	word ptr [rax + rax]
.label_2363:
	test	byte ptr [rdx + rcx*2], 2
	je	.label_2330
	mov	eax, 1
	shl	rax, cl
	mov	rsi, rcx
	sar	rsi, 0x3f
	shr	rsi, 0x3a
	add	rsi, rcx
	sar	rsi, 6
	or	qword ptr [r15 + rsi*8], rax
.label_2330:
	inc	rcx
	xor	eax, eax
	cmp	rcx, 0x100
	jne	.label_2363
	jmp	.label_2313
.label_2375:
	call	__ctype_b_loc
	test	r14, r14
	mov	rdx, qword ptr [rax]
	jne	.label_2366
	xor	ecx, ecx
	nop	word ptr [rax + rax]
.label_2373:
	test	byte ptr [rdx + rcx*2 + 1], 2
	je	.label_2367
	mov	eax, 1
	shl	rax, cl
	mov	rsi, rcx
	sar	rsi, 0x3f
	shr	rsi, 0x3a
	add	rsi, rcx
	sar	rsi, 6
	or	qword ptr [r15 + rsi*8], rax
.label_2367:
	inc	rcx
	xor	eax, eax
	cmp	rcx, 0x100
	jne	.label_2373
	jmp	.label_2313
.label_2378:
	call	__ctype_b_loc
	test	r14, r14
	mov	rdx, qword ptr [rax]
	jne	.label_2377
	xor	ecx, ecx
	nop	dword ptr [rax + rax]
.label_2388:
	test	byte ptr [rdx + rcx*2 + 1], 0x20
	je	.label_2381
	mov	eax, 1
	shl	rax, cl
	mov	rsi, rcx
	sar	rsi, 0x3f
	shr	rsi, 0x3a
	add	rsi, rcx
	sar	rsi, 6
	or	qword ptr [r15 + rsi*8], rax
.label_2381:
	inc	rcx
	xor	eax, eax
	cmp	rcx, 0x100
	jne	.label_2388
	jmp	.label_2313
.label_2382:
	call	__ctype_b_loc
	test	r14, r14
	mov	rdx, qword ptr [rax]
	jne	.label_2393
	xor	ecx, ecx
	nop	dword ptr [rax + rax]
.label_2318:
	test	byte ptr [rdx + rcx*2 + 1], 4
	je	.label_2312
	mov	eax, 1
	shl	rax, cl
	mov	rsi, rcx
	sar	rsi, 0x3f
	shr	rsi, 0x3a
	add	rsi, rcx
	sar	rsi, 6
	or	qword ptr [r15 + rsi*8], rax
.label_2312:
	inc	rcx
	xor	eax, eax
	cmp	rcx, 0x100
	jne	.label_2318
	jmp	.label_2313
.label_2344:
	call	__ctype_b_loc
	test	r14, r14
	mov	rdx, qword ptr [rax]
	jne	.label_2324
	xor	ecx, ecx
	nop	dword ptr [rax + rax]
.label_2334:
	test	byte ptr [rdx + rcx*2 + 1], 8
	je	.label_2391
	mov	eax, 1
	shl	rax, cl
	mov	rsi, rcx
	sar	rsi, 0x3f
	shr	rsi, 0x3a
	add	rsi, rcx
	sar	rsi, 6
	or	qword ptr [r15 + rsi*8], rax
.label_2391:
	inc	rcx
	xor	eax, eax
	cmp	rcx, 0x100
	jne	.label_2334
	jmp	.label_2313
.label_2390:
	call	__ctype_b_loc
	test	r14, r14
	mov	rdx, qword ptr [rax]
	jne	.label_2336
	xor	ecx, ecx
	nop	dword ptr [rax + rax]
.label_2345:
	test	byte ptr [rdx + rcx*2 + 1], 0x40
	je	.label_2340
	mov	eax, 1
	shl	rax, cl
	mov	rsi, rcx
	sar	rsi, 0x3f
	shr	rsi, 0x3a
	add	rsi, rcx
	sar	rsi, 6
	or	qword ptr [r15 + rsi*8], rax
.label_2340:
	inc	rcx
	xor	eax, eax
	cmp	rcx, 0x100
	jne	.label_2345
	jmp	.label_2313
.label_2394:
	call	__ctype_b_loc
	test	r14, r14
	mov	rdx, qword ptr [rax]
	jne	.label_2348
	xor	ecx, ecx
	nop	dword ptr [rax + rax]
.label_2358:
	test	byte ptr [rdx + rcx*2 + 1], 1
	je	.label_2352
	mov	eax, 1
	shl	rax, cl
	mov	rsi, rcx
	sar	rsi, 0x3f
	shr	rsi, 0x3a
	add	rsi, rcx
	sar	rsi, 6
	or	qword ptr [r15 + rsi*8], rax
.label_2352:
	inc	rcx
	xor	eax, eax
	cmp	rcx, 0x100
	jne	.label_2358
	jmp	.label_2313
.label_2314:
	call	__ctype_b_loc
	test	r14, r14
	mov	rdx, qword ptr [rax]
	jne	.label_2361
	xor	ecx, ecx
	nop	dword ptr [rax + rax]
.label_2369:
	test	byte ptr [rdx + rcx*2], 1
	je	.label_2364
	mov	eax, 1
	shl	rax, cl
	mov	rsi, rcx
	sar	rsi, 0x3f
	shr	rsi, 0x3a
	add	rsi, rcx
	sar	rsi, 6
	or	qword ptr [r15 + rsi*8], rax
.label_2364:
	inc	rcx
	xor	eax, eax
	cmp	rcx, 0x100
	jne	.label_2369
	jmp	.label_2313
.label_2317:
	call	__ctype_b_loc
	test	r14, r14
	mov	rdx, qword ptr [rax]
	jne	.label_2372
	xor	ecx, ecx
.label_2380:
	cmp	word ptr [rdx + rcx*2], 0
	jns	.label_2374
	mov	eax, 1
	shl	rax, cl
	mov	rsi, rcx
	sar	rsi, 0x3f
	shr	rsi, 0x3a
	add	rsi, rcx
	sar	rsi, 6
	or	qword ptr [r15 + rsi*8], rax
.label_2374:
	inc	rcx
	xor	eax, eax
	cmp	rcx, 0x100
	jne	.label_2380
	jmp	.label_2313
.label_2321:
	call	__ctype_b_loc
	test	r14, r14
	mov	rdx, qword ptr [rax]
	jne	.label_2384
	xor	ecx, ecx
.label_2395:
	test	byte ptr [rdx + rcx*2], 4
	je	.label_2386
	mov	eax, 1
	shl	rax, cl
	mov	rsi, rcx
	sar	rsi, 0x3f
	shr	rsi, 0x3a
	add	rsi, rcx
	sar	rsi, 6
	or	qword ptr [r15 + rsi*8], rax
.label_2386:
	inc	rcx
	xor	eax, eax
	cmp	rcx, 0x100
	jne	.label_2395
.label_2313:
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_2360:
	lea	rax, [rbp + rbp]
	mov	rdi, qword ptr [rbx + 0x18]
	lea	rsi, [rax*8 + 8]
	call	realloc
	mov	rcx, rax
	mov	eax, 0xc
	test	rcx, rcx
	je	.label_2313
	lea	rax, [rbp + rbp + 1]
	mov	qword ptr [rbx + 0x18], rcx
	mov	qword ptr [r13], rax
	jmp	.label_2322
.label_2341:
	xor	esi, esi
.label_2331:
	test	byte ptr [rdx + rsi*2], 8
	je	.label_2326
	movzx	ecx, byte ptr [r14 + rsi]
	mov	eax, 1
	shl	rax, cl
	shr	cl, 6
	movzx	ecx, cl
	or	qword ptr [r15 + rcx*8], rax
.label_2326:
	inc	rsi
	xor	eax, eax
	cmp	rsi, 0x100
	jne	.label_2331
	jmp	.label_2313
.label_2353:
	xor	esi, esi
.label_2339:
	test	byte ptr [rdx + rsi*2], 2
	je	.label_2335
	movzx	ecx, byte ptr [r14 + rsi]
	mov	eax, 1
	shl	rax, cl
	shr	cl, 6
	movzx	ecx, cl
	or	qword ptr [r15 + rcx*8], rax
.label_2335:
	inc	rsi
	xor	eax, eax
	cmp	rsi, 0x100
	jne	.label_2339
	jmp	.label_2313
.label_2366:
	xor	esi, esi
.label_2346:
	test	byte ptr [rdx + rsi*2 + 1], 2
	je	.label_2342
	movzx	ecx, byte ptr [r14 + rsi]
	mov	eax, 1
	shl	rax, cl
	shr	cl, 6
	movzx	ecx, cl
	or	qword ptr [r15 + rcx*8], rax
.label_2342:
	inc	rsi
	xor	eax, eax
	cmp	rsi, 0x100
	jne	.label_2346
	jmp	.label_2313
.label_2377:
	xor	esi, esi
.label_2392:
	test	byte ptr [rdx + rsi*2 + 1], 0x20
	je	.label_2349
	movzx	ecx, byte ptr [r14 + rsi]
	mov	eax, 1
	shl	rax, cl
	shr	cl, 6
	movzx	ecx, cl
	or	qword ptr [r15 + rcx*8], rax
.label_2349:
	inc	rsi
	xor	eax, eax
	cmp	rsi, 0x100
	jne	.label_2392
	jmp	.label_2313
.label_2393:
	xor	esi, esi
.label_2362:
	test	byte ptr [rdx + rsi*2 + 1], 4
	je	.label_2356
	movzx	ecx, byte ptr [r14 + rsi]
	mov	eax, 1
	shl	rax, cl
	shr	cl, 6
	movzx	ecx, cl
	or	qword ptr [r15 + rcx*8], rax
.label_2356:
	inc	rsi
	xor	eax, eax
	cmp	rsi, 0x100
	jne	.label_2362
	jmp	.label_2313
.label_2324:
	xor	esi, esi
.label_2368:
	test	byte ptr [rdx + rsi*2 + 1], 8
	je	.label_2365
	movzx	ecx, byte ptr [r14 + rsi]
	mov	eax, 1
	shl	rax, cl
	shr	cl, 6
	movzx	ecx, cl
	or	qword ptr [r15 + rcx*8], rax
.label_2365:
	inc	rsi
	xor	eax, eax
	cmp	rsi, 0x100
	jne	.label_2368
	jmp	.label_2313
.label_2336:
	xor	esi, esi
.label_2376:
	test	byte ptr [rdx + rsi*2 + 1], 0x40
	je	.label_2347
	movzx	ecx, byte ptr [r14 + rsi]
	mov	eax, 1
	shl	rax, cl
	shr	cl, 6
	movzx	ecx, cl
	or	qword ptr [r15 + rcx*8], rax
.label_2347:
	inc	rsi
	xor	eax, eax
	cmp	rsi, 0x100
	jne	.label_2376
	jmp	.label_2313
.label_2348:
	xor	esi, esi
.label_2385:
	test	byte ptr [rdx + rsi*2 + 1], 1
	je	.label_2379
	movzx	ecx, byte ptr [r14 + rsi]
	mov	eax, 1
	shl	rax, cl
	shr	cl, 6
	movzx	ecx, cl
	or	qword ptr [r15 + rcx*8], rax
.label_2379:
	inc	rsi
	xor	eax, eax
	cmp	rsi, 0x100
	jne	.label_2385
	jmp	.label_2313
.label_2361:
	xor	esi, esi
.label_2396:
	test	byte ptr [rdx + rsi*2], 1
	je	.label_2389
	movzx	ecx, byte ptr [r14 + rsi]
	mov	eax, 1
	shl	rax, cl
	shr	cl, 6
	movzx	ecx, cl
	or	qword ptr [r15 + rcx*8], rax
.label_2389:
	inc	rsi
	xor	eax, eax
	cmp	rsi, 0x100
	jne	.label_2396
	jmp	.label_2313
.label_2372:
	xor	esi, esi
.label_2320:
	cmp	word ptr [rdx + rsi*2], 0
	jns	.label_2315
	movzx	ecx, byte ptr [r14 + rsi]
	mov	eax, 1
	shl	rax, cl
	shr	cl, 6
	movzx	ecx, cl
	or	qword ptr [r15 + rcx*8], rax
.label_2315:
	inc	rsi
	xor	eax, eax
	cmp	rsi, 0x100
	jne	.label_2320
	jmp	.label_2313
.label_2384:
	xor	esi, esi
.label_2329:
	test	byte ptr [rdx + rsi*2], 4
	je	.label_2325
	movzx	ecx, byte ptr [r14 + rsi]
	mov	eax, 1
	shl	rax, cl
	shr	cl, 6
	movzx	ecx, cl
	or	qword ptr [r15 + rcx*8], rax
.label_2325:
	inc	rsi
	xor	eax, eax
	cmp	rsi, 0x100
	jne	.label_2329
	jmp	.label_2313
.label_2328:
	xor	esi, esi
.label_2338:
	test	byte ptr [rdx + rsi*2 + 1], 0x10
	je	.label_2333
	movzx	ecx, byte ptr [r14 + rsi]
	mov	eax, 1
	shl	rax, cl
	shr	cl, 6
	movzx	ecx, cl
	or	qword ptr [r15 + rcx*8], rax
.label_2333:
	inc	rsi
	xor	eax, eax
	cmp	rsi, 0x100
	jne	.label_2338
	jmp	.label_2313
	.section	.text
	.align	16
	#Procedure 0x4176a5
	.globl sub_4176a5
	.type sub_4176a5, @function
sub_4176a5:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4176b0

	.globl create_output_file
	.type create_output_file, @function
create_output_file:
	push	rbp
	push	r15
	push	r14
	push	rbx
	sub	rsp, 0x88
	mov	r14d, dword ptr [rip + files_created]
	mov	rdi, qword ptr [rip + filename_space]
	mov	rsi, qword ptr [rip + prefix]
	call	strcpy
	mov	rbp, qword ptr [rip + suffix]
	mov	rbx, qword ptr [rip + filename_space]
	mov	rdi, qword ptr [rip + prefix]
	call	strlen
	mov	rdi, rax
	add	rdi, rbx
	cmp	rbp, 0
	je	.label_2399
	mov	rcx, qword ptr [rip + suffix]
	mov	esi, 1
	mov	rdx, -1
	xor	eax, eax
	mov	r8d, r14d
	call	__sprintf_chk
	jmp	.label_2401
.label_2399:
	mov	r8d, dword ptr [rip + digits]
	mov	esi, 1
	mov	rdx, -1
	mov	ecx, OFFSET FLAT:label_901
	xor	eax, eax
	mov	r9d, r14d
	call	__sprintf_chk
.label_2401:
	mov	rdx, qword ptr [rip + filename_space]
	mov	qword ptr [rip + output_filename],  rdx
	mov	eax, dword ptr [rip + files_created]
	mov	r15d, 0x4b
	cmp	eax, -1
	je	.label_2402
	lea	r14, [rsp + 8]
	xor	edi, edi
	mov	esi, OFFSET FLAT:caught_signals
	mov	rdx, r14
	call	sigprocmask
	mov	rdi, qword ptr [rip + output_filename]
	mov	esi, OFFSET FLAT:label_2398
	call	fopen_safer
	mov	rbx, rax
	mov	qword ptr [rip + output_stream],  rbx
	xor	ebp, ebp
	test	rbx, rbx
	setne	bpl
	call	__errno_location
	mov	r15d, dword ptr [rax]
	add	dword ptr [rip + files_created],  ebp
	mov	edi, 2
	xor	edx, edx
	mov	rsi, r14
	call	sigprocmask
	test	rbx, rbx
	je	.label_2400
	mov	qword ptr [rip + bytes_written],  0
	add	rsp, 0x88
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_2400:
	mov	rdx, qword ptr [rip + output_filename]
.label_2402:
	xor	edi, edi
	mov	esi, 3
	call	quotearg_n_style_colon
	mov	rcx, rax
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_850
	xor	eax, eax
	mov	esi, r15d
	call	error
	call	cleanup_fatal
	.section	.text
	.align	16
	#Procedure 0x4177fc
	.globl sub_4177fc
	.type sub_4177fc, @function
sub_4177fc:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x417800

	.globl peek_token_bracket
	.type peek_token_bracket, @function
peek_token_bracket:
	mov	rax, qword ptr [rsi + 0x48]
	cmp	qword ptr [rsi + 0x68], rax
	jle	.label_2403
	mov	rcx, qword ptr [rsi + 8]
	mov	al, byte ptr [rcx + rax]
	mov	byte ptr [rdi], al
	cmp	dword ptr [rsi + 0x90], 2
	jl	.label_2406
	mov	r8, qword ptr [rsi + 0x48]
	cmp	r8, qword ptr [rsi + 0x30]
	je	.label_2406
	mov	rcx, qword ptr [rsi + 0x10]
	cmp	dword ptr [rcx + r8*4], -1
	je	.label_2405
.label_2406:
	test	dl, 1
	je	.label_2413
	cmp	al, 0x5c
	jne	.label_2413
	mov	rcx, qword ptr [rsi + 0x48]
	inc	rcx
	cmp	rcx, qword ptr [rsi + 0x58]
	jge	.label_2413
	mov	qword ptr [rsi + 0x48], rcx
	mov	rax, qword ptr [rsi + 8]
	mov	al, byte ptr [rax + rcx]
	mov	byte ptr [rdi], al
	jmp	.label_2405
.label_2403:
	mov	byte ptr [rdi + 8], 2
	xor	eax, eax
	ret	
.label_2413:
	cmp	al, 0x5c
	jg	.label_2411
	cmp	al, 0x2d
	je	.label_2409
	cmp	al, 0x5b
	jne	.label_2405
	mov	rax, qword ptr [rsi + 0x48]
	inc	rax
	cmp	rax, qword ptr [rsi + 0x58]
	jge	.label_2410
	mov	rcx, qword ptr [rsi + 8]
	mov	al, byte ptr [rcx + rax]
	mov	byte ptr [rdi], al
	cmp	al, 0x3d
	je	.label_2412
	cmp	al, 0x3a
	je	.label_2404
	cmp	al, 0x2e
	jne	.label_2408
	mov	byte ptr [rdi + 8], 0x1a
	mov	eax, 2
	ret	
.label_2411:
	cmp	al, 0x5d
	je	.label_2407
	cmp	al, 0x5e
	jne	.label_2405
	mov	byte ptr [rdi + 8], 0x19
	mov	eax, 1
	ret	
.label_2405:
	mov	byte ptr [rdi + 8], 1
	mov	eax, 1
	ret	
.label_2409:
	mov	byte ptr [rdi + 8], 0x16
	mov	eax, 1
	ret	
.label_2407:
	mov	byte ptr [rdi + 8], 0x15
	mov	eax, 1
	ret	
.label_2410:
	mov	byte ptr [rdi], 0
.label_2408:
	mov	byte ptr [rdi + 8], 1
	mov	byte ptr [rdi], 0x5b
	mov	eax, 1
	ret	
.label_2412:
	mov	byte ptr [rdi + 8], 0x1c
	mov	eax, 2
	ret	
.label_2404:
	test	dl, 4
	je	.label_2408
	mov	byte ptr [rdi + 8], 0x1e
	mov	eax, 2
	ret	
	.section	.text
	.align	16
	#Procedure 0x4178ee
	.globl sub_4178ee
	.type sub_4178ee, @function
sub_4178ee:

	nop	
	.section	.text
	.align	16
	#Procedure 0x4178f0

	.globl safe_read
	.type safe_read, @function
safe_read:
	push	rbp
	push	r15
	push	r14
	push	rbx
	push	rax
	mov	rbx, rdx
	mov	r14, rsi
	mov	r15d, edi
.label_2415:
	mov	edi, r15d
	mov	rsi, r14
	mov	rdx, rbx
	call	read
	mov	rbp, rax
	test	rbp, rbp
	jns	.label_2414
	call	__errno_location
	mov	eax, dword ptr [rax]
	cmp	eax, 4
	je	.label_2415
	cmp	rbx, 0x7ff00001
	jb	.label_2414
	cmp	eax, 0x16
	mov	ebx, 0x7ff00000
	je	.label_2415
.label_2414:
	mov	rax, rbp
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x417943
	.globl sub_417943
	.type sub_417943, @function
sub_417943:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x417950
	.globl quotearg_char_mem
	.type quotearg_char_mem, @function
quotearg_char_mem:

	sub	rsp, 0x38
	mov	ecx, edx
	mov	r8, rsi
	mov	rdx, rdi
	mov	rsi, qword ptr [rip + label_9]
	mov	qword ptr [rsp + 0x30], rsi
	movups	xmm0, xmmword ptr [rip + label_10]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_11]
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
	#Procedure 0x4179be
	.globl sub_4179be
	.type sub_4179be, @function
sub_4179be:

	nop	
	.section	.text
	.align	16
	#Procedure 0x4179c0

	.globl load_buffer
	.type load_buffer, @function
load_buffer:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	al, byte ptr [rip + have_read_eof]
	test	al, al
	jne	.label_2432
	mov	rbx, qword ptr [rip + hold_count]
	cmp	rbx, 0x1fff
	mov	eax, 0x1fff
	cmovbe	rbx, rax
	jmp	.label_2421
	.section	.text
	.align	16
	#Procedure 0x4179f2
	.globl sub_4179f2
	.type sub_4179f2, @function
sub_4179f2:

	nop	word ptr cs:[rax + rax]
.label_2416:
	add	rbx, rbx
	mov	qword ptr [r14 + 0x30], 0
	mov	rdi, qword ptr [r14 + 0x28]
	call	free
	mov	rdi, r14
	call	free
.label_2421:
	cmp	rbx, 0x2000
	mov	r13d, 0x1fff
	jb	.label_2423
	add	rbx, -0x1800
	and	rbx, 0xfffffffffffff800
	add	rbx, 0x1fff
	mov	r13, rbx
.label_2423:
	mov	edi, 0x48
	call	xmalloc
	mov	r14, rax
	lea	rdi, [r13 + 1]
	call	xmalloc
	mov	r12, rax
	mov	qword ptr [r14 + 0x28], r12
	mov	qword ptr [r14], r13
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [r14 + 0x30], xmm0
	mov	qword ptr [r14 + 0x20], 0
	mov	qword ptr [r14 + 8], 0
	mov	rax, qword ptr [rip + last_line_number]
	inc	rax
	mov	qword ptr [r14 + 0x18], rax
	mov	qword ptr [r14 + 0x10], rax
	mov	qword ptr [r14 + 0x40], 0
	mov	rbx, qword ptr [rip + hold_count]
	test	rbx, rbx
	je	.label_2434
	mov	rsi, qword ptr [rip + hold_area]
	mov	rdi, r12
	mov	rdx, rbx
	call	memcpy
	mov	qword ptr [r14 + 8], rbx
	sub	r13, rbx
	mov	qword ptr [rip + hold_count],  0
	mov	r15d, 0
	je	.label_2429
	add	r12, rbx
.label_2434:
	xor	edi, edi
	mov	rsi, r12
	mov	rdx, r13
	call	safe_read
	mov	r15, rax
	test	r15, r15
	je	.label_2436
	cmp	r15, -1
	jne	.label_2429
	jmp	.label_2441
	.section	.text
	.align	16
	#Procedure 0x417af2
	.globl sub_417af2
	.type sub_417af2, @function
sub_417af2:

	nop	word ptr cs:[rax + rax]
.label_2436:
	mov	byte ptr [rip + have_read_eof],  1
	xor	r15d, r15d
.label_2429:
	lea	rax, [r14 + 0x30]
	mov	qword ptr [rsp], rax
	add	r15, qword ptr [r14 + 8]
	mov	qword ptr [r14 + 8], r15
	je	.label_2418
	mov	rbx, qword ptr [r14 + 0x28]
	mov	esi, 0xa
	mov	rdi, rbx
	mov	rdx, r15
	call	memchr
	mov	r13, rax
	xor	ebp, ebp
	test	r13, r13
	je	.label_2428
	nop	word ptr cs:[rax + rax]
.label_2422:
	mov	r12, r13
	sub	r12, rbx
	mov	rax, qword ptr [rsp]
	cmp	qword ptr [rax], 0
	je	.label_2438
	mov	rax, qword ptr [r14 + 0x38]
	jmp	.label_2437
	.section	.text
	.align	16
	#Procedure 0x417b66
	.globl sub_417b66
	.type sub_417b66, @function
sub_417b66:

	nop	word ptr cs:[rax + rax]
.label_2438:
	mov	edi, 0x520
	call	xmalloc
	mov	qword ptr [rax + 0x518], 0
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [rax], xmm0
	mov	qword ptr [rax + 0x10], 0
	mov	qword ptr [r14 + 0x38], rax
	mov	qword ptr [r14 + 0x30], rax
.label_2437:
	inc	r12
	cmp	qword ptr [rax], 0x50
	jne	.label_2424
	mov	edi, 0x520
	call	xmalloc
	mov	qword ptr [rax + 0x518], 0
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [rax], xmm0
	mov	qword ptr [rax + 0x10], 0
	mov	rcx, qword ptr [r14 + 0x38]
	mov	qword ptr [rcx + 0x518], rax
	mov	qword ptr [r14 + 0x38], rax
.label_2424:
	mov	rcx, qword ptr [rax + 8]
	shl	rcx, 4
	mov	qword ptr [rax + rcx + 0x20], rbx
	mov	qword ptr [rax + rcx + 0x18], r12
	movdqu	xmm0, xmmword ptr [rax]
	paddq	xmm0, xmmword ptr [rip + label_51]
	movdqu	xmmword ptr [rax], xmm0
	sub	r15, r12
	mov	rbx, r13
	inc	rbx
	inc	rbp
	mov	esi, 0xa
	mov	rdi, rbx
	mov	rdx, r15
	call	memchr
	mov	r13, rax
	test	r13, r13
	jne	.label_2422
	test	r15, r15
	je	.label_2440
.label_2428:
	cmp	byte ptr [rip + have_read_eof],  1
	jne	.label_2426
	mov	rax, qword ptr [rsp]
	cmp	qword ptr [rax], 0
	je	.label_2430
	mov	r12, r14
	add	r12, 0x38
	mov	rax, qword ptr [r14 + 0x38]
	jmp	.label_2439
	.section	.text
	.align	16
	#Procedure 0x417c4d
	.globl sub_417c4d
	.type sub_417c4d, @function
sub_417c4d:

	nop	dword ptr [rax]
.label_2426:
	mov	rdi, rbx
	mov	rsi, r15
	call	xmemdup
	mov	rbx, rax
	mov	rdi, qword ptr [rip + hold_area]
	call	free
	mov	qword ptr [rip + hold_area],  rbx
	mov	qword ptr [rip + hold_count],  r15
	jmp	.label_2440
.label_2430:
	mov	edi, 0x520
	call	xmalloc
	mov	qword ptr [rax + 0x518], 0
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [rax], xmm0
	mov	qword ptr [rax + 0x10], 0
	mov	r12, r14
	add	r12, 0x38
	mov	qword ptr [r14 + 0x38], rax
	mov	qword ptr [r14 + 0x30], rax
.label_2439:
	cmp	qword ptr [rax], 0x50
	jne	.label_2427
	mov	edi, 0x520
	call	xmalloc
	mov	qword ptr [rax + 0x518], 0
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [rax], xmm0
	mov	qword ptr [rax + 0x10], 0
	mov	rcx, qword ptr [r12]
	mov	qword ptr [rcx + 0x518], rax
	mov	qword ptr [r12], rax
.label_2427:
	mov	rcx, qword ptr [rax + 8]
	shl	rcx, 4
	mov	qword ptr [rax + rcx + 0x20], rbx
	mov	qword ptr [rax + rcx + 0x18], r15
	movdqu	xmm0, xmmword ptr [rax]
	paddq	xmm0, xmmword ptr [rip + label_51]
	movdqu	xmmword ptr [rax], xmm0
	inc	rbp
.label_2440:
	mov	qword ptr [r14 + 0x20], rbp
	mov	rax, qword ptr [rip + last_line_number]
	lea	rcx, [rax + 1]
	mov	qword ptr [r14 + 0x10], rcx
	mov	qword ptr [r14 + 0x18], rcx
	add	rax, rbp
	mov	qword ptr [rip + last_line_number],  rax
	test	rbp, rbp
	jne	.label_2420
.label_2418:
	mov	al, byte ptr [rip + have_read_eof]
	test	al, al
	jne	.label_2431
	mov	rbx, qword ptr [r14]
	mov	rax, rbx
	shr	rax, 0x3e
	jne	.label_2433
	mov	rax, qword ptr [rsp]
	mov	rdi, qword ptr [rax]
	test	rdi, rdi
	je	.label_2416
	nop	word ptr cs:[rax + rax]
.label_2443:
	mov	rbp, qword ptr [rdi + 0x518]
	call	free
	test	rbp, rbp
	mov	rdi, rbp
	jne	.label_2443
	jmp	.label_2416
.label_2431:
	mov	rax, qword ptr [rsp]
	mov	rdi, qword ptr [rax]
	test	rdi, rdi
	je	.label_2417
	nop	word ptr cs:[rax + rax]
.label_2425:
	mov	rbx, qword ptr [rdi + 0x518]
	call	free
	test	rbx, rbx
	mov	rdi, rbx
	jne	.label_2425
.label_2417:
	mov	qword ptr [r14 + 0x30], 0
	mov	rdi, qword ptr [r14 + 0x28]
	call	free
	mov	rdi, r14
	call	free
.label_2432:
	xor	eax, eax
.label_2419:
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_2420:
	mov	qword ptr [r14 + 0x40], 0
	mov	rax, qword ptr [r14 + 0x30]
	mov	qword ptr [r14 + 0x38], rax
	mov	rax, qword ptr [rip + head]
	test	rax, rax
	je	.label_2435
	nop	word ptr [rax + rax]
.label_2442:
	mov	rcx, rax
	mov	rax, qword ptr [rcx + 0x40]
	test	rax, rax
	jne	.label_2442
	mov	qword ptr [rcx + 0x40], r14
	mov	al, 1
	jmp	.label_2419
.label_2435:
	mov	qword ptr [rip + head],  r14
	mov	al, 1
	jmp	.label_2419
.label_2433:
	call	xalloc_die
.label_2441:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_523
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, rcx
	call	error
	call	cleanup_fatal
	.section	.text
	.align	16
	#Procedure 0x417e52
	.globl sub_417e52
	.type sub_417e52, @function
sub_417e52:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x417e60
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
	#Procedure 0x417e79
	.globl sub_417e79
	.type sub_417e79, @function
sub_417e79:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x417e80
	.globl quotearg_n_mem
	.type quotearg_n_mem, @function
quotearg_n_mem:

	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	.section	.text
	.align	16
	#Procedure 0x417e8a
	.globl sub_417e8a
	.type sub_417e8a, @function
sub_417e8a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x417e90

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
	jmp	.label_2509
	.section	.text
	.align	16
	#Procedure 0x417f3f
	.globl sub_417f3f
	.type sub_417f3f, @function
sub_417f3f:

	nop	
.label_2548:
	cmp	r8d, 2
	setne	al
	cmp	byte ptr [rsp + 0xf], 0
	setne	dl
	mov	rsi, qword ptr [rsp + 0xa8]
	test	sil, 1
	mov	bl, byte ptr [rsp + 0x34]
	mov	rsi, qword ptr [rsp + 0xc0]
	je	.label_2542
	or	al, dl
	jne	.label_2542
	test	dil, 1
	jne	.label_2546
	cmp	qword ptr [rsp + 0x68], 0
	je	.label_2542
	test	rbp, rbp
	mov	r15d, r8d
	mov	al, bl
	mov	qword ptr [rsp + 0x48], rcx
	mov	r12d, esi
	mov	r13, qword ptr [rsp + 0x68]
	je	.label_2509
	jmp	.label_2542
.label_2657:
	mov	r8d, 5
	test	r12b, 1
	jne	.label_2553
	test	rbp, rbp
	je	.label_2464
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax], 0x22
.label_2464:
	mov	r14d, 1
	jmp	.label_2558
.label_2658:
	mov	r13b, 1
	mov	r8d, 5
	xor	r14d, r14d
	mov	eax, OFFSET FLAT:label_410
	mov	qword ptr [rsp + 0x58], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0x50], rax
	mov	sil, 1
	jmp	.label_2500
.label_2553:
	xor	r14d, r14d
.label_2558:
	mov	eax, OFFSET FLAT:label_410
	mov	qword ptr [rsp + 0x58], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0x50], rax
	mov	r13b, 1
	jmp	.label_2565
	.section	.text
	.align	16
	#Procedure 0x41800f
	.globl sub_41800f
	.type sub_41800f, @function
sub_41800f:

	nop	
.label_2509:
	mov	rbp, r13
	xor	r14d, r14d
	mov	ecx, r15d
	cmp	r15d, 0xa
	ja	.label_2449
	mov	r8d, 7
	mov	r13b, 1
	xor	esi, esi
	mov	r10, qword ptr [rsp + 0x28]
	mov	r11, qword ptr [rsp + 0x48]
	jmp	qword ptr [(rcx * 8) + label_2504]
.label_2659:
	mov	r14d, edi
	mov	edi, OFFSET FLAT:label_2468
	mov	esi, r15d
	mov	ebx, r9d
	call	gettext_quote
	mov	qword ptr [rsp + 0x80], rax
	mov	edi, OFFSET FLAT:label_411
	mov	esi, r15d
	call	gettext_quote
	mov	r9d, ebx
	mov	edi, r14d
	mov	qword ptr [rsp + 0x78], rax
.label_2660:
	mov	byte ptr [rsp + 0x1e], dil
	mov	dword ptr [rsp + 0x60], r9d
	test	r12b, 1
	mov	r14d, 0
	mov	rcx, qword ptr [rsp + 0x80]
	jne	.label_2482
	mov	al, byte ptr [rcx]
	test	al, al
	mov	r14d, 0
	je	.label_2482
	xor	r14d, r14d
	nop	
.label_2494:
	cmp	r14, rbp
	jae	.label_2489
	mov	rdx, qword ptr [rsp + 0x10]
	mov	byte ptr [rdx + r14], al
.label_2489:
	movzx	eax, byte ptr [rcx + r14 + 1]
	inc	r14
	test	al, al
	jne	.label_2494
.label_2482:
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
	jmp	.label_2500
.label_2652:
	xor	r8d, r8d
	xor	r14d, r14d
	mov	r13d, eax
	xor	esi, esi
	jmp	.label_2500
.label_2655:
	mov	al, 1
.label_2653:
	mov	r12b, 1
.label_2656:
	test	r12b, 1
	mov	cl, 1
	je	.label_2516
	mov	ecx, eax
.label_2516:
	mov	al, cl
.label_2654:
	mov	r8d, 2
	test	r12b, 1
	jne	.label_2518
	test	rbp, rbp
	je	.label_2524
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx], 0x27
.label_2524:
	mov	r14d, 1
	jmp	.label_2526
.label_2518:
	xor	r14d, r14d
.label_2526:
	mov	ecx, OFFSET FLAT:label_411
	mov	qword ptr [rsp + 0x58], rcx
	mov	ecx, 1
	mov	qword ptr [rsp + 0x50], rcx
	mov	r13d, eax
.label_2565:
	mov	sil, r12b
.label_2500:
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
	jmp	.label_2534
	.section	.text
	.align	16
	#Procedure 0x4181d1
	.globl sub_4181d1
	.type sub_4181d1, @function
sub_4181d1:

	nop	word ptr cs:[rax + rax]
.label_2536:
	inc	r12
.label_2534:
	cmp	r11, -1
	je	.label_2560
	cmp	r12, r11
	jne	.label_2561
	jmp	.label_2564
	.section	.text
	.align	16
	#Procedure 0x4181f3
	.globl sub_4181f3
	.type sub_4181f3, @function
sub_4181f3:

	nop	word ptr cs:[rax + rax]
.label_2560:
	mov	rcx, -1
	cmp	byte ptr [r10 + r12], 0
	je	.label_2444
.label_2561:
	cmp	byte ptr [rsp + 0x37], 0
	je	.label_2450
	mov	rax, qword ptr [rsp + 0x50]
	lea	rbx, [r12 + rax]
	cmp	rax, 2
	jb	.label_2461
	cmp	r11, -1
	jne	.label_2461
	mov	r15d, edi
	mov	rdi, r10
	mov	r13d, r9d
	call	strlen
	mov	r9d, r13d
	mov	r8, qword ptr [rsp + 0x38]
	mov	edi, r15d
	mov	r10, qword ptr [rsp + 0x28]
	mov	r11, rax
.label_2461:
	cmp	rbx, r11
	jbe	.label_2475
.label_2450:
	xor	esi, esi
.label_2466:
	movzx	r15d, byte ptr [r10 + r12]
	cmp	r15, 0x7e
	ja	.label_2476
	xor	edx, edx
	mov	r13b, 1
	mov	cl, 0x6e
	mov	bl, 0x61
	xor	eax, eax
	jmp	qword ptr [(r15 * 8) + label_2479]
.label_2832:
	test	r12, r12
	jne	.label_2474
	jmp	.label_2457
	.section	.text
	.align	16
	#Procedure 0x418286
	.globl sub_418286
	.type sub_418286, @function
sub_418286:

	nop	word ptr cs:[rax + rax]
.label_2475:
	mov	r13d, r9d
	mov	r15d, edi
	mov	rbx, r11
	lea	rdi, [r10 + r12]
	mov	rsi, qword ptr [rsp + 0x58]
	mov	rdx, qword ptr [rsp + 0x50]
	call	memcmp
	test	eax, eax
	sete	sil
	jne	.label_2493
	cmp	byte ptr [rsp + 0xf], 0
	mov	r10, qword ptr [rsp + 0x28]
	mov	r11, rbx
	mov	edi, r15d
	mov	r8, qword ptr [rsp + 0x38]
	mov	r9d, r13d
	je	.label_2466
	jmp	.label_2465
.label_2493:
	mov	r10, qword ptr [rsp + 0x28]
	mov	r11, rbx
	mov	edi, r15d
	mov	r8, qword ptr [rsp + 0x38]
	mov	r9d, r13d
	jmp	.label_2466
.label_2836:
	xor	eax, eax
	cmp	r11, -1
	je	.label_2512
	test	r12, r12
	jne	.label_2515
	cmp	r11, 1
	je	.label_2457
	xor	r13d, r13d
	jmp	.label_2467
.label_2825:
	cmp	byte ptr [rsp + 0x1f], 0
	je	.label_2520
	cmp	byte ptr [rsp + 0xf], 0
	jne	.label_2465
	cmp	r8d, 2
	jne	.label_2503
	mov	eax, r9d
	and	al, 1
	jne	.label_2503
	cmp	r14, rbp
	jae	.label_2530
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x27
.label_2530:
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	jae	.label_2532
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx + rax], 0x24
.label_2532:
	lea	rax, [r14 + 2]
	cmp	rax, rbp
	jae	.label_2537
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx + rax], 0x27
.label_2537:
	add	r14, 3
	mov	r9b, 1
.label_2503:
	mov	rcx, r14
	cmp	rcx, rbp
	jae	.label_2543
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + rcx], 0x5c
.label_2543:
	lea	r14, [rcx + 1]
	mov	al, 1
	mov	r15b, 0x30
	cmp	r8d, 2
	je	.label_2545
	lea	rdx, [r12 + 1]
	cmp	rdx, r11
	jae	.label_2545
	mov	dl, byte ptr [r10 + rdx]
	add	dl, 0xd0
	cmp	dl, 9
	ja	.label_2545
	cmp	r14, rbp
	jae	.label_2510
	mov	rdx, qword ptr [rsp + 0x10]
	mov	byte ptr [rdx + r14], 0x30
.label_2510:
	lea	rdx, [rcx + 2]
	cmp	rdx, rbp
	jae	.label_2491
	mov	ebx, esi
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + rdx], 0x30
	mov	esi, ebx
.label_2491:
	add	rcx, 3
	xor	r13d, r13d
	mov	r14, rcx
	jmp	.label_2467
.label_2826:
	mov	bl, 0x62
	jmp	.label_2547
.label_2827:
	mov	cl, 0x74
	jmp	.label_2445
.label_2828:
	mov	bl, 0x76
	jmp	.label_2547
.label_2829:
	mov	bl, 0x66
	jmp	.label_2547
.label_2830:
	mov	cl, 0x72
	jmp	.label_2445
.label_2833:
	mov	r15b, 0x27
	mov	al, 1
	mov	qword ptr [rsp + 0xa8], rax
	cmp	r8d, 2
	jne	.label_2447
	cmp	byte ptr [rsp + 0xf], 0
	jne	.label_2456
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
	jae	.label_2459
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x27
.label_2459:
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	jae	.label_2477
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx + rax], 0x5c
.label_2477:
	lea	rax, [r14 + 2]
	cmp	rax, rbp
	jae	.label_2481
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx + rax], 0x27
.label_2481:
	add	r14, 3
	xor	r9d, r9d
.label_2447:
	xor	eax, eax
	mov	r13b, 1
	jmp	.label_2467
.label_2834:
	mov	r15b, 0x3f
	cmp	r8d, 5
	je	.label_2486
	cmp	r8d, 2
	jne	.label_2474
	cmp	byte ptr [rsp + 0xf], 0
	je	.label_2474
	jmp	.label_2456
.label_2835:
	cmp	r8d, 2
	jne	.label_2497
	cmp	byte ptr [rsp + 0xf], 0
	jne	.label_2456
	mov	r15b, 0x5c
	xor	eax, eax
	jmp	.label_2502
.label_2476:
	cmp	qword ptr [rsp + 0xb8], 1
	mov	qword ptr [rsp + 0xa0], rbp
	mov	byte ptr [rsp + 0x1e], dil
	mov	dword ptr [rsp + 0x60], r9d
	mov	dword ptr [rsp + 0x94], esi
	jne	.label_2507
	mov	qword ptr [rsp + 0x48], r11
	call	__ctype_b_loc
	mov	r10, qword ptr [rsp + 0x28]
	mov	rax, qword ptr [rax]
	movzx	r13d, word ptr [rax + r15*2]
	shr	r13d, 0xe
	and	r13b, 1
	mov	ebx, 1
	jmp	.label_2517
.label_2512:
	test	r12, r12
	jne	.label_2527
	mov	cl, byte ptr [r10 + 1]
	test	cl, cl
	jne	.label_2527
.label_2457:
	mov	dl, 1
.label_2831:
	cmp	byte ptr [rsp + 0x27], 0
	je	.label_2456
	xor	eax, eax
	mov	r13b, dl
.label_2467:
	cmp	byte ptr [rsp + 0x36], 0
	je	.label_2535
	cmp	qword ptr [rsp + 0x100], 0
	jne	.label_2538
	jmp	.label_2540
	.section	.text
	.align	16
	#Procedure 0x418564
	.globl sub_418564
	.type sub_418564, @function
sub_418564:

	nop	word ptr cs:[rax + rax]
.label_2535:
	cmp	byte ptr [rsp + 0x35], 0
	je	.label_2540
.label_2538:
	mov	ecx, r15d
	shr	cl, 5
	movzx	edx, cl
	mov	ebx, esi
	mov	esi, 1
	mov	ecx, r15d
	shl	esi, cl
	test	bl, bl
	jne	.label_2501
	mov	rcx, qword ptr [rsp + 0x100]
	and	esi, dword ptr [rcx + rdx*4]
	jmp	.label_2550
	.section	.text
	.align	16
	#Procedure 0x41859d
	.globl sub_41859d
	.type sub_41859d, @function
sub_41859d:

	nop	dword ptr [rax]
.label_2540:
	test	sil, sil
.label_2550:
	mov	ebx, r15d
	je	.label_2485
	jmp	.label_2555
.label_2501:
	mov	ebx, r15d
	jmp	.label_2555
.label_2520:
	cmp	dword ptr [rsp + 0x9c], 0
	jne	.label_2536
	xor	r15d, r15d
	jmp	.label_2474
.label_2497:
	mov	cl, 0x5c
	cmp	byte ptr [rsp + 0x32], 0
	je	.label_2445
	xor	eax, eax
	mov	r15b, 0x5c
.label_2502:
	xor	r13d, r13d
	jmp	.label_2485
.label_2445:
	cmp	byte ptr [rsp + 0x27], 0
	mov	ebx, ecx
	je	.label_2456
.label_2547:
	xor	eax, eax
	cmp	byte ptr [rsp + 0x1f], 0
	mov	r13d, 0
	je	.label_2467
	nop	
.label_2555:
	cmp	byte ptr [rsp + 0xf], 0
	jne	.label_2465
	cmp	r8d, 2
	jne	.label_2448
	mov	eax, r9d
	and	al, 1
	jne	.label_2448
	cmp	r14, rbp
	jae	.label_2454
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x27
.label_2454:
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	jae	.label_2460
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx + rax], 0x24
.label_2460:
	lea	rax, [r14 + 2]
	cmp	rax, rbp
	jae	.label_2568
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx + rax], 0x27
.label_2568:
	add	r14, 3
	mov	r9b, 1
.label_2448:
	cmp	r14, rbp
	jae	.label_2563
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x5c
.label_2563:
	inc	r14
	jmp	.label_2472
.label_2507:
	mov	qword ptr [rsp + 0x70], 0
	cmp	r11, -1
	jne	.label_2480
	mov	rdi, r10
	call	strlen
	mov	r10, qword ptr [rsp + 0x28]
	mov	r11, rax
.label_2480:
	cmp	byte ptr [rsp + 0x31], 0
	mov	qword ptr [rsp + 0x48], r11
	mov	qword ptr [rsp + 0x88], r12
	je	.label_2484
	lea	rax, [r10 + r12]
	mov	qword ptr [rsp + 0xb0], rax
	mov	r13b, 1
	xor	r12d, r12d
	lea	rbp, [rsp + 0x70]
.label_2552:
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
	je	.label_2498
	cmp	rbx, -1
	mov	r10, qword ptr [rsp + 0x28]
	movabs	rsi, 0x20000002b
	je	.label_2513
	test	rbx, rbx
	mov	r11, qword ptr [rsp + 0x48]
	je	.label_2528
	cmp	rbx, 2
	mov	rbp, qword ptr [rsp + 0xa0]
	jb	.label_2522
	mov	rax, qword ptr [rsp + 0x40]
	mov	rcx, qword ptr [rsp + 0xb0]
	lea	rax, [rcx + rax]
	mov	ecx, 1
	nop	dword ptr [rax]
.label_2490:
	movsx	edx, byte ptr [rax + rcx]
	add	edx, -0x5b
	cmp	edx, 0x21
	ja	.label_2525
	bt	rsi, rdx
	jb	.label_2456
.label_2525:
	inc	rcx
	cmp	rcx, rbx
	jb	.label_2490
.label_2522:
	mov	edi, dword ptr [rsp + 0x64]
	call	iswprint
	test	eax, eax
	jne	.label_2541
	xor	r13d, r13d
.label_2541:
	lea	rbp, [rsp + 0x70]
	mov	r12, qword ptr [rsp + 0x40]
	add	r12, rbx
	mov	rdi, rbp
	call	mbsinit
	test	eax, eax
	mov	r10, qword ptr [rsp + 0x28]
	mov	r11, qword ptr [rsp + 0x48]
	je	.label_2552
	jmp	.label_2544
.label_2545:
	xor	r13d, r13d
	jmp	.label_2467
.label_2527:
	mov	r11, -1
	xor	r13d, r13d
	jmp	.label_2467
.label_2486:
	cmp	dword ptr [rsp + 0x98], 0
	je	.label_2474
	lea	rcx, [r12 + 2]
	cmp	rcx, r11
	jae	.label_2474
	cmp	byte ptr [r10 + r12 + 1], 0x3f
	jne	.label_2474
	movsx	edx, byte ptr [r10 + rcx]
	xor	eax, eax
	cmp	edx, 0x3e
	ja	.label_2559
	mov	ebx, esi
	movabs	rsi, 0x7000a38200000000
	bt	rsi, rdx
	jae	.label_2551
	cmp	byte ptr [rsp + 0xf], 0
	jne	.label_2567
	cmp	r14, rbp
	jae	.label_2458
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x3f
.label_2458:
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	jae	.label_2483
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + rax], 0x22
.label_2483:
	lea	rax, [r14 + 2]
	cmp	rax, rbp
	jae	.label_2508
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + rax], 0x22
.label_2508:
	lea	rax, [r14 + 3]
	cmp	rax, rbp
	jae	.label_2514
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + rax], 0x3f
.label_2514:
	add	r14, 4
	xor	eax, eax
	mov	r12, rcx
	mov	r15b, dl
.label_2551:
	xor	r13d, r13d
	mov	esi, ebx
	jmp	.label_2467
.label_2474:
	xor	eax, eax
.label_2515:
	xor	r13d, r13d
	jmp	.label_2467
.label_2484:
	mov	r13b, 1
	xor	r12d, r12d
	lea	rbx, [rsp + 0x70]
	nop	word ptr cs:[rax + rax]
.label_2511:
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
	je	.label_2451
	cmp	rbp, -1
	je	.label_2496
	cmp	rbp, -2
	je	.label_2498
	mov	edi, dword ptr [rsp + 0x64]
	call	iswprint
	test	eax, eax
	mov	r12, qword ptr [rsp + 0x40]
	jne	.label_2452
	xor	r13d, r13d
.label_2452:
	add	r12, rbp
	lea	rbx, [rsp + 0x70]
	mov	rdi, rbx
	call	mbsinit
	test	eax, eax
	mov	r10, qword ptr [rsp + 0x28]
	mov	r11, qword ptr [rsp + 0x48]
	je	.label_2511
	jmp	.label_2544
.label_2498:
	mov	r10, qword ptr [rsp + 0x28]
	mov	rsi, qword ptr [rsp + 0x40]
	lea	rax, [rsi + r12]
	mov	rdx, qword ptr [rsp + 0x48]
	cmp	rax, rdx
	jae	.label_2521
	lea	rax, [r10 + r12]
.label_2531:
	cmp	byte ptr [rax + rsi], 0
	je	.label_2521
	lea	rcx, [r12 + rsi + 1]
	inc	rsi
	cmp	rcx, rdx
	jb	.label_2531
.label_2521:
	mov	qword ptr [rsp + 0x40], rsi
.label_2513:
	xor	r13d, r13d
	jmp	.label_2528
.label_2496:
	xor	r13d, r13d
.label_2451:
	mov	r10, qword ptr [rsp + 0x28]
.label_2528:
	mov	r12, qword ptr [rsp + 0x40]
.label_2544:
	mov	rbx, r12
	mov	r12, qword ptr [rsp + 0x88]
.label_2517:
	and	r13b, 1
	mov	eax, r13d
	or	al, byte ptr [rsp + 0x33]
	cmp	rbx, 1
	mov	rbp, qword ptr [rsp + 0xa0]
	mov	dil, byte ptr [rsp + 0x1e]
	mov	r8, qword ptr [rsp + 0x38]
	mov	r9d, dword ptr [rsp + 0x60]
	mov	esi, dword ptr [rsp + 0x94]
	ja	.label_2471
	test	al, al
	je	.label_2471
	xor	eax, eax
	mov	r11, qword ptr [rsp + 0x48]
	jmp	.label_2467
.label_2471:
	mov	byte ptr [rsp + 0x40], al
	add	rbx, r12
	xor	eax, eax
	mov	r11, qword ptr [rsp + 0x48]
	jmp	.label_2549
	.section	.text
	.align	16
	#Procedure 0x418997
	.globl sub_418997
	.type sub_418997, @function
sub_418997:

	nop	word ptr [rax + rax]
.label_2506:
	inc	r14
	mov	r15b, byte ptr [r10 + r12 + 1]
	mov	r12, rdx
.label_2549:
	cmp	byte ptr [rsp + 0x40], 0
	je	.label_2554
	test	sil, 1
	je	.label_2462
	cmp	r14, rbp
	jae	.label_2557
	mov	rdx, qword ptr [rsp + 0x10]
	mov	byte ptr [rdx + r14], 0x5c
.label_2557:
	inc	r14
	xor	esi, esi
	jmp	.label_2462
	.section	.text
	.align	16
	#Procedure 0x4189d5
	.globl sub_4189d5
	.type sub_4189d5, @function
sub_4189d5:

	nop	word ptr cs:[rax + rax]
.label_2554:
	cmp	byte ptr [rsp + 0xf], 0
	jne	.label_2465
	cmp	r8d, 2
	jne	.label_2562
	mov	eax, r9d
	and	al, 1
	jne	.label_2562
	cmp	r14, rbp
	jae	.label_2566
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x27
.label_2566:
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	jae	.label_2539
	mov	rdx, qword ptr [rsp + 0x10]
	mov	byte ptr [rdx + rax], 0x24
.label_2539:
	lea	rax, [r14 + 2]
	cmp	rax, rbp
	jae	.label_2453
	mov	rdx, qword ptr [rsp + 0x10]
	mov	byte ptr [rdx + rax], 0x27
.label_2453:
	add	r14, 3
	mov	r9b, 1
.label_2562:
	cmp	r14, rbp
	jae	.label_2463
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x5c
.label_2463:
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	jae	.label_2470
	mov	edx, r15d
	shr	dl, 6
	or	dl, 0x30
	mov	ecx, esi
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + rax], dl
	mov	esi, ecx
.label_2470:
	lea	rax, [r14 + 2]
	cmp	rax, rbp
	jae	.label_2478
	mov	edx, r15d
	shr	dl, 3
	and	dl, 7
	or	dl, 0x30
	mov	ecx, esi
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + rax], dl
	mov	esi, ecx
.label_2478:
	add	r14, 3
	and	r15b, 7
	or	r15b, 0x30
	mov	al, 1
.label_2462:
	lea	rdx, [r12 + 1]
	cmp	rbx, rdx
	jbe	.label_2485
	test	r9b, 1
	je	.label_2487
	mov	rcx, rbx
	mov	ebx, eax
	and	bl, 1
	jne	.label_2556
	mov	r8, r12
	mov	r12d, esi
	cmp	r14, rbp
	jae	.label_2492
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + r14], 0x27
.label_2492:
	lea	rsi, [r14 + 1]
	cmp	rsi, rbp
	jae	.label_2499
	mov	rbx, qword ptr [rsp + 0x10]
	mov	byte ptr [rbx + rsi], 0x27
.label_2499:
	add	r14, 2
	xor	r9d, r9d
	mov	esi, r12d
	mov	rbx, rcx
	mov	r12, r8
	mov	r8, qword ptr [rsp + 0x38]
	jmp	.label_2487
	.section	.text
	.align	16
	#Procedure 0x418ae6
	.globl sub_418ae6
	.type sub_418ae6, @function
sub_418ae6:

	nop	word ptr cs:[rax + rax]
.label_2556:
	mov	rbx, rcx
.label_2487:
	cmp	r14, rbp
	jae	.label_2506
	mov	ecx, esi
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + r14], r15b
	mov	esi, ecx
	jmp	.label_2506
	.section	.text
	.align	16
	#Procedure 0x418b0e
	.globl sub_418b0e
	.type sub_418b0e, @function
sub_418b0e:

	nop	
.label_2485:
	test	r9b, 1
	je	.label_2519
	and	al, 1
	jne	.label_2519
	cmp	r14, rbp
	jae	.label_2523
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x27
.label_2523:
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	jae	.label_2529
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx + rax], 0x27
.label_2529:
	add	r14, 2
	xor	r9d, r9d
.label_2519:
	mov	ebx, r15d
.label_2472:
	cmp	r14, rbp
	jae	.label_2533
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], bl
.label_2533:
	inc	r14
	shl	r13b, 7
	sar	r13b, 7
	and	r13b, dil
	mov	edi, r13d
	jmp	.label_2536
.label_2559:
	xor	r13d, r13d
	jmp	.label_2467
	.section	.text
	.align	16
	#Procedure 0x418b71
	.globl sub_418b71
	.type sub_418b71, @function
sub_418b71:

	nop	word ptr cs:[rax + rax]
.label_2564:
	mov	rcx, r12
.label_2444:
	cmp	r8d, 2
	setne	al
	test	r14, r14
	setne	dl
	cmp	byte ptr [rsp + 0xf], 0
	je	.label_2548
	or	al, dl
	jne	.label_2548
	mov	r11, rcx
	jmp	.label_2465
.label_2456:
	mov	eax, 2
.label_2495:
	mov	qword ptr [rsp + 0x38], rax
.label_2465:
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
.label_2505:
	mov	r14, rax
.label_2488:
	mov	rax, r14
	add	rsp, 0xc8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_2542:
	mov	rdx, qword ptr [rsp + 0x58]
	test	rdx, rdx
	je	.label_2455
	cmp	byte ptr [rsp + 0xf], 0
	mov	rcx, qword ptr [rsp + 0x10]
	jne	.label_2446
	mov	al, byte ptr [rdx]
	test	al, al
	je	.label_2446
	inc	rdx
	nop	dword ptr [rax + rax]
.label_2473:
	cmp	r14, rbp
	jae	.label_2469
	mov	byte ptr [rcx + r14], al
.label_2469:
	inc	r14
	movzx	eax, byte ptr [rdx]
	inc	rdx
	test	al, al
	jne	.label_2473
	jmp	.label_2446
.label_2546:
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
	jmp	.label_2505
.label_2455:
	mov	rcx, qword ptr [rsp + 0x10]
.label_2446:
	cmp	r14, rbp
	jae	.label_2488
	mov	byte ptr [rcx + r14], 0
	jmp	.label_2488
.label_2567:
	mov	eax, 5
	jmp	.label_2495
.label_2449:
	call	abort
.label_2573:
	call	__errno_location
	mov	rbp, rax
	mov	r14d, dword ptr [rbp]
	mov	rdi, rbx
	call	rpl_fclose
	mov	dword ptr [rbp], r14d
.label_2570:
	xor	eax, eax
.label_2572:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x418cdf
	.globl sub_418cdf
	.type sub_418cdf, @function
sub_418cdf:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x418ce9

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
	je	.label_2572
	mov	rdi, rbx
	call	fileno
	cmp	eax, 2
	ja	.label_2571
	mov	edi, eax
	call	dup_safer
	mov	ebp, eax
	test	ebp, ebp
	js	.label_2573
	mov	rdi, rbx
	call	rpl_fclose
	test	eax, eax
	jne	.label_2569
	mov	edi, ebp
	mov	rsi, r14
	call	fdopen
	test	rax, rax
	jne	.label_2572
.label_2569:
	call	__errno_location
	mov	rbx, rax
	mov	r14d, dword ptr [rbx]
	mov	edi, ebp
	call	close
	mov	dword ptr [rbx], r14d
	jmp	.label_2570
.label_2571:
	mov	rax, rbx
	jmp	.label_2572
.label_2574:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x418d55
	.globl sub_418d55
	.type sub_418d55, @function
sub_418d55:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x418d5f
	.globl xcalloc
	.type xcalloc, @function
xcalloc:

	push	rax
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	jb	.label_2574
	call	rpl_calloc
	test	rax, rax
	je	.label_2574
	pop	rcx
	ret	
	.section	.text
	.align	16
	#Procedure 0x418d80
	.globl emit_bug_reporting_address
	.type emit_bug_reporting_address, @function
emit_bug_reporting_address:

	push	rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_2575
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_2576
	xor	eax, eax
	mov	rsi, rcx
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_2578
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_647
	mov	ecx, OFFSET FLAT:label_2219
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_2577
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	pop	rax
	jmp	fputs_unlocked
	.section	.text
	.align	16
	#Procedure 0x418df4
	.globl sub_418df4
	.type sub_418df4, @function
sub_418df4:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x418e00

	.globl build_wcs_upper_buffer
	.type build_wcs_upper_buffer, @function
build_wcs_upper_buffer:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x78
	mov	r13, rdi
	mov	r15, qword ptr [r13 + 0x30]
	mov	rdx, qword ptr [r13 + 0x40]
	mov	rax, qword ptr [r13 + 0x58]
	cmp	rdx, rax
	cmovg	rdx, rax
	cmp	byte ptr [r13 + 0x8a], 0
	jne	.label_2579
	cmp	qword ptr [r13 + 0x78], 0
	jne	.label_2579
	cmp	byte ptr [r13 + 0x8c], 0
	je	.label_2595
.label_2579:
	mov	r12, qword ptr [r13 + 0x38]
	jmp	.label_2618
.label_2595:
	cmp	rdx, r15
	jle	.label_2603
	lea	rax, [r13 + 0x78]
	mov	qword ptr [rsp + 0x20], rax
	lea	rax, [r13 + 0x20]
	mov	qword ptr [rsp + 8], rax
	jmp	.label_2607
.label_2602:
	lea	rax, [rbp + 1]
	cmp	rax, 2
	jb	.label_2611
	cmp	rbp, -2
	jne	.label_2617
	mov	rax, qword ptr [r13 + 0x40]
	cmp	rax, qword ptr [r13 + 0x58]
	jl	.label_2617
.label_2611:
	mov	rax, qword ptr [r13 + 0x28]
	add	rax, r15
	mov	rcx, qword ptr [r13]
	mov	rdx, qword ptr [r13 + 8]
	movzx	eax, byte ptr [rcx + rax]
	mov	byte ptr [rdx + r15], al
	mov	rcx, qword ptr [r13 + 0x10]
	mov	dword ptr [rcx + r15*4], eax
	inc	r15
	cmp	rbp, -1
	jne	.label_2587
	mov	rax, qword ptr [rsp + 0x10]
	mov	rcx, qword ptr [rsp + 8]
	mov	qword ptr [rcx], rax
	jmp	.label_2587
	.section	.text
	.align	16
	#Procedure 0x418ebe
	.globl sub_418ebe
	.type sub_418ebe, @function
sub_418ebe:

	nop	
.label_2607:
	mov	r14, rdx
	mov	rbp, qword ptr [r13]
	mov	rbx, qword ptr [r13 + 0x28]
	lea	rax, [rbx + r15]
	movzx	r12d, byte ptr [rbp + rax]
	test	r12b, r12b
	js	.label_2610
	mov	rdi, qword ptr [rsp + 8]
	call	mbsinit
	test	eax, eax
	je	.label_2610
	call	__ctype_toupper_loc
	mov	rax, qword ptr [rax]
	movzx	eax, byte ptr [rax + r12*4]
	mov	rcx, qword ptr [r13 + 8]
	mov	byte ptr [rcx + r15], al
	mov	rax, qword ptr [r13 + 8]
	mov	rcx, qword ptr [r13 + 0x10]
	movzx	eax, byte ptr [rax + r15]
	mov	dword ptr [rcx + r15*4], eax
	inc	r15
.label_2587:
	mov	rax, r15
	jmp	.label_2584
	.section	.text
	.align	16
	#Procedure 0x418f19
	.globl sub_418f19
	.type sub_418f19, @function
sub_418f19:

	nop	dword ptr [rax]
.label_2610:
	mov	rdx, r14
	sub	rdx, r15
	mov	rcx, qword ptr [rsp + 8]
	mov	rax, qword ptr [rcx]
	mov	qword ptr [rsp + 0x10], rax
	add	rbp, rbx
	add	rbp, r15
	lea	rdi, [rsp + 4]
	mov	rsi, rbp
	call	rpl_mbrtowc
	mov	rbp, rax
	lea	rax, [rbp - 1]
	cmp	rax, -4
	ja	.label_2602
	mov	edi, dword ptr [rsp + 4]
	call	towupper
	mov	r12d, eax
	cmp	r12d, dword ptr [rsp + 4]
	lea	rbx, [rsp + 0x30]
	jne	.label_2612
	mov	rdi, qword ptr [r13 + 8]
	add	rdi, r15
	mov	rsi, qword ptr [r13]
	add	rsi, qword ptr [r13 + 0x28]
	add	rsi, r15
	jmp	.label_2615
	.section	.text
	.align	16
	#Procedure 0x418f83
	.globl sub_418f83
	.type sub_418f83, @function
sub_418f83:

	nop	word ptr cs:[rax + rax]
.label_2612:
	mov	rdi, rbx
	mov	esi, r12d
	lea	rdx, [rsp + 0x10]
	call	wcrtomb
	cmp	rbp, rax
	jne	.label_2622
	mov	rdi, qword ptr [r13 + 8]
	add	rdi, r15
	mov	rsi, rbx
.label_2615:
	mov	rdx, rbp
	call	memcpy
	mov	rcx, qword ptr [r13 + 0x10]
	mov	dword ptr [rcx + r15*4], r12d
	lea	rbx, [rbp + r15]
	lea	rax, [r15 + 1]
	cmp	rax, rbx
	jge	.label_2584
	lea	rdi, [rcx + r15*4 + 4]
	lea	rdx, [rbp*4 - 4]
	mov	esi, 0xff
	call	memset
	mov	rax, rbx
.label_2584:
	mov	rdx, r14
	cmp	rdx, rax
	mov	r15, rax
	jg	.label_2607
	jmp	.label_2630
.label_2622:
	mov	r12, r15
	mov	rdx, r14
	mov	rcx, qword ptr [rsp + 8]
	mov	rsi, qword ptr [rsp + 0x20]
	jmp	.label_2638
.label_2617:
	mov	rax, qword ptr [rsp + 0x10]
	mov	rcx, qword ptr [rsp + 8]
	mov	qword ptr [rcx], rax
.label_2603:
	mov	rax, r15
.label_2630:
	mov	qword ptr [r13 + 0x30], rax
	mov	qword ptr [r13 + 0x38], rax
	jmp	.label_2586
.label_2618:
	cmp	r15, rdx
	jge	.label_2591
	lea	rcx, [r13 + 0x20]
	lea	rsi, [r13 + 0x78]
.label_2638:
	mov	qword ptr [rsp + 0x18], rdx
	sub	rdx, r15
	mov	rax, qword ptr [rcx]
	mov	qword ptr [rsp + 0x10], rax
	mov	rax, qword ptr [rsi]
	test	rax, rax
	mov	qword ptr [rsp + 0x20], r12
	mov	qword ptr [rsp + 8], rcx
	jne	.label_2596
	mov	rbp, qword ptr [r13]
	add	rbp, qword ptr [r13 + 0x28]
	add	rbp, r12
.label_2628:
	lea	rdi, [rsp + 4]
	mov	rsi, rbp
	call	rpl_mbrtowc
	mov	r14, rax
	lea	r12, [r14 - 1]
	cmp	r12, -4
	ja	.label_2616
	mov	edi, dword ptr [rsp + 4]
	call	towupper
	mov	ebx, eax
	cmp	ebx, dword ptr [rsp + 4]
	je	.label_2619
	lea	rdi, [rsp + 0x30]
	lea	rdx, [rsp + 0x10]
	mov	esi, ebx
	call	wcrtomb
	mov	rcx, rax
	sub	rax, r14
	jne	.label_2623
	mov	rdi, qword ptr [r13 + 8]
	add	rdi, r15
	lea	rsi, [rsp + 0x30]
	jmp	.label_2625
.label_2596:
	lea	rbp, [rsp + 0x30]
	movsxd	r8, dword ptr [r13 + 0x90]
	test	r8, r8
	jle	.label_2628
	xor	esi, esi
.label_2589:
	cmp	rsi, rdx
	jge	.label_2628
	mov	rdi, qword ptr [r13]
	add	rdi, qword ptr [r13 + 0x28]
	add	rdi, r12
	movzx	edi, byte ptr [rsi + rdi]
	movzx	ebx, byte ptr [rax + rdi]
	mov	byte ptr [rsp + rsi + 0x30], bl
	inc	rsi
	cmp	rsi, r8
	jl	.label_2589
	jmp	.label_2628
.label_2616:
	lea	rax, [r14 + 1]
	cmp	rax, 2
	jb	.label_2639
	cmp	r14, -2
	jne	.label_2581
	mov	rax, qword ptr [r13 + 0x40]
	cmp	rax, qword ptr [r13 + 0x58]
	jl	.label_2581
.label_2639:
	mov	rax, qword ptr [r13 + 0x28]
	mov	r12, qword ptr [rsp + 0x20]
	add	rax, r12
	mov	rdx, qword ptr [r13]
	mov	rcx, qword ptr [r13 + 0x78]
	mov	al, byte ptr [rdx + rax]
	movzx	edx, al
	test	rcx, rcx
	jne	.label_2588
.label_2583:
	movzx	eax, al
	mov	rcx, qword ptr [r13 + 8]
	mov	byte ptr [rcx + r15], al
	cmp	byte ptr [r13 + 0x8c], 0
	jne	.label_2598
.label_2585:
	inc	r12
	mov	rcx, qword ptr [r13 + 0x10]
	mov	dword ptr [rcx + r15*4], eax
	inc	r15
	cmp	r14, -1
	jne	.label_2609
	mov	rax, qword ptr [rsp + 0x10]
	mov	rcx, qword ptr [rsp + 8]
	mov	qword ptr [rcx], rax
	jmp	.label_2609
.label_2623:
	cmp	rcx, -1
	je	.label_2619
	lea	rbp, [rcx + r15]
	mov	rdi, qword ptr [r13 + 0x40]
	cmp	rbp, rdi
	jbe	.label_2593
.label_2581:
	mov	rax, qword ptr [rsp + 0x10]
	mov	rcx, qword ptr [rsp + 8]
	mov	qword ptr [rcx], rax
	mov	r12, qword ptr [rsp + 0x20]
.label_2591:
	mov	qword ptr [r13 + 0x30], r15
	mov	qword ptr [r13 + 0x38], r12
.label_2586:
	xor	eax, eax
.label_2634:
	add	rsp, 0x78
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_2619:
	mov	rdi, qword ptr [r13 + 8]
	add	rdi, r15
	mov	rsi, rbp
.label_2625:
	mov	rdx, r14
	call	memcpy
	cmp	byte ptr [r13 + 0x8c], 0
	mov	r12, qword ptr [rsp + 0x20]
	jne	.label_2632
.label_2624:
	add	r12, r14
	mov	rax, qword ptr [r13 + 0x10]
	mov	dword ptr [rax + r15*4], ebx
	lea	rbp, [r14 + r15]
	inc	r15
	cmp	r15, rbp
	jge	.label_2609
	lea	rdi, [rax + r15*4]
	lea	rdx, [r14*4 - 4]
	mov	esi, 0xff
	call	memset
	jmp	.label_2614
.label_2609:
	mov	rbp, r15
.label_2614:
	mov	rdx, qword ptr [rsp + 0x18]
	mov	r15, rbp
	jmp	.label_2618
.label_2632:
	mov	rax, qword ptr [r13 + 0x18]
	xor	esi, esi
	cmp	r14, 4
	jb	.label_2594
	xor	esi, esi
	mov	rcx, r14
	and	rcx, 0xfffffffffffffffc
	je	.label_2594
	movq	xmm0, r12
	pshufd	xmm0, xmm0, 0x44
	lea	rdi, [rcx - 4]
	shr	rdi, 2
	lea	edx, [rdi + 1]
	and	edx, 1
	mov	esi, 1
	test	rdi, rdi
	je	.label_2600
	lea	rsi, [rdx - 1]
	sub	rsi, rdi
	mov	edi, 1
	movq	xmm1, rdi
	pslldq	xmm1, 8
	movdqa	xmm8, xmmword ptr [rip + label_1841]
	movdqa	xmm3, xmmword ptr [rip + label_1840]
	movdqa	xmm4, xmmword ptr [rip + label_1843]
	movdqa	xmm5, xmmword ptr [rip + label_1842]
.label_2627:
	movdqa	xmm6, xmm1
	paddq	xmm6, xmm8
	movdqa	xmm7, xmm1
	paddq	xmm7, xmm0
	movdqa	xmm2, xmm7
	paddq	xmm2, xmm3
	movq	rdi, xmm1
	add	rdi, r15
	movdqu	xmmword ptr [rax + rdi*8], xmm7
	movdqu	xmmword ptr [rax + rdi*8 + 0x10], xmm2
	paddq	xmm1, xmm4
	paddq	xmm7, xmm5
	movq	rdi, xmm6
	paddq	xmm6, xmm0
	add	rdi, r15
	movdqu	xmmword ptr [rax + rdi*8], xmm6
	movdqu	xmmword ptr [rax + rdi*8 + 0x10], xmm7
	add	rsi, 2
	jne	.label_2627
	jmp	.label_2636
.label_2593:
	mov	qword ptr [rsp + 0x18], rax
	mov	rax, qword ptr [r13 + 0x18]
	test	rax, rax
	mov	qword ptr [rsp + 0x28], rcx
	jne	.label_2637
	shl	rdi, 3
	call	malloc
	mov	rcx, qword ptr [rsp + 0x28]
	mov	qword ptr [r13 + 0x18], rax
	test	rax, rax
	je	.label_2626
.label_2637:
	cmp	byte ptr [r13 + 0x8c], 0
	jne	.label_2590
	test	r15, r15
	je	.label_2582
	xor	edx, edx
	cmp	r15, 4
	jb	.label_2580
	xor	edx, edx
	mov	r9, r15
	and	r9, 0xfffffffffffffffc
	je	.label_2580
	lea	rsi, [r9 - 4]
	mov	rdi, rsi
	shr	rdi, 2
	lea	edx, [rdi + 1]
	and	edx, 3
	mov	r8d, 1
	cmp	rsi, 0xc
	jae	.label_2608
	movq	xmm0, r8
	pslldq	xmm0, 8
	jmp	.label_2635
.label_2600:
	movq	xmm1, rsi
	pslldq	xmm1, 8
.label_2636:
	test	rdx, rdx
	je	.label_2621
	paddq	xmm0, xmm1
	movq	rdx, xmm1
	add	rdx, r15
	movdqu	xmmword ptr [rax + rdx*8], xmm0
	paddq	xmm0, xmmword ptr [rip + label_1840]
	movdqu	xmmword ptr [rax + rdx*8 + 0x10], xmm0
.label_2621:
	cmp	r14, rcx
	mov	rsi, rcx
	je	.label_2624
.label_2594:
	mov	rcx, r14
	sub	rcx, rsi
	lea	rdx, [rsi + r12]
	add	rsi, r15
	lea	rax, [rax + rsi*8]
.label_2631:
	mov	qword ptr [rax], rdx
	inc	rdx
	add	rax, 8
	dec	rcx
	jne	.label_2631
	jmp	.label_2624
.label_2626:
	mov	eax, 0xc
	jmp	.label_2634
.label_2608:
	lea	rsi, [rdx - 1]
	sub	rsi, rdi
	mov	edi, 1
	movq	xmm0, rdi
	pslldq	xmm0, 8
	movdqa	xmm8, xmmword ptr [rip + label_1840]
	movdqa	xmm9, xmmword ptr [rip + label_1841]
	movdqa	xmm10, xmmword ptr [rip + label_1842]
	movdqa	xmm11, xmmword ptr [rip + label_1843]
	movdqa	xmm5, xmmword ptr [rip + label_1844]
	movdqa	xmm6, xmmword ptr [rip + label_1845]
	movdqa	xmm7, xmmword ptr [rip + label_1846]
	movdqa	xmm1, xmmword ptr [rip + label_1847]
.label_2601:
	movdqa	xmm2, xmm0
	paddq	xmm2, xmm8
	movdqa	xmm3, xmm0
	paddq	xmm3, xmm9
	movq	rdi, xmm0
	movdqu	xmmword ptr [rax + rdi*8], xmm0
	movdqu	xmmword ptr [rax + rdi*8 + 0x10], xmm2
	movdqa	xmm2, xmm0
	paddq	xmm2, xmm10
	movdqa	xmm4, xmm0
	paddq	xmm4, xmm11
	movq	rdi, xmm3
	movdqu	xmmword ptr [rax + rdi*8], xmm3
	movdqu	xmmword ptr [rax + rdi*8 + 0x10], xmm2
	movdqa	xmm2, xmm0
	paddq	xmm2, xmm5
	movdqa	xmm3, xmm0
	paddq	xmm3, xmm6
	movq	rdi, xmm4
	movdqu	xmmword ptr [rax + rdi*8], xmm4
	movdqu	xmmword ptr [rax + rdi*8 + 0x10], xmm2
	movdqa	xmm2, xmm0
	paddq	xmm2, xmm7
	paddq	xmm0, xmm1
	movq	rdi, xmm3
	movdqu	xmmword ptr [rax + rdi*8], xmm3
	movdqu	xmmword ptr [rax + rdi*8 + 0x10], xmm2
	add	rsi, 4
	jne	.label_2601
.label_2635:
	test	rdx, rdx
	je	.label_2633
	neg	rdx
	movdqa	xmm1, xmmword ptr [rip + label_1840]
	movdqa	xmm2, xmmword ptr [rip + label_1841]
.label_2613:
	movdqa	xmm3, xmm0
	movq	rsi, xmm0
	movdqu	xmmword ptr [rax + rsi*8], xmm0
	paddq	xmm0, xmm1
	paddq	xmm3, xmm2
	movdqu	xmmword ptr [rax + rsi*8 + 0x10], xmm0
	inc	rdx
	movdqa	xmm0, xmm3
	jne	.label_2613
.label_2633:
	cmp	r15, r9
	mov	rdx, r9
	je	.label_2582
.label_2580:
	mov	qword ptr [rax + rdx*8], rdx
	inc	rdx
	cmp	r15, rdx
	jne	.label_2580
.label_2582:
	mov	byte ptr [r13 + 0x8c], 1
.label_2590:
	mov	rdi, qword ptr [r13 + 8]
	add	rdi, r15
	lea	rsi, [rsp + 0x30]
	mov	rdx, rcx
	call	memcpy
	mov	rdi, qword ptr [rsp + 0x28]
	mov	rcx, qword ptr [r13 + 0x10]
	mov	dword ptr [rcx + r15*4], ebx
	mov	rdx, qword ptr [r13 + 0x18]
	mov	rbx, qword ptr [rsp + 0x20]
	mov	qword ptr [rdx + r15*8], rbx
	cmp	rdi, 2
	jb	.label_2597
	lea	r10, [rdi - 1]
	mov	eax, 1
	cmp	r10, 4
	jb	.label_2599
	mov	rsi, r10
	and	rsi, 0xfffffffffffffffc
	mov	r8, r10
	and	r8, 0xfffffffffffffffc
	mov	eax, 1
	je	.label_2599
	mov	rax, rsi
	or	rax, 1
	movq	xmm0, r14
	pshufd	xmm6, xmm0, 0x44
	movq	xmm1, r12
	pshufd	xmm11, xmm1, 0x44
	mov	r9, rbx
	movq	xmm2, rbx
	pshufd	xmm12, xmm2, 0x44
	movdqa	xmm7, xmmword ptr [rip + label_2604]
	movdqa	xmm8, xmmword ptr [rip + label_1840]
	movdqa	xmm9, xmmword ptr [rip + label_1841]
	movdqa	xmm10, xmmword ptr [rip + label_2605]
	pxor	xmm6, xmm10
	pshufd	xmm13, xmmword ptr [rip + label_2606],  0xe8
	mov	rdi, r8
.label_2620:
	movdqa	xmm4, xmm7
	paddq	xmm4, xmm8
	movdqa	xmm3, xmm7
	paddq	xmm3, xmm9
	movdqa	xmm5, xmm7
	pxor	xmm5, xmm10
	movdqa	xmm0, xmm6
	pcmpgtd	xmm0, xmm5
	pshufd	xmm2, xmm0, 0xa0
	pcmpeqd	xmm5, xmm6
	pshufd	xmm1, xmm5, 0xf5
	pand	xmm1, xmm2
	pshufd	xmm5, xmm0, 0xf5
	por	xmm5, xmm1
	movdqa	xmm0, xmm4
	pxor	xmm0, xmm10
	movdqa	xmm1, xmm6
	pcmpgtd	xmm1, xmm0
	pshufd	xmm2, xmm1, 0xa0
	pcmpeqd	xmm0, xmm6
	pshufd	xmm0, xmm0, 0xf5
	pand	xmm0, xmm2
	pshufd	xmm1, xmm1, 0xf5
	por	xmm1, xmm0
	movq	rbx, xmm7
	pand	xmm7, xmm5
	pandn	xmm5, xmm11
	por	xmm5, xmm7
	pand	xmm4, xmm1
	pandn	xmm1, xmm11
	por	xmm1, xmm4
	paddq	xmm5, xmm12
	paddq	xmm1, xmm12
	add	rbx, r15
	movdqu	xmmword ptr [rdx + rbx*8], xmm5
	movdqu	xmmword ptr [rdx + rbx*8 + 0x10], xmm1
	movq	qword ptr [rcx + rbx*4], xmm13
	movq	qword ptr [rcx + rbx*4 + 8], xmm13
	add	rdi, -4
	movdqa	xmm7, xmm3
	jne	.label_2620
	cmp	r10, r8
	mov	rbx, r9
	mov	rdi, qword ptr [rsp + 0x28]
	je	.label_2597
.label_2599:
	lea	rcx, [rcx + r15*4]
	lea	rdx, [rdx + r15*8]
.label_2629:
	cmp	rax, r14
	mov	rsi, r12
	cmovb	rsi, rax
	add	rsi, rbx
	mov	qword ptr [rdx + rax*8], rsi
	mov	dword ptr [rcx + rax*4], 0xffffffff
	inc	rax
	cmp	rdi, rax
	jne	.label_2629
.label_2597:
	mov	rax, qword ptr [r13 + 0x58]
	mov	rcx, qword ptr [rsp + 0x18]
	add	rax, rcx
	mov	qword ptr [r13 + 0x58], rax
	cmp	qword ptr [r13 + 0x60], rbx
	mov	r12, rbx
	jle	.label_2592
	add	qword ptr [r13 + 0x68], rcx
.label_2592:
	mov	rdx, qword ptr [r13 + 0x40]
	cmp	rdx, rax
	cmovg	rdx, rax
	add	r12, r14
	mov	r15, rbp
	jmp	.label_2618
.label_2588:
	mov	al, byte ptr [rcx + rdx]
	jmp	.label_2583
.label_2598:
	mov	rcx, qword ptr [r13 + 0x18]
	mov	qword ptr [rcx + r15*8], r12
	jmp	.label_2585
	.section	.text
	.align	16
	#Procedure 0x419724
	.globl sub_419724
	.type sub_419724, @function
sub_419724:

	nop	word ptr cs:[rax + rax]
.label_2641:
	mov	byte ptr [r14 + r15 - 1], 0
	dec	r15
	mov	rdx, r15
	jmp	.label_2640
	.section	.text
	.align	16
	#Procedure 0x41973e
	.globl rpl_regerror
	.type rpl_regerror, @function
rpl_regerror:

	push	r15
	push	r14
	push	r12
	push	rbx
	push	rax
	mov	r15, rcx
	mov	r14, rdx
	cmp	edi, 0x11
	jae	.label_2643
	movsxd	rax, edi
	mov	esi, OFFSET FLAT:__re_error_msgid
	add	rsi, qword ptr [(rax * 8) + __re_error_msgid_idx]
	xor	edi, edi
	mov	edx, 5
	call	dcgettext
	mov	r12, rax
	mov	rdi, r12
	call	strlen
	mov	rbx, rax
	inc	rbx
	test	r15, r15
	je	.label_2642
	cmp	rbx, r15
	mov	rdx, rbx
	ja	.label_2641
.label_2640:
	mov	rdi, r14
	mov	rsi, r12
	call	memcpy
.label_2642:
	mov	rax, rbx
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
.label_2643:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x4197aa
	.globl sub_4197aa
	.type sub_4197aa, @function
sub_4197aa:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4197b0
	.globl rpl_re_set_registers
	.type rpl_re_set_registers, @function
rpl_re_set_registers:

	mov	al, byte ptr [rdi + 0x38]
	and	al, 0xf9
	mov	r9d, eax
	or	r9b, 2
	test	rdx, rdx
	je	.label_2644
	mov	eax, r9d
.label_2644:
	cmove	r8, rdx
	cmove	rcx, rdx
	mov	byte ptr [rdi + 0x38], al
	mov	qword ptr [rsi], rdx
	mov	qword ptr [rsi + 0x10], r8
	mov	qword ptr [rsi + 8], rcx
	ret	
	.section	.text
	.align	16
	#Procedure 0x4197db
	.globl sub_4197db
	.type sub_4197db, @function
sub_4197db:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4197e0
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
	#Procedure 0x4198a1
	.globl sub_4198a1
	.type sub_4198a1, @function
sub_4198a1:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4198b0
	.globl quotearg_char
	.type quotearg_char, @function
quotearg_char:

	sub	rsp, 0x38
	mov	ecx, esi
	mov	rax, rdi
	mov	rdx, qword ptr [rip + label_9]
	mov	qword ptr [rsp + 0x30], rdx
	movups	xmm0, xmmword ptr [rip + label_10]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_11]
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
	#Procedure 0x41991f
	.globl sub_41991f
	.type sub_41991f, @function
sub_41991f:

	nop	
	.section	.text
	.align	16
	#Procedure 0x419920
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
	#Procedure 0x419933
	.globl sub_419933
	.type sub_419933, @function
sub_419933:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4199a5
	.globl sub_4199a5
	.type sub_4199a5, @function
sub_4199a5:

	nop	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4199b2
	.globl sub_4199b2
	.type sub_4199b2, @function
sub_4199b2:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4199d6
	.globl sub_4199d6
	.type sub_4199d6, @function
sub_4199d6:

	nop	word ptr cs:[rax + rax]
