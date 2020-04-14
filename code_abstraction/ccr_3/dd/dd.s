	.section	.text
	.align	32
	#Procedure 0x401e40

	.globl usage
	.type usage, @function
usage:
	push	rbp
	push	rbx
	push	rax
	mov	ebp, edi
	test	ebp, ebp
	jne	.label_23
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_26
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	rdx,  qword ptr [word ptr [rip + program_name]]
	mov	edi, 1
	xor	eax, eax
	mov	rsi, rcx
	mov	rcx, rdx
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_24
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_19
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_22
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_11
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_25
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_20
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_34
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_31
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_12
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_10
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_32
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_13
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_33
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_14
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_28
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_15
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_29
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_16
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_30
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_18
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_17
	xor	eax, eax
	mov	rsi, rcx
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_9
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_21
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	call	emit_ancillary_info
	mov	edi, ebp
	call	exit
.label_23:
	mov	rbx,  qword ptr [word ptr [rip + stderr]]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_27
	mov	edx, 5
	call	dcgettext
	mov	rdx, rax
	mov	rcx,  qword ptr [word ptr [rip + program_name]]
	mov	esi, 1
	xor	eax, eax
	mov	rdi, rbx
	call	__fprintf_chk
	mov	edi, ebp
	call	exit
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402190

	.globl emit_ancillary_info
	.type emit_ancillary_info, @function
emit_ancillary_info:
	push	r14
	push	rbx
	push	rax
	mov	ebx, OFFSET FLAT:emit_ancillary_info.infomap
	mov	esi, OFFSET FLAT:label_43
	nop	
.label_42:
	mov	edi, OFFSET FLAT:label_35
	call	strcmp
	test	eax, eax
	je	.label_40
	mov	rsi, qword ptr [rbx + 0x10]
	add	rbx, 0x10
	test	rsi, rsi
	jne	.label_42
.label_40:
	mov	rax, qword ptr [rbx + 8]
	test	rax, rax
	mov	ebx, OFFSET FLAT:label_35
	cmovne	rbx, rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_44
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_38
	mov	ecx, OFFSET FLAT:label_39
	xor	eax, eax
	call	__printf_chk
	mov	edi, 5
	xor	esi, esi
	call	setlocale
	test	rax, rax
	je	.label_36
	mov	esi, OFFSET FLAT:label_37
	mov	edx, 3
	mov	rdi, rax
	call	strncmp
	test	eax, eax
	je	.label_36
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_48
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
.label_36:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_45
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	r14d, OFFSET FLAT:label_35
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_39
	mov	ecx, OFFSET FLAT:label_35
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_41
	mov	edx, 5
	call	dcgettext
	mov	rdx, rax
	cmp	rbx, r14
	mov	eax, OFFSET FLAT:label_46
	mov	ecx, OFFSET FLAT:label_47
	cmove	rcx, rax
	mov	edi, 1
	xor	eax, eax
	mov	rsi, rdx
	mov	rdx, rbx
	add	rsp, 8
	pop	rbx
	pop	r14
	jmp	__printf_chk
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4022b0

	.globl main
	.type main, @function
main:
	push	rbp
	push	r14
	push	rbx
	sub	rsp, 0x90
	mov	rbx, rsi
	mov	r14d, edi
	call	install_signal_handlers
	mov	rdi, qword ptr [rbx]
	call	set_program_name
	mov	edi, 6
	mov	esi, OFFSET FLAT:label_47
	call	setlocale
	mov	edi, OFFSET FLAT:label_51
	mov	esi, OFFSET FLAT:label_75
	call	bindtextdomain
	mov	edi, OFFSET FLAT:label_51
	call	textdomain
	mov	edi, OFFSET FLAT:maybe_close_stdout
	call	atexit
	call	getpagesize
	cdqe	
	mov	qword ptr [word ptr [rip + page_size]],  rax
	mov	r8,  qword ptr [word ptr [rip + Version]]
	sub	rsp, 8
	xor	ebp, ebp
	mov	edx, OFFSET FLAT:label_35
	mov	ecx, OFFSET FLAT:label_51
	mov	r9d, 1
	mov	eax, 0
	mov	edi, r14d
	mov	rsi, rbx
	push	0
	push	OFFSET FLAT:label_52
	push	OFFSET FLAT:label_53
	push	OFFSET FLAT:label_54
	push	OFFSET FLAT:usage
	call	parse_gnu_standard_options_only
	add	rsp, 0x30
	mov	byte ptr [byte ptr [rip + close_stdout_required]],  1
	nop	dword ptr [rax]
.label_76:
	mov	byte ptr [byte ptr [rbp + trans_table]],  bpl
	inc	rbp
	cmp	rbp, 0x100
	jne	.label_76
	mov	edi, r14d
	mov	rsi, rbx
	call	scanargs
	call	apply_translations
	mov	rsi,  qword ptr [word ptr [rip + input_file]]
	test	rsi, rsi
	je	.label_50
	mov	edx,  dword ptr [dword ptr [rip + input_flags]]
	xor	edi, edi
	xor	ecx, ecx
	call	ifd_reopen
	test	eax, eax
	jns	.label_61
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_63
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	mov	rsi,  qword ptr [word ptr [rip + input_file]]
	jmp	.label_79
.label_50:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_69
	mov	edx, 5
	call	dcgettext
	mov	qword ptr [word ptr [rip + input_file]],  rax
	mov	esi,  dword ptr [dword ptr [rip + input_flags]]
	xor	edi, edi
	mov	rdx, rax
	call	set_fd_flags
.label_61:
	xor	ebp, ebp
	xor	edi, edi
	xor	esi, esi
	mov	edx, 1
	call	lseek
	test	rax, rax
	setns	byte ptr [byte ptr [rip + input_seekable]]
	cmovs	rax, rbp
	mov	qword ptr [word ptr [rip + input_offset]],  rax
	call	__errno_location
	mov	r14, rax
	mov	eax, dword ptr [r14]
	mov	dword ptr [dword ptr [rip + input_seek_errno]],  eax
	mov	rsi,  qword ptr [word ptr [rip + output_file]]
	test	rsi, rsi
	je	.label_60
	mov	eax,  dword ptr [dword ptr [rip + conversions_mask]]
	mov	ecx, eax
	shr	ecx, 6
	mov	edx, ecx
	not	edx
	and	edx, 0x40
	and	ecx, 0x80
	mov	rdi,  qword ptr [word ptr [rip + seek_records]]
	xor	ebx, ebx
	cmp	rdi, 0
	sete	bl
	shl	ebx, 9
	test	ah, 2
	cmovne	ebx, ebp
	or	ecx,  dword ptr [dword ptr [rip + output_flags]]
	or	ebx, edx
	or	ebx, ecx
	cmp	rdi, 0
	je	.label_66
	mov	edx, ebx
	or	edx, 2
	mov	edi, 1
	mov	ecx, 0x1b6
	call	ifd_reopen
	test	eax, eax
	jns	.label_56
.label_66:
	mov	rsi,  qword ptr [word ptr [rip + output_file]]
	or	ebx, 1
	mov	edi, 1
	mov	ecx, 0x1b6
	mov	edx, ebx
	call	ifd_reopen
	test	eax, eax
	js	.label_64
.label_56:
	mov	rcx,  qword ptr [word ptr [rip + seek_records]]
	test	rcx, rcx
	je	.label_49
	test	byte ptr [byte ptr [rip + label_68]],  2
	jne	.label_49
	mov	rbx,  qword ptr [word ptr [rip + output_blocksize]]
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rcx
	jb	.label_71
	imul	rbx, rcx
	add	rbx,  qword ptr [word ptr [rip + seek_bytes]]
	mov	rdi, rbx
	call	iftruncate
	test	eax, eax
	je	.label_49
	mov	ebp, dword ptr [r14]
	lea	rsi, [rsp]
	mov	edi, 1
	call	fstat
	test	eax, eax
	jne	.label_62
	movzx	eax, word ptr [rsp + 0x18]
	and	eax, 0xf000
	cmp	eax, 0x4000
	je	.label_72
	movzx	eax, ax
	cmp	eax, 0x8000
	jne	.label_49
.label_72:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_67
	mov	edx, 5
	call	dcgettext
	mov	r14, rax
	mov	rsi,  qword ptr [word ptr [rip + output_file]]
	mov	edi, 4
	call	quotearg_style
	mov	r8, rax
	mov	edi, 1
	xor	eax, eax
	mov	esi, ebp
	mov	rdx, r14
	mov	rcx, rbx
	call	nl_error
.label_60:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_80
	mov	edx, 5
	call	dcgettext
	mov	qword ptr [word ptr [rip + output_file]],  rax
	mov	esi,  dword ptr [dword ptr [rip + output_flags]]
	mov	edi, 1
	mov	rdx, rax
	call	set_fd_flags
.label_49:
	call	gethrxtime
	mov	qword ptr [word ptr [rip + start_time]],  rax
	add	rax, 0x3b9aca00
	mov	qword ptr [word ptr [rip + next_time]],  rax
	call	dd_copy
	mov	ebx, eax
	mov	rcx,  qword ptr [word ptr [rip + max_bytes]]
	mov	al,  byte ptr [byte ptr [rip + i_nocache]]
	or	rcx,  qword ptr [word ptr [rip + max_records]]
	je	.label_58
	cmp	byte ptr [byte ptr [rip + i_nocache_eof]],  0
	jne	.label_74
	xor	al, 1
	test	al, 1
	jne	.label_77
.label_74:
	xor	edi, edi
	xor	esi, esi
	call	invalidate_cache
.label_77:
	cmp	byte ptr [byte ptr [rip + o_nocache_eof]],  0
	jne	.label_70
	mov	al,  byte ptr [byte ptr [rip + o_nocache]]
	xor	al, 1
	test	al, 1
	jne	.label_59
.label_70:
	mov	edi, 1
	xor	esi, esi
	call	invalidate_cache
	jmp	.label_59
.label_58:
	test	al, 1
	je	.label_65
	xor	edi, edi
	xor	esi, esi
	call	invalidate_cache
	test	al, al
	jne	.label_65
	mov	ebx, dword ptr [r14]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_55
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	mov	rdx,  qword ptr [word ptr [rip + input_file]]
	xor	edi, edi
	mov	esi, 3
	call	quotearg_n_style_colon
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, rbp
	call	nl_error
	mov	ebx, 1
.label_65:
	cmp	byte ptr [byte ptr [rip + o_nocache]],  1
	jne	.label_59
	mov	edi, 1
	xor	esi, esi
	call	invalidate_cache
	test	al, al
	jne	.label_59
	mov	ebx, dword ptr [r14]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_55
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	mov	rdx,  qword ptr [word ptr [rip + output_file]]
	xor	edi, edi
	mov	esi, 3
	call	quotearg_n_style_colon
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, rbp
	call	nl_error
	mov	ebx, 1
.label_59:
	call	finish_up
	mov	eax, ebx
	add	rsp, 0x90
	pop	rbx
	pop	r14
	pop	rbp
	ret	
.label_64:
	mov	ebx, dword ptr [r14]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_63
	jmp	.label_73
.label_71:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_78
	mov	edx, 5
	call	dcgettext
	mov	rdx, rax
	mov	rcx,  qword ptr [word ptr [rip + seek_records]]
	mov	edi, 1
	xor	esi, esi
	xor	eax, eax
	mov	r8, rbx
	call	nl_error
.label_62:
	mov	ebx, dword ptr [r14]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_57
.label_73:
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	mov	rsi,  qword ptr [word ptr [rip + output_file]]
.label_79:
	mov	edi, 4
	call	quotearg_style
	mov	rcx, rax
	mov	edi, 1
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, rbp
	call	nl_error
	nop	
	.section	.text
	.align	32
	#Procedure 0x402750

	.globl install_signal_handlers
	.type install_signal_handlers, @function
install_signal_handlers:
	push	rbx
	sub	rsp, 0xa0
	mov	edi, OFFSET FLAT:label_89
	call	getenv
	mov	rbx, rax
	mov	edi, OFFSET FLAT:caught_signals
	call	sigemptyset
	test	rbx, rbx
	jne	.label_88
	mov	edi, OFFSET FLAT:caught_signals
	mov	esi, 0xa
	call	sigaddset
.label_88:
	lea	rdx, [rsp + 8]
	mov	edi, 2
	xor	esi, esi
	call	sigaction
	cmp	qword ptr [rsp + 8], 1
	je	.label_91
	mov	edi, OFFSET FLAT:caught_signals
	mov	esi, 2
	call	sigaddset
.label_91:
	movups	xmm0,  xmmword ptr [word ptr [rip + label_81]]
	movups	xmmword ptr [rsp + 0x80], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_82]]
	movups	xmmword ptr [rsp + 0x70], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_83]]
	movups	xmmword ptr [rsp + 0x60], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_84]]
	movups	xmmword ptr [rsp + 0x50], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_85]]
	movups	xmmword ptr [rsp + 0x40], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_86]]
	movups	xmmword ptr [rsp + 0x30], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_87]]
	movups	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + caught_signals]]
	movups	xmmword ptr [rsp + 0x10], xmm0
	mov	edi, OFFSET FLAT:caught_signals
	mov	esi, 0xa
	call	sigismember
	test	eax, eax
	je	.label_92
	mov	qword ptr [word ptr [rsp + 8]], OFFSET FLAT:siginfo_handler
	mov	dword ptr [rsp + 0x90], 0
	lea	rsi, [rsp + 8]
	mov	edi, 0xa
	xor	edx, edx
	call	sigaction
.label_92:
	mov	edi, OFFSET FLAT:caught_signals
	mov	esi, 2
	call	sigismember
	test	eax, eax
	je	.label_90
	mov	qword ptr [word ptr [rsp + 8]], OFFSET FLAT:interrupt_handler
	mov	dword ptr [rsp + 0x90], 0xc0000000
	lea	rsi, [rsp + 8]
	mov	edi, 2
	xor	edx, edx
	call	sigaction
.label_90:
	add	rsp, 0xa0
	pop	rbx
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402890

	.globl maybe_close_stdout
	.type maybe_close_stdout, @function
maybe_close_stdout:
	push	rax
	mov	al,  byte ptr [byte ptr [rip + close_stdout_required]]
	test	al, al
	je	.label_93
	mov	rdi,  qword ptr [word ptr [rip + stderr]]
	call	close_stream
	test	eax, eax
	jne	.label_94
	pop	rax
	ret	
.label_93:
	pop	rax
	jmp	close_stdout
.label_94:
	mov	edi, 1
	call	_exit
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4028c0

	.globl scanargs
	.type scanargs, @function
scanargs:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x38
	mov	rbx, rsi
	movsxd	r14,  dword ptr [dword ptr [rip + optind]]
	mov	r12, -1
	xor	esi, esi
	cmp	r14d, edi
	mov	eax, 0
	jge	.label_153
	movsxd	r15, edi
	mov	r12, -1
	xor	eax, eax
	mov	qword ptr [rsp + 0x30], rax
	xor	eax, eax
	mov	qword ptr [rsp + 0x18], rax
	xor	eax, eax
	mov	qword ptr [rsp + 0x20], rax
	nop	
.label_165:
	mov	r13, qword ptr [rbx + r14*8]
	mov	esi, 0x3d
	mov	rdi, r13
	call	strchr
	mov	rbp, rax
	test	rbp, rbp
	je	.label_96
	inc	rbp
	mov	esi, OFFSET FLAT:label_114
	mov	rdi, r13
	call	operand_is
	test	al, al
	je	.label_119
	mov	qword ptr [word ptr [rip + input_file]],  rbp
	jmp	.label_112
	nop	dword ptr [rax]
.label_119:
	mov	esi, OFFSET FLAT:label_151
	mov	rdi, r13
	call	operand_is
	test	al, al
	je	.label_127
	mov	qword ptr [word ptr [rip + output_file]],  rbp
	jmp	.label_112
	nop	dword ptr [rax]
.label_127:
	mov	esi, OFFSET FLAT:label_132
	mov	rdi, r13
	call	operand_is
	test	al, al
	je	.label_135
	mov	esi, OFFSET FLAT:conversions
	xor	edx, edx
	mov	ecx, OFFSET FLAT:label_136
	mov	rdi, rbp
	call	parse_symbols
	or	dword ptr [dword ptr [rip + conversions_mask]],  eax
	jmp	.label_112
.label_135:
	mov	esi, OFFSET FLAT:label_144
	mov	rdi, r13
	call	operand_is
	test	al, al
	je	.label_150
	mov	esi, OFFSET FLAT:flags
	xor	edx, edx
	mov	ecx, OFFSET FLAT:label_97
	mov	rdi, rbp
	call	parse_symbols
	or	dword ptr [dword ptr [rip + input_flags]],  eax
	jmp	.label_112
.label_150:
	mov	esi, OFFSET FLAT:label_157
	mov	rdi, r13
	call	operand_is
	test	al, al
	je	.label_162
	mov	esi, OFFSET FLAT:flags
	xor	edx, edx
	mov	ecx, OFFSET FLAT:label_108
	mov	rdi, rbp
	call	parse_symbols
	or	dword ptr [dword ptr [rip + output_flags]],  eax
	jmp	.label_112
.label_162:
	mov	esi, OFFSET FLAT:label_95
	mov	rdi, r13
	call	operand_is
	test	al, al
	je	.label_102
	mov	esi, OFFSET FLAT:statuses
	mov	edx, 1
	mov	ecx, OFFSET FLAT:label_104
	mov	rdi, rbp
	call	parse_symbols
	mov	dword ptr [dword ptr [rip + status_level]],  eax
	jmp	.label_112
.label_102:
	mov	dword ptr [rsp + 0xc], 0
	mov	rdi, rbp
	lea	rsi, [rsp + 0xc]
	call	parse_integer
	mov	qword ptr [rsp + 0x10], rax
	mov	esi, OFFSET FLAT:label_122
	mov	rdi, r13
	call	operand_is
	test	al, al
	mov	qword ptr [rsp + 0x28], r12
	je	.label_126
	mov	rax,  qword ptr [word ptr [rip + page_size]]
	add	rax, rax
	mov	r12, -4
	sub	r12, rax
	movabs	rax, 0x7fffffffffffffff
	cmp	r12, rax
	cmovae	r12, rax
	mov	rcx, qword ptr [rsp + 0x10]
	mov	qword ptr [word ptr [rip + input_blocksize]],  rcx
	mov	eax, 1
	jmp	.label_120
.label_126:
	mov	esi, OFFSET FLAT:label_143
	mov	rdi, r13
	call	operand_is
	test	al, al
	je	.label_149
	mov	r12,  qword ptr [word ptr [rip + page_size]]
	neg	r12
	movabs	rax, 0x7fffffffffffffff
	cmp	r12, rax
	cmovae	r12, rax
	mov	rcx, qword ptr [rsp + 0x10]
	mov	qword ptr [word ptr [rip + output_blocksize]],  rcx
	mov	eax, 1
	jmp	.label_120
.label_149:
	mov	esi, OFFSET FLAT:label_163
	mov	rdi, r13
	call	operand_is
	test	al, al
	je	.label_152
	mov	rax,  qword ptr [word ptr [rip + page_size]]
	add	rax, rax
	mov	r12, -4
	sub	r12, rax
	movabs	rax, 0x7fffffffffffffff
	cmp	r12, rax
	cmovae	r12, rax
	mov	rcx, qword ptr [rsp + 0x10]
	mov	rax, rcx
	mov	qword ptr [rsp + 0x30], rax
	mov	eax, 1
	jmp	.label_120
.label_152:
	mov	esi, OFFSET FLAT:label_147
	mov	rdi, r13
	call	operand_is
	test	al, al
	je	.label_118
	mov	rcx, qword ptr [rsp + 0x10]
	mov	qword ptr [word ptr [rip + conversion_blocksize]],  rcx
	mov	r12, -1
	mov	eax, 1
	jmp	.label_120
.label_118:
	mov	esi, OFFSET FLAT:label_125
	mov	rdi, r13
	call	operand_is
	mov	r12, -1
	test	al, al
	je	.label_128
	mov	rcx, qword ptr [rsp + 0x10]
	mov	rax, rcx
	mov	qword ptr [rsp + 0x20], rax
	xor	eax, eax
	jmp	.label_120
.label_128:
	mov	esi, OFFSET FLAT:label_99
	mov	rdi, r13
	call	operand_is
	test	al, al
	je	.label_141
	mov	rcx, qword ptr [rsp + 0x10]
	mov	rax, rcx
	mov	qword ptr [rsp + 0x18], rax
	xor	eax, eax
	jmp	.label_120
.label_141:
	mov	esi, OFFSET FLAT:label_145
	mov	rdi, r13
	call	operand_is
	test	al, al
	mov	rcx, qword ptr [rsp + 0x10]
	mov	qword ptr [rsp + 0x28], rcx
	mov	eax, 0
	je	.label_96
.label_120:
	cmp	rcx, rax
	jb	.label_155
	cmp	r12, rcx
	jb	.label_154
	mov	eax, dword ptr [rsp + 0xc]
	test	eax, eax
	mov	r12, qword ptr [rsp + 0x28]
	jne	.label_160
	nop	word ptr [rax + rax]
.label_112:
	inc	r14
	cmp	r14, r15
	jl	.label_165
	mov	rax, qword ptr [rsp + 0x30]
	test	rax, rax
	je	.label_169
	mov	qword ptr [word ptr [rip + output_blocksize]],  rax
	mov	qword ptr [word ptr [rip + input_blocksize]],  rax
	mov	rsi, qword ptr [rsp + 0x18]
	mov	rax, qword ptr [rsp + 0x20]
	jmp	.label_98
.label_169:
	mov	rsi, qword ptr [rsp + 0x18]
	mov	rax, qword ptr [rsp + 0x20]
.label_153:
	or	byte ptr [byte ptr [rip + label_68]],  8
	cmp	qword ptr [word ptr [rip + input_blocksize]],  0
	jne	.label_113
	mov	qword ptr [word ptr [rip + input_blocksize]],  0x200
.label_113:
	cmp	qword ptr [word ptr [rip + output_blocksize]],  0
	jne	.label_98
	mov	qword ptr [word ptr [rip + output_blocksize]],  0x200
.label_98:
	cmp	qword ptr [word ptr [rip + conversion_blocksize]],  0
	jne	.label_109
	and	byte ptr [byte ptr [rip + conversions_mask]],  0xe7
.label_109:
	mov	ecx,  dword ptr [dword ptr [rip + input_flags]]
	test	ecx, 0x101000
	je	.label_131
	or	ecx, 0x101000
	mov	dword ptr [dword ptr [rip + input_flags]],  ecx
.label_131:
	mov	ecx,  dword ptr [dword ptr [rip + output_flags]]
	test	cl, 1
	jne	.label_138
	mov	edx,  dword ptr [dword ptr [rip + input_flags]]
	test	dl, 0x10
	jne	.label_142
	test	cl, 0xc
	jne	.label_146
	test	rax, rax
	je	.label_103
	and	edx, 8
	je	.label_103
	xor	edx, edx
	div	qword ptr [word ptr [rip + input_blocksize]]
	mov	qword ptr [word ptr [rip + skip_records]],  rax
	mov	qword ptr [word ptr [rip + skip_bytes]],  rdx
	jmp	.label_123
.label_103:
	test	rax, rax
	je	.label_123
	mov	qword ptr [word ptr [rip + skip_records]],  rax
.label_123:
	cmp	r12, -1
	je	.label_161
	mov	eax,  dword ptr [dword ptr [rip + input_flags]]
	and	eax, 4
	je	.label_161
	xor	edx, edx
	mov	rax, r12
	div	qword ptr [word ptr [rip + input_blocksize]]
	mov	qword ptr [word ptr [rip + max_records]],  rax
	mov	qword ptr [word ptr [rip + max_bytes]],  rdx
	jmp	.label_100
.label_161:
	cmp	r12, -1
	je	.label_100
	mov	qword ptr [word ptr [rip + max_records]],  r12
.label_100:
	test	rsi, rsi
	je	.label_107
	mov	eax,  dword ptr [dword ptr [rip + output_flags]]
	and	eax, 0x10
	je	.label_107
	xor	edx, edx
	mov	rax, rsi
	div	qword ptr [word ptr [rip + output_blocksize]]
	mov	qword ptr [word ptr [rip + seek_records]],  rax
	mov	qword ptr [word ptr [rip + seek_bytes]],  rdx
	jmp	.label_110
.label_107:
	test	rsi, rsi
	je	.label_110
	mov	qword ptr [word ptr [rip + seek_records]],  rsi
.label_110:
	test	byte ptr [byte ptr [rip + label_68]],  8
	jne	.label_124
	mov	ecx,  dword ptr [dword ptr [rip + input_flags]]
	test	cl, 1
	jne	.label_124
	mov	al, 1
	cmp	qword ptr [word ptr [rip + skip_records]],  0
	jne	.label_129
	mov	rdx,  qword ptr [word ptr [rip + max_records]]
	inc	rdx
	cmp	rdx, 1
	ja	.label_129
	or	ecx,  dword ptr [dword ptr [rip + output_flags]]
	and	ecx, 0x4000
	shr	ecx, 0xe
	mov	al, cl
	jmp	.label_129
.label_124:
	xor	eax, eax
.label_129:
	mov	byte ptr [byte ptr [rip + warn_partial_read]],  al
	mov	ebp,  dword ptr [dword ptr [rip + input_flags]]
	mov	eax, OFFSET FLAT:iread_fullblock
	mov	ecx, OFFSET FLAT:iread
	test	bpl, 1
	cmovne	rcx, rax
	mov	qword ptr [word ptr [rip + iread_fnc]],  rcx
	mov	eax, ebp
	and	eax, 0xfffffffe
	mov	dword ptr [dword ptr [rip + input_flags]],  eax
	mov	ebx,  dword ptr [dword ptr [rip + conversions_mask]]
	mov	edi, ebx
	and	edi, 7
	call	multiple_bits_set
	test	al, al
	jne	.label_158
	mov	edi, ebx
	and	edi, 0x18
	call	multiple_bits_set
	test	al, al
	jne	.label_164
	mov	edi, ebx
	and	edi, 0x60
	call	multiple_bits_set
	test	al, al
	jne	.label_167
	and	ebx, 0x3000
	mov	edi, ebx
	call	multiple_bits_set
	test	al, al
	jne	.label_101
	mov	edi, ebp
	and	edi, 0x4002
	call	multiple_bits_set
	test	al, al
	jne	.label_121
	mov	edi,  dword ptr [dword ptr [rip + output_flags]]
	and	edi, 0x4002
	call	multiple_bits_set
	test	al, al
	jne	.label_121
	test	bpl, 2
	je	.label_140
	mov	byte ptr [byte ptr [rip + i_nocache]],  1
	mov	rax,  qword ptr [word ptr [rip + max_bytes]]
	or	rax,  qword ptr [word ptr [rip + max_records]]
	sete	byte ptr [byte ptr [rip + i_nocache_eof]]
	and	byte ptr [byte ptr [rip + input_flags]],  0xfd
.label_140:
	test	byte ptr [byte ptr [rip + output_flags]],  2
	je	.label_130
	mov	byte ptr [byte ptr [rip + o_nocache]],  1
	mov	rax,  qword ptr [word ptr [rip + max_bytes]]
	or	rax,  qword ptr [word ptr [rip + max_records]]
	sete	byte ptr [byte ptr [rip + o_nocache_eof]]
	and	byte ptr [byte ptr [rip + output_flags]],  0xfd
