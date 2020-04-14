	.section	.text
	.align	16
	#Procedure 0x4015d9
	.globl sub_4015d9
	.type sub_4015d9, @function
sub_4015d9:

	hlt	
	.section	.text
	.align	16
	#Procedure 0x4015da
	.globl sub_4015da
	.type sub_4015da, @function
sub_4015da:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401612
	.globl sub_401612
	.type sub_401612, @function
sub_401612:

	nop	dword ptr [rax]
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40165a
	.globl sub_40165a
	.type sub_40165a, @function
sub_40165a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40167c
	.globl sub_40167c
	.type sub_40167c, @function
sub_40167c:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x40168d
	.globl sub_40168d
	.type sub_40168d, @function
sub_40168d:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4016a6
	.globl sub_4016a6
	.type sub_4016a6, @function
sub_4016a6:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4016b0
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
	je	.label_10
	test	r15, r15
	je	.label_9
.label_10:
	mov	rdi, r15
	mov	rsi, r14
	mov	rdx, rbx
	call	memcpy
	mov	rax, r15
	pop	rbx
	pop	r14
	pop	r15
	ret	
.label_9:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x4016f2
	.globl sub_4016f2
	.type sub_4016f2, @function
sub_4016f2:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401700
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
	je	.label_11
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
.label_11:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x401768
	.globl sub_401768
	.type sub_401768, @function
sub_401768:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401770
	.globl xcharalloc
	.type xcharalloc, @function
xcharalloc:

	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	je	.label_12
	test	rax, rax
	je	.label_13
.label_12:
	pop	rbx
	ret	
.label_13:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x40178a
	.globl sub_40178a
	.type sub_40178a, @function
sub_40178a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401790

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
	je	.label_14
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
.label_14:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x4017fc
	.globl sub_4017fc
	.type sub_4017fc, @function
sub_4017fc:

	nop	dword ptr [rax]
.label_15:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x401805
	.globl sub_401805
	.type sub_401805, @function
sub_401805:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401810
	.globl xnmalloc
	.type xnmalloc, @function
xnmalloc:

	push	rbx
	mov	rbx, rsi
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rdi
	jb	.label_15
	imul	rbx, rdi
	mov	rdi, rbx
	call	malloc
	test	rbx, rbx
	je	.label_16
	test	rax, rax
	je	.label_15
.label_16:
	pop	rbx
	ret	
	.section	.text
	.align	16
	#Procedure 0x401840
	.globl quotearg_n_mem
	.type quotearg_n_mem, @function
quotearg_n_mem:

	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	.section	.text
	.align	16
	#Procedure 0x40184a
	.globl sub_40184a
	.type sub_40184a, @function
sub_40184a:

	nop	word ptr [rax + rax]
.label_20:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x401855
	.globl quotearg_custom
	.type quotearg_custom, @function
quotearg_custom:

	sub	rsp, 0x38
	mov	rax, rdx
	mov	rcx, qword ptr [rip + label_17]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0, xmmword ptr [rip + label_18]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_19]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rdi, rdi
	je	.label_20
	test	rsi, rsi
	je	.label_20
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
	.align	16
	#Procedure 0x4018c0

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
	jne	.label_22
	call	locale_charset
	movsx	ecx, byte ptr [rax]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x47
	je	.label_29
	cmp	ecx, 0x55
	jne	.label_21
	movsx	ecx, byte ptr [rax + 1]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x54
	jne	.label_21
	movsx	ecx, byte ptr [rax + 2]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x46
	jne	.label_21
	cmp	byte ptr [rax + 3], 0x2d
	jne	.label_21
	cmp	byte ptr [rax + 4], 0x38
	jne	.label_21
	cmp	byte ptr [rax + 5], 0
	jne	.label_21
	cmp	byte ptr [rbx], 0x60
	mov	ecx, OFFSET FLAT:label_26
	mov	eax, OFFSET FLAT:label_27
	jmp	.label_28
.label_29:
	movsx	ecx, byte ptr [rax + 1]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x42
	jne	.label_21
	cmp	byte ptr [rax + 2], 0x31
	jne	.label_21
	cmp	byte ptr [rax + 3], 0x38
	jne	.label_21
	cmp	byte ptr [rax + 4], 0x30
	jne	.label_21
	cmp	byte ptr [rax + 5], 0x33
	jne	.label_21
	cmp	byte ptr [rax + 6], 0x30
	jne	.label_21
	cmp	byte ptr [rax + 7], 0
	je	.label_23
.label_21:
	cmp	ebp, 9
	mov	ecx, OFFSET FLAT:label_24
	mov	eax, OFFSET FLAT:label_25
.label_28:
	cmove	rax, rcx
.label_22:
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
.label_23:
	cmp	byte ptr [rbx], 0x60
	mov	ecx, OFFSET FLAT:label_30
	mov	eax, OFFSET FLAT:label_31
	jmp	.label_28
	.section	.text
	.align	16
	#Procedure 0x401985
	.globl sub_401985
	.type sub_401985, @function
sub_401985:

	nop	word ptr cs:[rax + rax]
.label_34:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x401995

	.globl xrealloc
	.type xrealloc, @function
xrealloc:
	push	rbx
	mov	rbx, rsi
	test	rdi, rdi
	je	.label_33
	test	rbx, rbx
	jne	.label_33
	call	free
	xor	eax, eax
	pop	rbx
	ret	
.label_33:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_32
	test	rax, rax
	je	.label_34
.label_32:
	pop	rbx
	ret	
	.section	.text
	.align	16
	#Procedure 0x4019c0

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
	je	.label_35
	mov	rdi, rbx
	call	fileno
	cmp	eax, 2
	ja	.label_39
	mov	edi, eax
	call	dup_safer
	mov	ebp, eax
	test	ebp, ebp
	js	.label_36
	mov	rdi, rbx
	call	rpl_fclose
	test	eax, eax
	jne	.label_37
	mov	edi, ebp
	mov	rsi, r14
	call	fdopen
	test	rax, rax
	jne	.label_35
.label_37:
	call	__errno_location
	mov	rbx, rax
	mov	r14d, dword ptr [rbx]
	mov	edi, ebp
	call	close
	mov	dword ptr [rbx], r14d
	jmp	.label_38
.label_39:
	mov	rax, rbx
	jmp	.label_35
.label_36:
	call	__errno_location
	mov	rbp, rax
	mov	r14d, dword ptr [rbp]
	mov	rdi, rbx
	call	rpl_fclose
	mov	dword ptr [rbp], r14d
.label_38:
	xor	eax, eax
.label_35:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x401a46
	.globl sub_401a46
	.type sub_401a46, @function
sub_401a46:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401a50

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
	je	.label_40
	cmp	r15, -2
	jb	.label_40
	xor	edi, edi
	call	hard_locale
	test	al, al
	jne	.label_40
	movzx	eax, byte ptr [r14]
	mov	dword ptr [rbx], eax
	mov	r15d, 1
.label_40:
	mov	rax, r15
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	16
	#Procedure 0x401aa6
	.globl sub_401aa6
	.type sub_401aa6, @function
sub_401aa6:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401ab0

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
	je	.label_52
	mov	edx, OFFSET FLAT:label_48
	xor	eax, eax
	mov	rdi, r14
	mov	r8, rbx
	call	__fprintf_chk
	jmp	.label_54
.label_52:
	mov	edx, OFFSET FLAT:label_55
	xor	eax, eax
	mov	rdi, r14
	mov	rcx, rbx
	mov	r8, r9
	call	__fprintf_chk
.label_54:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_59
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
	mov	esi, OFFSET FLAT:label_56
	mov	edx, 5
	call	dcgettext
	mov	rdi, rax
	mov	rsi, r14
	call	fputs_unlocked
	cmp	r12, 9
	ja	.label_43
	jmp	qword ptr [(r12 * 8) + label_44]
.label_397:
	add	rsp, 8
	jmp	.label_42
.label_43:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_51
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
	jmp	.label_42
.label_398:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_57
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
.label_399:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_41
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
.label_400:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_49
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
.label_401:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_46
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
	jmp	.label_42
.label_402:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_45
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
	jmp	.label_42
.label_403:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_47
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
	jmp	.label_42
.label_404:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_50
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
	jmp	.label_42
.label_406:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_53
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
	jmp	.label_42
.label_405:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_58
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
.label_42:
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	16
	#Procedure 0x401e08
	.globl sub_401e08
	.type sub_401e08, @function
sub_401e08:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401e10

	.globl main
	.type main, @function
main:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x2058
	mov	r14, rsi
	mov	ebx, edi
	mov	rdi, qword ptr [r14]
	call	set_program_name
	mov	edi, 6
	mov	esi, OFFSET FLAT:label_70
	call	setlocale
	mov	edi, OFFSET FLAT:label_89
	mov	esi, OFFSET FLAT:label_90
	call	bindtextdomain
	mov	edi, OFFSET FLAT:label_89
	call	textdomain
	mov	edi, OFFSET FLAT:close_stdout
	call	atexit
	mov	byte ptr [rip + append],  0
	mov	byte ptr [rip + ignore_interrupts],  0
	jmp	.label_84
.label_97:
	mov	byte ptr [rip + ignore_interrupts],  1
	nop	word ptr [rax + rax]
.label_84:
	mov	edx, OFFSET FLAT:label_91
	mov	ecx, OFFSET FLAT:long_options
	xor	r8d, r8d
	mov	edi, ebx
	mov	rsi, r14
	call	getopt_long
	cmp	eax, 0x60
	jle	.label_95
	cmp	eax, 0x70
	je	.label_96
	cmp	eax, 0x69
	je	.label_97
	cmp	eax, 0x61
	jne	.label_68
	mov	byte ptr [rip + append],  1
	jmp	.label_84
.label_96:
	mov	rsi, qword ptr [rip + optarg]
	test	rsi, rsi
	je	.label_99
	mov	r9, qword ptr [rip + argmatch_die]
	mov	edi, OFFSET FLAT:label_102
	mov	edx, OFFSET FLAT:output_error_args
	mov	ecx, OFFSET FLAT:output_error_types
	mov	r8d, 4
	call	__xargmatch_internal
	mov	eax, dword ptr [(rax * 4) + output_error_types]
	mov	dword ptr [rip + output_error],  eax
	jmp	.label_84
.label_99:
	mov	dword ptr [rip + output_error],  2
	jmp	.label_84
.label_95:
	cmp	eax, -1
	jne	.label_60
	cmp	byte ptr [rip + ignore_interrupts],  1
	jne	.label_62
	mov	edi, 2
	mov	esi, 1
	call	signal
.label_62:
	cmp	dword ptr [rip + output_error],  0
	je	.label_67
	mov	edi, 0xd
	mov	esi, 1
	call	signal
