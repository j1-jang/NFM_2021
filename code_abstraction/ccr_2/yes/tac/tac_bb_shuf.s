	.section	.text
	.align	16
	#Procedure 0x401a39
	.globl sub_401a39
	.type sub_401a39, @function
sub_401a39:

	hlt	
	.section	.text
	.align	16
	#Procedure 0x401a3a
	.globl sub_401a3a
	.type sub_401a3a, @function
sub_401a3a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401a72
	.globl sub_401a72
	.type sub_401a72, @function
sub_401a72:

	nop	dword ptr [rax]
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401aba
	.globl sub_401aba
	.type sub_401aba, @function
sub_401aba:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401adc
	.globl sub_401adc
	.type sub_401adc, @function
sub_401adc:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x401aed
	.globl sub_401aed
	.type sub_401aed, @function
sub_401aed:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x401b06
	.globl sub_401b06
	.type sub_401b06, @function
sub_401b06:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401b10

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
	je	.label_57
	mov	esi, OFFSET FLAT:label_38
	mov	rdi, r12
	call	strcmp
	test	eax, eax
	je	.label_74
	mov	esi, OFFSET FLAT:label_64
	mov	rdi, r12
	call	strcmp
	test	eax, eax
	jne	.label_57
.label_74:
	mov	r12d, OFFSET FLAT:label_59
.label_57:
	mov	rbp, qword ptr [r13]
	cmp	rbp, qword ptr [rbx + 0x48]
	je	.label_66
.label_29:
	mov	rdi, r12
	call	wctype
	mov	rcx, qword ptr [rbx + 0x48]
	lea	rdx, [rcx + 1]
	mov	qword ptr [rbx + 0x48], rdx
	mov	rdx, qword ptr [rbx + 0x18]
	mov	qword ptr [rdx + rcx*8], rax
	mov	esi, OFFSET FLAT:label_71
	mov	rdi, r12
	call	strcmp
	test	eax, eax
	je	.label_96
	mov	esi, OFFSET FLAT:label_78
	mov	rdi, r12
	call	strcmp
	test	eax, eax
	je	.label_33
	mov	esi, OFFSET FLAT:label_64
	mov	rdi, r12
	call	strcmp
	test	eax, eax
	je	.label_83
	mov	esi, OFFSET FLAT:label_84
	mov	rdi, r12
	call	strcmp
	test	eax, eax
	je	.label_87
	mov	esi, OFFSET FLAT:label_59
	mov	rdi, r12
	call	strcmp
	test	eax, eax
	je	.label_91
	mov	esi, OFFSET FLAT:label_92
	mov	rdi, r12
	call	strcmp
	test	eax, eax
	je	.label_95
	mov	esi, OFFSET FLAT:label_10
	mov	rdi, r12
	call	strcmp
	test	eax, eax
	je	.label_14
	mov	esi, OFFSET FLAT:label_38
	mov	rdi, r12
	call	strcmp
	test	eax, eax
	je	.label_16
	mov	esi, OFFSET FLAT:label_19
	mov	rdi, r12
	call	strcmp
	test	eax, eax
	je	.label_21
	mov	esi, OFFSET FLAT:label_23
	mov	rdi, r12
	call	strcmp
	test	eax, eax
	je	.label_24
	mov	esi, OFFSET FLAT:label_26
	mov	rdi, r12
	call	strcmp
	test	eax, eax
	je	.label_28
	mov	esi, OFFSET FLAT:label_30
	mov	rdi, r12
	call	strcmp
	mov	ecx, eax
	mov	eax, 4
	test	ecx, ecx
	jne	.label_12
	call	__ctype_b_loc
	test	r14, r14
	mov	rdx, qword ptr [rax]
	jne	.label_36
	xor	ecx, ecx
.label_45:
	test	byte ptr [rdx + rcx*2 + 1], 0x10
	je	.label_40
	mov	eax, 1
	shl	rax, cl
	mov	rsi, rcx
	sar	rsi, 0x3f
	shr	rsi, 0x3a
	add	rsi, rcx
	sar	rsi, 6
	or	qword ptr [r15 + rsi*8], rax
.label_40:
	inc	rcx
	xor	eax, eax
	cmp	rcx, 0x100
	jne	.label_45
	jmp	.label_12
.label_96:
	call	__ctype_b_loc
	test	r14, r14
	mov	rdx, qword ptr [rax]
	jne	.label_49
	xor	ecx, ecx
	nop	word ptr cs:[rax + rax]
.label_58:
	test	byte ptr [rdx + rcx*2], 8
	je	.label_51
	mov	eax, 1
	shl	rax, cl
	mov	rsi, rcx
	sar	rsi, 0x3f
	shr	rsi, 0x3a
	add	rsi, rcx
	sar	rsi, 6
	or	qword ptr [r15 + rsi*8], rax
.label_51:
	inc	rcx
	xor	eax, eax
	cmp	rcx, 0x100
	jne	.label_58
	jmp	.label_12
.label_33:
	call	__ctype_b_loc
	test	r14, r14
	mov	rdx, qword ptr [rax]
	jne	.label_61
	xor	ecx, ecx
	nop	word ptr [rax + rax]
.label_69:
	test	byte ptr [rdx + rcx*2], 2
	je	.label_62
	mov	eax, 1
	shl	rax, cl
	mov	rsi, rcx
	sar	rsi, 0x3f
	shr	rsi, 0x3a
	add	rsi, rcx
	sar	rsi, 6
	or	qword ptr [r15 + rsi*8], rax
.label_62:
	inc	rcx
	xor	eax, eax
	cmp	rcx, 0x100
	jne	.label_69
	jmp	.label_12
.label_83:
	call	__ctype_b_loc
	test	r14, r14
	mov	rdx, qword ptr [rax]
	jne	.label_73
	xor	ecx, ecx
	nop	word ptr [rax + rax]
.label_81:
	test	byte ptr [rdx + rcx*2 + 1], 2
	je	.label_75
	mov	eax, 1
	shl	rax, cl
	mov	rsi, rcx
	sar	rsi, 0x3f
	shr	rsi, 0x3a
	add	rsi, rcx
	sar	rsi, 6
	or	qword ptr [r15 + rsi*8], rax
.label_75:
	inc	rcx
	xor	eax, eax
	cmp	rcx, 0x100
	jne	.label_81
	jmp	.label_12
.label_87:
	call	__ctype_b_loc
	test	r14, r14
	mov	rdx, qword ptr [rax]
	jne	.label_86
	xor	ecx, ecx
	nop	dword ptr [rax + rax]
.label_11:
	test	byte ptr [rdx + rcx*2 + 1], 0x20
	je	.label_90
	mov	eax, 1
	shl	rax, cl
	mov	rsi, rcx
	sar	rsi, 0x3f
	shr	rsi, 0x3a
	add	rsi, rcx
	sar	rsi, 6
	or	qword ptr [r15 + rsi*8], rax
.label_90:
	inc	rcx
	xor	eax, eax
	cmp	rcx, 0x100
	jne	.label_11
	jmp	.label_12
.label_91:
	call	__ctype_b_loc
	test	r14, r14
	mov	rdx, qword ptr [rax]
	jne	.label_15
	xor	ecx, ecx
	nop	dword ptr [rax + rax]
.label_25:
	test	byte ptr [rdx + rcx*2 + 1], 4
	je	.label_20
	mov	eax, 1
	shl	rax, cl
	mov	rsi, rcx
	sar	rsi, 0x3f
	shr	rsi, 0x3a
	add	rsi, rcx
	sar	rsi, 6
	or	qword ptr [r15 + rsi*8], rax
.label_20:
	inc	rcx
	xor	eax, eax
	cmp	rcx, 0x100
	jne	.label_25
	jmp	.label_12
.label_95:
	call	__ctype_b_loc
	test	r14, r14
	mov	rdx, qword ptr [rax]
	jne	.label_31
	xor	ecx, ecx
	nop	dword ptr [rax + rax]
.label_42:
	test	byte ptr [rdx + rcx*2 + 1], 8
	je	.label_35
	mov	eax, 1
	shl	rax, cl
	mov	rsi, rcx
	sar	rsi, 0x3f
	shr	rsi, 0x3a
	add	rsi, rcx
	sar	rsi, 6
	or	qword ptr [r15 + rsi*8], rax
.label_35:
	inc	rcx
	xor	eax, eax
	cmp	rcx, 0x100
	jne	.label_42
	jmp	.label_12
.label_14:
	call	__ctype_b_loc
	test	r14, r14
	mov	rdx, qword ptr [rax]
	jne	.label_44
	xor	ecx, ecx
	nop	dword ptr [rax + rax]
.label_52:
	test	byte ptr [rdx + rcx*2 + 1], 0x40
	je	.label_48
	mov	eax, 1
	shl	rax, cl
	mov	rsi, rcx
	sar	rsi, 0x3f
	shr	rsi, 0x3a
	add	rsi, rcx
	sar	rsi, 6
	or	qword ptr [r15 + rsi*8], rax
.label_48:
	inc	rcx
	xor	eax, eax
	cmp	rcx, 0x100
	jne	.label_52
	jmp	.label_12
.label_16:
	call	__ctype_b_loc
	test	r14, r14
	mov	rdx, qword ptr [rax]
	jne	.label_55
	xor	ecx, ecx
	nop	dword ptr [rax + rax]
.label_65:
	test	byte ptr [rdx + rcx*2 + 1], 1
	je	.label_60
	mov	eax, 1
	shl	rax, cl
	mov	rsi, rcx
	sar	rsi, 0x3f
	shr	rsi, 0x3a
	add	rsi, rcx
	sar	rsi, 6
	or	qword ptr [r15 + rsi*8], rax
.label_60:
	inc	rcx
	xor	eax, eax
	cmp	rcx, 0x100
	jne	.label_65
	jmp	.label_12
.label_21:
	call	__ctype_b_loc
	test	r14, r14
	mov	rdx, qword ptr [rax]
	jne	.label_67
	xor	ecx, ecx
	nop	dword ptr [rax + rax]
.label_77:
	test	byte ptr [rdx + rcx*2], 1
	je	.label_70
	mov	eax, 1
	shl	rax, cl
	mov	rsi, rcx
	sar	rsi, 0x3f
	shr	rsi, 0x3a
	add	rsi, rcx
	sar	rsi, 6
	or	qword ptr [r15 + rsi*8], rax
.label_70:
	inc	rcx
	xor	eax, eax
	cmp	rcx, 0x100
	jne	.label_77
	jmp	.label_12
.label_24:
	call	__ctype_b_loc
	test	r14, r14
	mov	rdx, qword ptr [rax]
	jne	.label_80
	xor	ecx, ecx
.label_89:
	cmp	word ptr [rdx + rcx*2], 0
	jns	.label_82
	mov	eax, 1
	shl	rax, cl
	mov	rsi, rcx
	sar	rsi, 0x3f
	shr	rsi, 0x3a
	add	rsi, rcx
	sar	rsi, 6
	or	qword ptr [r15 + rsi*8], rax
.label_82:
	inc	rcx
	xor	eax, eax
	cmp	rcx, 0x100
	jne	.label_89
	jmp	.label_12
.label_28:
	call	__ctype_b_loc
	test	r14, r14
	mov	rdx, qword ptr [rax]
	jne	.label_93
	xor	ecx, ecx
.label_17:
	test	byte ptr [rdx + rcx*2], 4
	je	.label_9
	mov	eax, 1
	shl	rax, cl
	mov	rsi, rcx
	sar	rsi, 0x3f
	shr	rsi, 0x3a
	add	rsi, rcx
	sar	rsi, 6
	or	qword ptr [r15 + rsi*8], rax
.label_9:
	inc	rcx
	xor	eax, eax
	cmp	rcx, 0x100
	jne	.label_17
.label_12:
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_66:
	lea	rax, [rbp + rbp]
	mov	rdi, qword ptr [rbx + 0x18]
	lea	rsi, [rax*8 + 8]
	call	realloc
	mov	rcx, rax
	mov	eax, 0xc
	test	rcx, rcx
	je	.label_12
	lea	rax, [rbp + rbp + 1]
	mov	qword ptr [rbx + 0x18], rcx
	mov	qword ptr [r13], rax
	jmp	.label_29
.label_49:
	xor	esi, esi
.label_39:
	test	byte ptr [rdx + rsi*2], 8
	je	.label_34
	movzx	ecx, byte ptr [r14 + rsi]
	mov	eax, 1
	shl	rax, cl
	shr	cl, 6
	movzx	ecx, cl
	or	qword ptr [r15 + rcx*8], rax
.label_34:
	inc	rsi
	xor	eax, eax
	cmp	rsi, 0x100
	jne	.label_39
	jmp	.label_12
.label_61:
	xor	esi, esi
.label_47:
	test	byte ptr [rdx + rsi*2], 2
	je	.label_43
	movzx	ecx, byte ptr [r14 + rsi]
	mov	eax, 1
	shl	rax, cl
	shr	cl, 6
	movzx	ecx, cl
	or	qword ptr [r15 + rcx*8], rax
.label_43:
	inc	rsi
	xor	eax, eax
	cmp	rsi, 0x100
	jne	.label_47
	jmp	.label_12
.label_73:
	xor	esi, esi
.label_53:
	test	byte ptr [rdx + rsi*2 + 1], 2
	je	.label_50
	movzx	ecx, byte ptr [r14 + rsi]
	mov	eax, 1
	shl	rax, cl
	shr	cl, 6
	movzx	ecx, cl
	or	qword ptr [r15 + rcx*8], rax
.label_50:
	inc	rsi
	xor	eax, eax
	cmp	rsi, 0x100
	jne	.label_53
	jmp	.label_12
.label_86:
	xor	esi, esi
.label_54:
	test	byte ptr [rdx + rsi*2 + 1], 0x20
	je	.label_56
	movzx	ecx, byte ptr [r14 + rsi]
	mov	eax, 1
	shl	rax, cl
	shr	cl, 6
	movzx	ecx, cl
	or	qword ptr [r15 + rcx*8], rax
.label_56:
	inc	rsi
	xor	eax, eax
	cmp	rsi, 0x100
	jne	.label_54
	jmp	.label_12
.label_15:
	xor	esi, esi
.label_68:
	test	byte ptr [rdx + rsi*2 + 1], 4
	je	.label_63
	movzx	ecx, byte ptr [r14 + rsi]
	mov	eax, 1
	shl	rax, cl
	shr	cl, 6
	movzx	ecx, cl
	or	qword ptr [r15 + rcx*8], rax
.label_63:
	inc	rsi
	xor	eax, eax
	cmp	rsi, 0x100
	jne	.label_68
	jmp	.label_12
.label_31:
	xor	esi, esi
.label_76:
	test	byte ptr [rdx + rsi*2 + 1], 8
	je	.label_72
	movzx	ecx, byte ptr [r14 + rsi]
	mov	eax, 1
	shl	rax, cl
	shr	cl, 6
	movzx	ecx, cl
	or	qword ptr [r15 + rcx*8], rax
.label_72:
	inc	rsi
	xor	eax, eax
	cmp	rsi, 0x100
	jne	.label_76
	jmp	.label_12
.label_44:
	xor	esi, esi
.label_85:
	test	byte ptr [rdx + rsi*2 + 1], 0x40
	je	.label_79
	movzx	ecx, byte ptr [r14 + rsi]
	mov	eax, 1
	shl	rax, cl
	shr	cl, 6
	movzx	ecx, cl
	or	qword ptr [r15 + rcx*8], rax
.label_79:
	inc	rsi
	xor	eax, eax
	cmp	rsi, 0x100
	jne	.label_85
	jmp	.label_12
.label_55:
	xor	esi, esi
.label_94:
	test	byte ptr [rdx + rsi*2 + 1], 1
	je	.label_88
	movzx	ecx, byte ptr [r14 + rsi]
	mov	eax, 1
	shl	rax, cl
	shr	cl, 6
	movzx	ecx, cl
	or	qword ptr [r15 + rcx*8], rax
.label_88:
	inc	rsi
	xor	eax, eax
	cmp	rsi, 0x100
	jne	.label_94
	jmp	.label_12
.label_67:
	xor	esi, esi
.label_18:
	test	byte ptr [rdx + rsi*2], 1
	je	.label_13
	movzx	ecx, byte ptr [r14 + rsi]
	mov	eax, 1
	shl	rax, cl
	shr	cl, 6
	movzx	ecx, cl
	or	qword ptr [r15 + rcx*8], rax
.label_13:
	inc	rsi
	xor	eax, eax
	cmp	rsi, 0x100
	jne	.label_18
	jmp	.label_12
.label_80:
	xor	esi, esi
.label_27:
	cmp	word ptr [rdx + rsi*2], 0
	jns	.label_22
	movzx	ecx, byte ptr [r14 + rsi]
	mov	eax, 1
	shl	rax, cl
	shr	cl, 6
	movzx	ecx, cl
	or	qword ptr [r15 + rcx*8], rax
.label_22:
	inc	rsi
	xor	eax, eax
	cmp	rsi, 0x100
	jne	.label_27
	jmp	.label_12
.label_93:
	xor	esi, esi
.label_37:
	test	byte ptr [rdx + rsi*2], 4
	je	.label_32
	movzx	ecx, byte ptr [r14 + rsi]
	mov	eax, 1
	shl	rax, cl
	shr	cl, 6
	movzx	ecx, cl
	or	qword ptr [r15 + rcx*8], rax
.label_32:
	inc	rsi
	xor	eax, eax
	cmp	rsi, 0x100
	jne	.label_37
	jmp	.label_12
.label_36:
	xor	esi, esi
.label_46:
	test	byte ptr [rdx + rsi*2 + 1], 0x10
	je	.label_41
	movzx	ecx, byte ptr [r14 + rsi]
	mov	eax, 1
	shl	rax, cl
	shr	cl, 6
	movzx	ecx, cl
	or	qword ptr [r15 + rcx*8], rax
.label_41:
	inc	rsi
	xor	eax, eax
	cmp	rsi, 0x100
	jne	.label_46
	jmp	.label_12
	.section	.text
	.align	16
	#Procedure 0x4022d5
	.globl sub_4022d5
	.type sub_4022d5, @function
sub_4022d5:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4022e0

	.globl close_stdout
	.type close_stdout, @function
close_stdout:
	push	rbp
	push	rbx
	push	rax
	mov	rdi, qword ptr [rip + stdout]
	call	close_stream
	test	eax, eax
	je	.label_101
	mov	bl, byte ptr [rip + ignore_EPIPE]
	call	__errno_location
	mov	rbp, rax
	cmp	bl, 0
	je	.label_99
	cmp	dword ptr [rbp], 0x20
	jne	.label_99
.label_101:
	mov	rdi, qword ptr [rip + stderr]
	call	close_stream
	test	eax, eax
	jne	.label_103
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
.label_99:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_97
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	rdi, qword ptr [rip + file_name]
	test	rdi, rdi
	mov	ebp, dword ptr [rbp]
	jne	.label_102
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_98
	xor	eax, eax
	mov	esi, ebp
	mov	rcx, rbx
	call	error
	mov	edi, dword ptr [rip + exit_failure]
	call	_exit
.label_102:
	call	quotearg_colon
	mov	rcx, rax
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_100
	xor	eax, eax
	mov	esi, ebp
	mov	r8, rbx
	call	error
	mov	edi, dword ptr [rip + exit_failure]
	call	_exit
	nop	dword ptr [rax]
	nop	dword ptr [rax + rax]
.label_103:
	mov	edi, dword ptr [rip + exit_failure]
	call	_exit
	.section	.text
	.align	16
	#Procedure 0x4023a0

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
	mov	rcx, qword ptr [r13]
	cmp	dword ptr [rcx + 0xb4], 1
	jne	.label_253
	mov	r14b, byte ptr [r13 + 0x1a]
	and	r14b, 0x40
	shr	r14b, 6
	jmp	.label_257
.label_253:
	xor	r14d, r14d
.label_257:
	cmp	qword ptr [rsi + 0x10], 0
	jle	.label_263
	xor	edx, edx
	mov	qword ptr [rsp + 0x20], rsi
	mov	qword ptr [rsp], rcx
	nop	dword ptr [rax + rax]
.label_406:
	mov	rax, qword ptr [rsi + 0x18]
	mov	qword ptr [rsp + 0x28], rdx
	mov	rbp, qword ptr [rax + rdx*8]
	mov	rcx, qword ptr [rcx]
	mov	r12, rbp
	shl	r12, 4
	movzx	eax, byte ptr [rcx + r12 + 8]
	mov	edx, eax
	dec	dl
	movzx	edx, dl
	cmp	dl, 6
	ja	.label_279
	lea	rsi, [rcx + r12]
	jmp	qword ptr [(rdx * 8) + label_431]
.label_2228:
	movzx	ebx, byte ptr [rsi]
	mov	byte ptr [r15 + rbx], 1
	test	r14b, r14b
	je	.label_276
	mov	eax, ebx
	sub	eax, -0x80
	cmp	eax, 0x17f
	ja	.label_277
	call	__ctype_tolower_loc
	mov	rax, qword ptr [rax]
	mov	ebx, dword ptr [rax + rbx*4]
.label_277:
	movsxd	rax, ebx
	mov	byte ptr [r15 + rax], 1
.label_276:
	test	byte ptr [r13 + 0x1a], 0x40
	je	.label_279
	mov	rax, qword ptr [rsp]
	cmp	dword ptr [rax + 0xb4], 2
	jl	.label_279
	mov	qword ptr [rsp + 0x18], r13
	mov	rdx, qword ptr [rsp]
	mov	rax, qword ptr [rdx]
	mov	al, byte ptr [rax + r12]
	mov	byte ptr [rsp + 0x30], al
	inc	rbp
	cmp	rbp, qword ptr [rdx + 0x10]
	lea	r13, [rsp + 0x31]
	mov	esi, 0x2000ff
	jae	.label_283
	add	r12, 0x18
	lea	r13, [rsp + 0x31]
.label_290:
	mov	rax, qword ptr [rdx]
	mov	ecx, dword ptr [rax + r12]
	and	ecx, esi
	cmp	ecx, 0x200001
	jne	.label_283
	movzx	eax, byte ptr [rax + r12 - 8]
	mov	byte ptr [r13], al
	inc	r13
	inc	rbp
	add	r12, 0x10
	cmp	rbp, qword ptr [rdx + 0x10]
	jb	.label_290
.label_283:
	mov	qword ptr [rsp + 8], 0
	lea	rbp, [rsp + 0x30]
	sub	r13, rbp
	lea	rdi, [rsp + 0x14]
	mov	rsi, rbp
	mov	rdx, r13
	lea	rbx, [rsp + 8]
	mov	rcx, rbx
	call	rpl_mbrtowc
	cmp	rax, r13
	jne	.label_298
	mov	edi, dword ptr [rsp + 0x14]
	call	towlower
	mov	rdi, rbp
	mov	esi, eax
	mov	rdx, rbx
	call	wcrtomb
	cmp	rax, -1
	je	.label_298
	movzx	eax, byte ptr [rsp + 0x30]
	mov	byte ptr [r15 + rax], 1
.label_298:
	mov	r13, qword ptr [rsp + 0x18]
	jmp	.label_279
	.section	.text
	.align	16
	#Procedure 0x402529
	.globl sub_402529
	.type sub_402529, @function
sub_402529:

	nop	dword ptr [rax]
.label_2230:
	mov	rax, qword ptr [rcx + r12]
	mov	rbp, qword ptr [rax]
	xor	ebx, ebx
	nop	dword ptr [rax]
.label_317:
	bt	rbp, rbx
	jae	.label_306
	mov	byte ptr [r15 + rbx], 1
	test	r14b, r14b
	je	.label_306
	mov	eax, ebx
	sub	eax, -0x80
	cmp	eax, 0x180
	jae	.label_310
	call	__ctype_tolower_loc
	mov	rax, qword ptr [rax]
	mov	eax, dword ptr [rax + rbx*4]
	jmp	.label_113
.label_310:
	mov	eax, ebx
.label_113:
	cdqe	
	mov	byte ptr [r15 + rax], 1
.label_306:
	inc	rbx
	cmp	rbx, 0x40
	jne	.label_317
	mov	rax, qword ptr [rsp]
	mov	rax, qword ptr [rax]
	mov	rax, qword ptr [rax + r12]
	mov	rbp, qword ptr [rax + 8]
	xor	ebx, ebx
	nop	dword ptr [rax]
.label_328:
	bt	rbp, rbx
	jae	.label_160
	mov	byte ptr [r15 + rbx + 0x40], 1
	test	r14b, r14b
	je	.label_160
	lea	eax, [rbx + 0xc0]
	cmp	eax, 0x180
	jae	.label_321
	call	__ctype_tolower_loc
	mov	rax, qword ptr [rax]
	mov	eax, dword ptr [rax + rbx*4 + 0x100]
	jmp	.label_324
.label_321:
	lea	rax, [rbx + 0x40]
.label_324:
	cdqe	
	mov	byte ptr [r15 + rax], 1
.label_160:
	inc	rbx
	cmp	rbx, 0x40
	jne	.label_328
	mov	rax, qword ptr [rsp]
	mov	rax, qword ptr [rax]
	mov	rax, qword ptr [rax + r12]
	mov	rbp, qword ptr [rax + 0x10]
	xor	ebx, ebx
	nop	word ptr cs:[rax + rax]
.label_343:
	bt	rbp, rbx
	jae	.label_258
	mov	byte ptr [r15 + rbx + 0x80], 1
	test	r14b, r14b
	je	.label_258
	lea	eax, [rbx + 0x100]
	cmp	eax, 0x180
	jae	.label_336
	call	__ctype_tolower_loc
	mov	rax, qword ptr [rax]
	mov	eax, dword ptr [rax + rbx*4 + 0x200]
	jmp	.label_338
.label_336:
	mov	rax, rbx
	sub	rax, -0x80
.label_338:
	cdqe	
	mov	byte ptr [r15 + rax], 1
.label_258:
	inc	rbx
	cmp	rbx, 0x40
	jne	.label_343
	mov	rax, qword ptr [rsp]
	mov	rax, qword ptr [rax]
	mov	rax, qword ptr [rax + r12]
	mov	rbp, qword ptr [rax + 0x18]
	xor	ebx, ebx
	nop	word ptr [rax + rax]
.label_389:
	bt	rbp, rbx
	jae	.label_348
	mov	byte ptr [r15 + rbx + 0xc0], 1
	test	r14b, r14b
	je	.label_348
	lea	eax, [rbx + 0x140]
	cmp	eax, 0x180
	jae	.label_351
	call	__ctype_tolower_loc
	mov	rax, qword ptr [rax]
	mov	eax, dword ptr [rax + rbx*4 + 0x300]
	jmp	.label_630
.label_351:
	lea	rax, [rbx + 0xc0]
.label_630:
	cdqe	
	mov	byte ptr [r15 + rax], 1
.label_348:
	inc	rbx
	cmp	rbx, 0x40
	jne	.label_389
	jmp	.label_279
	.section	.text
	.align	16
	#Procedure 0x40269e
	.globl sub_40269e
	.type sub_40269e, @function
sub_40269e:

	nop	
.label_2231:
	mov	r12, qword ptr [rsi]
	mov	rax, qword ptr [rsp]
	cmp	dword ptr [rax + 0xb4], 1
	jle	.label_359
	cmp	qword ptr [r12 + 0x48], 0
	jne	.label_361
	test	byte ptr [r12 + 0x20], 1
	jne	.label_361
	cmp	qword ptr [r12 + 0x40], 0
	je	.label_359
.label_361:
	mov	byte ptr [rsp + 8], 0
	lea	rbx, [rsp + 0x30]
	lea	rbp, [rsp + 8]
	nop	word ptr [rax + rax]
.label_372:
	mov	qword ptr [rsp + 0x30], 0
	xor	edi, edi
	mov	edx, 1
	mov	rsi, rbp
	mov	rcx, rbx
	call	rpl_mbrtowc
	movzx	ecx, byte ptr [rsp + 8]
	cmp	rax, -2
	jne	.label_369
	mov	byte ptr [r15 + rcx], 1
.label_369:
	inc	cl
	mov	byte ptr [rsp + 8], cl
	jne	.label_372
	jmp	.label_279
.label_359:
	cmp	qword ptr [r12 + 0x28], 0
	jle	.label_279
	xor	ebp, ebp
	nop	word ptr cs:[rax + rax]
.label_402:
	mov	qword ptr [rsp + 8], 0
	mov	rax, qword ptr [r12]
	mov	esi, dword ptr [rax + rbp*4]
	lea	rdi, [rsp + 0x30]
	lea	rdx, [rsp + 8]
	call	wcrtomb
	cmp	rax, -1
	je	.label_383
	movzx	ebx, byte ptr [rsp + 0x30]
	mov	byte ptr [r15 + rbx], 1
	test	r14b, r14b
	je	.label_383
	mov	eax, ebx
	sub	eax, -0x80
	cmp	eax, 0x17f
	ja	.label_390
	call	__ctype_tolower_loc
	mov	rax, qword ptr [rax]
	mov	ebx, dword ptr [rax + rbx*4]
.label_390:
	movsxd	rax, ebx
	mov	byte ptr [r15 + rax], 1
.label_383:
	test	byte ptr [r13 + 0x1a], 0x40
	je	.label_393
	mov	rax, qword ptr [rsp]
	cmp	dword ptr [rax + 0xb4], 2
	jl	.label_393
	mov	rax, qword ptr [r12]
	mov	edi, dword ptr [rax + rbp*4]
	call	towlower
	lea	rdi, [rsp + 0x30]
	mov	esi, eax
	lea	rdx, [rsp + 8]
	call	wcrtomb
	cmp	rax, -1
	je	.label_393
	movzx	eax, byte ptr [rsp + 0x30]
	mov	byte ptr [r15 + rax], 1
	nop	word ptr cs:[rax + rax]
.label_393:
	inc	rbp
	cmp	rbp, qword ptr [r12 + 0x28]
	jl	.label_402
	nop	
.label_279:
	mov	rdx, qword ptr [rsp + 0x28]
	inc	rdx
	mov	rsi, qword ptr [rsp + 0x20]
	cmp	rdx, qword ptr [rsi + 0x10]
	mov	rcx, qword ptr [rsp]
	jl	.label_406
	jmp	.label_263
.label_2229:
	movaps	xmm0, xmmword ptr [rip + label_410]
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
	jne	.label_263
	or	byte ptr [r13 + 0x38], 1
.label_263:
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
	#Procedure 0x402887
	.globl sub_402887
	.type sub_402887, @function
sub_402887:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402890
	.globl quotearg_char_mem
	.type quotearg_char_mem, @function
quotearg_char_mem:

	sub	rsp, 0x38
	mov	ecx, edx
	mov	r8, rsi
	mov	rdx, rdi
	mov	rsi, qword ptr [rip + label_267]
	mov	qword ptr [rsp + 0x30], rsi
	movups	xmm0, xmmword ptr [rip + label_268]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_269]
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
	#Procedure 0x4028fe
	.globl sub_4028fe
	.type sub_4028fe, @function
sub_4028fe:

	nop	
	.section	.text
	.align	16
	#Procedure 0x402900

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
	mov	rbx, r9
	mov	r13, rdx
	mov	r12, rdi
	mov	r14, qword ptr [rsi]
	mov	rax, qword ptr [r14 + 0xa8]
	mov	qword ptr [rsp + 0x18], rax
	mov	qword ptr [rsp + 0x20], rsi
	mov	qword ptr [rsp + 8], rcx
	mov	qword ptr [rsp + 0x10], r8
	call	parse_branch
	mov	r8, rbx
	mov	rbx, rax
	xor	ebp, ebp
	test	rbx, rbx
	jne	.label_670
	mov	eax, dword ptr [r8]
	test	eax, eax
	jne	.label_657
.label_670:
	cmp	byte ptr [r13 + 8], 0xa
	jne	.label_660
	mov	rax, qword ptr [rsp + 8]
	or	rax, 0x800000
	mov	qword ptr [rsp + 0x30], rax
	jmp	.label_661
.label_660:
	mov	rbp, rbx
	jmp	.label_657
.label_659:
	mov	edi, 0x3c8
	call	malloc
	test	rax, rax
	je	.label_671
	mov	rcx, qword ptr [r14 + 0x70]
	mov	qword ptr [rax], rcx
	mov	qword ptr [r14 + 0x70], rax
	mov	dword ptr [r14 + 0x80], 0
	xor	ecx, ecx
	mov	r8, rbp
	jmp	.label_656
	.section	.text
	.align	16
	#Procedure 0x4029a6
	.globl sub_4029a6
	.type sub_4029a6, @function
sub_4029a6:

	nop	word ptr cs:[rax + rax]
.label_661:
	mov	rdi, r13
	mov	rsi, r12
	mov	rdx, qword ptr [rsp + 0x30]
	mov	rbp, r8
	call	peek_token
	mov	r8, rbp
	cdqe	
	add	qword ptr [r12 + 0x48], rax
	movzx	eax, byte ptr [r13 + 8]
	mov	ecx, eax
	or	cl, 8
	cmp	cl, 0xa
	mov	r15d, 0
	je	.label_655
	cmp	qword ptr [rsp + 0x10], 0
	je	.label_664
	cmp	eax, 9
	mov	r15d, 0
	je	.label_655
.label_664:
	mov	rax, qword ptr [r14 + 0xa8]
	mov	qword ptr [rsp + 0x28], rax
	mov	rax, qword ptr [rsp + 0x18]
	mov	qword ptr [r14 + 0xa8], rax
	mov	rdi, r12
	mov	rsi, qword ptr [rsp + 0x20]
	mov	rdx, r13
	mov	rcx, qword ptr [rsp + 8]
	mov	r8, qword ptr [rsp + 0x10]
	mov	r9, rbp
	call	parse_branch
	mov	r8, rbp
	mov	r15, rax
	test	r15, r15
	jne	.label_662
	mov	eax, dword ptr [r8]
	test	eax, eax
	jne	.label_672
.label_662:
	mov	rax, qword ptr [rsp + 0x28]
	or	qword ptr [r14 + 0xa8], rax
	nop	dword ptr [rax]
.label_655:
	mov	ecx, dword ptr [r14 + 0x80]
	cmp	ecx, 0xf
	je	.label_659
	mov	rax, qword ptr [r14 + 0x70]
.label_656:
	lea	edx, [rcx + 1]
	mov	dword ptr [r14 + 0x80], edx
	movsxd	rcx, ecx
	shl	rcx, 6
	lea	rbp, [rax + rcx + 8]
	mov	qword ptr [rax + rcx + 8], 0
	mov	qword ptr [rax + rcx + 0x10], rbx
	mov	qword ptr [rax + rcx + 0x18], r15
	mov	dword ptr [rax + rcx + 0x38], 0xa
	xorps	xmm0, xmm0
	movups	xmmword ptr [rax + rcx + 0x20], xmm0
	mov	qword ptr [rax + rcx + 0x40], -1
	test	rbx, rbx
	je	.label_665
	mov	qword ptr [rbx], rbp
.label_665:
	test	r15, r15
	je	.label_668
	mov	qword ptr [r15], rbp
.label_668:
	cmp	byte ptr [r13 + 8], 0xa
	mov	rbx, rbp
	je	.label_661
.label_657:
	mov	rax, rbp
	add	rsp, 0x38
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_672:
	xor	ebp, ebp
	test	rbx, rbx
	je	.label_657
	mov	r14d, 0x400ff
	xor	ebp, ebp
.label_663:
	mov	r15, rbx
	mov	rbx, qword ptr [r15 + 8]
	test	rbx, rbx
	jne	.label_663
	mov	rbx, qword ptr [r15 + 0x10]
	test	rbx, rbx
	jne	.label_663
.label_658:
	mov	eax, dword ptr [r15 + 0x30]
	and	eax, r14d
	cmp	eax, 3
	je	.label_667
	cmp	eax, 6
	jne	.label_666
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
	jmp	.label_669
.label_667:
	mov	rdi, qword ptr [r15 + 0x28]
.label_669:
	call	free
.label_666:
	mov	rax, qword ptr [r15]
	test	rax, rax
	je	.label_657
	mov	rbx, qword ptr [rax + 0x10]
	cmp	rbx, r15
	mov	r15, rax
	je	.label_658
	test	rbx, rbx
	mov	r15, rax
	je	.label_658
	jmp	.label_663
.label_671:
	mov	dword ptr [rbp], 0xc
	xor	ebp, ebp
	jmp	.label_657
	.section	.text
	.align	16
	#Procedure 0x402b70

	.globl dup_safer
	.type dup_safer, @function
dup_safer:
	xor	esi, esi
	mov	edx, 3
	xor	eax, eax
	jmp	rpl_fcntl
	.section	.text
	.align	16
	#Procedure 0x402b7e
	.globl sub_402b7e
	.type sub_402b7e, @function
sub_402b7e:

	nop	
.label_674:
	mov	ecx, 1
.label_673:
	mov	rdi, rcx
	mov	rsi, rax
	jmp	calloc
	.section	.text
	.align	16
	#Procedure 0x402b90
	.globl sub_402b90
	.type sub_402b90, @function
sub_402b90:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402b95

	.globl rpl_calloc
	.type rpl_calloc, @function
rpl_calloc:
	test	rdi, rdi
	mov	eax, 1
	je	.label_674
	test	rsi, rsi
	mov	ecx, 1
	je	.label_673
	mov	rax, rsi
	imul	rax, rdi
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	mov	rax, rsi
	mov	rcx, rdi
	je	.label_673
	push	rax
	call	__errno_location
	mov	dword ptr [rax], 0xc
	xor	eax, eax
	pop	rcx
	ret	
	.section	.text
	.align	16
	#Procedure 0x402bd0
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
	#Procedure 0x402be9
	.globl sub_402be9
	.type sub_402be9, @function
sub_402be9:

	nop	dword ptr [rax]
.label_675:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x402bf5
	.globl sub_402bf5
	.type sub_402bf5, @function
sub_402bf5:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402bff
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
	je	.label_676
	test	r14, r14
	je	.label_675
.label_676:
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
	#Procedure 0x402c30
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
	#Procedure 0x402ca5
	.globl sub_402ca5
	.type sub_402ca5, @function
sub_402ca5:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402cb0

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
	je	.label_678
	mov	rdi, r14
	mov	rdx, rbx
	call	re_compile_fastmap_iter
	mov	rax, qword ptr [r15 + 0x48]
.label_678:
	mov	rsi, qword ptr [r15 + 0x58]
	cmp	rax, rsi
	je	.label_677
	mov	rdi, r14
	mov	rdx, rbx
	call	re_compile_fastmap_iter
	mov	rax, qword ptr [r15 + 0x48]
.label_677:
	mov	rsi, qword ptr [r15 + 0x60]
	cmp	rax, rsi
	je	.label_679
	mov	rdi, r14
	mov	rdx, rbx
	call	re_compile_fastmap_iter
.label_679:
	or	byte ptr [r14 + 0x38], 8
	xor	eax, eax
	pop	rbx
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	16
	#Procedure 0x402d7a
	.globl sub_402d7a
	.type sub_402d7a, @function
sub_402d7a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402d80

	.globl base_len
	.type base_len, @function
base_len:
	push	rbx
	mov	rbx, rdi
	call	strlen
	mov	rcx, rax
	nop	dword ptr [rax]
.label_681:
	mov	rax, rcx
	cmp	rax, 2
	jb	.label_680
	lea	rcx, [rax - 1]
	cmp	byte ptr [rbx + rax - 1], 0x2f
	je	.label_681
.label_680:
	pop	rbx
	ret	
	.section	.text
	.align	16
	#Procedure 0x402da6
	.globl sub_402da6
	.type sub_402da6, @function
sub_402da6:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402db0

	.globl version_etc
	.type version_etc, @function
version_etc:
	sub	rsp, 0xd8
	test	al, al
	je	.label_682
	movaps	xmmword ptr [rsp + 0x50], xmm0
	movaps	xmmword ptr [rsp + 0x60], xmm1
	movaps	xmmword ptr [rsp + 0x70], xmm2
	movaps	xmmword ptr [rsp + 0x80], xmm3
	movaps	xmmword ptr [rsp + 0x90], xmm4
	movaps	xmmword ptr [rsp + 0xa0], xmm5
	movaps	xmmword ptr [rsp + 0xb0], xmm6
	movaps	xmmword ptr [rsp + 0xc0], xmm7
.label_682:
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
	#Procedure 0x402e33
	.globl sub_402e33
	.type sub_402e33, @function
sub_402e33:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402e40
	.globl close_stdout_set_ignore_EPIPE
	.type close_stdout_set_ignore_EPIPE, @function
close_stdout_set_ignore_EPIPE:

	mov	byte ptr [rip + ignore_EPIPE],  dil
	ret	
	.section	.text
	.align	16
	#Procedure 0x402e48
	.globl sub_402e48
	.type sub_402e48, @function
sub_402e48:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402e50

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
	je	.label_690
	mov	r11, qword ptr [r14 + 8]
	test	r11, r11
	je	.label_690
	lea	rax, [r11 + rcx]
	mov	r13, qword ptr [r12]
	mov	rdx, qword ptr [r12 + 8]
	lea	rsi, [rdx + rax]
	cmp	rsi, r13
	jle	.label_700
	add	r13, rax
	mov	rdi, qword ptr [r12 + 0x10]
	lea	rsi, [r13*8]
	call	realloc
	mov	rcx, rax
	mov	eax, 0xc
	test	rcx, rcx
	je	.label_690
	lea	r8, [r12 + 0x10]
	mov	qword ptr [r12 + 0x10], rcx
	mov	qword ptr [r12], r13
	mov	rdx, qword ptr [r12 + 8]
	mov	rcx, qword ptr [r15 + 8]
	mov	r11, qword ptr [r14 + 8]
	jmp	.label_699
.label_700:
	lea	r8, [r12 + 0x10]
.label_699:
	lea	r10, [rcx + rdx]
	add	r10, r11
	dec	rdx
	mov	rsi, qword ptr [r15 + 0x10]
	mov	r9, qword ptr [r14 + 0x10]
.label_698:
	dec	rcx
	mov	rdi, r11
.label_693:
	lea	r11, [rdi - 1]
	mov	rax, qword ptr [r9 + rdi*8 - 8]
	nop	dword ptr [rax]
.label_687:
	cmp	qword ptr [rsi + rcx*8], rax
	je	.label_683
	jl	.label_686
	test	rcx, rcx
	lea	rcx, [rcx - 1]
	jg	.label_687
	jmp	.label_691
	.section	.text
	.align	16
	#Procedure 0x402f13
	.globl sub_402f13
	.type sub_402f13, @function
sub_402f13:

	nop	word ptr cs:[rax + rax]
.label_686:
	cmp	rdi, 2
	mov	rdi, r11
	jge	.label_693
	jmp	.label_691
	.section	.text
	.align	16
	#Procedure 0x402f2b
	.globl sub_402f2b
	.type sub_402f2b, @function
sub_402f2b:

	nop	dword ptr [rax + rax]
.label_683:
	mov	rbx, qword ptr [r8]
	test	rdx, rdx
	js	.label_692
	nop	dword ptr [rax + rax]
.label_694:
	cmp	qword ptr [rbx + rdx*8], rax
	jle	.label_684
	test	rdx, rdx
	lea	rdx, [rdx - 1]
	jg	.label_694
	jmp	.label_692
.label_684:
	je	.label_695
	nop	word ptr cs:[rax + rax]
.label_692:
	mov	qword ptr [rbx + r10*8 - 8], rax
	dec	r10
.label_695:
	test	rcx, rcx
	jle	.label_691
	cmp	rdi, 2
	jge	.label_698
.label_691:
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
	jle	.label_688
	test	rax, rax
	js	.label_688
	xor	edx, edx
.label_696:
	lea	rax, [rcx + r8]
	lea	rax, [rdi + rax*8]
	nop	dword ptr [rax + rax]
.label_689:
	mov	rbx, qword ptr [rdi + r9*8]
	mov	rsi, qword ptr [rdi + rcx*8]
	cmp	rbx, rsi
	jg	.label_685
	mov	qword ptr [rax], rsi
	add	rax, -8
	test	rcx, rcx
	lea	rcx, [rcx - 1]
	jg	.label_689
	jmp	.label_688
	.section	.text
	.align	16
	#Procedure 0x402fdf
	.globl sub_402fdf
	.type sub_402fdf, @function
sub_402fdf:

	nop	
.label_685:
	dec	r9
	dec	r8
	mov	qword ptr [rax], rbx
	jne	.label_696
	jmp	.label_697
.label_688:
	mov	rdx, r8
.label_697:
	lea	rsi, [rdi + r10*8]
	shl	rdx, 3
	call	memcpy
	xor	eax, eax
.label_690:
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	16
	#Procedure 0x403009
	.globl sub_403009
	.type sub_403009, @function
sub_403009:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x403010

	.globl re_acquire_state_context
	.type re_acquire_state_context, @function
re_acquire_state_context:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x38
	mov	r12d, ecx
	mov	r13, rsi
	mov	r15, rdi
	mov	r8, qword ptr [rdx + 8]
	test	r8, r8
	je	.label_706
	mov	r14d, r12d
	add	r14, r8
	test	r8, r8
	jle	.label_711
	mov	rcx, qword ptr [rdx + 0x10]
	xor	r9d, r9d
	cmp	r8, 4
	jb	.label_712
	mov	r9, r8
	and	r9, 0xfffffffffffffffc
	je	.label_740
	movq	xmm0, r14
	lea	rbp, [r9 - 4]
	mov	rax, rbp
	shr	rax, 2
	lea	esi, [rax + 1]
	and	esi, 3
	xor	edi, edi
	cmp	rbp, 0xc
	jae	.label_717
	pxor	xmm1, xmm1
	jmp	.label_723
.label_706:
	mov	dword ptr [r15], 0
.label_739:
	xor	ebp, ebp
	jmp	.label_726
.label_740:
	xor	r9d, r9d
	jmp	.label_712
.label_717:
	lea	rbp, [rsi - 1]
	sub	rbp, rax
	pxor	xmm1, xmm1
	xor	edi, edi
	nop	word ptr cs:[rax + rax]
.label_733:
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
	jne	.label_733
.label_723:
	test	rsi, rsi
	je	.label_703
	lea	rdi, [rcx + rdi*8 + 0x10]
	neg	rsi
	nop	word ptr cs:[rax + rax]
.label_709:
	movdqu	xmm2, xmmword ptr [rdi - 0x10]
	movdqu	xmm3, xmmword ptr [rdi]
	paddq	xmm0, xmm2
	paddq	xmm1, xmm3
	add	rdi, 0x20
	inc	rsi
	jne	.label_709
.label_703:
	paddq	xmm0, xmm1
	pshufd	xmm1, xmm0, 0x4e
	paddq	xmm1, xmm0
	movq	r14, xmm1
	cmp	r8, r9
	je	.label_711
.label_712:
	mov	rsi, r8
	sub	rsi, r9
	lea	rcx, [rcx + r9*8]
	nop	dword ptr [rax + rax]
.label_719:
	add	r14, qword ptr [rcx]
	add	rcx, 8
	dec	rsi
	jne	.label_719
.label_711:
	mov	rax, qword ptr [r13 + 0x40]
	mov	rcx, qword ptr [r13 + 0x88]
	and	rcx, r14
	lea	rcx, [rcx + rcx*2]
	mov	r10, qword ptr [rax + rcx*8]
	test	r10, r10
	jle	.label_720
	mov	r9, qword ptr [rax + rcx*8 + 0x10]
	xor	esi, esi
	nop	
.label_729:
	mov	rbp, qword ptr [r9 + rsi*8]
	cmp	qword ptr [rbp], r14
	jne	.label_702
	movzx	eax, byte ptr [rbp + 0x68]
	and	eax, 0xf
	cmp	eax, r12d
	jne	.label_702
	test	rdx, rdx
	je	.label_702
	mov	rdi, qword ptr [rbp + 0x50]
	test	rdi, rdi
	je	.label_702
	cmp	qword ptr [rdi + 8], r8
	jne	.label_702
	mov	rax, r8
	nop	dword ptr [rax]
.label_736:
	test	rax, rax
	jle	.label_726
	mov	rcx, qword ptr [rdi + 0x10]
	mov	rbx, qword ptr [rcx + rax*8 - 8]
	mov	rcx, qword ptr [rdx + 0x10]
	cmp	rbx, qword ptr [rcx + rax*8 - 8]
	lea	rax, [rax - 1]
	je	.label_736
	nop	word ptr cs:[rax + rax]
.label_702:
	inc	rsi
	cmp	rsi, r10
	jl	.label_729
.label_720:
	mov	qword ptr [rsp + 8], rdx
	mov	edi, 0x70
	mov	esi, 1
	call	rpl_calloc
	mov	r9, rax
	test	r9, r9
	je	.label_705
	mov	qword ptr [rsp + 0x20], r13
	mov	rax, r9
	add	rax, 8
	mov	rsi, qword ptr [rsp + 8]
	mov	rdi, qword ptr [rsi + 8]
	mov	qword ptr [r9 + 0x10], rdi
	mov	rbp, qword ptr [rsi + 8]
	test	rbp, rbp
	mov	qword ptr [rsp + 0x10], r9
	mov	qword ptr [rsp + 0x18], r15
	jle	.label_727
	mov	r13, rax
	mov	qword ptr [r9 + 8], rdi
	shl	rdi, 3
	call	malloc
	mov	rdi, qword ptr [rsp + 0x10]
	mov	qword ptr [rdi + 0x18], rax
	test	rax, rax
	je	.label_715
	mov	rbx, qword ptr [rsp + 8]
	mov	rsi, qword ptr [rbx + 0x10]
	shl	rbp, 3
	mov	rdi, rax
	mov	rdx, rbp
	call	memcpy
	mov	r9, qword ptr [rsp + 0x10]
	mov	rsi, rbx
	mov	rdi, qword ptr [rsp + 0x20]
	mov	r15, r13
	jmp	.label_724
.label_727:
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [rax], xmm0
	mov	qword ptr [rax + 0x10], 0
	mov	rdi, qword ptr [rsp + 0x20]
	mov	r15, rax
.label_724:
	mov	al, byte ptr [r9 + 0x68]
	mov	edx, r12d
	mov	ecx, r12d
	and	cl, 0xf
	and	al, 0xf0
	or	al, cl
	mov	byte ptr [r9 + 0x68], al
	mov	qword ptr [r9 + 0x50], r15
	cmp	qword ptr [rsi + 8], 0
	jle	.label_731
	mov	ebp, edx
	and	ebp, 1
	mov	eax, edx
	and	eax, 2
	mov	dword ptr [rsp + 0x2c], eax
	and	edx, 4
	mov	dword ptr [rsp + 0x28], edx
	xor	r12d, r12d
	xor	r8d, r8d
	mov	qword ptr [rsp + 0x30], r15
	nop	dword ptr [rax]
.label_728:
	mov	rax, qword ptr [rdi]
	mov	rcx, qword ptr [rsi + 0x10]
	mov	rcx, qword ptr [rcx + r12*8]
	shl	rcx, 4
	mov	edx, dword ptr [rax + rcx + 8]
	mov	r13d, edx
	shr	r13d, 8
	mov	ecx, r13d
	and	ecx, 0x3ff
	cmp	dl, 1
	jne	.label_741
	test	ecx, ecx
	je	.label_708
.label_741:
	mov	esi, edx
	shr	esi, 0x14
	mov	bl, byte ptr [r9 + 0x68]
	mov	eax, ebx
	shr	al, 5
	movzx	eax, al
	or	eax, esi
	shl	al, 5
	and	al, 0x20
	and	bl, 0xdf
	or	bl, al
	mov	byte ptr [r9 + 0x68], bl
	cmp	dl, 4
	je	.label_734
	cmp	dl, 2
	jne	.label_713
	or	bl, 0x10
	jmp	.label_714
.label_734:
	or	bl, 0x40
.label_714:
	mov	byte ptr [r9 + 0x68], bl
.label_713:
	test	ecx, ecx
	je	.label_716
	cmp	qword ptr [r9 + 0x50], r15
	jne	.label_718
	mov	edi, 0x18
	call	malloc
	mov	r9, qword ptr [rsp + 0x10]
	mov	rbx, rax
	mov	qword ptr [r9 + 0x50], rbx
	test	rbx, rbx
	je	.label_721
	mov	rax, qword ptr [rsp + 8]
	mov	r15, qword ptr [rax + 8]
	mov	qword ptr [rbx + 8], r15
	test	r15, r15
	jle	.label_725
	mov	qword ptr [rbx], r15
	shl	r15, 3
	mov	rdi, r15
	call	malloc
	mov	qword ptr [rbx + 0x10], rax
	test	rax, rax
	je	.label_738
	mov	rcx, qword ptr [rsp + 8]
	mov	rsi, qword ptr [rcx + 0x10]
	mov	rdi, rax
	mov	rdx, r15
	call	memcpy
	mov	r9, qword ptr [rsp + 0x10]
	jmp	.label_730
.label_716:
	mov	rsi, qword ptr [rsp + 8]
	jmp	.label_708
.label_725:
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [rbx], xmm0
	mov	qword ptr [rbx + 0x10], 0
.label_730:
	mov	r15, qword ptr [rsp + 0x30]
	or	byte ptr [r9 + 0x68], 0x80
	xor	r8d, r8d
	mov	rdi, qword ptr [rsp + 0x20]
.label_718:
	test	ebp, ebp
	mov	rsi, qword ptr [rsp + 8]
	jne	.label_742
	mov	eax, r13d
	and	eax, 1
	jne	.label_701
.label_742:
	test	ebp, ebp
	je	.label_704
	mov	eax, r13d
	and	eax, 2
	jne	.label_701
.label_704:
	cmp	dword ptr [rsp + 0x2c], 0
	jne	.label_707
	mov	eax, r13d
	and	eax, 0x10
	jne	.label_701
.label_707:
	cmp	dword ptr [rsp + 0x28], 0
	jne	.label_708
	and	r13d, 0x40
	je	.label_708
	nop	word ptr cs:[rax + rax]
.label_701:
	mov	rax, r12
	sub	rax, r8
	js	.label_710
	mov	rcx, qword ptr [r9 + 0x10]
	cmp	rcx, rax
	jle	.label_710
	dec	rcx
	mov	qword ptr [r9 + 0x10], rcx
	cmp	rcx, rax
	jle	.label_710
	lea	rax, [r12*8]
	add	rax, qword ptr [r9 + 0x18]
	mov	rcx, r8
	neg	rcx
	nop	
.label_722:
	mov	rdx, qword ptr [rax + rcx*8 + 8]
	mov	qword ptr [rax + rcx*8], rdx
	lea	rdx, [r12 + rcx + 1]
	inc	rcx
	cmp	rdx, qword ptr [r9 + 0x10]
	jl	.label_722
	nop	word ptr [rax + rax]
.label_710:
	inc	r8
.label_708:
	inc	r12
	cmp	r12, qword ptr [rsi + 8]
	jl	.label_728
.label_731:
	mov	rsi, r9
	mov	rdx, r14
	call	register_state
	mov	rbp, qword ptr [rsp + 0x10]
	test	eax, eax
	jne	.label_732
.label_726:
	mov	rax, rbp
	add	rsp, 0x38
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_721:
	mov	rdi, r9
	jmp	.label_735
.label_738:
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [rbx], xmm0
	jmp	.label_737
.label_732:
	mov	rdi, rbp
.label_735:
	call	free_state
.label_737:
	mov	r15, qword ptr [rsp + 0x18]
.label_705:
	mov	dword ptr [r15], 0xc
	jmp	.label_739
.label_715:
	call	free
	jmp	.label_705
	.section	.text
	.align	16
	#Procedure 0x4034f5
	.globl sub_4034f5
	.type sub_4034f5, @function
sub_4034f5:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403500

	.globl quotearg_colon
	.type quotearg_colon, @function
quotearg_colon:
	sub	rsp, 0x38
	mov	rax, rdi
	mov	rcx, qword ptr [rip + label_267]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0, xmmword ptr [rip + label_268]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_269]
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
	#Procedure 0x403555
	.globl sub_403555
	.type sub_403555, @function
sub_403555:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403560

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
	mov	rbx, rdx
	test	rcx, rcx
	mov	rbp, -1
	js	.label_743
	mov	qword ptr [rsp + 0x18], rsi
	mov	qword ptr [rsp + 0x10], r9
	cmp	rcx, rbx
	jg	.label_743
	xor	r12d, r12d
	add	r8, rcx
	js	.label_775
	mov	r12, r8
.label_775:
	mov	rbp, qword ptr [rsp + 0x60]
	cmp	r8, rbx
	cmovg	r12, rbx
	movzx	r13d, byte ptr [rdi + 0x38]
	cmp	r12, rcx
	mov	eax, r13d
	mov	qword ptr [rsp + 0x20], rcx
	mov	qword ptr [rsp + 8], rdi
	jle	.label_755
	test	r13b, 8
	mov	eax, r13d
	jne	.label_755
	mov	rax, qword ptr [rdi + 0x20]
	test	rax, rax
	mov	eax, r13d
	je	.label_755
	call	rpl_re_compile_fastmap
	mov	rdi, qword ptr [rsp + 8]
	mov	al, byte ptr [rdi + 0x38]
.label_755:
	xor	r14d, r14d
	test	rbp, rbp
	mov	r15d, 1
	je	.label_752
	mov	ecx, eax
	and	cl, 0x10
	jne	.label_752
	and	al, 6
	cmp	al, 4
	jne	.label_768
	mov	rax, qword ptr [rbp]
	mov	r15, qword ptr [rdi + 0x30]
	cmp	rax, r15
	ja	.label_776
	xor	r14d, r14d
	test	rax, rax
	jle	.label_747
	mov	r14, rbp
.label_747:
	mov	r15d, 1
	test	rax, rax
	jle	.label_752
	mov	r15, rax
	jmp	.label_752
.label_768:
	mov	r15, qword ptr [rdi + 0x30]
.label_776:
	inc	r15
	mov	r14, rbp
.label_752:
	mov	rdi, r15
	shl	rdi, 4
	call	malloc
	mov	rdi, qword ptr [rsp + 8]
	mov	rbp, -2
	test	rax, rax
	mov	rcx, qword ptr [rsp + 0x20]
	je	.label_743
	mov	edx, r13d
	shr	dl, 5
	and	dl, 1
	and	r13d, 0x40
	movzx	edx, dl
	shr	r13d, 5
	or	r13d, edx
	sub	rsp, 8
	mov	rsi, qword ptr [rsp + 0x20]
	mov	rdx, rbx
	mov	r8, r12
	mov	r9, qword ptr [rsp + 0x18]
	push	r13
	mov	r12, rax
	push	rax
	push	r15
	call	re_search_internal
	add	rsp, 0x20
	test	eax, eax
	je	.label_746
	xor	ebp, ebp
	cmp	eax, 1
	sete	bpl
	or	rbp, 0xfffffffffffffffe
	mov	rdi, r12
.label_744:
	call	free
.label_743:
	mov	rax, rbp
	add	rsp, 0x28
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_746:
	test	r14, r14
	mov	rdi, r12
	je	.label_759
	mov	r8, qword ptr [rsp + 8]
	mov	al, byte ptr [r8 + 0x38]
	shr	al, 1
	and	al, 3
	cmp	al, 2
	je	.label_762
	lea	rbx, [r15 + 1]
	cmp	al, 1
	je	.label_769
	test	al, al
	jne	.label_767
	lea	r13, [rbx*8]
	mov	rdi, r13
	call	malloc
	mov	qword ptr [r14 + 8], rax
	xor	ebp, ebp
	mov	qword ptr [rsp + 0x10], rax
	test	rax, rax
	je	.label_749
	mov	rdi, r13
	call	malloc
	mov	qword ptr [r14 + 0x10], rax
	test	rax, rax
	je	.label_774
	mov	qword ptr [r14], rbx
	mov	r13d, 1
.label_751:
	mov	r8, qword ptr [rsp + 8]
	mov	rdi, r12
	jmp	.label_748
.label_762:
	mov	rbx, qword ptr [r14]
	mov	r13d, 2
	cmp	rbx, r15
	jae	.label_748
	mov	edi, OFFSET FLAT:label_761
	mov	esi, OFFSET FLAT:label_546
	mov	edx, 0x1fb
	mov	ecx, OFFSET FLAT:label_754
	call	__assert_fail
.label_769:
	mov	rax, qword ptr [r14]
	mov	r13d, 1
	cmp	rbx, rax
	ja	.label_766
	mov	rbx, rax
.label_748:
	test	r15, r15
	jle	.label_770
	mov	rcx, qword ptr [r14 + 8]
	mov	rax, qword ptr [r14 + 0x10]
	mov	r9d, r15d
	and	r9d, 1
	xor	edx, edx
	cmp	r15, 1
	je	.label_773
	mov	rsi, r15
	sub	rsi, r9
	mov	rbp, rdi
	add	rbp, 0x18
	xor	edx, edx
	nop	word ptr [rax + rax]
.label_756:
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
	jne	.label_756
.label_773:
	test	r9, r9
	je	.label_765
	mov	rsi, rdx
	shl	rsi, 4
	mov	rbp, qword ptr [rdi + rsi]
	mov	qword ptr [rcx + rdx*8], rbp
	mov	rcx, qword ptr [rdi + rsi + 8]
	mov	qword ptr [rax + rdx*8], rcx
.label_765:
	mov	rbx, qword ptr [r14]
	jmp	.label_745
.label_770:
	xor	r15d, r15d
.label_745:
	cmp	r15, rbx
	jae	.label_758
	mov	rax, qword ptr [r14 + 8]
	mov	rcx, qword ptr [r14 + 0x10]
	nop	word ptr cs:[rax + rax]
.label_750:
	mov	qword ptr [rcx + r15*8], -1
	mov	qword ptr [rax + r15*8], -1
	inc	r15
	cmp	r15, qword ptr [r14]
	jb	.label_750
.label_758:
	mov	ebp, r13d
.label_764:
	mov	al, byte ptr [r8 + 0x38]
	add	bpl, bpl
	and	al, 0xf9
	mov	ecx, ebp
	and	cl, 6
	or	cl, al
	and	bpl, 6
	mov	byte ptr [r8 + 0x38], cl
	mov	rbp, -2
	je	.label_744
.label_759:
	mov	al, byte ptr [rsp + 0x68]
	mov	rbp, qword ptr [rdi]
	test	al, al
	je	.label_744
	mov	rax, qword ptr [rsp + 0x20]
	cmp	rbp, rax
	jne	.label_760
	mov	rbp, qword ptr [rdi + 8]
	sub	rbp, rax
	jmp	.label_744
.label_766:
	mov	rdi, qword ptr [r14 + 8]
	lea	rsi, [rbx*8]
	mov	qword ptr [rsp + 0x10], rsi
	call	realloc
	xor	ebp, ebp
	mov	qword ptr [rsp + 0x18], rax
	test	rax, rax
	je	.label_749
	mov	rdi, qword ptr [r14 + 0x10]
	mov	rsi, qword ptr [rsp + 0x10]
	call	realloc
	test	rax, rax
	je	.label_757
	mov	rcx, qword ptr [rsp + 0x18]
	mov	qword ptr [r14 + 8], rcx
	mov	qword ptr [r14 + 0x10], rax
	mov	qword ptr [r14], rbx
	jmp	.label_751
.label_774:
	mov	rdi, qword ptr [rsp + 0x10]
.label_763:
	call	free
.label_749:
	mov	r8, qword ptr [rsp + 8]
	mov	rdi, r12
	jmp	.label_764
.label_767:
	mov	edi, OFFSET FLAT:label_753
	mov	esi, OFFSET FLAT:label_546
	mov	edx, 0x1f9
	mov	ecx, OFFSET FLAT:label_754
	call	__assert_fail
.label_760:
	mov	edi, OFFSET FLAT:label_771
	mov	esi, OFFSET FLAT:label_546
	mov	edx, 0x1be
	mov	ecx, OFFSET FLAT:label_772
	call	__assert_fail
.label_757:
	mov	rdi, qword ptr [rsp + 0x18]
	jmp	.label_763
	.section	.text
	.align	16
	#Procedure 0x403913
	.globl sub_403913
	.type sub_403913, @function
sub_403913:

	nop	word ptr cs:[rax + rax]
.label_777:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x403925
	.globl quotearg_custom
	.type quotearg_custom, @function
quotearg_custom:

	sub	rsp, 0x38
	mov	rax, rdx
	mov	rcx, qword ptr [rip + label_267]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0, xmmword ptr [rip + label_268]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_269]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rdi, rdi
	je	.label_777
	test	rsi, rsi
	je	.label_777
	mov	qword ptr [rsp + 0x28], rdi
	mov	qword ptr [rsp + 0x30], rsi
	lea	rcx, [rsp]
	xor	edi, edi
	mov	rdx, -1
	mov	rsi, rax
	call	quotearg_n_options
	add	rsp, 0x38
	ret	
.label_778:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x403995
	.globl sub_403995
	.type sub_403995, @function
sub_403995:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4039a3
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
	je	.label_779
	test	r15, r15
	je	.label_778
.label_779:
	mov	rdi, r15
	mov	rsi, r14
	mov	rdx, rbx
	call	memcpy
	mov	rax, r15
	pop	rbx
	pop	r14
	pop	r15
	ret	
.label_783:
	cmp	byte ptr [rbx], 0x60
	mov	ecx, OFFSET FLAT:label_780
	mov	eax, OFFSET FLAT:label_781
	jmp	.label_782
	.section	.text
	.align	16
	#Procedure 0x4039ef
	.globl sub_4039ef
	.type sub_4039ef, @function
sub_4039ef:

	nop	word ptr cs:[rax + rax]
.label_789:
	movsx	ecx, byte ptr [rax + 1]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x42
	jne	.label_784
	cmp	byte ptr [rax + 2], 0x31
	jne	.label_784
	cmp	byte ptr [rax + 3], 0x38
	jne	.label_784
	cmp	byte ptr [rax + 4], 0x30
	jne	.label_784
	cmp	byte ptr [rax + 5], 0x33
	jne	.label_784
	cmp	byte ptr [rax + 6], 0x30
	jne	.label_784
	cmp	byte ptr [rax + 7], 0
	je	.label_783
.label_784:
	cmp	ebp, 9
	mov	ecx, OFFSET FLAT:label_785
	mov	eax, OFFSET FLAT:label_786
.label_782:
	cmove	rax, rcx
.label_790:
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x403a42

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
	jne	.label_790
	call	locale_charset
	movsx	ecx, byte ptr [rax]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x47
	je	.label_789
	cmp	ecx, 0x55
	jne	.label_784
	movsx	ecx, byte ptr [rax + 1]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x54
	jne	.label_784
	movsx	ecx, byte ptr [rax + 2]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x46
	jne	.label_784
	cmp	byte ptr [rax + 3], 0x2d
	jne	.label_784
	cmp	byte ptr [rax + 4], 0x38
	jne	.label_784
	cmp	byte ptr [rax + 5], 0
	jne	.label_784
	cmp	byte ptr [rbx], 0x60
	mov	ecx, OFFSET FLAT:label_787
	mov	eax, OFFSET FLAT:label_788
	jmp	.label_782
	.section	.text
	.align	16
	#Procedure 0x403ab0
	.globl xnmalloc
	.type xnmalloc, @function
xnmalloc:

	push	rbx
	mov	rbx, rsi
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rdi
	jb	.label_791
	imul	rbx, rdi
	mov	rdi, rbx
	call	malloc
	test	rbx, rbx
	je	.label_792
	test	rax, rax
	je	.label_791
.label_792:
	pop	rbx
	ret	
.label_791:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x403ae5
	.globl sub_403ae5
	.type sub_403ae5, @function
sub_403ae5:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403af0
	.globl close_stdout_set_file_name
	.type close_stdout_set_file_name, @function
close_stdout_set_file_name:

	mov	qword ptr [rip + file_name],  rdi
	ret	
	.section	.text
	.align	16
	#Procedure 0x403af8
	.globl sub_403af8
	.type sub_403af8, @function
sub_403af8:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403b00

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
	ja	.label_793
	xor	eax, eax
	jmp	qword ptr [(rbx * 8) + label_802]
.label_2226:
	mov	r14, qword ptr [rdi + 0x28]
	lea	rbx, [rcx + rcx*2]
	mov	rax, qword ptr [rsi + 0x20]
	mov	r15, qword ptr [rax + 0x38]
	movaps	xmm0, xmmword ptr [rip + label_806]
	movups	xmmword ptr [r14 + rbx*8], xmm0
	mov	edi, 8
	call	malloc
	mov	qword ptr [r14 + rbx*8 + 0x10], rax
	test	rax, rax
	je	.label_798
	mov	qword ptr [rax], r15
	jmp	.label_797
.label_2227:
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
	js	.label_803
	mov	rax, qword ptr [rax]
	mov	r15, qword ptr [rax + 0x38]
	test	r15, r15
	js	.label_796
	mov	r12, qword ptr [rdi + 0x28]
	lea	rbx, [rcx + rcx*2]
	mov	qword ptr [r12 + rbx*8], 2
	mov	edi, 0x10
	call	malloc
	mov	rcx, rax
	mov	qword ptr [r12 + rbx*8 + 0x10], rcx
	mov	eax, 0xc
	test	rcx, rcx
	je	.label_795
	lea	rax, [r12 + rbx*8 + 8]
	cmp	r14, r15
	jne	.label_801
	mov	qword ptr [rax], 1
	mov	qword ptr [rcx], r14
	jmp	.label_797
.label_2224:
	cmp	qword ptr [rsi + 0x20], 0
	mov	eax, 0
	je	.label_795
	mov	edi, OFFSET FLAT:label_1213
	mov	esi, OFFSET FLAT:label_524
	mov	edx, 0x59f
	mov	ecx, OFFSET FLAT:label_800
	call	__assert_fail
.label_2225:
	mov	rax, qword ptr [rsi + 0x20]
	mov	rbx, qword ptr [rax + 0x38]
	mov	rax, qword ptr [rdi + 0x18]
	mov	qword ptr [rax + rcx*8], rbx
	cmp	byte ptr [rsi + 0x30], 4
	jne	.label_797
	mov	r14, qword ptr [rdi + 0x28]
	lea	r15, [rcx + rcx*2]
	movaps	xmm0, xmmword ptr [rip + label_806]
	movups	xmmword ptr [r14 + r15*8], xmm0
	mov	edi, 8
	call	malloc
	mov	qword ptr [r14 + r15*8 + 0x10], rax
	test	rax, rax
	je	.label_1235
	mov	qword ptr [rax], rbx
	jmp	.label_797
.label_793:
	test	dl, 8
	jne	.label_804
	mov	rax, qword ptr [rsi + 0x20]
	mov	rax, qword ptr [rax + 0x38]
	mov	rdx, qword ptr [rdi + 0x18]
	mov	qword ptr [rdx + rcx*8], rax
	jmp	.label_797
.label_801:
	mov	qword ptr [rax], 2
	jge	.label_794
	mov	qword ptr [rcx], r14
	mov	qword ptr [rcx + 8], r15
	jmp	.label_797
.label_794:
	mov	qword ptr [rcx], r15
	mov	qword ptr [rcx + 8], r14
.label_797:
	xor	eax, eax
.label_795:
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
.label_798:
	lea	rax, [r14 + rbx*8]
.label_1214:
	xorps	xmm0, xmm0
	movups	xmmword ptr [rax], xmm0
	mov	eax, 0xc
	jmp	.label_795
.label_1235:
	lea	rax, [r14 + r15*8]
	jmp	.label_1214
.label_803:
	mov	edi, OFFSET FLAT:label_807
	mov	esi, OFFSET FLAT:label_524
	mov	edx, 0x5af
	mov	ecx, OFFSET FLAT:label_800
	call	__assert_fail
.label_796:
	mov	edi, OFFSET FLAT:label_799
	mov	esi, OFFSET FLAT:label_524
	mov	edx, 0x5b0
	mov	ecx, OFFSET FLAT:label_800
	call	__assert_fail
.label_804:
	mov	edi, OFFSET FLAT:label_805
	mov	esi, OFFSET FLAT:label_524
	mov	edx, 0x5c2
	mov	ecx, OFFSET FLAT:label_800
	call	__assert_fail
	.section	.text
	.align	16
	#Procedure 0x403d0a
	.globl sub_403d0a
	.type sub_403d0a, @function
sub_403d0a:

	nop	word ptr [rax + rax]
.label_809:
	mov	eax, ebx
.label_808:
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x403d1d
	.globl sub_403d1d
	.type sub_403d1d, @function
sub_403d1d:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403d2c

	.globl fd_safer
	.type fd_safer, @function
fd_safer:
	push	rbp
	push	r15
	push	r14
	push	rbx
	push	rax
	mov	ebx, edi
	cmp	ebx, 2
	ja	.label_809
	mov	edi, ebx
	call	dup_safer
	mov	r14d, eax
	call	__errno_location
	mov	rbp, rax
	mov	r15d, dword ptr [rbp]
	mov	edi, ebx
	call	close
	mov	dword ptr [rbp], r15d
	mov	eax, r14d
	jmp	.label_808
	.section	.text
	.align	16
	#Procedure 0x403d60
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
	#Procedure 0x403d96
	.globl sub_403d96
	.type sub_403d96, @function
sub_403d96:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403da0
	.globl quote_n_mem
	.type quote_n_mem, @function
quote_n_mem:

	mov	ecx, OFFSET FLAT:quote_quoting_options
	jmp	quotearg_n_options
	.section	.text
	.align	16
	#Procedure 0x403daa
	.globl sub_403daa
	.type sub_403daa, @function
sub_403daa:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403db0
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
	#Procedure 0x403dbf
	.globl sub_403dbf
	.type sub_403dbf, @function
sub_403dbf:

	nop	
.label_812:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_810
	test	rax, rax
	je	.label_811
.label_810:
	pop	rbx
	ret	
	.section	.text
	.align	16
	#Procedure 0x403dd4

	.globl xrealloc
	.type xrealloc, @function
xrealloc:
	push	rbx
	mov	rbx, rsi
	test	rdi, rdi
	je	.label_812
	test	rbx, rbx
	jne	.label_812
	call	free
	xor	eax, eax
	pop	rbx
	ret	
.label_811:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x403df0

	.globl mkstemp_safer
	.type mkstemp_safer, @function
mkstemp_safer:
	push	rax
	call	mkstemp
	mov	edi, eax
	pop	rax
	jmp	fd_safer
	.section	.text
	.align	16
	#Procedure 0x403dfe
	.globl sub_403dfe
	.type sub_403dfe, @function
sub_403dfe:

	nop	
	.section	.text
	.align	16
	#Procedure 0x403e00

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
	je	.label_813
	mov	rdi, qword ptr [rax + 0x10]
	call	free
	mov	rdi, qword ptr [rbx + 0x50]
	call	free
.label_813:
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
	#Procedure 0x403e59
	.globl sub_403e59
	.type sub_403e59, @function
sub_403e59:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x403e60
	.globl rpl_re_set_syntax
	.type rpl_re_set_syntax, @function
rpl_re_set_syntax:

	mov	rax, qword ptr [rip + rpl_re_syntax_options]
	mov	qword ptr [rip + rpl_re_syntax_options],  rdi
	ret	
	.section	.text
	.align	16
	#Procedure 0x403e6f
	.globl sub_403e6f
	.type sub_403e6f, @function
sub_403e6f:

	nop	
	.section	.text
	.align	16
	#Procedure 0x403e70

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
	je	.label_814
	cmp	r15, -2
	jb	.label_814
	xor	edi, edi
	call	hard_locale
	test	al, al
	jne	.label_814
	movzx	eax, byte ptr [r14]
	mov	dword ptr [rbx], eax
	mov	r15d, 1
.label_814:
	mov	rax, r15
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	16
	#Procedure 0x403ec6
	.globl sub_403ec6
	.type sub_403ec6, @function
sub_403ec6:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403ed0
	.globl version_etc_ar
	.type version_etc_ar, @function
version_etc_ar:

	mov	r9, -1
	nop	word ptr [rax + rax]
.label_815:
	cmp	qword ptr [r8 + r9*8 + 8], 0
	lea	r9, [r9 + 1]
	jne	.label_815
	jmp	version_etc_arn
	.section	.text
	.align	16
	#Procedure 0x403ef1
	.globl sub_403ef1
	.type sub_403ef1, @function
sub_403ef1:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403f00

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
	jae	.label_816
.label_817:
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
	jne	.label_821
	mov	cl, 1
	cmp	dword ptr [rbx + 0xb4], 1
	jg	.label_819
.label_821:
	cmp	eax, 6
	sete	cl
.label_819:
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
.label_818:
	mov	rax, r15
	add	rsp, 0x18
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_816:
	lea	rcx, [r13 + r13]
	mov	r15, -1
	movabs	rax, 0xaaaaaaaaaaaaaaa
	cmp	rcx, rax
	ja	.label_818
	mov	qword ptr [rsp + 0x10], rcx
	mov	rdi, qword ptr [rbx]
	mov	rsi, r13
	shl	rsi, 5
	call	realloc
	test	rax, rax
	je	.label_818
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
	je	.label_820
	test	rax, rax
	je	.label_820
	test	r13, r13
	je	.label_820
	test	rbp, rbp
	je	.label_820
	mov	qword ptr [rbx + 0x18], rdi
	mov	qword ptr [rbx + 0x20], rax
	mov	qword ptr [rbx + 0x28], r13
	mov	qword ptr [rbx + 0x30], rbp
	mov	rax, qword ptr [rsp + 0x10]
	mov	qword ptr [rbx + 8], rax
	mov	rax, qword ptr [rbx + 0x10]
	jmp	.label_817
.label_820:
	mov	rbx, rax
	call	free
	mov	rdi, rbx
	call	free
	mov	rdi, r13
	call	free
	mov	rdi, rbp
	call	free
	jmp	.label_818
	.section	.text
	.align	16
	#Procedure 0x4040cb
	.globl sub_4040cb
	.type sub_4040cb, @function
sub_4040cb:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4040d0

	.globl locale_charset
	.type locale_charset, @function
locale_charset:
	push	rax
	mov	edi, 0xe
	call	rpl_nl_langinfo
	test	rax, rax
	mov	ecx, OFFSET FLAT:label_316
	cmovne	rcx, rax
	cmp	byte ptr [rcx], 0
	mov	eax, OFFSET FLAT:label_822
	cmovne	rax, rcx
	pop	rcx
	ret	
	.section	.text
	.align	16
	#Procedure 0x4040f5
	.globl sub_4040f5
	.type sub_4040f5, @function
sub_4040f5:

	nop	word ptr cs:[rax + rax]
.label_823:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x404105
	.globl sub_404105
	.type sub_404105, @function
sub_404105:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x404109
	.globl quotearg_custom_mem
	.type quotearg_custom_mem, @function
quotearg_custom_mem:

	sub	rsp, 0x38
	mov	rax, qword ptr [rip + label_267]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0, xmmword ptr [rip + label_268]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_269]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rdi, rdi
	je	.label_823
	test	rsi, rsi
	je	.label_823
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
	#Procedure 0x404170

	.globl quotearg_buffer_restyled
	.type quotearg_buffer_restyled, @function
quotearg_buffer_restyled:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0xb8
	mov	ebx, r9d
	mov	r15d, r8d
	mov	qword ptr [rsp + 0x20], rcx
	mov	qword ptr [rsp + 0x30], rdx
	mov	rbp, rsi
	mov	qword ptr [rsp + 8], rdi
	mov	rax, qword ptr [rsp + 0x100]
	mov	qword ptr [rsp + 0x70], rax
	mov	rax, qword ptr [rsp + 0xf8]
	mov	qword ptr [rsp + 0x78], rax
	call	__ctype_get_mb_cur_max
	mov	qword ptr [rsp + 0xa8], rax
	mov	r12d, ebx
	shr	r12b, 1
	and	r12b, 1
	mov	eax, ebx
	and	eax, 1
	mov	dword ptr [rsp + 0x90], eax
	mov	dword ptr [rsp + 0x18], ebx
	and	ebx, 4
	mov	dword ptr [rsp + 0x8c], ebx
	mov	r10b, 1
	mov	eax, 0
	mov	qword ptr [rsp + 0x68], rax
	mov	eax, 0
	mov	qword ptr [rsp + 0x48], rax
	mov	eax, 0
	mov	qword ptr [rsp + 0x40], rax
	mov	eax, 0
	xor	r9d, r9d
	xor	ecx, ecx
	mov	qword ptr [rsp + 0xa0], rcx
.label_836:
	mov	r11, rbp
	xor	r14d, r14d
	mov	ecx, r15d
	cmp	r15d, 0xa
	ja	.label_834
	mov	edi, 7
	mov	r13b, 1
	xor	esi, esi
	mov	r8, qword ptr [rsp + 0x30]
	jmp	qword ptr [(rcx * 8) + label_839]
.label_2287:
	mov	byte ptr [rsp + 7], r10b
	mov	edi, OFFSET FLAT:label_846
	mov	esi, r15d
	mov	rbx, r11
	mov	ebp, r9d
	call	gettext_quote
	mov	qword ptr [rsp + 0x78], rax
	mov	edi, OFFSET FLAT:label_786
	mov	esi, r15d
	call	gettext_quote
	mov	r9d, ebp
	mov	r10b, byte ptr [rsp + 7]
	mov	r11, rbx
	mov	qword ptr [rsp + 0x70], rax
.label_2288:
	mov	dword ptr [rsp + 0x50], r9d
	mov	byte ptr [rsp + 7], r10b
	test	r12b, 1
	mov	r14d, 0
	mov	rcx, qword ptr [rsp + 0x78]
	jne	.label_861
	mov	al, byte ptr [rcx]
	test	al, al
	mov	r14d, 0
	je	.label_861
	xor	r14d, r14d
	nop	word ptr cs:[rax + rax]
.label_875:
	cmp	r14, r11
	jae	.label_874
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + r14], al
.label_874:
	movzx	eax, byte ptr [rcx + r14 + 1]
	inc	r14
	test	al, al
	jne	.label_875
.label_861:
	mov	rbp, qword ptr [rsp + 0x70]
	mov	rdi, rbp
	mov	rbx, r11
	call	strlen
	mov	r11, rbx
	mov	qword ptr [rsp + 0x40], rax
	mov	edi, r15d
	mov	qword ptr [rsp + 0x48], rbp
	mov	r13b, 1
	mov	sil, r12b
	mov	r8, qword ptr [rsp + 0x30]
	mov	r10b, byte ptr [rsp + 7]
	mov	r9d, dword ptr [rsp + 0x50]
	jmp	.label_882
.label_2280:
	xor	edi, edi
	xor	r14d, r14d
	mov	r13d, eax
	xor	esi, esi
	jmp	.label_882
.label_2283:
	mov	al, 1
.label_2281:
	mov	r12b, 1
.label_2284:
	test	r12b, 1
	mov	cl, 1
	je	.label_893
	mov	ecx, eax
.label_893:
	mov	al, cl
.label_2282:
	test	r12b, 1
	jne	.label_895
	test	r11, r11
	je	.label_896
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx], 0x27
.label_896:
	mov	r14d, 1
	jmp	.label_898
.label_895:
	xor	r14d, r14d
.label_898:
	mov	ecx, OFFSET FLAT:label_786
	mov	qword ptr [rsp + 0x48], rcx
	mov	ecx, 1
	mov	qword ptr [rsp + 0x40], rcx
	mov	r13d, eax
	mov	sil, r12b
	mov	edi, 2
	jmp	.label_882
.label_2285:
	test	r12b, 1
	jne	.label_910
	test	r11, r11
	je	.label_913
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax], 0x22
.label_913:
	mov	r14d, 1
	jmp	.label_916
.label_2286:
	mov	r13b, 1
	mov	edi, 5
	xor	r14d, r14d
	mov	eax, OFFSET FLAT:label_785
	mov	qword ptr [rsp + 0x48], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0x40], rax
	mov	sil, 1
	jmp	.label_882
.label_910:
	xor	r14d, r14d
.label_916:
	mov	eax, OFFSET FLAT:label_785
	mov	qword ptr [rsp + 0x48], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0x40], rax
	mov	r13b, 1
	mov	sil, r12b
	mov	edi, 5
	nop	word ptr cs:[rax + rax]
.label_882:
	cmp	qword ptr [rsp + 0xf0], 0
	setne	r12b
	cmp	edi, 2
	setne	r15b
	sete	al
	mov	ecx, r13d
	and	cl, 1
	sete	byte ptr [rsp + 0x2a]
	mov	edx, r15d
	mov	byte ptr [rsp + 0x17], cl
	and	dl, cl
	cmp	qword ptr [rsp + 0x40], 0
	setne	cl
	mov	ebx, ecx
	mov	byte ptr [rsp + 0x2e], dl
	and	bl, dl
	mov	byte ptr [rsp + 0x2f], bl
	mov	edx, esi
	and	dl, 1
	sete	bl
	and	al, dl
	mov	byte ptr [rsp + 0x2b], al
	mov	byte ptr [rsp + 6], dl
	and	r12b, dl
	mov	byte ptr [rsp + 0x2d], r12b
	or	bl, r15b
	mov	byte ptr [rsp + 0x1f], bl
	mov	byte ptr [rsp + 0x2c], r13b
	mov	qword ptr [rsp + 0xb0], rsi
	and	r13b, sil
	and	r13b, cl
	mov	byte ptr [rsp + 0x29], r13b
	xor	esi, esi
	mov	qword ptr [rsp + 0x38], rdi
	mov	rbp, qword ptr [rsp + 0x20]
	mov	r12, rdi
	mov	rdi, r8
	jmp	.label_935
	.section	.text
	.align	16
	#Procedure 0x40445d
	.globl sub_40445d
	.type sub_40445d, @function
sub_40445d:

	nop	dword ptr [rax]
.label_877:
	inc	rsi
.label_935:
	cmp	rbp, -1
	je	.label_853
	cmp	rsi, rbp
	jne	.label_855
	jmp	.label_856
	.section	.text
	.align	16
	#Procedure 0x404473
	.globl sub_404473
	.type sub_404473, @function
sub_404473:

	nop	word ptr cs:[rax + rax]
.label_853:
	mov	rcx, -1
	cmp	byte ptr [rdi + rsi], 0
	je	.label_862
.label_855:
	cmp	byte ptr [rsp + 0x2f], 0
	je	.label_912
	mov	rax, qword ptr [rsp + 0x40]
	lea	rbx, [rsi + rax]
	cmp	rax, 2
	jb	.label_868
	cmp	rbp, -1
	jne	.label_868
	mov	r15d, r10d
	mov	rbp, r11
	mov	r13d, r9d
	mov	r12, r14
	mov	r14, rsi
	call	strlen
	mov	rsi, r14
	mov	r14, r12
	mov	r9d, r13d
	mov	r12, qword ptr [rsp + 0x38]
	mov	r10d, r15d
	mov	r11, rbp
	mov	rdi, qword ptr [rsp + 0x30]
	mov	rbp, rax
.label_868:
	cmp	rbx, rbp
	jbe	.label_897
.label_912:
	xor	r8d, r8d
.label_883:
	movzx	r15d, byte ptr [rdi + rsi]
	cmp	r15, 0x7e
	ja	.label_908
	xor	edx, edx
	mov	r13b, 1
	mov	cl, 0x6e
	mov	bl, 0x61
	xor	eax, eax
	jmp	qword ptr [(r15 * 8) + label_886]
.label_2264:
	test	rsi, rsi
	jne	.label_878
	jmp	.label_892
	.section	.text
	.align	16
	#Procedure 0x404515
	.globl sub_404515
	.type sub_404515, @function
sub_404515:

	nop	word ptr cs:[rax + rax]
.label_897:
	mov	qword ptr [rsp + 0x20], rbp
	mov	ebp, r9d
	mov	r15d, r10d
	mov	rbx, r11
	mov	r12, rsi
	lea	rdi, [rdi + rsi]
	mov	rsi, qword ptr [rsp + 0x48]
	mov	rdx, qword ptr [rsp + 0x40]
	call	memcmp
	test	eax, eax
	sete	r8b
	jne	.label_902
	cmp	byte ptr [rsp + 6], 0
	mov	rdi, qword ptr [rsp + 0x30]
	mov	r11, rbx
	mov	r10d, r15d
	mov	rax, qword ptr [rsp + 0x38]
	mov	r9d, ebp
	mov	rsi, r12
	mov	r12, rax
	mov	rbp, qword ptr [rsp + 0x20]
	je	.label_883
	jmp	.label_900
.label_902:
	mov	rdi, qword ptr [rsp + 0x30]
	mov	r11, rbx
	mov	r10d, r15d
	mov	rax, qword ptr [rsp + 0x38]
	mov	r9d, ebp
	mov	rsi, r12
	mov	r12, rax
	mov	rbp, qword ptr [rsp + 0x20]
	jmp	.label_883
.label_2268:
	xor	eax, eax
	cmp	rbp, -1
	je	.label_926
	test	rsi, rsi
	jne	.label_928
	cmp	rbp, 1
	je	.label_892
	xor	r13d, r13d
	jmp	.label_833
.label_2257:
	cmp	byte ptr [rsp + 0x17], 0
	je	.label_933
	cmp	byte ptr [rsp + 6], 0
	jne	.label_876
	cmp	r12d, 2
	jne	.label_937
	mov	eax, r9d
	and	al, 1
	jne	.label_937
	cmp	r14, r11
	jae	.label_939
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_939:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_934
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x24
.label_934:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_840
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_840:
	add	r14, 3
	mov	r9b, 1
.label_937:
	mov	rcx, r14
	cmp	rcx, r11
	jae	.label_837
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + rcx], 0x5c
.label_837:
	lea	r14, [rcx + 1]
	mov	al, 1
	mov	r15b, 0x30
	cmp	r12d, 2
	je	.label_841
	lea	rdx, [rsi + 1]
	cmp	rdx, rbp
	jae	.label_841
	mov	dl, byte ptr [rdi + rdx]
	add	dl, 0xd0
	cmp	dl, 9
	ja	.label_841
	cmp	r14, r11
	jae	.label_925
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + r14], 0x30
.label_925:
	lea	rdx, [rcx + 2]
	cmp	rdx, r11
	jae	.label_880
	mov	rbx, qword ptr [rsp + 8]
	mov	byte ptr [rbx + rdx], 0x30
.label_880:
	add	rcx, 3
	xor	r13d, r13d
	mov	r14, rcx
	jmp	.label_833
.label_2258:
	mov	bl, 0x62
	jmp	.label_866
.label_2259:
	mov	cl, 0x74
	jmp	.label_832
.label_2260:
	mov	bl, 0x76
	jmp	.label_866
.label_2261:
	mov	bl, 0x66
	jmp	.label_866
.label_2262:
	mov	cl, 0x72
	jmp	.label_832
.label_2265:
	mov	r15b, 0x27
	mov	al, 1
	mov	qword ptr [rsp + 0xa0], rax
	cmp	r12d, 2
	jne	.label_873
	cmp	byte ptr [rsp + 6], 0
	jne	.label_842
	test	r11, r11
	sete	al
	mov	rcx, qword ptr [rsp + 0x68]
	mov	rdx, rcx
	test	rdx, rdx
	setne	cl
	or	cl, al
	cmove	rdx, r11
	mov	qword ptr [rsp + 0x68], rdx
	mov	eax, 0
	cmove	r11, rax
	cmp	r14, r11
	jae	.label_881
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_881:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_890
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x5c
.label_890:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_894
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_894:
	add	r14, 3
	xor	r9d, r9d
.label_873:
	xor	eax, eax
	mov	r13b, 1
	jmp	.label_833
.label_2266:
	mov	r15b, 0x3f
	cmp	r12d, 5
	je	.label_899
	cmp	r12d, 2
	jne	.label_878
	cmp	byte ptr [rsp + 6], 0
	je	.label_878
	jmp	.label_842
.label_2267:
	cmp	r12d, 2
	jne	.label_911
	cmp	byte ptr [rsp + 6], 0
	jne	.label_842
	mov	r15b, 0x5c
	xor	eax, eax
	xor	r13d, r13d
	jmp	.label_864
.label_908:
	mov	dword ptr [rsp + 0x54], r8d
	mov	dword ptr [rsp + 0x50], r9d
	mov	byte ptr [rsp + 7], r10b
	mov	qword ptr [rsp + 0x98], r11
	cmp	qword ptr [rsp + 0xa8], 1
	jne	.label_923
	mov	qword ptr [rsp + 0x20], rbp
	mov	rbx, rsi
	call	__ctype_b_loc
	mov	rsi, rbx
	mov	rdi, qword ptr [rsp + 0x30]
	mov	rax, qword ptr [rax]
	movzx	r13d, word ptr [rax + r15*2]
	shr	r13d, 0xe
	and	r13b, 1
	mov	r12d, 1
.label_872:
	and	r13b, 1
	mov	r8d, r13d
	or	r8b, byte ptr [rsp + 0x2a]
	mov	qword ptr [rsp + 0x60], r12
	cmp	r12, 1
	mov	r11, qword ptr [rsp + 0x98]
	mov	r10b, byte ptr [rsp + 7]
	mov	r12, qword ptr [rsp + 0x38]
	mov	r9d, dword ptr [rsp + 0x50]
	ja	.label_827
	test	r8b, r8b
	je	.label_827
	xor	eax, eax
	mov	rbp, qword ptr [rsp + 0x20]
	mov	r8d, dword ptr [rsp + 0x54]
	jmp	.label_833
.label_926:
	test	rsi, rsi
	jne	.label_838
	mov	cl, byte ptr [rdi + 1]
	test	cl, cl
	jne	.label_838
.label_892:
	mov	dl, 1
.label_2263:
	cmp	byte ptr [rsp + 0x1f], 0
	je	.label_842
	xor	eax, eax
	mov	r13b, dl
	nop	word ptr [rax + rax]
.label_833:
	cmp	byte ptr [rsp + 0x2e], 0
	je	.label_848
	cmp	qword ptr [rsp + 0xf0], 0
	jne	.label_849
	jmp	.label_852
	.section	.text
	.align	16
	#Procedure 0x404864
	.globl sub_404864
	.type sub_404864, @function
sub_404864:

	nop	word ptr cs:[rax + rax]
.label_848:
	cmp	byte ptr [rsp + 0x2d], 0
	je	.label_852
.label_849:
	mov	ebx, r8d
	mov	r8, rsi
	mov	ecx, r15d
	shr	cl, 5
	movzx	edx, cl
	mov	esi, 1
	mov	ecx, r15d
	shl	esi, cl
	test	bl, bl
	jne	.label_859
	mov	rcx, qword ptr [rsp + 0xf0]
	and	esi, dword ptr [rcx + rdx*4]
	mov	ebx, r15d
	mov	rsi, r8
	je	.label_864
	jmp	.label_871
	.section	.text
	.align	16
	#Procedure 0x4048ad
	.globl sub_4048ad
	.type sub_4048ad, @function
sub_4048ad:

	nop	dword ptr [rax]
.label_852:
	test	r8b, r8b
	mov	ebx, r15d
	jne	.label_871
	jmp	.label_864
.label_859:
	mov	ebx, r15d
	mov	rsi, r8
	jmp	.label_871
.label_933:
	cmp	dword ptr [rsp + 0x90], 0
	jne	.label_877
	xor	r15d, r15d
	jmp	.label_878
.label_911:
	mov	cl, 0x5c
	cmp	byte ptr [rsp + 0x29], 0
	je	.label_832
	xor	eax, eax
	mov	r15b, 0x5c
	xor	r13d, r13d
	jmp	.label_864
.label_832:
	cmp	byte ptr [rsp + 0x1f], 0
	mov	ebx, ecx
	je	.label_842
.label_866:
	xor	eax, eax
	cmp	byte ptr [rsp + 0x17], 0
	mov	r13d, 0
	je	.label_833
	nop	word ptr cs:[rax + rax]
.label_871:
	cmp	byte ptr [rsp + 6], 0
	jne	.label_876
	cmp	r12d, 2
	jne	.label_888
	mov	eax, r9d
	and	al, 1
	jne	.label_888
	cmp	r14, r11
	jae	.label_905
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_905:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_903
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x24
.label_903:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_914
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_914:
	add	r14, 3
	mov	r9b, 1
.label_888:
	cmp	r14, r11
	jae	.label_858
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x5c
.label_858:
	inc	r14
	jmp	.label_920
.label_923:
	mov	qword ptr [rsp + 0x80], 0
	cmp	rbp, -1
	jne	.label_924
	mov	rbx, rsi
	call	strlen
	mov	rsi, rbx
	mov	rdi, qword ptr [rsp + 0x30]
	mov	rbp, rax
.label_924:
	lea	rax, [rdi + rsi]
	mov	qword ptr [rsp + 0x60], rax
	mov	r13b, 1
	xor	r12d, r12d
	lea	rax, [rsp + 0x80]
	mov	rcx, rax
	mov	qword ptr [rsp + 0x20], rbp
	mov	qword ptr [rsp + 0x58], rsi
.label_917:
	lea	rbx, [r12 + rsi]
	lea	rsi, [rdi + rbx]
	mov	rdx, rbp
	sub	rdx, rbx
	lea	rdi, [rsp + 0x94]
	call	rpl_mbrtowc
	mov	rbp, rax
	test	rbp, rbp
	je	.label_940
	cmp	rbp, -1
	movabs	rsi, 0x20000002b
	je	.label_942
	cmp	rbp, -2
	je	.label_830
	cmp	rbp, 1
	seta	al
	and	al, byte ptr [rsp + 0x2b]
	cmp	al, 1
	mov	rdi, qword ptr [rsp + 0x30]
	mov	r11, qword ptr [rsp + 0x98]
	jne	.label_889
	mov	rax, qword ptr [rsp + 0x60]
	lea	rax, [rax + r12]
	mov	ecx, 1
	nop	word ptr cs:[rax + rax]
.label_854:
	movsx	edx, byte ptr [rax + rcx]
	add	edx, -0x5b
	cmp	edx, 0x21
	ja	.label_938
	bt	rsi, rdx
	jb	.label_851
.label_938:
	inc	rcx
	cmp	rcx, rbp
	jb	.label_854
.label_889:
	mov	edi, dword ptr [rsp + 0x94]
	call	iswprint
	test	eax, eax
	jne	.label_870
	xor	r13d, r13d
.label_870:
	lea	rdi, [rsp + 0x80]
	add	r12, rbp
	mov	rbx, rdi
	call	mbsinit
	mov	rcx, rbx
	test	eax, eax
	mov	rdi, qword ptr [rsp + 0x30]
	mov	rbp, qword ptr [rsp + 0x20]
	mov	rsi, qword ptr [rsp + 0x58]
	je	.label_917
	jmp	.label_872
.label_841:
	xor	r13d, r13d
	jmp	.label_833
.label_838:
	mov	rbp, -1
	xor	r13d, r13d
	jmp	.label_833
.label_899:
	cmp	dword ptr [rsp + 0x8c], 0
	je	.label_878
	lea	rcx, [rsi + 2]
	cmp	rcx, rbp
	jae	.label_878
	cmp	byte ptr [rdi + rsi + 1], 0x3f
	jne	.label_878
	movsx	edx, byte ptr [rdi + rcx]
	xor	eax, eax
	cmp	edx, 0x3e
	ja	.label_927
	mov	rbx, rsi
	movabs	rsi, 0x7000a38200000000
	bt	rsi, rdx
	jae	.label_943
	cmp	byte ptr [rsp + 6], 0
	jne	.label_863
	cmp	r14, r11
	jae	.label_845
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x3f
.label_845:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_831
	mov	rsi, qword ptr [rsp + 8]
	mov	byte ptr [rsi + rax], 0x22
.label_831:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_901
	mov	rsi, qword ptr [rsp + 8]
	mov	byte ptr [rsi + rax], 0x22
.label_901:
	lea	rax, [r14 + 3]
	cmp	rax, r11
	jae	.label_843
	mov	rsi, qword ptr [rsp + 8]
	mov	byte ptr [rsi + rax], 0x3f
.label_843:
	add	r14, 4
	xor	eax, eax
	mov	rsi, rcx
	mov	r15b, dl
	xor	r13d, r13d
	jmp	.label_833
.label_878:
	xor	eax, eax
.label_928:
	xor	r13d, r13d
	jmp	.label_833
.label_827:
	add	qword ptr [rsp + 0x60], rsi
	xor	eax, eax
	mov	rbp, qword ptr [rsp + 0x20]
	jmp	.label_922
	.section	.text
	.align	16
	#Procedure 0x404b92
	.globl sub_404b92
	.type sub_404b92, @function
sub_404b92:

	nop	word ptr cs:[rax + rax]
.label_879:
	inc	r14
	mov	r15b, byte ptr [rdi + rsi + 1]
	mov	rsi, rdx
.label_922:
	test	r8b, r8b
	je	.label_929
	mov	ecx, dword ptr [rsp + 0x54]
	test	cl, 1
	je	.label_930
	cmp	r14, r11
	jae	.label_931
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + r14], 0x5c
.label_931:
	inc	r14
	mov	dword ptr [rsp + 0x54], 0
	jmp	.label_930
	.section	.text
	.align	16
	#Procedure 0x404bdc
	.globl sub_404bdc
	.type sub_404bdc, @function
sub_404bdc:

	nop	dword ptr [rax]
.label_929:
	cmp	byte ptr [rsp + 6], 0
	jne	.label_900
	cmp	r12d, 2
	jne	.label_921
	mov	eax, r9d
	and	al, 1
	jne	.label_921
	cmp	r14, r11
	jae	.label_941
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_941:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_825
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + rax], 0x24
.label_825:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_835
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + rax], 0x27
.label_835:
	add	r14, 3
	mov	r9b, 1
.label_921:
	cmp	r14, r11
	jae	.label_909
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x5c
.label_909:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_824
	mov	edx, r15d
	shr	dl, 6
	or	dl, 0x30
	mov	rbx, qword ptr [rsp + 8]
	mov	byte ptr [rbx + rax], dl
.label_824:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_850
	mov	edx, r15d
	shr	dl, 3
	and	dl, 7
	or	dl, 0x30
	mov	rbx, qword ptr [rsp + 8]
	mov	byte ptr [rbx + rax], dl
.label_850:
	add	r14, 3
	and	r15b, 7
	or	r15b, 0x30
	mov	al, 1
.label_930:
	lea	rdx, [rsi + 1]
	cmp	qword ptr [rsp + 0x60], rdx
	jbe	.label_864
	test	r9b, 1
	je	.label_867
	mov	ebx, eax
	and	bl, 1
	jne	.label_867
	mov	rbx, rsi
	cmp	r14, r11
	jae	.label_869
	mov	rsi, qword ptr [rsp + 8]
	mov	byte ptr [rsi + r14], 0x27
.label_869:
	lea	rsi, [r14 + 1]
	cmp	rsi, r11
	jae	.label_891
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rsi], 0x27
.label_891:
	add	r14, 2
	xor	r9d, r9d
	mov	rsi, rbx
.label_867:
	cmp	r14, r11
	jae	.label_879
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + r14], r15b
	jmp	.label_879
	.section	.text
	.align	16
	#Procedure 0x404ce3
	.globl sub_404ce3
	.type sub_404ce3, @function
sub_404ce3:

	nop	word ptr cs:[rax + rax]
.label_864:
	test	r9b, 1
	je	.label_885
	and	al, 1
	jne	.label_885
	cmp	r14, r11
	jae	.label_887
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_887:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_919
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_919:
	add	r14, 2
	xor	r9d, r9d
.label_885:
	mov	ebx, r15d
.label_920:
	cmp	r14, r11
	jae	.label_884
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], bl
.label_884:
	inc	r14
	shl	r13b, 7
	sar	r13b, 7
	and	r13b, r10b
	mov	r10d, r13d
	jmp	.label_877
.label_942:
	xor	r13d, r13d
.label_940:
	mov	rdi, qword ptr [rsp + 0x30]
	mov	rsi, qword ptr [rsp + 0x58]
	jmp	.label_872
.label_830:
	mov	rbp, qword ptr [rsp + 0x20]
	cmp	rbp, rbx
	mov	rdi, qword ptr [rsp + 0x30]
	jbe	.label_907
	mov	rsi, qword ptr [rsp + 0x58]
.label_918:
	mov	rax, qword ptr [rsp + 0x60]
	cmp	byte ptr [rax + r12], 0
	je	.label_915
	lea	rax, [rsi + r12 + 1]
	inc	r12
	cmp	rax, rbp
	jb	.label_918
	xor	r13d, r13d
	jmp	.label_872
.label_907:
	xor	r13d, r13d
	mov	rsi, qword ptr [rsp + 0x58]
	jmp	.label_872
.label_915:
	xor	r13d, r13d
	jmp	.label_872
.label_927:
	xor	r13d, r13d
	jmp	.label_833
.label_943:
	xor	r13d, r13d
	mov	rsi, rbx
	jmp	.label_833
	.section	.text
	.align	16
	#Procedure 0x404db8
	.globl sub_404db8
	.type sub_404db8, @function
sub_404db8:

	nop	dword ptr [rax + rax]
.label_856:
	mov	rcx, rsi
.label_862:
	cmp	r12d, 2
	setne	al
	test	r14, r14
	setne	dl
	cmp	byte ptr [rsp + 6], 0
	je	.label_932
	or	al, dl
	je	.label_936
.label_932:
	cmp	r12d, 2
	setne	al
	cmp	byte ptr [rsp + 6], 0
	setne	dl
	mov	rsi, qword ptr [rsp + 0xa0]
	test	sil, 1
	mov	bl, byte ptr [rsp + 0x2c]
	mov	rsi, qword ptr [rsp + 0xb0]
	je	.label_826
	or	al, dl
	jne	.label_826
	test	r10b, 1
	jne	.label_829
	cmp	qword ptr [rsp + 0x68], 0
	je	.label_826
	test	r11, r11
	mov	r15d, r12d
	mov	al, bl
	mov	qword ptr [rsp + 0x20], rcx
	mov	r12d, esi
	mov	rbp, qword ptr [rsp + 0x68]
	je	.label_836
.label_826:
	mov	rdx, qword ptr [rsp + 0x48]
	test	rdx, rdx
	je	.label_844
	cmp	byte ptr [rsp + 6], 0
	mov	rcx, qword ptr [rsp + 8]
	jne	.label_828
	mov	al, byte ptr [rdx]
	test	al, al
	je	.label_828
	inc	rdx
	nop	word ptr cs:[rax + rax]
.label_860:
	cmp	r14, r11
	jae	.label_857
	mov	byte ptr [rcx + r14], al
.label_857:
	inc	r14
	movzx	eax, byte ptr [rdx]
	inc	rdx
	test	al, al
	jne	.label_860
	jmp	.label_828
.label_876:
	mov	qword ptr [rsp + 0x20], rbp
.label_900:
	mov	rdx, rdi
	jmp	.label_865
.label_842:
	mov	qword ptr [rsp + 0x20], rbp
.label_851:
	mov	rdx, rdi
	mov	eax, 2
.label_847:
	mov	qword ptr [rsp + 0x38], rax
.label_865:
	mov	r9d, dword ptr [rsp + 0x18]
	cmp	byte ptr [rsp + 0x17], 0
	mov	r8d, 4
	mov	rax, qword ptr [rsp + 0x38]
	cmove	r8d, eax
	cmp	eax, 2
	cmovne	r8d, eax
	and	r9d, 0xfffffffd
	sub	rsp, 8
	mov	rdi, qword ptr [rsp + 0x10]
	mov	rsi, r11
	mov	rcx, qword ptr [rsp + 0x28]
	push	qword ptr [rsp + 0x78]
	push	qword ptr [rsp + 0x88]
	push	0
	call	quotearg_buffer_restyled
	add	rsp, 0x20
.label_904:
	mov	r14, rax
.label_906:
	mov	rax, r14
	add	rsp, 0xb8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_936:
	mov	rdx, rdi
	mov	qword ptr [rsp + 0x20], rcx
	jmp	.label_865
.label_829:
	sub	rsp, 8
	mov	r8d, 5
	mov	rdi, qword ptr [rsp + 0x10]
	mov	rsi, qword ptr [rsp + 0x70]
	mov	rdx, qword ptr [rsp + 0x38]
	mov	r9d, dword ptr [rsp + 0x20]
	push	qword ptr [rsp + 0x78]
	push	qword ptr [rsp + 0x88]
	push	qword ptr [rsp + 0x108]
	call	quotearg_buffer_restyled
	add	rsp, 0x20
	jmp	.label_904
.label_844:
	mov	rcx, qword ptr [rsp + 8]
.label_828:
	cmp	r14, r11
	jae	.label_906
	mov	byte ptr [rcx + r14], 0
	jmp	.label_906
.label_863:
	mov	qword ptr [rsp + 0x20], rbp
	mov	rdx, rdi
	mov	eax, 5
	jmp	.label_847
.label_834:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x404f77
	.globl sub_404f77
	.type sub_404f77, @function
sub_404f77:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404f80

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
	je	.label_944
	mov	r8d, dword ptr [rdx + 0x90]
	mov	ebx, 1
	cmp	r8d, 1
	je	.label_952
	lea	rax, [rcx + 1]
	mov	r11, qword ptr [rdx + 0x30]
	cmp	rax, r11
	jge	.label_952
	lea	rax, [rcx*4]
	add	rax, qword ptr [rdx + 0x10]
	mov	ebx, 1
	nop	
.label_946:
	cmp	dword ptr [rax + rbx*4], -1
	jne	.label_952
	lea	rbp, [rcx + rbx + 1]
	inc	rbx
	cmp	rbp, r11
	jl	.label_946
.label_952:
	cmp	r10d, 5
	jne	.label_963
	xor	r14d, r14d
	cmp	ebx, 2
	jl	.label_945
	mov	rax, qword ptr [rdi + 0xd8]
	test	al, 0x40
	jne	.label_965
	mov	rsi, qword ptr [rdx + 8]
	cmp	byte ptr [rsi + rcx], 0xa
	je	.label_945
.label_965:
	test	al, al
	jns	.label_948
	mov	rax, qword ptr [rdx + 8]
	cmp	byte ptr [rax + rcx], 0
	je	.label_945
.label_948:
	mov	r14d, ebx
	jmp	.label_945
.label_963:
	cmp	ebx, 1
	setg	al
	xor	r14d, r14d
	cmp	r10d, 6
	jne	.label_945
	test	al, al
	je	.label_945
	mov	r15, qword ptr [r9 + rsi]
	mov	rsi, qword ptr [r15 + 0x40]
	test	rsi, rsi
	jne	.label_955
	cmp	qword ptr [r15 + 0x48], 0
	jne	.label_955
	xor	r12d, r12d
	cmp	qword ptr [r15 + 0x28], 0
	je	.label_959
.label_955:
	cmp	r8d, 1
	jne	.label_962
	mov	rax, qword ptr [rdx + 8]
	movzx	r12d, byte ptr [rax + rcx]
	jmp	.label_959
.label_962:
	mov	rax, qword ptr [rdx + 0x10]
	mov	r12d, dword ptr [rax + rcx*4]
.label_959:
	mov	rax, qword ptr [r15 + 0x28]
	test	rax, rax
	jle	.label_967
	mov	rcx, qword ptr [r15]
	xor	edx, edx
	nop	dword ptr [rax + rax]
.label_951:
	cmp	r12d, dword ptr [rcx + rdx*4]
	je	.label_950
	inc	rdx
	cmp	rdx, rax
	jl	.label_951
.label_967:
	cmp	qword ptr [r15 + 0x48], 0
	jle	.label_960
	xor	ebp, ebp
	nop	word ptr [rax + rax]
.label_956:
	mov	rax, qword ptr [r15 + 0x18]
	mov	rsi, qword ptr [rax + rbp*8]
	mov	edi, r12d
	call	iswctype
	test	eax, eax
	jne	.label_950
	inc	rbp
	cmp	rbp, qword ptr [r15 + 0x48]
	jl	.label_956
	mov	rsi, qword ptr [r15 + 0x40]
.label_960:
	xor	ecx, ecx
	test	rsi, rsi
	jle	.label_958
	mov	rax, qword ptr [r15 + 8]
	xor	edx, edx
	nop	
.label_953:
	cmp	dword ptr [rax + rdx*4], r12d
	jg	.label_961
	mov	rcx, qword ptr [r15 + 0x10]
	cmp	r12d, dword ptr [rcx + rdx*4]
	jle	.label_950
.label_961:
	inc	rdx
	xor	ecx, ecx
	cmp	rdx, rsi
	jl	.label_953
	jmp	.label_958
.label_950:
	mov	ecx, ebx
.label_958:
	test	byte ptr [r15 + 0x20], 1
	jne	.label_968
	mov	r14d, ecx
	jmp	.label_945
.label_968:
	test	ecx, ecx
	jg	.label_945
	test	ebx, ebx
	mov	r14d, 1
	cmovg	r14d, ebx
.label_945:
	mov	eax, r14d
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_944:
	mov	rax, qword ptr [rdx + 8]
	mov	bl, byte ptr [rax + rcx]
	xor	r14d, r14d
	cmp	bl, 0xc2
	jb	.label_945
	lea	rsi, [rcx + 2]
	mov	rdx, qword ptr [rdx + 0x58]
	cmp	rsi, rdx
	jg	.label_945
	mov	dil, byte ptr [rax + rcx + 1]
	cmp	bl, 0xdf
	ja	.label_954
	cmp	dil, 0xc0
	sbb	eax, eax
	and	eax, 2
	xor	r14d, r14d
	test	dil, dil
	cmovs	r14d, eax
	jmp	.label_945
.label_954:
	cmp	bl, 0xef
	ja	.label_957
	mov	esi, 3
	cmp	bl, 0xe0
	jne	.label_947
	cmp	dil, 0xa0
	jb	.label_945
	jmp	.label_947
.label_957:
	cmp	bl, 0xf7
	ja	.label_966
	mov	esi, 4
	cmp	bl, 0xf0
	jne	.label_947
	cmp	dil, 0x90
	jb	.label_945
	jmp	.label_947
.label_966:
	cmp	bl, 0xfb
	ja	.label_949
	mov	esi, 5
	cmp	bl, 0xf8
	jne	.label_947
	cmp	dil, 0x88
	jb	.label_945
	jmp	.label_947
.label_949:
	cmp	bl, 0xfd
	ja	.label_945
	mov	esi, 6
	cmp	bl, 0xfc
	jne	.label_947
	cmp	dil, 0x84
	jb	.label_945
.label_947:
	mov	edi, esi
	lea	rbp, [rdi + rcx]
	cmp	rbp, rdx
	jg	.label_945
	add	rax, rcx
	mov	ecx, 1
.label_964:
	movzx	edx, byte ptr [rax + rcx]
	test	dl, dl
	jns	.label_945
	cmp	dl, 0xbf
	ja	.label_945
	inc	rcx
	cmp	rcx, rdi
	jl	.label_964
	mov	r14d, esi
	jmp	.label_945
	.section	.text
	.align	16
	#Procedure 0x405203
	.globl sub_405203
	.type sub_405203, @function
sub_405203:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405210
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
	je	.label_969
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
.label_969:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x40527c
	.globl sub_40527c
	.type sub_40527c, @function
sub_40527c:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x405280

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
	je	.label_970
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
.label_970:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x405315
	.globl sub_405315
	.type sub_405315, @function
sub_405315:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405320
	.globl emit_bug_reporting_address
	.type emit_bug_reporting_address, @function
emit_bug_reporting_address:

	push	rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_971
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_972
	xor	eax, eax
	mov	rsi, rcx
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_974
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_975
	mov	ecx, OFFSET FLAT:label_976
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_973
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	pop	rax
	jmp	fputs_unlocked
	.section	.text
	.align	16
	#Procedure 0x405394
	.globl sub_405394
	.type sub_405394, @function
sub_405394:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4053a0
	.globl mkostemp_safer
	.type mkostemp_safer, @function
mkostemp_safer:

	push	rbx
	mov	ebx, esi
	call	mkostemp
	mov	edi, eax
	mov	esi, ebx
	pop	rbx
	jmp	fd_safer_flag
	.section	.text
	.align	16
	#Procedure 0x4053b2
	.globl sub_4053b2
	.type sub_4053b2, @function
sub_4053b2:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4053c0
	.globl quotearg_colon_mem
	.type quotearg_colon_mem, @function
quotearg_colon_mem:

	sub	rsp, 0x38
	mov	rax, rsi
	mov	rdx, rdi
	mov	rcx, qword ptr [rip + label_267]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0, xmmword ptr [rip + label_268]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_269]
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
	#Procedure 0x405414
	.globl sub_405414
	.type sub_405414, @function
sub_405414:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405420

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
	je	.label_978
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
	je	.label_984
	lea	rdx, [r15 + r14*8 + 8]
	cmp	qword ptr [rdx], 0
	je	.label_984
	mov	rdx, qword ptr [r15 + r14*8 + 0x10]
	mov	rdx, qword ptr [rdx]
	shl	rdx, 4
	test	byte ptr [rcx + rdx + 0xa], 4
	jne	.label_984
	mov	rdi, rbp
	mov	rsi, r12
	mov	rdx, r12
	mov	rcx, r12
	call	duplicate_node_closure
	test	eax, eax
	jne	.label_978
	mov	rax, qword ptr [rbp]
	mov	eax, dword ptr [rax + rbx + 8]
.label_984:
	test	al, 8
	mov	qword ptr [rsp + 0x28], r12
	je	.label_983
	mov	rax, qword ptr [rbp + 0x28]
	cmp	qword ptr [rax + r14*8 + 8], 0
	jle	.label_983
	xor	r15d, r15d
	lea	rbx, [rsp + 0x30]
	xor	r12d, r12d
	nop	word ptr cs:[rax + rax]
.label_981:
	mov	rax, qword ptr [rax + r14*8 + 0x10]
	mov	rdx, qword ptr [rax + r12*8]
	mov	rax, qword ptr [rbp + 0x30]
	lea	r13, [rdx + rdx*2]
	mov	rcx, qword ptr [rax + r13*8 + 8]
	cmp	rcx, -1
	je	.label_977
	test	rcx, rcx
	jne	.label_987
	xor	ecx, ecx
	mov	rdi, rbx
	mov	rsi, rbp
	call	calc_eclosure_iter
	test	eax, eax
	je	.label_979
	jmp	.label_978
	.section	.text
	.align	16
	#Procedure 0x405557
	.globl sub_405557
	.type sub_405557, @function
sub_405557:

	nop	word ptr [rax + rax]
.label_987:
	mov	rcx, qword ptr [rax + r13*8 + 0x10]
	mov	qword ptr [rsp + 0x40], rcx
	movups	xmm0, xmmword ptr [rax + r13*8]
	movaps	xmmword ptr [rsp + 0x30], xmm0
.label_979:
	lea	rdi, [rsp + 0x10]
	mov	rsi, rbx
	call	re_node_set_merge
	test	eax, eax
	jne	.label_978
	mov	rax, qword ptr [rbp + 0x30]
	cmp	qword ptr [rax + r13*8 + 8], 0
	jne	.label_986
	mov	rdi, qword ptr [rsp + 0x40]
	call	free
.label_977:
	mov	r15b, 1
.label_986:
	inc	r12
	mov	rax, qword ptr [rbp + 0x28]
	cmp	r12, qword ptr [rax + r14*8 + 8]
	jl	.label_981
	jmp	.label_985
.label_983:
	xor	r15d, r15d
.label_985:
	lea	rdi, [rsp + 0x10]
	mov	rsi, qword ptr [rsp + 0x28]
	call	re_node_set_insert
	test	al, al
	mov	eax, 0xc
	je	.label_978
	test	r15b, 1
	mov	rax, qword ptr [rbp + 0x30]
	je	.label_980
	mov	ecx, dword ptr [rsp + 4]
	test	cl, cl
	jne	.label_980
	mov	qword ptr [rax + r14*8 + 8], 0
	jmp	.label_982
.label_980:
	mov	rcx, qword ptr [rsp + 0x20]
	mov	qword ptr [rax + r14*8 + 0x10], rcx
	movups	xmm0, xmmword ptr [rsp + 0x10]
	movups	xmmword ptr [rax + r14*8], xmm0
.label_982:
	mov	rcx, qword ptr [rsp + 8]
	mov	rax, qword ptr [rsp + 0x20]
	mov	qword ptr [rcx + 0x10], rax
	movups	xmm0, xmmword ptr [rsp + 0x10]
	movups	xmmword ptr [rcx], xmm0
	xor	eax, eax
.label_978:
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
	#Procedure 0x405629
	.globl sub_405629
	.type sub_405629, @function
sub_405629:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x405630
	.globl quotearg_char
	.type quotearg_char, @function
quotearg_char:

	sub	rsp, 0x38
	mov	ecx, esi
	mov	rax, rdi
	mov	rdx, qword ptr [rip + label_267]
	mov	qword ptr [rsp + 0x30], rdx
	movups	xmm0, xmmword ptr [rip + label_268]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_269]
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
	#Procedure 0x40569f
	.globl sub_40569f
	.type sub_40569f, @function
sub_40569f:

	nop	
	.section	.text
	.align	16
	#Procedure 0x4056a0
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
	#Procedure 0x405761
	.globl sub_405761
	.type sub_405761, @function
sub_405761:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405770
	.globl rpl_regcomp
	.type rpl_regcomp, @function
rpl_regcomp:

	push	rbp
	push	r15
	push	r14
	push	rbx
	push	rax
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
	je	.label_990
	test	bpl, 1
	mov	eax, 0x3b2fc
	mov	ecx, 0x10102c6
	cmovne	rcx, rax
	mov	ebx, ebp
	and	ebx, 2
	shl	rbx, 0x15
	or	rbx, rcx
	test	bpl, 4
	jne	.label_988
	mov	al, byte ptr [r15 + 0x38]
	and	al, 0x7f
	jmp	.label_989
.label_991:
	mov	rdi, qword ptr [r15 + 0x20]
	call	free
	mov	qword ptr [r15 + 0x20], 0
	jmp	.label_990
	.section	.text
	.align	16
	#Procedure 0x4057e9
	.globl sub_4057e9
	.type sub_4057e9, @function
sub_4057e9:

	nop	word ptr [rax + rax]
.label_988:
	and	ebx, 0x143b2be
	or	rbx, 0x100
	mov	al, byte ptr [r15 + 0x38]
	or	al, 0x80
.label_989:
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
	jne	.label_991
	mov	rdi, r15
	call	rpl_re_compile_fastmap
	xor	ebx, ebx
.label_990:
	mov	eax, ebx
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x405860

	.globl main
	.type main, @function
main:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x28
	mov	r15, rsi
	mov	r14d, edi
	mov	rdi, qword ptr [r15]
	call	set_program_name
	mov	edi, 6
	mov	esi, OFFSET FLAT:label_316
	call	setlocale
	mov	edi, OFFSET FLAT:label_1030
	mov	esi, OFFSET FLAT:label_1031
	call	bindtextdomain
	mov	edi, OFFSET FLAT:label_1030
	call	textdomain
	mov	edi, OFFSET FLAT:close_stdout
	call	atexit
	mov	qword ptr [rip + separator], OFFSET FLAT:label_1039
	mov	qword ptr [rip + sentinel_length],  1
	mov	byte ptr [rip + separator_ends_record],  1
	jmp	.label_998
.label_1057:
	mov	rax, qword ptr [rip + optarg]
	mov	qword ptr [rip + separator],  rax
	nop	dword ptr [rax + rax]
.label_998:
	mov	edx, OFFSET FLAT:label_1048
	mov	ecx, OFFSET FLAT:longopts
	xor	r8d, r8d
	mov	edi, r14d
	mov	rsi, r15
	call	getopt_long
	cmp	eax, 0x61
	jle	.label_1055
	cmp	eax, 0x73
	je	.label_1057
	cmp	eax, 0x72
	je	.label_993
	cmp	eax, 0x62
	jne	.label_994
	mov	byte ptr [rip + separator_ends_record],  0
	jmp	.label_998
.label_993:
	mov	qword ptr [rip + sentinel_length],  0
	jmp	.label_998
.label_1055:
	cmp	eax, -1
	jne	.label_1050
	mov	rbp, qword ptr [rip + separator]
	mov	cl, byte ptr [rbp]
	cmp	qword ptr [rip + sentinel_length],  0
	je	.label_1005
	mov	eax, 1
	test	cl, cl
	je	.label_1014
	mov	rdi, rbp
	call	strlen
.label_1014:
	mov	qword ptr [rip + sentinel_length],  rax
	mov	qword ptr [rip + match_length],  rax
	jmp	.label_1056
.label_1005:
	test	cl, cl
	je	.label_1022
	xorps	xmm0, xmm0
	movups	xmmword ptr [rip + compiled_separator],  xmm0
	mov	eax, OFFSET FLAT:compiled_separator_fastmap
	movq	xmm0, rax
	movups	xmmword ptr [rip + label_1025],  xmm0
	mov	rdi, rbp
	call	strlen
	mov	edx, OFFSET FLAT:compiled_separator
	mov	rdi, rbp
	mov	rsi, rax
	call	rpl_re_compile_pattern
	mov	rcx, rax
	test	rcx, rcx
	jne	.label_1036
	mov	rax, qword ptr [rip + sentinel_length]
.label_1056:
	mov	qword ptr [rip + read_size],  0x2000
	mov	ecx, 0x2000
	cmp	rax, 0x1000
	jb	.label_1040
	mov	edx, 0x2000
	movabs	rsi, 0x7ffffffffffffffe
	nop	dword ptr [rax]
.label_1051:
	test	rdx, rdx
	js	.label_1000
	lea	rcx, [rdx + rdx]
	mov	qword ptr [rip + read_size],  rcx
	and	rdx, rsi
	cmp	rax, rdx
	mov	rdx, rcx
	jae	.label_1051
.label_1040:
	mov	rdx, rcx
	or	rdx, 1
	add	rdx, rax
	lea	rdi, [rdx + rdx]
	mov	qword ptr [rip + G_buffer_size],  rdi
	cmp	rdx, rdi
	jae	.label_1000
	cmp	rcx, rdx
	jae	.label_1000
	call	xmalloc
	mov	rbp, rax
	mov	qword ptr [rip + G_buffer],  rbp
	mov	rbx, qword ptr [rip + sentinel_length]
	test	rbx, rbx
	je	.label_1004
	mov	rsi, qword ptr [rip + separator]
	lea	rdx, [rbx + 1]
	mov	rdi, rbp
	call	memcpy
	add	rbp, rbx
	jmp	.label_1018
.label_1004:
	inc	rbp
.label_1018:
	mov	qword ptr [rip + G_buffer],  rbp
	movsxd	rax, dword ptr [rip + optind]
	cmp	eax, r14d
	lea	rax, [r15 + rax*8]
	mov	ecx, OFFSET FLAT:main.default_file_list
	cmovl	rcx, rax
	mov	qword ptr [rsp + 0x20], rcx
	mov	r14, qword ptr [rcx]
	mov	bl, 1
	test	r14, r14
	je	.label_1021
	mov	r13b, 1
	xor	r15d, r15d
	jmp	.label_1032
.label_1041:
	call	__errno_location
	mov	r13d, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_1035
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	mov	rsi, qword ptr [rip + temp_stream.tempfile]
	mov	edi, 4
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, r13d
	mov	rdx, rbp
	call	error
	mov	edi, ebx
	call	close
	mov	rdi, qword ptr [rip + temp_stream.tempfile]
	call	unlink
.label_1042:
	mov	rdi, qword ptr [rip + temp_stream.tempfile]
	call	free
	mov	qword ptr [rip + temp_stream.tempfile],  0
.label_996:
	xor	r13d, r13d
	jmp	.label_1026
.label_1045:
	test	rbp, rbp
	js	.label_996
	mov	rdi, r13
	call	fileno
	mov	edi, eax
	mov	rsi, qword ptr [rsp + 0x18]
	mov	rdx, rbp
	call	tac_seekable
	mov	r13b, al
	jmp	.label_1026
	.section	.text
	.align	16
	#Procedure 0x405b2d
	.globl sub_405b2d
	.type sub_405b2d, @function
sub_405b2d:

	nop	dword ptr [rax]
.label_1032:
	cmp	byte ptr [r14], 0x2d
	jne	.label_1006
	cmp	byte ptr [r14 + 1], 0
	je	.label_1008
.label_1006:
	xor	ebp, ebp
	xor	esi, esi
	xor	eax, eax
	mov	rdi, r14
	call	open
	mov	r12d, eax
	test	r12d, r12d
	jns	.label_1016
	call	__errno_location
	mov	r12d, dword ptr [rax]
	xor	ebx, ebx
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_1020
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	mov	edi, 4
	mov	rsi, r14
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, r12d
	mov	rdx, rbp
	call	error
	jmp	.label_1033
.label_1008:
	mov	byte ptr [rip + have_read_stdin],  1
	xor	r12d, r12d
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_1034
	mov	edx, 5
	call	dcgettext
	mov	r14, rax
	mov	bpl, 1
.label_1016:
	xor	esi, esi
	mov	edx, 2
	mov	edi, r12d
	call	lseek
	mov	rbx, rax
	test	rbx, rbx
	mov	byte ptr [rsp + 0x17], r13b
	js	.label_1044
	mov	edi, r12d
	call	isatty
	test	eax, eax
	je	.label_1047
.label_1044:
	mov	dword ptr [rsp + 0x10], ebp
	cmp	qword ptr [rip + temp_stream.tempfile],  0
	je	.label_1049
	mov	rdi, qword ptr [rip + temp_stream.tmp_fp]
	call	clearerr_unlocked
	mov	rdi, qword ptr [rip + temp_stream.tmp_fp]
	xor	esi, esi
	xor	edx, edx
	call	rpl_fseeko
	test	eax, eax
	js	.label_997
	mov	rdi, qword ptr [rip + temp_stream.tmp_fp]
	call	fileno
	xor	esi, esi
	mov	edi, eax
	call	ftruncate
	test	eax, eax
	jns	.label_1002
.label_997:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	r13d, r13d
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_1043
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	mov	rsi, qword ptr [rip + temp_stream.tempfile]
	mov	edi, 4
	call	quotearg_style
	jmp	.label_1003
.label_1049:
	mov	edi, OFFSET FLAT:label_1015
	call	getenv
	mov	rbp, rax
	test	rbp, rbp
	mov	eax, OFFSET FLAT:label_1023
	cmove	rbp, rax
	mov	esi, OFFSET FLAT:label_1024
	xor	edx, edx
	mov	rdi, rbp
	call	mfile_name_concat
	mov	qword ptr [rip + temp_stream.tempfile],  rax
	test	rbp, rbp
	je	.label_1029
	mov	rdi, rax
	call	mkstemp_safer
	mov	ebx, eax
	test	ebx, ebx
	js	.label_1037
	mov	esi, OFFSET FLAT:label_1053
	mov	edi, ebx
	call	fdopen
	mov	qword ptr [rip + temp_stream.tmp_fp],  rax
	test	rax, rax
	je	.label_1041
	mov	rdi, qword ptr [rip + temp_stream.tempfile]
	call	unlink
.label_1002:
	mov	r13, qword ptr [rip + temp_stream.tmp_fp]
	mov	rax, qword ptr [rip + temp_stream.tempfile]
	mov	qword ptr [rsp + 0x18], rax
	xor	ebp, ebp
	nop	dword ptr [rax + rax]
.label_1007:
	mov	rsi, qword ptr [rip + G_buffer]
	mov	rdx, qword ptr [rip + read_size]
	mov	edi, r12d
	call	safe_read
	mov	rbx, rax
	test	rbx, rbx
	je	.label_995
	cmp	rbx, -1
	je	.label_999
	mov	rdi, qword ptr [rip + G_buffer]
	mov	esi, 1
	mov	rdx, rbx
	mov	rcx, r13
	call	fwrite_unlocked
	add	rbp, rbx
	cmp	rax, rbx
	je	.label_1007
	jmp	.label_1012
.label_1047:
	mov	edi, r12d
	mov	rsi, r14
	mov	rdx, rbx
	call	tac_seekable
	mov	r13b, al
	jmp	.label_1017
.label_1029:
	xor	r13d, r13d
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_1019
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	call	error
	jmp	.label_1026
.label_1037:
	call	__errno_location
	mov	r13d, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_1028
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	edi, 4
	mov	rsi, rbp
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, r13d
	mov	rdx, rbx
	call	error
	jmp	.label_1042
.label_995:
	mov	rdi, r13
	call	fflush_unlocked
	test	eax, eax
	je	.label_1045
.label_1012:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	r13d, r13d
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_1038
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	xor	edi, edi
	mov	esi, 3
	mov	rdx, qword ptr [rsp + 0x18]
	jmp	.label_1052
.label_999:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	r13d, r13d
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_992
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	xor	edi, edi
	mov	esi, 3
	mov	rdx, r14
.label_1052:
	call	quotearg_n_style_colon
.label_1003:
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, rbp
	call	error
.label_1026:
	mov	ebp, dword ptr [rsp + 0x10]
.label_1017:
	test	bpl, bpl
	jne	.label_1013
	mov	edi, r12d
	call	close
	test	eax, eax
	je	.label_1013
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	r13d, r13d
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_992
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	xor	edi, edi
	mov	esi, 3
	mov	rdx, r14
	call	quotearg_n_style_colon
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, rbp
	call	error
.label_1013:
	test	r13b, r13b
	setne	bl
	mov	r13b, byte ptr [rsp + 0x17]
.label_1033:
	and	bl, r13b
	mov	rax, qword ptr [rsp + 0x20]
	mov	r14, qword ptr [rax + r15*8 + 8]
	inc	r15
	test	r14, r14
	mov	r13d, ebx
	jne	.label_1032
.label_1021:
	mov	rdx, qword ptr [rip + output.bytes_in_buffer]
	mov	rcx, qword ptr [rip + stdout]
	mov	edi, OFFSET FLAT:output.buffer
	mov	esi, 1
	call	fwrite_unlocked
	mov	qword ptr [rip + output.bytes_in_buffer],  0
	mov	al, byte ptr [rip + have_read_stdin]
	test	al, al
	je	.label_1046
	xor	edi, edi
	call	close
	test	eax, eax
	jns	.label_1046
	call	__errno_location
	mov	esi, dword ptr [rax]
	xor	ebx, ebx
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_1054
	xor	eax, eax
	call	error
.label_1046:
	not	bl
	and	bl, 1
	movzx	eax, bl
	add	rsp, 0x28
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_1000:
	call	xalloc_die
.label_1050:
	cmp	eax, 0xffffff7d
	je	.label_1001
	cmp	eax, 0xffffff7e
	jne	.label_994
	xor	edi, edi
	call	usage
.label_1001:
	mov	rdi, qword ptr [rip + stdout]
	mov	rcx, qword ptr [rip + Version]
	mov	qword ptr [rsp], 0
	mov	esi, OFFSET FLAT:label_1009
	mov	edx, OFFSET FLAT:label_975
	mov	r8d, OFFSET FLAT:label_1010
	mov	r9d, OFFSET FLAT:label_1011
	xor	eax, eax
	call	version_etc
	xor	edi, edi
	call	exit
.label_994:
	mov	edi, 1
	call	usage
.label_1022:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_1027
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	call	error
.label_1036:
	mov	edi, 1
	xor	esi, esi
	mov	edx, OFFSET FLAT:label_98
	xor	eax, eax
	call	error
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405fc0

	.globl hard_locale
	.type hard_locale, @function
hard_locale:
	push	rbx
	xor	esi, esi
	call	setlocale
	mov	bl, 1
	test	rax, rax
	je	.label_1059
	cmp	byte ptr [rax], 0x43
	jne	.label_1061
	cmp	byte ptr [rax + 1], 0
	je	.label_1058
.label_1061:
	mov	esi, OFFSET FLAT:label_1060
	mov	rdi, rax
	call	strcmp
	test	eax, eax
	jne	.label_1059
.label_1058:
	xor	ebx, ebx
.label_1059:
	mov	eax, ebx
	pop	rbx
	ret	
	.section	.text
	.align	16
	#Procedure 0x405ff1
	.globl sub_405ff1
	.type sub_405ff1, @function
sub_405ff1:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406000

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
	#Procedure 0x406017
	.globl sub_406017
	.type sub_406017, @function
sub_406017:

	nop	word ptr [rax + rax]
.label_1067:
	test	rcx, rcx
	jne	.label_1062
	mov	eax, 0x80
	xor	edx, edx
	div	rbx
	xor	ecx, ecx
	cmp	rbx, 0x80
	seta	cl
	add	rcx, rax
.label_1062:
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rcx
	jb	.label_1065
.label_1068:
	mov	qword ptr [rsi], rcx
	imul	rbx, rcx
	test	rdi, rdi
	je	.label_1063
	test	rbx, rbx
	jne	.label_1063
	call	free
	xor	eax, eax
	pop	rbx
	ret	
.label_1063:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_1064
	test	rax, rax
	je	.label_1066
.label_1064:
	pop	rbx
	ret	
.label_1065:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x406085
	.globl sub_406085
	.type sub_406085, @function
sub_406085:

	nop	word ptr [rax + rax]
.label_1066:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x406093
	.globl x2nrealloc
	.type x2nrealloc, @function
x2nrealloc:

	push	rbx
	mov	rbx, rdx
	mov	rcx, qword ptr [rsi]
	test	rdi, rdi
	je	.label_1067
	movabs	rax, 0x5555555555555554
	xor	edx, edx
	div	rbx
	cmp	rax, rcx
	jbe	.label_1066
	mov	rax, rcx
	shr	rax, 1
	lea	rcx, [rcx + rax + 1]
	jmp	.label_1068
	.section	.text
	.align	16
	#Procedure 0x4060c0

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
	je	.label_1085
	mov	qword ptr [rsp + 8], r15
	mov	edi, 0x50
	mov	esi, 1
	call	rpl_calloc
	mov	r15, rax
	test	r15, r15
	je	.label_1070
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
	jne	.label_1077
	mov	al, byte ptr [rbp]
	test	al, al
	je	.label_1078
	inc	rbp
	nop	word ptr cs:[rax + rax]
.label_1081:
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
	jne	.label_1081
.label_1078:
	mov	eax, dword ptr [rsp + 4]
	test	al, al
	je	.label_1071
	movdqu	xmm0, xmmword ptr [rbx]
	pcmpeqd	xmm1, xmm1
	pxor	xmm0, xmm1
	movdqu	xmmword ptr [rbx], xmm0
	movdqu	xmm0, xmmword ptr [rbx + 0x10]
	pxor	xmm0, xmm1
	movdqu	xmmword ptr [rbx + 0x10], xmm0
.label_1071:
	cmp	dword ptr [r12 + 0xb4], 2
	jl	.label_1075
	mov	rax, qword ptr [r12 + 0x78]
	mov	rcx, qword ptr [rax]
	and	qword ptr [rbx], rcx
	mov	rcx, qword ptr [rax + 8]
	and	qword ptr [rbx + 8], rcx
	mov	rcx, qword ptr [rax + 0x10]
	and	qword ptr [rbx + 0x10], rcx
	mov	rax, qword ptr [rax + 0x18]
	and	qword ptr [rbx + 0x18], rax
.label_1075:
	mov	ecx, dword ptr [r12 + 0x80]
	cmp	ecx, 0xf
	je	.label_1082
	mov	rax, qword ptr [r12 + 0x70]
.label_1076:
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
	jl	.label_1069
	or	byte ptr [r12 + 0xb0], 2
	mov	eax, dword ptr [r12 + 0x80]
	cmp	eax, 0xf
	je	.label_1079
	mov	rbp, qword ptr [r12 + 0x70]
.label_1084:
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
	je	.label_1086
	mov	rcx, qword ptr [r12 + 0x70]
.label_1083:
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
	jmp	.label_1073
.label_1069:
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
.label_1073:
	add	rsp, 0x18
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_1085:
	mov	dword ptr [r15], 0xc
	jmp	.label_1072
.label_1070:
	mov	rdi, rbx
	jmp	.label_1080
.label_1077:
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
	jmp	.label_1072
.label_1082:
	mov	edi, 0x3c8
	call	malloc
	test	rax, rax
	je	.label_1074
	mov	rcx, qword ptr [r12 + 0x70]
	mov	qword ptr [rax], rcx
	mov	qword ptr [r12 + 0x70], rax
	mov	dword ptr [r12 + 0x80], 0
	xor	ecx, ecx
	jmp	.label_1076
.label_1079:
	mov	edi, 0x3c8
	call	malloc
	mov	rbp, rax
	test	rbp, rbp
	je	.label_1074
	mov	rax, qword ptr [r12 + 0x70]
	mov	qword ptr [rbp], rax
	mov	qword ptr [r12 + 0x70], rbp
	mov	dword ptr [r12 + 0x80], 0
	xor	eax, eax
	jmp	.label_1084
.label_1074:
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
.label_1080:
	call	free
	mov	rax, qword ptr [rsp + 8]
	mov	dword ptr [rax], 0xc
.label_1072:
	xor	eax, eax
	jmp	.label_1073
.label_1086:
	mov	edi, 0x3c8
	call	malloc
	mov	rcx, rax
	xor	eax, eax
	test	rcx, rcx
	je	.label_1073
	mov	rdx, qword ptr [r12 + 0x70]
	mov	qword ptr [rcx], rdx
	mov	qword ptr [r12 + 0x70], rcx
	mov	dword ptr [r12 + 0x80], 0
	jmp	.label_1083
	.section	.text
	.align	16
	#Procedure 0x406492
	.globl sub_406492
	.type sub_406492, @function
sub_406492:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4064a0

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
.label_1088:
	mov	edi, r15d
	mov	rsi, r14
	mov	rdx, rbx
	call	read
	mov	rbp, rax
	test	rbp, rbp
	jns	.label_1087
	call	__errno_location
	mov	eax, dword ptr [rax]
	cmp	eax, 4
	je	.label_1088
	cmp	rbx, 0x7ff00001
	jb	.label_1087
	cmp	eax, 0x16
	mov	ebx, 0x7ff00000
	je	.label_1088
.label_1087:
	mov	rax, rbp
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4064f3
	.globl sub_4064f3
	.type sub_4064f3, @function
sub_4064f3:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406500

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
	ja	.label_121
	mov	rdi, qword ptr [r14]
	mov	qword ptr [rsp + 0x20], rbx
	mov	qword ptr [rsp + 0x10], r8
	mov	qword ptr [rsp + 8], r10
	mov	qword ptr [rsp + 0x18], rdi
	jmp	qword ptr [(rcx * 8) + label_1089]
.label_2301:
	mov	rsi, qword ptr [r8 + 0x78]
	xor	r8d, r8d
	cmp	al, 0x21
	sete	r8b
	mov	edx, OFFSET FLAT:label_71
	mov	ecx, OFFSET FLAT:label_313
	jmp	.label_314
.label_2302:
	mov	rsi, qword ptr [r8 + 0x78]
	xor	r8d, r8d
	cmp	al, 0x23
	sete	r8b
	mov	edx, OFFSET FLAT:label_84
	mov	ecx, OFFSET FLAT:label_316
.label_314:
	mov	r9, r12
	call	build_charclass_op
	mov	rbp, rax
	xor	r15d, r15d
	test	rbp, rbp
	jne	.label_319
	mov	eax, dword ptr [r12]
	test	eax, eax
.label_421:
	mov	r8, qword ptr [rsp + 0x10]
	mov	r10, qword ptr [rsp + 8]
	je	.label_181
	jmp	.label_121
.label_319:
	mov	r8, qword ptr [rsp + 0x10]
	mov	r10, qword ptr [rsp + 8]
	jmp	.label_181
.label_2292:
	mov	ecx, dword ptr [rdi + 0x80]
	cmp	ecx, 0xf
	je	.label_221
	mov	rax, qword ptr [rdi + 0x70]
.label_416:
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
	jl	.label_329
	mov	rax, qword ptr [r8 + 0x48]
	cmp	qword ptr [r8 + 0x68], rax
	jg	.label_342
	mov	rbp, r14
	jmp	.label_181
.label_404:
	mov	rcx, qword ptr [r8 + 0x10]
	cmp	dword ptr [rcx + rax*4], -1
	jne	.label_344
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
	je	.label_349
	mov	rax, qword ptr [rsi + 0x70]
	pxor	xmm1, xmm1
.label_391:
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
.label_384:
	mov	ecx, dword ptr [rsi + 0x80]
	cmp	ecx, 0xf
	je	.label_364
	mov	rax, qword ptr [rsi + 0x70]
.label_401:
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
	je	.label_295
	mov	qword ptr [rbx], rbp
	mov	rax, qword ptr [r8 + 0x48]
	cmp	qword ptr [r8 + 0x68], rax
	mov	r14, rbp
	mov	rbx, qword ptr [rsp + 0x20]
	jg	.label_342
	jmp	.label_181
.label_349:
	mov	edi, 0x3c8
	call	malloc
	mov	rsi, qword ptr [rsp + 0x18]
	mov	r8, qword ptr [rsp + 0x10]
	test	rax, rax
	mov	ebx, 0
	mov	r10, qword ptr [rsp + 8]
	pxor	xmm1, xmm1
	je	.label_384
	mov	rcx, qword ptr [rsi + 0x70]
	mov	qword ptr [rax], rcx
	mov	qword ptr [rsi + 0x70], rax
	mov	dword ptr [rsi + 0x80], 0
	xor	ecx, ecx
	jmp	.label_391
.label_364:
	mov	edi, 0x3c8
	call	malloc
	pxor	xmm1, xmm1
	mov	rsi, qword ptr [rsp + 0x18]
	mov	r10, qword ptr [rsp + 8]
	mov	r8, qword ptr [rsp + 0x10]
	test	rax, rax
	je	.label_295
	mov	rcx, qword ptr [rsi + 0x70]
	mov	qword ptr [rax], rcx
	mov	qword ptr [rsi + 0x70], rax
	mov	dword ptr [rsi + 0x80], 0
	xor	ecx, ecx
	jmp	.label_401
.label_342:
	cmp	rax, qword ptr [r8 + 0x30]
	jne	.label_404
	mov	rbp, r14
	jmp	.label_181
.label_2293:
	mov	cl, byte ptr [r10]
	mov	eax, 1
	shl	eax, cl
	cdqe	
	test	qword ptr [rdi + 0xa8], rax
	je	.label_407
	or	qword ptr [rdi + 0xa0], rax
	mov	ecx, dword ptr [rdi + 0x80]
	cmp	ecx, 0xf
	je	.label_476
	mov	rax, qword ptr [rdi + 0x70]
.label_386:
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
	jmp	.label_181
.label_2294:
	mov	ecx, dword ptr [rdi + 0x80]
	cmp	ecx, 0xf
	je	.label_424
	mov	rax, qword ptr [rdi + 0x70]
.label_371:
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
	jle	.label_181
	or	byte ptr [rdi + 0xb0], 2
	jmp	.label_181
.label_2295:
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
	je	.label_442
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
	jne	.label_121
	cmp	byte ptr [r10 + 8], 9
	jne	.label_449
	mov	r15, rbp
.label_442:
	cmp	r15, 8
	mov	rsi, qword ptr [rsp + 0x18]
	ja	.label_454
	mov	eax, 1
	mov	ecx, r15d
	shl	eax, cl
	cdqe	
	or	qword ptr [rsi + 0xa8], rax
.label_454:
	mov	ecx, dword ptr [rsi + 0x80]
	cmp	ecx, 0xf
	je	.label_460
	mov	rax, qword ptr [rsi + 0x70]
.label_423:
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
	je	.label_463
	mov	qword ptr [rdi], rbp
.label_463:
	mov	qword ptr [rax + rcx + 0x30], r15
	jmp	.label_181
.label_2298:
	mov	eax, dword ptr [r10]
	test	ax, 0x30f
	je	.label_474
	mov	al, byte ptr [rdi + 0xb0]
	test	al, 0x10
	jne	.label_464
	mov	ecx, eax
	or	cl, 0x10
	mov	byte ptr [rdi + 0xb0], cl
	xor	r14d, r14d
	test	al, 8
	mov	ebp, 0
	jne	.label_478
	movdqa	xmm0, xmmword ptr [rip + label_481]
	movdqu	xmmword ptr [rdi + 0xb8], xmm0
	mov	ebp, 2
	mov	r14d, 0x80
	test	al, 4
	je	.label_478
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [rdi + 0xc8], xmm0
.label_464:
	mov	eax, dword ptr [r10]
.label_474:
	cmp	eax, 0x200
	je	.label_489
	cmp	eax, 0x100
	jne	.label_490
	mov	dword ptr [r10], 6
	mov	r15, rdi
	sub	r15, -0x80
	mov	r14d, dword ptr [rdi + 0x80]
	cmp	r14d, 0xf
	je	.label_492
	mov	rax, qword ptr [rdi + 0x70]
.label_472:
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
	jmp	.label_496
.label_2300:
	test	ebx, 0x1000000
	jne	.label_158
.label_2297:
	test	bl, 0x20
	jne	.label_158
	test	bl, 0x10
	jne	.label_513
.label_2296:
	test	ebx, 0x20000
	jne	.label_515
	movzx	ecx, al
	cmp	ecx, 9
	jne	.label_515
	mov	dword ptr [r12], 0x10
	jmp	.label_493
.label_515:
	and	eax, 0xffffff00
	or	eax, 1
	mov	dword ptr [r10 + 8], eax
	mov	ecx, dword ptr [rdi + 0x80]
	cmp	ecx, 0xf
	je	.label_516
	mov	rax, qword ptr [rdi + 0x70]
.label_350:
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
.label_230:
	movdqu	xmmword ptr [rax + rcx + 0x20], xmm0
	mov	qword ptr [rax + rcx + 0x40], -1
	jmp	.label_181
.label_2299:
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
	je	.label_526
	test	r15, r15
	je	.label_526
	mov	rbp, qword ptr [rsp + 8]
	mov	rdi, rbp
	mov	rsi, qword ptr [rsp + 0x10]
	mov	rdx, rbx
	call	peek_token_bracket
	mov	rdx, rbp
	mov	ecx, dword ptr [rdx + 8]
	cmp	cl, 0x19
	je	.label_528
	cmp	cl, 2
	je	.label_428
	mov	dword ptr [rsp + 0x28], 0
	jmp	.label_529
.label_2303:
	mov	dword ptr [r12], 5
	jmp	.label_493
.label_513:
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
.label_329:
	mov	rbp, r14
	jmp	.label_181
.label_528:
	or	byte ptr [r15 + 0x20], 1
	test	bh, 1
	je	.label_537
	or	byte ptr [r14 + 1], 4
.label_537:
	cdqe	
	mov	rsi, qword ptr [rsp + 0x10]
	add	qword ptr [rsi + 0x48], rax
	mov	rdi, rdx
	mov	rdx, rbx
	call	peek_token_bracket
	mov	rdx, qword ptr [rsp + 8]
	mov	ecx, dword ptr [rdx + 8]
	cmp	cl, 2
	je	.label_428
	mov	sil, 1
	mov	dword ptr [rsp + 0x28], esi
.label_529:
	cmp	cl, 0x15
	jne	.label_541
	and	ecx, 0xffffff00
	or	ecx, 1
	mov	dword ptr [rdx + 8], ecx
.label_541:
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
	jne	.label_548
	mov	eax, ebx
	and	eax, 0x10000
	mov	qword ptr [rsp + 0x38], rax
	xor	eax, eax
	mov	qword ptr [rsp + 0x68], rax
	xor	eax, eax
	mov	qword ptr [rsp + 0x60], rax
	mov	qword ptr [rsp + 0x30], r15
	jmp	.label_549
.label_183:
	cmp	al, 2
	je	.label_556
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
	je	.label_549
	jmp	.label_548
.label_2366:
	mov	rcx, qword ptr [r15 + 0x28]
	cmp	qword ptr [rsp + 0x68], rcx
	je	.label_563
	mov	rax, qword ptr [r15]
.label_618:
	mov	r10, qword ptr [rsp + 8]
	mov	r9, qword ptr [rsp + 0x18]
	mov	edx, dword ptr [rsp + 0x58]
	lea	rsi, [rcx + 1]
	mov	qword ptr [r15 + 0x28], rsi
	mov	dword ptr [rax + rcx*4], edx
	jmp	.label_566
.label_2367:
	mov	rbp, qword ptr [rsp + 0x58]
	mov	rdi, rbp
	call	strlen
	cmp	rax, 1
	je	.label_573
	jmp	.label_575
.label_154:
	mov	rax, qword ptr [rsp + 0x58]
	mov	al, byte ptr [rax]
	jmp	.label_157
.label_156:
	xor	eax, eax
.label_157:
	cmp	r15d, 3
	je	.label_577
	test	r15d, r15d
	jne	.label_578
	mov	bl, byte ptr [rsp + 0xa0]
	jmp	.label_579
.label_577:
	mov	rcx, qword ptr [rsp + 0xa0]
	mov	bl, byte ptr [rcx]
	jmp	.label_579
.label_578:
	xor	ebx, ebx
.label_579:
	cmp	ebp, 3
	je	.label_582
	test	ebp, ebp
	jne	.label_619
.label_582:
	test	r12, r12
	movzx	edx, al
	je	.label_583
	mov	edi, edx
	call	btowc
	mov	r9, qword ptr [rsp + 0x18]
	mov	r10, qword ptr [rsp + 8]
	mov	edx, eax
	jmp	.label_583
.label_619:
	mov	edx, dword ptr [rsp + 0x58]
.label_583:
	cmp	r15d, 3
	je	.label_587
	test	r15d, r15d
	jne	.label_589
.label_587:
	test	r12, r12
	movzx	eax, bl
	je	.label_590
	mov	edi, eax
	mov	ebx, edx
	call	btowc
	mov	edx, ebx
	mov	r9, qword ptr [rsp + 0x18]
	mov	r10, qword ptr [rsp + 8]
	jmp	.label_590
.label_589:
	mov	eax, dword ptr [rsp + 0xa0]
.label_590:
	mov	rbx, qword ptr [rsp + 0x20]
	cmp	edx, -1
	mov	ecx, 3
	je	.label_133
	cmp	eax, -1
	je	.label_133
	cmp	qword ptr [rsp + 0x38], 0
	je	.label_596
	cmp	edx, eax
	mov	ecx, 0xb
	ja	.label_133
.label_596:
	test	r12, r12
	je	.label_600
	mov	rsi, qword ptr [r12 + 0x40]
	cmp	qword ptr [rsp + 0x60], rsi
	je	.label_602
	mov	rdi, qword ptr [r12 + 8]
	mov	rbp, qword ptr [r12 + 0x10]
.label_632:
	mov	dword ptr [rdi + rsi*4], edx
	lea	rcx, [rsi + 1]
	mov	qword ptr [r12 + 0x40], rcx
	mov	dword ptr [rbp + rsi*4], eax
.label_600:
	mov	r15, qword ptr [rsp + 0x30]
	mov	eax, eax
	mov	edx, edx
	xor	ecx, ecx
	mov	r12, qword ptr [rsp + 0x48]
	nop	dword ptr [rax]
.label_612:
	cmp	rdx, rcx
	ja	.label_375
	cmp	rcx, rax
	ja	.label_375
	mov	esi, 1
	shl	rsi, cl
	mov	rdi, rcx
	sar	rdi, 0x3f
	shr	rdi, 0x3a
	add	rdi, rcx
	sar	rdi, 6
	or	qword ptr [r14 + rdi*8], rsi
.label_375:
	inc	rcx
	cmp	rcx, 0x100
	jne	.label_612
	mov	dword ptr [r12], 0
	jmp	.label_566
.label_563:
	mov	rax, qword ptr [rsp + 0x68]
	lea	rax, [rax + rax]
	mov	rdi, qword ptr [r15]
	lea	rsi, [rax*4 + 4]
	call	realloc
	test	rax, rax
	je	.label_403
	mov	rcx, qword ptr [rsp + 0x68]
	lea	rcx, [rcx + rcx + 1]
	mov	qword ptr [rsp + 0x68], rcx
	mov	r15, qword ptr [rsp + 0x30]
	mov	qword ptr [r15], rax
	mov	rcx, qword ptr [r15 + 0x28]
	mov	rbx, qword ptr [rsp + 0x20]
	jmp	.label_618
.label_602:
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
	je	.label_627
	test	rbp, rbp
	je	.label_627
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
	jmp	.label_632
.label_549:
	mov	rdi, qword ptr [rsp + 8]
	mov	rsi, qword ptr [rsp + 0x10]
	mov	rdx, rbx
	call	peek_token_bracket
	mov	r13d, eax
	mov	ebp, dword ptr [rsp + 0x50]
	cmp	ebp, 2
	je	.label_585
	cmp	ebp, 4
	jne	.label_595
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
	je	.label_566
	jmp	.label_260
.label_595:
	mov	rax, qword ptr [rsp + 8]
	mov	al, byte ptr [rax + 8]
	cmp	al, 0x16
	mov	rsi, qword ptr [rsp + 0x10]
	je	.label_654
	cmp	al, 2
	jne	.label_104
	jmp	.label_105
.label_654:
	movsxd	rax, r13d
	add	qword ptr [rsi + 0x48], rax
	lea	rdi, [rsp + 0xb0]
	mov	rdx, rbx
	mov	r15, rsi
	call	peek_token_bracket
	mov	cl, byte ptr [rsp + 0xb8]
	cmp	cl, 0x15
	je	.label_109
	cmp	cl, 2
	je	.label_111
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
	jne	.label_126
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
	je	.label_133
	cmp	r15d, 4
	je	.label_133
	cmp	ebp, 3
	mov	r10, qword ptr [rsp + 8]
	jne	.label_145
	mov	rdi, qword ptr [rsp + 0x58]
	call	strlen
	mov	r9, qword ptr [rsp + 0x18]
	mov	r10, qword ptr [rsp + 8]
	mov	ecx, 3
	cmp	rax, 1
	ja	.label_133
.label_145:
	cmp	r15d, 3
	jne	.label_346
	mov	rdi, qword ptr [rsp + 0xa0]
	call	strlen
	mov	r9, qword ptr [rsp + 0x18]
	mov	r10, qword ptr [rsp + 8]
	mov	ecx, 3
	cmp	rax, 1
	ja	.label_133
.label_346:
	cmp	ebp, 3
	je	.label_154
	test	ebp, ebp
	jne	.label_156
	mov	al, byte ptr [rsp + 0x58]
	jmp	.label_157
.label_109:
	mov	eax, r13d
	neg	eax
	cdqe	
	add	qword ptr [r15 + 0x48], rax
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + 8], 1
	mov	r15, qword ptr [rsp + 0x30]
.label_104:
	mov	eax, ebp
	cmp	ebp, 3
	ja	.label_161
	jmp	qword ptr [(rax * 8) + label_162]
.label_2365:
	mov	cl, byte ptr [rsp + 0x58]
	mov	eax, 1
	shl	rax, cl
	shr	cl, 6
	movzx	ecx, cl
	or	qword ptr [r14 + rcx*8], rax
	jmp	.label_439
.label_585:
	mov	rbp, qword ptr [rsp + 0x58]
	mov	rdi, rbp
	call	strlen
	cmp	rax, 1
	jne	.label_170
.label_573:
	mov	cl, byte ptr [rbp]
	mov	eax, 1
	shl	rax, cl
	shr	cl, 6
	movzx	ecx, cl
	or	qword ptr [r14 + rcx*8], rax
	mov	dword ptr [r12], 0
.label_439:
	mov	r10, qword ptr [rsp + 8]
	mov	r9, qword ptr [rsp + 0x18]
.label_566:
	mov	al, byte ptr [r10 + 8]
	cmp	al, 0x15
	jne	.label_183
	movsxd	rax, r13d
	mov	rcx, qword ptr [rsp + 0x10]
	add	qword ptr [rcx + 0x48], rax
	mov	eax, dword ptr [rsp + 0x28]
	test	al, al
	je	.label_187
	movdqu	xmm0, xmmword ptr [r14]
	pcmpeqd	xmm1, xmm1
	pxor	xmm0, xmm1
	movdqu	xmmword ptr [r14], xmm0
	movdqu	xmm0, xmmword ptr [r14 + 0x10]
	pxor	xmm0, xmm1
	movdqu	xmmword ptr [r14 + 0x10], xmm0
.label_187:
	mov	eax, dword ptr [r9 + 0xb4]
	cmp	eax, 2
	jl	.label_196
	mov	rcx, qword ptr [r9 + 0x78]
	mov	rdx, qword ptr [rcx]
	and	qword ptr [r14], rdx
	mov	rdx, qword ptr [rcx + 8]
	and	qword ptr [r14 + 8], rdx
	mov	rdx, qword ptr [rcx + 0x10]
	and	qword ptr [r14 + 0x10], rdx
	mov	rcx, qword ptr [rcx + 0x18]
	and	qword ptr [r14 + 0x18], rcx
.label_196:
	cmp	qword ptr [r15 + 0x28], 0
	jne	.label_204
	cmp	qword ptr [r15 + 0x30], 0
	jne	.label_204
	cmp	qword ptr [r15 + 0x38], 0
	jne	.label_204
	cmp	qword ptr [r15 + 0x40], 0
	jne	.label_204
	cmp	eax, 2
	jl	.label_212
	cmp	qword ptr [r15 + 0x48], 0
	jne	.label_204
	test	byte ptr [r15 + 0x20], 1
	jne	.label_204
.label_212:
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
	je	.label_112
	mov	rax, qword ptr [rsi + 0x70]
.label_284:
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
	jmp	.label_230
.label_204:
	or	byte ptr [r9 + 0xb0], 2
	mov	ecx, dword ptr [r9 + 0x80]
	cmp	ecx, 0xf
	je	.label_238
	mov	rax, qword ptr [r9 + 0x70]
.label_397:
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
	jne	.label_242
	cmp	qword ptr [r14 + 8], 0
	jne	.label_242
	cmp	qword ptr [r14 + 0x10], 0
	jne	.label_242
	cmp	qword ptr [r14 + 0x18], 0
	je	.label_307
.label_242:
	mov	eax, dword ptr [r9 + 0x80]
	cmp	eax, 0xf
	je	.label_252
	mov	rbp, qword ptr [r9 + 0x70]
	mov	r8, qword ptr [rsp + 0x10]
.label_405:
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
	je	.label_254
	mov	rax, qword ptr [r9 + 0x70]
.label_414:
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
.label_181:
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
.label_233:
	movzx	eax, byte ptr [rdi + 8]
	cmp	al, 0x17
	ja	.label_121
	mov	ecx, 0x8c0800
	bt	rcx, rax
	jae	.label_121
	mov	r14, qword ptr [r8 + 0x48]
	movdqu	xmm0, xmmword ptr [rdi]
	movdqa	xmmword ptr [rsp + 0xc0], xmm0
	cmp	eax, 0x17
	mov	qword ptr [rsp + 0x28], r15
	jne	.label_293
	mov	rsi, -1
	jmp	.label_142
	nop	word ptr cs:[rax + rax]
.label_293:
	xor	r13d, r13d
	cmp	eax, 0x12
	sete	r13b
	cmp	eax, 0x13
	mov	r15, -1
	mov	eax, 1
	cmove	r15, rax
.label_413:
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
	je	.label_138
	mov	rax, r15
	mov	r11, r13
	or	rax, r11
	je	.label_308
	test	r11, r11
	mov	eax, 0
	mov	qword ptr [rsp + 0x38], rax
	mov	r12, r9
	mov	rdi, qword ptr [rsp + 8]
	jg	.label_311
.label_184:
	cmp	byte ptr [r12 + 0x30], 0x11
	jne	.label_130
	mov	rax, qword ptr [r12 + 0x28]
	mov	rdx, r12
	nop	
.label_318:
	mov	rcx, rdx
	mov	rdx, qword ptr [rcx + 8]
	test	rdx, rdx
	jne	.label_318
	mov	rdx, qword ptr [rcx + 0x10]
	test	rdx, rdx
	jne	.label_318
	nop	word ptr cs:[rax + rax]
.label_214:
	mov	edx, dword ptr [rcx + 0x30]
	cmp	dl, 0x11
	jne	.label_320
	cmp	qword ptr [rcx + 0x28], rax
	jne	.label_320
	or	edx, 0x80000
	mov	dword ptr [rcx + 0x30], edx
.label_320:
	mov	rsi, qword ptr [rcx]
	test	rsi, rsi
	je	.label_130
	mov	rdx, qword ptr [rsi + 0x10]
	cmp	rdx, rcx
	mov	rcx, rsi
	je	.label_214
	test	rdx, rdx
	mov	rcx, rsi
	je	.label_214
	jmp	.label_318
	nop	word ptr cs:[rax + rax]
.label_130:
	xor	ebx, ebx
	cmp	r15, -1
	sete	r14b
	mov	ecx, dword ptr [rbp + 0x80]
	cmp	ecx, 0xf
	je	.label_266
	mov	rax, qword ptr [rbp + 0x70]
.label_574:
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
	je	.label_333
	mov	qword ptr [r12], r14
.label_333:
	add	r11, 2
	cmp	r11, r15
	jg	.label_347
	mov	qword ptr [rsp + 0x30], r15
	jmp	.label_323
.label_366:
	lea	rax, [r13 + r13*4]
	lea	rax, [rcx + rax*2 - 0x30]
	cmp	rax, 0x8000
	mov	esi, 0x8000
	cmovle	rsi, rax
	nop	dword ptr [rax + rax]
.label_142:
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
	je	.label_357
	cmp	al, 2
	mov	r9, qword ptr [rsp + 0x28]
	je	.label_360
	mov	sil, 0x2c
	cmp	dl, 0x2c
	mov	ebx, eax
	je	.label_362
	cmp	dl, 0x30
	mov	rsi, -2
	mov	rbx, qword ptr [rsp + 0x20]
	jb	.label_142
	cmp	eax, 1
	jne	.label_142
	cmp	r13, -2
	je	.label_142
	cmp	dl, 0x39
	ja	.label_142
	cmp	r13, -1
	jne	.label_366
	add	rcx, -0x30
	mov	rsi, rcx
	jmp	.label_142
	nop	dword ptr [rax]
.label_357:
	mov	esi, edx
	mov	r9, qword ptr [rsp + 0x28]
.label_362:
	cmp	r13, -1
	jne	.label_482
	cmp	sil, 0x2c
	jne	.label_373
	cmp	eax, 1
	mov	r13d, 0
	je	.label_374
	jmp	.label_373
	nop	word ptr [rax + rax]
.label_482:
	cmp	r13, -2
	je	.label_360
.label_374:
	cmp	bl, 0x18
	je	.label_381
	cmp	bl, 1
	jne	.label_360
	cmp	sil, 0x2c
	mov	rbx, qword ptr [rsp + 0x20]
	jne	.label_360
	mov	rdx, -1
	jmp	.label_385
.label_381:
	mov	r15, r13
	mov	rbx, qword ptr [rsp + 0x20]
	jmp	.label_388
.label_408:
	lea	rax, [r15 + r15*4]
	lea	rdx, [rcx + rax*2 - 0x30]
	cmp	rdx, 0x8000
	mov	eax, 0x8000
	cmovg	rdx, rax
	nop	word ptr cs:[rax + rax]
.label_385:
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
	je	.label_398
	cmp	al, 2
	je	.label_360
	cmp	cl, 0x2c
	je	.label_398
	cmp	cl, 0x30
	mov	rdx, -2
	jb	.label_385
	cmp	eax, 1
	jne	.label_385
	cmp	r15, -2
	je	.label_385
	cmp	cl, 0x39
	ja	.label_385
	cmp	r15, -1
	jne	.label_408
	add	rcx, -0x30
	mov	rdx, rcx
	jmp	.label_385
.label_398:
	cmp	r15, -2
	je	.label_360
.label_388:
	cmp	r15, -1
	sete	cl
	cmp	r13, r15
	setle	dl
	or	dl, cl
	cmp	dl, 1
	jne	.label_373
	cmp	eax, 0x18
	jne	.label_373
	cmp	r15, -1
	mov	rax, r15
	cmove	rax, r13
	cmp	rax, 0x8000
	jl	.label_413
	mov	dword ptr [r12], 0xf
	jmp	.label_417
	nop	dword ptr [rax]
.label_373:
	mov	dword ptr [r12], 0xa
	jmp	.label_417
.label_360:
	cmp	qword ptr [rsp + 0x60], 0
	je	.label_420
	mov	qword ptr [r8 + 0x48], r14
	movdqa	xmm0, xmmword ptr [rsp + 0xc0]
	movdqu	xmmword ptr [rdi], xmm0
	mov	byte ptr [rdi + 8], 1
	mov	rcx, r9
	jmp	.label_138
.label_466:
	mov	qword ptr [rsp + 0x40], r11
	mov	edi, 0x3c8
	call	malloc
	test	rax, rax
	je	.label_427
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
	jmp	.label_429
.label_519:
	mov	qword ptr [rsp + 0x40], r11
	mov	r12, r15
	mov	r15, qword ptr [rsp + 0x30]
	jmp	.label_436
.label_522:
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
	je	.label_131
	mov	rcx, qword ptr [rbp + 0x70]
	mov	qword ptr [rax], rcx
	mov	qword ptr [rbp + 0x70], rax
	mov	dword ptr [rbp + 0x80], 0
	xor	ecx, ecx
	jmp	.label_443
.label_427:
	mov	qword ptr [rsp + 0x70], 0
	jmp	.label_447
.label_511:
	mov	qword ptr [rbx], 0
	mov	r15, qword ptr [rsp + 0x30]
.label_447:
	xor	r12d, r12d
.label_436:
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
	je	.label_131
	mov	rcx, qword ptr [rbp + 0x70]
	mov	qword ptr [rax], rcx
	mov	qword ptr [rbp + 0x70], rax
	mov	dword ptr [rbp + 0x80], 0
	xor	ecx, ecx
	jmp	.label_457
	nop	dword ptr [rax + rax]
.label_323:
	mov	r13, qword ptr [r12]
	mov	ecx, dword ptr [rbp + 0x80]
	cmp	ecx, 0xf
	je	.label_466
	mov	rax, qword ptr [rbp + 0x70]
.label_429:
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
	jmp	.label_471
	nop	dword ptr [rax + rax]
.label_507:
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
.label_471:
	mov	qword ptr [rcx], r13
	mov	rax, qword ptr [rbx]
	or	dword ptr [rax + 0x30], 0x40000
	mov	r13, qword ptr [rbx]
	mov	rax, qword ptr [r12 + 8]
	test	rax, rax
	je	.label_491
	lea	rbx, [r13 + 8]
	mov	r12, rax
	jmp	.label_494
	nop	dword ptr [rax]
.label_491:
	xor	eax, eax
	nop	word ptr cs:[rax + rax]
.label_501:
	mov	rcx, rax
	mov	rax, r12
	mov	r12, qword ptr [rax + 0x10]
	cmp	r12, rcx
	je	.label_498
	test	r12, r12
	jne	.label_499
.label_498:
	mov	r12, qword ptr [rax]
	mov	r13, qword ptr [r13]
	test	r12, r12
	jne	.label_501
	jmp	.label_503
.label_499:
	lea	rbx, [r13 + 0x10]
.label_494:
	mov	ecx, dword ptr [rbp + 0x80]
	cmp	ecx, 0xf
	je	.label_504
	mov	rax, qword ptr [rbp + 0x70]
	jmp	.label_507
.label_504:
	mov	qword ptr [rsp + 0x40], r11
	mov	edi, 0x3c8
	call	malloc
	test	rax, rax
	je	.label_511
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
	jmp	.label_507
.label_503:
	mov	ecx, dword ptr [rbp + 0x80]
	cmp	ecx, 0xf
	je	.label_519
	mov	rax, qword ptr [rbp + 0x70]
	mov	r12, r15
	mov	r15, qword ptr [rsp + 0x30]
.label_457:
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
	je	.label_131
	mov	qword ptr [r12], rbx
	mov	ecx, dword ptr [rbp + 0x80]
	cmp	ecx, 0xf
	je	.label_522
	mov	rax, qword ptr [rbp + 0x70]
.label_443:
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
	jl	.label_323
.label_347:
	mov	rbx, qword ptr [rsp + 0x38]
	test	rbx, rbx
	je	.label_530
	mov	ecx, dword ptr [rbp + 0x80]
	cmp	ecx, 0xf
	mov	r12, qword ptr [rsp + 0x48]
	je	.label_531
	mov	rax, qword ptr [rbp + 0x70]
.label_584:
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
	jmp	.label_533
.label_530:
	mov	r12, qword ptr [rsp + 0x48]
.label_533:
	mov	rbx, qword ptr [rsp + 0x20]
	xor	eax, eax
	mov	rcx, r14
	jmp	.label_227
.label_308:
	mov	rax, r9
	nop	word ptr cs:[rax + rax]
.label_540:
	mov	rbx, rax
	mov	rax, qword ptr [rbx + 8]
	test	rax, rax
	jne	.label_540
	mov	rax, qword ptr [rbx + 0x10]
	test	rax, rax
	jne	.label_540
.label_557:
	mov	eax, dword ptr [rbx + 0x30]
	mov	ecx, 0x400ff
	and	eax, ecx
	cmp	eax, 3
	je	.label_542
	cmp	eax, 6
	jne	.label_544
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
	jmp	.label_550
.label_542:
	mov	rdi, qword ptr [rbx + 0x28]
.label_550:
	call	free
	mov	r9, qword ptr [rsp + 0x28]
	mov	r8, qword ptr [rsp + 0x10]
.label_544:
	mov	rdx, qword ptr [rbx]
	test	rdx, rdx
	mov	ecx, 0
	je	.label_138
	mov	rax, qword ptr [rdx + 0x10]
	cmp	rax, rbx
	mov	rbx, rdx
	je	.label_557
	test	rax, rax
	mov	rbx, rdx
	je	.label_557
	jmp	.label_540
.label_311:
	cmp	r11, 1
	mov	rax, r9
	mov	qword ptr [rsp + 0x38], rax
	mov	r12, r9
	je	.label_558
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x38], rax
	mov	r12, r9
	mov	r14d, 2
	mov	rax, r9
	mov	qword ptr [rsp + 0x30], r15
	jmp	.label_134
.label_266:
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
	je	.label_131
	mov	rcx, qword ptr [rbp + 0x70]
	mov	qword ptr [rax], rcx
	mov	qword ptr [rbp + 0x70], rax
	mov	dword ptr [rbp + 0x80], 0
	xor	ecx, ecx
	jmp	.label_574
.label_531:
	mov	edi, 0x3c8
	call	malloc
	pxor	xmm1, xmm1
	mov	r9, qword ptr [rsp + 0x28]
	mov	rbp, qword ptr [rsp + 0x18]
	mov	r8, qword ptr [rsp + 0x10]
	test	rax, rax
	mov	ecx, 0
	je	.label_138
	mov	rcx, qword ptr [rbp + 0x70]
	mov	qword ptr [rax], rcx
	mov	qword ptr [rbp + 0x70], rax
	mov	dword ptr [rbp + 0x80], 0
	xor	ecx, ecx
	mov	rdi, qword ptr [rsp + 8]
	jmp	.label_584
.label_420:
	xor	ecx, ecx
	cmp	al, 2
	setne	cl
	add	ecx, 9
	mov	dword ptr [r12], ecx
	jmp	.label_417
.label_570:
	mov	edi, 0x3c8
	call	malloc
	test	rax, rax
	je	.label_591
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
	jmp	.label_274
.label_110:
	mov	r12, rbx
	jmp	.label_601
.label_591:
	mov	qword ptr [rsp + 0x70], 0
	jmp	.label_603
.label_653:
	mov	qword ptr [r15], 0
.label_603:
	xor	r12d, r12d
.label_601:
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
	je	.label_131
	mov	rcx, qword ptr [rbp + 0x70]
	mov	qword ptr [rax], rcx
	mov	qword ptr [rbp + 0x70], rax
	mov	dword ptr [rbp + 0x80], 0
	xor	ecx, ecx
	jmp	.label_610
.label_134:
	mov	ecx, dword ptr [rbp + 0x80]
	cmp	ecx, 0xf
	mov	qword ptr [rsp + 0x40], rax
	je	.label_570
	mov	rax, qword ptr [rbp + 0x70]
.label_274:
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
	jmp	.label_616
.label_650:
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
.label_616:
	mov	rax, qword ptr [rsp + 0x38]
	mov	qword ptr [rcx], rax
	mov	rax, qword ptr [r15]
	or	dword ptr [rax + 0x30], 0x40000
	mov	rcx, qword ptr [r15]
	mov	rax, qword ptr [r12 + 8]
	test	rax, rax
	mov	qword ptr [rsp + 0x38], rcx
	je	.label_634
	lea	r15, [rcx + 8]
	mov	r12, rax
	jmp	.label_637
.label_634:
	xor	eax, eax
	mov	r15, qword ptr [rsp + 0x30]
	nop	word ptr [rax + rax]
.label_644:
	mov	rcx, rax
	mov	rax, r12
	mov	r12, qword ptr [rax + 0x10]
	cmp	r12, rcx
	je	.label_641
	test	r12, r12
	jne	.label_642
.label_641:
	mov	r12, qword ptr [rax]
	mov	rcx, qword ptr [rsp + 0x38]
	mov	rcx, qword ptr [rcx]
	mov	qword ptr [rsp + 0x38], rcx
	test	r12, r12
	jne	.label_644
	jmp	.label_646
.label_642:
	mov	rax, qword ptr [rsp + 0x38]
	lea	r15, [rax + 0x10]
.label_637:
	mov	ecx, dword ptr [rbp + 0x80]
	cmp	ecx, 0xf
	je	.label_647
	mov	rax, qword ptr [rbp + 0x70]
	jmp	.label_650
.label_647:
	mov	edi, 0x3c8
	call	malloc
	test	rax, rax
	je	.label_653
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
	jmp	.label_650
.label_646:
	mov	ecx, dword ptr [rbp + 0x80]
	cmp	ecx, 0xf
	je	.label_110
	mov	rax, qword ptr [rbp + 0x70]
	mov	r12, rbx
.label_610:
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
	je	.label_114
	mov	qword ptr [rbx], rdx
.label_114:
	mov	qword ptr [rsp + 0x38], rdx
	test	r12, r12
	je	.label_131
	mov	rax, qword ptr [rsp + 0x38]
	mov	qword ptr [r12], rax
	cmp	r14, r11
	lea	r14, [r14 + 1]
	jl	.label_134
.label_558:
	cmp	r11, r15
	jne	.label_137
	mov	rcx, qword ptr [rsp + 0x38]
	mov	r12, qword ptr [rsp + 0x48]
	jmp	.label_138
.label_137:
	mov	r14, qword ptr [r12]
	mov	ecx, dword ptr [rbp + 0x80]
	cmp	ecx, 0xf
	mov	qword ptr [rsp + 0x30], r15
	je	.label_143
	mov	rax, qword ptr [rbp + 0x70]
.label_207:
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
	jmp	.label_146
.label_188:
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
.label_146:
	mov	qword ptr [rcx], r14
	mov	rax, qword ptr [r15]
	or	dword ptr [rax + 0x30], 0x40000
	mov	r14, qword ptr [r15]
	mov	rax, qword ptr [rbx + 8]
	test	rax, rax
	je	.label_167
	lea	r15, [r14 + 8]
	mov	rbx, rax
	jmp	.label_171
.label_167:
	xor	eax, eax
	mov	r15, qword ptr [rsp + 0x30]
.label_182:
	mov	rcx, rax
	mov	rax, rbx
	mov	rbx, qword ptr [rax + 0x10]
	cmp	rbx, rcx
	je	.label_488
	test	rbx, rbx
	jne	.label_180
.label_488:
	mov	rbx, qword ptr [rax]
	mov	r14, qword ptr [r14]
	test	rbx, rbx
	jne	.label_182
	jmp	.label_184
.label_180:
	lea	r15, [r14 + 0x10]
.label_171:
	mov	ecx, dword ptr [rbp + 0x80]
	cmp	ecx, 0xf
	je	.label_186
	mov	rax, qword ptr [rbp + 0x70]
	jmp	.label_188
.label_186:
	mov	edi, 0x3c8
	call	malloc
	test	rax, rax
	je	.label_194
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
	jmp	.label_188
.label_143:
	mov	edi, 0x3c8
	call	malloc
	test	rax, rax
	je	.label_206
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
	jmp	.label_207
.label_206:
	mov	qword ptr [rsp + 0x70], 0
	jmp	.label_218
.label_194:
	mov	qword ptr [r15], 0
.label_218:
	mov	r8, qword ptr [rsp + 0x10]
	mov	r9, qword ptr [rsp + 0x28]
.label_131:
	mov	r12, qword ptr [rsp + 0x48]
	mov	dword ptr [r12], 0xc
.label_417:
	xor	ecx, ecx
.label_138:
	test	rcx, rcx
	sete	al
	jne	.label_225
	mov	edx, dword ptr [r12]
	test	edx, edx
	mov	rbx, qword ptr [rsp + 0x20]
	mov	rdi, qword ptr [rsp + 8]
	je	.label_227
	jmp	.label_231
	nop	word ptr cs:[rax + rax]
.label_225:
	mov	rbx, qword ptr [rsp + 0x20]
	mov	rdi, qword ptr [rsp + 8]
.label_227:
	cmp	qword ptr [rsp + 0x68], 0
	mov	r15, rcx
	je	.label_233
	mov	dl, byte ptr [rdi + 8]
	cmp	dl, 0x17
	je	.label_235
	cmp	dl, 0xb
	mov	r15, rcx
	jne	.label_233
.label_235:
	test	al, al
	jne	.label_158
	mov	r14d, 0x400ff
	nop	dword ptr [rax + rax]
.label_228:
	mov	rbp, rcx
	mov	rcx, qword ptr [rbp + 8]
	test	rcx, rcx
	jne	.label_228
	mov	rcx, qword ptr [rbp + 0x10]
	test	rcx, rcx
	jne	.label_228
	nop	word ptr cs:[rax + rax]
.label_251:
	mov	eax, dword ptr [rbp + 0x30]
	and	eax, r14d
	cmp	eax, 3
	je	.label_245
	cmp	eax, 6
	jne	.label_246
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
	jmp	.label_247
	nop	dword ptr [rax]
.label_245:
	mov	rdi, qword ptr [rbp + 0x28]
.label_247:
	call	free
.label_246:
	mov	rax, qword ptr [rbp]
	test	rax, rax
	je	.label_158
	mov	rcx, qword ptr [rax + 0x10]
	cmp	rcx, rbp
	mov	rbp, rax
	je	.label_251
	test	rcx, rcx
	mov	rbp, rax
	je	.label_251
	jmp	.label_228
.label_158:
	mov	dword ptr [r12], 0xd
.label_493:
	xor	r15d, r15d
.label_121:
	mov	rax, r15
	add	rsp, 0xe8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_489:
	mov	dword ptr [r10], 5
	mov	r15, rdi
	sub	r15, -0x80
	mov	r14d, dword ptr [rdi + 0x80]
	cmp	r14d, 0xf
	je	.label_261
	mov	rax, qword ptr [rdi + 0x70]
.label_479:
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
.label_496:
	mov	dword ptr [r10], ecx
	mov	ebp, dword ptr [r15]
	cmp	ebp, 0xf
	je	.label_278
	mov	rax, qword ptr [rdi + 0x70]
.label_434:
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
.label_430:
	mov	ecx, dword ptr [r15]
	cmp	ecx, 0xf
	je	.label_286
	mov	rax, qword ptr [rdi + 0x70]
.label_440:
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
	je	.label_288
	mov	qword ptr [r14], r15
.label_288:
	test	rbp, rbp
	je	.label_295
	mov	qword ptr [rbp], r15
	test	r14, r14
	jne	.label_297
	jmp	.label_295
.label_490:
	mov	ecx, dword ptr [rdi + 0x80]
	cmp	ecx, 0xf
	je	.label_300
	mov	rax, qword ptr [rdi + 0x70]
.label_484:
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
.label_297:
	mov	rdi, r10
	mov	rsi, r8
	mov	rdx, rbx
	mov	rbx, r8
	call	peek_token
	cdqe	
	add	qword ptr [rbx + 0x48], rax
	jmp	.label_121
.label_344:
	mov	rbp, r14
	jmp	.label_181
.label_231:
	xor	r15d, r15d
	test	r9, r9
	je	.label_121
	mov	r14d, 0x400ff
	xor	r15d, r15d
	nop	word ptr cs:[rax + rax]
.label_178:
	mov	rbx, r9
	mov	r9, qword ptr [rbx + 8]
	test	r9, r9
	jne	.label_178
	mov	r9, qword ptr [rbx + 0x10]
	test	r9, r9
	jne	.label_178
.label_337:
	mov	eax, dword ptr [rbx + 0x30]
	and	eax, r14d
	cmp	eax, 3
	je	.label_325
	cmp	eax, 6
	jne	.label_326
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
	jmp	.label_331
.label_325:
	mov	rdi, qword ptr [rbx + 0x28]
.label_331:
	call	free
.label_326:
	mov	rax, qword ptr [rbx]
	test	rax, rax
	je	.label_121
	mov	r9, qword ptr [rax + 0x10]
	cmp	r9, rbx
	mov	rbx, rax
	je	.label_337
	test	r9, r9
	mov	rbx, rax
	je	.label_337
	jmp	.label_178
.label_307:
	mov	rdi, r14
	call	free
	mov	r10, qword ptr [rsp + 8]
	mov	rbp, r15
	mov	r8, qword ptr [rsp + 0x10]
	jmp	.label_181
.label_548:
	mov	dword ptr [r12], eax
	jmp	.label_260
.label_556:
	mov	dword ptr [r12], 7
	jmp	.label_260
.label_516:
	mov	edi, 0x3c8
	call	malloc
	test	rax, rax
	je	.label_295
	mov	rdi, qword ptr [rsp + 0x18]
	mov	rcx, qword ptr [rdi + 0x70]
	mov	qword ptr [rax], rcx
	mov	qword ptr [rdi + 0x70], rax
	mov	dword ptr [rdi + 0x80], 0
	xor	ecx, ecx
	mov	rbx, qword ptr [rsp + 0x20]
	mov	r8, qword ptr [rsp + 0x10]
	mov	r10, qword ptr [rsp + 8]
	jmp	.label_350
.label_428:
	mov	dword ptr [r12], 2
	jmp	.label_260
.label_221:
	mov	edi, 0x3c8
	call	malloc
	test	rax, rax
	je	.label_295
	mov	rdi, qword ptr [rsp + 0x18]
	mov	rcx, qword ptr [rdi + 0x70]
	mov	qword ptr [rax], rcx
	mov	qword ptr [rdi + 0x70], rax
	mov	dword ptr [rdi + 0x80], 0
	xor	ecx, ecx
	mov	rbx, qword ptr [rsp + 0x20]
	mov	r8, qword ptr [rsp + 0x10]
	mov	r10, qword ptr [rsp + 8]
	jmp	.label_416
.label_407:
	mov	dword ptr [r12], 6
	jmp	.label_493
.label_424:
	mov	edi, 0x3c8
	call	malloc
	test	rax, rax
	je	.label_295
	mov	rdi, qword ptr [rsp + 0x18]
	mov	rcx, qword ptr [rdi + 0x70]
	mov	qword ptr [rax], rcx
	mov	qword ptr [rdi + 0x70], rax
	mov	dword ptr [rdi + 0x80], 0
	xor	ecx, ecx
	mov	rbx, qword ptr [rsp + 0x20]
	mov	r8, qword ptr [rsp + 0x10]
	mov	r10, qword ptr [rsp + 8]
	jmp	.label_371
.label_526:
	mov	rdi, r14
	call	free
	mov	rdi, r15
	call	free
	jmp	.label_295
.label_476:
	mov	edi, 0x3c8
	call	malloc
	test	rax, rax
	je	.label_295
	mov	rdi, qword ptr [rsp + 0x18]
	mov	rcx, qword ptr [rdi + 0x70]
	mov	qword ptr [rax], rcx
	mov	qword ptr [rdi + 0x70], rax
	mov	dword ptr [rdi + 0x80], 0
	xor	ecx, ecx
	mov	rbx, qword ptr [rsp + 0x20]
	mov	r8, qword ptr [rsp + 0x10]
	mov	r10, qword ptr [rsp + 8]
	jmp	.label_386
.label_238:
	mov	edi, 0x3c8
	call	malloc
	test	rax, rax
	je	.label_403
	mov	r9, qword ptr [rsp + 0x18]
	mov	rcx, qword ptr [r9 + 0x70]
	mov	qword ptr [rax], rcx
	mov	qword ptr [r9 + 0x70], rax
	mov	dword ptr [r9 + 0x80], 0
	xor	ecx, ecx
	mov	rbx, qword ptr [rsp + 0x20]
	mov	r10, qword ptr [rsp + 8]
	jmp	.label_397
.label_252:
	mov	edi, 0x3c8
	call	malloc
	mov	rbp, rax
	test	rbp, rbp
	je	.label_403
	mov	r9, qword ptr [rsp + 0x18]
	mov	rax, qword ptr [r9 + 0x70]
	mov	qword ptr [rbp], rax
	mov	qword ptr [r9 + 0x70], rbp
	mov	dword ptr [r9 + 0x80], 0
	xor	eax, eax
	mov	r8, qword ptr [rsp + 0x10]
	mov	r10, qword ptr [rsp + 8]
	jmp	.label_405
.label_254:
	mov	edi, 0x3c8
	call	malloc
	test	rax, rax
	je	.label_403
	mov	r9, qword ptr [rsp + 0x18]
	mov	rcx, qword ptr [r9 + 0x70]
	mov	qword ptr [rax], rcx
	mov	qword ptr [r9 + 0x70], rax
	mov	dword ptr [r9 + 0x80], 0
	xor	ecx, ecx
	mov	r8, qword ptr [rsp + 0x10]
	mov	r10, qword ptr [rsp + 8]
	jmp	.label_414
.label_170:
	mov	dword ptr [r12], 3
	jmp	.label_260
.label_460:
	mov	rbp, rdi
	mov	edi, 0x3c8
	call	malloc
	test	rax, rax
	je	.label_295
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
	jmp	.label_423
.label_278:
	mov	edi, 0x3c8
	call	malloc
	mov	rdi, qword ptr [rsp + 0x18]
	mov	r10, qword ptr [rsp + 8]
	mov	r8, qword ptr [rsp + 0x10]
	xor	ebp, ebp
	test	rax, rax
	je	.label_430
	mov	rcx, qword ptr [rdi + 0x70]
	mov	qword ptr [rax], rcx
	mov	qword ptr [rdi + 0x70], rax
	mov	dword ptr [r15], 0
	jmp	.label_434
.label_286:
	mov	edi, 0x3c8
	call	malloc
	mov	r10, qword ptr [rsp + 8]
	mov	r8, qword ptr [rsp + 0x10]
	test	rax, rax
	je	.label_295
	mov	rdx, qword ptr [rsp + 0x18]
	mov	rcx, qword ptr [rdx + 0x70]
	mov	qword ptr [rax], rcx
	mov	qword ptr [rdx + 0x70], rax
	mov	dword ptr [r15], 0
	xor	ecx, ecx
	jmp	.label_440
.label_105:
	mov	dword ptr [r12], 7
	jmp	.label_260
.label_478:
	call	__ctype_b_loc
	mov	rdi, qword ptr [rsp + 0x18]
	mov	r10, qword ptr [rsp + 8]
	mov	r8, qword ptr [rsp + 0x10]
	mov	r9, qword ptr [rax]
	inc	r14
.label_448:
	mov	rsi, r14
	xor	eax, eax
.label_459:
	test	byte ptr [r9 + rsi*2 - 2], 8
	je	.label_394
	mov	edx, 1
	mov	ecx, eax
	shl	rdx, cl
	or	qword ptr [rdi + rbp*8 + 0xb8], rdx
.label_394:
	cmp	esi, 0x5f
	je	.label_452
	movzx	ecx, word ptr [r9 + rsi*2]
	and	ecx, 8
	test	cx, cx
	je	.label_453
.label_452:
	lea	ecx, [rax + 1]
	mov	edx, 1
	shl	rdx, cl
	or	qword ptr [rdi + rbp*8 + 0xb8], rdx
.label_453:
	add	rax, 2
	add	rsi, 2
	cmp	rax, 0x40
	jne	.label_459
	inc	rbp
	add	r14, 0x40
	cmp	ebp, 4
	jne	.label_448
	jmp	.label_464
.label_492:
	mov	edi, 0x3c8
	call	malloc
	mov	ecx, 9
	xor	r14d, r14d
	test	rax, rax
	je	.label_468
	mov	rdi, qword ptr [rsp + 0x18]
	mov	rcx, qword ptr [rdi + 0x70]
	mov	qword ptr [rax], rcx
	mov	qword ptr [rdi + 0x70], rax
	mov	dword ptr [rdi + 0x80], 0
	mov	rbx, qword ptr [rsp + 0x20]
	mov	r8, qword ptr [rsp + 0x10]
	mov	r10, qword ptr [rsp + 8]
	jmp	.label_472
.label_261:
	mov	edi, 0x3c8
	call	malloc
	mov	ecx, 0xa
	xor	r14d, r14d
	test	rax, rax
	je	.label_468
	mov	rdi, qword ptr [rsp + 0x18]
	mov	rcx, qword ptr [rdi + 0x70]
	mov	qword ptr [rax], rcx
	mov	qword ptr [rdi + 0x70], rax
	mov	dword ptr [rdi + 0x80], 0
	mov	rbx, qword ptr [rsp + 0x20]
	mov	r8, qword ptr [rsp + 0x10]
	mov	r10, qword ptr [rsp + 8]
	jmp	.label_479
.label_300:
	mov	edi, 0x3c8
	call	malloc
	test	rax, rax
	je	.label_295
	mov	rdi, qword ptr [rsp + 0x18]
	mov	rcx, qword ptr [rdi + 0x70]
	mov	qword ptr [rax], rcx
	mov	qword ptr [rdi + 0x70], rax
	mov	dword ptr [rdi + 0x80], 0
	xor	ecx, ecx
	mov	rbx, qword ptr [rsp + 0x20]
	mov	r8, qword ptr [rsp + 0x10]
	mov	r10, qword ptr [rsp + 8]
	jmp	.label_484
.label_295:
	mov	dword ptr [r12], 0xc
	jmp	.label_493
.label_111:
	mov	dword ptr [r12], 7
	jmp	.label_495
.label_468:
	mov	rbx, qword ptr [rsp + 0x20]
	mov	r8, qword ptr [rsp + 0x10]
	mov	r10, qword ptr [rsp + 8]
	mov	rdi, qword ptr [rsp + 0x18]
	jmp	.label_496
.label_449:
	mov	rax, rdi
	test	rdi, rdi
	je	.label_500
	mov	r14d, 0x400ff
	mov	rcx, rax
.label_506:
	mov	rbp, rcx
	mov	rcx, qword ptr [rbp + 8]
	test	rcx, rcx
	jne	.label_506
	mov	rcx, qword ptr [rbp + 0x10]
	test	rcx, rcx
	jne	.label_506
.label_518:
	mov	eax, dword ptr [rbp + 0x30]
	and	eax, r14d
	cmp	eax, 3
	je	.label_509
	cmp	eax, 6
	jne	.label_510
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
	jmp	.label_198
.label_509:
	mov	rdi, qword ptr [rbp + 0x28]
.label_198:
	call	free
.label_510:
	mov	rax, qword ptr [rbp]
	test	rax, rax
	je	.label_500
	mov	rcx, qword ptr [rax + 0x10]
	cmp	rcx, rbp
	mov	rbp, rax
	je	.label_518
	test	rcx, rcx
	mov	rbp, rax
	je	.label_518
	jmp	.label_506
.label_500:
	mov	dword ptr [r12], 8
	jmp	.label_493
.label_126:
	mov	r12, qword ptr [rsp + 0x48]
	mov	dword ptr [r12], eax
	jmp	.label_495
.label_575:
	mov	dword ptr [r12], 3
	jmp	.label_260
.label_112:
	mov	edi, 0x3c8
	call	malloc
	test	rax, rax
	je	.label_403
	mov	rsi, qword ptr [rsp + 0x18]
	mov	rcx, qword ptr [rsi + 0x70]
	mov	qword ptr [rax], rcx
	mov	qword ptr [rsi + 0x70], rax
	mov	dword ptr [rsi + 0x80], 0
	xor	ecx, ecx
	mov	rbx, qword ptr [rsp + 0x20]
	jmp	.label_284
.label_403:
	mov	dword ptr [r12], 0xc
	mov	rbx, qword ptr [rsp + 0x20]
	jmp	.label_495
.label_161:
	mov	edi, OFFSET FLAT:label_523
	mov	esi, OFFSET FLAT:label_524
	mov	edx, 0xced
	mov	ecx, OFFSET FLAT:label_525
	call	__assert_fail
.label_627:
	call	free
	mov	rdi, rbp
	call	free
	mov	ecx, 0xc
	mov	rbx, qword ptr [rsp + 0x20]
.label_133:
	mov	r12, qword ptr [rsp + 0x48]
	mov	dword ptr [r12], ecx
.label_495:
	mov	r15, qword ptr [rsp + 0x30]
.label_260:
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
	jmp	.label_421
	push	rax
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	jb	.label_535
	call	rpl_calloc
	test	rax, rax
	je	.label_535
	pop	rcx
	ret	
.label_535:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	mov	rdx, -1
	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	nop	
	.section	.text
	.align	16
	#Procedure 0x408c60

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
	js	.label_1090
	mov	eax, dword ptr [r13]
	mov	rbp, qword ptr [rip + slotvec]
	cmp	dword ptr [rip + nslots],  r12d
	mov	qword ptr [rsp + 0x18], r13
	mov	dword ptr [rsp], eax
	mov	qword ptr [rsp + 0x10], rbx
	mov	qword ptr [rsp + 8], r15
	jg	.label_1093
	cmp	r12d, 0x7fffffff
	je	.label_1095
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
	jne	.label_1091
	movups	xmm0, xmmword ptr [rip + slotvec0]
	movups	xmmword ptr [r14], xmm0
.label_1091:
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
.label_1093:
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
	jbe	.label_1096
	mov	rax, qword ptr [rsp + 0x18]
	mov	ebp, dword ptr [rsp]
	jmp	.label_1092
.label_1096:
	lea	rax, [rbp + r13]
	lea	r12, [rbp + r13 + 8]
	inc	r15
	mov	qword ptr [rax], r15
	mov	eax, OFFSET FLAT:slot0
	cmp	r14, rax
	mov	ebp, dword ptr [rsp]
	je	.label_1094
	mov	rdi, r14
	call	free
.label_1094:
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
.label_1092:
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
.label_1090:
	call	abort
.label_1095:
	call	xalloc_die
	nop	dword ptr [rax]
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
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x408e60

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
	jne	.label_1101
	mov	qword ptr [rsp + 0x20], r15
	mov	rsi, qword ptr [r15]
	mov	rdi, qword ptr [r12 + 8]
	mov	r15, qword ptr [r13 + 0xc8]
	mov	rax, qword ptr [r13 + 0xd0]
	cmp	r15, rax
	jl	.label_1104
	mov	qword ptr [rsp + 0x10], rsi
	mov	qword ptr [rsp + 0x18], rdi
	mov	rdi, qword ptr [r13 + 0xd8]
	shl	rax, 4
	lea	rsi, [rax + rax*4]
	call	realloc
	test	rax, rax
	je	.label_1102
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
.label_1104:
	test	r15, r15
	jle	.label_1105
	lea	rcx, [r15 - 1]
	mov	rax, qword ptr [r13 + 0xd8]
	lea	rcx, [rcx + rcx*4]
	cmp	qword ptr [rax + rcx*8 + 8], r14
	jne	.label_1099
	mov	byte ptr [rax + rcx*8 + 0x20], 1
	jmp	.label_1099
.label_1105:
	mov	rax, qword ptr [r13 + 0xd8]
.label_1099:
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
	jge	.label_1100
	mov	dword ptr [r13 + 0xe0], edi
.label_1100:
	add	r14, qword ptr [r12 + 8]
	mov	rax, qword ptr [rsp + 0x20]
	sub	r14, qword ptr [rax]
	mov	rax, qword ptr [r13 + 0x40]
	mov	r15, qword ptr [r13 + 0xc0]
	cmp	rax, r14
	jg	.label_1103
	cmp	rax, qword ptr [r13 + 0x58]
	jl	.label_1097
.label_1103:
	mov	rax, qword ptr [r13 + 0x30]
	cmp	rax, r14
	jg	.label_1098
	cmp	rax, qword ptr [r13 + 0x58]
	jge	.label_1098
.label_1097:
	lea	esi, [r14 + 1]
	mov	rdi, r13
	call	extend_buffers
	mov	ebp, eax
	test	ebp, ebp
	jne	.label_1101
.label_1098:
	xor	ebp, ebp
	mov	rdx, r14
	sub	rdx, r15
	jle	.label_1101
	mov	rax, qword ptr [r13 + 0xb8]
	lea	rdi, [rax + r15*8 + 8]
	shl	rdx, 3
	xor	ebp, ebp
	xor	esi, esi
	call	memset
	mov	qword ptr [r13 + 0xc0], r14
.label_1101:
	mov	eax, ebp
	add	rsp, 0x28
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_1102:
	mov	rdi, qword ptr [r13 + 0xd8]
	call	free
	mov	ebp, 0xc
	jmp	.label_1101
	nop	dword ptr [rax + rax]
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
	js	.label_122
	movabs	rax, 0x7fffffffffffffff
	test	rbx, rbx
	js	.label_118
	sub	rax, rbx
	cmp	rax, r14
	jl	.label_122
	lea	rdx, [rbx + r14]
	xor	r12d, r12d
	test	rbx, rbx
	jle	.label_125
	xor	r12d, r12d
	test	r14, r14
	jle	.label_129
	mov	qword ptr [rsp + 8], rdi
	mov	qword ptr [rsp], rdx
	mov	rdi, rdx
	mov	qword ptr [rsp + 0x10], r9
	call	malloc
	mov	r12, rax
	test	r12, r12
	je	.label_122
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
	jmp	.label_125
.label_118:
	inc	rax
	sub	rax, rbx
	cmp	rax, r14
	jle	.label_649
.label_122:
	mov	rax, -2
	jmp	.label_148
.label_129:
	mov	r13, r15
.label_125:
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
.label_148:
	add	rsp, 0x18
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
.label_649:
	add	rbx, r14
	xor	r12d, r12d
	mov	rdx, rbx
	jmp	.label_125
	test	rdi, rdi
	mov	eax, OFFSET FLAT:default_quoting_options
	cmovne	rax, rdi
	mov	dword ptr [rax], esi
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x409160

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
	je	.label_1108
	mov	rax, qword ptr [r14 + 8]
	test	rax, rax
	je	.label_1108
	mov	rbx, qword ptr [r15]
	mov	rcx, qword ptr [r15 + 8]
	lea	rdx, [rcx + rax*2]
	cmp	rbx, rdx
	jge	.label_1107
	add	rbx, rax
	mov	rdi, qword ptr [r15 + 0x10]
	mov	rsi, rbx
	shl	rsi, 4
	call	realloc
	mov	rcx, rax
	mov	eax, 0xc
	test	rcx, rcx
	je	.label_1116
	add	rbx, rbx
	mov	qword ptr [r15 + 0x10], rcx
	mov	qword ptr [r15], rbx
	mov	rcx, qword ptr [r15 + 8]
	mov	rax, qword ptr [r14 + 8]
.label_1107:
	test	rcx, rcx
	je	.label_1109
	lea	r12, [rcx + rax*2]
	dec	rax
	dec	rcx
	mov	rdx, rax
	or	rdx, rcx
	js	.label_1111
	mov	rdx, qword ptr [r15 + 0x10]
	mov	rsi, qword ptr [r14 + 0x10]
	jmp	.label_1112
.label_1106:
	dec	rax
.label_1119:
	dec	rcx
	jmp	.label_1118
	nop	word ptr [rax + rax]
.label_1112:
	mov	rdi, qword ptr [rsi + rax*8]
	cmp	qword ptr [rdx + rcx*8], rdi
	je	.label_1106
	jge	.label_1119
	dec	rax
	mov	qword ptr [rdx + r12*8 - 8], rdi
	dec	r12
.label_1118:
	mov	rdi, rax
	or	rdi, rcx
	jns	.label_1112
.label_1111:
	test	rax, rax
	js	.label_1115
	lea	rcx, [rax + 1]
	sub	r12, rcx
	lea	rdi, [r12*8]
	add	rdi, qword ptr [r15 + 0x10]
	mov	rsi, qword ptr [r14 + 0x10]
	lea	rdx, [rax*8 + 8]
	call	memcpy
.label_1115:
	mov	r9, qword ptr [r15 + 8]
	mov	rax, qword ptr [r14 + 8]
	lea	rcx, [r9 + rax*2 - 1]
	mov	rsi, rcx
	sub	rsi, r12
	inc	rsi
	je	.label_1108
	lea	rax, [rsi + r9]
	mov	qword ptr [r15 + 8], rax
	mov	rdi, qword ptr [r15 + 0x10]
.label_1117:
	lea	r8, [r9 - 1]
	lea	rdx, [rsi*8]
	nop	dword ptr [rax + rax]
.label_1110:
	mov	rax, qword ptr [rdi + rcx*8]
	mov	rbx, qword ptr [rdi + r9*8 - 8]
	cmp	rax, rbx
	jle	.label_1114
	dec	rcx
	lea	rbx, [rdi + rdx]
	add	rdx, -8
	dec	rsi
	mov	qword ptr [rbx + r9*8 - 8], rax
	jne	.label_1110
	jmp	.label_1108
	nop	word ptr cs:[rax + rax]
.label_1114:
	lea	rax, [rdi + rdx]
	mov	qword ptr [rax + r9*8 - 8], rbx
	cmp	r9, 1
	mov	r9, r8
	jg	.label_1117
	lea	rsi, [rdi + r12*8]
.label_1113:
	call	memcpy
.label_1108:
	xor	eax, eax
.label_1116:
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
.label_1109:
	mov	qword ptr [r15 + 8], rax
	mov	rdi, qword ptr [r15 + 0x10]
	mov	rdx, qword ptr [r14 + 8]
	mov	rsi, qword ptr [r14 + 0x10]
	shl	rdx, 3
	jmp	.label_1113
	nop	
.label_236:
	push	rax
	call	abort
	nop	dword ptr [rax + rax]
	test	rdi, rdi
	mov	eax, OFFSET FLAT:default_quoting_options
	cmovne	rax, rdi
	mov	dword ptr [rax], 0xa
	test	rsi, rsi
	je	.label_236
	test	rdx, rdx
	je	.label_236
	mov	qword ptr [rax + 0x28], rsi
	mov	qword ptr [rax + 0x30], rdx
	ret	
.label_291:
	call	abort
	nop	word ptr cs:[rax + rax]
	sub	rsp, 0x78
	xorps	xmm0, xmm0
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp + 0x30], 0
	cmp	edi, 0xa
	je	.label_291
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
	#Procedure 0x409390

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
	je	.label_1122
	test	r13, r13
	jle	.label_1124
	xor	ebp, ebp
	nop	dword ptr [rax]
.label_1121:
	mov	rcx, qword ptr [rbx + 0x18]
	mov	r14, qword ptr [rcx + rbp*8]
	mov	rcx, qword ptr [r12]
	mov	rdx, r14
	shl	rdx, 4
	test	byte ptr [rcx + rdx + 8], 8
	jne	.label_1120
	mov	rdx, qword ptr [rbx + 0x20]
	mov	rcx, qword ptr [rbx + 0x28]
	cmp	rdx, rcx
	jne	.label_1126
	lea	rcx, [rdx + rdx + 2]
	lea	rdx, [rdx + rdx]
	mov	qword ptr [rbx + 0x20], rcx
	lea	rsi, [rdx*8 + 0x10]
	mov	rdi, rax
	call	realloc
	test	rax, rax
	je	.label_1125
	mov	qword ptr [rbx + 0x30], rax
	mov	rcx, qword ptr [rbx + 0x28]
.label_1126:
	lea	rdx, [rcx + 1]
	mov	qword ptr [rbx + 0x28], rdx
	mov	qword ptr [rax + rcx*8], r14
	mov	r13, qword ptr [rbx + 0x10]
.label_1120:
	inc	rbp
	cmp	rbp, r13
	jl	.label_1121
.label_1124:
	mov	r13, qword ptr [r12 + 0x40]
	and	r15, qword ptr [r12 + 0x88]
	lea	rbp, [r15 + r15*2]
	lea	r14, [r13 + rbp*8]
	mov	r15, qword ptr [r13 + rbp*8]
	cmp	qword ptr [r13 + rbp*8 + 8], r15
	jle	.label_1123
	mov	rax, qword ptr [r13 + rbp*8 + 0x10]
.label_1127:
	lea	rcx, [r15 + 1]
	mov	qword ptr [r14], rcx
	mov	qword ptr [rax + r15*8], rbx
	xor	ecx, ecx
.label_1122:
	mov	eax, ecx
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_1125:
	mov	ecx, 0xc
	jmp	.label_1122
.label_1123:
	lea	rax, [r15 + r15]
	mov	rdi, qword ptr [r13 + rbp*8 + 0x10]
	lea	rsi, [rax*8 + 0x10]
	call	realloc
	test	rax, rax
	mov	ecx, 0xc
	je	.label_1122
	lea	rcx, [r13 + rbp*8 + 8]
	lea	rdx, [r15 + r15 + 2]
	mov	qword ptr [rcx + 8], rax
	mov	qword ptr [rcx], rdx
	mov	r15, qword ptr [r14]
	jmp	.label_1127
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4094d0

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
	jle	.label_1176
	cmp	dword ptr [rbx + 0x90], 2
	jl	.label_1187
	mov	qword ptr [rbx + 0x20], 0
.label_1187:
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
	jne	.label_1133
	mov	rax, qword ptr [rbx]
	mov	qword ptr [rbx + 8], rax
	xor	eax, eax
	mov	r14, r12
.label_1133:
	test	r14, r14
	je	.label_1137
	mov	rbp, qword ptr [rbx + 0x38]
	cmp	r14, rbp
	jge	.label_1148
	cmp	byte ptr [rbx + 0x8c], 0
	jne	.label_1158
	lea	rsi, [r14 - 1]
	mov	rdi, rbx
	mov	edx, r15d
	call	re_string_context_at
	mov	dword ptr [rbx + 0x70], eax
	cmp	dword ptr [rbx + 0x90], 2
	jl	.label_1163
	mov	rdi, qword ptr [rbx + 0x10]
	mov	rdx, qword ptr [rbx + 0x30]
	lea	rsi, [rdi + r14*4]
	sub	rdx, r14
	shl	rdx, 2
	call	memmove
.label_1163:
	cmp	byte ptr [rbx + 0x8b], 0
	jne	.label_1168
.label_1152:
	sub	qword ptr [rbx + 0x30], r14
	sub	qword ptr [rbx + 0x38], r14
.label_1149:
	cmp	byte ptr [rbx + 0x8b], 0
	jne	.label_1137
	add	qword ptr [rbx + 8], r14
.label_1137:
	mov	qword ptr [rbx + 0x28], r12
	mov	rdx, qword ptr [rbx + 0x58]
	sub	rdx, r14
	mov	qword ptr [rbx + 0x58], rdx
	sub	qword ptr [rbx + 0x68], r14
	cmp	dword ptr [rbx + 0x90], 2
	jl	.label_1174
	cmp	byte ptr [rbx + 0x88], 0
	je	.label_1183
	mov	rdi, rbx
	call	build_wcs_upper_buffer
	test	eax, eax
	jne	.label_1188
	jmp	.label_1135
.label_1174:
	cmp	byte ptr [rbx + 0x8b], 0
	jne	.label_1128
	mov	qword ptr [rbx + 0x30], rdx
	jmp	.label_1135
.label_1183:
	mov	rdi, rbx
	call	build_wcs_buffer
.label_1135:
	mov	qword ptr [rbx + 0x48], 0
	xor	eax, eax
.label_1188:
	add	rsp, 0x38
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_1176:
	mov	r14, r12
	sub	r14, rax
	jmp	.label_1133
.label_1148:
	mov	rcx, qword ptr [rbx + 0x30]
	mov	qword ptr [rsp + 0x20], rcx
	movzx	r8d, word ptr [rbx + 0x8c]
	test	r8b, r8b
	jne	.label_1151
.label_1143:
	mov	qword ptr [rbx + 0x30], 0
	movsxd	rdi, dword ptr [rbx + 0x90]
	cmp	rdi, 2
	jl	.label_1154
	cmp	byte ptr [rbx + 0x89], 0
	je	.label_1160
	mov	r10, qword ptr [rbx]
	lea	rdx, [r10 + rax]
	mov	rsi, r14
	sub	rsi, rdi
	add	rsi, rdx
	cmp	rsi, r10
	cmovb	rsi, r10
	lea	r8, [rdx + r14]
	add	r10, r14
.label_1129:
	lea	rdi, [r10 + rax - 1]
	cmp	rdi, rsi
	jb	.label_1160
	movzx	ecx, byte ptr [rax + r10 - 1]
	and	cl, 0xc0
	dec	r10
	cmp	cl, 0x80
	je	.label_1129
	mov	qword ptr [rsp], r8
	add	rdx, qword ptr [rbx + 0x58]
	lea	rbp, [r10 + rax]
	sub	rdx, rbp
	mov	rdi, qword ptr [rbx + 0x78]
	test	rdi, rdi
	mov	rsi, rbp
	jne	.label_1170
.label_1184:
	mov	qword ptr [rsp + 8], 0
	lea	rdi, [rsp + 0x14]
	lea	rcx, [rsp + 8]
	call	rpl_mbrtowc
	mov	rdx, qword ptr [rsp]
	sub	rdx, rbp
	mov	esi, 0xffffffff
	mov	rcx, rax
	sub	rcx, rdx
	jb	.label_1131
	cmp	rax, -3
	ja	.label_1131
	mov	qword ptr [rbx + 0x20], 0
	mov	qword ptr [rbx + 0x30], rcx
	mov	esi, dword ptr [rsp + 0x14]
.label_1131:
	mov	edx, esi
	cmp	edx, -1
	jne	.label_1139
	mov	rax, qword ptr [rbx + 0x28]
	mov	rbp, qword ptr [rbx + 0x38]
.label_1160:
	add	rbp, rax
	mov	rax, rbp
	sub	rax, r12
	jge	.label_1145
	lea	rax, [rbx + 0x20]
	mov	qword ptr [rsp], rax
	jmp	.label_1140
.label_1158:
	mov	r8, qword ptr [rbx + 0x18]
	mov	rdx, qword ptr [rbx + 0x30]
	xor	ecx, ecx
	mov	qword ptr [rsp], rdx
.label_1162:
	lea	rsi, [rcx + rdx]
	mov	rax, rsi
	shr	rax, 0x3f
	add	rax, rsi
	sar	rax, 1
	mov	rsi, qword ptr [r8 + rax*8]
	cmp	rsi, r14
	mov	rdi, rax
	jg	.label_1155
	jge	.label_1173
	lea	rcx, [rax + 1]
	mov	rdi, rdx
.label_1155:
	cmp	rcx, rdi
	mov	rdx, rdi
	jl	.label_1162
.label_1173:
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
	jle	.label_1159
	cmp	rbp, r14
	jne	.label_1159
	cmp	qword ptr [rsi + r14*8], r14
	jne	.label_1159
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
	jle	.label_1149
	mov	rax, qword ptr [rbx + 0x18]
	lea	rcx, [rax + r14*8]
	xor	edx, edx
.label_1180:
	mov	rsi, qword ptr [rcx + rdx*8]
	sub	rsi, r14
	mov	qword ptr [rax + rdx*8], rsi
	inc	rdx
	cmp	rdx, qword ptr [rbx + 0x30]
	jl	.label_1180
	jmp	.label_1149
.label_1168:
	mov	rdi, qword ptr [rbx + 8]
	mov	rdx, qword ptr [rbx + 0x30]
	sub	rdx, r14
	lea	rsi, [rdi + r14]
	call	memmove
	jmp	.label_1152
.label_1159:
	mov	rax, r14
	sub	rax, r12
	mov	rcx, qword ptr [rbx + 0x50]
	add	rcx, rax
	mov	qword ptr [rbx + 0x58], rcx
	add	rax, qword ptr [rbx + 0x60]
	mov	qword ptr [rbx + 0x68], rax
	mov	byte ptr [rbx + 0x8c], 0
.label_1189:
	mov	rax, rbp
	test	rax, rax
	jle	.label_1161
	lea	rbp, [rax - 1]
	cmp	qword ptr [rsi + rax*8 - 8], r14
	je	.label_1189
.label_1161:
	cmp	rax, rdi
	jge	.label_1130
	mov	rcx, qword ptr [rbx + 0x10]
.label_1164:
	cmp	dword ptr [rcx + rax*4], -1
	jne	.label_1130
	inc	rax
	cmp	rax, rdi
	jl	.label_1164
.label_1130:
	cmp	rax, rdi
	jne	.label_1166
	mov	qword ptr [rbx + 0x30], 0
	xor	eax, eax
	mov	qword ptr [rbx + 0x38], rax
	jmp	.label_1149
.label_1128:
	cmp	byte ptr [rbx + 0x88], 0
	je	.label_1171
	mov	r15, qword ptr [rbx + 0x30]
	mov	r14, qword ptr [rbx + 0x40]
	cmp	r14, rdx
	cmovg	r14, rdx
	cmp	r15, r14
	jl	.label_1172
	jmp	.label_1179
.label_1138:
	mov	r12, qword ptr [r13]
.label_1172:
	inc	r15
	add	r12, qword ptr [rbx]
	movzx	eax, byte ptr [r15 + r12 - 1]
	movzx	ecx, al
	mov	rdx, qword ptr [rbx + 0x78]
	test	rdx, rdx
	jne	.label_1182
.label_1144:
	movzx	ebp, al
	mov	eax, ebp
	sub	eax, -0x80
	cmp	eax, 0x17f
	ja	.label_1190
	call	__ctype_toupper_loc
	mov	rax, qword ptr [rax]
	mov	ebp, dword ptr [rax + rbp*4]
.label_1190:
	mov	rax, qword ptr [rbx + 8]
	mov	byte ptr [rax + r15 - 1], bpl
	cmp	r15, r14
	jl	.label_1138
	jmp	.label_1142
.label_1182:
	movzx	eax, byte ptr [rdx + rcx]
	jmp	.label_1144
.label_1154:
	add	rax, r14
	mov	rdx, qword ptr [rbx]
	mov	cl, byte ptr [rdx + rax - 1]
	movzx	edx, cl
	mov	qword ptr [rbx + 0x38], 0
	mov	rsi, qword ptr [rbx + 0x78]
	test	rsi, rsi
	je	.label_1146
	mov	cl, byte ptr [rsi + rdx]
.label_1146:
	mov	rdx, qword ptr [rbx + 0x80]
	mov	eax, ecx
	shr	al, 6
	movzx	eax, al
	mov	rax, qword ptr [rdx + rax*8]
	mov	edx, 1
	movzx	esi, cl
	bt	rax, rsi
	jb	.label_1153
	xor	edx, edx
	cmp	cl, 0xa
	jne	.label_1153
	movzx	eax, r8w
	xor	edx, edx
	cmp	eax, 0xff
	seta	dl
	add	edx, edx
.label_1153:
	mov	dword ptr [rbx + 0x70], edx
	jmp	.label_1149
.label_1166:
	mov	rbp, qword ptr [rsi + rax*8]
	sub	rbp, r14
	mov	qword ptr [rbx + 0x30], rbp
	xor	eax, eax
	test	rbp, rbp
	je	.label_1134
	jle	.label_1167
	mov	rdi, qword ptr [rbx + 0x10]
	lea	rdx, [rbp*4]
	mov	esi, 0xff
	call	memset
.label_1167:
	mov	rdi, qword ptr [rbx + 8]
	mov	esi, 0xff
	mov	rdx, rbp
	call	memset
	mov	rax, qword ptr [rbx + 0x30]
.label_1134:
	mov	qword ptr [rbx + 0x38], rax
	jmp	.label_1149
.label_1145:
	mov	rbp, rax
	mov	qword ptr [rbx + 0x30], rax
	jmp	.label_1141
.label_1171:
	mov	rsi, qword ptr [rbx + 0x78]
	test	rsi, rsi
	je	.label_1135
	mov	rax, qword ptr [rbx + 0x30]
	mov	rcx, qword ptr [rbx + 0x40]
	cmp	rcx, rdx
	cmovg	rcx, rdx
	cmp	rax, rcx
	jge	.label_1185
	add	r12, rax
	mov	rdx, qword ptr [rbx]
	mov	rdi, qword ptr [rbx + 8]
	movzx	edx, byte ptr [rdx + r12]
	mov	dl, byte ptr [rsi + rdx]
	jmp	.label_1132
.label_1147:
	mov	rdx, qword ptr [rbx + 0x78]
	mov	rsi, qword ptr [rbx]
	mov	rdi, qword ptr [rbx + 8]
	add	rsi, qword ptr [rbx + 0x28]
	movzx	esi, byte ptr [rax + rsi]
	movzx	edx, byte ptr [rdx + rsi]
.label_1132:
	mov	byte ptr [rdi + rax], dl
	inc	rax
	cmp	rax, rcx
	jl	.label_1147
	mov	rax, rcx
.label_1185:
	mov	qword ptr [rbx + 0x30], rax
	mov	qword ptr [rbx + 0x38], rax
	jmp	.label_1135
.label_1142:
	mov	r15, r14
.label_1179:
	mov	qword ptr [rbx + 0x30], r15
	mov	qword ptr [rbx + 0x38], r15
	jmp	.label_1135
.label_1169:
	mov	rcx, qword ptr [rsp + 0x28]
	xor	edx, edx
	cmp	qword ptr [rsp + 0x30], 0
	je	.label_1156
	test	rax, rax
	je	.label_1156
	mov	rax, qword ptr [rbx]
	movzx	edx, byte ptr [rax + rbp]
.label_1156:
	mov	rax, qword ptr [rsp]
	mov	qword ptr [rax], rcx
	mov	eax, 1
	jmp	.label_1178
.label_1140:
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
	jae	.label_1169
	mov	edx, dword ptr [rsp + 8]
.label_1178:
	add	rbp, rax
	mov	rax, rbp
	sub	rax, r12
	jl	.label_1140
	mov	rbp, rax
	mov	qword ptr [rbx + 0x30], rax
	cmp	edx, -1
	je	.label_1141
.label_1139:
	cmp	byte ptr [rbx + 0x8e], 0
	jne	.label_1177
.label_1165:
	xor	ecx, ecx
	cmp	edx, 0xa
	jne	.label_1150
	xor	ecx, ecx
	cmp	byte ptr [rbx + 0x8d], 0
	setne	cl
	add	ecx, ecx
.label_1150:
	mov	dword ptr [rbx + 0x70], ecx
	mov	rbp, qword ptr [rbx + 0x30]
	jmp	.label_1186
.label_1141:
	mov	rsi, qword ptr [rsp + 0x20]
	dec	rsi
	mov	rdi, rbx
	mov	edx, r15d
	call	re_string_context_at
	mov	dword ptr [rbx + 0x70], eax
.label_1186:
	test	rbp, rbp
	jne	.label_1136
.label_1157:
	mov	rax, qword ptr [rbx + 0x30]
	mov	qword ptr [rbx + 0x38], rax
	jmp	.label_1149
.label_1151:
	mov	rdx, r14
	sub	rdx, r12
	mov	rsi, qword ptr [rbx + 0x50]
	add	rsi, rdx
	mov	qword ptr [rbx + 0x58], rsi
	add	rdx, qword ptr [rbx + 0x60]
	mov	qword ptr [rbx + 0x68], rdx
	mov	byte ptr [rbx + 0x8c], 0
	jmp	.label_1143
.label_1136:
	jle	.label_1175
	mov	rdi, qword ptr [rbx + 0x10]
	lea	rdx, [rbp*4]
	mov	esi, 0xff
	call	memset
.label_1175:
	cmp	byte ptr [rbx + 0x8b], 0
	mov	rdx, rbp
	je	.label_1157
	mov	rdi, qword ptr [rbx + 8]
	mov	esi, 0xff
	call	memset
	jmp	.label_1157
.label_1177:
	mov	ebp, edx
	mov	edi, ebp
	call	iswalnum
	mov	edx, ebp
	cmp	ebp, 0x5f
	mov	ecx, 1
	je	.label_1150
	test	eax, eax
	je	.label_1165
	jmp	.label_1150
.label_1170:
	lea	rsi, [rsp + 0x1a]
	cmp	rdx, 7
	mov	r8d, 6
	cmovl	r8, rdx
	cmp	rdx, 6
	mov	ecx, 6
	cmovl	ecx, edx
	test	ecx, ecx
	jle	.label_1184
	movsxd	r8, r8d
	lea	r9, [rsp + r8 + 0x19]
	add	rax, r8
	lea	r10, [r10 + rax - 1]
	xor	ecx, ecx
.label_1181:
	movzx	eax, byte ptr [r10 + rcx]
	movzx	eax, byte ptr [rdi + rax]
	mov	byte ptr [r9 + rcx], al
	lea	rax, [r8 + rcx - 1]
	dec	rcx
	inc	rax
	cmp	rax, 1
	jg	.label_1181
	jmp	.label_1184
	nop	word ptr cs:[rax + rax]
.label_1191:
	mov	ebx, 0xffffffff
	test	eax, eax
	jne	.label_532
	call	__errno_location
	mov	dword ptr [rax], 0
.label_532:
	mov	eax, ebx
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x409c2b

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
	jne	.label_1191
	test	eax, eax
	sete	cl
	neg	eax
	sbb	ebx, ebx
	test	r14, r14
	jne	.label_532
	test	cl, cl
	jne	.label_532
	call	__errno_location
	xor	ecx, ecx
	cmp	dword ptr [rax], 9
	mov	ebx, 0xffffffff
	cmove	ebx, ecx
	jmp	.label_532
.label_1206:
	mov	edi, 0x3c8
	call	malloc
	xor	r13d, r13d
	test	rax, rax
	je	.label_1200
	mov	rcx, qword ptr [rbx + 0x70]
	mov	qword ptr [rax], rcx
	mov	qword ptr [rbx + 0x70], rax
	mov	dword ptr [rbx + 0x80], 0
	jmp	.label_1205
	.section	.text
	.align	16
	#Procedure 0x409ca0

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
	mov	r14, rdx
	mov	rbp, rdi
	mov	rbx, qword ptr [rsi]
	mov	r13, qword ptr [r14 + 8]
	test	r13, r13
	je	.label_1203
	mov	al, byte ptr [rsi + 0x38]
	and	al, 0x10
	je	.label_1203
	mov	rax, qword ptr [r14 + 0x28]
	cmp	rax, 0x3f
	jg	.label_1193
	mov	rcx, qword ptr [rbx + 0xa0]
	bt	rcx, rax
	jae	.label_1193
.label_1203:
	mov	r12d, dword ptr [rbx + 0x80]
	cmp	r12d, 0xf
	je	.label_1204
	mov	rax, qword ptr [rbx + 0x70]
.label_1201:
	lea	ecx, [r12 + 1]
	mov	dword ptr [rbx + 0x80], ecx
	movsxd	rcx, r12d
	shl	rcx, 6
	lea	r12, [rax + rcx + 8]
	xorps	xmm0, xmm0
	movups	xmmword ptr [rax + rcx + 8], xmm0
	mov	qword ptr [rax + rcx + 0x18], 0
	mov	dword ptr [rax + rcx + 0x38], 8
	movups	xmmword ptr [rax + rcx + 0x20], xmm0
	mov	qword ptr [rax + rcx + 0x40], -1
.label_1196:
	mov	qword ptr [rsp], rbp
	mov	r15d, dword ptr [rbx + 0x80]
	cmp	r15d, 0xf
	je	.label_1207
	mov	rax, qword ptr [rbx + 0x70]
.label_1202:
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
.label_1197:
	test	r13, r13
	mov	rbp, r15
	je	.label_1192
	mov	ebp, dword ptr [rbx + 0x80]
	cmp	ebp, 0xf
	je	.label_1198
	mov	rax, qword ptr [rbx + 0x70]
.label_1195:
	lea	ecx, [rbp + 1]
	mov	dword ptr [rbx + 0x80], ecx
	movsxd	rcx, ebp
	shl	rcx, 6
	lea	rbp, [rax + rcx + 8]
	mov	qword ptr [rax + rcx + 8], 0
	mov	qword ptr [rax + rcx + 0x10], r13
	mov	qword ptr [rax + rcx + 0x18], r15
	mov	dword ptr [rax + rcx + 0x38], 0x10
	xorps	xmm0, xmm0
	movups	xmmword ptr [rax + rcx + 0x20], xmm0
	mov	qword ptr [rax + rcx + 0x40], -1
	mov	qword ptr [r13], rbp
	test	r15, r15
	je	.label_1192
	mov	qword ptr [r15], rbp
.label_1192:
	mov	r13d, dword ptr [rbx + 0x80]
	cmp	r13d, 0xf
	je	.label_1206
	mov	rax, qword ptr [rbx + 0x70]
.label_1205:
	lea	ecx, [r13 + 1]
	mov	dword ptr [rbx + 0x80], ecx
	movsxd	rcx, r13d
	shl	rcx, 6
	lea	r13, [rax + rcx + 8]
	mov	qword ptr [rax + rcx + 8], 0
	mov	qword ptr [rax + rcx + 0x10], r12
	mov	qword ptr [rax + rcx + 0x18], rbp
	mov	dword ptr [rax + rcx + 0x38], 0x10
	xorps	xmm0, xmm0
	movups	xmmword ptr [rax + rcx + 0x20], xmm0
	mov	qword ptr [rax + rcx + 0x40], -1
	test	r12, r12
	je	.label_1194
	mov	qword ptr [r12], r13
.label_1194:
	test	rbp, rbp
	je	.label_1200
	mov	qword ptr [rbp], r13
.label_1200:
	test	r15, r15
	je	.label_1199
	test	r12, r12
	je	.label_1199
	test	rbp, rbp
	je	.label_1199
	test	r13, r13
	je	.label_1199
	mov	rax, qword ptr [r14 + 0x28]
	mov	qword ptr [r15 + 0x28], rax
	mov	qword ptr [r12 + 0x28], rax
	mov	eax, 0x80000
	and	eax, dword ptr [r14 + 0x30]
	mov	ecx, 0xfff7ffff
	mov	edx, dword ptr [r15 + 0x30]
	and	edx, ecx
	or	edx, eax
	mov	dword ptr [r15 + 0x30], edx
	and	ecx, dword ptr [r12 + 0x30]
	or	ecx, eax
	mov	dword ptr [r12 + 0x30], ecx
.label_1193:
	mov	rax, r13
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_1204:
	mov	edi, 0x3c8
	call	malloc
	xor	r12d, r12d
	test	rax, rax
	je	.label_1196
	mov	rcx, qword ptr [rbx + 0x70]
	mov	qword ptr [rax], rcx
	mov	qword ptr [rbx + 0x70], rax
	mov	dword ptr [rbx + 0x80], 0
	jmp	.label_1201
.label_1199:
	mov	rax, qword ptr [rsp]
	mov	dword ptr [rax], 0xc
	xor	r13d, r13d
	jmp	.label_1193
.label_1207:
	mov	edi, 0x3c8
	call	malloc
	xor	r15d, r15d
	test	rax, rax
	je	.label_1197
	mov	rcx, qword ptr [rbx + 0x70]
	mov	qword ptr [rax], rcx
	mov	qword ptr [rbx + 0x70], rax
	mov	dword ptr [rbx + 0x80], 0
	jmp	.label_1202
.label_1198:
	mov	edi, 0x3c8
	call	malloc
	xor	ebp, ebp
	test	rax, rax
	je	.label_1192
	mov	rcx, qword ptr [rbx + 0x70]
	mov	qword ptr [rax], rcx
	mov	qword ptr [rbx + 0x70], rax
	mov	dword ptr [rbx + 0x80], 0
	jmp	.label_1195
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x409f70

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
	jle	.label_1242
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
	jl	.label_1215
	mov	rax, qword ptr [rbp + 0x48]
	cmp	rax, qword ptr [rbp + 0x30]
	je	.label_1215
	mov	rcx, qword ptr [rbp + 0x10]
	cmp	dword ptr [rcx + rax*4], -1
	je	.label_1230
.label_1215:
	cmp	bl, 0x5c
	jne	.label_1233
	mov	rcx, qword ptr [rbp + 0x48]
	lea	rax, [rcx + 1]
	cmp	rax, qword ptr [rbp + 0x58]
	jge	.label_1236
	cmp	byte ptr [rbp + 0x8b], 0
	jne	.label_1240
.label_1224:
	mov	rcx, qword ptr [rbp + 8]
	mov	bl, byte ptr [rcx + rax]
.label_1210:
	mov	byte ptr [r15], bl
	and	r14d, 0xff9fff00
	or	r14d, 1
	mov	dword ptr [r15 + 8], r14d
	cmp	dword ptr [rbp + 0x90], 2
	jl	.label_1208
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
	jmp	.label_1226
.label_1242:
	mov	byte ptr [r15 + 8], 2
	xor	r14d, r14d
	jmp	.label_139
.label_1233:
	and	r14d, 0xff9fff00
	or	r14d, 1
	mov	dword ptr [r15 + 8], r14d
	cmp	dword ptr [rbp + 0x90], 2
	jl	.label_1237
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
	jmp	.label_1238
.label_1236:
	and	r14d, 0xff9fff00
	or	r14d, 0x24
	jmp	.label_1225
.label_1237:
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
.label_1238:
	mov	dword ptr [r15 + 8], eax
	mov	r14d, 1
	add	bl, 0xf6
	movzx	ecx, bl
	cmp	cl, 0x73
	ja	.label_139
	jmp	qword ptr [(rcx * 8) + label_1227]
.label_2321:
	mov	rcx, r12
	test	ch, 8
	je	.label_139
	jmp	.label_120
.label_1208:
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
.label_1226:
	mov	dword ptr [r15 + 8], eax
	mov	r14d, 2
	add	bl, 0xd9
	movzx	ecx, bl
	cmp	cl, 0x56
	ja	.label_139
	jmp	qword ptr [(rcx * 8) + label_1232]
.label_2343:
	mov	rcx, r12
	test	ch, 0x40
	jne	.label_139
	and	eax, 0xffffff00
	or	eax, 4
	mov	dword ptr [r15 + 8], eax
	add	rbp, -0x31
	mov	qword ptr [r15], rbp
	jmp	.label_139
.label_1230:
	and	r14d, 0xff9fff00
	or	r14d, 0x200001
.label_1225:
	mov	dword ptr [r15 + 8], r14d
	mov	r14d, 1
.label_139:
	mov	eax, r14d
	add	rsp, 0x10
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_2322:
	mov	rdx, r12
	test	dl, 8
	jne	.label_169
	mov	rcx, qword ptr [rbp + 0x48]
	inc	rcx
	cmp	rcx, qword ptr [rbp + 0x58]
	je	.label_169
	mov	qword ptr [rbp + 0x48], rcx
	lea	rdi, [rsp]
	mov	rsi, rbp
	call	peek_token
	dec	qword ptr [rbp + 0x48]
	movzx	eax, byte ptr [rsp + 8]
	add	eax, -9
	cmp	eax, 1
	ja	.label_139
	mov	eax, dword ptr [r15 + 8]
.label_169:
	and	eax, 0xffffff00
	or	eax, 0xc
	mov	dword ptr [r15 + 8], eax
	mov	dword ptr [r15], 0x20
	jmp	.label_139
.label_2323:
	mov	rcx, r12
	test	ch, 0x20
	je	.label_139
	jmp	.label_189
.label_2324:
	mov	rcx, r12
	test	ch, 0x20
	je	.label_139
	jmp	.label_193
.label_2325:
	and	eax, 0xffffff00
	or	eax, 0xb
	mov	dword ptr [r15 + 8], eax
	jmp	.label_139
.label_2326:
	test	r12w, 0x402
	jne	.label_139
	jmp	.label_199
.label_2327:
	and	eax, 0xffffff00
	or	eax, 5
	mov	dword ptr [r15 + 8], eax
	jmp	.label_139
.label_2328:
	test	r12w, 0x402
	jne	.label_139
	jmp	.label_203
.label_2329:
	and	eax, 0xffffff00
	or	eax, 0x14
	mov	dword ptr [r15 + 8], eax
	jmp	.label_139
.label_2330:
	mov	rdx, r12
	test	edx, 0x800008
	jne	.label_209
	mov	rcx, qword ptr [rbp + 0x48]
	test	rcx, rcx
	je	.label_209
	test	dh, 8
	je	.label_139
	mov	rdx, qword ptr [rbp + 8]
	cmp	byte ptr [rdx + rcx - 1], 0xa
	jne	.label_139
.label_209:
	and	eax, 0xffffff00
	or	eax, 0xc
	mov	dword ptr [r15 + 8], eax
	mov	dword ptr [r15], 0x10
	jmp	.label_139
.label_2331:
	and	r12d, 0x1200
	cmp	r12, 0x1200
	jne	.label_139
	jmp	.label_223
.label_2332:
	mov	rcx, r12
	test	ch, 4
	jne	.label_139
	test	cx, cx
	js	.label_120
	jmp	.label_139
.label_2333:
	and	r12d, 0x1200
	cmp	r12, 0x1200
	jne	.label_139
	jmp	.label_521
.label_2339:
	test	r12d, 0x80000
	jne	.label_139
	and	eax, 0xffffff00
	or	eax, 0xc
	mov	dword ptr [r15 + 8], eax
	mov	dword ptr [r15], 0x80
	jmp	.label_139
.label_2340:
	mov	rcx, r12
	test	ch, 0x20
	jne	.label_139
.label_189:
	and	eax, 0xffffff00
	or	eax, 8
	mov	dword ptr [r15 + 8], eax
	jmp	.label_139
.label_2341:
	mov	rcx, r12
	test	ch, 0x20
	jne	.label_139
.label_193:
	and	eax, 0xffffff00
	or	eax, 9
	mov	dword ptr [r15 + 8], eax
	jmp	.label_139
.label_2342:
	and	r12d, 0x402
	cmp	r12, 2
	jne	.label_139
.label_199:
	and	eax, 0xffffff00
	or	eax, 0x12
	mov	dword ptr [r15 + 8], eax
	jmp	.label_139
.label_2344:
	test	r12d, 0x80000
	jne	.label_139
	and	eax, 0xffffff00
	or	eax, 0xc
	mov	dword ptr [r15 + 8], eax
	mov	dword ptr [r15], 6
	jmp	.label_139
.label_2345:
	test	r12d, 0x80000
	jne	.label_139
	and	eax, 0xffffff00
	or	eax, 0xc
	mov	dword ptr [r15 + 8], eax
	mov	dword ptr [r15], 9
	jmp	.label_139
.label_2346:
	and	r12d, 0x402
	cmp	r12, 2
	jne	.label_139
.label_203:
	and	eax, 0xffffff00
	or	eax, 0x13
	mov	dword ptr [r15 + 8], eax
	jmp	.label_139
.label_2347:
	test	r12d, 0x80000
	jne	.label_139
	and	eax, 0xffffff00
	or	eax, 0xc
	mov	dword ptr [r15 + 8], eax
	mov	dword ptr [r15], 0x200
	jmp	.label_139
.label_2348:
	test	r12d, 0x80000
	jne	.label_139
	and	eax, 0xffffff00
	or	eax, 0x23
	mov	dword ptr [r15 + 8], eax
	jmp	.label_139
.label_2349:
	test	r12d, 0x80000
	jne	.label_139
	and	eax, 0xffffff00
	or	eax, 0x21
	mov	dword ptr [r15 + 8], eax
	jmp	.label_139
.label_2350:
	test	r12d, 0x80000
	jne	.label_139
	and	eax, 0xffffff00
	or	eax, 0xc
	mov	dword ptr [r15 + 8], eax
	mov	dword ptr [r15], 0x40
	jmp	.label_139
.label_2351:
	test	r12d, 0x80000
	jne	.label_139
	and	eax, 0xffffff00
	or	eax, 0xc
	mov	dword ptr [r15 + 8], eax
	mov	dword ptr [r15], 0x100
	jmp	.label_139
.label_2352:
	test	r12d, 0x80000
	jne	.label_139
	and	eax, 0xffffff00
	or	eax, 0x22
	mov	dword ptr [r15 + 8], eax
	jmp	.label_139
.label_2353:
	test	r12d, 0x80000
	jne	.label_139
	and	eax, 0xffffff00
	or	eax, 0x20
	mov	dword ptr [r15 + 8], eax
	jmp	.label_139
.label_2354:
	and	r12d, 0x1200
	cmp	r12, 0x200
	jne	.label_139
.label_223:
	and	eax, 0xffffff00
	or	eax, 0x17
	mov	dword ptr [r15 + 8], eax
	jmp	.label_139
.label_2355:
	mov	rcx, r12
	test	ch, 4
	jne	.label_139
	test	cx, cx
	js	.label_139
.label_120:
	and	eax, 0xffffff00
	or	eax, 0xa
	mov	dword ptr [r15 + 8], eax
	jmp	.label_139
.label_2356:
	and	r12d, 0x1200
	cmp	r12, 0x200
	jne	.label_139
.label_521:
	and	eax, 0xffffff00
	or	eax, 0x18
	mov	dword ptr [r15 + 8], eax
	jmp	.label_139
.label_1240:
	cmp	edx, 2
	jl	.label_1223
	mov	rdx, qword ptr [rbp + 0x10]
	cmp	dword ptr [rdx + rcx*4 + 4], -1
	je	.label_1224
	lea	rsi, [rcx + 2]
	cmp	qword ptr [rbp + 0x30], rsi
	je	.label_1223
	cmp	dword ptr [rdx + rcx*4 + 8], -1
	je	.label_1224
.label_1223:
	mov	dl, byte ptr [rbp + 0x8c]
	test	dl, dl
	mov	rsi, rax
	je	.label_1234
	mov	rsi, qword ptr [rbp + 0x18]
	mov	rsi, qword ptr [rsi + rcx*8 + 8]
.label_1234:
	add	rsi, qword ptr [rbp + 0x28]
	test	dl, dl
	mov	rcx, qword ptr [rbp]
	mov	bl, byte ptr [rcx + rsi]
	je	.label_1210
	test	bl, bl
	js	.label_1224
	jmp	.label_1210
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40a590

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
.label_1249:
	mov	eax, r13d
	shl	eax, 8
	and	eax, 0x3ff00
	mov	dword ptr [rsp + 0xc], eax
	mov	r15, r14
	mov	dword ptr [rsp + 0x1c], r13d
	nop	word ptr cs:[rax + rax]
.label_437:
	mov	rax, qword ptr [r12]
	mov	rdx, r15
	shl	rdx, 4
	cmp	byte ptr [rax + rdx + 8], 4
	jne	.label_1250
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
	je	.label_222
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
	jne	.label_437
	jmp	.label_222
	nop	dword ptr [rax + rax]
.label_1250:
	mov	r8, qword ptr [r12 + 0x28]
	lea	rcx, [r15 + r15*2]
	mov	rsi, qword ptr [r8 + rcx*8 + 8]
	test	rsi, rsi
	je	.label_1252
	mov	rdi, qword ptr [r8 + rcx*8 + 0x10]
	mov	r14, qword ptr [rdi]
	lea	rdi, [rbp + rbp*2]
	mov	qword ptr [rsp + 0x10], rdi
	mov	qword ptr [r8 + rdi*8 + 8], 0
	cmp	rsi, 1
	je	.label_1245
	mov	rdi, qword ptr [r12 + 0x10]
	lea	rsi, [rdi - 1]
	test	rsi, rsi
	jle	.label_1243
	mov	rdx, rsi
	shl	rdx, 4
	mov	ebx, dword ptr [rax + rdx + 8]
	mov	edx, ebx
	and	edx, 0x40000
	je	.label_1243
	mov	rdx, qword ptr [r12 + 0x20]
	shl	rdi, 4
	lea	rdi, [rax + rdi - 0x18]
	nop	word ptr cs:[rax + rax]
.label_1248:
	cmp	qword ptr [rdx + rsi*8], r14
	jne	.label_1244
	shr	ebx, 8
	and	ebx, 0x3ff
	cmp	ebx, r13d
	je	.label_1253
.label_1244:
	dec	rsi
	test	rsi, rsi
	jle	.label_1243
	mov	ebx, dword ptr [rdi]
	mov	ebp, ebx
	and	ebp, 0x40000
	add	rdi, -0x10
	test	ebp, ebp
	jne	.label_1248
	jmp	.label_1243
.label_1253:
	cmp	rsi, -1
	je	.label_1243
	mov	r15, rcx
	mov	rax, qword ptr [rsp + 0x10]
	lea	rdi, [r8 + rax*8]
	call	re_node_set_insert
	mov	dword ptr [rsp + 8], 0xc
	test	al, al
	jne	.label_1247
	jmp	.label_222
	nop	dword ptr [rax]
.label_1243:
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
	je	.label_222
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
	je	.label_222
	mov	rdi, r12
	mov	rsi, r14
	mov	rdx, rbp
	mov	rcx, qword ptr [rsp + 0x20]
	mov	r8d, r13d
	call	duplicate_node_closure
	mov	dword ptr [rsp + 8], eax
	test	eax, eax
	jne	.label_222
.label_1247:
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
	je	.label_222
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
	jne	.label_437
	jmp	.label_222
	nop	
.label_1245:
	cmp	r15, qword ptr [rsp + 0x20]
	jne	.label_1251
	cmp	rbp, r15
	jne	.label_1254
.label_1251:
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
	je	.label_222
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
	jne	.label_1249
	jmp	.label_222
.label_1252:
	mov	rax, qword ptr [r12 + 0x18]
	mov	rcx, qword ptr [rax + r15*8]
	mov	qword ptr [rax + rbp*8], rcx
.label_1246:
	mov	dword ptr [rsp + 8], 0
.label_222:
	mov	eax, dword ptr [rsp + 8]
	add	rsp, 0x28
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_1254:
	mov	rax, qword ptr [rsp + 0x10]
	lea	rdi, [r8 + rax*8]
	mov	rsi, r14
	call	re_node_set_insert
	mov	dword ptr [rsp + 8], 0xc
	test	al, al
	jne	.label_1246
	jmp	.label_222
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40aa00

	.globl dup_safer_flag
	.type dup_safer_flag, @function
dup_safer_flag:
	and	esi, 0x80000
	mov	eax, 0x406
	cmovne	esi, eax
	mov	edx, 3
	xor	eax, eax
	jmp	rpl_fcntl
	nop	word ptr [rax + rax]
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
	je	.label_512
	mov	qword ptr [rax], rbx
.label_512:
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
	.section	.text
	.align	16
	#Procedure 0x40ab10

	.globl extend_buffers
	.type extend_buffers, @function
extend_buffers:
	push	r15
	push	r14
	push	r12
	push	rbx
	push	rax
	mov	ecx, esi
	mov	r14, rdi
	mov	rsi, qword ptr [r14 + 0x40]
	mov	eax, 0xc
	movabs	rdx, 0xffffffffffffffe
	cmp	rsi, rdx
	ja	.label_1260
	movsxd	rax, ecx
	mov	rcx, qword ptr [r14 + 0x58]
	add	rsi, rsi
	cmp	rcx, rsi
	cmovle	rsi, rcx
	cmp	rax, rsi
	cmovge	rsi, rax
	mov	rdi, r14
	call	re_string_realloc_buffers
	test	eax, eax
	jne	.label_1260
	mov	rdi, qword ptr [r14 + 0xb8]
	test	rdi, rdi
	je	.label_1266
	mov	rax, qword ptr [r14 + 0x40]
	lea	rsi, [rax*8 + 8]
	call	realloc
	mov	rcx, rax
	test	rcx, rcx
	mov	eax, 0xc
	je	.label_1260
	mov	qword ptr [r14 + 0xb8], rcx
.label_1266:
	cmp	byte ptr [r14 + 0x88], 0
	mov	eax, dword ptr [r14 + 0x90]
	je	.label_1263
	cmp	eax, 2
	jl	.label_1267
	mov	rdi, r14
	call	build_wcs_upper_buffer
	test	eax, eax
	je	.label_1259
	jmp	.label_1260
.label_1263:
	cmp	eax, 2
	jl	.label_1256
	mov	rdi, r14
	call	build_wcs_buffer
	jmp	.label_1259
.label_1267:
	mov	rbx, qword ptr [r14 + 0x30]
	mov	r15, qword ptr [r14 + 0x40]
	mov	rax, qword ptr [r14 + 0x58]
	cmp	r15, rax
	cmovg	r15, rax
	cmp	rbx, r15
	jl	.label_1261
	jmp	.label_1268
.label_1256:
	mov	rdx, qword ptr [r14 + 0x78]
	test	rdx, rdx
	je	.label_1259
	mov	rax, qword ptr [r14 + 0x30]
	mov	rcx, qword ptr [r14 + 0x40]
	mov	rsi, qword ptr [r14 + 0x58]
	cmp	rcx, rsi
	cmovg	rcx, rsi
	cmp	rax, rcx
	jge	.label_1258
	mov	rsi, qword ptr [r14 + 0x28]
	add	rsi, rax
	mov	rdi, qword ptr [r14]
	mov	rbx, qword ptr [r14 + 8]
	movzx	esi, byte ptr [rdi + rsi]
	mov	dl, byte ptr [rdx + rsi]
	mov	byte ptr [rbx + rax], dl
	jmp	.label_1262
	nop	word ptr cs:[rax + rax]
.label_1265:
	mov	rdx, qword ptr [r14 + 0x78]
	mov	rsi, qword ptr [r14]
	mov	rdi, qword ptr [r14 + 8]
	add	rsi, qword ptr [r14 + 0x28]
	movzx	esi, byte ptr [rax + rsi]
	movzx	edx, byte ptr [rdx + rsi]
	mov	byte ptr [rdi + rax], dl
.label_1262:
	inc	rax
	cmp	rax, rcx
	jl	.label_1265
	mov	rax, rcx
.label_1258:
	mov	qword ptr [r14 + 0x30], rax
	mov	qword ptr [r14 + 0x38], rax
	jmp	.label_1259
.label_1255:
	movzx	ecx, byte ptr [rax + rdx]
	jmp	.label_1257
	nop	word ptr cs:[rax + rax]
.label_1261:
	mov	rcx, qword ptr [r14]
	mov	rax, qword ptr [r14 + 0x78]
	add	rcx, qword ptr [r14 + 0x28]
	movzx	ecx, byte ptr [rbx + rcx]
	movzx	edx, cl
	test	rax, rax
	jne	.label_1255
.label_1257:
	movzx	r12d, cl
	mov	eax, r12d
	sub	eax, -0x80
	cmp	eax, 0x17f
	ja	.label_1264
	call	__ctype_toupper_loc
	mov	rax, qword ptr [rax]
	mov	r12d, dword ptr [rax + r12*4]
.label_1264:
	mov	rax, qword ptr [r14 + 8]
	mov	byte ptr [rax + rbx], r12b
	inc	rbx
	cmp	rbx, r15
	jl	.label_1261
	mov	rbx, r15
.label_1268:
	mov	qword ptr [r14 + 0x30], rbx
	mov	qword ptr [r14 + 0x38], rbx
.label_1259:
	xor	eax, eax
.label_1260:
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	nop	dword ptr [rax]
	push	r15
	push	r14
	push	r12
	push	rbx
	push	rax
	mov	r15, rcx
	mov	r14, rdx
	cmp	edi, 0x11
	jae	.label_553
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
	je	.label_559
	cmp	rbx, r15
	mov	rdx, rbx
	ja	.label_560
.label_565:
	mov	rdi, r14
	mov	rsi, r12
	call	memcpy
.label_559:
	mov	rax, rbx
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
.label_560:
	mov	byte ptr [r14 + r15 - 1], 0
	dec	r15
	mov	rdx, r15
	jmp	.label_565
.label_553:
	call	abort
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40ad60

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
	mov	r13, qword ptr [rdi]
	mov	rax, qword ptr [rip + label_1291]
	mov	qword ptr [rbp - 0xa0], rax
	movups	xmm0, xmmword ptr [rip + label_1292]
	movaps	xmmword ptr [rbp - 0xb0], xmm0
	xor	eax, eax
	test	r8b, r8b
	je	.label_1293
	mov	edi, 0x60
	call	malloc
	mov	qword ptr [rbp - 0xa0], rax
	mov	r14d, 0xc
	test	rax, rax
	je	.label_356
	lea	rax, [rbp - 0xb0]
.label_1293:
	mov	qword ptr [rbp - 0x38], rax
	mov	qword ptr [rbp - 0x90], r13
	mov	r13, qword ptr [r13 + 0x90]
	xorps	xmm0, xmm0
	movaps	xmmword ptr [rbp - 0x70], xmm0
	mov	qword ptr [rbp - 0x60], 0
	mov	rdx, rbx
	shl	rdx, 4
	cmp	rdx, 0xfbf
	ja	.label_1297
	mov	rdi, rsp
	lea	rax, [rdx + 0xf]
	and	rax, 0xfffffffffffffff0
	sub	rdi, rax
	mov	rsp, rdi
	mov	dword ptr [rbp - 0x2c], 0
	jmp	.label_1300
.label_1297:
	mov	r14, rdx
	mov	rdi, rdx
	call	malloc
	mov	rdi, rax
	test	rdi, rdi
	je	.label_1275
	mov	al, 1
	mov	dword ptr [rbp - 0x2c], eax
	mov	rdx, r14
.label_1300:
	mov	qword ptr [rbp - 0x40], rdi
	mov	rsi, r15
	mov	qword ptr [rbp - 0x58], rdx
	call	memcpy
	mov	r14, qword ptr [r15]
	xor	edi, edi
	cmp	r14, qword ptr [r15 + 8]
	jg	.label_1280
	lea	rax, [r15 + 8]
	mov	qword ptr [rbp - 0x80], rax
	mov	qword ptr [rbp - 0x88], rbx
	mov	qword ptr [rbp - 0x48], r12
	mov	qword ptr [rbp - 0x78], r15
	jmp	.label_296
.label_216:
	test	r13, r13
	mov	r14, qword ptr [rbp - 0x50]
	je	.label_205
.label_561:
	mov	r14, qword ptr [r13]
	lea	rax, [r14 + 1]
	mov	qword ptr [r13], rax
	cmp	rax, qword ptr [r13 + 8]
	jne	.label_609
	mov	rdi, qword ptr [r13 + 0x10]
	shl	rax, 5
	lea	rsi, [rax + rax*2]
	call	realloc
	mov	r13, rax
	test	r13, r13
	je	.label_172
	mov	rax, qword ptr [rbp - 0x38]
	shl	qword ptr [rax + 8], 1
	mov	qword ptr [rax + 0x10], r13
	jmp	.label_613
.label_609:
	mov	r13, qword ptr [r13 + 0x10]
.label_613:
	lea	r14, [r14 + r14*2]
	shl	r14, 4
	mov	rax, qword ptr [rbp - 0x50]
	mov	qword ptr [r13 + r14], rax
	mov	qword ptr [r13 + r14 + 8], rbx
	mov	rdi, qword ptr [rbp - 0x58]
	call	malloc
	mov	qword ptr [r13 + r14 + 0x10], rax
	test	rax, rax
	je	.label_172
	mov	rdi, rax
	mov	rsi, qword ptr [rbp - 0x78]
	mov	rdx, qword ptr [rbp - 0x58]
	call	memcpy
	lea	rbx, [r13 + r14 + 0x18]
	mov	qword ptr [r13 + r14 + 0x20], r15
	test	r15, r15
	jle	.label_621
	mov	qword ptr [rbx], r15
	shl	r15, 3
	mov	rdi, r15
	call	malloc
	mov	qword ptr [r13 + r14 + 0x28], rax
	test	rax, rax
	je	.label_624
	mov	rsi, qword ptr [rbp - 0x60]
	mov	rdi, rax
	mov	rdx, r15
	call	memcpy
	mov	r14, qword ptr [rbp - 0x50]
	jmp	.label_205
.label_621:
	xorps	xmm0, xmm0
	movups	xmmword ptr [rbx], xmm0
	mov	qword ptr [rbx + 0x10], 0
	mov	r14, qword ptr [rbp - 0x50]
	jmp	.label_205
.label_229:
	mov	r12, rax
	jmp	.label_205
	nop	dword ptr [rax]
.label_296:
	mov	rax, qword ptr [rbp - 0x90]
	mov	rcx, qword ptr [rax]
	mov	rdx, r13
	shl	rdx, 4
	lea	rax, [rcx + rdx]
	mov	ecx, dword ptr [rcx + rdx + 8]
	cmp	cl, 9
	je	.label_1286
	cmp	cl, 8
	jne	.label_1271
	mov	rax, qword ptr [rax]
	inc	rax
	cmp	rax, rbx
	jge	.label_1271
	shl	rax, 4
	mov	qword ptr [r15 + rax], r14
	mov	qword ptr [r15 + rax + 8], -1
	jmp	.label_1271
	nop	word ptr cs:[rax + rax]
.label_1286:
	mov	rax, qword ptr [rax]
	inc	rax
	cmp	rax, rbx
	jge	.label_1271
	shl	rax, 4
	cmp	qword ptr [r15 + rax], r14
	jge	.label_1294
	mov	qword ptr [r15 + rax + 8], r14
	mov	rdi, qword ptr [rbp - 0x40]
	mov	rsi, r15
	jmp	.label_1295
.label_1294:
	test	ecx, 0x80000
	je	.label_1276
	mov	rcx, qword ptr [rbp - 0x40]
	cmp	qword ptr [rcx + rax], -1
	je	.label_1276
	mov	rdi, r15
	mov	rsi, qword ptr [rbp - 0x40]
.label_1295:
	mov	rdx, qword ptr [rbp - 0x58]
	call	memcpy
	jmp	.label_1271
.label_1276:
	mov	qword ptr [r15 + rax + 8], r14
	nop	dword ptr [rax]
.label_1271:
	cmp	r14, qword ptr [r15 + 8]
	jne	.label_1269
	cmp	r13, qword ptr [r12 + 0xb0]
	jne	.label_1269
	mov	r15, qword ptr [rbp - 0x38]
	test	r15, r15
	je	.label_1272
	test	rbx, rbx
	mov	eax, 0
	je	.label_1277
	mov	rcx, qword ptr [rbp - 0x80]
	xor	eax, eax
	nop	word ptr cs:[rax + rax]
.label_1283:
	cmp	qword ptr [rcx - 8], 0
	js	.label_1288
	cmp	qword ptr [rcx], -1
	je	.label_1277
.label_1288:
	inc	rax
	add	rcx, 0x10
	cmp	rax, rbx
	jb	.label_1283
.label_1277:
	cmp	rax, rbx
	je	.label_1284
	mov	rcx, qword ptr [r15]
	lea	rax, [rcx - 1]
	mov	qword ptr [r15], rax
	test	rcx, rcx
	jle	.label_285
	mov	rcx, qword ptr [r15 + 0x10]
	shl	rax, 4
	lea	rbx, [rax + rax*2]
	mov	r14, qword ptr [rcx + rbx]
	mov	rsi, qword ptr [rcx + rbx + 0x10]
	mov	rdi, qword ptr [rbp - 0x78]
	mov	rdx, qword ptr [rbp - 0x58]
	call	memcpy
	mov	rdi, qword ptr [rbp - 0x60]
	call	free
	mov	rax, qword ptr [r15 + 0x10]
	mov	rdi, qword ptr [rax + rbx + 0x10]
	call	free
	mov	rax, qword ptr [r15 + 0x10]
	mov	rcx, qword ptr [rax + rbx + 0x28]
	mov	qword ptr [rbp - 0x60], rcx
	movups	xmm0, xmmword ptr [rax + rbx + 0x18]
	movaps	xmmword ptr [rbp - 0x70], xmm0
	mov	r13, qword ptr [rax + rbx + 8]
.label_1269:
	mov	r15, qword ptr [r12 + 0x98]
	mov	rax, qword ptr [r15]
	mov	rbx, r13
	shl	rbx, 4
	mov	ecx, dword ptr [rax + rbx + 8]
	test	cl, 8
	jne	.label_1296
	test	ecx, 0x100000
	jne	.label_1301
	movzx	ecx, cl
	cmp	ecx, 4
	jne	.label_215
	mov	rax, qword ptr [rax + rbx]
	shl	rax, 4
	mov	rcx, qword ptr [rbp - 0x78]
	mov	rdi, qword ptr [rcx + rax + 0x10]
	mov	rax, qword ptr [rcx + rax + 0x18]
	mov	rdx, rax
	sub	rdx, rdi
	cmp	qword ptr [rbp - 0x38], 0
	je	.label_1289
	cmp	rax, -1
	mov	r12, r14
	je	.label_265
	cmp	rdi, -1
	je	.label_265
	test	rdx, rdx
	je	.label_1279
	mov	rax, qword ptr [rbp - 0x48]
	mov	rax, qword ptr [rax + 0x30]
	sub	rax, r12
	cmp	rax, rdx
	jl	.label_265
	mov	rax, qword ptr [rbp - 0x48]
	mov	rsi, qword ptr [rax + 8]
	add	rdi, rsi
	add	rsi, r12
	mov	rbx, rdx
	call	memcmp
	mov	rdx, rbx
	test	eax, eax
	jne	.label_265
	mov	rax, qword ptr [r15 + 0x18]
	mov	rcx, r12
	mov	r12, qword ptr [rax + r13*8]
	add	rdx, rcx
	jmp	.label_1302
	nop	
.label_1296:
	mov	rax, qword ptr [r12 + 0xb8]
	mov	qword ptr [rbp - 0x50], r14
	mov	r14, qword ptr [rax + r14*8]
	mov	rbx, qword ptr [r15 + 0x28]
	lea	rdi, [rbp - 0x70]
	mov	rsi, r13
	call	re_node_set_insert
	test	al, al
	je	.label_172
	lea	rax, [r13 + r13*2]
	mov	r9, qword ptr [rbx + rax*8 + 8]
	test	r9, r9
	jle	.label_174
	mov	r8, qword ptr [rbx + rax*8 + 0x10]
	mov	r11, qword ptr [r14 + 0x10]
	lea	r10, [r11 - 1]
	mov	r12, -1
	xor	r15d, r15d
	mov	r13, qword ptr [rbp - 0x38]
	nop	word ptr cs:[rax + rax]
.label_576:
	test	r11, r11
	jle	.label_190
	mov	rbx, qword ptr [r8 + r15*8]
	test	r10, r10
	mov	rcx, qword ptr [r14 + 0x18]
	mov	eax, 0
	je	.label_192
	mov	rsi, r10
	xor	eax, eax
	nop	dword ptr [rax]
.label_195:
	lea	rdx, [rax + rsi]
	shr	rdx, 1
	cmp	qword ptr [rcx + rdx*8], rbx
	lea	rdi, [rdx + 1]
	cmovl	rax, rdi
	cmovge	rsi, rdx
	cmp	rax, rsi
	jb	.label_195
.label_192:
	cmp	rax, -1
	je	.label_190
	cmp	qword ptr [rcx + rax*8], rbx
	jne	.label_190
	cmp	r12, -1
	jne	.label_202
	mov	r12, rbx
.label_190:
	inc	r15
	cmp	r15, r9
	jl	.label_576
	mov	r14, qword ptr [rbp - 0x50]
	jmp	.label_205
	nop	word ptr cs:[rax + rax]
.label_1301:
	mov	rdi, r15
	mov	rsi, r13
	mov	rdx, r12
	mov	rcx, r14
	call	check_node_accept_bytes
	movsxd	rdx, eax
.label_1274:
	test	rdx, rdx
	jne	.label_625
	jmp	.label_215
.label_202:
	mov	r15, qword ptr [rbp - 0x68]
	test	r15, r15
	jle	.label_216
	mov	rcx, r15
	dec	rcx
	mov	rax, qword ptr [rbp - 0x60]
	mov	edx, 0
	mov	r14, qword ptr [rbp - 0x50]
	je	.label_219
	xor	edx, edx
	nop	word ptr cs:[rax + rax]
.label_224:
	lea	rsi, [rdx + rcx]
	shr	rsi, 1
	cmp	qword ptr [rax + rsi*8], r12
	lea	rdi, [rsi + 1]
	cmovl	rdx, rdi
	cmovge	rcx, rsi
	cmp	rdx, rcx
	jb	.label_224
.label_219:
	cmp	rdx, -1
	setne	cl
	cmp	qword ptr [rax + rdx*8], r12
	sete	dl
	and	dl, cl
	mov	rax, r12
	cmovne	rax, rbx
	test	dl, dl
	jne	.label_229
	test	r13, r13
	jne	.label_561
	mov	r12, rax
	jmp	.label_205
.label_1289:
	test	rdx, rdx
	mov	rcx, r14
	je	.label_1279
	mov	rax, qword ptr [r15 + 0x18]
	mov	r12, qword ptr [rax + r13*8]
	add	rdx, rcx
	jmp	.label_262
.label_1279:
	lea	rdi, [rbp - 0x70]
	mov	rsi, r13
	mov	r12, rdx
	call	re_node_set_insert
	mov	rdx, r12
	test	al, al
	je	.label_172
	mov	rax, qword ptr [rbp - 0x48]
	mov	rax, qword ptr [rax + 0xb8]
	mov	rcx, qword ptr [rax + r14*8]
	mov	rax, qword ptr [rcx + 0x10]
	test	rax, rax
	jle	.label_215
	mov	rdi, qword ptr [r15 + 0x28]
	lea	rsi, [r13 + r13*2]
	mov	rsi, qword ptr [rdi + rsi*8 + 0x10]
	mov	r12, qword ptr [rsi]
	dec	rax
	mov	r8, qword ptr [rcx + 0x18]
	mov	ecx, 0
	je	.label_1281
	xor	ecx, ecx
	nop	word ptr [rax + rax]
.label_1287:
	lea	rsi, [rcx + rax]
	shr	rsi, 1
	cmp	qword ptr [r8 + rsi*8], r12
	lea	rdi, [rsi + 1]
	cmovl	rcx, rdi
	cmovge	rax, rsi
	cmp	rcx, rax
	jb	.label_1287
.label_1281:
	cmp	rcx, -1
	je	.label_1274
	cmp	qword ptr [r8 + rcx*8], r12
	je	.label_205
	jmp	.label_1274
	nop	word ptr cs:[rax + rax]
.label_215:
	add	rbx, qword ptr [r15]
	mov	rdi, qword ptr [rbp - 0x48]
	mov	rsi, rbx
	mov	rdx, r14
	call	check_node_accept
	test	al, al
	mov	edx, 1
	je	.label_174
.label_625:
	add	rdx, r14
	cmp	qword ptr [rbp - 0x38], 0
	mov	rax, qword ptr [r15 + 0x18]
	mov	r12, qword ptr [rax + r13*8]
	je	.label_262
.label_1302:
	mov	rax, qword ptr [rbp - 0x48]
	cmp	rdx, qword ptr [rax + 0xa8]
	jg	.label_265
	mov	rax, qword ptr [rbp - 0x48]
	mov	rax, qword ptr [rax + 0xb8]
	mov	rcx, qword ptr [rax + rdx*8]
	test	rcx, rcx
	je	.label_265
	mov	rax, qword ptr [rcx + 0x10]
	test	rax, rax
	jle	.label_265
	dec	rax
	mov	rcx, qword ptr [rcx + 0x18]
	mov	ebx, 0
	je	.label_273
	xor	ebx, ebx
	nop	
.label_275:
	lea	rsi, [rbx + rax]
	shr	rsi, 1
	cmp	qword ptr [rcx + rsi*8], r12
	lea	rdi, [rsi + 1]
	cmovl	rbx, rdi
	cmovge	rax, rsi
	cmp	rbx, rax
	jb	.label_275
.label_273:
	cmp	rbx, -1
	je	.label_174
	cmp	qword ptr [rcx + rbx*8], r12
	jne	.label_174
.label_262:
	mov	qword ptr [rbp - 0x68], 0
	mov	r14, rdx
.label_205:
	test	r12, r12
	mov	r15, qword ptr [rbp - 0x78]
	jns	.label_280
	cmp	r12, -2
	je	.label_172
	nop	word ptr [rax + rax]
.label_174:
	cmp	qword ptr [rbp - 0x38], 0
	je	.label_508
.label_265:
	mov	rbx, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rbx]
	lea	rax, [rcx - 1]
	mov	qword ptr [rbx], rax
	test	rcx, rcx
	jle	.label_285
	mov	rcx, qword ptr [rbx + 0x10]
	shl	rax, 4
	lea	r14, [rax + rax*2]
	mov	r13, qword ptr [rcx + r14]
	mov	rsi, qword ptr [rcx + r14 + 0x10]
	mov	r15, qword ptr [rbp - 0x78]
	mov	rdi, r15
	mov	rdx, qword ptr [rbp - 0x58]
	call	memcpy
	mov	rdi, qword ptr [rbp - 0x60]
	call	free
	mov	rax, qword ptr [rbx + 0x10]
	mov	rdi, qword ptr [rax + r14 + 0x10]
	call	free
	mov	rax, qword ptr [rbx + 0x10]
	mov	rcx, qword ptr [rax + r14 + 0x28]
	mov	qword ptr [rbp - 0x60], rcx
	movups	xmm0, xmmword ptr [rax + r14 + 0x18]
	movaps	xmmword ptr [rbp - 0x70], xmm0
	mov	r12, qword ptr [rax + r14 + 8]
	mov	r14, r13
.label_280:
	cmp	r14, qword ptr [r15 + 8]
	mov	r13, r12
	mov	rbx, qword ptr [rbp - 0x88]
	mov	r12, qword ptr [rbp - 0x48]
	jle	.label_296
	mov	rdi, qword ptr [rbp - 0x60]
.label_1280:
	call	free
	mov	eax, dword ptr [rbp - 0x2c]
	test	al, al
	je	.label_1270
	mov	rdi, qword ptr [rbp - 0x40]
	call	free
.label_1270:
	xor	r14d, r14d
	mov	r12, qword ptr [rbp - 0x38]
	test	r12, r12
	je	.label_356
	cmp	qword ptr [r12], 0
	jle	.label_358
	xor	ebx, ebx
	xor	r15d, r15d
	nop	
.label_1285:
	mov	rax, qword ptr [r12 + 0x10]
	mov	rdi, qword ptr [rax + rbx + 0x28]
	call	free
	mov	rax, qword ptr [r12 + 0x10]
	mov	rdi, qword ptr [rax + rbx + 0x10]
	call	free
	inc	r15
	add	rbx, 0x30
	cmp	r15, qword ptr [r12]
	jl	.label_1285
	jmp	.label_358
.label_1275:
	mov	r14d, 0xc
	mov	r12, qword ptr [rbp - 0x38]
	test	r12, r12
	je	.label_356
	cmp	qword ptr [r12], 0
	jle	.label_358
	xor	ebx, ebx
	xor	r15d, r15d
	nop	dword ptr [rax + rax]
.label_1290:
	mov	rax, qword ptr [r12 + 0x10]
	mov	rdi, qword ptr [rax + rbx + 0x28]
	call	free
	mov	rax, qword ptr [r12 + 0x10]
	mov	rdi, qword ptr [rax + rbx + 0x10]
	call	free
	inc	r15
	add	rbx, 0x30
	cmp	r15, qword ptr [r12]
	jl	.label_1290
.label_358:
	mov	rdi, qword ptr [r12 + 0x10]
.label_1303:
	call	free
.label_356:
	mov	eax, r14d
	lea	rsp, [rbp - 0x28]
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_508:
	mov	rdi, qword ptr [rbp - 0x60]
	call	free
	mov	r14d, 1
	jmp	.label_330
.label_1272:
	mov	rdi, qword ptr [rbp - 0x60]
	call	free
	xor	r14d, r14d
.label_330:
	mov	eax, dword ptr [rbp - 0x2c]
	test	al, al
	je	.label_356
	mov	rdi, qword ptr [rbp - 0x40]
	jmp	.label_1303
.label_1284:
	mov	rdi, qword ptr [rbp - 0x60]
	call	free
	mov	eax, dword ptr [rbp - 0x2c]
	test	al, al
	je	.label_1278
	mov	rdi, qword ptr [rbp - 0x40]
	call	free
.label_1278:
	cmp	qword ptr [r15], 0
	jle	.label_1273
	xor	ebx, ebx
	xor	r14d, r14d
	nop	word ptr cs:[rax + rax]
.label_1282:
	mov	rax, qword ptr [r15 + 0x10]
	mov	rdi, qword ptr [rax + rbx + 0x28]
	call	free
	mov	rax, qword ptr [r15 + 0x10]
	mov	rdi, qword ptr [rax + rbx + 0x10]
	call	free
	inc	r14
	add	rbx, 0x30
	cmp	r14, qword ptr [r15]
	jl	.label_1282
.label_1273:
	mov	rdi, qword ptr [r15 + 0x10]
	call	free
	xor	r14d, r14d
	jmp	.label_356
.label_624:
	xorps	xmm0, xmm0
	movups	xmmword ptr [rbx], xmm0
.label_172:
	mov	rdi, qword ptr [rbp - 0x60]
	call	free
	mov	eax, dword ptr [rbp - 0x2c]
	test	al, al
	je	.label_354
	mov	rdi, qword ptr [rbp - 0x40]
	call	free
.label_354:
	mov	r14d, 0xc
	mov	r12, qword ptr [rbp - 0x38]
	test	r12, r12
	je	.label_356
	cmp	qword ptr [r12], 0
	jle	.label_358
	xor	ebx, ebx
	xor	r15d, r15d
.label_363:
	mov	rax, qword ptr [r12 + 0x10]
	mov	rdi, qword ptr [rax + rbx + 0x28]
	call	free
	mov	rax, qword ptr [r12 + 0x10]
	mov	rdi, qword ptr [rax + rbx + 0x10]
	call	free
	inc	r15
	add	rbx, 0x30
	cmp	r15, qword ptr [r12]
	jl	.label_363
	jmp	.label_358
.label_285:
	mov	edi, OFFSET FLAT:label_1298
	mov	esi, OFFSET FLAT:label_546
	mov	edx, 0x555
	mov	ecx, OFFSET FLAT:label_1299
	call	__assert_fail
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40b700

	.globl re_string_realloc_buffers
	.type re_string_realloc_buffers, @function
re_string_realloc_buffers:
	push	rbp
	push	r14
	push	rbx
	mov	r14, rsi
	mov	rbx, rdi
	cmp	dword ptr [rbx + 0x90], 2
	jl	.label_1304
	mov	rax, r14
	shr	rax, 0x3d
	mov	ebp, 0xc
	jne	.label_1305
	mov	rdi, qword ptr [rbx + 0x10]
	lea	rsi, [r14*4]
	call	realloc
	test	rax, rax
	je	.label_1305
	mov	qword ptr [rbx + 0x10], rax
	mov	rdi, qword ptr [rbx + 0x18]
	test	rdi, rdi
	je	.label_1304
	lea	rsi, [r14*8]
	call	realloc
	test	rax, rax
	je	.label_1305
	mov	qword ptr [rbx + 0x18], rax
.label_1304:
	cmp	byte ptr [rbx + 0x8b], 0
	je	.label_1306
	mov	rdi, qword ptr [rbx + 8]
	mov	rsi, r14
	call	realloc
	mov	ebp, 0xc
	test	rax, rax
	je	.label_1305
	mov	qword ptr [rbx + 8], rax
.label_1306:
	mov	qword ptr [rbx + 0x40], r14
	xor	ebp, ebp
.label_1305:
	mov	eax, ebp
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	nop	word ptr [rax + rax]
	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40b7a0

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
	je	.label_1307
	test	r15, r15
	je	.label_1308
.label_1307:
	mov	rdi, r15
	mov	rsi, r14
	mov	rdx, rbx
	call	memcpy
	mov	rax, r15
	pop	rbx
	pop	r14
	pop	r15
	ret	
.label_1308:
	call	xalloc_die
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x40b7e0

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
	je	.label_1321
	mov	edx, OFFSET FLAT:label_1312
	xor	eax, eax
	mov	rdi, r14
	mov	r8, rbx
	call	__fprintf_chk
	jmp	.label_1318
.label_1321:
	mov	edx, OFFSET FLAT:label_1319
	xor	eax, eax
	mov	rdi, r14
	mov	rcx, rbx
	mov	r8, r9
	call	__fprintf_chk
.label_1318:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_1323
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
	mov	esi, OFFSET FLAT:label_1320
	mov	edx, 5
	call	dcgettext
	mov	rdi, rax
	mov	rsi, r14
	call	fputs_unlocked
	cmp	r12, 9
	ja	.label_1324
	jmp	qword ptr [(r12 * 8) + label_1325]
.label_2378:
	add	rsp, 8
	jmp	.label_1311
.label_1324:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_1315
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
	jmp	.label_1311
.label_2379:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_1310
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
.label_2380:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_1316
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
.label_2381:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_1313
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
.label_2382:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_1327
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
	jmp	.label_1311
.label_2383:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_1326
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
	jmp	.label_1311
.label_2384:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_1309
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
	jmp	.label_1311
.label_2385:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_1314
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
	jmp	.label_1311
.label_2387:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_1317
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
	jmp	.label_1311
.label_2386:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_1322
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
.label_1311:
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	nop	dword ptr [rax + rax]
	push	rbx
	mov	rbx, rdi
	mov	rdi, qword ptr [rbx]
	test	rdi, rdi
	je	.label_520
	call	free_dfa_content
.label_520:
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
.label_1328:
	call	xalloc_die
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40bb8b

	.globl xmalloc
	.type xmalloc, @function
xmalloc:
	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	je	.label_1329
	test	rax, rax
	je	.label_1328
.label_1329:
	pop	rbx
	ret	
	.section	.text
	.align	16
	#Procedure 0x40bba0

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
	jbe	.label_1448
.label_1337:
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
	ja	.label_1403
	lea	rdi, [r13 + 1]
	mov	qword ptr [r12 + 8], rdi
	mov	rax, rdi
	mov	qword ptr [rsp + 8], rax
	shl	rdi, 4
	call	malloc
	mov	qword ptr [r12], rax
	mov	eax, 1
	nop	word ptr cs:[rax + rax]
.label_1438:
	mov	rbx, rax
	lea	rax, [rbx + rbx]
	cmp	rbx, r13
	jbe	.label_1438
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
	jne	.label_1380
	mov	cl, byte ptr [rax + 1]
	or	cl, 0x20
	cmp	cl, 0x74
	jne	.label_1380
	mov	cl, byte ptr [rax + 2]
	or	cl, 0x20
	cmp	cl, 0x66
	jne	.label_1380
	xor	ecx, ecx
	cmp	byte ptr [rax + 3], 0x2d
	sete	cl
	cmp	byte ptr [rax + rcx + 3], 0x38
	jne	.label_1380
	cmp	byte ptr [rax + rcx + 4], 0
	jne	.label_1380
	or	byte ptr [r12 + 0xb0], 4
.label_1380:
	mov	rax, qword ptr [r12 + 0xb0]
	mov	ecx, eax
	and	cl, 0xf7
	mov	byte ptr [r12 + 0xb0], cl
	mov	rcx, rax
	shr	rcx, 0x20
	cmp	ecx, 2
	jl	.label_1391
	test	al, 4
	jne	.label_1398
	mov	edi, 0x20
	mov	esi, 1
	call	rpl_calloc
	mov	qword ptr [r12 + 0x78], rax
	test	rax, rax
	je	.label_1403
	xor	ebp, ebp
	nop	dword ptr [rax]
.label_1415:
	mov	edi, ebp
	call	btowc
	cmp	eax, -1
	je	.label_1406
	mov	edx, 1
	mov	ecx, ebp
	shl	rdx, cl
	mov	rcx, qword ptr [r12 + 0x78]
	or	qword ptr [rcx], rdx
.label_1406:
	cmp	ebp, 0x7f
	ja	.label_1410
	cmp	ebp, eax
	je	.label_1410
	or	byte ptr [r12 + 0xb0], 8
.label_1410:
	inc	rbp
	cmp	rbp, 0x40
	jne	.label_1415
	xor	ebp, ebp
	nop	dword ptr [rax + rax]
.label_1430:
	lea	rbx, [rbp + 0x40]
	mov	edi, ebx
	call	btowc
	cmp	eax, -1
	je	.label_1422
	mov	edx, 1
	mov	ecx, ebp
	shl	rdx, cl
	mov	rcx, qword ptr [r12 + 0x78]
	or	qword ptr [rcx + 8], rdx
.label_1422:
	cmp	ebx, eax
	je	.label_1427
	or	byte ptr [r12 + 0xb0], 8
.label_1427:
	inc	rbp
	cmp	rbp, 0x40
	jne	.label_1430
	xor	ebp, ebp
	nop	dword ptr [rax + rax]
.label_1436:
	mov	edi, ebp
	sub	edi, -0x80
	call	btowc
	cmp	eax, -1
	je	.label_1433
	mov	eax, 1
	mov	ecx, ebp
	shl	rax, cl
	mov	rcx, qword ptr [r12 + 0x78]
	or	qword ptr [rcx + 0x10], rax
.label_1433:
	inc	rbp
	cmp	rbp, 0x40
	jne	.label_1436
	xor	ebp, ebp
	nop	dword ptr [rax]
.label_1442:
	lea	edi, [rbp + 0xc0]
	call	btowc
	cmp	eax, -1
	je	.label_1440
	mov	eax, 1
	mov	ecx, ebp
	shl	rax, cl
	mov	rcx, qword ptr [r12 + 0x78]
	or	qword ptr [rcx + 0x18], rax
.label_1440:
	inc	rbp
	cmp	rbp, 0x40
	jne	.label_1442
	jmp	.label_1391
.label_1398:
	mov	qword ptr [r12 + 120], OFFSET FLAT:utf8_sb_map
.label_1391:
	cmp	qword ptr [r12], 0
	je	.label_1403
	cmp	qword ptr [r12 + 0x40], 0
	je	.label_1403
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
	jle	.label_1447
	cmp	edx, 2
	jl	.label_1476
	mov	r12d, 0xc
	mov	rax, qword ptr [rsp + 8]
	movabs	rcx, 0x1fffffffffffffff
	cmp	rax, rcx
	ja	.label_1351
	lea	rsi, [rax*4]
	xor	edi, edi
	call	realloc
	test	rax, rax
	je	.label_1351
	mov	qword ptr [rsp + 0x58], rax
	mov	r12, qword ptr [rsp + 0x18]
.label_1476:
	xor	eax, eax
	test	bpl, bpl
	je	.label_1481
	xor	edi, edi
	mov	rsi, qword ptr [rsp + 8]
	call	realloc
	mov	r12d, 0xc
	test	rax, rax
	je	.label_1351
	mov	qword ptr [rsp + 0x50], rax
	mov	r12, qword ptr [rsp + 0x18]
.label_1481:
	mov	rcx, qword ptr [rsp + 8]
	mov	qword ptr [rsp + 0x88], rcx
	mov	ecx, dword ptr [r12 + 0xb4]
	jmp	.label_1331
.label_1403:
	mov	dword ptr [rsp + 4], 0xc
	mov	rdi, r12
	call	free_dfa_content
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [r15], xmm0
	mov	eax, 0xc
	jmp	.label_1334
.label_1447:
	shr	rcx, 0x20
	xor	edx, edx
	mov	qword ptr [rsp + 8], rdx
.label_1331:
	test	bpl, bpl
	cmove	rax, r14
	mov	qword ptr [rsp + 0x50], rax
	cmp	qword ptr [rsp + 0xe0], 0
	je	.label_1339
	cmp	ecx, 2
	jl	.label_1346
	lea	rdi, [rsp + 0x48]
	call	build_wcs_upper_buffer
	mov	r12d, eax
	test	r12d, r12d
	jne	.label_1351
	lea	rbx, [rsp + 0x48]
	nop	
.label_1392:
	cmp	qword ptr [rsp + 0x80], r13
	mov	r12, qword ptr [rsp + 0x18]
	jge	.label_1357
	mov	rbp, qword ptr [rsp + 0x88]
	movsxd	rax, dword ptr [r12 + 0xb4]
	add	rax, qword ptr [rsp + 0x78]
	cmp	rbp, rax
	jg	.label_1357
	lea	r14, [rbp + rbp]
	cmp	dword ptr [rsp + 0xd8], 2
	jl	.label_1367
	mov	r12d, 0xc
	movabs	rax, 0x1fffffffffffffff
	cmp	r14, rax
	ja	.label_1351
	mov	rdi, qword ptr [rsp + 0x58]
	lea	rsi, [rbp*8]
	call	realloc
	test	rax, rax
	je	.label_1351
	mov	qword ptr [rsp + 0x58], rax
	mov	rdi, qword ptr [rsp + 0x60]
	test	rdi, rdi
	je	.label_1367
	shl	rbp, 4
	mov	rsi, rbp
	call	realloc
	test	rax, rax
	je	.label_1351
	mov	qword ptr [rsp + 0x60], rax
.label_1367:
	cmp	byte ptr [rsp + 0xd3], 0
	je	.label_1452
	mov	rdi, qword ptr [rsp + 0x50]
	mov	rsi, r14
	call	realloc
	mov	r12d, 0xc
	test	rax, rax
	je	.label_1351
	mov	qword ptr [rsp + 0x50], rax
.label_1452:
	mov	qword ptr [rsp + 0x88], r14
	mov	rdi, rbx
	call	build_wcs_upper_buffer
	mov	r12d, eax
	test	r12d, r12d
	je	.label_1392
.label_1351:
	mov	dword ptr [rsp + 4], r12d
	jmp	.label_1395
.label_1339:
	cmp	ecx, 2
	jl	.label_1396
	lea	rdi, [rsp + 0x48]
	call	build_wcs_buffer
	jmp	.label_1357
.label_1346:
	mov	rax, qword ptr [rsp + 8]
	cmp	rax, r13
	cmovg	rax, r13
	mov	r13, rax
	xor	eax, eax
	test	r13, r13
	jle	.label_1402
	xor	eax, eax
	mov	ebp, 1
	jmp	.label_1405
	nop	dword ptr [rax]
.label_1423:
	mov	r14, qword ptr [rsp + 0x48]
	mov	rax, qword ptr [rsp + 0x70]
	mov	rbx, qword ptr [rsp + 0xc0]
	inc	rbp
.label_1405:
	add	r14, rax
	movzx	eax, byte ptr [rbp + r14 - 1]
	movzx	ecx, al
	test	rbx, rbx
	jne	.label_1411
.label_1426:
	movzx	ebx, al
	mov	eax, ebx
	sub	eax, -0x80
	cmp	eax, 0x17f
	ja	.label_1416
	call	__ctype_toupper_loc
	mov	rax, qword ptr [rax]
	mov	ebx, dword ptr [rax + rbx*4]
.label_1416:
	mov	rax, qword ptr [rsp + 0x50]
	mov	byte ptr [rax + rbp - 1], bl
	cmp	rbp, r13
	jl	.label_1423
	jmp	.label_1425
.label_1411:
	movzx	eax, byte ptr [rbx + rcx]
	jmp	.label_1426
.label_1396:
	test	rbx, rbx
	je	.label_1428
	mov	rcx, qword ptr [rsp + 8]
	cmp	rcx, r13
	cmovg	rcx, r13
	mov	rdi, rcx
	xor	ecx, ecx
	test	rdi, rdi
	jle	.label_1429
	movzx	ecx, byte ptr [r14]
	mov	cl, byte ptr [rbx + rcx]
	mov	byte ptr [rax], cl
	mov	ecx, 1
	cmp	rdi, 1
	je	.label_1429
	mov	eax, 1
	nop	word ptr [rax + rax]
.label_1435:
	mov	rcx, qword ptr [rsp + 0x48]
	mov	rdx, qword ptr [rsp + 0x50]
	add	rcx, qword ptr [rsp + 0x70]
	movzx	ecx, byte ptr [rax + rcx]
	mov	rsi, qword ptr [rsp + 0xc0]
	movzx	ecx, byte ptr [rsi + rcx]
	mov	byte ptr [rdx + rax], cl
	inc	rax
	cmp	rax, rdi
	jl	.label_1435
	mov	rcx, rdi
.label_1429:
	mov	qword ptr [rsp + 0x78], rcx
	mov	qword ptr [rsp + 0x80], rcx
	jmp	.label_1357
.label_1425:
	mov	rax, r13
	jmp	.label_1402
.label_1428:
	mov	rax, qword ptr [rsp + 8]
.label_1402:
	mov	qword ptr [rsp + 0x78], rax
	mov	qword ptr [rsp + 0x80], rax
.label_1357:
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
	jne	.label_1458
	mov	eax, dword ptr [rsp + 4]
	test	eax, eax
	jne	.label_1478
.label_1458:
	mov	ebp, dword ptr [rbx + 0x80]
	cmp	ebp, 0xf
	je	.label_1461
	mov	rax, qword ptr [rbx + 0x70]
.label_1344:
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
.label_1341:
	test	r14, r14
	mov	rcx, rbp
	je	.label_1450
	mov	ecx, dword ptr [rbx + 0x80]
	cmp	ecx, 0xf
	je	.label_1468
	mov	rax, qword ptr [rbx + 0x70]
.label_1464:
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
	je	.label_1354
	mov	qword ptr [rbp], rcx
.label_1450:
	test	rbp, rbp
	je	.label_1354
	test	rcx, rcx
	je	.label_1354
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
	je	.label_411
	cmp	qword ptr [rbx + 0x20], 0
	je	.label_411
	test	rax, rax
	je	.label_411
	mov	rax, qword ptr [rbx + 0x28]
	test	rax, rax
	je	.label_411
	mov	rbp, qword ptr [r15 + 0x30]
	lea	rdi, [rbp*8]
	call	malloc
	mov	qword ptr [rbx + 0xe0], rax
	test	rax, rax
	mov	rdi, rbx
	mov	qword ptr [rsp + 8], rdi
	je	.label_1347
	test	rbp, rbp
	je	.label_1352
	xor	edx, edx
	cmp	rbp, 4
	jb	.label_1355
	xor	edx, edx
	mov	rcx, rbp
	and	rcx, 0xfffffffffffffffc
	je	.label_1355
	lea	rsi, [rcx - 4]
	mov	rbx, rsi
	shr	rbx, 2
	lea	edx, [rbx + 1]
	and	edx, 3
	mov	r8d, 1
	cmp	rsi, 0xc
	jae	.label_1361
	movq	xmm0, r8
	pslldq	xmm0, 8
	jmp	.label_1366
.label_1347:
	lea	r12, [rdi + 0x68]
	jmp	.label_1370
.label_1361:
	lea	rsi, [rdx - 1]
	sub	rsi, rbx
	mov	ebx, 1
	movq	xmm0, rbx
	pslldq	xmm0, 8
	movdqa	xmm8, xmmword ptr [rip + label_1376]
	movdqa	xmm9, xmmword ptr [rip + label_1377]
	movdqa	xmm10, xmmword ptr [rip + label_1381]
	movdqa	xmm11, xmmword ptr [rip + label_1382]
	movdqa	xmm5, xmmword ptr [rip + label_1383]
	movdqa	xmm6, xmmword ptr [rip + label_1384]
	movdqa	xmm7, xmmword ptr [rip + label_1385]
	movdqa	xmm1, xmmword ptr [rip + label_1386]
	nop	word ptr cs:[rax + rax]
.label_1389:
	movdqa	xmm2, xmm0
	paddq	xmm2, xmm8
	movdqa	xmm3, xmm0
	paddq	xmm3, xmm9
	movq	rbx, xmm0
	movdqu	xmmword ptr [rax + rbx*8], xmm0
	movdqu	xmmword ptr [rax + rbx*8 + 0x10], xmm2
	movdqa	xmm2, xmm0
	paddq	xmm2, xmm10
	movdqa	xmm4, xmm0
	paddq	xmm4, xmm11
	movq	rbx, xmm3
	movdqu	xmmword ptr [rax + rbx*8], xmm3
	movdqu	xmmword ptr [rax + rbx*8 + 0x10], xmm2
	movdqa	xmm2, xmm0
	paddq	xmm2, xmm5
	movdqa	xmm3, xmm0
	paddq	xmm3, xmm6
	movq	rbx, xmm4
	movdqu	xmmword ptr [rax + rbx*8], xmm4
	movdqu	xmmword ptr [rax + rbx*8 + 0x10], xmm2
	movdqa	xmm2, xmm0
	paddq	xmm2, xmm7
	paddq	xmm0, xmm1
	movq	rbx, xmm3
	movdqu	xmmword ptr [rax + rbx*8], xmm3
	movdqu	xmmword ptr [rax + rbx*8 + 0x10], xmm2
	add	rsi, 4
	jne	.label_1389
.label_1366:
	test	rdx, rdx
	je	.label_1413
	neg	rdx
	movdqa	xmm1, xmmword ptr [rip + label_1376]
	movdqa	xmm2, xmmword ptr [rip + label_1377]
	nop	word ptr cs:[rax + rax]
.label_1477:
	movdqa	xmm3, xmm0
	movq	rsi, xmm0
	movdqu	xmmword ptr [rax + rsi*8], xmm0
	paddq	xmm0, xmm1
	paddq	xmm3, xmm2
	movdqu	xmmword ptr [rax + rsi*8 + 0x10], xmm0
	inc	rdx
	movdqa	xmm0, xmm3
	jne	.label_1477
.label_1413:
	cmp	rbp, rcx
	mov	rdx, rcx
	je	.label_1352
	nop	dword ptr [rax]
.label_1355:
	mov	qword ptr [rax + rdx*8], rdx
	inc	rdx
	cmp	rdx, rbp
	jb	.label_1355
.label_1352:
	mov	rbp, qword ptr [rdi + 0x68]
	mov	rsi, rbp
	call	optimize_subexps
	test	eax, eax
	jne	.label_1434
	nop	dword ptr [rax]
.label_367:
	mov	rbx, qword ptr [rbp + 8]
	test	rbx, rbx
	jne	.label_1409
	xor	eax, eax
	nop	dword ptr [rax + rax]
.label_1441:
	mov	rcx, rax
	mov	rax, rbp
	mov	rbx, qword ptr [rax + 0x10]
	cmp	rbx, rcx
	je	.label_1419
	test	rbx, rbx
	jne	.label_1409
.label_1419:
	mov	rbp, qword ptr [rax]
	test	rbp, rbp
	jne	.label_1441
	jmp	.label_1434
	nop	
.label_1409:
	mov	rdi, qword ptr [rsp + 8]
	mov	rsi, rbx
	call	optimize_subexps
	test	eax, eax
	mov	rbp, rbx
	je	.label_367
.label_1434:
	mov	rax, qword ptr [r15 + 0x30]
	xor	ecx, ecx
	test	rax, rax
	mov	rdi, qword ptr [rsp + 8]
	je	.label_1444
	mov	rdx, qword ptr [rdi + 0xe0]
	xor	ecx, ecx
	nop	dword ptr [rax]
.label_1449:
	cmp	rcx, qword ptr [rdx + rcx*8]
	jne	.label_1444
	inc	rcx
	cmp	rcx, rax
	jb	.label_1449
.label_1444:
	lea	r12, [rdi + 0x68]
	cmp	rcx, rax
	jne	.label_1370
	mov	rdi, qword ptr [rdi + 0xe0]
	call	free
	mov	rdi, qword ptr [rsp + 8]
	mov	qword ptr [rdi + 0xe0], 0
.label_1370:
	mov	rax, qword ptr [r12]
	lea	rbp, [rsp + 0x20]
	nop	dword ptr [rax]
.label_1454:
	mov	rbx, rax
	mov	rax, qword ptr [rbx + 8]
	test	rax, rax
	jne	.label_1454
	mov	rax, qword ptr [rbx + 0x10]
	test	rax, rax
	jne	.label_1454
	xor	edx, edx
	jmp	.label_1459
	nop	dword ptr [rax]
.label_1471:
	mov	rdx, qword ptr [rcx + 8]
	mov	rbx, rcx
.label_1459:
	mov	dword ptr [rsp + 0x20], 0
	test	rdx, rdx
	je	.label_1460
	cmp	byte ptr [rdx + 0x30], 0x11
	jne	.label_1460
	mov	rdi, rbp
	mov	rsi, r15
	call	lower_subexp
	mov	rdi, qword ptr [rsp + 8]
	mov	qword ptr [rbx + 8], rax
	test	rax, rax
	je	.label_1460
	mov	qword ptr [rax], rbx
	nop	word ptr cs:[rax + rax]
.label_1460:
	mov	rdx, qword ptr [rbx + 0x10]
	test	rdx, rdx
	je	.label_1465
	cmp	byte ptr [rdx + 0x30], 0x11
	jne	.label_1465
	mov	rdi, rbp
	mov	rsi, r15
	call	lower_subexp
	mov	rdi, qword ptr [rsp + 8]
	mov	qword ptr [rbx + 0x10], rax
	test	rax, rax
	je	.label_1465
	mov	qword ptr [rax], rbx
	nop	dword ptr [rax + rax]
.label_1465:
	mov	eax, dword ptr [rsp + 0x20]
	test	eax, eax
	jne	.label_467
	mov	rcx, qword ptr [rbx]
	test	rcx, rcx
	je	.label_1469
	mov	rax, qword ptr [rcx + 0x10]
	cmp	rax, rbx
	je	.label_1471
	test	rax, rax
	je	.label_1471
	jmp	.label_1454
.label_1469:
	mov	rax, qword ptr [r12]
	mov	ebp, 0xfffc00ff
	nop	dword ptr [rax + rax]
.label_1342:
	mov	rbx, rax
	mov	rax, qword ptr [rbx + 8]
	test	rax, rax
	jne	.label_1342
	mov	rax, qword ptr [rbx + 0x10]
	test	rax, rax
	jne	.label_1342
	nop	word ptr cs:[rax + rax]
.label_1338:
	cmp	byte ptr [rbx + 0x30], 0x10
	jne	.label_1480
	mov	rax, qword ptr [rbx + 8]
	mov	rcx, qword ptr [rax + 0x18]
	mov	qword ptr [rbx + 0x18], rcx
	mov	rax, qword ptr [rax + 0x38]
	mov	qword ptr [rbx + 0x38], rax
	jmp	.label_412
	nop	dword ptr [rax]
.label_1480:
	mov	qword ptr [rbx + 0x18], rbx
	mov	rsi, qword ptr [rbx + 0x28]
	mov	rdx, qword ptr [rbx + 0x30]
	call	re_dfa_add_node
	mov	qword ptr [rbx + 0x38], rax
	cmp	rax, -1
	je	.label_411
	cmp	byte ptr [rbx + 0x30], 0xc
	mov	rdi, qword ptr [rsp + 8]
	jne	.label_412
	mov	ecx, dword ptr [rbx + 0x28]
	mov	rdx, qword ptr [rdi]
	shl	rax, 4
	shl	ecx, 8
	and	ecx, 0x3ff00
	mov	esi, dword ptr [rdx + rax + 8]
	and	esi, ebp
	or	esi, ecx
	mov	dword ptr [rdx + rax + 8], esi
.label_412:
	mov	rcx, qword ptr [rbx]
	test	rcx, rcx
	je	.label_1374
	mov	rax, qword ptr [rcx + 0x10]
	cmp	rax, rbx
	mov	rbx, rcx
	je	.label_1338
	test	rax, rax
	mov	rbx, rcx
	je	.label_1338
	jmp	.label_1342
.label_1374:
	mov	rbp, qword ptr [r12]
	mov	al, byte ptr [rbp + 0x30]
	cmp	al, 0x10
	je	.label_1343
	cmp	al, 0xb
	jne	.label_1345
	mov	rax, qword ptr [rbp + 8]
	mov	qword ptr [rax + 0x20], rbp
	jmp	.label_1348
.label_1343:
	mov	rax, qword ptr [rbp + 8]
	mov	rcx, qword ptr [rbp + 0x10]
	mov	rdx, qword ptr [rcx + 0x18]
	mov	qword ptr [rax + 0x20], rdx
	jmp	.label_1350
.label_1345:
	mov	rax, qword ptr [rbp + 8]
	test	rax, rax
	je	.label_1356
	mov	rcx, qword ptr [rbp + 0x20]
	mov	qword ptr [rax + 0x20], rcx
.label_1356:
	mov	rcx, qword ptr [rbp + 0x10]
	test	rcx, rcx
	je	.label_1348
.label_1350:
	mov	rdx, qword ptr [rbp + 0x20]
	mov	qword ptr [rcx + 0x20], rdx
.label_1348:
	mov	rdx, rbp
	jmp	.label_1362
.label_1375:
	mov	rax, qword ptr [rcx + 8]
	mov	rdx, qword ptr [rcx + 0x10]
	mov	rsi, qword ptr [rdx + 0x18]
	mov	qword ptr [rax + 0x20], rsi
	mov	rsi, qword ptr [rcx + 0x20]
	mov	qword ptr [rdx + 0x20], rsi
	mov	rdx, rcx
.label_1362:
	test	rax, rax
	mov	rcx, rax
	jne	.label_1369
	xor	eax, eax
	nop	word ptr cs:[rax + rax]
.label_1418:
	mov	rsi, rax
	mov	rax, rdx
	mov	rcx, qword ptr [rax + 0x10]
	cmp	rcx, rsi
	je	.label_1372
	test	rcx, rcx
	jne	.label_1369
.label_1372:
	mov	rdx, qword ptr [rax]
	test	rdx, rdx
	jne	.label_1418
	jmp	.label_1421
	nop	
.label_1369:
	mov	al, byte ptr [rcx + 0x30]
	cmp	al, 0x10
	je	.label_1375
	cmp	al, 0xb
	jne	.label_1378
	mov	rax, qword ptr [rcx + 8]
	mov	qword ptr [rax + 0x20], rcx
	mov	rdx, rcx
	jmp	.label_1362
.label_1378:
	mov	rax, qword ptr [rcx + 8]
	test	rax, rax
	je	.label_1387
	mov	rdx, qword ptr [rcx + 0x20]
	mov	qword ptr [rax + 0x20], rdx
.label_1387:
	mov	rsi, qword ptr [rcx + 0x10]
	test	rsi, rsi
	mov	rdx, rcx
	je	.label_1362
	mov	rdx, qword ptr [rcx + 0x20]
	mov	qword ptr [rsi + 0x20], rdx
	mov	rdx, rcx
	jmp	.label_1362
.label_1421:
	mov	rsi, rbp
	call	link_nfa_nodes
	mov	rsi, qword ptr [rsp + 8]
	test	eax, eax
	jne	.label_467
	nop	word ptr [rax + rax]
.label_465:
	mov	rbx, qword ptr [rbp + 8]
	test	rbx, rbx
	jne	.label_1394
	xor	eax, eax
	nop	dword ptr [rax + rax]
.label_1400:
	mov	rcx, rax
	mov	rax, rbp
	mov	rbx, qword ptr [rax + 0x10]
	cmp	rbx, rcx
	je	.label_1397
	test	rbx, rbx
	jne	.label_1394
.label_1397:
	mov	rbp, qword ptr [rax]
	test	rbp, rbp
	jne	.label_1400
	jmp	.label_1390
	nop	
.label_1394:
	mov	rdi, rsi
	mov	rsi, rbx
	call	link_nfa_nodes
	mov	rsi, qword ptr [rsp + 8]
	test	eax, eax
	mov	rbp, rbx
	je	.label_465
	jmp	.label_467
.label_1390:
	xor	eax, eax
	lea	r12, [rsp + 0x20]
	xor	r14d, r14d
	jmp	.label_1407
	nop	dword ptr [rax + rax]
.label_1420:
	inc	rbp
	mov	rax, rbp
.label_1407:
	cmp	rax, qword ptr [rsi + 0x10]
	jne	.label_1412
	xor	ebp, ebp
	test	r14b, 1
	mov	r14d, 0
	jne	.label_1414
	jmp	.label_1417
	nop	dword ptr [rax]
.label_1412:
	mov	rbp, rax
.label_1414:
	mov	rax, qword ptr [rsi + 0x30]
	lea	rbx, [rbp + rbp*2]
	cmp	qword ptr [rax + rbx*8 + 8], 0
	jne	.label_1420
	mov	ecx, 1
	mov	rdi, r12
	mov	rdx, rbp
	mov	r13, rsi
	call	calc_eclosure_iter
	test	eax, eax
	jne	.label_467
	mov	rax, qword ptr [r13 + 0x30]
	cmp	qword ptr [rax + rbx*8 + 8], 0
	mov	rsi, r13
	jne	.label_1420
	mov	rdi, qword ptr [rsp + 0x30]
	call	free
	mov	rsi, qword ptr [rsp + 8]
	mov	r14b, 1
	jmp	.label_1420
.label_1417:
	test	byte ptr [r15 + 0x38], 0x10
	mov	qword ptr [rsp + 0x38], r15
	mov	r14, qword ptr [rsp + 0x18]
	jne	.label_1404
	cmp	qword ptr [r15 + 0x30], 0
	je	.label_1404
	test	byte ptr [rsi + 0xb0], 1
	jne	.label_1437
.label_1404:
	cmp	qword ptr [rsi + 0x98], 0
	je	.label_1439
.label_1437:
	shl	rax, 3
	lea	rdi, [rax + rax*2]
	call	malloc
	mov	r8, qword ptr [rsp + 8]
	mov	qword ptr [r8 + 0x38], rax
	test	rax, rax
	je	.label_411
	cmp	qword ptr [r8 + 0x10], 0
	je	.label_1439
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [rax], xmm0
	mov	qword ptr [rax + 0x10], 0
	mov	rax, qword ptr [r8 + 0x10]
	cmp	rax, 2
	jb	.label_1445
	mov	ecx, 1
	mov	edx, 0x18
	nop	
.label_1451:
	mov	rax, qword ptr [r8 + 0x38]
	movdqu	xmmword ptr [rax + rdx], xmm0
	mov	qword ptr [rax + rdx + 0x10], 0
	inc	rcx
	mov	rax, qword ptr [r8 + 0x10]
	add	rdx, 0x18
	cmp	rcx, rax
	jb	.label_1451
.label_1445:
	test	rax, rax
	je	.label_1439
	mov	r9, qword ptr [r8 + 0x30]
	xor	ebp, ebp
	nop	word ptr cs:[rax + rax]
.label_1479:
	lea	r10, [rbp + rbp*2]
	cmp	qword ptr [r9 + r10*8 + 8], 0
	jle	.label_1457
	mov	r13, qword ptr [r9 + r10*8 + 0x10]
	xor	ebx, ebx
	mov	qword ptr [rsp + 0x40], r10
	nop	dword ptr [rax]
.label_1472:
	mov	r14, qword ptr [r8 + 0x38]
	mov	rax, qword ptr [r13 + rbx*8]
	lea	r12, [rax + rax*2]
	mov	rax, qword ptr [r14 + r12*8]
	lea	r15, [r14 + r12*8 + 8]
	mov	rdx, qword ptr [r14 + r12*8 + 8]
	cmp	rax, rdx
	jne	.label_1463
	lea	rcx, [r14 + r12*8]
	lea	rdx, [rax + rax + 2]
	lea	rax, [rax + rax]
	mov	qword ptr [rcx], rdx
	mov	rdi, qword ptr [r14 + r12*8 + 0x10]
	lea	rsi, [rax*8 + 0x10]
	call	realloc
	test	rax, rax
	je	.label_1466
	lea	rcx, [r14 + r12*8 + 0x10]
	mov	qword ptr [rcx], rax
	mov	rdx, qword ptr [r15]
	mov	r8, qword ptr [rsp + 8]
	mov	r9, qword ptr [r8 + 0x30]
	mov	r10, qword ptr [rsp + 0x40]
	jmp	.label_1467
	nop	word ptr cs:[rax + rax]
.label_1463:
	mov	rax, qword ptr [r14 + r12*8 + 0x10]
.label_1467:
	lea	rsi, [rdx + 1]
	mov	qword ptr [r15], rsi
	mov	qword ptr [rax + rdx*8], rbp
	inc	rbx
	cmp	rbx, qword ptr [r9 + r10*8 + 8]
	jl	.label_1472
	mov	rax, qword ptr [r8 + 0x10]
	mov	r15, qword ptr [rsp + 0x38]
	mov	r14, qword ptr [rsp + 0x18]
.label_1457:
	inc	rbp
	cmp	rbp, rax
	jb	.label_1479
.label_1439:
	mov	dword ptr [rsp + 4], 0
	cmp	qword ptr [rsp + 0xe0], 0
	jne	.label_1340
	mov	al, byte ptr [r14 + 0xb0]
	mov	ecx, eax
	and	cl, 4
	je	.label_1340
	cmp	qword ptr [r15 + 0x28], 0
	jne	.label_1340
	mov	rdx, qword ptr [r14 + 0x10]
	test	rdx, rdx
	je	.label_1483
	mov	rbp, qword ptr [r14]
	xor	r9d, r9d
	movabs	r8, 0x1000000010001
	mov	rcx, rbp
	xor	r10d, r10d
	xor	edi, edi
.label_1349:
	movzx	ebx, byte ptr [rcx + 8]
	dec	bl
	movzx	esi, bl
	cmp	sil, 0xb
	ja	.label_1332
	jmp	qword ptr [(rsi * 8) + label_1333]
.label_2218:
	cmp	byte ptr [rcx], 0
	mov	sil, 1
	js	.label_1473
	mov	esi, r10d
.label_1473:
	mov	r10b, sil
	jmp	.label_1335
.label_2219:
	mov	rsi, qword ptr [rcx]
	cmp	qword ptr [rsi + 0x10], 0
	jne	.label_1340
	cmp	qword ptr [rsi + 0x18], 0
	je	.label_1335
	jmp	.label_1340
.label_2220:
	mov	r9b, 1
	jmp	.label_1335
.label_2221:
	mov	esi, dword ptr [rcx]
	lea	ebx, [rsi - 0x10]
	cmp	ebx, 0x30
	ja	.label_1373
	bt	r8, rbx
	jb	.label_1335
.label_1373:
	cmp	esi, 0x80
	jne	.label_1340
.label_1335:
	inc	rdi
	add	rcx, 0x10
	cmp	rdi, rdx
	jb	.label_1349
	mov	cl, r9b
	and	cl, 1
	or	r10b, r9b
	test	r10b, 1
	je	.label_1353
	xor	eax, eax
	mov	edx, 8
	jmp	.label_1358
.label_411:
	mov	eax, 0xc
.label_467:
	mov	dword ptr [rsp + 4], eax
.label_1395:
	mov	r12, qword ptr [rsp + 0x18]
	jmp	.label_1401
.label_1474:
	add	rdx, 0x10
	mov	rbp, qword ptr [r14]
.label_1358:
	mov	esi, dword ptr [rbp + rdx]
	cmp	sil, 5
	je	.label_1363
	cmp	sil, 1
	jne	.label_1365
	cmp	byte ptr [rbp + rdx - 8], 0
	jns	.label_1365
	and	esi, 0xffdfffff
	jmp	.label_1368
.label_1363:
	and	esi, 0xffffff00
	or	esi, 7
.label_1368:
	mov	dword ptr [rbp + rdx], esi
.label_1365:
	inc	rax
	cmp	rax, qword ptr [r14 + 0x10]
	jb	.label_1474
	mov	al, byte ptr [r14 + 0xb0]
	jmp	.label_1353
.label_1483:
	xor	ecx, ecx
.label_1353:
	mov	dword ptr [r14 + 0xb4], 1
	cmp	qword ptr [r14 + 0x98], 0
	setg	dl
	or	dl, cl
	add	dl, dl
	and	al, 0xf9
	or	al, dl
	mov	byte ptr [r14 + 0xb0], al
.label_1340:
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
	jle	.label_1388
	mov	qword ptr [rsp + 0x20], r13
	lea	rdi, [r13*8]
	call	malloc
	mov	rbp, rax
	mov	qword ptr [rsp + 0x30], rbp
	test	rbp, rbp
	je	.label_1393
	mov	rsi, qword ptr [r15 + r12*8 + 0x10]
	shl	r14, 3
	mov	rdi, rbp
	mov	rdx, r14
	call	memcpy
	mov	dword ptr [rsp + 0x14], 0
	test	r13, r13
	mov	r15, qword ptr [rsp + 0x38]
	mov	r12, qword ptr [rsp + 0x18]
	jle	.label_1399
	mov	rax, qword ptr [r12 + 0x98]
	test	rax, rax
	jle	.label_1399
	xor	eax, eax
	lea	r14, [rsp + 0x20]
	jmp	.label_1408
	nop	dword ptr [rax + rax]
.label_1446:
	mov	rbp, qword ptr [rsp + 0x30]
.label_1408:
	mov	r8, qword ptr [rbp + rax*8]
	mov	rdx, qword ptr [r12]
	mov	rsi, r8
	shl	rsi, 4
	cmp	byte ptr [rdx + rsi + 8], 4
	jne	.label_1431
	test	r13, r13
	mov	edi, 0
	jle	.label_1443
	add	rsi, rdx
	xor	edi, edi
	nop	
.label_1336:
	mov	rcx, qword ptr [rbp + rdi*8]
	shl	rcx, 4
	cmp	byte ptr [rdx + rcx + 8], 9
	jne	.label_1359
	mov	rcx, qword ptr [rdx + rcx]
	cmp	rcx, qword ptr [rsi]
	je	.label_1443
.label_1359:
	inc	rdi
	cmp	rdi, r13
	jl	.label_1336
.label_1443:
	cmp	rdi, r13
	je	.label_1431
	mov	rcx, qword ptr [r12 + 0x28]
	lea	rdx, [r8 + r8*2]
	mov	rcx, qword ptr [rcx + rdx*8 + 0x10]
	mov	rcx, qword ptr [rcx]
	test	r13, r13
	jle	.label_1432
	mov	rdx, r13
	dec	rdx
	mov	esi, 0
	je	.label_1379
	xor	esi, esi
	nop	dword ptr [rax + rax]
.label_1424:
	lea	rdi, [rsi + rdx]
	shr	rdi, 1
	cmp	qword ptr [rbp + rdi*8], rcx
	lea	rbx, [rdi + 1]
	cmovl	rsi, rbx
	cmovge	rdx, rdi
	cmp	rsi, rdx
	jb	.label_1424
.label_1379:
	cmp	rsi, -1
	je	.label_1432
	cmp	qword ptr [rbp + rsi*8], rcx
	je	.label_1431
.label_1432:
	mov	rax, qword ptr [r12 + 0x30]
	lea	rcx, [rcx + rcx*2]
	lea	rsi, [rax + rcx*8]
	mov	rdi, r14
	call	re_node_set_merge
	test	eax, eax
	jne	.label_1330
	mov	r13, qword ptr [rsp + 0x28]
	xor	eax, eax
	nop	
.label_1431:
	inc	rax
	cmp	rax, r13
	jl	.label_1446
	jmp	.label_1399
.label_1388:
	pxor	xmm0, xmm0
	movdqa	xmmword ptr [rsp + 0x20], xmm0
	mov	qword ptr [rsp + 0x30], 0
	mov	dword ptr [rsp + 0x14], 0
	mov	r15, qword ptr [rsp + 0x38]
	mov	r12, qword ptr [rsp + 0x18]
.label_1399:
	lea	rdi, [rsp + 0x14]
	lea	rdx, [rsp + 0x20]
	xor	ecx, ecx
	mov	rsi, r12
	call	re_acquire_state_context
	mov	qword ptr [r12 + 0x48], rax
	test	rax, rax
	je	.label_1453
	cmp	byte ptr [rax + 0x68], 0
	js	.label_1455
	mov	qword ptr [r12 + 0x60], rax
	mov	qword ptr [r12 + 0x58], rax
	mov	qword ptr [r12 + 0x50], rax
	jmp	.label_1456
.label_1455:
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
	je	.label_1462
	test	rax, rax
	je	.label_1462
	mov	rax, qword ptr [r12 + 0x58]
	test	rax, rax
	je	.label_1462
.label_1456:
	mov	rdi, qword ptr [rsp + 0x30]
	call	free
	xor	eax, eax
.label_1330:
	mov	dword ptr [rsp + 4], eax
	mov	rbx, qword ptr [r15]
	mov	rdi, qword ptr [rbx + 0x70]
	test	rdi, rdi
	je	.label_1470
	nop	dword ptr [rax]
.label_1475:
	mov	rbp, qword ptr [rdi]
	call	free
	test	rbp, rbp
	mov	rdi, rbp
	jne	.label_1475
.label_1470:
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
	je	.label_1482
	mov	rdi, qword ptr [rsp + 0x50]
	call	free
.label_1482:
	xor	eax, eax
	cmp	dword ptr [rsp + 4], 0
	je	.label_1334
	jmp	.label_1360
.label_1462:
	mov	eax, dword ptr [rsp + 0x14]
	jmp	.label_1330
.label_1466:
	mov	eax, 0xc
	mov	r15, qword ptr [rsp + 0x38]
	jmp	.label_467
.label_1448:
	mov	esi, 0xe8
	mov	rdi, r12
	call	realloc
	mov	r12, rax
	mov	eax, 0xc
	test	r12, r12
	je	.label_1334
	mov	qword ptr [r15 + 8], 0xe8
	mov	qword ptr [r15], r12
	jmp	.label_1337
.label_1461:
	mov	edi, 0x3c8
	call	malloc
	xor	ebp, ebp
	test	rax, rax
	je	.label_1341
	mov	rcx, qword ptr [rbx + 0x70]
	mov	qword ptr [rax], rcx
	mov	qword ptr [rbx + 0x70], rax
	mov	dword ptr [rbx + 0x80], 0
	jmp	.label_1344
.label_1468:
	mov	edi, 0x3c8
	call	malloc
	test	rax, rax
	je	.label_1354
	mov	rcx, qword ptr [rbx + 0x70]
	mov	qword ptr [rax], rcx
	mov	qword ptr [rbx + 0x70], rax
	mov	dword ptr [rbx + 0x80], 0
	xor	ecx, ecx
	jmp	.label_1464
.label_1354:
	mov	dword ptr [rsp + 4], 0xc
.label_1478:
	mov	qword ptr [r12 + 0x68], 0
.label_1401:
	mov	rbx, qword ptr [r15]
	mov	rdi, qword ptr [rbx + 0x70]
	test	rdi, rdi
	je	.label_1364
	nop	word ptr cs:[rax + rax]
.label_1371:
	mov	rbp, qword ptr [rdi]
	call	free
	test	rbp, rbp
	mov	rdi, rbp
	jne	.label_1371
.label_1364:
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
	je	.label_1360
	mov	rdi, qword ptr [rsp + 0x50]
	call	free
.label_1360:
	mov	rdi, r12
	call	free_dfa_content
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [r15], xmm0
	mov	eax, dword ptr [rsp + 4]
.label_1334:
	add	rsp, 0xe8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_1453:
	mov	eax, dword ptr [rsp + 0x14]
	jmp	.label_1330
.label_1393:
	pxor	xmm0, xmm0
	movdqa	xmmword ptr [rsp + 0x20], xmm0
	mov	dword ptr [rsp + 0x14], 0xc
	mov	eax, 0xc
	mov	r15, qword ptr [rsp + 0x38]
	mov	r12, qword ptr [rsp + 0x18]
	jmp	.label_1330
.label_1332:
	call	abort
	nop	
	.section	.text
	.align	16
	#Procedure 0x40d190

	.globl check_dst_limits_calc_pos_1
	.type check_dst_limits_calc_pos_1, @function
check_dst_limits_calc_pos_1:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x58
	mov	r15, rcx
	mov	dword ptr [rsp + 0xc], esi
	mov	qword ptr [rsp + 0x20], rdi
	mov	r10, qword ptr [rdi + 0x98]
	mov	rax, qword ptr [r10 + 0x30]
	lea	rcx, [r15 + r15*2]
	cmp	qword ptr [rax + rcx*8 + 8], 0
	jle	.label_1494
	lea	r11, [rax + rcx*8 + 8]
	mov	esi, 1
	mov	ecx, edx
	shl	rsi, cl
	mov	eax, dword ptr [rsp + 0xc]
	mov	ecx, eax
	shl	ecx, 0x1f
	sar	ecx, 0x1f
	mov	dword ptr [rsp + 0x1c], ecx
	mov	qword ptr [rsp + 0x50], rsi
	xor	rsi, 0xffff
	mov	qword ptr [rsp + 0x28], rsi
	mov	ecx, eax
	and	ecx, 2
	mov	dword ptr [rsp + 0x10], ecx
	shr	ecx, 1
	cmp	rdx, 0x3f
	setg	bl
	mov	dword ptr [rsp + 0x14], ecx
	or	bl, cl
	mov	byte ptr [rsp + 0xb], bl
	and	eax, 1
	mov	dword ptr [rsp + 0x18], eax
	xor	ebx, ebx
	mov	qword ptr [rsp + 0x38], r10
	mov	qword ptr [rsp + 0x30], rdx
	nop	word ptr cs:[rax + rax]
.label_1484:
	mov	rax, qword ptr [r11 + 8]
	mov	r14, qword ptr [rax + rbx*8]
	mov	rax, qword ptr [r10]
	mov	rsi, r14
	shl	rsi, 4
	lea	rdi, [rax + rsi]
	mov	al, byte ptr [rax + rsi + 8]
	cmp	al, 9
	je	.label_1492
	cmp	al, 8
	je	.label_1486
	cmp	al, 4
	jne	.label_1485
	cmp	r8, -1
	je	.label_1485
	lea	r13, [r8 + r8*4]
	shl	r13, 3
	mov	rax, qword ptr [rsp + 0x20]
	add	r13, qword ptr [rax + 0xd8]
	mov	r12d, ecx
	mov	qword ptr [rsp + 0x48], rbx
	mov	qword ptr [rsp + 0x40], r14
	nop	dword ptr [rax]
.label_1491:
	mov	ebp, 7
	cmp	qword ptr [r13], r14
	jne	.label_244
	cmp	rdx, 0x3f
	jg	.label_1488
	movzx	eax, word ptr [r13 + 0x22]
	test	qword ptr [rsp + 0x50], rax
	je	.label_244
.label_1488:
	mov	rax, qword ptr [r10 + 0x28]
	lea	rcx, [r14 + r14*2]
	mov	rax, qword ptr [rax + rcx*8 + 0x10]
	mov	rcx, qword ptr [rax]
	mov	ebp, 1
	cmp	rcx, r15
	jne	.label_1495
	mov	ecx, dword ptr [rsp + 0x1c]
	jmp	.label_175
	nop	dword ptr [rax + rax]
.label_1495:
	mov	rdi, qword ptr [rsp + 0x20]
	mov	esi, dword ptr [rsp + 0xc]
	mov	rbx, r8
	mov	r14, r11
	call	check_dst_limits_calc_pos_1
	mov	r11, r14
	mov	r14, qword ptr [rsp + 0x40]
	mov	r10, qword ptr [rsp + 0x38]
	mov	rdx, qword ptr [rsp + 0x30]
	mov	r8, rbx
	mov	rbx, qword ptr [rsp + 0x48]
	mov	ecx, 0xffffffff
	cmp	eax, -1
	je	.label_175
	test	eax, eax
	jne	.label_239
	cmp	dword ptr [rsp + 0x10], 0
	mov	ecx, r12d
	mov	eax, 0
	cmovne	ecx, eax
	cmp	byte ptr [rsp + 0xb], 0
	mov	ebp, dword ptr [rsp + 0x14]
	je	.label_240
	jmp	.label_175
.label_239:
	xor	ebp, ebp
	cmp	rdx, 0x3f
	jg	.label_244
.label_240:
	movzx	eax, word ptr [r13 + 0x22]
	mov	rcx, qword ptr [rsp + 0x28]
	and	eax, ecx
	mov	word ptr [r13 + 0x22], ax
	xor	ebp, ebp
	nop	word ptr cs:[rax + rax]
.label_244:
	mov	ecx, r12d
.label_175:
	mov	eax, ebp
	and	al, 7
	cmp	al, 7
	je	.label_1489
	test	al, al
	jne	.label_1490
.label_1489:
	cmp	byte ptr [r13 + 0x20], 0
	lea	r13, [r13 + 0x28]
	mov	r12d, ecx
	jne	.label_1491
	jmp	.label_1485
	nop	word ptr cs:[rax + rax]
.label_1492:
	cmp	dword ptr [rsp + 0x10], 0
	je	.label_1485
	xor	eax, eax
	jmp	.label_1487
	nop	dword ptr [rax + rax]
.label_1486:
	cmp	dword ptr [rsp + 0x18], 0
	je	.label_1485
	mov	eax, 0xffffffff
.label_1487:
	cmp	qword ptr [rdi], rdx
	jne	.label_1485
	jmp	.label_1493
.label_1490:
	test	ebp, ebp
	mov	eax, ecx
	jne	.label_1493
	nop	dword ptr [rax]
.label_1485:
	inc	rbx
	cmp	rbx, qword ptr [r11]
	jl	.label_1484
.label_1494:
	mov	eax, dword ptr [rsp + 0xc]
	shr	eax, 1
	and	eax, 1
.label_1493:
	add	rsp, 0x58
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	sub	rsp, 0x38
	mov	rax, qword ptr [rip + label_267]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0, xmmword ptr [rip + label_268]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_269]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rsi, rsi
	je	.label_270
	test	rdx, rdx
	je	.label_270
	mov	qword ptr [rsp + 0x28], rsi
	mov	qword ptr [rsp + 0x30], rdx
	lea	rax, [rsp]
	mov	rdx, -1
	mov	rsi, rcx
	mov	rcx, rax
	call	quotearg_n_options
	add	rsp, 0x38
	ret	
.label_270:
	call	abort
	nop	
	mov	al, byte ptr [rdi + 0x38]
	and	al, 0xf9
	mov	r9d, eax
	or	r9b, 2
	test	rdx, rdx
	je	.label_485
	mov	eax, r9d
.label_485:
	cmove	r8, rdx
	cmove	rcx, rdx
	mov	byte ptr [rdi + 0x38], al
	mov	qword ptr [rsi], rdx
	mov	qword ptr [rsi + 0x10], r8
	mov	qword ptr [rsi + 8], rcx
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40d490

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
	je	.label_1499
	test	r12, r12
	jle	.label_1504
	xor	r12d, r12d
	jmp	.label_1497
	nop	dword ptr [rax]
.label_1502:
	cmp	rbp, -1
	je	.label_1500
	mov	rdi, qword ptr [rsp + 8]
	lea	rsi, [rsp + 0x10]
	mov	rcx, r13
	mov	r8d, r15d
	call	check_arrival_expand_ecl_sub
	jmp	.label_1498
	nop	dword ptr [rax]
.label_1497:
	mov	rax, qword ptr [r14 + 0x10]
	mov	rdx, qword ptr [rax + r12*8]
	mov	rax, qword ptr [rsp + 8]
	mov	r8, qword ptr [rax + 0x30]
	lea	r9, [rdx + rdx*2]
	mov	r10, qword ptr [r8 + r9*8 + 8]
	test	r10, r10
	jle	.label_1500
	mov	rdi, qword ptr [r8 + r9*8 + 0x10]
	mov	rax, qword ptr [rsp + 8]
	mov	rbx, qword ptr [rax]
	xor	eax, eax
	nop	
.label_1503:
	mov	rbp, qword ptr [rdi + rax*8]
	mov	rcx, rbp
	shl	rcx, 4
	movzx	esi, byte ptr [rbx + rcx + 8]
	cmp	esi, r15d
	jne	.label_1496
	cmp	qword ptr [rbx + rcx], r13
	je	.label_1502
.label_1496:
	inc	rax
	cmp	rax, r10
	jl	.label_1503
.label_1500:
	lea	rsi, [r8 + r9*8]
	lea	rdi, [rsp + 0x10]
	call	re_node_set_merge
.label_1498:
	mov	ebx, eax
	test	ebx, ebx
	jne	.label_1501
	inc	r12
	cmp	r12, qword ptr [r14 + 8]
	jl	.label_1497
.label_1504:
	mov	rdi, qword ptr [r14 + 0x10]
	call	free
	mov	rax, qword ptr [rsp + 0x20]
	mov	qword ptr [r14 + 0x10], rax
	movups	xmm0, xmmword ptr [rsp + 0x10]
	movups	xmmword ptr [r14], xmm0
	xor	ebx, ebx
.label_1499:
	mov	eax, ebx
	add	rsp, 0x28
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_1501:
	mov	rdi, qword ptr [rsp + 0x20]
	call	free
	jmp	.label_1499
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40d5c0

	.globl xalloc_die
	.type xalloc_die, @function
xalloc_die:
	push	rbx
	mov	ebx, dword ptr [rip + exit_failure]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_1019
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	esi, esi
	mov	edx, OFFSET FLAT:label_98
	xor	eax, eax
	mov	edi, ebx
	call	error
	call	abort
	.section	.text
	.align	16
	#Procedure 0x40d5f0

	.globl optimize_subexps
	.type optimize_subexps, @function
optimize_subexps:
	mov	al, byte ptr [rsi + 0x30]
	cmp	al, 0x11
	je	.label_1505
	cmp	al, 4
	jne	.label_1507
	mov	rax, qword ptr [rdi + 0xe0]
	test	rax, rax
	je	.label_1507
	movsxd	rcx, dword ptr [rsi + 0x28]
	mov	rcx, qword ptr [rax + rcx*8]
	mov	qword ptr [rsi + 0x28], rcx
	mov	eax, 1
	shl	eax, cl
	cdqe	
	or	qword ptr [rdi + 0xa0], rax
	xor	eax, eax
	ret	
.label_1505:
	mov	rax, qword ptr [rsi + 8]
	test	rax, rax
	je	.label_1507
	cmp	byte ptr [rax + 0x30], 0x11
	jne	.label_1507
	mov	rdx, qword ptr [rax + 8]
	mov	rcx, qword ptr [rax + 0x28]
	mov	qword ptr [rsi + 8], rdx
	test	rdx, rdx
	je	.label_1506
	mov	qword ptr [rdx], rsi
.label_1506:
	mov	rax, qword ptr [rsi + 0x28]
	mov	rdx, qword ptr [rdi + 0xe0]
	mov	rax, qword ptr [rdx + rax*8]
	mov	qword ptr [rdx + rcx*8], rax
	cmp	rcx, 0x3f
	jg	.label_1507
	mov	rax, -2
	rol	rax, cl
	and	qword ptr [rdi + 0xa0], rax
.label_1507:
	xor	eax, eax
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40d680

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
	jmp	.label_1508
	nop	dword ptr [rax]
.label_396:
	mov	rax, qword ptr [rax + rbp*8 + 0x10]
	mov	rbp, qword ptr [rax]
.label_1508:
	mov	rax, qword ptr [rbx + 8]
	test	rax, rax
	jle	.label_1511
	dec	rax
	mov	rcx, qword ptr [rbx + 0x10]
	mov	edx, 0
	je	.label_1514
	xor	edx, edx
	nop	word ptr cs:[rax + rax]
.label_1509:
	lea	rsi, [rdx + rax]
	shr	rsi, 1
	cmp	qword ptr [rcx + rsi*8], rbp
	lea	rdi, [rsi + 1]
	cmovl	rdx, rdi
	cmovge	rax, rsi
	cmp	rdx, rax
	jb	.label_1509
.label_1514:
	cmp	rdx, -1
	je	.label_1511
	cmp	qword ptr [rcx + rdx*8], rbp
	je	.label_1512
.label_1511:
	mov	rax, qword ptr [r12]
	mov	rcx, rbp
	shl	rcx, 4
	movzx	edx, byte ptr [rax + rcx + 8]
	cmp	edx, r15d
	jne	.label_1515
	cmp	qword ptr [rax + rcx], r14
	je	.label_1510
.label_1515:
	mov	rdi, rbx
	mov	rsi, rbp
	call	re_node_set_insert
	mov	ecx, eax
	mov	eax, 0xc
	test	cl, cl
	je	.label_395
	mov	rax, qword ptr [r12 + 0x28]
	lea	rbp, [rbp + rbp*2]
	mov	rcx, qword ptr [rax + rbp*8 + 8]
	cmp	rcx, 2
	je	.label_1513
	test	rcx, rcx
	jne	.label_396
	jmp	.label_1512
	nop	dword ptr [rax]
.label_1510:
	cmp	r15d, 9
	jne	.label_1512
	mov	rdi, rbx
	mov	rsi, rbp
	call	re_node_set_insert
	mov	ecx, eax
	mov	eax, 0xc
	test	cl, cl
	je	.label_395
.label_1512:
	xor	eax, eax
.label_395:
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	
.label_1513:
	mov	rax, qword ptr [rax + rbp*8 + 0x10]
	mov	rdx, qword ptr [rax + 8]
	mov	rdi, r12
	mov	rsi, rbx
	mov	rcx, r14
	mov	r8d, r15d
	call	check_arrival_expand_ecl_sub
	test	eax, eax
	jne	.label_395
	mov	rax, qword ptr [r12 + 0x28]
	jmp	.label_396
	.section	.text
	.align	16
	#Procedure 0x40d7a0

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
	mov	r10, qword ptr [r14 + 0x10]
	xor	ecx, ecx
	test	r10, r10
	jle	.label_1518
	mov	rcx, qword ptr [rbx + 0x98]
	mov	r11, qword ptr [r14 + 0x18]
	mov	rdi, qword ptr [rcx]
	mov	r9d, eax
	and	r9d, 1
	mov	r8d, eax
	and	r8d, 2
	and	eax, 8
	xor	ebx, ebx
	nop	word ptr [rax + rax]
.label_1516:
	mov	rcx, qword ptr [r11 + rbx*8]
	mov	rdx, rcx
	shl	rdx, 4
	mov	esi, dword ptr [rdi + rdx + 8]
	cmp	sil, 2
	jne	.label_1517
	shr	esi, 8
	test	si, 0x3ff
	je	.label_1518
	test	r9d, r9d
	jne	.label_1520
	mov	edx, esi
	and	edx, 4
	jne	.label_1517
.label_1520:
	test	r9d, r9d
	je	.label_1521
	mov	edx, esi
	and	edx, 8
	jne	.label_1517
.label_1521:
	test	r8d, r8d
	jne	.label_1519
	mov	edx, esi
	and	edx, 0x20
	jne	.label_1517
.label_1519:
	test	eax, eax
	jne	.label_1518
	test	sil, sil
	jns	.label_1518
	nop	dword ptr [rax]
.label_1517:
	inc	rbx
	cmp	rbx, r10
	mov	ecx, 0
	jl	.label_1516
.label_1518:
	mov	rax, rcx
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40d860

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
	je	.label_1530
	mov	r13, qword ptr [r12 + 8]
	test	rbx, rbx
	je	.label_1526
	test	r13, r13
	jle	.label_1526
	mov	rdi, qword ptr [rbx + 8]
	test	rdi, rdi
	jle	.label_1526
	add	rdi, r13
	mov	qword ptr [rbp], rdi
	shl	rdi, 3
	call	malloc
	mov	qword ptr [rsp], rbp
	mov	qword ptr [rbp + 0x10], rax
	test	rax, rax
	mov	ecx, 0xc
	je	.label_1528
	xor	edi, edi
	xor	esi, esi
	xor	ebp, ebp
.label_1527:
	mov	r15, rdi
	mov	r14, rsi
	nop	word ptr cs:[rax + rax]
.label_1533:
	cmp	r14, qword ptr [rbx + 8]
	jge	.label_1522
	mov	rcx, qword ptr [r12 + 0x10]
	mov	rdx, qword ptr [rcx + rbp*8]
	mov	rcx, qword ptr [rbx + 0x10]
	mov	rcx, qword ptr [rcx + r14*8]
	cmp	rdx, rcx
	jle	.label_1532
	inc	r14
	mov	qword ptr [rax + r15*8], rcx
	inc	r15
	mov	r13, qword ptr [r12 + 8]
	cmp	rbp, r13
	jl	.label_1533
	jmp	.label_1522
.label_1532:
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
	jl	.label_1527
	xor	esi, esi
	cmp	rdx, rcx
	sete	sil
	inc	r15
	add	r14, rsi
.label_1522:
	sub	r13, rbp
	jle	.label_1524
	lea	rdi, [rax + r15*8]
	mov	rax, qword ptr [r12 + 0x10]
	lea	rsi, [rax + rbp*8]
	shl	r13, 3
	mov	rdx, r13
	call	memcpy
	sub	r15, rbp
	add	r15, qword ptr [r12 + 8]
	jmp	.label_1525
.label_1526:
	test	r13, r13
	jle	.label_1530
	mov	qword ptr [rbp + 8], r13
	mov	r15, qword ptr [r12 + 8]
	test	r15, r15
	jle	.label_1523
	mov	qword ptr [rbp], r13
	shl	r13, 3
	mov	rdi, r13
	call	malloc
	mov	qword ptr [rbp + 0x10], rax
	test	rax, rax
	je	.label_1531
	mov	rsi, qword ptr [r12 + 0x10]
	shl	r15, 3
	mov	rdi, rax
	mov	rdx, r15
	call	memcpy
	jmp	.label_1529
.label_1530:
	test	rbx, rbx
	je	.label_1523
	mov	rdi, qword ptr [rbx + 8]
	test	rdi, rdi
	jle	.label_1523
	mov	qword ptr [rbp + 8], rdi
	mov	r14, rbx
	mov	rbx, qword ptr [rbx + 8]
	test	rbx, rbx
	jle	.label_1523
	mov	qword ptr [rbp], rdi
	shl	rdi, 3
	call	malloc
	mov	qword ptr [rbp + 0x10], rax
	test	rax, rax
	je	.label_1531
	mov	rsi, qword ptr [r14 + 0x10]
	shl	rbx, 3
	mov	rdi, rax
	mov	rdx, rbx
	call	memcpy
	jmp	.label_1529
.label_1523:
	xorps	xmm0, xmm0
	movups	xmmword ptr [rbp], xmm0
	mov	qword ptr [rbp + 0x10], 0
	jmp	.label_1529
.label_1524:
	mov	rdx, qword ptr [rbx + 8]
	sub	rdx, r14
	jle	.label_1525
	lea	rdi, [rax + r15*8]
	mov	rax, qword ptr [rbx + 0x10]
	lea	rsi, [rax + r14*8]
	shl	rdx, 3
	call	memcpy
	sub	r15, r14
	add	r15, qword ptr [rbx + 8]
.label_1525:
	mov	rax, qword ptr [rsp]
	mov	qword ptr [rax + 8], r15
.label_1529:
	xor	ecx, ecx
.label_1528:
	mov	eax, ecx
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_1531:
	xorps	xmm0, xmm0
	movups	xmmword ptr [rbp], xmm0
	mov	ecx, 0xc
	jmp	.label_1528
	nop	word ptr cs:[rax + rax]
.label_497:
	mov	eax, ebx
.label_505:
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40d860

	.globl fd_safer_flag
	.type fd_safer_flag, @function
fd_safer_flag:
	push	rbp
	push	r15
	push	r14
	push	rbx
	push	rax
	mov	ebx, edi
	cmp	ebx, 2
	ja	.label_497
	mov	edi, ebx
	call	dup_safer_flag
	mov	r14d, eax
	call	__errno_location
	mov	rbp, rax
	mov	r15d, dword ptr [rbp]
	mov	edi, ebx
	call	close
	mov	dword ptr [rbp], r15d
	mov	eax, r14d
	jmp	.label_505
	.section	.text
	.align	16
	#Procedure 0x40dac0

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
	je	.label_1538
	cmp	byte ptr [r13 + rbx - 1], 0x2f
	je	.label_1534
	cmp	byte ptr [r15], 0x2f
	je	.label_1534
	mov	r12b, 0x2f
	jmp	.label_1535
.label_1538:
	cmp	byte ptr [r15], 0x2f
	mov	r12b, 0x2e
	je	.label_1535
.label_1534:
	xor	r12d, r12d
.label_1535:
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
	je	.label_1537
	mov	rcx, -1
	mov	rdi, r14
	mov	rsi, r13
	mov	rdx, rbx
	call	__mempcpy_chk
	mov	byte ptr [rax], r12b
	add	rbp, rax
	mov	rax, qword ptr [rsp + 0x10]
	test	rax, rax
	je	.label_1536
	mov	qword ptr [rax], rbp
.label_1536:
	mov	rcx, -1
	mov	rdi, rbp
	mov	rsi, r15
	mov	rdx, qword ptr [rsp + 8]
	call	__mempcpy_chk
	mov	byte ptr [rax], 0
	mov	rax, r14
.label_1537:
	add	rsp, 0x18
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40dba0

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
	jle	.label_1547
	mov	qword ptr [rsp + 0x28], rax
	mov	qword ptr [rsp + 0x20], rcx
	lea	r13, [rax + rcx*8 + 8]
	xor	r14d, r14d
	nop	word ptr cs:[rax + rax]
.label_1548:
	mov	r11, qword ptr [r13 + 8]
	mov	rax, qword ptr [r11 + r14*8]
	cmp	rax, r15
	je	.label_1539
	mov	rdx, qword ptr [rdi]
	mov	rcx, rax
	shl	rcx, 4
	test	byte ptr [rdx + rcx + 8], 8
	je	.label_1539
	mov	rbp, qword ptr [rdi + 0x28]
	lea	r8, [rax + rax*2]
	mov	rax, qword ptr [rbp + r8*8 + 0x10]
	mov	rsi, qword ptr [rax]
	mov	r10, -1
	cmp	qword ptr [rbp + r8*8 + 8], 2
	jl	.label_1549
	mov	r10, qword ptr [rax + 8]
.label_1549:
	test	r9, r9
	jle	.label_1555
	mov	rax, r9
	dec	rax
	mov	ebp, 0
	je	.label_1557
	xor	ebp, ebp
	nop	dword ptr [rax]
.label_1562:
	lea	rbx, [rbp + rax]
	shr	rbx, 1
	cmp	qword ptr [r11 + rbx*8], rsi
	lea	rcx, [rbx + 1]
	cmovl	rbp, rcx
	cmovge	rax, rbx
	cmp	rbp, rax
	jb	.label_1562
.label_1557:
	cmp	rbp, -1
	je	.label_1555
	cmp	qword ptr [r11 + rbp*8], rsi
	je	.label_1541
.label_1555:
	mov	rbp, qword ptr [r12 + 8]
	test	rbp, rbp
	jle	.label_1541
	dec	rbp
	mov	rbx, qword ptr [r12 + 0x10]
	mov	eax, 0
	je	.label_1564
	xor	eax, eax
	nop	word ptr cs:[rax + rax]
.label_1550:
	lea	rcx, [rax + rbp]
	shr	rcx, 1
	cmp	qword ptr [rbx + rcx*8], rsi
	lea	rdx, [rcx + 1]
	cmovl	rax, rdx
	cmovge	rbp, rcx
	cmp	rax, rbp
	jb	.label_1550
.label_1564:
	cmp	rax, -1
	je	.label_1541
	cmp	qword ptr [rbx + rax*8], rsi
	je	.label_1559
.label_1541:
	test	r10, r10
	jle	.label_1539
	test	r9, r9
	jle	.label_1546
	mov	rax, r9
	dec	rax
	mov	esi, 0
	je	.label_1563
	xor	esi, esi
	nop	dword ptr [rax]
.label_1540:
	lea	rcx, [rsi + rax]
	shr	rcx, 1
	cmp	qword ptr [r11 + rcx*8], r10
	lea	rdx, [rcx + 1]
	cmovl	rsi, rdx
	cmovge	rax, rcx
	cmp	rsi, rax
	jb	.label_1540
.label_1563:
	cmp	rsi, -1
	je	.label_1546
	cmp	qword ptr [r11 + rsi*8], r10
	je	.label_1539
.label_1546:
	mov	rsi, qword ptr [r12 + 8]
	test	rsi, rsi
	jle	.label_1539
	dec	rsi
	mov	rbp, qword ptr [r12 + 0x10]
	mov	eax, 0
	je	.label_1551
	xor	eax, eax
	nop	word ptr [rax + rax]
.label_1558:
	lea	rcx, [rax + rsi]
	shr	rcx, 1
	cmp	qword ptr [rbp + rcx*8], r10
	lea	rdx, [rcx + 1]
	cmovl	rax, rdx
	cmovge	rsi, rcx
	cmp	rax, rsi
	jb	.label_1558
.label_1551:
	cmp	rax, -1
	je	.label_1539
	cmp	qword ptr [rbp + rax*8], r10
	jne	.label_1539
.label_1559:
	mov	rbx, rdi
	mov	rax, qword ptr [rdi + 0x38]
	lea	rdx, [rax + r8*8]
	lea	rdi, [rsp]
	mov	rsi, qword ptr [rsp + 0x30]
	call	re_node_set_add_intersect
	mov	ebp, eax
	test	ebp, ebp
	jne	.label_1544
	mov	r9, qword ptr [r13]
	mov	rdi, rbx
	nop	word ptr cs:[rax + rax]
.label_1539:
	inc	r14
	cmp	r14, r9
	jl	.label_1548
	test	r9, r9
	mov	rax, qword ptr [rsp + 0x28]
	mov	rcx, qword ptr [rsp + 0x20]
	jle	.label_1547
	mov	r9, qword ptr [rsp + 8]
	mov	rdi, qword ptr [rsp + 0x10]
	lea	r10, [r9 - 1]
	mov	r8, qword ptr [rax + rcx*8 + 0x10]
	xor	r15d, r15d
	nop	word ptr cs:[rax + rax]
.label_1552:
	test	r9, r9
	mov	rbp, qword ptr [r8 + r15*8]
	jle	.label_1542
	test	r10, r10
	mov	eax, 0
	je	.label_1565
	mov	rcx, r10
	xor	eax, eax
	nop	dword ptr [rax + rax]
.label_1543:
	lea	rdx, [rax + rcx]
	shr	rdx, 1
	cmp	qword ptr [rdi + rdx*8], rbp
	lea	rbx, [rdx + 1]
	cmovl	rax, rbx
	cmovge	rcx, rdx
	cmp	rax, rcx
	jb	.label_1543
.label_1565:
	cmp	rax, -1
	je	.label_1542
	cmp	qword ptr [rdi + rax*8], rbp
	je	.label_1545
.label_1542:
	mov	r14, qword ptr [r12 + 8]
	test	r14, r14
	jle	.label_1545
	mov	r11, r14
	dec	r11
	mov	rdx, qword ptr [r12 + 0x10]
	mov	eax, 0
	je	.label_1554
	mov	rbx, r11
	xor	eax, eax
	nop	dword ptr [rax]
.label_1553:
	lea	rcx, [rax + rbx]
	shr	rcx, 1
	cmp	qword ptr [rdx + rcx*8], rbp
	lea	rsi, [rcx + 1]
	cmovl	rax, rsi
	cmovge	rbx, rcx
	cmp	rax, rbx
	jb	.label_1553
.label_1554:
	cmp	qword ptr [rdx + rax*8], rbp
	mov	rbx, -1
	cmove	rbx, rax
	test	rbx, rbx
	js	.label_1545
	cmp	r14, rbx
	jle	.label_1545
	mov	qword ptr [r12 + 8], r11
	cmp	r11, rbx
	jle	.label_1545
	nop	
.label_1561:
	mov	rcx, qword ptr [rdx + rax*8 + 8]
	mov	qword ptr [rdx + rax*8], rcx
	inc	rax
	cmp	rax, qword ptr [r12 + 8]
	jl	.label_1561
	nop	word ptr cs:[rax + rax]
.label_1545:
	inc	r15
	cmp	r15, qword ptr [r13]
	jl	.label_1552
	jmp	.label_1556
.label_1544:
	mov	rdi, qword ptr [rsp + 0x10]
	call	free
	jmp	.label_1560
	nop	dword ptr [rax + rax]
.label_1547:
	mov	rdi, qword ptr [rsp + 0x10]
.label_1556:
	call	free
	xor	ebp, ebp
.label_1560:
	mov	eax, ebp
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
	#Procedure 0x40df00

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
	je	.label_1566
	cmp	qword ptr [r14 + 0x10], 0
	je	.label_1566
	xor	ebx, ebx
	mov	r12d, 8
	mov	ebp, 0x400ff
	jmp	.label_1574
	nop	dword ptr [rax]
.label_638:
	add	r12, 0x10
	mov	rax, qword ptr [r14]
.label_1574:
	mov	ecx, dword ptr [rax + r12]
	and	ecx, ebp
	cmp	ecx, 3
	je	.label_1579
	cmp	ecx, 6
	jne	.label_1567
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
	jmp	.label_1572
	nop	word ptr cs:[rax + rax]
.label_1579:
	mov	rdi, qword ptr [rax + r12 - 8]
.label_1572:
	call	free
.label_1567:
	inc	rbx
	cmp	rbx, qword ptr [r14 + 0x10]
	jb	.label_638
.label_1566:
	mov	rdi, qword ptr [r14 + 0x18]
	call	free
	cmp	qword ptr [r14 + 0x10], 0
	je	.label_1573
	lea	r12, [r14 + 0x30]
	lea	r15, [r14 + 0x38]
	lea	r13, [r14 + 0x28]
	xor	ebp, ebp
	mov	ebx, 0x10
	nop	word ptr cs:[rax + rax]
.label_1578:
	mov	rax, qword ptr [r12]
	test	rax, rax
	je	.label_1568
	mov	rdi, qword ptr [rax + rbx]
	call	free
.label_1568:
	mov	rax, qword ptr [r15]
	test	rax, rax
	je	.label_1571
	mov	rdi, qword ptr [rax + rbx]
	call	free
.label_1571:
	mov	rax, qword ptr [r13]
	test	rax, rax
	je	.label_1575
	mov	rdi, qword ptr [rax + rbx]
	call	free
.label_1575:
	inc	rbp
	add	rbx, 0x18
	cmp	rbp, qword ptr [r14 + 0x10]
	jb	.label_1578
	jmp	.label_1569
.label_1573:
	lea	r13, [r14 + 0x28]
	lea	r12, [r14 + 0x30]
	lea	r15, [r14 + 0x38]
.label_1569:
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
	je	.label_1576
	xor	r15d, r15d
	jmp	.label_1581
.label_1582:
	mov	rdi, qword ptr [r14 + 0x40]
.label_1581:
	lea	rax, [r15 + r15*2]
	lea	r12, [rdi + rax*8 + 0x10]
	cmp	qword ptr [rdi + rax*8], 0
	jle	.label_1580
	lea	rbx, [rdi + rax*8]
	xor	ebp, ebp
	nop	word ptr [rax + rax]
.label_1570:
	mov	rax, qword ptr [r12]
	mov	rdi, qword ptr [rax + rbp*8]
	call	free_state
	inc	rbp
	cmp	rbp, qword ptr [rbx]
	jl	.label_1570
.label_1580:
	mov	rdi, qword ptr [r12]
	call	free
	inc	r15
	cmp	r15, qword ptr [r14 + 0x88]
	jbe	.label_1582
	mov	rdi, qword ptr [r14 + 0x40]
.label_1576:
	call	free
	mov	rdi, qword ptr [r14 + 0x78]
	mov	eax, OFFSET FLAT:utf8_sb_map
	cmp	rdi, rax
	je	.label_1577
	call	free
.label_1577:
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
	.section	.text
	.align	16
	#Procedure 0x40e0d0

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
	jle	.label_1615
	mov	r14, qword ptr [rbp + 0x10]
.label_1611:
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
	jne	.label_1606
	mov	dword ptr [rsp + 0x38], eax
	movaps	xmm0, xmmword ptr [rip + label_806]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	mov	edi, 8
	call	malloc
	mov	qword ptr [rsp + 0x20], rax
	test	rax, rax
	je	.label_1610
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
	jne	.label_1596
	mov	rbp, qword ptr [rsp + 0x18]
	mov	r14, qword ptr [rsp + 0x28]
	jmp	.label_1619
.label_1606:
	mov	rdx, qword ptr [r14 + r13*8]
	test	rdx, rdx
	je	.label_1589
	mov	dword ptr [rsp + 0x38], eax
	mov	al, byte ptr [rdx + 0x68]
	test	al, 0x40
	jne	.label_1592
	xorps	xmm0, xmm0
	movaps	xmmword ptr [rsp + 0x10], xmm0
	mov	qword ptr [rsp + 0x20], 0
	xor	ebp, ebp
	mov	r14, qword ptr [rsp + 0x28]
	mov	r13, qword ptr [rsp + 0x40]
	jmp	.label_1595
.label_1589:
	xorps	xmm0, xmm0
	movaps	xmmword ptr [rsp + 0x10], xmm0
	mov	qword ptr [rsp + 0x20], 0
	xor	edx, edx
	mov	r14, qword ptr [rsp + 0x28]
	mov	r13, qword ptr [rsp + 0x40]
	mov	ebx, dword ptr [rsp + 0xd0]
	jmp	.label_1584
.label_1592:
	mov	rbp, qword ptr [rdx + 0x10]
	mov	qword ptr [rsp + 0x18], rbp
	test	rbp, rbp
	mov	r13, qword ptr [rsp + 0x40]
	jle	.label_1604
	mov	qword ptr [rsp + 0x48], rdx
	mov	qword ptr [rsp + 0x10], rbp
	lea	r15, [rbp*8]
	mov	rdi, r15
	call	malloc
	mov	qword ptr [rsp + 0x20], rax
	test	rax, rax
	mov	r14, qword ptr [rsp + 0x28]
	mov	ebx, dword ptr [rsp + 0xd0]
	je	.label_1610
	mov	r12, qword ptr [rsp + 0x48]
	mov	rsi, qword ptr [r12 + 0x18]
	mov	rdi, rax
	mov	rdx, r15
	call	memcpy
	mov	rdx, r12
	mov	al, byte ptr [rdx + 0x68]
	mov	dword ptr [rsp + 4], 0
	mov	r12, qword ptr [rsp + 0x58]
	jmp	.label_1614
.label_1604:
	xorps	xmm0, xmm0
	movaps	xmmword ptr [rsp + 0x10], xmm0
	mov	qword ptr [rsp + 0x20], 0
	xor	ebp, ebp
	mov	dword ptr [rsp + 4], 0
	mov	r14, qword ptr [rsp + 0x28]
.label_1595:
	mov	ebx, dword ptr [rsp + 0xd0]
.label_1614:
	test	al, 0x40
	je	.label_1584
.label_1619:
	test	rbp, rbp
	je	.label_1585
	lea	rsi, [rsp + 0x10]
	mov	rdi, r14
	mov	rdx, qword ptr [rsp + 8]
	mov	rcx, r13
	mov	r8d, ebx
	call	expand_bkref_cache
	mov	ebp, eax
	mov	dword ptr [rsp + 4], ebp
	test	ebp, ebp
	jne	.label_1596
.label_1585:
	lea	rdi, [rsp + 4]
	lea	rdx, [rsp + 0x10]
	mov	rsi, r12
	mov	ecx, dword ptr [rsp + 0x38]
	call	re_acquire_state_context
	mov	rdx, rax
	test	rdx, rdx
	jne	.label_1602
	mov	eax, dword ptr [rsp + 4]
	test	eax, eax
	jne	.label_1583
.label_1602:
	mov	rax, qword ptr [r14 + 0xb8]
	mov	rcx, qword ptr [rsp + 8]
	mov	qword ptr [rax + rcx*8], rdx
.label_1584:
	mov	rax, qword ptr [rsp + 8]
	cmp	rax, qword ptr [rsp + 0x50]
	jge	.label_1605
	xor	esi, esi
	nop	
.label_1590:
	movsxd	rax, dword ptr [r14 + 0xe0]
	cmp	rsi, rax
	jg	.label_1607
	mov	qword ptr [rsp + 0x38], rsi
	mov	qword ptr [rsp + 0x18], 0
	mov	rax, qword ptr [r14 + 0xb8]
	mov	rcx, qword ptr [rsp + 8]
	mov	rsi, qword ptr [rax + rcx*8 + 8]
	test	rsi, rsi
	je	.label_1609
	add	rsi, 8
	lea	rdi, [rsp + 0x10]
	mov	rbp, rdx
	call	re_node_set_merge
	mov	rdx, rbp
	mov	dword ptr [rsp + 4], eax
	test	eax, eax
	jne	.label_1583
.label_1609:
	test	rdx, rdx
	je	.label_1616
	mov	r13, qword ptr [r14 + 0x98]
	mov	dword ptr [rsp + 0x34], 0
	xorps	xmm0, xmm0
	movaps	xmmword ptr [rsp + 0x60], xmm0
	mov	qword ptr [rsp + 0x70], 0
	cmp	qword ptr [rdx + 0x28], 0
	mov	edi, 0
	jle	.label_1587
	xor	ebx, ebx
	mov	qword ptr [rsp + 0x48], rdx
	nop	word ptr cs:[rax + rax]
.label_1603:
	mov	rax, qword ptr [rdx + 0x30]
	mov	r15, qword ptr [rax + rbx*8]
	mov	rsi, qword ptr [r13]
	mov	rbp, r15
	shl	rbp, 4
	test	byte ptr [rsi + rbp + 0xa], 0x10
	je	.label_1594
	mov	rdi, r13
	mov	rsi, r15
	mov	rdx, r14
	mov	r12, qword ptr [rsp + 8]
	mov	rcx, r12
	call	check_node_accept_bytes
	cmp	eax, 2
	jl	.label_1617
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
	je	.label_1598
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
	jne	.label_1586
.label_1598:
	mov	rbp, rcx
	mov	rdi, rbp
	mov	rsi, rdx
	call	re_node_set_insert
	test	al, al
	mov	rdx, rbp
	je	.label_1600
	lea	rdi, [rsp + 0x34]
	mov	rsi, r13
	call	re_acquire_state
	mov	rdx, qword ptr [rsp + 0x28]
	mov	rcx, qword ptr [rdx + 0xb8]
	mov	qword ptr [rcx + r14*8], rax
	mov	rax, qword ptr [rdx + 0xb8]
	cmp	qword ptr [rax + r14*8], 0
	mov	r14, rdx
	jne	.label_1591
	mov	r12d, dword ptr [rsp + 0x34]
	test	r12d, r12d
	je	.label_1591
	jmp	.label_1586
	nop	
.label_1617:
	test	eax, eax
	jne	.label_1591
	mov	rsi, qword ptr [r13]
	nop	dword ptr [rax + rax]
.label_1594:
	add	rsi, rbp
	mov	rdi, r14
	mov	rdx, qword ptr [rsp + 8]
	call	check_node_accept
	test	al, al
	je	.label_1599
.label_1591:
	mov	rax, qword ptr [r13 + 0x18]
	mov	rsi, qword ptr [rax + r15*8]
	lea	rdi, [rsp + 0x10]
	call	re_node_set_insert
	test	al, al
	je	.label_1600
.label_1599:
	inc	rbx
	mov	rdx, qword ptr [rsp + 0x48]
	cmp	rbx, qword ptr [rdx + 0x28]
	jl	.label_1603
	mov	rdi, qword ptr [rsp + 0x70]
	mov	r12, qword ptr [rsp + 0x58]
.label_1587:
	call	free
	mov	dword ptr [rsp + 4], 0
	mov	r13, qword ptr [rsp + 0x40]
	mov	ebx, dword ptr [rsp + 0xd0]
.label_1616:
	mov	rax, qword ptr [rsp + 8]
	lea	rbp, [rax + 1]
	cmp	qword ptr [rsp + 0x18], 0
	lea	r15, [rsp + 0x10]
	je	.label_1608
	mov	rdi, r12
	mov	rsi, r15
	mov	rdx, r13
	mov	ecx, ebx
	call	check_arrival_expand_ecl
	mov	dword ptr [rsp + 4], eax
	test	eax, eax
	jne	.label_1583
	mov	rdi, r14
	mov	rsi, r15
	mov	rdx, rbp
	mov	rcx, r13
	mov	r8d, ebx
	call	expand_bkref_cache
	mov	dword ptr [rsp + 4], eax
	test	eax, eax
	jne	.label_1583
.label_1608:
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
	jne	.label_1618
	mov	eax, dword ptr [rsp + 4]
	test	eax, eax
	jne	.label_1583
.label_1618:
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
	jl	.label_1590
	jmp	.label_1601
.label_1605:
	mov	rbp, rax
	jmp	.label_1601
.label_1607:
	mov	rbp, qword ptr [rsp + 8]
.label_1601:
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
	je	.label_1593
	mov	rax, qword ptr [rcx + 8]
	test	rax, rax
	jle	.label_1593
	xor	ebp, ebp
	dec	rax
	mov	rcx, qword ptr [rcx + 0x10]
	mov	edx, 0
	je	.label_1612
	xor	edx, edx
.label_1613:
	lea	rsi, [rdx + rax]
	shr	rsi, 1
	cmp	qword ptr [rcx + rsi*8], rbx
	lea	rdi, [rsi + 1]
	cmovl	rdx, rdi
	cmovge	rax, rsi
	cmp	rdx, rax
	jb	.label_1613
.label_1612:
	cmp	rdx, -1
	je	.label_1593
	cmp	qword ptr [rcx + rdx*8], rbx
	je	.label_1597
.label_1593:
	mov	ebp, 1
.label_1597:
	mov	eax, ebp
	add	rsp, 0x98
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_1600:
	mov	rdi, qword ptr [rsp + 0x70]
	call	free
	mov	r12d, 0xc
	jmp	.label_1588
.label_1586:
	mov	rdi, qword ptr [rsp + 0x70]
	call	free
.label_1588:
	mov	dword ptr [rsp + 4], r12d
.label_1583:
	mov	rdi, qword ptr [rsp + 0x20]
	call	free
	mov	ebp, dword ptr [rsp + 4]
	jmp	.label_1597
.label_1615:
	mov	r13, rbp
	movabs	rdx, 0x7fffffffffffffff
	sub	rdx, r12
	mov	ebp, 0xc
	cmp	rdx, rdi
	jle	.label_1597
	mov	qword ptr [rsp + 8], rcx
	mov	rcx, qword ptr [rsp + 0x50]
	lea	r15, [rax + rcx + 1]
	lea	rcx, [r15 + r12]
	mov	rax, rcx
	shr	rax, 0x3d
	jne	.label_1597
	mov	rdi, qword ptr [r13 + 0x10]
	mov	qword ptr [rsp + 0x38], rcx
	lea	rsi, [rcx*8]
	call	realloc
	mov	r14, rax
	test	r14, r14
	je	.label_1597
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
	jmp	.label_1611
.label_1596:
	mov	rdi, qword ptr [rsp + 0x20]
	call	free
	jmp	.label_1597
.label_1610:
	xorps	xmm0, xmm0
	movaps	xmmword ptr [rsp + 0x10], xmm0
	mov	dword ptr [rsp + 4], 0xc
	mov	ebp, 0xc
	jmp	.label_1597
	nop	
	.section	.text
	.align	16
	#Procedure 0x40e7e0

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
	jle	.label_1625
	mov	qword ptr [rax + r14*8], rbx
	mov	qword ptr [r13 + 0xc0], r14
	jmp	.label_1624
.label_1625:
	mov	rcx, qword ptr [rax + r14*8]
	test	rcx, rcx
	je	.label_1626
	mov	rdx, qword ptr [rcx + 0x50]
	test	rbx, rbx
	je	.label_1627
	mov	rbx, qword ptr [rbx + 0x50]
	lea	rdi, [rsp]
	mov	rsi, rbx
	call	re_node_set_init_union
	mov	dword ptr [r15], eax
	test	eax, eax
	jne	.label_1620
	mov	rsi, qword ptr [r13 + 0x48]
	test	rbx, rbx
	sete	bpl
	jmp	.label_1622
.label_1626:
	mov	qword ptr [rax + r14*8], rbx
	jmp	.label_1624
.label_1627:
	mov	rax, qword ptr [rdx + 0x10]
	mov	qword ptr [rsp + 0x10], rax
	movups	xmm0, xmmword ptr [rdx]
	movaps	xmmword ptr [rsp], xmm0
	mov	bpl, 1
	mov	rsi, r14
.label_1622:
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
	jne	.label_1624
	mov	rdi, qword ptr [rsp + 0x10]
	call	free
.label_1624:
	test	rbx, rbx
	je	.label_1623
	mov	rax, qword ptr [r12 + 0x98]
	test	rax, rax
	je	.label_1623
	lea	r12, [rbx + 8]
	mov	rdi, r13
	mov	rsi, r12
	mov	rdx, r14
	call	check_subexp_matching_top
	mov	ecx, eax
	mov	dword ptr [r15], ecx
	xor	eax, eax
	test	ecx, ecx
	jne	.label_1621
	test	byte ptr [rbx + 0x68], 0x40
	mov	rax, rbx
	je	.label_1621
	mov	rdi, r13
	mov	rsi, r12
	call	transit_state_bkref
	mov	ecx, eax
	mov	dword ptr [r15], ecx
	xor	eax, eax
	test	ecx, ecx
	jne	.label_1621
	mov	rax, qword ptr [r13 + 0xb8]
	mov	rax, qword ptr [rax + r14*8]
	jmp	.label_1621
.label_1623:
	mov	rax, rbx
.label_1621:
	add	rsp, 0x18
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_1620:
	xor	eax, eax
	jmp	.label_1621
	nop	dword ptr [rax]
	push	r15
	push	r14
	push	rbx
	mov	r14, qword ptr [rip + slotvec]
	cmp	dword ptr [rip + nslots],  2
	jl	.label_377
	lea	r15, [r14 + 0x18]
	mov	ebx, 1
	nop	
.label_450:
	mov	rdi, qword ptr [r15]
	call	free
	inc	rbx
	movsxd	rax, dword ptr [rip + nslots]
	add	r15, 0x10
	cmp	rbx, rax
	jl	.label_450
.label_377:
	mov	rdi, qword ptr [r14 + 8]
	mov	eax, OFFSET FLAT:slot0
	cmp	rdi, rax
	je	.label_456
	call	free
	mov	qword ptr [rip + slotvec0],  0x100
	mov	qword ptr [rip + label_458], OFFSET FLAT:slot0
.label_456:
	mov	eax, OFFSET FLAT:slotvec0
	cmp	r14, rax
	je	.label_462
	mov	rdi, r14
	call	free
	mov	qword ptr [rip + slotvec], OFFSET FLAT:slotvec0
.label_462:
	mov	dword ptr [rip + nslots],  1
	pop	rbx
	pop	r14
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
.label_473:
	call	xalloc_die
	nop	dword ptr [rax + rax]
	push	rbx
	mov	rbx, rdx
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rsi
	jb	.label_473
	imul	rbx, rsi
	test	rdi, rdi
	je	.label_475
	test	rbx, rbx
	jne	.label_475
	call	free
	xor	eax, eax
	pop	rbx
	ret	
.label_475:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_480
	test	rax, rax
	je	.label_473
.label_480:
	pop	rbx
	ret	
	test	rdi, rdi
	mov	ecx, OFFSET FLAT:default_quoting_options
	cmovne	rcx, rdi
	mov	eax, dword ptr [rcx + 4]
	mov	dword ptr [rcx + 4], esi
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40ea40

	.globl tac_seekable
	.type tac_seekable, @function
tac_seekable:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x38
	mov	rcx, rdx
	mov	qword ptr [rsp + 0x20], rsi
	mov	r13d, edi
	mov	rbp, qword ptr [rip + separator]
	mov	r12b, byte ptr [rbp]
	mov	rbx, qword ptr [rip + match_length]
	xor	edx, edx
	mov	rax, rcx
	div	qword ptr [rip + read_size]
	test	rdx, rdx
	mov	r15, rbp
	je	.label_1641
	sub	rcx, rdx
	xor	edx, edx
	mov	edi, r13d
	mov	qword ptr [rsp + 0x18], rcx
	mov	rsi, rcx
	call	lseek
	test	rax, rax
	jns	.label_1659
	call	__errno_location
	mov	r14, rbx
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_1640
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	xor	edi, edi
	mov	esi, 3
	mov	rdx, qword ptr [rsp + 0x20]
	call	quotearg_n_style_colon
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, ebx
	mov	rbx, r14
	mov	rdx, rbp
	mov	rbp, r15
	call	error
	jmp	.label_1659
.label_1641:
	mov	qword ptr [rsp + 0x18], rcx
.label_1659:
	mov	rsi, qword ptr [rip + G_buffer]
	mov	rdx, qword ptr [rip + read_size]
	mov	edi, r13d
	call	safe_read
	mov	r14, rax
	cmp	qword ptr [rsp + 0x18], 0
	mov	qword ptr [rsp + 0x10], rbx
	je	.label_1631
.label_1656:
	test	r14, r14
	jne	.label_1631
	mov	rsi, qword ptr [rip + read_size]
	neg	rsi
	mov	edx, 1
	mov	edi, r13d
	call	lseek
	test	rax, rax
	jns	.label_1636
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_1640
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	xor	edi, edi
	mov	esi, 3
	mov	rdx, qword ptr [rsp + 0x20]
	call	quotearg_n_style_colon
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, rbp
	mov	rbp, r15
	call	error
.label_1636:
	mov	rbx, qword ptr [rip + read_size]
	mov	rsi, qword ptr [rip + G_buffer]
	mov	edi, r13d
	mov	rdx, rbx
	call	safe_read
	mov	r14, rax
	sub	qword ptr [rsp + 0x18], rbx
	jne	.label_1656
.label_1631:
	cmp	r14, qword ptr [rip + read_size]
	mov	dword ptr [rsp + 8], r13d
	jne	.label_1660
	mov	rbx, qword ptr [rsp + 0x10]
	nop	
.label_1668:
	mov	rsi, qword ptr [rip + G_buffer]
	mov	edi, dword ptr [rsp + 8]
	mov	rdx, r14
	call	safe_read
	mov	r13, rax
	cmp	r13, -1
	je	.label_1658
	test	r13, r13
	je	.label_1667
	add	qword ptr [rsp + 0x18], r13
	cmp	r13, qword ptr [rip + read_size]
	mov	r14, r13
	je	.label_1668
	jmp	.label_1649
.label_1660:
	mov	rbx, qword ptr [rsp + 0x10]
.label_1667:
	cmp	r14, -1
	mov	r13, r14
	je	.label_1658
.label_1649:
	inc	rbp
	add	r13, qword ptr [rip + G_buffer]
	mov	rax, qword ptr [rip + sentinel_length]
	mov	r14d, 1
	sub	r14, rbx
	dec	rbx
	add	r14, r13
	test	rax, rax
	cmove	r14, r13
	mov	cl, 1
	mov	dword ptr [rsp + 0xc], ecx
	mov	qword ptr [rsp + 0x28], rbp
	mov	qword ptr [rsp + 0x10], rbx
	jmp	.label_1629
	nop	word ptr cs:[rax + rax]
.label_1638:
	add	r13, r14
	test	r15, r15
	cmove	r14, r13
	mov	rax, qword ptr [rip + sentinel_length]
	mov	rbp, qword ptr [rsp + 0x28]
	mov	rbx, qword ptr [rsp + 0x10]
.label_1629:
	mov	rcx, rax
.label_1672:
	test	rcx, rcx
	je	.label_1647
	nop	word ptr cs:[rax + rax]
.label_1655:
	dec	r14
	cmp	byte ptr [r14], r12b
	jne	.label_1655
	test	rbx, rbx
	je	.label_1651
	lea	rdi, [r14 + 1]
	mov	rsi, rbp
	mov	rdx, rbx
	call	strncmp
	test	eax, eax
	jne	.label_1655
.label_1651:
	mov	r15, qword ptr [rip + G_buffer]
	jmp	.label_1657
	nop	dword ptr [rax]
.label_1647:
	mov	r15, qword ptr [rip + G_buffer]
	mov	rax, r14
	sub	rax, r15
	sub	r14, r15
	js	.label_1662
	test	r14, r14
	je	.label_1633
	mov	r8d, 1
	sub	r8, rax
	mov	rcx, r14
	dec	rcx
	mov	edi, OFFSET FLAT:compiled_separator
	mov	r9d, OFFSET FLAT:regs
	mov	rsi, r15
	mov	rdx, r14
	call	rpl_re_search
	cmp	rax, -1
	je	.label_1669
	cmp	rax, -2
	je	.label_1671
	mov	r15, qword ptr [rip + G_buffer]
	mov	rax, qword ptr [rip + label_1673]
	mov	rax, qword ptr [rax]
	lea	r14, [r15 + rax]
	mov	rcx, qword ptr [rip + label_1674]
	mov	rcx, qword ptr [rcx]
	sub	rcx, rax
	mov	qword ptr [rip + match_length],  rcx
.label_1657:
	cmp	r14, r15
	jb	.label_1633
	cmp	byte ptr [rip + separator_ends_record],  1
	jne	.label_1635
	mov	rcx, qword ptr [rip + match_length]
	add	rcx, r14
	mov	eax, dword ptr [rsp + 0xc]
	test	al, 1
	je	.label_1637
	cmp	rcx, r13
	jne	.label_1637
	mov	dword ptr [rsp + 0xc], 0
	jmp	.label_1643
	nop	
.label_1635:
	mov	r15, qword ptr [rip + output.bytes_in_buffer]
	test	r14, r14
	je	.label_1648
	sub	r13, r14
	mov	ebx, 0x2000
	sub	rbx, r15
	cmp	r13, rbx
	lea	rdi, qword ptr [r15 + output.buffer]
	mov	rbp, r14
	jb	.label_1650
	nop	word ptr [rax + rax]
.label_1664:
	mov	rsi, rbp
	mov	rdx, rbx
	call	memcpy
	sub	r13, rbx
	add	rbp, rbx
	mov	rcx, qword ptr [rip + stdout]
	mov	edi, OFFSET FLAT:output.buffer
	mov	esi, 1
	mov	edx, 0x2000
	call	fwrite_unlocked
	mov	qword ptr [rip + output.bytes_in_buffer],  0
	cmp	r13, 0x1fff
	mov	edi, OFFSET FLAT:output.buffer
	mov	ebx, 0x2000
	mov	r15d, 0
	ja	.label_1664
.label_1650:
	mov	rsi, rbp
	mov	rdx, r13
	call	memcpy
	add	r15, r13
	mov	rbp, qword ptr [rsp + 0x28]
	mov	rbx, qword ptr [rsp + 0x10]
	jmp	.label_1676
.label_1637:
	mov	r15, qword ptr [rip + output.bytes_in_buffer]
	test	rcx, rcx
	mov	qword ptr [rsp + 0x30], rcx
	je	.label_1675
	sub	r13, rcx
	mov	ebx, 0x2000
	sub	rbx, r15
	cmp	r13, rbx
	lea	rdi, qword ptr [r15 + output.buffer]
	mov	rbp, rcx
	jb	.label_1632
	nop	dword ptr [rax]
.label_1646:
	mov	rsi, rbp
	mov	rdx, rbx
	call	memcpy
	sub	r13, rbx
	add	rbp, rbx
	mov	rcx, qword ptr [rip + stdout]
	mov	edi, OFFSET FLAT:output.buffer
	mov	esi, 1
	mov	edx, 0x2000
	call	fwrite_unlocked
	mov	qword ptr [rip + output.bytes_in_buffer],  0
	cmp	r13, 0x1fff
	mov	edi, OFFSET FLAT:output.buffer
	mov	ebx, 0x2000
	mov	r15d, 0
	ja	.label_1646
.label_1632:
	mov	rsi, rbp
	mov	rdx, r13
	call	memcpy
	add	r15, r13
	mov	rbp, qword ptr [rsp + 0x28]
	mov	rbx, qword ptr [rsp + 0x10]
	jmp	.label_1654
.label_1648:
	mov	rcx, qword ptr [rip + stdout]
	mov	edi, OFFSET FLAT:output.buffer
	mov	esi, 1
	mov	rdx, r15
	call	fwrite_unlocked
	xor	r15d, r15d
.label_1676:
	mov	qword ptr [rip + output.bytes_in_buffer],  r15
	mov	r13, r14
	jmp	.label_1643
.label_1675:
	mov	rcx, qword ptr [rip + stdout]
	mov	edi, OFFSET FLAT:output.buffer
	mov	esi, 1
	mov	rdx, r15
	call	fwrite_unlocked
	xor	r15d, r15d
.label_1654:
	mov	qword ptr [rip + output.bytes_in_buffer],  r15
	mov	dword ptr [rsp + 0xc], 0
	mov	r13, qword ptr [rsp + 0x30]
.label_1643:
	mov	rax, qword ptr [rip + sentinel_length]
	test	rax, rax
	mov	ecx, 0
	je	.label_1672
	mov	rcx, qword ptr [rip + match_length]
	mov	edx, 1
	sub	rdx, rcx
	add	r14, rdx
	jmp	.label_1629
	nop	
.label_1669:
	mov	r15, qword ptr [rip + G_buffer]
.label_1633:
	sub	r13, r15
	mov	rbp, qword ptr [rsp + 0x18]
	test	rbp, rbp
	je	.label_1634
	mov	rax, qword ptr [rip + read_size]
	cmp	r13, rax
	jbe	.label_1639
	mov	rcx, qword ptr [rip + sentinel_length]
	test	rcx, rcx
	mov	ebx, 1
	cmovne	rbx, rcx
	mov	rdx, qword ptr [rip + G_buffer_size]
	lea	rsi, [rax + rax]
	mov	qword ptr [rip + read_size],  rsi
	lea	rsi, [rcx + rax*4 + 2]
	mov	qword ptr [rip + G_buffer_size],  rsi
	cmp	rsi, rdx
	jb	.label_1642
	sub	r15, rbx
	mov	rdi, r15
	call	xrealloc
	add	rax, rbx
	mov	qword ptr [rip + G_buffer],  rax
	mov	rax, qword ptr [rip + read_size]
.label_1639:
	mov	rcx, rbp
	sub	rcx, rax
	jae	.label_1628
	mov	qword ptr [rip + read_size],  rbp
	xor	ecx, ecx
.label_1628:
	xor	edx, edx
	mov	edi, dword ptr [rsp + 8]
	mov	qword ptr [rsp + 0x18], rcx
	mov	rsi, rcx
	call	lseek
	test	rax, rax
	jns	.label_1665
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_1640
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	xor	edi, edi
	mov	esi, 3
	mov	rdx, qword ptr [rsp + 0x20]
	call	quotearg_n_style_colon
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, rbp
	call	error
.label_1665:
	mov	rbx, qword ptr [rip + G_buffer]
	mov	rbp, qword ptr [rip + read_size]
	lea	r14, [rbx + rbp]
	mov	rdi, r14
	mov	rsi, rbx
	mov	rdx, r13
	call	memmove
	mov	r15, qword ptr [rip + sentinel_length]
	mov	edi, dword ptr [rsp + 8]
	mov	rsi, rbx
	mov	rdx, rbp
	call	safe_read
	cmp	rax, qword ptr [rip + read_size]
	je	.label_1638
.label_1658:
	call	__errno_location
	mov	r14d, dword ptr [rax]
	xor	ebx, ebx
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_992
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	xor	edi, edi
	mov	esi, 3
	mov	rdx, qword ptr [rsp + 0x20]
	call	quotearg_n_style_colon
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, r14d
	mov	rdx, rbp
	call	error
	jmp	.label_1652
.label_1634:
	mov	rbp, qword ptr [rip + output.bytes_in_buffer]
	mov	ebx, 0x2000
	test	r15, r15
	je	.label_1653
	sub	rbx, rbp
	cmp	r13, rbx
	lea	rdi, qword ptr [rbp + output.buffer]
	jae	.label_1661
	mov	r14, rdi
	jmp	.label_1663
.label_1653:
	mov	rcx, qword ptr [rip + stdout]
	mov	edi, OFFSET FLAT:output.buffer
	mov	esi, 1
	mov	rdx, rbp
	call	fwrite_unlocked
	xor	ebp, ebp
	jmp	.label_1666
.label_1661:
	mov	r14d, OFFSET FLAT:output.buffer
	xor	ebp, ebp
	nop	word ptr cs:[rax + rax]
.label_1630:
	mov	rsi, r15
	mov	rdx, rbx
	call	memcpy
	sub	r13, rbx
	add	r15, rbx
	mov	rcx, qword ptr [rip + stdout]
	mov	edi, OFFSET FLAT:output.buffer
	mov	esi, 1
	mov	edx, 0x2000
	call	fwrite_unlocked
	mov	qword ptr [rip + output.bytes_in_buffer],  0
	cmp	r13, 0x1fff
	mov	edi, OFFSET FLAT:output.buffer
	mov	ebx, 0x2000
	ja	.label_1630
.label_1663:
	mov	rdi, r14
	mov	rsi, r15
	mov	rdx, r13
	call	memcpy
	add	rbp, r13
.label_1666:
	mov	qword ptr [rip + output.bytes_in_buffer],  rbp
	mov	bl, 1
.label_1652:
	mov	eax, ebx
	add	rsp, 0x38
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_1662:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_1644
	jmp	.label_1645
.label_1671:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_1670
.label_1645:
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	call	error
.label_1642:
	call	xalloc_die
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40f190

	.globl usage
	.type usage, @function
usage:
	push	rbp
	push	rbx
	push	rax
	mov	ebp, edi
	test	ebp, ebp
	jne	.label_1679
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_1683
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	rdx, qword ptr [rip + program_name]
	mov	edi, 1
	xor	eax, eax
	mov	rsi, rcx
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_1678
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_1685
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_1686
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_1687
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_1688
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_1681
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_1689
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_975
	mov	ecx, OFFSET FLAT:label_976
	xor	eax, eax
	call	__printf_chk
	mov	edi, 5
	xor	esi, esi
	call	setlocale
	test	rax, rax
	je	.label_1692
	mov	esi, OFFSET FLAT:label_1677
	mov	edx, 3
	mov	rdi, rax
	call	strncmp
	test	eax, eax
	je	.label_1692
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_1682
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
.label_1692:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_1690
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_976
	mov	ecx, OFFSET FLAT:label_1009
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_1684
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_1009
	mov	ecx, OFFSET FLAT:label_1691
	xor	eax, eax
	call	__printf_chk
	mov	edi, ebp
	call	exit
.label_1679:
	mov	rbx, qword ptr [rip + stderr]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_1680
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
	nop	dword ptr [rax + rax]
	mov	rax, rdi
	xor	edi, edi
	mov	rdx, -1
	mov	ecx, OFFSET FLAT:default_quoting_options
	mov	rsi, rax
	jmp	quotearg_n_options
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x40f3b0

	.globl parse_branch
	.type parse_branch, @function
parse_branch:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x28
	mov	rbx, r9
	mov	r15, r8
	mov	r13, rdx
	mov	rax, qword ptr [rsi]
	mov	qword ptr [rsp + 8], rax
	mov	qword ptr [rsp + 0x10], rdi
	mov	qword ptr [rsp + 0x18], rsi
	mov	qword ptr [rsp + 0x20], rcx
	call	parse_expression
	mov	rbp, rbx
	mov	rbx, rax
	xor	r12d, r12d
	test	rbx, rbx
	jne	.label_1715
	mov	eax, dword ptr [rbp]
	test	eax, eax
	je	.label_1715
	jmp	.label_1695
	nop	dword ptr [rax]
.label_1713:
	test	rbx, rbx
	cmove	rbx, r12
.label_1715:
	movzx	eax, byte ptr [r13 + 8]
	mov	ecx, eax
	or	cl, 8
	cmp	cl, 0xa
	je	.label_1694
	test	r15, r15
	je	.label_1700
	cmp	eax, 9
	je	.label_1694
.label_1700:
	mov	rdi, qword ptr [rsp + 0x10]
	mov	rsi, qword ptr [rsp + 0x18]
	mov	rdx, r13
	mov	rcx, qword ptr [rsp + 0x20]
	mov	r8, r15
	mov	r14, rbp
	mov	r9, r14
	call	parse_expression
	mov	r12, rax
	test	r12, r12
	jne	.label_1707
	mov	eax, dword ptr [rbp]
	test	eax, eax
	jne	.label_1710
.label_1707:
	test	rbx, rbx
	je	.label_1713
	test	r12, r12
	je	.label_1713
	mov	rax, qword ptr [rsp + 8]
	mov	ecx, dword ptr [rax + 0x80]
	cmp	ecx, 0xf
	je	.label_1717
	mov	rsi, rax
	mov	rax, qword ptr [rsi + 0x70]
.label_1714:
	lea	edx, [rcx + 1]
	mov	dword ptr [rsi + 0x80], edx
	movsxd	rcx, ecx
	shl	rcx, 6
	lea	rdx, [rax + rcx + 8]
	mov	qword ptr [rax + rcx + 8], 0
	mov	qword ptr [rax + rcx + 0x10], rbx
	mov	qword ptr [rax + rcx + 0x18], r12
	mov	dword ptr [rax + rcx + 0x38], 0x10
	xorps	xmm0, xmm0
	movups	xmmword ptr [rax + rcx + 0x20], xmm0
	mov	qword ptr [rax + rcx + 0x40], -1
	mov	qword ptr [rbx], rdx
	mov	qword ptr [r12], rdx
	mov	rbx, rdx
	jmp	.label_1715
.label_1717:
	mov	edi, 0x3c8
	call	malloc
	test	rax, rax
	je	.label_1712
	mov	rsi, qword ptr [rsp + 8]
	mov	rcx, qword ptr [rsi + 0x70]
	mov	qword ptr [rax], rcx
	mov	qword ptr [rsi + 0x70], rax
	mov	dword ptr [rsi + 0x80], 0
	xor	ecx, ecx
	mov	rbp, r14
	jmp	.label_1714
.label_1694:
	mov	r12, rbx
.label_1695:
	mov	rax, r12
	add	rsp, 0x28
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_1710:
	xor	r12d, r12d
	test	rbx, rbx
	je	.label_1695
	mov	r14d, 0x400ff
	xor	r12d, r12d
	nop	dword ptr [rax]
.label_1702:
	mov	rbp, rbx
	mov	rbx, qword ptr [rbp + 8]
	test	rbx, rbx
	jne	.label_1702
	mov	rbx, qword ptr [rbp + 0x10]
	test	rbx, rbx
	jne	.label_1702
.label_1699:
	mov	eax, dword ptr [rbp + 0x30]
	and	eax, r14d
	cmp	eax, 3
	je	.label_1706
	cmp	eax, 6
	jne	.label_1696
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
	jmp	.label_1718
.label_1706:
	mov	rdi, qword ptr [rbp + 0x28]
.label_1718:
	call	free
.label_1696:
	mov	rax, qword ptr [rbp]
	test	rax, rax
	je	.label_1695
	mov	rbx, qword ptr [rax + 0x10]
	cmp	rbx, rbp
	mov	rbp, rax
	je	.label_1699
	test	rbx, rbx
	mov	rbp, rax
	je	.label_1699
	jmp	.label_1702
.label_1712:
	mov	ebp, 0x400ff
	mov	rcx, r14
.label_1703:
	mov	r13, r12
	mov	r12, qword ptr [r13 + 8]
	test	r12, r12
	jne	.label_1703
	mov	r12, qword ptr [r13 + 0x10]
	test	r12, r12
	jne	.label_1703
.label_1701:
	mov	eax, dword ptr [r13 + 0x30]
	and	eax, ebp
	cmp	eax, 3
	je	.label_1708
	cmp	eax, 6
	jne	.label_1719
	mov	r15, qword ptr [r13 + 0x28]
	mov	rdi, qword ptr [r15]
	call	free
	mov	rdi, qword ptr [r15 + 8]
	call	free
	mov	rdi, qword ptr [r15 + 0x10]
	call	free
	mov	rdi, qword ptr [r15 + 0x18]
	call	free
	mov	rdi, r15
	jmp	.label_1711
.label_1708:
	mov	rdi, qword ptr [r13 + 0x28]
.label_1711:
	call	free
	mov	rcx, r14
.label_1719:
	mov	rax, qword ptr [r13]
	test	rax, rax
	je	.label_1697
	mov	r12, qword ptr [rax + 0x10]
	cmp	r12, r13
	mov	r13, rax
	je	.label_1701
	test	r12, r12
	mov	r13, rax
	je	.label_1701
	jmp	.label_1703
.label_1697:
	mov	ebp, 0x400ff
.label_1704:
	mov	r15, rbx
	mov	rbx, qword ptr [r15 + 8]
	test	rbx, rbx
	jne	.label_1704
	mov	rbx, qword ptr [r15 + 0x10]
	test	rbx, rbx
	jne	.label_1704
.label_1716:
	mov	eax, dword ptr [r15 + 0x30]
	and	eax, ebp
	cmp	eax, 3
	je	.label_1709
	cmp	eax, 6
	jne	.label_1705
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
	jmp	.label_1693
.label_1709:
	mov	rdi, qword ptr [r15 + 0x28]
.label_1693:
	call	free
	mov	rcx, r14
.label_1705:
	mov	rax, qword ptr [r15]
	test	rax, rax
	je	.label_1698
	mov	rbx, qword ptr [rax + 0x10]
	cmp	rbx, r15
	mov	r15, rax
	je	.label_1716
	test	rbx, rbx
	mov	r15, rax
	je	.label_1716
	jmp	.label_1704
.label_1698:
	mov	dword ptr [rcx], 0xc
	xor	r12d, r12d
	jmp	.label_1695
	nop	
	.section	.text
	.align	16
	#Procedure 0x40f6c0

	.globl last_component
	.type last_component, @function
last_component:
	dec	rdi
	nop	word ptr cs:[rax + rax]
.label_1720:
	movzx	edx, byte ptr [rdi + 1]
	inc	rdi
	cmp	dl, 0x2f
	je	.label_1720
	xor	esi, esi
	mov	rax, rdi
	jmp	.label_1724
	nop	word ptr cs:[rax + rax]
.label_1723:
	movzx	edx, byte ptr [rax + 1]
	inc	rax
	mov	sil, cl
.label_1724:
	mov	cl, 1
	cmp	dl, 0x2f
	je	.label_1723
	test	dl, dl
	je	.label_1722
	mov	ecx, esi
	and	cl, 1
	je	.label_1721
	xor	esi, esi
.label_1721:
	test	cl, cl
	cmovne	rdi, rax
	mov	ecx, esi
	jmp	.label_1723
.label_1722:
	mov	rax, rdi
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x40f720

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
	je	.label_1733
	mov	rcx, qword ptr [r14 + 8]
	test	rcx, rcx
	je	.label_1735
	cmp	rsi, rcx
	jne	.label_1737
	lea	rax, [rsi + rsi]
	mov	qword ptr [r14], rax
	mov	rdi, qword ptr [r14 + 0x10]
	shl	rsi, 4
	call	realloc
	test	rax, rax
	je	.label_1728
	mov	qword ptr [r14 + 0x10], rax
	mov	rcx, qword ptr [r14 + 8]
	jmp	.label_1731
.label_1733:
	movaps	xmm0, xmmword ptr [rip + label_806]
	movups	xmmword ptr [r14], xmm0
	mov	edi, 8
	call	malloc
	mov	qword ptr [r14 + 0x10], rax
	test	rax, rax
	je	.label_1738
	mov	qword ptr [rax], rbx
	jmp	.label_1732
.label_1735:
	mov	rax, qword ptr [r14 + 0x10]
	mov	qword ptr [rax], rbx
	jmp	.label_1727
.label_1737:
	mov	rax, qword ptr [r14 + 0x10]
.label_1731:
	cmp	qword ptr [rax], rbx
	jle	.label_1729
	test	rcx, rcx
	jle	.label_1725
	nop	word ptr cs:[rax + rax]
.label_1734:
	mov	rdx, qword ptr [rax + rcx*8 - 8]
	mov	qword ptr [rax + rcx*8], rdx
	cmp	rcx, 1
	lea	rcx, [rcx - 1]
	jg	.label_1734
	jmp	.label_1725
.label_1729:
	mov	rdx, qword ptr [rax + rcx*8 - 8]
	jmp	.label_1726
	nop	dword ptr [rax]
.label_1730:
	mov	qword ptr [rax + rcx*8], rdx
	mov	rdx, qword ptr [rax + rcx*8 - 0x10]
	dec	rcx
.label_1726:
	cmp	rdx, rbx
	jg	.label_1730
.label_1725:
	mov	qword ptr [rax + rcx*8], rbx
.label_1727:
	inc	qword ptr [r14 + 8]
.label_1732:
	mov	al, 1
.label_1736:
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
.label_1738:
	xorps	xmm0, xmm0
	movups	xmmword ptr [r14], xmm0
.label_1728:
	xor	eax, eax
	jmp	.label_1736
	nop	
	mov	rdx, -1
	mov	ecx, OFFSET FLAT:quote_quoting_options
	jmp	quotearg_n_options
	nop	word ptr cs:[rax + rax]
.label_1739:
	mov	rdi, rbx
	pop	rbx
	pop	r14
	pop	rbp
	jmp	fclose
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40f838

	.globl rpl_fclose
	.type rpl_fclose, @function
rpl_fclose:
	push	rbp
	push	r14
	push	rbx
	mov	rbx, rdi
	call	fileno
	test	eax, eax
	js	.label_1739
	mov	rdi, rbx
	call	__freading
	test	eax, eax
	je	.label_1740
	mov	rdi, rbx
	call	fileno
	xor	esi, esi
	mov	edx, 1
	mov	edi, eax
	call	lseek
	cmp	rax, -1
	je	.label_1739
.label_1740:
	mov	rdi, rbx
	call	rpl_fflush
	test	eax, eax
	je	.label_1739
	call	__errno_location
	mov	r14, rax
	mov	ebp, dword ptr [r14]
	mov	rdi, rbx
	call	fclose
	test	ebp, ebp
	je	.label_1741
	mov	dword ptr [r14], ebp
	mov	eax, 0xffffffff
.label_1741:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40f8a0

	.globl re_search_internal
	.type re_search_internal, @function
re_search_internal:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x218
	mov	r14, r9
	mov	rbp, rcx
	mov	r9, qword ptr [rsp + 0x250]
	mov	r11, qword ptr [rdi]
	xorps	xmm0, xmm0
	movaps	xmmword ptr [rsp + 0x170], xmm0
	movaps	xmmword ptr [rsp + 0x160], xmm0
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
	mov	qword ptr [rsp + 0x118], r11
	mov	rax, qword ptr [rdi + 0x20]
	xor	r13d, r13d
	test	rax, rax
	je	.label_1748
	mov	cl, byte ptr [rdi + 0x38]
	and	cl, 9
	xor	ebx, ebx
	cmp	cl, 8
	cmovne	rax, rbx
	cmp	rbp, r8
	cmove	rax, rbx
	mov	r13, rax
.label_1748:
	mov	rax, qword ptr [rdi + 0x30]
	lea	r15, [r9 - 1]
	mov	rcx, r15
	sub	rcx, rax
	xor	r12d, r12d
	cmp	rax, r9
	cmovb	r12, rcx
	mov	ebx, 1
	cmp	qword ptr [rdi + 0x10], 0
	je	.label_607
	mov	rax, qword ptr [r11 + 0x48]
	test	rax, rax
	je	.label_607
	mov	rcx, qword ptr [r11 + 0x50]
	test	rcx, rcx
	je	.label_607
	mov	r10, qword ptr [r11 + 0x58]
	test	r10, r10
	je	.label_607
	mov	qword ptr [rsp + 0x50], rsi
	mov	rsi, r14
	cmp	qword ptr [r11 + 0x60], 0
	je	.label_607
	mov	r14, qword ptr [rdi + 0x28]
	mov	qword ptr [rsp + 0x58], r14
	cmp	qword ptr [rax + 0x10], 0
	je	.label_1753
	mov	rax, r8
	mov	r14, rsi
	jmp	.label_1747
.label_1753:
	cmp	qword ptr [rcx + 0x10], 0
	mov	r14, rsi
	jne	.label_1745
	cmp	qword ptr [r10 + 0x10], 0
	je	.label_1757
	cmp	byte ptr [rdi + 0x38], 0
	js	.label_1745
.label_1757:
	xor	eax, eax
	test	rbp, rbp
	je	.label_1743
	test	r8, r8
	mov	ebp, 0
	jne	.label_607
	jmp	.label_1747
.label_1745:
	mov	rax, r8
.label_1747:
	mov	qword ptr [rsp + 0x18], rax
	mov	qword ptr [rsp + 0x40], r13
	mov	qword ptr [rsp + 0x1e8], r15
	mov	qword ptr [rsp + 0x1e0], r12
	sub	r9, r12
	mov	qword ptr [rsp + 0x38], r9
	mov	byte ptr [rsp + 7], 1
	jne	.label_1749
	cmp	qword ptr [r11 + 0x98], 0
	setne	byte ptr [rsp + 7]
.label_1749:
	mov	r15, qword ptr [r11 + 0x10]
	inc	r15
	mov	qword ptr [rsp + 0x48], rdi
	mov	rcx, qword ptr [rdi + 0x18]
	movsxd	rax, dword ptr [r11 + 0xb4]
	cmp	rax, r15
	cmovge	r15, rax
	mov	rbx, rdx
	lea	rdi, [rbx + 1]
	cmp	rdi, r15
	cmovle	r15, rdi
	mov	rdx, qword ptr [rsp + 0x50]
	mov	qword ptr [rsp + 0x80], rdx
	mov	qword ptr [rsp + 0xd8], rbx
	mov	qword ptr [rsp + 0xd0], rbx
	mov	rsi, qword ptr [rsp + 0x58]
	mov	qword ptr [rsp + 0xf8], rsi
	shr	rcx, 0x16
	and	cl, 1
	mov	byte ptr [rsp + 0x108], cl
	test	rsi, rsi
	mov	rsi, rbx
	setne	r12b
	or	r12b, cl
	mov	byte ptr [rsp + 0x10b], r12b
	mov	dword ptr [rsp + 0x110], eax
	mov	cl, byte ptr [r11 + 0xb0]
	mov	edx, ecx
	shr	dl, 2
	and	dl, 1
	shr	cl, 3
	and	cl, 1
	cmp	rax, 2
	mov	byte ptr [rsp + 0x109], dl
	mov	byte ptr [rsp + 0x10a], cl
	mov	qword ptr [rsp + 0xe8], rsi
	mov	qword ptr [rsp + 0x78], rsi
	mov	qword ptr [rsp + 0xe0], rsi
	mov	qword ptr [rsp + 0x20], r11
	jl	.label_1754
	movabs	rax, 0x1ffffffffffffffe
	inc	rax
	mov	ebx, 0xc
	cmp	r15, rax
	ja	.label_106
	lea	rsi, [r15*4]
	xor	edi, edi
	call	realloc
	test	rax, rax
	je	.label_106
	mov	qword ptr [rsp + 0x90], rax
	mov	r11, qword ptr [rsp + 0x20]
.label_1754:
	test	r12b, r12b
	je	.label_1755
	xor	edi, edi
	mov	rsi, r15
	call	realloc
	mov	ebx, 0xc
	test	rax, rax
	je	.label_106
	mov	qword ptr [rsp + 0x88], rax
	mov	r11, qword ptr [rsp + 0x20]
.label_1755:
	mov	edx, dword ptr [rsp + 0x260]
	mov	qword ptr [rsp + 0xc0], r15
	lea	rax, [r11 + 0xb8]
	mov	qword ptr [rsp + 0x100], rax
	mov	rax, qword ptr [r11 + 0xb0]
	mov	ecx, eax
	shr	cl, 4
	and	cl, 1
	mov	byte ptr [rsp + 0x10e], cl
	xor	ecx, ecx
	test	r12b, r12b
	jne	.label_1744
	shr	rax, 0x20
	mov	rcx, qword ptr [rsp + 0x50]
	mov	qword ptr [rsp + 0x88], rcx
	xor	ecx, ecx
	cmp	eax, 1
	cmovle	rcx, qword ptr [rsp + 0x78]
.label_1744:
	mov	qword ptr [rsp + 0xb0], rcx
	mov	qword ptr [rsp + 0xb8], rcx
	mov	qword ptr [rsp + 0xe8], r14
	mov	qword ptr [rsp + 0xe0], r14
	mov	rax, qword ptr [rsp + 0x48]
	mov	al, byte ptr [rax + 0x38]
	shr	al, 7
	mov	byte ptr [rsp + 0x10d], al
	mov	r14, qword ptr [r11 + 0x98]
	lea	r13, [r14 + r14]
	mov	dword ptr [rsp + 0x120], edx
	mov	qword ptr [rsp + 0x128], -1
	test	r14, r14
	jle	.label_1756
	mov	ebx, 0xc
	movabs	rax, 0x666666666666666
	cmp	r13, rax
	ja	.label_106
	shl	r14, 4
	lea	rdi, [r14 + r14*4]
	call	malloc
	mov	r12, rax
	mov	qword ptr [rsp + 0x158], r12
	mov	rdi, r14
	call	malloc
	mov	qword ptr [rsp + 0x178], rax
	test	r12, r12
	je	.label_106
	test	rax, rax
	je	.label_106
.label_1756:
	mov	qword ptr [rsp + 0x150], r13
	mov	dword ptr [rsp + 0x160], 1
	mov	qword ptr [rsp + 0x170], r13
	cmp	qword ptr [rsp + 0x38], 1
	mov	rax, qword ptr [rsp + 0x20]
	ja	.label_1742
	mov	rdi, qword ptr [rax + 0xb0]
	test	dil, 2
	jne	.label_1742
	shr	rdi, 0x20
	mov	qword ptr [rsp + 0x138], 0
	jmp	.label_1750
.label_1742:
	mov	ebx, 0xc
	movabs	rax, 0x1ffffffffffffffe
	cmp	r15, rax
	ja	.label_106
	lea	rdi, [r15*8 + 8]
	call	malloc
	mov	qword ptr [rsp + 0x138], rax
	test	rax, rax
	je	.label_106
	mov	rax, qword ptr [rsp + 0x20]
	mov	edi, dword ptr [rax + 0xb4]
.label_1750:
	mov	eax, dword ptr [rsp + 0x260]
	mov	qword ptr [rsp + 0x28], rbp
	lea	eax, [rax + rax]
	and	eax, 2
	xor	eax, 6
	mov	dword ptr [rsp + 0xf0], eax
	mov	rbx, qword ptr [rsp + 0x18]
	cmp	rbx, rbp
	mov	r15, rbp
	cmovle	r15, rbx
	mov	r12, rbx
	cmovl	r12, rbp
	mov	ecx, 8
	cmp	qword ptr [rsp + 0x40], 0
	mov	rsi, qword ptr [rsp + 0x58]
	je	.label_1746
	cmp	edi, 1
	je	.label_1752
	mov	ecx, 0x400000
	xor	eax, eax
	test	rsi, rsi
	jne	.label_1751
	mov	rdx, qword ptr [rsp + 0x48]
	and	rcx, qword ptr [rdx + 0x18]
	jne	.label_1751
.label_1752:
	mov	eax, 4
.label_1751:
	xor	ecx, ecx
	test	rsi, rsi
	setne	cl
	xor	edx, edx
	cmp	rbp, rbx
	setle	dl
	lea	ecx, [rcx + rdx*2]
	or	ecx, eax
.label_1746:
	mov	qword ptr [rsp + 0x208], rdi
	xor	edx, edx
	cmp	rbp, rbx
	setle	byte ptr [rsp + 0xf]
	lea	rsi, [rsp + 0x28]
	mov	eax, 0
	mov	qword ptr [rsp + 0x1d8], rax
	cmovg	rsi, rdx
	mov	qword ptr [rsp + 0x200], rsi
	cmp	rbx, rbp
	mov	eax, 1
	mov	r13, -1
	cmovge	r13, rax
	add	ecx, -4
	mov	qword ptr [rsp + 0x210], rcx
	mov	qword ptr [rsp + 0x70], r13
	mov	qword ptr [rsp + 0x190], r15
	mov	qword ptr [rsp + 0x188], r12
	jmp	.label_259
.label_1743:
	xor	ebp, ebp
	jmp	.label_1747
.label_486:
	mov	rdi, r15
	call	free
	mov	rdi, rbp
	call	free
	test	ebx, ebx
	mov	r12, qword ptr [rsp + 0x38]
	mov	r13, qword ptr [rsp + 0x70]
	je	.label_335
	cmp	ebx, 1
	mov	r15, qword ptr [rsp + 0x190]
	mov	r12, qword ptr [rsp + 0x188]
	je	.label_400
	jmp	.label_106
.label_191:
	test	al, al
	js	.label_597
	cmp	byte ptr [rsp + 7], 0
	mov	rdx, r8
	mov	ecx, 1
	jne	.label_598
	mov	r14, r8
	jmp	.label_580
.label_185:
	mov	r14, r8
	lea	rbp, [rbx + 8]
	xor	edx, edx
	lea	rdi, [rsp + 0x80]
	mov	rsi, rbp
	call	check_subexp_matching_top
	mov	dword ptr [rsp + 8], eax
	test	eax, eax
	jne	.label_606
	test	byte ptr [rbx + 0x68], 0x40
	je	.label_608
	lea	rdi, [rsp + 0x80]
	mov	rsi, rbp
	call	transit_state_bkref
	mov	dword ptr [rsp + 8], eax
	test	eax, eax
	jne	.label_606
.label_608:
	mov	dword ptr [rsp + 0x18], 0
	mov	r8, r14
	jmp	.label_179
.label_597:
	lea	rdi, [rsp + 0x80]
	mov	rsi, rbx
	mov	rdx, r8
	mov	r14, r8
	call	check_halt_state_context
	cmp	rax, 1
	sbb	rdx, rdx
	xor	ecx, ecx
	test	rax, rax
	sete	al
	setne	cl
	or	al, byte ptr [rsp + 7]
	je	.label_580
	or	rdx, r14
	mov	r8, r14
	jmp	.label_598
.label_606:
	movsxd	r14, eax
	jmp	.label_580
	nop	word ptr cs:[rax + rax]
.label_259:
	mov	rax, qword ptr [rsp + 0x210]
	cmp	eax, 4
	ja	.label_620
	jmp	qword ptr [(rax * 8) + label_622]
.label_2234:
	cmp	rbp, r15
	mov	rax, rbp
	mov	rcx, qword ptr [rsp + 0x78]
	mov	rdx, qword ptr [rsp + 0x50]
	mov	rsi, qword ptr [rsp + 0x40]
	mov	rdi, qword ptr [rsp + 0x58]
	jl	.label_514
	nop	dword ptr [rax + rax]
.label_631:
	xor	eax, eax
	cmp	rbp, rcx
	jge	.label_640
	movzx	eax, byte ptr [rdx + rbp]
.label_640:
	test	rdi, rdi
	je	.label_626
	movzx	eax, byte ptr [rdi + rax]
.label_626:
	cmp	byte ptr [rsi + rax], 0
	jne	.label_629
	lea	rax, [rbp - 1]
	mov	qword ptr [rsp + 0x28], rax
	cmp	rbp, r15
	mov	rbp, rax
	jg	.label_631
	jmp	.label_514
.label_2236:
	cmp	rbp, r12
	jge	.label_635
	mov	rcx, qword ptr [rsp + 0x50]
	mov	rdx, qword ptr [rsp + 0x40]
	mov	rsi, qword ptr [rsp + 0x58]
	nop	dword ptr [rax + rax]
.label_568:
	movzx	eax, byte ptr [rcx + rbp]
	movzx	eax, byte ptr [rsi + rax]
	cmp	byte ptr [rdx + rax], 0
	jne	.label_635
	inc	rbp
	mov	qword ptr [rsp + 0x28], rbp
	cmp	rbp, r12
	jl	.label_568
	jmp	.label_635
.label_2235:
	cmp	rbp, r12
	mov	rcx, qword ptr [rsp + 0x50]
	mov	rdx, qword ptr [rsp + 0x40]
	jge	.label_635
	nop	dword ptr [rax]
.label_645:
	movzx	eax, byte ptr [rcx + rbp]
	cmp	byte ptr [rdx + rax], 0
	jne	.label_635
	inc	rbp
	mov	qword ptr [rsp + 0x28], rbp
	cmp	rbp, r12
	jl	.label_645
	nop	word ptr [rax + rax]
.label_635:
	cmp	rbp, r12
	jne	.label_136
	xor	eax, eax
	cmp	r12, qword ptr [rsp + 0x78]
	mov	rcx, qword ptr [rsp + 0x50]
	jge	.label_648
	movzx	eax, byte ptr [rcx + r12]
.label_648:
	mov	rcx, qword ptr [rsp + 0x58]
	test	rcx, rcx
	je	.label_652
	movzx	eax, byte ptr [rcx + rax]
.label_652:
	mov	rcx, qword ptr [rsp + 0x40]
	mov	ebx, 1
.label_2312:
	cmp	byte ptr [rcx + rax], 0
	mov	rbp, r12
	jne	.label_136
	jmp	.label_106
.label_620:
	mov	rax, qword ptr [rsp + 0xa8]
	jmp	.label_107
.label_135:
	add	rbp, r13
	mov	qword ptr [rsp + 0x28], rbp
	cmp	rbp, r15
	mov	ebx, 1
	jl	.label_106
	cmp	rbp, r12
	jle	.label_107
	jmp	.label_106
.label_124:
	lea	rdi, [rsp + 0x80]
	mov	rsi, rbp
	mov	edx, dword ptr [rsp + 0x260]
	call	re_string_reconstruct
	mov	ebx, eax
	test	ebx, ebx
	jne	.label_106
	mov	rbp, qword ptr [rsp + 0x28]
	mov	rax, qword ptr [rsp + 0xa8]
	mov	rcx, rbp
	sub	rcx, rax
	jmp	.label_116
	nop	word ptr cs:[rax + rax]
.label_107:
	mov	rcx, rbp
	sub	rcx, rax
	cmp	rcx, qword ptr [rsp + 0xb8]
	jae	.label_124
.label_116:
	cmp	rbp, qword ptr [rsp + 0x78]
	mov	edx, 0
	mov	rsi, qword ptr [rsp + 0x40]
	jge	.label_128
	mov	rdx, qword ptr [rsp + 0x88]
	movzx	edx, byte ptr [rdx + rcx]
.label_128:
	cmp	byte ptr [rsi + rdx], 0
	je	.label_135
	jmp	.label_136
.label_629:
	mov	rax, rbp
.label_514:
	mov	ebx, 1
	cmp	rax, r15
	mov	rbp, rax
	jl	.label_106
.label_136:
	lea	rdi, [rsp + 0x80]
	mov	rsi, rbp
	mov	edx, dword ptr [rsp + 0x260]
	call	re_string_reconstruct
	mov	ebx, eax
	test	ebx, ebx
	jne	.label_106
	mov	rax, qword ptr [rsp + 0x208]
	cmp	eax, 1
	je	.label_147
	mov	rax, qword ptr [rsp + 0xb0]
	test	rax, rax
	je	.label_147
	mov	rax, qword ptr [rsp + 0x90]
	cmp	dword ptr [rax], -1
	je	.label_149
.label_147:
	mov	dword ptr [rsp + 0x160], 0
	lea	rax, [rsp + 0xb8]
	xorps	xmm0, xmm0
	movups	xmmword ptr [rax + 0x88], xmm0
	mov	rbp, qword ptr [rsp + 0x118]
	mov	r8, qword ptr [rsp + 0xc8]
	mov	dword ptr [rsp + 8], 0
	mov	rbx, qword ptr [rbp + 0x48]
	cmp	byte ptr [rbx + 0x68], 0
	js	.label_151
	mov	r14b, byte ptr [rsp + 0xf]
	jmp	.label_159
	nop	
.label_151:
	mov	qword ptr [rsp + 0x10], r8
	lea	rsi, [r8 - 1]
	mov	edx, dword ptr [rsp + 0x120]
	lea	rdi, [rsp + 0x80]
	call	re_string_context_at
	test	al, 1
	mov	r14b, byte ptr [rsp + 0xf]
	jne	.label_164
	test	eax, eax
	je	.label_165
	mov	ecx, eax
	and	ecx, 4
	sete	sil
	mov	edx, eax
	and	edx, 2
	mov	r8, qword ptr [rsp + 0x10]
	je	.label_166
	test	sil, sil
	jne	.label_166
	mov	rbx, qword ptr [rbp + 0x60]
	jmp	.label_159
.label_164:
	mov	rbx, qword ptr [rbp + 0x50]
.label_165:
	mov	r8, qword ptr [rsp + 0x10]
.label_159:
	test	rbx, rbx
	je	.label_176
	mov	rax, qword ptr [rsp + 0x138]
	test	rax, rax
	mov	cl, r14b
	mov	dword ptr [rsp + 0x18], ecx
	je	.label_179
	mov	qword ptr [rax + r8*8], rbx
	cmp	qword ptr [rbp + 0x98], 0
	mov	al, r14b
	mov	dword ptr [rsp + 0x18], eax
	jne	.label_185
.label_179:
	mov	al, byte ptr [rbx + 0x68]
	mov	rdx, -1
	test	al, 0x10
	mov	ecx, 0
	jne	.label_191
.label_598:
	mov	r14, qword ptr [rsp + 0xc8]
	mov	rax, qword ptr [rsp + 0x200]
.label_392:
	mov	r13, rax
	mov	qword ptr [rsp + 0x60], rdx
	cmp	qword ptr [rsp + 0xe8], r14
	jle	.label_197
	test	rcx, rcx
	sete	al
	or	al, byte ptr [rsp + 7]
	mov	byte ptr [rsp + 0x198], al
	mov	r12, rbx
	jmp	.label_200
.label_287:
	add	r14d, 2
	lea	rdi, [rsp + 0x80]
	mov	esi, r14d
	mov	rbx, r8
	call	extend_buffers
	mov	r8, rbx
	mov	dword ptr [rsp + 8], eax
	test	eax, eax
	jne	.label_210
	jmp	.label_211
.label_327:
	cmp	qword ptr [r12 + 0x10], 0
	jle	.label_213
	mov	rbp, qword ptr [rsp + 0x118]
	xor	edx, edx
	mov	qword ptr [rsp + 0x10], r8
	mov	qword ptr [rsp + 0x1f8], rbp
.label_605:
	mov	rax, qword ptr [r12 + 0x18]
	mov	rcx, qword ptr [rax + rdx*8]
	mov	rax, qword ptr [rbp]
	mov	rsi, rcx
	mov	qword ptr [rsp + 0x68], rsi
	shl	rcx, 4
	mov	ebx, dword ptr [rax + rcx + 8]
	test	ebx, 0x100000
	je	.label_220
	mov	r14d, ebx
	shr	r14d, 8
	test	r14w, 0x3ff
	mov	r9, qword ptr [rsp + 0xc8]
	mov	qword ptr [rsp + 0x180], rdx
	je	.label_226
	mov	edx, dword ptr [rsp + 0x120]
	lea	rdi, [rsp + 0x80]
	mov	rsi, r9
	mov	rbp, r9
	call	re_string_context_at
	mov	r9, rbp
	mov	rdx, qword ptr [rsp + 0x180]
	mov	r8, qword ptr [rsp + 0x10]
	mov	rbp, qword ptr [rsp + 0x1f8]
	mov	ecx, eax
	and	ecx, 1
	test	r14b, 4
	je	.label_234
	test	ecx, ecx
	je	.label_220
.label_234:
	test	bh, 8
	je	.label_241
	test	ecx, ecx
	jne	.label_220
.label_241:
	test	bh, 0x20
	je	.label_243
	mov	ecx, eax
	and	ecx, 2
	je	.label_220
.label_243:
	test	r14b, r14b
	jns	.label_226
	and	eax, 8
	je	.label_220
.label_226:
	mov	rdi, rbp
	mov	rsi, qword ptr [rsp + 0x68]
	lea	rdx, [rsp + 0x80]
	mov	rcx, r9
	call	check_node_accept_bytes
	mov	rdx, qword ptr [rsp + 0x180]
	mov	r8, qword ptr [rsp + 0x10]
	test	eax, eax
	je	.label_220
	movsxd	rbx, eax
	add	rbx, qword ptr [rsp + 0xc8]
	mov	ecx, dword ptr [rsp + 0x160]
	cmp	ecx, eax
	cmovl	ecx, eax
	mov	dword ptr [rsp + 0x160], ecx
	mov	r14, qword ptr [rsp + 0x140]
	mov	rcx, qword ptr [rsp + 0xc0]
	mov	rax, qword ptr [rsp + 0xd8]
	cmp	rcx, rbx
	jg	.label_248
	cmp	rcx, rax
	jl	.label_255
.label_248:
	mov	rcx, qword ptr [rsp + 0xb0]
	cmp	rcx, rbx
	jg	.label_256
	cmp	rcx, rax
	jge	.label_256
.label_255:
	lea	esi, [rbx + 1]
	lea	rdi, [rsp + 0x80]
	call	extend_buffers
	test	eax, eax
	jne	.label_264
.label_256:
	mov	rdx, rbx
	sub	rdx, r14
	jle	.label_387
	mov	rax, qword ptr [rsp + 0x138]
	lea	rdi, [rax + r14*8 + 8]
	shl	rdx, 3
	xor	esi, esi
	call	memset
	mov	qword ptr [rsp + 0x140], rbx
.label_387:
	mov	dword ptr [rsp + 0x34], 0
	mov	rax, qword ptr [rbp + 0x18]
	mov	rcx, qword ptr [rsp + 0x68]
	mov	rax, qword ptr [rax + rcx*8]
	lea	rdx, [rax + rax*2]
	shl	rdx, 3
	add	rdx, qword ptr [rbp + 0x30]
	mov	rax, qword ptr [rsp + 0x138]
	mov	qword ptr [rsp + 0x68], rbx
	mov	rax, qword ptr [rax + rbx*8]
	test	rax, rax
	mov	qword ptr [rsp + 0x1f0], rax
	je	.label_272
	mov	rsi, qword ptr [rax + 0x50]
	lea	rbx, [rsp + 0x1a0]
	mov	rdi, rbx
	call	re_node_set_init_union
	mov	dword ptr [rsp + 0x34], eax
	test	eax, eax
	je	.label_281
	jmp	.label_282
.label_272:
	mov	rax, qword ptr [rdx + 0x10]
	mov	qword ptr [rsp + 0x1b0], rax
	movups	xmm0, xmmword ptr [rdx]
	movaps	xmmword ptr [rsp + 0x1a0], xmm0
	lea	rbx, [rsp + 0x1a0]
.label_281:
	mov	r14, qword ptr [rsp + 0x68]
	lea	rsi, [r14 - 1]
	mov	edx, dword ptr [rsp + 0x120]
	lea	rdi, [rsp + 0x80]
	call	re_string_context_at
	lea	rdi, [rsp + 0x34]
	mov	rsi, rbp
	mov	rdx, rbx
	mov	ecx, eax
	call	re_acquire_state_context
	cmp	qword ptr [rsp + 0x1f0], 0
	mov	rcx, qword ptr [rsp + 0x138]
	mov	qword ptr [rcx + r14*8], rax
	je	.label_292
	mov	rdi, qword ptr [rsp + 0x1b0]
	call	free
.label_292:
	mov	rax, qword ptr [rsp + 0x138]
	cmp	qword ptr [rax + r14*8], 0
	mov	r8, qword ptr [rsp + 0x10]
	mov	rdx, qword ptr [rsp + 0x180]
	jne	.label_220
	mov	eax, dword ptr [rsp + 0x34]
	test	eax, eax
	jne	.label_299
.label_220:
	inc	rdx
	cmp	rdx, qword ptr [r12 + 0x10]
	jl	.label_605
.label_213:
	mov	dword ptr [rsp + 8], 0
	jmp	.label_301
.label_334:
	mov	rsi, qword ptr [rsp + 0xc8]
	dec	rsi
	mov	edx, dword ptr [rsp + 0x120]
	lea	rdi, [rsp + 0x80]
	call	re_string_context_at
	and	eax, 1
	shl	rax, 8
	or	rax, rbx
	mov	rbx, qword ptr [r14 + rax*8]
	mov	r8, qword ptr [rsp + 0x10]
	jmp	.label_305
.label_376:
	cmp	r12, rbx
	je	.label_312
	mov	dword ptr [rsp + 0x18], 0
.label_312:
	cmove	r8, r15
	jmp	.label_315
.label_299:
	mov	dword ptr [rsp + 8], eax
.label_341:
	xor	ebx, ebx
	jmp	.label_305
.label_264:
	mov	dword ptr [rsp + 0x34], eax
.label_282:
	mov	dword ptr [rsp + 8], eax
	xor	ebx, ebx
	mov	r8, qword ptr [rsp + 0x10]
	jmp	.label_305
	nop	dword ptr [rax]
.label_200:
	lea	r15, [r14 + 1]
	mov	rcx, qword ptr [rsp + 0xc0]
	mov	rax, qword ptr [rsp + 0xd8]
	cmp	r15, rcx
	jl	.label_623
	cmp	rcx, rax
	jl	.label_287
.label_623:
	mov	rcx, qword ptr [rsp + 0xb0]
	cmp	r15, rcx
	jl	.label_211
	cmp	rcx, rax
	jl	.label_287
.label_211:
	test	byte ptr [r12 + 0x68], 0x20
	jne	.label_327
.label_301:
	mov	rax, qword ptr [rsp + 0xc8]
	lea	rcx, [rax + 1]
	mov	qword ptr [rsp + 0xc8], rcx
	mov	rcx, qword ptr [rsp + 0x88]
	movzx	ebx, byte ptr [rcx + rax]
.label_340:
	mov	rax, qword ptr [r12 + 0x58]
	test	rax, rax
	jne	.label_332
	mov	qword ptr [rsp + 0x10], r8
	mov	r14, qword ptr [r12 + 0x60]
	test	r14, r14
	jne	.label_334
	mov	rdi, qword ptr [rsp + 0x118]
	mov	rsi, r12
	call	build_trtable
	test	al, al
	mov	r8, qword ptr [rsp + 0x10]
	jne	.label_340
	mov	dword ptr [rsp + 8], 0xc
	jmp	.label_341
	nop	word ptr [rax + rax]
.label_332:
	mov	rbx, qword ptr [rax + rbx*8]
.label_305:
	cmp	qword ptr [rsp + 0x138], 0
	je	.label_345
	lea	rdi, [rsp + 8]
	lea	rsi, [rsp + 0x80]
	mov	rdx, rbx
	mov	rbx, r8
	call	merge_state_with_log
	mov	r8, rbx
	mov	rbx, rax
.label_345:
	test	rbx, rbx
	jne	.label_352
	cmp	dword ptr [rsp + 8], 0
	jne	.label_353
	mov	rax, qword ptr [rsp + 0x138]
	test	rax, rax
	setne	cl
	and	cl, byte ptr [rsp + 0x198]
	cmp	cl, 1
	je	.label_355
	jmp	.label_197
.label_370:
	mov	rax, qword ptr [rsp + 0x138]
	mov	r8, rbp
.label_355:
	mov	rdx, qword ptr [rsp + 0xc8]
	mov	rcx, qword ptr [rsp + 0x140]
	nop	dword ptr [rax + rax]
.label_433:
	cmp	rdx, rcx
	jge	.label_197
	lea	rsi, [rdx + 1]
	mov	qword ptr [rsp + 0xc8], rsi
	cmp	qword ptr [rax + rdx*8 + 8], 0
	mov	rdx, rsi
	je	.label_433
	mov	rbp, r8
	xor	edx, edx
	lea	rdi, [rsp + 8]
	lea	rsi, [rsp + 0x80]
	call	merge_state_with_log
	mov	rbx, rax
	test	rbx, rbx
	jne	.label_368
	mov	eax, dword ptr [rsp + 8]
	test	eax, eax
	je	.label_370
.label_368:
	test	rbx, rbx
	mov	r8, rbp
	je	.label_197
	nop	word ptr cs:[rax + rax]
.label_352:
	mov	eax, dword ptr [rsp + 0x18]
	test	al, 1
	jne	.label_376
.label_315:
	mov	al, byte ptr [rbx + 0x68]
	test	al, 0x10
	jne	.label_378
	mov	r14, qword ptr [rsp + 0xc8]
	jmp	.label_380
	nop	dword ptr [rax]
.label_378:
	mov	r14, qword ptr [rsp + 0xc8]
	test	al, al
	jns	.label_382
	lea	rdi, [rsp + 0x80]
	mov	rsi, rbx
	mov	rdx, r14
	mov	rbp, r8
	call	check_halt_state_context
	mov	r8, rbp
	test	rax, rax
	jne	.label_382
.label_380:
	cmp	qword ptr [rsp + 0xe8], r14
	mov	r12, rbx
	jg	.label_200
	jmp	.label_197
.label_382:
	cmp	byte ptr [rsp + 7], 0
	mov	rdx, r14
	mov	ecx, 1
	mov	eax, 0
	mov	r13, qword ptr [rsp + 0x70]
	jne	.label_392
	jmp	.label_580
	nop	dword ptr [rax]
.label_197:
	mov	rax, r13
	test	rax, rax
	mov	r13, qword ptr [rsp + 0x70]
	je	.label_399
	add	qword ptr [rax], r8
.label_399:
	mov	r14, qword ptr [rsp + 0x60]
.label_580:
	cmp	r14, -1
	mov	r15, qword ptr [rsp + 0x190]
	mov	r12, qword ptr [rsp + 0x188]
	je	.label_400
	mov	ebx, 0xc
	cmp	r14, -2
	je	.label_106
	mov	r12, qword ptr [rsp + 0x38]
	cmp	r12, 1
	seta	al
	mov	qword ptr [rsp + 0x128], r14
	mov	rcx, qword ptr [rsp + 0x48]
	test	byte ptr [rcx + 0x38], 0x10
	sete	r15b
	and	r15b, al
	je	.label_322
	mov	rax, qword ptr [rsp + 0x138]
	mov	rsi, qword ptr [rax + r14*8]
	lea	rdi, [rsp + 0x80]
	mov	rdx, r14
	call	check_halt_state_context
	mov	qword ptr [rsp + 0x130], rax
	mov	rbp, qword ptr [rsp + 0x20]
	jmp	.label_415
.label_322:
	mov	rbp, qword ptr [rsp + 0x20]
	cmp	qword ptr [rbp + 0x98], 0
	je	.label_335
	mov	rax, qword ptr [rsp + 0x138]
	mov	rsi, qword ptr [rax + r14*8]
	lea	rdi, [rsp + 0x80]
	mov	rdx, r14
	call	check_halt_state_context
	mov	qword ptr [rsp + 0x130], rax
	test	r15b, 1
	je	.label_422
.label_415:
	test	byte ptr [rbp + 0xb0], 1
	jne	.label_217
.label_422:
	cmp	qword ptr [rbp + 0x98], 0
	je	.label_335
.label_217:
	movabs	rax, 0x1ffffffffffffffe
	cmp	r14, rax
	ja	.label_106
	mov	r15, qword ptr [rsp + 0x118]
	mov	r12, qword ptr [rsp + 0x130]
	lea	rbp, [r14*8 + 8]
	mov	rdi, rbp
	call	malloc
	mov	r13, rax
	test	rax, rax
	mov	eax, 0
	je	.label_432
	cmp	qword ptr [r15 + 0x98], 0
	je	.label_435
	mov	qword ptr [rsp + 0x198], r15
	mov	rdi, rbp
	call	malloc
	test	rax, rax
	je	.label_438
	xor	esi, esi
	mov	rdi, rax
	mov	rdx, rbp
	mov	rbx, rax
	call	memset
	mov	r15, r13
	mov	qword ptr [rsp + 0x1a0], r15
	mov	qword ptr [rsp + 0x18], rbx
	mov	qword ptr [rsp + 0x1a8], rbx
	mov	qword ptr [rsp + 0x60], r12
	mov	qword ptr [rsp + 0x1b0], r12
	mov	qword ptr [rsp + 0x1b8], r14
	lea	rax, [rsp + 0x1c0]
	xorps	xmm0, xmm0
	movups	xmmword ptr [rax], xmm0
	mov	qword ptr [rax + 0x10], 0
	lea	rdi, [rsp + 0x80]
	lea	r12, [rsp + 0x1a0]
	mov	rsi, r12
	call	sift_states_backward
	mov	ebx, eax
	test	ebx, ebx
	jne	.label_451
	lea	r13, [r14 + 1]
.label_483:
	cmp	qword ptr [r15], 0
	mov	rcx, qword ptr [rsp + 0x18]
	jne	.label_455
	cmp	qword ptr [rcx], 0
	jne	.label_455
	test	r14, r14
	jle	.label_441
	mov	rax, qword ptr [rsp + 0x138]
	mov	r13, r14
	nop	word ptr cs:[rax + rax]
.label_470:
	lea	r14, [r13 - 1]
	mov	rsi, qword ptr [rax + r13*8 - 8]
	test	rsi, rsi
	je	.label_581
	test	byte ptr [rsi + 0x68], 0x10
	jne	.label_469
.label_581:
	cmp	r13, 2
	mov	r13, r14
	jge	.label_470
	jmp	.label_441
.label_469:
	lea	rbx, [rsp + 0x80]
	mov	rdi, rbx
	mov	rdx, r14
	mov	rbx, rcx
	call	check_halt_state_context
	mov	rbp, rax
	lea	rdx, [r13*8]
	xor	esi, esi
	mov	rdi, rbx
	call	memset
	mov	qword ptr [rsp + 0x1a0], r15
	mov	qword ptr [rsp + 0x1a8], rbx
	mov	qword ptr [rsp + 0x60], rbp
	mov	qword ptr [rsp + 0x1b0], rbp
	mov	qword ptr [rsp + 0x1b8], r14
	lea	rax, [rsp + 0x1c0]
	xorps	xmm0, xmm0
	movups	xmmword ptr [rax], xmm0
	mov	qword ptr [rax + 0x10], 0
	lea	rdi, [rsp + 0x80]
	mov	rsi, r12
	call	sift_states_backward
	mov	ebx, eax
	test	ebx, ebx
	je	.label_483
.label_451:
	mov	rbp, qword ptr [rsp + 0x18]
	jmp	.label_486
.label_435:
	mov	r15, r13
	mov	qword ptr [rsp + 0x1a0], r15
	mov	qword ptr [rsp + 0x1a8], 0
	mov	qword ptr [rsp + 0x1b0], r12
	mov	qword ptr [rsp + 0x1b8], r14
	lea	rax, [rsp + 0x1c0]
	xorps	xmm0, xmm0
	movups	xmmword ptr [rax], xmm0
	mov	qword ptr [rax + 0x10], 0
	lea	rdi, [rsp + 0x80]
	lea	rsi, [rsp + 0x1a0]
	call	sift_states_backward
	mov	ebx, eax
	test	ebx, ebx
	mov	ebp, 0
	jne	.label_486
	cmp	qword ptr [r15], 0
	mov	ecx, 0
	jne	.label_502
.label_441:
	mov	rdi, r15
	mov	rbx, rcx
	call	free
	mov	rdi, rbx
	call	free
	mov	r15, qword ptr [rsp + 0x190]
	mov	r12, qword ptr [rsp + 0x188]
	mov	r13, qword ptr [rsp + 0x70]
.label_400:
	lea	rdi, [rsp + 0x80]
	call	match_ctx_clean
.label_149:
	mov	rbp, qword ptr [rsp + 0x28]
	add	rbp, r13
	mov	qword ptr [rsp + 0x28], rbp
	cmp	rbp, r15
	mov	ebx, 1
	jl	.label_106
	cmp	r12, rbp
	jge	.label_259
	jmp	.label_106
.label_166:
	test	edx, edx
	jne	.label_517
	test	ecx, ecx
	je	.label_159
	mov	rdx, qword ptr [rbx + 0x50]
	lea	rdi, [rsp + 8]
	mov	rsi, rbp
	mov	ecx, eax
	call	re_acquire_state_context
	mov	r8, qword ptr [rsp + 0x10]
	mov	rbx, rax
	jmp	.label_159
.label_517:
	mov	rbx, qword ptr [rbp + 0x58]
	jmp	.label_159
.label_455:
	mov	rdi, qword ptr [rsp + 0x198]
	mov	rsi, r15
	mov	rdx, rcx
	mov	rbp, rcx
	mov	rcx, r13
	call	merge_state_array
	mov	ebx, eax
	mov	rdi, rbp
	call	free
	test	ebx, ebx
	mov	ebp, 0
	mov	r12, qword ptr [rsp + 0x60]
	jne	.label_486
.label_502:
	mov	rdi, qword ptr [rsp + 0x138]
	call	free
	mov	qword ptr [rsp + 0x138], r15
	mov	qword ptr [rsp + 0x130], r12
	mov	qword ptr [rsp + 0x128], r14
	mov	r12, qword ptr [rsp + 0x38]
.label_335:
	xor	ebx, ebx
	test	r12, r12
	je	.label_106
	mov	rbx, qword ptr [rsp + 0x38]
	cmp	rbx, 1
	je	.label_527
	mov	rax, qword ptr [rsp + 0x258]
	lea	rdi, [rax + 0x10]
	cmp	rbx, 2
	mov	edx, 2
	cmova	rdx, rbx
	shl	rdx, 4
	add	rdx, -0x10
	mov	esi, 0xff
	call	memset
.label_527:
	mov	rax, qword ptr [rsp + 0x258]
	mov	rcx, rax
	mov	qword ptr [rcx], 0
	mov	rax, qword ptr [rsp + 0x128]
	mov	qword ptr [rcx + 8], rax
	cmp	rbx, 2
	jb	.label_425
	mov	rax, qword ptr [rsp + 0x48]
	mov	al, byte ptr [rax + 0x38]
	and	al, 0x10
	jne	.label_425
	mov	rax, qword ptr [rsp + 0x20]
	test	byte ptr [rax + 0xb0], 1
	jne	.label_534
	xor	eax, eax
	jmp	.label_536
.label_534:
	cmp	qword ptr [rax + 0x98], 0
	setg	al
.label_536:
	mov	rdi, qword ptr [rsp + 0x48]
	mov	rdx, qword ptr [rsp + 0x38]
	movzx	r8d, al
	lea	rsi, [rsp + 0x80]
	mov	rcx, qword ptr [rsp + 0x258]
	call	set_regs
	mov	ebx, eax
	test	ebx, ebx
	jne	.label_106
.label_425:
	mov	r9b, byte ptr [rsp + 0x10c]
	mov	r8, qword ptr [rsp + 0x98]
	mov	rax, qword ptr [rsp + 0x258]
	lea	rdx, [rax + 8]
	xor	ecx, ecx
	mov	r14, qword ptr [rsp + 0x20]
	mov	rax, qword ptr [rsp + 0x250]
	mov	r10, qword ptr [rsp + 0x1e0]
	jmp	.label_538
.label_210:
	cmp	eax, 0xc
	je	.label_353
	mov	edi, OFFSET FLAT:label_545
	mov	esi, OFFSET FLAT:label_546
	mov	edx, 0x46c
	mov	ecx, OFFSET FLAT:label_547
	call	__assert_fail
.label_176:
	cmp	dword ptr [rsp + 8], 0xc
	jne	.label_539
.label_353:
	mov	ebx, 0xc
	jmp	.label_106
.label_564:
	mov	rbx, qword ptr [rsp + 0xb0]
	cmp	rdi, rbx
	lea	rdi, [r8 + rdi*8]
	lea	rsi, [rsp + 0xb8]
	mov	r11, rsi
	cmove	rdi, r11
	mov	rdi, qword ptr [rdi]
	mov	qword ptr [rdx - 8], rdi
	mov	rsi, rcx
	shl	rsi, 4
	mov	rbp, qword ptr [rsp + 0x258]
	lea	rbp, [rbp + rsi + 8]
	mov	rsi, qword ptr [rdx]
	cmp	rsi, rbx
	lea	rsi, [r8 + rsi*8]
	cmove	rsi, r11
	mov	rbx, qword ptr [rsi]
	mov	qword ptr [rdx], rbx
	jmp	.label_551
	nop	word ptr cs:[rax + rax]
.label_538:
	mov	rdi, qword ptr [rdx - 8]
	cmp	rdi, -1
	je	.label_562
	test	r9b, r9b
	jne	.label_564
	mov	rbx, qword ptr [rdx]
	mov	rbp, rdx
.label_551:
	mov	rsi, qword ptr [rsp + 0x28]
	add	rdi, rsi
	mov	qword ptr [rdx - 8], rdi
	add	rbx, rsi
	mov	qword ptr [rbp], rbx
.label_562:
	inc	rcx
	add	rdx, 0x10
	dec	rax
	cmp	r10, rax
	jne	.label_538
	test	r10, r10
	mov	rbp, qword ptr [rsp + 0x38]
	jle	.label_571
	mov	rdi, rbp
	shl	rdi, 4
	add	rdi, qword ptr [rsp + 0x258]
	mov	rdx, r10
	shl	rdx, 4
	mov	esi, 0xff
	call	memset
.label_571:
	mov	rax, qword ptr [r14 + 0xe0]
	xor	ebx, ebx
	test	rax, rax
	je	.label_106
	cmp	rbp, 2
	jb	.label_106
	mov	rcx, qword ptr [rsp + 0x1e0]
	sub	qword ptr [rsp + 0x1e8], rcx
	mov	rcx, qword ptr [rsp + 0x258]
	lea	rcx, [rcx + 0x18]
	xor	edx, edx
	nop	word ptr cs:[rax + rax]
.label_271:
	mov	rsi, qword ptr [rax + rdx*8]
	cmp	rdx, rsi
	je	.label_586
	shl	rsi, 4
	mov	rdi, qword ptr [rsp + 0x258]
	mov	rsi, qword ptr [rdi + rsi + 0x10]
	mov	qword ptr [rcx - 8], rsi
	mov	rsi, qword ptr [rax + rdx*8]
	shl	rsi, 4
	mov	rsi, qword ptr [rdi + rsi + 0x18]
	mov	qword ptr [rcx], rsi
.label_586:
	inc	rdx
	add	rcx, 0x10
	xor	ebx, ebx
	cmp	qword ptr [rsp + 0x1e8], rdx
	jne	.label_271
.label_106:
	mov	rdi, qword ptr [rsp + 0x138]
	call	free
	mov	rax, qword ptr [rsp + 0x20]
	cmp	qword ptr [rax + 0x98], 0
	je	.label_594
	lea	rdi, [rsp + 0x80]
	call	match_ctx_clean
	mov	rdi, qword ptr [rsp + 0x178]
	call	free
	mov	rdi, qword ptr [rsp + 0x158]
	call	free
.label_594:
	mov	rdi, qword ptr [rsp + 0x90]
	call	free
	mov	rdi, qword ptr [rsp + 0x98]
	call	free
	cmp	byte ptr [rsp + 0x10b], 0
	je	.label_607
	mov	rdi, qword ptr [rsp + 0x88]
	call	free
.label_607:
	mov	eax, ebx
	add	rsp, 0x218
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_438:
	mov	qword ptr [rsp + 0x1d8], r13
.label_432:
	mov	rdi, qword ptr [rsp + 0x1d8]
	mov	rbp, rax
	call	free
	mov	rdi, rbp
	call	free
	jmp	.label_106
.label_539:
	mov	edi, OFFSET FLAT:label_545
	mov	esi, OFFSET FLAT:label_546
	mov	edx, 0x435
	mov	ecx, OFFSET FLAT:label_547
	call	__assert_fail
	nop	word ptr [rax + rax]
	mov	rax, rsi
	mov	rdx, rdi
	xor	edi, edi
	mov	ecx, OFFSET FLAT:default_quoting_options
	mov	rsi, rdx
	mov	rdx, rax
	jmp	quotearg_n_options
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x410f00

	.globl rpl_fflush
	.type rpl_fflush, @function
rpl_fflush:
	push	rbx
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_1758
	mov	rdi, rbx
	call	__freading
	test	eax, eax
	je	.label_1758
	test	byte ptr [rbx + 1], 1
	je	.label_1758
	xor	esi, esi
	mov	edx, 1
	mov	rdi, rbx
	call	rpl_fseeko
.label_1758:
	mov	rdi, rbx
	pop	rbx
	jmp	fflush
	nop	word ptr cs:[rax + rax]
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
	ja	.label_487
	test	bl, 4
	jne	.label_633
	mov	rdi, r12
	call	strlen
	mov	rdx, rax
	xor	ecx, ecx
	jmp	.label_636
.label_633:
	mov	rcx, qword ptr [r15]
	mov	rdx, qword ptr [r15 + 8]
.label_636:
	test	byte ptr [r13 + 0x38], 0x10
	jne	.label_555
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
	jmp	.label_639
.label_555:
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
.label_639:
	mov	ecx, eax
	xor	eax, eax
	test	ecx, ecx
	setne	al
.label_487:
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x410f00

	.globl rpl_fcntl
	.type rpl_fcntl, @function
rpl_fcntl:
	push	rbp
	push	r14
	push	rbx
	sub	rsp, 0xd0
	mov	ebx, edi
	test	al, al
	je	.label_651
	movaps	xmmword ptr [rsp + 0x50], xmm0
	movaps	xmmword ptr [rsp + 0x60], xmm1
	movaps	xmmword ptr [rsp + 0x70], xmm2
	movaps	xmmword ptr [rsp + 0x80], xmm3
	movaps	xmmword ptr [rsp + 0x90], xmm4
	movaps	xmmword ptr [rsp + 0xa0], xmm5
	movaps	xmmword ptr [rsp + 0xb0], xmm6
	movaps	xmmword ptr [rsp + 0xc0], xmm7
.label_651:
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
	ja	.label_108
	mov	eax, 0xa0a
	bt	eax, esi
	jb	.label_117
	mov	eax, 0x514
	bt	eax, esi
	jb	.label_119
	test	esi, esi
	jne	.label_108
	movsxd	rcx, dword ptr [rsp]
	cmp	rcx, 0x28
	ja	.label_123
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0x10]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp], ecx
	jmp	.label_127
.label_108:
	lea	eax, [rsi - 0x400]
	cmp	eax, 8
	ja	.label_132
	mov	ecx, 0x85
	bt	ecx, eax
	jb	.label_119
	mov	ecx, 0x102
	bt	ecx, eax
	jae	.label_599
.label_117:
	xor	eax, eax
	mov	edi, ebx
	call	fcntl
	jmp	.label_140
.label_119:
	movsxd	rcx, dword ptr [rsp]
	cmp	rcx, 0x28
	ja	.label_141
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0x10]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp], ecx
	jmp	.label_144
.label_141:
	mov	rax, qword ptr [rsp + 8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 8], rcx
.label_144:
	mov	edx, dword ptr [rax]
	xor	eax, eax
	mov	edi, ebx
.label_419:
	call	fcntl
.label_140:
	mov	ebp, eax
.label_173:
	mov	eax, ebp
	add	rsp, 0xd0
	pop	rbx
	pop	r14
	pop	rbp
	ret	
.label_599:
	cmp	eax, 6
	jne	.label_132
	movsxd	rcx, dword ptr [rsp]
	cmp	rcx, 0x28
	ja	.label_150
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0x10]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp], ecx
	jmp	.label_152
.label_132:
	movsxd	rcx, dword ptr [rsp]
	cmp	rcx, 0x28
	ja	.label_153
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0x10]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp], ecx
	jmp	.label_155
.label_123:
	mov	rax, qword ptr [rsp + 8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 8], rcx
.label_127:
	mov	edx, dword ptr [rax]
	xor	esi, esi
	xor	eax, eax
	mov	edi, ebx
	jmp	.label_419
.label_150:
	mov	rax, qword ptr [rsp + 8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 8], rcx
.label_152:
	mov	r14d, dword ptr [rax]
	cmp	dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec],  0
	js	.label_163
	mov	esi, 0x406
	xor	eax, eax
	mov	edi, ebx
	mov	edx, r14d
	call	fcntl
	mov	ebp, eax
	test	ebp, ebp
	jns	.label_168
	call	__errno_location
	cmp	dword ptr [rax], 0x16
	jne	.label_168
	xor	esi, esi
	xor	eax, eax
	mov	edi, ebx
	mov	edx, r14d
	call	fcntl
	mov	ebp, eax
	test	ebp, ebp
	js	.label_173
	mov	dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec],  0xffffffff
	mov	al, 1
	jmp	.label_177
.label_168:
	mov	dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec],  1
	jmp	.label_173
.label_153:
	mov	rax, qword ptr [rsp + 8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 8], rcx
.label_155:
	mov	rdx, qword ptr [rax]
	xor	eax, eax
	mov	edi, ebx
	call	fcntl
	jmp	.label_140
.label_163:
	xor	esi, esi
	xor	eax, eax
	mov	edi, ebx
	mov	edx, r14d
	call	fcntl
	mov	ebp, eax
	cmp	dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec],  -1
	sete	al
.label_177:
	test	al, al
	je	.label_173
	test	ebp, ebp
	js	.label_173
	mov	esi, 1
	xor	eax, eax
	mov	edi, ebp
	call	fcntl
	mov	ecx, eax
	test	ecx, ecx
	js	.label_201
	or	ecx, 1
	mov	esi, 2
	xor	eax, eax
	mov	edi, ebp
	mov	edx, ecx
	call	fcntl
	cmp	eax, -1
	jne	.label_173
.label_201:
	call	__errno_location
	mov	rbx, rax
	mov	r14d, dword ptr [rbx]
	mov	edi, ebp
	call	close
	mov	dword ptr [rbx], r14d
	mov	ebp, 0xffffffff
	jmp	.label_173
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x411280

	.globl update_cur_sifted_state
	.type update_cur_sifted_state, @function
update_cur_sifted_state:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x98
	mov	r10, rcx
	mov	rcx, rdx
	mov	r12, rsi
	mov	r11, qword ptr [rdi + 0x98]
	mov	dword ptr [rsp + 0xc], 0
	mov	qword ptr [rsp + 0x18], rdi
	mov	rax, qword ptr [rdi + 0xb8]
	mov	r15, qword ptr [rax + rcx*8]
	lea	rax, [r15 + 8]
	test	r15, r15
	cmove	rax, r15
	mov	qword ptr [rsp + 0x40], rax
	cmp	qword ptr [r10 + 8], 0
	mov	qword ptr [rsp + 0x10], rcx
	mov	qword ptr [rsp + 0x38], r12
	je	.label_1789
	test	r15, r15
	je	.label_1806
	mov	dword ptr [rsp + 0x50], 0
	lea	rdi, [rsp + 0x50]
	mov	qword ptr [rsp + 0x20], r11
	mov	rsi, r11
	mov	qword ptr [rsp + 0x28], r10
	mov	rdx, r10
	call	re_acquire_state
	mov	r14, rax
	mov	r12d, dword ptr [rsp + 0x50]
	test	r12d, r12d
	jne	.label_1762
	mov	r13, r14
	add	r13, 0x38
	cmp	qword ptr [r14 + 0x38], 0
	mov	rdx, qword ptr [rsp + 0x28]
	jne	.label_1768
	mov	rdi, qword ptr [rdx + 8]
	mov	qword ptr [r14 + 0x38], rdi
	mov	qword ptr [r14 + 0x40], 0
	shl	rdi, 3
	call	malloc
	mov	qword ptr [r14 + 0x48], rax
	mov	r12d, 0xc
	test	rax, rax
	mov	ecx, 0xc
	je	.label_1778
	xor	ecx, ecx
.label_1778:
	test	rax, rax
	mov	dword ptr [rsp + 0x50], ecx
	je	.label_1762
	mov	rdx, qword ptr [rsp + 0x28]
	cmp	qword ptr [rdx + 8], 0
	jle	.label_1768
	xor	ebx, ebx
	nop	dword ptr [rax + rax]
.label_1798:
	mov	rax, qword ptr [rsp + 0x20]
	mov	rax, qword ptr [rax + 0x38]
	mov	rcx, qword ptr [rdx + 0x10]
	mov	rcx, qword ptr [rcx + rbx*8]
	lea	rcx, [rcx + rcx*2]
	lea	rsi, [rax + rcx*8]
	mov	rdi, r13
	mov	rbp, rdx
	call	re_node_set_merge
	mov	dword ptr [rsp + 0x50], eax
	test	eax, eax
	jne	.label_1762
	inc	rbx
	cmp	rbx, qword ptr [rbp + 8]
	mov	rdx, rbp
	jl	.label_1798
.label_1768:
	mov	rdi, rdx
	mov	rsi, qword ptr [rsp + 0x40]
	mov	rdx, r13
	call	re_node_set_add_intersect
	mov	r12d, eax
	mov	dword ptr [rsp + 0xc], r12d
	test	r12d, r12d
	mov	r9, qword ptr [rsp + 0x10]
	jne	.label_1773
	mov	r12, qword ptr [rsp + 0x38]
	mov	rax, qword ptr [r12 + 0x28]
	test	rax, rax
	mov	r10, qword ptr [rsp + 0x28]
	mov	r11, qword ptr [rsp + 0x20]
	je	.label_1806
	mov	qword ptr [rsp + 0x48], r15
	jle	.label_1812
	mov	rax, qword ptr [rsp + 0x18]
	mov	rax, qword ptr [rax + 0xd8]
	mov	qword ptr [rsp + 0x30], rax
	xor	r13d, r13d
	nop	
.label_1794:
	mov	rax, qword ptr [r12 + 0x30]
	mov	rax, qword ptr [rax + r13*8]
	lea	rax, [rax + rax*4]
	mov	rcx, qword ptr [rsp + 0x30]
	cmp	qword ptr [rcx + rax*8 + 0x10], r9
	jge	.label_1759
	mov	rcx, qword ptr [rsp + 0x30]
	cmp	qword ptr [rcx + rax*8 + 8], r9
	jl	.label_1759
	mov	rdx, qword ptr [rsp + 0x30]
	mov	rcx, qword ptr [rdx + rax*8]
	mov	rbp, qword ptr [r11]
	shl	rcx, 4
	mov	r14, qword ptr [rbp + rcx]
	cmp	qword ptr [rdx + rax*8 + 0x18], r9
	mov	rax, qword ptr [r10 + 8]
	jne	.label_1780
	test	rax, rax
	jle	.label_1759
	mov	rdx, qword ptr [r10 + 0x10]
	mov	r15, -1
	mov	rsi, -1
	nop	dword ptr [rax]
.label_1802:
	mov	rbx, qword ptr [rdx]
	mov	rdi, rbx
	shl	rdi, 4
	movzx	ecx, byte ptr [rbp + rdi + 8]
	cmp	cl, 9
	je	.label_1782
	cmp	cl, 8
	jne	.label_1796
	cmp	r14, qword ptr [rbp + rdi]
	cmove	rsi, rbx
	jmp	.label_1796
	nop	word ptr cs:[rax + rax]
.label_1782:
	cmp	r14, qword ptr [rbp + rdi]
	cmove	r15, rbx
.label_1796:
	add	rdx, 8
	dec	rax
	jne	.label_1802
	test	rsi, rsi
	js	.label_1803
	mov	rdi, r11
	mov	rdx, r10
	mov	rcx, qword ptr [rsp + 0x40]
	call	sub_epsilon_src_nodes
	mov	r11, qword ptr [rsp + 0x20]
	mov	r10, qword ptr [rsp + 0x28]
	mov	r9, qword ptr [rsp + 0x10]
	mov	r12d, eax
	test	r12d, r12d
	jne	.label_1762
.label_1803:
	test	r15, r15
	mov	r12, qword ptr [rsp + 0x38]
	js	.label_1759
	mov	r8, qword ptr [r10 + 8]
	test	r8, r8
	jle	.label_1759
	xor	r14d, r14d
.label_1811:
	mov	rcx, qword ptr [r10 + 0x10]
	mov	rsi, qword ptr [rcx + r14*8]
	mov	rdi, qword ptr [r11 + 0x38]
	lea	rcx, [rsi + rsi*2]
	mov	rdx, qword ptr [rdi + rcx*8 + 8]
	test	rdx, rdx
	jle	.label_1784
	dec	rdx
	mov	rdi, qword ptr [rdi + rcx*8 + 0x10]
	mov	ebx, 0
	je	.label_1775
	xor	ebx, ebx
	nop	dword ptr [rax + rax]
.label_1781:
	lea	rbp, [rbx + rdx]
	shr	rbp, 1
	cmp	qword ptr [rdi + rbp*8], r15
	lea	rax, [rbp + 1]
	cmovl	rbx, rax
	cmovge	rdx, rbp
	cmp	rbx, rdx
	jb	.label_1781
.label_1775:
	cmp	rbx, -1
	je	.label_1784
	cmp	qword ptr [rdi + rbx*8], r15
	je	.label_1785
.label_1784:
	mov	rdi, qword ptr [r11 + 0x30]
	mov	rdx, qword ptr [rdi + rcx*8 + 8]
	test	rdx, rdx
	jle	.label_1787
	dec	rdx
	mov	rcx, qword ptr [rdi + rcx*8 + 0x10]
	mov	edi, 0
	je	.label_1791
	xor	edi, edi
	nop	dword ptr [rax + rax]
.label_1786:
	lea	rax, [rdi + rdx]
	shr	rax, 1
	cmp	qword ptr [rcx + rax*8], r15
	lea	rbp, [rax + 1]
	cmovl	rdi, rbp
	cmovge	rdx, rax
	cmp	rdi, rdx
	jb	.label_1786
.label_1791:
	cmp	rdi, -1
	je	.label_1787
	cmp	qword ptr [rcx + rdi*8], r15
	je	.label_1785
.label_1787:
	mov	rdi, r11
	mov	rdx, r10
	mov	rcx, qword ptr [rsp + 0x40]
	call	sub_epsilon_src_nodes
	mov	r11, qword ptr [rsp + 0x20]
	mov	r10, qword ptr [rsp + 0x28]
	mov	r9, qword ptr [rsp + 0x10]
	mov	r12d, eax
	test	r12d, r12d
	jne	.label_1762
	dec	r14
	mov	r8, qword ptr [r10 + 8]
	mov	r12, qword ptr [rsp + 0x38]
.label_1785:
	inc	r14
	cmp	r14, r8
	jl	.label_1811
	jmp	.label_1759
.label_1780:
	test	rax, rax
	jle	.label_1759
	xor	ebx, ebx
	jmp	.label_1765
	nop	dword ptr [rax]
.label_1799:
	mov	rbp, qword ptr [r11]
.label_1765:
	mov	rcx, qword ptr [r10 + 0x10]
	mov	rsi, qword ptr [rcx + rbx*8]
	mov	rdx, rsi
	shl	rdx, 4
	mov	ecx, dword ptr [rbp + rdx + 8]
	mov	edi, 0xfe
	and	ecx, edi
	or	ecx, 1
	cmp	ecx, 9
	jne	.label_1770
	cmp	r14, qword ptr [rbp + rdx]
	jne	.label_1770
	mov	rdi, r11
	mov	rdx, r10
	mov	rcx, qword ptr [rsp + 0x40]
	call	sub_epsilon_src_nodes
	mov	r11, qword ptr [rsp + 0x20]
	mov	r10, qword ptr [rsp + 0x28]
	mov	r9, qword ptr [rsp + 0x10]
	mov	r12d, eax
	test	r12d, r12d
	jne	.label_1762
	mov	rax, qword ptr [r10 + 8]
	mov	r12, qword ptr [rsp + 0x38]
.label_1770:
	inc	rbx
	cmp	rbx, rax
	jl	.label_1799
	nop	dword ptr [rax + rax]
.label_1759:
	inc	r13
	cmp	r13, qword ptr [r12 + 0x28]
	jl	.label_1794
.label_1812:
	mov	dword ptr [rsp + 0xc], 0
	mov	r15, qword ptr [rsp + 0x48]
.label_1806:
	lea	rdi, [rsp + 0xc]
	mov	rsi, r11
	mov	rdx, r10
	call	re_acquire_state
	mov	rcx, qword ptr [rsp + 0x10]
	mov	rdx, qword ptr [r12]
	mov	qword ptr [rdx + rcx*8], rax
	mov	r12d, dword ptr [rsp + 0xc]
	test	r12d, r12d
	je	.label_1800
	jmp	.label_1773
.label_1789:
	mov	rax, qword ptr [r12]
	mov	qword ptr [rax + rcx*8], 0
.label_1800:
	test	r15, r15
	je	.label_1772
	mov	rax, qword ptr [rsp + 0x18]
	mov	rax, qword ptr [rax + 0xb8]
	mov	rax, qword ptr [rax + rcx*8]
	test	byte ptr [rax + 0x68], 0x40
	je	.label_1772
	mov	rax, qword ptr [rsp + 0x18]
	mov	r10, qword ptr [rax + 0x98]
	mov	rax, qword ptr [rax + 0xc8]
	xor	r15d, r15d
	test	rax, rax
	jle	.label_1760
	mov	rdx, qword ptr [rsp + 0x18]
	mov	rbp, qword ptr [rdx + 0xd8]
	xor	r15d, r15d
	mov	rdx, rax
	nop	word ptr cs:[rax + rax]
.label_1790:
	lea	rsi, [rdx + r15]
	mov	rdi, rsi
	shr	rdi, 0x3f
	add	rdi, rsi
	sar	rdi, 1
	lea	rsi, [rdi + rdi*4]
	cmp	qword ptr [rbp + rsi*8 + 8], rcx
	cmovge	rdx, rdi
	lea	rsi, [rdi + 1]
	cmovl	r15, rsi
	cmp	r15, rdx
	jl	.label_1790
.label_1760:
	cmp	r15, rax
	mov	rdx, qword ptr [rsp + 0x38]
	jge	.label_1779
	cmp	r15, -1
	je	.label_1779
	mov	rax, qword ptr [rsp + 0x18]
	mov	rax, qword ptr [rax + 0xd8]
	lea	rsi, [r15 + r15*4]
	mov	qword ptr [rsp + 0x48], rsi
	cmp	qword ptr [rax + rsi*8 + 8], rcx
	jne	.label_1779
	mov	qword ptr [rsp + 0x50], 0
	mov	rax, qword ptr [rsp + 0x40]
	cmp	qword ptr [rax + 8], 0
	jle	.label_1779
	lea	rax, [rdx + 0x20]
	mov	qword ptr [rsp + 0x28], rax
	lea	rax, [rcx + 1]
	mov	qword ptr [rsp + 0x90], rax
	xor	eax, eax
	mov	qword ptr [rsp + 0x20], rax
	shl	qword ptr [rsp + 0x48], 3
	mov	qword ptr [rsp + 0x30], r10
	nop	word ptr cs:[rax + rax]
.label_1810:
	mov	rax, qword ptr [rsp + 0x40]
	mov	rax, qword ptr [rax + 0x10]
	mov	rdx, qword ptr [rsp + 0x20]
	mov	r14, qword ptr [rax + rdx*8]
	mov	rax, qword ptr [r10]
	mov	rdx, r14
	shl	rdx, 4
	movzx	eax, byte ptr [rax + rdx + 8]
	mov	r12, qword ptr [rsp + 0x38]
	cmp	r14, qword ptr [r12 + 0x10]
	jne	.label_1809
	cmp	eax, 4
	jne	.label_1769
	cmp	qword ptr [r12 + 0x18], rcx
	jne	.label_1771
	jmp	.label_1769
	nop	word ptr cs:[rax + rax]
.label_1809:
	cmp	eax, 4
	jne	.label_1769
.label_1771:
	mov	rax, qword ptr [rsp + 0x18]
	mov	rbx, qword ptr [rax + 0xd8]
	add	rbx, qword ptr [rsp + 0x48]
	mov	r13, r15
	nop	dword ptr [rax]
.label_1807:
	cmp	qword ptr [rbx], r14
	jne	.label_1761
	mov	rax, qword ptr [rbx + 0x18]
	mov	rdx, qword ptr [rbx + 0x10]
	mov	r9, rax
	sub	r9, rdx
	add	r9, rcx
	cmp	rax, rdx
	je	.label_1767
	lea	rsi, [r14*8]
	add	rsi, qword ptr [r10 + 0x18]
	jmp	.label_1788
.label_1767:
	mov	rax, qword ptr [r10 + 0x28]
	lea	rdx, [r14 + r14*2]
	mov	rsi, qword ptr [rax + rdx*8 + 0x10]
.label_1788:
	cmp	r9, qword ptr [r12 + 0x18]
	jg	.label_1761
	mov	rax, qword ptr [r12]
	mov	rdx, qword ptr [rax + r9*8]
	test	rdx, rdx
	je	.label_1761
	mov	rax, qword ptr [rdx + 0x10]
	test	rax, rax
	jle	.label_1761
	mov	r8, qword ptr [rsi]
	dec	rax
	mov	rbp, qword ptr [rdx + 0x18]
	mov	edx, 0
	je	.label_1801
	xor	edx, edx
	nop	word ptr cs:[rax + rax]
.label_1763:
	lea	rsi, [rdx + rax]
	shr	rsi, 1
	cmp	qword ptr [rbp + rsi*8], r8
	lea	rdi, [rsi + 1]
	cmovl	rdx, rdi
	cmovge	rax, rsi
	cmp	rdx, rax
	jb	.label_1763
.label_1801:
	cmp	rdx, -1
	je	.label_1761
	cmp	qword ptr [rbp + rdx*8], r8
	jne	.label_1761
	mov	rdi, qword ptr [rsp + 0x18]
	mov	rsi, qword ptr [rsp + 0x28]
	mov	rdx, r14
	call	check_dst_limits
	mov	r10, qword ptr [rsp + 0x30]
	mov	rcx, qword ptr [rsp + 0x10]
	test	al, al
	jne	.label_1761
	cmp	qword ptr [rsp + 0x50], 0
	jne	.label_1774
	mov	rax, qword ptr [r12 + 0x30]
	mov	qword ptr [rsp + 0x80], rax
	movups	xmm0, xmmword ptr [r12]
	movups	xmm1, xmmword ptr [r12 + 0x10]
	movups	xmm2, xmmword ptr [r12 + 0x20]
	movaps	xmmword ptr [rsp + 0x70], xmm2
	movaps	xmmword ptr [rsp + 0x60], xmm1
	movaps	xmmword ptr [rsp + 0x50], xmm0
	mov	rbx, qword ptr [r12 + 0x28]
	mov	qword ptr [rsp + 0x78], rbx
	test	rbx, rbx
	jle	.label_1792
	mov	qword ptr [rsp + 0x70], rbx
	shl	rbx, 3
	mov	rdi, rbx
	call	malloc
	mov	qword ptr [rsp + 0x80], rax
	test	rax, rax
	je	.label_1793
	mov	rsi, qword ptr [r12 + 0x30]
	mov	rdi, rax
	mov	rdx, rbx
	call	memcpy
	mov	rcx, qword ptr [rsp + 0x10]
	jmp	.label_1774
.label_1792:
	lea	rax, [rsp + 0x70]
	xorps	xmm0, xmm0
	movups	xmmword ptr [rax], xmm0
	mov	qword ptr [rax + 0x10], 0
.label_1774:
	mov	qword ptr [rsp + 0x60], r14
	mov	qword ptr [rsp + 0x68], rcx
	lea	rdi, [rsp + 0x70]
	mov	rsi, r13
	call	re_node_set_insert
	mov	rcx, qword ptr [rsp + 0x10]
	mov	r12d, 0xc
	test	al, al
	je	.label_1776
	mov	rbp, qword ptr [rsp + 0x50]
	mov	rbx, qword ptr [rbp + rcx*8]
	mov	rdi, qword ptr [rsp + 0x18]
	lea	rsi, [rsp + 0x50]
	call	sift_states_backward
	mov	r10, qword ptr [rsp + 0x30]
	mov	rcx, qword ptr [rsp + 0x10]
	mov	r12d, eax
	test	r12d, r12d
	jne	.label_1776
	mov	rax, qword ptr [rsp + 0x38]
	mov	rsi, qword ptr [rax + 8]
	test	rsi, rsi
	je	.label_1804
	mov	rdi, r10
	mov	rdx, rbp
	mov	rcx, qword ptr [rsp + 0x90]
	call	merge_state_array
	mov	r10, qword ptr [rsp + 0x30]
	mov	rcx, qword ptr [rsp + 0x10]
	mov	r12d, eax
	test	r12d, r12d
	jne	.label_1776
.label_1804:
	mov	qword ptr [rbp + rcx*8], rbx
	mov	rsi, qword ptr [rsp + 0x78]
	test	rsi, rsi
	jle	.label_1764
	mov	rbp, rsi
	dec	rbp
	mov	r8, qword ptr [rsp + 0x80]
	mov	edx, 0
	je	.label_1795
	mov	rdi, rbp
	xor	edx, edx
	nop	word ptr [rax + rax]
.label_1808:
	lea	rbx, [rdx + rdi]
	shr	rbx, 1
	cmp	qword ptr [r8 + rbx*8], r13
	lea	rax, [rbx + 1]
	cmovl	rdx, rax
	cmovge	rdi, rbx
	cmp	rdx, rdi
	jb	.label_1808
.label_1795:
	cmp	qword ptr [r8 + rdx*8], r13
	mov	rdi, -1
	cmove	rdi, rdx
	test	rdi, rdi
	js	.label_1764
	cmp	rsi, rdi
	jle	.label_1764
	mov	qword ptr [rsp + 0x78], rbp
	cmp	rbp, rdi
	jle	.label_1764
	lea	r12, [rdx + 1]
	cmp	rbp, r12
	mov	r11, r12
	cmovge	r11, rbp
	sub	r11, rdx
	cmp	r11, 4
	jb	.label_1805
	mov	rax, r11
	and	rax, 0xfffffffffffffffc
	mov	r9, r11
	and	r9, 0xfffffffffffffffc
	je	.label_1805
	cmp	rbp, r12
	cmovge	r12, rbp
	sub	r12, rdx
	add	r12, -4
	shr	r12, 2
	lea	r10d, [r12 + 1]
	and	r10d, 1
	test	r12, r12
	mov	edi, 0
	je	.label_1783
	lea	rbx, [r8 + rdx*8 + 0x38]
	lea	rsi, [r10 - 1]
	sub	rsi, r12
	xor	edi, edi
	nop	dword ptr [rax]
.label_1777:
	movups	xmm0, xmmword ptr [rbx + rdi*8 - 0x30]
	movups	xmm1, xmmword ptr [rbx + rdi*8 - 0x20]
	movups	xmmword ptr [rbx + rdi*8 - 0x38], xmm0
	movups	xmmword ptr [rbx + rdi*8 - 0x28], xmm1
	movups	xmm0, xmmword ptr [rbx + rdi*8 - 0x10]
	movups	xmm1, xmmword ptr [rbx + rdi*8]
	movups	xmmword ptr [rbx + rdi*8 - 0x18], xmm0
	movups	xmmword ptr [rbx + rdi*8 - 8], xmm1
	add	rdi, 8
	add	rsi, 2
	jne	.label_1777
.label_1783:
	test	r10, r10
	je	.label_1797
	add	rdi, rdx
	movups	xmm0, xmmword ptr [r8 + rdi*8 + 8]
	movups	xmm1, xmmword ptr [r8 + rdi*8 + 0x18]
	movups	xmmword ptr [r8 + rdi*8], xmm0
	movups	xmmword ptr [r8 + rdi*8 + 0x10], xmm1
.label_1797:
	cmp	r11, r9
	mov	rcx, qword ptr [rsp + 0x10]
	mov	r10, qword ptr [rsp + 0x30]
	je	.label_1764
	add	rdx, rax
	nop	word ptr cs:[rax + rax]
.label_1805:
	mov	rax, qword ptr [r8 + rdx*8 + 8]
	mov	qword ptr [r8 + rdx*8], rax
	inc	rdx
	cmp	rdx, rbp
	jl	.label_1805
.label_1764:
	lea	rbx, [r13 + r13*4]
	shl	rbx, 3
	mov	rax, qword ptr [rsp + 0x18]
	add	rbx, qword ptr [rax + 0xd8]
	mov	r12, qword ptr [rsp + 0x38]
	nop	dword ptr [rax + rax]
.label_1761:
	inc	r13
	cmp	byte ptr [rbx + 0x20], 0
	lea	rbx, [rbx + 0x28]
	jne	.label_1807
.label_1769:
	mov	rax, qword ptr [rsp + 0x20]
	mov	rsi, rax
	inc	rsi
	xor	r12d, r12d
	mov	rax, qword ptr [rsp + 0x40]
	mov	rdx, rsi
	mov	qword ptr [rsp + 0x20], rdx
	cmp	rsi, qword ptr [rax + 8]
	jl	.label_1810
.label_1776:
	cmp	qword ptr [rsp + 0x50], 0
	je	.label_1766
	mov	rdi, qword ptr [rsp + 0x80]
	call	free
.label_1766:
	mov	dword ptr [rsp + 0xc], r12d
	test	r12d, r12d
	je	.label_1772
	jmp	.label_1773
.label_1779:
	mov	dword ptr [rsp + 0xc], 0
.label_1772:
	xor	r12d, r12d
.label_1773:
	mov	eax, r12d
	add	rsp, 0x98
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_1762:
	mov	dword ptr [rsp + 0xc], r12d
	jmp	.label_1773
.label_1793:
	xorps	xmm0, xmm0
	lea	rax, [rsp + 0x70]
	movups	xmmword ptr [rax], xmm0
	mov	r12d, 0xc
	jmp	.label_1776
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x411c80

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
	jle	.label_1813
	mov	r13, qword ptr [r15 + 0x98]
	xor	ebx, ebx
	jmp	.label_1814
.label_1815:
	mov	rdi, qword ptr [r15 + 0xf8]
	mov	rsi, r14
	shl	rsi, 4
	call	realloc
	mov	rcx, rax
	mov	eax, 0xc
	test	rcx, rcx
	je	.label_1813
	add	r14, r14
	mov	qword ptr [r15 + 0xf8], rcx
	mov	qword ptr [r15 + 0xf0], r14
	jmp	.label_1817
	nop	word ptr [rax + rax]
.label_1814:
	mov	rax, qword ptr [r12 + 0x10]
	mov	rbp, qword ptr [rax + rbx*8]
	mov	rax, qword ptr [r13]
	mov	rdx, rbp
	shl	rdx, 4
	cmp	byte ptr [rax + rdx + 8], 8
	jne	.label_1816
	mov	rax, qword ptr [rax + rdx]
	cmp	rax, 0x3f
	jg	.label_1816
	mov	rdx, qword ptr [r13 + 0xa0]
	bt	rdx, rax
	jae	.label_1816
	mov	r14, qword ptr [r15 + 0xe8]
	cmp	r14, qword ptr [r15 + 0xf0]
	je	.label_1815
.label_1817:
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
	je	.label_1813
	mov	qword ptr [rdx + 8], rbp
	inc	rcx
	mov	qword ptr [r15 + 0xe8], rcx
	mov	rax, qword ptr [rsp]
	mov	qword ptr [rdx], rax
	mov	rcx, qword ptr [r12 + 8]
	nop	word ptr [rax + rax]
.label_1816:
	inc	rbx
	xor	eax, eax
	cmp	rbx, rcx
	jl	.label_1814
.label_1813:
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	dword ptr [rax]
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
	js	.label_250
	movabs	rax, 0x7fffffffffffffff
	test	rbx, rbx
	js	.label_588
	sub	rax, rbx
	cmp	rax, r14
	jl	.label_250
	lea	rdx, [rbx + r14]
	xor	r12d, r12d
	test	rbx, rbx
	jle	.label_339
	xor	r12d, r12d
	test	r14, r14
	jle	.label_592
	mov	qword ptr [rsp + 8], rdi
	mov	qword ptr [rsp], rdx
	mov	rdi, rdx
	mov	qword ptr [rsp + 0x10], r9
	call	malloc
	mov	r12, rax
	test	r12, r12
	je	.label_250
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
	jmp	.label_339
.label_604:
	add	rbx, r14
	xor	r12d, r12d
	mov	rdx, rbx
	jmp	.label_339
.label_588:
	inc	rax
	sub	rax, rbx
	cmp	rax, r14
	jle	.label_604
.label_250:
	mov	rax, -2
	jmp	.label_477
.label_592:
	mov	r13, r15
.label_339:
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
.label_477:
	add	rsp, 0x18
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x411ec0

	.globl version_etc_va
	.type version_etc_va, @function
version_etc_va:
	movsxd	r10, dword ptr [r8]
	cmp	r10, 0x28
	ja	.label_1818
	mov	r9, r10
	add	r9, qword ptr [r8 + 0x10]
	lea	r10d, [r10 + 8]
	mov	dword ptr [r8], r10d
	jmp	.label_1820
.label_1818:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_1820:
	sub	rsp, 0x58
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp], rax
	xor	r9d, r9d
	test	rax, rax
	je	.label_1821
	cmp	r10d, 0x29
	jae	.label_1830
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_1819
.label_1830:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_1819:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 8], rax
	mov	r9d, 1
	test	rax, rax
	je	.label_1821
	cmp	r10d, 0x29
	jae	.label_1828
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_1829
.label_1828:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_1829:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x10], rax
	mov	r9d, 2
	test	rax, rax
	je	.label_1821
	cmp	r10d, 0x29
	jae	.label_1826
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_1827
.label_1826:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_1827:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x18], rax
	mov	r9d, 3
	test	rax, rax
	je	.label_1821
	cmp	r10d, 0x29
	jae	.label_1824
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_1825
.label_1824:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_1825:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x20], rax
	mov	r9d, 4
	test	rax, rax
	je	.label_1821
	cmp	r10d, 0x29
	jae	.label_1822
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_1823
.label_1822:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_1823:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x28], rax
	mov	r9d, 5
	test	rax, rax
	je	.label_1821
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x30], rax
	mov	r9d, 6
	test	rax, rax
	je	.label_1821
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x38], rax
	mov	r9d, 7
	test	rax, rax
	je	.label_1821
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x40], rax
	mov	r9d, 8
	test	rax, rax
	je	.label_1821
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x48], rax
	cmp	rax, 1
	mov	r9d, 9
	sbb	r9, -1
.label_1821:
	lea	r8, [rsp]
	call	version_etc_arn
	add	rsp, 0x58
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4120b0

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
	jle	.label_1833
	xor	r12d, r12d
	nop	dword ptr [rax]
.label_1835:
	mov	rax, qword ptr [r14 + 0xf8]
	mov	r15, qword ptr [rax + r12*8]
	cmp	qword ptr [r15 + 0x20], 0
	jle	.label_1831
	xor	ebx, ebx
	nop	word ptr cs:[rax + rax]
.label_1832:
	mov	rax, qword ptr [r15 + 0x28]
	mov	r13, qword ptr [rax + rbx*8]
	mov	rdi, qword ptr [r13 + 0x20]
	call	free
	mov	rdi, r13
	call	free
	inc	rbx
	cmp	rbx, qword ptr [r15 + 0x20]
	jl	.label_1832
.label_1831:
	mov	rdi, qword ptr [r15 + 0x28]
	call	free
	mov	rax, qword ptr [r15 + 0x10]
	test	rax, rax
	je	.label_1834
	mov	rdi, qword ptr [rax + 0x10]
	call	free
	mov	rdi, qword ptr [r15 + 0x10]
	call	free
.label_1834:
	mov	rdi, r15
	call	free
	inc	r12
	cmp	r12, qword ptr [r14 + 0xe8]
	jl	.label_1835
.label_1833:
	mov	qword ptr [r14 + 0xe8], 0
	mov	qword ptr [r14 + 0xc8], 0
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	ret	
	nop	word ptr [rax + rax]
.label_552:
	call	abort
	nop	dword ptr [rax + rax]
	sub	rsp, 0x78
	xorps	xmm0, xmm0
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp + 0x30], 0
	cmp	esi, 0xa
	je	.label_552
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
	#Procedure 0x4121e0

	.globl set_program_name
	.type set_program_name, @function
set_program_name:
	push	r14
	push	rbx
	push	rax
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_1836
	mov	esi, 0x2f
	mov	rdi, rbx
	call	strrchr
	test	rax, rax
	lea	r14, [rax + 1]
	cmove	r14, rbx
	mov	rax, r14
	sub	rax, rbx
	cmp	rax, 7
	jl	.label_1838
	lea	rdi, [r14 - 7]
	mov	esi, OFFSET FLAT:label_1840
	mov	edx, 7
	call	strncmp
	test	eax, eax
	jne	.label_1838
	mov	esi, OFFSET FLAT:label_1839
	mov	edx, 3
	mov	rdi, r14
	call	strncmp
	test	eax, eax
	jne	.label_1841
	add	r14, 3
	mov	qword ptr [rip + __progname],  r14
.label_1841:
	mov	rbx, r14
.label_1838:
	mov	qword ptr [rip + program_name],  rbx
	mov	qword ptr [rip + __progname_full],  rbx
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
.label_1836:
	mov	rcx, qword ptr [rip + stderr]
	mov	edi, OFFSET FLAT:label_1837
	mov	esi, 0x37
	mov	edx, 1
	call	fwrite
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x412290

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
	jle	.label_1868
	mov	rcx, qword ptr [rdi + 0x98]
	mov	r15, qword ptr [rdi + 0x48]
	xor	edx, edx
	mov	qword ptr [rsp + 0x20], rdi
	mov	qword ptr [rsp + 8], r15
	mov	qword ptr [rsp + 0x78], rsi
	mov	qword ptr [rsp + 0x50], rcx
	nop	dword ptr [rax]
.label_1854:
	mov	rax, qword ptr [rsi + 0x10]
	mov	qword ptr [rsp + 0x80], rdx
	mov	r14, qword ptr [rax + rdx*8]
	mov	rax, qword ptr [rcx]
	mov	rcx, r14
	mov	qword ptr [rsp + 0x48], rcx
	shl	r14, 4
	mov	ebx, dword ptr [rax + r14 + 8]
	cmp	bl, 4
	jne	.label_1844
	mov	ebp, ebx
	shr	ebp, 8
	test	bp, 0x3ff
	je	.label_1873
	mov	edx, dword ptr [rdi + 0xa0]
	mov	rsi, r15
	call	re_string_context_at
	mov	rdi, qword ptr [rsp + 0x20]
	mov	ecx, eax
	and	ecx, 1
	test	bpl, 4
	je	.label_1852
	test	ecx, ecx
	je	.label_1844
.label_1852:
	test	bh, 8
	je	.label_1862
	test	ecx, ecx
	jne	.label_1844
.label_1862:
	test	bh, 0x20
	je	.label_1866
	mov	ecx, eax
	and	ecx, 2
	je	.label_1844
.label_1866:
	test	bpl, bpl
	jns	.label_1873
	and	eax, 8
	je	.label_1844
	nop	word ptr [rax + rax]
.label_1873:
	mov	rax, qword ptr [rdi + 0xc8]
	mov	r8, qword ptr [rdi + 8]
	mov	rcx, qword ptr [rdi + 0x98]
	mov	qword ptr [rsp + 0x60], rcx
	mov	qword ptr [rsp + 0x40], rax
	test	rax, rax
	mov	eax, 0
	jle	.label_1878
	mov	rcx, qword ptr [rdi + 0xd8]
	xor	eax, eax
	mov	rdx, qword ptr [rsp + 0x40]
	nop	word ptr cs:[rax + rax]
.label_1895:
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
	jl	.label_1895
.label_1878:
	cmp	rax, qword ptr [rsp + 0x40]
	jge	.label_1905
	cmp	rax, -1
	je	.label_1905
	mov	rcx, qword ptr [rdi + 0xd8]
	lea	rax, [rax + rax*4]
	cmp	qword ptr [rcx + rax*8 + 8], r15
	jne	.label_1905
	lea	rax, [rcx + rax*8]
	nop	
.label_1913:
	mov	rcx, qword ptr [rsp + 0x48]
	cmp	qword ptr [rax], rcx
	je	.label_1846
	cmp	byte ptr [rax + 0x20], 0
	lea	rax, [rax + 0x28]
	jne	.label_1913
.label_1905:
	cmp	qword ptr [rdi + 0xe8], 0
	jle	.label_1846
	mov	rax, qword ptr [rsp + 0x60]
	mov	rax, qword ptr [rax]
	mov	r14, qword ptr [rax + r14]
	xor	ecx, ecx
	mov	qword ptr [rsp + 0x30], rcx
	xor	edx, edx
	mov	qword ptr [rsp + 0x38], r14
	jmp	.label_1851
	nop	word ptr cs:[rax + rax]
.label_1909:
	mov	rax, qword ptr [rsp + 0x60]
	mov	rax, qword ptr [rax]
.label_1851:
	mov	rcx, qword ptr [rdi + 0xf8]
	mov	r9, qword ptr [rcx + rdx*8]
	mov	rcx, qword ptr [r9 + 8]
	shl	rcx, 4
	cmp	qword ptr [rax + rcx], r14
	mov	qword ptr [rsp + 0x88], rdx
	jne	.label_1872
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x28], rax
	mov	rax, qword ptr [r9 + 0x20]
	test	rax, rax
	mov	qword ptr [rsp + 0x10], r9
	jle	.label_1879
	mov	rcx, qword ptr [rsp + 8]
	xor	r14d, r14d
	jmp	.label_1863
.label_1879:
	xor	r14d, r14d
	mov	rcx, qword ptr [rsp + 8]
	jmp	.label_1889
.label_1891:
	mov	rdx, qword ptr [rdi + 0x58]
	mov	r10d, 7
	cmp	r13, rdx
	jg	.label_1894
	mov	rsi, qword ptr [rdi + 0x40]
	mov	r12, qword ptr [rdi + 0xc0]
	cmp	rsi, r13
	setle	r9b
	cmp	rsi, rdx
	setl	sil
	cmp	rax, rdx
	jl	.label_1901
	and	r9b, sil
	je	.label_1906
.label_1901:
	lea	esi, [r13 + 1]
	mov	qword ptr [rsp + 0x70], r8
	mov	qword ptr [rsp + 0x58], rcx
	call	extend_buffers
	mov	rcx, qword ptr [rsp + 0x58]
	mov	r9, qword ptr [rsp + 0x10]
	mov	r8, qword ptr [rsp + 0x70]
	mov	rdi, qword ptr [rsp + 0x20]
	test	eax, eax
	je	.label_1906
	mov	r10d, 1
	mov	qword ptr [rsp + 0x30], rax
	jmp	.label_1894
.label_1847:
	mov	r10d, 1
	mov	qword ptr [rsp + 0x28], rbx
	mov	rcx, r13
	mov	qword ptr [rsp + 0x30], rax
	jmp	.label_1848
.label_1906:
	mov	rdx, r13
	sub	rdx, r12
	jle	.label_1858
	mov	rax, qword ptr [rdi + 0xb8]
	lea	rdi, [rax + r12*8 + 8]
	shl	rdx, 3
	xor	esi, esi
	mov	qword ptr [rsp + 0x58], rcx
	call	memset
	mov	rcx, qword ptr [rsp + 0x58]
	mov	rdi, qword ptr [rsp + 0x20]
	mov	qword ptr [rdi + 0xc0], r13
.label_1858:
	mov	r12, rbp
	mov	r8, qword ptr [rdi + 8]
	jmp	.label_1876
	nop	word ptr cs:[rax + rax]
.label_1863:
	mov	rax, qword ptr [r9 + 0x28]
	mov	rbp, qword ptr [rax + r14*8]
	mov	rbx, qword ptr [rbp + 8]
	mov	r13, rbx
	mov	rax, qword ptr [rsp + 0x28]
	sub	r13, rax
	add	r13, rcx
	mov	r15, rbx
	sub	r15, rax
	jle	.label_1896
	mov	rax, qword ptr [rdi + 0x30]
	cmp	r13, rax
	mov	qword ptr [rsp + 0x68], rbx
	jg	.label_1891
	mov	r12, rbp
.label_1876:
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
	jne	.label_1894
.label_1896:
	mov	rsi, r9
	mov	rdx, rbp
	mov	rcx, qword ptr [rsp + 0x48]
	mov	r8, qword ptr [rsp + 8]
	call	get_subexp_sub
	mov	rdi, qword ptr [rsp + 0x20]
	mov	r8, qword ptr [rdi + 8]
	mov	r10d, 9
	cmp	eax, 1
	je	.label_1911
	test	eax, eax
	jne	.label_1847
	xor	r10d, r10d
.label_1911:
	mov	qword ptr [rsp + 0x28], rbx
	mov	rcx, r13
.label_1848:
	mov	r9, qword ptr [rsp + 0x10]
.label_1894:
	mov	eax, r10d
	and	al, 0xf
	je	.label_1857
	cmp	al, 9
	jne	.label_1861
.label_1857:
	inc	r14
	mov	rax, qword ptr [r9 + 0x20]
	cmp	r14, rax
	jl	.label_1863
	jmp	.label_1889
.label_1861:
	cmp	al, 7
	jne	.label_1887
	mov	rax, qword ptr [r9 + 0x20]
	nop	
.label_1889:
	cmp	r14, rax
	jge	.label_1875
	mov	r15, qword ptr [rsp + 8]
	mov	r14, qword ptr [rsp + 0x38]
	jmp	.label_1872
	nop	word ptr cs:[rax + rax]
.label_1875:
	xor	ebx, ebx
	test	r14, r14
	setg	bl
	add	rbx, qword ptr [rsp + 0x28]
	mov	r15, qword ptr [rsp + 8]
	cmp	rbx, r15
	jle	.label_1880
	mov	r14, qword ptr [rsp + 0x38]
	jmp	.label_1872
.label_1880:
	mov	r14, qword ptr [rsp + 0x38]
	jmp	.label_1890
.label_1885:
	cmp	r13, -1
	je	.label_1865
	mov	rbp, r8
	mov	rsi, qword ptr [r9 + 0x10]
	test	rsi, rsi
	jne	.label_1898
	lea	rsi, [rbx + 1]
	sub	rsi, qword ptr [r9]
	mov	edi, 0x18
	call	rpl_calloc
	mov	r9, qword ptr [rsp + 0x10]
	mov	rdi, qword ptr [rsp + 0x20]
	mov	rsi, rax
	mov	qword ptr [r9 + 0x10], rsi
	test	rsi, rsi
	je	.label_1855
.label_1898:
	mov	rcx, qword ptr [r9]
	mov	rdx, qword ptr [r9 + 8]
	mov	dword ptr [rsp], 9
	mov	r8, r13
	mov	r9, rbx
	call	check_arrival
	cmp	eax, 1
	jne	.label_1882
	mov	rcx, r15
	mov	rdi, qword ptr [rsp + 0x20]
	mov	r15, qword ptr [rsp + 8]
	mov	r8, rbp
	mov	r9, qword ptr [rsp + 0x10]
	mov	r10d, 0xc
	jmp	.label_1892
.label_1882:
	test	eax, eax
	mov	r8, rbp
	jne	.label_1903
	mov	rcx, qword ptr [rsp + 0x10]
	mov	r14, qword ptr [rcx + 0x20]
	cmp	r14, qword ptr [rcx + 0x18]
	je	.label_1908
.label_1899:
	mov	edi, 1
	mov	esi, 0x28
	call	rpl_calloc
	mov	r10d, 1
	test	rax, rax
	je	.label_1871
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
	jne	.label_1888
	mov	r10d, 0xc
	jmp	.label_1843
.label_1888:
	test	eax, eax
	jne	.label_1870
	xor	r10d, r10d
.label_1843:
	mov	rcx, r15
.label_1860:
	mov	r15, qword ptr [rsp + 8]
.label_1883:
	mov	r9, qword ptr [rsp + 0x10]
	jmp	.label_1892
.label_1855:
	mov	eax, 0xc
	mov	qword ptr [rsp + 0x30], rax
	mov	r10d, 1
	mov	rcx, r15
	mov	r15, qword ptr [rsp + 8]
	mov	r8, rbp
	jmp	.label_1892
.label_1850:
	mov	r10d, 0xa
	cmp	rcx, qword ptr [rdi + 0x58]
	jge	.label_1892
	mov	r14, r8
	mov	r12, rcx
	lea	r15, [rcx + 1]
	mov	esi, r15d
	mov	rbp, rdi
	call	extend_buffers
	test	eax, eax
	jne	.label_1867
	mov	r8, qword ptr [rbp + 8]
	mov	rdi, rbp
	mov	r14, qword ptr [rsp + 0x38]
	mov	r9, qword ptr [rsp + 0x10]
	mov	rcx, r12
	jmp	.label_1864
.label_1903:
	mov	r10d, 1
	mov	rcx, r15
	mov	qword ptr [rsp + 0x30], rax
	mov	rdi, qword ptr [rsp + 0x20]
	jmp	.label_1860
.label_1908:
	lea	rax, [r14 + r14]
	mov	rdi, qword ptr [rcx + 0x28]
	lea	rsi, [rax*8 + 8]
	mov	r12, rcx
	call	realloc
	test	rax, rax
	je	.label_1910
	lea	rcx, [r14 + r14 + 1]
	mov	qword ptr [r12 + 0x28], rax
	mov	qword ptr [r12 + 0x18], rcx
	jmp	.label_1899
.label_1871:
	mov	rcx, r15
	mov	eax, 0xc
	mov	qword ptr [rsp + 0x30], rax
	mov	rdi, qword ptr [rsp + 0x20]
	mov	r15, qword ptr [rsp + 8]
	mov	r8, rbp
	mov	r14, qword ptr [rsp + 0x38]
	jmp	.label_1883
.label_1870:
	mov	rcx, r15
	mov	qword ptr [rsp + 0x30], rax
	mov	r15, qword ptr [rsp + 8]
	mov	r9, qword ptr [rsp + 0x10]
	mov	r10d, 1
	jmp	.label_1892
.label_1867:
	mov	r10d, 1
	mov	qword ptr [rsp + 0x30], rax
	mov	rdi, rbp
	mov	r15, qword ptr [rsp + 8]
	mov	r8, r14
	mov	r14, qword ptr [rsp + 0x38]
	mov	r9, qword ptr [rsp + 0x10]
	mov	rcx, r12
	jmp	.label_1892
.label_1910:
	mov	eax, 0xc
	mov	qword ptr [rsp + 0x30], rax
	mov	r10d, 1
	mov	rcx, r15
	mov	rdi, qword ptr [rsp + 0x20]
	mov	r15, qword ptr [rsp + 8]
	mov	r8, rbp
	mov	r14, qword ptr [rsp + 0x38]
	mov	r9, r12
	jmp	.label_1892
	nop	word ptr [rax + rax]
.label_1890:
	cmp	rbx, qword ptr [r9]
	jle	.label_1849
	cmp	rcx, qword ptr [rdi + 0x30]
	jge	.label_1850
	lea	r15, [rcx + 1]
.label_1864:
	mov	al, byte ptr [r8 + rcx]
	mov	r10d, 0xa
	cmp	al, byte ptr [r8 + rbx - 1]
	je	.label_1856
	jmp	.label_1865
	nop	word ptr cs:[rax + rax]
.label_1849:
	mov	r15, rcx
.label_1856:
	mov	rax, qword ptr [rdi + 0xb8]
	mov	rcx, qword ptr [rax + rbx*8]
	mov	r10d, 0xc
	test	rcx, rcx
	je	.label_1865
	mov	rax, qword ptr [rcx + 0x10]
	test	rax, rax
	jle	.label_1865
	mov	rcx, qword ptr [rcx + 0x18]
	mov	rdx, qword ptr [rsp + 0x60]
	mov	rdx, qword ptr [rdx]
	xor	esi, esi
.label_1886:
	mov	r13, qword ptr [rcx + rsi*8]
	mov	rbp, r13
	shl	rbp, 4
	cmp	byte ptr [rdx + rbp + 8], 9
	jne	.label_1881
	cmp	qword ptr [rdx + rbp], r14
	je	.label_1885
.label_1881:
	inc	rsi
	cmp	rsi, rax
	jl	.label_1886
.label_1865:
	mov	rcx, r15
	mov	r15, qword ptr [rsp + 8]
.label_1892:
	mov	eax, r10d
	and	al, 0xf
	je	.label_1893
	cmp	al, 0xc
	jne	.label_1897
.label_1893:
	cmp	rbx, r15
	lea	rbx, [rbx + 1]
	jl	.label_1890
	jmp	.label_1872
.label_1887:
	mov	r15, qword ptr [rsp + 8]
	mov	r14, qword ptr [rsp + 0x38]
	jmp	.label_1902
.label_1897:
	cmp	al, 0xa
	je	.label_1872
.label_1902:
	cmp	r10d, 6
	je	.label_1872
	test	r10d, r10d
	jne	.label_1904
	nop	word ptr cs:[rax + rax]
.label_1872:
	mov	rdx, qword ptr [rsp + 0x88]
	inc	rdx
	cmp	rdx, qword ptr [rdi + 0xe8]
	jl	.label_1909
.label_1846:
	mov	dword ptr [rsp + 0x1c], 0
	mov	rbx, qword ptr [rsp + 0x40]
.label_1845:
	cmp	rbx, qword ptr [rdi + 0xc8]
	jge	.label_1844
	lea	rax, [rbx + rbx*4]
	lea	rbp, [rax*8 + 0x18]
	nop	
.label_1842:
	mov	rax, qword ptr [rdi + 0xd8]
	mov	rcx, qword ptr [rsp + 0x48]
	cmp	qword ptr [rax + rbp - 0x18], rcx
	jne	.label_1853
	cmp	qword ptr [rax + rbp - 0x10], r15
	jne	.label_1853
	mov	rdx, qword ptr [rax + rbp - 8]
	mov	rsi, qword ptr [rax + rbp]
	mov	rcx, qword ptr [rsp + 0x50]
	mov	r14, qword ptr [rcx + 0x30]
	cmp	rsi, rdx
	mov	qword ptr [rsp + 0x40], rbx
	jne	.label_1869
	mov	rax, qword ptr [rcx + 0x28]
	mov	rcx, qword ptr [rsp + 0x48]
	lea	rcx, [rcx + rcx*2]
	mov	rax, qword ptr [rax + rcx*8 + 0x10]
	jmp	.label_1877
.label_1869:
	mov	rax, qword ptr [rsp + 0x48]
	lea	rax, [rax*8]
	add	rax, qword ptr [rcx + 0x18]
.label_1877:
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
	je	.label_1900
	mov	rdx, qword ptr [rcx + 0x10]
.label_1900:
	mov	qword ptr [rsp + 0x68], rdx
	lea	r12, [r14 + r15*8]
	test	rax, rax
	lea	rcx, [rsp + 0x90]
	je	.label_1907
	mov	rsi, qword ptr [rax + 0x50]
	mov	r14, rcx
	mov	rdi, r14
	mov	rdx, r12
	call	re_node_set_init_union
	mov	dword ptr [rsp + 0x1c], eax
	test	eax, eax
	mov	r15, qword ptr [rsp + 8]
	jne	.label_1912
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
	jne	.label_1874
	mov	eax, dword ptr [rsp + 0x1c]
	test	eax, eax
	je	.label_1874
	jmp	.label_1859
.label_1907:
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
	jne	.label_1874
	mov	eax, dword ptr [rsp + 0x1c]
	test	eax, eax
	mov	rbx, qword ptr [rsp + 0x40]
	mov	rdx, qword ptr [rsp + 0x28]
	mov	rsi, qword ptr [rsp + 0x10]
	je	.label_1884
	jmp	.label_1859
.label_1874:
	mov	rbx, qword ptr [rsp + 0x40]
	mov	rdx, qword ptr [rsp + 0x28]
	mov	rsi, qword ptr [rsp + 0x10]
.label_1884:
	cmp	rsi, rdx
	jne	.label_1853
	mov	rax, qword ptr [rcx + r15*8]
	mov	rcx, qword ptr [rsp + 0x68]
	cmp	qword ptr [rax + 0x10], rcx
	jle	.label_1853
	mov	rsi, r12
	mov	rdx, r15
	call	check_subexp_matching_top
	mov	rdi, qword ptr [rsp + 0x20]
	mov	dword ptr [rsp + 0x1c], eax
	test	eax, eax
	jne	.label_1859
	mov	rsi, r12
	call	transit_state_bkref
	mov	rdi, qword ptr [rsp + 0x20]
	mov	dword ptr [rsp + 0x1c], eax
	test	eax, eax
	jne	.label_1859
	nop	
.label_1853:
	inc	rbx
	add	rbp, 0x28
	cmp	rbx, qword ptr [rdi + 0xc8]
	jl	.label_1842
	nop	word ptr cs:[rax + rax]
.label_1844:
	mov	rdx, qword ptr [rsp + 0x80]
	inc	rdx
	mov	rsi, qword ptr [rsp + 0x78]
	cmp	rdx, qword ptr [rsi + 8]
	mov	rcx, qword ptr [rsp + 0x50]
	jl	.label_1854
	jmp	.label_1868
.label_1904:
	mov	rax, qword ptr [rsp + 0x30]
	mov	dword ptr [rsp + 0x1c], eax
	test	eax, eax
	mov	rbx, qword ptr [rsp + 0x40]
	je	.label_1845
	jmp	.label_1859
.label_1868:
	mov	dword ptr [rsp + 0x1c], 0
	xor	eax, eax
.label_1859:
	add	rsp, 0xa8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_1912:
	mov	rdi, qword ptr [rsp + 0xa0]
	mov	rbx, rax
	call	free
	mov	rax, rbx
	jmp	.label_1859
	nop	word ptr [rax + rax]
.label_543:
	call	abort
	nop	word ptr [rax + rax]
	sub	rsp, 0x38
	mov	rax, qword ptr [rip + label_267]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0, xmmword ptr [rip + label_268]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_269]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rsi, rsi
	je	.label_543
	test	rdx, rdx
	je	.label_543
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
	.align	16
	#Procedure 0x412d00

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
	ja	.label_237
	jmp	qword ptr [(rbp * 8) + label_1914]
.label_2392:
	cmp	byte ptr [rsi], cl
	je	.label_294
	xor	eax, eax
	jmp	.label_237
.label_2393:
	mov	rax, qword ptr [rsi]
	mov	ebx, ecx
	shr	bl, 6
	movzx	esi, bl
	mov	rax, qword ptr [rax + rsi*8]
	bt	rax, rcx
	jb	.label_294
	xor	eax, eax
	jmp	.label_237
.label_2395:
	test	cl, cl
	js	.label_567
.label_2394:
	test	cl, cl
	je	.label_569
	cmp	cl, 0xa
	jne	.label_294
	mov	rax, qword ptr [rdi + 0x98]
	test	byte ptr [rax + 0xd8], 0x40
	jne	.label_294
	xor	eax, eax
	jmp	.label_237
.label_569:
	mov	rax, qword ptr [rdi + 0x98]
	cmp	byte ptr [rax + 0xd8], 0
	js	.label_572
.label_294:
	mov	eax, r14d
	mov	ebp, eax
	shr	ebp, 8
	mov	al, 1
	test	bp, 0x3ff
	je	.label_237
	mov	eax, dword ptr [rdi + 0xa0]
	mov	rsi, rdx
	mov	edx, eax
	call	re_string_context_at
	mov	ecx, eax
	and	ecx, 1
	test	bpl, 4
	je	.label_289
	test	ecx, ecx
	jne	.label_289
	xor	eax, eax
	jmp	.label_237
.label_289:
	mov	edx, r14d
	test	dh, 8
	je	.label_208
	test	ecx, ecx
	je	.label_208
.label_567:
	xor	eax, eax
	jmp	.label_237
.label_208:
	mov	ecx, r14d
	test	ch, 0x20
	je	.label_232
	mov	ecx, eax
	and	ecx, 2
	jne	.label_232
.label_572:
	xor	eax, eax
	jmp	.label_237
.label_232:
	and	eax, 8
	test	bpl, bpl
	setns	cl
	shr	eax, 3
	or	al, cl
.label_237:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x412df0

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
	movaps	xmm0, xmmword ptr [rip + label_806]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	mov	edi, 8
	call	malloc
	mov	qword ptr [rsp + 0x30], rax
	test	rax, rax
	je	.label_1923
	mov	qword ptr [rax], rbx
	lea	rcx, [rsp + 0x20]
	mov	rdi, r13
	mov	rsi, r14
	mov	rdx, r15
	call	update_cur_sifted_state
	mov	ebp, eax
	test	ebp, ebp
	jne	.label_1918
	lea	rax, [r14 + 0x20]
	mov	qword ptr [rsp + 0x38], rax
	mov	dword ptr [rsp + 0x14], 0
	nop	word ptr cs:[rax + rax]
.label_1916:
	mov	rdx, r15
	test	rdx, rdx
	jle	.label_1932
	mov	rdi, qword ptr [r14]
	mov	ecx, dword ptr [rsp + 0x14]
	inc	ecx
	cmp	qword ptr [rdi + rdx*8], 0
	mov	eax, 0
	cmovne	ecx, eax
	cmp	ecx, dword ptr [r13 + 0xe0]
	jg	.label_1933
	mov	dword ptr [rsp + 0x14], ecx
	mov	qword ptr [rsp + 0x28], 0
	lea	r15, [rdx - 1]
	mov	rax, qword ptr [r13 + 0xb8]
	mov	qword ptr [rsp + 0x40], rdx
	mov	rax, qword ptr [rax + rdx*8 - 8]
	test	rax, rax
	je	.label_1921
	cmp	qword ptr [rax + 0x28], 0
	jle	.label_1921
	mov	rcx, qword ptr [r13 + 0x98]
	mov	qword ptr [rsp + 0x18], rcx
	xor	ebx, ebx
	mov	qword ptr [rsp + 0x50], rax
	nop	dword ptr [rax + rax]
.label_1930:
	mov	rax, qword ptr [rax + 0x30]
	mov	r12, qword ptr [rax + rbx*8]
	mov	rax, qword ptr [rsp + 0x18]
	mov	rax, qword ptr [rax]
	mov	rcx, r12
	mov	qword ptr [rsp + 8], rcx
	shl	r12, 4
	test	byte ptr [rax + r12 + 0xa], 0x10
	je	.label_1917
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
	jle	.label_1927
	movsxd	rcx, eax
	mov	rsi, r14
	add	rcx, r14
	cmp	rcx, qword ptr [rsp + 0x48]
	jle	.label_1928
	mov	r14, r15
	mov	r15, rsi
	jmp	.label_1929
.label_1927:
	mov	rcx, r15
	mov	r15, r14
	mov	r14, rcx
	jne	.label_1929
	jmp	.label_1917
.label_1928:
	mov	r14, r15
	mov	rdx, qword ptr [r14]
	mov	rdx, qword ptr [rdx + rcx*8]
	test	rdx, rdx
	mov	r15, rsi
	je	.label_1917
	mov	rsi, qword ptr [rdx + 0x10]
	test	rsi, rsi
	jle	.label_1917
	mov	rcx, qword ptr [rbp + 0x18]
	mov	rdi, qword ptr [rsp + 8]
	mov	r8, qword ptr [rcx + rdi*8]
	dec	rsi
	mov	rdx, qword ptr [rdx + 0x18]
	mov	edi, 0
	je	.label_1919
	xor	edi, edi
	nop	dword ptr [rax]
.label_1924:
	lea	rbp, [rdi + rsi]
	shr	rbp, 1
	cmp	qword ptr [rdx + rbp*8], r8
	lea	rcx, [rbp + 1]
	cmovl	rdi, rcx
	cmovge	rsi, rbp
	cmp	rdi, rsi
	jb	.label_1924
.label_1919:
	test	eax, eax
	je	.label_1917
	cmp	rdi, -1
	je	.label_1917
	cmp	qword ptr [rdx + rdi*8], r8
	je	.label_1929
.label_1917:
	mov	rax, qword ptr [rsp + 0x18]
	add	r12, qword ptr [rax]
	mov	rdi, r13
	mov	rsi, r12
	mov	rdx, r15
	call	check_node_accept
	test	al, al
	je	.label_1920
	mov	rax, qword ptr [r14]
	mov	rcx, qword ptr [rsp + 0x40]
	mov	rdx, qword ptr [rax + rcx*8]
	test	rdx, rdx
	je	.label_1920
	mov	rax, qword ptr [rdx + 0x10]
	test	rax, rax
	jle	.label_1920
	mov	rcx, qword ptr [rsp + 0x18]
	mov	rcx, qword ptr [rcx + 0x18]
	mov	rsi, qword ptr [rsp + 8]
	mov	rcx, qword ptr [rcx + rsi*8]
	dec	rax
	mov	rdx, qword ptr [rdx + 0x18]
	mov	esi, 0
	je	.label_1922
	xor	esi, esi
	nop	word ptr cs:[rax + rax]
.label_1931:
	lea	rdi, [rsi + rax]
	shr	rdi, 1
	cmp	qword ptr [rdx + rdi*8], rcx
	lea	rbp, [rdi + 1]
	cmovl	rsi, rbp
	cmovge	rax, rdi
	cmp	rsi, rax
	jb	.label_1931
.label_1922:
	cmp	rsi, -1
	je	.label_1920
	mov	eax, 1
	cmp	qword ptr [rdx + rsi*8], rcx
	jne	.label_1920
	nop	dword ptr [rax]
.label_1929:
	cmp	qword ptr [r14 + 0x28], 0
	je	.label_1915
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
	jne	.label_1925
.label_1915:
	lea	rdi, [rsp + 0x20]
	mov	rsi, qword ptr [rsp + 8]
	call	re_node_set_insert
	movzx	ecx, al
	xor	ecx, 1
.label_1925:
	or	cl, 4
	mov	ebp, 0xc
	and	cl, 7
	cmp	cl, 4
	jne	.label_1918
.label_1920:
	inc	rbx
	mov	rax, qword ptr [rsp + 0x50]
	cmp	rbx, qword ptr [rax + 0x28]
	jl	.label_1930
.label_1921:
	mov	rdi, r13
	mov	rsi, r14
	mov	rdx, r15
	lea	rcx, [rsp + 0x20]
	call	update_cur_sifted_state
	mov	ebp, eax
	test	ebp, ebp
	je	.label_1916
	jmp	.label_1918
.label_1932:
	xor	ebp, ebp
	jmp	.label_1918
.label_1933:
	shl	rdx, 3
	xor	ebp, ebp
	xor	esi, esi
	call	memset
.label_1918:
	mov	rdi, qword ptr [rsp + 0x30]
	call	free
.label_1926:
	mov	eax, ebp
	add	rsp, 0x58
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_1923:
	xorps	xmm0, xmm0
	movaps	xmmword ptr [rsp + 0x20], xmm0
	mov	ebp, 0xc
	jmp	.label_1926
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x413150

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
	jle	.label_1955
	mov	r10, qword ptr [rdi + 0xd8]
	xor	r11d, r11d
	mov	rdx, r9
	nop	dword ptr [rax]
.label_1937:
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
	jl	.label_1937
.label_1955:
	cmp	r11, r9
	jge	.label_1943
	cmp	r11, -1
	je	.label_1943
	mov	qword ptr [rsp + 0x50], rcx
	mov	dword ptr [rsp + 0x44], r8d
	mov	rcx, qword ptr [rdi + 0xd8]
	lea	rdx, [r11 + r11*4]
	mov	qword ptr [rsp + 0x48], rdx
	cmp	qword ptr [rcx + rdx*8 + 8], r15
	jne	.label_1943
	mov	dword ptr [rsp + 0xc], eax
	mov	qword ptr [rsp + 0x38], rsi
	mov	qword ptr [rsp + 0x30], rdi
	mov	qword ptr [rsp + 0x28], r14
	jmp	.label_1962
.label_1949:
	mov	rcx, qword ptr [rdi + 0xd8]
	nop	
.label_1962:
	mov	rax, qword ptr [rsp + 0x48]
	lea	r13, [rcx + rax*8]
	nop	dword ptr [rax]
.label_1959:
	mov	r9, qword ptr [rsi + 8]
	test	r9, r9
	jle	.label_1942
	mov	rdx, qword ptr [r13]
	dec	r9
	mov	r8, qword ptr [rsi + 0x10]
	mov	eax, 0
	je	.label_1945
	mov	rcx, r9
	xor	eax, eax
	nop	word ptr cs:[rax + rax]
.label_1965:
	lea	rbp, [rax + rcx]
	shr	rbp, 1
	cmp	qword ptr [r8 + rbp*8], rdx
	lea	rbx, [rbp + 1]
	cmovl	rax, rbx
	cmovge	rcx, rbp
	cmp	rax, rcx
	jb	.label_1965
.label_1945:
	cmp	rax, -1
	je	.label_1942
	cmp	qword ptr [r8 + rax*8], rdx
	jne	.label_1942
	mov	r12, qword ptr [r13 + 0x18]
	add	r12, r15
	sub	r12, qword ptr [r13 + 0x10]
	cmp	r12, r15
	jne	.label_1934
	test	r9, r9
	mov	rax, qword ptr [r14 + 0x28]
	lea	rdx, [rdx + rdx*2]
	mov	rdx, qword ptr [rax + rdx*8 + 0x10]
	mov	rbx, qword ptr [rdx]
	mov	edx, 0
	je	.label_1938
	xor	edx, edx
.label_1947:
	lea	rax, [rdx + r9]
	shr	rax, 1
	cmp	qword ptr [r8 + rax*8], rbx
	lea	rcx, [rax + 1]
	cmovl	rdx, rcx
	cmovge	r9, rax
	cmp	rdx, r9
	jb	.label_1947
.label_1938:
	cmp	rdx, -1
	je	.label_1954
	mov	ecx, 4
	cmp	qword ptr [r8 + rdx*8], rbx
	je	.label_1940
.label_1954:
	movaps	xmm0, xmmword ptr [rip + label_806]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	mov	edi, 8
	call	malloc
	mov	qword ptr [rsp + 0x20], rax
	test	rax, rax
	je	.label_1964
	mov	qword ptr [rax], rbx
	xor	r12d, r12d
.label_1963:
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
	je	.label_1940
	test	r14d, r14d
	cmovne	ebx, r14d
	test	r12d, r12d
	cmovne	ebx, r12d
	mov	dword ptr [rsp + 8], ebx
	mov	ecx, 1
	mov	dword ptr [rsp + 0xc], ebx
	jmp	.label_1940
.label_1934:
	mov	rax, qword ptr [r14 + 0x18]
	mov	r14, qword ptr [rax + rdx*8]
	mov	rax, qword ptr [rdi + 0xb8]
	mov	r9, qword ptr [rax + r12*8]
	test	r9, r9
	je	.label_1935
	mov	r8, qword ptr [r9 + 0x10]
	test	r8, r8
	jle	.label_1941
	mov	rcx, r8
	dec	rcx
	mov	rax, qword ptr [r9 + 0x18]
	mov	edx, 0
	je	.label_1944
	xor	edx, edx
	nop	
.label_1950:
	lea	rbp, [rdx + rcx]
	shr	rbp, 1
	cmp	qword ptr [rax + rbp*8], r14
	lea	rbx, [rbp + 1]
	cmovl	rdx, rbx
	cmovge	rcx, rbp
	cmp	rdx, rcx
	jb	.label_1950
.label_1944:
	cmp	rdx, -1
	je	.label_1958
	mov	ecx, 4
	cmp	qword ptr [rax + rdx*8], r14
	je	.label_1940
.label_1958:
	mov	qword ptr [rsp + 0x18], r8
	test	r8, r8
	jle	.label_1961
	mov	rbp, r9
	mov	qword ptr [rsp + 0x10], r8
	shl	r8, 3
	mov	rdi, r8
	mov	rbx, r8
	call	malloc
	mov	qword ptr [rsp + 0x20], rax
	test	rax, rax
	je	.label_1951
	mov	rsi, qword ptr [rbp + 0x18]
	mov	rdi, rax
	mov	rdx, rbx
	call	memcpy
	jmp	.label_1946
.label_1935:
	movaps	xmm0, xmmword ptr [rip + label_806]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	mov	edi, 8
	call	malloc
	mov	qword ptr [rsp + 0x20], rax
	test	rax, rax
	je	.label_1952
	mov	qword ptr [rax], r14
	mov	dword ptr [rsp + 8], 0
	jmp	.label_1956
.label_1941:
	mov	qword ptr [rsp + 0x18], r8
.label_1961:
	xorps	xmm0, xmm0
	movaps	xmmword ptr [rsp + 0x10], xmm0
	mov	qword ptr [rsp + 0x20], 0
.label_1946:
	xor	ebx, ebx
.label_1948:
	mov	dword ptr [rsp + 8], ebx
	lea	rdi, [rsp + 0x10]
	mov	rsi, r14
	call	re_node_set_insert
	test	ebx, ebx
	jne	.label_1936
	xor	al, 1
	jne	.label_1936
.label_1956:
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
	jne	.label_1939
	mov	eax, dword ptr [rsp + 0xc]
.label_1939:
	movzx	ecx, cl
	mov	dword ptr [rsp + 0xc], eax
	mov	rsi, qword ptr [rsp + 0x38]
	jmp	.label_1960
.label_1964:
	xorps	xmm0, xmm0
	movaps	xmmword ptr [rsp + 0x10], xmm0
	mov	r12d, 0xc
	jmp	.label_1963
.label_1936:
	mov	rdi, qword ptr [rsp + 0x20]
	call	free
	test	ebx, ebx
	mov	eax, 0xc
	cmove	ebx, eax
	mov	dword ptr [rsp + 8], ebx
	mov	ecx, 1
	mov	dword ptr [rsp + 0xc], ebx
	jmp	.label_1953
.label_1952:
	xorps	xmm0, xmm0
	movaps	xmmword ptr [rsp + 0x10], xmm0
	mov	dword ptr [rsp + 8], 0xc
	mov	dword ptr [rsp + 0xc], 0xc
	mov	ecx, 1
.label_1953:
	mov	rsi, qword ptr [rsp + 0x38]
	mov	rdi, qword ptr [rsp + 0x30]
.label_1940:
	mov	r14, qword ptr [rsp + 0x28]
.label_1960:
	test	ecx, ecx
	je	.label_1942
	cmp	ecx, 4
	jne	.label_1957
.label_1942:
	xor	eax, eax
	cmp	byte ptr [r13 + 0x20], 0
	lea	r13, [r13 + 0x28]
	jne	.label_1959
	jmp	.label_1943
.label_1951:
	xorps	xmm0, xmm0
	movaps	xmmword ptr [rsp + 0x10], xmm0
	mov	ebx, 0xc
	jmp	.label_1948
.label_1957:
	cmp	ecx, 2
	je	.label_1949
	mov	eax, dword ptr [rsp + 0xc]
.label_1943:
	add	rsp, 0x58
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4135b0

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
	sub	rsp, 0xa8
	mov	r14, rsi
	mov	qword ptr [rbp - 0x30], rdi
	mov	edi, 0x3800
	call	malloc
	mov	r15, rax
	test	r15, r15
	je	.label_1985
	lea	rax, [r14 + 0x58]
	mov	qword ptr [rbp - 0xc8], rax
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [r14 + 0x58], xmm0
	movdqa	xmmword ptr [rbp - 0x40], xmm0
	movdqa	xmmword ptr [rbp - 0x50], xmm0
	xor	ebx, ebx
	cmp	qword ptr [r14 + 0x10], 0
	jle	.label_1971
	lea	rax, [r15 + 0x1800]
	mov	qword ptr [rbp - 0x88], rax
	xor	r12d, r12d
	mov	qword ptr [rbp - 0x70], r15
	mov	rsi, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0xb0], r14
	nop	dword ptr [rax]
.label_2021:
	mov	rax, qword ptr [r14 + 0x18]
	mov	rax, qword ptr [rax + rbx*8]
	mov	rcx, qword ptr [rsi]
	shl	rax, 4
	lea	rdi, [rcx + rax]
	mov	eax, dword ptr [rcx + rax + 8]
	movzx	ecx, al
	mov	dword ptr [rbp - 0xa0], ecx
	cmp	ecx, 1
	jne	.label_2032
	mov	cl, byte ptr [rdi]
	mov	edx, 1
	shl	rdx, cl
	shr	cl, 6
	movzx	ecx, cl
	or	qword ptr [rbp + rcx*8 - 0x50], rdx
.label_1975:
	mov	ecx, eax
	shr	ecx, 8
	mov	edx, ecx
	and	edx, 0x3ff
	je	.label_1993
	test	cl, 0x20
	je	.label_2000
	mov	rdx, qword ptr [rbp - 0x50]
	test	dh, 4
	pxor	xmm0, xmm0
	movdqa	xmmword ptr [rbp - 0x40], xmm0
	movdqa	xmmword ptr [rbp - 0x50], xmm0
	je	.label_1980
	mov	qword ptr [rbp - 0x50], 0x400
.label_2000:
	test	cl, cl
	js	.label_2008
	test	cl, 4
	je	.label_2011
	mov	edx, eax
	and	edx, 0x4000ff
	cmp	edx, 1
	je	.label_2008
	mov	r9, rbx
	cmp	dword ptr [rsi + 0xb4], 1
	jle	.label_2054
	mov	rdx, qword ptr [rsi + 0x78]
	movdqu	xmm0, xmmword ptr [rsi + 0xb8]
	movdqu	xmm1, xmmword ptr [rdx]
	pcmpeqd	xmm2, xmm2
	pxor	xmm1, xmm2
	por	xmm1, xmm0
	pand	xmm1, xmmword ptr [rbp - 0x50]
	movdqa	xmmword ptr [rbp - 0x50], xmm1
	movq	r8, xmm1
	pshufd	xmm0, xmm1, 0x4e
	movq	r10, xmm0
	movdqu	xmm0, xmmword ptr [rsi + 0xc8]
	movdqu	xmm1, xmmword ptr [rdx + 0x10]
	pxor	xmm1, xmm2
	por	xmm1, xmm0
	pand	xmm1, xmmword ptr [rbp - 0x40]
	movq	rbx, xmm1
	or	rbx, r8
	or	rbx, r10
	movdqa	xmmword ptr [rbp - 0x40], xmm1
	pshufd	xmm0, xmm1, 0x4e
	jmp	.label_2019
	nop	word ptr cs:[rax + rax]
.label_2032:
	cmp	al, 7
	je	.label_2041
	cmp	al, 5
	je	.label_2042
	cmp	al, 3
	jne	.label_1980
	mov	rcx, qword ptr [rdi]
	movups	xmm0, xmmword ptr [rcx]
	orps	xmm0, xmmword ptr [rbp - 0x50]
	movaps	xmmword ptr [rbp - 0x50], xmm0
	movdqu	xmm0, xmmword ptr [rcx + 0x10]
	por	xmm0, xmmword ptr [rbp - 0x40]
	movdqa	xmmword ptr [rbp - 0x40], xmm0
	jmp	.label_1975
.label_2041:
	pcmpeqd	xmm0, xmm0
	movdqa	xmmword ptr [rbp - 0x50], xmm0
	mov	rcx, qword ptr [rsi + 0xd8]
	mov	rdx, -2
	test	cl, 0x40
	jne	.label_2052
	mov	qword ptr [rbp - 0x50], -0x401
	mov	rdx, -0x402
.label_2052:
	test	cl, cl
	jns	.label_1975
	mov	qword ptr [rbp - 0x50], rdx
	jmp	.label_1975
.label_2042:
	cmp	dword ptr [rsi + 0xb4], 2
	jl	.label_2065
	mov	rcx, qword ptr [rsi + 0x78]
	movdqu	xmm0, xmmword ptr [rcx]
	por	xmm0, xmmword ptr [rbp - 0x50]
	movdqa	xmmword ptr [rbp - 0x50], xmm0
	movdqu	xmm1, xmmword ptr [rcx + 0x10]
	por	xmm1, xmmword ptr [rbp - 0x40]
	movdqa	xmmword ptr [rbp - 0x40], xmm1
	movq	rcx, xmm0
	jmp	.label_2009
.label_2065:
	pcmpeqd	xmm0, xmm0
	movdqa	xmmword ptr [rbp - 0x40], xmm0
	movdqa	xmmword ptr [rbp - 0x50], xmm0
	mov	rcx, -1
.label_2009:
	mov	rdx, qword ptr [rsi + 0xd8]
	test	dl, 0x40
	jne	.label_1967
	and	rcx, 0xfffffffffffffbff
	mov	qword ptr [rbp - 0x50], rcx
.label_1967:
	test	dl, dl
	jns	.label_1975
	and	rcx, 0xfffffffffffffffe
	mov	qword ptr [rbp - 0x50], rcx
	jmp	.label_1975
.label_2054:
	movdqu	xmm0, xmmword ptr [rsi + 0xb8]
	pand	xmm0, xmmword ptr [rbp - 0x50]
	movdqa	xmmword ptr [rbp - 0x50], xmm0
	movq	rdx, xmm0
	pshufd	xmm0, xmm0, 0x4e
	movq	r8, xmm0
	movdqu	xmm0, xmmword ptr [rsi + 0xc8]
	pand	xmm0, xmmword ptr [rbp - 0x40]
	movq	rbx, xmm0
	or	rbx, rdx
	or	rbx, r8
	movdqa	xmmword ptr [rbp - 0x40], xmm0
	pshufd	xmm0, xmm0, 0x4e
.label_2019:
	movq	rdx, xmm0
	or	rdx, rbx
	test	rdx, rdx
	mov	rbx, r9
	je	.label_1980
.label_2011:
	test	cl, 8
	je	.label_1993
	cmp	dword ptr [rbp - 0xa0], 1
	setne	cl
	test	eax, 0x400000
	je	.label_2003
	test	cl, cl
	jne	.label_2003
	nop	word ptr cs:[rax + rax]
.label_2008:
	pxor	xmm0, xmm0
	movdqa	xmmword ptr [rbp - 0x40], xmm0
	movdqa	xmmword ptr [rbp - 0x50], xmm0
	jmp	.label_1980
.label_2003:
	cmp	dword ptr [rsi + 0xb4], 1
	jle	.label_2014
	mov	rax, qword ptr [rsi + 0x78]
	movdqu	xmm0, xmmword ptr [rsi + 0xb8]
	movdqu	xmm1, xmmword ptr [rax]
	pand	xmm1, xmm0
	pandn	xmm1, xmmword ptr [rbp - 0x50]
	movdqa	xmmword ptr [rbp - 0x50], xmm1
	movq	r8, xmm1
	pshufd	xmm0, xmm1, 0x4e
	movq	rdx, xmm0
	movdqu	xmm0, xmmword ptr [rsi + 0xc8]
	movdqu	xmm1, xmmword ptr [rax + 0x10]
	pand	xmm1, xmm0
	pandn	xmm1, xmmword ptr [rbp - 0x40]
	movq	rcx, xmm1
	or	rcx, r8
	or	rcx, rdx
	movdqa	xmmword ptr [rbp - 0x40], xmm1
	pshufd	xmm0, xmm1, 0x4e
	movq	rax, xmm0
	or	rax, rcx
	jmp	.label_2017
.label_2014:
	movdqu	xmm0, xmmword ptr [rsi + 0xb8]
	pandn	xmm0, xmmword ptr [rbp - 0x50]
	movdqa	xmmword ptr [rbp - 0x50], xmm0
	movq	rax, xmm0
	pshufd	xmm0, xmm0, 0x4e
	movq	rcx, xmm0
	movdqu	xmm0, xmmword ptr [rsi + 0xc8]
	pandn	xmm0, xmmword ptr [rbp - 0x40]
	movq	rdx, xmm0
	or	rdx, rax
	or	rdx, rcx
	movdqa	xmmword ptr [rbp - 0x40], xmm0
	pshufd	xmm0, xmm0, 0x4e
	movq	rax, xmm0
	or	rax, rdx
.label_2017:
	test	rax, rax
	je	.label_1980
	nop	word ptr cs:[rax + rax]
.label_1993:
	mov	qword ptr [rbp - 0xa8], rbx
	test	r12, r12
	jle	.label_2057
	mov	qword ptr [rbp - 0x78], r15
	mov	r14, qword ptr [rbp - 0x88]
	xor	r13d, r13d
	mov	qword ptr [rbp - 0x80], rdi
	jmp	.label_1976
.label_2057:
	xor	r13d, r13d
	jmp	.label_2061
.label_2046:
	pxor	xmm0, xmm0
	mov	rax, qword ptr [rbp - 0x90]
	movdqu	xmmword ptr [rax], xmm0
	mov	ebx, 0x1a
	mov	r12, qword ptr [rbp - 0x60]
	mov	rsi, qword ptr [rbp - 0x30]
	mov	rdi, qword ptr [rbp - 0x80]
	mov	r13, qword ptr [rbp - 0x58]
	mov	r15, qword ptr [rbp - 0x70]
	jmp	.label_2064
	nop	word ptr cs:[rax + rax]
.label_1976:
	cmp	dword ptr [rbp - 0xa0], 1
	jne	.label_2070
	movzx	eax, byte ptr [rdi]
	mov	ecx, eax
	shr	cl, 6
	movzx	ecx, cl
	mov	rcx, qword ptr [r14 + rcx*8]
	mov	ebx, 0x13
	bt	rcx, rax
	jae	.label_2064
.label_2070:
	mov	qword ptr [rbp - 0x58], r13
	mov	qword ptr [rbp - 0x60], r12
	mov	rax, qword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rbp - 0x48]
	mov	r9, qword ptr [r14]
	mov	r13, qword ptr [r14 + 8]
	mov	rdx, r9
	and	rdx, rax
	mov	rsi, r13
	and	rsi, rcx
	mov	qword ptr [rbp - 0x90], rsi
	mov	rdi, rsi
	mov	qword ptr [rbp - 0x98], rdx
	or	rdi, rdx
	mov	r11, qword ptr [rbp - 0x40]
	mov	r12, qword ptr [r14 + 0x10]
	mov	r8, r12
	and	r8, r11
	or	rdi, r8
	mov	rdx, qword ptr [rbp - 0x38]
	mov	rsi, qword ptr [r14 + 0x18]
	mov	r10, rsi
	and	r10, rdx
	mov	ebx, 0x13
	or	rdi, r10
	je	.label_1973
	mov	rbx, rax
	not	rbx
	and	rbx, r9
	not	r9
	and	r9, rax
	mov	qword ptr [rbp - 0xc0], r9
	mov	qword ptr [rbp - 0x50], r9
	mov	r15, rcx
	not	r15
	and	r15, r13
	mov	rax, r15
	or	rax, rbx
	not	r13
	and	r13, rcx
	mov	qword ptr [rbp - 0x48], r13
	mov	rcx, r11
	not	rcx
	and	rcx, r12
	or	rax, rcx
	not	r12
	and	r12, r11
	mov	qword ptr [rbp - 0x40], r12
	mov	rdi, rdx
	not	rdi
	and	rdi, rsi
	not	rsi
	and	rsi, rdx
	mov	qword ptr [rbp - 0x38], rsi
	or	rax, rdi
	mov	qword ptr [rbp - 0xb8], rsi
	je	.label_1998
	mov	r11, qword ptr [rbp - 0x60]
	mov	rax, r11
	shl	rax, 5
	mov	rdx, qword ptr [rbp - 0x88]
	mov	qword ptr [rdx + rax], rbx
	mov	qword ptr [rdx + rax + 8], r15
	mov	qword ptr [rdx + rax + 0x10], rcx
	mov	qword ptr [rdx + rax + 0x18], rdi
	mov	rax, qword ptr [rbp - 0x98]
	mov	qword ptr [r14], rax
	mov	rax, qword ptr [rbp - 0x90]
	mov	qword ptr [r14 + 8], rax
	mov	qword ptr [r14 + 0x10], r8
	mov	qword ptr [r14 + 0x18], r10
	lea	rbx, [r11 + r11*2]
	mov	r15, qword ptr [rbp - 0x70]
	lea	rcx, [r15 + rbx*8]
	mov	rax, qword ptr [rbp - 0x78]
	mov	rdi, qword ptr [rax + 8]
	mov	qword ptr [r15 + rbx*8 + 8], rdi
	mov	rax, qword ptr [rax + 8]
	test	rax, rax
	jle	.label_2025
	mov	qword ptr [rbp - 0x98], rax
	mov	qword ptr [rbp - 0x90], rcx
	mov	qword ptr [rcx], rdi
	shl	rdi, 3
	call	malloc
	mov	qword ptr [r15 + rbx*8 + 0x10], rax
	test	rax, rax
	je	.label_2046
	mov	rcx, qword ptr [rbp - 0x78]
	mov	rsi, qword ptr [rcx + 0x10]
	mov	rdx, qword ptr [rbp - 0x98]
	shl	rdx, 3
	mov	rdi, rax
	call	memcpy
	jmp	.label_2055
.label_1998:
	mov	r15, qword ptr [rbp - 0x70]
	mov	rcx, qword ptr [rbp - 0xa8]
	jmp	.label_2045
.label_2025:
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [rcx], xmm0
	mov	qword ptr [rcx + 0x10], 0
.label_2055:
	inc	qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0xa8]
	mov	r15, qword ptr [rbp - 0x70]
.label_2045:
	mov	rax, qword ptr [rbp - 0xb0]
	mov	rax, qword ptr [rax + 0x18]
	mov	rsi, qword ptr [rax + rcx*8]
	mov	rdi, qword ptr [rbp - 0x78]
	call	re_node_set_insert
	mov	ebx, 0x1a
	test	al, al
	je	.label_1973
	or	r13, qword ptr [rbp - 0xc0]
	or	r12, qword ptr [rbp - 0xb8]
	or	r12, r13
	mov	ebx, 0
	mov	eax, 0x11
	cmove	ebx, eax
.label_1973:
	mov	r12, qword ptr [rbp - 0x60]
	mov	rsi, qword ptr [rbp - 0x30]
	mov	rdi, qword ptr [rbp - 0x80]
	mov	r13, qword ptr [rbp - 0x58]
.label_2064:
	mov	eax, ebx
	and	al, 0x1f
	and	ebx, 0x1f
	cmp	al, 0x1a
	ja	.label_1970
	jmp	qword ptr [(rbx * 8) + label_1974]
.label_2247:
	inc	r13
	add	r14, 0x20
	add	qword ptr [rbp - 0x78], 0x18
	cmp	r13, r12
	jl	.label_1976
.label_2061:
	cmp	r13, r12
	mov	r14, qword ptr [rbp - 0xb0]
	mov	rbx, qword ptr [rbp - 0xa8]
	jne	.label_1980
	mov	rax, r13
	shl	rax, 5
	movaps	xmm0, xmmword ptr [rbp - 0x50]
	movdqa	xmm1, xmmword ptr [rbp - 0x40]
	mov	rcx, qword ptr [rbp - 0x88]
	movdqu	xmmword ptr [rcx + rax + 0x10], xmm1
	movups	xmmword ptr [rcx + rax], xmm0
	mov	rcx, rbx
	lea	rbx, [r13 + r13*2]
	mov	rax, qword ptr [r14 + 0x18]
	mov	r14, qword ptr [rax + rcx*8]
	movdqa	xmm0, xmmword ptr [rip + label_806]
	movdqu	xmmword ptr [r15 + rbx*8], xmm0
	mov	edi, 8
	call	malloc
	mov	qword ptr [r15 + rbx*8 + 0x10], rax
	test	rax, rax
	je	.label_2004
	mov	qword ptr [rax], r14
	inc	r13
	pxor	xmm0, xmm0
	movdqa	xmmword ptr [rbp - 0x40], xmm0
	movdqa	xmmword ptr [rbp - 0x50], xmm0
	mov	r12, r13
	mov	rsi, qword ptr [rbp - 0x30]
	mov	r14, qword ptr [rbp - 0xb0]
	mov	rbx, qword ptr [rbp - 0xa8]
	nop	dword ptr [rax]
.label_1980:
	inc	rbx
	cmp	rbx, qword ptr [r14 + 0x10]
	jl	.label_2021
	test	r12, r12
	jle	.label_2020
.label_1970:
	lea	rax, [r12 + 1]
	mov	qword ptr [rbp - 0x50], rax
	mov	qword ptr [rbp - 0x48], 0
	lea	rdi, [r12*8 + 8]
	call	malloc
	mov	qword ptr [rbp - 0x40], rax
	mov	ecx, 0xc
	test	rax, rax
	je	.label_2029
	xor	ecx, ecx
.label_2029:
	mov	dword ptr [rbp - 0x64], ecx
	movabs	rcx, 0xaaaaaaaaaaaa855
	cmp	r12, rcx
	ja	.label_2031
	test	rax, rax
	je	.label_2031
	lea	rax, [r12*8]
	lea	rdi, [rax + rax*2]
	lea	rax, [rax + rax*2 + 0x3800]
	cmp	rax, 0xfbf
	ja	.label_2035
	mov	rax, rsp
	add	rdi, 0xf
	and	rdi, 0xfffffffffffffff0
	sub	rax, rdi
	mov	rsp, rax
	mov	dword ptr [rbp - 0xa8], 0
	jmp	.label_2040
.label_2035:
	call	malloc
	test	rax, rax
	je	.label_2031
	mov	cl, 1
	mov	dword ptr [rbp - 0xa8], ecx
.label_2040:
	mov	qword ptr [rbp - 0x58], rax
	lea	rax, [rax + r12*8]
	mov	qword ptr [rbp - 0xc0], rax
	lea	rax, [rax + r12*8]
	mov	qword ptr [rbp - 0xb8], rax
	xor	eax, eax
	mov	qword ptr [rbp - 0xa0], rax
	lea	r13, [rbp - 0x50]
	xor	eax, eax
	mov	qword ptr [rbp - 0x98], rax
	xor	eax, eax
	mov	qword ptr [rbp - 0x90], rax
	xor	eax, eax
	mov	qword ptr [rbp - 0x78], rax
	xor	r15d, r15d
	xor	eax, eax
	mov	qword ptr [rbp - 0x80], rax
	mov	rsi, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x60], r12
	nop	word ptr cs:[rax + rax]
.label_2034:
	mov	qword ptr [rbp - 0x48], 0
	lea	rcx, [r15 + r15*2]
	mov	rax, qword ptr [rbp - 0x70]
	mov	rax, qword ptr [rax + rcx*8 + 8]
	test	rax, rax
	jle	.label_2067
	mov	rdx, qword ptr [rbp - 0x70]
	lea	rbx, [rdx + rcx*8 + 8]
	mov	r14, qword ptr [rdx + rcx*8 + 0x10]
	xor	r12d, r12d
	nop	dword ptr [rax + rax]
.label_2062:
	mov	rcx, qword ptr [r14 + r12*8]
	mov	rdx, qword ptr [rsi + 0x18]
	mov	rcx, qword ptr [rdx + rcx*8]
	cmp	rcx, -1
	je	.label_1990
	mov	rax, qword ptr [rsi + 0x30]
	lea	rcx, [rcx + rcx*2]
	lea	rsi, [rax + rcx*8]
	mov	rdi, r13
	call	re_node_set_merge
	mov	dword ptr [rbp - 0x64], eax
	test	eax, eax
	jne	.label_302
	mov	rax, qword ptr [rbx]
	mov	rsi, qword ptr [rbp - 0x30]
.label_1990:
	inc	r12
	cmp	r12, rax
	jl	.label_2062
.label_2067:
	xor	ecx, ecx
	lea	rdi, [rbp - 0x64]
	mov	rdx, r13
	call	re_acquire_state_context
	mov	rcx, qword ptr [rbp - 0x58]
	mov	qword ptr [rcx + r15*8], rax
	test	rax, rax
	jne	.label_1989
	mov	ecx, dword ptr [rbp - 0x64]
	test	ecx, ecx
	jne	.label_302
.label_1989:
	cmp	byte ptr [rax + 0x68], 0
	js	.label_1996
	mov	rcx, qword ptr [rbp - 0xc0]
	mov	qword ptr [rcx + r15*8], rax
	mov	rax, qword ptr [rbp - 0x58]
	mov	rax, qword ptr [rax + r15*8]
	mov	rcx, qword ptr [rbp - 0xb8]
	mov	qword ptr [rcx + r15*8], rax
	jmp	.label_554
	nop	
.label_1996:
	mov	ecx, 1
	lea	rdi, [rbp - 0x64]
	mov	rsi, qword ptr [rbp - 0x30]
	mov	rdx, r13
	call	re_acquire_state_context
	mov	rcx, qword ptr [rbp - 0xc0]
	mov	qword ptr [rcx + r15*8], rax
	test	rax, rax
	jne	.label_614
	mov	ecx, dword ptr [rbp - 0x64]
	test	ecx, ecx
	jne	.label_302
.label_614:
	mov	rcx, qword ptr [rbp - 0x58]
	cmp	qword ptr [rcx + r15*8], rax
	je	.label_617
	mov	rsi, qword ptr [rbp - 0x30]
	cmp	dword ptr [rsi + 0xb4], 1
	mov	al, 1
	jg	.label_445
	mov	rax, qword ptr [rbp - 0x80]
.label_445:
	mov	qword ptr [rbp - 0x80], rax
	jmp	.label_461
.label_617:
	mov	rsi, qword ptr [rbp - 0x30]
.label_461:
	mov	ecx, 2
	lea	rdi, [rbp - 0x64]
	mov	rdx, r13
	call	re_acquire_state_context
	mov	rcx, qword ptr [rbp - 0xb8]
	mov	qword ptr [rcx + r15*8], rax
	test	rax, rax
	jne	.label_554
	mov	eax, dword ptr [rbp - 0x64]
	test	eax, eax
	jne	.label_302
	nop	word ptr cs:[rax + rax]
.label_554:
	mov	rax, r15
	shl	rax, 5
	mov	rcx, qword ptr [rbp - 0x88]
	mov	rdx, qword ptr [rbp - 0x78]
	or	rdx, qword ptr [rcx + rax]
	mov	qword ptr [rbp - 0x78], rdx
	mov	rdx, qword ptr [rbp - 0x90]
	or	rdx, qword ptr [rcx + rax + 8]
	mov	qword ptr [rbp - 0x90], rdx
	mov	rdx, qword ptr [rbp - 0x98]
	or	rdx, qword ptr [rcx + rax + 0x10]
	mov	qword ptr [rbp - 0x98], rdx
	mov	rdx, qword ptr [rbp - 0xa0]
	or	rdx, qword ptr [rcx + rax + 0x18]
	mov	qword ptr [rbp - 0xa0], rdx
	inc	r15
	mov	r12, qword ptr [rbp - 0x60]
	cmp	r15, r12
	mov	rsi, qword ptr [rbp - 0x30]
	jl	.label_2034
	mov	rax, qword ptr [rbp - 0x80]
	and	al, 1
	mov	qword ptr [rbp - 0x80], rax
	mov	edi, 8
	jne	.label_2058
	mov	esi, 0x100
	call	rpl_calloc
	mov	rcx, qword ptr [rbp - 0xc8]
	mov	qword ptr [rcx], rax
	test	rax, rax
	je	.label_302
	cmp	qword ptr [rbp - 0x78], 0
	mov	r14, qword ptr [rbp - 0x70]
	mov	r15, qword ptr [rbp - 0x60]
	mov	r10, qword ptr [rbp - 0x88]
	mov	rdi, qword ptr [rbp - 0x58]
	mov	r13, qword ptr [rbp - 0x90]
	je	.label_2066
	lea	r8, [rdi - 8]
	mov	edx, 1
	xor	esi, esi
	mov	rbx, qword ptr [rbp - 0x78]
	jmp	.label_1979
.label_2059:
	mov	rcx, r10
	mov	r9, r8
.label_1968:
	add	r9, 8
	test	qword ptr [rcx], rdx
	lea	rcx, [rcx + 0x20]
	je	.label_1968
	mov	rcx, qword ptr [rbp - 0x30]
	test	qword ptr [rcx + 0xb8], rdx
	je	.label_1986
	mov	rcx, qword ptr [r9 + r15*8]
	jmp	.label_2007
.label_1986:
	mov	rcx, qword ptr [r9]
.label_2007:
	mov	qword ptr [rax + rsi*8], rcx
	jmp	.label_1977
	nop	word ptr [rax + rax]
.label_1979:
	test	bl, 1
	jne	.label_2059
.label_1977:
	add	rdx, rdx
	shr	rbx, 1
	inc	rsi
	test	rbx, rbx
	jne	.label_1979
.label_2066:
	test	r13, r13
	mov	r11, qword ptr [rbp - 0xa0]
	mov	r12, qword ptr [rbp - 0x98]
	je	.label_1984
	lea	r8, [rdi - 8]
	lea	r9, [r14 + 0x1808]
	mov	esi, 1
	mov	ebx, 0x40
	jmp	.label_1987
.label_2016:
	mov	rdx, r9
	mov	rcx, r8
.label_1995:
	add	rcx, 8
	test	qword ptr [rdx], rsi
	lea	rdx, [rdx + 0x20]
	je	.label_1995
	mov	rdx, qword ptr [rbp - 0x30]
	test	qword ptr [rdx + 0xc0], rsi
	je	.label_1999
	mov	rcx, qword ptr [rcx + r15*8]
	jmp	.label_2002
.label_1999:
	mov	rcx, qword ptr [rcx]
.label_2002:
	mov	qword ptr [rax + rbx*8], rcx
	jmp	.label_2053
	nop	dword ptr [rax]
.label_1987:
	test	r13b, 1
	jne	.label_2016
.label_2053:
	add	rsi, rsi
	shr	r13, 1
	inc	rbx
	test	r13, r13
	jne	.label_1987
.label_1984:
	test	r12, r12
	je	.label_2012
	lea	r8, [rdi - 8]
	lea	r9, [r14 + 0x1810]
	mov	esi, 1
	mov	ebx, 0x80
	jmp	.label_2013
.label_2005:
	mov	rdx, r9
	mov	rcx, r8
.label_2018:
	add	rcx, 8
	test	qword ptr [rdx], rsi
	lea	rdx, [rdx + 0x20]
	je	.label_2018
	mov	rdx, qword ptr [rbp - 0x30]
	test	qword ptr [rdx + 0xc8], rsi
	je	.label_2022
	mov	rcx, qword ptr [rcx + r15*8]
	jmp	.label_2026
.label_2022:
	mov	rcx, qword ptr [rcx]
.label_2026:
	mov	qword ptr [rax + rbx*8], rcx
	jmp	.label_2027
	nop	
.label_2013:
	test	r12b, 1
	jne	.label_2005
.label_2027:
	add	rsi, rsi
	shr	r12, 1
	inc	rbx
	test	r12, r12
	jne	.label_2013
.label_2012:
	test	r11, r11
	je	.label_1997
	lea	r8, [rdi - 8]
	lea	r9, [r14 + 0x1818]
	mov	esi, 1
	mov	ebx, 0xc0
	jmp	.label_2028
.label_2044:
	mov	rdx, r9
	mov	rcx, r8
.label_2037:
	add	rcx, 8
	test	qword ptr [rdx], rsi
	lea	rdx, [rdx + 0x20]
	je	.label_2037
	mov	rdx, qword ptr [rbp - 0x30]
	test	qword ptr [rdx + 0xd0], rsi
	je	.label_2039
	mov	rcx, qword ptr [rcx + r15*8]
	jmp	.label_2048
.label_2039:
	mov	rcx, qword ptr [rcx]
.label_2048:
	mov	qword ptr [rax + rbx*8], rcx
	jmp	.label_2043
	nop	
.label_2028:
	test	r11b, 1
	jne	.label_2044
.label_2043:
	add	rsi, rsi
	shr	r11, 1
	inc	rbx
	test	r11, r11
	jne	.label_2028
.label_1997:
	mov	rcx, qword ptr [rbp - 0x78]
	test	ch, 4
	je	.label_2049
	xor	ecx, ecx
	nop	
.label_2033:
	test	byte ptr [r10 + 1], 4
	jne	.label_2051
	inc	rcx
	add	r10, 0x20
	cmp	rcx, r15
	jl	.label_2033
	jmp	.label_2049
.label_2051:
	mov	rdx, r15
	shl	rdx, 4
	add	rdx, rdi
	mov	rsi, qword ptr [rbp - 0x80]
	test	sil, sil
	mov	rcx, qword ptr [rdx + rcx*8]
	mov	qword ptr [rax + 0x50], rcx
	je	.label_2049
	mov	qword ptr [rax + 0x850], rcx
.label_2049:
	mov	eax, dword ptr [rbp - 0xa8]
	test	al, al
	je	.label_2063
	call	free
.label_2063:
	mov	rdi, qword ptr [rbp - 0x40]
	call	free
	mov	rbx, r14
	add	rbx, 0x10
	nop	word ptr cs:[rax + rax]
.label_2068:
	mov	rdi, qword ptr [rbx]
	call	free
	add	rbx, 0x18
	dec	r15
	jne	.label_2068
	mov	rdi, r14
	call	free
	mov	al, 1
	jmp	.label_1992
.label_2031:
	mov	rdi, qword ptr [rbp - 0x40]
	call	free
	jmp	.label_1969
.label_2004:
	lea	rax, [r15 + rbx*8]
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [rax], xmm0
	mov	r12, r13
.label_2248:
	mov	rbx, -1
	test	r12, r12
	jle	.label_1971
	mov	rbx, r15
	add	rbx, 0x10
.label_1981:
	mov	rdi, qword ptr [rbx]
	call	free
	add	rbx, 0x18
	dec	r12
	jne	.label_1981
	mov	rbx, -1
.label_1971:
	mov	r12, rbx
.label_2020:
	mov	rdi, r15
	call	free
	test	r12, r12
	jne	.label_1985
	mov	edi, 8
	mov	esi, 0x100
	call	rpl_calloc
	mov	rcx, qword ptr [rbp - 0xc8]
	mov	qword ptr [rcx], rax
	test	rax, rax
	setne	al
	jmp	.label_1992
.label_2058:
	mov	esi, 0x200
	call	rpl_calloc
	mov	rcx, qword ptr [rbp - 0xb0]
	mov	qword ptr [rcx + 0x60], rax
	test	rax, rax
	je	.label_302
	cmp	qword ptr [rbp - 0x78], 0
	mov	r14, qword ptr [rbp - 0x70]
	mov	rdi, qword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rbp - 0x90]
	je	.label_2006
	lea	r8, [rdi - 8]
	mov	r9d, 1
	xor	esi, esi
	mov	rdx, qword ptr [rbp - 0x78]
	jmp	.label_1982
.label_302:
	mov	eax, dword ptr [rbp - 0xa8]
	test	al, al
	je	.label_2015
	mov	rdi, qword ptr [rbp - 0x58]
	call	free
.label_2015:
	mov	rdi, qword ptr [rbp - 0x40]
	call	free
	mov	r12, qword ptr [rbp - 0x60]
	test	r12, r12
	mov	r15, qword ptr [rbp - 0x70]
	jle	.label_2024
.label_1969:
	mov	rbx, r15
	add	rbx, 0x10
	nop	dword ptr [rax]
.label_2030:
	mov	rdi, qword ptr [rbx]
	call	free
	add	rbx, 0x18
	dec	r12
	jne	.label_2030
.label_2024:
	mov	rdi, r15
	call	free
.label_1985:
	xor	eax, eax
.label_1992:
	lea	rsp, [rbp - 0x28]
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_2047:
	mov	rbx, qword ptr [rbp - 0x88]
	mov	rcx, r8
.label_2036:
	add	rcx, 8
	test	qword ptr [rbx], r9
	lea	rbx, [rbx + 0x20]
	je	.label_2036
	mov	rbx, qword ptr [rcx]
	mov	qword ptr [rax + rsi*8], rbx
	mov	rbx, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rcx + rbx*8]
	mov	qword ptr [rax + rsi*8 + 0x800], rcx
	mov	r14, qword ptr [rbp - 0x70]
	mov	rdi, qword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rbp - 0x90]
	jmp	.label_2038
.label_1982:
	test	dl, 1
	jne	.label_2047
.label_2038:
	add	r9, r9
	shr	rdx, 1
	inc	rsi
	test	rdx, rdx
	jne	.label_1982
.label_2006:
	test	rcx, rcx
	mov	r12, qword ptr [rbp - 0xa0]
	mov	rdx, qword ptr [rbp - 0x98]
	je	.label_2050
	lea	r8, [rdi - 8]
	lea	r9, [r14 + 0x1808]
	mov	esi, 1
	mov	ebx, 0x40
	jmp	.label_2056
.label_2069:
	mov	r10, rcx
	mov	rdx, r9
	mov	rcx, r8
.label_2060:
	add	rcx, 8
	test	qword ptr [rdx], rsi
	lea	rdx, [rdx + 0x20]
	je	.label_2060
	mov	rdx, qword ptr [rcx]
	mov	qword ptr [rax + rbx*8], rdx
	mov	rdx, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rcx + rdx*8]
	mov	qword ptr [rax + rbx*8 + 0x800], rcx
	mov	r14, qword ptr [rbp - 0x70]
	mov	rdi, qword ptr [rbp - 0x58]
	mov	r12, qword ptr [rbp - 0xa0]
	mov	rdx, qword ptr [rbp - 0x98]
	mov	rcx, r10
	jmp	.label_1991
.label_2056:
	test	cl, 1
	jne	.label_2069
.label_1991:
	add	rsi, rsi
	shr	rcx, 1
	inc	rbx
	test	rcx, rcx
	jne	.label_2056
.label_2050:
	test	rdx, rdx
	mov	r15, qword ptr [rbp - 0x60]
	mov	r10, qword ptr [rbp - 0x88]
	je	.label_1966
	lea	r8, [rdi - 8]
	lea	r9, [r14 + 0x1810]
	mov	esi, 1
	mov	ebx, 0x80
	jmp	.label_1972
.label_1994:
	mov	r11, rdx
	mov	rdx, r9
	mov	rcx, r8
.label_1978:
	add	rcx, 8
	test	qword ptr [rdx], rsi
	lea	rdx, [rdx + 0x20]
	je	.label_1978
	mov	rdx, qword ptr [rcx]
	mov	qword ptr [rax + rbx*8], rdx
	mov	r15, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rcx + r15*8]
	mov	qword ptr [rax + rbx*8 + 0x800], rcx
	mov	r14, qword ptr [rbp - 0x70]
	mov	r10, qword ptr [rbp - 0x88]
	mov	rdi, qword ptr [rbp - 0x58]
	mov	r12, qword ptr [rbp - 0xa0]
	mov	rdx, r11
	jmp	.label_1983
.label_1972:
	test	dl, 1
	jne	.label_1994
.label_1983:
	add	rsi, rsi
	shr	rdx, 1
	inc	rbx
	test	rdx, rdx
	jne	.label_1972
.label_1966:
	test	r12, r12
	je	.label_1997
	lea	r8, [rdi - 8]
	lea	r9, [r14 + 0x1818]
	mov	esi, 1
	mov	ebx, 0xc0
	jmp	.label_2001
.label_2023:
	mov	r11, r12
	mov	rdx, r9
	mov	rcx, r8
.label_2010:
	add	rcx, 8
	test	qword ptr [rdx], rsi
	lea	rdx, [rdx + 0x20]
	je	.label_2010
	mov	rdx, qword ptr [rcx]
	mov	qword ptr [rax + rbx*8], rdx
	mov	r15, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rcx + r15*8]
	mov	qword ptr [rax + rbx*8 + 0x800], rcx
	mov	r14, qword ptr [rbp - 0x70]
	mov	r10, qword ptr [rbp - 0x88]
	mov	rdi, qword ptr [rbp - 0x58]
	mov	r12, r11
	jmp	.label_1988
.label_2001:
	test	r12b, 1
	jne	.label_2023
.label_1988:
	add	rsi, rsi
	shr	r12, 1
	inc	rbx
	test	r12, r12
	jne	.label_2001
	jmp	.label_1997
	nop	dword ptr [rax]
.label_309:
	call	xalloc_die
.label_615:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	push	rbx
	mov	rax, qword ptr [rsi]
	test	rdi, rdi
	je	.label_303
	movabs	rcx, 0x5555555555555554
	cmp	rax, rcx
	jae	.label_615
	mov	rbx, rax
	shr	rbx, 1
	add	rbx, rax
	inc	rbx
	mov	qword ptr [rsi], rbx
	jne	.label_304
	call	free
	xor	eax, eax
	jmp	.label_115
.label_303:
	test	rax, rax
	mov	ebx, 0x80
	cmovne	rbx, rax
	test	rbx, rbx
	js	.label_309
	mov	qword ptr [rsi], rbx
.label_304:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_115
	test	rax, rax
	je	.label_309
.label_115:
	pop	rbx
	ret	
	.section	.text
	.align	16
	#Procedure 0x414570

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
	je	.label_2071
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
.label_2071:
	call	abort
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4145e0

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
	nop	word ptr cs:[rax + rax]
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
	nop	dword ptr [rax + rax]
.label_2072:
	xor	eax, eax
	pop	rcx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x41462f

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
	je	.label_2072
	cdqe	
	mov	esi, OFFSET FLAT:__re_error_msgid
	add	rsi, qword ptr [(rax * 8) + __re_error_msgid_idx]
	xor	edi, edi
	mov	edx, 5
	pop	rax
	jmp	dcgettext
	.section	.text
	.align	16
	#Procedure 0x414680

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
	jne	.label_2102
	cmp	qword ptr [r13 + 0x78], 0
	jne	.label_2102
	cmp	byte ptr [r13 + 0x8c], 0
	je	.label_2114
.label_2102:
	mov	r12, qword ptr [r13 + 0x38]
	jmp	.label_2100
.label_2114:
	cmp	rdx, r15
	jle	.label_2119
	lea	rax, [r13 + 0x78]
	mov	qword ptr [rsp + 0x20], rax
	lea	rax, [r13 + 0x20]
	mov	qword ptr [rsp + 8], rax
	jmp	.label_2094
.label_611:
	lea	rax, [rbp + 1]
	cmp	rax, 2
	jb	.label_365
	cmp	rbp, -2
	jne	.label_249
	mov	rax, qword ptr [r13 + 0x40]
	cmp	rax, qword ptr [r13 + 0x58]
	jl	.label_249
.label_365:
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
	jne	.label_379
	mov	rax, qword ptr [rsp + 0x10]
	mov	rcx, qword ptr [rsp + 8]
	mov	qword ptr [rcx], rax
	jmp	.label_379
	nop	
.label_2094:
	mov	r14, rdx
	mov	rbp, qword ptr [r13]
	mov	rbx, qword ptr [r13 + 0x28]
	lea	rax, [rbx + r15]
	movzx	r12d, byte ptr [rbp + rax]
	test	r12b, r12b
	js	.label_2081
	mov	rdi, qword ptr [rsp + 8]
	call	mbsinit
	test	eax, eax
	je	.label_2081
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
.label_379:
	mov	rax, r15
	jmp	.label_418
	nop	dword ptr [rax]
.label_2081:
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
	ja	.label_611
	mov	edi, dword ptr [rsp + 4]
	call	towupper
	mov	r12d, eax
	cmp	r12d, dword ptr [rsp + 4]
	lea	rbx, [rsp + 0x30]
	jne	.label_628
	mov	rdi, qword ptr [r13 + 8]
	add	rdi, r15
	mov	rsi, qword ptr [r13]
	add	rsi, qword ptr [r13 + 0x28]
	add	rsi, r15
	jmp	.label_409
	nop	word ptr cs:[rax + rax]
.label_628:
	mov	rdi, rbx
	mov	esi, r12d
	lea	rdx, [rsp + 0x10]
	call	wcrtomb
	cmp	rbp, rax
	jne	.label_593
	mov	rdi, qword ptr [r13 + 8]
	add	rdi, r15
	mov	rsi, rbx
.label_409:
	mov	rdx, rbp
	call	memcpy
	mov	rcx, qword ptr [r13 + 0x10]
	mov	dword ptr [rcx + r15*4], r12d
	lea	rbx, [rbp + r15]
	lea	rax, [r15 + 1]
	cmp	rax, rbx
	jge	.label_418
	lea	rdi, [rcx + r15*4 + 4]
	lea	rdx, [rbp*4 - 4]
	mov	esi, 0xff
	call	memset
	mov	rax, rbx
.label_418:
	mov	rdx, r14
	cmp	rdx, rax
	mov	r15, rax
	jg	.label_2094
	jmp	.label_2118
.label_593:
	mov	r12, r15
	mov	rdx, r14
	mov	rcx, qword ptr [rsp + 8]
	mov	rsi, qword ptr [rsp + 0x20]
	jmp	.label_426
.label_249:
	mov	rax, qword ptr [rsp + 0x10]
	mov	rcx, qword ptr [rsp + 8]
	mov	qword ptr [rcx], rax
.label_2119:
	mov	rax, r15
.label_2118:
	mov	qword ptr [r13 + 0x30], rax
	mov	qword ptr [r13 + 0x38], rax
	jmp	.label_2107
.label_2100:
	cmp	r15, rdx
	jge	.label_2111
	lea	rcx, [r13 + 0x20]
	lea	rsi, [r13 + 0x78]
.label_426:
	mov	qword ptr [rsp + 0x18], rdx
	sub	rdx, r15
	mov	rax, qword ptr [rcx]
	mov	qword ptr [rsp + 0x10], rax
	mov	rax, qword ptr [rsi]
	test	rax, rax
	mov	qword ptr [rsp + 0x20], r12
	mov	qword ptr [rsp + 8], rcx
	jne	.label_2115
	mov	rbp, qword ptr [r13]
	add	rbp, qword ptr [r13 + 0x28]
	add	rbp, r12
.label_2082:
	lea	rdi, [rsp + 4]
	mov	rsi, rbp
	call	rpl_mbrtowc
	mov	r14, rax
	lea	r12, [r14 - 1]
	cmp	r12, -4
	ja	.label_2123
	mov	edi, dword ptr [rsp + 4]
	call	towupper
	mov	ebx, eax
	cmp	ebx, dword ptr [rsp + 4]
	je	.label_2073
	lea	rdi, [rsp + 0x30]
	lea	rdx, [rsp + 0x10]
	mov	esi, ebx
	call	wcrtomb
	mov	rcx, rax
	sub	rax, r14
	jne	.label_2076
	mov	rdi, qword ptr [r13 + 8]
	add	rdi, r15
	lea	rsi, [rsp + 0x30]
	jmp	.label_2079
.label_2115:
	lea	rbp, [rsp + 0x30]
	movsxd	r8, dword ptr [r13 + 0x90]
	test	r8, r8
	jle	.label_2082
	xor	esi, esi
.label_2090:
	cmp	rsi, rdx
	jge	.label_2082
	mov	rdi, qword ptr [r13]
	add	rdi, qword ptr [r13 + 0x28]
	add	rdi, r12
	movzx	edi, byte ptr [rsi + rdi]
	movzx	ebx, byte ptr [rax + rdi]
	mov	byte ptr [rsp + rsi + 0x30], bl
	inc	rsi
	cmp	rsi, r8
	jl	.label_2090
	jmp	.label_2082
.label_2123:
	lea	rax, [r14 + 1]
	cmp	rax, 2
	jb	.label_2124
	cmp	r14, -2
	jne	.label_2104
	mov	rax, qword ptr [r13 + 0x40]
	cmp	rax, qword ptr [r13 + 0x58]
	jl	.label_2104
.label_2124:
	mov	rax, qword ptr [r13 + 0x28]
	mov	r12, qword ptr [rsp + 0x20]
	add	rax, r12
	mov	rdx, qword ptr [r13]
	mov	rcx, qword ptr [r13 + 0x78]
	mov	al, byte ptr [rdx + rax]
	movzx	edx, al
	test	rcx, rcx
	jne	.label_2108
.label_2106:
	movzx	eax, al
	mov	rcx, qword ptr [r13 + 8]
	mov	byte ptr [rcx + r15], al
	cmp	byte ptr [r13 + 0x8c], 0
	jne	.label_2116
.label_2080:
	inc	r12
	mov	rcx, qword ptr [r13 + 0x10]
	mov	dword ptr [rcx + r15*4], eax
	inc	r15
	cmp	r14, -1
	jne	.label_2093
	mov	rax, qword ptr [rsp + 0x10]
	mov	rcx, qword ptr [rsp + 8]
	mov	qword ptr [rcx], rax
	jmp	.label_2093
.label_2076:
	cmp	rcx, -1
	je	.label_2073
	lea	rbp, [rcx + r15]
	mov	rdi, qword ptr [r13 + 0x40]
	cmp	rbp, rdi
	jbe	.label_2083
.label_2104:
	mov	rax, qword ptr [rsp + 0x10]
	mov	rcx, qword ptr [rsp + 8]
	mov	qword ptr [rcx], rax
	mov	r12, qword ptr [rsp + 0x20]
.label_2111:
	mov	qword ptr [r13 + 0x30], r15
	mov	qword ptr [r13 + 0x38], r12
.label_2107:
	xor	eax, eax
.label_2092:
	add	rsp, 0x78
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_2073:
	mov	rdi, qword ptr [r13 + 8]
	add	rdi, r15
	mov	rsi, rbp
.label_2079:
	mov	rdx, r14
	call	memcpy
	cmp	byte ptr [r13 + 0x8c], 0
	mov	r12, qword ptr [rsp + 0x20]
	jne	.label_2089
.label_2078:
	add	r12, r14
	mov	rax, qword ptr [r13 + 0x10]
	mov	dword ptr [rax + r15*4], ebx
	lea	rbp, [r14 + r15]
	inc	r15
	cmp	r15, rbp
	jge	.label_2093
	lea	rdi, [rax + r15*4]
	lea	rdx, [r14*4 - 4]
	mov	esi, 0xff
	call	memset
	jmp	.label_2096
.label_2093:
	mov	rbp, r15
.label_2096:
	mov	rdx, qword ptr [rsp + 0x18]
	mov	r15, rbp
	jmp	.label_2100
.label_2089:
	mov	rax, qword ptr [r13 + 0x18]
	xor	esi, esi
	cmp	r14, 4
	jb	.label_2113
	xor	esi, esi
	mov	rcx, r14
	and	rcx, 0xfffffffffffffffc
	je	.label_2113
	movq	xmm0, r12
	pshufd	xmm0, xmm0, 0x44
	lea	rdi, [rcx - 4]
	shr	rdi, 2
	lea	edx, [rdi + 1]
	and	edx, 1
	mov	esi, 1
	test	rdi, rdi
	je	.label_2117
	lea	rsi, [rdx - 1]
	sub	rsi, rdi
	mov	edi, 1
	movq	xmm1, rdi
	pslldq	xmm1, 8
	movdqa	xmm8, xmmword ptr [rip + label_1377]
	movdqa	xmm3, xmmword ptr [rip + label_1376]
	movdqa	xmm4, xmmword ptr [rip + label_1382]
	movdqa	xmm5, xmmword ptr [rip + label_1381]
.label_2075:
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
	jne	.label_2075
	jmp	.label_2097
.label_2083:
	mov	qword ptr [rsp + 0x18], rax
	mov	rax, qword ptr [r13 + 0x18]
	test	rax, rax
	mov	qword ptr [rsp + 0x28], rcx
	jne	.label_2098
	shl	rdi, 3
	call	malloc
	mov	rcx, qword ptr [rsp + 0x28]
	mov	qword ptr [r13 + 0x18], rax
	test	rax, rax
	je	.label_2101
.label_2098:
	cmp	byte ptr [r13 + 0x8c], 0
	jne	.label_2110
	test	r15, r15
	je	.label_2105
	xor	edx, edx
	cmp	r15, 4
	jb	.label_2099
	xor	edx, edx
	mov	r9, r15
	and	r9, 0xfffffffffffffffc
	je	.label_2099
	lea	rsi, [r9 - 4]
	mov	rdi, rsi
	shr	rdi, 2
	lea	edx, [rdi + 1]
	and	edx, 3
	mov	r8d, 1
	cmp	rsi, 0xc
	jae	.label_2120
	movq	xmm0, r8
	pslldq	xmm0, 8
	jmp	.label_2112
.label_2117:
	movq	xmm1, rsi
	pslldq	xmm1, 8
.label_2097:
	test	rdx, rdx
	je	.label_2074
	paddq	xmm0, xmm1
	movq	rdx, xmm1
	add	rdx, r15
	movdqu	xmmword ptr [rax + rdx*8], xmm0
	paddq	xmm0, xmmword ptr [rip + label_1376]
	movdqu	xmmword ptr [rax + rdx*8 + 0x10], xmm0
.label_2074:
	cmp	r14, rcx
	mov	rsi, rcx
	je	.label_2078
.label_2113:
	mov	rcx, r14
	sub	rcx, rsi
	lea	rdx, [rsi + r12]
	add	rsi, r15
	lea	rax, [rax + rsi*8]
.label_2087:
	mov	qword ptr [rax], rdx
	inc	rdx
	add	rax, 8
	dec	rcx
	jne	.label_2087
	jmp	.label_2078
.label_2101:
	mov	eax, 0xc
	jmp	.label_2092
.label_2120:
	lea	rsi, [rdx - 1]
	sub	rsi, rdi
	mov	edi, 1
	movq	xmm0, rdi
	pslldq	xmm0, 8
	movdqa	xmm8, xmmword ptr [rip + label_1376]
	movdqa	xmm9, xmmword ptr [rip + label_1377]
	movdqa	xmm10, xmmword ptr [rip + label_1381]
	movdqa	xmm11, xmmword ptr [rip + label_1382]
	movdqa	xmm5, xmmword ptr [rip + label_1383]
	movdqa	xmm6, xmmword ptr [rip + label_1384]
	movdqa	xmm7, xmmword ptr [rip + label_1385]
	movdqa	xmm1, xmmword ptr [rip + label_1386]
.label_2109:
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
	jne	.label_2109
.label_2112:
	test	rdx, rdx
	je	.label_2088
	neg	rdx
	movdqa	xmm1, xmmword ptr [rip + label_1376]
	movdqa	xmm2, xmmword ptr [rip + label_1377]
.label_2122:
	movdqa	xmm3, xmm0
	movq	rsi, xmm0
	movdqu	xmmword ptr [rax + rsi*8], xmm0
	paddq	xmm0, xmm1
	paddq	xmm3, xmm2
	movdqu	xmmword ptr [rax + rsi*8 + 0x10], xmm0
	inc	rdx
	movdqa	xmm0, xmm3
	jne	.label_2122
.label_2088:
	cmp	r15, r9
	mov	rdx, r9
	je	.label_2105
.label_2099:
	mov	qword ptr [rax + rdx*8], rdx
	inc	rdx
	cmp	r15, rdx
	jne	.label_2099
.label_2105:
	mov	byte ptr [r13 + 0x8c], 1
.label_2110:
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
	jb	.label_2077
	lea	r10, [rdi - 1]
	mov	eax, 1
	cmp	r10, 4
	jb	.label_2121
	mov	rsi, r10
	and	rsi, 0xfffffffffffffffc
	mov	r8, r10
	and	r8, 0xfffffffffffffffc
	mov	eax, 1
	je	.label_2121
	mov	rax, rsi
	or	rax, 1
	movq	xmm0, r14
	pshufd	xmm6, xmm0, 0x44
	movq	xmm1, r12
	pshufd	xmm11, xmm1, 0x44
	mov	r9, rbx
	movq	xmm2, rbx
	pshufd	xmm12, xmm2, 0x44
	movdqa	xmm7, xmmword ptr [rip + label_2084]
	movdqa	xmm8, xmmword ptr [rip + label_1376]
	movdqa	xmm9, xmmword ptr [rip + label_1377]
	movdqa	xmm10, xmmword ptr [rip + label_2085]
	pxor	xmm6, xmm10
	pshufd	xmm13, xmmword ptr [rip + label_2086],  0xe8
	mov	rdi, r8
.label_2103:
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
	jne	.label_2103
	cmp	r10, r8
	mov	rbx, r9
	mov	rdi, qword ptr [rsp + 0x28]
	je	.label_2077
.label_2121:
	lea	rcx, [rcx + r15*4]
	lea	rdx, [rdx + r15*8]
.label_2095:
	cmp	rax, r14
	mov	rsi, r12
	cmovb	rsi, rax
	add	rsi, rbx
	mov	qword ptr [rdx + rax*8], rsi
	mov	dword ptr [rcx + rax*4], 0xffffffff
	inc	rax
	cmp	rdi, rax
	jne	.label_2095
.label_2077:
	mov	rax, qword ptr [r13 + 0x58]
	mov	rcx, qword ptr [rsp + 0x18]
	add	rax, rcx
	mov	qword ptr [r13 + 0x58], rax
	cmp	qword ptr [r13 + 0x60], rbx
	mov	r12, rbx
	jle	.label_2091
	add	qword ptr [r13 + 0x68], rcx
.label_2091:
	mov	rdx, qword ptr [r13 + 0x40]
	cmp	rdx, rax
	cmovg	rdx, rax
	add	r12, r14
	mov	r15, rbp
	jmp	.label_2100
.label_2108:
	mov	al, byte ptr [rcx + rdx]
	jmp	.label_2106
.label_2116:
	mov	rcx, qword ptr [r13 + 0x18]
	mov	qword ptr [rcx + r15*8], r12
	jmp	.label_2080
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x414fb0

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
	mov	r15, rsi
	mov	r14, rdi
	mov	r8, qword ptr [r12 + 8]
	test	r8, r8
	je	.label_2136
	mov	rbx, r8
	jle	.label_2143
	mov	rcx, qword ptr [r12 + 0x10]
	xor	esi, esi
	cmp	r8, 4
	mov	rbx, r8
	jb	.label_2144
	xor	esi, esi
	mov	rdx, r8
	and	rdx, 0xfffffffffffffffc
	mov	rbx, r8
	je	.label_2144
	movq	xmm0, r8
	lea	rbp, [rdx - 4]
	mov	rbx, rbp
	shr	rbx, 2
	lea	esi, [rbx + 1]
	and	esi, 3
	xor	edi, edi
	cmp	rbp, 0xc
	jae	.label_2126
	pxor	xmm1, xmm1
	jmp	.label_2133
.label_2126:
	lea	rbp, [rsi - 1]
	sub	rbp, rbx
	pxor	xmm1, xmm1
	xor	edi, edi
	nop	word ptr cs:[rax + rax]
.label_2139:
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
	jne	.label_2139
.label_2133:
	test	rsi, rsi
	je	.label_2130
	lea	rdi, [rcx + rdi*8 + 0x10]
	neg	rsi
	nop	word ptr cs:[rax + rax]
.label_2132:
	movdqu	xmm2, xmmword ptr [rdi - 0x10]
	movdqu	xmm3, xmmword ptr [rdi]
	paddq	xmm0, xmm2
	paddq	xmm1, xmm3
	add	rdi, 0x20
	inc	rsi
	jne	.label_2132
.label_2130:
	paddq	xmm0, xmm1
	pshufd	xmm1, xmm0, 0x4e
	paddq	xmm1, xmm0
	movq	rbx, xmm1
	cmp	r8, rdx
	mov	rsi, rdx
	je	.label_2143
.label_2144:
	mov	rdx, r8
	sub	rdx, rsi
	lea	rcx, [rcx + rsi*8]
	nop	
.label_2148:
	add	rbx, qword ptr [rcx]
	add	rcx, 8
	dec	rdx
	jne	.label_2148
.label_2143:
	mov	rdx, qword ptr [r15 + 0x40]
	mov	rcx, qword ptr [r15 + 0x88]
	and	rcx, rbx
	lea	rsi, [rcx + rcx*2]
	mov	rcx, qword ptr [rdx + rsi*8]
	test	rcx, rcx
	jle	.label_2151
	mov	rdx, qword ptr [rdx + rsi*8 + 0x10]
	xor	esi, esi
	nop	
.label_2137:
	test	r12, r12
	je	.label_2134
	mov	r13, qword ptr [rdx + rsi*8]
	cmp	rbx, qword ptr [r13]
	jne	.label_2134
	cmp	qword ptr [r13 + 0x10], r8
	jne	.label_2134
	mov	rdi, r8
	nop	dword ptr [rax + rax]
.label_2142:
	test	rdi, rdi
	jle	.label_2125
	mov	rbp, qword ptr [r13 + 0x18]
	mov	rbp, qword ptr [rbp + rdi*8 - 8]
	mov	rax, qword ptr [r12 + 0x10]
	cmp	rbp, qword ptr [rax + rdi*8 - 8]
	lea	rdi, [rdi - 1]
	je	.label_2142
	nop	word ptr cs:[rax + rax]
.label_2134:
	inc	rsi
	cmp	rsi, rcx
	jl	.label_2137
.label_2151:
	mov	edi, 0x70
	mov	esi, 1
	call	rpl_calloc
	mov	r13, rax
	test	r13, r13
	je	.label_2127
	mov	rax, r13
	add	rax, 8
	mov	rdi, qword ptr [r12 + 8]
	mov	qword ptr [r13 + 0x10], rdi
	mov	rbp, qword ptr [r12 + 8]
	test	rbp, rbp
	mov	qword ptr [rsp + 8], r14
	jle	.label_2128
	mov	qword ptr [rsp + 0x10], rax
	mov	qword ptr [r13 + 8], rdi
	shl	rdi, 3
	call	malloc
	mov	qword ptr [r13 + 0x18], rax
	test	rax, rax
	je	.label_2141
	lea	r14, [r12 + 0x10]
	mov	rsi, qword ptr [r12 + 0x10]
	shl	rbp, 3
	mov	rdi, rax
	mov	rdx, rbp
	call	memcpy
	mov	rax, qword ptr [rsp + 0x10]
	mov	qword ptr [r13 + 0x50], rax
	jmp	.label_2146
.label_2128:
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [rax], xmm0
	mov	qword ptr [rax + 0x10], 0
	cmp	qword ptr [r12 + 8], 0
	mov	qword ptr [r13 + 0x50], rax
	jle	.label_2150
	lea	r14, [r12 + 0x10]
.label_2146:
	xor	eax, eax
	nop	dword ptr [rax]
.label_2149:
	mov	r8, qword ptr [r15]
	mov	rdx, qword ptr [r14]
	mov	rsi, qword ptr [rdx + rax*8]
	shl	rsi, 4
	mov	ebp, dword ptr [r8 + rsi + 8]
	mov	edx, ebp
	and	edx, 0x3ffff
	cmp	edx, 1
	je	.label_2131
	mov	edi, ebp
	shr	edi, 0x14
	movzx	ecx, byte ptr [r13 + 0x68]
	mov	edx, ecx
	shr	dl, 5
	movzx	edx, dl
	or	edx, edi
	shl	dl, 5
	and	dl, 0x20
	and	cl, 0xdf
	or	cl, dl
	mov	byte ptr [r13 + 0x68], cl
	cmp	bpl, 0xc
	je	.label_2129
	cmp	bpl, 4
	je	.label_2145
	cmp	bpl, 2
	jne	.label_2147
	or	cl, 0x10
	jmp	.label_2138
.label_2145:
	or	cl, 0x40
	jmp	.label_2138
.label_2147:
	lea	rdx, [r8 + rsi + 8]
	test	dword ptr [rdx], 0x3ff00
	je	.label_2131
.label_2129:
	or	cl, 0x80
.label_2138:
	mov	byte ptr [r13 + 0x68], cl
.label_2131:
	inc	rax
	cmp	rax, qword ptr [r12 + 8]
	jl	.label_2149
.label_2150:
	mov	rdi, r15
	mov	rsi, r13
	mov	rdx, rbx
	call	register_state
	test	eax, eax
	jne	.label_2135
.label_2125:
	mov	rax, r13
	add	rsp, 0x18
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_2136:
	mov	dword ptr [r14], 0
	jmp	.label_2140
.label_2135:
	mov	rdi, r13
	call	free_state
	mov	r14, qword ptr [rsp + 8]
	jmp	.label_2127
.label_2141:
	mov	rdi, r13
	call	free
.label_2127:
	mov	dword ptr [r14], 0xc
.label_2140:
	xor	r13d, r13d
	jmp	.label_2125
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4152f0

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
	mov	qword ptr [rsp], r9
	mov	qword ptr [rsp + 0x30], r8
	mov	qword ptr [rsp + 0x28], rdx
	mov	r9, rsi
	mov	r10, qword ptr [rdi + 0x98]
	mov	r8, qword ptr [rdi + 0xc8]
	xor	r14d, r14d
	test	r8, r8
	jle	.label_2161
	mov	rbp, qword ptr [rdi + 0xd8]
	xor	r14d, r14d
	mov	rdx, r8
	nop	word ptr cs:[rax + rax]
.label_2152:
	lea	rsi, [rdx + r14]
	mov	rax, rsi
	shr	rax, 0x3f
	add	rax, rsi
	sar	rax, 1
	lea	rsi, [rax + rax*4]
	cmp	qword ptr [rbp + rsi*8 + 8], rcx
	cmovge	rdx, rax
	lea	rsi, [rax + 1]
	cmovl	r14, rsi
	cmp	r14, rdx
	jl	.label_2152
.label_2161:
	cmp	r14, r8
	jge	.label_2164
	mov	rsi, qword ptr [rdi + 0xd8]
	lea	rdx, [r14 + r14*4]
	cmp	qword ptr [rsi + rdx*8 + 8], rcx
	je	.label_2165
.label_2164:
	mov	r14, -1
.label_2165:
	xor	r12d, r12d
	test	r8, r8
	jle	.label_2154
	mov	rbp, qword ptr [rdi + 0xd8]
	xor	r12d, r12d
	mov	rdx, r8
	nop	
.label_2160:
	lea	rsi, [rdx + r12]
	mov	rax, rsi
	shr	rax, 0x3f
	add	rax, rsi
	sar	rax, 1
	lea	rsi, [rax + rax*4]
	mov	rbx, qword ptr [rsp]
	cmp	qword ptr [rbp + rsi*8 + 8], rbx
	cmovge	rdx, rax
	lea	rsi, [rax + 1]
	cmovl	r12, rsi
	cmp	r12, rdx
	jl	.label_2160
.label_2154:
	cmp	r12, r8
	jge	.label_2155
	mov	rax, qword ptr [rdi + 0xd8]
	lea	rdx, [r12 + r12*4]
	mov	rsi, qword ptr [rsp]
	cmp	qword ptr [rax + rdx*8 + 8], rsi
	je	.label_2158
.label_2155:
	mov	r12, -1
.label_2158:
	cmp	qword ptr [r9 + 8], 0
	jle	.label_2166
	xor	r15d, r15d
	mov	qword ptr [rsp + 0x20], rcx
	mov	qword ptr [rsp + 0x18], r9
	mov	qword ptr [rsp + 0x10], rdi
	mov	qword ptr [rsp + 8], r10
	nop	word ptr cs:[rax + rax]
.label_2159:
	mov	rax, qword ptr [rdi + 0xd8]
	mov	rdx, qword ptr [r9 + 0x10]
	mov	r11, qword ptr [rdx + r15*8]
	lea	rsi, [r11 + r11*4]
	mov	rdx, qword ptr [rax + rsi*8]
	mov	rbx, qword ptr [r10]
	shl	rdx, 4
	mov	rdx, qword ptr [rbx + rdx]
	mov	rbp, qword ptr [rax + rsi*8 + 0x10]
	mov	r13d, 0xffffffff
	cmp	rbp, rcx
	jle	.label_2162
	mov	ebx, 0xffffffff
	jmp	.label_2157
	nop	dword ptr [rax]
.label_2162:
	mov	rbx, qword ptr [rax + rsi*8 + 0x18]
	cmp	rbx, rcx
	jge	.label_2163
	mov	ebx, 1
	jmp	.label_2157
	nop	word ptr cs:[rax + rax]
.label_2163:
	xor	r8d, r8d
	cmp	rbp, rcx
	sete	r8b
	xor	esi, esi
	cmp	rbx, rcx
	sete	sil
	add	esi, esi
	xor	ebx, ebx
	or	esi, r8d
	je	.label_2157
	mov	rcx, qword ptr [rsp + 0x28]
	mov	r8, r14
	mov	rbx, rdx
	call	check_dst_limits_calc_pos_1
	mov	rdx, rbx
	mov	r10, qword ptr [rsp + 8]
	mov	rdi, qword ptr [rsp + 0x10]
	mov	r9, qword ptr [rsp + 0x18]
	mov	rcx, qword ptr [rsp + 0x20]
	mov	ebx, eax
	mov	rax, qword ptr [r9 + 0x10]
	mov	r11, qword ptr [rax + r15*8]
	mov	rax, qword ptr [rdi + 0xd8]
	lea	rsi, [r11 + r11*4]
	mov	rbp, qword ptr [rax + rsi*8 + 0x10]
	nop	dword ptr [rax]
.label_2157:
	cmp	rbp, qword ptr [rsp]
	jg	.label_2153
	lea	rsi, [r11 + r11*4]
	mov	rax, qword ptr [rax + rsi*8 + 0x18]
	mov	r13d, 1
	cmp	rax, qword ptr [rsp]
	jl	.label_2153
	mov	r11d, ebx
	xor	ebx, ebx
	mov	r8, qword ptr [rsp]
	cmp	rbp, r8
	sete	bl
	xor	esi, esi
	cmp	rax, r8
	sete	sil
	add	esi, esi
	xor	r13d, r13d
	or	esi, ebx
	mov	ebx, r11d
	je	.label_2153
	mov	rcx, qword ptr [rsp + 0x30]
	mov	r8, r12
	call	check_dst_limits_calc_pos_1
	mov	r10, qword ptr [rsp + 8]
	mov	rdi, qword ptr [rsp + 0x10]
	mov	r9, qword ptr [rsp + 0x18]
	mov	rcx, qword ptr [rsp + 0x20]
	mov	r13d, eax
	nop	word ptr cs:[rax + rax]
.label_2153:
	cmp	r13d, ebx
	mov	al, 1
	jne	.label_2156
	inc	r15
	cmp	r15, qword ptr [r9 + 8]
	jl	.label_2159
.label_2166:
	xor	eax, eax
.label_2156:
	add	rsp, 0x38
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
.label_2168:
	mov	edx, dword ptr [rbx + 0x70]
	jmp	.label_643
	.section	.text
	.align	16
	#Procedure 0x415585

	.globl re_string_context_at
	.type re_string_context_at, @function
re_string_context_at:
	push	rbp
	push	rbx
	push	rax
	mov	rbx, rdi
	test	rsi, rsi
	js	.label_2168
	cmp	qword ptr [rbx + 0x58], rsi
	je	.label_2170
	cmp	dword ptr [rbx + 0x90], 2
	jl	.label_2171
	mov	rax, qword ptr [rbx + 0x10]
	inc	rsi
	nop	dword ptr [rax]
.label_2173:
	mov	ebp, dword ptr [rax + rsi*4 - 4]
	cmp	ebp, -1
	jne	.label_2174
	dec	rsi
	test	rsi, rsi
	jg	.label_2173
	mov	edx, dword ptr [rbx + 0x70]
	jmp	.label_643
.label_2170:
	and	edx, 2
	xor	edx, 0xa
	jmp	.label_643
.label_2174:
	cmp	byte ptr [rbx + 0x8e], 0
	jne	.label_2169
.label_2172:
	xor	edx, edx
	cmp	ebp, 0xa
	jne	.label_643
.label_2167:
	xor	edx, edx
	cmp	byte ptr [rbx + 0x8d], 0
	setne	dl
	add	edx, edx
.label_643:
	mov	eax, edx
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
.label_2171:
	mov	rax, qword ptr [rbx + 8]
	mov	rcx, qword ptr [rbx + 0x80]
	movzx	eax, byte ptr [rax + rsi]
	mov	edx, eax
	shr	dl, 6
	movzx	edx, dl
	mov	rcx, qword ptr [rcx + rdx*8]
	mov	edx, 1
	bt	rcx, rax
	jb	.label_643
	xor	edx, edx
	cmp	al, 0xa
	je	.label_2167
	jmp	.label_643
.label_2169:
	mov	edi, ebp
	call	iswalnum
	cmp	ebp, 0x5f
	mov	edx, 1
	je	.label_643
	test	eax, eax
	je	.label_2172
	jmp	.label_643
	nop	
	.section	.text
	.align	16
	#Procedure 0x415640

	.globl merge_state_array
	.type merge_state_array, @function
merge_state_array:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x28
	mov	r15, rcx
	mov	r14, rdx
	mov	rbx, rsi
	mov	r12, rdi
	xor	eax, eax
	test	r15, r15
	jle	.label_2175
	xor	ebp, ebp
	lea	r13, [rsp + 0x10]
	nop	dword ptr [rax + rax]
.label_2177:
	mov	rsi, qword ptr [rbx + rbp*8]
	mov	rdx, qword ptr [r14 + rbp*8]
	test	rsi, rsi
	je	.label_2176
	test	rdx, rdx
	je	.label_2178
	add	rsi, 8
	add	rdx, 8
	mov	rdi, r13
	call	re_node_set_init_union
	mov	dword ptr [rsp + 0xc], eax
	test	eax, eax
	jne	.label_2175
	lea	rdi, [rsp + 0xc]
	mov	rsi, r12
	mov	rdx, r13
	call	re_acquire_state
	mov	qword ptr [rbx + rbp*8], rax
	mov	rdi, qword ptr [rsp + 0x20]
	call	free
	mov	eax, dword ptr [rsp + 0xc]
	test	eax, eax
	je	.label_2178
	jmp	.label_2175
	nop	word ptr cs:[rax + rax]
.label_2176:
	mov	qword ptr [rbx + rbp*8], rdx
.label_2178:
	inc	rbp
	xor	eax, eax
	cmp	rbp, r15
	jl	.label_2177
.label_2175:
	add	rsp, 0x28
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4156f0

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
	je	.label_2179
	lea	rax, [r11 + 1]
	mov	rbx, qword ptr [rsi + 0x30]
	cmp	rax, rbx
	jge	.label_2179
	mov	r10, qword ptr [rsi + 0x10]
	lea	rax, [r10 + r11*4]
	mov	edi, 1
	nop	word ptr cs:[rax + rax]
.label_2182:
	cmp	dword ptr [rax + rdi*4], -1
	jne	.label_2180
	lea	rdx, [r11 + rdi + 1]
	inc	rdi
	cmp	rdx, rbx
	jl	.label_2182
.label_2180:
	cmp	edi, 2
	jl	.label_2179
	mov	dword ptr [r14], 1
	mov	eax, dword ptr [r10 + r11*4]
	mov	dword ptr [r14 + 8], eax
	movsxd	rax, edi
	add	rax, r11
	mov	qword ptr [rsi + 0x48], rax
	jmp	.label_2183
.label_2179:
	movsxd	rax, ecx
	add	r11, rax
	mov	qword ptr [rsi + 0x48], r11
	movzx	edi, byte ptr [r15 + 8]
	mov	eax, edi
	add	al, 0xea
	movzx	eax, al
	cmp	al, 8
	ja	.label_444
	jmp	qword ptr [(rax * 8) + label_2181]
.label_2411:
	mov	eax, 7
	cmp	qword ptr [rsi + 0x68], r11
	jle	.label_446
	mov	r11b, byte ptr [r15]
	xor	ecx, ecx
	jmp	.label_1218
	nop	word ptr cs:[rax + rax]
.label_1222:
	inc	rcx
	movzx	edi, byte ptr [r15 + 8]
.label_1218:
	cmp	dil, 0x1e
	jne	.label_1228
	cmp	byte ptr [rsi + 0x8b], 0
	jne	.label_1229
	mov	rbx, qword ptr [rsi + 0x48]
	lea	rdi, [rbx + 1]
	mov	qword ptr [rsi + 0x48], rdi
	mov	rdx, qword ptr [rsi + 8]
	mov	bl, byte ptr [rdx + rbx]
	jmp	.label_1217
	nop	dword ptr [rax]
.label_1228:
	mov	rdx, qword ptr [rsi + 0x48]
	lea	rdi, [rdx + 1]
	mov	qword ptr [rsi + 0x48], rdi
	mov	rbx, qword ptr [rsi + 8]
.label_1221:
	mov	bl, byte ptr [rbx + rdx]
.label_1217:
	cmp	qword ptr [rsi + 0x68], rdi
	jle	.label_446
	cmp	bl, r11b
	jne	.label_1239
	mov	rdx, qword ptr [rsi + 8]
	cmp	byte ptr [rdx + rdi], 0x5d
	je	.label_1209
.label_1239:
	mov	rdx, qword ptr [r14 + 8]
	mov	byte ptr [rdx + rcx], bl
	cmp	rcx, 0x1e
	jle	.label_1222
	jmp	.label_446
.label_1229:
	cmp	byte ptr [rsi + 0x8c], 0
	je	.label_1220
	mov	r9, qword ptr [rsi + 0x30]
	mov	r8, qword ptr [rsi + 0x48]
	cmp	r8, r9
	je	.label_1219
	mov	rdx, qword ptr [rsi + 0x10]
	cmp	dword ptr [rdx + r8*4], -1
	je	.label_1216
.label_1219:
	mov	rdx, qword ptr [rsi]
	mov	rdi, qword ptr [rsi + 0x18]
	mov	rbx, qword ptr [rsi + 0x28]
	add	rbx, qword ptr [rdi + r8*8]
	mov	bl, byte ptr [rdx + rbx]
	test	bl, bl
	js	.label_1216
	mov	edi, 1
	cmp	dword ptr [rsi + 0x90], 1
	je	.label_1211
	lea	rdx, [r8 + 1]
	cmp	rdx, r9
	jge	.label_1211
	lea	r10, [r8*4]
	add	r10, qword ptr [rsi + 0x10]
	mov	edi, 1
.label_1212:
	cmp	dword ptr [r10 + rdi*4], -1
	jne	.label_1211
	lea	rdx, [r8 + rdi + 1]
	inc	rdi
	cmp	rdx, r9
	jl	.label_1212
.label_1211:
	movsxd	rdi, edi
	add	rdi, r8
	mov	qword ptr [rsi + 0x48], rdi
	jmp	.label_1217
.label_1220:
	mov	rdx, qword ptr [rsi + 0x48]
	lea	rdi, [rdx + 1]
	add	rdx, qword ptr [rsi + 0x28]
	mov	qword ptr [rsi + 0x48], rdi
	mov	rbx, qword ptr [rsi]
	jmp	.label_1221
.label_1216:
	lea	rdi, [r8 + 1]
	mov	qword ptr [rsi + 0x48], rdi
	mov	rdx, qword ptr [rsi + 8]
	mov	bl, byte ptr [rdx + r8]
	jmp	.label_1217
.label_1209:
	inc	rdi
	mov	qword ptr [rsi + 0x48], rdi
	movsxd	rax, ecx
	mov	rcx, qword ptr [r14 + 8]
	mov	byte ptr [rcx + rax], 0
	mov	cl, byte ptr [r15 + 8]
	xor	eax, eax
	cmp	cl, 0x1e
	je	.label_1231
	cmp	cl, 0x1c
	je	.label_1241
	cmp	cl, 0x1a
	jne	.label_446
	mov	dword ptr [r14], 3
	jmp	.label_446
.label_1231:
	mov	dword ptr [r14], 4
	jmp	.label_446
.label_1241:
	mov	dword ptr [r14], 2
	jmp	.label_446
.label_2410:
	test	r9b, r9b
	jne	.label_444
	lea	rdi, [rsp]
	mov	rdx, r8
	call	peek_token_bracket
	mov	eax, 0xb
	cmp	byte ptr [rsp + 8], 0x15
	jne	.label_446
.label_444:
	mov	dword ptr [r14], 0
	mov	al, byte ptr [r15]
	mov	byte ptr [r14 + 8], al
.label_2183:
	xor	eax, eax
.label_446:
	add	rsp, 0x10
	pop	rbx
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	16
	#Procedure 0x41594a
	.globl sub_41594a
	.type sub_41594a, @function
sub_41594a:

	nop	word ptr [rax + rax]
.label_2189:
	mov	byte ptr [rdi + 8], 2
	xor	eax, eax
	ret	
.label_2187:
	mov	byte ptr [rdi + 8], 0x16
	mov	eax, 1
	ret	
	.section	.text
	.align	16
	#Procedure 0x415961

	.globl peek_token_bracket
	.type peek_token_bracket, @function
peek_token_bracket:
	mov	rax, qword ptr [rsi + 0x48]
	cmp	qword ptr [rsi + 0x68], rax
	jle	.label_2189
	mov	rcx, qword ptr [rsi + 8]
	mov	al, byte ptr [rcx + rax]
	mov	byte ptr [rdi], al
	cmp	dword ptr [rsi + 0x90], 2
	jl	.label_2190
	mov	r8, qword ptr [rsi + 0x48]
	cmp	r8, qword ptr [rsi + 0x30]
	je	.label_2190
	mov	rcx, qword ptr [rsi + 0x10]
	cmp	dword ptr [rcx + r8*4], -1
	je	.label_2184
.label_2190:
	test	dl, 1
	je	.label_2186
	cmp	al, 0x5c
	jne	.label_2186
	mov	rcx, qword ptr [rsi + 0x48]
	inc	rcx
	cmp	rcx, qword ptr [rsi + 0x58]
	jge	.label_2186
	mov	qword ptr [rsi + 0x48], rcx
	mov	rax, qword ptr [rsi + 8]
	mov	al, byte ptr [rax + rcx]
	mov	byte ptr [rdi], al
	jmp	.label_2184
.label_2191:
	test	dl, 4
	je	.label_2192
	mov	byte ptr [rdi + 8], 0x1e
	mov	eax, 2
	ret	
	.section	.text
	.align	16
	#Procedure 0x4159c6
	.globl sub_4159c6
	.type sub_4159c6, @function
sub_4159c6:

	nop	
.label_2186:
	cmp	al, 0x5c
	jg	.label_2185
	cmp	al, 0x2d
	je	.label_2187
	cmp	al, 0x5b
	jne	.label_2184
	mov	rax, qword ptr [rsi + 0x48]
	inc	rax
	cmp	rax, qword ptr [rsi + 0x58]
	jge	.label_2194
	mov	rcx, qword ptr [rsi + 8]
	mov	al, byte ptr [rcx + rax]
	mov	byte ptr [rdi], al
	cmp	al, 0x3d
	je	.label_2193
	cmp	al, 0x3a
	je	.label_2191
	cmp	al, 0x2e
	jne	.label_2192
	mov	byte ptr [rdi + 8], 0x1a
	mov	eax, 2
	ret	
.label_2184:
	mov	byte ptr [rdi + 8], 1
	mov	eax, 1
	ret	
.label_2193:
	mov	byte ptr [rdi + 8], 0x1c
	mov	eax, 2
	ret	
.label_2185:
	cmp	al, 0x5d
	je	.label_2188
	cmp	al, 0x5e
	jne	.label_2184
	mov	byte ptr [rdi + 8], 0x19
	mov	eax, 1
	ret	
.label_2188:
	mov	byte ptr [rdi + 8], 0x15
	mov	eax, 1
	ret	
.label_2194:
	mov	byte ptr [rdi], 0
.label_2192:
	mov	byte ptr [rdi + 8], 1
	mov	byte ptr [rdi], 0x5b
	mov	eax, 1
	ret	
	.section	.text
	.align	16
	#Procedure 0x415a40

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
	jne	.label_2195
	mov	rax, qword ptr [rbx + 0x28]
	cmp	rax, qword ptr [rbx + 0x20]
	jne	.label_2195
	cmp	qword ptr [rbx + 0x48], 0
	je	.label_2196
.label_2195:
	mov	rdi, rbx
	mov	rsi, rbp
	mov	edx, r14d
	pop	rbx
	pop	r14
	pop	rbp
	jmp	fseeko
.label_2196:
	mov	rdi, rbx
	call	fileno
	mov	edi, eax
	mov	rsi, rbp
	mov	edx, r14d
	call	lseek
	mov	rcx, rax
	mov	eax, 0xffffffff
	cmp	rcx, -1
	je	.label_2197
	and	byte ptr [rbx], 0xef
	mov	qword ptr [rbx + 0x90], rcx
	xor	eax, eax
.label_2197:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x415aae
	.globl sub_415aae
	.type sub_415aae, @function
sub_415aae:

	nop	
	.section	.text
	.align	16
	#Procedure 0x415ab0
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
	#Procedure 0x415ac8
	.globl sub_415ac8
	.type sub_415ac8, @function
sub_415ac8:

	nop	dword ptr [rax + rax]
.label_2198:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x415ad5
	.globl sub_415ad5
	.type sub_415ad5, @function
sub_415ad5:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x415adb
	.globl xcharalloc
	.type xcharalloc, @function
xcharalloc:

	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	je	.label_2199
	test	rax, rax
	je	.label_2198
.label_2199:
	pop	rbx
	ret	
	.section	.text
	.align	16
	#Procedure 0x415af0

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
	jle	.label_2210
	lea	r14, [r13 + 0x20]
	lea	r15, [rsp + 0xc]
	jmp	.label_2201
	.section	.text
	.align	16
	#Procedure 0x415b2b
	.globl sub_415b2b
	.type sub_415b2b, @function
sub_415b2b:

	nop	dword ptr [rax + rax]
.label_2207:
	mov	rax, qword ptr [r13 + 0x28]
	add	rax, rbx
	mov	rcx, qword ptr [r13]
	movzx	ecx, byte ptr [rcx + rax]
	mov	dword ptr [rsp + 0xc], ecx
	mov	rax, qword ptr [r13 + 0x78]
	test	rax, rax
	jne	.label_2203
.label_2212:
	mov	qword ptr [r14], rbp
	mov	eax, 1
.label_2204:
	mov	rdx, qword ptr [r13 + 0x10]
	mov	dword ptr [rdx + rbx*4], ecx
	lea	rbp, [rax + rbx]
	lea	rcx, [rbx + 1]
	cmp	rcx, rbp
	jge	.label_2205
	lea	rdi, [rdx + rbx*4 + 4]
	lea	rdx, [rax*4 - 4]
	mov	esi, 0xff
	call	memset
	mov	rcx, rbp
.label_2205:
	cmp	r12, rcx
	mov	rbx, rcx
	jg	.label_2201
	jmp	.label_2202
.label_2211:
	mov	ecx, dword ptr [rsp + 0xc]
	jmp	.label_2204
.label_2200:
	cmp	dword ptr [r13 + 0x90], 0
	lea	rsi, [rsp + 0x10]
	jle	.label_2206
	xor	eax, eax
.label_2209:
	cmp	rax, rdx
	jge	.label_2208
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
	jl	.label_2209
	lea	rsi, [rsp + 0x10]
	jmp	.label_2206
.label_2203:
	movzx	ecx, byte ptr [rax + rcx]
	mov	dword ptr [rsp + 0xc], ecx
	jmp	.label_2212
.label_2208:
	lea	rsi, [rsp + 0x10]
	jmp	.label_2206
	.section	.text
	.align	16
	#Procedure 0x415bfe
	.globl sub_415bfe
	.type sub_415bfe, @function
sub_415bfe:

	nop	
.label_2201:
	mov	rdx, r12
	sub	rdx, rbx
	mov	rbp, qword ptr [r13 + 0x20]
	cmp	qword ptr [r13 + 0x78], 0
	jne	.label_2200
	mov	rsi, qword ptr [r13]
	add	rsi, qword ptr [r13 + 0x28]
	add	rsi, rbx
.label_2206:
	mov	rdi, r15
	mov	rcx, r14
	call	rpl_mbrtowc
	lea	rcx, [rax + 1]
	cmp	rcx, 2
	jb	.label_2207
	cmp	rax, -2
	jne	.label_2211
	mov	rax, qword ptr [r13 + 0x40]
	cmp	rax, qword ptr [r13 + 0x58]
	jge	.label_2207
	mov	qword ptr [r14], rbp
.label_2210:
	mov	rcx, rbx
.label_2202:
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
	.section	.text
	.align	16
	#Procedure 0x415c6a
	.globl sub_415c6a
	.type sub_415c6a, @function
sub_415c6a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x415cd5
	.globl sub_415cd5
	.type sub_415cd5, @function
sub_415cd5:

	nop	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x415ce2
	.globl sub_415ce2
	.type sub_415ce2, @function
sub_415ce2:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x415d06
	.globl sub_415d06
	.type sub_415d06, @function
sub_415d06:

	nop	word ptr cs:[rax + rax]