.label_130:
	add	rsp, 0x38
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_96:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_148
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	rdi, r13
	call	quote
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rbx
	call	nl_error
	mov	edi, 1
	call	usage
.label_121:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_166
	jmp	.label_134
.label_138:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_108
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	edi, OFFSET FLAT:label_168
	jmp	.label_106
.label_142:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_97
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	edi, OFFSET FLAT:label_105
	jmp	.label_106
.label_146:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_108
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	eax,  dword ptr [dword ptr [rip + output_flags]]
	mov	ecx, OFFSET FLAT:label_116
	mov	edi, OFFSET FLAT:label_117
	test	al, 4
	cmovne	rdi, rcx
.label_106:
	call	quote
	mov	rbp, rax
	xor	edi, edi
	xor	esi, esi
	mov	edx, OFFSET FLAT:label_159
	xor	eax, eax
	mov	rcx, rbx
	mov	r8, rbp
	call	nl_error
	mov	edi, 1
	call	usage
.label_158:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_133
	jmp	.label_134
.label_164:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_156
	jmp	.label_134
.label_167:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_137
	jmp	.label_134
.label_101:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_139
.label_134:
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	call	nl_error
.label_155:
	mov	dword ptr [rsp + 0xc], 4
	xor	r14d, r14d
	jmp	.label_111
.label_154:
	mov	dword ptr [rsp + 0xc], 1
	mov	r14d, 0x4b
	jmp	.label_111
.label_160:
	xor	ecx, ecx
	cmp	eax, 1
	mov	r14d, 0x4b
	cmovne	r14d, ecx
.label_111:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_115
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	rdi, rbp
	call	quote
	mov	rbp, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_159
	xor	eax, eax
	mov	esi, r14d
	mov	rcx, rbx
	mov	r8, rbp
	call	nl_error
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403020

	.globl apply_translations
	.type apply_translations, @function
apply_translations:
	push	rax
	test	byte ptr [byte ptr [rip + conversions_mask]],  1
	je	.label_170
	mov	edi, OFFSET FLAT:ebcdic_to_ascii
	call	translate_charset
.label_170:
	mov	eax,  dword ptr [dword ptr [rip + conversions_mask]]
	test	al, 0x40
	jne	.label_174
	test	al, 0x20
	je	.label_178
	call	__ctype_tolower_loc
	mov	rax, qword ptr [rax]
	mov	rcx, -0x100
	nop	word ptr cs:[rax + rax]
.label_171:
	movzx	edx,  byte ptr [byte ptr [rcx + input_file]]
	movzx	edx, byte ptr [rax + rdx*4]
	mov	byte ptr [byte ptr [rcx + input_file]],  dl
	inc	rcx
	jne	.label_171
	jmp	.label_175
.label_174:
	call	__ctype_toupper_loc
	mov	rax, qword ptr [rax]
	mov	rcx, -0x100
	nop	word ptr [rax + rax]
.label_173:
	movzx	edx,  byte ptr [byte ptr [rcx + input_file]]
	movzx	edx, byte ptr [rax + rdx*4]
	mov	byte ptr [byte ptr [rcx + input_file]],  dl
	inc	rcx
	jne	.label_173
.label_175:
	mov	byte ptr [byte ptr [rip + translation_needed]],  1
.label_178:
	mov	eax,  dword ptr [dword ptr [rip + conversions_mask]]
	test	al, 2
	jne	.label_172
	test	al, 4
	je	.label_176
	mov	edi, OFFSET FLAT:ascii_to_ibm
	jmp	.label_177
.label_172:
	mov	edi, OFFSET FLAT:ascii_to_ebcdic
.label_177:
	call	translate_charset
	mov	byte ptr [byte ptr [rip + newline_character]],  1
	mov	byte ptr [byte ptr [rip + space_character]],  1
.label_176:
	pop	rax
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4030e0

	.globl set_fd_flags
	.type set_fd_flags, @function
set_fd_flags:
	push	rbp
	push	r15
	push	r14
	push	r12
	push	rbx
	sub	rsp, 0x90
	mov	r14, rdx
	mov	ebp, esi
	mov	r15d, edi
	and	ebp, 0xfffdfeff
	je	.label_181
	mov	esi, 3
	xor	eax, eax
	mov	edi, r15d
	call	rpl_fcntl
	mov	ebx, eax
	test	ebx, ebx
	js	.label_180
	or	ebp, ebx
	cmp	ebx, ebp
	je	.label_181
	mov	r12b, 1
	test	ebp, 0x10000
	je	.label_182
	lea	rsi, [rsp]
	mov	edi, r15d
	call	fstat
	test	eax, eax
	jne	.label_185
	mov	eax, 0xf000
	and	eax, dword ptr [rsp + 0x18]
	mov	r12b, 1
	cmp	eax, 0x4000
	je	.label_186
	call	__errno_location
	mov	dword ptr [rax], 0x14
.label_185:
	xor	r12d, r12d
.label_186:
	and	ebp, 0xfffeffff
.label_182:
	cmp	ebx, ebp
	je	.label_183
	test	r12b, r12b
	je	.label_183
	xor	ebx, ebx
	mov	esi, 4
	xor	eax, eax
	mov	edi, r15d
	mov	edx, ebp
	call	rpl_fcntl
	cmp	eax, -1
	je	.label_179
	mov	bl, r12b
.label_179:
	mov	r12b, bl
.label_183:
	test	r12b, 1
	je	.label_180
.label_181:
	add	rsp, 0x90
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_180:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_184
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	mov	edi, 4
	mov	rsi, r14
	call	quotearg_style
	mov	rcx, rax
	mov	edi, 1
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, rbp
	call	nl_error
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4031e0

	.globl ifd_reopen
	.type ifd_reopen, @function
ifd_reopen:
	push	rbp
	push	r15
	push	r14
	push	r12
	push	rbx
	mov	r14d, ecx
	mov	r15d, edx
	mov	r12, rsi
	mov	ebp, edi
	nop	word ptr cs:[rax + rax]
.label_187:
	call	process_signals
	mov	edi, ebp
	mov	rsi, r12
	mov	edx, r15d
	mov	ecx, r14d
	call	fd_reopen
	mov	ebx, eax
	test	ebx, ebx
	jns	.label_188
	call	__errno_location
	cmp	dword ptr [rax], 4
	je	.label_187
.label_188:
	mov	eax, ebx
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x403230

	.globl nl_error
	.type nl_error, @function
nl_error:
	push	rbp
	push	r14
	push	rbx
	sub	rsp, 0xd0
	mov	r14, rdx
	mov	ebp, esi
	mov	ebx, edi
	test	al, al
	je	.label_189
	movaps	xmmword ptr [rsp + 0x50], xmm0
	movaps	xmmword ptr [rsp + 0x60], xmm1
	movaps	xmmword ptr [rsp + 0x70], xmm2
	movaps	xmmword ptr [rsp + 0x80], xmm3
	movaps	xmmword ptr [rsp + 0x90], xmm4
	movaps	xmmword ptr [rsp + 0xa0], xmm5
	movaps	xmmword ptr [rsp + 0xb0], xmm6
	movaps	xmmword ptr [rsp + 0xc0], xmm7
.label_189:
	mov	qword ptr [rsp + 0x48], r9
	mov	qword ptr [rsp + 0x40], r8
	mov	qword ptr [rsp + 0x38], rcx
	cmp	dword ptr [dword ptr [rip + progress_len]],  0
	jle	.label_190
	mov	rsi,  qword ptr [word ptr [rip + stderr]]
	mov	edi, 0xa
	call	fputc_unlocked
	mov	dword ptr [dword ptr [rip + progress_len]],  0
.label_190:
	lea	rax, [rsp + 0x20]
	mov	qword ptr [rsp + 0x10], rax
	lea	rax, [rsp + 0xf0]
	mov	qword ptr [rsp + 8], rax
	mov	dword ptr [rsp + 4], 0x30
	mov	dword ptr [rsp], 0x18
	lea	rcx, [rsp]
	mov	edi, ebx
	mov	esi, ebp
	mov	rdx, r14
	call	verror
	add	rsp, 0xd0
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403300

	.globl iftruncate
	.type iftruncate, @function
iftruncate:
	push	rbp
	push	rbx
	push	rax
	mov	rbx, rdi
	nop	word ptr cs:[rax + rax]
.label_192:
	call	process_signals
	mov	edi, 1
	mov	rsi, rbx
	call	ftruncate
	mov	ebp, eax
	test	ebp, ebp
	jns	.label_191
	call	__errno_location
	cmp	dword ptr [rax], 4
	je	.label_192
.label_191:
	mov	eax, ebp
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403340

	.globl dd_copy
	.type dd_copy, @function
dd_copy:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x98
	mov	rbx,  qword ptr [word ptr [rip + skip_records]]
	mov	rbp,  qword ptr [word ptr [rip + skip_bytes]]
	mov	rax, rbp
	or	rax, rbx
	je	.label_194
	mov	r15,  qword ptr [word ptr [rip + input_offset]]
	mov	r14,  qword ptr [word ptr [rip + input_blocksize]]
	mov	rsi,  qword ptr [word ptr [rip + input_file]]
	xor	edi, edi
	mov	r8d, OFFSET FLAT:skip_bytes
	mov	rdx, rbx
	mov	rcx, r14
	call	skip
	test	rax, rax
	jne	.label_225
	imul	r14, rbx
	add	r15, rbp
	add	r15, r14
	cmp	r15,  qword ptr [word ptr [rip + input_offset]]
	je	.label_194
	mov	al,  byte ptr [byte ptr [rip + input_offset_overflow]]
	test	al, al
	jne	.label_194
.label_225:
	cmp	dword ptr [dword ptr [rip + status_level]],  1
	je	.label_194
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_236
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	rdx,  qword ptr [word ptr [rip + input_file]]
	xor	edi, edi
	mov	esi, 3
	call	quotearg_n_style_colon
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rbx
	call	nl_error
.label_194:
	mov	rax,  qword ptr [word ptr [rip + seek_bytes]]
	or	rax,  qword ptr [word ptr [rip + seek_records]]
	je	.label_208
	mov	rax,  qword ptr [word ptr [rip + seek_bytes]]
	mov	qword ptr [rsp + 8], rax
	mov	rsi,  qword ptr [word ptr [rip + output_file]]
	mov	rdx,  qword ptr [word ptr [rip + seek_records]]
	mov	rcx,  qword ptr [word ptr [rip + output_blocksize]]
	lea	r14, [rsp + 8]
	mov	edi, 1
	mov	r8, r14
	call	skip
	mov	rbp, rax
	mov	rdx, qword ptr [rsp + 8]
	mov	rax, rdx
	or	rax, rbp
	je	.label_208
	test	rbp, rbp
	mov	rdi,  qword ptr [word ptr [rip + obuf]]
	cmovne	rdx,  qword ptr [word ptr [rip + output_blocksize]]
	xor	esi, esi
	call	memset
	mov	r15d, OFFSET FLAT:output_blocksize
	nop	dword ptr [rax]
.label_233:
	test	rbp, rbp
	mov	rax, r14
	cmovne	rax, r15
	mov	rbx, qword ptr [rax]
	mov	rdi,  qword ptr [word ptr [rip + obuf]]
	mov	rsi, rbx
	call	iwrite
	cmp	rax, rbx
	jne	.label_223
	test	rbp, rbp
	je	.label_227
	dec	rbp
	jmp	.label_228
	nop	
.label_227:
	mov	qword ptr [rsp + 8], 0
	xor	ebp, ebp
.label_228:
	mov	rax, qword ptr [rsp + 8]
	or	rax, rbp
	jne	.label_233
.label_208:
	mov	rax,  qword ptr [word ptr [rip + max_bytes]]
	xor	ebp, ebp
	or	rax,  qword ptr [word ptr [rip + max_records]]
	je	.label_209
	call	alloc_ibuf
	call	alloc_obuf
	mov	r13d, 0x400
	xor	r12d, r12d
	xor	r14d, r14d
	jmp	.label_222
.label_213:
	mov	rsi, qword ptr [rsp]
	call	copy_with_block
	nop	dword ptr [rax]
.label_222:
	cmp	dword ptr [dword ptr [rip + status_level]],  4
	jne	.label_248
	call	gethrxtime
	cmp	qword ptr [word ptr [rip + next_time]],  rax
	jg	.label_248
	mov	rdi, rax
	call	print_xfer_stats
	add	qword ptr [word ptr [rip + next_time]],  0x3b9aca00
.label_248:
	mov	rax,  qword ptr [word ptr [rip + r_full]]
	add	rax,  qword ptr [word ptr [rip + r_partial]]
	mov	rcx,  qword ptr [word ptr [rip + max_records]]
	cmp	qword ptr [word ptr [rip + max_bytes]],  1
	sbb	rcx, -1
	cmp	rax, rcx
	jae	.label_200
	mov	eax,  dword ptr [dword ptr [rip + conversions_mask]]
	mov	ecx, eax
	and	ecx, 0x500
	cmp	ecx, 0x500
	jne	.label_210
	mov	rdi,  qword ptr [word ptr [rip + ibuf]]
	test	al, 0x18
	setne	al
	shl	al, 5
	mov	rdx,  qword ptr [word ptr [rip + input_blocksize]]
	movzx	esi, al
	call	memset
.label_210:
	mov	rax,  qword ptr [word ptr [rip + r_full]]
	add	rax,  qword ptr [word ptr [rip + r_partial]]
	cmp	rax,  qword ptr [word ptr [rip + max_records]]
	mov	rax,  qword ptr [word ptr [rip + iread_fnc]]
	mov	rsi,  qword ptr [word ptr [rip + ibuf]]
	jae	.label_219
	mov	rdx,  qword ptr [word ptr [rip + input_blocksize]]
	jmp	.label_230
	nop	word ptr cs:[rax + rax]
.label_219:
	mov	rdx,  qword ptr [word ptr [rip + max_bytes]]
.label_230:
	xor	edi, edi
	call	rax
	mov	r15, rax
	test	r15, r15
	jg	.label_235
	je	.label_239
	test	byte ptr [byte ptr [rip + label_68]],  1
	je	.label_241
	cmp	dword ptr [dword ptr [rip + status_level]],  1
	je	.label_243
.label_241:
	call	__errno_location
	mov	ebp, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_245
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	rsi,  qword ptr [word ptr [rip + input_file]]
	mov	edi, 4
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, ebp
	mov	rdx, rbx
	call	nl_error
.label_243:
	mov	ebp, 1
	test	byte ptr [byte ptr [rip + label_68]],  1
	je	.label_232
	call	print_stats
	mov	rbx,  qword ptr [word ptr [rip + input_blocksize]]
	sub	rbx, r14
	xor	edi, edi
	mov	rsi, rbx
	call	invalidate_cache
	mov	rdi, rbx
	call	advance_input_after_read_error
	test	al, al
	jne	.label_211
	mov	byte ptr [byte ptr [rip + input_seekable]],  0
	mov	dword ptr [dword ptr [rip + input_seek_errno]],  0x1d
	mov	r12d, 1
.label_211:
	test	r14, r14
	jne	.label_222
	mov	eax,  dword ptr [dword ptr [rip + conversions_mask]]
	and	eax, r13d
	test	eax, eax
	je	.label_222
	mov	eax, 0
	cmove	rax, r15
	test	r14, r14
	cmove	r15, rax
	jmp	.label_229
.label_235:
	mov	rdi, r15
	call	advance_input_offset
	cmp	byte ptr [byte ptr [rip + i_nocache]],  1
	jne	.label_229
	xor	edi, edi
	mov	rsi, r15
	call	invalidate_cache
.label_229:
	mov	qword ptr [rsp], r15
	cmp	r15,  qword ptr [word ptr [rip + input_blocksize]]
	jae	.label_234
	inc	qword ptr [word ptr [rip + r_partial]]
	mov	r14, qword ptr [rsp]
	mov	eax,  dword ptr [dword ptr [rip + conversions_mask]]
	test	ah, 4
	je	.label_196
	test	ah, 1
	jne	.label_226
	mov	rdi,  qword ptr [word ptr [rip + ibuf]]
	add	rdi, r14
	test	al, 0x18
	setne	al
	shl	al, 5
	mov	rdx,  qword ptr [word ptr [rip + input_blocksize]]
	sub	rdx, r14
	movzx	esi, al
	call	memset
.label_226:
	mov	rax,  qword ptr [word ptr [rip + input_blocksize]]
	mov	qword ptr [rsp], rax
	jmp	.label_196
.label_234:
	inc	qword ptr [word ptr [rip + r_full]]
	xor	r14d, r14d
.label_196:
	mov	rdi,  qword ptr [word ptr [rip + ibuf]]
	mov	rax,  qword ptr [word ptr [rip + obuf]]
	cmp	rdi, rax
	je	.label_220
	cmp	byte ptr [byte ptr [rip + translation_needed]],  1
	jne	.label_203
	mov	rsi, qword ptr [rsp]
	call	translate_buffer
.label_203:
	mov	rdi,  qword ptr [word ptr [rip + ibuf]]
	cmp	byte ptr [byte ptr [rip + conversions_mask]],  0
	jns	.label_207
	lea	rsi, [rsp]
	call	swab_buffer
	mov	rdi, rax
.label_207:
	mov	eax,  dword ptr [dword ptr [rip + conversions_mask]]
	test	al, 8
	jne	.label_213
	test	al, 0x10
	mov	rsi, qword ptr [rsp]
	jne	.label_215
	call	copy_simple
	jmp	.label_222
.label_220:
	mov	rbx, qword ptr [rsp]
	mov	rdi, rax
	mov	rsi, rbx
	call	iwrite
	add	qword ptr [word ptr [rip + w_bytes]],  rax
	cmp	rax, rbx
	jne	.label_205
	cmp	rbx,  qword ptr [word ptr [rip + input_blocksize]]
	jne	.label_224
	inc	qword ptr [word ptr [rip + w_full]]
	jmp	.label_222
.label_224:
	inc	qword ptr [word ptr [rip + w_partial]]
	jmp	.label_222
.label_215:
	call	copy_with_unblock
	jmp	.label_222
.label_239:
	mov	al,  byte ptr [byte ptr [rip + i_nocache]]
	or	byte ptr [byte ptr [rip + i_nocache_eof]],  al
	cmp	byte ptr [byte ptr [rip + o_nocache]],  1
	jne	.label_237
	test	byte ptr [byte ptr [rip + label_68]],  2
	sete	al
	jmp	.label_242
.label_237:
	xor	eax, eax
.label_242:
	or	byte ptr [byte ptr [rip + o_nocache_eof]],  al
.label_200:
	mov	ebp, r12d
.label_232:
	cmp	byte ptr [byte ptr [rip + char_is_saved]],  1
	jne	.label_193
	mov	eax,  dword ptr [dword ptr [rip + conversions_mask]]
	test	al, 8
	jne	.label_250
	test	al, 0x10
	jne	.label_252
	mov	al,  byte ptr [byte ptr [rip + saved_char]]
	mov	rcx,  qword ptr [word ptr [rip + oc]]
	lea	rdx, [rcx + 1]
	mov	qword ptr [word ptr [rip + oc]],  rdx
	mov	rsi,  qword ptr [word ptr [rip + obuf]]
	mov	byte ptr [rsi + rcx], al
	cmp	rdx,  qword ptr [word ptr [rip + output_blocksize]]
	jb	.label_193
	call	write_output
	jmp	.label_193
.label_250:
	mov	edi, OFFSET FLAT:saved_char
	mov	esi, 1
	call	copy_with_block
	jmp	.label_193
.label_252:
	mov	edi, OFFSET FLAT:saved_char
	mov	esi, 1
	call	copy_with_unblock
.label_193:
	mov	eax,  dword ptr [dword ptr [rip + conversions_mask]]
	mov	rbx,  qword ptr [word ptr [rip + col]]
	test	al, 8
	je	.label_212
	test	rbx, rbx
	jne	.label_216
	jmp	.label_212
	nop	dword ptr [rax]
.label_198:
	inc	rbx
.label_216:
	cmp	rbx,  qword ptr [word ptr [rip + conversion_blocksize]]
	jae	.label_217
	movzx	eax,  byte ptr [byte ptr [rip + space_character]]
	test	al, al
	mov	al, 0x40
	jne	.label_221
	mov	al, 0x20
.label_221:
	mov	rcx,  qword ptr [word ptr [rip + oc]]
	lea	rdx, [rcx + 1]
	mov	qword ptr [word ptr [rip + oc]],  rdx
	mov	rsi,  qword ptr [word ptr [rip + obuf]]
	mov	byte ptr [rsi + rcx], al
	cmp	rdx,  qword ptr [word ptr [rip + output_blocksize]]
	jb	.label_198
	call	write_output
	jmp	.label_198
.label_217:
	mov	rbx,  qword ptr [word ptr [rip + col]]
.label_212:
	test	rbx, rbx
	je	.label_218
	test	byte ptr [byte ptr [rip + conversions_mask]],  0x10
	je	.label_218
	mov	al,  byte ptr [byte ptr [rip + newline_character]]
	test	al, al
	mov	al, 0x25
	jne	.label_240
	mov	al, 0xa
.label_240:
	mov	rcx,  qword ptr [word ptr [rip + oc]]
	lea	rsi, [rcx + 1]
	mov	qword ptr [word ptr [rip + oc]],  rsi
	mov	rdx,  qword ptr [word ptr [rip + obuf]]
	mov	byte ptr [rdx + rcx], al
	cmp	rsi,  qword ptr [word ptr [rip + output_blocksize]]
	jb	.label_244
	call	write_output
.label_218:
	mov	rsi,  qword ptr [word ptr [rip + oc]]
.label_244:
	test	rsi, rsi
	je	.label_197
	mov	rdi,  qword ptr [word ptr [rip + obuf]]
	call	iwrite
	add	qword ptr [word ptr [rip + w_bytes]],  rax
	test	rax, rax
	je	.label_201
	inc	qword ptr [word ptr [rip + w_partial]]
.label_201:
	cmp	rax,  qword ptr [word ptr [rip + oc]]
	jne	.label_205
.label_197:
	cmp	byte ptr [byte ptr [rip + final_op_was_seek]],  1
	jne	.label_195
	lea	rsi, [rsp + 8]
	mov	edi, 1
	call	fstat
	test	eax, eax
	je	.label_231
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_57
	jmp	.label_214
.label_205:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_249
	jmp	.label_214
.label_231:
	mov	eax, 0xf000
	and	eax, dword ptr [rsp + 0x20]
	cmp	eax, 0x8000
	jne	.label_195
	mov	edi, 1
	xor	esi, esi
	mov	edx, 1
	call	lseek
	mov	rbx, rax
	test	rbx, rbx
	js	.label_195
	cmp	qword ptr [rsp + 0x38], rbx
	jge	.label_195
	mov	rdi, rbx
	call	iftruncate
	test	eax, eax
	je	.label_195
	call	__errno_location
	mov	r14d, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_206
	mov	edx, 5
	call	dcgettext
	mov	r15, rax
	mov	rsi,  qword ptr [word ptr [rip + output_file]]
	mov	edi, 4
	call	quotearg_style
	mov	rbp, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, r14d
	mov	rdx, r15
	mov	rcx, rbx
	mov	r8, rbp
	call	nl_error
	jmp	.label_251
.label_195:
	test	byte ptr [byte ptr [rip + label_68]],  0x40
	je	.label_199
	mov	edi, 1
	call	fdatasync
	test	eax, eax
	je	.label_199
	call	__errno_location
	mov	ebx, dword ptr [rax]
	cmp	ebx, 0x16
	je	.label_202
	cmp	ebx, 0x26
	je	.label_202
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_204
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	mov	rsi,  qword ptr [word ptr [rip + output_file]]
	mov	edi, 4
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, rbp
	call	nl_error
	mov	ebp, 1
.label_202:
	or	byte ptr [byte ptr [rip + label_68]],  0x80
.label_199:
	cmp	word ptr [word ptr [rip + conversions_mask]],  0
	jns	.label_209
	nop	dword ptr [rax + rax]
.label_238:
	mov	edi, 1
	call	fsync
	test	eax, eax
	je	.label_209
	call	__errno_location
	mov	ebx, dword ptr [rax]
	cmp	ebx, 4
	je	.label_238
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_246
.label_214:
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	mov	rsi,  qword ptr [word ptr [rip + output_file]]
	mov	edi, 4
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, rbp
	call	nl_error
.label_251:
	mov	ebp, 1
.label_209:
	mov	eax, ebp
	add	rsp, 0x98
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_223:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_247
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	mov	rsi,  qword ptr [word ptr [rip + output_file]]
	mov	edi, 4
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, rbp
	call	nl_error
	call	quit
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403b30

	.globl invalidate_cache
	.type invalidate_cache, @function
invalidate_cache:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	rbp, rsi
	mov	r14d, edi
	mov	r12b,  byte ptr [byte ptr [rip + i_nocache_eof]]
	mov	bl,  byte ptr [byte ptr [rip + o_nocache_eof]]
	call	cache_round
	mov	r13, rax
	test	rbp, rbp
	mov	al, 1
	je	.label_258
	test	r13, r13
	je	.label_255
.label_258:
	test	r14d, r14d
	je	.label_259
	mov	r12d, ebx
.label_259:
	test	r12b, r12b
	jne	.label_261
	mov	rcx, r13
	or	rcx, rbp
	je	.label_255
.label_261:
	xor	r15d, r15d
	test	rbp, rbp
	je	.label_263
	xor	esi, esi
	mov	edi, r14d
	call	cache_round
	mov	r15, rax
.label_263:
	test	r14d, r14d
	je	.label_256
	mov	eax, OFFSET FLAT:invalidate_cache.output_offset
	mov	rcx,  qword ptr [word ptr [rip + invalidate_cache.output_offset]]
	cmp	rcx, -1
	je	.label_254
	test	rcx, rcx
	js	.label_260
	mov	eax, OFFSET FLAT:invalidate_cache.output_offset
	test	rbp, rbp
	je	.label_254
	lea	rax, [r15 + r13]
	add	rax, rcx
	jmp	.label_262
.label_256:
	mov	eax, OFFSET FLAT:input_offset
	cmp	byte ptr [byte ptr [rip + input_seekable]],  0
	jne	.label_254
	call	__errno_location
	mov	dword ptr [rax], 0x1d
	jmp	.label_257
.label_260:
	xor	esi, esi
	mov	edx, 1
	mov	edi, r14d
	call	lseek
.label_262:
	mov	qword ptr [word ptr [rip + invalidate_cache.output_offset]],  rax
	mov	eax, OFFSET FLAT:invalidate_cache.output_offset
.label_254:
	mov	rsi, qword ptr [rax]
	test	rsi, rsi
	js	.label_257
	test	r12b, r12b
	sete	al
	test	r13, r13
	sete	cl
	test	rbp, rbp
	setne	dl
	or	dl, cl
	xor	ebp, ebp
	or	dl, al
	cmovne	rbp, r13
	cmove	r15, r13
	sub	rsi, rbp
	sub	rsi, r15
	test	rbp, rbp
	jne	.label_253
	xor	edx, edx
	mov	rax, rsi
	div	qword ptr [word ptr [rip + page_size]]
	sub	rsi, rdx