.label_67:
	movsxd	rbp, dword ptr [rip + optind]
	sub	ebx, ebp
	mov	al, byte ptr [rip + append]
	mov	ecx, OFFSET FLAT:label_77
	mov	r12d, OFFSET FLAT:label_78
	test	al, al
	cmovne	r12, rcx
	mov	rdi, qword ptr [rip + stdin]
	mov	esi, 2
	call	fadvise
	cmp	ebx, -2
	jle	.label_86
	lea	rax, [r14 + rbp*8]
	mov	qword ptr [rsp + 0x38], rax
	lea	eax, [rbx + 1]
	mov	dword ptr [rsp + 0x34], eax
	movsxd	rdi, eax
	shl	rdi, 3
	call	xmalloc
	mov	rcx, qword ptr [rip + stdout]
	mov	qword ptr [rsp + 0x28], rax
	mov	qword ptr [rax], rcx
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_93
	mov	edx, 5
	call	dcgettext
	mov	qword ptr [rsp + 0x18], r14
	mov	qword ptr [rsp + 0x10], rbp
	mov	qword ptr [r14 + rbp*8 - 8], rax
	mov	rdi, qword ptr [rip + stdout]
	xor	esi, esi
	mov	edx, 2
	xor	ecx, ecx
	call	setvbuf
	mov	al, 1
	mov	qword ptr [rsp + 0x20], rax
	mov	ebp, 1
	mov	qword ptr [rsp + 0x40], rbx
	test	ebx, ebx
	jle	.label_105
	mov	rax, qword ptr [rsp + 0x28]
	lea	r15, [rax + 8]
	mov	al, 1
	mov	qword ptr [rsp + 0x20], rax
	mov	ebp, 1
	mov	r14, qword ptr [rsp + 0x38]
	mov	rax, qword ptr [rsp + 0x40]
	mov	r13d, eax
	mov	qword ptr [rsp + 8], r12
	nop	word ptr cs:[rax + rax]
.label_98:
	mov	rdi, qword ptr [r14]
	mov	rsi, r12
	call	fopen_safer
	mov	qword ptr [r15], rax
	test	rax, rax
	je	.label_83
	xor	esi, esi
	mov	edx, 2
	xor	ecx, ecx
	mov	rdi, rax
	call	setvbuf
	inc	rbp
	jmp	.label_80
	.section	.text
	.align	16
	#Procedure 0x402049
	.globl sub_402049
	.type sub_402049, @function
sub_402049:

	nop	dword ptr [rax]
.label_83:
	mov	eax, dword ptr [rip + output_error]
	add	eax, -3
	cmp	eax, 2
	sbb	ebx, ebx
	and	ebx, 1
	call	__errno_location
	mov	r12, rbp
	mov	ebp, dword ptr [rax]
	mov	rdx, qword ptr [r14]
	xor	eax, eax
	mov	qword ptr [rsp + 0x20], rax
	xor	edi, edi
	mov	esi, 3
	call	quotearg_n_style_colon
	mov	rcx, rax
	mov	edx, OFFSET FLAT:label_82
	xor	eax, eax
	mov	edi, ebx
	mov	esi, ebp
	mov	rbp, r12
	mov	r12, qword ptr [rsp + 8]
	call	error
.label_80:
	add	r15, 8
	add	r14, 8
	dec	r13d
	jne	.label_98
.label_105:
	mov	r15, rbp
	mov	rax, qword ptr [rsp + 0x18]
	mov	rcx, qword ptr [rsp + 0x10]
	lea	r12, [rax + rcx*8 - 8]
	lea	rbp, [rsp + 0x50]
	xor	r14d, r14d
	mov	r13, qword ptr [rsp + 0x40]
	jmp	.label_69
.label_76:
	mov	r14, rbx
	mov	r12, qword ptr [rsp + 0x48]
	nop	word ptr cs:[rax + rax]
.label_69:
	test	r15, r15
	je	.label_107
	nop	dword ptr [rax]
.label_63:
	xor	edi, edi
	mov	edx, 0x2000
	mov	rsi, rbp
	call	read
	mov	rbx, rax
	test	rbx, rbx
	jns	.label_109
	call	__errno_location
	cmp	dword ptr [rax], 4
	je	.label_63
	jmp	.label_64
	.section	.text
	.align	16
	#Procedure 0x402116
	.globl sub_402116
	.type sub_402116, @function
sub_402116:

	nop	word ptr cs:[rax + rax]
.label_109:
	je	.label_101
	test	r13d, r13d
	js	.label_69
	mov	r14, qword ptr [rsp + 0x28]
	mov	rax, r12
	mov	r12d, dword ptr [rsp + 0x34]
	mov	qword ptr [rsp + 0x48], rax
	nop	dword ptr [rax]
.label_106:
	mov	rcx, qword ptr [r14]
	test	rcx, rcx
	je	.label_79
	mov	qword ptr [rsp + 8], rax
	mov	dword ptr [rsp + 0x18], r12d
	mov	edx, 1
	mov	rdi, rbp
	mov	rsi, rbx
	mov	r12, rcx
	call	fwrite_unlocked
	cmp	rax, 1
	jne	.label_85
	mov	r12d, dword ptr [rsp + 0x18]
	mov	rax, qword ptr [rsp + 8]
	jmp	.label_79
	.section	.text
	.align	16
	#Procedure 0x40217e
	.globl sub_40217e
	.type sub_40217e, @function
sub_40217e:

	nop	
.label_85:
	call	__errno_location
	mov	eax, dword ptr [rax]
	mov	cl, 1
	mov	dword ptr [rsp + 0x30], eax
	cmp	eax, 0x20
	jne	.label_92
	mov	eax, dword ptr [rip + output_error]
	or	eax, 2
	cmp	eax, 3
	sete	cl
.label_92:
	cmp	r12, qword ptr [rip + stdout]
	jne	.label_103
	mov	rdi, r12
	mov	byte ptr [rsp + 0x10], cl
	call	clearerr_unlocked
	movzx	ecx, byte ptr [rsp + 0x10]
.label_103:
	test	cl, cl
	je	.label_100
	mov	eax, dword ptr [rip + output_error]
	add	eax, -3
	cmp	eax, 2
	sbb	r12d, r12d
	and	r12d, 1
	mov	rax, qword ptr [rsp + 8]
	mov	rdx, qword ptr [rax]
	xor	edi, edi
	mov	esi, 3
	mov	byte ptr [rsp + 0x10], cl
	call	quotearg_n_style_colon
	mov	rcx, rax
	mov	edx, OFFSET FLAT:label_82
	xor	eax, eax
	mov	edi, r12d
	mov	esi, dword ptr [rsp + 0x30]
	call	error
	movzx	ecx, byte ptr [rsp + 0x10]
.label_100:
	mov	qword ptr [r14], 0
	test	cl, cl
	je	.label_61
	xor	eax, eax
	mov	qword ptr [rsp + 0x20], rax
.label_61:
	mov	r12d, dword ptr [rsp + 0x18]
	mov	rax, qword ptr [rsp + 8]
	dec	r15
.label_79:
	add	rax, 8
	add	r14, 8
	dec	r12d
	jne	.label_106
	jmp	.label_76
.label_107:
	mov	rbx, r14
.label_64:
	cmp	rbx, -1
	mov	r14, qword ptr [rsp + 0x20]
	jne	.label_65
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	r14d, r14d
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_81
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, rcx
	call	error
.label_65:
	test	r13d, r13d
	mov	rbx, qword ptr [rsp + 0x38]
	jle	.label_87
	mov	rbp, qword ptr [rsp + 0x28]
	add	rbp, 8
	nop	word ptr [rax + rax]
.label_104:
	mov	rdi, qword ptr [rbp]
	test	rdi, rdi
	je	.label_94
	call	rpl_fclose
	test	eax, eax
	je	.label_94
	call	__errno_location
	mov	r15d, dword ptr [rax]
	mov	rdx, qword ptr [rbx]
	xor	r14d, r14d
	xor	edi, edi
	mov	esi, 3
	call	quotearg_n_style_colon
	mov	rcx, rax
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_82
	xor	eax, eax
	mov	esi, r15d
	call	error
.label_94:
	add	rbx, 8
	add	rbp, 8
	dec	r13d
	jne	.label_104
.label_87:
	mov	rdi, qword ptr [rsp + 0x28]
	call	free
	xor	edi, edi
	call	close
	test	eax, eax
	jne	.label_108
	and	r14b, 1
	movzx	eax, r14b
	xor	eax, 1
	add	rsp, 0x2058
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_101:
	mov	r14, qword ptr [rsp + 0x20]
	jmp	.label_65
.label_60:
	cmp	eax, 0xffffff7d
	je	.label_66
	cmp	eax, 0xffffff7e
	jne	.label_68
	xor	edi, edi
	call	usage
.label_66:
	mov	rdi, qword ptr [rip + stdout]
	mov	rcx, qword ptr [rip + Version]
	mov	esi, OFFSET FLAT:label_71
	mov	edx, OFFSET FLAT:label_72
	mov	r8d, OFFSET FLAT:label_73
	mov	r9d, OFFSET FLAT:label_74
	mov	eax, 0
	push	0
	push	OFFSET FLAT:label_75
	call	version_etc
	add	rsp, 0x10
	xor	edi, edi
	call	exit
.label_86:
	call	xalloc_die
.label_108:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_88
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_82
	xor	eax, eax
	mov	esi, ebx
	call	error
.label_68:
	mov	edi, 1
	call	usage
	.section	.text
	.align	16
	#Procedure 0x4023af
	.globl sub_4023af
	.type sub_4023af, @function
sub_4023af:

	nop	
	.section	.text
	.align	16
	#Procedure 0x4023b0
	.globl quotearg_free
	.type quotearg_free, @function
quotearg_free:

	push	r15
	push	r14
	push	rbx
	mov	r14, qword ptr [rip + slotvec]
	cmp	dword ptr [rip + nslots],  2
	jl	.label_110
	lea	r15, [r14 + 0x18]
	mov	ebx, 1
	nop	
.label_113:
	mov	rdi, qword ptr [r15]
	call	free
	inc	rbx
	movsxd	rax, dword ptr [rip + nslots]
	add	r15, 0x10
	cmp	rbx, rax
	jl	.label_113
.label_110:
	mov	rdi, qword ptr [r14 + 8]
	mov	eax, OFFSET FLAT:slot0
	cmp	rdi, rax
	je	.label_114
	call	free
	mov	qword ptr [rip + slotvec0],  0x100
	mov	qword ptr [rip + label_112], OFFSET FLAT:slot0
.label_114:
	mov	eax, OFFSET FLAT:slotvec0
	cmp	r14, rax
	je	.label_111
	mov	rdi, r14
	call	free
	mov	qword ptr [rip + slotvec], OFFSET FLAT:slotvec0
.label_111:
	mov	dword ptr [rip + nslots],  1
	pop	rbx
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	16
	#Procedure 0x402441
	.globl sub_402441
	.type sub_402441, @function
sub_402441:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402450

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
	#Procedure 0x402469
	.globl sub_402469
	.type sub_402469, @function
sub_402469:

	nop	dword ptr [rax]
.label_116:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x402475
	.globl sub_402475
	.type sub_402475, @function
sub_402475:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402481
	.globl x2realloc
	.type x2realloc, @function
