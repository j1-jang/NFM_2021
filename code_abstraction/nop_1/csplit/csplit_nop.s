	.section	.text
	.align	32
	#Procedure 0x401d20

	.globl xalloc_die
	.type xalloc_die, @function
xalloc_die:
	mov	rsp, rsp
	push	rax
	mov	rbp, rbp
	xor	edi, edi
	mov	rbp, rbp
	mov	esi, OFFSET FLAT:.str.1
	mov	edx, 5
	call	dcgettext
	nop	
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	lea	rdi, [rdi]
	mov	edx, OFFSET FLAT:.str.2
	xor	eax, eax
	lea	rsi, [rsi]
	call	error
	nop	
	call	cleanup_fatal
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401d60

	.globl cleanup_fatal
	.type cleanup_fatal, @function
cleanup_fatal:
	nop	
	push	rax
	call	cleanup
	mov	edi, 1
	call	exit
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401d80

	.globl main
	.type main, @function
main:
	push	rbp
	push	r14
	nop	
	push	rbx
	mov	rbp, rbp
	sub	rsp, 0xa0
	mov	rsp, rsp
	mov	rbx, rsi
	lea	rsi, [rsi]
	mov	r14d, edi
	mov	rdi, qword ptr [rbx]
	call	set_program_name
	mov	edi, 6
	lea	rdi, [rdi]
	mov	esi, OFFSET FLAT:.str
	mov	rsp, rsp
	call	setlocale
	lea	rsi, [rsi]
	mov	edi, OFFSET FLAT:.str.3
	nop	
	mov	esi, OFFSET FLAT:.str.4
	call	bindtextdomain
	mov	edi, OFFSET FLAT:.str.3
	call	textdomain
	mov	edi, OFFSET FLAT:close_stdout
	call	atexit
	mov	qword ptr [word ptr [rip + global_argv]],  rbx
	mov	rsp, rsp
	mov	qword ptr [word ptr [rip + controls]],  0
	mov	qword ptr [word ptr [rip + control_used]],  0
	mov	rsp, rsp
	mov	byte ptr [byte ptr [rip + suppress_count]],  0
	mov	rbp, rbp
	mov	byte ptr [byte ptr [rip + remove_files]],  1
	mov	byte ptr [byte ptr [rip + suppress_matched]],  0
	nop	
	mov	qword ptr [word ptr [rip + prefix]], OFFSET FLAT:.str.5
	jmp	.label_21
	nop	dword ptr [rax + rax]
.label_1880:
	lea	rsi, [rsi]
	mov	byte ptr [byte ptr [rip + suppress_count]],  1
.label_21:
	mov	edx, OFFSET FLAT:.str.6
	mov	ecx, OFFSET FLAT:longopts
	nop	
	xor	r8d, r8d
	mov	rsp, rsp
	mov	edi, r14d
	mov	rsp, rsp
	mov	rsi, rbx
	call	getopt_long
	mov	rsp, rsp
	cmp	eax, 0x6a
	nop	
	jle	.label_26
	mov	rsp, rsp
	lea	ecx, [rax - 0x6b]
	cmp	ecx, 8
	lea	rsi, [rsi]
	ja	.label_29
	lea	rdi, [rdi]
	jmp	qword ptr [word ptr [+ (rcx * 8) + label_31]]
.label_1878:
	mov	byte ptr [byte ptr [rip + remove_files]],  0
	lea	rdi, [rdi]
	jmp	.label_21
	nop	word ptr cs:[rax + rax]
.label_26:
	cmp	eax, 0x61
	lea	rdi, [rdi]
	jle	.label_10
	lea	rsi, [rsi]
	cmp	eax, 0x62
	lea	rsi, [rsi]
	je	.label_13
	nop	
	cmp	eax, 0x66
	mov	rbp, rbp
	jne	.label_12
	nop	
	mov	rax,  qword ptr [word ptr [rip + optarg]]
	mov	qword ptr [word ptr [rip + prefix]],  rax
	mov	rbp, rbp
	jmp	.label_21
	nop	
.label_29:
	cmp	eax, 0x7a
	je	.label_25
	cmp	eax, 0x80
	jne	.label_12
	nop	
	mov	byte ptr [byte ptr [rip + suppress_matched]],  1
	jmp	.label_21
.label_1879:
	mov	rbp,  qword ptr [word ptr [rip + optarg]]
	mov	rbp, rbp
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.7
	mov	edx, 5
	call	dcgettext
	mov	rbp, rbp
	xor	esi, esi
	mov	edx, 0x7fffffff
	mov	ecx, OFFSET FLAT:.str
	lea	rdi, [rdi]
	xor	r9d, r9d
	mov	rdi, rbp
	lea	rdi, [rdi]
	mov	r8, rax
	mov	rbp, rbp
	call	xdectoimax
	mov	dword ptr [dword ptr [rip + digits]],  eax
	mov	rsp, rsp
	jmp	.label_21
.label_13:
	mov	rax,  qword ptr [word ptr [rip + optarg]]
	mov	qword ptr [word ptr [rip + suffix]],  rax
	lea	rsi, [rsi]
	jmp	.label_21
.label_25:
	mov	byte ptr [byte ptr [rip + elide_empty_files]],  1
	jmp	.label_21
.label_10:
	cmp	eax, -1
	lea	rsi, [rsi]
	jne	.label_28
	mov	eax,  dword ptr [dword ptr [rip + optind]]
	mov	ecx, r14d
	mov	rbp, rbp
	sub	ecx, eax
	mov	rsp, rsp
	cmp	ecx, 1
	nop	
	jle	.label_30
	mov	rsp, rsp
	mov	rdi,  qword ptr [word ptr [rip + prefix]]
	lea	rdi, [rdi]
	call	strlen
	mov	rbp, rax
	cmp	qword ptr [word ptr [rip + suffix]],  0
	lea	rdi, [rdi]
	je	.label_9
	mov	rdi,  qword ptr [word ptr [rip + suffix]]
	call	max_out
	mov	rbp, rbp
	jmp	.label_22
.label_9:
	lea	rdi, [rdi]
	mov	ecx,  dword ptr [dword ptr [rip + digits]]
	mov	eax, 0xa
	cmp	ecx, 0xa
	jb	.label_22
	mov	rbp, rbp
	movsxd	rax,  dword ptr [dword ptr [rip + digits]]
.label_22:
	mov	rcx, -2
	mov	rsp, rsp
	sub	rcx, rbp
	lea	rsi, [rsi]
	cmp	rcx, rax
	lea	rsi, [rsi]
	jb	.label_34
	mov	rbp, rbp
	lea	rdi, [rbp + rax + 1]
	mov	rbp, rbp
	call	xmalloc
	mov	qword ptr [word ptr [rip + filename_space]],  rax
	movsxd	rax,  dword ptr [dword ptr [rip + optind]]
	lea	ecx, [rax + 1]
	lea	rsi, [rsi]
	mov	dword ptr [dword ptr [rip + optind]],  ecx
	mov	rdi, qword ptr [rbx + rax*8]
	mov	rsp, rsp
	call	set_input_file
	mov	esi,  dword ptr [dword ptr [rip + optind]]
	lea	rdi, [rdi]
	mov	edi, r14d
	nop	
	mov	rdx, rbx
	nop	
	call	parse_patterns
	mov	edi, OFFSET FLAT:caught_signals
	lea	rsi, [rsi]
	call	sigemptyset
	mov	rbp, -0x2c
	lea	rbx, [rsp + 8]
	nop	word ptr cs:[rax + rax]
.label_32:
	mov	rsp, rsp
	mov	edi,  dword ptr [dword ptr [rbp + label_8]]
	lea	rsi, [rsi]
	xor	esi, esi
	mov	rdx, rbx
	mov	rsp, rsp
	call	sigaction
	cmp	qword ptr [rsp + 8], 1
	je	.label_33
	lea	rdi, [rdi]
	mov	esi,  dword ptr [dword ptr [rbp + label_8]]
	mov	edi, OFFSET FLAT:caught_signals
	call	sigaddset
.label_33:
	add	rbp, 4
	jne	.label_32
	lea	rdi, [rdi]
	mov	qword ptr [word ptr [rsp + 8]], OFFSET FLAT:interrupt_handler
	movups	xmm0,  xmmword ptr [word ptr [rip + label_14]]
	movups	xmmword ptr [rsp + 0x80], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_15]]
	movups	xmmword ptr [rsp + 0x70], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_16]]
	movups	xmmword ptr [rsp + 0x60], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_17]]
	movups	xmmword ptr [rsp + 0x50], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_18]]
	movups	xmmword ptr [rsp + 0x40], xmm0
	nop	
	movups	xmm0,  xmmword ptr [word ptr [rip + label_19]]
	nop	
	movups	xmmword ptr [rsp + 0x30], xmm0
	mov	rbp, rbp
	movups	xmm0,  xmmword ptr [word ptr [rip + label_20]]
	movups	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + caught_signals]]
	lea	rdi, [rdi]
	movups	xmmword ptr [rsp + 0x10], xmm0
	mov	dword ptr [rsp + 0x90], 0
	nop	
	mov	rbp, -0x2c
	mov	rbp, rbp
	lea	rbx, [rsp + 8]
	nop	dword ptr [rax]
.label_23:
	mov	esi,  dword ptr [dword ptr [rbp + label_8]]
	lea	rdi, [rdi]
	mov	edi, OFFSET FLAT:caught_signals
	mov	rbp, rbp
	call	sigismember
	nop	
	test	eax, eax
	mov	rbp, rbp
	je	.label_24
	mov	edi,  dword ptr [dword ptr [rbp + label_8]]
	xor	edx, edx
	nop	
	mov	rsi, rbx
	call	sigaction
.label_24:
	mov	rbp, rbp
	add	rbp, 4
	mov	rsp, rsp
	jne	.label_23
	mov	rsp, rsp
	call	split_file
	xor	edi, edi
	call	close
	test	eax, eax
	nop	
	jne	.label_27
	xor	eax, eax
	add	rsp, 0xa0
	pop	rbx
	mov	rsp, rsp
	pop	r14
	pop	rbp
	ret	
.label_28:
	cmp	eax, 0xffffff7d
	je	.label_11
	mov	rbp, rbp
	cmp	eax, 0xffffff7e
	jne	.label_12
	xor	edi, edi
	call	usage
.label_12:
	mov	edi, 1
	call	usage
.label_11:
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	lea	rsi, [rsi]
	mov	rcx,  qword ptr [word ptr [rip + Version]]
	lea	rsi, [rsi]
	mov	qword ptr [rsp], 0
	lea	rsi, [rsi]
	mov	esi, OFFSET FLAT:.str.8
	lea	rsi, [rsi]
	mov	edx, OFFSET FLAT:.str.17
	mov	r8d, OFFSET FLAT:.str.10
	mov	r9d, OFFSET FLAT:.str.11
	mov	rsp, rsp
	xor	eax, eax
	call	version_etc
	mov	rbp, rbp
	xor	edi, edi
	nop	
	call	exit
.label_30:
	lea	rdi, [rdi]
	xor	edi, edi
	lea	rdi, [rdi]
	cmp	eax, r14d
	mov	rsp, rsp
	jge	.label_7
	mov	rbp, rbp
	mov	esi, OFFSET FLAT:.str.13
	mov	edx, 5
	call	dcgettext
	mov	rbp, rbp
	mov	rbp, rax
	movsxd	rax, r14d
	mov	rdi, qword ptr [rbx + rax*8 - 8]
	mov	rsp, rsp
	call	quote
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	lea	rsi, [rsi]
	xor	eax, eax
	nop	
	mov	rdx, rbp
	lea	rdi, [rdi]
	call	error
	mov	rbp, rbp
	mov	edi, 1
	nop	
	call	usage
.label_34:
	call	xalloc_die
.label_27:
	mov	rbp, rbp
	call	__errno_location
	mov	rsp, rsp
	mov	ebx, dword ptr [rax]
	nop	
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.14
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	lea	rdi, [rdi]
	xor	edi, edi
	lea	rdi, [rdi]
	xor	eax, eax
	mov	rbp, rbp
	mov	esi, ebx
	lea	rdi, [rdi]
	mov	rdx, rcx
	lea	rdi, [rdi]
	call	error
	nop	
	call	cleanup_fatal
.label_7:
	mov	esi, OFFSET FLAT:.str.12
	mov	rsp, rsp
	mov	edx, 5
	lea	rsi, [rsi]
	call	dcgettext
	nop	
	mov	rcx, rax
	lea	rdi, [rdi]
	xor	edi, edi
	lea	rsi, [rsi]
	xor	esi, esi
	mov	rbp, rbp
	xor	eax, eax
	mov	rdx, rcx
	nop	
	call	error
	mov	rsp, rsp
	mov	edi, 1
	call	usage
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4022f0

	.globl usage
	.type usage, @function
usage:
	push	rbp
	mov	rsp, rsp
	push	rbx
	push	rax
	lea	rdi, [rdi]
	mov	ebp, edi
	nop	
	test	ebp, ebp
	mov	rbp, rbp
	jne	.label_35
	mov	rsp, rsp
	xor	edi, edi
	lea	rdi, [rdi]
	mov	esi, OFFSET FLAT:.str.16
	mov	rbp, rbp
	mov	edx, 5
	lea	rsi, [rsi]
	call	dcgettext
	mov	rbp, rbp
	mov	rcx, rax
	mov	rdx,  qword ptr [word ptr [rip + program_name]]
	nop	
	mov	edi, 1
	mov	rbp, rbp
	xor	eax, eax
	mov	rsi, rcx
	nop	
	call	__printf_chk
	mov	rbp, rbp
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.17_0
	lea	rsi, [rsi]
	mov	edx, 5
	call	dcgettext
	lea	rsi, [rsi]
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	lea	rsi, [rsi]
	mov	rdi, rax
	call	fputs_unlocked
	nop	
	xor	edi, edi
	lea	rdi, [rdi]
	mov	esi, OFFSET FLAT:.str.18
	mov	edx, 5
	call	dcgettext
	mov	rbp, rbp
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	lea	rdi, [rdi]
	call	fputs_unlocked
	call	emit_mandatory_arg_note
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.19
	mov	rbp, rbp
	mov	edx, 5
	call	dcgettext
	nop	
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	mov	rsp, rsp
	call	fputs_unlocked
	xor	edi, edi
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.20
	mov	edx, 5
	call	dcgettext
	lea	rdi, [rdi]
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.21
	mov	edx, 5
	lea	rdi, [rdi]
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	mov	rbp, rbp
	call	fputs_unlocked
	mov	rbp, rbp
	xor	edi, edi
	nop	
	mov	esi, OFFSET FLAT:.str.22
	lea	rsi, [rsi]
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	lea	rdi, [rdi]
	mov	esi, OFFSET FLAT:.str.23
	lea	rdi, [rdi]
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	lea	rdi, [rdi]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.24
	mov	rbp, rbp
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	mov	rsp, rsp
	call	fputs_unlocked
	mov	rsp, rsp
	call	emit_ancillary_info
	lea	rsi, [rsi]
	mov	edi, ebp
	mov	rbp, rbp
	call	exit
.label_35:
	mov	rbx,  qword ptr [word ptr [rip + stderr]]
	xor	edi, edi
	lea	rsi, [rsi]
	mov	esi, OFFSET FLAT:.str.15
	mov	edx, 5
	mov	rbp, rbp
	call	dcgettext
	mov	rdx, rax
	mov	rbp, rbp
	mov	rcx,  qword ptr [word ptr [rip + program_name]]
	lea	rdi, [rdi]
	mov	esi, 1
	xor	eax, eax
	mov	rbp, rbp
	mov	rdi, rbx
	call	__fprintf_chk
	mov	edi, ebp
	call	exit
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4024f0

	.globl max_out
	.type max_out, @function
max_out:
	push	r15
	mov	rsp, rsp
	push	r14
	mov	rbp, rbp
	push	r12
	mov	rbp, rbp
	push	rbx
	mov	rsp, rsp
	push	rax
	lea	rdi, [rdi]
	mov	r14, rdi
	mov	rbp, rbp
	xor	eax, eax
	nop	
	lea	r15, [rsp + 4]
	mov	rbp, rbp
	mov	r12, r14
	mov	rsp, rsp
	jmp	.label_45
.label_36:
	inc	rbx
	mov	r12, rbx
.label_45:
	movzx	ecx, byte ptr [r12]
	lea	rsi, [rsi]
	cmp	ecx, 0x25
	mov	rbp, rbp
	je	.label_44
	test	cl, cl
	je	.label_46
	mov	rbx, r12
	mov	rbp, rbp
	jmp	.label_36
	nop	word ptr cs:[rax + rax]
.label_44:
	mov	rsp, rsp
	lea	rbx, [r12 + 1]
	movzx	ecx, byte ptr [r12 + 1]
	cmp	ecx, 0x25
	je	.label_36
	nop	
	test	al, 1
	nop	
	jne	.label_42
	nop	
	mov	rdi, rbx
	mov	rbp, rbp
	mov	rsi, r15
	lea	rsi, [rsi]
	call	get_format_flags
	nop	
	add	r12, rax
	mov	rsp, rsp
	mov	rbx, r12
	nop	dword ptr [rax]
.label_41:
	movsx	eax, byte ptr [rbx + 1]
	nop	
	inc	rbx
	lea	ecx, [rax - 0x30]
	lea	rdi, [rdi]
	cmp	ecx, 0xa
	nop	
	jb	.label_41
	nop	
	movzx	eax, al
	cmp	eax, 0x2e
	jne	.label_43
	nop	dword ptr [rax]
.label_37:
	lea	rsi, [rsi]
	movsx	eax, byte ptr [rbx + 1]
	inc	rbx
	add	eax, -0x30
	cmp	eax, 0xa
	mov	rbp, rbp
	jb	.label_37
.label_43:
	mov	rsp, rsp
	mov	esi, dword ptr [rsp + 4]
	mov	rdi, rbx
	call	check_format_conv_type
	mov	al, 1
	mov	rsp, rsp
	jmp	.label_36
.label_46:
	test	al, 1
	mov	rsp, rsp
	je	.label_40
	mov	rbp, rbp
	mov	edi, 0
	mov	esi, 0
	lea	rsi, [rsi]
	mov	edx, 1
	xor	ecx, ecx
	lea	rdi, [rdi]
	mov	r9d, 0xffffffff
	lea	rdi, [rdi]
	xor	eax, eax
	mov	r8, r14
	mov	rsp, rsp
	call	__snprintf_chk
	lea	rsi, [rsi]
	test	eax, eax
	js	.label_38
	mov	rsp, rsp
	cdqe	
	add	rsp, 8
	pop	rbx
	pop	r12
	nop	
	pop	r14
	pop	r15
	ret	
.label_42:
	mov	rsp, rsp
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.38
.label_39:
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	lea	rsi, [rsi]
	mov	edi, 1
	nop	
	xor	esi, esi
	xor	eax, eax
	lea	rsi, [rsi]
	mov	rdx, rcx
	call	error
.label_40:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.39
	jmp	.label_39
.label_38:
	mov	rbp, rbp
	call	xalloc_die
	nop	
	.section	.text
	.align	32
	#Procedure 0x402670

	.globl set_input_file
	.type set_input_file, @function
set_input_file:
	lea	rsi, [rsi]
	push	rbp
	lea	rsi, [rsi]
	push	r14
	mov	rsp, rsp
	push	rbx
	mov	rbx, rdi
	movzx	eax, byte ptr [rbx]
	cmp	eax, 0x2d
	jne	.label_47
	cmp	byte ptr [rbx + 1], 0
	je	.label_48
.label_47:
	xor	edi, edi
	lea	rdi, [rdi]
	xor	edx, edx
	xor	ecx, ecx
	mov	rsi, rbx
	call	fd_reopen
	test	eax, eax
	lea	rsi, [rsi]
	js	.label_49
.label_48:
	nop	
	pop	rbx
	pop	r14
	mov	rsp, rsp
	pop	rbp
	nop	
	ret	
.label_49:
	mov	rbp, rbp
	call	__errno_location
	lea	rdi, [rdi]
	mov	r14d, dword ptr [rax]
	xor	edi, edi
	lea	rdi, [rdi]
	mov	esi, OFFSET FLAT:.str.45
	mov	edx, 5
	lea	rdi, [rdi]
	call	dcgettext
	lea	rdi, [rdi]
	mov	rbp, rax
	mov	edi, 4
	mov	rsi, rbx
	mov	rsp, rsp
	call	quotearg_style
	lea	rdi, [rdi]
	mov	rcx, rax
	mov	rsp, rsp
	mov	edi, 1
	lea	rsi, [rsi]
	xor	eax, eax
	nop	
	mov	esi, r14d
	lea	rdi, [rdi]
	mov	rdx, rbp
	call	error
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x402710

	.globl parse_patterns
	.type parse_patterns, @function
parse_patterns:
	lea	rdi, [rdi]
	push	rbp
	push	r15
	push	r14
	nop	
	push	r13
	lea	rsi, [rsi]
	push	r12
	push	rbx
	sub	rsp, 0x28
	mov	rsp, rsp
	mov	r12, rdx
	mov	rbp, rbp
	mov	ebp, esi
	nop	
	mov	r14d, edi
	nop	
	cmp	ebp, r14d
	mov	rsp, rsp
	jge	.label_57
	lea	r15, [rsp + 0x20]
	nop	word ptr cs:[rax + rax]
.label_52:
	lea	rdi, [rdi]
	movsxd	rbx, ebp
	mov	rax, qword ptr [r12 + rbx*8]
	movzx	eax, byte ptr [rax]
	lea	rsi, [rsi]
	cmp	eax, 0x2f
	je	.label_53
	movzx	eax, al
	mov	rsp, rsp
	cmp	eax, 0x25
	mov	rsp, rsp
	jne	.label_58
.label_53:
	mov	rsp, rsp
	mov	rdx, qword ptr [r12 + rbx*8]
	nop	
	movzx	eax, byte ptr [rdx]
	mov	rbp, rbp
	cmp	eax, 0x25
	sete	al
	movzx	esi, al
	nop	
	mov	edi, ebx
	call	extract_regexp
	mov	r13, rax
	jmp	.label_54
	nop	word ptr [rax + rax]
.label_58:
	call	new_control_record
	mov	r13, rax
	lea	rdi, [rdi]
	mov	dword ptr [r13 + 0x18], ebx
	mov	rdi, qword ptr [r12 + rbx*8]
	xor	esi, esi
	mov	rsp, rsp
	mov	edx, 0xa
	mov	r8d, OFFSET FLAT:.str
	mov	rbp, rbp
	mov	rcx, r15
	mov	rbp, rbp
	call	xstrtoumax
	lea	rsi, [rsi]
	test	eax, eax
	lea	rdi, [rdi]
	jne	.label_59
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0x20]
	mov	rbp, rbp
	test	rax, rax
	mov	rsp, rsp
	je	.label_56
	mov	rsp, rsp
	cmp	rax,  qword ptr [word ptr [rip + parse_patterns.last_val]]
	jb	.label_55
	jne	.label_50
	mov	rbp, rbp
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.49
	mov	edx, 5
	call	dcgettext
	mov	r15, rax
	mov	rdi, qword ptr [r12 + rbx*8]
	lea	rsi, [rsi]
	call	quote
	mov	rcx, rax
	xor	edi, edi
	mov	rbp, rbp
	xor	esi, esi
	xor	eax, eax
	mov	rsp, rsp
	mov	rdx, r15
	nop	
	lea	r15, [rsp + 0x20]
	call	error
.label_50:
	mov	rax, qword ptr [rsp + 0x20]
	mov	qword ptr [word ptr [rip + parse_patterns.last_val]],  rax
	mov	qword ptr [r13 + 8], rax
.label_54:
	lea	ebx, [rbp + 1]
	cmp	ebx, r14d
	jge	.label_51
	movsxd	rax, ebx
	mov	rbp, rbp
	mov	rdx, qword ptr [r12 + rax*8]
	movzx	eax, byte ptr [rdx]
	lea	rdi, [rdi]
	cmp	eax, 0x7b
	jne	.label_51
	mov	rsp, rsp
	mov	edi, ebx
	lea	rdi, [rdi]
	mov	rsi, r13
	call	parse_repeat_count
	mov	rsp, rsp
	mov	ebp, ebx
.label_51:
	mov	rbp, rbp
	inc	ebp
	nop	
	cmp	ebp, r14d
	lea	rdi, [rdi]
	jl	.label_52
.label_57:
	add	rsp, 0x28
	lea	rdi, [rdi]
	pop	rbx
	nop	
	pop	r12
	lea	rdi, [rdi]
	pop	r13
	pop	r14
	nop	
	pop	r15
	pop	rbp
	mov	rbp, rbp
	ret	
.label_59:
	lea	rdi, [rdi]
	xor	edi, edi
	lea	rsi, [rsi]
	mov	esi, OFFSET FLAT:.str.46
	mov	rbp, rbp
	mov	edx, 5
	nop	
	call	dcgettext
	mov	rbp, rax
	mov	rdi, qword ptr [r12 + rbx*8]
	nop	
	call	quote
	mov	rcx, rax
	lea	rdi, [rdi]
	mov	edi, 1
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rbp
	call	error
.label_56:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.47
	mov	edx, 5
	lea	rsi, [rsi]
	call	dcgettext
	mov	rsp, rsp
	mov	rdx, rax
	mov	rcx, qword ptr [r12 + rbx*8]
	lea	rdi, [rdi]
	mov	edi, 1
	xor	esi, esi
	lea	rdi, [rdi]
	xor	eax, eax
	call	error
.label_55:
	xor	edi, edi
	mov	rbp, rbp
	mov	esi, OFFSET FLAT:.str.48
	mov	edx, 5
	call	dcgettext
	mov	rbp, rbp
	mov	r14, rax
	lea	rdi, [rdi]
	mov	rdi, qword ptr [r12 + rbx*8]
	lea	rsi, [rsi]
	call	quote
	mov	rsp, rsp
	mov	rbx, rax
	mov	rbp, rbp
	mov	rdi,  qword ptr [word ptr [rip + parse_patterns.last_val]]
	mov	rsp, rsp
	lea	rsi, [rsp]
	call	umaxtostr
	mov	rbp, rax
	mov	edi, 1
	xor	esi, esi
	lea	rsi, [rsi]
	xor	eax, eax
	lea	rdi, [rdi]
	mov	rdx, r14
	mov	rbp, rbp
	mov	rcx, rbx
	mov	r8, rbp
	lea	rdi, [rdi]
	call	error
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4029a0

	.globl interrupt_handler
	.type interrupt_handler, @function
interrupt_handler:
	nop
	push	rbx
	mov	ebx, edi
	lea	rdi, [rdi]
	mov	edi, 1
	mov	rbp, rbp
	call	delete_all_files
	mov	rsp, rsp
	xor	esi, esi
	mov	rbp, rbp
	mov	edi, ebx
	mov	rsp, rsp
	call	signal
	mov	edi, ebx
	pop	rbx
	lea	rsi, [rsi]
	jmp	raise
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4029e0

	.globl split_file
	.type split_file, @function
split_file:
	lea	rsi, [rsi]
	push	r15
	push	r14
	lea	rdi, [rdi]
	push	r12
	mov	rsp, rsp
	push	rbx
	lea	rdi, [rdi]
	push	rax
	xor	r15d, r15d
	cmp	qword ptr [word ptr [rip + control_used]],  0
	je	.label_60
	nop	word ptr cs:[rax + rax]
.label_64:
	mov	rsp, rsp
	mov	rax,  qword ptr [word ptr [rip + controls]]
	nop	
	lea	r12, [r15 + r15*2]
	mov	rbp, rbp
	shl	r12, 5
	lea	rsi, [rsi]
	cmp	byte ptr [rax + r12 + 0x1e], 0
	mov	ebx, 0
	nop	
	mov	r14d, 0
	mov	rbp, rbp
	jne	.label_65
	jmp	.label_66
	nop	word ptr cs:[rax + rax]
.label_63:
	mov	rdi,  qword ptr [word ptr [rip + controls]]
	add	rdi, r12
	mov	rbp, rbp
	mov	rsi, rbx
	lea	rdi, [rdi]
	call	process_regexp
	lea	rdi, [rdi]
	inc	rbx
.label_65:
	mov	rax,  qword ptr [word ptr [rip + controls]]
	cmp	byte ptr [rax + r12 + 0x1c], 0
	lea	rdi, [rdi]
	jne	.label_63
	lea	rdi, [rdi]
	cmp	rbx, qword ptr [rax + r12 + 0x10]
	mov	rsp, rsp
	jbe	.label_63
	jmp	.label_62
	nop	
.label_61:
	mov	rdi,  qword ptr [word ptr [rip + controls]]
	add	rdi, r12
	nop	
	mov	rsi, r14
	lea	rdi, [rdi]
	call	process_line_count
	mov	rbp, rbp
	inc	r14
.label_66:
	mov	rax,  qword ptr [word ptr [rip + controls]]
	lea	rsi, [rsi]
	cmp	byte ptr [rax + r12 + 0x1c], 0
	lea	rsi, [rsi]
	jne	.label_61
	mov	rsp, rsp
	cmp	r14, qword ptr [rax + r12 + 0x10]
	lea	rdi, [rdi]
	jbe	.label_61
.label_62:
	inc	r15
	cmp	r15,  qword ptr [word ptr [rip + control_used]]
	lea	rsi, [rsi]
	jb	.label_64
.label_60:
	mov	rsp, rsp
	call	create_output_file
	nop	
	call	dump_rest_of_file
	add	rsp, 8
	mov	rsp, rsp
	pop	rbx
	lea	rdi, [rdi]
	pop	r12
	mov	rsp, rsp
	pop	r14
	mov	rbp, rbp
	pop	r15
	jmp	close_output_file
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402b10

	.globl emit_mandatory_arg_note
	.type emit_mandatory_arg_note, @function
emit_mandatory_arg_note:
	push	rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.65
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rbp, rbp
	mov	rdi, rax
	mov	rbp, rbp
	pop	rax
	jmp	fputs_unlocked
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402b40

	.globl emit_ancillary_info
	.type emit_ancillary_info, @function
emit_ancillary_info:
	mov	rsp, rsp
	push	r14
	push	rbx
	nop	
	push	rax
	lea	rdi, [rdi]
	mov	ebx, OFFSET FLAT:emit_ancillary_info.infomap
	mov	esi, OFFSET FLAT:.str.66
	nop	word ptr cs:[rax + rax]
.label_69:
	nop	
	mov	edi, OFFSET FLAT:.str.8
	nop	
	call	strcmp
	lea	rdi, [rdi]
	test	eax, eax
	mov	rbp, rbp
	je	.label_68
	mov	rbp, rbp
	mov	rsi, qword ptr [rbx + 0x10]
	add	rbx, 0x10
	test	rsi, rsi
	mov	rsp, rsp
	jne	.label_69
.label_68:
	mov	rbp, rbp
	mov	rax, qword ptr [rbx + 8]
	mov	rbp, rbp
	test	rax, rax
	lea	rdi, [rdi]
	mov	ebx, OFFSET FLAT:.str.8
	cmovne	rbx, rax
	nop	
	xor	edi, edi
	lea	rdi, [rdi]
	mov	esi, OFFSET FLAT:.str.74
	mov	edx, 5
	lea	rsi, [rsi]
	call	dcgettext
	lea	rdi, [rdi]
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:.str.17
	lea	rdi, [rdi]
	mov	ecx, OFFSET FLAT:.str.18_0
	xor	eax, eax
	call	__printf_chk
	lea	rsi, [rsi]
	mov	edi, 5
	nop	
	xor	esi, esi
	call	setlocale
	test	rax, rax
	lea	rsi, [rsi]
	je	.label_67
	mov	esi, OFFSET FLAT:.str.76
	lea	rdi, [rdi]
	mov	edx, 3
	mov	rsp, rsp
	mov	rdi, rax
	mov	rsp, rsp
	call	strncmp
	mov	rsp, rsp
	test	eax, eax
	lea	rdi, [rdi]
	je	.label_67
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.77
	mov	rbp, rbp
	mov	edx, 5
	mov	rsp, rsp
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	nop	
	mov	rdi, rax
	mov	rbp, rbp
	call	fputs_unlocked
.label_67:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.78
	lea	rsi, [rsi]
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	r14d, OFFSET FLAT:.str.8
	lea	rsi, [rsi]
	mov	edi, 1
	lea	rsi, [rsi]
	mov	edx, OFFSET FLAT:.str.18_0
	mov	ecx, OFFSET FLAT:.str.8
	lea	rsi, [rsi]
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	rbp, rbp
	mov	esi, OFFSET FLAT:.str.79
	lea	rsi, [rsi]
	mov	edx, 5
	mov	rsp, rsp
	call	dcgettext
	mov	rdx, rax
	mov	rbp, rbp
	cmp	rbx, r14
	mov	rbp, rbp
	mov	eax, OFFSET FLAT:.str.80
	mov	rsp, rsp
	mov	ecx, OFFSET FLAT:.str
	cmove	rcx, rax
	nop	
	mov	edi, 1
	xor	eax, eax
	mov	rsi, rdx
	mov	rdx, rbx
	lea	rsi, [rsi]
	add	rsp, 8
	nop	
	pop	rbx
	lea	rdi, [rdi]
	pop	r14
	jmp	__printf_chk
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402ce0

	.globl cleanup
	.type cleanup, @function
cleanup:
	lea	rdi, [rdi]
	push	rbx
	sub	rsp, 0x80
	mov	rbp, rbp
	call	close_output_file
	mov	rbp, rbp
	lea	rbx, [rsp]
	xor	edi, edi
	mov	rbp, rbp
	mov	esi, OFFSET FLAT:caught_signals
	lea	rsi, [rsi]
	mov	rdx, rbx
	call	sigprocmask
	mov	rsp, rsp
	xor	edi, edi
	call	delete_all_files
	mov	edi, 2
	lea	rdi, [rdi]
	xor	edx, edx
	mov	rsi, rbx
	mov	rsp, rsp
	call	sigprocmask
	add	rsp, 0x80
	pop	rbx
	mov	rsp, rsp
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402d40

	.globl close_output_file
	.type close_output_file, @function
close_output_file:
	push	rbp
	mov	rbp, rbp
	push	r15
	push	r14
	lea	rdi, [rdi]
	push	rbx
	sub	rsp, 0x88
	mov	rbp, rbp
	mov	rbx,  qword ptr [word ptr [rip + output_stream]]
	lea	rdi, [rdi]
	test	rbx, rbx
	je	.label_70
	mov	rdi, rbx
	mov	rsp, rsp
	call	ferror_unlocked
	nop	
	test	eax, eax
	jne	.label_74
	mov	rdi, rbx
	call	rpl_fclose
	test	eax, eax
	mov	rbp, rbp
	jne	.label_72
	lea	rsi, [rsi]
	cmp	qword ptr [word ptr [rip + bytes_written]],  0
	lea	rdi, [rdi]
	jne	.label_73
	nop	
	movzx	eax,  byte ptr [byte ptr [rip + elide_empty_files]]
	and	eax, 1
	cmp	eax, 1
	mov	rbp, rbp
	jne	.label_73
	lea	r15, [rsp]
	xor	edi, edi
	lea	rdi, [rdi]
	mov	esi, OFFSET FLAT:caught_signals
	mov	rdx, r15
	call	sigprocmask
	mov	rdi,  qword ptr [word ptr [rip + output_filename]]
	call	unlink
	mov	ebp, eax
	nop	
	test	ebp, ebp
	sete	bl
	mov	rbp, rbp
	call	__errno_location
	mov	rbp, rbp
	mov	r14d, dword ptr [rax]
	nop	
	movzx	eax, bl
	mov	rbp, rbp
	sub	dword ptr [dword ptr [rip + files_created]],  eax
	lea	rsi, [rsi]
	mov	edi, 2
	nop	
	xor	edx, edx
	lea	rdi, [rdi]
	mov	rsi, r15
	mov	rsp, rsp
	call	sigprocmask
	test	ebp, ebp
	je	.label_71
	mov	rbp, rbp
	mov	rdx,  qword ptr [word ptr [rip + output_filename]]
	mov	rbp, rbp
	xor	edi, edi
	nop	
	mov	esi, 3
	call	quotearg_n_style_colon
	mov	rcx, rax
	lea	rdi, [rdi]
	xor	edi, edi
	mov	edx, OFFSET FLAT:.str.2
	lea	rsi, [rsi]
	xor	eax, eax
	mov	esi, r14d
	call	error
	mov	rbp, rbp
	jmp	.label_71
.label_73:
	mov	al,  byte ptr [byte ptr [rip + suppress_count]]
	and	al, 1
	jne	.label_71
	nop	
	mov	rbx,  qword ptr [word ptr [rip + stdout]]
	nop	
	mov	rdi,  qword ptr [word ptr [rip + bytes_written]]
	lea	rsi, [rsp]
	nop	
	call	umaxtostr
	mov	rcx, rax
	mov	esi, 1
	mov	edx, OFFSET FLAT:.str.26
	xor	eax, eax
	mov	rdi, rbx
	mov	rsp, rsp
	call	__fprintf_chk
.label_71:
	mov	rsp, rsp
	mov	qword ptr [word ptr [rip + output_stream]],  0
.label_70:
	lea	rdi, [rdi]
	add	rsp, 0x88
	mov	rbp, rbp
	pop	rbx
	mov	rbp, rbp
	pop	r14
	pop	r15
	pop	rbp
	lea	rsi, [rsi]
	ret	
.label_74:
	mov	rbp, rbp
	xor	edi, edi
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.25
	mov	rbp, rbp
	mov	edx, 5
	mov	rsp, rsp
	call	dcgettext
	mov	rbx, rax
	lea	rsi, [rsi]
	mov	rsi,  qword ptr [word ptr [rip + output_filename]]
	mov	rbp, rbp
	mov	edi, 4
	mov	rbp, rbp
	call	quotearg_style
	mov	rsp, rsp
	mov	rcx, rax
	mov	rbp, rbp
	xor	edi, edi
	mov	rsp, rsp
	xor	esi, esi
	nop	
	xor	eax, eax
	mov	rsp, rsp
	mov	rdx, rbx
	nop	
	jmp	.label_75
.label_72:
	call	__errno_location
	lea	rsi, [rsi]
	mov	ebx, dword ptr [rax]
	mov	rbp, rbp
	mov	rdx,  qword ptr [word ptr [rip + output_filename]]
	nop	
	xor	edi, edi
	mov	esi, 3
	call	quotearg_n_style_colon
	mov	rcx, rax
	xor	edi, edi
	mov	edx, OFFSET FLAT:.str.2
	lea	rdi, [rdi]
	xor	eax, eax
	lea	rsi, [rsi]
	mov	esi, ebx
.label_75:
	mov	rbp, rbp
	call	error
	mov	rbp, rbp
	mov	qword ptr [word ptr [rip + output_stream]],  0
	call	cleanup_fatal
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402f70

	.globl delete_all_files
	.type delete_all_files, @function
delete_all_files:
	mov	rsp, rsp
	push	rbp
	lea	rsi, [rsi]
	push	r15
	push	r14
	push	rbx
	push	rax
	mov	r14d, edi
	mov	rsp, rsp
	cmp	byte ptr [byte ptr [rip + remove_files]],  0
	je	.label_78
	lea	rsi, [rsi]
	cmp	dword ptr [dword ptr [rip + files_created]],  0
	je	.label_76
	xor	ebp, ebp
	nop	word ptr cs:[rax + rax]
.label_79:
	mov	edi, ebp
	lea	rdi, [rdi]
	call	make_filename
	nop	
	mov	rbx, rax
	lea	rdi, [rdi]
	mov	rdi, rbx
	lea	rdi, [rdi]
	call	unlink
	lea	rdi, [rdi]
	test	eax, eax
	lea	rdi, [rdi]
	je	.label_77
	test	r14b, r14b
	jne	.label_77
	call	__errno_location
	mov	rsp, rsp
	mov	r15d, dword ptr [rax]
	xor	edi, edi
	mov	esi, 3
	mov	rdx, rbx
	call	quotearg_n_style_colon
	mov	rbp, rbp
	mov	rcx, rax
	mov	rbp, rbp
	xor	edi, edi
	lea	rsi, [rsi]
	mov	edx, OFFSET FLAT:.str.2
	xor	eax, eax
	lea	rdi, [rdi]
	mov	esi, r15d
	call	error
.label_77:
	mov	rsp, rsp
	inc	ebp
	lea	rdi, [rdi]
	cmp	ebp,  dword ptr [dword ptr [rip + files_created]]
	lea	rdi, [rdi]
	jb	.label_79
.label_76:
	mov	dword ptr [dword ptr [rip + files_created]],  0
.label_78:
	add	rsp, 8
	lea	rsi, [rsi]
	pop	rbx
	mov	rsp, rsp
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403050

	.globl make_filename
	.type make_filename, @function
make_filename:
	push	rbp
	push	r14
	lea	rsi, [rsi]
	push	rbx
	nop	
	mov	r14d, edi
	mov	rdi,  qword ptr [word ptr [rip + filename_space]]
	mov	rsi,  qword ptr [word ptr [rip + prefix]]
	call	strcpy
	mov	rbx,  qword ptr [word ptr [rip + suffix]]
	mov	rbp,  qword ptr [word ptr [rip + filename_space]]
	mov	rdi,  qword ptr [word ptr [rip + prefix]]
	call	strlen
	mov	rdi, rax
	lea	rsi, [rsi]
	add	rdi, rbp
	cmp	rbx, 0
	je	.label_81
	lea	rdi, [rdi]
	mov	rcx,  qword ptr [word ptr [rip + suffix]]
	mov	rbp, rbp
	mov	esi, 1
	mov	rdx, -1
	mov	rsp, rsp
	xor	eax, eax
	mov	r8d, r14d
	lea	rdi, [rdi]
	call	__sprintf_chk
	jmp	.label_80
.label_81:
	mov	r8d,  dword ptr [dword ptr [rip + digits]]
	mov	esi, 1
	mov	rdx, -1
	mov	ecx, OFFSET FLAT:.str.27
	mov	rsp, rsp
	xor	eax, eax
	mov	rbp, rbp
	mov	r9d, r14d
	mov	rbp, rbp
	call	__sprintf_chk
.label_80:
	mov	rax,  qword ptr [word ptr [rip + filename_space]]
	pop	rbx
	lea	rdi, [rdi]
	pop	r14
	mov	rsp, rsp
	pop	rbp
	mov	rsp, rsp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403110

	.globl get_format_flags
	.type get_format_flags, @function
get_format_flags:
	mov	rsp, rsp
	xor	ecx, ecx
	xor	eax, eax
	jmp	.label_82
	nop	dword ptr [rax]
.label_83:
	mov	rbp, rbp
	inc	rax
.label_82:
	movsx	edx, byte ptr [rdi + rax]
	nop	
	cmp	edx, 0x2c
	lea	rdi, [rdi]
	jg	.label_85
	nop	
	cmp	edx, 0x23
	mov	rsp, rsp
	je	.label_84
	cmp	edx, 0x27
	nop	
	jne	.label_86
	mov	rbp, rbp
	or	ecx, 1
	inc	rax
	lea	rsi, [rsi]
	jmp	.label_82
.label_85:
	cmp	edx, 0x2d
	je	.label_83
	cmp	edx, 0x30
	je	.label_83
	lea	rsi, [rsi]
	jmp	.label_86
	nop	
.label_84:
	or	ecx, 2
	jmp	.label_83
.label_86:
	mov	dword ptr [rsi], ecx
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403170

	.globl check_format_conv_type
	.type check_format_conv_type, @function
check_format_conv_type:
	mov	rbp, rbp
	push	rbp
	mov	rsp, rsp
	push	rbx
	push	rax
	movzx	ebx, byte ptr [rdi]
	lea	rdi, [rdi]
	lea	eax, [rbx - 0x58]
	nop	
	cmp	eax, 0x20
	ja	.label_88
	movabs	rcx, 0x100800001
	bt	rcx, rax
	mov	rsp, rsp
	jb	.label_90
	mov	ebp, 0xfffffffe
	lea	rdi, [rdi]
	mov	ecx, 0x21000
	bt	rcx, rax
	jae	.label_94
	mov	byte ptr [rdi], 0x75
	mov	rbp, rbp
	jmp	.label_92
.label_90:
	mov	ebp, 0xfffffffd
	lea	rsi, [rsi]
	jmp	.label_92
.label_94:
	cmp	rax, 0x1d
	mov	rbp, rbp
	jne	.label_88
.label_92:
	lea	rdi, [rdi]
	and	ebp, esi
	mov	rbp, rbp
	jne	.label_91
	add	rsp, 8
	lea	rsi, [rsi]
	pop	rbx
	pop	rbp
	lea	rsi, [rsi]
	ret	
.label_88:
	test	ebx, ebx
	lea	rdi, [rdi]
	jne	.label_87
	mov	rbp, rbp
	xor	edi, edi
	lea	rsi, [rsi]
	mov	esi, OFFSET FLAT:.str.40
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	lea	rdi, [rdi]
	mov	edi, 1
	xor	esi, esi
	xor	eax, eax
	nop	
	mov	rdx, rcx
	mov	rbp, rbp
	call	error
.label_91:
	lea	rdi, [rdi]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.43
	mov	edx, 5
	call	dcgettext
	nop	
	mov	rcx, rax
	add	ebp, ebp
	lea	rdi, [rdi]
	and	ebp, 4
	xor	ebp, 0x27
	mov	edi, 1
	mov	rsp, rsp
	xor	esi, esi
	mov	rbp, rbp
	xor	eax, eax
	mov	rdx, rcx
	mov	ecx, ebp
	lea	rsi, [rsi]
	mov	r8d, ebx
	lea	rdi, [rdi]
	call	error
.label_87:
	call	__ctype_b_loc
	nop	
	mov	rax, qword ptr [rax]
	mov	rsp, rsp
	test	byte ptr [rax + rbx*2 + 1], 0x40
	jne	.label_89
	xor	edi, edi
	lea	rdi, [rdi]
	mov	esi, OFFSET FLAT:.str.42
	nop	
	jmp	.label_93
.label_89:
	mov	rsp, rsp
	xor	edi, edi
	mov	rbp, rbp
	mov	esi, OFFSET FLAT:.str.41
.label_93:
	lea	rdi, [rdi]
	mov	edx, 5
	call	dcgettext
	lea	rsi, [rsi]
	mov	rcx, rax
	mov	edi, 1
	mov	rbp, rbp
	xor	esi, esi
	mov	rsp, rsp
	xor	eax, eax
	mov	rdx, rcx
	mov	ecx, ebx
	call	error
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4032c0

	.globl extract_regexp
	.type extract_regexp, @function
extract_regexp:
	mov	rsp, rsp
	push	rbp
	lea	rsi, [rsi]
	push	r15
	push	r14
	lea	rdi, [rdi]
	push	r13
	push	r12
	mov	rsp, rsp
	push	rbx
	mov	rbp, rbp
	push	rax
	mov	rbx, rdx
	mov	r13d, esi
	mov	rbp, rbp
	mov	ebp, edi
	lea	r12, [rbx + 1]
	movsx	r14d, byte ptr [rbx]
	mov	rdi, r12
	mov	esi, r14d
	call	strrchr
	lea	rsi, [rsi]
	mov	r15, rax
	test	r15, r15
	je	.label_97
	mov	rsp, rsp
	mov	r14, rbx
	mov	qword ptr [rsp], r14
	nop	
	not	r14
	add	r14, r15
	lea	rdi, [rdi]
	call	new_control_record
	mov	rsp, rsp
	mov	rbx, rax
	mov	dword ptr [rbx + 0x18], ebp
	mov	byte ptr [rbx + 0x1d], r13b
	mov	byte ptr [rbx + 0x1e], 1
	lea	rbp, [rbx + 0x20]
	xorps	xmm0, xmm0
	movups	xmmword ptr [rbx + 0x20], xmm0
	mov	edi, 0x100
	nop	
	call	xmalloc
	lea	rsi, [rsi]
	mov	qword ptr [rbx + 0x40], rax
	mov	qword ptr [rbx + 0x48], 0
	mov	qword ptr [word ptr [rip + rpl_re_syntax_options]],  0x2c6
	nop	
	mov	rdi, r12
	mov	rsi, r14
	lea	rsi, [rsi]
	mov	rdx, rbp
	mov	rbp, rbp
	call	rpl_re_compile_pattern
	mov	r12, rax
	lea	rdi, [rdi]
	test	r12, r12
	mov	rsp, rsp
	jne	.label_96
	lea	rdi, [rdi]
	cmp	byte ptr [r15 + 1], 0
	mov	rsp, rsp
	je	.label_95
	mov	rsp, rsp
	inc	r15
	mov	rdi, rbx
	mov	rsp, rsp
	mov	rsi, qword ptr [rsp]
	lea	rsi, [rsi]
	mov	rdx, r15
	call	check_for_offset
.label_95:
	mov	rbp, rbp
	mov	rax, rbx
	add	rsp, 8
	lea	rdi, [rdi]
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	lea	rsi, [rsi]
	ret	
.label_97:
	lea	rdi, [rdi]
	xor	edi, edi
	mov	rbp, rbp
	mov	esi, OFFSET FLAT:.str.50
	mov	edx, 5
	lea	rdi, [rdi]
	call	dcgettext
	mov	rsp, rsp
	mov	rcx, rax
	mov	edi, 1
	xor	esi, esi
	xor	eax, eax
	mov	rbp, rbp
	mov	rdx, rcx
	nop	
	mov	rcx, rbx
	mov	rsp, rsp
	mov	r8d, r14d
	call	error
.label_96:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.51
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	rdi, qword ptr [rsp]
	mov	rbp, rbp
	call	quote
	mov	rcx, rax
	lea	rsi, [rsi]
	xor	edi, edi
	lea	rsi, [rsi]
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rbx
	mov	rbp, rbp
	mov	r8, r12
	nop	
	call	error
	call	cleanup_fatal
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x403450

	.globl new_control_record
	.type new_control_record, @function
new_control_record:
	lea	rdi, [rdi]
	mov	rax,  qword ptr [word ptr [rip + control_used]]
	mov	rbp, rbp
	cmp	rax,  qword ptr [word ptr [rip + new_control_record.control_allocated]]
	mov	rbp, rbp
	jne	.label_98
	mov	rsp, rsp
	push	rax
	mov	rdi,  qword ptr [word ptr [rip + controls]]
	mov	esi, OFFSET FLAT:new_control_record.control_allocated
	mov	edx, 0x60
	mov	rsp, rsp
	call	x2nrealloc
	mov	qword ptr [word ptr [rip + controls]],  rax
	nop	
	add	rsp, 8
.label_98:
	lea	rsi, [rsi]
	mov	rax,  qword ptr [word ptr [rip + control_used]]
	lea	rdi, [rdi]
	lea	rcx, [rax + 1]
	lea	rsi, [rsi]
	mov	qword ptr [word ptr [rip + control_used]],  rcx
	nop	
	mov	rcx,  qword ptr [word ptr [rip + controls]]
	lea	rdx, [rax + rax*2]
	shl	rdx, 5
	nop	
	lea	rax, [rcx + rdx]
	mov	byte ptr [rcx + rdx + 0x1e], 0
	nop	
	mov	byte ptr [rcx + rdx + 0x1c], 0
	nop	
	xorps	xmm0, xmm0
	mov	rbp, rbp
	movups	xmmword ptr [rcx + rdx], xmm0
	mov	rbp, rbp
	mov	qword ptr [rcx + rdx + 0x10], 0
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4034f0

	.globl parse_repeat_count
	.type parse_repeat_count, @function
parse_repeat_count:
	nop	
	push	rbp
	lea	rdi, [rdi]
	push	r15
	push	r14
	mov	rsp, rsp
	push	rbx
	mov	rsp, rsp
	push	rax
	mov	rbx, rdx
	mov	r15, rsi
	mov	r14d, edi
	mov	rdi, rbx
	call	strlen
	movzx	ecx, byte ptr [rbx + rax - 1]
	lea	rsi, [rsi]
	cmp	ecx, 0x7d
	jne	.label_100
	nop	
	lea	rbp, [rbx + rax - 1]
	mov	rbp, rbp
	mov	byte ptr [rbp], 0
	mov	rbp, rbp
	inc	rbx
	lea	rax, [rbp - 1]
	nop	
	cmp	rbx, rax
	jne	.label_102
	lea	rsi, [rsi]
	movzx	eax, byte ptr [rbx]
	mov	rsp, rsp
	cmp	eax, 0x2a
	jne	.label_102
	mov	rbp, rbp
	mov	byte ptr [r15 + 0x1c], 1
	lea	rsi, [rsi]
	jmp	.label_99
.label_102:
	lea	rcx, [rsp]
	mov	rsp, rsp
	xor	esi, esi
	mov	edx, 0xa
	mov	r8d, OFFSET FLAT:.str
	mov	rsp, rsp
	mov	rdi, rbx
	call	xstrtoumax
	nop	
	test	eax, eax
	jne	.label_101
	mov	rax, qword ptr [rsp]
	mov	rsp, rsp
	mov	qword ptr [r15 + 0x10], rax
.label_99:
	nop	
	mov	byte ptr [rbp], 0x7d
	add	rsp, 8
	mov	rsp, rsp
	pop	rbx
	mov	rsp, rsp
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_100:
	lea	rdi, [rdi]
	xor	edi, edi
	lea	rsi, [rsi]
	mov	esi, OFFSET FLAT:.str.53
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	mov	rdi, rbx
	call	quote
	lea	rsi, [rsi]
	mov	rcx, rax
	mov	edi, 1
	xor	esi, esi
	lea	rdi, [rdi]
	xor	eax, eax
	mov	rdx, rbp
	call	error
.label_101:
	xor	edi, edi
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.54
	nop	
	mov	edx, 5
	nop	
	call	dcgettext
	mov	rbx, rax
	movsxd	rax, r14d
	mov	rcx,  qword ptr [word ptr [rip + global_argv]]
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rcx + rax*8]
	lea	rdi, [rdi]
	call	quote
	mov	rcx, rax
	mov	edi, 1
	xor	esi, esi
	nop	
	xor	eax, eax
	mov	rsp, rsp
	mov	rdx, rbx
	call	error
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403630

	.globl check_for_offset
	.type check_for_offset, @function
check_for_offset:
	push	r14
	push	rbx
	lea	rsi, [rsi]
	push	rax
	mov	rax, rdx
	mov	rbx, rsi
	mov	rsp, rsp
	mov	rcx, rdi
	xor	esi, esi
	mov	rsp, rsp
	mov	edx, 0xa
	mov	r8d, OFFSET FLAT:.str
	nop	
	mov	rdi, rax
	nop	
	call	xstrtoimax
	test	eax, eax
	jne	.label_103
	nop	
	add	rsp, 8
	mov	rbp, rbp
	pop	rbx
	lea	rsi, [rsi]
	pop	r14
	ret	
.label_103:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.52
	lea	rsi, [rsi]
	mov	edx, 5
	mov	rbp, rbp
	call	dcgettext
	mov	rsp, rsp
	mov	r14, rax
	mov	rsp, rsp
	mov	rdi, rbx
	call	quote
	mov	rbp, rbp
	mov	rcx, rax
	mov	edi, 1
	mov	rbp, rbp
	xor	esi, esi
	xor	eax, eax
	nop	
	mov	rdx, r14
	nop	
	call	error
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4036c0

	.globl process_regexp
	.type process_regexp, @function
process_regexp:
	push	rbp
	nop	
	push	r15
	push	r14
	push	r12
	push	rbx
	mov	r14, rsi
	mov	r12, rdi
	mov	bpl, byte ptr [r12 + 0x1d]
	test	bpl, bpl
	mov	rsp, rsp
	jne	.label_114
	call	create_output_file
.label_114:
	nop	
	movzx	eax,  byte ptr [byte ptr [rip + suppress_matched]]
	and	eax, 1
	mov	rsp, rsp
	cmp	eax, 1
	nop	
	jne	.label_119
	mov	rax,  qword ptr [word ptr [rip + current_line]]
	test	rax, rax
	mov	rsp, rsp
	je	.label_119
	nop	
	call	remove_line
.label_119:
	mov	rsp, rsp
	cmp	qword ptr [r12], 0
	mov	rsp, rsp
	js	.label_105
	mov	rbp, rbp
	mov	rdi,  qword ptr [word ptr [rip + current_line]]
	inc	rdi
	mov	qword ptr [word ptr [rip + current_line]],  rdi
	call	find_line
	lea	rdi, [rdi]
	test	rax, rax
	lea	rdi, [rdi]
	je	.label_113
	mov	rbp, rbp
	lea	r15, [r12 + 0x20]
.label_115:
	mov	rdx, qword ptr [rax]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rax + 8]
	mov	rbp, rbp
	movzx	eax, byte ptr [rsi + rdx - 1]
	lea	rdi, [rdi]
	cmp	eax, 0xa
	jne	.label_116
	nop	
	dec	rdx
.label_116:
	mov	rbp, rbp
	xor	ecx, ecx
	lea	rsi, [rsi]
	xor	r9d, r9d
	lea	rsi, [rsi]
	mov	rdi, r15
	mov	r8, rdx
	call	rpl_re_search
	mov	rbp, rbp
	cmp	rax, -1
	mov	rbp, rbp
	jne	.label_104
	lea	rsi, [rsi]
	call	remove_line
	test	bpl, bpl
	jne	.label_108
	lea	rsi, [rsi]
	mov	rdi, rax
	call	save_line_to_file
.label_108:
	nop	
	mov	rdi,  qword ptr [word ptr [rip + current_line]]
	inc	rdi
	lea	rdi, [rdi]
	mov	qword ptr [word ptr [rip + current_line]],  rdi
	call	find_line
	lea	rdi, [rdi]
	test	rax, rax
	mov	rbp, rbp
	jne	.label_115
.label_113:
	cmp	byte ptr [r12 + 0x1c], 0
	je	.label_117
	mov	rsp, rsp
	test	bpl, bpl
	lea	rdi, [rdi]
	jne	.label_118
	call	dump_rest_of_file
	mov	rbp, rbp
	call	close_output_file
.label_118:
	mov	rsp, rsp
	xor	edi, edi
	call	exit
.label_105:
	mov	rbp, rbp
	lea	r15, [r12 + 0x20]
.label_106:
	mov	rdi,  qword ptr [word ptr [rip + current_line]]
	inc	rdi
	mov	qword ptr [word ptr [rip + current_line]],  rdi
	mov	rbp, rbp
	call	find_line
	test	rax, rax
	mov	rbp, rbp
	je	.label_110
	mov	rbp, rbp
	mov	rdx, qword ptr [rax]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rax + 8]
	lea	rsi, [rsi]
	movzx	eax, byte ptr [rsi + rdx - 1]
	lea	rdi, [rdi]
	cmp	eax, 0xa
	jne	.label_112
	lea	rdi, [rdi]
	dec	rdx
.label_112:
	xor	ecx, ecx
	lea	rdi, [rdi]
	xor	r9d, r9d
	lea	rdi, [rdi]
	mov	rdi, r15
	mov	rsp, rsp
	mov	r8, rdx
	lea	rsi, [rsi]
	call	rpl_re_search
	cmp	rax, -1
	mov	rsp, rsp
	je	.label_106
.label_104:
	cmp	rax, -2
	je	.label_120
	mov	rbx, qword ptr [r12]
	add	rbx,  qword ptr [word ptr [rip + current_line]]
	lea	rdi, [rdi]
	mov	edx, dword ptr [r12 + 0x18]
	lea	rdi, [rdi]
	movzx	esi, bpl
	mov	rdi, rbx
	lea	rsi, [rsi]
	call	write_to_file
	test	bpl, bpl
	nop	
	jne	.label_109
	nop	
	call	close_output_file
.label_109:
	cmp	qword ptr [r12], 0
	jle	.label_111
	nop	
	mov	qword ptr [word ptr [rip + current_line]],  rbx
.label_111:
	pop	rbx
	pop	r12
	pop	r14
	mov	rbp, rbp
	pop	r15
	pop	rbp
	ret	
.label_120:
	lea	rdi, [rdi]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.55
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	mov	rbp, rbp
	xor	esi, esi
	mov	rsp, rsp
	xor	eax, eax
	mov	rdx, rcx
	call	error
	mov	rbp, rbp
	call	cleanup_fatal
.label_110:
	cmp	byte ptr [r12 + 0x1c], 0
	jne	.label_121
.label_117:
	movzx	edx, bpl
	mov	rdi, r12
	mov	rsi, r14
	mov	rsp, rsp
	call	regexp_error
.label_121:
	test	bpl, bpl
	jne	.label_107
	call	dump_rest_of_file
	call	close_output_file
.label_107:
	nop	
	xor	edi, edi
	call	exit
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x403930

	.globl process_line_count
	.type process_line_count, @function
process_line_count:
	push	r15
	lea	rsi, [rsi]
	push	r14
	mov	rbp, rbp
	push	r12
	push	rbx
	nop	
	push	rax
	mov	r14, rsi
	mov	r15, rdi
	mov	r12, qword ptr [r15 + 8]
	nop	
	call	create_output_file
	call	no_more_lines
	test	al, al
	mov	rbp, rbp
	je	.label_127
	movzx	eax,  byte ptr [byte ptr [rip + suppress_matched]]
	lea	rdi, [rdi]
	and	eax, 1
	mov	rsp, rsp
	cmp	eax, 1
	je	.label_126
.label_127:
	lea	rsi, [rsi]
	lea	rax, [r14 + 1]
	lea	rdi, [rdi]
	imul	r12, rax
	call	get_first_line_in_buffer
	mov	rbp, rbp
	mov	rbx, rax
	jmp	.label_122
	nop	dword ptr [rax + rax]
.label_125:
	inc	rbx
	mov	rbp, rbp
	mov	rdi, rax
	call	save_line_to_file
.label_122:
	nop	
	cmp	rbx, r12
	mov	rsp, rsp
	jae	.label_128
	call	remove_line
	test	rax, rax
	lea	rdi, [rdi]
	jne	.label_125
.label_126:
	nop	
	mov	rdi, r15
	mov	rsi, r14
	call	handle_line_error
.label_128:
	nop	
	call	close_output_file
	lea	rdi, [rdi]
	movzx	eax,  byte ptr [byte ptr [rip + suppress_matched]]
	nop	
	and	eax, 1
	lea	rsi, [rsi]
	cmp	eax, 1
	jne	.label_123
	mov	rbp, rbp
	call	remove_line
.label_123:
	lea	rsi, [rsi]
	call	no_more_lines
	lea	rdi, [rdi]
	test	al, al
	je	.label_124
	lea	rsi, [rsi]
	mov	al,  byte ptr [byte ptr [rip + suppress_matched]]
	and	al, 1
	je	.label_126
.label_124:
	lea	rsi, [rsi]
	add	rsp, 8
	pop	rbx
	mov	rsp, rsp
	pop	r12
	pop	r14
	nop	
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403a20

	.globl create_output_file
	.type create_output_file, @function
create_output_file:
	mov	rsp, rsp
	push	rbp
	push	r15
	push	r14
	push	rbx
	lea	rdi, [rdi]
	sub	rsp, 0x88
	nop	
	mov	edi,  dword ptr [dword ptr [rip + files_created]]
	call	make_filename
	lea	rdi, [rdi]
	mov	qword ptr [word ptr [rip + output_filename]],  rax
	mov	rbp, rbp
	mov	eax,  dword ptr [dword ptr [rip + files_created]]
	mov	ebp, 0x4b
	mov	rbp, rbp
	cmp	eax, -1
	nop	
	je	.label_129
	lea	rsi, [rsi]
	lea	r14, [rsp + 8]
	mov	rsp, rsp
	xor	edi, edi
	mov	rbp, rbp
	mov	esi, OFFSET FLAT:caught_signals
	mov	rdx, r14
	call	sigprocmask
	mov	rbp, rbp
	mov	rdi,  qword ptr [word ptr [rip + output_filename]]
	mov	esi, OFFSET FLAT:.str.64
	call	fopen_safer
	mov	rbx, rax
	lea	rdi, [rdi]
	mov	qword ptr [word ptr [rip + output_stream]],  rbx
	test	rbx, rbx
	setne	r15b
	call	__errno_location
	lea	rdi, [rdi]
	mov	ebp, dword ptr [rax]
	movzx	eax, r15b
	lea	rdi, [rdi]
	add	dword ptr [dword ptr [rip + files_created]],  eax
	mov	edi, 2
	xor	edx, edx
	mov	rsi, r14
	call	sigprocmask
	test	rbx, rbx
	nop	
	je	.label_129
	mov	rsp, rsp
	mov	qword ptr [word ptr [rip + bytes_written]],  0
	mov	rsp, rsp
	add	rsp, 0x88
	pop	rbx
	pop	r14
	nop	
	pop	r15
	lea	rdi, [rdi]
	pop	rbp
	ret	
.label_129:
	lea	rdi, [rdi]
	mov	rdx,  qword ptr [word ptr [rip + output_filename]]
	xor	edi, edi
	lea	rdi, [rdi]
	mov	esi, 3
	call	quotearg_n_style_colon
	lea	rdi, [rdi]
	mov	rcx, rax
	nop	
	xor	edi, edi
	mov	rsp, rsp
	mov	edx, OFFSET FLAT:.str.2
	lea	rdi, [rdi]
	xor	eax, eax
	mov	rsp, rsp
	mov	esi, ebp
	call	error
	mov	rbp, rbp
	call	cleanup_fatal
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x403b40

	.globl dump_rest_of_file
	.type dump_rest_of_file, @function
dump_rest_of_file:
	mov	rsp, rsp
	push	rax
	jmp	.label_130
	nop	word ptr cs:[rax + rax]
.label_131:
	mov	rsp, rsp
	mov	rdi, rax
	nop	
	call	save_line_to_file
.label_130:
	call	remove_line
	lea	rdi, [rdi]
	test	rax, rax
	lea	rsi, [rsi]
	jne	.label_131
	mov	rsp, rsp
	pop	rax
	mov	rsp, rsp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403b80

	.globl remove_line
	.type remove_line, @function
remove_line:
	push	rbx
	mov	rdi,  qword ptr [word ptr [rip + remove_line.prev_buf]]
	test	rdi, rdi
	mov	rsp, rsp
	je	.label_132
	call	free_buffer
	mov	rbp, rbp
	mov	rdi,  qword ptr [word ptr [rip + remove_line.prev_buf]]
	nop	
	call	free
	nop	
	mov	qword ptr [word ptr [rip + remove_line.prev_buf]],  0
.label_132:
	cmp	qword ptr [word ptr [rip + head]],  0
	mov	rsp, rsp
	jne	.label_135
	nop	
	xor	ebx, ebx
	lea	rdi, [rdi]
	call	load_buffer
	mov	rbp, rbp
	test	al, al
	je	.label_133
.label_135:
	mov	rax,  qword ptr [word ptr [rip + head]]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax + 0x18]
	cmp	qword ptr [word ptr [rip + current_line]],  rax
	nop	
	jae	.label_136
	mov	qword ptr [word ptr [rip + current_line]],  rax
.label_136:
	mov	rax,  qword ptr [word ptr [rip + head]]
	lea	rsi, [rsi]
	inc	qword ptr [rax + 0x18]
	mov	rax, qword ptr [rax + 0x38]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rax + 0x10]
	lea	rdi, [rdi]
	mov	rdx, rcx
	nop	
	shl	rdx, 4
	lea	rbx, [rax + rdx + 0x18]
	mov	rbp, rbp
	inc	rcx
	mov	qword ptr [rax + 0x10], rcx
	cmp	rcx, qword ptr [rax]
	jne	.label_133
	mov	rax, qword ptr [rax + 0x518]
	nop	
	mov	rcx,  qword ptr [word ptr [rip + head]]
	mov	rbp, rbp
	mov	qword ptr [rcx + 0x38], rax
	lea	rsi, [rsi]
	test	rax, rax
	je	.label_134
	cmp	qword ptr [rax], 0
	jne	.label_133
.label_134:
	mov	rax,  qword ptr [word ptr [rip + head]]
	nop	
	mov	qword ptr [word ptr [rip + remove_line.prev_buf]],  rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax + 0x40]
	mov	qword ptr [word ptr [rip + head]],  rax
.label_133:
	mov	rax, rbx
	pop	rbx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403c80

	.globl find_line
	.type find_line, @function
find_line:
	push	r15
	push	r14
	push	rbx
	mov	rbx, rdi
	mov	r15,  qword ptr [word ptr [rip + head]]
	mov	rbp, rbp
	test	r15, r15
	nop	
	jne	.label_137
	mov	rsp, rsp
	xor	r14d, r14d
	call	load_buffer
	lea	rsi, [rsi]
	test	al, al
	je	.label_139
	mov	r15,  qword ptr [word ptr [rip + head]]
.label_137:
	mov	rbp, rbp
	xor	r14d, r14d
	lea	rsi, [rsi]
	cmp	qword ptr [r15 + 0x10], rbx
	ja	.label_139
	lea	rdi, [rdi]
	test	r15, r15
	mov	rsp, rsp
	je	.label_140
	lea	rsi, [rsi]
	mov	rcx, qword ptr [r15 + 0x10]
	nop	
	mov	rax, qword ptr [r15 + 0x20]
	add	rax, rcx
	cmp	rax, rbx
	mov	rsp, rsp
	jbe	.label_145
	mov	rax, r15
	jmp	.label_142
.label_145:
	lea	rsi, [rsi]
	xor	r14d, r14d
	nop	dword ptr [rax]
.label_141:
	lea	rdi, [rdi]
	mov	rax, qword ptr [r15 + 0x40]
	test	rax, rax
	jne	.label_144
	call	load_buffer
	nop	
	test	al, al
	je	.label_139
	mov	rax, qword ptr [r15 + 0x40]
	lea	rdi, [rdi]
	test	rax, rax
	nop	
	je	.label_140
.label_144:
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rax + 0x10]
	mov	rdx, qword ptr [rax + 0x20]
	lea	rsi, [rsi]
	add	rdx, rcx
	lea	rsi, [rsi]
	cmp	rdx, rbx
	nop	
	mov	r15, rax
	jbe	.label_141
.label_142:
	sub	rbx, rcx
	mov	rax, qword ptr [rax + 0x30]
	cmp	rbx, 0x50
	nop	
	jb	.label_138
	nop	
.label_143:
	lea	rsi, [rsi]
	add	rbx, -0x50
	mov	rax, qword ptr [rax + 0x518]
	cmp	rbx, 0x4f
	ja	.label_143
.label_138:
	lea	rdi, [rdi]
	shl	rbx, 4
	mov	rbp, rbp
	lea	r14, [rax + rbx + 0x18]
.label_139:
	mov	rax, r14
	pop	rbx
	lea	rdi, [rdi]
	pop	r14
	pop	r15
	mov	rbp, rbp
	ret	
.label_140:
	lea	rsi, [rsi]
	mov	edi, OFFSET FLAT:.str.56
	mov	esi, OFFSET FLAT:.str.57
	mov	edx, 0x26a
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.find_line
	lea	rsi, [rsi]
	call	__assert_fail
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403db0

	.globl regexp_error
	.type regexp_error, @function
regexp_error:
	push	rbp
	push	r15
	push	r14
	mov	rbp, rbp
	push	r13
	push	r12
	nop	
	push	rbx
	lea	rdi, [rdi]
	sub	rsp, 0x18
	mov	r14d, edx
	mov	r15, rsi
	mov	rbp, rdi
	mov	rsp, rsp
	mov	r12,  qword ptr [word ptr [rip + stderr]]
	mov	rbp, rbp
	xor	edi, edi
	lea	rdi, [rdi]
	mov	esi, OFFSET FLAT:.str.58
	mov	edx, 5
	lea	rsi, [rsi]
	call	dcgettext
	mov	r13, rax
	mov	rbx,  qword ptr [word ptr [rip + program_name]]
	movsxd	rax, dword ptr [rbp + 0x18]
	mov	rcx,  qword ptr [word ptr [rip + global_argv]]
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rcx + rax*8]
	nop	
	call	quote
	mov	rbp, rax
	mov	rsp, rsp
	mov	esi, 1
	mov	rsp, rsp
	xor	eax, eax
	mov	rbp, rbp
	mov	rdi, r12
	mov	rdx, r13
	lea	rsi, [rsi]
	mov	rcx, rbx
	mov	r8, rbp
	call	__fprintf_chk
	mov	rbp, rbp
	test	r15, r15
	nop	
	jne	.label_147
	lea	rdi, [rdi]
	mov	rdi,  qword ptr [word ptr [rip + stderr]]
	lea	rdi, [rdi]
	mov	esi, 1
	mov	edx, OFFSET FLAT:.str.60
	mov	rbp, rbp
	xor	eax, eax
	call	__fprintf_chk
	lea	rsi, [rsi]
	jmp	.label_146
.label_147:
	lea	rdi, [rdi]
	mov	rbx,  qword ptr [word ptr [rip + stderr]]
	xor	edi, edi
	lea	rsi, [rsi]
	mov	esi, OFFSET FLAT:.str.59
	mov	edx, 5
	call	dcgettext
	mov	rbp, rbp
	mov	rbp, rax
	lea	rdi, [rdi]
	lea	rsi, [rsp]
	lea	rsi, [rsi]
	mov	rdi, r15
	call	umaxtostr
	lea	rsi, [rsi]
	mov	rcx, rax
	lea	rsi, [rsi]
	mov	esi, 1
	xor	eax, eax
	nop	
	mov	rdi, rbx
	mov	rbp, rbp
	mov	rdx, rbp
	call	__fprintf_chk
.label_146:
	lea	rdi, [rdi]
	test	r14b, r14b
	jne	.label_148
	call	dump_rest_of_file
	call	close_output_file
.label_148:
	mov	rsp, rsp
	call	cleanup_fatal
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x403ee0

	.globl save_line_to_file
	.type save_line_to_file, @function
save_line_to_file:
	lea	rsi, [rsi]
	push	rbp
	lea	rdi, [rdi]
	push	rbx
	push	rax
	lea	rdi, [rdi]
	mov	rbx, rdi
	mov	rdx, qword ptr [rbx]
	nop	
	mov	rdi, qword ptr [rbx + 8]
	mov	rcx,  qword ptr [word ptr [rip + output_stream]]
	mov	esi, 1
	call	fwrite_unlocked
	mov	rcx, qword ptr [rbx]
	cmp	rax, rcx
	jne	.label_149
	add	qword ptr [word ptr [rip + bytes_written]],  rcx
	add	rsp, 8
	mov	rbp, rbp
	pop	rbx
	pop	rbp
	mov	rsp, rsp
	ret	
.label_149:
	call	__errno_location
	mov	rbp, rbp
	mov	ebp, dword ptr [rax]
	mov	rsp, rsp
	xor	edi, edi
	lea	rdi, [rdi]
	mov	esi, OFFSET FLAT:.str.25
	mov	edx, 5
	lea	rsi, [rsi]
	call	dcgettext
	mov	rbp, rbp
	mov	rbx, rax
	mov	rsi,  qword ptr [word ptr [rip + output_filename]]
	mov	edi, 4
	call	quotearg_style
	mov	rcx, rax
	lea	rdi, [rdi]
	xor	edi, edi
	xor	eax, eax
	lea	rdi, [rdi]
	mov	esi, ebp
	lea	rsi, [rsi]
	mov	rdx, rbx
	lea	rsi, [rsi]
	call	error
	mov	qword ptr [word ptr [rip + output_stream]],  0
	mov	rbp, rbp
	call	cleanup_fatal
	nop	
	.section	.text
	.align	32
	#Procedure 0x403f90

	.globl write_to_file
	.type write_to_file, @function
write_to_file:
	push	rbp
	nop	
	push	r15
	push	r14
	push	rbx
	push	rax
	mov	r14d, edx
	mov	r15d, esi
	mov	rbx, rdi
	call	get_first_line_in_buffer
	nop	
	cmp	rax, rbx
	nop	
	ja	.label_150
	mov	rbp, rbp
	xor	ebp, ebp
	nop	
	cmp	rax, rbx
	je	.label_152
	sub	rbx, rax
	nop	dword ptr [rax + rax]
.label_153:
	call	remove_line
	nop	
	test	rax, rax
	je	.label_150
	test	r15b, r15b
	jne	.label_151
	mov	rdi, rax
	call	save_line_to_file
.label_151:
	lea	rsi, [rsi]
	inc	rbp
	mov	rsp, rsp
	cmp	rbp, rbx
	jb	.label_153
.label_152:
	lea	rdi, [rdi]
	add	rsp, 8
	mov	rsp, rsp
	pop	rbx
	pop	r14
	lea	rsi, [rsi]
	pop	r15
	lea	rsi, [rsi]
	pop	rbp
	lea	rdi, [rdi]
	ret	
.label_150:
	mov	rsp, rsp
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.61
	mov	rsp, rsp
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	rbp, rbp
	movsxd	rax, r14d
	mov	rcx,  qword ptr [word ptr [rip + global_argv]]
	mov	rdi, qword ptr [rcx + rax*8]
	call	quote
	nop	
	mov	rcx, rax
	lea	rsi, [rsi]
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rbx
	call	error
	lea	rsi, [rsi]
	call	cleanup_fatal
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x404050

	.globl free_buffer
	.type free_buffer, @function
free_buffer:
	push	r14
	push	rbx
	push	rax
	mov	r14, rdi
	nop	
	mov	rdi, qword ptr [r14 + 0x30]
	test	rdi, rdi
	mov	rsp, rsp
	je	.label_154
	nop	word ptr cs:[rax + rax]
.label_155:
	mov	rbx, qword ptr [rdi + 0x518]
	mov	rsp, rsp
	call	free
	mov	rsp, rsp
	test	rbx, rbx
	mov	rdi, rbx
	jne	.label_155
.label_154:
	mov	qword ptr [r14 + 0x30], 0
	mov	rdi, qword ptr [r14 + 0x28]
	lea	rsi, [rsi]
	call	free
	mov	rbp, rbp
	mov	qword ptr [r14 + 0x28], 0
	add	rsp, 8
	pop	rbx
	lea	rsi, [rsi]
	pop	r14
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4040c0

	.globl load_buffer
	.type load_buffer, @function
load_buffer:
	mov	rsp, rsp
	push	r15
	push	r14
	push	r12
	push	rbx
	push	rax
	mov	al,  byte ptr [byte ptr [rip + have_read_eof]]
	lea	rdi, [rdi]
	and	al, 1
	jne	.label_156
	nop	
	mov	rax,  qword ptr [word ptr [rip + hold_count]]
	mov	rsp, rsp
	cmp	rax, 0x1fff
	mov	ebx, 0x1fff
	cmova	rbx, rax
	movabs	r14, 0x7fffffffffffffff
	jmp	.label_161
	nop	word ptr cs:[rax + rax]
.label_157:
	mov	rsp, rsp
	add	rbx, rbx
	mov	rsp, rsp
	mov	rdi, r15
	mov	rbp, rbp
	call	free_buffer
	mov	rbp, rbp
	mov	rdi, r15
	call	free
.label_161:
	mov	rsp, rsp
	mov	rdi, rbx
	mov	rsp, rsp
	call	get_new_buffer
	mov	rbp, rbp
	mov	r15, rax
	mov	r12, qword ptr [r15]
	mov	rbx, qword ptr [r15 + 0x28]
	mov	rdx,  qword ptr [word ptr [rip + hold_count]]
	test	rdx, rdx
	je	.label_162
	mov	rsi,  qword ptr [word ptr [rip + hold_area]]
	lea	rsi, [rsi]
	mov	rdi, rbx
	mov	rbp, rbp
	call	memcpy
	mov	rax,  qword ptr [word ptr [rip + hold_count]]
	add	rbx, rax
	mov	rbp, rbp
	add	qword ptr [r15 + 8], rax
	lea	rsi, [rsi]
	sub	r12, rax
	mov	qword ptr [word ptr [rip + hold_count]],  0
.label_162:
	mov	rsp, rsp
	mov	rdi, rbx
	nop	
	mov	rsi, r12
	call	read_input
	mov	rbp, rbp
	add	qword ptr [r15 + 8], rax
	mov	rbp, rbp
	mov	rdi, r15
	lea	rsi, [rsi]
	call	record_line_starts
	nop	
	test	rax, rax
	lea	rdi, [rdi]
	jne	.label_158
	mov	rsp, rsp
	mov	al,  byte ptr [byte ptr [rip + have_read_eof]]
	lea	rdi, [rdi]
	and	al, 1
	jne	.label_160
	mov	rbx, qword ptr [r15]
	xor	edx, edx
	mov	rax, r14
	div	rbx
	mov	rsp, rsp
	cmp	rax, 1
	nop	
	ja	.label_157
	lea	rdi, [rdi]
	call	xalloc_die
.label_158:
	mov	rdi, r15
	call	save_buffer
	mov	al, 1
	jmp	.label_159
.label_160:
	mov	rdi, r15
	call	free_buffer
	mov	rdi, r15
	call	free
.label_156:
	lea	rsi, [rsi]
	xor	eax, eax
.label_159:
	mov	rsp, rsp
	add	rsp, 8
	mov	rsp, rsp
	pop	rbx
	mov	rbp, rbp
	pop	r12
	mov	rbp, rbp
	pop	r14
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404230

	.globl get_new_buffer
	.type get_new_buffer, @function
get_new_buffer:
	mov	rsp, rsp
	mov	eax, 0x1fff
	lea	rdi, [rdi]
	cmp	rdi, 0x2000
	jb	.label_163
	nop	
	add	rdi, -0x1800
	nop	
	and	rdi, 0xfffffffffffff800
	add	rdi, 0x1fff
	mov	rax, rdi
.label_163:
	mov	rsp, rsp
	push	rax
	mov	rdi, rax
	call	create_new_buffer
	mov	qword ptr [rax + 0x20], 0
	mov	qword ptr [rax + 8], 0
	lea	rdi, [rdi]
	mov	rcx,  qword ptr [word ptr [rip + last_line_number]]
	inc	rcx
	lea	rdi, [rdi]
	mov	qword ptr [rax + 0x18], rcx
	mov	rbp, rbp
	mov	qword ptr [rax + 0x10], rcx
	nop	
	mov	qword ptr [rax + 0x40], 0
	mov	rsp, rsp
	pop	rcx
	mov	rbp, rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4042b0

	.globl read_input
	.type read_input, @function
read_input:
	push	rbx
	mov	rbp, rbp
	mov	rcx, rsi
	lea	rsi, [rsi]
	mov	rdx, rdi
	mov	rbp, rbp
	xor	eax, eax
	test	rcx, rcx
	je	.label_164
	xor	edi, edi
	lea	rsi, [rsi]
	mov	rsi, rdx
	mov	rdx, rcx
	lea	rdi, [rdi]
	call	safe_read
	mov	rsp, rsp
	test	rax, rax
	je	.label_165
	nop	
	cmp	rax, -1
	jne	.label_164
	call	__errno_location
	mov	ebx, dword ptr [rax]
	mov	rbp, rbp
	xor	edi, edi
	lea	rdi, [rdi]
	mov	esi, OFFSET FLAT:.str.14
	mov	rsp, rsp
	mov	edx, 5
	call	dcgettext
	nop	
	mov	rcx, rax
	xor	edi, edi
	mov	rsp, rsp
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, rcx
	mov	rsp, rsp
	call	error
	mov	rsp, rsp
	call	cleanup_fatal
.label_165:
	nop	
	mov	byte ptr [byte ptr [rip + have_read_eof]],  1
	lea	rdi, [rdi]
	xor	eax, eax
.label_164:
	lea	rsi, [rsi]
	pop	rbx
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x404340

	.globl record_line_starts
	.type record_line_starts, @function
record_line_starts:
	nop	
	push	rbp
	push	r15
	nop	
	push	r14
	mov	rsp, rsp
	push	r13
	mov	rbp, rbp
	push	r12
	mov	rsp, rsp
	push	rbx
	push	rax
	nop	
	mov	rbp, rdi
	mov	r12, qword ptr [rbp + 8]
	mov	rsp, rsp
	xor	r15d, r15d
	test	r12, r12
	lea	rsi, [rsi]
	je	.label_166
	mov	rbp, rbp
	mov	rbx, qword ptr [rbp + 0x28]
	mov	rbp, rbp
	mov	esi, 0xa
	nop	
	mov	rdi, rbx
	mov	rdx, r12
	call	memchr
	mov	r13, rax
	xor	r15d, r15d
	nop	
	test	r13, r13
	lea	rsi, [rsi]
	je	.label_168
	mov	qword ptr [rsp], rbp
	nop	
.label_167:
	mov	r14, r12
	mov	rbp, r13
	lea	rdi, [rdi]
	sub	rbp, rbx
	mov	rsp, rsp
	inc	rbp
	mov	rdi, qword ptr [rsp]
	mov	rsi, rbx
	mov	rdx, rbp
	lea	rsi, [rsi]
	call	keep_new_line
	lea	rsi, [rsi]
	sub	r12, rbp
	lea	rsi, [rsi]
	mov	rbx, r13
	nop	
	inc	rbx
	lea	rdi, [rdi]
	inc	r15
	mov	rsp, rsp
	mov	esi, 0xa
	lea	rsi, [rsi]
	mov	rdi, rbx
	mov	rdx, r12
	call	memchr
	mov	r13, rax
	mov	rsp, rsp
	test	r13, r13
	lea	rdi, [rdi]
	jne	.label_167
	cmp	r14, rbp
	lea	rsi, [rsi]
	mov	rbp, qword ptr [rsp]
	lea	rdi, [rdi]
	je	.label_170
.label_168:
	movzx	eax,  byte ptr [byte ptr [rip + have_read_eof]]
	lea	rdi, [rdi]
	and	eax, 1
	cmp	eax, 1
	lea	rdi, [rdi]
	jne	.label_169
	mov	rdi, rbp
	lea	rsi, [rsi]
	mov	rsi, rbx
	mov	rdx, r12
	call	keep_new_line
	inc	r15
	lea	rdi, [rdi]
	jmp	.label_170
.label_169:
	mov	rdi, rbx
	mov	rbp, rbp
	mov	rsi, r12
	call	xmemdup
	mov	rdi, rax
	mov	rbp, rbp
	mov	rsi, r12
	call	save_to_hold_area
.label_170:
	mov	qword ptr [rbp + 0x20], r15
	mov	rax,  qword ptr [word ptr [rip + last_line_number]]
	lea	rcx, [rax + 1]
	mov	qword ptr [rbp + 0x10], rcx
	nop	
	mov	qword ptr [rbp + 0x18], rcx
	nop	
	add	rax, r15
	mov	qword ptr [word ptr [rip + last_line_number]],  rax
.label_166:
	lea	rsi, [rsi]
	mov	rax, r15
	nop	
	add	rsp, 8
	lea	rsi, [rsi]
	pop	rbx
	mov	rbp, rbp
	pop	r12
	pop	r13
	mov	rbp, rbp
	pop	r14
	pop	r15
	nop	
	pop	rbp
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4044a0

	.globl save_buffer
	.type save_buffer, @function
save_buffer:
	mov	qword ptr [rdi + 0x40], 0
	lea	rsi, [rsi]
	mov	rax, qword ptr [rdi + 0x30]
	mov	qword ptr [rdi + 0x38], rax
	mov	rax,  qword ptr [word ptr [rip + head]]
	mov	rbp, rbp
	test	rax, rax
	lea	rdi, [rdi]
	je	.label_171
	nop	word ptr cs:[rax + rax]
.label_172:
	mov	rcx, rax
	mov	rax, qword ptr [rcx + 0x40]
	mov	rbp, rbp
	test	rax, rax
	nop	
	jne	.label_172
	mov	qword ptr [rcx + 0x40], rdi
	ret	
.label_171:
	mov	qword ptr [word ptr [rip + head]],  rdi
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4044f0

	.globl create_new_buffer
	.type create_new_buffer, @function
create_new_buffer:
	push	r14
	nop	
	push	rbx
	mov	rsp, rsp
	push	rax
	mov	r14, rdi
	nop	
	mov	edi, 0x48
	call	xmalloc
	mov	rbx, rax
	lea	rdi, [rdi]
	lea	rdi, [r14 + 1]
	mov	rsp, rsp
	call	xmalloc
	mov	rsp, rsp
	mov	qword ptr [rbx + 0x28], rax
	lea	rsi, [rsi]
	mov	qword ptr [rbx], r14
	xorps	xmm0, xmm0
	lea	rdi, [rdi]
	movups	xmmword ptr [rbx + 0x30], xmm0
	lea	rsi, [rsi]
	mov	rax, rbx
	mov	rsp, rsp
	add	rsp, 8
	pop	rbx
	pop	r14
	nop	
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404550

	.globl keep_new_line
	.type keep_new_line, @function
keep_new_line:
	nop	
	push	r15
	push	r14
	push	rbx
	mov	rsp, rsp
	mov	r14, rdx
	mov	r15, rsi
	lea	rsi, [rsi]
	mov	rbx, rdi
	lea	rsi, [rsi]
	cmp	qword ptr [rbx + 0x30], 0
	jne	.label_173
	call	new_line_control
	mov	qword ptr [rbx + 0x38], rax
	nop	
	mov	qword ptr [rbx + 0x30], rax
.label_173:
	mov	rax, qword ptr [rbx + 0x38]
	cmp	qword ptr [rax], 0x50
	lea	rdi, [rdi]
	jne	.label_174
	call	new_line_control
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbx + 0x38]
	lea	rdi, [rdi]
	mov	qword ptr [rcx + 0x518], rax
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbx + 0x38]
	mov	rax, qword ptr [rax + 0x518]
	lea	rdi, [rdi]
	mov	qword ptr [rbx + 0x38], rax
.label_174:
	mov	rax, qword ptr [rbx + 0x38]
	nop	
	mov	rcx, qword ptr [rax + 8]
	lea	rsi, [rsi]
	shl	rcx, 4
	mov	qword ptr [rax + rcx + 0x20], r15
	mov	rsp, rsp
	mov	qword ptr [rax + rcx + 0x18], r14
	mov	rbp, rbp
	inc	qword ptr [rax]
	lea	rsi, [rsi]
	inc	qword ptr [rax + 8]
	mov	rbp, rbp
	pop	rbx
	pop	r14
	pop	r15
	mov	rbp, rbp
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4045f0

	.globl save_to_hold_area
	.type save_to_hold_area, @function
save_to_hold_area:
	push	r14
	mov	rsp, rsp
	push	rbx
	lea	rsi, [rsi]
	push	rax
	mov	r14, rsi
	lea	rsi, [rsi]
	mov	rbx, rdi
	mov	rdi,  qword ptr [word ptr [rip + hold_area]]
	mov	rbp, rbp
	call	free
	mov	qword ptr [word ptr [rip + hold_area]],  rbx
	mov	qword ptr [word ptr [rip + hold_count]],  r14
	lea	rdi, [rdi]
	add	rsp, 8
	nop	
	pop	rbx
	mov	rsp, rsp
	pop	r14
	lea	rsi, [rsi]
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404640

	.globl new_line_control
	.type new_line_control, @function
new_line_control:
	mov	rsp, rsp
	push	rbx
	mov	edi, 0x520
	call	xmalloc
	mov	rsp, rsp
	mov	rbx, rax
	mov	qword ptr [rbx + 0x518], 0
	nop	
	mov	rdi, rbx
	call	clear_line_control
	nop	
	mov	rax, rbx
	pop	rbx
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x404670

	.globl clear_line_control
	.type clear_line_control, @function
clear_line_control:
	mov	rsp, rsp
	xorps	xmm0, xmm0
	movups	xmmword ptr [rdi], xmm0
	mov	qword ptr [rdi + 0x10], 0
	lea	rsi, [rsi]
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404690

	.globl get_first_line_in_buffer
	.type get_first_line_in_buffer, @function
get_first_line_in_buffer:
	push	rbx
	cmp	qword ptr [word ptr [rip + head]],  0
	jne	.label_175
	call	load_buffer
	test	al, al
	je	.label_176
.label_175:
	lea	rsi, [rsi]
	mov	rax,  qword ptr [word ptr [rip + head]]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax + 0x18]
	mov	rbp, rbp
	pop	rbx
	ret	
.label_176:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	lea	rsi, [rsi]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.62
	lea	rsi, [rsi]
	mov	edx, 5
	mov	rbp, rbp
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	xor	eax, eax
	mov	rsp, rsp
	mov	esi, ebx
	mov	rdx, rcx
	lea	rsi, [rsi]
	call	error
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404700

	.globl no_more_lines
	.type no_more_lines, @function
no_more_lines:
	push	rax
	mov	rdi,  qword ptr [word ptr [rip + current_line]]
	nop	
	inc	rdi
	lea	rdi, [rdi]
	call	find_line
	nop	
	test	rax, rax
	nop	
	sete	al
	lea	rdi, [rdi]
	pop	rcx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404730

	.globl handle_line_error
	.type handle_line_error, @function
handle_line_error:
	mov	rsp, rsp
	push	r15
	lea	rsi, [rsi]
	push	r14
	push	r13
	lea	rdi, [rdi]
	push	r12
	mov	rsp, rsp
	push	rbx
	mov	rbp, rbp
	sub	rsp, 0x20
	mov	r14, rsi
	mov	rbx, rdi
	mov	r15,  qword ptr [word ptr [rip + stderr]]
	lea	rsi, [rsi]
	xor	edi, edi
	nop	
	mov	esi, OFFSET FLAT:.str.63
	mov	edx, 5
	call	dcgettext
	nop	
	mov	r12, rax
	lea	rsi, [rsi]
	mov	r13,  qword ptr [word ptr [rip + program_name]]
	mov	rsp, rsp
	mov	rdi, qword ptr [rbx + 8]
	lea	rsi, [rsp]
	mov	rbp, rbp
	call	umaxtostr
	nop	
	mov	rdi, rax
	nop	
	call	quote
	mov	rbx, rax
	mov	rsp, rsp
	mov	esi, 1
	mov	rsp, rsp
	xor	eax, eax
	lea	rdi, [rdi]
	mov	rdi, r15
	mov	rdx, r12
	lea	rdi, [rdi]
	mov	rcx, r13
	mov	rsp, rsp
	mov	r8, rbx
	call	__fprintf_chk
	nop	
	test	r14, r14
	mov	rbp, rbp
	mov	rbx,  qword ptr [word ptr [rip + stderr]]
	mov	rsp, rsp
	jne	.label_177
	lea	rsi, [rsi]
	mov	esi, 1
	mov	edx, OFFSET FLAT:.str.60
	nop	
	xor	eax, eax
	mov	rdi, rbx
	mov	rsp, rsp
	call	__fprintf_chk
	call	cleanup_fatal
.label_177:
	mov	rbp, rbp
	xor	edi, edi
	lea	rdi, [rdi]
	mov	esi, OFFSET FLAT:.str.59
	mov	edx, 5
	call	dcgettext
	lea	rsi, [rsi]
	mov	r15, rax
	lea	rsi, [rsp]
	mov	rdi, r14
	call	umaxtostr
	nop	
	mov	rcx, rax
	mov	rbp, rbp
	mov	esi, 1
	lea	rsi, [rsi]
	xor	eax, eax
	mov	rsp, rsp
	mov	rdi, rbx
	nop	
	mov	rdx, r15
	lea	rsi, [rsi]
	call	__fprintf_chk
	lea	rsi, [rsi]
	call	cleanup_fatal
	nop	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x404850
	.globl close_stdout_set_file_name
	.type close_stdout_set_file_name, @function
close_stdout_set_file_name:

	mov	rbp, rbp
	mov	qword ptr [word ptr [rip + file_name]],  rdi
	lea	rsi, [rsi]
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x404860
	.globl close_stdout_set_ignore_EPIPE
	.type close_stdout_set_ignore_EPIPE, @function
close_stdout_set_ignore_EPIPE:

	mov	byte ptr [byte ptr [rip + ignore_EPIPE]],  dil
	lea	rdi, [rdi]
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404870

	.globl close_stdout
	.type close_stdout, @function
close_stdout:
	push	rbp
	lea	rsi, [rsi]
	push	r14
	mov	rsp, rsp
	push	rbx
	lea	rdi, [rdi]
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	mov	rsp, rsp
	call	close_stream
	test	eax, eax
	je	.label_179
	cmp	byte ptr [byte ptr [rip + ignore_EPIPE]],  0
	je	.label_178
	mov	rbp, rbp
	call	__errno_location
	mov	rsp, rsp
	cmp	dword ptr [rax], 0x20
	jne	.label_178
.label_179:
	mov	rsp, rsp
	mov	rdi,  qword ptr [word ptr [rip + stderr]]
	call	close_stream
	test	eax, eax
	jne	.label_181
	pop	rbx
	nop	
	pop	r14
	nop	
	pop	rbp
	ret	
.label_178:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str_0
	nop	
	mov	edx, 5
	lea	rsi, [rsi]
	call	dcgettext
	mov	rbp, rbp
	mov	r14, rax
	mov	rbx,  qword ptr [word ptr [rip + file_name]]
	lea	rdi, [rdi]
	call	__errno_location
	test	rbx, rbx
	mov	ebp, dword ptr [rax]
	jne	.label_180
	xor	edi, edi
	lea	rdi, [rdi]
	mov	edx, OFFSET FLAT:.str.2
	mov	rsp, rsp
	xor	eax, eax
	mov	esi, ebp
	nop	
	mov	rcx, r14
	lea	rdi, [rdi]
	call	error
	mov	rsp, rsp
	mov	edi,  dword ptr [dword ptr [rip + exit_failure]]
	call	_exit
.label_181:
	mov	rsp, rsp
	mov	edi,  dword ptr [dword ptr [rip + exit_failure]]
	call	_exit
.label_180:
	mov	rbp, rbp
	mov	rdi, rbx
	nop	
	call	quotearg_colon
	mov	rcx, rax
	lea	rdi, [rdi]
	xor	edi, edi
	mov	edx, OFFSET FLAT:.str_1
	lea	rdi, [rdi]
	xor	eax, eax
	nop	
	mov	esi, ebp
	lea	rsi, [rsi]
	mov	r8, r14
	call	error
	mov	rsp, rsp
	mov	edi,  dword ptr [dword ptr [rip + exit_failure]]
	mov	rbp, rbp
	call	_exit
	nop	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x404970

	.globl fd_reopen
	.type fd_reopen, @function
fd_reopen:
	push	rbp
	mov	rbp, rbp
	push	r15
	push	r14
	push	rbx
	push	rax
	mov	ebp, edi
	nop	
	xor	eax, eax
	nop	
	mov	rdi, rsi
	nop	
	mov	esi, edx
	nop	
	mov	edx, ecx
	call	open
	mov	ebx, eax
	cmp	ebx, ebp
	je	.label_182
	test	ebx, ebx
	nop	
	js	.label_182
	mov	edi, ebx
	mov	esi, ebp
	call	dup2
	nop	
	mov	r14d, eax
	mov	rbp, rbp
	call	__errno_location
	mov	rbp, rbp
	mov	rbp, rax
	mov	rbp, rbp
	mov	r15d, dword ptr [rbp]
	mov	edi, ebx
	call	close
	mov	dword ptr [rbp], r15d
	mov	eax, r14d
	jmp	.label_183
.label_182:
	lea	rsi, [rsi]
	mov	eax, ebx
.label_183:
	mov	rsp, rsp
	add	rsp, 8
	lea	rdi, [rdi]
	pop	rbx
	lea	rsi, [rsi]
	pop	r14
	pop	r15
	pop	rbp
	mov	rbp, rbp
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4049f0

	.globl fopen_safer
	.type fopen_safer, @function
fopen_safer:
	lea	rdi, [rdi]
	push	rbp
	push	r14
	lea	rsi, [rsi]
	push	rbx
	lea	rdi, [rdi]
	mov	r14, rsi
	mov	rsp, rsp
	call	fopen
	lea	rsi, [rsi]
	mov	rbx, rax
	xor	eax, eax
	test	rbx, rbx
	je	.label_185
	mov	rsp, rsp
	mov	rdi, rbx
	call	fileno
	cmp	eax, 2
	ja	.label_184
	mov	rbp, rbp
	mov	edi, eax
	mov	rsp, rsp
	call	dup_safer
	mov	rsp, rsp
	mov	ebp, eax
	test	ebp, ebp
	js	.label_187
	lea	rsi, [rsi]
	mov	rdi, rbx
	call	rpl_fclose
	mov	rbp, rbp
	test	eax, eax
	jne	.label_186
	mov	rsp, rsp
	mov	edi, ebp
	lea	rsi, [rsi]
	mov	rsi, r14
	call	fdopen
	mov	rbp, rbp
	test	rax, rax
	lea	rdi, [rdi]
	jne	.label_185
.label_186:
	call	__errno_location
	mov	rbx, rax
	mov	r14d, dword ptr [rbx]
	mov	edi, ebp
	lea	rdi, [rdi]
	call	close
	mov	rbp, rbp
	mov	dword ptr [rbx], r14d
	mov	rbp, rbp
	jmp	.label_188
.label_184:
	mov	rax, rbx
	mov	rsp, rsp
	jmp	.label_185
.label_187:
	call	__errno_location
	mov	rbp, rax
	mov	r14d, dword ptr [rbp]
	lea	rsi, [rsi]
	mov	rdi, rbx
	mov	rsp, rsp
	call	rpl_fclose
	mov	dword ptr [rbp], r14d
.label_188:
	xor	eax, eax
.label_185:
	mov	rbp, rbp
	pop	rbx
	lea	rdi, [rdi]
	pop	r14
	pop	rbp
	mov	rsp, rsp
	ret	
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x404ad0

	.globl umaxtostr
	.type umaxtostr, @function
umaxtostr:
	mov	rcx, rdi
	lea	rdi, [rdi]
	mov	byte ptr [rsi + 0x14], 0
	add	rsi, 0x14
	movabs	r8, 0xcccccccccccccccd
	nop	dword ptr [rax + rax]
.label_189:
	mov	rbp, rbp
	mov	rax, rcx
	lea	rdi, [rdi]
	mul	r8
	mov	rsp, rsp
	shr	rdx, 3
	lea	eax, [rdx + rdx]
	mov	rbp, rbp
	lea	eax, [rax + rax*4]
	mov	edi, ecx
	sub	edi, eax
	or	edi, 0x30
	lea	rsi, [rsi]
	mov	byte ptr [rsi - 1], dil
	mov	rbp, rbp
	dec	rsi
	cmp	rcx, 9
	mov	rcx, rdx
	ja	.label_189
	mov	rax, rsi
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x404b30

	.globl set_program_name
	.type set_program_name, @function
set_program_name:
	lea	rsi, [rsi]
	push	r14
	push	rbx
	push	rax
	mov	rbx, rdi
	lea	rdi, [rdi]
	test	rbx, rbx
	je	.label_190
	mov	esi, 0x2f
	mov	rbp, rbp
	mov	rdi, rbx
	call	strrchr
	mov	rbp, rbp
	test	rax, rax
	lea	rsi, [rsi]
	lea	r14, [rax + 1]
	lea	rdi, [rdi]
	cmove	r14, rbx
	mov	rax, r14
	nop	
	sub	rax, rbx
	mov	rbp, rbp
	cmp	rax, 7
	lea	rsi, [rsi]
	jl	.label_192
	lea	rdi, [r14 - 7]
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.1_0
	mov	edx, 7
	call	strncmp
	test	eax, eax
	jne	.label_192
	mov	esi, OFFSET FLAT:.str.2_0
	lea	rdi, [rdi]
	mov	edx, 3
	mov	rbp, rbp
	mov	rdi, r14
	lea	rsi, [rsi]
	call	strncmp
	mov	rbp, rbp
	test	eax, eax
	lea	rdi, [rdi]
	jne	.label_191
	nop	
	add	r14, 3
	mov	qword ptr [word ptr [rip + program_invocation_short_name]],  r14
.label_191:
	lea	rsi, [rsi]
	mov	rbx, r14
.label_192:
	mov	rsp, rsp
	mov	qword ptr [word ptr [rip + program_name]],  rbx
	mov	qword ptr [word ptr [rip + __progname_full]],  rbx
	add	rsp, 8
	lea	rsi, [rsi]
	pop	rbx
	lea	rdi, [rdi]
	pop	r14
	ret	
.label_190:
	mov	rcx,  qword ptr [word ptr [rip + stderr]]
	mov	rbp, rbp
	mov	edi, OFFSET FLAT:.str_2
	mov	rbp, rbp
	mov	esi, 0x37
	lea	rsi, [rsi]
	mov	edx, 1
	call	fwrite
	lea	rsi, [rsi]
	call	abort
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x404c20
	.globl clone_quoting_options
	.type clone_quoting_options, @function
clone_quoting_options:

	nop
	push	rbp
	lea	rsi, [rsi]
	push	r14
	mov	rbp, rbp
	push	rbx
	mov	rbx, rdi
	mov	rbp, rbp
	call	__errno_location
	mov	r14, rax
	mov	rbp, rbp
	mov	ebp, dword ptr [r14]
	test	rbx, rbx
	mov	eax, OFFSET FLAT:default_quoting_options
	lea	rsi, [rsi]
	cmove	rbx, rax
	mov	rsp, rsp
	mov	esi, 0x38
	lea	rsi, [rsi]
	mov	rdi, rbx
	call	xmemdup
	nop	
	mov	dword ptr [r14], ebp
	lea	rsi, [rsi]
	pop	rbx
	pop	r14
	pop	rbp
	lea	rsi, [rsi]
	ret	
	.section	.text
	.align	32
	#Procedure 0x404c70
	.globl get_quoting_style
	.type get_quoting_style, @function
get_quoting_style:

	lea	rsi, [rsi]
	test	rdi, rdi
	lea	rdi, [rdi]
	mov	eax, OFFSET FLAT:default_quoting_options
	cmovne	rax, rdi
	lea	rdi, [rdi]
	mov	eax, dword ptr [rax]
	lea	rsi, [rsi]
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404c90
	.globl set_quoting_style
	.type set_quoting_style, @function
set_quoting_style:

	test	rdi, rdi
	mov	eax, OFFSET FLAT:default_quoting_options
	nop	
	cmovne	rax, rdi
	lea	rdi, [rdi]
	mov	dword ptr [rax], esi
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404cb0

	.globl set_char_quoting
	.type set_char_quoting, @function
set_char_quoting:
	lea	rsi, [rsi]
	mov	ecx, esi
	nop	
	test	rdi, rdi
	mov	esi, OFFSET FLAT:default_quoting_options
	mov	rbp, rbp
	cmovne	rsi, rdi
	mov	al, cl
	lea	rdi, [rdi]
	shr	al, 5
	mov	rbp, rbp
	movzx	r8d, al
	mov	rsp, rsp
	mov	r9d, dword ptr [rsi + r8*4 + 8]
	mov	rsp, rsp
	mov	edi, r9d
	mov	rsp, rsp
	shr	edi, cl
	lea	rdi, [rdi]
	mov	eax, edi
	mov	rsp, rsp
	and	eax, 1
	mov	rsp, rsp
	xor	edi, edx
	mov	rbp, rbp
	and	edi, 1
	mov	rsp, rsp
	shl	edi, cl
	lea	rsi, [rsi]
	xor	edi, r9d
	mov	rbp, rbp
	mov	dword ptr [rsi + r8*4 + 8], edi
	mov	rsp, rsp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404d20
	.globl set_quoting_flags
	.type set_quoting_flags, @function
set_quoting_flags:

	mov	rbp, rbp
	test	rdi, rdi
	nop	
	mov	ecx, OFFSET FLAT:default_quoting_options
	cmovne	rcx, rdi
	mov	eax, dword ptr [rcx + 4]
	mov	rsp, rsp
	mov	dword ptr [rcx + 4], esi
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404d40

	.globl set_custom_quoting
	.type set_custom_quoting, @function
set_custom_quoting:
	test	rdi, rdi
	mov	eax, OFFSET FLAT:default_quoting_options
	lea	rdi, [rdi]
	cmovne	rax, rdi
	lea	rsi, [rsi]
	mov	dword ptr [rax], 0xa
	test	rsi, rsi
	je	.label_193
	test	rdx, rdx
	nop	
	je	.label_193
	lea	rsi, [rsi]
	mov	qword ptr [rax + 0x28], rsi
	mov	qword ptr [rax + 0x30], rdx
	lea	rdi, [rdi]
	ret	
.label_193:
	push	rax
	nop	
	call	abort
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x404d80
	.globl quotearg_buffer
	.type quotearg_buffer, @function
quotearg_buffer:

	push	rbp
	mov	rbp, rbp
	push	r15
	push	r14
	mov	rbp, rbp
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x28
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x20], rcx
	nop	
	mov	r15, rdx
	mov	r12, rsi
	mov	r13, rdi
	lea	rdi, [rdi]
	test	r8, r8
	mov	ebp, OFFSET FLAT:default_quoting_options
	cmovne	rbp, r8
	call	__errno_location
	mov	rbp, rbp
	mov	rbx, rax
	nop	
	mov	r14d, dword ptr [rbx]
	mov	r8d, dword ptr [rbp]
	mov	r9d, dword ptr [rbp + 4]
	mov	rax, qword ptr [rbp + 0x28]
	mov	rcx, qword ptr [rbp + 0x30]
	lea	rsi, [rsi]
	lea	rdx, [rbp + 8]
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x10], rcx
	mov	rsp, rsp
	mov	qword ptr [rsp + 8], rax
	mov	qword ptr [rsp], rdx
	nop	
	mov	rdi, r13
	mov	rsi, r12
	mov	rdx, r15
	mov	rcx, qword ptr [rsp + 0x20]
	call	quotearg_buffer_restyled
	mov	dword ptr [rbx], r14d
	add	rsp, 0x28
	pop	rbx
	pop	r12
	mov	rbp, rbp
	pop	r13
	nop	
	pop	r14
	lea	rdi, [rdi]
	pop	r15
	pop	rbp
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x404e20

	.globl quotearg_buffer_restyled
	.type quotearg_buffer_restyled, @function
quotearg_buffer_restyled:
	push	rbp
	push	r15
	push	r14
	lea	rsi, [rsi]
	push	r13
	push	r12
	mov	rsp, rsp
	push	rbx
	nop	
	sub	rsp, 0x108
	mov	ebx, r9d
	nop	
	mov	dword ptr [rsp + 0x6c], ebx
	mov	r13d, r8d
	mov	qword ptr [rsp + 0xc0], rcx
	mov	r12, rdx
	mov	rbp, rbp
	mov	rbp, rsi
	mov	qword ptr [rsp + 0xe0], rdi
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 0x150]
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x88], rax
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 0x148]
	mov	qword ptr [rsp + 0x90], rax
	call	__ctype_get_mb_cur_max
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x60], rax
	mov	r15b, bl
	mov	rbp, rbp
	shr	r15b, 1
	mov	rbp, rbp
	and	r15b, 1
	nop	
	mov	eax, ebx
	and	eax, 1
	mov	rbp, rbp
	mov	dword ptr [rsp + 0x5c], eax
	and	ebx, 4
	mov	dword ptr [rsp + 0x58], ebx
	mov	rsp, rsp
	mov	r8b, 1
	mov	eax, 0
	mov	qword ptr [rsp + 0x80], rax
	lea	rsi, [rsi]
	mov	eax, 0
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0xa8], rax
	lea	rsi, [rsi]
	mov	eax, 0
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0xd0], rax
	mov	eax, 0
	mov	rbp, rbp
	xor	r11d, r11d
	lea	rsi, [rsi]
	xor	ecx, ecx
	mov	qword ptr [rsp + 0x70], rcx
.label_283:
	mov	r10, rbp
	xor	ecx, ecx
	mov	qword ptr [rsp + 0xf0], rcx
	lea	rsi, [rsi]
	mov	ecx, r13d
	lea	rdi, [rdi]
	cmp	r13d, 0xa
	ja	.label_265
	mov	r14d, 7
	mov	sil, 1
	xor	edi, edi
	mov	rsp, rsp
	mov	r9, r12
	mov	rbp, qword ptr [rsp + 0xc0]
	jmp	qword ptr [word ptr [+ (rcx * 8) + label_272]]
.label_1865:
	lea	rsi, [rsi]
	mov	r12d, r11d
	nop	
	mov	edi, OFFSET FLAT:.str.11_0
	mov	esi, r13d
	nop	
	mov	r14, r10
	mov	bl, r8b
	mov	rbp, rbp
	mov	rbp, r9
	call	gettext_quote
	mov	qword ptr [rsp + 0x90], rax
	mov	rsp, rsp
	mov	edi, OFFSET FLAT:.str.12_0
	mov	esi, r13d
	mov	rsp, rsp
	call	gettext_quote
	mov	rsp, rsp
	mov	r11d, r12d
	mov	r9, rbp
	mov	r8b, bl
	nop	
	mov	r10, r14
	nop	
	mov	qword ptr [rsp + 0x88], rax
.label_1866:
	mov	dword ptr [rsp + 0xb8], r11d
	mov	rbp, r9
	mov	byte ptr [rsp + 0x69], r8b
	mov	rbp, rbp
	test	r15b, 1
	mov	rbp, rbp
	mov	eax, 0
	mov	rsp, rsp
	mov	qword ptr [rsp + 0xf0], rax
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rsp + 0x90]
	jne	.label_227
	mov	al, byte ptr [rdx]
	test	al, al
	mov	ecx, 0
	mov	qword ptr [rsp + 0xf0], rcx
	mov	rsp, rsp
	je	.label_227
	mov	rsp, rsp
	xor	ecx, ecx
	mov	qword ptr [rsp + 0xf0], rcx
	nop	word ptr cs:[rax + rax]
.label_209:
	cmp	qword ptr [rsp + 0xf0], r10
	lea	rdi, [rdi]
	jae	.label_194
	mov	rsp, rsp
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	rsi, qword ptr [rsp + 0xf0]
	mov	rbp, rbp
	mov	byte ptr [rcx + rsi], al
.label_194:
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rsp + 0xf0]
	nop	
	mov	al, byte ptr [rdx + rcx + 1]
	lea	rdi, [rdi]
	inc	rcx
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0xf0], rcx
	mov	rbp, rbp
	test	al, al
	jne	.label_209
.label_227:
	mov	rbx, qword ptr [rsp + 0x88]
	mov	rbp, rbp
	mov	rdi, rbx
	mov	r12, r10
	nop	
	call	strlen
	mov	r10, r12
	mov	qword ptr [rsp + 0xd0], rax
	lea	rdi, [rdi]
	mov	r14d, r13d
	mov	qword ptr [rsp + 0xa8], rbx
	mov	sil, 1
	mov	rbp, rbp
	mov	dil, r15b
	mov	r8b, byte ptr [rsp + 0x69]
	mov	rsp, rsp
	mov	r9, rbp
	lea	rsi, [rsi]
	mov	rbp, qword ptr [rsp + 0xc0]
	lea	rsi, [rsi]
	mov	r11d, dword ptr [rsp + 0xb8]
	nop	
	jmp	.label_212
.label_1858:
	lea	rsi, [rsi]
	xor	r14d, r14d
	mov	rbp, rbp
	xor	ecx, ecx
	mov	rbp, rbp
	mov	qword ptr [rsp + 0xf0], rcx
	mov	sil, al
	nop	
	xor	edi, edi
	lea	rsi, [rsi]
	jmp	.label_212
.label_1861:
	mov	rsp, rsp
	mov	al, 1
.label_1859:
	mov	r15b, 1
.label_1862:
	test	r15b, 1
	mov	rsp, rsp
	mov	cl, 1
	je	.label_247
	mov	cl, al
.label_247:
	lea	rdi, [rdi]
	mov	al, cl
.label_1860:
	mov	r14d, 2
	mov	rsp, rsp
	test	r15b, 1
	mov	rsp, rsp
	jne	.label_257
	test	r10, r10
	je	.label_263
	mov	rsp, rsp
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx], 0x27
	mov	ecx, 1
	lea	rdi, [rdi]
	jmp	.label_266
.label_257:
	xor	ecx, ecx
	jmp	.label_266
.label_1863:
	mov	r14d, 5
	mov	rsp, rsp
	test	r15b, 1
	jne	.label_274
	test	r10, r10
	je	.label_278
	mov	rax, qword ptr [rsp + 0xe0]
	mov	byte ptr [rax], 0x22
	mov	eax, 1
	lea	rsi, [rsi]
	jmp	.label_281
.label_1864:
	mov	sil, 1
	mov	r14d, 5
	xor	eax, eax
	mov	qword ptr [rsp + 0xf0], rax
	mov	eax, OFFSET FLAT:.str.10_0
	nop	
	mov	qword ptr [rsp + 0xa8], rax
	nop	
	mov	eax, 1
	mov	qword ptr [rsp + 0xd0], rax
	mov	rbp, rbp
	mov	dil, 1
	jmp	.label_212
.label_263:
	nop	
	mov	ecx, 1
	nop	dword ptr [rax]
.label_266:
	mov	qword ptr [rsp + 0xf0], rcx
	mov	ecx, OFFSET FLAT:.str.12_0
	mov	rbp, rbp
	mov	qword ptr [rsp + 0xa8], rcx
	lea	rdi, [rdi]
	mov	ecx, 1
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0xd0], rcx
	mov	sil, al
	mov	dil, r15b
	mov	rbp, rbp
	jmp	.label_212
.label_274:
	xor	eax, eax
	mov	rbp, rbp
	jmp	.label_281
.label_278:
	mov	rbp, rbp
	mov	eax, 1
.label_281:
	nop	
	mov	qword ptr [rsp + 0xf0], rax
	mov	eax, OFFSET FLAT:.str.10_0
	mov	qword ptr [rsp + 0xa8], rax
	mov	rsp, rsp
	mov	eax, 1
	mov	qword ptr [rsp + 0xd0], rax
	lea	rsi, [rsi]
	mov	sil, 1
	mov	dil, r15b
	nop	word ptr cs:[rax + rax]
.label_212:
	mov	qword ptr [rsp + 0x98], rdi
	mov	byte ptr [rsp + 0xa6], sil
	lea	rdi, [rdi]
	cmp	qword ptr [rsp + 0x140], 0
	lea	rsi, [rsi]
	setne	bl
	cmp	r14d, 2
	lea	rsi, [rsi]
	setne	r15b
	mov	rsp, rsp
	sete	dl
	mov	rbp, rbp
	mov	cl, sil
	and	cl, 1
	mov	byte ptr [rsp + 0xa5], cl
	sete	byte ptr [rsp + 0x6b]
	lea	rdi, [rdi]
	mov	r12b, r15b
	and	r12b, cl
	mov	byte ptr [rsp + 0xbf], r12b
	cmp	qword ptr [rsp + 0xd0], 0
	mov	rsp, rsp
	setne	r13b
	mov	al, r13b
	and	al, r12b
	mov	rbp, rbp
	mov	byte ptr [rsp + 0xdf], al
	mov	al, dil
	mov	rsp, rsp
	and	al, 1
	mov	rsp, rsp
	mov	byte ptr [rsp + 0xcf], al
	mov	rsp, rsp
	sete	cl
	lea	rdi, [rdi]
	and	dl, al
	lea	rsi, [rsi]
	mov	byte ptr [rsp + 0x7f], dl
	and	bl, al
	mov	byte ptr [rsp + 0xb7], bl
	or	cl, r15b
	mov	byte ptr [rsp + 0xa7], cl
	nop	
	and	sil, dil
	mov	rsp, rsp
	and	sil, r13b
	mov	byte ptr [rsp + 0x6a], sil
	nop	
	xor	esi, esi
	mov	rsp, rsp
	jmp	.label_207
	nop	word ptr [rax + rax]
.label_222:
	inc	qword ptr [rsp + 0xf0]
	shl	r15b, 7
	lea	rsi, [rsi]
	sar	r15b, 7
	and	r15b, r8b
	lea	rdi, [rdi]
	mov	r8b, r15b
	nop	
	inc	rsi
.label_207:
	lea	rsi, [rsi]
	cmp	rbp, -1
	je	.label_269
	cmp	rsi, rbp
	jne	.label_236
	jmp	.label_271
	nop	word ptr cs:[rax + rax]
.label_269:
	lea	rsi, [rsi]
	cmp	byte ptr [r9 + rsi], 0
	nop	
	je	.label_271
.label_236:
	mov	rbp, rbp
	cmp	byte ptr [rsp + 0xdf], 0
	je	.label_279
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0xd0]
	lea	rbx, [rsi + rax]
	cmp	rax, 2
	jb	.label_224
	mov	rsp, rsp
	cmp	rbp, -1
	lea	rdi, [rdi]
	jne	.label_224
	mov	dword ptr [rsp + 0xb8], r11d
	mov	rbp, rbp
	mov	rdi, r9
	mov	rbp, rbp
	mov	rbp, r10
	nop	
	mov	r15b, r8b
	lea	rsi, [rsi]
	mov	r13, r14
	lea	rsi, [rsi]
	mov	r12, r9
	mov	r14, rsi
	lea	rdi, [rdi]
	call	strlen
	mov	rsp, rsp
	mov	rsi, r14
	lea	rsi, [rsi]
	mov	r11d, dword ptr [rsp + 0xb8]
	mov	r9, r12
	mov	r12b, byte ptr [rsp + 0xbf]
	nop	
	mov	r14, r13
	lea	rdi, [rdi]
	mov	r8b, r15b
	mov	rbp, rbp
	mov	r10, rbp
	mov	rbp, rax
.label_224:
	lea	rsi, [rsi]
	cmp	rbx, rbp
	jbe	.label_310
.label_279:
	mov	rbp, rbp
	mov	rdi, r14
	mov	rsp, rsp
	mov	dword ptr [rsp + 0xec], 0
.label_240:
	mov	rsp, rsp
	movzx	r13d, byte ptr [r9 + rsi]
	mov	rsp, rsp
	cmp	r13, 0x7e
	nop	
	ja	.label_313
	lea	rsi, [rsi]
	xor	edx, edx
	nop	
	mov	r15b, 1
	mov	rbp, rbp
	mov	cl, 0x6e
	mov	bl, 0x61
	nop	
	xor	eax, eax
	jmp	qword ptr [word ptr [+ (r13 * 8) + label_195]]
.label_1926:
	test	rsi, rsi
	jne	.label_206
	jmp	.label_208
	nop	word ptr [rax + rax]
.label_310:
	mov	qword ptr [rsp + 0xc0], rbp
	mov	r12d, r11d
	lea	rsi, [rsi]
	mov	r13, r14
	lea	rdi, [rdi]
	mov	r15b, r8b
	mov	rbx, r10
	lea	rdi, [r9 + rsi]
	mov	r14, rsi
	mov	rbp, r9
	mov	rsp, rsp
	mov	rsi, qword ptr [rsp + 0xa8]
	mov	rsp, rsp
	mov	rdx, qword ptr [rsp + 0xd0]
	mov	rbp, rbp
	call	memcmp
	mov	rsp, rsp
	test	eax, eax
	sete	al
	mov	dword ptr [rsp + 0xec], eax
	jne	.label_228
	cmp	byte ptr [rsp + 0xcf], 0
	mov	r10, rbx
	mov	r8b, r15b
	mov	rdi, r13
	mov	r9, rbp
	mov	r11d, r12d
	mov	rbp, qword ptr [rsp + 0xc0]
	nop	
	mov	r12b, byte ptr [rsp + 0xbf]
	mov	rsi, r14
	je	.label_240
	mov	rsp, rsp
	jmp	.label_213
.label_228:
	mov	rbp, rbp
	mov	r10, rbx
	mov	rbp, rbp
	mov	r8b, r15b
	mov	rbp, rbp
	mov	rdi, r13
	nop	
	mov	r9, rbp
	nop	
	mov	r11d, r12d
	lea	rdi, [rdi]
	mov	rbp, qword ptr [rsp + 0xc0]
	nop	
	mov	r12b, byte ptr [rsp + 0xbf]
	nop	
	mov	rsi, r14
	jmp	.label_240
.label_1930:
	xor	eax, eax
	cmp	rbp, -1
	lea	rsi, [rsi]
	je	.label_273
	test	rsi, rsi
	nop	
	jne	.label_255
	cmp	rbp, 1
	lea	rsi, [rsi]
	je	.label_208
	mov	rsp, rsp
	xor	r15d, r15d
	jmp	.label_200
.label_1919:
	cmp	byte ptr [rsp + 0xa5], 0
	je	.label_246
	lea	rsi, [rsi]
	cmp	byte ptr [rsp + 0xcf], 0
	nop	
	jne	.label_213
	cmp	edi, 2
	nop	
	jne	.label_301
	lea	rdi, [rdi]
	mov	al, r11b
	and	al, 1
	nop	
	jne	.label_282
	mov	rsp, rsp
	cmp	qword ptr [rsp + 0xf0], r10
	nop	
	jae	.label_286
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	rbp, rbp
	mov	byte ptr [rax + rcx], 0x27
.label_286:
	mov	rax, qword ptr [rsp + 0xf0]
	inc	rax
	cmp	rax, r10
	jae	.label_298
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx + rax], 0x24
.label_298:
	nop	
	mov	rax, qword ptr [rsp + 0xf0]
	mov	rsp, rsp
	lea	rax, [rax + 2]
	mov	rbp, rbp
	cmp	rax, r10
	jae	.label_309
	mov	rbp, rbp
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	rsp, rsp
	mov	byte ptr [rcx + rax], 0x27
.label_309:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp + 0xf0]
	add	rax, 3
	mov	rsp, rsp
	mov	r11b, 1
	nop	
	mov	rcx, rax
	jmp	.label_252
.label_1920:
	mov	bl, 0x62
	lea	rsi, [rsi]
	jmp	.label_197
.label_1921:
	mov	cl, 0x74
	jmp	.label_199
.label_1922:
	mov	bl, 0x76
	lea	rdi, [rdi]
	jmp	.label_197
.label_1923:
	mov	bl, 0x66
	jmp	.label_197
.label_1924:
	nop	
	mov	cl, 0x72
	mov	rsp, rsp
	jmp	.label_199
.label_1927:
	lea	rsi, [rsi]
	mov	al, 1
	mov	qword ptr [rsp + 0x70], rax
	mov	rbp, rbp
	mov	r14, rdi
	lea	rdi, [rdi]
	cmp	r14d, 2
	jne	.label_202
	cmp	byte ptr [rsp + 0xcf], 0
	lea	rdi, [rdi]
	jne	.label_214
	nop	
	test	r10, r10
	sete	al
	mov	rcx, qword ptr [rsp + 0x80]
	mov	rdx, rcx
	lea	rdi, [rdi]
	test	rdx, rdx
	nop	
	setne	cl
	nop	
	or	cl, al
	cmove	rdx, r10
	mov	qword ptr [rsp + 0x80], rdx
	mov	eax, 0
	mov	rsp, rsp
	cmove	r10, rax
	cmp	qword ptr [rsp + 0xf0], r10
	lea	rsi, [rsi]
	jae	.label_218
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	rsp, rsp
	mov	byte ptr [rax + rcx], 0x27
.label_218:
	mov	rdi, r14
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rsi, [rsi]
	inc	rax
	mov	rsp, rsp
	cmp	rax, r10
	jae	.label_238
	mov	rcx, qword ptr [rsp + 0xe0]
	lea	rdi, [rdi]
	mov	byte ptr [rcx + rax], 0x5c
.label_238:
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 2]
	cmp	rax, r10
	lea	rdi, [rdi]
	jae	.label_242
	mov	rcx, qword ptr [rsp + 0xe0]
	lea	rdi, [rdi]
	mov	byte ptr [rcx + rax], 0x27
.label_242:
	nop	
	add	qword ptr [rsp + 0xf0], 3
	xor	r11d, r11d
	mov	rbp, rbp
	jmp	.label_258
.label_1928:
	lea	rdi, [rdi]
	mov	r14, rdi
	lea	rdi, [rdi]
	cmp	r14d, 5
	mov	rsp, rsp
	je	.label_264
	cmp	r14d, 2
	lea	rdi, [rdi]
	jne	.label_270
	cmp	byte ptr [rsp + 0xcf], 0
	mov	rbp, rbp
	jne	.label_214
.label_270:
	mov	rdi, r14
	jmp	.label_206
.label_1929:
	mov	r14, rdi
	nop	
	cmp	r14d, 2
	mov	rsp, rsp
	jne	.label_277
	nop	
	cmp	byte ptr [rsp + 0xcf], 0
	jne	.label_214
	mov	rdi, r14
	jmp	.label_285
.label_313:
	lea	rsi, [rsi]
	mov	dword ptr [rsp + 0xb8], r11d
	mov	qword ptr [rsp + 0x38], rdi
	mov	byte ptr [rsp + 0x69], r8b
	mov	qword ptr [rsp + 0x40], r10
	cmp	qword ptr [rsp + 0x60], 1
	lea	rsi, [rsi]
	jne	.label_288
	mov	rbp, rbp
	mov	r14, r9
	mov	rbx, rsi
	mov	rsp, rsp
	call	__ctype_b_loc
	mov	rsi, rbx
	nop	
	mov	r9, r14
	mov	rax, qword ptr [rax]
	movzx	r15d, word ptr [rax + r13*2]
	mov	rsp, rsp
	shr	r15d, 0xe
	lea	rdi, [rdi]
	and	r15b, 1
	lea	rsi, [rsi]
	mov	ebx, 1
.label_233:
	lea	rdi, [rdi]
	and	r15b, 1
	mov	dl, r15b
	or	dl, byte ptr [rsp + 0x6b]
	mov	byte ptr [rsp + 0xc0], dl
	cmp	rbx, 1
	mov	rcx, rbx
	mov	r10, qword ptr [rsp + 0x40]
	mov	r8b, byte ptr [rsp + 0x69]
	lea	rdi, [rdi]
	mov	r14, qword ptr [rsp + 0x38]
	lea	rsi, [rsi]
	mov	r11d, dword ptr [rsp + 0xb8]
	lea	rdi, [rdi]
	ja	.label_196
	test	dl, dl
	mov	rsp, rsp
	je	.label_196
	mov	rdi, r14
	xor	eax, eax
	jmp	.label_200
.label_273:
	test	rsi, rsi
	jne	.label_203
	mov	cl, byte ptr [r9 + 1]
	test	cl, cl
	jne	.label_203
.label_208:
	mov	rbp, rbp
	mov	dl, 1
.label_1925:
	cmp	byte ptr [rsp + 0xa7], 0
	je	.label_213
	lea	rdi, [rdi]
	xor	eax, eax
	mov	r15b, dl
	mov	rbp, rbp
	jmp	.label_200
.label_246:
	cmp	dword ptr [rsp + 0x5c], 0
	mov	rbp, rbp
	je	.label_206
	lea	rsi, [rsi]
	mov	r14, rdi
	inc	rsi
	jmp	.label_207
.label_202:
	mov	rdi, r14
.label_258:
	xor	eax, eax
	nop	
	mov	r15b, 1
	lea	rdi, [rdi]
	jmp	.label_200
.label_277:
	mov	rdi, r14
	lea	rdi, [rdi]
	cmp	byte ptr [rsp + 0x6a], 0
	nop	
	mov	cl, r13b
	nop	
	je	.label_199
.label_285:
	lea	rsi, [rsi]
	xor	eax, eax
	xor	r15d, r15d
	jmp	.label_210
.label_199:
	mov	rsp, rsp
	cmp	byte ptr [rsp + 0xa7], 0
	lea	rsi, [rsi]
	mov	bl, cl
	nop	
	je	.label_213
.label_197:
	mov	rbp, rbp
	xor	eax, eax
	cmp	byte ptr [rsp + 0xa5], 0
	mov	r15d, 0
	mov	rsp, rsp
	je	.label_200
	lea	rsi, [rsi]
	jmp	.label_219
.label_288:
	mov	qword ptr [rsp + 0x100], 0
	cmp	rbp, -1
	jne	.label_245
	mov	rsp, rsp
	mov	rdi, r9
	mov	rbx, r9
	lea	rdi, [rdi]
	mov	rbp, rsi
	mov	rsp, rsp
	call	strlen
	mov	rsi, rbp
	mov	r9, rbx
	mov	rbp, rax
.label_245:
	mov	rsp, rsp
	mov	qword ptr [rsp + 0xc0], rbp
	lea	rax, [r9 + rsi]
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x20], rax
	nop	
	mov	r15b, 1
	xor	ebx, ebx
	lea	rsi, [rsi]
	lea	r14, [rsp + 0x100]
.label_223:
	lea	rax, [rbx + rsi]
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x28], rax
	mov	qword ptr [rsp + 0x30], rsi
	nop	
	lea	rsi, [r9 + rax]
	mov	qword ptr [rsp + 0x48], r9
	mov	rbp, rbp
	mov	rdx, rbp
	mov	rbp, rbp
	sub	rdx, rax
	lea	rsi, [rsi]
	lea	rdi, [rsp + 0xfc]
	nop	
	mov	rcx, r14
	call	rpl_mbrtowc
	lea	rdi, [rdi]
	mov	rbp, rax
	test	rbp, rbp
	je	.label_290
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x50], rbx
	cmp	rbp, -1
	lea	rsi, [rsi]
	mov	r10, qword ptr [rsp + 0x40]
	mov	rbp, rbp
	movabs	rsi, 0x20000002b
	mov	r14, qword ptr [rsp + 0x38]
	nop	
	mov	r8b, byte ptr [rsp + 0xa6]
	lea	rdi, [rdi]
	je	.label_294
	cmp	rbp, -2
	nop	
	je	.label_307
	cmp	rbp, 1
	seta	al
	and	al, byte ptr [rsp + 0x7f]
	lea	rdi, [rdi]
	movzx	eax, al
	lea	rdi, [rdi]
	cmp	eax, 1
	mov	rbp, rbp
	jne	.label_229
	mov	rax, qword ptr [rsp + 0x50]
	mov	rcx, qword ptr [rsp + 0x20]
	lea	rax, [rcx + rax]
	lea	rsi, [rsi]
	mov	ecx, 1
.label_201:
	movsx	edx, byte ptr [rax + rcx]
	lea	rdi, [rdi]
	add	edx, -0x5b
	mov	rsp, rsp
	cmp	edx, 0x21
	lea	rsi, [rsi]
	ja	.label_259
	mov	rbp, rbp
	bt	rsi, rdx
	jb	.label_198
.label_259:
	inc	rcx
	lea	rdi, [rdi]
	cmp	rcx, rbp
	jb	.label_201
.label_229:
	mov	rsp, rsp
	mov	edi, dword ptr [rsp + 0xfc]
	call	iswprint
	mov	rbp, rbp
	test	eax, eax
	mov	rsp, rsp
	jne	.label_315
	xor	r15d, r15d
.label_315:
	lea	rsi, [rsi]
	lea	rdi, [rsp + 0x100]
	mov	rbx, qword ptr [rsp + 0x50]
	lea	rdi, [rdi]
	add	rbx, rbp
	mov	r14, rdi
	nop	
	call	mbsinit
	mov	rsp, rsp
	test	eax, eax
	mov	rsp, rsp
	mov	r9, qword ptr [rsp + 0x48]
	lea	rsi, [rsi]
	mov	rbp, qword ptr [rsp + 0xc0]
	mov	rsi, qword ptr [rsp + 0x30]
	lea	rdi, [rdi]
	je	.label_223
	jmp	.label_233
.label_203:
	mov	rbp, -1
	lea	rdi, [rdi]
	xor	r15d, r15d
	jmp	.label_200
.label_264:
	mov	rdi, r14
	lea	rsi, [rsi]
	cmp	dword ptr [rsp + 0x58], 0
	lea	rdi, [rdi]
	je	.label_206
	lea	rcx, [rsi + 2]
	lea	rdi, [rdi]
	cmp	rcx, rbp
	jae	.label_206
	lea	rdi, [rdi]
	movzx	eax, byte ptr [rsi + r9 + 1]
	cmp	eax, 0x3f
	jne	.label_206
	movsx	edx, byte ptr [r9 + rcx]
	xor	eax, eax
	mov	rsp, rsp
	cmp	edx, 0x3e
	ja	.label_243
	mov	rbx, rsi
	movabs	rsi, 0x7000a38200000000
	nop	
	bt	rsi, rdx
	lea	rdi, [rdi]
	jae	.label_249
	cmp	byte ptr [rsp + 0xcf], 0
	mov	rbp, rbp
	jne	.label_213
	lea	rsi, [rsi]
	mov	r13b, byte ptr [r9 + rcx]
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_217
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rdx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rdx], 0x3f
.label_217:
	mov	rax, qword ptr [rsp + 0xf0]
	mov	rsp, rsp
	inc	rax
	lea	rsi, [rsi]
	cmp	rax, r10
	jae	.label_276
	mov	rsp, rsp
	mov	rdx, qword ptr [rsp + 0xe0]
	lea	rsi, [rsi]
	mov	byte ptr [rdx + rax], 0x22
.label_276:
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 2]
	cmp	rax, r10
	jae	.label_275
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rsp + 0xe0]
	nop	
	mov	byte ptr [rdx + rax], 0x22
.label_275:
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 3]
	nop	
	cmp	rax, r10
	lea	rsi, [rsi]
	jae	.label_251
	mov	rdx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rdx + rax], 0x3f
.label_251:
	nop	
	add	qword ptr [rsp + 0xf0], 4
	mov	rsp, rsp
	xor	eax, eax
	mov	rsp, rsp
	mov	rsi, rcx
	lea	rdi, [rdi]
	xor	r15d, r15d
	mov	rbp, rbp
	jmp	.label_200
.label_206:
	xor	eax, eax
	mov	rsp, rsp
	xor	r15d, r15d
	nop	word ptr cs:[rax + rax]
.label_200:
	test	r12b, r12b
	je	.label_250
	cmp	qword ptr [rsp + 0x140], 0
	nop	
	jne	.label_312
	jmp	.label_304
	nop	word ptr cs:[rax + rax]
.label_250:
	lea	rdi, [rdi]
	cmp	byte ptr [rsp + 0xb7], 0
	lea	rdi, [rdi]
	je	.label_304
.label_312:
	lea	rdi, [rdi]
	mov	r14, rsi
	mov	cl, r13b
	shr	cl, 5
	lea	rsi, [rsi]
	movzx	edx, cl
	mov	esi, 1
	mov	rsp, rsp
	mov	cl, r13b
	shl	esi, cl
	mov	ecx, dword ptr [rsp + 0xec]
	test	cl, cl
	jne	.label_253
	mov	rbp, rbp
	mov	rcx, qword ptr [rsp + 0x140]
	and	esi, dword ptr [rcx + rdx*4]
	mov	bl, r13b
	mov	rsi, r14
	je	.label_210
	jmp	.label_219
	nop	word ptr cs:[rax + rax]
.label_304:
	mov	ecx, dword ptr [rsp + 0xec]
	test	cl, cl
	mov	bl, r13b
	jne	.label_219
	jmp	.label_210
.label_253:
	mov	bl, r13b
	mov	rsi, r14
.label_219:
	cmp	byte ptr [rsp + 0xcf], 0
	lea	rdi, [rdi]
	jne	.label_213
	mov	rsp, rsp
	mov	r14, rdi
	cmp	r14d, 2
	jne	.label_232
	nop	
	mov	al, r11b
	mov	rsp, rsp
	and	al, 1
	jne	.label_232
	cmp	qword ptr [rsp + 0xf0], r10
	lea	rdi, [rdi]
	jae	.label_295
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rcx], 0x27
.label_295:
	mov	rax, qword ptr [rsp + 0xf0]
	inc	rax
	mov	rsp, rsp
	cmp	rax, r10
	jae	.label_239
	mov	rbp, rbp
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	rbp, rbp
	mov	byte ptr [rcx + rax], 0x24
.label_239:
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 2]
	mov	rbp, rbp
	cmp	rax, r10
	jae	.label_248
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx + rax], 0x27
.label_248:
	add	qword ptr [rsp + 0xf0], 3
	mov	r11b, 1
.label_232:
	cmp	qword ptr [rsp + 0xf0], r10
	lea	rsi, [rsi]
	jae	.label_267
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rcx], 0x5c
.label_267:
	lea	rdi, [rdi]
	inc	qword ptr [rsp + 0xf0]
	jmp	.label_235
.label_255:
	xor	r15d, r15d
	mov	rsp, rsp
	jmp	.label_200
.label_196:
	mov	rsp, rsp
	add	rcx, rsi
	xor	eax, eax
	mov	rsp, rsp
	jmp	.label_308
	nop	word ptr cs:[rax + rax]
.label_305:
	mov	rbp, rbp
	inc	qword ptr [rsp + 0xf0]
	mov	r13b, byte ptr [r9 + rsi + 1]
	mov	rsi, rdx
	mov	dl, byte ptr [rsp + 0xc0]
.label_308:
	mov	rbp, rbp
	test	dl, dl
	mov	rbp, rbp
	je	.label_293
	mov	edx, dword ptr [rsp + 0xec]
	mov	rdi, r14
	test	dl, 1
	lea	rdi, [rdi]
	je	.label_297
	mov	rsp, rsp
	cmp	qword ptr [rsp + 0xf0], r10
	mov	rsp, rsp
	jae	.label_302
	mov	rdx, qword ptr [rsp + 0xe0]
	mov	rbx, rsi
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rsp + 0xf0]
	mov	byte ptr [rdx + rsi], 0x5c
	lea	rsi, [rsi]
	mov	rsi, rbx
.label_302:
	nop	
	inc	qword ptr [rsp + 0xf0]
	mov	rbp, rbp
	mov	dword ptr [rsp + 0xec], 0
	mov	rsp, rsp
	jmp	.label_297
	nop	dword ptr [rax]
.label_293:
	lea	rdi, [rdi]
	cmp	byte ptr [rsp + 0xcf], 0
	lea	rdi, [rdi]
	jne	.label_214
	cmp	r14d, 2
	jne	.label_221
	mov	rsp, rsp
	mov	al, r11b
	mov	rsp, rsp
	and	al, 1
	jne	.label_221
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_205
	mov	rax, qword ptr [rsp + 0xe0]
	nop	
	mov	rdx, qword ptr [rsp + 0xf0]
	lea	rsi, [rsi]
	mov	byte ptr [rax + rdx], 0x27
.label_205:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0xf0]
	mov	rsp, rsp
	inc	rax
	mov	rsp, rsp
	cmp	rax, r10
	jae	.label_291
	mov	rbp, rbp
	mov	rdx, qword ptr [rsp + 0xe0]
	nop	
	mov	byte ptr [rdx + rax], 0x24
.label_291:
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 0xf0]
	nop	
	lea	rax, [rax + 2]
	mov	rsp, rsp
	cmp	rax, r10
	jae	.label_226
	mov	rdx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rdx + rax], 0x27
.label_226:
	lea	rsi, [rsi]
	add	qword ptr [rsp + 0xf0], 3
	mov	r11b, 1
.label_221:
	cmp	qword ptr [rsp + 0xf0], r10
	nop	
	jae	.label_254
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rdx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rdx], 0x5c
.label_254:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rdi, [rdi]
	inc	rax
	mov	rbp, rbp
	cmp	rax, r10
	jae	.label_284
	mov	dl, r13b
	mov	rsp, rsp
	shr	dl, 6
	or	dl, 0x30
	mov	rsp, rsp
	mov	rdi, rsi
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rsp + 0xe0]
	mov	byte ptr [rsi + rax], dl
	lea	rsi, [rsi]
	mov	rsi, rdi
.label_284:
	mov	rbp, rbp
	mov	rdi, r14
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 2]
	cmp	rax, r10
	nop	
	jae	.label_260
	mov	dl, r13b
	shr	dl, 3
	nop	
	and	dl, 7
	or	dl, 0x30
	nop	
	mov	rbx, rsi
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rsp + 0xe0]
	mov	byte ptr [rsi + rax], dl
	mov	rsi, rbx
.label_260:
	lea	rsi, [rsi]
	add	qword ptr [rsp + 0xf0], 3
	mov	rsp, rsp
	and	r13b, 7
	or	r13b, 0x30
	mov	al, 1
.label_297:
	mov	rsp, rsp
	lea	rdx, [rsi + 1]
	cmp	rcx, rdx
	jbe	.label_210
	test	r11b, 1
	lea	rdi, [rdi]
	je	.label_287
	mov	bl, al
	lea	rdi, [rdi]
	and	bl, 1
	mov	r14, rdi
	jne	.label_230
	lea	rsi, [rsi]
	mov	rbx, rsi
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_292
	mov	rsp, rsp
	mov	rsi, qword ptr [rsp + 0xe0]
	mov	rdi, qword ptr [rsp + 0xf0]
	mov	byte ptr [rsi + rdi], 0x27
.label_292:
	mov	rsi, qword ptr [rsp + 0xf0]
	nop	
	inc	rsi
	cmp	rsi, r10
	nop	
	jae	.label_303
	nop	
	mov	rdi, qword ptr [rsp + 0xe0]
	mov	rsp, rsp
	mov	byte ptr [rdi + rsi], 0x27
.label_303:
	add	qword ptr [rsp + 0xf0], 2
	mov	rbp, rbp
	xor	r11d, r11d
	mov	rsi, rbx
	lea	rdi, [rdi]
	jmp	.label_230
	nop	word ptr cs:[rax + rax]
.label_287:
	lea	rsi, [rsi]
	mov	r14, rdi
.label_230:
	mov	rbp, rbp
	cmp	qword ptr [rsp + 0xf0], r10
	lea	rsi, [rsi]
	jae	.label_305
	lea	rsi, [rsi]
	mov	rdi, rsi
	mov	rsi, qword ptr [rsp + 0xe0]
	mov	rbx, qword ptr [rsp + 0xf0]
	nop	
	mov	byte ptr [rsi + rbx], r13b
	mov	rsp, rsp
	mov	rsi, rdi
	mov	rbp, rbp
	jmp	.label_305
	nop	word ptr cs:[rax + rax]
.label_210:
	lea	rsi, [rsi]
	test	r11b, 1
	je	.label_215
	lea	rsi, [rsi]
	and	al, 1
	jne	.label_215
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_296
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rsp, rsp
	mov	rcx, qword ptr [rsp + 0xf0]
	nop	
	mov	byte ptr [rax + rcx], 0x27
.label_296:
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rsi, [rsi]
	inc	rax
	lea	rdi, [rdi]
	cmp	rax, r10
	mov	r14, rdi
	jae	.label_225
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx + rax], 0x27
.label_225:
	lea	rsi, [rsi]
	add	qword ptr [rsp + 0xf0], 2
	lea	rdi, [rdi]
	xor	r11d, r11d
	nop	
	mov	bl, r13b
	lea	rsi, [rsi]
	jmp	.label_235
	nop	word ptr cs:[rax + rax]
.label_215:
	lea	rsi, [rsi]
	mov	bl, r13b
	mov	r14, rdi
.label_235:
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_222
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	rbp, rbp
	mov	byte ptr [rax + rcx], bl
	lea	rdi, [rdi]
	jmp	.label_222
.label_301:
	nop	
	mov	rcx, qword ptr [rsp + 0xf0]
	lea	rsi, [rsi]
	jmp	.label_252
.label_282:
	mov	rcx, qword ptr [rsp + 0xf0]
.label_252:
	cmp	rcx, r10
	jae	.label_261
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0xe0]
	mov	byte ptr [rax + rcx], 0x5c
.label_261:
	lea	rsi, [rsi]
	lea	rax, [rcx + 1]
	mov	qword ptr [rsp + 0xf0], rax
	mov	al, 1
	lea	rsi, [rsi]
	mov	r13b, 0x30
	cmp	edi, 2
	lea	rsi, [rsi]
	je	.label_268
	lea	rdx, [rsi + 1]
	lea	rsi, [rsi]
	cmp	rdx, rbp
	jae	.label_256
	nop	
	mov	dl, byte ptr [r9 + rdx]
	mov	rbp, rbp
	add	dl, 0xd0
	nop	
	movzx	edx, dl
	mov	rbp, rbp
	cmp	edx, 9
	mov	rsp, rsp
	ja	.label_280
	cmp	qword ptr [rsp + 0xf0], r10
	lea	rsi, [rsi]
	jae	.label_220
	mov	rsp, rsp
	mov	rdx, qword ptr [rsp + 0xe0]
	mov	rbx, rsi
	mov	rsp, rsp
	mov	rsi, qword ptr [rsp + 0xf0]
	mov	byte ptr [rdx + rsi], 0x30
	nop	
	mov	rsi, rbx
.label_220:
	lea	rdi, [rdi]
	lea	rdx, [rcx + 2]
	cmp	rdx, r10
	jae	.label_300
	lea	rsi, [rsi]
	mov	rbx, rsi
	mov	rsi, qword ptr [rsp + 0xe0]
	nop	
	mov	byte ptr [rsi + rdx], 0x30
	mov	rsp, rsp
	mov	rsi, rbx
.label_300:
	mov	rsp, rsp
	add	rcx, 3
	xor	r15d, r15d
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0xf0], rcx
	lea	rdi, [rdi]
	jmp	.label_200
.label_268:
	xor	r15d, r15d
	mov	rsp, rsp
	jmp	.label_200
.label_256:
	mov	rbp, rbp
	xor	r15d, r15d
	mov	rbp, rbp
	jmp	.label_200
.label_280:
	xor	r15d, r15d
	jmp	.label_200
.label_290:
	lea	rsi, [rsi]
	mov	r9, qword ptr [rsp + 0x48]
	mov	rbp, qword ptr [rsp + 0xc0]
	lea	rdi, [rdi]
	mov	r8b, byte ptr [rsp + 0xa6]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rsp + 0x30]
	jmp	.label_237
.label_294:
	xor	r15d, r15d
	nop	
	mov	r9, qword ptr [rsp + 0x48]
	mov	rbp, qword ptr [rsp + 0xc0]
	mov	rsp, rsp
	jmp	.label_234
.label_307:
	lea	rsi, [rsi]
	mov	rbp, qword ptr [rsp + 0xc0]
	cmp	qword ptr [rsp + 0x28], rbp
	mov	rbp, rbp
	jae	.label_211
	mov	r9, qword ptr [rsp + 0x48]
	mov	rsi, qword ptr [rsp + 0x30]
	mov	rbx, qword ptr [rsp + 0x50]
.label_216:
	mov	rax, qword ptr [rsp + 0x20]
	mov	rbp, rbp
	cmp	byte ptr [rax + rbx], 0
	nop	
	je	.label_231
	lea	rax, [rsi + rbx + 1]
	lea	rsi, [rsi]
	inc	rbx
	cmp	rax, rbp
	jb	.label_216
	xor	r15d, r15d
	nop	
	jmp	.label_237
.label_211:
	lea	rsi, [rsi]
	xor	r15d, r15d
	mov	r9, qword ptr [rsp + 0x48]
.label_234:
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rsp + 0x30]
	mov	rbx, qword ptr [rsp + 0x50]
.label_237:
	mov	byte ptr [rsp + 0xa6], r8b
	lea	rdi, [rdi]
	jmp	.label_233
.label_231:
	xor	r15d, r15d
	lea	rdi, [rdi]
	jmp	.label_237
.label_243:
	lea	rdi, [rdi]
	xor	r15d, r15d
	lea	rdi, [rdi]
	jmp	.label_200
.label_249:
	mov	rsp, rsp
	xor	r15d, r15d
	nop	
	mov	rsi, rbx
	jmp	.label_200
	nop	word ptr cs:[rax + rax]
.label_271:
	cmp	qword ptr [rsp + 0xf0], 0
	mov	rbp, rbp
	setne	al
	cmp	r14d, 2
	setne	dl
	mov	rcx, qword ptr [rsp + 0x98]
	lea	rdi, [rdi]
	and	cl, 1
	je	.label_244
	lea	rdi, [rdi]
	or	dl, al
	lea	rdi, [rdi]
	je	.label_214
.label_244:
	nop	
	mov	qword ptr [rsp + 0xc0], rbp
	mov	rsp, rsp
	mov	r12, r9
	nop	
	test	cl, cl
	setne	al
	lea	rdi, [rdi]
	cmp	r14d, 2
	nop	
	setne	dl
	mov	rsi, qword ptr [rsp + 0x70]
	lea	rdi, [rdi]
	test	sil, 1
	lea	rdi, [rdi]
	je	.label_204
	lea	rdi, [rdi]
	or	dl, al
	jne	.label_204
	lea	rdi, [rdi]
	test	r8b, 1
	jne	.label_289
	cmp	qword ptr [rsp + 0x80], 0
	je	.label_204
	lea	rdi, [rdi]
	test	r10, r10
	nop	
	mov	r13d, r14d
	mov	al, byte ptr [rsp + 0xa6]
	mov	rsp, rsp
	mov	rdx, qword ptr [rsp + 0x98]
	lea	rdi, [rdi]
	mov	r15b, dl
	lea	rdi, [rdi]
	mov	rbp, qword ptr [rsp + 0x80]
	je	.label_283
.label_204:
	nop	
	mov	rdx, qword ptr [rsp + 0xa8]
	lea	rdi, [rdi]
	test	rdx, rdx
	je	.label_299
	lea	rsi, [rsi]
	test	cl, cl
	jne	.label_299
	lea	rdi, [rdi]
	mov	al, byte ptr [rdx]
	test	al, al
	je	.label_299
	inc	rdx
	nop	dword ptr [rax + rax]
.label_311:
	nop	
	cmp	qword ptr [rsp + 0xf0], r10
	mov	rsp, rsp
	jae	.label_306
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	rbp, rbp
	mov	rsi, qword ptr [rsp + 0xf0]
	mov	byte ptr [rcx + rsi], al
.label_306:
	nop	
	inc	qword ptr [rsp + 0xf0]
	lea	rsi, [rsi]
	mov	al, byte ptr [rdx]
	lea	rdi, [rdi]
	inc	rdx
	test	al, al
	jne	.label_311
.label_299:
	nop	
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_314
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rcx], 0
	jmp	.label_314
.label_213:
	lea	rdi, [rdi]
	mov	rdx, r9
	lea	rsi, [rsi]
	mov	r9d, dword ptr [rsp + 0x6c]
	mov	r8b, byte ptr [rsp + 0xa6]
	mov	r14, rdi
.label_241:
	lea	rsi, [rsi]
	test	r8b, 1
	lea	rsi, [rsi]
	mov	r8d, 4
	cmove	r8d, r14d
	lea	rsi, [rsi]
	cmp	r14d, 2
	mov	rbp, rbp
	cmovne	r8d, r14d
	nop	
	and	r9d, 0xfffffffd
	mov	rax, qword ptr [rsp + 0x88]
	mov	qword ptr [rsp + 0x10], rax
	nop	
	mov	rax, qword ptr [rsp + 0x90]
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 8], rax
	mov	qword ptr [rsp], 0
	mov	rbp, rbp
	mov	rdi, qword ptr [rsp + 0xe0]
	lea	rdi, [rdi]
	mov	rsi, r10
	mov	rcx, rbp
.label_262:
	lea	rdi, [rdi]
	call	quotearg_buffer_restyled
	mov	qword ptr [rsp + 0xf0], rax
.label_314:
	mov	rax, qword ptr [rsp + 0xf0]
	add	rsp, 0x108
	nop	
	pop	rbx
	pop	r12
	mov	rsp, rsp
	pop	r13
	pop	r14
	pop	r15
	mov	rsp, rsp
	pop	rbp
	mov	rbp, rbp
	ret	
.label_198:
	lea	rdi, [rdi]
	mov	r9d, dword ptr [rsp + 0x6c]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rsp + 0x48]
	mov	rbp, qword ptr [rsp + 0xc0]
	jmp	.label_241
.label_214:
	lea	rsi, [rsi]
	mov	rdx, r9
	mov	r9d, dword ptr [rsp + 0x6c]
	mov	r8b, byte ptr [rsp + 0xa6]
	mov	rbp, rbp
	jmp	.label_241
.label_289:
	mov	rax, qword ptr [rsp + 0x88]
	mov	qword ptr [rsp + 0x10], rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp + 0x90]
	mov	qword ptr [rsp + 8], rax
	mov	rax, qword ptr [rsp + 0x140]
	mov	rbp, rbp
	mov	qword ptr [rsp], rax
	mov	r8d, 5
	nop	
	mov	rdi, qword ptr [rsp + 0xe0]
	mov	rbp, rbp
	mov	rsi, qword ptr [rsp + 0x80]
	lea	rdi, [rdi]
	mov	rdx, r12
	nop	
	mov	rcx, qword ptr [rsp + 0xc0]
	lea	rdi, [rdi]
	mov	r9d, dword ptr [rsp + 0x6c]
	jmp	.label_262
.label_265:
	lea	rdi, [rdi]
	call	abort
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406570
	.globl quotearg_alloc
	.type quotearg_alloc, @function
quotearg_alloc:

	lea	rdi, [rdi]
	mov	rax, rdx
	lea	rsi, [rsi]
	xor	edx, edx
	mov	rcx, rax
	mov	rbp, rbp
	jmp	quotearg_alloc_mem
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406590

	.globl quotearg_alloc_mem
	.type quotearg_alloc_mem, @function
quotearg_alloc_mem:
	mov	rbp, rbp
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x48
	lea	rsi, [rsi]
	mov	rbx, rdx
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x30], rbx
	mov	rsp, rsp
	mov	r14, rsi
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x28], r14
	mov	r15, rdi
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x20], r15
	test	rcx, rcx
	mov	r12d, OFFSET FLAT:default_quoting_options
	lea	rsi, [rsi]
	cmovne	r12, rcx
	mov	rbp, rbp
	call	__errno_location
	mov	qword ptr [rsp + 0x38], rax
	mov	rsp, rsp
	mov	ecx, dword ptr [rax]
	mov	rbp, rbp
	mov	dword ptr [rsp + 0x44], ecx
	test	rbx, rbx
	lea	rsi, [rsi]
	sete	al
	movzx	ebp, al
	lea	rsi, [rsi]
	or	ebp, dword ptr [r12 + 4]
	mov	rbp, rbp
	mov	r8d, dword ptr [r12]
	lea	r13, [r12 + 8]
	mov	rax, qword ptr [r12 + 0x28]
	mov	rcx, qword ptr [r12 + 0x30]
	nop	
	mov	qword ptr [rsp + 0x10], rcx
	mov	qword ptr [rsp + 8], rax
	mov	rsp, rsp
	mov	qword ptr [rsp], r13
	xor	edi, edi
	mov	rbp, rbp
	xor	esi, esi
	mov	rdx, r15
	mov	rcx, r14
	lea	rsi, [rsi]
	mov	r9d, ebp
	lea	rdi, [rdi]
	call	quotearg_buffer_restyled
	lea	rdi, [rdi]
	mov	rbx, rax
	lea	r15, [rbx + 1]
	lea	rsi, [rsi]
	mov	rdi, r15
	call	xcharalloc
	nop	
	mov	r14, rax
	lea	rsi, [rsi]
	mov	r8d, dword ptr [r12]
	lea	rsi, [rsi]
	mov	rax, qword ptr [r12 + 0x28]
	mov	rcx, qword ptr [r12 + 0x30]
	mov	qword ptr [rsp + 0x10], rcx
	mov	rbp, rbp
	mov	qword ptr [rsp + 8], rax
	mov	rbp, rbp
	mov	qword ptr [rsp], r13
	mov	rdi, r14
	mov	rbp, rbp
	mov	rsi, r15
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rsp + 0x20]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rsp + 0x28]
	mov	r9d, ebp
	call	quotearg_buffer_restyled
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp + 0x30]
	lea	rdi, [rdi]
	test	rax, rax
	mov	ecx, dword ptr [rsp + 0x44]
	mov	rdx, qword ptr [rsp + 0x38]
	mov	dword ptr [rdx], ecx
	je	.label_316
	mov	qword ptr [rax], rbx
.label_316:
	mov	rax, r14
	mov	rsp, rsp
	add	rsp, 0x48
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4066e0
	.globl quotearg_free
	.type quotearg_free, @function
quotearg_free:

	push	r15
	push	r14
	push	rbx
	nop	
	mov	r14,  qword ptr [word ptr [rip + slotvec]]
	cmp	dword ptr [dword ptr [rip + nslots]],  2
	jl	.label_317
	lea	r15, [r14 + 0x18]
	mov	ebx, 1
	nop	
.label_321:
	mov	rdi, qword ptr [r15]
	nop	
	call	free
	mov	rbp, rbp
	inc	rbx
	lea	rsi, [rsi]
	movsxd	rax,  dword ptr [dword ptr [rip + nslots]]
	lea	rsi, [rsi]
	add	r15, 0x10
	cmp	rbx, rax
	mov	rsp, rsp
	jl	.label_321
.label_317:
	nop	
	mov	rdi, qword ptr [r14 + 8]
	lea	rsi, [rsi]
	mov	eax, OFFSET FLAT:slot0
	mov	rsp, rsp
	cmp	rdi, rax
	lea	rdi, [rdi]
	je	.label_320
	call	free
	lea	rdi, [rdi]
	mov	qword ptr [word ptr [rip + slotvec0]],  0x100
	mov	rsp, rsp
	mov	qword ptr [word ptr [rip + label_318]], OFFSET FLAT:slot0
.label_320:
	mov	eax, OFFSET FLAT:slotvec0
	cmp	r14, rax
	je	.label_319
	mov	rdi, r14
	call	free
	mov	rbp, rbp
	mov	qword ptr [word ptr [rip + slotvec]], OFFSET FLAT:slotvec0
.label_319:
	mov	dword ptr [dword ptr [rip + nslots]],  1
	pop	rbx
	pop	r14
	nop	
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4067a0

	.globl quotearg_n
	.type quotearg_n, @function
quotearg_n:
	mov	rdx, -1
	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	nop	
	.section	.text
	.align	32
	#Procedure 0x4067b0

	.globl quotearg_n_options
	.type quotearg_n_options, @function
quotearg_n_options:
	nop	
	push	rbp
	push	r15
	push	r14
	push	r13
	mov	rsp, rsp
	push	r12
	push	rbx
	lea	rdi, [rdi]
	sub	rsp, 0x48
	nop	
	mov	r12, rcx
	mov	r14, rdx
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x40], rsi
	mov	ebx, edi
	call	__errno_location
	test	ebx, ebx
	js	.label_328
	mov	ecx, dword ptr [rax]
	mov	rbp, rbp
	mov	rbp,  qword ptr [word ptr [rip + slotvec]]
	cmp	dword ptr [dword ptr [rip + nslots]],  ebx
	jle	.label_323
	lea	rdi, [rdi]
	mov	dword ptr [rsp + 0x2c], ecx
	mov	qword ptr [rsp + 0x30], rax
	lea	rdi, [rdi]
	jmp	.label_326
.label_323:
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x38], r14
	mov	rsp, rsp
	cmp	ebx, 0x7fffffff
	mov	rsp, rsp
	je	.label_324
	mov	dword ptr [rsp + 0x2c], ecx
	mov	qword ptr [rsp + 0x30], rax
	mov	rsp, rsp
	mov	r13d, OFFSET FLAT:slotvec0
	xor	edi, edi
	cmp	rbp, r13
	cmovne	rdi, rbp
	mov	rsp, rsp
	lea	r15d, [rbx + 1]
	mov	rbp, rbp
	movsxd	rsi, ebx
	shl	rsi, 4
	add	rsi, 0x10
	call	xrealloc
	mov	r14, rax
	cmp	rbp, r13
	mov	qword ptr [word ptr [rip + slotvec]],  r14
	jne	.label_327
	movups	xmm0,  xmmword ptr [word ptr [rip + slotvec0]]
	movups	xmmword ptr [r14], xmm0
.label_327:
	mov	rsp, rsp
	movsxd	rax,  dword ptr [dword ptr [rip + nslots]]
	movsxd	rbp, r15d
	mov	rdx, rbp
	sub	rdx, rax
	shl	rax, 4
	mov	rdi, r14
	lea	rdi, [rdi]
	add	rdi, rax
	lea	rsi, [rsi]
	shl	rdx, 4
	xor	esi, esi
	call	memset
	mov	dword ptr [dword ptr [rip + nslots]],  ebp
	mov	rbp, rbp
	mov	rbp, r14
	mov	r14, qword ptr [rsp + 0x38]
.label_326:
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x38], r14
	mov	rsp, rsp
	movsxd	r13, ebx
	mov	rsp, rsp
	shl	r13, 4
	mov	r15, qword ptr [rbp + r13]
	mov	rbx, qword ptr [rbp + r13 + 8]
	nop	
	mov	rcx, r12
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x20], rcx
	mov	r8d, dword ptr [rcx]
	mov	r12d, dword ptr [rcx + 4]
	or	r12d, 1
	mov	rsp, rsp
	lea	rdx, [rcx + 8]
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x18], rdx
	lea	rdi, [rdi]
	mov	rax, qword ptr [rcx + 0x28]
	mov	rcx, qword ptr [rcx + 0x30]
	mov	qword ptr [rsp + 0x10], rcx
	mov	qword ptr [rsp + 8], rax
	lea	rsi, [rsi]
	mov	qword ptr [rsp], rdx
	lea	rsi, [rsi]
	mov	rdi, rbx
	mov	rsi, r15
	mov	rdx, qword ptr [rsp + 0x40]
	nop	
	mov	rcx, r14
	lea	rdi, [rdi]
	mov	r9d, r12d
	lea	rdi, [rdi]
	call	quotearg_buffer_restyled
	nop	
	mov	r14, rax
	cmp	r15, r14
	ja	.label_325
	nop	
	lea	rax, [rbp + r13]
	lea	rsi, [rsi]
	lea	rbp, [rbp + r13 + 8]
	inc	r14
	lea	rdi, [rdi]
	mov	qword ptr [rax], r14
	mov	rsp, rsp
	mov	eax, OFFSET FLAT:slot0
	cmp	rbx, rax
	mov	rbp, rbp
	je	.label_322
	mov	rdi, rbx
	lea	rsi, [rsi]
	call	free
.label_322:
	mov	rbp, rbp
	mov	rdi, r14
	mov	rsp, rsp
	call	xcharalloc
	mov	rbx, rax
	nop	
	mov	qword ptr [rbp], rbx
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rsp + 0x20]
	lea	rdi, [rdi]
	mov	r8d, dword ptr [rcx]
	nop	
	mov	rax, qword ptr [rcx + 0x28]
	mov	rcx, qword ptr [rcx + 0x30]
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x10], rcx
	mov	qword ptr [rsp + 8], rax
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0x18]
	mov	rbp, rbp
	mov	qword ptr [rsp], rax
	lea	rdi, [rdi]
	mov	rdi, rbx
	lea	rdi, [rdi]
	mov	rsi, r14
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rsp + 0x40]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rsp + 0x38]
	mov	r9d, r12d
	lea	rdi, [rdi]
	call	quotearg_buffer_restyled
.label_325:
	mov	rax, qword ptr [rsp + 0x30]
	lea	rsi, [rsi]
	mov	ecx, dword ptr [rsp + 0x2c]
	mov	dword ptr [rax], ecx
	mov	rax, rbx
	add	rsp, 0x48
	mov	rsp, rsp
	pop	rbx
	mov	rbp, rbp
	pop	r12
	pop	r13
	lea	rsi, [rsi]
	pop	r14
	lea	rdi, [rdi]
	pop	r15
	pop	rbp
	ret	
.label_328:
	lea	rdi, [rdi]
	call	abort
.label_324:
	lea	rdi, [rdi]
	call	xalloc_die
	nop	
	.section	.text
	.align	32
	#Procedure 0x406a20

	.globl quotearg_n_mem
	.type quotearg_n_mem, @function
quotearg_n_mem:
	mov	rsp, rsp
	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x406a30
	.globl quotearg
	.type quotearg, @function
quotearg:

	nop
	mov	rax, rdi
	lea	rsi, [rsi]
	xor	edi, edi
	lea	rsi, [rsi]
	mov	rsi, rax
	jmp	quotearg_n
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406a50
	.globl quotearg_mem
	.type quotearg_mem, @function
quotearg_mem:

	mov	rax, rsi
	lea	rdi, [rdi]
	mov	rcx, rdi
	lea	rdi, [rdi]
	xor	edi, edi
	mov	rsi, rcx
	lea	rsi, [rsi]
	mov	rdx, rax
	jmp	quotearg_n_mem
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x406a70

	.globl quotearg_n_style
	.type quotearg_n_style, @function
quotearg_n_style:
	nop
	push	rbp
	mov	rbp, rbp
	push	r14
	lea	rdi, [rdi]
	push	rbx
	sub	rsp, 0x40
	mov	rsp, rsp
	mov	rbx, rdx
	mov	ebp, edi
	nop	
	lea	r14, [rsp + 8]
	lea	rdi, [rdi]
	mov	rdi, r14
	call	quoting_options_from_style
	mov	rdx, -1
	mov	edi, ebp
	mov	rsi, rbx
	mov	rcx, r14
	call	quotearg_n_options
	add	rsp, 0x40
	lea	rdi, [rdi]
	pop	rbx
	lea	rdi, [rdi]
	pop	r14
	lea	rsi, [rsi]
	pop	rbp
	mov	rbp, rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406ad0

	.globl quoting_options_from_style
	.type quoting_options_from_style, @function
quoting_options_from_style:
	mov	rbp, rbp
	sub	rsp, 0x38
	xorps	xmm0, xmm0
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movaps	xmmword ptr [rsp], xmm0
	mov	rsp, rsp
	mov	dword ptr [rsp + 0x30], 0
	cmp	esi, 0xa
	mov	rbp, rbp
	je	.label_329
	mov	dword ptr [rdi], esi
	nop	
	mov	eax, dword ptr [rsp + 0x30]
	mov	dword ptr [rdi + 0x34], eax
	lea	rsi, [rsi]
	movaps	xmm0, xmmword ptr [rsp]
	movaps	xmm1, xmmword ptr [rsp + 0x10]
	nop	
	movaps	xmm2, xmmword ptr [rsp + 0x20]
	movups	xmmword ptr [rdi + 0x24], xmm2
	movups	xmmword ptr [rdi + 0x14], xmm1
	lea	rsi, [rsi]
	movups	xmmword ptr [rdi + 4], xmm0
	lea	rdi, [rdi]
	mov	rax, rdi
	add	rsp, 0x38
	mov	rbp, rbp
	ret	
.label_329:
	lea	rdi, [rdi]
	call	abort
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x406b40

	.globl quotearg_n_style_mem
	.type quotearg_n_style_mem, @function
quotearg_n_style_mem:
	mov	rbp, rbp
	push	rbp
	lea	rsi, [rsi]
	push	r15
	push	r14
	mov	rsp, rsp
	push	rbx
	lea	rdi, [rdi]
	sub	rsp, 0x38
	nop	
	mov	r14, rcx
	lea	rdi, [rdi]
	mov	rbx, rdx
	lea	rsi, [rsi]
	mov	ebp, edi
	lea	rsi, [rsi]
	lea	r15, [rsp]
	nop	
	mov	rdi, r15
	call	quoting_options_from_style
	mov	edi, ebp
	nop	
	mov	rsi, rbx
	nop	
	mov	rdx, r14
	mov	rcx, r15
	call	quotearg_n_options
	mov	rsp, rsp
	add	rsp, 0x38
	mov	rsp, rsp
	pop	rbx
	mov	rbp, rbp
	pop	r14
	nop	
	pop	r15
	mov	rbp, rbp
	pop	rbp
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x406ba0

	.globl quotearg_style
	.type quotearg_style, @function
quotearg_style:
	mov	rax, rsi
	mov	rbp, rbp
	mov	ecx, edi
	xor	edi, edi
	mov	esi, ecx
	mov	rbp, rbp
	mov	rdx, rax
	jmp	quotearg_n_style
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406bc0
	.globl quotearg_style_mem
	.type quotearg_style_mem, @function
quotearg_style_mem:

	mov	rax, rdx
	mov	rcx, rsi
	lea	rsi, [rsi]
	mov	edx, edi
	xor	edi, edi
	mov	esi, edx
	mov	rdx, rcx
	mov	rcx, rax
	jmp	quotearg_n_style_mem
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406be0

	.globl quotearg_char_mem
	.type quotearg_char_mem, @function
quotearg_char_mem:
	push	r15
	push	r14
	mov	rbp, rbp
	push	rbx
	mov	rbp, rbp
	sub	rsp, 0x40
	mov	eax, edx
	lea	rdi, [rdi]
	mov	r14, rsi
	mov	rbx, rdi
	mov	rcx,  qword ptr [word ptr [rip + label_330]]
	mov	qword ptr [rsp + 0x30], rcx
	nop	
	movups	xmm0,  xmmword ptr [word ptr [rip + label_331]]
	lea	rdi, [rdi]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	lea	rdi, [rdi]
	movups	xmm0,  xmmword ptr [word ptr [rip + label_332]]
	lea	rsi, [rsi]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	nop	
	movups	xmm0,  xmmword ptr [word ptr [rip + default_quoting_options]]
	movaps	xmmword ptr [rsp], xmm0
	mov	rbp, rbp
	lea	r15, [rsp]
	lea	rsi, [rsi]
	mov	edx, 1
	mov	rsp, rsp
	mov	rdi, r15
	mov	esi, eax
	mov	rbp, rbp
	call	set_char_quoting
	lea	rsi, [rsi]
	xor	edi, edi
	mov	rsi, rbx
	nop	
	mov	rdx, r14
	mov	rsp, rsp
	mov	rcx, r15
	call	quotearg_n_options
	nop	
	add	rsp, 0x40
	lea	rsi, [rsi]
	pop	rbx
	nop	
	pop	r14
	nop	
	pop	r15
	lea	rsi, [rsi]
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x406c80

	.globl quotearg_char
	.type quotearg_char, @function
quotearg_char:
	mov	eax, esi
	lea	rdi, [rdi]
	mov	rsi, -1
	lea	rdi, [rdi]
	mov	edx, eax
	mov	rbp, rbp
	jmp	quotearg_char_mem
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x406ca0

	.globl quotearg_colon
	.type quotearg_colon, @function
quotearg_colon:
	nop	
	mov	esi, 0x3a
	mov	rbp, rbp
	jmp	quotearg_char
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406cb0
	.globl quotearg_colon_mem
	.type quotearg_colon_mem, @function
quotearg_colon_mem:

	mov	edx, 0x3a
	jmp	quotearg_char_mem
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406cc0

	.globl quotearg_n_style_colon
	.type quotearg_n_style_colon, @function
quotearg_n_style_colon:
	push	rbp
	push	r14
	push	rbx
	sub	rsp, 0x40
	mov	r14, rdx
	mov	ebp, edi
	lea	rsi, [rsi]
	lea	rbx, [rsp + 8]
	mov	rdi, rbx
	mov	rbp, rbp
	call	quoting_options_from_style
	nop	
	mov	esi, 0x3a
	lea	rdi, [rdi]
	mov	edx, 1
	mov	rsp, rsp
	mov	rdi, rbx
	mov	rbp, rbp
	call	set_char_quoting
	mov	rdx, -1
	mov	edi, ebp
	lea	rsi, [rsi]
	mov	rsi, r14
	mov	rcx, rbx
	mov	rsp, rsp
	call	quotearg_n_options
	mov	rsp, rsp
	add	rsp, 0x40
	nop	
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406d30

	.globl quotearg_n_custom
	.type quotearg_n_custom, @function
quotearg_n_custom:
	lea	rsi, [rsi]
	mov	r8, -1
	nop	
	jmp	quotearg_n_custom_mem
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x406d40

	.globl quotearg_n_custom_mem
	.type quotearg_n_custom_mem, @function
quotearg_n_custom_mem:
	mov	rsp, rsp
	push	rbp
	lea	rdi, [rdi]
	push	r15
	push	r14
	push	rbx
	lea	rsi, [rsi]
	sub	rsp, 0x38
	nop	
	mov	r14, r8
	mov	rbp, rbp
	mov	rbx, rcx
	mov	ebp, edi
	mov	rax,  qword ptr [word ptr [rip + label_330]]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0,  xmmword ptr [word ptr [rip + label_331]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_332]]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	mov	rbp, rbp
	movups	xmm0,  xmmword ptr [word ptr [rip + default_quoting_options]]
	mov	rbp, rbp
	movaps	xmmword ptr [rsp], xmm0
	lea	r15, [rsp]
	mov	rdi, r15
	call	set_custom_quoting
	mov	edi, ebp
	nop	
	mov	rsi, rbx
	mov	rbp, rbp
	mov	rdx, r14
	mov	rcx, r15
	mov	rsp, rsp
	call	quotearg_n_options
	lea	rsi, [rsi]
	add	rsp, 0x38
	pop	rbx
	pop	r14
	pop	r15
	mov	rsp, rsp
	pop	rbp
	nop	
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x406dd0
	.globl quotearg_custom
	.type quotearg_custom, @function
quotearg_custom:

	mov	rsp, rsp
	mov	rax, rdx
	mov	rsp, rsp
	mov	rcx, rsi
	mov	rdx, rdi
	nop	
	xor	edi, edi
	mov	rsi, rdx
	lea	rdi, [rdi]
	mov	rdx, rcx
	mov	rbp, rbp
	mov	rcx, rax
	lea	rsi, [rsi]
	jmp	quotearg_n_custom
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x406e00
	.globl quotearg_custom_mem
	.type quotearg_custom_mem, @function
quotearg_custom_mem:

	lea	rdi, [rdi]
	mov	rax, rcx
	mov	rcx, rdx
	mov	rbp, rbp
	mov	rdx, rsi
	mov	rsp, rsp
	mov	rsi, rdi
	mov	rbp, rbp
	xor	edi, edi
	nop	
	mov	r8, rax
	mov	rsp, rsp
	jmp	quotearg_n_custom_mem
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406e30

	.globl quote_n_mem
	.type quote_n_mem, @function
quote_n_mem:
	mov	ecx, OFFSET FLAT:quote_quoting_options
	jmp	quotearg_n_options
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406e40
	.globl quote_mem
	.type quote_mem, @function
quote_mem:

	mov	rax, rsi
	nop	
	mov	rcx, rdi
	xor	edi, edi
	lea	rdi, [rdi]
	mov	rsi, rcx
	mov	rdx, rax
	lea	rsi, [rsi]
	jmp	quote_n_mem
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406e60

	.globl quote_n
	.type quote_n, @function
quote_n:
	mov	rdx, -1
	jmp	quote_n_mem
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x406e70

	.globl quote
	.type quote, @function
quote:
	mov	rax, rdi
	lea	rsi, [rsi]
	xor	edi, edi
	mov	rsi, rax
	lea	rdi, [rdi]
	jmp	quote_n
	.section	.text
	.align	32
	#Procedure 0x406e80

	.globl gettext_quote
	.type gettext_quote, @function
gettext_quote:
	push	rbp
	push	r14
	push	rbx
	nop	
	sub	rsp, 0x10
	mov	r14d, esi
	lea	rsi, [rsi]
	mov	rbx, rdi
	lea	rsi, [rsi]
	xor	edi, edi
	mov	edx, 5
	mov	rsi, rbx
	mov	rbp, rbp
	call	dcgettext
	cmp	rax, rbx
	mov	rsp, rsp
	jne	.label_333
	mov	rsp, rsp
	call	locale_charset
	mov	rbp, rax
	mov	dword ptr [rsp + 8], 0
	mov	rsp, rsp
	mov	dword ptr [rsp], 0
	nop	
	mov	esi, 0x55
	mov	rbp, rbp
	mov	edx, 0x54
	mov	rsp, rsp
	mov	ecx, 0x46
	mov	r8d, 0x2d
	mov	r9d, 0x38
	mov	rdi, rbp
	call	strcaseeq0
	mov	rbp, rbp
	test	eax, eax
	lea	rdi, [rdi]
	je	.label_334
	mov	eax, OFFSET FLAT:.str.14_0
	movzx	ecx, byte ptr [rbx]
	lea	rdi, [rdi]
	cmp	ecx, 0x60
	je	.label_333
	nop	
	mov	eax, OFFSET FLAT:.str.15_0
	jmp	.label_333
.label_334:
	lea	rdi, [rdi]
	mov	dword ptr [rsp + 8], 0x30
	mov	dword ptr [rsp], 0x33
	lea	rdi, [rdi]
	mov	esi, 0x47
	nop	
	mov	edx, 0x42
	mov	ecx, 0x31
	mov	rbp, rbp
	mov	r8d, 0x38
	mov	rsp, rsp
	mov	r9d, 0x30
	mov	rdi, rbp
	call	strcaseeq0
	test	eax, eax
	mov	rbp, rbp
	je	.label_335
	nop	
	mov	eax, OFFSET FLAT:.str.17_1
	movzx	ecx, byte ptr [rbx]
	lea	rsi, [rsi]
	cmp	ecx, 0x60
	lea	rdi, [rdi]
	je	.label_333
	mov	eax, OFFSET FLAT:.str.18_1
	jmp	.label_333
.label_335:
	cmp	r14d, 9
	mov	rsp, rsp
	mov	ecx, OFFSET FLAT:.str.10_0
	mov	eax, OFFSET FLAT:.str.12_0
	lea	rsi, [rsi]
	cmove	rax, rcx
.label_333:
	add	rsp, 0x10
	pop	rbx
	lea	rsi, [rsi]
	pop	r14
	lea	rsi, [rsi]
	pop	rbp
	lea	rsi, [rsi]
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406fb0

	.globl strcaseeq0
	.type strcaseeq0, @function
strcaseeq0:
	mov	rsp, rsp
	push	rbp
	nop	
	push	r15
	push	r14
	push	r13
	nop	
	push	r12
	lea	rdi, [rdi]
	push	rbx
	nop	
	push	rax
	mov	rbp, rbp
	mov	r14d, r9d
	mov	r15d, r8d
	mov	r12d, ecx
	nop	
	mov	r13d, edx
	lea	rsi, [rsi]
	mov	ebp, esi
	mov	rbx, rdi
	mov	edi, ebp
	lea	rsi, [rsi]
	call	c_isupper
	movsx	ecx, byte ptr [rbx]
	lea	rsi, [rsi]
	test	al, al
	je	.label_338
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	lea	rdi, [rdi]
	je	.label_336
	jmp	.label_337
.label_338:
	xor	eax, eax
	movzx	edx, bpl
	movzx	ecx, cl
	lea	rsi, [rsi]
	cmp	ecx, edx
	lea	rdi, [rdi]
	jne	.label_337
.label_336:
	mov	rsp, rsp
	mov	eax, 1
	test	bpl, bpl
	mov	rsp, rsp
	je	.label_337
	mov	al, byte ptr [rsp + 0x40]
	movsx	ecx, byte ptr [rsp + 0x48]
	lea	rsi, [rsi]
	mov	dword ptr [rsp], ecx
	movsx	esi, r13b
	movsx	edx, r12b
	nop	
	movsx	ecx, r15b
	nop	
	movsx	r8d, r14b
	mov	rbp, rbp
	movsx	r9d, al
	mov	rdi, rbx
	call	strcaseeq1
.label_337:
	add	rsp, 8
	lea	rsi, [rsi]
	pop	rbx
	nop	
	pop	r12
	pop	r13
	lea	rsi, [rsi]
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407070

	.globl strcaseeq1
	.type strcaseeq1, @function
strcaseeq1:
	push	rbp
	mov	rbp, rbp
	push	r15
	lea	rsi, [rsi]
	push	r14
	mov	rbp, rbp
	push	r13
	mov	rsp, rsp
	push	r12
	push	rbx
	push	rax
	lea	rdi, [rdi]
	mov	dword ptr [rsp + 4], r9d
	lea	rdi, [rdi]
	mov	r15d, r8d
	mov	rbp, rbp
	mov	r12d, ecx
	mov	r13d, edx
	mov	rsp, rsp
	mov	ebp, esi
	lea	rsi, [rsi]
	mov	rbx, rdi
	mov	r14b, byte ptr [rsp + 0x40]
	lea	rsi, [rsi]
	mov	edi, ebp
	lea	rdi, [rdi]
	call	c_isupper
	movsx	ecx, byte ptr [rbx + 1]
	nop	
	test	al, al
	mov	rsp, rsp
	je	.label_341
	nop	
	and	ecx, 0xffffffdf
	xor	eax, eax
	mov	rbp, rbp
	cmp	ecx, ebp
	nop	
	je	.label_340
	lea	rsi, [rsi]
	jmp	.label_339
.label_341:
	lea	rsi, [rsi]
	xor	eax, eax
	movzx	edx, bpl
	lea	rsi, [rsi]
	movzx	ecx, cl
	cmp	ecx, edx
	mov	rsp, rsp
	jne	.label_339
.label_340:
	lea	rdi, [rdi]
	mov	eax, 1
	test	bpl, bpl
	lea	rdi, [rdi]
	je	.label_339
	nop	
	movsx	esi, r13b
	mov	rbp, rbp
	movsx	edx, r12b
	lea	rdi, [rdi]
	movsx	ecx, r15b
	mov	eax, dword ptr [rsp + 4]
	movsx	r8d, al
	lea	rdi, [rdi]
	movsx	r9d, r14b
	mov	rbp, rbp
	mov	rdi, rbx
	add	rsp, 8
	lea	rdi, [rdi]
	pop	rbx
	pop	r12
	mov	rbp, rbp
	pop	r13
	mov	rsp, rsp
	pop	r14
	pop	r15
	mov	rbp, rbp
	pop	rbp
	jmp	strcaseeq2
.label_339:
	add	rsp, 8
	pop	rbx
	pop	r12
	mov	rbp, rbp
	pop	r13
	pop	r14
	pop	r15
	lea	rsi, [rsi]
	pop	rbp
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x407160

	.globl strcaseeq2
	.type strcaseeq2, @function
strcaseeq2:
	lea	rdi, [rdi]
	push	rbp
	mov	rbp, rbp
	push	r15
	push	r14
	mov	rsp, rsp
	push	r13
	mov	rbp, rbp
	push	r12
	mov	rsp, rsp
	push	rbx
	push	rax
	mov	rsp, rsp
	mov	r14d, r9d
	lea	rdi, [rdi]
	mov	r15d, r8d
	mov	rbp, rbp
	mov	r12d, ecx
	mov	r13d, edx
	lea	rsi, [rsi]
	mov	ebp, esi
	mov	rbx, rdi
	nop	
	mov	edi, ebp
	call	c_isupper
	mov	rbp, rbp
	movsx	ecx, byte ptr [rbx + 2]
	test	al, al
	je	.label_344
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_343
	jmp	.label_342
.label_344:
	mov	rsp, rsp
	xor	eax, eax
	lea	rsi, [rsi]
	movzx	edx, bpl
	mov	rsp, rsp
	movzx	ecx, cl
	lea	rsi, [rsi]
	cmp	ecx, edx
	lea	rsi, [rsi]
	jne	.label_342
.label_343:
	nop	
	mov	eax, 1
	lea	rsi, [rsi]
	test	bpl, bpl
	mov	rbp, rbp
	je	.label_342
	lea	rdi, [rdi]
	movsx	esi, r13b
	movsx	edx, r12b
	movsx	ecx, r15b
	movsx	r8d, r14b
	mov	rdi, rbx
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	mov	rbp, rbp
	pop	r14
	pop	r15
	mov	rbp, rbp
	pop	rbp
	jmp	strcaseeq3
.label_342:
	mov	rsp, rsp
	add	rsp, 8
	mov	rbp, rbp
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407230

	.globl strcaseeq3
	.type strcaseeq3, @function
strcaseeq3:
	push	rbp
	lea	rsi, [rsi]
	push	r15
	lea	rdi, [rdi]
	push	r14
	mov	rsp, rsp
	push	r12
	push	rbx
	mov	r14d, r8d
	mov	r15d, ecx
	mov	rbp, rbp
	mov	r12d, edx
	lea	rdi, [rdi]
	mov	ebp, esi
	mov	rbx, rdi
	mov	edi, ebp
	nop	
	call	c_isupper
	lea	rdi, [rdi]
	movsx	ecx, byte ptr [rbx + 3]
	nop	
	test	al, al
	je	.label_347
	lea	rsi, [rsi]
	and	ecx, 0xffffffdf
	xor	eax, eax
	mov	rbp, rbp
	cmp	ecx, ebp
	je	.label_346
	jmp	.label_345
.label_347:
	xor	eax, eax
	mov	rsp, rsp
	movzx	edx, bpl
	movzx	ecx, cl
	nop	
	cmp	ecx, edx
	lea	rsi, [rsi]
	jne	.label_345
.label_346:
	lea	rsi, [rsi]
	mov	eax, 1
	test	bpl, bpl
	mov	rbp, rbp
	je	.label_345
	movsx	esi, r12b
	mov	rsp, rsp
	movsx	edx, r15b
	mov	rsp, rsp
	movsx	ecx, r14b
	nop	
	mov	rdi, rbx
	pop	rbx
	nop	
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	jmp	strcaseeq4
.label_345:
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	lea	rdi, [rdi]
	pop	rbp
	lea	rdi, [rdi]
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x4072d0

	.globl strcaseeq4
	.type strcaseeq4, @function
strcaseeq4:
	lea	rdi, [rdi]
	push	rbp
	push	r15
	lea	rdi, [rdi]
	push	r14
	mov	rbp, rbp
	push	rbx
	push	rax
	mov	r14d, ecx
	lea	rdi, [rdi]
	mov	r15d, edx
	nop	
	mov	ebp, esi
	lea	rdi, [rdi]
	mov	rbx, rdi
	mov	edi, ebp
	nop	
	call	c_isupper
	nop	
	movsx	ecx, byte ptr [rbx + 4]
	mov	rbp, rbp
	test	al, al
	mov	rbp, rbp
	je	.label_350
	lea	rdi, [rdi]
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	mov	rsp, rsp
	je	.label_349
	nop	
	jmp	.label_348
.label_350:
	xor	eax, eax
	movzx	edx, bpl
	movzx	ecx, cl
	cmp	ecx, edx
	mov	rsp, rsp
	jne	.label_348
.label_349:
	mov	eax, 1
	test	bpl, bpl
	je	.label_348
	lea	rdi, [rdi]
	movsx	esi, r15b
	movsx	edx, r14b
	mov	rdi, rbx
	mov	rsp, rsp
	add	rsp, 8
	pop	rbx
	lea	rsi, [rsi]
	pop	r14
	pop	r15
	pop	rbp
	mov	rsp, rsp
	jmp	strcaseeq5
.label_348:
	add	rsp, 8
	lea	rdi, [rdi]
	pop	rbx
	nop	
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407370

	.globl strcaseeq5
	.type strcaseeq5, @function
strcaseeq5:
	push	rbp
	push	r14
	mov	rsp, rsp
	push	rbx
	lea	rsi, [rsi]
	mov	r14d, edx
	mov	rsp, rsp
	mov	ebp, esi
	mov	rbx, rdi
	mov	edi, ebp
	call	c_isupper
	movsx	ecx, byte ptr [rbx + 5]
	lea	rsi, [rsi]
	test	al, al
	nop	
	je	.label_353
	mov	rsp, rsp
	and	ecx, 0xffffffdf
	lea	rsi, [rsi]
	xor	eax, eax
	lea	rsi, [rsi]
	cmp	ecx, ebp
	lea	rsi, [rsi]
	je	.label_352
	lea	rsi, [rsi]
	jmp	.label_351
.label_353:
	xor	eax, eax
	movzx	edx, bpl
	movzx	ecx, cl
	lea	rsi, [rsi]
	cmp	ecx, edx
	nop	
	jne	.label_351
.label_352:
	nop	
	mov	eax, 1
	lea	rdi, [rdi]
	test	bpl, bpl
	nop	
	je	.label_351
	movsx	esi, r14b
	mov	rbp, rbp
	mov	rdi, rbx
	lea	rsi, [rsi]
	pop	rbx
	mov	rsp, rsp
	pop	r14
	lea	rdi, [rdi]
	pop	rbp
	jmp	strcaseeq6
.label_351:
	mov	rsp, rsp
	pop	rbx
	lea	rsi, [rsi]
	pop	r14
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407400

	.globl strcaseeq6
	.type strcaseeq6, @function
strcaseeq6:
	nop
	push	rbp
	mov	rbp, rbp
	push	rbx
	push	rax
	nop	
	mov	ebp, esi
	nop	
	mov	rbx, rdi
	mov	edi, ebp
	call	c_isupper
	mov	rsp, rsp
	movsx	ecx, byte ptr [rbx + 6]
	test	al, al
	mov	rsp, rsp
	je	.label_356
	and	ecx, 0xffffffdf
	mov	rsp, rsp
	xor	eax, eax
	mov	rbp, rbp
	cmp	ecx, ebp
	je	.label_355
	jmp	.label_354
.label_356:
	xor	eax, eax
	movzx	edx, bpl
	lea	rsi, [rsi]
	movzx	ecx, cl
	cmp	ecx, edx
	jne	.label_354
.label_355:
	mov	eax, 1
	nop	
	test	bpl, bpl
	mov	rbp, rbp
	je	.label_354
	lea	rdi, [rdi]
	mov	rdi, rbx
	lea	rdi, [rdi]
	add	rsp, 8
	pop	rbx
	pop	rbp
	jmp	strcaseeq7
.label_354:
	add	rsp, 8
	lea	rdi, [rdi]
	pop	rbx
	nop	
	pop	rbp
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x407470

	.globl strcaseeq7
	.type strcaseeq7, @function
strcaseeq7:
	push	rbx
	lea	rsi, [rsi]
	mov	rbx, rdi
	xor	edi, edi
	lea	rsi, [rsi]
	call	c_isupper
	movsx	ecx, byte ptr [rbx + 7]
	lea	rsi, [rsi]
	test	al, al
	mov	rsp, rsp
	je	.label_357
	mov	eax, 1
	mov	rsp, rsp
	test	ecx, 0xffffffdf
	lea	rdi, [rdi]
	jne	.label_359
	mov	rbp, rbp
	jmp	.label_358
.label_357:
	mov	eax, 1
	lea	rsi, [rsi]
	test	cl, cl
	je	.label_358
.label_359:
	xor	eax, eax
.label_358:
	pop	rbx
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4074c0

	.globl safe_read
	.type safe_read, @function
safe_read:
	push	rbp
	push	r15
	lea	rsi, [rsi]
	push	r14
	push	r13
	push	r12
	mov	rsp, rsp
	push	rbx
	nop	
	push	rax
	mov	rbp, rbp
	mov	rbx, rdx
	mov	rsp, rsp
	mov	r14, rsi
	mov	r15d, edi
	mov	r12d, 0x7ff00000
	nop	word ptr [rax + rax]
.label_360:
	lea	rsi, [rsi]
	mov	edi, r15d
	mov	rsp, rsp
	mov	rsi, r14
	lea	rdi, [rdi]
	mov	rdx, rbx
	call	read
	mov	rbp, rax
	test	rbp, rbp
	jns	.label_361
	mov	rsp, rsp
	call	__errno_location
	mov	rbp, rbp
	mov	eax, dword ptr [rax]
	cmp	eax, 4
	lea	rdi, [rdi]
	je	.label_360
	cmp	eax, 0x16
	lea	rsi, [rsi]
	sete	cl
	nop	
	cmp	rbx, 0x7ff00000
	seta	dl
	and	dl, cl
	mov	rbp, rbp
	mov	rcx, rbx
	lea	rsi, [rsi]
	cmovne	rcx, r12
	lea	rdi, [rdi]
	test	dl, dl
	mov	rsp, rsp
	cmovne	rbp, r13
	mov	rbp, rbp
	cmp	rbx, 0x7ff00001
	mov	rbp, rbp
	jb	.label_361
	lea	rsi, [rsi]
	cmp	eax, 0x16
	mov	rbx, rcx
	mov	r13, rbp
	mov	rsp, rsp
	je	.label_360
.label_361:
	mov	rax, rbp
	mov	rsp, rsp
	add	rsp, 8
	mov	rsp, rsp
	pop	rbx
	mov	rsp, rsp
	pop	r12
	pop	r13
	mov	rbp, rbp
	pop	r14
	lea	rsi, [rsi]
	pop	r15
	mov	rbp, rbp
	pop	rbp
	lea	rsi, [rsi]
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x4075a0

	.globl dup_safer
	.type dup_safer, @function
dup_safer:
	xor	esi, esi
	lea	rsi, [rsi]
	mov	edx, 3
	xor	eax, eax
	lea	rdi, [rdi]
	jmp	rpl_fcntl
	nop	word ptr cs:[rax + rax]
	nop	
	.section	.text
	.align	32
	#Procedure 0x4075c0

	.globl version_etc_arn
	.type version_etc_arn, @function
version_etc_arn:
	nop	
	push	r15
	push	r14
	push	r12
	mov	rbp, rbp
	push	rbx
	sub	rsp, 0x38
	mov	r12, r9
	lea	rdi, [rdi]
	mov	r15, r8
	mov	r9, rcx
	mov	rbx, rdx
	lea	rdi, [rdi]
	mov	rcx, rsi
	mov	r14, rdi
	mov	esi, 1
	test	rcx, rcx
	je	.label_362
	lea	rsi, [rsi]
	mov	edx, OFFSET FLAT:.str_3
	nop	
	xor	eax, eax
	mov	rdi, r14
	mov	rsp, rsp
	mov	r8, rbx
	lea	rsi, [rsi]
	call	__fprintf_chk
	lea	rdi, [rdi]
	jmp	.label_364
.label_362:
	mov	edx, OFFSET FLAT:.str.1_1
	lea	rsi, [rsi]
	xor	eax, eax
	lea	rdi, [rdi]
	mov	rdi, r14
	mov	rsp, rsp
	mov	rcx, rbx
	mov	r8, r9
	nop	
	call	__fprintf_chk
.label_364:
	mov	rbp, rbp
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.2_1
	mov	edx, 5
	mov	rsp, rsp
	call	dcgettext
	mov	rcx, rax
	lea	rsi, [rsi]
	mov	esi, 1
	lea	rsi, [rsi]
	mov	edx, OFFSET FLAT:version_etc_copyright
	mov	r8d, 0x7e3
	lea	rsi, [rsi]
	xor	eax, eax
	mov	rdi, r14
	lea	rsi, [rsi]
	call	__fprintf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.3_0
	mov	rbp, rbp
	mov	edx, 5
	lea	rdi, [rdi]
	call	dcgettext
	lea	rsi, [rsi]
	mov	rdi, rax
	mov	rsi, r14
	nop	
	call	fputs_unlocked
	nop	
	cmp	r12, 9
	mov	rbp, rbp
	ja	.label_366
	lea	rsi, [rsi]
	jmp	qword ptr [word ptr [+ (r12 * 8) + label_368]]
.label_1893:
	lea	rdi, [rdi]
	xor	edi, edi
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.4_0
	mov	edx, 5
	lea	rsi, [rsi]
	call	dcgettext
	nop	
	mov	rdx, rax
	lea	rsi, [rsi]
	mov	rcx, qword ptr [r15]
	mov	esi, 1
	nop	
	xor	eax, eax
	mov	rbp, rbp
	mov	rdi, r14
	add	rsp, 0x38
	mov	rbp, rbp
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	jmp	__fprintf_chk
.label_366:
	mov	rbp, rbp
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.13_0
	jmp	.label_370
.label_1894:
	nop	
	xor	edi, edi
	mov	rbp, rbp
	mov	esi, OFFSET FLAT:.str.5_0
	mov	edx, 5
	lea	rdi, [rdi]
	call	dcgettext
	mov	rdx, rax
	mov	rcx, qword ptr [r15]
	lea	rdi, [rdi]
	mov	r8, qword ptr [r15 + 8]
	lea	rsi, [rsi]
	mov	esi, 1
	xor	eax, eax
	mov	rdi, r14
	mov	rsp, rsp
	add	rsp, 0x38
	mov	rsp, rsp
	pop	rbx
	lea	rsi, [rsi]
	pop	r12
	pop	r14
	lea	rdi, [rdi]
	pop	r15
	jmp	__fprintf_chk
.label_1895:
	xor	edi, edi
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.6_0
	mov	rbp, rbp
	mov	edx, 5
	call	dcgettext
	mov	rsp, rsp
	mov	rdx, rax
	lea	rdi, [rdi]
	mov	rcx, qword ptr [r15]
	lea	rsi, [rsi]
	mov	r8, qword ptr [r15 + 8]
	mov	rsp, rsp
	mov	r9, qword ptr [r15 + 0x10]
	mov	rsp, rsp
	mov	esi, 1
	mov	rbp, rbp
	xor	eax, eax
	mov	rdi, r14
	lea	rdi, [rdi]
	add	rsp, 0x38
	nop	
	pop	rbx
	lea	rdi, [rdi]
	pop	r12
	pop	r14
	nop	
	pop	r15
	jmp	__fprintf_chk
.label_1896:
	xor	edi, edi
	mov	rbp, rbp
	mov	esi, OFFSET FLAT:.str.7_0
	mov	rbp, rbp
	mov	edx, 5
	call	dcgettext
	nop	
	mov	rdx, rax
	lea	rsi, [rsi]
	mov	rcx, qword ptr [r15]
	lea	rdi, [rdi]
	mov	r8, qword ptr [r15 + 8]
	mov	r9, qword ptr [r15 + 0x10]
	mov	rax, qword ptr [r15 + 0x18]
	jmp	.label_371
.label_1897:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.8_0
	mov	rsp, rsp
	mov	edx, 5
	call	dcgettext
	mov	rbp, rbp
	mov	rdx, rax
	mov	rsp, rsp
	mov	rcx, qword ptr [r15]
	mov	r8, qword ptr [r15 + 8]
	mov	rsp, rsp
	mov	r9, qword ptr [r15 + 0x10]
	mov	rax, qword ptr [r15 + 0x18]
	nop	
	mov	rsi, qword ptr [r15 + 0x20]
	jmp	.label_369
.label_1898:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.9
	mov	edx, 5
	nop	
	call	dcgettext
	lea	rdi, [rdi]
	mov	rdx, rax
	lea	rsi, [rsi]
	mov	rcx, qword ptr [r15]
	mov	rsp, rsp
	mov	r8, qword ptr [r15 + 8]
	mov	rbp, rbp
	mov	r9, qword ptr [r15 + 0x10]
	mov	rax, qword ptr [r15 + 0x18]
	mov	rsi, qword ptr [r15 + 0x20]
	mov	rdi, qword ptr [r15 + 0x28]
	jmp	.label_367
.label_1899:
	mov	rbp, rbp
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.10_1
	mov	edx, 5
	nop	
	call	dcgettext
	mov	rdx, rax
	mov	rcx, qword ptr [r15]
	mov	r8, qword ptr [r15 + 8]
	mov	r9, qword ptr [r15 + 0x10]
	mov	rax, qword ptr [r15 + 0x18]
	mov	rsi, qword ptr [r15 + 0x20]
	mov	rdi, qword ptr [r15 + 0x28]
	mov	rbp, rbp
	mov	rbx, qword ptr [r15 + 0x30]
	mov	qword ptr [rsp + 0x18], rbx
.label_367:
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x10], rdi
.label_369:
	nop	
	mov	qword ptr [rsp + 8], rsi
.label_371:
	nop	
	mov	qword ptr [rsp], rax
	mov	esi, 1
	xor	eax, eax
	mov	rbp, rbp
	mov	rdi, r14
	mov	rbp, rbp
	jmp	.label_365
.label_1901:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.12_1
.label_370:
	mov	edx, 5
	mov	rbp, rbp
	call	dcgettext
	mov	r10, rax
	mov	rcx, qword ptr [r15]
	mov	rbp, rbp
	mov	r8, qword ptr [r15 + 8]
	mov	rsp, rsp
	mov	r9, qword ptr [r15 + 0x10]
	lea	rsi, [rsi]
	mov	r11, qword ptr [r15 + 0x18]
	nop	
	mov	rsi, qword ptr [r15 + 0x20]
	mov	rdi, qword ptr [r15 + 0x28]
	mov	rbx, qword ptr [r15 + 0x30]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [r15 + 0x38]
	mov	rax, qword ptr [r15 + 0x40]
	mov	qword ptr [rsp + 0x28], rax
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x20], rdx
	mov	qword ptr [rsp + 0x18], rbx
	mov	qword ptr [rsp + 0x10], rdi
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 8], rsi
	mov	qword ptr [rsp], r11
	jmp	.label_363
.label_1900:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.11_1
	mov	edx, 5
	mov	rbp, rbp
	call	dcgettext
	mov	r10, rax
	lea	rdi, [rdi]
	mov	rcx, qword ptr [r15]
	lea	rsi, [rsi]
	mov	r8, qword ptr [r15 + 8]
	mov	r9, qword ptr [r15 + 0x10]
	lea	rsi, [rsi]
	mov	rax, qword ptr [r15 + 0x18]
	mov	rsi, qword ptr [r15 + 0x20]
	mov	rdi, qword ptr [r15 + 0x28]
	mov	rbx, qword ptr [r15 + 0x30]
	nop	
	mov	rdx, qword ptr [r15 + 0x38]
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x20], rdx
	mov	qword ptr [rsp + 0x18], rbx
	nop	
	mov	qword ptr [rsp + 0x10], rdi
	mov	rbp, rbp
	mov	qword ptr [rsp + 8], rsi
	lea	rsi, [rsi]
	mov	qword ptr [rsp], rax
.label_363:
	lea	rsi, [rsi]
	mov	esi, 1
	xor	eax, eax
	mov	rbp, rbp
	mov	rdi, r14
	mov	rdx, r10
.label_365:
	mov	rbp, rbp
	call	__fprintf_chk
.label_1892:
	mov	rsp, rsp
	add	rsp, 0x38
	pop	rbx
	mov	rsp, rsp
	pop	r12
	lea	rsi, [rsi]
	pop	r14
	nop	
	pop	r15
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x4079b0
	.globl version_etc_ar
	.type version_etc_ar, @function
version_etc_ar:

	nop
	mov	r9, -1
	nop	dword ptr [rax + rax]
.label_372:
	cmp	qword ptr [r8 + r9*8 + 8], 0
	lea	r9, [r9 + 1]
	lea	rdi, [rdi]
	jne	.label_372
	lea	rdi, [rdi]
	jmp	version_etc_arn
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4079e0

	.globl version_etc_va
	.type version_etc_va, @function
version_etc_va:
	sub	rsp, 0x58
	xor	r9d, r9d
	nop	word ptr [rax + rax]
.label_376:
	nop	
	movsxd	r10, dword ptr [r8]
	lea	rdi, [rdi]
	cmp	r10, 0x28
	ja	.label_373
	mov	r11, r10
	mov	rbp, rbp
	add	r11, qword ptr [r8 + 0x10]
	lea	eax, [r10 + 8]
	mov	rbp, rbp
	mov	dword ptr [r8], eax
	mov	rsp, rsp
	jmp	.label_375
	nop	word ptr cs:[rax + rax]
.label_373:
	mov	rbp, rbp
	mov	r11, qword ptr [r8 + 8]
	nop	
	lea	rax, [r11 + 8]
	mov	qword ptr [r8 + 8], rax
.label_375:
	mov	rax, qword ptr [r11]
	mov	qword ptr [rsp + r9*8], rax
	nop	
	test	rax, rax
	nop	
	je	.label_374
	inc	r9
	lea	rdi, [rdi]
	cmp	r9, 0xa
	jb	.label_376
.label_374:
	lea	rdi, [rdi]
	lea	r8, [rsp]
	mov	rsp, rsp
	call	version_etc_arn
	add	rsp, 0x58
	mov	rbp, rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407a70

	.globl version_etc
	.type version_etc, @function
version_etc:
	sub	rsp, 0xc8
	test	al, al
	nop	
	je	.label_377
	mov	rbp, rbp
	movaps	xmmword ptr [rsp + 0x30], xmm0
	lea	rsi, [rsi]
	movaps	xmmword ptr [rsp + 0x40], xmm1
	nop	
	movaps	xmmword ptr [rsp + 0x50], xmm2
	movaps	xmmword ptr [rsp + 0x60], xmm3
	nop	
	movaps	xmmword ptr [rsp + 0x70], xmm4
	nop	
	movaps	xmmword ptr [rsp + 0x80], xmm5
	movaps	xmmword ptr [rsp + 0x90], xmm6
	lea	rdi, [rdi]
	movaps	xmmword ptr [rsp + 0xa0], xmm7
.label_377:
	mov	qword ptr [rsp + 0x28], r9
	nop	
	mov	qword ptr [rsp + 0x20], r8
	lea	rax, [rsp]
	mov	qword ptr [rsp + 0xc0], rax
	mov	rbp, rbp
	lea	rax, [rsp + 0xd0]
	mov	qword ptr [rsp + 0xb8], rax
	mov	dword ptr [rsp + 0xb4], 0x30
	lea	rsi, [rsi]
	mov	dword ptr [rsp + 0xb0], 0x20
	lea	r8, [rsp + 0xb0]
	mov	rsp, rsp
	call	version_etc_va
	lea	rdi, [rdi]
	add	rsp, 0xc8
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407b20
	.globl emit_bug_reporting_address
	.type emit_bug_reporting_address, @function
emit_bug_reporting_address:

	push	rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.14_1
	lea	rsi, [rsi]
	mov	edx, 5
	lea	rsi, [rsi]
	call	dcgettext
	mov	rsp, rsp
	mov	rcx, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:.str.15_1
	xor	eax, eax
	mov	rsi, rcx
	lea	rdi, [rdi]
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.16_0
	mov	edx, 5
	mov	rsp, rsp
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	lea	rdi, [rdi]
	mov	edx, OFFSET FLAT:.str.17
	mov	ecx, OFFSET FLAT:.str.18_0
	mov	rsp, rsp
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.19_0
	mov	edx, 5
	mov	rsp, rsp
	call	dcgettext
	mov	rbp, rbp
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	pop	rax
	jmp	fputs_unlocked
	nop	
	.section	.text
	.align	32
	#Procedure 0x407bb0
	.globl xnmalloc
	.type xnmalloc, @function
xnmalloc:

	lea	rdi, [rdi]
	movabs	rax, 0x7fffffffffffffff
	lea	rdi, [rdi]
	xor	edx, edx
	mov	rsp, rsp
	div	rsi
	mov	rbp, rbp
	cmp	rax, rdi
	mov	rbp, rbp
	jb	.label_378
	imul	rsi, rdi
	mov	rdi, rsi
	jmp	xmalloc
.label_378:
	nop	
	push	rax
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407bf0

	.globl xmalloc
	.type xmalloc, @function
xmalloc:
	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	mov	rsp, rsp
	je	.label_379
	lea	rsi, [rsi]
	test	rax, rax
	je	.label_380
.label_379:
	lea	rsi, [rsi]
	pop	rbx
	mov	rbp, rbp
	ret	
.label_380:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407c20
	.globl xnrealloc
	.type xnrealloc, @function
xnrealloc:

	lea	rdi, [rdi]
	mov	rcx, rdx
	lea	rsi, [rsi]
	movabs	rax, 0x7fffffffffffffff
	nop	
	xor	edx, edx
	nop	
	div	rcx
	cmp	rax, rsi
	mov	rbp, rbp
	jb	.label_381
	imul	rcx, rsi
	mov	rbp, rbp
	mov	rsi, rcx
	mov	rsp, rsp
	jmp	xrealloc
.label_381:
	push	rax
	mov	rsp, rsp
	call	xalloc_die
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407c60

	.globl xrealloc
	.type xrealloc, @function
xrealloc:
	push	rbx
	mov	rbx, rsi
	nop	
	test	rdi, rdi
	je	.label_382
	nop	
	test	rbx, rbx
	lea	rdi, [rdi]
	jne	.label_382
	lea	rdi, [rdi]
	call	free
	lea	rsi, [rsi]
	xor	eax, eax
	lea	rsi, [rsi]
	pop	rbx
	ret	
.label_382:
	mov	rsi, rbx
	lea	rdi, [rdi]
	call	realloc
	test	rbx, rbx
	je	.label_383
	test	rax, rax
	nop	
	je	.label_384
.label_383:
	pop	rbx
	mov	rbp, rbp
	ret	
.label_384:
	mov	rsp, rsp
	call	xalloc_die
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407cb0

	.globl x2nrealloc
	.type x2nrealloc, @function
x2nrealloc:
	push	rax
	nop	
	mov	r8, rdx
	mov	rbp, rbp
	mov	rcx, qword ptr [rsi]
	test	rdi, rdi
	je	.label_385
	lea	rsi, [rsi]
	movabs	rax, 0x5555555555555554
	xor	edx, edx
	div	r8
	cmp	rax, rcx
	lea	rsi, [rsi]
	jbe	.label_386
	lea	rdi, [rdi]
	mov	rax, rcx
	shr	rax, 1
	lea	rcx, [rcx + rax + 1]
	jmp	.label_387
.label_385:
	test	rcx, rcx
	mov	rbp, rbp
	jne	.label_388
	mov	eax, 0x80
	xor	edx, edx
	div	r8
	mov	rbp, rbp
	mov	rcx, rax
	mov	rsp, rsp
	cmp	rcx, 1
	adc	rcx, 0
.label_388:
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	r8
	cmp	rax, rcx
	mov	rbp, rbp
	jb	.label_389
.label_387:
	nop	
	mov	qword ptr [rsi], rcx
	mov	rbp, rbp
	imul	r8, rcx
	nop	
	mov	rsi, r8
	mov	rbp, rbp
	pop	rax
	lea	rdi, [rdi]
	jmp	xrealloc
.label_386:
	call	xalloc_die
.label_389:
	lea	rsi, [rsi]
	call	xalloc_die
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x407d50

	.globl xcharalloc
	.type xcharalloc, @function
xcharalloc:
	mov	rbp, rbp
	jmp	xmalloc
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407d60
	.globl x2realloc
	.type x2realloc, @function
x2realloc:

	mov	edx, 1
	mov	rsp, rsp
	jmp	x2nrealloc
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x407d70
	.globl xzalloc
	.type xzalloc, @function
xzalloc:

	push	r14
	lea	rsi, [rsi]
	push	rbx
	push	rax
	mov	r14, rdi
	nop	
	call	xmalloc
	mov	rbx, rax
	xor	esi, esi
	mov	rbp, rbp
	mov	rdi, rbx
	lea	rsi, [rsi]
	mov	rdx, r14
	call	memset
	mov	rax, rbx
	add	rsp, 8
	pop	rbx
	lea	rdi, [rdi]
	pop	r14
	lea	rdi, [rdi]
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407db0
	.globl xcalloc
	.type xcalloc, @function
xcalloc:

	mov	rbp, rbp
	push	rax
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rsi
	nop	
	cmp	rax, rdi
	mov	rsp, rsp
	jb	.label_390
	nop	
	call	rpl_calloc
	test	rax, rax
	je	.label_390
	pop	rcx
	ret	
.label_390:
	call	xalloc_die
	nop	
	.section	.text
	.align	32
	#Procedure 0x407de0

	.globl xmemdup
	.type xmemdup, @function
xmemdup:
	lea	rsi, [rsi]
	push	r15
	push	r14
	push	rbx
	nop	
	mov	r15, rsi
	lea	rsi, [rsi]
	mov	r14, rdi
	mov	rdi, r15
	call	xmalloc
	mov	rsp, rsp
	mov	rbx, rax
	mov	rbp, rbp
	mov	rdi, rbx
	mov	rsi, r14
	mov	rbp, rbp
	mov	rdx, r15
	lea	rdi, [rdi]
	call	memcpy
	mov	rax, rbx
	pop	rbx
	pop	r14
	mov	rbp, rbp
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407e30
	.globl xstrdup
	.type xstrdup, @function
xstrdup:

	push	rbx
	lea	rsi, [rsi]
	mov	rbx, rdi
	mov	rsp, rsp
	call	strlen
	lea	rsi, [rax + 1]
	mov	rdi, rbx
	mov	rbp, rbp
	pop	rbx
	jmp	xmemdup
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x407e50

	.globl xnumtoimax
	.type xnumtoimax, @function
xnumtoimax:
	nop	
	push	rbp
	push	r15
	nop	
	push	r14
	push	r13
	mov	rsp, rsp
	push	r12
	lea	rdi, [rdi]
	push	rbx
	mov	rsp, rsp
	push	rax
	nop	
	mov	r14, r9
	lea	rdi, [rdi]
	mov	r15, rcx
	mov	r12, rdx
	lea	rsi, [rsi]
	mov	eax, esi
	mov	r13, rdi
	mov	rbp, rbp
	lea	rcx, [rsp]
	mov	rbp, rbp
	xor	esi, esi
	lea	rdi, [rdi]
	mov	edx, eax
	nop	
	call	xstrtoimax
	mov	rsp, rsp
	cmp	eax, 3
	je	.label_395
	mov	rbp, rbp
	cmp	eax, 1
	lea	rdi, [rdi]
	je	.label_397
	mov	rbp, rbp
	test	eax, eax
	jne	.label_393
	lea	rsi, [rsi]
	mov	rbx, qword ptr [rsp]
	cmp	rbx, r12
	jl	.label_394
	lea	rsi, [rsi]
	cmp	rbx, r15
	jle	.label_396
.label_394:
	nop	
	cmp	rbx, 0x40000000
	jl	.label_391
.label_397:
	call	__errno_location
	mov	rsp, rsp
	mov	dword ptr [rax], 0x4b
	lea	rsi, [rsi]
	jmp	.label_393
.label_395:
	call	__errno_location
	lea	rdi, [rdi]
	mov	dword ptr [rax], 0
.label_393:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rsp + 0x40]
	mov	rsp, rsp
	test	eax, eax
	lea	rsi, [rsi]
	mov	ebp, 1
	nop	
	cmovne	ebp, eax
	call	__errno_location
	nop	
	mov	ebx, dword ptr [rax]
	xor	eax, eax
	lea	rdi, [rdi]
	cmp	ebx, 0x16
	lea	rsi, [rsi]
	cmove	ebx, eax
	mov	rbp, rbp
	mov	rdi, r13
	mov	rbp, rbp
	call	quote
	mov	r8, rax
	lea	rsi, [rsi]
	mov	edx, OFFSET FLAT:.str_1
	mov	rbp, rbp
	xor	eax, eax
	lea	rdi, [rdi]
	mov	edi, ebp
	mov	esi, ebx
	mov	rcx, r14
	mov	rsp, rsp
	call	error
.label_396:
	mov	rax, qword ptr [rsp]
	nop	
	add	rsp, 8
	mov	rbp, rbp
	pop	rbx
	nop	
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	mov	rsp, rsp
	ret	
.label_391:
	call	__errno_location
	cmp	rbx, -0x40000001
	jg	.label_392
	mov	rsp, rsp
	mov	dword ptr [rax], 0x4b
	jmp	.label_393
.label_392:
	lea	rsi, [rsi]
	mov	dword ptr [rax], 0x22
	lea	rdi, [rdi]
	jmp	.label_393
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x407fa0

	.globl xdectoimax
	.type xdectoimax, @function
xdectoimax:
	push	rax
	mov	rsp, rsp
	mov	r10, r8
	lea	rsi, [rsi]
	mov	rax, rcx
	mov	rsp, rsp
	mov	rcx, rdx
	mov	rbp, rbp
	mov	rdx, rsi
	mov	dword ptr [rsp], r9d
	mov	esi, 0xa
	lea	rdi, [rdi]
	mov	r8, rax
	mov	r9, r10
	call	xnumtoimax
	pop	rcx
	ret	
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x407fe0

	.globl xstrtoimax
	.type xstrtoimax, @function
xstrtoimax:
	push	rbp
	push	r15
	lea	rdi, [rdi]
	push	r14
	lea	rsi, [rsi]
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x18
	mov	rbp, rbp
	mov	r15, r8
	mov	r14, rcx
	mov	ebp, edx
	nop	
	mov	r12, rdi
	cmp	ebp, 0x25
	mov	rsp, rsp
	jae	.label_412
	mov	rsp, rsp
	test	rsi, rsi
	lea	rdi, [rdi]
	lea	r13, [rsp + 0x10]
	lea	rdi, [rdi]
	cmovne	r13, rsi
	lea	rsi, [rsi]
	call	__errno_location
	mov	rsp, rsp
	mov	rbx, rax
	mov	dword ptr [rbx], 0
	mov	rdi, r12
	mov	rsi, r13
	mov	edx, ebp
	lea	rdi, [rdi]
	call	strtoimax
	nop	
	mov	qword ptr [rsp + 8], rax
	lea	rdi, [rdi]
	mov	rax, qword ptr [r13]
	cmp	rax, r12
	lea	rsi, [rsi]
	je	.label_410
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbx]
	lea	rdi, [rdi]
	xor	r12d, r12d
	nop	
	test	eax, eax
	lea	rsi, [rsi]
	je	.label_407
	lea	rsi, [rsi]
	mov	r12d, 4
	mov	rbp, rbp
	cmp	eax, 0x22
	mov	rbp, rbp
	jne	.label_405
	lea	rsi, [rsi]
	mov	r12d, 1
.label_407:
	test	r15, r15
	mov	rsp, rsp
	jne	.label_401
	jmp	.label_403
.label_410:
	nop	
	mov	r12d, 4
	lea	rsi, [rsi]
	test	r15, r15
	mov	rbp, rbp
	je	.label_405
	mov	rbp, rbp
	movsx	esi, byte ptr [rax]
	test	esi, esi
	je	.label_405
	lea	rsi, [rsi]
	mov	rdi, r15
	nop	
	call	strchr
	lea	rsi, [rsi]
	test	rax, rax
	lea	rsi, [rsi]
	je	.label_405
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 8], 1
	mov	rsp, rsp
	xor	r12d, r12d
.label_401:
	mov	rsp, rsp
	mov	rax, qword ptr [r13]
	lea	rdi, [rdi]
	movsx	ebx, byte ptr [rax]
	nop	
	test	ebx, ebx
	je	.label_403
	mov	rdi, r15
	nop	
	mov	esi, ebx
	call	strchr
	test	rax, rax
	je	.label_400
	mov	esi, 0x400
	mov	rsp, rsp
	mov	ebp, 1
	add	ebx, -0x45
	lea	rdi, [rdi]
	cmp	ebx, 0x2f
	ja	.label_399
	lea	rsi, [rsi]
	movabs	rax, 0x814400308945
	bt	rax, rbx
	mov	rsp, rsp
	jae	.label_399
	mov	rsp, rsp
	mov	esi, 0x30
	nop	
	mov	rdi, r15
	lea	rdi, [rdi]
	call	strchr
	mov	rbp, rbp
	mov	ebp, 1
	lea	rdi, [rdi]
	test	rax, rax
	mov	rbp, rbp
	je	.label_414
	lea	rsi, [rsi]
	mov	rax, qword ptr [r13]
	movsx	ecx, byte ptr [rax + 1]
	lea	rsi, [rsi]
	mov	ebp, 1
	cmp	ecx, 0x42
	lea	rdi, [rdi]
	je	.label_417
	mov	rbp, rbp
	cmp	ecx, 0x44
	lea	rdi, [rdi]
	je	.label_417
	cmp	ecx, 0x69
	jne	.label_411
	lea	rdi, [rdi]
	movzx	eax, byte ptr [rax + 2]
	mov	rsp, rsp
	mov	ebp, 3
	cmp	eax, 0x42
	lea	rdi, [rdi]
	mov	esi, 0x400
	mov	rbp, rbp
	je	.label_399
	mov	ebp, 1
	lea	rdi, [rdi]
	jmp	.label_399
.label_414:
	mov	esi, 0x400
	nop	
	jmp	.label_399
.label_417:
	mov	esi, 0x3e8
	mov	ebp, 2
	nop	
	jmp	.label_399
.label_411:
	mov	esi, 0x400
.label_399:
	mov	rax, qword ptr [r13]
	movsx	eax, byte ptr [rax]
	cmp	eax, 0x59
	jg	.label_415
	lea	ecx, [rax - 0x42]
	mov	rbp, rbp
	cmp	ecx, 0xe
	lea	rsi, [rsi]
	ja	.label_416
	mov	rbp, rbp
	jmp	qword ptr [word ptr [+ (rcx * 8) + label_418]]
.label_1950:
	lea	rdi, [rsp + 8]
	mov	esi, 0x400
	jmp	.label_408
.label_415:
	mov	rsp, rsp
	cmp	eax, 0x73
	jg	.label_402
	lea	ecx, [rax - 0x62]
	lea	rdi, [rdi]
	cmp	ecx, 0xb
	ja	.label_404
	xor	eax, eax
	jmp	qword ptr [word ptr [+ (rcx * 8) + label_406]]
.label_1957:
	lea	rdi, [rsp + 8]
	lea	rsi, [rsi]
	mov	esi, 0x200
	nop	
	jmp	.label_408
.label_416:
	cmp	eax, 0x54
	je	.label_409
	lea	rsi, [rsi]
	cmp	eax, 0x59
	jne	.label_400
	mov	rsp, rsp
	lea	rdi, [rsp + 8]
	lea	rsi, [rsi]
	mov	edx, 8
	call	bkm_scale_by_power
	jmp	.label_398
.label_402:
	cmp	eax, 0x74
	mov	rsp, rsp
	je	.label_409
	lea	rdi, [rdi]
	cmp	eax, 0x77
	jne	.label_400
	lea	rdi, [rsp + 8]
	nop	
	mov	esi, 2
.label_408:
	call	bkm_scale
	jmp	.label_398
.label_1952:
	lea	rsi, [rsi]
	lea	rdi, [rsp + 8]
	mov	edx, 3
	lea	rdi, [rdi]
	call	bkm_scale_by_power
	jmp	.label_398
.label_1953:
	lea	rdi, [rsp + 8]
	mov	edx, 1
	mov	rsp, rsp
	call	bkm_scale_by_power
	mov	rsp, rsp
	jmp	.label_398
.label_1954:
	lea	rdi, [rsp + 8]
	mov	rbp, rbp
	mov	edx, 2
	call	bkm_scale_by_power
	mov	rsp, rsp
	jmp	.label_398
.label_409:
	lea	rdi, [rsp + 8]
	nop	
	mov	edx, 4
	lea	rsi, [rsi]
	call	bkm_scale_by_power
	jmp	.label_398
.label_404:
	mov	rsp, rsp
	cmp	eax, 0x5a
	mov	rsp, rsp
	jne	.label_400
	mov	rbp, rbp
	lea	rdi, [rsp + 8]
	nop	
	mov	edx, 7
	nop	
	call	bkm_scale_by_power
	lea	rdi, [rdi]
	jmp	.label_398
.label_400:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp + 8]
	lea	rdi, [rdi]
	mov	qword ptr [r14], rax
	lea	rsi, [rsi]
	or	r12d, 2
	lea	rdi, [rdi]
	jmp	.label_405
.label_1951:
	lea	rdi, [rsp + 8]
	mov	edx, 6
	mov	rsp, rsp
	call	bkm_scale_by_power
	lea	rsi, [rsi]
	jmp	.label_398
.label_1955:
	nop	
	lea	rdi, [rsp + 8]
	mov	edx, 5
	call	bkm_scale_by_power
.label_398:
	or	eax, r12d
	lea	rsi, [rsi]
	mov	rcx, qword ptr [r13]
	mov	rsp, rsp
	lea	rdx, [rcx + rbp]
	mov	qword ptr [r13], rdx
	mov	rsp, rsp
	cmp	byte ptr [rcx + rbp], 0
	je	.label_413
	lea	rsi, [rsi]
	or	eax, 2
.label_413:
	mov	rsp, rsp
	mov	r12d, eax
.label_403:
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 8]
	lea	rdi, [rdi]
	mov	qword ptr [r14], rax
.label_405:
	mov	eax, r12d
	add	rsp, 0x18
	lea	rsi, [rsi]
	pop	rbx
	lea	rdi, [rdi]
	pop	r12
	pop	r13
	mov	rbp, rbp
	pop	r14
	lea	rdi, [rdi]
	pop	r15
	pop	rbp
	lea	rdi, [rdi]
	ret	
.label_412:
	mov	edi, OFFSET FLAT:.str_4
	lea	rsi, [rsi]
	mov	esi, OFFSET FLAT:.str.1_2
	mov	rsp, rsp
	mov	edx, 0x54
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.xstrtoimax
	call	__assert_fail
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4083e0

	.globl bkm_scale
	.type bkm_scale, @function
bkm_scale:
	movabs	r8, 0x7fffffffffffffff
	mov	rcx, qword ptr [rdi]
	nop	
	movsxd	r9, esi
	lea	rsi, [r8 + 1]
	lea	rdi, [rdi]
	mov	rax, rsi
	cqo	
	nop	
	idiv	r9
	lea	rsi, [rsi]
	cmp	rcx, rax
	jge	.label_419
	mov	qword ptr [rdi], rsi
	mov	eax, 1
	ret	
.label_419:
	mov	rax, r8
	lea	rsi, [rsi]
	cqo	
	idiv	r9
	cmp	rax, rcx
	jge	.label_420
	mov	rbp, rbp
	mov	qword ptr [rdi], r8
	mov	eax, 1
	lea	rdi, [rdi]
	ret	
.label_420:
	lea	rdi, [rdi]
	imul	rcx, r9
	mov	qword ptr [rdi], rcx
	xor	eax, eax
	lea	rsi, [rsi]
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408450

	.globl bkm_scale_by_power
	.type bkm_scale_by_power, @function
bkm_scale_by_power:
	push	rbp
	push	r15
	push	r14
	push	rbx
	push	rax
	mov	rbp, rbp
	mov	ebp, edx
	mov	r14d, esi
	lea	rsi, [rsi]
	mov	r15, rdi
	mov	rbp, rbp
	xor	ebx, ebx
	test	ebp, ebp
	je	.label_421
	nop	
.label_422:
	mov	rdi, r15
	mov	esi, r14d
	call	bkm_scale
	nop	
	or	ebx, eax
	dec	ebp
	jne	.label_422
.label_421:
	mov	rbp, rbp
	mov	eax, ebx
	lea	rsi, [rsi]
	add	rsp, 8
	lea	rsi, [rsi]
	pop	rbx
	pop	r14
	mov	rsp, rsp
	pop	r15
	pop	rbp
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4084a0

	.globl xstrtoumax
	.type xstrtoumax, @function
xstrtoumax:
	push	rbp
	mov	rsp, rsp
	push	r15
	mov	rsp, rsp
	push	r14
	push	r13
	push	r12
	push	rbx
	lea	rdi, [rdi]
	sub	rsp, 0x18
	mov	r13, r8
	nop	
	mov	r14d, edx
	mov	rsp, rsp
	mov	rbp, rsi
	lea	rsi, [rsi]
	mov	rbx, rdi
	cmp	r14d, 0x25
	jae	.label_435
	lea	rdi, [rdi]
	mov	qword ptr [rsp], rcx
	call	__errno_location
	lea	rsi, [rsi]
	mov	r12, rax
	mov	dword ptr [r12], 0
	call	__ctype_b_loc
	mov	rcx, qword ptr [rax]
	mov	rdx, rbx
	nop	dword ptr [rax]
.label_423:
	movzx	eax, byte ptr [rdx]
	inc	rdx
	lea	rdi, [rdi]
	test	byte ptr [rcx + rax*2 + 1], 0x20
	jne	.label_423
	mov	rbp, rbp
	test	rbp, rbp
	lea	rcx, [rsp + 0x10]
	cmovne	rcx, rbp
	nop	
	movzx	eax, al
	mov	rbp, rbp
	mov	r15d, 4
	cmp	eax, 0x2d
	mov	rsp, rsp
	je	.label_425
	mov	rdi, rbx
	mov	rbp, rcx
	mov	rsi, rbp
	lea	rsi, [rsi]
	mov	edx, r14d
	lea	rdi, [rdi]
	call	strtoumax
	mov	rcx, rbp
	nop	
	mov	qword ptr [rsp + 8], rax
	mov	rax, qword ptr [rcx]
	lea	rsi, [rsi]
	cmp	rax, rbx
	nop	
	je	.label_443
	nop	
	mov	eax, dword ptr [r12]
	xor	r12d, r12d
	test	eax, eax
	mov	rsp, rsp
	mov	rbp, r13
	mov	rsp, rsp
	je	.label_444
	cmp	eax, 0x22
	jne	.label_425
	lea	rsi, [rsi]
	mov	r12d, 1
.label_444:
	test	rbp, rbp
	lea	rdi, [rdi]
	jne	.label_431
	mov	rax, qword ptr [rsp + 8]
	mov	rcx, qword ptr [rsp]
	lea	rsi, [rsi]
	jmp	.label_433
.label_443:
	mov	rbp, r13
	lea	rdi, [rdi]
	test	rbp, rbp
	je	.label_425
	lea	rsi, [rsi]
	mov	rbx, rcx
	lea	rsi, [rsi]
	movsx	esi, byte ptr [rax]
	nop	
	test	esi, esi
	mov	rsp, rsp
	je	.label_425
	mov	rdi, rbp
	mov	rsp, rsp
	call	strchr
	test	rax, rax
	mov	rcx, rbx
	je	.label_425
	mov	qword ptr [rsp + 8], 1
	lea	rdi, [rdi]
	xor	r12d, r12d
.label_431:
	mov	rbp, rbp
	mov	rax, qword ptr [rcx]
	mov	rsp, rsp
	movsx	ebx, byte ptr [rax]
	lea	rdi, [rdi]
	test	ebx, ebx
	lea	rdi, [rdi]
	je	.label_447
	mov	rbp, rbp
	mov	r13, rcx
	mov	rdi, rbp
	mov	rsp, rsp
	mov	esi, ebx
	mov	rsp, rsp
	call	strchr
	test	rax, rax
	lea	rdi, [rdi]
	je	.label_436
	mov	r15d, 0x400
	mov	r14d, 1
	add	ebx, -0x45
	nop	
	cmp	ebx, 0x2f
	ja	.label_439
	movabs	rax, 0x814400308945
	lea	rdi, [rdi]
	bt	rax, rbx
	jae	.label_441
	lea	rdi, [rdi]
	mov	esi, 0x30
	mov	rbp, rbp
	mov	rdi, rbp
	lea	rdi, [rdi]
	call	strchr
	mov	r14d, 1
	mov	rsp, rsp
	mov	rbx, r13
	test	rax, rax
	lea	rdi, [rdi]
	je	.label_437
	nop	
	mov	rax, qword ptr [rbx]
	movsx	ecx, byte ptr [rax + 1]
	mov	r14d, 1
	cmp	ecx, 0x42
	nop	
	je	.label_428
	cmp	ecx, 0x44
	je	.label_428
	cmp	ecx, 0x69
	mov	rbp, rbp
	jne	.label_437
	movzx	eax, byte ptr [rax + 2]
	mov	r14d, 3
	lea	rdi, [rdi]
	cmp	eax, 0x42
	mov	rsp, rsp
	je	.label_437
	mov	r14d, 1
	jmp	.label_437
.label_428:
	mov	rsp, rsp
	mov	r15d, 0x3e8
	mov	r14d, 2
.label_437:
	mov	rax, qword ptr [rbx]
	movsx	eax, byte ptr [rax]
	cmp	eax, 0x59
	lea	rdi, [rdi]
	jg	.label_427
	mov	rsp, rsp
	lea	ecx, [rax - 0x42]
	nop	
	cmp	ecx, 0xe
	nop	
	ja	.label_442
	jmp	qword ptr [word ptr [+ (rcx * 8) + label_446]]
.label_1971:
	lea	rdi, [rsp + 8]
	mov	rsp, rsp
	mov	esi, 0x400
	jmp	.label_432
.label_427:
	cmp	eax, 0x73
	jg	.label_426
	lea	rsi, [rsi]
	lea	ecx, [rax - 0x62]
	mov	rsp, rsp
	cmp	ecx, 0xb
	mov	rbp, rbp
	ja	.label_430
	xor	eax, eax
	mov	rbp, rbp
	jmp	qword ptr [word ptr [+ (rcx * 8) + label_434]]
.label_1939:
	mov	rsp, rsp
	lea	rdi, [rsp + 8]
	mov	esi, 0x200
	jmp	.label_432
.label_442:
	cmp	eax, 0x54
	lea	rsi, [rsi]
	je	.label_440
	nop	
	cmp	eax, 0x59
	jne	.label_436
	nop	
	lea	rdi, [rsp + 8]
	lea	rdi, [rdi]
	mov	edx, 8
	jmp	.label_429
.label_426:
	lea	rdi, [rdi]
	cmp	eax, 0x74
	nop	
	je	.label_440
	cmp	eax, 0x77
	nop	
	jne	.label_436
	lea	rdi, [rsp + 8]
	mov	rsp, rsp
	mov	esi, 2
.label_432:
	nop	
	call	bkm_scale_0
	jmp	.label_424
.label_1940:
	lea	rsi, [rsi]
	lea	rdi, [rsp + 8]
	mov	edx, 3
	mov	rbp, rbp
	jmp	.label_429
.label_1941:
	lea	rsi, [rsi]
	lea	rdi, [rsp + 8]
	mov	rbp, rbp
	mov	edx, 1
	jmp	.label_429
.label_1942:
	lea	rdi, [rdi]
	lea	rdi, [rsp + 8]
	lea	rsi, [rsi]
	mov	edx, 2
	jmp	.label_429
.label_440:
	lea	rdi, [rsp + 8]
	lea	rdi, [rdi]
	mov	edx, 4
	jmp	.label_429
.label_430:
	cmp	eax, 0x5a
	jne	.label_436
	lea	rdi, [rsp + 8]
	lea	rdi, [rdi]
	mov	edx, 7
	mov	rbp, rbp
	jmp	.label_429
.label_436:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp + 8]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rsp]
	mov	rsp, rsp
	mov	qword ptr [rcx], rax
	lea	rsi, [rsi]
	or	r12d, 2
	jmp	.label_445
.label_1972:
	lea	rdi, [rsp + 8]
	mov	edx, 6
	jmp	.label_429
.label_1973:
	lea	rsi, [rsi]
	lea	rdi, [rsp + 8]
	mov	rbp, rbp
	mov	edx, 5
.label_429:
	mov	esi, r15d
	lea	rdi, [rdi]
	call	bkm_scale_by_power_0
.label_424:
	mov	rsp, rsp
	or	eax, r12d
	mov	rcx, qword ptr [rbx]
	mov	rbp, rbp
	lea	rdx, [rcx + r14]
	mov	qword ptr [rbx], rdx
	nop	
	cmp	byte ptr [rcx + r14], 0
	je	.label_438
	lea	rdi, [rdi]
	or	eax, 2
.label_438:
	mov	r12d, eax
.label_447:
	mov	rsp, rsp
	mov	rcx, qword ptr [rsp]
	mov	rax, qword ptr [rsp + 8]
.label_433:
	mov	qword ptr [rcx], rax
.label_445:
	mov	r15d, r12d
.label_425:
	mov	eax, r15d
	add	rsp, 0x18
	pop	rbx
	lea	rsi, [rsi]
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	mov	rsp, rsp
	pop	rbp
	ret	
.label_439:
	lea	rsi, [rsi]
	mov	rbx, r13
	lea	rdi, [rdi]
	jmp	.label_437
.label_441:
	mov	rsp, rsp
	mov	rbx, r13
	lea	rsi, [rsi]
	jmp	.label_437
.label_435:
	lea	rdi, [rdi]
	mov	edi, OFFSET FLAT:.str_4
	mov	esi, OFFSET FLAT:.str.1_2
	mov	edx, 0x54
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.xstrtoumax
	call	__assert_fail
	.section	.text
	.align	32
	#Procedure 0x4088b0

	.globl bkm_scale_0
	.type bkm_scale_0, @function
bkm_scale_0:
	mov	rsp, rsp
	movsxd	rcx, esi
	mov	rsi, -1
	mov	rax, -1
	xor	edx, edx
	lea	rdi, [rdi]
	div	rcx
	mov	rbp, rbp
	mov	rdx, qword ptr [rdi]
	mov	rsp, rsp
	imul	rcx, rdx
	cmp	rax, rdx
	mov	rsp, rsp
	cmovb	rcx, rsi
	sbb	eax, eax
	lea	rdi, [rdi]
	and	eax, 1
	mov	qword ptr [rdi], rcx
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x4088f0

	.globl bkm_scale_by_power_0
	.type bkm_scale_by_power_0, @function
bkm_scale_by_power_0:
	push	rbp
	push	r15
	lea	rsi, [rsi]
	push	r14
	push	rbx
	push	rax
	mov	ebp, edx
	lea	rsi, [rsi]
	mov	r14d, esi
	lea	rsi, [rsi]
	mov	r15, rdi
	lea	rsi, [rsi]
	xor	ebx, ebx
	lea	rsi, [rsi]
	test	ebp, ebp
	mov	rbp, rbp
	je	.label_448
	nop	word ptr [rax + rax]
.label_449:
	lea	rdi, [rdi]
	mov	rdi, r15
	nop	
	mov	esi, r14d
	lea	rdi, [rdi]
	call	bkm_scale_0
	or	ebx, eax
	lea	rdi, [rdi]
	dec	ebp
	mov	rsp, rsp
	jne	.label_449
.label_448:
	mov	rsp, rsp
	mov	eax, ebx
	nop	
	add	rsp, 8
	mov	rsp, rsp
	pop	rbx
	mov	rsp, rsp
	pop	r14
	lea	rsi, [rsi]
	pop	r15
	pop	rbp
	mov	rsp, rsp
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408960

	.globl rpl_calloc
	.type rpl_calloc, @function
rpl_calloc:
	test	rdi, rdi
	lea	rsi, [rsi]
	mov	eax, 1
	nop	
	je	.label_450
	nop	
	test	rsi, rsi
	mov	ecx, 1
	je	.label_451
	lea	rdi, [rdi]
	mov	rax, rsi
	imul	rax, rdi
	xor	edx, edx
	div	rsi
	mov	rsp, rsp
	cmp	rax, rdi
	nop	
	mov	rax, rsi
	mov	rcx, rdi
	je	.label_451
	mov	rsp, rsp
	push	rax
	mov	rbp, rbp
	call	__errno_location
	mov	rbp, rbp
	mov	dword ptr [rax], 0xc
	nop	
	xor	eax, eax
	lea	rdi, [rdi]
	pop	rcx
	ret	
.label_450:
	mov	ecx, 1
.label_451:
	mov	rdi, rcx
	lea	rdi, [rdi]
	mov	rsi, rax
	lea	rdi, [rdi]
	jmp	calloc
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4089d0

	.globl rpl_fclose
	.type rpl_fclose, @function
rpl_fclose:
	push	rbp
	lea	rsi, [rsi]
	push	rbx
	mov	rsp, rsp
	push	rax
	mov	rbx, rdi
	call	fileno
	mov	rbp, rbp
	test	eax, eax
	js	.label_452
	lea	rsi, [rsi]
	mov	rdi, rbx
	call	__freading
	mov	rbp, rbp
	test	eax, eax
	je	.label_454
	mov	rdi, rbx
	call	fileno
	xor	esi, esi
	lea	rsi, [rsi]
	mov	edx, 1
	mov	rsp, rsp
	mov	edi, eax
	mov	rsp, rsp
	call	lseek
	lea	rsi, [rsi]
	cmp	rax, -1
	je	.label_452
.label_454:
	lea	rsi, [rsi]
	mov	rdi, rbx
	call	rpl_fflush
	test	eax, eax
	lea	rsi, [rsi]
	je	.label_452
	call	__errno_location
	mov	ebp, dword ptr [rax]
	mov	rbp, rbp
	mov	rdi, rbx
	lea	rsi, [rsi]
	call	fclose
	lea	rsi, [rsi]
	test	ebp, ebp
	je	.label_453
	call	__errno_location
	mov	dword ptr [rax], ebp
	lea	rsi, [rsi]
	mov	eax, 0xffffffff
.label_453:
	add	rsp, 8
	nop	
	pop	rbx
	lea	rsi, [rsi]
	pop	rbp
	ret	
.label_452:
	lea	rsi, [rsi]
	mov	rdi, rbx
	add	rsp, 8
	lea	rdi, [rdi]
	pop	rbx
	pop	rbp
	nop	
	jmp	fclose
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x408a90

	.globl rpl_fcntl
	.type rpl_fcntl, @function
rpl_fcntl:
	sub	rsp, 0xc8
	test	al, al
	mov	rbp, rbp
	je	.label_461
	lea	rdi, [rdi]
	movaps	xmmword ptr [rsp + 0x30], xmm0
	mov	rsp, rsp
	movaps	xmmword ptr [rsp + 0x40], xmm1
	movaps	xmmword ptr [rsp + 0x50], xmm2
	movaps	xmmword ptr [rsp + 0x60], xmm3
	mov	rsp, rsp
	movaps	xmmword ptr [rsp + 0x70], xmm4
	movaps	xmmword ptr [rsp + 0x80], xmm5
	lea	rsi, [rsi]
	movaps	xmmword ptr [rsp + 0x90], xmm6
	lea	rdi, [rdi]
	movaps	xmmword ptr [rsp + 0xa0], xmm7
.label_461:
	mov	qword ptr [rsp + 0x28], r9
	mov	qword ptr [rsp + 0x20], r8
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x18], rcx
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x10], rdx
	lea	rax, [rsp]
	mov	qword ptr [rsp + 0xc0], rax
	nop	
	lea	rax, [rsp + 0xd0]
	nop	
	mov	qword ptr [rsp + 0xb8], rax
	mov	rbp, rbp
	mov	dword ptr [rsp + 0xb4], 0x30
	lea	rsi, [rsi]
	mov	dword ptr [rsp + 0xb0], 0x10
	nop	
	cmp	esi, 0xb
	mov	rsp, rsp
	ja	.label_463
	mov	eax, 0xa0a
	mov	rbp, rbp
	bt	eax, esi
	lea	rsi, [rsi]
	jb	.label_467
	mov	rsp, rsp
	mov	eax, 0x514
	lea	rsi, [rsi]
	bt	eax, esi
	mov	rbp, rbp
	jb	.label_455
	mov	rbp, rbp
	test	esi, esi
	jne	.label_463
	mov	rsp, rsp
	movsxd	rcx, dword ptr [rsp + 0xb0]
	lea	rdi, [rdi]
	cmp	rcx, 0x28
	mov	rsp, rsp
	ja	.label_465
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0xc0]
	mov	rbp, rbp
	lea	ecx, [rcx + 8]
	lea	rsi, [rsi]
	mov	dword ptr [rsp + 0xb0], ecx
	lea	rdi, [rdi]
	jmp	.label_459
.label_463:
	lea	eax, [rsi - 0x400]
	lea	rdi, [rdi]
	cmp	eax, 8
	lea	rdi, [rdi]
	ja	.label_456
	mov	ecx, 0x85
	bt	ecx, eax
	jb	.label_455
	lea	rdi, [rdi]
	mov	ecx, 0x102
	bt	ecx, eax
	mov	rbp, rbp
	jae	.label_460
.label_467:
	lea	rsi, [rsi]
	xor	eax, eax
	call	fcntl
	add	rsp, 0xc8
	ret	
.label_455:
	movsxd	rcx, dword ptr [rsp + 0xb0]
	cmp	rcx, 0x28
	ja	.label_464
	mov	rax, rcx
	mov	rbp, rbp
	add	rax, qword ptr [rsp + 0xc0]
	mov	rsp, rsp
	lea	ecx, [rcx + 8]
	nop	
	mov	dword ptr [rsp + 0xb0], ecx
	nop	
	jmp	.label_466
.label_464:
	mov	rax, qword ptr [rsp + 0xb8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 0xb8], rcx
.label_466:
	mov	edx, dword ptr [rax]
	lea	rdi, [rdi]
	xor	eax, eax
	call	fcntl
	add	rsp, 0xc8
	ret	
.label_460:
	nop	
	cmp	eax, 6
	jne	.label_456
	mov	rsp, rsp
	movsxd	rcx, dword ptr [rsp + 0xb0]
	cmp	rcx, 0x28
	ja	.label_458
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0xc0]
	lea	rsi, [rsi]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp + 0xb0], ecx
	lea	rsi, [rsi]
	jmp	.label_462
.label_456:
	lea	rsi, [rsi]
	movsxd	rcx, dword ptr [rsp + 0xb0]
	cmp	rcx, 0x28
	ja	.label_468
	mov	rbp, rbp
	mov	rax, rcx
	mov	rsp, rsp
	add	rax, qword ptr [rsp + 0xc0]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp + 0xb0], ecx
	jmp	.label_457
.label_465:
	nop	
	mov	rax, qword ptr [rsp + 0xb8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 0xb8], rcx
.label_459:
	mov	esi, dword ptr [rax]
	mov	rsp, rsp
	call	rpl_fcntl_DUPFD
	add	rsp, 0xc8
	lea	rsi, [rsi]
	ret	
.label_458:
	nop	
	mov	rax, qword ptr [rsp + 0xb8]
	mov	rsp, rsp
	lea	rcx, [rax + 8]
	nop	
	mov	qword ptr [rsp + 0xb8], rcx
.label_462:
	mov	esi, dword ptr [rax]
	mov	rsp, rsp
	call	rpl_fcntl_DUPFD_CLOEXEC
	add	rsp, 0xc8
	lea	rsi, [rsi]
	ret	
.label_468:
	mov	rax, qword ptr [rsp + 0xb8]
	mov	rsp, rsp
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 0xb8], rcx
.label_457:
	mov	rdx, qword ptr [rax]
	xor	eax, eax
	mov	rsp, rsp
	call	fcntl
	lea	rsi, [rsi]
	add	rsp, 0xc8
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408d30

	.globl rpl_fcntl_DUPFD
	.type rpl_fcntl_DUPFD, @function
rpl_fcntl_DUPFD:
	lea	rdi, [rdi]
	mov	ecx, esi
	xor	esi, esi
	mov	rsp, rsp
	xor	eax, eax
	nop	
	mov	edx, ecx
	jmp	fcntl
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408d50

	.globl rpl_fcntl_DUPFD_CLOEXEC
	.type rpl_fcntl_DUPFD_CLOEXEC, @function
rpl_fcntl_DUPFD_CLOEXEC:
	mov	rsp, rsp
	push	rbp
	push	r14
	push	rbx
	mov	r14d, esi
	mov	ebp, edi
	mov	rsp, rsp
	cmp	dword ptr [dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec]],  0
	lea	rsi, [rsi]
	js	.label_473
	mov	esi, 0x406
	lea	rsi, [rsi]
	xor	eax, eax
	nop	
	mov	edi, ebp
	lea	rsi, [rsi]
	mov	edx, r14d
	call	fcntl
	mov	ebx, eax
	lea	rsi, [rsi]
	test	ebx, ebx
	nop	
	jns	.label_470
	nop	
	call	__errno_location
	cmp	dword ptr [rax], 0x16
	nop	
	jne	.label_470
	mov	edi, ebp
	mov	esi, r14d
	call	rpl_fcntl_DUPFD
	mov	ebx, eax
	test	ebx, ebx
	js	.label_469
	lea	rdi, [rdi]
	mov	dword ptr [dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec]],  0xffffffff
	jmp	.label_472
.label_470:
	mov	rsp, rsp
	mov	dword ptr [dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec]],  1
	mov	rbp, rbp
	jmp	.label_472
.label_473:
	mov	rbp, rbp
	mov	edi, ebp
	mov	rbp, rbp
	mov	esi, r14d
	call	rpl_fcntl_DUPFD
	mov	ebx, eax
.label_472:
	test	ebx, ebx
	js	.label_469
	mov	rsp, rsp
	cmp	dword ptr [dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec]],  -1
	jne	.label_469
	mov	esi, 1
	xor	eax, eax
	mov	edi, ebx
	mov	rsp, rsp
	call	fcntl
	mov	ecx, eax
	test	ecx, ecx
	js	.label_471
	or	ecx, 1
	nop	
	mov	esi, 2
	mov	rbp, rbp
	xor	eax, eax
	mov	edi, ebx
	mov	edx, ecx
	mov	rsp, rsp
	call	fcntl
	mov	rbp, rbp
	cmp	eax, -1
	mov	rbp, rbp
	jne	.label_469
.label_471:
	lea	rdi, [rdi]
	call	__errno_location
	mov	rbp, rax
	mov	r14d, dword ptr [rbp]
	mov	edi, ebx
	call	close
	lea	rdi, [rdi]
	mov	dword ptr [rbp], r14d
	mov	ebx, 0xffffffff
.label_469:
	lea	rdi, [rdi]
	mov	eax, ebx
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408e60

	.globl rpl_fflush
	.type rpl_fflush, @function
rpl_fflush:
	push	rbx
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_474
	lea	rsi, [rsi]
	mov	rdi, rbx
	mov	rsp, rsp
	call	__freading
	test	eax, eax
	je	.label_474
	mov	rdi, rbx
	call	clear_ungetc_buffer_preserving_position
.label_474:
	mov	rsp, rsp
	mov	rdi, rbx
	pop	rbx
	jmp	fflush
	nop	
	.section	.text
	.align	32
	#Procedure 0x408e90

	.globl clear_ungetc_buffer_preserving_position
	.type clear_ungetc_buffer_preserving_position, @function
clear_ungetc_buffer_preserving_position:
	test	byte ptr [rdi + 1], 1
	mov	rbp, rbp
	jne	.label_475
	mov	rbp, rbp
	ret	
.label_475:
	lea	rsi, [rsi]
	xor	esi, esi
	mov	edx, 1
	lea	rdi, [rdi]
	jmp	rpl_fseeko
	nop	
	.section	.text
	.align	32
	#Procedure 0x408eb0

	.globl rpl_fseeko
	.type rpl_fseeko, @function
rpl_fseeko:
	lea	rsi, [rsi]
	push	rbp
	push	r14
	mov	rbp, rbp
	push	rbx
	mov	rbp, rbp
	mov	r14d, edx
	mov	rbp, rsi
	mov	rbx, rdi
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbx + 0x10]
	cmp	rax, qword ptr [rbx + 8]
	lea	rdi, [rdi]
	jne	.label_476
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbx + 0x28]
	cmp	rax, qword ptr [rbx + 0x20]
	jne	.label_476
	lea	rsi, [rsi]
	cmp	qword ptr [rbx + 0x48], 0
	je	.label_478
.label_476:
	lea	rsi, [rsi]
	mov	rdi, rbx
	mov	rbp, rbp
	mov	rsi, rbp
	mov	edx, r14d
	mov	rbp, rbp
	pop	rbx
	pop	r14
	pop	rbp
	nop	
	jmp	fseeko
.label_478:
	mov	rdi, rbx
	call	fileno
	mov	rbp, rbp
	mov	edi, eax
	lea	rdi, [rdi]
	mov	rsi, rbp
	mov	edx, r14d
	call	lseek
	mov	rcx, rax
	lea	rdi, [rdi]
	mov	eax, 0xffffffff
	cmp	rcx, -1
	lea	rdi, [rdi]
	je	.label_477
	lea	rsi, [rsi]
	and	byte ptr [rbx], 0xef
	lea	rdi, [rdi]
	mov	qword ptr [rbx + 0x90], rcx
	xor	eax, eax
.label_477:
	pop	rbx
	mov	rsp, rsp
	pop	r14
	nop	
	pop	rbp
	mov	rsp, rsp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408f60

	.globl rpl_mbrtowc
	.type rpl_mbrtowc, @function
rpl_mbrtowc:
	push	r15
	mov	rsp, rsp
	push	r14
	lea	rsi, [rsi]
	push	r12
	mov	rsp, rsp
	push	rbx
	push	rax
	lea	rsi, [rsi]
	mov	r12, rdx
	mov	r14, rsi
	test	rdi, rdi
	lea	rsi, [rsi]
	lea	rbx, [rsp + 4]
	cmovne	rbx, rdi
	mov	rdi, rbx
	lea	rsi, [rsi]
	call	mbrtowc
	mov	r15, rax
	test	r12, r12
	mov	rsp, rsp
	je	.label_479
	nop	
	cmp	r15, -2
	jb	.label_479
	mov	rsp, rsp
	xor	edi, edi
	mov	rbp, rbp
	call	hard_locale
	test	al, al
	nop	
	jne	.label_479
	lea	rdi, [rdi]
	movzx	eax, byte ptr [r14]
	mov	dword ptr [rbx], eax
	lea	rdi, [rdi]
	mov	r15d, 1
.label_479:
	mov	rbp, rbp
	mov	rax, r15
	lea	rsi, [rsi]
	add	rsp, 8
	lea	rdi, [rdi]
	pop	rbx
	lea	rdi, [rdi]
	pop	r12
	pop	r14
	mov	rbp, rbp
	pop	r15
	mov	rsp, rsp
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408ff0

	.globl rpl_re_compile_pattern
	.type rpl_re_compile_pattern, @function
rpl_re_compile_pattern:
	nop	
	push	rax
	mov	r8, rsi
	mov	rsi, rdi
	mov	rcx,  qword ptr [word ptr [rip + rpl_re_syntax_options]]
	lea	rdi, [rdi]
	mov	al, byte ptr [rdx + 0x38]
	shr	rcx, 0x15
	nop	
	and	cl, 0x10
	and	al, 0x6f
	mov	rbp, rbp
	or	al, cl
	or	al, 0x80
	mov	byte ptr [rdx + 0x38], al
	nop	
	mov	rcx,  qword ptr [word ptr [rip + rpl_re_syntax_options]]
	nop	
	mov	rdi, rdx
	mov	rdx, r8
	lea	rdi, [rdi]
	call	re_compile_internal
	test	eax, eax
	je	.label_480
	cdqe	
	mov	esi, OFFSET FLAT:__re_error_msgid
	add	rsi,  qword ptr [word ptr [+ (rax * 8) + __re_error_msgid_idx]]
	lea	rsi, [rsi]
	xor	edi, edi
	mov	edx, 5
	pop	rax
	mov	rbp, rbp
	jmp	dcgettext
.label_480:
	mov	rbp, rbp
	xor	eax, eax
	lea	rdi, [rdi]
	pop	rcx
	ret	
	.section	.text
	.align	32
	#Procedure 0x409060

	.globl re_compile_internal
	.type re_compile_internal, @function
re_compile_internal:
	push	rbp
	lea	rsi, [rsi]
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	mov	rbp, rbp
	sub	rsp, 0xa8
	nop	
	mov	r15, rcx
	nop	
	mov	r12, rdx
	mov	r13, rsi
	mov	rbx, rdi
	nop	
	mov	dword ptr [rsp + 0xa4], 0
	mov	rbp, rbp
	mov	al, byte ptr [rbx + 0x38]
	mov	qword ptr [rbx + 0x18], r15
	lea	rdi, [rdi]
	mov	qword ptr [rbx + 0x10], 0
	lea	rdi, [rdi]
	mov	qword ptr [rbx + 0x30], 0
	and	al, 0x90
	mov	byte ptr [rbx + 0x38], al
	mov	rsp, rsp
	mov	r14, qword ptr [rbx]
	lea	rdi, [rdi]
	cmp	qword ptr [rbx + 8], 0xe7
	mov	rsp, rsp
	jbe	.label_484
.label_487:
	mov	qword ptr [rbx + 0x10], 0xe8
	mov	rdi, r14
	lea	rdi, [rdi]
	mov	rsi, r12
	call	init_dfa
	mov	dword ptr [rsp + 0xa4], eax
	lea	rdi, [rdi]
	test	eax, eax
	mov	rbp, rbp
	jne	.label_486
	nop	
	mov	rcx, qword ptr [rbx + 0x28]
	mov	ebp, r15d
	lea	rsi, [rsi]
	and	ebp, 0x400000
	nop	
	mov	r8, rbp
	shr	r8, 0x16
	lea	rdi, [rsp + 8]
	mov	rsp, rsp
	mov	rsi, r13
	mov	rdx, r12
	mov	r9, r14
	call	re_string_construct
	lea	rdi, [rdi]
	mov	dword ptr [rsp + 0xa4], eax
	mov	rbp, rbp
	test	eax, eax
	jne	.label_485
	mov	qword ptr [rbx + 0x30], 0
	lea	rdi, [rsp + 8]
	mov	rbp, rbp
	lea	rcx, [rsp + 0xa4]
	mov	rsi, rbx
	mov	rdx, r15
	call	parse
	mov	rsp, rsp
	mov	qword ptr [r14 + 0x68], rax
	test	rax, rax
	je	.label_485
	mov	rdi, rbx
	lea	rdi, [rdi]
	call	analyze
	nop	
	mov	dword ptr [rsp + 0xa4], eax
	lea	rsi, [rsi]
	test	eax, eax
	jne	.label_485
	mov	rbp, rbp
	test	rbp, rbp
	jne	.label_482
	lea	rdi, [rdi]
	mov	al, byte ptr [r14 + 0xb0]
	lea	rdi, [rdi]
	and	al, 4
	nop	
	je	.label_482
	lea	rdi, [rdi]
	cmp	qword ptr [rbx + 0x28], 0
	jne	.label_482
	mov	rdi, r14
	lea	rsi, [rsi]
	call	optimize_utf8
.label_482:
	mov	rdi, r14
	mov	rbp, rbp
	call	create_initial_state
	mov	dword ptr [rsp + 0xa4], eax
	mov	rsp, rsp
	mov	rdi, rbx
	nop	
	call	free_workarea_compile
	lea	rdi, [rdi]
	lea	rdi, [rsp + 8]
	call	re_string_destruct
	cmp	dword ptr [rsp + 0xa4], 0
	mov	rbp, rbp
	je	.label_481
	mov	rbp, rbp
	jmp	.label_486
.label_485:
	lea	rsi, [rsi]
	mov	rdi, rbx
	lea	rsi, [rsi]
	call	free_workarea_compile
	lea	rdi, [rsp + 8]
	mov	rsp, rsp
	call	re_string_destruct
.label_486:
	lea	rsi, [rsi]
	mov	rdi, r14
	call	free_dfa_content
	lea	rdi, [rdi]
	xorps	xmm0, xmm0
	nop	
	movups	xmmword ptr [rbx], xmm0
.label_481:
	mov	eax, dword ptr [rsp + 0xa4]
.label_483:
	add	rsp, 0xa8
	pop	rbx
	nop	
	pop	r12
	lea	rsi, [rsi]
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_484:
	mov	esi, 0xe8
	mov	rsp, rsp
	mov	rdi, r14
	lea	rsi, [rsi]
	call	realloc
	mov	r14, rax
	mov	eax, 0xc
	lea	rsi, [rsi]
	test	r14, r14
	lea	rsi, [rsi]
	je	.label_483
	mov	qword ptr [rbx + 8], 0xe8
	mov	rsp, rsp
	mov	qword ptr [rbx], r14
	jmp	.label_487
	nop	
	.section	.text
	.align	32
	#Procedure 0x409280
	.globl rpl_re_set_syntax
	.type rpl_re_set_syntax, @function
rpl_re_set_syntax:

	mov	rax,  qword ptr [word ptr [rip + rpl_re_syntax_options]]
	mov	rbp, rbp
	mov	qword ptr [word ptr [rip + rpl_re_syntax_options]],  rdi
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4092a0

	.globl rpl_re_compile_fastmap
	.type rpl_re_compile_fastmap, @function
rpl_re_compile_fastmap:
	nop	
	push	r15
	mov	rbp, rbp
	push	r14
	push	rbx
	mov	rbp, rbp
	mov	r14, rdi
	mov	r15, qword ptr [r14]
	mov	rbx, qword ptr [r14 + 0x20]
	mov	rsp, rsp
	xorps	xmm0, xmm0
	mov	rbp, rbp
	movups	xmmword ptr [rbx + 0xf0], xmm0
	nop	
	movups	xmmword ptr [rbx + 0xe0], xmm0
	movups	xmmword ptr [rbx + 0xd0], xmm0
	movups	xmmword ptr [rbx + 0xc0], xmm0
	movups	xmmword ptr [rbx + 0xb0], xmm0
	movups	xmmword ptr [rbx + 0xa0], xmm0
	lea	rsi, [rsi]
	movups	xmmword ptr [rbx + 0x90], xmm0
	movups	xmmword ptr [rbx + 0x80], xmm0
	movups	xmmword ptr [rbx + 0x70], xmm0
	movups	xmmword ptr [rbx + 0x60], xmm0
	movups	xmmword ptr [rbx + 0x50], xmm0
	mov	rbp, rbp
	movups	xmmword ptr [rbx + 0x40], xmm0
	nop	
	movups	xmmword ptr [rbx + 0x30], xmm0
	mov	rsp, rsp
	movups	xmmword ptr [rbx + 0x20], xmm0
	lea	rsi, [rsi]
	movups	xmmword ptr [rbx + 0x10], xmm0
	movups	xmmword ptr [rbx], xmm0
	mov	rsi, qword ptr [r15 + 0x48]
	mov	rdx, rbx
	call	re_compile_fastmap_iter
	mov	rsi, qword ptr [r15 + 0x50]
	lea	rsi, [rsi]
	cmp	qword ptr [r15 + 0x48], rsi
	lea	rdi, [rdi]
	je	.label_488
	mov	rdi, r14
	nop	
	mov	rdx, rbx
	call	re_compile_fastmap_iter
.label_488:
	nop	
	mov	rsi, qword ptr [r15 + 0x58]
	nop	
	cmp	qword ptr [r15 + 0x48], rsi
	nop	
	je	.label_490
	nop	
	mov	rdi, r14
	mov	rbp, rbp
	mov	rdx, rbx
	mov	rbp, rbp
	call	re_compile_fastmap_iter
.label_490:
	lea	rsi, [rsi]
	mov	rsi, qword ptr [r15 + 0x60]
	cmp	qword ptr [r15 + 0x48], rsi
	nop	
	je	.label_489
	nop	
	mov	rdi, r14
	lea	rdi, [rdi]
	mov	rdx, rbx
	lea	rsi, [rsi]
	call	re_compile_fastmap_iter
.label_489:
	nop	
	or	byte ptr [r14 + 0x38], 8
	mov	rsp, rsp
	xor	eax, eax
	mov	rbp, rbp
	pop	rbx
	pop	r14
	lea	rdi, [rdi]
	pop	r15
	nop	
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4093b0

	.globl re_compile_fastmap_iter
	.type re_compile_fastmap_iter, @function
re_compile_fastmap_iter:
	nop	
	push	rbp
	mov	rbp, rbp
	push	r15
	lea	rsi, [rsi]
	push	r14
	nop	
	push	r13
	push	r12
	lea	rdi, [rdi]
	push	rbx
	nop	
	sub	rsp, 0x158
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x38], rdx
	nop	
	mov	qword ptr [rsp + 0x10], rsi
	mov	rdx, qword ptr [rdi]
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x28], rdx
	cmp	dword ptr [rdx + 0xb4], 1
	jne	.label_504
	nop	
	mov	r14b, byte ptr [rdi + 0x1a]
	mov	qword ptr [rsp + 0x20], rdi
	lea	rdi, [rdi]
	and	r14b, 0x40
	lea	rdi, [rdi]
	shr	r14b, 6
	lea	rsi, [rsi]
	jmp	.label_512
.label_504:
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x20], rdi
	nop	
	xor	r14d, r14d
.label_512:
	cmp	qword ptr [rsi + 0x10], 0
	jle	.label_497
	mov	rsp, rsp
	xor	ecx, ecx
	nop	dword ptr [rax + rax]
.label_499:
	nop	
	mov	rax, qword ptr [rsi + 0x18]
	lea	rsi, [rsi]
	mov	r13, qword ptr [rax + rcx*8]
	mov	rsp, rsp
	mov	rax, qword ptr [rdx]
	mov	rbx, r13
	nop	
	shl	rbx, 4
	mov	qword ptr [rsp + 0x30], rbx
	lea	rdi, [rdi]
	movzx	r12d, byte ptr [rax + rbx + 8]
	mov	rsp, rsp
	add	rax, rbx
	cmp	r12d, 6
	mov	rsp, rsp
	je	.label_500
	mov	qword ptr [rsp + 0x18], rcx
	cmp	r12d, 3
	lea	rdi, [rdi]
	mov	ebp, 0
	lea	rdi, [rdi]
	mov	r15d, 0
	mov	rsp, rsp
	je	.label_511
	mov	rbp, rbp
	cmp	r12d, 1
	mov	rsp, rsp
	jne	.label_493
	mov	rsp, rsp
	movzx	edi, byte ptr [rax]
	mov	rax, qword ptr [rsp + 0x38]
	mov	byte ptr [rax + rdi], 1
	test	r14b, r14b
	lea	rdi, [rdi]
	je	.label_498
	mov	rbp, rdx
	call	tolower
	mov	rbp, rbp
	mov	rdx, rbp
	cdqe	
	mov	rcx, qword ptr [rsp + 0x38]
	mov	byte ptr [rcx + rax], 1
.label_498:
	mov	rax, qword ptr [rsp + 0x20]
	lea	rsi, [rsi]
	test	byte ptr [rax + 0x1a], 0x40
	mov	rbp, rbp
	je	.label_492
	nop	
	cmp	dword ptr [rdx + 0xb4], 2
	jl	.label_492
	lea	rsi, [rsi]
	mov	rax, qword ptr [rdx]
	mov	al, byte ptr [rax + rbx]
	mov	byte ptr [rsp + 0x40], al
	mov	rbp, rbp
	inc	r13
	cmp	r13, qword ptr [rdx + 0x10]
	lea	rbp, [rsp + 0x41]
	lea	r15, [rsp + 0x148]
	lea	rdi, [rdi]
	lea	r12, [rsp + 0x40]
	lea	rdi, [rdi]
	mov	esi, 0x2000ff
	jae	.label_506
	mov	rbp, rbp
	add	rbx, 0x18
	lea	rbp, [rsp + 0x41]
	nop	word ptr cs:[rax + rax]
.label_509:
	mov	rax, qword ptr [rdx]
	mov	ecx, dword ptr [rax + rbx]
	nop	
	and	ecx, esi
	cmp	ecx, 0x200001
	mov	rbp, rbp
	jne	.label_506
	mov	al, byte ptr [rax + rbx - 8]
	mov	byte ptr [rbp], al
	mov	rbp, rbp
	inc	rbp
	inc	r13
	lea	rsi, [rsi]
	add	rbx, 0x10
	cmp	r13, qword ptr [rdx + 0x10]
	jb	.label_509
.label_506:
	lea	rdi, [rdi]
	mov	rbx, rdx
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x148], 0
	lea	rsi, [rsi]
	sub	rbp, r12
	lea	rdi, [rsp + 0x154]
	nop	
	mov	rsi, r12
	mov	rdx, rbp
	nop	
	mov	rcx, r15
	call	rpl_mbrtowc
	cmp	rax, rbp
	lea	rsi, [rsi]
	jne	.label_501
	lea	rdi, [rdi]
	mov	edi, dword ptr [rsp + 0x154]
	lea	rdi, [rdi]
	call	towlower
	mov	rsp, rsp
	mov	rdi, r12
	mov	esi, eax
	mov	rsp, rsp
	mov	rdx, r15
	call	wcrtomb
	lea	rsi, [rsi]
	cmp	rax, -1
	nop	
	je	.label_501
	movzx	eax, byte ptr [rsp + 0x40]
	mov	rcx, qword ptr [rsp + 0x38]
	mov	byte ptr [rcx + rax], 1
	mov	rbp, rbp
	jmp	.label_501
	nop	dword ptr [rax]
.label_511:
	mov	rsp, rsp
	mov	rax, qword ptr [rdx]
	nop	
	mov	rax, qword ptr [rax + rbx]
	mov	rbx, qword ptr [rax + rbp*8]
	nop	
	mov	rax, qword ptr [rsp + 0x38]
	lea	r13, [rax + r15]
	mov	rsp, rsp
	xor	r12d, r12d
	nop	
.label_508:
	bt	rbx, r12
	jae	.label_502
	mov	byte ptr [r13 + r12], 1
	mov	rbp, rbp
	test	r14b, r14b
	je	.label_502
	mov	rsp, rsp
	lea	edi, [r15 + r12]
	lea	rdi, [rdi]
	call	tolower
	cdqe	
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rsp + 0x38]
	mov	byte ptr [rcx + rax], 1
.label_502:
	nop	
	inc	r12
	cmp	r12, 0x40
	jne	.label_508
	lea	rsi, [rsi]
	inc	rbp
	lea	rdi, [rdi]
	add	r15, 0x40
	cmp	rbp, 4
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rsp + 0x28]
	lea	rdi, [rdi]
	mov	rbx, qword ptr [rsp + 0x30]
	mov	rsp, rsp
	jne	.label_511
	jmp	.label_492
	nop	word ptr [rax + rax]
.label_500:
	mov	r15, qword ptr [rax]
	cmp	dword ptr [rdx + 0xb4], 1
	jle	.label_495
	mov	rbp, rbp
	cmp	qword ptr [r15 + 0x48], 0
	lea	rdi, [rdi]
	jne	.label_503
	lea	rsi, [rsi]
	test	byte ptr [r15 + 0x20], 1
	mov	rbp, rbp
	jne	.label_503
	mov	rbp, rbp
	cmp	qword ptr [r15 + 0x40], 0
	lea	rdi, [rdi]
	je	.label_495
.label_503:
	nop	
	mov	rbx, rdx
	mov	qword ptr [rsp + 0x18], rcx
	mov	byte ptr [rsp + 0x148], 0
	nop	
	lea	rbp, [rsp + 0x148]
	mov	r15, rbp
	nop	
	lea	rbp, [rsp + 0x40]
	nop	
.label_505:
	mov	qword ptr [rsp + 0x40], 0
	nop	
	xor	edi, edi
	mov	edx, 1
	mov	rsp, rsp
	mov	rsi, r15
	mov	rcx, rbp
	call	rpl_mbrtowc
	mov	rsp, rsp
	cmp	rax, -2
	mov	rsp, rsp
	jne	.label_494
	mov	rbp, rbp
	movzx	eax, byte ptr [rsp + 0x148]
	mov	rcx, qword ptr [rsp + 0x38]
	mov	rsp, rsp
	mov	byte ptr [rcx + rax], 1
.label_494:
	nop	
	inc	byte ptr [rsp + 0x148]
	jne	.label_505
.label_501:
	mov	rdx, rbx
	lea	rsi, [rsi]
	jmp	.label_492
	nop	word ptr [rax + rax]
.label_493:
	cmp	r12d, 2
	je	.label_507
	lea	rsi, [rsi]
	mov	eax, r12d
	or	eax, 2
	nop	
	cmp	eax, 7
	jne	.label_492
	jmp	.label_507
.label_495:
	mov	qword ptr [rsp + 0x18], rcx
	cmp	qword ptr [r15 + 0x28], 0
	jle	.label_492
	mov	rsp, rsp
	xor	ebp, ebp
	nop	word ptr [rax + rax]
.label_491:
	lea	rdi, [rdi]
	mov	rbx, rdx
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x148], 0
	lea	rsi, [rsi]
	mov	rax, qword ptr [r15]
	mov	rsp, rsp
	mov	esi, dword ptr [rax + rbp*4]
	lea	rdi, [rdi]
	lea	r13, [rsp + 0x40]
	mov	rdi, r13
	mov	rbp, rbp
	lea	r12, [rsp + 0x148]
	mov	rbp, rbp
	mov	rdx, r12
	lea	rdi, [rdi]
	call	wcrtomb
	cmp	rax, -1
	mov	rsp, rsp
	je	.label_510
	movzx	edi, byte ptr [rsp + 0x40]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp + 0x38]
	lea	rdi, [rdi]
	mov	byte ptr [rax + rdi], 1
	lea	rdi, [rdi]
	test	r14b, r14b
	lea	rdi, [rdi]
	je	.label_510
	call	tolower
	lea	rdi, [rdi]
	cdqe	
	mov	rcx, qword ptr [rsp + 0x38]
	lea	rsi, [rsi]
	mov	byte ptr [rcx + rax], 1
.label_510:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp + 0x20]
	test	byte ptr [rax + 0x1a], 0x40
	lea	rsi, [rsi]
	mov	rdx, rbx
	nop	
	je	.label_496
	mov	rbp, rbp
	cmp	dword ptr [rdx + 0xb4], 2
	nop	
	jl	.label_496
	mov	rbp, rbp
	mov	rax, qword ptr [r15]
	lea	rdi, [rdi]
	mov	edi, dword ptr [rax + rbp*4]
	mov	rbx, rdx
	nop	
	call	towlower
	mov	rdi, r13
	mov	rbp, rbp
	mov	esi, eax
	mov	rbp, rbp
	mov	rdx, r12
	call	wcrtomb
	lea	rsi, [rsi]
	mov	rdx, rbx
	lea	rdi, [rdi]
	cmp	rax, -1
	je	.label_496
	movzx	eax, byte ptr [rsp + 0x40]
	mov	rbp, rbp
	mov	rcx, qword ptr [rsp + 0x38]
	lea	rdi, [rdi]
	mov	byte ptr [rcx + rax], 1
.label_496:
	mov	rsp, rsp
	inc	rbp
	mov	rbp, rbp
	cmp	rbp, qword ptr [r15 + 0x28]
	lea	rsi, [rsi]
	jl	.label_491
	nop	word ptr cs:[rax + rax]
.label_492:
	nop	
	mov	rcx, qword ptr [rsp + 0x18]
	lea	rsi, [rsi]
	inc	rcx
	mov	rsi, qword ptr [rsp + 0x10]
	lea	rdi, [rdi]
	cmp	rcx, qword ptr [rsi + 0x10]
	lea	rsi, [rsi]
	jl	.label_499
.label_497:
	mov	rsp, rsp
	add	rsp, 0x158
	nop	
	pop	rbx
	pop	r12
	lea	rdi, [rdi]
	pop	r13
	nop	
	pop	r14
	lea	rsi, [rsi]
	pop	r15
	nop	
	pop	rbp
	ret	
.label_507:
	mov	esi, 1
	mov	edx, 0x100
	mov	rdi, qword ptr [rsp + 0x38]
	call	memset
	cmp	r12d, 2
	jne	.label_497
	mov	rax, qword ptr [rsp + 0x20]
	nop	
	or	byte ptr [rax + 0x38], 1
	lea	rsi, [rsi]
	jmp	.label_497
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x409910
	.globl rpl_regcomp
	.type rpl_regcomp, @function
rpl_regcomp:

	push	rbp
	push	r15
	push	r14
	push	rbx
	push	rax
	mov	ebp, edx
	nop	
	mov	r14, rsi
	mov	r15, rdi
	xorps	xmm0, xmm0
	movups	xmmword ptr [r15], xmm0
	lea	rdi, [rdi]
	mov	qword ptr [r15 + 0x10], 0
	mov	edi, 0x100
	lea	rsi, [rsi]
	call	malloc
	lea	rsi, [rsi]
	mov	qword ptr [r15 + 0x20], rax
	lea	rdi, [rdi]
	mov	ebx, 0xc
	test	rax, rax
	mov	rbp, rbp
	je	.label_515
	test	bpl, 1
	mov	eax, 0x3b2fc
	mov	ecx, 0x10102c6
	mov	rbp, rbp
	cmovne	rcx, rax
	mov	ebx, ebp
	lea	rsi, [rsi]
	and	ebx, 2
	shl	rbx, 0x15
	or	rbx, rcx
	test	bpl, 4
	jne	.label_516
	and	byte ptr [r15 + 0x38], 0x7f
	lea	rsi, [rsi]
	jmp	.label_513
.label_516:
	lea	rdi, [rdi]
	and	ebx, 0x143b2be
	or	rbx, 0x100
	or	byte ptr [r15 + 0x38], 0x80
.label_513:
	nop	
	mov	al, byte ptr [r15 + 0x38]
	add	ebp, ebp
	mov	rbp, rbp
	and	bpl, 0x10
	and	al, 0xef
	nop	
	or	al, bpl
	mov	byte ptr [r15 + 0x38], al
	nop	
	mov	qword ptr [r15 + 0x28], 0
	mov	rdi, r14
	lea	rdi, [rdi]
	call	strlen
	mov	rdi, r15
	mov	rbp, rbp
	mov	rsi, r14
	lea	rsi, [rsi]
	mov	rdx, rax
	lea	rdi, [rdi]
	mov	rcx, rbx
	call	re_compile_internal
	mov	rsp, rsp
	cmp	eax, 0x10
	mov	ebx, 8
	cmovne	ebx, eax
	test	ebx, ebx
	lea	rdi, [rdi]
	jne	.label_514
	mov	rdi, r15
	nop	
	call	rpl_re_compile_fastmap
	nop	
	xor	ebx, ebx
.label_515:
	mov	rsp, rsp
	mov	eax, ebx
	add	rsp, 8
	pop	rbx
	pop	r14
	mov	rbp, rbp
	pop	r15
	lea	rsi, [rsi]
	pop	rbp
	ret	
.label_514:
	mov	rdi, qword ptr [r15 + 0x20]
	call	free
	lea	rsi, [rsi]
	mov	qword ptr [r15 + 0x20], 0
	jmp	.label_515
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x409a40
	.globl rpl_regerror
	.type rpl_regerror, @function
rpl_regerror:

	push	r15
	push	r14
	lea	rdi, [rdi]
	push	r12
	mov	rsp, rsp
	push	rbx
	push	rax
	mov	r15, rcx
	mov	rbp, rbp
	mov	r14, rdx
	cmp	edi, 0x11
	jae	.label_517
	lea	rsi, [rsi]
	movsxd	rax, edi
	mov	esi, OFFSET FLAT:__re_error_msgid
	add	rsi,  qword ptr [word ptr [+ (rax * 8) + __re_error_msgid_idx]]
	xor	edi, edi
	mov	edx, 5
	lea	rdi, [rdi]
	call	dcgettext
	mov	r12, rax
	mov	rdi, r12
	call	strlen
	mov	rbx, rax
	inc	rbx
	test	r15, r15
	je	.label_519
	lea	rdi, [rdi]
	cmp	rbx, r15
	mov	rsp, rsp
	mov	rdx, rbx
	ja	.label_518
.label_520:
	mov	rdi, r14
	mov	rsp, rsp
	mov	rsi, r12
	call	memcpy
.label_519:
	mov	rax, rbx
	add	rsp, 8
	mov	rbp, rbp
	pop	rbx
	pop	r12
	mov	rsp, rsp
	pop	r14
	mov	rsp, rsp
	pop	r15
	mov	rsp, rsp
	ret	
.label_518:
	mov	rsp, rsp
	mov	byte ptr [r14 + r15 - 1], 0
	dec	r15
	lea	rdi, [rdi]
	mov	rdx, r15
	mov	rbp, rbp
	jmp	.label_520
.label_517:
	lea	rdi, [rdi]
	call	abort
	nop	
	.section	.text
	.align	32
	#Procedure 0x409af0
	.globl rpl_regfree
	.type rpl_regfree, @function
rpl_regfree:

	lea	rdi, [rdi]
	push	rbx
	nop	
	mov	rbx, rdi
	nop	
	mov	rdi, qword ptr [rbx]
	test	rdi, rdi
	lea	rdi, [rdi]
	je	.label_521
	call	free_dfa_content
.label_521:
	lea	rsi, [rsi]
	xorps	xmm0, xmm0
	movups	xmmword ptr [rbx], xmm0
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbx + 0x20]
	mov	rsp, rsp
	call	free
	mov	qword ptr [rbx + 0x20], 0
	mov	rdi, qword ptr [rbx + 0x28]
	lea	rsi, [rsi]
	call	free
	mov	qword ptr [rbx + 0x28], 0
	mov	rsp, rsp
	pop	rbx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x409b50

	.globl free_dfa_content
	.type free_dfa_content, @function
free_dfa_content:
	push	r15
	push	r14
	mov	rbp, rbp
	push	r13
	nop	
	push	r12
	mov	rbp, rbp
	push	rbx
	nop	
	mov	r14, rdi
	cmp	qword ptr [r14], 0
	mov	rbp, rbp
	je	.label_523
	lea	rsi, [rsi]
	xor	r15d, r15d
	mov	rsp, rsp
	cmp	qword ptr [r14 + 0x10], 0
	mov	rbp, rbp
	je	.label_523
	mov	rsp, rsp
	xor	ebx, ebx
	nop	word ptr cs:[rax + rax]
.label_529:
	mov	rsp, rsp
	mov	rdi, qword ptr [r14]
	add	rdi, r15
	lea	rdi, [rdi]
	call	free_token
	inc	rbx
	add	r15, 0x10
	mov	rbp, rbp
	cmp	rbx, qword ptr [r14 + 0x10]
	jb	.label_529
.label_523:
	mov	rdi, qword ptr [r14 + 0x18]
	call	free
	cmp	qword ptr [r14 + 0x10], 0
	lea	rsi, [rsi]
	je	.label_532
	nop	
	xor	r15d, r15d
	mov	ebx, 0x10
	nop	dword ptr [rax]
.label_527:
	nop	
	mov	rax, qword ptr [r14 + 0x30]
	test	rax, rax
	je	.label_530
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rax + rbx]
	nop	
	call	free
.label_530:
	lea	rsi, [rsi]
	mov	rax, qword ptr [r14 + 0x38]
	lea	rsi, [rsi]
	test	rax, rax
	je	.label_531
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rax + rbx]
	call	free
.label_531:
	mov	rsp, rsp
	mov	rax, qword ptr [r14 + 0x28]
	test	rax, rax
	lea	rsi, [rsi]
	je	.label_522
	mov	rdi, qword ptr [rax + rbx]
	call	free
.label_522:
	inc	r15
	add	rbx, 0x18
	cmp	r15, qword ptr [r14 + 0x10]
	jb	.label_527
.label_532:
	nop	
	mov	rdi, qword ptr [r14 + 0x28]
	call	free
	mov	rdi, qword ptr [r14 + 0x30]
	nop	
	call	free
	mov	rdi, qword ptr [r14 + 0x38]
	call	free
	mov	rdi, qword ptr [r14]
	call	free
	lea	rdi, [rdi]
	cmp	qword ptr [r14 + 0x40], 0
	je	.label_524
	mov	rsp, rsp
	xor	r15d, r15d
	nop	dword ptr [rax]
.label_525:
	mov	rax, qword ptr [r14 + 0x40]
	lea	rsi, [rsi]
	lea	rcx, [r15 + r15*2]
	lea	r12, [rax + rcx*8 + 0x10]
	cmp	qword ptr [rax + rcx*8], 0
	lea	rsi, [rsi]
	jle	.label_528
	lea	r13, [rax + rcx*8]
	nop	
	xor	ebx, ebx
	nop	word ptr cs:[rax + rax]
.label_533:
	mov	rax, qword ptr [r12]
	mov	rbp, rbp
	mov	rdi, qword ptr [rax + rbx*8]
	call	free_state
	mov	rsp, rsp
	inc	rbx
	cmp	rbx, qword ptr [r13]
	lea	rdi, [rdi]
	jl	.label_533
.label_528:
	mov	rbp, rbp
	mov	rdi, qword ptr [r12]
	lea	rdi, [rdi]
	call	free
	mov	rsp, rsp
	inc	r15
	mov	rbp, rbp
	cmp	r15, qword ptr [r14 + 0x88]
	jbe	.label_525
.label_524:
	mov	rdi, qword ptr [r14 + 0x40]
	call	free
	mov	rdi, qword ptr [r14 + 0x78]
	mov	eax, OFFSET FLAT:utf8_sb_map
	cmp	rdi, rax
	mov	rbp, rbp
	je	.label_526
	mov	rsp, rsp
	call	free
.label_526:
	lea	rsi, [rsi]
	mov	rdi, qword ptr [r14 + 0xe0]
	call	free
	mov	rdi, r14
	mov	rbp, rbp
	pop	rbx
	pop	r12
	mov	rbp, rbp
	pop	r13
	pop	r14
	lea	rsi, [rsi]
	pop	r15
	nop	
	jmp	free
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x409d20
	.globl rpl_regexec
	.type rpl_regexec, @function
rpl_regexec:

	nop
	push	rbp
	lea	rsi, [rsi]
	push	r15
	push	r14
	mov	rbp, rbp
	push	r12
	push	rbx
	lea	rsi, [rsi]
	sub	rsp, 0x20
	mov	ebp, r8d
	mov	r12, rcx
	mov	r15, rdx
	lea	rsi, [rsi]
	mov	r14, rsi
	lea	rdi, [rdi]
	mov	rbx, rdi
	mov	eax, 2
	mov	rbp, rbp
	cmp	ebp, 7
	nop	
	ja	.label_534
	test	bpl, 4
	nop	
	jne	.label_538
	mov	rbp, rbp
	mov	rdi, r14
	lea	rsi, [rsi]
	call	strlen
	mov	rdx, rax
	xor	ecx, ecx
	jmp	.label_535
.label_538:
	lea	rsi, [rsi]
	mov	rcx, qword ptr [r12]
	mov	rdx, qword ptr [r12 + 8]
.label_535:
	test	byte ptr [rbx + 0x38], 0x10
	nop	
	jne	.label_536
	mov	dword ptr [rsp + 0x10], ebp
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 8], r12
	lea	rdi, [rdi]
	mov	qword ptr [rsp], r15
	lea	rsi, [rsi]
	jmp	.label_537
.label_536:
	mov	dword ptr [rsp + 0x10], ebp
	mov	qword ptr [rsp + 8], 0
	nop	
	mov	qword ptr [rsp], 0
.label_537:
	mov	rdi, rbx
	lea	rsi, [rsi]
	mov	rsi, r14
	lea	rsi, [rsi]
	mov	r8, rdx
	lea	rdi, [rdi]
	mov	r9, rdx
	call	re_search_internal
	mov	rbp, rbp
	test	eax, eax
	setne	al
	movzx	eax, al
.label_534:
	mov	rsp, rsp
	add	rsp, 0x20
	nop	
	pop	rbx
	pop	r12
	lea	rsi, [rsi]
	pop	r14
	lea	rsi, [rsi]
	pop	r15
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x409e00

	.globl re_search_internal
	.type re_search_internal, @function
re_search_internal:
	push	rbp
	push	r15
	push	r14
	lea	rsi, [rsi]
	push	r13
	push	r12
	mov	rsp, rsp
	push	rbx
	mov	rsp, rsp
	sub	rsp, 0x188
	mov	r15, rcx
	mov	rbp, rbp
	mov	r14, rdi
	mov	r12, qword ptr [rsp + 0x1c0]
	mov	rbx, qword ptr [r14]
	xorps	xmm0, xmm0
	movaps	xmmword ptr [rsp + 0x170], xmm0
	movaps	xmmword ptr [rsp + 0x160], xmm0
	movaps	xmmword ptr [rsp + 0x150], xmm0
	lea	rsi, [rsi]
	movaps	xmmword ptr [rsp + 0x140], xmm0
	mov	rbp, rbp
	movaps	xmmword ptr [rsp + 0x130], xmm0
	movaps	xmmword ptr [rsp + 0x120], xmm0
	movaps	xmmword ptr [rsp + 0x110], xmm0
	movaps	xmmword ptr [rsp + 0x100], xmm0
	movaps	xmmword ptr [rsp + 0xf0], xmm0
	nop	
	movaps	xmmword ptr [rsp + 0xe0], xmm0
	nop	
	movaps	xmmword ptr [rsp + 0xd0], xmm0
	lea	rdi, [rdi]
	movaps	xmmword ptr [rsp + 0xc0], xmm0
	movaps	xmmword ptr [rsp + 0xb0], xmm0
	movaps	xmmword ptr [rsp + 0xa0], xmm0
	lea	rdi, [rdi]
	movaps	xmmword ptr [rsp + 0x90], xmm0
	movaps	xmmword ptr [rsp + 0x80], xmm0
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x118], rbx
	mov	rax, qword ptr [r14 + 0x20]
	xor	r10d, r10d
	lea	rsi, [rsi]
	test	rax, rax
	lea	rsi, [rsi]
	je	.label_539
	mov	cl, byte ptr [r14 + 0x38]
	and	cl, 9
	lea	rdi, [rdi]
	movzx	ecx, cl
	lea	rsi, [rsi]
	xor	edi, edi
	nop	
	cmp	ecx, 8
	nop	
	cmovne	rax, rdi
	mov	rsp, rsp
	cmp	r15, r8
	cmove	rax, rdi
	nop	
	mov	r10, rax
.label_539:
	mov	rsp, rsp
	mov	rax, qword ptr [r14 + 0x30]
	lea	rdi, [r12 - 1]
	nop	
	mov	rcx, rdi
	mov	rsp, rsp
	sub	rcx, rax
	xor	ebp, ebp
	mov	rsp, rsp
	cmp	rax, r12
	lea	rsi, [rsi]
	cmovb	rbp, rcx
	mov	r13d, 1
	mov	rsp, rsp
	cmp	qword ptr [r14 + 0x10], 0
	je	.label_543
	mov	rbp, rbp
	mov	rax, qword ptr [rbx + 0x48]
	nop	
	test	rax, rax
	mov	rsp, rsp
	je	.label_543
	mov	rcx, qword ptr [rbx + 0x50]
	test	rcx, rcx
	lea	rsi, [rsi]
	je	.label_543
	lea	rsi, [rsi]
	mov	r11, qword ptr [rbx + 0x58]
	test	r11, r11
	nop	
	je	.label_543
	cmp	qword ptr [rbx + 0x60], 0
	nop	
	je	.label_543
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x58], r9
	lea	rsi, [rsi]
	mov	r9, qword ptr [r14 + 0x28]
	cmp	qword ptr [rax + 0x10], 0
	nop	
	je	.label_577
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x50], r8
	jmp	.label_570
.label_577:
	cmp	qword ptr [rcx + 0x10], 0
	je	.label_585
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x50], r8
.label_570:
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x30], r9
	mov	qword ptr [rsp + 0x48], r10
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x18], rdi
	mov	rbp, rbp
	mov	byte ptr [rsp + 0x67], 1
	cmp	rbp, r12
	lea	rdi, [rdi]
	jne	.label_589
	lea	rdi, [rdi]
	cmp	qword ptr [rbx + 0x98], 0
	mov	rbp, rbp
	setne	byte ptr [rsp + 0x67]
.label_589:
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbx + 0x10]
	inc	rcx
	mov	rbp, rbp
	mov	r8, qword ptr [r14 + 0x28]
	mov	r9d, 0x400000
	lea	rdi, [rdi]
	and	r9, qword ptr [r14 + 0x18]
	mov	rsp, rsp
	shr	r9, 0x16
	lea	rdi, [rdi]
	mov	qword ptr [rsp], rbx
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x78], rbx
	lea	rdi, [rsp + 0x80]
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x68], rsi
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x70], rdx
	mov	rbp, rbp
	call	re_string_allocate
	mov	r13d, eax
	lea	rsi, [rsi]
	test	r13d, r13d
	jne	.label_550
	mov	esi, dword ptr [rsp + 0x1d0]
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0x58]
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0xe8], rax
	mov	rsp, rsp
	mov	qword ptr [rsp + 0xe0], rax
	mov	al, byte ptr [r14 + 0x38]
	shr	al, 7
	lea	rsi, [rsi]
	mov	byte ptr [rsp + 0x10d], al
	mov	rax, qword ptr [rsp + 0x78]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rax + 0x98]
	add	rdx, rdx
	lea	rdi, [rsp + 0x80]
	lea	rdi, [rdi]
	call	match_ctx_init
	lea	rsi, [rsi]
	mov	r13d, eax
	test	r13d, r13d
	lea	rsi, [rsi]
	jne	.label_550
	mov	rax, r12
	sub	rax, rbp
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x40], rax
	cmp	rax, 1
	ja	.label_591
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0x78]
	mov	rbp, rbp
	test	byte ptr [rax + 0xb0], 2
	nop	
	jne	.label_591
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x10], rbp
	mov	qword ptr [rsp + 0x138], 0
	lea	rdi, [rdi]
	jmp	.label_599
.label_591:
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x10], rbp
	mov	rax, qword ptr [rsp + 0xc0]
	mov	r13d, 0xc
	nop	
	movabs	rcx, 0x1ffffffffffffffe
	nop	
	cmp	rax, rcx
	mov	rbp, rbp
	ja	.label_550
	lea	rdi, [rax*8 + 8]
	call	malloc
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x138], rax
	test	rax, rax
	lea	rsi, [rsi]
	je	.label_550
.label_599:
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x180], r15
	mov	rbp, rbp
	mov	eax, dword ptr [rsp + 0x1d0]
	lea	eax, [rax + rax]
	and	eax, 2
	xor	eax, 6
	mov	rbp, rbp
	mov	dword ptr [rsp + 0xf0], eax
	nop	
	mov	rax, qword ptr [rsp + 0x50]
	cmp	rax, r15
	mov	rbp, rbp
	mov	r11d, 0xffffffff
	lea	rsi, [rsi]
	mov	ecx, 1
	cmovge	r11d, ecx
	mov	r13, r15
	cmovle	r13, rax
	mov	qword ptr [rsp + 0x28], r13
	mov	rbp, rax
	lea	rsi, [rsi]
	cmovl	rbp, r15
	mov	qword ptr [rsp + 0x38], rbp
	mov	r8, qword ptr [rsp + 0x78]
	lea	rdi, [rdi]
	mov	ecx, dword ptr [r8 + 0xb4]
	mov	rbp, rbp
	mov	dword ptr [rsp + 0x58], ecx
	mov	esi, 8
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rsp + 0x48]
	lea	rsi, [rsi]
	test	rdi, rdi
	mov	rsp, rsp
	mov	rbx, qword ptr [rsp + 0x30]
	mov	rbp, rbp
	je	.label_595
	lea	rdi, [rdi]
	cmp	dword ptr [rsp + 0x58], 1
	mov	rsp, rsp
	je	.label_601
	lea	rdi, [rdi]
	mov	edx, 0x400000
	xor	r9d, r9d
	test	rbx, rbx
	mov	rsp, rsp
	jne	.label_542
	and	rdx, qword ptr [r14 + 0x18]
	jne	.label_542
.label_601:
	mov	r9d, 4
.label_542:
	cmp	r15, rax
	setle	dl
	test	rbx, rbx
	setne	cl
	movzx	ecx, cl
	lea	rsi, [rsi]
	movzx	edx, dl
	nop	
	lea	esi, [rcx + rdx*2]
	mov	rbp, rbp
	or	esi, r9d
.label_595:
	mov	rcx, qword ptr [rsp + 0x180]
	cmp	rcx, r13
	mov	rdx, qword ptr [rsp + 0x70]
	mov	rsp, rsp
	mov	r9, qword ptr [rsp + 0x68]
	mov	rbp, rbp
	jl	.label_557
	lea	rsi, [rsi]
	cmp	rbp, rcx
	nop	
	jl	.label_565
	xor	r10d, r10d
	cmp	r15, rax
	lea	rcx, [rsp + 0x180]
	cmovg	rcx, r10
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x20], rcx
	movsxd	r15, r11d
	add	esi, -4
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x50], rsi
.label_588:
	cmp	esi, 4
	ja	.label_563
	mov	rax, qword ptr [rsp + 0x50]
	jmp	qword ptr [word ptr [+ (rax * 8) + label_581]]
.label_1981:
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rsp + 0x180]
	mov	rsp, rsp
	cmp	rcx, r13
	mov	rsp, rsp
	jl	.label_583
	nop	
.label_597:
	lea	rdi, [rdi]
	xor	eax, eax
	cmp	rcx, rdx
	mov	rbp, rbp
	jge	.label_587
	movzx	eax, byte ptr [r9 + rcx]
.label_587:
	test	rbx, rbx
	lea	rsi, [rsi]
	je	.label_594
	lea	rdi, [rdi]
	movzx	eax, byte ptr [rbx + rax]
.label_594:
	lea	rdi, [rdi]
	cmp	byte ptr [rdi + rax], 0
	mov	rsp, rsp
	jne	.label_583
	nop	
	mov	rax, qword ptr [rsp + 0x180]
	lea	rcx, [rax - 1]
	mov	qword ptr [rsp + 0x180], rcx
	lea	rsi, [rsi]
	cmp	rax, r13
	mov	rbp, rbp
	jg	.label_597
.label_583:
	nop	
	cmp	qword ptr [rsp + 0x180], r13
	jge	.label_540
	mov	rbp, rbp
	jmp	.label_546
	nop	word ptr cs:[rax + rax]
.label_555:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0x180]
	lea	rdi, [rdi]
	add	rax, r15
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x180], rax
	cmp	rax, r13
	mov	rbp, rbp
	jl	.label_546
	mov	rbp, rbp
	cmp	rax, rbp
	nop	
	jle	.label_563
	jmp	.label_546
.label_598:
	mov	qword ptr [rsp + 0x30], r15
	mov	qword ptr [rsp + 0x38], rbp
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x28], r13
	mov	r15, r9
	mov	rbp, rdx
	mov	qword ptr [rsp + 0x78], r8
	lea	rdi, [rdi]
	lea	rdi, [rsp + 0x80]
	mov	edx, dword ptr [rsp + 0x1d0]
	lea	rsi, [rsi]
	call	re_string_reconstruct
	mov	r13d, eax
	test	r13d, r13d
	jne	.label_550
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0x180]
	sub	rax, qword ptr [rsp + 0xa8]
	nop	
	mov	r8, qword ptr [rsp + 0x78]
	lea	rsi, [rsi]
	mov	rdx, rbp
	lea	rsi, [rsi]
	mov	r9, r15
	mov	rdi, qword ptr [rsp + 0x48]
	nop	
	mov	r13, qword ptr [rsp + 0x28]
	mov	rsp, rsp
	mov	rbp, qword ptr [rsp + 0x38]
	mov	r15, qword ptr [rsp + 0x30]
	jmp	.label_584
	nop	dword ptr [rax]
.label_563:
	mov	rsi, qword ptr [rsp + 0x180]
	lea	rsi, [rsi]
	mov	rax, rsi
	lea	rdi, [rdi]
	sub	rax, qword ptr [rsp + 0xa8]
	lea	rdi, [rdi]
	cmp	rax, qword ptr [rsp + 0xb8]
	mov	rsp, rsp
	jae	.label_598
.label_584:
	cmp	qword ptr [rsp + 0x180], rdx
	mov	rsp, rsp
	mov	ecx, 0
	jge	.label_547
	mov	rcx, qword ptr [rsp + 0x88]
	movzx	ecx, byte ptr [rcx + rax]
.label_547:
	lea	rdi, [rdi]
	cmp	byte ptr [rdi + rcx], 0
	mov	rbp, rbp
	je	.label_555
	jmp	.label_540
.label_1982:
	mov	rax, qword ptr [rsp + 0x180]
	jmp	.label_561
	nop	word ptr [rax + rax]
.label_568:
	nop	
	inc	rax
	mov	qword ptr [rsp + 0x180], rax
.label_561:
	nop	
	cmp	rax, rbp
	jge	.label_554
	mov	rsp, rsp
	movzx	ecx, byte ptr [r9 + rax]
	mov	rbp, rbp
	cmp	byte ptr [rdi + rcx], 0
	mov	rsp, rsp
	je	.label_568
	jmp	.label_554
.label_1983:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp + 0x180]
	jmp	.label_574
	nop	word ptr cs:[rax + rax]
.label_586:
	lea	rsi, [rsi]
	inc	rax
	mov	qword ptr [rsp + 0x180], rax
.label_574:
	cmp	rax, rbp
	jge	.label_554
	lea	rdi, [rdi]
	movzx	ecx, byte ptr [r9 + rax]
	lea	rdi, [rdi]
	movzx	ecx, byte ptr [rbx + rcx]
	nop	
	cmp	byte ptr [rdi + rcx], 0
	je	.label_586
.label_554:
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rsp + 0x180]
	cmp	rcx, rbp
	mov	rbp, rbp
	je	.label_592
.label_540:
	mov	rbp, rdi
	mov	rsi, qword ptr [rsp + 0x180]
	lea	rdi, [rsp + 0x80]
	mov	edx, dword ptr [rsp + 0x1d0]
	call	re_string_reconstruct
	test	eax, eax
	nop	
	jne	.label_602
	cmp	dword ptr [rsp + 0x58], 1
	lea	rsi, [rsi]
	je	.label_541
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rsp + 0xb0]
	lea	rsi, [rsi]
	test	rcx, rcx
	je	.label_541
	mov	rcx, qword ptr [rsp + 0x90]
	cmp	dword ptr [rcx], -1
	mov	rsp, rsp
	je	.label_549
.label_541:
	mov	rsp, rsp
	mov	dword ptr [rsp + 0x30], eax
	mov	dword ptr [rsp + 0x160], 0
	lea	rax, [rsp + 0x140]
	xorps	xmm0, xmm0
	lea	rdi, [rdi]
	movups	xmmword ptr [rax], xmm0
	movzx	esi, byte ptr [rsp + 0x67]
	lea	rdi, [rsp + 0x80]
	mov	rdx, qword ptr [rsp + 0x20]
	lea	rsi, [rsi]
	call	check_matching
	lea	rdi, [rdi]
	cmp	rax, -1
	nop	
	je	.label_569
	lea	rdi, [rdi]
	mov	r13d, 0xc
	nop	
	cmp	rax, -2
	mov	rbp, rbp
	je	.label_550
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x128], rax
	cmp	qword ptr [rsp + 0x40], 2
	jb	.label_580
	mov	cl, byte ptr [r14 + 0x38]
	lea	rdi, [rdi]
	and	cl, 0x10
	lea	rsi, [rsi]
	je	.label_590
.label_580:
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rsp + 0x78]
	cmp	qword ptr [rcx + 0x98], 0
	mov	rbp, rbp
	je	.label_575
.label_590:
	mov	rcx, qword ptr [rsp + 0x138]
	mov	rsi, qword ptr [rcx + rax*8]
	mov	rbp, rbp
	lea	rdi, [rsp + 0x80]
	mov	rbp, rbp
	mov	rdx, rax
	call	check_halt_state_context
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x130], rax
.label_575:
	lea	rdi, [rdi]
	cmp	qword ptr [rsp + 0x40], 2
	mov	rsp, rsp
	jb	.label_560
	mov	al, byte ptr [r14 + 0x38]
	and	al, 0x10
	mov	rbp, rbp
	jne	.label_560
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0x78]
	mov	rsp, rsp
	test	byte ptr [rax + 0xb0], 1
	lea	rsi, [rsi]
	jne	.label_545
.label_560:
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0x78]
	mov	rbp, rbp
	cmp	qword ptr [rax + 0x98], 0
	je	.label_571
.label_545:
	mov	rsp, rsp
	lea	rdi, [rsp + 0x80]
	nop	
	call	prune_impossible_nodes
	mov	rbp, rbp
	mov	r13d, eax
	mov	rbp, rbp
	mov	dword ptr [rsp + 0x30], 0
	mov	rbp, rbp
	test	r13d, r13d
	lea	rsi, [rsi]
	je	.label_571
	nop	
	cmp	r13d, 1
	mov	rsp, rsp
	jne	.label_550
.label_569:
	nop	
	lea	rdi, [rsp + 0x80]
	mov	rsp, rsp
	call	match_ctx_clean
	mov	r13, qword ptr [rsp + 0x28]
.label_549:
	mov	rax, qword ptr [rsp + 0x180]
	mov	rbp, rbp
	add	rax, r15
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x180], rax
	cmp	rax, r13
	mov	rdi, rbp
	jl	.label_593
	mov	rsp, rsp
	mov	rbp, qword ptr [rsp + 0x38]
	cmp	rbp, rax
	mov	r8, qword ptr [rsp + 0x78]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rsp + 0x70]
	mov	r9, qword ptr [rsp + 0x68]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rsp + 0x50]
	jge	.label_588
	jmp	.label_558
.label_592:
	xor	eax, eax
	mov	rbp, rbp
	cmp	rcx, rdx
	mov	rsp, rsp
	jge	.label_600
	lea	rdi, [rdi]
	movzx	eax, byte ptr [r9 + rcx]
.label_600:
	test	rbx, rbx
	nop	
	je	.label_605
	movzx	eax, byte ptr [rbx + rax]
.label_605:
	nop	
	cmp	byte ptr [rdi + rax], 0
	jne	.label_540
.label_546:
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x78], r8
	mov	r13d, 1
	jmp	.label_550
.label_557:
	mov	r13d, 1
	jmp	.label_550
.label_565:
	mov	r13d, 1
	nop	
	jmp	.label_550
.label_571:
	nop	
	mov	rdx, qword ptr [rsp + 0x10]
	mov	rbp, rbp
	cmp	rdx, r12
	mov	rbp, rbp
	je	.label_552
	mov	rbp, rbp
	cmp	qword ptr [rsp + 0x40], 2
	mov	rbp, rbp
	mov	rsi, qword ptr [rsp + 0x1c8]
	jb	.label_564
	mov	rax, qword ptr [rsp + 0x18]
	lea	rdi, [rdi]
	sub	rax, rdx
	lea	rcx, [rsi + 0x10]
.label_573:
	mov	qword ptr [rcx + 8], -1
	lea	rsi, [rsi]
	mov	qword ptr [rcx], -1
	lea	rdi, [rdi]
	add	rcx, 0x10
	nop	
	dec	rax
	lea	rdi, [rdi]
	jne	.label_573
.label_564:
	mov	rbp, rbp
	mov	rbx, rdx
	lea	rdi, [rdi]
	mov	qword ptr [rsi], 0
	nop	
	mov	rax, qword ptr [rsp + 0x128]
	mov	qword ptr [rsi + 8], rax
	nop	
	mov	rbp, rsi
	lea	rsi, [rsi]
	cmp	qword ptr [rsp + 0x40], 2
	jb	.label_582
	mov	al, byte ptr [r14 + 0x38]
	mov	rbp, rbp
	and	al, 0x10
	mov	rbp, rbp
	jne	.label_582
	mov	dword ptr [rsp + 0x30], 0
	mov	rcx, qword ptr [rsp + 0x78]
	lea	rdi, [rdi]
	test	byte ptr [rcx + 0xb0], 1
	lea	rdi, [rdi]
	mov	eax, 0
	mov	rbp, rbp
	je	.label_544
	cmp	qword ptr [rcx + 0x98], 0
	mov	rbp, rbp
	setg	al
.label_544:
	movzx	r8d, al
	mov	rbp, rbp
	lea	rsi, [rsp + 0x80]
	mov	rbp, rbp
	mov	rdi, r14
	mov	rdx, qword ptr [rsp + 0x40]
	mov	rcx, rbp
	mov	rbp, rbp
	call	set_regs
	mov	r13d, eax
	test	r13d, r13d
	mov	rbp, rbp
	jne	.label_550
.label_582:
	mov	rdx, rbx
	mov	rsp, rsp
	cmp	rdx, r12
	mov	rsp, rsp
	je	.label_559
	mov	rbp, rbp
	mov	al, byte ptr [rsp + 0x10c]
	lea	r8, [rsp + 0xb8]
	mov	rbp, rbp
	mov	r9, qword ptr [rsp + 0x98]
	lea	rsi, [rbp + 8]
	mov	rdi, qword ptr [rsp + 0x40]
	jmp	.label_556
.label_585:
	lea	rsi, [rsi]
	cmp	qword ptr [r11 + 0x10], 0
	lea	rdi, [rdi]
	je	.label_572
	lea	rdi, [rdi]
	cmp	byte ptr [r14 + 0x38], 0
	js	.label_576
.label_572:
	xor	eax, eax
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x50], rax
	test	r15, r15
	je	.label_579
	test	r8, r8
	mov	r15d, 0
	nop	
	jne	.label_543
	lea	rsi, [rsi]
	jmp	.label_570
.label_602:
	mov	r13d, eax
	mov	rbp, rbp
	jmp	.label_550
.label_548:
	cmp	rbx, qword ptr [rsp + 0xb0]
	mov	rcx, r8
	lea	rsi, [rsi]
	je	.label_578
	lea	rcx, [r9 + rbx*8]
.label_578:
	mov	rbp, rbp
	mov	rcx, qword ptr [rcx]
	mov	rbp, rbp
	mov	qword ptr [rsi - 8], rcx
	mov	rbx, qword ptr [rsi]
	lea	rsi, [rsi]
	cmp	rbx, qword ptr [rsp + 0xb0]
	mov	rcx, r8
	lea	rsi, [rsi]
	je	.label_596
	mov	rsp, rsp
	lea	rcx, [r9 + rbx*8]
.label_596:
	mov	rcx, qword ptr [rcx]
	mov	qword ptr [rsi], rcx
	jmp	.label_604
.label_556:
	mov	rsp, rsp
	mov	rbx, qword ptr [rsi - 8]
	nop	
	cmp	rbx, -1
	je	.label_553
	test	al, al
	jne	.label_548
.label_604:
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rsp + 0x180]
	lea	rdi, [rdi]
	add	qword ptr [rsi - 8], rcx
	add	qword ptr [rsi], rcx
.label_553:
	add	rsi, 0x10
	dec	rdi
	jne	.label_556
.label_559:
	lea	rdi, [rdi]
	test	rdx, rdx
	mov	rsp, rsp
	mov	rbx, qword ptr [rsp + 0x18]
	mov	rbp, rbp
	jle	.label_562
	lea	rsi, [rsi]
	sub	r12, rdx
	shl	r12, 4
	add	r12, rbp
	mov	rax, rdx
	nop	dword ptr [rax]
.label_567:
	nop	
	mov	qword ptr [r12 + 8], -1
	mov	rsp, rsp
	mov	qword ptr [r12], -1
	add	r12, 0x10
	mov	rbp, rbp
	dec	rax
	mov	rsp, rsp
	jne	.label_567
.label_562:
	mov	rdi, qword ptr [rsp + 0x78]
	lea	rdi, [rdi]
	cmp	qword ptr [rdi + 0xe0], 0
	je	.label_552
	mov	rsp, rsp
	cmp	qword ptr [rsp + 0x40], 2
	nop	
	jb	.label_552
	mov	rax, qword ptr [rdi + 0xe0]
	sub	rbx, rdx
	mov	rsp, rsp
	lea	rcx, [rbp + 0x18]
	lea	rsi, [rsi]
	xor	edx, edx
.label_603:
	mov	rsi, qword ptr [rax + rdx*8]
	nop	
	cmp	rdx, rsi
	lea	rsi, [rsi]
	je	.label_566
	lea	rdi, [rdi]
	shl	rsi, 4
	mov	rsi, qword ptr [rsi + rbp + 0x10]
	mov	qword ptr [rcx - 8], rsi
	mov	rsi, qword ptr [rdi + 0xe0]
	mov	rsp, rsp
	mov	rsi, qword ptr [rsi + rdx*8]
	shl	rsi, 4
	mov	rsp, rsp
	mov	rsi, qword ptr [rsi + rbp + 0x18]
	mov	qword ptr [rcx], rsi
.label_566:
	inc	rdx
	lea	rdi, [rdi]
	add	rcx, 0x10
	lea	rdi, [rdi]
	cmp	rbx, rdx
	jne	.label_603
.label_552:
	mov	r13d, dword ptr [rsp + 0x30]
.label_550:
	mov	rdi, qword ptr [rsp + 0x138]
	mov	rsp, rsp
	call	free
	mov	rax, qword ptr [rsp + 0x78]
	nop	
	cmp	qword ptr [rax + 0x98], 0
	mov	rbp, rbp
	je	.label_551
	lea	rsi, [rsi]
	lea	rdi, [rsp + 0x80]
	call	match_ctx_free
.label_551:
	lea	rdi, [rsp + 0x80]
	lea	rsi, [rsi]
	call	re_string_destruct
.label_543:
	mov	eax, r13d
	add	rsp, 0x188
	mov	rsp, rsp
	pop	rbx
	pop	r12
	pop	r13
	lea	rdi, [rdi]
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_576:
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x50], r8
	jmp	.label_570
.label_579:
	mov	rsp, rsp
	xor	r15d, r15d
	jmp	.label_570
.label_593:
	mov	r13d, 1
	lea	rdi, [rdi]
	jmp	.label_550
.label_558:
	mov	rsp, rsp
	mov	r13d, 1
	jmp	.label_550
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40aaa0
	.globl rpl_re_match
	.type rpl_re_match, @function
rpl_re_match:

	nop
	sub	rsp, 0x18
	mov	qword ptr [rsp], r8
	mov	dword ptr [rsp + 8], 1
	xor	r8d, r8d
	mov	r9, rdx
	mov	rbp, rbp
	call	re_search_stub
	nop	
	add	rsp, 0x18
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40aad0

	.globl re_search_stub
	.type re_search_stub, @function
re_search_stub:
	lea	rsi, [rsi]
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	nop	
	push	rbx
	sub	rsp, 0x48
	test	rcx, rcx
	mov	r14, -1
	js	.label_608
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x28], rsi
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x30], r9
	lea	rsi, [rsi]
	cmp	rcx, rdx
	jg	.label_608
	nop	
	mov	r14, qword ptr [rsp + 0x80]
	nop	
	xor	r15d, r15d
	mov	rsp, rsp
	add	r8, rcx
	mov	rbp, rbp
	cmovns	r15, r8
	cmp	r8, rdx
	cmovg	r15, rdx
	movzx	r12d, byte ptr [rdi + 0x38]
	cmp	r15, rcx
	jle	.label_606
	mov	rsp, rsp
	test	r12b, 8
	lea	rdi, [rdi]
	jne	.label_606
	mov	rax, qword ptr [rdi + 0x20]
	mov	rbp, rbp
	test	rax, rax
	lea	rdi, [rdi]
	je	.label_606
	mov	rbp, rdi
	mov	r13, rcx
	nop	
	mov	rbx, rdx
	call	rpl_re_compile_fastmap
	mov	rdx, rbx
	mov	rdi, rbp
	mov	rcx, r13
.label_606:
	xor	esi, esi
	mov	rsp, rsp
	test	r14, r14
	mov	ebx, 1
	nop	
	je	.label_610
	mov	qword ptr [rsp + 0x38], rdx
	mov	qword ptr [rsp + 0x40], rcx
	lea	rdi, [rdi]
	mov	al, byte ptr [rdi + 0x38]
	mov	cl, al
	and	cl, 0x10
	mov	rsp, rsp
	jne	.label_614
	lea	rsi, [rsi]
	and	al, 6
	nop	
	movzx	eax, al
	cmp	eax, 4
	nop	
	jne	.label_609
	mov	rax, qword ptr [r14]
	cmp	rax, qword ptr [rdi + 0x30]
	jbe	.label_612
.label_609:
	mov	rbx, qword ptr [rdi + 0x30]
	lea	rsi, [rsi]
	inc	rbx
.label_615:
	mov	rsi, r14
	jmp	.label_614
.label_610:
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x38], rdx
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x40], rcx
.label_614:
	nop	
	mov	qword ptr [rsp + 0x20], rsi
	nop	
	mov	rbp, rdi
	mov	rdi, rbx
	mov	rbp, rbp
	shl	rdi, 4
	nop	
	call	malloc
	mov	r13, rax
	lea	rsi, [rsi]
	mov	r14, -2
	lea	rsi, [rsi]
	test	r13, r13
	mov	rsp, rsp
	mov	rcx, qword ptr [rsp + 0x40]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rsp + 0x38]
	nop	
	je	.label_608
	mov	al, r12b
	shr	al, 5
	mov	rbp, rbp
	and	al, 1
	lea	rdi, [rdi]
	and	r12d, 0x40
	movzx	eax, al
	shr	r12d, 5
	or	r12d, eax
	mov	dword ptr [rsp + 0x10], r12d
	mov	qword ptr [rsp + 8], r13
	nop	
	mov	r14, rbx
	mov	rsp, rsp
	mov	qword ptr [rsp], r14
	mov	rdi, rbp
	mov	rsi, qword ptr [rsp + 0x28]
	mov	rbx, rcx
	mov	rsp, rsp
	mov	r8, r15
	lea	rdi, [rdi]
	mov	r9, qword ptr [rsp + 0x30]
	lea	rsi, [rsi]
	call	re_search_internal
	test	eax, eax
	nop	
	je	.label_613
	mov	rsp, rsp
	cmp	eax, 1
	mov	rbp, rbp
	sete	al
	lea	rdi, [rdi]
	movzx	r14d, al
	lea	rdi, [rdi]
	or	r14, 0xfffffffffffffffe
	mov	rsp, rsp
	jmp	.label_611
.label_613:
	nop	
	mov	rdx, r14
	nop	
	mov	rdi, qword ptr [rsp + 0x20]
	test	rdi, rdi
	je	.label_607
	mov	al, byte ptr [rbp + 0x38]
	mov	rbp, rbp
	shr	al, 1
	lea	rdi, [rdi]
	and	al, 3
	lea	rdi, [rdi]
	movzx	ecx, al
	mov	rsp, rsp
	mov	rsi, r13
	call	re_copy_regs
	mov	cl, byte ptr [rbp + 0x38]
	add	al, al
	and	cl, 0xf9
	mov	rsp, rsp
	mov	dl, al
	and	dl, 6
	or	dl, cl
	lea	rsi, [rsi]
	and	al, 6
	mov	byte ptr [rbp + 0x38], dl
	mov	r14, -2
	nop	
	je	.label_611
.label_607:
	mov	al, byte ptr [rsp + 0x88]
	lea	rsi, [rsi]
	mov	r14, qword ptr [r13]
	test	al, al
	nop	
	je	.label_611
	cmp	r14, rbx
	jne	.label_616
	mov	rsp, rsp
	mov	r14, qword ptr [r13 + 8]
	lea	rdi, [rdi]
	sub	r14, rbx
.label_611:
	mov	rdi, r13
	call	free
.label_608:
	lea	rsi, [rsi]
	mov	rax, r14
	add	rsp, 0x48
	lea	rsi, [rsi]
	pop	rbx
	mov	rsp, rsp
	pop	r12
	pop	r13
	lea	rdi, [rdi]
	pop	r14
	pop	r15
	pop	rbp
	lea	rdi, [rdi]
	ret	
.label_612:
	xor	ecx, ecx
	lea	rdi, [rdi]
	test	rax, rax
	lea	rsi, [rsi]
	cmovle	r14, rcx
	mov	ebx, 1
	mov	rbp, rbp
	cmovg	rbx, rax
	jmp	.label_615
.label_616:
	mov	edi, OFFSET FLAT:.str.21_0
	mov	esi, OFFSET FLAT:.str.22_0
	lea	rdi, [rdi]
	mov	edx, 0x1be
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.re_search_stub
	call	__assert_fail
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40ad70

	.globl rpl_re_search
	.type rpl_re_search, @function
rpl_re_search:
	mov	rbp, rbp
	sub	rsp, 0x18
	mov	qword ptr [rsp], r9
	mov	dword ptr [rsp + 8], 0
	nop	
	mov	r9, rdx
	call	re_search_stub
	mov	rsp, rsp
	add	rsp, 0x18
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40ada0
	.globl rpl_re_match_2
	.type rpl_re_match_2, @function
rpl_re_match_2:

	mov	rbp, rbp
	sub	rsp, 0x28
	mov	rsp, rsp
	mov	r10, qword ptr [rsp + 0x30]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp + 0x38]
	mov	qword ptr [rsp + 0x10], rax
	mov	qword ptr [rsp + 8], r10
	mov	rbp, rbp
	mov	dword ptr [rsp + 0x18], 1
	lea	rdi, [rdi]
	mov	qword ptr [rsp], 0
	mov	rsp, rsp
	call	re_search_2_stub
	nop	
	add	rsp, 0x28
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40adf0

	.globl re_search_2_stub
	.type re_search_2_stub, @function
re_search_2_stub:
	push	rbp
	push	r15
	mov	rsp, rsp
	push	r14
	push	r13
	nop	
	push	r12
	lea	rsi, [rsi]
	push	rbx
	sub	rsp, 0x28
	mov	rbx, r8
	mov	r15, rcx
	mov	rbp, rbp
	mov	r14, rdx
	mov	r13, rsi
	mov	rbp, rbp
	mov	rbp, qword ptr [rsp + 0x70]
	mov	rax, rbx
	lea	rsi, [rsi]
	or	rax, r14
	or	rax, rbp
	js	.label_619
	movabs	rax, 0x7fffffffffffffff
	lea	rdi, [rdi]
	test	rbx, rbx
	mov	rsp, rsp
	js	.label_621
	sub	rax, rbx
	cmp	rax, r14
	jl	.label_619
	nop	
	lea	rdx, [rbx + r14]
	mov	rsp, rsp
	xor	r12d, r12d
	lea	rdi, [rdi]
	test	rbx, rbx
	jle	.label_617
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x18], rdi
	mov	qword ptr [rsp + 0x20], r9
	xor	r12d, r12d
	mov	rbp, rbp
	test	r14, r14
	nop	
	jle	.label_620
	mov	rdi, rdx
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x10], rdx
	lea	rdi, [rdi]
	call	malloc
	mov	rbp, rbp
	mov	r12, rax
	mov	rsp, rsp
	test	r12, r12
	mov	rax, qword ptr [rsp + 0x20]
	lea	rdi, [rdi]
	mov	rbp, qword ptr [rsp + 0x18]
	lea	rdi, [rdi]
	je	.label_619
	nop	
	mov	rdi, r12
	mov	rsp, rsp
	mov	rsi, r13
	mov	rbp, rbp
	mov	rdx, r14
	mov	rbp, rbp
	mov	r13, rax
	nop	
	call	memcpy
	lea	rsi, [rsi]
	mov	rdi, r12
	add	rdi, r14
	mov	rsp, rsp
	mov	rsi, r15
	mov	rdx, rbx
	nop	
	call	memcpy
	nop	
	mov	rdi, rbp
	lea	rdi, [rdi]
	mov	rbp, qword ptr [rsp + 0x70]
	mov	r9, r13
	lea	rdi, [rdi]
	mov	r13, r12
	mov	rdx, qword ptr [rsp + 0x10]
	lea	rsi, [rsi]
	jmp	.label_617
.label_621:
	nop	
	inc	rax
	sub	rax, rbx
	cmp	rax, r14
	nop	
	jle	.label_618
.label_619:
	mov	rax, -2
	jmp	.label_622
.label_618:
	mov	rsp, rsp
	add	rbx, r14
	mov	rsp, rsp
	xor	r12d, r12d
	mov	rsp, rsp
	mov	rdx, rbx
	jmp	.label_617
.label_620:
	mov	rbp, rbp
	mov	r13, r15
	mov	rsp, rsp
	mov	r9, qword ptr [rsp + 0x20]
	mov	rsp, rsp
	mov	rdi, qword ptr [rsp + 0x18]
.label_617:
	mov	rax, qword ptr [rsp + 0x68]
	lea	rdi, [rdi]
	mov	r8, qword ptr [rsp + 0x60]
	movzx	ecx, byte ptr [rsp + 0x78]
	mov	dword ptr [rsp + 8], ecx
	mov	qword ptr [rsp], rax
	mov	rsp, rsp
	mov	rsi, r13
	mov	rcx, r9
	lea	rdi, [rdi]
	mov	r9, rbp
	mov	rbp, rbp
	call	re_search_stub
	mov	rbx, rax
	nop	
	mov	rdi, r12
	lea	rdi, [rdi]
	call	free
	mov	rbp, rbp
	mov	rax, rbx
.label_622:
	add	rsp, 0x28
	lea	rdi, [rdi]
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	lea	rsi, [rsi]
	pop	r15
	mov	rbp, rbp
	pop	rbp
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40afb0
	.globl rpl_re_search_2
	.type rpl_re_search_2, @function
rpl_re_search_2:

	sub	rsp, 0x28
	mov	r10, qword ptr [rsp + 0x30]
	mov	r11, qword ptr [rsp + 0x38]
	mov	rax, qword ptr [rsp + 0x40]
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x10], rax
	mov	rbp, rbp
	mov	qword ptr [rsp + 8], r11
	mov	rbp, rbp
	mov	qword ptr [rsp], r10
	mov	rsp, rsp
	mov	dword ptr [rsp + 0x18], 0
	call	re_search_2_stub
	add	rsp, 0x28
	mov	rbp, rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40b000
	.globl rpl_re_set_registers
	.type rpl_re_set_registers, @function
rpl_re_set_registers:

	lea	rdi, [rdi]
	mov	al, byte ptr [rdi + 0x38]
	lea	rdi, [rdi]
	and	al, 0xf9
	test	rdx, rdx
	mov	rbp, rbp
	je	.label_623
	or	al, 2
	mov	rsp, rsp
	mov	byte ptr [rdi + 0x38], al
	lea	rsi, [rsi]
	mov	qword ptr [rsi], rdx
	mov	qword ptr [rsi + 8], rcx
	mov	qword ptr [rsi + 0x10], r8
	ret	
.label_623:
	mov	byte ptr [rdi + 0x38], al
	lea	rdi, [rdi]
	xorps	xmm0, xmm0
	movups	xmmword ptr [rsi], xmm0
	nop	
	mov	qword ptr [rsi + 0x10], 0
	lea	rdi, [rdi]
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40b050

	.globl free_token
	.type free_token, @function
free_token:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rdi + 8]
	mov	rsp, rsp
	and	eax, 0x400ff
	cmp	eax, 6
	jne	.label_624
	mov	rdi, qword ptr [rdi]
	mov	rbp, rbp
	jmp	free_charset
.label_624:
	cmp	eax, 3
	jne	.label_625
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rdi]
	lea	rsi, [rsi]
	jmp	free
.label_625:
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40b090

	.globl free_state
	.type free_state, @function
free_state:
	push	rbx
	mov	rbp, rbp
	mov	rbx, rdi
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbx + 0x30]
	call	free
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbx + 0x48]
	call	free
	mov	rbp, rbp
	mov	rax, qword ptr [rbx + 0x50]
	lea	rcx, [rbx + 8]
	nop	
	cmp	rax, rcx
	mov	rsp, rsp
	je	.label_626
	mov	rdi, qword ptr [rax + 0x10]
	mov	rbp, rbp
	call	free
	nop	
	mov	rdi, qword ptr [rbx + 0x50]
	lea	rsi, [rsi]
	call	free
.label_626:
	mov	rsp, rsp
	mov	rdi, qword ptr [rbx + 0x18]
	call	free
	mov	rdi, qword ptr [rbx + 0x60]
	call	free
	mov	rbp, rbp
	mov	rdi, qword ptr [rbx + 0x58]
	lea	rsi, [rsi]
	call	free
	mov	rdi, rbx
	pop	rbx
	mov	rsp, rsp
	jmp	free
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40b110

	.globl free_charset
	.type free_charset, @function
free_charset:
	push	rbx
	mov	rbx, rdi
	mov	rdi, qword ptr [rbx]
	lea	rsi, [rsi]
	call	free
	mov	rbp, rbp
	mov	rdi, qword ptr [rbx + 8]
	call	free
	mov	rdi, qword ptr [rbx + 0x10]
	call	free
	mov	rdi, qword ptr [rbx + 0x18]
	call	free
	lea	rsi, [rsi]
	mov	rdi, rbx
	nop	
	pop	rbx
	mov	rbp, rbp
	jmp	free
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40b150

	.globl init_dfa
	.type init_dfa, @function
init_dfa:
	nop	
	push	rbp
	mov	rsp, rsp
	push	r15
	nop	
	push	r14
	mov	rsp, rsp
	push	r12
	mov	rsp, rsp
	push	rbx
	mov	rbp, rsi
	mov	r15, rdi
	xorps	xmm0, xmm0
	mov	rbp, rbp
	movups	xmmword ptr [r15 + 0xd0], xmm0
	lea	rsi, [rsi]
	movups	xmmword ptr [r15 + 0xc0], xmm0
	mov	rbp, rbp
	movups	xmmword ptr [r15 + 0xb0], xmm0
	nop	
	movups	xmmword ptr [r15 + 0xa0], xmm0
	movups	xmmword ptr [r15 + 0x90], xmm0
	movups	xmmword ptr [r15 + 0x80], xmm0
	nop	
	movups	xmmword ptr [r15 + 0x70], xmm0
	movups	xmmword ptr [r15 + 0x60], xmm0
	movups	xmmword ptr [r15 + 0x50], xmm0
	movups	xmmword ptr [r15 + 0x40], xmm0
	movups	xmmword ptr [r15 + 0x30], xmm0
	movups	xmmword ptr [r15 + 0x20], xmm0
	movups	xmmword ptr [r15 + 0x10], xmm0
	movups	xmmword ptr [r15], xmm0
	mov	qword ptr [r15 + 0xe0], 0
	mov	dword ptr [r15 + 0x80], 0xf
	mov	r14d, 0xc
	nop	
	movabs	rax, 0x555555555555554
	mov	rbp, rbp
	cmp	rbp, rax
	mov	rbp, rbp
	ja	.label_630
	lea	rsi, [rsi]
	lea	rdi, [rbp + 1]
	mov	qword ptr [r15 + 8], rdi
	mov	rsp, rsp
	shl	rdi, 4
	call	malloc
	mov	rsp, rsp
	mov	qword ptr [r15], rax
	mov	rbp, rbp
	mov	eax, 1
	nop	dword ptr [rax]
.label_634:
	mov	rsp, rsp
	mov	rbx, rax
	lea	rax, [rbx + rbx]
	nop	
	cmp	rbx, rbp
	lea	rsi, [rsi]
	jbe	.label_634
	mov	rbp, rbp
	mov	edi, 0x18
	nop	
	mov	rsi, rbx
	call	rpl_calloc
	mov	qword ptr [r15 + 0x40], rax
	mov	rbp, rbp
	dec	rbx
	lea	rdi, [rdi]
	mov	qword ptr [r15 + 0x88], rbx
	lea	rdi, [rdi]
	call	__ctype_get_mb_cur_max
	mov	rbp, rbp
	mov	dword ptr [r15 + 0xb4], eax
	lea	rsi, [rsi]
	mov	edi, 0xe
	mov	rbp, rbp
	call	rpl_nl_langinfo
	mov	rsp, rsp
	mov	cl, byte ptr [rax]
	lea	rsi, [rsi]
	or	cl, 0x20
	lea	rdi, [rdi]
	movzx	ecx, cl
	cmp	ecx, 0x75
	mov	rsp, rsp
	jne	.label_628
	mov	cl, byte ptr [rax + 1]
	or	cl, 0x20
	lea	rsi, [rsi]
	movzx	ecx, cl
	cmp	ecx, 0x74
	jne	.label_628
	mov	cl, byte ptr [rax + 2]
	or	cl, 0x20
	nop	
	movzx	ecx, cl
	nop	
	cmp	ecx, 0x66
	jne	.label_628
	movzx	ecx, byte ptr [rax + 3]
	cmp	ecx, 0x2d
	nop	
	sete	cl
	movzx	ecx, cl
	movzx	edx, byte ptr [rax + rcx + 3]
	lea	rdi, [rdi]
	cmp	edx, 0x38
	lea	rsi, [rsi]
	jne	.label_628
	lea	rsi, [rsi]
	cmp	byte ptr [rax + rcx + 4], 0
	nop	
	jne	.label_628
	lea	rdi, [rdi]
	or	byte ptr [r15 + 0xb0], 4
.label_628:
	lea	rsi, [rsi]
	mov	al, byte ptr [r15 + 0xb0]
	mov	cl, al
	and	cl, 0xf7
	mov	byte ptr [r15 + 0xb0], cl
	cmp	dword ptr [r15 + 0xb4], 2
	jl	.label_631
	nop	
	test	al, 4
	nop	
	jne	.label_632
	mov	edi, 0x20
	lea	rsi, [rsi]
	mov	esi, 1
	call	rpl_calloc
	mov	qword ptr [r15 + 0x78], rax
	mov	rbp, rbp
	xor	r12d, r12d
	mov	rsp, rsp
	test	rax, rax
	je	.label_630
	xor	r14d, r14d
	nop	word ptr cs:[rax + rax]
.label_627:
	mov	rbp, rbp
	xor	ebp, ebp
	nop	
	mov	ebx, r14d
	nop	dword ptr [rax]
.label_635:
	mov	edi, ebx
	call	btowc
	mov	rbp, rbp
	cmp	eax, -1
	je	.label_636
	lea	rdi, [rdi]
	mov	edx, 1
	mov	cl, bpl
	shl	rdx, cl
	mov	rbp, rbp
	mov	rcx, qword ptr [r15 + 0x78]
	lea	rdi, [rdi]
	or	qword ptr [rcx + r12*8], rdx
.label_636:
	lea	rsi, [rsi]
	cmp	ebx, 0x7f
	ja	.label_629
	mov	rsp, rsp
	cmp	ebx, eax
	je	.label_629
	or	byte ptr [r15 + 0xb0], 8
.label_629:
	inc	rbp
	lea	rdi, [rdi]
	inc	ebx
	cmp	rbp, 0x40
	nop	
	jne	.label_635
	lea	rdi, [rdi]
	add	r14d, 0x40
	lea	rdi, [rdi]
	inc	r12
	cmp	r12, 4
	mov	rbp, rbp
	jne	.label_627
	nop	
	jmp	.label_631
.label_632:
	lea	rsi, [rsi]
	mov	qword ptr [word ptr [r15 + 120]], OFFSET FLAT:utf8_sb_map
.label_631:
	cmp	qword ptr [r15], 0
	mov	rbp, rbp
	je	.label_633
	xor	r14d, r14d
	cmp	qword ptr [r15 + 0x40], 0
	jne	.label_630
.label_633:
	mov	r14d, 0xc
.label_630:
	mov	eax, r14d
	pop	rbx
	pop	r12
	mov	rsp, rsp
	pop	r14
	lea	rsi, [rsi]
	pop	r15
	lea	rdi, [rdi]
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40b420

	.globl re_string_construct
	.type re_string_construct, @function
re_string_construct:
	push	rbp
	push	r15
	push	r14
	lea	rdi, [rdi]
	push	r13
	mov	rbp, rbp
	push	r12
	push	rbx
	push	rax
	mov	r14, r9
	mov	rsp, rsp
	mov	r13d, r8d
	lea	rdi, [rdi]
	mov	r12, rcx
	mov	r15, rdx
	nop	
	mov	rbp, rsi
	mov	rbx, rdi
	xorps	xmm0, xmm0
	nop	
	movups	xmmword ptr [rbx + 0x80], xmm0
	lea	rsi, [rsi]
	movups	xmmword ptr [rbx + 0x70], xmm0
	lea	rdi, [rdi]
	movups	xmmword ptr [rbx + 0x60], xmm0
	lea	rsi, [rsi]
	movups	xmmword ptr [rbx + 0x50], xmm0
	nop	
	movups	xmmword ptr [rbx + 0x40], xmm0
	movups	xmmword ptr [rbx + 0x30], xmm0
	lea	rsi, [rsi]
	movups	xmmword ptr [rbx + 0x20], xmm0
	nop	
	movups	xmmword ptr [rbx + 0x10], xmm0
	lea	rdi, [rdi]
	movups	xmmword ptr [rbx], xmm0
	lea	rdi, [rdi]
	mov	qword ptr [rbx + 0x90], 0
	lea	rsi, [rsi]
	movzx	r8d, r13b
	lea	rsi, [rsi]
	mov	rdi, rbp
	mov	rbp, rbp
	mov	rsi, r15
	mov	rdx, rbx
	mov	rsp, rsp
	call	re_string_construct_common
	test	r15, r15
	mov	rsp, rsp
	jle	.label_643
	lea	rsi, [r15 + 1]
	mov	rdi, rbx
	mov	rbp, rbp
	call	re_string_realloc_buffers
	test	eax, eax
	jne	.label_638
.label_643:
	nop	
	cmp	byte ptr [rbx + 0x8b], 0
	je	.label_640
	lea	rdi, [rdi]
	mov	rbp, qword ptr [rbx + 8]
.label_640:
	lea	rsi, [rsi]
	mov	qword ptr [rbx + 8], rbp
	mov	eax, dword ptr [r14 + 0xb4]
	test	r13b, r13b
	je	.label_642
	cmp	eax, 2
	jl	.label_645
	nop	dword ptr [rax]
.label_639:
	mov	rbp, rbp
	mov	rdi, rbx
	nop	
	call	build_wcs_upper_buffer
	test	eax, eax
	jne	.label_638
	mov	rbp, rbp
	xor	eax, eax
	mov	rsp, rsp
	cmp	qword ptr [rbx + 0x38], r15
	jge	.label_638
	mov	rsi, qword ptr [rbx + 0x40]
	movsxd	rcx, dword ptr [r14 + 0xb4]
	add	rcx, qword ptr [rbx + 0x30]
	lea	rdi, [rdi]
	cmp	rsi, rcx
	jg	.label_638
	lea	rdi, [rdi]
	add	rsi, rsi
	mov	rbp, rbp
	mov	rdi, rbx
	call	re_string_realloc_buffers
	lea	rsi, [rsi]
	test	eax, eax
	mov	rbp, rbp
	je	.label_639
	jmp	.label_638
.label_642:
	cmp	eax, 2
	jl	.label_641
	mov	rsp, rsp
	mov	rdi, rbx
	call	build_wcs_buffer
	jmp	.label_637
.label_645:
	mov	rdi, rbx
	nop	
	call	build_upper_buffer
	jmp	.label_637
.label_641:
	lea	rsi, [rsi]
	test	r12, r12
	mov	rsp, rsp
	je	.label_644
	mov	rdi, rbx
	nop	
	call	re_string_translate_buffer
	jmp	.label_637
.label_644:
	mov	rax, qword ptr [rbx + 0x40]
	nop	
	mov	qword ptr [rbx + 0x30], rax
	nop	
	mov	qword ptr [rbx + 0x38], rax
.label_637:
	xor	eax, eax
.label_638:
	nop	
	add	rsp, 8
	mov	rbp, rbp
	pop	rbx
	pop	r12
	pop	r13
	nop	
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40b5b0

	.globl free_workarea_compile
	.type free_workarea_compile, @function
free_workarea_compile:
	nop	
	push	r14
	push	rbx
	lea	rsi, [rsi]
	push	rax
	mov	r14, qword ptr [rdi]
	lea	rdi, [rdi]
	mov	rdi, qword ptr [r14 + 0x70]
	mov	rsp, rsp
	test	rdi, rdi
	nop	
	je	.label_646
	nop	dword ptr [rax + rax]
.label_647:
	mov	rbx, qword ptr [rdi]
	lea	rsi, [rsi]
	call	free
	mov	rbp, rbp
	test	rbx, rbx
	mov	rdi, rbx
	jne	.label_647
.label_646:
	lea	rdi, [rdi]
	mov	qword ptr [r14 + 0x70], 0
	mov	dword ptr [r14 + 0x80], 0xf
	nop	
	mov	qword ptr [r14 + 0x68], 0
	lea	rdi, [rdi]
	mov	rdi, qword ptr [r14 + 0x20]
	mov	rbp, rbp
	call	free
	lea	rdi, [rdi]
	mov	qword ptr [r14 + 0x20], 0
	mov	rsp, rsp
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40b630

	.globl re_string_destruct
	.type re_string_destruct, @function
re_string_destruct:
	push	rbx
	mov	rbx, rdi
	mov	rdi, qword ptr [rbx + 0x10]
	call	free
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbx + 0x18]
	call	free
	cmp	byte ptr [rbx + 0x8b], 0
	je	.label_648
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbx + 8]
	mov	rsp, rsp
	pop	rbx
	jmp	free
.label_648:
	mov	rsp, rsp
	pop	rbx
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40b670

	.globl parse
	.type parse, @function
parse:
	push	rbp
	lea	rsi, [rsi]
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x18
	mov	rsp, rsp
	mov	r14, rcx
	lea	rsi, [rsi]
	mov	rbx, rdx
	mov	r13, rsi
	mov	rbp, rbp
	mov	rbp, rdi
	mov	r15, qword ptr [r13]
	mov	qword ptr [r15 + 0xd8], rbx
	or	rdx, 0x800000
	lea	rdi, [rsp + 8]
	mov	rsp, rsp
	mov	rsi, rbp
	call	fetch_token
	xor	r12d, r12d
	nop	
	xor	r8d, r8d
	lea	rsi, [rsi]
	mov	rdi, rbp
	mov	rsi, r13
	lea	rdx, [rsp + 8]
	lea	rsi, [rsi]
	mov	rcx, rbx
	lea	rsi, [rsi]
	mov	r9, r14
	call	parse_reg_exp
	mov	rbp, rbp
	mov	rbx, rax
	test	rbx, rbx
	jne	.label_653
	mov	eax, dword ptr [r14]
	test	eax, eax
	jne	.label_651
.label_653:
	xor	esi, esi
	xor	edx, edx
	mov	rsp, rsp
	mov	ecx, 2
	mov	rdi, r15
	call	create_tree
	mov	r13, rax
	lea	rdi, [rdi]
	test	rbx, rbx
	lea	rsi, [rsi]
	je	.label_650
	mov	rsp, rsp
	mov	ecx, 0x10
	lea	rdi, [rdi]
	mov	rdi, r15
	mov	rbp, rbp
	mov	rsi, rbx
	mov	rbp, rbp
	mov	rdx, r13
	mov	rsp, rsp
	call	create_tree
	lea	rdi, [rdi]
	mov	r12, rax
	jmp	.label_652
.label_650:
	nop	
	mov	r12, r13
.label_652:
	mov	rbp, rbp
	test	r13, r13
	je	.label_649
	test	r12, r12
	je	.label_649
.label_651:
	mov	rax, r12
	nop	
	add	rsp, 0x18
	pop	rbx
	mov	rsp, rsp
	pop	r12
	lea	rdi, [rdi]
	pop	r13
	nop	
	pop	r14
	mov	rbp, rbp
	pop	r15
	lea	rdi, [rdi]
	pop	rbp
	lea	rsi, [rsi]
	ret	
.label_649:
	lea	rdi, [rdi]
	mov	dword ptr [r14], 0xc
	mov	rsp, rsp
	xor	r12d, r12d
	mov	rsp, rsp
	jmp	.label_651
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40b790

	.globl analyze
	.type analyze, @function
analyze:
	nop	
	push	r14
	mov	rbp, rbp
	push	rbx
	lea	rsi, [rsi]
	push	rax
	mov	r14, rdi
	mov	rbx, qword ptr [r14]
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbx + 8]
	mov	rbp, rbp
	shl	rdi, 3
	call	malloc
	mov	qword ptr [rbx + 0x18], rax
	mov	rbp, rbp
	mov	rdi, qword ptr [rbx + 8]
	mov	rsp, rsp
	shl	rdi, 3
	call	malloc
	lea	rsi, [rsi]
	mov	qword ptr [rbx + 0x20], rax
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbx + 8]
	shl	rax, 3
	mov	rbp, rbp
	lea	rdi, [rax + rax*2]
	call	malloc
	lea	rdi, [rdi]
	mov	qword ptr [rbx + 0x28], rax
	nop	
	mov	rax, qword ptr [rbx + 8]
	shl	rax, 3
	lea	rsi, [rsi]
	lea	rdi, [rax + rax*2]
	call	malloc
	mov	rcx, rax
	mov	qword ptr [rbx + 0x30], rcx
	mov	eax, 0xc
	mov	rbp, rbp
	cmp	qword ptr [rbx + 0x18], 0
	nop	
	je	.label_655
	cmp	qword ptr [rbx + 0x20], 0
	mov	rbp, rbp
	je	.label_655
	lea	rdi, [rdi]
	test	rcx, rcx
	je	.label_655
	mov	rsp, rsp
	mov	rcx, qword ptr [rbx + 0x28]
	lea	rsi, [rsi]
	test	rcx, rcx
	je	.label_655
	nop	
	mov	rdi, qword ptr [r14 + 0x30]
	shl	rdi, 3
	nop	
	call	malloc
	mov	qword ptr [rbx + 0xe0], rax
	test	rax, rax
	nop	
	je	.label_661
	lea	rdi, [rdi]
	cmp	qword ptr [r14 + 0x30], 0
	lea	rsi, [rsi]
	je	.label_659
	mov	rax, qword ptr [rbx + 0xe0]
	xor	ecx, ecx
	nop	word ptr cs:[rax + rax]
.label_657:
	lea	rdi, [rdi]
	mov	qword ptr [rax + rcx*8], rcx
	inc	rcx
	nop	
	cmp	rcx, qword ptr [r14 + 0x30]
	jb	.label_657
.label_659:
	mov	rdi, qword ptr [rbx + 0x68]
	mov	rbp, rbp
	mov	esi, OFFSET FLAT:optimize_subexps
	mov	rsp, rsp
	mov	rdx, rbx
	call	preorder
	lea	rdi, [rdi]
	xor	eax, eax
	cmp	qword ptr [r14 + 0x30], 0
	lea	rdi, [rdi]
	je	.label_654
	mov	rcx, qword ptr [rbx + 0xe0]
	mov	rsp, rsp
	xor	eax, eax
	nop	word ptr cs:[rax + rax]
.label_656:
	lea	rdi, [rdi]
	cmp	rax, qword ptr [rcx + rax*8]
	lea	rsi, [rsi]
	jne	.label_654
	inc	rax
	cmp	rax, qword ptr [r14 + 0x30]
	mov	rbp, rbp
	jb	.label_656
.label_654:
	lea	rsi, [rsi]
	cmp	rax, qword ptr [r14 + 0x30]
	jne	.label_661
	mov	rdi, qword ptr [rbx + 0xe0]
	lea	rdi, [rdi]
	call	free
	nop	
	mov	qword ptr [rbx + 0xe0], 0
.label_661:
	mov	rdi, qword ptr [rbx + 0x68]
	lea	rsi, [rsi]
	mov	esi, OFFSET FLAT:lower_subexps
	mov	rdx, r14
	call	postorder
	mov	rsp, rsp
	test	eax, eax
	nop	
	jne	.label_655
	mov	rdi, qword ptr [rbx + 0x68]
	nop	
	mov	esi, OFFSET FLAT:calc_first
	mov	rdx, rbx
	call	postorder
	lea	rsi, [rsi]
	test	eax, eax
	jne	.label_655
	nop	
	mov	rdi, qword ptr [rbx + 0x68]
	mov	rbp, rbp
	mov	esi, OFFSET FLAT:calc_next
	mov	rdx, rbx
	lea	rdi, [rdi]
	call	preorder
	mov	rsp, rsp
	mov	rdi, qword ptr [rbx + 0x68]
	mov	esi, OFFSET FLAT:link_nfa_nodes
	mov	rbp, rbp
	mov	rdx, rbx
	call	preorder
	lea	rsi, [rsi]
	test	eax, eax
	jne	.label_655
	nop	
	mov	rdi, rbx
	call	calc_eclosure
	mov	rbp, rbp
	test	eax, eax
	nop	
	jne	.label_655
	lea	rdi, [rdi]
	test	byte ptr [r14 + 0x38], 0x10
	jne	.label_658
	lea	rdi, [rdi]
	cmp	qword ptr [r14 + 0x30], 0
	lea	rsi, [rsi]
	je	.label_658
	test	byte ptr [rbx + 0xb0], 1
	mov	rsp, rsp
	jne	.label_660
.label_658:
	lea	rdi, [rdi]
	xor	eax, eax
	cmp	qword ptr [rbx + 0x98], 0
	je	.label_655
.label_660:
	mov	rax, qword ptr [rbx + 0x10]
	lea	rsi, [rsi]
	shl	rax, 3
	mov	rbp, rbp
	lea	rdi, [rax + rax*2]
	lea	rsi, [rsi]
	call	malloc
	lea	rsi, [rsi]
	mov	qword ptr [rbx + 0x38], rax
	test	rax, rax
	mov	eax, 0xc
	je	.label_655
	mov	rdi, rbx
	add	rsp, 8
	pop	rbx
	pop	r14
	jmp	calc_inveclosure
.label_655:
	add	rsp, 8
	pop	rbx
	lea	rdi, [rdi]
	pop	r14
	mov	rbp, rbp
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40ba20

	.globl optimize_utf8
	.type optimize_utf8, @function
optimize_utf8:
	cmp	qword ptr [rdi + 0x10], 0
	mov	rsp, rsp
	je	.label_671
	mov	rsp, rsp
	mov	r11, qword ptr [rdi]
	mov	rsp, rsp
	xor	r9d, r9d
	movabs	r8, 0x1000000010001
	lea	rsi, [rsi]
	xor	r10d, r10d
	xor	eax, eax
	nop	dword ptr [rax]
.label_676:
	mov	rsi, rax
	mov	rsp, rsp
	shl	rsi, 4
	nop	
	movzx	edx, byte ptr [r11 + rsi + 8]
	mov	rsp, rsp
	dec	edx
	cmp	edx, 0xb
	ja	.label_669
	lea	rcx, [r11 + rsi]
	nop	
	jmp	qword ptr [word ptr [+ (rdx * 8) + label_673]]
.label_1984:
	mov	dl, 1
	mov	rbp, rbp
	cmp	byte ptr [rcx], 0
	js	.label_675
	lea	rdi, [rdi]
	mov	dl, r10b
.label_675:
	mov	rbp, rbp
	mov	r10b, dl
	jmp	.label_666
.label_1985:
	nop	
	mov	rcx, qword ptr [rdi]
	mov	rsi, qword ptr [rcx + rsi]
	mov	edx, 2
.label_674:
	lea	rsi, [rsi]
	cmp	qword ptr [rsi + rdx*8], 0
	lea	rdi, [rdi]
	jne	.label_663
	inc	rdx
	mov	rsp, rsp
	cmp	rdx, 3
	lea	rsi, [rsi]
	jle	.label_674
	mov	rsp, rsp
	jmp	.label_666
.label_1986:
	mov	rbp, rbp
	mov	r9b, 1
	nop	
	jmp	.label_666
.label_1987:
	mov	edx, dword ptr [rcx]
	lea	ecx, [rdx - 0x10]
	cmp	ecx, 0x30
	lea	rdi, [rdi]
	ja	.label_667
	bt	r8, rcx
	jb	.label_666
.label_667:
	cmp	edx, 0x80
	mov	rsp, rsp
	jne	.label_663
.label_666:
	inc	rax
	mov	rsp, rsp
	cmp	rax, qword ptr [rdi + 0x10]
	jb	.label_676
	jmp	.label_662
.label_671:
	xor	r9d, r9d
	xor	r10d, r10d
.label_662:
	mov	rbp, rbp
	mov	r8b, r9b
	and	r8b, 1
	lea	rsi, [rsi]
	or	r10b, r9b
	test	r10b, 1
	mov	rsp, rsp
	je	.label_665
	lea	rdi, [rdi]
	cmp	qword ptr [rdi + 0x10], 0
	nop	
	je	.label_665
	xor	eax, eax
	nop	
	mov	edx, 8
	nop	dword ptr [rax]
.label_672:
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rdi]
	mov	r9d, dword ptr [rsi + rdx]
	nop	
	movzx	ecx, r9b
	mov	rsp, rsp
	cmp	ecx, 1
	jne	.label_668
	mov	rsp, rsp
	cmp	byte ptr [rsi + rdx - 8], 0
	js	.label_670
.label_668:
	mov	r9, qword ptr [rdi]
	lea	rdi, [rdi]
	mov	esi, dword ptr [r9 + rdx]
	lea	rsi, [rsi]
	movzx	ecx, sil
	cmp	ecx, 5
	nop	
	jne	.label_664
	lea	rdi, [rdi]
	and	esi, 0xffffff00
	or	esi, 7
	lea	rsi, [rsi]
	mov	dword ptr [r9 + rdx], esi
	jmp	.label_664
.label_670:
	mov	rsp, rsp
	and	r9d, 0xffdfffff
	mov	dword ptr [rsi + rdx], r9d
	nop	dword ptr [rax + rax]
.label_664:
	inc	rax
	lea	rsi, [rsi]
	add	rdx, 0x10
	cmp	rax, qword ptr [rdi + 0x10]
	jb	.label_672
.label_665:
	mov	dword ptr [rdi + 0xb4], 1
	mov	al, byte ptr [rdi + 0xb0]
	nop	
	cmp	qword ptr [rdi + 0x98], 0
	lea	rsi, [rsi]
	setg	cl
	or	cl, r8b
	add	cl, cl
	and	al, 0xf9
	or	al, cl
	mov	byte ptr [rdi + 0xb0], al
.label_663:
	lea	rdi, [rdi]
	ret	
.label_669:
	lea	rsi, [rsi]
	push	rax
	call	abort
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40bbf0

	.globl create_initial_state
	.type create_initial_state, @function
create_initial_state:
	push	r15
	mov	rsp, rsp
	push	r14
	mov	rbp, rbp
	push	r13
	lea	rdi, [rdi]
	push	r12
	nop	
	push	rbx
	sub	rsp, 0x20
	mov	r15, rdi
	mov	rax, qword ptr [r15 + 0x68]
	mov	rax, qword ptr [rax + 0x18]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax + 0x38]
	nop	
	mov	qword ptr [r15 + 0x90], rax
	mov	rcx, qword ptr [r15 + 0x30]
	lea	rax, [rax + rax*2]
	lea	rsi, [rcx + rax*8]
	lea	rdi, [rsp]
	nop	
	call	re_node_set_init_copy
	nop	
	mov	dword ptr [rsp + 0x1c], eax
	test	eax, eax
	lea	rsi, [rsi]
	jne	.label_683
	cmp	qword ptr [r15 + 0x98], 0
	mov	rsp, rsp
	jle	.label_679
	lea	rsi, [rsi]
	cmp	qword ptr [rsp + 8], 0
	lea	rsi, [rsi]
	jle	.label_679
	xor	r13d, r13d
	mov	rbp, rbp
	lea	r14, [rsp]
	nop	word ptr cs:[rax + rax]
.label_681:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp + 0x10]
	nop	
	mov	r8, qword ptr [rax + r13*8]
	lea	rsi, [rsi]
	mov	rax, qword ptr [r15]
	mov	r10, r8
	mov	rbp, rbp
	shl	r10, 4
	movzx	r9d, byte ptr [rax + r10 + 8]
	cmp	r9d, 4
	mov	rbp, rbp
	jne	.label_677
	cmp	qword ptr [rsp + 8], 0
	mov	esi, 0
	mov	rsp, rsp
	jle	.label_687
	lea	rdi, [rdi]
	mov	rdi, qword ptr [r15]
	mov	rax, qword ptr [rsp + 8]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rsp + 0x10]
	add	r10, rdi
	lea	rdi, [rdi]
	xor	esi, esi
	nop	dword ptr [rax + rax]
.label_680:
	mov	rbx, qword ptr [rcx + rsi*8]
	shl	rbx, 4
	lea	rsi, [rsi]
	movzx	edx, byte ptr [rdi + rbx + 8]
	cmp	edx, 9
	jne	.label_685
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rdi + rbx]
	cmp	rdx, qword ptr [r10]
	nop	
	je	.label_687
.label_685:
	inc	rsi
	cmp	rsi, rax
	mov	rsp, rsp
	jl	.label_680
.label_687:
	nop	
	cmp	r9d, 4
	nop	
	setne	al
	nop	
	cmp	rsi, qword ptr [rsp + 8]
	je	.label_677
	lea	rsi, [rsi]
	test	al, al
	nop	
	jne	.label_677
	mov	rax, qword ptr [r15 + 0x28]
	lea	rcx, [r8 + r8*2]
	mov	rax, qword ptr [rax + rcx*8 + 0x10]
	mov	r12, qword ptr [rax]
	lea	rdi, [rdi]
	mov	rdi, r14
	mov	rsi, r12
	mov	rsp, rsp
	call	re_node_set_contains
	test	rax, rax
	mov	rbp, rbp
	jne	.label_677
	mov	rax, qword ptr [r15 + 0x30]
	mov	rsp, rsp
	lea	rcx, [r12 + r12*2]
	lea	rsi, [rsi]
	lea	rsi, [rax + rcx*8]
	mov	rdi, r14
	lea	rsi, [rsi]
	call	re_node_set_merge
	mov	rbp, rbp
	test	eax, eax
	lea	rdi, [rdi]
	mov	r13d, 0
	mov	rbp, rbp
	jne	.label_683
	nop	word ptr cs:[rax + rax]
.label_677:
	inc	r13
	cmp	r13, qword ptr [rsp + 8]
	lea	rsi, [rsi]
	jl	.label_681
.label_679:
	mov	rsp, rsp
	lea	rdi, [rsp + 0x1c]
	lea	rsi, [rsi]
	lea	rdx, [rsp]
	mov	rbp, rbp
	xor	ecx, ecx
	lea	rsi, [rsi]
	mov	rsi, r15
	mov	rbp, rbp
	call	re_acquire_state_context
	mov	qword ptr [r15 + 0x48], rax
	lea	rdi, [rdi]
	test	rax, rax
	je	.label_678
	mov	rsp, rsp
	cmp	byte ptr [rax + 0x68], 0
	js	.label_682
	lea	rdi, [rdi]
	mov	qword ptr [r15 + 0x60], rax
	mov	rbp, rbp
	mov	qword ptr [r15 + 0x58], rax
	mov	rsp, rsp
	mov	qword ptr [r15 + 0x50], rax
	jmp	.label_684
.label_682:
	mov	rsp, rsp
	lea	rbx, [rsp + 0x1c]
	lea	r14, [rsp]
	mov	ecx, 1
	lea	rsi, [rsi]
	mov	rdi, rbx
	mov	rsi, r15
	mov	rbp, rbp
	mov	rdx, r14
	lea	rsi, [rsi]
	call	re_acquire_state_context
	mov	qword ptr [r15 + 0x50], rax
	mov	ecx, 2
	mov	rdi, rbx
	mov	rsi, r15
	mov	rdx, r14
	lea	rdi, [rdi]
	call	re_acquire_state_context
	nop	
	mov	qword ptr [r15 + 0x58], rax
	lea	rdi, [rdi]
	mov	ecx, 6
	mov	rdi, rbx
	mov	rsi, r15
	mov	rdx, r14
	call	re_acquire_state_context
	mov	qword ptr [r15 + 0x60], rax
	cmp	qword ptr [r15 + 0x50], 0
	je	.label_686
	nop	
	test	rax, rax
	mov	rbp, rbp
	je	.label_686
	mov	rax, qword ptr [r15 + 0x58]
	lea	rdi, [rdi]
	test	rax, rax
	je	.label_686
.label_684:
	mov	rsp, rsp
	mov	rdi, qword ptr [rsp + 0x10]
	call	free
	mov	rsp, rsp
	xor	eax, eax
.label_683:
	add	rsp, 0x20
	pop	rbx
	pop	r12
	mov	rbp, rbp
	pop	r13
	mov	rbp, rbp
	pop	r14
	pop	r15
	ret	
.label_686:
	mov	rbp, rbp
	mov	eax, dword ptr [rsp + 0x1c]
	jmp	.label_683
.label_678:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rsp + 0x1c]
	lea	rsi, [rsi]
	jmp	.label_683
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40beb0

	.globl re_string_construct_common
	.type re_string_construct_common, @function
re_string_construct_common:
	mov	qword ptr [rdx], rdi
	mov	qword ptr [rdx + 0x58], rsi
	mov	rbp, rbp
	mov	qword ptr [rdx + 0x50], rsi
	mov	qword ptr [rdx + 0x78], rcx
	mov	rbp, rbp
	mov	byte ptr [rdx + 0x88], r8b
	mov	rbp, rbp
	test	rcx, rcx
	mov	rsp, rsp
	setne	al
	or	al, r8b
	lea	rsi, [rsi]
	mov	byte ptr [rdx + 0x8b], al
	mov	rbp, rbp
	mov	eax, dword ptr [r9 + 0xb4]
	mov	dword ptr [rdx + 0x90], eax
	lea	rdi, [rdi]
	mov	al, byte ptr [r9 + 0xb0]
	mov	rsp, rsp
	shr	al, 2
	mov	rsp, rsp
	and	al, 1
	nop	
	mov	byte ptr [rdx + 0x89], al
	mov	rsp, rsp
	mov	al, byte ptr [r9 + 0xb0]
	shr	al, 3
	lea	rdi, [rdi]
	and	al, 1
	mov	rsp, rsp
	mov	byte ptr [rdx + 0x8a], al
	mov	rax, qword ptr [rdx + 0x58]
	mov	qword ptr [rdx + 0x68], rax
	mov	qword ptr [rdx + 0x60], rax
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40bf40

	.globl re_string_realloc_buffers
	.type re_string_realloc_buffers, @function
re_string_realloc_buffers:
	mov	rsp, rsp
	push	rbp
	lea	rdi, [rdi]
	push	r14
	push	rbx
	lea	rdi, [rdi]
	mov	r14, rsi
	mov	rbx, rdi
	lea	rdi, [rdi]
	cmp	dword ptr [rbx + 0x90], 2
	lea	rdi, [rdi]
	jl	.label_688
	mov	rax, r14
	lea	rdi, [rdi]
	shr	rax, 0x3d
	mov	ebp, 0xc
	lea	rdi, [rdi]
	jne	.label_689
	nop	
	mov	rdi, qword ptr [rbx + 0x10]
	nop	
	lea	rsi, [r14*4]
	lea	rsi, [rsi]
	call	realloc
	mov	rsp, rsp
	test	rax, rax
	mov	rbp, rbp
	je	.label_689
	mov	qword ptr [rbx + 0x10], rax
	mov	rdi, qword ptr [rbx + 0x18]
	lea	rdi, [rdi]
	test	rdi, rdi
	je	.label_688
	lea	rsi, [r14*8]
	call	realloc
	mov	rbp, rbp
	test	rax, rax
	mov	rsp, rsp
	je	.label_689
	mov	qword ptr [rbx + 0x18], rax
.label_688:
	cmp	byte ptr [rbx + 0x8b], 0
	je	.label_690
	mov	rdi, qword ptr [rbx + 8]
	mov	rsi, r14
	mov	rsp, rsp
	call	realloc
	mov	ebp, 0xc
	test	rax, rax
	je	.label_689
	nop	
	mov	qword ptr [rbx + 8], rax
.label_690:
	lea	rsi, [rsi]
	mov	qword ptr [rbx + 0x40], r14
	mov	rsp, rsp
	xor	ebp, ebp
.label_689:
	mov	eax, ebp
	nop	
	pop	rbx
	nop	
	pop	r14
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40c010

	.globl build_wcs_upper_buffer
	.type build_wcs_upper_buffer, @function
build_wcs_upper_buffer:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	mov	rbp, rbp
	push	rbx
	sub	rsp, 0x78
	mov	r15, rdi
	mov	rbp, rbp
	mov	r13, qword ptr [r15 + 0x30]
	mov	rbx, qword ptr [r15 + 0x40]
	mov	rbp, rbp
	mov	rax, qword ptr [r15 + 0x58]
	lea	rsi, [rsi]
	cmp	rbx, rax
	nop	
	cmovg	rbx, rax
	cmp	byte ptr [r15 + 0x8a], 0
	jne	.label_726
	cmp	qword ptr [r15 + 0x78], 0
	jne	.label_726
	cmp	byte ptr [r15 + 0x8c], 0
	lea	rsi, [rsi]
	je	.label_709
.label_726:
	mov	rbp, rbp
	mov	r12, qword ptr [r15 + 0x38]
	jmp	.label_696
.label_709:
	cmp	rbx, r13
	mov	rsp, rsp
	jle	.label_711
	lea	r14, [r15 + 0x20]
	nop	
	jmp	.label_693
.label_732:
	nop	
	mov	r12, rcx
	lea	rax, [rbx + 1]
	cmp	rax, 2
	jb	.label_716
	lea	rsi, [rsi]
	cmp	rbx, -2
	lea	rdi, [rdi]
	jne	.label_720
	mov	rax, qword ptr [r15 + 0x40]
	nop	
	cmp	rax, qword ptr [r15 + 0x58]
	nop	
	jl	.label_720
.label_716:
	mov	rbp, rbp
	mov	rax, qword ptr [r15 + 0x28]
	mov	rbp, rbp
	add	rax, r13
	mov	rbp, rbp
	mov	rcx, qword ptr [r15]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [r15 + 8]
	mov	rbp, rbp
	movzx	eax, byte ptr [rcx + rax]
	mov	rsp, rsp
	mov	byte ptr [rdx + r13], al
	mov	rcx, qword ptr [r15 + 0x10]
	lea	rdi, [rdi]
	mov	dword ptr [rcx + r13*4], eax
	inc	r13
	cmp	rbx, -1
	jne	.label_723
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0x70]
	mov	qword ptr [r14], rax
	jmp	.label_723
	nop	dword ptr [rax + rax]
.label_693:
	mov	rax, qword ptr [r15 + 0x28]
	add	rax, r13
	mov	rcx, qword ptr [r15]
	nop	
	movzx	ebp, byte ptr [rcx + rax]
	lea	rsi, [rsi]
	test	bpl, bpl
	js	.label_691
	mov	rsp, rsp
	mov	rdi, r14
	call	mbsinit
	test	eax, eax
	je	.label_691
	nop	
	mov	r12, rbx
	mov	rbp, rbp
	call	__ctype_toupper_loc
	mov	rsp, rsp
	mov	rax, qword ptr [rax]
	lea	rsi, [rsi]
	mov	al, byte ptr [rax + rbp*4]
	mov	rcx, qword ptr [r15 + 8]
	lea	rsi, [rsi]
	mov	byte ptr [rcx + r13], al
	mov	rax, qword ptr [r15 + 8]
	mov	rcx, qword ptr [r15 + 0x10]
	lea	rdi, [rdi]
	movzx	eax, byte ptr [rax + r13]
	lea	rdi, [rdi]
	mov	dword ptr [rcx + r13*4], eax
	inc	r13
.label_723:
	mov	rax, r13
	jmp	.label_703
	nop	dword ptr [rax + rax]
.label_691:
	mov	rdx, rbx
	lea	rsi, [rsi]
	sub	rdx, r13
	lea	rdi, [rdi]
	mov	rax, qword ptr [r15 + 0x20]
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x70], rax
	mov	rsi, qword ptr [r15]
	lea	rsi, [rsi]
	add	rsi, qword ptr [r15 + 0x28]
	add	rsi, r13
	lea	rdi, [rsp + 0x2c]
	mov	rsp, rsp
	mov	rcx, r14
	call	rpl_mbrtowc
	nop	
	mov	rcx, rbx
	mov	rbx, rax
	lea	rax, [rbx - 1]
	mov	rbp, rbp
	cmp	rax, -4
	lea	rbp, [rsp + 0x30]
	mov	rsp, rsp
	ja	.label_732
	mov	qword ptr [rsp + 0x20], rcx
	mov	rsp, rsp
	mov	edi, dword ptr [rsp + 0x2c]
	call	towupper
	lea	rdi, [rdi]
	mov	r12d, eax
	mov	rsp, rsp
	cmp	r12d, dword ptr [rsp + 0x2c]
	lea	rdi, [rdi]
	jne	.label_730
	lea	rsi, [rsi]
	mov	rdi, qword ptr [r15 + 8]
	nop	
	add	rdi, r13
	mov	rsi, qword ptr [r15]
	lea	rdi, [rdi]
	add	rsi, qword ptr [r15 + 0x28]
	nop	
	add	rsi, r13
	jmp	.label_735
.label_730:
	nop	
	mov	rdi, rbp
	mov	rsp, rsp
	mov	esi, r12d
	mov	rsp, rsp
	lea	rdx, [rsp + 0x70]
	nop	
	call	wcrtomb
	mov	rbp, rbp
	cmp	rbx, rax
	jne	.label_697
	mov	rdi, qword ptr [r15 + 8]
	lea	rdi, [rdi]
	add	rdi, r13
	mov	rsi, rbp
.label_735:
	mov	rdx, rbx
	call	memcpy
	mov	rax, qword ptr [r15 + 0x10]
	lea	rdi, [rdi]
	mov	dword ptr [rax + r13*4], r12d
	mov	rsp, rsp
	lea	rbp, [rbx + r13]
	lea	rax, [r13 + 1]
	cmp	rax, rbp
	mov	r12, qword ptr [rsp + 0x20]
	nop	
	jge	.label_703
	mov	rsp, rsp
	mov	rax, qword ptr [r15 + 0x10]
	lea	rsi, [rsi]
	lea	rdi, [rax + r13*4 + 4]
	lea	rsi, [rsi]
	lea	rdx, [rbx*4 - 4]
	mov	esi, 0xff
	call	memset
	mov	rax, rbp
.label_703:
	mov	rsp, rsp
	mov	rbx, r12
	nop	
	cmp	rbx, rax
	mov	rsp, rsp
	mov	r13, rax
	lea	rdi, [rdi]
	jg	.label_693
	mov	rbp, rbp
	jmp	.label_721
.label_697:
	lea	rdi, [rdi]
	mov	r12, r13
	mov	rbx, qword ptr [rsp + 0x20]
	jmp	.label_724
.label_720:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0x70]
	mov	qword ptr [r14], rax
.label_711:
	mov	rbp, rbp
	mov	rax, r13
.label_721:
	mov	qword ptr [r15 + 0x30], rax
	mov	qword ptr [r15 + 0x38], rax
	jmp	.label_725
.label_696:
	mov	rbp, rbp
	cmp	r13, rbx
	mov	rbp, rbp
	jge	.label_727
.label_724:
	mov	rbp, rbp
	mov	rdx, rbx
	lea	rsi, [rsi]
	sub	rdx, r13
	lea	rsi, [rsi]
	lea	rcx, [r15 + 0x20]
	mov	rsp, rsp
	mov	rax, qword ptr [r15 + 0x20]
	mov	qword ptr [rsp + 0x70], rax
	cmp	qword ptr [r15 + 0x78], 0
	jne	.label_718
	mov	rbp, qword ptr [r15]
	lea	rdi, [rdi]
	add	rbp, qword ptr [r15 + 0x28]
	nop	
	add	rbp, r12
.label_695:
	nop	
	mov	qword ptr [rsp + 0x18], r12
	lea	rdi, [rdi]
	lea	rdi, [rsp + 0x28]
	lea	rsi, [rsi]
	mov	rsi, rbp
	mov	qword ptr [rsp + 0x10], rcx
	call	rpl_mbrtowc
	mov	r14, rax
	lea	r12, [r14 - 1]
	mov	rbp, rbp
	cmp	r12, -4
	lea	rsi, [rsi]
	ja	.label_701
	nop	
	mov	qword ptr [rsp + 0x20], rbx
	lea	rdi, [rdi]
	mov	edi, dword ptr [rsp + 0x28]
	call	towupper
	lea	rdi, [rdi]
	mov	ebx, eax
	cmp	ebx, dword ptr [rsp + 0x28]
	je	.label_710
	mov	rsp, rsp
	lea	rdi, [rsp + 0x30]
	lea	rdx, [rsp + 0x70]
	mov	rbp, rbp
	mov	esi, ebx
	call	wcrtomb
	mov	rdx, rax
	nop	
	sub	rax, r14
	mov	rsp, rsp
	jne	.label_736
	lea	rdi, [rdi]
	mov	rdi, qword ptr [r15 + 8]
	add	rdi, r13
	lea	rsi, [rsp + 0x30]
	mov	rsp, rsp
	jmp	.label_719
.label_718:
	nop	
	lea	rbp, [rsp + 0x30]
	lea	rdi, [rdi]
	cmp	dword ptr [r15 + 0x90], 0
	lea	rsi, [rsi]
	jle	.label_695
	lea	rsi, [rsi]
	xor	eax, eax
	nop	word ptr cs:[rax + rax]
.label_731:
	cmp	rax, rdx
	jge	.label_695
	mov	rbp, rbp
	mov	rdi, qword ptr [r15]
	mov	r8, qword ptr [r15 + 0x78]
	lea	rsi, [rsi]
	add	rdi, qword ptr [r15 + 0x28]
	add	rdi, r12
	movzx	edi, byte ptr [rax + rdi]
	mov	rsp, rsp
	mov	rsi, rbx
	mov	rbp, rbp
	mov	bl, byte ptr [r8 + rdi]
	mov	byte ptr [rsp + rax + 0x30], bl
	nop	
	mov	rbx, rsi
	lea	rsi, [rsi]
	inc	rax
	movsxd	rsi, dword ptr [r15 + 0x90]
	cmp	rax, rsi
	jl	.label_731
	jmp	.label_695
.label_701:
	lea	rax, [r14 + 1]
	lea	rsi, [rsi]
	cmp	rax, 2
	jb	.label_698
	cmp	r14, -2
	mov	rbp, rbp
	jne	.label_700
	lea	rsi, [rsi]
	mov	rax, qword ptr [r15 + 0x40]
	mov	rsp, rsp
	cmp	rax, qword ptr [r15 + 0x58]
	lea	rdi, [rdi]
	jl	.label_700
.label_698:
	mov	rax, qword ptr [r15 + 0x28]
	nop	
	mov	r12, qword ptr [rsp + 0x18]
	lea	rsi, [rsi]
	add	rax, r12
	mov	rdx, qword ptr [r15]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [r15 + 0x78]
	lea	rsi, [rsi]
	mov	al, byte ptr [rdx + rax]
	movzx	edx, al
	lea	rdi, [rdi]
	test	rcx, rcx
	mov	rsp, rsp
	jne	.label_708
.label_705:
	movzx	eax, al
	mov	rcx, qword ptr [r15 + 8]
	mov	rbp, rbp
	mov	byte ptr [rcx + r13], al
	lea	rdi, [rdi]
	cmp	byte ptr [r15 + 0x8c], 0
	jne	.label_715
.label_707:
	inc	r12
	mov	rbp, rbp
	mov	rcx, qword ptr [r15 + 0x10]
	mov	dword ptr [rcx + r13*4], eax
	inc	r13
	cmp	r14, -1
	lea	rdi, [rdi]
	je	.label_722
	lea	rdi, [rdi]
	mov	rbp, r13
	lea	rsi, [rsi]
	jmp	.label_696
.label_736:
	mov	rbp, rbp
	cmp	rdx, -1
	nop	
	je	.label_710
	lea	rsi, [rsi]
	lea	rbp, [rdx + r13]
	mov	rsp, rsp
	mov	rdi, qword ptr [r15 + 0x40]
	cmp	rbp, rdi
	nop	
	jbe	.label_729
.label_700:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp + 0x70]
	mov	rcx, qword ptr [rsp + 0x10]
	nop	
	mov	qword ptr [rcx], rax
	lea	rsi, [rsi]
	mov	r12, qword ptr [rsp + 0x18]
.label_727:
	mov	qword ptr [r15 + 0x30], r13
	mov	qword ptr [r15 + 0x38], r12
.label_725:
	xor	eax, eax
.label_714:
	add	rsp, 0x78
	pop	rbx
	pop	r12
	pop	r13
	lea	rsi, [rsi]
	pop	r14
	lea	rdi, [rdi]
	pop	r15
	mov	rsp, rsp
	pop	rbp
	ret	
.label_710:
	mov	rdi, qword ptr [r15 + 8]
	nop	
	add	rdi, r13
	mov	rsp, rsp
	mov	rsi, rbp
.label_719:
	mov	rdx, r14
	call	memcpy
	lea	rdi, [rdi]
	mov	r12, qword ptr [rsp + 0x18]
	cmp	byte ptr [r15 + 0x8c], 0
	je	.label_704
	mov	rbp, rbp
	lea	rax, [r13*8]
	nop	
	add	rax, qword ptr [r15 + 0x18]
	nop	
	mov	rcx, r12
	lea	rsi, [rsi]
	mov	rdx, r14
	nop	word ptr [rax + rax]
.label_712:
	nop	
	mov	qword ptr [rax], rcx
	lea	rdi, [rdi]
	inc	rcx
	lea	rsi, [rsi]
	add	rax, 8
	dec	rdx
	lea	rsi, [rsi]
	jne	.label_712
.label_704:
	nop	
	add	r12, r14
	mov	rbp, rbp
	mov	rax, qword ptr [r15 + 0x10]
	mov	rsp, rsp
	mov	dword ptr [rax + r13*4], ebx
	mov	rbp, rbp
	lea	rbp, [r14 + r13]
	mov	rbp, rbp
	lea	rax, [r13 + 1]
	cmp	rax, rbp
	jge	.label_717
	mov	rax, qword ptr [r15 + 0x10]
	lea	rdi, [rax + r13*4 + 4]
	lea	rdx, [r14*4 - 4]
	mov	rsp, rsp
	mov	esi, 0xff
	call	memset
	jmp	.label_728
.label_717:
	nop	
	mov	rbp, rax
.label_728:
	lea	rdi, [rdi]
	mov	rbx, qword ptr [rsp + 0x20]
	mov	r13, rbp
	nop	
	jmp	.label_696
.label_729:
	mov	rsp, rsp
	cmp	qword ptr [r15 + 0x18], 0
	lea	rdi, [rdi]
	jne	.label_734
	shl	rdi, 3
	mov	qword ptr [rsp + 8], rax
	mov	qword ptr [rsp + 0x20], rdx
	call	malloc
	mov	rdx, qword ptr [rsp + 0x20]
	lea	rsi, [rsi]
	mov	qword ptr [r15 + 0x18], rax
	test	rax, rax
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 8]
	je	.label_694
.label_734:
	mov	qword ptr [rsp + 8], rax
	lea	rsi, [rsi]
	cmp	byte ptr [r15 + 0x8c], 0
	jne	.label_699
	test	r13, r13
	mov	rbp, rbp
	je	.label_702
	lea	rdi, [rdi]
	mov	rax, qword ptr [r15 + 0x18]
	xor	ecx, ecx
.label_706:
	mov	qword ptr [rax + rcx*8], rcx
	inc	rcx
	cmp	r13, rcx
	lea	rsi, [rsi]
	jne	.label_706
.label_702:
	mov	byte ptr [r15 + 0x8c], 1
.label_699:
	mov	rdi, qword ptr [r15 + 8]
	add	rdi, r13
	lea	rsi, [rsi]
	lea	rsi, [rsp + 0x30]
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x20], rdx
	nop	
	call	memcpy
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rsp + 0x20]
	mov	rsp, rsp
	mov	rax, qword ptr [r15 + 0x10]
	nop	
	mov	dword ptr [rax + r13*4], ebx
	nop	
	mov	rax, qword ptr [r15 + 0x18]
	mov	rsp, rsp
	mov	rsi, qword ptr [rsp + 0x18]
	mov	rsp, rsp
	mov	qword ptr [rax + r13*8], rsi
	nop	
	cmp	rdi, 2
	nop	
	jb	.label_713
	lea	rax, [r13*4]
	lea	rsi, [rsi]
	add	rax, qword ptr [r15 + 0x10]
	shl	r13, 3
	nop	
	add	r13, qword ptr [r15 + 0x18]
	mov	ecx, 1
	nop	word ptr cs:[rax + rax]
.label_733:
	mov	rsp, rsp
	cmp	rcx, r14
	mov	rbp, rbp
	mov	rdx, r12
	lea	rdi, [rdi]
	cmovb	rdx, rcx
	add	rdx, rsi
	mov	rsp, rsp
	mov	qword ptr [r13 + rcx*8], rdx
	mov	dword ptr [rax + rcx*4], 0xffffffff
	nop	
	inc	rcx
	lea	rsi, [rsi]
	cmp	rdi, rcx
	jne	.label_733
.label_713:
	mov	rax, qword ptr [rsp + 8]
	mov	rsp, rsp
	add	qword ptr [r15 + 0x58], rax
	cmp	qword ptr [r15 + 0x60], rsi
	mov	r12, rsi
	jle	.label_692
	add	qword ptr [r15 + 0x68], rax
.label_692:
	mov	rsp, rsp
	mov	rbx, qword ptr [r15 + 0x40]
	nop	
	mov	rax, qword ptr [r15 + 0x58]
	nop	
	cmp	rbx, rax
	cmovg	rbx, rax
	lea	rdi, [rdi]
	add	r12, r14
	mov	rbp, rbp
	mov	r13, rbp
	nop	
	jmp	.label_696
.label_708:
	lea	rdi, [rdi]
	mov	al, byte ptr [rcx + rdx]
	jmp	.label_705
.label_715:
	mov	rcx, qword ptr [r15 + 0x18]
	mov	qword ptr [rcx + r13*8], r12
	jmp	.label_707
.label_722:
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 0x70]
	nop	
	mov	rcx, qword ptr [rsp + 0x10]
	mov	rsp, rsp
	mov	qword ptr [rcx], rax
	mov	rbp, rbp
	mov	rbp, r13
	lea	rdi, [rdi]
	jmp	.label_696
.label_694:
	mov	eax, 0xc
	lea	rdi, [rdi]
	jmp	.label_714
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40c790

	.globl build_upper_buffer
	.type build_upper_buffer, @function
build_upper_buffer:
	lea	rdi, [rdi]
	push	r15
	push	r14
	mov	rsp, rsp
	push	rbx
	mov	r14, rdi
	nop	
	mov	rbx, qword ptr [r14 + 0x30]
	mov	r15, qword ptr [r14 + 0x40]
	mov	rax, qword ptr [r14 + 0x58]
	lea	rsi, [rsi]
	cmp	r15, rax
	mov	rbp, rbp
	cmovg	r15, rax
	mov	rsp, rsp
	cmp	rbx, r15
	mov	rsp, rsp
	jge	.label_737
	jmp	.label_739
.label_738:
	mov	cl, byte ptr [rax + rdx]
	mov	rbp, rbp
	jmp	.label_740
	nop	dword ptr [rax]
.label_739:
	lea	rdi, [rdi]
	mov	rcx, qword ptr [r14]
	lea	rsi, [rsi]
	mov	rax, qword ptr [r14 + 0x78]
	add	rcx, qword ptr [r14 + 0x28]
	mov	cl, byte ptr [rbx + rcx]
	movzx	edx, cl
	mov	rbp, rbp
	test	rax, rax
	mov	rsp, rsp
	jne	.label_738
.label_740:
	mov	rsp, rsp
	movzx	edi, cl
	nop	
	call	toupper
	mov	rcx, qword ptr [r14 + 8]
	mov	byte ptr [rcx + rbx], al
	lea	rsi, [rsi]
	inc	rbx
	lea	rsi, [rsi]
	cmp	rbx, r15
	jl	.label_739
	mov	rsp, rsp
	mov	rbx, r15
.label_737:
	mov	qword ptr [r14 + 0x30], rbx
	mov	qword ptr [r14 + 0x38], rbx
	mov	rsp, rsp
	pop	rbx
	lea	rsi, [rsi]
	pop	r14
	lea	rsi, [rsi]
	pop	r15
	mov	rbp, rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40c840

	.globl build_wcs_buffer
	.type build_wcs_buffer, @function
build_wcs_buffer:
	nop	
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	nop	
	push	rbx
	sub	rsp, 0x58
	mov	rbx, rdi
	lea	rdi, [rdi]
	mov	r13, qword ptr [rbx + 0x30]
	mov	r12, qword ptr [rbx + 0x40]
	mov	rax, qword ptr [rbx + 0x58]
	mov	rsp, rsp
	cmp	r12, rax
	cmovg	r12, rax
	cmp	r12, r13
	mov	rbp, rbp
	jle	.label_741
	lea	r14, [rbx + 0x20]
	mov	rbp, rbp
	lea	r15, [rsp + 0xc]
	nop	
	jmp	.label_745
	nop	word ptr [rax + rax]
.label_751:
	mov	rax, qword ptr [rbx + 0x28]
	add	rax, r13
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbx]
	movzx	eax, byte ptr [rcx + rax]
	mov	dword ptr [rsp + 0xc], eax
	nop	
	mov	rcx, qword ptr [rbx + 0x78]
	test	rcx, rcx
	jne	.label_747
.label_750:
	nop	
	mov	qword ptr [r14], rbp
	mov	eax, 1
.label_748:
	mov	rsp, rsp
	mov	ecx, dword ptr [rsp + 0xc]
	nop	
	mov	rdx, qword ptr [rbx + 0x10]
	mov	rbp, rbp
	mov	dword ptr [rdx + r13*4], ecx
	mov	rbp, rbp
	lea	rbp, [rax + r13]
	lea	rcx, [r13 + 1]
	cmp	rcx, rbp
	jge	.label_752
	nop	
	mov	rcx, qword ptr [rbx + 0x10]
	nop	
	lea	rdi, [rcx + r13*4 + 4]
	lea	rdx, [rax*4 - 4]
	lea	rsi, [rsi]
	mov	esi, 0xff
	mov	rsp, rsp
	call	memset
	nop	
	mov	rcx, rbp
.label_752:
	cmp	r12, rcx
	nop	
	mov	r13, rcx
	jg	.label_745
	jmp	.label_749
.label_742:
	mov	rbp, rbp
	cmp	dword ptr [rbx + 0x90], 0
	mov	eax, 0
	lea	rsi, [rsp + 0x10]
	nop	
	jle	.label_746
	nop	word ptr cs:[rax + rax]
.label_744:
	cmp	rax, rdx
	jge	.label_743
	mov	rbp, rbp
	mov	rcx, qword ptr [rbx]
	mov	rsi, qword ptr [rbx + 0x78]
	lea	rdi, [rdi]
	add	rcx, qword ptr [rbx + 0x28]
	lea	rsi, [rsi]
	add	rcx, r13
	movzx	ecx, byte ptr [rax + rcx]
	mov	cl, byte ptr [rsi + rcx]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbx + 8]
	add	rsi, r13
	mov	byte ptr [rax + rsi], cl
	mov	byte ptr [rsp + rax + 0x10], cl
	inc	rax
	movsxd	rcx, dword ptr [rbx + 0x90]
	mov	rbp, rbp
	cmp	rax, rcx
	mov	rsp, rsp
	jl	.label_744
	nop	
	lea	rsi, [rsp + 0x10]
	mov	rbp, rbp
	jmp	.label_746
.label_747:
	movzx	eax, byte ptr [rcx + rax]
	mov	rsp, rsp
	mov	dword ptr [rsp + 0xc], eax
	jmp	.label_750
.label_743:
	mov	rsp, rsp
	lea	rsi, [rsp + 0x10]
	mov	rsp, rsp
	jmp	.label_746
	nop	word ptr cs:[rax + rax]
.label_745:
	nop	
	mov	rdx, r12
	nop	
	sub	rdx, r13
	lea	rsi, [rsi]
	mov	rbp, qword ptr [rbx + 0x20]
	nop	
	cmp	qword ptr [rbx + 0x78], 0
	mov	rsp, rsp
	jne	.label_742
	mov	rsi, qword ptr [rbx]
	mov	rsp, rsp
	add	rsi, qword ptr [rbx + 0x28]
	nop	
	add	rsi, r13
.label_746:
	mov	rdi, r15
	mov	rsp, rsp
	mov	rcx, r14
	lea	rsi, [rsi]
	call	rpl_mbrtowc
	lea	rcx, [rax + 1]
	lea	rsi, [rsi]
	cmp	rcx, 2
	lea	rsi, [rsi]
	jb	.label_751
	cmp	rax, -2
	jne	.label_748
	mov	rax, qword ptr [rbx + 0x40]
	cmp	rax, qword ptr [rbx + 0x58]
	jge	.label_751
	mov	rbp, rbp
	mov	qword ptr [r14], rbp
.label_741:
	mov	rbp, rbp
	mov	rcx, r13
.label_749:
	mov	qword ptr [rbx + 0x30], rcx
	mov	qword ptr [rbx + 0x38], rcx
	add	rsp, 0x58
	pop	rbx
	mov	rsp, rsp
	pop	r12
	pop	r13
	mov	rsp, rsp
	pop	r14
	pop	r15
	pop	rbp
	lea	rsi, [rsi]
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40ca60

	.globl re_string_translate_buffer
	.type re_string_translate_buffer, @function
re_string_translate_buffer:
	mov	rax, qword ptr [rdi + 0x30]
	mov	r8, qword ptr [rdi + 0x40]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rdi + 0x58]
	mov	rbp, rbp
	cmp	r8, rdx
	mov	rsp, rsp
	cmovg	r8, rdx
	lea	rsi, [rsi]
	cmp	rax, r8
	lea	rdi, [rdi]
	jge	.label_753
	nop	word ptr [rax + rax]
.label_754:
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rdi]
	mov	rsi, qword ptr [rdi + 8]
	lea	rdi, [rdi]
	add	rdx, qword ptr [rdi + 0x28]
	lea	rdi, [rdi]
	movzx	edx, byte ptr [rax + rdx]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rdi + 0x78]
	mov	rbp, rbp
	mov	cl, byte ptr [rcx + rdx]
	mov	byte ptr [rsi + rax], cl
	inc	rax
	lea	rdi, [rdi]
	cmp	rax, r8
	jl	.label_754
	lea	rdi, [rdi]
	mov	rax, r8
.label_753:
	mov	qword ptr [rdi + 0x30], rax
	mov	rsp, rsp
	mov	qword ptr [rdi + 0x38], rax
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40cae0

	.globl fetch_token
	.type fetch_token, @function
fetch_token:
	push	rbx
	mov	rbx, rsi
	nop	
	call	peek_token
	mov	rsp, rsp
	cdqe	
	add	qword ptr [rbx + 0x48], rax
	pop	rbx
	nop	
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40cb00

	.globl parse_reg_exp
	.type parse_reg_exp, @function
parse_reg_exp:
	nop	
	push	rbp
	push	r15
	lea	rdi, [rdi]
	push	r14
	push	r13
	push	r12
	lea	rsi, [rsi]
	push	rbx
	sub	rsp, 0x28
	lea	rsi, [rsi]
	mov	r12, r9
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x20], r8
	mov	qword ptr [rsp + 0x18], rcx
	mov	r13, rdx
	mov	qword ptr [rsp + 8], rsi
	mov	r15, rdi
	mov	rbp, qword ptr [rsi]
	mov	rax, qword ptr [rbp + 0xa8]
	mov	qword ptr [rsp], rax
	mov	rbp, rbp
	call	parse_branch
	lea	rdi, [rdi]
	mov	rbx, rax
	lea	rsi, [rsi]
	xor	r14d, r14d
	test	rbx, rbx
	jne	.label_759
	mov	rsp, rsp
	mov	eax, dword ptr [r12]
	nop	
	test	eax, eax
	mov	rbp, rbp
	jne	.label_758
.label_759:
	nop	
	mov	r14, qword ptr [rsp + 0x18]
	lea	rdi, [rdi]
	or	r14, 0x800000
	nop	dword ptr [rax]
.label_760:
	movzx	eax, byte ptr [r13 + 8]
	mov	rbp, rbp
	cmp	eax, 0xa
	nop	
	jne	.label_755
	mov	rdi, r13
	mov	rbp, rbp
	mov	rsi, r15
	mov	rdx, r14
	mov	rbp, rbp
	call	fetch_token
	nop	
	movzx	eax, byte ptr [r13 + 8]
	mov	ecx, eax
	or	ecx, 8
	nop	
	cmp	ecx, 0xa
	mov	edx, 0
	je	.label_757
	cmp	qword ptr [rsp + 0x20], 0
	je	.label_756
	cmp	eax, 9
	mov	rsp, rsp
	mov	edx, 0
	je	.label_757
.label_756:
	mov	rax, qword ptr [rbp + 0xa8]
	mov	qword ptr [rsp + 0x10], rax
	nop	
	mov	rax, qword ptr [rsp]
	nop	
	mov	qword ptr [rbp + 0xa8], rax
	mov	rdi, r15
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rsp + 8]
	mov	rsp, rsp
	mov	rdx, r13
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rsp + 0x18]
	mov	rbp, rbp
	mov	r8, qword ptr [rsp + 0x20]
	mov	r9, r12
	call	parse_branch
	nop	
	mov	rdx, rax
	test	rdx, rdx
	mov	rsp, rsp
	jne	.label_761
	lea	rsi, [rsi]
	mov	eax, dword ptr [r12]
	lea	rsi, [rsi]
	test	eax, eax
	lea	rdi, [rdi]
	jne	.label_762
.label_761:
	mov	rax, qword ptr [rsp + 0x10]
	mov	rbp, rbp
	or	qword ptr [rbp + 0xa8], rax
	nop	word ptr cs:[rax + rax]
.label_757:
	mov	rbp, rbp
	mov	ecx, 0xa
	mov	rdi, rbp
	mov	rsi, rbx
	call	create_tree
	lea	rdi, [rdi]
	mov	rbx, rax
	nop	
	test	rbx, rbx
	jne	.label_760
	mov	dword ptr [r12], 0xc
	mov	rbp, rbp
	xor	r14d, r14d
	jmp	.label_758
.label_755:
	mov	r14, rbx
.label_758:
	nop	
	mov	rax, r14
	mov	rsp, rsp
	add	rsp, 0x28
	mov	rbp, rbp
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	mov	rbp, rbp
	pop	r15
	nop	
	pop	rbp
	ret	
.label_762:
	xor	r14d, r14d
	test	rbx, rbx
	je	.label_758
	nop	
	xor	r14d, r14d
	lea	rsi, [rsi]
	mov	esi, OFFSET FLAT:free_tree
	mov	rbp, rbp
	xor	edx, edx
	mov	rdi, rbx
	lea	rsi, [rsi]
	call	postorder
	jmp	.label_758
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40ccd0

	.globl create_tree
	.type create_tree, @function
create_tree:
	sub	rsp, 0x18
	mov	rsp, rsp
	mov	byte ptr [rsp + 0x10], cl
	lea	rcx, [rsp + 8]
	nop	
	call	create_token_tree
	add	rsp, 0x18
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40ccf0

	.globl peek_token
	.type peek_token, @function
peek_token:
	mov	rsp, rsp
	push	rbp
	nop	
	push	r15
	lea	rdi, [rdi]
	push	r14
	push	r13
	push	r12
	lea	rdi, [rdi]
	push	rbx
	nop	
	sub	rsp, 0x18
	lea	rsi, [rsi]
	mov	rbp, rsi
	mov	r15, rdi
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp + 0x48]
	lea	rsi, [rsi]
	cmp	qword ptr [rbp + 0x68], rax
	jle	.label_793
	mov	rcx, qword ptr [rbp + 8]
	movzx	r12d, byte ptr [rcx + rax]
	mov	byte ptr [r15], r12b
	nop	
	mov	eax, dword ptr [r15 + 8]
	mov	rsp, rsp
	mov	ecx, eax
	and	ecx, 0xff9fffff
	nop	
	mov	dword ptr [r15 + 8], ecx
	mov	rsp, rsp
	cmp	dword ptr [rbp + 0x90], 2
	jl	.label_773
	mov	rcx, qword ptr [rbp + 0x48]
	mov	rbp, rbp
	cmp	rcx, qword ptr [rbp + 0x30]
	nop	
	je	.label_773
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp + 0x10]
	cmp	dword ptr [rsi + rcx*4], -1
	mov	rsp, rsp
	je	.label_775
.label_773:
	mov	rbp, rbp
	cmp	r12d, 0x5c
	mov	rbp, rbp
	jne	.label_789
	mov	rax, qword ptr [rbp + 0x48]
	inc	rax
	cmp	rax, qword ptr [rbp + 0x58]
	lea	rdi, [rdi]
	jge	.label_781
	mov	rsp, rsp
	mov	r12, rdx
	mov	rdi, rbp
	call	re_string_peek_byte_case
	lea	rdi, [rdi]
	mov	r14b, al
	mov	byte ptr [r15], r14b
	lea	rsi, [rsi]
	mov	ebx, 0xffffff00
	mov	rsp, rsp
	and	ebx, dword ptr [r15 + 8]
	mov	rsp, rsp
	or	ebx, 1
	nop	
	mov	dword ptr [r15 + 8], ebx
	nop	
	cmp	dword ptr [rbp + 0x90], 2
	jl	.label_784
	mov	rsi, qword ptr [rbp + 0x48]
	inc	rsi
	mov	rdi, rbp
	call	re_string_wchar_at
	mov	ebp, eax
	mov	edi, ebp
	mov	rsp, rsp
	call	iswalnum
	test	eax, eax
	setne	al
	cmp	ebp, 0x5f
	mov	rbp, rbp
	sete	cl
	or	cl, al
	movzx	eax, cl
	shl	eax, 0x16
	mov	ebx, 0xffbfffff
	nop	
	and	ebx, dword ptr [r15 + 8]
	jmp	.label_795
.label_793:
	mov	rsp, rsp
	mov	byte ptr [r15 + 8], 2
	mov	rbp, rbp
	xor	r14d, r14d
	jmp	.label_763
.label_789:
	mov	qword ptr [rsp], rdx
	mov	ebx, 0xffffff00
	mov	rsp, rsp
	and	ebx, dword ptr [r15 + 8]
	or	ebx, 1
	mov	dword ptr [r15 + 8], ebx
	cmp	dword ptr [rbp + 0x90], 2
	jl	.label_788
	mov	rsi, qword ptr [rbp + 0x48]
	mov	rdi, rbp
	nop	
	call	re_string_wchar_at
	mov	rbp, rbp
	mov	ebx, eax
	nop	
	mov	edi, ebx
	call	iswalnum
	test	eax, eax
	nop	
	setne	al
	mov	rsp, rsp
	cmp	ebx, 0x5f
	sete	cl
	lea	rdi, [rdi]
	or	cl, al
	mov	rbp, rbp
	movzx	eax, cl
	lea	rdi, [rdi]
	shl	eax, 0x16
	lea	rsi, [rsi]
	mov	ebx, 0xffbfffff
	lea	rsi, [rsi]
	and	ebx, dword ptr [r15 + 8]
	jmp	.label_776
.label_781:
	mov	byte ptr [r15 + 8], 0x24
	mov	r14d, 1
	jmp	.label_763
.label_788:
	movzx	r14d, byte ptr [r15]
	mov	rbp, rbp
	cmp	r14, 0x5f
	mov	rbp, rbp
	sete	r13b
	lea	rsi, [rsi]
	call	__ctype_b_loc
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax]
	lea	rdi, [rdi]
	movzx	eax, word ptr [rax + r14*2]
	lea	rdi, [rdi]
	movzx	ecx, r13b
	nop	
	shr	eax, 3
	and	eax, 1
	or	eax, ecx
	shl	eax, 0x16
	mov	rsp, rsp
	and	ebx, 0xffbfff01
.label_776:
	mov	rbp, rbp
	or	ebx, eax
	mov	rsp, rsp
	mov	dword ptr [r15 + 8], ebx
	mov	r14d, 1
	nop	
	cmp	r12d, 0x3e
	lea	rdi, [rdi]
	jg	.label_792
	nop	
	lea	eax, [r12 - 0x24]
	mov	rbp, rbp
	cmp	eax, 0xa
	lea	rsi, [rsi]
	ja	.label_764
	jmp	qword ptr [word ptr [+ (rax * 8) + label_768]]
.label_1960:
	mov	rdx, qword ptr [rsp]
	test	dl, 8
	lea	rsi, [rsi]
	jne	.label_769
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp + 0x48]
	mov	rbp, rbp
	inc	rax
	lea	rdi, [rdi]
	cmp	rax, qword ptr [rbp + 0x58]
	mov	rbp, rbp
	je	.label_769
	inc	qword ptr [rbp + 0x48]
	lea	rdi, [rdi]
	lea	rdi, [rsp + 8]
	mov	rsi, rbp
	mov	rsp, rsp
	call	peek_token
	nop	
	dec	qword ptr [rbp + 0x48]
	nop	
	movzx	eax, byte ptr [rsp + 0x10]
	add	eax, -9
	lea	rsi, [rsi]
	cmp	eax, 1
	mov	rsp, rsp
	ja	.label_763
.label_769:
	mov	byte ptr [r15 + 8], 0xc
	mov	dword ptr [r15], 0x20
	mov	rsp, rsp
	jmp	.label_763
.label_792:
	lea	rsi, [rsi]
	cmp	r12d, 0x7a
	jg	.label_782
	cmp	r12d, 0x3f
	lea	rdi, [rdi]
	je	.label_783
	cmp	r12d, 0x5b
	je	.label_786
	mov	rsp, rsp
	cmp	r12d, 0x5e
	jne	.label_763
	mov	rbp, rbp
	mov	rcx, qword ptr [rsp]
	mov	rbp, rbp
	test	ecx, 0x800008
	jne	.label_790
	mov	rax, qword ptr [rbp + 0x48]
	mov	rsp, rsp
	test	rax, rax
	je	.label_790
	test	ch, 8
	lea	rdi, [rdi]
	je	.label_763
	mov	rcx, qword ptr [rbp + 8]
	movzx	eax, byte ptr [rax + rcx - 1]
	cmp	eax, 0xa
	jne	.label_763
.label_790:
	mov	byte ptr [r15 + 8], 0xc
	mov	dword ptr [r15], 0x10
	lea	rsi, [rsi]
	jmp	.label_763
.label_784:
	movzx	ebp, r14b
	call	__ctype_b_loc
	mov	rsp, rsp
	mov	rax, qword ptr [rax]
	movzx	eax, word ptr [rax + rbp*2]
	cmp	ebp, 0x5f
	sete	cl
	movzx	ecx, cl
	shr	eax, 3
	mov	rbp, rbp
	and	eax, 1
	or	eax, ecx
	shl	eax, 0x16
	lea	rdi, [rdi]
	and	ebx, 0xffbfff01
.label_795:
	nop	
	or	ebx, eax
	mov	dword ptr [r15 + 8], ebx
	movzx	eax, r14b
	mov	r14d, 2
	mov	rsp, rsp
	cmp	eax, 0x5f
	nop	
	jg	.label_771
	lea	ecx, [rax - 0x27]
	mov	rsp, rsp
	cmp	ecx, 0x2c
	mov	rsp, rsp
	ja	.label_774
	nop	
	jmp	qword ptr [word ptr [+ (rcx * 8) + label_780]]
.label_2001:
	mov	rcx, r12
	test	ch, 0x40
	lea	rdi, [rdi]
	jne	.label_763
	mov	rsp, rsp
	mov	byte ptr [r15 + 8], 4
	add	eax, -0x31
	lea	rsi, [rsi]
	cdqe	
	mov	qword ptr [r15], rax
	lea	rsi, [rsi]
	jmp	.label_763
.label_782:
	nop	
	cmp	r12d, 0x7b
	je	.label_785
	cmp	r12d, 0x7c
	je	.label_787
	mov	rsp, rsp
	cmp	r12d, 0x7d
	lea	rsi, [rsi]
	jne	.label_763
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp]
	and	eax, 0x1200
	lea	rdi, [rdi]
	cmp	rax, 0x1200
	je	.label_791
	lea	rdi, [rdi]
	jmp	.label_763
.label_775:
	and	eax, 0xff9fff00
	or	eax, 0x200001
	mov	rbp, rbp
	mov	dword ptr [r15 + 8], eax
	mov	r14d, 1
	jmp	.label_763
.label_771:
	mov	rbp, rbp
	lea	ecx, [rax - 0x73]
	cmp	ecx, 0xa
	ja	.label_765
	jmp	qword ptr [word ptr [+ (rcx * 8) + label_767]]
.label_1903:
	mov	rbp, rbp
	test	r12d, 0x80000
	jne	.label_763
	and	ebx, 0xffffff00
	or	ebx, 0x22
	mov	rbp, rbp
	mov	dword ptr [r15 + 8], ebx
	jmp	.label_763
.label_764:
	cmp	r12d, 0xa
	lea	rdi, [rdi]
	jne	.label_763
	mov	rax, qword ptr [rsp]
	lea	rsi, [rsi]
	test	ah, 8
	lea	rsi, [rsi]
	jne	.label_770
	jmp	.label_763
.label_1961:
	mov	rax, qword ptr [rsp]
	test	ah, 0x20
	jne	.label_777
	jmp	.label_763
.label_1962:
	mov	rax, qword ptr [rsp]
	mov	rsp, rsp
	test	ah, 0x20
	lea	rdi, [rdi]
	jne	.label_778
	jmp	.label_763
.label_1963:
	and	ebx, 0xffffff00
	or	ebx, 0xb
	mov	rbp, rbp
	mov	dword ptr [r15 + 8], ebx
	jmp	.label_763
.label_1964:
	mov	rax, qword ptr [rsp]
	nop	
	test	ax, 0x402
	mov	rsp, rsp
	jne	.label_763
	lea	rdi, [rdi]
	jmp	.label_779
.label_1965:
	lea	rsi, [rsi]
	and	ebx, 0xffffff00
	lea	rdi, [rdi]
	or	ebx, 5
	mov	rbp, rbp
	mov	dword ptr [r15 + 8], ebx
	lea	rsi, [rsi]
	jmp	.label_763
.label_783:
	mov	rax, qword ptr [rsp]
	test	ax, 0x402
	jne	.label_763
	lea	rdi, [rdi]
	jmp	.label_794
.label_786:
	and	ebx, 0xffffff00
	nop	
	or	ebx, 0x14
	mov	dword ptr [r15 + 8], ebx
	lea	rdi, [rdi]
	jmp	.label_763
.label_785:
	mov	rsp, rsp
	mov	rax, qword ptr [rsp]
	lea	rsi, [rsi]
	and	eax, 0x1200
	cmp	rax, 0x1200
	je	.label_766
	jmp	.label_763
.label_787:
	mov	rax, qword ptr [rsp]
	test	ah, 4
	nop	
	jne	.label_763
	test	ax, ax
	js	.label_770
	mov	rsp, rsp
	jmp	.label_763
.label_765:
	cmp	eax, 0x60
	je	.label_772
	mov	rsp, rsp
	cmp	eax, 0x62
	lea	rsi, [rsi]
	jne	.label_763
	lea	rdi, [rdi]
	test	r12d, 0x80000
	lea	rdi, [rdi]
	jne	.label_763
	and	ebx, 0xffffff00
	mov	rbp, rbp
	or	ebx, 0xc
	nop	
	mov	dword ptr [r15 + 8], ebx
	nop	
	mov	dword ptr [r15], 0x100
	jmp	.label_763
.label_774:
	cmp	eax, 0x57
	jne	.label_763
	test	r12d, 0x80000
	jne	.label_763
	and	ebx, 0xffffff00
	or	ebx, 0x21
	mov	dword ptr [r15 + 8], ebx
	lea	rsi, [rsi]
	jmp	.label_763
.label_1904:
	test	r12d, 0x80000
	nop	
	jne	.label_763
	mov	rbp, rbp
	and	ebx, 0xffffff00
	mov	rbp, rbp
	or	ebx, 0x20
	mov	dword ptr [r15 + 8], ebx
	mov	rsp, rsp
	jmp	.label_763
.label_1905:
	lea	rsi, [rsi]
	and	r12d, 0x1200
	nop	
	cmp	r12, 0x200
	lea	rdi, [rdi]
	jne	.label_763
.label_766:
	and	ebx, 0xffffff00
	mov	rsp, rsp
	or	ebx, 0x17
	lea	rdi, [rdi]
	mov	dword ptr [r15 + 8], ebx
	lea	rdi, [rdi]
	jmp	.label_763
.label_1906:
	mov	rax, r12
	nop	
	test	ah, 4
	jne	.label_763
	lea	rsi, [rsi]
	test	ax, ax
	js	.label_763
.label_770:
	nop	
	and	ebx, 0xffffff00
	or	ebx, 0xa
	lea	rdi, [rdi]
	mov	dword ptr [r15 + 8], ebx
	mov	rbp, rbp
	jmp	.label_763
.label_1907:
	and	r12d, 0x1200
	mov	rsp, rsp
	cmp	r12, 0x200
	lea	rdi, [rdi]
	jne	.label_763
.label_791:
	and	ebx, 0xffffff00
	lea	rsi, [rsi]
	or	ebx, 0x18
	mov	dword ptr [r15 + 8], ebx
	jmp	.label_763
.label_772:
	lea	rdi, [rdi]
	test	r12d, 0x80000
	nop	
	jne	.label_763
	lea	rsi, [rsi]
	and	ebx, 0xffffff00
	or	ebx, 0xc
	mov	dword ptr [r15 + 8], ebx
	mov	dword ptr [r15], 0x40
	jmp	.label_763
.label_1997:
	lea	rdi, [rdi]
	test	r12d, 0x80000
	nop	
	jne	.label_763
	lea	rsi, [rsi]
	and	ebx, 0xffffff00
	lea	rdi, [rdi]
	or	ebx, 0xc
	lea	rsi, [rsi]
	mov	dword ptr [r15 + 8], ebx
	lea	rsi, [rsi]
	mov	dword ptr [r15], 0x80
	jmp	.label_763
.label_1998:
	mov	rax, r12
	lea	rsi, [rsi]
	test	ah, 0x20
	nop	
	jne	.label_763
.label_777:
	and	ebx, 0xffffff00
	or	ebx, 8
	mov	rsp, rsp
	mov	dword ptr [r15 + 8], ebx
	jmp	.label_763
.label_1999:
	mov	rax, r12
	nop	
	test	ah, 0x20
	jne	.label_763
.label_778:
	lea	rdi, [rdi]
	and	ebx, 0xffffff00
	or	ebx, 9
	mov	dword ptr [r15 + 8], ebx
	jmp	.label_763
.label_2000:
	and	r12d, 0x402
	mov	rsp, rsp
	cmp	r12, 2
	nop	
	jne	.label_763
.label_779:
	nop	
	and	ebx, 0xffffff00
	mov	rbp, rbp
	or	ebx, 0x12
	mov	dword ptr [r15 + 8], ebx
	jmp	.label_763
.label_2002:
	test	r12d, 0x80000
	jne	.label_763
	and	ebx, 0xffffff00
	or	ebx, 0xc
	mov	dword ptr [r15 + 8], ebx
	lea	rdi, [rdi]
	mov	dword ptr [r15], 6
	jmp	.label_763
.label_2003:
	test	r12d, 0x80000
	jne	.label_763
	and	ebx, 0xffffff00
	or	ebx, 0xc
	lea	rdi, [rdi]
	mov	dword ptr [r15 + 8], ebx
	lea	rsi, [rsi]
	mov	dword ptr [r15], 9
	jmp	.label_763
.label_2004:
	and	r12d, 0x402
	cmp	r12, 2
	jne	.label_763
.label_794:
	and	ebx, 0xffffff00
	or	ebx, 0x13
	mov	dword ptr [r15 + 8], ebx
	jmp	.label_763
.label_2005:
	test	r12d, 0x80000
	jne	.label_763
	and	ebx, 0xffffff00
	lea	rdi, [rdi]
	or	ebx, 0xc
	mov	dword ptr [r15 + 8], ebx
	mov	dword ptr [r15], 0x200
	mov	rbp, rbp
	jmp	.label_763
.label_2006:
	lea	rsi, [rsi]
	test	r12d, 0x80000
	jne	.label_763
	lea	rdi, [rdi]
	and	ebx, 0xffffff00
	or	ebx, 0x23
	mov	dword ptr [r15 + 8], ebx
.label_763:
	lea	rdi, [rdi]
	mov	eax, r14d
	lea	rsi, [rsi]
	add	rsp, 0x18
	mov	rbp, rbp
	pop	rbx
	lea	rdi, [rdi]
	pop	r12
	pop	r13
	pop	r14
	mov	rbp, rbp
	pop	r15
	pop	rbp
	lea	rsi, [rsi]
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40d530

	.globl re_string_peek_byte_case
	.type re_string_peek_byte_case, @function
re_string_peek_byte_case:
	nop	
	cmp	byte ptr [rdi + 0x8b], 0
	lea	rdi, [rdi]
	jne	.label_798
.label_796:
	mov	rax, qword ptr [rdi + 8]
	nop	
	mov	rcx, qword ptr [rdi + 0x48]
	lea	rdi, [rdi]
	mov	al, byte ptr [rcx + rax + 1]
.label_797:
	movzx	eax, al
	mov	rsp, rsp
	ret	
.label_798:
	cmp	dword ptr [rdi + 0x90], 2
	jl	.label_799
	mov	rax, qword ptr [rdi + 0x10]
	mov	rcx, qword ptr [rdi + 0x48]
	mov	rsp, rsp
	cmp	dword ptr [rax + rcx*4 + 4], -1
	mov	rsp, rsp
	je	.label_796
	mov	rsp, rsp
	lea	rdx, [rcx + 2]
	cmp	qword ptr [rdi + 0x30], rdx
	mov	rsp, rsp
	je	.label_799
	mov	rsp, rsp
	cmp	dword ptr [rax + rcx*4 + 8], -1
	nop	
	je	.label_796
.label_799:
	mov	rax, qword ptr [rdi + 0x48]
	cmp	byte ptr [rdi + 0x8c], 0
	je	.label_800
	mov	rcx, qword ptr [rdi + 0x18]
	mov	rax, qword ptr [rcx + rax*8 + 8]
	lea	rsi, [rsi]
	jmp	.label_801
.label_800:
	inc	rax
.label_801:
	add	rax, qword ptr [rdi + 0x28]
	mov	rcx, qword ptr [rdi]
	mov	al, byte ptr [rcx + rax]
	nop	
	test	al, al
	jns	.label_797
	mov	cl, byte ptr [rdi + 0x8c]
	lea	rsi, [rsi]
	test	cl, cl
	lea	rsi, [rsi]
	je	.label_797
	nop	
	jmp	.label_796
	.section	.text
	.align	32
	#Procedure 0x40d5d0

	.globl re_string_wchar_at
	.type re_string_wchar_at, @function
re_string_wchar_at:
	cmp	dword ptr [rdi + 0x90], 1
	mov	rbp, rbp
	jne	.label_802
	lea	rsi, [rsi]
	mov	rax, qword ptr [rdi + 8]
	mov	rsp, rsp
	movzx	eax, byte ptr [rax + rsi]
	ret	
.label_802:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rdi + 0x10]
	mov	rsp, rsp
	mov	eax, dword ptr [rax + rsi*4]
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40d600

	.globl parse_branch
	.type parse_branch, @function
parse_branch:
	push	rbp
	nop	
	push	r15
	push	r14
	push	r13
	nop	
	push	r12
	push	rbx
	sub	rsp, 0x18
	mov	r14, r9
	mov	r12, r8
	mov	qword ptr [rsp + 0x10], rcx
	mov	rbp, rbp
	mov	r13, rdx
	mov	rsp, rsp
	mov	rbp, rsi
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 8], rdi
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp]
	mov	qword ptr [rsp], rax
	nop	
	call	parse_expression
	mov	rsp, rsp
	xor	r15d, r15d
	mov	rbp, rbp
	test	rax, rax
	jne	.label_803
	lea	rdi, [rdi]
	mov	ecx, dword ptr [r14]
	nop	
	test	ecx, ecx
	mov	rbp, rbp
	je	.label_803
	nop	
	jmp	.label_804
	nop	word ptr cs:[rax + rax]
.label_809:
	test	rbx, rbx
	mov	rsp, rsp
	cmovne	r15, rbx
	mov	rax, r15
.label_803:
	mov	rbx, rax
	mov	rbp, rbp
	movzx	eax, byte ptr [r13 + 8]
	mov	ecx, eax
	mov	rbp, rbp
	or	ecx, 8
	cmp	ecx, 0xa
	je	.label_810
	test	r12, r12
	mov	rbp, rbp
	je	.label_806
	cmp	eax, 9
	mov	rbp, rbp
	je	.label_807
.label_806:
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rsp + 8]
	mov	rbp, rbp
	mov	rsi, rbp
	mov	rdx, r13
	mov	rsp, rsp
	mov	rcx, qword ptr [rsp + 0x10]
	mov	r8, r12
	lea	rsi, [rsi]
	mov	r9, r14
	lea	rdi, [rdi]
	call	parse_expression
	mov	rbp, rbp
	mov	r15, rax
	test	r15, r15
	lea	rdi, [rdi]
	jne	.label_805
	mov	eax, dword ptr [r14]
	test	eax, eax
	lea	rsi, [rsi]
	jne	.label_808
.label_805:
	lea	rsi, [rsi]
	test	rbx, rbx
	je	.label_809
	mov	rbp, rbp
	test	r15, r15
	lea	rsi, [rsi]
	je	.label_809
	mov	ecx, 0x10
	mov	rdi, qword ptr [rsp]
	lea	rdi, [rdi]
	mov	rsi, rbx
	nop	
	mov	rdx, r15
	call	create_tree
	mov	rsp, rsp
	test	rax, rax
	jne	.label_803
	mov	esi, OFFSET FLAT:free_tree
	xor	edx, edx
	mov	rdi, r15
	nop	
	xor	r15d, r15d
	call	postorder
	mov	esi, OFFSET FLAT:free_tree
	mov	rbp, rbp
	xor	edx, edx
	mov	rdi, rbx
	call	postorder
	mov	dword ptr [r14], 0xc
	mov	rbp, rbp
	jmp	.label_804
.label_808:
	mov	rbp, rbp
	xor	r15d, r15d
	test	rbx, rbx
	lea	rdi, [rdi]
	je	.label_804
	mov	rsp, rsp
	xor	r15d, r15d
	mov	esi, OFFSET FLAT:free_tree
	nop	
	xor	edx, edx
	mov	rdi, rbx
	call	postorder
	lea	rsi, [rsi]
	jmp	.label_804
.label_810:
	mov	r15, rbx
	mov	rsp, rsp
	jmp	.label_804
.label_807:
	lea	rdi, [rdi]
	mov	r15, rbx
.label_804:
	mov	rbp, rbp
	mov	rax, r15
	add	rsp, 0x18
	pop	rbx
	lea	rdi, [rdi]
	pop	r12
	pop	r13
	lea	rdi, [rdi]
	pop	r14
	pop	r15
	lea	rsi, [rsi]
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40d7c0

	.globl postorder
	.type postorder, @function
postorder:
	push	r15
	push	r14
	push	r12
	lea	rsi, [rsi]
	push	rbx
	push	rax
	mov	r14, rdx
	mov	rsp, rsp
	mov	r15, rsi
	jmp	.label_811
	nop	word ptr cs:[rax + rax]
.label_813:
	mov	rdi, qword ptr [rcx + 0x10]
.label_811:
	lea	rdi, [rdi]
	mov	rcx, rdi
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rcx + 8]
	nop	
	test	rdi, rdi
	jne	.label_811
	nop	
	cmp	qword ptr [rcx + 0x10], 0
	lea	rsi, [rsi]
	je	.label_815
	mov	rsp, rsp
	mov	rdi, qword ptr [rcx + 8]
	test	rdi, rdi
	jne	.label_811
	lea	rdi, [rdi]
	jmp	.label_813
.label_815:
	mov	r12, rbx
	nop	word ptr cs:[rax + rax]
.label_812:
	mov	rbp, rbp
	mov	rbx, rcx
	mov	rdi, r14
	mov	rbp, rbp
	mov	rsi, rbx
	mov	rbp, rbp
	call	r15
	mov	rsp, rsp
	test	eax, eax
	mov	rsp, rsp
	jne	.label_814
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbx]
	nop	
	xor	eax, eax
	lea	rsi, [rsi]
	test	rcx, rcx
	lea	rsi, [rsi]
	je	.label_814
	lea	rsi, [rsi]
	cmovne	r12, rbx
	mov	rax, rcx
	mov	rsp, rsp
	cmove	rax, rbx
	mov	rdi, qword ptr [rax + 0x10]
	lea	rdi, [rdi]
	cmp	rdi, r12
	nop	
	mov	r12, rbx
	je	.label_812
	lea	rsi, [rsi]
	test	rdi, rdi
	nop	
	mov	r12, rbx
	je	.label_812
	jmp	.label_811
.label_814:
	mov	rsp, rsp
	add	rsp, 8
	lea	rdi, [rdi]
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	mov	rsp, rsp
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40d8a0

	.globl free_tree
	.type free_tree, @function
free_tree:
	nop
	push	rax
	lea	rdi, [rsi + 0x28]
	lea	rdi, [rdi]
	call	free_token
	xor	eax, eax
	pop	rcx
	lea	rdi, [rdi]
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40d8c0

	.globl parse_expression
	.type parse_expression, @function
parse_expression:
	lea	rdi, [rdi]
	push	rbp
	push	r15
	push	r14
	mov	rsp, rsp
	push	r13
	mov	rsp, rsp
	push	r12
	nop	
	push	rbx
	sub	rsp, 0x28
	nop	
	mov	qword ptr [rsp + 8], r9
	mov	qword ptr [rsp], r8
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x18], rcx
	mov	r13, rdx
	mov	rsp, rsp
	mov	rbp, rsi
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x20], rdi
	mov	rsp, rsp
	mov	r14d, ecx
	and	r14d, 0x1000000
	mov	rbp, rbp
	mov	ebx, ecx
	and	ebx, 0x20
	mov	r15d, ecx
	and	r15d, 0x10
	mov	rsp, rsp
	xor	eax, eax
	mov	qword ptr [rsp + 0x10], rax
	jmp	.label_836
	nop	word ptr cs:[rax + rax]
.label_831:
	lea	rsi, [rsi]
	mov	rdi, r13
	mov	rsp, rsp
	mov	rsi, qword ptr [rsp + 0x20]
	mov	rdx, qword ptr [rsp + 0x18]
	mov	rbp, rbp
	call	fetch_token
.label_836:
	lea	rdi, [rdi]
	movzx	eax, byte ptr [r13 + 8]
	dec	eax
	nop	
	cmp	eax, 0x23
	nop	
	ja	.label_826
	mov	rbp, rbp
	mov	r12, qword ptr [rbp]
	jmp	qword ptr [word ptr [+ (rax * 8) + label_828]]
.label_1837:
	lea	rsi, [rsi]
	test	r14, r14
	lea	rdi, [rdi]
	jne	.label_829
.label_1834:
	mov	rsp, rsp
	test	rbx, rbx
	mov	rsp, rsp
	jne	.label_829
	lea	rdi, [rdi]
	test	r15, r15
	jne	.label_831
.label_1833:
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 0x18]
	mov	rsp, rsp
	test	eax, 0x20000
	mov	rsp, rsp
	jne	.label_832
	lea	rsi, [rsi]
	movzx	eax, byte ptr [r13 + 8]
	cmp	eax, 9
	mov	rbp, rbp
	jne	.label_832
	mov	rax, qword ptr [rsp + 8]
	mov	dword ptr [rax], 0x10
	lea	rdi, [rdi]
	jmp	.label_823
.label_829:
	mov	rax, qword ptr [rsp + 8]
	lea	rdi, [rdi]
	mov	dword ptr [rax], 0xd
.label_823:
	xor	eax, eax
	mov	qword ptr [rsp + 0x10], rax
.label_826:
	mov	rax, qword ptr [rsp + 0x10]
	lea	rsi, [rsi]
	add	rsp, 0x28
	mov	rbp, rbp
	pop	rbx
	nop	
	pop	r12
	nop	
	pop	r13
	mov	rsp, rsp
	pop	r14
	pop	r15
	nop	
	pop	rbp
	ret	
.label_832:
	mov	byte ptr [r13 + 8], 1
	xor	esi, esi
	xor	edx, edx
	mov	rsp, rsp
	mov	rdi, r12
	mov	rsp, rsp
	mov	rcx, r13
	call	create_token_tree
	mov	r14, rax
	test	r14, r14
	jne	.label_816
	lea	rsi, [rsi]
	jmp	.label_818
.label_1838:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp + 0x20]
	mov	rsp, rsp
	mov	rsi, qword ptr [rax + 0x78]
	lea	rsi, [rsi]
	movzx	eax, byte ptr [r13 + 8]
	nop	
	cmp	eax, 0x21
	sete	al
	movzx	r8d, al
	lea	rsi, [rsi]
	mov	edx, OFFSET FLAT:.str.1_3
	mov	ecx, OFFSET FLAT:.str.2_2
	jmp	.label_820
.label_1839:
	mov	rax, qword ptr [rsp + 0x20]
	mov	rsi, qword ptr [rax + 0x78]
	lea	rdi, [rdi]
	movzx	eax, byte ptr [r13 + 8]
	cmp	eax, 0x23
	lea	rdi, [rdi]
	sete	al
	lea	rdi, [rdi]
	movzx	r8d, al
	mov	edx, OFFSET FLAT:.str.3_1
	mov	rsp, rsp
	mov	ecx, OFFSET FLAT:.str
.label_820:
	nop	
	mov	rdi, r12
	mov	rbx, qword ptr [rsp + 8]
	lea	rdi, [rdi]
	mov	r9, rbx
	lea	rsi, [rsi]
	call	build_charclass_op
	lea	rsi, [rsi]
	jmp	.label_834
.label_1836:
	mov	rbp, rbp
	mov	rdi, qword ptr [rsp + 0x20]
	mov	rsi, r12
	mov	rbp, rbp
	mov	rdx, r13
	mov	rcx, qword ptr [rsp + 0x18]
	mov	rsp, rsp
	mov	rbx, qword ptr [rsp + 8]
	mov	r8, rbx
	mov	rbp, rbp
	call	parse_bracket_exp
	mov	rsp, rsp
	jmp	.label_834
.label_1829:
	xor	esi, esi
	xor	edx, edx
	mov	rdi, r12
	lea	rsi, [rsi]
	mov	rcx, r13
	call	create_token_tree
	mov	rsp, rsp
	mov	r14, rax
	nop	
	test	r14, r14
	je	.label_818
	cmp	dword ptr [r12 + 0xb4], 2
	nop	
	jl	.label_816
	lea	rdi, [rdi]
	mov	rbx, qword ptr [rsp + 0x20]
.label_833:
	nop	
	mov	rax, qword ptr [rbx + 0x48]
	cmp	qword ptr [rbx + 0x68], rax
	jle	.label_816
	mov	rsp, rsp
	cmp	rax, qword ptr [rbx + 0x30]
	mov	rbp, rbp
	je	.label_816
	mov	rcx, qword ptr [rbx + 0x10]
	cmp	dword ptr [rcx + rax*4], -1
	lea	rsi, [rsi]
	jne	.label_816
	lea	rsi, [rsi]
	mov	rdi, r13
	lea	rdi, [rdi]
	mov	rsi, rbx
	mov	rdx, qword ptr [rsp + 0x18]
	call	fetch_token
	xor	esi, esi
	xor	edx, edx
	mov	rsp, rsp
	mov	rdi, r12
	mov	rcx, r13
	call	create_token_tree
	lea	rsi, [rsi]
	mov	rbp, rax
	mov	rsp, rsp
	mov	ecx, 0x10
	mov	rdi, r12
	mov	rbp, rbp
	mov	rsi, r14
	mov	rdx, rbp
	call	create_tree
	mov	r14, rax
	test	rbp, rbp
	je	.label_818
	test	r14, r14
	lea	rsi, [rsi]
	jne	.label_833
	lea	rdi, [rdi]
	jmp	.label_818
.label_1830:
	mov	rbp, rbp
	mov	cl, byte ptr [r13]
	mov	rbp, rbp
	mov	eax, 1
	mov	rbp, rbp
	shl	eax, cl
	lea	rdi, [rdi]
	cdqe	
	test	qword ptr [r12 + 0xa8], rax
	mov	rsp, rsp
	je	.label_835
	mov	rbp, rbp
	or	qword ptr [r12 + 0xa0], rax
	xor	esi, esi
	mov	rbp, rbp
	xor	edx, edx
	lea	rsi, [rsi]
	mov	rdi, r12
	mov	rbp, rbp
	mov	rcx, r13
	lea	rsi, [rsi]
	call	create_token_tree
	mov	r14, rax
	nop	
	test	r14, r14
	lea	rsi, [rsi]
	je	.label_818
	inc	qword ptr [r12 + 0x98]
	nop	
	or	byte ptr [r12 + 0xb0], 2
	lea	rsi, [rsi]
	jmp	.label_816
.label_1831:
	nop	
	xor	esi, esi
	lea	rdi, [rdi]
	xor	edx, edx
	mov	rbp, rbp
	mov	rdi, r12
	mov	rcx, r13
	lea	rdi, [rdi]
	call	create_token_tree
	mov	r14, rax
	mov	rbp, rbp
	test	r14, r14
	lea	rdi, [rdi]
	je	.label_818
	cmp	dword ptr [r12 + 0xb4], 2
	jl	.label_816
	mov	rsp, rsp
	or	byte ptr [r12 + 0xb0], 2
	jmp	.label_816
.label_1832:
	lea	rdi, [rdi]
	mov	r8, qword ptr [rsp]
	mov	rbp, rbp
	inc	r8
	mov	rdi, qword ptr [rsp + 0x20]
	lea	rsi, [rsi]
	mov	rsi, rbp
	mov	rbp, rbp
	mov	rdx, r13
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rsp + 0x18]
	mov	rbx, qword ptr [rsp + 8]
	mov	r9, rbx
	lea	rdi, [rdi]
	call	parse_sub_exp
.label_834:
	mov	rsp, rsp
	mov	r14, rax
	mov	rsp, rsp
	test	r14, r14
	lea	rsi, [rsi]
	jne	.label_816
	xor	eax, eax
	mov	qword ptr [rsp + 0x10], rax
	mov	rsp, rsp
	mov	eax, dword ptr [rbx]
	test	eax, eax
	lea	rsi, [rsi]
	jne	.label_826
.label_816:
	mov	rdi, r13
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rsp + 0x20]
	mov	rbx, qword ptr [rsp + 0x18]
	nop	
	mov	rdx, rbx
	nop	
	call	fetch_token
	nop	
	mov	ebp, ebx
	lea	rdi, [rdi]
	mov	r15, rbx
	and	ebp, 0x1000000
	lea	rsi, [rsi]
	mov	rbx, qword ptr [rsp + 8]
	nop	dword ptr [rax]
.label_825:
	nop	
	movzx	eax, byte ptr [r13 + 8]
	mov	rsp, rsp
	cmp	eax, 0x17
	lea	rdi, [rdi]
	ja	.label_841
	mov	ecx, 0x8c0800
	bt	ecx, eax
	mov	rsp, rsp
	jae	.label_817
	mov	rdi, r14
	mov	rsi, qword ptr [rsp + 0x20]
	mov	rdx, r12
	mov	rcx, r13
	mov	r8, r15
	mov	r9, rbx
	call	parse_dup_op
	test	rax, rax
	mov	rbp, rbp
	jne	.label_822
	lea	rdi, [rdi]
	mov	ecx, dword ptr [rbx]
	lea	rsi, [rsi]
	test	ecx, ecx
	jne	.label_824
.label_822:
	test	rbp, rbp
	mov	r14, rax
	je	.label_825
	movzx	ecx, byte ptr [r13 + 8]
	nop	
	cmp	ecx, 0x17
	je	.label_838
	cmp	ecx, 0xb
	mov	r14, rax
	jne	.label_825
.label_838:
	lea	rsi, [rsi]
	test	rax, rax
	lea	rdi, [rdi]
	je	.label_842
	lea	rsi, [rsi]
	mov	esi, OFFSET FLAT:free_tree
	lea	rdi, [rdi]
	xor	edx, edx
	lea	rdi, [rdi]
	mov	rdi, rax
	mov	rbp, rbp
	call	postorder
.label_842:
	mov	dword ptr [rbx], 0xd
	lea	rsi, [rsi]
	jmp	.label_823
.label_824:
	xor	eax, eax
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x10], rax
	lea	rdi, [rdi]
	test	r14, r14
	je	.label_826
	lea	rdi, [rdi]
	xor	eax, eax
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x10], rax
	mov	rbp, rbp
	mov	esi, OFFSET FLAT:free_tree
	lea	rdi, [rdi]
	xor	edx, edx
	lea	rsi, [rsi]
	mov	rdi, r14
	nop	
	call	postorder
	jmp	.label_826
.label_841:
	nop	
	mov	qword ptr [rsp + 0x10], r14
	jmp	.label_826
.label_817:
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x10], r14
	jmp	.label_826
.label_1835:
	mov	eax, dword ptr [r13]
	lea	rsi, [rsi]
	test	ax, 0x30f
	je	.label_840
	lea	rdi, [rdi]
	test	byte ptr [r12 + 0xb0], 0x10
	mov	rsp, rsp
	jne	.label_843
	lea	rdi, [rdi]
	mov	rdi, r12
	call	init_word_char
.label_843:
	mov	eax, dword ptr [r13]
.label_840:
	cmp	eax, 0x200
	nop	
	je	.label_839
	cmp	eax, 0x100
	nop	
	jne	.label_837
.label_839:
	cmp	dword ptr [r13], 0x100
	jne	.label_821
	mov	dword ptr [r13], 6
	mov	rbp, rbp
	xor	esi, esi
	xor	edx, edx
	mov	rdi, r12
	nop	
	mov	rcx, r13
	nop	
	call	create_token_tree
	lea	rdi, [rdi]
	mov	rbx, rax
	mov	eax, 9
	mov	rbp, rbp
	jmp	.label_827
.label_1840:
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 8]
	mov	dword ptr [rax], 5
	nop	
	jmp	.label_823
.label_818:
	mov	rax, qword ptr [rsp + 8]
	mov	dword ptr [rax], 0xc
	jmp	.label_823
.label_837:
	xor	esi, esi
	nop	
	xor	edx, edx
	mov	rdi, r12
	mov	rcx, r13
	call	create_token_tree
	test	rax, rax
	mov	rcx, qword ptr [rsp + 8]
	nop	
	jne	.label_830
	mov	rbp, rbp
	mov	dword ptr [rcx], 0xc
	jmp	.label_823
.label_821:
	mov	dword ptr [r13], 5
	xor	esi, esi
	lea	rdi, [rdi]
	xor	edx, edx
	lea	rdi, [rdi]
	mov	rdi, r12
	mov	rsp, rsp
	mov	rcx, r13
	mov	rbp, rbp
	call	create_token_tree
	mov	rbx, rax
	lea	rdi, [rdi]
	mov	eax, 0xa
.label_827:
	mov	r14, qword ptr [rsp + 8]
	mov	rbp, rbp
	mov	dword ptr [r13], eax
	xor	esi, esi
	nop	
	xor	edx, edx
	mov	rdi, r12
	lea	rsi, [rsi]
	mov	rcx, r13
	call	create_token_tree
	mov	rbp, rax
	mov	ecx, 0xa
	nop	
	mov	rdi, r12
	mov	rsi, rbx
	mov	rbp, rbp
	mov	rdx, rbp
	lea	rdi, [rdi]
	call	create_tree
	test	rbx, rbx
	lea	rsi, [rsi]
	je	.label_819
	lea	rsi, [rsi]
	test	rbp, rbp
	je	.label_819
	test	rax, rax
	je	.label_819
.label_830:
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x10], rax
	mov	rdi, r13
	mov	rsi, qword ptr [rsp + 0x20]
	mov	rdx, qword ptr [rsp + 0x18]
	lea	rsi, [rsi]
	call	fetch_token
	jmp	.label_826
.label_835:
	mov	rax, qword ptr [rsp + 8]
	mov	dword ptr [rax], 6
	mov	rbp, rbp
	jmp	.label_823
.label_819:
	mov	dword ptr [r14], 0xc
	jmp	.label_823
	nop	
	.section	.text
	.align	32
	#Procedure 0x40df70

	.globl create_token_tree
	.type create_token_tree, @function
create_token_tree:
	push	r15
	mov	rbp, rbp
	push	r14
	lea	rsi, [rsi]
	push	r12
	lea	rdi, [rdi]
	push	rbx
	lea	rsi, [rsi]
	push	rax
	mov	rsp, rsp
	mov	r15, rcx
	nop	
	mov	r14, rdx
	mov	r12, rsi
	mov	rsp, rsp
	mov	rbx, rdi
	cmp	dword ptr [rbx + 0x80], 0xf
	lea	rsi, [rsi]
	je	.label_844
.label_847:
	movsxd	rcx, dword ptr [rbx + 0x80]
	lea	eax, [rcx + 1]
	lea	rdi, [rdi]
	mov	dword ptr [rbx + 0x80], eax
	mov	rdx, qword ptr [rbx + 0x70]
	shl	rcx, 6
	lea	rax, [rdx + rcx + 8]
	mov	qword ptr [rdx + rcx + 8], 0
	nop	
	mov	qword ptr [rdx + rcx + 0x10], r12
	mov	qword ptr [rdx + rcx + 0x18], r14
	nop	
	movups	xmm0, xmmword ptr [r15]
	mov	rsp, rsp
	movups	xmmword ptr [rdx + rcx + 0x30], xmm0
	and	byte ptr [rdx + rcx + 0x3a], 0xf3
	mov	rsp, rsp
	xorps	xmm0, xmm0
	mov	rbp, rbp
	movups	xmmword ptr [rdx + rcx + 0x20], xmm0
	mov	qword ptr [rdx + rcx + 0x40], -1
	test	r12, r12
	lea	rsi, [rsi]
	je	.label_846
	lea	rdi, [rdi]
	mov	qword ptr [r12], rax
.label_846:
	test	r14, r14
	je	.label_845
	mov	rsp, rsp
	mov	qword ptr [r14], rax
.label_845:
	add	rsp, 8
	mov	rsp, rsp
	pop	rbx
	pop	r12
	pop	r14
	mov	rsp, rsp
	pop	r15
	ret	
.label_844:
	mov	edi, 0x3c8
	call	malloc
	mov	rcx, rax
	lea	rsi, [rsi]
	xor	eax, eax
	test	rcx, rcx
	mov	rsp, rsp
	je	.label_845
	mov	rax, qword ptr [rbx + 0x70]
	mov	rbp, rbp
	mov	qword ptr [rcx], rax
	mov	qword ptr [rbx + 0x70], rcx
	lea	rdi, [rdi]
	mov	dword ptr [rbx + 0x80], 0
	jmp	.label_847
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40e070

	.globl parse_sub_exp
	.type parse_sub_exp, @function
parse_sub_exp:
	push	rbp
	lea	rdi, [rdi]
	push	r15
	mov	rbp, rbp
	push	r14
	push	r13
	push	r12
	mov	rsp, rsp
	push	rbx
	mov	rsp, rsp
	sub	rsp, 0x18
	mov	rbp, rbp
	mov	r13, r9
	mov	qword ptr [rsp + 8], r8
	mov	rbp, rbp
	mov	rbp, rcx
	lea	rdi, [rdi]
	mov	rbx, rdx
	mov	r14, rsi
	mov	rsp, rsp
	mov	r15, rdi
	mov	rax, qword ptr [r14]
	mov	qword ptr [rsp + 0x10], rax
	lea	rdi, [rdi]
	mov	r12, qword ptr [r14 + 0x30]
	lea	rsi, [rsi]
	lea	rax, [r12 + 1]
	mov	rsp, rsp
	mov	qword ptr [r14 + 0x30], rax
	mov	rdx, rbp
	or	rdx, 0x800000
	lea	rdi, [rdi]
	mov	rdi, rbx
	mov	rsi, r15
	mov	rbp, rbp
	call	fetch_token
	nop	
	movzx	eax, byte ptr [rbx + 8]
	nop	
	xor	r8d, r8d
	nop	
	cmp	eax, 9
	je	.label_850
	mov	rdi, r15
	mov	rsp, rsp
	mov	rsi, r14
	mov	rdx, rbx
	lea	rsi, [rsi]
	mov	rcx, rbp
	mov	r8, qword ptr [rsp + 8]
	nop	
	mov	r9, r13
	call	parse_reg_exp
	mov	r8, rax
	xor	eax, eax
	cmp	dword ptr [r13], 0
	jne	.label_851
	movzx	eax, byte ptr [rbx + 8]
	mov	rbp, rbp
	cmp	eax, 9
	jne	.label_853
	mov	rbp, rbp
	xor	eax, eax
	cmp	dword ptr [r13], 0
	mov	rbp, rbp
	jne	.label_851
.label_850:
	cmp	r12, 8
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rsp + 0x10]
	mov	rsp, rsp
	ja	.label_852
	lea	rdi, [rdi]
	mov	eax, 1
	lea	rdi, [rdi]
	mov	cl, r12b
	lea	rdi, [rdi]
	shl	eax, cl
	mov	rsp, rsp
	cdqe	
	lea	rsi, [rsi]
	or	qword ptr [rdi + 0xa8], rax
.label_852:
	xor	edx, edx
	mov	ecx, 0x11
	nop	
	mov	rsi, r8
	call	create_tree
	mov	rbp, rbp
	test	rax, rax
	lea	rsi, [rsi]
	je	.label_848
	mov	qword ptr [rax + 0x28], r12
.label_851:
	mov	rsp, rsp
	add	rsp, 0x18
	lea	rdi, [rdi]
	pop	rbx
	lea	rdi, [rdi]
	pop	r12
	lea	rsi, [rsi]
	pop	r13
	lea	rsi, [rsi]
	pop	r14
	pop	r15
	pop	rbp
	mov	rbp, rbp
	ret	
.label_848:
	mov	rbp, rbp
	mov	dword ptr [r13], 0xc
	xor	eax, eax
	mov	rbp, rbp
	jmp	.label_851
.label_853:
	test	r8, r8
	je	.label_849
	mov	esi, OFFSET FLAT:free_tree
	xor	edx, edx
	mov	rdi, r8
	mov	rsp, rsp
	call	postorder
.label_849:
	mov	dword ptr [r13], 8
	xor	eax, eax
	lea	rsi, [rsi]
	jmp	.label_851
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40e1f0

	.globl parse_bracket_exp
	.type parse_bracket_exp, @function
parse_bracket_exp:
	push	rbp
	mov	rsp, rsp
	push	r15
	push	r14
	push	r13
	lea	rsi, [rsi]
	push	r12
	nop	
	push	rbx
	sub	rsp, 0xc8
	nop	
	mov	qword ptr [rsp + 0x28], r8
	mov	rsp, rsp
	mov	rbx, rcx
	mov	r12, rdx
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x18], rsi
	lea	rsi, [rsi]
	mov	r13, rdi
	mov	rsp, rsp
	mov	qword ptr [rsp + 0xb0], 0
	mov	qword ptr [rsp + 0xa8], 0
	mov	edi, 0x20
	mov	esi, 1
	lea	rdi, [rdi]
	call	rpl_calloc
	mov	r15, rax
	mov	edi, 0x50
	mov	rsp, rsp
	mov	esi, 1
	nop	
	call	rpl_calloc
	mov	r14, rax
	lea	rsi, [rsi]
	test	r15, r15
	je	.label_873
	test	r14, r14
	nop	
	je	.label_873
	lea	rsi, [rsi]
	mov	rdi, r12
	nop	
	mov	rsi, r13
	mov	rdx, rbx
	lea	rdi, [rdi]
	call	peek_token_bracket
	mov	ebp, eax
	movzx	eax, byte ptr [r12 + 8]
	lea	rsi, [rsi]
	cmp	eax, 0x19
	nop	
	je	.label_877
	cmp	eax, 2
	je	.label_879
	mov	rsp, rsp
	mov	dword ptr [rsp + 0x14], 0
	lea	rsi, [rsi]
	jmp	.label_862
.label_877:
	or	byte ptr [r14 + 0x20], 1
	test	bh, 1
	je	.label_882
	mov	rsp, rsp
	mov	esi, 0xa
	mov	rdi, r15
	call	bitset_set
.label_882:
	movsxd	rax, ebp
	lea	rdi, [rdi]
	add	qword ptr [r13 + 0x48], rax
	mov	rbp, rbp
	mov	rdi, r12
	mov	rsi, r13
	lea	rdi, [rdi]
	mov	rdx, rbx
	lea	rdi, [rdi]
	call	peek_token_bracket
	mov	rsp, rsp
	mov	ebp, eax
	lea	rsi, [rsi]
	movzx	eax, byte ptr [r12 + 8]
	lea	rdi, [rdi]
	cmp	eax, 2
	je	.label_879
	mov	al, 1
	lea	rdi, [rdi]
	mov	dword ptr [rsp + 0x14], eax
.label_862:
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x20], r14
	mov	eax, dword ptr [r12 + 8]
	movzx	ecx, al
	mov	rsp, rsp
	cmp	ecx, 0x15
	jne	.label_861
	and	eax, 0xffffff00
	or	eax, 1
	mov	dword ptr [r12 + 8], eax
.label_861:
	lea	rax, [rsp + 0x60]
	nop	
	mov	qword ptr [rsp + 0xa0], rax
	mov	rbp, rbp
	mov	dword ptr [rsp + 0x98], 3
	lea	rdi, [rsp + 0x98]
	lea	rsi, [rsi]
	mov	r9d, 1
	nop	
	mov	rsi, r13
	mov	rdx, r12
	lea	rsi, [rsi]
	mov	ecx, ebp
	mov	rbp, r13
	lea	rsi, [rsi]
	mov	r8, rbx
	lea	rdi, [rdi]
	call	parse_bracket_element
	test	eax, eax
	lea	rdi, [rdi]
	jne	.label_856
	nop	
	xor	eax, eax
	mov	qword ptr [rsp + 8], rax
	jmp	.label_857
	nop	word ptr cs:[rax + rax]
.label_885:
	mov	rsp, rsp
	cmp	eax, 2
	je	.label_881
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x28], r13
	lea	rax, [rsp + 0x60]
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0xa0], rax
	mov	dword ptr [rsp + 0x98], 3
	nop	
	xor	r9d, r9d
	lea	rdi, [rsp + 0x98]
	lea	rdi, [rdi]
	mov	rsi, rbp
	mov	rdx, r12
	mov	ecx, r14d
	mov	r8, rbx
	call	parse_bracket_element
	test	eax, eax
	mov	rbp, rbp
	je	.label_857
	mov	rbp, rbp
	jmp	.label_856
.label_859:
	lea	rax, [r13 + r13]
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp]
	lea	rsi, [rsi]
	lea	rsi, [rax*4 + 4]
	call	realloc
	mov	rbp, rbp
	test	rax, rax
	mov	rbp, rbp
	je	.label_864
	lea	rcx, [r13 + r13 + 1]
	mov	qword ptr [rsp + 8], rcx
	mov	qword ptr [rbp], rax
	jmp	.label_865
	nop	dword ptr [rax]
.label_857:
	mov	rdi, r12
	mov	rsi, rbp
	mov	rsp, rsp
	mov	rdx, rbx
	call	peek_token_bracket
	mov	r14d, eax
	mov	eax, dword ptr [rsp + 0x98]
	cmp	eax, 2
	lea	rsi, [rsi]
	je	.label_871
	nop	
	cmp	eax, 4
	mov	r13, qword ptr [rsp + 0x28]
	je	.label_874
	movzx	eax, byte ptr [r12 + 8]
	cmp	eax, 0x16
	je	.label_876
	cmp	eax, 2
	mov	rsp, rsp
	jne	.label_880
	mov	rsp, rsp
	jmp	.label_878
	nop	word ptr cs:[rax + rax]
.label_871:
	mov	r13, qword ptr [rsp + 0x28]
	jmp	.label_874
.label_876:
	lea	rdi, [rdi]
	movsxd	rax, r14d
	lea	rsi, [rsi]
	add	qword ptr [rbp + 0x48], rax
	mov	rsp, rsp
	lea	rdi, [rsp + 0x30]
	mov	rbp, rbp
	mov	rsi, rbp
	nop	
	mov	rdx, rbx
	mov	rbp, rbp
	call	peek_token_bracket
	mov	rbp, rbp
	movzx	ecx, byte ptr [rsp + 0x38]
	mov	rsp, rsp
	cmp	ecx, 0x15
	je	.label_887
	cmp	ecx, 2
	je	.label_891
	lea	rcx, [rsp + 0x40]
	mov	qword ptr [rsp + 0x90], rcx
	mov	rbp, rbp
	mov	dword ptr [rsp + 0x88], 3
	mov	rsp, rsp
	mov	r9d, 1
	lea	rdi, [rsp + 0x88]
	mov	rsp, rsp
	mov	rsi, rbp
	lea	rdx, [rsp + 0x30]
	mov	rsp, rsp
	mov	ecx, eax
	mov	rsp, rsp
	mov	r8, rbx
	mov	rbp, rbp
	call	parse_bracket_element
	test	eax, eax
	mov	rsp, rsp
	jne	.label_868
	mov	rdi, r12
	mov	rbp, rbp
	mov	rsi, rbp
	mov	rdx, rbx
	call	peek_token_bracket
	mov	rbp, rbp
	mov	r14d, eax
	mov	rax, qword ptr [rsp + 0x18]
	lea	rsi, [rsi]
	cmp	dword ptr [rax + 0xb4], 1
	mov	rdx, qword ptr [rsp + 0x20]
	mov	rsp, rsp
	jg	.label_872
	nop	
	xor	edx, edx
.label_872:
	mov	rbp, rbp
	mov	rdi, rbx
	mov	rsi, r15
	nop	
	lea	rcx, [rsp + 0xb0]
	mov	rsp, rsp
	lea	r8, [rsp + 0x98]
	lea	r9, [rsp + 0x88]
	mov	rbp, rbp
	call	build_range_exp
	mov	rsp, rsp
	jmp	.label_875
.label_887:
	lea	rdi, [rdi]
	mov	eax, r14d
	nop	
	neg	eax
	cdqe	
	add	qword ptr [rbp + 0x48], rax
	nop	
	mov	byte ptr [r12 + 8], 1
.label_880:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rsp + 0x98]
.label_874:
	lea	rdi, [rdi]
	mov	ecx, eax
	nop	
	cmp	eax, 4
	ja	.label_886
	lea	rdi, [rdi]
	jmp	qword ptr [word ptr [+ (rcx * 8) + label_888]]
.label_1846:
	nop	
	movzx	esi, byte ptr [rsp + 0xa0]
	mov	rbp, rbp
	mov	rdi, r15
	lea	rsi, [rsi]
	call	bitset_set
	jmp	.label_858
.label_1847:
	mov	qword ptr [rsp], rbp
	mov	qword ptr [rsp + 0x28], r13
	lea	rsi, [rsi]
	mov	rbp, qword ptr [rsp + 0x20]
	lea	rdi, [rdi]
	mov	r13, qword ptr [rbp + 0x28]
	cmp	qword ptr [rsp + 8], r13
	je	.label_859
.label_865:
	mov	eax, dword ptr [rsp + 0xa0]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp + 0x28]
	mov	rbp, rbp
	lea	rdx, [rcx + 1]
	mov	qword ptr [rbp + 0x28], rdx
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp]
	nop	
	mov	dword ptr [rdx + rcx*4], eax
	mov	r13, qword ptr [rsp + 0x28]
	mov	rbp, rbp
	mov	rbp, qword ptr [rsp]
	lea	rsi, [rsi]
	jmp	.label_858
.label_1848:
	mov	rsi, qword ptr [rsp + 0xa0]
	mov	rdi, r15
	lea	rdi, [rdi]
	call	build_equiv_class
	jmp	.label_875
.label_1849:
	mov	rsi, qword ptr [rsp + 0xa0]
	mov	rdi, r15
	lea	rdi, [rdi]
	call	build_collating_symbol
	nop	
	jmp	.label_875
.label_1850:
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp + 0x78]
	mov	rsp, rsp
	mov	r8, qword ptr [rsp + 0xa0]
	mov	rsi, r15
	mov	rbp, rbp
	mov	rdx, qword ptr [rsp + 0x20]
	lea	rcx, [rsp + 0xa8]
	mov	rsp, rsp
	mov	r9, rbx
	lea	rdi, [rdi]
	call	build_charclass
.label_875:
	mov	rsp, rsp
	mov	dword ptr [r13], eax
	lea	rsi, [rsi]
	test	eax, eax
	jne	.label_883
.label_858:
	mov	rsp, rsp
	movzx	eax, byte ptr [r12 + 8]
	mov	rsp, rsp
	cmp	eax, 0x15
	nop	
	jne	.label_885
	movsxd	rax, r14d
	add	qword ptr [rbp + 0x48], rax
	lea	rdi, [rdi]
	mov	eax, dword ptr [rsp + 0x14]
	mov	rsp, rsp
	test	al, al
	je	.label_889
	mov	rbp, rbp
	mov	rdi, r15
	call	bitset_not
.label_889:
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x28], r13
	mov	r12, qword ptr [rsp + 0x18]
	mov	rsp, rsp
	cmp	dword ptr [r12 + 0xb4], 2
	mov	r14, qword ptr [rsp + 0x20]
	jl	.label_869
	mov	rsi, qword ptr [r12 + 0x78]
	mov	rdi, r15
	call	bitset_mask
.label_869:
	mov	rbp, rbp
	cmp	qword ptr [r14 + 0x28], 0
	jne	.label_866
	lea	rsi, [rsi]
	cmp	qword ptr [r14 + 0x30], 0
	jne	.label_866
	cmp	qword ptr [r14 + 0x38], 0
	jne	.label_866
	cmp	qword ptr [r14 + 0x40], 0
	lea	rdi, [rdi]
	jne	.label_866
	nop	
	cmp	dword ptr [r12 + 0xb4], 2
	jl	.label_870
	cmp	qword ptr [r14 + 0x48], 0
	lea	rsi, [rsi]
	jne	.label_866
	test	byte ptr [r14 + 0x20], 1
	jne	.label_866
.label_870:
	mov	rbp, rbp
	mov	rdi, r14
	mov	rsp, rsp
	call	free_charset
	mov	byte ptr [rsp + 0xc0], 3
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0xb8], r15
	lea	rcx, [rsp + 0xb8]
	xor	esi, esi
	nop	
	xor	edx, edx
	mov	rdi, r12
	call	create_token_tree
	nop	
	jmp	.label_867
.label_866:
	mov	rsp, rsp
	or	byte ptr [r12 + 0xb0], 2
	mov	byte ptr [rsp + 0xc0], 6
	mov	qword ptr [rsp + 0xb8], r14
	xor	ebx, ebx
	mov	rsp, rsp
	lea	rcx, [rsp + 0xb8]
	xor	esi, esi
	nop	
	xor	edx, edx
	mov	rbp, rbp
	mov	rdi, r12
	call	create_token_tree
	mov	rbp, rax
	nop	
	test	rbp, rbp
	je	.label_863
	nop	
.label_884:
	mov	rbp, rbp
	cmp	qword ptr [r15 + rbx*8], 0
	mov	rbp, rbp
	jne	.label_854
	mov	rbp, rbp
	inc	rbx
	lea	rdi, [rdi]
	cmp	rbx, 3
	mov	rbp, rbp
	jle	.label_884
	nop	
	mov	rdi, r15
	mov	rsp, rsp
	call	free
	jmp	.label_860
.label_854:
	mov	byte ptr [rsp + 0xc0], 3
	mov	qword ptr [rsp + 0xb8], r15
	lea	rsi, [rsi]
	lea	rcx, [rsp + 0xb8]
	xor	esi, esi
	mov	rbp, rbp
	xor	edx, edx
	nop	
	mov	rdi, r12
	call	create_token_tree
	lea	rsi, [rsi]
	test	rax, rax
	lea	rsi, [rsi]
	je	.label_863
	nop	
	mov	ecx, 0xa
	lea	rsi, [rsi]
	mov	rdi, r12
	mov	rsi, rax
	mov	rdx, rbp
	call	create_tree
.label_867:
	mov	rbp, rax
	mov	rsp, rsp
	test	rbp, rbp
	jne	.label_860
	lea	rsi, [rsi]
	jmp	.label_863
.label_856:
	mov	rcx, qword ptr [rsp + 0x28]
	lea	rdi, [rdi]
	mov	dword ptr [rcx], eax
.label_883:
	mov	r14, qword ptr [rsp + 0x20]
	jmp	.label_855
.label_879:
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0x28]
	mov	dword ptr [rax], 2
	mov	rbp, rbp
	jmp	.label_855
.label_881:
	lea	rdi, [rdi]
	mov	dword ptr [r13], 7
	lea	rdi, [rdi]
	mov	r14, qword ptr [rsp + 0x20]
	lea	rdi, [rdi]
	jmp	.label_855
.label_873:
	mov	rdi, r15
	lea	rdi, [rdi]
	call	free
	mov	rdi, r14
	lea	rsi, [rsi]
	call	free
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 0x28]
	mov	dword ptr [rax], 0xc
	mov	rsp, rsp
	jmp	.label_890
.label_878:
	mov	dword ptr [r13], 7
	nop	
	mov	r14, qword ptr [rsp + 0x20]
	lea	rdi, [rdi]
	jmp	.label_855
.label_891:
	mov	dword ptr [r13], 7
	mov	r14, qword ptr [rsp + 0x20]
	mov	rsp, rsp
	jmp	.label_855
.label_868:
	lea	rdi, [rdi]
	mov	dword ptr [r13], eax
	mov	rsp, rsp
	mov	r14, qword ptr [rsp + 0x20]
	lea	rdi, [rdi]
	jmp	.label_855
.label_864:
	mov	r14, rbp
.label_863:
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 0x28]
	mov	rsp, rsp
	mov	dword ptr [rax], 0xc
.label_855:
	mov	rdi, r15
	mov	rsp, rsp
	call	free
	mov	rdi, r14
	nop	
	call	free_charset
.label_890:
	xor	ebp, ebp
.label_860:
	mov	rax, rbp
	nop	
	add	rsp, 0xc8
	pop	rbx
	pop	r12
	pop	r13
	mov	rsp, rsp
	pop	r14
	pop	r15
	mov	rbp, rbp
	pop	rbp
	ret	
.label_886:
	lea	rsi, [rsi]
	mov	edi, OFFSET FLAT:.str.5_1
	mov	esi, OFFSET FLAT:.str.6_1
	mov	edx, 0xced
	mov	rbp, rbp
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.parse_bracket_exp
	lea	rdi, [rdi]
	call	__assert_fail
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40e9b0

	.globl init_word_char
	.type init_word_char, @function
init_word_char:
	nop	
	push	r15
	mov	rbp, rbp
	push	r14
	lea	rsi, [rsi]
	push	rbx
	mov	rsp, rsp
	mov	r14, rdi
	mov	al, byte ptr [r14 + 0xb0]
	mov	rsp, rsp
	mov	cl, al
	mov	rsp, rsp
	or	cl, 0x10
	mov	byte ptr [r14 + 0xb0], cl
	mov	rbp, rbp
	xor	ebx, ebx
	mov	rbp, rbp
	test	al, 8
	mov	r15d, 0
	mov	rbp, rbp
	jne	.label_893
	movabs	rax, 0x3ff000000000000
	mov	rsp, rsp
	mov	qword ptr [r14 + 0xb8], rax
	movabs	rax, 0x7fffffe87fffffe
	mov	rbp, rbp
	mov	qword ptr [r14 + 0xc0], rax
	nop	
	mov	r15d, 2
	mov	ebx, 0x80
	test	byte ptr [r14 + 0xb0], 4
	je	.label_893
	mov	rsp, rsp
	xorps	xmm0, xmm0
	movups	xmmword ptr [r14 + 0xc8], xmm0
.label_894:
	pop	rbx
	pop	r14
	lea	rdi, [rdi]
	pop	r15
	ret	
.label_893:
	call	__ctype_b_loc
	nop	
	lea	rdx, [rbx + rbx]
	add	rdx, qword ptr [rax]
	nop	word ptr cs:[rax + rax]
.label_895:
	mov	rax, rdx
	mov	rsp, rsp
	xor	ecx, ecx
	nop	dword ptr [rax + rax]
.label_892:
	lea	esi, [rbx + rcx]
	cmp	esi, 0x5f
	lea	rdi, [rdi]
	je	.label_896
	nop	
	movzx	esi, word ptr [rax]
	and	esi, 8
	test	si, si
	mov	rbp, rbp
	je	.label_897
.label_896:
	lea	rdi, [rdi]
	mov	esi, 1
	shl	rsi, cl
	mov	rsp, rsp
	or	qword ptr [r14 + r15*8 + 0xb8], rsi
.label_897:
	inc	rcx
	lea	rdi, [rdi]
	add	rax, 2
	lea	rsi, [rsi]
	cmp	rcx, 0x40
	nop	
	jne	.label_892
	mov	rsp, rsp
	inc	r15
	add	rbx, 0x40
	lea	rdi, [rdi]
	add	rdx, 0x80
	lea	rsi, [rsi]
	cmp	r15d, 4
	jne	.label_895
	mov	rsp, rsp
	jmp	.label_894
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40eae0

	.globl build_charclass_op
	.type build_charclass_op, @function
build_charclass_op:
	push	rbp
	mov	rbp, rbp
	push	r15
	push	r14
	mov	rbp, rbp
	push	r13
	push	r12
	mov	rbp, rbp
	push	rbx
	sub	rsp, 0x28
	mov	r12, r9
	mov	dword ptr [rsp + 0xc], r8d
	mov	rbp, rcx
	mov	r14, rdx
	mov	rsp, rsp
	mov	r13, rsi
	lea	rdi, [rdi]
	mov	r15, rdi
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x20], 0
	mov	edi, 0x20
	mov	esi, 1
	lea	rsi, [rsi]
	call	rpl_calloc
	mov	rbp, rbp
	mov	rbx, rax
	test	rbx, rbx
	lea	rdi, [rdi]
	je	.label_908
	mov	qword ptr [rsp], r12
	nop	
	mov	edi, 0x50
	nop	
	mov	esi, 1
	call	rpl_calloc
	mov	r12, rax
	test	r12, r12
	je	.label_901
	lea	rdi, [rdi]
	mov	al, byte ptr [r12 + 0x20]
	and	al, 0xfe
	mov	ecx, dword ptr [rsp + 0xc]
	or	al, cl
	lea	rdi, [rdi]
	mov	byte ptr [r12 + 0x20], al
	nop	
	lea	rcx, [rsp + 0x20]
	xor	r9d, r9d
	mov	rbp, rbp
	mov	rdi, r13
	nop	
	mov	rsi, rbx
	mov	rdx, r12
	mov	r8, r14
	nop	
	call	build_charclass
	mov	rbp, rbp
	mov	r14d, eax
	mov	rbp, rbp
	test	r14d, r14d
	jne	.label_902
	mov	al, byte ptr [rbp]
	test	al, al
	je	.label_906
	lea	rdi, [rdi]
	inc	rbp
	nop	dword ptr [rax + rax]
.label_907:
	movsx	rsi, al
	mov	rsp, rsp
	mov	rdi, rbx
	mov	rsp, rsp
	call	bitset_set
	mov	al, byte ptr [rbp]
	inc	rbp
	lea	rdi, [rdi]
	test	al, al
	jne	.label_907
.label_906:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rsp + 0xc]
	test	al, al
	je	.label_904
	mov	rbp, rbp
	mov	rdi, rbx
	lea	rdi, [rdi]
	call	bitset_not
.label_904:
	cmp	dword ptr [r15 + 0xb4], 2
	jl	.label_909
	mov	rsp, rsp
	mov	rsi, qword ptr [r15 + 0x78]
	mov	rdi, rbx
	call	bitset_mask
.label_909:
	lea	rdi, [rdi]
	mov	byte ptr [rsp + 0x18], 3
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x10], rbx
	lea	rcx, [rsp + 0x10]
	mov	rsp, rsp
	xor	esi, esi
	mov	rbp, rbp
	xor	edx, edx
	nop	
	mov	rdi, r15
	call	create_token_tree
	mov	rbp, rax
	mov	rbp, rbp
	test	rbp, rbp
	lea	rsi, [rsi]
	je	.label_899
	lea	rdi, [rdi]
	cmp	dword ptr [r15 + 0xb4], 2
	jl	.label_900
	mov	byte ptr [rsp + 0x18], 6
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x10], r12
	or	byte ptr [r15 + 0xb0], 2
	nop	
	lea	rcx, [rsp + 0x10]
	lea	rdi, [rdi]
	xor	esi, esi
	lea	rdi, [rdi]
	xor	edx, edx
	mov	rdi, r15
	mov	rsp, rsp
	call	create_token_tree
	lea	rsi, [rsi]
	test	rax, rax
	je	.label_899
	mov	rsp, rsp
	mov	ecx, 0xa
	mov	rsp, rsp
	mov	rdi, r15
	mov	rsp, rsp
	mov	rsi, rbp
	mov	rsp, rsp
	mov	rdx, rax
	mov	rsp, rsp
	call	create_tree
	nop	
	mov	rbp, rax
	mov	rbp, rbp
	jmp	.label_898
.label_900:
	nop	
	mov	rdi, r12
	mov	rbp, rbp
	call	free_charset
	jmp	.label_898
.label_899:
	mov	rdi, rbx
	lea	rsi, [rsi]
	call	free
	lea	rsi, [rsi]
	mov	rdi, r12
	lea	rsi, [rsi]
	call	free_charset
	mov	rsp, rsp
	jmp	.label_903
.label_908:
	mov	dword ptr [r12], 0xc
	lea	rsi, [rsi]
	jmp	.label_905
.label_901:
	lea	rdi, [rdi]
	mov	rdi, rbx
	lea	rdi, [rdi]
	call	free
.label_903:
	mov	rax, qword ptr [rsp]
	mov	dword ptr [rax], 0xc
	jmp	.label_905
.label_902:
	mov	rdi, rbx
	call	free
	mov	rdi, r12
	call	free_charset
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp]
	mov	dword ptr [rax], r14d
.label_905:
	xor	ebp, ebp
.label_898:
	lea	rsi, [rsi]
	mov	rax, rbp
	nop	
	add	rsp, 0x28
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	nop	
	pop	r15
	pop	rbp
	lea	rsi, [rsi]
	ret	
	.section	.text
	.align	32
	#Procedure 0x40ed40

	.globl parse_dup_op
	.type parse_dup_op, @function
parse_dup_op:
	lea	rsi, [rsi]
	push	rbp
	mov	rsp, rsp
	push	r15
	push	r14
	nop	
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x38
	mov	r13, r9
	mov	rbp, r8
	lea	rdi, [rdi]
	mov	r15, rcx
	mov	qword ptr [rsp + 0x18], rdx
	mov	r14, rsi
	mov	r12, rdi
	mov	rsp, rsp
	mov	rcx, qword ptr [r14 + 0x48]
	movups	xmm0, xmmword ptr [r15]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	lea	rdi, [rdi]
	movzx	eax, byte ptr [r15 + 8]
	cmp	eax, 0x17
	mov	rbp, rbp
	jne	.label_921
	mov	qword ptr [rsp], rcx
	mov	rbp, rbp
	mov	rdi, r14
	mov	rbp, rbp
	mov	rsi, r15
	lea	rdi, [rdi]
	mov	rdx, rbp
	mov	qword ptr [rsp + 8], rbp
	call	fetch_number
	mov	rbx, rax
	cmp	rbx, -1
	jne	.label_917
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x10], r13
	mov	rbp, rbp
	movzx	eax, byte ptr [r15 + 8]
	cmp	eax, 1
	jne	.label_920
	movzx	eax, byte ptr [r15]
	xor	ebx, ebx
	mov	rsp, rsp
	cmp	eax, 0x2c
	je	.label_925
	jmp	.label_920
.label_921:
	nop	
	mov	qword ptr [rsp + 0x10], r13
	mov	rbp, rbp
	cmp	eax, 0x12
	mov	rbp, rbp
	sete	cl
	lea	rsi, [rsi]
	movzx	ebx, cl
	mov	rsp, rsp
	cmp	eax, 0x13
	mov	eax, 1
	nop	
	mov	r13, -1
	mov	rsp, rsp
	cmove	r13, rax
.label_927:
	mov	rbp, rbp
	mov	rdi, r15
	mov	rsi, r14
	mov	rsp, rsp
	mov	rdx, rbp
	lea	rdi, [rdi]
	call	fetch_token
	mov	rsp, rsp
	xor	r14d, r14d
	test	r12, r12
	je	.label_911
	mov	rax, r13
	xor	r14d, r14d
	or	rax, rbx
	lea	rdi, [rdi]
	je	.label_922
	lea	rdi, [rdi]
	test	rbx, rbx
	jg	.label_926
	mov	r15, qword ptr [rsp + 0x18]
.label_914:
	movzx	eax, byte ptr [r12 + 0x30]
	nop	
	cmp	eax, 0x11
	nop	
	jne	.label_929
	mov	rdx, qword ptr [r12 + 0x28]
	mov	esi, OFFSET FLAT:mark_opt_subexp
	mov	rdi, r12
	nop	
	call	postorder
.label_929:
	lea	rdi, [rdi]
	cmp	r13, -1
	sete	al
	movzx	ecx, al
	or	ecx, 0xa
	mov	rsp, rsp
	xor	edx, edx
	mov	rdi, r15
	mov	rsi, r12
	call	create_tree
	lea	rdi, [rdi]
	mov	rbp, rax
	test	rbp, rbp
	lea	rsi, [rsi]
	je	.label_912
	lea	rax, [rbx + 2]
	lea	rsi, [rsi]
	cmp	rax, r13
	jg	.label_923
	inc	rbx
	nop	word ptr cs:[rax + rax]
.label_919:
	lea	rsi, [rsi]
	mov	rdi, r12
	mov	rsi, r15
	nop	
	call	duplicate_tree
	mov	r12, rax
	lea	rdi, [rdi]
	mov	ecx, 0x10
	lea	rdi, [rdi]
	mov	rdi, r15
	mov	rsi, rbp
	mov	rsp, rsp
	mov	rdx, r12
	call	create_tree
	lea	rsi, [rsi]
	test	r12, r12
	je	.label_912
	mov	rsp, rsp
	test	rax, rax
	je	.label_912
	xor	edx, edx
	mov	ecx, 0xa
	mov	rdi, r15
	lea	rsi, [rsi]
	mov	rsi, rax
	call	create_tree
	mov	rbp, rax
	test	rbp, rbp
	nop	
	je	.label_912
	inc	rbx
	cmp	rbx, r13
	jl	.label_919
.label_923:
	test	r14, r14
	je	.label_910
	mov	ecx, 0x10
	mov	rsp, rsp
	mov	rdi, r15
	mov	rsi, r14
	lea	rdi, [rdi]
	mov	rdx, rbp
	call	create_tree
	nop	
	mov	r14, rax
	lea	rdi, [rdi]
	jmp	.label_911
.label_917:
	mov	qword ptr [rsp + 0x10], r13
	cmp	rbx, -2
	je	.label_915
.label_925:
	nop	
	movzx	eax, byte ptr [r15 + 8]
	cmp	eax, 0x18
	mov	r13, rbx
	lea	rsi, [rsi]
	je	.label_930
	cmp	eax, 1
	jne	.label_915
	movzx	eax, byte ptr [r15]
	cmp	eax, 0x2c
	jne	.label_915
	lea	rdi, [rdi]
	mov	rdi, r14
	mov	rsi, r15
	mov	rbp, rbp
	mov	rdx, qword ptr [rsp + 8]
	call	fetch_number
	lea	rsi, [rsi]
	mov	r13, rax
	cmp	r13, -2
	mov	rbp, rbp
	je	.label_915
.label_930:
	cmp	r13, -1
	je	.label_924
	lea	rsi, [rsi]
	cmp	rbx, r13
	jg	.label_920
.label_924:
	mov	rbp, rbp
	movzx	eax, byte ptr [r15 + 8]
	cmp	eax, 0x18
	jne	.label_920
	lea	rsi, [rsi]
	cmp	r13, -1
	lea	rsi, [rsi]
	mov	rax, r13
	cmove	rax, rbx
	lea	rsi, [rsi]
	cmp	rax, 0x8000
	mov	rbp, qword ptr [rsp + 8]
	jl	.label_927
	mov	rax, qword ptr [rsp + 0x10]
	mov	dword ptr [rax], 0xf
	nop	
	xor	r14d, r14d
	nop	
	jmp	.label_911
.label_920:
	mov	rax, qword ptr [rsp + 0x10]
	mov	dword ptr [rax], 0xa
	xor	r14d, r14d
	jmp	.label_911
.label_915:
	mov	rax, qword ptr [rsp + 8]
	test	eax, 0x200000
	mov	rbp, rbp
	je	.label_918
	mov	rax, qword ptr [rsp]
	mov	qword ptr [r14 + 0x48], rax
	movaps	xmm0, xmmword ptr [rsp + 0x20]
	movups	xmmword ptr [r15], xmm0
	mov	byte ptr [r15 + 8], 1
	lea	rdi, [rdi]
	mov	r14, r12
	nop	
	jmp	.label_911
.label_910:
	lea	rdi, [rdi]
	mov	r14, rbp
	jmp	.label_911
.label_922:
	nop	
	mov	esi, OFFSET FLAT:free_tree
	xor	edx, edx
	mov	rdi, r12
	call	postorder
	jmp	.label_911
.label_926:
	mov	ebp, 1
	lea	rdi, [rdi]
	mov	r14, r12
	nop	
	cmp	rbx, 2
	lea	rsi, [rsi]
	jge	.label_913
	mov	r15, qword ptr [rsp + 0x18]
	mov	rbp, rbp
	jmp	.label_916
.label_913:
	nop	
	mov	r15, qword ptr [rsp + 0x18]
.label_928:
	mov	rdi, r12
	mov	rsi, r15
	call	duplicate_tree
	nop	
	mov	r12, rax
	mov	ecx, 0x10
	mov	rdi, r15
	lea	rdi, [rdi]
	mov	rsi, r14
	mov	rbp, rbp
	mov	rdx, r12
	mov	rbp, rbp
	call	create_tree
	mov	rsp, rsp
	mov	r14, rax
	lea	rsi, [rsi]
	test	r12, r12
	nop	
	je	.label_912
	nop	
	test	r14, r14
	je	.label_912
	nop	
	inc	rbp
	cmp	rbp, rbx
	lea	rdi, [rdi]
	jl	.label_928
.label_916:
	cmp	rbx, r13
	je	.label_911
	mov	rdi, r12
	mov	rsi, r15
	lea	rdi, [rdi]
	call	duplicate_tree
	mov	r12, rax
	lea	rsi, [rsi]
	test	r12, r12
	mov	rbp, rbp
	jne	.label_914
.label_912:
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 0x10]
	nop	
	mov	dword ptr [rax], 0xc
	xor	r14d, r14d
.label_911:
	lea	rdi, [rdi]
	mov	rax, r14
	mov	rsp, rsp
	add	rsp, 0x38
	lea	rsi, [rsi]
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	lea	rsi, [rsi]
	pop	r15
	mov	rbp, rbp
	pop	rbp
	ret	
.label_918:
	movzx	eax, byte ptr [r15 + 8]
	mov	rbp, rbp
	cmp	eax, 2
	nop	
	setne	al
	lea	rdi, [rdi]
	movzx	eax, al
	nop	
	add	eax, 9
	mov	rcx, qword ptr [rsp + 0x10]
	mov	dword ptr [rcx], eax
	xor	r14d, r14d
	jmp	.label_911
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40f180

	.globl peek_token_bracket
	.type peek_token_bracket, @function
peek_token_bracket:
	mov	rax, qword ptr [rsi + 0x48]
	cmp	qword ptr [rsi + 0x68], rax
	lea	rsi, [rsi]
	jle	.label_931
	mov	rcx, qword ptr [rsi + 8]
	mov	r8b, byte ptr [rcx + rax]
	mov	byte ptr [rdi], r8b
	cmp	dword ptr [rsi + 0x90], 2
	mov	rsp, rsp
	jl	.label_937
	mov	rsp, rsp
	mov	rax, qword ptr [rsi + 0x48]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rsi + 0x30]
	je	.label_937
	mov	rcx, qword ptr [rsi + 0x10]
	nop	
	cmp	dword ptr [rcx + rax*4], -1
	lea	rdi, [rdi]
	je	.label_936
.label_937:
	movzx	ecx, r8b
	mov	rsp, rsp
	test	dl, 1
	mov	rsp, rsp
	je	.label_934
	cmp	ecx, 0x5c
	lea	rsi, [rsi]
	jne	.label_934
	mov	rax, qword ptr [rsi + 0x48]
	inc	rax
	cmp	rax, qword ptr [rsi + 0x58]
	lea	rsi, [rsi]
	jge	.label_934
	lea	rdi, [rdi]
	mov	qword ptr [rsi + 0x48], rax
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rsi + 8]
	mov	al, byte ptr [rcx + rax]
	mov	byte ptr [rdi], al
	lea	rsi, [rsi]
	jmp	.label_936
.label_931:
	mov	byte ptr [rdi + 8], 2
	mov	rsp, rsp
	xor	eax, eax
	ret	
.label_934:
	mov	rbp, rbp
	cmp	ecx, 0x5b
	jne	.label_938
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsi + 0x48]
	inc	rax
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rsi + 0x58]
	lea	rsi, [rsi]
	jge	.label_939
	mov	rcx, qword ptr [rsi + 8]
	nop	
	mov	al, byte ptr [rcx + rax]
	lea	rdi, [rdi]
	jmp	.label_941
.label_938:
	cmp	ecx, 0x5e
	nop	
	je	.label_943
	lea	rdi, [rdi]
	cmp	ecx, 0x5d
	je	.label_933
	lea	rdi, [rdi]
	cmp	ecx, 0x2d
	jne	.label_936
	mov	byte ptr [rdi + 8], 0x16
	mov	eax, 1
	lea	rsi, [rsi]
	ret	
.label_936:
	mov	byte ptr [rdi + 8], 1
	mov	rbp, rbp
	mov	eax, 1
	lea	rdi, [rdi]
	ret	
.label_939:
	mov	rbp, rbp
	xor	eax, eax
.label_941:
	mov	byte ptr [rdi], al
	nop	
	movzx	eax, al
	nop	
	cmp	eax, 0x3d
	je	.label_942
	cmp	eax, 0x3a
	je	.label_932
	lea	rdi, [rdi]
	cmp	eax, 0x2e
	jne	.label_935
	mov	byte ptr [rdi + 8], 0x1a
	mov	rsp, rsp
	mov	eax, 2
	mov	rbp, rbp
	ret	
.label_933:
	mov	byte ptr [rdi + 8], 0x15
	mov	eax, 1
	ret	
.label_932:
	mov	rsp, rsp
	test	dl, 4
	mov	rsp, rsp
	jne	.label_940
.label_935:
	nop	
	mov	byte ptr [rdi + 8], 1
	mov	rbp, rbp
	mov	byte ptr [rdi], r8b
	mov	eax, 1
	ret	
.label_943:
	lea	rdi, [rdi]
	mov	byte ptr [rdi + 8], 0x19
	mov	rsp, rsp
	mov	eax, 1
	ret	
.label_942:
	mov	byte ptr [rdi + 8], 0x1c
	mov	rsp, rsp
	mov	eax, 2
	mov	rbp, rbp
	ret	
.label_940:
	mov	byte ptr [rdi + 8], 0x1e
	lea	rdi, [rdi]
	mov	eax, 2
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40f300

	.globl bitset_set
	.type bitset_set, @function
bitset_set:
	mov	rsp, rsp
	mov	eax, 1
	mov	cl, sil
	shl	rax, cl
	nop	
	mov	rcx, rsi
	sar	rcx, 0x3f
	nop	
	shr	rcx, 0x3a
	nop	
	add	rcx, rsi
	mov	rsp, rsp
	sar	rcx, 6
	mov	rsp, rsp
	or	qword ptr [rdi + rcx*8], rax
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x40f330

	.globl parse_bracket_element
	.type parse_bracket_element, @function
parse_bracket_element:
	push	rbp
	push	r15
	push	r14
	push	r13
	lea	rsi, [rsi]
	push	r12
	push	rbx
	nop	
	sub	rsp, 0x28
	mov	dword ptr [rsp + 0x14], r9d
	mov	qword ptr [rsp + 8], r8
	mov	ebp, ecx
	mov	r14, rdx
	mov	rbx, rsi
	mov	r15, rdi
	nop	
	mov	r13, qword ptr [rbx + 0x48]
	nop	
	mov	rdi, rbx
	mov	rsi, r13
	call	re_string_char_size_at
	mov	r12d, eax
	cmp	r12d, 2
	lea	rsi, [rsi]
	jl	.label_945
	mov	dword ptr [r15], 1
	mov	rsi, qword ptr [rbx + 0x48]
	lea	rdi, [rdi]
	mov	rdi, rbx
	call	re_string_wchar_at
	lea	rsi, [rsi]
	mov	dword ptr [r15 + 8], eax
	movsxd	rax, r12d
	mov	rbp, rbp
	add	qword ptr [rbx + 0x48], rax
	lea	rdi, [rdi]
	jmp	.label_946
.label_945:
	movsxd	rax, ebp
	nop	
	add	r13, rax
	mov	qword ptr [rbx + 0x48], r13
	movzx	eax, byte ptr [r14 + 8]
	add	eax, -0x16
	cmp	eax, 8
	ja	.label_944
	jmp	qword ptr [word ptr [+ (rax * 8) + label_948]]
.label_1913:
	mov	rbp, rbp
	mov	rdi, r15
	mov	rsi, rbx
	mov	rdx, r14
	mov	rbp, rbp
	add	rsp, 0x28
	pop	rbx
	pop	r12
	mov	rsp, rsp
	pop	r13
	mov	rbp, rbp
	pop	r14
	pop	r15
	pop	rbp
	jmp	parse_bracket_symbol
.label_1912:
	mov	rbp, rbp
	mov	eax, dword ptr [rsp + 0x14]
	lea	rsi, [rsi]
	test	al, al
	mov	rsp, rsp
	jne	.label_944
	nop	
	lea	rdi, [rsp + 0x18]
	mov	rsi, rbx
	mov	rdx, qword ptr [rsp + 8]
	lea	rsi, [rsi]
	call	peek_token_bracket
	movzx	ecx, byte ptr [rsp + 0x20]
	mov	eax, 0xb
	nop	
	cmp	ecx, 0x15
	jne	.label_947
.label_944:
	mov	dword ptr [r15], 0
	lea	rsi, [rsi]
	mov	al, byte ptr [r14]
	mov	byte ptr [r15 + 8], al
.label_946:
	xor	eax, eax
.label_947:
	lea	rdi, [rdi]
	add	rsp, 0x28
	pop	rbx
	pop	r12
	pop	r13
	nop	
	pop	r14
	pop	r15
	nop	
	pop	rbp
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40f450

	.globl build_range_exp
	.type build_range_exp, @function
build_range_exp:
	mov	rbp, rbp
	push	rbp
	lea	rsi, [rsi]
	push	r15
	push	r14
	push	r13
	nop	
	push	r12
	push	rbx
	mov	rbp, rbp
	sub	rsp, 0x18
	lea	rsi, [rsi]
	mov	rbx, r9
	mov	rbp, rbp
	mov	rbp, r8
	mov	r15, rcx
	mov	r14, rdx
	mov	r13, rsi
	mov	rsp, rsp
	mov	r12, rdi
	mov	ecx, dword ptr [rbp]
	mov	eax, 0xb
	cmp	ecx, 2
	lea	rdi, [rdi]
	je	.label_951
	cmp	ecx, 4
	je	.label_951
	mov	rsp, rsp
	mov	edx, dword ptr [rbx]
	cmp	edx, 2
	je	.label_951
	nop	
	cmp	edx, 4
	je	.label_951
	mov	rsp, rsp
	cmp	ecx, 3
	lea	rdi, [rdi]
	jne	.label_958
	mov	rdi, qword ptr [rbp + 8]
	lea	rsi, [rsi]
	call	strlen
	mov	rcx, rax
	lea	rdi, [rdi]
	mov	eax, 3
	mov	rbp, rbp
	cmp	rcx, 1
	ja	.label_951
.label_958:
	cmp	dword ptr [rbx], 3
	jne	.label_968
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbx + 8]
	mov	rbp, rbp
	call	strlen
	mov	rcx, rax
	lea	rdi, [rdi]
	mov	eax, 3
	lea	rdi, [rdi]
	cmp	rcx, 1
	mov	rsp, rsp
	ja	.label_951
.label_968:
	mov	eax, dword ptr [rbp]
	cmp	eax, 3
	je	.label_953
	lea	rdi, [rdi]
	test	eax, eax
	jne	.label_955
	mov	al, byte ptr [rbp + 8]
	jmp	.label_956
.label_953:
	mov	rax, qword ptr [rbp + 8]
	lea	rsi, [rsi]
	mov	al, byte ptr [rax]
	jmp	.label_956
.label_955:
	nop	
	xor	eax, eax
.label_956:
	mov	ecx, dword ptr [rbx]
	cmp	ecx, 3
	mov	rbp, rbp
	je	.label_963
	lea	rdi, [rdi]
	test	ecx, ecx
	mov	rbp, rbp
	jne	.label_960
	nop	
	mov	dl, byte ptr [rbx + 8]
	mov	rsp, rsp
	jmp	.label_962
.label_963:
	mov	rbp, rbp
	mov	rcx, qword ptr [rbx + 8]
	mov	dl, byte ptr [rcx]
	mov	rsp, rsp
	jmp	.label_962
.label_960:
	xor	edx, edx
.label_962:
	mov	ecx, dword ptr [rbp]
	cmp	ecx, 3
	mov	rsp, rsp
	je	.label_967
	mov	rsp, rsp
	test	ecx, ecx
	jne	.label_969
.label_967:
	movzx	edi, al
	mov	rsi, r14
	mov	ebp, edx
	call	parse_byte
	mov	edx, ebp
	mov	ebp, eax
	jmp	.label_950
.label_969:
	mov	ebp, dword ptr [rbp + 8]
.label_950:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbx]
	cmp	eax, 3
	je	.label_952
	mov	rsp, rsp
	test	eax, eax
	mov	rbp, rbp
	jne	.label_954
.label_952:
	lea	rsi, [rsi]
	movzx	edi, dl
	mov	rsi, r14
	mov	rbp, rbp
	call	parse_byte
	lea	rdi, [rdi]
	mov	ebx, eax
	jmp	.label_957
.label_954:
	lea	rsi, [rsi]
	mov	ebx, dword ptr [rbx + 8]
.label_957:
	cmp	ebp, -1
	mov	eax, 3
	mov	rbp, rbp
	je	.label_951
	lea	rsi, [rsi]
	cmp	ebx, -1
	je	.label_951
	lea	rdi, [rdi]
	test	r12d, 0x10000
	je	.label_965
	lea	rdi, [rdi]
	cmp	ebp, ebx
	lea	rdi, [rdi]
	mov	eax, 0xb
	mov	rbp, rbp
	ja	.label_951
.label_965:
	test	r14, r14
	mov	rbp, rbp
	je	.label_970
	mov	rbp, rbp
	mov	r12, qword ptr [r14 + 0x40]
	cmp	qword ptr [r15], r12
	lea	rdi, [rdi]
	je	.label_949
.label_964:
	nop	
	mov	rax, qword ptr [r14 + 8]
	mov	rcx, qword ptr [r14 + 0x40]
	mov	dword ptr [rax + rcx*4], ebp
	mov	rax, qword ptr [r14 + 0x40]
	lea	rcx, [rax + 1]
	mov	rsp, rsp
	mov	qword ptr [r14 + 0x40], rcx
	mov	rcx, qword ptr [r14 + 0x10]
	nop	
	mov	dword ptr [rcx + rax*4], ebx
.label_970:
	mov	rsp, rsp
	mov	r14d, ebx
	mov	ebp, ebp
	xor	ebx, ebx
	nop	
.label_966:
	mov	rsp, rsp
	cmp	rbp, rbx
	lea	rdi, [rdi]
	ja	.label_959
	cmp	rbx, r14
	mov	rbp, rbp
	ja	.label_959
	mov	rsp, rsp
	mov	rdi, r13
	mov	rsi, rbx
	call	bitset_set
.label_959:
	mov	rbp, rbp
	inc	rbx
	xor	eax, eax
	mov	rbp, rbp
	cmp	rbx, 0x100
	mov	rbp, rbp
	jne	.label_966
.label_951:
	nop	
	add	rsp, 0x18
	mov	rsp, rsp
	pop	rbx
	mov	rsp, rsp
	pop	r12
	nop	
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_949:
	mov	rbp, rbp
	lea	rax, [r12 + r12]
	lea	rdi, [rdi]
	mov	rdi, qword ptr [r14 + 8]
	lea	rdi, [rdi]
	lea	rsi, [rax*4 + 4]
	mov	qword ptr [rsp + 0x10], rsi
	nop	
	call	realloc
	mov	qword ptr [rsp + 8], rax
	mov	rdi, qword ptr [r14 + 0x10]
	mov	rsi, qword ptr [rsp + 0x10]
	call	realloc
	nop	
	mov	rdi, qword ptr [rsp + 8]
	nop	
	test	rdi, rdi
	je	.label_961
	test	rax, rax
	mov	rbp, rbp
	je	.label_961
	nop	
	lea	rcx, [r12 + r12 + 1]
	lea	rdi, [rdi]
	mov	qword ptr [r14 + 8], rdi
	mov	qword ptr [r14 + 0x10], rax
	mov	qword ptr [r15], rcx
	mov	rsp, rsp
	jmp	.label_964
.label_961:
	lea	rsi, [rsi]
	mov	rbx, rax
	nop	
	call	free
	mov	rdi, rbx
	lea	rsi, [rsi]
	call	free
	nop	
	mov	eax, 0xc
	mov	rbp, rbp
	jmp	.label_951
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40f720

	.globl build_equiv_class
	.type build_equiv_class, @function
build_equiv_class:
	push	r14
	push	rbx
	push	rax
	mov	rbx, rsi
	mov	r14, rdi
	lea	rsi, [rsi]
	mov	rdi, rbx
	call	strlen
	mov	rcx, rax
	nop	
	mov	eax, 3
	cmp	rcx, 1
	jne	.label_971
	movzx	esi, byte ptr [rbx]
	mov	rdi, r14
	mov	rsp, rsp
	call	bitset_set
	lea	rdi, [rdi]
	xor	eax, eax
.label_971:
	add	rsp, 8
	mov	rbp, rbp
	pop	rbx
	pop	r14
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40f770

	.globl build_collating_symbol
	.type build_collating_symbol, @function
build_collating_symbol:
	mov	rsp, rsp
	push	r14
	mov	rsp, rsp
	push	rbx
	lea	rsi, [rsi]
	push	rax
	lea	rsi, [rsi]
	mov	rbx, rsi
	mov	r14, rdi
	mov	rdi, rbx
	mov	rbp, rbp
	call	strlen
	mov	rsp, rsp
	mov	rcx, rax
	mov	rsp, rsp
	mov	eax, 3
	cmp	rcx, 1
	jne	.label_972
	movzx	esi, byte ptr [rbx]
	mov	rdi, r14
	nop	
	call	bitset_set
	xor	eax, eax
.label_972:
	nop	
	add	rsp, 8
	pop	rbx
	pop	r14
	nop	
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40f7c0

	.globl build_charclass
	.type build_charclass, @function
build_charclass:
	lea	rdi, [rdi]
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	rbp, rbp
	mov	r12, r8
	mov	r13, rcx
	nop	
	mov	rbx, rdx
	mov	r15, rsi
	lea	rdi, [rdi]
	mov	r14, rdi
	mov	rsp, rsp
	test	r9d, 0x400000
	je	.label_981
	nop	
	mov	esi, OFFSET FLAT:.str.7_1
	lea	rsi, [rsi]
	mov	rdi, r12
	call	strcmp
	nop	
	test	eax, eax
	nop	
	je	.label_973
	mov	esi, OFFSET FLAT:.str.8_1
	mov	rsp, rsp
	mov	rdi, r12
	call	strcmp
	test	eax, eax
	jne	.label_981
.label_973:
	nop	
	mov	r12d, OFFSET FLAT:.str.9_0
.label_981:
	nop	
	mov	rbp, qword ptr [rbx + 0x48]
	nop	
	cmp	qword ptr [r13], rbp
	je	.label_986
.label_1031:
	lea	rdi, [rdi]
	mov	rdi, r12
	call	wctype
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbx + 0x48]
	mov	rsp, rsp
	lea	rdx, [rcx + 1]
	mov	qword ptr [rbx + 0x48], rdx
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbx + 0x18]
	lea	rdi, [rdi]
	mov	qword ptr [rdx + rcx*8], rax
	mov	esi, OFFSET FLAT:.str.1_3
	nop	
	mov	rdi, r12
	call	strcmp
	mov	rbp, rbp
	test	eax, eax
	mov	rsp, rsp
	je	.label_1009
	lea	rdi, [rdi]
	mov	esi, OFFSET FLAT:.str.10_2
	mov	rbp, rbp
	mov	rdi, r12
	nop	
	call	strcmp
	test	eax, eax
	nop	
	je	.label_1012
	lea	rdi, [rdi]
	mov	esi, OFFSET FLAT:.str.8_1
	mov	rdi, r12
	call	strcmp
	test	eax, eax
	mov	rbp, rbp
	je	.label_1016
	mov	esi, OFFSET FLAT:.str.3_1
	nop	
	mov	rdi, r12
	call	strcmp
	test	eax, eax
	mov	rbp, rbp
	je	.label_1019
	mov	esi, OFFSET FLAT:.str.9_0
	nop	
	mov	rdi, r12
	lea	rdi, [rdi]
	call	strcmp
	test	eax, eax
	je	.label_1028
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.11_2
	lea	rdi, [rdi]
	mov	rdi, r12
	mov	rbp, rbp
	call	strcmp
	test	eax, eax
	je	.label_1035
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.12_2
	mov	rdi, r12
	call	strcmp
	lea	rsi, [rsi]
	test	eax, eax
	je	.label_979
	mov	esi, OFFSET FLAT:.str.7_1
	mov	rsp, rsp
	mov	rdi, r12
	call	strcmp
	test	eax, eax
	je	.label_987
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.13_1
	lea	rdi, [rdi]
	mov	rdi, r12
	call	strcmp
	lea	rsi, [rsi]
	test	eax, eax
	lea	rsi, [rsi]
	je	.label_995
	lea	rsi, [rsi]
	mov	esi, OFFSET FLAT:.str.14_2
	mov	rdi, r12
	call	strcmp
	lea	rsi, [rsi]
	test	eax, eax
	je	.label_1000
	mov	rbp, rbp
	mov	esi, OFFSET FLAT:.str.15_2
	mov	rdi, r12
	call	strcmp
	nop	
	test	eax, eax
	mov	rsp, rsp
	je	.label_1026
	lea	rsi, [rsi]
	mov	esi, OFFSET FLAT:.str.16_1
	lea	rdi, [rdi]
	mov	rdi, r12
	call	strcmp
	mov	ecx, eax
	nop	
	mov	eax, 4
	lea	rdi, [rdi]
	test	ecx, ecx
	jne	.label_974
	lea	rdi, [rdi]
	call	__ctype_b_loc
	mov	r12, rax
	mov	rbp, rbp
	xor	ebx, ebx
	test	r14, r14
	mov	rsp, rsp
	jne	.label_998
.label_994:
	mov	rax, qword ptr [r12]
	mov	rbp, rbp
	test	byte ptr [rax + rbx*2 + 1], 0x10
	je	.label_1027
	lea	rdi, [rdi]
	mov	rdi, r15
	mov	rsi, rbx
	lea	rsi, [rsi]
	call	bitset_set
.label_1027:
	inc	rbx
	xor	eax, eax
	cmp	rbx, 0x100
	jne	.label_994
	jmp	.label_974
.label_1009:
	call	__ctype_b_loc
	mov	r12, rax
	lea	rsi, [rsi]
	xor	ebx, ebx
	test	r14, r14
	mov	rsp, rsp
	jne	.label_975
	nop	word ptr cs:[rax + rax]
.label_993:
	lea	rsi, [rsi]
	mov	rax, qword ptr [r12]
	mov	rbp, rbp
	test	byte ptr [rax + rbx*2], 8
	je	.label_1015
	mov	rdi, r15
	mov	rsp, rsp
	mov	rsi, rbx
	lea	rdi, [rdi]
	call	bitset_set
.label_1015:
	inc	rbx
	xor	eax, eax
	mov	rbp, rbp
	cmp	rbx, 0x100
	jne	.label_993
	mov	rsp, rsp
	jmp	.label_974
	nop	word ptr [rax + rax]
.label_975:
	nop	
	mov	rax, qword ptr [r12]
	test	byte ptr [rax + rbx*2], 8
	je	.label_1001
	movzx	esi, byte ptr [r14 + rbx]
	mov	rdi, r15
	lea	rsi, [rsi]
	call	bitset_set
.label_1001:
	inc	rbx
	mov	rbp, rbp
	xor	eax, eax
	cmp	rbx, 0x100
	jne	.label_975
	jmp	.label_974
.label_1012:
	call	__ctype_b_loc
	mov	r12, rax
	lea	rsi, [rsi]
	xor	ebx, ebx
	lea	rsi, [rsi]
	test	r14, r14
	mov	rbp, rbp
	jne	.label_1010
	nop	dword ptr [rax]
.label_1022:
	mov	rax, qword ptr [r12]
	test	byte ptr [rax + rbx*2], 2
	je	.label_985
	mov	rdi, r15
	mov	rsi, rbx
	lea	rsi, [rsi]
	call	bitset_set
.label_985:
	inc	rbx
	xor	eax, eax
	mov	rsp, rsp
	cmp	rbx, 0x100
	jne	.label_1022
	nop	
	jmp	.label_974
	nop	
.label_1010:
	lea	rdi, [rdi]
	mov	rax, qword ptr [r12]
	test	byte ptr [rax + rbx*2], 2
	je	.label_1030
	lea	rdi, [rdi]
	movzx	esi, byte ptr [r14 + rbx]
	mov	rsp, rsp
	mov	rdi, r15
	call	bitset_set
.label_1030:
	lea	rsi, [rsi]
	inc	rbx
	lea	rsi, [rsi]
	xor	eax, eax
	nop	
	cmp	rbx, 0x100
	jne	.label_1010
	jmp	.label_974
.label_1016:
	nop	
	call	__ctype_b_loc
	nop	
	mov	r12, rax
	lea	rdi, [rdi]
	xor	ebx, ebx
	lea	rdi, [rdi]
	test	r14, r14
	jne	.label_984
	nop	word ptr cs:[rax + rax]
.label_999:
	mov	rax, qword ptr [r12]
	test	byte ptr [rax + rbx*2 + 1], 2
	lea	rsi, [rsi]
	je	.label_992
	lea	rsi, [rsi]
	mov	rdi, r15
	mov	rsi, rbx
	nop	
	call	bitset_set
.label_992:
	inc	rbx
	xor	eax, eax
	lea	rsi, [rsi]
	cmp	rbx, 0x100
	nop	
	jne	.label_999
	lea	rsi, [rsi]
	jmp	.label_974
	nop	word ptr [rax + rax]
.label_984:
	mov	rbp, rbp
	mov	rax, qword ptr [r12]
	nop	
	test	byte ptr [rax + rbx*2 + 1], 2
	nop	
	je	.label_1007
	nop	
	movzx	esi, byte ptr [r14 + rbx]
	mov	rdi, r15
	mov	rbp, rbp
	call	bitset_set
.label_1007:
	mov	rbp, rbp
	inc	rbx
	xor	eax, eax
	mov	rbp, rbp
	cmp	rbx, 0x100
	jne	.label_984
	jmp	.label_974
.label_1019:
	call	__ctype_b_loc
	mov	r12, rax
	lea	rsi, [rsi]
	xor	ebx, ebx
	nop	
	test	r14, r14
	mov	rsp, rsp
	jne	.label_989
.label_1033:
	mov	rsp, rsp
	mov	rax, qword ptr [r12]
	mov	rbp, rbp
	test	byte ptr [rax + rbx*2 + 1], 0x20
	lea	rdi, [rdi]
	je	.label_1025
	mov	rdi, r15
	mov	rsi, rbx
	lea	rsi, [rsi]
	call	bitset_set
.label_1025:
	lea	rsi, [rsi]
	inc	rbx
	mov	rsp, rsp
	xor	eax, eax
	lea	rsi, [rsi]
	cmp	rbx, 0x100
	mov	rsp, rsp
	jne	.label_1033
	jmp	.label_974
.label_989:
	mov	rax, qword ptr [r12]
	mov	rbp, rbp
	test	byte ptr [rax + rbx*2 + 1], 0x20
	je	.label_1018
	mov	rbp, rbp
	movzx	esi, byte ptr [r14 + rbx]
	mov	rsp, rsp
	mov	rdi, r15
	nop	
	call	bitset_set
.label_1018:
	lea	rdi, [rdi]
	inc	rbx
	lea	rdi, [rdi]
	xor	eax, eax
	lea	rdi, [rdi]
	cmp	rbx, 0x100
	mov	rbp, rbp
	jne	.label_989
	jmp	.label_974
.label_986:
	mov	rbp, rbp
	lea	rax, [rbp + rbp]
	mov	rdi, qword ptr [rbx + 0x18]
	lea	rsi, [rax*8 + 8]
	call	realloc
	mov	rsp, rsp
	mov	rcx, rax
	mov	eax, 0xc
	nop	
	test	rcx, rcx
	je	.label_974
	lea	rdi, [rdi]
	lea	rax, [rbp + rbp + 1]
	mov	qword ptr [rbx + 0x18], rcx
	mov	rbp, rbp
	mov	qword ptr [r13], rax
	lea	rdi, [rdi]
	jmp	.label_1031
.label_1028:
	nop	
	call	__ctype_b_loc
	mov	r12, rax
	xor	ebx, ebx
	nop	
	test	r14, r14
	lea	rsi, [rsi]
	jne	.label_1021
	nop	
.label_1023:
	mov	rax, qword ptr [r12]
	lea	rdi, [rdi]
	test	byte ptr [rax + rbx*2 + 1], 4
	nop	
	je	.label_1017
	mov	rdi, r15
	mov	rsi, rbx
	call	bitset_set
.label_1017:
	nop	
	inc	rbx
	xor	eax, eax
	nop	
	cmp	rbx, 0x100
	jne	.label_1023
	jmp	.label_974
.label_1021:
	lea	rsi, [rsi]
	mov	rax, qword ptr [r12]
	lea	rdi, [rdi]
	test	byte ptr [rax + rbx*2 + 1], 4
	mov	rsp, rsp
	je	.label_1029
	movzx	esi, byte ptr [r14 + rbx]
	mov	rdi, r15
	call	bitset_set
.label_1029:
	inc	rbx
	lea	rdi, [rdi]
	xor	eax, eax
	cmp	rbx, 0x100
	jne	.label_1021
	lea	rdi, [rdi]
	jmp	.label_974
.label_1035:
	call	__ctype_b_loc
	lea	rsi, [rsi]
	mov	r12, rax
	xor	ebx, ebx
	test	r14, r14
	jne	.label_983
	nop	dword ptr [rax + rax]
.label_1024:
	mov	rsp, rsp
	mov	rax, qword ptr [r12]
	test	byte ptr [rax + rbx*2 + 1], 8
	je	.label_1013
	mov	rdi, r15
	mov	rsp, rsp
	mov	rsi, rbx
	nop	
	call	bitset_set
.label_1013:
	mov	rbp, rbp
	inc	rbx
	lea	rdi, [rdi]
	xor	eax, eax
	nop	
	cmp	rbx, 0x100
	mov	rbp, rbp
	jne	.label_1024
	mov	rbp, rbp
	jmp	.label_974
.label_983:
	mov	rbp, rbp
	mov	rax, qword ptr [r12]
	test	byte ptr [rax + rbx*2 + 1], 8
	mov	rbp, rbp
	je	.label_1004
	movzx	esi, byte ptr [r14 + rbx]
	mov	rdi, r15
	call	bitset_set
.label_1004:
	nop	
	inc	rbx
	lea	rdi, [rdi]
	xor	eax, eax
	lea	rsi, [rsi]
	cmp	rbx, 0x100
	mov	rsp, rsp
	jne	.label_983
	jmp	.label_974
.label_979:
	call	__ctype_b_loc
	mov	r12, rax
	xor	ebx, ebx
	test	r14, r14
	mov	rbp, rbp
	jne	.label_1011
	nop	word ptr [rax + rax]
.label_982:
	mov	rax, qword ptr [r12]
	test	byte ptr [rax + rbx*2 + 1], 0x40
	mov	rsp, rsp
	je	.label_1008
	nop	
	mov	rdi, r15
	mov	rsi, rbx
	call	bitset_set
.label_1008:
	lea	rdi, [rdi]
	inc	rbx
	xor	eax, eax
	lea	rdi, [rdi]
	cmp	rbx, 0x100
	mov	rbp, rbp
	jne	.label_982
	jmp	.label_974
.label_1011:
	mov	rax, qword ptr [r12]
	mov	rsp, rsp
	test	byte ptr [rax + rbx*2 + 1], 0x40
	mov	rbp, rbp
	je	.label_1034
	movzx	esi, byte ptr [r14 + rbx]
	mov	rbp, rbp
	mov	rdi, r15
	call	bitset_set
.label_1034:
	lea	rdi, [rdi]
	inc	rbx
	lea	rdi, [rdi]
	xor	eax, eax
	cmp	rbx, 0x100
	jne	.label_1011
	nop	
	jmp	.label_974
.label_987:
	lea	rdi, [rdi]
	call	__ctype_b_loc
	mov	r12, rax
	xor	ebx, ebx
	test	r14, r14
	nop	
	jne	.label_990
	nop	word ptr cs:[rax + rax]
.label_1002:
	mov	rax, qword ptr [r12]
	mov	rbp, rbp
	test	byte ptr [rax + rbx*2 + 1], 1
	je	.label_997
	nop	
	mov	rdi, r15
	mov	rbp, rbp
	mov	rsi, rbx
	call	bitset_set
.label_997:
	inc	rbx
	nop	
	xor	eax, eax
	nop	
	cmp	rbx, 0x100
	jne	.label_1002
	lea	rsi, [rsi]
	jmp	.label_974
.label_990:
	mov	rbp, rbp
	mov	rax, qword ptr [r12]
	test	byte ptr [rax + rbx*2 + 1], 1
	mov	rsp, rsp
	je	.label_978
	mov	rbp, rbp
	movzx	esi, byte ptr [r14 + rbx]
	mov	rdi, r15
	mov	rbp, rbp
	call	bitset_set
.label_978:
	mov	rsp, rsp
	inc	rbx
	mov	rbp, rbp
	xor	eax, eax
	cmp	rbx, 0x100
	nop	
	jne	.label_990
	jmp	.label_974
.label_995:
	mov	rsp, rsp
	call	__ctype_b_loc
	mov	rsp, rsp
	mov	r12, rax
	xor	ebx, ebx
	test	r14, r14
	jne	.label_988
	nop	dword ptr [rax + rax]
.label_1036:
	mov	rax, qword ptr [r12]
	mov	rsp, rsp
	test	byte ptr [rax + rbx*2], 1
	je	.label_1005
	nop	
	mov	rdi, r15
	lea	rsi, [rsi]
	mov	rsi, rbx
	call	bitset_set
.label_1005:
	lea	rdi, [rdi]
	inc	rbx
	xor	eax, eax
	cmp	rbx, 0x100
	jne	.label_1036
	jmp	.label_974
.label_988:
	mov	rsp, rsp
	mov	rax, qword ptr [r12]
	test	byte ptr [rax + rbx*2], 1
	je	.label_980
	lea	rsi, [rsi]
	movzx	esi, byte ptr [r14 + rbx]
	mov	rdi, r15
	mov	rsp, rsp
	call	bitset_set
.label_980:
	inc	rbx
	xor	eax, eax
	cmp	rbx, 0x100
	lea	rdi, [rdi]
	jne	.label_988
	nop	
	jmp	.label_974
.label_1000:
	nop	
	call	__ctype_b_loc
	mov	r12, rax
	xor	ebx, ebx
	mov	rbp, rbp
	test	r14, r14
	mov	rbp, rbp
	jne	.label_996
.label_1006:
	nop	
	mov	rax, qword ptr [r12]
	cmp	word ptr [rax + rbx*2], 0
	lea	rsi, [rsi]
	jns	.label_991
	mov	rdi, r15
	mov	rsi, rbx
	mov	rbp, rbp
	call	bitset_set
.label_991:
	lea	rsi, [rsi]
	inc	rbx
	xor	eax, eax
	cmp	rbx, 0x100
	nop	
	jne	.label_1006
	jmp	.label_974
.label_996:
	mov	rax, qword ptr [r12]
	mov	rbp, rbp
	cmp	word ptr [rax + rbx*2], 0
	jns	.label_1014
	nop	
	movzx	esi, byte ptr [r14 + rbx]
	mov	rdi, r15
	call	bitset_set
.label_1014:
	lea	rdi, [rdi]
	inc	rbx
	xor	eax, eax
	cmp	rbx, 0x100
	jne	.label_996
	jmp	.label_974
.label_998:
	mov	rax, qword ptr [r12]
	test	byte ptr [rax + rbx*2 + 1], 0x10
	je	.label_1020
	movzx	esi, byte ptr [r14 + rbx]
	mov	rdi, r15
	mov	rbp, rbp
	call	bitset_set
.label_1020:
	inc	rbx
	nop	
	xor	eax, eax
	mov	rbp, rbp
	cmp	rbx, 0x100
	jne	.label_998
	lea	rsi, [rsi]
	jmp	.label_974
.label_1026:
	call	__ctype_b_loc
	mov	r12, rax
	lea	rdi, [rdi]
	xor	ebx, ebx
.label_1886:
	test	r14, r14
	jne	.label_1003
.label_1032:
	lea	rdi, [rdi]
	mov	rax, qword ptr [r12]
	lea	rdi, [rdi]
	test	byte ptr [rax + rbx*2], 4
	lea	rsi, [rsi]
	je	.label_976
	mov	rdi, r15
	mov	rbp, rbp
	mov	rsi, rbx
	call	bitset_set
.label_976:
	inc	rbx
	mov	rsp, rsp
	xor	eax, eax
	cmp	rbx, 0x100
	jne	.label_1032
.label_974:
	add	rsp, 8
	pop	rbx
	pop	r12
	lea	rsi, [rsi]
	pop	r13
	pop	r14
	lea	rsi, [rsi]
	pop	r15
	pop	rbp
	ret	
.label_1003:
	mov	rax, qword ptr [r12]
	mov	rbp, rbp
	test	byte ptr [rax + rbx*2], 4
	lea	rsi, [rsi]
	je	.label_977
	movzx	esi, byte ptr [r14 + rbx]
	mov	rdi, r15
	call	bitset_set
.label_977:
	inc	rbx
	nop	
	xor	eax, eax
	lea	rdi, [rdi]
	cmp	rbx, 0x100
	jne	.label_1003
	nop	
	jmp	.label_974
	nop	
	.section	.text
	.align	32
	#Procedure 0x410080

	.globl bitset_not
	.type bitset_not, @function
bitset_not:
	mov	rsp, rsp
	xor	eax, eax
	nop	word ptr cs:[rax + rax]
.label_1037:
	mov	rbp, rbp
	not	qword ptr [rdi + rax*8]
	mov	rsp, rsp
	inc	rax
	nop	
	cmp	rax, 4
	jne	.label_1037
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4100b0

	.globl bitset_mask
	.type bitset_mask, @function
bitset_mask:
	xor	eax, eax
	nop	word ptr cs:[rax + rax]
.label_1038:
	mov	rcx, qword ptr [rsi + rax*8]
	and	qword ptr [rdi + rax*8], rcx
	lea	rsi, [rsi]
	inc	rax
	cmp	rax, 4
	jne	.label_1038
	mov	rbp, rbp
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4100e0

	.globl re_string_char_size_at
	.type re_string_char_size_at, @function
re_string_char_size_at:
	mov	eax, 1
	cmp	dword ptr [rdi + 0x90], 1
	mov	rsp, rsp
	je	.label_1039
	mov	rsp, rsp
	lea	rcx, [rsi + 1]
	cmp	rcx, qword ptr [rdi + 0x30]
	lea	rdi, [rdi]
	jge	.label_1039
	lea	rdi, [rdi]
	lea	rcx, [rsi*4]
	lea	rdi, [rdi]
	add	rcx, qword ptr [rdi + 0x10]
	mov	eax, 1
	nop	dword ptr [rax + rax]
.label_1040:
	lea	rsi, [rsi]
	cmp	dword ptr [rcx + rax*4], -1
	jne	.label_1039
	mov	rsp, rsp
	lea	rdx, [rsi + rax + 1]
	inc	rax
	lea	rsi, [rsi]
	cmp	rdx, qword ptr [rdi + 0x30]
	jl	.label_1040
.label_1039:
	lea	rsi, [rsi]
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x410150

	.globl parse_bracket_symbol
	.type parse_bracket_symbol, @function
parse_bracket_symbol:
	push	rbp
	mov	rsp, rsp
	push	r15
	push	r14
	nop	
	push	r13
	push	r12
	nop	
	push	rbx
	push	rax
	lea	rdi, [rdi]
	mov	r12, rdx
	mov	rbx, rsi
	lea	rdi, [rdi]
	mov	r15, rdi
	mov	rax, qword ptr [rbx + 0x68]
	mov	r14d, 7
	lea	rdi, [rdi]
	cmp	rax, qword ptr [rbx + 0x48]
	jle	.label_1042
	mov	rbp, -1
	mov	rbp, rbp
	movzx	r13d, byte ptr [r12]
	nop	word ptr cs:[rax + rax]
.label_1043:
	mov	rsp, rsp
	movzx	eax, byte ptr [r12 + 8]
	nop	
	cmp	eax, 0x1e
	lea	rdi, [rdi]
	jne	.label_1041
	lea	rdi, [rdi]
	mov	rdi, rbx
	call	re_string_fetch_byte_case
	jmp	.label_1047
	nop	
.label_1041:
	mov	rax, qword ptr [rbx + 0x48]
	lea	rdi, [rdi]
	lea	rcx, [rax + 1]
	lea	rdi, [rdi]
	mov	qword ptr [rbx + 0x48], rcx
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbx + 8]
	mov	al, byte ptr [rcx + rax]
.label_1047:
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbx + 0x48]
	nop	
	cmp	qword ptr [rbx + 0x68], rcx
	jle	.label_1042
	mov	rbp, rbp
	movzx	edx, al
	cmp	edx, r13d
	jne	.label_1044
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbx + 8]
	movzx	edx, byte ptr [rdx + rcx]
	cmp	edx, 0x5d
	je	.label_1045
.label_1044:
	mov	rcx, qword ptr [r15 + 8]
	mov	byte ptr [rcx + rbp + 1], al
	lea	rsi, [rsi]
	inc	rbp
	cmp	rbp, 0x1e
	jle	.label_1043
.label_1042:
	nop	
	mov	eax, r14d
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	nop	
	pop	r15
	mov	rbp, rbp
	pop	rbp
	ret	
.label_1045:
	lea	rsi, [rsi]
	inc	rcx
	mov	rbp, rbp
	mov	qword ptr [rbx + 0x48], rcx
	lea	rdi, [rdi]
	mov	rax, qword ptr [r15 + 8]
	mov	byte ptr [rax + rbp + 1], 0
	mov	rsp, rsp
	movzx	eax, byte ptr [r12 + 8]
	nop	
	xor	r14d, r14d
	lea	rsi, [rsi]
	cmp	eax, 0x1e
	je	.label_1046
	cmp	eax, 0x1c
	lea	rsi, [rsi]
	je	.label_1048
	cmp	eax, 0x1a
	nop	
	jne	.label_1042
	lea	rdi, [rdi]
	mov	dword ptr [r15], 3
	mov	rsp, rsp
	jmp	.label_1042
.label_1046:
	mov	dword ptr [r15], 4
	jmp	.label_1042
.label_1048:
	mov	dword ptr [r15], 2
	lea	rsi, [rsi]
	jmp	.label_1042
	.section	.text
	.align	32
	#Procedure 0x410290

	.globl re_string_fetch_byte_case
	.type re_string_fetch_byte_case, @function
re_string_fetch_byte_case:
	push	rbp
	push	r14
	push	rbx
	nop	
	mov	rbx, rdi
	lea	rdi, [rdi]
	cmp	byte ptr [rbx + 0x8b], 0
	jne	.label_1053
	mov	rax, qword ptr [rbx + 0x48]
.label_1051:
	lea	rcx, [rax + 1]
	mov	qword ptr [rbx + 0x48], rcx
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbx + 8]
.label_1054:
	mov	rbp, rbp
	mov	bpl, byte ptr [rcx + rax]
.label_1049:
	movzx	eax, bpl
	pop	rbx
	pop	r14
	pop	rbp
	mov	rbp, rbp
	ret	
.label_1053:
	lea	rdi, [rdi]
	cmp	byte ptr [rbx + 0x8c], 0
	je	.label_1052
	mov	rax, qword ptr [rbx + 0x48]
	mov	rsp, rsp
	cmp	rax, qword ptr [rbx + 0x30]
	mov	rsp, rsp
	je	.label_1050
	mov	rsp, rsp
	mov	rcx, qword ptr [rbx + 0x10]
	lea	rsi, [rsi]
	cmp	dword ptr [rcx + rax*4], -1
	je	.label_1051
.label_1050:
	nop	
	mov	r14, qword ptr [rbx + 0x48]
	nop	
	mov	rax, qword ptr [rbx]
	mov	rcx, qword ptr [rbx + 0x18]
	mov	rdx, qword ptr [rbx + 0x28]
	add	rdx, qword ptr [rcx + r14*8]
	lea	rdi, [rdi]
	mov	bpl, byte ptr [rax + rdx]
	test	bpl, bpl
	js	.label_1055
	mov	rdi, rbx
	mov	rsi, r14
	call	re_string_char_size_at
	mov	rsp, rsp
	cdqe	
	nop	
	add	rax, r14
	lea	rsi, [rsi]
	mov	qword ptr [rbx + 0x48], rax
	jmp	.label_1049
.label_1052:
	mov	rsp, rsp
	mov	rax, qword ptr [rbx + 0x48]
	mov	rsp, rsp
	lea	rcx, [rax + 1]
	add	rax, qword ptr [rbx + 0x28]
	mov	qword ptr [rbx + 0x48], rcx
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbx]
	nop	
	jmp	.label_1054
.label_1055:
	lea	rax, [r14 + 1]
	mov	qword ptr [rbx + 0x48], rax
	mov	rax, qword ptr [rbx + 8]
	lea	rsi, [rsi]
	mov	bpl, byte ptr [rax + r14]
	jmp	.label_1049
	nop	
	.section	.text
	.align	32
	#Procedure 0x410370

	.globl parse_byte
	.type parse_byte, @function
parse_byte:
	test	rsi, rsi
	je	.label_1056
	lea	rsi, [rsi]
	jmp	btowc
.label_1056:
	lea	rdi, [rdi]
	mov	eax, edi
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x410390

	.globl fetch_number
	.type fetch_number, @function
fetch_number:
	push	r15
	push	r14
	push	r13
	push	r12
	nop	
	push	rbx
	lea	rdi, [rdi]
	mov	r14, rdx
	nop	
	mov	r12, rsi
	lea	rdi, [rdi]
	mov	r15, rdi
	lea	rsi, [rsi]
	mov	rcx, -1
	mov	rbp, rbp
	mov	r13d, 0x8000
	jmp	.label_1058
.label_1057:
	lea	rcx, [rbx + rbx*4]
	nop	
	lea	rcx, [rax + rcx*2 - 0x30]
	mov	rbp, rbp
	cmp	rcx, 0x8000
	lea	rsi, [rsi]
	cmovg	rcx, r13
	nop	word ptr [rax + rax]
.label_1058:
	mov	rbx, rcx
	nop	
	mov	rdi, r12
	mov	rsi, r15
	mov	rdx, r14
	mov	rsp, rsp
	call	fetch_token
	movzx	eax, byte ptr [r12]
	mov	rsp, rsp
	movzx	edx, byte ptr [r12 + 8]
	cmp	edx, 0x18
	je	.label_1060
	cmp	edx, 2
	je	.label_1059
	cmp	eax, 0x2c
	lea	rsi, [rsi]
	je	.label_1060
	cmp	eax, 0x30
	mov	rsp, rsp
	mov	rcx, -2
	jb	.label_1058
	nop	
	cmp	edx, 1
	mov	rsp, rsp
	jne	.label_1058
	lea	rdi, [rdi]
	cmp	rbx, -2
	lea	rsi, [rsi]
	je	.label_1058
	movzx	edx, al
	cmp	edx, 0x39
	ja	.label_1058
	cmp	rbx, -1
	jne	.label_1057
	lea	rdi, [rdi]
	add	rax, -0x30
	mov	rcx, rax
	jmp	.label_1058
.label_1059:
	mov	rbx, -2
.label_1060:
	mov	rax, rbx
	pop	rbx
	lea	rsi, [rsi]
	pop	r12
	lea	rdi, [rdi]
	pop	r13
	nop	
	pop	r14
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x410480

	.globl duplicate_tree
	.type duplicate_tree, @function
duplicate_tree:
	push	rbp
	nop	
	push	r15
	nop	
	push	r14
	push	r13
	mov	rbp, rbp
	push	r12
	push	rbx
	push	rax
	mov	r15, rsi
	lea	rdi, [rdi]
	mov	rbx, rdi
	lea	rdi, [rdi]
	mov	r12, qword ptr [rbx]
	mov	rsp, rsp
	lea	rcx, [rbx + 0x28]
	xor	r14d, r14d
	xor	esi, esi
	xor	edx, edx
	nop	
	mov	rdi, r15
	call	create_token_tree
	mov	qword ptr [rsp], rax
	test	rax, rax
	mov	rbp, rbp
	je	.label_1062
	nop	
	lea	r13, [rsp]
	lea	rsi, [rsi]
	xor	r14d, r14d
.label_1064:
	mov	rsp, rsp
	mov	qword ptr [rax], r12
	lea	rsi, [rsi]
	mov	rax, qword ptr [r13]
	or	dword ptr [rax + 0x30], 0x40000
	mov	r12, qword ptr [r13]
	lea	rdi, [rdi]
	mov	rbp, qword ptr [rbx + 8]
	test	rbp, rbp
	lea	rdi, [rdi]
	je	.label_1065
	lea	r13, [r12 + 8]
	mov	rbp, rbp
	jmp	.label_1067
	nop	word ptr cs:[rax + rax]
.label_1065:
	mov	rsp, rsp
	xor	eax, eax
	nop	word ptr cs:[rax + rax]
.label_1068:
	lea	rdi, [rdi]
	mov	rcx, rax
	mov	rax, rbx
	mov	rbp, qword ptr [rax + 0x10]
	nop	
	cmp	rbp, rcx
	je	.label_1061
	test	rbp, rbp
	lea	rsi, [rsi]
	jne	.label_1066
.label_1061:
	mov	rbx, qword ptr [rax]
	mov	r12, qword ptr [r12]
	test	rbx, rbx
	mov	rbp, rbp
	jne	.label_1068
	lea	rsi, [rsi]
	jmp	.label_1063
	nop	
.label_1066:
	nop	
	lea	r13, [r12 + 0x10]
.label_1067:
	lea	rcx, [rbp + 0x28]
	lea	rdi, [rdi]
	xor	esi, esi
	xor	edx, edx
	mov	rdi, r15
	lea	rsi, [rsi]
	call	create_token_tree
	lea	rsi, [rsi]
	mov	qword ptr [r13], rax
	mov	rsp, rsp
	test	rax, rax
	nop	
	mov	rbx, rbp
	jne	.label_1064
	jmp	.label_1062
.label_1063:
	lea	rdi, [rdi]
	mov	r14, qword ptr [rsp]
.label_1062:
	nop	
	mov	rax, r14
	nop	
	add	rsp, 8
	pop	rbx
	mov	rbp, rbp
	pop	r12
	lea	rdi, [rdi]
	pop	r13
	pop	r14
	pop	r15
	lea	rsi, [rsi]
	pop	rbp
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4105b0

	.globl mark_opt_subexp
	.type mark_opt_subexp, @function
mark_opt_subexp:
	mov	rbp, rbp
	mov	eax, dword ptr [rsi + 0x30]
	mov	rsp, rsp
	movzx	ecx, al
	nop	
	cmp	ecx, 0x11
	jne	.label_1069
	lea	rdi, [rdi]
	cmp	qword ptr [rsi + 0x28], rdi
	lea	rsi, [rsi]
	jne	.label_1069
	or	eax, 0x80000
	lea	rsi, [rsi]
	mov	dword ptr [rsi + 0x30], eax
.label_1069:
	mov	rsp, rsp
	xor	eax, eax
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x4105e0

	.globl preorder
	.type preorder, @function
preorder:
	push	r15
	mov	rsp, rsp
	push	r14
	mov	rsp, rsp
	push	r12
	lea	rdi, [rdi]
	push	rbx
	push	rax
	mov	r14, rdx
	lea	rsi, [rsi]
	mov	r15, rsi
	mov	rbx, rdi
	mov	rdi, r14
	mov	rsi, rbx
	lea	rdi, [rdi]
	call	r15
	mov	rbp, rbp
	test	eax, eax
	mov	rbp, rbp
	jne	.label_1072
.label_1073:
	lea	rsi, [rsi]
	mov	r12, qword ptr [rbx + 8]
	test	r12, r12
	mov	ecx, 0
	lea	rsi, [rsi]
	jne	.label_1070
	nop	word ptr [rax + rax]
.label_1074:
	mov	rax, rcx
	mov	rcx, rbx
	mov	r12, qword ptr [rcx + 0x10]
	mov	rsp, rsp
	cmp	r12, rax
	mov	rbp, rbp
	je	.label_1071
	lea	rdi, [rdi]
	test	r12, r12
	nop	
	jne	.label_1070
.label_1071:
	nop	
	mov	rbx, qword ptr [rcx]
	xor	eax, eax
	test	rbx, rbx
	mov	rsp, rsp
	jne	.label_1074
	lea	rdi, [rdi]
	jmp	.label_1072
	nop	word ptr cs:[rax + rax]
.label_1070:
	lea	rdi, [rdi]
	mov	rdi, r14
	lea	rsi, [rsi]
	mov	rsi, r12
	call	r15
	mov	rbp, rbp
	test	eax, eax
	lea	rsi, [rsi]
	mov	rbx, r12
	lea	rsi, [rsi]
	je	.label_1073
.label_1072:
	mov	rbp, rbp
	add	rsp, 8
	lea	rsi, [rsi]
	pop	rbx
	pop	r12
	lea	rsi, [rsi]
	pop	r14
	pop	r15
	mov	rbp, rbp
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4106b0

	.globl optimize_subexps
	.type optimize_subexps, @function
optimize_subexps:
	movzx	eax, byte ptr [rsi + 0x30]
	nop	
	cmp	eax, 4
	mov	rbp, rbp
	jne	.label_1075
	mov	rax, qword ptr [rdi + 0xe0]
	test	rax, rax
	lea	rsi, [rsi]
	je	.label_1075
	movsxd	rcx, dword ptr [rsi + 0x28]
	mov	rcx, qword ptr [rax + rcx*8]
	mov	qword ptr [rsi + 0x28], rcx
	mov	eax, 1
	lea	rdi, [rdi]
	shl	eax, cl
	cdqe	
	or	qword ptr [rdi + 0xa0], rax
	mov	rsp, rsp
	xor	eax, eax
	lea	rsi, [rsi]
	ret	
.label_1075:
	nop	
	movzx	eax, byte ptr [rsi + 0x30]
	cmp	eax, 0x11
	lea	rdi, [rdi]
	jne	.label_1076
	mov	rax, qword ptr [rsi + 8]
	test	rax, rax
	lea	rdi, [rdi]
	je	.label_1076
	movzx	ecx, byte ptr [rax + 0x30]
	cmp	ecx, 0x11
	jne	.label_1076
	mov	rdx, qword ptr [rax + 8]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rax + 0x28]
	mov	qword ptr [rsi + 8], rdx
	test	rdx, rdx
	lea	rsi, [rsi]
	je	.label_1077
	nop	
	mov	qword ptr [rdx], rsi
.label_1077:
	nop	
	mov	rax, qword ptr [rsi + 0x28]
	mov	rsp, rsp
	mov	rdx, qword ptr [rdi + 0xe0]
	mov	rax, qword ptr [rdx + rax*8]
	mov	rsp, rsp
	mov	qword ptr [rdx + rcx*8], rax
	mov	rbp, rbp
	cmp	rcx, 0x3f
	mov	rsp, rsp
	jg	.label_1076
	mov	rax, -2
	mov	rbp, rbp
	rol	rax, cl
	mov	rbp, rbp
	and	qword ptr [rdi + 0xa0], rax
.label_1076:
	mov	rsp, rsp
	xor	eax, eax
	mov	rsp, rsp
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x410780

	.globl lower_subexps
	.type lower_subexps, @function
lower_subexps:
	lea	rsi, [rsi]
	push	r14
	lea	rsi, [rsi]
	push	rbx
	push	rax
	mov	rbx, rsi
	mov	r14, rdi
	mov	rbp, rbp
	mov	dword ptr [rsp + 4], 0
	mov	rdx, qword ptr [rbx + 8]
	mov	rbp, rbp
	test	rdx, rdx
	je	.label_1079
	mov	rsp, rsp
	movzx	eax, byte ptr [rdx + 0x30]
	lea	rdi, [rdi]
	cmp	eax, 0x11
	jne	.label_1079
	lea	rdi, [rsp + 4]
	mov	rsp, rsp
	mov	rsi, r14
	call	lower_subexp
	nop	
	mov	qword ptr [rbx + 8], rax
	nop	
	test	rax, rax
	je	.label_1079
	mov	qword ptr [rax], rbx
.label_1079:
	mov	rdx, qword ptr [rbx + 0x10]
	lea	rsi, [rsi]
	test	rdx, rdx
	je	.label_1078
	lea	rsi, [rsi]
	movzx	eax, byte ptr [rdx + 0x30]
	cmp	eax, 0x11
	lea	rsi, [rsi]
	jne	.label_1078
	lea	rsi, [rsi]
	lea	rdi, [rsp + 4]
	mov	rsi, r14
	call	lower_subexp
	mov	qword ptr [rbx + 0x10], rax
	test	rax, rax
	je	.label_1078
	nop	
	mov	qword ptr [rax], rbx
.label_1078:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rsp + 4]
	add	rsp, 8
	mov	rbp, rbp
	pop	rbx
	lea	rdi, [rdi]
	pop	r14
	mov	rsp, rsp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x410830

	.globl calc_first
	.type calc_first, @function
calc_first:
	nop
	push	r14
	lea	rsi, [rsi]
	push	rbx
	mov	rbp, rbp
	push	rax
	nop	
	mov	rbx, rsi
	nop	
	mov	r14, rdi
	nop	
	movzx	eax, byte ptr [rbx + 0x30]
	mov	rsp, rsp
	cmp	eax, 0x10
	jne	.label_1081
	mov	rax, qword ptr [rbx + 8]
	mov	rsp, rsp
	mov	rax, qword ptr [rax + 0x18]
	mov	qword ptr [rbx + 0x18], rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbx + 8]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax + 0x38]
	lea	rdi, [rdi]
	mov	qword ptr [rbx + 0x38], rax
	xor	eax, eax
	jmp	.label_1080
.label_1081:
	mov	rbp, rbp
	mov	qword ptr [rbx + 0x18], rbx
	nop	
	mov	rsi, qword ptr [rbx + 0x28]
	mov	rdx, qword ptr [rbx + 0x30]
	mov	rdi, r14
	call	re_dfa_add_node
	lea	rdi, [rdi]
	mov	rcx, rax
	lea	rsi, [rsi]
	mov	qword ptr [rbx + 0x38], rcx
	mov	eax, 0xc
	cmp	rcx, -1
	mov	rsp, rsp
	je	.label_1080
	xor	eax, eax
	lea	rsi, [rsi]
	movzx	edx, byte ptr [rbx + 0x30]
	cmp	edx, 0xc
	nop	
	jne	.label_1080
	lea	rdi, [rdi]
	mov	edx, dword ptr [rbx + 0x28]
	mov	rsp, rsp
	mov	rsi, qword ptr [r14]
	nop	
	shl	rcx, 4
	mov	rbp, rbp
	shl	edx, 8
	mov	rbp, rbp
	and	edx, 0x3ff00
	lea	rdi, [rdi]
	mov	edi, 0xfffc00ff
	mov	rbp, rbp
	and	edi, dword ptr [rsi + rcx + 8]
	lea	rdi, [rdi]
	or	edi, edx
	mov	rsp, rsp
	mov	dword ptr [rsi + rcx + 8], edi
.label_1080:
	lea	rsi, [rsi]
	add	rsp, 8
	pop	rbx
	nop	
	pop	r14
	nop	
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x410910

	.globl calc_next
	.type calc_next, @function
calc_next:
	movzx	eax, byte ptr [rsi + 0x30]
	cmp	eax, 0x10
	mov	rbp, rbp
	je	.label_1082
	cmp	eax, 0xb
	mov	rsp, rsp
	jne	.label_1086
	mov	rax, qword ptr [rsi + 8]
	mov	qword ptr [rax + 0x20], rsi
	mov	rsp, rsp
	xor	eax, eax
	ret	
.label_1082:
	mov	rax, qword ptr [rsi + 8]
	nop	
	mov	rcx, qword ptr [rsi + 0x10]
	mov	rbp, rbp
	mov	rcx, qword ptr [rcx + 0x18]
	nop	
	mov	qword ptr [rax + 0x20], rcx
	mov	rsp, rsp
	mov	rax, qword ptr [rsi + 0x10]
	jmp	.label_1084
.label_1086:
	mov	rax, qword ptr [rsi + 8]
	lea	rsi, [rsi]
	test	rax, rax
	je	.label_1083
	mov	rcx, qword ptr [rsi + 0x20]
	mov	qword ptr [rax + 0x20], rcx
.label_1083:
	mov	rax, qword ptr [rsi + 0x10]
	mov	rbp, rbp
	test	rax, rax
	nop	
	je	.label_1085
.label_1084:
	mov	rcx, qword ptr [rsi + 0x20]
	mov	qword ptr [rax + 0x20], rcx
.label_1085:
	mov	rsp, rsp
	xor	eax, eax
	nop	
	ret	
	.section	.text
	.align	32
	#Procedure 0x410980

	.globl link_nfa_nodes
	.type link_nfa_nodes, @function
link_nfa_nodes:
	lea	rdi, [rdi]
	push	rax
	mov	rcx, qword ptr [rsi + 0x38]
	lea	rdi, [rdi]
	movzx	eax, byte ptr [rsi + 0x30]
	lea	rdi, [rdi]
	lea	edx, [rax - 2]
	lea	rsi, [rsi]
	cmp	edx, 0xe
	ja	.label_1088
	lea	rsi, [rsi]
	jmp	qword ptr [word ptr [+ (rdx * 8) + label_1087]]
.label_1994:
	mov	rbp, rbp
	lea	rax, [rcx + rcx*2]
	shl	rax, 3
	add	rax, qword ptr [rdi + 0x28]
	mov	rcx, qword ptr [rsi + 0x20]
	mov	rbp, rbp
	mov	rsi, qword ptr [rcx + 0x38]
.label_1093:
	mov	rsp, rsp
	mov	rdi, rax
	pop	rax
	jmp	re_node_set_init_1
.label_1995:
	lea	rsi, [rsi]
	or	byte ptr [rdi + 0xb0], 1
	mov	rax, qword ptr [rsi + 8]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rsi + 0x10]
	lea	rsi, [rsi]
	add	rsi, 0x20
	test	rax, rax
	lea	rax, [rax + 0x18]
	cmove	rax, rsi
	mov	rbp, rbp
	mov	rax, qword ptr [rax]
	mov	rax, qword ptr [rax + 0x38]
	mov	rsp, rsp
	test	rdx, rdx
	lea	rdx, [rdx + 0x18]
	cmove	rdx, rsi
	test	rax, rax
	lea	rdi, [rdi]
	js	.label_1090
	mov	rdx, qword ptr [rdx]
	mov	rdx, qword ptr [rdx + 0x38]
	test	rdx, rdx
	lea	rsi, [rsi]
	js	.label_1092
	lea	rcx, [rcx + rcx*2]
	shl	rcx, 3
	lea	rsi, [rsi]
	add	rcx, qword ptr [rdi + 0x28]
	mov	rdi, rcx
	mov	rsi, rax
	nop	
	pop	rax
	nop	
	jmp	re_node_set_init_2
.label_1992:
	cmp	qword ptr [rsi + 0x20], 0
	je	.label_1089
	lea	rsi, [rsi]
	mov	edi, OFFSET FLAT:.str.17_2
	lea	rdi, [rdi]
	mov	esi, OFFSET FLAT:.str.6_1
	lea	rdi, [rdi]
	mov	edx, 0x59f
	mov	rbp, rbp
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.link_nfa_nodes
	mov	rsp, rsp
	call	__assert_fail
.label_1993:
	mov	rax, qword ptr [rsi + 0x20]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax + 0x38]
	mov	rdx, qword ptr [rdi + 0x18]
	lea	rdi, [rdi]
	mov	qword ptr [rdx + rcx*8], rax
	movzx	eax, byte ptr [rsi + 0x30]
	cmp	eax, 4
	jne	.label_1089
	mov	rbp, rbp
	lea	rax, [rcx + rcx*2]
	mov	rsp, rsp
	shl	rax, 3
	add	rax, qword ptr [rdi + 0x28]
	mov	rsp, rsp
	mov	rdx, qword ptr [rdi + 0x18]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rdx + rcx*8]
	jmp	.label_1093
.label_1088:
	test	al, 8
	nop	
	jne	.label_1091
	nop	
	mov	rax, qword ptr [rsi + 0x20]
	nop	
	mov	rax, qword ptr [rax + 0x38]
	mov	rdx, qword ptr [rdi + 0x18]
	mov	qword ptr [rdx + rcx*8], rax
.label_1089:
	xor	eax, eax
	pop	rcx
	ret	
.label_1090:
	mov	edi, OFFSET FLAT:.str.18_2
	mov	esi, OFFSET FLAT:.str.6_1
	mov	rsp, rsp
	mov	edx, 0x5af
	lea	rsi, [rsi]
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.link_nfa_nodes
	mov	rbp, rbp
	call	__assert_fail
.label_1092:
	nop	
	mov	edi, OFFSET FLAT:.str.19_1
	lea	rdi, [rdi]
	mov	esi, OFFSET FLAT:.str.6_1
	mov	edx, 0x5b0
	mov	rsp, rsp
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.link_nfa_nodes
	call	__assert_fail
.label_1091:
	mov	edi, OFFSET FLAT:.str.20_0
	mov	esi, OFFSET FLAT:.str.6_1
	mov	rbp, rbp
	mov	edx, 0x5c2
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.link_nfa_nodes
	lea	rdi, [rdi]
	call	__assert_fail
	nop	
	.section	.text
	.align	32
	#Procedure 0x410b40

	.globl calc_eclosure
	.type calc_eclosure, @function
calc_eclosure:
	push	r15
	nop	
	push	r14
	lea	rdi, [rdi]
	push	r13
	push	r12
	lea	rdi, [rdi]
	push	rbx
	sub	rsp, 0x20
	mov	r14, rdi
	xor	ebx, ebx
	lea	r15, [rsp + 8]
	mov	rsp, rsp
	xor	r12d, r12d
	jmp	.label_1094
	nop	word ptr cs:[rax + rax]
.label_1096:
	lea	rsi, [rsi]
	inc	rbx
.label_1094:
	cmp	rbx, qword ptr [r14 + 0x10]
	jne	.label_1097
	xor	ebx, ebx
	lea	rdi, [rdi]
	test	r12b, 1
	lea	rdi, [rdi]
	mov	r12d, 0
	mov	rbp, rbp
	je	.label_1098
.label_1097:
	mov	rax, qword ptr [r14 + 0x30]
	lea	r13, [rbx + rbx*2]
	cmp	qword ptr [rax + r13*8 + 8], 0
	mov	rsp, rsp
	jne	.label_1096
	mov	ecx, 1
	mov	rsp, rsp
	mov	rdi, r15
	mov	rsi, r14
	mov	rbp, rbp
	mov	rdx, rbx
	lea	rsi, [rsi]
	call	calc_eclosure_iter
	test	eax, eax
	mov	rsp, rsp
	jne	.label_1095
	mov	rax, qword ptr [r14 + 0x30]
	cmp	qword ptr [rax + r13*8 + 8], 0
	jne	.label_1096
	mov	rdi, qword ptr [rsp + 0x18]
	call	free
	mov	r12b, 1
	nop	
	jmp	.label_1096
.label_1095:
	lea	rdi, [rdi]
	mov	ebx, eax
.label_1098:
	mov	rbp, rbp
	mov	eax, ebx
	add	rsp, 0x20
	nop	
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	mov	rsp, rsp
	pop	r15
	mov	rsp, rsp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x410c10

	.globl calc_inveclosure
	.type calc_inveclosure, @function
calc_inveclosure:
	push	r15
	push	r14
	push	r13
	push	r12
	mov	rbp, rbp
	push	rbx
	mov	rsp, rsp
	mov	r13, rdi
	mov	rsp, rsp
	xor	eax, eax
	lea	rdi, [rdi]
	cmp	qword ptr [r13 + 0x10], 0
	mov	rbp, rbp
	je	.label_1102
	xor	eax, eax
	mov	rsp, rsp
	xorps	xmm0, xmm0
	mov	rsp, rsp
	xor	ecx, ecx
	nop	word ptr cs:[rax + rax]
.label_1099:
	lea	rsi, [rsi]
	mov	rdx, qword ptr [r13 + 0x38]
	movups	xmmword ptr [rdx + rax], xmm0
	lea	rsi, [rsi]
	mov	qword ptr [rdx + rax + 0x10], 0
	lea	rsi, [rsi]
	inc	rcx
	mov	rdx, qword ptr [r13 + 0x10]
	nop	
	add	rax, 0x18
	cmp	rcx, rdx
	jb	.label_1099
	xor	eax, eax
	mov	rbp, rbp
	test	rdx, rdx
	je	.label_1102
	lea	rdi, [rdi]
	xor	r14d, r14d
.label_1100:
	lea	rdi, [rdi]
	mov	rax, qword ptr [r13 + 0x30]
	lea	r15, [r14 + r14*2]
	lea	rsi, [rsi]
	cmp	qword ptr [rax + r15*8 + 8], 0
	lea	rsi, [rsi]
	jle	.label_1101
	lea	rsi, [rsi]
	mov	r12, qword ptr [rax + r15*8 + 0x10]
	xor	ebx, ebx
	nop	
.label_1103:
	mov	rax, qword ptr [r13 + 0x38]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [r12 + rbx*8]
	nop	
	lea	rcx, [rcx + rcx*2]
	lea	rdi, [rax + rcx*8]
	mov	rsi, r14
	nop	
	call	re_node_set_insert_last
	mov	cl, al
	mov	eax, 0xc
	test	cl, cl
	je	.label_1102
	inc	rbx
	nop	
	mov	rax, qword ptr [r13 + 0x30]
	nop	
	cmp	rbx, qword ptr [rax + r15*8 + 8]
	lea	rsi, [rsi]
	jl	.label_1103
.label_1101:
	lea	rdi, [rdi]
	inc	r14
	nop	
	xor	eax, eax
	mov	rbp, rbp
	cmp	r14, qword ptr [r13 + 0x10]
	jb	.label_1100
.label_1102:
	pop	rbx
	mov	rbp, rbp
	pop	r12
	mov	rbp, rbp
	pop	r13
	pop	r14
	pop	r15
	lea	rdi, [rdi]
	ret	
	.section	.text
	.align	32
	#Procedure 0x410d10

	.globl lower_subexp
	.type lower_subexp, @function
lower_subexp:
	lea	rdi, [rdi]
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	mov	rbp, rbp
	push	rbx
	push	rax
	mov	r15, rdx
	lea	rsi, [rsi]
	mov	r13, qword ptr [rsi]
	nop	
	mov	rbp, qword ptr [r15 + 8]
	mov	rsp, rsp
	test	rbp, rbp
	mov	rsp, rsp
	je	.label_1108
	mov	rsp, rsp
	mov	al, byte ptr [rsi + 0x38]
	and	al, 0x10
	je	.label_1108
	lea	rdi, [rdi]
	mov	rax, qword ptr [r15 + 0x28]
	mov	rsp, rsp
	cmp	rax, 0x3f
	lea	rsi, [rsi]
	jg	.label_1105
	mov	rsp, rsp
	mov	rcx, qword ptr [r13 + 0xa0]
	bt	rcx, rax
	jae	.label_1105
.label_1108:
	mov	qword ptr [rsp], rdi
	xor	esi, esi
	nop	
	xor	edx, edx
	mov	rsp, rsp
	mov	ecx, 8
	mov	rdi, r13
	lea	rdi, [rdi]
	call	create_tree
	lea	rdi, [rdi]
	mov	r12, rax
	mov	rsp, rsp
	xor	esi, esi
	mov	rbp, rbp
	xor	edx, edx
	mov	rbp, rbp
	mov	ecx, 9
	mov	rsp, rsp
	mov	rdi, r13
	call	create_tree
	mov	rbx, rax
	test	rbp, rbp
	mov	rbp, rbp
	mov	r14, rbx
	lea	rdi, [rdi]
	je	.label_1107
	mov	ecx, 0x10
	mov	rbp, rbp
	mov	rdi, r13
	mov	rbp, rbp
	mov	rsi, rbp
	mov	rdx, rbx
	call	create_tree
	lea	rsi, [rsi]
	mov	r14, rax
.label_1107:
	mov	ecx, 0x10
	mov	rsp, rsp
	mov	rdi, r13
	mov	rsi, r12
	mov	rdx, r14
	call	create_tree
	nop	
	test	rbx, rbx
	je	.label_1104
	mov	rbp, rbp
	test	r12, r12
	lea	rsi, [rsi]
	je	.label_1104
	test	r14, r14
	je	.label_1104
	lea	rsi, [rsi]
	test	rax, rax
	nop	
	je	.label_1104
	mov	rbp, rbp
	mov	rcx, qword ptr [r15 + 0x28]
	nop	
	mov	qword ptr [rbx + 0x28], rcx
	mov	rbp, rbp
	mov	qword ptr [r12 + 0x28], rcx
	mov	ecx, 0x80000
	nop	
	and	ecx, dword ptr [r15 + 0x30]
	lea	rsi, [rsi]
	mov	edx, 0xfff7ffff
	mov	esi, dword ptr [rbx + 0x30]
	and	esi, edx
	lea	rsi, [rsi]
	or	esi, ecx
	mov	dword ptr [rbx + 0x30], esi
	mov	rbp, rbp
	and	edx, dword ptr [r12 + 0x30]
	or	edx, ecx
	mov	dword ptr [r12 + 0x30], edx
	jmp	.label_1106
.label_1105:
	lea	rdi, [rdi]
	mov	rax, qword ptr [r15 + 8]
.label_1106:
	add	rsp, 8
	lea	rdi, [rdi]
	pop	rbx
	lea	rdi, [rdi]
	pop	r12
	lea	rsi, [rsi]
	pop	r13
	pop	r14
	nop	
	pop	r15
	pop	rbp
	ret	
.label_1104:
	mov	rax, qword ptr [rsp]
	lea	rdi, [rdi]
	mov	dword ptr [rax], 0xc
	lea	rsi, [rsi]
	xor	eax, eax
	mov	rbp, rbp
	jmp	.label_1106
	nop	
	.section	.text
	.align	32
	#Procedure 0x410e90

	.globl re_dfa_add_node
	.type re_dfa_add_node, @function
re_dfa_add_node:
	push	rbp
	push	r15
	lea	rdi, [rdi]
	push	r14
	mov	rbp, rbp
	push	r13
	nop	
	push	r12
	lea	rdi, [rdi]
	push	rbx
	mov	rbp, rbp
	sub	rsp, 0x18
	mov	rbp, rbp
	mov	r15, rdx
	lea	rdi, [rdi]
	mov	r12, rsi
	mov	rbx, rdi
	lea	rdi, [rdi]
	mov	rbp, qword ptr [rbx + 8]
	cmp	qword ptr [rbx + 0x10], rbp
	lea	rdi, [rdi]
	jae	.label_1112
.label_1114:
	mov	rax, qword ptr [rbx]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbx + 0x10]
	mov	rsp, rsp
	shl	rcx, 4
	nop	
	mov	qword ptr [rax + rcx], r12
	mov	qword ptr [rax + rcx + 8], r15
	mov	rax, qword ptr [rbx]
	mov	rcx, qword ptr [rbx + 0x10]
	mov	rsp, rsp
	shl	rcx, 4
	lea	rdi, [rdi]
	and	dword ptr [rax + rcx + 8], 0xfffc00ff
	movzx	eax, r15b
	cmp	eax, 5
	mov	rsp, rsp
	jne	.label_1113
	lea	rdi, [rdi]
	mov	cl, 1
	cmp	dword ptr [rbx + 0xb4], 1
	lea	rsi, [rsi]
	jg	.label_1111
.label_1113:
	lea	rdi, [rdi]
	cmp	eax, 6
	lea	rdi, [rdi]
	sete	cl
.label_1111:
	nop	
	movzx	eax, cl
	mov	rcx, qword ptr [rbx]
	mov	rdx, qword ptr [rbx + 0x10]
	shl	rdx, 4
	shl	eax, 0x14
	mov	esi, 0xffefffff
	and	esi, dword ptr [rcx + rdx + 8]
	mov	rbp, rbp
	or	esi, eax
	mov	dword ptr [rcx + rdx + 8], esi
	mov	rax, qword ptr [rbx + 0x10]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbx + 0x18]
	mov	qword ptr [rcx + rax*8], -1
	mov	rax, qword ptr [rbx + 0x10]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbx + 0x28]
	nop	
	lea	rax, [rax + rax*2]
	mov	rbp, rbp
	xorps	xmm0, xmm0
	movups	xmmword ptr [rcx + rax*8], xmm0
	lea	rsi, [rsi]
	mov	qword ptr [rcx + rax*8 + 0x10], 0
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbx + 0x10]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbx + 0x30]
	nop	
	lea	rax, [rax + rax*2]
	movups	xmmword ptr [rcx + rax*8], xmm0
	mov	rsp, rsp
	mov	qword ptr [rcx + rax*8 + 0x10], 0
	mov	r14, qword ptr [rbx + 0x10]
	mov	rbp, rbp
	lea	rax, [r14 + 1]
	nop	
	mov	qword ptr [rbx + 0x10], rax
.label_1109:
	mov	rax, r14
	mov	rsp, rsp
	add	rsp, 0x18
	lea	rdi, [rdi]
	pop	rbx
	pop	r12
	pop	r13
	lea	rsi, [rsi]
	pop	r14
	lea	rdi, [rdi]
	pop	r15
	lea	rsi, [rsi]
	pop	rbp
	lea	rsi, [rsi]
	ret	
.label_1112:
	lea	r13, [rbp + rbp]
	mov	r14, -1
	movabs	rax, 0xaaaaaaaaaaaaaaa
	cmp	r13, rax
	lea	rdi, [rdi]
	ja	.label_1109
	nop	
	mov	rdi, qword ptr [rbx]
	nop	
	mov	rsi, rbp
	lea	rdi, [rdi]
	shl	rsi, 5
	call	realloc
	test	rax, rax
	je	.label_1109
	mov	qword ptr [rsp], r13
	nop	
	mov	qword ptr [rbx], rax
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbx + 0x18]
	shl	rbp, 4
	mov	rsi, rbp
	lea	rdi, [rdi]
	call	realloc
	mov	qword ptr [rsp + 0x10], rax
	mov	rsp, rsp
	mov	rdi, qword ptr [rbx + 0x20]
	mov	rsi, rbp
	lea	rdi, [rdi]
	call	realloc
	mov	rsp, rsp
	mov	qword ptr [rsp + 8], rax
	nop	
	mov	rdi, qword ptr [rbx + 0x28]
	mov	rbp, rbp
	lea	rbp, [rbp + rbp*2]
	mov	rbp, rbp
	mov	rsi, rbp
	nop	
	call	realloc
	mov	r13, rax
	mov	rdi, qword ptr [rbx + 0x30]
	mov	rsp, rsp
	mov	rsi, rbp
	mov	rsp, rsp
	mov	rbp, qword ptr [rsp + 8]
	mov	rsp, rsp
	call	realloc
	mov	rdi, qword ptr [rsp + 0x10]
	nop	
	test	rdi, rdi
	je	.label_1110
	lea	rsi, [rsi]
	test	rbp, rbp
	nop	
	je	.label_1110
	mov	rsp, rsp
	test	r13, r13
	je	.label_1110
	mov	rbp, rbp
	test	rax, rax
	nop	
	je	.label_1110
	mov	qword ptr [rbx + 0x18], rdi
	lea	rdi, [rdi]
	mov	qword ptr [rbx + 0x20], rbp
	mov	qword ptr [rbx + 0x28], r13
	nop	
	mov	qword ptr [rbx + 0x30], rax
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp]
	lea	rdi, [rdi]
	mov	qword ptr [rbx + 8], rax
	jmp	.label_1114
.label_1110:
	mov	r15, rax
	mov	rsp, rsp
	call	free
	lea	rsi, [rsi]
	mov	rdi, rbp
	call	free
	mov	rsp, rsp
	mov	rdi, r13
	call	free
	lea	rsi, [rsi]
	mov	rdi, r15
	mov	rbp, rbp
	call	free
	jmp	.label_1109
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x411110

	.globl re_node_set_init_2
	.type re_node_set_init_2, @function
re_node_set_init_2:
	push	r15
	mov	rbp, rbp
	push	r14
	push	rbx
	mov	rsp, rsp
	mov	r15, rdx
	mov	r14, rsi
	mov	rbx, rdi
	mov	qword ptr [rbx], 2
	mov	rbp, rbp
	mov	edi, 0x10
	call	malloc
	mov	rcx, rax
	mov	rsp, rsp
	mov	qword ptr [rbx + 0x10], rcx
	mov	eax, 0xc
	lea	rsi, [rsi]
	test	rcx, rcx
	lea	rdi, [rdi]
	je	.label_1118
	lea	rsi, [rsi]
	cmp	r14, r15
	nop	
	jne	.label_1115
	mov	qword ptr [rbx + 8], 1
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbx + 0x10]
	nop	
	mov	qword ptr [rax], r14
	mov	rbp, rbp
	jmp	.label_1117
.label_1115:
	mov	qword ptr [rbx + 8], 2
	mov	rax, qword ptr [rbx + 0x10]
	lea	rsi, [rsi]
	jge	.label_1116
	nop	
	mov	qword ptr [rax], r14
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbx + 0x10]
	mov	qword ptr [rax + 8], r15
	jmp	.label_1117
.label_1116:
	lea	rdi, [rdi]
	mov	qword ptr [rax], r15
	mov	rax, qword ptr [rbx + 0x10]
	lea	rdi, [rdi]
	mov	qword ptr [rax + 8], r14
.label_1117:
	xor	eax, eax
.label_1118:
	lea	rdi, [rdi]
	pop	rbx
	lea	rdi, [rdi]
	pop	r14
	pop	r15
	lea	rsi, [rsi]
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4111c0

	.globl re_node_set_init_1
	.type re_node_set_init_1, @function
re_node_set_init_1:
	mov	rbp, rbp
	push	r14
	push	rbx
	push	rax
	mov	r14, rsi
	mov	rbx, rdi
	mov	rbp, rbp
	mov	qword ptr [rbx], 1
	mov	rsp, rsp
	mov	qword ptr [rbx + 8], 1
	mov	rbp, rbp
	mov	edi, 8
	nop	
	call	malloc
	mov	qword ptr [rbx + 0x10], rax
	nop	
	test	rax, rax
	je	.label_1119
	mov	rbp, rbp
	mov	qword ptr [rax], r14
	xor	eax, eax
.label_1120:
	add	rsp, 8
	lea	rsi, [rsi]
	pop	rbx
	pop	r14
	mov	rbp, rbp
	ret	
.label_1119:
	xorps	xmm0, xmm0
	movups	xmmword ptr [rbx], xmm0
	lea	rsi, [rsi]
	mov	eax, 0xc
	jmp	.label_1120
	.section	.text
	.align	32
	#Procedure 0x411220

	.globl calc_eclosure_iter
	.type calc_eclosure_iter, @function
calc_eclosure_iter:
	lea	rsi, [rsi]
	push	rbp
	push	r15
	push	r14
	lea	rdi, [rdi]
	push	r13
	mov	rbp, rbp
	push	r12
	push	rbx
	sub	rsp, 0x48
	mov	dword ptr [rsp + 4], ecx
	mov	r15, rdx
	mov	rbp, rsi
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 8], rdi
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp + 0x28]
	lea	r14, [r15 + r15*2]
	mov	rsi, qword ptr [rax + r14*8 + 8]
	lea	rdi, [rdi]
	inc	rsi
	lea	rdi, [rsp + 0x30]
	call	re_node_set_alloc
	lea	rdi, [rdi]
	test	eax, eax
	mov	rbp, rbp
	jne	.label_1123
	mov	rax, qword ptr [rbp + 0x30]
	nop	
	mov	qword ptr [rax + r14*8 + 8], -1
	nop	
	mov	rax, qword ptr [rbp]
	mov	rbx, r15
	shl	rbx, 4
	mov	r8d, dword ptr [rax + rbx + 8]
	shr	r8d, 8
	nop	
	and	r8d, 0x3ff
	nop	
	je	.label_1130
	mov	rcx, qword ptr [rbp + 0x28]
	cmp	qword ptr [rcx + r14*8 + 8], 0
	je	.label_1130
	mov	rsp, rsp
	mov	rcx, qword ptr [rcx + r14*8 + 0x10]
	mov	rbp, rbp
	mov	rcx, qword ptr [rcx]
	shl	rcx, 4
	test	byte ptr [rax + rcx + 0xa], 4
	lea	rsi, [rsi]
	jne	.label_1130
	mov	rbp, rbp
	mov	rdi, rbp
	mov	rsi, r15
	lea	rdi, [rdi]
	mov	rdx, r15
	lea	rdi, [rdi]
	mov	rcx, r15
	call	duplicate_node_closure
	mov	rsp, rsp
	test	eax, eax
	jne	.label_1123
.label_1130:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp]
	mov	rsp, rsp
	test	byte ptr [rax + rbx + 8], 8
	lea	rsi, [rsi]
	jne	.label_1132
	mov	rbx, r15
	xor	r15d, r15d
	mov	rbp, rbp
	jmp	.label_1122
.label_1132:
	nop	
	mov	rbx, r15
	mov	rax, qword ptr [rbp + 0x28]
	mov	rbp, rbp
	cmp	qword ptr [rax + r14*8 + 8], 0
	jle	.label_1128
	lea	rdi, [rdi]
	xor	r15d, r15d
	xor	r13d, r13d
	nop	word ptr cs:[rax + rax]
.label_1126:
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp + 0x28]
	mov	rax, qword ptr [rbp + 0x30]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rcx + r14*8 + 0x10]
	mov	rbp, rbp
	mov	rdx, qword ptr [rcx + r13*8]
	nop	
	lea	r12, [rdx + rdx*2]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rax + r12*8 + 8]
	nop	
	cmp	rcx, -1
	lea	rsi, [rsi]
	je	.label_1121
	test	rcx, rcx
	mov	rsp, rsp
	jne	.label_1129
	lea	rdi, [rdi]
	xor	ecx, ecx
	nop	
	lea	rdi, [rsp + 0x10]
	mov	rsi, rbp
	call	calc_eclosure_iter
	nop	
	test	eax, eax
	lea	rdi, [rdi]
	je	.label_1125
	lea	rsi, [rsi]
	jmp	.label_1123
	nop	dword ptr [rax]
.label_1129:
	mov	rbp, rbp
	mov	rcx, qword ptr [rax + r12*8 + 0x10]
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x20], rcx
	movups	xmm0, xmmword ptr [rax + r12*8]
	movaps	xmmword ptr [rsp + 0x10], xmm0
.label_1125:
	lea	rdi, [rsp + 0x30]
	lea	rsi, [rsp + 0x10]
	call	re_node_set_merge
	test	eax, eax
	jne	.label_1123
	mov	rax, qword ptr [rbp + 0x30]
	cmp	qword ptr [rax + r12*8 + 8], 0
	jne	.label_1127
	mov	rdi, qword ptr [rsp + 0x20]
	call	free
.label_1121:
	mov	rsp, rsp
	mov	r15b, 1
.label_1127:
	nop	
	inc	r13
	mov	rbp, rbp
	mov	rax, qword ptr [rbp + 0x28]
	mov	rsp, rsp
	cmp	r13, qword ptr [rax + r14*8 + 8]
	jl	.label_1126
	mov	rbp, rbp
	jmp	.label_1122
.label_1128:
	xor	r15d, r15d
.label_1122:
	mov	rbp, rbp
	lea	rdi, [rsp + 0x30]
	mov	rsp, rsp
	mov	rsi, rbx
	call	re_node_set_insert
	mov	rbp, rbp
	mov	cl, al
	mov	eax, 0xc
	mov	rbp, rbp
	test	cl, cl
	je	.label_1123
	test	r15b, 1
	mov	rax, qword ptr [rbp + 0x30]
	je	.label_1131
	lea	rsi, [rsi]
	mov	ecx, dword ptr [rsp + 4]
	test	cl, cl
	lea	rsi, [rsi]
	jne	.label_1131
	lea	rdi, [rdi]
	mov	qword ptr [rax + r14*8 + 8], 0
	nop	
	jmp	.label_1124
.label_1131:
	mov	rcx, qword ptr [rsp + 0x40]
	mov	qword ptr [rax + r14*8 + 0x10], rcx
	movups	xmm0, xmmword ptr [rsp + 0x30]
	nop	
	movups	xmmword ptr [rax + r14*8], xmm0
.label_1124:
	nop	
	mov	rcx, qword ptr [rsp + 8]
	mov	rax, qword ptr [rsp + 0x40]
	mov	rsp, rsp
	mov	qword ptr [rcx + 0x10], rax
	lea	rdi, [rdi]
	movups	xmm0, xmmword ptr [rsp + 0x30]
	mov	rsp, rsp
	movups	xmmword ptr [rcx], xmm0
	xor	eax, eax
.label_1123:
	mov	rsp, rsp
	add	rsp, 0x48
	pop	rbx
	mov	rsp, rsp
	pop	r12
	pop	r13
	lea	rsi, [rsi]
	pop	r14
	pop	r15
	lea	rdi, [rdi]
	pop	rbp
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4114b0

	.globl re_node_set_alloc
	.type re_node_set_alloc, @function
re_node_set_alloc:
	mov	rsp, rsp
	push	rbx
	mov	rbx, rdi
	lea	rdi, [rdi]
	mov	qword ptr [rbx], rsi
	mov	qword ptr [rbx + 8], 0
	lea	rdi, [rsi*8]
	call	malloc
	mov	rbp, rbp
	mov	qword ptr [rbx + 0x10], rax
	xor	ecx, ecx
	lea	rsi, [rsi]
	test	rax, rax
	nop	
	mov	eax, 0xc
	lea	rdi, [rdi]
	cmovne	eax, ecx
	mov	rsp, rsp
	pop	rbx
	mov	rbp, rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x411500

	.globl duplicate_node_closure
	.type duplicate_node_closure, @function
duplicate_node_closure:
	mov	rbp, rbp
	push	rbp
	mov	rbp, rbp
	push	r15
	mov	rsp, rsp
	push	r14
	push	r13
	lea	rdi, [rdi]
	push	r12
	lea	rdi, [rdi]
	push	rbx
	sub	rsp, 0x18
	mov	rsp, rsp
	mov	ebx, r8d
	mov	qword ptr [rsp + 8], rcx
	mov	r13, rdx
	mov	r14, rsi
	nop	
	mov	rbp, rdi
.label_1137:
	mov	rsp, rsp
	mov	dword ptr [rsp + 0x10], ebx
	nop	dword ptr [rax]
.label_1138:
	mov	rcx, qword ptr [rbp]
	mov	rax, r14
	shl	rax, 4
	lea	rsi, [rsi]
	movzx	ecx, byte ptr [rcx + rax + 8]
	lea	rsi, [rsi]
	cmp	ecx, 4
	lea	rdi, [rdi]
	jne	.label_1133
	mov	rbp, rbp
	mov	rax, qword ptr [rbp + 0x18]
	mov	rcx, qword ptr [rbp + 0x28]
	mov	rbx, qword ptr [rax + r14*8]
	mov	r15, rbp
	lea	r12, [r13 + r13*2]
	lea	rsi, [rsi]
	mov	qword ptr [rcx + r12*8 + 8], 0
	mov	rdi, r15
	lea	rsi, [rsi]
	mov	rsi, rbx
	mov	edx, dword ptr [rsp + 0x10]
	mov	rsp, rsp
	call	duplicate_node
	lea	rdi, [rdi]
	mov	rbp, rax
	nop	
	cmp	rbp, -1
	je	.label_1139
	mov	rsp, rsp
	mov	dword ptr [rsp + 0x14], 0xc
	mov	rbp, rbp
	mov	rax, qword ptr [r15 + 0x18]
	mov	rcx, qword ptr [rax + r14*8]
	mov	rsp, rsp
	mov	qword ptr [rax + r13*8], rcx
	nop	
	mov	rax, qword ptr [r15 + 0x28]
	lea	rsi, [rsi]
	lea	rdi, [rax + r12*8]
	mov	rsi, rbp
	nop	
	call	re_node_set_insert
	mov	rbp, rbp
	test	al, al
	mov	r14, rbx
	mov	rbp, rbp
	mov	r13, rbp
	mov	rbp, r15
	mov	rbp, rbp
	jne	.label_1138
	nop	
	jmp	.label_1134
	nop	dword ptr [rax]
.label_1133:
	mov	rcx, qword ptr [rbp + 0x28]
	nop	
	lea	r15, [r14 + r14*2]
	mov	rsp, rsp
	mov	rdx, qword ptr [rcx + r15*8 + 8]
	test	rdx, rdx
	mov	rbp, rbp
	je	.label_1145
	mov	rsi, qword ptr [rcx + r15*8 + 0x10]
	mov	rsi, qword ptr [rsi]
	lea	r12, [r13 + r13*2]
	mov	qword ptr [rcx + r12*8 + 8], 0
	lea	rdi, [rdi]
	cmp	rdx, 1
	je	.label_1140
	lea	rdi, [rdi]
	mov	rdi, rbp
	nop	
	mov	rbx, rsi
	mov	rbp, rbp
	mov	r13d, dword ptr [rsp + 0x10]
	mov	edx, r13d
	mov	rbp, rbp
	call	search_duplicated_node
	cmp	rax, -1
	je	.label_1144
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp + 0x28]
	lea	rdi, [rcx + r12*8]
	mov	rsi, rax
	call	re_node_set_insert
	mov	dword ptr [rsp + 0x14], 0xc
	test	al, al
	nop	
	jne	.label_1135
	jmp	.label_1134
.label_1144:
	mov	rdi, rbp
	mov	rbp, rbp
	mov	rsi, rbx
	mov	edx, r13d
	mov	rbp, rbp
	call	duplicate_node
	mov	r14, rax
	lea	rdi, [rdi]
	mov	dword ptr [rsp + 0x14], 0xc
	cmp	r14, -1
	nop	
	je	.label_1134
	mov	rax, qword ptr [rbp + 0x28]
	lea	rdi, [rax + r12*8]
	nop	
	mov	rsi, r14
	call	re_node_set_insert
	test	al, al
	mov	rsi, rbx
	lea	rsi, [rsi]
	je	.label_1134
	lea	rdi, [rdi]
	mov	rdi, rbp
	mov	rdx, r14
	mov	rbp, rbp
	mov	rcx, qword ptr [rsp + 8]
	lea	rdi, [rdi]
	mov	r8d, r13d
	mov	rsp, rsp
	call	duplicate_node_closure
	mov	dword ptr [rsp + 0x14], eax
	test	eax, eax
	jne	.label_1134
.label_1135:
	mov	rax, qword ptr [rbp + 0x28]
	mov	rax, qword ptr [rax + r15*8 + 0x10]
	mov	rsp, rsp
	mov	r14, qword ptr [rax + 8]
	mov	rbp, rbp
	mov	rdi, rbp
	nop	
	mov	rsi, r14
	mov	edx, r13d
	lea	rsi, [rsi]
	call	duplicate_node
	mov	r13, rax
	cmp	r13, -1
	je	.label_1142
	mov	rbp, rbp
	mov	dword ptr [rsp + 0x14], 0xc
	mov	rbp, rbp
	mov	rax, qword ptr [rbp + 0x28]
	mov	rsp, rsp
	lea	rdi, [rax + r12*8]
	mov	rsp, rsp
	mov	rsi, r13
	call	re_node_set_insert
	test	al, al
	mov	rbp, rbp
	jne	.label_1138
	jmp	.label_1134
.label_1140:
	cmp	r14, qword ptr [rsp + 8]
	jne	.label_1143
	cmp	r13, r14
	jne	.label_1136
.label_1143:
	mov	rcx, qword ptr [rbp]
	nop	
	mov	eax, dword ptr [rcx + rax + 8]
	lea	rdi, [rdi]
	shr	eax, 8
	mov	rbp, rbp
	and	eax, 0x3ff
	nop	
	mov	ebx, dword ptr [rsp + 0x10]
	mov	rsp, rsp
	or	ebx, eax
	nop	
	mov	rdi, rbp
	mov	r14, rsi
	nop	
	mov	edx, ebx
	mov	rsp, rsp
	call	duplicate_node
	mov	rsp, rsp
	mov	r13, rax
	mov	dword ptr [rsp + 0x14], 0xc
	cmp	r13, -1
	lea	rdi, [rdi]
	je	.label_1134
	mov	rax, qword ptr [rbp + 0x28]
	nop	
	lea	rdi, [rax + r12*8]
	nop	
	mov	rsi, r13
	call	re_node_set_insert
	test	al, al
	mov	rsp, rsp
	jne	.label_1137
	jmp	.label_1134
.label_1139:
	mov	dword ptr [rsp + 0x14], 0xc
	lea	rsi, [rsi]
	jmp	.label_1134
.label_1142:
	mov	dword ptr [rsp + 0x14], 0xc
	lea	rsi, [rsi]
	jmp	.label_1134
.label_1145:
	mov	rax, qword ptr [rbp + 0x18]
	mov	rsp, rsp
	mov	rcx, qword ptr [rax + r14*8]
	lea	rsi, [rsi]
	mov	qword ptr [rax + r13*8], rcx
.label_1141:
	nop	
	mov	dword ptr [rsp + 0x14], 0
.label_1134:
	mov	eax, dword ptr [rsp + 0x14]
	add	rsp, 0x18
	mov	rsp, rsp
	pop	rbx
	lea	rdi, [rdi]
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_1136:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp + 0x28]
	lea	rdi, [rax + r12*8]
	call	re_node_set_insert
	mov	dword ptr [rsp + 0x14], 0xc
	test	al, al
	je	.label_1134
	jmp	.label_1141
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x411850

	.globl re_node_set_merge
	.type re_node_set_merge, @function
re_node_set_merge:
	lea	rdi, [rdi]
	push	r15
	push	r14
	mov	rbp, rbp
	push	r13
	lea	rdi, [rdi]
	push	r12
	push	rbx
	mov	r15, rsi
	mov	r14, rdi
	nop	
	xor	eax, eax
	lea	rdi, [rdi]
	test	r15, r15
	je	.label_1150
	mov	rsp, rsp
	mov	rdx, qword ptr [r15 + 8]
	test	rdx, rdx
	je	.label_1150
	nop	
	mov	rbx, qword ptr [r14]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [r14 + 8]
	lea	rax, [rcx + rdx*2]
	lea	rsi, [rsi]
	cmp	rbx, rax
	jge	.label_1148
	mov	rsp, rsp
	add	rbx, rdx
	lea	rdi, [rdi]
	mov	rdi, qword ptr [r14 + 0x10]
	mov	rsi, rbx
	lea	rdi, [rdi]
	shl	rsi, 4
	nop	
	call	realloc
	mov	rcx, rax
	nop	
	mov	eax, 0xc
	mov	rsp, rsp
	test	rcx, rcx
	lea	rdi, [rdi]
	je	.label_1150
	lea	rsi, [rsi]
	add	rbx, rbx
	mov	rsp, rsp
	mov	qword ptr [r14 + 0x10], rcx
	mov	qword ptr [r14], rbx
	mov	rcx, qword ptr [r14 + 8]
.label_1148:
	nop	
	mov	rax, qword ptr [r15 + 8]
	lea	rdi, [rdi]
	test	rcx, rcx
	je	.label_1153
	lea	rsi, [rsi]
	lea	rbx, [rcx + rax*2]
	lea	rdi, [rdi]
	dec	rax
	nop	
	dec	rcx
	mov	rbp, rbp
	mov	rdx, rax
	or	rdx, rcx
	nop	
	js	.label_1157
	mov	rdx, qword ptr [r14 + 0x10]
	mov	rsi, qword ptr [r15 + 0x10]
	jmp	.label_1149
.label_1154:
	mov	rbp, rbp
	dec	rax
.label_1158:
	mov	rbp, rbp
	dec	rcx
	jmp	.label_1152
	nop	dword ptr [rax]
.label_1149:
	mov	rdi, qword ptr [rsi + rax*8]
	nop	
	cmp	qword ptr [rdx + rcx*8], rdi
	mov	rsp, rsp
	je	.label_1154
	lea	rsi, [rsi]
	jge	.label_1158
	dec	rax
	mov	qword ptr [rdx + rbx*8 - 8], rdi
	dec	rbx
.label_1152:
	mov	rsp, rsp
	mov	rdi, rax
	lea	rsi, [rsi]
	or	rdi, rcx
	mov	rbp, rbp
	jns	.label_1149
.label_1157:
	test	rax, rax
	mov	rbp, rbp
	js	.label_1155
	lea	rdi, [rdi]
	lea	rcx, [rax + 1]
	lea	rdi, [rdi]
	sub	rbx, rcx
	mov	rsp, rsp
	lea	rdi, [rbx*8]
	add	rdi, qword ptr [r14 + 0x10]
	mov	rsi, qword ptr [r15 + 0x10]
	mov	rbp, rbp
	lea	rdx, [rax*8 + 8]
	call	memcpy
.label_1155:
	mov	r11, qword ptr [r14 + 8]
	mov	rax, qword ptr [r15 + 8]
	lea	rdi, [rdi]
	lea	r10, [r11 + rax*2 - 1]
	lea	rsi, [rsi]
	mov	r15, r10
	lea	rdi, [rdi]
	sub	r15, rbx
	inc	r15
	mov	eax, 0
	lea	rdi, [rdi]
	je	.label_1150
	lea	rax, [r15 + r11]
	lea	rdi, [rdi]
	mov	qword ptr [r14 + 8], rax
	mov	rbp, rbp
	lea	r8, [r11 - 1]
.label_1147:
	lea	r9, [r11 - 1]
	mov	rcx, qword ptr [r14 + 0x10]
	lea	rsi, [rsi]
	lea	rdx, [r15*8]
	nop	
	lea	rax, [r15 + r8]
	nop	
	lea	r12, [rcx + rax*8]
	lea	r13, [rcx + r10*8]
	xor	esi, esi
	nop	dword ptr [rax]
.label_1156:
	nop	
	mov	rax, qword ptr [r13 + rsi*8]
	mov	rdi, qword ptr [rcx + r11*8 - 8]
	cmp	rax, rdi
	jle	.label_1146
	mov	rbp, rbp
	mov	qword ptr [r12 + rsi*8], rax
	nop	
	add	rdx, -8
	dec	rsi
	xor	eax, eax
	mov	rdi, r15
	mov	rbp, rbp
	add	rdi, rsi
	jne	.label_1156
	lea	rdi, [rdi]
	jmp	.label_1150
	nop	word ptr cs:[rax + rax]
.label_1146:
	lea	rdi, [rdi]
	mov	qword ptr [r12 + rsi*8], rdi
	nop	
	add	r15, rsi
	dec	r8
	lea	rsi, [rsi]
	add	r10, rsi
	cmp	r11, 1
	mov	r11, r9
	jg	.label_1147
	mov	rdi, qword ptr [r14 + 0x10]
	mov	rsp, rsp
	lea	rsi, [rdi + rbx*8]
	jmp	.label_1151
.label_1153:
	mov	qword ptr [r14 + 8], rax
	mov	rdi, qword ptr [r14 + 0x10]
	mov	rdx, qword ptr [r15 + 8]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [r15 + 0x10]
	shl	rdx, 3
.label_1151:
	nop	
	call	memcpy
	lea	rsi, [rsi]
	xor	eax, eax
.label_1150:
	lea	rsi, [rsi]
	pop	rbx
	pop	r12
	mov	rsp, rsp
	pop	r13
	mov	rsp, rsp
	pop	r14
	mov	rbp, rbp
	pop	r15
	lea	rdi, [rdi]
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x411ab0

	.globl re_node_set_insert
	.type re_node_set_insert, @function
re_node_set_insert:
	push	r14
	push	rbx
	push	rax
	mov	r14, rsi
	mov	rbx, rdi
	mov	rsi, qword ptr [rbx]
	test	rsi, rsi
	je	.label_1166
	mov	rax, qword ptr [rbx + 8]
	mov	rsp, rsp
	test	rax, rax
	mov	rsp, rsp
	je	.label_1163
	cmp	rsi, rax
	lea	rdi, [rdi]
	jne	.label_1168
	lea	rax, [rsi + rsi]
	nop	
	mov	qword ptr [rbx], rax
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbx + 0x10]
	mov	rbp, rbp
	shl	rsi, 4
	call	realloc
	test	rax, rax
	je	.label_1159
	mov	qword ptr [rbx + 0x10], rax
.label_1168:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbx + 8]
	mov	rcx, qword ptr [rbx + 0x10]
	lea	rsi, [rsi]
	cmp	qword ptr [rcx], r14
	jle	.label_1164
	test	rax, rax
	jle	.label_1165
	nop	
	mov	rcx, qword ptr [rbx + 0x10]
	nop	word ptr [rax + rax]
.label_1160:
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rcx + rax*8 - 8]
	lea	rdi, [rdi]
	mov	qword ptr [rcx + rax*8], rdx
	lea	rsi, [rsi]
	cmp	rax, 1
	lea	rax, [rax - 1]
	mov	rsp, rsp
	jg	.label_1160
	jmp	.label_1165
.label_1166:
	mov	rbp, rbp
	mov	rdi, rbx
	lea	rsi, [rsi]
	mov	rsi, r14
	lea	rsi, [rsi]
	call	re_node_set_init_1
	mov	rsp, rsp
	test	eax, eax
	sete	al
	lea	rdi, [rdi]
	jmp	.label_1162
.label_1163:
	mov	rax, qword ptr [rbx + 0x10]
	lea	rsi, [rsi]
	mov	qword ptr [rax], r14
	jmp	.label_1167
.label_1164:
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbx + 0x10]
	mov	rcx, qword ptr [rsi + rax*8 - 8]
	lea	rdi, [rdi]
	cmp	rcx, r14
	mov	rbp, rbp
	jle	.label_1165
	mov	rsp, rsp
	mov	rdx, qword ptr [rbx + 0x10]
	nop	dword ptr [rax]
.label_1161:
	lea	rdi, [rdi]
	mov	qword ptr [rsi + rax*8], rcx
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rdx + rax*8 - 0x10]
	dec	rax
	cmp	rcx, r14
	mov	rsp, rsp
	mov	rsi, rdx
	mov	rbp, rbp
	jg	.label_1161
.label_1165:
	mov	rcx, qword ptr [rbx + 0x10]
	mov	qword ptr [rcx + rax*8], r14
.label_1167:
	lea	rdi, [rdi]
	inc	qword ptr [rbx + 8]
	mov	al, 1
.label_1162:
	add	rsp, 8
	lea	rdi, [rdi]
	pop	rbx
	lea	rsi, [rsi]
	pop	r14
	ret	
.label_1159:
	xor	eax, eax
	jmp	.label_1162
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x411bf0

	.globl duplicate_node
	.type duplicate_node, @function
duplicate_node:
	push	rbp
	push	r15
	push	r14
	lea	rdi, [rdi]
	push	rbx
	nop	
	push	rax
	lea	rdi, [rdi]
	mov	ebp, edx
	mov	r14, rsi
	mov	rbp, rbp
	mov	rbx, rdi
	mov	rax, qword ptr [rbx]
	mov	r15, r14
	nop	
	shl	r15, 4
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rax + r15]
	mov	rbp, rbp
	mov	rdx, qword ptr [rax + r15 + 8]
	mov	rbp, rbp
	call	re_dfa_add_node
	lea	rsi, [rsi]
	cmp	rax, -1
	mov	rbp, rbp
	je	.label_1169
	mov	rcx, qword ptr [rbx]
	lea	rsi, [rsi]
	mov	rdx, rax
	mov	rbp, rbp
	shl	rdx, 4
	shl	ebp, 8
	lea	rsi, [rsi]
	and	ebp, 0x3ff00
	lea	rsi, [rsi]
	mov	esi, 0xfffc00ff
	and	esi, dword ptr [rcx + rdx + 8]
	or	esi, ebp
	mov	rsp, rsp
	mov	dword ptr [rcx + rdx + 8], esi
	mov	rcx, qword ptr [rbx]
	mov	esi, 0x3ff00
	lea	rsi, [rsi]
	and	esi, dword ptr [rcx + r15 + 8]
	mov	rsp, rsp
	or	dword ptr [rcx + rdx + 8], esi
	mov	rcx, qword ptr [rbx]
	or	dword ptr [rcx + rdx + 8], 0x40000
	nop	
	mov	rcx, qword ptr [rbx + 0x20]
	nop	
	mov	qword ptr [rcx + rax*8], r14
.label_1169:
	mov	rsp, rsp
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x411cb0

	.globl search_duplicated_node
	.type search_duplicated_node, @function
search_duplicated_node:
	mov	r8, qword ptr [rdi + 0x10]
	mov	rsp, rsp
	lea	r10, [r8 - 1]
	mov	rax, -1
	test	r10, r10
	jle	.label_1170
	lea	rsi, [rsi]
	mov	r9, qword ptr [rdi]
	lea	rsi, [rsi]
	mov	rcx, r10
	lea	rdi, [rdi]
	shl	rcx, 4
	mov	r11d, dword ptr [r9 + rcx + 8]
	lea	rdi, [rdi]
	mov	ecx, r11d
	mov	rbp, rbp
	and	ecx, 0x40000
	je	.label_1170
	mov	r9, qword ptr [rdi + 0x20]
	shl	r8, 4
	add	r8, -0x18
.label_1172:
	lea	rsi, [rsi]
	cmp	qword ptr [r9 + r10*8], rsi
	jne	.label_1171
	shr	r11d, 8
	and	r11d, 0x3ff
	cmp	r11d, edx
	mov	rbp, rbp
	je	.label_1173
.label_1171:
	lea	rdi, [rdi]
	dec	r10
	test	r10, r10
	jle	.label_1170
	mov	rcx, qword ptr [rdi]
	mov	r11d, dword ptr [rcx + r8]
	nop	
	mov	ecx, r11d
	and	ecx, 0x40000
	lea	rdi, [rdi]
	add	r8, -0x10
	mov	rbp, rbp
	test	ecx, ecx
	jne	.label_1172
	mov	rsp, rsp
	jmp	.label_1170
.label_1173:
	mov	rax, r10
.label_1170:
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x411d50

	.globl re_node_set_insert_last
	.type re_node_set_insert_last, @function
re_node_set_insert_last:
	push	r14
	lea	rdi, [rdi]
	push	rbx
	mov	rsp, rsp
	push	rax
	lea	rdi, [rdi]
	mov	r14, rsi
	mov	rbx, rdi
	mov	rax, qword ptr [rbx]
	cmp	rax, qword ptr [rbx + 8]
	jne	.label_1174
	lea	rcx, [rax + rax + 2]
	lea	rax, [rax + rax]
	mov	rbp, rbp
	mov	qword ptr [rbx], rcx
	mov	rsp, rsp
	mov	rdi, qword ptr [rbx + 0x10]
	mov	rsp, rsp
	lea	rsi, [rax*8 + 0x10]
	mov	rsp, rsp
	call	realloc
	test	rax, rax
	je	.label_1175
	mov	qword ptr [rbx + 0x10], rax
.label_1174:
	mov	rax, qword ptr [rbx + 8]
	lea	rcx, [rax + 1]
	mov	qword ptr [rbx + 8], rcx
	mov	rcx, qword ptr [rbx + 0x10]
	mov	rbp, rbp
	mov	qword ptr [rcx + rax*8], r14
	mov	al, 1
.label_1176:
	lea	rdi, [rdi]
	add	rsp, 8
	lea	rsi, [rsi]
	pop	rbx
	pop	r14
	ret	
.label_1175:
	nop	
	xor	eax, eax
	lea	rdi, [rdi]
	jmp	.label_1176
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x411dd0

	.globl re_node_set_init_copy
	.type re_node_set_init_copy, @function
re_node_set_init_copy:
	lea	rdi, [rdi]
	push	r14
	push	rbx
	push	rax
	mov	rbp, rbp
	mov	rbx, rsi
	mov	r14, rdi
	nop	
	mov	rdi, qword ptr [rbx + 8]
	mov	rbp, rbp
	mov	qword ptr [r14 + 8], rdi
	mov	rsp, rsp
	cmp	qword ptr [rbx + 8], 0
	mov	rsp, rsp
	jle	.label_1177
	mov	qword ptr [r14], rdi
	shl	rdi, 3
	call	malloc
	nop	
	mov	qword ptr [r14 + 0x10], rax
	lea	rsi, [rsi]
	test	rax, rax
	je	.label_1178
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbx + 8]
	mov	rsi, qword ptr [rbx + 0x10]
	nop	
	shl	rdx, 3
	mov	rdi, rax
	call	memcpy
	jmp	.label_1179
.label_1177:
	lea	rsi, [rsi]
	xorps	xmm0, xmm0
	nop	
	movups	xmmword ptr [r14], xmm0
	mov	qword ptr [r14 + 0x10], 0
.label_1179:
	xor	eax, eax
.label_1180:
	lea	rdi, [rdi]
	add	rsp, 8
	pop	rbx
	lea	rdi, [rdi]
	pop	r14
	ret	
.label_1178:
	xorps	xmm0, xmm0
	nop	
	movups	xmmword ptr [r14], xmm0
	mov	eax, 0xc
	jmp	.label_1180
	nop	
	.section	.text
	.align	32
	#Procedure 0x411e60

	.globl re_node_set_contains
	.type re_node_set_contains, @function
re_node_set_contains:
	lea	rdi, [rdi]
	mov	r9, qword ptr [rdi + 8]
	lea	rsi, [rsi]
	xor	eax, eax
	test	r9, r9
	jle	.label_1181
	nop	
	xor	eax, eax
	lea	rsi, [rsi]
	dec	r9
	mov	rbp, rbp
	je	.label_1182
	mov	r8, qword ptr [rdi + 0x10]
	xor	eax, eax
	nop	word ptr cs:[rax + rax]
.label_1184:
	mov	rbp, rbp
	lea	rdx, [r9 + rax]
	shr	rdx, 1
	cmp	qword ptr [r8 + rdx*8], rsi
	lea	rcx, [rdx + 1]
	nop	
	cmovl	rax, rcx
	cmovge	r9, rdx
	cmp	rax, r9
	mov	rbp, rbp
	jb	.label_1184
.label_1182:
	nop	
	mov	rcx, qword ptr [rdi + 0x10]
	mov	rbp, rbp
	cmp	qword ptr [rcx + rax*8], rsi
	jne	.label_1183
	lea	rsi, [rsi]
	inc	rax
	ret	
.label_1183:
	mov	rbp, rbp
	xor	eax, eax
.label_1181:
	mov	rbp, rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x411ee0

	.globl re_acquire_state_context
	.type re_acquire_state_context, @function
re_acquire_state_context:
	lea	rdi, [rdi]
	push	rbp
	nop	
	push	r15
	lea	rdi, [rdi]
	push	r14
	nop	
	push	r13
	lea	rsi, [rsi]
	push	r12
	push	rbx
	lea	rdi, [rdi]
	sub	rsp, 0x18
	mov	r13d, ecx
	mov	rbp, rsi
	mov	rsp, rsp
	cmp	qword ptr [rdx + 8], 0
	lea	rdi, [rdi]
	je	.label_1185
	nop	
	mov	qword ptr [rsp], rdi
	mov	rdi, rdx
	mov	qword ptr [rsp + 0x10], rdx
	lea	rdi, [rdi]
	mov	esi, r13d
	mov	rsp, rsp
	call	calc_state_hash
	mov	rbx, rax
	mov	rax, qword ptr [rbp + 0x40]
	mov	rcx, qword ptr [rbp + 0x88]
	mov	qword ptr [rsp + 8], rbp
	lea	rsi, [rsi]
	and	rcx, rbx
	lea	rcx, [rcx + rcx*2]
	nop	
	cmp	qword ptr [rax + rcx*8], 0
	nop	
	jle	.label_1187
	nop	
	lea	r14, [rax + rcx*8]
	lea	rsi, [rsi]
	mov	r15, qword ptr [rax + rcx*8 + 0x10]
	xor	r12d, r12d
	nop	word ptr cs:[rax + rax]
.label_1190:
	nop	
	mov	rbp, qword ptr [r15 + r12*8]
	cmp	qword ptr [rbp], rbx
	jne	.label_1188
	mov	rsp, rsp
	movzx	eax, byte ptr [rbp + 0x68]
	mov	rsp, rsp
	and	eax, 0xf
	cmp	eax, r13d
	jne	.label_1188
	mov	rdi, qword ptr [rbp + 0x50]
	mov	rsi, qword ptr [rsp + 0x10]
	mov	rsp, rsp
	call	re_node_set_compare
	nop	
	test	al, al
	nop	
	jne	.label_1186
.label_1188:
	lea	rdi, [rdi]
	inc	r12
	cmp	r12, qword ptr [r14]
	jl	.label_1190
.label_1187:
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rsp + 8]
	mov	rsi, qword ptr [rsp + 0x10]
	mov	edx, r13d
	mov	rcx, rbx
	call	create_cd_newstate
	mov	rbp, rax
	lea	rsi, [rsi]
	test	rbp, rbp
	mov	rsp, rsp
	jne	.label_1186
	mov	rax, qword ptr [rsp]
	mov	rsp, rsp
	mov	dword ptr [rax], 0xc
	jmp	.label_1189
.label_1185:
	mov	dword ptr [rdi], 0
.label_1189:
	xor	ebp, ebp
.label_1186:
	lea	rsi, [rsi]
	mov	rax, rbp
	mov	rsp, rsp
	add	rsp, 0x18
	nop	
	pop	rbx
	mov	rsp, rsp
	pop	r12
	mov	rsp, rsp
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x412010

	.globl calc_state_hash
	.type calc_state_hash, @function
calc_state_hash:
	mov	rcx, qword ptr [rdi + 8]
	lea	rdi, [rdi]
	mov	eax, esi
	lea	rdi, [rdi]
	add	rax, rcx
	test	rcx, rcx
	jle	.label_1191
	mov	rcx, qword ptr [rdi + 8]
	nop	
	mov	rdx, qword ptr [rdi + 0x10]
	xor	esi, esi
	nop	
.label_1192:
	add	rax, qword ptr [rdx + rsi*8]
	mov	rsp, rsp
	inc	rsi
	cmp	rsi, rcx
	jl	.label_1192
.label_1191:
	ret	
	.section	.text
	.align	32
	#Procedure 0x412040

	.globl re_node_set_compare
	.type re_node_set_compare, @function
re_node_set_compare:
	xor	eax, eax
	lea	rdi, [rdi]
	test	rdi, rdi
	je	.label_1193
	test	rsi, rsi
	mov	rsp, rsp
	je	.label_1193
	nop	
	mov	rcx, qword ptr [rdi + 8]
	cmp	rcx, qword ptr [rsi + 8]
	mov	rbp, rbp
	jne	.label_1194
.label_1195:
	nop	
	mov	al, 1
	nop	
	test	rcx, rcx
	mov	rsp, rsp
	jle	.label_1193
	mov	rbp, rbp
	mov	rax, qword ptr [rdi + 0x10]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax + rcx*8 - 8]
	mov	rdx, qword ptr [rsi + 0x10]
	mov	rsp, rsp
	cmp	rax, qword ptr [rdx + rcx*8 - 8]
	lea	rcx, [rcx - 1]
	je	.label_1195
.label_1194:
	xor	eax, eax
.label_1193:
	ret	
	.section	.text
	.align	32
	#Procedure 0x412090

	.globl create_cd_newstate
	.type create_cd_newstate, @function
create_cd_newstate:
	push	rbp
	push	r15
	lea	rdi, [rdi]
	push	r14
	nop	
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x28
	mov	qword ptr [rsp + 0x10], rcx
	mov	r14d, edx
	mov	rsp, rsp
	mov	rbp, rsi
	lea	rsi, [rsi]
	mov	rbx, rdi
	mov	edi, 0x70
	lea	rdi, [rdi]
	mov	esi, 1
	call	rpl_calloc
	lea	rdi, [rdi]
	mov	r15, rax
	xor	eax, eax
	mov	rbp, rbp
	test	r15, r15
	je	.label_1198
	mov	r12, r15
	nop	
	add	r12, 8
	lea	rsi, [rsi]
	mov	rdi, r12
	mov	rsi, rbp
	mov	rsp, rsp
	call	re_node_set_init_copy
	lea	rsi, [rsi]
	test	eax, eax
	jne	.label_1210
	lea	rsi, [rsi]
	mov	al, byte ptr [r15 + 0x68]
	mov	cl, r14b
	mov	rsp, rsp
	and	cl, 0xf
	mov	rbp, rbp
	and	al, 0xf0
	or	al, cl
	mov	byte ptr [r15 + 0x68], al
	mov	qword ptr [r15 + 0x50], r12
	nop	
	mov	qword ptr [rsp + 0x20], r12
	nop	
	cmp	qword ptr [rbp + 8], 0
	jle	.label_1196
	mov	eax, r14d
	and	eax, 1
	mov	dword ptr [rsp + 0x1c], eax
	lea	rsi, [rsi]
	mov	eax, r14d
	and	eax, 2
	lea	rsi, [rsi]
	mov	dword ptr [rsp + 0xc], eax
	and	r14d, 4
	lea	rsi, [rsi]
	mov	dword ptr [rsp + 8], r14d
	xor	r14d, r14d
	mov	rsp, rsp
	xor	r12d, r12d
.label_1197:
	mov	rax, qword ptr [rbx]
	mov	rcx, qword ptr [rbp + 0x10]
	nop	
	mov	rcx, qword ptr [rcx + r14*8]
	mov	rbp, rbp
	shl	rcx, 4
	mov	esi, dword ptr [rax + rcx + 8]
	lea	rsi, [rsi]
	movzx	ecx, sil
	mov	r13d, esi
	lea	rsi, [rsi]
	shr	r13d, 8
	mov	rbp, rbp
	mov	eax, r13d
	mov	rbp, rbp
	and	eax, 0x3ff
	cmp	ecx, 1
	lea	rdi, [rdi]
	jne	.label_1206
	test	eax, eax
	lea	rsi, [rsi]
	je	.label_1199
.label_1206:
	mov	rdi, rbx
	shr	esi, 0x14
	mov	rbp, rbp
	mov	bl, byte ptr [r15 + 0x68]
	mov	dl, bl
	shr	dl, 5
	movzx	edx, dl
	or	edx, esi
	shl	dl, 5
	mov	rsp, rsp
	and	dl, 0x20
	and	bl, 0xdf
	or	bl, dl
	mov	byte ptr [r15 + 0x68], bl
	cmp	ecx, 4
	je	.label_1209
	cmp	ecx, 2
	lea	rdi, [rdi]
	jne	.label_1202
	mov	rsp, rsp
	or	bl, 0x10
	mov	rsp, rsp
	jmp	.label_1205
.label_1209:
	or	bl, 0x40
.label_1205:
	mov	byte ptr [r15 + 0x68], bl
.label_1202:
	mov	rbp, rbp
	test	eax, eax
	je	.label_1208
	mov	rax, qword ptr [rsp + 0x20]
	cmp	qword ptr [r15 + 0x50], rax
	lea	rdi, [rdi]
	mov	rbx, rdi
	jne	.label_1212
	mov	edi, 0x18
	mov	rsp, rsp
	call	malloc
	nop	
	mov	qword ptr [r15 + 0x50], rax
	nop	
	test	rax, rax
	nop	
	je	.label_1204
	mov	rdi, rax
	mov	rsi, rbp
	mov	rsp, rsp
	call	re_node_set_init_copy
	mov	rbp, rbp
	test	eax, eax
	mov	eax, 0
	lea	rsi, [rsi]
	jne	.label_1198
	or	byte ptr [r15 + 0x68], 0x80
	xor	r12d, r12d
.label_1212:
	cmp	dword ptr [rsp + 0x1c], 0
	lea	rsi, [rsi]
	jne	.label_1201
	nop	
	mov	eax, r13d
	and	eax, 1
	jne	.label_1200
.label_1201:
	cmp	dword ptr [rsp + 0x1c], 0
	je	.label_1207
	mov	eax, r13d
	nop	
	and	eax, 2
	jne	.label_1200
.label_1207:
	mov	rbp, rbp
	cmp	dword ptr [rsp + 0xc], 0
	jne	.label_1211
	mov	eax, r13d
	mov	rsp, rsp
	and	eax, 0x10
	lea	rsi, [rsi]
	jne	.label_1200
.label_1211:
	mov	rsp, rsp
	cmp	dword ptr [rsp + 8], 0
	jne	.label_1199
	lea	rdi, [rdi]
	and	r13d, 0x40
	je	.label_1199
	nop	word ptr cs:[rax + rax]
.label_1200:
	nop	
	mov	rsi, r14
	nop	
	sub	rsi, r12
	mov	rdi, qword ptr [rsp + 0x20]
	lea	rsi, [rsi]
	call	re_node_set_remove_at
	mov	rsp, rsp
	inc	r12
	nop	
	jmp	.label_1199
.label_1208:
	mov	rbx, rdi
	nop	word ptr cs:[rax + rax]
.label_1199:
	inc	r14
	nop	
	cmp	r14, qword ptr [rbp + 8]
	mov	rbp, rbp
	jl	.label_1197
.label_1196:
	mov	rdi, rbx
	mov	rsi, r15
	mov	rdx, qword ptr [rsp + 0x10]
	nop	
	call	register_state
	lea	rdi, [rdi]
	test	eax, eax
	mov	rsp, rsp
	mov	rax, r15
	nop	
	je	.label_1198
.label_1204:
	nop	
	mov	rdi, r15
	call	free_state
	mov	rsp, rsp
	jmp	.label_1203
.label_1210:
	mov	rbp, rbp
	mov	rdi, r15
	mov	rbp, rbp
	call	free
.label_1203:
	mov	rbp, rbp
	xor	eax, eax
.label_1198:
	lea	rdi, [rdi]
	add	rsp, 0x28
	nop	
	pop	rbx
	nop	
	pop	r12
	pop	r13
	pop	r14
	lea	rdi, [rdi]
	pop	r15
	pop	rbp
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x412350

	.globl re_node_set_remove_at
	.type re_node_set_remove_at, @function
re_node_set_remove_at:
	nop	
	test	rsi, rsi
	lea	rdi, [rdi]
	js	.label_1213
	mov	rax, qword ptr [rdi + 8]
	cmp	rax, rsi
	jle	.label_1213
	mov	rsp, rsp
	dec	rax
	mov	rbp, rbp
	mov	qword ptr [rdi + 8], rax
	nop	
	cmp	rax, rsi
	jle	.label_1213
	lea	rsi, [rsi]
	mov	rax, qword ptr [rdi + 0x10]
	nop	dword ptr [rax]
.label_1214:
	mov	rsp, rsp
	mov	rcx, qword ptr [rax + rsi*8 + 8]
	nop	
	mov	qword ptr [rax + rsi*8], rcx
	lea	rsi, [rsi]
	inc	rsi
	cmp	rsi, qword ptr [rdi + 8]
	mov	rsp, rsp
	jl	.label_1214
.label_1213:
	lea	rdi, [rdi]
	ret	
	.section	.text
	.align	32
	#Procedure 0x4123a0

	.globl register_state
	.type register_state, @function
register_state:
	push	rbp
	lea	rdi, [rdi]
	push	r15
	nop	
	push	r14
	push	r13
	lea	rdi, [rdi]
	push	r12
	lea	rdi, [rdi]
	push	rbx
	push	rax
	mov	r15, rdx
	mov	rbx, rsi
	mov	rbp, rbp
	mov	r13, rdi
	mov	rsp, rsp
	mov	qword ptr [rbx], r15
	lea	r12, [rbx + 0x20]
	mov	rbp, rbp
	mov	rsi, qword ptr [rbx + 0x10]
	mov	rdi, r12
	mov	rsp, rsp
	call	re_node_set_alloc
	lea	rsi, [rsi]
	mov	r14d, 0xc
	test	eax, eax
	mov	rsp, rsp
	jne	.label_1217
	cmp	qword ptr [rbx + 0x10], 0
	mov	rsp, rsp
	jle	.label_1218
	mov	rbp, rbp
	xor	ebp, ebp
.label_1219:
	mov	rax, qword ptr [rbx + 0x18]
	mov	rsi, qword ptr [rax + rbp*8]
	mov	rbp, rbp
	mov	rax, qword ptr [r13]
	mov	rbp, rbp
	mov	rcx, rsi
	shl	rcx, 4
	test	byte ptr [rax + rcx + 8], 8
	lea	rsi, [rsi]
	jne	.label_1215
	mov	rdi, r12
	call	re_node_set_insert_last
	test	al, al
	mov	rbp, rbp
	je	.label_1217
.label_1215:
	mov	rbp, rbp
	inc	rbp
	lea	rsi, [rsi]
	cmp	rbp, qword ptr [rbx + 0x10]
	jl	.label_1219
.label_1218:
	mov	rsp, rsp
	mov	r12, qword ptr [r13 + 0x40]
	lea	rsi, [rsi]
	and	r15, qword ptr [r13 + 0x88]
	lea	rbp, [r15 + r15*2]
	mov	r15, qword ptr [r12 + rbp*8]
	cmp	qword ptr [r12 + rbp*8 + 8], r15
	jle	.label_1216
.label_1220:
	lea	rax, [r12 + rbp*8]
	mov	rcx, qword ptr [rax]
	nop	
	lea	rdx, [rcx + 1]
	mov	qword ptr [rax], rdx
	mov	rax, qword ptr [r12 + rbp*8 + 0x10]
	mov	qword ptr [rax + rcx*8], rbx
	xor	r14d, r14d
.label_1217:
	mov	eax, r14d
	add	rsp, 8
	pop	rbx
	lea	rdi, [rdi]
	pop	r12
	pop	r13
	lea	rsi, [rsi]
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_1216:
	lea	rsi, [rsi]
	lea	rax, [r15 + r15]
	nop	
	mov	rdi, qword ptr [r12 + rbp*8 + 0x10]
	lea	rsi, [rax*8 + 0x10]
	call	realloc
	test	rax, rax
	je	.label_1217
	lea	rcx, [r12 + rbp*8 + 8]
	nop	
	lea	rdx, [r15 + r15 + 2]
	lea	rsi, [r12 + rbp*8 + 0x10]
	mov	qword ptr [rsi], rax
	mov	rsp, rsp
	mov	qword ptr [rcx], rdx
	jmp	.label_1220
	nop	
	.section	.text
	.align	32
	#Procedure 0x4124d0

	.globl re_copy_regs
	.type re_copy_regs, @function
re_copy_regs:
	mov	rbp, rbp
	push	rbp
	push	r15
	nop	
	push	r14
	push	r13
	lea	rsi, [rsi]
	push	r12
	push	rbx
	mov	rbp, rbp
	sub	rsp, 0x18
	mov	r14, rdx
	mov	rbx, rsi
	mov	rbp, rbp
	mov	r15, rdi
	mov	rsp, rsp
	cmp	ecx, 2
	je	.label_1229
	lea	r13, [r14 + 1]
	nop	
	cmp	ecx, 1
	je	.label_1232
	nop	
	test	ecx, ecx
	mov	rsp, rsp
	jne	.label_1222
	mov	rbp, rbp
	lea	r12, [r13*8]
	lea	rsi, [rsi]
	mov	rdi, r12
	lea	rsi, [rsi]
	call	malloc
	mov	rsp, rsp
	mov	qword ptr [r15 + 8], rax
	lea	rdi, [rdi]
	xor	ebp, ebp
	test	rax, rax
	je	.label_1221
	lea	rdi, [rdi]
	mov	rdi, r12
	lea	rsi, [rsi]
	call	malloc
	mov	qword ptr [r15 + 0x10], rax
	test	rax, rax
	mov	rbp, rbp
	je	.label_1225
	lea	rsi, [rsi]
	mov	qword ptr [r15], r13
	lea	rsi, [rsi]
	mov	r12d, 1
	jmp	.label_1226
.label_1229:
	mov	rsp, rsp
	mov	r12d, 2
	lea	rdi, [rdi]
	cmp	qword ptr [r15], r14
	jae	.label_1226
	mov	edi, OFFSET FLAT:.str.24_0
	mov	esi, OFFSET FLAT:.str.22_0
	mov	edx, 0x1fb
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.re_copy_regs
	call	__assert_fail
.label_1232:
	mov	r12d, 1
	cmp	r13, qword ptr [r15]
	mov	rbp, rbp
	ja	.label_1228
.label_1226:
	lea	rsi, [rsi]
	xor	eax, eax
	test	r14, r14
	mov	rsp, rsp
	jle	.label_1227
	mov	rax, qword ptr [r15 + 8]
	mov	rcx, qword ptr [r15 + 0x10]
	nop	
	add	rbx, 8
	mov	rsp, rsp
	mov	rdx, r14
	nop	
.label_1224:
	mov	rsp, rsp
	mov	rsi, qword ptr [rbx - 8]
	mov	rsp, rsp
	mov	qword ptr [rax], rsi
	mov	rsi, qword ptr [rbx]
	lea	rdi, [rdi]
	mov	qword ptr [rcx], rsi
	add	rax, 8
	add	rcx, 8
	add	rbx, 0x10
	dec	rdx
	jne	.label_1224
	mov	rax, r14
.label_1227:
	mov	rsp, rsp
	cmp	rax, qword ptr [r15]
	nop	
	jae	.label_1231
	lea	rsi, [rsi]
	mov	rcx, qword ptr [r15 + 8]
	nop	
	mov	rdx, qword ptr [r15 + 0x10]
	nop	
.label_1230:
	mov	qword ptr [rdx + rax*8], -1
	mov	qword ptr [rcx + rax*8], -1
	inc	rax
	lea	rsi, [rsi]
	cmp	rax, qword ptr [r15]
	lea	rsi, [rsi]
	jb	.label_1230
.label_1231:
	lea	rsi, [rsi]
	mov	ebp, r12d
.label_1221:
	nop	
	mov	eax, ebp
	lea	rsi, [rsi]
	add	rsp, 0x18
	nop	
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	lea	rdi, [rdi]
	pop	r15
	pop	rbp
	ret	
.label_1228:
	nop	
	mov	rdi, qword ptr [r15 + 8]
	lea	rdi, [rdi]
	lea	rsi, [r13*8]
	mov	qword ptr [rsp + 0x10], rsi
	call	realloc
	xor	ebp, ebp
	test	rax, rax
	mov	rbp, rbp
	je	.label_1221
	mov	rbp, rbp
	mov	qword ptr [rsp + 8], rax
	lea	rsi, [rsi]
	mov	rdi, qword ptr [r15 + 0x10]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rsp + 0x10]
	nop	
	call	realloc
	test	rax, rax
	je	.label_1223
	mov	rcx, qword ptr [rsp + 8]
	mov	qword ptr [r15 + 8], rcx
	mov	qword ptr [r15 + 0x10], rax
	mov	qword ptr [r15], r13
	lea	rsi, [rsi]
	jmp	.label_1226
.label_1225:
	mov	rsp, rsp
	mov	rdi, qword ptr [r15 + 8]
	call	free
	nop	
	jmp	.label_1221
.label_1223:
	mov	rdi, qword ptr [rsp + 8]
	call	free
	lea	rsi, [rsi]
	jmp	.label_1221
.label_1222:
	lea	rdi, [rdi]
	mov	edi, OFFSET FLAT:.str.23_0
	nop	
	mov	esi, OFFSET FLAT:.str.22_0
	mov	rbp, rbp
	mov	edx, 0x1f9
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.re_copy_regs
	call	__assert_fail
	nop	
	.section	.text
	.align	32
	#Procedure 0x4126f0

	.globl re_string_allocate
	.type re_string_allocate, @function
re_string_allocate:
	nop	
	push	r15
	mov	rsp, rsp
	push	r14
	push	r13
	nop	
	push	r12
	mov	rsp, rsp
	push	rbx
	mov	r14, rdx
	mov	r12, rsi
	mov	r13, rdi
	mov	rbp, rbp
	mov	r15, qword ptr [rsp + 0x30]
	lea	rdi, [rdi]
	movsxd	rax, dword ptr [r15 + 0xb4]
	cmp	rax, rcx
	cmovge	rcx, rax
	lea	rbx, [r14 + 1]
	cmp	rbx, rcx
	lea	rdi, [rdi]
	cmovg	rbx, rcx
	movzx	eax, r9b
	mov	rbp, rbp
	mov	rdi, r12
	mov	rsi, r14
	mov	rdx, r13
	lea	rdi, [rdi]
	mov	rcx, r8
	mov	rsp, rsp
	mov	r8d, eax
	mov	r9, r15
	call	re_string_construct_common
	mov	rdi, r13
	mov	rsi, rbx
	nop	
	call	re_string_realloc_buffers
	test	eax, eax
	jne	.label_1233
	lea	rdi, [rdi]
	lea	rax, [r15 + 0xb8]
	lea	rsi, [rsi]
	mov	qword ptr [r13 + 0x80], rax
	mov	al, byte ptr [r15 + 0xb0]
	mov	rbp, rbp
	shr	al, 4
	mov	rbp, rbp
	and	al, 1
	mov	rsp, rsp
	mov	byte ptr [r13 + 0x8e], al
	cmp	byte ptr [r13 + 0x8b], 0
	je	.label_1235
	lea	rsi, [rsi]
	mov	r12, qword ptr [r13 + 8]
.label_1235:
	mov	qword ptr [r13 + 8], r12
	mov	rsp, rsp
	xor	eax, eax
	lea	rsi, [rsi]
	cmp	byte ptr [r13 + 0x8b], 0
	mov	ecx, 0
	jne	.label_1234
	xor	ecx, ecx
	nop	
	cmp	dword ptr [r15 + 0xb4], 1
	jg	.label_1234
	lea	rsi, [rsi]
	mov	rcx, r14
.label_1234:
	mov	qword ptr [r13 + 0x30], rcx
	mov	qword ptr [r13 + 0x38], rcx
.label_1233:
	lea	rdi, [rdi]
	pop	rbx
	mov	rsp, rsp
	pop	r12
	nop	
	pop	r13
	nop	
	pop	r14
	mov	rbp, rbp
	pop	r15
	lea	rdi, [rdi]
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x412800

	.globl match_ctx_init
	.type match_ctx_init, @function
match_ctx_init:
	push	rbp
	push	r15
	push	r14
	push	rbx
	push	rax
	mov	r14, rdx
	mov	rbx, rdi
	mov	dword ptr [rbx + 0xa0], esi
	mov	qword ptr [rbx + 0xa8], -1
	test	r14, r14
	jle	.label_1236
	mov	r15d, 0xc
	movabs	rax, 0x666666666666666
	cmp	r14, rax
	ja	.label_1237
	mov	rbp, rbp
	lea	rbp, [r14*8]
	lea	rdi, [rbp + rbp*4]
	lea	rsi, [rsi]
	call	malloc
	mov	qword ptr [rbx + 0xd8], rax
	mov	rdi, rbp
	nop	
	call	malloc
	mov	qword ptr [rbx + 0xf8], rax
	test	rax, rax
	je	.label_1237
	mov	rbp, rbp
	mov	rax, qword ptr [rbx + 0xd8]
	test	rax, rax
	nop	
	je	.label_1237
.label_1236:
	mov	rsp, rsp
	mov	qword ptr [rbx + 0xd0], r14
	mov	dword ptr [rbx + 0xe0], 1
	mov	qword ptr [rbx + 0xf0], r14
	lea	rsi, [rsi]
	xor	r15d, r15d
.label_1237:
	mov	eax, r15d
	add	rsp, 8
	pop	rbx
	pop	r14
	mov	rbp, rbp
	pop	r15
	lea	rdi, [rdi]
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4128c0

	.globl re_string_reconstruct
	.type re_string_reconstruct, @function
re_string_reconstruct:
	mov	rsp, rsp
	push	rbp
	mov	rbp, rbp
	push	r15
	push	r14
	push	r13
	lea	rdi, [rdi]
	push	r12
	nop	
	push	rbx
	lea	rsi, [rsi]
	sub	rsp, 0x28
	mov	r15d, edx
	mov	r14, rsi
	mov	rbx, rdi
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbx + 0x28]
	mov	rsp, rsp
	cmp	rax, r14
	jle	.label_1275
	lea	rax, [rbx + 0x28]
	cmp	dword ptr [rbx + 0x90], 2
	lea	rsi, [rsi]
	jl	.label_1283
	mov	qword ptr [rbx + 0x20], 0
.label_1283:
	mov	rbp, rbp
	mov	rcx, qword ptr [rbx + 0x50]
	lea	rdi, [rdi]
	mov	qword ptr [rbx + 0x58], rcx
	mov	rcx, qword ptr [rbx + 0x60]
	lea	rdi, [rdi]
	mov	qword ptr [rbx + 0x68], rcx
	mov	byte ptr [rbx + 0x8c], 0
	mov	rsp, rsp
	lea	ecx, [r15 + r15]
	and	ecx, 2
	xor	ecx, 6
	xorps	xmm0, xmm0
	movups	xmmword ptr [rax], xmm0
	mov	rbp, rbp
	mov	qword ptr [rax + 0x10], 0
	mov	dword ptr [rbx + 0x70], ecx
	cmp	byte ptr [rbx + 0x8b], 0
	mov	r13, r14
	lea	rsi, [rsi]
	jne	.label_1243
	mov	rax, qword ptr [rbx]
	lea	rdi, [rdi]
	mov	qword ptr [rbx + 8], rax
	mov	r13, r14
.label_1243:
	nop	
	test	r13, r13
	mov	rsp, rsp
	je	.label_1260
	mov	rbp, rbp
	cmp	r13, qword ptr [rbx + 0x38]
	jge	.label_1262
	cmp	byte ptr [rbx + 0x8c], 0
	mov	rbp, rbp
	jne	.label_1265
	lea	rdi, [rdi]
	lea	rsi, [r13 - 1]
	mov	rsp, rsp
	mov	rdi, rbx
	mov	rbp, rbp
	mov	edx, r15d
	mov	rbp, rbp
	call	re_string_context_at
	mov	dword ptr [rbx + 0x70], eax
	lea	rsi, [rsi]
	cmp	dword ptr [rbx + 0x90], 2
	mov	rsp, rsp
	jl	.label_1271
	mov	rdi, qword ptr [rbx + 0x10]
	mov	rdx, qword ptr [rbx + 0x30]
	mov	rsp, rsp
	lea	rsi, [rdi + r13*4]
	mov	rbp, rbp
	sub	rdx, r13
	shl	rdx, 2
	call	memmove
.label_1271:
	cmp	byte ptr [rbx + 0x8b], 0
	lea	rsi, [rsi]
	jne	.label_1280
.label_1249:
	sub	qword ptr [rbx + 0x30], r13
	nop	
	sub	qword ptr [rbx + 0x38], r13
.label_1244:
	mov	rbp, rbp
	cmp	byte ptr [rbx + 0x8b], 0
	nop	
	jne	.label_1260
	add	qword ptr [rbx + 8], r13
.label_1260:
	lea	rdi, [rdi]
	mov	qword ptr [rbx + 0x28], r14
	lea	rsi, [rsi]
	sub	qword ptr [rbx + 0x58], r13
	lea	rsi, [rsi]
	sub	qword ptr [rbx + 0x68], r13
	mov	rbp, rbp
	cmp	dword ptr [rbx + 0x90], 2
	mov	rsp, rsp
	jl	.label_1242
	lea	rdi, [rdi]
	cmp	byte ptr [rbx + 0x88], 0
	je	.label_1250
	mov	rdi, rbx
	call	build_wcs_upper_buffer
	test	eax, eax
	jne	.label_1266
	jmp	.label_1255
.label_1242:
	cmp	byte ptr [rbx + 0x8b], 0
	lea	rsi, [rsi]
	jne	.label_1256
	mov	rax, qword ptr [rbx + 0x58]
	lea	rdi, [rdi]
	mov	qword ptr [rbx + 0x30], rax
	jmp	.label_1255
.label_1250:
	mov	rdi, rbx
	nop	
	call	build_wcs_buffer
.label_1255:
	mov	qword ptr [rbx + 0x48], 0
	lea	rdi, [rdi]
	xor	eax, eax
.label_1266:
	lea	rdi, [rdi]
	add	rsp, 0x28
	pop	rbx
	lea	rdi, [rdi]
	pop	r12
	pop	r13
	mov	rbp, rbp
	pop	r14
	lea	rsi, [rsi]
	pop	r15
	nop	
	pop	rbp
	ret	
.label_1275:
	lea	rsi, [rsi]
	mov	r13, r14
	sub	r13, rax
	lea	rdi, [rdi]
	jmp	.label_1243
.label_1262:
	nop	
	mov	rdx, qword ptr [rbx + 0x30]
	cmp	byte ptr [rbx + 0x8c], 0
	lea	rsi, [rsi]
	jne	.label_1269
.label_1267:
	lea	rdi, [rdi]
	mov	qword ptr [rbx + 0x30], 0
	cmp	dword ptr [rbx + 0x90], 2
	jl	.label_1274
	mov	rbp, rbp
	mov	qword ptr [rsp], rdx
	mov	dword ptr [rsp + 0x24], 0xffffffff
	lea	rsi, [rsi]
	cmp	byte ptr [rbx + 0x89], 0
	je	.label_1279
	mov	rdx, qword ptr [rbx]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbx + 0x28]
	lea	rsi, [rsi]
	add	rax, rdx
	movsxd	rsi, dword ptr [rbx + 0x90]
	mov	rsp, rsp
	mov	rcx, r13
	sub	rcx, rsi
	add	rcx, rax
	nop	
	cmp	rcx, rdx
	cmovb	rcx, rdx
	mov	rbp, rbp
	lea	r12, [rax + r13]
	mov	rbp, r12
	nop	word ptr [rax + rax]
.label_1252:
	dec	rbp
	cmp	rbp, rcx
	jb	.label_1251
	mov	rsp, rsp
	mov	dl, byte ptr [rbp]
	and	dl, 0xc0
	movzx	edx, dl
	mov	rsp, rsp
	cmp	edx, 0x80
	lea	rdi, [rdi]
	je	.label_1252
	add	rax, qword ptr [rbx + 0x58]
	mov	rdx, rax
	mov	rbp, rbp
	sub	rdx, rbp
	cmp	qword ptr [rbx + 0x78], 0
	mov	rsi, rbp
	jne	.label_1258
.label_1247:
	mov	qword ptr [rsp + 0x18], 0
	lea	rdi, [rsp + 0x14]
	lea	rcx, [rsp + 0x18]
	mov	rsp, rsp
	call	rpl_mbrtowc
	sub	r12, rbp
	mov	rcx, rax
	lea	rdi, [rdi]
	sub	rcx, r12
	nop	
	jb	.label_1251
	cmp	rax, -3
	ja	.label_1251
	mov	qword ptr [rbx + 0x20], 0
	mov	qword ptr [rbx + 0x30], rcx
	lea	rsi, [rsi]
	mov	eax, dword ptr [rsp + 0x14]
	mov	dword ptr [rsp + 0x24], eax
.label_1251:
	mov	edi, dword ptr [rsp + 0x24]
	mov	rsp, rsp
	cmp	edi, -1
	jne	.label_1272
.label_1279:
	lea	rdx, [rsp + 0x24]
	mov	rbp, rbp
	mov	rdi, rbx
	lea	rdi, [rdi]
	mov	rsi, r14
	call	re_string_skip_chars
	mov	rsp, rsp
	sub	rax, r14
	mov	qword ptr [rbx + 0x30], rax
	lea	rdi, [rdi]
	mov	edi, dword ptr [rsp + 0x24]
	cmp	edi, -1
	mov	rbp, rbp
	je	.label_1240
.label_1272:
	cmp	byte ptr [rbx + 0x8e], 0
	jne	.label_1281
	mov	ecx, dword ptr [rsp + 0x24]
.label_1253:
	mov	rsp, rsp
	xor	eax, eax
	lea	rsi, [rsi]
	cmp	ecx, 0xa
	mov	rsp, rsp
	jne	.label_1239
	mov	eax, 2
	cmp	byte ptr [rbx + 0x8d], 0
	nop	
	jne	.label_1239
	lea	rdi, [rdi]
	xor	eax, eax
	jmp	.label_1239
.label_1265:
	mov	rax, qword ptr [rbx + 0x18]
	mov	rsi, qword ptr [rbx + 0x30]
	mov	rbp, rbp
	xor	edx, edx
	nop	word ptr cs:[rax + rax]
.label_1263:
	nop	
	lea	rdi, [rdx + rsi]
	mov	rbp, rbp
	mov	rcx, rdi
	shr	rcx, 0x3f
	mov	rbp, rbp
	add	rcx, rdi
	sar	rcx, 1
	nop	
	cmp	qword ptr [rax + rcx*8], r13
	lea	rdi, [rdi]
	mov	rdi, rcx
	jg	.label_1257
	jge	.label_1261
	lea	rdx, [rcx + 1]
	mov	rdi, rsi
.label_1257:
	lea	rsi, [rsi]
	cmp	rdx, rdi
	mov	rsi, rdi
	jl	.label_1263
.label_1261:
	mov	rax, qword ptr [rbx + 0x18]
	cmp	qword ptr [rax + rcx*8], r13
	setl	al
	movzx	eax, al
	lea	rdi, [rdi]
	lea	rbp, [rax + rcx]
	mov	rbp, rbp
	lea	rsi, [rax + rcx - 1]
	lea	rsi, [rsi]
	mov	rdi, rbx
	mov	rbp, rbp
	mov	edx, r15d
	call	re_string_context_at
	mov	dword ptr [rbx + 0x70], eax
	mov	rsp, rsp
	mov	rdx, qword ptr [rbx + 0x30]
	sub	rdx, r13
	jle	.label_1273
	cmp	rbp, r13
	jne	.label_1273
	nop	
	mov	rax, qword ptr [rbx + 0x18]
	mov	rsp, rsp
	cmp	qword ptr [rax + rbp*8], r13
	jne	.label_1273
	mov	rdi, qword ptr [rbx + 0x10]
	lea	rsi, [rdi + r13*4]
	lea	rsi, [rsi]
	shl	rdx, 2
	call	memmove
	mov	rdi, qword ptr [rbx + 8]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbx + 0x30]
	sub	rdx, r13
	nop	
	lea	rsi, [rdi + r13]
	call	memmove
	mov	rsp, rsp
	mov	rax, qword ptr [rbx + 0x30]
	sub	rax, r13
	lea	rdi, [rdi]
	mov	qword ptr [rbx + 0x30], rax
	sub	qword ptr [rbx + 0x38], r13
	lea	rsi, [rsi]
	test	rax, rax
	mov	rbp, rbp
	jle	.label_1244
	nop	
	mov	rax, qword ptr [rbx + 0x18]
	mov	rsp, rsp
	lea	rcx, [rax + r13*8]
	xor	edx, edx
	nop	word ptr cs:[rax + rax]
.label_1278:
	mov	rsi, qword ptr [rcx + rdx*8]
	sub	rsi, r13
	mov	qword ptr [rax + rdx*8], rsi
	inc	rdx
	lea	rdi, [rdi]
	cmp	rdx, qword ptr [rbx + 0x30]
	jl	.label_1278
	jmp	.label_1244
.label_1280:
	mov	rdi, qword ptr [rbx + 8]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbx + 0x30]
	sub	rdx, r13
	lea	rsi, [rsi]
	lea	rsi, [rdi + r13]
	call	memmove
	jmp	.label_1249
.label_1273:
	mov	rax, r13
	sub	rax, r14
	mov	rbp, rbp
	mov	rcx, qword ptr [rbx + 0x50]
	lea	rsi, [rsi]
	add	rcx, rax
	nop	
	mov	qword ptr [rbx + 0x58], rcx
	mov	rsp, rsp
	add	rax, qword ptr [rbx + 0x60]
	lea	rdi, [rdi]
	mov	qword ptr [rbx + 0x68], rax
	mov	byte ptr [rbx + 0x8c], 0
	nop	dword ptr [rax + rax]
.label_1277:
	mov	rsp, rsp
	mov	rax, rbp
	mov	rsp, rsp
	test	rax, rax
	jle	.label_1282
	lea	rdi, [rdi]
	lea	rbp, [rax - 1]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbx + 0x18]
	cmp	qword ptr [rcx + rax*8 - 8], r13
	je	.label_1277
.label_1282:
	mov	rbp, rbp
	cmp	rax, qword ptr [rbx + 0x30]
	lea	rdi, [rdi]
	jge	.label_1238
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbx + 0x10]
	nop	word ptr cs:[rax + rax]
.label_1254:
	nop	
	cmp	dword ptr [rcx + rax*4], -1
	lea	rdi, [rdi]
	jne	.label_1238
	inc	rax
	cmp	rax, qword ptr [rbx + 0x30]
	mov	rsp, rsp
	jl	.label_1254
.label_1238:
	cmp	rax, qword ptr [rbx + 0x30]
	jne	.label_1245
	lea	rdi, [rdi]
	mov	qword ptr [rbx + 0x30], 0
	jmp	.label_1246
.label_1256:
	mov	rbp, rbp
	cmp	byte ptr [rbx + 0x88], 0
	lea	rdi, [rdi]
	je	.label_1248
	mov	rdi, rbx
	call	build_upper_buffer
	lea	rdi, [rdi]
	jmp	.label_1255
.label_1274:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbx + 0x28]
	mov	rsp, rsp
	add	rax, r13
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbx]
	mov	al, byte ptr [rcx + rax - 1]
	lea	rdi, [rdi]
	movzx	ecx, al
	mov	qword ptr [rbx + 0x38], 0
	mov	rdx, qword ptr [rbx + 0x78]
	test	rdx, rdx
	mov	rbp, rbp
	je	.label_1259
	mov	rbp, rbp
	mov	al, byte ptr [rdx + rcx]
.label_1259:
	mov	rsp, rsp
	mov	rdi, qword ptr [rbx + 0x80]
	movzx	r15d, al
	lea	rdi, [rdi]
	mov	rsi, r15
	call	bitset_contain
	mov	rbp, rbp
	mov	ecx, 1
	mov	rsp, rsp
	test	al, al
	lea	rsi, [rsi]
	jne	.label_1268
	nop	
	xor	ecx, ecx
	lea	rdi, [rdi]
	cmp	r15d, 0xa
	lea	rdi, [rdi]
	jne	.label_1268
	mov	rbp, rbp
	mov	ecx, 2
	cmp	byte ptr [rbx + 0x8d], 0
	lea	rsi, [rsi]
	jne	.label_1268
	xor	ecx, ecx
.label_1268:
	mov	dword ptr [rbx + 0x70], ecx
	mov	rsp, rsp
	jmp	.label_1244
.label_1245:
	mov	rcx, qword ptr [rbx + 0x18]
	mov	rax, qword ptr [rcx + rax*8]
	sub	rax, r13
	lea	rsi, [rsi]
	mov	qword ptr [rbx + 0x30], rax
	lea	rsi, [rsi]
	je	.label_1246
	mov	r15, qword ptr [rbx + 0x30]
	test	r15, r15
	jle	.label_1241
	mov	rdi, qword ptr [rbx + 0x10]
	mov	r15, qword ptr [rbx + 0x30]
	test	r15, r15
	mov	edx, 1
	cmovg	rdx, r15
	mov	rsp, rsp
	shl	rdx, 2
	nop	
	mov	esi, 0xff
	lea	rdi, [rdi]
	call	memset
.label_1241:
	mov	rdi, qword ptr [rbx + 8]
	mov	esi, 0xff
	mov	rdx, r15
	lea	rsi, [rsi]
	call	memset
	jmp	.label_1246
.label_1248:
	mov	rbp, rbp
	cmp	qword ptr [rbx + 0x78], 0
	je	.label_1255
	mov	rdi, rbx
	call	re_string_translate_buffer
	lea	rsi, [rsi]
	jmp	.label_1255
.label_1240:
	mov	rsi, qword ptr [rsp]
	lea	rdi, [rdi]
	dec	rsi
	lea	rsi, [rsi]
	mov	rdi, rbx
	mov	edx, r15d
	mov	rsp, rsp
	call	re_string_context_at
.label_1239:
	mov	dword ptr [rbx + 0x70], eax
	cmp	qword ptr [rbx + 0x30], 0
	lea	rsi, [rsi]
	jne	.label_1264
.label_1246:
	mov	rax, qword ptr [rbx + 0x30]
	mov	qword ptr [rbx + 0x38], rax
	lea	rdi, [rdi]
	jmp	.label_1244
.label_1269:
	mov	rax, r13
	sub	rax, r14
	mov	rcx, qword ptr [rbx + 0x50]
	mov	rbp, rbp
	add	rcx, rax
	mov	qword ptr [rbx + 0x58], rcx
	mov	rsp, rsp
	add	rax, qword ptr [rbx + 0x60]
	mov	rbp, rbp
	mov	qword ptr [rbx + 0x68], rax
	mov	byte ptr [rbx + 0x8c], 0
	nop	
	jmp	.label_1267
.label_1264:
	lea	rsi, [rsi]
	mov	r15, qword ptr [rbx + 0x30]
	lea	rdi, [rdi]
	test	r15, r15
	mov	rbp, rbp
	jle	.label_1276
	mov	rsp, rsp
	mov	rdi, qword ptr [rbx + 0x10]
	mov	r15, qword ptr [rbx + 0x30]
	test	r15, r15
	mov	edx, 1
	cmovg	rdx, r15
	shl	rdx, 2
	mov	rbp, rbp
	mov	esi, 0xff
	mov	rsp, rsp
	call	memset
.label_1276:
	cmp	byte ptr [rbx + 0x8b], 0
	jne	.label_1241
	lea	rsi, [rsi]
	jmp	.label_1246
.label_1281:
	lea	rdi, [rdi]
	call	iswalnum
	mov	rbp, rbp
	test	eax, eax
	mov	eax, 1
	mov	rbp, rbp
	jne	.label_1239
	mov	ecx, dword ptr [rsp + 0x24]
	cmp	ecx, 0x5f
	lea	rdi, [rdi]
	jne	.label_1253
	jmp	.label_1239
.label_1258:
	lea	rsi, [rsp + 0xe]
	mov	rbp, rbp
	cmp	rdx, 6
	mov	ecx, 6
	nop	
	cmovl	ecx, edx
	test	ecx, ecx
	mov	rsp, rsp
	jle	.label_1247
	lea	rcx, [rbp - 1]
	nop	
	sub	rcx, rax
	cmp	rcx, -8
	mov	rbp, rbp
	mov	r10, -7
	lea	rsi, [rsi]
	cmovg	r10, rcx
	xor	r10, 0xffffffffffffffff
	shl	r10, 0x20
	lea	rdi, [rdi]
	sar	r10, 0x20
	lea	rdi, [rdi]
	lea	r8, [rsp + r10 + 0xd]
	lea	r9, [r10 + rbp - 1]
	mov	rbp, rbp
	xor	ecx, ecx
.label_1270:
	lea	rdi, [rdi]
	movzx	edi, byte ptr [r9 + rcx]
	mov	rax, qword ptr [rbx + 0x78]
	mov	rsp, rsp
	mov	al, byte ptr [rax + rdi]
	lea	rsi, [rsi]
	mov	byte ptr [r8 + rcx], al
	lea	rax, [r10 + rcx - 1]
	dec	rcx
	mov	rbp, rbp
	inc	rax
	cmp	rax, 1
	jg	.label_1270
	jmp	.label_1247
	nop	
	.section	.text
	.align	32
	#Procedure 0x4130e0

	.globl check_matching
	.type check_matching, @function
check_matching:
	push	rbp
	lea	rsi, [rsi]
	push	r15
	push	r14
	push	r13
	lea	rsi, [rsi]
	push	r12
	push	rbx
	mov	rsp, rsp
	sub	rsp, 0x28
	mov	r13, rdx
	nop	
	mov	dword ptr [rsp + 0x1c], esi
	lea	rsi, [rsi]
	mov	rbp, rdi
	mov	rsp, rsp
	mov	r14, qword ptr [rbp + 0x98]
	mov	r12, qword ptr [rbp + 0x48]
	test	r13, r13
	lea	rsi, [rsi]
	setne	al
	mov	rsp, rsp
	mov	dword ptr [rsp + 0x20], eax
	mov	dword ptr [rsp + 0x24], 0
	mov	rbp, rbp
	mov	r15, qword ptr [rbp + 0x98]
	mov	rbx, qword ptr [r15 + 0x48]
	cmp	byte ptr [rbx + 0x68], 0
	jns	.label_1284
	lea	rdi, [rdi]
	lea	rsi, [r12 - 1]
	nop	
	mov	edx, dword ptr [rbp + 0xa0]
	nop	
	mov	rdi, rbp
	call	re_string_context_at
	mov	rsp, rsp
	test	al, 1
	jne	.label_1285
	lea	rsi, [rsi]
	test	eax, eax
	je	.label_1284
	mov	ecx, eax
	and	ecx, 4
	sete	sil
	mov	edx, eax
	and	edx, 2
	nop	
	je	.label_1308
	lea	rdi, [rdi]
	test	sil, sil
	jne	.label_1308
	mov	rbx, qword ptr [r15 + 0x60]
	jmp	.label_1284
.label_1285:
	mov	rbx, qword ptr [r15 + 0x50]
.label_1284:
	mov	rbp, rbp
	test	rbx, rbx
	mov	rbp, rbp
	je	.label_1311
	nop	
	mov	rax, qword ptr [rbp + 0xb8]
	lea	rdi, [rdi]
	test	rax, rax
	mov	rsp, rsp
	je	.label_1288
	mov	rsp, rsp
	mov	qword ptr [rax + r12*8], rbx
	mov	rbp, rbp
	cmp	qword ptr [r14 + 0x98], 0
	lea	rsi, [rsi]
	jne	.label_1294
.label_1288:
	nop	
	mov	al, byte ptr [rbx + 0x68]
	mov	rdx, -1
	lea	rdi, [rdi]
	xor	ecx, ecx
	test	al, 0x10
	mov	rsp, rsp
	jne	.label_1301
.label_1292:
	nop	
	mov	qword ptr [rsp], rdx
	mov	rsp, rsp
	mov	qword ptr [rsp + 8], r13
	mov	qword ptr [rsp + 0x10], r12
	lea	r13, [rsp + 0x24]
.label_1296:
	mov	rsi, qword ptr [rbp + 0x48]
	nop	
	cmp	qword ptr [rbp + 0x68], rsi
	jle	.label_1291
	lea	rdi, [rdi]
	test	rcx, rcx
	lea	rdi, [rdi]
	sete	r12b
	lea	rsi, [rsi]
	mov	eax, dword ptr [rsp + 0x1c]
	lea	rsi, [rsi]
	or	r12b, al
	mov	r15, rbx
	nop	dword ptr [rax + rax]
.label_1290:
	lea	r14, [rsi + 1]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp + 0x40]
	cmp	r14, rax
	jge	.label_1293
.label_1297:
	mov	rax, qword ptr [rbp + 0x30]
	cmp	r14, rax
	jge	.label_1287
.label_1299:
	mov	rbp, rbp
	mov	rdi, r13
	mov	rbp, rbp
	mov	rsi, rbp
	mov	rdx, r15
	call	transit_state
	lea	rdi, [rdi]
	mov	rbx, rax
	nop	
	cmp	qword ptr [rbp + 0xb8], 0
	je	.label_1304
	mov	rsp, rsp
	mov	rdi, r13
	mov	rsi, rbp
	mov	rdx, rbx
	call	merge_state_with_log
	lea	rsi, [rsi]
	mov	rbx, rax
.label_1304:
	mov	rsp, rsp
	test	rbx, rbx
	jne	.label_1302
	mov	rax, -2
	nop	
	cmp	dword ptr [rsp + 0x24], 0
	jne	.label_1286
	cmp	qword ptr [rbp + 0xb8], 0
	mov	rsp, rsp
	setne	al
	nop	
	and	al, r12b
	movzx	eax, al
	cmp	eax, 1
	mov	rsp, rsp
	jne	.label_1291
	mov	rdi, r13
	lea	rsi, [rsi]
	mov	rsi, rbp
	call	find_recover_state
	mov	rbx, rax
	lea	rdi, [rdi]
	test	rbx, rbx
	je	.label_1291
.label_1302:
	mov	eax, dword ptr [rsp + 0x20]
	test	al, 1
	jne	.label_1309
.label_1298:
	mov	rbp, rbp
	mov	al, byte ptr [rbx + 0x68]
	lea	rsi, [rsi]
	test	al, 0x10
	je	.label_1313
	lea	rdi, [rdi]
	test	al, al
	nop	
	jns	.label_1300
	mov	rdx, qword ptr [rbp + 0x48]
	mov	rdi, rbp
	mov	rsp, rsp
	mov	rsi, rbx
	mov	rbp, rbp
	call	check_halt_state_context
	test	rax, rax
	jne	.label_1300
.label_1313:
	nop	
	mov	rsi, qword ptr [rbp + 0x48]
	cmp	qword ptr [rbp + 0x68], rsi
	mov	r15, rbx
	jg	.label_1290
	jmp	.label_1291
.label_1293:
	cmp	rax, qword ptr [rbp + 0x58]
	jl	.label_1295
	jmp	.label_1297
.label_1287:
	cmp	rax, qword ptr [rbp + 0x58]
	jge	.label_1299
.label_1295:
	mov	rsp, rsp
	add	esi, 2
	mov	rsp, rsp
	mov	rdi, rbp
	call	extend_buffers
	lea	rdi, [rdi]
	mov	ecx, eax
	mov	dword ptr [rsp + 0x24], ecx
	test	ecx, ecx
	jne	.label_1306
	lea	rsi, [rsi]
	jmp	.label_1299
.label_1309:
	lea	rdi, [rdi]
	cmp	r15, rbx
	je	.label_1307
	mov	dword ptr [rsp + 0x20], 0
.label_1307:
	mov	rax, qword ptr [rsp + 0x10]
	nop	
	cmove	rax, r14
	mov	qword ptr [rsp + 0x10], rax
	jmp	.label_1298
	nop	
.label_1300:
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp + 0x48]
	mov	rsp, rsp
	mov	qword ptr [rsp], rdx
	mov	eax, dword ptr [rsp + 0x1c]
	test	al, al
	mov	ecx, 1
	mov	rbp, rbp
	mov	eax, 0
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 8], rax
	mov	rax, rdx
	jne	.label_1296
	jmp	.label_1286
.label_1291:
	mov	rbp, rbp
	mov	rcx, qword ptr [rsp + 8]
	mov	rbp, rbp
	test	rcx, rcx
	lea	rdi, [rdi]
	je	.label_1303
	mov	rax, qword ptr [rsp + 0x10]
	mov	rsp, rsp
	add	qword ptr [rcx], rax
.label_1303:
	mov	rax, qword ptr [rsp]
	jmp	.label_1286
.label_1306:
	mov	rax, -2
	mov	rsp, rsp
	cmp	ecx, 0xc
	nop	
	je	.label_1286
	mov	edi, OFFSET FLAT:.str.25_0
	mov	esi, OFFSET FLAT:.str.22_0
	mov	edx, 0x46c
	lea	rdi, [rdi]
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.check_matching
	mov	rbp, rbp
	call	__assert_fail
.label_1311:
	mov	rbp, rbp
	mov	rax, -2
	cmp	dword ptr [rsp + 0x24], 0xc
	lea	rsi, [rsi]
	je	.label_1286
	lea	rsi, [rsi]
	mov	edi, OFFSET FLAT:.str.25_0
	nop	
	mov	esi, OFFSET FLAT:.str.22_0
	mov	edx, 0x435
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.check_matching
	mov	rsp, rsp
	call	__assert_fail
.label_1308:
	test	edx, edx
	nop	
	jne	.label_1310
	test	ecx, ecx
	mov	rsp, rsp
	je	.label_1284
	mov	rsp, rsp
	mov	rdx, qword ptr [rbx + 0x50]
	lea	rdi, [rsp + 0x24]
	nop	
	mov	rsi, r15
	mov	ecx, eax
	mov	rbp, rbp
	call	re_acquire_state_context
	mov	rbx, rax
	mov	rsp, rsp
	jmp	.label_1284
.label_1301:
	test	al, al
	js	.label_1289
	mov	ecx, 1
	lea	rdi, [rdi]
	mov	eax, dword ptr [rsp + 0x1c]
	test	al, al
	mov	rdx, r12
	mov	rbp, rbp
	jne	.label_1292
	mov	rbp, rbp
	mov	rax, r12
	mov	rbp, rbp
	jmp	.label_1286
.label_1294:
	lea	r15, [rbx + 8]
	lea	rsi, [rsi]
	xor	edx, edx
	mov	rdi, rbp
	mov	rsp, rsp
	mov	rsi, r15
	call	check_subexp_matching_top
	mov	rbp, rbp
	mov	dword ptr [rsp + 0x24], eax
	mov	rsp, rsp
	test	eax, eax
	nop	
	jne	.label_1312
	mov	rsp, rsp
	test	byte ptr [rbx + 0x68], 0x40
	je	.label_1314
	mov	rdi, rbp
	mov	rsi, r15
	call	transit_state_bkref
	mov	rbp, rbp
	mov	dword ptr [rsp + 0x24], eax
	test	eax, eax
	lea	rdi, [rdi]
	jne	.label_1305
.label_1314:
	nop	
	mov	dword ptr [rsp + 0x20], 0
	lea	rsi, [rsi]
	jmp	.label_1288
.label_1310:
	lea	rsi, [rsi]
	mov	rbx, qword ptr [r15 + 0x58]
	jmp	.label_1284
.label_1289:
	lea	rsi, [rsi]
	mov	rdi, rbp
	lea	rdi, [rdi]
	mov	rsi, rbx
	lea	rsi, [rsi]
	mov	rdx, r12
	mov	rsp, rsp
	call	check_halt_state_context
	lea	rdi, [rdi]
	cmp	rax, 1
	sbb	rdx, rdx
	or	rdx, r12
	test	rax, rax
	setne	al
	movzx	ecx, al
	lea	rsi, [rsi]
	je	.label_1292
	lea	rdi, [rdi]
	mov	eax, dword ptr [rsp + 0x1c]
	lea	rdi, [rdi]
	test	al, al
	lea	rdi, [rdi]
	jne	.label_1292
	mov	rax, r12
.label_1286:
	add	rsp, 0x28
	nop	
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_1312:
	mov	rbp, rbp
	cdqe	
	jmp	.label_1286
.label_1305:
	lea	rdi, [rdi]
	cdqe	
	lea	rdi, [rdi]
	jmp	.label_1286
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4135c0

	.globl check_halt_state_context
	.type check_halt_state_context, @function
check_halt_state_context:
	push	rbp
	push	r15
	push	r14
	nop	
	push	r13
	push	r12
	lea	rdi, [rdi]
	push	rbx
	push	rax
	lea	rsi, [rsi]
	mov	r14, rsi
	mov	rbx, rdi
	mov	eax, dword ptr [rbx + 0xa0]
	mov	rsi, rdx
	mov	rbp, rbp
	mov	edx, eax
	call	re_string_context_at
	mov	rbp, rbp
	mov	r15d, eax
	mov	rbp, rbp
	xor	ebp, ebp
	mov	rsp, rsp
	cmp	qword ptr [r14 + 0x10], 0
	jle	.label_1316
	mov	r12, qword ptr [rbx + 0x98]
	lea	rdi, [rdi]
	mov	r13, qword ptr [r14 + 0x18]
	xor	ebx, ebx
.label_1315:
	mov	rsp, rsp
	mov	rbp, qword ptr [r13 + rbx*8]
	mov	rsp, rsp
	mov	rdi, r12
	mov	rbp, rbp
	mov	rsi, rbp
	mov	rbp, rbp
	mov	edx, r15d
	call	check_halt_node_context
	test	al, al
	jne	.label_1316
	inc	rbx
	cmp	rbx, qword ptr [r14 + 0x10]
	mov	ebp, 0
	mov	rsp, rsp
	jl	.label_1315
.label_1316:
	mov	rax, rbp
	add	rsp, 8
	nop	
	pop	rbx
	mov	rsp, rsp
	pop	r12
	pop	r13
	pop	r14
	lea	rdi, [rdi]
	pop	r15
	lea	rsi, [rsi]
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x413660

	.globl prune_impossible_nodes
	.type prune_impossible_nodes, @function
prune_impossible_nodes:
	lea	rdi, [rdi]
	push	rbp
	push	r15
	push	r14
	mov	rbp, rbp
	push	r13
	nop	
	push	r12
	push	rbx
	sub	rsp, 0x58
	mov	r12, rdi
	mov	rsp, rsp
	mov	rbx, qword ptr [r12 + 0xa8]
	mov	r13d, 0xc
	movabs	rax, 0x1ffffffffffffffe
	cmp	rbx, rax
	mov	rsp, rsp
	ja	.label_1326
	mov	r14, qword ptr [r12 + 0x98]
	mov	rax, qword ptr [r12 + 0xb0]
	mov	qword ptr [rsp + 0x18], rax
	lea	rsi, [rsi]
	lea	rbp, [rbx*8 + 8]
	lea	rdi, [rdi]
	mov	rdi, rbp
	mov	rsp, rsp
	call	malloc
	mov	rbp, rbp
	mov	r15, rax
	nop	
	mov	r13d, 0xc
	test	r15, r15
	lea	rdi, [rdi]
	je	.label_1322
	cmp	qword ptr [r14 + 0x98], 0
	nop	
	je	.label_1327
	mov	qword ptr [rsp + 8], r14
	mov	rdi, rbp
	call	malloc
	test	rax, rax
	lea	rsi, [rsi]
	je	.label_1330
	mov	qword ptr [rsp + 0x10], r12
	lea	rbp, [rsp + 0x20]
	mov	r12, qword ptr [rsp + 0x18]
	lea	rsi, [rsi]
	mov	r14, r15
	mov	rsp, rsp
	mov	r15, rax
	jmp	.label_1321
.label_1327:
	lea	r14, [rsp + 0x20]
	mov	rsp, rsp
	xor	edx, edx
	mov	rbp, rbp
	mov	rdi, r14
	lea	rsi, [rsi]
	mov	rbp, r15
	mov	rbp, rbp
	mov	rsi, rbp
	mov	rsp, rsp
	mov	rcx, qword ptr [rsp + 0x18]
	mov	rsp, rsp
	mov	r8, rbx
	call	sift_ctx_init
	mov	rdi, r12
	mov	rsi, r14
	lea	rsi, [rsi]
	call	sift_states_backward
	nop	
	mov	r13d, eax
	mov	rdi, qword ptr [rsp + 0x50]
	call	free
	test	r13d, r13d
	mov	rbp, rbp
	jne	.label_1328
	lea	rdi, [rdi]
	xor	r15d, r15d
	cmp	qword ptr [rbp], 0
	lea	rdi, [rdi]
	jne	.label_1318
	mov	r13d, 1
	jmp	.label_1319
.label_1324:
	lea	rdi, [rdi]
	mov	rdx, rbx
	call	check_halt_state_context
	mov	r12, rax
.label_1321:
	lea	rdx, [rbx*8 + 8]
	nop	
	xor	esi, esi
	mov	rdi, r15
	call	memset
	lea	rsi, [rsi]
	mov	rdi, rbp
	mov	rsi, r14
	mov	rdx, r15
	mov	rsp, rsp
	mov	rcx, r12
	mov	rbp, rbp
	mov	r8, rbx
	call	sift_ctx_init
	nop	
	mov	rdi, qword ptr [rsp + 0x10]
	mov	rsi, rbp
	call	sift_states_backward
	mov	r13d, eax
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rsp + 0x50]
	call	free
	mov	rbp, rbp
	test	r13d, r13d
	mov	rbp, rbp
	jne	.label_1329
	cmp	qword ptr [r14], 0
	jne	.label_1320
	mov	rsp, rsp
	cmp	qword ptr [r15], 0
	mov	rbp, rbp
	jne	.label_1320
	mov	r13d, 1
	test	rbx, rbx
	mov	rdi, qword ptr [rsp + 0x10]
	jle	.label_1325
	mov	rax, qword ptr [rdi + 0xb8]
	mov	rsp, rsp
	dec	rbx
	nop	
.label_1323:
	mov	rsp, rsp
	mov	rsi, qword ptr [rax + rbx*8]
	test	rsi, rsi
	mov	rsp, rsp
	je	.label_1317
	test	byte ptr [rsi + 0x68], 0x10
	nop	
	jne	.label_1324
.label_1317:
	lea	rcx, [rbx - 1]
	inc	rbx
	cmp	rbx, 2
	mov	rbx, rcx
	lea	rsi, [rsi]
	jge	.label_1323
	mov	rbp, rbp
	mov	rbp, r14
	lea	rsi, [rsi]
	jmp	.label_1319
.label_1322:
	mov	rbp, r15
	xor	r15d, r15d
	jmp	.label_1319
.label_1329:
	mov	rsp, rsp
	mov	rbp, r14
	lea	rdi, [rdi]
	jmp	.label_1319
.label_1320:
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x18], r12
	lea	rcx, [rbx + 1]
	mov	rdi, qword ptr [rsp + 8]
	mov	rbp, r14
	mov	rsi, rbp
	mov	rdx, r15
	call	merge_state_array
	mov	rbp, rbp
	mov	r13d, eax
	mov	rdi, r15
	nop	
	call	free
	lea	rsi, [rsi]
	xor	r15d, r15d
	test	r13d, r13d
	mov	r12, qword ptr [rsp + 0x10]
	jne	.label_1319
.label_1318:
	mov	rdi, qword ptr [r12 + 0xb8]
	lea	rdi, [rdi]
	call	free
	mov	qword ptr [r12 + 0xb8], rbp
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 0x18]
	mov	qword ptr [r12 + 0xb0], rax
	mov	rsp, rsp
	mov	qword ptr [r12 + 0xa8], rbx
	xor	r13d, r13d
	xor	ebp, ebp
.label_1328:
	xor	r15d, r15d
.label_1319:
	mov	rbp, rbp
	mov	rdi, rbp
	lea	rsi, [rsi]
	call	free
	nop	
	mov	rdi, r15
	mov	rbp, rbp
	call	free
.label_1326:
	mov	eax, r13d
	mov	rbp, rbp
	add	rsp, 0x58
	pop	rbx
	mov	rsp, rsp
	pop	r12
	lea	rsi, [rsi]
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	mov	rbp, rbp
	ret	
.label_1330:
	mov	rbp, r15
	mov	r15, rax
	jmp	.label_1319
.label_1325:
	mov	rsp, rsp
	mov	rbp, r14
	mov	rsp, rsp
	jmp	.label_1319
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x413960

	.globl match_ctx_clean
	.type match_ctx_clean, @function
match_ctx_clean:
	push	r15
	push	r14
	mov	rsp, rsp
	push	r13
	lea	rsi, [rsi]
	push	r12
	lea	rdi, [rdi]
	push	rbx
	lea	rdi, [rdi]
	mov	r14, rdi
	nop	
	cmp	qword ptr [r14 + 0xe8], 0
	mov	rbp, rbp
	jle	.label_1331
	nop	
	xor	r12d, r12d
	nop	
.label_1333:
	mov	rax, qword ptr [r14 + 0xf8]
	nop	
	mov	r15, qword ptr [rax + r12*8]
	mov	rsp, rsp
	cmp	qword ptr [r15 + 0x20], 0
	lea	rdi, [rdi]
	mov	ebx, 0
	lea	rsi, [rsi]
	jle	.label_1332
	nop	word ptr cs:[rax + rax]
.label_1334:
	nop	
	mov	rax, qword ptr [r15 + 0x28]
	mov	rsp, rsp
	mov	r13, qword ptr [rax + rbx*8]
	mov	rdi, qword ptr [r13 + 0x20]
	call	free
	lea	rsi, [rsi]
	mov	rdi, r13
	call	free
	mov	rbp, rbp
	inc	rbx
	cmp	rbx, qword ptr [r15 + 0x20]
	jl	.label_1334
.label_1332:
	mov	rbp, rbp
	mov	rdi, qword ptr [r15 + 0x28]
	nop	
	call	free
	mov	rsp, rsp
	mov	rax, qword ptr [r15 + 0x10]
	test	rax, rax
	mov	rbp, rbp
	je	.label_1335
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rax + 0x10]
	lea	rsi, [rsi]
	call	free
	nop	
	mov	rdi, qword ptr [r15 + 0x10]
	mov	rbp, rbp
	call	free
.label_1335:
	mov	rsp, rsp
	mov	rdi, r15
	nop	
	call	free
	mov	rbp, rbp
	inc	r12
	mov	rsp, rsp
	cmp	r12, qword ptr [r14 + 0xe8]
	jl	.label_1333
.label_1331:
	mov	qword ptr [r14 + 0xe8], 0
	mov	qword ptr [r14 + 0xc8], 0
	mov	rsp, rsp
	pop	rbx
	lea	rsi, [rsi]
	pop	r12
	mov	rsp, rsp
	pop	r13
	pop	r14
	pop	r15
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x413a70

	.globl set_regs
	.type set_regs, @function
set_regs:
	push	rbp
	lea	rsi, [rsi]
	mov	rbp, rsp
	push	r15
	push	r14
	lea	rdi, [rdi]
	push	r13
	push	r12
	push	rbx
	lea	rdi, [rdi]
	sub	rsp, 0x68
	lea	rdi, [rdi]
	mov	r12, rcx
	nop	
	mov	rbx, rdx
	mov	qword ptr [rbp - 0x78], rsi
	mov	r15, qword ptr [rdi]
	mov	rax,  qword ptr [word ptr [rip + label_1351]]
	mov	qword ptr [rbp - 0x60], rax
	mov	rbp, rbp
	movups	xmm0,  xmmword ptr [word ptr [rip + label_1352]]
	mov	rsp, rsp
	movaps	xmmword ptr [rbp - 0x70], xmm0
	mov	rbp, rbp
	xor	r14d, r14d
	lea	rdi, [rdi]
	test	r8b, r8b
	je	.label_1353
	mov	rax, qword ptr [rbp - 0x68]
	shl	rax, 4
	lea	rdi, [rdi]
	lea	rdi, [rax + rax*2]
	call	malloc
	mov	qword ptr [rbp - 0x60], rax
	mov	r14d, 0xc
	lea	rdi, [rdi]
	test	rax, rax
	je	.label_1340
	lea	rsi, [rsi]
	lea	r14, [rbp - 0x70]
.label_1353:
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x88], r15
	nop	
	mov	r15, qword ptr [r15 + 0x90]
	nop	
	xorps	xmm0, xmm0
	nop	
	movaps	xmmword ptr [rbp - 0x50], xmm0
	nop	
	mov	qword ptr [rbp - 0x40], 0
	mov	rbp, rbp
	mov	r13, rbx
	shl	r13, 4
	cmp	r13, 0xfbf
	lea	rsi, [rsi]
	ja	.label_1354
	mov	rdi, rsp
	lea	rsi, [rsi]
	lea	rax, [r13 + 0xf]
	lea	rdi, [rdi]
	and	rax, 0xfffffffffffffff0
	mov	rsp, rsp
	sub	rdi, rax
	mov	rsp, rsp
	mov	rsp, rdi
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x8c], 0
	jmp	.label_1355
.label_1354:
	mov	rsp, rsp
	mov	rdi, r13
	nop	
	call	malloc
	lea	rsi, [rsi]
	mov	rdi, rax
	test	rdi, rdi
	lea	rdi, [rdi]
	je	.label_1346
	lea	rdi, [rdi]
	mov	al, 1
	mov	dword ptr [rbp - 0x8c], eax
.label_1355:
	mov	qword ptr [rbp - 0x80], rdi
	nop	
	mov	rsi, r12
	mov	rdx, r13
	call	memcpy
	mov	r8, qword ptr [r12]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x30], r8
	nop	
	cmp	r8, qword ptr [r12 + 8]
	jg	.label_1339
	mov	rsp, rsp
	lea	r13, [r12 + 8]
	jmp	.label_1338
.label_1347:
	cmp	r15, -2
	je	.label_1341
	mov	rbp, rbp
	test	r14, r14
	je	.label_1344
	mov	rbp, rbp
	mov	rdi, r14
	nop	
	lea	rsi, [rbp - 0x30]
	mov	rdx, rbx
	mov	rsp, rsp
	mov	rcx, r12
	lea	r8, [rbp - 0x50]
	call	pop_fail_stack
	mov	r15, rax
	mov	rbp, rbp
	jmp	.label_1349
	nop	word ptr cs:[rax + rax]
.label_1338:
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x88]
	lea	rsi, [rsi]
	mov	rsi, r12
	mov	rdx, qword ptr [rbp - 0x80]
	mov	rcx, r15
	mov	r9, rbx
	call	update_regs
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x30]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [r12 + 8]
	jne	.label_1337
	mov	rax, qword ptr [rbp - 0x78]
	cmp	r15, qword ptr [rax + 0xb0]
	jne	.label_1337
	lea	rdi, [rdi]
	test	r14, r14
	lea	rdi, [rdi]
	je	.label_1343
	mov	rsp, rsp
	test	rbx, rbx
	mov	rcx, r13
	mov	eax, 0
	je	.label_1345
	nop	dword ptr [rax]
.label_1350:
	cmp	qword ptr [rcx - 8], 0
	js	.label_1348
	nop	
	cmp	qword ptr [rcx], -1
	je	.label_1345
.label_1348:
	inc	rax
	add	rcx, 0x10
	cmp	rax, rbx
	nop	
	jb	.label_1350
.label_1345:
	nop	
	cmp	rax, rbx
	je	.label_1339
	mov	rdi, r14
	lea	rsi, [rbp - 0x30]
	mov	rbp, rbp
	mov	rdx, rbx
	mov	rcx, r12
	mov	rbp, rbp
	lea	r8, [rbp - 0x50]
	call	pop_fail_stack
	nop	
	mov	r15, rax
.label_1337:
	lea	rdi, [rdi]
	sub	rsp, 0x10
	lea	rdi, [rdi]
	mov	qword ptr [rsp], r14
	mov	rdi, qword ptr [rbp - 0x78]
	mov	rsi, rbx
	mov	rdx, r12
	lea	rsi, [rsi]
	lea	rcx, [rbp - 0x30]
	lea	rsi, [rsi]
	mov	r8, r15
	lea	r9, [rbp - 0x50]
	mov	rbp, rbp
	call	proceed_next_node
	add	rsp, 0x10
	lea	rdi, [rdi]
	mov	r15, rax
	test	r15, r15
	js	.label_1347
.label_1349:
	mov	rsp, rsp
	mov	r8, qword ptr [rbp - 0x30]
	cmp	r8, qword ptr [r12 + 8]
	jle	.label_1338
.label_1339:
	nop	
	mov	rdi, qword ptr [rbp - 0x40]
	mov	rsp, rsp
	call	free
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x8c]
	test	al, al
	lea	rdi, [rdi]
	je	.label_1336
	mov	rdi, qword ptr [rbp - 0x80]
	call	free
.label_1336:
	lea	rdi, [rdi]
	mov	rdi, r14
	call	free_fail_stack_return
	lea	rdi, [rdi]
	xor	r14d, r14d
	jmp	.label_1340
.label_1343:
	mov	rdi, qword ptr [rbp - 0x40]
	lea	rsi, [rsi]
	call	free
	mov	rsp, rsp
	xor	r14d, r14d
	jmp	.label_1342
.label_1341:
	nop	
	mov	rdi, qword ptr [rbp - 0x40]
	mov	rbp, rbp
	call	free
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x8c]
	test	al, al
	lea	rsi, [rsi]
	je	.label_1346
	mov	rdi, qword ptr [rbp - 0x80]
	call	free
.label_1346:
	lea	rdi, [rdi]
	mov	rdi, r14
	call	free_fail_stack_return
	lea	rdi, [rdi]
	mov	r14d, 0xc
.label_1340:
	mov	rsp, rsp
	mov	eax, r14d
	lea	rsp, [rbp - 0x28]
	pop	rbx
	mov	rsp, rsp
	pop	r12
	pop	r13
	lea	rsi, [rsi]
	pop	r14
	pop	r15
	pop	rbp
	lea	rdi, [rdi]
	ret	
.label_1344:
	mov	rdi, qword ptr [rbp - 0x40]
	call	free
	nop	
	mov	r14d, 1
.label_1342:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x8c]
	test	al, al
	je	.label_1340
	mov	rdi, qword ptr [rbp - 0x80]
	call	free
	mov	rsp, rsp
	jmp	.label_1340
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x413dd0

	.globl match_ctx_free
	.type match_ctx_free, @function
match_ctx_free:
	mov	rsp, rsp
	push	rbx
	lea	rsi, [rsi]
	mov	rbx, rdi
	lea	rsi, [rsi]
	call	match_ctx_clean
	mov	rsp, rsp
	mov	rdi, qword ptr [rbx + 0xf8]
	lea	rsi, [rsi]
	call	free
	mov	rbp, rbp
	mov	rdi, qword ptr [rbx + 0xd8]
	pop	rbx
	mov	rsp, rsp
	jmp	free
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x413e10

	.globl re_string_context_at
	.type re_string_context_at, @function
re_string_context_at:
	nop	
	push	rbp
	mov	rsp, rsp
	push	rbx
	push	rax
	nop	
	mov	rbx, rdi
	lea	rsi, [rsi]
	test	rsi, rsi
	js	.label_1360
	cmp	qword ptr [rbx + 0x58], rsi
	je	.label_1362
	nop	
	cmp	dword ptr [rbx + 0x90], 2
	nop	
	jl	.label_1364
	mov	rbp, rbp
	mov	rax, qword ptr [rbx + 0x10]
	lea	rsi, [rsi]
	inc	rsi
	nop	dword ptr [rax]
.label_1359:
	mov	rbp, rbp
	mov	ebp, dword ptr [rax + rsi*4 - 4]
	lea	rdi, [rdi]
	cmp	ebp, -1
	jne	.label_1358
	nop	
	dec	rsi
	mov	rbp, rbp
	test	rsi, rsi
	jg	.label_1359
	nop	
	mov	edx, dword ptr [rbx + 0x70]
	nop	
	jmp	.label_1357
.label_1364:
	mov	rbp, rbp
	mov	rax, qword ptr [rbx + 8]
	mov	rdi, qword ptr [rbx + 0x80]
	movzx	ebp, byte ptr [rax + rsi]
	lea	rsi, [rsi]
	mov	rsi, rbp
	call	bitset_contain
	mov	edx, 1
	mov	rbp, rbp
	test	al, al
	jne	.label_1357
	mov	rsp, rsp
	xor	edx, edx
	cmp	ebp, 0xa
	jne	.label_1357
	nop	
	jmp	.label_1361
.label_1358:
	mov	rsp, rsp
	cmp	byte ptr [rbx + 0x8e], 0
	mov	rsp, rsp
	jne	.label_1363
.label_1356:
	xor	edx, edx
	cmp	ebp, 0xa
	nop	
	jne	.label_1357
.label_1361:
	mov	edx, 2
	cmp	byte ptr [rbx + 0x8d], 0
	jne	.label_1357
	xor	edx, edx
	mov	rbp, rbp
	jmp	.label_1357
.label_1360:
	mov	edx, dword ptr [rbx + 0x70]
	jmp	.label_1357
.label_1362:
	lea	rdi, [rdi]
	and	edx, 2
	xor	edx, 0xa
.label_1357:
	mov	rbp, rbp
	mov	eax, edx
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
.label_1363:
	mov	edi, ebp
	call	iswalnum
	cmp	ebp, 0x5f
	mov	edx, 1
	je	.label_1357
	test	eax, eax
	jne	.label_1357
	jmp	.label_1356
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x413f10

	.globl re_string_skip_chars
	.type re_string_skip_chars, @function
re_string_skip_chars:
	mov	rbp, rbp
	push	rbp
	push	r15
	push	r14
	mov	rbp, rbp
	push	r13
	push	r12
	mov	rsp, rsp
	push	rbx
	mov	rsp, rsp
	sub	rsp, 0x18
	mov	r15, rsi
	mov	r12, rdi
	lea	rsi, [rsi]
	mov	rbx, qword ptr [r12 + 0x38]
	nop	
	add	rbx, qword ptr [r12 + 0x28]
	mov	ecx, 0xffffffff
	lea	rdi, [rdi]
	cmp	rbx, r15
	jge	.label_1369
	mov	qword ptr [rsp + 8], rdx
	lea	r13, [r12 + 0x20]
	jmp	.label_1368
.label_1366:
	mov	rbp, rbp
	xor	ecx, ecx
	cmp	rbp, rbx
	mov	rsp, rsp
	je	.label_1367
	test	rax, rax
	lea	rdi, [rdi]
	je	.label_1367
	mov	rsp, rsp
	mov	rax, qword ptr [r12]
	lea	rdi, [rdi]
	movzx	ecx, byte ptr [rax + rbx]
.label_1367:
	mov	qword ptr [r13], r14
	lea	rsi, [rsi]
	mov	eax, 1
	lea	rdi, [rdi]
	jmp	.label_1370
	nop	
.label_1368:
	mov	r14, qword ptr [r12 + 0x20]
	mov	rbp, qword ptr [r12 + 0x50]
	mov	rdx, rbp
	sub	rdx, rbx
	lea	rdi, [rdi]
	mov	rsi, qword ptr [r12]
	nop	
	add	rsi, rbx
	lea	rdi, [rsp + 0x14]
	mov	rcx, r13
	call	rpl_mbrtowc
	mov	rbp, rbp
	test	rax, rax
	mov	rbp, rbp
	je	.label_1366
	nop	
	mov	rcx, rax
	lea	rsi, [rsi]
	or	rcx, 1
	cmp	rcx, -1
	je	.label_1366
	mov	ecx, dword ptr [rsp + 0x14]
.label_1370:
	add	rbx, rax
	cmp	rbx, r15
	jl	.label_1368
	jmp	.label_1365
.label_1369:
	mov	rsp, rsp
	mov	qword ptr [rsp + 8], rdx
.label_1365:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp + 8]
	mov	dword ptr [rax], ecx
	mov	rax, rbx
	add	rsp, 0x18
	pop	rbx
	mov	rbp, rbp
	pop	r12
	nop	
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	mov	rsp, rsp
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x414010

	.globl bitset_contain
	.type bitset_contain, @function
bitset_contain:
	mov	rbp, rbp
	mov	rax, rsi
	lea	rdi, [rdi]
	sar	rax, 0x3f
	lea	rdi, [rdi]
	shr	rax, 0x3a
	nop	
	add	rax, rsi
	sar	rax, 6
	mov	rax, qword ptr [rdi + rax*8]
	bt	rax, rsi
	setb	al
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x414040

	.globl check_subexp_matching_top
	.type check_subexp_matching_top, @function
check_subexp_matching_top:
	push	r15
	mov	rbp, rbp
	push	r14
	push	r13
	mov	rbp, rbp
	push	r12
	push	rbx
	mov	r14, rdx
	mov	rsp, rsp
	mov	r13, rsi
	mov	r15, rdi
	xor	eax, eax
	cmp	qword ptr [r13 + 8], 0
	lea	rsi, [rsi]
	jle	.label_1371
	lea	rdi, [rdi]
	mov	r12, qword ptr [r15 + 0x98]
	mov	rbp, rbp
	xor	ebx, ebx
	nop	word ptr [rax + rax]
.label_1373:
	mov	rax, qword ptr [r13 + 0x10]
	mov	rsi, qword ptr [rax + rbx*8]
	mov	rax, qword ptr [r12]
	lea	rdi, [rdi]
	mov	rcx, rsi
	mov	rbp, rbp
	shl	rcx, 4
	nop	
	movzx	edx, byte ptr [rax + rcx + 8]
	cmp	edx, 8
	lea	rdi, [rdi]
	jne	.label_1372
	mov	rax, qword ptr [rax + rcx]
	cmp	rax, 0x3f
	lea	rsi, [rsi]
	jg	.label_1372
	lea	rdi, [rdi]
	mov	rcx, qword ptr [r12 + 0xa0]
	bt	rcx, rax
	jae	.label_1372
	mov	rbp, rbp
	mov	rdi, r15
	mov	rdx, r14
	lea	rsi, [rsi]
	call	match_ctx_add_subtop
	lea	rsi, [rsi]
	test	eax, eax
	jne	.label_1371
	nop	dword ptr [rax]
.label_1372:
	mov	rsp, rsp
	inc	rbx
	xor	eax, eax
	lea	rsi, [rsi]
	cmp	rbx, qword ptr [r13 + 8]
	jl	.label_1373
.label_1371:
	lea	rdi, [rdi]
	pop	rbx
	mov	rbp, rbp
	pop	r12
	lea	rdi, [rdi]
	pop	r13
	nop	
	pop	r14
	pop	r15
	mov	rbp, rbp
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x414110

	.globl transit_state_bkref
	.type transit_state_bkref, @function
transit_state_bkref:
	lea	rdi, [rdi]
	push	rbp
	mov	rsp, rsp
	push	r15
	lea	rdi, [rdi]
	push	r14
	lea	rsi, [rsi]
	push	r13
	push	r12
	lea	rsi, [rsi]
	push	rbx
	mov	rbp, rbp
	sub	rsp, 0x68
	mov	r14, rsi
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x38], r14
	mov	r13, rdi
	lea	rsi, [rsi]
	cmp	qword ptr [r14 + 8], 0
	lea	rsi, [rsi]
	jle	.label_1378
	nop	
	mov	r8, qword ptr [r13 + 0x98]
	nop	
	mov	qword ptr [rsp + 0x10], r8
	lea	rsi, [rsi]
	mov	rax, qword ptr [r13 + 0x48]
	mov	qword ptr [rsp + 0x40], rax
	xor	r15d, r15d
	nop	dword ptr [rax]
.label_1374:
	mov	rax, qword ptr [r14 + 0x10]
	mov	rsi, qword ptr [rax + r15*8]
	mov	rax, qword ptr [r8]
	mov	rsp, rsp
	mov	rcx, rsi
	mov	rsp, rsp
	shl	rcx, 4
	lea	rsi, [rsi]
	mov	ebx, dword ptr [rax + rcx + 8]
	mov	rbp, rbp
	movzx	eax, bl
	lea	rsi, [rsi]
	cmp	eax, 4
	lea	rdi, [rdi]
	jne	.label_1377
	nop	
	mov	ebp, ebx
	lea	rsi, [rsi]
	shr	ebp, 8
	mov	rsp, rsp
	test	bp, 0x3ff
	je	.label_1380
	mov	r14, rsi
	mov	edx, dword ptr [r13 + 0xa0]
	lea	rsi, [rsi]
	mov	rdi, r13
	nop	
	mov	r12, r8
	mov	rsi, qword ptr [rsp + 0x40]
	call	re_string_context_at
	mov	rsi, r14
	mov	r14, qword ptr [rsp + 0x38]
	mov	r8, r12
	mov	ecx, eax
	and	ecx, 1
	test	bpl, 4
	je	.label_1386
	lea	rsi, [rsi]
	test	ecx, ecx
	je	.label_1377
.label_1386:
	test	bh, 8
	nop	
	je	.label_1390
	test	ecx, ecx
	jne	.label_1377
.label_1390:
	mov	rsp, rsp
	test	bh, 0x20
	nop	
	je	.label_1375
	mov	ecx, eax
	and	ecx, 2
	je	.label_1377
.label_1375:
	test	bpl, bpl
	jns	.label_1380
	mov	rbp, rbp
	and	eax, 8
	je	.label_1377
	nop	dword ptr [rax]
.label_1380:
	mov	qword ptr [rsp + 8], rsi
	mov	r12, qword ptr [r13 + 0xc8]
	mov	rbp, rbp
	mov	rdi, r13
	lea	rsi, [rsi]
	mov	rbx, r8
	mov	rbp, rbp
	mov	rbp, rsi
	mov	rdx, qword ptr [rsp + 0x40]
	call	get_subexp
	mov	rdx, rbp
	mov	r8, rbx
	mov	dword ptr [rsp + 0x64], eax
	lea	rdi, [rdi]
	test	eax, eax
	jne	.label_1376
	cmp	r12, qword ptr [r13 + 0xc8]
	jge	.label_1377
	lea	rax, [r12 + r12*4]
	lea	rbp, [rax*8 + 0x18]
	nop	word ptr cs:[rax + rax]
.label_1388:
	mov	rsp, rsp
	mov	rax, qword ptr [r13 + 0xd8]
	cmp	qword ptr [rax + rbp - 0x18], rdx
	nop	
	jne	.label_1381
	mov	rsp, rsp
	mov	rcx, qword ptr [rsp + 0x40]
	lea	rdi, [rdi]
	cmp	qword ptr [rax + rbp - 0x10], rcx
	jne	.label_1381
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rax + rbp - 8]
	mov	rsi, qword ptr [rax + rbp]
	mov	rdi, qword ptr [r8 + 0x30]
	mov	rbp, rbp
	cmp	rsi, rcx
	jne	.label_1382
	mov	qword ptr [rsp + 0x28], rdi
	nop	
	mov	qword ptr [rsp + 0x18], rsi
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x20], rcx
	mov	rcx, qword ptr [r8 + 0x28]
	lea	rdx, [rdx + rdx*2]
	mov	rbp, rbp
	mov	rcx, qword ptr [rcx + rdx*8 + 0x10]
	lea	rsi, [rsi]
	jmp	.label_1385
.label_1382:
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x28], rdi
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x18], rsi
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x20], rcx
	lea	rcx, [rdx*8]
	lea	rdi, [rdi]
	add	rcx, qword ptr [r8 + 0x18]
.label_1385:
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rcx]
	lea	rdi, [rdi]
	lea	rcx, [rcx + rcx*2]
	mov	qword ptr [rsp + 0x30], rcx
	mov	rsp, rsp
	mov	r14, qword ptr [rax + rbp]
	mov	rsp, rsp
	mov	rbx, qword ptr [rsp + 0x40]
	lea	rdi, [rdi]
	add	r14, rbx
	mov	rbp, rbp
	sub	r14, qword ptr [rax + rbp - 8]
	mov	rbp, rbp
	lea	rsi, [r14 - 1]
	lea	rdi, [rdi]
	mov	edx, dword ptr [r13 + 0xa0]
	nop	
	mov	rdi, r13
	call	re_string_context_at
	mov	rcx, qword ptr [r13 + 0xb8]
	mov	r8, qword ptr [rcx + r14*8]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rcx + rbx*8]
	mov	rbp, rbp
	test	rcx, rcx
	mov	rbp, rbp
	mov	esi, 0
	mov	rsp, rsp
	je	.label_1389
	mov	rsi, qword ptr [rcx + 0x10]
.label_1389:
	mov	rbp, rbp
	mov	rcx, qword ptr [rsp + 0x28]
	mov	rbp, rbp
	mov	rdx, qword ptr [rsp + 0x30]
	nop	
	lea	rdx, [rcx + rdx*8]
	test	r8, r8
	lea	rbx, [rsp + 0x48]
	mov	rdi, rbx
	je	.label_1379
	mov	ebx, eax
	nop	
	mov	qword ptr [rsp + 0x30], rsi
	nop	
	mov	rsi, qword ptr [r8 + 0x50]
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x28], rdx
	nop	
	call	re_node_set_init_union
	mov	dword ptr [rsp + 0x64], eax
	test	eax, eax
	jne	.label_1387
	lea	rdi, [rsp + 0x64]
	mov	rbp, rbp
	mov	rsi, qword ptr [rsp + 0x10]
	nop	
	lea	rdx, [rsp + 0x48]
	nop	
	mov	ecx, ebx
	call	re_acquire_state_context
	mov	rsp, rsp
	mov	rcx, qword ptr [r13 + 0xb8]
	lea	rsi, [rsi]
	mov	qword ptr [rcx + r14*8], rax
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rsp + 0x58]
	call	free
	mov	rax, qword ptr [r13 + 0xb8]
	lea	rdi, [rdi]
	cmp	qword ptr [rax + r14*8], 0
	mov	rbp, rbp
	jne	.label_1384
	lea	rdi, [rdi]
	mov	eax, dword ptr [rsp + 0x64]
	test	eax, eax
	jne	.label_1376
.label_1384:
	mov	r14, qword ptr [rsp + 0x38]
	lea	rdi, [rdi]
	mov	r8, qword ptr [rsp + 0x10]
	mov	rdx, qword ptr [rsp + 8]
	jmp	.label_1383
.label_1379:
	mov	qword ptr [rsp + 0x30], rsi
	mov	rbp, rbp
	lea	rdi, [rsp + 0x64]
	mov	rbp, rbp
	mov	rbx, qword ptr [rsp + 0x10]
	mov	rsi, rbx
	nop	
	mov	qword ptr [rsp + 0x28], rdx
	lea	rdi, [rdi]
	mov	ecx, eax
	mov	rsp, rsp
	call	re_acquire_state_context
	mov	r8, rbx
	mov	rsp, rsp
	mov	rcx, qword ptr [r13 + 0xb8]
	mov	qword ptr [rcx + r14*8], rax
	mov	rax, qword ptr [r13 + 0xb8]
	cmp	qword ptr [rax + r14*8], 0
	nop	
	mov	r14, qword ptr [rsp + 0x38]
	mov	rsp, rsp
	mov	rdx, qword ptr [rsp + 8]
	mov	rsp, rsp
	jne	.label_1383
	mov	eax, dword ptr [rsp + 0x64]
	lea	rsi, [rsi]
	test	eax, eax
	jne	.label_1376
	nop	dword ptr [rax]
.label_1383:
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 0x18]
	cmp	rax, qword ptr [rsp + 0x20]
	jne	.label_1381
	mov	rax, qword ptr [r13 + 0xb8]
	mov	rcx, qword ptr [rsp + 0x40]
	nop	
	mov	rax, qword ptr [rax + rcx*8]
	mov	rsp, rsp
	mov	rcx, qword ptr [rsp + 0x30]
	lea	rsi, [rsi]
	cmp	qword ptr [rax + 0x10], rcx
	jle	.label_1381
	mov	rdi, r13
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x38], r14
	mov	r14, r8
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rsp + 0x28]
	mov	rbx, rdx
	mov	rdx, qword ptr [rsp + 0x40]
	mov	rbp, rbp
	call	check_subexp_matching_top
	mov	rdx, rbx
	mov	rcx, r14
	mov	dword ptr [rsp + 0x64], eax
	nop	
	test	eax, eax
	jne	.label_1376
	mov	rdi, r13
	mov	r14, rcx
	mov	rsp, rsp
	mov	rsi, qword ptr [rsp + 0x28]
	mov	rbx, rdx
	mov	rsp, rsp
	call	transit_state_bkref
	lea	rsi, [rsi]
	mov	rdx, rbx
	mov	r8, r14
	mov	r14, qword ptr [rsp + 0x38]
	mov	dword ptr [rsp + 0x64], eax
	test	eax, eax
	jne	.label_1376
	nop	dword ptr [rax]
.label_1381:
	inc	r12
	add	rbp, 0x28
	nop	
	cmp	r12, qword ptr [r13 + 0xc8]
	lea	rdi, [rdi]
	jl	.label_1388
	nop	dword ptr [rax + rax]
.label_1377:
	mov	rsp, rsp
	inc	r15
	cmp	r15, qword ptr [r14 + 8]
	nop	
	jl	.label_1374
.label_1378:
	mov	dword ptr [rsp + 0x64], 0
	jmp	.label_1376
.label_1387:
	mov	rdi, qword ptr [rsp + 0x58]
	lea	rsi, [rsi]
	call	free
.label_1376:
	mov	eax, dword ptr [rsp + 0x64]
	add	rsp, 0x68
	lea	rsi, [rsi]
	pop	rbx
	mov	rbp, rbp
	pop	r12
	mov	rbp, rbp
	pop	r13
	pop	r14
	pop	r15
	mov	rsp, rsp
	pop	rbp
	lea	rsi, [rsi]
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4145d0

	.globl extend_buffers
	.type extend_buffers, @function
extend_buffers:
	nop	
	push	rbx
	lea	rdi, [rdi]
	mov	ecx, esi
	mov	rbx, rdi
	mov	rsi, qword ptr [rbx + 0x40]
	mov	rbp, rbp
	mov	eax, 0xc
	movabs	rdx, 0xffffffffffffffe
	cmp	rsi, rdx
	ja	.label_1392
	movsxd	rax, ecx
	mov	rcx, qword ptr [rbx + 0x58]
	lea	rsi, [rsi]
	add	rsi, rsi
	mov	rbp, rbp
	cmp	rcx, rsi
	cmovle	rsi, rcx
	cmp	rax, rsi
	cmovge	rsi, rax
	mov	rsp, rsp
	mov	rdi, rbx
	lea	rdi, [rdi]
	call	re_string_realloc_buffers
	test	eax, eax
	jne	.label_1392
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbx + 0xb8]
	test	rdi, rdi
	je	.label_1394
	mov	rax, qword ptr [rbx + 0x40]
	lea	rdi, [rdi]
	lea	rsi, [rax*8 + 8]
	call	realloc
	lea	rsi, [rsi]
	mov	rcx, rax
	test	rcx, rcx
	nop	
	mov	eax, 0xc
	mov	rbp, rbp
	je	.label_1392
	mov	rbp, rbp
	mov	qword ptr [rbx + 0xb8], rcx
.label_1394:
	cmp	byte ptr [rbx + 0x88], 0
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbx + 0x90]
	je	.label_1395
	mov	rdi, rbx
	nop	
	cmp	eax, 2
	jl	.label_1391
	call	build_wcs_upper_buffer
	mov	rsp, rsp
	test	eax, eax
	lea	rdi, [rdi]
	je	.label_1393
	jmp	.label_1392
.label_1395:
	cmp	eax, 2
	jl	.label_1396
	mov	rdi, rbx
	call	build_wcs_buffer
	mov	rsp, rsp
	jmp	.label_1393
.label_1391:
	call	build_upper_buffer
	jmp	.label_1393
.label_1396:
	lea	rsi, [rsi]
	cmp	qword ptr [rbx + 0x78], 0
	nop	
	je	.label_1393
	mov	rdi, rbx
	nop	
	call	re_string_translate_buffer
.label_1393:
	xor	eax, eax
.label_1392:
	pop	rbx
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4146d0

	.globl transit_state
	.type transit_state, @function
transit_state:
	push	r15
	lea	rdi, [rdi]
	push	r14
	lea	rsi, [rsi]
	push	r13
	push	r12
	lea	rdi, [rdi]
	push	rbx
	mov	r14, rdx
	mov	rbx, rsi
	mov	rsp, rsp
	mov	r15, rdi
	mov	rsp, rsp
	test	byte ptr [r14 + 0x68], 0x20
	jne	.label_1401
.label_1399:
	nop	
	mov	rax, qword ptr [rbx + 0x48]
	lea	rcx, [rax + 1]
	lea	rsi, [rsi]
	mov	qword ptr [rbx + 0x48], rcx
	mov	rsp, rsp
	mov	rcx, qword ptr [rbx + 8]
	movzx	r12d, byte ptr [rcx + rax]
.label_1400:
	mov	rsp, rsp
	mov	rax, qword ptr [r14 + 0x58]
	test	rax, rax
	jne	.label_1402
	lea	rdi, [rdi]
	mov	r13, qword ptr [r14 + 0x60]
	mov	rsp, rsp
	test	r13, r13
	mov	rbp, rbp
	jne	.label_1397
	nop	
	mov	rdi, qword ptr [rbx + 0x98]
	lea	rsi, [rsi]
	mov	rsi, r14
	mov	rsp, rsp
	call	build_trtable
	lea	rdi, [rdi]
	test	al, al
	jne	.label_1400
	mov	dword ptr [r15], 0xc
	xor	eax, eax
	lea	rdi, [rdi]
	jmp	.label_1398
.label_1402:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax + r12*8]
.label_1398:
	pop	rbx
	lea	rsi, [rsi]
	pop	r12
	mov	rsp, rsp
	pop	r13
	pop	r14
	nop	
	pop	r15
	ret	
.label_1401:
	mov	rdi, rbx
	mov	rsi, r14
	mov	rsp, rsp
	call	transit_state_mb
	mov	rsp, rsp
	mov	ecx, eax
	mov	dword ptr [r15], ecx
	mov	rsp, rsp
	xor	eax, eax
	mov	rsp, rsp
	test	ecx, ecx
	je	.label_1399
	jmp	.label_1398
.label_1397:
	mov	rsi, qword ptr [rbx + 0x48]
	nop	
	dec	rsi
	lea	rsi, [rsi]
	mov	edx, dword ptr [rbx + 0xa0]
	mov	rbp, rbp
	mov	rdi, rbx
	call	re_string_context_at
	lea	rsi, [rsi]
	and	eax, 1
	lea	rdi, [rdi]
	shl	rax, 8
	mov	rbp, rbp
	or	rax, r12
	mov	rbp, rbp
	mov	rax, qword ptr [r13 + rax*8]
	lea	rsi, [rsi]
	jmp	.label_1398
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4147e0

	.globl merge_state_with_log
	.type merge_state_with_log, @function
merge_state_with_log:
	push	rbp
	push	r15
	push	r14
	push	r13
	lea	rdi, [rdi]
	push	r12
	mov	rsp, rsp
	push	rbx
	sub	rsp, 0x18
	mov	rbx, rdx
	mov	rbp, rbp
	mov	r13, rsi
	mov	r15, rdi
	mov	rsp, rsp
	mov	r14, qword ptr [r13 + 0x48]
	lea	rdi, [rdi]
	mov	r12, qword ptr [r13 + 0x98]
	lea	rdi, [rdi]
	mov	rax, qword ptr [r13 + 0xb8]
	lea	rsi, [rsi]
	cmp	r14, qword ptr [r13 + 0xc0]
	jle	.label_1407
	mov	rsp, rsp
	mov	qword ptr [rax + r14*8], rbx
	mov	qword ptr [r13 + 0xc0], r14
	jmp	.label_1405
.label_1407:
	cmp	qword ptr [rax + r14*8], 0
	lea	rsi, [rsi]
	je	.label_1409
	mov	rax, qword ptr [r13 + 0xb8]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax + r14*8]
	mov	rdx, qword ptr [rax + 0x50]
	test	rbx, rbx
	mov	rbp, rbp
	je	.label_1404
	mov	rbp, qword ptr [rbx + 0x50]
	lea	rdi, [rsp]
	mov	rsi, rbp
	mov	rsp, rsp
	call	re_node_set_init_union
	mov	dword ptr [r15], eax
	test	eax, eax
	je	.label_1408
	xor	eax, eax
	jmp	.label_1406
.label_1409:
	nop	
	mov	qword ptr [rax + r14*8], rbx
	mov	rbp, rbp
	jmp	.label_1405
.label_1404:
	mov	rbp, rbp
	mov	rax, qword ptr [rdx + 0x10]
	mov	qword ptr [rsp + 0x10], rax
	movups	xmm0, xmmword ptr [rdx]
	movaps	xmmword ptr [rsp], xmm0
	mov	rsp, rsp
	xor	ebp, ebp
.label_1408:
	mov	rsi, qword ptr [r13 + 0x48]
	dec	rsi
	nop	
	mov	edx, dword ptr [r13 + 0xa0]
	mov	rdi, r13
	lea	rdi, [rdi]
	call	re_string_context_at
	lea	rdi, [rdi]
	lea	rdx, [rsp]
	mov	rsp, rsp
	mov	rdi, r15
	mov	rsi, r12
	lea	rdi, [rdi]
	mov	ecx, eax
	call	re_acquire_state_context
	mov	rsp, rsp
	mov	rbx, rax
	mov	rax, qword ptr [r13 + 0xb8]
	lea	rsi, [rsi]
	mov	qword ptr [rax + r14*8], rbx
	test	rbp, rbp
	je	.label_1405
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rsp + 0x10]
	lea	rdi, [rdi]
	call	free
.label_1405:
	test	rbx, rbx
	je	.label_1410
	mov	rax, qword ptr [r12 + 0x98]
	test	rax, rax
	je	.label_1403
	lea	rbp, [rbx + 8]
	mov	rdi, r13
	mov	rsp, rsp
	mov	rsi, rbp
	lea	rsi, [rsi]
	mov	rdx, r14
	call	check_subexp_matching_top
	lea	rsi, [rsi]
	mov	ecx, eax
	mov	dword ptr [r15], ecx
	xor	eax, eax
	lea	rsi, [rsi]
	test	ecx, ecx
	jne	.label_1406
	mov	rbp, rbp
	test	byte ptr [rbx + 0x68], 0x40
	mov	rax, rbx
	je	.label_1406
	lea	rdi, [rdi]
	mov	rdi, r13
	mov	rsi, rbp
	mov	rsp, rsp
	call	transit_state_bkref
	mov	ecx, eax
	mov	rsp, rsp
	mov	dword ptr [r15], ecx
	xor	eax, eax
	nop	
	test	ecx, ecx
	jne	.label_1406
	mov	rax, qword ptr [r13 + 0xb8]
	nop	
	mov	rax, qword ptr [rax + r14*8]
	lea	rdi, [rdi]
	jmp	.label_1406
.label_1410:
	mov	rsp, rsp
	mov	rax, rbx
	mov	rsp, rsp
	jmp	.label_1406
.label_1403:
	nop	
	mov	rax, rbx
.label_1406:
	add	rsp, 0x18
	nop	
	pop	rbx
	lea	rsi, [rsi]
	pop	r12
	pop	r13
	pop	r14
	mov	rbp, rbp
	pop	r15
	lea	rsi, [rsi]
	pop	rbp
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x4149a0

	.globl find_recover_state
	.type find_recover_state, @function
find_recover_state:
	push	r14
	push	rbx
	push	rax
	lea	rsi, [rsi]
	mov	rbx, rsi
	nop	
	mov	r14, rdi
.label_1413:
	mov	rbp, rbp
	mov	rcx, qword ptr [rbx + 0x48]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbx + 0xc0]
	nop	
.label_1412:
	lea	rsi, [rsi]
	cmp	rcx, rdx
	lea	rsi, [rsi]
	mov	eax, 0
	jge	.label_1411
	mov	rbp, rbp
	inc	qword ptr [rbx + 0x48]
	mov	rax, qword ptr [rbx + 0xb8]
	cmp	qword ptr [rax + rcx*8 + 8], 0
	lea	rcx, [rcx + 1]
	nop	
	je	.label_1412
	mov	rsp, rsp
	xor	edx, edx
	mov	rdi, r14
	mov	rsi, rbx
	call	merge_state_with_log
	test	rax, rax
	jne	.label_1411
	mov	ecx, dword ptr [r14]
	nop	
	test	ecx, ecx
	je	.label_1413
.label_1411:
	add	rsp, 8
	pop	rbx
	mov	rsp, rsp
	pop	r14
	nop	
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x414a20

	.globl match_ctx_add_subtop
	.type match_ctx_add_subtop, @function
match_ctx_add_subtop:
	mov	rsp, rsp
	push	r15
	push	r14
	push	r12
	push	rbx
	push	rax
	nop	
	mov	r14, rdx
	mov	r15, rsi
	lea	rsi, [rsi]
	mov	rbx, rdi
	mov	rsp, rsp
	mov	r12, qword ptr [rbx + 0xf0]
	cmp	qword ptr [rbx + 0xe8], r12
	nop	
	je	.label_1414
.label_1415:
	mov	rsp, rsp
	mov	edi, 1
	mov	esi, 0x30
	lea	rsi, [rsi]
	call	rpl_calloc
	mov	rcx, qword ptr [rbx + 0xe8]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbx + 0xf8]
	nop	
	mov	qword ptr [rdx + rcx*8], rax
	mov	rbp, rbp
	mov	rax, qword ptr [rbx + 0xe8]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbx + 0xf8]
	mov	rcx, qword ptr [rcx + rax*8]
	nop	
	mov	eax, 0xc
	test	rcx, rcx
	je	.label_1416
	lea	rdi, [rdi]
	mov	qword ptr [rcx + 8], r15
	mov	rax, qword ptr [rbx + 0xe8]
	lea	rcx, [rax + 1]
	lea	rdi, [rdi]
	mov	qword ptr [rbx + 0xe8], rcx
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbx + 0xf8]
	mov	rax, qword ptr [rcx + rax*8]
	mov	rbp, rbp
	mov	qword ptr [rax], r14
	nop	
	xor	eax, eax
.label_1416:
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	mov	rbp, rbp
	ret	
.label_1414:
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbx + 0xf8]
	mov	rsp, rsp
	mov	rsi, r12
	mov	rbp, rbp
	shl	rsi, 4
	mov	rsp, rsp
	call	realloc
	mov	rcx, rax
	lea	rdi, [rdi]
	mov	eax, 0xc
	nop	
	test	rcx, rcx
	lea	rdi, [rdi]
	je	.label_1416
	nop	
	add	r12, r12
	mov	qword ptr [rbx + 0xf8], rcx
	nop	
	mov	qword ptr [rbx + 0xf0], r12
	jmp	.label_1415
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x414b30

	.globl get_subexp
	.type get_subexp, @function
get_subexp:
	lea	rdi, [rdi]
	push	rbp
	lea	rsi, [rsi]
	push	r15
	lea	rsi, [rsi]
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x58
	mov	qword ptr [rsp + 0x40], rdx
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x50], rsi
	mov	rbx, rdi
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbx + 8]
	nop	
	mov	qword ptr [rsp + 0x48], rax
	mov	rax, qword ptr [rbx + 0x98]
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x20], rax
	mov	rsi, rdx
	lea	rsi, [rsi]
	call	search_cur_bkref_entry
	mov	rbp, rbx
	lea	rsi, [rsi]
	cmp	rax, -1
	mov	rbp, rbp
	je	.label_1436
	lea	rcx, [rax + rax*4]
	shl	rcx, 3
	add	rcx, qword ptr [rbp + 0xd8]
	nop	dword ptr [rax]
.label_1428:
	mov	rsp, rsp
	xor	eax, eax
	mov	rbp, rbp
	mov	rdx, qword ptr [rsp + 0x50]
	mov	rsp, rsp
	cmp	qword ptr [rcx], rdx
	je	.label_1419
	lea	rdi, [rdi]
	cmp	byte ptr [rcx + 0x20], 0
	mov	rsp, rsp
	lea	rcx, [rcx + 0x28]
	lea	rdi, [rdi]
	jne	.label_1428
.label_1436:
	xor	eax, eax
	lea	rdi, [rdi]
	cmp	qword ptr [rbp + 0xe8], 0
	nop	
	jle	.label_1419
	mov	rax, qword ptr [rsp + 0x20]
	mov	rax, qword ptr [rax]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rsp + 0x50]
	shl	rcx, 4
	mov	rax, qword ptr [rax + rcx]
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x18], rax
	xor	eax, eax
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x28], rax
	mov	rbp, rbp
	jmp	.label_1434
.label_1418:
	mov	rbp, rbp
	mov	r13, r15
	nop	
	jmp	.label_1420
	nop	dword ptr [rax + rax]
.label_1434:
	mov	rax, qword ptr [rbp + 0xf8]
	mov	rcx, qword ptr [rsp + 0x28]
	mov	rbx, qword ptr [rax + rcx*8]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbx + 8]
	nop	
	mov	rcx, qword ptr [rsp + 0x20]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rcx]
	shl	rax, 4
	mov	rdx, qword ptr [rsp + 0x18]
	nop	
	cmp	qword ptr [rcx + rax], rdx
	mov	rbp, rbp
	jne	.label_1426
	lea	rdi, [rdi]
	mov	r15, qword ptr [rbx]
	lea	rsi, [rsi]
	cmp	qword ptr [rbx + 0x20], 0
	jle	.label_1432
	mov	rsp, rsp
	mov	r8, qword ptr [rsp + 0x40]
	mov	rbp, rbp
	xor	r14d, r14d
	mov	rbp, rbp
	jmp	.label_1417
.label_1432:
	mov	r8, qword ptr [rsp + 0x40]
	mov	r13, r15
	xor	r14d, r14d
	jmp	.label_1420
.label_1435:
	lea	rdi, [rdi]
	cmp	rsi, qword ptr [rbp + 0x58]
	lea	rdi, [rdi]
	jg	.label_1418
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x38], rdx
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x10], r8
	nop	
	mov	rdi, rbp
	nop	
	call	clean_state_log_if_needed
	nop	
	test	eax, eax
	mov	rsp, rsp
	jne	.label_1419
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x30], r13
	mov	rax, qword ptr [rbp + 8]
	mov	qword ptr [rsp + 0x48], rax
	lea	rsi, [rsi]
	mov	r8, qword ptr [rsp + 0x10]
	jmp	.label_1430
	nop	
.label_1417:
	mov	rbp, rbp
	mov	rax, qword ptr [rbx + 0x28]
	mov	rdx, qword ptr [rax + r14*8]
	mov	rbp, rbp
	mov	r13, qword ptr [rdx + 8]
	mov	r12, r13
	mov	rbp, rbp
	sub	r12, r15
	nop	
	jle	.label_1424
	lea	rsi, [rsi]
	lea	rsi, [r12 + r8]
	cmp	rsi, qword ptr [rbp + 0x30]
	lea	rdi, [rdi]
	jg	.label_1435
	mov	qword ptr [rsp + 0x38], rdx
	mov	qword ptr [rsp + 0x30], r13
.label_1430:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp + 0x48]
	lea	rdi, [rdi]
	lea	rdi, [rax + r8]
	nop	
	lea	rsi, [rax + r15]
	mov	r13, r8
	nop	
	mov	rdx, r12
	call	memcmp
	nop	
	mov	r8, r13
	nop	
	test	eax, eax
	lea	rdi, [rdi]
	mov	r13, qword ptr [rsp + 0x30]
	nop	
	mov	rdx, qword ptr [rsp + 0x38]
	mov	rbp, rbp
	jne	.label_1429
.label_1424:
	mov	rsp, rsp
	mov	r15, r8
	mov	rdi, rbp
	nop	
	mov	rsi, rbx
	nop	
	mov	rcx, qword ptr [rsp + 0x50]
	mov	r8, qword ptr [rsp + 0x40]
	nop	
	call	get_subexp_sub
	cmp	eax, 1
	lea	rdi, [rdi]
	ja	.label_1419
	lea	rsi, [rsi]
	mov	r8, r15
	add	r8, r12
	mov	rbp, rbp
	mov	rax, qword ptr [rbp + 8]
	nop	
	mov	qword ptr [rsp + 0x48], rax
	inc	r14
	cmp	r14, qword ptr [rbx + 0x20]
	mov	r15, r13
	jl	.label_1417
	lea	rdi, [rdi]
	jmp	.label_1420
.label_1429:
	mov	r13, r15
	nop	
.label_1420:
	mov	rsp, rsp
	mov	rcx, r13
	lea	rsi, [rsi]
	cmp	r14, qword ptr [rbx + 0x20]
	mov	rbp, rbp
	jl	.label_1426
	test	r14, r14
	mov	rsp, rsp
	setg	al
	lea	rdi, [rdi]
	movzx	r13d, al
	lea	rdi, [rdi]
	add	r13, rcx
	cmp	r13, qword ptr [rsp + 0x40]
	jg	.label_1426
	mov	rsp, rsp
	jmp	.label_1431
.label_1427:
	cmp	r8, qword ptr [rbp + 0x58]
	mov	rsp, rsp
	jge	.label_1426
	lea	esi, [r8 + 1]
	lea	rsi, [rsi]
	mov	r14, r8
	mov	rbp, rbp
	mov	rdi, rbp
	call	extend_buffers
	test	eax, eax
	nop	
	jne	.label_1419
	mov	rax, qword ptr [rbp + 8]
	mov	qword ptr [rsp + 0x48], rax
	mov	rsp, rsp
	mov	r8, r14
	jmp	.label_1421
	nop	dword ptr [rax + rax]
.label_1431:
	cmp	r13, qword ptr [rbx]
	jle	.label_1423
	cmp	r8, qword ptr [rbp + 0x30]
	mov	rbp, rbp
	jge	.label_1427
.label_1421:
	mov	rsp, rsp
	mov	rcx, qword ptr [rsp + 0x48]
	movzx	eax, byte ptr [rcx + r13 - 1]
	movzx	ecx, byte ptr [rcx + r8]
	cmp	ecx, eax
	jne	.label_1426
	inc	r8
.label_1423:
	lea	rdi, [rdi]
	mov	r14, rbx
	nop	
	mov	rax, qword ptr [rbp + 0xb8]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rax + r13*8]
	test	rsi, rsi
	je	.label_1433
	mov	r15, r8
	mov	rsp, rsp
	add	rsi, 8
	nop	
	mov	ecx, 9
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rsp + 0x20]
	mov	rdx, qword ptr [rsp + 0x18]
	call	find_subexp_node
	mov	rbp, rbp
	mov	rbx, rax
	cmp	rbx, -1
	mov	rsp, rsp
	je	.label_1422
	mov	rbp, rbp
	cmp	qword ptr [r14 + 0x10], 0
	lea	rsi, [rsi]
	mov	rdi, rbp
	jne	.label_1425
	mov	rbp, rbp
	mov	rsi, r13
	nop	
	sub	rsi, qword ptr [r14]
	inc	rsi
	mov	rbp, rdi
	mov	edi, 0x18
	lea	rsi, [rsi]
	call	rpl_calloc
	lea	rdi, [rdi]
	mov	rdi, rbp
	mov	rcx, rax
	mov	qword ptr [r14 + 0x10], rcx
	mov	rsp, rsp
	mov	eax, 0xc
	mov	rsp, rsp
	test	rcx, rcx
	mov	rbp, rbp
	je	.label_1419
.label_1425:
	lea	rdi, [rdi]
	mov	rsi, qword ptr [r14 + 0x10]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [r14]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [r14 + 8]
	mov	dword ptr [rsp], 9
	mov	rbp, rdi
	mov	r8, rbx
	mov	r9, r13
	call	check_arrival
	cmp	eax, 1
	mov	r8, r15
	lea	rsi, [rsi]
	je	.label_1433
	mov	r15, r8
	test	eax, eax
	mov	rdi, r14
	lea	rsi, [rsi]
	jne	.label_1419
	mov	rbp, rbp
	mov	rsi, rbx
	mov	rbp, rbp
	mov	rdx, r13
	mov	rbx, rdi
	mov	rsp, rsp
	call	match_ctx_add_sublast
	mov	rsi, rbx
	lea	rsi, [rsi]
	mov	rdx, rbp
	mov	rcx, rax
	lea	rdi, [rdi]
	mov	eax, 0xc
	test	rcx, rcx
	je	.label_1419
	lea	rdi, [rdi]
	mov	rbx, rdx
	mov	rbp, rbp
	mov	rdi, rbx
	lea	rdi, [rdi]
	mov	rdx, rcx
	mov	rsp, rsp
	mov	rcx, qword ptr [rsp + 0x50]
	lea	rsi, [rsi]
	mov	rbp, rsi
	mov	rbp, rbp
	mov	r8, qword ptr [rsp + 0x40]
	call	get_subexp_sub
	mov	rsp, rsp
	mov	rcx, rbp
	mov	rbp, rbp
	cmp	eax, 1
	lea	rsi, [rsi]
	ja	.label_1419
	mov	r14, rcx
	mov	rax, qword ptr [rbx + 8]
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x48], rax
	mov	rbp, rbx
.label_1422:
	nop	
	mov	r8, r15
.label_1433:
	nop	
	cmp	r13, qword ptr [rsp + 0x40]
	lea	r13, [r13 + 1]
	mov	rbx, r14
	nop	
	jl	.label_1431
	nop	word ptr cs:[rax + rax]
.label_1426:
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 0x28]
	nop	
	mov	rcx, rax
	mov	rsp, rsp
	inc	rcx
	mov	qword ptr [rsp + 0x28], rcx
	xor	eax, eax
	nop	
	cmp	rcx, qword ptr [rbp + 0xe8]
	mov	rsp, rsp
	jl	.label_1434
.label_1419:
	add	rsp, 0x58
	pop	rbx
	lea	rdi, [rdi]
	pop	r12
	pop	r13
	mov	rsp, rsp
	pop	r14
	nop	
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x415030

	.globl re_node_set_init_union
	.type re_node_set_init_union, @function
re_node_set_init_union:
	push	rbp
	push	r15
	mov	rsp, rsp
	push	r14
	mov	rsp, rsp
	push	r13
	push	r12
	push	rbx
	nop	
	push	rax
	mov	rbp, rbp
	mov	r15, rdx
	mov	rbp, rbp
	mov	r12, rsi
	lea	rdi, [rdi]
	mov	r14, rdi
	lea	rdi, [rdi]
	test	r12, r12
	lea	rsi, [rsi]
	je	.label_1445
	lea	rsi, [rsi]
	mov	rax, qword ptr [r12 + 8]
	mov	rsp, rsp
	test	r15, r15
	je	.label_1439
	lea	rsi, [rsi]
	test	rax, rax
	lea	rsi, [rsi]
	jle	.label_1439
	mov	rdi, qword ptr [r15 + 8]
	test	rdi, rdi
	jle	.label_1441
	lea	rsi, [rsi]
	add	rdi, rax
	mov	rsp, rsp
	mov	qword ptr [r14], rdi
	mov	rsp, rsp
	shl	rdi, 3
	mov	rsp, rsp
	call	malloc
	mov	rcx, rax
	lea	rdi, [rdi]
	mov	qword ptr [r14 + 0x10], rcx
	mov	eax, 0xc
	nop	
	test	rcx, rcx
	lea	rsi, [rsi]
	je	.label_1449
	lea	rsi, [rsi]
	xor	r13d, r13d
	lea	rdi, [rdi]
	cmp	qword ptr [r12 + 8], 0
	mov	rbp, rbp
	mov	ebx, 0
	mov	ebp, 0
	jle	.label_1437
	xor	edx, edx
	xor	esi, esi
	xor	r13d, r13d
.label_1438:
	lea	rdi, [rdi]
	mov	rbx, rdx
	mov	rbp, rsi
	nop	dword ptr [rax]
.label_1444:
	cmp	rbp, qword ptr [r15 + 8]
	jge	.label_1437
	mov	rax, qword ptr [r12 + 0x10]
	mov	rcx, qword ptr [rax + r13*8]
	mov	rax, qword ptr [r15 + 0x10]
	mov	rax, qword ptr [rax + rbp*8]
	cmp	rcx, rax
	lea	rsi, [rsi]
	jle	.label_1448
	mov	rsp, rsp
	inc	rbp
	mov	rcx, qword ptr [r14 + 0x10]
	lea	rdi, [rdi]
	mov	qword ptr [rcx + rbx*8], rax
	lea	rdi, [rdi]
	inc	rbx
	cmp	r13, qword ptr [r12 + 8]
	mov	rsp, rsp
	jl	.label_1444
	jmp	.label_1437
.label_1448:
	sete	sil
	inc	r13
	mov	rdx, qword ptr [r14 + 0x10]
	mov	qword ptr [rdx + rbx*8], rcx
	lea	rdx, [rbx + 1]
	mov	rsp, rsp
	movzx	esi, sil
	add	rsi, rbp
	lea	rdi, [rdi]
	cmp	r13, qword ptr [r12 + 8]
	lea	rdi, [rdi]
	jl	.label_1438
	cmp	rcx, rax
	lea	rsi, [rsi]
	sete	al
	mov	rbp, rbp
	inc	rbx
	movzx	eax, al
	add	rbp, rax
.label_1437:
	lea	rsi, [rsi]
	mov	rdx, qword ptr [r12 + 8]
	mov	rsp, rsp
	sub	rdx, r13
	jle	.label_1440
	lea	rdi, [rdi]
	lea	rdi, [rbx*8]
	lea	rsi, [rsi]
	add	rdi, qword ptr [r14 + 0x10]
	lea	rsi, [r13*8]
	mov	rbp, rbp
	add	rsi, qword ptr [r12 + 0x10]
	shl	rdx, 3
	lea	rdi, [rdi]
	call	memcpy
	sub	rbx, r13
	add	rbx, qword ptr [r12 + 8]
	mov	rbp, rbp
	jmp	.label_1442
.label_1441:
	mov	rsp, rsp
	mov	rax, qword ptr [r12 + 8]
.label_1439:
	test	rax, rax
	jle	.label_1445
	mov	rdi, r14
	mov	rsi, r12
	lea	rdi, [rdi]
	jmp	.label_1447
.label_1445:
	nop	
	test	r15, r15
	mov	rbp, rbp
	je	.label_1443
	cmp	qword ptr [r15 + 8], 0
	jle	.label_1443
	mov	rsp, rsp
	mov	rdi, r14
	lea	rsi, [rsi]
	mov	rsi, r15
.label_1447:
	nop	
	add	rsp, 8
	pop	rbx
	nop	
	pop	r12
	mov	rbp, rbp
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	jmp	re_node_set_init_copy
.label_1443:
	mov	rsp, rsp
	xorps	xmm0, xmm0
	movups	xmmword ptr [r14], xmm0
	nop	
	mov	qword ptr [r14 + 0x10], 0
	jmp	.label_1446
.label_1440:
	mov	rsp, rsp
	mov	rdx, qword ptr [r15 + 8]
	nop	
	sub	rdx, rbp
	jle	.label_1442
	lea	rdi, [rbx*8]
	add	rdi, qword ptr [r14 + 0x10]
	lea	rsi, [rbp*8]
	add	rsi, qword ptr [r15 + 0x10]
	nop	
	shl	rdx, 3
	call	memcpy
	lea	rsi, [rsi]
	sub	rbx, rbp
	add	rbx, qword ptr [r15 + 8]
.label_1442:
	mov	qword ptr [r14 + 8], rbx
.label_1446:
	xor	eax, eax
.label_1449:
	nop	
	add	rsp, 8
	pop	rbx
	mov	rsp, rsp
	pop	r12
	pop	r13
	pop	r14
	mov	rsp, rsp
	pop	r15
	lea	rdi, [rdi]
	pop	rbp
	nop	
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4152a0

	.globl search_cur_bkref_entry
	.type search_cur_bkref_entry, @function
search_cur_bkref_entry:
	nop	
	mov	r8, qword ptr [rdi + 0xc8]
	xor	eax, eax
	mov	rbp, rbp
	test	r8, r8
	mov	rbp, rbp
	jle	.label_1450
	mov	rbp, rbp
	mov	r9, qword ptr [rdi + 0xd8]
	xor	eax, eax
	mov	r11, r8
	nop	word ptr cs:[rax + rax]
.label_1453:
	lea	rdi, [rdi]
	lea	r10, [rax + r11]
	lea	rdi, [rdi]
	mov	rdx, r10
	mov	rbp, rbp
	shr	rdx, 0x3f
	lea	rsi, [rsi]
	add	rdx, r10
	sar	rdx, 1
	mov	rbp, rbp
	lea	rcx, [rdx + rdx*4]
	cmp	qword ptr [r9 + rcx*8 + 8], rsi
	nop	
	cmovge	r11, rdx
	lea	rcx, [rdx + 1]
	cmovl	rax, rcx
	lea	rdi, [rdi]
	cmp	rax, r11
	lea	rdi, [rdi]
	jl	.label_1453
.label_1450:
	mov	rbp, rbp
	cmp	rax, r8
	lea	rdi, [rdi]
	jge	.label_1451
	mov	rcx, qword ptr [rdi + 0xd8]
	nop	
	lea	rdx, [rax + rax*4]
	lea	rsi, [rsi]
	cmp	qword ptr [rcx + rdx*8 + 8], rsi
	je	.label_1452
.label_1451:
	mov	rax, -1
.label_1452:
	lea	rdi, [rdi]
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x415340

	.globl clean_state_log_if_needed
	.type clean_state_log_if_needed, @function
clean_state_log_if_needed:
	nop	
	push	rbp
	lea	rdi, [rdi]
	push	r15
	lea	rsi, [rsi]
	push	r14
	lea	rsi, [rsi]
	push	rbx
	mov	rsp, rsp
	push	rax
	mov	r14, rsi
	lea	rsi, [rsi]
	mov	rbx, rdi
	nop	
	mov	rax, qword ptr [rbx + 0x40]
	mov	rbp, rbp
	mov	r15, qword ptr [rbx + 0xc0]
	cmp	rax, r14
	jg	.label_1454
	cmp	rax, qword ptr [rbx + 0x58]
	mov	rbp, rbp
	jl	.label_1455
.label_1454:
	nop	
	mov	rax, qword ptr [rbx + 0x30]
	cmp	rax, r14
	jg	.label_1456
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rbx + 0x58]
	mov	rsp, rsp
	jge	.label_1456
.label_1455:
	lea	esi, [r14 + 1]
	nop	
	mov	rdi, rbx
	call	extend_buffers
	mov	ebp, eax
	test	ebp, ebp
	lea	rdi, [rdi]
	jne	.label_1457
.label_1456:
	mov	rsp, rsp
	xor	ebp, ebp
	cmp	r15, r14
	lea	rsi, [rsi]
	jge	.label_1457
	mov	rax, qword ptr [rbx + 0xb8]
	lea	rdi, [rax + r15*8 + 8]
	mov	rdx, r14
	nop	
	sub	rdx, r15
	lea	rsi, [rsi]
	shl	rdx, 3
	lea	rsi, [rsi]
	xor	ebp, ebp
	xor	esi, esi
	call	memset
	lea	rdi, [rdi]
	mov	qword ptr [rbx + 0xc0], r14
.label_1457:
	mov	eax, ebp
	add	rsp, 8
	lea	rsi, [rsi]
	pop	rbx
	nop	
	pop	r14
	nop	
	pop	r15
	lea	rsi, [rsi]
	pop	rbp
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x415400

	.globl get_subexp_sub
	.type get_subexp_sub, @function
get_subexp_sub:
	mov	rsp, rsp
	push	r15
	mov	rsp, rsp
	push	r14
	push	r13
	lea	rsi, [rsi]
	push	r12
	push	rbx
	sub	rsp, 0x10
	mov	r12, r8
	mov	rbp, rbp
	mov	r13, rcx
	lea	rdi, [rdi]
	mov	rbx, rdx
	mov	rbp, rbp
	mov	r15, rsi
	mov	r14, rdi
	lea	rsi, [rbx + 0x10]
	mov	rdx, qword ptr [rbx]
	mov	rcx, qword ptr [rbx + 8]
	lea	rdi, [rdi]
	mov	dword ptr [rsp], 8
	mov	r8, r13
	mov	rsp, rsp
	mov	r9, r12
	call	check_arrival
	test	eax, eax
	jne	.label_1458
	mov	rcx, qword ptr [r15]
	mov	r8, qword ptr [rbx + 8]
	lea	rsi, [rsi]
	mov	rdi, r14
	mov	rsp, rsp
	mov	rsi, r13
	lea	rdi, [rdi]
	mov	rdx, r12
	call	match_ctx_add_entry
	test	eax, eax
	jne	.label_1458
	add	r12, qword ptr [rbx + 8]
	sub	r12, qword ptr [r15]
	mov	rdi, r14
	mov	rsp, rsp
	mov	rsi, r12
	lea	rsi, [rsi]
	add	rsp, 0x10
	pop	rbx
	mov	rbp, rbp
	pop	r12
	lea	rsi, [rsi]
	pop	r13
	pop	r14
	pop	r15
	jmp	clean_state_log_if_needed
.label_1458:
	mov	rsp, rsp
	add	rsp, 0x10
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4154c0

	.globl find_subexp_node
	.type find_subexp_node, @function
find_subexp_node:
	lea	rsi, [rsi]
	cmp	qword ptr [rsi + 8], 0
	lea	rsi, [rsi]
	jle	.label_1459
	lea	rsi, [rsi]
	mov	r8, qword ptr [rsi + 0x10]
	mov	r9, qword ptr [rdi]
	lea	rsi, [rsi]
	xor	r11d, r11d
	nop	dword ptr [rax]
.label_1461:
	mov	rsp, rsp
	mov	rax, qword ptr [r8 + r11*8]
	lea	rdi, [rdi]
	mov	r10, rax
	lea	rsi, [rsi]
	shl	r10, 4
	mov	rbp, rbp
	movzx	edi, byte ptr [r9 + r10 + 8]
	mov	rsp, rsp
	cmp	edi, ecx
	jne	.label_1460
	cmp	qword ptr [r9 + r10], rdx
	je	.label_1462
.label_1460:
	mov	rsp, rsp
	inc	r11
	lea	rdi, [rdi]
	cmp	r11, qword ptr [rsi + 8]
	nop	
	jl	.label_1461
.label_1459:
	mov	rsp, rsp
	mov	rax, -1
.label_1462:
	lea	rdi, [rdi]
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x415530

	.globl check_arrival
	.type check_arrival, @function
check_arrival:
	push	rbp
	nop	
	push	r15
	push	r14
	nop	
	push	r13
	push	r12
	lea	rdi, [rdi]
	push	rbx
	sub	rsp, 0x78
	mov	qword ptr [rsp + 0x38], r9
	mov	qword ptr [rsp + 8], r8
	mov	r13, rcx
	mov	rbp, rbp
	mov	r12, rdx
	mov	rax, qword ptr [rdi + 0x98]
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x40], rax
	lea	rdi, [rdi]
	mov	dword ptr [rsp + 0x74], 0
	mov	rsp, rsp
	mov	rax, qword ptr [rax]
	lea	rdi, [rdi]
	mov	rcx, r12
	mov	rsp, rsp
	shl	rcx, 4
	mov	rax, qword ptr [rax + rcx]
	mov	qword ptr [rsp + 0x28], rax
	lea	rsi, [rsi]
	mov	rbp, qword ptr [rsi + 8]
	mov	rsp, rsp
	movsxd	rax, dword ptr [rdi + 0xe0]
	lea	rcx, [rax + r9]
	mov	rbp, rbp
	cmp	rbp, rcx
	nop	
	jle	.label_1471
.label_1476:
	mov	qword ptr [rsp + 0x20], rsi
	mov	r15d, dword ptr [rsp + 0xb0]
	lea	rsi, [rsi]
	mov	r14, qword ptr [rsi]
	mov	rax, qword ptr [rsi + 0x10]
	nop	
	test	r14, r14
	cmove	r14, r13
	mov	rcx, qword ptr [rdi + 0x48]
	mov	qword ptr [rsp + 0x18], rcx
	mov	rcx, qword ptr [rdi + 0xb8]
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x10], rcx
	mov	qword ptr [rdi + 0xb8], rax
	mov	qword ptr [rdi + 0x48], r14
	lea	rsi, [r14 - 1]
	mov	edx, dword ptr [rdi + 0xa0]
	mov	rbx, rdi
	call	re_string_context_at
	lea	rsi, [rsi]
	cmp	r14, r13
	jne	.label_1464
	mov	rbp, rbp
	mov	r13d, eax
	mov	ebp, r15d
	lea	rdi, [rsp + 0x50]
	mov	rsi, r12
	lea	rsi, [rsi]
	call	re_node_set_init_1
	nop	
	mov	r15d, eax
	mov	dword ptr [rsp + 0x74], r15d
	lea	rdi, [rdi]
	test	r15d, r15d
	jne	.label_1468
	lea	rsi, [rsi]
	lea	rsi, [rsp + 0x50]
	mov	rbp, rbp
	mov	rdi, qword ptr [rsp + 0x40]
	mov	rdx, qword ptr [rsp + 0x28]
	mov	r15d, ebp
	nop	
	mov	ecx, r15d
	lea	rdi, [rdi]
	call	check_arrival_expand_ecl
	lea	rdi, [rdi]
	mov	dword ptr [rsp + 0x74], eax
	test	eax, eax
	mov	rbp, rbp
	mov	rcx, rbx
	mov	rbp, rbp
	je	.label_1478
	lea	rsi, [rsi]
	jmp	.label_1467
.label_1464:
	mov	rcx, qword ptr [rbx + 0xb8]
	nop	
	mov	rbp, qword ptr [rcx + r14*8]
	nop	
	test	rbp, rbp
	mov	rcx, rbx
	mov	rsp, rsp
	je	.label_1482
	lea	rdi, [rdi]
	mov	rbx, rcx
	mov	r12d, r15d
	test	byte ptr [rbp + 0x68], 0x40
	jne	.label_1480
	lea	rsi, [rsi]
	mov	r13d, eax
	xorps	xmm0, xmm0
	mov	rbp, rbp
	movaps	xmmword ptr [rsp + 0x50], xmm0
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x60], 0
	nop	
	jmp	.label_1470
.label_1482:
	xorps	xmm0, xmm0
	movaps	xmmword ptr [rsp + 0x50], xmm0
	mov	qword ptr [rsp + 0x60], 0
	xor	ebp, ebp
	jmp	.label_1465
.label_1480:
	mov	r13d, eax
	mov	rsp, rsp
	lea	rsi, [rbp + 8]
	lea	rdi, [rsp + 0x50]
	nop	
	call	re_node_set_init_copy
	mov	r15d, eax
	mov	rbp, rbp
	mov	dword ptr [rsp + 0x74], r15d
	test	r15d, r15d
	jne	.label_1468
.label_1470:
	lea	rsi, [rsi]
	test	byte ptr [rbp + 0x68], 0x40
	mov	r15d, r12d
	mov	rcx, rbx
	lea	rdi, [rdi]
	je	.label_1465
.label_1478:
	lea	rdi, [rdi]
	cmp	qword ptr [rsp + 0x58], 0
	lea	rdi, [rdi]
	je	.label_1469
	lea	rsi, [rsp + 0x50]
	mov	rbx, rcx
	nop	
	mov	rdi, rbx
	lea	rdi, [rdi]
	mov	rdx, r14
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rsp + 0x28]
	mov	r8d, r15d
	call	expand_bkref_cache
	lea	rsi, [rsi]
	mov	rcx, rbx
	lea	rsi, [rsi]
	mov	dword ptr [rsp + 0x74], eax
	nop	
	test	eax, eax
	jne	.label_1467
.label_1469:
	mov	rbp, rbp
	mov	rbx, rcx
	lea	rdi, [rsp + 0x74]
	lea	rdi, [rdi]
	lea	rdx, [rsp + 0x50]
	mov	rsi, qword ptr [rsp + 0x40]
	mov	ecx, r13d
	nop	
	call	re_acquire_state_context
	nop	
	mov	rbp, rax
	lea	rdi, [rdi]
	test	rbp, rbp
	lea	rsi, [rsi]
	jne	.label_1463
	mov	eax, dword ptr [rsp + 0x74]
	mov	rsp, rsp
	test	eax, eax
	lea	rdi, [rdi]
	jne	.label_1467
.label_1463:
	mov	rsp, rsp
	mov	rcx, rbx
	nop	
	mov	rax, qword ptr [rcx + 0xb8]
	lea	rsi, [rsi]
	mov	qword ptr [rax + r14*8], rbp
.label_1465:
	cmp	r14, qword ptr [rsp + 0x38]
	mov	rsp, rsp
	jge	.label_1474
	inc	r14
	mov	rbp, rbp
	lea	rbx, [rsp + 0x50]
	lea	rsi, [rsi]
	mov	r12, r14
	xor	r13d, r13d
.label_1477:
	mov	rsp, rsp
	lea	r14, [r12 - 1]
	movsxd	rax, dword ptr [rcx + 0xe0]
	cmp	r13, rax
	jg	.label_1474
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x58], 0
	lea	rsi, [rsi]
	mov	rax, qword ptr [rcx + 0xb8]
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x48], rcx
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rax + r12*8]
	lea	rsi, [rsi]
	test	rsi, rsi
	mov	rbp, rbp
	je	.label_1479
	add	rsi, 8
	mov	rdi, rbx
	lea	rdi, [rdi]
	call	re_node_set_merge
	lea	rdi, [rdi]
	mov	dword ptr [rsp + 0x74], eax
	test	eax, eax
	jne	.label_1467
.label_1479:
	mov	rbp, rbp
	test	rbp, rbp
	je	.label_1475
	add	rbp, 0x20
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rsp + 0x48]
	mov	rbp, rbp
	mov	rsi, r14
	lea	rsi, [rsi]
	mov	rdx, rbp
	nop	
	mov	rcx, rbx
	mov	rsp, rsp
	call	check_arrival_add_next_nodes
	mov	dword ptr [rsp + 0x74], eax
	nop	
	test	eax, eax
	lea	rsi, [rsi]
	jne	.label_1467
.label_1475:
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x30], r14
	cmp	qword ptr [rsp + 0x58], 0
	lea	rsi, [rsi]
	mov	r14, rbx
	je	.label_1481
	mov	rsp, rsp
	mov	rdi, qword ptr [rsp + 0x40]
	mov	rsp, rsp
	mov	rsi, r14
	mov	rbp, qword ptr [rsp + 0x28]
	mov	rsp, rsp
	mov	rdx, rbp
	mov	ebx, dword ptr [rsp + 0xb0]
	nop	
	mov	ecx, ebx
	lea	rdi, [rdi]
	call	check_arrival_expand_ecl
	lea	rdi, [rdi]
	mov	dword ptr [rsp + 0x74], eax
	mov	rbp, rbp
	test	eax, eax
	mov	rbp, rbp
	jne	.label_1467
	mov	rdi, qword ptr [rsp + 0x48]
	mov	rsi, r14
	mov	rbp, rbp
	mov	rdx, r12
	lea	rdi, [rdi]
	mov	rcx, rbp
	mov	r8d, ebx
	call	expand_bkref_cache
	nop	
	mov	dword ptr [rsp + 0x74], eax
	test	eax, eax
	jne	.label_1467
.label_1481:
	mov	r15, qword ptr [rsp + 0x48]
	mov	rbp, rbp
	mov	edx, dword ptr [r15 + 0xa0]
	mov	rdi, r15
	nop	
	mov	rsi, qword ptr [rsp + 0x30]
	call	re_string_context_at
	lea	rdi, [rsp + 0x74]
	mov	rsi, qword ptr [rsp + 0x40]
	lea	rdi, [rdi]
	mov	rdx, r14
	mov	ecx, eax
	mov	rbp, rbp
	call	re_acquire_state_context
	nop	
	mov	rbp, rax
	test	rbp, rbp
	jne	.label_1472
	lea	rdi, [rdi]
	mov	eax, dword ptr [rsp + 0x74]
	test	eax, eax
	jne	.label_1467
.label_1472:
	mov	rbx, r14
	nop	
	inc	r13
	test	rbp, rbp
	mov	rbp, rbp
	mov	rcx, r15
	nop	
	mov	rax, qword ptr [rcx + 0xb8]
	lea	rsi, [rsi]
	mov	qword ptr [rax + r12*8], rbp
	lea	rdi, [rdi]
	mov	eax, 0
	cmovne	r13, rax
	lea	rdi, [rdi]
	cmp	r12, qword ptr [rsp + 0x38]
	mov	rbp, rbp
	lea	r12, [r12 + 1]
	nop	
	jl	.label_1477
	mov	rbx, rcx
	dec	r12
	mov	r14, r12
	jmp	.label_1466
.label_1474:
	mov	rbx, rcx
.label_1466:
	mov	r15, qword ptr [rsp + 0x18]
	mov	rsp, rsp
	mov	rbp, qword ptr [rsp + 0x10]
	mov	rsp, rsp
	mov	rdi, qword ptr [rsp + 0x60]
	lea	rsi, [rsi]
	call	free
	mov	rax, qword ptr [rbx + 0xb8]
	mov	rcx, qword ptr [rsp + 0x38]
	mov	rdi, qword ptr [rax + rcx*8]
	lea	rdi, [rdi]
	test	rdi, rdi
	mov	rax, qword ptr [rsp + 0x20]
	mov	qword ptr [rax], r14
	mov	qword ptr [rbx + 0xb8], rbp
	mov	qword ptr [rbx + 0x48], r15
	je	.label_1473
	add	rdi, 8
	mov	rsi, qword ptr [rsp + 8]
	call	re_node_set_contains
	xor	r15d, r15d
	test	rax, rax
	jne	.label_1468
.label_1473:
	mov	rbp, rbp
	mov	r15d, 1
	lea	rsi, [rsi]
	jmp	.label_1468
.label_1467:
	mov	rdi, qword ptr [rsp + 0x60]
	call	free
	mov	r15d, dword ptr [rsp + 0x74]
.label_1468:
	mov	rsp, rsp
	mov	eax, r15d
	lea	rdi, [rdi]
	add	rsp, 0x78
	pop	rbx
	lea	rsi, [rsi]
	pop	r12
	mov	rsp, rsp
	pop	r13
	mov	rbp, rbp
	pop	r14
	lea	rsi, [rsi]
	pop	r15
	pop	rbp
	mov	rbp, rbp
	ret	
.label_1471:
	movabs	rdx, 0x7fffffffffffffff
	nop	
	sub	rdx, rbp
	mov	r15d, 0xc
	lea	rdi, [rdi]
	cmp	rdx, rcx
	lea	rdi, [rdi]
	jle	.label_1468
	mov	rcx, qword ptr [rsp + 0x38]
	lea	r14, [rax + rcx + 1]
	lea	rbx, [r14 + rbp]
	mov	rax, rbx
	shr	rax, 0x3d
	jne	.label_1468
	nop	
	mov	qword ptr [rsp + 0x48], rdi
	mov	rdi, qword ptr [rsi + 0x10]
	mov	qword ptr [rsp + 0x20], rsi
	mov	rsp, rsp
	lea	rsi, [rbx*8]
	mov	rbp, rbp
	call	realloc
	mov	rsp, rsp
	test	rax, rax
	je	.label_1468
	mov	rsp, rsp
	mov	r15, qword ptr [rsp + 0x20]
	mov	qword ptr [r15 + 0x10], rax
	lea	rdi, [rdi]
	mov	qword ptr [r15 + 8], rbx
	lea	rdi, [rax + rbp*8]
	shl	r14, 3
	xor	esi, esi
	mov	rdx, r14
	mov	rsp, rsp
	call	memset
	mov	rsi, r15
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rsp + 0x48]
	jmp	.label_1476
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x415ae0

	.globl match_ctx_add_sublast
	.type match_ctx_add_sublast, @function
match_ctx_add_sublast:
	push	r15
	push	r14
	push	r12
	push	rbx
	lea	rsi, [rsi]
	push	rax
	mov	r14, rdx
	mov	r15, rsi
	mov	rbx, rdi
	mov	rbp, rbp
	mov	r12, qword ptr [rbx + 0x18]
	mov	rbp, rbp
	cmp	qword ptr [rbx + 0x20], r12
	je	.label_1483
.label_1485:
	mov	rsp, rsp
	mov	edi, 1
	mov	esi, 0x28
	lea	rsi, [rsi]
	call	rpl_calloc
	test	rax, rax
	je	.label_1484
	mov	rcx, qword ptr [rbx + 0x20]
	mov	rdx, qword ptr [rbx + 0x28]
	lea	rdi, [rdi]
	mov	qword ptr [rdx + rcx*8], rax
	nop	
	mov	qword ptr [rax], r15
	nop	
	mov	qword ptr [rax + 8], r14
	inc	qword ptr [rbx + 0x20]
.label_1484:
	lea	rsi, [rsi]
	add	rsp, 8
	mov	rbp, rbp
	pop	rbx
	pop	r12
	mov	rsp, rsp
	pop	r14
	mov	rbp, rbp
	pop	r15
	ret	
.label_1483:
	lea	rax, [r12 + r12]
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbx + 0x28]
	mov	rbp, rbp
	lea	rsi, [rax*8 + 8]
	call	realloc
	lea	rdi, [rdi]
	mov	rcx, rax
	mov	rsp, rsp
	xor	eax, eax
	test	rcx, rcx
	je	.label_1484
	mov	rbp, rbp
	lea	rax, [r12 + r12 + 1]
	mov	rbp, rbp
	mov	qword ptr [rbx + 0x28], rcx
	mov	qword ptr [rbx + 0x18], rax
	jmp	.label_1485
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x415ba0

	.globl match_ctx_add_entry
	.type match_ctx_add_entry, @function
match_ctx_add_entry:
	push	rbp
	push	r15
	nop	
	push	r14
	mov	rsp, rsp
	push	r13
	mov	rbp, rbp
	push	r12
	nop	
	push	rbx
	nop	
	push	rax
	lea	rdi, [rdi]
	mov	r14, r8
	mov	r15, rcx
	mov	r12, rdx
	mov	r13, rsi
	mov	rsp, rsp
	mov	rbx, rdi
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbx + 0xc8]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbx + 0xd0]
	cmp	rax, rcx
	lea	rsi, [rsi]
	jl	.label_1486
	mov	rdi, qword ptr [rbx + 0xd8]
	lea	rsi, [rsi]
	shl	rcx, 4
	mov	rbp, rbp
	lea	rsi, [rcx + rcx*4]
	call	realloc
	test	rax, rax
	je	.label_1489
	lea	rsi, [rsi]
	mov	qword ptr [rbx + 0xd8], rax
	mov	rcx, qword ptr [rbx + 0xc8]
	mov	rbp, qword ptr [rbx + 0xd0]
	lea	rcx, [rcx + rcx*4]
	lea	rdi, [rax + rcx*8]
	lea	rax, [rbp*8]
	nop	
	lea	rdx, [rax + rax*4]
	xor	esi, esi
	call	memset
	lea	rdi, [rdi]
	add	rbp, rbp
	mov	qword ptr [rbx + 0xd0], rbp
	mov	rax, qword ptr [rbx + 0xc8]
.label_1486:
	test	rax, rax
	jle	.label_1487
	lea	rdi, [rdi]
	dec	rax
	mov	rcx, qword ptr [rbx + 0xd8]
	lea	rax, [rax + rax*4]
	lea	rdi, [rdi]
	cmp	qword ptr [rcx + rax*8 + 8], r12
	nop	
	jne	.label_1487
	lea	rdi, [rdi]
	mov	byte ptr [rcx + rax*8 + 0x20], 1
.label_1487:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbx + 0xc8]
	mov	rcx, qword ptr [rbx + 0xd8]
	lea	rax, [rax + rax*4]
	mov	rbp, rbp
	mov	qword ptr [rcx + rax*8], r13
	mov	rax, qword ptr [rbx + 0xc8]
	mov	rcx, qword ptr [rbx + 0xd8]
	lea	rax, [rax + rax*4]
	mov	qword ptr [rcx + rax*8 + 8], r12
	mov	rax, qword ptr [rbx + 0xc8]
	mov	rcx, qword ptr [rbx + 0xd8]
	lea	rdi, [rdi]
	lea	rax, [rax + rax*4]
	mov	qword ptr [rcx + rax*8 + 0x10], r15
	mov	rax, qword ptr [rbx + 0xc8]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbx + 0xd8]
	mov	rsp, rsp
	lea	rax, [rax + rax*4]
	mov	qword ptr [rcx + rax*8 + 0x18], r14
	lea	rdi, [rdi]
	xor	eax, eax
	mov	rsp, rsp
	sub	r14, r15
	lea	rdi, [rdi]
	mov	cx, 0xffff
	mov	rbp, rbp
	cmovne	cx, ax
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbx + 0xc8]
	mov	rbp, rbp
	mov	rsi, qword ptr [rbx + 0xd8]
	mov	rsp, rsp
	lea	rdx, [rdx + rdx*4]
	mov	rbp, rbp
	mov	word ptr [rsi + rdx*8 + 0x22], cx
	nop	
	mov	rcx, qword ptr [rbx + 0xc8]
	lea	rdx, [rcx + 1]
	lea	rdi, [rdi]
	mov	qword ptr [rbx + 0xc8], rdx
	mov	rbp, rbp
	mov	rdx, qword ptr [rbx + 0xd8]
	lea	rcx, [rcx + rcx*4]
	lea	rsi, [rsi]
	mov	byte ptr [rdx + rcx*8 + 0x20], 0
	movsxd	rcx, dword ptr [rbx + 0xe0]
	cmp	rcx, r14
	nop	
	jge	.label_1488
	mov	rsp, rsp
	mov	dword ptr [rbx + 0xe0], r14d
.label_1488:
	mov	rbp, rbp
	add	rsp, 8
	pop	rbx
	pop	r12
	lea	rdi, [rdi]
	pop	r13
	lea	rsi, [rsi]
	pop	r14
	lea	rdi, [rdi]
	pop	r15
	nop	
	pop	rbp
	lea	rdi, [rdi]
	ret	
.label_1489:
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbx + 0xd8]
	lea	rsi, [rsi]
	call	free
	mov	eax, 0xc
	jmp	.label_1488
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x415da0

	.globl check_arrival_expand_ecl
	.type check_arrival_expand_ecl, @function
check_arrival_expand_ecl:
	lea	rdi, [rdi]
	push	rbp
	nop	
	push	r15
	push	r14
	lea	rsi, [rsi]
	push	r13
	mov	rbp, rbp
	push	r12
	lea	rdi, [rdi]
	push	rbx
	sub	rsp, 0x28
	lea	rsi, [rsi]
	mov	r14d, ecx
	mov	r13, rdx
	mov	rbp, rbp
	mov	rbp, rsi
	mov	qword ptr [rsp + 8], rbp
	mov	rbx, rdi
	mov	rsi, qword ptr [rbp + 8]
	lea	rdi, [rsp + 0x10]
	lea	rsi, [rsi]
	call	re_node_set_alloc
	mov	r12d, eax
	nop	
	test	r12d, r12d
	jne	.label_1490
	mov	r15d, r14d
	cmp	qword ptr [rbp + 8], 0
	jle	.label_1492
	mov	rbp, rbp
	xor	r14d, r14d
	nop	word ptr cs:[rax + rax]
.label_1494:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp + 0x10]
	mov	r12, qword ptr [rax + r14*8]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbx + 0x30]
	lea	rcx, [r12 + r12*2]
	nop	
	lea	rbp, [rax + rcx*8]
	lea	rsi, [rsi]
	mov	rdi, rbx
	lea	rsi, [rsi]
	mov	rsi, rbp
	mov	rdx, r13
	mov	rsp, rsp
	mov	ecx, r15d
	lea	rdi, [rdi]
	call	find_subexp_node
	cmp	rax, -1
	je	.label_1491
	mov	rdi, rbx
	nop	
	lea	rsi, [rsp + 0x10]
	mov	rdx, r12
	mov	rcx, r13
	mov	r8d, r15d
	mov	rsp, rsp
	call	check_arrival_expand_ecl_sub
	lea	rsi, [rsi]
	jmp	.label_1493
	nop	dword ptr [rax]
.label_1491:
	lea	rsi, [rsi]
	lea	rdi, [rsp + 0x10]
	mov	rsi, rbp
	call	re_node_set_merge
.label_1493:
	lea	rdi, [rdi]
	mov	r12d, eax
	lea	rsi, [rsi]
	test	r12d, r12d
	jne	.label_1495
	inc	r14
	mov	rbp, qword ptr [rsp + 8]
	cmp	r14, qword ptr [rbp + 8]
	lea	rdi, [rdi]
	jl	.label_1494
.label_1492:
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp + 0x10]
	lea	rdi, [rdi]
	call	free
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0x20]
	lea	rsi, [rsi]
	mov	qword ptr [rbp + 0x10], rax
	movups	xmm0, xmmword ptr [rsp + 0x10]
	movups	xmmword ptr [rbp], xmm0
	mov	rsp, rsp
	xor	r12d, r12d
	jmp	.label_1490
.label_1495:
	mov	rdi, qword ptr [rsp + 0x20]
	call	free
.label_1490:
	mov	eax, r12d
	add	rsp, 0x28
	lea	rsi, [rsi]
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	lea	rsi, [rsi]
	pop	r15
	nop	
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x415f00

	.globl expand_bkref_cache
	.type expand_bkref_cache, @function
expand_bkref_cache:
	push	rbp
	nop	
	push	r15
	push	r14
	push	r13
	nop	
	push	r12
	push	rbx
	lea	rsi, [rsi]
	sub	rsp, 0x68
	mov	dword ptr [rsp + 0x18], r8d
	mov	qword ptr [rsp + 0x10], rcx
	mov	qword ptr [rsp + 0x40], rdx
	nop	
	mov	r13, rsi
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x28], r13
	mov	qword ptr [rsp + 0x38], rdi
	nop	
	mov	r14, qword ptr [rdi + 0x98]
	mov	qword ptr [rsp + 0x20], r14
	mov	rsi, rdx
	call	search_cur_bkref_entry
	lea	rdi, [rdi]
	cmp	rax, -1
	lea	rdi, [rdi]
	je	.label_1499
	nop	
	lea	rcx, [rax + rax*4]
	nop	
	mov	qword ptr [rsp + 8], rcx
	lea	r12, [rsp + 0x48]
.label_1509:
	mov	rbp, rbp
	mov	dword ptr [rsp + 0x34], eax
	mov	rax, qword ptr [rsp + 0x38]
	mov	rax, qword ptr [rax + 0xd8]
	lea	rsi, [rsi]
	lea	r15, [rax + rcx*8 + 0x20]
	nop	word ptr cs:[rax + rax]
.label_1496:
	mov	rsp, rsp
	mov	rsi, qword ptr [r15 - 0x20]
	mov	rdi, r13
	call	re_node_set_contains
	test	rax, rax
	je	.label_1505
	lea	rsi, [rsi]
	mov	rbp, qword ptr [r15 - 8]
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 0x40]
	add	rbp, rax
	mov	rsp, rsp
	sub	rbp, qword ptr [r15 - 0x10]
	mov	rsp, rsp
	cmp	rbp, rax
	jne	.label_1508
	mov	rbp, rbp
	mov	rax, qword ptr [r15 - 0x20]
	mov	rcx, qword ptr [r14 + 0x28]
	lea	rax, [rax + rax*2]
	mov	rbp, rbp
	mov	rax, qword ptr [rcx + rax*8 + 0x10]
	mov	rbx, qword ptr [rax]
	lea	rsi, [rsi]
	mov	rdi, r13
	mov	rsi, rbx
	mov	rsp, rsp
	call	re_node_set_contains
	mov	ecx, 4
	mov	rbp, rbp
	test	rax, rax
	je	.label_1510
	lea	rsi, [rsi]
	mov	rbx, r14
	lea	rsi, [rsi]
	jmp	.label_1502
	nop	
.label_1508:
	mov	rbp, rbp
	mov	rax, qword ptr [r15 - 0x20]
	mov	rcx, qword ptr [r14 + 0x18]
	lea	rdi, [rdi]
	mov	r14, qword ptr [rcx + rax*8]
	mov	rax, qword ptr [rsp + 0x38]
	mov	rax, qword ptr [rax + 0xb8]
	lea	rdi, [rdi]
	mov	rbx, qword ptr [rax + rbp*8]
	lea	rsi, [rsi]
	test	rbx, rbx
	je	.label_1503
	add	rbx, 8
	mov	rsp, rsp
	mov	rdi, rbx
	lea	rsi, [rsi]
	mov	rsi, r14
	mov	rsp, rsp
	call	re_node_set_contains
	nop	
	mov	ecx, 4
	lea	rsi, [rsi]
	test	rax, rax
	mov	rbp, rbp
	je	.label_1504
	mov	r14, qword ptr [rsp + 0x20]
	mov	rbp, rbp
	jmp	.label_1500
.label_1510:
	mov	rbp, rbp
	mov	rdi, r12
	mov	rsi, rbx
	call	re_node_set_init_1
	mov	rbp, rbp
	mov	rdi, r14
	mov	rsp, rsp
	mov	r14d, eax
	lea	rsi, [rsi]
	mov	dword ptr [rsp + 0x64], r14d
	mov	rbx, rdi
	lea	rdi, [rdi]
	mov	rsi, r12
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rsp + 0x10]
	lea	rdi, [rdi]
	mov	ecx, dword ptr [rsp + 0x18]
	mov	rsp, rsp
	call	check_arrival_expand_ecl
	nop	
	mov	dword ptr [rsp + 0x1c], eax
	mov	rdi, r13
	mov	rsp, rsp
	mov	rsi, r12
	call	re_node_set_merge
	lea	rdi, [rdi]
	mov	ebp, eax
	mov	rbp, rbp
	mov	rdi, qword ptr [rsp + 0x58]
	call	free
	lea	rdi, [rdi]
	mov	edx, r14d
	mov	r14d, dword ptr [rsp + 0x1c]
	mov	eax, ebp
	mov	rbp, rbp
	or	eax, r14d
	mov	rsp, rsp
	mov	ecx, 2
	mov	rsp, rsp
	or	eax, edx
	jne	.label_1507
.label_1506:
	mov	r14, rbx
	lea	rdi, [rdi]
	jmp	.label_1502
.label_1503:
	lea	rsi, [rsi]
	mov	rdi, r12
	mov	rsi, r14
	call	re_node_set_init_1
	mov	dword ptr [rsp + 0x64], eax
	test	eax, eax
	je	.label_1498
	mov	rbp, rbp
	mov	ecx, 1
	mov	dword ptr [rsp + 0x34], eax
	lea	rdi, [rdi]
	mov	r14, qword ptr [rsp + 0x20]
	jmp	.label_1500
.label_1504:
	mov	rsp, rsp
	mov	rdi, r12
	mov	rsi, rbx
	mov	rbp, rbp
	call	re_node_set_init_copy
	mov	ebx, eax
	mov	rbp, rbp
	mov	dword ptr [rsp + 0x64], ebx
	lea	rsi, [rsi]
	mov	rdi, r12
	mov	rsi, r14
	nop	
	call	re_node_set_insert
	test	ebx, ebx
	mov	rbp, rbp
	jne	.label_1497
	xor	al, 1
	mov	rsp, rsp
	jne	.label_1497
.label_1498:
	lea	rdi, [rsp + 0x64]
	mov	r14, qword ptr [rsp + 0x20]
	mov	rsi, r14
	lea	rsi, [rsi]
	mov	rdx, r12
	call	re_acquire_state
	mov	rbx, qword ptr [rsp + 0x38]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbx + 0xb8]
	mov	qword ptr [rcx + rbp*8], rax
	mov	rdi, qword ptr [rsp + 0x58]
	mov	rsp, rsp
	call	free
	mov	rax, qword ptr [rbx + 0xb8]
	nop	
	cmp	qword ptr [rax + rbp*8], 0
	sete	al
	mov	rbp, rbp
	mov	edx, dword ptr [rsp + 0x64]
	test	edx, edx
	setne	cl
	and	cl, al
	mov	rbp, rbp
	movzx	ecx, cl
	mov	rbp, rbp
	mov	eax, dword ptr [rsp + 0x34]
	lea	rsi, [rsi]
	cmovne	eax, edx
	mov	rbp, rbp
	mov	dword ptr [rsp + 0x34], eax
.label_1500:
	mov	r13, qword ptr [rsp + 0x28]
.label_1502:
	test	ecx, ecx
	je	.label_1505
	cmp	ecx, 4
	nop	
	jne	.label_1511
.label_1505:
	lea	rdi, [rdi]
	cmp	byte ptr [r15], 0
	lea	rdi, [rdi]
	lea	r15, [r15 + 0x28]
	lea	rsi, [rsi]
	jne	.label_1496
	jmp	.label_1499
.label_1507:
	test	r14d, r14d
	cmovne	ebp, r14d
	lea	rsi, [rsi]
	test	edx, edx
	lea	rdi, [rdi]
	cmovne	ebp, edx
	mov	dword ptr [rsp + 0x64], ebp
	mov	ecx, 1
	mov	rsp, rsp
	mov	dword ptr [rsp + 0x34], ebp
	lea	rdi, [rdi]
	jmp	.label_1506
.label_1497:
	mov	rbp, rbp
	mov	rdi, qword ptr [rsp + 0x58]
	call	free
	mov	rsp, rsp
	mov	ecx, dword ptr [rsp + 0x64]
	test	ecx, ecx
	mov	rsp, rsp
	mov	eax, 0xc
	cmove	ecx, eax
	mov	dword ptr [rsp + 0x34], ecx
	lea	rdi, [rdi]
	mov	dword ptr [rsp + 0x64], ecx
	mov	rsp, rsp
	mov	ecx, 1
	lea	rsi, [rsi]
	mov	r14, qword ptr [rsp + 0x20]
	jmp	.label_1500
	nop	dword ptr [rax + rax]
.label_1511:
	cmp	ecx, 2
	mov	rcx, qword ptr [rsp + 8]
	mov	eax, dword ptr [rsp + 0x34]
	je	.label_1509
	jmp	.label_1501
.label_1499:
	mov	rsp, rsp
	xor	eax, eax
.label_1501:
	add	rsp, 0x68
	pop	rbx
	mov	rsp, rsp
	pop	r12
	pop	r13
	lea	rsi, [rsi]
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x4162c0

	.globl check_arrival_add_next_nodes
	.type check_arrival_add_next_nodes, @function
check_arrival_add_next_nodes:
	push	rbp
	mov	rbp, rbp
	push	r15
	push	r14
	push	r13
	push	r12
	mov	rsp, rsp
	push	rbx
	mov	rsp, rsp
	sub	rsp, 0x58
	mov	qword ptr [rsp + 0x28], rcx
	nop	
	mov	rbp, rdx
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x20], rbp
	mov	rcx, rsi
	mov	qword ptr [rsp + 0x18], rcx
	mov	rsp, rsp
	mov	r12, rdi
	mov	qword ptr [rsp + 0x10], r12
	mov	r14, qword ptr [r12 + 0x98]
	mov	dword ptr [rsp + 0x54], 0
	xorps	xmm0, xmm0
	movaps	xmmword ptr [rsp + 0x30], xmm0
	mov	qword ptr [rsp + 0x40], 0
	nop	
	cmp	qword ptr [rbp + 8], 0
	jle	.label_1512
	xor	r15d, r15d
	nop	dword ptr [rax + rax]
.label_1513:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp + 0x10]
	nop	
	mov	r13, qword ptr [rax + r15*8]
	lea	rsi, [rsi]
	mov	rax, qword ptr [r14]
	mov	rbx, r13
	lea	rdi, [rdi]
	shl	rbx, 4
	test	byte ptr [rax + rbx + 0xa], 0x10
	mov	rbp, rbp
	je	.label_1517
	lea	rsi, [rsi]
	mov	rdi, r14
	mov	rsi, r13
	mov	rdx, r12
	mov	rbp, rbp
	mov	rbp, rcx
	call	check_node_accept_bytes
	cmp	eax, 2
	jl	.label_1518
	mov	rsp, rsp
	mov	rcx, qword ptr [r14 + 0x18]
	mov	rbp, rbp
	mov	rcx, qword ptr [rcx + r13*8]
	movsxd	rbx, eax
	nop	
	add	rbx, rbp
	nop	
	mov	rax, qword ptr [r12 + 0xb8]
	mov	rbp, rbp
	mov	rsi, qword ptr [rax + rbx*8]
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x38], 0
	test	rsi, rsi
	lea	rsi, [rsi]
	lea	rbp, [rsp + 0x30]
	je	.label_1520
	add	rsi, 8
	mov	rdi, rbp
	mov	r12, rcx
	lea	rsi, [rsi]
	call	re_node_set_merge
	nop	
	mov	rcx, r12
	mov	rsp, rsp
	mov	dword ptr [rsp + 0x54], eax
	lea	rsi, [rsi]
	test	eax, eax
	mov	rbp, rbp
	jne	.label_1514
.label_1520:
	mov	rsp, rsp
	mov	rdi, rbp
	mov	rsi, rcx
	mov	rsp, rsp
	call	re_node_set_insert
	test	al, al
	nop	
	je	.label_1519
	mov	rbp, rbp
	lea	rdi, [rsp + 0x54]
	mov	rsi, r14
	lea	rsi, [rsi]
	mov	rdx, rbp
	lea	rdi, [rdi]
	call	re_acquire_state
	mov	rsp, rsp
	mov	r12, qword ptr [rsp + 0x10]
	mov	rcx, qword ptr [r12 + 0xb8]
	mov	qword ptr [rcx + rbx*8], rax
	mov	rbp, rbp
	mov	rax, qword ptr [r12 + 0xb8]
	mov	rbp, rbp
	cmp	qword ptr [rax + rbx*8], 0
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rsp + 0x18]
	mov	rbp, qword ptr [rsp + 0x20]
	jne	.label_1515
	lea	rdi, [rdi]
	mov	eax, dword ptr [rsp + 0x54]
	test	eax, eax
	mov	rsp, rsp
	je	.label_1515
	jmp	.label_1514
	nop	
.label_1518:
	lea	rdi, [rdi]
	test	eax, eax
	nop	
	mov	rcx, rbp
	lea	rsi, [rsi]
	mov	rbp, qword ptr [rsp + 0x20]
	mov	rbp, rbp
	jne	.label_1515
	nop	word ptr cs:[rax + rax]
.label_1517:
	add	rbx, qword ptr [r14]
	mov	rdi, r12
	nop	
	mov	rsi, rbx
	mov	rdx, rcx
	mov	rbx, rcx
	mov	rsp, rsp
	call	check_node_accept
	lea	rdi, [rdi]
	mov	rcx, rbx
	test	al, al
	je	.label_1521
.label_1515:
	mov	rax, qword ptr [r14 + 0x18]
	mov	rsi, qword ptr [rax + r13*8]
	nop	
	mov	rdi, qword ptr [rsp + 0x28]
	mov	rbx, rcx
	call	re_node_set_insert
	lea	rdi, [rdi]
	mov	rcx, rbx
	mov	rbp, rbp
	test	al, al
	mov	rsp, rsp
	je	.label_1519
.label_1521:
	inc	r15
	mov	rsp, rsp
	cmp	r15, qword ptr [rbp + 8]
	jl	.label_1513
.label_1512:
	mov	rbp, rbp
	mov	rdi, qword ptr [rsp + 0x40]
	call	free
	xor	eax, eax
	jmp	.label_1516
.label_1519:
	mov	rdi, qword ptr [rsp + 0x40]
	call	free
	lea	rsi, [rsi]
	mov	eax, 0xc
	jmp	.label_1516
.label_1514:
	mov	rdi, qword ptr [rsp + 0x40]
	mov	rbp, rbp
	call	free
	lea	rdi, [rdi]
	mov	eax, dword ptr [rsp + 0x54]
.label_1516:
	add	rsp, 0x58
	lea	rsi, [rsi]
	pop	rbx
	nop	
	pop	r12
	pop	r13
	pop	r14
	mov	rsp, rsp
	pop	r15
	mov	rsp, rsp
	pop	rbp
	mov	rsp, rsp
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x416530

	.globl check_arrival_expand_ecl_sub
	.type check_arrival_expand_ecl_sub, @function
check_arrival_expand_ecl_sub:
	lea	rsi, [rsi]
	push	rbp
	push	r15
	lea	rsi, [rsi]
	push	r14
	push	r12
	mov	rbp, rbp
	push	rbx
	mov	rbp, rbp
	mov	r15d, r8d
	lea	rdi, [rdi]
	mov	r14, rcx
	mov	rbp, rbp
	mov	rbx, rdx
	mov	r12, rsi
	lea	rdi, [rdi]
	mov	rbp, rdi
	nop	
	jmp	.label_1526
	nop	
.label_1527:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp + 0x28]
	mov	rbp, rbp
	mov	rax, qword ptr [rax + rbx*8 + 0x10]
	nop	
	mov	rbx, qword ptr [rax]
.label_1526:
	mov	rdi, r12
	mov	rsi, rbx
	mov	rsp, rsp
	call	re_node_set_contains
	test	rax, rax
	jne	.label_1522
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp]
	mov	rcx, rbx
	mov	rbp, rbp
	shl	rcx, 4
	mov	rsp, rsp
	movzx	edx, byte ptr [rax + rcx + 8]
	cmp	edx, r15d
	mov	rbp, rbp
	jne	.label_1523
	nop	
	cmp	qword ptr [rax + rcx], r14
	lea	rdi, [rdi]
	je	.label_1524
.label_1523:
	lea	rsi, [rsi]
	mov	rdi, r12
	mov	rsp, rsp
	mov	rsi, rbx
	lea	rsi, [rsi]
	call	re_node_set_insert
	mov	cl, al
	mov	eax, 0xc
	mov	rbp, rbp
	test	cl, cl
	je	.label_1525
	mov	rax, qword ptr [rbp + 0x28]
	lea	rsi, [rsi]
	lea	rbx, [rbx + rbx*2]
	mov	rcx, qword ptr [rax + rbx*8 + 8]
	lea	rdi, [rdi]
	cmp	rcx, 2
	lea	rdi, [rdi]
	je	.label_1528
	test	rcx, rcx
	mov	rsp, rsp
	jne	.label_1527
	jmp	.label_1522
	nop	dword ptr [rax]
.label_1528:
	mov	rax, qword ptr [rax + rbx*8 + 0x10]
	mov	rdx, qword ptr [rax + 8]
	nop	
	mov	rdi, rbp
	mov	rsp, rsp
	mov	rsi, r12
	mov	rcx, r14
	mov	r8d, r15d
	lea	rsi, [rsi]
	call	check_arrival_expand_ecl_sub
	nop	
	test	eax, eax
	je	.label_1527
	jmp	.label_1525
.label_1524:
	cmp	r15d, 9
	mov	rsp, rsp
	jne	.label_1522
	mov	rdi, r12
	lea	rdi, [rdi]
	mov	rsi, rbx
	mov	rsp, rsp
	call	re_node_set_insert
	mov	cl, al
	mov	rbp, rbp
	mov	eax, 0xc
	mov	rsp, rsp
	test	cl, cl
	mov	rsp, rsp
	je	.label_1525
.label_1522:
	lea	rsi, [rsi]
	xor	eax, eax
.label_1525:
	pop	rbx
	mov	rsp, rsp
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x416680

	.globl re_acquire_state
	.type re_acquire_state, @function
re_acquire_state:
	nop	
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x18
	mov	r12, rdx
	mov	rbx, rsi
	nop	
	cmp	qword ptr [r12 + 8], 0
	lea	rdi, [rdi]
	je	.label_1529
	mov	qword ptr [rsp + 8], rdi
	mov	rsp, rsp
	xor	esi, esi
	mov	rdi, r12
	call	calc_state_hash
	mov	r13, rax
	mov	rax, qword ptr [rbx + 0x40]
	mov	rcx, r13
	and	rcx, qword ptr [rbx + 0x88]
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x10], rbx
	lea	rcx, [rcx + rcx*2]
	cmp	qword ptr [rax + rcx*8], 0
	nop	
	jle	.label_1534
	lea	rbp, [rax + rcx*8]
	mov	r14, qword ptr [rax + rcx*8 + 0x10]
	xor	r15d, r15d
	nop	dword ptr [rax + rax]
.label_1533:
	mov	rsp, rsp
	mov	rbx, qword ptr [r14 + r15*8]
	cmp	r13, qword ptr [rbx]
	lea	rsi, [rsi]
	jne	.label_1531
	lea	rdi, [rdi]
	lea	rdi, [rbx + 8]
	nop	
	mov	rsi, r12
	nop	
	call	re_node_set_compare
	nop	
	test	al, al
	nop	
	jne	.label_1535
.label_1531:
	nop	
	inc	r15
	cmp	r15, qword ptr [rbp]
	jl	.label_1533
.label_1534:
	mov	rdi, qword ptr [rsp + 0x10]
	mov	rsi, r12
	nop	
	mov	rdx, r13
	lea	rdi, [rdi]
	call	create_ci_newstate
	mov	rbp, rbp
	mov	rbx, rax
	nop	
	test	rbx, rbx
	je	.label_1532
.label_1535:
	mov	rbp, rbp
	mov	rax, rbx
	lea	rsi, [rsi]
	add	rsp, 0x18
	pop	rbx
	pop	r12
	mov	rbp, rbp
	pop	r13
	mov	rsp, rsp
	pop	r14
	nop	
	pop	r15
	pop	rbp
	lea	rdi, [rdi]
	ret	
.label_1529:
	mov	rbp, rbp
	mov	dword ptr [rdi], 0
	jmp	.label_1530
.label_1532:
	mov	rax, qword ptr [rsp + 8]
	mov	dword ptr [rax], 0xc
.label_1530:
	lea	rsi, [rsi]
	xor	ebx, ebx
	jmp	.label_1535
	nop	
	.section	.text
	.align	32
	#Procedure 0x416780

	.globl create_ci_newstate
	.type create_ci_newstate, @function
create_ci_newstate:
	nop	
	push	rbp
	push	r15
	push	r14
	nop	
	push	r13
	push	r12
	push	rbx
	mov	rbp, rbp
	push	rax
	mov	rbx, rdx
	mov	rbp, rbp
	mov	r14, rsi
	lea	rdi, [rdi]
	mov	r15, rdi
	mov	edi, 0x70
	mov	esi, 1
	nop	
	call	rpl_calloc
	mov	r12, rax
	lea	rdi, [rdi]
	xor	eax, eax
	nop	
	test	r12, r12
	je	.label_1536
	lea	rsi, [rsi]
	mov	r13, r12
	add	r13, 8
	mov	rdi, r13
	mov	rsi, r14
	lea	rdi, [rdi]
	call	re_node_set_init_copy
	test	eax, eax
	mov	rsp, rsp
	jne	.label_1539
	mov	rdx, rbx
	mov	qword ptr [r12 + 0x50], r13
	lea	rsi, [rsi]
	cmp	qword ptr [r14 + 8], 0
	lea	rdi, [rdi]
	jle	.label_1541
	xor	eax, eax
	nop	
.label_1540:
	mov	rbp, rbp
	mov	r8, qword ptr [r15]
	mov	rbp, rbp
	mov	rcx, qword ptr [r14 + 0x10]
	mov	rbp, qword ptr [rcx + rax*8]
	shl	rbp, 4
	mov	edi, dword ptr [r8 + rbp + 8]
	mov	esi, edi
	and	esi, 0x3ffff
	cmp	esi, 1
	je	.label_1538
	mov	rbp, rbp
	movzx	esi, dil
	shr	edi, 0x14
	mov	rbp, rbp
	mov	cl, byte ptr [r12 + 0x68]
	mov	bl, cl
	shr	bl, 5
	movzx	ebx, bl
	nop	
	or	ebx, edi
	shl	bl, 5
	and	bl, 0x20
	mov	rsp, rsp
	and	cl, 0xdf
	lea	rsi, [rsi]
	or	cl, bl
	mov	rbp, rbp
	mov	byte ptr [r12 + 0x68], cl
	lea	rdi, [rdi]
	cmp	esi, 0xc
	je	.label_1544
	cmp	esi, 4
	je	.label_1542
	lea	rsi, [rsi]
	cmp	esi, 2
	nop	
	jne	.label_1543
	or	cl, 0x10
	lea	rsi, [rsi]
	mov	byte ptr [r12 + 0x68], cl
	nop	
	jmp	.label_1538
.label_1542:
	or	cl, 0x40
	nop	
	mov	byte ptr [r12 + 0x68], cl
	jmp	.label_1538
.label_1543:
	lea	rcx, [r8 + rbp + 8]
	test	dword ptr [rcx], 0x3ff00
	je	.label_1538
.label_1544:
	lea	rsi, [rsi]
	or	byte ptr [r12 + 0x68], 0x80
.label_1538:
	lea	rdi, [rdi]
	inc	rax
	nop	
	cmp	rax, qword ptr [r14 + 8]
	mov	rbp, rbp
	jl	.label_1540
.label_1541:
	mov	rdi, r15
	mov	rsi, r12
	mov	rbp, rbp
	call	register_state
	test	eax, eax
	mov	rsp, rsp
	mov	rax, r12
	mov	rsp, rsp
	jne	.label_1537
.label_1536:
	lea	rsi, [rsi]
	add	rsp, 8
	lea	rdi, [rdi]
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	nop	
	ret	
.label_1539:
	mov	rsp, rsp
	mov	rdi, r12
	mov	rbp, rbp
	call	free
	jmp	.label_1545
.label_1537:
	mov	rsp, rsp
	mov	rdi, r12
	call	free_state
.label_1545:
	xor	eax, eax
	jmp	.label_1536
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x416910

	.globl check_node_accept_bytes
	.type check_node_accept_bytes, @function
check_node_accept_bytes:
	mov	rsp, rsp
	push	rbp
	mov	rsp, rsp
	push	r15
	push	r14
	mov	rbp, rbp
	push	r13
	push	r12
	push	rbx
	nop	
	push	rax
	mov	r12, rcx
	lea	rdi, [rdi]
	mov	r13, rdx
	mov	rbp, rsi
	mov	rsp, rsp
	mov	rbx, rdi
	mov	r14, qword ptr [rbx]
	lea	rsi, [rsi]
	shl	rbp, 4
	lea	rdi, [rdi]
	movzx	r15d, byte ptr [r14 + rbp + 8]
	cmp	r15d, 7
	nop	
	je	.label_1550
	mov	rsp, rsp
	mov	rdi, r13
	lea	rsi, [rsi]
	mov	rsi, r12
	call	re_string_char_size_at
	mov	rbp, rbp
	mov	esi, eax
	cmp	r15d, 5
	jne	.label_1568
	xor	eax, eax
	mov	rbp, rbp
	cmp	esi, 2
	jl	.label_1549
	test	byte ptr [rbx + 0xd8], 0x40
	lea	rdi, [rdi]
	jne	.label_1573
	mov	rcx, qword ptr [r13 + 8]
	movzx	ecx, byte ptr [rcx + r12]
	cmp	ecx, 0xa
	je	.label_1549
.label_1573:
	cmp	byte ptr [rbx + 0xd8], 0
	lea	rsi, [rsi]
	js	.label_1553
	mov	eax, esi
	jmp	.label_1549
.label_1568:
	mov	rsp, rsp
	cmp	esi, 1
	setg	cl
	nop	
	xor	eax, eax
	nop	
	cmp	r15d, 6
	jne	.label_1549
	test	cl, cl
	je	.label_1549
	mov	rbp, qword ptr [r14 + rbp]
	mov	rsp, rsp
	cmp	qword ptr [rbp + 0x40], 0
	jne	.label_1567
	mov	rbp, rbp
	cmp	qword ptr [rbp + 0x48], 0
	jne	.label_1567
	xor	r14d, r14d
	lea	rsi, [rsi]
	cmp	qword ptr [rbp + 0x28], 0
	lea	rdi, [rdi]
	je	.label_1546
.label_1567:
	mov	rdi, r13
	mov	ebx, esi
	nop	
	mov	rsi, r12
	lea	rdi, [rdi]
	call	re_string_wchar_at
	mov	esi, ebx
	mov	rbp, rbp
	mov	r14d, eax
.label_1546:
	cmp	qword ptr [rbp + 0x28], 0
	jle	.label_1571
	mov	rax, qword ptr [rbp]
	xor	ecx, ecx
	nop	word ptr cs:[rax + rax]
.label_1561:
	cmp	r14d, dword ptr [rax + rcx*4]
	je	.label_1554
	inc	rcx
	lea	rsi, [rsi]
	cmp	rcx, qword ptr [rbp + 0x28]
	nop	
	jl	.label_1561
.label_1571:
	mov	r15d, esi
	lea	rdi, [rdi]
	cmp	qword ptr [rbp + 0x48], 0
	jle	.label_1564
	xor	ebx, ebx
	nop	word ptr cs:[rax + rax]
.label_1572:
	mov	rax, qword ptr [rbp + 0x18]
	mov	rsi, qword ptr [rax + rbx*8]
	nop	
	mov	edi, r14d
	nop	
	call	iswctype
	test	eax, eax
	jne	.label_1558
	mov	rbp, rbp
	inc	rbx
	cmp	rbx, qword ptr [rbp + 0x48]
	nop	
	jl	.label_1572
.label_1564:
	xor	ecx, ecx
	cmp	qword ptr [rbp + 0x40], 0
	mov	rbp, rbp
	mov	esi, r15d
	lea	rdi, [rdi]
	jle	.label_1548
	mov	rax, qword ptr [rbp + 8]
	lea	rdi, [rdi]
	xor	edx, edx
	nop	word ptr cs:[rax + rax]
.label_1565:
	nop	
	cmp	dword ptr [rax + rdx*4], r14d
	jg	.label_1562
	mov	rcx, qword ptr [rbp + 0x10]
	cmp	r14d, dword ptr [rcx + rdx*4]
	lea	rdi, [rdi]
	jle	.label_1559
.label_1562:
	nop	
	inc	rdx
	xor	ecx, ecx
	lea	rdi, [rdi]
	cmp	rdx, qword ptr [rbp + 0x40]
	mov	rbp, rbp
	jl	.label_1565
	lea	rsi, [rsi]
	jmp	.label_1548
.label_1553:
	mov	rcx, qword ptr [r13 + 8]
	lea	rdi, [rdi]
	cmp	byte ptr [rcx + r12], 0
	lea	rdi, [rdi]
	je	.label_1549
	lea	rdi, [rdi]
	mov	eax, esi
	nop	
	jmp	.label_1549
.label_1550:
	lea	rdi, [rdi]
	mov	rsi, qword ptr [r13 + 8]
	mov	rbp, rbp
	movzx	edx, byte ptr [rsi + r12]
	xor	eax, eax
	cmp	edx, 0xc2
	jb	.label_1549
	lea	rsi, [rsi]
	lea	rcx, [r12 + 2]
	cmp	rcx, qword ptr [r13 + 0x58]
	jle	.label_1551
	xor	eax, eax
	jmp	.label_1549
.label_1558:
	mov	esi, r15d
.label_1554:
	mov	rbp, rbp
	mov	ecx, esi
.label_1548:
	test	byte ptr [rbp + 0x20], 1
	jne	.label_1556
	mov	rsp, rsp
	mov	eax, ecx
	jmp	.label_1549
.label_1556:
	mov	rbp, rbp
	test	ecx, ecx
	mov	rbp, rbp
	mov	eax, 0
	jg	.label_1549
	mov	rbp, rbp
	test	esi, esi
	nop	
	mov	eax, 1
	cmovg	eax, esi
.label_1549:
	lea	rsi, [rsi]
	add	rsp, 8
	lea	rsi, [rsi]
	pop	rbx
	pop	r12
	pop	r13
	mov	rbp, rbp
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_1559:
	mov	ecx, esi
	lea	rdi, [rdi]
	jmp	.label_1548
.label_1551:
	mov	rsp, rsp
	mov	cl, byte ptr [r12 + rsi + 1]
	nop	
	movzx	edx, dl
	cmp	edx, 0xdf
	nop	
	ja	.label_1570
	mov	rbp, rbp
	movzx	eax, cl
	cmp	eax, 0xc0
	sbb	edx, edx
	and	edx, 2
	lea	rsi, [rsi]
	test	cl, cl
	mov	rsp, rsp
	mov	eax, 0
	mov	rsp, rsp
	cmovs	eax, edx
	lea	rsi, [rsi]
	jmp	.label_1549
.label_1570:
	lea	rdi, [rdi]
	cmp	edx, 0xef
	ja	.label_1557
	mov	rbp, rbp
	mov	eax, 3
	cmp	edx, 0xe0
	jne	.label_1547
	movzx	ecx, cl
	cmp	ecx, 0xa0
	jae	.label_1547
	nop	
	xor	eax, eax
	jmp	.label_1549
.label_1557:
	lea	rdi, [rdi]
	cmp	edx, 0xf7
	ja	.label_1569
	lea	rsi, [rsi]
	mov	eax, 4
	cmp	edx, 0xf0
	mov	rsp, rsp
	jne	.label_1547
	movzx	ecx, cl
	cmp	ecx, 0x90
	nop	
	jae	.label_1547
	xor	eax, eax
	jmp	.label_1549
.label_1569:
	cmp	edx, 0xfb
	mov	rsp, rsp
	ja	.label_1552
	mov	rsp, rsp
	mov	eax, 5
	lea	rdi, [rdi]
	cmp	edx, 0xf8
	jne	.label_1547
	mov	rsp, rsp
	movzx	ecx, cl
	cmp	ecx, 0x88
	nop	
	jae	.label_1547
	lea	rsi, [rsi]
	xor	eax, eax
	jmp	.label_1549
.label_1552:
	cmp	edx, 0xfd
	ja	.label_1566
	lea	rdi, [rdi]
	mov	eax, 6
	mov	rsp, rsp
	cmp	edx, 0xfc
	jne	.label_1547
	movzx	ecx, cl
	cmp	ecx, 0x84
	jae	.label_1547
	xor	eax, eax
	mov	rbp, rbp
	jmp	.label_1549
.label_1547:
	mov	ecx, eax
	mov	rbp, rbp
	lea	rdx, [rcx + r12]
	lea	rdi, [rdi]
	cmp	rdx, qword ptr [r13 + 0x58]
	mov	rbp, rbp
	jle	.label_1574
	xor	eax, eax
	nop	
	jmp	.label_1549
.label_1574:
	nop	
	add	r12, qword ptr [r13 + 8]
	mov	rbp, rbp
	mov	edx, 1
.label_1563:
	nop	
	mov	bl, byte ptr [r12 + rdx]
	mov	rsp, rsp
	test	bl, bl
	lea	rsi, [rsi]
	jns	.label_1555
	movzx	esi, bl
	cmp	esi, 0xbf
	ja	.label_1560
	mov	rsp, rsp
	inc	rdx
	cmp	rdx, rcx
	mov	rsp, rsp
	jl	.label_1563
	jmp	.label_1549
.label_1566:
	xor	eax, eax
	jmp	.label_1549
.label_1555:
	xor	eax, eax
	jmp	.label_1549
.label_1560:
	nop	
	xor	eax, eax
	mov	rsp, rsp
	jmp	.label_1549
	nop	
	.section	.text
	.align	32
	#Procedure 0x416cf0

	.globl check_node_accept
	.type check_node_accept, @function
check_node_accept:
	lea	rsi, [rsi]
	push	rbp
	push	r15
	lea	rdi, [rdi]
	push	r14
	push	rbx
	mov	rsp, rsp
	push	rax
	mov	r14, rdx
	mov	rbp, rbp
	mov	rbx, rsi
	mov	rbp, rbp
	mov	r15, rdi
	nop	
	mov	rax, qword ptr [r15 + 8]
	movzx	esi, byte ptr [rax + r14]
	lea	rsi, [rsi]
	movzx	ecx, byte ptr [rbx + 8]
	lea	rdi, [rdi]
	xor	eax, eax
	dec	ecx
	cmp	ecx, 6
	ja	.label_1575
	lea	rsi, [rsi]
	jmp	qword ptr [word ptr [+ (rcx * 8) + label_1581]]
.label_1967:
	movzx	eax, byte ptr [rbx]
	cmp	eax, esi
	nop	
	je	.label_1576
	lea	rdi, [rdi]
	xor	eax, eax
	mov	rsp, rsp
	jmp	.label_1575
.label_1968:
	mov	rdi, qword ptr [rbx]
	call	bitset_contain
	mov	rsp, rsp
	test	al, al
	mov	rsp, rsp
	jne	.label_1576
	mov	rbp, rbp
	xor	eax, eax
	lea	rdi, [rdi]
	jmp	.label_1575
.label_1970:
	test	sil, sil
	js	.label_1582
.label_1969:
	lea	rsi, [rsi]
	test	sil, sil
	je	.label_1583
	nop	
	movzx	eax, sil
	lea	rsi, [rsi]
	cmp	eax, 0xa
	mov	rsp, rsp
	jne	.label_1576
	mov	rsp, rsp
	mov	rax, qword ptr [r15 + 0x98]
	test	byte ptr [rax + 0xd8], 0x40
	mov	rsp, rsp
	jne	.label_1576
	xor	eax, eax
	jmp	.label_1575
.label_1583:
	mov	rax, qword ptr [r15 + 0x98]
	lea	rsi, [rsi]
	cmp	byte ptr [rax + 0xd8], 0
	js	.label_1579
.label_1576:
	mov	rsp, rsp
	mov	ecx, dword ptr [rbx + 8]
	mov	ebx, ecx
	lea	rsi, [rsi]
	shr	ebx, 8
	lea	rsi, [rsi]
	mov	al, 1
	lea	rsi, [rsi]
	test	bx, 0x3ff
	mov	rbp, rbp
	je	.label_1575
	mov	ebp, ecx
	mov	rsp, rsp
	mov	edx, dword ptr [r15 + 0xa0]
	nop	
	mov	rdi, r15
	mov	rsi, r14
	lea	rsi, [rsi]
	call	re_string_context_at
	mov	rsp, rsp
	mov	ecx, eax
	mov	rsp, rsp
	and	ecx, 1
	test	bl, 4
	je	.label_1578
	mov	rsp, rsp
	test	ecx, ecx
	lea	rdi, [rdi]
	jne	.label_1578
	lea	rdi, [rdi]
	xor	eax, eax
	nop	
	jmp	.label_1575
.label_1578:
	lea	rdi, [rdi]
	mov	edx, ebp
	mov	rsp, rsp
	test	dh, 8
	je	.label_1580
	test	ecx, ecx
	nop	
	je	.label_1580
	xor	eax, eax
	mov	rsp, rsp
	jmp	.label_1575
.label_1582:
	xor	eax, eax
	mov	rbp, rbp
	jmp	.label_1575
.label_1580:
	lea	rdi, [rdi]
	test	dh, 0x20
	mov	rbp, rbp
	je	.label_1577
	mov	ecx, eax
	and	ecx, 2
	lea	rsi, [rsi]
	jne	.label_1577
	lea	rdi, [rdi]
	xor	eax, eax
	nop	
	jmp	.label_1575
.label_1579:
	mov	rsp, rsp
	xor	eax, eax
	mov	rsp, rsp
	jmp	.label_1575
.label_1577:
	mov	rbp, rbp
	and	eax, 8
	lea	rdi, [rdi]
	test	bl, bl
	setns	cl
	shr	eax, 3
	or	al, cl
.label_1575:
	add	rsp, 8
	pop	rbx
	pop	r14
	mov	rbp, rbp
	pop	r15
	mov	rbp, rbp
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x416ea0
	.globl re_string_elem_size_at
	.type re_string_elem_size_at, @function
re_string_elem_size_at:

	mov	rsp, rsp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x416eb0

	.globl transit_state_mb
	.type transit_state_mb, @function
transit_state_mb:
	mov	rsp, rsp
	push	rbp
	nop	
	push	r15
	push	r14
	mov	rbp, rbp
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x38
	mov	r12, rsi
	mov	r15, rdi
	xor	eax, eax
	lea	rsi, [rsi]
	cmp	qword ptr [r12 + 0x10], 0
	lea	rsi, [rsi]
	jle	.label_1587
	mov	rax, qword ptr [r15 + 0x98]
	mov	qword ptr [rsp + 8], rax
	xor	r13d, r13d
	nop	
.label_1589:
	lea	rsi, [rsi]
	mov	rax, qword ptr [r12 + 0x18]
	mov	rsp, rsp
	mov	r14, qword ptr [rax + r13*8]
	mov	rax, qword ptr [rsp + 8]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax]
	mov	rcx, r14
	lea	rdi, [rdi]
	shl	rcx, 4
	mov	ebx, dword ptr [rax + rcx + 8]
	test	ebx, 0x100000
	lea	rdi, [rdi]
	je	.label_1584
	mov	ebp, ebx
	mov	rbp, rbp
	shr	ebp, 8
	test	bp, 0x3ff
	je	.label_1585
	mov	rsi, qword ptr [r15 + 0x48]
	mov	edx, dword ptr [r15 + 0xa0]
	mov	rbp, rbp
	mov	rdi, r15
	mov	rsp, rsp
	call	re_string_context_at
	lea	rdi, [rdi]
	mov	ecx, eax
	and	ecx, 1
	test	bpl, 4
	lea	rdi, [rdi]
	je	.label_1588
	test	ecx, ecx
	nop	
	je	.label_1584
.label_1588:
	test	bh, 8
	je	.label_1591
	test	ecx, ecx
	mov	rsp, rsp
	jne	.label_1584
.label_1591:
	lea	rdi, [rdi]
	test	bh, 0x20
	je	.label_1592
	mov	ecx, eax
	and	ecx, 2
	mov	rsp, rsp
	je	.label_1584
.label_1592:
	lea	rsi, [rsi]
	test	bpl, bpl
	mov	rsp, rsp
	jns	.label_1585
	and	eax, 8
	je	.label_1584
	nop	word ptr cs:[rax + rax]
.label_1585:
	lea	rdi, [rdi]
	mov	rcx, qword ptr [r15 + 0x48]
	mov	rdi, qword ptr [rsp + 8]
	mov	rsi, r14
	mov	rdx, r15
	lea	rsi, [rsi]
	call	check_node_accept_bytes
	test	eax, eax
	mov	rsp, rsp
	je	.label_1584
	mov	rbp, r12
	lea	rdi, [rdi]
	movsxd	r12, eax
	add	r12, qword ptr [r15 + 0x48]
	nop	
	mov	ecx, dword ptr [r15 + 0xe0]
	lea	rsi, [rsi]
	cmp	ecx, eax
	mov	rbp, rbp
	cmovl	ecx, eax
	lea	rsi, [rsi]
	mov	dword ptr [r15 + 0xe0], ecx
	mov	rdi, r15
	nop	
	mov	rsi, r12
	call	clean_state_log_if_needed
	lea	rsi, [rsi]
	mov	dword ptr [rsp + 0x34], eax
	lea	rsi, [rsi]
	test	eax, eax
	jne	.label_1587
	mov	rcx, qword ptr [rsp + 8]
	mov	rsp, rsp
	mov	rax, qword ptr [rcx + 0x18]
	mov	rax, qword ptr [rax + r14*8]
	mov	rbp, rbp
	lea	rdx, [rax + rax*2]
	shl	rdx, 3
	add	rdx, qword ptr [rcx + 0x30]
	lea	rsi, [rsi]
	mov	rax, qword ptr [r15 + 0xb8]
	mov	rbx, qword ptr [rax + r12*8]
	test	rbx, rbx
	je	.label_1590
	nop	
	mov	rsi, qword ptr [rbx + 0x50]
	lea	rdi, [rsp + 0x10]
	lea	rsi, [rsi]
	call	re_node_set_init_union
	mov	rsp, rsp
	mov	dword ptr [rsp + 0x34], eax
	lea	rdi, [rdi]
	test	eax, eax
	je	.label_1586
	mov	rbp, rbp
	jmp	.label_1587
.label_1590:
	mov	rax, qword ptr [rdx + 0x10]
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x20], rax
	movups	xmm0, xmmword ptr [rdx]
	movaps	xmmword ptr [rsp + 0x10], xmm0
.label_1586:
	lea	rdi, [rdi]
	lea	rsi, [r12 - 1]
	mov	edx, dword ptr [r15 + 0xa0]
	mov	rdi, r15
	call	re_string_context_at
	lea	rdi, [rsp + 0x34]
	mov	rbp, rbp
	mov	rsi, qword ptr [rsp + 8]
	lea	rdx, [rsp + 0x10]
	nop	
	mov	ecx, eax
	call	re_acquire_state_context
	test	rbx, rbx
	nop	
	mov	rcx, qword ptr [r15 + 0xb8]
	mov	rsp, rsp
	mov	qword ptr [rcx + r12*8], rax
	mov	rbp, rbp
	je	.label_1593
	mov	rsp, rsp
	mov	rdi, qword ptr [rsp + 0x20]
	nop	
	call	free
.label_1593:
	mov	rax, qword ptr [r15 + 0xb8]
	lea	rdi, [rdi]
	cmp	qword ptr [rax + r12*8], 0
	mov	r12, rbp
	mov	rsp, rsp
	jne	.label_1584
	mov	rsp, rsp
	mov	eax, dword ptr [rsp + 0x34]
	test	eax, eax
	jne	.label_1587
	nop	word ptr cs:[rax + rax]
.label_1584:
	inc	r13
	lea	rdi, [rdi]
	xor	eax, eax
	cmp	r13, qword ptr [r12 + 0x10]
	lea	rsi, [rsi]
	jl	.label_1589
.label_1587:
	mov	rbp, rbp
	add	rsp, 0x38
	mov	rsp, rsp
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	mov	rsp, rsp
	pop	rbp
	lea	rsi, [rsi]
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x417150

	.globl build_trtable
	.type build_trtable, @function
build_trtable:
	lea	rsi, [rsi]
	push	rbp
	nop	
	mov	rbp, rsp
	push	r15
	mov	rsp, rsp
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x98
	lea	rdi, [rdi]
	mov	rbx, rsi
	mov	rbp, rbp
	mov	r14, rdi
	mov	edi, 0x3800
	call	malloc
	mov	r15, rax
	mov	qword ptr [rbp - 0x80], r15
	test	r15, r15
	mov	rbp, rbp
	je	.label_1620
	lea	rsi, [rsi]
	lea	rcx, [r15 + 0x1800]
	mov	qword ptr [rbp - 0x90], rcx
	lea	r13, [rbx + 0x58]
	lea	rsi, [rsi]
	xorps	xmm0, xmm0
	movups	xmmword ptr [rbx + 0x58], xmm0
	mov	rsp, rsp
	mov	rdi, r14
	lea	rdi, [rdi]
	mov	rsi, rbx
	nop	
	mov	qword ptr [rbp - 0xb8], rbx
	lea	rsi, [rsi]
	mov	rdx, r15
	call	group_nodes_into_DFAstates
	mov	r12, rax
	test	r12, r12
	jle	.label_1630
	lea	rsi, [r12 + 1]
	mov	rsp, rsp
	lea	rdi, [rbp - 0x48]
	mov	rsp, rsp
	call	re_node_set_alloc
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x2c], eax
	lea	rsi, [rsi]
	movabs	rcx, 0xaaaaaaaaaaaa855
	cmp	r12, rcx
	ja	.label_1595
	test	eax, eax
	lea	rdi, [rdi]
	jne	.label_1595
	nop	
	lea	rax, [r12*8]
	mov	rbp, rbp
	lea	rdi, [rax + rax*2]
	lea	rax, [rax + rax*2 + 0x3800]
	mov	rsp, rsp
	cmp	rax, 0xfbf
	mov	rsp, rsp
	ja	.label_1601
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0xc0], r13
	mov	rax, rsp
	mov	rbp, rbp
	add	rdi, 0xf
	mov	rbp, rbp
	and	rdi, 0xfffffffffffffff0
	lea	rdi, [rdi]
	sub	rax, rdi
	mov	rsp, rax
	mov	dword ptr [rbp - 0xa4], 0
	jmp	.label_1605
.label_1601:
	call	malloc
	test	rax, rax
	je	.label_1595
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0xc0], r13
	nop	
	mov	cl, 1
	mov	dword ptr [rbp - 0xa4], ecx
.label_1605:
	mov	qword ptr [rbp - 0x88], rax
	lea	rax, [rax + r12*8]
	mov	qword ptr [rbp - 0x98], rax
	lea	rax, [rax + r12*8]
	mov	qword ptr [rbp - 0xa0], rax
	lea	rdi, [rdi]
	lea	rdi, [rbp - 0x70]
	nop	
	call	bitset_empty
	xor	r13d, r13d
	mov	rsp, rsp
	xor	eax, eax
	mov	rsp, rsp
	mov	qword ptr [rbp - 0xb0], rax
.label_1629:
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x78], r13
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x40], 0
	mov	rsp, rsp
	lea	rax, [r13 + r13*2]
	cmp	qword ptr [r15 + rax*8 + 8], 0
	nop	
	mov	rbx, r14
	jle	.label_1628
	nop	
	mov	rcx, qword ptr [rbp - 0x80]
	lea	rsi, [rsi]
	lea	r14, [rcx + rax*8 + 8]
	lea	rdi, [rdi]
	mov	r13, qword ptr [rcx + rax*8 + 0x10]
	lea	rdi, [rdi]
	xor	r15d, r15d
	nop	dword ptr [rax]
.label_1610:
	mov	rax, qword ptr [r13 + r15*8]
	mov	rcx, qword ptr [rbx + 0x18]
	mov	rsp, rsp
	mov	rax, qword ptr [rcx + rax*8]
	nop	
	cmp	rax, -1
	nop	
	je	.label_1596
	mov	rbp, rbp
	mov	rcx, qword ptr [rbx + 0x30]
	lea	rax, [rax + rax*2]
	mov	rbp, rbp
	lea	rsi, [rcx + rax*8]
	lea	rdi, [rbp - 0x48]
	lea	rsi, [rsi]
	call	re_node_set_merge
	mov	dword ptr [rbp - 0x2c], eax
	test	eax, eax
	lea	rdi, [rdi]
	jne	.label_1602
.label_1596:
	lea	rdi, [rdi]
	inc	r15
	cmp	r15, qword ptr [r14]
	lea	rsi, [rsi]
	jl	.label_1610
.label_1628:
	xor	ecx, ecx
	lea	rdi, [rbp - 0x2c]
	mov	rbp, rbp
	mov	rsi, rbx
	lea	rdx, [rbp - 0x48]
	call	re_acquire_state_context
	mov	rsi, rbx
	mov	rcx, qword ptr [rbp - 0x88]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x78]
	mov	qword ptr [rcx + rdx*8], rax
	mov	rsp, rsp
	test	rax, rax
	jne	.label_1616
	mov	ecx, dword ptr [rbp - 0x2c]
	test	ecx, ecx
	mov	rbp, rbp
	jne	.label_1602
.label_1616:
	lea	rdi, [rdi]
	cmp	byte ptr [rax + 0x68], 0
	mov	rsp, rsp
	js	.label_1624
	nop	
	mov	rcx, qword ptr [rbp - 0x98]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x78]
	mov	qword ptr [rcx + rdx*8], rax
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x88]
	mov	rax, qword ptr [rax + rdx*8]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0xa0]
	mov	rsp, rsp
	mov	qword ptr [rcx + rdx*8], rax
	nop	
	mov	r13, rdx
	jmp	.label_1622
	nop	dword ptr [rax]
.label_1624:
	lea	rsi, [rsi]
	mov	ecx, 1
	lea	rdi, [rbp - 0x2c]
	mov	rbp, rbp
	lea	rdx, [rbp - 0x48]
	mov	rbp, rbp
	mov	rbx, rsi
	call	re_acquire_state_context
	mov	rsi, rbx
	mov	rcx, qword ptr [rbp - 0x98]
	mov	rdx, qword ptr [rbp - 0x78]
	mov	qword ptr [rcx + rdx*8], rax
	mov	rbp, rbp
	test	rax, rax
	jne	.label_1611
	nop	
	mov	ecx, dword ptr [rbp - 0x2c]
	test	ecx, ecx
	jne	.label_1602
.label_1611:
	mov	rcx, qword ptr [rbp - 0x88]
	mov	rbx, qword ptr [rbp - 0x78]
	cmp	qword ptr [rcx + rbx*8], rax
	mov	rbp, rbp
	je	.label_1604
	mov	rsp, rsp
	mov	al, 1
	nop	
	cmp	dword ptr [rsi + 0xb4], 1
	jg	.label_1625
	nop	
	mov	rax, qword ptr [rbp - 0xb0]
.label_1625:
	mov	qword ptr [rbp - 0xb0], rax
.label_1604:
	lea	rdi, [rdi]
	mov	ecx, 2
	lea	rdi, [rbp - 0x2c]
	mov	r14, rsi
	lea	rdx, [rbp - 0x48]
	call	re_acquire_state_context
	mov	rcx, qword ptr [rbp - 0xa0]
	mov	qword ptr [rcx + rbx*8], rax
	lea	rdi, [rdi]
	mov	r13, rbx
	mov	rsp, rsp
	test	rax, rax
	nop	
	jne	.label_1619
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x2c]
	test	eax, eax
	lea	rsi, [rsi]
	mov	rsi, r14
	je	.label_1622
	jmp	.label_1602
.label_1619:
	mov	rsi, r14
.label_1622:
	mov	r14, rsi
	mov	rsi, r13
	shl	rsi, 5
	mov	rbx, qword ptr [rbp - 0x90]
	mov	rsp, rsp
	add	rsi, rbx
	lea	rdi, [rbp - 0x70]
	nop	
	call	bitset_merge
	lea	rdi, [rdi]
	inc	r13
	cmp	r13, r12
	mov	r15, qword ptr [rbp - 0x80]
	jl	.label_1629
	mov	rax, qword ptr [rbp - 0xb0]
	lea	rsi, [rsi]
	and	al, 1
	mov	rbp, rbp
	jne	.label_1633
	mov	rbp, rbp
	mov	qword ptr [rbp - 0xb0], rax
	mov	edi, 8
	nop	
	mov	esi, 0x100
	lea	rsi, [rsi]
	call	rpl_calloc
	mov	rbp, rbp
	mov	r15, rax
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0xc0]
	mov	qword ptr [rax], r15
	mov	rbp, rbp
	test	r15, r15
	mov	r11, r14
	mov	rsp, rsp
	je	.label_1602
	nop	
	mov	r13, qword ptr [rbp - 0x88]
	lea	rdi, [rdi]
	lea	r10, [r13 - 8]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x80]
	lea	rbx, [rax + 0x1800]
	xor	r8d, r8d
	nop	
	xor	r9d, r9d
	nop	
.label_1632:
	mov	rdi, qword ptr [rbp + r9*8 - 0x70]
	mov	rbp, rbp
	test	rdi, rdi
	lea	rsi, [rsi]
	je	.label_1612
	lea	rsi, [rsi]
	mov	rdx, r8
	mov	rsp, rsp
	mov	esi, 1
	jmp	.label_1615
.label_1614:
	mov	rsp, rsp
	add	rax, 8
	test	qword ptr [rcx], rsi
	nop	
	lea	rcx, [rcx + 0x20]
	lea	rdi, [rdi]
	je	.label_1614
	test	qword ptr [r11 + r9*8 + 0xb8], rsi
	mov	rsp, rsp
	je	.label_1621
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax + r12*8]
	nop	
	jmp	.label_1627
.label_1621:
	mov	rax, qword ptr [rax]
.label_1627:
	mov	qword ptr [r15 + rdx*8], rax
	jmp	.label_1598
	nop	word ptr cs:[rax + rax]
.label_1615:
	test	dil, 1
	mov	rcx, rbx
	mov	rax, r10
	jne	.label_1614
.label_1598:
	add	rsi, rsi
	nop	
	shr	rdi, 1
	inc	rdx
	lea	rsi, [rsi]
	test	rdi, rdi
	nop	
	jne	.label_1615
.label_1612:
	inc	r9
	mov	rbp, rbp
	add	r8, 0x40
	lea	rdi, [rdi]
	add	rbx, 8
	mov	rsp, rsp
	cmp	r9, 4
	lea	rdi, [rdi]
	jne	.label_1632
.label_1606:
	mov	rsp, rsp
	mov	r14, r15
	lea	rdi, [rbp - 0x70]
	mov	rbp, rbp
	mov	esi, 0xa
	nop	
	call	bitset_contain
	nop	
	test	al, al
	je	.label_1600
	test	r12, r12
	jle	.label_1600
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x80]
	lea	rdi, [rdi]
	lea	r15, [rax + 0x1800]
	lea	rdi, [rdi]
	xor	ebx, ebx
.label_1608:
	mov	esi, 0xa
	mov	rdi, r15
	nop	
	call	bitset_contain
	test	al, al
	jne	.label_1607
	nop	
	inc	rbx
	add	r15, 0x20
	cmp	rbx, r12
	jl	.label_1608
	nop	
	jmp	.label_1600
.label_1620:
	lea	rsi, [rsi]
	xor	eax, eax
	jmp	.label_1609
.label_1630:
	mov	rdi, r15
	lea	rsi, [rsi]
	call	free
	test	r12, r12
	lea	rdi, [rdi]
	je	.label_1617
	mov	rsp, rsp
	xor	eax, eax
	jmp	.label_1609
.label_1617:
	mov	edi, 8
	lea	rsi, [rsi]
	mov	esi, 0x100
	mov	rbp, rbp
	call	rpl_calloc
	mov	qword ptr [r13], rax
	test	rax, rax
	setne	al
	jmp	.label_1609
.label_1607:
	lea	rdi, [rdi]
	mov	rax, r12
	lea	rdi, [rdi]
	shl	rax, 4
	lea	rsi, [rsi]
	add	rax, r13
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0xb0]
	test	cl, cl
	mov	rcx, qword ptr [rax + rbx*8]
	mov	qword ptr [r14 + 0x50], rcx
	mov	rbp, rbp
	je	.label_1600
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax + rbx*8]
	mov	qword ptr [r14 + 0x850], rax
.label_1600:
	mov	eax, dword ptr [rbp - 0xa4]
	lea	rdi, [rdi]
	test	al, al
	lea	rdi, [rdi]
	je	.label_1634
	mov	rdi, r13
	call	free
.label_1634:
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rsp, rsp
	call	free
	nop	
	test	r12, r12
	lea	rdi, [rdi]
	jle	.label_1597
	mov	rbx, qword ptr [rbp - 0x80]
	lea	rdi, [rdi]
	add	rbx, 0x10
	nop	word ptr cs:[rax + rax]
.label_1613:
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbx]
	call	free
	lea	rdi, [rdi]
	add	rbx, 0x18
	dec	r12
	jne	.label_1613
.label_1597:
	mov	rdi, qword ptr [rbp - 0x80]
	lea	rsi, [rsi]
	call	free
	mov	al, 1
	jmp	.label_1609
.label_1633:
	mov	qword ptr [rbp - 0xb0], rax
	mov	edi, 8
	mov	esi, 0x200
	call	rpl_calloc
	mov	r15, rax
	mov	rax, qword ptr [rbp - 0xb8]
	lea	rdi, [rdi]
	mov	qword ptr [rax + 0x60], r15
	nop	
	test	r15, r15
	mov	rbp, rbp
	je	.label_1602
	mov	r13, qword ptr [rbp - 0x88]
	lea	r10, [r13 - 8]
	mov	rsp, rsp
	xor	r8d, r8d
	xor	r9d, r9d
.label_1603:
	mov	rsi, qword ptr [rbp + r9*8 - 0x70]
	mov	rsp, rsp
	test	rsi, rsi
	lea	rdi, [rdi]
	mov	rdi, r8
	lea	rdi, [rdi]
	mov	ecx, 1
	mov	rbp, rbp
	jne	.label_1599
	mov	rsp, rsp
	jmp	.label_1626
	nop	word ptr cs:[rax + rax]
.label_1594:
	add	rax, 8
	test	qword ptr [rdx], rcx
	nop	
	lea	rdx, [rdx + 0x20]
	je	.label_1594
	nop	
	mov	rdx, qword ptr [rax]
	lea	rsi, [rsi]
	mov	qword ptr [r15 + rdi*8], rdx
	mov	rax, qword ptr [rax + r12*8]
	mov	qword ptr [r15 + rdi*8 + 0x800], rax
	nop	
	jmp	.label_1631
	nop	dword ptr [rax + rax]
.label_1599:
	lea	rdi, [rdi]
	test	sil, 1
	nop	
	mov	rdx, rbx
	lea	rdi, [rdi]
	mov	rax, r10
	lea	rsi, [rsi]
	jne	.label_1594
.label_1631:
	lea	rsi, [rsi]
	add	rcx, rcx
	mov	rbp, rbp
	shr	rsi, 1
	inc	rdi
	mov	rbp, rbp
	test	rsi, rsi
	lea	rdi, [rdi]
	jne	.label_1599
.label_1626:
	inc	r9
	lea	rsi, [rsi]
	add	r8, 0x40
	add	rbx, 8
	cmp	r9, 4
	jne	.label_1603
	mov	rsp, rsp
	jmp	.label_1606
.label_1602:
	mov	eax, dword ptr [rbp - 0xa4]
	nop	
	test	al, al
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x88]
	mov	r15, qword ptr [rbp - 0x80]
	nop	
	je	.label_1595
	call	free
.label_1595:
	mov	r14, r15
	mov	rdi, qword ptr [rbp - 0x38]
	call	free
	test	r12, r12
	lea	rdi, [rdi]
	jle	.label_1618
	mov	rbp, rbp
	mov	rbx, r14
	add	rbx, 0x10
	nop	dword ptr [rax]
.label_1623:
	mov	rdi, qword ptr [rbx]
	mov	rsp, rsp
	call	free
	add	rbx, 0x18
	mov	rbp, rbp
	dec	r12
	nop	
	jne	.label_1623
.label_1618:
	mov	rsp, rsp
	mov	rdi, r14
	lea	rsi, [rsi]
	call	free
	mov	rsp, rsp
	xor	eax, eax
.label_1609:
	lea	rdi, [rdi]
	lea	rsp, [rbp - 0x28]
	pop	rbx
	mov	rsp, rsp
	pop	r12
	mov	rsp, rsp
	pop	r13
	pop	r14
	lea	rsi, [rsi]
	pop	r15
	mov	rsp, rsp
	pop	rbp
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4178e0

	.globl group_nodes_into_DFAstates
	.type group_nodes_into_DFAstates, @function
group_nodes_into_DFAstates:
	push	rbp
	lea	rsi, [rsi]
	push	r15
	mov	rbp, rbp
	push	r14
	mov	rsp, rsp
	push	r13
	lea	rdi, [rdi]
	push	r12
	mov	rsp, rsp
	push	rbx
	sub	rsp, 0xa8
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x30], rcx
	lea	rdi, [rdi]
	mov	r14, rdx
	lea	rdi, [rdi]
	mov	rbx, rsi
	mov	qword ptr [rsp + 0x20], rbx
	nop	
	mov	rbp, rdi
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x10], rbp
	lea	rdi, [rsp + 0x80]
	lea	rsi, [rsi]
	call	bitset_empty
	mov	r8, rbp
	xor	r15d, r15d
	cmp	qword ptr [rbx + 0x10], 0
	mov	rbp, rbp
	jle	.label_1638
	lea	rdi, [rdi]
	xor	ebp, ebp
	lea	rdi, [rdi]
	xor	r15d, r15d
	nop	word ptr cs:[rax + rax]
.label_1669:
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x28], rbp
	mov	rax, qword ptr [rbx + 0x18]
	mov	rbx, qword ptr [rax + rbp*8]
	mov	rbp, rbp
	mov	r12, qword ptr [r8]
	shl	rbx, 4
	lea	rax, [r12 + rbx]
	mov	r13d, dword ptr [r12 + rbx + 8]
	lea	rdi, [rdi]
	movzx	ebp, r13b
	mov	dword ptr [rsp + 0x3c], ebp
	cmp	ebp, 1
	jne	.label_1654
	nop	
	movzx	esi, byte ptr [rax]
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x18], rax
	mov	rbp, rbp
	lea	rdi, [rsp + 0x80]
	nop	
	call	bitset_set
	jmp	.label_1651
	nop	word ptr cs:[rax + rax]
.label_1654:
	cmp	ebp, 7
	je	.label_1652
	nop	
	cmp	ebp, 5
	je	.label_1667
	cmp	ebp, 3
	lea	rsi, [rsi]
	jne	.label_1659
	mov	rbp, rbp
	mov	rsi, qword ptr [rax]
	mov	qword ptr [rsp + 0x18], rax
	mov	rbp, rbp
	lea	rdi, [rsp + 0x80]
	nop	
	call	bitset_merge
	jmp	.label_1651
.label_1652:
	mov	qword ptr [rsp + 0x18], rax
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x88], -1
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x80], -1
	test	byte ptr [r8 + 0xd8], 0x40
	jne	.label_1670
	mov	rbp, rbp
	mov	esi, 0xa
	mov	rbp, rbp
	lea	rdi, [rsp + 0x80]
	nop	
	mov	rbp, r8
	lea	rsi, [rsi]
	call	bitset_clear
	mov	r8, rbp
	mov	rsp, rsp
	mov	ebp, dword ptr [rsp + 0x3c]
.label_1670:
	mov	rsp, rsp
	cmp	byte ptr [r8 + 0xd8], 0
	mov	qword ptr [rsp + 0x10], r8
	jns	.label_1651
	mov	rbp, rbp
	jmp	.label_1656
.label_1667:
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x18], rax
	lea	rsi, [rsi]
	cmp	dword ptr [r8 + 0xb4], 2
	jl	.label_1658
	mov	rsi, qword ptr [r8 + 0x78]
	lea	rdi, [rsp + 0x80]
	mov	rbp, r8
	call	bitset_merge
	jmp	.label_1663
.label_1658:
	lea	rdi, [rdi]
	lea	rdi, [rsp + 0x80]
	mov	rbp, r8
	call	bitset_set_all
.label_1663:
	test	byte ptr [rbp + 0xd8], 0x40
	mov	rax, rbp
	jne	.label_1666
	mov	esi, 0xa
	lea	rdi, [rsp + 0x80]
	mov	rbp, rax
	lea	rsi, [rsi]
	call	bitset_clear
	mov	rsp, rsp
	mov	rax, rbp
.label_1666:
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x10], rax
	mov	rsp, rsp
	cmp	byte ptr [rax + 0xd8], 0
	mov	ebp, dword ptr [rsp + 0x3c]
	mov	rbp, rbp
	jns	.label_1651
.label_1656:
	xor	esi, esi
	lea	rdi, [rsp + 0x80]
	lea	rdi, [rdi]
	call	bitset_clear
	nop	word ptr cs:[rax + rax]
.label_1651:
	shr	r13d, 8
	nop	
	mov	eax, r13d
	and	eax, 0x3ff
	je	.label_1640
	test	r13b, 0x20
	mov	rbp, rbp
	je	.label_1644
	nop	
	mov	dword ptr [rsp + 0x3c], ebp
	mov	esi, 0xa
	mov	rbp, rbp
	lea	rbp, [rsp + 0x80]
	mov	rsp, rsp
	mov	rdi, rbp
	mov	rsp, rsp
	call	bitset_contain
	lea	rsi, [rsi]
	mov	byte ptr [rsp + 8], al
	mov	rdi, rbp
	call	bitset_empty
	cmp	byte ptr [rsp + 8], 0
	je	.label_1653
	mov	rbp, rbp
	mov	esi, 0xa
	mov	rdi, rbp
	mov	rbp, rbp
	call	bitset_set
	mov	ebp, dword ptr [rsp + 0x3c]
.label_1644:
	test	r13b, r13b
	js	.label_1660
	lea	rax, [r12 + rbx + 8]
	test	r13b, 4
	mov	rbp, rbp
	mov	r8, qword ptr [rsp + 0x10]
	nop	
	je	.label_1661
	cmp	ebp, 1
	lea	rdi, [rsp + 0x80]
	lea	rsi, [rsi]
	jne	.label_1664
	test	byte ptr [rax + 2], 0x40
	jne	.label_1664
	mov	rbp, rbp
	mov	rbp, r8
	call	bitset_empty
	lea	rsi, [rsi]
	mov	r8, rbp
	jmp	.label_1659
.label_1664:
	cmp	dword ptr [r8 + 0xb4], 2
	lea	rsi, [rsi]
	mov	ecx, 0
	mov	rbp, rbp
	mov	edx, 0
	jl	.label_1649
	lea	rsi, [rsi]
	mov	rdx, qword ptr [r8 + 0x78]
	lea	rsi, [rsi]
	xor	ecx, ecx
	xor	esi, esi
	nop	word ptr cs:[rax + rax]
.label_1635:
	mov	rdi, qword ptr [rdx + rsi*8]
	not	rdi
	or	rdi, qword ptr [r8 + rsi*8 + 0xb8]
	and	rdi, qword ptr [rsp + rsi*8 + 0x80]
	mov	qword ptr [rsp + rsi*8 + 0x80], rdi
	or	rcx, rdi
	nop	
	inc	rsi
	lea	rsi, [rsi]
	cmp	rsi, 4
	mov	rbp, rbp
	jne	.label_1635
	mov	rbp, rbp
	jmp	.label_1647
	nop	word ptr [rax + rax]
.label_1649:
	nop	
	mov	rsi, qword ptr [rsp + rdx*8 + 0x80]
	lea	rsi, [rsi]
	and	rsi, qword ptr [r8 + rdx*8 + 0xb8]
	mov	rsp, rsp
	mov	qword ptr [rsp + rdx*8 + 0x80], rsi
	lea	rdi, [rdi]
	or	rcx, rsi
	lea	rdi, [rdi]
	inc	rdx
	lea	rdi, [rdi]
	cmp	rdx, 4
	lea	rdi, [rdi]
	jne	.label_1649
.label_1647:
	test	rcx, rcx
	mov	rbp, rbp
	je	.label_1659
.label_1661:
	mov	rsp, rsp
	test	r13b, 8
	nop	
	je	.label_1640
	lea	rsi, [rsi]
	cmp	ebp, 1
	jne	.label_1662
	test	byte ptr [rax + 2], 0x40
	jne	.label_1660
.label_1662:
	mov	rdi, qword ptr [rsp + 0x10]
	lea	rsi, [rsi]
	cmp	dword ptr [rdi + 0xb4], 2
	mov	eax, 0
	mov	ecx, 0
	jl	.label_1655
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rdi + 0x78]
	mov	rsp, rsp
	xor	eax, eax
	xor	edx, edx
	nop	dword ptr [rax]
.label_1668:
	mov	rsi, qword ptr [rcx + rdx*8]
	and	rsi, qword ptr [rdi + rdx*8 + 0xb8]
	nop	
	not	rsi
	mov	rsp, rsp
	and	rsi, qword ptr [rsp + rdx*8 + 0x80]
	nop	
	mov	qword ptr [rsp + rdx*8 + 0x80], rsi
	lea	rdi, [rdi]
	or	rax, rsi
	inc	rdx
	nop	
	cmp	rdx, 4
	jne	.label_1668
	jmp	.label_1637
	nop	word ptr cs:[rax + rax]
.label_1655:
	mov	rsp, rsp
	mov	rdx, qword ptr [rdi + rcx*8 + 0xb8]
	not	rdx
	lea	rsi, [rsi]
	and	rdx, qword ptr [rsp + rcx*8 + 0x80]
	mov	qword ptr [rsp + rcx*8 + 0x80], rdx
	lea	rsi, [rsi]
	or	rax, rdx
	inc	rcx
	cmp	rcx, 4
	jne	.label_1655
.label_1637:
	test	rax, rax
	lea	rdi, [rdi]
	je	.label_1653
	nop	dword ptr [rax]
.label_1640:
	test	r15, r15
	jle	.label_1650
	mov	rbx, qword ptr [rsp + 0x30]
	nop	
	xor	r12d, r12d
	nop	word ptr cs:[rax + rax]
.label_1642:
	cmp	ebp, 1
	mov	rcx, rbx
	nop	
	mov	eax, 0
	mov	edx, 0
	mov	rbp, rbp
	jne	.label_1641
	mov	rdi, r12
	shl	rdi, 5
	add	rdi, qword ptr [rsp + 0x30]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp + 0x18]
	movzx	esi, byte ptr [rax]
	mov	rbp, rbp
	call	bitset_contain
	nop	
	test	al, al
	mov	rcx, rbx
	lea	rdi, [rdi]
	mov	eax, 0
	mov	edx, 0
	lea	rdi, [rdi]
	je	.label_1665
	nop	word ptr cs:[rax + rax]
.label_1641:
	mov	rsi, qword ptr [rcx]
	mov	rbp, rbp
	and	rsi, qword ptr [rsp + rdx*8 + 0x80]
	mov	qword ptr [rsp + rdx*8 + 0x60], rsi
	or	rax, rsi
	inc	rdx
	add	rcx, 8
	cmp	rdx, 4
	lea	rsi, [rsi]
	jne	.label_1641
	test	rax, rax
	mov	rbp, rbp
	mov	ebp, 0
	mov	rsp, rsp
	mov	eax, 0
	mov	ecx, 0
	je	.label_1665
	nop	word ptr cs:[rax + rax]
.label_1643:
	mov	rdx, qword ptr [rsp + rcx*8 + 0x80]
	nop	
	not	rdx
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbx + rcx*8]
	lea	rdi, [rdi]
	and	rdx, rsi
	mov	rsp, rsp
	mov	qword ptr [rsp + rcx*8 + 0x40], rdx
	mov	rbp, rbp
	or	rax, rdx
	not	rsi
	and	rsi, qword ptr [rsp + rcx*8 + 0x80]
	mov	rbp, rbp
	mov	qword ptr [rsp + rcx*8 + 0x80], rsi
	mov	rbp, rbp
	or	rbp, rsi
	nop	
	inc	rcx
	nop	
	cmp	rcx, 4
	jne	.label_1643
	mov	rbp, rbp
	test	rax, rax
	je	.label_1657
	nop	
	mov	rdi, r15
	shl	rdi, 5
	lea	rsi, [rsi]
	mov	r13, qword ptr [rsp + 0x30]
	add	rdi, r13
	lea	rsi, [rsp + 0x40]
	call	bitset_copy
	lea	rdi, [rdi]
	mov	rdi, r12
	shl	rdi, 5
	add	rdi, r13
	lea	rsi, [rsp + 0x60]
	mov	rbp, rbp
	call	bitset_copy
	mov	rbp, rbp
	lea	rax, [r15 + r15*2]
	lea	rsi, [rsi]
	lea	rdi, [r14 + rax*8]
	lea	rax, [r12 + r12*2]
	mov	rbp, rbp
	lea	rsi, [r14 + rax*8]
	call	re_node_set_init_copy
	lea	rdi, [rdi]
	test	eax, eax
	jne	.label_1636
	inc	r15
.label_1657:
	lea	rax, [r12 + r12*2]
	nop	
	lea	rdi, [r14 + rax*8]
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 0x20]
	mov	rbp, rbp
	mov	rax, qword ptr [rax + 0x18]
	mov	rcx, qword ptr [rsp + 0x28]
	mov	rsi, qword ptr [rax + rcx*8]
	mov	rbp, rbp
	call	re_node_set_insert
	mov	rsp, rsp
	test	al, al
	mov	rsp, rsp
	je	.label_1636
	lea	rsi, [rsi]
	test	rbp, rbp
	mov	rbp, rbp
	je	.label_1645
.label_1665:
	inc	r12
	add	rbx, 0x20
	cmp	r12, r15
	mov	ebp, dword ptr [rsp + 0x3c]
	lea	rdi, [rdi]
	jl	.label_1642
	jmp	.label_1645
.label_1659:
	mov	rbp, rbp
	mov	rbx, qword ptr [rsp + 0x20]
	mov	rbp, qword ptr [rsp + 0x28]
	jmp	.label_1648
.label_1660:
	nop	
	lea	rdi, [rsp + 0x80]
	call	bitset_empty
	lea	rdi, [rdi]
	jmp	.label_1653
.label_1650:
	xor	r12d, r12d
.label_1645:
	lea	rsi, [rsi]
	cmp	r12, r15
	nop	
	jne	.label_1653
	mov	rdi, r15
	mov	rbp, rbp
	shl	rdi, 5
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0x30]
	add	rdi, rax
	lea	rsi, [rsi]
	lea	r12, [rsp + 0x80]
	lea	rdi, [rdi]
	mov	rsi, r12
	mov	rsp, rsp
	call	bitset_copy
	lea	rdi, [rdi]
	lea	rax, [r15 + r15*2]
	lea	rdi, [rdi]
	lea	rdi, [r14 + rax*8]
	nop	
	mov	rbx, qword ptr [rsp + 0x20]
	nop	
	mov	rax, qword ptr [rbx + 0x18]
	mov	rbp, qword ptr [rsp + 0x28]
	mov	rsi, qword ptr [rax + rbp*8]
	lea	rdi, [rdi]
	call	re_node_set_init_1
	test	eax, eax
	jne	.label_1636
	inc	r15
	nop	
	mov	rdi, r12
	mov	rsp, rsp
	call	bitset_empty
	mov	r8, qword ptr [rsp + 0x10]
	jmp	.label_1648
	nop	word ptr [rax + rax]
.label_1653:
	mov	rbx, qword ptr [rsp + 0x20]
	lea	rsi, [rsi]
	mov	r8, qword ptr [rsp + 0x10]
	mov	rbp, qword ptr [rsp + 0x28]
.label_1648:
	inc	rbp
	mov	rsp, rsp
	cmp	rbp, qword ptr [rbx + 0x10]
	mov	rsp, rsp
	jl	.label_1669
	jmp	.label_1638
.label_1636:
	mov	rbp, rbp
	test	r15, r15
	jle	.label_1639
	add	r14, 0x10
	nop	word ptr cs:[rax + rax]
.label_1646:
	mov	rsp, rsp
	mov	rdi, qword ptr [r14]
	lea	rdi, [rdi]
	call	free
	nop	
	add	r14, 0x18
	mov	rbp, rbp
	dec	r15
	nop	
	jne	.label_1646
.label_1639:
	mov	r15, -1
.label_1638:
	mov	rax, r15
	mov	rbp, rbp
	add	rsp, 0xa8
	pop	rbx
	pop	r12
	pop	r13
	lea	rsi, [rsi]
	pop	r14
	pop	r15
	pop	rbp
	nop	
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x418060

	.globl bitset_empty
	.type bitset_empty, @function
bitset_empty:
	xorps	xmm0, xmm0
	nop	
	movups	xmmword ptr [rdi + 0x10], xmm0
	lea	rsi, [rsi]
	movups	xmmword ptr [rdi], xmm0
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x418070

	.globl bitset_merge
	.type bitset_merge, @function
bitset_merge:
	mov	rsp, rsp
	xor	eax, eax
	nop	word ptr cs:[rax + rax]
.label_1671:
	mov	rsp, rsp
	mov	rcx, qword ptr [rsi + rax*8]
	lea	rsi, [rsi]
	or	qword ptr [rdi + rax*8], rcx
	inc	rax
	cmp	rax, 4
	mov	rsp, rsp
	jne	.label_1671
	lea	rdi, [rdi]
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x4180a0

	.globl bitset_set_all
	.type bitset_set_all, @function
bitset_set_all:
	mov	rsp, rsp
	mov	qword ptr [rdi + 0x18], -1
	mov	qword ptr [rdi + 0x10], -1
	mov	qword ptr [rdi + 8], -1
	lea	rsi, [rsi]
	mov	qword ptr [rdi], -1
	mov	rsp, rsp
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4180d0

	.globl bitset_clear
	.type bitset_clear, @function
bitset_clear:
	lea	rdi, [rdi]
	mov	rax, -2
	mov	cl, sil
	lea	rsi, [rsi]
	rol	rax, cl
	nop	
	mov	rcx, rsi
	lea	rdi, [rdi]
	sar	rcx, 0x3f
	shr	rcx, 0x3a
	mov	rsp, rsp
	add	rcx, rsi
	mov	rbp, rbp
	sar	rcx, 6
	and	qword ptr [rdi + rcx*8], rax
	nop	
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x418110

	.globl bitset_copy
	.type bitset_copy, @function
bitset_copy:
	movups	xmm0, xmmword ptr [rsi]
	movups	xmm1, xmmword ptr [rsi + 0x10]
	movups	xmmword ptr [rdi + 0x10], xmm1
	nop	
	movups	xmmword ptr [rdi], xmm0
	ret	
	.section	.text
	.align	32
	#Procedure 0x418120

	.globl check_halt_node_context
	.type check_halt_node_context, @function
check_halt_node_context:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rdi]
	shl	rsi, 4
	mov	rbp, rbp
	mov	ecx, dword ptr [rax + rsi + 8]
	movzx	eax, cl
	cmp	eax, 2
	jne	.label_1672
	mov	rsp, rsp
	shr	ecx, 8
	mov	al, 1
	test	cx, 0x3ff
	nop	
	je	.label_1676
	mov	eax, edx
	nop	
	and	eax, 1
	jne	.label_1674
	mov	rsp, rsp
	mov	esi, ecx
	and	esi, 4
	je	.label_1674
	mov	rsp, rsp
	xor	eax, eax
	lea	rsi, [rsi]
	ret	
.label_1672:
	mov	rbp, rbp
	xor	eax, eax
	lea	rsi, [rsi]
	ret	
.label_1674:
	lea	rsi, [rsi]
	test	eax, eax
	je	.label_1675
	lea	rdi, [rdi]
	mov	eax, ecx
	and	eax, 8
	je	.label_1675
	xor	eax, eax
	ret	
.label_1675:
	nop	
	test	dl, 2
	mov	rsp, rsp
	jne	.label_1673
	mov	eax, ecx
	mov	rbp, rbp
	and	eax, 0x20
	lea	rdi, [rdi]
	je	.label_1673
	xor	eax, eax
	mov	rbp, rbp
	ret	
.label_1673:
	nop	
	and	edx, 8
	mov	rsp, rsp
	test	cl, cl
	setns	al
	lea	rdi, [rdi]
	shr	edx, 3
	or	dl, al
	mov	al, dl
.label_1676:
	nop	
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4181c0

	.globl sift_ctx_init
	.type sift_ctx_init, @function
sift_ctx_init:
	mov	rsp, rsp
	mov	qword ptr [rdi], rsi
	mov	rsp, rsp
	mov	qword ptr [rdi + 8], rdx
	lea	rdi, [rdi]
	mov	qword ptr [rdi + 0x10], rcx
	lea	rsi, [rsi]
	mov	qword ptr [rdi + 0x18], r8
	nop	
	xorps	xmm0, xmm0
	nop	
	movups	xmmword ptr [rdi + 0x20], xmm0
	mov	rsp, rsp
	mov	qword ptr [rdi + 0x30], 0
	nop	
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x418200

	.globl sift_states_backward
	.type sift_states_backward, @function
sift_states_backward:
	mov	rsp, rsp
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	lea	rsi, [rsi]
	push	rbx
	sub	rsp, 0x18
	nop	
	mov	r14, rsi
	mov	r15, rdi
	mov	rbx, qword ptr [r14 + 0x18]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [r14 + 0x10]
	lea	rdi, [rsp]
	nop	
	call	re_node_set_init_1
	mov	ebp, eax
	nop	
	test	ebp, ebp
	jne	.label_1682
	mov	rbp, rbp
	lea	rcx, [rsp]
	mov	rdi, r15
	lea	rdi, [rdi]
	mov	rsi, r14
	mov	rdx, rbx
	mov	rbp, rbp
	call	update_cur_sifted_state
	lea	rsi, [rsi]
	mov	ebp, eax
	test	ebp, ebp
	jne	.label_1678
	lea	r12, [rsp]
	xor	r13d, r13d
	nop	word ptr [rax + rax]
.label_1679:
	test	rbx, rbx
	lea	rdi, [rdi]
	jle	.label_1677
	nop	
	mov	rdi, qword ptr [r14]
	lea	rsi, [rsi]
	cmp	qword ptr [rdi + rbx*8], 0
	lea	rdi, [rdi]
	je	.label_1684
	mov	rbp, rbp
	xor	r13d, r13d
	mov	rsp, rsp
	jmp	.label_1680
	nop	dword ptr [rax + rax]
.label_1684:
	inc	r13d
.label_1680:
	lea	rdi, [rdi]
	cmp	r13d, dword ptr [r15 + 0xe0]
	jg	.label_1683
	mov	qword ptr [rsp + 8], 0
	lea	rsi, [rsi]
	mov	rax, qword ptr [r15 + 0xb8]
	cmp	qword ptr [rax + rbx*8 - 8], 0
	lea	rdi, [rdi]
	lea	rbx, [rbx - 1]
	lea	rsi, [rsi]
	je	.label_1681
	mov	rdi, r15
	mov	rsi, r14
	mov	rsp, rsp
	mov	rdx, rbx
	mov	rcx, r12
	lea	rsi, [rsi]
	call	build_sifted_states
	mov	ebp, eax
	lea	rdi, [rdi]
	test	ebp, ebp
	lea	rdi, [rdi]
	jne	.label_1678
.label_1681:
	mov	rdi, r15
	mov	rsi, r14
	lea	rsi, [rsi]
	mov	rdx, rbx
	mov	rcx, r12
	call	update_cur_sifted_state
	mov	rsp, rsp
	mov	ebp, eax
	mov	rbp, rbp
	test	ebp, ebp
	mov	rsp, rsp
	je	.label_1679
	mov	rbp, rbp
	jmp	.label_1678
.label_1677:
	mov	rbp, rbp
	xor	ebp, ebp
	jmp	.label_1678
.label_1683:
	nop	
	shl	rbx, 3
	xor	ebp, ebp
	lea	rdi, [rdi]
	xor	esi, esi
	mov	rdx, rbx
	call	memset
.label_1678:
	mov	rsp, rsp
	mov	rdi, qword ptr [rsp + 0x10]
	lea	rdi, [rdi]
	call	free
.label_1682:
	mov	eax, ebp
	add	rsp, 0x18
	mov	rbp, rbp
	pop	rbx
	mov	rbp, rbp
	pop	r12
	nop	
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	nop	
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x418370

	.globl merge_state_array
	.type merge_state_array, @function
merge_state_array:
	push	rbp
	mov	rsp, rsp
	push	r15
	nop	
	push	r14
	mov	rsp, rsp
	push	r13
	push	r12
	push	rbx
	mov	rbp, rbp
	sub	rsp, 0x28
	nop	
	mov	r14, rcx
	lea	rsi, [rsi]
	mov	r15, rdx
	nop	
	mov	rbx, rsi
	mov	r12, rdi
	xor	eax, eax
	mov	rsp, rsp
	test	r14, r14
	lea	rdi, [rdi]
	jle	.label_1688
	xor	ebp, ebp
	lea	r13, [rsp + 8]
	nop	word ptr cs:[rax + rax]
.label_1686:
	nop	
	mov	rax, qword ptr [r15 + rbp*8]
	cmp	qword ptr [rbx + rbp*8], 0
	nop	
	je	.label_1685
	test	rax, rax
	je	.label_1687
	mov	rsi, qword ptr [rbx + rbp*8]
	lea	rdi, [rdi]
	add	rsi, 8
	lea	rsi, [rsi]
	mov	rdx, qword ptr [r15 + rbp*8]
	lea	rdi, [rdi]
	add	rdx, 8
	mov	rsp, rsp
	mov	rdi, r13
	call	re_node_set_init_union
	lea	rsi, [rsi]
	mov	dword ptr [rsp + 0x24], eax
	mov	rbp, rbp
	test	eax, eax
	mov	rsp, rsp
	jne	.label_1688
	lea	rdi, [rsp + 0x24]
	mov	rsp, rsp
	mov	rsi, r12
	mov	rdx, r13
	nop	
	call	re_acquire_state
	mov	qword ptr [rbx + rbp*8], rax
	mov	rdi, qword ptr [rsp + 0x18]
	call	free
	mov	eax, dword ptr [rsp + 0x24]
	test	eax, eax
	je	.label_1687
	jmp	.label_1688
	nop	word ptr cs:[rax + rax]
.label_1685:
	lea	rdi, [rdi]
	mov	qword ptr [rbx + rbp*8], rax
.label_1687:
	mov	rsp, rsp
	inc	rbp
	xor	eax, eax
	mov	rbp, rbp
	cmp	rbp, r14
	nop	
	jl	.label_1686
.label_1688:
	add	rsp, 0x28
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	lea	rdi, [rdi]
	pop	r15
	lea	rsi, [rsi]
	pop	rbp
	lea	rdi, [rdi]
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x418480

	.globl update_cur_sifted_state
	.type update_cur_sifted_state, @function
update_cur_sifted_state:
	push	rbp
	push	r15
	mov	rbp, rbp
	push	r14
	push	r13
	mov	rsp, rsp
	push	r12
	push	rbx
	sub	rsp, 0x18
	mov	r13, rcx
	nop	
	mov	r15, rdx
	mov	rbp, rbp
	mov	rbx, rdi
	nop	
	mov	rdx, qword ptr [rbx + 0x98]
	mov	rsp, rsp
	mov	dword ptr [rsp + 0x14], 0
	mov	rax, qword ptr [rbx + 0xb8]
	mov	r14, qword ptr [rax + r15*8]
	lea	r12, [r14 + 8]
	test	r14, r14
	lea	rdi, [rdi]
	cmove	r12, r14
	cmp	qword ptr [r13 + 8], 0
	lea	rsi, [rsi]
	je	.label_1689
	test	r14, r14
	lea	rdi, [rdi]
	je	.label_1691
	mov	rdi, rdx
	mov	qword ptr [rsp + 8], rsi
	mov	rbp, rbp
	mov	rsi, r13
	mov	rbp, rbp
	mov	rbp, rdx
	mov	rbp, rbp
	mov	rdx, r12
	lea	rsi, [rsi]
	call	add_epsilon_src_nodes
	lea	rdi, [rdi]
	mov	rdx, rbp
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rsp + 8]
	mov	dword ptr [rsp + 0x14], eax
	test	eax, eax
	jne	.label_1692
	lea	rsi, [rsi]
	cmp	qword ptr [rsi + 0x28], 0
	je	.label_1691
	nop	
	lea	rcx, [rsi + 0x20]
	mov	rbp, rbp
	mov	r8, qword ptr [rbx + 0xd8]
	lea	rdi, [rdi]
	mov	rdi, rdx
	lea	rsi, [rsi]
	mov	rsi, r13
	mov	rbp, rdx
	mov	rsp, rsp
	mov	rdx, r12
	mov	r9, r15
	lea	rdi, [rdi]
	call	check_subexp_limits
	mov	rdx, rbp
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rsp + 8]
	mov	dword ptr [rsp + 0x14], eax
	lea	rdi, [rdi]
	test	eax, eax
	mov	rsp, rsp
	jne	.label_1692
.label_1691:
	lea	rdi, [rsp + 0x14]
	mov	rbp, rsi
	mov	rsi, rdx
	lea	rsi, [rsi]
	mov	rdx, r13
	call	re_acquire_state
	mov	rsp, rsp
	mov	rsi, rbp
	mov	rcx, qword ptr [rsi]
	mov	qword ptr [rcx + r15*8], rax
	mov	rsp, rsp
	mov	eax, dword ptr [rsp + 0x14]
	lea	rsi, [rsi]
	test	eax, eax
	lea	rdi, [rdi]
	je	.label_1693
	lea	rsi, [rsi]
	jmp	.label_1692
.label_1689:
	mov	rax, qword ptr [rsi]
	mov	rbp, rbp
	mov	qword ptr [rax + r15*8], 0
.label_1693:
	test	r14, r14
	je	.label_1690
	mov	rax, qword ptr [rbx + 0xb8]
	mov	rax, qword ptr [rax + r15*8]
	lea	rsi, [rsi]
	test	byte ptr [rax + 0x68], 0x40
	je	.label_1690
	mov	rdi, rbx
	lea	rdi, [rdi]
	mov	rdx, r15
	mov	rcx, r12
	call	sift_states_bkref
	mov	rsp, rsp
	mov	dword ptr [rsp + 0x14], eax
	test	eax, eax
	jne	.label_1692
.label_1690:
	xor	eax, eax
.label_1692:
	lea	rdi, [rdi]
	add	rsp, 0x18
	pop	rbx
	pop	r12
	pop	r13
	nop	
	pop	r14
	pop	r15
	pop	rbp
	mov	rsp, rsp
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x418610

	.globl build_sifted_states
	.type build_sifted_states, @function
build_sifted_states:
	mov	rbp, rbp
	push	rbp
	lea	rsi, [rsi]
	push	r15
	push	r14
	mov	rbp, rbp
	push	r13
	push	r12
	mov	rbp, rbp
	push	rbx
	mov	rsp, rsp
	sub	rsp, 0x28
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x10], rcx
	mov	rsp, rsp
	mov	rbx, rdx
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x18], rsi
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x20], rdi
	mov	rax, qword ptr [rdi + 0xb8]
	nop	
	mov	r14, qword ptr [rax + rbx*8]
	nop	
	xor	eax, eax
	cmp	qword ptr [r14 + 0x28], 0
	jle	.label_1695
	nop	
	mov	rax, qword ptr [rsp + 0x20]
	mov	r12, qword ptr [rax + 0x98]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0x18]
	mov	rsp, rsp
	lea	rax, [rax + 0x20]
	nop	
	mov	qword ptr [rsp + 8], rax
	mov	rsp, rsp
	xor	r15d, r15d
	nop	dword ptr [rax]
.label_1697:
	mov	rax, qword ptr [r14 + 0x30]
	mov	rsp, rsp
	mov	rbp, qword ptr [rax + r15*8]
	mov	rsp, rsp
	mov	rax, qword ptr [r12]
	nop	
	mov	r13, rbp
	shl	r13, 4
	lea	rdi, [rdi]
	test	byte ptr [rax + r13 + 0xa], 0x10
	lea	rdi, [rdi]
	je	.label_1694
	mov	rsi, qword ptr [rsp + 0x18]
	mov	r8, qword ptr [rsi + 0x18]
	mov	rdi, qword ptr [rsp + 0x20]
	lea	rsi, [rsi]
	mov	rdx, rbp
	mov	rsp, rsp
	mov	rcx, rbx
	call	sift_states_iter_mb
	test	eax, eax
	mov	rsp, rsp
	jne	.label_1698
.label_1694:
	mov	rbp, rbp
	add	r13, qword ptr [r12]
	mov	rsp, rsp
	mov	rdi, qword ptr [rsp + 0x20]
	mov	rbp, rbp
	mov	rsi, r13
	mov	rdx, rbx
	lea	rdi, [rdi]
	call	check_node_accept
	lea	rdi, [rdi]
	test	al, al
	lea	rsi, [rsi]
	je	.label_1696
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0x18]
	nop	
	mov	rax, qword ptr [rax]
	mov	rbp, rbp
	mov	rdi, qword ptr [rax + rbx*8 + 8]
	lea	rsi, [rsi]
	test	rdi, rdi
	lea	rdi, [rdi]
	je	.label_1696
	add	rdi, 8
	mov	rax, qword ptr [r12 + 0x18]
	mov	rbp, rbp
	mov	rsi, qword ptr [rax + rbp*8]
	mov	rsp, rsp
	call	re_node_set_contains
	mov	rcx, rax
	mov	rbp, rbp
	mov	eax, 1
	test	rcx, rcx
	lea	rdi, [rdi]
	je	.label_1696
.label_1698:
	mov	rcx, qword ptr [rsp + 0x18]
	lea	rdi, [rdi]
	cmp	qword ptr [rcx + 0x28], 0
	lea	rdi, [rdi]
	je	.label_1699
	movsxd	rcx, eax
	add	rcx, rbx
	nop	
	mov	rax, qword ptr [r12 + 0x18]
	mov	rsp, rsp
	mov	rdx, qword ptr [rax + rbp*8]
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rsp + 0x20]
	mov	rsi, qword ptr [rsp + 8]
	lea	rdi, [rdi]
	mov	r8, rbp
	mov	r9, rbx
	call	check_dst_limits
	test	al, al
	jne	.label_1696
.label_1699:
	mov	rdi, qword ptr [rsp + 0x10]
	mov	rsi, rbp
	call	re_node_set_insert
	mov	cl, al
	mov	eax, 0xc
	nop	
	test	cl, cl
	je	.label_1695
.label_1696:
	inc	r15
	mov	rbp, rbp
	xor	eax, eax
	cmp	r15, qword ptr [r14 + 0x28]
	lea	rdi, [rdi]
	jl	.label_1697
.label_1695:
	add	rsp, 0x28
	lea	rsi, [rsi]
	pop	rbx
	pop	r12
	lea	rdi, [rdi]
	pop	r13
	lea	rsi, [rsi]
	pop	r14
	pop	r15
	nop	
	pop	rbp
	mov	rbp, rbp
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4187f0

	.globl add_epsilon_src_nodes
	.type add_epsilon_src_nodes, @function
add_epsilon_src_nodes:
	push	rbp
	lea	rsi, [rsi]
	push	r15
	nop	
	push	r14
	push	r13
	nop	
	push	r12
	lea	rdi, [rdi]
	push	rbx
	push	rax
	mov	rbp, rbp
	mov	r14, rdx
	lea	rsi, [rsi]
	mov	rbx, rsi
	mov	rsp, rsp
	mov	r15, rdi
	lea	rsi, [rsi]
	mov	dword ptr [rsp + 4], 0
	nop	
	lea	rdi, [rsp + 4]
	nop	
	mov	rsi, r15
	nop	
	mov	rdx, rbx
	call	re_acquire_state
	mov	r12, rax
	mov	r13d, dword ptr [rsp + 4]
	test	r13d, r13d
	mov	rbp, rbp
	jne	.label_1700
	mov	rax, r12
	lea	rsi, [rsi]
	add	r12, 0x38
	lea	rdi, [rdi]
	cmp	qword ptr [rax + 0x38], 0
	jne	.label_1701
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbx + 8]
	mov	rdi, r12
	mov	rbp, rbp
	call	re_node_set_alloc
	lea	rdi, [rdi]
	mov	dword ptr [rsp + 4], eax
	mov	r13d, 0xc
	lea	rsi, [rsi]
	test	eax, eax
	lea	rsi, [rsi]
	jne	.label_1700
	cmp	qword ptr [rbx + 8], 0
	jle	.label_1701
	xor	ebp, ebp
	nop	dword ptr [rax]
.label_1703:
	mov	rax, qword ptr [r15 + 0x38]
	mov	rcx, qword ptr [rbx + 0x10]
	mov	rcx, qword ptr [rcx + rbp*8]
	lea	rdi, [rdi]
	lea	rcx, [rcx + rcx*2]
	mov	rbp, rbp
	lea	rsi, [rax + rcx*8]
	mov	rdi, r12
	call	re_node_set_merge
	mov	rbp, rbp
	test	eax, eax
	jne	.label_1702
	inc	rbp
	lea	rsi, [rsi]
	cmp	rbp, qword ptr [rbx + 8]
	jl	.label_1703
	mov	dword ptr [rsp + 4], eax
.label_1701:
	mov	rdi, rbx
	mov	rsi, r14
	lea	rsi, [rsi]
	mov	rdx, r12
	lea	rdi, [rdi]
	call	re_node_set_add_intersect
	mov	rbp, rbp
	mov	r13d, eax
.label_1700:
	mov	rsp, rsp
	mov	eax, r13d
	add	rsp, 8
	pop	rbx
	mov	rbp, rbp
	pop	r12
	pop	r13
	nop	
	pop	r14
	lea	rsi, [rsi]
	pop	r15
	nop	
	pop	rbp
	ret	
.label_1702:
	lea	rsi, [rsi]
	mov	dword ptr [rsp + 4], eax
	jmp	.label_1700
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x418910

	.globl check_subexp_limits
	.type check_subexp_limits, @function
check_subexp_limits:
	mov	rbp, rbp
	push	rbp
	push	r15
	nop	
	push	r14
	push	r13
	nop	
	push	r12
	lea	rdi, [rdi]
	push	rbx
	lea	rsi, [rsi]
	sub	rsp, 0x38
	lea	rsi, [rsi]
	mov	r14, r9
	mov	qword ptr [rsp + 0x18], r14
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x20], r8
	mov	r9, rcx
	mov	qword ptr [rsp + 0x28], r9
	mov	rsp, rsp
	mov	qword ptr [rsp + 8], rdx
	lea	rdi, [rdi]
	mov	rdx, rsi
	mov	qword ptr [rsp + 0x30], rdx
	mov	rsp, rsp
	mov	r11, rdi
	lea	rdi, [rdi]
	xor	eax, eax
	cmp	qword ptr [r9 + 8], 0
	lea	rsi, [rsi]
	jle	.label_1708
	lea	rsi, [rsi]
	xor	r15d, r15d
	nop	word ptr cs:[rax + rax]
.label_1707:
	mov	rax, qword ptr [r9 + 0x10]
	mov	rax, qword ptr [rax + r15*8]
	lea	rdi, [rdi]
	lea	rax, [rax + rax*4]
	mov	rbp, rbp
	cmp	qword ptr [r8 + rax*8 + 0x10], r14
	lea	rdi, [rdi]
	jge	.label_1704
	mov	rbp, rbp
	cmp	qword ptr [r8 + rax*8 + 8], r14
	jl	.label_1704
	mov	rcx, qword ptr [r8 + rax*8]
	mov	rsi, qword ptr [r11]
	shl	rcx, 4
	mov	r13, qword ptr [rsi + rcx]
	mov	qword ptr [rsp], r13
	mov	rbp, rbp
	cmp	qword ptr [r8 + rax*8 + 0x18], r14
	lea	rdi, [rdi]
	jne	.label_1712
	nop	
	cmp	qword ptr [rdx + 8], 0
	jle	.label_1704
	lea	rdi, [rdi]
	mov	r12, r8
	mov	rsp, rsp
	mov	r9, r14
	mov	rbp, rbp
	mov	r8, qword ptr [rdx + 8]
	mov	rbp, rbp
	mov	r10, qword ptr [rdx + 0x10]
	mov	rcx, qword ptr [r11]
	mov	r14, -1
	xor	edi, edi
	mov	rsp, rsp
	mov	rsi, -1
	nop	
.label_1710:
	lea	rdi, [rdi]
	mov	rbx, qword ptr [r10 + rdi*8]
	lea	rsi, [rsi]
	mov	rbp, rbx
	shl	rbp, 4
	nop	
	movzx	eax, byte ptr [rcx + rbp + 8]
	cmp	eax, 9
	je	.label_1715
	mov	rsp, rsp
	cmp	eax, 8
	mov	rsp, rsp
	jne	.label_1705
	cmp	r13, qword ptr [rcx + rbp]
	mov	rbp, rbp
	je	.label_1716
	mov	rsp, rsp
	mov	rbx, rsi
.label_1716:
	mov	rsi, rbx
	lea	rsi, [rsi]
	jmp	.label_1705
	nop	
.label_1715:
	mov	rax, qword ptr [r11]
	lea	rsi, [rsi]
	cmp	r13, qword ptr [rax + rbp]
	lea	rsi, [rsi]
	je	.label_1717
	mov	rbx, r14
.label_1717:
	lea	rdi, [rdi]
	mov	r14, rbx
.label_1705:
	inc	rdi
	nop	
	cmp	rdi, r8
	jl	.label_1710
	mov	rbp, rbp
	mov	r13, r14
	test	rsi, rsi
	nop	
	mov	r14, r9
	lea	rdi, [rdi]
	mov	r8, r12
	mov	r9, qword ptr [rsp + 0x28]
	nop	
	js	.label_1713
	mov	rsp, rsp
	mov	rdi, r11
	mov	rcx, qword ptr [rsp + 8]
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x30], rdx
	mov	rsp, rsp
	mov	rbx, r11
	mov	r12, r8
	mov	rbp, rbp
	mov	rbp, r9
	mov	rbp, rbp
	call	sub_epsilon_src_nodes
	mov	r9, rbp
	nop	
	mov	r8, r12
	lea	rsi, [rsi]
	mov	r11, rbx
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rsp + 0x30]
	mov	rbp, rbp
	test	eax, eax
	jne	.label_1708
.label_1713:
	mov	rbp, rbp
	test	r13, r13
	mov	rsp, rsp
	js	.label_1704
	cmp	qword ptr [rdx + 8], 0
	mov	rbp, rbp
	mov	ebp, 0
	jg	.label_1709
	mov	rsp, rsp
	jmp	.label_1704
.label_1712:
	lea	rdi, [rdi]
	cmp	qword ptr [rdx + 8], 0
	mov	ebp, 0
	mov	rbp, rbp
	jle	.label_1704
	nop	word ptr cs:[rax + rax]
.label_1714:
	mov	rax, qword ptr [rdx + 0x10]
	mov	rsi, qword ptr [rax + rbp*8]
	mov	rax, qword ptr [r11]
	mov	rsp, rsp
	mov	rcx, rsi
	mov	rbp, rbp
	shl	rcx, 4
	mov	edi, dword ptr [rax + rcx + 8]
	nop	
	mov	ebx, 0xfe
	and	edi, ebx
	or	edi, 1
	cmp	edi, 9
	mov	rbp, rbp
	jne	.label_1706
	cmp	r13, qword ptr [rax + rcx]
	mov	rbp, rbp
	jne	.label_1706
	nop	
	mov	rdi, r11
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rsp + 8]
	mov	r13, rdx
	mov	rbx, r11
	lea	rsi, [rsi]
	mov	r12, r8
	mov	qword ptr [rsp + 0x10], r15
	lea	rdi, [rdi]
	mov	r15, r14
	mov	rbp, rbp
	mov	r14, r9
	call	sub_epsilon_src_nodes
	mov	r9, r14
	lea	rsi, [rsi]
	mov	r14, r15
	mov	r15, qword ptr [rsp + 0x10]
	lea	rsi, [rsi]
	mov	r8, r12
	lea	rdi, [rdi]
	mov	r11, rbx
	mov	rdx, r13
	mov	r13, qword ptr [rsp]
	lea	rdi, [rdi]
	test	eax, eax
	jne	.label_1708
.label_1706:
	inc	rbp
	cmp	rbp, qword ptr [rdx + 8]
	jl	.label_1714
	mov	rbp, rbp
	jmp	.label_1704
.label_1719:
	mov	rsp, rsp
	mov	rdi, r12
	mov	rbp, rbp
	mov	rsi, r14
	lea	rsi, [rsi]
	mov	rbx, qword ptr [rsp + 0x30]
	mov	rdx, rbx
	nop	
	mov	rcx, qword ptr [rsp + 8]
	nop	
	call	sub_epsilon_src_nodes
	mov	rdx, rbx
	test	eax, eax
	mov	r14, qword ptr [rsp + 0x18]
	mov	r8, qword ptr [rsp + 0x20]
	mov	r9, qword ptr [rsp + 0x28]
	mov	r11, r12
	jne	.label_1708
	dec	rbp
	mov	rsp, rsp
	jmp	.label_1711
	nop	
.label_1709:
	mov	rsp, rsp
	mov	rax, qword ptr [rdx + 0x10]
	lea	rdi, [rdi]
	mov	r14, qword ptr [rax + rbp*8]
	mov	rax, qword ptr [r11 + 0x38]
	lea	rbx, [r14 + r14*2]
	lea	rdi, [rax + rbx*8]
	lea	rsi, [rsi]
	mov	rsi, r13
	lea	rsi, [rsi]
	mov	r12, r11
	call	re_node_set_contains
	mov	rsp, rsp
	test	rax, rax
	nop	
	jne	.label_1718
	mov	rbp, rbp
	mov	rax, qword ptr [r12 + 0x30]
	lea	rdi, [rax + rbx*8]
	mov	rsi, r13
	call	re_node_set_contains
	lea	rdi, [rdi]
	test	rax, rax
	lea	rdi, [rdi]
	je	.label_1719
.label_1718:
	nop	
	mov	r14, qword ptr [rsp + 0x18]
	mov	r8, qword ptr [rsp + 0x20]
	lea	rsi, [rsi]
	mov	r9, qword ptr [rsp + 0x28]
	mov	rdx, qword ptr [rsp + 0x30]
	mov	r11, r12
.label_1711:
	inc	rbp
	lea	rsi, [rsi]
	cmp	rbp, qword ptr [rdx + 8]
	jl	.label_1709
	nop	
.label_1704:
	inc	r15
	xor	eax, eax
	mov	rsp, rsp
	cmp	r15, qword ptr [r9 + 8]
	jl	.label_1707
.label_1708:
	add	rsp, 0x38
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	nop	
	pop	rbp
	lea	rsi, [rsi]
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x418cc0

	.globl sift_states_bkref
	.type sift_states_bkref, @function
sift_states_bkref:
	lea	rsi, [rsi]
	push	rbp
	mov	rbp, rbp
	push	r15
	lea	rdi, [rdi]
	push	r14
	push	r13
	mov	rsp, rsp
	push	r12
	push	rbx
	sub	rsp, 0x98
	lea	rdi, [rdi]
	mov	rbx, rcx
	mov	qword ptr [rsp + 0x28], rbx
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x58], rdx
	nop	
	mov	r14, rsi
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x48], rdi
	mov	rbp, qword ptr [rdi + 0x98]
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x50], rbp
	lea	rdi, [rdi]
	mov	rsi, rdx
	lea	rdi, [rdi]
	call	search_cur_bkref_entry
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x20], rax
	xor	r12d, r12d
	lea	rdi, [rdi]
	cmp	rax, -1
	je	.label_1725
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x60], 0
	lea	rsi, [rsi]
	cmp	qword ptr [rbx + 8], 0
	jle	.label_1725
	lea	rsi, [rsi]
	mov	rdx, r14
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x38], rdx
	lea	rax, [rdx + 0x20]
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x30], rax
	nop	
	mov	rax, qword ptr [rsp + 0x58]
	nop	
	lea	rax, [rax + 1]
	mov	qword ptr [rsp + 0x10], rax
	mov	rax, qword ptr [rsp + 0x20]
	lea	rax, [rax*8]
	lea	rax, [rax + rax*4]
	mov	qword ptr [rsp + 0x18], rax
	lea	rdi, [rdi]
	xor	eax, eax
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x40], rax
	nop	dword ptr [rax + rax]
.label_1730:
	nop	
	mov	rax, qword ptr [rbx + 0x10]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rsp + 0x40]
	mov	rbp, rbp
	mov	r15, qword ptr [rax + rcx*8]
	mov	rsi, rbp
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsi]
	mov	rcx, r15
	shl	rcx, 4
	mov	rbp, rbp
	movzx	eax, byte ptr [rax + rcx + 8]
	cmp	r15, qword ptr [rdx + 0x10]
	jne	.label_1728
	lea	rsi, [rsi]
	cmp	eax, 4
	jne	.label_1720
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0x58]
	cmp	qword ptr [rdx + 0x18], rax
	jne	.label_1727
	mov	rbp, rbp
	jmp	.label_1720
	nop	word ptr cs:[rax + rax]
.label_1728:
	nop	
	cmp	eax, 4
	jne	.label_1720
.label_1727:
	mov	r14, qword ptr [rsp + 0x20]
	lea	rbp, [r14 + r14*4]
	nop	
	shl	rbp, 3
	mov	rax, qword ptr [rsp + 0x48]
	lea	rsi, [rsi]
	add	rbp, qword ptr [rax + 0xd8]
	mov	rbp, rbp
	mov	r13, qword ptr [rsp + 0x18]
	nop	
.label_1724:
	lea	rdi, [rdi]
	cmp	qword ptr [rbp], r15
	jne	.label_1723
	mov	rax, qword ptr [rbp + 0x10]
	mov	rcx, qword ptr [rbp + 0x18]
	mov	rbx, rcx
	mov	rbp, rbp
	sub	rbx, rax
	mov	rsp, rsp
	add	rbx, qword ptr [rsp + 0x58]
	cmp	rcx, rax
	jne	.label_1733
	mov	rax, qword ptr [rsi + 0x28]
	lea	rsi, [rsi]
	lea	rcx, [r15 + r15*2]
	mov	rax, qword ptr [rax + rcx*8 + 0x10]
	nop	
	jmp	.label_1726
	nop	
.label_1733:
	lea	rax, [r15*8]
	add	rax, qword ptr [rsi + 0x18]
.label_1726:
	cmp	rbx, qword ptr [rdx + 0x18]
	jg	.label_1723
	mov	rcx, qword ptr [rdx]
	mov	rdi, qword ptr [rcx + rbx*8]
	test	rdi, rdi
	je	.label_1723
	nop	
	mov	r12, qword ptr [rax]
	mov	rsp, rsp
	add	rdi, 8
	mov	rsi, r12
	call	re_node_set_contains
	test	rax, rax
	je	.label_1729
	mov	rdi, qword ptr [rsp + 0x48]
	mov	rsi, qword ptr [rsp + 0x30]
	mov	rbp, rbp
	mov	rdx, r15
	mov	rcx, qword ptr [rsp + 0x58]
	mov	r8, r12
	nop	
	mov	r9, rbx
	mov	rbp, rbp
	call	check_dst_limits
	nop	
	test	al, al
	mov	rdx, qword ptr [rsp + 0x38]
	mov	rsi, qword ptr [rsp + 0x50]
	jne	.label_1723
	cmp	qword ptr [rsp + 0x60], 0
	jne	.label_1731
	mov	rsp, rsp
	mov	rax, qword ptr [rdx + 0x30]
	nop	
	mov	qword ptr [rsp + 0x90], rax
	movups	xmm0, xmmword ptr [rdx]
	mov	rsp, rsp
	movups	xmm1, xmmword ptr [rdx + 0x10]
	movups	xmm2, xmmword ptr [rdx + 0x20]
	mov	rbp, rbp
	movaps	xmmword ptr [rsp + 0x80], xmm2
	movaps	xmmword ptr [rsp + 0x70], xmm1
	lea	rdi, [rdi]
	movaps	xmmword ptr [rsp + 0x60], xmm0
	lea	rdi, [rsp + 0x80]
	mov	rsi, qword ptr [rsp + 0x30]
	lea	rsi, [rsi]
	mov	rbx, rdx
	lea	rsi, [rsi]
	call	re_node_set_init_copy
	mov	rsp, rsp
	mov	rdx, rbx
	mov	r12d, eax
	mov	rbp, rbp
	test	r12d, r12d
	lea	rsi, [rsi]
	jne	.label_1721
.label_1731:
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x70], r15
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp + 0x58]
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x78], rax
	lea	rdi, [rdi]
	lea	rdi, [rsp + 0x80]
	mov	rsi, r14
	mov	rbx, rdx
	call	re_node_set_insert
	lea	rdi, [rdi]
	mov	rdx, rbx
	mov	rsp, rsp
	mov	r12d, 0xc
	mov	rbp, rbp
	test	al, al
	mov	rsp, rsp
	je	.label_1721
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0x60]
	mov	rbp, rbp
	mov	rcx, qword ptr [rsp + 0x58]
	mov	rbx, qword ptr [rax + rcx*8]
	nop	
	mov	rdi, qword ptr [rsp + 0x48]
	lea	rsi, [rsp + 0x60]
	nop	
	mov	rbp, rdx
	call	sift_states_backward
	mov	rdx, rbp
	mov	rsp, rsp
	mov	r12d, eax
	test	r12d, r12d
	jne	.label_1721
	mov	rsp, rsp
	mov	rsi, qword ptr [rdx + 8]
	mov	rbp, rbp
	test	rsi, rsi
	mov	rsp, rsp
	je	.label_1732
	lea	rdi, [rdi]
	mov	rbp, rdx
	mov	rsp, rsp
	mov	rdx, qword ptr [rsp + 0x60]
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rsp + 0x50]
	mov	rcx, qword ptr [rsp + 0x10]
	lea	rsi, [rsi]
	call	merge_state_array
	lea	rdi, [rdi]
	mov	rdx, rbp
	mov	r12d, eax
	lea	rsi, [rsi]
	test	r12d, r12d
	jne	.label_1721
.label_1732:
	mov	rax, qword ptr [rsp + 0x60]
	mov	rbp, rbp
	mov	rcx, qword ptr [rsp + 0x58]
	mov	rsp, rsp
	mov	qword ptr [rax + rcx*8], rbx
	lea	rdi, [rdi]
	lea	rbp, [rsp + 0x80]
	mov	rdi, rbp
	mov	rsi, r14
	mov	rbx, rdx
	call	re_node_set_contains
	mov	rsp, rsp
	lea	rsi, [rax - 1]
	mov	rdi, rbp
	call	re_node_set_remove_at
	mov	rdx, rbx
	nop	
	mov	rax, qword ptr [rsp + 0x48]
	mov	rsp, rsp
	mov	rbp, qword ptr [rax + 0xd8]
	add	rbp, r13
	nop	
	jmp	.label_1722
.label_1729:
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rsp + 0x38]
.label_1722:
	mov	rsi, qword ptr [rsp + 0x50]
	nop	dword ptr [rax + rax]
.label_1723:
	inc	r14
	add	r13, 0x28
	lea	rdi, [rdi]
	cmp	byte ptr [rbp + 0x20], 0
	mov	rbp, rbp
	lea	rbp, [rbp + 0x28]
	jne	.label_1724
.label_1720:
	mov	rsp, rsp
	mov	rbp, rsi
	mov	rax, qword ptr [rsp + 0x40]
	inc	rax
	mov	qword ptr [rsp + 0x40], rax
	xor	r12d, r12d
	nop	
	mov	rbx, qword ptr [rsp + 0x28]
	cmp	rax, qword ptr [rbx + 8]
	jl	.label_1730
.label_1721:
	lea	rdi, [rdi]
	cmp	qword ptr [rsp + 0x60], 0
	nop	
	je	.label_1725
	mov	rdi, qword ptr [rsp + 0x90]
	nop	
	call	free
.label_1725:
	lea	rdi, [rdi]
	mov	eax, r12d
	lea	rsi, [rsi]
	add	rsp, 0x98
	pop	rbx
	pop	r12
	nop	
	pop	r13
	mov	rsp, rsp
	pop	r14
	lea	rsi, [rsi]
	pop	r15
	lea	rdi, [rdi]
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x419110

	.globl re_node_set_add_intersect
	.type re_node_set_add_intersect, @function
re_node_set_add_intersect:
	push	r15
	lea	rsi, [rsi]
	push	r14
	lea	rdi, [rdi]
	push	r12
	lea	rdi, [rdi]
	push	rbx
	nop	
	push	rax
	mov	rsp, rsp
	mov	r14, rdx
	mov	r12, rsi
	mov	r15, rdi
	mov	rdx, qword ptr [r12 + 8]
	nop	
	xor	eax, eax
	mov	rbp, rbp
	test	rdx, rdx
	mov	rbp, rbp
	je	.label_1734
	mov	rcx, qword ptr [r14 + 8]
	nop	
	test	rcx, rcx
	je	.label_1734
	add	rcx, rdx
	mov	rax, qword ptr [r15 + 8]
	add	rax, rcx
	lea	rdi, [rdi]
	mov	rbx, qword ptr [r15]
	cmp	rax, rbx
	mov	rsp, rsp
	jle	.label_1738
	add	rbx, rcx
	nop	
	mov	rdi, qword ptr [r15 + 0x10]
	lea	rsi, [rbx*8]
	call	realloc
	mov	rcx, rax
	mov	eax, 0xc
	mov	rsp, rsp
	test	rcx, rcx
	je	.label_1734
	mov	qword ptr [r15 + 0x10], rcx
	mov	qword ptr [r15], rbx
.label_1738:
	mov	rcx, qword ptr [r15 + 8]
	mov	rdx, qword ptr [r12 + 8]
	lea	r8, [rdx + rcx]
	mov	r9, qword ptr [r14 + 8]
	mov	rsp, rsp
	add	r8, r9
	lea	rsi, [rsi]
	dec	rcx
.label_1750:
	dec	rdx
	mov	rax, qword ptr [r12 + 0x10]
	mov	rbx, qword ptr [r14 + 0x10]
	mov	rdi, r9
.label_1748:
	lea	rsi, [rsi]
	lea	r9, [rdi - 1]
	nop	
	mov	rsi, qword ptr [rbx + rdi*8 - 8]
	nop	word ptr cs:[rax + rax]
.label_1746:
	nop	
	cmp	qword ptr [rax + rdx*8], rsi
	lea	rdi, [rdi]
	je	.label_1742
	jl	.label_1745
	nop	
	test	rdx, rdx
	lea	rsi, [rsi]
	lea	rdx, [rdx - 1]
	nop	
	jg	.label_1746
	lea	rsi, [rsi]
	jmp	.label_1735
	nop	word ptr cs:[rax + rax]
.label_1745:
	mov	rsp, rsp
	cmp	rdi, 2
	mov	rsp, rsp
	mov	rdi, r9
	nop	
	jge	.label_1748
	nop	
	jmp	.label_1735
	nop	word ptr cs:[rax + rax]
.label_1742:
	nop	
	test	rcx, rcx
	js	.label_1743
	mov	rax, qword ptr [r15 + 0x10]
	mov	rsi, qword ptr [r12 + 0x10]
	mov	rsi, qword ptr [rsi + rdx*8]
	nop	word ptr cs:[rax + rax]
.label_1740:
	lea	rsi, [rsi]
	cmp	qword ptr [rax + rcx*8], rsi
	lea	rdi, [rdi]
	jle	.label_1749
	test	rcx, rcx
	lea	rcx, [rcx - 1]
	jg	.label_1740
	mov	rsp, rsp
	jmp	.label_1743
.label_1749:
	nop	
	test	rcx, rcx
	mov	rbp, rbp
	js	.label_1743
	mov	rax, qword ptr [r15 + 0x10]
	mov	rax, qword ptr [rax + rcx*8]
	mov	rsi, qword ptr [r12 + 0x10]
	cmp	rax, qword ptr [rsi + rdx*8]
	mov	rbp, rbp
	je	.label_1747
	nop	dword ptr [rax]
.label_1743:
	mov	rax, qword ptr [r12 + 0x10]
	mov	rbp, rbp
	mov	rax, qword ptr [rax + rdx*8]
	mov	rsi, qword ptr [r15 + 0x10]
	mov	qword ptr [rsi + r8*8 - 8], rax
	lea	rdi, [rdi]
	dec	r8
.label_1747:
	test	rdx, rdx
	jle	.label_1735
	cmp	rdi, 2
	jge	.label_1750
.label_1735:
	mov	rcx, qword ptr [r15 + 8]
	mov	r10, qword ptr [r12 + 8]
	mov	rax, qword ptr [r14 + 8]
	lea	rdx, [rcx + r10]
	lea	r11, [rax + rdx - 1]
	lea	rsi, [rsi]
	mov	rdx, r11
	lea	rdi, [rdi]
	sub	rdx, r8
	lea	r9, [rdx + 1]
	nop	
	lea	rsi, [rdx + rcx + 1]
	mov	qword ptr [r15 + 8], rsi
	lea	rdi, [rdi]
	test	rcx, rcx
	mov	rbp, rbp
	jle	.label_1736
	test	rdx, rdx
	js	.label_1736
	add	r10, rax
	mov	rsp, rsp
	add	r10, rcx
	dec	rcx
	sub	r10, r8
	nop	
	xor	edx, edx
.label_1737:
	mov	rbp, rbp
	mov	rdi, qword ptr [r15 + 0x10]
	lea	rdi, [rdi]
	lea	rax, [rdi + r10*8]
	nop	word ptr [rax + rax]
.label_1739:
	mov	rsi, qword ptr [rdi + r11*8]
	lea	rdi, [rdi]
	mov	rbx, qword ptr [rdi + rcx*8]
	cmp	rsi, rbx
	lea	rdi, [rdi]
	jg	.label_1741
	mov	qword ptr [rax + rcx*8], rbx
	mov	rsp, rsp
	test	rcx, rcx
	nop	
	lea	rcx, [rcx - 1]
	jg	.label_1739
	jmp	.label_1736
.label_1741:
	dec	r11
	nop	
	dec	r10
	mov	rbp, rbp
	dec	r9
	lea	rsi, [rsi]
	mov	qword ptr [rax + rcx*8], rsi
	jne	.label_1737
	jmp	.label_1744
.label_1736:
	lea	rsi, [rsi]
	mov	rdx, r9
.label_1744:
	mov	rdi, qword ptr [r15 + 0x10]
	lea	rdi, [rdi]
	lea	rsi, [rdi + r8*8]
	shl	rdx, 3
	call	memcpy
	xor	eax, eax
.label_1734:
	add	rsp, 8
	nop	
	pop	rbx
	pop	r12
	lea	rdi, [rdi]
	pop	r14
	pop	r15
	mov	rbp, rbp
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x419390

	.globl sub_epsilon_src_nodes
	.type sub_epsilon_src_nodes, @function
sub_epsilon_src_nodes:
	push	rbp
	lea	rdi, [rdi]
	push	r15
	push	r14
	mov	rsp, rsp
	push	r13
	mov	rbp, rbp
	push	r12
	lea	rdi, [rdi]
	push	rbx
	mov	rbp, rbp
	sub	rsp, 0x48
	mov	qword ptr [rsp + 8], rcx
	mov	qword ptr [rsp + 0x28], rsi
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x20], rdi
	mov	rax, qword ptr [rdi + 0x38]
	lea	rdi, [rdi]
	lea	rcx, [rsi + rsi*2]
	nop	
	xorps	xmm0, xmm0
	lea	rsi, [rsi]
	movaps	xmmword ptr [rsp + 0x30], xmm0
	nop	
	mov	qword ptr [rsp + 0x40], 0
	mov	rsp, rsp
	cmp	qword ptr [rax + rcx*8 + 8], 0
	jle	.label_1755
	mov	qword ptr [rsp + 0x10], rdx
	lea	rsi, [rsi]
	lea	rdx, [rax + rcx*8]
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x18], rdx
	nop	
	lea	r13, [rax + rcx*8 + 8]
	lea	r15, [rax + rcx*8 + 0x10]
	lea	rdi, [rdi]
	xor	r12d, r12d
	nop	word ptr cs:[rax + rax]
.label_1751:
	mov	rsp, rsp
	mov	rax, qword ptr [r15]
	mov	rbp, rbp
	mov	rax, qword ptr [rax + r12*8]
	mov	rbp, rbp
	cmp	rax, qword ptr [rsp + 0x28]
	lea	rsi, [rsi]
	je	.label_1754
	mov	rcx, qword ptr [rsp + 0x20]
	mov	rcx, qword ptr [rcx]
	mov	rdx, rax
	mov	rsp, rsp
	shl	rdx, 4
	lea	rsi, [rsi]
	test	byte ptr [rcx + rdx + 8], 8
	je	.label_1754
	mov	rcx, qword ptr [rsp + 0x20]
	mov	rcx, qword ptr [rcx + 0x28]
	lea	rsi, [rsi]
	lea	rbx, [rax + rax*2]
	nop	
	mov	rax, qword ptr [rcx + rbx*8 + 0x10]
	mov	rbp, rbp
	mov	r14, qword ptr [rax]
	mov	rbp, -1
	lea	rdi, [rdi]
	cmp	qword ptr [rcx + rbx*8 + 8], 2
	mov	rsp, rsp
	jl	.label_1756
	mov	rbp, qword ptr [rax + 8]
.label_1756:
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rsp + 0x18]
	mov	rsi, r14
	call	re_node_set_contains
	mov	rbp, rbp
	test	rax, rax
	mov	rsp, rsp
	jne	.label_1758
	mov	rbp, rbp
	mov	rdi, qword ptr [rsp + 0x10]
	lea	rdi, [rdi]
	mov	rsi, r14
	lea	rdi, [rdi]
	call	re_node_set_contains
	test	rax, rax
	mov	rbp, rbp
	jne	.label_1752
.label_1758:
	nop	
	test	rbp, rbp
	mov	rsp, rsp
	jle	.label_1754
	mov	rdi, qword ptr [rsp + 0x18]
	mov	rsi, rbp
	call	re_node_set_contains
	lea	rsi, [rsi]
	test	rax, rax
	jne	.label_1754
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rsp + 0x10]
	lea	rsi, [rsi]
	mov	rsi, rbp
	nop	
	call	re_node_set_contains
	lea	rdi, [rdi]
	test	rax, rax
	je	.label_1754
.label_1752:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp + 0x20]
	mov	rax, qword ptr [rax + 0x38]
	lea	rdx, [rax + rbx*8]
	mov	rbp, rbp
	lea	rdi, [rsp + 0x30]
	nop	
	mov	rsi, qword ptr [rsp + 8]
	call	re_node_set_add_intersect
	lea	rdi, [rdi]
	mov	ebp, eax
	test	ebp, ebp
	mov	rsp, rsp
	jne	.label_1759
	nop	dword ptr [rax]
.label_1754:
	mov	rbp, rbp
	inc	r12
	lea	rdi, [rdi]
	mov	rax, qword ptr [r13]
	nop	
	cmp	r12, rax
	jl	.label_1751
	lea	rdi, [rdi]
	test	rax, rax
	mov	r12, qword ptr [rsp + 0x10]
	jle	.label_1755
	xor	ebx, ebx
	mov	rsp, rsp
	lea	r14, [rsp + 0x30]
	nop	
.label_1757:
	mov	rax, qword ptr [r15]
	mov	rsp, rsp
	mov	rbp, qword ptr [rax + rbx*8]
	mov	rdi, r14
	lea	rdi, [rdi]
	mov	rsi, rbp
	call	re_node_set_contains
	test	rax, rax
	jne	.label_1753
	mov	rbp, rbp
	mov	rdi, r12
	mov	rsp, rsp
	mov	rsi, rbp
	call	re_node_set_contains
	mov	rbp, rbp
	lea	rsi, [rax - 1]
	lea	rdi, [rdi]
	mov	rdi, r12
	call	re_node_set_remove_at
.label_1753:
	lea	rdi, [rdi]
	inc	rbx
	cmp	rbx, qword ptr [r13]
	lea	rdi, [rdi]
	jl	.label_1757
.label_1755:
	mov	rdi, qword ptr [rsp + 0x40]
	mov	rbp, rbp
	call	free
	xor	ebp, ebp
.label_1760:
	mov	rbp, rbp
	mov	eax, ebp
	lea	rsi, [rsi]
	add	rsp, 0x48
	pop	rbx
	pop	r12
	nop	
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_1759:
	mov	rsp, rsp
	mov	rdi, qword ptr [rsp + 0x40]
	call	free
	mov	rbp, rbp
	jmp	.label_1760
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x419600

	.globl check_dst_limits
	.type check_dst_limits, @function
check_dst_limits:
	nop	
	push	rbp
	lea	rsi, [rsi]
	push	r15
	push	r14
	push	r13
	mov	rbp, rbp
	push	r12
	push	rbx
	sub	rsp, 0x38
	lea	rdi, [rdi]
	mov	r14, r9
	mov	qword ptr [rsp + 0x30], r14
	nop	
	mov	qword ptr [rsp + 0x28], r8
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x20], rcx
	mov	qword ptr [rsp + 0x18], rdx
	lea	rsi, [rsi]
	mov	rbx, rsi
	mov	rbp, rdi
	mov	rsi, rcx
	mov	rbp, rbp
	call	search_cur_bkref_entry
	mov	qword ptr [rsp + 0x10], rax
	mov	rdi, rbp
	lea	rsi, [rsi]
	mov	rsi, r14
	call	search_cur_bkref_entry
	mov	qword ptr [rsp + 8], rax
	cmp	qword ptr [rbx + 8], 0
	jle	.label_1762
	mov	rsp, rsp
	mov	r14, qword ptr [rbp + 0x98]
	xor	r12d, r12d
	nop	word ptr [rax + rax]
.label_1763:
	nop	
	mov	rax, qword ptr [rbp + 0xd8]
	mov	rcx, qword ptr [rbx + 0x10]
	mov	rsi, qword ptr [rcx + r12*8]
	lea	rcx, [rsi + rsi*4]
	mov	rbp, rbp
	mov	rax, qword ptr [rax + rcx*8]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [r14]
	shl	rax, 4
	mov	r15, qword ptr [rcx + rax]
	nop	
	mov	rdi, rbp
	lea	rdi, [rdi]
	mov	rdx, r15
	mov	rcx, qword ptr [rsp + 0x18]
	lea	rdi, [rdi]
	mov	r8, qword ptr [rsp + 0x20]
	nop	
	mov	r9, qword ptr [rsp + 0x10]
	call	check_dst_limits_calc_pos
	mov	r13d, eax
	nop	
	mov	rax, qword ptr [rbx + 0x10]
	mov	rsi, qword ptr [rax + r12*8]
	nop	
	mov	rdi, rbp
	mov	rdx, r15
	mov	rbp, rbp
	mov	rcx, qword ptr [rsp + 0x28]
	lea	rsi, [rsi]
	mov	r8, qword ptr [rsp + 0x30]
	mov	r9, qword ptr [rsp + 8]
	lea	rsi, [rsi]
	call	check_dst_limits_calc_pos
	cmp	eax, r13d
	mov	rbp, rbp
	mov	al, 1
	jne	.label_1761
	nop	
	inc	r12
	cmp	r12, qword ptr [rbx + 8]
	mov	rsp, rsp
	jl	.label_1763
	lea	rsi, [rsi]
	xor	eax, eax
	mov	rbp, rbp
	jmp	.label_1761
.label_1762:
	lea	rdi, [rdi]
	xor	eax, eax
.label_1761:
	add	rsp, 0x38
	pop	rbx
	pop	r12
	pop	r13
	nop	
	pop	r14
	pop	r15
	lea	rdi, [rdi]
	pop	rbp
	nop	
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x419740

	.globl check_dst_limits_calc_pos
	.type check_dst_limits_calc_pos, @function
check_dst_limits_calc_pos:
	mov	rsp, rsp
	mov	r10, qword ptr [rdi + 0xd8]
	mov	rbp, rbp
	lea	rsi, [rsi + rsi*4]
	mov	rbp, rbp
	mov	r11, qword ptr [r10 + rsi*8 + 0x10]
	mov	rsp, rsp
	mov	eax, 0xffffffff
	mov	rsp, rsp
	cmp	r11, r8
	jg	.label_1764
	mov	r10, qword ptr [r10 + rsi*8 + 0x18]
	mov	rbp, rbp
	mov	eax, 1
	cmp	r10, r8
	mov	rbp, rbp
	jl	.label_1764
	cmp	r11, r8
	sete	al
	movzx	r11d, al
	cmp	r10, r8
	mov	rsp, rsp
	sete	al
	mov	rbp, rbp
	movzx	esi, al
	add	esi, esi
	xor	eax, eax
	or	esi, r11d
	lea	rdi, [rdi]
	je	.label_1764
	lea	rsi, [rsi]
	mov	r8, r9
	jmp	check_dst_limits_calc_pos_1
.label_1764:
	lea	rdi, [rdi]
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x4197b0

	.globl check_dst_limits_calc_pos_1
	.type check_dst_limits_calc_pos_1, @function
check_dst_limits_calc_pos_1:
	push	rbp
	push	r15
	push	r14
	push	r13
	nop	
	push	r12
	lea	rdi, [rdi]
	push	rbx
	sub	rsp, 0x48
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x40], r8
	mov	qword ptr [rsp + 0x30], rcx
	mov	rbx, rdx
	mov	r13d, esi
	mov	qword ptr [rsp + 0x38], rdi
	lea	rdi, [rdi]
	mov	rbp, qword ptr [rdi + 0x98]
	mov	rsp, rsp
	mov	rax, qword ptr [rbp + 0x30]
	lea	rcx, [rcx + rcx*2]
	cmp	qword ptr [rax + rcx*8 + 8], 0
	lea	rsi, [rsi]
	jle	.label_1774
	lea	rsi, [rsi]
	lea	rdx, [rax + rcx*8 + 8]
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x20], rdx
	lea	rax, [rax + rcx*8 + 0x10]
	mov	qword ptr [rsp + 0x28], rax
	nop	
	mov	eax, 1
	mov	cl, bl
	nop	
	shl	rax, cl
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x18], rax
	xor	rax, 0xffff
	mov	qword ptr [rsp + 0x10], rax
	lea	rdi, [rdi]
	mov	eax, r13d
	mov	rbp, rbp
	and	eax, 2
	lea	rdi, [rdi]
	mov	dword ptr [rsp + 8], eax
	shr	eax, 1
	cmp	rbx, 0x3f
	setg	cl
	or	cl, al
	nop	
	mov	byte ptr [rsp + 0xf], cl
	mov	eax, r13d
	nop	
	and	eax, 1
	mov	dword ptr [rsp + 4], eax
	lea	rsi, [rsi]
	xor	r15d, r15d
	nop	dword ptr [rax + rax]
.label_1769:
	mov	rax, qword ptr [rsp + 0x28]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax]
	lea	rdi, [rdi]
	mov	r12, qword ptr [rax + r15*8]
	mov	rsp, rsp
	mov	rax, qword ptr [rbp]
	mov	rsp, rsp
	mov	rdx, r12
	lea	rsi, [rsi]
	shl	rdx, 4
	lea	rcx, [rax + rdx]
	movzx	eax, byte ptr [rax + rdx + 8]
	nop	
	cmp	eax, 9
	lea	rsi, [rsi]
	je	.label_1777
	cmp	eax, 8
	mov	rsp, rsp
	je	.label_1776
	mov	rsp, rsp
	cmp	eax, 4
	jne	.label_1767
	cmp	qword ptr [rsp + 0x40], -1
	je	.label_1767
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0x40]
	lea	r14, [rax + rax*4]
	shl	r14, 3
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp + 0x38]
	add	r14, qword ptr [rax + 0xd8]
	nop	
.label_1766:
	mov	rbp, rbp
	cmp	qword ptr [r14], r12
	jne	.label_1768
	lea	rsi, [rsi]
	cmp	rbx, 0x3f
	jg	.label_1778
	movzx	eax, word ptr [r14 + 0x22]
	test	qword ptr [rsp + 0x18], rax
	je	.label_1768
.label_1778:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp + 0x28]
	lea	rcx, [r12 + r12*2]
	mov	rax, qword ptr [rax + rcx*8 + 0x10]
	mov	rcx, qword ptr [rax]
	cmp	rcx, qword ptr [rsp + 0x30]
	mov	rbp, rbp
	je	.label_1772
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rsp + 0x38]
	mov	esi, r13d
	mov	rdx, rbx
	mov	r8, qword ptr [rsp + 0x40]
	lea	rsi, [rsi]
	call	check_dst_limits_calc_pos_1
	mov	ecx, eax
	lea	rsi, [rsi]
	test	ecx, ecx
	je	.label_1771
	lea	rsi, [rsi]
	mov	eax, 0xffffffff
	nop	
	cmp	ecx, -1
	mov	rsp, rsp
	je	.label_1765
	lea	rdi, [rdi]
	cmp	rbx, 0x3f
	mov	rsp, rsp
	jg	.label_1768
	lea	rdi, [rdi]
	jmp	.label_1770
.label_1771:
	mov	rsp, rsp
	cmp	byte ptr [rsp + 0xf], 0
	mov	rsp, rsp
	je	.label_1770
	xor	eax, eax
	cmp	dword ptr [rsp + 8], 0
	nop	
	je	.label_1768
	mov	rbp, rbp
	jmp	.label_1765
.label_1770:
	mov	rsp, rsp
	movzx	eax, word ptr [r14 + 0x22]
	mov	rcx, qword ptr [rsp + 0x10]
	nop	
	and	eax, ecx
	mov	word ptr [r14 + 0x22], ax
	nop	word ptr cs:[rax + rax]
.label_1768:
	mov	rsp, rsp
	cmp	byte ptr [r14 + 0x20], 0
	mov	rsp, rsp
	lea	r14, [r14 + 0x28]
	jne	.label_1766
	jmp	.label_1767
	nop	word ptr [rax + rax]
.label_1777:
	cmp	dword ptr [rsp + 8], 0
	je	.label_1767
	xor	eax, eax
	jmp	.label_1775
	nop	dword ptr [rax + rax]
.label_1776:
	lea	rsi, [rsi]
	cmp	dword ptr [rsp + 4], 0
	nop	
	je	.label_1767
	mov	eax, 0xffffffff
.label_1775:
	nop	
	cmp	qword ptr [rcx], rbx
	je	.label_1765
.label_1767:
	inc	r15
	nop	
	mov	rax, qword ptr [rsp + 0x20]
	cmp	r15, qword ptr [rax]
	jl	.label_1769
.label_1774:
	lea	rsi, [rsi]
	shr	r13d, 1
	nop	
	and	r13d, 1
	lea	rdi, [rdi]
	jmp	.label_1773
.label_1772:
	shl	r13d, 0x1f
	sar	r13d, 0x1f
.label_1773:
	lea	rdi, [rdi]
	mov	eax, r13d
.label_1765:
	add	rsp, 0x48
	pop	rbx
	lea	rsi, [rsi]
	pop	r12
	pop	r13
	mov	rsp, rsp
	pop	r14
	mov	rsp, rsp
	pop	r15
	mov	rsp, rsp
	pop	rbp
	lea	rsi, [rsi]
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x419a60

	.globl sift_states_iter_mb
	.type sift_states_iter_mb, @function
sift_states_iter_mb:
	push	rbp
	lea	rdi, [rdi]
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	rsp, rsp
	mov	r13, r8
	mov	rbp, rbp
	mov	rbp, rcx
	mov	rbp, rbp
	mov	r14, rdx
	mov	rsp, rsp
	mov	r12, rsi
	lea	rdi, [rdi]
	mov	rax, rdi
	mov	rbp, rbp
	mov	r15, qword ptr [rax + 0x98]
	mov	rdi, r15
	lea	rdi, [rdi]
	mov	rsi, r14
	lea	rsi, [rsi]
	mov	rdx, rax
	call	check_node_accept_bytes
	lea	rsi, [rsi]
	mov	ebx, eax
	mov	rsp, rsp
	test	ebx, ebx
	jle	.label_1779
	lea	rsi, [rsi]
	movsxd	rax, ebx
	add	rax, rbp
	mov	rbp, rbp
	cmp	rax, r13
	jg	.label_1779
	mov	rbp, rbp
	mov	rcx, qword ptr [r12]
	mov	rdi, qword ptr [rcx + rax*8]
	test	rdi, rdi
	lea	rdi, [rdi]
	je	.label_1780
	add	rdi, 8
	nop	
	mov	rax, qword ptr [r15 + 0x18]
	nop	
	mov	rsi, qword ptr [rax + r14*8]
	lea	rsi, [rsi]
	call	re_node_set_contains
	test	rax, rax
	jne	.label_1779
.label_1780:
	mov	rbp, rbp
	xor	ebx, ebx
.label_1779:
	mov	eax, ebx
	nop	
	add	rsp, 8
	mov	rbp, rbp
	pop	rbx
	lea	rsi, [rsi]
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	lea	rdi, [rdi]
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x419b20

	.globl free_fail_stack_return
	.type free_fail_stack_return, @function
free_fail_stack_return:
	push	r15
	lea	rsi, [rsi]
	push	r14
	push	rbx
	nop	
	mov	r14, rdi
	test	r14, r14
	je	.label_1781
	nop	
	xor	ebx, ebx
	cmp	qword ptr [r14], 0
	jle	.label_1782
	lea	rdi, [rdi]
	xor	r15d, r15d
.label_1783:
	mov	rax, qword ptr [r14 + 0x10]
	mov	rdi, qword ptr [rax + rbx + 0x28]
	lea	rsi, [rsi]
	call	free
	mov	rax, qword ptr [r14 + 0x10]
	mov	rdi, qword ptr [rax + rbx + 0x10]
	mov	rbp, rbp
	call	free
	inc	r15
	add	rbx, 0x30
	cmp	r15, qword ptr [r14]
	jl	.label_1783
.label_1782:
	lea	rsi, [rsi]
	mov	rdi, qword ptr [r14 + 0x10]
	pop	rbx
	mov	rbp, rbp
	pop	r14
	lea	rsi, [rsi]
	pop	r15
	jmp	free
.label_1781:
	pop	rbx
	pop	r14
	mov	rbp, rbp
	pop	r15
	lea	rdi, [rdi]
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x419ba0

	.globl update_regs
	.type update_regs, @function
update_regs:
	nop	
	mov	rdi, qword ptr [rdi]
	mov	rsp, rsp
	shl	rcx, 4
	mov	rbp, rbp
	lea	rax, [rdi + rcx]
	mov	ecx, dword ptr [rdi + rcx + 8]
	lea	rsi, [rsi]
	movzx	edi, cl
	cmp	edi, 9
	nop	
	je	.label_1784
	cmp	edi, 8
	lea	rsi, [rsi]
	jne	.label_1785
	nop	
	mov	rax, qword ptr [rax]
	inc	rax
	cmp	rax, r9
	jge	.label_1785
	lea	rsi, [rsi]
	shl	rax, 4
	mov	qword ptr [rsi + rax], r8
	mov	qword ptr [rsi + rax + 8], -1
	ret	
.label_1784:
	mov	rbp, rbp
	mov	rax, qword ptr [rax]
	mov	rsp, rsp
	inc	rax
	mov	rsp, rsp
	cmp	rax, r9
	mov	rbp, rbp
	jge	.label_1785
	shl	rax, 4
	cmp	qword ptr [rsi + rax], r8
	jge	.label_1786
	nop	
	mov	qword ptr [rsi + rax + 8], r8
	lea	rsi, [rsi]
	shl	r9, 4
	mov	rdi, rdx
	nop	
	mov	rdx, r9
	mov	rbp, rbp
	jmp	memcpy
.label_1786:
	test	ecx, 0x80000
	je	.label_1787
	cmp	qword ptr [rdx + rax], -1
	mov	rbp, rbp
	je	.label_1787
	lea	rsi, [rsi]
	shl	r9, 4
	mov	rdi, rsi
	mov	rsp, rsp
	mov	rsi, rdx
	nop	
	mov	rdx, r9
	nop	
	jmp	memcpy
.label_1787:
	mov	qword ptr [rsi + rax + 8], r8
.label_1785:
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x419c70

	.globl pop_fail_stack
	.type pop_fail_stack, @function
pop_fail_stack:
	push	r15
	push	r14
	mov	rbp, rbp
	push	rbx
	mov	r14, r8
	nop	
	mov	r15, rdi
	lea	rsi, [rsi]
	mov	rdi, qword ptr [r15]
	mov	rbp, rbp
	lea	rax, [rdi - 1]
	mov	qword ptr [r15], rax
	lea	rsi, [rsi]
	test	rdi, rdi
	lea	rdi, [rdi]
	jle	.label_1788
	mov	rsp, rsp
	mov	rdi, qword ptr [r15 + 0x10]
	shl	rax, 4
	mov	rbp, rbp
	lea	rbx, [rax + rax*2]
	mov	rax, qword ptr [rdi + rbx]
	lea	rdi, [rdi]
	mov	qword ptr [rsi], rax
	mov	rsp, rsp
	mov	rax, qword ptr [r15 + 0x10]
	mov	rsp, rsp
	mov	rsi, qword ptr [rax + rbx + 0x10]
	shl	rdx, 4
	mov	rsp, rsp
	mov	rdi, rcx
	mov	rsp, rsp
	call	memcpy
	mov	rdi, qword ptr [r14 + 0x10]
	call	free
	mov	rax, qword ptr [r15 + 0x10]
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rax + rbx + 0x10]
	call	free
	mov	rax, qword ptr [r15 + 0x10]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rax + rbx + 0x28]
	lea	rsi, [rsi]
	mov	qword ptr [r14 + 0x10], rcx
	mov	rsp, rsp
	movups	xmm0, xmmword ptr [rax + rbx + 0x18]
	movups	xmmword ptr [r14], xmm0
	mov	rsp, rsp
	mov	rax, qword ptr [r15 + 0x10]
	nop	
	mov	rax, qword ptr [rax + rbx + 8]
	pop	rbx
	mov	rsp, rsp
	pop	r14
	nop	
	pop	r15
	mov	rbp, rbp
	ret	
.label_1788:
	mov	edi, OFFSET FLAT:.str.26_0
	lea	rsi, [rsi]
	mov	esi, OFFSET FLAT:.str.22_0
	mov	edx, 0x555
	lea	rdi, [rdi]
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.pop_fail_stack
	call	__assert_fail
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x419d50

	.globl proceed_next_node
	.type proceed_next_node, @function
proceed_next_node:
	push	rbp
	push	r15
	lea	rdi, [rdi]
	push	r14
	push	r13
	lea	rdi, [rdi]
	push	r12
	push	rbx
	sub	rsp, 0x28
	mov	rbp, rbp
	mov	r13, r8
	mov	rsp, rsp
	mov	rbx, rcx
	nop	
	mov	rbp, rdi
	mov	rbp, rbp
	mov	r15, qword ptr [rbp + 0x98]
	mov	rsp, rsp
	mov	rax, qword ptr [r15]
	mov	r14, r13
	mov	rsp, rsp
	shl	r14, 4
	mov	ecx, dword ptr [rax + r14 + 8]
	mov	rsp, rsp
	test	cl, 8
	jne	.label_1797
	test	ecx, 0x100000
	nop	
	jne	.label_1791
	mov	qword ptr [rsp + 0x20], rbx
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x18], r9
	movzx	ecx, cl
	lea	rdi, [rdi]
	cmp	ecx, 4
	mov	rbp, rbp
	jne	.label_1793
	mov	rsp, rsp
	mov	rax, qword ptr [rax + r14]
	shl	rax, 4
	mov	rdi, qword ptr [rax + rdx + 0x10]
	mov	rax, qword ptr [rax + rdx + 0x18]
	lea	rsi, [rsi]
	mov	rbx, rax
	mov	rbp, rbp
	sub	rbx, rdi
	cmp	qword ptr [rsp + 0x60], 0
	je	.label_1790
	cmp	rax, -1
	mov	r12, -1
	lea	rdi, [rdi]
	je	.label_1789
	cmp	rdi, -1
	mov	rbp, rbp
	je	.label_1789
	mov	rbp, rbp
	cmp	rax, rdi
	mov	rsp, rsp
	je	.label_1790
	mov	qword ptr [rsp + 0x10], rax
	mov	rbp, rbp
	mov	rax, qword ptr [rbp + 0x30]
	nop	
	mov	rcx, qword ptr [rsp + 0x20]
	nop	
	mov	rsi, qword ptr [rcx]
	sub	rax, rsi
	lea	rsi, [rsi]
	cmp	rax, rbx
	jl	.label_1789
	mov	rax, qword ptr [rbp + 8]
	add	rsi, rax
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 8], rdi
	mov	rsp, rsp
	mov	rcx, qword ptr [rsp + 8]
	lea	rdi, [rax + rcx]
	mov	rdx, rbx
	call	memcmp
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rsp + 8]
	test	eax, eax
	mov	rax, qword ptr [rsp + 0x10]
	mov	rbp, rbp
	jne	.label_1789
.label_1790:
	mov	rsp, rsp
	cmp	rax, rdi
	mov	rsp, rsp
	jne	.label_1800
	mov	rsp, rsp
	mov	rdi, qword ptr [rsp + 0x18]
	nop	
	mov	rsi, r13
	mov	rbp, rbp
	call	re_node_set_insert
	mov	r12, -2
	test	al, al
	je	.label_1789
	mov	rax, qword ptr [r15 + 0x28]
	mov	rbp, rbp
	lea	rcx, [r13 + r13*2]
	mov	rax, qword ptr [rax + rcx*8 + 0x10]
	nop	
	mov	r12, qword ptr [rax]
	mov	rax, qword ptr [rsp + 0x20]
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp + 0xb8]
	nop	
	mov	rdi, qword ptr [rcx + rax*8]
	add	rdi, 8
	lea	rdi, [rdi]
	mov	rsi, r12
	call	re_node_set_contains
	test	rax, rax
	lea	rdi, [rdi]
	jne	.label_1789
	jmp	.label_1800
.label_1797:
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 8], rsi
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x10], rdx
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbx]
	mov	qword ptr [rsp + 0x20], rbx
	mov	rcx, qword ptr [rbp + 0xb8]
	nop	
	mov	r14, qword ptr [rcx + rax*8]
	mov	rsp, rsp
	mov	rbx, qword ptr [r15 + 0x28]
	mov	rdi, r9
	mov	qword ptr [rsp + 0x18], r9
	mov	rbp, rbp
	mov	rsi, r13
	lea	rsi, [rsi]
	call	re_node_set_insert
	mov	r12, -2
	test	al, al
	je	.label_1789
	lea	rax, [r13 + r13*2]
	mov	r12, -1
	cmp	qword ptr [rbx + rax*8 + 8], 0
	jle	.label_1789
	add	r14, 8
	mov	rbp, rbp
	lea	r15, [rbx + rax*8 + 8]
	mov	rsp, rsp
	mov	r13, qword ptr [rbx + rax*8 + 0x10]
	mov	rsp, rsp
	mov	r12, -1
	lea	rsi, [rsi]
	xor	ebp, ebp
	nop	dword ptr [rax]
.label_1795:
	mov	rsp, rsp
	mov	rbx, qword ptr [r13 + rbp*8]
	lea	rdi, [rdi]
	mov	rdi, r14
	mov	rbp, rbp
	mov	rsi, rbx
	call	re_node_set_contains
	test	rax, rax
	je	.label_1792
	cmp	r12, -1
	lea	rdi, [rdi]
	jne	.label_1794
	mov	r12, rbx
.label_1792:
	lea	rsi, [rsi]
	inc	rbp
	lea	rsi, [rsi]
	cmp	rbp, qword ptr [r15]
	jl	.label_1795
	mov	rbp, rbp
	jmp	.label_1789
.label_1791:
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x18], r9
	mov	rcx, qword ptr [rbx]
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x20], rbx
	mov	rbp, rbp
	mov	rdi, r15
	mov	rsi, r13
	mov	rdx, rbp
	call	check_node_accept_bytes
	nop	
	movsxd	rbx, eax
.label_1800:
	mov	rbp, rbp
	test	rbx, rbx
	jne	.label_1799
.label_1793:
	mov	rbp, rbp
	add	r14, qword ptr [r15]
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 0x20]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rax]
	mov	rdi, rbp
	lea	rdi, [rdi]
	mov	rsi, r14
	call	check_node_accept
	mov	r12, -1
	lea	rsi, [rsi]
	mov	ebx, 1
	lea	rdi, [rdi]
	test	al, al
	nop	
	je	.label_1789
.label_1799:
	mov	rax, qword ptr [r15 + 0x18]
	lea	rsi, [rsi]
	mov	r14, qword ptr [rax + r13*8]
	mov	rax, qword ptr [rsp + 0x20]
	nop	
	add	rbx, qword ptr [rax]
	lea	rsi, [rsi]
	mov	qword ptr [rax], rbx
	cmp	qword ptr [rsp + 0x60], 0
	je	.label_1796
	mov	rsp, rsp
	mov	r12, -1
	nop	
	cmp	rbx, qword ptr [rbp + 0xa8]
	jg	.label_1789
	nop	
	mov	rax, qword ptr [rbp + 0xb8]
	mov	rdi, qword ptr [rax + rbx*8]
	nop	
	test	rdi, rdi
	nop	
	je	.label_1789
	mov	rsp, rsp
	add	rdi, 8
	mov	rsi, r14
	nop	
	call	re_node_set_contains
	nop	
	test	rax, rax
	je	.label_1789
.label_1796:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp + 0x18]
	mov	rbp, rbp
	mov	qword ptr [rax + 8], 0
	mov	r12, r14
	lea	rdi, [rdi]
	jmp	.label_1789
.label_1794:
	mov	rbp, rbp
	mov	rbp, qword ptr [rsp + 0x18]
	lea	rdi, [rdi]
	mov	rdi, rbp
	lea	rsi, [rsi]
	mov	rsi, r12
	call	re_node_set_contains
	test	rax, rax
	mov	rsp, rsp
	jne	.label_1798
	lea	rdi, [rdi]
	mov	r9, rbp
	nop	
	mov	rdi, qword ptr [rsp + 0x60]
	mov	rsp, rsp
	test	rdi, rdi
	je	.label_1789
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0x20]
	mov	rsi, qword ptr [rax]
	lea	rsi, [rsi]
	mov	rdx, rbx
	mov	rcx, qword ptr [rsp + 8]
	mov	r8, qword ptr [rsp + 0x10]
	nop	
	call	push_fail_stack
	mov	rbp, rbp
	mov	rbx, -2
	test	eax, eax
	je	.label_1789
.label_1798:
	mov	r12, rbx
.label_1789:
	nop	
	mov	rax, r12
	mov	rsp, rsp
	add	rsp, 0x28
	pop	rbx
	lea	rdi, [rdi]
	pop	r12
	pop	r13
	lea	rdi, [rdi]
	pop	r14
	mov	rsp, rsp
	pop	r15
	pop	rbp
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x41a150

	.globl push_fail_stack
	.type push_fail_stack, @function
push_fail_stack:
	push	rbp
	push	r15
	lea	rsi, [rsi]
	push	r14
	lea	rsi, [rsi]
	push	r13
	push	r12
	lea	rsi, [rsi]
	push	rbx
	sub	rsp, 0x18
	nop	
	mov	qword ptr [rsp + 0x10], r9
	mov	qword ptr [rsp + 8], r8
	lea	rdi, [rdi]
	mov	r15, rcx
	mov	r13, rdx
	lea	rdi, [rdi]
	mov	rbp, rsi
	mov	rbx, rdi
	mov	rbp, rbp
	mov	r14, qword ptr [rbx]
	mov	rsp, rsp
	lea	rcx, [r14 + 1]
	mov	qword ptr [rbx], rcx
	mov	rax, qword ptr [rbx + 8]
	nop	
	cmp	rcx, rax
	mov	rsp, rsp
	jne	.label_1801
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbx + 0x10]
	mov	rbp, rbp
	shl	rax, 5
	mov	rsp, rsp
	lea	rsi, [rax + rax*2]
	call	realloc
	mov	rbp, rbp
	test	rax, rax
	nop	
	je	.label_1802
	shl	qword ptr [rbx + 8], 1
	lea	rdi, [rdi]
	mov	qword ptr [rbx + 0x10], rax
.label_1801:
	nop	
	mov	rax, qword ptr [rbx + 0x10]
	lea	rsi, [rsi]
	mov	rcx, r14
	shl	rcx, 4
	nop	
	lea	r12, [rcx + rcx*2]
	lea	rsi, [rsi]
	mov	qword ptr [rax + r12], rbp
	mov	rbp, rbp
	mov	rax, qword ptr [rbx + 0x10]
	nop	
	mov	qword ptr [rax + r12 + 8], r13
	mov	rsp, rsp
	shl	r15, 4
	mov	rdi, r15
	call	malloc
	mov	rcx, qword ptr [rbx + 0x10]
	mov	rsp, rsp
	mov	qword ptr [rcx + r12 + 0x10], rax
	mov	rbp, rbp
	mov	rax, qword ptr [rbx + 0x10]
	mov	rsp, rsp
	mov	rdi, qword ptr [rax + r12 + 0x10]
	mov	rbp, rbp
	test	rdi, rdi
	je	.label_1802
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rsp + 8]
	nop	
	mov	rdx, r15
	call	memcpy
	mov	rax, qword ptr [rbx + 0x10]
	lea	rcx, [r14 + r14*2]
	shl	rcx, 4
	lea	rdi, [rdi]
	lea	rdi, [rax + rcx + 0x18]
	mov	rsi, qword ptr [rsp + 0x10]
	mov	rsp, rsp
	add	rsp, 0x18
	mov	rbp, rbp
	pop	rbx
	pop	r12
	mov	rsp, rsp
	pop	r13
	pop	r14
	pop	r15
	lea	rsi, [rsi]
	pop	rbp
	jmp	re_node_set_init_copy
.label_1802:
	mov	eax, 0xc
	add	rsp, 0x18
	mov	rsp, rsp
	pop	rbx
	pop	r12
	mov	rsp, rsp
	pop	r13
	pop	r14
	lea	rdi, [rdi]
	pop	r15
	lea	rdi, [rdi]
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x41a2a0
	.globl c_isalnum
	.type c_isalnum, @function
c_isalnum:

	mov	al, 1
	lea	ecx, [rdi - 0x41]
	cmp	ecx, 0x39
	ja	.label_1803
	movabs	rdx, 0x3ffffff03ffffff
	bt	rdx, rcx
	jae	.label_1803
.label_1804:
	ret	
.label_1803:
	add	edi, -0x30
	cmp	edi, 0xa
	jb	.label_1804
	xor	eax, eax
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x41a2d0
	.globl c_isalpha
	.type c_isalpha, @function
c_isalpha:

	add	edi, -0x41
	cmp	edi, 0x39
	ja	.label_1805
	movabs	rax, 0x3ffffff03ffffff
	mov	cl, dil
	shr	rax, cl
	and	eax, 1
	ret	
.label_1805:
	xor	eax, eax
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x41a2f0
	.globl c_isascii
	.type c_isascii, @function
c_isascii:

	cmp	edi, 0x80
	setb	al
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x41a300
	.globl c_isblank
	.type c_isblank, @function
c_isblank:

	cmp	edi, 0x20
	sete	cl
	cmp	edi, 9
	sete	al
	or	al, cl
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x41a310
	.globl c_iscntrl
	.type c_iscntrl, @function
c_iscntrl:

	mov	al, 1
	cmp	edi, 0x20
	jae	.label_1806
.label_1807:
	ret	
.label_1806:
	cmp	edi, 0x7f
	je	.label_1807
	xor	eax, eax
	jmp	.label_1807
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x41a330
	.globl c_isdigit
	.type c_isdigit, @function
c_isdigit:

	add	edi, -0x30
	cmp	edi, 0xa
	setb	al
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x41a340
	.globl c_isgraph
	.type c_isgraph, @function
c_isgraph:

	add	edi, -0x21
	cmp	edi, 0x5e
	setb	al
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x41a350
	.globl c_islower
	.type c_islower, @function
c_islower:

	add	edi, -0x61
	cmp	edi, 0x1a
	setb	al
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x41a360
	.globl c_isprint
	.type c_isprint, @function
c_isprint:

	add	edi, -0x20
	cmp	edi, 0x5f
	setb	al
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x41a370
	.globl c_ispunct
	.type c_ispunct, @function
c_ispunct:

	mov	al, 1
	lea	ecx, [rdi - 0x21]
	cmp	ecx, 0x3f
	ja	.label_1808
	movabs	rdx, 0xfc000000fe007fff
	bt	rdx, rcx
	jae	.label_1808
.label_1809:
	ret	
.label_1808:
	add	edi, -0x7b
	cmp	edi, 4
	jb	.label_1809
	xor	eax, eax
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x41a3a0
	.globl c_isspace
	.type c_isspace, @function
c_isspace:

	add	edi, -9
	cmp	edi, 0x17
	ja	.label_1810
	mov	eax, 0x80001f
	mov	cl, dil
	shr	eax, cl
	and	eax, 1
	ret	
.label_1810:
	xor	eax, eax
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x41a3c0

	.globl c_isupper
	.type c_isupper, @function
c_isupper:
	add	edi, -0x41
	cmp	edi, 0x1a
	setb	al
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x41a3d0
	.globl c_isxdigit
	.type c_isxdigit, @function
c_isxdigit:

	add	edi, -0x30
	cmp	edi, 0x36
	ja	.label_1811
	movabs	rax, 0x7e0000007e03ff
	mov	cl, dil
	shr	rax, cl
	and	eax, 1
	ret	
.label_1811:
	xor	eax, eax
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x41a3f0
	.globl c_tolower
	.type c_tolower, @function
c_tolower:

	lea	ecx, [rdi - 0x41]
	lea	eax, [rdi + 0x20]
	cmp	ecx, 0x1a
	cmovae	eax, edi
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x41a400
	.globl c_toupper
	.type c_toupper, @function
c_toupper:

	lea	ecx, [rdi - 0x61]
	lea	eax, [rdi - 0x20]
	cmp	ecx, 0x1a
	cmovae	eax, edi
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x41a410

	.globl close_stream
	.type close_stream, @function
close_stream:
	mov	rsp, rsp
	push	rbp
	push	r14
	push	rbx
	mov	rbx, rdi
	lea	rsi, [rsi]
	call	__fpending
	nop	
	mov	r14, rax
	mov	rdi, rbx
	mov	rbp, rbp
	call	ferror_unlocked
	mov	ebp, eax
	mov	rdi, rbx
	nop	
	call	rpl_fclose
	mov	rbp, rbp
	test	ebp, ebp
	nop	
	je	.label_1813
	mov	ebx, 0xffffffff
	mov	rbp, rbp
	test	eax, eax
	jne	.label_1812
	lea	rsi, [rsi]
	call	__errno_location
	mov	dword ptr [rax], 0
	mov	rsp, rsp
	jmp	.label_1812
.label_1813:
	test	eax, eax
	mov	rbp, rbp
	sete	cl
	neg	eax
	nop	
	sbb	ebx, ebx
	lea	rsi, [rsi]
	test	r14, r14
	jne	.label_1812
	test	cl, cl
	jne	.label_1812
	lea	rsi, [rsi]
	call	__errno_location
	mov	rbp, rbp
	xor	ecx, ecx
	lea	rdi, [rdi]
	cmp	dword ptr [rax], 9
	mov	ebx, 0xffffffff
	nop	
	cmove	ebx, ecx
.label_1812:
	mov	rsp, rsp
	mov	eax, ebx
	pop	rbx
	pop	r14
	lea	rdi, [rdi]
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	nop	
	.section	.text
	.align	32
	#Procedure 0x41a4b0

	.globl hard_locale
	.type hard_locale, @function
hard_locale:
	nop	
	push	rbx
	lea	rdi, [rdi]
	xor	esi, esi
	call	setlocale
	mov	bl, 1
	mov	rsp, rsp
	test	rax, rax
	nop	
	je	.label_1815
	movzx	ecx, byte ptr [rax]
	cmp	ecx, 0x43
	jne	.label_1814
	mov	rsp, rsp
	cmp	byte ptr [rax + 1], 0
	je	.label_1816
.label_1814:
	nop	
	mov	esi, OFFSET FLAT:.str.1_4
	mov	rsp, rsp
	mov	rdi, rax
	lea	rsi, [rsi]
	call	strcmp
	mov	rsp, rsp
	test	eax, eax
	jne	.label_1815
.label_1816:
	lea	rdi, [rdi]
	xor	ebx, ebx
.label_1815:
	mov	al, bl
	lea	rdi, [rdi]
	pop	rbx
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x41a500

	.globl locale_charset
	.type locale_charset, @function
locale_charset:
	mov	rsp, rsp
	push	rax
	mov	rsp, rsp
	mov	edi, 0xe
	mov	rbp, rbp
	call	rpl_nl_langinfo
	test	rax, rax
	lea	rdi, [rdi]
	mov	ecx, OFFSET FLAT:.str
	nop	
	cmovne	rcx, rax
	mov	eax, OFFSET FLAT:.str.1_5
	cmp	byte ptr [rcx], 0
	lea	rsi, [rsi]
	je	.label_1817
	nop	
	mov	rax, rcx
.label_1817:
	pop	rcx
	lea	rsi, [rsi]
	ret	
	nop	word ptr [rax + rax]
	.section .text
	.align	32
	#Procedure 0x41a540

	.globl rpl_nl_langinfo
	.type rpl_nl_langinfo, @function
rpl_nl_langinfo:
	lea	eax, [rdi - 0x27d8]
	lea	ecx, [rdi + 0x1d842]
	cmp	eax, 0xc
	cmovb	edi, ecx
	lea	rsi, [rsi]
	jmp	nl_langinfo
	nop	word ptr [rax + rax]
	nop	
	nop	word ptr cs:[rax + rax]
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax]
	nop	word ptr cs:[rax + rax]