.label_253:
	mov	ecx, 4
	mov	edi, r14d
	mov	rdx, rbp
	call	posix_fadvise
	cmp	eax, -1
	setne	al
	jmp	.label_255
.label_257:
	xor	eax, eax
.label_255:
	add	rsp, 8
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
	#Procedure 0x403c70

	.globl finish_up
	.type finish_up, @function
finish_up:
	push	rax
	call	cleanup
	call	print_stats
	pop	rax
	jmp	process_signals
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403c90

	.globl siginfo_handler
	.type siginfo_handler, @function
siginfo_handler:
	inc	dword ptr [dword ptr [rip + info_signal_count]]
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403ca0

	.globl interrupt_handler
	.type interrupt_handler, @function
interrupt_handler:
	mov	dword ptr [dword ptr [rip + interrupt_signal]],  edi
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403cb0

	.globl operand_is
	.type operand_is, @function
operand_is:
	mov	edx, 0x3d
	jmp	operand_matches
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403cc0

	.globl parse_symbols
	.type parse_symbols, @function
parse_symbols:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	qword ptr [rsp], rcx
	mov	r12d, edx
	mov	r13, rsi
	mov	rbx, rdi
	xor	ebp, ebp
	nop	word ptr [rax + rax]
.label_266:
	mov	esi, 0x2c
	mov	rdi, rbx
	call	strchr
	mov	r15, rax
	mov	r14, r13
	nop	word ptr cs:[rax + rax]
.label_270:
	mov	edx, 0x2c
	mov	rdi, rbx
	mov	rsi, r14
	call	operand_matches
	test	al, al
	je	.label_267
	mov	eax, dword ptr [r14 + 0xc]
	test	eax, eax
	jne	.label_268
.label_267:
	cmp	byte ptr [r14], 0
	lea	r14, [r14 + 0x10]
	jne	.label_270
	jmp	.label_265
	nop	dword ptr [rax + rax]
.label_268:
	test	r12b, r12b
	mov	ecx, 0
	cmovne	ebp, ecx
	or	ebp, eax
	test	r15, r15
	lea	rbx, [r15 + 1]
	jne	.label_266
	mov	eax, ebp
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_265:
	test	r15, r15
	jne	.label_269
	mov	rdi, rbx
	call	strlen
	mov	r15, rax
	jmp	.label_264
.label_269:
	sub	r15, rbx
.label_264:
	xor	edi, edi
	mov	edx, 5
	mov	rsi, qword ptr [rsp]
	call	dcgettext
	mov	rbp, rax
	xor	edi, edi
	mov	esi, 8
	mov	rdx, rbx
	mov	rcx, r15
	call	quotearg_n_style_mem
	mov	rbx, rax
	xor	edi, edi
	xor	esi, esi
	mov	edx, OFFSET FLAT:label_159
	xor	eax, eax
	mov	rcx, rbp
	mov	r8, rbx
	call	nl_error
	mov	edi, 1
	call	usage
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403dc0

	.globl parse_integer
	.type parse_integer, @function
parse_integer:
	push	r15
	push	r14
	push	r12
	push	rbx
	sub	rsp, 0x18
	mov	r15, rsi
	mov	rbx, rdi
	lea	rsi, [rsp + 0x10]
	lea	rcx, [rsp + 8]
	mov	edx, 0xa
	mov	r8d, OFFSET FLAT:label_271
	call	xstrtoumax
	test	eax, eax
	je	.label_276
	cmp	eax, 2
	jne	.label_280
	mov	rdi, qword ptr [rsp + 0x10]
	cmp	byte ptr [rdi], 0x78
	jne	.label_280
	inc	rdi
	mov	rsi, r15
	call	parse_integer
	mov	r14, rax
	test	r14, r14
	mov	rcx, qword ptr [rsp + 8]
	je	.label_281
	mov	rax, r14
	imul	rax, rcx
	xor	edx, edx
	div	r14
	cmp	rax, rcx
	jne	.label_273
.label_281:
	test	rcx, rcx
	jne	.label_278
	mov	esi, OFFSET FLAT:label_274
	mov	edx, 2
	mov	rdi, rbx
	call	strncmp
	test	eax, eax
	jne	.label_278
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_279
	mov	edx, 5
	call	dcgettext
	mov	r15, rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_274
	call	quote_n
	mov	r12, rax
	mov	edi, 1
	mov	esi, OFFSET FLAT:label_277
	call	quote_n
	mov	rbx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, r15
	mov	rcx, r12
	mov	r8, rbx
	call	nl_error
.label_278:
	mov	rax, qword ptr [rsp + 8]
	imul	rax, r14
	mov	qword ptr [rsp + 8], rax
.label_276:
	mov	rax, qword ptr [rsp + 8]
	jmp	.label_275
.label_280:
	mov	dword ptr [r15], eax
.label_272:
	xor	eax, eax
.label_275:
	add	rsp, 0x18
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
.label_273:
	mov	dword ptr [r15], 1
	jmp	.label_272
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403ed0

	.globl iread_fullblock
	.type iread_fullblock, @function
iread_fullblock:
	push	rbp
	push	r15
	push	r14
	push	rbx
	push	rax
	mov	rbx, rdx
	mov	r14, rsi
	mov	r15d, edi
	xor	eax, eax
	test	rbx, rbx
	je	.label_282
	xor	ebp, ebp
	nop	dword ptr [rax]
.label_284:
	mov	edi, r15d
	mov	rsi, r14
	mov	rdx, rbx
	call	iread
	test	rax, rax
	js	.label_282
	je	.label_283
	add	rbp, rax
	add	r14, rax
	sub	rbx, rax
	mov	rax, rbp
	jne	.label_284
	jmp	.label_282
.label_283:
	mov	rax, rbp
.label_282:
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403f30

	.globl iread
	.type iread, @function
iread:
	push	rbp
	push	r15
	push	r14
	push	rbx
	push	rax
	mov	r14, rdx
	mov	r15, rsi
	mov	ebp, edi
	nop	
.label_291:
	call	process_signals
	mov	edi, ebp
	mov	rsi, r15
	mov	rdx, r14
	call	read
	mov	rbx, rax
	cmp	rbx, -1
	je	.label_290
	test	rbx, rbx
	js	.label_286
	jmp	.label_285
	nop	word ptr cs:[rax + rax]
.label_290:
	call	__errno_location
	mov	rcx,  qword ptr [word ptr [rip + iread.prev_nread]]
	mov	rbx, -1
	cmp	rcx, r14
	jae	.label_286
	cmp	dword ptr [rax], 0x16
	jne	.label_286
	test	rcx, rcx
	jle	.label_286
	test	byte ptr [byte ptr [rip + label_288]],  0x40
	jne	.label_289
	nop	
.label_286:
	call	__errno_location
	cmp	dword ptr [rax], 4
	mov	rax, rbx
	je	.label_291
	jmp	.label_292
.label_285:
	je	.label_296
	cmp	rbx, r14
	jae	.label_296
	call	process_signals
.label_296:
	xor	eax, eax
	test	rbx, rbx
	je	.label_292
	mov	rbp,  qword ptr [word ptr [rip + iread.prev_nread]]
	cmp	rbp, r14
	jae	.label_287
	mov	al,  byte ptr [byte ptr [rip + warn_partial_read]]
	test	al, al
	je	.label_287
	test	rbp, rbp
	jle	.label_287
	cmp	dword ptr [dword ptr [rip + status_level]],  1
	je	.label_293
	mov	rdi, rbp
	call	select_plural
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_294
	mov	edx, OFFSET FLAT:label_295
	mov	r8d, 5
	mov	rcx, rax
	call	dcngettext
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	mov	rcx, rbp
	call	nl_error
.label_293:
	mov	byte ptr [byte ptr [rip + warn_partial_read]],  0
.label_287:
	mov	rax, rbx
	jmp	.label_292
.label_289:
	mov	dword ptr [rax], 0
	xor	eax, eax
.label_292:
	mov	qword ptr [word ptr [rip + iread.prev_nread]],  rax
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404050

	.globl multiple_bits_set
	.type multiple_bits_set, @function
multiple_bits_set:
	lea	eax, [rdi - 1]
	test	eax, edi
	setne	al
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x404060

	.globl operand_matches
	.type operand_matches, @function
operand_matches:
	movzx	eax, byte ptr [rsi]
	test	al, al
	je	.label_297
	inc	rsi
	cmp	byte ptr [rdi], al
	lea	rdi, [rdi + 1]
	je	operand_matches
	xor	eax, eax
	ret	
.label_297:
	mov	al, byte ptr [rdi]
	test	al, al
	sete	cl
	cmp	al, dl
	sete	al
	or	al, cl
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404090

	.globl process_signals
	.type process_signals, @function
process_signals:
	push	rbp
	push	rbx
	sub	rsp, 0x88
	lea	rbx, [rsp + 8]
	jmp	.label_298
.label_301:
	call	cleanup
	call	print_stats
	mov	edi, ebp
	call	raise
.label_298:
	cmp	dword ptr [dword ptr [rip + interrupt_signal]],  0
	jne	.label_299
	cmp	dword ptr [dword ptr [rip + info_signal_count]],  0
	je	.label_302
.label_299:
	xor	edi, edi
	mov	esi, OFFSET FLAT:caught_signals
	mov	rdx, rbx
	call	sigprocmask
	mov	ebp,  dword ptr [dword ptr [rip + interrupt_signal]]
	mov	eax,  dword ptr [dword ptr [rip + info_signal_count]]
	test	eax, eax
	je	.label_300
	dec	eax
	mov	dword ptr [dword ptr [rip + info_signal_count]],  eax
.label_300:
	mov	edi, 2
	xor	edx, edx
	mov	rsi, rbx
	call	sigprocmask
	test	ebp, ebp
	jne	.label_301
	call	print_stats
	jmp	.label_298
.label_302:
	add	rsp, 0x88
	pop	rbx
	pop	rbp
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x404110

	.globl select_plural
	.type select_plural, @function
select_plural:
	mov	rax, rdi
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404120

	.globl cleanup
	.type cleanup, @function
cleanup:
	push	rbp
	push	rbx
	push	rax
	xor	edi, edi
	call	close
	test	eax, eax
	js	.label_304
	mov	edi, 1
	call	close
	test	eax, eax
	js	.label_306
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
.label_304:
	call	__errno_location
	mov	ebp, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_303
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	rsi,  qword ptr [word ptr [rip + input_file]]
	mov	edi, 4
	call	quotearg_style
	mov	rcx, rax
	mov	edi, 1
	xor	eax, eax
	mov	esi, ebp
	mov	rdx, rbx
	call	nl_error
.label_306:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_305
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	mov	rsi,  qword ptr [word ptr [rip + output_file]]
	mov	edi, 4
	call	quotearg_style
	mov	rcx, rax
	mov	edi, 1
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, rbp
	call	nl_error
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4041d0

	.globl print_stats
	.type print_stats, @function
print_stats:
	cmp	dword ptr [dword ptr [rip + status_level]],  1
	je	.label_311
	push	rbx
	sub	rsp, 0x10
	cmp	dword ptr [dword ptr [rip + progress_len]],  0
	jle	.label_313
	mov	rsi,  qword ptr [word ptr [rip + stderr]]
	mov	edi, 0xa
	call	fputc_unlocked
	mov	dword ptr [dword ptr [rip + progress_len]],  0
.label_313:
	mov	rbx,  qword ptr [word ptr [rip + stderr]]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_308
	mov	edx, 5
	call	dcgettext
	mov	rdx, rax
	mov	rcx,  qword ptr [word ptr [rip + r_full]]
	mov	r8,  qword ptr [word ptr [rip + r_partial]]
	mov	r9,  qword ptr [word ptr [rip + w_full]]
	mov	rax,  qword ptr [word ptr [rip + w_partial]]
	mov	qword ptr [rsp], rax
	mov	esi, 1
	xor	eax, eax
	mov	rdi, rbx
	call	__fprintf_chk
	mov	rdi,  qword ptr [word ptr [rip + r_truncate]]
	test	rdi, rdi
	je	.label_307
	mov	rbx,  qword ptr [word ptr [rip + stderr]]
	call	select_plural
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_309
	mov	edx, OFFSET FLAT:label_310
	mov	r8d, 5
	mov	rcx, rax
	call	dcngettext
	mov	rdx, rax
	mov	rcx,  qword ptr [word ptr [rip + r_truncate]]
	mov	esi, 1
	xor	eax, eax
	mov	rdi, rbx
	call	__fprintf_chk
.label_307:
	cmp	dword ptr [dword ptr [rip + status_level]],  2
	lea	rsp, [rsp + 0x10]
	pop	rbx
	jne	.label_312
.label_311:
	ret	
.label_312:
	xor	edi, edi
	jmp	print_xfer_stats
	nop	
	.section	.text
	.align	32
	#Procedure 0x4042b0

	.globl print_xfer_stats
	.type print_xfer_stats, @function
print_xfer_stats:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x7e8
	mov	r14, rdi
	test	r14, r14
	mov	rbx, r14
	jne	.label_328
	call	gethrxtime
	mov	rbx, rax
.label_328:
	mov	rdi,  qword ptr [word ptr [rip + w_bytes]]
	lea	rsi, [rsp + 0x30]
	mov	edx, 0x1d1
	mov	ecx, 1
	mov	r8d, 1
	call	human_readable
	mov	r15, rax
	mov	rdi,  qword ptr [word ptr [rip + w_bytes]]
	lea	rsi, [rsp + 0x2be]
	mov	edx, 0x1f1
	mov	ecx, 1
	mov	r8d, 1
	call	human_readable
	mov	r12, rax
	lea	r13, [rsp + 0x54c]
	sub	rbx,  qword ptr [word ptr [rip + start_time]]
	jle	.label_325
	movq	xmm0, rbx
	punpckldq	xmm0,  xmmword ptr [word ptr [rip + label_332]]
	subpd	xmm0,  xmmword ptr [word ptr [rip + label_333]]
	pshufd	xmm1, xmm0, 0x4e
	addpd	xmm1, xmm0
	divsd	xmm1,  qword ptr [word ptr [rip + label_334]]
	movapd	xmmword ptr [rsp], xmm1
	mov	rdi,  qword ptr [word ptr [rip + w_bytes]]
	mov	edx, 0x1d1
	mov	ecx, 0x3b9aca00
	mov	rsi, r13
	mov	r8, rbx
	call	human_readable
	mov	r13, rax
	mov	rdi, r13
	call	strlen
	mov	byte ptr [r13 + rax + 2], 0
	mov	word ptr [r13 + rax], 0x732f
	jmp	.label_314
.label_325:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_322
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	mov	esi, 0x28e
	mov	edx, 1
	mov	ecx, 0x28e
	mov	r8d, OFFSET FLAT:label_329
	xor	eax, eax
	mov	rdi, r13
	mov	r9, rbp
	call	__snprintf_chk
	xorpd	xmm0, xmm0
	movapd	xmmword ptr [rsp], xmm0
.label_314:
	test	r14, r14
	je	.label_321
	mov	rsi,  qword ptr [word ptr [rip + stderr]]
	mov	edi, 0xd
	call	fputc_unlocked
.label_321:
	test	r14, r14
	mov	eax, OFFSET FLAT:label_330
	mov	r8d, OFFSET FLAT:label_331
	cmovne	r8, rax
	lea	rbx, [rsp + 0x10]
	mov	esi, 0x18
	mov	edx, 1
	mov	ecx, 0x18
	mov	al, 1
	mov	rdi, rbx
	movaps	xmm0, xmmword ptr [rsp]
	call	__snprintf_chk
	mov	rdi, r15
	call	abbreviation_lacks_prefix
	test	al, al
	je	.label_323
	mov	rbx,  qword ptr [word ptr [rip + stderr]]
	mov	rdi,  qword ptr [word ptr [rip + w_bytes]]
	call	select_plural
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_326
	mov	edx, OFFSET FLAT:label_327
	mov	r8d, 5
	mov	rcx, rax
	call	dcngettext
	mov	rdx, rax
	mov	rcx,  qword ptr [word ptr [rip + w_bytes]]
	lea	r8, [rsp + 0x10]
	mov	esi, 1
	xor	eax, eax
	mov	rdi, rbx
	mov	r9, r13
	call	__fprintf_chk
	jmp	.label_316
.label_323:
	mov	rdi, r12
	call	abbreviation_lacks_prefix
	mov	rbp,  qword ptr [word ptr [rip + stderr]]
	xor	edi, edi
	test	al, al
	je	.label_319
	mov	esi, OFFSET FLAT:label_320
	mov	edx, 5
	call	dcgettext
	mov	rdx, rax
	mov	rcx,  qword ptr [word ptr [rip + w_bytes]]
	sub	rsp, 8
	lea	r9, [rsp + 0x18]
	mov	esi, 1
	xor	eax, eax
	mov	rdi, rbp
	mov	r8, r15
	push	r13
	call	__fprintf_chk
	add	rsp, 0x10
	jmp	.label_316
.label_319:
	mov	esi, OFFSET FLAT:label_318
	mov	edx, 5
	call	dcgettext
	mov	rdx, rax
	mov	rcx,  qword ptr [word ptr [rip + w_bytes]]
	mov	esi, 1
	mov	eax, 0
	mov	rdi, rbp
	mov	r8, r15
	mov	r9, r12
	push	r13
	push	rbx
	call	__fprintf_chk
	add	rsp, 0x10
.label_316:
	mov	ebx, eax
	test	r14, r14
	je	.label_315
	test	ebx, ebx
	js	.label_317
	mov	ecx,  dword ptr [dword ptr [rip + progress_len]]
	sub	ecx, ebx
	jle	.label_317
	mov	rdi,  qword ptr [word ptr [rip + stderr]]
	mov	esi, 1
	mov	edx, OFFSET FLAT:label_324
	mov	r8d, OFFSET FLAT:label_47
	xor	eax, eax
	call	__fprintf_chk
.label_317:
	mov	dword ptr [dword ptr [rip + progress_len]],  ebx
	jmp	.label_335
.label_315:
	mov	rsi,  qword ptr [word ptr [rip + stderr]]
	mov	edi, 0xa
	call	fputc_unlocked
.label_335:
	add	rsp, 0x7e8
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
	#Procedure 0x404570

	.globl abbreviation_lacks_prefix
	.type abbreviation_lacks_prefix, @function
abbreviation_lacks_prefix:
	push	rbx
	mov	rbx, rdi
	call	strlen
	cmp	byte ptr [rbx + rax - 2], 0x20
	sete	al
	pop	rbx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404590

	.globl translate_charset
	.type translate_charset, @function
translate_charset:
	mov	rax, -0x100
	nop	word ptr [rax + rax]
.label_336:
	movzx	ecx,  byte ptr [byte ptr [rax + input_file]]
	movzx	ecx, byte ptr [rdi + rcx]
	mov	byte ptr [byte ptr [rax + input_file]],  cl
	inc	rax
	jne	.label_336
	mov	byte ptr [byte ptr [rip + translation_needed]],  1
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x4045c0

	.globl skip
	.type skip, @function
skip:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0xa8
	mov	r13, r8
	mov	r12, rcx
	mov	rbx, rdx
	mov	r14, rsi
	mov	ebp, edi
	mov	r15, qword ptr [r13]
	call	__errno_location
	mov	qword ptr [rsp], rax
	mov	dword ptr [rax], 0
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	r12
	cmp	rax, rbx
	jb	.label_344
	mov	rax, r12
	imul	rax, rbx
	add	r15, rax
	mov	ecx, 1
	mov	rdi, r14
	mov	esi, ebp
	mov	rdx, r15
	call	skip_via_lseek
	test	rax, rax
	js	.label_344
	test	ebp, ebp
	jne	.label_340
	lea	rsi, [rsp + 0x18]
	xor	edi, edi
	call	fstat
	test	eax, eax
	jne	.label_354
	lea	rdi, [rsp + 0x18]
	call	usable_st_size
	xor	r14d, r14d
	test	al, al
	je	.label_349
	mov	rcx, qword ptr [rsp + 0x48]
	mov	rsi,  qword ptr [word ptr [rip + input_offset]]
	lea	rax, [rsi + r15]
	xor	r14d, r14d
	cmp	rcx, rax
	jae	.label_349
	sub	r15, rcx
	xor	edx, edx
	mov	rax, r15
	div	r12
	mov	r14, rax
	sub	rcx, rsi
	mov	r15, rcx
.label_349:
	mov	rdi, r15
	call	advance_input_offset
	jmp	.label_339
.label_344:
	mov	rax, qword ptr [rsp]
	mov	r15d, dword ptr [rax]
	xor	edx, edx
	mov	ecx, 2
	mov	rdi, r14
	mov	esi, ebp
	call	skip_via_lseek
	test	rax, rax
	jns	.label_345
	test	ebp, ebp
	mov	qword ptr [rsp + 0x10], r14
	mov	dword ptr [rsp + 0xc], r15d
	je	.label_346
	call	alloc_obuf
	mov	eax, OFFSET FLAT:obuf
	jmp	.label_347
.label_346:
	call	alloc_ibuf
	mov	eax, OFFSET FLAT:ibuf
.label_347:
	mov	r15, qword ptr [rax]
	xor	r14d, r14d
	nop	dword ptr [rax]
.label_342:
	mov	rax,  qword ptr [word ptr [rip + iread_fnc]]
	test	rbx, rbx
	mov	rdx, r12
	jne	.label_350
	mov	rdx, qword ptr [r13]
.label_350:
	mov	edi, ebp
	mov	rsi, r15
	call	rax
	test	rax, rax
	js	.label_353
	je	.label_355
	test	ebp, ebp
	jne	.label_337
	mov	rdi, rax
	call	advance_input_offset
.label_337:
	test	rbx, rbx
	je	.label_340
	dec	rbx
	jne	.label_342
	cmp	qword ptr [r13], 0
	mov	ebx, 0
	jne	.label_342
	jmp	.label_339
.label_340:
	mov	qword ptr [r13], 0
	xor	r14d, r14d
	jmp	.label_339
.label_355:
	mov	r14, rbx
.label_339:
	mov	rax, r14
	add	rsp, 0xa8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_353:
	test	ebp, ebp
	jne	.label_348
	mov	rax, qword ptr [rsp]
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_245
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	mov	edi, 4
	mov	rsi, qword ptr [rsp + 0x10]
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, rbp
	call	nl_error
	test	byte ptr [byte ptr [rip + label_68]],  1
	je	.label_338
	call	print_stats
	call	quit
.label_348:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_343
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	xor	edi, edi
	mov	esi, 3
	mov	rdx, qword ptr [rsp + 0x10]
	call	quotearg_n_style_colon
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, dword ptr [rsp + 0xc]
	mov	rdx, rbx
	call	nl_error
.label_338:
	call	quit
.label_345:
	test	r15d, r15d
	mov	ebx, 0x4b
	cmovne	ebx, r15d
	xor	edi, edi
	test	ebp, ebp
	jne	.label_341
	mov	esi, OFFSET FLAT:label_351
	jmp	.label_352
.label_341:
	mov	esi, OFFSET FLAT:label_343
.label_352:
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
	call	nl_error
	call	quit
.label_354:
	mov	rax, qword ptr [rsp]
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_57
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	mov	edi, 4
	mov	rsi, r14
	call	quotearg_style
	mov	rcx, rax
	mov	edi, 1
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, rbp
	call	nl_error
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404870

	.globl iwrite
	.type iwrite, @function
iwrite:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	r12, rsi
	mov	r14, rdi
	mov	eax,  dword ptr [dword ptr [rip + output_flags]]
	test	ah, 0x40
	je	.label_360
	cmp	qword ptr [word ptr [rip + output_blocksize]],  r12
	jbe	.label_360
	mov	edi, 1
	mov	esi, 3
	xor	eax, eax
	call	rpl_fcntl
	mov	ecx, eax
	and	ecx, 0xffffbfff
	mov	edi, 1
	mov	esi, 4
	xor	eax, eax
	mov	edx, ecx
	call	rpl_fcntl
	test	eax, eax
	je	.label_357
	cmp	dword ptr [dword ptr [rip + status_level]],  1
	je	.label_357
	call	__errno_location
	mov	ebp, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_364
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	rdx,  qword ptr [word ptr [rip + output_file]]
	xor	edi, edi
	mov	esi, 3
	call	quotearg_n_style_colon
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, ebp
	mov	rdx, rbx
	call	nl_error
.label_357:
	mov	byte ptr [byte ptr [rip + o_nocache_eof]],  1
	mov	edi, 1
	xor	esi, esi
	call	invalidate_cache
	or	byte ptr [byte ptr [rip + label_68]],  0x80
.label_360:
	xor	eax, eax
.label_365:
	mov	r15, rax
	lea	r13, [r14 + r15]
	mov	rbx, r12
	sub	rbx, r15
	cmp	r15, r12
	jae	.label_363
	setae	bpl
	nop	dword ptr [rax + rax]
.label_358:
	call	process_signals
	mov	byte ptr [byte ptr [rip + final_op_was_seek]],  0
	test	byte ptr [byte ptr [rip + label_361]],  1
	je	.label_362
	mov	rdi, r14
	mov	rsi, r12
	call	is_nul
	test	al, al
	je	.label_362
	mov	edi, 1
	mov	edx, 1
	mov	rsi, r12
	call	lseek
	test	rax, rax
	js	.label_366
	mov	byte ptr [byte ptr [rip + final_op_was_seek]],  1
	test	r12, r12
	mov	rax, r12
	jne	.label_359
	jmp	.label_362
.label_366:
	and	byte ptr [byte ptr [rip + label_361]],  0xfe
	nop	word ptr cs:[rax + rax]
.label_362:
	mov	edi, 1
	mov	rsi, r13
	mov	rdx, rbx
	call	write
.label_359:
	test	rax, rax
	jns	.label_356
	call	__errno_location
	cmp	dword ptr [rax], 4
	setne	al
	or	al, bpl
	je	.label_358
	jmp	.label_363
	nop	dword ptr [rax + rax]
.label_356:
	test	rax, rax
	lea	rax, [rax + r15]
	jne	.label_365
	call	__errno_location
	mov	dword ptr [rax], 0x1c
.label_363:
	test	r15, r15
	je	.label_367
	test	byte ptr [byte ptr [rip + o_nocache]],  1
	je	.label_367
	mov	edi, 1
	mov	rsi, r15
	call	invalidate_cache
.label_367:
	mov	rax, r15
	add	rsp, 8
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
	#Procedure 0x404a30

	.globl quit
	.type quit, @function
quit:
	push	rax
	call	finish_up
	mov	edi, 1
	call	exit
	.section	.text
	.align	32
	#Procedure 0x404a40

	.globl alloc_ibuf
	.type alloc_ibuf, @function
alloc_ibuf:
	push	r15
	push	r14
	push	rbx
	sub	rsp, 0x290
	cmp	qword ptr [word ptr [rip + ibuf]],  0
	jne	.label_368
	mov	rax,  qword ptr [word ptr [rip + input_blocksize]]
	mov	rcx,  qword ptr [word ptr [rip + page_size]]
	lea	rdi, [rax + rcx*2 + 3]
	call	malloc
	test	rax, rax
	je	.label_370
	add	rax, 2
	mov	rsi,  qword ptr [word ptr [rip + page_size]]
	mov	rdi, rax
	call	ptr_align
	mov	qword ptr [word ptr [rip + ibuf]],  rax