x2realloc:

	push	rbx
	mov	rax, qword ptr [rsi]
	test	rdi, rdi
	je	.label_115
	movabs	rcx, 0x5555555555555554
	cmp	rax, rcx
	jae	.label_116
	mov	rbx, rax
	shr	rbx, 1
	add	rbx, rax
	inc	rbx
	mov	qword ptr [rsi], rbx
	jne	.label_119
	call	free
	xor	eax, eax
	jmp	.label_117
.label_115:
	test	rax, rax
	mov	ebx, 0x80
	cmovne	rbx, rax
	test	rbx, rbx
	js	.label_118
	mov	qword ptr [rsi], rbx
.label_119:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_117
	test	rax, rax
	je	.label_118
.label_117:
	pop	rbx
	ret	
.label_118:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x4024e0

	.globl usage
	.type usage, @function
usage:
	push	rbp
	push	rbx
	push	rax
	mov	ebp, edi
	test	ebp, ebp
	jne	.label_126
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_131
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	rdx, qword ptr [rip + program_name]
	mov	edi, 1
	xor	eax, eax
	mov	rsi, rcx
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_122
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_132
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_127
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_135
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_125
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_134
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_72
	mov	ecx, OFFSET FLAT:label_128
	xor	eax, eax
	call	__printf_chk
	mov	edi, 5
	xor	esi, esi
	call	setlocale
	test	rax, rax
	je	.label_121
	mov	esi, OFFSET FLAT:label_133
	mov	edx, 3
	mov	rdi, rax
	call	strncmp
	test	eax, eax
	je	.label_121
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_129
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
.label_121:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_130
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_128
	mov	ecx, OFFSET FLAT:label_71
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_123
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_71
	mov	ecx, OFFSET FLAT:label_124
	xor	eax, eax
	call	__printf_chk
	mov	edi, ebp
	call	exit
.label_126:
	mov	rbx, qword ptr [rip + stderr]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_120
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
	#Procedure 0x4026bb
	.globl sub_4026bb
	.type sub_4026bb, @function
sub_4026bb:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4026c0
	.globl quotearg_n_custom_mem
	.type quotearg_n_custom_mem, @function
quotearg_n_custom_mem:

	sub	rsp, 0x38
	mov	rax, qword ptr [rip + label_17]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0, xmmword ptr [rip + label_18]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_19]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rsi, rsi
	je	.label_136
	test	rdx, rdx
	je	.label_136
	mov	qword ptr [rsp + 0x28], rsi
	mov	qword ptr [rsp + 0x30], rdx
	lea	rax, [rsp]
	mov	rsi, rcx
	mov	rdx, r8
	mov	rcx, rax
	call	quotearg_n_options
	add	rsp, 0x38
	ret	
.label_136:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x40272a
	.globl sub_40272a
	.type sub_40272a, @function
sub_40272a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402730
	.globl close_stdout_set_file_name
	.type close_stdout_set_file_name, @function
close_stdout_set_file_name:

	mov	qword ptr [rip + file_name],  rdi
	ret	
	.section	.text
	.align	16
	#Procedure 0x402738
	.globl sub_402738
	.type sub_402738, @function
sub_402738:

	nop	dword ptr [rax + rax]
.label_137:
	mov	edi, dword ptr [rip + exit_failure]
	call	_exit
	.section	.text
	.align	16
	#Procedure 0x40274b

	.globl close_stdout
	.type close_stdout, @function
close_stdout:
	push	rbp
	push	rbx
	push	rax
	mov	rdi, qword ptr [rip + stdout]
	call	close_stream
	test	eax, eax
	je	.label_141
	mov	bl, byte ptr [rip + ignore_EPIPE]
	call	__errno_location
	mov	rbp, rax
	cmp	bl, 0
	je	.label_138
	cmp	dword ptr [rbp], 0x20
	jne	.label_138
.label_141:
	mov	rdi, qword ptr [rip + stderr]
	call	close_stream
	test	eax, eax
	jne	.label_137
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
.label_139:
	call	quotearg_colon
	mov	rcx, rax
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_140
	xor	eax, eax
	mov	esi, ebp
	mov	r8, rbx
	call	error
	mov	edi, dword ptr [rip + exit_failure]
	call	_exit
	nop	dword ptr [rax]
	nop	dword ptr [rax + rax]
.label_138:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_142
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	rdi, qword ptr [rip + file_name]
	test	rdi, rdi
	mov	ebp, dword ptr [rbp]
	jne	.label_139
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_82
	xor	eax, eax
	mov	esi, ebp
	mov	rcx, rbx
	call	error
	mov	edi, dword ptr [rip + exit_failure]
	call	_exit
	.section	.text
	.align	16
	#Procedure 0x402800

	.globl hard_locale
	.type hard_locale, @function
hard_locale:
	push	rbx
	xor	esi, esi
	call	setlocale
	mov	bl, 1
	test	rax, rax
	je	.label_144
	cmp	byte ptr [rax], 0x43
	jne	.label_146
	cmp	byte ptr [rax + 1], 0
	je	.label_143
.label_146:
	mov	esi, OFFSET FLAT:label_145
	mov	rdi, rax
	call	strcmp
	test	eax, eax
	jne	.label_144
.label_143:
	xor	ebx, ebx
.label_144:
	mov	eax, ebx
	pop	rbx
	ret	
	.section	.text
	.align	16
	#Procedure 0x402831
	.globl sub_402831
	.type sub_402831, @function
sub_402831:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402840

	.globl set_program_name
	.type set_program_name, @function
set_program_name:
	push	r14
	push	rbx
	push	rax
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_147
	mov	esi, 0x2f
	mov	rdi, rbx
	call	strrchr
	test	rax, rax
	lea	r14, [rax + 1]
	cmove	r14, rbx
	mov	rax, r14
	sub	rax, rbx
	cmp	rax, 7
	jl	.label_149
	lea	rdi, [r14 - 7]
	mov	esi, OFFSET FLAT:label_151
	mov	edx, 7
	call	strncmp
	test	eax, eax
	jne	.label_149
	mov	esi, OFFSET FLAT:label_150
	mov	edx, 3
	mov	rdi, r14
	call	strncmp
	test	eax, eax
	jne	.label_152
	add	r14, 3
	mov	qword ptr [rip + __progname],  r14
.label_152:
	mov	rbx, r14
.label_149:
	mov	qword ptr [rip + program_name],  rbx
	mov	qword ptr [rip + __progname_full],  rbx
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
.label_147:
	mov	rcx, qword ptr [rip + stderr]
	mov	edi, OFFSET FLAT:label_148
	mov	esi, 0x37
	mov	edx, 1
	call	fwrite
	call	abort
	.section	.text
	.align	16
	#Procedure 0x4028e1
	.globl sub_4028e1
	.type sub_4028e1, @function
sub_4028e1:

	nop	word ptr cs:[rax + rax]
.label_154:
	mov	ecx, 1
.label_153:
	mov	rdi, rcx
	mov	rsi, rax
	jmp	calloc
	.section	.text
	.align	16
	#Procedure 0x402900
	.globl sub_402900
	.type sub_402900, @function
sub_402900:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402905

	.globl rpl_calloc
	.type rpl_calloc, @function
rpl_calloc:
	test	rdi, rdi
	mov	eax, 1
	je	.label_154
	test	rsi, rsi
	mov	ecx, 1
	je	.label_153
	mov	rax, rsi
	imul	rax, rdi
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	mov	rax, rsi
	mov	rcx, rdi
	je	.label_153
	push	rax
	call	__errno_location
	mov	dword ptr [rax], 0xc
	xor	eax, eax
	pop	rcx
	ret	
	.section	.text
	.align	16
	#Procedure 0x402940
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
	je	.label_156
	test	r14, r14
	je	.label_155
.label_156:
	xor	esi, esi
	mov	rdi, r14
	mov	rdx, rbx
	call	memset
	mov	rax, r14
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
.label_155:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x402976
	.globl sub_402976
	.type sub_402976, @function
sub_402976:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402980

	.globl __xargmatch_internal
	.type __xargmatch_internal, @function
__xargmatch_internal:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	r14, r9
	mov	r15, r8
	mov	r12, rcx
	mov	r13, rdx
	mov	rbx, rsi
	mov	rbp, rdi
	mov	rdi, rbx
	mov	rsi, r13
	mov	rdx, r12
	mov	rcx, r15
	call	argmatch
	test	rax, rax
	jns	.label_157
	mov	rdi, rbp
	mov	rsi, rbx
	mov	rdx, rax
	call	argmatch_invalid
	mov	rdi, r13
	mov	rsi, r12
	mov	rdx, r15
	call	argmatch_valid
	call	r14
	mov	rax, -1
.label_157:
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
	#Procedure 0x4029e8
	.globl sub_4029e8
	.type sub_4029e8, @function
sub_4029e8:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4029f0

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
	je	.label_158
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
.label_158:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x402a85
	.globl sub_402a85
	.type sub_402a85, @function
sub_402a85:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402a90
	.globl version_etc_ar
	.type version_etc_ar, @function
version_etc_ar:

	mov	r9, -1
	nop	word ptr [rax + rax]
.label_159:
	cmp	qword ptr [r8 + r9*8 + 8], 0
	lea	r9, [r9 + 1]
	jne	.label_159
	jmp	version_etc_arn
	.section	.text
	.align	16
	#Procedure 0x402ab1
	.globl sub_402ab1
	.type sub_402ab1, @function
sub_402ab1:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402ac0

	.globl locale_charset
	.type locale_charset, @function
locale_charset:
	push	rax
	mov	edi, 0xe
	call	rpl_nl_langinfo
	test	rax, rax
	mov	ecx, OFFSET FLAT:label_70
	cmovne	rcx, rax
	cmp	byte ptr [rcx], 0
	mov	eax, OFFSET FLAT:label_160
	cmovne	rax, rcx
	pop	rcx
	ret	
	.section	.text
	.align	16
	#Procedure 0x402ae5
	.globl sub_402ae5
	.type sub_402ae5, @function
sub_402ae5:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402af0

	.globl argmatch_valid
	.type argmatch_valid, @function
argmatch_valid:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	r14, rdx
	mov	r12, rsi
	mov	rbp, rdi
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_164
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stderr]
	mov	rdi, rax
	call	fputs_unlocked
	mov	rbx, qword ptr [rbp]
	test	rbx, rbx
	je	.label_162
	xor	r13d, r13d
	xor	r15d, r15d
	mov	qword ptr [rsp], rbp
	nop	dword ptr [rax + rax]
.label_163:
	test	r15, r15
	je	.label_161
	mov	rdi, r13
	mov	rsi, r12
	mov	rdx, r14
	call	memcmp
	test	eax, eax
	je	.label_165
.label_161:
	mov	r13, qword ptr [rip + stderr]
	mov	rdi, rbx
	call	quote
	mov	rcx, rax
	mov	esi, 1
	mov	edx, OFFSET FLAT:label_166
	xor	eax, eax
	mov	rdi, r13
	call	__fprintf_chk
	mov	r13, r12
	jmp	.label_168
	.section	.text
	.align	16
	#Procedure 0x402b82
	.globl sub_402b82
	.type sub_402b82, @function
sub_402b82:

	nop	word ptr cs:[rax + rax]
.label_169:
	mov	esi, 0xa
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	jmp	__overflow
	.section	.text
	.align	16
	#Procedure 0x402ba8
	.globl sub_402ba8
	.type sub_402ba8, @function
sub_402ba8:

	nop	word ptr cs:[rax + rax]
.label_165:
	mov	rbp, qword ptr [rip + stderr]
	mov	rdi, rbx
	call	quote
	mov	rcx, rax
	mov	esi, 1
	mov	edx, OFFSET FLAT:label_167
	xor	eax, eax
	mov	rdi, rbp
	mov	rbp, qword ptr [rsp]
	call	__fprintf_chk
.label_168:
	mov	rbx, qword ptr [rbp + r15*8 + 8]
	inc	r15
	add	r12, r14
	test	rbx, rbx
	jne	.label_163
.label_162:
	mov	rdi, qword ptr [rip + stderr]
	mov	rax, qword ptr [rdi + 0x28]
	cmp	rax, qword ptr [rdi + 0x30]
	jae	.label_169
	lea	rcx, [rax + 1]
	mov	qword ptr [rdi + 0x28], rcx
	mov	byte ptr [rax], 0xa
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
	#Procedure 0x402c20
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
	#Procedure 0x402c38
	.globl sub_402c38
	.type sub_402c38, @function
sub_402c38:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402c40
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
	#Procedure 0x402c73
	.globl sub_402c73
	.type sub_402c73, @function
sub_402c73:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402c80
	.globl quotearg_n
	.type quotearg_n, @function
quotearg_n:

	mov	rdx, -1
	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	.section	.text
	.align	16
	#Procedure 0x402c8e
	.globl sub_402c8e
	.type sub_402c8e, @function
sub_402c8e:

	nop	
	.section	.text
	.align	16
	#Procedure 0x402c90

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
	js	.label_173
	mov	eax, dword ptr [r13]
	mov	rbp, qword ptr [rip + slotvec]
	cmp	dword ptr [rip + nslots],  r12d
	mov	qword ptr [rsp + 0x18], r13
	mov	dword ptr [rsp], eax
	mov	qword ptr [rsp + 0x10], rbx
	mov	qword ptr [rsp + 8], r15
	jg	.label_176
	cmp	r12d, 0x7fffffff
	je	.label_171
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
	jne	.label_174
	movups	xmm0, xmmword ptr [rip + slotvec0]
	movups	xmmword ptr [r14], xmm0
.label_174:
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
.label_176:
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
	jbe	.label_172
	mov	rax, qword ptr [rsp + 0x18]
	mov	ebp, dword ptr [rsp]
	jmp	.label_175
.label_172:
	lea	rax, [rbp + r13]
	lea	r12, [rbp + r13 + 8]
	inc	r15
	mov	qword ptr [rax], r15
	mov	eax, OFFSET FLAT:slot0
	cmp	r14, rax
	mov	ebp, dword ptr [rsp]
	je	.label_170
	mov	rdi, r14
	call	free
.label_170:
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
.label_175:
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
.label_173:
	call	abort
.label_171:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x402e4d
	.globl sub_402e4d
	.type sub_402e4d, @function
sub_402e4d:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x402e50

	.globl version_etc
	.type version_etc, @function
version_etc:
	sub	rsp, 0xd8
	test	al, al
	je	.label_177
	movaps	xmmword ptr [rsp + 0x50], xmm0
	movaps	xmmword ptr [rsp + 0x60], xmm1
	movaps	xmmword ptr [rsp + 0x70], xmm2
	movaps	xmmword ptr [rsp + 0x80], xmm3
	movaps	xmmword ptr [rsp + 0x90], xmm4
	movaps	xmmword ptr [rsp + 0xa0], xmm5
	movaps	xmmword ptr [rsp + 0xb0], xmm6
	movaps	xmmword ptr [rsp + 0xc0], xmm7
.label_177:
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
	#Procedure 0x402ed3
	.globl sub_402ed3
	.type sub_402ed3, @function
sub_402ed3:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402ee0

	.globl rpl_fcntl
	.type rpl_fcntl, @function
rpl_fcntl:
	push	rbp
	push	r14
	push	rbx
	sub	rsp, 0xd0
	mov	ebx, edi
	test	al, al
	je	.label_195
	movaps	xmmword ptr [rsp + 0x50], xmm0
	movaps	xmmword ptr [rsp + 0x60], xmm1
	movaps	xmmword ptr [rsp + 0x70], xmm2
	movaps	xmmword ptr [rsp + 0x80], xmm3
	movaps	xmmword ptr [rsp + 0x90], xmm4
	movaps	xmmword ptr [rsp + 0xa0], xmm5
	movaps	xmmword ptr [rsp + 0xb0], xmm6
	movaps	xmmword ptr [rsp + 0xc0], xmm7
.label_195:
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
	ja	.label_184
	mov	eax, 0xa0a
	bt	eax, esi
	jb	.label_196
	mov	eax, 0x514
	bt	eax, esi
	jb	.label_185
	test	esi, esi
	jne	.label_184
	movsxd	rcx, dword ptr [rsp]
	cmp	rcx, 0x28
	ja	.label_198
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0x10]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp], ecx
	jmp	.label_178
.label_184:
	lea	eax, [rsi - 0x400]
	cmp	eax, 8
	ja	.label_179
	mov	ecx, 0x85
	bt	ecx, eax
	jb	.label_185
	mov	ecx, 0x102
	bt	ecx, eax
	jae	.label_187
.label_196:
	xor	eax, eax
	mov	edi, ebx
	call	fcntl
	jmp	.label_191
.label_185:
	movsxd	rcx, dword ptr [rsp]
	cmp	rcx, 0x28
	ja	.label_192
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0x10]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp], ecx
	jmp	.label_193
.label_192:
	mov	rax, qword ptr [rsp + 8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 8], rcx
.label_193:
	mov	edx, dword ptr [rax]
	xor	eax, eax
	mov	edi, ebx
.label_194:
	call	fcntl
.label_191:
	mov	ebp, eax
.label_180:
	mov	eax, ebp
	add	rsp, 0xd0
	pop	rbx
	pop	r14
	pop	rbp
	ret	
.label_187:
	cmp	eax, 6
	jne	.label_179
	movsxd	rcx, dword ptr [rsp]
	cmp	rcx, 0x28
	ja	.label_182
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0x10]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp], ecx
	jmp	.label_190
.label_179:
	movsxd	rcx, dword ptr [rsp]
	cmp	rcx, 0x28
	ja	.label_186
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0x10]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp], ecx
	jmp	.label_189
.label_198:
	mov	rax, qword ptr [rsp + 8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 8], rcx
.label_178:
	mov	edx, dword ptr [rax]
	xor	esi, esi
	xor	eax, eax
	mov	edi, ebx
	jmp	.label_194
.label_182:
	mov	rax, qword ptr [rsp + 8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 8], rcx
.label_190:
	mov	r14d, dword ptr [rax]
	cmp	dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec],  0
	js	.label_197
	mov	esi, 0x406
	xor	eax, eax
	mov	edi, ebx
	mov	edx, r14d
	call	fcntl
	mov	ebp, eax
	test	ebp, ebp
	jns	.label_181
	call	__errno_location
	cmp	dword ptr [rax], 0x16
	jne	.label_181
	xor	esi, esi
	xor	eax, eax
	mov	edi, ebx
	mov	edx, r14d
	call	fcntl
	mov	ebp, eax
	test	ebp, ebp
	js	.label_180
	mov	dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec],  0xffffffff
	mov	al, 1
	jmp	.label_188
.label_181:
	mov	dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec],  1
	jmp	.label_180
.label_186:
	mov	rax, qword ptr [rsp + 8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 8], rcx
.label_189:
	mov	rdx, qword ptr [rax]
	xor	eax, eax
	mov	edi, ebx
	call	fcntl
	jmp	.label_191
.label_197:
	xor	esi, esi
	xor	eax, eax
	mov	edi, ebx
	mov	edx, r14d
	call	fcntl
	mov	ebp, eax
	cmp	dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec],  -1
	sete	al
.label_188:
	test	al, al
	je	.label_180
	test	ebp, ebp
	js	.label_180
	mov	esi, 1
	xor	eax, eax
	mov	edi, ebp
	call	fcntl
	mov	ecx, eax
	test	ecx, ecx
	js	.label_183
	or	ecx, 1
	mov	esi, 2
	xor	eax, eax
	mov	edi, ebp
	mov	edx, ecx
	call	fcntl
	cmp	eax, -1
	jne	.label_180
.label_183:
	call	__errno_location
	mov	rbx, rax
	mov	r14d, dword ptr [rbx]
	mov	edi, ebp
	call	close
	mov	dword ptr [rbx], r14d
	mov	ebp, 0xffffffff
	jmp	.label_180
	.section	.text
	.align	16
	#Procedure 0x403171
	.globl sub_403171
	.type sub_403171, @function
sub_403171:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403180
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
	#Procedure 0x403198
	.globl sub_403198
	.type sub_403198, @function
sub_403198:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4031a0
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
	#Procedure 0x403261
	.globl sub_403261
	.type sub_403261, @function
sub_403261:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403270
	.globl xcalloc
	.type xcalloc, @function
xcalloc:

	push	rax
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	jb	.label_199
	call	rpl_calloc
	test	rax, rax
	je	.label_199
	pop	rcx
	ret	
.label_199:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x403296
	.globl sub_403296
	.type sub_403296, @function
sub_403296:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4032a0
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
	je	.label_200
	mov	qword ptr [rax], rbx
.label_200:
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
	#Procedure 0x40338c
	.globl sub_40338c
	.type sub_40338c, @function
sub_40338c:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x403390

	.globl __argmatch_die
	.type __argmatch_die, @function
__argmatch_die:
	mov	edi, 1
	jmp	usage
	.section	.text
	.align	16
	#Procedure 0x40339a
	.globl sub_40339a
	.type sub_40339a, @function
sub_40339a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4033a0

	.globl argmatch
	.type argmatch, @function
argmatch:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x28
	mov	r13, rcx
	mov	r14, rdx
	mov	rbp, rsi
	mov	r12, rdi
	call	strlen
	mov	rbx, rax
	mov	qword ptr [rsp + 0x20], rbp
	mov	r15, qword ptr [rbp]
	test	r15, r15
	je	.label_207
	mov	qword ptr [rsp + 8], -1
	xor	eax, eax
	mov	qword ptr [rsp + 0x10], rax
	mov	qword ptr [rsp + 0x18], r14
	xor	ebp, ebp
	nop	dword ptr [rax + rax]