.label_368:
	add	rsp, 0x290
	pop	rbx
	pop	r14
	pop	r15
	ret	
.label_370:
	mov	r14,  qword ptr [word ptr [rip + input_blocksize]]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_369
	mov	edx, 5
	call	dcgettext
	mov	r15, rax
	mov	rdi,  qword ptr [word ptr [rip + input_blocksize]]
	lea	rsi, [rsp]
	mov	edx, 0x1f1
	mov	ecx, 1
	mov	r8d, 1
	call	human_readable
	mov	rbx, rax
	mov	edi, 1
	xor	esi, esi
	xor	eax, eax
	mov	rdx, r15
	mov	rcx, r14
	mov	r8, rbx
	call	nl_error
	nop	
	.section	.text
	.align	32
	#Procedure 0x404af0

	.globl alloc_obuf
	.type alloc_obuf, @function
alloc_obuf:
	push	r15
	push	r14
	push	rbx
	sub	rsp, 0x290
	cmp	qword ptr [word ptr [rip + obuf]],  0
	jne	.label_372
	test	byte ptr [byte ptr [rip + label_68]],  8
	jne	.label_371
	call	alloc_ibuf
	mov	rax,  qword ptr [word ptr [rip + ibuf]]
	jmp	.label_373
.label_371:
	mov	rax,  qword ptr [word ptr [rip + output_blocksize]]
	mov	rcx,  qword ptr [word ptr [rip + page_size]]
	lea	rdi, [rax + rcx - 1]
	call	malloc
	test	rax, rax
	je	.label_374
	mov	rsi,  qword ptr [word ptr [rip + page_size]]
	mov	rdi, rax
	call	ptr_align
.label_373:
	mov	qword ptr [word ptr [rip + obuf]],  rax
.label_372:
	add	rsp, 0x290
	pop	rbx
	pop	r14
	pop	r15
	ret	
.label_374:
	mov	r14,  qword ptr [word ptr [rip + output_blocksize]]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_375
	mov	edx, 5
	call	dcgettext
	mov	r15, rax
	mov	rdi,  qword ptr [word ptr [rip + output_blocksize]]
	lea	rsi, [rsp]
	mov	edx, 0x1f1
	mov	ecx, 1
	mov	r8d, 1
	call	human_readable
	mov	rbx, rax
	mov	edi, 1
	xor	esi, esi
	xor	eax, eax
	mov	rdx, r15
	mov	rcx, r14
	mov	r8, rbx
	call	nl_error
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404bc0

	.globl advance_input_offset
	.type advance_input_offset, @function
advance_input_offset:
	add	rdi,  qword ptr [word ptr [rip + input_offset]]
	mov	qword ptr [word ptr [rip + input_offset]],  rdi
	jae	.label_376
	mov	byte ptr [byte ptr [rip + input_offset_overflow]],  1
.label_376:
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404be0

	.globl advance_input_after_read_error
	.type advance_input_after_read_error, @function
advance_input_after_read_error:
	push	rbp
	push	r15
	push	r14
	push	rbx
	push	rax
	mov	rbx, rdi
	cmp	byte ptr [byte ptr [rip + input_seekable]],  0
	je	.label_381
	mov	rdi, rbx
	call	advance_input_offset
	mov	rax,  qword ptr [word ptr [rip + input_offset]]
	shr	rax, 0x3f
	or	al,  byte ptr [byte ptr [rip + input_offset_overflow]]
	mov	byte ptr [byte ptr [rip + input_offset_overflow]],  al
	je	.label_386
	xor	r15d, r15d
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_379
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	rsi,  qword ptr [word ptr [rip + input_file]]
	mov	edi, 4
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	jmp	.label_384
.label_381:
	mov	ebx,  dword ptr [dword ptr [rip + input_seek_errno]]
	mov	r15b, 1
	cmp	ebx, 0x1d
	je	.label_377
	call	__errno_location
	mov	dword ptr [rax], ebx
	jmp	.label_382
.label_386:
	xor	edi, edi
	xor	esi, esi
	mov	edx, 1
	call	lseek
	test	rax, rax
	js	.label_382
	mov	r14,  qword ptr [word ptr [rip + input_offset]]
	mov	r15b, 1
	sub	r14, rax
	je	.label_377
	js	.label_378
	cmp	r14, rbx
	jbe	.label_380
.label_378:
	cmp	dword ptr [dword ptr [rip + status_level]],  1
	je	.label_380
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_383
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	call	nl_error
.label_380:
	mov	rdi,  qword ptr [word ptr [rip + input_file]]
	xor	esi, esi
	mov	ecx, 1
	mov	rdx, r14
	call	skip_via_lseek
	test	rax, rax
	jns	.label_377
	call	__errno_location
	cmp	dword ptr [rax], 0
	jne	.label_382
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_385
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	call	nl_error
.label_382:
	call	__errno_location
	mov	ebp, dword ptr [rax]
	xor	r15d, r15d
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_343
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	rdx,  qword ptr [word ptr [rip + input_file]]
	xor	edi, edi
	mov	esi, 3
	call	quotearg_n_style_colon
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, ebp
.label_384:
	mov	rdx, rbx
	call	nl_error
.label_377:
	mov	eax, r15d
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404d60

	.globl translate_buffer
	.type translate_buffer, @function
translate_buffer:
	push	r14
	push	rbx
	push	rax
	mov	r14, rsi
	mov	rbx, rdi
	test	r14, r14
	je	.label_387
	nop	
.label_388:
	movsx	edi, byte ptr [rbx]
	call	to_uchar
	movzx	eax, al
	movzx	eax,  byte ptr [byte ptr [rax + trans_table]]
	mov	byte ptr [rbx], al
	inc	rbx
	dec	r14
	jne	.label_388
.label_387:
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404da0

	.globl swab_buffer
	.type swab_buffer, @function
swab_buffer:
	cmp	byte ptr [byte ptr [rip + char_is_saved]],  1
	jne	.label_389
	mov	al,  byte ptr [byte ptr [rip + saved_char]]
	mov	byte ptr [rdi - 1], al
	dec	rdi
	inc	qword ptr [rsi]
	mov	byte ptr [byte ptr [rip + char_is_saved]],  0
.label_389:
	mov	rax, qword ptr [rsi]
	test	al, 1
	je	.label_392
	lea	rcx, [rax - 1]
	mov	qword ptr [rsi], rcx
	mov	al, byte ptr [rdi + rax - 1]
	mov	byte ptr [byte ptr [rip + saved_char]],  al
	mov	byte ptr [byte ptr [rip + char_is_saved]],  1
.label_392:
	mov	rax, qword ptr [rsi]
	mov	rcx, rax
	shr	rcx, 1
	je	.label_391
	add	rax, rdi
	neg	rcx
	nop	
.label_390:
	movzx	edx, byte ptr [rax - 2]
	mov	byte ptr [rax], dl
	lea	rax, [rax - 2]
	inc	rcx
	jne	.label_390
.label_391:
	inc	rdi
	mov	rax, rdi
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404e10

	.globl copy_with_block
	.type copy_with_block, @function
copy_with_block:
	push	rbp
	push	r15
	push	r14
	push	rbx
	push	rax
	mov	r14, rsi
	mov	rbx, rdi
	test	r14, r14
	je	.label_397
	mov	r15d, 0x25
	nop	dword ptr [rax]
.label_396:
	movsx	eax, byte ptr [rbx]
	mov	cl,  byte ptr [byte ptr [rip + newline_character]]
	test	cl, cl
	mov	edx, 0xa
	cmovne	edx, r15d
	mov	rbp,  qword ptr [word ptr [rip + col]]
	mov	rcx,  qword ptr [word ptr [rip + conversion_blocksize]]
	cmp	eax, edx
	jne	.label_394
	cmp	rbp, rcx
	jb	.label_400
	xor	eax, eax
	jmp	.label_398
	nop	word ptr cs:[rax + rax]
.label_399:
	inc	rbp
.label_400:
	cmp	rbp,  qword ptr [word ptr [rip + conversion_blocksize]]
	mov	eax, 0
	jae	.label_398
	movzx	eax,  byte ptr [byte ptr [rip + space_character]]
	test	al, al
	mov	al, 0x40
	jne	.label_401
	mov	al, 0x20
.label_401:
	mov	rcx,  qword ptr [word ptr [rip + oc]]
	lea	rdx, [rcx + 1]
	mov	qword ptr [word ptr [rip + oc]],  rdx
	mov	rsi,  qword ptr [word ptr [rip + obuf]]
	mov	byte ptr [rsi + rcx], al
	cmp	rdx,  qword ptr [word ptr [rip + output_blocksize]]
	jb	.label_399
	call	write_output
	jmp	.label_399
.label_394:
	cmp	rbp, rcx
	jne	.label_393
	inc	qword ptr [word ptr [rip + r_truncate]]
	jmp	.label_395
	nop	
.label_393:
	jae	.label_395
	mov	rcx,  qword ptr [word ptr [rip + oc]]
	lea	rdx, [rcx + 1]
	mov	qword ptr [word ptr [rip + oc]],  rdx
	mov	rsi,  qword ptr [word ptr [rip + obuf]]
	mov	byte ptr [rsi + rcx], al
	cmp	rdx,  qword ptr [word ptr [rip + output_blocksize]]
	jb	.label_395
	call	write_output
	nop	dword ptr [rax]
.label_395:
	mov	rax,  qword ptr [word ptr [rip + col]]
	inc	rax
.label_398:
	mov	qword ptr [word ptr [rip + col]],  rax
	inc	rbx
	dec	r14
	jne	.label_396
.label_397:
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404f30

	.globl copy_with_unblock
	.type copy_with_unblock, @function
copy_with_unblock:
	push	rbp
	push	r15
	push	r14
	push	r12
	push	rbx
	mov	r15, rsi
	mov	r14, rdi
	test	r15, r15
	je	.label_410
	xor	ebx, ebx
	mov	ebp, 0x40
	nop	
.label_408:
	mov	r12b, byte ptr [r14 + rbx]
	mov	rax,  qword ptr [word ptr [rip + col]]
	lea	rcx, [rax + 1]
	mov	qword ptr [word ptr [rip + col]],  rcx
	cmp	rax,  qword ptr [word ptr [rip + conversion_blocksize]]
	jae	.label_403
	movsx	eax, r12b
	mov	cl,  byte ptr [byte ptr [rip + space_character]]
	test	cl, cl
	mov	ecx, 0x20
	cmovne	ecx, ebp
	cmp	eax, ecx
	mov	rax,  qword ptr [word ptr [rip + copy_with_unblock.pending_spaces]]
	jne	.label_409
	inc	rax
	mov	qword ptr [word ptr [rip + copy_with_unblock.pending_spaces]],  rax
	jmp	.label_407
	nop	dword ptr [rax]
.label_403:
	mov	qword ptr [word ptr [rip + copy_with_unblock.pending_spaces]],  0
	mov	qword ptr [word ptr [rip + col]],  0
	mov	al,  byte ptr [byte ptr [rip + newline_character]]
	test	al, al
	mov	al, 0x25
	jne	.label_402
	mov	al, 0xa
.label_402:
	dec	rbx
	mov	rcx,  qword ptr [word ptr [rip + oc]]
	lea	rdx, [rcx + 1]
	mov	qword ptr [word ptr [rip + oc]],  rdx
	mov	rsi,  qword ptr [word ptr [rip + obuf]]
	mov	byte ptr [rsi + rcx], al
	cmp	rdx,  qword ptr [word ptr [rip + output_blocksize]]
	jae	.label_404
	jmp	.label_407
	nop	
.label_409:
	test	rax, rax
	je	.label_405
	nop	word ptr cs:[rax + rax]
.label_411:
	movzx	eax,  byte ptr [byte ptr [rip + space_character]]
	test	al, al
	mov	al, 0x40
	jne	.label_406
	mov	al, 0x20
.label_406:
	mov	rcx,  qword ptr [word ptr [rip + oc]]
	lea	rdx, [rcx + 1]
	mov	qword ptr [word ptr [rip + oc]],  rdx
	mov	rsi,  qword ptr [word ptr [rip + obuf]]
	mov	byte ptr [rsi + rcx], al
	cmp	rdx,  qword ptr [word ptr [rip + output_blocksize]]
	jb	.label_412
	call	write_output
.label_412:
	dec	qword ptr [word ptr [rip + copy_with_unblock.pending_spaces]]
	jne	.label_411
.label_405:
	mov	rax,  qword ptr [word ptr [rip + oc]]
	lea	rcx, [rax + 1]
	mov	qword ptr [word ptr [rip + oc]],  rcx
	mov	rdx,  qword ptr [word ptr [rip + obuf]]
	mov	byte ptr [rdx + rax], r12b
	cmp	rcx,  qword ptr [word ptr [rip + output_blocksize]]
	jb	.label_407
.label_404:
	call	write_output
.label_407:
	inc	rbx
	cmp	rbx, r15
	jb	.label_408
.label_410:
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405090

	.globl copy_simple
	.type copy_simple, @function
copy_simple:
	push	r15
	push	r14
	push	rbx
	mov	r14, rsi
	mov	r15, rdi
	nop	dword ptr [rax + rax]
.label_414:
	mov	rbx,  qword ptr [word ptr [rip + output_blocksize]]
	mov	rdi,  qword ptr [word ptr [rip + oc]]
	sub	rbx, rdi
	cmp	r14, rbx
	cmovb	rbx, r14
	add	rdi,  qword ptr [word ptr [rip + obuf]]
	mov	rsi, r15
	mov	rdx, rbx
	call	memcpy
	sub	r14, rbx
	mov	rax,  qword ptr [word ptr [rip + oc]]
	add	rax, rbx
	mov	qword ptr [word ptr [rip + oc]],  rax
	cmp	rax,  qword ptr [word ptr [rip + output_blocksize]]
	jb	.label_413
	call	write_output
.label_413:
	add	r15, rbx
	test	r14, r14
	jne	.label_414
	pop	rbx
	pop	r14
	pop	r15
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405100

	.globl write_output
	.type write_output, @function
write_output:
	push	rbp
	push	r14
	push	rbx
	mov	rdi,  qword ptr [word ptr [rip + obuf]]
	mov	rsi,  qword ptr [word ptr [rip + output_blocksize]]
	call	iwrite
	mov	rbx, rax
	add	qword ptr [word ptr [rip + w_bytes]],  rbx
	cmp	rbx,  qword ptr [word ptr [rip + output_blocksize]]
	jne	.label_416
	inc	qword ptr [word ptr [rip + w_full]]
	mov	qword ptr [word ptr [rip + oc]],  0
	pop	rbx
	pop	r14
	pop	rbp
	ret	
.label_416:
	call	__errno_location
	mov	r14d, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_247
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	mov	rsi,  qword ptr [word ptr [rip + output_file]]
	mov	edi, 4
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, r14d
	mov	rdx, rbp
	call	nl_error
	test	rbx, rbx
	je	.label_415
	inc	qword ptr [word ptr [rip + w_partial]]
.label_415:
	call	quit
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4051a0

	.globl skip_via_lseek
	.type skip_via_lseek, @function
skip_via_lseek:
	push	rbp
	push	r15
	push	r14
	push	r12
	push	rbx
	sub	rsp, 0x60
	mov	r15d, ecx
	mov	r12, rdx
	mov	ebp, esi
	mov	r14, rdi
	lea	rdx, [rsp + 0x30]
	mov	esi, 0x80306d02
	xor	eax, eax
	mov	edi, ebp
	call	ioctl
	mov	ebx, eax
	mov	edi, ebp
	mov	rsi, r12
	mov	edx, r15d
	call	lseek
	mov	r15, rax
	test	ebx, ebx
	jne	.label_417
	test	r15, r15
	js	.label_417
	lea	rdx, [rsp]
	mov	esi, 0x80306d02
	xor	eax, eax
	mov	edi, ebp
	call	ioctl
	test	eax, eax
	jne	.label_417
	mov	rax, qword ptr [rsp + 0x38]
	cmp	rax, qword ptr [rsp + 8]
	jne	.label_417
	mov	eax, dword ptr [rsp + 0x58]
	cmp	eax, dword ptr [rsp + 0x28]
	jne	.label_417
	mov	eax, dword ptr [rsp + 0x5c]
	cmp	eax, dword ptr [rsp + 0x2c]
	jne	.label_417
	cmp	dword ptr [dword ptr [rip + status_level]],  1
	je	.label_419
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_418
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	r8, qword ptr [rsp]
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	mov	rcx, r14
	call	nl_error
.label_419:
	call	__errno_location
	mov	dword ptr [rax], 0
	mov	r15, -1
.label_417:
	mov	rax, r15
	add	rsp, 0x60
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x405270

	.globl usable_st_size
	.type usable_st_size, @function
usable_st_size:
	movzx	eax, word ptr [rdi + 0x18]
	or	eax, 0x2000
	and	eax, 0xf000
	cmp	eax, 0xa000
	jne	.label_420
	mov	al, 1
	ret	
.label_420:
	xor	eax, eax
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405290

	.globl is_nul
	.type is_nul, @function
is_nul:
	mov	rcx, rsi
	mov	al, 1
	test	rcx, rcx
	je	.label_421
	dec	rcx
	mov	rsi, rdi
.label_423:
	cmp	byte ptr [rsi], 0
	jne	.label_422
	test	rcx, rcx
	je	.label_421
	inc	rsi
	mov	edx, ecx
	dec	rcx
	test	dl, 0xf
	jne	.label_423
	push	rax
	inc	rcx
	mov	rdx, rcx
	call	memcmp
	test	eax, eax
	sete	al
	add	rsp, 8
.label_421:
	ret	
.label_422:
	xor	eax, eax
	ret	
	.section	.text
	.align	32
	#Procedure 0x4052d0

	.globl ptr_align
	.type ptr_align, @function
ptr_align:
	lea	rcx, [rdi + rsi - 1]
	xor	edx, edx
	mov	rax, rcx
	div	rsi
	sub	rcx, rdx
	mov	rax, rcx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4052f0

	.globl to_uchar
	.type to_uchar, @function
to_uchar:
	mov	eax, edi
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405300

	.globl cache_round
	.type cache_round, @function
cache_round:
	test	edi, edi
	mov	eax, OFFSET FLAT:cache_round.i_pending
	mov	ecx, OFFSET FLAT:cache_round.o_pending
	cmove	rcx, rax
	test	rsi, rsi
	mov	rax, qword ptr [rcx]
	je	.label_424
	add	rax, rsi
	mov	edx, eax
	and	edx, 0x1ffff
	mov	qword ptr [rcx], rdx
	xor	ecx, ecx
	sub	rax, rdx
	cmovbe	rax, rcx
.label_424:
	ret	
	.section	.text
	.align	32
	#Procedure 0x405330

	.globl close_stream
	.type close_stream, @function
close_stream:
	push	rbp
	push	r14
	push	rbx
	mov	rbx, rdi
	call	__fpending
	mov	r14, rax
	mov	rdi, rbx
	call	ferror_unlocked
	mov	ebp, eax
	mov	rdi, rbx
	call	rpl_fclose
	test	ebp, ebp
	je	.label_426
	mov	ebx, 0xffffffff
	test	eax, eax
	jne	.label_425
	call	__errno_location
	mov	dword ptr [rax], 0
	jmp	.label_425
.label_426:
	test	eax, eax
	sete	cl
	neg	eax
	sbb	ebx, ebx
	test	r14, r14
	jne	.label_425
	test	cl, cl
	jne	.label_425
	call	__errno_location
	xor	ecx, ecx
	cmp	dword ptr [rax], 9
	mov	ebx, 0xffffffff
	cmove	ebx, ecx
.label_425:
	mov	eax, ebx
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4053a0
	.globl close_stdout_set_file_name
	.type close_stdout_set_file_name, @function
close_stdout_set_file_name:

	mov	qword ptr [word ptr [rip + file_name]],  rdi
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4053b0
	.globl close_stdout_set_ignore_EPIPE
	.type close_stdout_set_ignore_EPIPE, @function
close_stdout_set_ignore_EPIPE:

	mov	byte ptr [byte ptr [rip + ignore_EPIPE]],  dil
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4053c0

	.globl close_stdout
	.type close_stdout, @function
close_stdout:
	push	rbp
	push	r14
	push	rbx
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	call	close_stream
	test	eax, eax
	je	.label_430
	cmp	byte ptr [byte ptr [rip + ignore_EPIPE]],  0
	je	.label_427
	call	__errno_location
	cmp	dword ptr [rax], 0x20
	jne	.label_427
.label_430:
	mov	rdi,  qword ptr [word ptr [rip + stderr]]
	call	close_stream
	test	eax, eax
	jne	.label_431
	pop	rbx
	pop	r14
	pop	rbp
	ret	
.label_427:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_432
	mov	edx, 5
	call	dcgettext
	mov	r14, rax
	mov	rbx,  qword ptr [word ptr [rip + file_name]]
	call	__errno_location
	test	rbx, rbx
	mov	ebp, dword ptr [rax]
	jne	.label_429
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_428
	xor	eax, eax
	mov	esi, ebp
	mov	rcx, r14
	call	error
	mov	edi,  dword ptr [dword ptr [rip + exit_failure]]
	call	_exit
.label_431:
	mov	edi,  dword ptr [dword ptr [rip + exit_failure]]
	call	_exit
.label_429:
	mov	rdi, rbx
	call	quotearg_colon
	mov	rcx, rax
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_159
	xor	eax, eax
	mov	esi, ebp
	mov	r8, r14
	call	error
	mov	edi,  dword ptr [dword ptr [rip + exit_failure]]
	call	_exit
	nop	dword ptr [rax]
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405480

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
	je	.label_433
	test	ebx, ebx
	js	.label_433
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
	jmp	.label_434
.label_433:
	mov	eax, ebx
.label_434:
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4054e0

	.globl gethrxtime
	.type gethrxtime, @function
gethrxtime:
	sub	rsp, 0x18
	lea	rsi, [rsp + 8]
	mov	edi, 1
	call	clock_gettime
	test	eax, eax
	je	.label_435
	lea	rdi, [rsp + 8]
	call	gettime
.label_435:
	mov	rdi, qword ptr [rsp + 8]
	mov	rsi, qword ptr [rsp + 0x10]
	call	xtime_make
	add	rsp, 0x18
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405520

	.globl xtime_make
	.type xtime_make, @function
xtime_make:
	movabs	rcx, 0x112e0be826d694b3
	mov	rax, rsi
	imul	rcx
	mov	rax, rdx
	shr	rax, 0x3f
	sar	rdx, 0x1a
	add	rdx, rax
	add	rdi, rdx
	imul	rax, rdx, 0x3b9aca00
	sub	rsi, rax
	imul	rax, rdi, 0x3b9aca00
	add	rax, rsi
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405560

	.globl xtime_nonnegative_sec
	.type xtime_nonnegative_sec, @function
xtime_nonnegative_sec:
	movabs	rcx, 0x112e0be826d694b3
	mov	rax, rdi
	imul	rcx
	mov	rax, rdx
	shr	rax, 0x3f
	sar	rdx, 0x1a
	lea	rax, [rdx + rax]
	ret	
	.section	.text
	.align	32
	#Procedure 0x405580
	.globl xtime_sec
	.type xtime_sec, @function
xtime_sec:

	test	rdi, rdi
	js	.label_436
	jmp	xtime_nonnegative_sec
.label_436:
	add	rdi, 0x3b9ac9ff
	movabs	rcx, 0x112e0be826d694b3
	mov	rax, rdi
	imul	rcx
	mov	rax, rdx
	shr	rax, 0x3f
	sar	rdx, 0x1a
	lea	rax, [rdx + rax - 1]
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x4055b0
	.globl xtime_nonnegative_nsec
	.type xtime_nonnegative_nsec, @function
xtime_nonnegative_nsec:

	mov	rcx, rdi
	movabs	rdx, 0x112e0be826d694b3
	mov	rax, rcx
	imul	rdx
	mov	rax, rdx
	shr	rax, 0x3f
	sar	rdx, 0x1a
	add	rdx, rax
	imul	rax, rdx, 0x3b9aca00
	sub	rcx, rax
	mov	rax, rcx
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x4055e0
	.globl xtime_nsec
	.type xtime_nsec, @function
xtime_nsec:

	mov	rcx, rdi
	movabs	rdx, 0x112e0be826d694b3
	mov	rax, rcx
	imul	rdx
	mov	rax, rdx
	shr	rax, 0x3f
	sar	rdx, 0x1a
	add	rdx, rax
	imul	rax, rdx, 0x3b9aca00
	mov	rdx, rcx
	sub	rdx, rax
	add	rdx, 0x3b9aca00
	sub	rcx, rax
	cmovs	rcx, rdx
	mov	rax, rcx
	ret	
	.section	.text
	.align	32
	#Procedure 0x405620

	.globl gettime
	.type gettime, @function
gettime:
	mov	rax, rdi
	xor	edi, edi
	mov	rsi, rax
	jmp	clock_gettime
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x405630
	.globl current_timespec
	.type current_timespec, @function
current_timespec:

	sub	rsp, 0x18
	lea	rdi, [rsp + 8]
	call	gettime
	mov	rax, qword ptr [rsp + 8]
	mov	rdx, qword ptr [rsp + 0x10]
	add	rsp, 0x18
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x405650

	.globl human_readable
	.type human_readable, @function
human_readable:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x98
	mov	r14, r8
	mov	r15, rcx
	mov	r12, rsi
	mov	r13, rdi
	mov	eax, edx
	and	eax, 3
	mov	dword ptr [rsp + 0x3c], eax
	mov	dword ptr [rsp + 0x1c], edx
	mov	eax, edx
	and	eax, 0x20
	mov	dword ptr [rsp + 0x38], eax
	mov	eax, 0x400
	mov	ecx, 0x3e8
	cmovne	ecx, eax
	mov	dword ptr [rsp + 0x34], ecx
	call	localeconv
	mov	rbp, rax
	mov	rbx, qword ptr [rbp]
	mov	rdi, rbx
	call	strlen
	lea	rcx, [rax - 1]
	cmp	rcx, 0x10
	mov	ecx, 1
	cmovb	rcx, rax
	mov	qword ptr [rsp + 0x50], rcx
	mov	eax, OFFSET FLAT:label_460
	cmovb	rax, rbx
	mov	qword ptr [rsp + 0x40], rax
	mov	rbx, qword ptr [rbp + 8]
	mov	rbp, qword ptr [rbp + 0x10]
	mov	rdi, rbx
	call	strlen
	mov	rsi, r14
	cmp	rax, 0x11
	mov	r14d, OFFSET FLAT:label_47
	cmovb	r14, rbx
	mov	qword ptr [rsp + 0x20], r12
	lea	rax, [r12 + 0x287]
	mov	qword ptr [rsp + 0x28], rax
	cmp	rsi, r15
	mov	qword ptr [rsp + 0x60], rsi
	mov	qword ptr [rsp + 0x70], rbp
	mov	qword ptr [rsp + 0x68], r14
	jbe	.label_472
	test	r15, r15
	mov	r8d, dword ptr [rsp + 0x34]
	je	.label_442
	xor	edx, edx
	mov	rax, rsi
	div	r15
	test	rdx, rdx
	jne	.label_442
	xor	edx, edx
	mov	rax, rsi
	div	r15
	mov	rsi, rax
	xor	edx, edx
	mov	rax, r13
	div	rsi
	mov	r12, rax
	add	rdx, rdx
	lea	rax, [rdx + rdx*4]
	xor	edx, edx
	div	rsi
	mov	rcx, rax
	xor	ebp, ebp
	add	rdx, rdx
	setne	bpl
	cmp	rsi, rdx
	sbb	eax, eax
	and	eax, 1
	or	eax, 2
	cmp	rdx, rsi
	cmovae	ebp, eax
	jmp	.label_450