.label_201:
	mov	rdi, r15
	mov	rsi, r12
	mov	rdx, rbx
	call	strncmp
	test	eax, eax
	jne	.label_205
	mov	rdi, r15
	call	strlen
	cmp	rax, rbx
	je	.label_203
	cmp	qword ptr [rsp + 8], -1
	je	.label_204
	mov	rax, qword ptr [rsp + 0x18]
	test	rax, rax
	je	.label_206
	mov	rdi, qword ptr [rsp + 8]
	imul	rdi, r13
	add	rdi, rax
	mov	rsi, r14
	mov	rdx, r13
	call	memcmp
	test	eax, eax
	je	.label_205
.label_206:
	mov	al, 1
	mov	qword ptr [rsp + 0x10], rax
	jmp	.label_205
.label_204:
	mov	qword ptr [rsp + 8], rbp
	nop	word ptr [rax + rax]
.label_205:
	mov	rax, qword ptr [rsp + 0x20]
	mov	r15, qword ptr [rax + rbp*8 + 8]
	inc	rbp
	add	r14, r13
	test	r15, r15
	jne	.label_201
	jmp	.label_202
.label_207:
	mov	qword ptr [rsp + 8], -1
	xor	eax, eax
	mov	qword ptr [rsp + 0x10], rax
.label_202:
	mov	rax, qword ptr [rsp + 0x10]
	test	al, 1
	mov	rbp, -2
	cmove	rbp, qword ptr [rsp + 8]
.label_203:
	mov	rax, rbp
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
	#Procedure 0x40349d
	.globl sub_40349d
	.type sub_40349d, @function
sub_40349d:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4034a0
	.globl quotearg_colon_mem
	.type quotearg_colon_mem, @function
quotearg_colon_mem:

	sub	rsp, 0x38
	mov	rax, rsi
	mov	rdx, rdi
	mov	rcx, qword ptr [rip + label_17]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0, xmmword ptr [rip + label_18]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_19]
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
	#Procedure 0x4034f4
	.globl sub_4034f4
	.type sub_4034f4, @function
sub_4034f4:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403500
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
	#Procedure 0x40350f
	.globl sub_40350f
	.type sub_40350f, @function
sub_40350f:

	nop	
	.section	.text
	.align	16
	#Procedure 0x403510

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
	#Procedure 0x403527
	.globl sub_403527
	.type sub_403527, @function
sub_403527:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403530

	.globl xalloc_die
	.type xalloc_die, @function
xalloc_die:
	push	rbx
	mov	ebx, dword ptr [rip + exit_failure]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_208
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	esi, esi
	mov	edx, OFFSET FLAT:label_82
	xor	eax, eax
	mov	edi, ebx
	call	error
	call	abort
	.section	.text
	.align	16
	#Procedure 0x403560

	.globl quotearg_colon
	.type quotearg_colon, @function
quotearg_colon:
	sub	rsp, 0x38
	mov	rax, rdi
	mov	rcx, qword ptr [rip + label_17]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0, xmmword ptr [rip + label_18]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_19]
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
	#Procedure 0x4035b5
	.globl sub_4035b5
	.type sub_4035b5, @function
sub_4035b5:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4035c0
	.globl quotearg_custom_mem
	.type quotearg_custom_mem, @function
quotearg_custom_mem:

	sub	rsp, 0x38
	mov	rax, qword ptr [rip + label_17]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0, xmmword ptr [rip + label_18]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_19]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rdi, rdi
	je	.label_209
	test	rsi, rsi
	je	.label_209
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
.label_209:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x40362c
	.globl sub_40362c
	.type sub_40362c, @function
sub_40362c:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x403630
	.globl quote_n_mem
	.type quote_n_mem, @function
quote_n_mem:

	mov	ecx, OFFSET FLAT:quote_quoting_options
	jmp	quotearg_n_options
	.section	.text
	.align	16
	#Procedure 0x40363a
	.globl sub_40363a
	.type sub_40363a, @function
sub_40363a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403640
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
	je	.label_210
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
.label_210:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x4036a1
	.globl sub_4036a1
	.type sub_4036a1, @function
sub_4036a1:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4036b0
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
	#Procedure 0x4036c3
	.globl sub_4036c3
	.type sub_4036c3, @function
sub_4036c3:

	nop	word ptr cs:[rax + rax]
.label_214:
	mov	esi, OFFSET FLAT:label_211
.label_213:
	mov	edx, 5
	call	dcgettext
	mov	r12, rax
	xor	edi, edi
	mov	esi, 8
	mov	rdx, r15
	call	quotearg_n_style
	mov	r15, rax
	mov	edi, 1
	mov	rsi, r14
	call	quote_n
	mov	rbx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, r12
	mov	rcx, r15
	mov	r8, rbx
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	jmp	error
	.section	.text
	.align	16
	#Procedure 0x403723

	.globl argmatch_invalid
	.type argmatch_invalid, @function
argmatch_invalid:
	push	r15
	push	r14
	push	r12
	push	rbx
	push	rax
	mov	r15, rsi
	mov	r14, rdi
	xor	edi, edi
	cmp	rdx, -1
	je	.label_214
	mov	esi, OFFSET FLAT:label_212
	jmp	.label_213
	.section	.text
	.align	16
	#Procedure 0x403740
	.globl quotearg_char_mem
	.type quotearg_char_mem, @function
quotearg_char_mem:

	sub	rsp, 0x38
	mov	ecx, edx
	mov	r8, rsi
	mov	rdx, rdi
	mov	rsi, qword ptr [rip + label_17]
	mov	qword ptr [rsp + 0x30], rsi
	movups	xmm0, xmmword ptr [rip + label_18]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_19]
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
	#Procedure 0x4037ae
	.globl sub_4037ae
	.type sub_4037ae, @function
sub_4037ae:

	nop	
	.section	.text
	.align	16
	#Procedure 0x4037b0
	.globl close_stdout_set_ignore_EPIPE
	.type close_stdout_set_ignore_EPIPE, @function
close_stdout_set_ignore_EPIPE:

	mov	byte ptr [rip + ignore_EPIPE],  dil
	ret	
	.section	.text
	.align	16
	#Procedure 0x4037b8
	.globl sub_4037b8
	.type sub_4037b8, @function
sub_4037b8:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4037c0
	.globl fdadvise
	.type fdadvise, @function
fdadvise:

	jmp	posix_fadvise
	.section	.text
	.align	16
	#Procedure 0x4037c5
	.globl sub_4037c5
	.type sub_4037c5, @function
sub_4037c5:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4037d0
	.globl argmatch_to_argument
	.type argmatch_to_argument, @function
argmatch_to_argument:

	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	mov	r14, rcx
	mov	r15, rdx
	mov	rbx, rsi
	mov	r12, rdi
	mov	r13, qword ptr [rbx]
	xor	eax, eax
	test	r13, r13
	je	.label_215
	add	rbx, 8
	nop	word ptr cs:[rax + rax]
.label_216:
	mov	rdi, r12
	mov	rsi, r15
	mov	rdx, r14
	call	memcmp
	test	eax, eax
	mov	rax, r13
	je	.label_215
	mov	r13, qword ptr [rbx]
	add	rbx, 8
	add	r15, r14
	test	r13, r13
	mov	eax, 0
	jne	.label_216
.label_215:
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	16
	#Procedure 0x403833
	.globl sub_403833
	.type sub_403833, @function
sub_403833:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403840

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
.label_281:
	mov	r11, rbp
	xor	r14d, r14d
	mov	ecx, r15d
	cmp	r15d, 0xa
	ja	.label_278
	mov	edi, 7
	mov	r13b, 1
	xor	esi, esi
	mov	r8, qword ptr [rsp + 0x30]
	jmp	qword ptr [(rcx * 8) + label_331]
.label_415:
	mov	byte ptr [rsp + 7], r10b
	mov	edi, OFFSET FLAT:label_288
	mov	esi, r15d
	mov	rbx, r11
	mov	ebp, r9d
	call	gettext_quote
	mov	qword ptr [rsp + 0x78], rax
	mov	edi, OFFSET FLAT:label_25
	mov	esi, r15d
	call	gettext_quote
	mov	r9d, ebp
	mov	r10b, byte ptr [rsp + 7]
	mov	r11, rbx
	mov	qword ptr [rsp + 0x70], rax
.label_416:
	mov	dword ptr [rsp + 0x50], r9d
	mov	byte ptr [rsp + 7], r10b
	test	r12b, 1
	mov	r14d, 0
	mov	rcx, qword ptr [rsp + 0x78]
	jne	.label_304
	mov	al, byte ptr [rcx]
	test	al, al
	mov	r14d, 0
	je	.label_304
	xor	r14d, r14d
	nop	word ptr cs:[rax + rax]
.label_317:
	cmp	r14, r11
	jae	.label_285
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + r14], al
.label_285:
	movzx	eax, byte ptr [rcx + r14 + 1]
	inc	r14
	test	al, al
	jne	.label_317
.label_304:
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
	jmp	.label_218
.label_408:
	xor	edi, edi
	xor	r14d, r14d
	mov	r13d, eax
	xor	esi, esi
	jmp	.label_218
.label_411:
	mov	al, 1
.label_409:
	mov	r12b, 1
.label_412:
	test	r12b, 1
	mov	cl, 1
	je	.label_333
	mov	ecx, eax
.label_333:
	mov	al, cl
.label_410:
	test	r12b, 1
	jne	.label_335
	test	r11, r11
	je	.label_332
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx], 0x27
.label_332:
	mov	r14d, 1
	jmp	.label_221
.label_335:
	xor	r14d, r14d
.label_221:
	mov	ecx, OFFSET FLAT:label_25
	mov	qword ptr [rsp + 0x48], rcx
	mov	ecx, 1
	mov	qword ptr [rsp + 0x40], rcx
	mov	r13d, eax
	mov	sil, r12b
	mov	edi, 2
	jmp	.label_218
.label_413:
	test	r12b, 1
	jne	.label_235
	test	r11, r11
	je	.label_237
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax], 0x22
.label_237:
	mov	r14d, 1
	jmp	.label_238
.label_414:
	mov	r13b, 1
	mov	edi, 5
	xor	r14d, r14d
	mov	eax, OFFSET FLAT:label_24
	mov	qword ptr [rsp + 0x48], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0x40], rax
	mov	sil, 1
	jmp	.label_218
.label_235:
	xor	r14d, r14d
.label_238:
	mov	eax, OFFSET FLAT:label_24
	mov	qword ptr [rsp + 0x48], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0x40], rax
	mov	r13b, 1
	mov	sil, r12b
	mov	edi, 5
	nop	word ptr cs:[rax + rax]
.label_218:
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
	jmp	.label_260
	.section	.text
	.align	16
	#Procedure 0x403b2d
	.globl sub_403b2d
	.type sub_403b2d, @function
sub_403b2d:

	nop	dword ptr [rax]
.label_256:
	inc	rsi
.label_260:
	cmp	rbp, -1
	je	.label_298
	cmp	rsi, rbp
	jne	.label_299
	jmp	.label_300
	.section	.text
	.align	16
	#Procedure 0x403b43
	.globl sub_403b43
	.type sub_403b43, @function
sub_403b43:

	nop	word ptr cs:[rax + rax]
.label_298:
	mov	rcx, -1
	cmp	byte ptr [rdi + rsi], 0
	je	.label_305