.label_472:
	xor	edx, edx
	mov	rax, r15
	div	rsi
	test	rdx, rdx
	mov	r8d, dword ptr [rsp + 0x34]
	jne	.label_442
	xor	ebp, ebp
	xor	edx, edx
	mov	rax, r15
	div	rsi
	mov	rcx, rax
	mov	r12, rcx
	imul	r12, r13
	xor	edx, edx
	mov	rax, r12
	div	rcx
	cmp	rax, r13
	mov	ecx, 0
	jne	.label_442
.label_450:
	mov	r15d, dword ptr [rsp + 0x1c]
	and	r15d, 0x10
	mov	ebx, 0xffffffff
	je	.label_462
	mov	esi, r8d
	xor	ebx, ebx
	cmp	rsi, r12
	mov	rax, qword ptr [rsp + 0x28]
	jbe	.label_465
	mov	r14, rax
	jmp	.label_447
.label_442:
	mov	qword ptr [rsp + 0x80], rsi
	xor	eax, eax
	test	rsi, rsi
	setns	al
	fild	qword ptr [rsp + 0x80]
	fadd	dword ptr [dword ptr [+ (rax * 4) + label_470]]
	mov	qword ptr [rsp + 0x88], r13
	xor	eax, eax
	test	r13, r13
	setns	al
	fild	qword ptr [rsp + 0x88]
	fadd	dword ptr [dword ptr [+ (rax * 4) + label_470]]
	mov	qword ptr [rsp + 0x90], r15
	xor	eax, eax
	test	r15, r15
	setns	al
	fild	qword ptr [rsp + 0x90]
	fadd	dword ptr [dword ptr [+ (rax * 4) + label_470]]
	fdivrp	st(2)
	fmulp	st(1)
	mov	r12d, dword ptr [rsp + 0x1c]
	test	r12b, 0x10
	jne	.label_471
	fstp	xword ptr [rsp]
	mov	edi, dword ptr [rsp + 0x3c]
	call	adjust_value
	fstp	xword ptr [rsp]
	xor	r13d, r13d
	mov	esi, 1
	mov	rdx, -1
	mov	ecx, OFFSET FLAT:label_453
	xor	eax, eax
	mov	r15, qword ptr [rsp + 0x20]
	mov	rdi, r15
	call	__sprintf_chk
	mov	rdi, r15
	call	strlen
	mov	ebx, 0xffffffff
	jmp	.label_444
.label_471:
	mov	eax, r8d
	mov	qword ptr [rsp + 0x78], rax
	fld1	
	xor	ebx, ebx
	fild	qword ptr [rsp + 0x78]
	fldz	
	nop	dword ptr [rax]
.label_463:
	fstp	st(0)
	fmul	st(1), st(0)
	inc	ebx
	fld	st(0)
	fmul	st(2)
	cmp	ebx, 7
	jg	.label_458
	fxch	st(3)
	fucomi	st(3)
	fstp	st(3)
	fldz	
	jae	.label_463
.label_458:
	fstp	st(1)
	fstp	st(0)
	fdivp	st(1)
	fld	st(0)
	fstp	xword ptr [rsp + 0x40]
	fstp	xword ptr [rsp]
	mov	ebp, dword ptr [rsp + 0x3c]
	mov	edi, ebp
	call	adjust_value
	fstp	xword ptr [rsp]
	mov	esi, 1
	mov	rdx, -1
	mov	ecx, OFFSET FLAT:label_467
	xor	eax, eax
	mov	r15, qword ptr [rsp + 0x20]
	mov	rdi, r15
	call	__sprintf_chk
	mov	rdi, r15
	call	strlen
	mov	ecx, dword ptr [rsp + 0x38]
	shr	ecx, 5
	xor	ecx, 1
	or	rcx, 2
	mov	r13, qword ptr [rsp + 0x50]
	add	rcx, r13
	cmp	rcx, rax
	jb	.label_476
	fld	xword ptr [rsp + 0x40]
	fstp	st(0)
	inc	r13
	test	r12b, 8
	je	.label_444
	cmp	byte ptr [r15 + rax - 1], 0x30
	jne	.label_444
.label_476:
	fld	dword ptr [dword ptr [rip + label_446]]
	fld	st(0)
	fstp	xword ptr [rsp + 0x50]
	fld	xword ptr [rsp + 0x40]
	fmulp	st(1)
	fstp	xword ptr [rsp]
	mov	edi, ebp
	call	adjust_value
	fld	xword ptr [rsp + 0x50]
	fdivp	st(1)
	fstp	xword ptr [rsp]
	xor	r13d, r13d
	mov	esi, 1
	mov	rdx, -1
	mov	ecx, OFFSET FLAT:label_453
	xor	eax, eax
	mov	rdi, r15
	call	__sprintf_chk
	mov	rdi, r15
	call	strlen
.label_444:
	mov	r14, qword ptr [rsp + 0x28]
	mov	rbp, r14
	sub	rbp, rax
	mov	rdi, rbp
	mov	rsi, r15
	mov	rdx, rax
	call	memmove
	sub	r14, r13
	jmp	.label_455
.label_462:
	mov	r14, qword ptr [rsp + 0x28]
	jmp	.label_447
.label_465:
	xor	ebx, ebx
	mov	r9d, dword ptr [rsp + 0x3c]
	nop	dword ptr [rax]
.label_438:
	xor	edx, edx
	mov	rax, r12
	div	rsi
	lea	edx, [rdx + rdx*4]
	lea	ecx, [rcx + rdx*2]
	mov	edi, ebp
	sar	edi, 1
	xor	edx, edx
	mov	r12, rax
	mov	eax, ecx
	div	r8d
	lea	edx, [rdi + rdx*2]
	cmp	edx, r8d
	mov	ecx, eax
	jae	.label_464
	xor	eax, eax
	add	edx, ebp
	setne	al
	mov	ebp, eax
	jmp	.label_468
	nop	word ptr cs:[rax + rax]
.label_464:
	add	edx, ebp
	cmp	r8d, edx
	sbb	ebp, ebp
	and	ebp, 1
	or	ebp, 2
.label_468:
	inc	ebx
	cmp	ebx, 7
	jg	.label_473
	cmp	rsi, r12
	jbe	.label_438
.label_473:
	cmp	r12, 9
	ja	.label_440
	cmp	r9d, 1
	jne	.label_441
	mov	eax, ecx
	and	eax, 1
	add	eax, ebp
	cmp	eax, 2
	ja	.label_443
	jmp	.label_448
.label_440:
	mov	r14, qword ptr [rsp + 0x28]
	jmp	.label_447
.label_441:
	test	r9d, r9d
	jne	.label_448
	test	ebp, ebp
	je	.label_448
.label_443:
	inc	ecx
	xor	ebp, ebp
	cmp	ecx, 0xa
	jne	.label_448
	inc	r12
	xor	ecx, ecx
	cmp	r12, 9
	mov	ebp, 0
	ja	.label_451
.label_448:
	mov	eax, dword ptr [rsp + 0x1c]
	test	al, 8
	je	.label_452
	test	ecx, ecx
	jne	.label_452
	mov	r14, qword ptr [rsp + 0x28]
	jmp	.label_447
.label_452:
	add	ecx, 0x30
	mov	rax, qword ptr [rsp + 0x20]
	lea	r14, [rax + 0x286]
	mov	byte ptr [rax + 0x286], cl
	mov	rdx, qword ptr [rsp + 0x50]
	sub	r14, rdx
	mov	rdi, r14
	mov	rsi, qword ptr [rsp + 0x40]
	call	memcpy
	xor	ebp, ebp
	xor	ecx, ecx
	jmp	.label_447
.label_451:
	xor	ebp, ebp
	mov	r14, qword ptr [rsp + 0x28]
	mov	r12d, 0xa
.label_447:
	mov	eax, dword ptr [rsp + 0x1c]
	and	al, 3
	je	.label_461
	cmp	al, 1
	jne	.label_459
	movsxd	rax, ebp
	mov	edx, r12d
	and	edx, 1
	xor	esi, esi
	add	rdx, rax
	setne	sil
	add	esi, ecx
	cmp	esi, 5
	jg	.label_474
	jmp	.label_459
.label_461:
	add	ecx, ebp
	jle	.label_459
.label_474:
	inc	r12
	mov	eax, dword ptr [rsp + 0x34]
	cmp	ebx, 7
	jg	.label_459
	test	r15d, r15d
	je	.label_459
	cmp	r12, rax
	jne	.label_459
	inc	ebx
	mov	r12d, 1
	mov	eax, dword ptr [rsp + 0x1c]
	test	al, 8
	jne	.label_459
	mov	byte ptr [r14 - 1], 0x30
	dec	r14
	mov	rdx, qword ptr [rsp + 0x50]
	sub	r14, rdx
	mov	rdi, r14
	mov	rsi, qword ptr [rsp + 0x40]
	call	memcpy
	mov	r12d, 1
.label_459:
	mov	r15, qword ptr [rsp + 0x20]
	movabs	rcx, 0xcccccccccccccccd
	mov	rbp, r14
	nop	word ptr cs:[rax + rax]
.label_449:
	mov	rax, r12
	mul	rcx
	mov	eax, edx
	shr	eax, 2
	and	eax, 0x3ffffffe
	lea	eax, [rax + rax*4]
	mov	esi, r12d
	sub	esi, eax
	or	sil, 0x30
	mov	byte ptr [rbp - 1], sil
	dec	rbp
	shr	rdx, 3
	cmp	r12, 9
	mov	r12, rdx
	ja	.label_449
	mov	r12d, dword ptr [rsp + 0x1c]
.label_455:
	test	r12b, 4
	je	.label_454
	sub	r14, rbp
	mov	rdi, rbp
	mov	rsi, r14
	mov	rdx, qword ptr [rsp + 0x70]
	mov	rcx, qword ptr [rsp + 0x68]
	call	group_number
	mov	rbp, rax
.label_454:
	mov	rsi, qword ptr [rsp + 0x60]
	mov	eax, dword ptr [rsp + 0x34]
	mov	rdi, qword ptr [rsp + 0x28]
	test	r12b, r12b
	jns	.label_445
	test	ebx, ebx
	jns	.label_457
	xor	ebx, ebx
	cmp	rsi, 2
	jb	.label_457
	mov	eax, eax
	xor	ecx, ecx
	mov	edx, 1
	nop	word ptr cs:[rax + rax]
.label_466:
	mov	ebx, 8
	cmp	ecx, 7
	je	.label_457
	inc	ecx
	imul	rdx, rax
	cmp	rdx, rsi
	mov	ebx, ecx
	jb	.label_466
.label_457:
	mov	eax, r12d
	and	eax, 0x100
	test	r12b, 0x40
	je	.label_469
	mov	ecx, ebx
	or	ecx, eax
	je	.label_469
	mov	byte ptr [r15 + 0x287], 0x20
	add	r15, 0x288
	mov	rdi, r15
.label_469:
	test	ebx, ebx
	je	.label_475
	cmp	dword ptr [rsp + 0x38], 0
	jne	.label_437
	mov	cl, 0x6b
	cmp	ebx, 1
	je	.label_439
.label_437:
	movsxd	rcx, ebx
	mov	cl,  byte ptr [byte ptr [rcx + power_letter]]
.label_439:
	mov	byte ptr [rdi], cl
	inc	rdi
.label_475:
	test	eax, eax
	je	.label_445
	cmp	dword ptr [rsp + 0x38], 0
	je	.label_456
	test	ebx, ebx
	je	.label_456
	mov	byte ptr [rdi], 0x69
	inc	rdi
.label_456:
	mov	byte ptr [rdi], 0x42
	inc	rdi
.label_445:
	mov	byte ptr [rdi], 0
	mov	rax, rbp
	add	rsp, 0x98
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x405c50

	.globl adjust_value
	.type adjust_value, @function
adjust_value:
	fld	xword ptr [rsp + 8]
	cmp	edi, 1
	je	.label_477
	fld	xword ptr [word ptr [rip + label_479]]
	fucomip	st(1)
	jbe	.label_477
	fld	dword ptr [dword ptr [rip + label_478]]
	fld	st(1)
	fsub	st(1)
	fnstcw	word ptr [rsp - 0x22]
	movzx	eax, word ptr [rsp - 0x22]
	mov	word ptr [rsp - 0x22], 0xc7f
	fldcw	word ptr [rsp - 0x22]
	mov	word ptr [rsp - 0x22], ax
	fistp	qword ptr [rsp - 0x18]
	fldcw	word ptr [rsp - 0x22]
	fnstcw	word ptr [rsp - 0x24]
	movzx	eax, word ptr [rsp - 0x24]
	mov	word ptr [rsp - 0x24], 0xc7f
	fldcw	word ptr [rsp - 0x24]
	mov	word ptr [rsp - 0x24], ax
	fld	st(1)
	fistp	qword ptr [rsp - 0x20]
	fldcw	word ptr [rsp - 0x24]
	movabs	rax, 0x8000000000000000
	xor	rax, qword ptr [rsp - 0x18]
	fxch	st(1)
	fucomi	st(1)
	fstp	st(1)
	cmovb	rax, qword ptr [rsp - 0x20]
	test	edi, edi
	sete	sil
	mov	qword ptr [rsp - 0x10], rax
	xor	edx, edx
	test	rax, rax
	setns	dl
	fild	qword ptr [rsp - 0x10]
	fadd	dword ptr [dword ptr [+ (rdx * 4) + label_470]]
	fucomip	st(1)
	fstp	st(0)
	setp	dl
	setne	cl
	or	cl, dl
	and	cl, sil
	movzx	ecx, cl
	xor	edx, edx
	add	rcx, rax
	mov	qword ptr [rsp - 8], rcx
	setns	dl
	fild	qword ptr [rsp - 8]
	fadd	dword ptr [dword ptr [+ (rdx * 4) + label_470]]
.label_477:
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x405d20

	.globl group_number
	.type group_number, @function
group_number:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x48
	mov	r15, rdx
	mov	r12, rsi
	mov	rbx, rdi
	mov	qword ptr [rsp + 8], rcx
	mov	rdi, rcx
	call	strlen
	mov	r14, rax
	lea	rdi, [rsp + 0x10]
	mov	rsi, rbx
	mov	rdx, r12
	call	memcpy
	add	rbx, r12
	mov	r13, r14
	neg	r13
	mov	rbp, -1
	jmp	.label_482
	nop	dword ptr [rax]
.label_480:
	add	rbx, r13
	mov	rdi, rbx
	mov	rsi, qword ptr [rsp + 8]
	mov	rdx, r14
	call	memcpy
.label_482:
	movzx	eax, byte ptr [r15]
	test	rax, rax
	je	.label_481
	cmp	al, 0x7f
	cmovae	rax, r12
	inc	r15
	mov	rbp, rax
.label_481:
	cmp	r12, rbp
	cmovb	rbp, r12
	sub	rbx, rbp
	mov	rax, r12
	sub	rax, rbp
	lea	rsi, [rsp + rax + 0x10]
	mov	rdi, rbx
	mov	rdx, rbp
	call	memcpy
	sub	r12, rbp
	jne	.label_480
	mov	rax, rbx
	add	rsp, 0x48
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x405dd0
	.globl human_options
	.type human_options, @function
human_options:

	push	rbx
	mov	rbx, rdx
	mov	rax, rsi
	mov	rsi, rbx
	mov	rdx, rax
	call	humblock
	cmp	qword ptr [rbx], 0
	jne	.label_483
	call	default_block_size
	mov	qword ptr [rbx], rax
	mov	eax, 4
.label_483:
	pop	rbx
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405e00

	.globl humblock
	.type humblock, @function
humblock:
	push	rbp
	push	r15
	push	r14
	push	rbx
	push	rax
	mov	r14, rdx
	mov	r15, rsi
	test	rdi, rdi
	jne	.label_484
	mov	edi, OFFSET FLAT:label_489
	call	getenv
	mov	rdi, rax
	test	rdi, rdi
	jne	.label_484
	mov	edi, OFFSET FLAT:label_491
	call	getenv
	mov	rdi, rax
	test	rdi, rdi
	je	.label_493
.label_484:
	xor	ebp, ebp
	cmp	byte ptr [rdi], 0x27
	lea	rbx, [rdi + 1]
	sete	bpl
	cmovne	rbx, rdi
	shl	ebp, 2
	mov	esi, OFFSET FLAT:block_size_args
	mov	edx, OFFSET FLAT:block_size_opts
	mov	ecx, 4
	mov	rdi, rbx
	call	argmatch
	test	eax, eax
	js	.label_492
	cdqe	
	or	ebp,  dword ptr [dword ptr [+ (rax * 4) + block_size_opts]]
	mov	qword ptr [r15], 1
.label_486:
	mov	dword ptr [r14], ebp
	xor	eax, eax
	jmp	.label_494
.label_492:
	lea	rsi, [rsp]
	xor	edx, edx
	mov	r8d, OFFSET FLAT:label_485
	mov	rdi, rbx
	mov	rcx, r15
	call	xstrtoumax
	test	eax, eax
	je	.label_490
	mov	dword ptr [r14], 0
.label_494:
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_490:
	mov	al, byte ptr [rbx]
	add	al, 0xd0
	cmp	al, 0xa
	jb	.label_486
	mov	rax, qword ptr [rsp]
	nop	dword ptr [rax]
.label_487:
	cmp	rax, rbx
	je	.label_495
	movzx	ecx, byte ptr [rbx + 1]
	inc	rbx
	add	cl, 0xd0
	cmp	cl, 0xa
	jae	.label_487
	jmp	.label_486
.label_493:
	call	default_block_size
	mov	qword ptr [r15], rax
	xor	ebp, ebp
	jmp	.label_486
.label_495:
	mov	ecx, ebp
	or	ecx, 0x80
	or	ebp, 0x180
	cmp	byte ptr [rax - 1], 0x42
	cmove	ecx, ebp
	jne	.label_488
	cmp	byte ptr [rax - 2], 0x69
	jne	.label_486
.label_488:
	or	ecx, 0x20
	mov	ebp, ecx
	jmp	.label_486
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x405f10

	.globl default_block_size
	.type default_block_size, @function
default_block_size:
	push	rax
	mov	edi, OFFSET FLAT:label_89
	call	getenv
	test	rax, rax
	mov	ecx, 0x200
	mov	eax, 0x400
	cmovne	rax, rcx
	pop	rcx
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x405f30
	.globl parse_long_options
	.type parse_long_options, @function
parse_long_options:

	push	rbp
	push	r15
	push	r14
	push	r12
	push	rbx
	sub	rsp, 0xd0
	mov	rbx, r9
	mov	r14, r8
	mov	r15, rcx
	mov	r12, rdx
	test	al, al
	je	.label_496
	movaps	xmmword ptr [rsp + 0x50], xmm0
	movaps	xmmword ptr [rsp + 0x60], xmm1
	movaps	xmmword ptr [rsp + 0x70], xmm2
	movaps	xmmword ptr [rsp + 0x80], xmm3
	movaps	xmmword ptr [rsp + 0x90], xmm4
	movaps	xmmword ptr [rsp + 0xa0], xmm5
	movaps	xmmword ptr [rsp + 0xb0], xmm6
	movaps	xmmword ptr [rsp + 0xc0], xmm7
.label_496:
	mov	ebp,  dword ptr [dword ptr [rip + opterr]]
	mov	dword ptr [dword ptr [rip + opterr]],  0
	cmp	edi, 2
	jne	.label_497
	mov	edx, OFFSET FLAT:label_498
	mov	ecx, OFFSET FLAT:long_options
	xor	r8d, r8d
	call	getopt_long
	cmp	eax, 0x68
	je	.label_499
	cmp	eax, 0x76
	jne	.label_497
	lea	rax, [rsp + 0x20]
	mov	qword ptr [rsp + 0x10], rax
	lea	rax, [rsp + 0x100]
	mov	qword ptr [rsp + 8], rax
	mov	dword ptr [rsp + 4], 0x30
	mov	dword ptr [rsp], 0x30
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	lea	r8, [rsp]
	mov	rsi, r12
	mov	rdx, r15
	mov	rcx, r14
	call	version_etc_va
	xor	edi, edi
	call	exit
.label_499:
	xor	edi, edi
	call	rbx
.label_497:
	mov	dword ptr [dword ptr [rip + opterr]],  ebp
	mov	dword ptr [dword ptr [rip + optind]],  0
	add	rsp, 0xd0
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406030

	.globl parse_gnu_standard_options_only
	.type parse_gnu_standard_options_only, @function
parse_gnu_standard_options_only:
	push	rbp
	push	r15
	push	r14
	push	rbx
	sub	rsp, 0xd8
	mov	r14, r8
	mov	r15, rcx
	mov	rbx, rdx
	test	al, al
	je	.label_503
	movaps	xmmword ptr [rsp + 0x50], xmm0
	movaps	xmmword ptr [rsp + 0x60], xmm1
	movaps	xmmword ptr [rsp + 0x70], xmm2
	movaps	xmmword ptr [rsp + 0x80], xmm3
	movaps	xmmword ptr [rsp + 0x90], xmm4
	movaps	xmmword ptr [rsp + 0xa0], xmm5
	movaps	xmmword ptr [rsp + 0xb0], xmm6
	movaps	xmmword ptr [rsp + 0xc0], xmm7
.label_503:
	mov	ebp,  dword ptr [dword ptr [rip + opterr]]
	mov	dword ptr [dword ptr [rip + opterr]],  1
	mov	eax, OFFSET FLAT:label_47
	mov	edx, OFFSET FLAT:label_498
	test	r9b, r9b
	cmovne	rdx, rax
	mov	ecx, OFFSET FLAT:long_options
	xor	r8d, r8d
	call	getopt_long
	cmp	eax, -1
	je	.label_502
	mov	rcx, qword ptr [rsp + 0x100]
	cmp	eax, 0x68
	je	.label_504
	cmp	eax, 0x76
	je	.label_501
	mov	edi,  dword ptr [dword ptr [rip + exit_failure]]
	jmp	.label_500
.label_504:
	xor	edi, edi
.label_500:
	call	rcx
.label_502:
	mov	dword ptr [dword ptr [rip + opterr]],  ebp
	add	rsp, 0xd8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_501:
	lea	rax, [rsp + 0x20]
	mov	qword ptr [rsp + 0x10], rax
	lea	rax, [rsp + 0x108]
	mov	qword ptr [rsp + 8], rax
	mov	dword ptr [rsp + 4], 0x30
	mov	dword ptr [rsp], 0x30
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	lea	r8, [rsp]
	mov	rsi, rbx
	mov	rdx, r15
	mov	rcx, r14
	call	version_etc_va
	xor	edi, edi
	call	exit
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x406130

	.globl set_program_name
	.type set_program_name, @function
set_program_name:
	push	r14
	push	rbx
	push	rax
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_508
	mov	esi, 0x2f
	mov	rdi, rbx
	call	strrchr
	test	rax, rax
	lea	r14, [rax + 1]
	cmove	r14, rbx
	mov	rax, r14
	sub	rax, rbx
	cmp	rax, 7
	jl	.label_510
	lea	rdi, [r14 - 7]
	mov	esi, OFFSET FLAT:label_505
	mov	edx, 7
	call	strncmp
	test	eax, eax
	jne	.label_510
	mov	esi, OFFSET FLAT:label_507
	mov	edx, 3
	mov	rdi, r14
	call	strncmp
	test	eax, eax
	jne	.label_506
	add	r14, 3
	mov	qword ptr [word ptr [rip + __progname]],  r14
.label_506:
	mov	rbx, r14
.label_510:
	mov	qword ptr [word ptr [rip + program_name]],  rbx
	mov	qword ptr [word ptr [rip + __progname_full]],  rbx
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
.label_508:
	mov	rcx,  qword ptr [word ptr [rip + stderr]]
	mov	edi, OFFSET FLAT:label_509
	mov	esi, 0x37
	mov	edx, 1
	call	fwrite
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4061e0
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
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406220
	.globl get_quoting_style
	.type get_quoting_style, @function
get_quoting_style:

	test	rdi, rdi
	mov	eax, OFFSET FLAT:default_quoting_options
	cmovne	rax, rdi
	mov	eax, dword ptr [rax]
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x406230
	.globl set_quoting_style
	.type set_quoting_style, @function
set_quoting_style:

	test	rdi, rdi
	mov	eax, OFFSET FLAT:default_quoting_options
	cmovne	rax, rdi
	mov	dword ptr [rax], esi
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x406240

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
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406280
	.globl set_quoting_flags
	.type set_quoting_flags, @function
set_quoting_flags:

	test	rdi, rdi
	mov	ecx, OFFSET FLAT:default_quoting_options
	cmovne	rcx, rdi
	mov	eax, dword ptr [rcx + 4]
	mov	dword ptr [rcx + 4], esi
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4062a0

	.globl set_custom_quoting
	.type set_custom_quoting, @function
set_custom_quoting:
	test	rdi, rdi
	mov	eax, OFFSET FLAT:default_quoting_options
	cmovne	rax, rdi
	mov	dword ptr [rax], 0xa
	test	rsi, rsi
	je	.label_511
	test	rdx, rdx
	je	.label_511
	mov	qword ptr [rax + 0x28], rsi
	mov	qword ptr [rax + 0x30], rdx
	ret	
.label_511:
	push	rax
	call	abort
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4062d0
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
	mov	r8d, dword ptr [rbp]
	mov	r9d, dword ptr [rbp + 4]
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
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406350

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
	mov	qword ptr [rsp + 0xb0], rax
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
	mov	qword ptr [rsp + 0x60], rax
	mov	eax, 0
	mov	qword ptr [rsp + 0x40], rax
	mov	eax, 0
	mov	qword ptr [rsp + 0x38], rax
	mov	eax, 0
	xor	r9d, r9d
	xor	ecx, ecx
	mov	qword ptr [rsp + 0xa0], rcx
.label_622:
	mov	r11, rbp
	xor	r14d, r14d
	mov	ecx, r15d
	cmp	r15d, 0xa
	ja	.label_624
	mov	edi, 7
	mov	r13b, 1
	xor	esi, esi
	mov	r8, qword ptr [rsp + 0x30]
	jmp	qword ptr [word ptr [+ (rcx * 8) + label_515]]
.label_866:
	mov	r14d, r10d
	mov	edi, OFFSET FLAT:label_521
	mov	esi, r15d
	mov	rbx, r11
	mov	ebp, r9d
	call	gettext_quote
	mov	qword ptr [rsp + 0x78], rax
	mov	edi, OFFSET FLAT:label_529
	mov	esi, r15d
	call	gettext_quote
	mov	r9d, ebp
	mov	r10d, r14d
	mov	r11, rbx
	mov	qword ptr [rsp + 0x70], rax
.label_867:
	mov	dword ptr [rsp + 0x48], r9d
	mov	byte ptr [rsp + 0x17], r10b
	test	r12b, 1
	mov	r14d, 0
	mov	rcx, qword ptr [rsp + 0x78]
	jne	.label_538
	mov	al, byte ptr [rcx]
	test	al, al
	mov	r14d, 0
	je	.label_538
	xor	r14d, r14d