.label_299:
	cmp	byte ptr [rsp + 0x2f], 0
	je	.label_301
	mov	rax, qword ptr [rsp + 0x40]
	lea	rbx, [rsi + rax]
	cmp	rax, 2
	jb	.label_249
	cmp	rbp, -1
	jne	.label_249
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
.label_249:
	cmp	rbx, rbp
	jbe	.label_322
.label_301:
	xor	r8d, r8d
.label_229:
	movzx	r15d, byte ptr [rdi + rsi]
	cmp	r15, 0x7e
	ja	.label_291
	xor	edx, edx
	mov	r13b, 1
	mov	cl, 0x6e
	mov	bl, 0x61
	xor	eax, eax
	jmp	qword ptr [(r15 * 8) + label_326]
.label_468:
	test	rsi, rsi
	jne	.label_228
	jmp	.label_254
	.section	.text
	.align	16
	#Procedure 0x403be5
	.globl sub_403be5
	.type sub_403be5, @function
sub_403be5:

	nop	word ptr cs:[rax + rax]
.label_322:
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
	jne	.label_224
	cmp	byte ptr [rsp + 6], 0
	mov	rdi, qword ptr [rsp + 0x30]
	mov	r11, rbx
	mov	r10d, r15d
	mov	rax, qword ptr [rsp + 0x38]
	mov	r9d, ebp
	mov	rsi, r12
	mov	r12, rax
	mov	rbp, qword ptr [rsp + 0x20]
	je	.label_229
	jmp	.label_230
.label_224:
	mov	rdi, qword ptr [rsp + 0x30]
	mov	r11, rbx
	mov	r10d, r15d
	mov	rax, qword ptr [rsp + 0x38]
	mov	r9d, ebp
	mov	rsi, r12
	mov	r12, rax
	mov	rbp, qword ptr [rsp + 0x20]
	jmp	.label_229
.label_472:
	xor	eax, eax
	cmp	rbp, -1
	je	.label_248
	test	rsi, rsi
	jne	.label_250
	cmp	rbp, 1
	je	.label_254
	xor	r13d, r13d
	jmp	.label_219
.label_461:
	cmp	byte ptr [rsp + 0x17], 0
	je	.label_258
	cmp	byte ptr [rsp + 6], 0
	jne	.label_259
	cmp	r12d, 2
	jne	.label_263
	mov	eax, r9d
	and	al, 1
	jne	.label_263
	cmp	r14, r11
	jae	.label_266
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_266:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_269
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x24
.label_269:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_289
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_289:
	add	r14, 3
	mov	r9b, 1
.label_263:
	mov	rcx, r14
	cmp	rcx, r11
	jae	.label_282
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + rcx], 0x5c
.label_282:
	lea	r14, [rcx + 1]
	mov	al, 1
	mov	r15b, 0x30
	cmp	r12d, 2
	je	.label_286
	lea	rdx, [rsi + 1]
	cmp	rdx, rbp
	jae	.label_286
	mov	dl, byte ptr [rdi + rdx]
	add	dl, 0xd0
	cmp	dl, 9
	ja	.label_286
	cmp	r14, r11
	jae	.label_265
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + r14], 0x30
.label_265:
	lea	rdx, [rcx + 2]
	cmp	rdx, r11
	jae	.label_312
	mov	rbx, qword ptr [rsp + 8]
	mov	byte ptr [rbx + rdx], 0x30
.label_312:
	add	rcx, 3
	xor	r13d, r13d
	mov	r14, rcx
	jmp	.label_219
.label_462:
	mov	bl, 0x62
	jmp	.label_307
.label_463:
	mov	cl, 0x74
	jmp	.label_309
.label_464:
	mov	bl, 0x76
	jmp	.label_307
.label_465:
	mov	bl, 0x66
	jmp	.label_307
.label_466:
	mov	cl, 0x72
	jmp	.label_309
.label_469:
	mov	r15b, 0x27
	mov	al, 1
	mov	qword ptr [rsp + 0xa0], rax
	cmp	r12d, 2
	jne	.label_315
	cmp	byte ptr [rsp + 6], 0
	jne	.label_233
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
	jae	.label_321
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_321:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_330
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x5c
.label_330:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_334
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_334:
	add	r14, 3
	xor	r9d, r9d
.label_315:
	xor	eax, eax
	mov	r13b, 1
	jmp	.label_219
.label_470:
	mov	r15b, 0x3f
	cmp	r12d, 5
	je	.label_222
	cmp	r12d, 2
	jne	.label_228
	cmp	byte ptr [rsp + 6], 0
	je	.label_228
	jmp	.label_233
.label_471:
	cmp	r12d, 2
	jne	.label_236
	cmp	byte ptr [rsp + 6], 0
	jne	.label_233
	mov	r15b, 0x5c
	xor	eax, eax
	xor	r13d, r13d
	jmp	.label_220
.label_291:
	mov	dword ptr [rsp + 0x54], r8d
	mov	dword ptr [rsp + 0x50], r9d
	mov	byte ptr [rsp + 7], r10b
	mov	qword ptr [rsp + 0x98], r11
	cmp	qword ptr [rsp + 0xa8], 1
	jne	.label_243
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
.label_244:
	and	r13b, 1
	mov	r8d, r13d
	or	r8b, byte ptr [rsp + 0x2a]
	mov	qword ptr [rsp + 0x60], r12
	cmp	r12, 1
	mov	r11, qword ptr [rsp + 0x98]
	mov	r10b, byte ptr [rsp + 7]
	mov	r12, qword ptr [rsp + 0x38]
	mov	r9d, dword ptr [rsp + 0x50]
	ja	.label_262
	test	r8b, r8b
	je	.label_262
	xor	eax, eax
	mov	rbp, qword ptr [rsp + 0x20]
	mov	r8d, dword ptr [rsp + 0x54]
	jmp	.label_219
.label_248:
	test	rsi, rsi
	jne	.label_284
	mov	cl, byte ptr [rdi + 1]
	test	cl, cl
	jne	.label_284
.label_254:
	mov	dl, 1
.label_467:
	cmp	byte ptr [rsp + 0x1f], 0
	je	.label_233
	xor	eax, eax
	mov	r13b, dl
	nop	word ptr [rax + rax]
.label_219:
	cmp	byte ptr [rsp + 0x2e], 0
	je	.label_293
	cmp	qword ptr [rsp + 0xf0], 0
	jne	.label_280
	jmp	.label_297
	.section	.text
	.align	16
	#Procedure 0x403f34
	.globl sub_403f34
	.type sub_403f34, @function
sub_403f34:

	nop	word ptr cs:[rax + rax]
.label_293:
	cmp	byte ptr [rsp + 0x2d], 0
	je	.label_297
.label_280:
	mov	ebx, r8d
	mov	r8, rsi
	mov	ecx, r15d
	shr	cl, 5
	movzx	edx, cl
	mov	esi, 1
	mov	ecx, r15d
	shl	esi, cl
	test	bl, bl
	jne	.label_302
	mov	rcx, qword ptr [rsp + 0xf0]
	and	esi, dword ptr [rcx + rdx*4]
	mov	ebx, r15d
	mov	rsi, r8
	je	.label_220
	jmp	.label_313
	.section	.text
	.align	16
	#Procedure 0x403f7d
	.globl sub_403f7d
	.type sub_403f7d, @function
sub_403f7d:

	nop	dword ptr [rax]
.label_297:
	test	r8b, r8b
	mov	ebx, r15d
	jne	.label_313
	jmp	.label_220
.label_302:
	mov	ebx, r15d
	mov	rsi, r8
	jmp	.label_313
.label_258:
	cmp	dword ptr [rsp + 0x90], 0
	jne	.label_256
	xor	r15d, r15d
	jmp	.label_228
.label_236:
	mov	cl, 0x5c
	cmp	byte ptr [rsp + 0x29], 0
	je	.label_309
	xor	eax, eax
	mov	r15b, 0x5c
	xor	r13d, r13d
	jmp	.label_220
.label_309:
	cmp	byte ptr [rsp + 0x1f], 0
	mov	ebx, ecx
	je	.label_233
.label_307:
	xor	eax, eax
	cmp	byte ptr [rsp + 0x17], 0
	mov	r13d, 0
	je	.label_219
	nop	word ptr cs:[rax + rax]
.label_313:
	cmp	byte ptr [rsp + 6], 0
	jne	.label_259
	cmp	r12d, 2
	jne	.label_217
	mov	eax, r9d
	and	al, 1
	jne	.label_217
	cmp	r14, r11
	jae	.label_234
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_234:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_226
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x24
.label_226:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_283
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_283:
	add	r14, 3
	mov	r9b, 1
.label_217:
	cmp	r14, r11
	jae	.label_277
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x5c
.label_277:
	inc	r14
	jmp	.label_240
.label_243:
	mov	qword ptr [rsp + 0x80], 0
	cmp	rbp, -1
	jne	.label_245
	mov	rbx, rsi
	call	strlen
	mov	rsi, rbx
	mov	rdi, qword ptr [rsp + 0x30]
	mov	rbp, rax
.label_245:
	lea	rax, [rdi + rsi]
	mov	qword ptr [rsp + 0x60], rax
	mov	r13b, 1
	xor	r12d, r12d
	lea	rax, [rsp + 0x80]
	mov	rcx, rax
	mov	qword ptr [rsp + 0x20], rbp
	mov	qword ptr [rsp + 0x58], rsi
.label_327:
	lea	rbx, [r12 + rsi]
	lea	rsi, [rdi + rbx]
	mov	rdx, rbp
	sub	rdx, rbx
	lea	rdi, [rsp + 0x94]
	call	rpl_mbrtowc
	mov	rbp, rax
	test	rbp, rbp
	je	.label_268
	cmp	rbp, -1
	movabs	rsi, 0x20000002b
	je	.label_271
	cmp	rbp, -2
	je	.label_276
	cmp	rbp, 1
	seta	al
	and	al, byte ptr [rsp + 0x2b]
	cmp	al, 1
	mov	rdi, qword ptr [rsp + 0x30]
	mov	r11, qword ptr [rsp + 0x98]
	jne	.label_310
	mov	rax, qword ptr [rsp + 0x60]
	lea	rax, [rax + r12]
	mov	ecx, 1
	nop	word ptr cs:[rax + rax]
.label_246:
	movsx	edx, byte ptr [rax + rcx]
	add	edx, -0x5b
	cmp	edx, 0x21
	ja	.label_292
	bt	rsi, rdx
	jb	.label_296
.label_292:
	inc	rcx
	cmp	rcx, rbp
	jb	.label_246
.label_310:
	mov	edi, dword ptr [rsp + 0x94]
	call	iswprint
	test	eax, eax
	jne	.label_336
	xor	r13d, r13d
.label_336:
	lea	rdi, [rsp + 0x80]
	add	r12, rbp
	mov	rbx, rdi
	call	mbsinit
	mov	rcx, rbx
	test	eax, eax
	mov	rdi, qword ptr [rsp + 0x30]
	mov	rbp, qword ptr [rsp + 0x20]
	mov	rsi, qword ptr [rsp + 0x58]
	je	.label_327
	jmp	.label_244