.label_552:
	cmp	r14, r11
	jae	.label_547
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + r14], al
.label_547:
	movzx	eax, byte ptr [rcx + r14 + 1]
	inc	r14
	test	al, al
	jne	.label_552
.label_538:
	mov	rbp, qword ptr [rsp + 0x70]
	mov	rdi, rbp
	mov	rbx, r11
	call	strlen
	mov	r11, rbx
	mov	qword ptr [rsp + 0x38], rax
	mov	edi, r15d
	mov	qword ptr [rsp + 0x40], rbp
	mov	r13b, 1
	mov	sil, r12b
	mov	r8, qword ptr [rsp + 0x30]
	mov	r10b, byte ptr [rsp + 0x17]
	mov	r9d, dword ptr [rsp + 0x48]
	jmp	.label_556
.label_859:
	xor	edi, edi
	xor	r14d, r14d
	mov	r13d, eax
	xor	esi, esi
	jmp	.label_556
.label_862:
	mov	al, 1
.label_860:
	mov	r12b, 1
.label_863:
	test	r12b, 1
	mov	cl, 1
	je	.label_570
	mov	ecx, eax
.label_570:
	mov	al, cl
.label_861:
	test	r12b, 1
	jne	.label_573
	test	r11, r11
	je	.label_575
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx], 0x27
.label_575:
	mov	r14d, 1
	jmp	.label_580
.label_573:
	xor	r14d, r14d
.label_580:
	mov	ecx, OFFSET FLAT:label_529
	mov	qword ptr [rsp + 0x40], rcx
	mov	ecx, 1
	mov	qword ptr [rsp + 0x38], rcx
	mov	r13d, eax
	mov	sil, r12b
	mov	edi, 2
	jmp	.label_556
.label_864:
	test	r12b, 1
	jne	.label_589
	test	r11, r11
	je	.label_626
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax], 0x22
.label_626:
	mov	r14d, 1
	jmp	.label_610
.label_865:
	mov	r13b, 1
	mov	edi, 5
	xor	r14d, r14d
	mov	eax, OFFSET FLAT:label_595
	mov	qword ptr [rsp + 0x40], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0x38], rax
	mov	sil, 1
	jmp	.label_556
.label_589:
	xor	r14d, r14d
.label_610:
	mov	eax, OFFSET FLAT:label_595
	mov	qword ptr [rsp + 0x40], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0x38], rax
	mov	r13b, 1
	mov	sil, r12b
	mov	edi, 5
	nop	word ptr cs:[rax + rax]
.label_556:
	cmp	qword ptr [rsp + 0xf0], 0
	setne	r12b
	cmp	edi, 2
	setne	r15b
	sete	bl
	mov	ecx, r13d
	and	cl, 1
	sete	byte ptr [rsp + 0x2b]
	mov	eax, r15d
	mov	byte ptr [rsp + 0x1e], cl
	and	al, cl
	cmp	qword ptr [rsp + 0x38], 0
	setne	cl
	mov	edx, ecx
	mov	byte ptr [rsp + 0x2e], al
	and	dl, al
	mov	byte ptr [rsp + 0x2f], dl
	mov	eax, esi
	and	al, 1
	sete	dl
	and	bl, al
	mov	byte ptr [rsp + 0x2c], bl
	mov	byte ptr [rsp + 7], al
	and	r12b, al
	mov	byte ptr [rsp + 0x2d], r12b
	or	dl, r15b
	mov	byte ptr [rsp + 0x1f], dl
	mov	byte ptr [rsp + 0x1d], r13b
	mov	qword ptr [rsp + 0xa8], rsi
	and	r13b, sil
	and	r13b, cl
	mov	byte ptr [rsp + 0x2a], r13b
	xor	esi, esi
	mov	qword ptr [rsp + 0x68], rdi
	mov	rbp, qword ptr [rsp + 0x20]
	mov	r12, rdi
	mov	rdi, r8
	jmp	.label_615
	nop	dword ptr [rax]
.label_548:
	inc	rsi
.label_615:
	cmp	rbp, -1
	je	.label_528
	cmp	rsi, rbp
	jne	.label_531
	jmp	.label_533
	nop	word ptr cs:[rax + rax]
.label_528:
	cmp	byte ptr [rdi + rsi], 0
	je	.label_533
.label_531:
	cmp	byte ptr [rsp + 0x2f], 0
	je	.label_541
	mov	rax, qword ptr [rsp + 0x38]
	lea	rbx, [rsi + rax]
	cmp	rax, 2
	jb	.label_543
	cmp	rbp, -1
	jne	.label_543
	mov	r15d, r10d
	mov	rbp, r11
	mov	r13d, r9d
	mov	r12, r14
	mov	r14, rsi
	call	strlen
	mov	rsi, r14
	mov	r14, r12
	mov	r9d, r13d
	mov	r12, qword ptr [rsp + 0x68]
	mov	r10d, r15d
	mov	r11, rbp
	mov	rdi, qword ptr [rsp + 0x30]
	mov	rbp, rax
.label_543:
	cmp	rbx, rbp
	jbe	.label_555
.label_541:
	xor	r8d, r8d
.label_581:
	movzx	r15d, byte ptr [rdi + rsi]
	cmp	r15, 0x7e
	ja	.label_557
	xor	edx, edx
	mov	r13b, 1
	mov	cl, 0x6e
	mov	bl, 0x61
	xor	eax, eax
	jmp	qword ptr [word ptr [+ (r15 * 8) + label_561]]
.label_966:
	test	rsi, rsi
	jne	.label_550
	jmp	.label_566
	nop	
.label_555:
	mov	qword ptr [rsp + 0x20], rbp
	mov	ebp, r9d
	mov	r15d, r10d
	mov	rbx, r11
	mov	r12, rsi
	lea	rdi, [rdi + rsi]
	mov	rsi, qword ptr [rsp + 0x40]
	mov	rdx, qword ptr [rsp + 0x38]
	call	memcmp
	test	eax, eax
	sete	r8b
	jne	.label_578
	cmp	byte ptr [rsp + 7], 0
	mov	rdi, qword ptr [rsp + 0x30]
	mov	r11, rbx
	mov	r10d, r15d
	mov	rax, qword ptr [rsp + 0x68]
	mov	r9d, ebp
	mov	rsi, r12
	mov	r12, rax
	mov	rbp, qword ptr [rsp + 0x20]
	je	.label_581
	jmp	.label_520
.label_578:
	mov	rdi, qword ptr [rsp + 0x30]
	mov	r11, rbx
	mov	r10d, r15d
	mov	rax, qword ptr [rsp + 0x68]
	mov	r9d, ebp
	mov	rsi, r12
	mov	r12, rax
	mov	rbp, qword ptr [rsp + 0x20]
	jmp	.label_581
.label_970:
	xor	eax, eax
	cmp	rbp, -1
	je	.label_527
	test	rsi, rsi
	jne	.label_597
	cmp	rbp, 1
	je	.label_566
	xor	r13d, r13d
	jmp	.label_534
.label_959:
	cmp	byte ptr [rsp + 0x1e], 0
	je	.label_602
	cmp	byte ptr [rsp + 7], 0
	jne	.label_549
	cmp	r12d, 2
	jne	.label_525
	mov	eax, r9d
	and	al, 1
	jne	.label_525
	cmp	r14, r11
	jae	.label_609
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_609:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_612
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x24
.label_612:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_616
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_616:
	add	r14, 3
	mov	r9b, 1
.label_525:
	mov	rcx, r14
	cmp	rcx, r11
	jae	.label_623
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + rcx], 0x5c
.label_623:
	lea	r14, [rcx + 1]
	mov	al, 1
	mov	r15b, 0x30
	cmp	r12d, 2
	je	.label_513
	lea	rdx, [rsi + 1]
	cmp	rdx, rbp
	jae	.label_513
	mov	dl, byte ptr [rdi + rdx]
	add	dl, 0xd0
	cmp	dl, 9
	ja	.label_513
	cmp	r14, r11
	jae	.label_563
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + r14], 0x30
.label_563:
	lea	rdx, [rcx + 2]
	cmp	rdx, r11
	jae	.label_607
	mov	rbx, qword ptr [rsp + 8]
	mov	byte ptr [rbx + rdx], 0x30
.label_607:
	add	rcx, 3
	xor	r13d, r13d
	mov	r14, rcx
	jmp	.label_534
.label_960:
	mov	bl, 0x62
	jmp	.label_535
.label_961:
	mov	cl, 0x74
	jmp	.label_540
.label_962:
	mov	bl, 0x76
	jmp	.label_535
.label_963:
	mov	bl, 0x66
	jmp	.label_535
.label_964:
	mov	cl, 0x72
	jmp	.label_540
.label_967:
	mov	r15b, 0x27
	mov	al, 1
	mov	qword ptr [rsp + 0xa0], rax
	cmp	r12d, 2
	jne	.label_546
	cmp	byte ptr [rsp + 7], 0
	jne	.label_549
	test	r11, r11
	sete	al
	mov	rcx, qword ptr [rsp + 0x60]
	mov	rdx, rcx
	test	rdx, rdx
	setne	cl
	or	cl, al
	cmove	rdx, r11
	mov	qword ptr [rsp + 0x60], rdx
	mov	eax, 0
	cmove	r11, rax
	cmp	r14, r11
	jae	.label_553
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_553:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_564
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x5c
.label_564:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_567
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_567:
	add	r14, 3
	xor	r9d, r9d
.label_546:
	xor	eax, eax
	mov	r13b, 1
	jmp	.label_534
.label_968:
	mov	r15b, 0x3f
	cmp	r12d, 5
	je	.label_576
	cmp	r12d, 2
	jne	.label_550
	cmp	byte ptr [rsp + 7], 0
	je	.label_550
	jmp	.label_549
.label_969:
	cmp	r12d, 2
	jne	.label_587
	cmp	byte ptr [rsp + 7], 0
	jne	.label_549
	mov	r15b, 0x5c
	xor	eax, eax
	xor	r13d, r13d
	jmp	.label_537
.label_557:
	mov	dword ptr [rsp + 0x4c], r8d
	mov	dword ptr [rsp + 0x48], r9d
	mov	byte ptr [rsp + 0x17], r10b
	mov	qword ptr [rsp + 0x98], r11
	cmp	qword ptr [rsp + 0xb0], 1
	jne	.label_593
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
.label_518:
	and	r13b, 1
	mov	r8d, r13d
	or	r8b, byte ptr [rsp + 0x2b]
	mov	qword ptr [rsp + 0x58], r12
	cmp	r12, 1
	mov	r11, qword ptr [rsp + 0x98]
	mov	r10b, byte ptr [rsp + 0x17]
	mov	r12, qword ptr [rsp + 0x68]
	mov	r9d, dword ptr [rsp + 0x48]
	ja	.label_608
	test	r8b, r8b
	je	.label_608
	xor	eax, eax
	mov	rbp, qword ptr [rsp + 0x20]
	mov	r8d, dword ptr [rsp + 0x4c]
	jmp	.label_534
.label_527:
	test	rsi, rsi
	jne	.label_621
	mov	cl, byte ptr [rdi + 1]
	test	cl, cl
	jne	.label_621
.label_566:
	mov	dl, 1
.label_965:
	cmp	byte ptr [rsp + 0x1f], 0
	je	.label_549
	xor	eax, eax
	mov	r13b, dl
	nop	word ptr [rax + rax]
.label_534:
	cmp	byte ptr [rsp + 0x2e], 0
	je	.label_516
	cmp	qword ptr [rsp + 0xf0], 0
	jne	.label_517
	jmp	.label_523
	nop	word ptr cs:[rax + rax]
.label_516:
	cmp	byte ptr [rsp + 0x2d], 0
	je	.label_523
.label_517:
	mov	ebx, r8d
	mov	r8, rsi
	mov	ecx, r15d
	shr	cl, 5
	movzx	edx, cl
	mov	esi, 1
	mov	ecx, r15d
	shl	esi, cl
	test	bl, bl
	jne	.label_530
	mov	rcx, qword ptr [rsp + 0xf0]
	and	esi, dword ptr [rcx + rdx*4]
	mov	ebx, r15d
	mov	rsi, r8
	je	.label_537
	jmp	.label_545
	nop	dword ptr [rax]
.label_523:
	test	r8b, r8b
	mov	ebx, r15d
	jne	.label_545
	jmp	.label_537
.label_530:
	mov	ebx, r15d
	mov	rsi, r8
	jmp	.label_545
.label_602:
	cmp	dword ptr [rsp + 0x90], 0
	jne	.label_548
	xor	r15d, r15d
	jmp	.label_550
.label_587:
	mov	cl, 0x5c
	cmp	byte ptr [rsp + 0x2a], 0
	je	.label_540
	xor	eax, eax
	mov	r15b, 0x5c
	xor	r13d, r13d
	jmp	.label_537
.label_540:
	cmp	byte ptr [rsp + 0x1f], 0
	mov	ebx, ecx
	je	.label_549
.label_535:
	xor	eax, eax
	cmp	byte ptr [rsp + 0x1e], 0
	mov	r13d, 0
	je	.label_534
	nop	word ptr cs:[rax + rax]
.label_545:
	cmp	byte ptr [rsp + 7], 0
	jne	.label_549
	cmp	r12d, 2
	jne	.label_571
	mov	eax, r9d
	and	al, 1
	jne	.label_571
	cmp	r14, r11
	jae	.label_574
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_574:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_526
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x24
.label_526:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_583
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_583:
	add	r14, 3
	mov	r9b, 1
.label_571:
	cmp	r14, r11
	jae	.label_588
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x5c
.label_588:
	inc	r14
	jmp	.label_603
.label_593:
	mov	qword ptr [rsp + 0x80], 0
	cmp	rbp, -1
	jne	.label_594
	mov	rbx, rsi
	call	strlen
	mov	rsi, rbx
	mov	rdi, qword ptr [rsp + 0x30]
	mov	rbp, rax
.label_594:
	lea	rax, [rdi + rsi]
	mov	qword ptr [rsp + 0x58], rax
	mov	r13b, 1
	xor	r12d, r12d
	lea	rax, [rsp + 0x80]
	mov	rcx, rax
	mov	qword ptr [rsp + 0x20], rbp
	mov	qword ptr [rsp + 0x50], rsi
.label_590:
	lea	rbx, [r12 + rsi]
	lea	rsi, [rdi + rbx]
	mov	rdx, rbp
	sub	rdx, rbx
	lea	rdi, [rsp + 0x94]
	call	rpl_mbrtowc
	mov	rbp, rax
	test	rbp, rbp
	je	.label_611
	cmp	rbp, -1
	movabs	rsi, 0x20000002b
	je	.label_614
	cmp	rbp, -2
	je	.label_617
	cmp	rbp, 1
	seta	al
	and	al, byte ptr [rsp + 0x2c]
	cmp	al, 1
	mov	rdi, qword ptr [rsp + 0x30]
	mov	r11, qword ptr [rsp + 0x98]
	jne	.label_619
	mov	rax, qword ptr [rsp + 0x58]
	lea	rax, [rax + r12]
	mov	ecx, 1
	nop	word ptr cs:[rax + rax]
.label_579:
	movsx	edx, byte ptr [rax + rcx]
	add	edx, -0x5b
	cmp	edx, 0x21
	ja	.label_592
	bt	rsi, rdx
	jb	.label_520
.label_592:
	inc	rcx
	cmp	rcx, rbp
	jb	.label_579
.label_619:
	mov	edi, dword ptr [rsp + 0x94]
	call	iswprint
	test	eax, eax
	jne	.label_532
	xor	r13d, r13d
.label_532:
	lea	rdi, [rsp + 0x80]
	add	r12, rbp
	mov	rbx, rdi
	call	mbsinit
	mov	rcx, rbx
	test	eax, eax
	mov	rdi, qword ptr [rsp + 0x30]
	mov	rbp, qword ptr [rsp + 0x20]
	mov	rsi, qword ptr [rsp + 0x50]
	je	.label_590
	jmp	.label_518
.label_513:
	xor	r13d, r13d
	jmp	.label_534
.label_621:
	mov	rbp, -1
	xor	r13d, r13d
	jmp	.label_534
.label_576:
	cmp	dword ptr [rsp + 0x8c], 0
	je	.label_550
	lea	rcx, [rsi + 2]
	cmp	rcx, rbp
	jae	.label_550
	cmp	byte ptr [rdi + rsi + 1], 0x3f
	jne	.label_550
	movsx	edx, byte ptr [rdi + rcx]
	xor	eax, eax
	cmp	edx, 0x3e
	ja	.label_558
	mov	rbx, rsi
	movabs	rsi, 0x7000a38200000000
	bt	rsi, rdx
	jae	.label_585
	cmp	byte ptr [rsp + 7], 0
	jne	.label_549
	mov	r15b, byte ptr [rdi + rcx]
	cmp	r14, r11
	jae	.label_568
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x3f
.label_568:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_604
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + rax], 0x22
.label_604:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_524
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + rax], 0x22
.label_524:
	lea	rax, [r14 + 3]
	cmp	rax, r11
	jae	.label_582
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + rax], 0x3f
.label_582:
	add	r14, 4
	xor	eax, eax
	mov	rsi, rcx
	xor	r13d, r13d
	jmp	.label_534
.label_550:
	xor	eax, eax
.label_597:
	xor	r13d, r13d
	jmp	.label_534
.label_608:
	add	qword ptr [rsp + 0x58], rsi
	xor	eax, eax
	mov	rbp, qword ptr [rsp + 0x20]
	jmp	.label_591
	nop	word ptr cs:[rax + rax]
.label_551:
	inc	r14
	mov	r15b, byte ptr [rdi + rsi + 1]
	mov	rsi, rdx
.label_591:
	test	r8b, r8b
	je	.label_598
	mov	ecx, dword ptr [rsp + 0x4c]
	test	cl, 1
	je	.label_599
	cmp	r14, r11
	jae	.label_600
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + r14], 0x5c
.label_600:
	inc	r14
	mov	dword ptr [rsp + 0x4c], 0
	jmp	.label_599
	nop	dword ptr [rax]
.label_598:
	cmp	byte ptr [rsp + 7], 0
	jne	.label_520
	cmp	r12d, 2
	jne	.label_605
	mov	eax, r9d
	and	al, 1
	jne	.label_605
	cmp	r14, r11
	jae	.label_613
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_613:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_562
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + rax], 0x24
.label_562:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_620
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + rax], 0x27
.label_620:
	add	r14, 3
	mov	r9b, 1
.label_605:
	cmp	r14, r11
	jae	.label_536
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x5c
.label_536:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_606
	mov	edx, r15d
	shr	dl, 6
	or	dl, 0x30
	mov	rbx, qword ptr [rsp + 8]
	mov	byte ptr [rbx + rax], dl
.label_606:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_519
	mov	edx, r15d
	shr	dl, 3
	and	dl, 7
	or	dl, 0x30
	mov	rbx, qword ptr [rsp + 8]
	mov	byte ptr [rbx + rax], dl
.label_519:
	add	r14, 3
	and	r15b, 7
	or	r15b, 0x30
	mov	al, 1
.label_599:
	lea	rdx, [rsi + 1]
	cmp	qword ptr [rsp + 0x58], rdx
	jbe	.label_537
	test	r9b, 1
	je	.label_539
	mov	ebx, eax
	and	bl, 1
	jne	.label_539
	mov	rbx, rsi
	cmp	r14, r11
	jae	.label_542
	mov	rsi, qword ptr [rsp + 8]
	mov	byte ptr [rsi + r14], 0x27
.label_542:
	lea	rsi, [r14 + 1]
	cmp	rsi, r11
	jae	.label_554
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rsi], 0x27
.label_554:
	add	r14, 2
	xor	r9d, r9d
	mov	rsi, rbx
.label_539:
	cmp	r14, r11
	jae	.label_551
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + r14], r15b
	jmp	.label_551
	nop	word ptr cs:[rax + rax]
.label_537:
	test	r9b, 1
	je	.label_522
	and	al, 1
	jne	.label_522
	cmp	r14, r11
	jae	.label_560
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_560:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_559
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_559:
	add	r14, 2
	xor	r9d, r9d
.label_522:
	mov	ebx, r15d
.label_603:
	cmp	r14, r11
	jae	.label_569
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], bl
.label_569:
	inc	r14
	shl	r13b, 7
	sar	r13b, 7
	and	r13b, r10b
	mov	r10d, r13d
	jmp	.label_548
.label_614:
	xor	r13d, r13d
.label_611:
	mov	rdi, qword ptr [rsp + 0x30]
	mov	rsi, qword ptr [rsp + 0x50]
	jmp	.label_518
.label_617:
	mov	rbp, qword ptr [rsp + 0x20]
	cmp	rbx, rbp
	mov	rdi, qword ptr [rsp + 0x30]
	jae	.label_584
	mov	rsi, qword ptr [rsp + 0x50]
.label_544:
	mov	rax, qword ptr [rsp + 0x58]
	cmp	byte ptr [rax + r12], 0
	je	.label_577
	lea	rax, [rsi + r12 + 1]
	inc	r12
	cmp	rax, rbp
	jb	.label_544
	xor	r13d, r13d
	jmp	.label_518
.label_584:
	xor	r13d, r13d
	mov	rsi, qword ptr [rsp + 0x50]
	jmp	.label_518
.label_577:
	xor	r13d, r13d
	jmp	.label_518
.label_558:
	xor	r13d, r13d
	jmp	.label_534
.label_585:
	xor	r13d, r13d
	mov	rsi, rbx
	jmp	.label_534
	nop	dword ptr [rax + rax]
.label_533:
	test	r14, r14
	setne	al
	cmp	r12d, 2
	setne	dl
	mov	rcx, qword ptr [rsp + 0xa8]
	and	cl, 1
	mov	qword ptr [rsp + 0x20], rbp
	je	.label_601
	or	dl, al
	je	.label_520
.label_601:
	test	cl, cl
	setne	al
	cmp	r12d, 2
	setne	dl
	mov	rsi, qword ptr [rsp + 0xa0]
	test	sil, 1
	mov	bl, byte ptr [rsp + 0x1d]
	mov	rsi, qword ptr [rsp + 0xa8]
	je	.label_565
	or	dl, al
	jne	.label_565
	test	r10b, 1
	jne	.label_618
	cmp	qword ptr [rsp + 0x60], 0
	je	.label_565
	test	r11, r11
	mov	r15d, r12d
	mov	al, bl
	mov	r12d, esi
	mov	rbp, qword ptr [rsp + 0x60]
	je	.label_622
.label_565:
	mov	rdx, qword ptr [rsp + 0x40]
	test	rdx, rdx
	je	.label_625
	test	cl, cl
	mov	rcx, qword ptr [rsp + 8]
	jne	.label_514
	mov	al, byte ptr [rdx]
	test	al, al
	je	.label_514
	inc	rdx
	nop	word ptr cs:[rax + rax]
.label_596:
	cmp	r14, r11
	jae	.label_586
	mov	byte ptr [rcx + r14], al
.label_586:
	inc	r14
	movzx	eax, byte ptr [rdx]
	inc	rdx
	test	al, al
	jne	.label_596
	jmp	.label_514
.label_549:
	mov	qword ptr [rsp + 0x20], rbp
.label_520:
	mov	rdx, rdi
	mov	r9d, dword ptr [rsp + 0x18]
	test	byte ptr [rsp + 0x1d], 1
	mov	r8d, 4
	mov	rax, qword ptr [rsp + 0x68]
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
.label_572:
	mov	r14, rax
.label_512:
	mov	rax, r14
	add	rsp, 0xb8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_618:
	sub	rsp, 8
	mov	r8d, 5
	mov	rdi, qword ptr [rsp + 0x10]
	mov	rsi, qword ptr [rsp + 0x68]
	mov	rdx, qword ptr [rsp + 0x38]
	mov	rcx, qword ptr [rsp + 0x28]
	mov	r9d, dword ptr [rsp + 0x20]
	push	qword ptr [rsp + 0x78]
	push	qword ptr [rsp + 0x88]
	push	qword ptr [rsp + 0x108]
	call	quotearg_buffer_restyled
	add	rsp, 0x20
	jmp	.label_572
.label_625:
	mov	rcx, qword ptr [rsp + 8]
.label_514:
	cmp	r14, r11
	jae	.label_512
	mov	byte ptr [rcx + r14], 0
	jmp	.label_512
.label_624:
	call	abort
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x407110
	.globl quotearg_alloc
	.type quotearg_alloc, @function
quotearg_alloc:

	mov	rax, rdx
	xor	edx, edx
	mov	rcx, rax
	jmp	quotearg_alloc_mem
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407120

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
	call	xcharalloc
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
	je	.label_627
	mov	qword ptr [rax], rbx
.label_627:
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
	.align	32
	#Procedure 0x407210
	.globl quotearg_free
	.type quotearg_free, @function
quotearg_free:

	push	r15
	push	r14
	push	rbx
	mov	r14,  qword ptr [word ptr [rip + slotvec]]
	cmp	dword ptr [dword ptr [rip + nslots]],  2
	jl	.label_628
	lea	r15, [r14 + 0x18]
	mov	ebx, 1
	nop	
.label_630:
	mov	rdi, qword ptr [r15]
	call	free
	inc	rbx
	movsxd	rax,  dword ptr [dword ptr [rip + nslots]]
	add	r15, 0x10
	cmp	rbx, rax
	jl	.label_630
.label_628:
	mov	rdi, qword ptr [r14 + 8]
	mov	eax, OFFSET FLAT:slot0
	cmp	rdi, rax
	je	.label_631
	call	free
	mov	qword ptr [word ptr [rip + slotvec0]],  0x100
	mov	qword ptr [word ptr [rip + label_632]], OFFSET FLAT:slot0
.label_631:
	mov	eax, OFFSET FLAT:slotvec0
	cmp	r14, rax
	je	.label_629
	mov	rdi, r14
	call	free
	mov	qword ptr [word ptr [rip + slotvec]], OFFSET FLAT:slotvec0
.label_629:
	mov	dword ptr [dword ptr [rip + nslots]],  1
	pop	rbx
	pop	r14
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4072b0

	.globl quotearg_n
	.type quotearg_n, @function
quotearg_n:
	mov	rdx, -1
	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	nop	
	.section	.text
	.align	32
	#Procedure 0x4072c0

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
	js	.label_633
	mov	eax, dword ptr [r13]
	mov	rbp,  qword ptr [word ptr [rip + slotvec]]
	cmp	dword ptr [dword ptr [rip + nslots]],  r12d
	mov	qword ptr [rsp + 0x18], r13
	mov	dword ptr [rsp], eax
	mov	qword ptr [rsp + 0x10], rbx
	mov	qword ptr [rsp + 8], r15
	jg	.label_636
	cmp	r12d, 0x7fffffff
	je	.label_638
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
	mov	qword ptr [word ptr [rip + slotvec]],  r14
	jne	.label_634
	movups	xmm0,  xmmword ptr [word ptr [rip + slotvec0]]
	movups	xmmword ptr [r14], xmm0
.label_634:
	movsxd	rax,  dword ptr [dword ptr [rip + nslots]]
	movsxd	rbp, r15d
	mov	rdx, rbp
	sub	rdx, rax
	shl	rax, 4
	mov	rdi, r14
	add	rdi, rax
	shl	rdx, 4
	xor	esi, esi
	call	memset
	mov	dword ptr [dword ptr [rip + nslots]],  ebp
	mov	rbp, r14
	mov	rbx, qword ptr [rsp + 0x10]
	mov	r15, qword ptr [rsp + 8]
.label_636:
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
	jbe	.label_639
	mov	rax, qword ptr [rsp + 0x18]
	mov	ebp, dword ptr [rsp]
	jmp	.label_635
.label_639:
	lea	rax, [rbp + r13]
	lea	r12, [rbp + r13 + 8]
	inc	r15
	mov	qword ptr [rax], r15
	mov	eax, OFFSET FLAT:slot0
	cmp	r14, rax
	mov	ebp, dword ptr [rsp]
	je	.label_637
	mov	rdi, r14
	call	free
.label_637:
	mov	rdi, r15
	call	xcharalloc
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
.label_635:
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
.label_633:
	call	abort
.label_638:
	call	xalloc_die
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x407480

	.globl quotearg_n_mem
	.type quotearg_n_mem, @function
quotearg_n_mem:
	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407490
	.globl quotearg
	.type quotearg, @function
quotearg:

	mov	rax, rdi
	xor	edi, edi
	mov	rsi, rax
	jmp	quotearg_n
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4074a0
	.globl quotearg_mem
	.type quotearg_mem, @function
quotearg_mem:

	mov	rax, rsi
	mov	rcx, rdi
	xor	edi, edi
	mov	rsi, rcx
	mov	rdx, rax
	jmp	quotearg_n_mem
	.section	.text
	.align	32
	#Procedure 0x4074b0

	.globl quotearg_n_style
	.type quotearg_n_style, @function
quotearg_n_style:
	push	rbp
	push	r14
	push	rbx
	sub	rsp, 0x40
	mov	rbx, rdx
	mov	ebp, edi
	lea	r14, [rsp + 8]
	mov	rdi, r14
	call	quoting_options_from_style
	mov	rdx, -1
	mov	edi, ebp
	mov	rsi, rbx
	mov	rcx, r14
	call	quotearg_n_options
	add	rsp, 0x40
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4074f0

	.globl quoting_options_from_style
	.type quoting_options_from_style, @function
quoting_options_from_style:
	sub	rsp, 0x38
	xorps	xmm0, xmm0
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp + 0x30], 0
	cmp	esi, 0xa
	je	.label_640
	mov	dword ptr [rdi], esi
	mov	eax, dword ptr [rsp + 0x30]
	mov	dword ptr [rdi + 0x34], eax
	movaps	xmm0, xmmword ptr [rsp]
	movaps	xmm1, xmmword ptr [rsp + 0x10]
	movaps	xmm2, xmmword ptr [rsp + 0x20]
	movups	xmmword ptr [rdi + 0x24], xmm2
	movups	xmmword ptr [rdi + 0x14], xmm1
	movups	xmmword ptr [rdi + 4], xmm0
	mov	rax, rdi
	add	rsp, 0x38
	ret	
.label_640:
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407550

	.globl quotearg_n_style_mem
	.type quotearg_n_style_mem, @function
quotearg_n_style_mem:
	push	rbp
	push	r15
	push	r14
	push	rbx
	sub	rsp, 0x38
	mov	r14, rcx
	mov	rbx, rdx
	mov	ebp, edi
	lea	r15, [rsp]
	mov	rdi, r15
	call	quoting_options_from_style
	mov	edi, ebp
	mov	rsi, rbx
	mov	rdx, r14
	mov	rcx, r15
	call	quotearg_n_options
	add	rsp, 0x38
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x407590

	.globl quotearg_style
	.type quotearg_style, @function
quotearg_style:
	mov	rax, rsi
	mov	ecx, edi
	xor	edi, edi
	mov	esi, ecx
	mov	rdx, rax
	jmp	quotearg_n_style
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4075b0
	.globl quotearg_style_mem
	.type quotearg_style_mem, @function
quotearg_style_mem:

	mov	rax, rdx
	mov	rcx, rsi
	mov	edx, edi
	xor	edi, edi
	mov	esi, edx
	mov	rdx, rcx
	mov	rcx, rax
	jmp	quotearg_n_style_mem
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4075d0

	.globl quotearg_char_mem
	.type quotearg_char_mem, @function
quotearg_char_mem:
	push	r15
	push	r14
	push	rbx
	sub	rsp, 0x40
	mov	eax, edx
	mov	r14, rsi
	mov	rbx, rdi
	mov	rcx,  qword ptr [word ptr [rip + label_641]]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0,  xmmword ptr [word ptr [rip + label_642]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_643]]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + default_quoting_options]]
	movaps	xmmword ptr [rsp], xmm0
	lea	r15, [rsp]
	mov	edx, 1
	mov	rdi, r15
	mov	esi, eax
	call	set_char_quoting
	xor	edi, edi
	mov	rsi, rbx
	mov	rdx, r14
	mov	rcx, r15
	call	quotearg_n_options
	add	rsp, 0x40
	pop	rbx
	pop	r14
	pop	r15
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x407640

	.globl quotearg_char
	.type quotearg_char, @function
quotearg_char:
	mov	eax, esi
	mov	rsi, -1
	mov	edx, eax
	jmp	quotearg_char_mem
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x407650

	.globl quotearg_colon
	.type quotearg_colon, @function
quotearg_colon:
	mov	esi, 0x3a
	jmp	quotearg_char
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407660
	.globl quotearg_colon_mem
	.type quotearg_colon_mem, @function
quotearg_colon_mem:

	mov	edx, 0x3a
	jmp	quotearg_char_mem
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407670

	.globl quotearg_n_style_colon
	.type quotearg_n_style_colon, @function
quotearg_n_style_colon:
	push	rbp
	push	r14
	push	rbx
	sub	rsp, 0x40
	mov	r14, rdx
	mov	ebp, edi
	lea	rbx, [rsp + 8]
	mov	rdi, rbx
	call	quoting_options_from_style
	mov	esi, 0x3a
	mov	edx, 1
	mov	rdi, rbx
	call	set_char_quoting
	mov	rdx, -1
	mov	edi, ebp
	mov	rsi, r14
	mov	rcx, rbx
	call	quotearg_n_options
	add	rsp, 0x40
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4076c0

	.globl quotearg_n_custom
	.type quotearg_n_custom, @function
quotearg_n_custom:
	mov	r8, -1
	jmp	quotearg_n_custom_mem
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4076d0

	.globl quotearg_n_custom_mem
	.type quotearg_n_custom_mem, @function
quotearg_n_custom_mem:
	push	rbp
	push	r15
	push	r14
	push	rbx
	sub	rsp, 0x38
	mov	r14, r8
	mov	rbx, rcx
	mov	ebp, edi
	mov	rax,  qword ptr [word ptr [rip + label_641]]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0,  xmmword ptr [word ptr [rip + label_642]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_643]]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + default_quoting_options]]
	movaps	xmmword ptr [rsp], xmm0
	lea	r15, [rsp]
	mov	rdi, r15
	call	set_custom_quoting
	mov	edi, ebp
	mov	rsi, rbx
	mov	rdx, r14
	mov	rcx, r15
	call	quotearg_n_options
	add	rsp, 0x38
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407740
	.globl quotearg_custom
	.type quotearg_custom, @function
quotearg_custom:

	mov	rax, rdx
	mov	rcx, rsi
	mov	rdx, rdi
	xor	edi, edi
	mov	rsi, rdx
	mov	rdx, rcx
	mov	rcx, rax
	jmp	quotearg_n_custom
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x407760
	.globl quotearg_custom_mem
	.type quotearg_custom_mem, @function
quotearg_custom_mem:

	mov	rax, rcx
	mov	rcx, rdx
	mov	rdx, rsi
	mov	rsi, rdi
	xor	edi, edi
	mov	r8, rax
	jmp	quotearg_n_custom_mem
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407780

	.globl quote_n_mem
	.type quote_n_mem, @function
quote_n_mem:
	mov	ecx, OFFSET FLAT:quote_quoting_options
	jmp	quotearg_n_options
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407790
	.globl quote_mem
	.type quote_mem, @function
quote_mem:

	mov	rax, rsi
	mov	rcx, rdi
	xor	edi, edi
	mov	rsi, rcx
	mov	rdx, rax
	jmp	quote_n_mem
	.section	.text
	.align	32
	#Procedure 0x4077a0

	.globl quote_n
	.type quote_n, @function
quote_n:
	mov	rdx, -1
	jmp	quote_n_mem
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4077b0

	.globl quote
	.type quote, @function
quote:
	mov	rax, rdi
	xor	edi, edi
	mov	rsi, rax
	jmp	quote_n
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4077c0

	.globl gettext_quote
	.type gettext_quote, @function
gettext_quote:
	push	rbp
	push	r14
	push	rbx
	mov	r14d, esi
	mov	rbx, rdi
	xor	edi, edi
	mov	edx, 5
	mov	rsi, rbx
	call	dcgettext
	cmp	rax, rbx
	jne	.label_649
	call	locale_charset
	mov	rbp, rax
	mov	esi, 0x55
	mov	edx, 0x54
	mov	ecx, 0x46
	mov	r8d, 0x2d
	mov	r9d, 0x38
	mov	rdi, rbp
	push	0
	push	0
	call	strcaseeq0
	add	rsp, 0x10
	test	eax, eax
	je	.label_648
	cmp	byte ptr [rbx], 0x60
	mov	ecx, OFFSET FLAT:label_650
	mov	eax, OFFSET FLAT:label_651
	jmp	.label_646
.label_648:
	mov	esi, 0x47
	mov	edx, 0x42
	mov	ecx, 0x31
	mov	r8d, 0x38
	mov	r9d, 0x30
	mov	rdi, rbp
	push	0x30
	push	0x33
	call	strcaseeq0
	add	rsp, 0x10
	test	eax, eax
	je	.label_647
	cmp	byte ptr [rbx], 0x60
	mov	ecx, OFFSET FLAT:label_644
	mov	eax, OFFSET FLAT:label_645
	jmp	.label_646
.label_647:
	cmp	r14d, 9
	mov	ecx, OFFSET FLAT:label_595
	mov	eax, OFFSET FLAT:label_529
.label_646:
	cmove	rax, rcx
.label_649:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x407880

	.globl strcaseeq0
	.type strcaseeq0, @function
strcaseeq0:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	r14d, r9d
	mov	r15d, r8d
	mov	r12d, ecx
	mov	r13d, edx
	mov	ebp, esi
	mov	rbx, rdi
	mov	edi, ebp
	call	c_isupper
	movsx	ecx, byte ptr [rbx]
	test	al, al
	je	.label_652
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_654
	jmp	.label_653
.label_652:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_653
.label_654:
	mov	eax, 1
	test	bpl, bpl
	je	.label_653
	mov	al, byte ptr [rsp + 0x40]
	movsx	ecx, byte ptr [rsp + 0x48]
	mov	dword ptr [rsp], ecx
	movsx	esi, r13b
	movsx	edx, r12b
	movsx	ecx, r15b
	movsx	r8d, r14b
	movsx	r9d, al
	mov	rdi, rbx
	call	strcaseeq1
.label_653:
	add	rsp, 8
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
	#Procedure 0x407900

	.globl strcaseeq1
	.type strcaseeq1, @function
strcaseeq1:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	dword ptr [rsp + 4], r9d
	mov	r15d, r8d
	mov	r12d, ecx
	mov	r13d, edx
	mov	ebp, esi
	mov	rbx, rdi
	mov	r14b, byte ptr [rsp + 0x40]
	mov	edi, ebp
	call	c_isupper
	movsx	ecx, byte ptr [rbx + 1]
	test	al, al
	je	.label_657
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_655
	jmp	.label_656
.label_657:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_656
.label_655:
	mov	eax, 1
	test	bpl, bpl
	je	.label_656
	movsx	esi, r13b
	movsx	edx, r12b
	movsx	ecx, r15b
	mov	eax, dword ptr [rsp + 4]
	movsx	r8d, al
	movsx	r9d, r14b
	mov	rdi, rbx
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	jmp	strcaseeq2
.label_656:
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407990

	.globl strcaseeq2
	.type strcaseeq2, @function
strcaseeq2:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	r14d, r9d
	mov	r15d, r8d
	mov	r12d, ecx
	mov	r13d, edx
	mov	ebp, esi
	mov	rbx, rdi
	mov	edi, ebp
	call	c_isupper
	movsx	ecx, byte ptr [rbx + 2]
	test	al, al
	je	.label_658
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_660
	jmp	.label_659
.label_658:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_659
.label_660:
	mov	eax, 1
	test	bpl, bpl
	je	.label_659
	movsx	esi, r13b
	movsx	edx, r12b
	movsx	ecx, r15b
	movsx	r8d, r14b
	mov	rdi, rbx
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	jmp	strcaseeq3
.label_659:
	add	rsp, 8
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
	#Procedure 0x407a10

	.globl strcaseeq3
	.type strcaseeq3, @function
strcaseeq3:
	push	rbp
	push	r15
	push	r14
	push	r12
	push	rbx
	mov	r14d, r8d
	mov	r15d, ecx
	mov	r12d, edx
	mov	ebp, esi
	mov	rbx, rdi
	mov	edi, ebp
	call	c_isupper
	movsx	ecx, byte ptr [rbx + 3]
	test	al, al
	je	.label_663
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_662
	jmp	.label_661
.label_663:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_661
.label_662:
	mov	eax, 1
	test	bpl, bpl
	je	.label_661
	movsx	esi, r12b
	movsx	edx, r15b
	movsx	ecx, r14b
	mov	rdi, rbx
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	jmp	strcaseeq4
.label_661:
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407a80

	.globl strcaseeq4
	.type strcaseeq4, @function
strcaseeq4:
	push	rbp
	push	r15
	push	r14
	push	rbx
	push	rax
	mov	r14d, ecx
	mov	r15d, edx
	mov	ebp, esi
	mov	rbx, rdi
	mov	edi, ebp
	call	c_isupper
	movsx	ecx, byte ptr [rbx + 4]
	test	al, al
	je	.label_666
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_664
	jmp	.label_665
.label_666:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_665
.label_664:
	mov	eax, 1
	test	bpl, bpl
	je	.label_665
	movsx	esi, r15b
	movsx	edx, r14b
	mov	rdi, rbx
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	jmp	strcaseeq5
.label_665:
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x407ae0

	.globl strcaseeq5
	.type strcaseeq5, @function
strcaseeq5:
	push	rbp
	push	r14
	push	rbx
	mov	r14d, edx
	mov	ebp, esi
	mov	rbx, rdi
	mov	edi, ebp
	call	c_isupper
	movsx	ecx, byte ptr [rbx + 5]
	test	al, al
	je	.label_667
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_669
	jmp	.label_668
.label_667:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_668
.label_669:
	mov	eax, 1
	test	bpl, bpl
	je	.label_668
	movsx	esi, r14b
	mov	rdi, rbx
	pop	rbx
	pop	r14
	pop	rbp
	jmp	strcaseeq6
.label_668:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x407b30

	.globl strcaseeq6
	.type strcaseeq6, @function
strcaseeq6:
	push	rbp
	push	rbx
	push	rax
	mov	ebp, esi
	mov	rbx, rdi
	mov	edi, ebp
	call	c_isupper
	movsx	ecx, byte ptr [rbx + 6]
	test	al, al
	je	.label_672
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_671
	jmp	.label_670
.label_672:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_670
.label_671:
	mov	eax, 1
	test	bpl, bpl
	je	.label_670
	mov	rdi, rbx
	add	rsp, 8
	pop	rbx
	pop	rbp
	jmp	strcaseeq7
.label_670:
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407b80

	.globl strcaseeq7
	.type strcaseeq7, @function
strcaseeq7:
	push	rbx
	mov	rbx, rdi
	xor	edi, edi
	call	c_isupper
	movsx	ecx, byte ptr [rbx + 7]
	test	al, al
	je	.label_675
	mov	eax, 1
	test	ecx, 0xffffffdf
	jne	.label_674
	jmp	.label_673
.label_675:
	mov	eax, 1
	test	cl, cl
	je	.label_673
.label_674:
	xor	eax, eax
.label_673:
	pop	rbx
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x407bb0

	.globl verror
	.type verror, @function
verror:
	mov	r9, rcx
	mov	rax, rdx
	xor	edx, edx
	xor	ecx, ecx
	mov	r8, rax
	jmp	verror_at_line
	nop	
	.section	.text
	.align	32
	#Procedure 0x407bc0

	.globl verror_at_line
	.type verror_at_line, @function
verror_at_line:
	push	rbp
	push	r15
	push	r14
	push	r12
	push	rbx
	mov	r15d, ecx
	mov	rbp, rdx
	mov	r14d, esi
	mov	r12d, edi
	mov	rdi, r8
	mov	rsi, r9
	call	xvasprintf
	mov	rbx, rax
	test	rbx, rbx
	je	.label_679
	test	rbp, rbp
	je	.label_677
	mov	r8d, OFFSET FLAT:label_428
	xor	eax, eax
	mov	edi, r12d
	mov	esi, r14d
	mov	rdx, rbp
	mov	ecx, r15d
	mov	r9, rbx
	call	error_at_line
	jmp	.label_678
.label_677:
	mov	edx, OFFSET FLAT:label_428
	xor	eax, eax
	mov	edi, r12d
	mov	esi, r14d
	mov	rcx, rbx
	call	error
.label_678:
	mov	rdi, rbx
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	jmp	free
.label_679:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_676
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, rcx
	call	error
	call	abort
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x407c60

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
	je	.label_692
	mov	edx, OFFSET FLAT:label_683
	xor	eax, eax
	mov	rdi, r14
	mov	r8, rbx
	call	__fprintf_chk
	jmp	.label_689
.label_692:
	mov	edx, OFFSET FLAT:label_690
	xor	eax, eax
	mov	rdi, r14
	mov	rcx, rbx
	mov	r8, r9
	call	__fprintf_chk
.label_689:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_694
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
	mov	esi, OFFSET FLAT:label_691
	mov	edx, 5
	call	dcgettext
	mov	rdi, rax
	mov	rsi, r14
	call	fputs_unlocked
	cmp	r12, 9
	ja	.label_695
	jmp	qword ptr [word ptr [+ (r12 * 8) + label_696]]
.label_918:
	add	rsp, 8
	jmp	.label_682
.label_695:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_686
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
	jmp	.label_682
.label_919:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_681
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
.label_920:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_687
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
.label_921:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_684
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
.label_922:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_698
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
	jmp	.label_682
.label_923:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_697
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
	jmp	.label_682
.label_924:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_680
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
	jmp	.label_682
.label_925:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_685
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
	jmp	.label_682
.label_927:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_688
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
	jmp	.label_682
.label_926:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_693
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
.label_682:
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407fc0
	.globl version_etc_ar
	.type version_etc_ar, @function
version_etc_ar:

	mov	r9, -1
	nop	word ptr [rax + rax]
.label_699:
	cmp	qword ptr [r8 + r9*8 + 8], 0
	lea	r9, [r9 + 1]
	jne	.label_699
	jmp	version_etc_arn
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407ff0

	.globl version_etc_va
	.type version_etc_va, @function
version_etc_va:
	sub	rsp, 0x58
	xor	r9d, r9d
	nop	word ptr [rax + rax]
.label_701:
	movsxd	r10, dword ptr [r8]
	cmp	r10, 0x28
	ja	.label_700
	mov	r11, r10
	add	r11, qword ptr [r8 + 0x10]
	lea	eax, [r10 + 8]
	mov	dword ptr [r8], eax
	jmp	.label_702
	nop	dword ptr [rax]
.label_700:
	mov	r11, qword ptr [r8 + 8]
	lea	rax, [r11 + 8]
	mov	qword ptr [r8 + 8], rax
.label_702:
	mov	rax, qword ptr [r11]
	mov	qword ptr [rsp + r9*8], rax
	test	rax, rax
	je	.label_703
	inc	r9
	cmp	r9, 0xa
	jb	.label_701
.label_703:
	lea	r8, [rsp]
	call	version_etc_arn
	add	rsp, 0x58
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x408050
	.globl version_etc
	.type version_etc, @function
version_etc:

	sub	rsp, 0xd8
	test	al, al
	je	.label_704
	movaps	xmmword ptr [rsp + 0x50], xmm0
	movaps	xmmword ptr [rsp + 0x60], xmm1
	movaps	xmmword ptr [rsp + 0x70], xmm2
	movaps	xmmword ptr [rsp + 0x80], xmm3
	movaps	xmmword ptr [rsp + 0x90], xmm4
	movaps	xmmword ptr [rsp + 0xa0], xmm5
	movaps	xmmword ptr [rsp + 0xb0], xmm6
	movaps	xmmword ptr [rsp + 0xc0], xmm7
.label_704:
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
	.align	32
	#Procedure 0x4080e0
	.globl emit_bug_reporting_address
	.type emit_bug_reporting_address, @function
emit_bug_reporting_address:

	push	rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_705
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_706
	xor	eax, eax
	mov	rsi, rcx
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_708
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_38
	mov	ecx, OFFSET FLAT:label_39
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_707
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	pop	rax
	jmp	fputs_unlocked
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408160
	.globl xnmalloc
	.type xnmalloc, @function
xnmalloc:

	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	jb	.label_709
	imul	rsi, rdi
	mov	rdi, rsi
	jmp	xmalloc
.label_709:
	push	rax
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408190

	.globl xmalloc
	.type xmalloc, @function
xmalloc:
	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	je	.label_710
	test	rax, rax
	je	.label_711
.label_710:
	pop	rbx
	ret	
.label_711:
	call	xalloc_die
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4081b0
	.globl xnrealloc
	.type xnrealloc, @function
xnrealloc:

	mov	rcx, rdx
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rcx
	cmp	rax, rsi
	jb	.label_712
	imul	rcx, rsi
	mov	rsi, rcx
	jmp	xrealloc
.label_712:
	push	rax
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4081e0

	.globl xrealloc
	.type xrealloc, @function
xrealloc:
	push	rbx
	mov	rbx, rsi
	test	rdi, rdi
	je	.label_713
	test	rbx, rbx
	jne	.label_713
	call	free
	xor	eax, eax
	pop	rbx
	ret	
.label_713:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_715
	test	rax, rax
	je	.label_714
.label_715:
	pop	rbx
	ret	
.label_714:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x408210

	.globl x2nrealloc
	.type x2nrealloc, @function
x2nrealloc:
	push	rax
	mov	r8, rdx
	mov	rcx, qword ptr [rsi]
	test	rdi, rdi
	je	.label_716
	movabs	rax, 0x5555555555555554
	xor	edx, edx
	div	r8
	cmp	rax, rcx
	jbe	.label_719
	mov	rax, rcx
	shr	rax, 1
	lea	rcx, [rcx + rax + 1]
	jmp	.label_717
.label_716:
	test	rcx, rcx
	jne	.label_720
	mov	eax, 0x80
	xor	edx, edx
	div	r8
	xor	ecx, ecx
	cmp	r8, 0x80
	seta	cl
	add	rcx, rax
.label_720:
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	r8
	cmp	rax, rcx
	jb	.label_718
.label_717:
	mov	qword ptr [rsi], rcx
	imul	r8, rcx
	mov	rsi, r8
	pop	rax
	jmp	xrealloc
.label_719:
	call	xalloc_die
.label_718:
	call	xalloc_die
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x408290

	.globl xcharalloc
	.type xcharalloc, @function
xcharalloc:
	jmp	xmalloc
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4082a0
	.globl x2realloc
	.type x2realloc, @function
x2realloc:

	mov	edx, 1
	jmp	x2nrealloc
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4082b0
	.globl xzalloc
	.type xzalloc, @function
xzalloc:

	push	r14
	push	rbx
	push	rax
	mov	r14, rdi
	call	xmalloc
	mov	rbx, rax
	xor	esi, esi
	mov	rdi, rbx
	mov	rdx, r14
	call	memset
	mov	rax, rbx
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4082e0
	.globl xcalloc
	.type xcalloc, @function
xcalloc:

	push	rax
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	jb	.label_721
	call	rpl_calloc
	test	rax, rax
	je	.label_721
	pop	rcx
	ret	
.label_721:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408310

	.globl xmemdup
	.type xmemdup, @function
xmemdup:
	push	r15
	push	r14
	push	rbx
	mov	r15, rsi
	mov	r14, rdi
	mov	rdi, r15
	call	xmalloc
	mov	rbx, rax
	mov	rdi, rbx
	mov	rsi, r14
	mov	rdx, r15
	call	memcpy
	mov	rax, rbx
	pop	rbx
	pop	r14
	pop	r15
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x408340
	.globl xstrdup
	.type xstrdup, @function
xstrdup:

	push	rbx
	mov	rbx, rdi
	call	strlen
	lea	rsi, [rax + 1]
	mov	rdi, rbx
	pop	rbx
	jmp	xmemdup
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408360

	.globl xalloc_die
	.type xalloc_die, @function
xalloc_die:
	push	rbx
	mov	ebx,  dword ptr [dword ptr [rip + exit_failure]]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_722
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	esi, esi
	mov	edx, OFFSET FLAT:label_428
	xor	eax, eax
	mov	edi, ebx
	call	error
	call	abort
	.section	.text
	.align	32
	#Procedure 0x408390

	.globl xstrtoumax
	.type xstrtoumax, @function
xstrtoumax:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x18
	mov	r13, r8
	mov	r14d, edx
	mov	rbp, rsi
	mov	rbx, rdi
	cmp	r14d, 0x25
	jae	.label_727
	mov	qword ptr [rsp + 8], rcx
	call	__errno_location
	mov	r12, rax
	mov	dword ptr [r12], 0
	call	__ctype_b_loc
	mov	rcx, qword ptr [rax]
	mov	rdx, rbx
	nop	word ptr cs:[rax + rax]
.label_739:
	movzx	eax, byte ptr [rdx]
	inc	rdx
	test	byte ptr [rcx + rax*2 + 1], 0x20
	jne	.label_739
	test	rbp, rbp
	lea	rsi, [rsp + 0x10]
	cmovne	rsi, rbp
	mov	r15d, 4
	cmp	al, 0x2d
	je	.label_736
	mov	rdi, rbx
	mov	edx, r14d
	mov	r14, rsi
	call	strtoumax
	mov	rcx, r14
	mov	qword ptr [rsp], rax
	mov	rax, qword ptr [rcx]
	cmp	rax, rbx
	je	.label_728
	mov	eax, dword ptr [r12]
	xor	r12d, r12d
	test	eax, eax
	mov	rbp, r13
	je	.label_734
	cmp	eax, 0x22
	jne	.label_736
	mov	r12d, 1
.label_734:
	test	rbp, rbp
	jne	.label_738
	jmp	.label_723
.label_728:
	mov	rbp, r13
	test	rbp, rbp
	je	.label_736
	movsx	esi, byte ptr [rax]
	test	esi, esi
	je	.label_736
	mov	rdi, rbp
	call	strchr
	mov	rcx, r14
	test	rax, rax
	je	.label_736
	mov	qword ptr [rsp], 1
	xor	r12d, r12d