.label_286:
	xor	r13d, r13d
	jmp	.label_219
.label_284:
	mov	rbp, -1
	xor	r13d, r13d
	jmp	.label_219
.label_222:
	cmp	dword ptr [rsp + 0x8c], 0
	je	.label_228
	lea	rcx, [rsi + 2]
	cmp	rcx, rbp
	jae	.label_228
	cmp	byte ptr [rdi + rsi + 1], 0x3f
	jne	.label_228
	movsx	edx, byte ptr [rdi + rcx]
	xor	eax, eax
	cmp	edx, 0x3e
	ja	.label_325
	mov	rbx, rsi
	movabs	rsi, 0x7000a38200000000
	bt	rsi, rdx
	jae	.label_274
	cmp	byte ptr [rsp + 6], 0
	jne	.label_319
	cmp	r14, r11
	jae	.label_241
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x3f
.label_241:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_225
	mov	rsi, qword ptr [rsp + 8]
	mov	byte ptr [rsi + rax], 0x22
.label_225:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_223
	mov	rsi, qword ptr [rsp + 8]
	mov	byte ptr [rsi + rax], 0x22
.label_223:
	lea	rax, [r14 + 3]
	cmp	rax, r11
	jae	.label_273
	mov	rsi, qword ptr [rsp + 8]
	mov	byte ptr [rsi + rax], 0x3f
.label_273:
	add	r14, 4
	xor	eax, eax
	mov	rsi, rcx
	mov	r15b, dl
	xor	r13d, r13d
	jmp	.label_219
.label_228:
	xor	eax, eax
.label_250:
	xor	r13d, r13d
	jmp	.label_219
.label_262:
	add	qword ptr [rsp + 0x60], rsi
	xor	eax, eax
	mov	rbp, qword ptr [rsp + 0x20]
	jmp	.label_242
	.section	.text
	.align	16
	#Procedure 0x404262
	.globl sub_404262
	.type sub_404262, @function
sub_404262:

	nop	word ptr cs:[rax + rax]
.label_320:
	inc	r14
	mov	r15b, byte ptr [rdi + rsi + 1]
	mov	rsi, rdx
.label_242:
	test	r8b, r8b
	je	.label_251
	mov	ecx, dword ptr [rsp + 0x54]
	test	cl, 1
	je	.label_252
	cmp	r14, r11
	jae	.label_255
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + r14], 0x5c
.label_255:
	inc	r14
	mov	dword ptr [rsp + 0x54], 0
	jmp	.label_252
	.section	.text
	.align	16
	#Procedure 0x4042ac
	.globl sub_4042ac
	.type sub_4042ac, @function
sub_4042ac:

	nop	dword ptr [rax]
.label_251:
	cmp	byte ptr [rsp + 6], 0
	jne	.label_230
	cmp	r12d, 2
	jne	.label_267
	mov	eax, r9d
	and	al, 1
	jne	.label_267
	cmp	r14, r11
	jae	.label_270
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_270:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_272
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + rax], 0x24
.label_272:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_279
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + rax], 0x27
.label_279:
	add	r14, 3
	mov	r9b, 1
.label_267:
	cmp	r14, r11
	jae	.label_329
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x5c
.label_329:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_247
	mov	edx, r15d
	shr	dl, 6
	or	dl, 0x30
	mov	rbx, qword ptr [rsp + 8]
	mov	byte ptr [rbx + rax], dl
.label_247:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_295
	mov	edx, r15d
	shr	dl, 3
	and	dl, 7
	or	dl, 0x30
	mov	rbx, qword ptr [rsp + 8]
	mov	byte ptr [rbx + rax], dl
.label_295:
	add	r14, 3
	and	r15b, 7
	or	r15b, 0x30
	mov	al, 1
.label_252:
	lea	rdx, [rsi + 1]
	cmp	qword ptr [rsp + 0x60], rdx
	jbe	.label_220
	test	r9b, 1
	je	.label_308
	mov	ebx, eax
	and	bl, 1
	jne	.label_308
	mov	rbx, rsi
	cmp	r14, r11
	jae	.label_311
	mov	rsi, qword ptr [rsp + 8]
	mov	byte ptr [rsi + r14], 0x27
.label_311:
	lea	rsi, [r14 + 1]
	cmp	rsi, r11
	jae	.label_323
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rsi], 0x27
.label_323:
	add	r14, 2
	xor	r9d, r9d
	mov	rsi, rbx
.label_308:
	cmp	r14, r11
	jae	.label_320
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + r14], r15b
	jmp	.label_320
	.section	.text
	.align	16
	#Procedure 0x4043b3
	.globl sub_4043b3
	.type sub_4043b3, @function
sub_4043b3:

	nop	word ptr cs:[rax + rax]
.label_220:
	test	r9b, 1
	je	.label_253
	and	al, 1
	jne	.label_253
	cmp	r14, r11
	jae	.label_328
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_328:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_318
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_318:
	add	r14, 2
	xor	r9d, r9d
.label_253:
	mov	ebx, r15d
.label_240:
	cmp	r14, r11
	jae	.label_324
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], bl
.label_324:
	inc	r14
	shl	r13b, 7
	sar	r13b, 7
	and	r13b, r10b
	mov	r10d, r13d
	jmp	.label_256
.label_271:
	xor	r13d, r13d
.label_268:
	mov	rdi, qword ptr [rsp + 0x30]
	mov	rsi, qword ptr [rsp + 0x58]
	jmp	.label_244
.label_276:
	mov	rbp, qword ptr [rsp + 0x20]
	cmp	rbp, rbx
	mov	rdi, qword ptr [rsp + 0x30]
	jbe	.label_232
	mov	rsi, qword ptr [rsp + 0x58]
.label_239:
	mov	rax, qword ptr [rsp + 0x60]
	cmp	byte ptr [rax + r12], 0
	je	.label_316
	lea	rax, [rsi + r12 + 1]
	inc	r12
	cmp	rax, rbp
	jb	.label_239
	xor	r13d, r13d
	jmp	.label_244
.label_232:
	xor	r13d, r13d
	mov	rsi, qword ptr [rsp + 0x58]
	jmp	.label_244
.label_316:
	xor	r13d, r13d
	jmp	.label_244
.label_325:
	xor	r13d, r13d
	jmp	.label_219
.label_274:
	xor	r13d, r13d
	mov	rsi, rbx
	jmp	.label_219
	.section	.text
	.align	16
	#Procedure 0x404488
	.globl sub_404488
	.type sub_404488, @function
sub_404488:

	nop	dword ptr [rax + rax]
.label_300:
	mov	rcx, rsi
.label_305:
	cmp	r12d, 2
	setne	al
	test	r14, r14
	setne	dl
	cmp	byte ptr [rsp + 6], 0
	je	.label_257
	or	al, dl
	je	.label_261
.label_257:
	cmp	r12d, 2
	setne	al
	cmp	byte ptr [rsp + 6], 0
	setne	dl
	mov	rsi, qword ptr [rsp + 0xa0]
	test	sil, 1
	mov	bl, byte ptr [rsp + 0x2c]
	mov	rsi, qword ptr [rsp + 0xb0]
	je	.label_264
	or	al, dl
	jne	.label_264
	test	r10b, 1
	jne	.label_275
	cmp	qword ptr [rsp + 0x68], 0
	je	.label_264
	test	r11, r11
	mov	r15d, r12d
	mov	al, bl
	mov	qword ptr [rsp + 0x20], rcx
	mov	r12d, esi
	mov	rbp, qword ptr [rsp + 0x68]
	je	.label_281
.label_264:
	mov	rdx, qword ptr [rsp + 0x48]
	test	rdx, rdx
	je	.label_287
	cmp	byte ptr [rsp + 6], 0
	mov	rcx, qword ptr [rsp + 8]
	jne	.label_290
	mov	al, byte ptr [rdx]
	test	al, al
	je	.label_290
	inc	rdx
	nop	word ptr cs:[rax + rax]
.label_303:
	cmp	r14, r11
	jae	.label_314
	mov	byte ptr [rcx + r14], al
.label_314:
	inc	r14
	movzx	eax, byte ptr [rdx]
	inc	rdx
	test	al, al
	jne	.label_303
	jmp	.label_290
.label_259:
	mov	qword ptr [rsp + 0x20], rbp
.label_230:
	mov	rdx, rdi
	jmp	.label_306
.label_233:
	mov	qword ptr [rsp + 0x20], rbp
.label_296:
	mov	rdx, rdi
	mov	eax, 2
.label_294:
	mov	qword ptr [rsp + 0x38], rax
.label_306:
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
.label_227:
	mov	r14, rax
.label_231:
	mov	rax, r14
	add	rsp, 0xb8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_261:
	mov	rdx, rdi
	mov	qword ptr [rsp + 0x20], rcx
	jmp	.label_306
.label_275:
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
	jmp	.label_227
.label_287:
	mov	rcx, qword ptr [rsp + 8]
.label_290:
	cmp	r14, r11
	jae	.label_231
	mov	byte ptr [rcx + r14], 0
	jmp	.label_231
.label_319:
	mov	qword ptr [rsp + 0x20], rbp
	mov	rdx, rdi
	mov	eax, 5
	jmp	.label_294
.label_278:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x404647
	.globl sub_404647
	.type sub_404647, @function
sub_404647:

	nop	word ptr [rax + rax]
.label_338:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x404655
	.globl sub_404655
	.type sub_404655, @function
sub_404655:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x404659

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
	je	.label_337
	test	r15, r15
	je	.label_338
.label_337:
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
	#Procedure 0x404690
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
	je	.label_339
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
.label_339:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x4046f8
	.globl sub_4046f8
	.type sub_4046f8, @function
sub_4046f8:

	nop	dword ptr [rax + rax]
.label_340:
	push	rax
	call	abort
	.section	.text
	.align	16
	#Procedure 0x404706
	.globl sub_404706
	.type sub_404706, @function
sub_404706:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40470b
	.globl set_custom_quoting
	.type set_custom_quoting, @function
set_custom_quoting:

	test	rdi, rdi
	mov	eax, OFFSET FLAT:default_quoting_options
	cmovne	rax, rdi
	mov	dword ptr [rax], 0xa
	test	rsi, rsi
	je	.label_340
	test	rdx, rdx
	je	.label_340
	mov	qword ptr [rax + 0x28], rsi
	mov	qword ptr [rax + 0x30], rdx
	ret	
	.section	.text
	.align	16
	#Procedure 0x404730

	.globl version_etc_va
	.type version_etc_va, @function
version_etc_va:
	movsxd	r10, dword ptr [r8]
	cmp	r10, 0x28
	ja	.label_351
	mov	r9, r10
	add	r9, qword ptr [r8 + 0x10]
	lea	r10d, [r10 + 8]
	mov	dword ptr [r8], r10d
	jmp	.label_353