.label_738:
	mov	rax, qword ptr [rcx]
	movsx	ebx, byte ptr [rax]
	test	ebx, ebx
	je	.label_723
	mov	rdi, rbp
	mov	esi, ebx
	call	strchr
	test	rax, rax
	je	.label_729
	mov	r15d, 0x400
	mov	r13d, 1
	add	ebx, -0x45
	cmp	ebx, 0x2f
	ja	.label_733
	movabs	rax, 0x814400308945
	bt	rax, rbx
	jae	.label_733
	mov	esi, 0x30
	mov	rdi, rbp
	call	strchr
	mov	r13d, 1
	mov	rsi, r14
	test	rax, rax
	je	.label_726
	mov	rax, qword ptr [rsi]
	movsx	ecx, byte ptr [rax + 1]
	mov	r13d, 1
	cmp	ecx, 0x42
	je	.label_740
	cmp	ecx, 0x44
	je	.label_740
	cmp	ecx, 0x69
	jne	.label_726
	xor	ecx, ecx
	cmp	byte ptr [rax + 2], 0x42
	sete	cl
	lea	r13, [rcx + rcx + 1]
	jmp	.label_726
.label_740:
	mov	r15d, 0x3e8
	mov	r13d, 2
	jmp	.label_726
.label_733:
	mov	rsi, r14
.label_726:
	mov	rax, qword ptr [rsi]
	movsx	ecx, byte ptr [rax]
	add	ecx, -0x42
	cmp	ecx, 0x35
	ja	.label_729
	xor	eax, eax
	jmp	qword ptr [word ptr [+ (rcx * 8) + label_735]]
.label_931:
	lea	rdi, [rsp]
	mov	edx, 3
	jmp	.label_725
.label_729:
	mov	rax, qword ptr [rsp]
	mov	rcx, qword ptr [rsp + 8]
	mov	qword ptr [rcx], rax
	or	r12d, 2
	jmp	.label_737
.label_932:
	lea	rdi, [rsp]
	mov	edx, 1
	jmp	.label_725
.label_933:
	lea	rdi, [rsp]
	mov	edx, 2
	jmp	.label_725
.label_935:
	lea	rdi, [rsp]
	mov	edx, 4
	jmp	.label_725
.label_929:
	lea	rdi, [rsp]
	mov	esi, 0x400
	call	bkm_scale
	jmp	.label_724
.label_930:
	lea	rdi, [rsp]
	mov	edx, 6
	jmp	.label_725
.label_934:
	lea	rdi, [rsp]
	mov	edx, 5
	jmp	.label_725
.label_936:
	lea	rdi, [rsp]
	mov	edx, 8
	jmp	.label_725
.label_937:
	lea	rdi, [rsp]
	mov	edx, 7
.label_725:
	mov	esi, r15d
	call	bkm_scale_by_power
.label_724:
	mov	rsi, r14
.label_939:
	or	eax, r12d
	mov	rcx, qword ptr [rsi]
	lea	rdx, [rcx + r13]
	mov	qword ptr [rsi], rdx
	mov	r12d, eax
	or	r12d, 2
	cmp	byte ptr [rcx + r13], 0
	cmove	r12d, eax
.label_723:
	mov	rax, qword ptr [rsp]
	mov	rcx, qword ptr [rsp + 8]
	mov	qword ptr [rcx], rax
.label_737:
	mov	r15d, r12d
.label_736:
	mov	eax, r15d
	add	rsp, 0x18
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_938:
	lea	rdi, [rsp]
	mov	esi, 0x200
	call	bkm_scale
	jmp	.label_724
.label_940:
	lea	rdi, [rsp]
	mov	esi, 2
	call	bkm_scale
	jmp	.label_724
.label_727:
	mov	edi, OFFSET FLAT:label_730
	mov	esi, OFFSET FLAT:label_731
	mov	edx, 0x54
	mov	ecx, OFFSET FLAT:label_732
	call	__assert_fail
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408640

	.globl bkm_scale
	.type bkm_scale, @function
bkm_scale:
	movsxd	rcx, esi
	mov	rsi, -1
	mov	rax, -1
	xor	edx, edx
	div	rcx
	mov	rdx, qword ptr [rdi]
	imul	rcx, rdx
	cmp	rax, rdx
	cmovb	rcx, rsi
	sbb	eax, eax
	and	eax, 1
	mov	qword ptr [rdi], rcx
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x408670

	.globl bkm_scale_by_power
	.type bkm_scale_by_power, @function
bkm_scale_by_power:
	push	rbp
	push	r15
	push	r14
	push	rbx
	push	rax
	mov	ebx, edx
	mov	r14d, esi
	mov	r15, rdi
	xor	ebp, ebp
	test	ebx, ebx
	je	.label_741
	xor	ebp, ebp
	nop	word ptr [rax + rax]
.label_742:
	mov	rdi, r15
	mov	esi, r14d
	call	bkm_scale
	or	ebp, eax
	dec	ebx
	jne	.label_742
.label_741:
	mov	eax, ebp
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x4086b0

	.globl xvasprintf
	.type xvasprintf, @function
xvasprintf:
	push	rax
	mov	rax, rsi
	mov	rcx, rdi
	xor	edi, edi
	jmp	.label_747
	nop	dword ptr [rax + rax]
.label_746:
	inc	rdi
.label_747:
	movzx	edx, byte ptr [rcx + rdi*2]
	cmp	dl, 0x25
	jne	.label_743
	cmp	byte ptr [rcx + rdi*2 + 1], 0x73
	je	.label_746
	jmp	.label_748
.label_743:
	test	dl, dl
	jne	.label_748
	mov	rsi, rax
	call	xstrcat
	pop	rcx
	ret	
.label_748:
	lea	rdi, [rsp]
	mov	esi, 1
	mov	rdx, rcx
	mov	rcx, rax
	call	__vasprintf_chk
	test	eax, eax
	js	.label_745
	mov	rax, qword ptr [rsp]
	jmp	.label_749
.label_745:
	call	__errno_location
	mov	rcx, rax
	xor	eax, eax
	cmp	dword ptr [rcx], 0xc
	je	.label_744
.label_749:
	pop	rcx
	ret	
.label_744:
	call	xalloc_die
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408720

	.globl xstrcat
	.type xstrcat, @function
xstrcat:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x18
	mov	r14, rsi
	mov	r12, rdi
	mov	rax, qword ptr [r14 + 0x10]
	mov	qword ptr [rsp + 0x10], rax
	movups	xmm0, xmmword ptr [r14]
	movaps	xmmword ptr [rsp], xmm0
	test	r12, r12
	je	.label_756
	xor	ebx, ebx
	mov	rbp, r12
	nop	
.label_752:
	movsxd	rcx, dword ptr [rsp]
	cmp	rcx, 0x28
	ja	.label_751
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0x10]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp], ecx
	jmp	.label_755
	nop	word ptr [rax + rax]
.label_751:
	mov	rax, qword ptr [rsp + 8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 8], rcx
.label_755:
	mov	rdi, qword ptr [rax]
	call	strlen
	mov	rdi, rbx
	mov	rsi, rax
	call	xsum
	mov	rbx, rax
	dec	rbp
	jne	.label_752
	test	rbx, -0x80000000
	je	.label_754
	call	__errno_location
	mov	dword ptr [rax], 0x4b
	xor	r15d, r15d
	jmp	.label_757
.label_756:
	mov	edi, 1
	call	xmalloc
	mov	r15, rax
	mov	rbx, r15
	jmp	.label_753
.label_754:
	inc	rbx
	mov	rdi, rbx
	call	xmalloc
	mov	r15, rax
	mov	rbx, r15
	test	r12, r12
	je	.label_753
	nop	dword ptr [rax]
.label_758:
	movsxd	rcx, dword ptr [r14]
	cmp	rcx, 0x28
	ja	.label_750
	mov	rax, rcx
	add	rax, qword ptr [r14 + 0x10]
	lea	ecx, [rcx + 8]
	mov	dword ptr [r14], ecx
	jmp	.label_759
	nop	dword ptr [rax + rax]
.label_750:
	mov	rax, qword ptr [r14 + 8]
	lea	rcx, [rax + 8]
	mov	qword ptr [r14 + 8], rcx
.label_759:
	mov	r13, qword ptr [rax]
	mov	rdi, r13
	call	strlen
	mov	rbp, rax
	mov	rdi, rbx
	mov	rsi, r13
	mov	rdx, rbp
	call	memcpy
	add	rbx, rbp
	dec	r12
	jne	.label_758
.label_753:
	mov	byte ptr [rbx], 0
.label_757:
	mov	rax, r15
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
	.align	32
	#Procedure 0x408850

	.globl rpl_calloc
	.type rpl_calloc, @function
rpl_calloc:
	test	rdi, rdi
	mov	eax, 1
	je	.label_760
	test	rsi, rsi
	mov	ecx, 1
	je	.label_761
	mov	rax, rsi
	imul	rax, rdi
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	mov	rax, rsi
	mov	rcx, rdi
	je	.label_761
	push	rax
	call	__errno_location
	mov	dword ptr [rax], 0xc
	xor	eax, eax
	pop	rcx
	ret	
.label_760:
	mov	ecx, 1
.label_761:
	mov	rdi, rcx
	mov	rsi, rax
	jmp	calloc
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4088a0

	.globl rpl_fclose
	.type rpl_fclose, @function
rpl_fclose:
	push	rbp
	push	rbx
	push	rax
	mov	rbx, rdi
	call	fileno
	test	eax, eax
	js	.label_762
	mov	rdi, rbx
	call	__freading
	test	eax, eax
	je	.label_764
	mov	rdi, rbx
	call	fileno
	xor	esi, esi
	mov	edx, 1
	mov	edi, eax
	call	lseek
	cmp	rax, -1
	je	.label_762
.label_764:
	mov	rdi, rbx
	call	rpl_fflush
	test	eax, eax
	je	.label_762
	call	__errno_location
	mov	ebp, dword ptr [rax]
	mov	rdi, rbx
	call	fclose
	test	ebp, ebp
	je	.label_763
	call	__errno_location
	mov	dword ptr [rax], ebp
	mov	eax, 0xffffffff
.label_763:
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
.label_762:
	mov	rdi, rbx
	add	rsp, 8
	pop	rbx
	pop	rbp
	jmp	fclose
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408920

	.globl rpl_fcntl
	.type rpl_fcntl, @function
rpl_fcntl:
	sub	rsp, 0xd8
	test	al, al
	je	.label_773
	movaps	xmmword ptr [rsp + 0x50], xmm0
	movaps	xmmword ptr [rsp + 0x60], xmm1
	movaps	xmmword ptr [rsp + 0x70], xmm2
	movaps	xmmword ptr [rsp + 0x80], xmm3
	movaps	xmmword ptr [rsp + 0x90], xmm4
	movaps	xmmword ptr [rsp + 0xa0], xmm5
	movaps	xmmword ptr [rsp + 0xb0], xmm6
	movaps	xmmword ptr [rsp + 0xc0], xmm7
.label_773:
	mov	qword ptr [rsp + 0x48], r9
	mov	qword ptr [rsp + 0x40], r8
	mov	qword ptr [rsp + 0x38], rcx
	mov	qword ptr [rsp + 0x30], rdx
	lea	rax, [rsp + 0x20]
	mov	qword ptr [rsp + 0x10], rax
	lea	rax, [rsp + 0xe0]
	mov	qword ptr [rsp + 8], rax
	mov	dword ptr [rsp + 4], 0x30
	mov	dword ptr [rsp], 0x10
	cmp	esi, 0xb
	ja	.label_775
	mov	eax, 0xa0a
	bt	eax, esi
	jb	.label_774
	mov	eax, 0x514
	bt	eax, esi
	jb	.label_766
	test	esi, esi
	jne	.label_775
	movsxd	rcx, dword ptr [rsp]
	cmp	rcx, 0x28
	ja	.label_778
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0x10]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp], ecx
	jmp	.label_768
.label_775:
	lea	eax, [rsi - 0x400]
	cmp	eax, 8
	ja	.label_765
	mov	ecx, 0x85
	bt	ecx, eax
	jb	.label_766
	mov	ecx, 0x102
	bt	ecx, eax
	jae	.label_777
.label_774:
	xor	eax, eax
	call	fcntl
	add	rsp, 0xd8
	ret	
.label_766:
	movsxd	rcx, dword ptr [rsp]
	cmp	rcx, 0x28
	ja	.label_769
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0x10]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp], ecx
	jmp	.label_771
.label_769:
	mov	rax, qword ptr [rsp + 8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 8], rcx
.label_771:
	mov	edx, dword ptr [rax]
	xor	eax, eax
	call	fcntl
	add	rsp, 0xd8
	ret	
.label_777:
	cmp	eax, 6
	jne	.label_765
	movsxd	rcx, dword ptr [rsp]
	cmp	rcx, 0x28
	ja	.label_767
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0x10]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp], ecx
	jmp	.label_770
.label_765:
	movsxd	rcx, dword ptr [rsp]
	cmp	rcx, 0x28
	ja	.label_772
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0x10]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp], ecx
	jmp	.label_776
.label_778:
	mov	rax, qword ptr [rsp + 8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 8], rcx
.label_768:
	mov	esi, dword ptr [rax]
	call	rpl_fcntl_DUPFD
	add	rsp, 0xd8
	ret	
.label_767:
	mov	rax, qword ptr [rsp + 8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 8], rcx
.label_770:
	mov	esi, dword ptr [rax]
	call	rpl_fcntl_DUPFD_CLOEXEC
	add	rsp, 0xd8
	ret	
.label_772:
	mov	rax, qword ptr [rsp + 8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 8], rcx
.label_776:
	mov	rdx, qword ptr [rax]
	xor	eax, eax
	call	fcntl
	add	rsp, 0xd8
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408ae0

	.globl rpl_fcntl_DUPFD
	.type rpl_fcntl_DUPFD, @function
rpl_fcntl_DUPFD:
	mov	ecx, esi
	xor	esi, esi
	xor	eax, eax
	mov	edx, ecx
	jmp	fcntl
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x408af0

	.globl rpl_fcntl_DUPFD_CLOEXEC
	.type rpl_fcntl_DUPFD_CLOEXEC, @function
rpl_fcntl_DUPFD_CLOEXEC:
	push	rbp
	push	r14
	push	rbx
	mov	r14d, esi
	mov	ebp, edi
	cmp	dword ptr [dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec]],  0
	js	.label_781
	mov	esi, 0x406
	xor	eax, eax
	mov	edi, ebp
	mov	edx, r14d
	call	fcntl
	mov	ebx, eax
	test	ebx, ebx
	jns	.label_783
	call	__errno_location
	cmp	dword ptr [rax], 0x16
	jne	.label_783
	mov	edi, ebp
	mov	esi, r14d
	call	rpl_fcntl_DUPFD
	mov	ebx, eax
	test	ebx, ebx
	js	.label_780
	mov	dword ptr [dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec]],  0xffffffff
	jmp	.label_779
.label_783:
	mov	dword ptr [dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec]],  1
	jmp	.label_779
.label_781:
	mov	edi, ebp
	mov	esi, r14d
	call	rpl_fcntl_DUPFD
	mov	ebx, eax
.label_779:
	test	ebx, ebx
	js	.label_780
	cmp	dword ptr [dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec]],  -1
	jne	.label_780
	mov	esi, 1
	xor	eax, eax
	mov	edi, ebx
	call	fcntl
	mov	ecx, eax
	test	ecx, ecx
	js	.label_782
	or	ecx, 1
	mov	esi, 2
	xor	eax, eax
	mov	edi, ebx
	mov	edx, ecx
	call	fcntl
	cmp	eax, -1
	jne	.label_780
.label_782:
	call	__errno_location
	mov	rbp, rax
	mov	r14d, dword ptr [rbp]
	mov	edi, ebx
	call	close
	mov	dword ptr [rbp], r14d
	mov	ebx, 0xffffffff
.label_780:
	mov	eax, ebx
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408bc0

	.globl rpl_fflush
	.type rpl_fflush, @function
rpl_fflush:
	push	rbx
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_784
	mov	rdi, rbx
	call	__freading
	test	eax, eax
	je	.label_784
	mov	rdi, rbx
	call	clear_ungetc_buffer_preserving_position
.label_784:
	mov	rdi, rbx
	pop	rbx
	jmp	fflush
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408bf0

	.globl clear_ungetc_buffer_preserving_position
	.type clear_ungetc_buffer_preserving_position, @function
clear_ungetc_buffer_preserving_position:
	test	byte ptr [rdi + 1], 1
	jne	.label_785
	ret	
.label_785:
	xor	esi, esi
	mov	edx, 1
	jmp	rpl_fseeko
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408c10

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
	jne	.label_786
	mov	rax, qword ptr [rbx + 0x28]
	cmp	rax, qword ptr [rbx + 0x20]
	jne	.label_786
	cmp	qword ptr [rbx + 0x48], 0
	je	.label_787
.label_786:
	mov	rdi, rbx
	mov	rsi, rbp
	mov	edx, r14d
	pop	rbx
	pop	r14
	pop	rbp
	jmp	fseeko
.label_787:
	mov	rdi, rbx
	call	fileno
	mov	edi, eax
	mov	rsi, rbp
	mov	edx, r14d
	call	lseek
	mov	rcx, rax
	mov	eax, 0xffffffff
	cmp	rcx, -1
	je	.label_788
	and	byte ptr [rbx], 0xef
	mov	qword ptr [rbx + 0x90], rcx
	xor	eax, eax
.label_788:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x408c80

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
	je	.label_789
	cmp	r15, -2
	jb	.label_789
	xor	edi, edi
	call	hard_locale
	test	al, al
	jne	.label_789
	movzx	eax, byte ptr [r14]
	mov	dword ptr [rbx], eax
	mov	r15d, 1
.label_789:
	mov	rax, r15
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408ce0

	.globl __argmatch_die
	.type __argmatch_die, @function
__argmatch_die:
	mov	edi, 1
	jmp	usage
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408cf0

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
	je	.label_793
	mov	qword ptr [rsp + 8], -1
	xor	eax, eax
	mov	qword ptr [rsp + 0x10], rax
	mov	qword ptr [rsp + 0x18], r14
	xor	ebp, ebp
	nop	dword ptr [rax + rax]
.label_790:
	mov	rdi, r15
	mov	rsi, r12
	mov	rdx, rbx
	call	strncmp
	test	eax, eax
	jne	.label_791
	mov	rdi, r15
	call	strlen
	cmp	rax, rbx
	je	.label_795
	cmp	qword ptr [rsp + 8], -1
	je	.label_796
	mov	rax, qword ptr [rsp + 0x18]
	test	rax, rax
	je	.label_792
	mov	rdi, qword ptr [rsp + 8]
	imul	rdi, r13
	add	rdi, rax
	mov	rsi, r14
	mov	rdx, r13
	call	memcmp
	test	eax, eax
	je	.label_791
.label_792:
	mov	al, 1
	mov	qword ptr [rsp + 0x10], rax
	jmp	.label_791
.label_796:
	mov	qword ptr [rsp + 8], rbp
	nop	word ptr [rax + rax]
.label_791:
	mov	rax, qword ptr [rsp + 0x20]
	mov	r15, qword ptr [rax + rbp*8 + 8]
	inc	rbp
	add	r14, r13
	test	r15, r15
	jne	.label_790
	jmp	.label_794
.label_793:
	mov	qword ptr [rsp + 8], -1
	xor	eax, eax
	mov	qword ptr [rsp + 0x10], rax
.label_794:
	mov	rax, qword ptr [rsp + 0x10]
	test	al, 1
	mov	rbp, -2
	cmove	rbp, qword ptr [rsp + 8]
.label_795:
	mov	rax, rbp
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
	.align	32
	#Procedure 0x408df0

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
	je	.label_797
	mov	esi, OFFSET FLAT:label_798
	jmp	.label_799
.label_797:
	mov	esi, OFFSET FLAT:label_800
.label_799:
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
	.align	32
	#Procedure 0x408e60

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
	mov	r13, rsi
	mov	r15, rdi
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_801
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stderr]]
	mov	rdi, rax
	call	fputs_unlocked
	mov	rbx, qword ptr [r15]
	test	rbx, rbx
	je	.label_807
	xor	r12d, r12d
	xor	ebp, ebp
	nop	word ptr cs:[rax + rax]
.label_803:
	test	rbp, rbp
	je	.label_805
	mov	rdi, r12
	mov	rsi, r13
	mov	rdx, r14
	call	memcmp
	test	eax, eax
	je	.label_802
.label_805:
	mov	rbx,  qword ptr [word ptr [rip + stderr]]
	mov	rdi, qword ptr [r15 + rbp*8]
	call	quote
	mov	rcx, rax
	mov	esi, 1
	mov	edx, OFFSET FLAT:label_808
	xor	eax, eax
	mov	rdi, rbx
	call	__fprintf_chk
	mov	r12, r13
	jmp	.label_804
	nop	word ptr cs:[rax + rax]
.label_802:
	mov	rax,  qword ptr [word ptr [rip + stderr]]
	mov	qword ptr [rsp], rax
	mov	rdi, rbx
	call	quote
	mov	rcx, rax
	mov	esi, 1
	mov	edx, OFFSET FLAT:label_806
	xor	eax, eax
	mov	rdi, qword ptr [rsp]
	call	__fprintf_chk
.label_804:
	mov	rbx, qword ptr [r15 + rbp*8 + 8]
	inc	rbp
	add	r13, r14
	test	rbx, rbx
	jne	.label_803
.label_807:
	mov	rsi,  qword ptr [word ptr [rip + stderr]]
	mov	edi, 0xa
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	jmp	putc_unlocked
	nop	
	.section	.text
	.align	32
	#Procedure 0x408f60
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
	jns	.label_809
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
.label_809:
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408fd0
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
	je	.label_810
	add	rbx, 8
	nop	word ptr cs:[rax + rax]
.label_811:
	mov	rdi, r12
	mov	rsi, r15
	mov	rdx, r14
	call	memcmp
	test	eax, eax
	mov	rax, r13
	je	.label_810
	mov	r13, qword ptr [rbx]
	add	rbx, 8
	add	r15, r14
	test	r13, r13
	mov	eax, 0
	jne	.label_811
.label_810:
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x409040
	.globl c_isalnum
	.type c_isalnum, @function
c_isalnum:

	mov	al, 1
	lea	ecx, [rdi - 0x41]
	cmp	ecx, 0x39
	ja	.label_812
	movabs	rdx, 0x3ffffff03ffffff
	bt	rdx, rcx
	jae	.label_812
.label_813:
	ret	
.label_812:
	add	edi, -0x30
	cmp	edi, 0xa
	jb	.label_813
	xor	eax, eax
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x409070
	.globl c_isalpha
	.type c_isalpha, @function
c_isalpha:

	add	edi, -0x41
	cmp	edi, 0x39
	ja	.label_814
	movabs	rax, 0x3ffffff03ffffff
	mov	ecx, edi
	shr	rax, cl
	and	eax, 1
	ret	
.label_814:
	xor	eax, eax
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x409090
	.globl c_isascii
	.type c_isascii, @function
c_isascii:

	cmp	edi, 0x80
	setb	al
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4090a0
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
	#Procedure 0x4090b0
	.globl c_iscntrl
	.type c_iscntrl, @function
c_iscntrl:

	mov	al, 1
	cmp	edi, 0x20
	jae	.label_815
.label_816:
	ret	
.label_815:
	cmp	edi, 0x7f
	je	.label_816
	xor	eax, eax
	jmp	.label_816
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4090d0
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
	#Procedure 0x4090e0
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
	#Procedure 0x4090f0
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
	#Procedure 0x409100
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
	#Procedure 0x409110
	.globl c_ispunct
	.type c_ispunct, @function
c_ispunct:

	add	edi, -0x21
	cmp	edi, 0x5d
	ja	.label_817
	mov	al, 1
	jmp	qword ptr [word ptr [+ (rdi * 8) + label_818]]
.label_819:
	ret	
.label_817:
	xor	eax, eax
	jmp	.label_819
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x409130
	.globl c_isspace
	.type c_isspace, @function
c_isspace:

	add	edi, -9
	cmp	edi, 0x17
	ja	.label_820
	mov	eax, 0x80001f
	mov	ecx, edi
	shr	eax, cl
	and	eax, 1
	ret	
.label_820:
	xor	eax, eax
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x409150

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
	#Procedure 0x409160
	.globl c_isxdigit
	.type c_isxdigit, @function
c_isxdigit:

	add	edi, -0x30
	cmp	edi, 0x36
	ja	.label_821
	movabs	rax, 0x7e0000007e03ff
	mov	ecx, edi
	shr	rax, cl
	and	eax, 1
	ret	
.label_821:
	xor	eax, eax
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x409180
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
	#Procedure 0x409190
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
	#Procedure 0x4091a0

	.globl hard_locale
	.type hard_locale, @function
hard_locale:
	push	rbx
	xor	esi, esi
	call	setlocale
	mov	bl, 1
	test	rax, rax
	je	.label_823
	cmp	byte ptr [rax], 0x43
	jne	.label_825
	cmp	byte ptr [rax + 1], 0
	je	.label_822
.label_825:
	mov	esi, OFFSET FLAT:label_824
	mov	rdi, rax
	call	strcmp
	test	eax, eax
	jne	.label_823
.label_822:
	xor	ebx, ebx
.label_823:
	mov	eax, ebx
	pop	rbx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4091e0

	.globl locale_charset
	.type locale_charset, @function
locale_charset:
	push	rax
	mov	edi, 0xe
	call	rpl_nl_langinfo
	test	rax, rax
	mov	ecx, OFFSET FLAT:label_47
	cmovne	rcx, rax
	cmp	byte ptr [rcx], 0
	mov	eax, OFFSET FLAT:label_826
	cmovne	rax, rcx
	pop	rcx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x409210

	.globl xsum
	.type xsum, @function
xsum:
	add	rsi, rdi
	cmp	rsi, rdi
	mov	rax, -1
	cmovae	rax, rsi
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x409230
	.globl xsum3
	.type xsum3, @function
xsum3:

	push	rbx
	mov	rbx, rdx
	call	xsum
	mov	rdi, rax
	mov	rsi, rbx
	pop	rbx
	jmp	xsum
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x409250
	.globl xsum4
	.type xsum4, @function
xsum4:

	push	r14
	push	rbx
	push	rax
	mov	r14, rcx
	mov	rbx, rdx
	call	xsum
	mov	rdi, rax
	mov	rsi, rbx
	call	xsum
	mov	rdi, rax
	mov	rsi, r14
	add	rsp, 8
	pop	rbx
	pop	r14
	jmp	xsum
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x409280
	.globl xmax
	.type xmax, @function
xmax:

	cmp	rdi, rsi
	cmovae	rsi, rdi
	mov	rax, rsi
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x409290

	.globl rpl_nl_langinfo
	.type rpl_nl_langinfo, @function
rpl_nl_langinfo:
	lea	eax, [rdi - 0x27d8]
	lea	ecx, [rdi + 0x1d842]
	cmp	eax, 0xc
	cmovb	edi, ecx
	jmp	nl_langinfo
	nop	word ptr [rax + rax]
	nop	
	nop	word ptr cs:[rax + rax]
	nop	word ptr cs:[rax + rax]
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax]
	.section .text
	.align	32
	#Procedure 0x409360

	.globl fstat
	.type fstat, @function
fstat:
	mov	rdx, rsi
	mov	esi, edi
	mov	edi, 1
	jmp	__fxstat