.label_351:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_353:
	sub	rsp, 0x58
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp], rax
	xor	r9d, r9d
	test	rax, rax
	je	.label_341
	cmp	r10d, 0x29
	jae	.label_350
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_352
.label_350:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_352:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 8], rax
	mov	r9d, 1
	test	rax, rax
	je	.label_341
	cmp	r10d, 0x29
	jae	.label_348
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_349
.label_348:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_349:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x10], rax
	mov	r9d, 2
	test	rax, rax
	je	.label_341
	cmp	r10d, 0x29
	jae	.label_346
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_347
.label_346:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_347:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x18], rax
	mov	r9d, 3
	test	rax, rax
	je	.label_341
	cmp	r10d, 0x29
	jae	.label_344
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_345
.label_344:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_345:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x20], rax
	mov	r9d, 4
	test	rax, rax
	je	.label_341
	cmp	r10d, 0x29
	jae	.label_342
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_343
.label_342:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_343:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x28], rax
	mov	r9d, 5
	test	rax, rax
	je	.label_341
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x30], rax
	mov	r9d, 6
	test	rax, rax
	je	.label_341
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x38], rax
	mov	r9d, 7
	test	rax, rax
	je	.label_341
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x40], rax
	mov	r9d, 8
	test	rax, rax
	je	.label_341
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x48], rax
	cmp	rax, 1
	mov	r9d, 9
	sbb	r9, -1
.label_341:
	lea	r8, [rsp]
	call	version_etc_arn
	add	rsp, 0x58
	ret	
	.section	.text
	.align	16
	#Procedure 0x404912
	.globl sub_404912
	.type sub_404912, @function
sub_404912:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404920
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
	#Procedure 0x404939
	.globl sub_404939
	.type sub_404939, @function
sub_404939:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x404940

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
	jne	.label_354
	mov	rax, qword ptr [rbx + 0x28]
	cmp	rax, qword ptr [rbx + 0x20]
	jne	.label_354
	cmp	qword ptr [rbx + 0x48], 0
	je	.label_355
.label_354:
	mov	rdi, rbx
	mov	rsi, rbp
	mov	edx, r14d
	pop	rbx
	pop	r14
	pop	rbp
	jmp	fseeko
.label_355:
	mov	rdi, rbx
	call	fileno
	mov	edi, eax
	mov	rsi, rbp
	mov	edx, r14d
	call	lseek
	mov	rcx, rax
	mov	eax, 0xffffffff
	cmp	rcx, -1
	je	.label_356
	and	byte ptr [rbx], 0xef
	mov	qword ptr [rbx + 0x90], rcx
	xor	eax, eax
.label_356:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4049ae
	.globl sub_4049ae
	.type sub_4049ae, @function
sub_4049ae:

	nop	
	.section	.text
	.align	16
	#Procedure 0x4049b0
	.globl quotearg_char
	.type quotearg_char, @function
quotearg_char:

	sub	rsp, 0x38
	mov	ecx, esi
	mov	rax, rdi
	mov	rdx, qword ptr [rip + label_17]
	mov	qword ptr [rsp + 0x30], rdx
	movups	xmm0, xmmword ptr [rip + label_18]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_19]
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
	#Procedure 0x404a1f
	.globl sub_404a1f
	.type sub_404a1f, @function
sub_404a1f:

	nop	
.label_357:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x404a25
	.globl sub_404a25
	.type sub_404a25, @function
sub_404a25:

	nop	
	.section	.text
	.align	16
	#Procedure 0x404a27
	.globl quotearg_n_custom
	.type quotearg_n_custom, @function
quotearg_n_custom:

	sub	rsp, 0x38
	mov	rax, qword ptr [rip + label_17]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0, xmmword ptr [rip + label_18]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_19]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rsi, rsi
	je	.label_357
	test	rdx, rdx
	je	.label_357
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
	#Procedure 0x404a90

	.globl fadvise
	.type fadvise, @function
fadvise:
	push	rbx
	mov	ebx, esi
	test	rdi, rdi
	je	.label_358
	call	fileno
	xor	esi, esi
	xor	edx, edx
	mov	edi, eax
	mov	ecx, ebx
	pop	rbx
	jmp	posix_fadvise
.label_358:
	pop	rbx
	ret	
	.section	.text
	.align	16
	#Procedure 0x404aad
	.globl sub_404aad
	.type sub_404aad, @function
sub_404aad:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x404ab0
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
	#Procedure 0x404b25
	.globl sub_404b25
	.type sub_404b25, @function
sub_404b25:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404b30
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
	#Procedure 0x404b3f
	.globl sub_404b3f
	.type sub_404b3f, @function
sub_404b3f:

	nop	
	.section	.text
	.align	16
	#Procedure 0x404b40

	.globl rpl_fflush
	.type rpl_fflush, @function
rpl_fflush:
	push	rbx
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_359
	mov	rdi, rbx
	call	__freading
	test	eax, eax
	je	.label_359
	test	byte ptr [rbx + 1], 1
	je	.label_359
	xor	esi, esi
	mov	edx, 1
	mov	rdi, rbx
	call	rpl_fseeko
.label_359:
	mov	rdi, rbx
	pop	rbx
	jmp	fflush
	.section	.text
	.align	16
	#Procedure 0x404b73
	.globl sub_404b73
	.type sub_404b73, @function
sub_404b73:

	nop	word ptr cs:[rax + rax]
.label_363:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x404b85
	.globl sub_404b85
	.type sub_404b85, @function
sub_404b85:

	nop	word ptr [rax + rax]
.label_366:
	test	rcx, rcx
	jne	.label_364
	mov	eax, 0x80
	xor	edx, edx
	div	rbx
	xor	ecx, ecx
	cmp	rbx, 0x80
	seta	cl
	add	rcx, rax
.label_364:
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rcx
	jb	.label_363
.label_365:
	mov	qword ptr [rsi], rcx
	imul	rbx, rcx
	test	rdi, rdi
	je	.label_360
	test	rbx, rbx
	jne	.label_360
	call	free
	xor	eax, eax
	pop	rbx
	ret	
.label_360:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_361
	test	rax, rax
	je	.label_362
.label_361:
	pop	rbx
	ret	
	.section	.text
	.align	16
	#Procedure 0x404bee
	.globl x2nrealloc
	.type x2nrealloc, @function
x2nrealloc:

	push	rbx
	mov	rbx, rdx
	mov	rcx, qword ptr [rsi]
	test	rdi, rdi
	je	.label_366
	movabs	rax, 0x5555555555555554
	xor	edx, edx
	div	rbx
	cmp	rax, rcx
	jbe	.label_362
	mov	rax, rcx
	shr	rax, 1
	lea	rcx, [rcx + rax + 1]
	jmp	.label_365
.label_362:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x404c20

	.globl quote_n
	.type quote_n, @function
quote_n:
	mov	rdx, -1
	mov	ecx, OFFSET FLAT:quote_quoting_options
	jmp	quotearg_n_options
	.section	.text
	.align	16
	#Procedure 0x404c31
	.globl sub_404c31
	.type sub_404c31, @function
sub_404c31:

	nop	word ptr cs:[rax + rax]
.label_368:
	mov	ebx, 0xffffffff
	test	eax, eax
	jne	.label_367
	call	__errno_location
	mov	dword ptr [rax], 0
.label_367:
	mov	eax, ebx
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x404c5b

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
	jne	.label_368
	test	eax, eax
	sete	cl
	neg	eax
	sbb	ebx, ebx
	test	r14, r14
	jne	.label_367
	test	cl, cl
	jne	.label_367
	call	__errno_location
	xor	ecx, ecx
	cmp	dword ptr [rax], 9
	mov	ebx, 0xffffffff
	cmove	ebx, ecx
	jmp	.label_367
	.section	.text
	.align	16
	#Procedure 0x404ca0
	.globl emit_bug_reporting_address
	.type emit_bug_reporting_address, @function
emit_bug_reporting_address:

	push	rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_369
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_370
	xor	eax, eax
	mov	rsi, rcx
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_372
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_72
	mov	ecx, OFFSET FLAT:label_128
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_371
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	pop	rax
	jmp	fputs_unlocked
	.section	.text
	.align	16
	#Procedure 0x404d14
	.globl sub_404d14
	.type sub_404d14, @function
sub_404d14:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404d20
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
	#Procedure 0x404d56
	.globl sub_404d56
	.type sub_404d56, @function
sub_404d56:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404d60

	.globl rpl_fclose
	.type rpl_fclose, @function
rpl_fclose:
	push	rbp
	push	r14
	push	rbx
	mov	rbx, rdi
	call	fileno
	test	eax, eax
	js	.label_373
	mov	rdi, rbx
	call	__freading
	test	eax, eax
	je	.label_374
	mov	rdi, rbx
	call	fileno
	xor	esi, esi
	mov	edx, 1
	mov	edi, eax
	call	lseek
	cmp	rax, -1
	je	.label_373
.label_374:
	mov	rdi, rbx
	call	rpl_fflush
	test	eax, eax
	je	.label_373
	call	__errno_location
	mov	r14, rax
	mov	ebp, dword ptr [r14]
	mov	rdi, rbx
	call	fclose
	test	ebp, ebp
	je	.label_375
	mov	dword ptr [r14], ebp
	mov	eax, 0xffffffff
.label_375:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
.label_373:
	mov	rdi, rbx
	pop	rbx
	pop	r14
	pop	rbp
	jmp	fclose
	.section	.text
	.align	16
	#Procedure 0x404dd4
	.globl sub_404dd4
	.type sub_404dd4, @function
sub_404dd4:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404de0
	.globl xnrealloc
	.type xnrealloc, @function
xnrealloc:

	push	rbx
	mov	rbx, rdx
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rsi
	jb	.label_376
	imul	rbx, rsi
	test	rdi, rdi
	je	.label_377
	test	rbx, rbx
	jne	.label_377
	call	free
	xor	eax, eax
	pop	rbx
	ret	
.label_376:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x404e14
	.globl sub_404e14
	.type sub_404e14, @function
sub_404e14:

	nop	dword ptr [rax + rax]
.label_377:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_378
	test	rax, rax
	je	.label_376
.label_378:
	pop	rbx
	ret	
.label_379:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x404e35
	.globl sub_404e35
	.type sub_404e35, @function
sub_404e35:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404e3b

	.globl xmalloc
	.type xmalloc, @function
xmalloc:
	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	je	.label_380
	test	rax, rax
	je	.label_379
.label_380:
	pop	rbx
	ret	
	.section	.text
	.align	16
	#Procedure 0x404e50

	.globl dup_safer
	.type dup_safer, @function
dup_safer:
	xor	esi, esi
	mov	edx, 3
	xor	eax, eax
	jmp	rpl_fcntl
	.section	.text
	.align	16
	#Procedure 0x404e5e
	.globl sub_404e5e
	.type sub_404e5e, @function
sub_404e5e:

	nop
	nop	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404ed2
	.globl sub_404ed2
	.type sub_404ed2, @function
sub_404ed2:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404ef6
	.globl sub_404ef6
	.type sub_404ef6, @function
sub_404ef6:

	nop	word ptr cs:[rax + rax]
