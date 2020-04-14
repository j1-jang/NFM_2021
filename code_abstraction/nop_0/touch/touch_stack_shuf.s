	.section	.text
	.align	32
	#Procedure 0x401c20

	.globl usage
	.type usage, @function
usage:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	rbp, rbp
	mov	dword ptr [rbp - 0xc], edi
	cmp	dword ptr [rbp - 0xc], 0
	je	.label_8
	jmp	.label_10
.label_10:
	movabs	rdi, OFFSET FLAT:.str
	mov	rbp, rbp
	mov	rax,  qword ptr [word ptr [stderr]]
	mov	qword ptr [rbp - 0x18], rax
	mov	rsp, rsp
	call	gettext
	mov	rdx,  qword ptr [word ptr [program_name]]
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rsi, rax
	lea	rsi, [rsi]
	mov	al, 0
	call	fprintf
	mov	dword ptr [rbp - 8], eax
	mov	rsp, rsp
	jmp	.label_9
.label_8:
	movabs	rdi, OFFSET FLAT:.str.1
	call	gettext
	mov	rsi,  qword ptr [word ptr [program_name]]
	mov	rdi, rax
	mov	al, 0
	call	printf
	lea	rdi, [rdi]
	movabs	rdi, OFFSET FLAT:.str.2
	mov	dword ptr [rbp - 0x24], eax
	call	gettext
	mov	rsp, rsp
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	mov	rsp, rsp
	call	fputs_unlocked
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x10], eax
	nop	
	call	emit_mandatory_arg_note
	movabs	rdi, OFFSET FLAT:.str.3
	lea	rdi, [rdi]
	call	gettext
	nop	
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	lea	rdi, [rdi]
	call	fputs_unlocked
	nop	
	movabs	rdi, OFFSET FLAT:.str.4
	mov	dword ptr [rbp - 0x1c], eax
	call	gettext
	lea	rdi, [rdi]
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	mov	rsp, rsp
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:.str.5
	mov	dword ptr [rbp - 0x28], eax
	mov	rbp, rbp
	call	gettext
	mov	rsp, rsp
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	mov	rbp, rbp
	movabs	rdi, OFFSET FLAT:.str.6
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x30], eax
	lea	rdi, [rdi]
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	lea	rsi, [rsi]
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:.str.7
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x2c], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:.str.8
	mov	dword ptr [rbp - 0x20], eax
	mov	rbp, rbp
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:.str.9
	mov	dword ptr [rbp - 4], eax
	mov	rbp, rbp
	call	emit_ancillary_info
.label_9:
	mov	edi, dword ptr [rbp - 0xc]
	call	exit
	.section	.text
	.align	32
	#Procedure 0x401df0

	.globl emit_mandatory_arg_note
	.type emit_mandatory_arg_note, @function
emit_mandatory_arg_note:
	push	rbp
	mov	rbp, rbp
	mov	rbp, rsp
	mov	rsp, rsp
	sub	rsp, 0x10
	mov	rsp, rsp
	movabs	rdi, OFFSET FLAT:.str.27
	call	gettext
	nop	
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rsp, rsp
	mov	rdi, rax
	call	fputs_unlocked
	mov	dword ptr [rbp - 4], eax
	nop	
	add	rsp, 0x10
	lea	rdi, [rdi]
	pop	rbp
	lea	rdi, [rdi]
	ret	
	.section	.text
	.align	32
	#Procedure 0x401e40

	.globl emit_ancillary_info
	.type emit_ancillary_info, @function
emit_ancillary_info:
	mov	rbp, rbp
	push	rbp
	mov	rbp, rbp
	mov	rbp, rsp
	sub	rsp, 0x50
	mov	rbp, rbp
	movabs	rax, OFFSET FLAT:emit_ancillary_info.infomap
	nop	
	mov	qword ptr [rbp - 0x30], rdi
	nop	
	mov	rdi, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x20], rdi
	mov	qword ptr [rbp - 0x40], rax
.label_11:
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x40]
	cmp	qword ptr [rdx], 0
	mov	byte ptr [rbp - 0x21], cl
	nop	
	je	.label_14
	nop	
	mov	rdi, qword ptr [rbp - 0x30]
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x40]
	mov	rsi, qword ptr [rax]
	lea	rdi, [rdi]
	call	strcmp
	cmp	eax, 0
	sete	cl
	nop	
	xor	cl, 0xff
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x21], cl
.label_14:
	mov	al, byte ptr [rbp - 0x21]
	test	al, 1
	lea	rsi, [rsi]
	jne	.label_13
	mov	rbp, rbp
	jmp	.label_15
.label_13:
	mov	rax, qword ptr [rbp - 0x40]
	add	rax, 0x10
	nop	
	mov	qword ptr [rbp - 0x40], rax
	lea	rsi, [rsi]
	jmp	.label_11
.label_15:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x40]
	cmp	qword ptr [rax + 8], 0
	je	.label_16
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax + 8]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x20], rax
.label_16:
	lea	rdi, [rdi]
	movabs	rdi, OFFSET FLAT:.str.36
	mov	rbp, rbp
	call	gettext
	nop	
	movabs	rsi, OFFSET FLAT:.str.17
	lea	rsi, [rsi]
	movabs	rdx, OFFSET FLAT:.str.18
	mov	rdi, rax
	mov	rsp, rsp
	mov	al, 0
	mov	rsp, rsp
	call	printf
	nop	
	mov	edi, 5
	lea	rsi, [rsi]
	xor	ecx, ecx
	mov	esi, ecx
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 4], eax
	call	setlocale
	mov	qword ptr [rbp - 0x18], rax
	nop	
	cmp	qword ptr [rbp - 0x18], 0
	je	.label_12
	lea	rsi, [rsi]
	movabs	rsi, OFFSET FLAT:.str.38
	mov	rbp, rbp
	mov	eax, 3
	mov	edx, eax
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	call	strncmp
	mov	rbp, rbp
	cmp	eax, 0
	je	.label_12
	movabs	rdi, OFFSET FLAT:.str.39
	lea	rdi, [rdi]
	call	gettext
	mov	rbp, rbp
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	mov	rsp, rsp
	call	fputs_unlocked
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x44], eax
.label_12:
	movabs	rdi, OFFSET FLAT:.str.40
	mov	rsp, rsp
	call	gettext
	movabs	rsi, OFFSET FLAT:.str.18
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x30]
	lea	rdi, [rdi]
	mov	rdi, rax
	mov	al, 0
	call	printf
	mov	rsp, rsp
	movabs	rdi, OFFSET FLAT:.str.41
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x38], eax
	lea	rsi, [rsi]
	call	gettext
	lea	rsi, [rsi]
	movabs	rdx, OFFSET FLAT:.str_0
	lea	rsi, [rsi]
	movabs	rsi, OFFSET FLAT:.str.42
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x20]
	cmp	rcx, qword ptr [rbp - 0x30]
	cmove	rdx, rsi
	mov	qword ptr [rbp - 0x10], rdi
	mov	rsp, rsp
	mov	rdi, rax
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	al, 0
	lea	rsi, [rsi]
	call	printf
	mov	dword ptr [rbp - 0x34], eax
	add	rsp, 0x50
	lea	rsi, [rsi]
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x402060

	.globl main
	.type main, @function
main:
	mov	rbp, rbp
	push	rbp
	nop	
	mov	rbp, rsp
	push	r15
	mov	rsp, rsp
	push	r14
	lea	rsi, [rsi]
	push	rbx
	sub	rsp, 0x1d8
	mov	dword ptr [rbp - 0x1a4], 0
	nop	
	mov	dword ptr [rbp - 0x170], edi
	mov	qword ptr [rbp - 0xc8], rsi
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x1a5], 0
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0xf1], 1
	nop	
	mov	qword ptr [rbp - 0x1a0], 0
	mov	rsi, qword ptr [rbp - 0xc8]
	nop	
	mov	rdi, qword ptr [rsi]
	mov	rsp, rsp
	call	set_program_name
	mov	rbp, rbp
	mov	edi, 6
	movabs	rsi, OFFSET FLAT:.str_0
	call	setlocale
	movabs	rdi, OFFSET FLAT:.str.11
	movabs	rsi, OFFSET FLAT:.str.12
	mov	qword ptr [rbp - 0x1c8], rax
	call	bindtextdomain
	lea	rdi, [rdi]
	movabs	rdi, OFFSET FLAT:.str.11
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0xd8], rax
	call	textdomain
	lea	rsi, [rsi]
	movabs	rdi, OFFSET FLAT:close_stdout
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x148], rax
	lea	rdi, [rdi]
	call	atexit
	mov	dword ptr [dword ptr [change_times]],  0
	mov	byte ptr [byte ptr [use_ref]],  0
	mov	byte ptr [byte ptr [no_create]],  0
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x140], eax
.label_50:
	mov	rsp, rsp
	movabs	rdx, OFFSET FLAT:.str.13
	lea	rsi, [rsi]
	movabs	rcx, OFFSET FLAT:longopts
	xor	eax, eax
	mov	r8d, eax
	mov	edi, dword ptr [rbp - 0x170]
	mov	rsi, qword ptr [rbp - 0xc8]
	call	getopt_long
	mov	dword ptr [rbp - 0xb4], eax
	cmp	eax, -1
	mov	rsp, rsp
	je	.label_47
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0xb4]
	nop	
	mov	ecx, eax
	nop	
	sub	ecx, 0xffffff7d
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x16c], eax
	mov	dword ptr [rbp - 0x134], ecx
	je	.label_51
	lea	rdi, [rdi]
	jmp	.label_57
.label_57:
	mov	eax, dword ptr [rbp - 0x16c]
	nop	
	sub	eax, 0xffffff7e
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x13c], eax
	lea	rsi, [rsi]
	je	.label_62
	jmp	.label_66
.label_66:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x16c]
	sub	eax, 0x61
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x10c], eax
	mov	rbp, rbp
	je	.label_68
	jmp	.label_19
.label_19:
	mov	eax, dword ptr [rbp - 0x16c]
	nop	
	sub	eax, 0x63
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x17c], eax
	lea	rdi, [rdi]
	je	.label_44
	jmp	.label_24
.label_24:
	nop	
	mov	eax, dword ptr [rbp - 0x16c]
	sub	eax, 0x64
	mov	dword ptr [rbp - 0xe4], eax
	lea	rdi, [rdi]
	je	.label_32
	lea	rsi, [rsi]
	jmp	.label_35
.label_35:
	mov	eax, dword ptr [rbp - 0x16c]
	sub	eax, 0x66
	mov	dword ptr [rbp - 0xe0], eax
	mov	rbp, rbp
	je	.label_37
	jmp	.label_41
.label_41:
	mov	eax, dword ptr [rbp - 0x16c]
	sub	eax, 0x68
	mov	dword ptr [rbp - 0xdc], eax
	lea	rsi, [rsi]
	je	.label_43
	mov	rbp, rbp
	jmp	.label_46
.label_46:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x16c]
	lea	rsi, [rsi]
	sub	eax, 0x6d
	mov	dword ptr [rbp - 0xf8], eax
	je	.label_49
	mov	rbp, rbp
	jmp	.label_56
.label_56:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x16c]
	nop	
	sub	eax, 0x72
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x194], eax
	je	.label_31
	mov	rbp, rbp
	jmp	.label_60
.label_60:
	mov	eax, dword ptr [rbp - 0x16c]
	sub	eax, 0x74
	mov	dword ptr [rbp - 0x138], eax
	je	.label_64
	lea	rsi, [rsi]
	jmp	.label_67
.label_67:
	mov	eax, dword ptr [rbp - 0x16c]
	sub	eax, 0x80
	mov	dword ptr [rbp - 0x15c], eax
	je	.label_69
	nop	
	jmp	.label_18
.label_68:
	mov	rbp, rbp
	mov	eax,  dword ptr [dword ptr [change_times]]
	or	eax, 1
	mov	rbp, rbp
	mov	dword ptr [dword ptr [change_times]],  eax
	lea	rsi, [rsi]
	jmp	.label_20
.label_44:
	nop	
	mov	byte ptr [byte ptr [no_create]],  1
	jmp	.label_20
.label_32:
	mov	rbp, rbp
	mov	rax,  qword ptr [word ptr [optarg]]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x1a0], rax
	jmp	.label_20
.label_37:
	lea	rsi, [rsi]
	jmp	.label_20
.label_43:
	mov	byte ptr [byte ptr [no_dereference]],  1
	mov	rbp, rbp
	jmp	.label_20
.label_49:
	mov	eax,  dword ptr [dword ptr [change_times]]
	nop	
	or	eax, 2
	mov	dword ptr [dword ptr [change_times]],  eax
	jmp	.label_20
.label_31:
	mov	rsp, rsp
	mov	byte ptr [byte ptr [use_ref]],  1
	mov	rax,  qword ptr [word ptr [optarg]]
	mov	qword ptr [word ptr [ref_file]],  rax
	mov	rsp, rsp
	jmp	.label_20
.label_64:
	movabs	rdi, OFFSET FLAT:newtime
	nop	
	mov	edx, 6
	lea	rsi, [rsi]
	mov	rsi,  qword ptr [word ptr [optarg]]
	call	posixtime
	test	al, 1
	lea	rsi, [rsi]
	jne	.label_58
	movabs	rdi, OFFSET FLAT:.str.14
	mov	rbp, rbp
	call	gettext
	nop	
	mov	rdi,  qword ptr [word ptr [optarg]]
	mov	qword ptr [rbp - 0xc0], rax
	call	quote
	mov	edi, 1
	xor	esi, esi
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0xc0]
	mov	rcx, rax
	lea	rsi, [rsi]
	mov	al, 0
	call	error
.label_58:
	mov	qword ptr [word ptr [label_21]],  0
	mov	rax,  qword ptr [word ptr [newtime]]
	lea	rsi, [rsi]
	mov	qword ptr [word ptr [label_22]],  rax
	lea	rdi, [rdi]
	mov	rax,  qword ptr [word ptr [label_21]]
	mov	qword ptr [word ptr [label_23]],  rax
	mov	byte ptr [rbp - 0x1a5], 1
	lea	rsi, [rsi]
	jmp	.label_20
.label_69:
	movabs	rdi, OFFSET FLAT:.str.15
	nop	
	movabs	rdx, OFFSET FLAT:time_args
	lea	rsi, [rsi]
	movabs	rax, OFFSET FLAT:time_masks
	lea	rsi, [rsi]
	mov	ecx, 4
	mov	r8d, ecx
	mov	rsi,  qword ptr [word ptr [optarg]]
	mov	r9,  qword ptr [word ptr [argmatch_die]]
	lea	rsi, [rsi]
	mov	rcx, rax
	call	__xargmatch_internal
	mov	r10d,  dword ptr [dword ptr [+ (rax * 4) + time_masks]]
	mov	rsp, rsp
	or	r10d,  dword ptr [dword ptr [change_times]]
	mov	dword ptr [dword ptr [change_times]],  r10d
	jmp	.label_20
.label_62:
	xor	edi, edi
	nop	
	call	usage
.label_51:
	mov	rbp, rbp
	movabs	rsi, OFFSET FLAT:.str.9
	movabs	rdx, OFFSET FLAT:.str.17
	nop	
	movabs	r8, OFFSET FLAT:.str.17_0
	movabs	r9, OFFSET FLAT:.str.18_0
	nop	
	movabs	rax, OFFSET FLAT:.str.19
	movabs	rcx, OFFSET FLAT:.str.20
	movabs	rdi, OFFSET FLAT:.str.21
	xor	r10d, r10d
	lea	rsi, [rsi]
	mov	r11d, r10d
	mov	rbx,  qword ptr [word ptr [stdout]]
	mov	r14,  qword ptr [word ptr [Version]]
	mov	qword ptr [rbp - 0xb0], rdi
	nop	
	mov	rdi, rbx
	nop	
	mov	qword ptr [rbp - 0xf0], rcx
	mov	rcx, r14
	nop	
	mov	qword ptr [rsp], rax
	mov	rax, qword ptr [rbp - 0xf0]
	mov	qword ptr [rsp + 8], rax
	mov	rbx, qword ptr [rbp - 0xb0]
	nop	
	mov	qword ptr [rsp + 0x10], rbx
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x18], 0
	mov	rsp, rsp
	mov	al, 0
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x118], r11
	call	version_etc
	lea	rdi, [rdi]
	xor	edi, edi
	lea	rsi, [rsi]
	call	exit
.label_18:
	mov	edi, 1
	call	usage
.label_20:
	mov	rbp, rbp
	jmp	.label_50
.label_47:
	cmp	dword ptr [dword ptr [change_times]],  0
	lea	rsi, [rsi]
	jne	.label_53
	mov	dword ptr [dword ptr [change_times]],  3
.label_53:
	test	byte ptr [rbp - 0x1a5], 1
	mov	rsp, rsp
	je	.label_33
	test	byte ptr [byte ptr [use_ref]],  1
	jne	.label_59
	cmp	qword ptr [rbp - 0x1a0], 0
	mov	rbp, rbp
	je	.label_33
.label_59:
	movabs	rdi, OFFSET FLAT:.str.22
	call	gettext
	xor	ecx, ecx
	mov	rsp, rsp
	mov	edi, ecx
	mov	esi, ecx
	mov	rbp, rbp
	mov	rdx, rax
	lea	rdi, [rdi]
	mov	al, 0
	nop	
	call	error
	mov	rbp, rbp
	mov	edi, 1
	call	usage
.label_33:
	mov	rsp, rsp
	test	byte ptr [byte ptr [use_ref]],  1
	je	.label_25
	lea	rsi, [rsi]
	test	byte ptr [byte ptr [no_dereference]],  1
	lea	rdi, [rdi]
	je	.label_54
	nop	
	lea	rsi, [rbp - 0xa8]
	mov	rbp, rbp
	mov	rdi,  qword ptr [word ptr [ref_file]]
	lea	rsi, [rsi]
	call	__lstat
	cmp	eax, 0
	jne	.label_40
	jmp	.label_42
.label_54:
	lea	rdi, [rdi]
	lea	rsi, [rbp - 0xa8]
	mov	rdi,  qword ptr [word ptr [ref_file]]
	lea	rdi, [rdi]
	call	stat
	mov	rbp, rbp
	cmp	eax, 0
	je	.label_42
.label_40:
	mov	rbp, rbp
	call	__errno_location
	mov	rsp, rsp
	movabs	rdi, OFFSET FLAT:.str.23
	mov	rsp, rsp
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0x180], esi
	call	gettext
	lea	rsi, [rsi]
	mov	edi, 4
	mov	rsp, rsp
	mov	rsi,  qword ptr [word ptr [ref_file]]
	nop	
	mov	qword ptr [rbp - 0x178], rax
	call	quotearg_style
	mov	rbp, rbp
	mov	edi, 1
	lea	rsi, [rsi]
	mov	esi, dword ptr [rbp - 0x180]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x178]
	mov	rbp, rbp
	mov	rcx, rax
	mov	al, 0
	call	error
.label_42:
	lea	rdi, [rbp - 0xa8]
	lea	rdi, [rdi]
	call	get_stat_atime
	lea	rdi, [rbp - 0xa8]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x190], rax
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x188], rdx
	mov	rax, qword ptr [rbp - 0x190]
	lea	rdi, [rdi]
	mov	qword ptr [word ptr [newtime]],  rax
	nop	
	mov	rax, qword ptr [rbp - 0x188]
	mov	qword ptr [word ptr [label_21]],  rax
	call	get_stat_mtime
	mov	qword ptr [rbp - 0x1c0], rax
	nop	
	mov	qword ptr [rbp - 0x1b8], rdx
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x1c0]
	mov	rbp, rbp
	mov	qword ptr [word ptr [label_22]],  rax
	mov	rax, qword ptr [rbp - 0x1b8]
	lea	rsi, [rsi]
	mov	qword ptr [word ptr [label_23]],  rax
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x1a5], 1
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x1a0], 0
	nop	
	je	.label_38
	mov	eax,  dword ptr [dword ptr [change_times]]
	lea	rsi, [rsi]
	and	eax, 1
	cmp	eax, 0
	je	.label_55
	movabs	rax, OFFSET FLAT:newtime
	mov	rsi, qword ptr [rbp - 0x1a0]
	mov	rsp, rsp
	mov	rdi, rax
	mov	rdx, rax
	mov	rsp, rsp
	call	get_reldate
.label_55:
	mov	eax,  dword ptr [dword ptr [change_times]]
	lea	rsi, [rsi]
	and	eax, 2
	mov	rbp, rbp
	cmp	eax, 0
	je	.label_65
	lea	rsi, [rsi]
	movabs	rax, OFFSET FLAT:newtime
	mov	rbp, rbp
	add	rax, 0x10
	mov	rsi, qword ptr [rbp - 0x1a0]
	mov	rdi, rax
	mov	rdx, rax
	call	get_reldate
.label_65:
	jmp	.label_38
.label_38:
	jmp	.label_39
.label_25:
	cmp	qword ptr [rbp - 0x1a0], 0
	mov	rsp, rsp
	je	.label_17
	lea	rdi, [rbp - 0x158]
	call	gettime
	movabs	rdi, OFFSET FLAT:newtime
	nop	
	lea	rdx, [rbp - 0x158]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x1a0]
	call	get_reldate
	mov	rdx,  qword ptr [word ptr [newtime]]
	mov	qword ptr [word ptr [label_22]],  rdx
	lea	rsi, [rsi]
	mov	rdx,  qword ptr [word ptr [label_21]]
	mov	rsp, rsp
	mov	qword ptr [word ptr [label_23]],  rdx
	mov	byte ptr [rbp - 0x1a5], 1
	cmp	dword ptr [dword ptr [change_times]],  3
	lea	rsi, [rsi]
	jne	.label_36
	mov	rax,  qword ptr [word ptr [newtime]]
	cmp	rax, qword ptr [rbp - 0x158]
	jne	.label_36
	mov	rax,  qword ptr [word ptr [label_21]]
	cmp	rax, qword ptr [rbp - 0x150]
	jne	.label_36
	mov	rsp, rsp
	lea	rdi, [rbp - 0x130]
	nop	
	lea	rdx, [rbp - 0x108]
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x158]
	mov	rbp, rbp
	xor	rax, 1
	nop	
	mov	qword ptr [rbp - 0x108], rax
	mov	rax, qword ptr [rbp - 0x150]
	mov	qword ptr [rbp - 0x100], rax
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x1a0]
	call	get_reldate
	nop	
	mov	rax, qword ptr [rbp - 0x130]
	cmp	rax, qword ptr [rbp - 0x108]
	mov	rbp, rbp
	jne	.label_30
	mov	rax, qword ptr [rbp - 0x128]
	cmp	rax, qword ptr [rbp - 0x100]
	jne	.label_30
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x1a5], 0
.label_30:
	jmp	.label_36
.label_36:
	mov	rsp, rsp
	jmp	.label_17
.label_17:
	mov	rsp, rsp
	jmp	.label_39
.label_39:
	test	byte ptr [rbp - 0x1a5], 1
	jne	.label_26
	mov	rsp, rsp
	mov	eax, 2
	mov	ecx, dword ptr [rbp - 0x170]
	lea	rsi, [rsi]
	sub	ecx,  dword ptr [dword ptr [optind]]
	lea	rdi, [rdi]
	cmp	eax, ecx
	mov	rbp, rbp
	jg	.label_26
	call	posix2_version
	cmp	eax, 0x30db0
	mov	rsp, rsp
	jge	.label_26
	movabs	rdi, OFFSET FLAT:newtime
	mov	edx, 9
	movsxd	rax,  dword ptr [dword ptr [optind]]
	mov	rcx, qword ptr [rbp - 0xc8]
	mov	rsi, qword ptr [rcx + rax*8]
	mov	rbp, rbp
	call	posixtime
	test	al, 1
	jne	.label_61
	jmp	.label_26
.label_61:
	lea	rsi, [rsi]
	movabs	rdi, OFFSET FLAT:.str.24
	mov	qword ptr [word ptr [label_21]],  0
	mov	rax,  qword ptr [word ptr [newtime]]
	mov	rsp, rsp
	mov	qword ptr [word ptr [label_22]],  rax
	mov	rax,  qword ptr [word ptr [label_21]]
	mov	rsp, rsp
	mov	qword ptr [word ptr [label_23]],  rax
	nop	
	mov	byte ptr [rbp - 0x1a5], 1
	call	getenv
	cmp	rax, 0
	jne	.label_28
	lea	rsi, [rsi]
	movabs	rdi, OFFSET FLAT:newtime
	mov	rsp, rsp
	call	localtime
	mov	rbp, rbp
	mov	qword ptr [rbp - 0xd0], rax
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0xd0], 0
	nop	
	je	.label_34
	movabs	rdi, OFFSET FLAT:.str.25
	lea	rsi, [rsi]
	call	gettext
	xor	ecx, ecx
	lea	rsi, [rsi]
	movsxd	rdi,  dword ptr [dword ptr [optind]]
	mov	rdx, qword ptr [rbp - 0xc8]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rdx + rdi*8]
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0xd0]
	nop	
	movsxd	rdi, dword ptr [rdi + 0x14]
	add	rdi, 0x76c
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0xd0]
	mov	r8d, dword ptr [rsi + 0x10]
	lea	rdi, [rdi]
	add	r8d, 1
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0xd0]
	mov	rsp, rsp
	mov	r9d, dword ptr [rsi + 0xc]
	mov	rsi, qword ptr [rbp - 0xd0]
	mov	r10d, dword ptr [rsi + 8]
	mov	rsi, qword ptr [rbp - 0xd0]
	mov	r11d, dword ptr [rsi + 4]
	mov	rsi, qword ptr [rbp - 0xd0]
	mov	ebx, dword ptr [rsi]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x120], rdi
	mov	edi, ecx
	mov	esi, ecx
	mov	qword ptr [rbp - 0x168], rdx
	lea	rdi, [rdi]
	mov	rdx, rax
	nop	
	mov	rcx, qword ptr [rbp - 0x168]
	mov	rax, qword ptr [rbp - 0x120]
	mov	dword ptr [rbp - 0x198], r8d
	mov	r8, rax
	mov	r14d, dword ptr [rbp - 0x198]
	nop	
	mov	dword ptr [rbp - 0x1ac], r9d
	mov	r9d, r14d
	mov	r15d, dword ptr [rbp - 0x1ac]
	mov	dword ptr [rsp], r15d
	lea	rdi, [rdi]
	mov	dword ptr [rsp + 8], r10d
	mov	dword ptr [rsp + 0x10], r11d
	lea	rdi, [rdi]
	mov	dword ptr [rsp + 0x18], ebx
	lea	rsi, [rsi]
	mov	al, 0
	lea	rsi, [rsi]
	call	error
.label_34:
	mov	rbp, rbp
	jmp	.label_28
.label_28:
	mov	eax,  dword ptr [dword ptr [optind]]
	nop	
	add	eax, 1
	mov	dword ptr [dword ptr [optind]],  eax
.label_26:
	lea	rsi, [rsi]
	test	byte ptr [rbp - 0x1a5], 1
	mov	rsp, rsp
	jne	.label_45
	cmp	dword ptr [dword ptr [change_times]],  3
	lea	rsi, [rsi]
	jne	.label_48
	lea	rdi, [rdi]
	mov	byte ptr [byte ptr [amtime_now]],  1
	nop	
	jmp	.label_52
.label_48:
	lea	rdi, [rdi]
	mov	qword ptr [word ptr [label_21]],  0x3fffffff
	mov	rbp, rbp
	mov	qword ptr [word ptr [label_23]],  0x3fffffff
.label_52:
	mov	rsp, rsp
	jmp	.label_45
.label_45:
	mov	rbp, rbp
	mov	eax,  dword ptr [dword ptr [optind]]
	lea	rsi, [rsi]
	cmp	eax, dword ptr [rbp - 0x170]
	mov	rbp, rbp
	jne	.label_63
	movabs	rdi, OFFSET FLAT:.str.26
	mov	rbp, rbp
	call	gettext
	mov	rsp, rsp
	xor	ecx, ecx
	lea	rsi, [rsi]
	mov	edi, ecx
	mov	esi, ecx
	mov	rdx, rax
	mov	rbp, rbp
	mov	al, 0
	call	error
	mov	rbp, rbp
	mov	edi, 1
	call	usage
.label_63:
	jmp	.label_27
.label_27:
	mov	eax,  dword ptr [dword ptr [optind]]
	lea	rdi, [rdi]
	cmp	eax, dword ptr [rbp - 0x170]
	nop	
	jge	.label_29
	movsxd	rax,  dword ptr [dword ptr [optind]]
	nop	
	mov	rcx, qword ptr [rbp - 0xc8]
	nop	
	mov	rdi, qword ptr [rcx + rax*8]
	lea	rdi, [rdi]
	call	touch
	and	al, 1
	movzx	edx, al
	mov	rbp, rbp
	mov	al, byte ptr [rbp - 0xf1]
	and	al, 1
	mov	rsp, rsp
	movzx	esi, al
	mov	rbp, rbp
	and	esi, edx
	lea	rdi, [rdi]
	cmp	esi, 0
	mov	rbp, rbp
	setne	al
	and	al, 1
	mov	byte ptr [rbp - 0xf1], al
	mov	eax,  dword ptr [dword ptr [optind]]
	mov	rbp, rbp
	add	eax, 1
	lea	rsi, [rsi]
	mov	dword ptr [dword ptr [optind]],  eax
	jmp	.label_27
.label_29:
	mov	eax, 1
	lea	rdi, [rdi]
	xor	ecx, ecx
	mov	dl, byte ptr [rbp - 0xf1]
	test	dl, 1
	nop	
	cmovne	eax, ecx
	add	rsp, 0x1d8
	lea	rsi, [rsi]
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x402ce0

	.globl get_reldate
	.type get_reldate, @function
get_reldate:
	nop	
	push	rbp
	mov	rbp, rsp
	lea	rdi, [rdi]
	sub	rsp, 0x20
	nop	
	mov	qword ptr [rbp - 0x10], rdi
	mov	rsp, rsp
	mov	qword ptr [rbp - 8], rsi
	mov	qword ptr [rbp - 0x20], rdx
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 8]
	mov	rdx, qword ptr [rbp - 0x20]
	call	parse_datetime
	nop	
	test	al, 1
	mov	rsp, rsp
	jne	.label_70
	movabs	rdi, OFFSET FLAT:.str.14
	call	gettext
	mov	rdi, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x18], rax
	lea	rsi, [rsi]
	call	quote
	mov	rsp, rsp
	mov	edi, 1
	xor	esi, esi
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rcx, rax
	mov	rbp, rbp
	mov	al, 0
	mov	rsp, rsp
	call	error
.label_70:
	lea	rdi, [rdi]
	add	rsp, 0x20
	lea	rdi, [rdi]
	pop	rbp
	lea	rsi, [rsi]
	ret	
	.section	.text
	.align	32
	#Procedure 0x402d70

	.globl touch
	.type touch, @function
touch:
	nop	
	push	rbp
	mov	rbp, rbp
	mov	rbp, rsp
	mov	rbp, rbp
	sub	rsp, 0x80
	movabs	rax, OFFSET FLAT:newtime
	mov	qword ptr [rbp - 0x20], rdi
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0xc], 0xffffffff
	mov	dword ptr [rbp - 0x40], 0
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x48], rax
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x20]
	mov	ecx, OFFSET FLAT:.str.55
	mov	esi, ecx
	call	strcmp
	cmp	eax, 0
	mov	rsp, rsp
	jne	.label_83
	mov	dword ptr [rbp - 0xc], 1
	jmp	.label_86
.label_83:
	mov	rsp, rsp
	test	byte ptr [byte ptr [no_create]],  1
	jne	.label_87
	mov	rbp, rbp
	test	byte ptr [byte ptr [no_dereference]],  1
	mov	rbp, rbp
	jne	.label_87
	xor	edi, edi
	nop	
	mov	edx, 0x941
	mov	ecx, 0x1b6
	mov	rsi, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	call	fd_reopen
	mov	rsp, rsp
	mov	dword ptr [rbp - 0xc], eax
	cmp	dword ptr [rbp - 0xc], -1
	lea	rdi, [rdi]
	jne	.label_75
	call	__errno_location
	lea	rdi, [rdi]
	cmp	dword ptr [rax], 0x15
	je	.label_75
	lea	rsi, [rsi]
	call	__errno_location
	cmp	dword ptr [rax], 0x16
	je	.label_75
	call	__errno_location
	cmp	dword ptr [rax], 1
	je	.label_75
	nop	
	call	__errno_location
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 0x40], ecx
.label_75:
	jmp	.label_87
.label_87:
	lea	rdi, [rdi]
	jmp	.label_86
.label_86:
	cmp	dword ptr [dword ptr [change_times]],  3
	je	.label_91
	cmp	dword ptr [dword ptr [change_times]],  2
	jne	.label_93
	mov	qword ptr [word ptr [label_21]],  0x3ffffffe
	jmp	.label_72
.label_93:
	cmp	dword ptr [dword ptr [change_times]],  1
	mov	rbp, rbp
	jne	.label_77
	jmp	.label_81
.label_77:
	lea	rdi, [rdi]
	movabs	rdi, OFFSET FLAT:.str.56
	lea	rdi, [rdi]
	movabs	rsi, OFFSET FLAT:.str.57
	mov	edx, 0x99
	nop	
	movabs	rcx, OFFSET FLAT:__PRETTY_FUNCTION__.touch
	call	__assert_fail
.label_81:
	mov	rsp, rsp
	mov	qword ptr [word ptr [label_23]],  0x3ffffffe
.label_72:
	jmp	.label_91
.label_91:
	lea	rsi, [rsi]
	test	byte ptr [byte ptr [amtime_now]],  1
	nop	
	je	.label_92
	nop	
	mov	qword ptr [rbp - 0x48], 0
.label_92:
	mov	edi, dword ptr [rbp - 0xc]
	mov	rbp, rbp
	cmp	dword ptr [rbp - 0xc], 1
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x38], edi
	mov	rsp, rsp
	jne	.label_74
	xor	eax, eax
	mov	rsp, rsp
	mov	ecx, eax
	mov	qword ptr [rbp - 0x30], rcx
	mov	rbp, rbp
	jmp	.label_79
.label_74:
	mov	rax, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x30], rax
.label_79:
	mov	rax, qword ptr [rbp - 0x30]
	xor	ecx, ecx
	mov	rsp, rsp
	mov	dl, cl
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x48]
	test	byte ptr [byte ptr [no_dereference]],  1
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x70], rax
	nop	
	mov	qword ptr [rbp - 8], rcx
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x71], dl
	mov	rsp, rsp
	je	.label_85
	cmp	dword ptr [rbp - 0xc], -1
	sete	al
	mov	byte ptr [rbp - 0x71], al
.label_85:
	mov	al, byte ptr [rbp - 0x71]
	mov	esi, 0xffffff9c
	xor	ecx, ecx
	mov	edx, 0x100
	mov	rbp, rbp
	test	al, 1
	cmovne	ecx, edx
	nop	
	mov	edi, dword ptr [rbp - 0x38]
	mov	rdx, qword ptr [rbp - 0x70]
	nop	
	mov	r8, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x54], ecx
	lea	rdi, [rdi]
	mov	rcx, r8
	mov	r8d, dword ptr [rbp - 0x54]
	mov	rbp, rbp
	call	fdutimensat
	lea	rdi, [rdi]
	cmp	eax, 0
	sete	r9b
	lea	rsi, [rsi]
	and	r9b, 1
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x61], r9b
	cmp	dword ptr [rbp - 0xc], 0
	jne	.label_84
	mov	rbp, rbp
	xor	edi, edi
	call	close
	lea	rdi, [rdi]
	cmp	eax, 0
	nop	
	je	.label_90
	mov	rbp, rbp
	call	__errno_location
	lea	rsi, [rsi]
	movabs	rdi, OFFSET FLAT:.str.58
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0x24], esi
	call	gettext
	nop	
	mov	edi, 4
	mov	rsi, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x50], rax
	call	quotearg_style
	xor	edi, edi
	lea	rdi, [rdi]
	mov	esi, dword ptr [rbp - 0x24]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x50]
	mov	rcx, rax
	mov	al, 0
	mov	rbp, rbp
	call	error
	mov	byte ptr [rbp - 0x72], 0
	jmp	.label_76
.label_90:
	lea	rdi, [rdi]
	jmp	.label_80
.label_84:
	cmp	dword ptr [rbp - 0xc], 1
	nop	
	jne	.label_78
	nop	
	test	byte ptr [rbp - 0x61], 1
	lea	rsi, [rsi]
	jne	.label_71
	call	__errno_location
	cmp	dword ptr [rax], 9
	mov	rbp, rbp
	jne	.label_71
	test	byte ptr [byte ptr [no_create]],  1
	lea	rsi, [rsi]
	je	.label_71
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x72], 1
	lea	rdi, [rdi]
	jmp	.label_76
.label_71:
	jmp	.label_78
.label_78:
	lea	rsi, [rsi]
	jmp	.label_80
.label_80:
	test	byte ptr [rbp - 0x61], 1
	jne	.label_82
	cmp	dword ptr [rbp - 0x40], 0
	je	.label_88
	lea	rsi, [rsi]
	movabs	rdi, OFFSET FLAT:.str.59
	mov	esi, dword ptr [rbp - 0x40]
	mov	dword ptr [rbp - 0x34], esi
	lea	rdi, [rdi]
	call	gettext
	mov	edi, 4
	nop	
	mov	rsi, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x60], rax
	call	quotearg_style
	lea	rsi, [rsi]
	xor	edi, edi
	mov	esi, dword ptr [rbp - 0x34]
	mov	rdx, qword ptr [rbp - 0x60]
	mov	rcx, rax
	mov	rsp, rsp
	mov	al, 0
	call	error
	jmp	.label_73
.label_88:
	mov	rbp, rbp
	test	byte ptr [byte ptr [no_create]],  1
	je	.label_89
	mov	rbp, rbp
	call	__errno_location
	lea	rdi, [rdi]
	cmp	dword ptr [rax], 2
	jne	.label_89
	nop	
	mov	byte ptr [rbp - 0x72], 1
	lea	rsi, [rsi]
	jmp	.label_76
.label_89:
	call	__errno_location
	mov	rbp, rbp
	movabs	rdi, OFFSET FLAT:.str.60
	mov	esi, dword ptr [rax]
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x3c], esi
	lea	rdi, [rdi]
	call	gettext
	mov	edi, 4
	mov	rsi, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x18], rax
	lea	rdi, [rdi]
	call	quotearg_style
	lea	rsi, [rsi]
	xor	edi, edi
	mov	esi, dword ptr [rbp - 0x3c]
	mov	rdx, qword ptr [rbp - 0x18]
	nop	
	mov	rcx, rax
	mov	al, 0
	call	error
.label_73:
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x72], 0
	jmp	.label_76
.label_82:
	mov	byte ptr [rbp - 0x72], 1
.label_76:
	mov	rbp, rbp
	mov	al, byte ptr [rbp - 0x72]
	and	al, 1
	mov	rbp, rbp
	movzx	eax, al
	add	rsp, 0x80
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4031c0

	.globl __argmatch_die
	.type __argmatch_die, @function
__argmatch_die:
	mov	rbp, rbp
	push	rbp
	mov	rsp, rsp
	mov	rbp, rsp
	mov	edi, 1
	call	usage
	.section	.text
	.align	32
	#Procedure 0x4031e0

	.globl argmatch
	.type argmatch, @function
argmatch:
	push	rbp
	lea	rdi, [rdi]
	mov	rbp, rsp
	nop	
	sub	rsp, 0x50
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x10], rdi
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x38], rsi
	mov	rbp, rbp
	mov	qword ptr [rbp - 8], rdx
	mov	qword ptr [rbp - 0x18], rcx
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x30], -1
	mov	byte ptr [rbp - 0x21], 0
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	call	strlen
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x40], rax
	mov	qword ptr [rbp - 0x48], 0
.label_94:
	mov	rax, qword ptr [rbp - 0x48]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x38]
	cmp	qword ptr [rcx + rax*8], 0
	je	.label_104
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x48]
	nop	
	mov	rcx, qword ptr [rbp - 0x38]
	mov	rdi, qword ptr [rcx + rax*8]
	mov	rsi, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x40]
	call	strncmp
	mov	rbp, rbp
	cmp	eax, 0
	jne	.label_101
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x48]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x38]
	mov	rdi, qword ptr [rcx + rax*8]
	call	strlen
	cmp	rax, qword ptr [rbp - 0x40]
	mov	rsp, rsp
	jne	.label_95
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x48]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x20], rax
	lea	rsi, [rsi]
	jmp	.label_97
.label_95:
	cmp	qword ptr [rbp - 0x30], -1
	jne	.label_102
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x48]
	mov	qword ptr [rbp - 0x30], rax
	mov	rsp, rsp
	jmp	.label_100
.label_102:
	cmp	qword ptr [rbp - 8], 0
	lea	rdi, [rdi]
	je	.label_96
	mov	rax, qword ptr [rbp - 8]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	imul	rcx, qword ptr [rbp - 0x30]
	add	rax, rcx
	mov	rcx, qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x18]
	imul	rdx, qword ptr [rbp - 0x48]
	add	rcx, rdx
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x18]
	nop	
	mov	rdi, rax
	mov	rsi, rcx
	lea	rsi, [rsi]
	call	memcmp
	cmp	eax, 0
	je	.label_98
.label_96:
	nop	
	mov	byte ptr [rbp - 0x21], 1
.label_98:
	lea	rsi, [rsi]
	jmp	.label_100
.label_100:
	mov	rbp, rbp
	jmp	.label_103
.label_103:
	mov	rsp, rsp
	jmp	.label_101
.label_101:
	nop	
	jmp	.label_105
.label_105:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x48]
	add	rax, 1
	mov	qword ptr [rbp - 0x48], rax
	mov	rsp, rsp
	jmp	.label_94
.label_104:
	test	byte ptr [rbp - 0x21], 1
	je	.label_99
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x20], -2
	jmp	.label_97
.label_99:
	mov	rax, qword ptr [rbp - 0x30]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x20], rax
.label_97:
	mov	rax, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	add	rsp, 0x50
	nop	
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x403390

	.globl argmatch_invalid
	.type argmatch_invalid, @function
argmatch_invalid:
	mov	rbp, rbp
	push	rbp
	mov	rsp, rsp
	mov	rbp, rsp
	sub	rsp, 0x40
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x40], rdi
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x28], rsi
	mov	qword ptr [rbp - 0x30], rdx
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x30], -1
	jne	.label_106
	movabs	rdi, OFFSET FLAT:.str_1
	call	gettext
	mov	qword ptr [rbp - 0x38], rax
	nop	
	jmp	.label_107
.label_106:
	nop	
	movabs	rdi, OFFSET FLAT:.str.1_0
	mov	rbp, rbp
	call	gettext
	mov	qword ptr [rbp - 0x38], rax
.label_107:
	mov	rax, qword ptr [rbp - 0x38]
	xor	edi, edi
	mov	rbp, rbp
	mov	esi, 8
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x18], rax
	mov	rdx, qword ptr [rbp - 0x18]
	nop	
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 8], rdx
	lea	rsi, [rsi]
	mov	rdx, rax
	call	quotearg_n_style
	mov	edi, 1
	mov	rsi, qword ptr [rbp - 0x40]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x20], rax
	call	quote_n
	xor	edi, edi
	mov	dword ptr [rbp - 0xc], edi
	nop	
	mov	esi, dword ptr [rbp - 0xc]
	mov	rdx, qword ptr [rbp - 8]
	mov	rcx, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	mov	r8, rax
	lea	rdi, [rdi]
	mov	al, 0
	mov	rbp, rbp
	call	error
	lea	rsi, [rsi]
	add	rsp, 0x40
	nop	
	pop	rbp
	lea	rdi, [rdi]
	ret	
	.section	.text
	.align	32
	#Procedure 0x403470

	.globl argmatch_valid
	.type argmatch_valid, @function
argmatch_valid:
	mov	rsp, rsp
	push	rbp
	mov	rbp, rsp
	nop	
	sub	rsp, 0x50
	nop	
	movabs	rax, OFFSET FLAT:.str.2_0
	mov	qword ptr [rbp - 0x18], rdi
	mov	qword ptr [rbp - 0x28], rsi
	nop	
	mov	qword ptr [rbp - 0x20], rdx
	mov	qword ptr [rbp - 0x48], 0
	mov	rsp, rsp
	mov	rdi, rax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stderr]]
	mov	rbp, rbp
	mov	rdi, rax
	lea	rsi, [rsi]
	call	fputs_unlocked
	mov	qword ptr [rbp - 0x30], 0
	mov	dword ptr [rbp - 8], eax
.label_108:
	mov	rax, qword ptr [rbp - 0x30]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	cmp	qword ptr [rcx + rax*8], 0
	lea	rsi, [rsi]
	je	.label_110
	nop	
	cmp	qword ptr [rbp - 0x30], 0
	je	.label_109
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x48]
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	imul	rcx, qword ptr [rbp - 0x30]
	lea	rsi, [rsi]
	add	rax, rcx
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rsi, rax
	lea	rdi, [rdi]
	call	memcmp
	cmp	eax, 0
	lea	rsi, [rsi]
	je	.label_113
.label_109:
	mov	rdi,  qword ptr [word ptr [stderr]]
	mov	rax, qword ptr [rbp - 0x30]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rcx + rax*8]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x38], rdi
	mov	rbp, rbp
	mov	rdi, rax
	lea	rdi, [rdi]
	call	quote
	movabs	rsi, OFFSET FLAT:.str.3_0
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rdx, rax
	mov	al, 0
	call	fprintf
	mov	rcx, qword ptr [rbp - 0x28]
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	imul	rdx, qword ptr [rbp - 0x30]
	add	rcx, rdx
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x48], rcx
	mov	dword ptr [rbp - 0x3c], eax
	jmp	.label_111
.label_113:
	mov	rdi,  qword ptr [word ptr [stderr]]
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x30]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rcx + rax*8]
	mov	qword ptr [rbp - 0x50], rdi
	lea	rsi, [rsi]
	mov	rdi, rax
	call	quote
	movabs	rsi, OFFSET FLAT:.str.4_0
	mov	rdi, qword ptr [rbp - 0x50]
	mov	rdx, rax
	mov	al, 0
	call	fprintf
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0xc], eax
.label_111:
	jmp	.label_112
.label_112:
	mov	rax, qword ptr [rbp - 0x30]
	lea	rsi, [rsi]
	add	rax, 1
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_108
.label_110:
	mov	rbp, rbp
	mov	edi, 0xa
	mov	rsi,  qword ptr [word ptr [stderr]]
	call	putc_unlocked
	mov	dword ptr [rbp - 4], eax
	mov	rsp, rsp
	add	rsp, 0x50
	pop	rbp
	lea	rdi, [rdi]
	ret	
	.section	.text
	.align	32
	#Procedure 0x403620

	.globl __xargmatch_internal
	.type __xargmatch_internal, @function
__xargmatch_internal:
	push	rbp
	mov	rsp, rsp
	mov	rbp, rsp
	sub	rsp, 0x40
	mov	qword ptr [rbp - 0x30], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x40], rdx
	mov	qword ptr [rbp - 0x18], rcx
	mov	qword ptr [rbp - 8], r8
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x38], r9
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x40]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 8]
	mov	rbp, rbp
	call	argmatch
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x28], rax
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x28], 0
	jl	.label_114
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x20], rax
	jmp	.label_115
.label_114:
	mov	rdi, qword ptr [rbp - 0x30]
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x28]
	call	argmatch_invalid
	mov	rdi, qword ptr [rbp - 0x40]
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 8]
	call	argmatch_valid
	mov	rsp, rsp
	call	qword ptr [rbp - 0x38]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x20], -1
.label_115:
	nop	
	mov	rax, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	add	rsp, 0x40
	mov	rbp, rbp
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4036e0
	.globl argmatch_to_argument
	.type argmatch_to_argument, @function
argmatch_to_argument:

	push	rbp
	mov	rbp, rsp
	mov	rsp, rsp
	sub	rsp, 0x30
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x18], rdi
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x20], rsi
	nop	
	mov	qword ptr [rbp - 0x30], rdx
	mov	qword ptr [rbp - 0x28], rcx
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x10], 0
.label_118:
	nop	
	mov	rax, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x20]
	cmp	qword ptr [rcx + rax*8], 0
	mov	rsp, rsp
	je	.label_120
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	imul	rcx, qword ptr [rbp - 0x10]
	nop	
	add	rax, rcx
	mov	rdx, qword ptr [rbp - 0x28]
	mov	rbp, rbp
	mov	rsi, rax
	mov	rsp, rsp
	call	memcmp
	nop	
	cmp	eax, 0
	lea	rsi, [rsi]
	jne	.label_117
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	mov	rax, qword ptr [rcx + rax*8]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_116
.label_117:
	lea	rdi, [rdi]
	jmp	.label_119
.label_119:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	add	rax, 1
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_118
.label_120:
	nop	
	mov	qword ptr [rbp - 8], 0
.label_116:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4037b0
	.globl close_stdout_set_file_name
	.type close_stdout_set_file_name, @function
close_stdout_set_file_name:

	mov	rbp, rbp
	push	rbp
	lea	rsi, [rsi]
	mov	rbp, rsp
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 8], rdi
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	qword ptr [word ptr [file_name]],  rdi
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4037e0
	.globl close_stdout_set_ignore_EPIPE
	.type close_stdout_set_ignore_EPIPE, @function
close_stdout_set_ignore_EPIPE:

	push	rbp
	lea	rdi, [rdi]
	mov	rbp, rsp
	mov	rsp, rsp
	mov	al, dil
	and	al, 1
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 1], al
	nop	
	mov	al, byte ptr [rbp - 1]
	mov	rsp, rsp
	and	al, 1
	lea	rdi, [rdi]
	mov	byte ptr [byte ptr [ignore_EPIPE]],  al
	nop	
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x403810

	.globl close_stdout
	.type close_stdout, @function
close_stdout:
	push	rbp
	lea	rsi, [rsi]
	mov	rbp, rsp
	mov	rsp, rsp
	sub	rsp, 0x10
	lea	rdi, [rdi]
	mov	rdi,  qword ptr [word ptr [stdout]]
	mov	rsp, rsp
	call	close_stream
	cmp	eax, 0
	je	.label_122
	test	byte ptr [byte ptr [ignore_EPIPE]],  1
	je	.label_125
	mov	rbp, rbp
	call	__errno_location
	mov	rsp, rsp
	cmp	dword ptr [rax], 0x20
	je	.label_122
.label_125:
	mov	rsp, rsp
	movabs	rdi, OFFSET FLAT:.str_3
	call	gettext
	mov	qword ptr [rbp - 0x10], rax
	cmp	qword ptr [word ptr [file_name]],  0
	je	.label_124
	nop	
	call	__errno_location
	nop	
	mov	esi, dword ptr [rax]
	mov	rdi,  qword ptr [word ptr [file_name]]
	mov	dword ptr [rbp - 4], esi
	call	quotearg_colon
	nop	
	xor	edi, edi
	lea	rsi, [rsi]
	movabs	rdx, OFFSET FLAT:.str.1_1
	mov	rbp, rbp
	mov	r8, qword ptr [rbp - 0x10]
	mov	esi, dword ptr [rbp - 4]
	lea	rdi, [rdi]
	mov	rcx, rax
	mov	al, 0
	call	error
	jmp	.label_123
.label_124:
	call	__errno_location
	lea	rdi, [rdi]
	xor	edi, edi
	mov	rsp, rsp
	movabs	rdx, OFFSET FLAT:.str_2
	mov	esi, dword ptr [rax]
	nop	
	mov	rcx, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	al, 0
	mov	rsp, rsp
	call	error
.label_123:
	mov	edi,  dword ptr [dword ptr [exit_failure]]
	mov	rsp, rsp
	call	_exit
.label_122:
	mov	rdi,  qword ptr [word ptr [stderr]]
	mov	rbp, rbp
	call	close_stream
	nop	
	cmp	eax, 0
	je	.label_121
	lea	rdi, [rdi]
	mov	edi,  dword ptr [dword ptr [exit_failure]]
	call	_exit
.label_121:
	lea	rdi, [rdi]
	add	rsp, 0x10
	nop	
	pop	rbp
	lea	rsi, [rsi]
	ret	
	.section	.text
	.align	32
	#Procedure 0x403940

	.globl fd_reopen
	.type fd_reopen, @function
fd_reopen:
	push	rbp
	mov	rbp, rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	dword ptr [rbp - 0x18], edi
	mov	qword ptr [rbp - 0x28], rsi
	mov	dword ptr [rbp - 0x2c], edx
	nop	
	mov	dword ptr [rbp - 4], ecx
	nop	
	mov	rdi, qword ptr [rbp - 0x28]
	nop	
	mov	esi, dword ptr [rbp - 0x2c]
	nop	
	mov	edx, dword ptr [rbp - 4]
	mov	al, 0
	call	open
	mov	dword ptr [rbp - 0x14], eax
	mov	eax, dword ptr [rbp - 0x14]
	cmp	eax, dword ptr [rbp - 0x18]
	nop	
	je	.label_128
	cmp	dword ptr [rbp - 0x14], 0
	jge	.label_127
.label_128:
	mov	eax, dword ptr [rbp - 0x14]
	nop	
	mov	dword ptr [rbp - 0x1c], eax
	mov	rbp, rbp
	jmp	.label_126
.label_127:
	mov	rbp, rbp
	mov	edi, dword ptr [rbp - 0x14]
	mov	rbp, rbp
	mov	esi, dword ptr [rbp - 0x18]
	call	dup2
	mov	dword ptr [rbp - 0x10], eax
	call	__errno_location
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 8], esi
	lea	rsi, [rsi]
	mov	edi, dword ptr [rbp - 0x14]
	mov	rsp, rsp
	call	close
	lea	rdi, [rdi]
	mov	esi, dword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0xc], eax
	mov	dword ptr [rbp - 0x20], esi
	call	__errno_location
	mov	rbp, rbp
	mov	esi, dword ptr [rbp - 0x20]
	mov	rsp, rsp
	mov	dword ptr [rax], esi
	mov	esi, dword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x1c], esi
.label_126:
	mov	eax, dword ptr [rbp - 0x1c]
	lea	rdi, [rdi]
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x403a00

	.globl fdutimensat
	.type fdutimensat, @function
fdutimensat:
	nop	
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	rsp, rsp
	xor	eax, eax
	mov	dword ptr [rbp - 4], edi
	mov	dword ptr [rbp - 0x10], esi
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x20], rdx
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x18], rcx
	mov	dword ptr [rbp - 0xc], r8d
	nop	
	mov	dword ptr [rbp - 8], 1
	mov	rsp, rsp
	cmp	eax, dword ptr [rbp - 4]
	lea	rdi, [rdi]
	jg	.label_129
	mov	edi, dword ptr [rbp - 4]
	mov	rsi, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	call	futimens
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 8], eax
.label_129:
	cmp	qword ptr [rbp - 0x20], 0
	mov	rsp, rsp
	je	.label_131
	cmp	dword ptr [rbp - 4], 0
	nop	
	jl	.label_130
	cmp	dword ptr [rbp - 8], -1
	mov	rsp, rsp
	jne	.label_131
	lea	rdi, [rdi]
	call	__errno_location
	mov	rbp, rbp
	cmp	dword ptr [rax], 0x26
	nop	
	jne	.label_131
.label_130:
	mov	rbp, rbp
	mov	edi, dword ptr [rbp - 0x10]
	nop	
	mov	rsi, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	mov	ecx, dword ptr [rbp - 0xc]
	call	utimensat
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 8], eax
.label_131:
	cmp	dword ptr [rbp - 8], 1
	mov	rbp, rbp
	jne	.label_132
	mov	rbp, rbp
	call	__errno_location
	mov	dword ptr [rax], 9
	mov	rsp, rsp
	mov	dword ptr [rbp - 8], 0xffffffff
.label_132:
	mov	eax, dword ptr [rbp - 8]
	add	rsp, 0x20
	lea	rsi, [rsi]
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x403af0

	.globl gettime
	.type gettime, @function
gettime:
	mov	rsp, rsp
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	xor	eax, eax
	mov	qword ptr [rbp - 8], rdi
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 8]
	mov	edi, eax
	mov	rsp, rsp
	call	clock_gettime
	mov	dword ptr [rbp - 0xc], eax
	mov	rbp, rbp
	add	rsp, 0x10
	nop	
	pop	rbp
	lea	rsi, [rsi]
	ret	
	.section	.text
	.align	32
	#Procedure 0x403b30
	.globl current_timespec
	.type current_timespec, @function
current_timespec:

	lea	rsi, [rsi]
	push	rbp
	lea	rsi, [rsi]
	mov	rbp, rsp
	lea	rdi, [rdi]
	sub	rsp, 0x20
	nop	
	lea	rdi, [rbp - 0x10]
	call	gettime
	lea	rdi, [rdi]
	movups	xmm0, xmmword ptr [rbp - 0x10]
	movaps	xmmword ptr [rbp - 0x20], xmm0
	nop	
	mov	rax, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	add	rsp, 0x20
	lea	rsi, [rsi]
	pop	rbp
	mov	rbp, rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x403b80

	.globl yyparse
	.type yyparse, @function
yyparse:
	mov	rbp, rbp
	push	rbp
	lea	rdi, [rdi]
	mov	rbp, rsp
	sub	rsp, 0xdf0
	nop	
	lea	rax, [rbp - 0xb70]
	lea	rcx, [rbp - 0x220]
	mov	rbp, rbp
	movabs	rdx, OFFSET FLAT:yyparse.yyval_default
	mov	rbp, rbp
	mov	esi, 0x38
	lea	rsi, [rsi]
	mov	r8d, esi
	mov	rbp, rbp
	lea	r9, [rbp - 0x38]
	mov	qword ptr [rbp - 0x5c0], rdi
	mov	rdi, r9
	lea	rdi, [rdi]
	mov	rsi, rdx
	nop	
	mov	rdx, r8
	mov	qword ptr [rbp - 0x648], rcx
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0xc70], rax
	mov	rsp, rsp
	call	memcpy
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x1b4], 0
	mov	dword ptr [rbp - 0x22c], 0
	mov	rax, qword ptr [rbp - 0x648]
	mov	qword ptr [rbp - 0x5b0], rax
	mov	qword ptr [rbp - 0x418], rax
	mov	rcx, qword ptr [rbp - 0xc70]
	mov	qword ptr [rbp - 0xc48], rcx
	nop	
	mov	qword ptr [rbp - 0x258], rcx
	mov	qword ptr [rbp - 0x5e8], 0x14
	mov	dword ptr [rbp - 0x4d4], 0
	nop	
	mov	dword ptr [rbp - 0x68c], 0
	mov	dword ptr [rbp - 0xc50], 0
	mov	dword ptr [rbp - 0xcac], 0xfffffffe
	jmp	.label_924
.label_286:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x418]
	add	rax, 2
	mov	qword ptr [rbp - 0x418], rax
.label_924:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x4d4]
	nop	
	mov	cx, ax
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x418]
	mov	word ptr [rdx], cx
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x5b0]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x5e8]
	nop	
	shl	rsi, 1
	mov	rbp, rbp
	add	rdx, rsi
	add	rdx, -2
	cmp	rdx, qword ptr [rbp - 0x418]
	ja	.label_962
	lea	rdi, [rdi]
	mov	eax, 0x14
	mov	ecx, eax
	nop	
	mov	rdx, qword ptr [rbp - 0x418]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x5b0]
	mov	rbp, rbp
	sub	rdx, rsi
	sar	rdx, 1
	mov	rsp, rsp
	add	rdx, 1
	mov	rbp, rbp
	mov	qword ptr [rbp - 0xc60], rdx
	lea	rsi, [rsi]
	cmp	rcx, qword ptr [rbp - 0x5e8]
	mov	rsp, rsp
	ja	.label_986
	nop	
	jmp	.label_1000
.label_986:
	mov	eax, 0x14
	mov	ecx, eax
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x5e8]
	nop	
	shl	rdx, 1
	mov	qword ptr [rbp - 0x5e8], rdx
	cmp	rcx, qword ptr [rbp - 0x5e8]
	jae	.label_1002
	mov	qword ptr [rbp - 0x5e8], 0x14
.label_1002:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x5b0]
	mov	qword ptr [rbp - 0x650], rax
	lea	rdi, [rdi]
	imul	rax, qword ptr [rbp - 0x5e8], 0x3a
	add	rax, 0x37
	mov	rdi, rax
	call	malloc
	mov	qword ptr [rbp - 0xc68], rax
	cmp	qword ptr [rbp - 0xc68], 0
	jne	.label_1012
	jmp	.label_1000
.label_1012:
	jmp	.label_1018
.label_1018:
	mov	eax, 0x38
	mov	ecx, eax
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0xc68]
	nop	
	mov	rsi, qword ptr [rbp - 0x5b0]
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0xc60]
	nop	
	shl	rdi, 1
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0xc38], rdi
	nop	
	mov	rdi, rdx
	mov	rdx, qword ptr [rbp - 0xc38]
	mov	qword ptr [rbp - 0x408], rcx
	mov	rbp, rbp
	call	memcpy
	mov	rcx, qword ptr [rbp - 0xc68]
	mov	qword ptr [rbp - 0x5b0], rcx
	mov	rcx, qword ptr [rbp - 0x5e8]
	shl	rcx, 1
	mov	rsp, rsp
	add	rcx, 0x37
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x3c0], rcx
	mov	rax, qword ptr [rbp - 0x3c0]
	lea	rdi, [rdi]
	xor	r8d, r8d
	mov	rbp, rbp
	mov	edx, r8d
	mov	rcx, qword ptr [rbp - 0x408]
	mov	rbp, rbp
	div	rcx
	lea	rsi, [rsi]
	imul	rax, rax, 0x38
	mov	rbp, rbp
	add	rax, qword ptr [rbp - 0xc68]
	mov	qword ptr [rbp - 0xc68], rax
	mov	rsp, rsp
	jmp	.label_1030
.label_1030:
	mov	eax, 0x38
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0xc68]
	mov	rsi, qword ptr [rbp - 0xc48]
	lea	rsi, [rsi]
	imul	rdi, qword ptr [rbp - 0xc60], 0x38
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x5d0], rdi
	mov	rsp, rsp
	mov	rdi, rdx
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x5d0]
	mov	qword ptr [rbp - 0x5a8], rcx
	mov	rsp, rsp
	call	memcpy
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0xc68]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0xc48], rcx
	imul	rcx, qword ptr [rbp - 0x5e8], 0x38
	add	rcx, 0x37
	mov	qword ptr [rbp - 0x538], rcx
	mov	rax, qword ptr [rbp - 0x538]
	xor	r8d, r8d
	mov	edx, r8d
	mov	rcx, qword ptr [rbp - 0x5a8]
	nop	
	div	rcx
	imul	rax, rax, 0x38
	add	rax, qword ptr [rbp - 0xc68]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0xc68], rax
	lea	rax, [rbp - 0x220]
	mov	rcx, qword ptr [rbp - 0x650]
	cmp	rcx, rax
	mov	rsp, rsp
	je	.label_1074
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x650]
	mov	rbp, rbp
	mov	rdi, rax
	call	free
.label_1074:
	mov	rax, qword ptr [rbp - 0x5b0]
	mov	rcx, qword ptr [rbp - 0xc60]
	mov	rbp, rbp
	shl	rcx, 1
	nop	
	add	rax, rcx
	add	rax, -2
	mov	qword ptr [rbp - 0x418], rax
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0xc48]
	lea	rdi, [rdi]
	imul	rcx, qword ptr [rbp - 0xc60], 0x38
	lea	rdi, [rdi]
	add	rax, rcx
	lea	rsi, [rsi]
	add	rax, -0x38
	mov	qword ptr [rbp - 0x258], rax
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x5b0]
	mov	rcx, qword ptr [rbp - 0x5e8]
	shl	rcx, 1
	mov	rsp, rsp
	add	rax, rcx
	mov	rbp, rbp
	add	rax, -2
	mov	rbp, rbp
	cmp	rax, qword ptr [rbp - 0x418]
	mov	rsp, rsp
	ja	.label_1106
	lea	rdi, [rdi]
	jmp	.label_146
.label_1106:
	lea	rdi, [rdi]
	jmp	.label_962
.label_962:
	cmp	dword ptr [rbp - 0x4d4], 0xc
	mov	rbp, rbp
	jne	.label_1135
	lea	rdi, [rdi]
	jmp	.label_1137
.label_1135:
	jmp	.label_1070
.label_1070:
	movsxd	rax, dword ptr [rbp - 0x4d4]
	movsx	ecx,  byte ptr [byte ptr [+ (rax * 1) + yypact]]
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x410], ecx
	cmp	dword ptr [rbp - 0x410], -0x5d
	jne	.label_1140
	mov	rsp, rsp
	jmp	.label_244
.label_1140:
	mov	rbp, rbp
	cmp	dword ptr [rbp - 0xcac], -2
	mov	rbp, rbp
	jne	.label_1136
	lea	rdi, [rbp - 0x38]
	mov	rsi, qword ptr [rbp - 0x5c0]
	call	yylex
	nop	
	mov	dword ptr [rbp - 0xcac], eax
.label_1136:
	cmp	dword ptr [rbp - 0xcac], 0
	jg	.label_145
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x1b4], 0
	nop	
	mov	dword ptr [rbp - 0xcac], 0
	lea	rsi, [rsi]
	jmp	.label_155
.label_145:
	nop	
	cmp	dword ptr [rbp - 0xcac], 0x115
	ja	.label_174
	movsxd	rax, dword ptr [rbp - 0xcac]
	movzx	ecx,  byte ptr [byte ptr [+ (rax * 1) + yytranslate]]
	nop	
	mov	dword ptr [rbp - 0xc3c], ecx
	jmp	.label_184
.label_174:
	mov	eax, 2
	mov	dword ptr [rbp - 0xc3c], eax
	mov	rsp, rsp
	jmp	.label_184
.label_184:
	nop	
	mov	eax, dword ptr [rbp - 0xc3c]
	mov	dword ptr [rbp - 0x1b4], eax
.label_155:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x1b4]
	add	eax, dword ptr [rbp - 0x410]
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x410], eax
	cmp	dword ptr [rbp - 0x410], 0
	lea	rsi, [rsi]
	jl	.label_208
	mov	eax, 0x70
	mov	rsp, rsp
	cmp	eax, dword ptr [rbp - 0x410]
	jl	.label_208
	movsxd	rax, dword ptr [rbp - 0x410]
	movsx	ecx,  byte ptr [byte ptr [+ (rax * 1) + yycheck]]
	nop	
	cmp	ecx, dword ptr [rbp - 0x1b4]
	lea	rsi, [rsi]
	je	.label_545
.label_208:
	jmp	.label_244
.label_545:
	movsxd	rax, dword ptr [rbp - 0x410]
	movzx	ecx,  byte ptr [byte ptr [+ (rax * 1) + yytable]]
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x410], ecx
	cmp	dword ptr [rbp - 0x410], 0
	jg	.label_248
	xor	eax, eax
	sub	eax, dword ptr [rbp - 0x410]
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x410], eax
	lea	rsi, [rsi]
	jmp	.label_257
.label_248:
	cmp	dword ptr [rbp - 0x68c], 0
	lea	rsi, [rsi]
	je	.label_262
	mov	eax, dword ptr [rbp - 0x68c]
	add	eax, -1
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x68c], eax
.label_262:
	mov	rsp, rsp
	mov	eax, 0x38
	mov	rsp, rsp
	mov	edx, eax
	mov	rsp, rsp
	lea	rcx, [rbp - 0x38]
	mov	dword ptr [rbp - 0xcac], 0xfffffffe
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x410]
	mov	dword ptr [rbp - 0x4d4], eax
	nop	
	mov	rsi, qword ptr [rbp - 0x258]
	add	rsi, 0x38
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x258], rsi
	mov	rdi, rsi
	mov	rbp, rbp
	mov	rsi, rcx
	mov	rsp, rsp
	call	memcpy
	mov	rbp, rbp
	jmp	.label_286
.label_244:
	lea	rdi, [rdi]
	movsxd	rax, dword ptr [rbp - 0x4d4]
	lea	rsi, [rsi]
	movzx	ecx,  byte ptr [byte ptr [+ (rax * 1) + yydefact]]
	mov	dword ptr [rbp - 0x410], ecx
	mov	rsp, rsp
	cmp	dword ptr [rbp - 0x410], 0
	lea	rsi, [rsi]
	jne	.label_288
	mov	rbp, rbp
	jmp	.label_301
.label_288:
	jmp	.label_257
.label_257:
	movsxd	rax, dword ptr [rbp - 0x410]
	lea	rsi, [rsi]
	movzx	ecx,  byte ptr [byte ptr [rax + yyr2]]
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x22c], ecx
	mov	rbp, rbp
	mov	edx, 1
	sub	edx, ecx
	nop	
	movsxd	rax, edx
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x258]
	nop	
	imul	rax, rax, 0x38
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rsi + rax + 0x30]
	mov	qword ptr [rbp - 0x270], rdi
	movups	xmm0, xmmword ptr [rsi + rax]
	lea	rdi, [rdi]
	movups	xmm1, xmmword ptr [rsi + rax + 0x10]
	lea	rsi, [rsi]
	movups	xmm2, xmmword ptr [rsi + rax + 0x20]
	nop	
	movaps	xmmword ptr [rbp - 0x280], xmm2
	mov	rsp, rsp
	movaps	xmmword ptr [rbp - 0x290], xmm1
	mov	rbp, rbp
	movaps	xmmword ptr [rbp - 0x2a0], xmm0
	lea	rdi, [rdi]
	mov	ecx, dword ptr [rbp - 0x410]
	add	ecx, -4
	lea	rsi, [rsi]
	mov	eax, ecx
	sub	ecx, 0x57
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x240], rax
	mov	dword ptr [rbp - 0xc4c], ecx
	mov	rbp, rbp
	ja	.label_307
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x240]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_353]]
	lea	rdi, [rdi]
	jmp	rcx
.label_5106:
	lea	rdi, [rdi]
	movabs	rdi, OFFSET FLAT:.str_4
	mov	rax, qword ptr [rbp - 0x5c0]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x258]
	mov	rdx, qword ptr [rcx]
	lea	rdi, [rdi]
	mov	qword ptr [rax + 0x58], rdx
	mov	rcx, qword ptr [rcx + 8]
	mov	rbp, rbp
	mov	qword ptr [rax + 0x60], rcx
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x5c0]
	mov	byte ptr [rax + 0xa0], 1
	call	gettext
	mov	rsi, qword ptr [rbp - 0x5c0]
	mov	rbp, rbp
	mov	rdi, rax
	call	debug_print_current_time
	jmp	.label_148
.label_5107:
	lea	rdi, [rdi]
	movabs	rdi, OFFSET FLAT:.str.1_2
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x5c0]
	mov	rcx, qword ptr [rax + 0xc8]
	add	rcx, 1
	lea	rsi, [rsi]
	mov	qword ptr [rax + 0xc8], rcx
	nop	
	mov	rax, qword ptr [rbp - 0x5c0]
	mov	rcx, qword ptr [rax + 0xa8]
	mov	rbp, rbp
	add	rcx, 1
	mov	qword ptr [rax + 0xa8], rcx
	call	gettext
	mov	rsi, qword ptr [rbp - 0x5c0]
	mov	rdi, rax
	call	debug_print_current_time
	jmp	.label_148
.label_5108:
	movabs	rdi, OFFSET FLAT:.str.2_1
	mov	rax, qword ptr [rbp - 0x5c0]
	nop	
	mov	rcx, qword ptr [rax + 0xc8]
	add	rcx, 1
	mov	rbp, rbp
	mov	qword ptr [rax + 0xc8], rcx
	nop	
	call	gettext
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x5c0]
	lea	rsi, [rsi]
	mov	rdi, rax
	call	debug_print_current_time
	lea	rsi, [rsi]
	jmp	.label_148
.label_5109:
	movabs	rdi, OFFSET FLAT:.str.3_1
	nop	
	mov	rax, qword ptr [rbp - 0x5c0]
	mov	rcx, qword ptr [rax + 0xb8]
	lea	rsi, [rsi]
	add	rcx, 1
	mov	rbp, rbp
	mov	qword ptr [rax + 0xb8], rcx
	nop	
	call	gettext
	nop	
	mov	rsi, qword ptr [rbp - 0x5c0]
	lea	rsi, [rsi]
	mov	rdi, rax
	call	debug_print_current_time
	jmp	.label_148
.label_5110:
	movabs	rdi, OFFSET FLAT:.str.4_1
	mov	rax, qword ptr [rbp - 0x5c0]
	mov	rcx, qword ptr [rax + 0xd0]
	add	rcx, 1
	mov	qword ptr [rax + 0xd0], rcx
	nop	
	call	gettext
	mov	rsi, qword ptr [rbp - 0x5c0]
	lea	rdi, [rdi]
	mov	rdi, rax
	call	debug_print_current_time
	nop	
	jmp	.label_148
.label_5111:
	movabs	rdi, OFFSET FLAT:.str.5_0
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x5c0]
	mov	rcx, qword ptr [rax + 0xa8]
	add	rcx, 1
	mov	qword ptr [rax + 0xa8], rcx
	call	gettext
	mov	rsi, qword ptr [rbp - 0x5c0]
	mov	rdi, rax
	call	debug_print_current_time
	jmp	.label_148
.label_5112:
	nop	
	movabs	rdi, OFFSET FLAT:.str.6_0
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x5c0]
	mov	rcx, qword ptr [rax + 0xb0]
	mov	rsp, rsp
	add	rcx, 1
	mov	rbp, rbp
	mov	qword ptr [rax + 0xb0], rcx
	call	gettext
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x5c0]
	mov	rdi, rax
	mov	rsp, rsp
	call	debug_print_current_time
	jmp	.label_148
.label_5113:
	nop	
	movabs	rdi, OFFSET FLAT:.str.7_0
	nop	
	call	gettext
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x5c0]
	mov	rdi, rax
	nop	
	call	debug_print_relative_time
	jmp	.label_148
.label_5114:
	lea	rdi, [rdi]
	movabs	rdi, OFFSET FLAT:.str.8_0
	lea	rdi, [rdi]
	call	gettext
	mov	rsi, qword ptr [rbp - 0x5c0]
	mov	rdi, rax
	lea	rdi, [rdi]
	call	debug_print_current_time
	nop	
	jmp	.label_148
.label_5115:
	mov	rbp, rbp
	movabs	rdi, OFFSET FLAT:.str.9_0
	call	gettext
	mov	rsi, qword ptr [rbp - 0x5c0]
	mov	rbp, rbp
	mov	rdi, rax
	lea	rdi, [rdi]
	call	debug_print_relative_time
	jmp	.label_148
.label_5116:
	lea	rsi, [rsi]
	xor	eax, eax
	nop	
	mov	ecx, eax
	mov	rsp, rsp
	xor	r8d, r8d
	mov	rdi, qword ptr [rbp - 0x5c0]
	nop	
	mov	rdx, qword ptr [rbp - 0x258]
	mov	rsi, qword ptr [rdx - 0x30]
	mov	rbp, rbp
	mov	rdx, rcx
	call	set_hhmmss
	mov	rcx, qword ptr [rbp - 0x258]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rcx]
	mov	rbp, rbp
	mov	eax, ecx
	mov	rcx, qword ptr [rbp - 0x5c0]
	mov	dword ptr [rcx + 0x1c], eax
	nop	
	jmp	.label_148
.label_5117:
	lea	rdi, [rdi]
	xor	eax, eax
	mov	ecx, eax
	xor	r8d, r8d
	mov	rdi, qword ptr [rbp - 0x5c0]
	mov	rdx, qword ptr [rbp - 0x258]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rdx - 0xa0]
	nop	
	mov	rdx, qword ptr [rbp - 0x258]
	mov	rdx, qword ptr [rdx - 0x30]
	call	set_hhmmss
	mov	rcx, qword ptr [rbp - 0x258]
	mov	rcx, qword ptr [rcx]
	nop	
	mov	eax, ecx
	mov	rcx, qword ptr [rbp - 0x5c0]
	mov	dword ptr [rcx + 0x1c], eax
	mov	rbp, rbp
	jmp	.label_148
.label_5118:
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x5c0]
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x258]
	mov	rsi, qword ptr [rax - 0x110]
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x258]
	mov	rdx, qword ptr [rax - 0xa0]
	mov	rax, qword ptr [rbp - 0x258]
	mov	rcx, qword ptr [rax - 0x38]
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x258]
	mov	rax, qword ptr [rax - 0x30]
	lea	rsi, [rsi]
	mov	r8d, eax
	call	set_hhmmss
	mov	rax, qword ptr [rbp - 0x258]
	mov	rax, qword ptr [rax]
	lea	rdi, [rdi]
	mov	r8d, eax
	nop	
	mov	rax, qword ptr [rbp - 0x5c0]
	mov	rbp, rbp
	mov	dword ptr [rax + 0x1c], r8d
	mov	rbp, rbp
	jmp	.label_148
.label_5119:
	xor	eax, eax
	lea	rsi, [rsi]
	mov	ecx, eax
	xor	r8d, r8d
	mov	rdi, qword ptr [rbp - 0x5c0]
	nop	
	mov	rdx, qword ptr [rbp - 0x258]
	mov	rsi, qword ptr [rdx - 0x30]
	nop	
	mov	rdx, rcx
	call	set_hhmmss
	mov	rcx, qword ptr [rbp - 0x5c0]
	mov	rbp, rbp
	mov	dword ptr [rcx + 0x1c], 2
	lea	rsi, [rsi]
	jmp	.label_148
.label_5120:
	mov	rsp, rsp
	xor	eax, eax
	mov	rbp, rbp
	mov	ecx, eax
	lea	rsi, [rsi]
	xor	r8d, r8d
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x5c0]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x258]
	mov	rsi, qword ptr [rdx - 0xa0]
	mov	rdx, qword ptr [rbp - 0x258]
	mov	rdx, qword ptr [rdx - 0x30]
	nop	
	call	set_hhmmss
	mov	rcx, qword ptr [rbp - 0x5c0]
	mov	dword ptr [rcx + 0x1c], 2
	jmp	.label_148
.label_5121:
	mov	rdi, qword ptr [rbp - 0x5c0]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x258]
	mov	rsi, qword ptr [rax - 0x110]
	mov	rax, qword ptr [rbp - 0x258]
	mov	rdx, qword ptr [rax - 0xa0]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x258]
	mov	rsp, rsp
	mov	rcx, qword ptr [rax - 0x38]
	mov	rax, qword ptr [rbp - 0x258]
	mov	rax, qword ptr [rax - 0x30]
	mov	r8d, eax
	call	set_hhmmss
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x5c0]
	mov	dword ptr [rax + 0x1c], 2
	jmp	.label_148
.label_5122:
	nop	
	mov	rax, qword ptr [rbp - 0x5c0]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rax + 0xd0]
	lea	rsi, [rsi]
	add	rcx, 1
	mov	qword ptr [rax + 0xd0], rcx
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x5c0]
	mov	rax, qword ptr [rbp - 0x258]
	add	rax, -0x38
	mov	rcx, qword ptr [rbp - 0x258]
	mov	rsi, qword ptr [rcx]
	mov	rsp, rsp
	mov	rcx, qword ptr [rax]
	lea	rsi, [rsi]
	mov	qword ptr [rsp], rcx
	mov	rcx, qword ptr [rax + 8]
	mov	qword ptr [rsp + 8], rcx
	mov	rax, qword ptr [rax + 0x10]
	mov	qword ptr [rsp + 0x10], rax
	call	time_zone_hhmm
	test	al, 1
	nop	
	jne	.label_674
	jmp	.label_146
.label_674:
	jmp	.label_148
.label_5123:
	mov	rax, qword ptr [rbp - 0x258]
	mov	rax, qword ptr [rax]
	mov	rbp, rbp
	mov	ecx, eax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x5c0]
	lea	rsi, [rsi]
	mov	dword ptr [rax + 0x14], ecx
	jmp	.label_148
.label_5124:
	mov	rax, qword ptr [rbp - 0x5c0]
	lea	rdi, [rdi]
	mov	dword ptr [rax + 0x14], 1
	mov	rax, qword ptr [rbp - 0x5c0]
	mov	rsp, rsp
	mov	rcx, qword ptr [rax + 0xc0]
	add	rcx, 1
	mov	qword ptr [rax + 0xc0], rcx
	jmp	.label_148
.label_5125:
	mov	rax, qword ptr [rbp - 0x258]
	mov	rbp, rbp
	mov	rax, qword ptr [rax]
	mov	ecx, eax
	mov	rax, qword ptr [rbp - 0x5c0]
	mov	dword ptr [rax + 0x18], ecx
	lea	rsi, [rsi]
	jmp	.label_148
.label_5126:
	mov	rax, qword ptr [rbp - 0x5c0]
	lea	rsi, [rsi]
	mov	dword ptr [rax + 0x18], 0x6270
	jmp	.label_148
.label_5127:
	nop	
	mov	eax, 1
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x258]
	mov	rcx, qword ptr [rcx - 0x38]
	mov	rbp, rbp
	mov	edx, ecx
	mov	rcx, qword ptr [rbp - 0x5c0]
	mov	dword ptr [rcx + 0x18], edx
	mov	rdi, qword ptr [rbp - 0x5c0]
	mov	rcx, qword ptr [rbp - 0x258]
	mov	rsi, qword ptr [rcx + 0x30]
	mov	rbp, rbp
	mov	r8, rsp
	mov	qword ptr [r8 + 0x30], rsi
	movups	xmm0, xmmword ptr [rcx]
	mov	rbp, rbp
	movups	xmm1, xmmword ptr [rcx + 0x10]
	nop	
	movups	xmm2, xmmword ptr [rcx + 0x20]
	movups	xmmword ptr [r8 + 0x20], xmm2
	movups	xmmword ptr [r8 + 0x10], xmm1
	mov	rbp, rbp
	movups	xmmword ptr [r8], xmm0
	mov	rbp, rbp
	mov	esi, 1
	mov	dword ptr [rbp - 0x59c], eax
	lea	rsi, [rsi]
	call	apply_relative_time
	test	al, 1
	jne	.label_745
	jmp	.label_146
.label_745:
	nop	
	movabs	rdi, OFFSET FLAT:.str.7_0
	mov	rsp, rsp
	call	gettext
	mov	rsi, qword ptr [rbp - 0x5c0]
	mov	rdi, rax
	call	debug_print_relative_time
	mov	rbp, rbp
	jmp	.label_148
.label_5128:
	mov	rbp, rbp
	mov	eax, 1
	mov	rcx, qword ptr [rbp - 0x5c0]
	mov	rsp, rsp
	mov	dword ptr [rcx + 0x18], 0x6270
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x5c0]
	mov	rcx, qword ptr [rbp - 0x258]
	mov	rdx, qword ptr [rcx + 0x30]
	mov	rsi, rsp
	lea	rsi, [rsi]
	mov	qword ptr [rsi + 0x30], rdx
	mov	rbp, rbp
	movups	xmm0, xmmword ptr [rcx]
	movups	xmm1, xmmword ptr [rcx + 0x10]
	mov	rbp, rbp
	movups	xmm2, xmmword ptr [rcx + 0x20]
	movups	xmmword ptr [rsi + 0x20], xmm2
	mov	rbp, rbp
	movups	xmmword ptr [rsi + 0x10], xmm1
	movups	xmmword ptr [rsi], xmm0
	mov	esi, 1
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x328], eax
	call	apply_relative_time
	test	al, 1
	lea	rdi, [rdi]
	jne	.label_786
	mov	rbp, rbp
	jmp	.label_146
.label_786:
	movabs	rdi, OFFSET FLAT:.str.7_0
	mov	rsp, rsp
	call	gettext
	nop	
	mov	rsi, qword ptr [rbp - 0x5c0]
	mov	rsp, rsp
	mov	rdi, rax
	call	debug_print_relative_time
	mov	rsp, rsp
	jmp	.label_148
.label_5129:
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x5c0]
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x258]
	mov	rsp, rsp
	add	rax, -0x38
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x258]
	mov	rsp, rsp
	mov	rsi, qword ptr [rcx]
	mov	rsp, rsp
	mov	rcx, qword ptr [rax]
	lea	rsi, [rsi]
	mov	qword ptr [rsp], rcx
	mov	rcx, qword ptr [rax + 8]
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 8], rcx
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax + 0x10]
	mov	qword ptr [rsp + 0x10], rax
	mov	rsp, rsp
	call	time_zone_hhmm
	test	al, 1
	lea	rsi, [rsi]
	jne	.label_816
	lea	rsi, [rsi]
	jmp	.label_146
.label_816:
	xor	eax, eax
	mov	cl, al
	nop	
	test	cl, 1
	jne	.label_956
	jmp	.label_984
.label_956:
	lea	rdi, [rdi]
	xor	eax, eax
	lea	rdi, [rdi]
	mov	cl, al
	mov	rbp, rbp
	test	cl, 1
	jne	.label_360
	jmp	.label_827
.label_360:
	mov	al, 1
	test	al, 1
	jne	.label_829
	nop	
	jmp	.label_832
.label_829:
	mov	rax, qword ptr [rbp - 0x258]
	mov	rax, qword ptr [rax - 0x70]
	mov	cl, al
	movsx	edx, cl
	cmp	edx, 0
	lea	rdi, [rdi]
	jge	.label_834
	mov	rsp, rsp
	mov	eax, 0x80000000
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x5c0]
	lea	rsi, [rsi]
	mov	edx, dword ptr [rcx + 0x18]
	mov	sil, dl
	movsx	edx, sil
	mov	rcx, qword ptr [rbp - 0x258]
	mov	rsp, rsp
	mov	rcx, qword ptr [rcx - 0x70]
	mov	sil, cl
	movsx	edi, sil
	lea	rsi, [rsi]
	sub	eax, edi
	lea	rdi, [rdi]
	cmp	edx, eax
	jl	.label_843
	mov	rbp, rbp
	jmp	.label_865
.label_834:
	mov	rbp, rbp
	mov	eax, 0x7fffffff
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x258]
	mov	rsp, rsp
	mov	rcx, qword ptr [rcx - 0x70]
	mov	dl, cl
	lea	rsi, [rsi]
	movsx	esi, dl
	sub	eax, esi
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x5c0]
	lea	rsi, [rsi]
	mov	esi, dword ptr [rcx + 0x18]
	mov	rbp, rbp
	mov	dl, sil
	lea	rsi, [rsi]
	movsx	esi, dl
	mov	rsp, rsp
	cmp	eax, esi
	jl	.label_843
	jmp	.label_865
.label_832:
	mov	rax, qword ptr [rbp - 0x5c0]
	mov	ecx, dword ptr [rax + 0x18]
	lea	rsi, [rsi]
	mov	dl, cl
	lea	rdi, [rdi]
	movsx	ecx, dl
	cmp	ecx, 0
	jge	.label_885
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x258]
	mov	rax, qword ptr [rax - 0x70]
	lea	rsi, [rsi]
	mov	cl, al
	movsx	edx, cl
	mov	rax, qword ptr [rbp - 0x5c0]
	lea	rsi, [rsi]
	mov	esi, dword ptr [rax + 0x18]
	mov	cl, sil
	movsx	esi, cl
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x258]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax - 0x70]
	mov	cl, al
	mov	rbp, rbp
	movsx	edi, cl
	add	esi, edi
	lea	rsi, [rsi]
	cmp	edx, esi
	jle	.label_843
	nop	
	jmp	.label_865
.label_885:
	mov	rax, qword ptr [rbp - 0x258]
	nop	
	mov	rax, qword ptr [rax - 0x70]
	mov	cl, al
	mov	rsp, rsp
	movsx	edx, cl
	mov	rbp, rbp
	cmp	edx, 0
	lea	rdi, [rdi]
	jge	.label_902
	mov	rax, qword ptr [rbp - 0x5c0]
	lea	rsi, [rsi]
	mov	ecx, dword ptr [rax + 0x18]
	mov	rsp, rsp
	mov	dl, cl
	lea	rdi, [rdi]
	movsx	ecx, dl
	mov	rax, qword ptr [rbp - 0x5c0]
	mov	rbp, rbp
	mov	esi, dword ptr [rax + 0x18]
	mov	dl, sil
	mov	rbp, rbp
	movsx	esi, dl
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x258]
	nop	
	mov	rax, qword ptr [rax - 0x70]
	mov	rsp, rsp
	mov	dl, al
	lea	rsi, [rsi]
	movsx	edi, dl
	mov	rsp, rsp
	add	esi, edi
	lea	rsi, [rsi]
	cmp	ecx, esi
	mov	rbp, rbp
	jle	.label_843
	jmp	.label_865
.label_902:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x5c0]
	nop	
	mov	ecx, dword ptr [rax + 0x18]
	mov	dl, cl
	mov	rsp, rsp
	movsx	ecx, dl
	mov	rax, qword ptr [rbp - 0x258]
	mov	rax, qword ptr [rax - 0x70]
	nop	
	mov	dl, al
	nop	
	movsx	esi, dl
	lea	rsi, [rsi]
	add	ecx, esi
	mov	rax, qword ptr [rbp - 0x258]
	mov	rax, qword ptr [rax - 0x70]
	lea	rsi, [rsi]
	mov	dl, al
	movsx	esi, dl
	nop	
	cmp	ecx, esi
	lea	rsi, [rsi]
	jl	.label_843
.label_865:
	mov	rax, qword ptr [rbp - 0x5c0]
	mov	rbp, rbp
	mov	ecx, dword ptr [rax + 0x18]
	lea	rdi, [rdi]
	mov	dl, cl
	movsx	ecx, dl
	mov	rax, qword ptr [rbp - 0x258]
	mov	rax, qword ptr [rax - 0x70]
	mov	dl, al
	mov	rbp, rbp
	movsx	esi, dl
	mov	rsp, rsp
	add	ecx, esi
	lea	rdi, [rdi]
	cmp	ecx, -0x80
	jl	.label_843
	lea	rdi, [rdi]
	mov	eax, 0x7f
	mov	rcx, qword ptr [rbp - 0x5c0]
	mov	edx, dword ptr [rcx + 0x18]
	lea	rdi, [rdi]
	mov	sil, dl
	mov	rsp, rsp
	movsx	edx, sil
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x258]
	mov	rcx, qword ptr [rcx - 0x70]
	lea	rsi, [rsi]
	mov	sil, cl
	mov	rbp, rbp
	movsx	edi, sil
	add	edx, edi
	nop	
	cmp	eax, edx
	jge	.label_963
.label_843:
	mov	rsp, rsp
	mov	al, 1
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x5c0]
	lea	rdi, [rdi]
	mov	edx, dword ptr [rcx + 0x18]
	mov	sil, dl
	movsx	edx, sil
	mov	rcx, qword ptr [rbp - 0x258]
	mov	rbp, rbp
	mov	rcx, qword ptr [rcx - 0x70]
	nop	
	mov	sil, cl
	lea	rsi, [rsi]
	movsx	edi, sil
	mov	rbp, rbp
	add	edx, edi
	mov	sil, dl
	mov	rbp, rbp
	movsx	edx, sil
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x5c0]
	mov	dword ptr [rcx + 0x18], edx
	test	al, 1
	jne	.label_215
	nop	
	jmp	.label_363
.label_963:
	xor	eax, eax
	nop	
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x5c0]
	mov	eax, dword ptr [rdx + 0x18]
	mov	sil, al
	movsx	eax, sil
	nop	
	mov	rdx, qword ptr [rbp - 0x258]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rdx - 0x70]
	mov	sil, dl
	mov	rbp, rbp
	movsx	edi, sil
	add	eax, edi
	mov	rsp, rsp
	mov	sil, al
	movsx	eax, sil
	mov	rdx, qword ptr [rbp - 0x5c0]
	mov	dword ptr [rdx + 0x18], eax
	test	cl, 1
	jne	.label_215
	jmp	.label_363
.label_827:
	mov	al, 1
	test	al, 1
	mov	rsp, rsp
	jne	.label_1013
	nop	
	jmp	.label_1016
.label_1013:
	mov	rax, qword ptr [rbp - 0x258]
	cmp	qword ptr [rax - 0x70], 0
	lea	rdi, [rdi]
	jge	.label_1017
	movabs	rax, 0x8000000000000000
	nop	
	mov	rcx, qword ptr [rbp - 0x5c0]
	movsxd	rcx, dword ptr [rcx + 0x18]
	mov	rdx, qword ptr [rbp - 0x258]
	sub	rax, qword ptr [rdx - 0x70]
	cmp	rcx, rax
	jl	.label_1022
	jmp	.label_1025
.label_1017:
	movabs	rax, 0x7fffffffffffffff
	mov	rcx, qword ptr [rbp - 0x258]
	mov	rbp, rbp
	sub	rax, qword ptr [rcx - 0x70]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x5c0]
	movsxd	rcx, dword ptr [rcx + 0x18]
	cmp	rax, rcx
	mov	rbp, rbp
	jl	.label_1022
	nop	
	jmp	.label_1025
.label_1016:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x5c0]
	mov	rbp, rbp
	cmp	dword ptr [rax + 0x18], 0
	jge	.label_664
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x258]
	mov	rax, qword ptr [rax - 0x70]
	mov	rcx, qword ptr [rbp - 0x5c0]
	lea	rdi, [rdi]
	movsxd	rcx, dword ptr [rcx + 0x18]
	mov	rdx, qword ptr [rbp - 0x258]
	mov	rbp, rbp
	add	rcx, qword ptr [rdx - 0x70]
	cmp	rax, rcx
	jle	.label_1022
	lea	rsi, [rsi]
	jmp	.label_1025
.label_664:
	mov	rax, qword ptr [rbp - 0x258]
	cmp	qword ptr [rax - 0x70], 0
	jge	.label_1057
	mov	rax, qword ptr [rbp - 0x5c0]
	lea	rsi, [rsi]
	movsxd	rax, dword ptr [rax + 0x18]
	mov	rcx, qword ptr [rbp - 0x5c0]
	movsxd	rcx, dword ptr [rcx + 0x18]
	mov	rdx, qword ptr [rbp - 0x258]
	add	rcx, qword ptr [rdx - 0x70]
	cmp	rax, rcx
	jle	.label_1022
	jmp	.label_1025
.label_1057:
	mov	rax, qword ptr [rbp - 0x5c0]
	lea	rdi, [rdi]
	movsxd	rax, dword ptr [rax + 0x18]
	nop	
	mov	rcx, qword ptr [rbp - 0x258]
	add	rax, qword ptr [rcx - 0x70]
	mov	rcx, qword ptr [rbp - 0x258]
	nop	
	cmp	rax, qword ptr [rcx - 0x70]
	jl	.label_1022
.label_1025:
	nop	
	mov	rax, qword ptr [rbp - 0x5c0]
	movsxd	rax, dword ptr [rax + 0x18]
	mov	rcx, qword ptr [rbp - 0x258]
	lea	rsi, [rsi]
	add	rax, qword ptr [rcx - 0x70]
	nop	
	cmp	rax, -0x80
	jl	.label_1022
	lea	rsi, [rsi]
	mov	eax, 0x7f
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x5c0]
	movsxd	rdx, dword ptr [rdx + 0x18]
	mov	rsi, qword ptr [rbp - 0x258]
	mov	rbp, rbp
	add	rdx, qword ptr [rsi - 0x70]
	nop	
	cmp	rcx, rdx
	jge	.label_1096
.label_1022:
	lea	rsi, [rsi]
	mov	al, 1
	mov	rcx, qword ptr [rbp - 0x5c0]
	mov	edx, dword ptr [rcx + 0x18]
	mov	rcx, qword ptr [rbp - 0x258]
	mov	rbp, rbp
	mov	rcx, qword ptr [rcx - 0x70]
	mov	esi, ecx
	add	edx, esi
	mov	dil, dl
	movsx	edx, dil
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x5c0]
	mov	rbp, rbp
	mov	dword ptr [rcx + 0x18], edx
	lea	rsi, [rsi]
	test	al, 1
	lea	rsi, [rsi]
	jne	.label_215
	lea	rsi, [rsi]
	jmp	.label_363
.label_1096:
	lea	rdi, [rdi]
	xor	eax, eax
	nop	
	mov	cl, al
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x5c0]
	mov	eax, dword ptr [rdx + 0x18]
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x258]
	mov	rsp, rsp
	mov	rdx, qword ptr [rdx - 0x70]
	lea	rdi, [rdi]
	mov	esi, edx
	nop	
	add	eax, esi
	lea	rdi, [rdi]
	mov	dil, al
	movsx	eax, dil
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x5c0]
	nop	
	mov	dword ptr [rdx + 0x18], eax
	test	cl, 1
	jne	.label_215
	jmp	.label_363
.label_984:
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_1138
	mov	rsp, rsp
	jmp	.label_948
.label_1138:
	xor	eax, eax
	nop	
	mov	cl, al
	test	cl, 1
	mov	rsp, rsp
	jne	.label_1144
	mov	rsp, rsp
	jmp	.label_1123
.label_1144:
	mov	al, 1
	test	al, 1
	lea	rdi, [rdi]
	jne	.label_1149
	jmp	.label_1154
.label_1149:
	mov	rax, qword ptr [rbp - 0x258]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax - 0x70]
	mov	cx, ax
	lea	rsi, [rsi]
	movsx	edx, cx
	mov	rsp, rsp
	cmp	edx, 0
	jge	.label_1152
	mov	rbp, rbp
	mov	eax, 0x80000000
	mov	rcx, qword ptr [rbp - 0x5c0]
	mov	edx, dword ptr [rcx + 0x18]
	mov	si, dx
	movsx	edx, si
	nop	
	mov	rcx, qword ptr [rbp - 0x258]
	mov	rcx, qword ptr [rcx - 0x70]
	lea	rsi, [rsi]
	mov	si, cx
	movsx	edi, si
	sub	eax, edi
	cmp	edx, eax
	jl	.label_149
	jmp	.label_182
.label_1152:
	lea	rsi, [rsi]
	mov	eax, 0x7fffffff
	nop	
	mov	rcx, qword ptr [rbp - 0x258]
	mov	rcx, qword ptr [rcx - 0x70]
	mov	dx, cx
	mov	rbp, rbp
	movsx	esi, dx
	lea	rdi, [rdi]
	sub	eax, esi
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x5c0]
	lea	rdi, [rdi]
	mov	esi, dword ptr [rcx + 0x18]
	nop	
	mov	dx, si
	mov	rsp, rsp
	movsx	esi, dx
	cmp	eax, esi
	mov	rsp, rsp
	jl	.label_149
	jmp	.label_182
.label_1154:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x5c0]
	mov	rbp, rbp
	mov	ecx, dword ptr [rax + 0x18]
	lea	rdi, [rdi]
	mov	dx, cx
	movsx	ecx, dx
	lea	rdi, [rdi]
	cmp	ecx, 0
	nop	
	jge	.label_217
	mov	rax, qword ptr [rbp - 0x258]
	mov	rax, qword ptr [rax - 0x70]
	mov	rsp, rsp
	mov	cx, ax
	movsx	edx, cx
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x5c0]
	mov	esi, dword ptr [rax + 0x18]
	lea	rdi, [rdi]
	mov	cx, si
	mov	rbp, rbp
	movsx	esi, cx
	mov	rax, qword ptr [rbp - 0x258]
	mov	rax, qword ptr [rax - 0x70]
	mov	rbp, rbp
	mov	cx, ax
	mov	rsp, rsp
	movsx	edi, cx
	add	esi, edi
	cmp	edx, esi
	lea	rsi, [rsi]
	jle	.label_149
	lea	rsi, [rsi]
	jmp	.label_182
.label_217:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x258]
	mov	rax, qword ptr [rax - 0x70]
	mov	rbp, rbp
	mov	cx, ax
	movsx	edx, cx
	mov	rbp, rbp
	cmp	edx, 0
	mov	rbp, rbp
	jge	.label_261
	mov	rax, qword ptr [rbp - 0x5c0]
	mov	ecx, dword ptr [rax + 0x18]
	mov	dx, cx
	movsx	ecx, dx
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x5c0]
	mov	esi, dword ptr [rax + 0x18]
	mov	dx, si
	lea	rdi, [rdi]
	movsx	esi, dx
	mov	rax, qword ptr [rbp - 0x258]
	mov	rax, qword ptr [rax - 0x70]
	mov	rbp, rbp
	mov	dx, ax
	lea	rsi, [rsi]
	movsx	edi, dx
	lea	rdi, [rdi]
	add	esi, edi
	cmp	ecx, esi
	jle	.label_149
	mov	rbp, rbp
	jmp	.label_182
.label_261:
	mov	rax, qword ptr [rbp - 0x5c0]
	lea	rdi, [rdi]
	mov	ecx, dword ptr [rax + 0x18]
	mov	dx, cx
	movsx	ecx, dx
	nop	
	mov	rax, qword ptr [rbp - 0x258]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax - 0x70]
	mov	rsp, rsp
	mov	dx, ax
	mov	rsp, rsp
	movsx	esi, dx
	lea	rdi, [rdi]
	add	ecx, esi
	mov	rax, qword ptr [rbp - 0x258]
	mov	rax, qword ptr [rax - 0x70]
	mov	dx, ax
	movsx	esi, dx
	nop	
	cmp	ecx, esi
	mov	rsp, rsp
	jl	.label_149
.label_182:
	nop	
	mov	rax, qword ptr [rbp - 0x5c0]
	mov	ecx, dword ptr [rax + 0x18]
	mov	dx, cx
	movsx	ecx, dx
	mov	rax, qword ptr [rbp - 0x258]
	mov	rax, qword ptr [rax - 0x70]
	mov	dx, ax
	movsx	esi, dx
	mov	rbp, rbp
	add	ecx, esi
	mov	rbp, rbp
	cmp	ecx, 0xffff8000
	jl	.label_149
	mov	eax, 0x7fff
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x5c0]
	mov	rbp, rbp
	mov	edx, dword ptr [rcx + 0x18]
	mov	rbp, rbp
	mov	si, dx
	lea	rdi, [rdi]
	movsx	edx, si
	mov	rcx, qword ptr [rbp - 0x258]
	mov	rcx, qword ptr [rcx - 0x70]
	mov	rsp, rsp
	mov	si, cx
	mov	rsp, rsp
	movsx	edi, si
	add	edx, edi
	mov	rsp, rsp
	cmp	eax, edx
	lea	rsi, [rsi]
	jge	.label_324
.label_149:
	mov	rsp, rsp
	mov	al, 1
	mov	rcx, qword ptr [rbp - 0x5c0]
	mov	rbp, rbp
	mov	edx, dword ptr [rcx + 0x18]
	mov	si, dx
	movsx	edx, si
	mov	rcx, qword ptr [rbp - 0x258]
	nop	
	mov	rcx, qword ptr [rcx - 0x70]
	mov	si, cx
	movsx	edi, si
	add	edx, edi
	mov	si, dx
	lea	rdi, [rdi]
	movsx	edx, si
	mov	rcx, qword ptr [rbp - 0x5c0]
	nop	
	mov	dword ptr [rcx + 0x18], edx
	test	al, 1
	jne	.label_215
	mov	rsp, rsp
	jmp	.label_363
.label_324:
	xor	eax, eax
	mov	cl, al
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x5c0]
	mov	rbp, rbp
	mov	eax, dword ptr [rdx + 0x18]
	mov	rsp, rsp
	mov	si, ax
	mov	rbp, rbp
	movsx	eax, si
	mov	rdx, qword ptr [rbp - 0x258]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rdx - 0x70]
	mov	si, dx
	movsx	edi, si
	mov	rsp, rsp
	add	eax, edi
	nop	
	mov	si, ax
	mov	rbp, rbp
	movsx	eax, si
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x5c0]
	nop	
	mov	dword ptr [rdx + 0x18], eax
	test	cl, 1
	jne	.label_215
	jmp	.label_363
.label_1123:
	mov	al, 1
	lea	rsi, [rsi]
	test	al, 1
	lea	rsi, [rsi]
	jne	.label_361
	jmp	.label_304
.label_361:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x258]
	nop	
	cmp	qword ptr [rax - 0x70], 0
	jge	.label_1095
	nop	
	movabs	rax, 0x8000000000000000
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x5c0]
	lea	rdi, [rdi]
	movsxd	rcx, dword ptr [rcx + 0x18]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x258]
	sub	rax, qword ptr [rdx - 0x70]
	cmp	rcx, rax
	jl	.label_401
	jmp	.label_410
.label_1095:
	movabs	rax, 0x7fffffffffffffff
	mov	rcx, qword ptr [rbp - 0x258]
	mov	rbp, rbp
	sub	rax, qword ptr [rcx - 0x70]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x5c0]
	mov	rbp, rbp
	movsxd	rcx, dword ptr [rcx + 0x18]
	mov	rbp, rbp
	cmp	rax, rcx
	mov	rsp, rsp
	jl	.label_401
	lea	rdi, [rdi]
	jmp	.label_410
.label_304:
	mov	rax, qword ptr [rbp - 0x5c0]
	lea	rdi, [rdi]
	cmp	dword ptr [rax + 0x18], 0
	jge	.label_427
	mov	rax, qword ptr [rbp - 0x258]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax - 0x70]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x5c0]
	movsxd	rcx, dword ptr [rcx + 0x18]
	mov	rdx, qword ptr [rbp - 0x258]
	lea	rdi, [rdi]
	add	rcx, qword ptr [rdx - 0x70]
	lea	rdi, [rdi]
	cmp	rax, rcx
	nop	
	jle	.label_401
	lea	rsi, [rsi]
	jmp	.label_410
.label_427:
	mov	rax, qword ptr [rbp - 0x258]
	cmp	qword ptr [rax - 0x70], 0
	mov	rbp, rbp
	jge	.label_449
	nop	
	mov	rax, qword ptr [rbp - 0x5c0]
	mov	rsp, rsp
	movsxd	rax, dword ptr [rax + 0x18]
	mov	rcx, qword ptr [rbp - 0x5c0]
	lea	rdi, [rdi]
	movsxd	rcx, dword ptr [rcx + 0x18]
	mov	rdx, qword ptr [rbp - 0x258]
	add	rcx, qword ptr [rdx - 0x70]
	lea	rsi, [rsi]
	cmp	rax, rcx
	mov	rbp, rbp
	jle	.label_401
	jmp	.label_410
.label_449:
	mov	rax, qword ptr [rbp - 0x5c0]
	movsxd	rax, dword ptr [rax + 0x18]
	mov	rcx, qword ptr [rbp - 0x258]
	add	rax, qword ptr [rcx - 0x70]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x258]
	mov	rsp, rsp
	cmp	rax, qword ptr [rcx - 0x70]
	lea	rdi, [rdi]
	jl	.label_401
.label_410:
	mov	rax, qword ptr [rbp - 0x5c0]
	lea	rsi, [rsi]
	movsxd	rax, dword ptr [rax + 0x18]
	mov	rcx, qword ptr [rbp - 0x258]
	add	rax, qword ptr [rcx - 0x70]
	mov	rbp, rbp
	cmp	rax, -0x8000
	mov	rsp, rsp
	jl	.label_401
	mov	rbp, rbp
	mov	eax, 0x7fff
	lea	rdi, [rdi]
	mov	ecx, eax
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x5c0]
	mov	rsp, rsp
	movsxd	rdx, dword ptr [rdx + 0x18]
	mov	rsi, qword ptr [rbp - 0x258]
	add	rdx, qword ptr [rsi - 0x70]
	cmp	rcx, rdx
	lea	rsi, [rsi]
	jge	.label_509
.label_401:
	mov	al, 1
	mov	rcx, qword ptr [rbp - 0x5c0]
	lea	rdi, [rdi]
	mov	edx, dword ptr [rcx + 0x18]
	mov	rcx, qword ptr [rbp - 0x258]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rcx - 0x70]
	mov	esi, ecx
	nop	
	add	edx, esi
	mov	di, dx
	movsx	edx, di
	mov	rcx, qword ptr [rbp - 0x5c0]
	lea	rdi, [rdi]
	mov	dword ptr [rcx + 0x18], edx
	test	al, 1
	jne	.label_215
	nop	
	jmp	.label_363
.label_509:
	mov	rsp, rsp
	xor	eax, eax
	mov	rsp, rsp
	mov	cl, al
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x5c0]
	mov	rsp, rsp
	mov	eax, dword ptr [rdx + 0x18]
	nop	
	mov	rdx, qword ptr [rbp - 0x258]
	mov	rbp, rbp
	mov	rdx, qword ptr [rdx - 0x70]
	mov	esi, edx
	add	eax, esi
	nop	
	mov	di, ax
	lea	rsi, [rsi]
	movsx	eax, di
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x5c0]
	lea	rdi, [rdi]
	mov	dword ptr [rdx + 0x18], eax
	nop	
	test	cl, 1
	jne	.label_215
	mov	rbp, rbp
	jmp	.label_363
.label_948:
	mov	al, 1
	mov	rsp, rsp
	test	al, 1
	jne	.label_555
	jmp	.label_557
.label_555:
	xor	eax, eax
	mov	rbp, rbp
	mov	cl, al
	mov	rsp, rsp
	test	cl, 1
	jne	.label_558
	jmp	.label_563
.label_558:
	lea	rsi, [rsi]
	mov	al, 1
	lea	rsi, [rsi]
	test	al, 1
	jne	.label_564
	mov	rsp, rsp
	jmp	.label_567
.label_564:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x258]
	mov	rax, qword ptr [rax - 0x70]
	mov	ecx, eax
	mov	rbp, rbp
	cmp	ecx, 0
	jge	.label_569
	mov	eax, 0x80000000
	mov	rcx, qword ptr [rbp - 0x5c0]
	mov	edx, dword ptr [rcx + 0x18]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x258]
	mov	rbp, rbp
	mov	rcx, qword ptr [rcx - 0x70]
	mov	esi, ecx
	sub	eax, esi
	cmp	edx, eax
	jl	.label_576
	jmp	.label_590
.label_569:
	mov	eax, 0x7fffffff
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x258]
	mov	rcx, qword ptr [rcx - 0x70]
	mov	edx, ecx
	mov	rbp, rbp
	sub	eax, edx
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x5c0]
	cmp	eax, dword ptr [rcx + 0x18]
	jl	.label_576
	lea	rsi, [rsi]
	jmp	.label_590
.label_567:
	mov	rax, qword ptr [rbp - 0x5c0]
	cmp	dword ptr [rax + 0x18], 0
	jge	.label_611
	mov	rax, qword ptr [rbp - 0x258]
	nop	
	mov	rax, qword ptr [rax - 0x70]
	mov	rsp, rsp
	mov	ecx, eax
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x5c0]
	lea	rdi, [rdi]
	mov	edx, dword ptr [rax + 0x18]
	mov	rax, qword ptr [rbp - 0x258]
	mov	rbp, rbp
	mov	rax, qword ptr [rax - 0x70]
	mov	esi, eax
	add	edx, esi
	cmp	ecx, edx
	lea	rdi, [rdi]
	jle	.label_576
	mov	rsp, rsp
	jmp	.label_590
.label_611:
	mov	rax, qword ptr [rbp - 0x258]
	mov	rax, qword ptr [rax - 0x70]
	mov	ecx, eax
	mov	rbp, rbp
	cmp	ecx, 0
	jge	.label_630
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x5c0]
	mov	ecx, dword ptr [rax + 0x18]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x5c0]
	mov	edx, dword ptr [rax + 0x18]
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x258]
	mov	rax, qword ptr [rax - 0x70]
	mov	rsp, rsp
	mov	esi, eax
	lea	rdi, [rdi]
	add	edx, esi
	cmp	ecx, edx
	lea	rdi, [rdi]
	jle	.label_576
	jmp	.label_590
.label_630:
	mov	rax, qword ptr [rbp - 0x5c0]
	mov	ecx, dword ptr [rax + 0x18]
	mov	rax, qword ptr [rbp - 0x258]
	mov	rax, qword ptr [rax - 0x70]
	mov	edx, eax
	lea	rdi, [rdi]
	add	ecx, edx
	mov	rax, qword ptr [rbp - 0x258]
	mov	rbp, rbp
	mov	rax, qword ptr [rax - 0x70]
	nop	
	mov	edx, eax
	cmp	ecx, edx
	lea	rsi, [rsi]
	jl	.label_576
.label_590:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x5c0]
	mov	rbp, rbp
	mov	ecx, dword ptr [rax + 0x18]
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x258]
	mov	rax, qword ptr [rax - 0x70]
	mov	edx, eax
	add	ecx, edx
	mov	rbp, rbp
	cmp	ecx, 0x80000000
	jl	.label_576
	mov	eax, 0x7fffffff
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x5c0]
	lea	rsi, [rsi]
	mov	edx, dword ptr [rcx + 0x18]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x258]
	mov	rsp, rsp
	mov	rcx, qword ptr [rcx - 0x70]
	mov	esi, ecx
	add	edx, esi
	mov	rsp, rsp
	cmp	eax, edx
	nop	
	jge	.label_665
.label_576:
	nop	
	mov	al, 1
	mov	rcx, qword ptr [rbp - 0x5c0]
	mov	edx, dword ptr [rcx + 0x18]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x258]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rcx - 0x70]
	mov	esi, ecx
	add	edx, esi
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x5c0]
	lea	rsi, [rsi]
	mov	dword ptr [rcx + 0x18], edx
	test	al, 1
	jne	.label_215
	jmp	.label_363
.label_665:
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x5c0]
	lea	rdi, [rdi]
	mov	eax, dword ptr [rdx + 0x18]
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x258]
	mov	rbp, rbp
	mov	rdx, qword ptr [rdx - 0x70]
	mov	rbp, rbp
	mov	esi, edx
	lea	rdi, [rdi]
	add	eax, esi
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x5c0]
	mov	dword ptr [rdx + 0x18], eax
	test	cl, 1
	mov	rbp, rbp
	jne	.label_215
	lea	rdi, [rdi]
	jmp	.label_363
.label_563:
	mov	rsp, rsp
	mov	al, 1
	test	al, 1
	mov	rbp, rbp
	jne	.label_710
	jmp	.label_715
.label_710:
	mov	rax, qword ptr [rbp - 0x258]
	mov	rbp, rbp
	cmp	qword ptr [rax - 0x70], 0
	lea	rdi, [rdi]
	jge	.label_716
	movabs	rax, 0x8000000000000000
	mov	rcx, qword ptr [rbp - 0x5c0]
	movsxd	rcx, dword ptr [rcx + 0x18]
	mov	rdx, qword ptr [rbp - 0x258]
	lea	rsi, [rsi]
	sub	rax, qword ptr [rdx - 0x70]
	mov	rsp, rsp
	cmp	rcx, rax
	jl	.label_328
	mov	rsp, rsp
	jmp	.label_402
.label_716:
	movabs	rax, 0x7fffffffffffffff
	mov	rcx, qword ptr [rbp - 0x258]
	sub	rax, qword ptr [rcx - 0x70]
	mov	rcx, qword ptr [rbp - 0x5c0]
	lea	rsi, [rsi]
	movsxd	rcx, dword ptr [rcx + 0x18]
	cmp	rax, rcx
	jl	.label_328
	nop	
	jmp	.label_402
.label_715:
	nop	
	mov	rax, qword ptr [rbp - 0x5c0]
	cmp	dword ptr [rax + 0x18], 0
	lea	rsi, [rsi]
	jge	.label_501
	mov	rax, qword ptr [rbp - 0x258]
	mov	rbp, rbp
	mov	rax, qword ptr [rax - 0x70]
	nop	
	mov	rcx, qword ptr [rbp - 0x5c0]
	movsxd	rcx, dword ptr [rcx + 0x18]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x258]
	lea	rsi, [rsi]
	add	rcx, qword ptr [rdx - 0x70]
	nop	
	cmp	rax, rcx
	mov	rbp, rbp
	jle	.label_328
	mov	rbp, rbp
	jmp	.label_402
.label_501:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x258]
	cmp	qword ptr [rax - 0x70], 0
	lea	rsi, [rsi]
	jge	.label_765
	nop	
	mov	rax, qword ptr [rbp - 0x5c0]
	movsxd	rax, dword ptr [rax + 0x18]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x5c0]
	movsxd	rcx, dword ptr [rcx + 0x18]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x258]
	nop	
	add	rcx, qword ptr [rdx - 0x70]
	cmp	rax, rcx
	jle	.label_328
	jmp	.label_402
.label_765:
	mov	rax, qword ptr [rbp - 0x5c0]
	movsxd	rax, dword ptr [rax + 0x18]
	nop	
	mov	rcx, qword ptr [rbp - 0x258]
	lea	rdi, [rdi]
	add	rax, qword ptr [rcx - 0x70]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x258]
	lea	rdi, [rdi]
	cmp	rax, qword ptr [rcx - 0x70]
	lea	rsi, [rsi]
	jl	.label_328
.label_402:
	mov	rax, qword ptr [rbp - 0x5c0]
	nop	
	movsxd	rax, dword ptr [rax + 0x18]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x258]
	nop	
	add	rax, qword ptr [rcx - 0x70]
	nop	
	cmp	rax, -0x80000000
	jl	.label_328
	mov	eax, 0x7fffffff
	mov	ecx, eax
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x5c0]
	movsxd	rdx, dword ptr [rdx + 0x18]
	mov	rsi, qword ptr [rbp - 0x258]
	add	rdx, qword ptr [rsi - 0x70]
	cmp	rcx, rdx
	nop	
	jge	.label_801
.label_328:
	mov	al, 1
	mov	rcx, qword ptr [rbp - 0x5c0]
	nop	
	mov	edx, dword ptr [rcx + 0x18]
	mov	rcx, qword ptr [rbp - 0x258]
	mov	rsp, rsp
	mov	rcx, qword ptr [rcx - 0x70]
	mov	rbp, rbp
	mov	esi, ecx
	nop	
	add	edx, esi
	mov	rcx, qword ptr [rbp - 0x5c0]
	mov	dword ptr [rcx + 0x18], edx
	mov	rsp, rsp
	test	al, 1
	jne	.label_215
	jmp	.label_363
.label_801:
	xor	eax, eax
	lea	rsi, [rsi]
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x5c0]
	mov	eax, dword ptr [rdx + 0x18]
	mov	rdx, qword ptr [rbp - 0x258]
	mov	rbp, rbp
	mov	rdx, qword ptr [rdx - 0x70]
	mov	esi, edx
	add	eax, esi
	nop	
	mov	rdx, qword ptr [rbp - 0x5c0]
	mov	dword ptr [rdx + 0x18], eax
	test	cl, 1
	mov	rbp, rbp
	jne	.label_215
	jmp	.label_363
.label_557:
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	nop	
	jne	.label_844
	jmp	.label_849
.label_844:
	xor	eax, eax
	mov	cl, al
	mov	rsp, rsp
	test	cl, 1
	jne	.label_850
	lea	rsi, [rsi]
	jmp	.label_855
.label_850:
	mov	rsp, rsp
	mov	al, 1
	lea	rdi, [rdi]
	test	al, 1
	jne	.label_856
	jmp	.label_1150
.label_856:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x258]
	cmp	qword ptr [rax - 0x70], 0
	jge	.label_864
	movabs	rax, 0x8000000000000000
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x5c0]
	mov	rsp, rsp
	movsxd	rcx, dword ptr [rcx + 0x18]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x258]
	sub	rax, qword ptr [rdx - 0x70]
	nop	
	cmp	rcx, rax
	mov	rbp, rbp
	jl	.label_869
	jmp	.label_703
.label_864:
	lea	rdi, [rdi]
	movabs	rax, 0x7fffffffffffffff
	mov	rcx, qword ptr [rbp - 0x258]
	sub	rax, qword ptr [rcx - 0x70]
	mov	rcx, qword ptr [rbp - 0x5c0]
	movsxd	rcx, dword ptr [rcx + 0x18]
	cmp	rax, rcx
	jl	.label_869
	mov	rbp, rbp
	jmp	.label_703
.label_1150:
	mov	rax, qword ptr [rbp - 0x5c0]
	movsxd	rax, dword ptr [rax + 0x18]
	cmp	rax, 0
	jge	.label_392
	mov	rax, qword ptr [rbp - 0x258]
	nop	
	mov	rax, qword ptr [rax - 0x70]
	mov	rcx, qword ptr [rbp - 0x5c0]
	lea	rsi, [rsi]
	movsxd	rcx, dword ptr [rcx + 0x18]
	mov	rdx, qword ptr [rbp - 0x258]
	nop	
	add	rcx, qword ptr [rdx - 0x70]
	mov	rsp, rsp
	cmp	rax, rcx
	jle	.label_869
	lea	rdi, [rdi]
	jmp	.label_703
.label_392:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x258]
	cmp	qword ptr [rax - 0x70], 0
	jge	.label_526
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x5c0]
	lea	rsi, [rsi]
	movsxd	rax, dword ptr [rax + 0x18]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x5c0]
	mov	rsp, rsp
	movsxd	rcx, dword ptr [rcx + 0x18]
	nop	
	mov	rdx, qword ptr [rbp - 0x258]
	add	rcx, qword ptr [rdx - 0x70]
	cmp	rax, rcx
	jle	.label_869
	jmp	.label_703
.label_526:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x5c0]
	movsxd	rax, dword ptr [rax + 0x18]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x258]
	add	rax, qword ptr [rcx - 0x70]
	mov	rcx, qword ptr [rbp - 0x258]
	cmp	rax, qword ptr [rcx - 0x70]
	jl	.label_869
.label_703:
	movabs	rax, 0x8000000000000000
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x5c0]
	movsxd	rcx, dword ptr [rcx + 0x18]
	mov	rdx, qword ptr [rbp - 0x258]
	lea	rdi, [rdi]
	add	rcx, qword ptr [rdx - 0x70]
	lea	rdi, [rdi]
	cmp	rcx, rax
	nop	
	jl	.label_869
	movabs	rax, 0x7fffffffffffffff
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x5c0]
	lea	rsi, [rsi]
	movsxd	rcx, dword ptr [rcx + 0x18]
	mov	rdx, qword ptr [rbp - 0x258]
	add	rcx, qword ptr [rdx - 0x70]
	cmp	rax, rcx
	lea	rsi, [rsi]
	jge	.label_942
.label_869:
	nop	
	mov	al, 1
	mov	rcx, qword ptr [rbp - 0x5c0]
	nop	
	movsxd	rcx, dword ptr [rcx + 0x18]
	mov	rdx, qword ptr [rbp - 0x258]
	add	rcx, qword ptr [rdx - 0x70]
	mov	esi, ecx
	mov	rcx, qword ptr [rbp - 0x5c0]
	mov	dword ptr [rcx + 0x18], esi
	mov	rsp, rsp
	test	al, 1
	jne	.label_215
	jmp	.label_363
.label_942:
	xor	eax, eax
	nop	
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x5c0]
	movsxd	rdx, dword ptr [rdx + 0x18]
	mov	rsi, qword ptr [rbp - 0x258]
	lea	rsi, [rsi]
	add	rdx, qword ptr [rsi - 0x70]
	nop	
	mov	eax, edx
	mov	rdx, qword ptr [rbp - 0x5c0]
	lea	rdi, [rdi]
	mov	dword ptr [rdx + 0x18], eax
	test	cl, 1
	lea	rdi, [rdi]
	jne	.label_215
	mov	rbp, rbp
	jmp	.label_363
.label_855:
	mov	al, 1
	mov	rsp, rsp
	test	al, 1
	mov	rsp, rsp
	jne	.label_991
	mov	rsp, rsp
	jmp	.label_993
.label_991:
	mov	rax, qword ptr [rbp - 0x258]
	nop	
	cmp	qword ptr [rax - 0x70], 0
	jge	.label_996
	movabs	rax, 0x8000000000000000
	mov	rcx, qword ptr [rbp - 0x5c0]
	mov	rbp, rbp
	movsxd	rcx, dword ptr [rcx + 0x18]
	mov	rdx, qword ptr [rbp - 0x258]
	sub	rax, qword ptr [rdx - 0x70]
	cmp	rcx, rax
	jl	.label_213
	jmp	.label_434
.label_996:
	mov	rsp, rsp
	movabs	rax, 0x7fffffffffffffff
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x258]
	sub	rax, qword ptr [rcx - 0x70]
	mov	rcx, qword ptr [rbp - 0x5c0]
	movsxd	rcx, dword ptr [rcx + 0x18]
	mov	rbp, rbp
	cmp	rax, rcx
	nop	
	jl	.label_213
	lea	rsi, [rsi]
	jmp	.label_434
.label_993:
	nop	
	mov	rax, qword ptr [rbp - 0x5c0]
	cmp	dword ptr [rax + 0x18], 0
	jge	.label_1011
	mov	rax, qword ptr [rbp - 0x258]
	mov	rax, qword ptr [rax - 0x70]
	mov	rcx, qword ptr [rbp - 0x5c0]
	nop	
	movsxd	rcx, dword ptr [rcx + 0x18]
	mov	rdx, qword ptr [rbp - 0x258]
	add	rcx, qword ptr [rdx - 0x70]
	cmp	rax, rcx
	jle	.label_213
	jmp	.label_434
.label_1011:
	mov	rax, qword ptr [rbp - 0x258]
	mov	rsp, rsp
	cmp	qword ptr [rax - 0x70], 0
	nop	
	jge	.label_1024
	mov	rax, qword ptr [rbp - 0x5c0]
	movsxd	rax, dword ptr [rax + 0x18]
	mov	rcx, qword ptr [rbp - 0x5c0]
	movsxd	rcx, dword ptr [rcx + 0x18]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x258]
	add	rcx, qword ptr [rdx - 0x70]
	mov	rbp, rbp
	cmp	rax, rcx
	jle	.label_213
	nop	
	jmp	.label_434
.label_1024:
	mov	rax, qword ptr [rbp - 0x5c0]
	movsxd	rax, dword ptr [rax + 0x18]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x258]
	mov	rsp, rsp
	add	rax, qword ptr [rcx - 0x70]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x258]
	mov	rsp, rsp
	cmp	rax, qword ptr [rcx - 0x70]
	mov	rbp, rbp
	jl	.label_213
.label_434:
	movabs	rax, 0x8000000000000000
	mov	rcx, qword ptr [rbp - 0x5c0]
	mov	rbp, rbp
	movsxd	rcx, dword ptr [rcx + 0x18]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x258]
	add	rcx, qword ptr [rdx - 0x70]
	cmp	rcx, rax
	jl	.label_213
	mov	rsp, rsp
	movabs	rax, 0x7fffffffffffffff
	nop	
	mov	rcx, qword ptr [rbp - 0x5c0]
	lea	rsi, [rsi]
	movsxd	rcx, dword ptr [rcx + 0x18]
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x258]
	add	rcx, qword ptr [rdx - 0x70]
	cmp	rax, rcx
	lea	rdi, [rdi]
	jge	.label_373
.label_213:
	lea	rsi, [rsi]
	mov	al, 1
	mov	rcx, qword ptr [rbp - 0x5c0]
	lea	rsi, [rsi]
	movsxd	rcx, dword ptr [rcx + 0x18]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x258]
	nop	
	add	rcx, qword ptr [rdx - 0x70]
	lea	rsi, [rsi]
	mov	esi, ecx
	nop	
	mov	rcx, qword ptr [rbp - 0x5c0]
	mov	rsp, rsp
	mov	dword ptr [rcx + 0x18], esi
	lea	rsi, [rsi]
	test	al, 1
	jne	.label_215
	jmp	.label_363
.label_373:
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x5c0]
	nop	
	movsxd	rdx, dword ptr [rdx + 0x18]
	mov	rsi, qword ptr [rbp - 0x258]
	mov	rsp, rsp
	add	rdx, qword ptr [rsi - 0x70]
	mov	eax, edx
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x5c0]
	nop	
	mov	dword ptr [rdx + 0x18], eax
	mov	rbp, rbp
	test	cl, 1
	jne	.label_215
	jmp	.label_363
.label_849:
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	mov	rsp, rsp
	jne	.label_1109
	mov	rbp, rbp
	jmp	.label_1113
.label_1109:
	mov	rsp, rsp
	mov	al, 1
	test	al, 1
	jne	.label_1116
	jmp	.label_1120
.label_1116:
	mov	rax, qword ptr [rbp - 0x258]
	cmp	qword ptr [rax - 0x70], 0
	jge	.label_910
	movabs	rax, 0x8000000000000000
	mov	rcx, qword ptr [rbp - 0x5c0]
	movsxd	rcx, dword ptr [rcx + 0x18]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x258]
	nop	
	sub	rax, qword ptr [rdx - 0x70]
	lea	rsi, [rsi]
	cmp	rcx, rax
	mov	rsp, rsp
	jl	.label_163
	jmp	.label_144
.label_910:
	mov	rsp, rsp
	movabs	rax, 0x7fffffffffffffff
	mov	rcx, qword ptr [rbp - 0x258]
	mov	rsp, rsp
	sub	rax, qword ptr [rcx - 0x70]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x5c0]
	movsxd	rcx, dword ptr [rcx + 0x18]
	cmp	rax, rcx
	lea	rsi, [rsi]
	jl	.label_163
	nop	
	jmp	.label_144
.label_1120:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x5c0]
	movsxd	rax, dword ptr [rax + 0x18]
	mov	rsp, rsp
	cmp	rax, 0
	mov	rsp, rsp
	jge	.label_1142
	mov	rax, qword ptr [rbp - 0x258]
	mov	rax, qword ptr [rax - 0x70]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x5c0]
	movsxd	rcx, dword ptr [rcx + 0x18]
	nop	
	mov	rdx, qword ptr [rbp - 0x258]
	add	rcx, qword ptr [rdx - 0x70]
	cmp	rax, rcx
	jle	.label_163
	jmp	.label_144
.label_1142:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x258]
	cmp	qword ptr [rax - 0x70], 0
	mov	rbp, rbp
	jge	.label_147
	mov	rax, qword ptr [rbp - 0x5c0]
	movsxd	rax, dword ptr [rax + 0x18]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x5c0]
	movsxd	rcx, dword ptr [rcx + 0x18]
	mov	rdx, qword ptr [rbp - 0x258]
	add	rcx, qword ptr [rdx - 0x70]
	cmp	rax, rcx
	mov	rbp, rbp
	jle	.label_163
	jmp	.label_144
.label_147:
	mov	rax, qword ptr [rbp - 0x5c0]
	lea	rsi, [rsi]
	movsxd	rax, dword ptr [rax + 0x18]
	mov	rcx, qword ptr [rbp - 0x258]
	lea	rdi, [rdi]
	add	rax, qword ptr [rcx - 0x70]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x258]
	cmp	rax, qword ptr [rcx - 0x70]
	jl	.label_163
.label_144:
	nop	
	movabs	rax, 0x8000000000000000
	mov	rcx, qword ptr [rbp - 0x5c0]
	movsxd	rcx, dword ptr [rcx + 0x18]
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x258]
	mov	rsp, rsp
	add	rcx, qword ptr [rdx - 0x70]
	cmp	rcx, rax
	jl	.label_163
	nop	
	movabs	rax, 0x7fffffffffffffff
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x5c0]
	movsxd	rcx, dword ptr [rcx + 0x18]
	mov	rdx, qword ptr [rbp - 0x258]
	add	rcx, qword ptr [rdx - 0x70]
	lea	rdi, [rdi]
	cmp	rax, rcx
	jge	.label_880
.label_163:
	mov	rsp, rsp
	mov	al, 1
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x5c0]
	movsxd	rcx, dword ptr [rcx + 0x18]
	mov	rdx, qword ptr [rbp - 0x258]
	add	rcx, qword ptr [rdx - 0x70]
	mov	esi, ecx
	mov	rcx, qword ptr [rbp - 0x5c0]
	lea	rdi, [rdi]
	mov	dword ptr [rcx + 0x18], esi
	mov	rbp, rbp
	test	al, 1
	jne	.label_215
	jmp	.label_363
.label_880:
	mov	rsp, rsp
	xor	eax, eax
	mov	cl, al
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x5c0]
	lea	rdi, [rdi]
	movsxd	rdx, dword ptr [rdx + 0x18]
	nop	
	mov	rsi, qword ptr [rbp - 0x258]
	lea	rsi, [rsi]
	add	rdx, qword ptr [rsi - 0x70]
	mov	eax, edx
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x5c0]
	lea	rsi, [rsi]
	mov	dword ptr [rdx + 0x18], eax
	test	cl, 1
	lea	rsi, [rsi]
	jne	.label_215
	jmp	.label_363
.label_1113:
	mov	al, 1
	lea	rsi, [rsi]
	test	al, 1
	mov	rbp, rbp
	jne	.label_763
	lea	rdi, [rdi]
	jmp	.label_281
.label_763:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x258]
	lea	rsi, [rsi]
	cmp	qword ptr [rax - 0x70], 0
	lea	rsi, [rsi]
	jge	.label_284
	movabs	rax, 0x8000000000000000
	nop	
	mov	rcx, qword ptr [rbp - 0x5c0]
	lea	rdi, [rdi]
	movsxd	rcx, dword ptr [rcx + 0x18]
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x258]
	sub	rax, qword ptr [rdx - 0x70]
	cmp	rcx, rax
	jl	.label_290
	mov	rbp, rbp
	jmp	.label_305
.label_284:
	lea	rsi, [rsi]
	movabs	rax, 0x7fffffffffffffff
	mov	rcx, qword ptr [rbp - 0x258]
	sub	rax, qword ptr [rcx - 0x70]
	mov	rcx, qword ptr [rbp - 0x5c0]
	lea	rsi, [rsi]
	movsxd	rcx, dword ptr [rcx + 0x18]
	cmp	rax, rcx
	jl	.label_290
	lea	rdi, [rdi]
	jmp	.label_305
.label_281:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x5c0]
	cmp	dword ptr [rax + 0x18], 0
	jge	.label_323
	nop	
	mov	rax, qword ptr [rbp - 0x258]
	mov	rsp, rsp
	mov	rax, qword ptr [rax - 0x70]
	mov	rcx, qword ptr [rbp - 0x5c0]
	movsxd	rcx, dword ptr [rcx + 0x18]
	nop	
	mov	rdx, qword ptr [rbp - 0x258]
	lea	rdi, [rdi]
	add	rcx, qword ptr [rdx - 0x70]
	cmp	rax, rcx
	mov	rsp, rsp
	jle	.label_290
	jmp	.label_305
.label_323:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x258]
	mov	rsp, rsp
	cmp	qword ptr [rax - 0x70], 0
	jge	.label_344
	nop	
	mov	rax, qword ptr [rbp - 0x5c0]
	nop	
	movsxd	rax, dword ptr [rax + 0x18]
	mov	rcx, qword ptr [rbp - 0x5c0]
	movsxd	rcx, dword ptr [rcx + 0x18]
	mov	rdx, qword ptr [rbp - 0x258]
	add	rcx, qword ptr [rdx - 0x70]
	cmp	rax, rcx
	lea	rsi, [rsi]
	jle	.label_290
	jmp	.label_305
.label_344:
	mov	rax, qword ptr [rbp - 0x5c0]
	lea	rdi, [rdi]
	movsxd	rax, dword ptr [rax + 0x18]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x258]
	mov	rbp, rbp
	add	rax, qword ptr [rcx - 0x70]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x258]
	cmp	rax, qword ptr [rcx - 0x70]
	jl	.label_290
.label_305:
	lea	rsi, [rsi]
	movabs	rax, 0x8000000000000000
	mov	rcx, qword ptr [rbp - 0x5c0]
	movsxd	rcx, dword ptr [rcx + 0x18]
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x258]
	add	rcx, qword ptr [rdx - 0x70]
	cmp	rcx, rax
	nop	
	jl	.label_290
	mov	rsp, rsp
	movabs	rax, 0x7fffffffffffffff
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x5c0]
	lea	rdi, [rdi]
	movsxd	rcx, dword ptr [rcx + 0x18]
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x258]
	add	rcx, qword ptr [rdx - 0x70]
	lea	rdi, [rdi]
	cmp	rax, rcx
	jge	.label_371
.label_290:
	mov	al, 1
	mov	rcx, qword ptr [rbp - 0x5c0]
	movsxd	rcx, dword ptr [rcx + 0x18]
	mov	rdx, qword ptr [rbp - 0x258]
	add	rcx, qword ptr [rdx - 0x70]
	mov	esi, ecx
	mov	rcx, qword ptr [rbp - 0x5c0]
	mov	dword ptr [rcx + 0x18], esi
	test	al, 1
	jne	.label_215
	mov	rbp, rbp
	jmp	.label_363
.label_371:
	mov	rsp, rsp
	xor	eax, eax
	lea	rsi, [rsi]
	mov	cl, al
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x5c0]
	movsxd	rdx, dword ptr [rdx + 0x18]
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x258]
	lea	rsi, [rsi]
	add	rdx, qword ptr [rsi - 0x70]
	mov	eax, edx
	mov	rdx, qword ptr [rbp - 0x5c0]
	lea	rdi, [rdi]
	mov	dword ptr [rdx + 0x18], eax
	nop	
	test	cl, 1
	jne	.label_215
	lea	rdi, [rdi]
	jmp	.label_363
.label_215:
	lea	rsi, [rsi]
	jmp	.label_146
.label_363:
	jmp	.label_148
.label_5130:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x258]
	mov	rax, qword ptr [rax]
	lea	rsi, [rsi]
	add	rax, 0xe10
	mov	ecx, eax
	mov	rax, qword ptr [rbp - 0x5c0]
	mov	rsp, rsp
	mov	dword ptr [rax + 0x18], ecx
	mov	rbp, rbp
	jmp	.label_148
.label_5131:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x258]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax - 0x38]
	add	rax, 0xe10
	nop	
	mov	ecx, eax
	nop	
	mov	rax, qword ptr [rbp - 0x5c0]
	mov	dword ptr [rax + 0x18], ecx
	lea	rdi, [rdi]
	jmp	.label_148
.label_5132:
	mov	rax, qword ptr [rbp - 0x5c0]
	mov	qword ptr [rax + 8], 0
	mov	rax, qword ptr [rbp - 0x258]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax]
	mov	ecx, eax
	nop	
	mov	rax, qword ptr [rbp - 0x5c0]
	lea	rdi, [rdi]
	mov	dword ptr [rax + 0x10], ecx
	jmp	.label_148
.label_5133:
	mov	rax, qword ptr [rbp - 0x5c0]
	nop	
	mov	qword ptr [rax + 8], 0
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x258]
	mov	rax, qword ptr [rax - 0x38]
	nop	
	mov	ecx, eax
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x5c0]
	mov	dword ptr [rax + 0x10], ecx
	jmp	.label_148
.label_5134:
	mov	rax, qword ptr [rbp - 0x258]
	mov	rax, qword ptr [rax - 0x38]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x5c0]
	lea	rdi, [rdi]
	mov	qword ptr [rcx + 8], rax
	mov	rax, qword ptr [rbp - 0x258]
	mov	rax, qword ptr [rax]
	mov	edx, eax
	mov	rax, qword ptr [rbp - 0x5c0]
	mov	dword ptr [rax + 0x10], edx
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x5c0]
	mov	byte ptr [rax + 0xe0], 1
	jmp	.label_148
.label_5135:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x258]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax - 0x30]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x5c0]
	mov	rsp, rsp
	mov	qword ptr [rcx + 8], rax
	mov	rax, qword ptr [rbp - 0x258]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax]
	mov	edx, eax
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x5c0]
	mov	rsp, rsp
	mov	dword ptr [rax + 0x10], edx
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x5c0]
	mov	byte ptr [rax + 0xe0], 1
	jmp	.label_148
.label_5136:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x258]
	mov	rax, qword ptr [rax - 0x68]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x5c0]
	nop	
	mov	qword ptr [rcx + 0x38], rax
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x258]
	mov	rbp, rbp
	mov	rax, qword ptr [rax + 8]
	mov	rcx, qword ptr [rbp - 0x5c0]
	lea	rsi, [rsi]
	mov	qword ptr [rcx + 0x40], rax
	jmp	.label_148
.label_5137:
	mov	eax, 4
	lea	rsi, [rsi]
	mov	ecx, eax
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x258]
	cmp	rcx, qword ptr [rdx - 0xd0]
	lea	rdi, [rdi]
	jg	.label_554
	mov	rax, qword ptr [rbp - 0x5c0]
	lea	rdi, [rdi]
	test	byte ptr [rax + 0xd9], 1
	lea	rdi, [rdi]
	je	.label_559
	lea	rsi, [rsi]
	movabs	rdi, OFFSET FLAT:.str.10
	mov	rax, qword ptr [rbp - 0x258]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax - 0xd0]
	mov	qword ptr [rbp - 0x3f0], rax
	call	gettext
	nop	
	mov	rdi, qword ptr [rbp - 0x258]
	mov	rsi, qword ptr [rdi - 0xd8]
	mov	rdx, qword ptr [rbp - 0x3f0]
	lea	rsi, [rsi]
	mov	rdi, rax
	mov	rsp, rsp
	mov	al, 0
	call	dbg_printf
.label_559:
	mov	rax, qword ptr [rbp - 0x5c0]
	mov	rcx, qword ptr [rbp - 0x258]
	mov	rsp, rsp
	mov	rdx, qword ptr [rcx - 0xe0]
	mov	rsp, rsp
	mov	qword ptr [rax + 0x20], rdx
	mov	rdx, qword ptr [rcx - 0xd8]
	mov	rsp, rsp
	mov	qword ptr [rax + 0x28], rdx
	mov	rcx, qword ptr [rcx - 0xd0]
	mov	qword ptr [rax + 0x30], rcx
	mov	rax, qword ptr [rbp - 0x258]
	mov	rsp, rsp
	mov	rax, qword ptr [rax - 0x68]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x5c0]
	mov	qword ptr [rcx + 0x38], rax
	nop	
	mov	rax, qword ptr [rbp - 0x258]
	mov	rbp, rbp
	mov	rax, qword ptr [rax + 8]
	mov	rcx, qword ptr [rbp - 0x5c0]
	mov	qword ptr [rcx + 0x40], rax
	jmp	.label_587
.label_554:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x5c0]
	nop	
	test	byte ptr [rax + 0xd9], 1
	je	.label_621
	movabs	rdi, OFFSET FLAT:.str.11_0
	lea	rsi, [rsi]
	call	gettext
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x258]
	mov	rsi, qword ptr [rdi - 0xd8]
	mov	rdi, rax
	mov	al, 0
	call	dbg_printf
.label_621:
	mov	rax, qword ptr [rbp - 0x258]
	nop	
	mov	rax, qword ptr [rax - 0xd8]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x5c0]
	mov	qword ptr [rcx + 0x38], rax
	mov	rax, qword ptr [rbp - 0x258]
	mov	rax, qword ptr [rax - 0x68]
	mov	rcx, qword ptr [rbp - 0x5c0]
	nop	
	mov	qword ptr [rcx + 0x40], rax
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x5c0]
	mov	rcx, qword ptr [rbp - 0x258]
	mov	rdx, qword ptr [rcx]
	nop	
	mov	qword ptr [rax + 0x20], rdx
	mov	rsp, rsp
	mov	rdx, qword ptr [rcx + 8]
	mov	qword ptr [rax + 0x28], rdx
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rcx + 0x10]
	nop	
	mov	qword ptr [rax + 0x30], rcx
.label_587:
	mov	rsp, rsp
	jmp	.label_148
.label_5138:
	lea	rsi, [rsi]
	xor	eax, eax
	mov	rbp, rbp
	mov	cl, al
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x258]
	mov	rdx, qword ptr [rdx - 0x68]
	nop	
	mov	rsi, qword ptr [rbp - 0x5c0]
	mov	rsp, rsp
	mov	qword ptr [rsi + 0x40], rdx
	mov	rdx, qword ptr [rbp - 0x258]
	mov	rdx, qword ptr [rdx - 0x38]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x5c0]
	mov	rbp, rbp
	mov	qword ptr [rsi + 0x38], rdx
	test	cl, 1
	jne	.label_654
	nop	
	jmp	.label_668
.label_654:
	mov	rsp, rsp
	xor	eax, eax
	mov	cl, al
	lea	rdi, [rdi]
	test	cl, 1
	mov	rbp, rbp
	jne	.label_671
	mov	rbp, rbp
	jmp	.label_673
.label_671:
	mov	al, 1
	test	al, 1
	mov	rsp, rsp
	jne	.label_1028
	nop	
	jmp	.label_675
.label_1028:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x258]
	mov	rax, qword ptr [rax + 8]
	mov	cl, al
	mov	rsp, rsp
	movsx	edx, cl
	cmp	edx, 0
	jge	.label_1131
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x258]
	mov	rax, qword ptr [rax + 8]
	lea	rdi, [rdi]
	mov	cl, al
	mov	rbp, rbp
	movsx	edx, cl
	nop	
	add	edx, 0x7fffffff
	cmp	edx, 0
	jl	.label_398
	mov	rsp, rsp
	jmp	.label_699
.label_1131:
	mov	rbp, rbp
	xor	eax, eax
	nop	
	mov	rcx, qword ptr [rbp - 0x258]
	mov	rsp, rsp
	mov	rcx, qword ptr [rcx + 8]
	mov	dl, cl
	mov	rsp, rsp
	movsx	esi, dl
	mov	rsp, rsp
	add	esi, 0x80000000
	cmp	eax, esi
	mov	rbp, rbp
	jl	.label_398
	jmp	.label_699
.label_675:
	mov	rbp, rbp
	xor	eax, eax
	mov	rbp, rbp
	mov	cl, al
	nop	
	test	cl, 1
	jne	.label_714
	jmp	.label_985
.label_714:
	mov	rbp, rbp
	mov	al, 1
	test	al, 1
	lea	rsi, [rsi]
	jne	.label_398
	lea	rsi, [rsi]
	jmp	.label_699
.label_985:
	mov	rax, qword ptr [rbp - 0x258]
	mov	rax, qword ptr [rax + 8]
	lea	rsi, [rsi]
	mov	cl, al
	movsx	edx, cl
	cmp	edx, 0
	jge	.label_725
	mov	rbp, rbp
	xor	eax, eax
	nop	
	mov	rcx, qword ptr [rbp - 0x258]
	mov	rcx, qword ptr [rcx + 8]
	mov	dl, cl
	movsx	esi, dl
	sub	eax, esi
	mov	rsp, rsp
	cmp	eax, 0
	nop	
	jle	.label_398
	lea	rsi, [rsi]
	jmp	.label_699
.label_725:
	xor	eax, eax
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x258]
	mov	rcx, qword ptr [rcx + 8]
	mov	dl, cl
	movsx	esi, dl
	cmp	eax, esi
	jl	.label_398
.label_699:
	xor	eax, eax
	mov	rcx, qword ptr [rbp - 0x258]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rcx + 8]
	mov	dl, cl
	movsx	esi, dl
	sub	eax, esi
	lea	rsi, [rsi]
	cmp	eax, -0x80
	jl	.label_398
	mov	eax, 0x7f
	nop	
	xor	ecx, ecx
	mov	rdx, qword ptr [rbp - 0x258]
	mov	rbp, rbp
	mov	rdx, qword ptr [rdx + 8]
	lea	rdi, [rdi]
	mov	sil, dl
	movsx	edi, sil
	nop	
	sub	ecx, edi
	mov	rsp, rsp
	cmp	eax, ecx
	jge	.label_757
.label_398:
	mov	rbp, rbp
	mov	al, 1
	xor	ecx, ecx
	mov	rdx, qword ptr [rbp - 0x258]
	mov	rdx, qword ptr [rdx + 8]
	nop	
	mov	sil, dl
	movsx	edi, sil
	sub	ecx, edi
	mov	sil, cl
	movsx	rdx, sil
	mov	r8, qword ptr [rbp - 0x5c0]
	lea	rdi, [rdi]
	mov	qword ptr [r8 + 0x28], rdx
	nop	
	test	al, 1
	lea	rsi, [rsi]
	jne	.label_179
	nop	
	jmp	.label_285
.label_757:
	lea	rsi, [rsi]
	xor	eax, eax
	mov	rsp, rsp
	mov	cl, al
	xor	eax, eax
	mov	rdx, qword ptr [rbp - 0x258]
	mov	rdx, qword ptr [rdx + 8]
	mov	rbp, rbp
	mov	sil, dl
	mov	rbp, rbp
	movsx	edi, sil
	sub	eax, edi
	mov	rsp, rsp
	mov	sil, al
	nop	
	movsx	rdx, sil
	mov	r8, qword ptr [rbp - 0x5c0]
	lea	rdi, [rdi]
	mov	qword ptr [r8 + 0x28], rdx
	test	cl, 1
	mov	rsp, rsp
	jne	.label_179
	nop	
	jmp	.label_285
.label_673:
	mov	al, 1
	nop	
	test	al, 1
	nop	
	jne	.label_797
	mov	rbp, rbp
	jmp	.label_800
.label_797:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x258]
	cmp	qword ptr [rax + 8], 0
	lea	rsi, [rsi]
	jge	.label_803
	mov	rax, qword ptr [rbp - 0x258]
	movabs	rcx, 0x7fffffffffffffff
	add	rcx, qword ptr [rax + 8]
	mov	rsp, rsp
	cmp	rcx, 0
	lea	rsi, [rsi]
	jl	.label_818
	lea	rdi, [rdi]
	jmp	.label_817
.label_803:
	xor	eax, eax
	lea	rdi, [rdi]
	mov	ecx, eax
	nop	
	mov	rdx, qword ptr [rbp - 0x258]
	lea	rsi, [rsi]
	movabs	rsi, 0x8000000000000000
	add	rsi, qword ptr [rdx + 8]
	nop	
	cmp	rcx, rsi
	jl	.label_818
	jmp	.label_817
.label_800:
	xor	eax, eax
	mov	cl, al
	mov	rsp, rsp
	test	cl, 1
	lea	rdi, [rdi]
	jne	.label_830
	lea	rdi, [rdi]
	jmp	.label_837
.label_830:
	mov	al, 1
	test	al, 1
	nop	
	jne	.label_818
	jmp	.label_817
.label_837:
	mov	rax, qword ptr [rbp - 0x258]
	mov	rbp, rbp
	cmp	qword ptr [rax + 8], 0
	nop	
	jge	.label_1071
	xor	eax, eax
	mov	ecx, eax
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x258]
	mov	rsp, rsp
	sub	rcx, qword ptr [rdx + 8]
	lea	rdi, [rdi]
	cmp	rcx, 0
	mov	rbp, rbp
	jle	.label_818
	jmp	.label_817
.label_1071:
	xor	eax, eax
	mov	rsp, rsp
	mov	ecx, eax
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x258]
	mov	rbp, rbp
	cmp	rcx, qword ptr [rdx + 8]
	jl	.label_818
.label_817:
	xor	eax, eax
	lea	rdi, [rdi]
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x258]
	mov	rsp, rsp
	sub	rcx, qword ptr [rdx + 8]
	cmp	rcx, -0x80
	nop	
	jl	.label_818
	mov	rsp, rsp
	mov	eax, 0x7f
	mov	ecx, eax
	lea	rdi, [rdi]
	xor	eax, eax
	lea	rsi, [rsi]
	mov	edx, eax
	mov	rsi, qword ptr [rbp - 0x258]
	mov	rsp, rsp
	sub	rdx, qword ptr [rsi + 8]
	cmp	rcx, rdx
	mov	rbp, rbp
	jge	.label_878
.label_818:
	nop	
	mov	al, 1
	mov	rsp, rsp
	xor	ecx, ecx
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x258]
	mov	rdx, qword ptr [rdx + 8]
	mov	esi, edx
	sub	ecx, esi
	mov	rbp, rbp
	mov	dil, cl
	nop	
	movsx	rdx, dil
	lea	rsi, [rsi]
	mov	r8, qword ptr [rbp - 0x5c0]
	mov	rsp, rsp
	mov	qword ptr [r8 + 0x28], rdx
	nop	
	test	al, 1
	jne	.label_179
	lea	rsi, [rsi]
	jmp	.label_285
.label_878:
	lea	rdi, [rdi]
	xor	eax, eax
	mov	rsp, rsp
	mov	cl, al
	xor	eax, eax
	mov	rdx, qword ptr [rbp - 0x258]
	mov	rbp, rbp
	mov	rdx, qword ptr [rdx + 8]
	mov	esi, edx
	lea	rsi, [rsi]
	sub	eax, esi
	nop	
	mov	dil, al
	movsx	rdx, dil
	mov	r8, qword ptr [rbp - 0x5c0]
	mov	qword ptr [r8 + 0x28], rdx
	mov	rsp, rsp
	test	cl, 1
	lea	rsi, [rsi]
	jne	.label_179
	jmp	.label_285
.label_668:
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_908
	lea	rsi, [rsi]
	jmp	.label_909
.label_908:
	nop	
	xor	eax, eax
	mov	cl, al
	lea	rdi, [rdi]
	test	cl, 1
	nop	
	jne	.label_913
	mov	rbp, rbp
	jmp	.label_917
.label_913:
	lea	rsi, [rsi]
	mov	al, 1
	lea	rsi, [rsi]
	test	al, 1
	jne	.label_919
	nop	
	jmp	.label_921
.label_919:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x258]
	nop	
	mov	rax, qword ptr [rax + 8]
	mov	cx, ax
	movsx	edx, cx
	cmp	edx, 0
	lea	rsi, [rsi]
	jge	.label_923
	mov	rax, qword ptr [rbp - 0x258]
	mov	rax, qword ptr [rax + 8]
	mov	cx, ax
	mov	rsp, rsp
	movsx	edx, cx
	mov	rbp, rbp
	add	edx, 0x7fffffff
	nop	
	cmp	edx, 0
	jl	.label_604
	jmp	.label_943
.label_923:
	mov	rsp, rsp
	xor	eax, eax
	nop	
	mov	rcx, qword ptr [rbp - 0x258]
	mov	rcx, qword ptr [rcx + 8]
	mov	rsp, rsp
	mov	dx, cx
	movsx	esi, dx
	add	esi, 0x80000000
	mov	rbp, rbp
	cmp	eax, esi
	nop	
	jl	.label_604
	jmp	.label_943
.label_921:
	lea	rsi, [rsi]
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	nop	
	jne	.label_954
	jmp	.label_960
.label_954:
	mov	al, 1
	lea	rdi, [rdi]
	test	al, 1
	jne	.label_604
	jmp	.label_943
.label_960:
	mov	rax, qword ptr [rbp - 0x258]
	mov	rax, qword ptr [rax + 8]
	mov	cx, ax
	movsx	edx, cx
	mov	rbp, rbp
	cmp	edx, 0
	mov	rsp, rsp
	jge	.label_971
	mov	rsp, rsp
	xor	eax, eax
	mov	rcx, qword ptr [rbp - 0x258]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rcx + 8]
	nop	
	mov	dx, cx
	movsx	esi, dx
	mov	rsp, rsp
	sub	eax, esi
	mov	rsp, rsp
	cmp	eax, 0
	mov	rbp, rbp
	jle	.label_604
	jmp	.label_943
.label_971:
	xor	eax, eax
	mov	rcx, qword ptr [rbp - 0x258]
	mov	rsp, rsp
	mov	rcx, qword ptr [rcx + 8]
	mov	dx, cx
	mov	rbp, rbp
	movsx	esi, dx
	nop	
	cmp	eax, esi
	mov	rsp, rsp
	jl	.label_604
.label_943:
	xor	eax, eax
	mov	rcx, qword ptr [rbp - 0x258]
	mov	rbp, rbp
	mov	rcx, qword ptr [rcx + 8]
	nop	
	mov	dx, cx
	lea	rsi, [rsi]
	movsx	esi, dx
	sub	eax, esi
	nop	
	cmp	eax, 0xffff8000
	jl	.label_604
	mov	eax, 0x7fff
	xor	ecx, ecx
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x258]
	mov	rdx, qword ptr [rdx + 8]
	mov	rsp, rsp
	mov	si, dx
	nop	
	movsx	edi, si
	nop	
	sub	ecx, edi
	mov	rsp, rsp
	cmp	eax, ecx
	jge	.label_1006
.label_604:
	mov	rsp, rsp
	mov	al, 1
	xor	ecx, ecx
	mov	rdx, qword ptr [rbp - 0x258]
	mov	rbp, rbp
	mov	rdx, qword ptr [rdx + 8]
	nop	
	mov	si, dx
	nop	
	movsx	edi, si
	sub	ecx, edi
	mov	rbp, rbp
	mov	si, cx
	lea	rsi, [rsi]
	movsx	rdx, si
	mov	r8, qword ptr [rbp - 0x5c0]
	nop	
	mov	qword ptr [r8 + 0x28], rdx
	lea	rdi, [rdi]
	test	al, 1
	nop	
	jne	.label_179
	lea	rsi, [rsi]
	jmp	.label_285
.label_1006:
	xor	eax, eax
	mov	cl, al
	xor	eax, eax
	mov	rdx, qword ptr [rbp - 0x258]
	mov	rsp, rsp
	mov	rdx, qword ptr [rdx + 8]
	mov	si, dx
	movsx	edi, si
	sub	eax, edi
	mov	si, ax
	movsx	rdx, si
	lea	rsi, [rsi]
	mov	r8, qword ptr [rbp - 0x5c0]
	mov	qword ptr [r8 + 0x28], rdx
	lea	rdi, [rdi]
	test	cl, 1
	lea	rdi, [rdi]
	jne	.label_179
	nop	
	jmp	.label_285
.label_917:
	mov	rbp, rbp
	mov	al, 1
	lea	rsi, [rsi]
	test	al, 1
	jne	.label_1034
	mov	rsp, rsp
	jmp	.label_1038
.label_1034:
	mov	rax, qword ptr [rbp - 0x258]
	cmp	qword ptr [rax + 8], 0
	jge	.label_1043
	mov	rax, qword ptr [rbp - 0x258]
	lea	rsi, [rsi]
	movabs	rcx, 0x7fffffffffffffff
	lea	rsi, [rsi]
	add	rcx, qword ptr [rax + 8]
	cmp	rcx, 0
	mov	rbp, rbp
	jl	.label_562
	jmp	.label_506
.label_1043:
	mov	rsp, rsp
	xor	eax, eax
	mov	ecx, eax
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x258]
	movabs	rsi, 0x8000000000000000
	nop	
	add	rsi, qword ptr [rdx + 8]
	cmp	rcx, rsi
	jl	.label_562
	jmp	.label_506
.label_1038:
	lea	rsi, [rsi]
	xor	eax, eax
	mov	rsp, rsp
	mov	cl, al
	lea	rdi, [rdi]
	test	cl, 1
	mov	rsp, rsp
	jne	.label_1066
	lea	rsi, [rsi]
	jmp	.label_661
.label_1066:
	lea	rdi, [rdi]
	mov	al, 1
	test	al, 1
	jne	.label_562
	lea	rdi, [rdi]
	jmp	.label_506
.label_661:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x258]
	cmp	qword ptr [rax + 8], 0
	jge	.label_1080
	xor	eax, eax
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x258]
	sub	rcx, qword ptr [rdx + 8]
	cmp	rcx, 0
	lea	rdi, [rdi]
	jle	.label_562
	jmp	.label_506
.label_1080:
	xor	eax, eax
	mov	ecx, eax
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x258]
	cmp	rcx, qword ptr [rdx + 8]
	jl	.label_562
.label_506:
	xor	eax, eax
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x258]
	lea	rsi, [rsi]
	sub	rcx, qword ptr [rdx + 8]
	cmp	rcx, -0x8000
	mov	rbp, rbp
	jl	.label_562
	nop	
	mov	eax, 0x7fff
	lea	rsi, [rsi]
	mov	ecx, eax
	lea	rdi, [rdi]
	xor	eax, eax
	mov	edx, eax
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x258]
	sub	rdx, qword ptr [rsi + 8]
	lea	rsi, [rsi]
	cmp	rcx, rdx
	mov	rbp, rbp
	jge	.label_1108
.label_562:
	nop	
	mov	al, 1
	mov	rbp, rbp
	xor	ecx, ecx
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x258]
	mov	rdx, qword ptr [rdx + 8]
	mov	rbp, rbp
	mov	esi, edx
	sub	ecx, esi
	mov	di, cx
	mov	rbp, rbp
	movsx	rdx, di
	nop	
	mov	r8, qword ptr [rbp - 0x5c0]
	mov	qword ptr [r8 + 0x28], rdx
	lea	rsi, [rsi]
	test	al, 1
	lea	rdi, [rdi]
	jne	.label_179
	mov	rsp, rsp
	jmp	.label_285
.label_1108:
	xor	eax, eax
	mov	rsp, rsp
	mov	cl, al
	nop	
	xor	eax, eax
	mov	rdx, qword ptr [rbp - 0x258]
	mov	rdx, qword ptr [rdx + 8]
	mov	esi, edx
	sub	eax, esi
	lea	rdi, [rdi]
	mov	di, ax
	movsx	rdx, di
	lea	rdi, [rdi]
	mov	r8, qword ptr [rbp - 0x5c0]
	lea	rdi, [rdi]
	mov	qword ptr [r8 + 0x28], rdx
	test	cl, 1
	jne	.label_179
	lea	rsi, [rsi]
	jmp	.label_285
.label_909:
	xor	eax, eax
	mov	cl, al
	lea	rdi, [rdi]
	test	cl, 1
	jne	.label_1146
	lea	rdi, [rdi]
	jmp	.label_1127
.label_1146:
	xor	eax, eax
	mov	cl, al
	nop	
	test	cl, 1
	lea	rsi, [rsi]
	jne	.label_1133
	jmp	.label_133
.label_1133:
	mov	al, 1
	test	al, 1
	jne	.label_134
	lea	rsi, [rsi]
	jmp	.label_139
.label_134:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x258]
	mov	rax, qword ptr [rax + 8]
	mov	ecx, eax
	cmp	ecx, 0
	jge	.label_143
	mov	rax, qword ptr [rbp - 0x258]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax + 8]
	mov	ecx, eax
	add	ecx, 0x7fffffff
	mov	rsp, rsp
	cmp	ecx, 0
	jl	.label_159
	jmp	.label_169
.label_143:
	mov	rsp, rsp
	xor	eax, eax
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x258]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rcx + 8]
	mov	edx, ecx
	add	edx, 0x80000000
	cmp	eax, edx
	lea	rsi, [rsi]
	jl	.label_159
	jmp	.label_169
.label_139:
	lea	rdi, [rdi]
	xor	eax, eax
	mov	rsp, rsp
	mov	cl, al
	test	cl, 1
	nop	
	jne	.label_201
	mov	rsp, rsp
	jmp	.label_211
.label_201:
	mov	al, 1
	mov	rbp, rbp
	test	al, 1
	jne	.label_159
	jmp	.label_169
.label_211:
	mov	rax, qword ptr [rbp - 0x258]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax + 8]
	mov	ecx, eax
	mov	rbp, rbp
	cmp	ecx, 0
	nop	
	jge	.label_220
	xor	eax, eax
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x258]
	mov	rcx, qword ptr [rcx + 8]
	mov	edx, ecx
	lea	rsi, [rsi]
	sub	eax, edx
	cmp	eax, 0
	nop	
	jle	.label_159
	nop	
	jmp	.label_169
.label_220:
	xor	eax, eax
	mov	rcx, qword ptr [rbp - 0x258]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rcx + 8]
	mov	edx, ecx
	lea	rdi, [rdi]
	cmp	eax, edx
	jl	.label_159
.label_169:
	xor	eax, eax
	mov	rcx, qword ptr [rbp - 0x258]
	nop	
	mov	rcx, qword ptr [rcx + 8]
	mov	rsp, rsp
	mov	edx, ecx
	nop	
	sub	eax, edx
	cmp	eax, 0x80000000
	mov	rbp, rbp
	jl	.label_159
	mov	eax, 0x7fffffff
	lea	rdi, [rdi]
	xor	ecx, ecx
	mov	rdx, qword ptr [rbp - 0x258]
	mov	rdx, qword ptr [rdx + 8]
	lea	rdi, [rdi]
	mov	esi, edx
	sub	ecx, esi
	lea	rdi, [rdi]
	cmp	eax, ecx
	jge	.label_263
.label_159:
	mov	al, 1
	lea	rdi, [rdi]
	xor	ecx, ecx
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x258]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rdx + 8]
	mov	esi, edx
	lea	rdi, [rdi]
	sub	ecx, esi
	movsxd	rdx, ecx
	nop	
	mov	rdi, qword ptr [rbp - 0x5c0]
	mov	qword ptr [rdi + 0x28], rdx
	lea	rsi, [rsi]
	test	al, 1
	lea	rdi, [rdi]
	jne	.label_179
	jmp	.label_285
.label_263:
	xor	eax, eax
	lea	rsi, [rsi]
	mov	cl, al
	xor	eax, eax
	mov	rdx, qword ptr [rbp - 0x258]
	mov	rbp, rbp
	mov	rdx, qword ptr [rdx + 8]
	mov	rbp, rbp
	mov	esi, edx
	mov	rbp, rbp
	sub	eax, esi
	mov	rsp, rsp
	movsxd	rdx, eax
	mov	rdi, qword ptr [rbp - 0x5c0]
	lea	rsi, [rsi]
	mov	qword ptr [rdi + 0x28], rdx
	test	cl, 1
	jne	.label_179
	jmp	.label_285
.label_133:
	mov	al, 1
	test	al, 1
	jne	.label_670
	lea	rdi, [rdi]
	jmp	.label_308
.label_670:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x258]
	cmp	qword ptr [rax + 8], 0
	jge	.label_309
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x258]
	mov	rbp, rbp
	movabs	rcx, 0x7fffffffffffffff
	add	rcx, qword ptr [rax + 8]
	lea	rsi, [rsi]
	cmp	rcx, 0
	jl	.label_316
	lea	rsi, [rsi]
	jmp	.label_236
.label_309:
	lea	rdi, [rdi]
	xor	eax, eax
	mov	ecx, eax
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x258]
	lea	rdi, [rdi]
	movabs	rsi, 0x8000000000000000
	add	rsi, qword ptr [rdx + 8]
	mov	rsp, rsp
	cmp	rcx, rsi
	lea	rdi, [rdi]
	jl	.label_316
	lea	rdi, [rdi]
	jmp	.label_236
.label_308:
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	mov	rsp, rsp
	jne	.label_345
	jmp	.label_1114
.label_345:
	mov	al, 1
	lea	rdi, [rdi]
	test	al, 1
	mov	rbp, rbp
	jne	.label_316
	jmp	.label_236
.label_1114:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x258]
	cmp	qword ptr [rax + 8], 0
	mov	rsp, rsp
	jge	.label_357
	xor	eax, eax
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x258]
	sub	rcx, qword ptr [rdx + 8]
	cmp	rcx, 0
	jle	.label_316
	lea	rdi, [rdi]
	jmp	.label_236
.label_357:
	lea	rsi, [rsi]
	xor	eax, eax
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x258]
	cmp	rcx, qword ptr [rdx + 8]
	jl	.label_316
.label_236:
	lea	rdi, [rdi]
	xor	eax, eax
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x258]
	sub	rcx, qword ptr [rdx + 8]
	cmp	rcx, -0x80000000
	mov	rsp, rsp
	jl	.label_316
	lea	rsi, [rsi]
	mov	eax, 0x7fffffff
	mov	ecx, eax
	xor	eax, eax
	lea	rdi, [rdi]
	mov	edx, eax
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x258]
	lea	rdi, [rdi]
	sub	rdx, qword ptr [rsi + 8]
	mov	rsp, rsp
	cmp	rcx, rdx
	jge	.label_386
.label_316:
	mov	rsp, rsp
	mov	al, 1
	xor	ecx, ecx
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x258]
	mov	rsp, rsp
	mov	rdx, qword ptr [rdx + 8]
	mov	rsp, rsp
	mov	esi, edx
	lea	rdi, [rdi]
	sub	ecx, esi
	mov	rbp, rbp
	movsxd	rdx, ecx
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x5c0]
	mov	qword ptr [rdi + 0x28], rdx
	test	al, 1
	mov	rsp, rsp
	jne	.label_179
	jmp	.label_285
.label_386:
	mov	rbp, rbp
	xor	eax, eax
	nop	
	mov	cl, al
	lea	rsi, [rsi]
	xor	eax, eax
	mov	rdx, qword ptr [rbp - 0x258]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rdx + 8]
	lea	rsi, [rsi]
	mov	esi, edx
	sub	eax, esi
	movsxd	rdx, eax
	nop	
	mov	rdi, qword ptr [rbp - 0x5c0]
	nop	
	mov	qword ptr [rdi + 0x28], rdx
	test	cl, 1
	lea	rdi, [rdi]
	jne	.label_179
	jmp	.label_285
.label_1127:
	mov	al, 1
	mov	rbp, rbp
	test	al, 1
	jne	.label_430
	nop	
	jmp	.label_431
.label_430:
	xor	eax, eax
	mov	cl, al
	nop	
	test	cl, 1
	jne	.label_433
	lea	rdi, [rdi]
	jmp	.label_437
.label_433:
	lea	rdi, [rdi]
	mov	al, 1
	lea	rdi, [rdi]
	test	al, 1
	lea	rsi, [rsi]
	jne	.label_441
	jmp	.label_443
.label_441:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x258]
	mov	rsp, rsp
	cmp	qword ptr [rax + 8], 0
	jge	.label_445
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x258]
	mov	rbp, rbp
	movabs	rcx, 0x7fffffffffffffff
	lea	rsi, [rsi]
	add	rcx, qword ptr [rax + 8]
	mov	rsp, rsp
	cmp	rcx, 0
	mov	rsp, rsp
	jl	.label_408
	lea	rsi, [rsi]
	jmp	.label_467
.label_445:
	lea	rsi, [rsi]
	xor	eax, eax
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x258]
	movabs	rsi, 0x8000000000000000
	add	rsi, qword ptr [rdx + 8]
	lea	rsi, [rsi]
	cmp	rcx, rsi
	jl	.label_408
	lea	rdi, [rdi]
	jmp	.label_467
.label_443:
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	nop	
	jne	.label_487
	mov	rbp, rbp
	jmp	.label_903
.label_487:
	lea	rsi, [rsi]
	mov	al, 1
	test	al, 1
	jne	.label_408
	jmp	.label_467
.label_903:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x258]
	mov	rbp, rbp
	cmp	qword ptr [rax + 8], 0
	lea	rdi, [rdi]
	jge	.label_503
	xor	eax, eax
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x258]
	sub	rcx, qword ptr [rdx + 8]
	lea	rdi, [rdi]
	cmp	rcx, 0
	jle	.label_408
	nop	
	jmp	.label_467
.label_503:
	xor	eax, eax
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x258]
	cmp	rcx, qword ptr [rdx + 8]
	mov	rbp, rbp
	jl	.label_408
.label_467:
	movabs	rax, 0x8000000000000000
	xor	ecx, ecx
	lea	rdi, [rdi]
	mov	edx, ecx
	nop	
	mov	rsi, qword ptr [rbp - 0x258]
	mov	rsp, rsp
	sub	rdx, qword ptr [rsi + 8]
	nop	
	cmp	rdx, rax
	lea	rdi, [rdi]
	jl	.label_408
	mov	rbp, rbp
	movabs	rax, 0x7fffffffffffffff
	lea	rsi, [rsi]
	xor	ecx, ecx
	lea	rdi, [rdi]
	mov	edx, ecx
	mov	rsi, qword ptr [rbp - 0x258]
	mov	rsp, rsp
	sub	rdx, qword ptr [rsi + 8]
	cmp	rax, rdx
	mov	rbp, rbp
	jge	.label_536
.label_408:
	lea	rsi, [rsi]
	mov	al, 1
	lea	rsi, [rsi]
	xor	ecx, ecx
	mov	edx, ecx
	mov	rsi, qword ptr [rbp - 0x258]
	lea	rsi, [rsi]
	sub	rdx, qword ptr [rsi + 8]
	mov	rsi, qword ptr [rbp - 0x5c0]
	mov	qword ptr [rsi + 0x28], rdx
	mov	rsp, rsp
	test	al, 1
	nop	
	jne	.label_179
	lea	rsi, [rsi]
	jmp	.label_285
.label_536:
	mov	rbp, rbp
	xor	eax, eax
	nop	
	mov	cl, al
	mov	rsp, rsp
	xor	eax, eax
	mov	rsp, rsp
	mov	edx, eax
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x258]
	lea	rsi, [rsi]
	sub	rdx, qword ptr [rsi + 8]
	mov	rsi, qword ptr [rbp - 0x5c0]
	lea	rdi, [rdi]
	mov	qword ptr [rsi + 0x28], rdx
	mov	rsp, rsp
	test	cl, 1
	jne	.label_179
	lea	rdi, [rdi]
	jmp	.label_285
.label_437:
	mov	al, 1
	nop	
	test	al, 1
	lea	rsi, [rsi]
	jne	.label_572
	jmp	.label_577
.label_572:
	mov	rax, qword ptr [rbp - 0x258]
	lea	rsi, [rsi]
	cmp	qword ptr [rax + 8], 0
	jge	.label_607
	mov	rax, qword ptr [rbp - 0x258]
	lea	rsi, [rsi]
	movabs	rcx, 0x7fffffffffffffff
	lea	rdi, [rdi]
	add	rcx, qword ptr [rax + 8]
	cmp	rcx, 0
	jl	.label_141
	lea	rdi, [rdi]
	jmp	.label_596
.label_607:
	xor	eax, eax
	nop	
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x258]
	movabs	rsi, 0x8000000000000000
	mov	rbp, rbp
	add	rsi, qword ptr [rdx + 8]
	cmp	rcx, rsi
	nop	
	jl	.label_141
	jmp	.label_596
.label_577:
	lea	rsi, [rsi]
	xor	eax, eax
	mov	rsp, rsp
	mov	cl, al
	lea	rdi, [rdi]
	test	cl, 1
	jne	.label_614
	lea	rsi, [rsi]
	jmp	.label_618
.label_614:
	lea	rsi, [rsi]
	mov	al, 1
	test	al, 1
	jne	.label_141
	jmp	.label_596
.label_618:
	mov	rax, qword ptr [rbp - 0x258]
	lea	rsi, [rsi]
	cmp	qword ptr [rax + 8], 0
	jge	.label_624
	xor	eax, eax
	mov	rsp, rsp
	mov	ecx, eax
	nop	
	mov	rdx, qword ptr [rbp - 0x258]
	sub	rcx, qword ptr [rdx + 8]
	lea	rdi, [rdi]
	cmp	rcx, 0
	jle	.label_141
	lea	rdi, [rdi]
	jmp	.label_596
.label_624:
	lea	rdi, [rdi]
	xor	eax, eax
	lea	rdi, [rdi]
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x258]
	lea	rdi, [rdi]
	cmp	rcx, qword ptr [rdx + 8]
	jl	.label_141
.label_596:
	lea	rsi, [rsi]
	movabs	rax, 0x8000000000000000
	nop	
	xor	ecx, ecx
	mov	rsp, rsp
	mov	edx, ecx
	nop	
	mov	rsi, qword ptr [rbp - 0x258]
	lea	rsi, [rsi]
	sub	rdx, qword ptr [rsi + 8]
	mov	rsp, rsp
	cmp	rdx, rax
	lea	rdi, [rdi]
	jl	.label_141
	lea	rsi, [rsi]
	movabs	rax, 0x7fffffffffffffff
	xor	ecx, ecx
	mov	edx, ecx
	nop	
	mov	rsi, qword ptr [rbp - 0x258]
	lea	rdi, [rdi]
	sub	rdx, qword ptr [rsi + 8]
	lea	rsi, [rsi]
	cmp	rax, rdx
	lea	rsi, [rsi]
	jge	.label_868
.label_141:
	lea	rdi, [rdi]
	mov	al, 1
	lea	rsi, [rsi]
	xor	ecx, ecx
	lea	rdi, [rdi]
	mov	edx, ecx
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x258]
	sub	rdx, qword ptr [rsi + 8]
	nop	
	mov	rsi, qword ptr [rbp - 0x5c0]
	lea	rsi, [rsi]
	mov	qword ptr [rsi + 0x28], rdx
	test	al, 1
	jne	.label_179
	jmp	.label_285
.label_868:
	mov	rbp, rbp
	xor	eax, eax
	lea	rsi, [rsi]
	mov	cl, al
	mov	rbp, rbp
	xor	eax, eax
	mov	rsp, rsp
	mov	edx, eax
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x258]
	sub	rdx, qword ptr [rsi + 8]
	mov	rsi, qword ptr [rbp - 0x5c0]
	mov	qword ptr [rsi + 0x28], rdx
	test	cl, 1
	jne	.label_179
	jmp	.label_285
.label_431:
	mov	rsp, rsp
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_680
	mov	rbp, rbp
	jmp	.label_683
.label_680:
	mov	al, 1
	lea	rsi, [rsi]
	test	al, 1
	jne	.label_686
	lea	rdi, [rdi]
	jmp	.label_691
.label_686:
	mov	rax, qword ptr [rbp - 0x258]
	nop	
	cmp	qword ptr [rax + 8], 0
	jge	.label_694
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x258]
	mov	rsp, rsp
	movabs	rcx, 0x7fffffffffffffff
	add	rcx, qword ptr [rax + 8]
	cmp	rcx, 0
	mov	rsp, rsp
	jl	.label_453
	lea	rsi, [rsi]
	jmp	.label_722
.label_694:
	lea	rdi, [rdi]
	xor	eax, eax
	mov	ecx, eax
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x258]
	movabs	rsi, 0x8000000000000000
	mov	rbp, rbp
	add	rsi, qword ptr [rdx + 8]
	mov	rbp, rbp
	cmp	rcx, rsi
	lea	rsi, [rsi]
	jl	.label_453
	nop	
	jmp	.label_722
.label_691:
	mov	rsp, rsp
	xor	eax, eax
	mov	cl, al
	mov	rbp, rbp
	test	cl, 1
	jne	.label_724
	jmp	.label_379
.label_724:
	mov	al, 1
	mov	rbp, rbp
	test	al, 1
	jne	.label_453
	nop	
	jmp	.label_722
.label_379:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x258]
	lea	rsi, [rsi]
	cmp	qword ptr [rax + 8], 0
	mov	rbp, rbp
	jge	.label_540
	mov	rsp, rsp
	xor	eax, eax
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x258]
	sub	rcx, qword ptr [rdx + 8]
	mov	rbp, rbp
	cmp	rcx, 0
	jle	.label_453
	jmp	.label_722
.label_540:
	xor	eax, eax
	mov	ecx, eax
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x258]
	cmp	rcx, qword ptr [rdx + 8]
	jl	.label_453
.label_722:
	lea	rdi, [rdi]
	movabs	rax, 0x8000000000000000
	xor	ecx, ecx
	mov	rsp, rsp
	mov	edx, ecx
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x258]
	sub	rdx, qword ptr [rsi + 8]
	lea	rsi, [rsi]
	cmp	rdx, rax
	lea	rdi, [rdi]
	jl	.label_453
	movabs	rax, 0x7fffffffffffffff
	xor	ecx, ecx
	mov	edx, ecx
	mov	rsi, qword ptr [rbp - 0x258]
	lea	rdi, [rdi]
	sub	rdx, qword ptr [rsi + 8]
	cmp	rax, rdx
	jge	.label_766
.label_453:
	lea	rsi, [rsi]
	mov	al, 1
	xor	ecx, ecx
	mov	edx, ecx
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x258]
	mov	rsp, rsp
	sub	rdx, qword ptr [rsi + 8]
	mov	rsi, qword ptr [rbp - 0x5c0]
	lea	rsi, [rsi]
	mov	qword ptr [rsi + 0x28], rdx
	lea	rdi, [rdi]
	test	al, 1
	lea	rdi, [rdi]
	jne	.label_179
	jmp	.label_285
.label_766:
	xor	eax, eax
	mov	rbp, rbp
	mov	cl, al
	xor	eax, eax
	mov	edx, eax
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x258]
	sub	rdx, qword ptr [rsi + 8]
	mov	rsi, qword ptr [rbp - 0x5c0]
	mov	rsp, rsp
	mov	qword ptr [rsi + 0x28], rdx
	test	cl, 1
	mov	rsp, rsp
	jne	.label_179
	mov	rsp, rsp
	jmp	.label_285
.label_683:
	mov	rbp, rbp
	mov	al, 1
	test	al, 1
	lea	rsi, [rsi]
	jne	.label_835
	lea	rdi, [rdi]
	jmp	.label_802
.label_835:
	mov	rax, qword ptr [rbp - 0x258]
	mov	rbp, rbp
	cmp	qword ptr [rax + 8], 0
	jge	.label_804
	mov	rax, qword ptr [rbp - 0x258]
	nop	
	movabs	rcx, 0x7fffffffffffffff
	mov	rbp, rbp
	add	rcx, qword ptr [rax + 8]
	cmp	rcx, 0
	jl	.label_136
	jmp	.label_407
.label_804:
	nop	
	xor	eax, eax
	mov	rbp, rbp
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x258]
	lea	rdi, [rdi]
	movabs	rsi, 0x8000000000000000
	lea	rdi, [rdi]
	add	rsi, qword ptr [rdx + 8]
	cmp	rcx, rsi
	jl	.label_136
	lea	rsi, [rsi]
	jmp	.label_407
.label_802:
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	lea	rsi, [rsi]
	jne	.label_666
	lea	rsi, [rsi]
	jmp	.label_780
.label_666:
	nop	
	mov	al, 1
	mov	rbp, rbp
	test	al, 1
	jne	.label_136
	nop	
	jmp	.label_407
.label_780:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x258]
	cmp	qword ptr [rax + 8], 0
	jge	.label_1117
	lea	rsi, [rsi]
	xor	eax, eax
	mov	ecx, eax
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x258]
	lea	rdi, [rdi]
	sub	rcx, qword ptr [rdx + 8]
	cmp	rcx, 0
	lea	rdi, [rdi]
	jle	.label_136
	jmp	.label_407
.label_1117:
	mov	rsp, rsp
	xor	eax, eax
	lea	rsi, [rsi]
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x258]
	cmp	rcx, qword ptr [rdx + 8]
	lea	rsi, [rsi]
	jl	.label_136
.label_407:
	movabs	rax, 0x8000000000000000
	nop	
	xor	ecx, ecx
	nop	
	mov	edx, ecx
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x258]
	mov	rbp, rbp
	sub	rdx, qword ptr [rsi + 8]
	lea	rdi, [rdi]
	cmp	rdx, rax
	nop	
	jl	.label_136
	movabs	rax, 0x7fffffffffffffff
	mov	rbp, rbp
	xor	ecx, ecx
	lea	rsi, [rsi]
	mov	edx, ecx
	nop	
	mov	rsi, qword ptr [rbp - 0x258]
	sub	rdx, qword ptr [rsi + 8]
	lea	rsi, [rsi]
	cmp	rax, rdx
	mov	rsp, rsp
	jge	.label_296
.label_136:
	mov	rsp, rsp
	mov	al, 1
	mov	rbp, rbp
	xor	ecx, ecx
	nop	
	mov	edx, ecx
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x258]
	lea	rsi, [rsi]
	sub	rdx, qword ptr [rsi + 8]
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x5c0]
	mov	rsp, rsp
	mov	qword ptr [rsi + 0x28], rdx
	mov	rsp, rsp
	test	al, 1
	lea	rdi, [rdi]
	jne	.label_179
	jmp	.label_285
.label_296:
	mov	rbp, rbp
	xor	eax, eax
	mov	rsp, rsp
	mov	cl, al
	lea	rdi, [rdi]
	xor	eax, eax
	mov	edx, eax
	mov	rsi, qword ptr [rbp - 0x258]
	lea	rsi, [rsi]
	sub	rdx, qword ptr [rsi + 8]
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x5c0]
	lea	rsi, [rsi]
	mov	qword ptr [rsi + 0x28], rdx
	test	cl, 1
	lea	rdi, [rdi]
	jne	.label_179
	lea	rsi, [rsi]
	jmp	.label_285
.label_179:
	lea	rdi, [rdi]
	jmp	.label_146
.label_285:
	mov	rax, qword ptr [rbp - 0x258]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax + 0x10]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x5c0]
	mov	rbp, rbp
	mov	qword ptr [rcx + 0x30], rax
	mov	rbp, rbp
	jmp	.label_148
.label_5139:
	xor	eax, eax
	mov	cl, al
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x258]
	mov	rdx, qword ptr [rdx - 0x70]
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x5c0]
	mov	qword ptr [rsi + 0x38], rdx
	test	cl, 1
	mov	rsp, rsp
	jne	.label_920
	mov	rbp, rbp
	jmp	.label_931
.label_920:
	mov	rsp, rsp
	xor	eax, eax
	lea	rsi, [rsi]
	mov	cl, al
	nop	
	test	cl, 1
	jne	.label_933
	lea	rsi, [rsi]
	jmp	.label_940
.label_933:
	lea	rdi, [rdi]
	mov	al, 1
	mov	rsp, rsp
	test	al, 1
	lea	rdi, [rdi]
	jne	.label_941
	jmp	.label_945
.label_941:
	mov	rax, qword ptr [rbp - 0x258]
	mov	rax, qword ptr [rax - 0x30]
	lea	rdi, [rdi]
	mov	cl, al
	mov	rsp, rsp
	movsx	edx, cl
	cmp	edx, 0
	jge	.label_947
	nop	
	mov	rax, qword ptr [rbp - 0x258]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax - 0x30]
	mov	cl, al
	mov	rsp, rsp
	movsx	edx, cl
	nop	
	add	edx, 0x7fffffff
	nop	
	cmp	edx, 0
	mov	rsp, rsp
	jl	.label_836
	jmp	.label_968
.label_947:
	mov	rbp, rbp
	xor	eax, eax
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x258]
	mov	rcx, qword ptr [rcx - 0x30]
	mov	dl, cl
	nop	
	movsx	esi, dl
	add	esi, 0x80000000
	nop	
	cmp	eax, esi
	jl	.label_836
	jmp	.label_968
.label_945:
	mov	rbp, rbp
	xor	eax, eax
	mov	cl, al
	mov	rbp, rbp
	test	cl, 1
	nop	
	jne	.label_983
	mov	rbp, rbp
	jmp	.label_989
.label_983:
	mov	al, 1
	nop	
	test	al, 1
	jne	.label_836
	jmp	.label_968
.label_989:
	mov	rax, qword ptr [rbp - 0x258]
	nop	
	mov	rax, qword ptr [rax - 0x30]
	nop	
	mov	cl, al
	movsx	edx, cl
	mov	rsp, rsp
	cmp	edx, 0
	jge	.label_994
	nop	
	xor	eax, eax
	nop	
	mov	rcx, qword ptr [rbp - 0x258]
	nop	
	mov	rcx, qword ptr [rcx - 0x30]
	mov	dl, cl
	movsx	esi, dl
	sub	eax, esi
	lea	rsi, [rsi]
	cmp	eax, 0
	jle	.label_836
	mov	rbp, rbp
	jmp	.label_968
.label_994:
	mov	rsp, rsp
	xor	eax, eax
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x258]
	mov	rcx, qword ptr [rcx - 0x30]
	mov	dl, cl
	movsx	esi, dl
	lea	rsi, [rsi]
	cmp	eax, esi
	jl	.label_836
.label_968:
	xor	eax, eax
	mov	rcx, qword ptr [rbp - 0x258]
	mov	rcx, qword ptr [rcx - 0x30]
	mov	dl, cl
	lea	rdi, [rdi]
	movsx	esi, dl
	sub	eax, esi
	lea	rdi, [rdi]
	cmp	eax, -0x80
	mov	rbp, rbp
	jl	.label_836
	nop	
	mov	eax, 0x7f
	xor	ecx, ecx
	mov	rdx, qword ptr [rbp - 0x258]
	mov	rdx, qword ptr [rdx - 0x30]
	mov	sil, dl
	movsx	edi, sil
	sub	ecx, edi
	nop	
	cmp	eax, ecx
	jge	.label_1014
.label_836:
	mov	al, 1
	xor	ecx, ecx
	mov	rdx, qword ptr [rbp - 0x258]
	mov	rdx, qword ptr [rdx - 0x30]
	nop	
	mov	sil, dl
	lea	rdi, [rdi]
	movsx	edi, sil
	lea	rsi, [rsi]
	sub	ecx, edi
	nop	
	mov	sil, cl
	movsx	rdx, sil
	mov	r8, qword ptr [rbp - 0x5c0]
	mov	rsp, rsp
	mov	qword ptr [r8 + 0x40], rdx
	test	al, 1
	nop	
	jne	.label_297
	lea	rsi, [rsi]
	jmp	.label_150
.label_1014:
	lea	rdi, [rdi]
	xor	eax, eax
	mov	cl, al
	xor	eax, eax
	nop	
	mov	rdx, qword ptr [rbp - 0x258]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rdx - 0x30]
	lea	rsi, [rsi]
	mov	sil, dl
	movsx	edi, sil
	mov	rbp, rbp
	sub	eax, edi
	lea	rsi, [rsi]
	mov	sil, al
	movsx	rdx, sil
	mov	rsp, rsp
	mov	r8, qword ptr [rbp - 0x5c0]
	mov	qword ptr [r8 + 0x40], rdx
	test	cl, 1
	lea	rdi, [rdi]
	jne	.label_297
	nop	
	jmp	.label_150
.label_940:
	lea	rdi, [rdi]
	mov	al, 1
	test	al, 1
	jne	.label_547
	jmp	.label_560
.label_547:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x258]
	nop	
	cmp	qword ptr [rax - 0x30], 0
	lea	rsi, [rsi]
	jge	.label_1054
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x258]
	movabs	rcx, 0x7fffffffffffffff
	lea	rdi, [rdi]
	add	rcx, qword ptr [rax - 0x30]
	cmp	rcx, 0
	nop	
	jl	.label_1060
	lea	rsi, [rsi]
	jmp	.label_657
.label_1054:
	xor	eax, eax
	mov	rsp, rsp
	mov	ecx, eax
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x258]
	lea	rsi, [rsi]
	movabs	rsi, 0x8000000000000000
	add	rsi, qword ptr [rdx - 0x30]
	cmp	rcx, rsi
	jl	.label_1060
	jmp	.label_657
.label_560:
	xor	eax, eax
	lea	rdi, [rdi]
	mov	cl, al
	mov	rbp, rbp
	test	cl, 1
	jne	.label_1084
	jmp	.label_1089
.label_1084:
	mov	al, 1
	test	al, 1
	lea	rdi, [rdi]
	jne	.label_1060
	mov	rsp, rsp
	jmp	.label_657
.label_1089:
	mov	rax, qword ptr [rbp - 0x258]
	cmp	qword ptr [rax - 0x30], 0
	jge	.label_1097
	lea	rdi, [rdi]
	xor	eax, eax
	mov	rbp, rbp
	mov	ecx, eax
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x258]
	sub	rcx, qword ptr [rdx - 0x30]
	nop	
	cmp	rcx, 0
	mov	rsp, rsp
	jle	.label_1060
	jmp	.label_657
.label_1097:
	xor	eax, eax
	mov	ecx, eax
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x258]
	nop	
	cmp	rcx, qword ptr [rdx - 0x30]
	lea	rsi, [rsi]
	jl	.label_1060
.label_657:
	xor	eax, eax
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x258]
	sub	rcx, qword ptr [rdx - 0x30]
	cmp	rcx, -0x80
	lea	rdi, [rdi]
	jl	.label_1060
	lea	rdi, [rdi]
	mov	eax, 0x7f
	lea	rsi, [rsi]
	mov	ecx, eax
	mov	rsp, rsp
	xor	eax, eax
	mov	edx, eax
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x258]
	sub	rdx, qword ptr [rsi - 0x30]
	mov	rbp, rbp
	cmp	rcx, rdx
	lea	rdi, [rdi]
	jge	.label_1124
.label_1060:
	mov	al, 1
	lea	rsi, [rsi]
	xor	ecx, ecx
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x258]
	nop	
	mov	rdx, qword ptr [rdx - 0x30]
	mov	rsp, rsp
	mov	esi, edx
	sub	ecx, esi
	mov	dil, cl
	lea	rdi, [rdi]
	movsx	rdx, dil
	mov	rsp, rsp
	mov	r8, qword ptr [rbp - 0x5c0]
	lea	rsi, [rsi]
	mov	qword ptr [r8 + 0x40], rdx
	mov	rbp, rbp
	test	al, 1
	jne	.label_297
	jmp	.label_150
.label_1124:
	lea	rsi, [rsi]
	xor	eax, eax
	mov	cl, al
	xor	eax, eax
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x258]
	mov	rdx, qword ptr [rdx - 0x30]
	mov	esi, edx
	lea	rsi, [rsi]
	sub	eax, esi
	lea	rsi, [rsi]
	mov	dil, al
	mov	rbp, rbp
	movsx	rdx, dil
	mov	rsp, rsp
	mov	r8, qword ptr [rbp - 0x5c0]
	mov	rbp, rbp
	mov	qword ptr [r8 + 0x40], rdx
	test	cl, 1
	jne	.label_297
	mov	rsp, rsp
	jmp	.label_150
.label_931:
	nop	
	xor	eax, eax
	mov	rsp, rsp
	mov	cl, al
	test	cl, 1
	lea	rdi, [rdi]
	jne	.label_251
	jmp	.label_168
.label_251:
	mov	rbp, rbp
	xor	eax, eax
	mov	rsp, rsp
	mov	cl, al
	lea	rdi, [rdi]
	test	cl, 1
	jne	.label_171
	mov	rbp, rbp
	jmp	.label_183
.label_171:
	mov	al, 1
	mov	rsp, rsp
	test	al, 1
	nop	
	jne	.label_188
	mov	rbp, rbp
	jmp	.label_193
.label_188:
	mov	rax, qword ptr [rbp - 0x258]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax - 0x30]
	mov	cx, ax
	movsx	edx, cx
	cmp	edx, 0
	jge	.label_197
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x258]
	mov	rsp, rsp
	mov	rax, qword ptr [rax - 0x30]
	mov	cx, ax
	movsx	edx, cx
	lea	rsi, [rsi]
	add	edx, 0x7fffffff
	cmp	edx, 0
	jl	.label_207
	nop	
	jmp	.label_240
.label_197:
	xor	eax, eax
	mov	rcx, qword ptr [rbp - 0x258]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rcx - 0x30]
	mov	dx, cx
	mov	rsp, rsp
	movsx	esi, dx
	add	esi, 0x80000000
	cmp	eax, esi
	jl	.label_207
	mov	rbp, rbp
	jmp	.label_240
.label_193:
	lea	rdi, [rdi]
	xor	eax, eax
	mov	rbp, rbp
	mov	cl, al
	test	cl, 1
	nop	
	jne	.label_246
	lea	rsi, [rsi]
	jmp	.label_595
.label_246:
	mov	rbp, rbp
	mov	al, 1
	mov	rsp, rsp
	test	al, 1
	lea	rsi, [rsi]
	jne	.label_207
	jmp	.label_240
.label_595:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x258]
	mov	rax, qword ptr [rax - 0x30]
	lea	rsi, [rsi]
	mov	cx, ax
	movsx	edx, cx
	mov	rsp, rsp
	cmp	edx, 0
	jge	.label_260
	mov	rbp, rbp
	xor	eax, eax
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x258]
	mov	rcx, qword ptr [rcx - 0x30]
	mov	dx, cx
	movsx	esi, dx
	sub	eax, esi
	cmp	eax, 0
	jle	.label_207
	jmp	.label_240
.label_260:
	mov	rsp, rsp
	xor	eax, eax
	mov	rcx, qword ptr [rbp - 0x258]
	mov	rcx, qword ptr [rcx - 0x30]
	mov	rsp, rsp
	mov	dx, cx
	lea	rsi, [rsi]
	movsx	esi, dx
	nop	
	cmp	eax, esi
	nop	
	jl	.label_207
.label_240:
	lea	rsi, [rsi]
	xor	eax, eax
	mov	rcx, qword ptr [rbp - 0x258]
	nop	
	mov	rcx, qword ptr [rcx - 0x30]
	mov	dx, cx
	movsx	esi, dx
	mov	rsp, rsp
	sub	eax, esi
	cmp	eax, 0xffff8000
	jl	.label_207
	mov	eax, 0x7fff
	xor	ecx, ecx
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x258]
	mov	rbp, rbp
	mov	rdx, qword ptr [rdx - 0x30]
	mov	si, dx
	movsx	edi, si
	sub	ecx, edi
	nop	
	cmp	eax, ecx
	jge	.label_294
.label_207:
	mov	rsp, rsp
	mov	al, 1
	mov	rbp, rbp
	xor	ecx, ecx
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x258]
	mov	rdx, qword ptr [rdx - 0x30]
	mov	si, dx
	nop	
	movsx	edi, si
	sub	ecx, edi
	mov	rbp, rbp
	mov	si, cx
	nop	
	movsx	rdx, si
	mov	r8, qword ptr [rbp - 0x5c0]
	lea	rdi, [rdi]
	mov	qword ptr [r8 + 0x40], rdx
	mov	rsp, rsp
	test	al, 1
	jne	.label_297
	jmp	.label_150
.label_294:
	xor	eax, eax
	mov	cl, al
	nop	
	xor	eax, eax
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x258]
	mov	rdx, qword ptr [rdx - 0x30]
	mov	rbp, rbp
	mov	si, dx
	movsx	edi, si
	nop	
	sub	eax, edi
	mov	rbp, rbp
	mov	si, ax
	movsx	rdx, si
	lea	rsi, [rsi]
	mov	r8, qword ptr [rbp - 0x5c0]
	mov	qword ptr [r8 + 0x40], rdx
	test	cl, 1
	nop	
	jne	.label_297
	jmp	.label_150
.label_183:
	lea	rdi, [rdi]
	mov	al, 1
	lea	rsi, [rsi]
	test	al, 1
	mov	rsp, rsp
	jne	.label_1093
	jmp	.label_352
.label_1093:
	mov	rax, qword ptr [rbp - 0x258]
	cmp	qword ptr [rax - 0x30], 0
	jge	.label_354
	mov	rax, qword ptr [rbp - 0x258]
	movabs	rcx, 0x7fffffffffffffff
	add	rcx, qword ptr [rax - 0x30]
	lea	rdi, [rdi]
	cmp	rcx, 0
	nop	
	jl	.label_359
	mov	rsp, rsp
	jmp	.label_369
.label_354:
	lea	rsi, [rsi]
	xor	eax, eax
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x258]
	movabs	rsi, 0x8000000000000000
	mov	rbp, rbp
	add	rsi, qword ptr [rdx - 0x30]
	cmp	rcx, rsi
	mov	rsp, rsp
	jl	.label_359
	jmp	.label_369
.label_352:
	lea	rdi, [rdi]
	xor	eax, eax
	mov	rsp, rsp
	mov	cl, al
	mov	rsp, rsp
	test	cl, 1
	jne	.label_311
	jmp	.label_387
.label_311:
	mov	al, 1
	lea	rsi, [rsi]
	test	al, 1
	jne	.label_359
	jmp	.label_369
.label_387:
	nop	
	mov	rax, qword ptr [rbp - 0x258]
	cmp	qword ptr [rax - 0x30], 0
	mov	rbp, rbp
	jge	.label_394
	xor	eax, eax
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x258]
	sub	rcx, qword ptr [rdx - 0x30]
	cmp	rcx, 0
	nop	
	jle	.label_359
	nop	
	jmp	.label_369
.label_394:
	lea	rsi, [rsi]
	xor	eax, eax
	nop	
	mov	ecx, eax
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x258]
	lea	rdi, [rdi]
	cmp	rcx, qword ptr [rdx - 0x30]
	mov	rbp, rbp
	jl	.label_359
.label_369:
	xor	eax, eax
	mov	ecx, eax
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x258]
	lea	rsi, [rsi]
	sub	rcx, qword ptr [rdx - 0x30]
	mov	rbp, rbp
	cmp	rcx, -0x8000
	jl	.label_359
	mov	rsp, rsp
	mov	eax, 0x7fff
	mov	rbp, rbp
	mov	ecx, eax
	lea	rdi, [rdi]
	xor	eax, eax
	mov	rbp, rbp
	mov	edx, eax
	nop	
	mov	rsi, qword ptr [rbp - 0x258]
	mov	rbp, rbp
	sub	rdx, qword ptr [rsi - 0x30]
	mov	rsp, rsp
	cmp	rcx, rdx
	jge	.label_422
.label_359:
	mov	al, 1
	xor	ecx, ecx
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x258]
	mov	rdx, qword ptr [rdx - 0x30]
	mov	esi, edx
	sub	ecx, esi
	lea	rsi, [rsi]
	mov	di, cx
	movsx	rdx, di
	lea	rsi, [rsi]
	mov	r8, qword ptr [rbp - 0x5c0]
	mov	rsp, rsp
	mov	qword ptr [r8 + 0x40], rdx
	lea	rdi, [rdi]
	test	al, 1
	jne	.label_297
	lea	rdi, [rdi]
	jmp	.label_150
.label_422:
	lea	rsi, [rsi]
	xor	eax, eax
	nop	
	mov	cl, al
	lea	rsi, [rsi]
	xor	eax, eax
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x258]
	mov	rdx, qword ptr [rdx - 0x30]
	mov	esi, edx
	sub	eax, esi
	mov	di, ax
	movsx	rdx, di
	mov	r8, qword ptr [rbp - 0x5c0]
	mov	qword ptr [r8 + 0x40], rdx
	lea	rdi, [rdi]
	test	cl, 1
	jne	.label_297
	lea	rsi, [rsi]
	jmp	.label_150
.label_168:
	xor	eax, eax
	mov	rsp, rsp
	mov	cl, al
	mov	rbp, rbp
	test	cl, 1
	jne	.label_473
	mov	rsp, rsp
	jmp	.label_480
.label_473:
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	lea	rdi, [rdi]
	jne	.label_883
	mov	rbp, rbp
	jmp	.label_490
.label_883:
	mov	rsp, rsp
	mov	al, 1
	lea	rdi, [rdi]
	test	al, 1
	jne	.label_493
	jmp	.label_925
.label_493:
	mov	rax, qword ptr [rbp - 0x258]
	mov	rsp, rsp
	mov	rax, qword ptr [rax - 0x30]
	lea	rdi, [rdi]
	mov	ecx, eax
	lea	rsi, [rsi]
	cmp	ecx, 0
	jge	.label_502
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x258]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax - 0x30]
	mov	ecx, eax
	add	ecx, 0x7fffffff
	cmp	ecx, 0
	nop	
	jl	.label_515
	jmp	.label_522
.label_502:
	nop	
	xor	eax, eax
	mov	rcx, qword ptr [rbp - 0x258]
	nop	
	mov	rcx, qword ptr [rcx - 0x30]
	lea	rsi, [rsi]
	mov	edx, ecx
	nop	
	add	edx, 0x80000000
	lea	rdi, [rdi]
	cmp	eax, edx
	jl	.label_515
	jmp	.label_522
.label_925:
	xor	eax, eax
	mov	rbp, rbp
	mov	cl, al
	mov	rsp, rsp
	test	cl, 1
	nop	
	jne	.label_530
	jmp	.label_1115
.label_530:
	nop	
	mov	al, 1
	nop	
	test	al, 1
	lea	rdi, [rdi]
	jne	.label_515
	jmp	.label_522
.label_1115:
	mov	rax, qword ptr [rbp - 0x258]
	mov	rax, qword ptr [rax - 0x30]
	lea	rdi, [rdi]
	mov	ecx, eax
	lea	rdi, [rdi]
	cmp	ecx, 0
	mov	rsp, rsp
	jge	.label_1141
	lea	rsi, [rsi]
	xor	eax, eax
	mov	rcx, qword ptr [rbp - 0x258]
	nop	
	mov	rcx, qword ptr [rcx - 0x30]
	lea	rdi, [rdi]
	mov	edx, ecx
	sub	eax, edx
	lea	rdi, [rdi]
	cmp	eax, 0
	nop	
	jle	.label_515
	lea	rsi, [rsi]
	jmp	.label_522
.label_1141:
	lea	rsi, [rsi]
	xor	eax, eax
	mov	rcx, qword ptr [rbp - 0x258]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rcx - 0x30]
	nop	
	mov	edx, ecx
	mov	rsp, rsp
	cmp	eax, edx
	jl	.label_515
.label_522:
	mov	rsp, rsp
	xor	eax, eax
	mov	rcx, qword ptr [rbp - 0x258]
	nop	
	mov	rcx, qword ptr [rcx - 0x30]
	mov	edx, ecx
	sub	eax, edx
	lea	rdi, [rdi]
	cmp	eax, 0x80000000
	jl	.label_515
	mov	eax, 0x7fffffff
	xor	ecx, ecx
	mov	rdx, qword ptr [rbp - 0x258]
	nop	
	mov	rdx, qword ptr [rdx - 0x30]
	mov	esi, edx
	sub	ecx, esi
	cmp	eax, ecx
	nop	
	jge	.label_571
.label_515:
	lea	rsi, [rsi]
	mov	al, 1
	xor	ecx, ecx
	mov	rdx, qword ptr [rbp - 0x258]
	mov	rsp, rsp
	mov	rdx, qword ptr [rdx - 0x30]
	mov	esi, edx
	sub	ecx, esi
	movsxd	rdx, ecx
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x5c0]
	mov	qword ptr [rdi + 0x40], rdx
	test	al, 1
	mov	rsp, rsp
	jne	.label_297
	jmp	.label_150
.label_571:
	xor	eax, eax
	lea	rsi, [rsi]
	mov	cl, al
	xor	eax, eax
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x258]
	mov	rsp, rsp
	mov	rdx, qword ptr [rdx - 0x30]
	mov	esi, edx
	mov	rsp, rsp
	sub	eax, esi
	mov	rbp, rbp
	movsxd	rdx, eax
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x5c0]
	lea	rdi, [rdi]
	mov	qword ptr [rdi + 0x40], rdx
	nop	
	test	cl, 1
	mov	rsp, rsp
	jne	.label_297
	lea	rsi, [rsi]
	jmp	.label_150
.label_490:
	mov	al, 1
	test	al, 1
	jne	.label_620
	mov	rbp, rbp
	jmp	.label_623
.label_620:
	mov	rax, qword ptr [rbp - 0x258]
	cmp	qword ptr [rax - 0x30], 0
	jge	.label_625
	mov	rax, qword ptr [rbp - 0x258]
	mov	rsp, rsp
	movabs	rcx, 0x7fffffffffffffff
	add	rcx, qword ptr [rax - 0x30]
	mov	rbp, rbp
	cmp	rcx, 0
	jl	.label_629
	jmp	.label_635
.label_625:
	xor	eax, eax
	mov	ecx, eax
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x258]
	mov	rbp, rbp
	movabs	rsi, 0x8000000000000000
	nop	
	add	rsi, qword ptr [rdx - 0x30]
	mov	rbp, rbp
	cmp	rcx, rsi
	jl	.label_629
	lea	rsi, [rsi]
	jmp	.label_635
.label_623:
	lea	rsi, [rsi]
	xor	eax, eax
	mov	cl, al
	mov	rbp, rbp
	test	cl, 1
	mov	rbp, rbp
	jne	.label_647
	mov	rbp, rbp
	jmp	.label_1112
.label_647:
	lea	rsi, [rsi]
	mov	al, 1
	lea	rsi, [rsi]
	test	al, 1
	lea	rsi, [rsi]
	jne	.label_629
	lea	rdi, [rdi]
	jmp	.label_635
.label_1112:
	nop	
	mov	rax, qword ptr [rbp - 0x258]
	mov	rsp, rsp
	cmp	qword ptr [rax - 0x30], 0
	jge	.label_655
	lea	rsi, [rsi]
	xor	eax, eax
	lea	rdi, [rdi]
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x258]
	sub	rcx, qword ptr [rdx - 0x30]
	lea	rdi, [rdi]
	cmp	rcx, 0
	nop	
	jle	.label_629
	mov	rsp, rsp
	jmp	.label_635
.label_655:
	mov	rsp, rsp
	xor	eax, eax
	mov	rbp, rbp
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x258]
	nop	
	cmp	rcx, qword ptr [rdx - 0x30]
	mov	rsp, rsp
	jl	.label_629
.label_635:
	lea	rsi, [rsi]
	xor	eax, eax
	mov	rbp, rbp
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x258]
	lea	rsi, [rsi]
	sub	rcx, qword ptr [rdx - 0x30]
	cmp	rcx, -0x80000000
	mov	rsp, rsp
	jl	.label_629
	lea	rsi, [rsi]
	mov	eax, 0x7fffffff
	mov	ecx, eax
	lea	rdi, [rdi]
	xor	eax, eax
	mov	edx, eax
	mov	rsi, qword ptr [rbp - 0x258]
	sub	rdx, qword ptr [rsi - 0x30]
	cmp	rcx, rdx
	lea	rsi, [rsi]
	jge	.label_681
.label_629:
	mov	al, 1
	mov	rbp, rbp
	xor	ecx, ecx
	mov	rdx, qword ptr [rbp - 0x258]
	mov	rsp, rsp
	mov	rdx, qword ptr [rdx - 0x30]
	mov	esi, edx
	mov	rsp, rsp
	sub	ecx, esi
	mov	rbp, rbp
	movsxd	rdx, ecx
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x5c0]
	mov	rsp, rsp
	mov	qword ptr [rdi + 0x40], rdx
	nop	
	test	al, 1
	nop	
	jne	.label_297
	nop	
	jmp	.label_150
.label_681:
	xor	eax, eax
	mov	cl, al
	xor	eax, eax
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x258]
	mov	rsp, rsp
	mov	rdx, qword ptr [rdx - 0x30]
	mov	esi, edx
	sub	eax, esi
	nop	
	movsxd	rdx, eax
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x5c0]
	mov	qword ptr [rdi + 0x40], rdx
	lea	rdi, [rdi]
	test	cl, 1
	nop	
	jne	.label_297
	jmp	.label_150
.label_480:
	lea	rsi, [rsi]
	mov	al, 1
	test	al, 1
	mov	rsp, rsp
	jne	.label_726
	jmp	.label_728
.label_726:
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_729
	jmp	.label_732
.label_729:
	mov	al, 1
	nop	
	test	al, 1
	nop	
	jne	.label_734
	lea	rdi, [rdi]
	jmp	.label_735
.label_734:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x258]
	mov	rsp, rsp
	cmp	qword ptr [rax - 0x30], 0
	jge	.label_737
	mov	rax, qword ptr [rbp - 0x258]
	lea	rdi, [rdi]
	movabs	rcx, 0x7fffffffffffffff
	lea	rsi, [rsi]
	add	rcx, qword ptr [rax - 0x30]
	lea	rsi, [rsi]
	cmp	rcx, 0
	jl	.label_744
	lea	rdi, [rdi]
	jmp	.label_450
.label_737:
	lea	rdi, [rdi]
	xor	eax, eax
	mov	rbp, rbp
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x258]
	lea	rdi, [rdi]
	movabs	rsi, 0x8000000000000000
	mov	rsp, rsp
	add	rsi, qword ptr [rdx - 0x30]
	lea	rdi, [rdi]
	cmp	rcx, rsi
	jl	.label_744
	mov	rsp, rsp
	jmp	.label_450
.label_735:
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_770
	jmp	.label_772
.label_770:
	mov	al, 1
	mov	rbp, rbp
	test	al, 1
	lea	rdi, [rdi]
	jne	.label_744
	jmp	.label_450
.label_772:
	nop	
	mov	rax, qword ptr [rbp - 0x258]
	cmp	qword ptr [rax - 0x30], 0
	jge	.label_779
	xor	eax, eax
	mov	rsp, rsp
	mov	ecx, eax
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x258]
	sub	rcx, qword ptr [rdx - 0x30]
	mov	rbp, rbp
	cmp	rcx, 0
	jle	.label_744
	mov	rbp, rbp
	jmp	.label_450
.label_779:
	nop	
	xor	eax, eax
	mov	rbp, rbp
	mov	ecx, eax
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x258]
	cmp	rcx, qword ptr [rdx - 0x30]
	jl	.label_744
.label_450:
	mov	rsp, rsp
	movabs	rax, 0x8000000000000000
	xor	ecx, ecx
	mov	edx, ecx
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x258]
	sub	rdx, qword ptr [rsi - 0x30]
	cmp	rdx, rax
	lea	rdi, [rdi]
	jl	.label_744
	movabs	rax, 0x7fffffffffffffff
	xor	ecx, ecx
	nop	
	mov	edx, ecx
	mov	rsi, qword ptr [rbp - 0x258]
	sub	rdx, qword ptr [rsi - 0x30]
	lea	rdi, [rdi]
	cmp	rax, rdx
	jge	.label_806
.label_744:
	mov	rsp, rsp
	mov	al, 1
	xor	ecx, ecx
	lea	rdi, [rdi]
	mov	edx, ecx
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x258]
	sub	rdx, qword ptr [rsi - 0x30]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x5c0]
	mov	rbp, rbp
	mov	qword ptr [rsi + 0x40], rdx
	nop	
	test	al, 1
	mov	rsp, rsp
	jne	.label_297
	lea	rsi, [rsi]
	jmp	.label_150
.label_806:
	lea	rsi, [rsi]
	xor	eax, eax
	mov	rsp, rsp
	mov	cl, al
	xor	eax, eax
	mov	edx, eax
	mov	rsi, qword ptr [rbp - 0x258]
	nop	
	sub	rdx, qword ptr [rsi - 0x30]
	mov	rsi, qword ptr [rbp - 0x5c0]
	mov	qword ptr [rsi + 0x40], rdx
	lea	rdi, [rdi]
	test	cl, 1
	lea	rdi, [rdi]
	jne	.label_297
	lea	rdi, [rdi]
	jmp	.label_150
.label_732:
	nop	
	mov	al, 1
	nop	
	test	al, 1
	lea	rdi, [rdi]
	jne	.label_1063
	jmp	.label_851
.label_1063:
	mov	rax, qword ptr [rbp - 0x258]
	mov	rsp, rsp
	cmp	qword ptr [rax - 0x30], 0
	lea	rsi, [rsi]
	jge	.label_853
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x258]
	movabs	rcx, 0x7fffffffffffffff
	add	rcx, qword ptr [rax - 0x30]
	cmp	rcx, 0
	lea	rsi, [rsi]
	jl	.label_860
	mov	rsp, rsp
	jmp	.label_421
.label_853:
	xor	eax, eax
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x258]
	mov	rsp, rsp
	movabs	rsi, 0x8000000000000000
	add	rsi, qword ptr [rdx - 0x30]
	cmp	rcx, rsi
	jl	.label_860
	lea	rsi, [rsi]
	jmp	.label_421
.label_851:
	mov	rbp, rbp
	xor	eax, eax
	lea	rsi, [rsi]
	mov	cl, al
	mov	rbp, rbp
	test	cl, 1
	jne	.label_882
	lea	rsi, [rsi]
	jmp	.label_889
.label_882:
	nop	
	mov	al, 1
	lea	rdi, [rdi]
	test	al, 1
	mov	rsp, rsp
	jne	.label_860
	jmp	.label_421
.label_889:
	mov	rax, qword ptr [rbp - 0x258]
	cmp	qword ptr [rax - 0x30], 0
	jge	.label_896
	lea	rdi, [rdi]
	xor	eax, eax
	mov	rsp, rsp
	mov	ecx, eax
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x258]
	sub	rcx, qword ptr [rdx - 0x30]
	mov	rsp, rsp
	cmp	rcx, 0
	jle	.label_860
	jmp	.label_421
.label_896:
	lea	rdi, [rdi]
	xor	eax, eax
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x258]
	cmp	rcx, qword ptr [rdx - 0x30]
	jl	.label_860
.label_421:
	mov	rsp, rsp
	movabs	rax, 0x8000000000000000
	mov	rsp, rsp
	xor	ecx, ecx
	mov	rsp, rsp
	mov	edx, ecx
	mov	rsi, qword ptr [rbp - 0x258]
	lea	rdi, [rdi]
	sub	rdx, qword ptr [rsi - 0x30]
	mov	rsp, rsp
	cmp	rdx, rax
	jl	.label_860
	mov	rbp, rbp
	movabs	rax, 0x7fffffffffffffff
	xor	ecx, ecx
	mov	edx, ecx
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x258]
	sub	rdx, qword ptr [rsi - 0x30]
	cmp	rax, rdx
	lea	rdi, [rdi]
	jge	.label_606
.label_860:
	mov	al, 1
	mov	rsp, rsp
	xor	ecx, ecx
	mov	edx, ecx
	nop	
	mov	rsi, qword ptr [rbp - 0x258]
	sub	rdx, qword ptr [rsi - 0x30]
	mov	rsi, qword ptr [rbp - 0x5c0]
	mov	qword ptr [rsi + 0x40], rdx
	lea	rdi, [rdi]
	test	al, 1
	mov	rsp, rsp
	jne	.label_297
	mov	rsp, rsp
	jmp	.label_150
.label_606:
	xor	eax, eax
	mov	cl, al
	mov	rbp, rbp
	xor	eax, eax
	mov	edx, eax
	mov	rsi, qword ptr [rbp - 0x258]
	lea	rdi, [rdi]
	sub	rdx, qword ptr [rsi - 0x30]
	mov	rsi, qword ptr [rbp - 0x5c0]
	mov	rbp, rbp
	mov	qword ptr [rsi + 0x40], rdx
	mov	rbp, rbp
	test	cl, 1
	mov	rsp, rsp
	jne	.label_297
	jmp	.label_150
.label_728:
	xor	eax, eax
	mov	rsp, rsp
	mov	cl, al
	test	cl, 1
	jne	.label_949
	jmp	.label_952
.label_949:
	mov	al, 1
	test	al, 1
	lea	rdi, [rdi]
	jne	.label_953
	jmp	.label_958
.label_953:
	mov	rax, qword ptr [rbp - 0x258]
	cmp	qword ptr [rax - 0x30], 0
	jge	.label_959
	mov	rax, qword ptr [rbp - 0x258]
	movabs	rcx, 0x7fffffffffffffff
	add	rcx, qword ptr [rax - 0x30]
	mov	rbp, rbp
	cmp	rcx, 0
	jl	.label_510
	jmp	.label_935
.label_959:
	xor	eax, eax
	mov	rbp, rbp
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x258]
	mov	rsp, rsp
	movabs	rsi, 0x8000000000000000
	add	rsi, qword ptr [rdx - 0x30]
	lea	rsi, [rsi]
	cmp	rcx, rsi
	mov	rsp, rsp
	jl	.label_510
	nop	
	jmp	.label_935
.label_958:
	lea	rdi, [rdi]
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	mov	rbp, rbp
	jne	.label_1010
	mov	rbp, rbp
	jmp	.label_997
.label_1010:
	mov	al, 1
	lea	rsi, [rsi]
	test	al, 1
	lea	rsi, [rsi]
	jne	.label_510
	nop	
	jmp	.label_935
.label_997:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x258]
	cmp	qword ptr [rax - 0x30], 0
	lea	rdi, [rdi]
	jge	.label_1001
	mov	rsp, rsp
	xor	eax, eax
	mov	ecx, eax
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x258]
	sub	rcx, qword ptr [rdx - 0x30]
	mov	rsp, rsp
	cmp	rcx, 0
	nop	
	jle	.label_510
	jmp	.label_935
.label_1001:
	xor	eax, eax
	lea	rsi, [rsi]
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x258]
	cmp	rcx, qword ptr [rdx - 0x30]
	mov	rbp, rbp
	jl	.label_510
.label_935:
	mov	rsp, rsp
	movabs	rax, 0x8000000000000000
	xor	ecx, ecx
	mov	edx, ecx
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x258]
	lea	rsi, [rsi]
	sub	rdx, qword ptr [rsi - 0x30]
	cmp	rdx, rax
	jl	.label_510
	nop	
	movabs	rax, 0x7fffffffffffffff
	xor	ecx, ecx
	mov	edx, ecx
	mov	rsi, qword ptr [rbp - 0x258]
	nop	
	sub	rdx, qword ptr [rsi - 0x30]
	lea	rsi, [rsi]
	cmp	rax, rdx
	lea	rdi, [rdi]
	jge	.label_289
.label_510:
	lea	rdi, [rdi]
	mov	al, 1
	nop	
	xor	ecx, ecx
	mov	edx, ecx
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x258]
	lea	rsi, [rsi]
	sub	rdx, qword ptr [rsi - 0x30]
	nop	
	mov	rsi, qword ptr [rbp - 0x5c0]
	mov	qword ptr [rsi + 0x40], rdx
	mov	rbp, rbp
	test	al, 1
	jne	.label_297
	lea	rdi, [rdi]
	jmp	.label_150
.label_289:
	lea	rsi, [rsi]
	xor	eax, eax
	mov	rsp, rsp
	mov	cl, al
	lea	rsi, [rsi]
	xor	eax, eax
	mov	edx, eax
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x258]
	sub	rdx, qword ptr [rsi - 0x30]
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x5c0]
	mov	qword ptr [rsi + 0x40], rdx
	test	cl, 1
	jne	.label_297
	jmp	.label_150
.label_952:
	mov	rsp, rsp
	mov	al, 1
	test	al, 1
	lea	rdi, [rdi]
	jne	.label_1051
	lea	rsi, [rsi]
	jmp	.label_1055
.label_1051:
	nop	
	mov	rax, qword ptr [rbp - 0x258]
	cmp	qword ptr [rax - 0x30], 0
	mov	rsp, rsp
	jge	.label_1056
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x258]
	movabs	rcx, 0x7fffffffffffffff
	mov	rbp, rbp
	add	rcx, qword ptr [rax - 0x30]
	mov	rbp, rbp
	cmp	rcx, 0
	mov	rbp, rbp
	jl	.label_527
	jmp	.label_807
.label_1056:
	lea	rsi, [rsi]
	xor	eax, eax
	lea	rsi, [rsi]
	mov	ecx, eax
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x258]
	mov	rbp, rbp
	movabs	rsi, 0x8000000000000000
	add	rsi, qword ptr [rdx - 0x30]
	mov	rbp, rbp
	cmp	rcx, rsi
	jl	.label_527
	mov	rsp, rsp
	jmp	.label_807
.label_1055:
	xor	eax, eax
	nop	
	mov	cl, al
	test	cl, 1
	jne	.label_758
	lea	rsi, [rsi]
	jmp	.label_776
.label_758:
	lea	rsi, [rsi]
	mov	al, 1
	test	al, 1
	mov	rbp, rbp
	jne	.label_527
	mov	rsp, rsp
	jmp	.label_807
.label_776:
	mov	rax, qword ptr [rbp - 0x258]
	nop	
	cmp	qword ptr [rax - 0x30], 0
	jge	.label_632
	xor	eax, eax
	mov	ecx, eax
	nop	
	mov	rdx, qword ptr [rbp - 0x258]
	mov	rbp, rbp
	sub	rcx, qword ptr [rdx - 0x30]
	lea	rsi, [rsi]
	cmp	rcx, 0
	lea	rdi, [rdi]
	jle	.label_527
	lea	rdi, [rdi]
	jmp	.label_807
.label_632:
	xor	eax, eax
	lea	rdi, [rdi]
	mov	ecx, eax
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x258]
	lea	rdi, [rdi]
	cmp	rcx, qword ptr [rdx - 0x30]
	jl	.label_527
.label_807:
	movabs	rax, 0x8000000000000000
	mov	rsp, rsp
	xor	ecx, ecx
	mov	rbp, rbp
	mov	edx, ecx
	mov	rsi, qword ptr [rbp - 0x258]
	mov	rbp, rbp
	sub	rdx, qword ptr [rsi - 0x30]
	nop	
	cmp	rdx, rax
	mov	rbp, rbp
	jl	.label_527
	movabs	rax, 0x7fffffffffffffff
	xor	ecx, ecx
	mov	edx, ecx
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x258]
	sub	rdx, qword ptr [rsi - 0x30]
	cmp	rax, rdx
	jge	.label_1130
.label_527:
	mov	al, 1
	xor	ecx, ecx
	nop	
	mov	edx, ecx
	mov	rsi, qword ptr [rbp - 0x258]
	sub	rdx, qword ptr [rsi - 0x30]
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x5c0]
	mov	qword ptr [rsi + 0x40], rdx
	mov	rbp, rbp
	test	al, 1
	jne	.label_297
	mov	rbp, rbp
	jmp	.label_150
.label_1130:
	mov	rsp, rsp
	xor	eax, eax
	mov	rsp, rsp
	mov	cl, al
	xor	eax, eax
	nop	
	mov	edx, eax
	mov	rsi, qword ptr [rbp - 0x258]
	lea	rdi, [rdi]
	sub	rdx, qword ptr [rsi - 0x30]
	mov	rsi, qword ptr [rbp - 0x5c0]
	mov	qword ptr [rsi + 0x40], rdx
	test	cl, 1
	mov	rsp, rsp
	jne	.label_297
	jmp	.label_150
.label_297:
	nop	
	jmp	.label_146
.label_150:
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	lea	rsi, [rsi]
	jne	.label_151
	mov	rbp, rbp
	jmp	.label_161
.label_151:
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	mov	rsp, rsp
	jne	.label_167
	jmp	.label_175
.label_167:
	nop	
	mov	al, 1
	test	al, 1
	jne	.label_1041
	jmp	.label_185
.label_1041:
	mov	rax, qword ptr [rbp - 0x258]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax + 8]
	mov	cl, al
	movsx	edx, cl
	cmp	edx, 0
	mov	rbp, rbp
	jge	.label_187
	mov	rax, qword ptr [rbp - 0x258]
	mov	rax, qword ptr [rax + 8]
	lea	rsi, [rsi]
	mov	cl, al
	movsx	edx, cl
	add	edx, 0x7fffffff
	mov	rsp, rsp
	cmp	edx, 0
	mov	rbp, rbp
	jl	.label_199
	jmp	.label_216
.label_187:
	xor	eax, eax
	nop	
	mov	rcx, qword ptr [rbp - 0x258]
	mov	rcx, qword ptr [rcx + 8]
	mov	dl, cl
	nop	
	movsx	esi, dl
	mov	rsp, rsp
	add	esi, 0x80000000
	cmp	eax, esi
	jl	.label_199
	lea	rsi, [rsi]
	jmp	.label_216
.label_185:
	lea	rsi, [rsi]
	xor	eax, eax
	nop	
	mov	cl, al
	nop	
	test	cl, 1
	jne	.label_234
	lea	rdi, [rdi]
	jmp	.label_241
.label_234:
	mov	al, 1
	test	al, 1
	jne	.label_199
	jmp	.label_216
.label_241:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x258]
	mov	rax, qword ptr [rax + 8]
	mov	rsp, rsp
	mov	cl, al
	movsx	edx, cl
	lea	rdi, [rdi]
	cmp	edx, 0
	lea	rdi, [rdi]
	jge	.label_589
	nop	
	xor	eax, eax
	mov	rcx, qword ptr [rbp - 0x258]
	mov	rcx, qword ptr [rcx + 8]
	mov	dl, cl
	lea	rdi, [rdi]
	movsx	esi, dl
	lea	rsi, [rsi]
	sub	eax, esi
	mov	rbp, rbp
	cmp	eax, 0
	jle	.label_199
	jmp	.label_216
.label_589:
	mov	rsp, rsp
	xor	eax, eax
	mov	rcx, qword ptr [rbp - 0x258]
	mov	rcx, qword ptr [rcx + 8]
	lea	rsi, [rsi]
	mov	dl, cl
	mov	rbp, rbp
	movsx	esi, dl
	lea	rdi, [rdi]
	cmp	eax, esi
	lea	rdi, [rdi]
	jl	.label_199
.label_216:
	nop	
	xor	eax, eax
	mov	rcx, qword ptr [rbp - 0x258]
	mov	rcx, qword ptr [rcx + 8]
	mov	dl, cl
	nop	
	movsx	esi, dl
	mov	rbp, rbp
	sub	eax, esi
	mov	rsp, rsp
	cmp	eax, -0x80
	mov	rbp, rbp
	jl	.label_199
	mov	eax, 0x7f
	lea	rsi, [rsi]
	xor	ecx, ecx
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x258]
	mov	rbp, rbp
	mov	rdx, qword ptr [rdx + 8]
	lea	rsi, [rsi]
	mov	sil, dl
	movsx	edi, sil
	lea	rdi, [rdi]
	sub	ecx, edi
	mov	rsp, rsp
	cmp	eax, ecx
	jge	.label_525
.label_199:
	mov	al, 1
	lea	rdi, [rdi]
	xor	ecx, ecx
	mov	rdx, qword ptr [rbp - 0x258]
	mov	rdx, qword ptr [rdx + 8]
	nop	
	mov	sil, dl
	movsx	edi, sil
	lea	rsi, [rsi]
	sub	ecx, edi
	lea	rdi, [rdi]
	mov	sil, cl
	mov	rbp, rbp
	movsx	rdx, sil
	mov	r8, qword ptr [rbp - 0x5c0]
	mov	qword ptr [r8 + 0x28], rdx
	test	al, 1
	jne	.label_300
	jmp	.label_164
.label_525:
	lea	rdi, [rdi]
	xor	eax, eax
	mov	cl, al
	mov	rbp, rbp
	xor	eax, eax
	mov	rdx, qword ptr [rbp - 0x258]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rdx + 8]
	mov	rsp, rsp
	mov	sil, dl
	mov	rsp, rsp
	movsx	edi, sil
	mov	rbp, rbp
	sub	eax, edi
	mov	sil, al
	mov	rbp, rbp
	movsx	rdx, sil
	mov	rsp, rsp
	mov	r8, qword ptr [rbp - 0x5c0]
	mov	qword ptr [r8 + 0x28], rdx
	test	cl, 1
	lea	rsi, [rsi]
	jne	.label_300
	mov	rsp, rsp
	jmp	.label_164
.label_175:
	nop	
	mov	al, 1
	test	al, 1
	mov	rbp, rbp
	jne	.label_346
	mov	rbp, rbp
	jmp	.label_349
.label_346:
	nop	
	mov	rax, qword ptr [rbp - 0x258]
	cmp	qword ptr [rax + 8], 0
	jge	.label_350
	mov	rax, qword ptr [rbp - 0x258]
	movabs	rcx, 0x7fffffffffffffff
	mov	rsp, rsp
	add	rcx, qword ptr [rax + 8]
	cmp	rcx, 0
	jl	.label_221
	mov	rbp, rbp
	jmp	.label_365
.label_350:
	xor	eax, eax
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x258]
	movabs	rsi, 0x8000000000000000
	lea	rsi, [rsi]
	add	rsi, qword ptr [rdx + 8]
	cmp	rcx, rsi
	mov	rbp, rbp
	jl	.label_221
	jmp	.label_365
.label_349:
	xor	eax, eax
	nop	
	mov	cl, al
	lea	rsi, [rsi]
	test	cl, 1
	lea	rdi, [rdi]
	jne	.label_381
	jmp	.label_385
.label_381:
	mov	rsp, rsp
	mov	al, 1
	test	al, 1
	lea	rdi, [rdi]
	jne	.label_221
	jmp	.label_365
.label_385:
	mov	rax, qword ptr [rbp - 0x258]
	nop	
	cmp	qword ptr [rax + 8], 0
	jge	.label_390
	lea	rsi, [rsi]
	xor	eax, eax
	lea	rdi, [rdi]
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x258]
	lea	rsi, [rsi]
	sub	rcx, qword ptr [rdx + 8]
	mov	rbp, rbp
	cmp	rcx, 0
	mov	rbp, rbp
	jle	.label_221
	jmp	.label_365
.label_390:
	lea	rdi, [rdi]
	xor	eax, eax
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x258]
	lea	rdi, [rdi]
	cmp	rcx, qword ptr [rdx + 8]
	nop	
	jl	.label_221
.label_365:
	xor	eax, eax
	mov	ecx, eax
	nop	
	mov	rdx, qword ptr [rbp - 0x258]
	sub	rcx, qword ptr [rdx + 8]
	cmp	rcx, -0x80
	jl	.label_221
	mov	eax, 0x7f
	mov	ecx, eax
	mov	rbp, rbp
	xor	eax, eax
	mov	edx, eax
	mov	rsi, qword ptr [rbp - 0x258]
	sub	rdx, qword ptr [rsi + 8]
	mov	rsp, rsp
	cmp	rcx, rdx
	lea	rsi, [rsi]
	jge	.label_417
.label_221:
	mov	al, 1
	lea	rdi, [rdi]
	xor	ecx, ecx
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x258]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rdx + 8]
	mov	rsp, rsp
	mov	esi, edx
	sub	ecx, esi
	mov	rbp, rbp
	mov	dil, cl
	nop	
	movsx	rdx, dil
	mov	r8, qword ptr [rbp - 0x5c0]
	mov	rsp, rsp
	mov	qword ptr [r8 + 0x28], rdx
	test	al, 1
	jne	.label_300
	lea	rsi, [rsi]
	jmp	.label_164
.label_417:
	mov	rsp, rsp
	xor	eax, eax
	nop	
	mov	cl, al
	lea	rsi, [rsi]
	xor	eax, eax
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x258]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rdx + 8]
	mov	esi, edx
	sub	eax, esi
	mov	dil, al
	mov	rbp, rbp
	movsx	rdx, dil
	nop	
	mov	r8, qword ptr [rbp - 0x5c0]
	nop	
	mov	qword ptr [r8 + 0x28], rdx
	nop	
	test	cl, 1
	lea	rdi, [rdi]
	jne	.label_300
	lea	rsi, [rsi]
	jmp	.label_164
.label_161:
	nop	
	xor	eax, eax
	mov	cl, al
	lea	rsi, [rsi]
	test	cl, 1
	jne	.label_471
	lea	rdi, [rdi]
	jmp	.label_271
.label_471:
	mov	rsp, rsp
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_478
	lea	rsi, [rsi]
	jmp	.label_482
.label_478:
	mov	al, 1
	mov	rsp, rsp
	test	al, 1
	jne	.label_488
	nop	
	jmp	.label_1052
.label_488:
	mov	rax, qword ptr [rbp - 0x258]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax + 8]
	mov	cx, ax
	mov	rbp, rbp
	movsx	edx, cx
	cmp	edx, 0
	jge	.label_495
	mov	rax, qword ptr [rbp - 0x258]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax + 8]
	mov	cx, ax
	mov	rbp, rbp
	movsx	edx, cx
	add	edx, 0x7fffffff
	lea	rsi, [rsi]
	cmp	edx, 0
	jl	.label_299
	mov	rsp, rsp
	jmp	.label_291
.label_495:
	mov	rsp, rsp
	xor	eax, eax
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x258]
	mov	rbp, rbp
	mov	rcx, qword ptr [rcx + 8]
	mov	dx, cx
	movsx	esi, dx
	lea	rsi, [rsi]
	add	esi, 0x80000000
	mov	rsp, rsp
	cmp	eax, esi
	mov	rsp, rsp
	jl	.label_299
	nop	
	jmp	.label_291
.label_1052:
	nop	
	xor	eax, eax
	mov	cl, al
	mov	rsp, rsp
	test	cl, 1
	jne	.label_531
	mov	rsp, rsp
	jmp	.label_568
.label_531:
	mov	al, 1
	test	al, 1
	jne	.label_299
	jmp	.label_291
.label_568:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x258]
	mov	rax, qword ptr [rax + 8]
	lea	rsi, [rsi]
	mov	cx, ax
	movsx	edx, cx
	cmp	edx, 0
	lea	rdi, [rdi]
	jge	.label_1145
	xor	eax, eax
	nop	
	mov	rcx, qword ptr [rbp - 0x258]
	mov	rsp, rsp
	mov	rcx, qword ptr [rcx + 8]
	mov	rsp, rsp
	mov	dx, cx
	lea	rsi, [rsi]
	movsx	esi, dx
	mov	rbp, rbp
	sub	eax, esi
	mov	rbp, rbp
	cmp	eax, 0
	jle	.label_299
	jmp	.label_291
.label_1145:
	nop	
	xor	eax, eax
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x258]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rcx + 8]
	mov	rsp, rsp
	mov	dx, cx
	mov	rbp, rbp
	movsx	esi, dx
	cmp	eax, esi
	jl	.label_299
.label_291:
	lea	rsi, [rsi]
	xor	eax, eax
	mov	rcx, qword ptr [rbp - 0x258]
	nop	
	mov	rcx, qword ptr [rcx + 8]
	lea	rdi, [rdi]
	mov	dx, cx
	movsx	esi, dx
	sub	eax, esi
	mov	rsp, rsp
	cmp	eax, 0xffff8000
	jl	.label_299
	mov	eax, 0x7fff
	mov	rbp, rbp
	xor	ecx, ecx
	mov	rdx, qword ptr [rbp - 0x258]
	mov	rdx, qword ptr [rdx + 8]
	lea	rsi, [rsi]
	mov	si, dx
	lea	rdi, [rdi]
	movsx	edi, si
	sub	ecx, edi
	nop	
	cmp	eax, ecx
	mov	rbp, rbp
	jge	.label_579
.label_299:
	mov	rsp, rsp
	mov	al, 1
	mov	rbp, rbp
	xor	ecx, ecx
	mov	rdx, qword ptr [rbp - 0x258]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rdx + 8]
	lea	rsi, [rsi]
	mov	si, dx
	movsx	edi, si
	sub	ecx, edi
	mov	si, cx
	movsx	rdx, si
	mov	r8, qword ptr [rbp - 0x5c0]
	mov	rbp, rbp
	mov	qword ptr [r8 + 0x28], rdx
	test	al, 1
	jne	.label_300
	mov	rbp, rbp
	jmp	.label_164
.label_579:
	lea	rsi, [rsi]
	xor	eax, eax
	mov	cl, al
	nop	
	xor	eax, eax
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x258]
	mov	rdx, qword ptr [rdx + 8]
	mov	si, dx
	movsx	edi, si
	sub	eax, edi
	lea	rsi, [rsi]
	mov	si, ax
	lea	rdi, [rdi]
	movsx	rdx, si
	mov	rbp, rbp
	mov	r8, qword ptr [rbp - 0x5c0]
	mov	qword ptr [r8 + 0x28], rdx
	test	cl, 1
	mov	rsp, rsp
	jne	.label_300
	mov	rbp, rbp
	jmp	.label_164
.label_482:
	mov	rsp, rsp
	mov	al, 1
	test	al, 1
	lea	rsi, [rsi]
	jne	.label_634
	mov	rbp, rbp
	jmp	.label_403
.label_634:
	mov	rax, qword ptr [rbp - 0x258]
	lea	rsi, [rsi]
	cmp	qword ptr [rax + 8], 0
	jge	.label_904
	mov	rax, qword ptr [rbp - 0x258]
	movabs	rcx, 0x7fffffffffffffff
	lea	rdi, [rdi]
	add	rcx, qword ptr [rax + 8]
	cmp	rcx, 0
	jl	.label_641
	mov	rbp, rbp
	jmp	.label_599
.label_904:
	xor	eax, eax
	mov	rsp, rsp
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x258]
	lea	rsi, [rsi]
	movabs	rsi, 0x8000000000000000
	add	rsi, qword ptr [rdx + 8]
	mov	rbp, rbp
	cmp	rcx, rsi
	jl	.label_641
	jmp	.label_599
.label_403:
	lea	rdi, [rdi]
	xor	eax, eax
	mov	cl, al
	mov	rsp, rsp
	test	cl, 1
	jne	.label_905
	jmp	.label_660
.label_905:
	lea	rdi, [rdi]
	mov	al, 1
	lea	rsi, [rsi]
	test	al, 1
	lea	rsi, [rsi]
	jne	.label_641
	lea	rdi, [rdi]
	jmp	.label_599
.label_660:
	mov	rax, qword ptr [rbp - 0x258]
	mov	rsp, rsp
	cmp	qword ptr [rax + 8], 0
	mov	rbp, rbp
	jge	.label_492
	xor	eax, eax
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x258]
	mov	rbp, rbp
	sub	rcx, qword ptr [rdx + 8]
	cmp	rcx, 0
	nop	
	jle	.label_641
	jmp	.label_599
.label_492:
	xor	eax, eax
	mov	ecx, eax
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x258]
	cmp	rcx, qword ptr [rdx + 8]
	jl	.label_641
.label_599:
	mov	rsp, rsp
	xor	eax, eax
	mov	rsp, rsp
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x258]
	sub	rcx, qword ptr [rdx + 8]
	cmp	rcx, -0x8000
	mov	rbp, rbp
	jl	.label_641
	mov	eax, 0x7fff
	mov	ecx, eax
	lea	rdi, [rdi]
	xor	eax, eax
	lea	rsi, [rsi]
	mov	edx, eax
	mov	rsi, qword ptr [rbp - 0x258]
	lea	rsi, [rsi]
	sub	rdx, qword ptr [rsi + 8]
	nop	
	cmp	rcx, rdx
	mov	rbp, rbp
	jge	.label_229
.label_641:
	mov	al, 1
	lea	rdi, [rdi]
	xor	ecx, ecx
	mov	rdx, qword ptr [rbp - 0x258]
	mov	rdx, qword ptr [rdx + 8]
	mov	rsp, rsp
	mov	esi, edx
	sub	ecx, esi
	lea	rdi, [rdi]
	mov	di, cx
	mov	rsp, rsp
	movsx	rdx, di
	mov	r8, qword ptr [rbp - 0x5c0]
	lea	rdi, [rdi]
	mov	qword ptr [r8 + 0x28], rdx
	mov	rbp, rbp
	test	al, 1
	lea	rdi, [rdi]
	jne	.label_300
	nop	
	jmp	.label_164
.label_229:
	xor	eax, eax
	mov	rsp, rsp
	mov	cl, al
	lea	rsi, [rsi]
	xor	eax, eax
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x258]
	mov	rdx, qword ptr [rdx + 8]
	mov	esi, edx
	lea	rdi, [rdi]
	sub	eax, esi
	nop	
	mov	di, ax
	mov	rbp, rbp
	movsx	rdx, di
	mov	r8, qword ptr [rbp - 0x5c0]
	lea	rsi, [rsi]
	mov	qword ptr [r8 + 0x28], rdx
	mov	rbp, rbp
	test	cl, 1
	jne	.label_300
	jmp	.label_164
.label_271:
	xor	eax, eax
	mov	cl, al
	lea	rdi, [rdi]
	test	cl, 1
	jne	.label_444
	nop	
	jmp	.label_741
.label_444:
	mov	rsp, rsp
	xor	eax, eax
	mov	rsp, rsp
	mov	cl, al
	mov	rbp, rbp
	test	cl, 1
	jne	.label_743
	jmp	.label_528
.label_743:
	nop	
	mov	al, 1
	test	al, 1
	mov	rbp, rbp
	jne	.label_1082
	nop	
	jmp	.label_181
.label_1082:
	nop	
	mov	rax, qword ptr [rbp - 0x258]
	mov	rbp, rbp
	mov	rax, qword ptr [rax + 8]
	mov	rsp, rsp
	mov	ecx, eax
	mov	rbp, rbp
	cmp	ecx, 0
	mov	rsp, rsp
	jge	.label_548
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x258]
	mov	rbp, rbp
	mov	rax, qword ptr [rax + 8]
	mov	ecx, eax
	add	ecx, 0x7fffffff
	mov	rsp, rsp
	cmp	ecx, 0
	jl	.label_619
	mov	rbp, rbp
	jmp	.label_787
.label_548:
	lea	rsi, [rsi]
	xor	eax, eax
	nop	
	mov	rcx, qword ptr [rbp - 0x258]
	mov	rbp, rbp
	mov	rcx, qword ptr [rcx + 8]
	nop	
	mov	edx, ecx
	mov	rbp, rbp
	add	edx, 0x80000000
	lea	rsi, [rsi]
	cmp	eax, edx
	jl	.label_619
	nop	
	jmp	.label_787
.label_181:
	lea	rsi, [rsi]
	xor	eax, eax
	lea	rsi, [rsi]
	mov	cl, al
	test	cl, 1
	lea	rdi, [rdi]
	jne	.label_157
	jmp	.label_366
.label_157:
	mov	al, 1
	mov	rbp, rbp
	test	al, 1
	nop	
	jne	.label_619
	jmp	.label_787
.label_366:
	nop	
	mov	rax, qword ptr [rbp - 0x258]
	mov	rsp, rsp
	mov	rax, qword ptr [rax + 8]
	mov	ecx, eax
	nop	
	cmp	ecx, 0
	mov	rbp, rbp
	jge	.label_795
	xor	eax, eax
	nop	
	mov	rcx, qword ptr [rbp - 0x258]
	nop	
	mov	rcx, qword ptr [rcx + 8]
	nop	
	mov	edx, ecx
	lea	rdi, [rdi]
	sub	eax, edx
	cmp	eax, 0
	lea	rdi, [rdi]
	jle	.label_619
	mov	rsp, rsp
	jmp	.label_787
.label_795:
	lea	rsi, [rsi]
	xor	eax, eax
	mov	rcx, qword ptr [rbp - 0x258]
	nop	
	mov	rcx, qword ptr [rcx + 8]
	mov	edx, ecx
	cmp	eax, edx
	jl	.label_619
.label_787:
	xor	eax, eax
	mov	rcx, qword ptr [rbp - 0x258]
	mov	rcx, qword ptr [rcx + 8]
	mov	edx, ecx
	sub	eax, edx
	cmp	eax, 0x80000000
	nop	
	jl	.label_619
	lea	rdi, [rdi]
	mov	eax, 0x7fffffff
	xor	ecx, ecx
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x258]
	mov	rdx, qword ptr [rdx + 8]
	lea	rdi, [rdi]
	mov	esi, edx
	sub	ecx, esi
	cmp	eax, ecx
	jge	.label_505
.label_619:
	mov	rsp, rsp
	mov	al, 1
	xor	ecx, ecx
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x258]
	mov	rdx, qword ptr [rdx + 8]
	mov	rbp, rbp
	mov	esi, edx
	sub	ecx, esi
	movsxd	rdx, ecx
	nop	
	mov	rdi, qword ptr [rbp - 0x5c0]
	mov	qword ptr [rdi + 0x28], rdx
	test	al, 1
	lea	rsi, [rsi]
	jne	.label_300
	mov	rsp, rsp
	jmp	.label_164
.label_505:
	mov	rsp, rsp
	xor	eax, eax
	mov	cl, al
	mov	rbp, rbp
	xor	eax, eax
	mov	rdx, qword ptr [rbp - 0x258]
	mov	rdx, qword ptr [rdx + 8]
	mov	esi, edx
	sub	eax, esi
	mov	rsp, rsp
	movsxd	rdx, eax
	mov	rdi, qword ptr [rbp - 0x5c0]
	mov	qword ptr [rdi + 0x28], rdx
	test	cl, 1
	nop	
	jne	.label_300
	lea	rdi, [rdi]
	jmp	.label_164
.label_528:
	mov	al, 1
	test	al, 1
	lea	rdi, [rdi]
	jne	.label_209
	jmp	.label_239
.label_209:
	mov	rax, qword ptr [rbp - 0x258]
	cmp	qword ptr [rax + 8], 0
	lea	rdi, [rdi]
	jge	.label_812
	mov	rax, qword ptr [rbp - 0x258]
	movabs	rcx, 0x7fffffffffffffff
	nop	
	add	rcx, qword ptr [rax + 8]
	mov	rsp, rsp
	cmp	rcx, 0
	mov	rsp, rsp
	jl	.label_890
	jmp	.label_580
.label_812:
	xor	eax, eax
	mov	ecx, eax
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x258]
	movabs	rsi, 0x8000000000000000
	add	rsi, qword ptr [rdx + 8]
	cmp	rcx, rsi
	mov	rsp, rsp
	jl	.label_890
	jmp	.label_580
.label_239:
	xor	eax, eax
	mov	cl, al
	nop	
	test	cl, 1
	nop	
	jne	.label_899
	nop	
	jmp	.label_900
.label_899:
	mov	rsp, rsp
	mov	al, 1
	mov	rsp, rsp
	test	al, 1
	lea	rdi, [rdi]
	jne	.label_890
	nop	
	jmp	.label_580
.label_900:
	nop	
	mov	rax, qword ptr [rbp - 0x258]
	lea	rsi, [rsi]
	cmp	qword ptr [rax + 8], 0
	jge	.label_937
	mov	rbp, rbp
	xor	eax, eax
	mov	ecx, eax
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x258]
	sub	rcx, qword ptr [rdx + 8]
	lea	rdi, [rdi]
	cmp	rcx, 0
	jle	.label_890
	mov	rbp, rbp
	jmp	.label_580
.label_937:
	xor	eax, eax
	mov	rbp, rbp
	mov	ecx, eax
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x258]
	lea	rsi, [rsi]
	cmp	rcx, qword ptr [rdx + 8]
	mov	rsp, rsp
	jl	.label_890
.label_580:
	xor	eax, eax
	mov	ecx, eax
	nop	
	mov	rdx, qword ptr [rbp - 0x258]
	mov	rbp, rbp
	sub	rcx, qword ptr [rdx + 8]
	cmp	rcx, -0x80000000
	jl	.label_890
	mov	eax, 0x7fffffff
	mov	ecx, eax
	lea	rdi, [rdi]
	xor	eax, eax
	mov	edx, eax
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x258]
	sub	rdx, qword ptr [rsi + 8]
	cmp	rcx, rdx
	nop	
	jge	.label_926
.label_890:
	nop	
	mov	al, 1
	nop	
	xor	ecx, ecx
	mov	rdx, qword ptr [rbp - 0x258]
	mov	rdx, qword ptr [rdx + 8]
	mov	esi, edx
	sub	ecx, esi
	lea	rsi, [rsi]
	movsxd	rdx, ecx
	mov	rdi, qword ptr [rbp - 0x5c0]
	mov	qword ptr [rdi + 0x28], rdx
	test	al, 1
	mov	rbp, rbp
	jne	.label_300
	lea	rdi, [rdi]
	jmp	.label_164
.label_926:
	mov	rsp, rsp
	xor	eax, eax
	mov	cl, al
	lea	rsi, [rsi]
	xor	eax, eax
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x258]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rdx + 8]
	mov	esi, edx
	sub	eax, esi
	movsxd	rdx, eax
	mov	rdi, qword ptr [rbp - 0x5c0]
	mov	qword ptr [rdi + 0x28], rdx
	mov	rbp, rbp
	test	cl, 1
	jne	.label_300
	jmp	.label_164
.label_741:
	mov	rsp, rsp
	mov	al, 1
	lea	rsi, [rsi]
	test	al, 1
	mov	rsp, rsp
	jne	.label_970
	jmp	.label_976
.label_970:
	xor	eax, eax
	mov	cl, al
	mov	rsp, rsp
	test	cl, 1
	jne	.label_928
	lea	rsi, [rsi]
	jmp	.label_981
.label_928:
	mov	al, 1
	test	al, 1
	lea	rdi, [rdi]
	jne	.label_966
	lea	rsi, [rsi]
	jmp	.label_987
.label_966:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x258]
	mov	rbp, rbp
	cmp	qword ptr [rax + 8], 0
	lea	rdi, [rdi]
	jge	.label_990
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x258]
	mov	rbp, rbp
	movabs	rcx, 0x7fffffffffffffff
	lea	rdi, [rdi]
	add	rcx, qword ptr [rax + 8]
	cmp	rcx, 0
	jl	.label_256
	jmp	.label_194
.label_990:
	nop	
	xor	eax, eax
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x258]
	movabs	rsi, 0x8000000000000000
	add	rsi, qword ptr [rdx + 8]
	cmp	rcx, rsi
	jl	.label_256
	jmp	.label_194
.label_987:
	xor	eax, eax
	mov	cl, al
	mov	rsp, rsp
	test	cl, 1
	lea	rdi, [rdi]
	jne	.label_1009
	jmp	.label_142
.label_1009:
	mov	al, 1
	test	al, 1
	jne	.label_256
	lea	rdi, [rdi]
	jmp	.label_194
.label_142:
	nop	
	mov	rax, qword ptr [rbp - 0x258]
	cmp	qword ptr [rax + 8], 0
	jge	.label_214
	nop	
	xor	eax, eax
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x258]
	sub	rcx, qword ptr [rdx + 8]
	cmp	rcx, 0
	nop	
	jle	.label_256
	jmp	.label_194
.label_214:
	xor	eax, eax
	mov	rsp, rsp
	mov	ecx, eax
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x258]
	lea	rsi, [rsi]
	cmp	rcx, qword ptr [rdx + 8]
	lea	rsi, [rsi]
	jl	.label_256
.label_194:
	movabs	rax, 0x8000000000000000
	xor	ecx, ecx
	mov	edx, ecx
	mov	rsi, qword ptr [rbp - 0x258]
	sub	rdx, qword ptr [rsi + 8]
	nop	
	cmp	rdx, rax
	lea	rsi, [rsi]
	jl	.label_256
	movabs	rax, 0x7fffffffffffffff
	xor	ecx, ecx
	lea	rdi, [rdi]
	mov	edx, ecx
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x258]
	nop	
	sub	rdx, qword ptr [rsi + 8]
	lea	rsi, [rsi]
	cmp	rax, rdx
	jge	.label_1033
.label_256:
	lea	rsi, [rsi]
	mov	al, 1
	lea	rsi, [rsi]
	xor	ecx, ecx
	mov	edx, ecx
	mov	rsi, qword ptr [rbp - 0x258]
	mov	rsp, rsp
	sub	rdx, qword ptr [rsi + 8]
	nop	
	mov	rsi, qword ptr [rbp - 0x5c0]
	lea	rdi, [rdi]
	mov	qword ptr [rsi + 0x28], rdx
	test	al, 1
	jne	.label_300
	jmp	.label_164
.label_1033:
	nop	
	xor	eax, eax
	mov	cl, al
	mov	rsp, rsp
	xor	eax, eax
	lea	rdi, [rdi]
	mov	edx, eax
	mov	rsi, qword ptr [rbp - 0x258]
	lea	rdi, [rdi]
	sub	rdx, qword ptr [rsi + 8]
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x5c0]
	lea	rsi, [rsi]
	mov	qword ptr [rsi + 0x28], rdx
	test	cl, 1
	mov	rsp, rsp
	jne	.label_300
	lea	rsi, [rsi]
	jmp	.label_164
.label_981:
	mov	al, 1
	lea	rsi, [rsi]
	test	al, 1
	jne	.label_659
	jmp	.label_687
.label_659:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x258]
	cmp	qword ptr [rax + 8], 0
	jge	.label_679
	mov	rax, qword ptr [rbp - 0x258]
	lea	rsi, [rsi]
	movabs	rcx, 0x7fffffffffffffff
	mov	rbp, rbp
	add	rcx, qword ptr [rax + 8]
	mov	rbp, rbp
	cmp	rcx, 0
	jl	.label_238
	mov	rsp, rsp
	jmp	.label_202
.label_679:
	lea	rsi, [rsi]
	xor	eax, eax
	lea	rsi, [rsi]
	mov	ecx, eax
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x258]
	nop	
	movabs	rsi, 0x8000000000000000
	add	rsi, qword ptr [rdx + 8]
	cmp	rcx, rsi
	mov	rbp, rbp
	jl	.label_238
	jmp	.label_202
.label_687:
	mov	rsp, rsp
	xor	eax, eax
	lea	rdi, [rdi]
	mov	cl, al
	lea	rdi, [rdi]
	test	cl, 1
	nop	
	jne	.label_1107
	jmp	.label_892
.label_1107:
	mov	rbp, rbp
	mov	al, 1
	test	al, 1
	jne	.label_238
	lea	rdi, [rdi]
	jmp	.label_202
.label_892:
	mov	rax, qword ptr [rbp - 0x258]
	cmp	qword ptr [rax + 8], 0
	jge	.label_914
	mov	rsp, rsp
	xor	eax, eax
	mov	rbp, rbp
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x258]
	lea	rsi, [rsi]
	sub	rcx, qword ptr [rdx + 8]
	lea	rsi, [rsi]
	cmp	rcx, 0
	mov	rbp, rbp
	jle	.label_238
	jmp	.label_202
.label_914:
	lea	rdi, [rdi]
	xor	eax, eax
	mov	rsp, rsp
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x258]
	lea	rdi, [rdi]
	cmp	rcx, qword ptr [rdx + 8]
	jl	.label_238
.label_202:
	movabs	rax, 0x8000000000000000
	xor	ecx, ecx
	lea	rsi, [rsi]
	mov	edx, ecx
	nop	
	mov	rsi, qword ptr [rbp - 0x258]
	sub	rdx, qword ptr [rsi + 8]
	mov	rsp, rsp
	cmp	rdx, rax
	jl	.label_238
	mov	rbp, rbp
	movabs	rax, 0x7fffffffffffffff
	xor	ecx, ecx
	mov	edx, ecx
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x258]
	mov	rsp, rsp
	sub	rdx, qword ptr [rsi + 8]
	lea	rsi, [rsi]
	cmp	rax, rdx
	mov	rbp, rbp
	jge	.label_1143
.label_238:
	mov	al, 1
	lea	rsi, [rsi]
	xor	ecx, ecx
	nop	
	mov	edx, ecx
	mov	rsi, qword ptr [rbp - 0x258]
	mov	rsp, rsp
	sub	rdx, qword ptr [rsi + 8]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x5c0]
	mov	rsp, rsp
	mov	qword ptr [rsi + 0x28], rdx
	lea	rsi, [rsi]
	test	al, 1
	mov	rbp, rbp
	jne	.label_300
	lea	rsi, [rsi]
	jmp	.label_164
.label_1143:
	xor	eax, eax
	lea	rsi, [rsi]
	mov	cl, al
	xor	eax, eax
	nop	
	mov	edx, eax
	nop	
	mov	rsi, qword ptr [rbp - 0x258]
	sub	rdx, qword ptr [rsi + 8]
	mov	rsi, qword ptr [rbp - 0x5c0]
	mov	qword ptr [rsi + 0x28], rdx
	test	cl, 1
	mov	rbp, rbp
	jne	.label_300
	jmp	.label_164
.label_976:
	mov	rsp, rsp
	xor	eax, eax
	mov	rsp, rsp
	mov	cl, al
	test	cl, 1
	jne	.label_196
	jmp	.label_393
.label_196:
	mov	al, 1
	test	al, 1
	jne	.label_204
	jmp	.label_265
.label_204:
	mov	rax, qword ptr [rbp - 0x258]
	lea	rdi, [rdi]
	cmp	qword ptr [rax + 8], 0
	lea	rsi, [rsi]
	jge	.label_420
	mov	rax, qword ptr [rbp - 0x258]
	lea	rsi, [rsi]
	movabs	rcx, 0x7fffffffffffffff
	nop	
	add	rcx, qword ptr [rax + 8]
	cmp	rcx, 0
	jl	.label_135
	mov	rsp, rsp
	jmp	.label_254
.label_420:
	xor	eax, eax
	lea	rsi, [rsi]
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x258]
	mov	rbp, rbp
	movabs	rsi, 0x8000000000000000
	lea	rsi, [rsi]
	add	rsi, qword ptr [rdx + 8]
	cmp	rcx, rsi
	mov	rbp, rbp
	jl	.label_135
	jmp	.label_254
.label_265:
	nop	
	xor	eax, eax
	mov	cl, al
	lea	rsi, [rsi]
	test	cl, 1
	jne	.label_255
	jmp	.label_404
.label_255:
	lea	rsi, [rsi]
	mov	al, 1
	test	al, 1
	mov	rbp, rbp
	jne	.label_135
	jmp	.label_254
.label_404:
	mov	rax, qword ptr [rbp - 0x258]
	cmp	qword ptr [rax + 8], 0
	lea	rdi, [rdi]
	jge	.label_264
	xor	eax, eax
	mov	rbp, rbp
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x258]
	sub	rcx, qword ptr [rdx + 8]
	mov	rbp, rbp
	cmp	rcx, 0
	lea	rdi, [rdi]
	jle	.label_135
	jmp	.label_254
.label_264:
	xor	eax, eax
	mov	rsp, rsp
	mov	ecx, eax
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x258]
	cmp	rcx, qword ptr [rdx + 8]
	jl	.label_135
.label_254:
	movabs	rax, 0x8000000000000000
	xor	ecx, ecx
	mov	edx, ecx
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x258]
	sub	rdx, qword ptr [rsi + 8]
	mov	rbp, rbp
	cmp	rdx, rax
	jl	.label_135
	movabs	rax, 0x7fffffffffffffff
	xor	ecx, ecx
	nop	
	mov	edx, ecx
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x258]
	sub	rdx, qword ptr [rsi + 8]
	cmp	rax, rdx
	jge	.label_839
.label_135:
	mov	al, 1
	xor	ecx, ecx
	mov	rsp, rsp
	mov	edx, ecx
	mov	rsi, qword ptr [rbp - 0x258]
	lea	rsi, [rsi]
	sub	rdx, qword ptr [rsi + 8]
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x5c0]
	nop	
	mov	qword ptr [rsi + 0x28], rdx
	test	al, 1
	mov	rsp, rsp
	jne	.label_300
	lea	rsi, [rsi]
	jmp	.label_164
.label_839:
	xor	eax, eax
	lea	rsi, [rsi]
	mov	cl, al
	xor	eax, eax
	nop	
	mov	edx, eax
	mov	rsi, qword ptr [rbp - 0x258]
	mov	rbp, rbp
	sub	rdx, qword ptr [rsi + 8]
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x5c0]
	mov	qword ptr [rsi + 0x28], rdx
	lea	rdi, [rdi]
	test	cl, 1
	jne	.label_300
	mov	rbp, rbp
	jmp	.label_164
.label_393:
	mov	al, 1
	test	al, 1
	jne	.label_1040
	jmp	.label_950
.label_1040:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x258]
	cmp	qword ptr [rax + 8], 0
	jge	.label_230
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x258]
	nop	
	movabs	rcx, 0x7fffffffffffffff
	mov	rsp, rsp
	add	rcx, qword ptr [rax + 8]
	mov	rbp, rbp
	cmp	rcx, 0
	mov	rbp, rbp
	jl	.label_347
	jmp	.label_270
.label_230:
	lea	rdi, [rdi]
	xor	eax, eax
	mov	rsp, rsp
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x258]
	movabs	rsi, 0x8000000000000000
	add	rsi, qword ptr [rdx + 8]
	cmp	rcx, rsi
	jl	.label_347
	jmp	.label_270
.label_950:
	mov	rbp, rbp
	xor	eax, eax
	mov	cl, al
	lea	rsi, [rsi]
	test	cl, 1
	lea	rsi, [rsi]
	jne	.label_461
	jmp	.label_378
.label_461:
	mov	al, 1
	lea	rdi, [rdi]
	test	al, 1
	jne	.label_347
	lea	rdi, [rdi]
	jmp	.label_270
.label_378:
	nop	
	mov	rax, qword ptr [rbp - 0x258]
	lea	rdi, [rdi]
	cmp	qword ptr [rax + 8], 0
	lea	rdi, [rdi]
	jge	.label_192
	lea	rdi, [rdi]
	xor	eax, eax
	mov	ecx, eax
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x258]
	lea	rdi, [rdi]
	sub	rcx, qword ptr [rdx + 8]
	mov	rsp, rsp
	cmp	rcx, 0
	jle	.label_347
	jmp	.label_270
.label_192:
	xor	eax, eax
	mov	ecx, eax
	nop	
	mov	rdx, qword ptr [rbp - 0x258]
	cmp	rcx, qword ptr [rdx + 8]
	mov	rsp, rsp
	jl	.label_347
.label_270:
	mov	rsp, rsp
	movabs	rax, 0x8000000000000000
	mov	rsp, rsp
	xor	ecx, ecx
	lea	rdi, [rdi]
	mov	edx, ecx
	nop	
	mov	rsi, qword ptr [rbp - 0x258]
	sub	rdx, qword ptr [rsi + 8]
	cmp	rdx, rax
	jl	.label_347
	lea	rdi, [rdi]
	movabs	rax, 0x7fffffffffffffff
	mov	rsp, rsp
	xor	ecx, ecx
	lea	rdi, [rdi]
	mov	edx, ecx
	mov	rsi, qword ptr [rbp - 0x258]
	sub	rdx, qword ptr [rsi + 8]
	cmp	rax, rdx
	mov	rbp, rbp
	jge	.label_277
.label_347:
	nop	
	mov	al, 1
	xor	ecx, ecx
	mov	rsp, rsp
	mov	edx, ecx
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x258]
	mov	rsp, rsp
	sub	rdx, qword ptr [rsi + 8]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x5c0]
	nop	
	mov	qword ptr [rsi + 0x28], rdx
	nop	
	test	al, 1
	mov	rsp, rsp
	jne	.label_300
	jmp	.label_164
.label_277:
	xor	eax, eax
	nop	
	mov	cl, al
	lea	rdi, [rdi]
	xor	eax, eax
	mov	rbp, rbp
	mov	edx, eax
	mov	rsi, qword ptr [rbp - 0x258]
	mov	rsp, rsp
	sub	rdx, qword ptr [rsi + 8]
	mov	rsi, qword ptr [rbp - 0x5c0]
	mov	rbp, rbp
	mov	qword ptr [rsi + 0x28], rdx
	lea	rdi, [rdi]
	test	cl, 1
	mov	rsp, rsp
	jne	.label_300
	jmp	.label_164
.label_300:
	lea	rdi, [rdi]
	jmp	.label_146
.label_164:
	mov	rax, qword ptr [rbp - 0x258]
	mov	rax, qword ptr [rax + 0x10]
	mov	rcx, qword ptr [rbp - 0x5c0]
	lea	rdi, [rdi]
	mov	qword ptr [rcx + 0x30], rax
	jmp	.label_148
.label_5140:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x258]
	mov	rax, qword ptr [rax - 0x38]
	mov	rcx, qword ptr [rbp - 0x5c0]
	lea	rdi, [rdi]
	mov	qword ptr [rcx + 0x38], rax
	mov	rax, qword ptr [rbp - 0x258]
	mov	rax, qword ptr [rax + 8]
	nop	
	mov	rcx, qword ptr [rbp - 0x5c0]
	lea	rsi, [rsi]
	mov	qword ptr [rcx + 0x40], rax
	jmp	.label_148
.label_5141:
	mov	rax, qword ptr [rbp - 0x258]
	mov	rsp, rsp
	mov	rax, qword ptr [rax - 0xa8]
	mov	rcx, qword ptr [rbp - 0x5c0]
	mov	qword ptr [rcx + 0x38], rax
	mov	rax, qword ptr [rbp - 0x258]
	mov	rax, qword ptr [rax - 0x68]
	mov	rcx, qword ptr [rbp - 0x5c0]
	mov	rbp, rbp
	mov	qword ptr [rcx + 0x40], rax
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x5c0]
	mov	rcx, qword ptr [rbp - 0x258]
	mov	rdx, qword ptr [rcx]
	mov	qword ptr [rax + 0x20], rdx
	nop	
	mov	rdx, qword ptr [rcx + 8]
	mov	qword ptr [rax + 0x28], rdx
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rcx + 0x10]
	lea	rsi, [rsi]
	mov	qword ptr [rax + 0x30], rcx
	jmp	.label_148
.label_5142:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x258]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax - 0x30]
	mov	rcx, qword ptr [rbp - 0x5c0]
	mov	rsp, rsp
	mov	qword ptr [rcx + 0x40], rax
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x258]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x5c0]
	mov	qword ptr [rcx + 0x38], rax
	jmp	.label_148
.label_5143:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x258]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax - 0x68]
	mov	rcx, qword ptr [rbp - 0x5c0]
	lea	rsi, [rsi]
	mov	qword ptr [rcx + 0x40], rax
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x258]
	nop	
	mov	rax, qword ptr [rax - 0x38]
	nop	
	mov	rcx, qword ptr [rbp - 0x5c0]
	mov	qword ptr [rcx + 0x38], rax
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x5c0]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x258]
	mov	rdx, qword ptr [rcx]
	mov	rsp, rsp
	mov	qword ptr [rax + 0x20], rdx
	mov	rdx, qword ptr [rcx + 8]
	lea	rsi, [rsi]
	mov	qword ptr [rax + 0x28], rdx
	mov	rbp, rbp
	mov	rcx, qword ptr [rcx + 0x10]
	mov	qword ptr [rax + 0x30], rcx
	mov	rsp, rsp
	jmp	.label_148
.label_5144:
	mov	rsp, rsp
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x5c0]
	nop	
	mov	rsi, qword ptr [rbp - 0x258]
	mov	rdi, qword ptr [rsi - 0x70]
	mov	qword ptr [rdx + 0x20], rdi
	mov	rdi, qword ptr [rsi - 0x68]
	nop	
	mov	qword ptr [rdx + 0x28], rdi
	mov	rsi, qword ptr [rsi - 0x60]
	mov	qword ptr [rdx + 0x30], rsi
	test	cl, 1
	mov	rsp, rsp
	jne	.label_339
	lea	rdi, [rdi]
	jmp	.label_578
.label_339:
	lea	rsi, [rsi]
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_440
	jmp	.label_585
.label_440:
	lea	rdi, [rdi]
	mov	al, 1
	test	al, 1
	jne	.label_476
	jmp	.label_508
.label_476:
	mov	rax, qword ptr [rbp - 0x258]
	mov	rax, qword ptr [rax - 0x30]
	nop	
	mov	cl, al
	movsx	edx, cl
	cmp	edx, 0
	lea	rsi, [rsi]
	jge	.label_593
	nop	
	mov	rax, qword ptr [rbp - 0x258]
	mov	rax, qword ptr [rax - 0x30]
	nop	
	mov	cl, al
	movsx	edx, cl
	lea	rsi, [rsi]
	add	edx, 0x7fffffff
	cmp	edx, 0
	mov	rbp, rbp
	jl	.label_603
	mov	rbp, rbp
	jmp	.label_615
.label_593:
	mov	rsp, rsp
	xor	eax, eax
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x258]
	mov	rcx, qword ptr [rcx - 0x30]
	mov	rbp, rbp
	mov	dl, cl
	lea	rdi, [rdi]
	movsx	esi, dl
	add	esi, 0x80000000
	cmp	eax, esi
	lea	rdi, [rdi]
	jl	.label_603
	lea	rsi, [rsi]
	jmp	.label_615
.label_508:
	xor	eax, eax
	mov	cl, al
	mov	rsp, rsp
	test	cl, 1
	nop	
	jne	.label_692
	jmp	.label_631
.label_692:
	mov	al, 1
	test	al, 1
	lea	rsi, [rsi]
	jne	.label_603
	jmp	.label_615
.label_631:
	mov	rax, qword ptr [rbp - 0x258]
	mov	rbp, rbp
	mov	rax, qword ptr [rax - 0x30]
	mov	cl, al
	nop	
	movsx	edx, cl
	cmp	edx, 0
	lea	rdi, [rdi]
	jge	.label_276
	xor	eax, eax
	mov	rcx, qword ptr [rbp - 0x258]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rcx - 0x30]
	mov	dl, cl
	movsx	esi, dl
	sub	eax, esi
	cmp	eax, 0
	jle	.label_603
	lea	rdi, [rdi]
	jmp	.label_615
.label_276:
	mov	rsp, rsp
	xor	eax, eax
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x258]
	nop	
	mov	rcx, qword ptr [rcx - 0x30]
	lea	rsi, [rsi]
	mov	dl, cl
	lea	rsi, [rsi]
	movsx	esi, dl
	cmp	eax, esi
	nop	
	jl	.label_603
.label_615:
	xor	eax, eax
	mov	rcx, qword ptr [rbp - 0x258]
	mov	rcx, qword ptr [rcx - 0x30]
	mov	dl, cl
	mov	rsp, rsp
	movsx	esi, dl
	sub	eax, esi
	mov	rsp, rsp
	cmp	eax, -0x80
	lea	rdi, [rdi]
	jl	.label_603
	lea	rdi, [rdi]
	mov	eax, 0x7f
	xor	ecx, ecx
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x258]
	mov	rsp, rsp
	mov	rdx, qword ptr [rdx - 0x30]
	mov	rsp, rsp
	mov	sil, dl
	mov	rsp, rsp
	movsx	edi, sil
	sub	ecx, edi
	cmp	eax, ecx
	jge	.label_663
.label_603:
	mov	al, 1
	nop	
	xor	ecx, ecx
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x258]
	mov	rdx, qword ptr [rdx - 0x30]
	lea	rsi, [rsi]
	mov	sil, dl
	nop	
	movsx	edi, sil
	sub	ecx, edi
	lea	rsi, [rsi]
	mov	sil, cl
	movsx	rdx, sil
	mov	r8, qword ptr [rbp - 0x5c0]
	mov	qword ptr [r8 + 0x38], rdx
	nop	
	test	al, 1
	jne	.label_282
	lea	rdi, [rdi]
	jmp	.label_162
.label_663:
	xor	eax, eax
	mov	cl, al
	xor	eax, eax
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x258]
	mov	rdx, qword ptr [rdx - 0x30]
	lea	rdi, [rdi]
	mov	sil, dl
	lea	rdi, [rdi]
	movsx	edi, sil
	mov	rbp, rbp
	sub	eax, edi
	mov	sil, al
	movsx	rdx, sil
	mov	r8, qword ptr [rbp - 0x5c0]
	nop	
	mov	qword ptr [r8 + 0x38], rdx
	test	cl, 1
	lea	rsi, [rsi]
	jne	.label_282
	mov	rsp, rsp
	jmp	.label_162
.label_585:
	mov	al, 1
	test	al, 1
	jne	.label_708
	lea	rsi, [rsi]
	jmp	.label_711
.label_708:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x258]
	cmp	qword ptr [rax - 0x30], 0
	jge	.label_713
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x258]
	movabs	rcx, 0x7fffffffffffffff
	mov	rsp, rsp
	add	rcx, qword ptr [rax - 0x30]
	cmp	rcx, 0
	jl	.label_306
	mov	rsp, rsp
	jmp	.label_645
.label_713:
	nop	
	xor	eax, eax
	mov	rsp, rsp
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x258]
	lea	rdi, [rdi]
	movabs	rsi, 0x8000000000000000
	lea	rsi, [rsi]
	add	rsi, qword ptr [rdx - 0x30]
	lea	rdi, [rdi]
	cmp	rcx, rsi
	jl	.label_306
	nop	
	jmp	.label_645
.label_711:
	lea	rsi, [rsi]
	xor	eax, eax
	lea	rdi, [rdi]
	mov	cl, al
	test	cl, 1
	lea	rdi, [rdi]
	jne	.label_739
	mov	rsp, rsp
	jmp	.label_747
.label_739:
	mov	rsp, rsp
	mov	al, 1
	mov	rsp, rsp
	test	al, 1
	mov	rsp, rsp
	jne	.label_306
	mov	rbp, rbp
	jmp	.label_645
.label_747:
	nop	
	mov	rax, qword ptr [rbp - 0x258]
	mov	rsp, rsp
	cmp	qword ptr [rax - 0x30], 0
	mov	rsp, rsp
	jge	.label_754
	mov	rbp, rbp
	xor	eax, eax
	lea	rdi, [rdi]
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x258]
	mov	rbp, rbp
	sub	rcx, qword ptr [rdx - 0x30]
	mov	rsp, rsp
	cmp	rcx, 0
	nop	
	jle	.label_306
	jmp	.label_645
.label_754:
	xor	eax, eax
	mov	ecx, eax
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x258]
	cmp	rcx, qword ptr [rdx - 0x30]
	jl	.label_306
.label_645:
	nop	
	xor	eax, eax
	mov	ecx, eax
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x258]
	sub	rcx, qword ptr [rdx - 0x30]
	nop	
	cmp	rcx, -0x80
	jl	.label_306
	lea	rsi, [rsi]
	mov	eax, 0x7f
	mov	rbp, rbp
	mov	ecx, eax
	nop	
	xor	eax, eax
	mov	edx, eax
	mov	rsi, qword ptr [rbp - 0x258]
	sub	rdx, qword ptr [rsi - 0x30]
	cmp	rcx, rdx
	jge	.label_785
.label_306:
	mov	rsp, rsp
	mov	al, 1
	nop	
	xor	ecx, ecx
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x258]
	mov	rdx, qword ptr [rdx - 0x30]
	mov	esi, edx
	lea	rdi, [rdi]
	sub	ecx, esi
	mov	dil, cl
	lea	rsi, [rsi]
	movsx	rdx, dil
	mov	rbp, rbp
	mov	r8, qword ptr [rbp - 0x5c0]
	mov	rsp, rsp
	mov	qword ptr [r8 + 0x38], rdx
	test	al, 1
	jne	.label_282
	jmp	.label_162
.label_785:
	xor	eax, eax
	mov	rbp, rbp
	mov	cl, al
	xor	eax, eax
	nop	
	mov	rdx, qword ptr [rbp - 0x258]
	mov	rbp, rbp
	mov	rdx, qword ptr [rdx - 0x30]
	mov	esi, edx
	sub	eax, esi
	nop	
	mov	dil, al
	mov	rsp, rsp
	movsx	rdx, dil
	lea	rsi, [rsi]
	mov	r8, qword ptr [rbp - 0x5c0]
	nop	
	mov	qword ptr [r8 + 0x38], rdx
	test	cl, 1
	jne	.label_282
	jmp	.label_162
.label_578:
	lea	rdi, [rdi]
	xor	eax, eax
	nop	
	mov	cl, al
	test	cl, 1
	nop	
	jne	.label_819
	nop	
	jmp	.label_823
.label_819:
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	mov	rsp, rsp
	jne	.label_825
	mov	rsp, rsp
	jmp	.label_828
.label_825:
	mov	al, 1
	test	al, 1
	jne	.label_831
	jmp	.label_833
.label_831:
	nop	
	mov	rax, qword ptr [rbp - 0x258]
	mov	rax, qword ptr [rax - 0x30]
	lea	rdi, [rdi]
	mov	cx, ax
	mov	rbp, rbp
	movsx	edx, cx
	cmp	edx, 0
	lea	rdi, [rdi]
	jge	.label_1036
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x258]
	mov	rax, qword ptr [rax - 0x30]
	mov	cx, ax
	movsx	edx, cx
	add	edx, 0x7fffffff
	lea	rdi, [rdi]
	cmp	edx, 0
	jl	.label_847
	jmp	.label_857
.label_1036:
	lea	rdi, [rdi]
	xor	eax, eax
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x258]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rcx - 0x30]
	mov	dx, cx
	lea	rsi, [rsi]
	movsx	esi, dx
	add	esi, 0x80000000
	cmp	eax, esi
	lea	rdi, [rdi]
	jl	.label_847
	jmp	.label_857
.label_833:
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	lea	rdi, [rdi]
	jne	.label_875
	jmp	.label_877
.label_875:
	mov	al, 1
	test	al, 1
	jne	.label_847
	nop	
	jmp	.label_857
.label_877:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x258]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax - 0x30]
	mov	cx, ax
	mov	rsp, rsp
	movsx	edx, cx
	lea	rsi, [rsi]
	cmp	edx, 0
	jge	.label_881
	xor	eax, eax
	mov	rcx, qword ptr [rbp - 0x258]
	mov	rsp, rsp
	mov	rcx, qword ptr [rcx - 0x30]
	lea	rdi, [rdi]
	mov	dx, cx
	movsx	esi, dx
	nop	
	sub	eax, esi
	mov	rsp, rsp
	cmp	eax, 0
	jle	.label_847
	jmp	.label_857
.label_881:
	xor	eax, eax
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x258]
	nop	
	mov	rcx, qword ptr [rcx - 0x30]
	lea	rsi, [rsi]
	mov	dx, cx
	movsx	esi, dx
	cmp	eax, esi
	lea	rsi, [rsi]
	jl	.label_847
.label_857:
	xor	eax, eax
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x258]
	nop	
	mov	rcx, qword ptr [rcx - 0x30]
	nop	
	mov	dx, cx
	movsx	esi, dx
	sub	eax, esi
	mov	rsp, rsp
	cmp	eax, 0xffff8000
	lea	rsi, [rsi]
	jl	.label_847
	lea	rsi, [rsi]
	mov	eax, 0x7fff
	xor	ecx, ecx
	mov	rdx, qword ptr [rbp - 0x258]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rdx - 0x30]
	lea	rdi, [rdi]
	mov	si, dx
	movsx	edi, si
	sub	ecx, edi
	cmp	eax, ecx
	jge	.label_907
.label_847:
	mov	al, 1
	mov	rbp, rbp
	xor	ecx, ecx
	mov	rdx, qword ptr [rbp - 0x258]
	mov	rdx, qword ptr [rdx - 0x30]
	mov	rsp, rsp
	mov	si, dx
	movsx	edi, si
	sub	ecx, edi
	mov	si, cx
	lea	rsi, [rsi]
	movsx	rdx, si
	nop	
	mov	r8, qword ptr [rbp - 0x5c0]
	nop	
	mov	qword ptr [r8 + 0x38], rdx
	test	al, 1
	jne	.label_282
	jmp	.label_162
.label_907:
	xor	eax, eax
	mov	cl, al
	lea	rsi, [rsi]
	xor	eax, eax
	nop	
	mov	rdx, qword ptr [rbp - 0x258]
	mov	rsp, rsp
	mov	rdx, qword ptr [rdx - 0x30]
	mov	rbp, rbp
	mov	si, dx
	mov	rsp, rsp
	movsx	edi, si
	mov	rbp, rbp
	sub	eax, edi
	lea	rsi, [rsi]
	mov	si, ax
	movsx	rdx, si
	nop	
	mov	r8, qword ptr [rbp - 0x5c0]
	lea	rdi, [rdi]
	mov	qword ptr [r8 + 0x38], rdx
	test	cl, 1
	jne	.label_282
	lea	rsi, [rsi]
	jmp	.label_162
.label_828:
	mov	al, 1
	nop	
	test	al, 1
	nop	
	jne	.label_951
	lea	rdi, [rdi]
	jmp	.label_955
.label_951:
	mov	rax, qword ptr [rbp - 0x258]
	cmp	qword ptr [rax - 0x30], 0
	lea	rsi, [rsi]
	jge	.label_957
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x258]
	mov	rsp, rsp
	movabs	rcx, 0x7fffffffffffffff
	add	rcx, qword ptr [rax - 0x30]
	cmp	rcx, 0
	jl	.label_768
	nop	
	jmp	.label_932
.label_957:
	xor	eax, eax
	mov	rsp, rsp
	mov	ecx, eax
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x258]
	mov	rbp, rbp
	movabs	rsi, 0x8000000000000000
	mov	rbp, rbp
	add	rsi, qword ptr [rdx - 0x30]
	cmp	rcx, rsi
	mov	rbp, rbp
	jl	.label_768
	jmp	.label_932
.label_955:
	lea	rdi, [rdi]
	xor	eax, eax
	nop	
	mov	cl, al
	mov	rsp, rsp
	test	cl, 1
	jne	.label_992
	mov	rbp, rbp
	jmp	.label_998
.label_992:
	mov	al, 1
	mov	rbp, rbp
	test	al, 1
	jne	.label_768
	lea	rsi, [rsi]
	jmp	.label_932
.label_998:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x258]
	mov	rsp, rsp
	cmp	qword ptr [rax - 0x30], 0
	lea	rdi, [rdi]
	jge	.label_1003
	nop	
	xor	eax, eax
	mov	rbp, rbp
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x258]
	sub	rcx, qword ptr [rdx - 0x30]
	cmp	rcx, 0
	lea	rsi, [rsi]
	jle	.label_768
	jmp	.label_932
.label_1003:
	xor	eax, eax
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x258]
	mov	rbp, rbp
	cmp	rcx, qword ptr [rdx - 0x30]
	lea	rdi, [rdi]
	jl	.label_768
.label_932:
	xor	eax, eax
	mov	ecx, eax
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x258]
	sub	rcx, qword ptr [rdx - 0x30]
	mov	rsp, rsp
	cmp	rcx, -0x8000
	mov	rsp, rsp
	jl	.label_768
	mov	eax, 0x7fff
	lea	rdi, [rdi]
	mov	ecx, eax
	lea	rsi, [rsi]
	xor	eax, eax
	mov	edx, eax
	mov	rsi, qword ptr [rbp - 0x258]
	nop	
	sub	rdx, qword ptr [rsi - 0x30]
	cmp	rcx, rdx
	lea	rdi, [rdi]
	jge	.label_1020
.label_768:
	nop	
	mov	al, 1
	xor	ecx, ecx
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x258]
	nop	
	mov	rdx, qword ptr [rdx - 0x30]
	mov	esi, edx
	sub	ecx, esi
	mov	di, cx
	movsx	rdx, di
	mov	r8, qword ptr [rbp - 0x5c0]
	mov	qword ptr [r8 + 0x38], rdx
	test	al, 1
	lea	rsi, [rsi]
	jne	.label_282
	nop	
	jmp	.label_162
.label_1020:
	lea	rsi, [rsi]
	xor	eax, eax
	lea	rdi, [rdi]
	mov	cl, al
	nop	
	xor	eax, eax
	mov	rdx, qword ptr [rbp - 0x258]
	mov	rdx, qword ptr [rdx - 0x30]
	mov	rsp, rsp
	mov	esi, edx
	sub	eax, esi
	mov	di, ax
	movsx	rdx, di
	mov	rsp, rsp
	mov	r8, qword ptr [rbp - 0x5c0]
	lea	rsi, [rsi]
	mov	qword ptr [r8 + 0x38], rdx
	lea	rsi, [rsi]
	test	cl, 1
	jne	.label_282
	lea	rsi, [rsi]
	jmp	.label_162
.label_823:
	mov	rsp, rsp
	xor	eax, eax
	mov	rsp, rsp
	mov	cl, al
	test	cl, 1
	lea	rdi, [rdi]
	jne	.label_1053
	jmp	.label_1058
.label_1053:
	mov	rbp, rbp
	xor	eax, eax
	mov	rbp, rbp
	mov	cl, al
	nop	
	test	cl, 1
	jne	.label_1059
	nop	
	jmp	.label_1067
.label_1059:
	mov	al, 1
	lea	rdi, [rdi]
	test	al, 1
	jne	.label_1069
	jmp	.label_1072
.label_1069:
	mov	rax, qword ptr [rbp - 0x258]
	mov	rax, qword ptr [rax - 0x30]
	mov	ecx, eax
	cmp	ecx, 0
	mov	rbp, rbp
	jge	.label_1073
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x258]
	mov	rbp, rbp
	mov	rax, qword ptr [rax - 0x30]
	mov	ecx, eax
	add	ecx, 0x7fffffff
	cmp	ecx, 0
	lea	rsi, [rsi]
	jl	.label_1078
	jmp	.label_610
.label_1073:
	xor	eax, eax
	mov	rcx, qword ptr [rbp - 0x258]
	mov	rsp, rsp
	mov	rcx, qword ptr [rcx - 0x30]
	mov	edx, ecx
	add	edx, 0x80000000
	cmp	eax, edx
	lea	rdi, [rdi]
	jl	.label_1078
	nop	
	jmp	.label_610
.label_1072:
	lea	rsi, [rsi]
	xor	eax, eax
	mov	cl, al
	lea	rsi, [rsi]
	test	cl, 1
	jne	.label_1101
	jmp	.label_1104
.label_1101:
	nop	
	mov	al, 1
	nop	
	test	al, 1
	jne	.label_1078
	jmp	.label_610
.label_1104:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x258]
	mov	rax, qword ptr [rax - 0x30]
	mov	ecx, eax
	cmp	ecx, 0
	mov	rbp, rbp
	jge	.label_1111
	xor	eax, eax
	mov	rcx, qword ptr [rbp - 0x258]
	mov	rbp, rbp
	mov	rcx, qword ptr [rcx - 0x30]
	mov	edx, ecx
	sub	eax, edx
	nop	
	cmp	eax, 0
	jle	.label_1078
	mov	rsp, rsp
	jmp	.label_610
.label_1111:
	mov	rbp, rbp
	xor	eax, eax
	mov	rcx, qword ptr [rbp - 0x258]
	mov	rcx, qword ptr [rcx - 0x30]
	mov	edx, ecx
	cmp	eax, edx
	nop	
	jl	.label_1078
.label_610:
	xor	eax, eax
	mov	rcx, qword ptr [rbp - 0x258]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rcx - 0x30]
	lea	rdi, [rdi]
	mov	edx, ecx
	mov	rsp, rsp
	sub	eax, edx
	nop	
	cmp	eax, 0x80000000
	jl	.label_1078
	mov	eax, 0x7fffffff
	xor	ecx, ecx
	mov	rdx, qword ptr [rbp - 0x258]
	nop	
	mov	rdx, qword ptr [rdx - 0x30]
	mov	esi, edx
	sub	ecx, esi
	nop	
	cmp	eax, ecx
	mov	rbp, rbp
	jge	.label_1134
.label_1078:
	mov	al, 1
	xor	ecx, ecx
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x258]
	mov	rdx, qword ptr [rdx - 0x30]
	mov	esi, edx
	nop	
	sub	ecx, esi
	nop	
	movsxd	rdx, ecx
	mov	rdi, qword ptr [rbp - 0x5c0]
	mov	qword ptr [rdi + 0x38], rdx
	test	al, 1
	lea	rdi, [rdi]
	jne	.label_282
	jmp	.label_162
.label_1134:
	nop	
	xor	eax, eax
	mov	cl, al
	nop	
	xor	eax, eax
	mov	rdx, qword ptr [rbp - 0x258]
	mov	rdx, qword ptr [rdx - 0x30]
	mov	rbp, rbp
	mov	esi, edx
	sub	eax, esi
	lea	rsi, [rsi]
	movsxd	rdx, eax
	mov	rdi, qword ptr [rbp - 0x5c0]
	mov	qword ptr [rdi + 0x38], rdx
	test	cl, 1
	jne	.label_282
	jmp	.label_162
.label_1067:
	mov	al, 1
	mov	rsp, rsp
	test	al, 1
	mov	rbp, rbp
	jne	.label_166
	mov	rsp, rsp
	jmp	.label_292
.label_166:
	mov	rax, qword ptr [rbp - 0x258]
	nop	
	cmp	qword ptr [rax - 0x30], 0
	lea	rsi, [rsi]
	jge	.label_178
	nop	
	mov	rax, qword ptr [rbp - 0x258]
	movabs	rcx, 0x7fffffffffffffff
	add	rcx, qword ptr [rax - 0x30]
	lea	rsi, [rsi]
	cmp	rcx, 0
	jl	.label_191
	mov	rbp, rbp
	jmp	.label_203
.label_178:
	xor	eax, eax
	mov	rsp, rsp
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x258]
	nop	
	movabs	rsi, 0x8000000000000000
	mov	rsp, rsp
	add	rsi, qword ptr [rdx - 0x30]
	mov	rsp, rsp
	cmp	rcx, rsi
	jl	.label_191
	lea	rdi, [rdi]
	jmp	.label_203
.label_292:
	lea	rsi, [rsi]
	xor	eax, eax
	nop	
	mov	cl, al
	test	cl, 1
	jne	.label_225
	lea	rsi, [rsi]
	jmp	.label_233
.label_225:
	mov	al, 1
	test	al, 1
	jne	.label_191
	jmp	.label_203
.label_233:
	nop	
	mov	rax, qword ptr [rbp - 0x258]
	cmp	qword ptr [rax - 0x30], 0
	mov	rsp, rsp
	jge	.label_243
	xor	eax, eax
	mov	rbp, rbp
	mov	ecx, eax
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x258]
	sub	rcx, qword ptr [rdx - 0x30]
	lea	rsi, [rsi]
	cmp	rcx, 0
	mov	rsp, rsp
	jle	.label_191
	jmp	.label_203
.label_243:
	xor	eax, eax
	nop	
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x258]
	lea	rsi, [rsi]
	cmp	rcx, qword ptr [rdx - 0x30]
	mov	rsp, rsp
	jl	.label_191
.label_203:
	lea	rsi, [rsi]
	xor	eax, eax
	mov	ecx, eax
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x258]
	mov	rsp, rsp
	sub	rcx, qword ptr [rdx - 0x30]
	cmp	rcx, -0x80000000
	lea	rsi, [rsi]
	jl	.label_191
	mov	eax, 0x7fffffff
	mov	ecx, eax
	xor	eax, eax
	mov	edx, eax
	mov	rsi, qword ptr [rbp - 0x258]
	sub	rdx, qword ptr [rsi - 0x30]
	cmp	rcx, rdx
	mov	rsp, rsp
	jge	.label_253
.label_191:
	mov	al, 1
	xor	ecx, ecx
	nop	
	mov	rdx, qword ptr [rbp - 0x258]
	mov	rdx, qword ptr [rdx - 0x30]
	lea	rsi, [rsi]
	mov	esi, edx
	mov	rsp, rsp
	sub	ecx, esi
	lea	rdi, [rdi]
	movsxd	rdx, ecx
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x5c0]
	mov	qword ptr [rdi + 0x38], rdx
	test	al, 1
	jne	.label_282
	jmp	.label_162
.label_253:
	nop	
	xor	eax, eax
	mov	cl, al
	xor	eax, eax
	mov	rdx, qword ptr [rbp - 0x258]
	mov	rdx, qword ptr [rdx - 0x30]
	mov	esi, edx
	sub	eax, esi
	movsxd	rdx, eax
	mov	rdi, qword ptr [rbp - 0x5c0]
	mov	qword ptr [rdi + 0x38], rdx
	test	cl, 1
	jne	.label_282
	jmp	.label_162
.label_1058:
	mov	al, 1
	lea	rdi, [rdi]
	test	al, 1
	lea	rsi, [rsi]
	jne	.label_312
	jmp	.label_319
.label_312:
	xor	eax, eax
	mov	cl, al
	mov	rsp, rsp
	test	cl, 1
	mov	rsp, rsp
	jne	.label_320
	jmp	.label_325
.label_320:
	mov	al, 1
	mov	rsp, rsp
	test	al, 1
	mov	rbp, rbp
	jne	.label_326
	jmp	.label_331
.label_326:
	mov	rax, qword ptr [rbp - 0x258]
	cmp	qword ptr [rax - 0x30], 0
	jge	.label_332
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x258]
	movabs	rcx, 0x7fffffffffffffff
	mov	rbp, rbp
	add	rcx, qword ptr [rax - 0x30]
	cmp	rcx, 0
	jl	.label_337
	jmp	.label_348
.label_332:
	lea	rsi, [rsi]
	xor	eax, eax
	lea	rdi, [rdi]
	mov	ecx, eax
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x258]
	movabs	rsi, 0x8000000000000000
	lea	rsi, [rsi]
	add	rsi, qword ptr [rdx - 0x30]
	nop	
	cmp	rcx, rsi
	lea	rdi, [rdi]
	jl	.label_337
	lea	rdi, [rdi]
	jmp	.label_348
.label_331:
	lea	rsi, [rsi]
	xor	eax, eax
	nop	
	mov	cl, al
	lea	rsi, [rsi]
	test	cl, 1
	jne	.label_364
	jmp	.label_372
.label_364:
	mov	rbp, rbp
	mov	al, 1
	mov	rsp, rsp
	test	al, 1
	jne	.label_337
	mov	rbp, rbp
	jmp	.label_348
.label_372:
	mov	rax, qword ptr [rbp - 0x258]
	cmp	qword ptr [rax - 0x30], 0
	lea	rdi, [rdi]
	jge	.label_278
	lea	rsi, [rsi]
	xor	eax, eax
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x258]
	lea	rdi, [rdi]
	sub	rcx, qword ptr [rdx - 0x30]
	cmp	rcx, 0
	mov	rsp, rsp
	jle	.label_337
	lea	rsi, [rsi]
	jmp	.label_348
.label_278:
	lea	rdi, [rdi]
	xor	eax, eax
	mov	ecx, eax
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x258]
	mov	rbp, rbp
	cmp	rcx, qword ptr [rdx - 0x30]
	mov	rbp, rbp
	jl	.label_337
.label_348:
	nop	
	movabs	rax, 0x8000000000000000
	xor	ecx, ecx
	mov	rsp, rsp
	mov	edx, ecx
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x258]
	sub	rdx, qword ptr [rsi - 0x30]
	lea	rsi, [rsi]
	cmp	rdx, rax
	mov	rbp, rbp
	jl	.label_337
	movabs	rax, 0x7fffffffffffffff
	lea	rdi, [rdi]
	xor	ecx, ecx
	lea	rsi, [rsi]
	mov	edx, ecx
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x258]
	sub	rdx, qword ptr [rsi - 0x30]
	nop	
	cmp	rax, rdx
	jge	.label_409
.label_337:
	mov	al, 1
	xor	ecx, ecx
	lea	rsi, [rsi]
	mov	edx, ecx
	mov	rsi, qword ptr [rbp - 0x258]
	sub	rdx, qword ptr [rsi - 0x30]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x5c0]
	mov	qword ptr [rsi + 0x38], rdx
	test	al, 1
	jne	.label_282
	nop	
	jmp	.label_162
.label_409:
	lea	rdi, [rdi]
	xor	eax, eax
	mov	cl, al
	xor	eax, eax
	mov	edx, eax
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x258]
	nop	
	sub	rdx, qword ptr [rsi - 0x30]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x5c0]
	mov	qword ptr [rsi + 0x38], rdx
	nop	
	test	cl, 1
	jne	.label_282
	jmp	.label_162
.label_325:
	mov	al, 1
	test	al, 1
	mov	rbp, rbp
	jne	.label_446
	jmp	.label_451
.label_446:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x258]
	nop	
	cmp	qword ptr [rax - 0x30], 0
	jge	.label_452
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x258]
	lea	rdi, [rdi]
	movabs	rcx, 0x7fffffffffffffff
	add	rcx, qword ptr [rax - 0x30]
	mov	rbp, rbp
	cmp	rcx, 0
	nop	
	jl	.label_456
	nop	
	jmp	.label_489
.label_452:
	nop	
	xor	eax, eax
	lea	rsi, [rsi]
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x258]
	mov	rsp, rsp
	movabs	rsi, 0x8000000000000000
	add	rsi, qword ptr [rdx - 0x30]
	cmp	rcx, rsi
	nop	
	jl	.label_456
	lea	rsi, [rsi]
	jmp	.label_489
.label_451:
	xor	eax, eax
	nop	
	mov	cl, al
	mov	rbp, rbp
	test	cl, 1
	jne	.label_1118
	lea	rdi, [rdi]
	jmp	.label_498
.label_1118:
	mov	al, 1
	nop	
	test	al, 1
	mov	rsp, rsp
	jne	.label_456
	lea	rdi, [rdi]
	jmp	.label_489
.label_498:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x258]
	nop	
	cmp	qword ptr [rax - 0x30], 0
	jge	.label_974
	mov	rsp, rsp
	xor	eax, eax
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x258]
	mov	rbp, rbp
	sub	rcx, qword ptr [rdx - 0x30]
	cmp	rcx, 0
	jle	.label_456
	jmp	.label_489
.label_974:
	mov	rsp, rsp
	xor	eax, eax
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x258]
	lea	rsi, [rsi]
	cmp	rcx, qword ptr [rdx - 0x30]
	jl	.label_456
.label_489:
	lea	rdi, [rdi]
	movabs	rax, 0x8000000000000000
	mov	rsp, rsp
	xor	ecx, ecx
	mov	edx, ecx
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x258]
	nop	
	sub	rdx, qword ptr [rsi - 0x30]
	cmp	rdx, rax
	lea	rdi, [rdi]
	jl	.label_456
	lea	rsi, [rsi]
	movabs	rax, 0x7fffffffffffffff
	xor	ecx, ecx
	nop	
	mov	edx, ecx
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x258]
	mov	rbp, rbp
	sub	rdx, qword ptr [rsi - 0x30]
	cmp	rax, rdx
	mov	rbp, rbp
	jge	.label_459
.label_456:
	mov	rbp, rbp
	mov	al, 1
	xor	ecx, ecx
	mov	edx, ecx
	mov	rsi, qword ptr [rbp - 0x258]
	mov	rsp, rsp
	sub	rdx, qword ptr [rsi - 0x30]
	mov	rsi, qword ptr [rbp - 0x5c0]
	nop	
	mov	qword ptr [rsi + 0x38], rdx
	mov	rsp, rsp
	test	al, 1
	jne	.label_282
	mov	rsp, rsp
	jmp	.label_162
.label_459:
	xor	eax, eax
	mov	cl, al
	lea	rdi, [rdi]
	xor	eax, eax
	mov	rsp, rsp
	mov	edx, eax
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x258]
	sub	rdx, qword ptr [rsi - 0x30]
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x5c0]
	mov	qword ptr [rsi + 0x38], rdx
	test	cl, 1
	lea	rsi, [rsi]
	jne	.label_282
	lea	rdi, [rdi]
	jmp	.label_162
.label_319:
	xor	eax, eax
	mov	cl, al
	nop	
	test	cl, 1
	lea	rdi, [rdi]
	jne	.label_575
	jmp	.label_582
.label_575:
	lea	rsi, [rsi]
	mov	al, 1
	lea	rsi, [rsi]
	test	al, 1
	jne	.label_583
	lea	rsi, [rsi]
	jmp	.label_588
.label_583:
	mov	rax, qword ptr [rbp - 0x258]
	nop	
	cmp	qword ptr [rax - 0x30], 0
	lea	rsi, [rsi]
	jge	.label_496
	mov	rax, qword ptr [rbp - 0x258]
	mov	rbp, rbp
	movabs	rcx, 0x7fffffffffffffff
	lea	rdi, [rdi]
	add	rcx, qword ptr [rax - 0x30]
	cmp	rcx, 0
	nop	
	jl	.label_597
	jmp	.label_584
.label_496:
	xor	eax, eax
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x258]
	mov	rbp, rbp
	movabs	rsi, 0x8000000000000000
	add	rsi, qword ptr [rdx - 0x30]
	cmp	rcx, rsi
	mov	rsp, rsp
	jl	.label_597
	jmp	.label_584
.label_588:
	xor	eax, eax
	mov	rsp, rsp
	mov	cl, al
	mov	rsp, rsp
	test	cl, 1
	lea	rdi, [rdi]
	jne	.label_622
	mov	rbp, rbp
	jmp	.label_626
.label_622:
	mov	al, 1
	mov	rsp, rsp
	test	al, 1
	jne	.label_597
	mov	rbp, rbp
	jmp	.label_584
.label_626:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x258]
	mov	rbp, rbp
	cmp	qword ptr [rax - 0x30], 0
	lea	rdi, [rdi]
	jge	.label_1132
	mov	rsp, rsp
	xor	eax, eax
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x258]
	sub	rcx, qword ptr [rdx - 0x30]
	cmp	rcx, 0
	jle	.label_597
	nop	
	jmp	.label_584
.label_1132:
	mov	rsp, rsp
	xor	eax, eax
	mov	rbp, rbp
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x258]
	mov	rsp, rsp
	cmp	rcx, qword ptr [rdx - 0x30]
	nop	
	jl	.label_597
.label_584:
	movabs	rax, 0x8000000000000000
	xor	ecx, ecx
	nop	
	mov	edx, ecx
	nop	
	mov	rsi, qword ptr [rbp - 0x258]
	mov	rbp, rbp
	sub	rdx, qword ptr [rsi - 0x30]
	cmp	rdx, rax
	jl	.label_597
	movabs	rax, 0x7fffffffffffffff
	xor	ecx, ecx
	mov	rsp, rsp
	mov	edx, ecx
	mov	rsi, qword ptr [rbp - 0x258]
	lea	rdi, [rdi]
	sub	rdx, qword ptr [rsi - 0x30]
	lea	rsi, [rsi]
	cmp	rax, rdx
	lea	rdi, [rdi]
	jge	.label_897
.label_597:
	mov	al, 1
	lea	rdi, [rdi]
	xor	ecx, ecx
	lea	rsi, [rsi]
	mov	edx, ecx
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x258]
	sub	rdx, qword ptr [rsi - 0x30]
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x5c0]
	mov	qword ptr [rsi + 0x38], rdx
	lea	rsi, [rsi]
	test	al, 1
	lea	rdi, [rdi]
	jne	.label_282
	lea	rdi, [rdi]
	jmp	.label_162
.label_897:
	mov	rbp, rbp
	xor	eax, eax
	lea	rsi, [rsi]
	mov	cl, al
	nop	
	xor	eax, eax
	mov	edx, eax
	mov	rsi, qword ptr [rbp - 0x258]
	sub	rdx, qword ptr [rsi - 0x30]
	mov	rsi, qword ptr [rbp - 0x5c0]
	mov	qword ptr [rsi + 0x38], rdx
	test	cl, 1
	jne	.label_282
	mov	rbp, rbp
	jmp	.label_162
.label_582:
	mov	al, 1
	mov	rbp, rbp
	test	al, 1
	jne	.label_688
	jmp	.label_693
.label_688:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x258]
	cmp	qword ptr [rax - 0x30], 0
	lea	rdi, [rdi]
	jge	.label_695
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x258]
	nop	
	movabs	rcx, 0x7fffffffffffffff
	lea	rsi, [rsi]
	add	rcx, qword ptr [rax - 0x30]
	cmp	rcx, 0
	lea	rsi, [rsi]
	jl	.label_269
	jmp	.label_226
.label_695:
	xor	eax, eax
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x258]
	nop	
	movabs	rsi, 0x8000000000000000
	add	rsi, qword ptr [rdx - 0x30]
	mov	rbp, rbp
	cmp	rcx, rsi
	jl	.label_269
	mov	rsp, rsp
	jmp	.label_226
.label_693:
	xor	eax, eax
	mov	cl, al
	lea	rdi, [rdi]
	test	cl, 1
	jne	.label_752
	lea	rsi, [rsi]
	jmp	.label_419
.label_752:
	mov	rbp, rbp
	mov	al, 1
	test	al, 1
	jne	.label_269
	nop	
	jmp	.label_226
.label_419:
	mov	rax, qword ptr [rbp - 0x258]
	mov	rbp, rbp
	cmp	qword ptr [rax - 0x30], 0
	nop	
	jge	.label_406
	mov	rsp, rsp
	xor	eax, eax
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x258]
	mov	rbp, rbp
	sub	rcx, qword ptr [rdx - 0x30]
	cmp	rcx, 0
	lea	rsi, [rsi]
	jle	.label_269
	mov	rsp, rsp
	jmp	.label_226
.label_406:
	nop	
	xor	eax, eax
	mov	rsp, rsp
	mov	ecx, eax
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x258]
	cmp	rcx, qword ptr [rdx - 0x30]
	jl	.label_269
.label_226:
	movabs	rax, 0x8000000000000000
	mov	rsp, rsp
	xor	ecx, ecx
	mov	edx, ecx
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x258]
	sub	rdx, qword ptr [rsi - 0x30]
	mov	rbp, rbp
	cmp	rdx, rax
	jl	.label_269
	mov	rbp, rbp
	movabs	rax, 0x7fffffffffffffff
	xor	ecx, ecx
	mov	rsp, rsp
	mov	edx, ecx
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x258]
	sub	rdx, qword ptr [rsi - 0x30]
	mov	rbp, rbp
	cmp	rax, rdx
	jge	.label_764
.label_269:
	mov	al, 1
	mov	rbp, rbp
	xor	ecx, ecx
	mov	edx, ecx
	mov	rsi, qword ptr [rbp - 0x258]
	sub	rdx, qword ptr [rsi - 0x30]
	mov	rsi, qword ptr [rbp - 0x5c0]
	mov	qword ptr [rsi + 0x38], rdx
	nop	
	test	al, 1
	lea	rdi, [rdi]
	jne	.label_282
	nop	
	jmp	.label_162
.label_764:
	lea	rsi, [rsi]
	xor	eax, eax
	mov	cl, al
	lea	rdi, [rdi]
	xor	eax, eax
	mov	edx, eax
	mov	rsi, qword ptr [rbp - 0x258]
	sub	rdx, qword ptr [rsi - 0x30]
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x5c0]
	nop	
	mov	qword ptr [rsi + 0x38], rdx
	test	cl, 1
	jne	.label_282
	lea	rsi, [rsi]
	jmp	.label_162
.label_282:
	lea	rsi, [rsi]
	jmp	.label_146
.label_162:
	xor	eax, eax
	mov	cl, al
	mov	rsp, rsp
	test	cl, 1
	jne	.label_796
	jmp	.label_866
.label_796:
	xor	eax, eax
	mov	rbp, rbp
	mov	cl, al
	nop	
	test	cl, 1
	nop	
	jne	.label_871
	jmp	.label_808
.label_871:
	mov	rsp, rsp
	mov	al, 1
	mov	rbp, rbp
	test	al, 1
	mov	rsp, rsp
	jne	.label_809
	jmp	.label_814
.label_809:
	mov	rax, qword ptr [rbp - 0x258]
	mov	rax, qword ptr [rax + 8]
	nop	
	mov	cl, al
	movsx	edx, cl
	cmp	edx, 0
	lea	rdi, [rdi]
	jge	.label_815
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x258]
	mov	rax, qword ptr [rax + 8]
	mov	cl, al
	mov	rsp, rsp
	movsx	edx, cl
	add	edx, 0x7fffffff
	cmp	edx, 0
	lea	rdi, [rdi]
	jl	.label_205
	jmp	.label_845
.label_815:
	mov	rbp, rbp
	xor	eax, eax
	mov	rcx, qword ptr [rbp - 0x258]
	mov	rcx, qword ptr [rcx + 8]
	nop	
	mov	dl, cl
	movsx	esi, dl
	mov	rsp, rsp
	add	esi, 0x80000000
	lea	rdi, [rdi]
	cmp	eax, esi
	lea	rsi, [rsi]
	jl	.label_205
	jmp	.label_845
.label_814:
	xor	eax, eax
	mov	cl, al
	mov	rbp, rbp
	test	cl, 1
	lea	rdi, [rdi]
	jne	.label_1148
	jmp	.label_1119
.label_1148:
	mov	rsp, rsp
	mov	al, 1
	test	al, 1
	jne	.label_205
	lea	rsi, [rsi]
	jmp	.label_845
.label_1119:
	mov	rax, qword ptr [rbp - 0x258]
	mov	rax, qword ptr [rax + 8]
	mov	cl, al
	mov	rbp, rbp
	movsx	edx, cl
	cmp	edx, 0
	nop	
	jge	.label_861
	lea	rsi, [rsi]
	xor	eax, eax
	mov	rcx, qword ptr [rbp - 0x258]
	mov	rbp, rbp
	mov	rcx, qword ptr [rcx + 8]
	mov	dl, cl
	movsx	esi, dl
	mov	rsp, rsp
	sub	eax, esi
	cmp	eax, 0
	mov	rbp, rbp
	jle	.label_205
	lea	rdi, [rdi]
	jmp	.label_845
.label_861:
	mov	rbp, rbp
	xor	eax, eax
	mov	rcx, qword ptr [rbp - 0x258]
	mov	rcx, qword ptr [rcx + 8]
	mov	dl, cl
	movsx	esi, dl
	cmp	eax, esi
	jl	.label_205
.label_845:
	xor	eax, eax
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x258]
	mov	rcx, qword ptr [rcx + 8]
	mov	rsp, rsp
	mov	dl, cl
	mov	rsp, rsp
	movsx	esi, dl
	lea	rsi, [rsi]
	sub	eax, esi
	lea	rdi, [rdi]
	cmp	eax, -0x80
	lea	rdi, [rdi]
	jl	.label_205
	mov	eax, 0x7f
	xor	ecx, ecx
	mov	rdx, qword ptr [rbp - 0x258]
	mov	rsp, rsp
	mov	rdx, qword ptr [rdx + 8]
	lea	rsi, [rsi]
	mov	sil, dl
	movsx	edi, sil
	sub	ecx, edi
	lea	rsi, [rsi]
	cmp	eax, ecx
	jge	.label_898
.label_205:
	mov	al, 1
	xor	ecx, ecx
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x258]
	mov	rsp, rsp
	mov	rdx, qword ptr [rdx + 8]
	mov	sil, dl
	movsx	edi, sil
	sub	ecx, edi
	mov	rbp, rbp
	mov	sil, cl
	movsx	rdx, sil
	mov	r8, qword ptr [rbp - 0x5c0]
	mov	rbp, rbp
	mov	qword ptr [r8 + 0x40], rdx
	test	al, 1
	nop	
	jne	.label_165
	mov	rbp, rbp
	jmp	.label_298
.label_898:
	xor	eax, eax
	mov	rbp, rbp
	mov	cl, al
	xor	eax, eax
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x258]
	mov	rdx, qword ptr [rdx + 8]
	lea	rsi, [rsi]
	mov	sil, dl
	movsx	edi, sil
	lea	rsi, [rsi]
	sub	eax, edi
	mov	rbp, rbp
	mov	sil, al
	movsx	rdx, sil
	mov	r8, qword ptr [rbp - 0x5c0]
	mov	rsp, rsp
	mov	qword ptr [r8 + 0x40], rdx
	lea	rdi, [rdi]
	test	cl, 1
	lea	rsi, [rsi]
	jne	.label_165
	mov	rsp, rsp
	jmp	.label_298
.label_808:
	mov	al, 1
	test	al, 1
	mov	rsp, rsp
	jne	.label_930
	mov	rbp, rbp
	jmp	.label_934
.label_930:
	mov	rax, qword ptr [rbp - 0x258]
	cmp	qword ptr [rax + 8], 0
	jge	.label_936
	mov	rax, qword ptr [rbp - 0x258]
	lea	rsi, [rsi]
	movabs	rcx, 0x7fffffffffffffff
	add	rcx, qword ptr [rax + 8]
	cmp	rcx, 0
	jl	.label_539
	jmp	.label_224
.label_936:
	lea	rdi, [rdi]
	xor	eax, eax
	lea	rdi, [rdi]
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x258]
	movabs	rsi, 0x8000000000000000
	add	rsi, qword ptr [rdx + 8]
	mov	rsp, rsp
	cmp	rcx, rsi
	jl	.label_539
	jmp	.label_224
.label_934:
	xor	eax, eax
	lea	rsi, [rsi]
	mov	cl, al
	lea	rdi, [rdi]
	test	cl, 1
	jne	.label_891
	jmp	.label_973
.label_891:
	mov	rbp, rbp
	mov	al, 1
	test	al, 1
	mov	rbp, rbp
	jne	.label_539
	mov	rbp, rbp
	jmp	.label_224
.label_973:
	mov	rax, qword ptr [rbp - 0x258]
	cmp	qword ptr [rax + 8], 0
	jge	.label_980
	mov	rbp, rbp
	xor	eax, eax
	mov	ecx, eax
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x258]
	nop	
	sub	rcx, qword ptr [rdx + 8]
	lea	rsi, [rsi]
	cmp	rcx, 0
	jle	.label_539
	jmp	.label_224
.label_980:
	lea	rdi, [rdi]
	xor	eax, eax
	mov	rsp, rsp
	mov	ecx, eax
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x258]
	lea	rsi, [rsi]
	cmp	rcx, qword ptr [rdx + 8]
	jl	.label_539
.label_224:
	lea	rdi, [rdi]
	xor	eax, eax
	mov	ecx, eax
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x258]
	nop	
	sub	rcx, qword ptr [rdx + 8]
	cmp	rcx, -0x80
	jl	.label_539
	mov	eax, 0x7f
	lea	rdi, [rdi]
	mov	ecx, eax
	mov	rsp, rsp
	xor	eax, eax
	mov	edx, eax
	mov	rsi, qword ptr [rbp - 0x258]
	nop	
	sub	rdx, qword ptr [rsi + 8]
	lea	rdi, [rdi]
	cmp	rcx, rdx
	jge	.label_280
.label_539:
	mov	al, 1
	xor	ecx, ecx
	mov	rdx, qword ptr [rbp - 0x258]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rdx + 8]
	lea	rdi, [rdi]
	mov	esi, edx
	sub	ecx, esi
	mov	rsp, rsp
	mov	dil, cl
	movsx	rdx, dil
	mov	r8, qword ptr [rbp - 0x5c0]
	nop	
	mov	qword ptr [r8 + 0x40], rdx
	test	al, 1
	jne	.label_165
	jmp	.label_298
.label_280:
	xor	eax, eax
	mov	cl, al
	mov	rsp, rsp
	xor	eax, eax
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x258]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rdx + 8]
	mov	esi, edx
	lea	rdi, [rdi]
	sub	eax, esi
	mov	dil, al
	lea	rdi, [rdi]
	movsx	rdx, dil
	mov	r8, qword ptr [rbp - 0x5c0]
	mov	rbp, rbp
	mov	qword ptr [r8 + 0x40], rdx
	test	cl, 1
	lea	rdi, [rdi]
	jne	.label_165
	nop	
	jmp	.label_298
.label_866:
	mov	rbp, rbp
	xor	eax, eax
	mov	rsp, rsp
	mov	cl, al
	test	cl, 1
	jne	.label_1029
	lea	rsi, [rsi]
	jmp	.label_1035
.label_1029:
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	mov	rsp, rsp
	jne	.label_1037
	jmp	.label_1044
.label_1037:
	lea	rdi, [rdi]
	mov	al, 1
	mov	rsp, rsp
	test	al, 1
	jne	.label_1045
	lea	rdi, [rdi]
	jmp	.label_1046
.label_1045:
	mov	rax, qword ptr [rbp - 0x258]
	mov	rax, qword ptr [rax + 8]
	mov	cx, ax
	lea	rsi, [rsi]
	movsx	edx, cx
	lea	rdi, [rdi]
	cmp	edx, 0
	mov	rsp, rsp
	jge	.label_1049
	mov	rax, qword ptr [rbp - 0x258]
	mov	rax, qword ptr [rax + 8]
	nop	
	mov	cx, ax
	movsx	edx, cx
	add	edx, 0x7fffffff
	mov	rbp, rbp
	cmp	edx, 0
	lea	rdi, [rdi]
	jl	.label_210
	jmp	.label_1064
.label_1049:
	nop	
	xor	eax, eax
	mov	rcx, qword ptr [rbp - 0x258]
	mov	rbp, rbp
	mov	rcx, qword ptr [rcx + 8]
	lea	rsi, [rsi]
	mov	dx, cx
	movsx	esi, dx
	add	esi, 0x80000000
	cmp	eax, esi
	jl	.label_210
	mov	rbp, rbp
	jmp	.label_1064
.label_1046:
	lea	rsi, [rsi]
	xor	eax, eax
	nop	
	mov	cl, al
	nop	
	test	cl, 1
	jne	.label_1077
	lea	rsi, [rsi]
	jmp	.label_720
.label_1077:
	lea	rdi, [rdi]
	mov	al, 1
	nop	
	test	al, 1
	jne	.label_210
	nop	
	jmp	.label_1064
.label_720:
	mov	rax, qword ptr [rbp - 0x258]
	mov	rbp, rbp
	mov	rax, qword ptr [rax + 8]
	mov	rbp, rbp
	mov	cx, ax
	movsx	edx, cx
	cmp	edx, 0
	jge	.label_1088
	xor	eax, eax
	mov	rcx, qword ptr [rbp - 0x258]
	mov	rbp, rbp
	mov	rcx, qword ptr [rcx + 8]
	mov	dx, cx
	lea	rdi, [rdi]
	movsx	esi, dx
	lea	rdi, [rdi]
	sub	eax, esi
	mov	rsp, rsp
	cmp	eax, 0
	lea	rdi, [rdi]
	jle	.label_210
	lea	rdi, [rdi]
	jmp	.label_1064
.label_1088:
	xor	eax, eax
	mov	rcx, qword ptr [rbp - 0x258]
	mov	rcx, qword ptr [rcx + 8]
	lea	rdi, [rdi]
	mov	dx, cx
	movsx	esi, dx
	mov	rbp, rbp
	cmp	eax, esi
	jl	.label_210
.label_1064:
	xor	eax, eax
	mov	rcx, qword ptr [rbp - 0x258]
	mov	rcx, qword ptr [rcx + 8]
	mov	dx, cx
	mov	rbp, rbp
	movsx	esi, dx
	mov	rbp, rbp
	sub	eax, esi
	lea	rdi, [rdi]
	cmp	eax, 0xffff8000
	nop	
	jl	.label_210
	mov	rsp, rsp
	mov	eax, 0x7fff
	xor	ecx, ecx
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x258]
	mov	rdx, qword ptr [rdx + 8]
	mov	rsp, rsp
	mov	si, dx
	movsx	edi, si
	sub	ecx, edi
	cmp	eax, ecx
	mov	rbp, rbp
	jge	.label_982
.label_210:
	nop	
	mov	al, 1
	nop	
	xor	ecx, ecx
	mov	rdx, qword ptr [rbp - 0x258]
	mov	rdx, qword ptr [rdx + 8]
	nop	
	mov	si, dx
	lea	rsi, [rsi]
	movsx	edi, si
	sub	ecx, edi
	mov	rsp, rsp
	mov	si, cx
	movsx	rdx, si
	mov	r8, qword ptr [rbp - 0x5c0]
	mov	qword ptr [r8 + 0x40], rdx
	lea	rdi, [rdi]
	test	al, 1
	mov	rsp, rsp
	jne	.label_165
	jmp	.label_298
.label_982:
	mov	rsp, rsp
	xor	eax, eax
	mov	cl, al
	lea	rsi, [rsi]
	xor	eax, eax
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x258]
	mov	rsp, rsp
	mov	rdx, qword ptr [rdx + 8]
	nop	
	mov	si, dx
	mov	rsp, rsp
	movsx	edi, si
	nop	
	sub	eax, edi
	mov	rsp, rsp
	mov	si, ax
	lea	rdi, [rdi]
	movsx	rdx, si
	mov	r8, qword ptr [rbp - 0x5c0]
	mov	rsp, rsp
	mov	qword ptr [r8 + 0x40], rdx
	test	cl, 1
	nop	
	jne	.label_165
	mov	rsp, rsp
	jmp	.label_298
.label_1044:
	mov	al, 1
	test	al, 1
	jne	.label_275
	jmp	.label_173
.label_275:
	mov	rax, qword ptr [rbp - 0x258]
	cmp	qword ptr [rax + 8], 0
	jge	.label_176
	nop	
	mov	rax, qword ptr [rbp - 0x258]
	movabs	rcx, 0x7fffffffffffffff
	add	rcx, qword ptr [rax + 8]
	cmp	rcx, 0
	jl	.label_186
	nop	
	jmp	.label_219
.label_176:
	xor	eax, eax
	mov	rsp, rsp
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x258]
	lea	rdi, [rdi]
	movabs	rsi, 0x8000000000000000
	add	rsi, qword ptr [rdx + 8]
	lea	rdi, [rdi]
	cmp	rcx, rsi
	mov	rbp, rbp
	jl	.label_186
	lea	rdi, [rdi]
	jmp	.label_219
.label_173:
	xor	eax, eax
	lea	rsi, [rsi]
	mov	cl, al
	nop	
	test	cl, 1
	jne	.label_223
	mov	rbp, rbp
	jmp	.label_227
.label_223:
	mov	rbp, rbp
	mov	al, 1
	test	al, 1
	jne	.label_186
	jmp	.label_219
.label_227:
	mov	rax, qword ptr [rbp - 0x258]
	nop	
	cmp	qword ptr [rax + 8], 0
	lea	rsi, [rsi]
	jge	.label_258
	lea	rsi, [rsi]
	xor	eax, eax
	lea	rdi, [rdi]
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x258]
	sub	rcx, qword ptr [rdx + 8]
	cmp	rcx, 0
	lea	rsi, [rsi]
	jle	.label_186
	mov	rbp, rbp
	jmp	.label_219
.label_258:
	lea	rsi, [rsi]
	xor	eax, eax
	lea	rsi, [rsi]
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x258]
	lea	rdi, [rdi]
	cmp	rcx, qword ptr [rdx + 8]
	lea	rsi, [rsi]
	jl	.label_186
.label_219:
	nop	
	xor	eax, eax
	lea	rdi, [rdi]
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x258]
	sub	rcx, qword ptr [rdx + 8]
	lea	rsi, [rsi]
	cmp	rcx, -0x8000
	mov	rsp, rsp
	jl	.label_186
	mov	eax, 0x7fff
	lea	rdi, [rdi]
	mov	ecx, eax
	mov	rbp, rbp
	xor	eax, eax
	mov	rsp, rsp
	mov	edx, eax
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x258]
	sub	rdx, qword ptr [rsi + 8]
	cmp	rcx, rdx
	lea	rsi, [rsi]
	jge	.label_247
.label_186:
	mov	rsp, rsp
	mov	al, 1
	xor	ecx, ecx
	mov	rdx, qword ptr [rbp - 0x258]
	mov	rdx, qword ptr [rdx + 8]
	nop	
	mov	esi, edx
	mov	rbp, rbp
	sub	ecx, esi
	nop	
	mov	di, cx
	movsx	rdx, di
	mov	r8, qword ptr [rbp - 0x5c0]
	mov	rsp, rsp
	mov	qword ptr [r8 + 0x40], rdx
	test	al, 1
	jne	.label_165
	jmp	.label_298
.label_247:
	lea	rdi, [rdi]
	xor	eax, eax
	nop	
	mov	cl, al
	xor	eax, eax
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x258]
	mov	rdx, qword ptr [rdx + 8]
	mov	esi, edx
	sub	eax, esi
	mov	di, ax
	movsx	rdx, di
	mov	r8, qword ptr [rbp - 0x5c0]
	lea	rsi, [rsi]
	mov	qword ptr [r8 + 0x40], rdx
	mov	rbp, rbp
	test	cl, 1
	jne	.label_165
	jmp	.label_298
.label_1035:
	lea	rdi, [rdi]
	xor	eax, eax
	lea	rsi, [rsi]
	mov	cl, al
	test	cl, 1
	jne	.label_975
	jmp	.label_1061
.label_975:
	xor	eax, eax
	mov	rbp, rbp
	mov	cl, al
	lea	rsi, [rsi]
	test	cl, 1
	jne	.label_1007
	jmp	.label_333
.label_1007:
	mov	al, 1
	mov	rsp, rsp
	test	al, 1
	lea	rsi, [rsi]
	jne	.label_335
	jmp	.label_1047
.label_335:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x258]
	mov	rbp, rbp
	mov	rax, qword ptr [rax + 8]
	mov	rsp, rsp
	mov	ecx, eax
	cmp	ecx, 0
	jge	.label_341
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x258]
	mov	rax, qword ptr [rax + 8]
	mov	ecx, eax
	add	ecx, 0x7fffffff
	cmp	ecx, 0
	mov	rbp, rbp
	jl	.label_237
	jmp	.label_358
.label_341:
	nop	
	xor	eax, eax
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x258]
	mov	rcx, qword ptr [rcx + 8]
	mov	edx, ecx
	lea	rdi, [rdi]
	add	edx, 0x80000000
	nop	
	cmp	eax, edx
	mov	rbp, rbp
	jl	.label_237
	jmp	.label_358
.label_1047:
	lea	rdi, [rdi]
	xor	eax, eax
	lea	rsi, [rsi]
	mov	cl, al
	test	cl, 1
	mov	rbp, rbp
	jne	.label_873
	lea	rsi, [rsi]
	jmp	.label_377
.label_873:
	mov	al, 1
	test	al, 1
	lea	rsi, [rsi]
	jne	.label_237
	jmp	.label_358
.label_377:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x258]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax + 8]
	lea	rdi, [rdi]
	mov	ecx, eax
	cmp	ecx, 0
	mov	rbp, rbp
	jge	.label_383
	lea	rsi, [rsi]
	xor	eax, eax
	mov	rcx, qword ptr [rbp - 0x258]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rcx + 8]
	nop	
	mov	edx, ecx
	lea	rsi, [rsi]
	sub	eax, edx
	cmp	eax, 0
	jle	.label_237
	jmp	.label_358
.label_383:
	mov	rsp, rsp
	xor	eax, eax
	nop	
	mov	rcx, qword ptr [rbp - 0x258]
	mov	rsp, rsp
	mov	rcx, qword ptr [rcx + 8]
	mov	rbp, rbp
	mov	edx, ecx
	cmp	eax, edx
	jl	.label_237
.label_358:
	xor	eax, eax
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x258]
	mov	rcx, qword ptr [rcx + 8]
	mov	edx, ecx
	mov	rsp, rsp
	sub	eax, edx
	cmp	eax, 0x80000000
	mov	rsp, rsp
	jl	.label_237
	mov	eax, 0x7fffffff
	lea	rsi, [rsi]
	xor	ecx, ecx
	mov	rdx, qword ptr [rbp - 0x258]
	mov	rdx, qword ptr [rdx + 8]
	mov	esi, edx
	sub	ecx, esi
	mov	rbp, rbp
	cmp	eax, ecx
	mov	rbp, rbp
	jge	.label_416
.label_237:
	mov	al, 1
	xor	ecx, ecx
	mov	rdx, qword ptr [rbp - 0x258]
	mov	rdx, qword ptr [rdx + 8]
	mov	esi, edx
	sub	ecx, esi
	mov	rsp, rsp
	movsxd	rdx, ecx
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x5c0]
	mov	rsp, rsp
	mov	qword ptr [rdi + 0x40], rdx
	mov	rbp, rbp
	test	al, 1
	mov	rbp, rbp
	jne	.label_165
	lea	rdi, [rdi]
	jmp	.label_298
.label_416:
	xor	eax, eax
	nop	
	mov	cl, al
	nop	
	xor	eax, eax
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x258]
	mov	rdx, qword ptr [rdx + 8]
	mov	rsp, rsp
	mov	esi, edx
	lea	rsi, [rsi]
	sub	eax, esi
	movsxd	rdx, eax
	nop	
	mov	rdi, qword ptr [rbp - 0x5c0]
	lea	rdi, [rdi]
	mov	qword ptr [rdi + 0x40], rdx
	test	cl, 1
	lea	rdi, [rdi]
	jne	.label_165
	mov	rsp, rsp
	jmp	.label_298
.label_333:
	mov	al, 1
	nop	
	test	al, 1
	jne	.label_792
	lea	rdi, [rdi]
	jmp	.label_464
.label_792:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x258]
	nop	
	cmp	qword ptr [rax + 8], 0
	jge	.label_469
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x258]
	lea	rsi, [rsi]
	movabs	rcx, 0x7fffffffffffffff
	add	rcx, qword ptr [rax + 8]
	mov	rsp, rsp
	cmp	rcx, 0
	jl	.label_475
	nop	
	jmp	.label_491
.label_469:
	xor	eax, eax
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x258]
	movabs	rsi, 0x8000000000000000
	add	rsi, qword ptr [rdx + 8]
	mov	rsp, rsp
	cmp	rcx, rsi
	nop	
	jl	.label_475
	jmp	.label_491
.label_464:
	mov	rbp, rbp
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	lea	rsi, [rsi]
	jne	.label_511
	jmp	.label_519
.label_511:
	mov	al, 1
	mov	rbp, rbp
	test	al, 1
	mov	rbp, rbp
	jne	.label_475
	lea	rsi, [rsi]
	jmp	.label_491
.label_519:
	mov	rax, qword ptr [rbp - 0x258]
	nop	
	cmp	qword ptr [rax + 8], 0
	nop	
	jge	.label_1023
	nop	
	xor	eax, eax
	mov	rbp, rbp
	mov	ecx, eax
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x258]
	sub	rcx, qword ptr [rdx + 8]
	cmp	rcx, 0
	jle	.label_475
	jmp	.label_491
.label_1023:
	xor	eax, eax
	lea	rdi, [rdi]
	mov	ecx, eax
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x258]
	lea	rsi, [rsi]
	cmp	rcx, qword ptr [rdx + 8]
	lea	rsi, [rsi]
	jl	.label_475
.label_491:
	xor	eax, eax
	nop	
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x258]
	sub	rcx, qword ptr [rdx + 8]
	nop	
	cmp	rcx, -0x80000000
	nop	
	jl	.label_475
	mov	eax, 0x7fffffff
	mov	ecx, eax
	xor	eax, eax
	mov	rsp, rsp
	mov	edx, eax
	mov	rsi, qword ptr [rbp - 0x258]
	lea	rdi, [rdi]
	sub	rdx, qword ptr [rsi + 8]
	cmp	rcx, rdx
	jge	.label_551
.label_475:
	mov	al, 1
	mov	rsp, rsp
	xor	ecx, ecx
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x258]
	mov	rdx, qword ptr [rdx + 8]
	mov	esi, edx
	lea	rdi, [rdi]
	sub	ecx, esi
	movsxd	rdx, ecx
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x5c0]
	nop	
	mov	qword ptr [rdi + 0x40], rdx
	mov	rsp, rsp
	test	al, 1
	nop	
	jne	.label_165
	mov	rsp, rsp
	jmp	.label_298
.label_551:
	mov	rsp, rsp
	xor	eax, eax
	lea	rdi, [rdi]
	mov	cl, al
	xor	eax, eax
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x258]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rdx + 8]
	mov	rbp, rbp
	mov	esi, edx
	mov	rbp, rbp
	sub	eax, esi
	movsxd	rdx, eax
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x5c0]
	mov	qword ptr [rdi + 0x40], rdx
	nop	
	test	cl, 1
	jne	.label_165
	jmp	.label_298
.label_1061:
	lea	rdi, [rdi]
	mov	al, 1
	lea	rdi, [rdi]
	test	al, 1
	jne	.label_1008
	mov	rsp, rsp
	jmp	.label_594
.label_1008:
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_598
	jmp	.label_602
.label_598:
	lea	rsi, [rsi]
	mov	al, 1
	test	al, 1
	mov	rbp, rbp
	jne	.label_605
	jmp	.label_447
.label_605:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x258]
	cmp	qword ptr [rax + 8], 0
	lea	rsi, [rsi]
	jge	.label_497
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x258]
	movabs	rcx, 0x7fffffffffffffff
	add	rcx, qword ptr [rax + 8]
	nop	
	cmp	rcx, 0
	jl	.label_616
	jmp	.label_455
.label_497:
	xor	eax, eax
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x258]
	lea	rdi, [rdi]
	movabs	rsi, 0x8000000000000000
	add	rsi, qword ptr [rdx + 8]
	cmp	rcx, rsi
	lea	rsi, [rsi]
	jl	.label_616
	nop	
	jmp	.label_455
.label_447:
	xor	eax, eax
	lea	rdi, [rdi]
	mov	cl, al
	mov	rbp, rbp
	test	cl, 1
	jne	.label_698
	lea	rdi, [rdi]
	jmp	.label_640
.label_698:
	mov	al, 1
	mov	rsp, rsp
	test	al, 1
	jne	.label_616
	lea	rsi, [rsi]
	jmp	.label_455
.label_640:
	mov	rax, qword ptr [rbp - 0x258]
	nop	
	cmp	qword ptr [rax + 8], 0
	jge	.label_643
	lea	rsi, [rsi]
	xor	eax, eax
	lea	rdi, [rdi]
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x258]
	lea	rsi, [rsi]
	sub	rcx, qword ptr [rdx + 8]
	mov	rbp, rbp
	cmp	rcx, 0
	nop	
	jle	.label_616
	mov	rsp, rsp
	jmp	.label_455
.label_643:
	lea	rsi, [rsi]
	xor	eax, eax
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x258]
	cmp	rcx, qword ptr [rdx + 8]
	mov	rbp, rbp
	jl	.label_616
.label_455:
	movabs	rax, 0x8000000000000000
	lea	rsi, [rsi]
	xor	ecx, ecx
	mov	edx, ecx
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x258]
	lea	rsi, [rsi]
	sub	rdx, qword ptr [rsi + 8]
	cmp	rdx, rax
	jl	.label_616
	lea	rdi, [rdi]
	movabs	rax, 0x7fffffffffffffff
	lea	rdi, [rdi]
	xor	ecx, ecx
	mov	rsp, rsp
	mov	edx, ecx
	mov	rsi, qword ptr [rbp - 0x258]
	lea	rdi, [rdi]
	sub	rdx, qword ptr [rsi + 8]
	nop	
	cmp	rax, rdx
	jge	.label_667
.label_616:
	mov	al, 1
	xor	ecx, ecx
	mov	rbp, rbp
	mov	edx, ecx
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x258]
	sub	rdx, qword ptr [rsi + 8]
	mov	rsi, qword ptr [rbp - 0x5c0]
	mov	qword ptr [rsi + 0x40], rdx
	test	al, 1
	mov	rsp, rsp
	jne	.label_165
	mov	rbp, rbp
	jmp	.label_298
.label_667:
	xor	eax, eax
	lea	rsi, [rsi]
	mov	cl, al
	xor	eax, eax
	lea	rdi, [rdi]
	mov	edx, eax
	mov	rsi, qword ptr [rbp - 0x258]
	lea	rsi, [rsi]
	sub	rdx, qword ptr [rsi + 8]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x5c0]
	mov	qword ptr [rsi + 0x40], rdx
	test	cl, 1
	lea	rdi, [rdi]
	jne	.label_165
	mov	rsp, rsp
	jmp	.label_298
.label_602:
	mov	rbp, rbp
	mov	al, 1
	nop	
	test	al, 1
	lea	rsi, [rsi]
	jne	.label_706
	nop	
	jmp	.label_929
.label_706:
	mov	rax, qword ptr [rbp - 0x258]
	mov	rsp, rsp
	cmp	qword ptr [rax + 8], 0
	jge	.label_712
	nop	
	mov	rax, qword ptr [rbp - 0x258]
	movabs	rcx, 0x7fffffffffffffff
	add	rcx, qword ptr [rax + 8]
	cmp	rcx, 0
	jl	.label_718
	lea	rsi, [rsi]
	jmp	.label_423
.label_712:
	lea	rsi, [rsi]
	xor	eax, eax
	nop	
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x258]
	movabs	rsi, 0x8000000000000000
	add	rsi, qword ptr [rdx + 8]
	cmp	rcx, rsi
	mov	rbp, rbp
	jl	.label_718
	mov	rbp, rbp
	jmp	.label_423
.label_929:
	xor	eax, eax
	mov	rbp, rbp
	mov	cl, al
	test	cl, 1
	mov	rsp, rsp
	jne	.label_435
	lea	rdi, [rdi]
	jmp	.label_274
.label_435:
	mov	al, 1
	mov	rbp, rbp
	test	al, 1
	lea	rdi, [rdi]
	jne	.label_718
	nop	
	jmp	.label_423
.label_274:
	mov	rax, qword ptr [rbp - 0x258]
	nop	
	cmp	qword ptr [rax + 8], 0
	jge	.label_749
	xor	eax, eax
	mov	rbp, rbp
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x258]
	sub	rcx, qword ptr [rdx + 8]
	cmp	rcx, 0
	jle	.label_718
	lea	rdi, [rdi]
	jmp	.label_423
.label_749:
	xor	eax, eax
	mov	rsp, rsp
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x258]
	cmp	rcx, qword ptr [rdx + 8]
	nop	
	jl	.label_718
.label_423:
	movabs	rax, 0x8000000000000000
	lea	rsi, [rsi]
	xor	ecx, ecx
	mov	rbp, rbp
	mov	edx, ecx
	nop	
	mov	rsi, qword ptr [rbp - 0x258]
	sub	rdx, qword ptr [rsi + 8]
	cmp	rdx, rax
	jl	.label_718
	lea	rdi, [rdi]
	movabs	rax, 0x7fffffffffffffff
	xor	ecx, ecx
	lea	rdi, [rdi]
	mov	edx, ecx
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x258]
	sub	rdx, qword ptr [rsi + 8]
	mov	rbp, rbp
	cmp	rax, rdx
	jge	.label_684
.label_718:
	mov	rbp, rbp
	mov	al, 1
	lea	rsi, [rsi]
	xor	ecx, ecx
	mov	rsp, rsp
	mov	edx, ecx
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x258]
	mov	rbp, rbp
	sub	rdx, qword ptr [rsi + 8]
	mov	rsi, qword ptr [rbp - 0x5c0]
	mov	qword ptr [rsi + 0x40], rdx
	lea	rsi, [rsi]
	test	al, 1
	jne	.label_165
	jmp	.label_298
.label_684:
	xor	eax, eax
	lea	rdi, [rdi]
	mov	cl, al
	xor	eax, eax
	lea	rsi, [rsi]
	mov	edx, eax
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x258]
	sub	rdx, qword ptr [rsi + 8]
	mov	rsi, qword ptr [rbp - 0x5c0]
	mov	rbp, rbp
	mov	qword ptr [rsi + 0x40], rdx
	lea	rdi, [rdi]
	test	cl, 1
	nop	
	jne	.label_165
	jmp	.label_298
.label_594:
	mov	rsp, rsp
	xor	eax, eax
	mov	cl, al
	lea	rdi, [rdi]
	test	cl, 1
	lea	rsi, [rsi]
	jne	.label_813
	mov	rsp, rsp
	jmp	.label_412
.label_813:
	lea	rdi, [rdi]
	mov	al, 1
	lea	rsi, [rsi]
	test	al, 1
	jne	.label_479
	lea	rdi, [rdi]
	jmp	.label_821
.label_479:
	mov	rax, qword ptr [rbp - 0x258]
	cmp	qword ptr [rax + 8], 0
	mov	rsp, rsp
	jge	.label_648
	nop	
	mov	rax, qword ptr [rbp - 0x258]
	lea	rdi, [rdi]
	movabs	rcx, 0x7fffffffffffffff
	lea	rdi, [rdi]
	add	rcx, qword ptr [rax + 8]
	mov	rsp, rsp
	cmp	rcx, 0
	nop	
	jl	.label_189
	lea	rdi, [rdi]
	jmp	.label_842
.label_648:
	lea	rsi, [rsi]
	xor	eax, eax
	mov	ecx, eax
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x258]
	nop	
	movabs	rsi, 0x8000000000000000
	mov	rbp, rbp
	add	rsi, qword ptr [rdx + 8]
	cmp	rcx, rsi
	jl	.label_189
	jmp	.label_842
.label_821:
	xor	eax, eax
	nop	
	mov	cl, al
	mov	rsp, rsp
	test	cl, 1
	jne	.label_859
	mov	rsp, rsp
	jmp	.label_160
.label_859:
	mov	al, 1
	lea	rsi, [rsi]
	test	al, 1
	jne	.label_189
	mov	rsp, rsp
	jmp	.label_842
.label_160:
	mov	rax, qword ptr [rbp - 0x258]
	nop	
	cmp	qword ptr [rax + 8], 0
	mov	rsp, rsp
	jge	.label_872
	xor	eax, eax
	mov	ecx, eax
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x258]
	sub	rcx, qword ptr [rdx + 8]
	cmp	rcx, 0
	lea	rdi, [rdi]
	jle	.label_189
	lea	rsi, [rsi]
	jmp	.label_842
.label_872:
	xor	eax, eax
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x258]
	cmp	rcx, qword ptr [rdx + 8]
	nop	
	jl	.label_189
.label_842:
	mov	rbp, rbp
	movabs	rax, 0x8000000000000000
	xor	ecx, ecx
	mov	edx, ecx
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x258]
	lea	rsi, [rsi]
	sub	rdx, qword ptr [rsi + 8]
	lea	rsi, [rsi]
	cmp	rdx, rax
	nop	
	jl	.label_189
	nop	
	movabs	rax, 0x7fffffffffffffff
	mov	rbp, rbp
	xor	ecx, ecx
	nop	
	mov	edx, ecx
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x258]
	mov	rsp, rsp
	sub	rdx, qword ptr [rsi + 8]
	cmp	rax, rdx
	jge	.label_439
.label_189:
	mov	al, 1
	xor	ecx, ecx
	mov	edx, ecx
	mov	rsi, qword ptr [rbp - 0x258]
	sub	rdx, qword ptr [rsi + 8]
	mov	rsi, qword ptr [rbp - 0x5c0]
	lea	rsi, [rsi]
	mov	qword ptr [rsi + 0x40], rdx
	test	al, 1
	lea	rdi, [rdi]
	jne	.label_165
	lea	rdi, [rdi]
	jmp	.label_298
.label_439:
	mov	rsp, rsp
	xor	eax, eax
	mov	cl, al
	lea	rdi, [rdi]
	xor	eax, eax
	mov	edx, eax
	mov	rsi, qword ptr [rbp - 0x258]
	lea	rdi, [rdi]
	sub	rdx, qword ptr [rsi + 8]
	nop	
	mov	rsi, qword ptr [rbp - 0x5c0]
	mov	qword ptr [rsi + 0x40], rdx
	test	cl, 1
	nop	
	jne	.label_165
	jmp	.label_298
.label_412:
	mov	rbp, rbp
	mov	al, 1
	nop	
	test	al, 1
	jne	.label_922
	lea	rdi, [rdi]
	jmp	.label_927
.label_922:
	mov	rax, qword ptr [rbp - 0x258]
	mov	rbp, rbp
	cmp	qword ptr [rax + 8], 0
	lea	rdi, [rdi]
	jge	.label_696
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x258]
	movabs	rcx, 0x7fffffffffffffff
	lea	rdi, [rdi]
	add	rcx, qword ptr [rax + 8]
	lea	rsi, [rsi]
	cmp	rcx, 0
	lea	rdi, [rdi]
	jl	.label_867
	jmp	.label_704
.label_696:
	mov	rsp, rsp
	xor	eax, eax
	mov	ecx, eax
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x258]
	movabs	rsi, 0x8000000000000000
	add	rsi, qword ptr [rdx + 8]
	cmp	rcx, rsi
	mov	rsp, rsp
	jl	.label_867
	lea	rdi, [rdi]
	jmp	.label_704
.label_927:
	xor	eax, eax
	nop	
	mov	cl, al
	nop	
	test	cl, 1
	nop	
	jne	.label_874
	mov	rsp, rsp
	jmp	.label_967
.label_874:
	mov	rbp, rbp
	mov	al, 1
	test	al, 1
	jne	.label_867
	jmp	.label_704
.label_967:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x258]
	cmp	qword ptr [rax + 8], 0
	jge	.label_918
	mov	rbp, rbp
	xor	eax, eax
	mov	ecx, eax
	nop	
	mov	rdx, qword ptr [rbp - 0x258]
	mov	rbp, rbp
	sub	rcx, qword ptr [rdx + 8]
	mov	rbp, rbp
	cmp	rcx, 0
	jle	.label_867
	mov	rbp, rbp
	jmp	.label_704
.label_918:
	xor	eax, eax
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x258]
	lea	rdi, [rdi]
	cmp	rcx, qword ptr [rdx + 8]
	jl	.label_867
.label_704:
	movabs	rax, 0x8000000000000000
	xor	ecx, ecx
	nop	
	mov	edx, ecx
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x258]
	lea	rsi, [rsi]
	sub	rdx, qword ptr [rsi + 8]
	mov	rsp, rsp
	cmp	rdx, rax
	jl	.label_867
	movabs	rax, 0x7fffffffffffffff
	xor	ecx, ecx
	mov	edx, ecx
	nop	
	mov	rsi, qword ptr [rbp - 0x258]
	nop	
	sub	rdx, qword ptr [rsi + 8]
	nop	
	cmp	rax, rdx
	jge	.label_1004
.label_867:
	mov	rbp, rbp
	mov	al, 1
	lea	rdi, [rdi]
	xor	ecx, ecx
	mov	edx, ecx
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x258]
	nop	
	sub	rdx, qword ptr [rsi + 8]
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x5c0]
	nop	
	mov	qword ptr [rsi + 0x40], rdx
	test	al, 1
	jne	.label_165
	mov	rbp, rbp
	jmp	.label_298
.label_1004:
	xor	eax, eax
	lea	rdi, [rdi]
	mov	cl, al
	lea	rsi, [rsi]
	xor	eax, eax
	lea	rdi, [rdi]
	mov	edx, eax
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x258]
	sub	rdx, qword ptr [rsi + 8]
	mov	rsi, qword ptr [rbp - 0x5c0]
	mov	qword ptr [rsi + 0x40], rdx
	nop	
	test	cl, 1
	jne	.label_165
	mov	rsp, rsp
	jmp	.label_298
.label_165:
	mov	rbp, rbp
	jmp	.label_146
.label_298:
	jmp	.label_148
.label_5145:
	mov	rdi, qword ptr [rbp - 0x5c0]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x258]
	add	rax, -0x38
	mov	rcx, qword ptr [rbp - 0x258]
	nop	
	mov	rcx, qword ptr [rcx]
	mov	edx, ecx
	mov	rcx, qword ptr [rax + 0x30]
	lea	rsi, [rsi]
	mov	rsi, rsp
	nop	
	mov	qword ptr [rsi + 0x30], rcx
	mov	rbp, rbp
	movups	xmm0, xmmword ptr [rax]
	lea	rdi, [rdi]
	movups	xmm1, xmmword ptr [rax + 0x10]
	movups	xmm2, xmmword ptr [rax + 0x20]
	lea	rsi, [rsi]
	movups	xmmword ptr [rsi + 0x20], xmm2
	mov	rsp, rsp
	movups	xmmword ptr [rsi + 0x10], xmm1
	movups	xmmword ptr [rsi], xmm0
	mov	rbp, rbp
	mov	esi, edx
	call	apply_relative_time
	mov	rbp, rbp
	test	al, 1
	lea	rdi, [rdi]
	jne	.label_1050
	lea	rdi, [rdi]
	jmp	.label_146
.label_1050:
	jmp	.label_148
.label_5146:
	mov	eax, 1
	mov	rdi, qword ptr [rbp - 0x5c0]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x258]
	mov	rbp, rbp
	mov	rdx, qword ptr [rcx + 0x30]
	mov	rsi, rsp
	mov	qword ptr [rsi + 0x30], rdx
	nop	
	movups	xmm0, xmmword ptr [rcx]
	movups	xmm1, xmmword ptr [rcx + 0x10]
	mov	rsp, rsp
	movups	xmm2, xmmword ptr [rcx + 0x20]
	nop	
	movups	xmmword ptr [rsi + 0x20], xmm2
	movups	xmmword ptr [rsi + 0x10], xmm1
	movups	xmmword ptr [rsi], xmm0
	mov	esi, 1
	nop	
	mov	dword ptr [rbp - 0x41c], eax
	call	apply_relative_time
	nop	
	test	al, 1
	jne	.label_672
	jmp	.label_146
.label_672:
	nop	
	jmp	.label_148
.label_5147:
	mov	eax, 1
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x5c0]
	nop	
	mov	rcx, qword ptr [rbp - 0x258]
	mov	rsp, rsp
	mov	rdx, qword ptr [rcx + 0x30]
	mov	rsi, rsp
	mov	rsp, rsp
	mov	qword ptr [rsi + 0x30], rdx
	movups	xmm0, xmmword ptr [rcx]
	mov	rsp, rsp
	movups	xmm1, xmmword ptr [rcx + 0x10]
	movups	xmm2, xmmword ptr [rcx + 0x20]
	lea	rsi, [rsi]
	movups	xmmword ptr [rsi + 0x20], xmm2
	movups	xmmword ptr [rsi + 0x10], xmm1
	nop	
	movups	xmmword ptr [rsi], xmm0
	mov	esi, 1
	mov	dword ptr [rbp - 0x5d4], eax
	mov	rsp, rsp
	call	apply_relative_time
	test	al, 1
	mov	rbp, rbp
	jne	.label_1102
	jmp	.label_146
.label_1102:
	jmp	.label_148
.label_5148:
	mov	eax, 0x38
	mov	rsp, rsp
	mov	edx, eax
	lea	rcx, [rbp - 0x380]
	lea	rsi, [rbp - 0x2a0]
	mov	qword ptr [rbp - 0x380], 0
	nop	
	mov	qword ptr [rbp - 0x378], 0
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x370], 0
	mov	qword ptr [rbp - 0x368], 0
	mov	qword ptr [rbp - 0x360], 0
	mov	qword ptr [rbp - 0x358], 0
	mov	dword ptr [rbp - 0x350], 0
	mov	rdi, rsi
	mov	rsi, rcx
	mov	rsp, rsp
	call	memcpy
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x258]
	mov	rbp, rbp
	mov	rcx, qword ptr [rcx - 0x38]
	mov	qword ptr [rbp - 0x2a0], rcx
	jmp	.label_148
.label_5149:
	mov	eax, 0x38
	mov	edx, eax
	lea	rcx, [rbp - 0x498]
	lea	rdi, [rdi]
	lea	rsi, [rbp - 0x2a0]
	mov	qword ptr [rbp - 0x498], 0
	mov	qword ptr [rbp - 0x490], 0
	mov	qword ptr [rbp - 0x488], 0
	mov	qword ptr [rbp - 0x480], 0
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x478], 0
	mov	qword ptr [rbp - 0x470], 0
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x468], 0
	mov	rdi, rsi
	mov	rsi, rcx
	call	memcpy
	mov	rcx, qword ptr [rbp - 0x258]
	mov	rsp, rsp
	mov	rcx, qword ptr [rcx - 0x30]
	nop	
	mov	qword ptr [rbp - 0x2a0], rcx
	jmp	.label_148
.label_5150:
	mov	rbp, rbp
	mov	eax, 0x38
	mov	edx, eax
	lea	rcx, [rbp - 0x140]
	nop	
	lea	rsi, [rbp - 0x2a0]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x140], 0
	mov	qword ptr [rbp - 0x138], 0
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x130], 0
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x128], 0
	mov	qword ptr [rbp - 0x120], 0
	mov	qword ptr [rbp - 0x118], 0
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x110], 0
	mov	rsp, rsp
	mov	rdi, rsi
	mov	rsi, rcx
	call	memcpy
	mov	qword ptr [rbp - 0x2a0], 1
	jmp	.label_148
.label_5151:
	mov	eax, 0x38
	mov	rsp, rsp
	mov	edx, eax
	lea	rcx, [rbp - 0xa8]
	mov	rbp, rbp
	lea	rsi, [rbp - 0x2a0]
	mov	qword ptr [rbp - 0xa8], 0
	nop	
	mov	qword ptr [rbp - 0xa0], 0
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x98], 0
	mov	qword ptr [rbp - 0x90], 0
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x88], 0
	nop	
	mov	qword ptr [rbp - 0x80], 0
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x78], 0
	mov	rdi, rsi
	lea	rsi, [rsi]
	mov	rsi, rcx
	call	memcpy
	mov	rcx, qword ptr [rbp - 0x258]
	nop	
	mov	rcx, qword ptr [rcx - 0x38]
	mov	qword ptr [rbp - 0x298], rcx
	nop	
	jmp	.label_148
.label_5152:
	mov	eax, 0x38
	mov	edx, eax
	mov	rsp, rsp
	lea	rcx, [rbp - 0x640]
	mov	rsp, rsp
	lea	rsi, [rbp - 0x2a0]
	mov	qword ptr [rbp - 0x640], 0
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x638], 0
	mov	qword ptr [rbp - 0x630], 0
	mov	qword ptr [rbp - 0x628], 0
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x620], 0
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x618], 0
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x610], 0
	mov	rdi, rsi
	mov	rsi, rcx
	lea	rdi, [rdi]
	call	memcpy
	nop	
	mov	rcx, qword ptr [rbp - 0x258]
	mov	rcx, qword ptr [rcx - 0x30]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x298], rcx
	mov	rsp, rsp
	jmp	.label_148
.label_5153:
	mov	eax, 0x38
	lea	rsi, [rsi]
	mov	edx, eax
	mov	rbp, rbp
	lea	rcx, [rbp - 0x4d0]
	lea	rsi, [rbp - 0x2a0]
	mov	qword ptr [rbp - 0x4d0], 0
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x4c8], 0
	mov	qword ptr [rbp - 0x4c0], 0
	mov	qword ptr [rbp - 0x4b8], 0
	mov	qword ptr [rbp - 0x4b0], 0
	mov	qword ptr [rbp - 0x4a8], 0
	mov	dword ptr [rbp - 0x4a0], 0
	nop	
	mov	rdi, rsi
	lea	rdi, [rdi]
	mov	rsi, rcx
	mov	rbp, rbp
	call	memcpy
	mov	qword ptr [rbp - 0x298], 1
	jmp	.label_148
.label_5154:
	xor	eax, eax
	mov	cl, al
	mov	eax, 0x38
	lea	rsi, [rsi]
	mov	edx, eax
	lea	rsi, [rbp - 0xf8]
	lea	rsi, [rsi]
	lea	rdi, [rbp - 0x2a0]
	mov	qword ptr [rbp - 0xf8], 0
	mov	qword ptr [rbp - 0xf0], 0
	mov	rbp, rbp
	mov	qword ptr [rbp - 0xe8], 0
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0xe0], 0
	mov	qword ptr [rbp - 0xd8], 0
	mov	qword ptr [rbp - 0xd0], 0
	mov	rsp, rsp
	mov	dword ptr [rbp - 0xc8], 0
	nop	
	mov	byte ptr [rbp - 0x2a1], cl
	call	memcpy
	mov	cl, byte ptr [rbp - 0x2a1]
	mov	rsp, rsp
	test	cl, 1
	mov	rsp, rsp
	jne	.label_384
	mov	rsp, rsp
	jmp	.label_389
.label_384:
	lea	rsi, [rsi]
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_391
	jmp	.label_396
.label_391:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x258]
	mov	rbp, rbp
	mov	rax, qword ptr [rax]
	mov	cl, al
	lea	rsi, [rsi]
	movsx	edx, cl
	mov	rbp, rbp
	cmp	edx, 0
	lea	rdi, [rdi]
	jge	.label_397
	mov	rax, qword ptr [rbp - 0x258]
	nop	
	mov	rax, qword ptr [rax - 0x38]
	mov	rsp, rsp
	mov	cl, al
	movsx	edx, cl
	cmp	edx, 0
	lea	rsi, [rsi]
	jge	.label_405
	lea	rdi, [rdi]
	mov	eax, 0x7fffffff
	nop	
	mov	rcx, qword ptr [rbp - 0x258]
	mov	rcx, qword ptr [rcx - 0x38]
	lea	rdi, [rdi]
	mov	dl, cl
	lea	rsi, [rsi]
	movsx	esi, dl
	mov	rcx, qword ptr [rbp - 0x258]
	mov	rcx, qword ptr [rcx]
	mov	dl, cl
	movsx	edi, dl
	cdq	
	lea	rsi, [rsi]
	idiv	edi
	cmp	esi, eax
	jl	.label_411
	jmp	.label_425
.label_405:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x258]
	nop	
	mov	rax, qword ptr [rax]
	lea	rdi, [rdi]
	mov	cl, al
	mov	rsp, rsp
	movsx	edx, cl
	cmp	edx, -1
	jne	.label_428
	lea	rsi, [rsi]
	xor	eax, eax
	mov	rsp, rsp
	mov	cl, al
	test	cl, 1
	jne	.label_411
	lea	rdi, [rdi]
	jmp	.label_425
.label_428:
	lea	rdi, [rdi]
	mov	eax, 0x80000000
	mov	rcx, qword ptr [rbp - 0x258]
	mov	rcx, qword ptr [rcx]
	mov	dl, cl
	mov	rbp, rbp
	movsx	esi, dl
	cdq	
	mov	rbp, rbp
	idiv	esi
	mov	rcx, qword ptr [rbp - 0x258]
	mov	rbp, rbp
	mov	rcx, qword ptr [rcx - 0x38]
	mov	dil, cl
	movsx	esi, dil
	mov	rsp, rsp
	cmp	eax, esi
	lea	rsi, [rsi]
	jl	.label_411
	lea	rdi, [rdi]
	jmp	.label_425
.label_397:
	mov	rax, qword ptr [rbp - 0x258]
	mov	rbp, rbp
	mov	rax, qword ptr [rax]
	nop	
	mov	cl, al
	movsx	edx, cl
	mov	rsp, rsp
	cmp	edx, 0
	jne	.label_463
	lea	rdi, [rdi]
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	nop	
	jne	.label_411
	mov	rsp, rsp
	jmp	.label_425
.label_463:
	nop	
	mov	rax, qword ptr [rbp - 0x258]
	mov	rax, qword ptr [rax - 0x38]
	mov	rbp, rbp
	mov	cl, al
	movsx	edx, cl
	mov	rbp, rbp
	cmp	edx, 0
	jge	.label_886
	mov	eax, 0x80000000
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x258]
	nop	
	mov	rcx, qword ptr [rcx - 0x38]
	mov	rsp, rsp
	mov	dl, cl
	movsx	esi, dl
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x258]
	mov	rcx, qword ptr [rcx]
	nop	
	mov	dl, cl
	lea	rsi, [rsi]
	movsx	edi, dl
	cdq	
	lea	rsi, [rsi]
	idiv	edi
	cmp	esi, eax
	jl	.label_411
	jmp	.label_425
.label_886:
	mov	eax, 0x7fffffff
	nop	
	mov	rcx, qword ptr [rbp - 0x258]
	mov	rbp, rbp
	mov	rcx, qword ptr [rcx]
	mov	rbp, rbp
	mov	dl, cl
	mov	rsp, rsp
	movsx	esi, dl
	lea	rdi, [rdi]
	cdq	
	lea	rsi, [rsi]
	idiv	esi
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x258]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rcx - 0x38]
	mov	dil, cl
	lea	rsi, [rsi]
	movsx	esi, dil
	cmp	eax, esi
	mov	rsp, rsp
	jl	.label_411
.label_425:
	mov	rax, qword ptr [rbp - 0x258]
	mov	rax, qword ptr [rax - 0x38]
	lea	rsi, [rsi]
	mov	cl, al
	lea	rdi, [rdi]
	movsx	edx, cl
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x258]
	mov	rsp, rsp
	mov	rax, qword ptr [rax]
	mov	cl, al
	movsx	esi, cl
	imul	edx, esi
	cmp	edx, -0x80
	lea	rsi, [rsi]
	jl	.label_411
	mov	rsp, rsp
	mov	eax, 0x7f
	mov	rcx, qword ptr [rbp - 0x258]
	mov	rcx, qword ptr [rcx - 0x38]
	lea	rdi, [rdi]
	mov	dl, cl
	lea	rsi, [rsi]
	movsx	esi, dl
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x258]
	mov	rcx, qword ptr [rcx]
	mov	rbp, rbp
	mov	dl, cl
	mov	rbp, rbp
	movsx	edi, dl
	imul	esi, edi
	mov	rsp, rsp
	cmp	eax, esi
	nop	
	jge	.label_552
.label_411:
	mov	al, 1
	mov	rcx, qword ptr [rbp - 0x258]
	mov	rcx, qword ptr [rcx - 0x38]
	mov	rbp, rbp
	mov	dl, cl
	lea	rdi, [rdi]
	movsx	esi, dl
	mov	rcx, qword ptr [rbp - 0x258]
	mov	rcx, qword ptr [rcx]
	nop	
	mov	dl, cl
	movsx	edi, dl
	lea	rsi, [rsi]
	imul	esi, edi
	lea	rsi, [rsi]
	mov	dl, sil
	mov	rsp, rsp
	movsx	rcx, dl
	nop	
	mov	qword ptr [rbp - 0x290], rcx
	test	al, 1
	nop	
	jne	.label_273
	jmp	.label_272
.label_552:
	nop	
	xor	eax, eax
	mov	rbp, rbp
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x258]
	mov	rdx, qword ptr [rdx - 0x38]
	lea	rsi, [rsi]
	mov	sil, dl
	movsx	eax, sil
	mov	rdx, qword ptr [rbp - 0x258]
	mov	rbp, rbp
	mov	rdx, qword ptr [rdx]
	mov	sil, dl
	movsx	edi, sil
	nop	
	imul	eax, edi
	mov	sil, al
	mov	rsp, rsp
	movsx	rdx, sil
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x290], rdx
	test	cl, 1
	jne	.label_273
	nop	
	jmp	.label_272
.label_396:
	mov	rax, qword ptr [rbp - 0x258]
	cmp	qword ptr [rax], 0
	lea	rdi, [rdi]
	jge	.label_612
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x258]
	mov	rbp, rbp
	cmp	qword ptr [rax - 0x38], 0
	mov	rbp, rbp
	jge	.label_685
	movabs	rax, 0x7fffffffffffffff
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x258]
	mov	rcx, qword ptr [rcx - 0x38]
	mov	rdx, qword ptr [rbp - 0x258]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x598], rdx
	lea	rsi, [rsi]
	cqo	
	mov	rsi, qword ptr [rbp - 0x598]
	lea	rsi, [rsi]
	idiv	qword ptr [rsi]
	cmp	rcx, rax
	jl	.label_466
	jmp	.label_644
.label_685:
	mov	rax, qword ptr [rbp - 0x258]
	mov	rbp, rbp
	cmp	qword ptr [rax], -1
	jne	.label_637
	xor	eax, eax
	mov	rbp, rbp
	mov	cl, al
	test	cl, 1
	jne	.label_466
	jmp	.label_644
.label_637:
	lea	rsi, [rsi]
	movabs	rax, 0x8000000000000000
	mov	rcx, qword ptr [rbp - 0x258]
	cqo	
	idiv	qword ptr [rcx]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x258]
	cmp	rax, qword ptr [rcx - 0x38]
	mov	rsp, rsp
	jl	.label_466
	jmp	.label_644
.label_612:
	mov	rax, qword ptr [rbp - 0x258]
	mov	rsp, rsp
	cmp	qword ptr [rax], 0
	jne	.label_653
	nop	
	xor	eax, eax
	lea	rsi, [rsi]
	mov	cl, al
	test	cl, 1
	jne	.label_466
	jmp	.label_644
.label_653:
	mov	rax, qword ptr [rbp - 0x258]
	mov	rsp, rsp
	cmp	qword ptr [rax - 0x38], 0
	jge	.label_662
	movabs	rax, 0x8000000000000000
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x258]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rcx - 0x38]
	mov	rdx, qword ptr [rbp - 0x258]
	mov	qword ptr [rbp - 0x3e0], rdx
	nop	
	cqo	
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x3e0]
	idiv	qword ptr [rsi]
	nop	
	cmp	rcx, rax
	mov	rsp, rsp
	jl	.label_466
	mov	rsp, rsp
	jmp	.label_644
.label_662:
	movabs	rax, 0x7fffffffffffffff
	mov	rcx, qword ptr [rbp - 0x258]
	mov	rbp, rbp
	cqo	
	idiv	qword ptr [rcx]
	nop	
	mov	rcx, qword ptr [rbp - 0x258]
	cmp	rax, qword ptr [rcx - 0x38]
	nop	
	jl	.label_466
.label_644:
	mov	rax, qword ptr [rbp - 0x258]
	mov	rbp, rbp
	mov	rax, qword ptr [rax - 0x38]
	mov	rcx, qword ptr [rbp - 0x258]
	imul	rax, qword ptr [rcx]
	lea	rdi, [rdi]
	cmp	rax, -0x80
	jl	.label_466
	lea	rsi, [rsi]
	mov	eax, 0x7f
	mov	ecx, eax
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x258]
	nop	
	mov	rdx, qword ptr [rdx - 0x38]
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x258]
	imul	rdx, qword ptr [rsi]
	lea	rdi, [rdi]
	cmp	rcx, rdx
	mov	rsp, rsp
	jge	.label_702
.label_466:
	mov	rbp, rbp
	mov	al, 1
	mov	rcx, qword ptr [rbp - 0x258]
	mov	rcx, qword ptr [rcx - 0x38]
	mov	edx, ecx
	nop	
	mov	rcx, qword ptr [rbp - 0x258]
	nop	
	mov	rcx, qword ptr [rcx]
	mov	esi, ecx
	nop	
	imul	edx, esi
	lea	rdi, [rdi]
	mov	dil, dl
	movsx	rcx, dil
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x290], rcx
	mov	rbp, rbp
	test	al, 1
	lea	rdi, [rdi]
	jne	.label_273
	mov	rbp, rbp
	jmp	.label_272
.label_702:
	xor	eax, eax
	nop	
	mov	cl, al
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x258]
	mov	rdx, qword ptr [rdx - 0x38]
	mov	eax, edx
	mov	rdx, qword ptr [rbp - 0x258]
	nop	
	mov	rdx, qword ptr [rdx]
	mov	esi, edx
	imul	eax, esi
	mov	dil, al
	movsx	rdx, dil
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x290], rdx
	test	cl, 1
	mov	rbp, rbp
	jne	.label_273
	nop	
	jmp	.label_272
.label_389:
	nop	
	xor	eax, eax
	nop	
	mov	cl, al
	test	cl, 1
	lea	rdi, [rdi]
	jne	.label_751
	jmp	.label_755
.label_751:
	xor	eax, eax
	mov	rbp, rbp
	mov	cl, al
	lea	rsi, [rsi]
	test	cl, 1
	jne	.label_756
	jmp	.label_760
.label_756:
	mov	rax, qword ptr [rbp - 0x258]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax]
	mov	cx, ax
	movsx	edx, cx
	mov	rbp, rbp
	cmp	edx, 0
	jge	.label_762
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x258]
	mov	rsp, rsp
	mov	rax, qword ptr [rax - 0x38]
	mov	cx, ax
	movsx	edx, cx
	cmp	edx, 0
	mov	rbp, rbp
	jge	.label_769
	mov	eax, 0x7fffffff
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x258]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rcx - 0x38]
	mov	dx, cx
	movsx	esi, dx
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x258]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rcx]
	lea	rsi, [rsi]
	mov	dx, cx
	movsx	edi, dx
	cdq	
	idiv	edi
	mov	rsp, rsp
	cmp	esi, eax
	jl	.label_777
	lea	rsi, [rsi]
	jmp	.label_154
.label_769:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x258]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax]
	mov	rbp, rbp
	mov	cx, ax
	lea	rdi, [rdi]
	movsx	edx, cx
	cmp	edx, -1
	jne	.label_794
	xor	eax, eax
	lea	rdi, [rdi]
	mov	cl, al
	test	cl, 1
	jne	.label_777
	jmp	.label_154
.label_794:
	mov	eax, 0x80000000
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x258]
	mov	rcx, qword ptr [rcx]
	mov	rsp, rsp
	mov	dx, cx
	movsx	esi, dx
	lea	rsi, [rsi]
	cdq	
	lea	rdi, [rdi]
	idiv	esi
	mov	rcx, qword ptr [rbp - 0x258]
	nop	
	mov	rcx, qword ptr [rcx - 0x38]
	mov	di, cx
	lea	rsi, [rsi]
	movsx	esi, di
	cmp	eax, esi
	nop	
	jl	.label_777
	mov	rbp, rbp
	jmp	.label_154
.label_762:
	mov	rax, qword ptr [rbp - 0x258]
	mov	rax, qword ptr [rax]
	mov	cx, ax
	mov	rsp, rsp
	movsx	edx, cx
	cmp	edx, 0
	lea	rsi, [rsi]
	jne	.label_820
	lea	rsi, [rsi]
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_777
	jmp	.label_154
.label_820:
	mov	rax, qword ptr [rbp - 0x258]
	mov	rax, qword ptr [rax - 0x38]
	lea	rsi, [rsi]
	mov	cx, ax
	movsx	edx, cx
	cmp	edx, 0
	mov	rsp, rsp
	jge	.label_1032
	mov	rsp, rsp
	mov	eax, 0x80000000
	mov	rcx, qword ptr [rbp - 0x258]
	mov	rcx, qword ptr [rcx - 0x38]
	lea	rsi, [rsi]
	mov	dx, cx
	movsx	esi, dx
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x258]
	mov	rcx, qword ptr [rcx]
	mov	rbp, rbp
	mov	dx, cx
	movsx	edi, dx
	cdq	
	lea	rdi, [rdi]
	idiv	edi
	cmp	esi, eax
	jl	.label_777
	jmp	.label_154
.label_1032:
	mov	eax, 0x7fffffff
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x258]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rcx]
	mov	rsp, rsp
	mov	dx, cx
	movsx	esi, dx
	cdq	
	idiv	esi
	mov	rcx, qword ptr [rbp - 0x258]
	mov	rcx, qword ptr [rcx - 0x38]
	mov	di, cx
	movsx	esi, di
	cmp	eax, esi
	lea	rdi, [rdi]
	jl	.label_777
.label_154:
	mov	rax, qword ptr [rbp - 0x258]
	mov	rbp, rbp
	mov	rax, qword ptr [rax - 0x38]
	mov	cx, ax
	movsx	edx, cx
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x258]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax]
	mov	cx, ax
	movsx	esi, cx
	imul	edx, esi
	cmp	edx, 0xffff8000
	jl	.label_777
	mov	eax, 0x7fff
	mov	rcx, qword ptr [rbp - 0x258]
	mov	rcx, qword ptr [rcx - 0x38]
	nop	
	mov	dx, cx
	lea	rdi, [rdi]
	movsx	esi, dx
	nop	
	mov	rcx, qword ptr [rbp - 0x258]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rcx]
	mov	rsp, rsp
	mov	dx, cx
	nop	
	movsx	edi, dx
	imul	esi, edi
	lea	rsi, [rsi]
	cmp	eax, esi
	lea	rdi, [rdi]
	jge	.label_894
.label_777:
	lea	rdi, [rdi]
	mov	al, 1
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x258]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rcx - 0x38]
	lea	rdi, [rdi]
	mov	dx, cx
	mov	rsp, rsp
	movsx	esi, dx
	mov	rcx, qword ptr [rbp - 0x258]
	mov	rsp, rsp
	mov	rcx, qword ptr [rcx]
	lea	rsi, [rsi]
	mov	dx, cx
	movsx	edi, dx
	imul	esi, edi
	mov	dx, si
	mov	rsp, rsp
	movsx	rcx, dx
	mov	qword ptr [rbp - 0x290], rcx
	test	al, 1
	jne	.label_273
	jmp	.label_272
.label_894:
	nop	
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x258]
	mov	rdx, qword ptr [rdx - 0x38]
	mov	si, dx
	movsx	eax, si
	mov	rdx, qword ptr [rbp - 0x258]
	mov	rdx, qword ptr [rdx]
	mov	si, dx
	nop	
	movsx	edi, si
	mov	rsp, rsp
	imul	eax, edi
	lea	rsi, [rsi]
	mov	si, ax
	movsx	rdx, si
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x290], rdx
	mov	rsp, rsp
	test	cl, 1
	lea	rsi, [rsi]
	jne	.label_273
	lea	rsi, [rsi]
	jmp	.label_272
.label_760:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x258]
	mov	rbp, rbp
	cmp	qword ptr [rax], 0
	mov	rsp, rsp
	jge	.label_938
	mov	rax, qword ptr [rbp - 0x258]
	lea	rdi, [rdi]
	cmp	qword ptr [rax - 0x38], 0
	jge	.label_944
	nop	
	movabs	rax, 0x7fffffffffffffff
	mov	rcx, qword ptr [rbp - 0x258]
	mov	rbp, rbp
	mov	rcx, qword ptr [rcx - 0x38]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x258]
	mov	qword ptr [rbp - 0x600], rdx
	cqo	
	mov	rsi, qword ptr [rbp - 0x600]
	nop	
	idiv	qword ptr [rsi]
	cmp	rcx, rax
	jl	.label_514
	nop	
	jmp	.label_969
.label_944:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x258]
	nop	
	cmp	qword ptr [rax], -1
	mov	rsp, rsp
	jne	.label_972
	lea	rsi, [rsi]
	xor	eax, eax
	mov	rbp, rbp
	mov	cl, al
	test	cl, 1
	lea	rsi, [rsi]
	jne	.label_514
	mov	rbp, rbp
	jmp	.label_969
.label_972:
	lea	rdi, [rdi]
	movabs	rax, 0x8000000000000000
	mov	rcx, qword ptr [rbp - 0x258]
	cqo	
	nop	
	idiv	qword ptr [rcx]
	mov	rcx, qword ptr [rbp - 0x258]
	mov	rsp, rsp
	cmp	rax, qword ptr [rcx - 0x38]
	jl	.label_514
	lea	rdi, [rdi]
	jmp	.label_969
.label_938:
	mov	rax, qword ptr [rbp - 0x258]
	cmp	qword ptr [rax], 0
	mov	rbp, rbp
	jne	.label_999
	lea	rdi, [rdi]
	xor	eax, eax
	mov	rsp, rsp
	mov	cl, al
	nop	
	test	cl, 1
	jne	.label_514
	jmp	.label_969
.label_999:
	mov	rax, qword ptr [rbp - 0x258]
	cmp	qword ptr [rax - 0x38], 0
	mov	rsp, rsp
	jge	.label_1005
	lea	rsi, [rsi]
	movabs	rax, 0x8000000000000000
	mov	rcx, qword ptr [rbp - 0x258]
	mov	rcx, qword ptr [rcx - 0x38]
	mov	rdx, qword ptr [rbp - 0x258]
	mov	qword ptr [rbp - 0x5e0], rdx
	cqo	
	mov	rsi, qword ptr [rbp - 0x5e0]
	mov	rsp, rsp
	idiv	qword ptr [rsi]
	cmp	rcx, rax
	jl	.label_514
	lea	rsi, [rsi]
	jmp	.label_969
.label_1005:
	movabs	rax, 0x7fffffffffffffff
	mov	rcx, qword ptr [rbp - 0x258]
	cqo	
	lea	rsi, [rsi]
	idiv	qword ptr [rcx]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x258]
	nop	
	cmp	rax, qword ptr [rcx - 0x38]
	jl	.label_514
.label_969:
	nop	
	mov	rax, qword ptr [rbp - 0x258]
	mov	rax, qword ptr [rax - 0x38]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x258]
	nop	
	imul	rax, qword ptr [rcx]
	mov	rbp, rbp
	cmp	rax, -0x8000
	lea	rsi, [rsi]
	jl	.label_514
	mov	rsp, rsp
	mov	eax, 0x7fff
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x258]
	mov	rbp, rbp
	mov	rdx, qword ptr [rdx - 0x38]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x258]
	lea	rsi, [rsi]
	imul	rdx, qword ptr [rsi]
	mov	rsp, rsp
	cmp	rcx, rdx
	jge	.label_1031
.label_514:
	mov	al, 1
	nop	
	mov	rcx, qword ptr [rbp - 0x258]
	mov	rcx, qword ptr [rcx - 0x38]
	lea	rdi, [rdi]
	mov	edx, ecx
	nop	
	mov	rcx, qword ptr [rbp - 0x258]
	nop	
	mov	rcx, qword ptr [rcx]
	lea	rsi, [rsi]
	mov	esi, ecx
	imul	edx, esi
	lea	rdi, [rdi]
	mov	di, dx
	movsx	rcx, di
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x290], rcx
	nop	
	test	al, 1
	lea	rdi, [rdi]
	jne	.label_273
	jmp	.label_272
.label_1031:
	mov	rsp, rsp
	xor	eax, eax
	nop	
	mov	cl, al
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x258]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rdx - 0x38]
	lea	rdi, [rdi]
	mov	eax, edx
	mov	rdx, qword ptr [rbp - 0x258]
	mov	rdx, qword ptr [rdx]
	lea	rdi, [rdi]
	mov	esi, edx
	lea	rdi, [rdi]
	imul	eax, esi
	mov	rbp, rbp
	mov	di, ax
	nop	
	movsx	rdx, di
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x290], rdx
	test	cl, 1
	mov	rbp, rbp
	jne	.label_273
	jmp	.label_272
.label_755:
	mov	rbp, rbp
	xor	eax, eax
	mov	rsp, rsp
	mov	cl, al
	test	cl, 1
	jne	.label_1083
	lea	rdi, [rdi]
	jmp	.label_1086
.label_1083:
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	mov	rsp, rsp
	jne	.label_1090
	lea	rsi, [rsi]
	jmp	.label_1094
.label_1090:
	mov	rax, qword ptr [rbp - 0x258]
	mov	rax, qword ptr [rax]
	mov	ecx, eax
	mov	rsp, rsp
	cmp	ecx, 0
	nop	
	jge	.label_1098
	mov	rax, qword ptr [rbp - 0x258]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax - 0x38]
	mov	ecx, eax
	lea	rsi, [rsi]
	cmp	ecx, 0
	jge	.label_1103
	lea	rsi, [rsi]
	mov	eax, 0x7fffffff
	mov	rcx, qword ptr [rbp - 0x258]
	mov	rcx, qword ptr [rcx - 0x38]
	nop	
	mov	edx, ecx
	mov	rcx, qword ptr [rbp - 0x258]
	mov	rcx, qword ptr [rcx]
	mov	esi, ecx
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x58c], edx
	cdq	
	idiv	esi
	lea	rsi, [rsi]
	mov	esi, dword ptr [rbp - 0x58c]
	lea	rsi, [rsi]
	cmp	esi, eax
	jl	.label_158
	jmp	.label_137
.label_1103:
	mov	rax, qword ptr [rbp - 0x258]
	mov	rax, qword ptr [rax]
	mov	ecx, eax
	cmp	ecx, -1
	nop	
	jne	.label_1125
	lea	rdi, [rdi]
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_158
	nop	
	jmp	.label_137
.label_1125:
	mov	eax, 0x80000000
	mov	rcx, qword ptr [rbp - 0x258]
	mov	rbp, rbp
	mov	rcx, qword ptr [rcx]
	mov	edx, ecx
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0xbc], edx
	cdq	
	mov	esi, dword ptr [rbp - 0xbc]
	idiv	esi
	mov	rcx, qword ptr [rbp - 0x258]
	mov	rcx, qword ptr [rcx - 0x38]
	mov	rbp, rbp
	mov	edi, ecx
	cmp	eax, edi
	jl	.label_158
	mov	rsp, rsp
	jmp	.label_137
.label_1098:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x258]
	mov	rbp, rbp
	mov	rax, qword ptr [rax]
	mov	ecx, eax
	cmp	ecx, 0
	nop	
	jne	.label_1147
	xor	eax, eax
	lea	rsi, [rsi]
	mov	cl, al
	test	cl, 1
	mov	rbp, rbp
	jne	.label_158
	jmp	.label_137
.label_1147:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x258]
	mov	rax, qword ptr [rax - 0x38]
	mov	ecx, eax
	lea	rdi, [rdi]
	cmp	ecx, 0
	nop	
	jge	.label_195
	mov	eax, 0x80000000
	mov	rcx, qword ptr [rbp - 0x258]
	mov	rbp, rbp
	mov	rcx, qword ptr [rcx - 0x38]
	lea	rsi, [rsi]
	mov	edx, ecx
	nop	
	mov	rcx, qword ptr [rbp - 0x258]
	mov	rcx, qword ptr [rcx]
	lea	rdi, [rdi]
	mov	esi, ecx
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0xd34], edx
	cdq	
	idiv	esi
	nop	
	mov	esi, dword ptr [rbp - 0xd34]
	cmp	esi, eax
	jl	.label_158
	jmp	.label_137
.label_195:
	mov	rsp, rsp
	mov	eax, 0x7fffffff
	mov	rcx, qword ptr [rbp - 0x258]
	mov	rbp, rbp
	mov	rcx, qword ptr [rcx]
	mov	edx, ecx
	mov	dword ptr [rbp - 0xcb8], edx
	nop	
	cdq	
	lea	rdi, [rdi]
	mov	esi, dword ptr [rbp - 0xcb8]
	idiv	esi
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x258]
	mov	rcx, qword ptr [rcx - 0x38]
	mov	edi, ecx
	cmp	eax, edi
	mov	rbp, rbp
	jl	.label_158
.label_137:
	mov	rax, qword ptr [rbp - 0x258]
	mov	rsp, rsp
	mov	rax, qword ptr [rax - 0x38]
	mov	ecx, eax
	mov	rax, qword ptr [rbp - 0x258]
	mov	rax, qword ptr [rax]
	mov	edx, eax
	mov	rbp, rbp
	imul	ecx, edx
	cmp	ecx, 0x80000000
	mov	rbp, rbp
	jl	.label_158
	lea	rsi, [rsi]
	mov	eax, 0x7fffffff
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x258]
	mov	rcx, qword ptr [rcx - 0x38]
	mov	edx, ecx
	mov	rcx, qword ptr [rbp - 0x258]
	mov	rcx, qword ptr [rcx]
	lea	rsi, [rsi]
	mov	esi, ecx
	lea	rdi, [rdi]
	imul	edx, esi
	nop	
	cmp	eax, edx
	mov	rsp, rsp
	jge	.label_242
.label_158:
	mov	al, 1
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x258]
	mov	rbp, rbp
	mov	rcx, qword ptr [rcx - 0x38]
	nop	
	mov	edx, ecx
	mov	rcx, qword ptr [rbp - 0x258]
	mov	rbp, rbp
	mov	rcx, qword ptr [rcx]
	mov	rsp, rsp
	mov	esi, ecx
	imul	edx, esi
	lea	rsi, [rsi]
	movsxd	rcx, edx
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x290], rcx
	test	al, 1
	mov	rsp, rsp
	jne	.label_273
	mov	rsp, rsp
	jmp	.label_272
.label_242:
	xor	eax, eax
	mov	rbp, rbp
	mov	cl, al
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x258]
	mov	rdx, qword ptr [rdx - 0x38]
	mov	eax, edx
	mov	rdx, qword ptr [rbp - 0x258]
	nop	
	mov	rdx, qword ptr [rdx]
	lea	rsi, [rsi]
	mov	esi, edx
	mov	rbp, rbp
	imul	eax, esi
	nop	
	movsxd	rdx, eax
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x290], rdx
	test	cl, 1
	nop	
	jne	.label_273
	jmp	.label_272
.label_1094:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x258]
	cmp	qword ptr [rax], 0
	jge	.label_293
	mov	rax, qword ptr [rbp - 0x258]
	lea	rsi, [rsi]
	cmp	qword ptr [rax - 0x38], 0
	jge	.label_1027
	lea	rsi, [rsi]
	movabs	rax, 0x7fffffffffffffff
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x258]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rcx - 0x38]
	mov	rdx, qword ptr [rbp - 0x258]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x588], rdx
	cqo	
	mov	rsi, qword ptr [rbp - 0x588]
	idiv	qword ptr [rsi]
	mov	rsp, rsp
	cmp	rcx, rax
	lea	rdi, [rdi]
	jl	.label_336
	jmp	.label_327
.label_1027:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x258]
	mov	rsp, rsp
	cmp	qword ptr [rax], -1
	jne	.label_329
	xor	eax, eax
	mov	rsp, rsp
	mov	cl, al
	lea	rsi, [rsi]
	test	cl, 1
	nop	
	jne	.label_336
	jmp	.label_327
.label_329:
	movabs	rax, 0x8000000000000000
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x258]
	cqo	
	mov	rbp, rbp
	idiv	qword ptr [rcx]
	mov	rcx, qword ptr [rbp - 0x258]
	cmp	rax, qword ptr [rcx - 0x38]
	jl	.label_336
	lea	rdi, [rdi]
	jmp	.label_327
.label_293:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x258]
	cmp	qword ptr [rax], 0
	jne	.label_355
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	lea	rdi, [rdi]
	jne	.label_336
	jmp	.label_327
.label_355:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x258]
	nop	
	cmp	qword ptr [rax - 0x38], 0
	jge	.label_212
	nop	
	movabs	rax, 0x8000000000000000
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x258]
	mov	rbp, rbp
	mov	rcx, qword ptr [rcx - 0x38]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x258]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x228], rdx
	mov	rsp, rsp
	cqo	
	mov	rsi, qword ptr [rbp - 0x228]
	nop	
	idiv	qword ptr [rsi]
	mov	rbp, rbp
	cmp	rcx, rax
	jl	.label_336
	nop	
	jmp	.label_327
.label_212:
	movabs	rax, 0x7fffffffffffffff
	mov	rcx, qword ptr [rbp - 0x258]
	mov	rsp, rsp
	cqo	
	nop	
	idiv	qword ptr [rcx]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x258]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rcx - 0x38]
	nop	
	jl	.label_336
.label_327:
	nop	
	mov	rax, qword ptr [rbp - 0x258]
	mov	rax, qword ptr [rax - 0x38]
	mov	rcx, qword ptr [rbp - 0x258]
	nop	
	imul	rax, qword ptr [rcx]
	mov	rsp, rsp
	cmp	rax, -0x80000000
	jl	.label_336
	mov	eax, 0x7fffffff
	mov	ecx, eax
	nop	
	mov	rdx, qword ptr [rbp - 0x258]
	mov	rdx, qword ptr [rdx - 0x38]
	mov	rsi, qword ptr [rbp - 0x258]
	imul	rdx, qword ptr [rsi]
	lea	rdi, [rdi]
	cmp	rcx, rdx
	mov	rsp, rsp
	jge	.label_231
.label_336:
	lea	rdi, [rdi]
	mov	al, 1
	nop	
	mov	rcx, qword ptr [rbp - 0x258]
	mov	rcx, qword ptr [rcx - 0x38]
	mov	edx, ecx
	mov	rcx, qword ptr [rbp - 0x258]
	mov	rcx, qword ptr [rcx]
	mov	rsp, rsp
	mov	esi, ecx
	imul	edx, esi
	movsxd	rcx, edx
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x290], rcx
	lea	rsi, [rsi]
	test	al, 1
	lea	rdi, [rdi]
	jne	.label_273
	jmp	.label_272
.label_231:
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x258]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rdx - 0x38]
	mov	eax, edx
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x258]
	mov	rsp, rsp
	mov	rdx, qword ptr [rdx]
	lea	rdi, [rdi]
	mov	esi, edx
	imul	eax, esi
	movsxd	rdx, eax
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x290], rdx
	test	cl, 1
	jne	.label_273
	jmp	.label_272
.label_1086:
	nop	
	mov	al, 1
	mov	rsp, rsp
	test	al, 1
	jne	.label_460
	lea	rsi, [rsi]
	jmp	.label_465
.label_460:
	lea	rdi, [rdi]
	xor	eax, eax
	mov	cl, al
	lea	rdi, [rdi]
	test	cl, 1
	nop	
	jne	.label_470
	jmp	.label_474
.label_470:
	mov	rax, qword ptr [rbp - 0x258]
	cmp	qword ptr [rax], 0
	lea	rsi, [rsi]
	jge	.label_477
	mov	rax, qword ptr [rbp - 0x258]
	cmp	qword ptr [rax - 0x38], 0
	jge	.label_483
	movabs	rax, 0x7fffffffffffffff
	mov	rcx, qword ptr [rbp - 0x258]
	mov	rcx, qword ptr [rcx - 0x38]
	mov	rdx, qword ptr [rbp - 0x258]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0xcd8], rdx
	cqo	
	mov	rsi, qword ptr [rbp - 0xcd8]
	idiv	qword ptr [rsi]
	cmp	rcx, rax
	jl	.label_367
	jmp	.label_351
.label_483:
	mov	rax, qword ptr [rbp - 0x258]
	nop	
	cmp	qword ptr [rax], -1
	nop	
	jne	.label_518
	mov	rbp, rbp
	xor	eax, eax
	lea	rsi, [rsi]
	mov	cl, al
	mov	rbp, rbp
	test	cl, 1
	mov	rsp, rsp
	jne	.label_367
	lea	rsi, [rsi]
	jmp	.label_351
.label_518:
	movabs	rax, 0x8000000000000000
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x258]
	lea	rdi, [rdi]
	cqo	
	lea	rsi, [rsi]
	idiv	qword ptr [rcx]
	nop	
	mov	rcx, qword ptr [rbp - 0x258]
	cmp	rax, qword ptr [rcx - 0x38]
	lea	rsi, [rsi]
	jl	.label_367
	jmp	.label_351
.label_477:
	mov	rax, qword ptr [rbp - 0x258]
	lea	rsi, [rsi]
	cmp	qword ptr [rax], 0
	jne	.label_1129
	xor	eax, eax
	lea	rsi, [rsi]
	mov	cl, al
	test	cl, 1
	jne	.label_367
	jmp	.label_351
.label_1129:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x258]
	cmp	qword ptr [rax - 0x38], 0
	nop	
	jge	.label_550
	movabs	rax, 0x8000000000000000
	nop	
	mov	rcx, qword ptr [rbp - 0x258]
	mov	rcx, qword ptr [rcx - 0x38]
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x258]
	mov	qword ptr [rbp - 0x108], rdx
	mov	rbp, rbp
	cqo	
	mov	rsi, qword ptr [rbp - 0x108]
	idiv	qword ptr [rsi]
	lea	rsi, [rsi]
	cmp	rcx, rax
	jl	.label_367
	jmp	.label_351
.label_550:
	lea	rdi, [rdi]
	movabs	rax, 0x7fffffffffffffff
	mov	rcx, qword ptr [rbp - 0x258]
	mov	rsp, rsp
	cqo	
	idiv	qword ptr [rcx]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x258]
	cmp	rax, qword ptr [rcx - 0x38]
	lea	rdi, [rdi]
	jl	.label_367
.label_351:
	movabs	rax, 0x8000000000000000
	nop	
	mov	rcx, qword ptr [rbp - 0x258]
	mov	rsp, rsp
	mov	rcx, qword ptr [rcx - 0x38]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x258]
	lea	rsi, [rsi]
	imul	rcx, qword ptr [rdx]
	mov	rsp, rsp
	cmp	rcx, rax
	jl	.label_367
	lea	rsi, [rsi]
	movabs	rax, 0x7fffffffffffffff
	mov	rcx, qword ptr [rbp - 0x258]
	mov	rcx, qword ptr [rcx - 0x38]
	nop	
	mov	rdx, qword ptr [rbp - 0x258]
	lea	rsi, [rsi]
	imul	rcx, qword ptr [rdx]
	lea	rsi, [rsi]
	cmp	rax, rcx
	jge	.label_232
.label_367:
	mov	al, 1
	mov	rcx, qword ptr [rbp - 0x258]
	mov	rsp, rsp
	mov	rcx, qword ptr [rcx - 0x38]
	mov	rdx, qword ptr [rbp - 0x258]
	lea	rdi, [rdi]
	imul	rcx, qword ptr [rdx]
	mov	qword ptr [rbp - 0x290], rcx
	test	al, 1
	mov	rbp, rbp
	jne	.label_273
	lea	rsi, [rsi]
	jmp	.label_272
.label_232:
	lea	rdi, [rdi]
	xor	eax, eax
	nop	
	mov	cl, al
	nop	
	mov	rdx, qword ptr [rbp - 0x258]
	mov	rdx, qword ptr [rdx - 0x38]
	nop	
	mov	rsi, qword ptr [rbp - 0x258]
	imul	rdx, qword ptr [rsi]
	mov	qword ptr [rbp - 0x290], rdx
	lea	rdi, [rdi]
	test	cl, 1
	mov	rbp, rbp
	jne	.label_273
	lea	rsi, [rsi]
	jmp	.label_272
.label_474:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x258]
	nop	
	cmp	qword ptr [rax], 0
	jge	.label_639
	mov	rax, qword ptr [rbp - 0x258]
	mov	rsp, rsp
	cmp	qword ptr [rax - 0x38], 0
	mov	rsp, rsp
	jge	.label_642
	mov	rsp, rsp
	movabs	rax, 0x7fffffffffffffff
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x258]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rcx - 0x38]
	mov	rdx, qword ptr [rbp - 0x258]
	mov	qword ptr [rbp - 0x320], rdx
	cqo	
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x320]
	idiv	qword ptr [rsi]
	nop	
	cmp	rcx, rax
	jl	.label_370
	jmp	.label_279
.label_642:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x258]
	mov	rsp, rsp
	cmp	qword ptr [rax], -1
	jne	.label_658
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_370
	jmp	.label_279
.label_658:
	nop	
	movabs	rax, 0x8000000000000000
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x258]
	lea	rdi, [rdi]
	cqo	
	mov	rsp, rsp
	idiv	qword ptr [rcx]
	mov	rcx, qword ptr [rbp - 0x258]
	cmp	rax, qword ptr [rcx - 0x38]
	mov	rbp, rbp
	jl	.label_370
	lea	rsi, [rsi]
	jmp	.label_279
.label_639:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x258]
	cmp	qword ptr [rax], 0
	lea	rsi, [rsi]
	jne	.label_677
	xor	eax, eax
	mov	cl, al
	lea	rdi, [rdi]
	test	cl, 1
	lea	rdi, [rdi]
	jne	.label_370
	jmp	.label_279
.label_677:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x258]
	cmp	qword ptr [rax - 0x38], 0
	lea	rsi, [rsi]
	jge	.label_689
	movabs	rax, 0x8000000000000000
	mov	rcx, qword ptr [rbp - 0x258]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rcx - 0x38]
	mov	rdx, qword ptr [rbp - 0x258]
	mov	qword ptr [rbp - 0xd80], rdx
	nop	
	cqo	
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0xd80]
	mov	rsp, rsp
	idiv	qword ptr [rsi]
	mov	rsp, rsp
	cmp	rcx, rax
	jl	.label_370
	jmp	.label_279
.label_689:
	movabs	rax, 0x7fffffffffffffff
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x258]
	nop	
	cqo	
	idiv	qword ptr [rcx]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x258]
	cmp	rax, qword ptr [rcx - 0x38]
	lea	rsi, [rsi]
	jl	.label_370
.label_279:
	mov	rbp, rbp
	movabs	rax, 0x8000000000000000
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x258]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rcx - 0x38]
	mov	rdx, qword ptr [rbp - 0x258]
	nop	
	imul	rcx, qword ptr [rdx]
	cmp	rcx, rax
	jl	.label_370
	nop	
	movabs	rax, 0x7fffffffffffffff
	mov	rcx, qword ptr [rbp - 0x258]
	mov	rcx, qword ptr [rcx - 0x38]
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x258]
	nop	
	imul	rcx, qword ptr [rdx]
	cmp	rax, rcx
	mov	rsp, rsp
	jge	.label_736
.label_370:
	mov	rbp, rbp
	mov	al, 1
	nop	
	mov	rcx, qword ptr [rbp - 0x258]
	mov	rbp, rbp
	mov	rcx, qword ptr [rcx - 0x38]
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x258]
	imul	rcx, qword ptr [rdx]
	mov	qword ptr [rbp - 0x290], rcx
	test	al, 1
	jne	.label_273
	jmp	.label_272
.label_736:
	mov	rbp, rbp
	xor	eax, eax
	mov	rsp, rsp
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x258]
	mov	rsp, rsp
	mov	rdx, qword ptr [rdx - 0x38]
	mov	rsi, qword ptr [rbp - 0x258]
	imul	rdx, qword ptr [rsi]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x290], rdx
	test	cl, 1
	jne	.label_273
	lea	rsi, [rsi]
	jmp	.label_272
.label_465:
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_778
	jmp	.label_781
.label_778:
	nop	
	mov	rax, qword ptr [rbp - 0x258]
	lea	rsi, [rsi]
	cmp	qword ptr [rax], 0
	lea	rdi, [rdi]
	jge	.label_784
	mov	rax, qword ptr [rbp - 0x258]
	cmp	qword ptr [rax - 0x38], 0
	nop	
	jge	.label_789
	lea	rdi, [rdi]
	movabs	rax, 0x7fffffffffffffff
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x258]
	mov	rbp, rbp
	mov	rcx, qword ptr [rcx - 0x38]
	nop	
	mov	rdx, qword ptr [rbp - 0x258]
	mov	qword ptr [rbp - 0xd78], rdx
	cqo	
	mov	rsi, qword ptr [rbp - 0xd78]
	idiv	qword ptr [rsi]
	cmp	rcx, rax
	lea	rdi, [rdi]
	jl	.label_190
	jmp	.label_334
.label_789:
	mov	rax, qword ptr [rbp - 0x258]
	cmp	qword ptr [rax], -1
	jne	.label_805
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	mov	rbp, rbp
	jne	.label_190
	jmp	.label_334
.label_805:
	movabs	rax, 0x8000000000000000
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x258]
	cqo	
	mov	rsp, rsp
	idiv	qword ptr [rcx]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x258]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rcx - 0x38]
	jl	.label_190
	jmp	.label_334
.label_784:
	mov	rax, qword ptr [rbp - 0x258]
	nop	
	cmp	qword ptr [rax], 0
	mov	rsp, rsp
	jne	.label_826
	mov	rbp, rbp
	xor	eax, eax
	mov	cl, al
	mov	rsp, rsp
	test	cl, 1
	lea	rdi, [rdi]
	jne	.label_190
	jmp	.label_334
.label_826:
	mov	rax, qword ptr [rbp - 0x258]
	cmp	qword ptr [rax - 0x38], 0
	jge	.label_840
	lea	rdi, [rdi]
	movabs	rax, 0x8000000000000000
	mov	rcx, qword ptr [rbp - 0x258]
	mov	rcx, qword ptr [rcx - 0x38]
	mov	rdx, qword ptr [rbp - 0x258]
	nop	
	mov	qword ptr [rbp - 0xbb0], rdx
	cqo	
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0xbb0]
	mov	rsp, rsp
	idiv	qword ptr [rsi]
	cmp	rcx, rax
	mov	rbp, rbp
	jl	.label_190
	jmp	.label_334
.label_840:
	mov	rsp, rsp
	movabs	rax, 0x7fffffffffffffff
	mov	rcx, qword ptr [rbp - 0x258]
	cqo	
	lea	rdi, [rdi]
	idiv	qword ptr [rcx]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x258]
	cmp	rax, qword ptr [rcx - 0x38]
	lea	rdi, [rdi]
	jl	.label_190
.label_334:
	nop	
	movabs	rax, 0x8000000000000000
	mov	rcx, qword ptr [rbp - 0x258]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rcx - 0x38]
	mov	rdx, qword ptr [rbp - 0x258]
	imul	rcx, qword ptr [rdx]
	nop	
	cmp	rcx, rax
	lea	rdi, [rdi]
	jl	.label_190
	movabs	rax, 0x7fffffffffffffff
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x258]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rcx - 0x38]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x258]
	mov	rsp, rsp
	imul	rcx, qword ptr [rdx]
	mov	rsp, rsp
	cmp	rax, rcx
	jge	.label_893
.label_190:
	lea	rsi, [rsi]
	mov	al, 1
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x258]
	mov	rcx, qword ptr [rcx - 0x38]
	nop	
	mov	rdx, qword ptr [rbp - 0x258]
	nop	
	imul	rcx, qword ptr [rdx]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x290], rcx
	test	al, 1
	jne	.label_273
	jmp	.label_272
.label_893:
	xor	eax, eax
	nop	
	mov	cl, al
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x258]
	mov	rdx, qword ptr [rdx - 0x38]
	mov	rsi, qword ptr [rbp - 0x258]
	imul	rdx, qword ptr [rsi]
	mov	qword ptr [rbp - 0x290], rdx
	mov	rbp, rbp
	test	cl, 1
	nop	
	jne	.label_273
	jmp	.label_272
.label_781:
	mov	rax, qword ptr [rbp - 0x258]
	cmp	qword ptr [rax], 0
	nop	
	jge	.label_915
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x258]
	mov	rsp, rsp
	cmp	qword ptr [rax - 0x38], 0
	jge	.label_705
	nop	
	movabs	rax, 0x7fffffffffffffff
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x258]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rcx - 0x38]
	mov	rdx, qword ptr [rbp - 0x258]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x4f0], rdx
	nop	
	cqo	
	mov	rsi, qword ptr [rbp - 0x4f0]
	nop	
	idiv	qword ptr [rsi]
	cmp	rcx, rax
	lea	rdi, [rdi]
	jl	.label_876
	jmp	.label_912
.label_705:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x258]
	cmp	qword ptr [rax], -1
	jne	.label_946
	mov	rbp, rbp
	xor	eax, eax
	mov	cl, al
	lea	rdi, [rdi]
	test	cl, 1
	mov	rsp, rsp
	jne	.label_876
	jmp	.label_912
.label_946:
	movabs	rax, 0x8000000000000000
	mov	rcx, qword ptr [rbp - 0x258]
	lea	rdi, [rdi]
	cqo	
	lea	rdi, [rdi]
	idiv	qword ptr [rcx]
	mov	rcx, qword ptr [rbp - 0x258]
	cmp	rax, qword ptr [rcx - 0x38]
	mov	rsp, rsp
	jl	.label_876
	mov	rsp, rsp
	jmp	.label_912
.label_915:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x258]
	cmp	qword ptr [rax], 0
	jne	.label_977
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	lea	rdi, [rdi]
	jne	.label_876
	lea	rdi, [rdi]
	jmp	.label_912
.label_977:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x258]
	cmp	qword ptr [rax - 0x38], 0
	jge	.label_988
	mov	rbp, rbp
	movabs	rax, 0x8000000000000000
	mov	rcx, qword ptr [rbp - 0x258]
	mov	rsp, rsp
	mov	rcx, qword ptr [rcx - 0x38]
	mov	rdx, qword ptr [rbp - 0x258]
	mov	qword ptr [rbp - 0x338], rdx
	mov	rsp, rsp
	cqo	
	nop	
	mov	rsi, qword ptr [rbp - 0x338]
	idiv	qword ptr [rsi]
	cmp	rcx, rax
	jl	.label_876
	jmp	.label_912
.label_988:
	lea	rsi, [rsi]
	movabs	rax, 0x7fffffffffffffff
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x258]
	lea	rdi, [rdi]
	cqo	
	idiv	qword ptr [rcx]
	mov	rcx, qword ptr [rbp - 0x258]
	mov	rsp, rsp
	cmp	rax, qword ptr [rcx - 0x38]
	lea	rdi, [rdi]
	jl	.label_876
.label_912:
	movabs	rax, 0x8000000000000000
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x258]
	nop	
	mov	rcx, qword ptr [rcx - 0x38]
	mov	rdx, qword ptr [rbp - 0x258]
	imul	rcx, qword ptr [rdx]
	cmp	rcx, rax
	jl	.label_876
	movabs	rax, 0x7fffffffffffffff
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x258]
	mov	rcx, qword ptr [rcx - 0x38]
	mov	rdx, qword ptr [rbp - 0x258]
	mov	rsp, rsp
	imul	rcx, qword ptr [rdx]
	cmp	rax, rcx
	mov	rsp, rsp
	jge	.label_1019
.label_876:
	lea	rsi, [rsi]
	mov	al, 1
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x258]
	mov	rcx, qword ptr [rcx - 0x38]
	nop	
	mov	rdx, qword ptr [rbp - 0x258]
	nop	
	imul	rcx, qword ptr [rdx]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x290], rcx
	test	al, 1
	jne	.label_273
	lea	rsi, [rsi]
	jmp	.label_272
.label_1019:
	xor	eax, eax
	lea	rsi, [rsi]
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x258]
	mov	rdx, qword ptr [rdx - 0x38]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x258]
	imul	rdx, qword ptr [rsi]
	mov	qword ptr [rbp - 0x290], rdx
	lea	rsi, [rsi]
	test	cl, 1
	jne	.label_273
	nop	
	jmp	.label_272
.label_273:
	jmp	.label_146
.label_272:
	nop	
	jmp	.label_148
.label_5155:
	mov	rbp, rbp
	xor	eax, eax
	mov	cl, al
	mov	eax, 0x38
	nop	
	mov	edx, eax
	lea	rsi, [rbp - 0xba8]
	lea	rdi, [rbp - 0x2a0]
	mov	qword ptr [rbp - 0xba8], 0
	mov	qword ptr [rbp - 0xba0], 0
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0xb98], 0
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0xb90], 0
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0xb88], 0
	mov	qword ptr [rbp - 0xb80], 0
	mov	rbp, rbp
	mov	dword ptr [rbp - 0xb78], 0
	mov	byte ptr [rbp - 0x3f9], cl
	call	memcpy
	mov	cl, byte ptr [rbp - 0x3f9]
	test	cl, 1
	lea	rdi, [rdi]
	jne	.label_330
	mov	rsp, rsp
	jmp	.label_1087
.label_330:
	xor	eax, eax
	mov	rsp, rsp
	mov	cl, al
	lea	rdi, [rdi]
	test	cl, 1
	lea	rdi, [rdi]
	jne	.label_1091
	jmp	.label_1099
.label_1091:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x258]
	mov	rax, qword ptr [rax]
	mov	cl, al
	movsx	edx, cl
	cmp	edx, 0
	jge	.label_1100
	mov	rax, qword ptr [rbp - 0x258]
	mov	rbp, rbp
	mov	rax, qword ptr [rax - 0x30]
	mov	rbp, rbp
	mov	cl, al
	movsx	edx, cl
	cmp	edx, 0
	nop	
	jge	.label_1105
	nop	
	mov	eax, 0x7fffffff
	nop	
	mov	rcx, qword ptr [rbp - 0x258]
	mov	rcx, qword ptr [rcx - 0x30]
	mov	dl, cl
	movsx	esi, dl
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x258]
	mov	rcx, qword ptr [rcx]
	mov	dl, cl
	movsx	edi, dl
	lea	rdi, [rdi]
	cdq	
	lea	rdi, [rdi]
	idiv	edi
	lea	rsi, [rsi]
	cmp	esi, eax
	mov	rsp, rsp
	jl	.label_140
	nop	
	jmp	.label_206
.label_1105:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x258]
	nop	
	mov	rax, qword ptr [rax]
	mov	cl, al
	mov	rbp, rbp
	movsx	edx, cl
	mov	rsp, rsp
	cmp	edx, -1
	jne	.label_1128
	xor	eax, eax
	mov	rsp, rsp
	mov	cl, al
	test	cl, 1
	lea	rdi, [rdi]
	jne	.label_140
	jmp	.label_206
.label_1128:
	lea	rdi, [rdi]
	mov	eax, 0x80000000
	mov	rcx, qword ptr [rbp - 0x258]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rcx]
	lea	rdi, [rdi]
	mov	dl, cl
	nop	
	movsx	esi, dl
	cdq	
	idiv	esi
	mov	rcx, qword ptr [rbp - 0x258]
	nop	
	mov	rcx, qword ptr [rcx - 0x30]
	nop	
	mov	dil, cl
	movsx	esi, dil
	cmp	eax, esi
	jl	.label_140
	lea	rsi, [rsi]
	jmp	.label_206
.label_1100:
	mov	rax, qword ptr [rbp - 0x258]
	nop	
	mov	rax, qword ptr [rax]
	mov	cl, al
	mov	rsp, rsp
	movsx	edx, cl
	cmp	edx, 0
	jne	.label_1153
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_140
	jmp	.label_206
.label_1153:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x258]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax - 0x30]
	lea	rsi, [rsi]
	mov	cl, al
	movsx	edx, cl
	cmp	edx, 0
	jge	.label_152
	mov	rsp, rsp
	mov	eax, 0x80000000
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x258]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rcx - 0x30]
	mov	dl, cl
	movsx	esi, dl
	mov	rcx, qword ptr [rbp - 0x258]
	mov	rcx, qword ptr [rcx]
	mov	rsp, rsp
	mov	dl, cl
	lea	rdi, [rdi]
	movsx	edi, dl
	lea	rsi, [rsi]
	cdq	
	lea	rdi, [rdi]
	idiv	edi
	lea	rsi, [rsi]
	cmp	esi, eax
	jl	.label_140
	jmp	.label_206
.label_152:
	nop	
	mov	eax, 0x7fffffff
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x258]
	mov	rcx, qword ptr [rcx]
	mov	dl, cl
	lea	rdi, [rdi]
	movsx	esi, dl
	mov	rbp, rbp
	cdq	
	idiv	esi
	mov	rcx, qword ptr [rbp - 0x258]
	mov	rcx, qword ptr [rcx - 0x30]
	mov	dil, cl
	lea	rdi, [rdi]
	movsx	esi, dil
	cmp	eax, esi
	nop	
	jl	.label_140
.label_206:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x258]
	mov	rsp, rsp
	mov	rax, qword ptr [rax - 0x30]
	lea	rsi, [rsi]
	mov	cl, al
	movsx	edx, cl
	mov	rax, qword ptr [rbp - 0x258]
	mov	rax, qword ptr [rax]
	mov	cl, al
	movsx	esi, cl
	imul	edx, esi
	nop	
	cmp	edx, -0x80
	jl	.label_140
	lea	rsi, [rsi]
	mov	eax, 0x7f
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x258]
	mov	rcx, qword ptr [rcx - 0x30]
	mov	dl, cl
	movsx	esi, dl
	nop	
	mov	rcx, qword ptr [rbp - 0x258]
	mov	rcx, qword ptr [rcx]
	mov	dl, cl
	movsx	edi, dl
	imul	esi, edi
	lea	rsi, [rsi]
	cmp	eax, esi
	jge	.label_252
.label_140:
	mov	al, 1
	mov	rcx, qword ptr [rbp - 0x258]
	mov	rbp, rbp
	mov	rcx, qword ptr [rcx - 0x30]
	mov	dl, cl
	movsx	esi, dl
	mov	rcx, qword ptr [rbp - 0x258]
	mov	rcx, qword ptr [rcx]
	mov	dl, cl
	lea	rsi, [rsi]
	movsx	edi, dl
	imul	esi, edi
	lea	rsi, [rsi]
	mov	dl, sil
	lea	rsi, [rsi]
	movsx	rcx, dl
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x290], rcx
	test	al, 1
	lea	rsi, [rsi]
	jne	.label_266
	mov	rbp, rbp
	jmp	.label_180
.label_252:
	lea	rsi, [rsi]
	xor	eax, eax
	lea	rsi, [rsi]
	mov	cl, al
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x258]
	mov	rdx, qword ptr [rdx - 0x30]
	mov	sil, dl
	nop	
	movsx	eax, sil
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x258]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rdx]
	nop	
	mov	sil, dl
	movsx	edi, sil
	mov	rsp, rsp
	imul	eax, edi
	mov	rsp, rsp
	mov	sil, al
	lea	rsi, [rsi]
	movsx	rdx, sil
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x290], rdx
	test	cl, 1
	mov	rbp, rbp
	jne	.label_266
	mov	rbp, rbp
	jmp	.label_180
.label_1099:
	mov	rax, qword ptr [rbp - 0x258]
	cmp	qword ptr [rax], 0
	lea	rsi, [rsi]
	jge	.label_310
	mov	rax, qword ptr [rbp - 0x258]
	nop	
	cmp	qword ptr [rax - 0x30], 0
	jge	.label_318
	lea	rdi, [rdi]
	movabs	rax, 0x7fffffffffffffff
	mov	rcx, qword ptr [rbp - 0x258]
	mov	rcx, qword ptr [rcx - 0x30]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x258]
	mov	qword ptr [rbp - 0x3d0], rdx
	lea	rdi, [rdi]
	cqo	
	mov	rsi, qword ptr [rbp - 0x3d0]
	idiv	qword ptr [rsi]
	cmp	rcx, rax
	jl	.label_322
	jmp	.label_302
.label_318:
	mov	rax, qword ptr [rbp - 0x258]
	cmp	qword ptr [rax], -1
	mov	rbp, rbp
	jne	.label_343
	nop	
	xor	eax, eax
	mov	rbp, rbp
	mov	cl, al
	lea	rsi, [rsi]
	test	cl, 1
	jne	.label_322
	jmp	.label_302
.label_343:
	movabs	rax, 0x8000000000000000
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x258]
	mov	rsp, rsp
	cqo	
	nop	
	idiv	qword ptr [rcx]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x258]
	cmp	rax, qword ptr [rcx - 0x30]
	nop	
	jl	.label_322
	mov	rbp, rbp
	jmp	.label_302
.label_310:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x258]
	lea	rdi, [rdi]
	cmp	qword ptr [rax], 0
	lea	rdi, [rdi]
	jne	.label_374
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	mov	rsp, rsp
	jne	.label_322
	jmp	.label_302
.label_374:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x258]
	nop	
	cmp	qword ptr [rax - 0x30], 0
	jge	.label_382
	movabs	rax, 0x8000000000000000
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x258]
	mov	rcx, qword ptr [rcx - 0x30]
	mov	rdx, qword ptr [rbp - 0x258]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0xce0], rdx
	nop	
	cqo	
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0xce0]
	mov	rbp, rbp
	idiv	qword ptr [rsi]
	lea	rdi, [rdi]
	cmp	rcx, rax
	jl	.label_322
	jmp	.label_302
.label_382:
	movabs	rax, 0x7fffffffffffffff
	mov	rcx, qword ptr [rbp - 0x258]
	mov	rsp, rsp
	cqo	
	idiv	qword ptr [rcx]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x258]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rcx - 0x30]
	jl	.label_322
.label_302:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x258]
	mov	rax, qword ptr [rax - 0x30]
	mov	rcx, qword ptr [rbp - 0x258]
	imul	rax, qword ptr [rcx]
	cmp	rax, -0x80
	mov	rsp, rsp
	jl	.label_322
	mov	eax, 0x7f
	lea	rdi, [rdi]
	mov	ecx, eax
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x258]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rdx - 0x30]
	nop	
	mov	rsi, qword ptr [rbp - 0x258]
	imul	rdx, qword ptr [rsi]
	cmp	rcx, rdx
	mov	rbp, rbp
	jge	.label_424
.label_322:
	mov	al, 1
	mov	rcx, qword ptr [rbp - 0x258]
	mov	rcx, qword ptr [rcx - 0x30]
	mov	edx, ecx
	mov	rcx, qword ptr [rbp - 0x258]
	mov	rsp, rsp
	mov	rcx, qword ptr [rcx]
	lea	rdi, [rdi]
	mov	esi, ecx
	imul	edx, esi
	mov	rsp, rsp
	mov	dil, dl
	movsx	rcx, dil
	mov	qword ptr [rbp - 0x290], rcx
	test	al, 1
	jne	.label_266
	lea	rsi, [rsi]
	jmp	.label_180
.label_424:
	lea	rdi, [rdi]
	xor	eax, eax
	mov	rsp, rsp
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x258]
	mov	rdx, qword ptr [rdx - 0x30]
	mov	eax, edx
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x258]
	mov	rdx, qword ptr [rdx]
	mov	esi, edx
	imul	eax, esi
	nop	
	mov	dil, al
	lea	rdi, [rdi]
	movsx	rdx, dil
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x290], rdx
	test	cl, 1
	jne	.label_266
	lea	rsi, [rsi]
	jmp	.label_180
.label_1087:
	lea	rsi, [rsi]
	xor	eax, eax
	lea	rsi, [rsi]
	mov	cl, al
	nop	
	test	cl, 1
	jne	.label_1079
	jmp	.label_901
.label_1079:
	xor	eax, eax
	lea	rdi, [rdi]
	mov	cl, al
	test	cl, 1
	jne	.label_494
	mov	rbp, rbp
	jmp	.label_500
.label_494:
	mov	rax, qword ptr [rbp - 0x258]
	mov	rax, qword ptr [rax]
	mov	rsp, rsp
	mov	cx, ax
	movsx	edx, cx
	cmp	edx, 0
	jge	.label_504
	nop	
	mov	rax, qword ptr [rbp - 0x258]
	mov	rax, qword ptr [rax - 0x30]
	lea	rdi, [rdi]
	mov	cx, ax
	mov	rsp, rsp
	movsx	edx, cx
	cmp	edx, 0
	jge	.label_516
	mov	eax, 0x7fffffff
	mov	rcx, qword ptr [rbp - 0x258]
	mov	rcx, qword ptr [rcx - 0x30]
	lea	rsi, [rsi]
	mov	dx, cx
	movsx	esi, dx
	mov	rcx, qword ptr [rbp - 0x258]
	mov	rcx, qword ptr [rcx]
	nop	
	mov	dx, cx
	movsx	edi, dx
	lea	rdi, [rdi]
	cdq	
	nop	
	idiv	edi
	cmp	esi, eax
	mov	rbp, rbp
	jl	.label_521
	nop	
	jmp	.label_338
.label_516:
	nop	
	mov	rax, qword ptr [rbp - 0x258]
	mov	rsp, rsp
	mov	rax, qword ptr [rax]
	mov	cx, ax
	movsx	edx, cx
	lea	rdi, [rdi]
	cmp	edx, -1
	nop	
	jne	.label_535
	lea	rdi, [rdi]
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_521
	lea	rsi, [rsi]
	jmp	.label_338
.label_535:
	lea	rdi, [rdi]
	mov	eax, 0x80000000
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x258]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rcx]
	mov	rbp, rbp
	mov	dx, cx
	movsx	esi, dx
	nop	
	cdq	
	lea	rsi, [rsi]
	idiv	esi
	mov	rcx, qword ptr [rbp - 0x258]
	mov	rsp, rsp
	mov	rcx, qword ptr [rcx - 0x30]
	lea	rdi, [rdi]
	mov	di, cx
	mov	rbp, rbp
	movsx	esi, di
	lea	rdi, [rdi]
	cmp	eax, esi
	lea	rdi, [rdi]
	jl	.label_521
	mov	rbp, rbp
	jmp	.label_338
.label_504:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x258]
	mov	rax, qword ptr [rax]
	lea	rsi, [rsi]
	mov	cx, ax
	lea	rdi, [rdi]
	movsx	edx, cx
	cmp	edx, 0
	lea	rsi, [rsi]
	jne	.label_565
	xor	eax, eax
	nop	
	mov	cl, al
	test	cl, 1
	jne	.label_521
	jmp	.label_338
.label_565:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x258]
	mov	rbp, rbp
	mov	rax, qword ptr [rax - 0x30]
	mov	cx, ax
	nop	
	movsx	edx, cx
	cmp	edx, 0
	jge	.label_581
	lea	rsi, [rsi]
	mov	eax, 0x80000000
	mov	rcx, qword ptr [rbp - 0x258]
	mov	rsp, rsp
	mov	rcx, qword ptr [rcx - 0x30]
	mov	dx, cx
	mov	rsp, rsp
	movsx	esi, dx
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x258]
	mov	rcx, qword ptr [rcx]
	nop	
	mov	dx, cx
	mov	rsp, rsp
	movsx	edi, dx
	cdq	
	nop	
	idiv	edi
	lea	rsi, [rsi]
	cmp	esi, eax
	nop	
	jl	.label_521
	nop	
	jmp	.label_338
.label_581:
	mov	eax, 0x7fffffff
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x258]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rcx]
	lea	rdi, [rdi]
	mov	dx, cx
	movsx	esi, dx
	mov	rsp, rsp
	cdq	
	idiv	esi
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x258]
	mov	rcx, qword ptr [rcx - 0x30]
	mov	di, cx
	movsx	esi, di
	lea	rdi, [rdi]
	cmp	eax, esi
	nop	
	jl	.label_521
.label_338:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x258]
	mov	rax, qword ptr [rax - 0x30]
	lea	rdi, [rdi]
	mov	cx, ax
	movsx	edx, cx
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x258]
	nop	
	mov	rax, qword ptr [rax]
	nop	
	mov	cx, ax
	movsx	esi, cx
	lea	rdi, [rdi]
	imul	edx, esi
	mov	rsp, rsp
	cmp	edx, 0xffff8000
	jl	.label_521
	mov	eax, 0x7fff
	mov	rcx, qword ptr [rbp - 0x258]
	mov	rcx, qword ptr [rcx - 0x30]
	mov	dx, cx
	movsx	esi, dx
	mov	rcx, qword ptr [rbp - 0x258]
	mov	rbp, rbp
	mov	rcx, qword ptr [rcx]
	mov	rbp, rbp
	mov	dx, cx
	mov	rsp, rsp
	movsx	edi, dx
	lea	rdi, [rdi]
	imul	esi, edi
	cmp	eax, esi
	jge	.label_791
.label_521:
	mov	al, 1
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x258]
	mov	rcx, qword ptr [rcx - 0x30]
	mov	dx, cx
	nop	
	movsx	esi, dx
	mov	rcx, qword ptr [rbp - 0x258]
	nop	
	mov	rcx, qword ptr [rcx]
	mov	dx, cx
	lea	rsi, [rsi]
	movsx	edi, dx
	mov	rsp, rsp
	imul	esi, edi
	mov	rsp, rsp
	mov	dx, si
	movsx	rcx, dx
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x290], rcx
	mov	rbp, rbp
	test	al, 1
	lea	rdi, [rdi]
	jne	.label_266
	lea	rsi, [rsi]
	jmp	.label_180
.label_791:
	xor	eax, eax
	mov	cl, al
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x258]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rdx - 0x30]
	mov	si, dx
	lea	rdi, [rdi]
	movsx	eax, si
	mov	rdx, qword ptr [rbp - 0x258]
	mov	rdx, qword ptr [rdx]
	mov	rsp, rsp
	mov	si, dx
	movsx	edi, si
	mov	rbp, rbp
	imul	eax, edi
	mov	si, ax
	movsx	rdx, si
	mov	qword ptr [rbp - 0x290], rdx
	nop	
	test	cl, 1
	nop	
	jne	.label_266
	mov	rsp, rsp
	jmp	.label_180
.label_500:
	mov	rax, qword ptr [rbp - 0x258]
	mov	rsp, rsp
	cmp	qword ptr [rax], 0
	mov	rsp, rsp
	jge	.label_1110
	mov	rax, qword ptr [rbp - 0x258]
	cmp	qword ptr [rax - 0x30], 0
	lea	rsi, [rsi]
	jge	.label_591
	lea	rsi, [rsi]
	movabs	rax, 0x7fffffffffffffff
	mov	rcx, qword ptr [rbp - 0x258]
	mov	rcx, qword ptr [rcx - 0x30]
	mov	rdx, qword ptr [rbp - 0x258]
	mov	qword ptr [rbp - 0x608], rdx
	cqo	
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x608]
	mov	rbp, rbp
	idiv	qword ptr [rsi]
	cmp	rcx, rax
	jl	.label_701
	lea	rsi, [rsi]
	jmp	.label_523
.label_591:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x258]
	lea	rdi, [rdi]
	cmp	qword ptr [rax], -1
	jne	.label_719
	mov	rsp, rsp
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_701
	nop	
	jmp	.label_523
.label_719:
	lea	rsi, [rsi]
	movabs	rax, 0x8000000000000000
	mov	rcx, qword ptr [rbp - 0x258]
	lea	rsi, [rsi]
	cqo	
	nop	
	idiv	qword ptr [rcx]
	mov	rcx, qword ptr [rbp - 0x258]
	cmp	rax, qword ptr [rcx - 0x30]
	nop	
	jl	.label_701
	jmp	.label_523
.label_1110:
	mov	rax, qword ptr [rbp - 0x258]
	cmp	qword ptr [rax], 0
	mov	rsp, rsp
	jne	.label_738
	xor	eax, eax
	mov	cl, al
	nop	
	test	cl, 1
	jne	.label_701
	jmp	.label_523
.label_738:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x258]
	cmp	qword ptr [rax - 0x30], 0
	jge	.label_750
	lea	rsi, [rsi]
	movabs	rax, 0x8000000000000000
	mov	rcx, qword ptr [rbp - 0x258]
	mov	rcx, qword ptr [rcx - 0x30]
	mov	rdx, qword ptr [rbp - 0x258]
	mov	qword ptr [rbp - 0x460], rdx
	nop	
	cqo	
	mov	rsi, qword ptr [rbp - 0x460]
	mov	rbp, rbp
	idiv	qword ptr [rsi]
	lea	rsi, [rsi]
	cmp	rcx, rax
	mov	rsp, rsp
	jl	.label_701
	lea	rdi, [rdi]
	jmp	.label_523
.label_750:
	mov	rbp, rbp
	movabs	rax, 0x7fffffffffffffff
	mov	rcx, qword ptr [rbp - 0x258]
	lea	rsi, [rsi]
	cqo	
	nop	
	idiv	qword ptr [rcx]
	mov	rcx, qword ptr [rbp - 0x258]
	mov	rbp, rbp
	cmp	rax, qword ptr [rcx - 0x30]
	mov	rsp, rsp
	jl	.label_701
.label_523:
	mov	rax, qword ptr [rbp - 0x258]
	mov	rax, qword ptr [rax - 0x30]
	mov	rcx, qword ptr [rbp - 0x258]
	nop	
	imul	rax, qword ptr [rcx]
	mov	rbp, rbp
	cmp	rax, -0x8000
	mov	rsp, rsp
	jl	.label_701
	mov	eax, 0x7fff
	mov	rsp, rsp
	mov	ecx, eax
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x258]
	mov	rdx, qword ptr [rdx - 0x30]
	mov	rsi, qword ptr [rbp - 0x258]
	lea	rdi, [rdi]
	imul	rdx, qword ptr [rsi]
	cmp	rcx, rdx
	lea	rsi, [rsi]
	jge	.label_793
.label_701:
	mov	rsp, rsp
	mov	al, 1
	mov	rcx, qword ptr [rbp - 0x258]
	mov	rcx, qword ptr [rcx - 0x30]
	mov	edx, ecx
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x258]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rcx]
	lea	rdi, [rdi]
	mov	esi, ecx
	imul	edx, esi
	mov	di, dx
	lea	rsi, [rsi]
	movsx	rcx, di
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x290], rcx
	lea	rsi, [rsi]
	test	al, 1
	jne	.label_266
	jmp	.label_180
.label_793:
	nop	
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x258]
	mov	rdx, qword ptr [rdx - 0x30]
	mov	eax, edx
	mov	rdx, qword ptr [rbp - 0x258]
	mov	rsp, rsp
	mov	rdx, qword ptr [rdx]
	mov	rbp, rbp
	mov	esi, edx
	nop	
	imul	eax, esi
	mov	di, ax
	lea	rdi, [rdi]
	movsx	rdx, di
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x290], rdx
	lea	rsi, [rsi]
	test	cl, 1
	jne	.label_266
	lea	rdi, [rdi]
	jmp	.label_180
.label_901:
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_841
	jmp	.label_846
.label_841:
	mov	rsp, rsp
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	nop	
	jne	.label_848
	jmp	.label_852
.label_848:
	mov	rax, qword ptr [rbp - 0x258]
	mov	rax, qword ptr [rax]
	mov	rsp, rsp
	mov	ecx, eax
	mov	rsp, rsp
	cmp	ecx, 0
	jge	.label_854
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x258]
	mov	rax, qword ptr [rax - 0x30]
	mov	ecx, eax
	mov	rsp, rsp
	cmp	ecx, 0
	lea	rsi, [rsi]
	jge	.label_863
	mov	rsp, rsp
	mov	eax, 0x7fffffff
	mov	rcx, qword ptr [rbp - 0x258]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rcx - 0x30]
	mov	edx, ecx
	nop	
	mov	rcx, qword ptr [rbp - 0x258]
	mov	rcx, qword ptr [rcx]
	lea	rdi, [rdi]
	mov	esi, ecx
	mov	dword ptr [rbp - 0x5b4], edx
	mov	rsp, rsp
	cdq	
	idiv	esi
	mov	esi, dword ptr [rbp - 0x5b4]
	lea	rdi, [rdi]
	cmp	esi, eax
	jl	.label_870
	jmp	.label_887
.label_863:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x258]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax]
	mov	rbp, rbp
	mov	ecx, eax
	cmp	ecx, -1
	lea	rdi, [rdi]
	jne	.label_888
	xor	eax, eax
	mov	cl, al
	mov	rbp, rbp
	test	cl, 1
	jne	.label_870
	nop	
	jmp	.label_887
.label_888:
	nop	
	mov	eax, 0x80000000
	mov	rcx, qword ptr [rbp - 0x258]
	mov	rcx, qword ptr [rcx]
	mov	rsp, rsp
	mov	edx, ecx
	nop	
	mov	dword ptr [rbp - 0x250], edx
	cdq	
	mov	rbp, rbp
	mov	esi, dword ptr [rbp - 0x250]
	lea	rsi, [rsi]
	idiv	esi
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x258]
	mov	rcx, qword ptr [rcx - 0x30]
	mov	rbp, rbp
	mov	edi, ecx
	lea	rdi, [rdi]
	cmp	eax, edi
	lea	rsi, [rsi]
	jl	.label_870
	lea	rdi, [rdi]
	jmp	.label_887
.label_854:
	mov	rax, qword ptr [rbp - 0x258]
	mov	rax, qword ptr [rax]
	lea	rdi, [rdi]
	mov	ecx, eax
	cmp	ecx, 0
	lea	rsi, [rsi]
	jne	.label_906
	xor	eax, eax
	mov	rsp, rsp
	mov	cl, al
	test	cl, 1
	jne	.label_870
	jmp	.label_887
.label_906:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x258]
	mov	rax, qword ptr [rax - 0x30]
	mov	rbp, rbp
	mov	ecx, eax
	mov	rsp, rsp
	cmp	ecx, 0
	jge	.label_638
	lea	rdi, [rdi]
	mov	eax, 0x80000000
	mov	rcx, qword ptr [rbp - 0x258]
	mov	rcx, qword ptr [rcx - 0x30]
	mov	edx, ecx
	nop	
	mov	rcx, qword ptr [rbp - 0x258]
	mov	rcx, qword ptr [rcx]
	mov	esi, ecx
	mov	dword ptr [rbp - 0xfc], edx
	mov	rbp, rbp
	cdq	
	idiv	esi
	nop	
	mov	esi, dword ptr [rbp - 0xfc]
	lea	rsi, [rsi]
	cmp	esi, eax
	lea	rsi, [rsi]
	jl	.label_870
	jmp	.label_887
.label_638:
	mov	rbp, rbp
	mov	eax, 0x7fffffff
	mov	rcx, qword ptr [rbp - 0x258]
	mov	rcx, qword ptr [rcx]
	mov	edx, ecx
	mov	dword ptr [rbp - 0x244], edx
	cdq	
	lea	rdi, [rdi]
	mov	esi, dword ptr [rbp - 0x244]
	idiv	esi
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x258]
	nop	
	mov	rcx, qword ptr [rcx - 0x30]
	mov	rbp, rbp
	mov	edi, ecx
	cmp	eax, edi
	jl	.label_870
.label_887:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x258]
	mov	rsp, rsp
	mov	rax, qword ptr [rax - 0x30]
	mov	ecx, eax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x258]
	mov	rax, qword ptr [rax]
	mov	edx, eax
	nop	
	imul	ecx, edx
	cmp	ecx, 0x80000000
	jl	.label_870
	lea	rsi, [rsi]
	mov	eax, 0x7fffffff
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x258]
	mov	rsp, rsp
	mov	rcx, qword ptr [rcx - 0x30]
	mov	edx, ecx
	mov	rcx, qword ptr [rbp - 0x258]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rcx]
	mov	rbp, rbp
	mov	esi, ecx
	lea	rsi, [rsi]
	imul	edx, esi
	mov	rsp, rsp
	cmp	eax, edx
	lea	rsi, [rsi]
	jge	.label_978
.label_870:
	mov	rbp, rbp
	mov	al, 1
	mov	rcx, qword ptr [rbp - 0x258]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rcx - 0x30]
	mov	rsp, rsp
	mov	edx, ecx
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x258]
	mov	rcx, qword ptr [rcx]
	mov	rsp, rsp
	mov	esi, ecx
	nop	
	imul	edx, esi
	movsxd	rcx, edx
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x290], rcx
	test	al, 1
	mov	rbp, rbp
	jne	.label_266
	lea	rsi, [rsi]
	jmp	.label_180
.label_978:
	xor	eax, eax
	mov	rsp, rsp
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x258]
	mov	rdx, qword ptr [rdx - 0x30]
	mov	eax, edx
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x258]
	nop	
	mov	rdx, qword ptr [rdx]
	mov	rbp, rbp
	mov	esi, edx
	lea	rsi, [rsi]
	imul	eax, esi
	mov	rsp, rsp
	movsxd	rdx, eax
	mov	qword ptr [rbp - 0x290], rdx
	test	cl, 1
	jne	.label_266
	lea	rdi, [rdi]
	jmp	.label_180
.label_852:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x258]
	cmp	qword ptr [rax], 0
	mov	rbp, rbp
	jge	.label_1015
	mov	rax, qword ptr [rbp - 0x258]
	mov	rbp, rbp
	cmp	qword ptr [rax - 0x30], 0
	lea	rsi, [rsi]
	jge	.label_1155
	mov	rsp, rsp
	movabs	rax, 0x7fffffffffffffff
	mov	rcx, qword ptr [rbp - 0x258]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rcx - 0x30]
	nop	
	mov	rdx, qword ptr [rbp - 0x258]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0xcd0], rdx
	lea	rsi, [rsi]
	cqo	
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0xcd0]
	mov	rsp, rsp
	idiv	qword ptr [rsi]
	mov	rsp, rsp
	cmp	rcx, rax
	lea	rdi, [rdi]
	jl	.label_543
	jmp	.label_1039
.label_1155:
	mov	rax, qword ptr [rbp - 0x258]
	mov	rsp, rsp
	cmp	qword ptr [rax], -1
	mov	rsp, rsp
	jne	.label_1042
	mov	rbp, rbp
	xor	eax, eax
	lea	rsi, [rsi]
	mov	cl, al
	test	cl, 1
	nop	
	jne	.label_543
	jmp	.label_1039
.label_1042:
	nop	
	movabs	rax, 0x8000000000000000
	mov	rcx, qword ptr [rbp - 0x258]
	cqo	
	idiv	qword ptr [rcx]
	mov	rcx, qword ptr [rbp - 0x258]
	mov	rbp, rbp
	cmp	rax, qword ptr [rcx - 0x30]
	jl	.label_543
	jmp	.label_1039
.label_1015:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x258]
	cmp	qword ptr [rax], 0
	lea	rdi, [rdi]
	jne	.label_1062
	xor	eax, eax
	mov	cl, al
	lea	rdi, [rdi]
	test	cl, 1
	jne	.label_543
	mov	rsp, rsp
	jmp	.label_1039
.label_1062:
	mov	rax, qword ptr [rbp - 0x258]
	nop	
	cmp	qword ptr [rax - 0x30], 0
	jge	.label_1076
	movabs	rax, 0x8000000000000000
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x258]
	mov	rcx, qword ptr [rcx - 0x30]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x258]
	mov	qword ptr [rbp - 0x580], rdx
	mov	rsp, rsp
	cqo	
	mov	rsi, qword ptr [rbp - 0x580]
	idiv	qword ptr [rsi]
	lea	rsi, [rsi]
	cmp	rcx, rax
	lea	rsi, [rsi]
	jl	.label_543
	jmp	.label_1039
.label_1076:
	movabs	rax, 0x7fffffffffffffff
	mov	rcx, qword ptr [rbp - 0x258]
	mov	rsp, rsp
	cqo	
	mov	rbp, rbp
	idiv	qword ptr [rcx]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x258]
	cmp	rax, qword ptr [rcx - 0x30]
	lea	rsi, [rsi]
	jl	.label_543
.label_1039:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x258]
	mov	rbp, rbp
	mov	rax, qword ptr [rax - 0x30]
	mov	rcx, qword ptr [rbp - 0x258]
	imul	rax, qword ptr [rcx]
	cmp	rax, -0x80000000
	nop	
	jl	.label_543
	mov	rsp, rsp
	mov	eax, 0x7fffffff
	lea	rsi, [rsi]
	mov	ecx, eax
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x258]
	mov	rsp, rsp
	mov	rdx, qword ptr [rdx - 0x30]
	mov	rsi, qword ptr [rbp - 0x258]
	imul	rdx, qword ptr [rsi]
	cmp	rcx, rdx
	jge	.label_1122
.label_543:
	mov	al, 1
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x258]
	mov	rcx, qword ptr [rcx - 0x30]
	lea	rsi, [rsi]
	mov	edx, ecx
	mov	rcx, qword ptr [rbp - 0x258]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rcx]
	mov	esi, ecx
	lea	rdi, [rdi]
	imul	edx, esi
	mov	rbp, rbp
	movsxd	rcx, edx
	mov	qword ptr [rbp - 0x290], rcx
	lea	rdi, [rdi]
	test	al, 1
	jne	.label_266
	jmp	.label_180
.label_1122:
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x258]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rdx - 0x30]
	mov	eax, edx
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x258]
	mov	rdx, qword ptr [rdx]
	mov	rbp, rbp
	mov	esi, edx
	lea	rsi, [rsi]
	imul	eax, esi
	movsxd	rdx, eax
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x290], rdx
.label_5200:
	nop	
	test	cl, 1
	jne	.label_266
	lea	rdi, [rdi]
	jmp	.label_180
.label_846:
	mov	al, 1
	lea	rdi, [rdi]
	test	al, 1
	lea	rsi, [rsi]
	jne	.label_200
	jmp	.label_153
.label_200:
	mov	rbp, rbp
	xor	eax, eax
	mov	rbp, rbp
	mov	cl, al
	mov	rbp, rbp
	test	cl, 1
	jne	.label_156
	jmp	.label_170
.label_156:
	mov	rax, qword ptr [rbp - 0x258]
	mov	rbp, rbp
	cmp	qword ptr [rax], 0
	jge	.label_172
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x258]
	nop	
	cmp	qword ptr [rax - 0x30], 0
	mov	rsp, rsp
	jge	.label_321
	movabs	rax, 0x7fffffffffffffff
	nop	
	mov	rcx, qword ptr [rbp - 0x258]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rcx - 0x30]
	mov	rdx, qword ptr [rbp - 0x258]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0xd30], rdx
	nop	
	cqo	
	mov	rsi, qword ptr [rbp - 0xd30]
	lea	rdi, [rdi]
	idiv	qword ptr [rsi]
	lea	rdi, [rdi]
	cmp	rcx, rax
	jl	.label_235
	mov	rsp, rsp
	jmp	.label_222
.label_321:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x258]
	mov	rsp, rsp
	cmp	qword ptr [rax], -1
	lea	rsi, [rsi]
	jne	.label_486
	lea	rdi, [rdi]
	xor	eax, eax
	nop	
	mov	cl, al
	test	cl, 1
	jne	.label_235
	jmp	.label_222
.label_486:
	nop	
	movabs	rax, 0x8000000000000000
	mov	rcx, qword ptr [rbp - 0x258]
	cqo	
	lea	rdi, [rdi]
	idiv	qword ptr [rcx]
	mov	rcx, qword ptr [rbp - 0x258]
	cmp	rax, qword ptr [rcx - 0x30]
	jl	.label_235
	jmp	.label_222
.label_172:
	mov	rax, qword ptr [rbp - 0x258]
	cmp	qword ptr [rax], 0
	jne	.label_259
	mov	rbp, rbp
	xor	eax, eax
	lea	rdi, [rdi]
	mov	cl, al
	mov	rsp, rsp
	test	cl, 1
	jne	.label_235
	jmp	.label_222
.label_259:
	mov	rax, qword ptr [rbp - 0x258]
	cmp	qword ptr [rax - 0x30], 0
	mov	rsp, rsp
	jge	.label_268
	lea	rdi, [rdi]
	movabs	rax, 0x8000000000000000
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x258]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rcx - 0x30]
	mov	rdx, qword ptr [rbp - 0x258]
	mov	qword ptr [rbp - 0xc58], rdx
	lea	rdi, [rdi]
	cqo	
	nop	
	mov	rsi, qword ptr [rbp - 0xc58]
	idiv	qword ptr [rsi]
	mov	rsp, rsp
	cmp	rcx, rax
	lea	rdi, [rdi]
	jl	.label_235
	jmp	.label_222
.label_268:
	movabs	rax, 0x7fffffffffffffff
	mov	rcx, qword ptr [rbp - 0x258]
	cqo	
	lea	rdi, [rdi]
	idiv	qword ptr [rcx]
	mov	rcx, qword ptr [rbp - 0x258]
	cmp	rax, qword ptr [rcx - 0x30]
	jl	.label_235
.label_222:
	movabs	rax, 0x8000000000000000
	mov	rcx, qword ptr [rbp - 0x258]
	mov	rcx, qword ptr [rcx - 0x30]
	mov	rdx, qword ptr [rbp - 0x258]
	imul	rcx, qword ptr [rdx]
	cmp	rcx, rax
	jl	.label_235
	movabs	rax, 0x7fffffffffffffff
	mov	rcx, qword ptr [rbp - 0x258]
	mov	rcx, qword ptr [rcx - 0x30]
	mov	rdx, qword ptr [rbp - 0x258]
	mov	rsp, rsp
	imul	rcx, qword ptr [rdx]
	lea	rdi, [rdi]
	cmp	rax, rcx
	mov	rbp, rbp
	jge	.label_313
.label_235:
	mov	al, 1
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x258]
	mov	rcx, qword ptr [rcx - 0x30]
	mov	rdx, qword ptr [rbp - 0x258]
	lea	rdi, [rdi]
	imul	rcx, qword ptr [rdx]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x290], rcx
	mov	rbp, rbp
	test	al, 1
	jne	.label_266
	mov	rsp, rsp
	jmp	.label_180
.label_313:
	xor	eax, eax
	mov	cl, al
	nop	
	mov	rdx, qword ptr [rbp - 0x258]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rdx - 0x30]
	mov	rsi, qword ptr [rbp - 0x258]
	mov	rsp, rsp
	imul	rdx, qword ptr [rsi]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x290], rdx
	mov	rsp, rsp
	test	cl, 1
	jne	.label_266
	mov	rsp, rsp
	jmp	.label_180
.label_170:
	mov	rax, qword ptr [rbp - 0x258]
	lea	rdi, [rdi]
	cmp	qword ptr [rax], 0
	jge	.label_362
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x258]
	lea	rsi, [rsi]
	cmp	qword ptr [rax - 0x30], 0
	mov	rbp, rbp
	jge	.label_368
	movabs	rax, 0x7fffffffffffffff
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x258]
	mov	rcx, qword ptr [rcx - 0x30]
	mov	rdx, qword ptr [rbp - 0x258]
	nop	
	mov	qword ptr [rbp - 0xcc8], rdx
	cqo	
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0xcc8]
	idiv	qword ptr [rsi]
	lea	rdi, [rdi]
	cmp	rcx, rax
	lea	rdi, [rdi]
	jl	.label_376
	mov	rbp, rbp
	jmp	.label_375
.label_368:
	mov	rax, qword ptr [rbp - 0x258]
	nop	
	cmp	qword ptr [rax], -1
	jne	.label_538
	xor	eax, eax
	mov	cl, al
	lea	rsi, [rsi]
	test	cl, 1
	nop	
	jne	.label_376
	jmp	.label_375
.label_538:
	lea	rdi, [rdi]
	movabs	rax, 0x8000000000000000
	mov	rcx, qword ptr [rbp - 0x258]
	cqo	
	mov	rbp, rbp
	idiv	qword ptr [rcx]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x258]
	lea	rdi, [rdi]
	cmp	rax, qword ptr [rcx - 0x30]
	jl	.label_376
	nop	
	jmp	.label_375
.label_362:
	mov	rax, qword ptr [rbp - 0x258]
	mov	rbp, rbp
	cmp	qword ptr [rax], 0
	jne	.label_414
	lea	rdi, [rdi]
	xor	eax, eax
	lea	rsi, [rsi]
	mov	cl, al
	lea	rsi, [rsi]
	test	cl, 1
	jne	.label_376
	nop	
	jmp	.label_375
.label_414:
	mov	rax, qword ptr [rbp - 0x258]
	mov	rbp, rbp
	cmp	qword ptr [rax - 0x30], 0
	lea	rdi, [rdi]
	jge	.label_617
	movabs	rax, 0x8000000000000000
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x258]
	mov	rbp, rbp
	mov	rcx, qword ptr [rcx - 0x30]
	mov	rdx, qword ptr [rbp - 0x258]
	mov	qword ptr [rbp - 0x340], rdx
	cqo	
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x340]
	mov	rsp, rsp
	idiv	qword ptr [rsi]
	lea	rsi, [rsi]
	cmp	rcx, rax
	mov	rbp, rbp
	jl	.label_376
	lea	rdi, [rdi]
	jmp	.label_375
.label_617:
	mov	rsp, rsp
	movabs	rax, 0x7fffffffffffffff
	mov	rcx, qword ptr [rbp - 0x258]
	cqo	
	idiv	qword ptr [rcx]
	mov	rcx, qword ptr [rbp - 0x258]
	mov	rsp, rsp
	cmp	rax, qword ptr [rcx - 0x30]
	jl	.label_376
.label_375:
	movabs	rax, 0x8000000000000000
	mov	rcx, qword ptr [rbp - 0x258]
	mov	rcx, qword ptr [rcx - 0x30]
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x258]
	lea	rsi, [rsi]
	imul	rcx, qword ptr [rdx]
	cmp	rcx, rax
	jl	.label_376
	lea	rsi, [rsi]
	movabs	rax, 0x7fffffffffffffff
	mov	rcx, qword ptr [rbp - 0x258]
	mov	rbp, rbp
	mov	rcx, qword ptr [rcx - 0x30]
	mov	rdx, qword ptr [rbp - 0x258]
	imul	rcx, qword ptr [rdx]
	lea	rdi, [rdi]
	cmp	rax, rcx
	jge	.label_484
.label_376:
	mov	al, 1
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x258]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rcx - 0x30]
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x258]
	imul	rcx, qword ptr [rdx]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x290], rcx
	test	al, 1
	jne	.label_266
	mov	rbp, rbp
	jmp	.label_180
.label_484:
	lea	rsi, [rsi]
	xor	eax, eax
	lea	rsi, [rsi]
	mov	cl, al
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x258]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rdx - 0x30]
	mov	rsi, qword ptr [rbp - 0x258]
	imul	rdx, qword ptr [rsi]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x290], rdx
	lea	rsi, [rsi]
	test	cl, 1
	jne	.label_266
	nop	
	jmp	.label_180
.label_153:
	mov	rsp, rsp
	xor	eax, eax
	mov	rbp, rbp
	mov	cl, al
	test	cl, 1
	lea	rdi, [rdi]
	jne	.label_537
	jmp	.label_541
.label_537:
	mov	rax, qword ptr [rbp - 0x258]
	mov	rsp, rsp
	cmp	qword ptr [rax], 0
	nop	
	jge	.label_542
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x258]
	cmp	qword ptr [rax - 0x30], 0
	jge	.label_549
	mov	rsp, rsp
	movabs	rax, 0x7fffffffffffffff
	mov	rcx, qword ptr [rbp - 0x258]
	mov	rbp, rbp
	mov	rcx, qword ptr [rcx - 0x30]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x258]
	mov	qword ptr [rbp - 0xb8], rdx
	cqo	
	mov	rsi, qword ptr [rbp - 0xb8]
	nop	
	idiv	qword ptr [rsi]
	mov	rsp, rsp
	cmp	rcx, rax
	jl	.label_418
	jmp	.label_556
.label_549:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x258]
	cmp	qword ptr [rax], -1
	jne	.label_566
	xor	eax, eax
	mov	rbp, rbp
	mov	cl, al
	nop	
	test	cl, 1
	lea	rdi, [rdi]
	jne	.label_418
	jmp	.label_556
.label_566:
	movabs	rax, 0x8000000000000000
	mov	rcx, qword ptr [rbp - 0x258]
	cqo	
	mov	rbp, rbp
	idiv	qword ptr [rcx]
	mov	rcx, qword ptr [rbp - 0x258]
	nop	
	cmp	rax, qword ptr [rcx - 0x30]
	mov	rbp, rbp
	jl	.label_418
	jmp	.label_556
.label_542:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x258]
	lea	rdi, [rdi]
	cmp	qword ptr [rax], 0
	jne	.label_592
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	lea	rsi, [rsi]
	jne	.label_418
	jmp	.label_556
.label_592:
	mov	rax, qword ptr [rbp - 0x258]
	cmp	qword ptr [rax - 0x30], 0
	mov	rbp, rbp
	jge	.label_608
	movabs	rax, 0x8000000000000000
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x258]
	mov	rcx, qword ptr [rcx - 0x30]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x258]
	mov	qword ptr [rbp - 0x4f8], rdx
	mov	rbp, rbp
	cqo	
	mov	rsi, qword ptr [rbp - 0x4f8]
	lea	rsi, [rsi]
	idiv	qword ptr [rsi]
	cmp	rcx, rax
	lea	rdi, [rdi]
	jl	.label_418
	jmp	.label_556
.label_608:
	lea	rsi, [rsi]
	movabs	rax, 0x7fffffffffffffff
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x258]
	cqo	
	lea	rsi, [rsi]
	idiv	qword ptr [rcx]
	mov	rcx, qword ptr [rbp - 0x258]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rcx - 0x30]
	nop	
	jl	.label_418
.label_556:
	mov	rbp, rbp
	movabs	rax, 0x8000000000000000
	mov	rcx, qword ptr [rbp - 0x258]
	mov	rcx, qword ptr [rcx - 0x30]
	mov	rdx, qword ptr [rbp - 0x258]
	mov	rbp, rbp
	imul	rcx, qword ptr [rdx]
	mov	rsp, rsp
	cmp	rcx, rax
	jl	.label_418
	movabs	rax, 0x7fffffffffffffff
	mov	rcx, qword ptr [rbp - 0x258]
	mov	rcx, qword ptr [rcx - 0x30]
	mov	rdx, qword ptr [rbp - 0x258]
	mov	rsp, rsp
	imul	rcx, qword ptr [rdx]
	mov	rbp, rbp
	cmp	rax, rcx
	jge	.label_649
.label_418:
	mov	al, 1
	mov	rcx, qword ptr [rbp - 0x258]
	mov	rsp, rsp
	mov	rcx, qword ptr [rcx - 0x30]
	mov	rdx, qword ptr [rbp - 0x258]
	lea	rsi, [rsi]
	imul	rcx, qword ptr [rdx]
	mov	qword ptr [rbp - 0x290], rcx
	test	al, 1
	jne	.label_266
	nop	
	jmp	.label_180
.label_649:
	lea	rsi, [rsi]
	xor	eax, eax
	nop	
	mov	cl, al
	nop	
	mov	rdx, qword ptr [rbp - 0x258]
	mov	rdx, qword ptr [rdx - 0x30]
	nop	
	mov	rsi, qword ptr [rbp - 0x258]
	imul	rdx, qword ptr [rsi]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x290], rdx
	lea	rdi, [rdi]
	test	cl, 1
	lea	rsi, [rsi]
	jne	.label_266
	mov	rsp, rsp
	jmp	.label_180
.label_541:
	mov	rax, qword ptr [rbp - 0x258]
	lea	rdi, [rdi]
	cmp	qword ptr [rax], 0
	jge	.label_678
	mov	rax, qword ptr [rbp - 0x258]
	cmp	qword ptr [rax - 0x30], 0
	mov	rsp, rsp
	jge	.label_682
	movabs	rax, 0x7fffffffffffffff
	mov	rcx, qword ptr [rbp - 0x258]
	mov	rcx, qword ptr [rcx - 0x30]
	mov	rdx, qword ptr [rbp - 0x258]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x260], rdx
	cqo	
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x260]
	nop	
	idiv	qword ptr [rsi]
	mov	rbp, rbp
	cmp	rcx, rax
	mov	rsp, rsp
	jl	.label_524
	nop	
	jmp	.label_707
.label_682:
	mov	rax, qword ptr [rbp - 0x258]
	cmp	qword ptr [rax], -1
	nop	
	jne	.label_709
	mov	rsp, rsp
	xor	eax, eax
	mov	rbp, rbp
	mov	cl, al
	test	cl, 1
	lea	rsi, [rsi]
	jne	.label_524
	jmp	.label_707
.label_709:
	movabs	rax, 0x8000000000000000
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x258]
	lea	rsi, [rsi]
	cqo	
	idiv	qword ptr [rcx]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x258]
	cmp	rax, qword ptr [rcx - 0x30]
	lea	rsi, [rsi]
	jl	.label_524
	jmp	.label_707
.label_678:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x258]
	cmp	qword ptr [rax], 0
	lea	rdi, [rdi]
	jne	.label_731
	lea	rdi, [rdi]
	xor	eax, eax
	mov	rbp, rbp
	mov	cl, al
	test	cl, 1
	jne	.label_524
	jmp	.label_707
.label_731:
	nop	
	mov	rax, qword ptr [rbp - 0x258]
	cmp	qword ptr [rax - 0x30], 0
	nop	
	jge	.label_742
	lea	rsi, [rsi]
	movabs	rax, 0x8000000000000000
	mov	rcx, qword ptr [rbp - 0x258]
	mov	rbp, rbp
	mov	rcx, qword ptr [rcx - 0x30]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x258]
	mov	qword ptr [rbp - 0xcf0], rdx
	cqo	
	mov	rsi, qword ptr [rbp - 0xcf0]
	mov	rbp, rbp
	idiv	qword ptr [rsi]
	cmp	rcx, rax
	mov	rsp, rsp
	jl	.label_524
	jmp	.label_707
.label_742:
	nop	
	movabs	rax, 0x7fffffffffffffff
	mov	rcx, qword ptr [rbp - 0x258]
	cqo	
	idiv	qword ptr [rcx]
	mov	rcx, qword ptr [rbp - 0x258]
	nop	
	cmp	rax, qword ptr [rcx - 0x30]
	nop	
	jl	.label_524
.label_707:
	mov	rsp, rsp
	movabs	rax, 0x8000000000000000
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x258]
	mov	rcx, qword ptr [rcx - 0x30]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x258]
	lea	rsi, [rsi]
	imul	rcx, qword ptr [rdx]
	nop	
	cmp	rcx, rax
	jl	.label_524
	movabs	rax, 0x7fffffffffffffff
	mov	rcx, qword ptr [rbp - 0x258]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rcx - 0x30]
	mov	rdx, qword ptr [rbp - 0x258]
	imul	rcx, qword ptr [rdx]
	cmp	rax, rcx
	jge	.label_790
.label_524:
	lea	rsi, [rsi]
	mov	al, 1
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x258]
	mov	rcx, qword ptr [rcx - 0x30]
	mov	rdx, qword ptr [rbp - 0x258]
	imul	rcx, qword ptr [rdx]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x290], rcx
	lea	rsi, [rsi]
	test	al, 1
	mov	rsp, rsp
	jne	.label_266
	jmp	.label_180
.label_790:
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x258]
	mov	rsp, rsp
	mov	rdx, qword ptr [rdx - 0x30]
	mov	rsi, qword ptr [rbp - 0x258]
	imul	rdx, qword ptr [rsi]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x290], rdx
	nop	
	test	cl, 1
	mov	rbp, rbp
	jne	.label_266
	jmp	.label_180
.label_266:
	jmp	.label_146
.label_180:
	jmp	.label_148
.label_5156:
	mov	eax, 0x38
	mov	rsp, rsp
	mov	edx, eax
	lea	rcx, [rbp - 0x688]
	lea	rsi, [rsi]
	lea	rsi, [rbp - 0x2a0]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x688], 0
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x680], 0
	mov	qword ptr [rbp - 0x678], 0
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x670], 0
	mov	qword ptr [rbp - 0x668], 0
	mov	qword ptr [rbp - 0x660], 0
	mov	dword ptr [rbp - 0x658], 0
	mov	rdi, rsi
	mov	rsi, rcx
	mov	rbp, rbp
	call	memcpy
	mov	rcx, qword ptr [rbp - 0x258]
	mov	rcx, qword ptr [rcx]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x290], rcx
	mov	rbp, rbp
	jmp	.label_148
.label_5157:
	mov	rsp, rsp
	mov	eax, 0x38
	mov	rbp, rbp
	mov	edx, eax
	nop	
	lea	rcx, [rbp - 0x178]
	nop	
	lea	rsi, [rbp - 0x2a0]
	mov	qword ptr [rbp - 0x178], 0
	nop	
	mov	qword ptr [rbp - 0x170], 0
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x168], 0
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x160], 0
	mov	qword ptr [rbp - 0x158], 0
	mov	qword ptr [rbp - 0x150], 0
	mov	dword ptr [rbp - 0x148], 0
	lea	rdi, [rdi]
	mov	rdi, rsi
	lea	rdi, [rdi]
	mov	rsi, rcx
	call	memcpy
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x258]
	mov	rcx, qword ptr [rcx - 0x38]
	mov	qword ptr [rbp - 0x288], rcx
	jmp	.label_148
.label_5158:
	nop	
	mov	eax, 0x38
	lea	rdi, [rdi]
	mov	edx, eax
	lea	rcx, [rbp - 0x70]
	mov	rbp, rbp
	lea	rsi, [rbp - 0x2a0]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x70], 0
	mov	qword ptr [rbp - 0x68], 0
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x60], 0
	mov	qword ptr [rbp - 0x58], 0
	mov	qword ptr [rbp - 0x50], 0
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x48], 0
	mov	dword ptr [rbp - 0x40], 0
	mov	rbp, rbp
	mov	rdi, rsi
	nop	
	mov	rsi, rcx
	call	memcpy
	mov	rcx, qword ptr [rbp - 0x258]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rcx - 0x30]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x288], rcx
	mov	rsp, rsp
	jmp	.label_148
.label_5159:
	mov	rsp, rsp
	mov	eax, 0x38
	lea	rdi, [rdi]
	mov	edx, eax
	lea	rdi, [rdi]
	lea	rcx, [rbp - 0x570]
	mov	rbp, rbp
	lea	rsi, [rbp - 0x2a0]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x570], 0
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x568], 0
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x560], 0
	nop	
	mov	qword ptr [rbp - 0x558], 0
	mov	qword ptr [rbp - 0x550], 0
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x548], 0
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x540], 0
	lea	rdi, [rdi]
	mov	rdi, rsi
	lea	rsi, [rsi]
	mov	rsi, rcx
	lea	rsi, [rsi]
	call	memcpy
	mov	qword ptr [rbp - 0x288], 1
	jmp	.label_148
.label_5160:
	mov	eax, 0x38
	mov	edx, eax
	lea	rcx, [rbp - 0xd28]
	lea	rsi, [rbp - 0x2a0]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0xd28], 0
	mov	qword ptr [rbp - 0xd20], 0
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0xd18], 0
	mov	qword ptr [rbp - 0xd10], 0
	mov	rbp, rbp
	mov	qword ptr [rbp - 0xd08], 0
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0xd00], 0
	mov	rbp, rbp
	mov	dword ptr [rbp - 0xcf8], 0
	mov	rdi, rsi
	mov	rsi, rcx
	call	memcpy
	mov	rcx, qword ptr [rbp - 0x258]
	mov	rcx, qword ptr [rcx - 0x38]
	nop	
	mov	qword ptr [rbp - 0x280], rcx
	mov	rbp, rbp
	jmp	.label_148
.label_5161:
	mov	rbp, rbp
	mov	eax, 0x38
	mov	rbp, rbp
	mov	edx, eax
	mov	rsp, rsp
	lea	rcx, [rbp - 0xc28]
	nop	
	lea	rsi, [rbp - 0x2a0]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0xc28], 0
	mov	rsp, rsp
	mov	qword ptr [rbp - 0xc20], 0
	nop	
	mov	qword ptr [rbp - 0xc18], 0
	mov	qword ptr [rbp - 0xc10], 0
	mov	qword ptr [rbp - 0xc08], 0
	mov	qword ptr [rbp - 0xc00], 0
	mov	dword ptr [rbp - 0xbf8], 0
	mov	rdi, rsi
	mov	rsi, rcx
	mov	rbp, rbp
	call	memcpy
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x258]
	mov	rcx, qword ptr [rcx - 0x30]
	mov	qword ptr [rbp - 0x280], rcx
	lea	rdi, [rdi]
	jmp	.label_148
.label_5162:
	mov	eax, 0x38
	nop	
	mov	edx, eax
	mov	rsp, rsp
	lea	rcx, [rbp - 0x3b8]
	lea	rsi, [rbp - 0x2a0]
	mov	qword ptr [rbp - 0x3b8], 0
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x3b0], 0
	mov	qword ptr [rbp - 0x3a8], 0
	mov	qword ptr [rbp - 0x3a0], 0
	mov	qword ptr [rbp - 0x398], 0
	mov	qword ptr [rbp - 0x390], 0
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x388], 0
	mov	rbp, rbp
	mov	rdi, rsi
	lea	rsi, [rsi]
	mov	rsi, rcx
	call	memcpy
	nop	
	mov	qword ptr [rbp - 0x280], 1
	jmp	.label_148
.label_5163:
	mov	eax, 0x38
	mov	edx, eax
	lea	rdi, [rdi]
	lea	rcx, [rbp - 0x2e0]
	lea	rsi, [rbp - 0x2a0]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x2e0], 0
	mov	qword ptr [rbp - 0x2d8], 0
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x2d0], 0
	mov	qword ptr [rbp - 0x2c8], 0
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x2c0], 0
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x2b8], 0
	mov	dword ptr [rbp - 0x2b0], 0
	mov	rdi, rsi
	mov	rsi, rcx
	call	memcpy
	mov	rcx, qword ptr [rbp - 0x258]
	nop	
	mov	rcx, qword ptr [rcx - 0x38]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x278], rcx
	lea	rsi, [rsi]
	jmp	.label_148
.label_5164:
	mov	eax, 0x38
	mov	edx, eax
	lea	rcx, [rbp - 0x458]
	mov	rbp, rbp
	lea	rsi, [rbp - 0x2a0]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x458], 0
	mov	qword ptr [rbp - 0x450], 0
	mov	qword ptr [rbp - 0x448], 0
	mov	qword ptr [rbp - 0x440], 0
	nop	
	mov	qword ptr [rbp - 0x438], 0
	mov	qword ptr [rbp - 0x430], 0
	nop	
	mov	dword ptr [rbp - 0x428], 0
	mov	rdi, rsi
	mov	rsi, rcx
	call	memcpy
	nop	
	mov	rcx, qword ptr [rbp - 0x258]
	mov	rcx, qword ptr [rcx - 0x30]
	nop	
	mov	qword ptr [rbp - 0x278], rcx
	jmp	.label_148
.label_5165:
	mov	eax, 0x38
	mov	rsp, rsp
	mov	edx, eax
	lea	rcx, [rbp - 0x1b0]
	mov	rbp, rbp
	lea	rsi, [rbp - 0x2a0]
	mov	qword ptr [rbp - 0x1b0], 0
	mov	qword ptr [rbp - 0x1a8], 0
	mov	qword ptr [rbp - 0x1a0], 0
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x198], 0
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x190], 0
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x188], 0
	mov	dword ptr [rbp - 0x180], 0
	mov	rdi, rsi
	mov	rsi, rcx
	nop	
	call	memcpy
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x258]
	nop	
	mov	rcx, qword ptr [rcx - 0x38]
	mov	qword ptr [rbp - 0x278], rcx
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x258]
	mov	rsp, rsp
	mov	rcx, qword ptr [rcx - 0x30]
	lea	rsi, [rsi]
	mov	eax, ecx
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x270], eax
	jmp	.label_148
.label_5166:
	mov	eax, 0x38
	mov	edx, eax
	lea	rdi, [rdi]
	lea	rcx, [rbp - 0x318]
	lea	rsi, [rbp - 0x2a0]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x318], 0
	mov	qword ptr [rbp - 0x310], 0
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x308], 0
	mov	qword ptr [rbp - 0x300], 0
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x2f8], 0
	nop	
	mov	qword ptr [rbp - 0x2f0], 0
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x2e8], 0
	lea	rdi, [rdi]
	mov	rdi, rsi
	mov	rsp, rsp
	mov	rsi, rcx
	call	memcpy
	mov	rcx, qword ptr [rbp - 0x258]
	mov	rbp, rbp
	mov	rcx, qword ptr [rcx - 0x38]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x278], rcx
	mov	rcx, qword ptr [rbp - 0x258]
	mov	rbp, rbp
	mov	rcx, qword ptr [rcx - 0x30]
	lea	rdi, [rdi]
	mov	eax, ecx
	mov	dword ptr [rbp - 0x270], eax
	jmp	.label_148
.label_5167:
	mov	rsp, rsp
	mov	eax, 0x38
	mov	rsp, rsp
	mov	edx, eax
	lea	rcx, [rbp - 0x6c8]
	lea	rsi, [rsi]
	lea	rsi, [rbp - 0x2a0]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x6c8], 0
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x6c0], 0
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x6b8], 0
	mov	qword ptr [rbp - 0x6b0], 0
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x6a8], 0
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x6a0], 0
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x698], 0
	mov	rdi, rsi
	mov	rsi, rcx
	call	memcpy
	mov	qword ptr [rbp - 0x278], 1
	mov	rbp, rbp
	jmp	.label_148
.label_5168:
	lea	rdi, [rdi]
	mov	eax, 0x38
	mov	edx, eax
	lea	rcx, [rbp - 0x530]
	nop	
	lea	rsi, [rbp - 0x2a0]
	mov	qword ptr [rbp - 0x530], 0
	mov	qword ptr [rbp - 0x528], 0
	mov	qword ptr [rbp - 0x520], 0
	mov	qword ptr [rbp - 0x518], 0
	mov	qword ptr [rbp - 0x510], 0
	mov	qword ptr [rbp - 0x508], 0
	mov	dword ptr [rbp - 0x500], 0
	mov	rsp, rsp
	mov	rdi, rsi
	lea	rdi, [rdi]
	mov	rsi, rcx
	call	memcpy
	mov	rcx, qword ptr [rbp - 0x258]
	mov	rcx, qword ptr [rcx - 0x30]
	mov	qword ptr [rbp - 0x2a0], rcx
	jmp	.label_148
.label_5169:
	lea	rdi, [rdi]
	mov	eax, 0x38
	mov	edx, eax
	nop	
	lea	rcx, [rbp - 0xca8]
	mov	rsp, rsp
	lea	rsi, [rbp - 0x2a0]
	nop	
	mov	qword ptr [rbp - 0xca8], 0
	mov	qword ptr [rbp - 0xca0], 0
	mov	qword ptr [rbp - 0xc98], 0
	mov	qword ptr [rbp - 0xc90], 0
	mov	qword ptr [rbp - 0xc88], 0
	mov	qword ptr [rbp - 0xc80], 0
	nop	
	mov	dword ptr [rbp - 0xc78], 0
	lea	rdi, [rdi]
	mov	rdi, rsi
	lea	rsi, [rsi]
	mov	rsi, rcx
	mov	rbp, rbp
	call	memcpy
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x258]
	mov	rcx, qword ptr [rcx - 0x30]
	mov	qword ptr [rbp - 0x298], rcx
	lea	rsi, [rsi]
	jmp	.label_148
.label_5170:
	xor	eax, eax
	lea	rsi, [rsi]
	mov	cl, al
	mov	rbp, rbp
	mov	eax, 0x38
	mov	edx, eax
	lea	rsi, [rbp - 0xd70]
	lea	rdi, [rbp - 0x2a0]
	mov	qword ptr [rbp - 0xd70], 0
	mov	qword ptr [rbp - 0xd68], 0
	mov	qword ptr [rbp - 0xd60], 0
	mov	qword ptr [rbp - 0xd58], 0
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0xd50], 0
	mov	qword ptr [rbp - 0xd48], 0
	mov	rbp, rbp
	mov	dword ptr [rbp - 0xd40], 0
	mov	byte ptr [rbp - 0xcad], cl
	call	memcpy
	lea	rsi, [rsi]
	mov	cl, byte ptr [rbp - 0xcad]
	test	cl, 1
	nop	
	jne	.label_388
	jmp	.label_690
.label_388:
	xor	eax, eax
	nop	
	mov	cl, al
	nop	
	test	cl, 1
	jne	.label_395
	jmp	.label_399
.label_395:
	mov	rax, qword ptr [rbp - 0x258]
	mov	rax, qword ptr [rax]
	lea	rsi, [rsi]
	mov	cl, al
	movsx	edx, cl
	cmp	edx, 0
	jge	.label_400
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x258]
	mov	rax, qword ptr [rax - 0x30]
	lea	rsi, [rsi]
	mov	cl, al
	movsx	edx, cl
	nop	
	cmp	edx, 0
	mov	rbp, rbp
	jge	.label_462
	nop	
	mov	eax, 0x7fffffff
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x258]
	mov	rcx, qword ptr [rcx - 0x30]
	mov	dl, cl
	movsx	esi, dl
	mov	rcx, qword ptr [rbp - 0x258]
	mov	rcx, qword ptr [rcx]
	mov	dl, cl
	movsx	edi, dl
	nop	
	cdq	
	idiv	edi
	mov	rbp, rbp
	cmp	esi, eax
	mov	rbp, rbp
	jl	.label_413
	jmp	.label_426
.label_462:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x258]
	mov	rbp, rbp
	mov	rax, qword ptr [rax]
	mov	cl, al
	movsx	edx, cl
	cmp	edx, -1
	jne	.label_429
	xor	eax, eax
	mov	cl, al
	mov	rbp, rbp
	test	cl, 1
	jne	.label_413
	mov	rsp, rsp
	jmp	.label_426
.label_429:
	nop	
	mov	eax, 0x80000000
	mov	rcx, qword ptr [rbp - 0x258]
	mov	rsp, rsp
	mov	rcx, qword ptr [rcx]
	mov	dl, cl
	movsx	esi, dl
	nop	
	cdq	
	nop	
	idiv	esi
	mov	rcx, qword ptr [rbp - 0x258]
	mov	rcx, qword ptr [rcx - 0x30]
	lea	rsi, [rsi]
	mov	dil, cl
	movsx	esi, dil
	cmp	eax, esi
	jl	.label_413
	jmp	.label_426
.label_400:
	mov	rax, qword ptr [rbp - 0x258]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax]
	mov	cl, al
	lea	rdi, [rdi]
	movsx	edx, cl
	mov	rbp, rbp
	cmp	edx, 0
	mov	rsp, rsp
	jne	.label_457
	xor	eax, eax
	mov	cl, al
	mov	rbp, rbp
	test	cl, 1
	jne	.label_413
	jmp	.label_426
.label_457:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x258]
	mov	rax, qword ptr [rax - 0x30]
	mov	rsp, rsp
	mov	cl, al
	mov	rbp, rbp
	movsx	edx, cl
	mov	rsp, rsp
	cmp	edx, 0
	jge	.label_862
	mov	eax, 0x80000000
	mov	rcx, qword ptr [rbp - 0x258]
	mov	rcx, qword ptr [rcx - 0x30]
	nop	
	mov	dl, cl
	movsx	esi, dl
	mov	rcx, qword ptr [rbp - 0x258]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rcx]
	mov	dl, cl
	mov	rbp, rbp
	movsx	edi, dl
	lea	rdi, [rdi]
	cdq	
	mov	rbp, rbp
	idiv	edi
	cmp	esi, eax
	nop	
	jl	.label_413
	jmp	.label_426
.label_862:
	mov	eax, 0x7fffffff
	mov	rcx, qword ptr [rbp - 0x258]
	nop	
	mov	rcx, qword ptr [rcx]
	mov	dl, cl
	movsx	esi, dl
	cdq	
	idiv	esi
	nop	
	mov	rcx, qword ptr [rbp - 0x258]
	mov	rcx, qword ptr [rcx - 0x30]
	mov	rbp, rbp
	mov	dil, cl
	lea	rsi, [rsi]
	movsx	esi, dil
	cmp	eax, esi
	nop	
	jl	.label_413
.label_426:
	mov	rax, qword ptr [rbp - 0x258]
	mov	rax, qword ptr [rax - 0x30]
	mov	cl, al
	mov	rbp, rbp
	movsx	edx, cl
	mov	rax, qword ptr [rbp - 0x258]
	mov	rax, qword ptr [rax]
	mov	rbp, rbp
	mov	cl, al
	lea	rdi, [rdi]
	movsx	esi, cl
	lea	rdi, [rdi]
	imul	edx, esi
	cmp	edx, -0x80
	jl	.label_413
	lea	rsi, [rsi]
	mov	eax, 0x7f
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x258]
	mov	rcx, qword ptr [rcx - 0x30]
	mov	rbp, rbp
	mov	dl, cl
	mov	rbp, rbp
	movsx	esi, dl
	mov	rcx, qword ptr [rbp - 0x258]
	mov	rbp, rbp
	mov	rcx, qword ptr [rcx]
	mov	rbp, rbp
	mov	dl, cl
	nop	
	movsx	edi, dl
	lea	rsi, [rsi]
	imul	esi, edi
	mov	rbp, rbp
	cmp	eax, esi
	jge	.label_481
.label_413:
	mov	al, 1
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x258]
	mov	rcx, qword ptr [rcx - 0x30]
	mov	dl, cl
	lea	rsi, [rsi]
	movsx	esi, dl
	mov	rcx, qword ptr [rbp - 0x258]
	mov	rcx, qword ptr [rcx]
	lea	rsi, [rsi]
	mov	dl, cl
	nop	
	movsx	edi, dl
	imul	esi, edi
	mov	dl, sil
	nop	
	movsx	rcx, dl
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x290], rcx
	test	al, 1
	jne	.label_250
	lea	rsi, [rsi]
	jmp	.label_267
.label_481:
	xor	eax, eax
	nop	
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x258]
	mov	rdx, qword ptr [rdx - 0x30]
	nop	
	mov	sil, dl
	mov	rbp, rbp
	movsx	eax, sil
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x258]
	mov	rdx, qword ptr [rdx]
	mov	rsp, rsp
	mov	sil, dl
	mov	rbp, rbp
	movsx	edi, sil
	imul	eax, edi
	mov	sil, al
	movsx	rdx, sil
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x290], rdx
	lea	rdi, [rdi]
	test	cl, 1
	jne	.label_250
	jmp	.label_267
.label_399:
	mov	rax, qword ptr [rbp - 0x258]
	lea	rdi, [rdi]
	cmp	qword ptr [rax], 0
	nop	
	jge	.label_601
	mov	rax, qword ptr [rbp - 0x258]
	cmp	qword ptr [rax - 0x30], 0
	mov	rsp, rsp
	jge	.label_609
	movabs	rax, 0x7fffffffffffffff
	nop	
	mov	rcx, qword ptr [rbp - 0x258]
	mov	rcx, qword ptr [rcx - 0x30]
	mov	rdx, qword ptr [rbp - 0x258]
	mov	qword ptr [rbp - 0x3d8], rdx
	lea	rsi, [rsi]
	cqo	
	mov	rsi, qword ptr [rbp - 0x3d8]
	idiv	qword ptr [rsi]
	cmp	rcx, rax
	jl	.label_613
	jmp	.label_627
.label_609:
	nop	
	mov	rax, qword ptr [rbp - 0x258]
	lea	rsi, [rsi]
	cmp	qword ptr [rax], -1
	jne	.label_628
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	lea	rdi, [rdi]
	jne	.label_613
	jmp	.label_627
.label_628:
	nop	
	movabs	rax, 0x8000000000000000
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x258]
	cqo	
	lea	rdi, [rdi]
	idiv	qword ptr [rcx]
	nop	
	mov	rcx, qword ptr [rbp - 0x258]
	cmp	rax, qword ptr [rcx - 0x30]
	jl	.label_613
	jmp	.label_627
.label_601:
	mov	rax, qword ptr [rbp - 0x258]
	cmp	qword ptr [rax], 0
	nop	
	jne	.label_646
	mov	rbp, rbp
	xor	eax, eax
	mov	cl, al
	lea	rdi, [rdi]
	test	cl, 1
	lea	rsi, [rsi]
	jne	.label_613
	nop	
	jmp	.label_627
.label_646:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x258]
	cmp	qword ptr [rax - 0x30], 0
	mov	rsp, rsp
	jge	.label_895
	mov	rbp, rbp
	movabs	rax, 0x8000000000000000
	mov	rcx, qword ptr [rbp - 0x258]
	nop	
	mov	rcx, qword ptr [rcx - 0x30]
	mov	rdx, qword ptr [rbp - 0x258]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x5f0], rdx
	nop	
	cqo	
	mov	rsi, qword ptr [rbp - 0x5f0]
	mov	rbp, rbp
	idiv	qword ptr [rsi]
	cmp	rcx, rax
	lea	rsi, [rsi]
	jl	.label_613
	lea	rsi, [rsi]
	jmp	.label_627
.label_895:
	mov	rbp, rbp
	movabs	rax, 0x7fffffffffffffff
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x258]
	cqo	
	idiv	qword ptr [rcx]
	mov	rcx, qword ptr [rbp - 0x258]
	cmp	rax, qword ptr [rcx - 0x30]
	jl	.label_613
.label_627:
	mov	rax, qword ptr [rbp - 0x258]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax - 0x30]
	mov	rcx, qword ptr [rbp - 0x258]
	imul	rax, qword ptr [rcx]
	cmp	rax, -0x80
	jl	.label_613
	nop	
	mov	eax, 0x7f
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x258]
	mov	rbp, rbp
	mov	rdx, qword ptr [rdx - 0x30]
	mov	rsi, qword ptr [rbp - 0x258]
	imul	rdx, qword ptr [rsi]
	lea	rdi, [rdi]
	cmp	rcx, rdx
	jge	.label_1126
.label_613:
	lea	rdi, [rdi]
	mov	al, 1
	mov	rcx, qword ptr [rbp - 0x258]
	mov	rsp, rsp
	mov	rcx, qword ptr [rcx - 0x30]
	lea	rsi, [rsi]
	mov	edx, ecx
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x258]
	nop	
	mov	rcx, qword ptr [rcx]
	mov	esi, ecx
	imul	edx, esi
	mov	dil, dl
	mov	rsp, rsp
	movsx	rcx, dil
	mov	qword ptr [rbp - 0x290], rcx
	test	al, 1
	jne	.label_250
	jmp	.label_267
.label_1126:
	nop	
	xor	eax, eax
	mov	rsp, rsp
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x258]
	mov	rsp, rsp
	mov	rdx, qword ptr [rdx - 0x30]
	mov	eax, edx
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x258]
	mov	rdx, qword ptr [rdx]
	lea	rsi, [rsi]
	mov	esi, edx
	imul	eax, esi
	lea	rdi, [rdi]
	mov	dil, al
	mov	rbp, rbp
	movsx	rdx, dil
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x290], rdx
	test	cl, 1
	lea	rdi, [rdi]
	jne	.label_250
	nop	
	jmp	.label_267
.label_690:
	lea	rdi, [rdi]
	xor	eax, eax
	mov	cl, al
	mov	rbp, rbp
	test	cl, 1
	jne	.label_740
	jmp	.label_746
.label_740:
	mov	rbp, rbp
	xor	eax, eax
	mov	cl, al
	nop	
	test	cl, 1
	jne	.label_748
	jmp	.label_534
.label_748:
	mov	rax, qword ptr [rbp - 0x258]
	mov	rax, qword ptr [rax]
	mov	rbp, rbp
	mov	cx, ax
	lea	rdi, [rdi]
	movsx	edx, cx
	cmp	edx, 0
	jge	.label_753
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x258]
	mov	rax, qword ptr [rax - 0x30]
	mov	cx, ax
	mov	rbp, rbp
	movsx	edx, cx
	cmp	edx, 0
	jge	.label_759
	mov	eax, 0x7fffffff
	mov	rcx, qword ptr [rbp - 0x258]
	mov	rcx, qword ptr [rcx - 0x30]
	lea	rdi, [rdi]
	mov	dx, cx
	lea	rdi, [rdi]
	movsx	esi, dx
	mov	rcx, qword ptr [rbp - 0x258]
	mov	rcx, qword ptr [rcx]
	mov	dx, cx
	movsx	edi, dx
	cdq	
	lea	rdi, [rdi]
	idiv	edi
	cmp	esi, eax
	lea	rsi, [rsi]
	jl	.label_767
	lea	rsi, [rsi]
	jmp	.label_782
.label_759:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x258]
	mov	rax, qword ptr [rax]
	mov	cx, ax
	lea	rdi, [rdi]
	movsx	edx, cx
	cmp	edx, -1
	lea	rdi, [rdi]
	jne	.label_723
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	lea	rsi, [rsi]
	jne	.label_767
	jmp	.label_782
.label_723:
	mov	eax, 0x80000000
	mov	rcx, qword ptr [rbp - 0x258]
	mov	rsp, rsp
	mov	rcx, qword ptr [rcx]
	lea	rdi, [rdi]
	mov	dx, cx
	lea	rsi, [rsi]
	movsx	esi, dx
	cdq	
	mov	rbp, rbp
	idiv	esi
	mov	rcx, qword ptr [rbp - 0x258]
	mov	rcx, qword ptr [rcx - 0x30]
	mov	di, cx
	lea	rdi, [rdi]
	movsx	esi, di
	cmp	eax, esi
	mov	rbp, rbp
	jl	.label_767
	jmp	.label_782
.label_753:
	mov	rax, qword ptr [rbp - 0x258]
	mov	rax, qword ptr [rax]
	mov	rsp, rsp
	mov	cx, ax
	lea	rsi, [rsi]
	movsx	edx, cx
	mov	rsp, rsp
	cmp	edx, 0
	mov	rsp, rsp
	jne	.label_810
	mov	rsp, rsp
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	mov	rbp, rbp
	jne	.label_767
	lea	rsi, [rsi]
	jmp	.label_782
.label_810:
	mov	rax, qword ptr [rbp - 0x258]
	mov	rax, qword ptr [rax - 0x30]
	mov	rsp, rsp
	mov	cx, ax
	lea	rdi, [rdi]
	movsx	edx, cx
	mov	rbp, rbp
	cmp	edx, 0
	jge	.label_822
	mov	eax, 0x80000000
	mov	rcx, qword ptr [rbp - 0x258]
	nop	
	mov	rcx, qword ptr [rcx - 0x30]
	mov	rsp, rsp
	mov	dx, cx
	nop	
	movsx	esi, dx
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x258]
	mov	rsp, rsp
	mov	rcx, qword ptr [rcx]
	mov	dx, cx
	nop	
	movsx	edi, dx
	nop	
	cdq	
	idiv	edi
	cmp	esi, eax
	jl	.label_767
	jmp	.label_782
.label_822:
	mov	eax, 0x7fffffff
	mov	rcx, qword ptr [rbp - 0x258]
	mov	rcx, qword ptr [rcx]
	mov	dx, cx
	movsx	esi, dx
	lea	rsi, [rsi]
	cdq	
	idiv	esi
	mov	rcx, qword ptr [rbp - 0x258]
	mov	rbp, rbp
	mov	rcx, qword ptr [rcx - 0x30]
	mov	di, cx
	movsx	esi, di
	mov	rsp, rsp
	cmp	eax, esi
	jl	.label_767
.label_782:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x258]
	mov	rax, qword ptr [rax - 0x30]
	mov	cx, ax
	movsx	edx, cx
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x258]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax]
	mov	cx, ax
	nop	
	movsx	esi, cx
	lea	rsi, [rsi]
	imul	edx, esi
	nop	
	cmp	edx, 0xffff8000
	nop	
	jl	.label_767
	mov	eax, 0x7fff
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x258]
	mov	rcx, qword ptr [rcx - 0x30]
	mov	rsp, rsp
	mov	dx, cx
	movsx	esi, dx
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x258]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rcx]
	mov	dx, cx
	movsx	edi, dx
	mov	rsp, rsp
	imul	esi, edi
	mov	rsp, rsp
	cmp	eax, esi
	nop	
	jge	.label_884
.label_767:
	mov	rbp, rbp
	mov	al, 1
	mov	rcx, qword ptr [rbp - 0x258]
	mov	rcx, qword ptr [rcx - 0x30]
	mov	rbp, rbp
	mov	dx, cx
	movsx	esi, dx
	mov	rcx, qword ptr [rbp - 0x258]
	mov	rbp, rbp
	mov	rcx, qword ptr [rcx]
	lea	rdi, [rdi]
	mov	dx, cx
	mov	rbp, rbp
	movsx	edi, dx
	mov	rbp, rbp
	imul	esi, edi
	mov	dx, si
	movsx	rcx, dx
	nop	
	mov	qword ptr [rbp - 0x290], rcx
	lea	rsi, [rsi]
	test	al, 1
	mov	rsp, rsp
	jne	.label_250
	nop	
	jmp	.label_267
.label_884:
	mov	rsp, rsp
	xor	eax, eax
	mov	cl, al
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x258]
	mov	rsp, rsp
	mov	rdx, qword ptr [rdx - 0x30]
	mov	si, dx
	lea	rsi, [rsi]
	movsx	eax, si
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x258]
	mov	rsp, rsp
	mov	rdx, qword ptr [rdx]
	nop	
	mov	si, dx
	movsx	edi, si
	lea	rdi, [rdi]
	imul	eax, edi
	mov	rbp, rbp
	mov	si, ax
	lea	rdi, [rdi]
	movsx	rdx, si
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x290], rdx
	mov	rsp, rsp
	test	cl, 1
	jne	.label_250
	lea	rdi, [rdi]
	jmp	.label_267
.label_534:
	nop	
	mov	rax, qword ptr [rbp - 0x258]
	nop	
	cmp	qword ptr [rax], 0
	mov	rbp, rbp
	jge	.label_717
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x258]
	cmp	qword ptr [rax - 0x30], 0
	jge	.label_939
	movabs	rax, 0x7fffffffffffffff
	mov	rcx, qword ptr [rbp - 0x258]
	mov	rcx, qword ptr [rcx - 0x30]
	mov	rdx, qword ptr [rbp - 0x258]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x578], rdx
	cqo	
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x578]
	lea	rsi, [rsi]
	idiv	qword ptr [rsi]
	nop	
	cmp	rcx, rax
	mov	rsp, rsp
	jl	.label_573
	lea	rdi, [rdi]
	jmp	.label_961
.label_939:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x258]
	mov	rbp, rbp
	cmp	qword ptr [rax], -1
	nop	
	jne	.label_964
	xor	eax, eax
	nop	
	mov	cl, al
	mov	rsp, rsp
	test	cl, 1
	nop	
	jne	.label_573
	jmp	.label_961
.label_964:
	movabs	rax, 0x8000000000000000
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x258]
	nop	
	cqo	
	lea	rdi, [rdi]
	idiv	qword ptr [rcx]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x258]
	cmp	rax, qword ptr [rcx - 0x30]
	nop	
	jl	.label_573
	lea	rsi, [rsi]
	jmp	.label_961
.label_717:
	mov	rax, qword ptr [rbp - 0x258]
	mov	rbp, rbp
	cmp	qword ptr [rax], 0
	jne	.label_995
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_573
	jmp	.label_961
.label_995:
	mov	rax, qword ptr [rbp - 0x258]
	nop	
	cmp	qword ptr [rax - 0x30], 0
	jge	.label_1065
	movabs	rax, 0x8000000000000000
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x258]
	mov	rcx, qword ptr [rcx - 0x30]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x258]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x4e8], rdx
	lea	rdi, [rdi]
	cqo	
	mov	rsi, qword ptr [rbp - 0x4e8]
	lea	rsi, [rsi]
	idiv	qword ptr [rsi]
	cmp	rcx, rax
	mov	rbp, rbp
	jl	.label_573
	jmp	.label_961
.label_1065:
	movabs	rax, 0x7fffffffffffffff
	mov	rcx, qword ptr [rbp - 0x258]
	cqo	
	idiv	qword ptr [rcx]
	mov	rcx, qword ptr [rbp - 0x258]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rcx - 0x30]
	mov	rsp, rsp
	jl	.label_573
.label_961:
	mov	rax, qword ptr [rbp - 0x258]
	mov	rax, qword ptr [rax - 0x30]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x258]
	imul	rax, qword ptr [rcx]
	lea	rdi, [rdi]
	cmp	rax, -0x8000
	mov	rbp, rbp
	jl	.label_573
	lea	rsi, [rsi]
	mov	eax, 0x7fff
	mov	rbp, rbp
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x258]
	mov	rdx, qword ptr [rdx - 0x30]
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x258]
	imul	rdx, qword ptr [rsi]
	cmp	rcx, rdx
	lea	rsi, [rsi]
	jge	.label_1026
.label_573:
	lea	rsi, [rsi]
	mov	al, 1
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x258]
	mov	rcx, qword ptr [rcx - 0x30]
	lea	rdi, [rdi]
	mov	edx, ecx
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x258]
	mov	rcx, qword ptr [rcx]
	mov	esi, ecx
	lea	rsi, [rsi]
	imul	edx, esi
	lea	rdi, [rdi]
	mov	di, dx
	movsx	rcx, di
	mov	qword ptr [rbp - 0x290], rcx
	nop	
	test	al, 1
	jne	.label_250
	lea	rdi, [rdi]
	jmp	.label_267
.label_1026:
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x258]
	mov	rdx, qword ptr [rdx - 0x30]
	mov	eax, edx
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x258]
	mov	rdx, qword ptr [rdx]
	mov	esi, edx
	lea	rdi, [rdi]
	imul	eax, esi
	mov	di, ax
	movsx	rdx, di
	mov	qword ptr [rbp - 0x290], rdx
	mov	rbp, rbp
	test	cl, 1
	jne	.label_250
	mov	rbp, rbp
	jmp	.label_267
.label_746:
	lea	rsi, [rsi]
	xor	eax, eax
	mov	cl, al
	mov	rbp, rbp
	test	cl, 1
	jne	.label_1075
	jmp	.label_697
.label_1075:
	mov	rbp, rbp
	xor	eax, eax
	nop	
	mov	cl, al
	nop	
	test	cl, 1
	mov	rsp, rsp
	jne	.label_1081
	jmp	.label_733
.label_1081:
	nop	
	mov	rax, qword ptr [rbp - 0x258]
	mov	rax, qword ptr [rax]
	mov	ecx, eax
	cmp	ecx, 0
	nop	
	jge	.label_1085
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x258]
	nop	
	mov	rax, qword ptr [rax - 0x30]
	lea	rsi, [rsi]
	mov	ecx, eax
	lea	rsi, [rsi]
	cmp	ecx, 0
	jge	.label_1092
	nop	
	mov	eax, 0x7fffffff
	mov	rcx, qword ptr [rbp - 0x258]
	mov	rcx, qword ptr [rcx - 0x30]
	mov	edx, ecx
	mov	rcx, qword ptr [rbp - 0x258]
	mov	rcx, qword ptr [rcx]
	mov	rbp, rbp
	mov	esi, ecx
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x400], edx
	lea	rsi, [rsi]
	cdq	
	idiv	esi
	nop	
	mov	esi, dword ptr [rbp - 0x400]
	lea	rdi, [rdi]
	cmp	esi, eax
	jl	.label_138
	mov	rsp, rsp
	jmp	.label_177
.label_1092:
	nop	
	mov	rax, qword ptr [rbp - 0x258]
	mov	rax, qword ptr [rax]
	mov	ecx, eax
	lea	rsi, [rsi]
	cmp	ecx, -1
	nop	
	jne	.label_1121
	xor	eax, eax
	mov	rsp, rsp
	mov	cl, al
	test	cl, 1
	nop	
	jne	.label_138
	lea	rsi, [rsi]
	jmp	.label_177
.label_1121:
	mov	rbp, rbp
	mov	eax, 0x80000000
	mov	rcx, qword ptr [rbp - 0x258]
	mov	rcx, qword ptr [rcx]
	mov	edx, ecx
	mov	dword ptr [rbp - 0xc0], edx
	cdq	
	mov	esi, dword ptr [rbp - 0xc0]
	idiv	esi
	mov	rcx, qword ptr [rbp - 0x258]
	mov	rbp, rbp
	mov	rcx, qword ptr [rcx - 0x30]
	mov	edi, ecx
	mov	rsp, rsp
	cmp	eax, edi
	nop	
	jl	.label_138
	jmp	.label_177
.label_1085:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x258]
	nop	
	mov	rax, qword ptr [rax]
	mov	ecx, eax
	cmp	ecx, 0
	lea	rdi, [rdi]
	jne	.label_1139
	mov	rsp, rsp
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_138
	nop	
	jmp	.label_177
.label_1139:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x258]
	mov	rax, qword ptr [rax - 0x30]
	mov	ecx, eax
	mov	rsp, rsp
	cmp	ecx, 0
	jge	.label_1151
	mov	eax, 0x80000000
	nop	
	mov	rcx, qword ptr [rbp - 0x258]
	nop	
	mov	rcx, qword ptr [rcx - 0x30]
	mov	edx, ecx
	nop	
	mov	rcx, qword ptr [rbp - 0x258]
	mov	rcx, qword ptr [rcx]
	mov	esi, ecx
	mov	dword ptr [rbp - 0xcb4], edx
	cdq	
	lea	rsi, [rsi]
	idiv	esi
	nop	
	mov	esi, dword ptr [rbp - 0xcb4]
	mov	rsp, rsp
	cmp	esi, eax
	lea	rsi, [rsi]
	jl	.label_138
	jmp	.label_177
.label_1151:
	mov	eax, 0x7fffffff
	mov	rcx, qword ptr [rbp - 0x258]
	mov	rsp, rsp
	mov	rcx, qword ptr [rcx]
	mov	edx, ecx
	mov	dword ptr [rbp - 0xce4], edx
	lea	rsi, [rsi]
	cdq	
	mov	esi, dword ptr [rbp - 0xce4]
	lea	rdi, [rdi]
	idiv	esi
	mov	rcx, qword ptr [rbp - 0x258]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rcx - 0x30]
	lea	rdi, [rdi]
	mov	edi, ecx
	lea	rsi, [rsi]
	cmp	eax, edi
	jl	.label_138
.label_177:
	mov	rax, qword ptr [rbp - 0x258]
	mov	rax, qword ptr [rax - 0x30]
	mov	rsp, rsp
	mov	ecx, eax
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x258]
	mov	rax, qword ptr [rax]
	mov	edx, eax
	mov	rbp, rbp
	imul	ecx, edx
	cmp	ecx, 0x80000000
	lea	rsi, [rsi]
	jl	.label_138
	mov	eax, 0x7fffffff
	mov	rcx, qword ptr [rbp - 0x258]
	mov	rcx, qword ptr [rcx - 0x30]
	mov	rbp, rbp
	mov	edx, ecx
	mov	rcx, qword ptr [rbp - 0x258]
	mov	rsp, rsp
	mov	rcx, qword ptr [rcx]
	mov	esi, ecx
	imul	edx, esi
	cmp	eax, edx
	jge	.label_228
.label_138:
	mov	rbp, rbp
	mov	al, 1
	mov	rcx, qword ptr [rbp - 0x258]
	mov	rbp, rbp
	mov	rcx, qword ptr [rcx - 0x30]
	mov	edx, ecx
	mov	rcx, qword ptr [rbp - 0x258]
	mov	rbp, rbp
	mov	rcx, qword ptr [rcx]
	mov	rbp, rbp
	mov	esi, ecx
	lea	rdi, [rdi]
	imul	edx, esi
	mov	rsp, rsp
	movsxd	rcx, edx
	mov	qword ptr [rbp - 0x290], rcx
	mov	rbp, rbp
	test	al, 1
	jne	.label_250
	jmp	.label_267
.label_228:
	xor	eax, eax
	lea	rdi, [rdi]
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x258]
	mov	rsp, rsp
	mov	rdx, qword ptr [rdx - 0x30]
	lea	rdi, [rdi]
	mov	eax, edx
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x258]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rdx]
	mov	esi, edx
	imul	eax, esi
	movsxd	rdx, eax
	nop	
	mov	qword ptr [rbp - 0x290], rdx
	test	cl, 1
	nop	
	jne	.label_250
	mov	rsp, rsp
	jmp	.label_267
.label_733:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x258]
	mov	rsp, rsp
	cmp	qword ptr [rax], 0
	nop	
	jge	.label_283
	nop	
	mov	rax, qword ptr [rbp - 0x258]
	cmp	qword ptr [rax - 0x30], 0
	lea	rdi, [rdi]
	jge	.label_287
	movabs	rax, 0x7fffffffffffffff
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x258]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rcx - 0x30]
	mov	rdx, qword ptr [rbp - 0x258]
	mov	qword ptr [rbp - 0x238], rdx
	cqo	
	mov	rsi, qword ptr [rbp - 0x238]
	idiv	qword ptr [rsi]
	mov	rbp, rbp
	cmp	rcx, rax
	lea	rdi, [rdi]
	jl	.label_295
	jmp	.label_314
.label_287:
	mov	rax, qword ptr [rbp - 0x258]
	nop	
	cmp	qword ptr [rax], -1
	jne	.label_317
	mov	rsp, rsp
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	lea	rdi, [rdi]
	jne	.label_295
	jmp	.label_314
.label_317:
	movabs	rax, 0x8000000000000000
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x258]
	cqo	
	nop	
	idiv	qword ptr [rcx]
	mov	rcx, qword ptr [rbp - 0x258]
	cmp	rax, qword ptr [rcx - 0x30]
	jl	.label_295
	mov	rsp, rsp
	jmp	.label_314
.label_283:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x258]
	lea	rsi, [rsi]
	cmp	qword ptr [rax], 0
	jne	.label_1068
	nop	
	xor	eax, eax
	lea	rdi, [rdi]
	mov	cl, al
	test	cl, 1
	lea	rsi, [rsi]
	jne	.label_295
	mov	rsp, rsp
	jmp	.label_314
.label_1068:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x258]
	lea	rdi, [rdi]
	cmp	qword ptr [rax - 0x30], 0
	mov	rsp, rsp
	jge	.label_356
	nop	
	movabs	rax, 0x8000000000000000
	mov	rcx, qword ptr [rbp - 0x258]
	mov	rcx, qword ptr [rcx - 0x30]
	mov	rdx, qword ptr [rbp - 0x258]
	mov	qword ptr [rbp - 0xbf0], rdx
	cqo	
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0xbf0]
	idiv	qword ptr [rsi]
	lea	rsi, [rsi]
	cmp	rcx, rax
	mov	rsp, rsp
	jl	.label_295
	jmp	.label_314
.label_356:
	mov	rbp, rbp
	movabs	rax, 0x7fffffffffffffff
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x258]
	cqo	
	idiv	qword ptr [rcx]
	mov	rcx, qword ptr [rbp - 0x258]
	mov	rbp, rbp
	cmp	rax, qword ptr [rcx - 0x30]
	jl	.label_295
.label_314:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x258]
	mov	rbp, rbp
	mov	rax, qword ptr [rax - 0x30]
	mov	rcx, qword ptr [rbp - 0x258]
	mov	rsp, rsp
	imul	rax, qword ptr [rcx]
	nop	
	cmp	rax, -0x80000000
	mov	rsp, rsp
	jl	.label_295
	lea	rsi, [rsi]
	mov	eax, 0x7fffffff
	mov	rbp, rbp
	mov	ecx, eax
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x258]
	mov	rdx, qword ptr [rdx - 0x30]
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x258]
	lea	rdi, [rdi]
	imul	rdx, qword ptr [rsi]
	mov	rsp, rsp
	cmp	rcx, rdx
	mov	rsp, rsp
	jge	.label_1048
.label_295:
	mov	al, 1
	mov	rcx, qword ptr [rbp - 0x258]
	nop	
	mov	rcx, qword ptr [rcx - 0x30]
	mov	edx, ecx
	nop	
	mov	rcx, qword ptr [rbp - 0x258]
	nop	
	mov	rcx, qword ptr [rcx]
	mov	esi, ecx
	imul	edx, esi
	movsxd	rcx, edx
	mov	qword ptr [rbp - 0x290], rcx
	nop	
	test	al, 1
	nop	
	jne	.label_250
	nop	
	jmp	.label_267
.label_1048:
	mov	rsp, rsp
	xor	eax, eax
	mov	rsp, rsp
	mov	cl, al
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x258]
	mov	rdx, qword ptr [rdx - 0x30]
	lea	rdi, [rdi]
	mov	eax, edx
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x258]
	mov	rdx, qword ptr [rdx]
	lea	rdi, [rdi]
	mov	esi, edx
	imul	eax, esi
	lea	rsi, [rsi]
	movsxd	rdx, eax
	mov	qword ptr [rbp - 0x290], rdx
	lea	rdi, [rdi]
	test	cl, 1
	jne	.label_250
	lea	rdi, [rdi]
	jmp	.label_267
.label_697:
	mov	al, 1
	mov	rsp, rsp
	test	al, 1
	nop	
	jne	.label_454
	mov	rbp, rbp
	jmp	.label_773
.label_454:
	xor	eax, eax
	mov	rbp, rbp
	mov	cl, al
	mov	rsp, rsp
	test	cl, 1
	nop	
	jne	.label_458
	mov	rsp, rsp
	jmp	.label_468
.label_458:
	mov	rax, qword ptr [rbp - 0x258]
	lea	rdi, [rdi]
	cmp	qword ptr [rax], 0
	lea	rdi, [rdi]
	jge	.label_472
	mov	rax, qword ptr [rbp - 0x258]
	cmp	qword ptr [rax - 0x30], 0
	mov	rsp, rsp
	jge	.label_858
	movabs	rax, 0x7fffffffffffffff
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x258]
	mov	rcx, qword ptr [rcx - 0x30]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x258]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x3c8], rdx
	cqo	
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x3c8]
	idiv	qword ptr [rsi]
	cmp	rcx, rax
	jl	.label_485
	jmp	.label_513
.label_858:
	mov	rax, qword ptr [rbp - 0x258]
	cmp	qword ptr [rax], -1
	jne	.label_517
	mov	rbp, rbp
	xor	eax, eax
	mov	cl, al
	mov	rsp, rsp
	test	cl, 1
	jne	.label_485
	jmp	.label_513
.label_517:
	movabs	rax, 0x8000000000000000
	mov	rcx, qword ptr [rbp - 0x258]
	cqo	
	mov	rbp, rbp
	idiv	qword ptr [rcx]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x258]
	nop	
	cmp	rax, qword ptr [rcx - 0x30]
	jl	.label_485
	mov	rbp, rbp
	jmp	.label_513
.label_472:
	mov	rax, qword ptr [rbp - 0x258]
	cmp	qword ptr [rax], 0
	lea	rdi, [rdi]
	jne	.label_533
	mov	rbp, rbp
	xor	eax, eax
	mov	cl, al
	lea	rdi, [rdi]
	test	cl, 1
	jne	.label_485
	nop	
	jmp	.label_513
.label_533:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x258]
	cmp	qword ptr [rax - 0x30], 0
	lea	rsi, [rsi]
	jge	.label_546
	movabs	rax, 0x8000000000000000
	mov	rcx, qword ptr [rbp - 0x258]
	mov	rcx, qword ptr [rcx - 0x30]
	mov	rdx, qword ptr [rbp - 0x258]
	mov	qword ptr [rbp - 0x708], rdx
	cqo	
	mov	rsi, qword ptr [rbp - 0x708]
	lea	rdi, [rdi]
	idiv	qword ptr [rsi]
	lea	rdi, [rdi]
	cmp	rcx, rax
	jl	.label_485
	jmp	.label_513
.label_546:
	movabs	rax, 0x7fffffffffffffff
	mov	rcx, qword ptr [rbp - 0x258]
	lea	rsi, [rsi]
	cqo	
	nop	
	idiv	qword ptr [rcx]
	mov	rcx, qword ptr [rbp - 0x258]
	nop	
	cmp	rax, qword ptr [rcx - 0x30]
	jl	.label_485
.label_513:
	movabs	rax, 0x8000000000000000
	mov	rcx, qword ptr [rbp - 0x258]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rcx - 0x30]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x258]
	imul	rcx, qword ptr [rdx]
	cmp	rcx, rax
	jl	.label_485
	movabs	rax, 0x7fffffffffffffff
	mov	rcx, qword ptr [rbp - 0x258]
	mov	rsp, rsp
	mov	rcx, qword ptr [rcx - 0x30]
	nop	
	mov	rdx, qword ptr [rbp - 0x258]
	lea	rdi, [rdi]
	imul	rcx, qword ptr [rdx]
	nop	
	cmp	rax, rcx
	jge	.label_586
.label_485:
	mov	rsp, rsp
	mov	al, 1
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x258]
	mov	rbp, rbp
	mov	rcx, qword ptr [rcx - 0x30]
	mov	rdx, qword ptr [rbp - 0x258]
	lea	rsi, [rsi]
	imul	rcx, qword ptr [rdx]
	mov	qword ptr [rbp - 0x290], rcx
	lea	rsi, [rsi]
	test	al, 1
	mov	rsp, rsp
	jne	.label_250
	jmp	.label_267
.label_586:
	lea	rdi, [rdi]
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x258]
	mov	rsp, rsp
	mov	rdx, qword ptr [rdx - 0x30]
	nop	
	mov	rsi, qword ptr [rbp - 0x258]
	imul	rdx, qword ptr [rsi]
	mov	qword ptr [rbp - 0x290], rdx
	test	cl, 1
	lea	rdi, [rdi]
	jne	.label_250
	mov	rsp, rsp
	jmp	.label_267
.label_468:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x258]
	cmp	qword ptr [rax], 0
	jge	.label_633
	mov	rax, qword ptr [rbp - 0x258]
	cmp	qword ptr [rax - 0x30], 0
	jge	.label_553
	nop	
	movabs	rax, 0x7fffffffffffffff
	mov	rcx, qword ptr [rbp - 0x258]
	mov	rcx, qword ptr [rcx - 0x30]
	mov	rdx, qword ptr [rbp - 0x258]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x4e0], rdx
	cqo	
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x4e0]
	idiv	qword ptr [rsi]
	cmp	rcx, rax
	jl	.label_198
	mov	rsp, rsp
	jmp	.label_651
.label_553:
	mov	rax, qword ptr [rbp - 0x258]
	cmp	qword ptr [rax], -1
	jne	.label_879
	mov	rsp, rsp
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_198
	nop	
	jmp	.label_651
.label_879:
	mov	rbp, rbp
	movabs	rax, 0x8000000000000000
	mov	rcx, qword ptr [rbp - 0x258]
	mov	rsp, rsp
	cqo	
	idiv	qword ptr [rcx]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x258]
	cmp	rax, qword ptr [rcx - 0x30]
	jl	.label_198
	jmp	.label_651
.label_633:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x258]
	lea	rdi, [rdi]
	cmp	qword ptr [rax], 0
	nop	
	jne	.label_669
	xor	eax, eax
	mov	cl, al
	mov	rsp, rsp
	test	cl, 1
	lea	rdi, [rdi]
	jne	.label_198
	jmp	.label_651
.label_669:
	mov	rax, qword ptr [rbp - 0x258]
	cmp	qword ptr [rax - 0x30], 0
	mov	rsp, rsp
	jge	.label_676
	movabs	rax, 0x8000000000000000
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x258]
	mov	rsp, rsp
	mov	rcx, qword ptr [rcx - 0x30]
	mov	rdx, qword ptr [rbp - 0x258]
	mov	qword ptr [rbp - 0x330], rdx
	cqo	
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x330]
	mov	rbp, rbp
	idiv	qword ptr [rsi]
	cmp	rcx, rax
	jl	.label_198
	mov	rsp, rsp
	jmp	.label_651
.label_676:
	movabs	rax, 0x7fffffffffffffff
	mov	rcx, qword ptr [rbp - 0x258]
	lea	rsi, [rsi]
	cqo	
	lea	rsi, [rsi]
	idiv	qword ptr [rcx]
	nop	
	mov	rcx, qword ptr [rbp - 0x258]
	cmp	rax, qword ptr [rcx - 0x30]
	jl	.label_198
.label_651:
	movabs	rax, 0x8000000000000000
	mov	rcx, qword ptr [rbp - 0x258]
	mov	rbp, rbp
	mov	rcx, qword ptr [rcx - 0x30]
	mov	rdx, qword ptr [rbp - 0x258]
	mov	rsp, rsp
	imul	rcx, qword ptr [rdx]
	lea	rdi, [rdi]
	cmp	rcx, rax
	mov	rbp, rbp
	jl	.label_198
	lea	rdi, [rdi]
	movabs	rax, 0x7fffffffffffffff
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x258]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rcx - 0x30]
	mov	rdx, qword ptr [rbp - 0x258]
	imul	rcx, qword ptr [rdx]
	mov	rbp, rbp
	cmp	rax, rcx
	lea	rdi, [rdi]
	jge	.label_727
.label_198:
	lea	rdi, [rdi]
	mov	al, 1
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x258]
	mov	rbp, rbp
	mov	rcx, qword ptr [rcx - 0x30]
	nop	
	mov	rdx, qword ptr [rbp - 0x258]
	imul	rcx, qword ptr [rdx]
	nop	
	mov	qword ptr [rbp - 0x290], rcx
	test	al, 1
	mov	rsp, rsp
	jne	.label_250
	mov	rsp, rsp
	jmp	.label_267
.label_727:
	xor	eax, eax
	mov	rsp, rsp
	mov	cl, al
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x258]
	nop	
	mov	rdx, qword ptr [rdx - 0x30]
	mov	rsi, qword ptr [rbp - 0x258]
	imul	rdx, qword ptr [rsi]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x290], rdx
	lea	rdi, [rdi]
	test	cl, 1
	lea	rdi, [rdi]
	jne	.label_250
	nop	
	jmp	.label_267
.label_773:
	lea	rsi, [rsi]
	xor	eax, eax
	mov	rbp, rbp
	mov	cl, al
	test	cl, 1
	mov	rsp, rsp
	jne	.label_771
	mov	rbp, rbp
	jmp	.label_774
.label_771:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x258]
	cmp	qword ptr [rax], 0
	jge	.label_775
	nop	
	mov	rax, qword ptr [rbp - 0x258]
	nop	
	cmp	qword ptr [rax - 0x30], 0
	mov	rbp, rbp
	jge	.label_783
	lea	rdi, [rdi]
	movabs	rax, 0x7fffffffffffffff
	mov	rcx, qword ptr [rbp - 0x258]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rcx - 0x30]
	nop	
	mov	rdx, qword ptr [rbp - 0x258]
	nop	
	mov	qword ptr [rbp - 0x3f8], rdx
	mov	rsp, rsp
	cqo	
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x3f8]
	idiv	qword ptr [rsi]
	cmp	rcx, rax
	jl	.label_788
	jmp	.label_798
.label_783:
	mov	rax, qword ptr [rbp - 0x258]
	lea	rsi, [rsi]
	cmp	qword ptr [rax], -1
	mov	rbp, rbp
	jne	.label_799
	lea	rsi, [rsi]
	xor	eax, eax
	lea	rsi, [rsi]
	mov	cl, al
	test	cl, 1
	jne	.label_788
	lea	rdi, [rdi]
	jmp	.label_798
.label_799:
	mov	rbp, rbp
	movabs	rax, 0x8000000000000000
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x258]
	cqo	
	lea	rdi, [rdi]
	idiv	qword ptr [rcx]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x258]
	cmp	rax, qword ptr [rcx - 0x30]
	jl	.label_788
	nop	
	jmp	.label_798
.label_775:
	nop	
	mov	rax, qword ptr [rbp - 0x258]
	mov	rbp, rbp
	cmp	qword ptr [rax], 0
	mov	rsp, rsp
	jne	.label_824
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	nop	
	jne	.label_788
	jmp	.label_798
.label_824:
	nop	
	mov	rax, qword ptr [rbp - 0x258]
	mov	rbp, rbp
	cmp	qword ptr [rax - 0x30], 0
	lea	rdi, [rdi]
	jge	.label_838
	movabs	rax, 0x8000000000000000
	mov	rcx, qword ptr [rbp - 0x258]
	mov	rcx, qword ptr [rcx - 0x30]
	mov	rdx, qword ptr [rbp - 0x258]
	mov	qword ptr [rbp - 0x3e8], rdx
	mov	rsp, rsp
	cqo	
	mov	rsi, qword ptr [rbp - 0x3e8]
	idiv	qword ptr [rsi]
	cmp	rcx, rax
	jl	.label_788
	jmp	.label_798
.label_838:
	movabs	rax, 0x7fffffffffffffff
	mov	rcx, qword ptr [rbp - 0x258]
	nop	
	cqo	
	idiv	qword ptr [rcx]
	mov	rcx, qword ptr [rbp - 0x258]
	lea	rdi, [rdi]
	cmp	rax, qword ptr [rcx - 0x30]
	mov	rbp, rbp
	jl	.label_788
.label_798:
	movabs	rax, 0x8000000000000000
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x258]
	mov	rcx, qword ptr [rcx - 0x30]
	mov	rdx, qword ptr [rbp - 0x258]
	imul	rcx, qword ptr [rdx]
	mov	rsp, rsp
	cmp	rcx, rax
	lea	rsi, [rsi]
	jl	.label_788
	movabs	rax, 0x7fffffffffffffff
	mov	rcx, qword ptr [rbp - 0x258]
	mov	rcx, qword ptr [rcx - 0x30]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x258]
	mov	rbp, rbp
	imul	rcx, qword ptr [rdx]
	cmp	rax, rcx
	lea	rsi, [rsi]
	jge	.label_342
.label_788:
	nop	
	mov	al, 1
	mov	rcx, qword ptr [rbp - 0x258]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rcx - 0x30]
	mov	rdx, qword ptr [rbp - 0x258]
	mov	rsp, rsp
	imul	rcx, qword ptr [rdx]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x290], rcx
	nop	
	test	al, 1
	jne	.label_250
	nop	
	jmp	.label_267
.label_342:
	lea	rdi, [rdi]
	xor	eax, eax
	mov	rbp, rbp
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x258]
	mov	rdx, qword ptr [rdx - 0x30]
	mov	rsi, qword ptr [rbp - 0x258]
	imul	rdx, qword ptr [rsi]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x290], rdx
	mov	rsp, rsp
	test	cl, 1
	mov	rsp, rsp
	jne	.label_250
	jmp	.label_267
.label_774:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x258]
	cmp	qword ptr [rax], 0
	jge	.label_911
	mov	rax, qword ptr [rbp - 0x258]
	mov	rsp, rsp
	cmp	qword ptr [rax - 0x30], 0
	jge	.label_916
	movabs	rax, 0x7fffffffffffffff
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x258]
	mov	rcx, qword ptr [rcx - 0x30]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x258]
	mov	qword ptr [rbp - 0xb0], rdx
	cqo	
	mov	rsi, qword ptr [rbp - 0xb0]
	mov	rbp, rbp
	idiv	qword ptr [rsi]
	nop	
	cmp	rcx, rax
	nop	
	jl	.label_303
	mov	rsp, rsp
	jmp	.label_340
.label_916:
	mov	rax, qword ptr [rbp - 0x258]
	lea	rdi, [rdi]
	cmp	qword ptr [rax], -1
	jne	.label_761
	xor	eax, eax
	nop	
	mov	cl, al
	nop	
	test	cl, 1
	nop	
	jne	.label_303
	jmp	.label_340
.label_761:
	movabs	rax, 0x8000000000000000
	nop	
	mov	rcx, qword ptr [rbp - 0x258]
	cqo	
	idiv	qword ptr [rcx]
	mov	rcx, qword ptr [rbp - 0x258]
	lea	rdi, [rdi]
	cmp	rax, qword ptr [rcx - 0x30]
	jl	.label_303
	jmp	.label_340
.label_911:
	mov	rax, qword ptr [rbp - 0x258]
	cmp	qword ptr [rax], 0
	jne	.label_965
	xor	eax, eax
	mov	rbp, rbp
	mov	cl, al
	test	cl, 1
	jne	.label_303
	nop	
	jmp	.label_340
.label_965:
	nop	
	mov	rax, qword ptr [rbp - 0x258]
	lea	rsi, [rsi]
	cmp	qword ptr [rax - 0x30], 0
	lea	rdi, [rdi]
	jge	.label_979
	mov	rbp, rbp
	movabs	rax, 0x8000000000000000
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x258]
	mov	rsp, rsp
	mov	rcx, qword ptr [rcx - 0x30]
	mov	rdx, qword ptr [rbp - 0x258]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0xc30], rdx
	cqo	
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0xc30]
	nop	
	idiv	qword ptr [rsi]
	cmp	rcx, rax
	jl	.label_303
	lea	rdi, [rdi]
	jmp	.label_340
.label_979:
	nop	
	movabs	rax, 0x7fffffffffffffff
	mov	rcx, qword ptr [rbp - 0x258]
	cqo	
	mov	rsp, rsp
	idiv	qword ptr [rcx]
	nop	
	mov	rcx, qword ptr [rbp - 0x258]
	mov	rbp, rbp
	cmp	rax, qword ptr [rcx - 0x30]
	jl	.label_303
.label_340:
	mov	rbp, rbp
	movabs	rax, 0x8000000000000000
	mov	rcx, qword ptr [rbp - 0x258]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rcx - 0x30]
	mov	rdx, qword ptr [rbp - 0x258]
	lea	rdi, [rdi]
	imul	rcx, qword ptr [rdx]
	cmp	rcx, rax
	lea	rsi, [rsi]
	jl	.label_303
	nop	
	movabs	rax, 0x7fffffffffffffff
	mov	rcx, qword ptr [rbp - 0x258]
	nop	
	mov	rcx, qword ptr [rcx - 0x30]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x258]
	lea	rsi, [rsi]
	imul	rcx, qword ptr [rdx]
	mov	rbp, rbp
	cmp	rax, rcx
	mov	rbp, rbp
	jge	.label_1021
.label_303:
	mov	rbp, rbp
	mov	al, 1
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x258]
	mov	rcx, qword ptr [rcx - 0x30]
	nop	
	mov	rdx, qword ptr [rbp - 0x258]
	nop	
	imul	rcx, qword ptr [rdx]
	nop	
	mov	qword ptr [rbp - 0x290], rcx
	test	al, 1
	nop	
	jne	.label_250
	jmp	.label_267
.label_1021:
	lea	rsi, [rsi]
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x258]
	mov	rdx, qword ptr [rdx - 0x30]
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x258]
	imul	rdx, qword ptr [rsi]
	mov	qword ptr [rbp - 0x290], rdx
	test	cl, 1
	lea	rsi, [rsi]
	jne	.label_250
	mov	rsp, rsp
	jmp	.label_267
.label_250:
	jmp	.label_146
.label_267:
	jmp	.label_148
.label_5171:
	mov	rsp, rsp
	mov	eax, 0x38
	mov	edx, eax
	lea	rcx, [rbp - 0x1f0]
	lea	rdi, [rdi]
	lea	rsi, [rbp - 0x2a0]
	nop	
	mov	qword ptr [rbp - 0x1f0], 0
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x1e8], 0
	mov	qword ptr [rbp - 0x1e0], 0
	mov	qword ptr [rbp - 0x1d8], 0
	nop	
	mov	qword ptr [rbp - 0x1d0], 0
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x1c8], 0
	mov	dword ptr [rbp - 0x1c0], 0
	mov	rdi, rsi
	mov	rsi, rcx
	lea	rdi, [rdi]
	call	memcpy
	mov	rcx, qword ptr [rbp - 0x258]
	mov	rcx, qword ptr [rcx - 0x30]
	mov	qword ptr [rbp - 0x288], rcx
	jmp	.label_148
.label_5172:
	lea	rdi, [rdi]
	mov	eax, 0x38
	nop	
	mov	edx, eax
	lea	rdi, [rdi]
	lea	rcx, [rbp - 0xbe8]
	mov	rsp, rsp
	lea	rsi, [rbp - 0x2a0]
	mov	qword ptr [rbp - 0xbe8], 0
	mov	rsp, rsp
	mov	qword ptr [rbp - 0xbe0], 0
	mov	qword ptr [rbp - 0xbd8], 0
	mov	qword ptr [rbp - 0xbd0], 0
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0xbc8], 0
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0xbc0], 0
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0xbb8], 0
	nop	
	mov	rdi, rsi
	mov	rsi, rcx
	mov	rsp, rsp
	call	memcpy
	nop	
	mov	rcx, qword ptr [rbp - 0x258]
	mov	rcx, qword ptr [rcx - 0x30]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x280], rcx
	mov	rbp, rbp
	jmp	.label_148
.label_5173:
	mov	eax, 0x38
	mov	edx, eax
	lea	rdi, [rdi]
	lea	rcx, [rbp - 0xdb8]
	mov	rbp, rbp
	lea	rsi, [rbp - 0x2a0]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0xdb8], 0
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0xdb0], 0
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0xda8], 0
	mov	qword ptr [rbp - 0xda0], 0
	mov	rsp, rsp
	mov	qword ptr [rbp - 0xd98], 0
	mov	qword ptr [rbp - 0xd90], 0
	mov	dword ptr [rbp - 0xd88], 0
	mov	rdi, rsi
	mov	rsi, rcx
	lea	rsi, [rsi]
	call	memcpy
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x258]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rcx - 0x30]
	mov	qword ptr [rbp - 0x278], rcx
	jmp	.label_148
.label_5174:
	mov	eax, 0x38
	lea	rsi, [rsi]
	mov	edx, eax
	lea	rcx, [rbp - 0x700]
	lea	rsi, [rbp - 0x2a0]
	nop	
	mov	qword ptr [rbp - 0x700], 0
	mov	qword ptr [rbp - 0x6f8], 0
	mov	qword ptr [rbp - 0x6f0], 0
	nop	
	mov	qword ptr [rbp - 0x6e8], 0
	mov	qword ptr [rbp - 0x6e0], 0
	mov	qword ptr [rbp - 0x6d8], 0
	mov	dword ptr [rbp - 0x6d0], 0
	mov	rdi, rsi
	mov	rsi, rcx
	lea	rdi, [rdi]
	call	memcpy
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x258]
	mov	rcx, qword ptr [rcx]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x290], rcx
	jmp	.label_148
.label_5175:
	nop	
	mov	rax, qword ptr [rbp - 0x258]
	nop	
	mov	rdi, qword ptr [rax + 8]
	mov	rbp, rbp
	call	time_overflow
	nop	
	test	al, 1
	jne	.label_436
	nop	
	jmp	.label_218
.label_436:
	jmp	.label_146
.label_218:
	mov	rax, qword ptr [rbp - 0x258]
	mov	rax, qword ptr [rax + 8]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x2a0], rax
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x298], 0
	jmp	.label_148
.label_5176:
	mov	rax, qword ptr [rbp - 0x258]
	mov	rdi, qword ptr [rax + 8]
	call	time_overflow
	test	al, 1
	jne	.label_245
	jmp	.label_249
.label_245:
	jmp	.label_146
.label_249:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x258]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x2a0], rax
	mov	qword ptr [rbp - 0x298], 0
	lea	rsi, [rsi]
	jmp	.label_148
.label_5177:
	mov	rdi, qword ptr [rbp - 0x5c0]
	nop	
	mov	rax, qword ptr [rbp - 0x258]
	mov	rcx, qword ptr [rax]
	lea	rdi, [rdi]
	mov	qword ptr [rsp], rcx
	mov	rcx, qword ptr [rax + 8]
	mov	qword ptr [rsp + 8], rcx
	mov	rsp, rsp
	mov	rax, qword ptr [rax + 0x10]
	nop	
	mov	qword ptr [rsp + 0x10], rax
	mov	rbp, rbp
	call	digits_to_date_time
	jmp	.label_148
.label_5178:
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x5c0]
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x258]
	lea	rsi, [rsi]
	add	rax, -0x38
	nop	
	mov	rcx, qword ptr [rax]
	mov	qword ptr [rsp], rcx
	mov	rcx, qword ptr [rax + 8]
	mov	qword ptr [rsp + 8], rcx
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax + 0x10]
	mov	qword ptr [rsp + 0x10], rax
	call	digits_to_date_time
	lea	rsi, [rsi]
	mov	edx, 1
	mov	rdi, qword ptr [rbp - 0x5c0]
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x258]
	mov	rcx, qword ptr [rax + 0x30]
	nop	
	mov	rsi, rsp
	mov	rsp, rsp
	mov	qword ptr [rsi + 0x30], rcx
	lea	rdi, [rdi]
	movups	xmm0, xmmword ptr [rax]
	lea	rsi, [rsi]
	movups	xmm1, xmmword ptr [rax + 0x10]
	lea	rsi, [rsi]
	movups	xmm2, xmmword ptr [rax + 0x20]
	lea	rdi, [rdi]
	movups	xmmword ptr [rsi + 0x20], xmm2
	movups	xmmword ptr [rsi + 0x10], xmm1
	lea	rdi, [rdi]
	movups	xmmword ptr [rsi], xmm0
	mov	rbp, rbp
	mov	esi, 1
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x5c4], edx
	mov	rsp, rsp
	call	apply_relative_time
	test	al, 1
	lea	rsi, [rsi]
	jne	.label_315
	jmp	.label_146
.label_315:
	jmp	.label_148
.label_5179:
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x2a0], -1
	mov	rbp, rbp
	jmp	.label_148
.label_5180:
	mov	rax, qword ptr [rbp - 0x258]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax + 8]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x2a0], rax
	nop	
	jmp	.label_148
.label_307:
	jmp	.label_148
.label_148:
	xor	eax, eax
	mov	ecx, 0x38
	mov	edx, ecx
	lea	rsi, [rbp - 0x2a0]
	xor	ecx, ecx
	mov	edi, ecx
	mov	ecx, dword ptr [rbp - 0x22c]
	mov	r8, qword ptr [rbp - 0x258]
	lea	rsi, [rsi]
	movsxd	r9, ecx
	mov	r10, rdi
	sub	r10, r9
	mov	rbp, rbp
	imul	r9, r10, 0x38
	add	r8, r9
	mov	qword ptr [rbp - 0x258], r8
	mov	rsp, rsp
	mov	ecx, dword ptr [rbp - 0x22c]
	nop	
	mov	r8, qword ptr [rbp - 0x418]
	lea	rsi, [rsi]
	movsxd	r9, ecx
	lea	rdi, [rdi]
	sub	rdi, r9
	lea	rdi, [rdi]
	shl	rdi, 1
	add	r8, rdi
	mov	qword ptr [rbp - 0x418], r8
	nop	
	mov	dword ptr [rbp - 0x22c], 0
	mov	rdi, qword ptr [rbp - 0x258]
	add	rdi, 0x38
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x258], rdi
	mov	dword ptr [rbp - 0x40c], eax
	mov	rsp, rsp
	call	memcpy
	mov	rsp, rsp
	movsxd	rdx, dword ptr [rbp - 0x410]
	movzx	eax,  byte ptr [byte ptr [+ (rdx * 1) + yyr1]]
	mov	dword ptr [rbp - 0x410], eax
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x410]
	mov	rsp, rsp
	sub	eax, 0x1c
	movsxd	rdx, eax
	mov	rsp, rsp
	movsx	eax,  byte ptr [byte ptr [+ (rdx * 1) + yypgoto]]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x418]
	lea	rdi, [rdi]
	movsx	ecx, word ptr [rdx]
	lea	rsi, [rsi]
	add	eax, ecx
	mov	dword ptr [rbp - 0x4d4], eax
	mov	eax, dword ptr [rbp - 0x40c]
	cmp	eax, dword ptr [rbp - 0x4d4]
	jg	.label_380
	cmp	dword ptr [rbp - 0x4d4], 0x70
	mov	rbp, rbp
	jg	.label_380
	mov	rsp, rsp
	movsxd	rax, dword ptr [rbp - 0x4d4]
	lea	rsi, [rsi]
	movsx	ecx,  byte ptr [byte ptr [+ (rax * 1) + yycheck]]
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x418]
	nop	
	movsx	edx, word ptr [rax]
	cmp	ecx, edx
	jne	.label_380
	mov	rsp, rsp
	movsxd	rax, dword ptr [rbp - 0x4d4]
	lea	rsi, [rsi]
	movzx	ecx,  byte ptr [byte ptr [+ (rax * 1) + yytable]]
	mov	dword ptr [rbp - 0x4d4], ecx
	lea	rsi, [rsi]
	jmp	.label_415
.label_380:
	mov	eax, dword ptr [rbp - 0x410]
	sub	eax, 0x1c
	mov	rsp, rsp
	movsxd	rcx, eax
	movsx	eax,  byte ptr [byte ptr [+ (rcx * 1) + yydefgoto]]
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x4d4], eax
.label_415:
	jmp	.label_286
.label_301:
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0xcac], -2
	mov	rbp, rbp
	jne	.label_432
	mov	eax, 0xfffffffe
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x5f4], eax
	jmp	.label_438
.label_432:
	mov	rbp, rbp
	cmp	dword ptr [rbp - 0xcac], 0x115
	ja	.label_442
	movsxd	rax, dword ptr [rbp - 0xcac]
	movzx	ecx,  byte ptr [byte ptr [+ (rax * 1) + yytranslate]]
	mov	dword ptr [rbp - 0x248], ecx
	jmp	.label_448
.label_442:
	lea	rsi, [rsi]
	mov	eax, 2
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x248], eax
	jmp	.label_448
.label_448:
	nop	
	mov	eax, dword ptr [rbp - 0x248]
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x5f4], eax
.label_438:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x5f4]
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x1b4], eax
	cmp	dword ptr [rbp - 0x68c], 0
	mov	rbp, rbp
	jne	.label_811
	nop	
	movabs	rsi, OFFSET FLAT:.str.12_0
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0xc50]
	add	eax, 1
	mov	dword ptr [rbp - 0xc50], eax
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x5c0]
	mov	rsp, rsp
	call	yyerror
	mov	dword ptr [rbp - 0xcbc], eax
.label_811:
	cmp	dword ptr [rbp - 0x68c], 3
	lea	rsi, [rsi]
	jne	.label_499
	cmp	dword ptr [rbp - 0xcac], 0
	jg	.label_507
	lea	rsi, [rsi]
	cmp	dword ptr [rbp - 0xcac], 0
	mov	rsp, rsp
	jne	.label_512
	jmp	.label_146
.label_512:
	lea	rdi, [rdi]
	jmp	.label_520
.label_507:
	movabs	rdi, OFFSET FLAT:.str.13_0
	nop	
	lea	rdx, [rbp - 0x38]
	mov	esi, dword ptr [rbp - 0x1b4]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x5c0]
	lea	rsi, [rsi]
	call	yydestruct
	mov	dword ptr [rbp - 0xcac], 0xfffffffe
.label_520:
	jmp	.label_499
.label_499:
	nop	
	jmp	.label_529
.label_529:
	mov	dword ptr [rbp - 0x68c], 3
.label_600:
	mov	rbp, rbp
	movsxd	rax, dword ptr [rbp - 0x4d4]
	mov	rsp, rsp
	movsx	ecx,  byte ptr [byte ptr [+ (rax * 1) + yypact]]
	mov	dword ptr [rbp - 0x410], ecx
	cmp	dword ptr [rbp - 0x410], -0x5d
	lea	rsi, [rsi]
	je	.label_532
	xor	eax, eax
	lea	rsi, [rsi]
	mov	ecx, dword ptr [rbp - 0x410]
	add	ecx, 1
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x410], ecx
	lea	rdi, [rdi]
	cmp	eax, dword ptr [rbp - 0x410]
	jg	.label_544
	cmp	dword ptr [rbp - 0x410], 0x70
	mov	rsp, rsp
	jg	.label_544
	lea	rdi, [rdi]
	movsxd	rax, dword ptr [rbp - 0x410]
	lea	rdi, [rdi]
	movsx	ecx,  byte ptr [byte ptr [+ (rax * 1) + yycheck]]
	cmp	ecx, 1
	mov	rbp, rbp
	jne	.label_544
	lea	rsi, [rsi]
	xor	eax, eax
	lea	rsi, [rsi]
	movsxd	rcx, dword ptr [rbp - 0x410]
	movzx	edx,  byte ptr [byte ptr [+ (rcx * 1) + yytable]]
	nop	
	mov	dword ptr [rbp - 0x410], edx
	cmp	eax, dword ptr [rbp - 0x410]
	jge	.label_561
	nop	
	jmp	.label_570
.label_561:
	jmp	.label_544
.label_544:
	jmp	.label_532
.label_532:
	mov	rax, qword ptr [rbp - 0x418]
	cmp	rax, qword ptr [rbp - 0x5b0]
	mov	rbp, rbp
	jne	.label_574
	lea	rdi, [rdi]
	jmp	.label_146
.label_574:
	movabs	rdi, OFFSET FLAT:.str.14_0
	movsxd	rax, dword ptr [rbp - 0x4d4]
	movzx	esi,  byte ptr [byte ptr [+ (rax * 1) + yystos]]
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x258]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x5c0]
	call	yydestruct
	mov	rax, qword ptr [rbp - 0x258]
	add	rax, -0x38
	mov	qword ptr [rbp - 0x258], rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x418]
	add	rax, -2
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x418], rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x418]
	movsx	esi, word ptr [rax]
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x4d4], esi
	jmp	.label_600
.label_570:
	mov	rbp, rbp
	mov	eax, 0x38
	mov	rbp, rbp
	mov	edx, eax
	lea	rcx, [rbp - 0x38]
	mov	rsi, qword ptr [rbp - 0x258]
	nop	
	add	rsi, 0x38
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x258], rsi
	mov	rbp, rbp
	mov	rdi, rsi
	mov	rbp, rbp
	mov	rsi, rcx
	call	memcpy
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x410]
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x4d4], eax
	mov	rbp, rbp
	jmp	.label_286
.label_1137:
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x24c], 0
	nop	
	jmp	.label_636
.label_146:
	mov	dword ptr [rbp - 0x24c], 1
	nop	
	jmp	.label_636
.label_1000:
	movabs	rsi, OFFSET FLAT:.str.1_3
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x5c0]
	call	yyerror
	mov	dword ptr [rbp - 0x24c], 2
	mov	dword ptr [rbp - 0x324], eax
.label_636:
	lea	rsi, [rsi]
	cmp	dword ptr [rbp - 0xcac], -2
	mov	rbp, rbp
	je	.label_650
	mov	rbp, rbp
	cmp	dword ptr [rbp - 0xcac], 0x115
	nop	
	ja	.label_652
	movsxd	rax, dword ptr [rbp - 0xcac]
	mov	rbp, rbp
	movzx	ecx,  byte ptr [byte ptr [+ (rax * 1) + yytranslate]]
	mov	dword ptr [rbp - 0x344], ecx
	lea	rsi, [rsi]
	jmp	.label_656
.label_652:
	mov	eax, 2
	mov	dword ptr [rbp - 0x344], eax
	jmp	.label_656
.label_656:
	mov	eax, dword ptr [rbp - 0x344]
	movabs	rdi, OFFSET FLAT:.str.16
	lea	rdx, [rbp - 0x38]
	mov	dword ptr [rbp - 0x1b4], eax
	lea	rdi, [rdi]
	mov	esi, dword ptr [rbp - 0x1b4]
	mov	rcx, qword ptr [rbp - 0x5c0]
	call	yydestruct
.label_650:
	lea	rsi, [rsi]
	xor	eax, eax
	mov	ecx, eax
	mov	eax, dword ptr [rbp - 0x22c]
	mov	rdx, qword ptr [rbp - 0x258]
	nop	
	movsxd	rsi, eax
	mov	rdi, rcx
	nop	
	sub	rdi, rsi
	lea	rdi, [rdi]
	imul	rsi, rdi, 0x38
	lea	rsi, [rsi]
	add	rdx, rsi
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x258], rdx
	mov	eax, dword ptr [rbp - 0x22c]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x418]
	movsxd	rsi, eax
	lea	rdi, [rdi]
	sub	rcx, rsi
	shl	rcx, 1
	add	rdx, rcx
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x418], rdx
.label_721:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x418]
	lea	rdi, [rdi]
	cmp	rax, qword ptr [rbp - 0x5b0]
	lea	rdi, [rdi]
	je	.label_700
	mov	rsp, rsp
	movabs	rdi, OFFSET FLAT:.str.17_1
	mov	rax, qword ptr [rbp - 0x418]
	lea	rdi, [rdi]
	movsx	rax, word ptr [rax]
	lea	rsi, [rsi]
	movzx	esi,  byte ptr [byte ptr [+ (rax * 1) + yystos]]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x258]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x5c0]
	call	yydestruct
	mov	rax, qword ptr [rbp - 0x258]
	mov	rsp, rsp
	add	rax, -0x38
	mov	qword ptr [rbp - 0x258], rax
	mov	rax, qword ptr [rbp - 0x418]
	add	rax, -2
	nop	
	mov	qword ptr [rbp - 0x418], rax
	jmp	.label_721
.label_700:
	lea	rax, [rbp - 0x220]
	nop	
	mov	rcx, qword ptr [rbp - 0x5b0]
	lea	rdi, [rdi]
	cmp	rcx, rax
	je	.label_730
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x5b0]
	mov	rdi, rax
	call	free
.label_730:
	nop	
	mov	eax, dword ptr [rbp - 0x24c]
	nop	
	add	rsp, 0xdf0
	lea	rsi, [rsi]
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4138d0

	.globl yylex
	.type yylex, @function
yylex:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x5d0
	mov	qword ptr [rbp - 0x4f8], rdi
	mov	qword ptr [rbp - 0x160], rsi
.label_1317:
	lea	rdi, [rdi]
	jmp	.label_1217
.label_1217:
	mov	rax, qword ptr [rbp - 0x160]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax]
	mov	cl, byte ptr [rax]
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x135], cl
	mov	rbp, rbp
	movzx	edi, byte ptr [rbp - 0x135]
	nop	
	call	c_isspace
	test	al, 1
	nop	
	jne	.label_1229
	lea	rsi, [rsi]
	jmp	.label_1232
.label_1229:
	mov	rax, qword ptr [rbp - 0x160]
	nop	
	mov	rcx, qword ptr [rax]
	add	rcx, 1
	mov	qword ptr [rax], rcx
	jmp	.label_1217
.label_1232:
	mov	rsp, rsp
	movzx	edi, byte ptr [rbp - 0x135]
	mov	rsp, rsp
	call	c_isdigit
	test	al, 1
	lea	rsi, [rsi]
	jne	.label_1249
	mov	rbp, rbp
	movzx	eax, byte ptr [rbp - 0x135]
	lea	rsi, [rsi]
	cmp	eax, 0x2d
	mov	rbp, rbp
	je	.label_1249
	movzx	eax, byte ptr [rbp - 0x135]
	cmp	eax, 0x2b
	jne	.label_1210
.label_1249:
	mov	qword ptr [rbp - 0x288], 0
	movzx	eax, byte ptr [rbp - 0x135]
	cmp	eax, 0x2d
	je	.label_1234
	movzx	eax, byte ptr [rbp - 0x135]
	mov	rsp, rsp
	cmp	eax, 0x2b
	jne	.label_1282
.label_1234:
	mov	eax, 1
	mov	ecx, 0xffffffff
	nop	
	movzx	edx, byte ptr [rbp - 0x135]
	nop	
	cmp	edx, 0x2d
	lea	rdi, [rdi]
	cmove	eax, ecx
	mov	dword ptr [rbp - 0x110], eax
.label_1308:
	mov	rax, qword ptr [rbp - 0x160]
	mov	rcx, qword ptr [rax]
	mov	rbp, rbp
	mov	rdx, rcx
	lea	rsi, [rsi]
	add	rdx, 1
	mov	qword ptr [rax], rdx
	mov	sil, byte ptr [rcx + 1]
	mov	byte ptr [rbp - 0x135], sil
	nop	
	movzx	edi, byte ptr [rbp - 0x135]
	call	c_isspace
	mov	rsp, rsp
	test	al, 1
	jne	.label_1622
	lea	rsi, [rsi]
	jmp	.label_1304
.label_1622:
	jmp	.label_1308
.label_1304:
	mov	rsp, rsp
	movzx	edi, byte ptr [rbp - 0x135]
	call	c_isdigit
	mov	rbp, rbp
	test	al, 1
	jne	.label_1516
	mov	rbp, rbp
	jmp	.label_1317
.label_1516:
	nop	
	jmp	.label_1321
.label_1282:
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x110], 0
.label_1321:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x160]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax]
	nop	
	mov	qword ptr [rbp - 0x378], rax
.label_1442:
	xor	eax, eax
	mov	rbp, rbp
	mov	cl, al
	test	cl, 1
	mov	rsp, rsp
	jne	.label_1334
	nop	
	jmp	.label_1339
.label_1334:
	mov	rsp, rsp
	xor	eax, eax
	mov	rsp, rsp
	mov	cl, al
	test	cl, 1
	mov	rsp, rsp
	jne	.label_1342
	jmp	.label_1679
.label_1342:
	xor	eax, eax
	lea	rdi, [rdi]
	mov	cl, al
	mov	rbp, rbp
	test	cl, 1
	lea	rsi, [rsi]
	jne	.label_1349
	lea	rdi, [rdi]
	jmp	.label_1354
.label_1349:
	mov	rax, qword ptr [rbp - 0x288]
	lea	rdi, [rdi]
	mov	cl, al
	nop	
	movsx	edx, cl
	mov	rsp, rsp
	cmp	edx, 0
	jge	.label_1356
	mov	rax, qword ptr [rbp - 0x288]
	mov	cl, al
	lea	rdi, [rdi]
	movsx	edx, cl
	nop	
	cmp	edx, 0xccccccc
	jl	.label_1226
	lea	rsi, [rsi]
	jmp	.label_1371
.label_1356:
	xor	eax, eax
	mov	rbp, rbp
	mov	cl, al
	mov	rbp, rbp
	test	cl, 1
	jne	.label_1373
	jmp	.label_1380
.label_1373:
	nop	
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_1226
	mov	rbp, rbp
	jmp	.label_1371
.label_1380:
	mov	eax, 0xf3333334
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x288]
	mov	rsp, rsp
	mov	dl, cl
	mov	rbp, rbp
	movsx	esi, dl
	cmp	eax, esi
	nop	
	jl	.label_1226
	jmp	.label_1371
.label_1354:
	lea	rdi, [rdi]
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_1399
	lea	rsi, [rsi]
	jmp	.label_1403
.label_1399:
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_1226
	nop	
	jmp	.label_1371
.label_1403:
	mov	rax, qword ptr [rbp - 0x288]
	lea	rdi, [rdi]
	mov	cl, al
	movsx	edx, cl
	mov	rbp, rbp
	cmp	edx, 0
	mov	rsp, rsp
	jge	.label_1413
	nop	
	mov	rax, qword ptr [rbp - 0x288]
	mov	cl, al
	mov	rbp, rbp
	movsx	edx, cl
	cmp	edx, 0xf3333334
	jl	.label_1226
	mov	rbp, rbp
	jmp	.label_1371
.label_1413:
	lea	rsi, [rsi]
	mov	eax, 0xccccccc
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x288]
	mov	dl, cl
	movsx	esi, dl
	lea	rdi, [rdi]
	cmp	eax, esi
	lea	rsi, [rsi]
	jl	.label_1226
.label_1371:
	mov	rax, qword ptr [rbp - 0x288]
	lea	rdi, [rdi]
	mov	cl, al
	movsx	edx, cl
	imul	edx, edx, 0xa
	mov	rbp, rbp
	cmp	edx, -0x80
	lea	rdi, [rdi]
	jl	.label_1226
	mov	eax, 0x7f
	mov	rcx, qword ptr [rbp - 0x288]
	nop	
	mov	dl, cl
	mov	rbp, rbp
	movsx	esi, dl
	imul	esi, esi, 0xa
	lea	rsi, [rsi]
	cmp	eax, esi
	mov	rbp, rbp
	jge	.label_1447
.label_1226:
	mov	al, 1
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x288]
	lea	rsi, [rsi]
	mov	dl, cl
	lea	rsi, [rsi]
	movsx	esi, dl
	imul	esi, esi, 0xa
	mov	rbp, rbp
	mov	dl, sil
	mov	rbp, rbp
	movsx	rcx, dl
	nop	
	mov	qword ptr [rbp - 0x288], rcx
	lea	rsi, [rsi]
	test	al, 1
	jne	.label_1165
	jmp	.label_1185
.label_1447:
	lea	rsi, [rsi]
	xor	eax, eax
	mov	cl, al
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x288]
	mov	rsp, rsp
	mov	sil, dl
	lea	rdi, [rdi]
	movsx	eax, sil
	imul	eax, eax, 0xa
	lea	rdi, [rdi]
	mov	sil, al
	movsx	rdx, sil
	mov	qword ptr [rbp - 0x288], rdx
	test	cl, 1
	jne	.label_1165
	mov	rsp, rsp
	jmp	.label_1185
.label_1679:
	mov	rbp, rbp
	xor	eax, eax
	mov	rsp, rsp
	mov	cl, al
	test	cl, 1
	lea	rdi, [rdi]
	jne	.label_1485
	lea	rsi, [rsi]
	jmp	.label_1493
.label_1485:
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0x288], 0
	jge	.label_1495
	lea	rdi, [rdi]
	movabs	rax, 0xccccccccccccccc
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x288], rax
	jl	.label_1512
	jmp	.label_1224
.label_1495:
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_1503
	nop	
	jmp	.label_1510
.label_1503:
	lea	rdi, [rdi]
	xor	eax, eax
	lea	rsi, [rsi]
	mov	cl, al
	nop	
	test	cl, 1
	jne	.label_1512
	jmp	.label_1224
.label_1510:
	lea	rdi, [rdi]
	movabs	rax, 0xf333333333333334
	cmp	rax, qword ptr [rbp - 0x288]
	jl	.label_1512
	lea	rsi, [rsi]
	jmp	.label_1224
.label_1493:
	xor	eax, eax
	mov	rbp, rbp
	mov	cl, al
	lea	rdi, [rdi]
	test	cl, 1
	mov	rbp, rbp
	jne	.label_1527
	jmp	.label_1437
.label_1527:
	mov	rsp, rsp
	xor	eax, eax
	nop	
	mov	cl, al
	test	cl, 1
	lea	rsi, [rsi]
	jne	.label_1512
	nop	
	jmp	.label_1224
.label_1437:
	cmp	qword ptr [rbp - 0x288], 0
	jge	.label_1537
	movabs	rax, 0xf333333333333334
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x288], rax
	mov	rbp, rbp
	jl	.label_1512
	mov	rsp, rsp
	jmp	.label_1224
.label_1537:
	movabs	rax, 0xccccccccccccccc
	nop	
	cmp	rax, qword ptr [rbp - 0x288]
	jl	.label_1512
.label_1224:
	imul	rax, qword ptr [rbp - 0x288], 0xa
	cmp	rax, -0x80
	jl	.label_1512
	mov	rsp, rsp
	mov	eax, 0x7f
	mov	ecx, eax
	lea	rsi, [rsi]
	imul	rdx, qword ptr [rbp - 0x288], 0xa
	cmp	rcx, rdx
	jge	.label_1559
.label_1512:
	lea	rsi, [rsi]
	mov	al, 1
	mov	rcx, qword ptr [rbp - 0x288]
	lea	rdi, [rdi]
	mov	edx, ecx
	imul	edx, edx, 0xa
	nop	
	mov	sil, dl
	lea	rdi, [rdi]
	movsx	rcx, sil
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x288], rcx
	lea	rsi, [rsi]
	test	al, 1
	nop	
	jne	.label_1165
	jmp	.label_1185
.label_1559:
	lea	rsi, [rsi]
	xor	eax, eax
	nop	
	mov	cl, al
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x288]
	mov	eax, edx
	lea	rsi, [rsi]
	imul	eax, eax, 0xa
	mov	sil, al
	movsx	rdx, sil
	mov	qword ptr [rbp - 0x288], rdx
	test	cl, 1
	jne	.label_1165
	mov	rsp, rsp
	jmp	.label_1185
.label_1339:
	xor	eax, eax
	lea	rdi, [rdi]
	mov	cl, al
	test	cl, 1
	jne	.label_1613
	jmp	.label_1597
.label_1613:
	mov	rbp, rbp
	xor	eax, eax
	mov	rbp, rbp
	mov	cl, al
	nop	
	test	cl, 1
	lea	rdi, [rdi]
	jne	.label_1600
	mov	rbp, rbp
	jmp	.label_1607
.label_1600:
	mov	rsp, rsp
	xor	eax, eax
	mov	cl, al
	lea	rdi, [rdi]
	test	cl, 1
	mov	rbp, rbp
	jne	.label_1609
	nop	
	jmp	.label_1615
.label_1609:
	mov	rax, qword ptr [rbp - 0x288]
	lea	rdi, [rdi]
	mov	cx, ax
	movsx	edx, cx
	cmp	edx, 0
	jge	.label_1194
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x288]
	mov	rbp, rbp
	mov	cx, ax
	nop	
	movsx	edx, cx
	mov	rsp, rsp
	cmp	edx, 0xccccccc
	lea	rdi, [rdi]
	jl	.label_1482
	mov	rbp, rbp
	jmp	.label_1384
.label_1194:
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_1637
	jmp	.label_1642
.label_1637:
	xor	eax, eax
	mov	rbp, rbp
	mov	cl, al
	lea	rdi, [rdi]
	test	cl, 1
	lea	rsi, [rsi]
	jne	.label_1482
	nop	
	jmp	.label_1384
.label_1642:
	lea	rsi, [rsi]
	mov	eax, 0xf3333334
	mov	rcx, qword ptr [rbp - 0x288]
	mov	dx, cx
	movsx	esi, dx
	cmp	eax, esi
	mov	rbp, rbp
	jl	.label_1482
	jmp	.label_1384
.label_1615:
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	nop	
	jne	.label_1662
	nop	
	jmp	.label_1666
.label_1662:
	mov	rbp, rbp
	xor	eax, eax
	lea	rsi, [rsi]
	mov	cl, al
	test	cl, 1
	mov	rbp, rbp
	jne	.label_1482
	jmp	.label_1384
.label_1666:
	mov	rax, qword ptr [rbp - 0x288]
	mov	rbp, rbp
	mov	cx, ax
	movsx	edx, cx
	mov	rbp, rbp
	cmp	edx, 0
	jge	.label_1671
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x288]
	mov	rbp, rbp
	mov	cx, ax
	mov	rsp, rsp
	movsx	edx, cx
	cmp	edx, 0xf3333334
	mov	rbp, rbp
	jl	.label_1482
	nop	
	jmp	.label_1384
.label_1671:
	lea	rsi, [rsi]
	mov	eax, 0xccccccc
	mov	rcx, qword ptr [rbp - 0x288]
	mov	dx, cx
	movsx	esi, dx
	nop	
	cmp	eax, esi
	jl	.label_1482
.label_1384:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x288]
	mov	cx, ax
	movsx	edx, cx
	imul	edx, edx, 0xa
	cmp	edx, 0xffff8000
	lea	rdi, [rdi]
	jl	.label_1482
	mov	eax, 0x7fff
	mov	rcx, qword ptr [rbp - 0x288]
	mov	dx, cx
	mov	rsp, rsp
	movsx	esi, dx
	lea	rdi, [rdi]
	imul	esi, esi, 0xa
	cmp	eax, esi
	jge	.label_1162
.label_1482:
	mov	al, 1
	mov	rcx, qword ptr [rbp - 0x288]
	mov	dx, cx
	movsx	esi, dx
	mov	rsp, rsp
	imul	esi, esi, 0xa
	mov	dx, si
	mov	rsp, rsp
	movsx	rcx, dx
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x288], rcx
	test	al, 1
	jne	.label_1165
	jmp	.label_1185
.label_1162:
	mov	rsp, rsp
	xor	eax, eax
	nop	
	mov	cl, al
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x288]
	mov	si, dx
	nop	
	movsx	eax, si
	nop	
	imul	eax, eax, 0xa
	mov	si, ax
	movsx	rdx, si
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x288], rdx
	mov	rsp, rsp
	test	cl, 1
	jne	.label_1165
	jmp	.label_1185
.label_1607:
	xor	eax, eax
	lea	rsi, [rsi]
	mov	cl, al
	test	cl, 1
	jne	.label_1201
	jmp	.label_1206
.label_1201:
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x288], 0
	jge	.label_1207
	lea	rsi, [rsi]
	movabs	rax, 0xccccccccccccccc
	cmp	qword ptr [rbp - 0x288], rax
	lea	rdi, [rdi]
	jl	.label_1213
	nop	
	jmp	.label_1221
.label_1207:
	lea	rsi, [rsi]
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_1223
	nop	
	jmp	.label_1225
.label_1223:
	mov	rbp, rbp
	xor	eax, eax
	mov	cl, al
	nop	
	test	cl, 1
	lea	rsi, [rsi]
	jne	.label_1213
	lea	rdi, [rdi]
	jmp	.label_1221
.label_1225:
	movabs	rax, 0xf333333333333334
	lea	rdi, [rdi]
	cmp	rax, qword ptr [rbp - 0x288]
	jl	.label_1213
	mov	rbp, rbp
	jmp	.label_1221
.label_1206:
	xor	eax, eax
	mov	rsp, rsp
	mov	cl, al
	lea	rdi, [rdi]
	test	cl, 1
	jne	.label_1244
	jmp	.label_1253
.label_1244:
	lea	rdi, [rdi]
	xor	eax, eax
	lea	rdi, [rdi]
	mov	cl, al
	test	cl, 1
	jne	.label_1213
	jmp	.label_1221
.label_1253:
	cmp	qword ptr [rbp - 0x288], 0
	jge	.label_1259
	movabs	rax, 0xf333333333333334
	cmp	qword ptr [rbp - 0x288], rax
	jl	.label_1213
	jmp	.label_1221
.label_1259:
	nop	
	movabs	rax, 0xccccccccccccccc
	mov	rbp, rbp
	cmp	rax, qword ptr [rbp - 0x288]
	lea	rsi, [rsi]
	jl	.label_1213
.label_1221:
	mov	rbp, rbp
	imul	rax, qword ptr [rbp - 0x288], 0xa
	cmp	rax, -0x8000
	jl	.label_1213
	mov	eax, 0x7fff
	lea	rsi, [rsi]
	mov	ecx, eax
	lea	rdi, [rdi]
	imul	rdx, qword ptr [rbp - 0x288], 0xa
	nop	
	cmp	rcx, rdx
	lea	rsi, [rsi]
	jge	.label_1377
.label_1213:
	mov	rsp, rsp
	mov	al, 1
	mov	rcx, qword ptr [rbp - 0x288]
	mov	edx, ecx
	lea	rsi, [rsi]
	imul	edx, edx, 0xa
	lea	rsi, [rsi]
	mov	si, dx
	mov	rsp, rsp
	movsx	rcx, si
	nop	
	mov	qword ptr [rbp - 0x288], rcx
	test	al, 1
	lea	rsi, [rsi]
	jne	.label_1165
	jmp	.label_1185
.label_1377:
	xor	eax, eax
	nop	
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x288]
	mov	eax, edx
	lea	rdi, [rdi]
	imul	eax, eax, 0xa
	mov	si, ax
	lea	rdi, [rdi]
	movsx	rdx, si
	mov	qword ptr [rbp - 0x288], rdx
	lea	rdi, [rdi]
	test	cl, 1
	lea	rdi, [rdi]
	jne	.label_1165
	jmp	.label_1185
.label_1597:
	xor	eax, eax
	lea	rdi, [rdi]
	mov	cl, al
	lea	rsi, [rsi]
	test	cl, 1
	jne	.label_1333
	lea	rdi, [rdi]
	jmp	.label_1337
.label_1333:
	mov	rbp, rbp
	xor	eax, eax
	lea	rdi, [rdi]
	mov	cl, al
	lea	rsi, [rsi]
	test	cl, 1
	jne	.label_1341
	lea	rdi, [rdi]
	jmp	.label_1347
.label_1341:
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_1350
	jmp	.label_1351
.label_1350:
	mov	rax, qword ptr [rbp - 0x288]
	mov	rsp, rsp
	mov	ecx, eax
	cmp	ecx, 0
	nop	
	jge	.label_1353
	mov	rax, qword ptr [rbp - 0x288]
	mov	ecx, eax
	cmp	ecx, 0xccccccc
	jl	.label_1319
	lea	rdi, [rdi]
	jmp	.label_1365
.label_1353:
	mov	rsp, rsp
	xor	eax, eax
	mov	rsp, rsp
	mov	cl, al
	mov	rbp, rbp
	test	cl, 1
	lea	rsi, [rsi]
	jne	.label_1256
	lea	rdi, [rdi]
	jmp	.label_1374
.label_1256:
	lea	rsi, [rsi]
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	lea	rsi, [rsi]
	jne	.label_1319
	nop	
	jmp	.label_1365
.label_1374:
	mov	eax, 0xf3333334
	mov	rcx, qword ptr [rbp - 0x288]
	mov	edx, ecx
	cmp	eax, edx
	mov	rbp, rbp
	jl	.label_1319
	jmp	.label_1365
.label_1351:
	xor	eax, eax
	lea	rsi, [rsi]
	mov	cl, al
	test	cl, 1
	lea	rdi, [rdi]
	jne	.label_1391
	lea	rdi, [rdi]
	jmp	.label_1397
.label_1391:
	lea	rdi, [rdi]
	xor	eax, eax
	mov	rbp, rbp
	mov	cl, al
	lea	rdi, [rdi]
	test	cl, 1
	jne	.label_1319
	nop	
	jmp	.label_1365
.label_1397:
	mov	rax, qword ptr [rbp - 0x288]
	lea	rsi, [rsi]
	mov	ecx, eax
	cmp	ecx, 0
	nop	
	jge	.label_1408
	mov	rax, qword ptr [rbp - 0x288]
	mov	ecx, eax
	lea	rdi, [rdi]
	cmp	ecx, 0xf3333334
	lea	rdi, [rdi]
	jl	.label_1319
	mov	rsp, rsp
	jmp	.label_1365
.label_1408:
	mov	eax, 0xccccccc
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x288]
	mov	edx, ecx
	mov	rsp, rsp
	cmp	eax, edx
	jl	.label_1319
.label_1365:
	nop	
	mov	rax, qword ptr [rbp - 0x288]
	lea	rsi, [rsi]
	mov	ecx, eax
	lea	rdi, [rdi]
	imul	ecx, ecx, 0xa
	cmp	ecx, 0x80000000
	lea	rdi, [rdi]
	jl	.label_1319
	mov	eax, 0x7fffffff
	mov	rcx, qword ptr [rbp - 0x288]
	mov	edx, ecx
	lea	rdi, [rdi]
	imul	edx, edx, 0xa
	cmp	eax, edx
	mov	rsp, rsp
	jge	.label_1439
.label_1319:
	mov	al, 1
	mov	rcx, qword ptr [rbp - 0x288]
	mov	rsp, rsp
	mov	edx, ecx
	imul	edx, edx, 0xa
	movsxd	rcx, edx
	mov	qword ptr [rbp - 0x288], rcx
	test	al, 1
	mov	rbp, rbp
	jne	.label_1165
	jmp	.label_1185
.label_1439:
	xor	eax, eax
	lea	rsi, [rsi]
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x288]
	mov	eax, edx
	lea	rdi, [rdi]
	imul	eax, eax, 0xa
	movsxd	rdx, eax
	mov	qword ptr [rbp - 0x288], rdx
	mov	rbp, rbp
	test	cl, 1
	nop	
	jne	.label_1165
	jmp	.label_1185
.label_1347:
	xor	eax, eax
	nop	
	mov	cl, al
	test	cl, 1
	jne	.label_1465
	mov	rbp, rbp
	jmp	.label_1470
.label_1465:
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x288], 0
	lea	rdi, [rdi]
	jge	.label_1471
	mov	rbp, rbp
	movabs	rax, 0xccccccccccccccc
	cmp	qword ptr [rbp - 0x288], rax
	nop	
	jl	.label_1412
	jmp	.label_1484
.label_1471:
	xor	eax, eax
	mov	cl, al
	nop	
	test	cl, 1
	jne	.label_1456
	jmp	.label_1492
.label_1456:
	mov	rsp, rsp
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	lea	rdi, [rdi]
	jne	.label_1412
	jmp	.label_1484
.label_1492:
	mov	rsp, rsp
	movabs	rax, 0xf333333333333334
	nop	
	cmp	rax, qword ptr [rbp - 0x288]
	mov	rsp, rsp
	jl	.label_1412
	mov	rbp, rbp
	jmp	.label_1484
.label_1470:
	xor	eax, eax
	mov	rbp, rbp
	mov	cl, al
	test	cl, 1
	lea	rsi, [rsi]
	jne	.label_1505
	jmp	.label_1515
.label_1505:
	xor	eax, eax
	mov	rbp, rbp
	mov	cl, al
	lea	rdi, [rdi]
	test	cl, 1
	jne	.label_1412
	jmp	.label_1484
.label_1515:
	cmp	qword ptr [rbp - 0x288], 0
	jge	.label_1521
	lea	rsi, [rsi]
	movabs	rax, 0xf333333333333334
	cmp	qword ptr [rbp - 0x288], rax
	jl	.label_1412
	jmp	.label_1484
.label_1521:
	movabs	rax, 0xccccccccccccccc
	cmp	rax, qword ptr [rbp - 0x288]
	lea	rsi, [rsi]
	jl	.label_1412
.label_1484:
	imul	rax, qword ptr [rbp - 0x288], 0xa
	lea	rdi, [rdi]
	cmp	rax, -0x80000000
	jl	.label_1412
	mov	eax, 0x7fffffff
	mov	ecx, eax
	lea	rsi, [rsi]
	imul	rdx, qword ptr [rbp - 0x288], 0xa
	mov	rbp, rbp
	cmp	rcx, rdx
	jge	.label_1545
.label_1412:
	lea	rdi, [rdi]
	mov	al, 1
	mov	rcx, qword ptr [rbp - 0x288]
	mov	edx, ecx
	imul	edx, edx, 0xa
	movsxd	rcx, edx
	mov	qword ptr [rbp - 0x288], rcx
	mov	rbp, rbp
	test	al, 1
	jne	.label_1165
	jmp	.label_1185
.label_1545:
	lea	rdi, [rdi]
	xor	eax, eax
	mov	rbp, rbp
	mov	cl, al
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x288]
	mov	eax, edx
	imul	eax, eax, 0xa
	lea	rsi, [rsi]
	movsxd	rdx, eax
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x288], rdx
	lea	rdi, [rdi]
	test	cl, 1
	jne	.label_1165
	lea	rdi, [rdi]
	jmp	.label_1185
.label_1337:
	mov	al, 1
	mov	rbp, rbp
	test	al, 1
	jne	.label_1571
	jmp	.label_1575
.label_1571:
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_1577
	jmp	.label_1581
.label_1577:
	nop	
	xor	eax, eax
	mov	rbp, rbp
	mov	cl, al
	lea	rsi, [rsi]
	test	cl, 1
	jne	.label_1585
	lea	rdi, [rdi]
	jmp	.label_1592
.label_1585:
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x288], 0
	jge	.label_1594
	mov	rbp, rbp
	movabs	rax, 0xccccccccccccccc
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0x288], rax
	jl	.label_1573
	jmp	.label_1184
.label_1594:
	xor	eax, eax
	lea	rdi, [rdi]
	mov	cl, al
	test	cl, 1
	jne	.label_1601
	jmp	.label_1606
.label_1601:
	lea	rdi, [rdi]
	xor	eax, eax
	mov	rbp, rbp
	mov	cl, al
	lea	rdi, [rdi]
	test	cl, 1
	mov	rbp, rbp
	jne	.label_1573
	mov	rbp, rbp
	jmp	.label_1184
.label_1606:
	nop	
	movabs	rax, 0xf333333333333334
	cmp	rax, qword ptr [rbp - 0x288]
	mov	rbp, rbp
	jl	.label_1573
	jmp	.label_1184
.label_1592:
	xor	eax, eax
	lea	rsi, [rsi]
	mov	cl, al
	mov	rbp, rbp
	test	cl, 1
	lea	rsi, [rsi]
	jne	.label_1621
	jmp	.label_1632
.label_1621:
	lea	rsi, [rsi]
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_1573
	mov	rbp, rbp
	jmp	.label_1184
.label_1632:
	cmp	qword ptr [rbp - 0x288], 0
	jge	.label_1641
	lea	rdi, [rdi]
	movabs	rax, 0xf333333333333334
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x288], rax
	jl	.label_1573
	mov	rsp, rsp
	jmp	.label_1184
.label_1641:
	movabs	rax, 0xccccccccccccccc
	mov	rsp, rsp
	cmp	rax, qword ptr [rbp - 0x288]
	mov	rbp, rbp
	jl	.label_1573
.label_1184:
	movabs	rax, 0x8000000000000000
	lea	rsi, [rsi]
	imul	rcx, qword ptr [rbp - 0x288], 0xa
	cmp	rcx, rax
	lea	rdi, [rdi]
	jl	.label_1573
	movabs	rax, 0x7fffffffffffffff
	imul	rcx, qword ptr [rbp - 0x288], 0xa
	lea	rdi, [rdi]
	cmp	rax, rcx
	jge	.label_1669
.label_1573:
	nop	
	mov	al, 1
	imul	rcx, qword ptr [rbp - 0x288], 0xa
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x288], rcx
	test	al, 1
	jne	.label_1165
	jmp	.label_1185
.label_1669:
	xor	eax, eax
	mov	rsp, rsp
	mov	cl, al
	imul	rdx, qword ptr [rbp - 0x288], 0xa
	mov	qword ptr [rbp - 0x288], rdx
	mov	rsp, rsp
	test	cl, 1
	nop	
	jne	.label_1165
	mov	rsp, rsp
	jmp	.label_1185
.label_1581:
	nop	
	xor	eax, eax
	mov	rbp, rbp
	mov	cl, al
	test	cl, 1
	jne	.label_1694
	mov	rbp, rbp
	jmp	.label_1158
.label_1694:
	cmp	qword ptr [rbp - 0x288], 0
	jge	.label_1159
	movabs	rax, 0xccccccccccccccc
	cmp	qword ptr [rbp - 0x288], rax
	jl	.label_1164
	jmp	.label_1168
.label_1159:
	mov	rbp, rbp
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_1172
	jmp	.label_1177
.label_1172:
	xor	eax, eax
	mov	rbp, rbp
	mov	cl, al
	mov	rbp, rbp
	test	cl, 1
	jne	.label_1164
	jmp	.label_1168
.label_1177:
	movabs	rax, 0xf333333333333334
	cmp	rax, qword ptr [rbp - 0x288]
	lea	rdi, [rdi]
	jl	.label_1164
	lea	rsi, [rsi]
	jmp	.label_1168
.label_1158:
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_1382
	nop	
	jmp	.label_1193
.label_1382:
	xor	eax, eax
	mov	cl, al
	lea	rdi, [rdi]
	test	cl, 1
	mov	rsp, rsp
	jne	.label_1164
	jmp	.label_1168
.label_1193:
	cmp	qword ptr [rbp - 0x288], 0
	jge	.label_1202
	mov	rsp, rsp
	movabs	rax, 0xf333333333333334
	cmp	qword ptr [rbp - 0x288], rax
	jl	.label_1164
	jmp	.label_1168
.label_1202:
	nop	
	movabs	rax, 0xccccccccccccccc
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rbp - 0x288]
	jl	.label_1164
.label_1168:
	lea	rdi, [rdi]
	movabs	rax, 0x8000000000000000
	imul	rcx, qword ptr [rbp - 0x288], 0xa
	cmp	rcx, rax
	jl	.label_1164
	movabs	rax, 0x7fffffffffffffff
	imul	rcx, qword ptr [rbp - 0x288], 0xa
	cmp	rax, rcx
	mov	rsp, rsp
	jge	.label_1228
.label_1164:
	mov	al, 1
	mov	rbp, rbp
	imul	rcx, qword ptr [rbp - 0x288], 0xa
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x288], rcx
	nop	
	test	al, 1
	jne	.label_1165
	mov	rbp, rbp
	jmp	.label_1185
.label_1228:
	mov	rsp, rsp
	xor	eax, eax
	nop	
	mov	cl, al
	mov	rbp, rbp
	imul	rdx, qword ptr [rbp - 0x288], 0xa
	nop	
	mov	qword ptr [rbp - 0x288], rdx
	test	cl, 1
	mov	rsp, rsp
	jne	.label_1165
	jmp	.label_1185
.label_1575:
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_1265
	mov	rsp, rsp
	jmp	.label_1267
.label_1265:
	xor	eax, eax
	lea	rdi, [rdi]
	mov	cl, al
	test	cl, 1
	lea	rdi, [rdi]
	jne	.label_1269
	mov	rbp, rbp
	jmp	.label_1274
.label_1269:
	nop	
	cmp	qword ptr [rbp - 0x288], 0
	nop	
	jge	.label_1276
	movabs	rax, 0xccccccccccccccc
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x288], rax
	nop	
	jl	.label_1280
	mov	rbp, rbp
	jmp	.label_1287
.label_1276:
	lea	rsi, [rsi]
	xor	eax, eax
	mov	cl, al
	mov	rbp, rbp
	test	cl, 1
	jne	.label_1289
	jmp	.label_1295
.label_1289:
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	mov	rsp, rsp
	jne	.label_1280
	mov	rbp, rbp
	jmp	.label_1287
.label_1295:
	mov	rbp, rbp
	movabs	rax, 0xf333333333333334
	cmp	rax, qword ptr [rbp - 0x288]
	jl	.label_1280
	lea	rsi, [rsi]
	jmp	.label_1287
.label_1274:
	xor	eax, eax
	mov	cl, al
	mov	rsp, rsp
	test	cl, 1
	jne	.label_1318
	jmp	.label_1324
.label_1318:
	nop	
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_1280
	jmp	.label_1287
.label_1324:
	cmp	qword ptr [rbp - 0x288], 0
	mov	rsp, rsp
	jge	.label_1593
	movabs	rax, 0xf333333333333334
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0x288], rax
	jl	.label_1280
	jmp	.label_1287
.label_1593:
	movabs	rax, 0xccccccccccccccc
	cmp	rax, qword ptr [rbp - 0x288]
	jl	.label_1280
.label_1287:
	movabs	rax, 0x8000000000000000
	imul	rcx, qword ptr [rbp - 0x288], 0xa
	nop	
	cmp	rcx, rax
	jl	.label_1280
	movabs	rax, 0x7fffffffffffffff
	lea	rsi, [rsi]
	imul	rcx, qword ptr [rbp - 0x288], 0xa
	cmp	rax, rcx
	jge	.label_1358
.label_1280:
	mov	al, 1
	lea	rdi, [rdi]
	imul	rcx, qword ptr [rbp - 0x288], 0xa
	mov	qword ptr [rbp - 0x288], rcx
	mov	rbp, rbp
	test	al, 1
	nop	
	jne	.label_1165
	jmp	.label_1185
.label_1358:
	xor	eax, eax
	mov	rbp, rbp
	mov	cl, al
	imul	rdx, qword ptr [rbp - 0x288], 0xa
	mov	qword ptr [rbp - 0x288], rdx
	mov	rsp, rsp
	test	cl, 1
	lea	rsi, [rsi]
	jne	.label_1165
	lea	rdi, [rdi]
	jmp	.label_1185
.label_1267:
	nop	
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	nop	
	jne	.label_1388
	mov	rbp, rbp
	jmp	.label_1392
.label_1388:
	cmp	qword ptr [rbp - 0x288], 0
	jge	.label_1394
	lea	rsi, [rsi]
	movabs	rax, 0xccccccccccccccc
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x288], rax
	mov	rsp, rsp
	jl	.label_1331
	jmp	.label_1216
.label_1394:
	xor	eax, eax
	mov	rbp, rbp
	mov	cl, al
	mov	rbp, rbp
	test	cl, 1
	mov	rbp, rbp
	jne	.label_1506
	mov	rsp, rsp
	jmp	.label_1539
.label_1506:
	lea	rsi, [rsi]
	xor	eax, eax
	nop	
	mov	cl, al
	mov	rsp, rsp
	test	cl, 1
	mov	rsp, rsp
	jne	.label_1331
	mov	rbp, rbp
	jmp	.label_1216
.label_1539:
	movabs	rax, 0xf333333333333334
	mov	rbp, rbp
	cmp	rax, qword ptr [rbp - 0x288]
	jl	.label_1331
	lea	rsi, [rsi]
	jmp	.label_1216
.label_1392:
	xor	eax, eax
	mov	rbp, rbp
	mov	cl, al
	nop	
	test	cl, 1
	jne	.label_1436
	mov	rbp, rbp
	jmp	.label_1200
.label_1436:
	nop	
	xor	eax, eax
	mov	cl, al
	mov	rbp, rbp
	test	cl, 1
	jne	.label_1331
	nop	
	jmp	.label_1216
.label_1200:
	cmp	qword ptr [rbp - 0x288], 0
	lea	rdi, [rdi]
	jge	.label_1448
	mov	rbp, rbp
	movabs	rax, 0xf333333333333334
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x288], rax
	mov	rsp, rsp
	jl	.label_1331
	lea	rdi, [rdi]
	jmp	.label_1216
.label_1448:
	movabs	rax, 0xccccccccccccccc
	mov	rbp, rbp
	cmp	rax, qword ptr [rbp - 0x288]
	mov	rbp, rbp
	jl	.label_1331
.label_1216:
	movabs	rax, 0x8000000000000000
	imul	rcx, qword ptr [rbp - 0x288], 0xa
	lea	rsi, [rsi]
	cmp	rcx, rax
	jl	.label_1331
	lea	rsi, [rsi]
	movabs	rax, 0x7fffffffffffffff
	imul	rcx, qword ptr [rbp - 0x288], 0xa
	cmp	rax, rcx
	mov	rbp, rbp
	jge	.label_1473
.label_1331:
	mov	al, 1
	imul	rcx, qword ptr [rbp - 0x288], 0xa
	nop	
	mov	qword ptr [rbp - 0x288], rcx
	test	al, 1
	jne	.label_1165
	jmp	.label_1185
.label_1473:
	xor	eax, eax
	nop	
	mov	cl, al
	imul	rdx, qword ptr [rbp - 0x288], 0xa
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x288], rdx
	test	cl, 1
	nop	
	jne	.label_1165
	jmp	.label_1185
.label_1165:
	mov	dword ptr [rbp - 0x3c8], 0x3f
	mov	rbp, rbp
	jmp	.label_1264
.label_1185:
	mov	rbp, rbp
	xor	eax, eax
	nop	
	mov	cl, al
	test	cl, 1
	lea	rdi, [rdi]
	jne	.label_1501
	mov	rsp, rsp
	jmp	.label_1511
.label_1501:
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_1514
	jmp	.label_1517
.label_1514:
	mov	rbp, rbp
	mov	al, 1
	lea	rdi, [rdi]
	test	al, 1
	lea	rdi, [rdi]
	jne	.label_1518
	jmp	.label_1523
.label_1518:
	cmp	dword ptr [rbp - 0x110], 0
	mov	rsp, rsp
	jge	.label_1525
	mov	eax, 0x30
	lea	rdi, [rdi]
	movzx	ecx, byte ptr [rbp - 0x135]
	lea	rdi, [rdi]
	sub	eax, ecx
	nop	
	mov	dword ptr [rbp - 0x434], eax
	jmp	.label_1528
.label_1525:
	mov	rsp, rsp
	movzx	eax, byte ptr [rbp - 0x135]
	mov	rsp, rsp
	sub	eax, 0x30
	mov	dword ptr [rbp - 0x434], eax
.label_1528:
	mov	eax, dword ptr [rbp - 0x434]
	lea	rsi, [rsi]
	mov	cl, al
	movsx	eax, cl
	lea	rdi, [rdi]
	cmp	eax, 0
	nop	
	jge	.label_1538
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x288]
	nop	
	mov	cl, al
	movsx	edx, cl
	cmp	dword ptr [rbp - 0x110], 0
	mov	dword ptr [rbp - 0x53c], edx
	jge	.label_1551
	nop	
	mov	eax, 0x30
	mov	rbp, rbp
	movzx	ecx, byte ptr [rbp - 0x135]
	lea	rsi, [rsi]
	sub	eax, ecx
	mov	dword ptr [rbp - 0x27c], eax
	jmp	.label_1557
.label_1551:
	movzx	eax, byte ptr [rbp - 0x135]
	sub	eax, 0x30
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x27c], eax
.label_1557:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x27c]
	nop	
	mov	ecx, 0x80000000
	mov	dl, al
	movsx	eax, dl
	lea	rsi, [rsi]
	sub	ecx, eax
	mov	eax, dword ptr [rbp - 0x53c]
	cmp	eax, ecx
	jl	.label_1252
	jmp	.label_1192
.label_1538:
	cmp	dword ptr [rbp - 0x110], 0
	jge	.label_1574
	mov	eax, 0x30
	movzx	ecx, byte ptr [rbp - 0x135]
	nop	
	sub	eax, ecx
	mov	dword ptr [rbp - 0x334], eax
	jmp	.label_1578
.label_1574:
	lea	rdi, [rdi]
	movzx	eax, byte ptr [rbp - 0x135]
	mov	rbp, rbp
	sub	eax, 0x30
	mov	dword ptr [rbp - 0x334], eax
.label_1578:
	mov	eax, dword ptr [rbp - 0x334]
	mov	ecx, 0x7fffffff
	mov	dl, al
	movsx	eax, dl
	sub	ecx, eax
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x288]
	mov	dl, sil
	movsx	eax, dl
	lea	rsi, [rsi]
	cmp	ecx, eax
	jl	.label_1252
	jmp	.label_1192
.label_1523:
	mov	rax, qword ptr [rbp - 0x288]
	mov	cl, al
	movsx	edx, cl
	mov	rsp, rsp
	cmp	edx, 0
	mov	rbp, rbp
	jge	.label_1605
	lea	rsi, [rsi]
	cmp	dword ptr [rbp - 0x110], 0
	mov	rsp, rsp
	jge	.label_1612
	mov	eax, 0x30
	movzx	ecx, byte ptr [rbp - 0x135]
	nop	
	sub	eax, ecx
	mov	dword ptr [rbp - 0x164], eax
	lea	rsi, [rsi]
	jmp	.label_1616
.label_1612:
	nop	
	movzx	eax, byte ptr [rbp - 0x135]
	sub	eax, 0x30
	nop	
	mov	dword ptr [rbp - 0x164], eax
.label_1616:
	mov	eax, dword ptr [rbp - 0x164]
	lea	rdi, [rdi]
	mov	cl, al
	movsx	eax, cl
	mov	rdx, qword ptr [rbp - 0x288]
	mov	rsp, rsp
	mov	cl, dl
	movsx	esi, cl
	cmp	dword ptr [rbp - 0x110], 0
	mov	rsp, rsp
	mov	dword ptr [rbp - 0xe0], eax
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x1a0], esi
	lea	rdi, [rdi]
	jge	.label_1628
	mov	eax, 0x30
	nop	
	movzx	ecx, byte ptr [rbp - 0x135]
	mov	rsp, rsp
	sub	eax, ecx
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x3c0], eax
	mov	rsp, rsp
	jmp	.label_1646
.label_1628:
	lea	rsi, [rsi]
	movzx	eax, byte ptr [rbp - 0x135]
	mov	rbp, rbp
	sub	eax, 0x30
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x3c0], eax
.label_1646:
	nop	
	mov	eax, dword ptr [rbp - 0x3c0]
	mov	cl, al
	movsx	eax, cl
	mov	edx, dword ptr [rbp - 0x1a0]
	add	edx, eax
	mov	eax, dword ptr [rbp - 0xe0]
	cmp	eax, edx
	jle	.label_1252
	lea	rsi, [rsi]
	jmp	.label_1192
.label_1605:
	cmp	dword ptr [rbp - 0x110], 0
	nop	
	jge	.label_1673
	mov	eax, 0x30
	lea	rsi, [rsi]
	movzx	ecx, byte ptr [rbp - 0x135]
	sub	eax, ecx
	mov	dword ptr [rbp - 0x548], eax
	lea	rdi, [rdi]
	jmp	.label_1677
.label_1673:
	nop	
	movzx	eax, byte ptr [rbp - 0x135]
	mov	rsp, rsp
	sub	eax, 0x30
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x548], eax
.label_1677:
	mov	eax, dword ptr [rbp - 0x548]
	mov	cl, al
	lea	rsi, [rsi]
	movsx	eax, cl
	cmp	eax, 0
	jge	.label_1644
	mov	rax, qword ptr [rbp - 0x288]
	mov	cl, al
	nop	
	movsx	edx, cl
	mov	rax, qword ptr [rbp - 0x288]
	lea	rsi, [rsi]
	mov	cl, al
	movsx	esi, cl
	lea	rsi, [rsi]
	cmp	dword ptr [rbp - 0x110], 0
	nop	
	mov	dword ptr [rbp - 0xdc], edx
	mov	dword ptr [rbp - 0x1cc], esi
	jge	.label_1693
	nop	
	mov	eax, 0x30
	mov	rsp, rsp
	movzx	ecx, byte ptr [rbp - 0x135]
	mov	rbp, rbp
	sub	eax, ecx
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x2b8], eax
	nop	
	jmp	.label_1167
.label_1693:
	nop	
	movzx	eax, byte ptr [rbp - 0x135]
	mov	rsp, rsp
	sub	eax, 0x30
	mov	dword ptr [rbp - 0x2b8], eax
.label_1167:
	mov	eax, dword ptr [rbp - 0x2b8]
	mov	cl, al
	lea	rdi, [rdi]
	movsx	eax, cl
	mov	rsp, rsp
	mov	edx, dword ptr [rbp - 0x1cc]
	add	edx, eax
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0xdc]
	cmp	eax, edx
	lea	rdi, [rdi]
	jle	.label_1252
	jmp	.label_1192
.label_1644:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x288]
	mov	cl, al
	movsx	edx, cl
	nop	
	cmp	dword ptr [rbp - 0x110], 0
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x308], edx
	jge	.label_1195
	lea	rdi, [rdi]
	mov	eax, 0x30
	movzx	ecx, byte ptr [rbp - 0x135]
	nop	
	sub	eax, ecx
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0xd4], eax
	nop	
	jmp	.label_1461
.label_1195:
	movzx	eax, byte ptr [rbp - 0x135]
	sub	eax, 0x30
	mov	dword ptr [rbp - 0xd4], eax
.label_1461:
	nop	
	mov	eax, dword ptr [rbp - 0xd4]
	mov	rsp, rsp
	mov	cl, al
	mov	rsp, rsp
	movsx	eax, cl
	mov	edx, dword ptr [rbp - 0x308]
	mov	rsp, rsp
	add	edx, eax
	mov	rsp, rsp
	cmp	dword ptr [rbp - 0x110], 0
	mov	dword ptr [rbp - 0x1bc], edx
	mov	rsp, rsp
	jge	.label_1218
	mov	eax, 0x30
	mov	rsp, rsp
	movzx	ecx, byte ptr [rbp - 0x135]
	mov	rsp, rsp
	sub	eax, ecx
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x28c], eax
	mov	rsp, rsp
	jmp	.label_1231
.label_1218:
	movzx	eax, byte ptr [rbp - 0x135]
	sub	eax, 0x30
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x28c], eax
.label_1231:
	mov	eax, dword ptr [rbp - 0x28c]
	nop	
	mov	cl, al
	movsx	eax, cl
	mov	edx, dword ptr [rbp - 0x1bc]
	nop	
	cmp	edx, eax
	mov	rsp, rsp
	jl	.label_1252
.label_1192:
	mov	rax, qword ptr [rbp - 0x288]
	mov	cl, al
	lea	rsi, [rsi]
	movsx	edx, cl
	cmp	dword ptr [rbp - 0x110], 0
	mov	dword ptr [rbp - 0x274], edx
	jge	.label_1258
	mov	rbp, rbp
	mov	eax, 0x30
	movzx	ecx, byte ptr [rbp - 0x135]
	mov	rbp, rbp
	sub	eax, ecx
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x7c], eax
	jmp	.label_1268
.label_1258:
	movzx	eax, byte ptr [rbp - 0x135]
	mov	rbp, rbp
	sub	eax, 0x30
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x7c], eax
.label_1268:
	mov	eax, dword ptr [rbp - 0x7c]
	mov	cl, al
	nop	
	movsx	eax, cl
	mov	edx, dword ptr [rbp - 0x274]
	add	edx, eax
	cmp	edx, -0x80
	lea	rdi, [rdi]
	jl	.label_1252
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x288]
	nop	
	mov	cl, al
	lea	rdi, [rdi]
	movsx	edx, cl
	cmp	dword ptr [rbp - 0x110], 0
	mov	dword ptr [rbp - 0x1d0], edx
	mov	rbp, rbp
	jge	.label_1288
	lea	rsi, [rsi]
	mov	eax, 0x30
	lea	rsi, [rsi]
	movzx	ecx, byte ptr [rbp - 0x135]
	sub	eax, ecx
	mov	dword ptr [rbp - 0x1a4], eax
	jmp	.label_1303
.label_1288:
	movzx	eax, byte ptr [rbp - 0x135]
	sub	eax, 0x30
	mov	dword ptr [rbp - 0x1a4], eax
.label_1303:
	mov	eax, dword ptr [rbp - 0x1a4]
	mov	ecx, 0x7f
	mov	rbp, rbp
	mov	dl, al
	movsx	eax, dl
	mov	esi, dword ptr [rbp - 0x1d0]
	add	esi, eax
	nop	
	cmp	ecx, esi
	jge	.label_1320
.label_1252:
	nop	
	mov	rax, qword ptr [rbp - 0x288]
	mov	cl, al
	mov	rsp, rsp
	movsx	edx, cl
	cmp	dword ptr [rbp - 0x110], 0
	mov	dword ptr [rbp - 0x3b8], edx
	mov	rsp, rsp
	jge	.label_1330
	mov	eax, 0x30
	mov	rbp, rbp
	movzx	ecx, byte ptr [rbp - 0x135]
	lea	rdi, [rdi]
	sub	eax, ecx
	mov	rsp, rsp
	mov	dword ptr [rbp - 0xfc], eax
	mov	rbp, rbp
	jmp	.label_1650
.label_1330:
	movzx	eax, byte ptr [rbp - 0x135]
	mov	rsp, rsp
	sub	eax, 0x30
	mov	dword ptr [rbp - 0xfc], eax
.label_1650:
	mov	eax, dword ptr [rbp - 0xfc]
	mov	cl, 1
	lea	rdi, [rdi]
	mov	dl, al
	lea	rdi, [rdi]
	movsx	eax, dl
	mov	esi, dword ptr [rbp - 0x3b8]
	lea	rsi, [rsi]
	add	esi, eax
	lea	rdi, [rdi]
	mov	dl, sil
	movsx	rdi, dl
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x288], rdi
	lea	rsi, [rsi]
	test	cl, 1
	lea	rdi, [rdi]
	jne	.label_1222
	lea	rsi, [rsi]
	jmp	.label_1171
.label_1320:
	mov	rax, qword ptr [rbp - 0x288]
	mov	cl, al
	movsx	edx, cl
	lea	rsi, [rsi]
	cmp	dword ptr [rbp - 0x110], 0
	mov	dword ptr [rbp - 0x404], edx
	mov	rbp, rbp
	jge	.label_1561
	mov	eax, 0x30
	movzx	ecx, byte ptr [rbp - 0x135]
	mov	rbp, rbp
	sub	eax, ecx
	mov	dword ptr [rbp - 0x1e4], eax
	jmp	.label_1385
.label_1561:
	lea	rdi, [rdi]
	movzx	eax, byte ptr [rbp - 0x135]
	lea	rdi, [rdi]
	sub	eax, 0x30
	mov	dword ptr [rbp - 0x1e4], eax
.label_1385:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x1e4]
	xor	ecx, ecx
	mov	dl, cl
	nop	
	mov	sil, al
	nop	
	movsx	eax, sil
	mov	ecx, dword ptr [rbp - 0x404]
	add	ecx, eax
	mov	sil, cl
	movsx	rdi, sil
	mov	qword ptr [rbp - 0x288], rdi
	test	dl, 1
	jne	.label_1222
	jmp	.label_1171
.label_1517:
	mov	rbp, rbp
	mov	al, 1
	test	al, 1
	lea	rsi, [rsi]
	jne	.label_1420
	lea	rsi, [rsi]
	jmp	.label_1423
.label_1420:
	lea	rsi, [rsi]
	cmp	dword ptr [rbp - 0x110], 0
	jge	.label_1426
	lea	rsi, [rsi]
	mov	eax, 0x30
	nop	
	movzx	ecx, byte ptr [rbp - 0x135]
	sub	eax, ecx
	mov	dword ptr [rbp - 0x208], eax
	jmp	.label_1430
.label_1426:
	movzx	eax, byte ptr [rbp - 0x135]
	sub	eax, 0x30
	mov	dword ptr [rbp - 0x208], eax
.label_1430:
	mov	eax, dword ptr [rbp - 0x208]
	mov	rbp, rbp
	cmp	eax, 0
	lea	rsi, [rsi]
	jge	.label_1440
	mov	rax, qword ptr [rbp - 0x288]
	mov	rbp, rbp
	cmp	dword ptr [rbp - 0x110], 0
	nop	
	mov	qword ptr [rbp - 0x90], rax
	jge	.label_1446
	mov	eax, 0x30
	movzx	ecx, byte ptr [rbp - 0x135]
	mov	rsp, rsp
	sub	eax, ecx
	mov	dword ptr [rbp - 0x3d8], eax
	jmp	.label_1452
.label_1446:
	movzx	eax, byte ptr [rbp - 0x135]
	lea	rdi, [rdi]
	sub	eax, 0x30
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x3d8], eax
.label_1452:
	mov	eax, dword ptr [rbp - 0x3d8]
	mov	rsp, rsp
	movabs	rcx, 0x8000000000000000
	movsxd	rdx, eax
	sub	rcx, rdx
	mov	rdx, qword ptr [rbp - 0x90]
	cmp	rdx, rcx
	nop	
	jl	.label_1315
	jmp	.label_1376
.label_1440:
	cmp	dword ptr [rbp - 0x110], 0
	jge	.label_1474
	mov	rsp, rsp
	mov	eax, 0x30
	mov	rbp, rbp
	movzx	ecx, byte ptr [rbp - 0x135]
	nop	
	sub	eax, ecx
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x33c], eax
	lea	rdi, [rdi]
	jmp	.label_1405
.label_1474:
	movzx	eax, byte ptr [rbp - 0x135]
	sub	eax, 0x30
	mov	dword ptr [rbp - 0x33c], eax
.label_1405:
	nop	
	mov	eax, dword ptr [rbp - 0x33c]
	movabs	rcx, 0x7fffffffffffffff
	lea	rdi, [rdi]
	movsxd	rdx, eax
	lea	rdi, [rdi]
	sub	rcx, rdx
	cmp	rcx, qword ptr [rbp - 0x288]
	jl	.label_1315
	nop	
	jmp	.label_1376
.label_1423:
	cmp	qword ptr [rbp - 0x288], 0
	nop	
	jge	.label_1500
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x110], 0
	jge	.label_1507
	lea	rsi, [rsi]
	mov	eax, 0x30
	lea	rsi, [rsi]
	movzx	ecx, byte ptr [rbp - 0x135]
	mov	rbp, rbp
	sub	eax, ecx
	nop	
	mov	dword ptr [rbp - 0x10], eax
	jmp	.label_1602
.label_1507:
	lea	rsi, [rsi]
	movzx	eax, byte ptr [rbp - 0x135]
	lea	rdi, [rdi]
	sub	eax, 0x30
	nop	
	mov	dword ptr [rbp - 0x10], eax
.label_1602:
	mov	eax, dword ptr [rbp - 0x10]
	mov	rbp, rbp
	movsxd	rcx, eax
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x288]
	cmp	dword ptr [rbp - 0x110], 0
	nop	
	mov	qword ptr [rbp - 0x4b0], rcx
	nop	
	mov	qword ptr [rbp - 0x128], rdx
	lea	rdi, [rdi]
	jge	.label_1526
	mov	eax, 0x30
	mov	rbp, rbp
	movzx	ecx, byte ptr [rbp - 0x135]
	sub	eax, ecx
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x43c], eax
	jmp	.label_1535
.label_1526:
	mov	rbp, rbp
	movzx	eax, byte ptr [rbp - 0x135]
	mov	rbp, rbp
	sub	eax, 0x30
	mov	dword ptr [rbp - 0x43c], eax
.label_1535:
	nop	
	mov	eax, dword ptr [rbp - 0x43c]
	movsxd	rcx, eax
	mov	rdx, qword ptr [rbp - 0x128]
	add	rdx, rcx
	mov	rcx, qword ptr [rbp - 0x4b0]
	cmp	rcx, rdx
	lea	rdi, [rdi]
	jle	.label_1315
	lea	rdi, [rdi]
	jmp	.label_1376
.label_1500:
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x110], 0
	mov	rsp, rsp
	jge	.label_1560
	mov	eax, 0x30
	mov	rbp, rbp
	movzx	ecx, byte ptr [rbp - 0x135]
	nop	
	sub	eax, ecx
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0xe8], eax
	jmp	.label_1564
.label_1560:
	mov	rbp, rbp
	movzx	eax, byte ptr [rbp - 0x135]
	nop	
	sub	eax, 0x30
	mov	dword ptr [rbp - 0xe8], eax
.label_1564:
	nop	
	mov	eax, dword ptr [rbp - 0xe8]
	cmp	eax, 0
	jge	.label_1576
	nop	
	mov	rax, qword ptr [rbp - 0x288]
	mov	rcx, qword ptr [rbp - 0x288]
	nop	
	cmp	dword ptr [rbp - 0x110], 0
	mov	qword ptr [rbp - 0x458], rax
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x5b0], rcx
	jge	.label_1582
	mov	eax, 0x30
	movzx	ecx, byte ptr [rbp - 0x135]
	sub	eax, ecx
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x400], eax
	lea	rdi, [rdi]
	jmp	.label_1596
.label_1582:
	nop	
	movzx	eax, byte ptr [rbp - 0x135]
	sub	eax, 0x30
	mov	dword ptr [rbp - 0x400], eax
.label_1596:
	mov	eax, dword ptr [rbp - 0x400]
	movsxd	rcx, eax
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x5b0]
	add	rdx, rcx
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x458]
	cmp	rcx, rdx
	mov	rbp, rbp
	jle	.label_1315
	jmp	.label_1376
.label_1576:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x288]
	cmp	dword ptr [rbp - 0x110], 0
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x2d0], rax
	jge	.label_1617
	mov	eax, 0x30
	mov	rbp, rbp
	movzx	ecx, byte ptr [rbp - 0x135]
	sub	eax, ecx
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x59c], eax
	jmp	.label_1625
.label_1617:
	movzx	eax, byte ptr [rbp - 0x135]
	sub	eax, 0x30
	mov	dword ptr [rbp - 0x59c], eax
.label_1625:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x59c]
	mov	rbp, rbp
	movsxd	rcx, eax
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x2d0]
	lea	rsi, [rsi]
	add	rdx, rcx
	cmp	dword ptr [rbp - 0x110], 0
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0xf8], rdx
	mov	rsp, rsp
	jge	.label_1643
	nop	
	mov	eax, 0x30
	nop	
	movzx	ecx, byte ptr [rbp - 0x135]
	lea	rdi, [rdi]
	sub	eax, ecx
	mov	dword ptr [rbp - 0x68], eax
	mov	rsp, rsp
	jmp	.label_1659
.label_1643:
	movzx	eax, byte ptr [rbp - 0x135]
	lea	rdi, [rdi]
	sub	eax, 0x30
	mov	dword ptr [rbp - 0x68], eax
.label_1659:
	mov	eax, dword ptr [rbp - 0x68]
	nop	
	movsxd	rcx, eax
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0xf8]
	cmp	rdx, rcx
	jl	.label_1315
.label_1376:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x288]
	cmp	dword ptr [rbp - 0x110], 0
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x4d8], rax
	jge	.label_1674
	mov	eax, 0x30
	mov	rbp, rbp
	movzx	ecx, byte ptr [rbp - 0x135]
	sub	eax, ecx
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x2fc], eax
	mov	rsp, rsp
	jmp	.label_1681
.label_1674:
	movzx	eax, byte ptr [rbp - 0x135]
	sub	eax, 0x30
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x2fc], eax
.label_1681:
	mov	eax, dword ptr [rbp - 0x2fc]
	movsxd	rcx, eax
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x4d8]
	mov	rsp, rsp
	add	rdx, rcx
	mov	rbp, rbp
	cmp	rdx, -0x80
	lea	rsi, [rsi]
	jl	.label_1315
	mov	rax, qword ptr [rbp - 0x288]
	cmp	dword ptr [rbp - 0x110], 0
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x1c8], rax
	jge	.label_1555
	lea	rdi, [rdi]
	mov	eax, 0x30
	movzx	ecx, byte ptr [rbp - 0x135]
	nop	
	sub	eax, ecx
	nop	
	mov	dword ptr [rbp - 0x140], eax
	mov	rsp, rsp
	jmp	.label_1173
.label_1555:
	mov	rbp, rbp
	movzx	eax, byte ptr [rbp - 0x135]
	nop	
	sub	eax, 0x30
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x140], eax
.label_1173:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x140]
	lea	rsi, [rsi]
	mov	ecx, 0x7f
	lea	rsi, [rsi]
	mov	edx, ecx
	movsxd	rsi, eax
	mov	rdi, qword ptr [rbp - 0x1c8]
	lea	rdi, [rdi]
	add	rdi, rsi
	lea	rdi, [rdi]
	cmp	rdx, rdi
	jge	.label_1684
.label_1315:
	mov	rax, qword ptr [rbp - 0x288]
	mov	ecx, eax
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x110], 0
	nop	
	mov	dword ptr [rbp - 0x4a8], ecx
	jge	.label_1199
	nop	
	mov	eax, 0x30
	movzx	ecx, byte ptr [rbp - 0x135]
	lea	rsi, [rsi]
	sub	eax, ecx
	mov	dword ptr [rbp - 0x588], eax
	jmp	.label_1208
.label_1199:
	lea	rdi, [rdi]
	movzx	eax, byte ptr [rbp - 0x135]
	sub	eax, 0x30
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x588], eax
.label_1208:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x588]
	mov	cl, 1
	mov	edx, dword ptr [rbp - 0x4a8]
	add	edx, eax
	mov	sil, dl
	mov	rbp, rbp
	movsx	rdi, sil
	mov	qword ptr [rbp - 0x288], rdi
	mov	rsp, rsp
	test	cl, 1
	lea	rsi, [rsi]
	jne	.label_1222
	nop	
	jmp	.label_1171
.label_1684:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x288]
	mov	rbp, rbp
	mov	ecx, eax
	cmp	dword ptr [rbp - 0x110], 0
	mov	dword ptr [rbp - 0xb4], ecx
	jge	.label_1236
	lea	rdi, [rdi]
	mov	eax, 0x30
	movzx	ecx, byte ptr [rbp - 0x135]
	mov	rsp, rsp
	sub	eax, ecx
	nop	
	mov	dword ptr [rbp - 0x1b8], eax
	jmp	.label_1247
.label_1236:
	movzx	eax, byte ptr [rbp - 0x135]
	sub	eax, 0x30
	mov	dword ptr [rbp - 0x1b8], eax
.label_1247:
	mov	eax, dword ptr [rbp - 0x1b8]
	xor	ecx, ecx
	mov	dl, cl
	nop	
	mov	ecx, dword ptr [rbp - 0xb4]
	add	ecx, eax
	nop	
	mov	sil, cl
	nop	
	movsx	rdi, sil
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x288], rdi
	test	dl, 1
	lea	rsi, [rsi]
	jne	.label_1222
	mov	rbp, rbp
	jmp	.label_1171
.label_1511:
	mov	rbp, rbp
	xor	eax, eax
	mov	rbp, rbp
	mov	cl, al
	test	cl, 1
	jne	.label_1277
	mov	rsp, rsp
	jmp	.label_1281
.label_1277:
	lea	rdi, [rdi]
	xor	eax, eax
	mov	rsp, rsp
	mov	cl, al
	lea	rsi, [rsi]
	test	cl, 1
	jne	.label_1285
	jmp	.label_1410
.label_1285:
	mov	al, 1
	test	al, 1
	lea	rsi, [rsi]
	jne	.label_1290
	jmp	.label_1294
.label_1290:
	cmp	dword ptr [rbp - 0x110], 0
	jge	.label_1297
	mov	rbp, rbp
	mov	eax, 0x30
	nop	
	movzx	ecx, byte ptr [rbp - 0x135]
	sub	eax, ecx
	mov	dword ptr [rbp - 0x204], eax
	nop	
	jmp	.label_1302
.label_1297:
	movzx	eax, byte ptr [rbp - 0x135]
	mov	rsp, rsp
	sub	eax, 0x30
	mov	dword ptr [rbp - 0x204], eax
.label_1302:
	mov	eax, dword ptr [rbp - 0x204]
	lea	rdi, [rdi]
	mov	cx, ax
	movsx	eax, cx
	cmp	eax, 0
	jge	.label_1533
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x288]
	mov	rsp, rsp
	mov	cx, ax
	movsx	edx, cx
	cmp	dword ptr [rbp - 0x110], 0
	nop	
	mov	dword ptr [rbp - 0x25c], edx
	nop	
	jge	.label_1327
	lea	rdi, [rdi]
	mov	eax, 0x30
	movzx	ecx, byte ptr [rbp - 0x135]
	sub	eax, ecx
	mov	dword ptr [rbp - 0x3c4], eax
	jmp	.label_1338
.label_1327:
	mov	rbp, rbp
	movzx	eax, byte ptr [rbp - 0x135]
	lea	rdi, [rdi]
	sub	eax, 0x30
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x3c4], eax
.label_1338:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x3c4]
	lea	rsi, [rsi]
	mov	ecx, 0x80000000
	nop	
	mov	dx, ax
	movsx	eax, dx
	sub	ecx, eax
	mov	eax, dword ptr [rbp - 0x25c]
	cmp	eax, ecx
	nop	
	jl	.label_1352
	jmp	.label_1364
.label_1533:
	cmp	dword ptr [rbp - 0x110], 0
	jge	.label_1366
	mov	eax, 0x30
	movzx	ecx, byte ptr [rbp - 0x135]
	sub	eax, ecx
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x200], eax
	lea	rdi, [rdi]
	jmp	.label_1369
.label_1366:
	movzx	eax, byte ptr [rbp - 0x135]
	lea	rsi, [rsi]
	sub	eax, 0x30
	mov	dword ptr [rbp - 0x200], eax
.label_1369:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x200]
	mov	ecx, 0x7fffffff
	lea	rdi, [rdi]
	mov	dx, ax
	nop	
	movsx	eax, dx
	mov	rsp, rsp
	sub	ecx, eax
	mov	rsi, qword ptr [rbp - 0x288]
	mov	dx, si
	mov	rbp, rbp
	movsx	eax, dx
	cmp	ecx, eax
	mov	rbp, rbp
	jl	.label_1352
	nop	
	jmp	.label_1364
.label_1294:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x288]
	mov	cx, ax
	movsx	edx, cx
	lea	rdi, [rdi]
	cmp	edx, 0
	jge	.label_1400
	cmp	dword ptr [rbp - 0x110], 0
	jge	.label_1409
	lea	rdi, [rdi]
	mov	eax, 0x30
	movzx	ecx, byte ptr [rbp - 0x135]
	lea	rdi, [rdi]
	sub	eax, ecx
	mov	dword ptr [rbp - 0x5d0], eax
	nop	
	jmp	.label_1416
.label_1409:
	movzx	eax, byte ptr [rbp - 0x135]
	lea	rsi, [rsi]
	sub	eax, 0x30
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x5d0], eax
.label_1416:
	mov	eax, dword ptr [rbp - 0x5d0]
	mov	rsp, rsp
	mov	cx, ax
	mov	rbp, rbp
	movsx	eax, cx
	nop	
	mov	rdx, qword ptr [rbp - 0x288]
	mov	cx, dx
	movsx	esi, cx
	nop	
	cmp	dword ptr [rbp - 0x110], 0
	mov	dword ptr [rbp - 0x11c], eax
	mov	dword ptr [rbp - 0xac], esi
	jge	.label_1429
	mov	eax, 0x30
	lea	rdi, [rdi]
	movzx	ecx, byte ptr [rbp - 0x135]
	nop	
	sub	eax, ecx
	mov	dword ptr [rbp - 0x29c], eax
	lea	rdi, [rdi]
	jmp	.label_1441
.label_1429:
	movzx	eax, byte ptr [rbp - 0x135]
	lea	rdi, [rdi]
	sub	eax, 0x30
	mov	dword ptr [rbp - 0x29c], eax
.label_1441:
	nop	
	mov	eax, dword ptr [rbp - 0x29c]
	mov	rbp, rbp
	mov	cx, ax
	mov	rbp, rbp
	movsx	eax, cx
	mov	edx, dword ptr [rbp - 0xac]
	lea	rdi, [rdi]
	add	edx, eax
	mov	eax, dword ptr [rbp - 0x11c]
	cmp	eax, edx
	nop	
	jle	.label_1352
	lea	rdi, [rdi]
	jmp	.label_1364
.label_1400:
	mov	rsp, rsp
	cmp	dword ptr [rbp - 0x110], 0
	nop	
	jge	.label_1462
	lea	rdi, [rdi]
	mov	eax, 0x30
	movzx	ecx, byte ptr [rbp - 0x135]
	sub	eax, ecx
	mov	dword ptr [rbp - 0x3b0], eax
	mov	rbp, rbp
	jmp	.label_1468
.label_1462:
	movzx	eax, byte ptr [rbp - 0x135]
	nop	
	sub	eax, 0x30
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x3b0], eax
.label_1468:
	mov	eax, dword ptr [rbp - 0x3b0]
	lea	rdi, [rdi]
	mov	cx, ax
	lea	rsi, [rsi]
	movsx	eax, cx
	lea	rsi, [rsi]
	cmp	eax, 0
	nop	
	jge	.label_1481
	mov	rax, qword ptr [rbp - 0x288]
	mov	cx, ax
	movsx	edx, cx
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x288]
	mov	cx, ax
	movsx	esi, cx
	mov	rsp, rsp
	cmp	dword ptr [rbp - 0x110], 0
	mov	dword ptr [rbp - 0xb8], edx
	mov	dword ptr [rbp - 0x484], esi
	lea	rsi, [rsi]
	jge	.label_1475
	nop	
	mov	eax, 0x30
	mov	rsp, rsp
	movzx	ecx, byte ptr [rbp - 0x135]
	sub	eax, ecx
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x540], eax
	lea	rsi, [rsi]
	jmp	.label_1502
.label_1475:
	movzx	eax, byte ptr [rbp - 0x135]
	sub	eax, 0x30
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x540], eax
.label_1502:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x540]
	mov	cx, ax
	movsx	eax, cx
	nop	
	mov	edx, dword ptr [rbp - 0x484]
	add	edx, eax
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0xb8]
	cmp	eax, edx
	lea	rdi, [rdi]
	jle	.label_1352
	jmp	.label_1364
.label_1481:
	mov	rax, qword ptr [rbp - 0x288]
	mov	cx, ax
	movsx	edx, cx
	mov	rbp, rbp
	cmp	dword ptr [rbp - 0x110], 0
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x1ac], edx
	nop	
	jge	.label_1531
	mov	eax, 0x30
	movzx	ecx, byte ptr [rbp - 0x135]
	lea	rsi, [rsi]
	sub	eax, ecx
	mov	dword ptr [rbp - 0x31c], eax
	jmp	.label_1541
.label_1531:
	mov	rbp, rbp
	movzx	eax, byte ptr [rbp - 0x135]
	lea	rdi, [rdi]
	sub	eax, 0x30
	nop	
	mov	dword ptr [rbp - 0x31c], eax
.label_1541:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x31c]
	mov	cx, ax
	mov	rsp, rsp
	movsx	eax, cx
	mov	edx, dword ptr [rbp - 0x1ac]
	add	edx, eax
	cmp	dword ptr [rbp - 0x110], 0
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x3cc], edx
	jge	.label_1556
	mov	rsp, rsp
	mov	eax, 0x30
	movzx	ecx, byte ptr [rbp - 0x135]
	mov	rbp, rbp
	sub	eax, ecx
	mov	dword ptr [rbp - 0x14], eax
	jmp	.label_1563
.label_1556:
	movzx	eax, byte ptr [rbp - 0x135]
	mov	rsp, rsp
	sub	eax, 0x30
	mov	dword ptr [rbp - 0x14], eax
.label_1563:
	mov	eax, dword ptr [rbp - 0x14]
	mov	cx, ax
	mov	rbp, rbp
	movsx	eax, cx
	mov	rsp, rsp
	mov	edx, dword ptr [rbp - 0x3cc]
	cmp	edx, eax
	lea	rdi, [rdi]
	jl	.label_1352
.label_1364:
	mov	rax, qword ptr [rbp - 0x288]
	mov	cx, ax
	movsx	edx, cx
	cmp	dword ptr [rbp - 0x110], 0
	mov	rbp, rbp
	mov	dword ptr [rbp - 0xa8], edx
	jge	.label_1584
	lea	rsi, [rsi]
	mov	eax, 0x30
	nop	
	movzx	ecx, byte ptr [rbp - 0x135]
	mov	rsp, rsp
	sub	eax, ecx
	mov	dword ptr [rbp - 0x1b0], eax
	jmp	.label_1595
.label_1584:
	movzx	eax, byte ptr [rbp - 0x135]
	sub	eax, 0x30
	mov	dword ptr [rbp - 0x1b0], eax
.label_1595:
	mov	eax, dword ptr [rbp - 0x1b0]
	mov	rbp, rbp
	mov	cx, ax
	movsx	eax, cx
	mov	rsp, rsp
	mov	edx, dword ptr [rbp - 0xa8]
	lea	rdi, [rdi]
	add	edx, eax
	cmp	edx, 0xffff8000
	jl	.label_1352
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x288]
	mov	cx, ax
	nop	
	movsx	edx, cx
	cmp	dword ptr [rbp - 0x110], 0
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x244], edx
	jge	.label_1179
	mov	rsp, rsp
	mov	eax, 0x30
	movzx	ecx, byte ptr [rbp - 0x135]
	lea	rsi, [rsi]
	sub	eax, ecx
	nop	
	mov	dword ptr [rbp - 0xc], eax
	mov	rsp, rsp
	jmp	.label_1239
.label_1179:
	movzx	eax, byte ptr [rbp - 0x135]
	lea	rsi, [rsi]
	sub	eax, 0x30
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0xc], eax
.label_1239:
	nop	
	mov	eax, dword ptr [rbp - 0xc]
	mov	ecx, 0x7fff
	mov	dx, ax
	movsx	eax, dx
	mov	esi, dword ptr [rbp - 0x244]
	add	esi, eax
	cmp	ecx, esi
	nop	
	jge	.label_1639
.label_1352:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x288]
	lea	rdi, [rdi]
	mov	cx, ax
	mov	rbp, rbp
	movsx	edx, cx
	lea	rsi, [rsi]
	cmp	dword ptr [rbp - 0x110], 0
	mov	rsp, rsp
	mov	dword ptr [rbp - 0xa4], edx
	lea	rsi, [rsi]
	jge	.label_1647
	mov	eax, 0x30
	movzx	ecx, byte ptr [rbp - 0x135]
	mov	rbp, rbp
	sub	eax, ecx
	nop	
	mov	dword ptr [rbp - 0x464], eax
	nop	
	jmp	.label_1664
.label_1647:
	movzx	eax, byte ptr [rbp - 0x135]
	sub	eax, 0x30
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x464], eax
.label_1664:
	mov	eax, dword ptr [rbp - 0x464]
	mov	rsp, rsp
	mov	cl, 1
	mov	dx, ax
	movsx	eax, dx
	mov	rsp, rsp
	mov	esi, dword ptr [rbp - 0xa4]
	add	esi, eax
	lea	rdi, [rdi]
	mov	dx, si
	lea	rsi, [rsi]
	movsx	rdi, dx
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x288], rdi
	mov	rbp, rbp
	test	cl, 1
	jne	.label_1222
	mov	rsp, rsp
	jmp	.label_1171
.label_1639:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x288]
	mov	cx, ax
	movsx	edx, cx
	cmp	dword ptr [rbp - 0x110], 0
	mov	dword ptr [rbp - 0x1e8], edx
	mov	rsp, rsp
	jge	.label_1688
	mov	eax, 0x30
	mov	rbp, rbp
	movzx	ecx, byte ptr [rbp - 0x135]
	lea	rsi, [rsi]
	sub	eax, ecx
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x230], eax
	jmp	.label_1157
.label_1688:
	mov	rsp, rsp
	movzx	eax, byte ptr [rbp - 0x135]
	sub	eax, 0x30
	mov	dword ptr [rbp - 0x230], eax
.label_1157:
	mov	eax, dword ptr [rbp - 0x230]
	xor	ecx, ecx
	mov	dl, cl
	mov	si, ax
	movsx	eax, si
	mov	rsp, rsp
	mov	ecx, dword ptr [rbp - 0x1e8]
	lea	rdi, [rdi]
	add	ecx, eax
	mov	si, cx
	movsx	rdi, si
	mov	qword ptr [rbp - 0x288], rdi
	test	dl, 1
	mov	rbp, rbp
	jne	.label_1222
	lea	rsi, [rsi]
	jmp	.label_1171
.label_1410:
	mov	al, 1
	test	al, 1
	mov	rbp, rbp
	jne	.label_1188
	mov	rsp, rsp
	jmp	.label_1189
.label_1188:
	mov	rsp, rsp
	cmp	dword ptr [rbp - 0x110], 0
	lea	rsi, [rsi]
	jge	.label_1191
	mov	eax, 0x30
	movzx	ecx, byte ptr [rbp - 0x135]
	lea	rsi, [rsi]
	sub	eax, ecx
	mov	dword ptr [rbp - 0x5cc], eax
	jmp	.label_1198
.label_1191:
	lea	rsi, [rsi]
	movzx	eax, byte ptr [rbp - 0x135]
	sub	eax, 0x30
	mov	dword ptr [rbp - 0x5cc], eax
.label_1198:
	mov	eax, dword ptr [rbp - 0x5cc]
	mov	rbp, rbp
	cmp	eax, 0
	mov	rbp, rbp
	jge	.label_1212
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x288]
	lea	rsi, [rsi]
	cmp	dword ptr [rbp - 0x110], 0
	mov	qword ptr [rbp - 0x28], rax
	mov	rbp, rbp
	jge	.label_1215
	mov	eax, 0x30
	mov	rsp, rsp
	movzx	ecx, byte ptr [rbp - 0x135]
	lea	rdi, [rdi]
	sub	eax, ecx
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x448], eax
	lea	rsi, [rsi]
	jmp	.label_1570
.label_1215:
	lea	rdi, [rdi]
	movzx	eax, byte ptr [rbp - 0x135]
	sub	eax, 0x30
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x448], eax
.label_1570:
	mov	eax, dword ptr [rbp - 0x448]
	lea	rsi, [rsi]
	movabs	rcx, 0x8000000000000000
	movsxd	rdx, eax
	sub	rcx, rdx
	mov	rdx, qword ptr [rbp - 0x28]
	cmp	rdx, rcx
	mov	rbp, rbp
	jl	.label_1241
	jmp	.label_1255
.label_1212:
	cmp	dword ptr [rbp - 0x110], 0
	jge	.label_1257
	mov	eax, 0x30
	nop	
	movzx	ecx, byte ptr [rbp - 0x135]
	sub	eax, ecx
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x350], eax
	mov	rsp, rsp
	jmp	.label_1261
.label_1257:
	lea	rsi, [rsi]
	movzx	eax, byte ptr [rbp - 0x135]
	mov	rbp, rbp
	sub	eax, 0x30
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x350], eax
.label_1261:
	nop	
	mov	eax, dword ptr [rbp - 0x350]
	lea	rdi, [rdi]
	movabs	rcx, 0x7fffffffffffffff
	movsxd	rdx, eax
	sub	rcx, rdx
	cmp	rcx, qword ptr [rbp - 0x288]
	jl	.label_1241
	jmp	.label_1255
.label_1189:
	cmp	qword ptr [rbp - 0x288], 0
	lea	rsi, [rsi]
	jge	.label_1390
	cmp	dword ptr [rbp - 0x110], 0
	lea	rdi, [rdi]
	jge	.label_1421
	lea	rdi, [rdi]
	mov	eax, 0x30
	lea	rdi, [rdi]
	movzx	ecx, byte ptr [rbp - 0x135]
	sub	eax, ecx
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x18c], eax
	lea	rsi, [rsi]
	jmp	.label_1296
.label_1421:
	lea	rdi, [rdi]
	movzx	eax, byte ptr [rbp - 0x135]
	sub	eax, 0x30
	mov	dword ptr [rbp - 0x18c], eax
.label_1296:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x18c]
	movsxd	rcx, eax
	nop	
	mov	rdx, qword ptr [rbp - 0x288]
	nop	
	cmp	dword ptr [rbp - 0x110], 0
	mov	qword ptr [rbp - 0x5c8], rcx
	mov	qword ptr [rbp - 0x3e0], rdx
	lea	rdi, [rdi]
	jge	.label_1314
	mov	rbp, rbp
	mov	eax, 0x30
	mov	rsp, rsp
	movzx	ecx, byte ptr [rbp - 0x135]
	sub	eax, ecx
	mov	dword ptr [rbp - 0x414], eax
	jmp	.label_1343
.label_1314:
	mov	rsp, rsp
	movzx	eax, byte ptr [rbp - 0x135]
	sub	eax, 0x30
	mov	dword ptr [rbp - 0x414], eax
.label_1343:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x414]
	movsxd	rcx, eax
	mov	rdx, qword ptr [rbp - 0x3e0]
	add	rdx, rcx
	mov	rcx, qword ptr [rbp - 0x5c8]
	cmp	rcx, rdx
	mov	rsp, rsp
	jle	.label_1241
	jmp	.label_1255
.label_1390:
	mov	rbp, rbp
	cmp	dword ptr [rbp - 0x110], 0
	jge	.label_1359
	mov	eax, 0x30
	lea	rsi, [rsi]
	movzx	ecx, byte ptr [rbp - 0x135]
	lea	rsi, [rsi]
	sub	eax, ecx
	nop	
	mov	dword ptr [rbp - 0x13c], eax
	jmp	.label_1362
.label_1359:
	movzx	eax, byte ptr [rbp - 0x135]
	sub	eax, 0x30
	nop	
	mov	dword ptr [rbp - 0x13c], eax
.label_1362:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x13c]
	cmp	eax, 0
	jge	.label_1378
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x288]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x288]
	lea	rsi, [rsi]
	cmp	dword ptr [rbp - 0x110], 0
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x398], rax
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x50], rcx
	jge	.label_1383
	mov	eax, 0x30
	movzx	ecx, byte ptr [rbp - 0x135]
	mov	rbp, rbp
	sub	eax, ecx
	nop	
	mov	dword ptr [rbp - 0x444], eax
	jmp	.label_1396
.label_1383:
	mov	rsp, rsp
	movzx	eax, byte ptr [rbp - 0x135]
	nop	
	sub	eax, 0x30
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x444], eax
.label_1396:
	mov	eax, dword ptr [rbp - 0x444]
	movsxd	rcx, eax
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x50]
	add	rdx, rcx
	nop	
	mov	rcx, qword ptr [rbp - 0x398]
	mov	rbp, rbp
	cmp	rcx, rdx
	lea	rsi, [rsi]
	jle	.label_1241
	jmp	.label_1255
.label_1378:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x288]
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x110], 0
	mov	qword ptr [rbp - 0x188], rax
	lea	rdi, [rdi]
	jge	.label_1588
	lea	rsi, [rsi]
	mov	eax, 0x30
	mov	rbp, rbp
	movzx	ecx, byte ptr [rbp - 0x135]
	lea	rsi, [rsi]
	sub	eax, ecx
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x34], eax
	nop	
	jmp	.label_1434
.label_1588:
	lea	rdi, [rdi]
	movzx	eax, byte ptr [rbp - 0x135]
	nop	
	sub	eax, 0x30
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x34], eax
.label_1434:
	mov	eax, dword ptr [rbp - 0x34]
	movsxd	rcx, eax
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x188]
	mov	rsp, rsp
	add	rdx, rcx
	mov	rsp, rsp
	cmp	dword ptr [rbp - 0x110], 0
	mov	qword ptr [rbp - 0x2e8], rdx
	lea	rdi, [rdi]
	jge	.label_1449
	mov	rsp, rsp
	mov	eax, 0x30
	lea	rdi, [rdi]
	movzx	ecx, byte ptr [rbp - 0x135]
	sub	eax, ecx
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x30c], eax
	jmp	.label_1580
.label_1449:
	movzx	eax, byte ptr [rbp - 0x135]
	sub	eax, 0x30
	mov	dword ptr [rbp - 0x30c], eax
.label_1580:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x30c]
	lea	rdi, [rdi]
	movsxd	rcx, eax
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x2e8]
	mov	rsp, rsp
	cmp	rdx, rcx
	jl	.label_1241
.label_1255:
	mov	rax, qword ptr [rbp - 0x288]
	cmp	dword ptr [rbp - 0x110], 0
	mov	qword ptr [rbp - 0x270], rax
	jge	.label_1478
	lea	rdi, [rdi]
	mov	eax, 0x30
	movzx	ecx, byte ptr [rbp - 0x135]
	lea	rsi, [rsi]
	sub	eax, ecx
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x3ac], eax
	jmp	.label_1486
.label_1478:
	movzx	eax, byte ptr [rbp - 0x135]
	sub	eax, 0x30
	mov	dword ptr [rbp - 0x3ac], eax
.label_1486:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x3ac]
	movsxd	rcx, eax
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x270]
	add	rdx, rcx
	cmp	rdx, -0x8000
	nop	
	jl	.label_1241
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x288]
	mov	rbp, rbp
	cmp	dword ptr [rbp - 0x110], 0
	mov	qword ptr [rbp - 0x490], rax
	lea	rsi, [rsi]
	jge	.label_1589
	nop	
	mov	eax, 0x30
	lea	rdi, [rdi]
	movzx	ecx, byte ptr [rbp - 0x135]
	sub	eax, ecx
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x22c], eax
	jmp	.label_1520
.label_1589:
	movzx	eax, byte ptr [rbp - 0x135]
	mov	rsp, rsp
	sub	eax, 0x30
	mov	dword ptr [rbp - 0x22c], eax
.label_1520:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x22c]
	mov	ecx, 0x7fff
	mov	edx, ecx
	movsxd	rsi, eax
	mov	rdi, qword ptr [rbp - 0x490]
	add	rdi, rsi
	cmp	rdx, rdi
	mov	rbp, rbp
	jge	.label_1181
.label_1241:
	nop	
	mov	rax, qword ptr [rbp - 0x288]
	mov	rbp, rbp
	mov	ecx, eax
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x110], 0
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 4], ecx
	mov	rbp, rbp
	jge	.label_1540
	lea	rsi, [rsi]
	mov	eax, 0x30
	movzx	ecx, byte ptr [rbp - 0x135]
	sub	eax, ecx
	nop	
	mov	dword ptr [rbp - 0x234], eax
	jmp	.label_1608
.label_1540:
	movzx	eax, byte ptr [rbp - 0x135]
	lea	rsi, [rsi]
	sub	eax, 0x30
	nop	
	mov	dword ptr [rbp - 0x234], eax
.label_1608:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x234]
	mov	rbp, rbp
	mov	cl, 1
	mov	edx, dword ptr [rbp - 4]
	add	edx, eax
	nop	
	mov	si, dx
	mov	rbp, rbp
	movsx	rdi, si
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x288], rdi
	test	cl, 1
	lea	rdi, [rdi]
	jne	.label_1222
	lea	rsi, [rsi]
	jmp	.label_1171
.label_1181:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x288]
	mov	rsp, rsp
	mov	ecx, eax
	cmp	dword ptr [rbp - 0x110], 0
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x1c], ecx
	lea	rsi, [rsi]
	jge	.label_1489
	lea	rsi, [rsi]
	mov	eax, 0x30
	movzx	ecx, byte ptr [rbp - 0x135]
	lea	rsi, [rsi]
	sub	eax, ecx
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x20c], eax
	jmp	.label_1587
.label_1489:
	nop	
	movzx	eax, byte ptr [rbp - 0x135]
	mov	rsp, rsp
	sub	eax, 0x30
	mov	dword ptr [rbp - 0x20c], eax
.label_1587:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x20c]
	xor	ecx, ecx
	mov	dl, cl
	lea	rdi, [rdi]
	mov	ecx, dword ptr [rbp - 0x1c]
	lea	rsi, [rsi]
	add	ecx, eax
	mov	rsp, rsp
	mov	si, cx
	lea	rdi, [rdi]
	movsx	rdi, si
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x288], rdi
	nop	
	test	dl, 1
	jne	.label_1222
	mov	rsp, rsp
	jmp	.label_1171
.label_1281:
	xor	eax, eax
	mov	rsp, rsp
	mov	cl, al
	mov	rsp, rsp
	test	cl, 1
	nop	
	jne	.label_1614
	jmp	.label_1619
.label_1614:
	xor	eax, eax
	lea	rsi, [rsi]
	mov	cl, al
	nop	
	test	cl, 1
	lea	rdi, [rdi]
	jne	.label_1620
	jmp	.label_1624
.label_1620:
	mov	al, 1
	test	al, 1
	lea	rdi, [rdi]
	jne	.label_1626
	jmp	.label_1633
.label_1626:
	cmp	dword ptr [rbp - 0x110], 0
	nop	
	jge	.label_1634
	mov	eax, 0x30
	lea	rdi, [rdi]
	movzx	ecx, byte ptr [rbp - 0x135]
	sub	eax, ecx
	mov	dword ptr [rbp - 0x3a4], eax
	jmp	.label_1638
.label_1634:
	movzx	eax, byte ptr [rbp - 0x135]
	nop	
	sub	eax, 0x30
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x3a4], eax
.label_1638:
	mov	eax, dword ptr [rbp - 0x3a4]
	lea	rsi, [rsi]
	cmp	eax, 0
	jge	.label_1404
	mov	rax, qword ptr [rbp - 0x288]
	mov	ecx, eax
	mov	rbp, rbp
	cmp	dword ptr [rbp - 0x110], 0
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x2ec], ecx
	jge	.label_1658
	mov	eax, 0x30
	lea	rdi, [rdi]
	movzx	ecx, byte ptr [rbp - 0x135]
	mov	rsp, rsp
	sub	eax, ecx
	nop	
	mov	dword ptr [rbp - 8], eax
	jmp	.label_1667
.label_1658:
	mov	rsp, rsp
	movzx	eax, byte ptr [rbp - 0x135]
	mov	rbp, rbp
	sub	eax, 0x30
	mov	dword ptr [rbp - 8], eax
.label_1667:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 8]
	mov	rbp, rbp
	mov	ecx, 0x80000000
	lea	rsi, [rsi]
	sub	ecx, eax
	mov	eax, dword ptr [rbp - 0x2ec]
	lea	rdi, [rdi]
	cmp	eax, ecx
	jl	.label_1163
	jmp	.label_1174
.label_1404:
	mov	rbp, rbp
	cmp	dword ptr [rbp - 0x110], 0
	jge	.label_1683
	lea	rsi, [rsi]
	mov	eax, 0x30
	lea	rdi, [rdi]
	movzx	ecx, byte ptr [rbp - 0x135]
	mov	rsp, rsp
	sub	eax, ecx
	mov	dword ptr [rbp - 0x438], eax
	mov	rsp, rsp
	jmp	.label_1686
.label_1683:
	lea	rdi, [rdi]
	movzx	eax, byte ptr [rbp - 0x135]
	lea	rsi, [rsi]
	sub	eax, 0x30
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x438], eax
.label_1686:
	mov	eax, dword ptr [rbp - 0x438]
	mov	ecx, 0x7fffffff
	mov	rbp, rbp
	sub	ecx, eax
	mov	rdx, qword ptr [rbp - 0x288]
	mov	eax, edx
	cmp	ecx, eax
	lea	rdi, [rdi]
	jl	.label_1163
	lea	rsi, [rsi]
	jmp	.label_1174
.label_1633:
	mov	rax, qword ptr [rbp - 0x288]
	mov	rbp, rbp
	mov	ecx, eax
	mov	rsp, rsp
	cmp	ecx, 0
	jge	.label_1176
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x110], 0
	jge	.label_1182
	mov	rsp, rsp
	mov	eax, 0x30
	movzx	ecx, byte ptr [rbp - 0x135]
	mov	rbp, rbp
	sub	eax, ecx
	nop	
	mov	dword ptr [rbp - 0x18], eax
	mov	rsp, rsp
	jmp	.label_1344
.label_1182:
	movzx	eax, byte ptr [rbp - 0x135]
	lea	rdi, [rdi]
	sub	eax, 0x30
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x18], eax
.label_1344:
	mov	eax, dword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x288]
	mov	rbp, rbp
	mov	edx, ecx
	cmp	dword ptr [rbp - 0x110], 0
	nop	
	mov	dword ptr [rbp - 0x35c], eax
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x430], edx
	jge	.label_1428
	mov	eax, 0x30
	movzx	ecx, byte ptr [rbp - 0x135]
	sub	eax, ecx
	mov	dword ptr [rbp - 0x584], eax
	mov	rbp, rbp
	jmp	.label_1381
.label_1428:
	mov	rsp, rsp
	movzx	eax, byte ptr [rbp - 0x135]
	nop	
	sub	eax, 0x30
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x584], eax
.label_1381:
	mov	eax, dword ptr [rbp - 0x584]
	nop	
	mov	ecx, dword ptr [rbp - 0x430]
	add	ecx, eax
	mov	eax, dword ptr [rbp - 0x35c]
	cmp	eax, ecx
	lea	rsi, [rsi]
	jle	.label_1163
	lea	rsi, [rsi]
	jmp	.label_1174
.label_1176:
	cmp	dword ptr [rbp - 0x110], 0
	nop	
	jge	.label_1623
	mov	rbp, rbp
	mov	eax, 0x30
	nop	
	movzx	ecx, byte ptr [rbp - 0x135]
	sub	eax, ecx
	mov	dword ptr [rbp - 0x39c], eax
	nop	
	jmp	.label_1238
.label_1623:
	movzx	eax, byte ptr [rbp - 0x135]
	sub	eax, 0x30
	mov	dword ptr [rbp - 0x39c], eax
.label_1238:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x39c]
	cmp	eax, 0
	mov	rbp, rbp
	jge	.label_1254
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x288]
	nop	
	mov	ecx, eax
	mov	rax, qword ptr [rbp - 0x288]
	mov	edx, eax
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x110], 0
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x278], ecx
	mov	dword ptr [rbp - 0x10c], edx
	jge	.label_1653
	mov	eax, 0x30
	movzx	ecx, byte ptr [rbp - 0x135]
	sub	eax, ecx
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x44], eax
	jmp	.label_1272
.label_1653:
	movzx	eax, byte ptr [rbp - 0x135]
	lea	rsi, [rsi]
	sub	eax, 0x30
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x44], eax
.label_1272:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x44]
	mov	ecx, dword ptr [rbp - 0x10c]
	add	ecx, eax
	mov	eax, dword ptr [rbp - 0x278]
	cmp	eax, ecx
	jle	.label_1163
	jmp	.label_1174
.label_1254:
	mov	rax, qword ptr [rbp - 0x288]
	mov	ecx, eax
	cmp	dword ptr [rbp - 0x110], 0
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x570], ecx
	jge	.label_1433
	mov	eax, 0x30
	movzx	ecx, byte ptr [rbp - 0x135]
	sub	eax, ecx
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x2f4], eax
	mov	rsp, rsp
	jmp	.label_1305
.label_1433:
	mov	rsp, rsp
	movzx	eax, byte ptr [rbp - 0x135]
	sub	eax, 0x30
	mov	dword ptr [rbp - 0x2f4], eax
.label_1305:
	mov	eax, dword ptr [rbp - 0x2f4]
	mov	ecx, dword ptr [rbp - 0x570]
	add	ecx, eax
	mov	rsp, rsp
	cmp	dword ptr [rbp - 0x110], 0
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x2b4], ecx
	jge	.label_1323
	lea	rsi, [rsi]
	mov	eax, 0x30
	movzx	ecx, byte ptr [rbp - 0x135]
	sub	eax, ecx
	mov	dword ptr [rbp - 0x424], eax
	jmp	.label_1477
.label_1323:
	mov	rsp, rsp
	movzx	eax, byte ptr [rbp - 0x135]
	sub	eax, 0x30
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x424], eax
.label_1477:
	mov	eax, dword ptr [rbp - 0x424]
	mov	rsp, rsp
	mov	ecx, dword ptr [rbp - 0x2b4]
	cmp	ecx, eax
	lea	rdi, [rdi]
	jl	.label_1163
.label_1174:
	nop	
	mov	rax, qword ptr [rbp - 0x288]
	mov	ecx, eax
	cmp	dword ptr [rbp - 0x110], 0
	mov	dword ptr [rbp - 0x3a0], ecx
	mov	rsp, rsp
	jge	.label_1187
	mov	eax, 0x30
	mov	rsp, rsp
	movzx	ecx, byte ptr [rbp - 0x135]
	lea	rsi, [rsi]
	sub	eax, ecx
	mov	dword ptr [rbp - 0xec], eax
	jmp	.label_1242
.label_1187:
	movzx	eax, byte ptr [rbp - 0x135]
	mov	rbp, rbp
	sub	eax, 0x30
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0xec], eax
.label_1242:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0xec]
	mov	ecx, dword ptr [rbp - 0x3a0]
	nop	
	add	ecx, eax
	lea	rdi, [rdi]
	cmp	ecx, 0x80000000
	lea	rsi, [rsi]
	jl	.label_1163
	nop	
	mov	rax, qword ptr [rbp - 0x288]
	nop	
	mov	ecx, eax
	cmp	dword ptr [rbp - 0x110], 0
	mov	dword ptr [rbp - 0x324], ecx
	jge	.label_1387
	mov	eax, 0x30
	mov	rsp, rsp
	movzx	ecx, byte ptr [rbp - 0x135]
	mov	rsp, rsp
	sub	eax, ecx
	mov	dword ptr [rbp - 0x494], eax
	jmp	.label_1283
.label_1387:
	movzx	eax, byte ptr [rbp - 0x135]
	nop	
	sub	eax, 0x30
	mov	dword ptr [rbp - 0x494], eax
.label_1283:
	nop	
	mov	eax, dword ptr [rbp - 0x494]
	mov	ecx, 0x7fffffff
	mov	rbp, rbp
	mov	edx, dword ptr [rbp - 0x324]
	add	edx, eax
	cmp	ecx, edx
	jge	.label_1496
.label_1163:
	nop	
	mov	rax, qword ptr [rbp - 0x288]
	mov	rsp, rsp
	mov	ecx, eax
	lea	rsi, [rsi]
	cmp	dword ptr [rbp - 0x110], 0
	mov	dword ptr [rbp - 0x2c4], ecx
	jge	.label_1422
	mov	eax, 0x30
	movzx	ecx, byte ptr [rbp - 0x135]
	lea	rsi, [rsi]
	sub	eax, ecx
	mov	dword ptr [rbp - 0x64], eax
	mov	rsp, rsp
	jmp	.label_1431
.label_1422:
	nop	
	movzx	eax, byte ptr [rbp - 0x135]
	mov	rbp, rbp
	sub	eax, 0x30
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x64], eax
.label_1431:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x64]
	mov	rsp, rsp
	mov	cl, 1
	mov	edx, dword ptr [rbp - 0x2c4]
	add	edx, eax
	lea	rsi, [rsi]
	movsxd	rsi, edx
	mov	qword ptr [rbp - 0x288], rsi
	test	cl, 1
	jne	.label_1222
	lea	rsi, [rsi]
	jmp	.label_1171
.label_1496:
	mov	rax, qword ptr [rbp - 0x288]
	lea	rdi, [rdi]
	mov	ecx, eax
	cmp	dword ptr [rbp - 0x110], 0
	mov	dword ptr [rbp - 0x44c], ecx
	jge	.label_1453
	mov	eax, 0x30
	lea	rsi, [rsi]
	movzx	ecx, byte ptr [rbp - 0x135]
	sub	eax, ecx
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x20], eax
	mov	rsp, rsp
	jmp	.label_1457
.label_1453:
	mov	rbp, rbp
	movzx	eax, byte ptr [rbp - 0x135]
	sub	eax, 0x30
	mov	dword ptr [rbp - 0x20], eax
.label_1457:
	mov	eax, dword ptr [rbp - 0x20]
	mov	rsp, rsp
	xor	ecx, ecx
	lea	rdi, [rdi]
	mov	dl, cl
	mov	ecx, dword ptr [rbp - 0x44c]
	mov	rbp, rbp
	add	ecx, eax
	lea	rsi, [rsi]
	movsxd	rsi, ecx
	nop	
	mov	qword ptr [rbp - 0x288], rsi
	test	dl, 1
	mov	rsp, rsp
	jne	.label_1222
	jmp	.label_1171
.label_1624:
	nop	
	mov	al, 1
	test	al, 1
	mov	rbp, rbp
	jne	.label_1483
	jmp	.label_1488
.label_1483:
	cmp	dword ptr [rbp - 0x110], 0
	mov	rsp, rsp
	jge	.label_1491
	mov	eax, 0x30
	mov	rsp, rsp
	movzx	ecx, byte ptr [rbp - 0x135]
	mov	rbp, rbp
	sub	eax, ecx
	nop	
	mov	dword ptr [rbp - 0x154], eax
	mov	rbp, rbp
	jmp	.label_1425
.label_1491:
	lea	rsi, [rsi]
	movzx	eax, byte ptr [rbp - 0x135]
	sub	eax, 0x30
	mov	dword ptr [rbp - 0x154], eax
.label_1425:
	mov	eax, dword ptr [rbp - 0x154]
	cmp	eax, 0
	mov	rbp, rbp
	jge	.label_1504
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x288]
	cmp	dword ptr [rbp - 0x110], 0
	nop	
	mov	qword ptr [rbp - 0x420], rax
	jge	.label_1513
	lea	rsi, [rsi]
	mov	eax, 0x30
	movzx	ecx, byte ptr [rbp - 0x135]
	sub	eax, ecx
	mov	dword ptr [rbp - 0x460], eax
	jmp	.label_1655
.label_1513:
	nop	
	movzx	eax, byte ptr [rbp - 0x135]
	mov	rbp, rbp
	sub	eax, 0x30
	mov	dword ptr [rbp - 0x460], eax
.label_1655:
	mov	eax, dword ptr [rbp - 0x460]
	lea	rsi, [rsi]
	movabs	rcx, 0x8000000000000000
	movsxd	rdx, eax
	lea	rdi, [rdi]
	sub	rcx, rdx
	mov	rdx, qword ptr [rbp - 0x420]
	cmp	rdx, rcx
	jl	.label_1169
	lea	rsi, [rsi]
	jmp	.label_1544
.label_1504:
	cmp	dword ptr [rbp - 0x110], 0
	jge	.label_1548
	nop	
	mov	eax, 0x30
	mov	rsp, rsp
	movzx	ecx, byte ptr [rbp - 0x135]
	sub	eax, ecx
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x19c], eax
	lea	rdi, [rdi]
	jmp	.label_1553
.label_1548:
	lea	rdi, [rdi]
	movzx	eax, byte ptr [rbp - 0x135]
	sub	eax, 0x30
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x19c], eax
.label_1553:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x19c]
	movabs	rcx, 0x7fffffffffffffff
	movsxd	rdx, eax
	nop	
	sub	rcx, rdx
	lea	rdi, [rdi]
	cmp	rcx, qword ptr [rbp - 0x288]
	jl	.label_1169
	jmp	.label_1544
.label_1488:
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x288], 0
	nop	
	jge	.label_1567
	mov	rbp, rbp
	cmp	dword ptr [rbp - 0x110], 0
	nop	
	jge	.label_1398
	mov	eax, 0x30
	nop	
	movzx	ecx, byte ptr [rbp - 0x135]
	sub	eax, ecx
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x134], eax
	nop	
	jmp	.label_1519
.label_1398:
	nop	
	movzx	eax, byte ptr [rbp - 0x135]
	nop	
	sub	eax, 0x30
	mov	dword ptr [rbp - 0x134], eax
.label_1519:
	mov	eax, dword ptr [rbp - 0x134]
	movsxd	rcx, eax
	nop	
	mov	rdx, qword ptr [rbp - 0x288]
	cmp	dword ptr [rbp - 0x110], 0
	nop	
	mov	qword ptr [rbp - 0x1f8], rcx
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x150], rdx
	jge	.label_1590
	mov	eax, 0x30
	movzx	ecx, byte ptr [rbp - 0x135]
	sub	eax, ecx
	mov	dword ptr [rbp - 0x2b0], eax
	nop	
	jmp	.label_1603
.label_1590:
	movzx	eax, byte ptr [rbp - 0x135]
	sub	eax, 0x30
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x2b0], eax
.label_1603:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x2b0]
	nop	
	movsxd	rcx, eax
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x150]
	add	rdx, rcx
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x1f8]
	mov	rbp, rbp
	cmp	rcx, rdx
	jle	.label_1169
	jmp	.label_1544
.label_1567:
	mov	rsp, rsp
	cmp	dword ptr [rbp - 0x110], 0
	mov	rsp, rsp
	jge	.label_1629
	mov	eax, 0x30
	movzx	ecx, byte ptr [rbp - 0x135]
	lea	rsi, [rsi]
	sub	eax, ecx
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x94], eax
	jmp	.label_1636
.label_1629:
	movzx	eax, byte ptr [rbp - 0x135]
	nop	
	sub	eax, 0x30
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x94], eax
.label_1636:
	mov	eax, dword ptr [rbp - 0x94]
	lea	rdi, [rdi]
	cmp	eax, 0
	lea	rsi, [rsi]
	jge	.label_1649
	mov	rax, qword ptr [rbp - 0x288]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x288]
	cmp	dword ptr [rbp - 0x110], 0
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x318], rax
	nop	
	mov	qword ptr [rbp - 0x108], rcx
	lea	rsi, [rsi]
	jge	.label_1435
	mov	rbp, rbp
	mov	eax, 0x30
	lea	rdi, [rdi]
	movzx	ecx, byte ptr [rbp - 0x135]
	nop	
	sub	eax, ecx
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x80], eax
	mov	rsp, rsp
	jmp	.label_1509
.label_1435:
	movzx	eax, byte ptr [rbp - 0x135]
	mov	rsp, rsp
	sub	eax, 0x30
	mov	dword ptr [rbp - 0x80], eax
.label_1509:
	mov	eax, dword ptr [rbp - 0x80]
	movsxd	rcx, eax
	mov	rdx, qword ptr [rbp - 0x108]
	lea	rsi, [rsi]
	add	rdx, rcx
	mov	rcx, qword ptr [rbp - 0x318]
	cmp	rcx, rdx
	lea	rsi, [rsi]
	jle	.label_1169
	jmp	.label_1544
.label_1649:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x288]
	nop	
	cmp	dword ptr [rbp - 0x110], 0
	nop	
	mov	qword ptr [rbp - 0x3e8], rax
	jge	.label_1652
	mov	eax, 0x30
	lea	rdi, [rdi]
	movzx	ecx, byte ptr [rbp - 0x135]
	sub	eax, ecx
	mov	dword ptr [rbp - 0x3ec], eax
	jmp	.label_1156
.label_1652:
	movzx	eax, byte ptr [rbp - 0x135]
	mov	rbp, rbp
	sub	eax, 0x30
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x3ec], eax
.label_1156:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x3ec]
	movsxd	rcx, eax
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x3e8]
	add	rdx, rcx
	cmp	dword ptr [rbp - 0x110], 0
	mov	qword ptr [rbp - 0x5b8], rdx
	lea	rdi, [rdi]
	jge	.label_1170
	mov	eax, 0x30
	movzx	ecx, byte ptr [rbp - 0x135]
	lea	rdi, [rdi]
	sub	eax, ecx
	mov	dword ptr [rbp - 0x88], eax
	nop	
	jmp	.label_1407
.label_1170:
	movzx	eax, byte ptr [rbp - 0x135]
	mov	rbp, rbp
	sub	eax, 0x30
	nop	
	mov	dword ptr [rbp - 0x88], eax
.label_1407:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x88]
	mov	rsp, rsp
	movsxd	rcx, eax
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x5b8]
	cmp	rdx, rcx
	jl	.label_1169
.label_1544:
	mov	rax, qword ptr [rbp - 0x288]
	cmp	dword ptr [rbp - 0x110], 0
	nop	
	mov	qword ptr [rbp - 0x198], rax
	lea	rdi, [rdi]
	jge	.label_1203
	mov	eax, 0x30
	movzx	ecx, byte ptr [rbp - 0x135]
	sub	eax, ecx
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x3b4], eax
	lea	rsi, [rsi]
	jmp	.label_1214
.label_1203:
	movzx	eax, byte ptr [rbp - 0x135]
	sub	eax, 0x30
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x3b4], eax
.label_1214:
	mov	eax, dword ptr [rbp - 0x3b4]
	lea	rdi, [rdi]
	movsxd	rcx, eax
	mov	rdx, qword ptr [rbp - 0x198]
	add	rdx, rcx
	cmp	rdx, -0x80000000
	lea	rsi, [rsi]
	jl	.label_1169
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x288]
	mov	rbp, rbp
	cmp	dword ptr [rbp - 0x110], 0
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x500], rax
	jge	.label_1235
	nop	
	mov	eax, 0x30
	movzx	ecx, byte ptr [rbp - 0x135]
	mov	rsp, rsp
	sub	eax, ecx
	mov	dword ptr [rbp - 0x440], eax
	mov	rbp, rbp
	jmp	.label_1248
.label_1235:
	mov	rsp, rsp
	movzx	eax, byte ptr [rbp - 0x135]
	sub	eax, 0x30
	mov	dword ptr [rbp - 0x440], eax
.label_1248:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x440]
	mov	ecx, 0x7fffffff
	nop	
	mov	edx, ecx
	mov	rbp, rbp
	movsxd	rsi, eax
	nop	
	mov	rdi, qword ptr [rbp - 0x500]
	add	rdi, rsi
	mov	rsp, rsp
	cmp	rdx, rdi
	jge	.label_1263
.label_1169:
	mov	rax, qword ptr [rbp - 0x288]
	mov	ecx, eax
	lea	rsi, [rsi]
	cmp	dword ptr [rbp - 0x110], 0
	mov	dword ptr [rbp - 0x2f0], ecx
	mov	rsp, rsp
	jge	.label_1275
	nop	
	mov	eax, 0x30
	nop	
	movzx	ecx, byte ptr [rbp - 0x135]
	sub	eax, ecx
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x1dc], eax
	mov	rsp, rsp
	jmp	.label_1284
.label_1275:
	movzx	eax, byte ptr [rbp - 0x135]
	mov	rsp, rsp
	sub	eax, 0x30
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x1dc], eax
.label_1284:
	mov	eax, dword ptr [rbp - 0x1dc]
	mov	cl, 1
	mov	edx, dword ptr [rbp - 0x2f0]
	nop	
	add	edx, eax
	lea	rdi, [rdi]
	movsxd	rsi, edx
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x288], rsi
	nop	
	test	cl, 1
	lea	rdi, [rdi]
	jne	.label_1222
	lea	rdi, [rdi]
	jmp	.label_1171
.label_1263:
	mov	rax, qword ptr [rbp - 0x288]
	mov	ecx, eax
	cmp	dword ptr [rbp - 0x110], 0
	nop	
	mov	dword ptr [rbp - 0x4dc], ecx
	mov	rbp, rbp
	jge	.label_1536
	mov	eax, 0x30
	movzx	ecx, byte ptr [rbp - 0x135]
	nop	
	sub	eax, ecx
	mov	dword ptr [rbp - 0x338], eax
	mov	rsp, rsp
	jmp	.label_1329
.label_1536:
	movzx	eax, byte ptr [rbp - 0x135]
	lea	rdi, [rdi]
	sub	eax, 0x30
	mov	dword ptr [rbp - 0x338], eax
.label_1329:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x338]
	xor	ecx, ecx
	mov	dl, cl
	mov	ecx, dword ptr [rbp - 0x4dc]
	mov	rsp, rsp
	add	ecx, eax
	movsxd	rsi, ecx
	nop	
	mov	qword ptr [rbp - 0x288], rsi
	lea	rsi, [rsi]
	test	dl, 1
	lea	rsi, [rsi]
	jne	.label_1222
	jmp	.label_1171
.label_1619:
	lea	rdi, [rdi]
	mov	al, 1
	mov	rbp, rbp
	test	al, 1
	jne	.label_1627
	jmp	.label_1361
.label_1627:
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	lea	rsi, [rsi]
	jne	.label_1363
	jmp	.label_1368
.label_1363:
	lea	rdi, [rdi]
	mov	al, 1
	test	al, 1
	nop	
	jne	.label_1370
	jmp	.label_1372
.label_1370:
	cmp	dword ptr [rbp - 0x110], 0
	jge	.label_1375
	lea	rsi, [rsi]
	mov	eax, 0x30
	lea	rdi, [rdi]
	movzx	ecx, byte ptr [rbp - 0x135]
	lea	rdi, [rdi]
	sub	eax, ecx
	mov	dword ptr [rbp - 0x21c], eax
	jmp	.label_1379
.label_1375:
	lea	rdi, [rdi]
	movzx	eax, byte ptr [rbp - 0x135]
	lea	rsi, [rsi]
	sub	eax, 0x30
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x21c], eax
.label_1379:
	mov	eax, dword ptr [rbp - 0x21c]
	movsxd	rcx, eax
	cmp	rcx, 0
	lea	rsi, [rsi]
	jge	.label_1393
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x288]
	cmp	dword ptr [rbp - 0x110], 0
	nop	
	mov	qword ptr [rbp - 0x348], rax
	mov	rbp, rbp
	jge	.label_1401
	mov	rbp, rbp
	mov	eax, 0x30
	movzx	ecx, byte ptr [rbp - 0x135]
	sub	eax, ecx
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x45c], eax
	lea	rdi, [rdi]
	jmp	.label_1415
.label_1401:
	movzx	eax, byte ptr [rbp - 0x135]
	sub	eax, 0x30
	mov	dword ptr [rbp - 0x45c], eax
.label_1415:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x45c]
	lea	rdi, [rdi]
	movabs	rcx, 0x8000000000000000
	lea	rdi, [rdi]
	movsxd	rdx, eax
	sub	rcx, rdx
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x348]
	nop	
	cmp	rdx, rcx
	jl	.label_1427
	jmp	.label_1220
.label_1393:
	mov	rsp, rsp
	cmp	dword ptr [rbp - 0x110], 0
	lea	rsi, [rsi]
	jge	.label_1438
	lea	rdi, [rdi]
	mov	eax, 0x30
	mov	rbp, rbp
	movzx	ecx, byte ptr [rbp - 0x135]
	sub	eax, ecx
	mov	dword ptr [rbp - 0x34c], eax
	jmp	.label_1444
.label_1438:
	mov	rsp, rsp
	movzx	eax, byte ptr [rbp - 0x135]
	nop	
	sub	eax, 0x30
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x34c], eax
.label_1444:
	mov	eax, dword ptr [rbp - 0x34c]
	movabs	rcx, 0x7fffffffffffffff
	movsxd	rdx, eax
	sub	rcx, rdx
	cmp	rcx, qword ptr [rbp - 0x288]
	lea	rsi, [rsi]
	jl	.label_1427
	jmp	.label_1220
.label_1372:
	cmp	qword ptr [rbp - 0x288], 0
	jge	.label_1463
	mov	rbp, rbp
	cmp	dword ptr [rbp - 0x110], 0
	lea	rsi, [rsi]
	jge	.label_1467
	mov	eax, 0x30
	movzx	ecx, byte ptr [rbp - 0x135]
	sub	eax, ecx
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x4f0], eax
	lea	rsi, [rsi]
	jmp	.label_1472
.label_1467:
	movzx	eax, byte ptr [rbp - 0x135]
	sub	eax, 0x30
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x4f0], eax
.label_1472:
	mov	eax, dword ptr [rbp - 0x4f0]
	mov	rsp, rsp
	movsxd	rcx, eax
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x288]
	cmp	dword ptr [rbp - 0x110], 0
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x538], rcx
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x388], rdx
	nop	
	jge	.label_1487
	lea	rsi, [rsi]
	mov	eax, 0x30
	movzx	ecx, byte ptr [rbp - 0x135]
	sub	eax, ecx
	mov	dword ptr [rbp - 0x450], eax
	mov	rsp, rsp
	jmp	.label_1498
.label_1487:
	movzx	eax, byte ptr [rbp - 0x135]
	lea	rsi, [rsi]
	sub	eax, 0x30
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x450], eax
.label_1498:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x450]
	movsxd	rcx, eax
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x388]
	nop	
	add	rdx, rcx
	mov	rcx, qword ptr [rbp - 0x538]
	lea	rdi, [rdi]
	cmp	rcx, rdx
	nop	
	jle	.label_1427
	jmp	.label_1220
.label_1463:
	cmp	dword ptr [rbp - 0x110], 0
	jge	.label_1543
	lea	rdi, [rdi]
	mov	eax, 0x30
	mov	rsp, rsp
	movzx	ecx, byte ptr [rbp - 0x135]
	lea	rsi, [rsi]
	sub	eax, ecx
	mov	dword ptr [rbp - 0x320], eax
	jmp	.label_1530
.label_1543:
	lea	rdi, [rdi]
	movzx	eax, byte ptr [rbp - 0x135]
	sub	eax, 0x30
	mov	dword ptr [rbp - 0x320], eax
.label_1530:
	mov	eax, dword ptr [rbp - 0x320]
	movsxd	rcx, eax
	cmp	rcx, 0
	jge	.label_1546
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x288]
	mov	rcx, qword ptr [rbp - 0x288]
	cmp	dword ptr [rbp - 0x110], 0
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x590], rax
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x4d0], rcx
	jge	.label_1554
	mov	rbp, rbp
	mov	eax, 0x30
	movzx	ecx, byte ptr [rbp - 0x135]
	sub	eax, ecx
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x498], eax
	jmp	.label_1558
.label_1554:
	movzx	eax, byte ptr [rbp - 0x135]
	sub	eax, 0x30
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x498], eax
.label_1558:
	mov	eax, dword ptr [rbp - 0x498]
	movsxd	rcx, eax
	mov	rdx, qword ptr [rbp - 0x4d0]
	lea	rdi, [rdi]
	add	rdx, rcx
	mov	rcx, qword ptr [rbp - 0x590]
	mov	rsp, rsp
	cmp	rcx, rdx
	mov	rbp, rbp
	jle	.label_1427
	jmp	.label_1220
.label_1546:
	mov	rax, qword ptr [rbp - 0x288]
	cmp	dword ptr [rbp - 0x110], 0
	mov	qword ptr [rbp - 0x30], rax
	lea	rsi, [rsi]
	jge	.label_1586
	nop	
	mov	eax, 0x30
	mov	rbp, rbp
	movzx	ecx, byte ptr [rbp - 0x135]
	sub	eax, ecx
	mov	dword ptr [rbp - 0x5c], eax
	jmp	.label_1572
.label_1586:
	movzx	eax, byte ptr [rbp - 0x135]
	mov	rsp, rsp
	sub	eax, 0x30
	mov	dword ptr [rbp - 0x5c], eax
.label_1572:
	mov	eax, dword ptr [rbp - 0x5c]
	movsxd	rcx, eax
	nop	
	mov	rdx, qword ptr [rbp - 0x30]
	nop	
	add	rdx, rcx
	mov	rbp, rbp
	cmp	dword ptr [rbp - 0x110], 0
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x250], rdx
	jge	.label_1598
	lea	rsi, [rsi]
	mov	eax, 0x30
	mov	rbp, rbp
	movzx	ecx, byte ptr [rbp - 0x135]
	lea	rsi, [rsi]
	sub	eax, ecx
	mov	dword ptr [rbp - 0x4b4], eax
	jmp	.label_1611
.label_1598:
	movzx	eax, byte ptr [rbp - 0x135]
	sub	eax, 0x30
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x4b4], eax
.label_1611:
	nop	
	mov	eax, dword ptr [rbp - 0x4b4]
	movsxd	rcx, eax
	mov	rdx, qword ptr [rbp - 0x250]
	mov	rsp, rsp
	cmp	rdx, rcx
	jl	.label_1427
.label_1220:
	mov	rax, qword ptr [rbp - 0x288]
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x110], 0
	mov	qword ptr [rbp - 0x1d8], rax
	jge	.label_1293
	nop	
	mov	eax, 0x30
	nop	
	movzx	ecx, byte ptr [rbp - 0x135]
	sub	eax, ecx
	mov	dword ptr [rbp - 0x258], eax
	jmp	.label_1233
.label_1293:
	lea	rdi, [rdi]
	movzx	eax, byte ptr [rbp - 0x135]
	mov	rsp, rsp
	sub	eax, 0x30
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x258], eax
.label_1233:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x258]
	lea	rsi, [rsi]
	movabs	rcx, 0x8000000000000000
	mov	rbp, rbp
	movsxd	rdx, eax
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x1d8]
	lea	rsi, [rsi]
	add	rsi, rdx
	mov	rsp, rsp
	cmp	rsi, rcx
	jl	.label_1427
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x288]
	cmp	dword ptr [rbp - 0x110], 0
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x410], rax
	jge	.label_1670
	nop	
	mov	eax, 0x30
	mov	rbp, rbp
	movzx	ecx, byte ptr [rbp - 0x135]
	sub	eax, ecx
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x370], eax
	lea	rdi, [rdi]
	jmp	.label_1678
.label_1670:
	movzx	eax, byte ptr [rbp - 0x135]
	mov	rbp, rbp
	sub	eax, 0x30
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x370], eax
.label_1678:
	nop	
	mov	eax, dword ptr [rbp - 0x370]
	movabs	rcx, 0x7fffffffffffffff
	nop	
	movsxd	rdx, eax
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x410]
	lea	rdi, [rdi]
	add	rsi, rdx
	cmp	rcx, rsi
	jge	.label_1690
.label_1427:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x288]
	cmp	dword ptr [rbp - 0x110], 0
	nop	
	mov	qword ptr [rbp - 0x4c8], rax
	jge	.label_1161
	mov	rsp, rsp
	mov	eax, 0x30
	movzx	ecx, byte ptr [rbp - 0x135]
	nop	
	sub	eax, ecx
	mov	dword ptr [rbp - 0x3d4], eax
	jmp	.label_1663
.label_1161:
	mov	rbp, rbp
	movzx	eax, byte ptr [rbp - 0x135]
	lea	rsi, [rsi]
	sub	eax, 0x30
	mov	dword ptr [rbp - 0x3d4], eax
.label_1663:
	mov	eax, dword ptr [rbp - 0x3d4]
	mov	cl, 1
	mov	rsp, rsp
	movsxd	rdx, eax
	mov	rsi, qword ptr [rbp - 0x4c8]
	lea	rdi, [rdi]
	add	rsi, rdx
	mov	qword ptr [rbp - 0x288], rsi
	mov	rsp, rsp
	test	cl, 1
	jne	.label_1222
	jmp	.label_1171
.label_1690:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x288]
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x110], 0
	mov	qword ptr [rbp - 0x528], rax
	mov	rsp, rsp
	jge	.label_1196
	mov	eax, 0x30
	movzx	ecx, byte ptr [rbp - 0x135]
	mov	rbp, rbp
	sub	eax, ecx
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x328], eax
	jmp	.label_1180
.label_1196:
	mov	rbp, rbp
	movzx	eax, byte ptr [rbp - 0x135]
	nop	
	sub	eax, 0x30
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x328], eax
.label_1180:
	mov	eax, dword ptr [rbp - 0x328]
	lea	rsi, [rsi]
	xor	ecx, ecx
	mov	dl, cl
	mov	rbp, rbp
	movsxd	rsi, eax
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x528]
	add	rdi, rsi
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x288], rdi
	mov	rsp, rsp
	test	dl, 1
	mov	rsp, rsp
	jne	.label_1222
	nop	
	jmp	.label_1171
.label_1368:
	mov	al, 1
	test	al, 1
	lea	rdi, [rdi]
	jne	.label_1237
	lea	rsi, [rsi]
	jmp	.label_1240
.label_1237:
	cmp	dword ptr [rbp - 0x110], 0
	lea	rsi, [rsi]
	jge	.label_1243
	mov	eax, 0x30
	movzx	ecx, byte ptr [rbp - 0x135]
	sub	eax, ecx
	mov	dword ptr [rbp - 0x480], eax
	nop	
	jmp	.label_1250
.label_1243:
	movzx	eax, byte ptr [rbp - 0x135]
	nop	
	sub	eax, 0x30
	mov	dword ptr [rbp - 0x480], eax
.label_1250:
	mov	eax, dword ptr [rbp - 0x480]
	mov	rsp, rsp
	cmp	eax, 0
	lea	rsi, [rsi]
	jge	.label_1262
	mov	rax, qword ptr [rbp - 0x288]
	cmp	dword ptr [rbp - 0x110], 0
	mov	qword ptr [rbp - 0x118], rax
	jge	.label_1260
	mov	rsp, rsp
	mov	eax, 0x30
	movzx	ecx, byte ptr [rbp - 0x135]
	sub	eax, ecx
	mov	dword ptr [rbp - 0x5bc], eax
	jmp	.label_1307
.label_1260:
	mov	rsp, rsp
	movzx	eax, byte ptr [rbp - 0x135]
	sub	eax, 0x30
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x5bc], eax
.label_1307:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x5bc]
	movabs	rcx, 0x8000000000000000
	lea	rdi, [rdi]
	movsxd	rdx, eax
	nop	
	sub	rcx, rdx
	mov	rdx, qword ptr [rbp - 0x118]
	lea	rdi, [rdi]
	cmp	rdx, rcx
	mov	rbp, rbp
	jl	.label_1386
	jmp	.label_1313
.label_1262:
	nop	
	cmp	dword ptr [rbp - 0x110], 0
	lea	rdi, [rdi]
	jge	.label_1306
	mov	eax, 0x30
	movzx	ecx, byte ptr [rbp - 0x135]
	sub	eax, ecx
	mov	dword ptr [rbp - 0x3fc], eax
	jmp	.label_1311
.label_1306:
	movzx	eax, byte ptr [rbp - 0x135]
	sub	eax, 0x30
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x3fc], eax
.label_1311:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x3fc]
	lea	rdi, [rdi]
	movabs	rcx, 0x7fffffffffffffff
	nop	
	movsxd	rdx, eax
	sub	rcx, rdx
	cmp	rcx, qword ptr [rbp - 0x288]
	jl	.label_1386
	jmp	.label_1313
.label_1240:
	nop	
	cmp	qword ptr [rbp - 0x288], 0
	jge	.label_1340
	cmp	dword ptr [rbp - 0x110], 0
	jge	.label_1345
	mov	eax, 0x30
	movzx	ecx, byte ptr [rbp - 0x135]
	sub	eax, ecx
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0xc4], eax
	jmp	.label_1348
.label_1345:
	mov	rbp, rbp
	movzx	eax, byte ptr [rbp - 0x135]
	sub	eax, 0x30
	mov	dword ptr [rbp - 0xc4], eax
.label_1348:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0xc4]
	mov	rsp, rsp
	movsxd	rcx, eax
	mov	rdx, qword ptr [rbp - 0x288]
	mov	rbp, rbp
	cmp	dword ptr [rbp - 0x110], 0
	mov	qword ptr [rbp - 0x578], rcx
	mov	qword ptr [rbp - 0x218], rdx
	mov	rsp, rsp
	jge	.label_1360
	nop	
	mov	eax, 0x30
	movzx	ecx, byte ptr [rbp - 0x135]
	sub	eax, ecx
	mov	dword ptr [rbp - 0x56c], eax
	jmp	.label_1312
.label_1360:
	movzx	eax, byte ptr [rbp - 0x135]
	sub	eax, 0x30
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x56c], eax
.label_1312:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x56c]
	movsxd	rcx, eax
	mov	rdx, qword ptr [rbp - 0x218]
	mov	rsp, rsp
	add	rdx, rcx
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x578]
	mov	rbp, rbp
	cmp	rcx, rdx
	mov	rbp, rbp
	jle	.label_1386
	mov	rsp, rsp
	jmp	.label_1313
.label_1340:
	cmp	dword ptr [rbp - 0x110], 0
	mov	rbp, rbp
	jge	.label_1476
	mov	eax, 0x30
	movzx	ecx, byte ptr [rbp - 0x135]
	sub	eax, ecx
	mov	dword ptr [rbp - 0x5a0], eax
	jmp	.label_1411
.label_1476:
	movzx	eax, byte ptr [rbp - 0x135]
	lea	rdi, [rdi]
	sub	eax, 0x30
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x5a0], eax
.label_1411:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x5a0]
	nop	
	cmp	eax, 0
	mov	rsp, rsp
	jge	.label_1424
	mov	rax, qword ptr [rbp - 0x288]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x288]
	cmp	dword ptr [rbp - 0x110], 0
	mov	qword ptr [rbp - 0x228], rax
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x70], rcx
	jge	.label_1604
	lea	rsi, [rsi]
	mov	eax, 0x30
	movzx	ecx, byte ptr [rbp - 0x135]
	mov	rbp, rbp
	sub	eax, ecx
	mov	dword ptr [rbp - 0x340], eax
	jmp	.label_1675
.label_1604:
	movzx	eax, byte ptr [rbp - 0x135]
	sub	eax, 0x30
	nop	
	mov	dword ptr [rbp - 0x340], eax
.label_1675:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x340]
	movsxd	rcx, eax
	mov	rdx, qword ptr [rbp - 0x70]
	lea	rdi, [rdi]
	add	rdx, rcx
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x228]
	cmp	rcx, rdx
	nop	
	jle	.label_1386
	jmp	.label_1313
.label_1424:
	mov	rax, qword ptr [rbp - 0x288]
	cmp	dword ptr [rbp - 0x110], 0
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x560], rax
	jge	.label_1459
	mov	eax, 0x30
	mov	rsp, rsp
	movzx	ecx, byte ptr [rbp - 0x135]
	sub	eax, ecx
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0xb0], eax
	jmp	.label_1466
.label_1459:
	movzx	eax, byte ptr [rbp - 0x135]
	sub	eax, 0x30
	nop	
	mov	dword ptr [rbp - 0xb0], eax
.label_1466:
	mov	eax, dword ptr [rbp - 0xb0]
	movsxd	rcx, eax
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x560]
	nop	
	add	rdx, rcx
	cmp	dword ptr [rbp - 0x110], 0
	mov	qword ptr [rbp - 0x2d8], rdx
	lea	rdi, [rdi]
	jge	.label_1479
	lea	rsi, [rsi]
	mov	eax, 0x30
	movzx	ecx, byte ptr [rbp - 0x135]
	sub	eax, ecx
	mov	dword ptr [rbp - 0x120], eax
	jmp	.label_1494
.label_1479:
	lea	rdi, [rdi]
	movzx	eax, byte ptr [rbp - 0x135]
	sub	eax, 0x30
	mov	dword ptr [rbp - 0x120], eax
.label_1494:
	mov	eax, dword ptr [rbp - 0x120]
	lea	rdi, [rdi]
	movsxd	rcx, eax
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x2d8]
	cmp	rdx, rcx
	jl	.label_1386
.label_1313:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x288]
	mov	rbp, rbp
	cmp	dword ptr [rbp - 0x110], 0
	mov	qword ptr [rbp - 0x268], rax
	jge	.label_1490
	mov	eax, 0x30
	movzx	ecx, byte ptr [rbp - 0x135]
	sub	eax, ecx
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x330], eax
	jmp	.label_1522
.label_1490:
	movzx	eax, byte ptr [rbp - 0x135]
	nop	
	sub	eax, 0x30
	nop	
	mov	dword ptr [rbp - 0x330], eax
.label_1522:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x330]
	lea	rsi, [rsi]
	movabs	rcx, 0x8000000000000000
	mov	rbp, rbp
	movsxd	rdx, eax
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x268]
	add	rsi, rdx
	cmp	rsi, rcx
	jl	.label_1386
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x288]
	cmp	dword ptr [rbp - 0x110], 0
	nop	
	mov	qword ptr [rbp - 0x358], rax
	jge	.label_1547
	lea	rdi, [rdi]
	mov	eax, 0x30
	movzx	ecx, byte ptr [rbp - 0x135]
	nop	
	sub	eax, ecx
	nop	
	mov	dword ptr [rbp - 0x1fc], eax
	jmp	.label_1668
.label_1547:
	movzx	eax, byte ptr [rbp - 0x135]
	sub	eax, 0x30
	mov	dword ptr [rbp - 0x1fc], eax
.label_1668:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x1fc]
	movabs	rcx, 0x7fffffffffffffff
	mov	rsp, rsp
	movsxd	rdx, eax
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x358]
	mov	rsp, rsp
	add	rsi, rdx
	cmp	rcx, rsi
	jge	.label_1402
.label_1386:
	mov	rax, qword ptr [rbp - 0x288]
	cmp	dword ptr [rbp - 0x110], 0
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x2a8], rax
	nop	
	jge	.label_1569
	lea	rsi, [rsi]
	mov	eax, 0x30
	nop	
	movzx	ecx, byte ptr [rbp - 0x135]
	lea	rsi, [rsi]
	sub	eax, ecx
	mov	rsp, rsp
	mov	dword ptr [rbp - 0xe4], eax
	lea	rdi, [rdi]
	jmp	.label_1579
.label_1569:
	lea	rdi, [rdi]
	movzx	eax, byte ptr [rbp - 0x135]
	sub	eax, 0x30
	mov	dword ptr [rbp - 0xe4], eax
.label_1579:
	mov	eax, dword ptr [rbp - 0xe4]
	lea	rsi, [rsi]
	mov	cl, 1
	mov	rbp, rbp
	movsxd	rdx, eax
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x2a8]
	add	rsi, rdx
	mov	qword ptr [rbp - 0x288], rsi
	test	cl, 1
	mov	rsp, rsp
	jne	.label_1222
	mov	rsp, rsp
	jmp	.label_1171
.label_1402:
	mov	rax, qword ptr [rbp - 0x288]
	mov	rsp, rsp
	cmp	dword ptr [rbp - 0x110], 0
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x148], rax
	jge	.label_1610
	mov	rsp, rsp
	mov	eax, 0x30
	movzx	ecx, byte ptr [rbp - 0x135]
	sub	eax, ecx
	mov	dword ptr [rbp - 0x5a8], eax
	jmp	.label_1618
.label_1610:
	movzx	eax, byte ptr [rbp - 0x135]
	lea	rdi, [rdi]
	sub	eax, 0x30
	mov	dword ptr [rbp - 0x5a8], eax
.label_1618:
	nop	
	mov	eax, dword ptr [rbp - 0x5a8]
	nop	
	xor	ecx, ecx
	mov	dl, cl
	movsxd	rsi, eax
	nop	
	mov	rdi, qword ptr [rbp - 0x148]
	add	rdi, rsi
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x288], rdi
	test	dl, 1
	jne	.label_1222
	lea	rdi, [rdi]
	jmp	.label_1171
.label_1361:
	nop	
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	lea	rsi, [rsi]
	jne	.label_1645
	jmp	.label_1651
.label_1645:
	lea	rsi, [rsi]
	mov	al, 1
	lea	rdi, [rdi]
	test	al, 1
	jne	.label_1654
	jmp	.label_1660
.label_1654:
	mov	rbp, rbp
	cmp	dword ptr [rbp - 0x110], 0
	jge	.label_1661
	mov	rbp, rbp
	mov	eax, 0x30
	movzx	ecx, byte ptr [rbp - 0x135]
	mov	rbp, rbp
	sub	eax, ecx
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x254], eax
	jmp	.label_1665
.label_1661:
	movzx	eax, byte ptr [rbp - 0x135]
	nop	
	sub	eax, 0x30
	mov	dword ptr [rbp - 0x254], eax
.label_1665:
	mov	eax, dword ptr [rbp - 0x254]
	lea	rsi, [rsi]
	movsxd	rcx, eax
	lea	rdi, [rdi]
	cmp	rcx, 0
	lea	rdi, [rdi]
	jge	.label_1676
	nop	
	mov	rax, qword ptr [rbp - 0x288]
	nop	
	cmp	dword ptr [rbp - 0x110], 0
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x170], rax
	lea	rdi, [rdi]
	jge	.label_1680
	mov	eax, 0x30
	lea	rdi, [rdi]
	movzx	ecx, byte ptr [rbp - 0x135]
	sub	eax, ecx
	nop	
	mov	dword ptr [rbp - 0x1e0], eax
	jmp	.label_1687
.label_1680:
	mov	rbp, rbp
	movzx	eax, byte ptr [rbp - 0x135]
	mov	rsp, rsp
	sub	eax, 0x30
	nop	
	mov	dword ptr [rbp - 0x1e0], eax
.label_1687:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x1e0]
	mov	rbp, rbp
	movabs	rcx, 0x8000000000000000
	lea	rdi, [rdi]
	movsxd	rdx, eax
	nop	
	sub	rcx, rdx
	nop	
	mov	rdx, qword ptr [rbp - 0x170]
	lea	rsi, [rsi]
	cmp	rdx, rcx
	jl	.label_1160
	mov	rbp, rbp
	jmp	.label_1175
.label_1676:
	nop	
	cmp	dword ptr [rbp - 0x110], 0
	mov	rbp, rbp
	jge	.label_1178
	nop	
	mov	eax, 0x30
	movzx	ecx, byte ptr [rbp - 0x135]
	lea	rsi, [rsi]
	sub	eax, ecx
	mov	dword ptr [rbp - 0x36c], eax
	mov	rsp, rsp
	jmp	.label_1310
.label_1178:
	movzx	eax, byte ptr [rbp - 0x135]
	mov	rsp, rsp
	sub	eax, 0x30
	mov	dword ptr [rbp - 0x36c], eax
.label_1310:
	mov	eax, dword ptr [rbp - 0x36c]
	movabs	rcx, 0x7fffffffffffffff
	mov	rsp, rsp
	movsxd	rdx, eax
	sub	rcx, rdx
	cmp	rcx, qword ptr [rbp - 0x288]
	jl	.label_1160
	jmp	.label_1175
.label_1660:
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0x288], 0
	jge	.label_1205
	mov	rsp, rsp
	cmp	dword ptr [rbp - 0x110], 0
	lea	rdi, [rdi]
	jge	.label_1432
	mov	eax, 0x30
	movzx	ecx, byte ptr [rbp - 0x135]
	sub	eax, ecx
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x300], eax
	mov	rsp, rsp
	jmp	.label_1568
.label_1432:
	movzx	eax, byte ptr [rbp - 0x135]
	lea	rdi, [rdi]
	sub	eax, 0x30
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x300], eax
.label_1568:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x300]
	movsxd	rcx, eax
	mov	rdx, qword ptr [rbp - 0x288]
	cmp	dword ptr [rbp - 0x110], 0
	mov	qword ptr [rbp - 0x4c0], rcx
	mov	qword ptr [rbp - 0xc0], rdx
	jge	.label_1227
	mov	eax, 0x30
	lea	rdi, [rdi]
	movzx	ecx, byte ptr [rbp - 0x135]
	sub	eax, ecx
	nop	
	mov	dword ptr [rbp - 0x5c0], eax
	mov	rbp, rbp
	jmp	.label_1273
.label_1227:
	lea	rsi, [rsi]
	movzx	eax, byte ptr [rbp - 0x135]
	mov	rsp, rsp
	sub	eax, 0x30
	mov	dword ptr [rbp - 0x5c0], eax
.label_1273:
	mov	eax, dword ptr [rbp - 0x5c0]
	movsxd	rcx, eax
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0xc0]
	mov	rbp, rbp
	add	rdx, rcx
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x4c0]
	cmp	rcx, rdx
	mov	rsp, rsp
	jle	.label_1160
	nop	
	jmp	.label_1175
.label_1205:
	mov	rbp, rbp
	cmp	dword ptr [rbp - 0x110], 0
	nop	
	jge	.label_1300
	mov	rsp, rsp
	mov	eax, 0x30
	lea	rdi, [rdi]
	movzx	ecx, byte ptr [rbp - 0x135]
	sub	eax, ecx
	mov	dword ptr [rbp - 0x2ac], eax
	jmp	.label_1279
.label_1300:
	nop	
	movzx	eax, byte ptr [rbp - 0x135]
	sub	eax, 0x30
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x2ac], eax
.label_1279:
	nop	
	mov	eax, dword ptr [rbp - 0x2ac]
	movsxd	rcx, eax
	nop	
	cmp	rcx, 0
	jge	.label_1291
	mov	rax, qword ptr [rbp - 0x288]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x288]
	mov	rsp, rsp
	cmp	dword ptr [rbp - 0x110], 0
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x240], rax
	mov	qword ptr [rbp - 0x178], rcx
	lea	rdi, [rdi]
	jge	.label_1298
	nop	
	mov	eax, 0x30
	mov	rsp, rsp
	movzx	ecx, byte ptr [rbp - 0x135]
	sub	eax, ecx
	mov	dword ptr [rbp - 0x60], eax
	jmp	.label_1316
.label_1298:
	mov	rbp, rbp
	movzx	eax, byte ptr [rbp - 0x135]
	sub	eax, 0x30
	mov	dword ptr [rbp - 0x60], eax
.label_1316:
	mov	eax, dword ptr [rbp - 0x60]
	movsxd	rcx, eax
	mov	rdx, qword ptr [rbp - 0x178]
	add	rdx, rcx
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x240]
	lea	rdi, [rdi]
	cmp	rcx, rdx
	lea	rsi, [rsi]
	jle	.label_1160
	mov	rbp, rbp
	jmp	.label_1175
.label_1291:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x288]
	cmp	dword ptr [rbp - 0x110], 0
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x380], rax
	lea	rdi, [rdi]
	jge	.label_1346
	mov	eax, 0x30
	mov	rsp, rsp
	movzx	ecx, byte ptr [rbp - 0x135]
	sub	eax, ecx
	mov	dword ptr [rbp - 0x2dc], eax
	jmp	.label_1355
.label_1346:
	movzx	eax, byte ptr [rbp - 0x135]
	lea	rdi, [rdi]
	sub	eax, 0x30
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x2dc], eax
.label_1355:
	mov	eax, dword ptr [rbp - 0x2dc]
	lea	rsi, [rsi]
	movsxd	rcx, eax
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x380]
	add	rdx, rcx
	mov	rsp, rsp
	cmp	dword ptr [rbp - 0x110], 0
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x4e8], rdx
	lea	rdi, [rdi]
	jge	.label_1367
	mov	rsp, rsp
	mov	eax, 0x30
	mov	rsp, rsp
	movzx	ecx, byte ptr [rbp - 0x135]
	sub	eax, ecx
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x360], eax
	jmp	.label_1325
.label_1367:
	lea	rsi, [rsi]
	movzx	eax, byte ptr [rbp - 0x135]
	sub	eax, 0x30
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x360], eax
.label_1325:
	mov	eax, dword ptr [rbp - 0x360]
	movsxd	rcx, eax
	mov	rdx, qword ptr [rbp - 0x4e8]
	mov	rsp, rsp
	cmp	rdx, rcx
	jl	.label_1160
.label_1175:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x288]
	mov	rsp, rsp
	cmp	dword ptr [rbp - 0x110], 0
	mov	qword ptr [rbp - 0xd0], rax
	jge	.label_1332
	nop	
	mov	eax, 0x30
	nop	
	movzx	ecx, byte ptr [rbp - 0x135]
	lea	rdi, [rdi]
	sub	eax, ecx
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x38c], eax
	mov	rsp, rsp
	jmp	.label_1419
.label_1332:
	nop	
	movzx	eax, byte ptr [rbp - 0x135]
	nop	
	sub	eax, 0x30
	mov	dword ptr [rbp - 0x38c], eax
.label_1419:
	mov	eax, dword ptr [rbp - 0x38c]
	mov	rbp, rbp
	movabs	rcx, 0x8000000000000000
	nop	
	movsxd	rdx, eax
	mov	rsi, qword ptr [rbp - 0xd0]
	add	rsi, rdx
	mov	rsp, rsp
	cmp	rsi, rcx
	mov	rsp, rsp
	jl	.label_1160
	mov	rax, qword ptr [rbp - 0x288]
	nop	
	cmp	dword ptr [rbp - 0x110], 0
	mov	qword ptr [rbp - 0x580], rax
	jge	.label_1443
	mov	eax, 0x30
	movzx	ecx, byte ptr [rbp - 0x135]
	lea	rsi, [rsi]
	sub	eax, ecx
	mov	dword ptr [rbp - 0x1a8], eax
	mov	rbp, rbp
	jmp	.label_1630
.label_1443:
	mov	rsp, rsp
	movzx	eax, byte ptr [rbp - 0x135]
	sub	eax, 0x30
	mov	dword ptr [rbp - 0x1a8], eax
.label_1630:
	mov	eax, dword ptr [rbp - 0x1a8]
	movabs	rcx, 0x7fffffffffffffff
	movsxd	rdx, eax
	mov	rsi, qword ptr [rbp - 0x580]
	lea	rdi, [rdi]
	add	rsi, rdx
	lea	rdi, [rdi]
	cmp	rcx, rsi
	jge	.label_1458
.label_1160:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x288]
	cmp	dword ptr [rbp - 0x110], 0
	mov	qword ptr [rbp - 0x530], rax
	mov	rbp, rbp
	jge	.label_1469
	lea	rsi, [rsi]
	mov	eax, 0x30
	nop	
	movzx	ecx, byte ptr [rbp - 0x135]
	lea	rdi, [rdi]
	sub	eax, ecx
	mov	dword ptr [rbp - 0x32c], eax
	jmp	.label_1417
.label_1469:
	mov	rbp, rbp
	movzx	eax, byte ptr [rbp - 0x135]
	nop	
	sub	eax, 0x30
	mov	dword ptr [rbp - 0x32c], eax
.label_1417:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x32c]
	lea	rsi, [rsi]
	mov	cl, 1
	movsxd	rdx, eax
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x530]
	mov	rsp, rsp
	add	rsi, rdx
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x288], rsi
	lea	rdi, [rdi]
	test	cl, 1
	lea	rdi, [rdi]
	jne	.label_1222
	jmp	.label_1171
.label_1458:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x288]
	cmp	dword ptr [rbp - 0x110], 0
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x78], rax
	mov	rsp, rsp
	jge	.label_1508
	mov	eax, 0x30
	nop	
	movzx	ecx, byte ptr [rbp - 0x135]
	nop	
	sub	eax, ecx
	mov	dword ptr [rbp - 0x17c], eax
	jmp	.label_1648
.label_1508:
	movzx	eax, byte ptr [rbp - 0x135]
	sub	eax, 0x30
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x17c], eax
.label_1648:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x17c]
	xor	ecx, ecx
	mov	dl, cl
	movsxd	rsi, eax
	nop	
	mov	rdi, qword ptr [rbp - 0x78]
	mov	rsp, rsp
	add	rdi, rsi
	nop	
	mov	qword ptr [rbp - 0x288], rdi
	lea	rdi, [rdi]
	test	dl, 1
	jne	.label_1222
	nop	
	jmp	.label_1171
.label_1651:
	lea	rdi, [rdi]
	mov	al, 1
	lea	rsi, [rsi]
	test	al, 1
	jne	.label_1542
	nop	
	jmp	.label_1549
.label_1542:
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x110], 0
	jge	.label_1552
	mov	rbp, rbp
	mov	eax, 0x30
	movzx	ecx, byte ptr [rbp - 0x135]
	sub	eax, ecx
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0xd8], eax
	lea	rsi, [rsi]
	jmp	.label_1656
.label_1552:
	lea	rsi, [rsi]
	movzx	eax, byte ptr [rbp - 0x135]
	sub	eax, 0x30
	mov	dword ptr [rbp - 0xd8], eax
.label_1656:
	mov	eax, dword ptr [rbp - 0xd8]
	cmp	eax, 0
	jge	.label_1562
	nop	
	mov	rax, qword ptr [rbp - 0x288]
	lea	rsi, [rsi]
	cmp	dword ptr [rbp - 0x110], 0
	mov	qword ptr [rbp - 0x1f0], rax
	mov	rbp, rbp
	jge	.label_1565
	mov	rsp, rsp
	mov	eax, 0x30
	movzx	ecx, byte ptr [rbp - 0x135]
	nop	
	sub	eax, ecx
	mov	dword ptr [rbp - 0x544], eax
	lea	rsi, [rsi]
	jmp	.label_1480
.label_1565:
	movzx	eax, byte ptr [rbp - 0x135]
	sub	eax, 0x30
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x544], eax
.label_1480:
	mov	eax, dword ptr [rbp - 0x544]
	movabs	rcx, 0x8000000000000000
	mov	rbp, rbp
	movsxd	rdx, eax
	sub	rcx, rdx
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x1f0]
	mov	rsp, rsp
	cmp	rdx, rcx
	nop	
	jl	.label_1197
	lea	rsi, [rsi]
	jmp	.label_1209
.label_1562:
	mov	rsp, rsp
	cmp	dword ptr [rbp - 0x110], 0
	lea	rsi, [rsi]
	jge	.label_1599
	mov	eax, 0x30
	mov	rbp, rbp
	movzx	ecx, byte ptr [rbp - 0x135]
	sub	eax, ecx
	nop	
	mov	dword ptr [rbp - 0x4ec], eax
	lea	rsi, [rsi]
	jmp	.label_1672
.label_1599:
	mov	rbp, rbp
	movzx	eax, byte ptr [rbp - 0x135]
	lea	rsi, [rsi]
	sub	eax, 0x30
	mov	dword ptr [rbp - 0x4ec], eax
.label_1672:
	mov	eax, dword ptr [rbp - 0x4ec]
	nop	
	movabs	rcx, 0x7fffffffffffffff
	movsxd	rdx, eax
	sub	rcx, rdx
	cmp	rcx, qword ptr [rbp - 0x288]
	jl	.label_1197
	jmp	.label_1209
.label_1549:
	cmp	qword ptr [rbp - 0x288], 0
	jge	.label_1631
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x110], 0
	jge	.label_1635
	mov	eax, 0x30
	mov	rsp, rsp
	movzx	ecx, byte ptr [rbp - 0x135]
	lea	rsi, [rsi]
	sub	eax, ecx
	mov	dword ptr [rbp - 0x5a4], eax
	lea	rsi, [rsi]
	jmp	.label_1640
.label_1635:
	nop	
	movzx	eax, byte ptr [rbp - 0x135]
	mov	rbp, rbp
	sub	eax, 0x30
	mov	dword ptr [rbp - 0x5a4], eax
.label_1640:
	mov	eax, dword ptr [rbp - 0x5a4]
	lea	rsi, [rsi]
	movsxd	rcx, eax
	mov	rdx, qword ptr [rbp - 0x288]
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x110], 0
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x558], rcx
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x3f8], rdx
	jge	.label_1418
	mov	eax, 0x30
	movzx	ecx, byte ptr [rbp - 0x135]
	sub	eax, ecx
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x84], eax
	jmp	.label_1534
.label_1418:
	mov	rsp, rsp
	movzx	eax, byte ptr [rbp - 0x135]
	sub	eax, 0x30
	mov	dword ptr [rbp - 0x84], eax
.label_1534:
	mov	eax, dword ptr [rbp - 0x84]
	lea	rdi, [rdi]
	movsxd	rcx, eax
	mov	rdx, qword ptr [rbp - 0x3f8]
	add	rdx, rcx
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x558]
	cmp	rcx, rdx
	nop	
	jle	.label_1197
	jmp	.label_1209
.label_1631:
	mov	rsp, rsp
	cmp	dword ptr [rbp - 0x110], 0
	mov	rsp, rsp
	jge	.label_1689
	mov	eax, 0x30
	lea	rsi, [rsi]
	movzx	ecx, byte ptr [rbp - 0x135]
	sub	eax, ecx
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x428], eax
	jmp	.label_1695
.label_1689:
	lea	rsi, [rsi]
	movzx	eax, byte ptr [rbp - 0x135]
	sub	eax, 0x30
	mov	dword ptr [rbp - 0x428], eax
.label_1695:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x428]
	cmp	eax, 0
	jge	.label_1166
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x288]
	mov	rcx, qword ptr [rbp - 0x288]
	mov	rsp, rsp
	cmp	dword ptr [rbp - 0x110], 0
	nop	
	mov	qword ptr [rbp - 0x298], rax
	mov	qword ptr [rbp - 0x2c0], rcx
	mov	rbp, rbp
	jge	.label_1245
	lea	rsi, [rsi]
	mov	eax, 0x30
	movzx	ecx, byte ptr [rbp - 0x135]
	sub	eax, ecx
	mov	dword ptr [rbp - 0x54c], eax
	nop	
	jmp	.label_1186
.label_1245:
	lea	rdi, [rdi]
	movzx	eax, byte ptr [rbp - 0x135]
	sub	eax, 0x30
	mov	dword ptr [rbp - 0x54c], eax
.label_1186:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x54c]
	movsxd	rcx, eax
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x2c0]
	add	rdx, rcx
	mov	rcx, qword ptr [rbp - 0x298]
	cmp	rcx, rdx
	jle	.label_1197
	mov	rbp, rbp
	jmp	.label_1209
.label_1166:
	mov	rax, qword ptr [rbp - 0x288]
	mov	rsp, rsp
	cmp	dword ptr [rbp - 0x110], 0
	mov	qword ptr [rbp - 0x568], rax
	lea	rsi, [rsi]
	jge	.label_1450
	mov	rbp, rbp
	mov	eax, 0x30
	lea	rdi, [rdi]
	movzx	ecx, byte ptr [rbp - 0x135]
	sub	eax, ecx
	mov	dword ptr [rbp - 0x2f8], eax
	jmp	.label_1219
.label_1450:
	nop	
	movzx	eax, byte ptr [rbp - 0x135]
	sub	eax, 0x30
	mov	dword ptr [rbp - 0x2f8], eax
.label_1219:
	mov	eax, dword ptr [rbp - 0x2f8]
	nop	
	movsxd	rcx, eax
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x568]
	add	rdx, rcx
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x110], 0
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x368], rdx
	jge	.label_1230
	mov	eax, 0x30
	lea	rsi, [rsi]
	movzx	ecx, byte ptr [rbp - 0x135]
	sub	eax, ecx
	mov	dword ptr [rbp - 0x1b4], eax
	mov	rsp, rsp
	jmp	.label_1246
.label_1230:
	movzx	eax, byte ptr [rbp - 0x135]
	lea	rsi, [rsi]
	sub	eax, 0x30
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x1b4], eax
.label_1246:
	mov	eax, dword ptr [rbp - 0x1b4]
	nop	
	movsxd	rcx, eax
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x368]
	cmp	rdx, rcx
	jl	.label_1197
.label_1209:
	mov	rax, qword ptr [rbp - 0x288]
	mov	rsp, rsp
	cmp	dword ptr [rbp - 0x110], 0
	mov	qword ptr [rbp - 0x130], rax
	jge	.label_1270
	mov	eax, 0x30
	movzx	ecx, byte ptr [rbp - 0x135]
	nop	
	sub	eax, ecx
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x3a8], eax
	jmp	.label_1335
.label_1270:
	nop	
	movzx	eax, byte ptr [rbp - 0x135]
	nop	
	sub	eax, 0x30
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x3a8], eax
.label_1335:
	mov	eax, dword ptr [rbp - 0x3a8]
	lea	rdi, [rdi]
	movabs	rcx, 0x8000000000000000
	movsxd	rdx, eax
	mov	rsi, qword ptr [rbp - 0x130]
	lea	rdi, [rdi]
	add	rsi, rdx
	mov	rbp, rbp
	cmp	rsi, rcx
	lea	rsi, [rsi]
	jl	.label_1197
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x288]
	lea	rsi, [rsi]
	cmp	dword ptr [rbp - 0x110], 0
	mov	qword ptr [rbp - 0xa0], rax
	mov	rsp, rsp
	jge	.label_1454
	mov	rbp, rbp
	mov	eax, 0x30
	movzx	ecx, byte ptr [rbp - 0x135]
	sub	eax, ecx
	mov	dword ptr [rbp - 0x47c], eax
	jmp	.label_1322
.label_1454:
	movzx	eax, byte ptr [rbp - 0x135]
	sub	eax, 0x30
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x47c], eax
.label_1322:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x47c]
	movabs	rcx, 0x7fffffffffffffff
	movsxd	rdx, eax
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0xa0]
	mov	rsp, rsp
	add	rsi, rdx
	cmp	rcx, rsi
	jge	.label_1336
.label_1197:
	mov	rax, qword ptr [rbp - 0x288]
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x110], 0
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x470], rax
	jge	.label_1406
	mov	rsp, rsp
	mov	eax, 0x30
	lea	rsi, [rsi]
	movzx	ecx, byte ptr [rbp - 0x135]
	sub	eax, ecx
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x3d0], eax
	lea	rdi, [rdi]
	jmp	.label_1357
.label_1406:
	movzx	eax, byte ptr [rbp - 0x135]
	lea	rdi, [rdi]
	sub	eax, 0x30
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x3d0], eax
.label_1357:
	mov	eax, dword ptr [rbp - 0x3d0]
	nop	
	mov	cl, 1
	movsxd	rdx, eax
	mov	rsi, qword ptr [rbp - 0x470]
	add	rsi, rdx
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x288], rsi
	nop	
	test	cl, 1
	mov	rsp, rsp
	jne	.label_1222
	mov	rsp, rsp
	jmp	.label_1171
.label_1336:
	mov	rax, qword ptr [rbp - 0x288]
	cmp	dword ptr [rbp - 0x110], 0
	mov	qword ptr [rbp - 0x598], rax
	mov	rbp, rbp
	jge	.label_1389
	nop	
	mov	eax, 0x30
	lea	rsi, [rsi]
	movzx	ecx, byte ptr [rbp - 0x135]
	lea	rsi, [rsi]
	sub	eax, ecx
	mov	dword ptr [rbp - 0x304], eax
	jmp	.label_1395
.label_1389:
	movzx	eax, byte ptr [rbp - 0x135]
	nop	
	sub	eax, 0x30
	nop	
	mov	dword ptr [rbp - 0x304], eax
.label_1395:
	mov	eax, dword ptr [rbp - 0x304]
	mov	rsp, rsp
	xor	ecx, ecx
	mov	dl, cl
	nop	
	movsxd	rsi, eax
	mov	rdi, qword ptr [rbp - 0x598]
	add	rdi, rsi
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x288], rdi
	test	dl, 1
	jne	.label_1222
	nop	
	jmp	.label_1171
.label_1222:
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x3c8], 0x3f
	jmp	.label_1264
.label_1171:
	mov	rax, qword ptr [rbp - 0x378]
	mov	rcx, rax
	mov	rsp, rsp
	add	rcx, 1
	mov	qword ptr [rbp - 0x378], rcx
	mov	dl, byte ptr [rax + 1]
	mov	byte ptr [rbp - 0x135], dl
	movzx	edi, byte ptr [rbp - 0x135]
	lea	rdi, [rdi]
	call	c_isdigit
	test	al, 1
	lea	rsi, [rsi]
	jne	.label_1442
	movzx	eax, byte ptr [rbp - 0x135]
	mov	rbp, rbp
	cmp	eax, 0x2e
	je	.label_1445
	movzx	eax, byte ptr [rbp - 0x135]
	cmp	eax, 0x2c
	jne	.label_1499
.label_1445:
	mov	rax, qword ptr [rbp - 0x378]
	mov	rsp, rsp
	movsx	edi, byte ptr [rax + 1]
	lea	rsi, [rsi]
	call	c_isdigit
	mov	rsp, rsp
	test	al, 1
	jne	.label_1455
	jmp	.label_1499
.label_1455:
	mov	rdi, qword ptr [rbp - 0x288]
	lea	rsi, [rsi]
	call	time_overflow
	mov	rbp, rbp
	test	al, 1
	jne	.label_1657
	jmp	.label_1464
.label_1657:
	mov	dword ptr [rbp - 0x3c8], 0x3f
	nop	
	jmp	.label_1264
.label_1464:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x288]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x4a0], rax
	mov	rax, qword ptr [rbp - 0x378]
	add	rax, 1
	mov	qword ptr [rbp - 0x378], rax
	mov	rax, qword ptr [rbp - 0x378]
	mov	rcx, rax
	add	rcx, 1
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x378], rcx
	lea	rdi, [rdi]
	movsx	edx, byte ptr [rax]
	mov	rbp, rbp
	sub	edx, 0x30
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x42c], edx
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x3bc], 2
.label_1529:
	cmp	dword ptr [rbp - 0x3bc], 9
	lea	rdi, [rdi]
	jg	.label_1497
	mov	rsp, rsp
	imul	eax, dword ptr [rbp - 0x42c], 0xa
	mov	dword ptr [rbp - 0x42c], eax
	nop	
	mov	rcx, qword ptr [rbp - 0x378]
	movsx	edi, byte ptr [rcx]
	call	c_isdigit
	test	al, 1
	mov	rsp, rsp
	jne	.label_1591
	nop	
	jmp	.label_1524
.label_1591:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x378]
	mov	rcx, rax
	lea	rdi, [rdi]
	add	rcx, 1
	mov	qword ptr [rbp - 0x378], rcx
	mov	rbp, rbp
	movsx	edx, byte ptr [rax]
	sub	edx, 0x30
	mov	rbp, rbp
	add	edx, dword ptr [rbp - 0x42c]
	mov	dword ptr [rbp - 0x42c], edx
.label_1524:
	jmp	.label_1692
.label_1692:
	mov	eax, dword ptr [rbp - 0x3bc]
	mov	rbp, rbp
	add	eax, 1
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x3bc], eax
	jmp	.label_1529
.label_1497:
	mov	rsp, rsp
	cmp	dword ptr [rbp - 0x110], 0
	lea	rdi, [rdi]
	jge	.label_1532
	jmp	.label_1451
.label_1451:
	mov	rax, qword ptr [rbp - 0x378]
	movsx	edi, byte ptr [rax]
	call	c_isdigit
	test	al, 1
	jne	.label_1266
	jmp	.label_1550
.label_1266:
	mov	rax, qword ptr [rbp - 0x378]
	nop	
	movsx	ecx, byte ptr [rax]
	mov	rbp, rbp
	cmp	ecx, 0x30
	nop	
	je	.label_1286
	mov	eax, dword ptr [rbp - 0x42c]
	mov	rsp, rsp
	add	eax, 1
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x42c], eax
	jmp	.label_1550
.label_1286:
	jmp	.label_1301
.label_1301:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x378]
	add	rax, 1
	mov	qword ptr [rbp - 0x378], rax
	jmp	.label_1451
.label_1550:
	jmp	.label_1532
.label_1532:
	jmp	.label_1566
.label_1566:
	mov	rax, qword ptr [rbp - 0x378]
	movsx	edi, byte ptr [rax]
	nop	
	call	c_isdigit
	test	al, 1
	mov	rsp, rsp
	jne	.label_1460
	lea	rsi, [rsi]
	jmp	.label_1414
.label_1460:
	mov	rax, qword ptr [rbp - 0x378]
	add	rax, 1
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x378], rax
	mov	rbp, rbp
	jmp	.label_1566
.label_1414:
	cmp	dword ptr [rbp - 0x110], 0
	mov	rsp, rsp
	jge	.label_1278
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x42c], 0
	je	.label_1278
	lea	rsi, [rsi]
	movabs	rax, 0x8000000000000000
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0x4a0], rax
	mov	rbp, rbp
	jne	.label_1583
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x3c8], 0x3f
	nop	
	jmp	.label_1264
.label_1583:
	mov	eax, 0x3b9aca00
	mov	rcx, qword ptr [rbp - 0x4a0]
	nop	
	add	rcx, -1
	mov	qword ptr [rbp - 0x4a0], rcx
	lea	rsi, [rsi]
	sub	eax, dword ptr [rbp - 0x42c]
	mov	dword ptr [rbp - 0x42c], eax
.label_1278:
	mov	eax, 0x115
	mov	rbp, rbp
	mov	ecx, 0x114
	mov	rdx, qword ptr [rbp - 0x4a0]
	mov	rsi, qword ptr [rbp - 0x4f8]
	lea	rdi, [rdi]
	mov	qword ptr [rsi], rdx
	lea	rsi, [rsi]
	movsxd	rdx, dword ptr [rbp - 0x42c]
	mov	rsi, qword ptr [rbp - 0x4f8]
	lea	rdi, [rdi]
	mov	qword ptr [rsi + 8], rdx
	mov	rdx, qword ptr [rbp - 0x378]
	mov	rsi, qword ptr [rbp - 0x160]
	mov	qword ptr [rsi], rdx
	cmp	dword ptr [rbp - 0x110], 0
	lea	rsi, [rsi]
	cmovne	eax, ecx
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x3c8], eax
	jmp	.label_1264
.label_1499:
	mov	eax, 0x113
	lea	rsi, [rsi]
	mov	ecx, 0x112
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x110], 0
	setl	dl
	mov	rsi, qword ptr [rbp - 0x4f8]
	lea	rdi, [rdi]
	and	dl, 1
	nop	
	mov	byte ptr [rsi], dl
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x288]
	mov	rdi, qword ptr [rbp - 0x4f8]
	lea	rdi, [rdi]
	mov	qword ptr [rdi + 8], rsi
	mov	rsi, qword ptr [rbp - 0x378]
	mov	rdi, qword ptr [rbp - 0x160]
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rdi]
	lea	rsi, [rsi]
	sub	rsi, rdi
	mov	rdi, qword ptr [rbp - 0x4f8]
	mov	qword ptr [rdi + 0x10], rsi
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x378]
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x160]
	mov	qword ptr [rdi], rsi
	cmp	dword ptr [rbp - 0x110], 0
	cmovne	eax, ecx
	mov	dword ptr [rbp - 0x3c8], eax
	nop	
	jmp	.label_1264
.label_1210:
	lea	rsi, [rsi]
	movzx	edi, byte ptr [rbp - 0x135]
	mov	rbp, rbp
	call	c_isalpha
	lea	rdi, [rdi]
	test	al, 1
	mov	rsp, rsp
	jne	.label_1682
	jmp	.label_1685
.label_1682:
	lea	rax, [rbp - 0x520]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x58], rax
.label_1190:
	lea	rsi, [rsi]
	lea	rax, [rbp - 0x520]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x58]
	add	rax, 0x14
	nop	
	add	rax, -1
	mov	rbp, rbp
	cmp	rcx, rax
	mov	rsp, rsp
	jae	.label_1691
	mov	al, byte ptr [rbp - 0x135]
	mov	rcx, qword ptr [rbp - 0x58]
	mov	rdx, rcx
	add	rdx, 1
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x58], rdx
	mov	byte ptr [rcx], al
.label_1691:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x160]
	mov	rsp, rsp
	mov	rcx, qword ptr [rax]
	mov	rdx, rcx
	mov	rsp, rsp
	add	rdx, 1
	mov	rbp, rbp
	mov	qword ptr [rax], rdx
	mov	sil, byte ptr [rcx + 1]
	nop	
	mov	byte ptr [rbp - 0x135], sil
	movzx	edi, byte ptr [rbp - 0x135]
	call	c_isalpha
	mov	cl, 1
	test	al, 1
	mov	byte ptr [rbp - 0x4a1], cl
	jne	.label_1183
	nop	
	movzx	eax, byte ptr [rbp - 0x135]
	lea	rsi, [rsi]
	cmp	eax, 0x2e
	lea	rsi, [rsi]
	sete	cl
	mov	byte ptr [rbp - 0x4a1], cl
.label_1183:
	mov	al, byte ptr [rbp - 0x4a1]
	test	al, 1
	jne	.label_1190
	lea	rsi, [rsi]
	lea	rsi, [rbp - 0x520]
	mov	rax, qword ptr [rbp - 0x58]
	mov	byte ptr [rax], 0
	mov	rdi, qword ptr [rbp - 0x160]
	mov	rbp, rbp
	call	lookup_word
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x40], rax
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0x40], 0
	jne	.label_1204
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x160]
	mov	rsp, rsp
	test	byte ptr [rax + 0xd9], 1
	lea	rdi, [rdi]
	je	.label_1211
	mov	rbp, rbp
	movabs	rdi, OFFSET FLAT:.str.98
	call	gettext
	mov	rbp, rbp
	lea	rsi, [rbp - 0x520]
	mov	rdi, rax
	mov	rsp, rsp
	mov	al, 0
	call	dbg_printf
.label_1211:
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x3c8], 0x3f
	nop	
	jmp	.label_1264
.label_1204:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x40]
	mov	rbp, rbp
	movsxd	rax, dword ptr [rax + 0xc]
	nop	
	mov	rcx, qword ptr [rbp - 0x4f8]
	lea	rsi, [rsi]
	mov	qword ptr [rcx], rax
	mov	rax, qword ptr [rbp - 0x40]
	mov	edx, dword ptr [rax + 8]
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x3c8], edx
	jmp	.label_1264
.label_1685:
	movzx	eax, byte ptr [rbp - 0x135]
	cmp	eax, 0x28
	je	.label_1251
	nop	
	mov	rax, qword ptr [rbp - 0x160]
	mov	rcx, qword ptr [rax]
	mov	rdx, rcx
	nop	
	add	rdx, 1
	mov	qword ptr [rax], rdx
	movsx	edi, byte ptr [rcx]
	call	to_uchar
	movzx	edi, al
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x3c8], edi
	lea	rsi, [rsi]
	jmp	.label_1264
.label_1251:
	mov	qword ptr [rbp - 0x478], 0
.label_1328:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x160]
	mov	rsp, rsp
	mov	rcx, qword ptr [rax]
	mov	rdx, rcx
	add	rdx, 1
	mov	qword ptr [rax], rdx
	lea	rdi, [rdi]
	mov	sil, byte ptr [rcx]
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x135], sil
	movzx	edi, byte ptr [rbp - 0x135]
	cmp	edi, 0
	nop	
	jne	.label_1271
	movzx	eax, byte ptr [rbp - 0x135]
	mov	dword ptr [rbp - 0x3c8], eax
	lea	rsi, [rsi]
	jmp	.label_1264
.label_1271:
	movzx	eax, byte ptr [rbp - 0x135]
	cmp	eax, 0x28
	mov	rbp, rbp
	jne	.label_1292
	mov	rax, qword ptr [rbp - 0x478]
	add	rax, 1
	mov	qword ptr [rbp - 0x478], rax
	lea	rdi, [rdi]
	jmp	.label_1299
.label_1292:
	nop	
	movzx	eax, byte ptr [rbp - 0x135]
	cmp	eax, 0x29
	lea	rsi, [rsi]
	jne	.label_1309
	nop	
	mov	rax, qword ptr [rbp - 0x478]
	mov	rsp, rsp
	add	rax, -1
	mov	qword ptr [rbp - 0x478], rax
.label_1309:
	mov	rbp, rbp
	jmp	.label_1299
.label_1299:
	jmp	.label_1326
.label_1326:
	cmp	qword ptr [rbp - 0x478], 0
	mov	rbp, rbp
	jne	.label_1328
	mov	rsp, rsp
	jmp	.label_1317
.label_1264:
	mov	eax, dword ptr [rbp - 0x3c8]
	add	rsp, 0x5d0
	lea	rdi, [rdi]
	pop	rbp
	mov	rbp, rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x419290

	.globl debug_print_current_time
	.type debug_print_current_time, @function
debug_print_current_time:
	lea	rsi, [rsi]
	push	rbp
	mov	rbp, rsp
	lea	rsi, [rsi]
	sub	rsp, 0x130
	mov	qword ptr [rbp - 0x58], rdi
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x20], rsi
	mov	byte ptr [rbp - 9], 0
	mov	rsi, qword ptr [rbp - 0x20]
	nop	
	test	byte ptr [rsi + 0xd9], 1
	jne	.label_1698
	jmp	.label_1705
.label_1698:
	lea	rsi, [rsi]
	movabs	rdi, OFFSET FLAT:.str.77
	nop	
	call	gettext
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x58]
	mov	rbp, rbp
	mov	rdi, rax
	mov	al, 0
	nop	
	call	dbg_printf
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x20]
	cmp	qword ptr [rsi + 0xa8], 0
	mov	rbp, rbp
	je	.label_1696
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	test	byte ptr [rax + 0xda], 1
	nop	
	jne	.label_1696
	mov	rsp, rsp
	movabs	rsi, OFFSET FLAT:.str.78
	lea	rdi, [rdi]
	mov	rdi,  qword ptr [word ptr [stderr]]
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	mov	rdx, qword ptr [rax + 0x28]
	mov	rax, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	mov	rcx, qword ptr [rax + 0x38]
	mov	rax, qword ptr [rbp - 0x20]
	mov	r8, qword ptr [rax + 0x40]
	mov	al, 0
	call	fprintf
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	mov	byte ptr [rcx + 0xda], 1
	mov	byte ptr [rbp - 9], 1
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x5c], eax
.label_1696:
	mov	rax, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	mov	cl, byte ptr [rax + 0xd8]
	lea	rdi, [rdi]
	and	cl, 1
	movzx	edx, cl
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x20]
	mov	cl, byte ptr [rax + 0xdf]
	lea	rdi, [rdi]
	and	cl, 1
	mov	rsp, rsp
	movzx	esi, cl
	cmp	edx, esi
	je	.label_1709
	mov	rsp, rsp
	test	byte ptr [rbp - 9], 1
	lea	rsi, [rsi]
	je	.label_1701
	mov	edi, 0x20
	mov	rsi,  qword ptr [word ptr [stderr]]
	call	fputc
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x2c], eax
.label_1701:
	lea	rsi, [rsi]
	movabs	rdi, OFFSET FLAT:.str.79
	lea	rdi, [rdi]
	mov	rax,  qword ptr [word ptr [stderr]]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x48], rax
	call	gettext
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rdx, qword ptr [rdi + 0x28]
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x48]
	mov	rsi, rax
	mov	al, 0
	mov	rbp, rbp
	call	fprintf
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x20]
	mov	cl, byte ptr [rdx + 0xd8]
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	and	cl, 1
	mov	byte ptr [rdx + 0xdf], cl
	mov	byte ptr [rbp - 9], 1
	mov	dword ptr [rbp - 0x28], eax
.label_1709:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x20]
	cmp	qword ptr [rax + 0xc8], 0
	je	.label_1703
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x20]
	test	byte ptr [rax + 0xdd], 1
	jne	.label_1703
	movabs	rax, OFFSET FLAT:.str.80
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rcx + 0x58]
	mov	qword ptr [rbp - 8], rcx
	lea	rsi, [rsi]
	mov	rdi,  qword ptr [word ptr [stderr]]
	mov	rbp, rbp
	mov	dl, byte ptr [rbp - 9]
	xor	dl, 0xff
	mov	rbp, rbp
	and	dl, 1
	movzx	esi, dl
	movsxd	rcx, esi
	lea	rdi, [rdi]
	add	rax, rcx
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	mov	rdx, qword ptr [rcx + 0x48]
	mov	rcx, qword ptr [rbp - 0x20]
	nop	
	mov	rcx, qword ptr [rcx + 0x50]
	mov	r8, qword ptr [rbp - 8]
	mov	rsi, rax
	mov	rsp, rsp
	mov	al, 0
	call	fprintf
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x20]
	cmp	qword ptr [rcx + 0x60], 0
	mov	dword ptr [rbp - 0x14], eax
	lea	rdi, [rdi]
	je	.label_1706
	movabs	rsi, OFFSET FLAT:.str.81
	mov	rax, qword ptr [rbp - 0x20]
	mov	rax, qword ptr [rax + 0x60]
	mov	ecx, eax
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x64], ecx
	mov	rdi,  qword ptr [word ptr [stderr]]
	mov	edx, dword ptr [rbp - 0x64]
	lea	rsi, [rsi]
	mov	al, 0
	lea	rsi, [rsi]
	call	fprintf
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x12c], eax
.label_1706:
	mov	rax, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	cmp	dword ptr [rax + 0x1c], 1
	nop	
	jne	.label_1700
	mov	rbp, rbp
	movabs	rdi, OFFSET FLAT:.str.41_0
	mov	rsi,  qword ptr [word ptr [stderr]]
	call	fputs
	mov	dword ptr [rbp - 0x18], eax
.label_1700:
	mov	rax, qword ptr [rbp - 0x20]
	mov	byte ptr [rax + 0xdd], 1
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 9], 1
.label_1703:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x20]
	cmp	qword ptr [rax + 0xb0], 0
	je	.label_1708
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x20]
	test	byte ptr [rax + 0xdb], 1
	lea	rdi, [rdi]
	jne	.label_1708
	test	byte ptr [rbp - 9], 1
	nop	
	je	.label_1697
	mov	rsp, rsp
	mov	edi, 0x20
	lea	rsi, [rsi]
	mov	rsi,  qword ptr [word ptr [stderr]]
	call	fputc
	mov	dword ptr [rbp - 0x4c], eax
.label_1697:
	movabs	rdi, OFFSET FLAT:.str.82
	mov	rax,  qword ptr [word ptr [stderr]]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0xe8], rax
	call	gettext
	mov	rbp, rbp
	mov	edx, 0x64
	mov	rbp, rbp
	lea	rsi, [rbp - 0xe0]
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x38], rax
	mov	rsp, rsp
	call	str_days
	mov	rsi, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rsi + 8]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x20]
	mov	r8d, dword ptr [rsi + 0x10]
	mov	rdi, qword ptr [rbp - 0xe8]
	mov	rsi, qword ptr [rbp - 0x38]
	mov	rdx, rax
	mov	rsp, rsp
	mov	al, 0
	lea	rsi, [rsi]
	call	fprintf
	nop	
	mov	rcx, qword ptr [rbp - 0x20]
	mov	byte ptr [rcx + 0xdb], 1
	mov	byte ptr [rbp - 9], 1
	mov	dword ptr [rbp - 0x10], eax
.label_1708:
	mov	rax, qword ptr [rbp - 0x20]
	cmp	qword ptr [rax + 0xb8], 0
	nop	
	je	.label_1702
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	test	byte ptr [rax + 0xdc], 1
	mov	rsp, rsp
	jne	.label_1702
	lea	rsi, [rsi]
	movabs	rax, OFFSET FLAT:.str_0
	mov	rsp, rsp
	movabs	rcx, OFFSET FLAT:.str.84
	lea	rsi, [rsi]
	movabs	rdx, OFFSET FLAT:.str.83
	mov	rbp, rbp
	mov	rdi,  qword ptr [word ptr [stderr]]
	mov	sil, byte ptr [rbp - 9]
	lea	rsi, [rsi]
	xor	sil, 0xff
	and	sil, 1
	movzx	r8d, sil
	lea	rsi, [rsi]
	movsxd	r9, r8d
	add	rdx, r9
	mov	r9, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	mov	r8d, dword ptr [r9 + 0x14]
	mov	r9, qword ptr [rbp - 0x20]
	cmp	qword ptr [r9 + 0xc0], 0
	mov	rsp, rsp
	cmovne	rax, rcx
	mov	rsi, rdx
	mov	edx, r8d
	mov	rsp, rsp
	mov	rcx, rax
	mov	al, 0
	lea	rdi, [rdi]
	call	fprintf
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	mov	byte ptr [rcx + 0xdc], 1
	mov	byte ptr [rbp - 9], 1
	mov	dword ptr [rbp - 0x60], eax
.label_1702:
	mov	rax, qword ptr [rbp - 0x20]
	cmp	qword ptr [rax + 0xd0], 0
	lea	rsi, [rsi]
	je	.label_1699
	mov	rax, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	test	byte ptr [rax + 0xde], 1
	mov	rbp, rbp
	jne	.label_1699
	lea	rsi, [rbp - 0x110]
	lea	rdi, [rdi]
	movabs	rax, OFFSET FLAT:.str.85
	mov	rdi,  qword ptr [word ptr [stderr]]
	mov	rbp, rbp
	mov	cl, byte ptr [rbp - 9]
	xor	cl, 0xff
	and	cl, 1
	mov	rbp, rbp
	movzx	edx, cl
	movsxd	r8, edx
	mov	rbp, rbp
	add	rax, r8
	lea	rsi, [rsi]
	mov	r8, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	mov	edx, dword ptr [r8 + 0x18]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x128], rdi
	lea	rdi, [rdi]
	mov	edi, edx
	nop	
	mov	qword ptr [rbp - 0xf0], rax
	call	time_zone_str
	mov	rdi, qword ptr [rbp - 0x128]
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0xf0]
	lea	rsi, [rsi]
	mov	rdx, rax
	mov	al, 0
	call	fprintf
	mov	rdx, qword ptr [rbp - 0x20]
	mov	byte ptr [rdx + 0xde], 1
	mov	byte ptr [rbp - 9], 1
	mov	dword ptr [rbp - 0x114], eax
.label_1699:
	mov	rax, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	test	byte ptr [rax + 0xa0], 1
	lea	rsi, [rsi]
	je	.label_1704
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x20]
	mov	rax, qword ptr [rax + 0x58]
	mov	qword ptr [rbp - 0x120], rax
	nop	
	test	byte ptr [rbp - 9], 1
	je	.label_1707
	nop	
	mov	edi, 0x20
	mov	rsp, rsp
	mov	rsi,  qword ptr [word ptr [stderr]]
	call	fputc
	mov	dword ptr [rbp - 0x24], eax
.label_1707:
	nop	
	movabs	rdi, OFFSET FLAT:.str.86
	mov	rsp, rsp
	mov	rax,  qword ptr [word ptr [stderr]]
	mov	qword ptr [rbp - 0x70], rax
	call	gettext
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x120]
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x70]
	mov	rsi, rax
	lea	rsi, [rsi]
	mov	al, 0
	call	fprintf
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x130], eax
.label_1704:
	nop	
	mov	edi, 0xa
	mov	rsi,  qword ptr [word ptr [stderr]]
	mov	rsp, rsp
	call	fputc
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x3c], eax
.label_1705:
	add	rsp, 0x130
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x419880

	.globl debug_print_relative_time
	.type debug_print_relative_time, @function
debug_print_relative_time:
	nop	
	push	rbp
	mov	rsp, rsp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	qword ptr [rbp - 0x10], rdi
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x20], rsi
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x21], 0
	mov	rsi, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	test	byte ptr [rsi + 0xd9], 1
	nop	
	jne	.label_1710
	jmp	.label_1712
.label_1710:
	mov	rbp, rbp
	movabs	rdi, OFFSET FLAT:.str.77
	lea	rsi, [rsi]
	call	gettext
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdi, rax
	nop	
	mov	al, 0
	lea	rsi, [rsi]
	call	dbg_printf
	mov	rsi, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	cmp	qword ptr [rsi + 0x68], 0
	mov	rbp, rbp
	jne	.label_1711
	mov	rax, qword ptr [rbp - 0x20]
	cmp	qword ptr [rax + 0x70], 0
	jne	.label_1711
	mov	rax, qword ptr [rbp - 0x20]
	cmp	qword ptr [rax + 0x78], 0
	lea	rsi, [rsi]
	jne	.label_1711
	mov	rax, qword ptr [rbp - 0x20]
	cmp	qword ptr [rax + 0x80], 0
	lea	rsi, [rsi]
	jne	.label_1711
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	cmp	qword ptr [rax + 0x88], 0
	mov	rbp, rbp
	jne	.label_1711
	nop	
	mov	rax, qword ptr [rbp - 0x20]
	cmp	qword ptr [rax + 0x90], 0
	lea	rsi, [rsi]
	jne	.label_1711
	mov	rax, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	cmp	dword ptr [rax + 0x98], 0
	mov	rbp, rbp
	jne	.label_1711
	movabs	rdi, OFFSET FLAT:.str.87
	call	gettext
	lea	rdi, [rdi]
	mov	rsi,  qword ptr [word ptr [stderr]]
	mov	rbp, rbp
	mov	rdi, rax
	call	fputs
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x14], eax
	mov	rsp, rsp
	jmp	.label_1712
.label_1711:
	mov	rbp, rbp
	movabs	rdx, OFFSET FLAT:.str.88
	mov	rbp, rbp
	mov	al, byte ptr [rbp - 0x21]
	nop	
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rsi, qword ptr [rcx + 0x68]
	and	al, 1
	movzx	edi, al
	call	print_rel_part
	lea	rdi, [rdi]
	movabs	rdx, OFFSET FLAT:.str.89
	mov	rsp, rsp
	and	al, 1
	mov	byte ptr [rbp - 0x21], al
	nop	
	mov	al, byte ptr [rbp - 0x21]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rsi, qword ptr [rcx + 0x70]
	lea	rdi, [rdi]
	and	al, 1
	mov	rsp, rsp
	movzx	edi, al
	call	print_rel_part
	movabs	rdx, OFFSET FLAT:.str.90
	lea	rdi, [rdi]
	and	al, 1
	mov	byte ptr [rbp - 0x21], al
	mov	al, byte ptr [rbp - 0x21]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rcx + 0x78]
	lea	rsi, [rsi]
	and	al, 1
	mov	rsp, rsp
	movzx	edi, al
	mov	rsp, rsp
	call	print_rel_part
	mov	rsp, rsp
	movabs	rdx, OFFSET FLAT:.str.91
	lea	rsi, [rsi]
	and	al, 1
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x21], al
	mov	al, byte ptr [rbp - 0x21]
	nop	
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rsi, qword ptr [rcx + 0x80]
	and	al, 1
	movzx	edi, al
	nop	
	call	print_rel_part
	movabs	rdx, OFFSET FLAT:.str.92
	and	al, 1
	mov	byte ptr [rbp - 0x21], al
	mov	rbp, rbp
	mov	al, byte ptr [rbp - 0x21]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rsi, qword ptr [rcx + 0x88]
	mov	rbp, rbp
	and	al, 1
	movzx	edi, al
	call	print_rel_part
	movabs	rdx, OFFSET FLAT:.str.93
	lea	rdi, [rdi]
	and	al, 1
	mov	byte ptr [rbp - 0x21], al
	mov	al, byte ptr [rbp - 0x21]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	mov	rsi, qword ptr [rcx + 0x90]
	and	al, 1
	movzx	edi, al
	call	print_rel_part
	mov	rsp, rsp
	movabs	rdx, OFFSET FLAT:.str.94
	nop	
	and	al, 1
	mov	byte ptr [rbp - 0x21], al
	lea	rsi, [rsi]
	mov	al, byte ptr [rbp - 0x21]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	movsxd	rsi, dword ptr [rcx + 0x98]
	and	al, 1
	mov	rsp, rsp
	movzx	edi, al
	mov	rsp, rsp
	call	print_rel_part
	lea	rdi, [rdi]
	mov	edi, 0xa
	mov	rsi,  qword ptr [word ptr [stderr]]
	mov	byte ptr [rbp - 5], al
	nop	
	call	fputc
	mov	dword ptr [rbp - 4], eax
.label_1712:
	nop	
	add	rsp, 0x30
	mov	rbp, rbp
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x419b30

	.globl set_hhmmss
	.type set_hhmmss, @function
set_hhmmss:
	lea	rdi, [rdi]
	push	rbp
	nop	
	mov	rbp, rsp
	mov	qword ptr [rbp - 0x18], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rbp, rbp
	mov	qword ptr [rbp - 8], rdx
	mov	qword ptr [rbp - 0x28], rcx
	mov	dword ptr [rbp - 0x1c], r8d
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	mov	qword ptr [rdx + 0x48], rcx
	mov	rcx, qword ptr [rbp - 8]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	qword ptr [rdx + 0x50], rcx
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x28]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	mov	qword ptr [rdx + 0x58], rcx
	mov	rbp, rbp
	movsxd	rcx, dword ptr [rbp - 0x1c]
	mov	rdx, qword ptr [rbp - 0x18]
	nop	
	mov	qword ptr [rdx + 0x60], rcx
	pop	rbp
	mov	rsp, rsp
	ret	
	.section	.text
	.align	32
	#Procedure 0x419ba0

	.globl time_zone_hhmm
	.type time_zone_hhmm, @function
time_zone_hhmm:
	push	rbp
	mov	rbp, rsp
	nop	
	lea	rax, [rbp + 0x10]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x10], rdi
	nop	
	mov	qword ptr [rbp - 0x30], rsi
	mov	byte ptr [rbp - 0x39], 0
	cmp	qword ptr [rax + 0x10], 2
	mov	qword ptr [rbp - 0x18], rax
	lea	rsi, [rsi]
	jg	.label_1727
	cmp	qword ptr [rbp - 0x30], 0
	jge	.label_1727
	mov	rax, qword ptr [rbp - 0x18]
	nop	
	imul	rcx, qword ptr [rax + 8], 0x64
	mov	rbp, rbp
	mov	qword ptr [rax + 8], rcx
.label_1727:
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0x30], 0
	jge	.label_1742
	lea	rdi, [rdi]
	mov	eax, 0x64
	mov	ecx, eax
	nop	
	mov	rdx, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rdx + 8]
	cqo	
	idiv	rcx
	mov	rsp, rsp
	imul	rax, rax, 0x3c
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rsi + 8]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x48], rax
	mov	rax, rdi
	cqo	
	idiv	rcx
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x48]
	nop	
	add	rcx, rdx
	mov	qword ptr [rbp - 0x28], rcx
	jmp	.label_1745
.label_1742:
	lea	rdi, [rdi]
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_1736
	jmp	.label_1739
.label_1736:
	nop	
	mov	rax, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	cmp	qword ptr [rax + 8], 0
	jge	.label_1741
	movabs	rax, 0x222222222222222
	nop	
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	cmp	qword ptr [rcx + 8], rax
	mov	rbp, rbp
	jl	.label_1728
	jmp	.label_1718
.label_1741:
	mov	rbp, rbp
	xor	eax, eax
	mov	cl, al
	mov	rsp, rsp
	test	cl, 1
	mov	rsp, rsp
	jne	.label_1722
	mov	rbp, rbp
	jmp	.label_1732
.label_1722:
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_1728
	mov	rsp, rsp
	jmp	.label_1718
.label_1732:
	movabs	rax, 0xfdddddddddddddde
	mov	rcx, qword ptr [rbp - 0x18]
	cmp	rax, qword ptr [rcx + 8]
	lea	rdi, [rdi]
	jl	.label_1728
	jmp	.label_1718
.label_1739:
	xor	eax, eax
	mov	rsp, rsp
	mov	cl, al
	test	cl, 1
	jne	.label_1750
	jmp	.label_1746
.label_1750:
	lea	rsi, [rsi]
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_1728
	nop	
	jmp	.label_1718
.label_1746:
	nop	
	mov	rax, qword ptr [rbp - 0x18]
	cmp	qword ptr [rax + 8], 0
	jge	.label_1720
	movabs	rax, 0xfdddddddddddddde
	mov	rcx, qword ptr [rbp - 0x18]
	cmp	qword ptr [rcx + 8], rax
	mov	rsp, rsp
	jl	.label_1728
	jmp	.label_1718
.label_1720:
	movabs	rax, 0x222222222222222
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	cmp	rax, qword ptr [rcx + 8]
	lea	rsi, [rsi]
	jl	.label_1728
.label_1718:
	movabs	rax, 0x8000000000000000
	mov	rcx, qword ptr [rbp - 0x18]
	nop	
	imul	rdx, qword ptr [rcx + 8], 0x3c
	lea	rdi, [rdi]
	cmp	rdx, rax
	lea	rdi, [rdi]
	jl	.label_1728
	movabs	rax, 0x7fffffffffffffff
	mov	rcx, qword ptr [rbp - 0x18]
	imul	rdx, qword ptr [rcx + 8], 0x3c
	mov	rbp, rbp
	cmp	rax, rdx
	mov	rbp, rbp
	jge	.label_1715
.label_1728:
	mov	rbp, rbp
	mov	eax, 1
	mov	rcx, qword ptr [rbp - 0x18]
	nop	
	imul	rdx, qword ptr [rcx + 8], 0x3c
	nop	
	mov	qword ptr [rbp - 0x28], rdx
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x38], eax
	jmp	.label_1731
.label_1715:
	nop	
	xor	eax, eax
	mov	rcx, qword ptr [rbp - 0x18]
	imul	rdx, qword ptr [rcx + 8], 0x3c
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x28], rdx
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x38], eax
.label_1731:
	mov	eax, dword ptr [rbp - 0x38]
	mov	cl, byte ptr [rbp - 0x39]
	and	cl, 1
	mov	rsp, rsp
	movzx	edx, cl
	lea	rdi, [rdi]
	or	edx, eax
	cmp	edx, 0
	setne	cl
	and	cl, 1
	mov	byte ptr [rbp - 0x39], cl
	mov	rsi, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	test	byte ptr [rsi], 1
	je	.label_1737
	nop	
	mov	al, 1
	test	al, 1
	jne	.label_1721
	lea	rsi, [rsi]
	jmp	.label_1726
.label_1721:
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x30], 0
	mov	rsp, rsp
	jge	.label_1730
	mov	rbp, rbp
	movabs	rax, 0x7fffffffffffffff
	add	rax, qword ptr [rbp - 0x30]
	cmp	rax, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	jl	.label_1717
	jmp	.label_1723
.label_1730:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x28]
	movabs	rcx, 0x8000000000000000
	add	rcx, qword ptr [rbp - 0x30]
	cmp	rax, rcx
	jl	.label_1717
	jmp	.label_1723
.label_1726:
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x28], 0
	jge	.label_1749
	lea	rdi, [rdi]
	mov	al, 1
	test	al, 1
	jne	.label_1717
	lea	rsi, [rsi]
	jmp	.label_1723
.label_1749:
	cmp	qword ptr [rbp - 0x30], 0
	nop	
	jge	.label_1735
	mov	rax, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	sub	rax, qword ptr [rbp - 0x30]
	cmp	rax, qword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	jle	.label_1717
	nop	
	jmp	.label_1723
.label_1735:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	cmp	rax, qword ptr [rbp - 0x30]
	lea	rsi, [rsi]
	jl	.label_1717
.label_1723:
	lea	rsi, [rsi]
	movabs	rax, 0x8000000000000000
	mov	rcx, qword ptr [rbp - 0x28]
	sub	rcx, qword ptr [rbp - 0x30]
	cmp	rcx, rax
	jl	.label_1717
	lea	rdi, [rdi]
	movabs	rax, 0x7fffffffffffffff
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x28]
	sub	rcx, qword ptr [rbp - 0x30]
	mov	rbp, rbp
	cmp	rax, rcx
	nop	
	jge	.label_1748
.label_1717:
	mov	rsp, rsp
	mov	eax, 1
	mov	rcx, qword ptr [rbp - 0x28]
	sub	rcx, qword ptr [rbp - 0x30]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x28], rcx
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x34], eax
	nop	
	jmp	.label_1729
.label_1748:
	xor	eax, eax
	mov	rcx, qword ptr [rbp - 0x28]
	nop	
	sub	rcx, qword ptr [rbp - 0x30]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x28], rcx
	mov	dword ptr [rbp - 0x34], eax
.label_1729:
	mov	eax, dword ptr [rbp - 0x34]
	mov	rsp, rsp
	mov	dword ptr [rbp - 4], eax
	nop	
	jmp	.label_1740
.label_1737:
	mov	al, 1
	lea	rdi, [rdi]
	test	al, 1
	jne	.label_1744
	lea	rdi, [rdi]
	jmp	.label_1747
.label_1744:
	nop	
	cmp	qword ptr [rbp - 0x30], 0
	jge	.label_1714
	movabs	rax, 0x8000000000000000
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x28]
	sub	rax, qword ptr [rbp - 0x30]
	mov	rbp, rbp
	cmp	rcx, rax
	jl	.label_1724
	jmp	.label_1716
.label_1714:
	movabs	rax, 0x7fffffffffffffff
	lea	rsi, [rsi]
	sub	rax, qword ptr [rbp - 0x30]
	cmp	rax, qword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	jl	.label_1724
	jmp	.label_1716
.label_1747:
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x28], 0
	lea	rsi, [rsi]
	jge	.label_1738
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x30]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	add	rcx, qword ptr [rbp - 0x30]
	lea	rsi, [rsi]
	cmp	rax, rcx
	jle	.label_1724
	jmp	.label_1716
.label_1738:
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x30], 0
	jge	.label_1719
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x28]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x28]
	add	rcx, qword ptr [rbp - 0x30]
	cmp	rax, rcx
	lea	rsi, [rsi]
	jle	.label_1724
	jmp	.label_1716
.label_1719:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x28]
	nop	
	add	rax, qword ptr [rbp - 0x30]
	cmp	rax, qword ptr [rbp - 0x30]
	jl	.label_1724
.label_1716:
	lea	rdi, [rdi]
	movabs	rax, 0x8000000000000000
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	add	rcx, qword ptr [rbp - 0x30]
	cmp	rcx, rax
	jl	.label_1724
	movabs	rax, 0x7fffffffffffffff
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	add	rcx, qword ptr [rbp - 0x30]
	mov	rbp, rbp
	cmp	rax, rcx
	lea	rdi, [rdi]
	jge	.label_1743
.label_1724:
	lea	rsi, [rsi]
	mov	eax, 1
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x28]
	mov	rbp, rbp
	add	rcx, qword ptr [rbp - 0x30]
	nop	
	mov	qword ptr [rbp - 0x28], rcx
	mov	dword ptr [rbp - 0x1c], eax
	jmp	.label_1734
.label_1743:
	xor	eax, eax
	mov	rcx, qword ptr [rbp - 0x28]
	nop	
	add	rcx, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x28], rcx
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x1c], eax
.label_1734:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x1c]
	mov	dword ptr [rbp - 4], eax
.label_1740:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 4]
	mov	cl, byte ptr [rbp - 0x39]
	and	cl, 1
	movzx	edx, cl
	or	edx, eax
	nop	
	cmp	edx, 0
	setne	cl
	mov	rsp, rsp
	and	cl, 1
	mov	byte ptr [rbp - 0x39], cl
.label_1745:
	test	byte ptr [rbp - 0x39], 1
	jne	.label_1713
	mov	rax, -0x5a0
	cmp	rax, qword ptr [rbp - 0x28]
	jg	.label_1713
	nop	
	cmp	qword ptr [rbp - 0x28], 0x5a0
	lea	rdi, [rdi]
	jle	.label_1725
.label_1713:
	mov	byte ptr [rbp - 0x1d], 0
	jmp	.label_1733
.label_1725:
	imul	rax, qword ptr [rbp - 0x28], 0x3c
	nop	
	mov	ecx, eax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x10]
	mov	dword ptr [rax + 0x18], ecx
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x1d], 1
.label_1733:
	mov	al, byte ptr [rbp - 0x1d]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x41a160

	.globl apply_relative_time
	.type apply_relative_time, @function
apply_relative_time:
	push	rbp
	nop	
	mov	rbp, rsp
	mov	rbp, rbp
	push	rax
	lea	rsi, [rsi]
	lea	rax, [rbp + 0x10]
	mov	qword ptr [rbp - 0x70], rdi
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x60], esi
	nop	
	cmp	dword ptr [rbp - 0x60], 0
	mov	qword ptr [rbp - 0x58], rax
	jge	.label_1854
	nop	
	mov	al, 1
	test	al, 1
	jne	.label_1843
	nop	
	jmp	.label_1859
.label_1843:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x58]
	cmp	dword ptr [rax + 0x30], 0
	mov	rsp, rsp
	jge	.label_1866
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x58]
	nop	
	mov	ecx, dword ptr [rax + 0x30]
	add	ecx, 0x7fffffff
	mov	rdx, qword ptr [rbp - 0x70]
	mov	rsp, rsp
	cmp	ecx, dword ptr [rdx + 0x98]
	jl	.label_1767
	jmp	.label_1754
.label_1866:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x70]
	nop	
	mov	ecx, dword ptr [rax + 0x98]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x58]
	nop	
	mov	edx, dword ptr [rax + 0x30]
	add	edx, 0x80000000
	lea	rsi, [rsi]
	cmp	ecx, edx
	lea	rsi, [rsi]
	jl	.label_1767
	jmp	.label_1754
.label_1859:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x70]
	nop	
	cmp	dword ptr [rax + 0x98], 0
	lea	rsi, [rsi]
	jge	.label_1757
	mov	rbp, rbp
	mov	al, 1
	test	al, 1
	mov	rbp, rbp
	jne	.label_1767
	jmp	.label_1754
.label_1757:
	mov	rax, qword ptr [rbp - 0x58]
	cmp	dword ptr [rax + 0x30], 0
	jge	.label_1774
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x70]
	mov	rbp, rbp
	mov	ecx, dword ptr [rax + 0x98]
	mov	rax, qword ptr [rbp - 0x58]
	lea	rdi, [rdi]
	sub	ecx, dword ptr [rax + 0x30]
	mov	rdx, qword ptr [rbp - 0x70]
	cmp	ecx, dword ptr [rdx + 0x98]
	mov	rbp, rbp
	jle	.label_1767
	jmp	.label_1754
.label_1774:
	mov	rax, qword ptr [rbp - 0x70]
	mov	ecx, dword ptr [rax + 0x98]
	mov	rax, qword ptr [rbp - 0x58]
	cmp	ecx, dword ptr [rax + 0x30]
	jl	.label_1767
.label_1754:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x70]
	mov	ecx, dword ptr [rax + 0x98]
	mov	rax, qword ptr [rbp - 0x58]
	lea	rsi, [rsi]
	sub	ecx, dword ptr [rax + 0x30]
	cmp	ecx, 0x80000000
	jl	.label_1767
	lea	rsi, [rsi]
	mov	eax, 0x7fffffff
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x70]
	lea	rdi, [rdi]
	mov	edx, dword ptr [rcx + 0x98]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x58]
	sub	edx, dword ptr [rcx + 0x30]
	cmp	eax, edx
	mov	rsp, rsp
	jge	.label_1799
.label_1767:
	lea	rdi, [rdi]
	mov	eax, 1
	mov	rcx, qword ptr [rbp - 0x70]
	lea	rdi, [rdi]
	mov	edx, dword ptr [rcx + 0x98]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x58]
	sub	edx, dword ptr [rcx + 0x30]
	mov	rsi, qword ptr [rbp - 0x70]
	lea	rdi, [rdi]
	mov	dword ptr [rsi + 0x98], edx
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x5c], eax
	lea	rsi, [rsi]
	jmp	.label_1815
.label_1799:
	nop	
	xor	eax, eax
	mov	rcx, qword ptr [rbp - 0x70]
	mov	edx, dword ptr [rcx + 0x98]
	mov	rcx, qword ptr [rbp - 0x58]
	sub	edx, dword ptr [rcx + 0x30]
	nop	
	mov	rsi, qword ptr [rbp - 0x70]
	mov	dword ptr [rsi + 0x98], edx
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x5c], eax
.label_1815:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x5c]
	mov	cl, 1
	lea	rsi, [rsi]
	test	cl, 1
	mov	dword ptr [rbp - 0x24], eax
	lea	rdi, [rdi]
	jne	.label_1845
	jmp	.label_1755
.label_1845:
	mov	rax, qword ptr [rbp - 0x58]
	cmp	qword ptr [rax + 0x28], 0
	jge	.label_1768
	nop	
	movabs	rax, 0x7fffffffffffffff
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x58]
	nop	
	add	rax, qword ptr [rcx + 0x28]
	mov	rdx, qword ptr [rbp - 0x70]
	cmp	rax, qword ptr [rdx + 0x90]
	nop	
	jl	.label_1758
	lea	rdi, [rdi]
	jmp	.label_1778
.label_1768:
	mov	rax, qword ptr [rbp - 0x70]
	mov	rax, qword ptr [rax + 0x90]
	nop	
	movabs	rcx, 0x8000000000000000
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x58]
	add	rcx, qword ptr [rdx + 0x28]
	lea	rdi, [rdi]
	cmp	rax, rcx
	jl	.label_1758
	nop	
	jmp	.label_1778
.label_1755:
	mov	rax, qword ptr [rbp - 0x70]
	cmp	qword ptr [rax + 0x90], 0
	jge	.label_1877
	mov	al, 1
	mov	rbp, rbp
	test	al, 1
	lea	rsi, [rsi]
	jne	.label_1758
	lea	rdi, [rdi]
	jmp	.label_1778
.label_1877:
	mov	rax, qword ptr [rbp - 0x58]
	cmp	qword ptr [rax + 0x28], 0
	lea	rdi, [rdi]
	jge	.label_1880
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x70]
	mov	rbp, rbp
	mov	rax, qword ptr [rax + 0x90]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x58]
	sub	rax, qword ptr [rcx + 0x28]
	mov	rdx, qword ptr [rbp - 0x70]
	cmp	rax, qword ptr [rdx + 0x90]
	lea	rsi, [rsi]
	jle	.label_1758
	jmp	.label_1778
.label_1880:
	mov	rax, qword ptr [rbp - 0x70]
	mov	rax, qword ptr [rax + 0x90]
	mov	rcx, qword ptr [rbp - 0x58]
	lea	rdi, [rdi]
	cmp	rax, qword ptr [rcx + 0x28]
	lea	rsi, [rsi]
	jl	.label_1758
.label_1778:
	lea	rdi, [rdi]
	movabs	rax, 0x8000000000000000
	nop	
	mov	rcx, qword ptr [rbp - 0x70]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rcx + 0x90]
	mov	rdx, qword ptr [rbp - 0x58]
	mov	rbp, rbp
	sub	rcx, qword ptr [rdx + 0x28]
	lea	rdi, [rdi]
	cmp	rcx, rax
	mov	rbp, rbp
	jl	.label_1758
	movabs	rax, 0x7fffffffffffffff
	nop	
	mov	rcx, qword ptr [rbp - 0x70]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rcx + 0x90]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x58]
	mov	rbp, rbp
	sub	rcx, qword ptr [rdx + 0x28]
	cmp	rax, rcx
	jge	.label_1795
.label_1758:
	mov	rsp, rsp
	mov	eax, 1
	nop	
	mov	rcx, qword ptr [rbp - 0x70]
	mov	rsp, rsp
	mov	rcx, qword ptr [rcx + 0x90]
	mov	rdx, qword ptr [rbp - 0x58]
	nop	
	sub	rcx, qword ptr [rdx + 0x28]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x70]
	mov	qword ptr [rsi + 0x90], rcx
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x48], eax
	lea	rsi, [rsi]
	jmp	.label_1796
.label_1795:
	lea	rsi, [rsi]
	xor	eax, eax
	nop	
	mov	rcx, qword ptr [rbp - 0x70]
	mov	rsp, rsp
	mov	rcx, qword ptr [rcx + 0x90]
	mov	rdx, qword ptr [rbp - 0x58]
	nop	
	sub	rcx, qword ptr [rdx + 0x28]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x70]
	mov	qword ptr [rsi + 0x90], rcx
	mov	dword ptr [rbp - 0x48], eax
.label_1796:
	mov	eax, dword ptr [rbp - 0x48]
	lea	rdi, [rdi]
	mov	cl, 1
	mov	rsp, rsp
	mov	edx, dword ptr [rbp - 0x24]
	or	edx, eax
	lea	rsi, [rsi]
	test	cl, 1
	mov	dword ptr [rbp - 0x40], edx
	jne	.label_1840
	nop	
	jmp	.label_1850
.label_1840:
	mov	rax, qword ptr [rbp - 0x58]
	mov	rsp, rsp
	cmp	qword ptr [rax + 0x20], 0
	mov	rbp, rbp
	jge	.label_1852
	nop	
	movabs	rax, 0x7fffffffffffffff
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x58]
	nop	
	add	rax, qword ptr [rcx + 0x20]
	mov	rdx, qword ptr [rbp - 0x70]
	cmp	rax, qword ptr [rdx + 0x88]
	jl	.label_1756
	jmp	.label_1849
.label_1852:
	mov	rax, qword ptr [rbp - 0x70]
	mov	rsp, rsp
	mov	rax, qword ptr [rax + 0x88]
	movabs	rcx, 0x8000000000000000
	mov	rdx, qword ptr [rbp - 0x58]
	nop	
	add	rcx, qword ptr [rdx + 0x20]
	mov	rsp, rsp
	cmp	rax, rcx
	mov	rsp, rsp
	jl	.label_1756
	lea	rsi, [rsi]
	jmp	.label_1849
.label_1850:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x70]
	cmp	qword ptr [rax + 0x88], 0
	jge	.label_1876
	mov	rbp, rbp
	mov	al, 1
	test	al, 1
	jne	.label_1756
	jmp	.label_1849
.label_1876:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x58]
	cmp	qword ptr [rax + 0x20], 0
	jge	.label_1857
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x70]
	mov	rax, qword ptr [rax + 0x88]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x58]
	sub	rax, qword ptr [rcx + 0x20]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x70]
	mov	rbp, rbp
	cmp	rax, qword ptr [rdx + 0x88]
	jle	.label_1756
	jmp	.label_1849
.label_1857:
	mov	rax, qword ptr [rbp - 0x70]
	mov	rsp, rsp
	mov	rax, qword ptr [rax + 0x88]
	mov	rcx, qword ptr [rbp - 0x58]
	cmp	rax, qword ptr [rcx + 0x20]
	mov	rbp, rbp
	jl	.label_1756
.label_1849:
	lea	rdi, [rdi]
	movabs	rax, 0x8000000000000000
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x70]
	mov	rcx, qword ptr [rcx + 0x88]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x58]
	sub	rcx, qword ptr [rdx + 0x20]
	lea	rdi, [rdi]
	cmp	rcx, rax
	jl	.label_1756
	movabs	rax, 0x7fffffffffffffff
	mov	rcx, qword ptr [rbp - 0x70]
	mov	rcx, qword ptr [rcx + 0x88]
	mov	rdx, qword ptr [rbp - 0x58]
	sub	rcx, qword ptr [rdx + 0x20]
	cmp	rax, rcx
	lea	rsi, [rsi]
	jge	.label_1793
.label_1756:
	mov	eax, 1
	mov	rcx, qword ptr [rbp - 0x70]
	mov	rcx, qword ptr [rcx + 0x88]
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x58]
	sub	rcx, qword ptr [rdx + 0x20]
	nop	
	mov	rsi, qword ptr [rbp - 0x70]
	nop	
	mov	qword ptr [rsi + 0x88], rcx
	mov	dword ptr [rbp - 0x30], eax
	jmp	.label_1802
.label_1793:
	xor	eax, eax
	mov	rcx, qword ptr [rbp - 0x70]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rcx + 0x88]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x58]
	sub	rcx, qword ptr [rdx + 0x20]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x70]
	mov	rsp, rsp
	mov	qword ptr [rsi + 0x88], rcx
	mov	dword ptr [rbp - 0x30], eax
.label_1802:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x30]
	mov	cl, 1
	mov	edx, dword ptr [rbp - 0x40]
	or	edx, eax
	lea	rsi, [rsi]
	test	cl, 1
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x2c], edx
	lea	rdi, [rdi]
	jne	.label_1833
	jmp	.label_1842
.label_1833:
	mov	rax, qword ptr [rbp - 0x58]
	lea	rdi, [rdi]
	cmp	qword ptr [rax + 0x18], 0
	jge	.label_1844
	mov	rbp, rbp
	movabs	rax, 0x7fffffffffffffff
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x58]
	lea	rsi, [rsi]
	add	rax, qword ptr [rcx + 0x18]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x70]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rdx + 0x80]
	nop	
	jl	.label_1753
	lea	rsi, [rsi]
	jmp	.label_1827
.label_1844:
	mov	rax, qword ptr [rbp - 0x70]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax + 0x80]
	lea	rsi, [rsi]
	movabs	rcx, 0x8000000000000000
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x58]
	lea	rsi, [rsi]
	add	rcx, qword ptr [rdx + 0x18]
	mov	rbp, rbp
	cmp	rax, rcx
	lea	rdi, [rdi]
	jl	.label_1753
	nop	
	jmp	.label_1827
.label_1842:
	mov	rax, qword ptr [rbp - 0x70]
	cmp	qword ptr [rax + 0x80], 0
	jge	.label_1874
	lea	rdi, [rdi]
	mov	al, 1
	test	al, 1
	nop	
	jne	.label_1753
	lea	rdi, [rdi]
	jmp	.label_1827
.label_1874:
	mov	rax, qword ptr [rbp - 0x58]
	lea	rdi, [rdi]
	cmp	qword ptr [rax + 0x18], 0
	lea	rdi, [rdi]
	jge	.label_1879
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x70]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax + 0x80]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x58]
	sub	rax, qword ptr [rcx + 0x18]
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x70]
	cmp	rax, qword ptr [rdx + 0x80]
	mov	rsp, rsp
	jle	.label_1753
	mov	rsp, rsp
	jmp	.label_1827
.label_1879:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x70]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax + 0x80]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x58]
	nop	
	cmp	rax, qword ptr [rcx + 0x18]
	lea	rdi, [rdi]
	jl	.label_1753
.label_1827:
	movabs	rax, 0x8000000000000000
	mov	rcx, qword ptr [rbp - 0x70]
	mov	rcx, qword ptr [rcx + 0x80]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x58]
	sub	rcx, qword ptr [rdx + 0x18]
	lea	rdi, [rdi]
	cmp	rcx, rax
	jl	.label_1753
	movabs	rax, 0x7fffffffffffffff
	mov	rcx, qword ptr [rbp - 0x70]
	mov	rcx, qword ptr [rcx + 0x80]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x58]
	sub	rcx, qword ptr [rdx + 0x18]
	cmp	rax, rcx
	lea	rsi, [rsi]
	jge	.label_1794
.label_1753:
	lea	rsi, [rsi]
	mov	eax, 1
	mov	rcx, qword ptr [rbp - 0x70]
	mov	rcx, qword ptr [rcx + 0x80]
	mov	rdx, qword ptr [rbp - 0x58]
	nop	
	sub	rcx, qword ptr [rdx + 0x18]
	mov	rsi, qword ptr [rbp - 0x70]
	mov	qword ptr [rsi + 0x80], rcx
	mov	rsp, rsp
	mov	dword ptr [rbp - 0xc], eax
	jmp	.label_1806
.label_1794:
	lea	rsi, [rsi]
	xor	eax, eax
	mov	rcx, qword ptr [rbp - 0x70]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rcx + 0x80]
	mov	rdx, qword ptr [rbp - 0x58]
	mov	rbp, rbp
	sub	rcx, qword ptr [rdx + 0x18]
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x70]
	mov	rbp, rbp
	mov	qword ptr [rsi + 0x80], rcx
	mov	dword ptr [rbp - 0xc], eax
.label_1806:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0xc]
	mov	cl, 1
	mov	rbp, rbp
	mov	edx, dword ptr [rbp - 0x2c]
	mov	rsp, rsp
	or	edx, eax
	test	cl, 1
	mov	dword ptr [rbp - 0x10], edx
	nop	
	jne	.label_1835
	jmp	.label_1846
.label_1835:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x58]
	mov	rbp, rbp
	cmp	qword ptr [rax + 0x10], 0
	mov	rsp, rsp
	jge	.label_1868
	movabs	rax, 0x7fffffffffffffff
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x58]
	mov	rbp, rbp
	add	rax, qword ptr [rcx + 0x10]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x70]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rdx + 0x78]
	mov	rsp, rsp
	jl	.label_1752
	mov	rbp, rbp
	jmp	.label_1777
.label_1868:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x70]
	mov	rax, qword ptr [rax + 0x78]
	movabs	rcx, 0x8000000000000000
	mov	rdx, qword ptr [rbp - 0x58]
	add	rcx, qword ptr [rdx + 0x10]
	mov	rsp, rsp
	cmp	rax, rcx
	nop	
	jl	.label_1752
	lea	rdi, [rdi]
	jmp	.label_1777
.label_1846:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x70]
	mov	rbp, rbp
	cmp	qword ptr [rax + 0x78], 0
	nop	
	jge	.label_1790
	mov	rbp, rbp
	mov	al, 1
	mov	rbp, rbp
	test	al, 1
	lea	rsi, [rsi]
	jne	.label_1752
	jmp	.label_1777
.label_1790:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x58]
	lea	rsi, [rsi]
	cmp	qword ptr [rax + 0x10], 0
	lea	rdi, [rdi]
	jge	.label_1872
	mov	rax, qword ptr [rbp - 0x70]
	mov	rbp, rbp
	mov	rax, qword ptr [rax + 0x78]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x58]
	mov	rsp, rsp
	sub	rax, qword ptr [rcx + 0x10]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x70]
	cmp	rax, qword ptr [rdx + 0x78]
	lea	rdi, [rdi]
	jle	.label_1752
	jmp	.label_1777
.label_1872:
	mov	rax, qword ptr [rbp - 0x70]
	mov	rax, qword ptr [rax + 0x78]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x58]
	lea	rdi, [rdi]
	cmp	rax, qword ptr [rcx + 0x10]
	nop	
	jl	.label_1752
.label_1777:
	lea	rdi, [rdi]
	movabs	rax, 0x8000000000000000
	mov	rcx, qword ptr [rbp - 0x70]
	mov	rbp, rbp
	mov	rcx, qword ptr [rcx + 0x78]
	mov	rdx, qword ptr [rbp - 0x58]
	sub	rcx, qword ptr [rdx + 0x10]
	mov	rsp, rsp
	cmp	rcx, rax
	lea	rdi, [rdi]
	jl	.label_1752
	nop	
	movabs	rax, 0x7fffffffffffffff
	mov	rcx, qword ptr [rbp - 0x70]
	mov	rcx, qword ptr [rcx + 0x78]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x58]
	sub	rcx, qword ptr [rdx + 0x10]
	mov	rbp, rbp
	cmp	rax, rcx
	jge	.label_1791
.label_1752:
	nop	
	mov	eax, 1
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x70]
	mov	rbp, rbp
	mov	rcx, qword ptr [rcx + 0x78]
	mov	rdx, qword ptr [rbp - 0x58]
	lea	rdi, [rdi]
	sub	rcx, qword ptr [rdx + 0x10]
	mov	rsi, qword ptr [rbp - 0x70]
	mov	qword ptr [rsi + 0x78], rcx
	mov	dword ptr [rbp - 4], eax
	nop	
	jmp	.label_1801
.label_1791:
	xor	eax, eax
	nop	
	mov	rcx, qword ptr [rbp - 0x70]
	mov	rsp, rsp
	mov	rcx, qword ptr [rcx + 0x78]
	mov	rdx, qword ptr [rbp - 0x58]
	sub	rcx, qword ptr [rdx + 0x10]
	nop	
	mov	rsi, qword ptr [rbp - 0x70]
	mov	qword ptr [rsi + 0x78], rcx
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 4], eax
.label_1801:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 4]
	mov	cl, 1
	mov	edx, dword ptr [rbp - 0x10]
	mov	rbp, rbp
	or	edx, eax
	test	cl, 1
	mov	dword ptr [rbp - 0x1c], edx
	jne	.label_1829
	jmp	.label_1836
.label_1829:
	mov	rax, qword ptr [rbp - 0x58]
	cmp	qword ptr [rax + 8], 0
	jge	.label_1839
	mov	rsp, rsp
	movabs	rax, 0x7fffffffffffffff
	mov	rcx, qword ptr [rbp - 0x58]
	mov	rsp, rsp
	add	rax, qword ptr [rcx + 8]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x70]
	cmp	rax, qword ptr [rdx + 0x70]
	jl	.label_1761
	lea	rdi, [rdi]
	jmp	.label_1779
.label_1839:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x70]
	mov	rbp, rbp
	mov	rax, qword ptr [rax + 0x70]
	movabs	rcx, 0x8000000000000000
	mov	rdx, qword ptr [rbp - 0x58]
	add	rcx, qword ptr [rdx + 8]
	mov	rsp, rsp
	cmp	rax, rcx
	jl	.label_1761
	mov	rbp, rbp
	jmp	.label_1779
.label_1836:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x70]
	mov	rsp, rsp
	cmp	qword ptr [rax + 0x70], 0
	lea	rsi, [rsi]
	jge	.label_1867
	mov	al, 1
	mov	rbp, rbp
	test	al, 1
	jne	.label_1761
	mov	rbp, rbp
	jmp	.label_1779
.label_1867:
	mov	rax, qword ptr [rbp - 0x58]
	mov	rsp, rsp
	cmp	qword ptr [rax + 8], 0
	mov	rbp, rbp
	jge	.label_1875
	mov	rax, qword ptr [rbp - 0x70]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax + 0x70]
	mov	rcx, qword ptr [rbp - 0x58]
	mov	rsp, rsp
	sub	rax, qword ptr [rcx + 8]
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x70]
	lea	rdi, [rdi]
	cmp	rax, qword ptr [rdx + 0x70]
	jle	.label_1761
	jmp	.label_1779
.label_1875:
	mov	rax, qword ptr [rbp - 0x70]
	mov	rax, qword ptr [rax + 0x70]
	nop	
	mov	rcx, qword ptr [rbp - 0x58]
	mov	rsp, rsp
	cmp	rax, qword ptr [rcx + 8]
	jl	.label_1761
.label_1779:
	lea	rdi, [rdi]
	movabs	rax, 0x8000000000000000
	mov	rcx, qword ptr [rbp - 0x70]
	mov	rbp, rbp
	mov	rcx, qword ptr [rcx + 0x70]
	mov	rdx, qword ptr [rbp - 0x58]
	sub	rcx, qword ptr [rdx + 8]
	cmp	rcx, rax
	nop	
	jl	.label_1761
	lea	rdi, [rdi]
	movabs	rax, 0x7fffffffffffffff
	mov	rcx, qword ptr [rbp - 0x70]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rcx + 0x70]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x58]
	mov	rbp, rbp
	sub	rcx, qword ptr [rdx + 8]
	lea	rsi, [rsi]
	cmp	rax, rcx
	mov	rbp, rbp
	jge	.label_1762
.label_1761:
	nop	
	mov	eax, 1
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x70]
	nop	
	mov	rcx, qword ptr [rcx + 0x70]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x58]
	mov	rsp, rsp
	sub	rcx, qword ptr [rdx + 8]
	mov	rsi, qword ptr [rbp - 0x70]
	mov	qword ptr [rsi + 0x70], rcx
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x18], eax
	mov	rsp, rsp
	jmp	.label_1841
.label_1762:
	lea	rdi, [rdi]
	xor	eax, eax
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x70]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rcx + 0x70]
	mov	rdx, qword ptr [rbp - 0x58]
	mov	rbp, rbp
	sub	rcx, qword ptr [rdx + 8]
	mov	rsi, qword ptr [rbp - 0x70]
	lea	rdi, [rdi]
	mov	qword ptr [rsi + 0x70], rcx
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x18], eax
.label_1841:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x18]
	nop	
	mov	cl, 1
	mov	edx, dword ptr [rbp - 0x1c]
	mov	rsp, rsp
	or	edx, eax
	mov	rsp, rsp
	test	cl, 1
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x38], edx
	jne	.label_1821
	lea	rdi, [rdi]
	jmp	.label_1786
.label_1821:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x58]
	cmp	qword ptr [rax], 0
	lea	rsi, [rsi]
	jge	.label_1834
	nop	
	movabs	rax, 0x7fffffffffffffff
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x58]
	mov	rsp, rsp
	add	rax, qword ptr [rcx]
	mov	rdx, qword ptr [rbp - 0x70]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rdx + 0x68]
	nop	
	jl	.label_1751
	jmp	.label_1803
.label_1834:
	mov	rax, qword ptr [rbp - 0x70]
	mov	rax, qword ptr [rax + 0x68]
	lea	rsi, [rsi]
	movabs	rcx, 0x8000000000000000
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x58]
	add	rcx, qword ptr [rdx]
	cmp	rax, rcx
	mov	rbp, rbp
	jl	.label_1751
	jmp	.label_1803
.label_1786:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x70]
	lea	rdi, [rdi]
	cmp	qword ptr [rax + 0x68], 0
	jge	.label_1863
	mov	al, 1
	test	al, 1
	jne	.label_1751
	lea	rsi, [rsi]
	jmp	.label_1803
.label_1863:
	mov	rax, qword ptr [rbp - 0x58]
	cmp	qword ptr [rax], 0
	mov	rbp, rbp
	jge	.label_1772
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x70]
	mov	rax, qword ptr [rax + 0x68]
	mov	rcx, qword ptr [rbp - 0x58]
	sub	rax, qword ptr [rcx]
	mov	rdx, qword ptr [rbp - 0x70]
	cmp	rax, qword ptr [rdx + 0x68]
	jle	.label_1751
	jmp	.label_1803
.label_1772:
	mov	rax, qword ptr [rbp - 0x70]
	mov	rax, qword ptr [rax + 0x68]
	mov	rcx, qword ptr [rbp - 0x58]
	mov	rbp, rbp
	cmp	rax, qword ptr [rcx]
	nop	
	jl	.label_1751
.label_1803:
	lea	rdi, [rdi]
	movabs	rax, 0x8000000000000000
	mov	rcx, qword ptr [rbp - 0x70]
	mov	rbp, rbp
	mov	rcx, qword ptr [rcx + 0x68]
	nop	
	mov	rdx, qword ptr [rbp - 0x58]
	nop	
	sub	rcx, qword ptr [rdx]
	cmp	rcx, rax
	jl	.label_1751
	lea	rsi, [rsi]
	movabs	rax, 0x7fffffffffffffff
	mov	rcx, qword ptr [rbp - 0x70]
	mov	rcx, qword ptr [rcx + 0x68]
	nop	
	mov	rdx, qword ptr [rbp - 0x58]
	mov	rsp, rsp
	sub	rcx, qword ptr [rdx]
	mov	rsp, rsp
	cmp	rax, rcx
	jge	.label_1771
.label_1751:
	lea	rdi, [rdi]
	mov	eax, 1
	mov	rcx, qword ptr [rbp - 0x70]
	mov	rcx, qword ptr [rcx + 0x68]
	mov	rdx, qword ptr [rbp - 0x58]
	lea	rsi, [rsi]
	sub	rcx, qword ptr [rdx]
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x70]
	lea	rsi, [rsi]
	mov	qword ptr [rsi + 0x68], rcx
	mov	dword ptr [rbp - 0x14], eax
	jmp	.label_1759
.label_1771:
	xor	eax, eax
	mov	rcx, qword ptr [rbp - 0x70]
	mov	rsp, rsp
	mov	rcx, qword ptr [rcx + 0x68]
	nop	
	mov	rdx, qword ptr [rbp - 0x58]
	sub	rcx, qword ptr [rdx]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x70]
	mov	qword ptr [rsi + 0x68], rcx
	mov	dword ptr [rbp - 0x14], eax
.label_1759:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x14]
	mov	rbp, rbp
	mov	ecx, dword ptr [rbp - 0x38]
	or	ecx, eax
	cmp	ecx, 0
	nop	
	jne	.label_1798
	jmp	.label_1776
.label_1854:
	mov	al, 1
	test	al, 1
	jne	.label_1809
	jmp	.label_1810
.label_1809:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x58]
	nop	
	cmp	dword ptr [rax + 0x30], 0
	mov	rsp, rsp
	jge	.label_1812
	mov	eax, 0x80000000
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x70]
	lea	rdi, [rdi]
	mov	edx, dword ptr [rcx + 0x98]
	mov	rcx, qword ptr [rbp - 0x58]
	mov	rsp, rsp
	sub	eax, dword ptr [rcx + 0x30]
	cmp	edx, eax
	jl	.label_1792
	jmp	.label_1832
.label_1812:
	mov	eax, 0x7fffffff
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x58]
	mov	rsp, rsp
	sub	eax, dword ptr [rcx + 0x30]
	mov	rdx, qword ptr [rbp - 0x70]
	mov	rbp, rbp
	cmp	eax, dword ptr [rdx + 0x98]
	mov	rbp, rbp
	jl	.label_1792
	jmp	.label_1832
.label_1810:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x70]
	lea	rdi, [rdi]
	cmp	dword ptr [rax + 0x98], 0
	jge	.label_1848
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x58]
	lea	rsi, [rsi]
	mov	ecx, dword ptr [rax + 0x30]
	nop	
	mov	rdx, qword ptr [rbp - 0x70]
	mov	esi, dword ptr [rdx + 0x98]
	add	esi, dword ptr [rax + 0x30]
	cmp	ecx, esi
	jle	.label_1792
	lea	rdi, [rdi]
	jmp	.label_1832
.label_1848:
	mov	rax, qword ptr [rbp - 0x58]
	lea	rsi, [rsi]
	cmp	dword ptr [rax + 0x30], 0
	lea	rsi, [rsi]
	jge	.label_1861
	mov	rax, qword ptr [rbp - 0x70]
	mov	ecx, dword ptr [rax + 0x98]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x70]
	mov	edx, dword ptr [rax + 0x98]
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x58]
	add	edx, dword ptr [rax + 0x30]
	mov	rbp, rbp
	cmp	ecx, edx
	mov	rsp, rsp
	jle	.label_1792
	lea	rsi, [rsi]
	jmp	.label_1832
.label_1861:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x70]
	mov	rbp, rbp
	mov	ecx, dword ptr [rax + 0x98]
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x58]
	add	ecx, dword ptr [rax + 0x30]
	cmp	ecx, dword ptr [rax + 0x30]
	lea	rsi, [rsi]
	jl	.label_1792
.label_1832:
	mov	rax, qword ptr [rbp - 0x70]
	mov	ecx, dword ptr [rax + 0x98]
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x58]
	mov	rsp, rsp
	add	ecx, dword ptr [rax + 0x30]
	lea	rdi, [rdi]
	cmp	ecx, 0x80000000
	jl	.label_1792
	mov	eax, 0x7fffffff
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x70]
	lea	rsi, [rsi]
	mov	edx, dword ptr [rcx + 0x98]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x58]
	lea	rsi, [rsi]
	add	edx, dword ptr [rcx + 0x30]
	nop	
	cmp	eax, edx
	jge	.label_1765
.label_1792:
	nop	
	mov	eax, 1
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x70]
	mov	rsp, rsp
	mov	edx, dword ptr [rcx + 0x98]
	nop	
	mov	rcx, qword ptr [rbp - 0x58]
	lea	rdi, [rdi]
	add	edx, dword ptr [rcx + 0x30]
	nop	
	mov	rsi, qword ptr [rbp - 0x70]
	nop	
	mov	dword ptr [rsi + 0x98], edx
	mov	dword ptr [rbp - 0x80], eax
	mov	rsp, rsp
	jmp	.label_1780
.label_1765:
	nop	
	xor	eax, eax
	mov	rcx, qword ptr [rbp - 0x70]
	lea	rdi, [rdi]
	mov	edx, dword ptr [rcx + 0x98]
	mov	rcx, qword ptr [rbp - 0x58]
	nop	
	add	edx, dword ptr [rcx + 0x30]
	mov	rsi, qword ptr [rbp - 0x70]
	mov	dword ptr [rsi + 0x98], edx
	mov	dword ptr [rbp - 0x80], eax
.label_1780:
	mov	eax, dword ptr [rbp - 0x80]
	mov	rsp, rsp
	mov	cl, 1
	lea	rdi, [rdi]
	test	cl, 1
	mov	dword ptr [rbp - 0x78], eax
	jne	.label_1797
	lea	rsi, [rsi]
	jmp	.label_1787
.label_1797:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x58]
	mov	rbp, rbp
	cmp	qword ptr [rax + 0x28], 0
	lea	rdi, [rdi]
	jge	.label_1808
	lea	rsi, [rsi]
	movabs	rax, 0x8000000000000000
	mov	rcx, qword ptr [rbp - 0x70]
	mov	rcx, qword ptr [rcx + 0x90]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x58]
	sub	rax, qword ptr [rdx + 0x28]
	lea	rsi, [rsi]
	cmp	rcx, rax
	mov	rsp, rsp
	jl	.label_1814
	jmp	.label_1800
.label_1808:
	nop	
	movabs	rax, 0x7fffffffffffffff
	mov	rcx, qword ptr [rbp - 0x58]
	sub	rax, qword ptr [rcx + 0x28]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x70]
	nop	
	cmp	rax, qword ptr [rdx + 0x90]
	mov	rbp, rbp
	jl	.label_1814
	jmp	.label_1800
.label_1787:
	mov	rax, qword ptr [rbp - 0x70]
	nop	
	cmp	qword ptr [rax + 0x90], 0
	jge	.label_1847
	nop	
	mov	rax, qword ptr [rbp - 0x58]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rax + 0x28]
	mov	rdx, qword ptr [rbp - 0x70]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rdx + 0x90]
	add	rdx, qword ptr [rax + 0x28]
	lea	rdi, [rdi]
	cmp	rcx, rdx
	jle	.label_1814
	jmp	.label_1800
.label_1847:
	mov	rax, qword ptr [rbp - 0x58]
	mov	rbp, rbp
	cmp	qword ptr [rax + 0x28], 0
	jge	.label_1860
	mov	rax, qword ptr [rbp - 0x70]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax + 0x90]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x70]
	mov	rsp, rsp
	mov	rcx, qword ptr [rcx + 0x90]
	nop	
	mov	rdx, qword ptr [rbp - 0x58]
	add	rcx, qword ptr [rdx + 0x28]
	cmp	rax, rcx
	jle	.label_1814
	lea	rdi, [rdi]
	jmp	.label_1800
.label_1860:
	mov	rax, qword ptr [rbp - 0x70]
	mov	rax, qword ptr [rax + 0x90]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x58]
	add	rax, qword ptr [rcx + 0x28]
	cmp	rax, qword ptr [rcx + 0x28]
	mov	rsp, rsp
	jl	.label_1814
.label_1800:
	mov	rbp, rbp
	movabs	rax, 0x8000000000000000
	mov	rcx, qword ptr [rbp - 0x70]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rcx + 0x90]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x58]
	add	rcx, qword ptr [rdx + 0x28]
	nop	
	cmp	rcx, rax
	lea	rsi, [rsi]
	jl	.label_1814
	lea	rsi, [rsi]
	movabs	rax, 0x7fffffffffffffff
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x70]
	mov	rcx, qword ptr [rcx + 0x90]
	mov	rdx, qword ptr [rbp - 0x58]
	mov	rsp, rsp
	add	rcx, qword ptr [rdx + 0x28]
	lea	rdi, [rdi]
	cmp	rax, rcx
	mov	rbp, rbp
	jge	.label_1770
.label_1814:
	mov	eax, 1
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x70]
	mov	rcx, qword ptr [rcx + 0x90]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x58]
	nop	
	add	rcx, qword ptr [rdx + 0x28]
	mov	rsi, qword ptr [rbp - 0x70]
	mov	qword ptr [rsi + 0x90], rcx
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x64], eax
	mov	rbp, rbp
	jmp	.label_1784
.label_1770:
	xor	eax, eax
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x70]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rcx + 0x90]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x58]
	add	rcx, qword ptr [rdx + 0x28]
	mov	rsi, qword ptr [rbp - 0x70]
	mov	qword ptr [rsi + 0x90], rcx
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x64], eax
.label_1784:
	mov	eax, dword ptr [rbp - 0x64]
	mov	rbp, rbp
	mov	cl, 1
	mov	rbp, rbp
	mov	edx, dword ptr [rbp - 0x78]
	mov	rsp, rsp
	or	edx, eax
	test	cl, 1
	nop	
	mov	dword ptr [rbp - 0x34], edx
	jne	.label_1807
	nop	
	jmp	.label_1817
.label_1807:
	mov	rax, qword ptr [rbp - 0x58]
	mov	rbp, rbp
	cmp	qword ptr [rax + 0x20], 0
	mov	rbp, rbp
	jge	.label_1819
	movabs	rax, 0x8000000000000000
	mov	rcx, qword ptr [rbp - 0x70]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rcx + 0x88]
	mov	rdx, qword ptr [rbp - 0x58]
	sub	rax, qword ptr [rdx + 0x20]
	cmp	rcx, rax
	mov	rbp, rbp
	jl	.label_1763
	jmp	.label_1838
.label_1819:
	movabs	rax, 0x7fffffffffffffff
	mov	rcx, qword ptr [rbp - 0x58]
	sub	rax, qword ptr [rcx + 0x20]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x70]
	cmp	rax, qword ptr [rdx + 0x88]
	lea	rsi, [rsi]
	jl	.label_1763
	jmp	.label_1838
.label_1817:
	mov	rax, qword ptr [rbp - 0x70]
	cmp	qword ptr [rax + 0x88], 0
	lea	rdi, [rdi]
	jge	.label_1853
	mov	rax, qword ptr [rbp - 0x58]
	mov	rbp, rbp
	mov	rcx, qword ptr [rax + 0x20]
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x70]
	mov	rdx, qword ptr [rdx + 0x88]
	lea	rsi, [rsi]
	add	rdx, qword ptr [rax + 0x20]
	nop	
	cmp	rcx, rdx
	jle	.label_1763
	mov	rbp, rbp
	jmp	.label_1838
.label_1853:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x58]
	lea	rdi, [rdi]
	cmp	qword ptr [rax + 0x20], 0
	jge	.label_1878
	nop	
	mov	rax, qword ptr [rbp - 0x70]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax + 0x88]
	mov	rcx, qword ptr [rbp - 0x70]
	mov	rcx, qword ptr [rcx + 0x88]
	nop	
	mov	rdx, qword ptr [rbp - 0x58]
	mov	rbp, rbp
	add	rcx, qword ptr [rdx + 0x20]
	lea	rsi, [rsi]
	cmp	rax, rcx
	mov	rbp, rbp
	jle	.label_1763
	lea	rsi, [rsi]
	jmp	.label_1838
.label_1878:
	mov	rax, qword ptr [rbp - 0x70]
	mov	rbp, rbp
	mov	rax, qword ptr [rax + 0x88]
	mov	rcx, qword ptr [rbp - 0x58]
	add	rax, qword ptr [rcx + 0x20]
	mov	rsp, rsp
	cmp	rax, qword ptr [rcx + 0x20]
	jl	.label_1763
.label_1838:
	movabs	rax, 0x8000000000000000
	mov	rcx, qword ptr [rbp - 0x70]
	nop	
	mov	rcx, qword ptr [rcx + 0x88]
	mov	rdx, qword ptr [rbp - 0x58]
	nop	
	add	rcx, qword ptr [rdx + 0x20]
	nop	
	cmp	rcx, rax
	mov	rbp, rbp
	jl	.label_1763
	movabs	rax, 0x7fffffffffffffff
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x70]
	mov	rbp, rbp
	mov	rcx, qword ptr [rcx + 0x88]
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x58]
	nop	
	add	rcx, qword ptr [rdx + 0x20]
	cmp	rax, rcx
	jge	.label_1865
.label_1763:
	mov	eax, 1
	mov	rcx, qword ptr [rbp - 0x70]
	mov	rcx, qword ptr [rcx + 0x88]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x58]
	add	rcx, qword ptr [rdx + 0x20]
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x70]
	mov	qword ptr [rsi + 0x88], rcx
	mov	rbp, rbp
	mov	dword ptr [rbp - 8], eax
	nop	
	jmp	.label_1788
.label_1865:
	nop	
	xor	eax, eax
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x70]
	nop	
	mov	rcx, qword ptr [rcx + 0x88]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x58]
	add	rcx, qword ptr [rdx + 0x20]
	mov	rsi, qword ptr [rbp - 0x70]
	mov	qword ptr [rsi + 0x88], rcx
	mov	dword ptr [rbp - 8], eax
.label_1788:
	mov	eax, dword ptr [rbp - 8]
	mov	cl, 1
	mov	rsp, rsp
	mov	edx, dword ptr [rbp - 0x34]
	nop	
	or	edx, eax
	test	cl, 1
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x20], edx
	jne	.label_1811
	jmp	.label_1822
.label_1811:
	nop	
	mov	rax, qword ptr [rbp - 0x58]
	lea	rsi, [rsi]
	cmp	qword ptr [rax + 0x18], 0
	lea	rdi, [rdi]
	jge	.label_1824
	mov	rsp, rsp
	movabs	rax, 0x8000000000000000
	mov	rcx, qword ptr [rbp - 0x70]
	mov	rcx, qword ptr [rcx + 0x80]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x58]
	sub	rax, qword ptr [rdx + 0x18]
	cmp	rcx, rax
	lea	rdi, [rdi]
	jl	.label_1769
	nop	
	jmp	.label_1855
.label_1824:
	movabs	rax, 0x7fffffffffffffff
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x58]
	sub	rax, qword ptr [rcx + 0x18]
	mov	rdx, qword ptr [rbp - 0x70]
	lea	rdi, [rdi]
	cmp	rax, qword ptr [rdx + 0x80]
	mov	rsp, rsp
	jl	.label_1769
	nop	
	jmp	.label_1855
.label_1822:
	mov	rax, qword ptr [rbp - 0x70]
	mov	rbp, rbp
	cmp	qword ptr [rax + 0x80], 0
	nop	
	jge	.label_1858
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rax + 0x18]
	nop	
	mov	rdx, qword ptr [rbp - 0x70]
	mov	rdx, qword ptr [rdx + 0x80]
	add	rdx, qword ptr [rax + 0x18]
	cmp	rcx, rdx
	jle	.label_1769
	lea	rsi, [rsi]
	jmp	.label_1855
.label_1858:
	mov	rax, qword ptr [rbp - 0x58]
	lea	rdi, [rdi]
	cmp	qword ptr [rax + 0x18], 0
	lea	rdi, [rdi]
	jge	.label_1871
	mov	rax, qword ptr [rbp - 0x70]
	mov	rax, qword ptr [rax + 0x80]
	mov	rcx, qword ptr [rbp - 0x70]
	mov	rsp, rsp
	mov	rcx, qword ptr [rcx + 0x80]
	mov	rdx, qword ptr [rbp - 0x58]
	add	rcx, qword ptr [rdx + 0x18]
	cmp	rax, rcx
	lea	rdi, [rdi]
	jle	.label_1769
	lea	rdi, [rdi]
	jmp	.label_1855
.label_1871:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x70]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax + 0x80]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x58]
	lea	rsi, [rsi]
	add	rax, qword ptr [rcx + 0x18]
	cmp	rax, qword ptr [rcx + 0x18]
	jl	.label_1769
.label_1855:
	movabs	rax, 0x8000000000000000
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x70]
	mov	rcx, qword ptr [rcx + 0x80]
	mov	rdx, qword ptr [rbp - 0x58]
	add	rcx, qword ptr [rdx + 0x18]
	cmp	rcx, rax
	lea	rdi, [rdi]
	jl	.label_1769
	mov	rbp, rbp
	movabs	rax, 0x7fffffffffffffff
	mov	rcx, qword ptr [rbp - 0x70]
	mov	rcx, qword ptr [rcx + 0x80]
	mov	rdx, qword ptr [rbp - 0x58]
	add	rcx, qword ptr [rdx + 0x18]
	lea	rsi, [rsi]
	cmp	rax, rcx
	lea	rdi, [rdi]
	jge	.label_1781
.label_1769:
	mov	eax, 1
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x70]
	mov	rsp, rsp
	mov	rcx, qword ptr [rcx + 0x80]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x58]
	lea	rdi, [rdi]
	add	rcx, qword ptr [rdx + 0x18]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x70]
	mov	qword ptr [rsi + 0x80], rcx
	mov	dword ptr [rbp - 0x28], eax
	mov	rbp, rbp
	jmp	.label_1804
.label_1781:
	xor	eax, eax
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x70]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rcx + 0x80]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x58]
	add	rcx, qword ptr [rdx + 0x18]
	mov	rsi, qword ptr [rbp - 0x70]
	lea	rdi, [rdi]
	mov	qword ptr [rsi + 0x80], rcx
	mov	dword ptr [rbp - 0x28], eax
.label_1804:
	nop	
	mov	eax, dword ptr [rbp - 0x28]
	mov	rsp, rsp
	mov	cl, 1
	mov	edx, dword ptr [rbp - 0x20]
	nop	
	or	edx, eax
	test	cl, 1
	nop	
	mov	dword ptr [rbp - 0x44], edx
	lea	rsi, [rsi]
	jne	.label_1820
	jmp	.label_1830
.label_1820:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x58]
	cmp	qword ptr [rax + 0x10], 0
	jge	.label_1831
	lea	rsi, [rsi]
	movabs	rax, 0x8000000000000000
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x70]
	mov	rcx, qword ptr [rcx + 0x78]
	mov	rdx, qword ptr [rbp - 0x58]
	sub	rax, qword ptr [rdx + 0x10]
	lea	rsi, [rsi]
	cmp	rcx, rax
	jl	.label_1760
	lea	rdi, [rdi]
	jmp	.label_1764
.label_1831:
	mov	rsp, rsp
	movabs	rax, 0x7fffffffffffffff
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x58]
	sub	rax, qword ptr [rcx + 0x10]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x70]
	lea	rdi, [rdi]
	cmp	rax, qword ptr [rdx + 0x78]
	jl	.label_1760
	mov	rbp, rbp
	jmp	.label_1764
.label_1830:
	nop	
	mov	rax, qword ptr [rbp - 0x70]
	nop	
	cmp	qword ptr [rax + 0x78], 0
	jge	.label_1862
	mov	rax, qword ptr [rbp - 0x58]
	mov	rbp, rbp
	mov	rcx, qword ptr [rax + 0x10]
	mov	rdx, qword ptr [rbp - 0x70]
	mov	rdx, qword ptr [rdx + 0x78]
	add	rdx, qword ptr [rax + 0x10]
	cmp	rcx, rdx
	jle	.label_1760
	nop	
	jmp	.label_1764
.label_1862:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x58]
	mov	rbp, rbp
	cmp	qword ptr [rax + 0x10], 0
	mov	rsp, rsp
	jge	.label_1873
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x70]
	mov	rax, qword ptr [rax + 0x78]
	mov	rcx, qword ptr [rbp - 0x70]
	mov	rcx, qword ptr [rcx + 0x78]
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x58]
	lea	rsi, [rsi]
	add	rcx, qword ptr [rdx + 0x10]
	nop	
	cmp	rax, rcx
	jle	.label_1760
	lea	rdi, [rdi]
	jmp	.label_1764
.label_1873:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x70]
	mov	rax, qword ptr [rax + 0x78]
	mov	rcx, qword ptr [rbp - 0x58]
	add	rax, qword ptr [rcx + 0x10]
	cmp	rax, qword ptr [rcx + 0x10]
	mov	rsp, rsp
	jl	.label_1760
.label_1764:
	movabs	rax, 0x8000000000000000
	mov	rcx, qword ptr [rbp - 0x70]
	mov	rcx, qword ptr [rcx + 0x78]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x58]
	lea	rsi, [rsi]
	add	rcx, qword ptr [rdx + 0x10]
	cmp	rcx, rax
	mov	rbp, rbp
	jl	.label_1760
	movabs	rax, 0x7fffffffffffffff
	mov	rcx, qword ptr [rbp - 0x70]
	mov	rcx, qword ptr [rcx + 0x78]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x58]
	mov	rsp, rsp
	add	rcx, qword ptr [rdx + 0x10]
	cmp	rax, rcx
	jge	.label_1783
.label_1760:
	mov	eax, 1
	mov	rcx, qword ptr [rbp - 0x70]
	nop	
	mov	rcx, qword ptr [rcx + 0x78]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x58]
	add	rcx, qword ptr [rdx + 0x10]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x70]
	mov	qword ptr [rsi + 0x78], rcx
	mov	dword ptr [rbp - 0x7c], eax
	jmp	.label_1789
.label_1783:
	mov	rsp, rsp
	xor	eax, eax
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x70]
	mov	rsp, rsp
	mov	rcx, qword ptr [rcx + 0x78]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x58]
	add	rcx, qword ptr [rdx + 0x10]
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x70]
	mov	qword ptr [rsi + 0x78], rcx
	mov	dword ptr [rbp - 0x7c], eax
.label_1789:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x7c]
	mov	rbp, rbp
	mov	cl, 1
	mov	edx, dword ptr [rbp - 0x44]
	mov	rbp, rbp
	or	edx, eax
	test	cl, 1
	nop	
	mov	dword ptr [rbp - 0x84], edx
	lea	rsi, [rsi]
	jne	.label_1813
	jmp	.label_1826
.label_1813:
	mov	rax, qword ptr [rbp - 0x58]
	nop	
	cmp	qword ptr [rax + 8], 0
	jge	.label_1828
	movabs	rax, 0x8000000000000000
	mov	rcx, qword ptr [rbp - 0x70]
	mov	rcx, qword ptr [rcx + 0x70]
	mov	rdx, qword ptr [rbp - 0x58]
	sub	rax, qword ptr [rdx + 8]
	cmp	rcx, rax
	mov	rbp, rbp
	jl	.label_1775
	jmp	.label_1782
.label_1828:
	movabs	rax, 0x7fffffffffffffff
	mov	rcx, qword ptr [rbp - 0x58]
	nop	
	sub	rax, qword ptr [rcx + 8]
	mov	rdx, qword ptr [rbp - 0x70]
	cmp	rax, qword ptr [rdx + 0x70]
	mov	rbp, rbp
	jl	.label_1775
	nop	
	jmp	.label_1782
.label_1826:
	mov	rax, qword ptr [rbp - 0x70]
	cmp	qword ptr [rax + 0x70], 0
	lea	rdi, [rdi]
	jge	.label_1856
	nop	
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rax + 8]
	mov	rdx, qword ptr [rbp - 0x70]
	mov	rdx, qword ptr [rdx + 0x70]
	add	rdx, qword ptr [rax + 8]
	cmp	rcx, rdx
	mov	rbp, rbp
	jle	.label_1775
	lea	rsi, [rsi]
	jmp	.label_1782
.label_1856:
	mov	rax, qword ptr [rbp - 0x58]
	mov	rsp, rsp
	cmp	qword ptr [rax + 8], 0
	mov	rbp, rbp
	jge	.label_1869
	mov	rax, qword ptr [rbp - 0x70]
	mov	rax, qword ptr [rax + 0x70]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x70]
	mov	rcx, qword ptr [rcx + 0x70]
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x58]
	add	rcx, qword ptr [rdx + 8]
	mov	rbp, rbp
	cmp	rax, rcx
	jle	.label_1775
	nop	
	jmp	.label_1782
.label_1869:
	mov	rax, qword ptr [rbp - 0x70]
	mov	rax, qword ptr [rax + 0x70]
	mov	rcx, qword ptr [rbp - 0x58]
	lea	rsi, [rsi]
	add	rax, qword ptr [rcx + 8]
	cmp	rax, qword ptr [rcx + 8]
	mov	rsp, rsp
	jl	.label_1775
.label_1782:
	movabs	rax, 0x8000000000000000
	mov	rcx, qword ptr [rbp - 0x70]
	mov	rsp, rsp
	mov	rcx, qword ptr [rcx + 0x70]
	mov	rdx, qword ptr [rbp - 0x58]
	lea	rsi, [rsi]
	add	rcx, qword ptr [rdx + 8]
	nop	
	cmp	rcx, rax
	jl	.label_1775
	movabs	rax, 0x7fffffffffffffff
	mov	rcx, qword ptr [rbp - 0x70]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rcx + 0x70]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x58]
	nop	
	add	rcx, qword ptr [rdx + 8]
	cmp	rax, rcx
	lea	rdi, [rdi]
	jge	.label_1773
.label_1775:
	mov	rbp, rbp
	mov	eax, 1
	mov	rcx, qword ptr [rbp - 0x70]
	mov	rsp, rsp
	mov	rcx, qword ptr [rcx + 0x70]
	mov	rdx, qword ptr [rbp - 0x58]
	add	rcx, qword ptr [rdx + 8]
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x70]
	mov	qword ptr [rsi + 0x70], rcx
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x3c], eax
	jmp	.label_1785
.label_1773:
	xor	eax, eax
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x70]
	mov	rcx, qword ptr [rcx + 0x70]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x58]
	nop	
	add	rcx, qword ptr [rdx + 8]
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x70]
	mov	qword ptr [rsi + 0x70], rcx
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x3c], eax
.label_1785:
	mov	eax, dword ptr [rbp - 0x3c]
	mov	cl, 1
	mov	rsp, rsp
	mov	edx, dword ptr [rbp - 0x84]
	nop	
	or	edx, eax
	mov	rbp, rbp
	test	cl, 1
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x4c], edx
	jne	.label_1805
	lea	rdi, [rdi]
	jmp	.label_1816
.label_1805:
	mov	rax, qword ptr [rbp - 0x58]
	cmp	qword ptr [rax], 0
	jge	.label_1818
	movabs	rax, 0x8000000000000000
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x70]
	mov	rcx, qword ptr [rcx + 0x68]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x58]
	lea	rdi, [rdi]
	sub	rax, qword ptr [rdx]
	nop	
	cmp	rcx, rax
	lea	rdi, [rdi]
	jl	.label_1823
	jmp	.label_1766
.label_1818:
	movabs	rax, 0x7fffffffffffffff
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x58]
	sub	rax, qword ptr [rcx]
	mov	rdx, qword ptr [rbp - 0x70]
	cmp	rax, qword ptr [rdx + 0x68]
	jl	.label_1823
	jmp	.label_1766
.label_1816:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x70]
	cmp	qword ptr [rax + 0x68], 0
	lea	rsi, [rsi]
	jge	.label_1851
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rax]
	mov	rdx, qword ptr [rbp - 0x70]
	mov	rbp, rbp
	mov	rdx, qword ptr [rdx + 0x68]
	add	rdx, qword ptr [rax]
	nop	
	cmp	rcx, rdx
	lea	rsi, [rsi]
	jle	.label_1823
	lea	rdi, [rdi]
	jmp	.label_1766
.label_1851:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x58]
	mov	rbp, rbp
	cmp	qword ptr [rax], 0
	jge	.label_1864
	mov	rax, qword ptr [rbp - 0x70]
	mov	rax, qword ptr [rax + 0x68]
	nop	
	mov	rcx, qword ptr [rbp - 0x70]
	mov	rcx, qword ptr [rcx + 0x68]
	mov	rdx, qword ptr [rbp - 0x58]
	lea	rsi, [rsi]
	add	rcx, qword ptr [rdx]
	mov	rsp, rsp
	cmp	rax, rcx
	jle	.label_1823
	mov	rsp, rsp
	jmp	.label_1766
.label_1864:
	mov	rax, qword ptr [rbp - 0x70]
	nop	
	mov	rax, qword ptr [rax + 0x68]
	mov	rcx, qword ptr [rbp - 0x58]
	nop	
	add	rax, qword ptr [rcx]
	cmp	rax, qword ptr [rcx]
	jl	.label_1823
.label_1766:
	movabs	rax, 0x8000000000000000
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x70]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rcx + 0x68]
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x58]
	mov	rsp, rsp
	add	rcx, qword ptr [rdx]
	lea	rsi, [rsi]
	cmp	rcx, rax
	jl	.label_1823
	movabs	rax, 0x7fffffffffffffff
	nop	
	mov	rcx, qword ptr [rbp - 0x70]
	mov	rcx, qword ptr [rcx + 0x68]
	mov	rdx, qword ptr [rbp - 0x58]
	mov	rsp, rsp
	add	rcx, qword ptr [rdx]
	cmp	rax, rcx
	mov	rsp, rsp
	jge	.label_1825
.label_1823:
	mov	eax, 1
	mov	rcx, qword ptr [rbp - 0x70]
	nop	
	mov	rcx, qword ptr [rcx + 0x68]
	mov	rdx, qword ptr [rbp - 0x58]
	add	rcx, qword ptr [rdx]
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x70]
	mov	qword ptr [rsi + 0x68], rcx
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x74], eax
	lea	rsi, [rsi]
	jmp	.label_1870
.label_1825:
	xor	eax, eax
	mov	rcx, qword ptr [rbp - 0x70]
	mov	rcx, qword ptr [rcx + 0x68]
	mov	rdx, qword ptr [rbp - 0x58]
	add	rcx, qword ptr [rdx]
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x70]
	mov	qword ptr [rsi + 0x68], rcx
	nop	
	mov	dword ptr [rbp - 0x74], eax
.label_1870:
	mov	eax, dword ptr [rbp - 0x74]
	lea	rdi, [rdi]
	mov	ecx, dword ptr [rbp - 0x4c]
	mov	rbp, rbp
	or	ecx, eax
	lea	rsi, [rsi]
	cmp	ecx, 0
	je	.label_1776
.label_1798:
	mov	byte ptr [rbp - 0x85], 0
	jmp	.label_1837
.label_1776:
	mov	rax, qword ptr [rbp - 0x70]
	mov	byte ptr [rax + 0xa1], 1
	mov	byte ptr [rbp - 0x85], 1
.label_1837:
	mov	al, byte ptr [rbp - 0x85]
	and	al, 1
	movzx	eax, al
	lea	rsi, [rsi]
	add	rsp, 8
	nop	
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x41bcf0

	.globl dbg_printf
	.type dbg_printf, @function
dbg_printf:
	nop	
	push	rbp
	mov	rsp, rsp
	mov	rbp, rsp
	mov	rsp, rsp
	sub	rsp, 0x1b0
	lea	rsi, [rsi]
	test	al, al
	lea	rsi, [rsi]
	movaps	xmmword ptr [rbp - 0x190], xmm7
	lea	rsi, [rsi]
	movaps	xmmword ptr [rbp - 0x10], xmm6
	movaps	xmmword ptr [rbp - 0x170], xmm5
	mov	rsp, rsp
	movaps	xmmword ptr [rbp - 0x150], xmm4
	mov	rsp, rsp
	movaps	xmmword ptr [rbp - 0x160], xmm3
	mov	rsp, rsp
	movaps	xmmword ptr [rbp - 0x100], xmm2
	lea	rsi, [rsi]
	movaps	xmmword ptr [rbp - 0x20], xmm1
	movaps	xmmword ptr [rbp - 0x30], xmm0
	mov	qword ptr [rbp - 0x198], rdi
	mov	qword ptr [rbp - 0x180], r9
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x178], r8
	nop	
	mov	qword ptr [rbp - 0x138], rcx
	mov	qword ptr [rbp - 0x1a0], rdx
	nop	
	mov	qword ptr [rbp - 0x128], rsi
	je	.label_1881
	lea	rdi, [rdi]
	movaps	xmm0, xmmword ptr [rbp - 0x30]
	movaps	xmmword ptr [rbp - 0xb0], xmm0
	mov	rsp, rsp
	movaps	xmm1, xmmword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	movaps	xmmword ptr [rbp - 0xa0], xmm1
	nop	
	movaps	xmm2, xmmword ptr [rbp - 0x100]
	movaps	xmmword ptr [rbp - 0x90], xmm2
	mov	rbp, rbp
	movaps	xmm3, xmmword ptr [rbp - 0x160]
	movaps	xmmword ptr [rbp - 0x80], xmm3
	mov	rsp, rsp
	movaps	xmm4, xmmword ptr [rbp - 0x150]
	mov	rbp, rbp
	movaps	xmmword ptr [rbp - 0x70], xmm4
	movaps	xmm5, xmmword ptr [rbp - 0x170]
	mov	rsp, rsp
	movaps	xmmword ptr [rbp - 0x60], xmm5
	movaps	xmm6, xmmword ptr [rbp - 0x10]
	movaps	xmmword ptr [rbp - 0x50], xmm6
	movaps	xmm7, xmmword ptr [rbp - 0x190]
	movaps	xmmword ptr [rbp - 0x40], xmm7
.label_1881:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x180]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0xb8], rax
	mov	rcx, qword ptr [rbp - 0x178]
	mov	qword ptr [rbp - 0xc0], rcx
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x138]
	mov	qword ptr [rbp - 0xc8], rdx
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x1a0]
	nop	
	mov	qword ptr [rbp - 0xd0], rsi
	mov	rdi, qword ptr [rbp - 0x128]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0xd8], rdi
	mov	r8, qword ptr [rbp - 0x198]
	mov	qword ptr [rbp - 0x130], r8
	mov	rsi,  qword ptr [word ptr [rip + stderr]]
	mov	r9d, OFFSET FLAT:.str.96
	mov	edi, r9d
	lea	rsi, [rsi]
	call	fputs
	mov	rbp, rbp
	lea	rcx, [rbp - 0xe0]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x110], rcx
	lea	rsi, [rsi]
	lea	rcx, [rbp + 0x10]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x118], rcx
	mov	dword ptr [rbp - 0x11c], 0x30
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x120], 8
	mov	rdi,  qword ptr [word ptr [rip + stderr]]
	mov	rsi, qword ptr [rbp - 0x130]
	nop	
	lea	rdx, [rbp - 0x120]
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0xe4], eax
	call	vfprintf
	mov	dword ptr [rbp - 0x1a4], eax
	mov	rsp, rsp
	add	rsp, 0x1b0
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x41bee0

	.globl time_overflow
	.type time_overflow, @function
time_overflow:
	push	rbp
	mov	rbp, rsp
	lea	rdi, [rdi]
	xor	eax, eax
	mov	cl, al
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 8], rdi
	test	cl, 1
	lea	rsi, [rsi]
	jne	.label_1882
	nop	
	xor	eax, eax
	nop	
	mov	cl, al
	movabs	rdx, 0x8000000000000000
	mov	rbp, rbp
	cmp	rdx, qword ptr [rbp - 8]
	nop	
	mov	byte ptr [rbp - 9], cl
	jle	.label_1884
	jmp	.label_1883
.label_1882:
	lea	rsi, [rsi]
	xor	eax, eax
	mov	cl, al
	xor	eax, eax
	mov	rsp, rsp
	mov	edx, eax
	cmp	rdx, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 9], cl
	nop	
	jg	.label_1883
.label_1884:
	lea	rsi, [rsi]
	movabs	rax, 0x7fffffffffffffff
	mov	rsp, rsp
	cmp	qword ptr [rbp - 8], rax
	nop	
	setle	cl
	mov	byte ptr [rbp - 9], cl
.label_1883:
	nop	
	mov	al, byte ptr [rbp - 9]
	lea	rdi, [rdi]
	xor	al, 0xff
	lea	rdi, [rdi]
	and	al, 1
	movzx	eax, al
	pop	rbp
	lea	rdi, [rdi]
	ret	
	.section	.text
	.align	32
	#Procedure 0x41bf80

	.globl digits_to_date_time
	.type digits_to_date_time, @function
digits_to_date_time:
	push	rbp
	mov	rbp, rbp
	mov	rbp, rsp
	lea	rax, [rbp + 0x10]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x18], rdi
	mov	rdi, qword ptr [rbp - 0x18]
	cmp	qword ptr [rdi + 0xa8], 0
	nop	
	mov	qword ptr [rbp - 8], rax
	nop	
	je	.label_1885
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x18]
	cmp	qword ptr [rax + 0x30], 0
	jne	.label_1885
	mov	rax, qword ptr [rbp - 0x18]
	test	byte ptr [rax + 0xa1], 1
	jne	.label_1885
	nop	
	mov	rax, qword ptr [rbp - 0x18]
	cmp	qword ptr [rax + 0xc8], 0
	jne	.label_1887
	mov	eax, 2
	mov	rsp, rsp
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 8]
	nop	
	cmp	rcx, qword ptr [rdx + 0x10]
	lea	rsi, [rsi]
	jge	.label_1885
.label_1887:
	nop	
	mov	rax, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	mov	byte ptr [rax + 0xd8], 1
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 8]
	mov	rdx, qword ptr [rcx]
	lea	rsi, [rsi]
	mov	qword ptr [rax + 0x20], rdx
	mov	rdx, qword ptr [rcx + 8]
	mov	qword ptr [rax + 0x28], rdx
	mov	rdx, qword ptr [rcx + 0x10]
	mov	qword ptr [rax + 0x30], rdx
	mov	rsp, rsp
	jmp	.label_1889
.label_1885:
	lea	rsi, [rsi]
	mov	eax, 4
	mov	ecx, eax
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	cmp	rcx, qword ptr [rdx + 0x10]
	jge	.label_1890
	mov	eax, 0x2710
	lea	rdi, [rdi]
	mov	ecx, eax
	mov	eax, 0x64
	mov	rsp, rsp
	mov	edx, eax
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rdi, qword ptr [rsi + 0xa8]
	add	rdi, 1
	mov	rsp, rsp
	mov	qword ptr [rsi + 0xa8], rdi
	mov	rsi, qword ptr [rbp - 8]
	mov	rbp, rbp
	mov	rax, qword ptr [rsi + 8]
	mov	qword ptr [rbp - 0x10], rdx
	lea	rsi, [rsi]
	cqo	
	nop	
	mov	rdi, qword ptr [rbp - 0x10]
	idiv	rdi
	mov	rsp, rsp
	mov	r8, qword ptr [rbp - 0x18]
	mov	qword ptr [r8 + 0x40], rdx
	mov	rdx, qword ptr [rsi + 8]
	mov	rax, rdx
	lea	rdi, [rdi]
	cqo	
	idiv	rdi
	cqo	
	mov	rbp, rbp
	idiv	rdi
	lea	rdi, [rdi]
	mov	r8, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	mov	qword ptr [r8 + 0x38], rdx
	mov	rdx, qword ptr [rsi + 8]
	mov	rax, rdx
	cqo	
	idiv	rcx
	nop	
	mov	rcx, qword ptr [rbp - 0x18]
	nop	
	mov	qword ptr [rcx + 0x28], rax
	mov	rax, qword ptr [rsi + 0x10]
	sub	rax, 4
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	qword ptr [rcx + 0x30], rax
	mov	rbp, rbp
	jmp	.label_1888
.label_1890:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rax + 0xc8]
	add	rcx, 1
	mov	qword ptr [rax + 0xc8], rcx
	mov	rax, qword ptr [rbp - 8]
	cmp	qword ptr [rax + 0x10], 2
	mov	rbp, rbp
	jg	.label_1891
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 8]
	mov	rcx, qword ptr [rax + 8]
	nop	
	mov	rdx, qword ptr [rbp - 0x18]
	mov	qword ptr [rdx + 0x48], rcx
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x18]
	nop	
	mov	qword ptr [rcx + 0x50], 0
	lea	rdi, [rdi]
	jmp	.label_1886
.label_1891:
	mov	eax, 0x64
	nop	
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 8]
	mov	rax, qword ptr [rdx + 8]
	cqo	
	idiv	rcx
	mov	rsi, qword ptr [rbp - 0x18]
	mov	qword ptr [rsi + 0x48], rax
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax + 8]
	nop	
	cqo	
	mov	rsp, rsp
	idiv	rcx
	mov	rcx, qword ptr [rbp - 0x18]
	mov	qword ptr [rcx + 0x50], rdx
.label_1886:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x18]
	nop	
	mov	qword ptr [rax + 0x58], 0
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rax + 0x60], 0
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x18]
	mov	dword ptr [rax + 0x1c], 2
.label_1888:
	mov	rsp, rsp
	jmp	.label_1889
.label_1889:
	mov	rsp, rsp
	pop	rbp
	lea	rsi, [rsi]
	ret	
	.section	.text
	.align	32
	#Procedure 0x41c1d0

	.globl yyerror
	.type yyerror, @function
yyerror:
	push	rbp
	lea	rdi, [rdi]
	mov	rbp, rsp
	nop	
	xor	eax, eax
	mov	qword ptr [rbp - 0x10], rdi
	mov	rbp, rbp
	mov	qword ptr [rbp - 8], rsi
	lea	rdi, [rdi]
	pop	rbp
	mov	rsp, rsp
	ret	
	.section	.text
	.align	32
	#Procedure 0x41c1f0

	.globl yydestruct
	.type yydestruct, @function
yydestruct:
	push	rbp
	lea	rdi, [rdi]
	mov	rbp, rsp
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x18], rdi
	mov	dword ptr [rbp - 4], esi
	nop	
	mov	qword ptr [rbp - 0x10], rdx
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x20], rcx
	nop	
	cmp	qword ptr [rbp - 0x18], 0
	lea	rsi, [rsi]
	jne	.label_1892
	movabs	rax, OFFSET FLAT:.str.97
	mov	qword ptr [rbp - 0x18], rax
.label_1892:
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x41c230

	.globl parse_datetime
	.type parse_datetime, @function
parse_datetime:
	mov	rbp, rbp
	push	rbp
	mov	rbp, rsp
	nop	
	sub	rsp, 0x30
	mov	rbp, rbp
	movabs	rax, OFFSET FLAT:.str_5
	mov	qword ptr [rbp - 0x30], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x28], rdx
	mov	rdi, rax
	nop	
	call	getenv
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x18], rax
	mov	rdi, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	call	tzalloc
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 8], rax
	mov	rsp, rsp
	cmp	qword ptr [rbp - 8], 0
	mov	rsp, rsp
	jne	.label_1893
	mov	byte ptr [rbp - 0x1a], 0
	jmp	.label_1894
.label_1893:
	mov	rbp, rbp
	xor	ecx, ecx
	mov	rdi, qword ptr [rbp - 0x30]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	mov	r8, qword ptr [rbp - 8]
	mov	r9, qword ptr [rbp - 0x18]
	nop	
	call	parse_datetime2
	lea	rdi, [rdi]
	and	al, 1
	mov	byte ptr [rbp - 0x19], al
	mov	rdi, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	call	tzfree
	mov	al, byte ptr [rbp - 0x19]
	mov	rsp, rsp
	and	al, 1
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x1a], al
.label_1894:
	mov	al, byte ptr [rbp - 0x1a]
	and	al, 1
	movzx	eax, al
	nop	
	add	rsp, 0x30
	pop	rbp
	mov	rbp, rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x41c2f0

	.globl parse_datetime2
	.type parse_datetime2, @function
parse_datetime2:
	lea	rdi, [rdi]
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0xe30
	mov	qword ptr [rbp - 0x2b8], rdi
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0xa70], rsi
	mov	qword ptr [rbp - 0x7d8], rdx
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x3f0], ecx
	mov	qword ptr [rbp - 0x808], r8
	nop	
	mov	qword ptr [rbp - 0x7a8], r9
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x822], 0
	mov	rdx, qword ptr [rbp - 0xa70]
	mov	rdi, qword ptr [rbp - 0xa70]
	nop	
	mov	qword ptr [rbp - 0xca0], rdx
	lea	rdi, [rdi]
	call	strlen
	mov	rdx, qword ptr [rbp - 0xca0]
	add	rdx, rax
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0xbc8], rdx
	nop	
	mov	qword ptr [rbp - 0x218], 0
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x7d8], 0
	mov	rbp, rbp
	jne	.label_2125
	mov	rbp, rbp
	lea	rdi, [rbp - 0x3b8]
	mov	rbp, rbp
	call	gettime
	lea	rdi, [rbp - 0x3b8]
	mov	qword ptr [rbp - 0x7d8], rdi
.label_2125:
	mov	rax, qword ptr [rbp - 0x7d8]
	mov	rsp, rsp
	mov	rax, qword ptr [rax]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x488], rax
	mov	rax, qword ptr [rbp - 0x7d8]
	mov	rax, qword ptr [rax + 8]
	mov	rsp, rsp
	mov	ecx, eax
	mov	dword ptr [rbp - 0x71c], ecx
.label_2164:
	mov	rax, qword ptr [rbp - 0xa70]
	lea	rsi, [rsi]
	mov	cl, byte ptr [rax]
	mov	byte ptr [rbp - 0xcb1], cl
	lea	rdi, [rdi]
	movzx	edi, byte ptr [rbp - 0xcb1]
	call	c_isspace
	nop	
	test	al, 1
	nop	
	jne	.label_2159
	jmp	.label_3438
.label_2159:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0xa70]
	add	rax, 1
	mov	qword ptr [rbp - 0xa70], rax
	jmp	.label_2164
.label_3438:
	movabs	rsi, OFFSET FLAT:.str.19_0
	nop	
	mov	eax, 4
	lea	rsi, [rsi]
	mov	edx, eax
	mov	rcx, qword ptr [rbp - 0x808]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x228], rcx
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0xa70]
	call	strncmp
	cmp	eax, 0
	lea	rdi, [rdi]
	jne	.label_2192
	mov	rax, qword ptr [rbp - 0xa70]
	lea	rsi, [rsi]
	add	rax, 4
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x9c0], rax
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x7c0], 1
	mov	rax, qword ptr [rbp - 0x9c0]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x6f0], rax
.label_2394:
	mov	rax, qword ptr [rbp - 0x6f0]
	mov	rbp, rbp
	cmp	byte ptr [rax], 0
	je	.label_2217
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x6f0]
	mov	rsp, rsp
	movsx	ecx, byte ptr [rax]
	lea	rsi, [rsi]
	cmp	ecx, 0x5c
	jne	.label_2221
	mov	rax, qword ptr [rbp - 0x6f0]
	mov	rbp, rbp
	add	rax, 1
	mov	qword ptr [rbp - 0x6f0], rax
	mov	rax, qword ptr [rbp - 0x6f0]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0x5c
	lea	rdi, [rdi]
	je	.label_2227
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x6f0]
	movsx	ecx, byte ptr [rax]
	lea	rsi, [rsi]
	cmp	ecx, 0x22
	nop	
	je	.label_2227
	lea	rdi, [rdi]
	jmp	.label_2217
.label_2227:
	jmp	.label_2246
.label_2221:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x6f0]
	lea	rsi, [rsi]
	movsx	ecx, byte ptr [rax]
	mov	rbp, rbp
	cmp	ecx, 0x22
	jne	.label_3790
	nop	
	mov	eax, 0x64
	mov	rbp, rbp
	mov	ecx, eax
	lea	rdi, [rdi]
	lea	rdx, [rbp - 0xaf0]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0xb50], rdx
	cmp	rcx, qword ptr [rbp - 0x7c0]
	jge	.label_2254
	mov	rdi, qword ptr [rbp - 0x7c0]
	call	malloc
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x218], rax
	cmp	qword ptr [rbp - 0x218], 0
	lea	rdi, [rdi]
	jne	.label_2271
	nop	
	jmp	.label_1907
.label_2271:
	mov	rax, qword ptr [rbp - 0x218]
	mov	qword ptr [rbp - 0xb50], rax
.label_2254:
	nop	
	mov	rax, qword ptr [rbp - 0xb50]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x800], rax
	mov	rax, qword ptr [rbp - 0x9c0]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x6f0], rax
.label_2294:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x6f0]
	mov	rbp, rbp
	movsx	ecx, byte ptr [rax]
	mov	rbp, rbp
	cmp	ecx, 0x22
	je	.label_2289
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x6f0]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0x5c
	lea	rdi, [rdi]
	sete	dl
	lea	rsi, [rsi]
	and	dl, 1
	mov	rsp, rsp
	movzx	ecx, dl
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x6f0]
	nop	
	movsxd	rsi, ecx
	mov	rsp, rsp
	mov	rdi, rax
	nop	
	add	rdi, rsi
	mov	qword ptr [rbp - 0x6f0], rdi
	mov	dl, byte ptr [rax + rsi]
	mov	rax, qword ptr [rbp - 0x800]
	mov	rsi, rax
	lea	rsi, [rsi]
	add	rsi, 1
	mov	qword ptr [rbp - 0x800], rsi
	mov	byte ptr [rax], dl
	mov	rax, qword ptr [rbp - 0x6f0]
	add	rax, 1
	mov	qword ptr [rbp - 0x6f0], rax
	nop	
	jmp	.label_2294
.label_2289:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x800]
	mov	byte ptr [rax], 0
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0xb50]
	nop	
	call	tzalloc
	mov	qword ptr [rbp - 0x880], rax
	cmp	qword ptr [rbp - 0x880], 0
	jne	.label_2330
	jmp	.label_1907
.label_2330:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x880]
	mov	qword ptr [rbp - 0x228], rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0xb50]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x7a8], rax
	mov	rax, qword ptr [rbp - 0x6f0]
	lea	rsi, [rsi]
	add	rax, 1
	nop	
	mov	qword ptr [rbp - 0xa70], rax
.label_2381:
	mov	rax, qword ptr [rbp - 0xa70]
	mov	rbp, rbp
	mov	cl, byte ptr [rax]
	mov	byte ptr [rbp - 0xcb1], cl
	mov	rsp, rsp
	movzx	edi, byte ptr [rbp - 0xcb1]
	mov	rbp, rbp
	call	c_isspace
	test	al, 1
	nop	
	jne	.label_2374
	jmp	.label_2379
.label_2374:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0xa70]
	add	rax, 1
	mov	qword ptr [rbp - 0xa70], rax
	jmp	.label_2381
.label_2379:
	mov	rbp, rbp
	jmp	.label_2217
.label_3790:
	lea	rdi, [rdi]
	jmp	.label_2246
.label_2246:
	mov	rsp, rsp
	jmp	.label_2390
.label_2390:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x6f0]
	nop	
	add	rax, 1
	mov	qword ptr [rbp - 0x6f0], rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x7c0]
	lea	rsi, [rsi]
	add	rax, 1
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x7c0], rax
	jmp	.label_2394
.label_2217:
	jmp	.label_2192
.label_2192:
	lea	rdx, [rbp - 0x558]
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x228]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x7d8]
	call	localtime_rz
	cmp	rax, 0
	nop	
	jne	.label_2767
	lea	rdi, [rdi]
	jmp	.label_1907
.label_2767:
	mov	rax, qword ptr [rbp - 0xa70]
	mov	rsp, rsp
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0
	jne	.label_2415
	lea	rdi, [rdi]
	movabs	rax, OFFSET FLAT:.str.20_0
	mov	qword ptr [rbp - 0xa70], rax
.label_2415:
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0xa70]
	mov	qword ptr [rbp - 0x180], rdx
	mov	eax, dword ptr [rbp - 0x3f0]
	mov	rbp, rbp
	and	eax, 1
	lea	rsi, [rsi]
	cmp	eax, 0
	lea	rsi, [rsi]
	setne	sil
	and	sil, 1
	mov	byte ptr [rbp - 0xa7], sil
	mov	rsp, rsp
	test	cl, 1
	lea	rsi, [rsi]
	jne	.label_2425
	jmp	.label_2442
.label_2425:
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	mov	rsp, rsp
	jne	.label_2447
	mov	rbp, rbp
	jmp	.label_2452
.label_2447:
	mov	rsp, rsp
	mov	al, 1
	test	al, 1
	lea	rsi, [rsi]
	jne	.label_2455
	lea	rsi, [rsi]
	jmp	.label_2459
.label_2455:
	xor	eax, eax
	mov	rbp, rbp
	mov	cl, al
	mov	rbp, rbp
	test	cl, 1
	jne	.label_3040
	nop	
	jmp	.label_3060
.label_3040:
	mov	eax, dword ptr [rbp - 0x544]
	mov	cl, al
	movsx	eax, cl
	cmp	eax, 0x7fffff94
	mov	rbp, rbp
	jl	.label_2440
	jmp	.label_2474
.label_3060:
	mov	eax, 0x7fffff93
	mov	ecx, dword ptr [rbp - 0x544]
	mov	dl, cl
	movsx	ecx, dl
	mov	rsp, rsp
	cmp	eax, ecx
	lea	rsi, [rsi]
	jl	.label_2440
	jmp	.label_2474
.label_2459:
	mov	eax, dword ptr [rbp - 0x544]
	mov	cl, al
	mov	rsp, rsp
	movsx	eax, cl
	cmp	eax, 0
	jge	.label_2927
	mov	eax, 0x6c
	mov	ecx, dword ptr [rbp - 0x544]
	mov	dl, cl
	movsx	ecx, dl
	lea	rdi, [rdi]
	add	ecx, 0x6c
	lea	rdi, [rdi]
	cmp	eax, ecx
	jle	.label_2440
	lea	rsi, [rsi]
	jmp	.label_2474
.label_2927:
	lea	rsi, [rsi]
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	nop	
	jne	.label_3382
	lea	rsi, [rsi]
	jmp	.label_3499
.label_3382:
	mov	eax, dword ptr [rbp - 0x544]
	nop	
	mov	cl, al
	movsx	eax, cl
	mov	rbp, rbp
	mov	edx, dword ptr [rbp - 0x544]
	lea	rdi, [rdi]
	mov	cl, dl
	lea	rsi, [rsi]
	movsx	edx, cl
	nop	
	add	edx, 0x6c
	cmp	eax, edx
	mov	rbp, rbp
	jle	.label_2440
	jmp	.label_2474
.label_3499:
	mov	eax, dword ptr [rbp - 0x544]
	nop	
	mov	cl, al
	movsx	eax, cl
	mov	rbp, rbp
	add	eax, 0x6c
	cmp	eax, 0x6c
	lea	rdi, [rdi]
	jl	.label_2440
.label_2474:
	mov	eax, dword ptr [rbp - 0x544]
	mov	cl, al
	mov	rbp, rbp
	movsx	eax, cl
	add	eax, 0x6c
	cmp	eax, -0x80
	jl	.label_2440
	lea	rsi, [rsi]
	mov	eax, 0x7f
	mov	rbp, rbp
	mov	ecx, dword ptr [rbp - 0x544]
	mov	dl, cl
	movsx	ecx, dl
	nop	
	add	ecx, 0x6c
	cmp	eax, ecx
	nop	
	jge	.label_2540
.label_2440:
	mov	al, 1
	mov	rbp, rbp
	mov	ecx, dword ptr [rbp - 0x544]
	mov	rsp, rsp
	mov	dl, cl
	lea	rdi, [rdi]
	movsx	ecx, dl
	mov	rbp, rbp
	add	ecx, 0x6c
	mov	rbp, rbp
	mov	dl, cl
	mov	rsp, rsp
	movsx	rsi, dl
	mov	qword ptr [rbp - 0x158], rsi
	test	al, 1
	jne	.label_2563
	jmp	.label_2560
.label_2540:
	xor	eax, eax
	lea	rdi, [rdi]
	mov	cl, al
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x544]
	lea	rsi, [rsi]
	mov	dl, al
	movsx	eax, dl
	mov	rbp, rbp
	add	eax, 0x6c
	mov	rsp, rsp
	mov	dl, al
	movsx	rsi, dl
	mov	qword ptr [rbp - 0x158], rsi
	test	cl, 1
	jne	.label_2563
	lea	rdi, [rdi]
	jmp	.label_2560
.label_2452:
	mov	al, 1
	test	al, 1
	jne	.label_2577
	mov	rsp, rsp
	jmp	.label_2578
.label_2577:
	lea	rsi, [rsi]
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	nop	
	jne	.label_3675
	mov	rsp, rsp
	jmp	.label_2585
.label_3675:
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x544], 0x7ffff894
	jl	.label_2586
	nop	
	jmp	.label_2593
.label_2585:
	nop	
	mov	eax, 0x7ffff893
	cmp	eax, dword ptr [rbp - 0x544]
	mov	rsp, rsp
	jl	.label_2586
	jmp	.label_2593
.label_2578:
	lea	rsi, [rsi]
	cmp	dword ptr [rbp - 0x544], 0
	lea	rsi, [rsi]
	jge	.label_2599
	lea	rsi, [rsi]
	mov	eax, 0x76c
	lea	rsi, [rsi]
	mov	ecx, dword ptr [rbp - 0x544]
	add	ecx, 0x76c
	mov	rbp, rbp
	cmp	eax, ecx
	jle	.label_2586
	jmp	.label_2593
.label_2599:
	xor	eax, eax
	nop	
	mov	cl, al
	test	cl, 1
	jne	.label_2618
	jmp	.label_2624
.label_2618:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x544]
	lea	rsi, [rsi]
	mov	ecx, dword ptr [rbp - 0x544]
	mov	rsp, rsp
	add	ecx, 0x76c
	mov	rbp, rbp
	cmp	eax, ecx
	mov	rsp, rsp
	jle	.label_2586
	jmp	.label_2593
.label_2624:
	nop	
	mov	eax, dword ptr [rbp - 0x544]
	add	eax, 0x76c
	lea	rdi, [rdi]
	cmp	eax, 0x76c
	jl	.label_2586
.label_2593:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x544]
	mov	rsp, rsp
	add	eax, 0x76c
	lea	rdi, [rdi]
	cmp	eax, -0x80
	lea	rdi, [rdi]
	jl	.label_2586
	nop	
	mov	eax, 0x7f
	mov	ecx, dword ptr [rbp - 0x544]
	nop	
	add	ecx, 0x76c
	lea	rdi, [rdi]
	cmp	eax, ecx
	jge	.label_3522
.label_2586:
	mov	al, 1
	mov	ecx, dword ptr [rbp - 0x544]
	add	ecx, 0x76c
	lea	rsi, [rsi]
	mov	dl, cl
	lea	rdi, [rdi]
	movsx	rsi, dl
	mov	qword ptr [rbp - 0x158], rsi
	test	al, 1
	lea	rsi, [rsi]
	jne	.label_2563
	lea	rsi, [rsi]
	jmp	.label_2560
.label_3522:
	lea	rsi, [rsi]
	xor	eax, eax
	mov	cl, al
	mov	eax, dword ptr [rbp - 0x544]
	add	eax, 0x76c
	mov	dl, al
	lea	rsi, [rsi]
	movsx	rsi, dl
	mov	qword ptr [rbp - 0x158], rsi
	mov	rsp, rsp
	test	cl, 1
	jne	.label_2563
	jmp	.label_2560
.label_2442:
	mov	rsp, rsp
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_2677
	nop	
	jmp	.label_2683
.label_2677:
	lea	rsi, [rsi]
	xor	eax, eax
	lea	rdi, [rdi]
	mov	cl, al
	nop	
	test	cl, 1
	lea	rdi, [rdi]
	jne	.label_2295
	jmp	.label_2691
.label_2295:
	lea	rsi, [rsi]
	mov	al, 1
	mov	rbp, rbp
	test	al, 1
	jne	.label_3629
	jmp	.label_2693
.label_3629:
	mov	rbp, rbp
	xor	eax, eax
	lea	rdi, [rdi]
	mov	cl, al
	test	cl, 1
	jne	.label_2694
	mov	rsp, rsp
	jmp	.label_2699
.label_2694:
	mov	eax, dword ptr [rbp - 0x544]
	mov	cx, ax
	movsx	eax, cx
	cmp	eax, 0x7ffff894
	nop	
	jl	.label_2702
	nop	
	jmp	.label_2704
.label_2699:
	mov	rbp, rbp
	mov	eax, 0x7ffff893
	mov	ecx, dword ptr [rbp - 0x544]
	nop	
	mov	dx, cx
	movsx	ecx, dx
	cmp	eax, ecx
	lea	rdi, [rdi]
	jl	.label_2702
	jmp	.label_2704
.label_2693:
	mov	eax, dword ptr [rbp - 0x544]
	nop	
	mov	cx, ax
	movsx	eax, cx
	lea	rdi, [rdi]
	cmp	eax, 0
	mov	rsp, rsp
	jge	.label_2710
	mov	rbp, rbp
	mov	eax, 0x76c
	mov	ecx, dword ptr [rbp - 0x544]
	mov	dx, cx
	mov	rbp, rbp
	movsx	ecx, dx
	nop	
	add	ecx, 0x76c
	mov	rbp, rbp
	cmp	eax, ecx
	lea	rdi, [rdi]
	jle	.label_2702
	mov	rsp, rsp
	jmp	.label_2704
.label_2710:
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	nop	
	jne	.label_2730
	jmp	.label_2737
.label_2730:
	mov	eax, dword ptr [rbp - 0x544]
	mov	cx, ax
	mov	rsp, rsp
	movsx	eax, cx
	mov	edx, dword ptr [rbp - 0x544]
	mov	rsp, rsp
	mov	cx, dx
	movsx	edx, cx
	add	edx, 0x76c
	cmp	eax, edx
	jle	.label_2702
	mov	rbp, rbp
	jmp	.label_2704
.label_2737:
	mov	eax, dword ptr [rbp - 0x544]
	mov	cx, ax
	movsx	eax, cx
	add	eax, 0x76c
	cmp	eax, 0x76c
	mov	rbp, rbp
	jl	.label_2702
.label_2704:
	nop	
	mov	eax, dword ptr [rbp - 0x544]
	lea	rsi, [rsi]
	mov	cx, ax
	movsx	eax, cx
	mov	rsp, rsp
	add	eax, 0x76c
	cmp	eax, 0xffff8000
	jl	.label_2702
	mov	rbp, rbp
	mov	eax, 0x7fff
	mov	ecx, dword ptr [rbp - 0x544]
	lea	rsi, [rsi]
	mov	dx, cx
	movsx	ecx, dx
	lea	rdi, [rdi]
	add	ecx, 0x76c
	mov	rsp, rsp
	cmp	eax, ecx
	jge	.label_2765
.label_2702:
	mov	al, 1
	lea	rsi, [rsi]
	mov	ecx, dword ptr [rbp - 0x544]
	mov	dx, cx
	lea	rsi, [rsi]
	movsx	ecx, dx
	add	ecx, 0x76c
	mov	dx, cx
	mov	rsp, rsp
	movsx	rsi, dx
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x158], rsi
	test	al, 1
	jne	.label_2563
	lea	rdi, [rdi]
	jmp	.label_2560
.label_2765:
	xor	eax, eax
	nop	
	mov	cl, al
	mov	eax, dword ptr [rbp - 0x544]
	mov	rsp, rsp
	mov	dx, ax
	mov	rbp, rbp
	movsx	eax, dx
	mov	rsp, rsp
	add	eax, 0x76c
	mov	rbp, rbp
	mov	dx, ax
	mov	rbp, rbp
	movsx	rsi, dx
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x158], rsi
	test	cl, 1
	lea	rsi, [rsi]
	jne	.label_2563
	nop	
	jmp	.label_2560
.label_2691:
	lea	rsi, [rsi]
	mov	al, 1
	test	al, 1
	jne	.label_2803
	jmp	.label_2804
.label_2803:
	mov	rsp, rsp
	xor	eax, eax
	lea	rdi, [rdi]
	mov	cl, al
	nop	
	test	cl, 1
	jne	.label_2805
	jmp	.label_3152
.label_2805:
	mov	rbp, rbp
	cmp	dword ptr [rbp - 0x544], 0x7ffff894
	jl	.label_2210
	mov	rsp, rsp
	jmp	.label_2815
.label_3152:
	mov	eax, 0x7ffff893
	cmp	eax, dword ptr [rbp - 0x544]
	jl	.label_2210
	mov	rsp, rsp
	jmp	.label_2815
.label_2804:
	cmp	dword ptr [rbp - 0x544], 0
	lea	rdi, [rdi]
	jge	.label_3307
	mov	eax, 0x76c
	mov	ecx, dword ptr [rbp - 0x544]
	mov	rbp, rbp
	add	ecx, 0x76c
	cmp	eax, ecx
	mov	rbp, rbp
	jle	.label_2210
	jmp	.label_2815
.label_3307:
	xor	eax, eax
	mov	cl, al
	nop	
	test	cl, 1
	jne	.label_3662
	jmp	.label_2838
.label_3662:
	mov	eax, dword ptr [rbp - 0x544]
	mov	ecx, dword ptr [rbp - 0x544]
	add	ecx, 0x76c
	nop	
	cmp	eax, ecx
	jle	.label_2210
	jmp	.label_2815
.label_2838:
	mov	eax, dword ptr [rbp - 0x544]
	add	eax, 0x76c
	cmp	eax, 0x76c
	jl	.label_2210
.label_2815:
	mov	eax, dword ptr [rbp - 0x544]
	lea	rsi, [rsi]
	add	eax, 0x76c
	cmp	eax, 0xffff8000
	nop	
	jl	.label_2210
	lea	rdi, [rdi]
	mov	eax, 0x7fff
	mov	ecx, dword ptr [rbp - 0x544]
	add	ecx, 0x76c
	lea	rdi, [rdi]
	cmp	eax, ecx
	jge	.label_3450
.label_2210:
	mov	al, 1
	mov	ecx, dword ptr [rbp - 0x544]
	nop	
	add	ecx, 0x76c
	mov	rbp, rbp
	mov	dx, cx
	mov	rbp, rbp
	movsx	rsi, dx
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x158], rsi
	test	al, 1
	jne	.label_2563
	jmp	.label_2560
.label_3450:
	nop	
	xor	eax, eax
	mov	cl, al
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x544]
	add	eax, 0x76c
	mov	dx, ax
	nop	
	movsx	rsi, dx
	mov	qword ptr [rbp - 0x158], rsi
	test	cl, 1
	jne	.label_2563
	mov	rbp, rbp
	jmp	.label_2560
.label_2683:
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	nop	
	jne	.label_2900
	jmp	.label_2903
.label_2900:
	xor	eax, eax
	mov	cl, al
	mov	rbp, rbp
	test	cl, 1
	jne	.label_2906
	jmp	.label_2909
.label_2906:
	mov	rsp, rsp
	mov	al, 1
	lea	rdi, [rdi]
	test	al, 1
	jne	.label_2913
	lea	rdi, [rdi]
	jmp	.label_2252
.label_2913:
	nop	
	xor	eax, eax
	mov	cl, al
	lea	rsi, [rsi]
	test	cl, 1
	jne	.label_2917
	jmp	.label_2920
.label_2917:
	cmp	dword ptr [rbp - 0x544], 0x7ffff894
	jl	.label_2921
	mov	rsp, rsp
	jmp	.label_2925
.label_2920:
	lea	rdi, [rdi]
	mov	eax, 0x7ffff893
	cmp	eax, dword ptr [rbp - 0x544]
	lea	rdi, [rdi]
	jl	.label_2921
	jmp	.label_2925
.label_2252:
	cmp	dword ptr [rbp - 0x544], 0
	nop	
	jge	.label_2935
	mov	rsp, rsp
	mov	eax, 0x76c
	mov	ecx, dword ptr [rbp - 0x544]
	nop	
	add	ecx, 0x76c
	cmp	eax, ecx
	lea	rsi, [rsi]
	jle	.label_2921
	mov	rsp, rsp
	jmp	.label_2925
.label_2935:
	mov	rsp, rsp
	xor	eax, eax
	mov	rbp, rbp
	mov	cl, al
	nop	
	test	cl, 1
	mov	rsp, rsp
	jne	.label_2801
	mov	rbp, rbp
	jmp	.label_2951
.label_2801:
	mov	eax, dword ptr [rbp - 0x544]
	lea	rdi, [rdi]
	mov	ecx, dword ptr [rbp - 0x544]
	mov	rsp, rsp
	add	ecx, 0x76c
	lea	rsi, [rsi]
	cmp	eax, ecx
	jle	.label_2921
	jmp	.label_2925
.label_2951:
	mov	eax, dword ptr [rbp - 0x544]
	nop	
	add	eax, 0x76c
	lea	rsi, [rsi]
	cmp	eax, 0x76c
	lea	rdi, [rdi]
	jl	.label_2921
.label_2925:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x544]
	mov	rbp, rbp
	add	eax, 0x76c
	cmp	eax, 0x80000000
	mov	rsp, rsp
	jl	.label_2921
	mov	eax, 0x7fffffff
	nop	
	mov	ecx, dword ptr [rbp - 0x544]
	mov	rbp, rbp
	add	ecx, 0x76c
	cmp	eax, ecx
	mov	rbp, rbp
	jge	.label_2987
.label_2921:
	mov	rsp, rsp
	mov	al, 1
	mov	ecx, dword ptr [rbp - 0x544]
	add	ecx, 0x76c
	lea	rdi, [rdi]
	movsxd	rdx, ecx
	nop	
	mov	qword ptr [rbp - 0x158], rdx
	mov	rsp, rsp
	test	al, 1
	lea	rsi, [rsi]
	jne	.label_2563
	jmp	.label_2560
.label_2987:
	nop	
	xor	eax, eax
	mov	rsp, rsp
	mov	cl, al
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x544]
	add	eax, 0x76c
	nop	
	movsxd	rdx, eax
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x158], rdx
	nop	
	test	cl, 1
	lea	rdi, [rdi]
	jne	.label_2563
	jmp	.label_2560
.label_2909:
	mov	al, 1
	nop	
	test	al, 1
	lea	rsi, [rsi]
	jne	.label_3022
	mov	rsp, rsp
	jmp	.label_3027
.label_3022:
	mov	rbp, rbp
	xor	eax, eax
	nop	
	mov	cl, al
	test	cl, 1
	lea	rdi, [rdi]
	jne	.label_3029
	jmp	.label_3031
.label_3029:
	cmp	dword ptr [rbp - 0x544], 0x7ffff894
	lea	rsi, [rsi]
	jl	.label_3033
	lea	rsi, [rsi]
	jmp	.label_3035
.label_3031:
	lea	rdi, [rdi]
	mov	eax, 0x7ffff893
	mov	rbp, rbp
	cmp	eax, dword ptr [rbp - 0x544]
	mov	rsp, rsp
	jl	.label_3033
	jmp	.label_3035
.label_3027:
	cmp	dword ptr [rbp - 0x544], 0
	jge	.label_3044
	mov	eax, 0x76c
	mov	ecx, dword ptr [rbp - 0x544]
	lea	rdi, [rdi]
	add	ecx, 0x76c
	mov	rbp, rbp
	cmp	eax, ecx
	nop	
	jle	.label_3033
	jmp	.label_3035
.label_3044:
	xor	eax, eax
	mov	cl, al
	mov	rsp, rsp
	test	cl, 1
	lea	rdi, [rdi]
	jne	.label_3051
	jmp	.label_3055
.label_3051:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x544]
	lea	rsi, [rsi]
	mov	ecx, dword ptr [rbp - 0x544]
	lea	rsi, [rsi]
	add	ecx, 0x76c
	cmp	eax, ecx
	jle	.label_3033
	lea	rsi, [rsi]
	jmp	.label_3035
.label_3055:
	mov	eax, dword ptr [rbp - 0x544]
	lea	rdi, [rdi]
	add	eax, 0x76c
	cmp	eax, 0x76c
	jl	.label_3033
.label_3035:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x544]
	mov	rbp, rbp
	add	eax, 0x76c
	mov	rsp, rsp
	cmp	eax, 0x80000000
	jl	.label_3033
	mov	eax, 0x7fffffff
	mov	ecx, dword ptr [rbp - 0x544]
	add	ecx, 0x76c
	cmp	eax, ecx
	jge	.label_3078
.label_3033:
	mov	al, 1
	mov	rbp, rbp
	mov	ecx, dword ptr [rbp - 0x544]
	add	ecx, 0x76c
	lea	rsi, [rsi]
	movsxd	rdx, ecx
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x158], rdx
	nop	
	test	al, 1
	jne	.label_2563
	mov	rbp, rbp
	jmp	.label_2560
.label_3078:
	mov	rsp, rsp
	xor	eax, eax
	nop	
	mov	cl, al
	nop	
	mov	eax, dword ptr [rbp - 0x544]
	mov	rsp, rsp
	add	eax, 0x76c
	movsxd	rdx, eax
	nop	
	mov	qword ptr [rbp - 0x158], rdx
	test	cl, 1
	jne	.label_2563
	lea	rdi, [rdi]
	jmp	.label_2560
.label_2903:
	mov	al, 1
	mov	rbp, rbp
	test	al, 1
	lea	rdi, [rdi]
	jne	.label_3109
	mov	rsp, rsp
	jmp	.label_3115
.label_3109:
	mov	rbp, rbp
	mov	al, 1
	nop	
	test	al, 1
	jne	.label_3118
	jmp	.label_1961
.label_3118:
	lea	rdi, [rdi]
	mov	al, 1
	test	al, 1
	lea	rsi, [rsi]
	jne	.label_3123
	jmp	.label_3127
.label_3123:
	mov	rsp, rsp
	xor	eax, eax
	mov	rsp, rsp
	mov	cl, al
	test	cl, 1
	mov	rbp, rbp
	jne	.label_3128
	lea	rsi, [rsi]
	jmp	.label_3134
.label_3128:
	mov	rsp, rsp
	movabs	rax, 0x7ffffffffffff894
	movsxd	rcx, dword ptr [rbp - 0x544]
	cmp	rcx, rax
	jl	.label_3137
	jmp	.label_3140
.label_3134:
	movabs	rax, 0x7ffffffffffff893
	lea	rdi, [rdi]
	movsxd	rcx, dword ptr [rbp - 0x544]
	cmp	rax, rcx
	jl	.label_3137
	lea	rsi, [rsi]
	jmp	.label_3140
.label_3127:
	movsxd	rax, dword ptr [rbp - 0x544]
	cmp	rax, 0
	lea	rsi, [rsi]
	jge	.label_3146
	mov	eax, 0x76c
	lea	rsi, [rsi]
	mov	ecx, eax
	nop	
	movsxd	rdx, dword ptr [rbp - 0x544]
	add	rdx, 0x76c
	lea	rdi, [rdi]
	cmp	rcx, rdx
	mov	rbp, rbp
	jle	.label_3137
	mov	rsp, rsp
	jmp	.label_3140
.label_3146:
	xor	eax, eax
	lea	rdi, [rdi]
	mov	cl, al
	mov	rbp, rbp
	test	cl, 1
	lea	rdi, [rdi]
	jne	.label_3157
	mov	rsp, rsp
	jmp	.label_3162
.label_3157:
	lea	rdi, [rdi]
	movsxd	rax, dword ptr [rbp - 0x544]
	nop	
	movsxd	rcx, dword ptr [rbp - 0x544]
	add	rcx, 0x76c
	cmp	rax, rcx
	lea	rdi, [rdi]
	jle	.label_3137
	jmp	.label_3140
.label_3162:
	movsxd	rax, dword ptr [rbp - 0x544]
	add	rax, 0x76c
	cmp	rax, 0x76c
	jl	.label_3137
.label_3140:
	movabs	rax, 0x8000000000000000
	movsxd	rcx, dword ptr [rbp - 0x544]
	mov	rbp, rbp
	add	rcx, 0x76c
	lea	rdi, [rdi]
	cmp	rcx, rax
	lea	rdi, [rdi]
	jl	.label_3137
	movabs	rax, 0x7fffffffffffffff
	movsxd	rcx, dword ptr [rbp - 0x544]
	lea	rdi, [rdi]
	add	rcx, 0x76c
	cmp	rax, rcx
	jge	.label_2449
.label_3137:
	nop	
	mov	al, 1
	mov	rbp, rbp
	movsxd	rcx, dword ptr [rbp - 0x544]
	add	rcx, 0x76c
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x158], rcx
	mov	rbp, rbp
	test	al, 1
	mov	rbp, rbp
	jne	.label_2563
	jmp	.label_2560
.label_2449:
	xor	eax, eax
	mov	cl, al
	movsxd	rdx, dword ptr [rbp - 0x544]
	mov	rbp, rbp
	add	rdx, 0x76c
	mov	qword ptr [rbp - 0x158], rdx
	nop	
	test	cl, 1
	mov	rbp, rbp
	jne	.label_2563
	lea	rdi, [rdi]
	jmp	.label_2560
.label_1961:
	mov	rbp, rbp
	mov	al, 1
	test	al, 1
	lea	rdi, [rdi]
	jne	.label_3237
	nop	
	jmp	.label_3240
.label_3237:
	mov	rbp, rbp
	xor	eax, eax
	mov	rsp, rsp
	mov	cl, al
	mov	rbp, rbp
	test	cl, 1
	jne	.label_3242
	jmp	.label_3246
.label_3242:
	nop	
	cmp	dword ptr [rbp - 0x544], 0x7ffff894
	jl	.label_3253
	jmp	.label_3251
.label_3246:
	mov	rsp, rsp
	mov	eax, 0x7ffff893
	cmp	eax, dword ptr [rbp - 0x544]
	mov	rsp, rsp
	jl	.label_3253
	mov	rbp, rbp
	jmp	.label_3251
.label_3240:
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x544], 0
	jge	.label_3258
	mov	eax, 0x76c
	mov	rbp, rbp
	mov	ecx, dword ptr [rbp - 0x544]
	mov	rbp, rbp
	add	ecx, 0x76c
	lea	rsi, [rsi]
	cmp	eax, ecx
	mov	rsp, rsp
	jle	.label_3253
	jmp	.label_3251
.label_3258:
	nop	
	xor	eax, eax
	nop	
	mov	cl, al
	test	cl, 1
	jne	.label_3270
	jmp	.label_3274
.label_3270:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x544]
	lea	rsi, [rsi]
	mov	ecx, dword ptr [rbp - 0x544]
	nop	
	add	ecx, 0x76c
	mov	rsp, rsp
	cmp	eax, ecx
	jle	.label_3253
	jmp	.label_3251
.label_3274:
	nop	
	mov	eax, dword ptr [rbp - 0x544]
	add	eax, 0x76c
	mov	rsp, rsp
	cmp	eax, 0x76c
	lea	rdi, [rdi]
	jl	.label_3253
.label_3251:
	movabs	rax, 0x8000000000000000
	mov	ecx, dword ptr [rbp - 0x544]
	lea	rsi, [rsi]
	add	ecx, 0x76c
	mov	rsp, rsp
	movsxd	rdx, ecx
	cmp	rdx, rax
	jl	.label_3253
	movabs	rax, 0x7fffffffffffffff
	lea	rdi, [rdi]
	mov	ecx, dword ptr [rbp - 0x544]
	mov	rbp, rbp
	add	ecx, 0x76c
	nop	
	movsxd	rdx, ecx
	cmp	rax, rdx
	mov	rbp, rbp
	jge	.label_3292
.label_3253:
	mov	al, 1
	lea	rdi, [rdi]
	movsxd	rcx, dword ptr [rbp - 0x544]
	nop	
	add	rcx, 0x76c
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x158], rcx
	test	al, 1
	jne	.label_2563
	jmp	.label_2560
.label_3292:
	xor	eax, eax
	mov	cl, al
	lea	rsi, [rsi]
	movsxd	rdx, dword ptr [rbp - 0x544]
	nop	
	add	rdx, 0x76c
	mov	qword ptr [rbp - 0x158], rdx
	nop	
	test	cl, 1
	jne	.label_2563
	jmp	.label_2560
.label_3115:
	mov	rbp, rbp
	mov	al, 1
	test	al, 1
	lea	rsi, [rsi]
	jne	.label_3326
	jmp	.label_3332
.label_3326:
	mov	al, 1
	lea	rdi, [rdi]
	test	al, 1
	jne	.label_3333
	lea	rdi, [rdi]
	jmp	.label_3337
.label_3333:
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_3340
	jmp	.label_3342
.label_3340:
	mov	rbp, rbp
	movabs	rax, 0x7ffffffffffff894
	movsxd	rcx, dword ptr [rbp - 0x544]
	cmp	rcx, rax
	jl	.label_3344
	jmp	.label_3353
.label_3342:
	movabs	rax, 0x7ffffffffffff893
	movsxd	rcx, dword ptr [rbp - 0x544]
	mov	rsp, rsp
	cmp	rax, rcx
	lea	rsi, [rsi]
	jl	.label_3344
	jmp	.label_3353
.label_3337:
	movsxd	rax, dword ptr [rbp - 0x544]
	lea	rdi, [rdi]
	cmp	rax, 0
	mov	rsp, rsp
	jge	.label_3362
	mov	eax, 0x76c
	mov	ecx, eax
	lea	rdi, [rdi]
	movsxd	rdx, dword ptr [rbp - 0x544]
	add	rdx, 0x76c
	lea	rsi, [rsi]
	cmp	rcx, rdx
	jle	.label_3344
	jmp	.label_3353
.label_3362:
	lea	rdi, [rdi]
	xor	eax, eax
	lea	rsi, [rsi]
	mov	cl, al
	lea	rsi, [rsi]
	test	cl, 1
	nop	
	jne	.label_3375
	jmp	.label_3381
.label_3375:
	lea	rdi, [rdi]
	movsxd	rax, dword ptr [rbp - 0x544]
	movsxd	rcx, dword ptr [rbp - 0x544]
	add	rcx, 0x76c
	cmp	rax, rcx
	jle	.label_3344
	jmp	.label_3353
.label_3381:
	lea	rsi, [rsi]
	movsxd	rax, dword ptr [rbp - 0x544]
	add	rax, 0x76c
	cmp	rax, 0x76c
	lea	rdi, [rdi]
	jl	.label_3344
.label_3353:
	movabs	rax, 0x8000000000000000
	nop	
	movsxd	rcx, dword ptr [rbp - 0x544]
	mov	rsp, rsp
	add	rcx, 0x76c
	lea	rdi, [rdi]
	cmp	rcx, rax
	jl	.label_3344
	nop	
	movabs	rax, 0x7fffffffffffffff
	movsxd	rcx, dword ptr [rbp - 0x544]
	mov	rsp, rsp
	add	rcx, 0x76c
	cmp	rax, rcx
	mov	rbp, rbp
	jge	.label_3395
.label_3344:
	lea	rdi, [rdi]
	mov	al, 1
	movsxd	rcx, dword ptr [rbp - 0x544]
	nop	
	add	rcx, 0x76c
	mov	qword ptr [rbp - 0x158], rcx
	test	al, 1
	jne	.label_2563
	jmp	.label_2560
.label_3395:
	mov	rsp, rsp
	xor	eax, eax
	mov	cl, al
	movsxd	rdx, dword ptr [rbp - 0x544]
	nop	
	add	rdx, 0x76c
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x158], rdx
	nop	
	test	cl, 1
	mov	rbp, rbp
	jne	.label_2563
	jmp	.label_2560
.label_3332:
	mov	al, 1
	test	al, 1
	lea	rdi, [rdi]
	jne	.label_3434
	mov	rsp, rsp
	jmp	.label_3439
.label_3434:
	xor	eax, eax
	mov	rsp, rsp
	mov	cl, al
	lea	rsi, [rsi]
	test	cl, 1
	jne	.label_3442
	jmp	.label_3446
.label_3442:
	nop	
	cmp	dword ptr [rbp - 0x544], 0x7ffff894
	jl	.label_3121
	mov	rbp, rbp
	jmp	.label_3453
.label_3446:
	mov	eax, 0x7ffff893
	cmp	eax, dword ptr [rbp - 0x544]
	lea	rsi, [rsi]
	jl	.label_3121
	lea	rdi, [rdi]
	jmp	.label_3453
.label_3439:
	nop	
	cmp	dword ptr [rbp - 0x544], 0
	jge	.label_3462
	mov	rbp, rbp
	mov	eax, 0x76c
	mov	ecx, dword ptr [rbp - 0x544]
	mov	rbp, rbp
	add	ecx, 0x76c
	cmp	eax, ecx
	jle	.label_3121
	jmp	.label_3453
.label_3462:
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	mov	rsp, rsp
	jne	.label_2167
	jmp	.label_3474
.label_2167:
	mov	eax, dword ptr [rbp - 0x544]
	mov	ecx, dword ptr [rbp - 0x544]
	mov	rbp, rbp
	add	ecx, 0x76c
	mov	rbp, rbp
	cmp	eax, ecx
	jle	.label_3121
	jmp	.label_3453
.label_3474:
	mov	eax, dword ptr [rbp - 0x544]
	lea	rdi, [rdi]
	add	eax, 0x76c
	nop	
	cmp	eax, 0x76c
	jl	.label_3121
.label_3453:
	mov	rbp, rbp
	movabs	rax, 0x8000000000000000
	mov	rbp, rbp
	mov	ecx, dword ptr [rbp - 0x544]
	add	ecx, 0x76c
	lea	rdi, [rdi]
	movsxd	rdx, ecx
	lea	rsi, [rsi]
	cmp	rdx, rax
	lea	rsi, [rsi]
	jl	.label_3121
	mov	rbp, rbp
	movabs	rax, 0x7fffffffffffffff
	mov	ecx, dword ptr [rbp - 0x544]
	add	ecx, 0x76c
	mov	rbp, rbp
	movsxd	rdx, ecx
	cmp	rax, rdx
	mov	rbp, rbp
	jge	.label_3498
.label_3121:
	mov	al, 1
	lea	rdi, [rdi]
	movsxd	rcx, dword ptr [rbp - 0x544]
	add	rcx, 0x76c
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x158], rcx
	test	al, 1
	jne	.label_2563
	mov	rbp, rbp
	jmp	.label_2560
.label_3498:
	lea	rdi, [rdi]
	xor	eax, eax
	mov	cl, al
	movsxd	rdx, dword ptr [rbp - 0x544]
	add	rdx, 0x76c
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x158], rdx
	lea	rsi, [rsi]
	test	cl, 1
	jne	.label_2563
	jmp	.label_2560
.label_2563:
	lea	rsi, [rsi]
	test	byte ptr [rbp - 0xa7], 1
	je	.label_3528
	lea	rdi, [rdi]
	movabs	rdi, OFFSET FLAT:.str.21_0
	lea	rsi, [rsi]
	call	gettext
	nop	
	mov	rdi, rax
	nop	
	mov	al, 0
	call	dbg_printf
.label_3528:
	jmp	.label_1907
.label_2560:
	movabs	rax, OFFSET FLAT:parse_datetime2.rel_time_0
	lea	rsi, [rsi]
	mov	ecx, 0x38
	lea	rdi, [rdi]
	mov	edx, ecx
	mov	rbp, rbp
	lea	rsi, [rbp - 0x180]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x150], 0
	mov	ecx, dword ptr [rbp - 0x548]
	mov	rsp, rsp
	add	ecx, 1
	lea	rdi, [rdi]
	movsxd	rdi, ecx
	nop	
	mov	qword ptr [rbp - 0x148], rdi
	lea	rsi, [rsi]
	movsxd	rdi, dword ptr [rbp - 0x54c]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x140], rdi
	movsxd	rdi, dword ptr [rbp - 0x550]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x138], rdi
	lea	rdi, [rdi]
	movsxd	rdi, dword ptr [rbp - 0x554]
	mov	qword ptr [rbp - 0x130], rdi
	lea	rsi, [rsi]
	movsxd	rdi, dword ptr [rbp - 0x558]
	mov	qword ptr [rbp - 0x128], rdi
	mov	rsp, rsp
	movsxd	rdi, dword ptr [rbp - 0x71c]
	nop	
	mov	qword ptr [rbp - 0x120], rdi
	lea	rsi, [rsi]
	mov	ecx, dword ptr [rbp - 0x538]
	mov	dword ptr [rbp - 0x1a0], ecx
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x164], 2
	add	rsi, 0x68
	lea	rdi, [rdi]
	mov	rdi, rsi
	mov	rsp, rsp
	mov	rsi, rax
	call	memcpy
	mov	byte ptr [rbp - 0xe0], 0
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0xdf], 0
	mov	qword ptr [rbp - 0xd8], 0
	mov	qword ptr [rbp - 0xd0], 0
	mov	qword ptr [rbp - 0xb8], 0
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0xc8], 0
	nop	
	mov	qword ptr [rbp - 0xc0], 0
	nop	
	mov	qword ptr [rbp - 0xb0], 0
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0xa8], 0
	mov	rsp, rsp
	mov	byte ptr [rbp - 0xa6], 0
	mov	rbp, rbp
	mov	byte ptr [rbp - 0xa5], 0
	mov	byte ptr [rbp - 0xa3], 0
	mov	rbp, rbp
	mov	byte ptr [rbp - 0xa4], 0
	mov	rsp, rsp
	mov	byte ptr [rbp - 0xa2], 0
	mov	byte ptr [rbp - 0xa1], 0
	nop	
	mov	byte ptr [rbp - 0xa0], 0
	mov	rax, qword ptr [rbp - 0x528]
	mov	qword ptr [rbp - 0x98], rax
	mov	dword ptr [rbp - 0x90], 0x10d
	mov	ecx, dword ptr [rbp - 0x538]
	mov	dword ptr [rbp - 0x8c], ecx
	mov	qword ptr [rbp - 0x88], 0
	mov	dword ptr [rbp - 0x48c], 1
.label_3774:
	cmp	dword ptr [rbp - 0x48c], 3
	nop	
	jg	.label_3224
	xor	eax, eax
	mov	rsp, rsp
	mov	cl, al
	test	cl, 1
	jne	.label_3637
	nop	
	jmp	.label_3639
.label_3637:
	mov	rsp, rsp
	xor	eax, eax
	mov	cl, al
	mov	rbp, rbp
	test	cl, 1
	lea	rsi, [rsi]
	jne	.label_3642
	nop	
	jmp	.label_3645
.label_3642:
	mov	al, 1
	test	al, 1
	jne	.label_3648
	jmp	.label_3650
.label_3648:
	imul	eax, dword ptr [rbp - 0x48c], 0x76a700
	mov	cl, al
	lea	rdi, [rdi]
	movsx	eax, cl
	cmp	eax, 0
	jge	.label_3652
	mov	rsp, rsp
	mov	eax, 0x80000000
	mov	rcx, qword ptr [rbp - 0x488]
	mov	dl, cl
	movsx	esi, dl
	lea	rsi, [rsi]
	imul	edi, dword ptr [rbp - 0x48c], 0x76a700
	lea	rdi, [rdi]
	mov	dl, dil
	movsx	edi, dl
	sub	eax, edi
	lea	rdi, [rdi]
	cmp	esi, eax
	mov	rsp, rsp
	jl	.label_2530
	mov	rbp, rbp
	jmp	.label_3674
.label_3652:
	mov	eax, 0x7fffffff
	imul	ecx, dword ptr [rbp - 0x48c], 0x76a700
	mov	rbp, rbp
	mov	dl, cl
	nop	
	movsx	ecx, dl
	lea	rdi, [rdi]
	sub	eax, ecx
	mov	rsi, qword ptr [rbp - 0x488]
	lea	rsi, [rsi]
	mov	dl, sil
	nop	
	movsx	ecx, dl
	cmp	eax, ecx
	jl	.label_2530
	jmp	.label_3674
.label_3650:
	nop	
	mov	rax, qword ptr [rbp - 0x488]
	nop	
	mov	cl, al
	mov	rbp, rbp
	movsx	edx, cl
	mov	rbp, rbp
	cmp	edx, 0
	jge	.label_3684
	imul	eax, dword ptr [rbp - 0x48c], 0x76a700
	mov	cl, al
	mov	rbp, rbp
	movsx	eax, cl
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x488]
	mov	rbp, rbp
	mov	cl, dl
	mov	rbp, rbp
	movsx	esi, cl
	imul	edi, dword ptr [rbp - 0x48c], 0x76a700
	mov	cl, dil
	nop	
	movsx	edi, cl
	mov	rsp, rsp
	add	esi, edi
	cmp	eax, esi
	jle	.label_2530
	jmp	.label_3674
.label_3684:
	imul	eax, dword ptr [rbp - 0x48c], 0x76a700
	nop	
	mov	cl, al
	lea	rsi, [rsi]
	movsx	eax, cl
	cmp	eax, 0
	mov	rbp, rbp
	jge	.label_3700
	mov	rax, qword ptr [rbp - 0x488]
	nop	
	mov	cl, al
	lea	rsi, [rsi]
	movsx	edx, cl
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x488]
	mov	rsp, rsp
	mov	cl, al
	movsx	esi, cl
	imul	edi, dword ptr [rbp - 0x48c], 0x76a700
	lea	rdi, [rdi]
	mov	cl, dil
	lea	rdi, [rdi]
	movsx	edi, cl
	nop	
	add	esi, edi
	cmp	edx, esi
	jle	.label_2530
	jmp	.label_3674
.label_3700:
	mov	rax, qword ptr [rbp - 0x488]
	mov	cl, al
	movsx	edx, cl
	imul	esi, dword ptr [rbp - 0x48c], 0x76a700
	mov	rbp, rbp
	mov	cl, sil
	movsx	esi, cl
	add	edx, esi
	imul	esi, dword ptr [rbp - 0x48c], 0x76a700
	mov	cl, sil
	movsx	esi, cl
	mov	rsp, rsp
	cmp	edx, esi
	nop	
	jl	.label_2530
.label_3674:
	mov	rax, qword ptr [rbp - 0x488]
	mov	rbp, rbp
	mov	cl, al
	movsx	edx, cl
	imul	esi, dword ptr [rbp - 0x48c], 0x76a700
	nop	
	mov	cl, sil
	mov	rsp, rsp
	movsx	esi, cl
	lea	rdi, [rdi]
	add	edx, esi
	nop	
	cmp	edx, -0x80
	nop	
	jl	.label_2530
	mov	rsp, rsp
	mov	eax, 0x7f
	mov	rcx, qword ptr [rbp - 0x488]
	nop	
	mov	dl, cl
	movsx	esi, dl
	imul	edi, dword ptr [rbp - 0x48c], 0x76a700
	mov	dl, dil
	lea	rdi, [rdi]
	movsx	edi, dl
	add	esi, edi
	cmp	eax, esi
	mov	rbp, rbp
	jge	.label_3746
.label_2530:
	mov	al, 1
	mov	rcx, qword ptr [rbp - 0x488]
	mov	rbp, rbp
	mov	dl, cl
	nop	
	movsx	esi, dl
	nop	
	imul	edi, dword ptr [rbp - 0x48c], 0x76a700
	nop	
	mov	dl, dil
	nop	
	movsx	edi, dl
	add	esi, edi
	lea	rsi, [rsi]
	mov	dl, sil
	lea	rdi, [rdi]
	movsx	rcx, dl
	mov	qword ptr [rbp - 0x448], rcx
	test	al, 1
	jne	.label_1921
	jmp	.label_1936
.label_3746:
	xor	eax, eax
	nop	
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x488]
	mov	sil, dl
	mov	rsp, rsp
	movsx	eax, sil
	imul	edi, dword ptr [rbp - 0x48c], 0x76a700
	mov	sil, dil
	mov	rbp, rbp
	movsx	edi, sil
	lea	rdi, [rdi]
	add	eax, edi
	mov	sil, al
	mov	rbp, rbp
	movsx	rdx, sil
	mov	qword ptr [rbp - 0x448], rdx
	test	cl, 1
	jne	.label_1921
	jmp	.label_1936
.label_3645:
	lea	rsi, [rsi]
	mov	al, 1
	test	al, 1
	lea	rdi, [rdi]
	jne	.label_3783
	lea	rdi, [rdi]
	jmp	.label_3786
.label_3783:
	imul	eax, dword ptr [rbp - 0x48c], 0x76a700
	lea	rdi, [rdi]
	cmp	eax, 0
	jge	.label_3788
	lea	rdi, [rdi]
	movabs	rax, 0x8000000000000000
	mov	rcx, qword ptr [rbp - 0x488]
	lea	rsi, [rsi]
	imul	edx, dword ptr [rbp - 0x48c], 0x76a700
	lea	rsi, [rsi]
	movsxd	rsi, edx
	sub	rax, rsi
	mov	rsp, rsp
	cmp	rcx, rax
	jl	.label_3000
	jmp	.label_3771
.label_3788:
	movabs	rax, 0x7fffffffffffffff
	imul	ecx, dword ptr [rbp - 0x48c], 0x76a700
	movsxd	rdx, ecx
	mov	rsp, rsp
	sub	rax, rdx
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rbp - 0x488]
	jl	.label_3000
	jmp	.label_3771
.label_3786:
	nop	
	cmp	qword ptr [rbp - 0x488], 0
	lea	rdi, [rdi]
	jge	.label_3811
	imul	eax, dword ptr [rbp - 0x48c], 0x76a700
	lea	rsi, [rsi]
	movsxd	rcx, eax
	mov	rdx, qword ptr [rbp - 0x488]
	mov	rbp, rbp
	imul	eax, dword ptr [rbp - 0x48c], 0x76a700
	mov	rsp, rsp
	movsxd	rsi, eax
	nop	
	add	rdx, rsi
	cmp	rcx, rdx
	mov	rsp, rsp
	jle	.label_3000
	mov	rsp, rsp
	jmp	.label_3771
.label_3811:
	imul	eax, dword ptr [rbp - 0x48c], 0x76a700
	mov	rsp, rsp
	cmp	eax, 0
	jge	.label_3835
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x488]
	nop	
	mov	rcx, qword ptr [rbp - 0x488]
	mov	rsp, rsp
	imul	edx, dword ptr [rbp - 0x48c], 0x76a700
	nop	
	movsxd	rsi, edx
	add	rcx, rsi
	mov	rsp, rsp
	cmp	rax, rcx
	lea	rdi, [rdi]
	jle	.label_3000
	jmp	.label_3771
.label_3835:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x488]
	lea	rsi, [rsi]
	imul	ecx, dword ptr [rbp - 0x48c], 0x76a700
	movsxd	rdx, ecx
	lea	rsi, [rsi]
	add	rax, rdx
	lea	rsi, [rsi]
	imul	ecx, dword ptr [rbp - 0x48c], 0x76a700
	nop	
	movsxd	rdx, ecx
	mov	rbp, rbp
	cmp	rax, rdx
	mov	rbp, rbp
	jl	.label_3000
.label_3771:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x488]
	imul	ecx, dword ptr [rbp - 0x48c], 0x76a700
	lea	rdi, [rdi]
	movsxd	rdx, ecx
	add	rax, rdx
	mov	rsp, rsp
	cmp	rax, -0x80
	jl	.label_3000
	lea	rsi, [rsi]
	mov	eax, 0x7f
	mov	ecx, eax
	nop	
	mov	rdx, qword ptr [rbp - 0x488]
	lea	rsi, [rsi]
	imul	eax, dword ptr [rbp - 0x48c], 0x76a700
	movsxd	rsi, eax
	add	rdx, rsi
	lea	rdi, [rdi]
	cmp	rcx, rdx
	jge	.label_1906
.label_3000:
	mov	rbp, rbp
	mov	al, 1
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x488]
	mov	edx, ecx
	nop	
	imul	esi, dword ptr [rbp - 0x48c], 0x76a700
	lea	rdi, [rdi]
	add	edx, esi
	mov	rbp, rbp
	mov	dil, dl
	movsx	rcx, dil
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x448], rcx
	nop	
	test	al, 1
	jne	.label_1921
	jmp	.label_1936
.label_1906:
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x488]
	mov	eax, edx
	lea	rsi, [rsi]
	imul	esi, dword ptr [rbp - 0x48c], 0x76a700
	nop	
	add	eax, esi
	nop	
	mov	dil, al
	movsx	rdx, dil
	mov	qword ptr [rbp - 0x448], rdx
	test	cl, 1
	nop	
	jne	.label_1921
	nop	
	jmp	.label_1936
.label_3639:
	mov	rbp, rbp
	xor	eax, eax
	mov	rsp, rsp
	mov	cl, al
	test	cl, 1
	jne	.label_1954
	nop	
	jmp	.label_1962
.label_1954:
	xor	eax, eax
	nop	
	mov	cl, al
	nop	
	test	cl, 1
	mov	rsp, rsp
	jne	.label_1965
	mov	rbp, rbp
	jmp	.label_1969
.label_1965:
	lea	rdi, [rdi]
	mov	al, 1
	mov	rbp, rbp
	test	al, 1
	jne	.label_1974
	nop	
	jmp	.label_1980
.label_1974:
	lea	rdi, [rdi]
	imul	eax, dword ptr [rbp - 0x48c], 0x76a700
	mov	cx, ax
	movsx	eax, cx
	cmp	eax, 0
	lea	rdi, [rdi]
	jge	.label_1982
	mov	eax, 0x80000000
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x488]
	mov	rsp, rsp
	mov	dx, cx
	mov	rsp, rsp
	movsx	esi, dx
	lea	rsi, [rsi]
	imul	edi, dword ptr [rbp - 0x48c], 0x76a700
	nop	
	mov	dx, di
	lea	rdi, [rdi]
	movsx	edi, dx
	mov	rbp, rbp
	sub	eax, edi
	lea	rsi, [rsi]
	cmp	esi, eax
	mov	rsp, rsp
	jl	.label_1991
	lea	rdi, [rdi]
	jmp	.label_2005
.label_1982:
	mov	eax, 0x7fffffff
	imul	ecx, dword ptr [rbp - 0x48c], 0x76a700
	mov	dx, cx
	movsx	ecx, dx
	sub	eax, ecx
	mov	rsi, qword ptr [rbp - 0x488]
	mov	dx, si
	mov	rbp, rbp
	movsx	ecx, dx
	cmp	eax, ecx
	nop	
	jl	.label_1991
	mov	rbp, rbp
	jmp	.label_2005
.label_1980:
	mov	rax, qword ptr [rbp - 0x488]
	mov	cx, ax
	mov	rsp, rsp
	movsx	edx, cx
	nop	
	cmp	edx, 0
	lea	rdi, [rdi]
	jge	.label_2024
	lea	rdi, [rdi]
	imul	eax, dword ptr [rbp - 0x48c], 0x76a700
	lea	rsi, [rsi]
	mov	cx, ax
	mov	rsp, rsp
	movsx	eax, cx
	mov	rdx, qword ptr [rbp - 0x488]
	mov	cx, dx
	lea	rsi, [rsi]
	movsx	esi, cx
	mov	rsp, rsp
	imul	edi, dword ptr [rbp - 0x48c], 0x76a700
	mov	cx, di
	mov	rbp, rbp
	movsx	edi, cx
	lea	rsi, [rsi]
	add	esi, edi
	lea	rsi, [rsi]
	cmp	eax, esi
	mov	rbp, rbp
	jle	.label_1991
	jmp	.label_2005
.label_2024:
	lea	rsi, [rsi]
	imul	eax, dword ptr [rbp - 0x48c], 0x76a700
	nop	
	mov	cx, ax
	mov	rsp, rsp
	movsx	eax, cx
	lea	rsi, [rsi]
	cmp	eax, 0
	lea	rdi, [rdi]
	jge	.label_2046
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x488]
	nop	
	mov	cx, ax
	movsx	edx, cx
	mov	rax, qword ptr [rbp - 0x488]
	lea	rsi, [rsi]
	mov	cx, ax
	movsx	esi, cx
	lea	rdi, [rdi]
	imul	edi, dword ptr [rbp - 0x48c], 0x76a700
	mov	cx, di
	mov	rsp, rsp
	movsx	edi, cx
	lea	rdi, [rdi]
	add	esi, edi
	mov	rbp, rbp
	cmp	edx, esi
	jle	.label_1991
	jmp	.label_2005
.label_2046:
	mov	rax, qword ptr [rbp - 0x488]
	nop	
	mov	cx, ax
	movsx	edx, cx
	imul	esi, dword ptr [rbp - 0x48c], 0x76a700
	mov	cx, si
	mov	rsp, rsp
	movsx	esi, cx
	add	edx, esi
	imul	esi, dword ptr [rbp - 0x48c], 0x76a700
	nop	
	mov	cx, si
	mov	rbp, rbp
	movsx	esi, cx
	nop	
	cmp	edx, esi
	mov	rsp, rsp
	jl	.label_1991
.label_2005:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x488]
	mov	cx, ax
	movsx	edx, cx
	imul	esi, dword ptr [rbp - 0x48c], 0x76a700
	mov	cx, si
	lea	rdi, [rdi]
	movsx	esi, cx
	add	edx, esi
	nop	
	cmp	edx, 0xffff8000
	jl	.label_1991
	mov	eax, 0x7fff
	mov	rcx, qword ptr [rbp - 0x488]
	nop	
	mov	dx, cx
	lea	rsi, [rsi]
	movsx	esi, dx
	nop	
	imul	edi, dword ptr [rbp - 0x48c], 0x76a700
	mov	dx, di
	movsx	edi, dx
	add	esi, edi
	cmp	eax, esi
	jge	.label_2107
.label_1991:
	mov	al, 1
	mov	rcx, qword ptr [rbp - 0x488]
	mov	rsp, rsp
	mov	dx, cx
	mov	rbp, rbp
	movsx	esi, dx
	imul	edi, dword ptr [rbp - 0x48c], 0x76a700
	lea	rsi, [rsi]
	mov	dx, di
	lea	rdi, [rdi]
	movsx	edi, dx
	mov	rbp, rbp
	add	esi, edi
	lea	rsi, [rsi]
	mov	dx, si
	lea	rdi, [rdi]
	movsx	rcx, dx
	mov	qword ptr [rbp - 0x448], rcx
	test	al, 1
	jne	.label_1921
	mov	rsp, rsp
	jmp	.label_1936
.label_2107:
	xor	eax, eax
	mov	cl, al
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x488]
	mov	rsp, rsp
	mov	si, dx
	movsx	eax, si
	mov	rsp, rsp
	imul	edi, dword ptr [rbp - 0x48c], 0x76a700
	lea	rsi, [rsi]
	mov	si, di
	lea	rdi, [rdi]
	movsx	edi, si
	add	eax, edi
	lea	rdi, [rdi]
	mov	si, ax
	movsx	rdx, si
	mov	qword ptr [rbp - 0x448], rdx
	test	cl, 1
	lea	rsi, [rsi]
	jne	.label_1921
	jmp	.label_1936
.label_1969:
	nop	
	mov	al, 1
	test	al, 1
	jne	.label_2154
	jmp	.label_2160
.label_2154:
	imul	eax, dword ptr [rbp - 0x48c], 0x76a700
	cmp	eax, 0
	jge	.label_2162
	movabs	rax, 0x8000000000000000
	mov	rcx, qword ptr [rbp - 0x488]
	imul	edx, dword ptr [rbp - 0x48c], 0x76a700
	mov	rsp, rsp
	movsxd	rsi, edx
	nop	
	sub	rax, rsi
	cmp	rcx, rax
	jl	.label_2170
	mov	rbp, rbp
	jmp	.label_2187
.label_2162:
	movabs	rax, 0x7fffffffffffffff
	lea	rdi, [rdi]
	imul	ecx, dword ptr [rbp - 0x48c], 0x76a700
	mov	rsp, rsp
	movsxd	rdx, ecx
	sub	rax, rdx
	cmp	rax, qword ptr [rbp - 0x488]
	mov	rsp, rsp
	jl	.label_2170
	mov	rsp, rsp
	jmp	.label_2187
.label_2160:
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x488], 0
	jge	.label_2208
	nop	
	imul	eax, dword ptr [rbp - 0x48c], 0x76a700
	movsxd	rcx, eax
	mov	rdx, qword ptr [rbp - 0x488]
	lea	rsi, [rsi]
	imul	eax, dword ptr [rbp - 0x48c], 0x76a700
	lea	rsi, [rsi]
	movsxd	rsi, eax
	add	rdx, rsi
	lea	rsi, [rsi]
	cmp	rcx, rdx
	jle	.label_2170
	lea	rdi, [rdi]
	jmp	.label_2187
.label_2208:
	imul	eax, dword ptr [rbp - 0x48c], 0x76a700
	mov	rbp, rbp
	cmp	eax, 0
	lea	rsi, [rsi]
	jge	.label_2230
	mov	rax, qword ptr [rbp - 0x488]
	mov	rcx, qword ptr [rbp - 0x488]
	imul	edx, dword ptr [rbp - 0x48c], 0x76a700
	lea	rsi, [rsi]
	movsxd	rsi, edx
	nop	
	add	rcx, rsi
	mov	rbp, rbp
	cmp	rax, rcx
	jle	.label_2170
	nop	
	jmp	.label_2187
.label_2230:
	mov	rax, qword ptr [rbp - 0x488]
	mov	rbp, rbp
	imul	ecx, dword ptr [rbp - 0x48c], 0x76a700
	movsxd	rdx, ecx
	mov	rbp, rbp
	add	rax, rdx
	imul	ecx, dword ptr [rbp - 0x48c], 0x76a700
	movsxd	rdx, ecx
	cmp	rax, rdx
	lea	rsi, [rsi]
	jl	.label_2170
.label_2187:
	mov	rax, qword ptr [rbp - 0x488]
	nop	
	imul	ecx, dword ptr [rbp - 0x48c], 0x76a700
	nop	
	movsxd	rdx, ecx
	add	rax, rdx
	cmp	rax, -0x8000
	jl	.label_2170
	mov	rbp, rbp
	mov	eax, 0x7fff
	mov	rsp, rsp
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x488]
	imul	eax, dword ptr [rbp - 0x48c], 0x76a700
	movsxd	rsi, eax
	mov	rsp, rsp
	add	rdx, rsi
	cmp	rcx, rdx
	lea	rsi, [rsi]
	jge	.label_2275
.label_2170:
	mov	al, 1
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x488]
	mov	rbp, rbp
	mov	edx, ecx
	lea	rdi, [rdi]
	imul	esi, dword ptr [rbp - 0x48c], 0x76a700
	mov	rsp, rsp
	add	edx, esi
	mov	rbp, rbp
	mov	di, dx
	movsx	rcx, di
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x448], rcx
	mov	rsp, rsp
	test	al, 1
	nop	
	jne	.label_1921
	lea	rdi, [rdi]
	jmp	.label_1936
.label_2275:
	mov	rbp, rbp
	xor	eax, eax
	mov	rbp, rbp
	mov	cl, al
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x488]
	mov	eax, edx
	imul	esi, dword ptr [rbp - 0x48c], 0x76a700
	lea	rdi, [rdi]
	add	eax, esi
	lea	rdi, [rdi]
	mov	di, ax
	lea	rsi, [rsi]
	movsx	rdx, di
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x448], rdx
	test	cl, 1
	lea	rsi, [rsi]
	jne	.label_1921
	jmp	.label_1936
.label_1962:
	nop	
	xor	eax, eax
	nop	
	mov	cl, al
	mov	rbp, rbp
	test	cl, 1
	lea	rsi, [rsi]
	jne	.label_2319
	jmp	.label_2323
.label_2319:
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_2324
	jmp	.label_2329
.label_2324:
	mov	rsp, rsp
	mov	al, 1
	lea	rsi, [rsi]
	test	al, 1
	lea	rsi, [rsi]
	jne	.label_2331
	jmp	.label_2337
.label_2331:
	imul	eax, dword ptr [rbp - 0x48c], 0x76a700
	cmp	eax, 0
	nop	
	jge	.label_2340
	nop	
	mov	eax, 0x80000000
	nop	
	mov	rcx, qword ptr [rbp - 0x488]
	lea	rsi, [rsi]
	mov	edx, ecx
	mov	rsp, rsp
	imul	esi, dword ptr [rbp - 0x48c], 0x76a700
	sub	eax, esi
	nop	
	cmp	edx, eax
	mov	rbp, rbp
	jl	.label_2349
	nop	
	jmp	.label_2363
.label_2340:
	lea	rsi, [rsi]
	mov	eax, 0x7fffffff
	nop	
	imul	ecx, dword ptr [rbp - 0x48c], 0x76a700
	sub	eax, ecx
	mov	rdx, qword ptr [rbp - 0x488]
	nop	
	mov	ecx, edx
	cmp	eax, ecx
	mov	rbp, rbp
	jl	.label_2349
	jmp	.label_2363
.label_2337:
	mov	rax, qword ptr [rbp - 0x488]
	mov	rbp, rbp
	mov	ecx, eax
	cmp	ecx, 0
	jge	.label_2383
	nop	
	imul	eax, dword ptr [rbp - 0x48c], 0x76a700
	mov	rcx, qword ptr [rbp - 0x488]
	mov	edx, ecx
	nop	
	imul	esi, dword ptr [rbp - 0x48c], 0x76a700
	add	edx, esi
	cmp	eax, edx
	jle	.label_2349
	lea	rsi, [rsi]
	jmp	.label_2363
.label_2383:
	imul	eax, dword ptr [rbp - 0x48c], 0x76a700
	cmp	eax, 0
	jge	.label_2398
	mov	rax, qword ptr [rbp - 0x488]
	mov	ecx, eax
	mov	rax, qword ptr [rbp - 0x488]
	mov	rbp, rbp
	mov	edx, eax
	imul	esi, dword ptr [rbp - 0x48c], 0x76a700
	add	edx, esi
	cmp	ecx, edx
	jle	.label_2349
	jmp	.label_2363
.label_2398:
	nop	
	mov	rax, qword ptr [rbp - 0x488]
	mov	rbp, rbp
	mov	ecx, eax
	mov	rbp, rbp
	imul	edx, dword ptr [rbp - 0x48c], 0x76a700
	lea	rdi, [rdi]
	add	ecx, edx
	imul	edx, dword ptr [rbp - 0x48c], 0x76a700
	cmp	ecx, edx
	lea	rdi, [rdi]
	jl	.label_2349
.label_2363:
	mov	rax, qword ptr [rbp - 0x488]
	mov	rbp, rbp
	mov	ecx, eax
	imul	edx, dword ptr [rbp - 0x48c], 0x76a700
	add	ecx, edx
	cmp	ecx, 0x80000000
	jl	.label_2349
	mov	eax, 0x7fffffff
	mov	rcx, qword ptr [rbp - 0x488]
	lea	rsi, [rsi]
	mov	edx, ecx
	nop	
	imul	esi, dword ptr [rbp - 0x48c], 0x76a700
	add	edx, esi
	lea	rsi, [rsi]
	cmp	eax, edx
	jge	.label_2433
.label_2349:
	mov	al, 1
	mov	rcx, qword ptr [rbp - 0x488]
	mov	edx, ecx
	imul	esi, dword ptr [rbp - 0x48c], 0x76a700
	add	edx, esi
	nop	
	movsxd	rcx, edx
	mov	qword ptr [rbp - 0x448], rcx
	mov	rbp, rbp
	test	al, 1
	jne	.label_1921
	mov	rbp, rbp
	jmp	.label_1936
.label_2433:
	lea	rdi, [rdi]
	xor	eax, eax
	lea	rdi, [rdi]
	mov	cl, al
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x488]
	mov	eax, edx
	lea	rdi, [rdi]
	imul	esi, dword ptr [rbp - 0x48c], 0x76a700
	mov	rbp, rbp
	add	eax, esi
	lea	rdi, [rdi]
	movsxd	rdx, eax
	mov	qword ptr [rbp - 0x448], rdx
	lea	rsi, [rsi]
	test	cl, 1
	jne	.label_1921
	jmp	.label_1936
.label_2329:
	mov	al, 1
	mov	rsp, rsp
	test	al, 1
	mov	rbp, rbp
	jne	.label_2480
	nop	
	jmp	.label_2487
.label_2480:
	mov	rsp, rsp
	imul	eax, dword ptr [rbp - 0x48c], 0x76a700
	mov	rbp, rbp
	cmp	eax, 0
	mov	rsp, rsp
	jge	.label_3163
	lea	rdi, [rdi]
	movabs	rax, 0x8000000000000000
	mov	rcx, qword ptr [rbp - 0x488]
	mov	rbp, rbp
	imul	edx, dword ptr [rbp - 0x48c], 0x76a700
	movsxd	rsi, edx
	nop	
	sub	rax, rsi
	cmp	rcx, rax
	jl	.label_2500
	nop	
	jmp	.label_2514
.label_3163:
	mov	rsp, rsp
	movabs	rax, 0x7fffffffffffffff
	imul	ecx, dword ptr [rbp - 0x48c], 0x76a700
	mov	rbp, rbp
	movsxd	rdx, ecx
	sub	rax, rdx
	cmp	rax, qword ptr [rbp - 0x488]
	nop	
	jl	.label_2500
	mov	rsp, rsp
	jmp	.label_2514
.label_2487:
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x488], 0
	jge	.label_3367
	nop	
	imul	eax, dword ptr [rbp - 0x48c], 0x76a700
	movsxd	rcx, eax
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x488]
	mov	rsp, rsp
	imul	eax, dword ptr [rbp - 0x48c], 0x76a700
	nop	
	movsxd	rsi, eax
	mov	rbp, rbp
	add	rdx, rsi
	cmp	rcx, rdx
	jle	.label_2500
	jmp	.label_2514
.label_3367:
	lea	rsi, [rsi]
	imul	eax, dword ptr [rbp - 0x48c], 0x76a700
	nop	
	cmp	eax, 0
	jge	.label_2548
	mov	rax, qword ptr [rbp - 0x488]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x488]
	lea	rsi, [rsi]
	imul	edx, dword ptr [rbp - 0x48c], 0x76a700
	movsxd	rsi, edx
	mov	rsp, rsp
	add	rcx, rsi
	cmp	rax, rcx
	jle	.label_2500
	lea	rdi, [rdi]
	jmp	.label_2514
.label_2548:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x488]
	lea	rdi, [rdi]
	imul	ecx, dword ptr [rbp - 0x48c], 0x76a700
	lea	rsi, [rsi]
	movsxd	rdx, ecx
	nop	
	add	rax, rdx
	lea	rdi, [rdi]
	imul	ecx, dword ptr [rbp - 0x48c], 0x76a700
	movsxd	rdx, ecx
	cmp	rax, rdx
	lea	rsi, [rsi]
	jl	.label_2500
.label_2514:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x488]
	lea	rsi, [rsi]
	imul	ecx, dword ptr [rbp - 0x48c], 0x76a700
	lea	rsi, [rsi]
	movsxd	rdx, ecx
	add	rax, rdx
	cmp	rax, -0x80000000
	lea	rsi, [rsi]
	jl	.label_2500
	lea	rdi, [rdi]
	mov	eax, 0x7fffffff
	mov	ecx, eax
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x488]
	mov	rbp, rbp
	imul	eax, dword ptr [rbp - 0x48c], 0x76a700
	lea	rsi, [rsi]
	movsxd	rsi, eax
	add	rdx, rsi
	cmp	rcx, rdx
	jge	.label_2591
.label_2500:
	lea	rsi, [rsi]
	mov	al, 1
	mov	rcx, qword ptr [rbp - 0x488]
	lea	rsi, [rsi]
	mov	edx, ecx
	imul	esi, dword ptr [rbp - 0x48c], 0x76a700
	mov	rsp, rsp
	add	edx, esi
	nop	
	movsxd	rcx, edx
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x448], rcx
	mov	rbp, rbp
	test	al, 1
	mov	rsp, rsp
	jne	.label_1921
	mov	rsp, rsp
	jmp	.label_1936
.label_2591:
	xor	eax, eax
	mov	cl, al
	nop	
	mov	rdx, qword ptr [rbp - 0x488]
	mov	eax, edx
	lea	rdi, [rdi]
	imul	esi, dword ptr [rbp - 0x48c], 0x76a700
	add	eax, esi
	mov	rsp, rsp
	movsxd	rdx, eax
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x448], rdx
	lea	rdi, [rdi]
	test	cl, 1
	lea	rdi, [rdi]
	jne	.label_1921
	jmp	.label_1936
.label_2323:
	mov	al, 1
	test	al, 1
	lea	rsi, [rsi]
	jne	.label_2640
	lea	rdi, [rdi]
	jmp	.label_2018
.label_2640:
	lea	rsi, [rsi]
	xor	eax, eax
	mov	cl, al
	nop	
	test	cl, 1
	jne	.label_2643
	jmp	.label_2049
.label_2643:
	mov	al, 1
	test	al, 1
	jne	.label_2055
	jmp	.label_2068
.label_2055:
	mov	rsp, rsp
	imul	eax, dword ptr [rbp - 0x48c], 0x76a700
	movsxd	rcx, eax
	mov	rsp, rsp
	cmp	rcx, 0
	mov	rsp, rsp
	jge	.label_2655
	movabs	rax, 0x8000000000000000
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x488]
	mov	rbp, rbp
	imul	edx, dword ptr [rbp - 0x48c], 0x76a700
	mov	rbp, rbp
	movsxd	rsi, edx
	sub	rax, rsi
	lea	rsi, [rsi]
	cmp	rcx, rax
	nop	
	jl	.label_2338
	nop	
	jmp	.label_2672
.label_2655:
	movabs	rax, 0x7fffffffffffffff
	imul	ecx, dword ptr [rbp - 0x48c], 0x76a700
	movsxd	rdx, ecx
	lea	rdi, [rdi]
	sub	rax, rdx
	mov	rsp, rsp
	cmp	rax, qword ptr [rbp - 0x488]
	mov	rbp, rbp
	jl	.label_2338
	jmp	.label_2672
.label_2068:
	cmp	qword ptr [rbp - 0x488], 0
	mov	rbp, rbp
	jge	.label_2687
	imul	eax, dword ptr [rbp - 0x48c], 0x76a700
	lea	rsi, [rsi]
	movsxd	rcx, eax
	mov	rdx, qword ptr [rbp - 0x488]
	mov	rbp, rbp
	imul	eax, dword ptr [rbp - 0x48c], 0x76a700
	movsxd	rsi, eax
	add	rdx, rsi
	cmp	rcx, rdx
	jle	.label_2338
	jmp	.label_2672
.label_2687:
	imul	eax, dword ptr [rbp - 0x48c], 0x76a700
	mov	rsp, rsp
	movsxd	rcx, eax
	cmp	rcx, 0
	jge	.label_2430
	nop	
	mov	rax, qword ptr [rbp - 0x488]
	mov	rcx, qword ptr [rbp - 0x488]
	lea	rdi, [rdi]
	imul	edx, dword ptr [rbp - 0x48c], 0x76a700
	movsxd	rsi, edx
	add	rcx, rsi
	cmp	rax, rcx
	jle	.label_2338
	lea	rdi, [rdi]
	jmp	.label_2672
.label_2430:
	mov	rax, qword ptr [rbp - 0x488]
	imul	ecx, dword ptr [rbp - 0x48c], 0x76a700
	movsxd	rdx, ecx
	mov	rbp, rbp
	add	rax, rdx
	imul	ecx, dword ptr [rbp - 0x48c], 0x76a700
	lea	rdi, [rdi]
	movsxd	rdx, ecx
	lea	rdi, [rdi]
	cmp	rax, rdx
	lea	rdi, [rdi]
	jl	.label_2338
.label_2672:
	mov	rbp, rbp
	movabs	rax, 0x8000000000000000
	mov	rcx, qword ptr [rbp - 0x488]
	imul	edx, dword ptr [rbp - 0x48c], 0x76a700
	movsxd	rsi, edx
	add	rcx, rsi
	mov	rbp, rbp
	cmp	rcx, rax
	mov	rbp, rbp
	jl	.label_2338
	movabs	rax, 0x7fffffffffffffff
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x488]
	imul	edx, dword ptr [rbp - 0x48c], 0x76a700
	lea	rsi, [rsi]
	movsxd	rsi, edx
	add	rcx, rsi
	cmp	rax, rcx
	lea	rdi, [rdi]
	jge	.label_2747
.label_2338:
	mov	rsp, rsp
	mov	al, 1
	mov	rcx, qword ptr [rbp - 0x488]
	imul	edx, dword ptr [rbp - 0x48c], 0x76a700
	movsxd	rsi, edx
	mov	rsp, rsp
	add	rcx, rsi
	mov	qword ptr [rbp - 0x448], rcx
	mov	rbp, rbp
	test	al, 1
	jne	.label_1921
	nop	
	jmp	.label_1936
.label_2747:
	mov	rsp, rsp
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x488]
	lea	rsi, [rsi]
	imul	eax, dword ptr [rbp - 0x48c], 0x76a700
	movsxd	rsi, eax
	mov	rsp, rsp
	add	rdx, rsi
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x448], rdx
	lea	rsi, [rsi]
	test	cl, 1
	mov	rbp, rbp
	jne	.label_1921
	jmp	.label_1936
.label_2049:
	mov	rbp, rbp
	mov	al, 1
	nop	
	test	al, 1
	jne	.label_3122
	lea	rsi, [rsi]
	jmp	.label_2789
.label_3122:
	imul	eax, dword ptr [rbp - 0x48c], 0x76a700
	cmp	eax, 0
	mov	rbp, rbp
	jge	.label_2791
	lea	rsi, [rsi]
	movabs	rax, 0x8000000000000000
	mov	rcx, qword ptr [rbp - 0x488]
	imul	edx, dword ptr [rbp - 0x48c], 0x76a700
	movsxd	rsi, edx
	sub	rax, rsi
	cmp	rcx, rax
	nop	
	jl	.label_2794
	lea	rdi, [rdi]
	jmp	.label_2646
.label_2791:
	nop	
	movabs	rax, 0x7fffffffffffffff
	mov	rbp, rbp
	imul	ecx, dword ptr [rbp - 0x48c], 0x76a700
	movsxd	rdx, ecx
	sub	rax, rdx
	cmp	rax, qword ptr [rbp - 0x488]
	lea	rsi, [rsi]
	jl	.label_2794
	jmp	.label_2646
.label_2789:
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x488], 0
	jge	.label_2812
	nop	
	imul	eax, dword ptr [rbp - 0x48c], 0x76a700
	mov	rbp, rbp
	movsxd	rcx, eax
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x488]
	lea	rdi, [rdi]
	imul	eax, dword ptr [rbp - 0x48c], 0x76a700
	movsxd	rsi, eax
	add	rdx, rsi
	nop	
	cmp	rcx, rdx
	jle	.label_2794
	lea	rsi, [rsi]
	jmp	.label_2646
.label_2812:
	imul	eax, dword ptr [rbp - 0x48c], 0x76a700
	cmp	eax, 0
	jge	.label_2833
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x488]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x488]
	imul	edx, dword ptr [rbp - 0x48c], 0x76a700
	mov	rbp, rbp
	movsxd	rsi, edx
	mov	rsp, rsp
	add	rcx, rsi
	cmp	rax, rcx
	jle	.label_2794
	lea	rsi, [rsi]
	jmp	.label_2646
.label_2833:
	mov	rax, qword ptr [rbp - 0x488]
	mov	rsp, rsp
	imul	ecx, dword ptr [rbp - 0x48c], 0x76a700
	lea	rdi, [rdi]
	movsxd	rdx, ecx
	add	rax, rdx
	mov	rbp, rbp
	imul	ecx, dword ptr [rbp - 0x48c], 0x76a700
	movsxd	rdx, ecx
	lea	rdi, [rdi]
	cmp	rax, rdx
	jl	.label_2794
.label_2646:
	lea	rsi, [rsi]
	movabs	rax, 0x8000000000000000
	nop	
	mov	rcx, qword ptr [rbp - 0x488]
	imul	edx, dword ptr [rbp - 0x48c], 0x76a700
	lea	rdi, [rdi]
	movsxd	rsi, edx
	lea	rsi, [rsi]
	add	rcx, rsi
	cmp	rcx, rax
	nop	
	jl	.label_2794
	movabs	rax, 0x7fffffffffffffff
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x488]
	imul	edx, dword ptr [rbp - 0x48c], 0x76a700
	mov	rsp, rsp
	movsxd	rsi, edx
	lea	rdi, [rdi]
	add	rcx, rsi
	cmp	rax, rcx
	lea	rsi, [rsi]
	jge	.label_2884
.label_2794:
	lea	rsi, [rsi]
	mov	al, 1
	mov	rcx, qword ptr [rbp - 0x488]
	imul	edx, dword ptr [rbp - 0x48c], 0x76a700
	movsxd	rsi, edx
	add	rcx, rsi
	mov	qword ptr [rbp - 0x448], rcx
	mov	rsp, rsp
	test	al, 1
	mov	rsp, rsp
	jne	.label_1921
	jmp	.label_1936
.label_2884:
	mov	rsp, rsp
	xor	eax, eax
	mov	rbp, rbp
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x488]
	lea	rdi, [rdi]
	imul	eax, dword ptr [rbp - 0x48c], 0x76a700
	mov	rsp, rsp
	movsxd	rsi, eax
	mov	rbp, rbp
	add	rdx, rsi
	mov	qword ptr [rbp - 0x448], rdx
	lea	rsi, [rsi]
	test	cl, 1
	lea	rdi, [rdi]
	jne	.label_1921
	jmp	.label_1936
.label_2018:
	mov	rsp, rsp
	xor	eax, eax
	mov	cl, al
	mov	rsp, rsp
	test	cl, 1
	nop	
	jne	.label_2930
	jmp	.label_2936
.label_2930:
	mov	rsp, rsp
	mov	al, 1
	test	al, 1
	jne	.label_2937
	jmp	.label_2628
.label_2937:
	lea	rdi, [rdi]
	imul	eax, dword ptr [rbp - 0x48c], 0x76a700
	movsxd	rcx, eax
	cmp	rcx, 0
	mov	rbp, rbp
	jge	.label_2665
	movabs	rax, 0x8000000000000000
	mov	rcx, qword ptr [rbp - 0x488]
	mov	rbp, rbp
	imul	edx, dword ptr [rbp - 0x48c], 0x76a700
	mov	rbp, rbp
	movsxd	rsi, edx
	lea	rdi, [rdi]
	sub	rax, rsi
	mov	rbp, rbp
	cmp	rcx, rax
	nop	
	jl	.label_2860
	jmp	.label_2960
.label_2665:
	movabs	rax, 0x7fffffffffffffff
	nop	
	imul	ecx, dword ptr [rbp - 0x48c], 0x76a700
	movsxd	rdx, ecx
	lea	rdi, [rdi]
	sub	rax, rdx
	cmp	rax, qword ptr [rbp - 0x488]
	jl	.label_2860
	jmp	.label_2960
.label_2628:
	nop	
	cmp	qword ptr [rbp - 0x488], 0
	jge	.label_2978
	imul	eax, dword ptr [rbp - 0x48c], 0x76a700
	movsxd	rcx, eax
	mov	rdx, qword ptr [rbp - 0x488]
	imul	eax, dword ptr [rbp - 0x48c], 0x76a700
	movsxd	rsi, eax
	lea	rsi, [rsi]
	add	rdx, rsi
	cmp	rcx, rdx
	nop	
	jle	.label_2860
	jmp	.label_2960
.label_2978:
	imul	eax, dword ptr [rbp - 0x48c], 0x76a700
	nop	
	movsxd	rcx, eax
	cmp	rcx, 0
	mov	rbp, rbp
	jge	.label_3002
	mov	rax, qword ptr [rbp - 0x488]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x488]
	nop	
	imul	edx, dword ptr [rbp - 0x48c], 0x76a700
	nop	
	movsxd	rsi, edx
	add	rcx, rsi
	lea	rdi, [rdi]
	cmp	rax, rcx
	jle	.label_2860
	mov	rsp, rsp
	jmp	.label_2960
.label_3002:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x488]
	mov	rsp, rsp
	imul	ecx, dword ptr [rbp - 0x48c], 0x76a700
	movsxd	rdx, ecx
	add	rax, rdx
	mov	rsp, rsp
	imul	ecx, dword ptr [rbp - 0x48c], 0x76a700
	movsxd	rdx, ecx
	lea	rdi, [rdi]
	cmp	rax, rdx
	mov	rsp, rsp
	jl	.label_2860
.label_2960:
	movabs	rax, 0x8000000000000000
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x488]
	lea	rsi, [rsi]
	imul	edx, dword ptr [rbp - 0x48c], 0x76a700
	lea	rdi, [rdi]
	movsxd	rsi, edx
	add	rcx, rsi
	mov	rbp, rbp
	cmp	rcx, rax
	jl	.label_2860
	movabs	rax, 0x7fffffffffffffff
	mov	rcx, qword ptr [rbp - 0x488]
	imul	edx, dword ptr [rbp - 0x48c], 0x76a700
	movsxd	rsi, edx
	add	rcx, rsi
	cmp	rax, rcx
	mov	rbp, rbp
	jge	.label_3045
.label_2860:
	mov	al, 1
	mov	rcx, qword ptr [rbp - 0x488]
	imul	edx, dword ptr [rbp - 0x48c], 0x76a700
	movsxd	rsi, edx
	add	rcx, rsi
	mov	qword ptr [rbp - 0x448], rcx
	lea	rsi, [rsi]
	test	al, 1
	jne	.label_1921
	nop	
	jmp	.label_1936
.label_3045:
	xor	eax, eax
	mov	rbp, rbp
	mov	cl, al
	nop	
	mov	rdx, qword ptr [rbp - 0x488]
	lea	rdi, [rdi]
	imul	eax, dword ptr [rbp - 0x48c], 0x76a700
	lea	rsi, [rsi]
	movsxd	rsi, eax
	mov	rbp, rbp
	add	rdx, rsi
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x448], rdx
	lea	rdi, [rdi]
	test	cl, 1
	mov	rbp, rbp
	jne	.label_1921
	nop	
	jmp	.label_1936
.label_2936:
	mov	al, 1
	test	al, 1
	mov	rsp, rsp
	jne	.label_3075
	mov	rsp, rsp
	jmp	.label_3080
.label_3075:
	nop	
	imul	eax, dword ptr [rbp - 0x48c], 0x76a700
	mov	rbp, rbp
	cmp	eax, 0
	mov	rbp, rbp
	jge	.label_3083
	movabs	rax, 0x8000000000000000
	mov	rcx, qword ptr [rbp - 0x488]
	mov	rbp, rbp
	imul	edx, dword ptr [rbp - 0x48c], 0x76a700
	mov	rsp, rsp
	movsxd	rsi, edx
	sub	rax, rsi
	mov	rbp, rbp
	cmp	rcx, rax
	jl	.label_3092
	jmp	.label_3056
.label_3083:
	mov	rsp, rsp
	movabs	rax, 0x7fffffffffffffff
	mov	rbp, rbp
	imul	ecx, dword ptr [rbp - 0x48c], 0x76a700
	movsxd	rdx, ecx
	sub	rax, rdx
	cmp	rax, qword ptr [rbp - 0x488]
	jl	.label_3092
	jmp	.label_3056
.label_3080:
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x488], 0
	jge	.label_3116
	imul	eax, dword ptr [rbp - 0x48c], 0x76a700
	movsxd	rcx, eax
	mov	rdx, qword ptr [rbp - 0x488]
	mov	rsp, rsp
	imul	eax, dword ptr [rbp - 0x48c], 0x76a700
	lea	rdi, [rdi]
	movsxd	rsi, eax
	add	rdx, rsi
	cmp	rcx, rdx
	lea	rsi, [rsi]
	jle	.label_3092
	jmp	.label_3056
.label_3116:
	imul	eax, dword ptr [rbp - 0x48c], 0x76a700
	cmp	eax, 0
	jge	.label_3061
	mov	rax, qword ptr [rbp - 0x488]
	mov	rcx, qword ptr [rbp - 0x488]
	mov	rbp, rbp
	imul	edx, dword ptr [rbp - 0x48c], 0x76a700
	mov	rbp, rbp
	movsxd	rsi, edx
	add	rcx, rsi
	lea	rsi, [rsi]
	cmp	rax, rcx
	jle	.label_3092
	jmp	.label_3056
.label_3061:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x488]
	imul	ecx, dword ptr [rbp - 0x48c], 0x76a700
	lea	rsi, [rsi]
	movsxd	rdx, ecx
	add	rax, rdx
	imul	ecx, dword ptr [rbp - 0x48c], 0x76a700
	movsxd	rdx, ecx
	lea	rsi, [rsi]
	cmp	rax, rdx
	nop	
	jl	.label_3092
.label_3056:
	movabs	rax, 0x8000000000000000
	mov	rcx, qword ptr [rbp - 0x488]
	imul	edx, dword ptr [rbp - 0x48c], 0x76a700
	nop	
	movsxd	rsi, edx
	nop	
	add	rcx, rsi
	cmp	rcx, rax
	jl	.label_3092
	nop	
	movabs	rax, 0x7fffffffffffffff
	mov	rcx, qword ptr [rbp - 0x488]
	mov	rsp, rsp
	imul	edx, dword ptr [rbp - 0x48c], 0x76a700
	movsxd	rsi, edx
	add	rcx, rsi
	mov	rsp, rsp
	cmp	rax, rcx
	lea	rdi, [rdi]
	jge	.label_3166
.label_3092:
	mov	al, 1
	nop	
	mov	rcx, qword ptr [rbp - 0x488]
	imul	edx, dword ptr [rbp - 0x48c], 0x76a700
	movsxd	rsi, edx
	add	rcx, rsi
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x448], rcx
	nop	
	test	al, 1
	lea	rdi, [rdi]
	jne	.label_1921
	jmp	.label_1936
.label_3166:
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x488]
	imul	eax, dword ptr [rbp - 0x48c], 0x76a700
	movsxd	rsi, eax
	nop	
	add	rdx, rsi
	mov	qword ptr [rbp - 0x448], rdx
	test	cl, 1
	jne	.label_1921
.label_1936:
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x448]
	call	time_overflow
	test	al, 1
	mov	rsp, rsp
	jne	.label_1921
	lea	rdi, [rdi]
	jmp	.label_3221
.label_1921:
	mov	rbp, rbp
	jmp	.label_3224
.label_3221:
	lea	rsi, [rsi]
	lea	rsi, [rbp - 0x7c8]
	mov	rsp, rsp
	lea	rdx, [rbp - 0x5e8]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x448]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x7c8], rax
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x228]
	call	localtime_rz
	cmp	rax, 0
	je	.label_3239
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x5b8], 0
	mov	rbp, rbp
	je	.label_3239
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x5c8]
	lea	rdi, [rdi]
	cmp	eax, dword ptr [rbp - 0x8c]
	je	.label_3239
	mov	rax, qword ptr [rbp - 0x5b8]
	mov	qword ptr [rbp - 0x88], rax
	mov	dword ptr [rbp - 0x80], 0x10d
	mov	ecx, dword ptr [rbp - 0x5c8]
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x7c], ecx
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x78], 0
	jmp	.label_3224
.label_3239:
	lea	rdi, [rdi]
	jmp	.label_3262
.label_3262:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x48c]
	add	eax, 1
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x48c], eax
	lea	rsi, [rsi]
	jmp	.label_3774
.label_3224:
	cmp	qword ptr [rbp - 0x98], 0
	je	.label_3266
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x88], 0
	je	.label_3266
	mov	rdi, qword ptr [rbp - 0x98]
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x88]
	lea	rsi, [rsi]
	call	strcmp
	lea	rdi, [rdi]
	cmp	eax, 0
	mov	rbp, rbp
	jne	.label_3266
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x8c], 0xffffffff
	mov	qword ptr [rbp - 0x88], 0
.label_3266:
	nop	
	lea	rdi, [rbp - 0x180]
	call	yyparse
	lea	rdi, [rdi]
	cmp	eax, 0
	lea	rdi, [rdi]
	je	.label_3283
	mov	rbp, rbp
	test	byte ptr [rbp - 0xa7], 1
	je	.label_3287
	mov	rax, qword ptr [rbp - 0xbc8]
	mov	rbp, rbp
	cmp	rax, qword ptr [rbp - 0x180]
	mov	rbp, rbp
	ja	.label_3289
	nop	
	movabs	rdi, OFFSET FLAT:.str.22_0
	nop	
	call	gettext
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x68], rax
	jmp	.label_2109
.label_3289:
	movabs	rdi, OFFSET FLAT:.str.23_0
	lea	rdi, [rdi]
	call	gettext
	nop	
	mov	qword ptr [rbp - 0x68], rax
.label_2109:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x68]
	nop	
	mov	rsi, qword ptr [rbp - 0x180]
	mov	rdi, rax
	mov	rbp, rbp
	mov	al, 0
	mov	rbp, rbp
	call	dbg_printf
.label_3287:
	lea	rsi, [rsi]
	jmp	.label_1907
.label_3283:
	mov	rbp, rbp
	test	byte ptr [rbp - 0xa7], 1
	nop	
	je	.label_2233
	movabs	rdi, OFFSET FLAT:.str.24_0
	call	gettext
	mov	rdi, rax
	mov	rsp, rsp
	mov	al, 0
	mov	rsp, rsp
	call	dbg_printf
	lea	rsi, [rsi]
	test	byte ptr [rbp - 0xe0], 1
	je	.label_3336
	movabs	rdi, OFFSET FLAT:.str.25_0
	mov	rax,  qword ptr [word ptr [stderr]]
	mov	qword ptr [rbp - 0x6a0], rax
	call	gettext
	nop	
	mov	rdi, qword ptr [rbp - 0x6a0]
	mov	rsi, rax
	mov	al, 0
	lea	rsi, [rsi]
	call	fprintf
	nop	
	mov	dword ptr [rbp - 4], eax
	jmp	.label_3357
.label_3336:
	cmp	qword ptr [rbp - 0xb0], 0
	je	.label_3359
	lea	rsi, [rsi]
	movabs	rdi, OFFSET FLAT:.str.26_0
	mov	rsp, rsp
	mov	rax,  qword ptr [word ptr [stderr]]
	mov	qword ptr [rbp - 0xa08], rax
	mov	rbp, rbp
	call	gettext
	mov	rdi, qword ptr [rbp - 0xa08]
	nop	
	mov	rsi, rax
	mov	rsp, rsp
	mov	al, 0
	call	fprintf
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x714], eax
	jmp	.label_3372
.label_3359:
	cmp	qword ptr [rbp - 0x7a8], 0
	je	.label_3374
	mov	rax, qword ptr [rbp - 0x228]
	mov	rbp, rbp
	cmp	rax, qword ptr [rbp - 0x808]
	je	.label_3379
	mov	rbp, rbp
	movabs	rdi, OFFSET FLAT:.str.27_0
	mov	rax,  qword ptr [word ptr [stderr]]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0xa18], rax
	call	gettext
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x7a8]
	mov	rdi, qword ptr [rbp - 0xa18]
	mov	rsi, rax
	mov	al, 0
	nop	
	call	fprintf
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x514], eax
	mov	rsp, rsp
	jmp	.label_3388
.label_3379:
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x7a8]
	mov	rsp, rsp
	mov	eax, OFFSET FLAT:.str.28
	mov	esi, eax
	call	strcmp
	lea	rsi, [rsi]
	cmp	eax, 0
	lea	rsi, [rsi]
	jne	.label_3396
	movabs	rdi, OFFSET FLAT:.str.29
	mov	rax,  qword ptr [word ptr [stderr]]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x328], rax
	mov	rbp, rbp
	call	gettext
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x328]
	mov	rsi, rax
	lea	rdi, [rdi]
	mov	al, 0
	mov	rsp, rsp
	call	fprintf
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x50c], eax
	jmp	.label_3420
.label_3396:
	movabs	rdi, OFFSET FLAT:.str.30
	lea	rsi, [rsi]
	mov	rax,  qword ptr [word ptr [stderr]]
	mov	qword ptr [rbp - 0x260], rax
	call	gettext
	mov	rdx, qword ptr [rbp - 0x7a8]
	mov	rdi, qword ptr [rbp - 0x260]
	mov	rsi, rax
	mov	al, 0
	call	fprintf
	mov	rbp, rbp
	mov	dword ptr [rbp - 0xddc], eax
.label_3420:
	jmp	.label_3388
.label_3388:
	lea	rsi, [rsi]
	jmp	.label_3445
.label_3374:
	movabs	rdi, OFFSET FLAT:.str.31
	mov	rax,  qword ptr [word ptr [stderr]]
	mov	qword ptr [rbp - 0x498], rax
	call	gettext
	mov	rdi, qword ptr [rbp - 0x498]
	mov	rsp, rsp
	mov	rsi, rax
	lea	rsi, [rsi]
	mov	al, 0
	lea	rdi, [rdi]
	call	fprintf
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x55c], eax
.label_3445:
	lea	rdi, [rdi]
	jmp	.label_3372
.label_3372:
	lea	rdi, [rdi]
	jmp	.label_3357
.label_3357:
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0xc8], 0
	lea	rsi, [rsi]
	je	.label_2894
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0xb0], 0
	jne	.label_2894
	xor	eax, eax
	cmp	eax, dword ptr [rbp - 0x16c]
	jge	.label_2894
	movabs	rsi, OFFSET FLAT:.str.32
	mov	rdi,  qword ptr [word ptr [stderr]]
	mov	al, 0
	nop	
	call	fprintf
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x928], eax
.label_2894:
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0xb0], 0
	je	.label_3484
	lea	rsi, [rbp - 0x690]
	mov	rdi,  qword ptr [word ptr [stderr]]
	nop	
	mov	eax, dword ptr [rbp - 0x168]
	mov	qword ptr [rbp - 0xcb0], rdi
	mov	edi, eax
	lea	rsi, [rsi]
	call	time_zone_str
	movabs	rsi, OFFSET FLAT:.str.33
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0xcb0]
	lea	rsi, [rsi]
	mov	rdx, rax
	mov	rbp, rbp
	mov	al, 0
	mov	rbp, rbp
	call	fprintf
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x354], eax
.label_3484:
	mov	edi, 0xa
	mov	rbp, rbp
	mov	rsi,  qword ptr [word ptr [stderr]]
	call	fputc
	mov	dword ptr [rbp - 0x200], eax
.label_2233:
	lea	rsi, [rsi]
	test	byte ptr [rbp - 0xe0], 1
	je	.label_3513
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x2b8]
	mov	rcx, qword ptr [rbp - 0x128]
	mov	qword ptr [rax], rcx
	mov	rcx, qword ptr [rbp - 0x120]
	mov	qword ptr [rax + 8], rcx
	jmp	.label_2004
.label_3513:
	nop	
	mov	eax, 1
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0xb8]
	lea	rdi, [rdi]
	or	rdx, qword ptr [rbp - 0xd8]
	mov	rbp, rbp
	or	rdx, qword ptr [rbp - 0xd0]
	lea	rdi, [rdi]
	or	rdx, qword ptr [rbp - 0xc0]
	nop	
	mov	rsi, qword ptr [rbp - 0xc8]
	lea	rdi, [rdi]
	add	rsi, qword ptr [rbp - 0xb0]
	lea	rsi, [rsi]
	or	rdx, rsi
	cmp	rcx, rdx
	jge	.label_3523
	lea	rdi, [rdi]
	test	byte ptr [rbp - 0xa7], 1
	je	.label_3543
	cmp	qword ptr [rbp - 0xb8], 1
	jle	.label_3550
	nop	
	movabs	rdi, OFFSET FLAT:.str.34
	lea	rdi, [rdi]
	mov	al, 0
	call	dbg_printf
.label_3550:
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0xd8], 1
	jle	.label_3557
	mov	rsp, rsp
	movabs	rdi, OFFSET FLAT:.str.35
	nop	
	mov	al, 0
	lea	rdi, [rdi]
	call	dbg_printf
.label_3557:
	cmp	qword ptr [rbp - 0xd0], 1
	nop	
	jle	.label_3565
	movabs	rdi, OFFSET FLAT:.str.36_0
	mov	al, 0
	mov	rbp, rbp
	call	dbg_printf
.label_3565:
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0xc0], 1
	mov	rbp, rbp
	jle	.label_3773
	lea	rsi, [rsi]
	movabs	rdi, OFFSET FLAT:.str.37
	mov	al, 0
	call	dbg_printf
.label_3773:
	mov	rax, qword ptr [rbp - 0xc8]
	lea	rsi, [rsi]
	add	rax, qword ptr [rbp - 0xb0]
	cmp	rax, 1
	jle	.label_3580
	mov	rbp, rbp
	movabs	rdi, OFFSET FLAT:.str.38_0
	mov	al, 0
	call	dbg_printf
.label_3580:
	jmp	.label_3543
.label_3543:
	nop	
	jmp	.label_1907
.label_3523:
	lea	rax, [rbp - 0x1c0]
	mov	rbp, rbp
	lea	rcx, [rbp - 0x180]
	add	rcx, 0x20
	nop	
	mov	dl, byte ptr [rbp - 0xa7]
	mov	rsp, rsp
	add	rax, 0x14
	and	dl, 1
	mov	rsi, qword ptr [rcx]
	nop	
	mov	qword ptr [rsp], rsi
	mov	rsi, qword ptr [rcx + 8]
	mov	qword ptr [rsp + 8], rsi
	nop	
	mov	rcx, qword ptr [rcx + 0x10]
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x10], rcx
	mov	rbp, rbp
	movzx	edi, dl
	mov	rbp, rbp
	mov	rsi, rax
	call	to_tm_year
	nop	
	test	al, 1
	lea	rdi, [rdi]
	jne	.label_3601
	lea	rdi, [rdi]
	jmp	.label_1929
.label_3601:
	lea	rdi, [rdi]
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_3606
	jmp	.label_3611
.label_3606:
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	mov	rbp, rbp
	jne	.label_3614
	jmp	.label_2146
.label_3614:
	mov	al, 1
	mov	rbp, rbp
	test	al, 1
	jne	.label_3618
	jmp	.label_3622
.label_3618:
	mov	al, 1
	test	al, 1
	jne	.label_2195
	jmp	.label_2360
.label_2195:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x148]
	mov	cl, al
	mov	rbp, rbp
	movsx	edx, cl
	lea	rdi, [rdi]
	cmp	edx, 0x80000001
	lea	rdi, [rdi]
	jl	.label_2623
	mov	rsp, rsp
	jmp	.label_2281
.label_2360:
	lea	rdi, [rdi]
	mov	eax, 0x80000000
	mov	rcx, qword ptr [rbp - 0x148]
	mov	dl, cl
	mov	rbp, rbp
	movsx	esi, dl
	cmp	eax, esi
	lea	rsi, [rsi]
	jl	.label_2623
	nop	
	jmp	.label_2281
.label_3622:
	mov	rax, qword ptr [rbp - 0x148]
	mov	cl, al
	movsx	edx, cl
	cmp	edx, 0
	mov	rbp, rbp
	jge	.label_3647
	mov	rsp, rsp
	mov	eax, 0xffffffff
	mov	rcx, qword ptr [rbp - 0x148]
	mov	dl, cl
	movsx	esi, dl
	add	esi, -1
	cmp	eax, esi
	nop	
	jle	.label_2623
	lea	rsi, [rsi]
	jmp	.label_2281
.label_3647:
	lea	rsi, [rsi]
	mov	al, 1
	nop	
	test	al, 1
	jne	.label_3667
	jmp	.label_3671
.label_3667:
	mov	rax, qword ptr [rbp - 0x148]
	mov	rbp, rbp
	mov	cl, al
	movsx	edx, cl
	mov	rax, qword ptr [rbp - 0x148]
	mov	cl, al
	lea	rdi, [rdi]
	movsx	esi, cl
	lea	rdi, [rdi]
	add	esi, -1
	mov	rbp, rbp
	cmp	edx, esi
	jle	.label_2623
	lea	rdi, [rdi]
	jmp	.label_2281
.label_3671:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x148]
	mov	cl, al
	movsx	edx, cl
	add	edx, -1
	cmp	edx, -1
	mov	rbp, rbp
	jl	.label_2623
.label_2281:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x148]
	mov	cl, al
	movsx	edx, cl
	lea	rsi, [rsi]
	add	edx, -1
	cmp	edx, -0x80
	lea	rsi, [rsi]
	jl	.label_2623
	mov	eax, 0x7f
	mov	rcx, qword ptr [rbp - 0x148]
	lea	rdi, [rdi]
	mov	dl, cl
	movsx	esi, dl
	lea	rsi, [rsi]
	add	esi, -1
	lea	rsi, [rsi]
	cmp	eax, esi
	nop	
	jge	.label_3689
.label_2623:
	mov	al, 1
	mov	rcx, qword ptr [rbp - 0x148]
	lea	rsi, [rsi]
	mov	dl, cl
	nop	
	movsx	esi, dl
	add	esi, -1
	mov	dl, sil
	movsx	esi, dl
	mov	dword ptr [rbp - 0x1b0], esi
	test	al, 1
	jne	.label_1929
	jmp	.label_1923
.label_3689:
	xor	eax, eax
	nop	
	mov	cl, al
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x148]
	mov	sil, dl
	movsx	eax, sil
	add	eax, -1
	mov	sil, al
	nop	
	movsx	eax, sil
	mov	dword ptr [rbp - 0x1b0], eax
	test	cl, 1
	jne	.label_1929
	lea	rsi, [rsi]
	jmp	.label_1923
.label_2146:
	mov	al, 1
	test	al, 1
	jne	.label_3711
	jmp	.label_3714
.label_3711:
	mov	al, 1
	test	al, 1
	jne	.label_3715
	jmp	.label_3718
.label_3715:
	mov	rsp, rsp
	movabs	rax, 0x8000000000000001
	cmp	qword ptr [rbp - 0x148], rax
	mov	rbp, rbp
	jl	.label_3719
	jmp	.label_3005
.label_3718:
	movabs	rax, 0x8000000000000000
	cmp	rax, qword ptr [rbp - 0x148]
	jl	.label_3719
	jmp	.label_3005
.label_3714:
	cmp	qword ptr [rbp - 0x148], 0
	lea	rsi, [rsi]
	jge	.label_3738
	lea	rsi, [rsi]
	mov	rax, -1
	mov	rcx, qword ptr [rbp - 0x148]
	add	rcx, -1
	lea	rsi, [rsi]
	cmp	rax, rcx
	jle	.label_3719
	nop	
	jmp	.label_3005
.label_3738:
	mov	rsp, rsp
	mov	al, 1
	test	al, 1
	lea	rdi, [rdi]
	jne	.label_3748
	jmp	.label_3752
.label_3748:
	mov	rax, qword ptr [rbp - 0x148]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x148]
	add	rcx, -1
	lea	rsi, [rsi]
	cmp	rax, rcx
	mov	rbp, rbp
	jle	.label_3719
	lea	rdi, [rdi]
	jmp	.label_3005
.label_3752:
	mov	rax, qword ptr [rbp - 0x148]
	add	rax, -1
	nop	
	cmp	rax, -1
	jl	.label_3719
.label_3005:
	mov	rax, qword ptr [rbp - 0x148]
	add	rax, -1
	cmp	rax, -0x80
	jl	.label_3719
	mov	rbp, rbp
	mov	eax, 0x7f
	lea	rdi, [rdi]
	mov	ecx, eax
	nop	
	mov	rdx, qword ptr [rbp - 0x148]
	add	rdx, -1
	lea	rsi, [rsi]
	cmp	rcx, rdx
	jge	.label_3767
.label_3719:
	lea	rsi, [rsi]
	mov	al, 1
	mov	rcx, qword ptr [rbp - 0x148]
	lea	rsi, [rsi]
	mov	edx, ecx
	mov	rsp, rsp
	add	edx, -1
	lea	rsi, [rsi]
	mov	sil, dl
	movsx	edx, sil
	mov	dword ptr [rbp - 0x1b0], edx
	lea	rsi, [rsi]
	test	al, 1
	jne	.label_1929
	lea	rsi, [rsi]
	jmp	.label_1923
.label_3767:
	xor	eax, eax
	mov	rbp, rbp
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x148]
	lea	rsi, [rsi]
	mov	eax, edx
	add	eax, -1
	mov	sil, al
	mov	rbp, rbp
	movsx	eax, sil
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x1b0], eax
	test	cl, 1
	nop	
	jne	.label_1929
	lea	rdi, [rdi]
	jmp	.label_1923
.label_3611:
	lea	rdi, [rdi]
	xor	eax, eax
	lea	rsi, [rsi]
	mov	cl, al
	mov	rbp, rbp
	test	cl, 1
	jne	.label_3793
	jmp	.label_3797
.label_3793:
	xor	eax, eax
	nop	
	mov	cl, al
	test	cl, 1
	jne	.label_3489
	nop	
	jmp	.label_3801
.label_3489:
	lea	rdi, [rdi]
	mov	al, 1
	test	al, 1
	mov	rsp, rsp
	jne	.label_3803
	lea	rdi, [rdi]
	jmp	.label_3805
.label_3803:
	lea	rsi, [rsi]
	mov	al, 1
	test	al, 1
	mov	rbp, rbp
	jne	.label_3807
	lea	rdi, [rdi]
	jmp	.label_3809
.label_3807:
	mov	rax, qword ptr [rbp - 0x148]
	mov	rbp, rbp
	mov	cx, ax
	movsx	edx, cx
	lea	rsi, [rsi]
	cmp	edx, 0x80000001
	jl	.label_1895
	jmp	.label_3612
.label_3809:
	mov	eax, 0x80000000
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x148]
	mov	dx, cx
	mov	rsp, rsp
	movsx	esi, dx
	cmp	eax, esi
	mov	rbp, rbp
	jl	.label_1895
	mov	rsp, rsp
	jmp	.label_3612
.label_3805:
	mov	rax, qword ptr [rbp - 0x148]
	mov	rsp, rsp
	mov	cx, ax
	movsx	edx, cx
	cmp	edx, 0
	lea	rdi, [rdi]
	jge	.label_3834
	lea	rdi, [rdi]
	mov	eax, 0xffffffff
	mov	rcx, qword ptr [rbp - 0x148]
	mov	dx, cx
	lea	rdi, [rdi]
	movsx	esi, dx
	add	esi, -1
	mov	rsp, rsp
	cmp	eax, esi
	lea	rdi, [rdi]
	jle	.label_1895
	mov	rbp, rbp
	jmp	.label_3612
.label_3834:
	lea	rsi, [rsi]
	mov	al, 1
	test	al, 1
	mov	rsp, rsp
	jne	.label_3849
	mov	rbp, rbp
	jmp	.label_5202
.label_3849:
	mov	rax, qword ptr [rbp - 0x148]
	mov	cx, ax
	lea	rsi, [rsi]
	movsx	edx, cx
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x148]
	mov	cx, ax
	nop	
	movsx	esi, cx
	add	esi, -1
	lea	rdi, [rdi]
	cmp	edx, esi
	lea	rsi, [rsi]
	jle	.label_1895
	mov	rbp, rbp
	jmp	.label_3612
.label_5202:
	mov	rax, qword ptr [rbp - 0x148]
	mov	rsp, rsp
	mov	cx, ax
	mov	rbp, rbp
	movsx	edx, cx
	add	edx, -1
	cmp	edx, -1
	jl	.label_1895
.label_3612:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x148]
	mov	cx, ax
	movsx	edx, cx
	mov	rsp, rsp
	add	edx, -1
	lea	rsi, [rsi]
	cmp	edx, 0xffff8000
	mov	rbp, rbp
	jl	.label_1895
	mov	rsp, rsp
	mov	eax, 0x7fff
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x148]
	mov	rsp, rsp
	mov	dx, cx
	movsx	esi, dx
	nop	
	add	esi, -1
	cmp	eax, esi
	lea	rsi, [rsi]
	jge	.label_1918
.label_1895:
	mov	rsp, rsp
	mov	al, 1
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x148]
	lea	rsi, [rsi]
	mov	dx, cx
	movsx	esi, dx
	add	esi, -1
	mov	dx, si
	movsx	esi, dx
	nop	
	mov	dword ptr [rbp - 0x1b0], esi
	test	al, 1
	jne	.label_1929
	jmp	.label_1923
.label_1918:
	lea	rdi, [rdi]
	xor	eax, eax
	mov	cl, al
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x148]
	mov	rbp, rbp
	mov	si, dx
	nop	
	movsx	eax, si
	nop	
	add	eax, -1
	nop	
	mov	si, ax
	mov	rbp, rbp
	movsx	eax, si
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x1b0], eax
	test	cl, 1
	jne	.label_1929
	mov	rsp, rsp
	jmp	.label_1923
.label_3801:
	lea	rdi, [rdi]
	mov	al, 1
	test	al, 1
	jne	.label_1966
	jmp	.label_1968
.label_1966:
	mov	rsp, rsp
	mov	al, 1
	test	al, 1
	jne	.label_1971
	jmp	.label_1977
.label_1971:
	movabs	rax, 0x8000000000000001
	cmp	qword ptr [rbp - 0x148], rax
	jl	.label_1978
	nop	
	jmp	.label_1983
.label_1977:
	lea	rsi, [rsi]
	movabs	rax, 0x8000000000000000
	mov	rsp, rsp
	cmp	rax, qword ptr [rbp - 0x148]
	lea	rsi, [rsi]
	jl	.label_1978
	jmp	.label_1983
.label_1968:
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x148], 0
	lea	rdi, [rdi]
	jge	.label_1997
	nop	
	mov	rax, -1
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x148]
	mov	rbp, rbp
	add	rcx, -1
	cmp	rax, rcx
	jle	.label_1978
	nop	
	jmp	.label_1983
.label_1997:
	mov	al, 1
	mov	rsp, rsp
	test	al, 1
	jne	.label_2011
	mov	rbp, rbp
	jmp	.label_2015
.label_2011:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x148]
	mov	rcx, qword ptr [rbp - 0x148]
	add	rcx, -1
	cmp	rax, rcx
	mov	rbp, rbp
	jle	.label_1978
	mov	rbp, rbp
	jmp	.label_1983
.label_2015:
	mov	rax, qword ptr [rbp - 0x148]
	add	rax, -1
	lea	rsi, [rsi]
	cmp	rax, -1
	mov	rbp, rbp
	jl	.label_1978
.label_1983:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x148]
	add	rax, -1
	mov	rsp, rsp
	cmp	rax, -0x8000
	lea	rsi, [rsi]
	jl	.label_1978
	mov	eax, 0x7fff
	mov	ecx, eax
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x148]
	add	rdx, -1
	mov	rsp, rsp
	cmp	rcx, rdx
	nop	
	jge	.label_2035
.label_1978:
	nop	
	mov	al, 1
	mov	rcx, qword ptr [rbp - 0x148]
	mov	edx, ecx
	add	edx, -1
	mov	si, dx
	movsx	edx, si
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x1b0], edx
	test	al, 1
	nop	
	jne	.label_1929
	mov	rbp, rbp
	jmp	.label_1923
.label_2035:
	xor	eax, eax
	lea	rdi, [rdi]
	mov	cl, al
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x148]
	mov	rbp, rbp
	mov	eax, edx
	mov	rbp, rbp
	add	eax, -1
	lea	rsi, [rsi]
	mov	si, ax
	movsx	eax, si
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x1b0], eax
	test	cl, 1
	mov	rsp, rsp
	jne	.label_1929
	mov	rsp, rsp
	jmp	.label_1923
.label_3797:
	mov	al, 1
	test	al, 1
	lea	rdi, [rdi]
	jne	.label_2069
	lea	rdi, [rdi]
	jmp	.label_2073
.label_2069:
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_2077
	jmp	.label_2084
.label_2077:
	mov	al, 1
	nop	
	test	al, 1
	jne	.label_2083
	jmp	.label_2092
.label_2083:
	mov	al, 1
	nop	
	test	al, 1
	jne	.label_3018
	jmp	.label_2095
.label_3018:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x148]
	mov	ecx, eax
	nop	
	cmp	ecx, 0x80000001
	mov	rsp, rsp
	jl	.label_2098
	lea	rdi, [rdi]
	jmp	.label_2108
.label_2095:
	lea	rsi, [rsi]
	mov	eax, 0x80000000
	mov	rcx, qword ptr [rbp - 0x148]
	mov	edx, ecx
	nop	
	cmp	eax, edx
	jl	.label_2098
	jmp	.label_2108
.label_2092:
	mov	rax, qword ptr [rbp - 0x148]
	lea	rdi, [rdi]
	mov	ecx, eax
	lea	rsi, [rsi]
	cmp	ecx, 0
	jge	.label_3129
	lea	rsi, [rsi]
	mov	eax, 0xffffffff
	mov	rcx, qword ptr [rbp - 0x148]
	nop	
	mov	edx, ecx
	add	edx, -1
	mov	rbp, rbp
	cmp	eax, edx
	lea	rdi, [rdi]
	jle	.label_2098
	lea	rdi, [rdi]
	jmp	.label_2108
.label_3129:
	mov	al, 1
	mov	rsp, rsp
	test	al, 1
	nop	
	jne	.label_2131
	mov	rbp, rbp
	jmp	.label_2136
.label_2131:
	mov	rax, qword ptr [rbp - 0x148]
	mov	ecx, eax
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x148]
	mov	edx, eax
	add	edx, -1
	lea	rsi, [rsi]
	cmp	ecx, edx
	lea	rsi, [rsi]
	jle	.label_2098
	jmp	.label_2108
.label_2136:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x148]
	mov	ecx, eax
	add	ecx, -1
	cmp	ecx, -1
	jl	.label_2098
.label_2108:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x148]
	mov	ecx, eax
	add	ecx, -1
	cmp	ecx, 0x80000000
	jl	.label_2098
	mov	eax, 0x7fffffff
	mov	rcx, qword ptr [rbp - 0x148]
	lea	rsi, [rsi]
	mov	edx, ecx
	add	edx, -1
	lea	rsi, [rsi]
	cmp	eax, edx
	jge	.label_2150
.label_2098:
	mov	rsp, rsp
	mov	al, 1
	mov	rcx, qword ptr [rbp - 0x148]
	mov	edx, ecx
	mov	rsp, rsp
	add	edx, -1
	mov	dword ptr [rbp - 0x1b0], edx
	lea	rsi, [rsi]
	test	al, 1
	jne	.label_1929
	jmp	.label_1923
.label_2150:
	mov	rsp, rsp
	xor	eax, eax
	mov	cl, al
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x148]
	mov	rsp, rsp
	mov	eax, edx
	nop	
	add	eax, -1
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x1b0], eax
	lea	rsi, [rsi]
	test	cl, 1
	jne	.label_1929
	jmp	.label_1923
.label_2084:
	mov	rbp, rbp
	mov	al, 1
	test	al, 1
	mov	rbp, rbp
	jne	.label_2194
	jmp	.label_3575
.label_2194:
	mov	al, 1
	mov	rbp, rbp
	test	al, 1
	jne	.label_3582
	jmp	.label_2205
.label_3582:
	movabs	rax, 0x8000000000000001
	cmp	qword ptr [rbp - 0x148], rax
	jl	.label_2207
	jmp	.label_2215
.label_2205:
	movabs	rax, 0x8000000000000000
	lea	rdi, [rdi]
	cmp	rax, qword ptr [rbp - 0x148]
	jl	.label_2207
	jmp	.label_2215
.label_3575:
	nop	
	cmp	qword ptr [rbp - 0x148], 0
	jge	.label_2223
	mov	rax, -1
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x148]
	mov	rbp, rbp
	add	rcx, -1
	mov	rbp, rbp
	cmp	rax, rcx
	mov	rsp, rsp
	jle	.label_2207
	jmp	.label_2215
.label_2223:
	lea	rsi, [rsi]
	mov	al, 1
	test	al, 1
	mov	rbp, rbp
	jne	.label_2237
	jmp	.label_2241
.label_2237:
	mov	rax, qword ptr [rbp - 0x148]
	mov	rcx, qword ptr [rbp - 0x148]
	lea	rdi, [rdi]
	add	rcx, -1
	cmp	rax, rcx
	jle	.label_2207
	mov	rsp, rsp
	jmp	.label_2215
.label_2241:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x148]
	add	rax, -1
	cmp	rax, -1
	lea	rsi, [rsi]
	jl	.label_2207
.label_2215:
	mov	rax, qword ptr [rbp - 0x148]
	add	rax, -1
	cmp	rax, -0x80000000
	lea	rdi, [rdi]
	jl	.label_2207
	lea	rsi, [rsi]
	mov	eax, 0x7fffffff
	mov	rsp, rsp
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x148]
	add	rdx, -1
	nop	
	cmp	rcx, rdx
	lea	rdi, [rdi]
	jge	.label_2269
.label_2207:
	mov	al, 1
	mov	rcx, qword ptr [rbp - 0x148]
	mov	edx, ecx
	mov	rbp, rbp
	add	edx, -1
	mov	dword ptr [rbp - 0x1b0], edx
	test	al, 1
	jne	.label_1929
	lea	rsi, [rsi]
	jmp	.label_1923
.label_2269:
	lea	rsi, [rsi]
	xor	eax, eax
	mov	cl, al
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x148]
	mov	rbp, rbp
	mov	eax, edx
	nop	
	add	eax, -1
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x1b0], eax
	test	cl, 1
	nop	
	jne	.label_1929
	jmp	.label_1923
.label_2073:
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_2296
	jmp	.label_2298
.label_2296:
	xor	eax, eax
	mov	cl, al
	nop	
	test	cl, 1
	lea	rsi, [rsi]
	jne	.label_2299
	lea	rsi, [rsi]
	jmp	.label_2301
.label_2299:
	nop	
	mov	al, 1
	test	al, 1
	mov	rsp, rsp
	jne	.label_2303
	mov	rbp, rbp
	jmp	.label_2309
.label_2303:
	nop	
	mov	al, 1
	test	al, 1
	jne	.label_2231
	nop	
	jmp	.label_2313
.label_2231:
	movabs	rax, 0x8000000000000001
	cmp	qword ptr [rbp - 0x148], rax
	mov	rsp, rsp
	jl	.label_2256
	nop	
	jmp	.label_2320
.label_2313:
	lea	rsi, [rsi]
	movabs	rax, 0x8000000000000000
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rbp - 0x148]
	mov	rsp, rsp
	jl	.label_2256
	nop	
	jmp	.label_2320
.label_2309:
	nop	
	cmp	qword ptr [rbp - 0x148], 0
	jge	.label_2333
	mov	rax, -1
	mov	rcx, qword ptr [rbp - 0x148]
	lea	rdi, [rdi]
	add	rcx, -1
	nop	
	cmp	rax, rcx
	lea	rsi, [rsi]
	jle	.label_2256
	jmp	.label_2320
.label_2333:
	nop	
	mov	al, 1
	test	al, 1
	jne	.label_2352
	lea	rsi, [rsi]
	jmp	.label_2356
.label_2352:
	mov	rax, qword ptr [rbp - 0x148]
	mov	rcx, qword ptr [rbp - 0x148]
	add	rcx, -1
	cmp	rax, rcx
	jle	.label_2256
	lea	rdi, [rdi]
	jmp	.label_2320
.label_2356:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x148]
	add	rax, -1
	cmp	rax, -1
	jl	.label_2256
.label_2320:
	movabs	rax, 0x8000000000000000
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x148]
	nop	
	add	rcx, -1
	mov	rsp, rsp
	cmp	rcx, rax
	mov	rbp, rbp
	jl	.label_2256
	movabs	rax, 0x7fffffffffffffff
	mov	rcx, qword ptr [rbp - 0x148]
	mov	rsp, rsp
	add	rcx, -1
	nop	
	cmp	rax, rcx
	jge	.label_2393
.label_2256:
	mov	al, 1
	mov	rcx, qword ptr [rbp - 0x148]
	lea	rsi, [rsi]
	add	rcx, -1
	mov	edx, ecx
	mov	dword ptr [rbp - 0x1b0], edx
	nop	
	test	al, 1
	jne	.label_1929
	lea	rdi, [rdi]
	jmp	.label_1923
.label_2393:
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x148]
	add	rdx, -1
	mov	rbp, rbp
	mov	eax, edx
	mov	dword ptr [rbp - 0x1b0], eax
	mov	rsp, rsp
	test	cl, 1
	jne	.label_1929
	jmp	.label_1923
.label_2301:
	lea	rdi, [rdi]
	mov	al, 1
	mov	rsp, rsp
	test	al, 1
	jne	.label_2417
	lea	rsi, [rsi]
	jmp	.label_2419
.label_2417:
	lea	rsi, [rsi]
	mov	al, 1
	mov	rbp, rbp
	test	al, 1
	jne	.label_2422
	lea	rsi, [rsi]
	jmp	.label_2427
.label_2422:
	nop	
	movabs	rax, 0x8000000000000001
	cmp	qword ptr [rbp - 0x148], rax
	jl	.label_2429
	lea	rsi, [rsi]
	jmp	.label_2434
.label_2427:
	movabs	rax, 0x8000000000000000
	cmp	rax, qword ptr [rbp - 0x148]
	jl	.label_2429
	jmp	.label_2434
.label_2419:
	cmp	qword ptr [rbp - 0x148], 0
	jge	.label_2446
	mov	rax, -1
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x148]
	add	rcx, -1
	cmp	rax, rcx
	jle	.label_2429
	jmp	.label_2434
.label_2446:
	nop	
	mov	al, 1
	test	al, 1
	lea	rdi, [rdi]
	jne	.label_2462
	jmp	.label_2467
.label_2462:
	nop	
	mov	rax, qword ptr [rbp - 0x148]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x148]
	add	rcx, -1
	mov	rbp, rbp
	cmp	rax, rcx
	jle	.label_2429
	jmp	.label_2434
.label_2467:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x148]
	lea	rdi, [rdi]
	add	rax, -1
	nop	
	cmp	rax, -1
	jl	.label_2429
.label_2434:
	nop	
	movabs	rax, 0x8000000000000000
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x148]
	lea	rsi, [rsi]
	add	rcx, -1
	lea	rsi, [rsi]
	cmp	rcx, rax
	lea	rdi, [rdi]
	jl	.label_2429
	mov	rsp, rsp
	movabs	rax, 0x7fffffffffffffff
	mov	rcx, qword ptr [rbp - 0x148]
	mov	rsp, rsp
	add	rcx, -1
	lea	rsi, [rsi]
	cmp	rax, rcx
	jge	.label_2504
.label_2429:
	mov	al, 1
	mov	rcx, qword ptr [rbp - 0x148]
	add	rcx, -1
	mov	edx, ecx
	mov	dword ptr [rbp - 0x1b0], edx
	mov	rsp, rsp
	test	al, 1
	lea	rsi, [rsi]
	jne	.label_1929
	jmp	.label_1923
.label_2504:
	xor	eax, eax
	mov	cl, al
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x148]
	add	rdx, -1
	lea	rdi, [rdi]
	mov	eax, edx
	mov	dword ptr [rbp - 0x1b0], eax
	test	cl, 1
	mov	rsp, rsp
	jne	.label_1929
	mov	rbp, rbp
	jmp	.label_1923
.label_2298:
	lea	rdi, [rdi]
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_3390
	lea	rdi, [rdi]
	jmp	.label_2534
.label_3390:
	lea	rdi, [rdi]
	mov	al, 1
	test	al, 1
	mov	rsp, rsp
	jne	.label_2536
	jmp	.label_2543
.label_2536:
	lea	rsi, [rsi]
	mov	al, 1
	test	al, 1
	lea	rsi, [rsi]
	jne	.label_2545
	jmp	.label_2550
.label_2545:
	movabs	rax, 0x8000000000000001
	cmp	qword ptr [rbp - 0x148], rax
	mov	rbp, rbp
	jl	.label_2551
	jmp	.label_2554
.label_2550:
	movabs	rax, 0x8000000000000000
	mov	rbp, rbp
	cmp	rax, qword ptr [rbp - 0x148]
	mov	rbp, rbp
	jl	.label_2551
	jmp	.label_2554
.label_2543:
	nop	
	cmp	qword ptr [rbp - 0x148], 0
	jge	.label_2565
	mov	rax, -1
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x148]
	lea	rdi, [rdi]
	add	rcx, -1
	cmp	rax, rcx
	jle	.label_2551
	mov	rsp, rsp
	jmp	.label_2554
.label_2565:
	mov	al, 1
	nop	
	test	al, 1
	mov	rbp, rbp
	jne	.label_2576
	jmp	.label_2580
.label_2576:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x148]
	mov	rcx, qword ptr [rbp - 0x148]
	nop	
	add	rcx, -1
	mov	rbp, rbp
	cmp	rax, rcx
	jle	.label_2551
	jmp	.label_2554
.label_2580:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x148]
	mov	rsp, rsp
	add	rax, -1
	nop	
	cmp	rax, -1
	jl	.label_2551
.label_2554:
	lea	rsi, [rsi]
	movabs	rax, 0x8000000000000000
	mov	rcx, qword ptr [rbp - 0x148]
	lea	rdi, [rdi]
	add	rcx, -1
	cmp	rcx, rax
	mov	rbp, rbp
	jl	.label_2551
	movabs	rax, 0x7fffffffffffffff
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x148]
	add	rcx, -1
	cmp	rax, rcx
	jge	.label_2608
.label_2551:
	mov	al, 1
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x148]
	lea	rsi, [rsi]
	add	rcx, -1
	mov	edx, ecx
	mov	dword ptr [rbp - 0x1b0], edx
	test	al, 1
	lea	rdi, [rdi]
	jne	.label_1929
	jmp	.label_1923
.label_2608:
	xor	eax, eax
	mov	rbp, rbp
	mov	cl, al
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x148]
	mov	rsp, rsp
	add	rdx, -1
	mov	eax, edx
	mov	dword ptr [rbp - 0x1b0], eax
	test	cl, 1
	jne	.label_1929
	jmp	.label_1923
.label_2534:
	mov	rbp, rbp
	mov	al, 1
	nop	
	test	al, 1
	lea	rdi, [rdi]
	jne	.label_2641
	mov	rbp, rbp
	jmp	.label_2645
.label_2641:
	mov	al, 1
	lea	rsi, [rsi]
	test	al, 1
	nop	
	jne	.label_2648
	jmp	.label_2652
.label_2648:
	movabs	rax, 0x8000000000000001
	cmp	qword ptr [rbp - 0x148], rax
	jl	.label_2654
	jmp	.label_2155
.label_2652:
	nop	
	movabs	rax, 0x8000000000000000
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rbp - 0x148]
	mov	rsp, rsp
	jl	.label_2654
	lea	rdi, [rdi]
	jmp	.label_2155
.label_2645:
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x148], 0
	jge	.label_2667
	mov	rax, -1
	mov	rcx, qword ptr [rbp - 0x148]
	mov	rsp, rsp
	add	rcx, -1
	lea	rdi, [rdi]
	cmp	rax, rcx
	jle	.label_2654
	nop	
	jmp	.label_2155
.label_2667:
	mov	al, 1
	mov	rsp, rsp
	test	al, 1
	jne	.label_2678
	jmp	.label_2684
.label_2678:
	mov	rax, qword ptr [rbp - 0x148]
	mov	rcx, qword ptr [rbp - 0x148]
	lea	rsi, [rsi]
	add	rcx, -1
	lea	rdi, [rdi]
	cmp	rax, rcx
	jle	.label_2654
	jmp	.label_2155
.label_2684:
	mov	rax, qword ptr [rbp - 0x148]
	lea	rsi, [rsi]
	add	rax, -1
	cmp	rax, -1
	jl	.label_2654
.label_2155:
	lea	rdi, [rdi]
	movabs	rax, 0x8000000000000000
	mov	rcx, qword ptr [rbp - 0x148]
	lea	rdi, [rdi]
	add	rcx, -1
	cmp	rcx, rax
	lea	rsi, [rsi]
	jl	.label_2654
	mov	rsp, rsp
	movabs	rax, 0x7fffffffffffffff
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x148]
	add	rcx, -1
	cmp	rax, rcx
	lea	rsi, [rsi]
	jge	.label_2705
.label_2654:
	mov	rbp, rbp
	mov	al, 1
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x148]
	add	rcx, -1
	lea	rsi, [rsi]
	mov	edx, ecx
	mov	dword ptr [rbp - 0x1b0], edx
	mov	rsp, rsp
	test	al, 1
	jne	.label_1929
	mov	rbp, rbp
	jmp	.label_1923
.label_2705:
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x148]
	lea	rdi, [rdi]
	add	rdx, -1
	mov	eax, edx
	nop	
	mov	dword ptr [rbp - 0x1b0], eax
	test	cl, 1
	mov	rbp, rbp
	jne	.label_1929
.label_1923:
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_2732
	lea	rsi, [rsi]
	jmp	.label_2739
.label_2732:
	xor	eax, eax
	lea	rdi, [rdi]
	mov	cl, al
	test	cl, 1
	jne	.label_2741
	jmp	.label_2745
.label_2741:
	mov	al, 1
	mov	rbp, rbp
	test	al, 1
	lea	rdi, [rdi]
	jne	.label_2709
	jmp	.label_2751
.label_2709:
	xor	eax, eax
	mov	cl, al
	mov	rbp, rbp
	test	cl, 1
	mov	rbp, rbp
	jne	.label_2939
	jmp	.label_2755
.label_2939:
	mov	rax, qword ptr [rbp - 0x140]
	mov	cl, al
	mov	rbp, rbp
	movsx	edx, cl
	lea	rdi, [rdi]
	cmp	edx, 0x80000000
	nop	
	jl	.label_2756
	mov	rbp, rbp
	jmp	.label_2762
.label_2755:
	mov	rbp, rbp
	mov	eax, 0x7fffffff
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x140]
	mov	dl, cl
	mov	rsp, rsp
	movsx	esi, dl
	cmp	eax, esi
	nop	
	jl	.label_2756
	mov	rsp, rsp
	jmp	.label_2762
.label_2751:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x140]
	mov	cl, al
	movsx	edx, cl
	nop	
	cmp	edx, 0
	mov	rsp, rsp
	jge	.label_2776
	xor	eax, eax
	mov	rcx, qword ptr [rbp - 0x140]
	mov	rbp, rbp
	mov	dl, cl
	lea	rsi, [rsi]
	movsx	esi, dl
	add	esi, 0
	mov	rbp, rbp
	cmp	eax, esi
	jle	.label_2756
	mov	rsp, rsp
	jmp	.label_2762
.label_2776:
	lea	rsi, [rsi]
	xor	eax, eax
	lea	rdi, [rdi]
	mov	cl, al
	lea	rdi, [rdi]
	test	cl, 1
	jne	.label_2792
	jmp	.label_2795
.label_2792:
	mov	rax, qword ptr [rbp - 0x140]
	mov	cl, al
	movsx	edx, cl
	mov	rax, qword ptr [rbp - 0x140]
	lea	rsi, [rsi]
	mov	cl, al
	mov	rbp, rbp
	movsx	esi, cl
	add	esi, 0
	cmp	edx, esi
	mov	rbp, rbp
	jle	.label_2756
	lea	rdi, [rdi]
	jmp	.label_2762
.label_2795:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x140]
	mov	rsp, rsp
	mov	cl, al
	mov	rbp, rbp
	movsx	edx, cl
	mov	rbp, rbp
	add	edx, 0
	cmp	edx, 0
	nop	
	jl	.label_2756
.label_2762:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x140]
	lea	rsi, [rsi]
	mov	cl, al
	mov	rbp, rbp
	movsx	edx, cl
	add	edx, 0
	lea	rdi, [rdi]
	cmp	edx, -0x80
	mov	rbp, rbp
	jl	.label_2756
	mov	eax, 0x7f
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x140]
	mov	rsp, rsp
	mov	dl, cl
	lea	rdi, [rdi]
	movsx	esi, dl
	add	esi, 0
	lea	rdi, [rdi]
	cmp	eax, esi
	mov	rbp, rbp
	jge	.label_3233
.label_2756:
	mov	rsp, rsp
	mov	al, 1
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x140]
	mov	dl, cl
	movsx	esi, dl
	add	esi, 0
	mov	dl, sil
	movsx	esi, dl
	mov	dword ptr [rbp - 0x1b4], esi
	mov	rsp, rsp
	test	al, 1
	lea	rdi, [rdi]
	jne	.label_1929
	jmp	.label_2841
.label_3233:
	xor	eax, eax
	mov	cl, al
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x140]
	nop	
	mov	sil, dl
	mov	rbp, rbp
	movsx	eax, sil
	lea	rsi, [rsi]
	add	eax, 0
	mov	rbp, rbp
	mov	sil, al
	mov	rbp, rbp
	movsx	eax, sil
	nop	
	mov	dword ptr [rbp - 0x1b4], eax
	test	cl, 1
	jne	.label_1929
	nop	
	jmp	.label_2841
.label_2745:
	mov	al, 1
	nop	
	test	al, 1
	jne	.label_3454
	mov	rsp, rsp
	jmp	.label_2865
.label_3454:
	mov	rbp, rbp
	xor	eax, eax
	lea	rdi, [rdi]
	mov	cl, al
	test	cl, 1
	mov	rbp, rbp
	jne	.label_2867
	jmp	.label_2876
.label_2867:
	movabs	rax, 0x8000000000000000
	cmp	qword ptr [rbp - 0x140], rax
	nop	
	jl	.label_2878
	lea	rdi, [rdi]
	jmp	.label_2881
.label_2876:
	movabs	rax, 0x7fffffffffffffff
	mov	rbp, rbp
	cmp	rax, qword ptr [rbp - 0x140]
	mov	rbp, rbp
	jl	.label_2878
	lea	rsi, [rsi]
	jmp	.label_2881
.label_2865:
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x140], 0
	jge	.label_2895
	xor	eax, eax
	lea	rdi, [rdi]
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x140]
	mov	rbp, rbp
	add	rdx, 0
	cmp	rcx, rdx
	lea	rsi, [rsi]
	jle	.label_2878
	jmp	.label_2881
.label_2895:
	lea	rsi, [rsi]
	xor	eax, eax
	mov	rbp, rbp
	mov	cl, al
	mov	rsp, rsp
	test	cl, 1
	nop	
	jne	.label_2912
	jmp	.label_2916
.label_2912:
	mov	rax, qword ptr [rbp - 0x140]
	mov	rcx, qword ptr [rbp - 0x140]
	add	rcx, 0
	mov	rsp, rsp
	cmp	rax, rcx
	nop	
	jle	.label_2878
	jmp	.label_2881
.label_2916:
	mov	rax, qword ptr [rbp - 0x140]
	add	rax, 0
	lea	rdi, [rdi]
	cmp	rax, 0
	mov	rbp, rbp
	jl	.label_2878
.label_2881:
	mov	rax, qword ptr [rbp - 0x140]
	add	rax, 0
	cmp	rax, -0x80
	jl	.label_2878
	mov	eax, 0x7f
	lea	rdi, [rdi]
	mov	ecx, eax
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x140]
	mov	rbp, rbp
	add	rdx, 0
	cmp	rcx, rdx
	jge	.label_3012
.label_2878:
	mov	al, 1
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x140]
	mov	edx, ecx
	add	edx, 0
	mov	sil, dl
	movsx	edx, sil
	mov	dword ptr [rbp - 0x1b4], edx
	mov	rsp, rsp
	test	al, 1
	mov	rsp, rsp
	jne	.label_1929
	jmp	.label_2841
.label_3012:
	xor	eax, eax
	mov	cl, al
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x140]
	mov	eax, edx
	lea	rdi, [rdi]
	add	eax, 0
	mov	sil, al
	movsx	eax, sil
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x1b4], eax
	test	cl, 1
	jne	.label_1929
	jmp	.label_2841
.label_2739:
	lea	rdi, [rdi]
	xor	eax, eax
	mov	rbp, rbp
	mov	cl, al
	test	cl, 1
	lea	rdi, [rdi]
	jne	.label_2974
	jmp	.label_2983
.label_2974:
	xor	eax, eax
	lea	rsi, [rsi]
	mov	cl, al
	lea	rdi, [rdi]
	test	cl, 1
	jne	.label_2082
	mov	rsp, rsp
	jmp	.label_2991
.label_2082:
	nop	
	mov	al, 1
	test	al, 1
	jne	.label_2994
	lea	rsi, [rsi]
	jmp	.label_2995
.label_2994:
	mov	rsp, rsp
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	mov	rbp, rbp
	jne	.label_2999
	mov	rsp, rsp
	jmp	.label_3006
.label_2999:
	mov	rax, qword ptr [rbp - 0x140]
	mov	cx, ax
	lea	rdi, [rdi]
	movsx	edx, cx
	nop	
	cmp	edx, 0x80000000
	jl	.label_2555
	jmp	.label_3013
.label_3006:
	mov	eax, 0x7fffffff
	mov	rcx, qword ptr [rbp - 0x140]
	mov	rsp, rsp
	mov	dx, cx
	movsx	esi, dx
	cmp	eax, esi
	nop	
	jl	.label_2555
	mov	rsp, rsp
	jmp	.label_3013
.label_2995:
	mov	rax, qword ptr [rbp - 0x140]
	mov	cx, ax
	movsx	edx, cx
	mov	rsp, rsp
	cmp	edx, 0
	jge	.label_3023
	mov	rsp, rsp
	xor	eax, eax
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x140]
	lea	rsi, [rsi]
	mov	dx, cx
	lea	rsi, [rsi]
	movsx	esi, dx
	add	esi, 0
	cmp	eax, esi
	mov	rbp, rbp
	jle	.label_2555
	jmp	.label_3013
.label_3023:
	xor	eax, eax
	mov	rsp, rsp
	mov	cl, al
	mov	rbp, rbp
	test	cl, 1
	lea	rdi, [rdi]
	jne	.label_3037
	jmp	.label_3043
.label_3037:
	nop	
	mov	rax, qword ptr [rbp - 0x140]
	nop	
	mov	cx, ax
	lea	rsi, [rsi]
	movsx	edx, cx
	mov	rax, qword ptr [rbp - 0x140]
	mov	cx, ax
	movsx	esi, cx
	add	esi, 0
	cmp	edx, esi
	mov	rbp, rbp
	jle	.label_2555
	nop	
	jmp	.label_3013
.label_3043:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x140]
	lea	rsi, [rsi]
	mov	cx, ax
	movsx	edx, cx
	lea	rdi, [rdi]
	add	edx, 0
	cmp	edx, 0
	mov	rbp, rbp
	jl	.label_2555
.label_3013:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x140]
	mov	cx, ax
	movsx	edx, cx
	nop	
	add	edx, 0
	nop	
	cmp	edx, 0xffff8000
	jl	.label_2555
	mov	eax, 0x7fff
	mov	rcx, qword ptr [rbp - 0x140]
	mov	dx, cx
	mov	rsp, rsp
	movsx	esi, dx
	add	esi, 0
	mov	rbp, rbp
	cmp	eax, esi
	lea	rsi, [rsi]
	jge	.label_3065
.label_2555:
	mov	rsp, rsp
	mov	al, 1
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x140]
	mov	dx, cx
	mov	rsp, rsp
	movsx	esi, dx
	add	esi, 0
	lea	rsi, [rsi]
	mov	dx, si
	movsx	esi, dx
	mov	dword ptr [rbp - 0x1b4], esi
	mov	rbp, rbp
	test	al, 1
	lea	rsi, [rsi]
	jne	.label_1929
	lea	rdi, [rdi]
	jmp	.label_2841
.label_3065:
	mov	rbp, rbp
	xor	eax, eax
	mov	cl, al
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x140]
	mov	rsp, rsp
	mov	si, dx
	lea	rsi, [rsi]
	movsx	eax, si
	add	eax, 0
	lea	rsi, [rsi]
	mov	si, ax
	movsx	eax, si
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x1b4], eax
	test	cl, 1
	jne	.label_1929
	jmp	.label_2841
.label_2991:
	mov	al, 1
	lea	rsi, [rsi]
	test	al, 1
	mov	rsp, rsp
	jne	.label_3103
	jmp	.label_3108
.label_3103:
	nop	
	xor	eax, eax
	nop	
	mov	cl, al
	lea	rsi, [rsi]
	test	cl, 1
	nop	
	jne	.label_3111
	jmp	.label_3117
.label_3111:
	movabs	rax, 0x8000000000000000
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x140], rax
	jl	.label_3086
	jmp	.label_3125
.label_3117:
	movabs	rax, 0x7fffffffffffffff
	mov	rsp, rsp
	cmp	rax, qword ptr [rbp - 0x140]
	jl	.label_3086
	mov	rbp, rbp
	jmp	.label_3125
.label_3108:
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0x140], 0
	lea	rdi, [rdi]
	jge	.label_3136
	mov	rsp, rsp
	xor	eax, eax
	mov	rbp, rbp
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x140]
	mov	rbp, rbp
	add	rdx, 0
	nop	
	cmp	rcx, rdx
	jle	.label_3086
	mov	rsp, rsp
	jmp	.label_3125
.label_3136:
	xor	eax, eax
	mov	cl, al
	lea	rsi, [rsi]
	test	cl, 1
	lea	rsi, [rsi]
	jne	.label_3145
	jmp	.label_3147
.label_3145:
	mov	rax, qword ptr [rbp - 0x140]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x140]
	add	rcx, 0
	nop	
	cmp	rax, rcx
	jle	.label_3086
	lea	rsi, [rsi]
	jmp	.label_3125
.label_3147:
	mov	rax, qword ptr [rbp - 0x140]
	add	rax, 0
	cmp	rax, 0
	jl	.label_3086
.label_3125:
	mov	rax, qword ptr [rbp - 0x140]
	add	rax, 0
	lea	rsi, [rsi]
	cmp	rax, -0x8000
	nop	
	jl	.label_3086
	mov	eax, 0x7fff
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x140]
	add	rdx, 0
	nop	
	cmp	rcx, rdx
	jge	.label_3164
.label_3086:
	mov	al, 1
	mov	rcx, qword ptr [rbp - 0x140]
	mov	edx, ecx
	add	edx, 0
	mov	rsp, rsp
	mov	si, dx
	movsx	edx, si
	mov	dword ptr [rbp - 0x1b4], edx
	test	al, 1
	jne	.label_1929
	lea	rdi, [rdi]
	jmp	.label_2841
.label_3164:
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x140]
	mov	rsp, rsp
	mov	eax, edx
	add	eax, 0
	mov	rsp, rsp
	mov	si, ax
	movsx	eax, si
	mov	dword ptr [rbp - 0x1b4], eax
	mov	rbp, rbp
	test	cl, 1
	jne	.label_1929
	mov	rbp, rbp
	jmp	.label_2841
.label_2983:
	lea	rsi, [rsi]
	mov	al, 1
	test	al, 1
	jne	.label_3201
	jmp	.label_3204
.label_3201:
	lea	rdi, [rdi]
	xor	eax, eax
	mov	cl, al
	mov	rbp, rbp
	test	cl, 1
	mov	rsp, rsp
	jne	.label_3500
	nop	
	jmp	.label_3216
.label_3500:
	mov	al, 1
	mov	rsp, rsp
	test	al, 1
	jne	.label_3218
	jmp	.label_3225
.label_3218:
	lea	rdi, [rdi]
	xor	eax, eax
	mov	rbp, rbp
	mov	cl, al
	test	cl, 1
	mov	rsp, rsp
	jne	.label_3226
	mov	rbp, rbp
	jmp	.label_3592
.label_3226:
	mov	rax, qword ptr [rbp - 0x140]
	mov	rbp, rbp
	mov	ecx, eax
	cmp	ecx, 0x80000000
	jl	.label_1913
	lea	rdi, [rdi]
	jmp	.label_3238
.label_3592:
	mov	eax, 0x7fffffff
	mov	rcx, qword ptr [rbp - 0x140]
	mov	edx, ecx
	cmp	eax, edx
	mov	rsp, rsp
	jl	.label_1913
	jmp	.label_3238
.label_3225:
	mov	rax, qword ptr [rbp - 0x140]
	lea	rdi, [rdi]
	mov	ecx, eax
	cmp	ecx, 0
	jge	.label_3245
	lea	rsi, [rsi]
	xor	eax, eax
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x140]
	nop	
	mov	edx, ecx
	add	edx, 0
	lea	rsi, [rsi]
	cmp	eax, edx
	jle	.label_1913
	lea	rsi, [rsi]
	jmp	.label_3238
.label_3245:
	xor	eax, eax
	mov	cl, al
	nop	
	test	cl, 1
	lea	rdi, [rdi]
	jne	.label_3259
	lea	rsi, [rsi]
	jmp	.label_3263
.label_3259:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x140]
	mov	rsp, rsp
	mov	ecx, eax
	mov	rax, qword ptr [rbp - 0x140]
	mov	rsp, rsp
	mov	edx, eax
	mov	rbp, rbp
	add	edx, 0
	cmp	ecx, edx
	lea	rsi, [rsi]
	jle	.label_1913
	mov	rsp, rsp
	jmp	.label_3238
.label_3263:
	nop	
	mov	rax, qword ptr [rbp - 0x140]
	mov	ecx, eax
	lea	rdi, [rdi]
	add	ecx, 0
	cmp	ecx, 0
	jl	.label_1913
.label_3238:
	mov	rax, qword ptr [rbp - 0x140]
	lea	rdi, [rdi]
	mov	ecx, eax
	add	ecx, 0
	cmp	ecx, 0x80000000
	jl	.label_1913
	mov	eax, 0x7fffffff
	mov	rcx, qword ptr [rbp - 0x140]
	mov	edx, ecx
	mov	rbp, rbp
	add	edx, 0
	cmp	eax, edx
	jge	.label_3280
.label_1913:
	mov	al, 1
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x140]
	mov	edx, ecx
	add	edx, 0
	mov	dword ptr [rbp - 0x1b4], edx
	lea	rsi, [rsi]
	test	al, 1
	jne	.label_1929
	mov	rsp, rsp
	jmp	.label_2841
.label_3280:
	nop	
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x140]
	mov	eax, edx
	add	eax, 0
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x1b4], eax
	test	cl, 1
	jne	.label_1929
	mov	rbp, rbp
	jmp	.label_2841
.label_3216:
	mov	rsp, rsp
	mov	al, 1
	test	al, 1
	jne	.label_3310
	jmp	.label_3313
.label_3310:
	xor	eax, eax
	nop	
	mov	cl, al
	nop	
	test	cl, 1
	mov	rbp, rbp
	jne	.label_3314
	jmp	.label_3318
.label_3314:
	mov	rbp, rbp
	movabs	rax, 0x8000000000000000
	cmp	qword ptr [rbp - 0x140], rax
	jl	.label_3320
	jmp	.label_3325
.label_3318:
	movabs	rax, 0x7fffffffffffffff
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rbp - 0x140]
	jl	.label_3320
	jmp	.label_3325
.label_3313:
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x140], 0
	jge	.label_3334
	mov	rsp, rsp
	xor	eax, eax
	mov	ecx, eax
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x140]
	lea	rsi, [rsi]
	add	rdx, 0
	lea	rdi, [rdi]
	cmp	rcx, rdx
	jle	.label_3320
	nop	
	jmp	.label_3325
.label_3334:
	xor	eax, eax
	mov	cl, al
	nop	
	test	cl, 1
	nop	
	jne	.label_3352
	mov	rbp, rbp
	jmp	.label_3358
.label_3352:
	nop	
	mov	rax, qword ptr [rbp - 0x140]
	nop	
	mov	rcx, qword ptr [rbp - 0x140]
	lea	rsi, [rsi]
	add	rcx, 0
	lea	rsi, [rsi]
	cmp	rax, rcx
	jle	.label_3320
	mov	rbp, rbp
	jmp	.label_3325
.label_3358:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x140]
	nop	
	add	rax, 0
	nop	
	cmp	rax, 0
	mov	rbp, rbp
	jl	.label_3320
.label_3325:
	mov	rax, qword ptr [rbp - 0x140]
	nop	
	add	rax, 0
	mov	rbp, rbp
	cmp	rax, -0x80000000
	jl	.label_3320
	mov	eax, 0x7fffffff
	lea	rsi, [rsi]
	mov	ecx, eax
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x140]
	mov	rbp, rbp
	add	rdx, 0
	mov	rsp, rsp
	cmp	rcx, rdx
	nop	
	jge	.label_2590
.label_3320:
	mov	al, 1
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x140]
	mov	edx, ecx
	lea	rsi, [rsi]
	add	edx, 0
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x1b4], edx
	test	al, 1
	mov	rbp, rbp
	jne	.label_1929
	mov	rbp, rbp
	jmp	.label_2841
.label_2590:
	lea	rsi, [rsi]
	xor	eax, eax
	mov	cl, al
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x140]
	lea	rdi, [rdi]
	mov	eax, edx
	lea	rsi, [rsi]
	add	eax, 0
	mov	dword ptr [rbp - 0x1b4], eax
	lea	rdi, [rdi]
	test	cl, 1
	jne	.label_1929
	lea	rdi, [rdi]
	jmp	.label_2841
.label_3204:
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	nop	
	jne	.label_3401
	mov	rbp, rbp
	jmp	.label_3404
.label_3401:
	xor	eax, eax
	mov	rsp, rsp
	mov	cl, al
	test	cl, 1
	jne	.label_2818
	jmp	.label_3411
.label_2818:
	mov	rbp, rbp
	mov	al, 1
	mov	rsp, rsp
	test	al, 1
	jne	.label_3413
	mov	rsp, rsp
	jmp	.label_3419
.label_3413:
	lea	rdi, [rdi]
	xor	eax, eax
	lea	rsi, [rsi]
	mov	cl, al
	test	cl, 1
	jne	.label_3422
	lea	rdi, [rdi]
	jmp	.label_3428
.label_3422:
	nop	
	movabs	rax, 0x8000000000000000
	cmp	qword ptr [rbp - 0x140], rax
	jl	.label_3059
	mov	rsp, rsp
	jmp	.label_3437
.label_3428:
	lea	rsi, [rsi]
	movabs	rax, 0x7fffffffffffffff
	lea	rdi, [rdi]
	cmp	rax, qword ptr [rbp - 0x140]
	jl	.label_3059
	lea	rdi, [rdi]
	jmp	.label_3437
.label_3419:
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0x140], 0
	mov	rbp, rbp
	jge	.label_3449
	nop	
	xor	eax, eax
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x140]
	add	rdx, 0
	nop	
	cmp	rcx, rdx
	lea	rsi, [rsi]
	jle	.label_3059
	lea	rdi, [rdi]
	jmp	.label_3437
.label_3449:
	xor	eax, eax
	mov	cl, al
	mov	rbp, rbp
	test	cl, 1
	jne	.label_3464
	jmp	.label_3467
.label_3464:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x140]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x140]
	lea	rsi, [rsi]
	add	rcx, 0
	mov	rsp, rsp
	cmp	rax, rcx
	jle	.label_3059
	jmp	.label_3437
.label_3467:
	mov	rax, qword ptr [rbp - 0x140]
	add	rax, 0
	cmp	rax, 0
	nop	
	jl	.label_3059
.label_3437:
	mov	rsp, rsp
	movabs	rax, 0x8000000000000000
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x140]
	add	rcx, 0
	cmp	rcx, rax
	jl	.label_3059
	movabs	rax, 0x7fffffffffffffff
	mov	rcx, qword ptr [rbp - 0x140]
	mov	rbp, rbp
	add	rcx, 0
	cmp	rax, rcx
	lea	rsi, [rsi]
	jge	.label_3490
.label_3059:
	mov	rsp, rsp
	mov	al, 1
	mov	rcx, qword ptr [rbp - 0x140]
	lea	rsi, [rsi]
	add	rcx, 0
	mov	rsp, rsp
	mov	edx, ecx
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x1b4], edx
	test	al, 1
	lea	rsi, [rsi]
	jne	.label_1929
	mov	rsp, rsp
	jmp	.label_2841
.label_3490:
	xor	eax, eax
	mov	cl, al
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x140]
	add	rdx, 0
	mov	rsp, rsp
	mov	eax, edx
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x1b4], eax
	lea	rsi, [rsi]
	test	cl, 1
	mov	rbp, rbp
	jne	.label_1929
	mov	rsp, rsp
	jmp	.label_2841
.label_3411:
	mov	rsp, rsp
	mov	al, 1
	nop	
	test	al, 1
	jne	.label_3520
	jmp	.label_3504
.label_3520:
	xor	eax, eax
	mov	cl, al
	mov	rbp, rbp
	test	cl, 1
	nop	
	jne	.label_3509
	jmp	.label_3525
.label_3509:
	mov	rbp, rbp
	movabs	rax, 0x8000000000000000
	cmp	qword ptr [rbp - 0x140], rax
	jl	.label_3527
	jmp	.label_3533
.label_3525:
	lea	rsi, [rsi]
	movabs	rax, 0x7fffffffffffffff
	mov	rsp, rsp
	cmp	rax, qword ptr [rbp - 0x140]
	nop	
	jl	.label_3527
	jmp	.label_3533
.label_3504:
	cmp	qword ptr [rbp - 0x140], 0
	mov	rbp, rbp
	jge	.label_3547
	lea	rdi, [rdi]
	xor	eax, eax
	mov	rbp, rbp
	mov	ecx, eax
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x140]
	add	rdx, 0
	mov	rsp, rsp
	cmp	rcx, rdx
	jle	.label_3527
	jmp	.label_3533
.label_3547:
	lea	rsi, [rsi]
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_3560
	jmp	.label_3563
.label_3560:
	mov	rax, qword ptr [rbp - 0x140]
	nop	
	mov	rcx, qword ptr [rbp - 0x140]
	lea	rsi, [rsi]
	add	rcx, 0
	nop	
	cmp	rax, rcx
	lea	rsi, [rsi]
	jle	.label_3527
	jmp	.label_3533
.label_3563:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x140]
	lea	rdi, [rdi]
	add	rax, 0
	cmp	rax, 0
	jl	.label_3527
.label_3533:
	movabs	rax, 0x8000000000000000
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x140]
	mov	rbp, rbp
	add	rcx, 0
	cmp	rcx, rax
	jl	.label_3527
	mov	rsp, rsp
	movabs	rax, 0x7fffffffffffffff
	mov	rcx, qword ptr [rbp - 0x140]
	add	rcx, 0
	lea	rdi, [rdi]
	cmp	rax, rcx
	jge	.label_3585
.label_3527:
	nop	
	mov	al, 1
	mov	rcx, qword ptr [rbp - 0x140]
	lea	rsi, [rsi]
	add	rcx, 0
	mov	edx, ecx
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x1b4], edx
	lea	rsi, [rsi]
	test	al, 1
	jne	.label_1929
	mov	rbp, rbp
	jmp	.label_2841
.label_3585:
	lea	rdi, [rdi]
	xor	eax, eax
	mov	rsp, rsp
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x140]
	mov	rbp, rbp
	add	rdx, 0
	mov	rbp, rbp
	mov	eax, edx
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x1b4], eax
	test	cl, 1
	jne	.label_1929
	jmp	.label_2841
.label_3404:
	xor	eax, eax
	mov	rbp, rbp
	mov	cl, al
	test	cl, 1
	jne	.label_3604
	lea	rsi, [rsi]
	jmp	.label_3608
.label_3604:
	mov	al, 1
	test	al, 1
	jne	.label_3613
	mov	rbp, rbp
	jmp	.label_3615
.label_3613:
	xor	eax, eax
	nop	
	mov	cl, al
	test	cl, 1
	lea	rdi, [rdi]
	jne	.label_3617
	nop	
	jmp	.label_3621
.label_3617:
	movabs	rax, 0x8000000000000000
	nop	
	cmp	qword ptr [rbp - 0x140], rax
	jl	.label_2247
	lea	rdi, [rdi]
	jmp	.label_2290
.label_3621:
	lea	rdi, [rdi]
	movabs	rax, 0x7fffffffffffffff
	lea	rdi, [rdi]
	cmp	rax, qword ptr [rbp - 0x140]
	jl	.label_2247
	lea	rsi, [rsi]
	jmp	.label_2290
.label_3615:
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x140], 0
	jge	.label_3641
	xor	eax, eax
	mov	ecx, eax
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x140]
	add	rdx, 0
	lea	rsi, [rsi]
	cmp	rcx, rdx
	jle	.label_2247
	mov	rsp, rsp
	jmp	.label_2290
.label_3641:
	mov	rbp, rbp
	xor	eax, eax
	mov	rbp, rbp
	mov	cl, al
	test	cl, 1
	jne	.label_3655
	jmp	.label_3661
.label_3655:
	mov	rax, qword ptr [rbp - 0x140]
	mov	rcx, qword ptr [rbp - 0x140]
	lea	rdi, [rdi]
	add	rcx, 0
	lea	rdi, [rdi]
	cmp	rax, rcx
	jle	.label_2247
	mov	rsp, rsp
	jmp	.label_2290
.label_3661:
	mov	rax, qword ptr [rbp - 0x140]
	lea	rdi, [rdi]
	add	rax, 0
	cmp	rax, 0
	lea	rdi, [rdi]
	jl	.label_2247
.label_2290:
	movabs	rax, 0x8000000000000000
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x140]
	add	rcx, 0
	cmp	rcx, rax
	nop	
	jl	.label_2247
	mov	rbp, rbp
	movabs	rax, 0x7fffffffffffffff
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x140]
	lea	rsi, [rsi]
	add	rcx, 0
	cmp	rax, rcx
	lea	rsi, [rsi]
	jge	.label_3681
.label_2247:
	lea	rdi, [rdi]
	mov	al, 1
	mov	rcx, qword ptr [rbp - 0x140]
	add	rcx, 0
	mov	edx, ecx
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x1b4], edx
	lea	rsi, [rsi]
	test	al, 1
	jne	.label_1929
	jmp	.label_2841
.label_3681:
	xor	eax, eax
	mov	cl, al
	nop	
	mov	rdx, qword ptr [rbp - 0x140]
	mov	rbp, rbp
	add	rdx, 0
	mov	eax, edx
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x1b4], eax
	test	cl, 1
	jne	.label_1929
	nop	
	jmp	.label_2841
.label_3608:
	mov	al, 1
	mov	rsp, rsp
	test	al, 1
	jne	.label_3702
	jmp	.label_3704
.label_3702:
	xor	eax, eax
	nop	
	mov	cl, al
	test	cl, 1
	mov	rsp, rsp
	jne	.label_3706
	mov	rbp, rbp
	jmp	.label_2822
.label_3706:
	movabs	rax, 0x8000000000000000
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x140], rax
	jl	.label_2558
	jmp	.label_3713
.label_2822:
	mov	rbp, rbp
	movabs	rax, 0x7fffffffffffffff
	cmp	rax, qword ptr [rbp - 0x140]
	jl	.label_2558
	lea	rdi, [rdi]
	jmp	.label_3713
.label_3704:
	cmp	qword ptr [rbp - 0x140], 0
	jge	.label_3726
	lea	rsi, [rsi]
	xor	eax, eax
	mov	rbp, rbp
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x140]
	add	rdx, 0
	lea	rdi, [rdi]
	cmp	rcx, rdx
	nop	
	jle	.label_2558
	jmp	.label_3713
.label_3726:
	mov	rsp, rsp
	xor	eax, eax
	nop	
	mov	cl, al
	lea	rsi, [rsi]
	test	cl, 1
	jne	.label_3739
	lea	rsi, [rsi]
	jmp	.label_3742
.label_3739:
	mov	rax, qword ptr [rbp - 0x140]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x140]
	mov	rbp, rbp
	add	rcx, 0
	lea	rdi, [rdi]
	cmp	rax, rcx
	jle	.label_2558
	jmp	.label_3713
.label_3742:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x140]
	add	rax, 0
	cmp	rax, 0
	nop	
	jl	.label_2558
.label_3713:
	mov	rsp, rsp
	movabs	rax, 0x8000000000000000
	mov	rcx, qword ptr [rbp - 0x140]
	add	rcx, 0
	cmp	rcx, rax
	mov	rsp, rsp
	jl	.label_2558
	movabs	rax, 0x7fffffffffffffff
	mov	rcx, qword ptr [rbp - 0x140]
	mov	rbp, rbp
	add	rcx, 0
	cmp	rax, rcx
	nop	
	jge	.label_3763
.label_2558:
	lea	rsi, [rsi]
	mov	al, 1
	nop	
	mov	rcx, qword ptr [rbp - 0x140]
	mov	rbp, rbp
	add	rcx, 0
	lea	rdi, [rdi]
	mov	edx, ecx
	nop	
	mov	dword ptr [rbp - 0x1b4], edx
	test	al, 1
	mov	rsp, rsp
	jne	.label_1929
	nop	
	jmp	.label_2841
.label_3763:
	mov	rbp, rbp
	xor	eax, eax
	mov	rbp, rbp
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x140]
	mov	rbp, rbp
	add	rdx, 0
	mov	eax, edx
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x1b4], eax
	test	cl, 1
	jne	.label_1929
	lea	rdi, [rdi]
	jmp	.label_2841
.label_1929:
	test	byte ptr [rbp - 0xa7], 1
	lea	rsi, [rsi]
	je	.label_3787
	lea	rsi, [rsi]
	movabs	rdi, OFFSET FLAT:.str.39_0
	lea	rdi, [rdi]
	call	gettext
	lea	rsi, [rsi]
	mov	rdi, rax
	lea	rdi, [rdi]
	mov	al, 0
	nop	
	call	dbg_printf
.label_3787:
	lea	rsi, [rsi]
	jmp	.label_1907
.label_2841:
	cmp	qword ptr [rbp - 0xb8], 0
	jne	.label_3796
	mov	rbp, rbp
	test	byte ptr [rbp - 0xdf], 1
	mov	rsp, rsp
	je	.label_3799
	cmp	qword ptr [rbp - 0xd8], 0
	jne	.label_3799
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0xd0], 0
	lea	rsi, [rsi]
	jne	.label_3799
.label_3796:
	mov	rdi, qword ptr [rbp - 0x138]
	lea	rdi, [rdi]
	mov	esi, dword ptr [rbp - 0x164]
	mov	rsp, rsp
	call	to_hour
	mov	dword ptr [rbp - 0x1b8], eax
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x1b8], 0
	jge	.label_3815
	cmp	dword ptr [rbp - 0x164], 0
	jne	.label_3620
	nop	
	movabs	rax, OFFSET FLAT:.str.40_0
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0xc98], rax
	lea	rdi, [rdi]
	jmp	.label_3826
.label_3620:
	movabs	rax, OFFSET FLAT:.str_0
	mov	rbp, rbp
	movabs	rcx, OFFSET FLAT:.str.41_0
	mov	rsp, rsp
	cmp	dword ptr [rbp - 0x164], 1
	nop	
	cmove	rax, rcx
	mov	qword ptr [rbp - 0xc98], rax
.label_3826:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0xc98]
	mov	qword ptr [rbp - 0x248], rax
	test	byte ptr [rbp - 0xa7], 1
	lea	rsi, [rsi]
	je	.label_3844
	nop	
	movabs	rdi, OFFSET FLAT:.str.43
	lea	rdi, [rdi]
	call	gettext
	mov	rsi, qword ptr [rbp - 0x138]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x248]
	mov	rsp, rsp
	mov	rdi, rax
	mov	al, 0
	call	dbg_printf
.label_3844:
	jmp	.label_1907
.label_3815:
	mov	rax, qword ptr [rbp - 0x130]
	lea	rdi, [rdi]
	mov	ecx, eax
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x1bc], ecx
	mov	rax, qword ptr [rbp - 0x128]
	mov	ecx, eax
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x1c0], ecx
	nop	
	test	byte ptr [rbp - 0xa7], 1
	je	.label_3863
	cmp	qword ptr [rbp - 0xb8], 0
	lea	rdi, [rdi]
	je	.label_1904
	mov	rsp, rsp
	movabs	rdi, OFFSET FLAT:.str.44
	mov	rbp, rbp
	call	gettext
	mov	qword ptr [rbp - 0xbb0], rax
	jmp	.label_1915
.label_1904:
	mov	rbp, rbp
	movabs	rdi, OFFSET FLAT:.str.45
	call	gettext
	mov	rbp, rbp
	mov	qword ptr [rbp - 0xbb0], rax
.label_1915:
	mov	rax, qword ptr [rbp - 0xbb0]
	lea	rdi, [rdi]
	lea	rdi, [rbp - 0x1c0]
	mov	edx, 0x64
	mov	rsp, rsp
	lea	rsi, [rbp - 0xd20]
	mov	qword ptr [rbp - 0xb58], rax
	mov	rbp, rbp
	call	debug_strftime
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0xb58]
	mov	rsi, rax
	lea	rsi, [rsi]
	mov	al, 0
	call	dbg_printf
.label_3863:
	mov	rbp, rbp
	jmp	.label_1944
.label_3799:
	mov	dword ptr [rbp - 0x1c0], 0
	nop	
	mov	dword ptr [rbp - 0x1bc], 0
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x1b8], 0
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x120], 0
	lea	rsi, [rsi]
	test	byte ptr [rbp - 0xa7], 1
	mov	rsp, rsp
	je	.label_1946
	movabs	rdi, OFFSET FLAT:.str.46
	mov	al, 0
	lea	rdi, [rdi]
	call	dbg_printf
.label_1946:
	lea	rsi, [rsi]
	jmp	.label_1944
.label_1944:
	mov	rax, qword ptr [rbp - 0xd8]
	mov	rsp, rsp
	or	rax, qword ptr [rbp - 0xd0]
	or	rax, qword ptr [rbp - 0xb8]
	cmp	rax, 0
	mov	rbp, rbp
	je	.label_1981
	mov	dword ptr [rbp - 0x1a0], 0xffffffff
.label_1981:
	cmp	qword ptr [rbp - 0xc8], 0
	je	.label_1994
	mov	eax, dword ptr [rbp - 0x16c]
	mov	dword ptr [rbp - 0x1a0], eax
.label_1994:
	lea	rsi, [rbp - 0x1c0]
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x1c0]
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x868], eax
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x1bc]
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x864], eax
	mov	eax, dword ptr [rbp - 0x1b8]
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x860], eax
	nop	
	mov	eax, dword ptr [rbp - 0x1b4]
	mov	dword ptr [rbp - 0x85c], eax
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x1b0]
	mov	dword ptr [rbp - 0x858], eax
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x1ac]
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x854], eax
	mov	eax, dword ptr [rbp - 0x1a0]
	mov	dword ptr [rbp - 0x848], eax
	mov	dword ptr [rbp - 0x1a8], 0xffffffff
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x228]
	call	mktime_z
	lea	rdi, [rbp - 0x868]
	lea	rsi, [rsi]
	lea	rsi, [rbp - 0x1c0]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x488], rax
	call	mktime_ok
	nop	
	test	al, 1
	mov	rbp, rbp
	jne	.label_2037
	mov	byte ptr [rbp - 0x39d], 0
	cmp	qword ptr [rbp - 0xb0], 0
	lea	rdi, [rdi]
	setne	al
	and	al, 1
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x3f3], al
	test	byte ptr [rbp - 0x3f3], 1
	je	.label_2041
	lea	rax, [rbp - 0xda0]
	mov	rsp, rsp
	mov	byte ptr [rbp - 0xd9e], 0x58
	mov	byte ptr [rbp - 0xd9f], 0x58
	mov	byte ptr [rbp - 0xda0], 0x58
	mov	edi, dword ptr [rbp - 0x168]
	lea	rdi, [rdi]
	add	rax, 3
	lea	rdi, [rdi]
	mov	rsi, rax
	lea	rdi, [rdi]
	call	time_zone_str
	lea	rdi, [rdi]
	lea	rdi, [rbp - 0xda0]
	mov	qword ptr [rbp - 0x298], rax
	call	tzalloc
	mov	qword ptr [rbp - 0x220], rax
	cmp	qword ptr [rbp - 0x220], 0
	jne	.label_2067
	test	byte ptr [rbp - 0xa7], 1
	mov	rsp, rsp
	je	.label_2076
	lea	rsi, [rsi]
	movabs	rdi, OFFSET FLAT:.str.47
	call	gettext
	lea	rsi, [rsi]
	lea	rsi, [rbp - 0xda0]
	lea	rsi, [rsi]
	mov	rdi, rax
	lea	rsi, [rsi]
	mov	al, 0
	lea	rdi, [rdi]
	call	dbg_printf
.label_2076:
	jmp	.label_1907
.label_2067:
	lea	rsi, [rbp - 0x1c0]
	nop	
	mov	eax, dword ptr [rbp - 0x868]
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x1c0], eax
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x864]
	mov	dword ptr [rbp - 0x1bc], eax
	mov	eax, dword ptr [rbp - 0x860]
	mov	dword ptr [rbp - 0x1b8], eax
	mov	eax, dword ptr [rbp - 0x85c]
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x1b4], eax
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x858]
	mov	dword ptr [rbp - 0x1b0], eax
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x854]
	mov	dword ptr [rbp - 0x1ac], eax
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x848]
	mov	dword ptr [rbp - 0x1a0], eax
	mov	dword ptr [rbp - 0x1a8], 0xffffffff
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x220]
	mov	rsp, rsp
	call	mktime_z
	lea	rdi, [rbp - 0x868]
	mov	rbp, rbp
	lea	rsi, [rbp - 0x1c0]
	mov	qword ptr [rbp - 0x488], rax
	mov	rsp, rsp
	call	mktime_ok
	and	al, 1
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x39d], al
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x220]
	call	tzfree
.label_2041:
	test	byte ptr [rbp - 0x39d], 1
	mov	rbp, rbp
	jne	.label_2144
	mov	rbp, rbp
	lea	rdi, [rbp - 0x868]
	lea	rdi, [rdi]
	lea	rsi, [rbp - 0x1c0]
	mov	rbp, rbp
	lea	rdx, [rbp - 0x180]
	mov	rbp, rbp
	mov	al, byte ptr [rbp - 0x3f3]
	and	al, 1
	mov	rsp, rsp
	movzx	ecx, al
	lea	rsi, [rsi]
	call	debug_mktime_not_ok
	mov	rsp, rsp
	jmp	.label_1907
.label_2144:
	jmp	.label_2037
.label_2037:
	nop	
	cmp	qword ptr [rbp - 0xd0], 0
	je	.label_2171
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0xd8], 0
	nop	
	jne	.label_2171
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_2177
	nop	
	jmp	.label_2181
.label_2177:
	mov	rbp, rbp
	xor	eax, eax
	mov	cl, al
	mov	rbp, rbp
	test	cl, 1
	nop	
	jne	.label_2183
	nop	
	jmp	.label_2190
.label_2183:
	xor	eax, eax
	lea	rdi, [rdi]
	mov	cl, al
	lea	rsi, [rsi]
	test	cl, 1
	jne	.label_2191
	mov	rbp, rbp
	jmp	.label_2200
.label_2191:
	lea	rdi, [rdi]
	xor	eax, eax
	mov	rbp, rbp
	mov	cl, al
	lea	rdi, [rdi]
	xor	eax, eax
	mov	rbp, rbp
	mov	edx, eax
	mov	rsi, qword ptr [rbp - 0x178]
	cmp	rdx, qword ptr [rbp - 0x178]
	mov	qword ptr [rbp - 0x9a0], rsi
	mov	byte ptr [rbp - 0xbd9], cl
	jge	.label_2203
	mov	eax, dword ptr [rbp - 0x1a8]
	mov	rbp, rbp
	cmp	eax, dword ptr [rbp - 0x170]
	setne	cl
	mov	rbp, rbp
	mov	byte ptr [rbp - 0xbd9], cl
.label_2203:
	mov	al, byte ptr [rbp - 0xbd9]
	lea	rsi, [rsi]
	and	al, 1
	nop	
	movzx	ecx, al
	mov	rbp, rbp
	movsxd	rdx, ecx
	mov	rsi, qword ptr [rbp - 0x9a0]
	lea	rsi, [rsi]
	sub	rsi, rdx
	mov	al, sil
	nop	
	movsx	ecx, al
	mov	rsp, rsp
	cmp	ecx, 0
	jge	.label_2226
	xor	eax, eax
	nop	
	mov	cl, al
	mov	rbp, rbp
	xor	eax, eax
	mov	edx, eax
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x178]
	mov	rsp, rsp
	cmp	rdx, qword ptr [rbp - 0x178]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x820], rsi
	mov	byte ptr [rbp - 0x9a1], cl
	jge	.label_2814
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x1a8]
	mov	rbp, rbp
	cmp	eax, dword ptr [rbp - 0x170]
	setne	cl
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x9a1], cl
.label_2814:
	mov	al, byte ptr [rbp - 0x9a1]
	and	al, 1
	movzx	ecx, al
	nop	
	movsxd	rdx, ecx
	mov	rsi, qword ptr [rbp - 0x820]
	lea	rdi, [rdi]
	sub	rsi, rdx
	mov	rsp, rsp
	mov	al, sil
	mov	rbp, rbp
	movsx	ecx, al
	mov	rsp, rsp
	cmp	ecx, 0x12492492
	mov	rsp, rsp
	jl	.label_2016
	jmp	.label_2278
.label_2226:
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_2280
	jmp	.label_2282
.label_2280:
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	lea	rsi, [rsi]
	jne	.label_2016
	mov	rsp, rsp
	jmp	.label_2278
.label_2282:
	lea	rdi, [rdi]
	xor	eax, eax
	mov	cl, al
	nop	
	xor	eax, eax
	mov	edx, eax
	mov	rsi, qword ptr [rbp - 0x178]
	nop	
	cmp	rdx, qword ptr [rbp - 0x178]
	mov	qword ptr [rbp - 0x760], rsi
	nop	
	mov	byte ptr [rbp - 0x1d2], cl
	nop	
	jge	.label_2287
	mov	eax, dword ptr [rbp - 0x1a8]
	cmp	eax, dword ptr [rbp - 0x170]
	lea	rsi, [rsi]
	setne	cl
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x1d2], cl
.label_2287:
	mov	al, byte ptr [rbp - 0x1d2]
	mov	ecx, 0xedb6db6e
	lea	rsi, [rsi]
	and	al, 1
	movzx	edx, al
	movsxd	rsi, edx
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x760]
	mov	rbp, rbp
	sub	rdi, rsi
	mov	al, dil
	mov	rsp, rsp
	movsx	edx, al
	cmp	ecx, edx
	nop	
	jl	.label_2016
	jmp	.label_2278
.label_2200:
	mov	rsp, rsp
	xor	eax, eax
	mov	cl, al
	mov	rsp, rsp
	test	cl, 1
	lea	rdi, [rdi]
	jne	.label_2315
	jmp	.label_2321
.label_2315:
	nop	
	xor	eax, eax
	lea	rsi, [rsi]
	mov	cl, al
	test	cl, 1
	jne	.label_2016
	jmp	.label_2278
.label_2321:
	nop	
	xor	eax, eax
	mov	cl, al
	lea	rdi, [rdi]
	xor	eax, eax
	lea	rdi, [rdi]
	mov	edx, eax
	mov	rsi, qword ptr [rbp - 0x178]
	mov	rsp, rsp
	cmp	rdx, qword ptr [rbp - 0x178]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x9e0], rsi
	mov	byte ptr [rbp - 0x8b9], cl
	jge	.label_2328
	mov	eax, dword ptr [rbp - 0x1a8]
	lea	rsi, [rsi]
	cmp	eax, dword ptr [rbp - 0x170]
	lea	rdi, [rdi]
	setne	cl
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x8b9], cl
.label_2328:
	mov	rsp, rsp
	mov	al, byte ptr [rbp - 0x8b9]
	and	al, 1
	mov	rbp, rbp
	movzx	ecx, al
	movsxd	rdx, ecx
	mov	rsi, qword ptr [rbp - 0x9e0]
	sub	rsi, rdx
	mov	al, sil
	lea	rsi, [rsi]
	movsx	ecx, al
	nop	
	cmp	ecx, 0
	jge	.label_2357
	xor	eax, eax
	mov	cl, al
	mov	rsp, rsp
	xor	eax, eax
	mov	rbp, rbp
	mov	edx, eax
	mov	rsi, qword ptr [rbp - 0x178]
	lea	rdi, [rdi]
	cmp	rdx, qword ptr [rbp - 0x178]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0xba0], rsi
	mov	byte ptr [rbp - 0x319], cl
	lea	rsi, [rsi]
	jge	.label_2378
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x1a8]
	mov	rsp, rsp
	cmp	eax, dword ptr [rbp - 0x170]
	setne	cl
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x319], cl
.label_2378:
	mov	al, byte ptr [rbp - 0x319]
	lea	rdi, [rdi]
	and	al, 1
	nop	
	movzx	ecx, al
	nop	
	movsxd	rdx, ecx
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0xba0]
	lea	rsi, [rsi]
	sub	rsi, rdx
	mov	rsp, rsp
	mov	al, sil
	lea	rdi, [rdi]
	movsx	ecx, al
	mov	rsp, rsp
	cmp	ecx, 0xedb6db6e
	jl	.label_2016
	jmp	.label_2278
.label_2357:
	xor	eax, eax
	mov	cl, al
	xor	eax, eax
	mov	edx, eax
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x178]
	lea	rsi, [rsi]
	cmp	rdx, qword ptr [rbp - 0x178]
	mov	qword ptr [rbp - 0xc78], rsi
	mov	byte ptr [rbp - 0x3da], cl
	jge	.label_2411
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x1a8]
	cmp	eax, dword ptr [rbp - 0x170]
	setne	cl
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x3da], cl
.label_2411:
	mov	rbp, rbp
	mov	al, byte ptr [rbp - 0x3da]
	lea	rsi, [rsi]
	mov	ecx, 0x12492492
	and	al, 1
	lea	rdi, [rdi]
	movzx	edx, al
	movsxd	rsi, edx
	mov	rdi, qword ptr [rbp - 0xc78]
	sub	rdi, rsi
	mov	al, dil
	movsx	edx, al
	nop	
	cmp	ecx, edx
	lea	rdi, [rdi]
	jl	.label_2016
.label_2278:
	lea	rdi, [rdi]
	xor	eax, eax
	lea	rsi, [rsi]
	mov	cl, al
	xor	eax, eax
	mov	edx, eax
	mov	rsi, qword ptr [rbp - 0x178]
	cmp	rdx, qword ptr [rbp - 0x178]
	nop	
	mov	qword ptr [rbp - 0x40], rsi
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x3f2], cl
	mov	rsp, rsp
	jge	.label_2448
	mov	eax, dword ptr [rbp - 0x1a8]
	cmp	eax, dword ptr [rbp - 0x170]
	setne	cl
	mov	byte ptr [rbp - 0x3f2], cl
.label_2448:
	lea	rsi, [rsi]
	mov	al, byte ptr [rbp - 0x3f2]
	and	al, 1
	lea	rsi, [rsi]
	movzx	ecx, al
	mov	rsp, rsp
	movsxd	rdx, ecx
	mov	rsi, qword ptr [rbp - 0x40]
	mov	rsp, rsp
	sub	rsi, rdx
	mov	al, sil
	mov	rbp, rbp
	movsx	ecx, al
	imul	ecx, ecx, 7
	lea	rdi, [rdi]
	cmp	ecx, -0x80
	jl	.label_2016
	xor	eax, eax
	mov	rsp, rsp
	mov	cl, al
	xor	eax, eax
	mov	edx, eax
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x178]
	cmp	rdx, qword ptr [rbp - 0x178]
	nop	
	mov	qword ptr [rbp - 0xd30], rsi
	mov	byte ptr [rbp - 0x891], cl
	jge	.label_2485
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x1a8]
	lea	rdi, [rdi]
	cmp	eax, dword ptr [rbp - 0x170]
	setne	cl
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x891], cl
.label_2485:
	mov	al, byte ptr [rbp - 0x891]
	mov	rsp, rsp
	mov	ecx, 0x7f
	lea	rdi, [rdi]
	and	al, 1
	nop	
	movzx	edx, al
	movsxd	rsi, edx
	mov	rdi, qword ptr [rbp - 0xd30]
	lea	rsi, [rsi]
	sub	rdi, rsi
	lea	rdi, [rdi]
	mov	al, dil
	movsx	edx, al
	mov	rbp, rbp
	imul	edx, edx, 7
	cmp	ecx, edx
	nop	
	jge	.label_2512
.label_2016:
	xor	eax, eax
	lea	rsi, [rsi]
	mov	cl, al
	xor	eax, eax
	nop	
	mov	edx, eax
	mov	rsi, qword ptr [rbp - 0x178]
	lea	rsi, [rsi]
	cmp	rdx, qword ptr [rbp - 0x178]
	mov	qword ptr [rbp - 0x5f8], rsi
	mov	byte ptr [rbp - 0x31], cl
	lea	rdi, [rdi]
	jge	.label_2524
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x1a8]
	mov	rsp, rsp
	cmp	eax, dword ptr [rbp - 0x170]
	lea	rsi, [rsi]
	setne	cl
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x31], cl
.label_2524:
	lea	rdi, [rdi]
	mov	al, byte ptr [rbp - 0x31]
	nop	
	mov	cl, 1
	lea	rsi, [rsi]
	and	al, 1
	movzx	edx, al
	movsxd	rsi, edx
	mov	rdi, qword ptr [rbp - 0x5f8]
	sub	rdi, rsi
	nop	
	mov	al, dil
	movsx	edx, al
	lea	rdi, [rdi]
	imul	edx, edx, 7
	mov	rbp, rbp
	mov	al, dl
	movsx	rsi, al
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x650], rsi
	test	cl, 1
	lea	rsi, [rsi]
	jne	.label_1987
	jmp	.label_2014
.label_2512:
	mov	rbp, rbp
	xor	eax, eax
	mov	cl, al
	xor	eax, eax
	lea	rdi, [rdi]
	mov	edx, eax
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x178]
	cmp	rdx, qword ptr [rbp - 0x178]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x780], rsi
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x7b5], cl
	lea	rsi, [rsi]
	jge	.label_2561
	mov	eax, dword ptr [rbp - 0x1a8]
	cmp	eax, dword ptr [rbp - 0x170]
	setne	cl
	nop	
	mov	byte ptr [rbp - 0x7b5], cl
.label_2561:
	mov	al, byte ptr [rbp - 0x7b5]
	mov	rbp, rbp
	xor	ecx, ecx
	nop	
	mov	dl, cl
	mov	rsp, rsp
	and	al, 1
	mov	rbp, rbp
	movzx	ecx, al
	movsxd	rsi, ecx
	mov	rdi, qword ptr [rbp - 0x780]
	nop	
	sub	rdi, rsi
	lea	rdi, [rdi]
	mov	al, dil
	movsx	ecx, al
	imul	ecx, ecx, 7
	lea	rdi, [rdi]
	mov	al, cl
	movsx	rsi, al
	mov	qword ptr [rbp - 0x650], rsi
	test	dl, 1
	jne	.label_1987
	mov	rsp, rsp
	jmp	.label_2014
.label_2190:
	xor	eax, eax
	nop	
	mov	cl, al
	lea	rdi, [rdi]
	test	cl, 1
	mov	rsp, rsp
	jne	.label_2602
	nop	
	jmp	.label_2607
.label_2602:
	xor	eax, eax
	mov	cl, al
	lea	rdi, [rdi]
	xor	eax, eax
	mov	edx, eax
	mov	rsi, qword ptr [rbp - 0x178]
	cmp	rdx, qword ptr [rbp - 0x178]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x1c8], rsi
	nop	
	mov	byte ptr [rbp - 0xa21], cl
	lea	rdi, [rdi]
	jge	.label_2609
	mov	eax, dword ptr [rbp - 0x1a8]
	mov	rbp, rbp
	cmp	eax, dword ptr [rbp - 0x170]
	setne	cl
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0xa21], cl
.label_2609:
	mov	al, byte ptr [rbp - 0xa21]
	lea	rsi, [rsi]
	and	al, 1
	lea	rsi, [rsi]
	movzx	ecx, al
	mov	rsp, rsp
	movsxd	rdx, ecx
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x1c8]
	sub	rsi, rdx
	mov	rbp, rbp
	cmp	rsi, 0
	jge	.label_2631
	xor	eax, eax
	lea	rdi, [rdi]
	mov	cl, al
	xor	eax, eax
	nop	
	mov	edx, eax
	mov	rsi, qword ptr [rbp - 0x178]
	mov	rsp, rsp
	cmp	rdx, qword ptr [rbp - 0x178]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x9f0], rsi
	nop	
	mov	byte ptr [rbp - 0x6d1], cl
	mov	rsp, rsp
	jge	.label_2022
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x1a8]
	cmp	eax, dword ptr [rbp - 0x170]
	lea	rdi, [rdi]
	setne	cl
	mov	byte ptr [rbp - 0x6d1], cl
.label_2022:
	mov	al, byte ptr [rbp - 0x6d1]
	lea	rdi, [rdi]
	movabs	rcx, 0x1249249249249249
	and	al, 1
	mov	rsp, rsp
	movzx	edx, al
	movsxd	rsi, edx
	mov	rdi, qword ptr [rbp - 0x9f0]
	sub	rdi, rsi
	cmp	rdi, rcx
	jl	.label_2663
	jmp	.label_2673
.label_2631:
	lea	rsi, [rsi]
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	mov	rbp, rbp
	jne	.label_2674
	nop	
	jmp	.label_2265
.label_2674:
	xor	eax, eax
	lea	rdi, [rdi]
	mov	cl, al
	mov	rsp, rsp
	test	cl, 1
	jne	.label_2663
	jmp	.label_2673
.label_2265:
	xor	eax, eax
	mov	rbp, rbp
	mov	cl, al
	lea	rdi, [rdi]
	xor	eax, eax
	nop	
	mov	edx, eax
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x178]
	cmp	rdx, qword ptr [rbp - 0x178]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x9e8], rsi
	mov	byte ptr [rbp - 0xa09], cl
	jge	.label_2686
	nop	
	mov	eax, dword ptr [rbp - 0x1a8]
	cmp	eax, dword ptr [rbp - 0x170]
	setne	cl
	mov	byte ptr [rbp - 0xa09], cl
.label_2686:
	mov	al, byte ptr [rbp - 0xa09]
	movabs	rcx, 0xedb6db6db6db6db7
	and	al, 1
	mov	rbp, rbp
	movzx	edx, al
	movsxd	rsi, edx
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x9e8]
	sub	rdi, rsi
	cmp	rcx, rdi
	lea	rdi, [rdi]
	jl	.label_2663
	lea	rsi, [rsi]
	jmp	.label_2673
.label_2607:
	xor	eax, eax
	mov	rsp, rsp
	mov	cl, al
	nop	
	test	cl, 1
	lea	rsi, [rsi]
	jne	.label_3846
	jmp	.label_2562
.label_3846:
	xor	eax, eax
	lea	rdi, [rdi]
	mov	cl, al
	lea	rsi, [rsi]
	test	cl, 1
	mov	rbp, rbp
	jne	.label_2663
	jmp	.label_2673
.label_2562:
	lea	rsi, [rsi]
	xor	eax, eax
	mov	rsp, rsp
	mov	cl, al
	xor	eax, eax
	lea	rdi, [rdi]
	mov	edx, eax
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x178]
	mov	rsp, rsp
	cmp	rdx, qword ptr [rbp - 0x178]
	mov	qword ptr [rbp - 0x1f0], rsi
	mov	rbp, rbp
	mov	byte ptr [rbp - 0xa0a], cl
	lea	rdi, [rdi]
	jge	.label_2723
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x1a8]
	lea	rsi, [rsi]
	cmp	eax, dword ptr [rbp - 0x170]
	lea	rdi, [rdi]
	setne	cl
	mov	byte ptr [rbp - 0xa0a], cl
.label_2723:
	mov	rbp, rbp
	mov	al, byte ptr [rbp - 0xa0a]
	lea	rsi, [rsi]
	and	al, 1
	lea	rdi, [rdi]
	movzx	ecx, al
	mov	rsp, rsp
	movsxd	rdx, ecx
	mov	rsi, qword ptr [rbp - 0x1f0]
	sub	rsi, rdx
	cmp	rsi, 0
	jge	.label_2990
	xor	eax, eax
	mov	cl, al
	xor	eax, eax
	nop	
	mov	edx, eax
	mov	rsi, qword ptr [rbp - 0x178]
	nop	
	cmp	rdx, qword ptr [rbp - 0x178]
	mov	qword ptr [rbp - 0x410], rsi
	mov	byte ptr [rbp - 0xdd5], cl
	jge	.label_2759
	mov	eax, dword ptr [rbp - 0x1a8]
	cmp	eax, dword ptr [rbp - 0x170]
	setne	cl
	mov	byte ptr [rbp - 0xdd5], cl
.label_2759:
	mov	rbp, rbp
	mov	al, byte ptr [rbp - 0xdd5]
	movabs	rcx, 0xedb6db6db6db6db7
	and	al, 1
	lea	rdi, [rdi]
	movzx	edx, al
	mov	rsp, rsp
	movsxd	rsi, edx
	mov	rdi, qword ptr [rbp - 0x410]
	sub	rdi, rsi
	cmp	rdi, rcx
	jl	.label_2663
	mov	rsp, rsp
	jmp	.label_2673
.label_2990:
	xor	eax, eax
	mov	cl, al
	xor	eax, eax
	lea	rsi, [rsi]
	mov	edx, eax
	nop	
	mov	rsi, qword ptr [rbp - 0x178]
	cmp	rdx, qword ptr [rbp - 0x178]
	mov	qword ptr [rbp - 0x398], rsi
	mov	byte ptr [rbp - 0x31a], cl
	lea	rdi, [rdi]
	jge	.label_2790
	mov	eax, dword ptr [rbp - 0x1a8]
	lea	rdi, [rdi]
	cmp	eax, dword ptr [rbp - 0x170]
	nop	
	setne	cl
	mov	byte ptr [rbp - 0x31a], cl
.label_2790:
	mov	al, byte ptr [rbp - 0x31a]
	movabs	rcx, 0x1249249249249249
	nop	
	and	al, 1
	movzx	edx, al
	movsxd	rsi, edx
	mov	rdi, qword ptr [rbp - 0x398]
	sub	rdi, rsi
	nop	
	cmp	rcx, rdi
	lea	rdi, [rdi]
	jl	.label_2663
.label_2673:
	xor	eax, eax
	mov	cl, al
	lea	rdi, [rdi]
	xor	eax, eax
	mov	edx, eax
	mov	rsi, qword ptr [rbp - 0x178]
	cmp	rdx, qword ptr [rbp - 0x178]
	mov	qword ptr [rbp - 0x728], rsi
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x239], cl
	mov	rbp, rbp
	jge	.label_2809
	mov	eax, dword ptr [rbp - 0x1a8]
	cmp	eax, dword ptr [rbp - 0x170]
	setne	cl
	mov	byte ptr [rbp - 0x239], cl
.label_2809:
	mov	al, byte ptr [rbp - 0x239]
	lea	rdi, [rdi]
	and	al, 1
	movzx	ecx, al
	movsxd	rdx, ecx
	nop	
	mov	rsi, qword ptr [rbp - 0x728]
	sub	rsi, rdx
	imul	rdx, rsi, 7
	cmp	rdx, -0x80
	jl	.label_2663
	mov	rsp, rsp
	xor	eax, eax
	mov	cl, al
	xor	eax, eax
	nop	
	mov	edx, eax
	mov	rsi, qword ptr [rbp - 0x178]
	mov	rsp, rsp
	cmp	rdx, qword ptr [rbp - 0x178]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0xb18], rsi
	mov	byte ptr [rbp - 0x644], cl
	jge	.label_2837
	mov	eax, dword ptr [rbp - 0x1a8]
	mov	rbp, rbp
	cmp	eax, dword ptr [rbp - 0x170]
	setne	cl
	mov	byte ptr [rbp - 0x644], cl
.label_2837:
	mov	al, byte ptr [rbp - 0x644]
	mov	ecx, 0x7f
	mov	edx, ecx
	and	al, 1
	lea	rdi, [rdi]
	movzx	ecx, al
	lea	rdi, [rdi]
	movsxd	rsi, ecx
	nop	
	mov	rdi, qword ptr [rbp - 0xb18]
	lea	rdi, [rdi]
	sub	rdi, rsi
	imul	rsi, rdi, 7
	cmp	rdx, rsi
	mov	rbp, rbp
	jge	.label_2856
.label_2663:
	mov	rsp, rsp
	xor	eax, eax
	lea	rsi, [rsi]
	mov	cl, al
	mov	rsp, rsp
	xor	eax, eax
	mov	edx, eax
	mov	rsi, qword ptr [rbp - 0x178]
	cmp	rdx, qword ptr [rbp - 0x178]
	mov	qword ptr [rbp - 0x4d0], rsi
	mov	byte ptr [rbp - 0x271], cl
	jge	.label_2875
	mov	eax, dword ptr [rbp - 0x1a8]
	lea	rsi, [rsi]
	cmp	eax, dword ptr [rbp - 0x170]
	lea	rdi, [rdi]
	setne	cl
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x271], cl
.label_2875:
	mov	al, byte ptr [rbp - 0x271]
	mov	cl, 1
	lea	rdi, [rdi]
	and	al, 1
	movzx	edx, al
	movsxd	rsi, edx
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x4d0]
	nop	
	sub	rdi, rsi
	mov	rbp, rbp
	mov	edx, edi
	imul	edx, edx, 7
	mov	al, dl
	mov	rsp, rsp
	movsx	rsi, al
	mov	qword ptr [rbp - 0x650], rsi
	nop	
	test	cl, 1
	jne	.label_1987
	jmp	.label_2014
.label_2856:
	nop	
	xor	eax, eax
	nop	
	mov	cl, al
	mov	rbp, rbp
	xor	eax, eax
	lea	rsi, [rsi]
	mov	edx, eax
	mov	rsi, qword ptr [rbp - 0x178]
	cmp	rdx, qword ptr [rbp - 0x178]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x350], rsi
	mov	rbp, rbp
	mov	byte ptr [rbp - 0xd69], cl
	lea	rdi, [rdi]
	jge	.label_2915
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x1a8]
	mov	rsp, rsp
	cmp	eax, dword ptr [rbp - 0x170]
	mov	rbp, rbp
	setne	cl
	mov	rbp, rbp
	mov	byte ptr [rbp - 0xd69], cl
.label_2915:
	lea	rsi, [rsi]
	mov	al, byte ptr [rbp - 0xd69]
	xor	ecx, ecx
	lea	rsi, [rsi]
	mov	dl, cl
	mov	rbp, rbp
	and	al, 1
	nop	
	movzx	ecx, al
	lea	rdi, [rdi]
	movsxd	rsi, ecx
	mov	rdi, qword ptr [rbp - 0x350]
	sub	rdi, rsi
	nop	
	mov	ecx, edi
	imul	ecx, ecx, 7
	lea	rsi, [rsi]
	mov	al, cl
	movsx	rsi, al
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x650], rsi
	nop	
	test	dl, 1
	mov	rbp, rbp
	jne	.label_1987
	jmp	.label_2014
.label_2181:
	xor	eax, eax
	mov	cl, al
	lea	rdi, [rdi]
	test	cl, 1
	jne	.label_2955
	jmp	.label_2962
.label_2955:
	mov	rsp, rsp
	xor	eax, eax
	lea	rdi, [rdi]
	mov	cl, al
	test	cl, 1
	jne	.label_2964
	nop	
	jmp	.label_2967
.label_2964:
	xor	eax, eax
	mov	rbp, rbp
	mov	cl, al
	test	cl, 1
	jne	.label_2970
	jmp	.label_2976
.label_2970:
	xor	eax, eax
	mov	cl, al
	xor	eax, eax
	mov	edx, eax
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x178]
	cmp	rdx, qword ptr [rbp - 0x178]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x400], rsi
	mov	byte ptr [rbp - 0x435], cl
	mov	rbp, rbp
	jge	.label_2980
	mov	eax, dword ptr [rbp - 0x1a8]
	cmp	eax, dword ptr [rbp - 0x170]
	setne	cl
	mov	byte ptr [rbp - 0x435], cl
.label_2980:
	mov	rsp, rsp
	mov	al, byte ptr [rbp - 0x435]
	and	al, 1
	movzx	ecx, al
	movsxd	rdx, ecx
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x400]
	sub	rsi, rdx
	lea	rsi, [rsi]
	mov	di, si
	lea	rdi, [rdi]
	movsx	ecx, di
	nop	
	cmp	ecx, 0
	lea	rdi, [rdi]
	jge	.label_3004
	xor	eax, eax
	mov	cl, al
	mov	rsp, rsp
	xor	eax, eax
	mov	edx, eax
	mov	rsi, qword ptr [rbp - 0x178]
	cmp	rdx, qword ptr [rbp - 0x178]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x990], rsi
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x7f2], cl
	nop	
	jge	.label_3017
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x1a8]
	nop	
	cmp	eax, dword ptr [rbp - 0x170]
	mov	rsp, rsp
	setne	cl
	mov	byte ptr [rbp - 0x7f2], cl
.label_3017:
	lea	rsi, [rsi]
	mov	al, byte ptr [rbp - 0x7f2]
	and	al, 1
	movzx	ecx, al
	movsxd	rdx, ecx
	mov	rsi, qword ptr [rbp - 0x990]
	lea	rdi, [rdi]
	sub	rsi, rdx
	mov	di, si
	lea	rdi, [rdi]
	movsx	ecx, di
	cmp	ecx, 0x12492492
	lea	rdi, [rdi]
	jl	.label_2799
	lea	rsi, [rsi]
	jmp	.label_2564
.label_3004:
	lea	rsi, [rsi]
	xor	eax, eax
	nop	
	mov	cl, al
	test	cl, 1
	jne	.label_3046
	lea	rsi, [rsi]
	jmp	.label_3048
.label_3046:
	mov	rsp, rsp
	xor	eax, eax
	mov	rbp, rbp
	mov	cl, al
	nop	
	test	cl, 1
	jne	.label_2799
	mov	rbp, rbp
	jmp	.label_2564
.label_3048:
	xor	eax, eax
	mov	cl, al
	xor	eax, eax
	nop	
	mov	edx, eax
	mov	rsi, qword ptr [rbp - 0x178]
	nop	
	cmp	rdx, qword ptr [rbp - 0x178]
	nop	
	mov	qword ptr [rbp - 0xd28], rsi
	mov	rbp, rbp
	mov	byte ptr [rbp - 0xba1], cl
	jge	.label_3052
	nop	
	mov	eax, dword ptr [rbp - 0x1a8]
	lea	rsi, [rsi]
	cmp	eax, dword ptr [rbp - 0x170]
	setne	cl
	nop	
	mov	byte ptr [rbp - 0xba1], cl
.label_3052:
	mov	al, byte ptr [rbp - 0xba1]
	mov	ecx, 0xedb6db6e
	and	al, 1
	mov	rbp, rbp
	movzx	edx, al
	movsxd	rsi, edx
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0xd28]
	mov	rbp, rbp
	sub	rdi, rsi
	mov	r8w, di
	mov	rbp, rbp
	movsx	edx, r8w
	cmp	ecx, edx
	jl	.label_2799
	jmp	.label_2564
.label_2976:
	mov	rsp, rsp
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_3085
	lea	rsi, [rsi]
	jmp	.label_3254
.label_3085:
	mov	rsp, rsp
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_2799
	nop	
	jmp	.label_2564
.label_3254:
	xor	eax, eax
	lea	rdi, [rdi]
	mov	cl, al
	xor	eax, eax
	nop	
	mov	edx, eax
	mov	rsi, qword ptr [rbp - 0x178]
	cmp	rdx, qword ptr [rbp - 0x178]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0xda8], rsi
	mov	byte ptr [rbp - 0x3f4], cl
	jge	.label_3099
	nop	
	mov	eax, dword ptr [rbp - 0x1a8]
	cmp	eax, dword ptr [rbp - 0x170]
	setne	cl
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x3f4], cl
.label_3099:
	mov	al, byte ptr [rbp - 0x3f4]
	nop	
	and	al, 1
	movzx	ecx, al
	movsxd	rdx, ecx
	mov	rsi, qword ptr [rbp - 0xda8]
	sub	rsi, rdx
	mov	di, si
	nop	
	movsx	ecx, di
	mov	rbp, rbp
	cmp	ecx, 0
	jge	.label_3114
	lea	rdi, [rdi]
	xor	eax, eax
	lea	rdi, [rdi]
	mov	cl, al
	xor	eax, eax
	mov	rsp, rsp
	mov	edx, eax
	mov	rsi, qword ptr [rbp - 0x178]
	mov	rbp, rbp
	cmp	rdx, qword ptr [rbp - 0x178]
	mov	qword ptr [rbp - 0x2a0], rsi
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x41e], cl
	jge	.label_3126
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x1a8]
	cmp	eax, dword ptr [rbp - 0x170]
	setne	cl
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x41e], cl
.label_3126:
	mov	al, byte ptr [rbp - 0x41e]
	lea	rsi, [rsi]
	and	al, 1
	nop	
	movzx	ecx, al
	nop	
	movsxd	rdx, ecx
	mov	rsi, qword ptr [rbp - 0x2a0]
	mov	rsp, rsp
	sub	rsi, rdx
	mov	di, si
	movsx	ecx, di
	nop	
	cmp	ecx, 0xedb6db6e
	jl	.label_2799
	jmp	.label_2564
.label_3114:
	mov	rsp, rsp
	xor	eax, eax
	mov	cl, al
	lea	rsi, [rsi]
	xor	eax, eax
	lea	rsi, [rsi]
	mov	edx, eax
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x178]
	cmp	rdx, qword ptr [rbp - 0x178]
	mov	qword ptr [rbp - 0xd78], rsi
	mov	byte ptr [rbp - 0x8aa], cl
	jge	.label_3153
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x1a8]
	cmp	eax, dword ptr [rbp - 0x170]
	nop	
	setne	cl
	mov	byte ptr [rbp - 0x8aa], cl
.label_3153:
	lea	rsi, [rsi]
	mov	al, byte ptr [rbp - 0x8aa]
	nop	
	mov	ecx, 0x12492492
	nop	
	and	al, 1
	movzx	edx, al
	movsxd	rsi, edx
	mov	rdi, qword ptr [rbp - 0xd78]
	sub	rdi, rsi
	mov	r8w, di
	mov	rbp, rbp
	movsx	edx, r8w
	cmp	ecx, edx
	jl	.label_2799
.label_2564:
	lea	rsi, [rsi]
	xor	eax, eax
	lea	rdi, [rdi]
	mov	cl, al
	mov	rbp, rbp
	xor	eax, eax
	mov	edx, eax
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x178]
	lea	rdi, [rdi]
	cmp	rdx, qword ptr [rbp - 0x178]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x8ce], cl
	lea	rdi, [rdi]
	jge	.label_3181
	mov	eax, dword ptr [rbp - 0x1a8]
	lea	rsi, [rsi]
	cmp	eax, dword ptr [rbp - 0x170]
	lea	rsi, [rsi]
	setne	cl
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x8ce], cl
.label_3181:
	mov	al, byte ptr [rbp - 0x8ce]
	lea	rdi, [rdi]
	and	al, 1
	movzx	ecx, al
	movsxd	rdx, ecx
	nop	
	mov	rsi, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	sub	rsi, rdx
	lea	rdi, [rdi]
	mov	di, si
	movsx	ecx, di
	imul	ecx, ecx, 7
	cmp	ecx, 0xffff8000
	lea	rsi, [rsi]
	jl	.label_2799
	mov	rsp, rsp
	xor	eax, eax
	mov	rsp, rsp
	mov	cl, al
	xor	eax, eax
	mov	edx, eax
	mov	rsi, qword ptr [rbp - 0x178]
	lea	rdi, [rdi]
	cmp	rdx, qword ptr [rbp - 0x178]
	mov	qword ptr [rbp - 0x948], rsi
	mov	byte ptr [rbp - 0x3f5], cl
	lea	rsi, [rsi]
	jge	.label_3232
	mov	eax, dword ptr [rbp - 0x1a8]
	mov	rbp, rbp
	cmp	eax, dword ptr [rbp - 0x170]
	lea	rdi, [rdi]
	setne	cl
	nop	
	mov	byte ptr [rbp - 0x3f5], cl
.label_3232:
	mov	al, byte ptr [rbp - 0x3f5]
	mov	ecx, 0x7fff
	and	al, 1
	mov	rbp, rbp
	movzx	edx, al
	lea	rdi, [rdi]
	movsxd	rsi, edx
	nop	
	mov	rdi, qword ptr [rbp - 0x948]
	lea	rsi, [rsi]
	sub	rdi, rsi
	mov	r8w, di
	lea	rsi, [rsi]
	movsx	edx, r8w
	imul	edx, edx, 7
	cmp	ecx, edx
	jge	.label_3247
.label_2799:
	xor	eax, eax
	mov	cl, al
	xor	eax, eax
	mov	edx, eax
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x178]
	cmp	rdx, qword ptr [rbp - 0x178]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x1f8], rsi
	mov	byte ptr [rbp - 0x9b1], cl
	lea	rdi, [rdi]
	jge	.label_3761
	nop	
	mov	eax, dword ptr [rbp - 0x1a8]
	mov	rsp, rsp
	cmp	eax, dword ptr [rbp - 0x170]
	mov	rsp, rsp
	setne	cl
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x9b1], cl
.label_3761:
	lea	rdi, [rdi]
	mov	al, byte ptr [rbp - 0x9b1]
	mov	cl, 1
	mov	rbp, rbp
	and	al, 1
	mov	rbp, rbp
	movzx	edx, al
	movsxd	rsi, edx
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x1f8]
	sub	rdi, rsi
	mov	r8w, di
	movsx	edx, r8w
	imul	edx, edx, 7
	mov	r8w, dx
	movsx	rsi, r8w
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x650], rsi
	nop	
	test	cl, 1
	lea	rdi, [rdi]
	jne	.label_1987
	jmp	.label_2014
.label_3247:
	xor	eax, eax
	mov	cl, al
	lea	rsi, [rsi]
	xor	eax, eax
	mov	edx, eax
	mov	rsi, qword ptr [rbp - 0x178]
	nop	
	cmp	rdx, qword ptr [rbp - 0x178]
	mov	qword ptr [rbp - 0x9b0], rsi
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0xb31], cl
	jge	.label_3288
	mov	eax, dword ptr [rbp - 0x1a8]
	mov	rsp, rsp
	cmp	eax, dword ptr [rbp - 0x170]
	setne	cl
	mov	byte ptr [rbp - 0xb31], cl
.label_3288:
	mov	al, byte ptr [rbp - 0xb31]
	mov	rsp, rsp
	xor	ecx, ecx
	mov	dl, cl
	and	al, 1
	nop	
	movzx	ecx, al
	movsxd	rsi, ecx
	mov	rdi, qword ptr [rbp - 0x9b0]
	lea	rsi, [rsi]
	sub	rdi, rsi
	lea	rsi, [rsi]
	mov	r8w, di
	movsx	ecx, r8w
	imul	ecx, ecx, 7
	nop	
	mov	r8w, cx
	nop	
	movsx	rsi, r8w
	mov	qword ptr [rbp - 0x650], rsi
	test	dl, 1
	mov	rsp, rsp
	jne	.label_1987
	mov	rbp, rbp
	jmp	.label_2014
.label_2967:
	lea	rdi, [rdi]
	xor	eax, eax
	mov	cl, al
	mov	rbp, rbp
	test	cl, 1
	jne	.label_3331
	jmp	.label_2943
.label_3331:
	lea	rsi, [rsi]
	xor	eax, eax
	mov	cl, al
	nop	
	xor	eax, eax
	mov	edx, eax
	mov	rsi, qword ptr [rbp - 0x178]
	lea	rdi, [rdi]
	cmp	rdx, qword ptr [rbp - 0x178]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0xdf0], rsi
	mov	byte ptr [rbp - 0x3c1], cl
	jge	.label_3338
	mov	eax, dword ptr [rbp - 0x1a8]
	lea	rdi, [rdi]
	cmp	eax, dword ptr [rbp - 0x170]
	mov	rsp, rsp
	setne	cl
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x3c1], cl
.label_3338:
	nop	
	mov	al, byte ptr [rbp - 0x3c1]
	and	al, 1
	lea	rsi, [rsi]
	movzx	ecx, al
	mov	rbp, rbp
	movsxd	rdx, ecx
	mov	rsi, qword ptr [rbp - 0xdf0]
	lea	rsi, [rsi]
	sub	rsi, rdx
	mov	rsp, rsp
	cmp	rsi, 0
	mov	rbp, rbp
	jge	.label_3361
	xor	eax, eax
	mov	rbp, rbp
	mov	cl, al
	lea	rsi, [rsi]
	xor	eax, eax
	lea	rdi, [rdi]
	mov	edx, eax
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x178]
	lea	rdi, [rdi]
	cmp	rdx, qword ptr [rbp - 0x178]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0xd68], rsi
	mov	byte ptr [rbp - 0x4fd], cl
	mov	rbp, rbp
	jge	.label_3862
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x1a8]
	lea	rdi, [rdi]
	cmp	eax, dword ptr [rbp - 0x170]
	setne	cl
	mov	byte ptr [rbp - 0x4fd], cl
.label_3862:
	lea	rdi, [rdi]
	mov	al, byte ptr [rbp - 0x4fd]
	movabs	rcx, 0x1249249249249249
	lea	rsi, [rsi]
	and	al, 1
	nop	
	movzx	edx, al
	lea	rsi, [rsi]
	movsxd	rsi, edx
	nop	
	mov	rdi, qword ptr [rbp - 0xd68]
	mov	rbp, rbp
	sub	rdi, rsi
	cmp	rdi, rcx
	mov	rbp, rbp
	jl	.label_3386
	mov	rsp, rsp
	jmp	.label_3391
.label_3361:
	nop	
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_3392
	mov	rbp, rbp
	jmp	.label_3397
.label_3392:
	xor	eax, eax
	mov	rbp, rbp
	mov	cl, al
	mov	rsp, rsp
	test	cl, 1
	jne	.label_3386
	jmp	.label_3391
.label_3397:
	lea	rdi, [rdi]
	xor	eax, eax
	lea	rsi, [rsi]
	mov	cl, al
	xor	eax, eax
	mov	edx, eax
	mov	rsi, qword ptr [rbp - 0x178]
	cmp	rdx, qword ptr [rbp - 0x178]
	mov	qword ptr [rbp - 0x658], rsi
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x1d1], cl
	lea	rsi, [rsi]
	jge	.label_3406
	nop	
	mov	eax, dword ptr [rbp - 0x1a8]
	lea	rdi, [rdi]
	cmp	eax, dword ptr [rbp - 0x170]
	setne	cl
	nop	
	mov	byte ptr [rbp - 0x1d1], cl
.label_3406:
	lea	rsi, [rsi]
	mov	al, byte ptr [rbp - 0x1d1]
	mov	rsp, rsp
	movabs	rcx, 0xedb6db6db6db6db7
	mov	rbp, rbp
	and	al, 1
	movzx	edx, al
	movsxd	rsi, edx
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x658]
	nop	
	sub	rdi, rsi
	lea	rdi, [rdi]
	cmp	rcx, rdi
	nop	
	jl	.label_3386
	nop	
	jmp	.label_3391
.label_2943:
	nop	
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_3451
	jmp	.label_2600
.label_3451:
	xor	eax, eax
	lea	rsi, [rsi]
	mov	cl, al
	test	cl, 1
	jne	.label_3386
	mov	rbp, rbp
	jmp	.label_3391
.label_2600:
	nop	
	xor	eax, eax
	mov	rbp, rbp
	mov	cl, al
	xor	eax, eax
	mov	edx, eax
	nop	
	mov	rsi, qword ptr [rbp - 0x178]
	cmp	rdx, qword ptr [rbp - 0x178]
	mov	qword ptr [rbp - 0x1e0], rsi
	mov	byte ptr [rbp - 0x9a2], cl
	nop	
	jge	.label_3461
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x1a8]
	cmp	eax, dword ptr [rbp - 0x170]
	setne	cl
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x9a2], cl
.label_3461:
	mov	al, byte ptr [rbp - 0x9a2]
	nop	
	and	al, 1
	mov	rbp, rbp
	movzx	ecx, al
	movsxd	rdx, ecx
	nop	
	mov	rsi, qword ptr [rbp - 0x1e0]
	mov	rbp, rbp
	sub	rsi, rdx
	lea	rsi, [rsi]
	cmp	rsi, 0
	jge	.label_3476
	xor	eax, eax
	mov	cl, al
	mov	rbp, rbp
	xor	eax, eax
	mov	edx, eax
	mov	rsi, qword ptr [rbp - 0x178]
	mov	rbp, rbp
	cmp	rdx, qword ptr [rbp - 0x178]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0xdb0], rsi
	mov	byte ptr [rbp - 0x7da], cl
	mov	rsp, rsp
	jge	.label_3486
	mov	eax, dword ptr [rbp - 0x1a8]
	mov	rbp, rbp
	cmp	eax, dword ptr [rbp - 0x170]
	setne	cl
	mov	byte ptr [rbp - 0x7da], cl
.label_3486:
	mov	al, byte ptr [rbp - 0x7da]
	movabs	rcx, 0xedb6db6db6db6db7
	mov	rbp, rbp
	and	al, 1
	movzx	edx, al
	lea	rsi, [rsi]
	movsxd	rsi, edx
	mov	rdi, qword ptr [rbp - 0xdb0]
	sub	rdi, rsi
	cmp	rdi, rcx
	mov	rbp, rbp
	jl	.label_3386
	lea	rdi, [rdi]
	jmp	.label_3391
.label_3476:
	xor	eax, eax
	mov	cl, al
	xor	eax, eax
	mov	rbp, rbp
	mov	edx, eax
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x178]
	mov	rsp, rsp
	cmp	rdx, qword ptr [rbp - 0x178]
	mov	qword ptr [rbp - 0x7e8], rsi
	mov	byte ptr [rbp - 0x1e1], cl
	lea	rdi, [rdi]
	jge	.label_3516
	mov	eax, dword ptr [rbp - 0x1a8]
	lea	rdi, [rdi]
	cmp	eax, dword ptr [rbp - 0x170]
	lea	rsi, [rsi]
	setne	cl
	mov	byte ptr [rbp - 0x1e1], cl
.label_3516:
	mov	al, byte ptr [rbp - 0x1e1]
	movabs	rcx, 0x1249249249249249
	nop	
	and	al, 1
	movzx	edx, al
	lea	rdi, [rdi]
	movsxd	rsi, edx
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x7e8]
	nop	
	sub	rdi, rsi
	cmp	rcx, rdi
	jl	.label_3386
.label_3391:
	lea	rdi, [rdi]
	xor	eax, eax
	nop	
	mov	cl, al
	xor	eax, eax
	mov	edx, eax
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x178]
	lea	rdi, [rdi]
	cmp	rdx, qword ptr [rbp - 0x178]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0xb98], rsi
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x8cf], cl
	mov	rbp, rbp
	jge	.label_3549
	mov	eax, dword ptr [rbp - 0x1a8]
	cmp	eax, dword ptr [rbp - 0x170]
	nop	
	setne	cl
	nop	
	mov	byte ptr [rbp - 0x8cf], cl
.label_3549:
	mov	al, byte ptr [rbp - 0x8cf]
	and	al, 1
	lea	rdi, [rdi]
	movzx	ecx, al
	movsxd	rdx, ecx
	mov	rsi, qword ptr [rbp - 0xb98]
	lea	rsi, [rsi]
	sub	rsi, rdx
	imul	rdx, rsi, 7
	cmp	rdx, -0x8000
	jl	.label_3386
	mov	rbp, rbp
	xor	eax, eax
	mov	cl, al
	mov	rsp, rsp
	xor	eax, eax
	lea	rdi, [rdi]
	mov	edx, eax
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x178]
	cmp	rdx, qword ptr [rbp - 0x178]
	mov	qword ptr [rbp - 0x788], rsi
	mov	byte ptr [rbp - 0x8dd], cl
	mov	rsp, rsp
	jge	.label_3573
	mov	eax, dword ptr [rbp - 0x1a8]
	lea	rdi, [rdi]
	cmp	eax, dword ptr [rbp - 0x170]
	lea	rdi, [rdi]
	setne	cl
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x8dd], cl
.label_3573:
	nop	
	mov	al, byte ptr [rbp - 0x8dd]
	mov	rbp, rbp
	mov	ecx, 0x7fff
	mov	rbp, rbp
	mov	edx, ecx
	and	al, 1
	movzx	ecx, al
	movsxd	rsi, ecx
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x788]
	sub	rdi, rsi
	nop	
	imul	rsi, rdi, 7
	cmp	rdx, rsi
	lea	rsi, [rsi]
	jge	.label_3591
.label_3386:
	lea	rsi, [rsi]
	xor	eax, eax
	mov	cl, al
	xor	eax, eax
	mov	edx, eax
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x178]
	cmp	rdx, qword ptr [rbp - 0x178]
	nop	
	mov	qword ptr [rbp - 0x4f8], rsi
	mov	byte ptr [rbp - 0x771], cl
	jge	.label_3599
	mov	eax, dword ptr [rbp - 0x1a8]
	mov	rsp, rsp
	cmp	eax, dword ptr [rbp - 0x170]
	mov	rbp, rbp
	setne	cl
	mov	byte ptr [rbp - 0x771], cl
.label_3599:
	mov	rsp, rsp
	mov	al, byte ptr [rbp - 0x771]
	mov	cl, 1
	and	al, 1
	movzx	edx, al
	mov	rsp, rsp
	movsxd	rsi, edx
	mov	rdi, qword ptr [rbp - 0x4f8]
	sub	rdi, rsi
	mov	rsp, rsp
	mov	edx, edi
	imul	edx, edx, 7
	mov	r8w, dx
	movsx	rsi, r8w
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x650], rsi
	mov	rsp, rsp
	test	cl, 1
	mov	rbp, rbp
	jne	.label_1987
	mov	rsp, rsp
	jmp	.label_2014
.label_3591:
	nop	
	xor	eax, eax
	mov	cl, al
	mov	rbp, rbp
	xor	eax, eax
	nop	
	mov	edx, eax
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x178]
	mov	rbp, rbp
	cmp	rdx, qword ptr [rbp - 0x178]
	mov	qword ptr [rbp - 0x230], rsi
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x429], cl
	jge	.label_3638
	mov	eax, dword ptr [rbp - 0x1a8]
	cmp	eax, dword ptr [rbp - 0x170]
	mov	rsp, rsp
	setne	cl
	mov	byte ptr [rbp - 0x429], cl
.label_3638:
	mov	al, byte ptr [rbp - 0x429]
	xor	ecx, ecx
	mov	rsp, rsp
	mov	dl, cl
	lea	rsi, [rsi]
	and	al, 1
	lea	rsi, [rsi]
	movzx	ecx, al
	mov	rsp, rsp
	movsxd	rsi, ecx
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x230]
	mov	rbp, rbp
	sub	rdi, rsi
	lea	rsi, [rsi]
	mov	ecx, edi
	imul	ecx, ecx, 7
	mov	r8w, cx
	lea	rsi, [rsi]
	movsx	rsi, r8w
	mov	qword ptr [rbp - 0x650], rsi
	lea	rsi, [rsi]
	test	dl, 1
	lea	rdi, [rdi]
	jne	.label_1987
	mov	rbp, rbp
	jmp	.label_2014
.label_2962:
	xor	eax, eax
	lea	rsi, [rsi]
	mov	cl, al
	lea	rsi, [rsi]
	test	cl, 1
	jne	.label_2557
	jmp	.label_3679
.label_2557:
	xor	eax, eax
	lea	rdi, [rdi]
	mov	cl, al
	mov	rsp, rsp
	test	cl, 1
	mov	rsp, rsp
	jne	.label_3680
	lea	rdi, [rdi]
	jmp	.label_3685
.label_3680:
	xor	eax, eax
	mov	cl, al
	lea	rsi, [rsi]
	test	cl, 1
	jne	.label_3687
	jmp	.label_3688
.label_3687:
	lea	rsi, [rsi]
	xor	eax, eax
	mov	cl, al
	mov	rsp, rsp
	xor	eax, eax
	mov	edx, eax
	mov	rsi, qword ptr [rbp - 0x178]
	lea	rdi, [rdi]
	cmp	rdx, qword ptr [rbp - 0x178]
	mov	qword ptr [rbp - 0x360], rsi
	mov	byte ptr [rbp - 0x715], cl
	mov	rbp, rbp
	jge	.label_2669
	mov	eax, dword ptr [rbp - 0x1a8]
	nop	
	cmp	eax, dword ptr [rbp - 0x170]
	setne	cl
	mov	byte ptr [rbp - 0x715], cl
.label_2669:
	mov	al, byte ptr [rbp - 0x715]
	mov	rbp, rbp
	and	al, 1
	movzx	ecx, al
	lea	rdi, [rdi]
	movsxd	rdx, ecx
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x360]
	mov	rbp, rbp
	sub	rsi, rdx
	lea	rdi, [rdi]
	mov	ecx, esi
	mov	rbp, rbp
	cmp	ecx, 0
	jge	.label_3701
	xor	eax, eax
	lea	rsi, [rsi]
	mov	cl, al
	xor	eax, eax
	mov	edx, eax
	mov	rsi, qword ptr [rbp - 0x178]
	nop	
	cmp	rdx, qword ptr [rbp - 0x178]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x4c0], rsi
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x799], cl
	jge	.label_3709
	mov	eax, dword ptr [rbp - 0x1a8]
	cmp	eax, dword ptr [rbp - 0x170]
	setne	cl
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x799], cl
.label_3709:
	mov	rsp, rsp
	mov	al, byte ptr [rbp - 0x799]
	lea	rdi, [rdi]
	and	al, 1
	lea	rsi, [rsi]
	movzx	ecx, al
	mov	rsp, rsp
	movsxd	rdx, ecx
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x4c0]
	sub	rsi, rdx
	mov	ecx, esi
	cmp	ecx, 0x12492492
	mov	rsp, rsp
	jl	.label_1917
	mov	rsp, rsp
	jmp	.label_3741
.label_3701:
	xor	eax, eax
	lea	rsi, [rsi]
	mov	cl, al
	test	cl, 1
	mov	rsp, rsp
	jne	.label_3743
	mov	rbp, rbp
	jmp	.label_3747
.label_3743:
	xor	eax, eax
	mov	cl, al
	mov	rbp, rbp
	test	cl, 1
	lea	rsi, [rsi]
	jne	.label_1917
	jmp	.label_3741
.label_3747:
	lea	rsi, [rsi]
	xor	eax, eax
	mov	rsp, rsp
	mov	cl, al
	nop	
	xor	eax, eax
	nop	
	mov	edx, eax
	mov	rsi, qword ptr [rbp - 0x178]
	lea	rsi, [rsi]
	cmp	rdx, qword ptr [rbp - 0x178]
	mov	qword ptr [rbp - 0x30], rsi
	mov	byte ptr [rbp - 0x3f1], cl
	jge	.label_3753
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x1a8]
	cmp	eax, dword ptr [rbp - 0x170]
	mov	rsp, rsp
	setne	cl
	nop	
	mov	byte ptr [rbp - 0x3f1], cl
.label_3753:
	mov	al, byte ptr [rbp - 0x3f1]
	mov	rbp, rbp
	mov	ecx, 0xedb6db6e
	and	al, 1
	movzx	edx, al
	movsxd	rsi, edx
	mov	rdi, qword ptr [rbp - 0x30]
	nop	
	sub	rdi, rsi
	mov	rsp, rsp
	mov	edx, edi
	lea	rsi, [rsi]
	cmp	ecx, edx
	mov	rsp, rsp
	jl	.label_1917
	jmp	.label_3741
.label_3688:
	xor	eax, eax
	lea	rsi, [rsi]
	mov	cl, al
	test	cl, 1
	jne	.label_3776
	lea	rdi, [rdi]
	jmp	.label_3778
.label_3776:
	xor	eax, eax
	lea	rsi, [rsi]
	mov	cl, al
	mov	rbp, rbp
	test	cl, 1
	jne	.label_1917
	nop	
	jmp	.label_3741
.label_3778:
	xor	eax, eax
	mov	cl, al
	lea	rsi, [rsi]
	xor	eax, eax
	lea	rsi, [rsi]
	mov	edx, eax
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x178]
	mov	rbp, rbp
	cmp	rdx, qword ptr [rbp - 0x178]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0xc68], rsi
	mov	byte ptr [rbp - 0x181], cl
	jge	.label_3785
	mov	eax, dword ptr [rbp - 0x1a8]
	cmp	eax, dword ptr [rbp - 0x170]
	setne	cl
	nop	
	mov	byte ptr [rbp - 0x181], cl
.label_3785:
	lea	rdi, [rdi]
	mov	al, byte ptr [rbp - 0x181]
	mov	rsp, rsp
	and	al, 1
	lea	rsi, [rsi]
	movzx	ecx, al
	lea	rdi, [rdi]
	movsxd	rdx, ecx
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0xc68]
	lea	rdi, [rdi]
	sub	rsi, rdx
	mov	ecx, esi
	cmp	ecx, 0
	jge	.label_3798
	xor	eax, eax
	mov	cl, al
	xor	eax, eax
	mov	rsp, rsp
	mov	edx, eax
	mov	rsi, qword ptr [rbp - 0x178]
	cmp	rdx, qword ptr [rbp - 0x178]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x58], rsi
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x609], cl
	jge	.label_3559
	mov	eax, dword ptr [rbp - 0x1a8]
	cmp	eax, dword ptr [rbp - 0x170]
	setne	cl
	nop	
	mov	byte ptr [rbp - 0x609], cl
.label_3559:
	mov	al, byte ptr [rbp - 0x609]
	and	al, 1
	movzx	ecx, al
	movsxd	rdx, ecx
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x58]
	lea	rsi, [rsi]
	sub	rsi, rdx
	mov	ecx, esi
	cmp	ecx, 0xedb6db6e
	lea	rdi, [rdi]
	jl	.label_1917
	jmp	.label_3741
.label_3798:
	lea	rsi, [rsi]
	xor	eax, eax
	mov	rbp, rbp
	mov	cl, al
	nop	
	xor	eax, eax
	mov	edx, eax
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x178]
	nop	
	cmp	rdx, qword ptr [rbp - 0x178]
	mov	qword ptr [rbp - 0x640], rsi
	mov	byte ptr [rbp - 0xb65], cl
	mov	rbp, rbp
	jge	.label_3838
	mov	eax, dword ptr [rbp - 0x1a8]
	mov	rsp, rsp
	cmp	eax, dword ptr [rbp - 0x170]
	setne	cl
	mov	rbp, rbp
	mov	byte ptr [rbp - 0xb65], cl
.label_3838:
	mov	al, byte ptr [rbp - 0xb65]
	mov	ecx, 0x12492492
	and	al, 1
	nop	
	movzx	edx, al
	movsxd	rsi, edx
	mov	rdi, qword ptr [rbp - 0x640]
	mov	rbp, rbp
	sub	rdi, rsi
	mov	edx, edi
	cmp	ecx, edx
	jl	.label_1917
.label_3741:
	xor	eax, eax
	mov	cl, al
	xor	eax, eax
	nop	
	mov	edx, eax
	nop	
	mov	rsi, qword ptr [rbp - 0x178]
	lea	rdi, [rdi]
	cmp	rdx, qword ptr [rbp - 0x178]
	mov	qword ptr [rbp - 0xd60], rsi
	mov	byte ptr [rbp - 0x9d1], cl
	mov	rsp, rsp
	jge	.label_3865
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x1a8]
	lea	rsi, [rsi]
	cmp	eax, dword ptr [rbp - 0x170]
	nop	
	setne	cl
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x9d1], cl
.label_3865:
	mov	rsp, rsp
	mov	al, byte ptr [rbp - 0x9d1]
	lea	rdi, [rdi]
	and	al, 1
	lea	rsi, [rsi]
	movzx	ecx, al
	movsxd	rdx, ecx
	mov	rsi, qword ptr [rbp - 0xd60]
	lea	rdi, [rdi]
	sub	rsi, rdx
	mov	rsp, rsp
	mov	ecx, esi
	imul	ecx, ecx, 7
	cmp	ecx, 0x80000000
	jl	.label_1917
	mov	rsp, rsp
	xor	eax, eax
	mov	cl, al
	xor	eax, eax
	mov	edx, eax
	mov	rsi, qword ptr [rbp - 0x178]
	cmp	rdx, qword ptr [rbp - 0x178]
	nop	
	mov	qword ptr [rbp - 0x20], rsi
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x6f5], cl
	lea	rdi, [rdi]
	jge	.label_1932
	mov	eax, dword ptr [rbp - 0x1a8]
	cmp	eax, dword ptr [rbp - 0x170]
	setne	cl
	nop	
	mov	byte ptr [rbp - 0x6f5], cl
.label_1932:
	mov	al, byte ptr [rbp - 0x6f5]
	mov	rsp, rsp
	mov	ecx, 0x7fffffff
	mov	rsp, rsp
	and	al, 1
	mov	rbp, rbp
	movzx	edx, al
	mov	rsp, rsp
	movsxd	rsi, edx
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	sub	rdi, rsi
	mov	rbp, rbp
	mov	edx, edi
	imul	edx, edx, 7
	cmp	ecx, edx
	lea	rsi, [rsi]
	jge	.label_1951
.label_1917:
	xor	eax, eax
	lea	rdi, [rdi]
	mov	cl, al
	lea	rdi, [rdi]
	xor	eax, eax
	mov	rbp, rbp
	mov	edx, eax
	mov	rsi, qword ptr [rbp - 0x178]
	cmp	rdx, qword ptr [rbp - 0x178]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x938], rsi
	nop	
	mov	byte ptr [rbp - 0x645], cl
	lea	rdi, [rdi]
	jge	.label_1975
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x1a8]
	cmp	eax, dword ptr [rbp - 0x170]
	setne	cl
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x645], cl
.label_1975:
	mov	al, byte ptr [rbp - 0x645]
	mov	cl, 1
	and	al, 1
	lea	rsi, [rsi]
	movzx	edx, al
	nop	
	movsxd	rsi, edx
	mov	rdi, qword ptr [rbp - 0x938]
	sub	rdi, rsi
	mov	edx, edi
	mov	rsp, rsp
	imul	edx, edx, 7
	nop	
	movsxd	rsi, edx
	mov	qword ptr [rbp - 0x650], rsi
	mov	rbp, rbp
	test	cl, 1
	lea	rdi, [rdi]
	jne	.label_1987
	jmp	.label_2014
.label_1951:
	mov	rbp, rbp
	xor	eax, eax
	mov	rbp, rbp
	mov	cl, al
	mov	rbp, rbp
	xor	eax, eax
	mov	edx, eax
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x178]
	cmp	rdx, qword ptr [rbp - 0x178]
	nop	
	mov	qword ptr [rbp - 0xb08], rsi
	mov	byte ptr [rbp - 0x8cd], cl
	jge	.label_2017
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x1a8]
	nop	
	cmp	eax, dword ptr [rbp - 0x170]
	setne	cl
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x8cd], cl
.label_2017:
	mov	al, byte ptr [rbp - 0x8cd]
	xor	ecx, ecx
	lea	rdi, [rdi]
	mov	dl, cl
	and	al, 1
	nop	
	movzx	ecx, al
	mov	rbp, rbp
	movsxd	rsi, ecx
	mov	rdi, qword ptr [rbp - 0xb08]
	sub	rdi, rsi
	mov	ecx, edi
	mov	rsp, rsp
	imul	ecx, ecx, 7
	lea	rdi, [rdi]
	movsxd	rsi, ecx
	mov	qword ptr [rbp - 0x650], rsi
	test	dl, 1
	jne	.label_1987
	nop	
	jmp	.label_2014
.label_3685:
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_2048
	jmp	.label_3319
.label_2048:
	lea	rsi, [rsi]
	xor	eax, eax
	mov	cl, al
	lea	rsi, [rsi]
	xor	eax, eax
	mov	edx, eax
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x178]
	mov	rbp, rbp
	cmp	rdx, qword ptr [rbp - 0x178]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x310], rsi
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x61d], cl
	mov	rbp, rbp
	jge	.label_2052
	mov	eax, dword ptr [rbp - 0x1a8]
	cmp	eax, dword ptr [rbp - 0x170]
	setne	cl
	mov	byte ptr [rbp - 0x61d], cl
.label_2052:
	mov	al, byte ptr [rbp - 0x61d]
	and	al, 1
	movzx	ecx, al
	movsxd	rdx, ecx
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x310]
	lea	rdi, [rdi]
	sub	rsi, rdx
	cmp	rsi, 0
	jge	.label_2070
	lea	rsi, [rsi]
	xor	eax, eax
	nop	
	mov	cl, al
	xor	eax, eax
	lea	rsi, [rsi]
	mov	edx, eax
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x178]
	mov	rbp, rbp
	cmp	rdx, qword ptr [rbp - 0x178]
	mov	qword ptr [rbp - 0x6d0], rsi
	mov	byte ptr [rbp - 0xb39], cl
	lea	rdi, [rdi]
	jge	.label_2089
	mov	eax, dword ptr [rbp - 0x1a8]
	cmp	eax, dword ptr [rbp - 0x170]
	mov	rbp, rbp
	setne	cl
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0xb39], cl
.label_2089:
	lea	rsi, [rsi]
	mov	al, byte ptr [rbp - 0xb39]
	lea	rdi, [rdi]
	movabs	rcx, 0x1249249249249249
	lea	rsi, [rsi]
	and	al, 1
	movzx	edx, al
	mov	rsp, rsp
	movsxd	rsi, edx
	mov	rdi, qword ptr [rbp - 0x6d0]
	sub	rdi, rsi
	lea	rdi, [rdi]
	cmp	rdi, rcx
	mov	rsp, rsp
	jl	.label_2106
	jmp	.label_2124
.label_2070:
	mov	rbp, rbp
	xor	eax, eax
	nop	
	mov	cl, al
	test	cl, 1
	nop	
	jne	.label_2126
	mov	rsp, rsp
	jmp	.label_2133
.label_2126:
	xor	eax, eax
	mov	cl, al
	lea	rdi, [rdi]
	test	cl, 1
	nop	
	jne	.label_2106
	lea	rsi, [rsi]
	jmp	.label_2124
.label_2133:
	mov	rbp, rbp
	xor	eax, eax
	mov	cl, al
	xor	eax, eax
	mov	edx, eax
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x178]
	cmp	rdx, qword ptr [rbp - 0x178]
	mov	qword ptr [rbp - 0xb30], rsi
	mov	byte ptr [rbp - 0x3e9], cl
	lea	rdi, [rdi]
	jge	.label_2139
	mov	eax, dword ptr [rbp - 0x1a8]
	cmp	eax, dword ptr [rbp - 0x170]
	setne	cl
	nop	
	mov	byte ptr [rbp - 0x3e9], cl
.label_2139:
	nop	
	mov	al, byte ptr [rbp - 0x3e9]
	movabs	rcx, 0xedb6db6db6db6db7
	nop	
	and	al, 1
	lea	rdi, [rdi]
	movzx	edx, al
	mov	rbp, rbp
	movsxd	rsi, edx
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0xb30]
	sub	rdi, rsi
	mov	rsp, rsp
	cmp	rcx, rdi
	jl	.label_2106
	jmp	.label_2124
.label_3319:
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	mov	rbp, rbp
	jne	.label_2169
	jmp	.label_2175
.label_2169:
	lea	rdi, [rdi]
	xor	eax, eax
	mov	cl, al
	nop	
	test	cl, 1
	jne	.label_2106
	mov	rsp, rsp
	jmp	.label_2124
.label_2175:
	xor	eax, eax
	lea	rdi, [rdi]
	mov	cl, al
	xor	eax, eax
	mov	edx, eax
	mov	rsi, qword ptr [rbp - 0x178]
	nop	
	cmp	rdx, qword ptr [rbp - 0x178]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x8c8], rsi
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x4c5], cl
	jge	.label_2185
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x1a8]
	cmp	eax, dword ptr [rbp - 0x170]
	setne	cl
	mov	byte ptr [rbp - 0x4c5], cl
.label_2185:
	mov	al, byte ptr [rbp - 0x4c5]
	mov	rsp, rsp
	and	al, 1
	movzx	ecx, al
	lea	rsi, [rsi]
	movsxd	rdx, ecx
	nop	
	mov	rsi, qword ptr [rbp - 0x8c8]
	mov	rsp, rsp
	sub	rsi, rdx
	cmp	rsi, 0
	mov	rsp, rsp
	jge	.label_2211
	lea	rdi, [rdi]
	xor	eax, eax
	mov	cl, al
	mov	rbp, rbp
	xor	eax, eax
	lea	rsi, [rsi]
	mov	edx, eax
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x178]
	lea	rdi, [rdi]
	cmp	rdx, qword ptr [rbp - 0x178]
	mov	qword ptr [rbp - 0x280], rsi
	mov	rbp, rbp
	mov	byte ptr [rbp - 0xaf1], cl
	jge	.label_2224
	nop	
	mov	eax, dword ptr [rbp - 0x1a8]
	nop	
	cmp	eax, dword ptr [rbp - 0x170]
	lea	rdi, [rdi]
	setne	cl
	nop	
	mov	byte ptr [rbp - 0xaf1], cl
.label_2224:
	mov	rsp, rsp
	mov	al, byte ptr [rbp - 0xaf1]
	mov	rsp, rsp
	movabs	rcx, 0xedb6db6db6db6db7
	and	al, 1
	movzx	edx, al
	movsxd	rsi, edx
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x280]
	sub	rdi, rsi
	nop	
	cmp	rdi, rcx
	jl	.label_2106
	mov	rbp, rbp
	jmp	.label_2124
.label_2211:
	xor	eax, eax
	mov	cl, al
	xor	eax, eax
	mov	edx, eax
	mov	rsi, qword ptr [rbp - 0x178]
	nop	
	cmp	rdx, qword ptr [rbp - 0x178]
	mov	qword ptr [rbp - 0x6c8], rsi
	mov	byte ptr [rbp - 0x42a], cl
	nop	
	jge	.label_2262
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x1a8]
	cmp	eax, dword ptr [rbp - 0x170]
	lea	rdi, [rdi]
	setne	cl
	mov	byte ptr [rbp - 0x42a], cl
.label_2262:
	lea	rdi, [rdi]
	mov	al, byte ptr [rbp - 0x42a]
	movabs	rcx, 0x1249249249249249
	and	al, 1
	lea	rdi, [rdi]
	movzx	edx, al
	mov	rsp, rsp
	movsxd	rsi, edx
	mov	rdi, qword ptr [rbp - 0x6c8]
	sub	rdi, rsi
	cmp	rcx, rdi
	jl	.label_2106
.label_2124:
	xor	eax, eax
	mov	cl, al
	xor	eax, eax
	mov	edx, eax
	mov	rsi, qword ptr [rbp - 0x178]
	cmp	rdx, qword ptr [rbp - 0x178]
	mov	qword ptr [rbp - 0x9f8], rsi
	mov	byte ptr [rbp - 0xb19], cl
	jge	.label_2291
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x1a8]
	cmp	eax, dword ptr [rbp - 0x170]
	lea	rdi, [rdi]
	setne	cl
	mov	byte ptr [rbp - 0xb19], cl
.label_2291:
	lea	rdi, [rdi]
	mov	al, byte ptr [rbp - 0xb19]
	and	al, 1
	mov	rbp, rbp
	movzx	ecx, al
	movsxd	rdx, ecx
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x9f8]
	sub	rsi, rdx
	nop	
	imul	rdx, rsi, 7
	lea	rdi, [rdi]
	cmp	rdx, -0x80000000
	mov	rsp, rsp
	jl	.label_2106
	lea	rdi, [rdi]
	xor	eax, eax
	mov	cl, al
	mov	rbp, rbp
	xor	eax, eax
	mov	edx, eax
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x178]
	cmp	rdx, qword ptr [rbp - 0x178]
	mov	qword ptr [rbp - 0xb70], rsi
	nop	
	mov	byte ptr [rbp - 0x643], cl
	jge	.label_2318
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x1a8]
	cmp	eax, dword ptr [rbp - 0x170]
	setne	cl
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x643], cl
.label_2318:
	mov	al, byte ptr [rbp - 0x643]
	mov	rbp, rbp
	mov	ecx, 0x7fffffff
	lea	rsi, [rsi]
	mov	edx, ecx
	and	al, 1
	nop	
	movzx	ecx, al
	movsxd	rsi, ecx
	mov	rdi, qword ptr [rbp - 0xb70]
	sub	rdi, rsi
	imul	rsi, rdi, 7
	lea	rsi, [rsi]
	cmp	rdx, rsi
	jge	.label_2344
.label_2106:
	mov	rsp, rsp
	xor	eax, eax
	mov	rbp, rbp
	mov	cl, al
	xor	eax, eax
	mov	rsp, rsp
	mov	edx, eax
	mov	rsi, qword ptr [rbp - 0x178]
	cmp	rdx, qword ptr [rbp - 0x178]
	mov	qword ptr [rbp - 0x418], rsi
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x7c9], cl
	jge	.label_2501
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x1a8]
	lea	rsi, [rsi]
	cmp	eax, dword ptr [rbp - 0x170]
	setne	cl
	mov	byte ptr [rbp - 0x7c9], cl
.label_2501:
	lea	rdi, [rdi]
	mov	al, byte ptr [rbp - 0x7c9]
	mov	cl, 1
	and	al, 1
	movzx	edx, al
	lea	rdi, [rdi]
	movsxd	rsi, edx
	mov	rdi, qword ptr [rbp - 0x418]
	sub	rdi, rsi
	lea	rdi, [rdi]
	mov	edx, edi
	imul	edx, edx, 7
	mov	rbp, rbp
	movsxd	rsi, edx
	mov	qword ptr [rbp - 0x650], rsi
	test	cl, 1
	lea	rdi, [rdi]
	jne	.label_1987
	nop	
	jmp	.label_2014
.label_2344:
	xor	eax, eax
	mov	cl, al
	xor	eax, eax
	mov	edx, eax
	mov	rsi, qword ptr [rbp - 0x178]
	cmp	rdx, qword ptr [rbp - 0x178]
	mov	qword ptr [rbp - 0x3d0], rsi
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0xb89], cl
	mov	rbp, rbp
	jge	.label_2403
	mov	eax, dword ptr [rbp - 0x1a8]
	cmp	eax, dword ptr [rbp - 0x170]
	setne	cl
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0xb89], cl
.label_2403:
	mov	rbp, rbp
	mov	al, byte ptr [rbp - 0xb89]
	mov	rsp, rsp
	xor	ecx, ecx
	lea	rdi, [rdi]
	mov	dl, cl
	lea	rsi, [rsi]
	and	al, 1
	movzx	ecx, al
	movsxd	rsi, ecx
	mov	rdi, qword ptr [rbp - 0x3d0]
	mov	rsp, rsp
	sub	rdi, rsi
	mov	ecx, edi
	mov	rbp, rbp
	imul	ecx, ecx, 7
	nop	
	movsxd	rsi, ecx
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x650], rsi
	test	dl, 1
	jne	.label_1987
	jmp	.label_2014
.label_3679:
	mov	al, 1
	test	al, 1
	mov	rbp, rbp
	jne	.label_2438
	jmp	.label_2441
.label_2438:
	xor	eax, eax
	mov	rbp, rbp
	mov	cl, al
	test	cl, 1
	lea	rsi, [rsi]
	jne	.label_2445
	jmp	.label_2453
.label_2445:
	lea	rsi, [rsi]
	xor	eax, eax
	lea	rsi, [rsi]
	mov	cl, al
	test	cl, 1
	lea	rdi, [rdi]
	jne	.label_2454
	jmp	.label_2460
.label_2454:
	xor	eax, eax
	mov	cl, al
	mov	rbp, rbp
	xor	eax, eax
	lea	rdi, [rdi]
	mov	edx, eax
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x178]
	cmp	rdx, qword ptr [rbp - 0x178]
	mov	qword ptr [rbp - 0xb88], rsi
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x811], cl
	jge	.label_2463
	mov	eax, dword ptr [rbp - 0x1a8]
	cmp	eax, dword ptr [rbp - 0x170]
	setne	cl
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x811], cl
.label_2463:
	mov	al, byte ptr [rbp - 0x811]
	lea	rdi, [rdi]
	and	al, 1
	mov	rsp, rsp
	movzx	ecx, al
	nop	
	movsxd	rdx, ecx
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0xb88]
	sub	rsi, rdx
	mov	rbp, rbp
	cmp	rsi, 0
	lea	rdi, [rdi]
	jge	.label_2482
	xor	eax, eax
	nop	
	mov	cl, al
	xor	eax, eax
	mov	edx, eax
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x178]
	cmp	rdx, qword ptr [rbp - 0x178]
	mov	qword ptr [rbp - 0xb00], rsi
	nop	
	mov	byte ptr [rbp - 0x59], cl
	jge	.label_2503
	mov	eax, dword ptr [rbp - 0x1a8]
	lea	rdi, [rdi]
	cmp	eax, dword ptr [rbp - 0x170]
	lea	rsi, [rsi]
	setne	cl
	mov	byte ptr [rbp - 0x59], cl
.label_2503:
	mov	al, byte ptr [rbp - 0x59]
	mov	rsp, rsp
	movabs	rcx, 0x1249249249249249
	and	al, 1
	movzx	edx, al
	lea	rdi, [rdi]
	movsxd	rsi, edx
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0xb00]
	sub	rdi, rsi
	cmp	rdi, rcx
	lea	rdi, [rdi]
	jl	.label_2161
	nop	
	jmp	.label_2527
.label_2482:
	lea	rsi, [rsi]
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	lea	rdi, [rdi]
	jne	.label_2528
	nop	
	jmp	.label_2533
.label_2528:
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_2161
	lea	rdi, [rdi]
	jmp	.label_2527
.label_2533:
	xor	eax, eax
	mov	rbp, rbp
	mov	cl, al
	xor	eax, eax
	lea	rdi, [rdi]
	mov	edx, eax
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x178]
	cmp	rdx, qword ptr [rbp - 0x178]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0xbc0], rsi
	mov	byte ptr [rbp - 0x6e1], cl
	jge	.label_2544
	mov	eax, dword ptr [rbp - 0x1a8]
	cmp	eax, dword ptr [rbp - 0x170]
	nop	
	setne	cl
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x6e1], cl
.label_2544:
	mov	al, byte ptr [rbp - 0x6e1]
	mov	rsp, rsp
	movabs	rcx, 0xedb6db6db6db6db7
	lea	rsi, [rsi]
	and	al, 1
	movzx	edx, al
	movsxd	rsi, edx
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0xbc0]
	mov	rbp, rbp
	sub	rdi, rsi
	mov	rsp, rsp
	cmp	rcx, rdi
	jl	.label_2161
	lea	rsi, [rsi]
	jmp	.label_2527
.label_2460:
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	mov	rbp, rbp
	jne	.label_2575
	lea	rsi, [rsi]
	jmp	.label_2581
.label_2575:
	xor	eax, eax
	mov	rbp, rbp
	mov	cl, al
	test	cl, 1
	jne	.label_2161
	lea	rdi, [rdi]
	jmp	.label_2527
.label_2581:
	mov	rsp, rsp
	xor	eax, eax
	mov	rsp, rsp
	mov	cl, al
	xor	eax, eax
	mov	edx, eax
	mov	rsi, qword ptr [rbp - 0x178]
	nop	
	cmp	rdx, qword ptr [rbp - 0x178]
	mov	qword ptr [rbp - 0x18], rsi
	mov	byte ptr [rbp - 0xdb1], cl
	jge	.label_2588
	mov	eax, dword ptr [rbp - 0x1a8]
	nop	
	cmp	eax, dword ptr [rbp - 0x170]
	setne	cl
	mov	byte ptr [rbp - 0xdb1], cl
.label_2588:
	mov	al, byte ptr [rbp - 0xdb1]
	and	al, 1
	movzx	ecx, al
	movsxd	rdx, ecx
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x18]
	sub	rsi, rdx
	nop	
	cmp	rsi, 0
	nop	
	jge	.label_3781
	lea	rsi, [rsi]
	xor	eax, eax
	lea	rdi, [rdi]
	mov	cl, al
	xor	eax, eax
	mov	edx, eax
	mov	rsi, qword ptr [rbp - 0x178]
	cmp	rdx, qword ptr [rbp - 0x178]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x4a0], rsi
	mov	byte ptr [rbp - 0x41], cl
	lea	rdi, [rdi]
	jge	.label_2617
	mov	eax, dword ptr [rbp - 0x1a8]
	cmp	eax, dword ptr [rbp - 0x170]
	setne	cl
	nop	
	mov	byte ptr [rbp - 0x41], cl
.label_2617:
	mov	al, byte ptr [rbp - 0x41]
	movabs	rcx, 0xedb6db6db6db6db7
	mov	rsp, rsp
	and	al, 1
	mov	rsp, rsp
	movzx	edx, al
	movsxd	rsi, edx
	mov	rdi, qword ptr [rbp - 0x4a0]
	sub	rdi, rsi
	cmp	rdi, rcx
	jl	.label_2161
	jmp	.label_2527
.label_3781:
	xor	eax, eax
	nop	
	mov	cl, al
	xor	eax, eax
	mov	rbp, rbp
	mov	edx, eax
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x178]
	mov	rbp, rbp
	cmp	rdx, qword ptr [rbp - 0x178]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x478], rsi
	mov	byte ptr [rbp - 0x4fe], cl
	mov	rsp, rsp
	jge	.label_2647
	mov	eax, dword ptr [rbp - 0x1a8]
	mov	rsp, rsp
	cmp	eax, dword ptr [rbp - 0x170]
	setne	cl
	mov	byte ptr [rbp - 0x4fe], cl
.label_2647:
	mov	rbp, rbp
	mov	al, byte ptr [rbp - 0x4fe]
	movabs	rcx, 0x1249249249249249
	mov	rsp, rsp
	and	al, 1
	lea	rdi, [rdi]
	movzx	edx, al
	movsxd	rsi, edx
	mov	rdi, qword ptr [rbp - 0x478]
	sub	rdi, rsi
	lea	rsi, [rsi]
	cmp	rcx, rdi
	jl	.label_2161
.label_2527:
	xor	eax, eax
	mov	rbp, rbp
	mov	cl, al
	lea	rsi, [rsi]
	xor	eax, eax
	mov	edx, eax
	nop	
	mov	rsi, qword ptr [rbp - 0x178]
	nop	
	cmp	rdx, qword ptr [rbp - 0x178]
	nop	
	mov	qword ptr [rbp - 0xa38], rsi
	mov	byte ptr [rbp - 0x991], cl
	mov	rbp, rbp
	jge	.label_2676
	mov	eax, dword ptr [rbp - 0x1a8]
	cmp	eax, dword ptr [rbp - 0x170]
	mov	rsp, rsp
	setne	cl
	mov	byte ptr [rbp - 0x991], cl
.label_2676:
	mov	rbp, rbp
	mov	al, byte ptr [rbp - 0x991]
	nop	
	movabs	rcx, 0x8000000000000000
	and	al, 1
	mov	rsp, rsp
	movzx	edx, al
	lea	rdi, [rdi]
	movsxd	rsi, edx
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0xa38]
	sub	rdi, rsi
	mov	rbp, rbp
	imul	rsi, rdi, 7
	cmp	rsi, rcx
	lea	rsi, [rsi]
	jl	.label_2161
	lea	rsi, [rsi]
	xor	eax, eax
	nop	
	mov	cl, al
	xor	eax, eax
	nop	
	mov	edx, eax
	mov	rsi, qword ptr [rbp - 0x178]
	cmp	rdx, qword ptr [rbp - 0x178]
	mov	qword ptr [rbp - 0xa00], rsi
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x7f1], cl
	lea	rsi, [rsi]
	jge	.label_2708
	mov	eax, dword ptr [rbp - 0x1a8]
	mov	rbp, rbp
	cmp	eax, dword ptr [rbp - 0x170]
	lea	rdi, [rdi]
	setne	cl
	nop	
	mov	byte ptr [rbp - 0x7f1], cl
.label_2708:
	mov	al, byte ptr [rbp - 0x7f1]
	movabs	rcx, 0x7fffffffffffffff
	and	al, 1
	movzx	edx, al
	nop	
	movsxd	rsi, edx
	mov	rdi, qword ptr [rbp - 0xa00]
	mov	rbp, rbp
	sub	rdi, rsi
	imul	rsi, rdi, 7
	cmp	rcx, rsi
	jge	.label_2724
.label_2161:
	xor	eax, eax
	mov	rsp, rsp
	mov	cl, al
	xor	eax, eax
	mov	rbp, rbp
	mov	edx, eax
	mov	rsi, qword ptr [rbp - 0x178]
	nop	
	cmp	rdx, qword ptr [rbp - 0x178]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x2b0], rsi
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x823], cl
	mov	rbp, rbp
	jge	.label_2688
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x1a8]
	mov	rsp, rsp
	cmp	eax, dword ptr [rbp - 0x170]
	mov	rbp, rbp
	setne	cl
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x823], cl
.label_2688:
	lea	rdi, [rdi]
	mov	al, byte ptr [rbp - 0x823]
	lea	rdi, [rdi]
	mov	cl, 1
	and	al, 1
	nop	
	movzx	edx, al
	movsxd	rsi, edx
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x2b0]
	mov	rbp, rbp
	sub	rdi, rsi
	imul	rsi, rdi, 7
	mov	qword ptr [rbp - 0x650], rsi
	mov	rbp, rbp
	test	cl, 1
	jne	.label_1987
	nop	
	jmp	.label_2014
.label_2724:
	xor	eax, eax
	mov	cl, al
	lea	rdi, [rdi]
	xor	eax, eax
	lea	rdi, [rdi]
	mov	edx, eax
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x178]
	cmp	rdx, qword ptr [rbp - 0x178]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0xa60], rsi
	mov	byte ptr [rbp - 0x625], cl
	jge	.label_2779
	mov	eax, dword ptr [rbp - 0x1a8]
	mov	rsp, rsp
	cmp	eax, dword ptr [rbp - 0x170]
	lea	rdi, [rdi]
	setne	cl
	nop	
	mov	byte ptr [rbp - 0x625], cl
.label_2779:
	mov	al, byte ptr [rbp - 0x625]
	lea	rsi, [rsi]
	xor	ecx, ecx
	mov	dl, cl
	and	al, 1
	movzx	ecx, al
	movsxd	rsi, ecx
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0xa60]
	lea	rdi, [rdi]
	sub	rdi, rsi
	lea	rsi, [rsi]
	imul	rsi, rdi, 7
	mov	qword ptr [rbp - 0x650], rsi
	lea	rsi, [rsi]
	test	dl, 1
	jne	.label_1987
	jmp	.label_2014
.label_2453:
	xor	eax, eax
	mov	cl, al
	mov	rbp, rbp
	test	cl, 1
	jne	.label_2806
	nop	
	jmp	.label_2807
.label_2806:
	xor	eax, eax
	mov	cl, al
	mov	rbp, rbp
	xor	eax, eax
	mov	edx, eax
	mov	rsi, qword ptr [rbp - 0x178]
	lea	rdi, [rdi]
	cmp	rdx, qword ptr [rbp - 0x178]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x470], rsi
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x281], cl
	jge	.label_2808
	mov	eax, dword ptr [rbp - 0x1a8]
	mov	rsp, rsp
	cmp	eax, dword ptr [rbp - 0x170]
	setne	cl
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x281], cl
.label_2808:
	mov	rbp, rbp
	mov	al, byte ptr [rbp - 0x281]
	lea	rsi, [rsi]
	and	al, 1
	movzx	ecx, al
	movsxd	rdx, ecx
	mov	rsi, qword ptr [rbp - 0x470]
	mov	rbp, rbp
	sub	rsi, rdx
	cmp	rsi, 0
	jge	.label_2828
	lea	rdi, [rdi]
	xor	eax, eax
	mov	cl, al
	xor	eax, eax
	mov	rbp, rbp
	mov	edx, eax
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x178]
	nop	
	cmp	rdx, qword ptr [rbp - 0x178]
	nop	
	mov	qword ptr [rbp - 0x408], rsi
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x9c1], cl
	lea	rsi, [rsi]
	jge	.label_2839
	nop	
	mov	eax, dword ptr [rbp - 0x1a8]
	nop	
	cmp	eax, dword ptr [rbp - 0x170]
	mov	rbp, rbp
	setne	cl
	nop	
	mov	byte ptr [rbp - 0x9c1], cl
.label_2839:
	mov	al, byte ptr [rbp - 0x9c1]
	movabs	rcx, 0x1249249249249249
	nop	
	and	al, 1
	movzx	edx, al
	mov	rbp, rbp
	movsxd	rsi, edx
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x408]
	nop	
	sub	rdi, rsi
	cmp	rdi, rcx
	jl	.label_2863
	jmp	.label_2879
.label_2828:
	xor	eax, eax
	mov	cl, al
	mov	rsp, rsp
	test	cl, 1
	mov	rbp, rbp
	jne	.label_2880
	jmp	.label_2885
.label_2880:
	mov	rsp, rsp
	xor	eax, eax
	nop	
	mov	cl, al
	test	cl, 1
	jne	.label_2863
	mov	rbp, rbp
	jmp	.label_2879
.label_2885:
	lea	rdi, [rdi]
	xor	eax, eax
	mov	rbp, rbp
	mov	cl, al
	xor	eax, eax
	nop	
	mov	edx, eax
	nop	
	mov	rsi, qword ptr [rbp - 0x178]
	cmp	rdx, qword ptr [rbp - 0x178]
	mov	qword ptr [rbp - 0x8a8], rsi
	mov	byte ptr [rbp - 0xca2], cl
	jge	.label_2892
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x1a8]
	mov	rsp, rsp
	cmp	eax, dword ptr [rbp - 0x170]
	setne	cl
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0xca2], cl
.label_2892:
	lea	rdi, [rdi]
	mov	al, byte ptr [rbp - 0xca2]
	movabs	rcx, 0xedb6db6db6db6db7
	mov	rbp, rbp
	and	al, 1
	movzx	edx, al
	movsxd	rsi, edx
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x8a8]
	mov	rbp, rbp
	sub	rdi, rsi
	cmp	rcx, rdi
	nop	
	jl	.label_2863
	nop	
	jmp	.label_2879
.label_2807:
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	mov	rsp, rsp
	jne	.label_2929
	jmp	.label_2933
.label_2929:
	nop	
	xor	eax, eax
	mov	rsp, rsp
	mov	cl, al
	lea	rdi, [rdi]
	test	cl, 1
	jne	.label_2863
	lea	rdi, [rdi]
	jmp	.label_2879
.label_2933:
	mov	rbp, rbp
	xor	eax, eax
	mov	rsp, rsp
	mov	cl, al
	xor	eax, eax
	lea	rdi, [rdi]
	mov	edx, eax
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x178]
	cmp	rdx, qword ptr [rbp - 0x178]
	nop	
	mov	qword ptr [rbp - 0xbd8], rsi
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x7d9], cl
	lea	rsi, [rsi]
	jge	.label_2940
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x1a8]
	lea	rdi, [rdi]
	cmp	eax, dword ptr [rbp - 0x170]
	setne	cl
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x7d9], cl
.label_2940:
	mov	rsp, rsp
	mov	al, byte ptr [rbp - 0x7d9]
	and	al, 1
	movzx	ecx, al
	lea	rdi, [rdi]
	movsxd	rdx, ecx
	mov	rsi, qword ptr [rbp - 0xbd8]
	lea	rsi, [rsi]
	sub	rsi, rdx
	cmp	rsi, 0
	lea	rsi, [rsi]
	jge	.label_2963
	lea	rsi, [rsi]
	xor	eax, eax
	mov	rbp, rbp
	mov	cl, al
	nop	
	xor	eax, eax
	lea	rdi, [rdi]
	mov	edx, eax
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x178]
	mov	rbp, rbp
	cmp	rdx, qword ptr [rbp - 0x178]
	mov	qword ptr [rbp - 0x770], rsi
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x282], cl
	jge	.label_2979
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x1a8]
	cmp	eax, dword ptr [rbp - 0x170]
	lea	rdi, [rdi]
	setne	cl
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x282], cl
.label_2979:
	mov	al, byte ptr [rbp - 0x282]
	mov	rsp, rsp
	movabs	rcx, 0xedb6db6db6db6db7
	lea	rdi, [rdi]
	and	al, 1
	mov	rbp, rbp
	movzx	edx, al
	mov	rbp, rbp
	movsxd	rsi, edx
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x770]
	nop	
	sub	rdi, rsi
	lea	rdi, [rdi]
	cmp	rdi, rcx
	jl	.label_2863
	lea	rdi, [rdi]
	jmp	.label_2879
.label_2963:
	lea	rsi, [rsi]
	xor	eax, eax
	mov	cl, al
	xor	eax, eax
	mov	edx, eax
	nop	
	mov	rsi, qword ptr [rbp - 0x178]
	nop	
	cmp	rdx, qword ptr [rbp - 0x178]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x618], rsi
	mov	rbp, rbp
	mov	byte ptr [rbp - 0xd55], cl
	jge	.label_3024
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x1a8]
	cmp	eax, dword ptr [rbp - 0x170]
	lea	rdi, [rdi]
	setne	cl
	mov	byte ptr [rbp - 0xd55], cl
.label_3024:
	mov	al, byte ptr [rbp - 0xd55]
	movabs	rcx, 0x1249249249249249
	nop	
	and	al, 1
	mov	rsp, rsp
	movzx	edx, al
	movsxd	rsi, edx
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x618]
	mov	rsp, rsp
	sub	rdi, rsi
	mov	rsp, rsp
	cmp	rcx, rdi
	jl	.label_2863
.label_2879:
	xor	eax, eax
	mov	cl, al
	lea	rdi, [rdi]
	xor	eax, eax
	mov	edx, eax
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x178]
	cmp	rdx, qword ptr [rbp - 0x178]
	mov	qword ptr [rbp - 0x888], rsi
	nop	
	mov	byte ptr [rbp - 0x385], cl
	jge	.label_3049
	mov	eax, dword ptr [rbp - 0x1a8]
	nop	
	cmp	eax, dword ptr [rbp - 0x170]
	mov	rsp, rsp
	setne	cl
	nop	
	mov	byte ptr [rbp - 0x385], cl
.label_3049:
	mov	rbp, rbp
	mov	al, byte ptr [rbp - 0x385]
	mov	rsp, rsp
	movabs	rcx, 0x8000000000000000
	and	al, 1
	nop	
	movzx	edx, al
	movsxd	rsi, edx
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x888]
	nop	
	sub	rdi, rsi
	mov	rbp, rbp
	imul	rsi, rdi, 7
	mov	rbp, rbp
	cmp	rsi, rcx
	jl	.label_2863
	nop	
	xor	eax, eax
	mov	cl, al
	mov	rbp, rbp
	xor	eax, eax
	lea	rdi, [rdi]
	mov	edx, eax
	mov	rsi, qword ptr [rbp - 0x178]
	cmp	rdx, qword ptr [rbp - 0x178]
	mov	qword ptr [rbp - 0x390], rsi
	mov	byte ptr [rbp - 0x341], cl
	jge	.label_3076
	mov	eax, dword ptr [rbp - 0x1a8]
	cmp	eax, dword ptr [rbp - 0x170]
	setne	cl
	mov	byte ptr [rbp - 0x341], cl
.label_3076:
	mov	al, byte ptr [rbp - 0x341]
	mov	rbp, rbp
	movabs	rcx, 0x7fffffffffffffff
	nop	
	and	al, 1
	movzx	edx, al
	mov	rbp, rbp
	movsxd	rsi, edx
	mov	rdi, qword ptr [rbp - 0x390]
	sub	rdi, rsi
	lea	rdi, [rdi]
	imul	rsi, rdi, 7
	mov	rbp, rbp
	cmp	rcx, rsi
	nop	
	jge	.label_3514
.label_2863:
	xor	eax, eax
	mov	rsp, rsp
	mov	cl, al
	xor	eax, eax
	mov	edx, eax
	mov	rsi, qword ptr [rbp - 0x178]
	lea	rsi, [rsi]
	cmp	rdx, qword ptr [rbp - 0x178]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0xbe8], rsi
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0xddd], cl
	nop	
	jge	.label_3110
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x1a8]
	nop	
	cmp	eax, dword ptr [rbp - 0x170]
	setne	cl
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0xddd], cl
.label_3110:
	mov	al, byte ptr [rbp - 0xddd]
	mov	cl, 1
	mov	rsp, rsp
	and	al, 1
	movzx	edx, al
	movsxd	rsi, edx
	mov	rdi, qword ptr [rbp - 0xbe8]
	mov	rsp, rsp
	sub	rdi, rsi
	nop	
	imul	rsi, rdi, 7
	mov	qword ptr [rbp - 0x650], rsi
	lea	rsi, [rsi]
	test	cl, 1
	jne	.label_1987
	jmp	.label_2014
.label_3514:
	xor	eax, eax
	mov	rsp, rsp
	mov	cl, al
	xor	eax, eax
	mov	edx, eax
	mov	rsi, qword ptr [rbp - 0x178]
	lea	rdi, [rdi]
	cmp	rdx, qword ptr [rbp - 0x178]
	nop	
	mov	qword ptr [rbp - 0x608], rsi
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0xc81], cl
	nop	
	jge	.label_3143
	mov	eax, dword ptr [rbp - 0x1a8]
	mov	rbp, rbp
	cmp	eax, dword ptr [rbp - 0x170]
	setne	cl
	nop	
	mov	byte ptr [rbp - 0xc81], cl
.label_3143:
	mov	al, byte ptr [rbp - 0xc81]
	lea	rsi, [rsi]
	xor	ecx, ecx
	mov	dl, cl
	mov	rbp, rbp
	and	al, 1
	mov	rbp, rbp
	movzx	ecx, al
	mov	rsp, rsp
	movsxd	rsi, ecx
	mov	rdi, qword ptr [rbp - 0x608]
	lea	rsi, [rsi]
	sub	rdi, rsi
	imul	rsi, rdi, 7
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x650], rsi
	test	dl, 1
	mov	rsp, rsp
	jne	.label_1987
	lea	rdi, [rdi]
	jmp	.label_2014
.label_2441:
	lea	rdi, [rdi]
	xor	eax, eax
	lea	rdi, [rdi]
	mov	cl, al
	test	cl, 1
	jne	.label_3171
	lea	rsi, [rsi]
	jmp	.label_3177
.label_3171:
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	mov	rsp, rsp
	jne	.label_3180
	jmp	.label_3187
.label_3180:
	xor	eax, eax
	lea	rsi, [rsi]
	mov	cl, al
	xor	eax, eax
	mov	edx, eax
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x178]
	cmp	rdx, qword ptr [rbp - 0x178]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0xa80], rsi
	mov	byte ptr [rbp - 0xdf9], cl
	jge	.label_3188
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x1a8]
	cmp	eax, dword ptr [rbp - 0x170]
	nop	
	setne	cl
	mov	byte ptr [rbp - 0xdf9], cl
.label_3188:
	nop	
	mov	al, byte ptr [rbp - 0xdf9]
	mov	rbp, rbp
	and	al, 1
	mov	rsp, rsp
	movzx	ecx, al
	movsxd	rdx, ecx
	mov	rsi, qword ptr [rbp - 0xa80]
	lea	rdi, [rdi]
	sub	rsi, rdx
	cmp	rsi, 0
	mov	rsp, rsp
	jge	.label_3211
	xor	eax, eax
	nop	
	mov	cl, al
	xor	eax, eax
	mov	rbp, rbp
	mov	edx, eax
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x178]
	cmp	rdx, qword ptr [rbp - 0x178]
	mov	qword ptr [rbp - 0x308], rsi
	mov	byte ptr [rbp - 0x939], cl
	mov	rbp, rbp
	jge	.label_3229
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x1a8]
	cmp	eax, dword ptr [rbp - 0x170]
	setne	cl
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x939], cl
.label_3229:
	lea	rsi, [rsi]
	mov	al, byte ptr [rbp - 0x939]
	lea	rsi, [rsi]
	movabs	rcx, 0x1249249249249249
	mov	rbp, rbp
	and	al, 1
	movzx	edx, al
	lea	rsi, [rsi]
	movsxd	rsi, edx
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x308]
	sub	rdi, rsi
	lea	rsi, [rsi]
	cmp	rdi, rcx
	lea	rdi, [rdi]
	jl	.label_2027
	jmp	.label_3260
.label_3211:
	xor	eax, eax
	mov	rsp, rsp
	mov	cl, al
	lea	rsi, [rsi]
	test	cl, 1
	jne	.label_3261
	lea	rsi, [rsi]
	jmp	.label_2339
.label_3261:
	xor	eax, eax
	mov	cl, al
	nop	
	test	cl, 1
	mov	rsp, rsp
	jne	.label_2027
	jmp	.label_3260
.label_2339:
	mov	rbp, rbp
	xor	eax, eax
	mov	cl, al
	xor	eax, eax
	mov	rbp, rbp
	mov	edx, eax
	mov	rsi, qword ptr [rbp - 0x178]
	lea	rsi, [rsi]
	cmp	rdx, qword ptr [rbp - 0x178]
	mov	qword ptr [rbp - 0xa48], rsi
	mov	byte ptr [rbp - 0x6f6], cl
	lea	rdi, [rdi]
	jge	.label_3269
	nop	
	mov	eax, dword ptr [rbp - 0x1a8]
	cmp	eax, dword ptr [rbp - 0x170]
	lea	rsi, [rsi]
	setne	cl
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x6f6], cl
.label_3269:
	nop	
	mov	al, byte ptr [rbp - 0x6f6]
	movabs	rcx, 0xedb6db6db6db6db7
	lea	rdi, [rdi]
	and	al, 1
	lea	rdi, [rdi]
	movzx	edx, al
	movsxd	rsi, edx
	mov	rdi, qword ptr [rbp - 0xa48]
	nop	
	sub	rdi, rsi
	lea	rdi, [rdi]
	cmp	rcx, rdi
	jl	.label_2027
	jmp	.label_3260
.label_3187:
	nop	
	xor	eax, eax
	nop	
	mov	cl, al
	mov	rbp, rbp
	test	cl, 1
	jne	.label_3294
	lea	rdi, [rdi]
	jmp	.label_3301
.label_3294:
	xor	eax, eax
	mov	cl, al
	lea	rdi, [rdi]
	test	cl, 1
	lea	rdi, [rdi]
	jne	.label_2027
	lea	rdi, [rdi]
	jmp	.label_3260
.label_3301:
	xor	eax, eax
	mov	cl, al
	xor	eax, eax
	mov	rbp, rbp
	mov	edx, eax
	mov	rsi, qword ptr [rbp - 0x178]
	cmp	rdx, qword ptr [rbp - 0x178]
	mov	qword ptr [rbp - 0x208], rsi
	mov	byte ptr [rbp - 0x5f9], cl
	jge	.label_3311
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x1a8]
	cmp	eax, dword ptr [rbp - 0x170]
	mov	rsp, rsp
	setne	cl
	mov	byte ptr [rbp - 0x5f9], cl
.label_3311:
	mov	al, byte ptr [rbp - 0x5f9]
	and	al, 1
	movzx	ecx, al
	movsxd	rdx, ecx
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x208]
	mov	rbp, rbp
	sub	rsi, rdx
	cmp	rsi, 0
	jge	.label_3327
	mov	rbp, rbp
	xor	eax, eax
	mov	cl, al
	xor	eax, eax
	mov	edx, eax
	mov	rsi, qword ptr [rbp - 0x178]
	cmp	rdx, qword ptr [rbp - 0x178]
	mov	qword ptr [rbp - 0xdc0], rsi
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0xbed], cl
	lea	rsi, [rsi]
	jge	.label_3339
	mov	eax, dword ptr [rbp - 0x1a8]
	lea	rsi, [rsi]
	cmp	eax, dword ptr [rbp - 0x170]
	setne	cl
	mov	byte ptr [rbp - 0xbed], cl
.label_3339:
	mov	al, byte ptr [rbp - 0xbed]
	movabs	rcx, 0xedb6db6db6db6db7
	and	al, 1
	movzx	edx, al
	movsxd	rsi, edx
	mov	rdi, qword ptr [rbp - 0xdc0]
	sub	rdi, rsi
	lea	rdi, [rdi]
	cmp	rdi, rcx
	lea	rsi, [rsi]
	jl	.label_2027
	mov	rsp, rsp
	jmp	.label_3260
.label_3327:
	xor	eax, eax
	mov	cl, al
	xor	eax, eax
	mov	edx, eax
	mov	rsi, qword ptr [rbp - 0x178]
	lea	rdi, [rdi]
	cmp	rdx, qword ptr [rbp - 0x178]
	mov	qword ptr [rbp - 0xa20], rsi
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x825], cl
	jge	.label_3370
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x1a8]
	cmp	eax, dword ptr [rbp - 0x170]
	mov	rsp, rsp
	setne	cl
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x825], cl
.label_3370:
	mov	al, byte ptr [rbp - 0x825]
	movabs	rcx, 0x1249249249249249
	and	al, 1
	lea	rdi, [rdi]
	movzx	edx, al
	movsxd	rsi, edx
	mov	rdi, qword ptr [rbp - 0xa20]
	lea	rsi, [rsi]
	sub	rdi, rsi
	cmp	rcx, rdi
	jl	.label_2027
.label_3260:
	xor	eax, eax
	lea	rsi, [rsi]
	mov	cl, al
	xor	eax, eax
	nop	
	mov	edx, eax
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x178]
	lea	rsi, [rsi]
	cmp	rdx, qword ptr [rbp - 0x178]
	mov	qword ptr [rbp - 0x3c0], rsi
	mov	byte ptr [rbp - 0x371], cl
	jge	.label_3389
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x1a8]
	lea	rsi, [rsi]
	cmp	eax, dword ptr [rbp - 0x170]
	setne	cl
	nop	
	mov	byte ptr [rbp - 0x371], cl
.label_3389:
	mov	al, byte ptr [rbp - 0x371]
	movabs	rcx, 0x8000000000000000
	nop	
	and	al, 1
	movzx	edx, al
	movsxd	rsi, edx
	nop	
	mov	rdi, qword ptr [rbp - 0x3c0]
	mov	rsp, rsp
	sub	rdi, rsi
	imul	rsi, rdi, 7
	nop	
	cmp	rsi, rcx
	jl	.label_2027
	lea	rdi, [rdi]
	xor	eax, eax
	mov	rbp, rbp
	mov	cl, al
	lea	rsi, [rsi]
	xor	eax, eax
	mov	edx, eax
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x178]
	cmp	rdx, qword ptr [rbp - 0x178]
	mov	qword ptr [rbp - 0x460], rsi
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0xd79], cl
	mov	rsp, rsp
	jge	.label_2911
	nop	
	mov	eax, dword ptr [rbp - 0x1a8]
	cmp	eax, dword ptr [rbp - 0x170]
	mov	rbp, rbp
	setne	cl
	mov	rbp, rbp
	mov	byte ptr [rbp - 0xd79], cl
.label_2911:
	mov	rsp, rsp
	mov	al, byte ptr [rbp - 0xd79]
	movabs	rcx, 0x7fffffffffffffff
	lea	rsi, [rsi]
	and	al, 1
	lea	rdi, [rdi]
	movzx	edx, al
	movsxd	rsi, edx
	mov	rdi, qword ptr [rbp - 0x460]
	nop	
	sub	rdi, rsi
	imul	rsi, rdi, 7
	cmp	rcx, rsi
	jge	.label_3452
.label_2027:
	xor	eax, eax
	mov	cl, al
	nop	
	xor	eax, eax
	mov	edx, eax
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x178]
	cmp	rdx, qword ptr [rbp - 0x178]
	nop	
	mov	qword ptr [rbp - 0x3d8], rsi
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x4e9], cl
	jge	.label_3466
	mov	eax, dword ptr [rbp - 0x1a8]
	cmp	eax, dword ptr [rbp - 0x170]
	setne	cl
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x4e9], cl
.label_3466:
	mov	al, byte ptr [rbp - 0x4e9]
	mov	cl, 1
	and	al, 1
	lea	rdi, [rdi]
	movzx	edx, al
	movsxd	rsi, edx
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x3d8]
	sub	rdi, rsi
	mov	rbp, rbp
	imul	rsi, rdi, 7
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x650], rsi
	mov	rbp, rbp
	test	cl, 1
	jne	.label_1987
	lea	rdi, [rdi]
	jmp	.label_2014
.label_3452:
	nop	
	xor	eax, eax
	mov	cl, al
	xor	eax, eax
	mov	edx, eax
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x178]
	lea	rdi, [rdi]
	cmp	rdx, qword ptr [rbp - 0x178]
	mov	qword ptr [rbp - 0x8b8], rsi
	mov	byte ptr [rbp - 0x41d], cl
	jge	.label_3493
	mov	eax, dword ptr [rbp - 0x1a8]
	nop	
	cmp	eax, dword ptr [rbp - 0x170]
	setne	cl
	nop	
	mov	byte ptr [rbp - 0x41d], cl
.label_3493:
	mov	rsp, rsp
	mov	al, byte ptr [rbp - 0x41d]
	mov	rbp, rbp
	xor	ecx, ecx
	lea	rsi, [rsi]
	mov	dl, cl
	and	al, 1
	mov	rsp, rsp
	movzx	ecx, al
	movsxd	rsi, ecx
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x8b8]
	mov	rbp, rbp
	sub	rdi, rsi
	imul	rsi, rdi, 7
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x650], rsi
	mov	rbp, rbp
	test	dl, 1
	jne	.label_1987
	jmp	.label_2014
.label_3177:
	xor	eax, eax
	mov	rsp, rsp
	mov	cl, al
	test	cl, 1
	jne	.label_3524
	jmp	.label_3529
.label_3524:
	xor	eax, eax
	mov	cl, al
	mov	rbp, rbp
	xor	eax, eax
	nop	
	mov	edx, eax
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x178]
	lea	rsi, [rsi]
	cmp	rdx, qword ptr [rbp - 0x178]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0xd50], rsi
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x8a9], cl
	jge	.label_3530
	mov	eax, dword ptr [rbp - 0x1a8]
	lea	rdi, [rdi]
	cmp	eax, dword ptr [rbp - 0x170]
	lea	rdi, [rdi]
	setne	cl
	mov	byte ptr [rbp - 0x8a9], cl
.label_3530:
	mov	al, byte ptr [rbp - 0x8a9]
	mov	rsp, rsp
	and	al, 1
	mov	rbp, rbp
	movzx	ecx, al
	movsxd	rdx, ecx
	mov	rsi, qword ptr [rbp - 0xd50]
	sub	rsi, rdx
	cmp	rsi, 0
	lea	rdi, [rdi]
	jge	.label_3666
	xor	eax, eax
	mov	cl, al
	xor	eax, eax
	lea	rsi, [rsi]
	mov	edx, eax
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x178]
	lea	rsi, [rsi]
	cmp	rdx, qword ptr [rbp - 0x178]
	mov	qword ptr [rbp - 0x258], rsi
	mov	byte ptr [rbp - 0x642], cl
	jge	.label_3562
	mov	eax, dword ptr [rbp - 0x1a8]
	cmp	eax, dword ptr [rbp - 0x170]
	mov	rsp, rsp
	setne	cl
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x642], cl
.label_3562:
	mov	al, byte ptr [rbp - 0x642]
	movabs	rcx, 0x1249249249249249
	mov	rsp, rsp
	and	al, 1
	movzx	edx, al
	movsxd	rsi, edx
	mov	rdi, qword ptr [rbp - 0x258]
	nop	
	sub	rdi, rsi
	cmp	rdi, rcx
	mov	rbp, rbp
	jl	.label_1940
	jmp	.label_2199
.label_3666:
	mov	rsp, rsp
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_3589
	nop	
	jmp	.label_3590
.label_3589:
	xor	eax, eax
	mov	rsp, rsp
	mov	cl, al
	mov	rsp, rsp
	test	cl, 1
	jne	.label_1940
	jmp	.label_2199
.label_3590:
	mov	rsp, rsp
	xor	eax, eax
	nop	
	mov	cl, al
	nop	
	xor	eax, eax
	mov	edx, eax
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x178]
	cmp	rdx, qword ptr [rbp - 0x178]
	mov	qword ptr [rbp - 0x6a8], rsi
	mov	rsp, rsp
	mov	byte ptr [rbp - 0xa3d], cl
	mov	rsp, rsp
	jge	.label_3596
	mov	eax, dword ptr [rbp - 0x1a8]
	cmp	eax, dword ptr [rbp - 0x170]
	setne	cl
	mov	rsp, rsp
	mov	byte ptr [rbp - 0xa3d], cl
.label_3596:
	mov	al, byte ptr [rbp - 0xa3d]
	lea	rdi, [rdi]
	movabs	rcx, 0xedb6db6db6db6db7
	mov	rsp, rsp
	and	al, 1
	movzx	edx, al
	movsxd	rsi, edx
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x6a8]
	mov	rsp, rsp
	sub	rdi, rsi
	lea	rdi, [rdi]
	cmp	rcx, rdi
	jl	.label_1940
	mov	rsp, rsp
	jmp	.label_2199
.label_3529:
	lea	rsi, [rsi]
	xor	eax, eax
	mov	rbp, rbp
	mov	cl, al
	lea	rsi, [rsi]
	test	cl, 1
	jne	.label_2214
	lea	rsi, [rsi]
	jmp	.label_3631
.label_2214:
	mov	rbp, rbp
	xor	eax, eax
	mov	cl, al
	lea	rdi, [rdi]
	test	cl, 1
	jne	.label_1940
	mov	rbp, rbp
	jmp	.label_2199
.label_3631:
	lea	rdi, [rdi]
	xor	eax, eax
	mov	rsp, rsp
	mov	cl, al
	xor	eax, eax
	mov	edx, eax
	nop	
	mov	rsi, qword ptr [rbp - 0x178]
	cmp	rdx, qword ptr [rbp - 0x178]
	mov	qword ptr [rbp - 0xdf8], rsi
	mov	byte ptr [rbp - 0x5a1], cl
	nop	
	jge	.label_3640
	mov	eax, dword ptr [rbp - 0x1a8]
	nop	
	cmp	eax, dword ptr [rbp - 0x170]
	setne	cl
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x5a1], cl
.label_3640:
	mov	rsp, rsp
	mov	al, byte ptr [rbp - 0x5a1]
	and	al, 1
	movzx	ecx, al
	movsxd	rdx, ecx
	mov	rsi, qword ptr [rbp - 0xdf8]
	sub	rsi, rdx
	cmp	rsi, 0
	lea	rdi, [rdi]
	jge	.label_3659
	xor	eax, eax
	mov	rbp, rbp
	mov	cl, al
	xor	eax, eax
	mov	rbp, rbp
	mov	edx, eax
	mov	rsi, qword ptr [rbp - 0x178]
	cmp	rdx, qword ptr [rbp - 0x178]
	mov	qword ptr [rbp - 0x380], rsi
	mov	byte ptr [rbp - 0x21], cl
	jge	.label_2489
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x1a8]
	cmp	eax, dword ptr [rbp - 0x170]
	setne	cl
	mov	byte ptr [rbp - 0x21], cl
.label_2489:
	nop	
	mov	al, byte ptr [rbp - 0x21]
	lea	rsi, [rsi]
	movabs	rcx, 0xedb6db6db6db6db7
	and	al, 1
	nop	
	movzx	edx, al
	lea	rdi, [rdi]
	movsxd	rsi, edx
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x380]
	mov	rbp, rbp
	sub	rdi, rsi
	mov	rsp, rsp
	cmp	rdi, rcx
	jl	.label_1940
	nop	
	jmp	.label_2199
.label_3659:
	xor	eax, eax
	mov	cl, al
	nop	
	xor	eax, eax
	mov	rsp, rsp
	mov	edx, eax
	nop	
	mov	rsi, qword ptr [rbp - 0x178]
	cmp	rdx, qword ptr [rbp - 0x178]
	nop	
	mov	qword ptr [rbp - 0x668], rsi
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x3d9], cl
	lea	rsi, [rsi]
	jge	.label_3691
	mov	eax, dword ptr [rbp - 0x1a8]
	cmp	eax, dword ptr [rbp - 0x170]
	lea	rsi, [rsi]
	setne	cl
	mov	byte ptr [rbp - 0x3d9], cl
.label_3691:
	mov	rbp, rbp
	mov	al, byte ptr [rbp - 0x3d9]
	movabs	rcx, 0x1249249249249249
	mov	rsp, rsp
	and	al, 1
	movzx	edx, al
	lea	rdi, [rdi]
	movsxd	rsi, edx
	nop	
	mov	rdi, qword ptr [rbp - 0x668]
	sub	rdi, rsi
	mov	rsp, rsp
	cmp	rcx, rdi
	lea	rdi, [rdi]
	jl	.label_1940
.label_2199:
	xor	eax, eax
	mov	cl, al
	xor	eax, eax
	mov	edx, eax
	mov	rsi, qword ptr [rbp - 0x178]
	lea	rdi, [rdi]
	cmp	rdx, qword ptr [rbp - 0x178]
	mov	qword ptr [rbp - 0xd40], rsi
	mov	rsp, rsp
	mov	byte ptr [rbp - 0xa22], cl
	jge	.label_3712
	mov	eax, dword ptr [rbp - 0x1a8]
	cmp	eax, dword ptr [rbp - 0x170]
	setne	cl
	mov	rsp, rsp
	mov	byte ptr [rbp - 0xa22], cl
.label_3712:
	mov	rsp, rsp
	mov	al, byte ptr [rbp - 0xa22]
	movabs	rcx, 0x8000000000000000
	and	al, 1
	mov	rbp, rbp
	movzx	edx, al
	movsxd	rsi, edx
	mov	rdi, qword ptr [rbp - 0xd40]
	lea	rdi, [rdi]
	sub	rdi, rsi
	lea	rdi, [rdi]
	imul	rsi, rdi, 7
	cmp	rsi, rcx
	jl	.label_1940
	xor	eax, eax
	mov	rsp, rsp
	mov	cl, al
	xor	eax, eax
	mov	rsp, rsp
	mov	edx, eax
	mov	rsi, qword ptr [rbp - 0x178]
	mov	rbp, rbp
	cmp	rdx, qword ptr [rbp - 0x178]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x3e8], rsi
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x82d], cl
	mov	rsp, rsp
	jge	.label_3745
	mov	eax, dword ptr [rbp - 0x1a8]
	cmp	eax, dword ptr [rbp - 0x170]
	setne	cl
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x82d], cl
.label_3745:
	mov	rbp, rbp
	mov	al, byte ptr [rbp - 0x82d]
	lea	rsi, [rsi]
	movabs	rcx, 0x7fffffffffffffff
	and	al, 1
	movzx	edx, al
	movsxd	rsi, edx
	mov	rdi, qword ptr [rbp - 0x3e8]
	sub	rdi, rsi
	imul	rsi, rdi, 7
	lea	rdi, [rdi]
	cmp	rcx, rsi
	jge	.label_3172
.label_1940:
	xor	eax, eax
	mov	cl, al
	lea	rdi, [rdi]
	xor	eax, eax
	mov	edx, eax
	mov	rsi, qword ptr [rbp - 0x178]
	cmp	rdx, qword ptr [rbp - 0x178]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x6b0], rsi
	mov	byte ptr [rbp - 0x361], cl
	jge	.label_3772
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x1a8]
	cmp	eax, dword ptr [rbp - 0x170]
	setne	cl
	mov	byte ptr [rbp - 0x361], cl
.label_3772:
	mov	rsp, rsp
	mov	al, byte ptr [rbp - 0x361]
	nop	
	mov	cl, 1
	and	al, 1
	mov	rsp, rsp
	movzx	edx, al
	movsxd	rsi, edx
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x6b0]
	mov	rbp, rbp
	sub	rdi, rsi
	nop	
	imul	rsi, rdi, 7
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x650], rsi
	lea	rsi, [rsi]
	test	cl, 1
	jne	.label_1987
	jmp	.label_2014
.label_3172:
	lea	rsi, [rsi]
	xor	eax, eax
	mov	cl, al
	xor	eax, eax
	mov	edx, eax
	mov	rsi, qword ptr [rbp - 0x178]
	lea	rdi, [rdi]
	cmp	rdx, qword ptr [rbp - 0x178]
	mov	qword ptr [rbp - 0xa50], rsi
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x461], cl
	jge	.label_3794
	mov	eax, dword ptr [rbp - 0x1a8]
	lea	rsi, [rsi]
	cmp	eax, dword ptr [rbp - 0x170]
	mov	rbp, rbp
	setne	cl
	nop	
	mov	byte ptr [rbp - 0x461], cl
.label_3794:
	mov	al, byte ptr [rbp - 0x461]
	mov	rbp, rbp
	xor	ecx, ecx
	mov	dl, cl
	lea	rdi, [rdi]
	and	al, 1
	mov	rsp, rsp
	movzx	ecx, al
	movsxd	rsi, ecx
	mov	rdi, qword ptr [rbp - 0xa50]
	lea	rdi, [rdi]
	sub	rdi, rsi
	imul	rsi, rdi, 7
	mov	qword ptr [rbp - 0x650], rsi
	test	dl, 1
	lea	rsi, [rsi]
	jne	.label_1987
.label_2014:
	lea	rsi, [rsi]
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	mov	rbp, rbp
	jne	.label_3827
	jmp	.label_3673
.label_3827:
	lea	rdi, [rdi]
	xor	eax, eax
	mov	cl, al
	nop	
	test	cl, 1
	lea	rsi, [rsi]
	jne	.label_3832
	lea	rdi, [rdi]
	jmp	.label_3837
.label_3832:
	mov	al, 1
	test	al, 1
	jne	.label_3839
	jmp	.label_3841
.label_3839:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x650]
	mov	rsp, rsp
	mov	cl, al
	lea	rdi, [rdi]
	movsx	edx, cl
	cmp	edx, 0
	jge	.label_3843
	lea	rdi, [rdi]
	mov	eax, 0x80000000
	mov	ecx, 7
	mov	edx, dword ptr [rbp - 0x170]
	sub	edx, dword ptr [rbp - 0x1a8]
	mov	rbp, rbp
	add	edx, 7
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x8dc], eax
	mov	rbp, rbp
	mov	eax, edx
	cdq	
	idiv	ecx
	lea	rdi, [rdi]
	mov	sil, dl
	movsx	ecx, sil
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x650]
	mov	sil, dil
	lea	rdi, [rdi]
	movsx	edx, sil
	lea	rsi, [rsi]
	mov	r8d, dword ptr [rbp - 0x8dc]
	mov	rbp, rbp
	sub	r8d, edx
	cmp	ecx, r8d
	mov	rsp, rsp
	jl	.label_1903
	nop	
	jmp	.label_1901
.label_3843:
	mov	eax, 7
	mov	ecx, 0x7fffffff
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x650]
	lea	rsi, [rsi]
	mov	sil, dl
	mov	rsp, rsp
	movsx	edi, sil
	sub	ecx, edi
	mov	rbp, rbp
	mov	edi, dword ptr [rbp - 0x170]
	sub	edi, dword ptr [rbp - 0x1a8]
	mov	rbp, rbp
	add	edi, 7
	mov	dword ptr [rbp - 0x5f0], eax
	mov	eax, edi
	mov	rbp, rbp
	cdq	
	mov	edi, dword ptr [rbp - 0x5f0]
	idiv	edi
	mov	sil, dl
	mov	rbp, rbp
	movsx	edx, sil
	lea	rdi, [rdi]
	cmp	ecx, edx
	nop	
	jl	.label_1903
	jmp	.label_1901
.label_3841:
	nop	
	mov	eax, 7
	mov	ecx, dword ptr [rbp - 0x170]
	sub	ecx, dword ptr [rbp - 0x1a8]
	mov	rsp, rsp
	add	ecx, 7
	mov	dword ptr [rbp - 0x7f0], eax
	mov	rbp, rbp
	mov	eax, ecx
	cdq	
	mov	ecx, dword ptr [rbp - 0x7f0]
	idiv	ecx
	mov	sil, dl
	lea	rdi, [rdi]
	movsx	edx, sil
	mov	rbp, rbp
	cmp	edx, 0
	lea	rdi, [rdi]
	jge	.label_1933
	lea	rsi, [rsi]
	mov	eax, 7
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x650]
	lea	rdi, [rdi]
	mov	dl, cl
	mov	rsp, rsp
	movsx	esi, dl
	mov	edi, dword ptr [rbp - 0x170]
	mov	rbp, rbp
	sub	edi, dword ptr [rbp - 0x1a8]
	lea	rdi, [rdi]
	add	edi, 7
	mov	dword ptr [rbp - 0x8f4], eax
	mov	eax, edi
	cdq	
	lea	rsi, [rsi]
	mov	edi, dword ptr [rbp - 0x8f4]
	mov	rsp, rsp
	idiv	edi
	mov	r8b, dl
	movsx	edx, r8b
	nop	
	mov	rcx, qword ptr [rbp - 0x650]
	lea	rdi, [rdi]
	mov	r8b, cl
	nop	
	movsx	r9d, r8b
	add	edx, r9d
	cmp	esi, edx
	jle	.label_1903
	mov	rsp, rsp
	jmp	.label_1901
.label_1933:
	mov	rax, qword ptr [rbp - 0x650]
	lea	rsi, [rsi]
	mov	cl, al
	movsx	edx, cl
	cmp	edx, 0
	lea	rdi, [rdi]
	jge	.label_2406
	mov	eax, 7
	mov	rsp, rsp
	mov	ecx, dword ptr [rbp - 0x170]
	sub	ecx, dword ptr [rbp - 0x1a8]
	add	ecx, 7
	mov	dword ptr [rbp - 0xbb4], eax
	lea	rsi, [rsi]
	mov	eax, ecx
	lea	rsi, [rsi]
	cdq	
	mov	ecx, dword ptr [rbp - 0xbb4]
	idiv	ecx
	lea	rdi, [rdi]
	mov	sil, dl
	mov	rbp, rbp
	movsx	edx, sil
	mov	rsp, rsp
	mov	edi, dword ptr [rbp - 0x170]
	sub	edi, dword ptr [rbp - 0x1a8]
	add	edi, 7
	lea	rdi, [rdi]
	mov	eax, edi
	mov	dword ptr [rbp - 0x94c], edx
	mov	rbp, rbp
	cdq	
	idiv	ecx
	mov	rbp, rbp
	mov	sil, dl
	mov	rsp, rsp
	movsx	edx, sil
	nop	
	mov	r8, qword ptr [rbp - 0x650]
	mov	rbp, rbp
	mov	sil, r8b
	movsx	edi, sil
	add	edx, edi
	lea	rsi, [rsi]
	mov	edi, dword ptr [rbp - 0x94c]
	nop	
	cmp	edi, edx
	jle	.label_1903
	jmp	.label_1901
.label_2406:
	mov	eax, 7
	mov	ecx, dword ptr [rbp - 0x170]
	sub	ecx, dword ptr [rbp - 0x1a8]
	lea	rdi, [rdi]
	add	ecx, 7
	mov	dword ptr [rbp - 0x4d8], eax
	mov	eax, ecx
	cdq	
	mov	ecx, dword ptr [rbp - 0x4d8]
	mov	rsp, rsp
	idiv	ecx
	mov	rsp, rsp
	mov	sil, dl
	movsx	edx, sil
	mov	rdi, qword ptr [rbp - 0x650]
	lea	rdi, [rdi]
	mov	sil, dil
	movsx	r8d, sil
	add	edx, r8d
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x650]
	mov	rsp, rsp
	mov	sil, dil
	mov	rsp, rsp
	movsx	r8d, sil
	cmp	edx, r8d
	jl	.label_1903
.label_1901:
	nop	
	mov	eax, 7
	nop	
	mov	ecx, dword ptr [rbp - 0x170]
	lea	rsi, [rsi]
	sub	ecx, dword ptr [rbp - 0x1a8]
	mov	rsp, rsp
	add	ecx, 7
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x9d8], eax
	mov	eax, ecx
	lea	rsi, [rsi]
	cdq	
	lea	rdi, [rdi]
	mov	ecx, dword ptr [rbp - 0x9d8]
	idiv	ecx
	lea	rsi, [rsi]
	mov	sil, dl
	movsx	edx, sil
	mov	rdi, qword ptr [rbp - 0x650]
	mov	sil, dil
	mov	rsp, rsp
	movsx	r8d, sil
	nop	
	add	edx, r8d
	lea	rsi, [rsi]
	cmp	edx, -0x80
	jl	.label_1903
	mov	eax, 0x7f
	mov	ecx, 7
	mov	edx, dword ptr [rbp - 0x170]
	mov	rbp, rbp
	sub	edx, dword ptr [rbp - 0x1a8]
	add	edx, 7
	nop	
	mov	dword ptr [rbp - 0x510], eax
	mov	eax, edx
	cdq	
	idiv	ecx
	mov	sil, dl
	mov	rbp, rbp
	movsx	ecx, sil
	mov	rdi, qword ptr [rbp - 0x650]
	mov	sil, dil
	movsx	edx, sil
	mov	rsp, rsp
	add	ecx, edx
	lea	rdi, [rdi]
	mov	edx, dword ptr [rbp - 0x510]
	cmp	edx, ecx
	mov	rsp, rsp
	jge	.label_2081
.label_1903:
	mov	al, 1
	mov	rsp, rsp
	mov	ecx, 7
	mov	edx, dword ptr [rbp - 0x170]
	sub	edx, dword ptr [rbp - 0x1a8]
	lea	rdi, [rdi]
	add	edx, 7
	mov	byte ptr [rbp - 0x641], al
	mov	rsp, rsp
	mov	eax, edx
	cdq	
	lea	rdi, [rdi]
	idiv	ecx
	mov	sil, dl
	movsx	ecx, sil
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x650]
	nop	
	mov	sil, dil
	nop	
	movsx	edx, sil
	add	ecx, edx
	nop	
	mov	sil, cl
	movsx	rdi, sil
	mov	qword ptr [rbp - 0x650], rdi
	lea	rsi, [rsi]
	mov	sil, byte ptr [rbp - 0x641]
	lea	rdi, [rdi]
	test	sil, 1
	nop	
	jne	.label_1987
	jmp	.label_2054
.label_2081:
	xor	eax, eax
	nop	
	mov	cl, al
	mov	eax, 7
	mov	edx, dword ptr [rbp - 0x170]
	mov	rbp, rbp
	sub	edx, dword ptr [rbp - 0x1a8]
	lea	rdi, [rdi]
	add	edx, 7
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x39c], eax
	mov	rbp, rbp
	mov	eax, edx
	mov	rsp, rsp
	cdq	
	mov	esi, dword ptr [rbp - 0x39c]
	lea	rdi, [rdi]
	idiv	esi
	lea	rsi, [rsi]
	mov	dil, dl
	mov	rsp, rsp
	movsx	edx, dil
	mov	r8, qword ptr [rbp - 0x650]
	nop	
	mov	dil, r8b
	movsx	r9d, dil
	lea	rdi, [rdi]
	add	edx, r9d
	lea	rsi, [rsi]
	mov	dil, dl
	movsx	r8, dil
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x650], r8
	test	cl, 1
	jne	.label_1987
	jmp	.label_2054
.label_3837:
	mov	al, 1
	test	al, 1
	lea	rsi, [rsi]
	jne	.label_2163
	jmp	.label_2168
.label_2163:
	cmp	qword ptr [rbp - 0x650], 0
	lea	rsi, [rsi]
	jge	.label_2172
	movabs	rax, 0x8000000000000000
	mov	ecx, 7
	mov	edx, dword ptr [rbp - 0x170]
	nop	
	sub	edx, dword ptr [rbp - 0x1a8]
	mov	rsp, rsp
	add	edx, 7
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x340], rax
	mov	eax, edx
	cdq	
	mov	rbp, rbp
	idiv	ecx
	mov	rsp, rsp
	movsxd	rsi, edx
	mov	rdi, qword ptr [rbp - 0x340]
	sub	rdi, qword ptr [rbp - 0x650]
	cmp	rsi, rdi
	lea	rsi, [rsi]
	jl	.label_2209
	mov	rbp, rbp
	jmp	.label_2206
.label_2172:
	mov	rsp, rsp
	mov	eax, 7
	movabs	rcx, 0x7fffffffffffffff
	nop	
	sub	rcx, qword ptr [rbp - 0x650]
	mov	edx, dword ptr [rbp - 0x170]
	sub	edx, dword ptr [rbp - 0x1a8]
	nop	
	add	edx, 7
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x4e0], eax
	lea	rsi, [rsi]
	mov	eax, edx
	cdq	
	lea	rsi, [rsi]
	mov	esi, dword ptr [rbp - 0x4e0]
	lea	rsi, [rsi]
	idiv	esi
	movsxd	rdi, edx
	cmp	rcx, rdi
	jl	.label_2209
	jmp	.label_2206
.label_2168:
	lea	rsi, [rsi]
	mov	eax, 7
	mov	ecx, dword ptr [rbp - 0x170]
	sub	ecx, dword ptr [rbp - 0x1a8]
	add	ecx, 7
	mov	rsp, rsp
	mov	dword ptr [rbp - 0xa84], eax
	mov	eax, ecx
	lea	rsi, [rsi]
	cdq	
	mov	ecx, dword ptr [rbp - 0xa84]
	idiv	ecx
	cmp	edx, 0
	mov	rsp, rsp
	jge	.label_2232
	mov	eax, 7
	nop	
	mov	rcx, qword ptr [rbp - 0x650]
	mov	rsp, rsp
	mov	edx, dword ptr [rbp - 0x170]
	sub	edx, dword ptr [rbp - 0x1a8]
	lea	rsi, [rsi]
	add	edx, 7
	mov	dword ptr [rbp - 0x764], eax
	mov	eax, edx
	cdq	
	mov	esi, dword ptr [rbp - 0x764]
	mov	rsp, rsp
	idiv	esi
	mov	rbp, rbp
	movsxd	rdi, edx
	mov	rsp, rsp
	add	rdi, qword ptr [rbp - 0x650]
	mov	rbp, rbp
	cmp	rcx, rdi
	jle	.label_2209
	mov	rbp, rbp
	jmp	.label_2206
.label_2232:
	cmp	qword ptr [rbp - 0x650], 0
	mov	rbp, rbp
	jge	.label_2272
	mov	eax, 7
	mov	ecx, dword ptr [rbp - 0x170]
	mov	rsp, rsp
	sub	ecx, dword ptr [rbp - 0x1a8]
	lea	rsi, [rsi]
	add	ecx, 7
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x744], eax
	mov	eax, ecx
	cdq	
	lea	rsi, [rsi]
	mov	ecx, dword ptr [rbp - 0x744]
	idiv	ecx
	movsxd	rsi, edx
	mov	edx, dword ptr [rbp - 0x170]
	sub	edx, dword ptr [rbp - 0x1a8]
	add	edx, 7
	mov	rsp, rsp
	mov	eax, edx
	cdq	
	lea	rsi, [rsi]
	idiv	ecx
	mov	rbp, rbp
	movsxd	rdi, edx
	add	rdi, qword ptr [rbp - 0x650]
	lea	rsi, [rsi]
	cmp	rsi, rdi
	nop	
	jle	.label_2209
	jmp	.label_2206
.label_2272:
	lea	rsi, [rsi]
	mov	eax, 7
	nop	
	mov	ecx, dword ptr [rbp - 0x170]
	lea	rdi, [rdi]
	sub	ecx, dword ptr [rbp - 0x1a8]
	add	ecx, 7
	mov	dword ptr [rbp - 0x65c], eax
	lea	rsi, [rsi]
	mov	eax, ecx
	nop	
	cdq	
	mov	ecx, dword ptr [rbp - 0x65c]
	idiv	ecx
	lea	rdi, [rdi]
	movsxd	rsi, edx
	mov	rsp, rsp
	add	rsi, qword ptr [rbp - 0x650]
	cmp	rsi, qword ptr [rbp - 0x650]
	nop	
	jl	.label_2209
.label_2206:
	nop	
	mov	eax, 7
	mov	ecx, dword ptr [rbp - 0x170]
	mov	rsp, rsp
	sub	ecx, dword ptr [rbp - 0x1a8]
	mov	rsp, rsp
	add	ecx, 7
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x2bc], eax
	mov	eax, ecx
	nop	
	cdq	
	lea	rdi, [rdi]
	mov	ecx, dword ptr [rbp - 0x2bc]
	lea	rsi, [rsi]
	idiv	ecx
	lea	rdi, [rdi]
	movsxd	rsi, edx
	add	rsi, qword ptr [rbp - 0x650]
	cmp	rsi, -0x80
	mov	rbp, rbp
	jl	.label_2209
	lea	rdi, [rdi]
	mov	eax, 0x7f
	lea	rsi, [rsi]
	mov	ecx, eax
	nop	
	mov	eax, 7
	mov	edx, dword ptr [rbp - 0x170]
	sub	edx, dword ptr [rbp - 0x1a8]
	add	edx, 7
	mov	dword ptr [rbp - 0x430], eax
	lea	rdi, [rdi]
	mov	eax, edx
	mov	rsp, rsp
	cdq	
	mov	esi, dword ptr [rbp - 0x430]
	mov	rbp, rbp
	idiv	esi
	movsxd	rdi, edx
	add	rdi, qword ptr [rbp - 0x650]
	nop	
	cmp	rcx, rdi
	lea	rdi, [rdi]
	jge	.label_2341
.label_2209:
	mov	rsp, rsp
	mov	al, 1
	mov	ecx, 7
	nop	
	mov	edx, dword ptr [rbp - 0x170]
	sub	edx, dword ptr [rbp - 0x1a8]
	add	edx, 7
	mov	byte ptr [rbp - 0x824], al
	mov	eax, edx
	mov	rbp, rbp
	cdq	
	idiv	ecx
	mov	rsi, qword ptr [rbp - 0x650]
	lea	rsi, [rsi]
	mov	ecx, esi
	nop	
	add	edx, ecx
	mov	dil, dl
	lea	rsi, [rsi]
	movsx	rsi, dil
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x650], rsi
	mov	dil, byte ptr [rbp - 0x824]
	test	dil, 1
	mov	rbp, rbp
	jne	.label_1987
	mov	rsp, rsp
	jmp	.label_2054
.label_2341:
	mov	rbp, rbp
	xor	eax, eax
	mov	rbp, rbp
	mov	cl, al
	nop	
	mov	eax, 7
	mov	edx, dword ptr [rbp - 0x170]
	sub	edx, dword ptr [rbp - 0x1a8]
	add	edx, 7
	mov	dword ptr [rbp - 0x1fc], eax
	mov	rbp, rbp
	mov	eax, edx
	cdq	
	mov	esi, dword ptr [rbp - 0x1fc]
	lea	rdi, [rdi]
	idiv	esi
	mov	rdi, qword ptr [rbp - 0x650]
	mov	r8d, edi
	lea	rsi, [rsi]
	add	edx, r8d
	lea	rsi, [rsi]
	mov	r9b, dl
	lea	rsi, [rsi]
	movsx	rdi, r9b
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x650], rdi
	test	cl, 1
	jne	.label_1987
	jmp	.label_2054
.label_3673:
	nop	
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_2420
	mov	rsp, rsp
	jmp	.label_2424
.label_2420:
	lea	rdi, [rdi]
	xor	eax, eax
	nop	
	mov	cl, al
	lea	rsi, [rsi]
	test	cl, 1
	mov	rsp, rsp
	jne	.label_2857
	lea	rsi, [rsi]
	jmp	.label_2432
.label_2857:
	mov	al, 1
	test	al, 1
	lea	rsi, [rsi]
	jne	.label_2435
	jmp	.label_2437
.label_2435:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x650]
	mov	cx, ax
	movsx	edx, cx
	mov	rsp, rsp
	cmp	edx, 0
	nop	
	jge	.label_2439
	mov	eax, 0x80000000
	lea	rsi, [rsi]
	mov	ecx, 7
	mov	edx, dword ptr [rbp - 0x170]
	lea	rsi, [rsi]
	sub	edx, dword ptr [rbp - 0x1a8]
	add	edx, 7
	mov	dword ptr [rbp - 0x384], eax
	mov	eax, edx
	mov	rbp, rbp
	cdq	
	idiv	ecx
	nop	
	mov	si, dx
	nop	
	movsx	ecx, si
	mov	rdi, qword ptr [rbp - 0x650]
	mov	si, di
	mov	rsp, rsp
	movsx	edx, si
	mov	r8d, dword ptr [rbp - 0x384]
	sub	r8d, edx
	lea	rsi, [rsi]
	cmp	ecx, r8d
	jl	.label_2450
	jmp	.label_2475
.label_2439:
	nop	
	mov	eax, 7
	mov	ecx, 0x7fffffff
	nop	
	mov	rdx, qword ptr [rbp - 0x650]
	nop	
	mov	si, dx
	movsx	edi, si
	sub	ecx, edi
	mov	edi, dword ptr [rbp - 0x170]
	sub	edi, dword ptr [rbp - 0x1a8]
	add	edi, 7
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x4b4], eax
	mov	eax, edi
	cdq	
	mov	edi, dword ptr [rbp - 0x4b4]
	mov	rbp, rbp
	idiv	edi
	mov	si, dx
	movsx	edx, si
	cmp	ecx, edx
	jl	.label_2450
	lea	rsi, [rsi]
	jmp	.label_2475
.label_2437:
	mov	eax, 7
	mov	ecx, dword ptr [rbp - 0x170]
	sub	ecx, dword ptr [rbp - 0x1a8]
	add	ecx, 7
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x704], eax
	mov	eax, ecx
	cdq	
	mov	rbp, rbp
	mov	ecx, dword ptr [rbp - 0x704]
	idiv	ecx
	mov	si, dx
	nop	
	movsx	edx, si
	lea	rdi, [rdi]
	cmp	edx, 0
	jge	.label_2508
	mov	eax, 7
	mov	rcx, qword ptr [rbp - 0x650]
	mov	dx, cx
	movsx	esi, dx
	mov	edi, dword ptr [rbp - 0x170]
	sub	edi, dword ptr [rbp - 0x1a8]
	mov	rbp, rbp
	add	edi, 7
	mov	dword ptr [rbp - 0x28], eax
	mov	eax, edi
	lea	rsi, [rsi]
	cdq	
	mov	edi, dword ptr [rbp - 0x28]
	mov	rsp, rsp
	idiv	edi
	mov	r8w, dx
	lea	rsi, [rsi]
	movsx	edx, r8w
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x650]
	mov	r8w, cx
	movsx	r9d, r8w
	add	edx, r9d
	cmp	esi, edx
	lea	rdi, [rdi]
	jle	.label_2450
	jmp	.label_2475
.label_2508:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x650]
	mov	cx, ax
	mov	rsp, rsp
	movsx	edx, cx
	cmp	edx, 0
	jge	.label_2547
	lea	rsi, [rsi]
	mov	eax, 7
	mov	ecx, dword ptr [rbp - 0x170]
	sub	ecx, dword ptr [rbp - 0x1a8]
	add	ecx, 7
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x560], eax
	mov	eax, ecx
	cdq	
	mov	rsp, rsp
	mov	ecx, dword ptr [rbp - 0x560]
	idiv	ecx
	mov	rsp, rsp
	mov	si, dx
	movsx	edx, si
	lea	rsi, [rsi]
	mov	edi, dword ptr [rbp - 0x170]
	sub	edi, dword ptr [rbp - 0x1a8]
	add	edi, 7
	mov	eax, edi
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x88c], edx
	nop	
	cdq	
	nop	
	idiv	ecx
	nop	
	mov	si, dx
	movsx	edx, si
	mov	r8, qword ptr [rbp - 0x650]
	mov	rbp, rbp
	mov	si, r8w
	mov	rsp, rsp
	movsx	edi, si
	add	edx, edi
	mov	edi, dword ptr [rbp - 0x88c]
	cmp	edi, edx
	mov	rbp, rbp
	jle	.label_2450
	nop	
	jmp	.label_2475
.label_2547:
	nop	
	mov	eax, 7
	lea	rsi, [rsi]
	mov	ecx, dword ptr [rbp - 0x170]
	sub	ecx, dword ptr [rbp - 0x1a8]
	nop	
	add	ecx, 7
	nop	
	mov	dword ptr [rbp - 0x8cc], eax
	mov	rsp, rsp
	mov	eax, ecx
	cdq	
	mov	ecx, dword ptr [rbp - 0x8cc]
	idiv	ecx
	lea	rdi, [rdi]
	mov	si, dx
	movsx	edx, si
	mov	rdi, qword ptr [rbp - 0x650]
	mov	rsp, rsp
	mov	si, di
	nop	
	movsx	r8d, si
	lea	rsi, [rsi]
	add	edx, r8d
	mov	rdi, qword ptr [rbp - 0x650]
	mov	rbp, rbp
	mov	si, di
	movsx	r8d, si
	cmp	edx, r8d
	jl	.label_2450
.label_2475:
	mov	eax, 7
	nop	
	mov	ecx, dword ptr [rbp - 0x170]
	sub	ecx, dword ptr [rbp - 0x1a8]
	nop	
	add	ecx, 7
	mov	dword ptr [rbp - 0x6d8], eax
	mov	rbp, rbp
	mov	eax, ecx
	cdq	
	mov	ecx, dword ptr [rbp - 0x6d8]
	mov	rbp, rbp
	idiv	ecx
	lea	rdi, [rdi]
	mov	si, dx
	movsx	edx, si
	mov	rdi, qword ptr [rbp - 0x650]
	lea	rdi, [rdi]
	mov	si, di
	movsx	r8d, si
	add	edx, r8d
	mov	rsp, rsp
	cmp	edx, 0xffff8000
	jl	.label_2450
	mov	eax, 0x7fff
	mov	rsp, rsp
	mov	ecx, 7
	lea	rsi, [rsi]
	mov	edx, dword ptr [rbp - 0x170]
	sub	edx, dword ptr [rbp - 0x1a8]
	lea	rdi, [rdi]
	add	edx, 7
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x5ec], eax
	lea	rsi, [rsi]
	mov	eax, edx
	nop	
	cdq	
	idiv	ecx
	mov	si, dx
	movsx	ecx, si
	nop	
	mov	rdi, qword ptr [rbp - 0x650]
	lea	rsi, [rsi]
	mov	si, di
	mov	rsp, rsp
	movsx	edx, si
	mov	rbp, rbp
	add	ecx, edx
	mov	edx, dword ptr [rbp - 0x5ec]
	nop	
	cmp	edx, ecx
	jge	.label_2637
.label_2450:
	mov	al, 1
	mov	ecx, 7
	lea	rdi, [rdi]
	mov	edx, dword ptr [rbp - 0x170]
	sub	edx, dword ptr [rbp - 0x1a8]
	add	edx, 7
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x209], al
	mov	rsp, rsp
	mov	eax, edx
	cdq	
	idiv	ecx
	mov	si, dx
	lea	rsi, [rsi]
	movsx	ecx, si
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x650]
	lea	rdi, [rdi]
	mov	si, di
	movsx	edx, si
	mov	rbp, rbp
	add	ecx, edx
	mov	rbp, rbp
	mov	si, cx
	movsx	rdi, si
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x650], rdi
	mov	rsp, rsp
	mov	r8b, byte ptr [rbp - 0x209]
	lea	rdi, [rdi]
	test	r8b, 1
	lea	rsi, [rsi]
	jne	.label_1987
	lea	rsi, [rsi]
	jmp	.label_2054
.label_2637:
	xor	eax, eax
	mov	cl, al
	mov	eax, 7
	nop	
	mov	edx, dword ptr [rbp - 0x170]
	mov	rbp, rbp
	sub	edx, dword ptr [rbp - 0x1a8]
	nop	
	add	edx, 7
	nop	
	mov	dword ptr [rbp - 0xde4], eax
	nop	
	mov	eax, edx
	cdq	
	lea	rdi, [rdi]
	mov	esi, dword ptr [rbp - 0xde4]
	mov	rbp, rbp
	idiv	esi
	mov	di, dx
	lea	rsi, [rsi]
	movsx	edx, di
	mov	rbp, rbp
	mov	r8, qword ptr [rbp - 0x650]
	mov	di, r8w
	mov	rbp, rbp
	movsx	r9d, di
	add	edx, r9d
	mov	rsp, rsp
	mov	di, dx
	nop	
	movsx	r8, di
	nop	
	mov	qword ptr [rbp - 0x650], r8
	nop	
	test	cl, 1
	lea	rsi, [rsi]
	jne	.label_1987
	lea	rdi, [rdi]
	jmp	.label_2054
.label_2432:
	lea	rdi, [rdi]
	mov	al, 1
	test	al, 1
	jne	.label_2712
	lea	rsi, [rsi]
	jmp	.label_2715
.label_2712:
	cmp	qword ptr [rbp - 0x650], 0
	lea	rdi, [rdi]
	jge	.label_2716
	movabs	rax, 0x8000000000000000
	mov	ecx, 7
	mov	edx, dword ptr [rbp - 0x170]
	mov	rbp, rbp
	sub	edx, dword ptr [rbp - 0x1a8]
	add	edx, 7
	mov	qword ptr [rbp - 0x6e0], rax
	mov	eax, edx
	cdq	
	mov	rbp, rbp
	idiv	ecx
	movsxd	rsi, edx
	mov	rdi, qword ptr [rbp - 0x6e0]
	lea	rdi, [rdi]
	sub	rdi, qword ptr [rbp - 0x650]
	lea	rsi, [rsi]
	cmp	rsi, rdi
	jl	.label_2720
	nop	
	jmp	.label_2748
.label_2716:
	nop	
	mov	eax, 7
	movabs	rcx, 0x7fffffffffffffff
	sub	rcx, qword ptr [rbp - 0x650]
	mov	rbp, rbp
	mov	edx, dword ptr [rbp - 0x170]
	lea	rdi, [rdi]
	sub	edx, dword ptr [rbp - 0x1a8]
	mov	rbp, rbp
	add	edx, 7
	mov	dword ptr [rbp - 0x41c], eax
	mov	eax, edx
	nop	
	cdq	
	mov	esi, dword ptr [rbp - 0x41c]
	lea	rsi, [rsi]
	idiv	esi
	nop	
	movsxd	rdi, edx
	cmp	rcx, rdi
	jl	.label_2720
	lea	rsi, [rsi]
	jmp	.label_2748
.label_2715:
	mov	rbp, rbp
	mov	eax, 7
	mov	ecx, dword ptr [rbp - 0x170]
	sub	ecx, dword ptr [rbp - 0x1a8]
	lea	rdi, [rdi]
	add	ecx, 7
	nop	
	mov	dword ptr [rbp - 0xd54], eax
	mov	eax, ecx
	mov	rsp, rsp
	cdq	
	mov	rbp, rbp
	mov	ecx, dword ptr [rbp - 0xd54]
	lea	rdi, [rdi]
	idiv	ecx
	lea	rdi, [rdi]
	cmp	edx, 0
	jge	.label_2766
	mov	rsp, rsp
	mov	eax, 7
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x650]
	mov	edx, dword ptr [rbp - 0x170]
	mov	rbp, rbp
	sub	edx, dword ptr [rbp - 0x1a8]
	mov	rsp, rsp
	add	edx, 7
	mov	dword ptr [rbp - 0x2a4], eax
	mov	eax, edx
	lea	rsi, [rsi]
	cdq	
	mov	rbp, rbp
	mov	esi, dword ptr [rbp - 0x2a4]
	idiv	esi
	movsxd	rdi, edx
	lea	rsi, [rsi]
	add	rdi, qword ptr [rbp - 0x650]
	cmp	rcx, rdi
	jle	.label_2720
	jmp	.label_2748
.label_2766:
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0x650], 0
	jge	.label_2800
	mov	eax, 7
	lea	rsi, [rsi]
	mov	ecx, dword ptr [rbp - 0x170]
	sub	ecx, dword ptr [rbp - 0x1a8]
	add	ecx, 7
	mov	dword ptr [rbp - 0xb64], eax
	lea	rsi, [rsi]
	mov	eax, ecx
	cdq	
	mov	rsp, rsp
	mov	ecx, dword ptr [rbp - 0xb64]
	idiv	ecx
	movsxd	rsi, edx
	lea	rsi, [rsi]
	mov	edx, dword ptr [rbp - 0x170]
	sub	edx, dword ptr [rbp - 0x1a8]
	add	edx, 7
	mov	eax, edx
	nop	
	cdq	
	nop	
	idiv	ecx
	mov	rsp, rsp
	movsxd	rdi, edx
	add	rdi, qword ptr [rbp - 0x650]
	cmp	rsi, rdi
	jle	.label_2720
	mov	rbp, rbp
	jmp	.label_2748
.label_2800:
	mov	eax, 7
	mov	ecx, dword ptr [rbp - 0x170]
	mov	rbp, rbp
	sub	ecx, dword ptr [rbp - 0x1a8]
	lea	rsi, [rsi]
	add	ecx, 7
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x6f4], eax
	mov	eax, ecx
	cdq	
	nop	
	mov	ecx, dword ptr [rbp - 0x6f4]
	mov	rbp, rbp
	idiv	ecx
	lea	rsi, [rsi]
	movsxd	rsi, edx
	add	rsi, qword ptr [rbp - 0x650]
	cmp	rsi, qword ptr [rbp - 0x650]
	lea	rsi, [rsi]
	jl	.label_2720
.label_2748:
	nop	
	mov	eax, 7
	mov	ecx, dword ptr [rbp - 0x170]
	sub	ecx, dword ptr [rbp - 0x1a8]
	lea	rsi, [rsi]
	add	ecx, 7
	mov	dword ptr [rbp - 0x3a4], eax
	mov	eax, ecx
	cdq	
	mov	ecx, dword ptr [rbp - 0x3a4]
	nop	
	idiv	ecx
	movsxd	rsi, edx
	nop	
	add	rsi, qword ptr [rbp - 0x650]
	cmp	rsi, -0x8000
	jl	.label_2720
	mov	rsp, rsp
	mov	eax, 0x7fff
	mov	ecx, eax
	mov	rbp, rbp
	mov	eax, 7
	nop	
	mov	edx, dword ptr [rbp - 0x170]
	nop	
	sub	edx, dword ptr [rbp - 0x1a8]
	nop	
	add	edx, 7
	mov	dword ptr [rbp - 0xcb8], eax
	mov	rbp, rbp
	mov	eax, edx
	mov	rbp, rbp
	cdq	
	mov	esi, dword ptr [rbp - 0xcb8]
	idiv	esi
	mov	rsp, rsp
	movsxd	rdi, edx
	nop	
	add	rdi, qword ptr [rbp - 0x650]
	lea	rsi, [rsi]
	cmp	rcx, rdi
	mov	rsp, rsp
	jge	.label_2862
.label_2720:
	mov	rbp, rbp
	mov	al, 1
	mov	ecx, 7
	mov	edx, dword ptr [rbp - 0x170]
	sub	edx, dword ptr [rbp - 0x1a8]
	lea	rsi, [rsi]
	add	edx, 7
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x4ad], al
	mov	eax, edx
	mov	rbp, rbp
	cdq	
	idiv	ecx
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x650]
	lea	rdi, [rdi]
	mov	ecx, esi
	lea	rdi, [rdi]
	add	edx, ecx
	mov	rsp, rsp
	mov	di, dx
	movsx	rsi, di
	mov	qword ptr [rbp - 0x650], rsi
	mov	r8b, byte ptr [rbp - 0x4ad]
	test	r8b, 1
	jne	.label_1987
	mov	rbp, rbp
	jmp	.label_2054
.label_2862:
	xor	eax, eax
	lea	rsi, [rsi]
	mov	cl, al
	nop	
	mov	eax, 7
	lea	rsi, [rsi]
	mov	edx, dword ptr [rbp - 0x170]
	sub	edx, dword ptr [rbp - 0x1a8]
	add	edx, 7
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x4d4], eax
	mov	rbp, rbp
	mov	eax, edx
	lea	rsi, [rsi]
	cdq	
	mov	esi, dword ptr [rbp - 0x4d4]
	idiv	esi
	mov	rdi, qword ptr [rbp - 0x650]
	mov	r8d, edi
	lea	rsi, [rsi]
	add	edx, r8d
	mov	r9w, dx
	movsx	rdi, r9w
	nop	
	mov	qword ptr [rbp - 0x650], rdi
	lea	rdi, [rdi]
	test	cl, 1
	jne	.label_1987
	jmp	.label_2054
.label_2424:
	xor	eax, eax
	nop	
	mov	cl, al
	mov	rbp, rbp
	test	cl, 1
	jne	.label_2941
	jmp	.label_2945
.label_2941:
	mov	rbp, rbp
	xor	eax, eax
	mov	rsp, rsp
	mov	cl, al
	test	cl, 1
	jne	.label_2947
	mov	rsp, rsp
	jmp	.label_2950
.label_2947:
	mov	al, 1
	test	al, 1
	mov	rbp, rbp
	jne	.label_2953
	lea	rsi, [rsi]
	jmp	.label_2954
.label_2953:
	mov	rax, qword ptr [rbp - 0x650]
	mov	ecx, eax
	mov	rsp, rsp
	cmp	ecx, 0
	mov	rbp, rbp
	jge	.label_2957
	mov	eax, 0x80000000
	mov	ecx, 7
	lea	rdi, [rdi]
	mov	edx, dword ptr [rbp - 0x170]
	sub	edx, dword ptr [rbp - 0x1a8]
	add	edx, 7
	mov	dword ptr [rbp - 0x5a8], eax
	nop	
	mov	eax, edx
	lea	rsi, [rsi]
	cdq	
	lea	rsi, [rsi]
	idiv	ecx
	mov	rsi, qword ptr [rbp - 0x650]
	mov	ecx, esi
	mov	edi, dword ptr [rbp - 0x5a8]
	sub	edi, ecx
	mov	rbp, rbp
	cmp	edx, edi
	lea	rsi, [rsi]
	jl	.label_2966
	mov	rsp, rsp
	jmp	.label_2993
.label_2957:
	mov	eax, 7
	mov	ecx, 0x7fffffff
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x650]
	mov	rsp, rsp
	mov	esi, edx
	sub	ecx, esi
	mov	esi, dword ptr [rbp - 0x170]
	lea	rdi, [rdi]
	sub	esi, dword ptr [rbp - 0x1a8]
	add	esi, 7
	mov	dword ptr [rbp - 0x950], eax
	mov	eax, esi
	cdq	
	mov	esi, dword ptr [rbp - 0x950]
	idiv	esi
	mov	rbp, rbp
	cmp	ecx, edx
	nop	
	jl	.label_2966
	jmp	.label_2993
.label_2954:
	mov	rbp, rbp
	mov	eax, 7
	mov	rsp, rsp
	mov	ecx, dword ptr [rbp - 0x170]
	lea	rdi, [rdi]
	sub	ecx, dword ptr [rbp - 0x1a8]
	add	ecx, 7
	mov	dword ptr [rbp - 0x924], eax
	mov	eax, ecx
	nop	
	cdq	
	mov	ecx, dword ptr [rbp - 0x924]
	idiv	ecx
	cmp	edx, 0
	jge	.label_2267
	nop	
	mov	eax, 7
	mov	rcx, qword ptr [rbp - 0x650]
	mov	rsp, rsp
	mov	edx, ecx
	mov	rsp, rsp
	mov	esi, dword ptr [rbp - 0x170]
	mov	rsp, rsp
	sub	esi, dword ptr [rbp - 0x1a8]
	add	esi, 7
	mov	dword ptr [rbp - 0x92c], eax
	nop	
	mov	eax, esi
	nop	
	mov	dword ptr [rbp - 0x720], edx
	mov	rsp, rsp
	cdq	
	mov	esi, dword ptr [rbp - 0x92c]
	lea	rsi, [rsi]
	idiv	esi
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x650]
	lea	rsi, [rsi]
	mov	edi, ecx
	add	edx, edi
	mov	edi, dword ptr [rbp - 0x720]
	nop	
	cmp	edi, edx
	lea	rsi, [rsi]
	jle	.label_2966
	mov	rbp, rbp
	jmp	.label_2993
.label_2267:
	mov	rax, qword ptr [rbp - 0x650]
	lea	rsi, [rsi]
	mov	ecx, eax
	cmp	ecx, 0
	jge	.label_3050
	lea	rdi, [rdi]
	mov	eax, 7
	mov	ecx, dword ptr [rbp - 0x170]
	sub	ecx, dword ptr [rbp - 0x1a8]
	nop	
	add	ecx, 7
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x47c], eax
	lea	rdi, [rdi]
	mov	eax, ecx
	nop	
	cdq	
	mov	ecx, dword ptr [rbp - 0x47c]
	lea	rsi, [rsi]
	idiv	ecx
	mov	esi, dword ptr [rbp - 0x170]
	lea	rdi, [rdi]
	sub	esi, dword ptr [rbp - 0x1a8]
	mov	rsp, rsp
	add	esi, 7
	mov	eax, esi
	mov	dword ptr [rbp - 0xc70], edx
	cdq	
	idiv	ecx
	mov	rdi, qword ptr [rbp - 0x650]
	nop	
	mov	esi, edi
	add	edx, esi
	mov	esi, dword ptr [rbp - 0xc70]
	mov	rsp, rsp
	cmp	esi, edx
	mov	rbp, rbp
	jle	.label_2966
	jmp	.label_2993
.label_3050:
	nop	
	mov	eax, 7
	mov	ecx, dword ptr [rbp - 0x170]
	sub	ecx, dword ptr [rbp - 0x1a8]
	lea	rsi, [rsi]
	add	ecx, 7
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0xa64], eax
	mov	eax, ecx
	lea	rsi, [rsi]
	cdq	
	mov	ecx, dword ptr [rbp - 0xa64]
	idiv	ecx
	mov	rsi, qword ptr [rbp - 0x650]
	mov	edi, esi
	mov	rbp, rbp
	add	edx, edi
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x650]
	lea	rsi, [rsi]
	mov	edi, esi
	cmp	edx, edi
	lea	rdi, [rdi]
	jl	.label_2966
.label_2993:
	mov	rsp, rsp
	mov	eax, 7
	mov	ecx, dword ptr [rbp - 0x170]
	sub	ecx, dword ptr [rbp - 0x1a8]
	lea	rdi, [rdi]
	add	ecx, 7
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0xdc8], eax
	lea	rdi, [rdi]
	mov	eax, ecx
	nop	
	cdq	
	mov	ecx, dword ptr [rbp - 0xdc8]
	idiv	ecx
	nop	
	mov	rsi, qword ptr [rbp - 0x650]
	mov	rsp, rsp
	mov	edi, esi
	lea	rdi, [rdi]
	add	edx, edi
	mov	rsp, rsp
	cmp	edx, 0x80000000
	lea	rdi, [rdi]
	jl	.label_2966
	lea	rsi, [rsi]
	mov	eax, 0x7fffffff
	mov	rsp, rsp
	mov	ecx, 7
	nop	
	mov	edx, dword ptr [rbp - 0x170]
	lea	rsi, [rsi]
	sub	edx, dword ptr [rbp - 0x1a8]
	nop	
	add	edx, 7
	mov	dword ptr [rbp - 0xb90], eax
	lea	rsi, [rsi]
	mov	eax, edx
	cdq	
	lea	rdi, [rdi]
	idiv	ecx
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x650]
	lea	rdi, [rdi]
	mov	ecx, esi
	add	edx, ecx
	mov	rsp, rsp
	mov	ecx, dword ptr [rbp - 0xb90]
	cmp	ecx, edx
	mov	rsp, rsp
	jge	.label_3124
.label_2966:
	mov	al, 1
	mov	ecx, 7
	mov	rsp, rsp
	mov	edx, dword ptr [rbp - 0x170]
	mov	rsp, rsp
	sub	edx, dword ptr [rbp - 0x1a8]
	add	edx, 7
	mov	byte ptr [rbp - 0xbc9], al
	mov	eax, edx
	cdq	
	idiv	ecx
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x650]
	mov	ecx, esi
	add	edx, ecx
	mov	rbp, rbp
	movsxd	rsi, edx
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x650], rsi
	nop	
	mov	dil, byte ptr [rbp - 0xbc9]
	lea	rdi, [rdi]
	test	dil, 1
	mov	rsp, rsp
	jne	.label_1987
	jmp	.label_2054
.label_3124:
	xor	eax, eax
	lea	rsi, [rsi]
	mov	cl, al
	mov	eax, 7
	mov	edx, dword ptr [rbp - 0x170]
	mov	rbp, rbp
	sub	edx, dword ptr [rbp - 0x1a8]
	lea	rdi, [rdi]
	add	edx, 7
	nop	
	mov	dword ptr [rbp - 0x754], eax
	mov	eax, edx
	cdq	
	mov	esi, dword ptr [rbp - 0x754]
	idiv	esi
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x650]
	lea	rsi, [rsi]
	mov	r8d, edi
	add	edx, r8d
	movsxd	rdi, edx
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x650], rdi
	test	cl, 1
	mov	rsp, rsp
	jne	.label_1987
	lea	rdi, [rdi]
	jmp	.label_2054
.label_2950:
	mov	al, 1
	test	al, 1
	mov	rsp, rsp
	jne	.label_3185
	jmp	.label_3190
.label_3185:
	cmp	qword ptr [rbp - 0x650], 0
	lea	rsi, [rsi]
	jge	.label_3191
	mov	rbp, rbp
	movabs	rax, 0x8000000000000000
	nop	
	mov	ecx, 7
	mov	edx, dword ptr [rbp - 0x170]
	lea	rdi, [rdi]
	sub	edx, dword ptr [rbp - 0x1a8]
	add	edx, 7
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x270], rax
	lea	rsi, [rsi]
	mov	eax, edx
	lea	rdi, [rdi]
	cdq	
	lea	rdi, [rdi]
	idiv	ecx
	movsxd	rsi, edx
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x270]
	lea	rdi, [rdi]
	sub	rdi, qword ptr [rbp - 0x650]
	lea	rsi, [rsi]
	cmp	rsi, rdi
	jl	.label_3196
	mov	rbp, rbp
	jmp	.label_3230
.label_3191:
	mov	eax, 7
	lea	rdi, [rdi]
	movabs	rcx, 0x7fffffffffffffff
	sub	rcx, qword ptr [rbp - 0x650]
	mov	edx, dword ptr [rbp - 0x170]
	sub	edx, dword ptr [rbp - 0x1a8]
	nop	
	add	edx, 7
	mov	dword ptr [rbp - 0x874], eax
	mov	eax, edx
	cdq	
	mov	esi, dword ptr [rbp - 0x874]
	lea	rdi, [rdi]
	idiv	esi
	mov	rbp, rbp
	movsxd	rdi, edx
	lea	rdi, [rdi]
	cmp	rcx, rdi
	jl	.label_3196
	nop	
	jmp	.label_3230
.label_3190:
	mov	eax, 7
	nop	
	mov	ecx, dword ptr [rbp - 0x170]
	sub	ecx, dword ptr [rbp - 0x1a8]
	mov	rsp, rsp
	add	ecx, 7
	mov	dword ptr [rbp - 0x660], eax
	lea	rdi, [rdi]
	mov	eax, ecx
	lea	rdi, [rdi]
	cdq	
	mov	ecx, dword ptr [rbp - 0x660]
	idiv	ecx
	lea	rsi, [rsi]
	cmp	edx, 0
	mov	rsp, rsp
	jge	.label_3249
	nop	
	mov	eax, 7
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x650]
	mov	rsp, rsp
	mov	edx, dword ptr [rbp - 0x170]
	lea	rsi, [rsi]
	sub	edx, dword ptr [rbp - 0x1a8]
	add	edx, 7
	mov	dword ptr [rbp - 0x4ac], eax
	nop	
	mov	eax, edx
	cdq	
	mov	rsp, rsp
	mov	esi, dword ptr [rbp - 0x4ac]
	idiv	esi
	lea	rsi, [rsi]
	movsxd	rdi, edx
	mov	rbp, rbp
	add	rdi, qword ptr [rbp - 0x650]
	nop	
	cmp	rcx, rdi
	mov	rsp, rsp
	jle	.label_3196
	lea	rsi, [rsi]
	jmp	.label_3230
.label_3249:
	nop	
	cmp	qword ptr [rbp - 0x650], 0
	jge	.label_3278
	mov	rsp, rsp
	mov	eax, 7
	nop	
	mov	ecx, dword ptr [rbp - 0x170]
	lea	rdi, [rdi]
	sub	ecx, dword ptr [rbp - 0x1a8]
	add	ecx, 7
	mov	dword ptr [rbp - 0x624], eax
	mov	eax, ecx
	nop	
	cdq	
	mov	rsp, rsp
	mov	ecx, dword ptr [rbp - 0x624]
	lea	rdi, [rdi]
	idiv	ecx
	mov	rsp, rsp
	movsxd	rsi, edx
	mov	rbp, rbp
	mov	edx, dword ptr [rbp - 0x170]
	nop	
	sub	edx, dword ptr [rbp - 0x1a8]
	mov	rsp, rsp
	add	edx, 7
	lea	rsi, [rsi]
	mov	eax, edx
	cdq	
	idiv	ecx
	movsxd	rdi, edx
	mov	rbp, rbp
	add	rdi, qword ptr [rbp - 0x650]
	lea	rsi, [rsi]
	cmp	rsi, rdi
	jle	.label_3196
	jmp	.label_3230
.label_3278:
	mov	rsp, rsp
	mov	eax, 7
	mov	rsp, rsp
	mov	ecx, dword ptr [rbp - 0x170]
	sub	ecx, dword ptr [rbp - 0x1a8]
	nop	
	add	ecx, 7
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0xbec], eax
	lea	rdi, [rdi]
	mov	eax, ecx
	mov	rsp, rsp
	cdq	
	mov	ecx, dword ptr [rbp - 0xbec]
	idiv	ecx
	movsxd	rsi, edx
	lea	rdi, [rdi]
	add	rsi, qword ptr [rbp - 0x650]
	mov	rbp, rbp
	cmp	rsi, qword ptr [rbp - 0x650]
	lea	rsi, [rsi]
	jl	.label_3196
.label_3230:
	mov	eax, 7
	mov	rbp, rbp
	mov	ecx, dword ptr [rbp - 0x170]
	mov	rbp, rbp
	sub	ecx, dword ptr [rbp - 0x1a8]
	add	ecx, 7
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0xa3c], eax
	mov	eax, ecx
	nop	
	cdq	
	mov	ecx, dword ptr [rbp - 0xa3c]
	idiv	ecx
	movsxd	rsi, edx
	mov	rsp, rsp
	add	rsi, qword ptr [rbp - 0x650]
	lea	rdi, [rdi]
	cmp	rsi, -0x80000000
	jl	.label_3196
	mov	eax, 0x7fffffff
	nop	
	mov	ecx, eax
	mov	eax, 7
	lea	rdi, [rdi]
	mov	edx, dword ptr [rbp - 0x170]
	sub	edx, dword ptr [rbp - 0x1a8]
	mov	rbp, rbp
	add	edx, 7
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x914], eax
	mov	eax, edx
	mov	rbp, rbp
	cdq	
	lea	rdi, [rdi]
	mov	esi, dword ptr [rbp - 0x914]
	mov	rsp, rsp
	idiv	esi
	movsxd	rdi, edx
	add	rdi, qword ptr [rbp - 0x650]
	cmp	rcx, rdi
	jge	.label_2399
.label_3196:
	mov	al, 1
	mov	rsp, rsp
	mov	ecx, 7
	mov	rsp, rsp
	mov	edx, dword ptr [rbp - 0x170]
	sub	edx, dword ptr [rbp - 0x1a8]
	mov	rsp, rsp
	add	edx, 7
	mov	byte ptr [rbp - 0xa71], al
	mov	eax, edx
	cdq	
	idiv	ecx
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x650]
	mov	ecx, esi
	add	edx, ecx
	lea	rdi, [rdi]
	movsxd	rsi, edx
	mov	qword ptr [rbp - 0x650], rsi
	mov	dil, byte ptr [rbp - 0xa71]
	lea	rdi, [rdi]
	test	dil, 1
	lea	rdi, [rdi]
	jne	.label_1987
	jmp	.label_2054
.label_2399:
	xor	eax, eax
	mov	rbp, rbp
	mov	cl, al
	mov	eax, 7
	lea	rdi, [rdi]
	mov	edx, dword ptr [rbp - 0x170]
	nop	
	sub	edx, dword ptr [rbp - 0x1a8]
	add	edx, 7
	mov	dword ptr [rbp - 0x4fc], eax
	mov	eax, edx
	mov	rbp, rbp
	cdq	
	mov	esi, dword ptr [rbp - 0x4fc]
	idiv	esi
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x650]
	mov	r8d, edi
	nop	
	add	edx, r8d
	movsxd	rdi, edx
	mov	qword ptr [rbp - 0x650], rdi
	test	cl, 1
	mov	rbp, rbp
	jne	.label_1987
	lea	rdi, [rdi]
	jmp	.label_2054
.label_2945:
	mov	rbp, rbp
	mov	al, 1
	mov	rbp, rbp
	test	al, 1
	lea	rsi, [rsi]
	jne	.label_3403
	jmp	.label_3408
.label_3403:
	lea	rsi, [rsi]
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_3410
	nop	
	jmp	.label_3416
.label_3410:
	mov	rbp, rbp
	mov	al, 1
	test	al, 1
	mov	rbp, rbp
	jne	.label_2877
	lea	rsi, [rsi]
	jmp	.label_3424
.label_2877:
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x650], 0
	mov	rsp, rsp
	jge	.label_3426
	movabs	rax, 0x8000000000000000
	mov	ecx, 7
	nop	
	mov	edx, dword ptr [rbp - 0x170]
	sub	edx, dword ptr [rbp - 0x1a8]
	add	edx, 7
	mov	qword ptr [rbp - 0x1d0], rax
	mov	eax, edx
	cdq	
	idiv	ecx
	mov	rsp, rsp
	movsxd	rsi, edx
	mov	rdi, qword ptr [rbp - 0x1d0]
	sub	rdi, qword ptr [rbp - 0x650]
	cmp	rsi, rdi
	mov	rsp, rsp
	jl	.label_3409
	jmp	.label_3455
.label_3426:
	mov	eax, 7
	mov	rbp, rbp
	movabs	rcx, 0x7fffffffffffffff
	sub	rcx, qword ptr [rbp - 0x650]
	mov	edx, dword ptr [rbp - 0x170]
	lea	rdi, [rdi]
	sub	edx, dword ptr [rbp - 0x1a8]
	mov	rbp, rbp
	add	edx, 7
	mov	dword ptr [rbp - 0x434], eax
	mov	eax, edx
	cdq	
	mov	esi, dword ptr [rbp - 0x434]
	idiv	esi
	movsxd	rdi, edx
	mov	rsp, rsp
	cmp	rcx, rdi
	jl	.label_3409
	mov	rbp, rbp
	jmp	.label_3455
.label_3424:
	mov	rbp, rbp
	mov	eax, 7
	lea	rdi, [rdi]
	mov	ecx, dword ptr [rbp - 0x170]
	sub	ecx, dword ptr [rbp - 0x1a8]
	add	ecx, 7
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x61c], eax
	mov	eax, ecx
	cdq	
	mov	ecx, dword ptr [rbp - 0x61c]
	lea	rsi, [rsi]
	idiv	ecx
	nop	
	movsxd	rsi, edx
	cmp	rsi, 0
	lea	rdi, [rdi]
	jge	.label_3472
	mov	eax, 7
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x650]
	nop	
	mov	edx, dword ptr [rbp - 0x170]
	sub	edx, dword ptr [rbp - 0x1a8]
	mov	rsp, rsp
	add	edx, 7
	mov	dword ptr [rbp - 0x4dc], eax
	lea	rsi, [rsi]
	mov	eax, edx
	cdq	
	lea	rsi, [rsi]
	mov	esi, dword ptr [rbp - 0x4dc]
	idiv	esi
	movsxd	rdi, edx
	add	rdi, qword ptr [rbp - 0x650]
	cmp	rcx, rdi
	jle	.label_3409
	jmp	.label_3455
.label_3472:
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x650], 0
	mov	rsp, rsp
	jge	.label_3502
	mov	eax, 7
	mov	rsp, rsp
	mov	ecx, dword ptr [rbp - 0x170]
	sub	ecx, dword ptr [rbp - 0x1a8]
	lea	rsi, [rsi]
	add	ecx, 7
	nop	
	mov	dword ptr [rbp - 0x454], eax
	mov	eax, ecx
	cdq	
	lea	rsi, [rsi]
	mov	ecx, dword ptr [rbp - 0x454]
	lea	rsi, [rsi]
	idiv	ecx
	lea	rsi, [rsi]
	movsxd	rsi, edx
	lea	rdi, [rdi]
	mov	edx, dword ptr [rbp - 0x170]
	sub	edx, dword ptr [rbp - 0x1a8]
	add	edx, 7
	mov	rsp, rsp
	mov	eax, edx
	nop	
	cdq	
	idiv	ecx
	movsxd	rdi, edx
	mov	rsp, rsp
	add	rdi, qword ptr [rbp - 0x650]
	mov	rbp, rbp
	cmp	rsi, rdi
	lea	rsi, [rsi]
	jle	.label_3409
	jmp	.label_3455
.label_3502:
	nop	
	mov	eax, 7
	mov	rbp, rbp
	mov	ecx, dword ptr [rbp - 0x170]
	mov	rsp, rsp
	sub	ecx, dword ptr [rbp - 0x1a8]
	add	ecx, 7
	mov	dword ptr [rbp - 0xd38], eax
	mov	eax, ecx
	lea	rdi, [rdi]
	cdq	
	nop	
	mov	ecx, dword ptr [rbp - 0xd38]
	idiv	ecx
	mov	rbp, rbp
	movsxd	rsi, edx
	lea	rdi, [rdi]
	add	rsi, qword ptr [rbp - 0x650]
	cmp	rsi, qword ptr [rbp - 0x650]
	lea	rsi, [rsi]
	jl	.label_3409
.label_3455:
	movabs	rax, 0x8000000000000000
	mov	ecx, 7
	mov	rsp, rsp
	mov	edx, dword ptr [rbp - 0x170]
	mov	rsp, rsp
	sub	edx, dword ptr [rbp - 0x1a8]
	mov	rbp, rbp
	add	edx, 7
	mov	qword ptr [rbp - 0xb48], rax
	mov	rbp, rbp
	mov	eax, edx
	mov	rbp, rbp
	cdq	
	lea	rsi, [rsi]
	idiv	ecx
	movsxd	rsi, edx
	add	rsi, qword ptr [rbp - 0x650]
	nop	
	mov	rdi, qword ptr [rbp - 0xb48]
	mov	rsp, rsp
	cmp	rsi, rdi
	lea	rdi, [rdi]
	jl	.label_3409
	mov	rsp, rsp
	movabs	rax, 0x7fffffffffffffff
	mov	ecx, 7
	mov	edx, dword ptr [rbp - 0x170]
	lea	rsi, [rsi]
	sub	edx, dword ptr [rbp - 0x1a8]
	add	edx, 7
	mov	rsp, rsp
	mov	qword ptr [rbp - 0xb60], rax
	mov	eax, edx
	cdq	
	idiv	ecx
	movsxd	rsi, edx
	add	rsi, qword ptr [rbp - 0x650]
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0xb60]
	lea	rdi, [rdi]
	cmp	rdi, rsi
	jge	.label_3784
.label_3409:
	mov	al, 1
	mov	ecx, 7
	mov	edx, dword ptr [rbp - 0x170]
	nop	
	sub	edx, dword ptr [rbp - 0x1a8]
	lea	rdi, [rdi]
	add	edx, 7
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x329], al
	mov	eax, edx
	nop	
	cdq	
	lea	rdi, [rdi]
	idiv	ecx
	lea	rdi, [rdi]
	movsxd	rsi, edx
	add	rsi, qword ptr [rbp - 0x650]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x650], rsi
	mov	rbp, rbp
	mov	dil, byte ptr [rbp - 0x329]
	lea	rdi, [rdi]
	test	dil, 1
	nop	
	jne	.label_1987
	mov	rsp, rsp
	jmp	.label_2054
.label_3784:
	xor	eax, eax
	mov	rsp, rsp
	mov	cl, al
	nop	
	mov	eax, 7
	lea	rsi, [rsi]
	mov	edx, dword ptr [rbp - 0x170]
	sub	edx, dword ptr [rbp - 0x1a8]
	add	edx, 7
	nop	
	mov	dword ptr [rbp - 0xb74], eax
	mov	rbp, rbp
	mov	eax, edx
	mov	rsp, rsp
	cdq	
	mov	rsp, rsp
	mov	esi, dword ptr [rbp - 0xb74]
	nop	
	idiv	esi
	movsxd	rdi, edx
	add	rdi, qword ptr [rbp - 0x650]
	mov	qword ptr [rbp - 0x650], rdi
	test	cl, 1
	jne	.label_1987
	jmp	.label_2054
.label_3416:
	mov	al, 1
	test	al, 1
	mov	rsp, rsp
	jne	.label_3627
	nop	
	jmp	.label_3633
.label_3627:
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x650], 0
	jge	.label_3635
	mov	rsp, rsp
	movabs	rax, 0x8000000000000000
	mov	ecx, 7
	mov	edx, dword ptr [rbp - 0x170]
	mov	rsp, rsp
	sub	edx, dword ptr [rbp - 0x1a8]
	nop	
	add	edx, 7
	mov	qword ptr [rbp - 0x910], rax
	mov	eax, edx
	cdq	
	nop	
	idiv	ecx
	nop	
	movsxd	rsi, edx
	mov	rdi, qword ptr [rbp - 0x910]
	nop	
	sub	rdi, qword ptr [rbp - 0x650]
	mov	rsp, rsp
	cmp	rsi, rdi
	mov	rsp, rsp
	jl	.label_2680
	nop	
	jmp	.label_3660
.label_3635:
	mov	eax, 7
	movabs	rcx, 0x7fffffffffffffff
	sub	rcx, qword ptr [rbp - 0x650]
	lea	rsi, [rsi]
	mov	edx, dword ptr [rbp - 0x170]
	sub	edx, dword ptr [rbp - 0x1a8]
	nop	
	add	edx, 7
	mov	dword ptr [rbp - 0x210], eax
	mov	rsp, rsp
	mov	eax, edx
	mov	rbp, rbp
	cdq	
	mov	esi, dword ptr [rbp - 0x210]
	nop	
	idiv	esi
	lea	rsi, [rsi]
	movsxd	rdi, edx
	mov	rbp, rbp
	cmp	rcx, rdi
	jl	.label_2680
	jmp	.label_3660
.label_3633:
	lea	rdi, [rdi]
	mov	eax, 7
	mov	rsp, rsp
	mov	ecx, dword ptr [rbp - 0x170]
	lea	rsi, [rsi]
	sub	ecx, dword ptr [rbp - 0x1a8]
	mov	rsp, rsp
	add	ecx, 7
	mov	dword ptr [rbp - 0xd70], eax
	mov	eax, ecx
	lea	rsi, [rsi]
	cdq	
	lea	rsi, [rsi]
	mov	ecx, dword ptr [rbp - 0xd70]
	mov	rsp, rsp
	idiv	ecx
	mov	rbp, rbp
	cmp	edx, 0
	lea	rsi, [rsi]
	jge	.label_3676
	mov	eax, 7
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x650]
	mov	rsp, rsp
	mov	edx, dword ptr [rbp - 0x170]
	sub	edx, dword ptr [rbp - 0x1a8]
	mov	rbp, rbp
	add	edx, 7
	mov	dword ptr [rbp - 0x7b4], eax
	mov	eax, edx
	cdq	
	mov	esi, dword ptr [rbp - 0x7b4]
	mov	rsp, rsp
	idiv	esi
	nop	
	movsxd	rdi, edx
	add	rdi, qword ptr [rbp - 0x650]
	lea	rdi, [rdi]
	cmp	rcx, rdi
	lea	rdi, [rdi]
	jle	.label_2680
	jmp	.label_3660
.label_3676:
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x650], 0
	jge	.label_3705
	mov	rbp, rbp
	mov	eax, 7
	mov	ecx, dword ptr [rbp - 0x170]
	nop	
	sub	ecx, dword ptr [rbp - 0x1a8]
	add	ecx, 7
	mov	rsp, rsp
	mov	dword ptr [rbp - 0xc8c], eax
	mov	rbp, rbp
	mov	eax, ecx
	lea	rdi, [rdi]
	cdq	
	mov	ecx, dword ptr [rbp - 0xc8c]
	idiv	ecx
	lea	rsi, [rsi]
	movsxd	rsi, edx
	mov	edx, dword ptr [rbp - 0x170]
	nop	
	sub	edx, dword ptr [rbp - 0x1a8]
	add	edx, 7
	mov	rbp, rbp
	mov	eax, edx
	cdq	
	mov	rsp, rsp
	idiv	ecx
	lea	rdi, [rdi]
	movsxd	rdi, edx
	add	rdi, qword ptr [rbp - 0x650]
	mov	rbp, rbp
	cmp	rsi, rdi
	jle	.label_2680
	jmp	.label_3660
.label_3705:
	mov	rsp, rsp
	mov	eax, 7
	mov	ecx, dword ptr [rbp - 0x170]
	sub	ecx, dword ptr [rbp - 0x1a8]
	nop	
	add	ecx, 7
	mov	dword ptr [rbp - 0x250], eax
	mov	eax, ecx
	cdq	
	mov	ecx, dword ptr [rbp - 0x250]
	idiv	ecx
	movsxd	rsi, edx
	add	rsi, qword ptr [rbp - 0x650]
	cmp	rsi, qword ptr [rbp - 0x650]
	nop	
	jl	.label_2680
.label_3660:
	movabs	rax, 0x8000000000000000
	lea	rdi, [rdi]
	mov	ecx, 7
	mov	rsp, rsp
	mov	edx, dword ptr [rbp - 0x170]
	mov	rbp, rbp
	sub	edx, dword ptr [rbp - 0x1a8]
	nop	
	add	edx, 7
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0xb80], rax
	mov	eax, edx
	cdq	
	idiv	ecx
	nop	
	movsxd	rsi, edx
	add	rsi, qword ptr [rbp - 0x650]
	mov	rdi, qword ptr [rbp - 0xb80]
	cmp	rsi, rdi
	lea	rdi, [rdi]
	jl	.label_2680
	mov	rbp, rbp
	movabs	rax, 0x7fffffffffffffff
	mov	ecx, 7
	mov	edx, dword ptr [rbp - 0x170]
	lea	rdi, [rdi]
	sub	edx, dword ptr [rbp - 0x1a8]
	mov	rsp, rsp
	add	edx, 7
	mov	qword ptr [rbp - 0xb28], rax
	mov	rbp, rbp
	mov	eax, edx
	cdq	
	idiv	ecx
	nop	
	movsxd	rsi, edx
	add	rsi, qword ptr [rbp - 0x650]
	mov	rdi, qword ptr [rbp - 0xb28]
	mov	rbp, rbp
	cmp	rdi, rsi
	jge	.label_3205
.label_2680:
	lea	rsi, [rsi]
	mov	al, 1
	nop	
	mov	ecx, 7
	nop	
	mov	edx, dword ptr [rbp - 0x170]
	mov	rsp, rsp
	sub	edx, dword ptr [rbp - 0x1a8]
	add	edx, 7
	nop	
	mov	byte ptr [rbp - 0x73e], al
	lea	rdi, [rdi]
	mov	eax, edx
	cdq	
	nop	
	idiv	ecx
	movsxd	rsi, edx
	add	rsi, qword ptr [rbp - 0x650]
	mov	qword ptr [rbp - 0x650], rsi
	mov	rbp, rbp
	mov	dil, byte ptr [rbp - 0x73e]
	test	dil, 1
	jne	.label_1987
	lea	rdi, [rdi]
	jmp	.label_2054
.label_3205:
	lea	rdi, [rdi]
	xor	eax, eax
	mov	cl, al
	mov	rbp, rbp
	mov	eax, 7
	mov	edx, dword ptr [rbp - 0x170]
	sub	edx, dword ptr [rbp - 0x1a8]
	add	edx, 7
	mov	dword ptr [rbp - 0xc88], eax
	mov	eax, edx
	mov	rsp, rsp
	cdq	
	nop	
	mov	esi, dword ptr [rbp - 0xc88]
	idiv	esi
	movsxd	rdi, edx
	mov	rbp, rbp
	add	rdi, qword ptr [rbp - 0x650]
	mov	qword ptr [rbp - 0x650], rdi
	mov	rsp, rsp
	test	cl, 1
	lea	rsi, [rsi]
	jne	.label_1987
	lea	rsi, [rsi]
	jmp	.label_2054
.label_3408:
	lea	rsi, [rsi]
	xor	eax, eax
	mov	rsp, rsp
	mov	cl, al
	test	cl, 1
	nop	
	jne	.label_3579
	lea	rdi, [rdi]
	jmp	.label_3816
.label_3579:
	mov	rbp, rbp
	mov	al, 1
	test	al, 1
	jne	.label_3819
	jmp	.label_3823
.label_3819:
	cmp	qword ptr [rbp - 0x650], 0
	lea	rsi, [rsi]
	jge	.label_3825
	mov	rbp, rbp
	movabs	rax, 0x8000000000000000
	mov	ecx, 7
	mov	rbp, rbp
	mov	edx, dword ptr [rbp - 0x170]
	sub	edx, dword ptr [rbp - 0x1a8]
	lea	rdi, [rdi]
	add	edx, 7
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x6b8], rax
	nop	
	mov	eax, edx
	nop	
	cdq	
	idiv	ecx
	movsxd	rsi, edx
	mov	rdi, qword ptr [rbp - 0x6b8]
	sub	rdi, qword ptr [rbp - 0x650]
	mov	rbp, rbp
	cmp	rsi, rdi
	jl	.label_1919
	jmp	.label_1897
.label_3825:
	mov	eax, 7
	movabs	rcx, 0x7fffffffffffffff
	lea	rdi, [rdi]
	sub	rcx, qword ptr [rbp - 0x650]
	mov	edx, dword ptr [rbp - 0x170]
	sub	edx, dword ptr [rbp - 0x1a8]
	add	edx, 7
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x43c], eax
	lea	rdi, [rdi]
	mov	eax, edx
	mov	rbp, rbp
	cdq	
	nop	
	mov	esi, dword ptr [rbp - 0x43c]
	idiv	esi
	lea	rsi, [rsi]
	movsxd	rdi, edx
	mov	rbp, rbp
	cmp	rcx, rdi
	lea	rsi, [rsi]
	jl	.label_1919
	jmp	.label_1897
.label_3823:
	lea	rsi, [rsi]
	mov	eax, 7
	mov	ecx, dword ptr [rbp - 0x170]
	mov	rsp, rsp
	sub	ecx, dword ptr [rbp - 0x1a8]
	add	ecx, 7
	mov	rbp, rbp
	mov	dword ptr [rbp - 8], eax
	mov	rsp, rsp
	mov	eax, ecx
	nop	
	cdq	
	nop	
	mov	ecx, dword ptr [rbp - 8]
	idiv	ecx
	movsxd	rsi, edx
	mov	rbp, rbp
	cmp	rsi, 0
	mov	rsp, rsp
	jge	.label_1916
	lea	rsi, [rsi]
	mov	eax, 7
	mov	rcx, qword ptr [rbp - 0x650]
	lea	rsi, [rsi]
	mov	edx, dword ptr [rbp - 0x170]
	sub	edx, dword ptr [rbp - 0x1a8]
	lea	rdi, [rdi]
	add	edx, 7
	mov	dword ptr [rbp - 0x930], eax
	lea	rdi, [rdi]
	mov	eax, edx
	mov	rbp, rbp
	cdq	
	mov	esi, dword ptr [rbp - 0x930]
	idiv	esi
	movsxd	rdi, edx
	mov	rsp, rsp
	add	rdi, qword ptr [rbp - 0x650]
	cmp	rcx, rdi
	jle	.label_1919
	lea	rdi, [rdi]
	jmp	.label_1897
.label_1916:
	cmp	qword ptr [rbp - 0x650], 0
	lea	rdi, [rdi]
	jge	.label_2149
	mov	eax, 7
	lea	rsi, [rsi]
	mov	ecx, dword ptr [rbp - 0x170]
	sub	ecx, dword ptr [rbp - 0x1a8]
	mov	rsp, rsp
	add	ecx, 7
	mov	dword ptr [rbp - 0xe0c], eax
	nop	
	mov	eax, ecx
	cdq	
	mov	ecx, dword ptr [rbp - 0xe0c]
	nop	
	idiv	ecx
	lea	rsi, [rsi]
	movsxd	rsi, edx
	mov	edx, dword ptr [rbp - 0x170]
	lea	rsi, [rsi]
	sub	edx, dword ptr [rbp - 0x1a8]
	nop	
	add	edx, 7
	lea	rsi, [rsi]
	mov	eax, edx
	cdq	
	idiv	ecx
	movsxd	rdi, edx
	lea	rsi, [rsi]
	add	rdi, qword ptr [rbp - 0x650]
	cmp	rsi, rdi
	jle	.label_1919
	jmp	.label_1897
.label_2149:
	lea	rdi, [rdi]
	mov	eax, 7
	mov	ecx, dword ptr [rbp - 0x170]
	nop	
	sub	ecx, dword ptr [rbp - 0x1a8]
	add	ecx, 7
	mov	dword ptr [rbp - 0x62c], eax
	mov	eax, ecx
	cdq	
	mov	ecx, dword ptr [rbp - 0x62c]
	mov	rsp, rsp
	idiv	ecx
	movsxd	rsi, edx
	mov	rbp, rbp
	add	rsi, qword ptr [rbp - 0x650]
	cmp	rsi, qword ptr [rbp - 0x650]
	jl	.label_1919
.label_1897:
	mov	rbp, rbp
	movabs	rax, 0x8000000000000000
	mov	ecx, 7
	lea	rdi, [rdi]
	mov	edx, dword ptr [rbp - 0x170]
	sub	edx, dword ptr [rbp - 0x1a8]
	add	edx, 7
	mov	qword ptr [rbp - 0x900], rax
	lea	rdi, [rdi]
	mov	eax, edx
	cdq	
	idiv	ecx
	movsxd	rsi, edx
	add	rsi, qword ptr [rbp - 0x650]
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x900]
	lea	rsi, [rsi]
	cmp	rsi, rdi
	jl	.label_1919
	movabs	rax, 0x7fffffffffffffff
	nop	
	mov	ecx, 7
	lea	rsi, [rsi]
	mov	edx, dword ptr [rbp - 0x170]
	sub	edx, dword ptr [rbp - 0x1a8]
	add	edx, 7
	nop	
	mov	qword ptr [rbp - 0x4a8], rax
	mov	eax, edx
	lea	rsi, [rsi]
	cdq	
	idiv	ecx
	movsxd	rsi, edx
	add	rsi, qword ptr [rbp - 0x650]
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x4a8]
	lea	rdi, [rdi]
	cmp	rdi, rsi
	lea	rdi, [rdi]
	jge	.label_2021
.label_1919:
	mov	rsp, rsp
	mov	al, 1
	nop	
	mov	ecx, 7
	mov	edx, dword ptr [rbp - 0x170]
	lea	rsi, [rsi]
	sub	edx, dword ptr [rbp - 0x1a8]
	add	edx, 7
	mov	byte ptr [rbp - 0xd41], al
	mov	eax, edx
	cdq	
	idiv	ecx
	movsxd	rsi, edx
	add	rsi, qword ptr [rbp - 0x650]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x650], rsi
	mov	dil, byte ptr [rbp - 0xd41]
	test	dil, 1
	nop	
	jne	.label_1987
	jmp	.label_2054
.label_2021:
	xor	eax, eax
	lea	rdi, [rdi]
	mov	cl, al
	nop	
	mov	eax, 7
	mov	edx, dword ptr [rbp - 0x170]
	sub	edx, dword ptr [rbp - 0x1a8]
	add	edx, 7
	mov	dword ptr [rbp - 0x748], eax
	mov	rsp, rsp
	mov	eax, edx
	cdq	
	nop	
	mov	esi, dword ptr [rbp - 0x748]
	idiv	esi
	mov	rsp, rsp
	movsxd	rdi, edx
	add	rdi, qword ptr [rbp - 0x650]
	mov	qword ptr [rbp - 0x650], rdi
	mov	rsp, rsp
	test	cl, 1
	jne	.label_1987
	jmp	.label_2054
.label_3816:
	nop	
	mov	al, 1
	lea	rsi, [rsi]
	test	al, 1
	jne	.label_2080
	jmp	.label_2088
.label_2080:
	cmp	qword ptr [rbp - 0x650], 0
	nop	
	jge	.label_2091
	mov	rsp, rsp
	movabs	rax, 0x8000000000000000
	mov	rbp, rbp
	mov	ecx, 7
	mov	rbp, rbp
	mov	edx, dword ptr [rbp - 0x170]
	sub	edx, dword ptr [rbp - 0x1a8]
	nop	
	add	edx, 7
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x790], rax
	mov	eax, edx
	cdq	
	idiv	ecx
	mov	rsp, rsp
	movsxd	rsi, edx
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x790]
	mov	rbp, rbp
	sub	rdi, qword ptr [rbp - 0x650]
	cmp	rsi, rdi
	nop	
	jl	.label_1935
	mov	rsp, rsp
	jmp	.label_2113
.label_2091:
	lea	rdi, [rdi]
	mov	eax, 7
	movabs	rcx, 0x7fffffffffffffff
	sub	rcx, qword ptr [rbp - 0x650]
	mov	edx, dword ptr [rbp - 0x170]
	sub	edx, dword ptr [rbp - 0x1a8]
	mov	rbp, rbp
	add	edx, 7
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0xdd4], eax
	nop	
	mov	eax, edx
	lea	rsi, [rsi]
	cdq	
	nop	
	mov	esi, dword ptr [rbp - 0xdd4]
	mov	rbp, rbp
	idiv	esi
	movsxd	rdi, edx
	mov	rsp, rsp
	cmp	rcx, rdi
	nop	
	jl	.label_1935
	lea	rsi, [rsi]
	jmp	.label_2113
.label_2088:
	mov	eax, 7
	lea	rdi, [rdi]
	mov	ecx, dword ptr [rbp - 0x170]
	lea	rsi, [rsi]
	sub	ecx, dword ptr [rbp - 0x1a8]
	add	ecx, 7
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0xc6c], eax
	mov	rbp, rbp
	mov	eax, ecx
	cdq	
	nop	
	mov	ecx, dword ptr [rbp - 0xc6c]
	idiv	ecx
	cmp	edx, 0
	jge	.label_3284
	lea	rsi, [rsi]
	mov	eax, 7
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x650]
	mov	edx, dword ptr [rbp - 0x170]
	mov	rsp, rsp
	sub	edx, dword ptr [rbp - 0x1a8]
	add	edx, 7
	mov	dword ptr [rbp - 0x7ec], eax
	lea	rsi, [rsi]
	mov	eax, edx
	mov	rsp, rsp
	cdq	
	mov	esi, dword ptr [rbp - 0x7ec]
	idiv	esi
	movsxd	rdi, edx
	add	rdi, qword ptr [rbp - 0x650]
	cmp	rcx, rdi
	jle	.label_1935
	mov	rbp, rbp
	jmp	.label_2113
.label_3284:
	nop	
	cmp	qword ptr [rbp - 0x650], 0
	mov	rbp, rbp
	jge	.label_2178
	mov	eax, 7
	mov	ecx, dword ptr [rbp - 0x170]
	sub	ecx, dword ptr [rbp - 0x1a8]
	lea	rdi, [rdi]
	add	ecx, 7
	mov	dword ptr [rbp - 0xd34], eax
	mov	eax, ecx
	cdq	
	mov	ecx, dword ptr [rbp - 0xd34]
	lea	rdi, [rdi]
	idiv	ecx
	movsxd	rsi, edx
	mov	edx, dword ptr [rbp - 0x170]
	sub	edx, dword ptr [rbp - 0x1a8]
	lea	rdi, [rdi]
	add	edx, 7
	lea	rdi, [rdi]
	mov	eax, edx
	mov	rsp, rsp
	cdq	
	mov	rsp, rsp
	idiv	ecx
	lea	rsi, [rsi]
	movsxd	rdi, edx
	mov	rsp, rsp
	add	rdi, qword ptr [rbp - 0x650]
	cmp	rsi, rdi
	mov	rbp, rbp
	jle	.label_1935
	lea	rsi, [rsi]
	jmp	.label_2113
.label_2178:
	mov	rbp, rbp
	mov	eax, 7
	mov	rbp, rbp
	mov	ecx, dword ptr [rbp - 0x170]
	mov	rsp, rsp
	sub	ecx, dword ptr [rbp - 0x1a8]
	add	ecx, 7
	nop	
	mov	dword ptr [rbp - 0x330], eax
	mov	rsp, rsp
	mov	eax, ecx
	lea	rsi, [rsi]
	cdq	
	mov	ecx, dword ptr [rbp - 0x330]
	nop	
	idiv	ecx
	movsxd	rsi, edx
	lea	rdi, [rdi]
	add	rsi, qword ptr [rbp - 0x650]
	cmp	rsi, qword ptr [rbp - 0x650]
	lea	rsi, [rsi]
	jl	.label_1935
.label_2113:
	movabs	rax, 0x8000000000000000
	lea	rdi, [rdi]
	mov	ecx, 7
	mov	edx, dword ptr [rbp - 0x170]
	sub	edx, dword ptr [rbp - 0x1a8]
	add	edx, 7
	mov	qword ptr [rbp - 0xdd0], rax
	mov	eax, edx
	cdq	
	lea	rdi, [rdi]
	idiv	ecx
	movsxd	rsi, edx
	add	rsi, qword ptr [rbp - 0x650]
	mov	rdi, qword ptr [rbp - 0xdd0]
	lea	rdi, [rdi]
	cmp	rsi, rdi
	jl	.label_1935
	lea	rsi, [rsi]
	movabs	rax, 0x7fffffffffffffff
	nop	
	mov	ecx, 7
	nop	
	mov	edx, dword ptr [rbp - 0x170]
	sub	edx, dword ptr [rbp - 0x1a8]
	add	edx, 7
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x730], rax
	mov	rbp, rbp
	mov	eax, edx
	nop	
	cdq	
	mov	rbp, rbp
	idiv	ecx
	movsxd	rsi, edx
	add	rsi, qword ptr [rbp - 0x650]
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x730]
	lea	rsi, [rsi]
	cmp	rdi, rsi
	mov	rsp, rsp
	jge	.label_3860
.label_1935:
	mov	al, 1
	mov	ecx, 7
	mov	edx, dword ptr [rbp - 0x170]
	sub	edx, dword ptr [rbp - 0x1a8]
	add	edx, 7
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x821], al
	mov	rsp, rsp
	mov	eax, edx
	nop	
	cdq	
	idiv	ecx
	lea	rsi, [rsi]
	movsxd	rsi, edx
	add	rsi, qword ptr [rbp - 0x650]
	mov	qword ptr [rbp - 0x650], rsi
	mov	dil, byte ptr [rbp - 0x821]
	lea	rdi, [rdi]
	test	dil, 1
	jne	.label_1987
	mov	rsp, rsp
	jmp	.label_2054
.label_3860:
	mov	rsp, rsp
	xor	eax, eax
	mov	rsp, rsp
	mov	cl, al
	nop	
	mov	eax, 7
	lea	rsi, [rsi]
	mov	edx, dword ptr [rbp - 0x170]
	sub	edx, dword ptr [rbp - 0x1a8]
	nop	
	add	edx, 7
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x82c], eax
	mov	rbp, rbp
	mov	eax, edx
	lea	rsi, [rsi]
	cdq	
	mov	esi, dword ptr [rbp - 0x82c]
	lea	rsi, [rsi]
	idiv	esi
	movsxd	rdi, edx
	mov	rsp, rsp
	add	rdi, qword ptr [rbp - 0x650]
	mov	qword ptr [rbp - 0x650], rdi
	lea	rsi, [rsi]
	test	cl, 1
	mov	rbp, rbp
	jne	.label_1987
.label_2054:
	mov	rbp, rbp
	xor	eax, eax
	mov	cl, al
	nop	
	test	cl, 1
	jne	.label_2327
	lea	rdi, [rdi]
	jmp	.label_2332
.label_2327:
	xor	eax, eax
	mov	cl, al
	nop	
	test	cl, 1
	mov	rsp, rsp
	jne	.label_2335
	jmp	.label_2343
.label_2335:
	mov	al, 1
	test	al, 1
	mov	rsp, rsp
	jne	.label_2345
	mov	rbp, rbp
	jmp	.label_2428
.label_2345:
	mov	eax, dword ptr [rbp - 0x1b4]
	mov	cl, al
	mov	rsp, rsp
	movsx	eax, cl
	mov	rbp, rbp
	cmp	eax, 0
	jge	.label_2351
	mov	eax, 0x80000000
	mov	rcx, qword ptr [rbp - 0x650]
	lea	rdi, [rdi]
	mov	dl, cl
	movsx	esi, dl
	mov	edi, dword ptr [rbp - 0x1b4]
	lea	rdi, [rdi]
	mov	dl, dil
	movsx	edi, dl
	lea	rsi, [rsi]
	sub	eax, edi
	cmp	esi, eax
	jl	.label_2359
	jmp	.label_2380
.label_2351:
	nop	
	mov	eax, 0x7fffffff
	lea	rsi, [rsi]
	mov	ecx, dword ptr [rbp - 0x1b4]
	mov	dl, cl
	mov	rbp, rbp
	movsx	ecx, dl
	mov	rbp, rbp
	sub	eax, ecx
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x650]
	mov	dl, sil
	movsx	ecx, dl
	nop	
	cmp	eax, ecx
	jl	.label_2359
	jmp	.label_2380
.label_2428:
	mov	rax, qword ptr [rbp - 0x650]
	mov	cl, al
	movsx	edx, cl
	cmp	edx, 0
	nop	
	jge	.label_2396
	mov	eax, dword ptr [rbp - 0x1b4]
	mov	rsp, rsp
	mov	cl, al
	mov	rsp, rsp
	movsx	eax, cl
	mov	rdx, qword ptr [rbp - 0x650]
	mov	cl, dl
	movsx	esi, cl
	mov	rsp, rsp
	mov	edi, dword ptr [rbp - 0x1b4]
	lea	rsi, [rsi]
	mov	cl, dil
	mov	rbp, rbp
	movsx	edi, cl
	mov	rbp, rbp
	add	esi, edi
	mov	rbp, rbp
	cmp	eax, esi
	jle	.label_2359
	jmp	.label_2380
.label_2396:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x1b4]
	mov	cl, al
	nop	
	movsx	eax, cl
	cmp	eax, 0
	lea	rdi, [rdi]
	jge	.label_3377
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x650]
	mov	cl, al
	lea	rsi, [rsi]
	movsx	edx, cl
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x650]
	mov	cl, al
	movsx	esi, cl
	lea	rdi, [rdi]
	mov	edi, dword ptr [rbp - 0x1b4]
	nop	
	mov	cl, dil
	movsx	edi, cl
	add	esi, edi
	mov	rsp, rsp
	cmp	edx, esi
	mov	rsp, rsp
	jle	.label_2359
	lea	rsi, [rsi]
	jmp	.label_2380
.label_3377:
	mov	rax, qword ptr [rbp - 0x650]
	mov	rbp, rbp
	mov	cl, al
	movsx	edx, cl
	mov	esi, dword ptr [rbp - 0x1b4]
	mov	rbp, rbp
	mov	cl, sil
	movsx	esi, cl
	add	edx, esi
	mov	esi, dword ptr [rbp - 0x1b4]
	lea	rsi, [rsi]
	mov	cl, sil
	lea	rsi, [rsi]
	movsx	esi, cl
	cmp	edx, esi
	mov	rsp, rsp
	jl	.label_2359
.label_2380:
	mov	rax, qword ptr [rbp - 0x650]
	mov	rbp, rbp
	mov	cl, al
	mov	rsp, rsp
	movsx	edx, cl
	mov	rsp, rsp
	mov	esi, dword ptr [rbp - 0x1b4]
	nop	
	mov	cl, sil
	movsx	esi, cl
	add	edx, esi
	cmp	edx, -0x80
	jl	.label_2359
	mov	eax, 0x7f
	mov	rcx, qword ptr [rbp - 0x650]
	mov	dl, cl
	mov	rbp, rbp
	movsx	esi, dl
	mov	edi, dword ptr [rbp - 0x1b4]
	lea	rdi, [rdi]
	mov	dl, dil
	movsx	edi, dl
	lea	rdi, [rdi]
	add	esi, edi
	cmp	eax, esi
	jge	.label_2470
.label_2359:
	mov	al, 1
	mov	rcx, qword ptr [rbp - 0x650]
	mov	rsp, rsp
	mov	dl, cl
	movsx	esi, dl
	lea	rsi, [rsi]
	mov	edi, dword ptr [rbp - 0x1b4]
	lea	rsi, [rsi]
	mov	dl, dil
	movsx	edi, dl
	nop	
	add	esi, edi
	lea	rdi, [rdi]
	mov	dl, sil
	movsx	esi, dl
	mov	dword ptr [rbp - 0x1b4], esi
	mov	rbp, rbp
	test	al, 1
	lea	rdi, [rdi]
	jne	.label_1987
	jmp	.label_2053
.label_2470:
	mov	rsp, rsp
	xor	eax, eax
	mov	cl, al
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x650]
	mov	rsp, rsp
	mov	sil, dl
	mov	rsp, rsp
	movsx	eax, sil
	mov	edi, dword ptr [rbp - 0x1b4]
	mov	sil, dil
	lea	rsi, [rsi]
	movsx	edi, sil
	lea	rdi, [rdi]
	add	eax, edi
	mov	sil, al
	movsx	eax, sil
	mov	dword ptr [rbp - 0x1b4], eax
	test	cl, 1
	jne	.label_1987
	jmp	.label_2053
.label_2343:
	mov	al, 1
	lea	rsi, [rsi]
	test	al, 1
	lea	rsi, [rsi]
	jne	.label_2526
	jmp	.label_2468
.label_2526:
	cmp	dword ptr [rbp - 0x1b4], 0
	jge	.label_2529
	lea	rsi, [rsi]
	movabs	rax, 0x8000000000000000
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x650]
	movsxd	rdx, dword ptr [rbp - 0x1b4]
	sub	rax, rdx
	lea	rsi, [rsi]
	cmp	rcx, rax
	jl	.label_2532
	lea	rsi, [rsi]
	jmp	.label_2549
.label_2529:
	lea	rdi, [rdi]
	movabs	rax, 0x7fffffffffffffff
	mov	rbp, rbp
	movsxd	rcx, dword ptr [rbp - 0x1b4]
	mov	rsp, rsp
	sub	rax, rcx
	mov	rbp, rbp
	cmp	rax, qword ptr [rbp - 0x650]
	mov	rbp, rbp
	jl	.label_2532
	lea	rdi, [rdi]
	jmp	.label_2549
.label_2468:
	cmp	qword ptr [rbp - 0x650], 0
	mov	rsp, rsp
	jge	.label_2559
	mov	rbp, rbp
	movsxd	rax, dword ptr [rbp - 0x1b4]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x650]
	nop	
	movsxd	rdx, dword ptr [rbp - 0x1b4]
	mov	rsp, rsp
	add	rcx, rdx
	cmp	rax, rcx
	jle	.label_2532
	mov	rbp, rbp
	jmp	.label_2549
.label_2559:
	cmp	dword ptr [rbp - 0x1b4], 0
	mov	rbp, rbp
	jge	.label_3646
	mov	rax, qword ptr [rbp - 0x650]
	mov	rcx, qword ptr [rbp - 0x650]
	movsxd	rdx, dword ptr [rbp - 0x1b4]
	add	rcx, rdx
	lea	rdi, [rdi]
	cmp	rax, rcx
	jle	.label_2532
	mov	rsp, rsp
	jmp	.label_2549
.label_3646:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x650]
	lea	rdi, [rdi]
	movsxd	rcx, dword ptr [rbp - 0x1b4]
	lea	rdi, [rdi]
	add	rax, rcx
	movsxd	rcx, dword ptr [rbp - 0x1b4]
	cmp	rax, rcx
	nop	
	jl	.label_2532
.label_2549:
	mov	rax, qword ptr [rbp - 0x650]
	movsxd	rcx, dword ptr [rbp - 0x1b4]
	lea	rdi, [rdi]
	add	rax, rcx
	cmp	rax, -0x80
	jl	.label_2532
	nop	
	mov	eax, 0x7f
	mov	ecx, eax
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x650]
	lea	rdi, [rdi]
	movsxd	rsi, dword ptr [rbp - 0x1b4]
	nop	
	add	rdx, rsi
	mov	rbp, rbp
	cmp	rcx, rdx
	lea	rdi, [rdi]
	jge	.label_3802
.label_2532:
	mov	al, 1
	mov	rcx, qword ptr [rbp - 0x650]
	nop	
	mov	edx, ecx
	add	edx, dword ptr [rbp - 0x1b4]
	mov	sil, dl
	movsx	edx, sil
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x1b4], edx
	test	al, 1
	mov	rsp, rsp
	jne	.label_1987
	nop	
	jmp	.label_2053
.label_3802:
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x650]
	mov	eax, edx
	add	eax, dword ptr [rbp - 0x1b4]
	lea	rdi, [rdi]
	mov	sil, al
	movsx	eax, sil
	nop	
	mov	dword ptr [rbp - 0x1b4], eax
	mov	rsp, rsp
	test	cl, 1
	nop	
	jne	.label_1987
	mov	rsp, rsp
	jmp	.label_2053
.label_2332:
	mov	rbp, rbp
	xor	eax, eax
	mov	rsp, rsp
	mov	cl, al
	test	cl, 1
	lea	rsi, [rsi]
	jne	.label_2653
	mov	rbp, rbp
	jmp	.label_2656
.label_2653:
	xor	eax, eax
	mov	cl, al
	mov	rbp, rbp
	test	cl, 1
	nop	
	jne	.label_2658
	jmp	.label_2662
.label_2658:
	nop	
	mov	al, 1
	test	al, 1
	jne	.label_2664
	lea	rsi, [rsi]
	jmp	.label_2666
.label_2664:
	nop	
	mov	eax, dword ptr [rbp - 0x1b4]
	nop	
	mov	cx, ax
	movsx	eax, cx
	cmp	eax, 0
	mov	rsp, rsp
	jge	.label_2179
	mov	eax, 0x80000000
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x650]
	mov	dx, cx
	movsx	esi, dx
	mov	rbp, rbp
	mov	edi, dword ptr [rbp - 0x1b4]
	mov	dx, di
	movsx	edi, dx
	sub	eax, edi
	cmp	esi, eax
	jl	.label_2456
	lea	rdi, [rdi]
	jmp	.label_2253
.label_2179:
	nop	
	mov	eax, 0x7fffffff
	mov	ecx, dword ptr [rbp - 0x1b4]
	lea	rsi, [rsi]
	mov	dx, cx
	mov	rsp, rsp
	movsx	ecx, dx
	lea	rdi, [rdi]
	sub	eax, ecx
	mov	rsi, qword ptr [rbp - 0x650]
	mov	dx, si
	lea	rdi, [rdi]
	movsx	ecx, dx
	lea	rdi, [rdi]
	cmp	eax, ecx
	jl	.label_2456
	lea	rdi, [rdi]
	jmp	.label_2253
.label_2666:
	mov	rax, qword ptr [rbp - 0x650]
	mov	cx, ax
	movsx	edx, cx
	cmp	edx, 0
	mov	rsp, rsp
	jge	.label_2700
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x1b4]
	lea	rdi, [rdi]
	mov	cx, ax
	movsx	eax, cx
	mov	rdx, qword ptr [rbp - 0x650]
	mov	rsp, rsp
	mov	cx, dx
	movsx	esi, cx
	mov	rbp, rbp
	mov	edi, dword ptr [rbp - 0x1b4]
	lea	rdi, [rdi]
	mov	cx, di
	mov	rsp, rsp
	movsx	edi, cx
	add	esi, edi
	nop	
	cmp	eax, esi
	mov	rsp, rsp
	jle	.label_2456
	jmp	.label_2253
.label_2700:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x1b4]
	nop	
	mov	cx, ax
	nop	
	movsx	eax, cx
	mov	rbp, rbp
	cmp	eax, 0
	jge	.label_3276
	mov	rax, qword ptr [rbp - 0x650]
	mov	cx, ax
	mov	rsp, rsp
	movsx	edx, cx
	mov	rax, qword ptr [rbp - 0x650]
	mov	rbp, rbp
	mov	cx, ax
	lea	rsi, [rsi]
	movsx	esi, cx
	lea	rdi, [rdi]
	mov	edi, dword ptr [rbp - 0x1b4]
	mov	cx, di
	mov	rsp, rsp
	movsx	edi, cx
	add	esi, edi
	lea	rsi, [rsi]
	cmp	edx, esi
	jle	.label_2456
	nop	
	jmp	.label_2253
.label_3276:
	mov	rax, qword ptr [rbp - 0x650]
	mov	cx, ax
	nop	
	movsx	edx, cx
	lea	rdi, [rdi]
	mov	esi, dword ptr [rbp - 0x1b4]
	mov	cx, si
	movsx	esi, cx
	lea	rdi, [rdi]
	add	edx, esi
	mov	rsp, rsp
	mov	esi, dword ptr [rbp - 0x1b4]
	nop	
	mov	cx, si
	movsx	esi, cx
	nop	
	cmp	edx, esi
	lea	rdi, [rdi]
	jl	.label_2456
.label_2253:
	nop	
	mov	rax, qword ptr [rbp - 0x650]
	lea	rdi, [rdi]
	mov	cx, ax
	lea	rsi, [rsi]
	movsx	edx, cx
	lea	rsi, [rsi]
	mov	esi, dword ptr [rbp - 0x1b4]
	mov	cx, si
	mov	rsp, rsp
	movsx	esi, cx
	add	edx, esi
	cmp	edx, 0xffff8000
	mov	rsp, rsp
	jl	.label_2456
	lea	rsi, [rsi]
	mov	eax, 0x7fff
	mov	rcx, qword ptr [rbp - 0x650]
	lea	rdi, [rdi]
	mov	dx, cx
	movsx	esi, dx
	mov	edi, dword ptr [rbp - 0x1b4]
	mov	dx, di
	movsx	edi, dx
	nop	
	add	esi, edi
	cmp	eax, esi
	lea	rdi, [rdi]
	jge	.label_3831
.label_2456:
	mov	al, 1
	mov	rcx, qword ptr [rbp - 0x650]
	mov	dx, cx
	lea	rdi, [rdi]
	movsx	esi, dx
	mov	edi, dword ptr [rbp - 0x1b4]
	mov	dx, di
	lea	rsi, [rsi]
	movsx	edi, dx
	add	esi, edi
	lea	rsi, [rsi]
	mov	dx, si
	movsx	esi, dx
	nop	
	mov	dword ptr [rbp - 0x1b4], esi
	test	al, 1
	jne	.label_1987
	lea	rsi, [rsi]
	jmp	.label_2053
.label_3831:
	mov	rbp, rbp
	xor	eax, eax
	lea	rdi, [rdi]
	mov	cl, al
	nop	
	mov	rdx, qword ptr [rbp - 0x650]
	mov	si, dx
	movsx	eax, si
	lea	rsi, [rsi]
	mov	edi, dword ptr [rbp - 0x1b4]
	lea	rdi, [rdi]
	mov	si, di
	movsx	edi, si
	mov	rsp, rsp
	add	eax, edi
	mov	si, ax
	lea	rdi, [rdi]
	movsx	eax, si
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x1b4], eax
	mov	rbp, rbp
	test	cl, 1
	lea	rdi, [rdi]
	jne	.label_1987
	mov	rbp, rbp
	jmp	.label_2053
.label_2662:
	mov	al, 1
	test	al, 1
	jne	.label_3174
	lea	rdi, [rdi]
	jmp	.label_2817
.label_3174:
	cmp	dword ptr [rbp - 0x1b4], 0
	jge	.label_3209
	lea	rdi, [rdi]
	movabs	rax, 0x8000000000000000
	mov	rcx, qword ptr [rbp - 0x650]
	movsxd	rdx, dword ptr [rbp - 0x1b4]
	sub	rax, rdx
	cmp	rcx, rax
	mov	rsp, rsp
	jl	.label_2823
	jmp	.label_2831
.label_3209:
	movabs	rax, 0x7fffffffffffffff
	mov	rbp, rbp
	movsxd	rcx, dword ptr [rbp - 0x1b4]
	sub	rax, rcx
	mov	rbp, rbp
	cmp	rax, qword ptr [rbp - 0x650]
	jl	.label_2823
	jmp	.label_2831
.label_2817:
	cmp	qword ptr [rbp - 0x650], 0
	jge	.label_2842
	movsxd	rax, dword ptr [rbp - 0x1b4]
	nop	
	mov	rcx, qword ptr [rbp - 0x650]
	nop	
	movsxd	rdx, dword ptr [rbp - 0x1b4]
	add	rcx, rdx
	lea	rdi, [rdi]
	cmp	rax, rcx
	lea	rdi, [rdi]
	jle	.label_2823
	jmp	.label_2831
.label_2842:
	lea	rsi, [rsi]
	cmp	dword ptr [rbp - 0x1b4], 0
	jge	.label_2858
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x650]
	mov	rcx, qword ptr [rbp - 0x650]
	movsxd	rdx, dword ptr [rbp - 0x1b4]
	add	rcx, rdx
	lea	rdi, [rdi]
	cmp	rax, rcx
	jle	.label_2823
	jmp	.label_2831
.label_2858:
	mov	rax, qword ptr [rbp - 0x650]
	mov	rsp, rsp
	movsxd	rcx, dword ptr [rbp - 0x1b4]
	add	rax, rcx
	lea	rsi, [rsi]
	movsxd	rcx, dword ptr [rbp - 0x1b4]
	cmp	rax, rcx
	jl	.label_2823
.label_2831:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x650]
	movsxd	rcx, dword ptr [rbp - 0x1b4]
	add	rax, rcx
	lea	rsi, [rsi]
	cmp	rax, -0x8000
	mov	rsp, rsp
	jl	.label_2823
	nop	
	mov	eax, 0x7fff
	lea	rsi, [rsi]
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x650]
	mov	rbp, rbp
	movsxd	rsi, dword ptr [rbp - 0x1b4]
	lea	rdi, [rdi]
	add	rdx, rsi
	cmp	rcx, rdx
	lea	rsi, [rsi]
	jge	.label_3699
.label_2823:
	lea	rdi, [rdi]
	mov	al, 1
	mov	rcx, qword ptr [rbp - 0x650]
	mov	edx, ecx
	mov	rsp, rsp
	add	edx, dword ptr [rbp - 0x1b4]
	mov	si, dx
	movsx	edx, si
	mov	dword ptr [rbp - 0x1b4], edx
	test	al, 1
	mov	rsp, rsp
	jne	.label_1987
	jmp	.label_2053
.label_3699:
	nop	
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x650]
	mov	eax, edx
	mov	rbp, rbp
	add	eax, dword ptr [rbp - 0x1b4]
	lea	rdi, [rdi]
	mov	si, ax
	movsx	eax, si
	mov	dword ptr [rbp - 0x1b4], eax
	mov	rbp, rbp
	test	cl, 1
	jne	.label_1987
	nop	
	jmp	.label_2053
.label_2656:
	mov	al, 1
	test	al, 1
	lea	rdi, [rdi]
	jne	.label_2938
	lea	rsi, [rsi]
	jmp	.label_2043
.label_2938:
	xor	eax, eax
	mov	rbp, rbp
	mov	cl, al
	lea	rsi, [rsi]
	test	cl, 1
	jne	.label_2942
	lea	rdi, [rdi]
	jmp	.label_2946
.label_2942:
	mov	al, 1
	test	al, 1
	nop	
	jne	.label_2948
	mov	rsp, rsp
	jmp	.label_2949
.label_2948:
	cmp	dword ptr [rbp - 0x1b4], 0
	jge	.label_2952
	mov	eax, 0x80000000
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x650]
	mov	edx, ecx
	mov	rbp, rbp
	sub	eax, dword ptr [rbp - 0x1b4]
	cmp	edx, eax
	jl	.label_2222
	mov	rbp, rbp
	jmp	.label_2008
.label_2952:
	mov	eax, 0x7fffffff
	nop	
	sub	eax, dword ptr [rbp - 0x1b4]
	mov	rcx, qword ptr [rbp - 0x650]
	mov	edx, ecx
	lea	rsi, [rsi]
	cmp	eax, edx
	lea	rsi, [rsi]
	jl	.label_2222
	nop	
	jmp	.label_2008
.label_2949:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x650]
	nop	
	mov	ecx, eax
	cmp	ecx, 0
	jge	.label_2984
	mov	eax, dword ptr [rbp - 0x1b4]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x650]
	lea	rsi, [rsi]
	mov	edx, ecx
	mov	rsp, rsp
	add	edx, dword ptr [rbp - 0x1b4]
	lea	rsi, [rsi]
	cmp	eax, edx
	jle	.label_2222
	mov	rsp, rsp
	jmp	.label_2008
.label_2984:
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x1b4], 0
	jge	.label_3007
	mov	rax, qword ptr [rbp - 0x650]
	mov	ecx, eax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x650]
	lea	rsi, [rsi]
	mov	edx, eax
	add	edx, dword ptr [rbp - 0x1b4]
	cmp	ecx, edx
	jle	.label_2222
	mov	rbp, rbp
	jmp	.label_2008
.label_3007:
	mov	rax, qword ptr [rbp - 0x650]
	nop	
	mov	ecx, eax
	add	ecx, dword ptr [rbp - 0x1b4]
	lea	rsi, [rsi]
	cmp	ecx, dword ptr [rbp - 0x1b4]
	nop	
	jl	.label_2222
.label_2008:
	nop	
	mov	rax, qword ptr [rbp - 0x650]
	nop	
	mov	ecx, eax
	add	ecx, dword ptr [rbp - 0x1b4]
	cmp	ecx, 0x80000000
	mov	rsp, rsp
	jl	.label_2222
	mov	eax, 0x7fffffff
	mov	rcx, qword ptr [rbp - 0x650]
	mov	edx, ecx
	mov	rbp, rbp
	add	edx, dword ptr [rbp - 0x1b4]
	cmp	eax, edx
	mov	rsp, rsp
	jge	.label_3034
.label_2222:
	mov	al, 1
	mov	rcx, qword ptr [rbp - 0x650]
	mov	rbp, rbp
	mov	edx, ecx
	lea	rdi, [rdi]
	add	edx, dword ptr [rbp - 0x1b4]
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x1b4], edx
	mov	rsp, rsp
	test	al, 1
	lea	rdi, [rdi]
	jne	.label_1987
	mov	rbp, rbp
	jmp	.label_2053
.label_3034:
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x650]
	lea	rsi, [rsi]
	mov	eax, edx
	add	eax, dword ptr [rbp - 0x1b4]
	mov	dword ptr [rbp - 0x1b4], eax
	test	cl, 1
	lea	rsi, [rsi]
	jne	.label_1987
	mov	rbp, rbp
	jmp	.label_2053
.label_2946:
	mov	al, 1
	test	al, 1
	mov	rsp, rsp
	jne	.label_3736
	lea	rdi, [rdi]
	jmp	.label_2632
.label_3736:
	cmp	dword ptr [rbp - 0x1b4], 0
	jge	.label_3062
	mov	rsp, rsp
	movabs	rax, 0x8000000000000000
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x650]
	lea	rsi, [rsi]
	movsxd	rdx, dword ptr [rbp - 0x1b4]
	lea	rdi, [rdi]
	sub	rax, rdx
	mov	rsp, rsp
	cmp	rcx, rax
	lea	rdi, [rdi]
	jl	.label_2928
	mov	rbp, rbp
	jmp	.label_2733
.label_3062:
	movabs	rax, 0x7fffffffffffffff
	lea	rdi, [rdi]
	movsxd	rcx, dword ptr [rbp - 0x1b4]
	sub	rax, rcx
	cmp	rax, qword ptr [rbp - 0x650]
	jl	.label_2928
	lea	rdi, [rdi]
	jmp	.label_2733
.label_2632:
	cmp	qword ptr [rbp - 0x650], 0
	jge	.label_3095
	lea	rsi, [rsi]
	movsxd	rax, dword ptr [rbp - 0x1b4]
	mov	rcx, qword ptr [rbp - 0x650]
	movsxd	rdx, dword ptr [rbp - 0x1b4]
	add	rcx, rdx
	mov	rbp, rbp
	cmp	rax, rcx
	lea	rsi, [rsi]
	jle	.label_2928
	jmp	.label_2733
.label_3095:
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x1b4], 0
	mov	rsp, rsp
	jge	.label_1934
	mov	rax, qword ptr [rbp - 0x650]
	nop	
	mov	rcx, qword ptr [rbp - 0x650]
	movsxd	rdx, dword ptr [rbp - 0x1b4]
	lea	rdi, [rdi]
	add	rcx, rdx
	nop	
	cmp	rax, rcx
	lea	rdi, [rdi]
	jle	.label_2928
	jmp	.label_2733
.label_1934:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x650]
	movsxd	rcx, dword ptr [rbp - 0x1b4]
	mov	rbp, rbp
	add	rax, rcx
	mov	rbp, rbp
	movsxd	rcx, dword ptr [rbp - 0x1b4]
	nop	
	cmp	rax, rcx
	lea	rdi, [rdi]
	jl	.label_2928
.label_2733:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x650]
	nop	
	movsxd	rcx, dword ptr [rbp - 0x1b4]
	lea	rdi, [rdi]
	add	rax, rcx
	cmp	rax, -0x80000000
	jl	.label_2928
	mov	rbp, rbp
	mov	eax, 0x7fffffff
	nop	
	mov	ecx, eax
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x650]
	mov	rsp, rsp
	movsxd	rsi, dword ptr [rbp - 0x1b4]
	add	rdx, rsi
	cmp	rcx, rdx
	jge	.label_3141
.label_2928:
	lea	rdi, [rdi]
	mov	al, 1
	mov	rcx, qword ptr [rbp - 0x650]
	nop	
	mov	edx, ecx
	add	edx, dword ptr [rbp - 0x1b4]
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x1b4], edx
	test	al, 1
	jne	.label_1987
	mov	rsp, rsp
	jmp	.label_2053
.label_3141:
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x650]
	mov	rsp, rsp
	mov	eax, edx
	add	eax, dword ptr [rbp - 0x1b4]
	mov	dword ptr [rbp - 0x1b4], eax
	test	cl, 1
	nop	
	jne	.label_1987
	mov	rbp, rbp
	jmp	.label_2053
.label_2043:
	xor	eax, eax
	lea	rsi, [rsi]
	mov	cl, al
	nop	
	test	cl, 1
	jne	.label_3165
	lea	rdi, [rdi]
	jmp	.label_3169
.label_3165:
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_2212
	jmp	.label_3173
.label_2212:
	mov	rbp, rbp
	mov	al, 1
	test	al, 1
	mov	rsp, rsp
	jne	.label_3175
	lea	rdi, [rdi]
	jmp	.label_2483
.label_3175:
	lea	rsi, [rsi]
	movsxd	rax, dword ptr [rbp - 0x1b4]
	cmp	rax, 0
	jge	.label_3182
	mov	rsp, rsp
	movabs	rax, 0x8000000000000000
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x650]
	lea	rdi, [rdi]
	movsxd	rdx, dword ptr [rbp - 0x1b4]
	mov	rbp, rbp
	sub	rax, rdx
	lea	rdi, [rdi]
	cmp	rcx, rax
	nop	
	jl	.label_3131
	lea	rdi, [rdi]
	jmp	.label_3495
.label_3182:
	movabs	rax, 0x7fffffffffffffff
	lea	rsi, [rsi]
	movsxd	rcx, dword ptr [rbp - 0x1b4]
	mov	rsp, rsp
	sub	rax, rcx
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rbp - 0x650]
	nop	
	jl	.label_3131
	mov	rsp, rsp
	jmp	.label_3495
.label_2483:
	cmp	qword ptr [rbp - 0x650], 0
	mov	rsp, rsp
	jge	.label_3228
	lea	rsi, [rsi]
	movsxd	rax, dword ptr [rbp - 0x1b4]
	mov	rcx, qword ptr [rbp - 0x650]
	movsxd	rdx, dword ptr [rbp - 0x1b4]
	add	rcx, rdx
	lea	rsi, [rsi]
	cmp	rax, rcx
	mov	rbp, rbp
	jle	.label_3131
	jmp	.label_3495
.label_3228:
	lea	rsi, [rsi]
	movsxd	rax, dword ptr [rbp - 0x1b4]
	lea	rsi, [rsi]
	cmp	rax, 0
	lea	rdi, [rdi]
	jge	.label_1922
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x650]
	mov	rcx, qword ptr [rbp - 0x650]
	nop	
	movsxd	rdx, dword ptr [rbp - 0x1b4]
	lea	rdi, [rdi]
	add	rcx, rdx
	lea	rsi, [rsi]
	cmp	rax, rcx
	lea	rdi, [rdi]
	jle	.label_3131
	jmp	.label_3495
.label_1922:
	mov	rax, qword ptr [rbp - 0x650]
	mov	rsp, rsp
	movsxd	rcx, dword ptr [rbp - 0x1b4]
	mov	rsp, rsp
	add	rax, rcx
	mov	rbp, rbp
	movsxd	rcx, dword ptr [rbp - 0x1b4]
	cmp	rax, rcx
	jl	.label_3131
.label_3495:
	movabs	rax, 0x8000000000000000
	mov	rcx, qword ptr [rbp - 0x650]
	mov	rsp, rsp
	movsxd	rdx, dword ptr [rbp - 0x1b4]
	add	rcx, rdx
	lea	rsi, [rsi]
	cmp	rcx, rax
	mov	rbp, rbp
	jl	.label_3131
	movabs	rax, 0x7fffffffffffffff
	mov	rcx, qword ptr [rbp - 0x650]
	movsxd	rdx, dword ptr [rbp - 0x1b4]
	mov	rsp, rsp
	add	rcx, rdx
	cmp	rax, rcx
	jge	.label_3275
.label_3131:
	mov	al, 1
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x650]
	nop	
	movsxd	rdx, dword ptr [rbp - 0x1b4]
	lea	rdi, [rdi]
	add	rcx, rdx
	mov	esi, ecx
	mov	dword ptr [rbp - 0x1b4], esi
	lea	rsi, [rsi]
	test	al, 1
	jne	.label_1987
	jmp	.label_2053
.label_3275:
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x650]
	nop	
	movsxd	rsi, dword ptr [rbp - 0x1b4]
	lea	rdi, [rdi]
	add	rdx, rsi
	lea	rsi, [rsi]
	mov	eax, edx
	mov	dword ptr [rbp - 0x1b4], eax
	test	cl, 1
	jne	.label_1987
	jmp	.label_2053
.label_3173:
	mov	al, 1
	test	al, 1
	jne	.label_3305
	lea	rsi, [rsi]
	jmp	.label_3308
.label_3305:
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x1b4], 0
	jge	.label_2300
	nop	
	movabs	rax, 0x8000000000000000
	mov	rcx, qword ptr [rbp - 0x650]
	movsxd	rdx, dword ptr [rbp - 0x1b4]
	sub	rax, rdx
	cmp	rcx, rax
	jl	.label_2057
	mov	rbp, rbp
	jmp	.label_2028
.label_2300:
	mov	rbp, rbp
	movabs	rax, 0x7fffffffffffffff
	movsxd	rcx, dword ptr [rbp - 0x1b4]
	sub	rax, rcx
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rbp - 0x650]
	lea	rsi, [rsi]
	jl	.label_2057
	lea	rsi, [rsi]
	jmp	.label_2028
.label_3308:
	nop	
	cmp	qword ptr [rbp - 0x650], 0
	jge	.label_2305
	mov	rsp, rsp
	movsxd	rax, dword ptr [rbp - 0x1b4]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x650]
	movsxd	rdx, dword ptr [rbp - 0x1b4]
	add	rcx, rdx
	cmp	rax, rcx
	jle	.label_2057
	lea	rsi, [rsi]
	jmp	.label_2028
.label_2305:
	cmp	dword ptr [rbp - 0x1b4], 0
	jge	.label_3356
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x650]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x650]
	lea	rsi, [rsi]
	movsxd	rdx, dword ptr [rbp - 0x1b4]
	lea	rdi, [rdi]
	add	rcx, rdx
	mov	rsp, rsp
	cmp	rax, rcx
	lea	rdi, [rdi]
	jle	.label_2057
	jmp	.label_2028
.label_3356:
	mov	rax, qword ptr [rbp - 0x650]
	nop	
	movsxd	rcx, dword ptr [rbp - 0x1b4]
	lea	rdi, [rdi]
	add	rax, rcx
	nop	
	movsxd	rcx, dword ptr [rbp - 0x1b4]
	mov	rbp, rbp
	cmp	rax, rcx
	jl	.label_2057
.label_2028:
	movabs	rax, 0x8000000000000000
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x650]
	movsxd	rdx, dword ptr [rbp - 0x1b4]
	mov	rbp, rbp
	add	rcx, rdx
	cmp	rcx, rax
	jl	.label_2057
	movabs	rax, 0x7fffffffffffffff
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x650]
	lea	rdi, [rdi]
	movsxd	rdx, dword ptr [rbp - 0x1b4]
	add	rcx, rdx
	cmp	rax, rcx
	jge	.label_3383
.label_2057:
	lea	rsi, [rsi]
	mov	al, 1
	mov	rcx, qword ptr [rbp - 0x650]
	movsxd	rdx, dword ptr [rbp - 0x1b4]
	mov	rsp, rsp
	add	rcx, rdx
	lea	rdi, [rdi]
	mov	esi, ecx
	mov	dword ptr [rbp - 0x1b4], esi
	test	al, 1
	nop	
	jne	.label_1987
	jmp	.label_2053
.label_3383:
	nop	
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x650]
	movsxd	rsi, dword ptr [rbp - 0x1b4]
	lea	rsi, [rsi]
	add	rdx, rsi
	lea	rsi, [rsi]
	mov	eax, edx
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x1b4], eax
	nop	
	test	cl, 1
	jne	.label_1987
	mov	rsp, rsp
	jmp	.label_2053
.label_3169:
	xor	eax, eax
	nop	
	mov	cl, al
	lea	rdi, [rdi]
	test	cl, 1
	lea	rsi, [rsi]
	jne	.label_3414
	jmp	.label_3421
.label_3414:
	lea	rdi, [rdi]
	mov	al, 1
	test	al, 1
	lea	rdi, [rdi]
	jne	.label_3423
	lea	rdi, [rdi]
	jmp	.label_3429
.label_3423:
	movsxd	rax, dword ptr [rbp - 0x1b4]
	mov	rsp, rsp
	cmp	rax, 0
	jge	.label_3431
	mov	rsp, rsp
	movabs	rax, 0x8000000000000000
	mov	rcx, qword ptr [rbp - 0x650]
	lea	rsi, [rsi]
	movsxd	rdx, dword ptr [rbp - 0x1b4]
	mov	rbp, rbp
	sub	rax, rdx
	cmp	rcx, rax
	lea	rdi, [rdi]
	jl	.label_3047
	lea	rdi, [rdi]
	jmp	.label_3038
.label_3431:
	nop	
	movabs	rax, 0x7fffffffffffffff
	movsxd	rcx, dword ptr [rbp - 0x1b4]
	mov	rsp, rsp
	sub	rax, rcx
	cmp	rax, qword ptr [rbp - 0x650]
	jl	.label_3047
	mov	rsp, rsp
	jmp	.label_3038
.label_3429:
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x650], 0
	jge	.label_3463
	movsxd	rax, dword ptr [rbp - 0x1b4]
	mov	rcx, qword ptr [rbp - 0x650]
	movsxd	rdx, dword ptr [rbp - 0x1b4]
	add	rcx, rdx
	cmp	rax, rcx
	nop	
	jle	.label_3047
	jmp	.label_3038
.label_3463:
	movsxd	rax, dword ptr [rbp - 0x1b4]
	cmp	rax, 0
	mov	rsp, rsp
	jge	.label_3473
	mov	rax, qword ptr [rbp - 0x650]
	mov	rcx, qword ptr [rbp - 0x650]
	movsxd	rdx, dword ptr [rbp - 0x1b4]
	add	rcx, rdx
	lea	rsi, [rsi]
	cmp	rax, rcx
	jle	.label_3047
	jmp	.label_3038
.label_3473:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x650]
	nop	
	movsxd	rcx, dword ptr [rbp - 0x1b4]
	lea	rdi, [rdi]
	add	rax, rcx
	movsxd	rcx, dword ptr [rbp - 0x1b4]
	cmp	rax, rcx
	nop	
	jl	.label_3047
.label_3038:
	lea	rsi, [rsi]
	movabs	rax, 0x8000000000000000
	nop	
	mov	rcx, qword ptr [rbp - 0x650]
	movsxd	rdx, dword ptr [rbp - 0x1b4]
	mov	rsp, rsp
	add	rcx, rdx
	cmp	rcx, rax
	jl	.label_3047
	movabs	rax, 0x7fffffffffffffff
	nop	
	mov	rcx, qword ptr [rbp - 0x650]
	nop	
	movsxd	rdx, dword ptr [rbp - 0x1b4]
	mov	rbp, rbp
	add	rcx, rdx
	cmp	rax, rcx
	jge	.label_3503
.label_3047:
	mov	al, 1
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x650]
	lea	rdi, [rdi]
	movsxd	rdx, dword ptr [rbp - 0x1b4]
	mov	rsp, rsp
	add	rcx, rdx
	mov	esi, ecx
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x1b4], esi
	lea	rdi, [rdi]
	test	al, 1
	jne	.label_1987
	jmp	.label_2053
.label_3503:
	xor	eax, eax
	lea	rdi, [rdi]
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x650]
	movsxd	rsi, dword ptr [rbp - 0x1b4]
	mov	rbp, rbp
	add	rdx, rsi
	mov	rsp, rsp
	mov	eax, edx
	mov	dword ptr [rbp - 0x1b4], eax
	lea	rdi, [rdi]
	test	cl, 1
	nop	
	jne	.label_1987
	mov	rbp, rbp
	jmp	.label_2053
.label_3421:
	mov	rsp, rsp
	mov	al, 1
	test	al, 1
	jne	.label_3539
	jmp	.label_3610
.label_3539:
	mov	rsp, rsp
	cmp	dword ptr [rbp - 0x1b4], 0
	jge	.label_3546
	lea	rsi, [rsi]
	movabs	rax, 0x8000000000000000
	mov	rcx, qword ptr [rbp - 0x650]
	movsxd	rdx, dword ptr [rbp - 0x1b4]
	lea	rsi, [rsi]
	sub	rax, rdx
	cmp	rcx, rax
	jl	.label_3343
	jmp	.label_3567
.label_3546:
	lea	rsi, [rsi]
	movabs	rax, 0x7fffffffffffffff
	lea	rdi, [rdi]
	movsxd	rcx, dword ptr [rbp - 0x1b4]
	sub	rax, rcx
	cmp	rax, qword ptr [rbp - 0x650]
	mov	rsp, rsp
	jl	.label_3343
	lea	rdi, [rdi]
	jmp	.label_3567
.label_3610:
	cmp	qword ptr [rbp - 0x650], 0
	lea	rsi, [rsi]
	jge	.label_3569
	movsxd	rax, dword ptr [rbp - 0x1b4]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x650]
	movsxd	rdx, dword ptr [rbp - 0x1b4]
	lea	rsi, [rsi]
	add	rcx, rdx
	lea	rdi, [rdi]
	cmp	rax, rcx
	lea	rdi, [rdi]
	jle	.label_3343
	nop	
	jmp	.label_3567
.label_3569:
	mov	rsp, rsp
	cmp	dword ptr [rbp - 0x1b4], 0
	lea	rsi, [rsi]
	jge	.label_3583
	mov	rax, qword ptr [rbp - 0x650]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x650]
	movsxd	rdx, dword ptr [rbp - 0x1b4]
	lea	rsi, [rsi]
	add	rcx, rdx
	lea	rdi, [rdi]
	cmp	rax, rcx
	jle	.label_3343
	mov	rbp, rbp
	jmp	.label_3567
.label_3583:
	mov	rax, qword ptr [rbp - 0x650]
	movsxd	rcx, dword ptr [rbp - 0x1b4]
	add	rax, rcx
	lea	rsi, [rsi]
	movsxd	rcx, dword ptr [rbp - 0x1b4]
	cmp	rax, rcx
	jl	.label_3343
.label_3567:
	movabs	rax, 0x8000000000000000
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x650]
	lea	rsi, [rsi]
	movsxd	rdx, dword ptr [rbp - 0x1b4]
	add	rcx, rdx
	nop	
	cmp	rcx, rax
	jl	.label_3343
	mov	rbp, rbp
	movabs	rax, 0x7fffffffffffffff
	mov	rcx, qword ptr [rbp - 0x650]
	mov	rsp, rsp
	movsxd	rdx, dword ptr [rbp - 0x1b4]
	add	rcx, rdx
	cmp	rax, rcx
	jge	.label_2228
.label_3343:
	mov	rbp, rbp
	mov	al, 1
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x650]
	lea	rsi, [rsi]
	movsxd	rdx, dword ptr [rbp - 0x1b4]
	add	rcx, rdx
	lea	rdi, [rdi]
	mov	esi, ecx
	mov	dword ptr [rbp - 0x1b4], esi
	test	al, 1
	jne	.label_1987
	mov	rbp, rbp
	jmp	.label_2053
.label_2228:
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x650]
	lea	rdi, [rdi]
	movsxd	rsi, dword ptr [rbp - 0x1b4]
	nop	
	add	rdx, rsi
	mov	eax, edx
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x1b4], eax
	test	cl, 1
	jne	.label_1987
	mov	rbp, rbp
	jmp	.label_2053
.label_1987:
	mov	qword ptr [rbp - 0x488], -1
	mov	rbp, rbp
	jmp	.label_2342
.label_2053:
	lea	rsi, [rbp - 0x1c0]
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x1a0], 0xffffffff
	mov	rdi, qword ptr [rbp - 0x228]
	nop	
	call	mktime_z
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x488], rax
.label_2342:
	cmp	qword ptr [rbp - 0x488], -1
	lea	rdi, [rdi]
	jne	.label_3665
	test	byte ptr [rbp - 0xa7], 1
	je	.label_3669
	nop	
	movabs	rdi, OFFSET FLAT:.str.48
	nop	
	call	gettext
	lea	rdi, [rbp - 0x180]
	nop	
	mov	edx, 0x64
	lea	rdi, [rdi]
	lea	rsi, [rbp - 0xc60]
	nop	
	mov	qword ptr [rbp - 0x908], rax
	call	str_days
	lea	rsi, [rsi]
	lea	rdi, [rbp - 0x1c0]
	lea	rsi, [rbp - 0x180]
	mov	rsp, rsp
	mov	ecx, 0x64
	nop	
	lea	rdx, [rbp - 0xd20]
	mov	r8, qword ptr [rbp - 0x178]
	mov	rsp, rsp
	mov	r9d, dword ptr [rbp - 0x170]
	mov	qword ptr [rbp - 0xa30], rax
	mov	dword ptr [rbp - 0x8e4], r9d
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x318], r8
	nop	
	call	debug_strfdatetime
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x908]
	mov	rsi, qword ptr [rbp - 0xa30]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x318]
	mov	ecx, dword ptr [rbp - 0x8e4]
	nop	
	mov	r8, rax
	mov	al, 0
	mov	rsp, rsp
	call	dbg_printf
.label_3669:
	mov	rsp, rsp
	jmp	.label_1907
.label_3665:
	test	byte ptr [rbp - 0xa7], 1
	je	.label_2770
	nop	
	movabs	rdi, OFFSET FLAT:.str.49
	call	gettext
	mov	rbp, rbp
	lea	rdi, [rbp - 0x180]
	mov	edx, 0x64
	lea	rsi, [rbp - 0xc60]
	mov	qword ptr [rbp - 0x9d0], rax
	call	str_days
	lea	rdi, [rbp - 0x1c0]
	lea	rsi, [rbp - 0x180]
	mov	ecx, 0x64
	lea	rdi, [rdi]
	lea	rdx, [rbp - 0xd20]
	mov	qword ptr [rbp - 0x50], rax
	call	debug_strfdatetime
	mov	rdi, qword ptr [rbp - 0x9d0]
	mov	rsi, qword ptr [rbp - 0x50]
	mov	rdx, rax
	mov	al, 0
	call	dbg_printf
.label_2770:
	jmp	.label_2171
.label_2171:
	mov	rbp, rbp
	test	byte ptr [rbp - 0xa7], 1
	mov	rbp, rbp
	je	.label_3730
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0xd8], 0
	jne	.label_3735
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0xd0], 0
	mov	rsp, rsp
	jne	.label_3735
	mov	rbp, rbp
	movabs	rdi, OFFSET FLAT:.str.50
	call	gettext
	lea	rdi, [rdi]
	lea	rdi, [rbp - 0x1c0]
	mov	rbp, rbp
	mov	edx, 0x64
	lea	rsi, [rsi]
	lea	rsi, [rbp - 0xd20]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x7b0], rax
	nop	
	call	debug_strfdate
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x7b0]
	mov	rbp, rbp
	mov	rsi, rax
	lea	rsi, [rsi]
	mov	al, 0
	lea	rdi, [rdi]
	call	dbg_printf
.label_3735:
	cmp	qword ptr [rbp - 0xd0], 0
	lea	rsi, [rsi]
	je	.label_3758
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0xd8], 0
	je	.label_3758
	movabs	rdi, OFFSET FLAT:.str.51
	lea	rsi, [rsi]
	call	gettext
	lea	rdi, [rbp - 0x180]
	lea	rdi, [rdi]
	mov	edx, 0x64
	lea	rsi, [rbp - 0xc60]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x338], rax
	mov	rsp, rsp
	call	str_days
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x338]
	mov	rsp, rsp
	mov	rsi, rax
	mov	al, 0
	call	dbg_printf
.label_3758:
	movabs	rdi, OFFSET FLAT:.str.52
	call	gettext
	nop	
	lea	rdi, [rbp - 0x1c0]
	lea	rdi, [rdi]
	lea	rsi, [rbp - 0x180]
	lea	rsi, [rsi]
	mov	ecx, 0x64
	lea	rdi, [rdi]
	lea	rdx, [rbp - 0xd20]
	mov	qword ptr [rbp - 0x798], rax
	call	debug_strfdatetime
	mov	rdi, qword ptr [rbp - 0x798]
	mov	rsi, rax
	lea	rdi, [rdi]
	mov	al, 0
	call	dbg_printf
.label_3730:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x118]
	lea	rdi, [rdi]
	or	rax, qword ptr [rbp - 0x110]
	mov	rsp, rsp
	or	rax, qword ptr [rbp - 0x108]
	cmp	rax, 0
	je	.label_2158
	lea	rsi, [rsi]
	test	byte ptr [rbp - 0xa7], 1
	je	.label_3800
	nop	
	cmp	qword ptr [rbp - 0x118], 0
	lea	rsi, [rsi]
	jne	.label_3804
	cmp	qword ptr [rbp - 0x110], 0
	mov	rsp, rsp
	je	.label_3468
.label_3804:
	mov	rsp, rsp
	cmp	dword ptr [rbp - 0x1b4], 0xf
	lea	rdi, [rdi]
	je	.label_3468
	movabs	rdi, OFFSET FLAT:.str.53
	lea	rsi, [rsi]
	call	gettext
	mov	rdi, rax
	mov	rsp, rsp
	mov	al, 0
	call	dbg_printf
.label_3468:
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x108], 0
	mov	rsp, rsp
	je	.label_3824
	cmp	dword ptr [rbp - 0x1b8], 0xc
	je	.label_3824
	mov	rsp, rsp
	movabs	rdi, OFFSET FLAT:.str.54
	lea	rdi, [rdi]
	call	gettext
	lea	rdi, [rdi]
	mov	rdi, rax
	mov	al, 0
	call	dbg_printf
.label_3824:
	lea	rdi, [rdi]
	jmp	.label_3800
.label_3800:
	mov	rsp, rsp
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_3842
	jmp	.label_3845
.label_3842:
	lea	rsi, [rsi]
	xor	eax, eax
	mov	rbp, rbp
	mov	cl, al
	mov	rbp, rbp
	test	cl, 1
	mov	rsp, rsp
	jne	.label_3847
	lea	rsi, [rsi]
	jmp	.label_3851
.label_3847:
	nop	
	mov	al, 1
	test	al, 1
	jne	.label_3853
	nop	
	jmp	.label_3856
.label_3853:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x118]
	mov	rbp, rbp
	mov	cl, al
	lea	rdi, [rdi]
	movsx	edx, cl
	mov	rsp, rsp
	cmp	edx, 0
	lea	rdi, [rdi]
	jge	.label_3858
	mov	rbp, rbp
	mov	eax, 0x80000000
	lea	rsi, [rsi]
	mov	ecx, dword ptr [rbp - 0x1ac]
	mov	dl, cl
	movsx	ecx, dl
	mov	rsi, qword ptr [rbp - 0x118]
	lea	rdi, [rdi]
	mov	dl, sil
	movsx	edi, dl
	sub	eax, edi
	cmp	ecx, eax
	lea	rdi, [rdi]
	jl	.label_1911
	lea	rdi, [rdi]
	jmp	.label_1909
.label_3858:
	mov	rsp, rsp
	mov	eax, 0x7fffffff
	nop	
	mov	rcx, qword ptr [rbp - 0x118]
	mov	dl, cl
	movsx	esi, dl
	sub	eax, esi
	mov	esi, dword ptr [rbp - 0x1ac]
	lea	rdi, [rdi]
	mov	dl, sil
	movsx	esi, dl
	nop	
	cmp	eax, esi
	jl	.label_1911
	jmp	.label_1909
.label_3856:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x1ac]
	lea	rsi, [rsi]
	mov	cl, al
	lea	rdi, [rdi]
	movsx	eax, cl
	mov	rbp, rbp
	cmp	eax, 0
	jge	.label_1925
	mov	rax, qword ptr [rbp - 0x118]
	nop	
	mov	cl, al
	movsx	edx, cl
	mov	rbp, rbp
	mov	esi, dword ptr [rbp - 0x1ac]
	mov	cl, sil
	movsx	esi, cl
	mov	rax, qword ptr [rbp - 0x118]
	lea	rdi, [rdi]
	mov	cl, al
	lea	rsi, [rsi]
	movsx	edi, cl
	lea	rdi, [rdi]
	add	esi, edi
	cmp	edx, esi
	mov	rbp, rbp
	jle	.label_1911
	jmp	.label_1909
.label_1925:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x118]
	mov	cl, al
	movsx	edx, cl
	cmp	edx, 0
	mov	rbp, rbp
	jge	.label_1952
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x1ac]
	mov	cl, al
	lea	rdi, [rdi]
	movsx	eax, cl
	mov	edx, dword ptr [rbp - 0x1ac]
	mov	cl, dl
	movsx	edx, cl
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x118]
	mov	cl, sil
	movsx	edi, cl
	mov	rbp, rbp
	add	edx, edi
	cmp	eax, edx
	mov	rbp, rbp
	jle	.label_1911
	lea	rsi, [rsi]
	jmp	.label_1909
.label_1952:
	mov	eax, dword ptr [rbp - 0x1ac]
	mov	cl, al
	lea	rdi, [rdi]
	movsx	eax, cl
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x118]
	mov	rsp, rsp
	mov	cl, dl
	movsx	esi, cl
	add	eax, esi
	mov	rdx, qword ptr [rbp - 0x118]
	mov	cl, dl
	movsx	esi, cl
	cmp	eax, esi
	mov	rbp, rbp
	jl	.label_1911
.label_1909:
	mov	eax, dword ptr [rbp - 0x1ac]
	mov	cl, al
	movsx	eax, cl
	mov	rdx, qword ptr [rbp - 0x118]
	mov	cl, dl
	movsx	esi, cl
	lea	rdi, [rdi]
	add	eax, esi
	mov	rbp, rbp
	cmp	eax, -0x80
	lea	rsi, [rsi]
	jl	.label_1911
	mov	rbp, rbp
	mov	eax, 0x7f
	mov	ecx, dword ptr [rbp - 0x1ac]
	mov	dl, cl
	movsx	ecx, dl
	mov	rsi, qword ptr [rbp - 0x118]
	mov	dl, sil
	mov	rsp, rsp
	movsx	edi, dl
	add	ecx, edi
	mov	rbp, rbp
	cmp	eax, ecx
	jge	.label_2010
.label_1911:
	mov	al, 1
	mov	ecx, dword ptr [rbp - 0x1ac]
	nop	
	mov	dl, cl
	mov	rbp, rbp
	movsx	ecx, dl
	mov	rsi, qword ptr [rbp - 0x118]
	lea	rdi, [rdi]
	mov	dl, sil
	movsx	edi, dl
	add	ecx, edi
	lea	rsi, [rsi]
	mov	dl, cl
	lea	rdi, [rdi]
	movsx	ecx, dl
	mov	dword ptr [rbp - 0xa68], ecx
	test	al, 1
	jne	.label_1931
	jmp	.label_1930
.label_2010:
	xor	eax, eax
	lea	rdi, [rdi]
	mov	cl, al
	mov	eax, dword ptr [rbp - 0x1ac]
	mov	dl, al
	nop	
	movsx	eax, dl
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x118]
	lea	rdi, [rdi]
	mov	dl, sil
	lea	rsi, [rsi]
	movsx	edi, dl
	add	eax, edi
	lea	rsi, [rsi]
	mov	dl, al
	movsx	eax, dl
	mov	rbp, rbp
	mov	dword ptr [rbp - 0xa68], eax
	lea	rdi, [rdi]
	test	cl, 1
	jne	.label_1931
	jmp	.label_1930
.label_3851:
	lea	rdi, [rdi]
	mov	al, 1
	test	al, 1
	lea	rsi, [rsi]
	jne	.label_2051
	jmp	.label_3625
.label_2051:
	cmp	qword ptr [rbp - 0x118], 0
	mov	rbp, rbp
	jge	.label_2056
	movabs	rax, 0x8000000000000000
	movsxd	rcx, dword ptr [rbp - 0x1ac]
	sub	rax, qword ptr [rbp - 0x118]
	cmp	rcx, rax
	jl	.label_2060
	jmp	.label_2065
.label_2056:
	mov	rsp, rsp
	movabs	rax, 0x7fffffffffffffff
	sub	rax, qword ptr [rbp - 0x118]
	movsxd	rcx, dword ptr [rbp - 0x1ac]
	cmp	rax, rcx
	mov	rsp, rsp
	jl	.label_2060
	jmp	.label_2065
.label_3625:
	cmp	dword ptr [rbp - 0x1ac], 0
	mov	rbp, rbp
	jge	.label_2086
	nop	
	mov	rax, qword ptr [rbp - 0x118]
	movsxd	rcx, dword ptr [rbp - 0x1ac]
	add	rcx, qword ptr [rbp - 0x118]
	cmp	rax, rcx
	jle	.label_2060
	lea	rdi, [rdi]
	jmp	.label_2065
.label_2086:
	nop	
	cmp	qword ptr [rbp - 0x118], 0
	mov	rsp, rsp
	jge	.label_2100
	movsxd	rax, dword ptr [rbp - 0x1ac]
	lea	rdi, [rdi]
	movsxd	rcx, dword ptr [rbp - 0x1ac]
	lea	rdi, [rdi]
	add	rcx, qword ptr [rbp - 0x118]
	lea	rdi, [rdi]
	cmp	rax, rcx
	lea	rdi, [rdi]
	jle	.label_2060
	jmp	.label_2065
.label_2100:
	movsxd	rax, dword ptr [rbp - 0x1ac]
	add	rax, qword ptr [rbp - 0x118]
	cmp	rax, qword ptr [rbp - 0x118]
	mov	rbp, rbp
	jl	.label_2060
.label_2065:
	movsxd	rax, dword ptr [rbp - 0x1ac]
	add	rax, qword ptr [rbp - 0x118]
	cmp	rax, -0x80
	lea	rdi, [rdi]
	jl	.label_2060
	mov	eax, 0x7f
	mov	ecx, eax
	mov	rsp, rsp
	movsxd	rdx, dword ptr [rbp - 0x1ac]
	lea	rsi, [rsi]
	add	rdx, qword ptr [rbp - 0x118]
	mov	rbp, rbp
	cmp	rcx, rdx
	jge	.label_2135
.label_2060:
	mov	rsp, rsp
	mov	al, 1
	mov	rbp, rbp
	mov	ecx, dword ptr [rbp - 0x1ac]
	nop	
	mov	rdx, qword ptr [rbp - 0x118]
	nop	
	mov	esi, edx
	nop	
	add	ecx, esi
	mov	dil, cl
	movsx	ecx, dil
	mov	dword ptr [rbp - 0xa68], ecx
	test	al, 1
	jne	.label_1931
	jmp	.label_1930
.label_2135:
	xor	eax, eax
	mov	rsp, rsp
	mov	cl, al
	nop	
	mov	eax, dword ptr [rbp - 0x1ac]
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x118]
	mov	esi, edx
	add	eax, esi
	mov	dil, al
	mov	rsp, rsp
	movsx	eax, dil
	mov	dword ptr [rbp - 0xa68], eax
	test	cl, 1
	jne	.label_1931
	mov	rsp, rsp
	jmp	.label_1930
.label_3845:
	mov	rsp, rsp
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_2166
	jmp	.label_2173
.label_2166:
	nop	
	xor	eax, eax
	lea	rsi, [rsi]
	mov	cl, al
	test	cl, 1
	jne	.label_2250
	jmp	.label_2180
.label_2250:
	mov	al, 1
	mov	rbp, rbp
	test	al, 1
	mov	rsp, rsp
	jne	.label_2182
	mov	rbp, rbp
	jmp	.label_2188
.label_2182:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x118]
	lea	rdi, [rdi]
	mov	cx, ax
	lea	rdi, [rdi]
	movsx	edx, cx
	cmp	edx, 0
	jge	.label_2189
	mov	eax, 0x80000000
	mov	ecx, dword ptr [rbp - 0x1ac]
	mov	dx, cx
	movsx	ecx, dx
	mov	rsi, qword ptr [rbp - 0x118]
	mov	dx, si
	lea	rsi, [rsi]
	movsx	edi, dx
	lea	rdi, [rdi]
	sub	eax, edi
	cmp	ecx, eax
	lea	rdi, [rdi]
	jl	.label_2202
	jmp	.label_2258
.label_2189:
	lea	rsi, [rsi]
	mov	eax, 0x7fffffff
	nop	
	mov	rcx, qword ptr [rbp - 0x118]
	mov	rbp, rbp
	mov	dx, cx
	movsx	esi, dx
	mov	rbp, rbp
	sub	eax, esi
	nop	
	mov	esi, dword ptr [rbp - 0x1ac]
	mov	rbp, rbp
	mov	dx, si
	movsx	esi, dx
	cmp	eax, esi
	jl	.label_2202
	mov	rsp, rsp
	jmp	.label_2258
.label_2188:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x1ac]
	lea	rdi, [rdi]
	mov	cx, ax
	mov	rsp, rsp
	movsx	eax, cx
	lea	rsi, [rsi]
	cmp	eax, 0
	lea	rdi, [rdi]
	jge	.label_2234
	mov	rax, qword ptr [rbp - 0x118]
	lea	rsi, [rsi]
	mov	cx, ax
	movsx	edx, cx
	mov	esi, dword ptr [rbp - 0x1ac]
	mov	cx, si
	lea	rdi, [rdi]
	movsx	esi, cx
	mov	rax, qword ptr [rbp - 0x118]
	mov	cx, ax
	mov	rbp, rbp
	movsx	edi, cx
	mov	rbp, rbp
	add	esi, edi
	nop	
	cmp	edx, esi
	jle	.label_2202
	nop	
	jmp	.label_2258
.label_2234:
	mov	rax, qword ptr [rbp - 0x118]
	lea	rsi, [rsi]
	mov	cx, ax
	mov	rbp, rbp
	movsx	edx, cx
	mov	rsp, rsp
	cmp	edx, 0
	jge	.label_2261
	mov	eax, dword ptr [rbp - 0x1ac]
	mov	cx, ax
	movsx	eax, cx
	mov	edx, dword ptr [rbp - 0x1ac]
	mov	cx, dx
	movsx	edx, cx
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x118]
	mov	cx, si
	movsx	edi, cx
	add	edx, edi
	nop	
	cmp	eax, edx
	jle	.label_2202
	jmp	.label_2258
.label_2261:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x1ac]
	mov	cx, ax
	movsx	eax, cx
	nop	
	mov	rdx, qword ptr [rbp - 0x118]
	mov	cx, dx
	mov	rsp, rsp
	movsx	esi, cx
	mov	rbp, rbp
	add	eax, esi
	mov	rdx, qword ptr [rbp - 0x118]
	mov	cx, dx
	lea	rdi, [rdi]
	movsx	esi, cx
	nop	
	cmp	eax, esi
	lea	rsi, [rsi]
	jl	.label_2202
.label_2258:
	nop	
	mov	eax, dword ptr [rbp - 0x1ac]
	lea	rsi, [rsi]
	mov	cx, ax
	lea	rdi, [rdi]
	movsx	eax, cx
	mov	rdx, qword ptr [rbp - 0x118]
	mov	cx, dx
	nop	
	movsx	esi, cx
	add	eax, esi
	cmp	eax, 0xffff8000
	jl	.label_2202
	mov	eax, 0x7fff
	mov	ecx, dword ptr [rbp - 0x1ac]
	mov	dx, cx
	nop	
	movsx	ecx, dx
	mov	rsi, qword ptr [rbp - 0x118]
	mov	dx, si
	nop	
	movsx	edi, dx
	add	ecx, edi
	mov	rsp, rsp
	cmp	eax, ecx
	mov	rbp, rbp
	jge	.label_2636
.label_2202:
	mov	al, 1
	mov	ecx, dword ptr [rbp - 0x1ac]
	lea	rsi, [rsi]
	mov	dx, cx
	nop	
	movsx	ecx, dx
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x118]
	mov	dx, si
	movsx	edi, dx
	nop	
	add	ecx, edi
	mov	rsp, rsp
	mov	dx, cx
	movsx	ecx, dx
	mov	dword ptr [rbp - 0xa68], ecx
	test	al, 1
	jne	.label_1931
	jmp	.label_1930
.label_2636:
	xor	eax, eax
	mov	rsp, rsp
	mov	cl, al
	mov	eax, dword ptr [rbp - 0x1ac]
	mov	rsp, rsp
	mov	dx, ax
	movsx	eax, dx
	nop	
	mov	rsi, qword ptr [rbp - 0x118]
	lea	rdi, [rdi]
	mov	dx, si
	movsx	edi, dx
	add	eax, edi
	lea	rsi, [rsi]
	mov	dx, ax
	lea	rdi, [rdi]
	movsx	eax, dx
	mov	rbp, rbp
	mov	dword ptr [rbp - 0xa68], eax
	test	cl, 1
	mov	rbp, rbp
	jne	.label_1931
	lea	rdi, [rdi]
	jmp	.label_1930
.label_2180:
	lea	rdi, [rdi]
	mov	al, 1
	test	al, 1
	lea	rsi, [rsi]
	jne	.label_2366
	lea	rdi, [rdi]
	jmp	.label_2372
.label_2366:
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0x118], 0
	mov	rbp, rbp
	jge	.label_2375
	movabs	rax, 0x8000000000000000
	lea	rsi, [rsi]
	movsxd	rcx, dword ptr [rbp - 0x1ac]
	sub	rax, qword ptr [rbp - 0x118]
	cmp	rcx, rax
	lea	rdi, [rdi]
	jl	.label_2382
	jmp	.label_2392
.label_2375:
	mov	rsp, rsp
	movabs	rax, 0x7fffffffffffffff
	sub	rax, qword ptr [rbp - 0x118]
	mov	rbp, rbp
	movsxd	rcx, dword ptr [rbp - 0x1ac]
	lea	rdi, [rdi]
	cmp	rax, rcx
	jl	.label_2382
	mov	rbp, rbp
	jmp	.label_2392
.label_2372:
	lea	rsi, [rsi]
	cmp	dword ptr [rbp - 0x1ac], 0
	jge	.label_2402
	mov	rax, qword ptr [rbp - 0x118]
	mov	rbp, rbp
	movsxd	rcx, dword ptr [rbp - 0x1ac]
	add	rcx, qword ptr [rbp - 0x118]
	cmp	rax, rcx
	lea	rsi, [rsi]
	jle	.label_2382
	jmp	.label_2392
.label_2402:
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x118], 0
	jge	.label_2414
	movsxd	rax, dword ptr [rbp - 0x1ac]
	movsxd	rcx, dword ptr [rbp - 0x1ac]
	lea	rsi, [rsi]
	add	rcx, qword ptr [rbp - 0x118]
	cmp	rax, rcx
	jle	.label_2382
	jmp	.label_2392
.label_2414:
	movsxd	rax, dword ptr [rbp - 0x1ac]
	nop	
	add	rax, qword ptr [rbp - 0x118]
	cmp	rax, qword ptr [rbp - 0x118]
	nop	
	jl	.label_2382
.label_2392:
	movsxd	rax, dword ptr [rbp - 0x1ac]
	add	rax, qword ptr [rbp - 0x118]
	lea	rsi, [rsi]
	cmp	rax, -0x8000
	jl	.label_2382
	lea	rsi, [rsi]
	mov	eax, 0x7fff
	mov	ecx, eax
	movsxd	rdx, dword ptr [rbp - 0x1ac]
	add	rdx, qword ptr [rbp - 0x118]
	mov	rsp, rsp
	cmp	rcx, rdx
	jge	.label_2322
.label_2382:
	mov	al, 1
	mov	rbp, rbp
	mov	ecx, dword ptr [rbp - 0x1ac]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x118]
	nop	
	mov	esi, edx
	lea	rsi, [rsi]
	add	ecx, esi
	nop	
	mov	di, cx
	lea	rdi, [rdi]
	movsx	ecx, di
	mov	rbp, rbp
	mov	dword ptr [rbp - 0xa68], ecx
	test	al, 1
	nop	
	jne	.label_1931
	nop	
	jmp	.label_1930
.label_2322:
	xor	eax, eax
	mov	cl, al
	mov	eax, dword ptr [rbp - 0x1ac]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x118]
	mov	esi, edx
	mov	rsp, rsp
	add	eax, esi
	mov	di, ax
	nop	
	movsx	eax, di
	mov	rbp, rbp
	mov	dword ptr [rbp - 0xa68], eax
	lea	rsi, [rsi]
	test	cl, 1
	jne	.label_1931
	nop	
	jmp	.label_1930
.label_2173:
	mov	al, 1
	test	al, 1
	jne	.label_3471
	jmp	.label_2495
.label_3471:
	lea	rdi, [rdi]
	xor	eax, eax
	mov	cl, al
	mov	rsp, rsp
	test	cl, 1
	mov	rsp, rsp
	jne	.label_2499
	lea	rsi, [rsi]
	jmp	.label_2507
.label_2499:
	mov	rbp, rbp
	mov	al, 1
	lea	rsi, [rsi]
	test	al, 1
	mov	rbp, rbp
	jne	.label_2509
	mov	rsp, rsp
	jmp	.label_2513
.label_2509:
	mov	rax, qword ptr [rbp - 0x118]
	lea	rsi, [rsi]
	mov	ecx, eax
	nop	
	cmp	ecx, 0
	jge	.label_3282
	mov	eax, 0x80000000
	lea	rsi, [rsi]
	mov	ecx, dword ptr [rbp - 0x1ac]
	nop	
	mov	rdx, qword ptr [rbp - 0x118]
	mov	esi, edx
	mov	rbp, rbp
	sub	eax, esi
	cmp	ecx, eax
	lea	rdi, [rdi]
	jl	.label_2520
	jmp	.label_2307
.label_3282:
	mov	rbp, rbp
	mov	eax, 0x7fffffff
	mov	rcx, qword ptr [rbp - 0x118]
	mov	rsp, rsp
	mov	edx, ecx
	sub	eax, edx
	cmp	eax, dword ptr [rbp - 0x1ac]
	nop	
	jl	.label_2520
	jmp	.label_2307
.label_2513:
	mov	rbp, rbp
	cmp	dword ptr [rbp - 0x1ac], 0
	jge	.label_2539
	mov	rax, qword ptr [rbp - 0x118]
	mov	rbp, rbp
	mov	ecx, eax
	mov	edx, dword ptr [rbp - 0x1ac]
	mov	rax, qword ptr [rbp - 0x118]
	lea	rsi, [rsi]
	mov	esi, eax
	mov	rsp, rsp
	add	edx, esi
	lea	rdi, [rdi]
	cmp	ecx, edx
	mov	rbp, rbp
	jle	.label_2520
	jmp	.label_2307
.label_2539:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x118]
	lea	rsi, [rsi]
	mov	ecx, eax
	cmp	ecx, 0
	jge	.label_2556
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x1ac]
	mov	rsp, rsp
	mov	ecx, dword ptr [rbp - 0x1ac]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x118]
	nop	
	mov	esi, edx
	mov	rbp, rbp
	add	ecx, esi
	cmp	eax, ecx
	jle	.label_2520
	jmp	.label_2307
.label_2556:
	nop	
	mov	eax, dword ptr [rbp - 0x1ac]
	mov	rcx, qword ptr [rbp - 0x118]
	mov	edx, ecx
	add	eax, edx
	mov	rcx, qword ptr [rbp - 0x118]
	mov	edx, ecx
	cmp	eax, edx
	jl	.label_2520
.label_2307:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x1ac]
	mov	rcx, qword ptr [rbp - 0x118]
	mov	edx, ecx
	add	eax, edx
	mov	rbp, rbp
	cmp	eax, 0x80000000
	nop	
	jl	.label_2520
	mov	eax, 0x7fffffff
	mov	ecx, dword ptr [rbp - 0x1ac]
	mov	rdx, qword ptr [rbp - 0x118]
	mov	esi, edx
	add	ecx, esi
	lea	rdi, [rdi]
	cmp	eax, ecx
	lea	rdi, [rdi]
	jge	.label_2592
.label_2520:
	mov	al, 1
	mov	rsp, rsp
	mov	ecx, dword ptr [rbp - 0x1ac]
	mov	rdx, qword ptr [rbp - 0x118]
	mov	rsp, rsp
	mov	esi, edx
	add	ecx, esi
	mov	rsp, rsp
	mov	dword ptr [rbp - 0xa68], ecx
	test	al, 1
	jne	.label_1931
	mov	rbp, rbp
	jmp	.label_1930
.label_2592:
	lea	rdi, [rdi]
	xor	eax, eax
	nop	
	mov	cl, al
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x1ac]
	nop	
	mov	rdx, qword ptr [rbp - 0x118]
	mov	esi, edx
	mov	rsp, rsp
	add	eax, esi
	mov	rbp, rbp
	mov	dword ptr [rbp - 0xa68], eax
	test	cl, 1
	jne	.label_1931
	jmp	.label_1930
.label_2507:
	mov	rsp, rsp
	mov	al, 1
	test	al, 1
	mov	rbp, rbp
	jne	.label_2630
	jmp	.label_2633
.label_2630:
	cmp	qword ptr [rbp - 0x118], 0
	jge	.label_2634
	mov	rbp, rbp
	movabs	rax, 0x8000000000000000
	lea	rsi, [rsi]
	movsxd	rcx, dword ptr [rbp - 0x1ac]
	mov	rbp, rbp
	sub	rax, qword ptr [rbp - 0x118]
	lea	rdi, [rdi]
	cmp	rcx, rax
	jl	.label_2639
	jmp	.label_2116
.label_2634:
	movabs	rax, 0x7fffffffffffffff
	sub	rax, qword ptr [rbp - 0x118]
	nop	
	movsxd	rcx, dword ptr [rbp - 0x1ac]
	lea	rdi, [rdi]
	cmp	rax, rcx
	jl	.label_2639
	nop	
	jmp	.label_2116
.label_2633:
	cmp	dword ptr [rbp - 0x1ac], 0
	jge	.label_2659
	mov	rax, qword ptr [rbp - 0x118]
	mov	rsp, rsp
	movsxd	rcx, dword ptr [rbp - 0x1ac]
	add	rcx, qword ptr [rbp - 0x118]
	cmp	rax, rcx
	lea	rsi, [rsi]
	jle	.label_2639
	nop	
	jmp	.label_2116
.label_2659:
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x118], 0
	jge	.label_2219
	movsxd	rax, dword ptr [rbp - 0x1ac]
	lea	rsi, [rsi]
	movsxd	rcx, dword ptr [rbp - 0x1ac]
	mov	rsp, rsp
	add	rcx, qword ptr [rbp - 0x118]
	lea	rsi, [rsi]
	cmp	rax, rcx
	jle	.label_2639
	mov	rsp, rsp
	jmp	.label_2116
.label_2219:
	nop	
	movsxd	rax, dword ptr [rbp - 0x1ac]
	add	rax, qword ptr [rbp - 0x118]
	cmp	rax, qword ptr [rbp - 0x118]
	jl	.label_2639
.label_2116:
	movsxd	rax, dword ptr [rbp - 0x1ac]
	add	rax, qword ptr [rbp - 0x118]
	cmp	rax, -0x80000000
	jl	.label_2639
	mov	rsp, rsp
	mov	eax, 0x7fffffff
	lea	rdi, [rdi]
	mov	ecx, eax
	mov	rsp, rsp
	movsxd	rdx, dword ptr [rbp - 0x1ac]
	lea	rsi, [rsi]
	add	rdx, qword ptr [rbp - 0x118]
	mov	rbp, rbp
	cmp	rcx, rdx
	lea	rsi, [rsi]
	jge	.label_2698
.label_2639:
	lea	rsi, [rsi]
	mov	al, 1
	nop	
	mov	ecx, dword ptr [rbp - 0x1ac]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x118]
	lea	rsi, [rsi]
	mov	esi, edx
	mov	rbp, rbp
	add	ecx, esi
	mov	dword ptr [rbp - 0xa68], ecx
	test	al, 1
	mov	rbp, rbp
	jne	.label_1931
	jmp	.label_1930
.label_2698:
	mov	rbp, rbp
	xor	eax, eax
	mov	cl, al
	mov	eax, dword ptr [rbp - 0x1ac]
	mov	rdx, qword ptr [rbp - 0x118]
	lea	rsi, [rsi]
	mov	esi, edx
	add	eax, esi
	mov	rbp, rbp
	mov	dword ptr [rbp - 0xa68], eax
	test	cl, 1
	jne	.label_1931
	nop	
	jmp	.label_1930
.label_2495:
	xor	eax, eax
	mov	rsp, rsp
	mov	cl, al
	test	cl, 1
	jne	.label_2729
	lea	rsi, [rsi]
	jmp	.label_2736
.label_2729:
	mov	rbp, rbp
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_2740
	mov	rsp, rsp
	jmp	.label_2743
.label_2740:
	lea	rdi, [rdi]
	mov	al, 1
	test	al, 1
	lea	rsi, [rsi]
	jne	.label_2746
	jmp	.label_2750
.label_2746:
	cmp	qword ptr [rbp - 0x118], 0
	jge	.label_2752
	movabs	rax, 0x8000000000000000
	lea	rdi, [rdi]
	movsxd	rcx, dword ptr [rbp - 0x1ac]
	lea	rdi, [rdi]
	sub	rax, qword ptr [rbp - 0x118]
	cmp	rcx, rax
	jl	.label_2754
	jmp	.label_2761
.label_2752:
	mov	rbp, rbp
	movabs	rax, 0x7fffffffffffffff
	sub	rax, qword ptr [rbp - 0x118]
	movsxd	rcx, dword ptr [rbp - 0x1ac]
	cmp	rax, rcx
	lea	rsi, [rsi]
	jl	.label_2754
	nop	
	jmp	.label_2761
.label_2750:
	movsxd	rax, dword ptr [rbp - 0x1ac]
	cmp	rax, 0
	jge	.label_2775
	mov	rax, qword ptr [rbp - 0x118]
	mov	rsp, rsp
	movsxd	rcx, dword ptr [rbp - 0x1ac]
	add	rcx, qword ptr [rbp - 0x118]
	cmp	rax, rcx
	jle	.label_2754
	nop	
	jmp	.label_2761
.label_2775:
	cmp	qword ptr [rbp - 0x118], 0
	nop	
	jge	.label_2787
	movsxd	rax, dword ptr [rbp - 0x1ac]
	lea	rsi, [rsi]
	movsxd	rcx, dword ptr [rbp - 0x1ac]
	lea	rdi, [rdi]
	add	rcx, qword ptr [rbp - 0x118]
	nop	
	cmp	rax, rcx
	nop	
	jle	.label_2754
	mov	rsp, rsp
	jmp	.label_2761
.label_2787:
	lea	rsi, [rsi]
	movsxd	rax, dword ptr [rbp - 0x1ac]
	add	rax, qword ptr [rbp - 0x118]
	nop	
	cmp	rax, qword ptr [rbp - 0x118]
	lea	rdi, [rdi]
	jl	.label_2754
.label_2761:
	mov	rsp, rsp
	movabs	rax, 0x8000000000000000
	lea	rsi, [rsi]
	movsxd	rcx, dword ptr [rbp - 0x1ac]
	mov	rsp, rsp
	add	rcx, qword ptr [rbp - 0x118]
	cmp	rcx, rax
	jl	.label_2754
	mov	rbp, rbp
	movabs	rax, 0x7fffffffffffffff
	movsxd	rcx, dword ptr [rbp - 0x1ac]
	nop	
	add	rcx, qword ptr [rbp - 0x118]
	cmp	rax, rcx
	lea	rsi, [rsi]
	jge	.label_2810
.label_2754:
	lea	rsi, [rsi]
	mov	al, 1
	lea	rsi, [rsi]
	movsxd	rcx, dword ptr [rbp - 0x1ac]
	add	rcx, qword ptr [rbp - 0x118]
	mov	edx, ecx
	mov	dword ptr [rbp - 0xa68], edx
	test	al, 1
	lea	rdi, [rdi]
	jne	.label_1931
	jmp	.label_1930
.label_2810:
	xor	eax, eax
	mov	rsp, rsp
	mov	cl, al
	mov	rsp, rsp
	movsxd	rdx, dword ptr [rbp - 0x1ac]
	nop	
	add	rdx, qword ptr [rbp - 0x118]
	mov	eax, edx
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0xa68], eax
	test	cl, 1
	mov	rsp, rsp
	jne	.label_1931
	jmp	.label_1930
.label_2743:
	mov	al, 1
	test	al, 1
	mov	rsp, rsp
	jne	.label_2844
	mov	rbp, rbp
	jmp	.label_2847
.label_2844:
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x118], 0
	lea	rdi, [rdi]
	jge	.label_2851
	lea	rsi, [rsi]
	movabs	rax, 0x8000000000000000
	mov	rsp, rsp
	movsxd	rcx, dword ptr [rbp - 0x1ac]
	lea	rsi, [rsi]
	sub	rax, qword ptr [rbp - 0x118]
	cmp	rcx, rax
	jl	.label_2855
	jmp	.label_2868
.label_2851:
	lea	rdi, [rdi]
	movabs	rax, 0x7fffffffffffffff
	mov	rsp, rsp
	sub	rax, qword ptr [rbp - 0x118]
	movsxd	rcx, dword ptr [rbp - 0x1ac]
	cmp	rax, rcx
	jl	.label_2855
	lea	rdi, [rdi]
	jmp	.label_2868
.label_2847:
	cmp	dword ptr [rbp - 0x1ac], 0
	jge	.label_2883
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x118]
	movsxd	rcx, dword ptr [rbp - 0x1ac]
	add	rcx, qword ptr [rbp - 0x118]
	cmp	rax, rcx
	jle	.label_2855
	nop	
	jmp	.label_2868
.label_2883:
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x118], 0
	lea	rdi, [rdi]
	jge	.label_2897
	mov	rbp, rbp
	movsxd	rax, dword ptr [rbp - 0x1ac]
	movsxd	rcx, dword ptr [rbp - 0x1ac]
	nop	
	add	rcx, qword ptr [rbp - 0x118]
	cmp	rax, rcx
	jle	.label_2855
	jmp	.label_2868
.label_2897:
	lea	rdi, [rdi]
	movsxd	rax, dword ptr [rbp - 0x1ac]
	nop	
	add	rax, qword ptr [rbp - 0x118]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rbp - 0x118]
	nop	
	jl	.label_2855
.label_2868:
	lea	rsi, [rsi]
	movabs	rax, 0x8000000000000000
	mov	rsp, rsp
	movsxd	rcx, dword ptr [rbp - 0x1ac]
	mov	rsp, rsp
	add	rcx, qword ptr [rbp - 0x118]
	lea	rsi, [rsi]
	cmp	rcx, rax
	lea	rdi, [rdi]
	jl	.label_2855
	mov	rsp, rsp
	movabs	rax, 0x7fffffffffffffff
	movsxd	rcx, dword ptr [rbp - 0x1ac]
	mov	rbp, rbp
	add	rcx, qword ptr [rbp - 0x118]
	cmp	rax, rcx
	lea	rdi, [rdi]
	jge	.label_2934
.label_2855:
	lea	rsi, [rsi]
	mov	al, 1
	mov	rbp, rbp
	movsxd	rcx, dword ptr [rbp - 0x1ac]
	mov	rsp, rsp
	add	rcx, qword ptr [rbp - 0x118]
	mov	edx, ecx
	mov	dword ptr [rbp - 0xa68], edx
	test	al, 1
	jne	.label_1931
	lea	rsi, [rsi]
	jmp	.label_1930
.label_2934:
	xor	eax, eax
	mov	rbp, rbp
	mov	cl, al
	movsxd	rdx, dword ptr [rbp - 0x1ac]
	add	rdx, qword ptr [rbp - 0x118]
	mov	eax, edx
	mov	rsp, rsp
	mov	dword ptr [rbp - 0xa68], eax
	test	cl, 1
	lea	rsi, [rsi]
	jne	.label_1931
	jmp	.label_1930
.label_2736:
	lea	rdi, [rdi]
	xor	eax, eax
	lea	rdi, [rdi]
	mov	cl, al
	test	cl, 1
	jne	.label_2968
	mov	rsp, rsp
	jmp	.label_2050
.label_2968:
	lea	rdi, [rdi]
	mov	al, 1
	test	al, 1
	jne	.label_2981
	jmp	.label_2985
.label_2981:
	cmp	qword ptr [rbp - 0x118], 0
	mov	rbp, rbp
	jge	.label_2096
	movabs	rax, 0x8000000000000000
	lea	rdi, [rdi]
	movsxd	rcx, dword ptr [rbp - 0x1ac]
	lea	rsi, [rsi]
	sub	rax, qword ptr [rbp - 0x118]
	lea	rdi, [rdi]
	cmp	rcx, rax
	mov	rsp, rsp
	jl	.label_2478
	nop	
	jmp	.label_2701
.label_2096:
	movabs	rax, 0x7fffffffffffffff
	sub	rax, qword ptr [rbp - 0x118]
	nop	
	movsxd	rcx, dword ptr [rbp - 0x1ac]
	lea	rsi, [rsi]
	cmp	rax, rcx
	jl	.label_2478
	jmp	.label_2701
.label_2985:
	mov	rbp, rbp
	movsxd	rax, dword ptr [rbp - 0x1ac]
	mov	rbp, rbp
	cmp	rax, 0
	mov	rsp, rsp
	jge	.label_3019
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x118]
	lea	rdi, [rdi]
	movsxd	rcx, dword ptr [rbp - 0x1ac]
	lea	rsi, [rsi]
	add	rcx, qword ptr [rbp - 0x118]
	lea	rdi, [rdi]
	cmp	rax, rcx
	jle	.label_2478
	jmp	.label_2701
.label_3019:
	cmp	qword ptr [rbp - 0x118], 0
	jge	.label_3032
	movsxd	rax, dword ptr [rbp - 0x1ac]
	nop	
	movsxd	rcx, dword ptr [rbp - 0x1ac]
	mov	rsp, rsp
	add	rcx, qword ptr [rbp - 0x118]
	nop	
	cmp	rax, rcx
	jle	.label_2478
	mov	rsp, rsp
	jmp	.label_2701
.label_3032:
	mov	rsp, rsp
	movsxd	rax, dword ptr [rbp - 0x1ac]
	nop	
	add	rax, qword ptr [rbp - 0x118]
	cmp	rax, qword ptr [rbp - 0x118]
	jl	.label_2478
.label_2701:
	movabs	rax, 0x8000000000000000
	lea	rsi, [rsi]
	movsxd	rcx, dword ptr [rbp - 0x1ac]
	add	rcx, qword ptr [rbp - 0x118]
	cmp	rcx, rax
	mov	rbp, rbp
	jl	.label_2478
	lea	rdi, [rdi]
	movabs	rax, 0x7fffffffffffffff
	lea	rdi, [rdi]
	movsxd	rcx, dword ptr [rbp - 0x1ac]
	nop	
	add	rcx, qword ptr [rbp - 0x118]
	cmp	rax, rcx
	lea	rsi, [rsi]
	jge	.label_3054
.label_2478:
	mov	rsp, rsp
	mov	al, 1
	movsxd	rcx, dword ptr [rbp - 0x1ac]
	nop	
	add	rcx, qword ptr [rbp - 0x118]
	mov	edx, ecx
	mov	dword ptr [rbp - 0xa68], edx
	mov	rbp, rbp
	test	al, 1
	jne	.label_1931
	mov	rsp, rsp
	jmp	.label_1930
.label_3054:
	xor	eax, eax
	mov	cl, al
	movsxd	rdx, dword ptr [rbp - 0x1ac]
	add	rdx, qword ptr [rbp - 0x118]
	mov	rbp, rbp
	mov	eax, edx
	mov	dword ptr [rbp - 0xa68], eax
	test	cl, 1
	jne	.label_1931
	jmp	.label_1930
.label_2050:
	mov	al, 1
	test	al, 1
	mov	rsp, rsp
	jne	.label_3088
	jmp	.label_2769
.label_3088:
	cmp	qword ptr [rbp - 0x118], 0
	jge	.label_3094
	mov	rsp, rsp
	movabs	rax, 0x8000000000000000
	lea	rsi, [rsi]
	movsxd	rcx, dword ptr [rbp - 0x1ac]
	sub	rax, qword ptr [rbp - 0x118]
	nop	
	cmp	rcx, rax
	jl	.label_3097
	lea	rsi, [rsi]
	jmp	.label_2782
.label_3094:
	movabs	rax, 0x7fffffffffffffff
	lea	rdi, [rdi]
	sub	rax, qword ptr [rbp - 0x118]
	movsxd	rcx, dword ptr [rbp - 0x1ac]
	mov	rsp, rsp
	cmp	rax, rcx
	lea	rdi, [rdi]
	jl	.label_3097
	jmp	.label_2782
.label_2769:
	cmp	dword ptr [rbp - 0x1ac], 0
	jge	.label_3119
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x118]
	mov	rbp, rbp
	movsxd	rcx, dword ptr [rbp - 0x1ac]
	mov	rbp, rbp
	add	rcx, qword ptr [rbp - 0x118]
	mov	rsp, rsp
	cmp	rax, rcx
	nop	
	jle	.label_3097
	mov	rbp, rbp
	jmp	.label_2782
.label_3119:
	cmp	qword ptr [rbp - 0x118], 0
	jge	.label_3057
	nop	
	movsxd	rax, dword ptr [rbp - 0x1ac]
	movsxd	rcx, dword ptr [rbp - 0x1ac]
	lea	rdi, [rdi]
	add	rcx, qword ptr [rbp - 0x118]
	cmp	rax, rcx
	jle	.label_3097
	mov	rbp, rbp
	jmp	.label_2782
.label_3057:
	nop	
	movsxd	rax, dword ptr [rbp - 0x1ac]
	mov	rsp, rsp
	add	rax, qword ptr [rbp - 0x118]
	cmp	rax, qword ptr [rbp - 0x118]
	jl	.label_3097
.label_2782:
	movabs	rax, 0x8000000000000000
	movsxd	rcx, dword ptr [rbp - 0x1ac]
	add	rcx, qword ptr [rbp - 0x118]
	cmp	rcx, rax
	mov	rbp, rbp
	jl	.label_3097
	nop	
	movabs	rax, 0x7fffffffffffffff
	movsxd	rcx, dword ptr [rbp - 0x1ac]
	add	rcx, qword ptr [rbp - 0x118]
	lea	rdi, [rdi]
	cmp	rax, rcx
	jge	.label_3155
.label_3097:
	mov	al, 1
	movsxd	rcx, dword ptr [rbp - 0x1ac]
	lea	rsi, [rsi]
	add	rcx, qword ptr [rbp - 0x118]
	mov	edx, ecx
	mov	dword ptr [rbp - 0xa68], edx
	test	al, 1
	nop	
	jne	.label_1931
	mov	rsp, rsp
	jmp	.label_1930
.label_3155:
	nop	
	xor	eax, eax
	mov	cl, al
	movsxd	rdx, dword ptr [rbp - 0x1ac]
	mov	rbp, rbp
	add	rdx, qword ptr [rbp - 0x118]
	mov	eax, edx
	mov	dword ptr [rbp - 0xa68], eax
	nop	
	test	cl, 1
	jne	.label_1931
.label_1930:
	lea	rdi, [rdi]
	xor	eax, eax
	mov	cl, al
	mov	rsp, rsp
	test	cl, 1
	lea	rdi, [rdi]
	jne	.label_3184
	nop	
	jmp	.label_3192
.label_3184:
	mov	rbp, rbp
	xor	eax, eax
	mov	cl, al
	mov	rsp, rsp
	test	cl, 1
	mov	rbp, rbp
	jne	.label_3194
	mov	rsp, rsp
	jmp	.label_3200
.label_3194:
	mov	al, 1
	lea	rdi, [rdi]
	test	al, 1
	lea	rsi, [rsi]
	jne	.label_3202
	mov	rsp, rsp
	jmp	.label_3206
.label_3202:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x110]
	mov	rbp, rbp
	mov	cl, al
	lea	rsi, [rsi]
	movsx	edx, cl
	cmp	edx, 0
	jge	.label_3210
	lea	rdi, [rdi]
	mov	eax, 0x80000000
	lea	rsi, [rsi]
	mov	ecx, dword ptr [rbp - 0x1b0]
	mov	rbp, rbp
	mov	dl, cl
	movsx	ecx, dl
	mov	rsi, qword ptr [rbp - 0x110]
	mov	dl, sil
	movsx	edi, dl
	mov	rbp, rbp
	sub	eax, edi
	cmp	ecx, eax
	jl	.label_3223
	jmp	.label_3236
.label_3210:
	mov	eax, 0x7fffffff
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x110]
	mov	rsp, rsp
	mov	dl, cl
	lea	rdi, [rdi]
	movsx	esi, dl
	sub	eax, esi
	mov	rsp, rsp
	mov	esi, dword ptr [rbp - 0x1b0]
	mov	dl, sil
	mov	rsp, rsp
	movsx	esi, dl
	cmp	eax, esi
	jl	.label_3223
	mov	rsp, rsp
	jmp	.label_3236
.label_3206:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x1b0]
	mov	cl, al
	mov	rbp, rbp
	movsx	eax, cl
	cmp	eax, 0
	mov	rbp, rbp
	jge	.label_3250
	mov	rax, qword ptr [rbp - 0x110]
	lea	rdi, [rdi]
	mov	cl, al
	nop	
	movsx	edx, cl
	nop	
	mov	esi, dword ptr [rbp - 0x1b0]
	mov	cl, sil
	movsx	esi, cl
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x110]
	mov	cl, al
	movsx	edi, cl
	add	esi, edi
	lea	rsi, [rsi]
	cmp	edx, esi
	jle	.label_3223
	nop	
	jmp	.label_3236
.label_3250:
	mov	rax, qword ptr [rbp - 0x110]
	mov	rsp, rsp
	mov	cl, al
	mov	rbp, rbp
	movsx	edx, cl
	cmp	edx, 0
	mov	rbp, rbp
	jge	.label_3267
	mov	eax, dword ptr [rbp - 0x1b0]
	lea	rsi, [rsi]
	mov	cl, al
	mov	rbp, rbp
	movsx	eax, cl
	mov	rsp, rsp
	mov	edx, dword ptr [rbp - 0x1b0]
	lea	rdi, [rdi]
	mov	cl, dl
	movsx	edx, cl
	mov	rsi, qword ptr [rbp - 0x110]
	lea	rsi, [rsi]
	mov	cl, sil
	lea	rdi, [rdi]
	movsx	edi, cl
	add	edx, edi
	cmp	eax, edx
	mov	rbp, rbp
	jle	.label_3223
	mov	rsp, rsp
	jmp	.label_3236
.label_3267:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x1b0]
	mov	cl, al
	movsx	eax, cl
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x110]
	mov	rsp, rsp
	mov	cl, dl
	mov	rbp, rbp
	movsx	esi, cl
	lea	rdi, [rdi]
	add	eax, esi
	mov	rdx, qword ptr [rbp - 0x110]
	mov	rsp, rsp
	mov	cl, dl
	mov	rbp, rbp
	movsx	esi, cl
	cmp	eax, esi
	jl	.label_3223
.label_3236:
	mov	eax, dword ptr [rbp - 0x1b0]
	mov	cl, al
	movsx	eax, cl
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x110]
	mov	rsp, rsp
	mov	cl, dl
	movsx	esi, cl
	add	eax, esi
	cmp	eax, -0x80
	mov	rbp, rbp
	jl	.label_3223
	mov	eax, 0x7f
	nop	
	mov	ecx, dword ptr [rbp - 0x1b0]
	lea	rdi, [rdi]
	mov	dl, cl
	movsx	ecx, dl
	mov	rsi, qword ptr [rbp - 0x110]
	mov	dl, sil
	lea	rdi, [rdi]
	movsx	edi, dl
	add	ecx, edi
	cmp	eax, ecx
	jge	.label_3315
.label_3223:
	mov	rbp, rbp
	mov	al, 1
	lea	rsi, [rsi]
	mov	ecx, dword ptr [rbp - 0x1b0]
	lea	rsi, [rsi]
	mov	dl, cl
	lea	rdi, [rdi]
	movsx	ecx, dl
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x110]
	mov	dl, sil
	lea	rdi, [rdi]
	movsx	edi, dl
	mov	rsp, rsp
	add	ecx, edi
	mov	dl, cl
	lea	rsi, [rsi]
	movsx	ecx, dl
	mov	dword ptr [rbp - 0x6bc], ecx
	lea	rdi, [rdi]
	test	al, 1
	jne	.label_1931
	lea	rsi, [rsi]
	jmp	.label_1964
.label_3315:
	xor	eax, eax
	nop	
	mov	cl, al
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x1b0]
	mov	rbp, rbp
	mov	dl, al
	nop	
	movsx	eax, dl
	mov	rsi, qword ptr [rbp - 0x110]
	lea	rsi, [rsi]
	mov	dl, sil
	mov	rbp, rbp
	movsx	edi, dl
	add	eax, edi
	mov	dl, al
	movsx	eax, dl
	mov	dword ptr [rbp - 0x6bc], eax
	nop	
	test	cl, 1
	lea	rdi, [rdi]
	jne	.label_1931
	jmp	.label_1964
.label_3200:
	lea	rdi, [rdi]
	mov	al, 1
	test	al, 1
	mov	rsp, rsp
	jne	.label_3364
	nop	
	jmp	.label_3368
.label_3364:
	cmp	qword ptr [rbp - 0x110], 0
	mov	rsp, rsp
	jge	.label_3369
	movabs	rax, 0x8000000000000000
	lea	rsi, [rsi]
	movsxd	rcx, dword ptr [rbp - 0x1b0]
	lea	rdi, [rdi]
	sub	rax, qword ptr [rbp - 0x110]
	cmp	rcx, rax
	jl	.label_3373
	jmp	.label_2616
.label_3369:
	movabs	rax, 0x7fffffffffffffff
	sub	rax, qword ptr [rbp - 0x110]
	mov	rsp, rsp
	movsxd	rcx, dword ptr [rbp - 0x1b0]
	cmp	rax, rcx
	lea	rdi, [rdi]
	jl	.label_3373
	lea	rdi, [rdi]
	jmp	.label_2616
.label_3368:
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x1b0], 0
	jge	.label_3387
	mov	rax, qword ptr [rbp - 0x110]
	lea	rsi, [rsi]
	movsxd	rcx, dword ptr [rbp - 0x1b0]
	mov	rsp, rsp
	add	rcx, qword ptr [rbp - 0x110]
	mov	rbp, rbp
	cmp	rax, rcx
	mov	rsp, rsp
	jle	.label_3373
	mov	rbp, rbp
	jmp	.label_2616
.label_3387:
	cmp	qword ptr [rbp - 0x110], 0
	mov	rsp, rsp
	jge	.label_3398
	nop	
	movsxd	rax, dword ptr [rbp - 0x1b0]
	mov	rsp, rsp
	movsxd	rcx, dword ptr [rbp - 0x1b0]
	add	rcx, qword ptr [rbp - 0x110]
	cmp	rax, rcx
	jle	.label_3373
	jmp	.label_2616
.label_3398:
	lea	rdi, [rdi]
	movsxd	rax, dword ptr [rbp - 0x1b0]
	nop	
	add	rax, qword ptr [rbp - 0x110]
	mov	rsp, rsp
	cmp	rax, qword ptr [rbp - 0x110]
	jl	.label_3373
.label_2616:
	mov	rbp, rbp
	movsxd	rax, dword ptr [rbp - 0x1b0]
	mov	rsp, rsp
	add	rax, qword ptr [rbp - 0x110]
	lea	rdi, [rdi]
	cmp	rax, -0x80
	jl	.label_3373
	nop	
	mov	eax, 0x7f
	mov	ecx, eax
	nop	
	movsxd	rdx, dword ptr [rbp - 0x1b0]
	mov	rbp, rbp
	add	rdx, qword ptr [rbp - 0x110]
	nop	
	cmp	rcx, rdx
	jge	.label_3435
.label_3373:
	mov	al, 1
	mov	ecx, dword ptr [rbp - 0x1b0]
	mov	rdx, qword ptr [rbp - 0x110]
	lea	rsi, [rsi]
	mov	esi, edx
	mov	rbp, rbp
	add	ecx, esi
	mov	dil, cl
	movsx	ecx, dil
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x6bc], ecx
	test	al, 1
	jne	.label_1931
	lea	rdi, [rdi]
	jmp	.label_1964
.label_3435:
	xor	eax, eax
	mov	cl, al
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x1b0]
	mov	rdx, qword ptr [rbp - 0x110]
	mov	esi, edx
	add	eax, esi
	mov	rsp, rsp
	mov	dil, al
	movsx	eax, dil
	nop	
	mov	dword ptr [rbp - 0x6bc], eax
	mov	rbp, rbp
	test	cl, 1
	jne	.label_1931
	jmp	.label_1964
.label_3192:
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	mov	rsp, rsp
	jne	.label_3470
	mov	rsp, rsp
	jmp	.label_3199
.label_3470:
	xor	eax, eax
	nop	
	mov	cl, al
	lea	rdi, [rdi]
	test	cl, 1
	jne	.label_3214
	lea	rsi, [rsi]
	jmp	.label_3481
.label_3214:
	mov	al, 1
	test	al, 1
	lea	rdi, [rdi]
	jne	.label_3482
	jmp	.label_3485
.label_3482:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x110]
	nop	
	mov	cx, ax
	lea	rdi, [rdi]
	movsx	edx, cx
	cmp	edx, 0
	nop	
	jge	.label_3488
	mov	eax, 0x80000000
	mov	ecx, dword ptr [rbp - 0x1b0]
	mov	dx, cx
	mov	rbp, rbp
	movsx	ecx, dx
	mov	rsi, qword ptr [rbp - 0x110]
	mov	dx, si
	mov	rbp, rbp
	movsx	edi, dx
	mov	rsp, rsp
	sub	eax, edi
	cmp	ecx, eax
	lea	rdi, [rdi]
	jl	.label_3492
	mov	rbp, rbp
	jmp	.label_3384
.label_3488:
	mov	eax, 0x7fffffff
	mov	rcx, qword ptr [rbp - 0x110]
	mov	rbp, rbp
	mov	dx, cx
	movsx	esi, dx
	mov	rbp, rbp
	sub	eax, esi
	mov	rsp, rsp
	mov	esi, dword ptr [rbp - 0x1b0]
	mov	dx, si
	lea	rsi, [rsi]
	movsx	esi, dx
	cmp	eax, esi
	mov	rsp, rsp
	jl	.label_3492
	jmp	.label_3384
.label_3485:
	nop	
	mov	eax, dword ptr [rbp - 0x1b0]
	mov	cx, ax
	movsx	eax, cx
	cmp	eax, 0
	nop	
	jge	.label_3519
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x110]
	mov	rbp, rbp
	mov	cx, ax
	mov	rsp, rsp
	movsx	edx, cx
	nop	
	mov	esi, dword ptr [rbp - 0x1b0]
	mov	rbp, rbp
	mov	cx, si
	movsx	esi, cx
	mov	rax, qword ptr [rbp - 0x110]
	lea	rdi, [rdi]
	mov	cx, ax
	nop	
	movsx	edi, cx
	lea	rdi, [rdi]
	add	esi, edi
	mov	rbp, rbp
	cmp	edx, esi
	jle	.label_3492
	jmp	.label_3384
.label_3519:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x110]
	mov	rsp, rsp
	mov	cx, ax
	movsx	edx, cx
	cmp	edx, 0
	mov	rsp, rsp
	jge	.label_3541
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x1b0]
	mov	cx, ax
	nop	
	movsx	eax, cx
	mov	edx, dword ptr [rbp - 0x1b0]
	mov	cx, dx
	movsx	edx, cx
	mov	rsi, qword ptr [rbp - 0x110]
	lea	rsi, [rsi]
	mov	cx, si
	nop	
	movsx	edi, cx
	add	edx, edi
	nop	
	cmp	eax, edx
	jle	.label_3492
	jmp	.label_3384
.label_3541:
	mov	eax, dword ptr [rbp - 0x1b0]
	mov	rbp, rbp
	mov	cx, ax
	movsx	eax, cx
	mov	rdx, qword ptr [rbp - 0x110]
	nop	
	mov	cx, dx
	movsx	esi, cx
	add	eax, esi
	mov	rdx, qword ptr [rbp - 0x110]
	mov	rsp, rsp
	mov	cx, dx
	lea	rdi, [rdi]
	movsx	esi, cx
	mov	rsp, rsp
	cmp	eax, esi
	mov	rbp, rbp
	jl	.label_3492
.label_3384:
	mov	eax, dword ptr [rbp - 0x1b0]
	mov	rsp, rsp
	mov	cx, ax
	nop	
	movsx	eax, cx
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x110]
	mov	rbp, rbp
	mov	cx, dx
	nop	
	movsx	esi, cx
	mov	rbp, rbp
	add	eax, esi
	cmp	eax, 0xffff8000
	lea	rdi, [rdi]
	jl	.label_3492
	lea	rsi, [rsi]
	mov	eax, 0x7fff
	mov	rsp, rsp
	mov	ecx, dword ptr [rbp - 0x1b0]
	mov	dx, cx
	movsx	ecx, dx
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x110]
	mov	dx, si
	movsx	edi, dx
	add	ecx, edi
	cmp	eax, ecx
	mov	rbp, rbp
	jge	.label_3588
.label_3492:
	mov	al, 1
	mov	ecx, dword ptr [rbp - 0x1b0]
	mov	dx, cx
	nop	
	movsx	ecx, dx
	mov	rsi, qword ptr [rbp - 0x110]
	mov	rbp, rbp
	mov	dx, si
	movsx	edi, dx
	lea	rsi, [rsi]
	add	ecx, edi
	lea	rdi, [rdi]
	mov	dx, cx
	lea	rsi, [rsi]
	movsx	ecx, dx
	mov	dword ptr [rbp - 0x6bc], ecx
	lea	rdi, [rdi]
	test	al, 1
	jne	.label_1931
	jmp	.label_1964
.label_3588:
	mov	rbp, rbp
	xor	eax, eax
	mov	cl, al
	mov	eax, dword ptr [rbp - 0x1b0]
	mov	dx, ax
	movsx	eax, dx
	nop	
	mov	rsi, qword ptr [rbp - 0x110]
	lea	rsi, [rsi]
	mov	dx, si
	movsx	edi, dx
	nop	
	add	eax, edi
	mov	dx, ax
	movsx	eax, dx
	mov	dword ptr [rbp - 0x6bc], eax
	mov	rbp, rbp
	test	cl, 1
	jne	.label_1931
	mov	rbp, rbp
	jmp	.label_1964
.label_3481:
	mov	al, 1
	test	al, 1
	mov	rbp, rbp
	jne	.label_3626
	lea	rdi, [rdi]
	jmp	.label_3628
.label_3626:
	cmp	qword ptr [rbp - 0x110], 0
	nop	
	jge	.label_3630
	lea	rdi, [rdi]
	movabs	rax, 0x8000000000000000
	movsxd	rcx, dword ptr [rbp - 0x1b0]
	sub	rax, qword ptr [rbp - 0x110]
	nop	
	cmp	rcx, rax
	jl	.label_3636
	jmp	.label_3643
.label_3630:
	nop	
	movabs	rax, 0x7fffffffffffffff
	sub	rax, qword ptr [rbp - 0x110]
	nop	
	movsxd	rcx, dword ptr [rbp - 0x1b0]
	cmp	rax, rcx
	mov	rbp, rbp
	jl	.label_3636
	mov	rsp, rsp
	jmp	.label_3643
.label_3628:
	mov	rbp, rbp
	cmp	dword ptr [rbp - 0x1b0], 0
	jge	.label_3656
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x110]
	movsxd	rcx, dword ptr [rbp - 0x1b0]
	lea	rsi, [rsi]
	add	rcx, qword ptr [rbp - 0x110]
	cmp	rax, rcx
	jle	.label_3636
	mov	rbp, rbp
	jmp	.label_3643
.label_3656:
	cmp	qword ptr [rbp - 0x110], 0
	jge	.label_3672
	movsxd	rax, dword ptr [rbp - 0x1b0]
	nop	
	movsxd	rcx, dword ptr [rbp - 0x1b0]
	lea	rsi, [rsi]
	add	rcx, qword ptr [rbp - 0x110]
	lea	rdi, [rdi]
	cmp	rax, rcx
	lea	rsi, [rsi]
	jle	.label_3636
	mov	rbp, rbp
	jmp	.label_3643
.label_3672:
	movsxd	rax, dword ptr [rbp - 0x1b0]
	add	rax, qword ptr [rbp - 0x110]
	cmp	rax, qword ptr [rbp - 0x110]
	jl	.label_3636
.label_3643:
	lea	rdi, [rdi]
	movsxd	rax, dword ptr [rbp - 0x1b0]
	add	rax, qword ptr [rbp - 0x110]
	mov	rbp, rbp
	cmp	rax, -0x8000
	nop	
	jl	.label_3636
	mov	eax, 0x7fff
	mov	ecx, eax
	movsxd	rdx, dword ptr [rbp - 0x1b0]
	nop	
	add	rdx, qword ptr [rbp - 0x110]
	lea	rdi, [rdi]
	cmp	rcx, rdx
	nop	
	jge	.label_3692
.label_3636:
	lea	rsi, [rsi]
	mov	al, 1
	lea	rdi, [rdi]
	mov	ecx, dword ptr [rbp - 0x1b0]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x110]
	mov	rbp, rbp
	mov	esi, edx
	add	ecx, esi
	mov	di, cx
	movsx	ecx, di
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x6bc], ecx
	test	al, 1
	mov	rsp, rsp
	jne	.label_1931
	mov	rbp, rbp
	jmp	.label_1964
.label_3692:
	xor	eax, eax
	mov	cl, al
	mov	eax, dword ptr [rbp - 0x1b0]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x110]
	nop	
	mov	esi, edx
	nop	
	add	eax, esi
	mov	di, ax
	nop	
	movsx	eax, di
	mov	dword ptr [rbp - 0x6bc], eax
	test	cl, 1
	mov	rsp, rsp
	jne	.label_1931
	jmp	.label_1964
.label_3199:
	mov	al, 1
	mov	rbp, rbp
	test	al, 1
	jne	.label_3721
	lea	rsi, [rsi]
	jmp	.label_3724
.label_3721:
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_3728
	jmp	.label_3731
.label_3728:
	mov	rbp, rbp
	mov	al, 1
	lea	rdi, [rdi]
	test	al, 1
	jne	.label_3732
	jmp	.label_3855
.label_3732:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x110]
	mov	ecx, eax
	mov	rsp, rsp
	cmp	ecx, 0
	jge	.label_3011
	mov	eax, 0x80000000
	mov	rsp, rsp
	mov	ecx, dword ptr [rbp - 0x1b0]
	mov	rdx, qword ptr [rbp - 0x110]
	mov	esi, edx
	nop	
	sub	eax, esi
	nop	
	cmp	ecx, eax
	jl	.label_3740
	jmp	.label_3750
.label_3011:
	mov	rbp, rbp
	mov	eax, 0x7fffffff
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x110]
	mov	edx, ecx
	lea	rdi, [rdi]
	sub	eax, edx
	cmp	eax, dword ptr [rbp - 0x1b0]
	mov	rsp, rsp
	jl	.label_3740
	jmp	.label_3750
.label_3855:
	nop	
	cmp	dword ptr [rbp - 0x1b0], 0
	mov	rsp, rsp
	jge	.label_3757
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x110]
	nop	
	mov	ecx, eax
	mov	rbp, rbp
	mov	edx, dword ptr [rbp - 0x1b0]
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x110]
	mov	esi, eax
	add	edx, esi
	cmp	ecx, edx
	lea	rsi, [rsi]
	jle	.label_3740
	jmp	.label_3750
.label_3757:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x110]
	mov	ecx, eax
	nop	
	cmp	ecx, 0
	lea	rsi, [rsi]
	jge	.label_3770
	mov	eax, dword ptr [rbp - 0x1b0]
	mov	ecx, dword ptr [rbp - 0x1b0]
	mov	rdx, qword ptr [rbp - 0x110]
	mov	esi, edx
	mov	rsp, rsp
	add	ecx, esi
	cmp	eax, ecx
	jle	.label_3740
	mov	rsp, rsp
	jmp	.label_3750
.label_3770:
	mov	eax, dword ptr [rbp - 0x1b0]
	nop	
	mov	rcx, qword ptr [rbp - 0x110]
	mov	edx, ecx
	mov	rsp, rsp
	add	eax, edx
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x110]
	mov	rsp, rsp
	mov	edx, ecx
	mov	rsp, rsp
	cmp	eax, edx
	lea	rsi, [rsi]
	jl	.label_3740
.label_3750:
	mov	eax, dword ptr [rbp - 0x1b0]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x110]
	mov	edx, ecx
	add	eax, edx
	cmp	eax, 0x80000000
	jl	.label_3740
	mov	rsp, rsp
	mov	eax, 0x7fffffff
	mov	ecx, dword ptr [rbp - 0x1b0]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x110]
	mov	esi, edx
	add	ecx, esi
	lea	rdi, [rdi]
	cmp	eax, ecx
	mov	rbp, rbp
	jge	.label_3795
.label_3740:
	mov	rsp, rsp
	mov	al, 1
	mov	rbp, rbp
	mov	ecx, dword ptr [rbp - 0x1b0]
	mov	rdx, qword ptr [rbp - 0x110]
	lea	rsi, [rsi]
	mov	esi, edx
	add	ecx, esi
	mov	dword ptr [rbp - 0x6bc], ecx
	test	al, 1
	mov	rbp, rbp
	jne	.label_1931
	lea	rsi, [rsi]
	jmp	.label_1964
.label_3795:
	lea	rsi, [rsi]
	xor	eax, eax
	mov	cl, al
	mov	eax, dword ptr [rbp - 0x1b0]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x110]
	mov	esi, edx
	lea	rdi, [rdi]
	add	eax, esi
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x6bc], eax
	lea	rsi, [rsi]
	test	cl, 1
	lea	rdi, [rdi]
	jne	.label_1931
	jmp	.label_1964
.label_3731:
	mov	al, 1
	test	al, 1
	jne	.label_3829
	mov	rsp, rsp
	jmp	.label_3833
.label_3829:
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x110], 0
	mov	rsp, rsp
	jge	.label_3836
	movabs	rax, 0x8000000000000000
	movsxd	rcx, dword ptr [rbp - 0x1b0]
	sub	rax, qword ptr [rbp - 0x110]
	mov	rbp, rbp
	cmp	rcx, rax
	jl	.label_1908
	lea	rsi, [rsi]
	jmp	.label_1898
.label_3836:
	movabs	rax, 0x7fffffffffffffff
	sub	rax, qword ptr [rbp - 0x110]
	movsxd	rcx, dword ptr [rbp - 0x1b0]
	lea	rsi, [rsi]
	cmp	rax, rcx
	nop	
	jl	.label_1908
	lea	rsi, [rsi]
	jmp	.label_1898
.label_3833:
	cmp	dword ptr [rbp - 0x1b0], 0
	jge	.label_3861
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x110]
	movsxd	rcx, dword ptr [rbp - 0x1b0]
	lea	rdi, [rdi]
	add	rcx, qword ptr [rbp - 0x110]
	cmp	rax, rcx
	mov	rbp, rbp
	jle	.label_1908
	mov	rbp, rbp
	jmp	.label_1898
.label_3861:
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x110], 0
	mov	rbp, rbp
	jge	.label_1900
	mov	rbp, rbp
	movsxd	rax, dword ptr [rbp - 0x1b0]
	movsxd	rcx, dword ptr [rbp - 0x1b0]
	lea	rdi, [rdi]
	add	rcx, qword ptr [rbp - 0x110]
	lea	rdi, [rdi]
	cmp	rax, rcx
	nop	
	jle	.label_1908
	jmp	.label_1898
.label_1900:
	movsxd	rax, dword ptr [rbp - 0x1b0]
	mov	rbp, rbp
	add	rax, qword ptr [rbp - 0x110]
	cmp	rax, qword ptr [rbp - 0x110]
	jl	.label_1908
.label_1898:
	movsxd	rax, dword ptr [rbp - 0x1b0]
	add	rax, qword ptr [rbp - 0x110]
	mov	rbp, rbp
	cmp	rax, -0x80000000
	mov	rsp, rsp
	jl	.label_1908
	lea	rdi, [rdi]
	mov	eax, 0x7fffffff
	lea	rdi, [rdi]
	mov	ecx, eax
	movsxd	rdx, dword ptr [rbp - 0x1b0]
	add	rdx, qword ptr [rbp - 0x110]
	cmp	rcx, rdx
	jge	.label_1938
.label_1908:
	mov	rsp, rsp
	mov	al, 1
	lea	rsi, [rsi]
	mov	ecx, dword ptr [rbp - 0x1b0]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x110]
	mov	rsp, rsp
	mov	esi, edx
	lea	rdi, [rdi]
	add	ecx, esi
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x6bc], ecx
	test	al, 1
	jne	.label_1931
	lea	rdi, [rdi]
	jmp	.label_1964
.label_1938:
	xor	eax, eax
	mov	rbp, rbp
	mov	cl, al
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x1b0]
	mov	rdx, qword ptr [rbp - 0x110]
	mov	esi, edx
	nop	
	add	eax, esi
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x6bc], eax
	mov	rbp, rbp
	test	cl, 1
	lea	rsi, [rsi]
	jne	.label_1931
	lea	rdi, [rdi]
	jmp	.label_1964
.label_3724:
	lea	rsi, [rsi]
	xor	eax, eax
	mov	cl, al
	mov	rsp, rsp
	test	cl, 1
	jne	.label_2386
	mov	rsp, rsp
	jmp	.label_2410
.label_2386:
	nop	
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_1995
	jmp	.label_1998
.label_1995:
	nop	
	mov	al, 1
	test	al, 1
	jne	.label_2000
	lea	rdi, [rdi]
	jmp	.label_1896
.label_2000:
	cmp	qword ptr [rbp - 0x110], 0
	mov	rbp, rbp
	jge	.label_2003
	mov	rbp, rbp
	movabs	rax, 0x8000000000000000
	lea	rsi, [rsi]
	movsxd	rcx, dword ptr [rbp - 0x1b0]
	nop	
	sub	rax, qword ptr [rbp - 0x110]
	mov	rbp, rbp
	cmp	rcx, rax
	nop	
	jl	.label_2006
	jmp	.label_2019
.label_2003:
	movabs	rax, 0x7fffffffffffffff
	nop	
	sub	rax, qword ptr [rbp - 0x110]
	movsxd	rcx, dword ptr [rbp - 0x1b0]
	cmp	rax, rcx
	lea	rsi, [rsi]
	jl	.label_2006
	mov	rbp, rbp
	jmp	.label_2019
.label_1896:
	movsxd	rax, dword ptr [rbp - 0x1b0]
	cmp	rax, 0
	lea	rdi, [rdi]
	jge	.label_2029
	mov	rax, qword ptr [rbp - 0x110]
	movsxd	rcx, dword ptr [rbp - 0x1b0]
	lea	rsi, [rsi]
	add	rcx, qword ptr [rbp - 0x110]
	cmp	rax, rcx
	mov	rsp, rsp
	jle	.label_2006
	jmp	.label_2019
.label_2029:
	cmp	qword ptr [rbp - 0x110], 0
	mov	rbp, rbp
	jge	.label_2042
	movsxd	rax, dword ptr [rbp - 0x1b0]
	nop	
	movsxd	rcx, dword ptr [rbp - 0x1b0]
	add	rcx, qword ptr [rbp - 0x110]
	cmp	rax, rcx
	jle	.label_2006
	nop	
	jmp	.label_2019
.label_2042:
	mov	rsp, rsp
	movsxd	rax, dword ptr [rbp - 0x1b0]
	add	rax, qword ptr [rbp - 0x110]
	cmp	rax, qword ptr [rbp - 0x110]
	lea	rdi, [rdi]
	jl	.label_2006
.label_2019:
	nop	
	movabs	rax, 0x8000000000000000
	movsxd	rcx, dword ptr [rbp - 0x1b0]
	add	rcx, qword ptr [rbp - 0x110]
	cmp	rcx, rax
	jl	.label_2006
	nop	
	movabs	rax, 0x7fffffffffffffff
	lea	rdi, [rdi]
	movsxd	rcx, dword ptr [rbp - 0x1b0]
	add	rcx, qword ptr [rbp - 0x110]
	lea	rsi, [rsi]
	cmp	rax, rcx
	mov	rbp, rbp
	jge	.label_2066
.label_2006:
	lea	rdi, [rdi]
	mov	al, 1
	nop	
	movsxd	rcx, dword ptr [rbp - 0x1b0]
	add	rcx, qword ptr [rbp - 0x110]
	mov	edx, ecx
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x6bc], edx
	test	al, 1
	mov	rbp, rbp
	jne	.label_1931
	mov	rbp, rbp
	jmp	.label_1964
.label_2066:
	xor	eax, eax
	mov	cl, al
	mov	rbp, rbp
	movsxd	rdx, dword ptr [rbp - 0x1b0]
	add	rdx, qword ptr [rbp - 0x110]
	mov	rsp, rsp
	mov	eax, edx
	mov	dword ptr [rbp - 0x6bc], eax
	test	cl, 1
	lea	rsi, [rsi]
	jne	.label_1931
	mov	rbp, rbp
	jmp	.label_1964
.label_1998:
	mov	rbp, rbp
	mov	al, 1
	test	al, 1
	jne	.label_3222
	jmp	.label_2112
.label_3222:
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x110], 0
	jge	.label_2115
	movabs	rax, 0x8000000000000000
	lea	rsi, [rsi]
	movsxd	rcx, dword ptr [rbp - 0x1b0]
	nop	
	sub	rax, qword ptr [rbp - 0x110]
	mov	rsp, rsp
	cmp	rcx, rax
	lea	rdi, [rdi]
	jl	.label_2121
	jmp	.label_2058
.label_2115:
	movabs	rax, 0x7fffffffffffffff
	lea	rsi, [rsi]
	sub	rax, qword ptr [rbp - 0x110]
	movsxd	rcx, dword ptr [rbp - 0x1b0]
	nop	
	cmp	rax, rcx
	jl	.label_2121
	jmp	.label_2058
.label_2112:
	mov	rbp, rbp
	cmp	dword ptr [rbp - 0x1b0], 0
	jge	.label_3298
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x110]
	nop	
	movsxd	rcx, dword ptr [rbp - 0x1b0]
	add	rcx, qword ptr [rbp - 0x110]
	cmp	rax, rcx
	lea	rsi, [rsi]
	jle	.label_2121
	mov	rsp, rsp
	jmp	.label_2058
.label_3298:
	cmp	qword ptr [rbp - 0x110], 0
	jge	.label_2152
	movsxd	rax, dword ptr [rbp - 0x1b0]
	movsxd	rcx, dword ptr [rbp - 0x1b0]
	add	rcx, qword ptr [rbp - 0x110]
	lea	rsi, [rsi]
	cmp	rax, rcx
	jle	.label_2121
	mov	rbp, rbp
	jmp	.label_2058
.label_2152:
	movsxd	rax, dword ptr [rbp - 0x1b0]
	add	rax, qword ptr [rbp - 0x110]
	lea	rdi, [rdi]
	cmp	rax, qword ptr [rbp - 0x110]
	jl	.label_2121
.label_2058:
	mov	rbp, rbp
	movabs	rax, 0x8000000000000000
	movsxd	rcx, dword ptr [rbp - 0x1b0]
	add	rcx, qword ptr [rbp - 0x110]
	cmp	rcx, rax
	mov	rsp, rsp
	jl	.label_2121
	mov	rbp, rbp
	movabs	rax, 0x7fffffffffffffff
	mov	rsp, rsp
	movsxd	rcx, dword ptr [rbp - 0x1b0]
	nop	
	add	rcx, qword ptr [rbp - 0x110]
	lea	rsi, [rsi]
	cmp	rax, rcx
	jge	.label_2196
.label_2121:
	mov	al, 1
	movsxd	rcx, dword ptr [rbp - 0x1b0]
	add	rcx, qword ptr [rbp - 0x110]
	mov	edx, ecx
	mov	dword ptr [rbp - 0x6bc], edx
	test	al, 1
	jne	.label_1931
	mov	rbp, rbp
	jmp	.label_1964
.label_2196:
	mov	rbp, rbp
	xor	eax, eax
	mov	cl, al
	mov	rsp, rsp
	movsxd	rdx, dword ptr [rbp - 0x1b0]
	lea	rsi, [rsi]
	add	rdx, qword ptr [rbp - 0x110]
	mov	eax, edx
	mov	dword ptr [rbp - 0x6bc], eax
	test	cl, 1
	jne	.label_1931
	lea	rsi, [rsi]
	jmp	.label_1964
.label_2410:
	lea	rsi, [rsi]
	xor	eax, eax
	lea	rdi, [rdi]
	mov	cl, al
	test	cl, 1
	nop	
	jne	.label_3722
	jmp	.label_3751
.label_3722:
	mov	rbp, rbp
	mov	al, 1
	test	al, 1
	jne	.label_2239
	lea	rsi, [rsi]
	jmp	.label_2243
.label_2239:
	cmp	qword ptr [rbp - 0x110], 0
	lea	rsi, [rsi]
	jge	.label_2245
	movabs	rax, 0x8000000000000000
	movsxd	rcx, dword ptr [rbp - 0x1b0]
	sub	rax, qword ptr [rbp - 0x110]
	cmp	rcx, rax
	lea	rdi, [rdi]
	jl	.label_1985
	jmp	.label_2259
.label_2245:
	movabs	rax, 0x7fffffffffffffff
	lea	rdi, [rdi]
	sub	rax, qword ptr [rbp - 0x110]
	nop	
	movsxd	rcx, dword ptr [rbp - 0x1b0]
	cmp	rax, rcx
	jl	.label_1985
	lea	rsi, [rsi]
	jmp	.label_2259
.label_2243:
	movsxd	rax, dword ptr [rbp - 0x1b0]
	cmp	rax, 0
	jge	.label_2274
	mov	rax, qword ptr [rbp - 0x110]
	mov	rsp, rsp
	movsxd	rcx, dword ptr [rbp - 0x1b0]
	lea	rsi, [rsi]
	add	rcx, qword ptr [rbp - 0x110]
	cmp	rax, rcx
	jle	.label_1985
	lea	rdi, [rdi]
	jmp	.label_2259
.label_2274:
	cmp	qword ptr [rbp - 0x110], 0
	jge	.label_2047
	mov	rbp, rbp
	movsxd	rax, dword ptr [rbp - 0x1b0]
	lea	rsi, [rsi]
	movsxd	rcx, dword ptr [rbp - 0x1b0]
	mov	rbp, rbp
	add	rcx, qword ptr [rbp - 0x110]
	cmp	rax, rcx
	jle	.label_1985
	mov	rbp, rbp
	jmp	.label_2259
.label_2047:
	lea	rdi, [rdi]
	movsxd	rax, dword ptr [rbp - 0x1b0]
	add	rax, qword ptr [rbp - 0x110]
	cmp	rax, qword ptr [rbp - 0x110]
	jl	.label_1985
.label_2259:
	mov	rbp, rbp
	movabs	rax, 0x8000000000000000
	lea	rdi, [rdi]
	movsxd	rcx, dword ptr [rbp - 0x1b0]
	add	rcx, qword ptr [rbp - 0x110]
	mov	rbp, rbp
	cmp	rcx, rax
	jl	.label_1985
	nop	
	movabs	rax, 0x7fffffffffffffff
	mov	rbp, rbp
	movsxd	rcx, dword ptr [rbp - 0x1b0]
	mov	rsp, rsp
	add	rcx, qword ptr [rbp - 0x110]
	lea	rdi, [rdi]
	cmp	rax, rcx
	nop	
	jge	.label_2314
.label_1985:
	mov	al, 1
	mov	rsp, rsp
	movsxd	rcx, dword ptr [rbp - 0x1b0]
	add	rcx, qword ptr [rbp - 0x110]
	mov	rsp, rsp
	mov	edx, ecx
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x6bc], edx
	test	al, 1
	mov	rsp, rsp
	jne	.label_1931
	lea	rdi, [rdi]
	jmp	.label_1964
.label_2314:
	xor	eax, eax
	mov	cl, al
	movsxd	rdx, dword ptr [rbp - 0x1b0]
	add	rdx, qword ptr [rbp - 0x110]
	mov	eax, edx
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x6bc], eax
	mov	rsp, rsp
	test	cl, 1
	jne	.label_1931
	lea	rdi, [rdi]
	jmp	.label_1964
.label_3751:
	mov	al, 1
	test	al, 1
	nop	
	jne	.label_2362
	jmp	.label_2367
.label_2362:
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x110], 0
	lea	rsi, [rsi]
	jge	.label_2369
	nop	
	movabs	rax, 0x8000000000000000
	lea	rsi, [rsi]
	movsxd	rcx, dword ptr [rbp - 0x1b0]
	mov	rsp, rsp
	sub	rax, qword ptr [rbp - 0x110]
	cmp	rcx, rax
	jl	.label_2389
	lea	rsi, [rsi]
	jmp	.label_2387
.label_2369:
	movabs	rax, 0x7fffffffffffffff
	sub	rax, qword ptr [rbp - 0x110]
	mov	rsp, rsp
	movsxd	rcx, dword ptr [rbp - 0x1b0]
	cmp	rax, rcx
	nop	
	jl	.label_2389
	lea	rdi, [rdi]
	jmp	.label_2387
.label_2367:
	cmp	dword ptr [rbp - 0x1b0], 0
	mov	rbp, rbp
	jge	.label_2692
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x110]
	movsxd	rcx, dword ptr [rbp - 0x1b0]
	nop	
	add	rcx, qword ptr [rbp - 0x110]
	mov	rbp, rbp
	cmp	rax, rcx
	jle	.label_2389
	jmp	.label_2387
.label_2692:
	cmp	qword ptr [rbp - 0x110], 0
	jge	.label_2768
	lea	rdi, [rdi]
	movsxd	rax, dword ptr [rbp - 0x1b0]
	mov	rsp, rsp
	movsxd	rcx, dword ptr [rbp - 0x1b0]
	add	rcx, qword ptr [rbp - 0x110]
	cmp	rax, rcx
	lea	rsi, [rsi]
	jle	.label_2389
	jmp	.label_2387
.label_2768:
	movsxd	rax, dword ptr [rbp - 0x1b0]
	lea	rdi, [rdi]
	add	rax, qword ptr [rbp - 0x110]
	nop	
	cmp	rax, qword ptr [rbp - 0x110]
	nop	
	jl	.label_2389
.label_2387:
	movabs	rax, 0x8000000000000000
	movsxd	rcx, dword ptr [rbp - 0x1b0]
	mov	rsp, rsp
	add	rcx, qword ptr [rbp - 0x110]
	cmp	rcx, rax
	mov	rbp, rbp
	jl	.label_2389
	lea	rsi, [rsi]
	movabs	rax, 0x7fffffffffffffff
	movsxd	rcx, dword ptr [rbp - 0x1b0]
	add	rcx, qword ptr [rbp - 0x110]
	lea	rdi, [rdi]
	cmp	rax, rcx
	mov	rsp, rsp
	jge	.label_2370
.label_2389:
	mov	al, 1
	nop	
	movsxd	rcx, dword ptr [rbp - 0x1b0]
	add	rcx, qword ptr [rbp - 0x110]
	mov	edx, ecx
	mov	dword ptr [rbp - 0x6bc], edx
	nop	
	test	al, 1
	lea	rsi, [rsi]
	jne	.label_1931
	nop	
	jmp	.label_1964
.label_2370:
	mov	rsp, rsp
	xor	eax, eax
	mov	cl, al
	lea	rdi, [rdi]
	movsxd	rdx, dword ptr [rbp - 0x1b0]
	add	rdx, qword ptr [rbp - 0x110]
	mov	eax, edx
	nop	
	mov	dword ptr [rbp - 0x6bc], eax
	lea	rdi, [rdi]
	test	cl, 1
	jne	.label_1931
.label_1964:
	xor	eax, eax
	mov	cl, al
	mov	rsp, rsp
	test	cl, 1
	mov	rbp, rbp
	jne	.label_2481
	jmp	.label_2490
.label_2481:
	lea	rdi, [rdi]
	xor	eax, eax
	mov	cl, al
	nop	
	test	cl, 1
	lea	rdi, [rdi]
	jne	.label_2492
	jmp	.label_2498
.label_2492:
	mov	al, 1
	lea	rdi, [rdi]
	test	al, 1
	lea	rsi, [rsi]
	jne	.label_3220
	jmp	.label_2506
.label_3220:
	mov	rax, qword ptr [rbp - 0x108]
	mov	cl, al
	movsx	edx, cl
	mov	rsp, rsp
	cmp	edx, 0
	jge	.label_3777
	mov	rsp, rsp
	mov	eax, 0x80000000
	mov	ecx, dword ptr [rbp - 0x1b4]
	mov	dl, cl
	movsx	ecx, dl
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x108]
	lea	rsi, [rsi]
	mov	dl, sil
	movsx	edi, dl
	mov	rbp, rbp
	sub	eax, edi
	cmp	ecx, eax
	lea	rsi, [rsi]
	jl	.label_2473
	lea	rsi, [rsi]
	jmp	.label_2130
.label_3777:
	mov	eax, 0x7fffffff
	mov	rcx, qword ptr [rbp - 0x108]
	mov	dl, cl
	mov	rsp, rsp
	movsx	esi, dl
	sub	eax, esi
	mov	esi, dword ptr [rbp - 0x1b4]
	mov	dl, sil
	nop	
	movsx	esi, dl
	nop	
	cmp	eax, esi
	jl	.label_2473
	jmp	.label_2130
.label_2506:
	nop	
	mov	eax, dword ptr [rbp - 0x1b4]
	mov	cl, al
	lea	rdi, [rdi]
	movsx	eax, cl
	lea	rdi, [rdi]
	cmp	eax, 0
	jge	.label_2537
	mov	rax, qword ptr [rbp - 0x108]
	mov	cl, al
	lea	rdi, [rdi]
	movsx	edx, cl
	mov	esi, dword ptr [rbp - 0x1b4]
	lea	rdi, [rdi]
	mov	cl, sil
	movsx	esi, cl
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x108]
	mov	cl, al
	mov	rbp, rbp
	movsx	edi, cl
	add	esi, edi
	nop	
	cmp	edx, esi
	jle	.label_2473
	jmp	.label_2130
.label_2537:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x108]
	mov	cl, al
	movsx	edx, cl
	lea	rdi, [rdi]
	cmp	edx, 0
	jge	.label_3483
	mov	eax, dword ptr [rbp - 0x1b4]
	lea	rdi, [rdi]
	mov	cl, al
	mov	rbp, rbp
	movsx	eax, cl
	nop	
	mov	edx, dword ptr [rbp - 0x1b4]
	nop	
	mov	cl, dl
	mov	rsp, rsp
	movsx	edx, cl
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x108]
	nop	
	mov	cl, sil
	lea	rsi, [rsi]
	movsx	edi, cl
	add	edx, edi
	cmp	eax, edx
	jle	.label_2473
	nop	
	jmp	.label_2130
.label_3483:
	nop	
	mov	eax, dword ptr [rbp - 0x1b4]
	mov	rbp, rbp
	mov	cl, al
	mov	rbp, rbp
	movsx	eax, cl
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x108]
	mov	rbp, rbp
	mov	cl, dl
	movsx	esi, cl
	mov	rbp, rbp
	add	eax, esi
	mov	rdx, qword ptr [rbp - 0x108]
	mov	cl, dl
	lea	rsi, [rsi]
	movsx	esi, cl
	cmp	eax, esi
	lea	rdi, [rdi]
	jl	.label_2473
.label_2130:
	mov	eax, dword ptr [rbp - 0x1b4]
	mov	cl, al
	lea	rdi, [rdi]
	movsx	eax, cl
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x108]
	lea	rsi, [rsi]
	mov	cl, dl
	nop	
	movsx	esi, cl
	mov	rsp, rsp
	add	eax, esi
	mov	rsp, rsp
	cmp	eax, -0x80
	jl	.label_2473
	mov	rbp, rbp
	mov	eax, 0x7f
	lea	rsi, [rsi]
	mov	ecx, dword ptr [rbp - 0x1b4]
	mov	rbp, rbp
	mov	dl, cl
	nop	
	movsx	ecx, dl
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x108]
	lea	rsi, [rsi]
	mov	dl, sil
	movsx	edi, dl
	mov	rbp, rbp
	add	ecx, edi
	mov	rbp, rbp
	cmp	eax, ecx
	jge	.label_2615
.label_2473:
	lea	rdi, [rdi]
	mov	al, 1
	lea	rdi, [rdi]
	mov	ecx, dword ptr [rbp - 0x1b4]
	mov	rsp, rsp
	mov	dl, cl
	movsx	ecx, dl
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x108]
	mov	rsp, rsp
	mov	dl, sil
	nop	
	movsx	edi, dl
	lea	rdi, [rdi]
	add	ecx, edi
	mov	dl, cl
	mov	rbp, rbp
	movsx	ecx, dl
	mov	dword ptr [rbp - 0x890], ecx
	lea	rsi, [rsi]
	test	al, 1
	mov	rbp, rbp
	jne	.label_1931
	jmp	.label_1924
.label_2615:
	xor	eax, eax
	mov	cl, al
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x1b4]
	nop	
	mov	dl, al
	lea	rdi, [rdi]
	movsx	eax, dl
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x108]
	mov	dl, sil
	nop	
	movsx	edi, dl
	mov	rbp, rbp
	add	eax, edi
	mov	dl, al
	lea	rsi, [rsi]
	movsx	eax, dl
	nop	
	mov	dword ptr [rbp - 0x890], eax
	mov	rbp, rbp
	test	cl, 1
	jne	.label_1931
	jmp	.label_1924
.label_2498:
	mov	al, 1
	mov	rbp, rbp
	test	al, 1
	nop	
	jne	.label_2668
	lea	rdi, [rdi]
	jmp	.label_2670
.label_2668:
	cmp	qword ptr [rbp - 0x108], 0
	lea	rdi, [rdi]
	jge	.label_2671
	mov	rsp, rsp
	movabs	rax, 0x8000000000000000
	movsxd	rcx, dword ptr [rbp - 0x1b4]
	sub	rax, qword ptr [rbp - 0x108]
	cmp	rcx, rax
	jl	.label_2304
	jmp	.label_2695
.label_2671:
	lea	rsi, [rsi]
	movabs	rax, 0x7fffffffffffffff
	sub	rax, qword ptr [rbp - 0x108]
	mov	rbp, rbp
	movsxd	rcx, dword ptr [rbp - 0x1b4]
	mov	rbp, rbp
	cmp	rax, rcx
	jl	.label_2304
	mov	rbp, rbp
	jmp	.label_2695
.label_2670:
	mov	rbp, rbp
	cmp	dword ptr [rbp - 0x1b4], 0
	lea	rdi, [rdi]
	jge	.label_2696
	mov	rax, qword ptr [rbp - 0x108]
	mov	rbp, rbp
	movsxd	rcx, dword ptr [rbp - 0x1b4]
	add	rcx, qword ptr [rbp - 0x108]
	cmp	rax, rcx
	nop	
	jle	.label_2304
	jmp	.label_2695
.label_2696:
	cmp	qword ptr [rbp - 0x108], 0
	jge	.label_2707
	movsxd	rax, dword ptr [rbp - 0x1b4]
	lea	rdi, [rdi]
	movsxd	rcx, dword ptr [rbp - 0x1b4]
	mov	rbp, rbp
	add	rcx, qword ptr [rbp - 0x108]
	nop	
	cmp	rax, rcx
	jle	.label_2304
	mov	rsp, rsp
	jmp	.label_2695
.label_2707:
	lea	rsi, [rsi]
	movsxd	rax, dword ptr [rbp - 0x1b4]
	lea	rsi, [rsi]
	add	rax, qword ptr [rbp - 0x108]
	cmp	rax, qword ptr [rbp - 0x108]
	mov	rsp, rsp
	jl	.label_2304
.label_2695:
	movsxd	rax, dword ptr [rbp - 0x1b4]
	add	rax, qword ptr [rbp - 0x108]
	lea	rdi, [rdi]
	cmp	rax, -0x80
	nop	
	jl	.label_2304
	lea	rdi, [rdi]
	mov	eax, 0x7f
	mov	ecx, eax
	movsxd	rdx, dword ptr [rbp - 0x1b4]
	add	rdx, qword ptr [rbp - 0x108]
	lea	rsi, [rsi]
	cmp	rcx, rdx
	jge	.label_2738
.label_2304:
	mov	al, 1
	lea	rdi, [rdi]
	mov	ecx, dword ptr [rbp - 0x1b4]
	nop	
	mov	rdx, qword ptr [rbp - 0x108]
	mov	esi, edx
	add	ecx, esi
	mov	dil, cl
	lea	rdi, [rdi]
	movsx	ecx, dil
	mov	dword ptr [rbp - 0x890], ecx
	nop	
	test	al, 1
	jne	.label_1931
	mov	rsp, rsp
	jmp	.label_1924
.label_2738:
	lea	rdi, [rdi]
	xor	eax, eax
	lea	rsi, [rsi]
	mov	cl, al
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x1b4]
	mov	rdx, qword ptr [rbp - 0x108]
	nop	
	mov	esi, edx
	lea	rsi, [rsi]
	add	eax, esi
	mov	rsp, rsp
	mov	dil, al
	movsx	eax, dil
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x890], eax
	test	cl, 1
	lea	rsi, [rsi]
	jne	.label_1931
	jmp	.label_1924
.label_2490:
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_2777
	jmp	.label_2781
.label_2777:
	xor	eax, eax
	nop	
	mov	cl, al
	test	cl, 1
	nop	
	jne	.label_2783
	mov	rbp, rbp
	jmp	.label_2785
.label_2783:
	mov	al, 1
	test	al, 1
	jne	.label_2786
	nop	
	jmp	.label_2788
.label_2786:
	nop	
	mov	rax, qword ptr [rbp - 0x108]
	mov	cx, ax
	lea	rsi, [rsi]
	movsx	edx, cx
	cmp	edx, 0
	mov	rbp, rbp
	jge	.label_2996
	mov	eax, 0x80000000
	mov	ecx, dword ptr [rbp - 0x1b4]
	mov	rsp, rsp
	mov	dx, cx
	nop	
	movsx	ecx, dx
	nop	
	mov	rsi, qword ptr [rbp - 0x108]
	lea	rsi, [rsi]
	mov	dx, si
	movsx	edi, dx
	nop	
	sub	eax, edi
	nop	
	cmp	ecx, eax
	jl	.label_2519
	mov	rsp, rsp
	jmp	.label_2220
.label_2996:
	mov	eax, 0x7fffffff
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x108]
	mov	rsp, rsp
	mov	dx, cx
	lea	rdi, [rdi]
	movsx	esi, dx
	sub	eax, esi
	mov	esi, dword ptr [rbp - 0x1b4]
	mov	dx, si
	movsx	esi, dx
	lea	rdi, [rdi]
	cmp	eax, esi
	jl	.label_2519
	nop	
	jmp	.label_2220
.label_2788:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x1b4]
	mov	cx, ax
	movsx	eax, cx
	cmp	eax, 0
	jge	.label_3193
	mov	rax, qword ptr [rbp - 0x108]
	lea	rdi, [rdi]
	mov	cx, ax
	lea	rsi, [rsi]
	movsx	edx, cx
	mov	rsp, rsp
	mov	esi, dword ptr [rbp - 0x1b4]
	mov	cx, si
	movsx	esi, cx
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x108]
	mov	rbp, rbp
	mov	cx, ax
	movsx	edi, cx
	add	esi, edi
	cmp	edx, esi
	jle	.label_2519
	lea	rsi, [rsi]
	jmp	.label_2220
.label_3193:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x108]
	mov	cx, ax
	movsx	edx, cx
	nop	
	cmp	edx, 0
	lea	rsi, [rsi]
	jge	.label_3328
	mov	eax, dword ptr [rbp - 0x1b4]
	lea	rdi, [rdi]
	mov	cx, ax
	mov	rsp, rsp
	movsx	eax, cx
	lea	rdi, [rdi]
	mov	edx, dword ptr [rbp - 0x1b4]
	mov	cx, dx
	lea	rdi, [rdi]
	movsx	edx, cx
	nop	
	mov	rsi, qword ptr [rbp - 0x108]
	mov	rsp, rsp
	mov	cx, si
	movsx	edi, cx
	add	edx, edi
	cmp	eax, edx
	nop	
	jle	.label_2519
	mov	rsp, rsp
	jmp	.label_2220
.label_3328:
	mov	eax, dword ptr [rbp - 0x1b4]
	mov	cx, ax
	lea	rsi, [rsi]
	movsx	eax, cx
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x108]
	lea	rdi, [rdi]
	mov	cx, dx
	movsx	esi, cx
	lea	rsi, [rsi]
	add	eax, esi
	mov	rdx, qword ptr [rbp - 0x108]
	mov	cx, dx
	lea	rsi, [rsi]
	movsx	esi, cx
	lea	rdi, [rdi]
	cmp	eax, esi
	mov	rsp, rsp
	jl	.label_2519
.label_2220:
	mov	eax, dword ptr [rbp - 0x1b4]
	mov	cx, ax
	movsx	eax, cx
	mov	rdx, qword ptr [rbp - 0x108]
	lea	rdi, [rdi]
	mov	cx, dx
	movsx	esi, cx
	mov	rbp, rbp
	add	eax, esi
	cmp	eax, 0xffff8000
	mov	rbp, rbp
	jl	.label_2519
	lea	rdi, [rdi]
	mov	eax, 0x7fff
	lea	rsi, [rsi]
	mov	ecx, dword ptr [rbp - 0x1b4]
	mov	rbp, rbp
	mov	dx, cx
	movsx	ecx, dx
	mov	rsi, qword ptr [rbp - 0x108]
	nop	
	mov	dx, si
	mov	rbp, rbp
	movsx	edi, dx
	mov	rsp, rsp
	add	ecx, edi
	mov	rsp, rsp
	cmp	eax, ecx
	jge	.label_2899
.label_2519:
	mov	al, 1
	mov	ecx, dword ptr [rbp - 0x1b4]
	mov	dx, cx
	lea	rdi, [rdi]
	movsx	ecx, dx
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x108]
	lea	rsi, [rsi]
	mov	dx, si
	lea	rsi, [rsi]
	movsx	edi, dx
	mov	rsp, rsp
	add	ecx, edi
	lea	rdi, [rdi]
	mov	dx, cx
	mov	rbp, rbp
	movsx	ecx, dx
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x890], ecx
	mov	rbp, rbp
	test	al, 1
	jne	.label_1931
	jmp	.label_1924
.label_2899:
	nop	
	xor	eax, eax
	mov	cl, al
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x1b4]
	lea	rsi, [rsi]
	mov	dx, ax
	movsx	eax, dx
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x108]
	mov	rbp, rbp
	mov	dx, si
	movsx	edi, dx
	lea	rsi, [rsi]
	add	eax, edi
	mov	rsp, rsp
	mov	dx, ax
	lea	rsi, [rsi]
	movsx	eax, dx
	nop	
	mov	dword ptr [rbp - 0x890], eax
	test	cl, 1
	nop	
	jne	.label_1931
	lea	rsi, [rsi]
	jmp	.label_1924
.label_2785:
	lea	rdi, [rdi]
	mov	al, 1
	mov	rsp, rsp
	test	al, 1
	mov	rsp, rsp
	jne	.label_1937
	mov	rbp, rbp
	jmp	.label_2958
.label_1937:
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x108], 0
	mov	rbp, rbp
	jge	.label_2961
	lea	rsi, [rsi]
	movabs	rax, 0x8000000000000000
	movsxd	rcx, dword ptr [rbp - 0x1b4]
	lea	rsi, [rsi]
	sub	rax, qword ptr [rbp - 0x108]
	cmp	rcx, rax
	lea	rdi, [rdi]
	jl	.label_2293
	jmp	.label_2348
.label_2961:
	movabs	rax, 0x7fffffffffffffff
	sub	rax, qword ptr [rbp - 0x108]
	movsxd	rcx, dword ptr [rbp - 0x1b4]
	lea	rdi, [rdi]
	cmp	rax, rcx
	nop	
	jl	.label_2293
	mov	rbp, rbp
	jmp	.label_2348
.label_2958:
	nop	
	cmp	dword ptr [rbp - 0x1b4], 0
	lea	rdi, [rdi]
	jge	.label_2148
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x108]
	movsxd	rcx, dword ptr [rbp - 0x1b4]
	lea	rsi, [rsi]
	add	rcx, qword ptr [rbp - 0x108]
	nop	
	cmp	rax, rcx
	mov	rbp, rbp
	jle	.label_2293
	lea	rsi, [rsi]
	jmp	.label_2348
.label_2148:
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x108], 0
	lea	rdi, [rdi]
	jge	.label_3016
	movsxd	rax, dword ptr [rbp - 0x1b4]
	mov	rsp, rsp
	movsxd	rcx, dword ptr [rbp - 0x1b4]
	nop	
	add	rcx, qword ptr [rbp - 0x108]
	cmp	rax, rcx
	jle	.label_2293
	jmp	.label_2348
.label_3016:
	mov	rsp, rsp
	movsxd	rax, dword ptr [rbp - 0x1b4]
	add	rax, qword ptr [rbp - 0x108]
	mov	rbp, rbp
	cmp	rax, qword ptr [rbp - 0x108]
	nop	
	jl	.label_2293
.label_2348:
	movsxd	rax, dword ptr [rbp - 0x1b4]
	add	rax, qword ptr [rbp - 0x108]
	nop	
	cmp	rax, -0x8000
	jl	.label_2293
	lea	rdi, [rdi]
	mov	eax, 0x7fff
	mov	rbp, rbp
	mov	ecx, eax
	mov	rsp, rsp
	movsxd	rdx, dword ptr [rbp - 0x1b4]
	mov	rsp, rsp
	add	rdx, qword ptr [rbp - 0x108]
	mov	rbp, rbp
	cmp	rcx, rdx
	jge	.label_3039
.label_2293:
	mov	al, 1
	mov	ecx, dword ptr [rbp - 0x1b4]
	nop	
	mov	rdx, qword ptr [rbp - 0x108]
	mov	esi, edx
	lea	rsi, [rsi]
	add	ecx, esi
	lea	rdi, [rdi]
	mov	di, cx
	lea	rdi, [rdi]
	movsx	ecx, di
	mov	dword ptr [rbp - 0x890], ecx
	test	al, 1
	mov	rsp, rsp
	jne	.label_1931
	mov	rbp, rbp
	jmp	.label_1924
.label_3039:
	lea	rsi, [rsi]
	xor	eax, eax
	mov	cl, al
	mov	eax, dword ptr [rbp - 0x1b4]
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x108]
	mov	esi, edx
	add	eax, esi
	mov	di, ax
	movsx	eax, di
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x890], eax
	lea	rdi, [rdi]
	test	cl, 1
	jne	.label_1931
	lea	rsi, [rsi]
	jmp	.label_1924
.label_2781:
	nop	
	mov	al, 1
	test	al, 1
	lea	rsi, [rsi]
	jne	.label_3070
	mov	rbp, rbp
	jmp	.label_3074
.label_3070:
	xor	eax, eax
	mov	cl, al
	mov	rbp, rbp
	test	cl, 1
	mov	rsp, rsp
	jne	.label_3077
	lea	rdi, [rdi]
	jmp	.label_2407
.label_3077:
	mov	al, 1
	lea	rsi, [rsi]
	test	al, 1
	jne	.label_3087
	jmp	.label_3091
.label_3087:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x108]
	mov	ecx, eax
	cmp	ecx, 0
	mov	rsp, rsp
	jge	.label_3593
	mov	eax, 0x80000000
	lea	rdi, [rdi]
	mov	ecx, dword ptr [rbp - 0x1b4]
	nop	
	mov	rdx, qword ptr [rbp - 0x108]
	mov	esi, edx
	nop	
	sub	eax, esi
	mov	rbp, rbp
	cmp	ecx, eax
	jl	.label_2904
	lea	rsi, [rsi]
	jmp	.label_2421
.label_3593:
	mov	rbp, rbp
	mov	eax, 0x7fffffff
	mov	rcx, qword ptr [rbp - 0x108]
	lea	rsi, [rsi]
	mov	edx, ecx
	lea	rsi, [rsi]
	sub	eax, edx
	mov	rsp, rsp
	cmp	eax, dword ptr [rbp - 0x1b4]
	jl	.label_2904
	lea	rsi, [rsi]
	jmp	.label_2421
.label_3091:
	mov	rsp, rsp
	cmp	dword ptr [rbp - 0x1b4], 0
	nop	
	jge	.label_3120
	nop	
	mov	rax, qword ptr [rbp - 0x108]
	mov	rsp, rsp
	mov	ecx, eax
	mov	edx, dword ptr [rbp - 0x1b4]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x108]
	mov	rsp, rsp
	mov	esi, eax
	add	edx, esi
	mov	rsp, rsp
	cmp	ecx, edx
	mov	rsp, rsp
	jle	.label_2904
	lea	rsi, [rsi]
	jmp	.label_2421
.label_3120:
	nop	
	mov	rax, qword ptr [rbp - 0x108]
	mov	ecx, eax
	cmp	ecx, 0
	lea	rsi, [rsi]
	jge	.label_3138
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x1b4]
	mov	ecx, dword ptr [rbp - 0x1b4]
	mov	rdx, qword ptr [rbp - 0x108]
	mov	esi, edx
	add	ecx, esi
	lea	rsi, [rsi]
	cmp	eax, ecx
	jle	.label_2904
	jmp	.label_2421
.label_3138:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x1b4]
	nop	
	mov	rcx, qword ptr [rbp - 0x108]
	mov	rsp, rsp
	mov	edx, ecx
	mov	rbp, rbp
	add	eax, edx
	mov	rcx, qword ptr [rbp - 0x108]
	mov	edx, ecx
	cmp	eax, edx
	lea	rsi, [rsi]
	jl	.label_2904
.label_2421:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x1b4]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x108]
	lea	rsi, [rsi]
	mov	edx, ecx
	lea	rdi, [rdi]
	add	eax, edx
	mov	rsp, rsp
	cmp	eax, 0x80000000
	jl	.label_2904
	mov	eax, 0x7fffffff
	mov	rbp, rbp
	mov	ecx, dword ptr [rbp - 0x1b4]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x108]
	lea	rdi, [rdi]
	mov	esi, edx
	add	ecx, esi
	mov	rsp, rsp
	cmp	eax, ecx
	mov	rsp, rsp
	jge	.label_2137
.label_2904:
	mov	al, 1
	lea	rsi, [rsi]
	mov	ecx, dword ptr [rbp - 0x1b4]
	mov	rdx, qword ptr [rbp - 0x108]
	mov	esi, edx
	add	ecx, esi
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x890], ecx
	test	al, 1
	jne	.label_1931
	jmp	.label_1924
.label_2137:
	nop	
	xor	eax, eax
	nop	
	mov	cl, al
	mov	eax, dword ptr [rbp - 0x1b4]
	mov	rdx, qword ptr [rbp - 0x108]
	nop	
	mov	esi, edx
	lea	rsi, [rsi]
	add	eax, esi
	mov	dword ptr [rbp - 0x890], eax
	test	cl, 1
	jne	.label_1931
	jmp	.label_1924
.label_2407:
	lea	rsi, [rsi]
	mov	al, 1
	test	al, 1
	jne	.label_3491
	jmp	.label_3208
.label_3491:
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0x108], 0
	jge	.label_2901
	movabs	rax, 0x8000000000000000
	movsxd	rcx, dword ptr [rbp - 0x1b4]
	sub	rax, qword ptr [rbp - 0x108]
	mov	rbp, rbp
	cmp	rcx, rax
	jl	.label_2174
	lea	rdi, [rdi]
	jmp	.label_3231
.label_2901:
	movabs	rax, 0x7fffffffffffffff
	sub	rax, qword ptr [rbp - 0x108]
	mov	rsp, rsp
	movsxd	rcx, dword ptr [rbp - 0x1b4]
	cmp	rax, rcx
	lea	rdi, [rdi]
	jl	.label_2174
	lea	rdi, [rdi]
	jmp	.label_3231
.label_3208:
	cmp	dword ptr [rbp - 0x1b4], 0
	lea	rsi, [rsi]
	jge	.label_3657
	mov	rax, qword ptr [rbp - 0x108]
	movsxd	rcx, dword ptr [rbp - 0x1b4]
	lea	rsi, [rsi]
	add	rcx, qword ptr [rbp - 0x108]
	lea	rsi, [rsi]
	cmp	rax, rcx
	lea	rsi, [rsi]
	jle	.label_2174
	jmp	.label_3231
.label_3657:
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x108], 0
	jge	.label_3255
	nop	
	movsxd	rax, dword ptr [rbp - 0x1b4]
	nop	
	movsxd	rcx, dword ptr [rbp - 0x1b4]
	add	rcx, qword ptr [rbp - 0x108]
	cmp	rax, rcx
	nop	
	jle	.label_2174
	mov	rsp, rsp
	jmp	.label_3231
.label_3255:
	nop	
	movsxd	rax, dword ptr [rbp - 0x1b4]
	nop	
	add	rax, qword ptr [rbp - 0x108]
	mov	rbp, rbp
	cmp	rax, qword ptr [rbp - 0x108]
	jl	.label_2174
.label_3231:
	lea	rsi, [rsi]
	movsxd	rax, dword ptr [rbp - 0x1b4]
	add	rax, qword ptr [rbp - 0x108]
	nop	
	cmp	rax, -0x80000000
	jl	.label_2174
	mov	eax, 0x7fffffff
	mov	ecx, eax
	mov	rbp, rbp
	movsxd	rdx, dword ptr [rbp - 0x1b4]
	add	rdx, qword ptr [rbp - 0x108]
	cmp	rcx, rdx
	mov	rsp, rsp
	jge	.label_3277
.label_2174:
	mov	al, 1
	mov	ecx, dword ptr [rbp - 0x1b4]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x108]
	nop	
	mov	esi, edx
	add	ecx, esi
	mov	dword ptr [rbp - 0x890], ecx
	test	al, 1
	jne	.label_1931
	lea	rsi, [rsi]
	jmp	.label_1924
.label_3277:
	lea	rdi, [rdi]
	xor	eax, eax
	mov	rbp, rbp
	mov	cl, al
	nop	
	mov	eax, dword ptr [rbp - 0x1b4]
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x108]
	mov	esi, edx
	lea	rsi, [rsi]
	add	eax, esi
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x890], eax
	lea	rdi, [rdi]
	test	cl, 1
	jne	.label_1931
	jmp	.label_1924
.label_3074:
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	mov	rbp, rbp
	jne	.label_3309
	lea	rdi, [rdi]
	jmp	.label_2147
.label_3309:
	mov	rsp, rsp
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_3316
	jmp	.label_2198
.label_3316:
	mov	al, 1
	lea	rdi, [rdi]
	test	al, 1
	jne	.label_3321
	jmp	.label_3322
.label_3321:
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x108], 0
	jge	.label_3324
	lea	rsi, [rsi]
	movabs	rax, 0x8000000000000000
	nop	
	movsxd	rcx, dword ptr [rbp - 0x1b4]
	sub	rax, qword ptr [rbp - 0x108]
	mov	rbp, rbp
	cmp	rcx, rax
	jl	.label_2657
	nop	
	jmp	.label_2404
.label_3324:
	lea	rdi, [rdi]
	movabs	rax, 0x7fffffffffffffff
	mov	rsp, rsp
	sub	rax, qword ptr [rbp - 0x108]
	movsxd	rcx, dword ptr [rbp - 0x1b4]
	cmp	rax, rcx
	lea	rdi, [rdi]
	jl	.label_2657
	lea	rsi, [rsi]
	jmp	.label_2404
.label_3322:
	movsxd	rax, dword ptr [rbp - 0x1b4]
	cmp	rax, 0
	jge	.label_2412
	mov	rax, qword ptr [rbp - 0x108]
	movsxd	rcx, dword ptr [rbp - 0x1b4]
	mov	rbp, rbp
	add	rcx, qword ptr [rbp - 0x108]
	cmp	rax, rcx
	jle	.label_2657
	lea	rdi, [rdi]
	jmp	.label_2404
.label_2412:
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x108], 0
	mov	rsp, rsp
	jge	.label_2325
	movsxd	rax, dword ptr [rbp - 0x1b4]
	mov	rbp, rbp
	movsxd	rcx, dword ptr [rbp - 0x1b4]
	add	rcx, qword ptr [rbp - 0x108]
	cmp	rax, rcx
	mov	rsp, rsp
	jle	.label_2657
	jmp	.label_2404
.label_2325:
	mov	rbp, rbp
	movsxd	rax, dword ptr [rbp - 0x1b4]
	add	rax, qword ptr [rbp - 0x108]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rbp - 0x108]
	mov	rbp, rbp
	jl	.label_2657
.label_2404:
	movabs	rax, 0x8000000000000000
	movsxd	rcx, dword ptr [rbp - 0x1b4]
	lea	rdi, [rdi]
	add	rcx, qword ptr [rbp - 0x108]
	cmp	rcx, rax
	mov	rbp, rbp
	jl	.label_2657
	movabs	rax, 0x7fffffffffffffff
	mov	rbp, rbp
	movsxd	rcx, dword ptr [rbp - 0x1b4]
	lea	rdi, [rdi]
	add	rcx, qword ptr [rbp - 0x108]
	lea	rdi, [rdi]
	cmp	rax, rcx
	jge	.label_3150
.label_2657:
	mov	rsp, rsp
	mov	al, 1
	mov	rsp, rsp
	movsxd	rcx, dword ptr [rbp - 0x1b4]
	add	rcx, qword ptr [rbp - 0x108]
	mov	edx, ecx
	mov	dword ptr [rbp - 0x890], edx
	lea	rsi, [rsi]
	test	al, 1
	nop	
	jne	.label_1931
	jmp	.label_1924
.label_3150:
	xor	eax, eax
	mov	cl, al
	nop	
	movsxd	rdx, dword ptr [rbp - 0x1b4]
	lea	rdi, [rdi]
	add	rdx, qword ptr [rbp - 0x108]
	lea	rsi, [rsi]
	mov	eax, edx
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x890], eax
	test	cl, 1
	nop	
	jne	.label_1931
	mov	rsp, rsp
	jmp	.label_1924
.label_2198:
	nop	
	mov	al, 1
	lea	rsi, [rsi]
	test	al, 1
	mov	rsp, rsp
	jne	.label_3427
	jmp	.label_3432
.label_3427:
	nop	
	cmp	qword ptr [rbp - 0x108], 0
	jge	.label_3433
	movabs	rax, 0x8000000000000000
	mov	rbp, rbp
	movsxd	rcx, dword ptr [rbp - 0x1b4]
	sub	rax, qword ptr [rbp - 0x108]
	cmp	rcx, rax
	jl	.label_3036
	jmp	.label_2742
.label_3433:
	movabs	rax, 0x7fffffffffffffff
	sub	rax, qword ptr [rbp - 0x108]
	movsxd	rcx, dword ptr [rbp - 0x1b4]
	mov	rsp, rsp
	cmp	rax, rcx
	jl	.label_3036
	jmp	.label_2742
.label_3432:
	mov	rbp, rbp
	cmp	dword ptr [rbp - 0x1b4], 0
	lea	rdi, [rdi]
	jge	.label_3459
	mov	rax, qword ptr [rbp - 0x108]
	movsxd	rcx, dword ptr [rbp - 0x1b4]
	add	rcx, qword ptr [rbp - 0x108]
	cmp	rax, rcx
	mov	rbp, rbp
	jle	.label_3036
	jmp	.label_2742
.label_3459:
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x108], 0
	jge	.label_3477
	mov	rbp, rbp
	movsxd	rax, dword ptr [rbp - 0x1b4]
	mov	rbp, rbp
	movsxd	rcx, dword ptr [rbp - 0x1b4]
	add	rcx, qword ptr [rbp - 0x108]
	mov	rbp, rbp
	cmp	rax, rcx
	jle	.label_3036
	nop	
	jmp	.label_2742
.label_3477:
	nop	
	movsxd	rax, dword ptr [rbp - 0x1b4]
	add	rax, qword ptr [rbp - 0x108]
	cmp	rax, qword ptr [rbp - 0x108]
	mov	rbp, rbp
	jl	.label_3036
.label_2742:
	lea	rsi, [rsi]
	movabs	rax, 0x8000000000000000
	mov	rsp, rsp
	movsxd	rcx, dword ptr [rbp - 0x1b4]
	add	rcx, qword ptr [rbp - 0x108]
	lea	rdi, [rdi]
	cmp	rcx, rax
	jl	.label_3036
	nop	
	movabs	rax, 0x7fffffffffffffff
	movsxd	rcx, dword ptr [rbp - 0x1b4]
	add	rcx, qword ptr [rbp - 0x108]
	cmp	rax, rcx
	jge	.label_3363
.label_3036:
	mov	al, 1
	nop	
	movsxd	rcx, dword ptr [rbp - 0x1b4]
	add	rcx, qword ptr [rbp - 0x108]
	nop	
	mov	edx, ecx
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x890], edx
	test	al, 1
	jne	.label_1931
	jmp	.label_1924
.label_3363:
	lea	rdi, [rdi]
	xor	eax, eax
	mov	cl, al
	lea	rdi, [rdi]
	movsxd	rdx, dword ptr [rbp - 0x1b4]
	lea	rdi, [rdi]
	add	rdx, qword ptr [rbp - 0x108]
	mov	eax, edx
	mov	dword ptr [rbp - 0x890], eax
	lea	rdi, [rdi]
	test	cl, 1
	mov	rbp, rbp
	jne	.label_1931
	jmp	.label_1924
.label_2147:
	xor	eax, eax
	lea	rsi, [rsi]
	mov	cl, al
	test	cl, 1
	jne	.label_3526
	lea	rsi, [rsi]
	jmp	.label_3531
.label_3526:
	lea	rdi, [rdi]
	mov	al, 1
	test	al, 1
	jne	.label_3532
	jmp	.label_3536
.label_3532:
	nop	
	cmp	qword ptr [rbp - 0x108], 0
	nop	
	jge	.label_3594
	movabs	rax, 0x8000000000000000
	mov	rbp, rbp
	movsxd	rcx, dword ptr [rbp - 0x1b4]
	lea	rsi, [rsi]
	sub	rax, qword ptr [rbp - 0x108]
	nop	
	cmp	rcx, rax
	jl	.label_3542
	jmp	.label_3554
.label_3594:
	lea	rdi, [rdi]
	movabs	rax, 0x7fffffffffffffff
	sub	rax, qword ptr [rbp - 0x108]
	nop	
	movsxd	rcx, dword ptr [rbp - 0x1b4]
	cmp	rax, rcx
	lea	rdi, [rdi]
	jl	.label_3542
	jmp	.label_3554
.label_3536:
	lea	rdi, [rdi]
	movsxd	rax, dword ptr [rbp - 0x1b4]
	lea	rsi, [rsi]
	cmp	rax, 0
	jge	.label_3564
	mov	rax, qword ptr [rbp - 0x108]
	mov	rbp, rbp
	movsxd	rcx, dword ptr [rbp - 0x1b4]
	add	rcx, qword ptr [rbp - 0x108]
	cmp	rax, rcx
	jle	.label_3542
	mov	rbp, rbp
	jmp	.label_3554
.label_3564:
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x108], 0
	lea	rsi, [rsi]
	jge	.label_3577
	lea	rsi, [rsi]
	movsxd	rax, dword ptr [rbp - 0x1b4]
	nop	
	movsxd	rcx, dword ptr [rbp - 0x1b4]
	add	rcx, qword ptr [rbp - 0x108]
	cmp	rax, rcx
	lea	rsi, [rsi]
	jle	.label_3542
	jmp	.label_3554
.label_3577:
	movsxd	rax, dword ptr [rbp - 0x1b4]
	add	rax, qword ptr [rbp - 0x108]
	cmp	rax, qword ptr [rbp - 0x108]
	nop	
	jl	.label_3542
.label_3554:
	movabs	rax, 0x8000000000000000
	movsxd	rcx, dword ptr [rbp - 0x1b4]
	add	rcx, qword ptr [rbp - 0x108]
	cmp	rcx, rax
	lea	rsi, [rsi]
	jl	.label_3542
	movabs	rax, 0x7fffffffffffffff
	lea	rsi, [rsi]
	movsxd	rcx, dword ptr [rbp - 0x1b4]
	nop	
	add	rcx, qword ptr [rbp - 0x108]
	lea	rsi, [rsi]
	cmp	rax, rcx
	mov	rbp, rbp
	jge	.label_3597
.label_3542:
	mov	al, 1
	lea	rsi, [rsi]
	movsxd	rcx, dword ptr [rbp - 0x1b4]
	add	rcx, qword ptr [rbp - 0x108]
	mov	edx, ecx
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x890], edx
	lea	rsi, [rsi]
	test	al, 1
	mov	rbp, rbp
	jne	.label_1931
	jmp	.label_1924
.label_3597:
	nop	
	xor	eax, eax
	mov	cl, al
	lea	rsi, [rsi]
	movsxd	rdx, dword ptr [rbp - 0x1b4]
	add	rdx, qword ptr [rbp - 0x108]
	lea	rdi, [rdi]
	mov	eax, edx
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x890], eax
	lea	rsi, [rsi]
	test	cl, 1
	jne	.label_1931
	lea	rdi, [rdi]
	jmp	.label_1924
.label_3531:
	nop	
	mov	al, 1
	test	al, 1
	lea	rdi, [rdi]
	jne	.label_2255
	lea	rsi, [rsi]
	jmp	.label_2797
.label_2255:
	nop	
	cmp	qword ptr [rbp - 0x108], 0
	nop	
	jge	.label_3664
	movabs	rax, 0x8000000000000000
	mov	rsp, rsp
	movsxd	rcx, dword ptr [rbp - 0x1b4]
	lea	rdi, [rdi]
	sub	rax, qword ptr [rbp - 0x108]
	mov	rsp, rsp
	cmp	rcx, rax
	mov	rsp, rsp
	jl	.label_2568
	mov	rbp, rbp
	jmp	.label_3654
.label_3664:
	lea	rsi, [rsi]
	movabs	rax, 0x7fffffffffffffff
	lea	rsi, [rsi]
	sub	rax, qword ptr [rbp - 0x108]
	movsxd	rcx, dword ptr [rbp - 0x1b4]
	cmp	rax, rcx
	jl	.label_2568
	jmp	.label_3654
.label_2797:
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x1b4], 0
	mov	rbp, rbp
	jge	.label_3668
	mov	rax, qword ptr [rbp - 0x108]
	movsxd	rcx, dword ptr [rbp - 0x1b4]
	mov	rsp, rsp
	add	rcx, qword ptr [rbp - 0x108]
	mov	rsp, rsp
	cmp	rax, rcx
	jle	.label_2568
	jmp	.label_3654
.label_3668:
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x108], 0
	jge	.label_2567
	nop	
	movsxd	rax, dword ptr [rbp - 0x1b4]
	movsxd	rcx, dword ptr [rbp - 0x1b4]
	add	rcx, qword ptr [rbp - 0x108]
	nop	
	cmp	rax, rcx
	mov	rsp, rsp
	jle	.label_2568
	lea	rdi, [rdi]
	jmp	.label_3654
.label_2567:
	movsxd	rax, dword ptr [rbp - 0x1b4]
	add	rax, qword ptr [rbp - 0x108]
	cmp	rax, qword ptr [rbp - 0x108]
	jl	.label_2568
.label_3654:
	mov	rbp, rbp
	movabs	rax, 0x8000000000000000
	lea	rsi, [rsi]
	movsxd	rcx, dword ptr [rbp - 0x1b4]
	lea	rsi, [rsi]
	add	rcx, qword ptr [rbp - 0x108]
	lea	rsi, [rsi]
	cmp	rcx, rax
	jl	.label_2568
	movabs	rax, 0x7fffffffffffffff
	movsxd	rcx, dword ptr [rbp - 0x1b4]
	lea	rdi, [rdi]
	add	rcx, qword ptr [rbp - 0x108]
	mov	rbp, rbp
	cmp	rax, rcx
	jge	.label_3698
.label_2568:
	lea	rsi, [rsi]
	mov	al, 1
	mov	rsp, rsp
	movsxd	rcx, dword ptr [rbp - 0x1b4]
	mov	rbp, rbp
	add	rcx, qword ptr [rbp - 0x108]
	mov	rsp, rsp
	mov	edx, ecx
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x890], edx
	test	al, 1
	jne	.label_1931
	jmp	.label_1924
.label_3698:
	xor	eax, eax
	lea	rdi, [rdi]
	mov	cl, al
	movsxd	rdx, dword ptr [rbp - 0x1b4]
	nop	
	add	rdx, qword ptr [rbp - 0x108]
	mov	eax, edx
	mov	dword ptr [rbp - 0x890], eax
	test	cl, 1
	jne	.label_1931
	jmp	.label_1924
.label_1931:
	test	byte ptr [rbp - 0xa7], 1
	je	.label_3729
	movabs	rdi, OFFSET FLAT:.str.55_0
	call	gettext
	mov	rbp, rbp
	movabs	rsi, OFFSET FLAT:.str.56_0
	mov	edx, 0x877
	mov	rbp, rbp
	mov	rdi, rax
	nop	
	mov	al, 0
	nop	
	call	dbg_printf
.label_3729:
	jmp	.label_1907
.label_1924:
	mov	rsp, rsp
	lea	rsi, [rbp - 0x1c0]
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0xa68]
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x1ac], eax
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x6bc]
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x1b0], eax
	nop	
	mov	eax, dword ptr [rbp - 0x890]
	nop	
	mov	dword ptr [rbp - 0x1b4], eax
	mov	eax, dword ptr [rbp - 0x860]
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x1b8], eax
	nop	
	mov	eax, dword ptr [rbp - 0x864]
	mov	dword ptr [rbp - 0x1bc], eax
	mov	eax, dword ptr [rbp - 0x868]
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x1c0], eax
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x848]
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x1a0], eax
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x228]
	call	mktime_z
	mov	qword ptr [rbp - 0x488], rax
	cmp	qword ptr [rbp - 0x488], -1
	mov	rbp, rbp
	jne	.label_3768
	test	byte ptr [rbp - 0xa7], 1
	mov	rbp, rbp
	je	.label_3775
	movabs	rdi, OFFSET FLAT:.str.57_0
	call	gettext
	mov	rbp, rbp
	lea	rdi, [rbp - 0x1c0]
	lea	rsi, [rbp - 0x180]
	lea	rdi, [rdi]
	mov	ecx, 0x64
	lea	rdx, [rbp - 0xd20]
	mov	qword ptr [rbp - 0xb10], rax
	call	debug_strfdatetime
	mov	rdi, qword ptr [rbp - 0xb10]
	mov	rbp, rbp
	mov	rsi, rax
	mov	al, 0
	call	dbg_printf
.label_3775:
	jmp	.label_1907
.label_3768:
	test	byte ptr [rbp - 0xa7], 1
	nop	
	je	.label_1941
	nop	
	movabs	rdi, OFFSET FLAT:.str.58_0
	mov	rbp, rbp
	call	gettext
	mov	rsi, qword ptr [rbp - 0x118]
	mov	rdx, qword ptr [rbp - 0x110]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x108]
	mov	rdi, rax
	nop	
	mov	al, 0
	call	dbg_printf
	nop	
	movabs	rdi, OFFSET FLAT:.str.59_0
	call	gettext
	lea	rdi, [rbp - 0x1c0]
	lea	rsi, [rbp - 0x180]
	mov	ecx, 0x64
	mov	rbp, rbp
	lea	rdx, [rbp - 0xd20]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x810], rax
	call	debug_strfdatetime
	mov	rdi, qword ptr [rbp - 0x810]
	mov	rsi, rax
	mov	al, 0
	call	dbg_printf
	cmp	dword ptr [rbp - 0x848], -1
	je	.label_3818
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x1a0]
	cmp	eax, dword ptr [rbp - 0x848]
	lea	rsi, [rsi]
	je	.label_3818
	lea	rsi, [rsi]
	movabs	rdi, OFFSET FLAT:.str.60_0
	call	gettext
	lea	rsi, [rsi]
	mov	rdi, rax
	nop	
	mov	al, 0
	call	dbg_printf
.label_3818:
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x108], 0
	jne	.label_2926
	mov	eax, dword ptr [rbp - 0x1b4]
	cmp	eax, dword ptr [rbp - 0x890]
	lea	rsi, [rsi]
	jne	.label_3840
	cmp	qword ptr [rbp - 0x110], 0
	jne	.label_2926
	nop	
	mov	eax, dword ptr [rbp - 0x1b0]
	mov	rsp, rsp
	cmp	eax, dword ptr [rbp - 0x6bc]
	je	.label_2926
.label_3840:
	nop	
	movabs	rdi, OFFSET FLAT:.str.61
	call	gettext
	lea	rsi, [rsi]
	mov	rdi, rax
	nop	
	mov	al, 0
	call	dbg_printf
	mov	rsp, rsp
	movabs	rdi, OFFSET FLAT:.str.62
	mov	rbp, rbp
	call	gettext
	lea	rsi, [rbp - 0x73d]
	nop	
	mov	edi, dword ptr [rbp - 0xa68]
	mov	qword ptr [rbp - 0x2c8], rax
	call	tm_year_str
	mov	edi, dword ptr [rbp - 0x6bc]
	add	edi, 1
	lea	rsi, [rsi]
	mov	ecx, dword ptr [rbp - 0x890]
	mov	rsi, qword ptr [rbp - 0x2c8]
	mov	dword ptr [rbp - 0x564], edi
	mov	rdi, rsi
	mov	rsi, rax
	mov	edx, dword ptr [rbp - 0x564]
	lea	rsi, [rsi]
	mov	al, 0
	mov	rbp, rbp
	call	dbg_printf
	mov	rbp, rbp
	movabs	rdi, OFFSET FLAT:.str.63
	mov	rbp, rbp
	call	gettext
	lea	rsi, [rbp - 0x73d]
	mov	edi, dword ptr [rbp - 0x1ac]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x290], rax
	call	tm_year_str
	nop	
	mov	ecx, dword ptr [rbp - 0x1b0]
	add	ecx, 1
	mov	edx, dword ptr [rbp - 0x1b4]
	nop	
	mov	rdi, qword ptr [rbp - 0x290]
	mov	rsi, rax
	mov	dword ptr [rbp - 0x6c0], edx
	mov	edx, ecx
	mov	ecx, dword ptr [rbp - 0x6c0]
	mov	al, 0
	call	dbg_printf
.label_2926:
	nop	
	jmp	.label_1941
.label_1941:
	jmp	.label_2158
.label_2158:
	cmp	qword ptr [rbp - 0xb0], 0
	je	.label_1943
	lea	rdi, [rdi]
	mov	al, 1
	lea	rdi, [rdi]
	movsxd	rcx, dword ptr [rbp - 0x168]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x638], rcx
	mov	byte ptr [rbp - 0xa51], 0
	mov	rcx, qword ptr [rbp - 0x198]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x698], rcx
	test	al, 1
	lea	rsi, [rsi]
	jne	.label_1947
	lea	rdi, [rdi]
	jmp	.label_1967
.label_1947:
	cmp	qword ptr [rbp - 0x698], 0
	lea	rdi, [rdi]
	jge	.label_1972
	movabs	rax, 0x7fffffffffffffff
	lea	rdi, [rdi]
	add	rax, qword ptr [rbp - 0x698]
	mov	rbp, rbp
	cmp	rax, qword ptr [rbp - 0x638]
	lea	rsi, [rsi]
	jl	.label_1979
	lea	rsi, [rsi]
	jmp	.label_1990
.label_1972:
	mov	rax, qword ptr [rbp - 0x638]
	lea	rdi, [rdi]
	movabs	rcx, 0x8000000000000000
	add	rcx, qword ptr [rbp - 0x698]
	cmp	rax, rcx
	jl	.label_1979
	jmp	.label_1990
.label_1967:
	cmp	qword ptr [rbp - 0x638], 0
	nop	
	jge	.label_2002
	lea	rdi, [rdi]
	mov	al, 1
	lea	rsi, [rsi]
	test	al, 1
	lea	rdi, [rdi]
	jne	.label_1979
	jmp	.label_1990
.label_2002:
	cmp	qword ptr [rbp - 0x698], 0
	lea	rsi, [rsi]
	jge	.label_2542
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x638]
	lea	rsi, [rsi]
	sub	rax, qword ptr [rbp - 0x698]
	lea	rdi, [rdi]
	cmp	rax, qword ptr [rbp - 0x638]
	jle	.label_1979
	mov	rbp, rbp
	jmp	.label_1990
.label_2542:
	mov	rax, qword ptr [rbp - 0x638]
	nop	
	cmp	rax, qword ptr [rbp - 0x698]
	nop	
	jl	.label_1979
.label_1990:
	nop	
	movabs	rax, 0x8000000000000000
	mov	rcx, qword ptr [rbp - 0x638]
	mov	rbp, rbp
	sub	rcx, qword ptr [rbp - 0x698]
	nop	
	cmp	rcx, rax
	mov	rbp, rbp
	jl	.label_1979
	lea	rdi, [rdi]
	movabs	rax, 0x7fffffffffffffff
	nop	
	mov	rcx, qword ptr [rbp - 0x638]
	sub	rcx, qword ptr [rbp - 0x698]
	cmp	rax, rcx
	jge	.label_2036
.label_1979:
	lea	rdi, [rdi]
	mov	eax, 1
	nop	
	mov	rcx, qword ptr [rbp - 0x638]
	sub	rcx, qword ptr [rbp - 0x698]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x638], rcx
	mov	dword ptr [rbp - 0xdc4], eax
	jmp	.label_2045
.label_2036:
	nop	
	xor	eax, eax
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x638]
	sub	rcx, qword ptr [rbp - 0x698]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x638], rcx
	mov	dword ptr [rbp - 0xdc4], eax
.label_2045:
	mov	eax, dword ptr [rbp - 0xdc4]
	mov	cl, 1
	mov	dl, byte ptr [rbp - 0xa51]
	and	dl, 1
	movzx	esi, dl
	lea	rsi, [rsi]
	or	esi, eax
	mov	rsp, rsp
	cmp	esi, 0
	setne	dl
	mov	rbp, rbp
	and	dl, 1
	mov	byte ptr [rbp - 0xa51], dl
	test	cl, 1
	mov	rsp, rsp
	jne	.label_2062
	jmp	.label_2977
.label_2062:
	cmp	qword ptr [rbp - 0x638], 0
	lea	rdi, [rdi]
	jge	.label_2989
	movabs	rax, 0x7fffffffffffffff
	add	rax, qword ptr [rbp - 0x638]
	lea	rdi, [rdi]
	cmp	rax, qword ptr [rbp - 0x488]
	jl	.label_2093
	jmp	.label_2099
.label_2989:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x488]
	mov	rsp, rsp
	movabs	rcx, 0x8000000000000000
	lea	rsi, [rsi]
	add	rcx, qword ptr [rbp - 0x638]
	cmp	rax, rcx
	lea	rdi, [rdi]
	jl	.label_2093
	lea	rsi, [rsi]
	jmp	.label_2099
.label_2977:
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x488], 0
	mov	rbp, rbp
	jge	.label_2111
	nop	
	mov	al, 1
	test	al, 1
	lea	rdi, [rdi]
	jne	.label_2093
	jmp	.label_2099
.label_2111:
	cmp	qword ptr [rbp - 0x638], 0
	jge	.label_2123
	mov	rax, qword ptr [rbp - 0x488]
	sub	rax, qword ptr [rbp - 0x638]
	nop	
	cmp	rax, qword ptr [rbp - 0x488]
	mov	rsp, rsp
	jle	.label_2093
	jmp	.label_2099
.label_2123:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x488]
	cmp	rax, qword ptr [rbp - 0x638]
	jl	.label_2093
.label_2099:
	lea	rdi, [rdi]
	movabs	rax, 0x8000000000000000
	mov	rcx, qword ptr [rbp - 0x488]
	sub	rcx, qword ptr [rbp - 0x638]
	mov	rbp, rbp
	cmp	rcx, rax
	jl	.label_2093
	lea	rsi, [rsi]
	movabs	rax, 0x7fffffffffffffff
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x488]
	mov	rbp, rbp
	sub	rcx, qword ptr [rbp - 0x638]
	cmp	rax, rcx
	jge	.label_3355
.label_2093:
	mov	rsp, rsp
	mov	eax, 1
	mov	rcx, qword ptr [rbp - 0x488]
	sub	rcx, qword ptr [rbp - 0x638]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x4e8], rcx
	mov	dword ptr [rbp - 0xb38], eax
	lea	rsi, [rsi]
	jmp	.label_3399
.label_3355:
	xor	eax, eax
	nop	
	mov	rcx, qword ptr [rbp - 0x488]
	mov	rbp, rbp
	sub	rcx, qword ptr [rbp - 0x638]
	nop	
	mov	qword ptr [rbp - 0x4e8], rcx
	mov	dword ptr [rbp - 0xb38], eax
.label_3399:
	mov	eax, dword ptr [rbp - 0xb38]
	nop	
	mov	cl, byte ptr [rbp - 0xa51]
	and	cl, 1
	nop	
	movzx	edx, cl
	or	edx, eax
	nop	
	cmp	edx, 0
	setne	cl
	and	cl, 1
	mov	byte ptr [rbp - 0xa51], cl
	lea	rdi, [rdi]
	test	byte ptr [rbp - 0xa51], 1
	jne	.label_2184
	mov	rdi, qword ptr [rbp - 0x4e8]
	lea	rsi, [rsi]
	call	time_overflow
	nop	
	test	al, 1
	nop	
	jne	.label_2184
	jmp	.label_3616
.label_2184:
	test	byte ptr [rbp - 0xa7], 1
	je	.label_2213
	movabs	rdi, OFFSET FLAT:.str.64
	mov	rbp, rbp
	call	gettext
	mov	esi, dword ptr [rbp - 0x168]
	mov	rdi, rax
	mov	al, 0
	call	dbg_printf
.label_2213:
	nop	
	jmp	.label_1907
.label_3616:
	mov	rax, qword ptr [rbp - 0x4e8]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x488], rax
.label_1943:
	lea	rdi, [rdi]
	test	byte ptr [rbp - 0xa7], 1
	je	.label_3708
	lea	rsi, [rsi]
	movabs	rdi, OFFSET FLAT:.str.65
	mov	rax, qword ptr [rbp - 0x488]
	mov	qword ptr [rbp - 0xc80], rax
	mov	rbp, rbp
	call	gettext
	mov	rbp, rbp
	lea	rdi, [rbp - 0x1c0]
	lea	rdi, [rdi]
	lea	rsi, [rbp - 0x180]
	mov	ecx, 0x64
	lea	rdx, [rbp - 0xd20]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x370], rax
	mov	rbp, rbp
	call	debug_strfdatetime
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0xc80]
	nop	
	mov	rdi, qword ptr [rbp - 0x370]
	mov	rsi, rax
	mov	al, 0
	call	dbg_printf
.label_3708:
	xor	eax, eax
	mov	cl, al
	mov	eax, 0x3b9aca00
	lea	rdi, [rdi]
	mov	edx, eax
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x120]
	mov	qword ptr [rbp - 0x870], rsi
	mov	rsi, qword ptr [rbp - 0x870]
	nop	
	movsxd	rdi, dword ptr [rbp - 0xe8]
	lea	rsi, [rsi]
	add	rsi, rdi
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x920], rsi
	mov	rax, qword ptr [rbp - 0x920]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x238], rdx
	cqo	
	mov	rsi, qword ptr [rbp - 0x238]
	idiv	rsi
	add	rdx, 0x3b9aca00
	mov	rax, rdx
	mov	rbp, rbp
	cqo	
	mov	rbp, rbp
	idiv	rsi
	mov	rbp, rbp
	mov	r8d, edx
	mov	dword ptr [rbp - 0x24c], r8d
	mov	rdx, qword ptr [rbp - 0x920]
	mov	rsp, rsp
	movsxd	rdi, dword ptr [rbp - 0x24c]
	nop	
	sub	rdx, rdi
	mov	rax, rdx
	mov	rbp, rbp
	cqo	
	idiv	rsi
	mov	r8d, eax
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x4c4], r8d
	test	cl, 1
	jne	.label_2264
	mov	rbp, rbp
	jmp	.label_2302
.label_2264:
	xor	eax, eax
	nop	
	mov	cl, al
	mov	rbp, rbp
	test	cl, 1
	jne	.label_2306
	jmp	.label_2311
.label_2306:
	mov	rsp, rsp
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	mov	rsp, rsp
	jne	.label_2312
	jmp	.label_2316
.label_2312:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x100]
	lea	rdi, [rdi]
	mov	cl, al
	mov	rsp, rsp
	movsx	edx, cl
	lea	rdi, [rdi]
	cmp	edx, 0
	jge	.label_2279
	mov	rax, qword ptr [rbp - 0x100]
	lea	rsi, [rsi]
	mov	cl, al
	movsx	edx, cl
	cmp	edx, 0x7ffffff
	jl	.label_2326
	jmp	.label_2334
.label_2279:
	xor	eax, eax
	lea	rdi, [rdi]
	mov	cl, al
	nop	
	test	cl, 1
	lea	rsi, [rsi]
	jne	.label_2336
	jmp	.label_2346
.label_2336:
	lea	rsi, [rsi]
	xor	eax, eax
	mov	cl, al
	lea	rdi, [rdi]
	test	cl, 1
	jne	.label_2326
	lea	rdi, [rdi]
	jmp	.label_2334
.label_2346:
	mov	rbp, rbp
	mov	eax, 0xf8000000
	mov	rcx, qword ptr [rbp - 0x100]
	mov	dl, cl
	mov	rbp, rbp
	movsx	esi, dl
	lea	rsi, [rsi]
	cmp	eax, esi
	mov	rsp, rsp
	jl	.label_2326
	jmp	.label_2334
.label_2316:
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_2371
	lea	rsi, [rsi]
	jmp	.label_2377
.label_2371:
	xor	eax, eax
	mov	cl, al
	mov	rsp, rsp
	test	cl, 1
	mov	rsp, rsp
	jne	.label_2326
	mov	rbp, rbp
	jmp	.label_2334
.label_2377:
	mov	rax, qword ptr [rbp - 0x100]
	lea	rdi, [rdi]
	mov	cl, al
	lea	rdi, [rdi]
	movsx	edx, cl
	nop	
	cmp	edx, 0
	jge	.label_2604
	mov	rax, qword ptr [rbp - 0x100]
	mov	cl, al
	movsx	edx, cl
	mov	rsp, rsp
	cmp	edx, 0xf8000000
	lea	rsi, [rsi]
	jl	.label_2326
	lea	rsi, [rsi]
	jmp	.label_2334
.label_2604:
	mov	rsp, rsp
	mov	eax, 0x7ffffff
	mov	rcx, qword ptr [rbp - 0x100]
	mov	dl, cl
	lea	rdi, [rdi]
	movsx	esi, dl
	cmp	eax, esi
	mov	rbp, rbp
	jl	.label_2326
.label_2334:
	mov	rax, qword ptr [rbp - 0x100]
	mov	cl, al
	movsx	edx, cl
	shl	edx, 4
	lea	rsi, [rsi]
	cmp	edx, -0x80
	lea	rdi, [rdi]
	jl	.label_2326
	nop	
	mov	eax, 0x7f
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x100]
	mov	dl, cl
	movsx	esi, dl
	mov	rbp, rbp
	shl	esi, 4
	mov	rsp, rsp
	cmp	eax, esi
	jge	.label_2413
.label_2326:
	mov	al, 1
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x100]
	nop	
	mov	dl, cl
	mov	rsp, rsp
	movsx	esi, dl
	shl	esi, 4
	mov	rbp, rbp
	mov	dl, sil
	mov	rsp, rsp
	movsx	rcx, dl
	mov	qword ptr [rbp - 0x450], rcx
	nop	
	test	al, 1
	mov	rsp, rsp
	jne	.label_1905
	jmp	.label_1976
.label_2413:
	xor	eax, eax
	lea	rsi, [rsi]
	mov	cl, al
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x100]
	mov	sil, dl
	movsx	eax, sil
	shl	eax, 4
	mov	sil, al
	movsx	rdx, sil
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x450], rdx
	test	cl, 1
	mov	rbp, rbp
	jne	.label_1905
	jmp	.label_1976
.label_2311:
	xor	eax, eax
	mov	rsp, rsp
	mov	cl, al
	test	cl, 1
	jne	.label_2773
	jmp	.label_2465
.label_2773:
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x100], 0
	lea	rsi, [rsi]
	jge	.label_2466
	movabs	rax, 0x91a2b3c4d5e6f
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x100], rax
	nop	
	jl	.label_2469
	lea	rsi, [rsi]
	jmp	.label_2476
.label_2466:
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_2479
	jmp	.label_2484
.label_2479:
	xor	eax, eax
	nop	
	mov	cl, al
	lea	rsi, [rsi]
	test	cl, 1
	jne	.label_2469
	nop	
	jmp	.label_2476
.label_2484:
	nop	
	movabs	rax, 0xfff6e5d4c3b2a191
	cmp	rax, qword ptr [rbp - 0x100]
	jl	.label_2469
	jmp	.label_2476
.label_2465:
	xor	eax, eax
	mov	cl, al
	mov	rsp, rsp
	test	cl, 1
	jne	.label_2505
	mov	rsp, rsp
	jmp	.label_2510
.label_2505:
	xor	eax, eax
	mov	rsp, rsp
	mov	cl, al
	test	cl, 1
	nop	
	jne	.label_2469
	mov	rsp, rsp
	jmp	.label_2476
.label_2510:
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x100], 0
	jge	.label_2516
	movabs	rax, 0xfff6e5d4c3b2a191
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x100], rax
	nop	
	jl	.label_2469
	jmp	.label_2476
.label_2516:
	mov	rsp, rsp
	movabs	rax, 0x91a2b3c4d5e6f
	lea	rdi, [rdi]
	cmp	rax, qword ptr [rbp - 0x100]
	mov	rbp, rbp
	jl	.label_2469
.label_2476:
	imul	rax, qword ptr [rbp - 0x100], 0xe10
	cmp	rax, -0x80
	mov	rbp, rbp
	jl	.label_2469
	mov	eax, 0x7f
	mov	ecx, eax
	imul	rdx, qword ptr [rbp - 0x100], 0xe10
	cmp	rcx, rdx
	mov	rsp, rsp
	jge	.label_2541
.label_2469:
	mov	al, 1
	nop	
	mov	rcx, qword ptr [rbp - 0x100]
	lea	rsi, [rsi]
	mov	edx, ecx
	mov	rsp, rsp
	imul	edx, edx, 0xe10
	mov	sil, dl
	movsx	rcx, sil
	mov	qword ptr [rbp - 0x450], rcx
	test	al, 1
	mov	rbp, rbp
	jne	.label_1905
	mov	rsp, rsp
	jmp	.label_1976
.label_2541:
	lea	rsi, [rsi]
	xor	eax, eax
	nop	
	mov	cl, al
	nop	
	mov	rdx, qword ptr [rbp - 0x100]
	mov	rbp, rbp
	mov	eax, edx
	lea	rdi, [rdi]
	imul	eax, eax, 0xe10
	mov	sil, al
	lea	rdi, [rdi]
	movsx	rdx, sil
	mov	qword ptr [rbp - 0x450], rdx
	mov	rbp, rbp
	test	cl, 1
	jne	.label_1905
	lea	rsi, [rsi]
	jmp	.label_1976
.label_2302:
	lea	rsi, [rsi]
	xor	eax, eax
	mov	cl, al
	nop	
	test	cl, 1
	jne	.label_3649
	jmp	.label_2582
.label_3649:
	lea	rsi, [rsi]
	xor	eax, eax
	mov	rsp, rsp
	mov	cl, al
	test	cl, 1
	mov	rbp, rbp
	jne	.label_2584
	jmp	.label_2587
.label_2584:
	xor	eax, eax
	lea	rdi, [rdi]
	mov	cl, al
	nop	
	test	cl, 1
	lea	rdi, [rdi]
	jne	.label_2589
	jmp	.label_2594
.label_2589:
	mov	rax, qword ptr [rbp - 0x100]
	mov	rsp, rsp
	mov	cx, ax
	mov	rbp, rbp
	movsx	edx, cx
	mov	rsp, rsp
	cmp	edx, 0
	mov	rbp, rbp
	jge	.label_2595
	mov	rax, qword ptr [rbp - 0x100]
	mov	cx, ax
	movsx	edx, cx
	cmp	edx, 0x91a2b
	jl	.label_2605
	mov	rsp, rsp
	jmp	.label_2613
.label_2595:
	xor	eax, eax
	mov	cl, al
	mov	rsp, rsp
	test	cl, 1
	lea	rdi, [rdi]
	jne	.label_3814
	lea	rdi, [rdi]
	jmp	.label_2621
.label_3814:
	lea	rdi, [rdi]
	xor	eax, eax
	mov	cl, al
	nop	
	test	cl, 1
	jne	.label_2605
	nop	
	jmp	.label_2613
.label_2621:
	mov	eax, 0xfff6e5d5
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x100]
	mov	dx, cx
	movsx	esi, dx
	lea	rdi, [rdi]
	cmp	eax, esi
	jl	.label_2605
	jmp	.label_2613
.label_2594:
	mov	rsp, rsp
	xor	eax, eax
	mov	rsp, rsp
	mov	cl, al
	test	cl, 1
	jne	.label_2638
	jmp	.label_2642
.label_2638:
	xor	eax, eax
	mov	rbp, rbp
	mov	cl, al
	test	cl, 1
	nop	
	jne	.label_2605
	mov	rsp, rsp
	jmp	.label_2613
.label_2642:
	mov	rax, qword ptr [rbp - 0x100]
	mov	cx, ax
	lea	rdi, [rdi]
	movsx	edx, cx
	lea	rsi, [rsi]
	cmp	edx, 0
	jge	.label_2650
	mov	rax, qword ptr [rbp - 0x100]
	lea	rdi, [rdi]
	mov	cx, ax
	mov	rbp, rbp
	movsx	edx, cx
	cmp	edx, 0xfff6e5d5
	mov	rsp, rsp
	jl	.label_2605
	mov	rbp, rbp
	jmp	.label_2613
.label_2650:
	mov	eax, 0x91a2b
	mov	rcx, qword ptr [rbp - 0x100]
	mov	dx, cx
	movsx	esi, dx
	nop	
	cmp	eax, esi
	mov	rsp, rsp
	jl	.label_2605
.label_2613:
	mov	rax, qword ptr [rbp - 0x100]
	mov	rsp, rsp
	mov	cx, ax
	mov	rbp, rbp
	movsx	edx, cx
	imul	edx, edx, 0xe10
	mov	rbp, rbp
	cmp	edx, 0xffff8000
	jl	.label_2605
	lea	rsi, [rsi]
	mov	eax, 0x7fff
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x100]
	mov	dx, cx
	movsx	esi, dx
	nop	
	imul	esi, esi, 0xe10
	mov	rbp, rbp
	cmp	eax, esi
	jge	.label_2681
.label_2605:
	lea	rsi, [rsi]
	mov	al, 1
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x100]
	mov	rbp, rbp
	mov	dx, cx
	lea	rsi, [rsi]
	movsx	esi, dx
	imul	esi, esi, 0xe10
	lea	rdi, [rdi]
	mov	dx, si
	movsx	rcx, dx
	mov	qword ptr [rbp - 0x450], rcx
	lea	rsi, [rsi]
	test	al, 1
	jne	.label_1905
	nop	
	jmp	.label_1976
.label_2681:
	nop	
	xor	eax, eax
	mov	cl, al
	nop	
	mov	rdx, qword ptr [rbp - 0x100]
	lea	rsi, [rsi]
	mov	si, dx
	mov	rbp, rbp
	movsx	eax, si
	lea	rdi, [rdi]
	imul	eax, eax, 0xe10
	lea	rsi, [rsi]
	mov	si, ax
	lea	rdi, [rdi]
	movsx	rdx, si
	mov	qword ptr [rbp - 0x450], rdx
	mov	rbp, rbp
	test	cl, 1
	lea	rdi, [rdi]
	jne	.label_1905
	jmp	.label_1976
.label_2587:
	xor	eax, eax
	mov	rsp, rsp
	mov	cl, al
	test	cl, 1
	jne	.label_2573
	jmp	.label_2718
.label_2573:
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x100], 0
	jge	.label_2721
	movabs	rax, 0x91a2b3c4d5e6f
	nop	
	cmp	qword ptr [rbp - 0x100], rax
	jl	.label_2727
	mov	rbp, rbp
	jmp	.label_2735
.label_2721:
	lea	rsi, [rsi]
	xor	eax, eax
	mov	cl, al
	lea	rsi, [rsi]
	test	cl, 1
	lea	rsi, [rsi]
	jne	.label_2675
	jmp	.label_2744
.label_2675:
	mov	rbp, rbp
	xor	eax, eax
	nop	
	mov	cl, al
	lea	rsi, [rsi]
	test	cl, 1
	mov	rsp, rsp
	jne	.label_2727
	lea	rdi, [rdi]
	jmp	.label_2735
.label_2744:
	movabs	rax, 0xfff6e5d4c3b2a191
	cmp	rax, qword ptr [rbp - 0x100]
	jl	.label_2727
	lea	rdi, [rdi]
	jmp	.label_2735
.label_2718:
	xor	eax, eax
	lea	rsi, [rsi]
	mov	cl, al
	mov	rsp, rsp
	test	cl, 1
	nop	
	jne	.label_2758
	lea	rsi, [rsi]
	jmp	.label_2763
.label_2758:
	xor	eax, eax
	mov	cl, al
	nop	
	test	cl, 1
	lea	rdi, [rdi]
	jne	.label_2727
	lea	rsi, [rsi]
	jmp	.label_2735
.label_2763:
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x100], 0
	jge	.label_2774
	lea	rdi, [rdi]
	movabs	rax, 0xfff6e5d4c3b2a191
	nop	
	cmp	qword ptr [rbp - 0x100], rax
	mov	rsp, rsp
	jl	.label_2727
	jmp	.label_2735
.label_2774:
	mov	rbp, rbp
	movabs	rax, 0x91a2b3c4d5e6f
	cmp	rax, qword ptr [rbp - 0x100]
	mov	rsp, rsp
	jl	.label_2727
.label_2735:
	mov	rbp, rbp
	imul	rax, qword ptr [rbp - 0x100], 0xe10
	cmp	rax, -0x8000
	jl	.label_2727
	mov	eax, 0x7fff
	mov	ecx, eax
	mov	rbp, rbp
	imul	rdx, qword ptr [rbp - 0x100], 0xe10
	lea	rdi, [rdi]
	cmp	rcx, rdx
	nop	
	jge	.label_2796
.label_2727:
	lea	rsi, [rsi]
	mov	al, 1
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x100]
	mov	edx, ecx
	mov	rsp, rsp
	imul	edx, edx, 0xe10
	mov	si, dx
	lea	rsi, [rsi]
	movsx	rcx, si
	mov	qword ptr [rbp - 0x450], rcx
	test	al, 1
	jne	.label_1905
	nop	
	jmp	.label_1976
.label_2796:
	nop	
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x100]
	mov	eax, edx
	imul	eax, eax, 0xe10
	lea	rdi, [rdi]
	mov	si, ax
	lea	rdi, [rdi]
	movsx	rdx, si
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x450], rdx
	test	cl, 1
	mov	rbp, rbp
	jne	.label_1905
	lea	rdi, [rdi]
	jmp	.label_1976
.label_2582:
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_3257
	lea	rdi, [rdi]
	jmp	.label_2827
.label_3257:
	xor	eax, eax
	mov	cl, al
	mov	rbp, rbp
	test	cl, 1
	jne	.label_2830
	nop	
	jmp	.label_2835
.label_2830:
	nop	
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_2836
	jmp	.label_3159
.label_2836:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x100]
	mov	ecx, eax
	cmp	ecx, 0
	jge	.label_2840
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x100]
	mov	ecx, eax
	mov	rsp, rsp
	cmp	ecx, 0x91a2b
	lea	rsi, [rsi]
	jl	.label_2845
	jmp	.label_2853
.label_2840:
	lea	rdi, [rdi]
	xor	eax, eax
	nop	
	mov	cl, al
	lea	rdi, [rdi]
	test	cl, 1
	nop	
	jne	.label_2854
	mov	rbp, rbp
	jmp	.label_2861
.label_2854:
	xor	eax, eax
	mov	rsp, rsp
	mov	cl, al
	nop	
	test	cl, 1
	lea	rsi, [rsi]
	jne	.label_2845
	mov	rbp, rbp
	jmp	.label_2853
.label_2861:
	mov	eax, 0xfff6e5d5
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x100]
	mov	edx, ecx
	mov	rsp, rsp
	cmp	eax, edx
	lea	rsi, [rsi]
	jl	.label_2845
	nop	
	jmp	.label_2853
.label_3159:
	mov	rbp, rbp
	xor	eax, eax
	mov	rbp, rbp
	mov	cl, al
	mov	rbp, rbp
	test	cl, 1
	lea	rdi, [rdi]
	jne	.label_2882
	lea	rsi, [rsi]
	jmp	.label_2888
.label_2882:
	xor	eax, eax
	mov	rsp, rsp
	mov	cl, al
	test	cl, 1
	jne	.label_2845
	lea	rdi, [rdi]
	jmp	.label_2853
.label_2888:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x100]
	mov	ecx, eax
	lea	rsi, [rsi]
	cmp	ecx, 0
	mov	rbp, rbp
	jge	.label_3859
	mov	rax, qword ptr [rbp - 0x100]
	mov	ecx, eax
	cmp	ecx, 0xfff6e5d5
	lea	rsi, [rsi]
	jl	.label_2845
	mov	rsp, rsp
	jmp	.label_2853
.label_3859:
	mov	eax, 0x91a2b
	mov	rcx, qword ptr [rbp - 0x100]
	mov	edx, ecx
	lea	rsi, [rsi]
	cmp	eax, edx
	lea	rsi, [rsi]
	jl	.label_2845
.label_2853:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x100]
	lea	rsi, [rsi]
	mov	ecx, eax
	imul	ecx, ecx, 0xe10
	nop	
	cmp	ecx, 0x80000000
	mov	rsp, rsp
	jl	.label_2845
	lea	rdi, [rdi]
	mov	eax, 0x7fffffff
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x100]
	nop	
	mov	edx, ecx
	lea	rsi, [rsi]
	imul	edx, edx, 0xe10
	cmp	eax, edx
	jge	.label_2931
.label_2845:
	lea	rdi, [rdi]
	mov	al, 1
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x100]
	mov	edx, ecx
	mov	rbp, rbp
	imul	edx, edx, 0xe10
	lea	rsi, [rsi]
	movsxd	rcx, edx
	nop	
	mov	qword ptr [rbp - 0x450], rcx
	lea	rsi, [rsi]
	test	al, 1
	jne	.label_1905
	mov	rbp, rbp
	jmp	.label_1976
.label_2931:
	mov	rsp, rsp
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x100]
	lea	rsi, [rsi]
	mov	eax, edx
	imul	eax, eax, 0xe10
	mov	rsp, rsp
	movsxd	rdx, eax
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x450], rdx
	lea	rsi, [rsi]
	test	cl, 1
	jne	.label_1905
	mov	rsp, rsp
	jmp	.label_1976
.label_2835:
	nop	
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	mov	rbp, rbp
	jne	.label_2969
	mov	rsp, rsp
	jmp	.label_2975
.label_2969:
	cmp	qword ptr [rbp - 0x100], 0
	mov	rbp, rbp
	jge	.label_2982
	lea	rdi, [rdi]
	movabs	rax, 0x91a2b3c4d5e6f
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x100], rax
	jl	.label_2986
	lea	rsi, [rsi]
	jmp	.label_2353
.label_2982:
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_2997
	mov	rbp, rbp
	jmp	.label_3003
.label_2997:
	nop	
	xor	eax, eax
	mov	cl, al
	lea	rsi, [rsi]
	test	cl, 1
	nop	
	jne	.label_2986
	jmp	.label_2353
.label_3003:
	lea	rsi, [rsi]
	movabs	rax, 0xfff6e5d4c3b2a191
	nop	
	cmp	rax, qword ptr [rbp - 0x100]
	mov	rbp, rbp
	jl	.label_2986
	mov	rbp, rbp
	jmp	.label_2353
.label_2975:
	mov	rbp, rbp
	xor	eax, eax
	mov	rsp, rsp
	mov	cl, al
	lea	rdi, [rdi]
	test	cl, 1
	jne	.label_3020
	jmp	.label_3025
.label_3020:
	xor	eax, eax
	nop	
	mov	cl, al
	nop	
	test	cl, 1
	mov	rbp, rbp
	jne	.label_2986
	lea	rsi, [rsi]
	jmp	.label_2353
.label_3025:
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x100], 0
	lea	rsi, [rsi]
	jge	.label_3030
	nop	
	movabs	rax, 0xfff6e5d4c3b2a191
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x100], rax
	jl	.label_2986
	jmp	.label_2353
.label_3030:
	movabs	rax, 0x91a2b3c4d5e6f
	cmp	rax, qword ptr [rbp - 0x100]
	mov	rsp, rsp
	jl	.label_2986
.label_2353:
	imul	rax, qword ptr [rbp - 0x100], 0xe10
	cmp	rax, -0x80000000
	jl	.label_2986
	mov	rsp, rsp
	mov	eax, 0x7fffffff
	mov	ecx, eax
	nop	
	imul	rdx, qword ptr [rbp - 0x100], 0xe10
	cmp	rcx, rdx
	jge	.label_2531
.label_2986:
	mov	rbp, rbp
	mov	al, 1
	mov	rcx, qword ptr [rbp - 0x100]
	mov	rsp, rsp
	mov	edx, ecx
	nop	
	imul	edx, edx, 0xe10
	lea	rsi, [rsi]
	movsxd	rcx, edx
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x450], rcx
	mov	rsp, rsp
	test	al, 1
	jne	.label_1905
	lea	rsi, [rsi]
	jmp	.label_1976
.label_2531:
	xor	eax, eax
	mov	rsp, rsp
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x100]
	lea	rdi, [rdi]
	mov	eax, edx
	imul	eax, eax, 0xe10
	movsxd	rdx, eax
	mov	qword ptr [rbp - 0x450], rdx
	test	cl, 1
	lea	rdi, [rdi]
	jne	.label_1905
	lea	rdi, [rdi]
	jmp	.label_1976
.label_2827:
	mov	al, 1
	test	al, 1
	nop	
	jne	.label_3079
	jmp	.label_3082
.label_3079:
	nop	
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_3084
	lea	rsi, [rsi]
	jmp	.label_3089
.label_3084:
	lea	rsi, [rsi]
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_3619
	lea	rsi, [rsi]
	jmp	.label_3096
.label_3619:
	cmp	qword ptr [rbp - 0x100], 0
	jge	.label_3098
	mov	rbp, rbp
	movabs	rax, 0x91a2b3c4d5e6f
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x100], rax
	mov	rsp, rsp
	jl	.label_2944
	jmp	.label_3028
.label_3098:
	lea	rsi, [rsi]
	xor	eax, eax
	lea	rdi, [rdi]
	mov	cl, al
	test	cl, 1
	jne	.label_3104
	mov	rsp, rsp
	jmp	.label_3112
.label_3104:
	xor	eax, eax
	mov	cl, al
	nop	
	test	cl, 1
	lea	rdi, [rdi]
	jne	.label_2944
	jmp	.label_3028
.label_3112:
	lea	rsi, [rsi]
	movabs	rax, 0xfff6e5d4c3b2a191
	cmp	rax, qword ptr [rbp - 0x100]
	nop	
	jl	.label_2944
	nop	
	jmp	.label_3028
.label_3096:
	nop	
	xor	eax, eax
	lea	rdi, [rdi]
	mov	cl, al
	lea	rdi, [rdi]
	test	cl, 1
	jne	.label_3132
	jmp	.label_3135
.label_3132:
	xor	eax, eax
	mov	rbp, rbp
	mov	cl, al
	test	cl, 1
	jne	.label_2944
	jmp	.label_3028
.label_3135:
	cmp	qword ptr [rbp - 0x100], 0
	mov	rbp, rbp
	jge	.label_3139
	lea	rsi, [rsi]
	movabs	rax, 0xfff6e5d4c3b2a191
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x100], rax
	jl	.label_2944
	jmp	.label_3028
.label_3139:
	lea	rdi, [rdi]
	movabs	rax, 0x91a2b3c4d5e6f
	cmp	rax, qword ptr [rbp - 0x100]
	nop	
	jl	.label_2944
.label_3028:
	nop	
	movabs	rax, 0x8000000000000000
	nop	
	imul	rcx, qword ptr [rbp - 0x100], 0xe10
	cmp	rcx, rax
	lea	rsi, [rsi]
	jl	.label_2944
	movabs	rax, 0x7fffffffffffffff
	nop	
	imul	rcx, qword ptr [rbp - 0x100], 0xe10
	cmp	rax, rcx
	mov	rbp, rbp
	jge	.label_3156
.label_2944:
	mov	al, 1
	imul	rcx, qword ptr [rbp - 0x100], 0xe10
	mov	qword ptr [rbp - 0x450], rcx
	test	al, 1
	jne	.label_1905
	mov	rsp, rsp
	jmp	.label_1976
.label_3156:
	xor	eax, eax
	mov	rbp, rbp
	mov	cl, al
	mov	rsp, rsp
	imul	rdx, qword ptr [rbp - 0x100], 0xe10
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x450], rdx
	test	cl, 1
	lea	rdi, [rdi]
	jne	.label_1905
	jmp	.label_1976
.label_3089:
	lea	rsi, [rsi]
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_3189
	lea	rsi, [rsi]
	jmp	.label_3441
.label_3189:
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x100], 0
	lea	rdi, [rdi]
	jge	.label_3195
	lea	rsi, [rsi]
	movabs	rax, 0x91a2b3c4d5e6f
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0x100], rax
	mov	rbp, rbp
	jl	.label_3243
	nop	
	jmp	.label_3213
.label_3195:
	mov	rsp, rsp
	xor	eax, eax
	lea	rdi, [rdi]
	mov	cl, al
	nop	
	test	cl, 1
	jne	.label_3215
	lea	rsi, [rsi]
	jmp	.label_3558
.label_3215:
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_3243
	jmp	.label_3213
.label_3558:
	lea	rsi, [rsi]
	movabs	rax, 0xfff6e5d4c3b2a191
	cmp	rax, qword ptr [rbp - 0x100]
	jl	.label_3243
	mov	rsp, rsp
	jmp	.label_3213
.label_3441:
	nop	
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_3632
	mov	rsp, rsp
	jmp	.label_3241
.label_3632:
	lea	rsi, [rsi]
	xor	eax, eax
	mov	cl, al
	mov	rsp, rsp
	test	cl, 1
	jne	.label_3243
	jmp	.label_3213
.label_3241:
	cmp	qword ptr [rbp - 0x100], 0
	jge	.label_3248
	nop	
	movabs	rax, 0xfff6e5d4c3b2a191
	cmp	qword ptr [rbp - 0x100], rax
	nop	
	jl	.label_3243
	mov	rbp, rbp
	jmp	.label_3213
.label_3248:
	mov	rbp, rbp
	movabs	rax, 0x91a2b3c4d5e6f
	lea	rdi, [rdi]
	cmp	rax, qword ptr [rbp - 0x100]
	mov	rsp, rsp
	jl	.label_3243
.label_3213:
	movabs	rax, 0x8000000000000000
	mov	rbp, rbp
	imul	rcx, qword ptr [rbp - 0x100], 0xe10
	lea	rsi, [rsi]
	cmp	rcx, rax
	jl	.label_3243
	nop	
	movabs	rax, 0x7fffffffffffffff
	imul	rcx, qword ptr [rbp - 0x100], 0xe10
	mov	rsp, rsp
	cmp	rax, rcx
	lea	rdi, [rdi]
	jge	.label_3272
.label_3243:
	mov	rsp, rsp
	mov	al, 1
	mov	rbp, rbp
	imul	rcx, qword ptr [rbp - 0x100], 0xe10
	mov	qword ptr [rbp - 0x450], rcx
	lea	rdi, [rdi]
	test	al, 1
	jne	.label_1905
	jmp	.label_1976
.label_3272:
	xor	eax, eax
	mov	rbp, rbp
	mov	cl, al
	imul	rdx, qword ptr [rbp - 0x100], 0xe10
	mov	qword ptr [rbp - 0x450], rdx
	test	cl, 1
	nop	
	jne	.label_1905
	lea	rsi, [rsi]
	jmp	.label_1976
.label_3082:
	xor	eax, eax
	lea	rdi, [rdi]
	mov	cl, al
	lea	rdi, [rdi]
	test	cl, 1
	jne	.label_3290
	jmp	.label_3297
.label_3290:
	mov	rbp, rbp
	xor	eax, eax
	mov	cl, al
	nop	
	test	cl, 1
	nop	
	jne	.label_3299
	jmp	.label_3306
.label_3299:
	cmp	qword ptr [rbp - 0x100], 0
	jge	.label_2119
	movabs	rax, 0x91a2b3c4d5e6f
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x100], rax
	jl	.label_2486
	jmp	.label_2263
.label_2119:
	xor	eax, eax
	mov	cl, al
	mov	rsp, rsp
	test	cl, 1
	jne	.label_3317
	lea	rdi, [rdi]
	jmp	.label_2890
.label_3317:
	xor	eax, eax
	mov	cl, al
	mov	rbp, rbp
	test	cl, 1
	lea	rdi, [rdi]
	jne	.label_2486
	jmp	.label_2263
.label_2890:
	movabs	rax, 0xfff6e5d4c3b2a191
	mov	rsp, rsp
	cmp	rax, qword ptr [rbp - 0x100]
	jl	.label_2486
	jmp	.label_2263
.label_3306:
	mov	rsp, rsp
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_3347
	lea	rsi, [rsi]
	jmp	.label_3341
.label_3347:
	xor	eax, eax
	lea	rsi, [rsi]
	mov	cl, al
	nop	
	test	cl, 1
	jne	.label_2486
	jmp	.label_2263
.label_3341:
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x100], 0
	mov	rbp, rbp
	jge	.label_3350
	mov	rsp, rsp
	movabs	rax, 0xfff6e5d4c3b2a191
	cmp	qword ptr [rbp - 0x100], rax
	mov	rsp, rsp
	jl	.label_2486
	lea	rdi, [rdi]
	jmp	.label_2263
.label_3350:
	mov	rbp, rbp
	movabs	rax, 0x91a2b3c4d5e6f
	cmp	rax, qword ptr [rbp - 0x100]
	jl	.label_2486
.label_2263:
	lea	rsi, [rsi]
	movabs	rax, 0x8000000000000000
	lea	rdi, [rdi]
	imul	rcx, qword ptr [rbp - 0x100], 0xe10
	lea	rdi, [rdi]
	cmp	rcx, rax
	nop	
	jl	.label_2486
	lea	rdi, [rdi]
	movabs	rax, 0x7fffffffffffffff
	imul	rcx, qword ptr [rbp - 0x100], 0xe10
	mov	rbp, rbp
	cmp	rax, rcx
	jge	.label_3378
.label_2486:
	mov	al, 1
	imul	rcx, qword ptr [rbp - 0x100], 0xe10
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x450], rcx
	mov	rbp, rbp
	test	al, 1
	jne	.label_1905
	jmp	.label_1976
.label_3378:
	lea	rsi, [rsi]
	xor	eax, eax
	mov	cl, al
	imul	rdx, qword ptr [rbp - 0x100], 0xe10
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x450], rdx
	lea	rdi, [rdi]
	test	cl, 1
	jne	.label_1905
	nop	
	jmp	.label_1976
.label_3297:
	lea	rdi, [rdi]
	xor	eax, eax
	mov	cl, al
	lea	rdi, [rdi]
	test	cl, 1
	lea	rdi, [rdi]
	jne	.label_3393
	lea	rdi, [rdi]
	jmp	.label_2793
.label_3393:
	cmp	qword ptr [rbp - 0x100], 0
	mov	rsp, rsp
	jge	.label_3402
	movabs	rax, 0x91a2b3c4d5e6f
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x100], rax
	jl	.label_3407
	nop	
	jmp	.label_3415
.label_3402:
	xor	eax, eax
	mov	cl, al
	mov	rsp, rsp
	test	cl, 1
	lea	rdi, [rdi]
	jne	.label_3417
	jmp	.label_2902
.label_3417:
	mov	rbp, rbp
	xor	eax, eax
	mov	cl, al
	nop	
	test	cl, 1
	jne	.label_3407
	jmp	.label_3415
.label_2902:
	movabs	rax, 0xfff6e5d4c3b2a191
	lea	rdi, [rdi]
	cmp	rax, qword ptr [rbp - 0x100]
	mov	rbp, rbp
	jl	.label_3407
	jmp	.label_3415
.label_2793:
	mov	rbp, rbp
	xor	eax, eax
	lea	rdi, [rdi]
	mov	cl, al
	nop	
	test	cl, 1
	jne	.label_3443
	nop	
	jmp	.label_3448
.label_3443:
	mov	rbp, rbp
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	nop	
	jne	.label_3407
	lea	rsi, [rsi]
	jmp	.label_3415
.label_3448:
	cmp	qword ptr [rbp - 0x100], 0
	lea	rdi, [rdi]
	jge	.label_3456
	movabs	rax, 0xfff6e5d4c3b2a191
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x100], rax
	mov	rsp, rsp
	jl	.label_3407
	jmp	.label_3415
.label_3456:
	movabs	rax, 0x91a2b3c4d5e6f
	mov	rbp, rbp
	cmp	rax, qword ptr [rbp - 0x100]
	jl	.label_3407
.label_3415:
	nop	
	movabs	rax, 0x8000000000000000
	imul	rcx, qword ptr [rbp - 0x100], 0xe10
	cmp	rcx, rax
	mov	rsp, rsp
	jl	.label_3407
	mov	rsp, rsp
	movabs	rax, 0x7fffffffffffffff
	imul	rcx, qword ptr [rbp - 0x100], 0xe10
	lea	rdi, [rdi]
	cmp	rax, rcx
	jge	.label_3479
.label_3407:
	nop	
	mov	al, 1
	imul	rcx, qword ptr [rbp - 0x100], 0xe10
	mov	qword ptr [rbp - 0x450], rcx
	test	al, 1
	jne	.label_1905
	jmp	.label_1976
.label_3479:
	lea	rdi, [rdi]
	xor	eax, eax
	nop	
	mov	cl, al
	mov	rsp, rsp
	imul	rdx, qword ptr [rbp - 0x100], 0xe10
	mov	qword ptr [rbp - 0x450], rdx
	mov	rbp, rbp
	test	cl, 1
	jne	.label_1905
.label_1976:
	xor	eax, eax
	nop	
	mov	cl, al
	lea	rdi, [rdi]
	test	cl, 1
	jne	.label_3501
	jmp	.label_3505
.label_3501:
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	lea	rdi, [rdi]
	jne	.label_3506
	jmp	.label_3508
.label_3506:
	mov	al, 1
	test	al, 1
	jne	.label_3511
	lea	rdi, [rdi]
	jmp	.label_3515
.label_3511:
	mov	rax, qword ptr [rbp - 0x450]
	lea	rdi, [rdi]
	mov	cl, al
	lea	rdi, [rdi]
	movsx	edx, cl
	lea	rsi, [rsi]
	cmp	edx, 0
	jge	.label_3517
	lea	rdi, [rdi]
	mov	eax, 0x80000000
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x488]
	lea	rsi, [rsi]
	mov	dl, cl
	movsx	esi, dl
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x450]
	mov	dl, cl
	lea	rsi, [rsi]
	movsx	edi, dl
	sub	eax, edi
	lea	rdi, [rdi]
	cmp	esi, eax
	lea	rdi, [rdi]
	jl	.label_3521
	mov	rbp, rbp
	jmp	.label_3535
.label_3517:
	lea	rdi, [rdi]
	mov	eax, 0x7fffffff
	mov	rcx, qword ptr [rbp - 0x450]
	nop	
	mov	dl, cl
	mov	rsp, rsp
	movsx	esi, dl
	nop	
	sub	eax, esi
	mov	rcx, qword ptr [rbp - 0x488]
	mov	dl, cl
	lea	rsi, [rsi]
	movsx	esi, dl
	nop	
	cmp	eax, esi
	jl	.label_3521
	nop	
	jmp	.label_3535
.label_3515:
	nop	
	mov	rax, qword ptr [rbp - 0x488]
	nop	
	mov	cl, al
	lea	rdi, [rdi]
	movsx	edx, cl
	cmp	edx, 0
	lea	rdi, [rdi]
	jge	.label_3555
	mov	rax, qword ptr [rbp - 0x450]
	nop	
	mov	cl, al
	mov	rsp, rsp
	movsx	edx, cl
	mov	rax, qword ptr [rbp - 0x488]
	mov	rbp, rbp
	mov	cl, al
	mov	rbp, rbp
	movsx	esi, cl
	mov	rax, qword ptr [rbp - 0x450]
	mov	cl, al
	movsx	edi, cl
	lea	rsi, [rsi]
	add	esi, edi
	cmp	edx, esi
	mov	rsp, rsp
	jle	.label_3521
	lea	rdi, [rdi]
	jmp	.label_3535
.label_3555:
	mov	rax, qword ptr [rbp - 0x450]
	nop	
	mov	cl, al
	movsx	edx, cl
	cmp	edx, 0
	lea	rdi, [rdi]
	jge	.label_3572
	mov	rax, qword ptr [rbp - 0x488]
	mov	rsp, rsp
	mov	cl, al
	mov	rsp, rsp
	movsx	edx, cl
	mov	rax, qword ptr [rbp - 0x488]
	mov	cl, al
	movsx	esi, cl
	nop	
	mov	rax, qword ptr [rbp - 0x450]
	mov	cl, al
	movsx	edi, cl
	add	esi, edi
	cmp	edx, esi
	mov	rbp, rbp
	jle	.label_3521
	mov	rsp, rsp
	jmp	.label_3535
.label_3572:
	mov	rax, qword ptr [rbp - 0x488]
	mov	rsp, rsp
	mov	cl, al
	lea	rdi, [rdi]
	movsx	edx, cl
	mov	rax, qword ptr [rbp - 0x450]
	mov	cl, al
	lea	rsi, [rsi]
	movsx	esi, cl
	nop	
	add	edx, esi
	mov	rax, qword ptr [rbp - 0x450]
	lea	rsi, [rsi]
	mov	cl, al
	mov	rbp, rbp
	movsx	esi, cl
	cmp	edx, esi
	jl	.label_3521
.label_3535:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x488]
	mov	cl, al
	movsx	edx, cl
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x450]
	mov	cl, al
	mov	rbp, rbp
	movsx	esi, cl
	add	edx, esi
	nop	
	cmp	edx, -0x80
	jl	.label_3521
	nop	
	mov	eax, 0x7f
	mov	rcx, qword ptr [rbp - 0x488]
	mov	dl, cl
	movsx	esi, dl
	nop	
	mov	rcx, qword ptr [rbp - 0x450]
	mov	dl, cl
	lea	rsi, [rsi]
	movsx	edi, dl
	lea	rsi, [rsi]
	add	esi, edi
	cmp	eax, esi
	jge	.label_3607
.label_3521:
	mov	al, 1
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x488]
	mov	dl, cl
	movsx	esi, dl
	mov	rcx, qword ptr [rbp - 0x450]
	nop	
	mov	dl, cl
	movsx	edi, dl
	mov	rsp, rsp
	add	esi, edi
	mov	dl, sil
	lea	rdi, [rdi]
	movsx	rcx, dl
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x710], rcx
	nop	
	test	al, 1
	jne	.label_1905
	jmp	.label_1926
.label_3607:
	mov	rbp, rbp
	xor	eax, eax
	mov	cl, al
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x488]
	lea	rsi, [rsi]
	mov	sil, dl
	movsx	eax, sil
	mov	rdx, qword ptr [rbp - 0x450]
	mov	sil, dl
	movsx	edi, sil
	add	eax, edi
	mov	sil, al
	movsx	rdx, sil
	mov	qword ptr [rbp - 0x710], rdx
	mov	rsp, rsp
	test	cl, 1
	mov	rbp, rbp
	jne	.label_1905
	jmp	.label_1926
.label_3508:
	mov	al, 1
	mov	rsp, rsp
	test	al, 1
	jne	.label_3658
	nop	
	jmp	.label_3663
.label_3658:
	nop	
	cmp	qword ptr [rbp - 0x450], 0
	lea	rdi, [rdi]
	jge	.label_2444
	nop	
	movabs	rax, 0x8000000000000000
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x488]
	sub	rax, qword ptr [rbp - 0x450]
	cmp	rcx, rax
	nop	
	jl	.label_3670
	nop	
	jmp	.label_2601
.label_2444:
	mov	rbp, rbp
	movabs	rax, 0x7fffffffffffffff
	nop	
	sub	rax, qword ptr [rbp - 0x450]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rbp - 0x488]
	jl	.label_3670
	jmp	.label_2601
.label_3663:
	cmp	qword ptr [rbp - 0x488], 0
	mov	rbp, rbp
	jge	.label_3682
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x450]
	mov	rcx, qword ptr [rbp - 0x488]
	mov	rsp, rsp
	add	rcx, qword ptr [rbp - 0x450]
	cmp	rax, rcx
	mov	rsp, rsp
	jle	.label_3670
	lea	rdi, [rdi]
	jmp	.label_2601
.label_3682:
	nop	
	cmp	qword ptr [rbp - 0x450], 0
	nop	
	jge	.label_3693
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x488]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x488]
	mov	rbp, rbp
	add	rcx, qword ptr [rbp - 0x450]
	mov	rbp, rbp
	cmp	rax, rcx
	jle	.label_3670
	jmp	.label_2601
.label_3693:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x488]
	mov	rbp, rbp
	add	rax, qword ptr [rbp - 0x450]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rbp - 0x450]
	jl	.label_3670
.label_2601:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x488]
	lea	rsi, [rsi]
	add	rax, qword ptr [rbp - 0x450]
	lea	rsi, [rsi]
	cmp	rax, -0x80
	jl	.label_3670
	lea	rsi, [rsi]
	mov	eax, 0x7f
	lea	rsi, [rsi]
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x488]
	add	rdx, qword ptr [rbp - 0x450]
	lea	rdi, [rdi]
	cmp	rcx, rdx
	jge	.label_3716
.label_3670:
	nop	
	mov	al, 1
	mov	rcx, qword ptr [rbp - 0x488]
	mov	edx, ecx
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x450]
	mov	esi, ecx
	mov	rsp, rsp
	add	edx, esi
	lea	rsi, [rsi]
	mov	dil, dl
	lea	rdi, [rdi]
	movsx	rcx, dil
	nop	
	mov	qword ptr [rbp - 0x710], rcx
	test	al, 1
	jne	.label_1905
	jmp	.label_1926
.label_3716:
	xor	eax, eax
	mov	rbp, rbp
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x488]
	mov	eax, edx
	mov	rdx, qword ptr [rbp - 0x450]
	lea	rdi, [rdi]
	mov	esi, edx
	add	eax, esi
	mov	dil, al
	movsx	rdx, dil
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x710], rdx
	mov	rsp, rsp
	test	cl, 1
	lea	rsi, [rsi]
	jne	.label_1905
	nop	
	jmp	.label_1926
.label_3505:
	lea	rdi, [rdi]
	xor	eax, eax
	mov	rbp, rbp
	mov	cl, al
	lea	rdi, [rdi]
	test	cl, 1
	mov	rsp, rsp
	jne	.label_3755
	jmp	.label_3759
.label_3755:
	xor	eax, eax
	lea	rdi, [rdi]
	mov	cl, al
	lea	rsi, [rsi]
	test	cl, 1
	jne	.label_3760
	jmp	.label_3764
.label_3760:
	mov	al, 1
	test	al, 1
	nop	
	jne	.label_3765
	jmp	.label_3766
.label_3765:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x450]
	mov	cx, ax
	movsx	edx, cx
	lea	rsi, [rsi]
	cmp	edx, 0
	lea	rdi, [rdi]
	jge	.label_3244
	mov	eax, 0x80000000
	nop	
	mov	rcx, qword ptr [rbp - 0x488]
	mov	dx, cx
	movsx	esi, dx
	mov	rcx, qword ptr [rbp - 0x450]
	mov	dx, cx
	mov	rsp, rsp
	movsx	edi, dx
	sub	eax, edi
	cmp	esi, eax
	lea	rdi, [rdi]
	jl	.label_3695
	mov	rsp, rsp
	jmp	.label_3780
.label_3244:
	mov	rbp, rbp
	mov	eax, 0x7fffffff
	mov	rcx, qword ptr [rbp - 0x450]
	mov	dx, cx
	movsx	esi, dx
	sub	eax, esi
	nop	
	mov	rcx, qword ptr [rbp - 0x488]
	nop	
	mov	dx, cx
	movsx	esi, dx
	nop	
	cmp	eax, esi
	mov	rbp, rbp
	jl	.label_3695
	jmp	.label_3780
.label_3766:
	mov	rax, qword ptr [rbp - 0x488]
	mov	cx, ax
	movsx	edx, cx
	mov	rbp, rbp
	cmp	edx, 0
	nop	
	jge	.label_3792
	nop	
	mov	rax, qword ptr [rbp - 0x450]
	mov	rbp, rbp
	mov	cx, ax
	movsx	edx, cx
	mov	rax, qword ptr [rbp - 0x488]
	mov	cx, ax
	nop	
	movsx	esi, cx
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x450]
	lea	rsi, [rsi]
	mov	cx, ax
	nop	
	movsx	edi, cx
	mov	rsp, rsp
	add	esi, edi
	cmp	edx, esi
	jle	.label_3695
	mov	rsp, rsp
	jmp	.label_3780
.label_3792:
	mov	rax, qword ptr [rbp - 0x450]
	mov	cx, ax
	movsx	edx, cx
	lea	rdi, [rdi]
	cmp	edx, 0
	nop	
	jge	.label_3568
	mov	rax, qword ptr [rbp - 0x488]
	lea	rdi, [rdi]
	mov	cx, ax
	mov	rsp, rsp
	movsx	edx, cx
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x488]
	mov	cx, ax
	movsx	esi, cx
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x450]
	mov	cx, ax
	lea	rdi, [rdi]
	movsx	edi, cx
	mov	rbp, rbp
	add	esi, edi
	nop	
	cmp	edx, esi
	mov	rbp, rbp
	jle	.label_3695
	lea	rdi, [rdi]
	jmp	.label_3780
.label_3568:
	mov	rax, qword ptr [rbp - 0x488]
	mov	cx, ax
	movsx	edx, cx
	mov	rax, qword ptr [rbp - 0x450]
	mov	rsp, rsp
	mov	cx, ax
	nop	
	movsx	esi, cx
	mov	rbp, rbp
	add	edx, esi
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x450]
	mov	cx, ax
	lea	rdi, [rdi]
	movsx	esi, cx
	cmp	edx, esi
	nop	
	jl	.label_3695
.label_3780:
	mov	rax, qword ptr [rbp - 0x488]
	lea	rdi, [rdi]
	mov	cx, ax
	mov	rbp, rbp
	movsx	edx, cx
	mov	rax, qword ptr [rbp - 0x450]
	lea	rsi, [rsi]
	mov	cx, ax
	movsx	esi, cx
	add	edx, esi
	mov	rsp, rsp
	cmp	edx, 0xffff8000
	jl	.label_3695
	lea	rsi, [rsi]
	mov	eax, 0x7fff
	mov	rcx, qword ptr [rbp - 0x488]
	nop	
	mov	dx, cx
	mov	rsp, rsp
	movsx	esi, dx
.label_5204:
	mov	rcx, qword ptr [rbp - 0x450]
	mov	dx, cx
	mov	rbp, rbp
	movsx	edi, dx
	add	esi, edi
	cmp	eax, esi
	lea	rsi, [rsi]
	jge	.label_3864
.label_3695:
	mov	rsp, rsp
	mov	al, 1
	mov	rcx, qword ptr [rbp - 0x488]
	lea	rdi, [rdi]
	mov	dx, cx
	mov	rbp, rbp
	movsx	esi, dx
	mov	rcx, qword ptr [rbp - 0x450]
	lea	rdi, [rdi]
	mov	dx, cx
	movsx	edi, dx
	add	esi, edi
	mov	dx, si
	movsx	rcx, dx
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x710], rcx
	lea	rdi, [rdi]
	test	al, 1
	jne	.label_1905
	jmp	.label_1926
.label_3864:
	mov	rsp, rsp
	xor	eax, eax
	mov	rbp, rbp
	mov	cl, al
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x488]
	mov	rbp, rbp
	mov	si, dx
	nop	
	movsx	eax, si
	mov	rdx, qword ptr [rbp - 0x450]
	mov	si, dx
	movsx	edi, si
	lea	rdi, [rdi]
	add	eax, edi
	mov	si, ax
	lea	rsi, [rsi]
	movsx	rdx, si
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x710], rdx
	nop	
	test	cl, 1
	jne	.label_1905
	lea	rsi, [rsi]
	jmp	.label_1926
.label_3764:
	mov	al, 1
	mov	rbp, rbp
	test	al, 1
	jne	.label_1948
	lea	rsi, [rsi]
	jmp	.label_1953
.label_1948:
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x450], 0
	jge	.label_1955
	nop	
	movabs	rax, 0x8000000000000000
	mov	rcx, qword ptr [rbp - 0x488]
	sub	rax, qword ptr [rbp - 0x450]
	lea	rdi, [rdi]
	cmp	rcx, rax
	jl	.label_1963
	nop	
	jmp	.label_1988
.label_1955:
	nop	
	movabs	rax, 0x7fffffffffffffff
	sub	rax, qword ptr [rbp - 0x450]
	cmp	rax, qword ptr [rbp - 0x488]
	jl	.label_1963
	jmp	.label_1988
.label_1953:
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0x488], 0
	jge	.label_1989
	nop	
	mov	rax, qword ptr [rbp - 0x450]
	mov	rcx, qword ptr [rbp - 0x488]
	nop	
	add	rcx, qword ptr [rbp - 0x450]
	cmp	rax, rcx
	jle	.label_1963
	mov	rsp, rsp
	jmp	.label_1988
.label_1989:
	cmp	qword ptr [rbp - 0x450], 0
	jge	.label_2488
	mov	rax, qword ptr [rbp - 0x488]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x488]
	add	rcx, qword ptr [rbp - 0x450]
	cmp	rax, rcx
	jle	.label_1963
	mov	rbp, rbp
	jmp	.label_1988
.label_2488:
	mov	rax, qword ptr [rbp - 0x488]
	add	rax, qword ptr [rbp - 0x450]
	mov	rbp, rbp
	cmp	rax, qword ptr [rbp - 0x450]
	mov	rbp, rbp
	jl	.label_1963
.label_1988:
	mov	rax, qword ptr [rbp - 0x488]
	mov	rsp, rsp
	add	rax, qword ptr [rbp - 0x450]
	cmp	rax, -0x8000
	nop	
	jl	.label_1963
	nop	
	mov	eax, 0x7fff
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x488]
	lea	rsi, [rsi]
	add	rdx, qword ptr [rbp - 0x450]
	cmp	rcx, rdx
	mov	rbp, rbp
	jge	.label_2031
.label_1963:
	mov	al, 1
	nop	
	mov	rcx, qword ptr [rbp - 0x488]
	nop	
	mov	edx, ecx
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x450]
	mov	esi, ecx
	add	edx, esi
	mov	di, dx
	mov	rsp, rsp
	movsx	rcx, di
	mov	qword ptr [rbp - 0x710], rcx
	test	al, 1
	mov	rbp, rbp
	jne	.label_1905
	nop	
	jmp	.label_1926
.label_2031:
	xor	eax, eax
	mov	rbp, rbp
	mov	cl, al
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x488]
	nop	
	mov	eax, edx
	mov	rdx, qword ptr [rbp - 0x450]
	nop	
	mov	esi, edx
	nop	
	add	eax, esi
	lea	rdi, [rdi]
	mov	di, ax
	movsx	rdx, di
	mov	qword ptr [rbp - 0x710], rdx
	test	cl, 1
	lea	rdi, [rdi]
	jne	.label_1905
	lea	rsi, [rsi]
	jmp	.label_1926
.label_3759:
	xor	eax, eax
	nop	
	mov	cl, al
	lea	rdi, [rdi]
	test	cl, 1
	mov	rsp, rsp
	jne	.label_2063
	mov	rbp, rbp
	jmp	.label_2071
.label_2063:
	lea	rdi, [rdi]
	xor	eax, eax
	lea	rsi, [rsi]
	mov	cl, al
	lea	rdi, [rdi]
	test	cl, 1
	lea	rsi, [rsi]
	jne	.label_2074
	jmp	.label_2087
.label_2074:
	mov	rsp, rsp
	mov	al, 1
	mov	rbp, rbp
	test	al, 1
	jne	.label_2090
	lea	rdi, [rdi]
	jmp	.label_2094
.label_2090:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x450]
	lea	rsi, [rsi]
	mov	ecx, eax
	cmp	ecx, 0
	lea	rdi, [rdi]
	jge	.label_2097
	mov	eax, 0x80000000
	mov	rcx, qword ptr [rbp - 0x488]
	mov	rsp, rsp
	mov	edx, ecx
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x450]
	lea	rsi, [rsi]
	mov	esi, ecx
	lea	rsi, [rsi]
	sub	eax, esi
	cmp	edx, eax
	jl	.label_2101
	lea	rdi, [rdi]
	jmp	.label_2110
.label_2097:
	mov	eax, 0x7fffffff
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x450]
	mov	rsp, rsp
	mov	edx, ecx
	sub	eax, edx
	mov	rcx, qword ptr [rbp - 0x488]
	lea	rsi, [rsi]
	mov	edx, ecx
	cmp	eax, edx
	jl	.label_2101
	jmp	.label_2110
.label_2094:
	mov	rax, qword ptr [rbp - 0x488]
	mov	ecx, eax
	cmp	ecx, 0
	nop	
	jge	.label_2128
	mov	rax, qword ptr [rbp - 0x450]
	mov	ecx, eax
	mov	rax, qword ptr [rbp - 0x488]
	mov	edx, eax
	mov	rax, qword ptr [rbp - 0x450]
	mov	esi, eax
	nop	
	add	edx, esi
	mov	rsp, rsp
	cmp	ecx, edx
	mov	rsp, rsp
	jle	.label_2101
	jmp	.label_2110
.label_2128:
	mov	rax, qword ptr [rbp - 0x450]
	mov	ecx, eax
	mov	rsp, rsp
	cmp	ecx, 0
	mov	rbp, rbp
	jge	.label_2140
	mov	rax, qword ptr [rbp - 0x488]
	nop	
	mov	ecx, eax
	mov	rax, qword ptr [rbp - 0x488]
	nop	
	mov	edx, eax
	nop	
	mov	rax, qword ptr [rbp - 0x450]
	mov	rbp, rbp
	mov	esi, eax
	add	edx, esi
	cmp	ecx, edx
	jle	.label_2101
	jmp	.label_2110
.label_2140:
	mov	rax, qword ptr [rbp - 0x488]
	mov	ecx, eax
	mov	rax, qword ptr [rbp - 0x450]
	lea	rdi, [rdi]
	mov	edx, eax
	mov	rsp, rsp
	add	ecx, edx
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x450]
	mov	edx, eax
	lea	rdi, [rdi]
	cmp	ecx, edx
	jl	.label_2101
.label_2110:
	nop	
	mov	rax, qword ptr [rbp - 0x488]
	mov	ecx, eax
	nop	
	mov	rax, qword ptr [rbp - 0x450]
	mov	rbp, rbp
	mov	edx, eax
	mov	rbp, rbp
	add	ecx, edx
	cmp	ecx, 0x80000000
	jl	.label_2101
	nop	
	mov	eax, 0x7fffffff
	mov	rcx, qword ptr [rbp - 0x488]
	nop	
	mov	edx, ecx
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x450]
	lea	rdi, [rdi]
	mov	esi, ecx
	mov	rbp, rbp
	add	edx, esi
	cmp	eax, edx
	nop	
	jge	.label_2186
.label_2101:
	mov	rsp, rsp
	mov	al, 1
	mov	rcx, qword ptr [rbp - 0x488]
	lea	rsi, [rsi]
	mov	edx, ecx
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x450]
	lea	rsi, [rsi]
	mov	esi, ecx
	add	edx, esi
	movsxd	rcx, edx
	mov	qword ptr [rbp - 0x710], rcx
	lea	rdi, [rdi]
	test	al, 1
	jne	.label_1905
	lea	rdi, [rdi]
	jmp	.label_1926
.label_2186:
	xor	eax, eax
	lea	rsi, [rsi]
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x488]
	nop	
	mov	eax, edx
	mov	rdx, qword ptr [rbp - 0x450]
	lea	rdi, [rdi]
	mov	esi, edx
	add	eax, esi
	movsxd	rdx, eax
	mov	qword ptr [rbp - 0x710], rdx
	test	cl, 1
	lea	rsi, [rsi]
	jne	.label_1905
	lea	rdi, [rdi]
	jmp	.label_1926
.label_2087:
	mov	rbp, rbp
	mov	al, 1
	lea	rdi, [rdi]
	test	al, 1
	lea	rdi, [rdi]
	jne	.label_2235
	lea	rsi, [rsi]
	jmp	.label_2240
.label_2235:
	cmp	qword ptr [rbp - 0x450], 0
	jge	.label_2242
	movabs	rax, 0x8000000000000000
	mov	rcx, qword ptr [rbp - 0x488]
	sub	rax, qword ptr [rbp - 0x450]
	lea	rsi, [rsi]
	cmp	rcx, rax
	jl	.label_2117
	mov	rbp, rbp
	jmp	.label_1927
.label_2242:
	lea	rdi, [rdi]
	movabs	rax, 0x7fffffffffffffff
	lea	rsi, [rsi]
	sub	rax, qword ptr [rbp - 0x450]
	nop	
	cmp	rax, qword ptr [rbp - 0x488]
	mov	rbp, rbp
	jl	.label_2117
	nop	
	jmp	.label_1927
.label_2240:
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x488], 0
	jge	.label_3602
	mov	rax, qword ptr [rbp - 0x450]
	mov	rcx, qword ptr [rbp - 0x488]
	lea	rdi, [rdi]
	add	rcx, qword ptr [rbp - 0x450]
	cmp	rax, rcx
	jle	.label_2117
	jmp	.label_1927
.label_3602:
	cmp	qword ptr [rbp - 0x450], 0
	jge	.label_2286
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x488]
	mov	rcx, qword ptr [rbp - 0x488]
	mov	rbp, rbp
	add	rcx, qword ptr [rbp - 0x450]
	mov	rbp, rbp
	cmp	rax, rcx
	jle	.label_2117
	jmp	.label_1927
.label_2286:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x488]
	add	rax, qword ptr [rbp - 0x450]
	cmp	rax, qword ptr [rbp - 0x450]
	lea	rdi, [rdi]
	jl	.label_2117
.label_1927:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x488]
	nop	
	add	rax, qword ptr [rbp - 0x450]
	mov	rbp, rbp
	cmp	rax, -0x80000000
	jl	.label_2117
	nop	
	mov	eax, 0x7fffffff
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x488]
	lea	rdi, [rdi]
	add	rdx, qword ptr [rbp - 0x450]
	nop	
	cmp	rcx, rdx
	lea	rsi, [rsi]
	jge	.label_2310
.label_2117:
	mov	al, 1
	mov	rcx, qword ptr [rbp - 0x488]
	mov	edx, ecx
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x450]
	mov	esi, ecx
	lea	rsi, [rsi]
	add	edx, esi
	movsxd	rcx, edx
	mov	qword ptr [rbp - 0x710], rcx
	test	al, 1
	jne	.label_1905
	jmp	.label_1926
.label_2310:
	mov	rsp, rsp
	xor	eax, eax
	lea	rsi, [rsi]
	mov	cl, al
	nop	
	mov	rdx, qword ptr [rbp - 0x488]
	mov	rsp, rsp
	mov	eax, edx
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x450]
	nop	
	mov	esi, edx
	add	eax, esi
	movsxd	rdx, eax
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x710], rdx
	test	cl, 1
	jne	.label_1905
	jmp	.label_1926
.label_2071:
	mov	al, 1
	test	al, 1
	mov	rbp, rbp
	jne	.label_2355
	mov	rbp, rbp
	jmp	.label_2361
.label_2355:
	lea	rsi, [rsi]
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	mov	rsp, rsp
	jne	.label_2365
	lea	rsi, [rsi]
	jmp	.label_2373
.label_2365:
	mov	al, 1
	mov	rsp, rsp
	test	al, 1
	jne	.label_2376
	jmp	.label_2569
.label_2376:
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x450], 0
	jge	.label_2574
	lea	rsi, [rsi]
	movabs	rax, 0x8000000000000000
	mov	rcx, qword ptr [rbp - 0x488]
	sub	rax, qword ptr [rbp - 0x450]
	lea	rsi, [rsi]
	cmp	rcx, rax
	jl	.label_2385
	jmp	.label_2397
.label_2574:
	nop	
	movabs	rax, 0x7fffffffffffffff
	sub	rax, qword ptr [rbp - 0x450]
	nop	
	cmp	rax, qword ptr [rbp - 0x488]
	jl	.label_2385
	lea	rdi, [rdi]
	jmp	.label_2397
.label_2569:
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x488], 0
	jge	.label_2405
	mov	rax, qword ptr [rbp - 0x450]
	mov	rcx, qword ptr [rbp - 0x488]
	add	rcx, qword ptr [rbp - 0x450]
	nop	
	cmp	rax, rcx
	mov	rbp, rbp
	jle	.label_2385
	jmp	.label_2397
.label_2405:
	nop	
	cmp	qword ptr [rbp - 0x450], 0
	jge	.label_2416
	mov	rax, qword ptr [rbp - 0x488]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x488]
	nop	
	add	rcx, qword ptr [rbp - 0x450]
	cmp	rax, rcx
	jle	.label_2385
	nop	
	jmp	.label_2397
.label_2416:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x488]
	add	rax, qword ptr [rbp - 0x450]
	cmp	rax, qword ptr [rbp - 0x450]
	lea	rdi, [rdi]
	jl	.label_2385
.label_2397:
	movabs	rax, 0x8000000000000000
	mov	rcx, qword ptr [rbp - 0x488]
	nop	
	add	rcx, qword ptr [rbp - 0x450]
	lea	rsi, [rsi]
	cmp	rcx, rax
	nop	
	jl	.label_2385
	mov	rbp, rbp
	movabs	rax, 0x7fffffffffffffff
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x488]
	nop	
	add	rcx, qword ptr [rbp - 0x450]
	nop	
	cmp	rax, rcx
	lea	rdi, [rdi]
	jge	.label_2451
.label_2385:
	mov	rsp, rsp
	mov	al, 1
	mov	rcx, qword ptr [rbp - 0x488]
	lea	rsi, [rsi]
	add	rcx, qword ptr [rbp - 0x450]
	nop	
	mov	qword ptr [rbp - 0x710], rcx
	mov	rbp, rbp
	test	al, 1
	jne	.label_1905
	jmp	.label_1926
.label_2451:
	xor	eax, eax
	mov	cl, al
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x488]
	mov	rbp, rbp
	add	rdx, qword ptr [rbp - 0x450]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x710], rdx
	test	cl, 1
	mov	rbp, rbp
	jne	.label_1905
	jmp	.label_1926
.label_2373:
	mov	al, 1
	nop	
	test	al, 1
	jne	.label_2494
	mov	rbp, rbp
	jmp	.label_2496
.label_2494:
	nop	
	cmp	qword ptr [rbp - 0x450], 0
	mov	rbp, rbp
	jge	.label_2502
	mov	rbp, rbp
	movabs	rax, 0x8000000000000000
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x488]
	nop	
	sub	rax, qword ptr [rbp - 0x450]
	lea	rsi, [rsi]
	cmp	rcx, rax
	jl	.label_2518
	jmp	.label_2525
.label_2502:
	movabs	rax, 0x7fffffffffffffff
	sub	rax, qword ptr [rbp - 0x450]
	lea	rdi, [rdi]
	cmp	rax, qword ptr [rbp - 0x488]
	mov	rbp, rbp
	jl	.label_2518
	lea	rdi, [rdi]
	jmp	.label_2525
.label_2496:
	nop	
	cmp	qword ptr [rbp - 0x488], 0
	mov	rbp, rbp
	jge	.label_3371
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x450]
	mov	rcx, qword ptr [rbp - 0x488]
	add	rcx, qword ptr [rbp - 0x450]
	cmp	rax, rcx
	lea	rsi, [rsi]
	jle	.label_2518
	jmp	.label_2525
.label_3371:
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x450], 0
	jge	.label_3053
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x488]
	mov	rcx, qword ptr [rbp - 0x488]
	add	rcx, qword ptr [rbp - 0x450]
	nop	
	cmp	rax, rcx
	jle	.label_2518
	jmp	.label_2525
.label_3053:
	mov	rax, qword ptr [rbp - 0x488]
	nop	
	add	rax, qword ptr [rbp - 0x450]
	lea	rdi, [rdi]
	cmp	rax, qword ptr [rbp - 0x450]
	jl	.label_2518
.label_2525:
	lea	rdi, [rdi]
	movabs	rax, 0x8000000000000000
	mov	rcx, qword ptr [rbp - 0x488]
	add	rcx, qword ptr [rbp - 0x450]
	cmp	rcx, rax
	lea	rsi, [rsi]
	jl	.label_2518
	movabs	rax, 0x7fffffffffffffff
	mov	rcx, qword ptr [rbp - 0x488]
	nop	
	add	rcx, qword ptr [rbp - 0x450]
	mov	rbp, rbp
	cmp	rax, rcx
	jge	.label_2572
.label_2518:
	lea	rdi, [rdi]
	mov	al, 1
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x488]
	add	rcx, qword ptr [rbp - 0x450]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x710], rcx
	lea	rsi, [rsi]
	test	al, 1
	jne	.label_1905
	lea	rdi, [rdi]
	jmp	.label_1926
.label_2572:
	lea	rdi, [rdi]
	xor	eax, eax
	nop	
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x488]
	lea	rsi, [rsi]
	add	rdx, qword ptr [rbp - 0x450]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x710], rdx
	mov	rbp, rbp
	test	cl, 1
	jne	.label_1905
	jmp	.label_1926
.label_2361:
	xor	eax, eax
	mov	cl, al
	nop	
	test	cl, 1
	jne	.label_2606
	lea	rdi, [rdi]
	jmp	.label_2611
.label_2606:
	lea	rsi, [rsi]
	mov	al, 1
	test	al, 1
	lea	rsi, [rsi]
	jne	.label_2614
	mov	rsp, rsp
	jmp	.label_2619
.label_2614:
	nop	
	cmp	qword ptr [rbp - 0x450], 0
	jge	.label_2622
	movabs	rax, 0x8000000000000000
	mov	rcx, qword ptr [rbp - 0x488]
	sub	rax, qword ptr [rbp - 0x450]
	lea	rsi, [rsi]
	cmp	rcx, rax
	mov	rsp, rsp
	jl	.label_2635
	jmp	.label_1959
.label_2622:
	movabs	rax, 0x7fffffffffffffff
	nop	
	sub	rax, qword ptr [rbp - 0x450]
	nop	
	cmp	rax, qword ptr [rbp - 0x488]
	jl	.label_2635
	mov	rsp, rsp
	jmp	.label_1959
.label_2619:
	nop	
	cmp	qword ptr [rbp - 0x488], 0
	lea	rsi, [rsi]
	jge	.label_2644
	mov	rax, qword ptr [rbp - 0x450]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x488]
	lea	rsi, [rsi]
	add	rcx, qword ptr [rbp - 0x450]
	mov	rsp, rsp
	cmp	rax, rcx
	jle	.label_2635
	lea	rsi, [rsi]
	jmp	.label_1959
.label_2644:
	cmp	qword ptr [rbp - 0x450], 0
	jge	.label_2553
	nop	
	mov	rax, qword ptr [rbp - 0x488]
	mov	rcx, qword ptr [rbp - 0x488]
	lea	rdi, [rdi]
	add	rcx, qword ptr [rbp - 0x450]
	mov	rsp, rsp
	cmp	rax, rcx
	mov	rbp, rbp
	jle	.label_2635
	jmp	.label_1959
.label_2553:
	nop	
	mov	rax, qword ptr [rbp - 0x488]
	add	rax, qword ptr [rbp - 0x450]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rbp - 0x450]
	nop	
	jl	.label_2635
.label_1959:
	movabs	rax, 0x8000000000000000
	mov	rcx, qword ptr [rbp - 0x488]
	add	rcx, qword ptr [rbp - 0x450]
	mov	rbp, rbp
	cmp	rcx, rax
	nop	
	jl	.label_2635
	nop	
	movabs	rax, 0x7fffffffffffffff
	mov	rcx, qword ptr [rbp - 0x488]
	mov	rsp, rsp
	add	rcx, qword ptr [rbp - 0x450]
	cmp	rax, rcx
	lea	rdi, [rdi]
	jge	.label_3469
.label_2635:
	lea	rsi, [rsi]
	mov	al, 1
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x488]
	add	rcx, qword ptr [rbp - 0x450]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x710], rcx
	test	al, 1
	jne	.label_1905
	jmp	.label_1926
.label_3469:
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x488]
	add	rdx, qword ptr [rbp - 0x450]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x710], rdx
	lea	rdi, [rdi]
	test	cl, 1
	jne	.label_1905
	mov	rbp, rbp
	jmp	.label_1926
.label_2611:
	mov	al, 1
	test	al, 1
	mov	rbp, rbp
	jne	.label_2713
	jmp	.label_2570
.label_2713:
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x450], 0
	lea	rsi, [rsi]
	jge	.label_2717
	movabs	rax, 0x8000000000000000
	nop	
	mov	rcx, qword ptr [rbp - 0x488]
	mov	rbp, rbp
	sub	rax, qword ptr [rbp - 0x450]
	cmp	rcx, rax
	jl	.label_2722
	lea	rdi, [rdi]
	jmp	.label_2734
.label_2717:
	movabs	rax, 0x7fffffffffffffff
	mov	rsp, rsp
	sub	rax, qword ptr [rbp - 0x450]
	cmp	rax, qword ptr [rbp - 0x488]
	jl	.label_2722
	lea	rsi, [rsi]
	jmp	.label_2734
.label_2570:
	cmp	qword ptr [rbp - 0x488], 0
	jge	.label_2749
	mov	rax, qword ptr [rbp - 0x450]
	mov	rcx, qword ptr [rbp - 0x488]
	nop	
	add	rcx, qword ptr [rbp - 0x450]
	lea	rdi, [rdi]
	cmp	rax, rcx
	jle	.label_2722
	lea	rsi, [rsi]
	jmp	.label_2734
.label_2749:
	cmp	qword ptr [rbp - 0x450], 0
	jge	.label_2760
	mov	rax, qword ptr [rbp - 0x488]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x488]
	lea	rsi, [rsi]
	add	rcx, qword ptr [rbp - 0x450]
	lea	rdi, [rdi]
	cmp	rax, rcx
	jle	.label_2722
	jmp	.label_2734
.label_2760:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x488]
	add	rax, qword ptr [rbp - 0x450]
	cmp	rax, qword ptr [rbp - 0x450]
	lea	rsi, [rsi]
	jl	.label_2722
.label_2734:
	movabs	rax, 0x8000000000000000
	mov	rcx, qword ptr [rbp - 0x488]
	add	rcx, qword ptr [rbp - 0x450]
	mov	rsp, rsp
	cmp	rcx, rax
	jl	.label_2722
	lea	rdi, [rdi]
	movabs	rax, 0x7fffffffffffffff
	mov	rcx, qword ptr [rbp - 0x488]
	add	rcx, qword ptr [rbp - 0x450]
	mov	rsp, rsp
	cmp	rax, rcx
	mov	rsp, rsp
	jge	.label_3008
.label_2722:
	mov	al, 1
	mov	rcx, qword ptr [rbp - 0x488]
	add	rcx, qword ptr [rbp - 0x450]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x710], rcx
	test	al, 1
	lea	rsi, [rsi]
	jne	.label_1905
	jmp	.label_1926
.label_3008:
	mov	rsp, rsp
	xor	eax, eax
	mov	rbp, rbp
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x488]
	add	rdx, qword ptr [rbp - 0x450]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x710], rdx
	test	cl, 1
	mov	rbp, rbp
	jne	.label_1905
.label_1926:
	nop	
	xor	eax, eax
	mov	cl, al
	lea	rdi, [rdi]
	test	cl, 1
	jne	.label_2813
	jmp	.label_2820
.label_2813:
	mov	rbp, rbp
	xor	eax, eax
	nop	
	mov	cl, al
	lea	rsi, [rsi]
	test	cl, 1
	lea	rdi, [rdi]
	jne	.label_2821
	jmp	.label_2825
.label_2821:
	mov	rbp, rbp
	xor	eax, eax
	mov	cl, al
	nop	
	test	cl, 1
	jne	.label_2826
	lea	rdi, [rdi]
	jmp	.label_2829
.label_2826:
	mov	rax, qword ptr [rbp - 0xf8]
	mov	cl, al
	lea	rdi, [rdi]
	movsx	edx, cl
	cmp	edx, 0
	nop	
	jge	.label_2832
	mov	rax, qword ptr [rbp - 0xf8]
	mov	rbp, rbp
	mov	cl, al
	movsx	edx, cl
	lea	rdi, [rdi]
	cmp	edx, 0x2222222
	mov	rbp, rbp
	jl	.label_2824
	jmp	.label_2871
.label_2832:
	mov	rbp, rbp
	xor	eax, eax
	mov	rbp, rbp
	mov	cl, al
	mov	rsp, rsp
	test	cl, 1
	mov	rbp, rbp
	jne	.label_2846
	jmp	.label_2848
.label_2846:
	mov	rbp, rbp
	xor	eax, eax
	nop	
	mov	cl, al
	test	cl, 1
	jne	.label_2824
	lea	rsi, [rsi]
	jmp	.label_2871
.label_2848:
	mov	eax, 0xfdddddde
	mov	rcx, qword ptr [rbp - 0xf8]
	mov	dl, cl
	movsx	esi, dl
	cmp	eax, esi
	nop	
	jl	.label_2824
	mov	rsp, rsp
	jmp	.label_2871
.label_2829:
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_2872
	mov	rbp, rbp
	jmp	.label_2350
.label_2872:
	xor	eax, eax
	mov	cl, al
	nop	
	test	cl, 1
	lea	rdi, [rdi]
	jne	.label_2824
	jmp	.label_2871
.label_2350:
	mov	rax, qword ptr [rbp - 0xf8]
	nop	
	mov	cl, al
	movsx	edx, cl
	mov	rsp, rsp
	cmp	edx, 0
	lea	rsi, [rsi]
	jge	.label_2886
	mov	rax, qword ptr [rbp - 0xf8]
	nop	
	mov	cl, al
	mov	rsp, rsp
	movsx	edx, cl
	cmp	edx, 0xfdddddde
	jl	.label_2824
	jmp	.label_2871
.label_2886:
	mov	eax, 0x2222222
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0xf8]
	lea	rdi, [rdi]
	mov	dl, cl
	nop	
	movsx	esi, dl
	cmp	eax, esi
	mov	rbp, rbp
	jl	.label_2824
.label_2871:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0xf8]
	mov	rsp, rsp
	mov	cl, al
	movsx	edx, cl
	imul	edx, edx, 0x3c
	lea	rsi, [rsi]
	cmp	edx, -0x80
	lea	rsi, [rsi]
	jl	.label_2824
	mov	eax, 0x7f
	mov	rcx, qword ptr [rbp - 0xf8]
	nop	
	mov	dl, cl
	movsx	esi, dl
	imul	esi, esi, 0x3c
	mov	rbp, rbp
	cmp	eax, esi
	lea	rsi, [rsi]
	jge	.label_2919
.label_2824:
	mov	al, 1
	mov	rcx, qword ptr [rbp - 0xf8]
	mov	dl, cl
	movsx	esi, dl
	lea	rsi, [rsi]
	imul	esi, esi, 0x3c
	lea	rsi, [rsi]
	mov	dl, sil
	lea	rsi, [rsi]
	movsx	rcx, dl
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x8f0], rcx
	test	al, 1
	jne	.label_1905
	mov	rbp, rbp
	jmp	.label_1928
.label_2919:
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0xf8]
	mov	sil, dl
	movsx	eax, sil
	mov	rbp, rbp
	imul	eax, eax, 0x3c
	lea	rdi, [rdi]
	mov	sil, al
	movsx	rdx, sil
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x8f0], rdx
	test	cl, 1
	mov	rsp, rsp
	jne	.label_1905
	jmp	.label_1928
.label_2825:
	xor	eax, eax
	lea	rsi, [rsi]
	mov	cl, al
	mov	rsp, rsp
	test	cl, 1
	jne	.label_1958
	lea	rdi, [rdi]
	jmp	.label_1996
.label_1958:
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0xf8], 0
	lea	rsi, [rsi]
	jge	.label_2965
	lea	rsi, [rsi]
	movabs	rax, 0x222222222222222
	cmp	qword ptr [rbp - 0xf8], rax
	lea	rdi, [rdi]
	jl	.label_2971
	jmp	.label_2218
.label_2965:
	xor	eax, eax
	mov	rsp, rsp
	mov	cl, al
	test	cl, 1
	lea	rdi, [rdi]
	jne	.label_2085
	jmp	.label_2992
.label_2085:
	xor	eax, eax
	lea	rsi, [rsi]
	mov	cl, al
	mov	rsp, rsp
	test	cl, 1
	jne	.label_2971
	mov	rsp, rsp
	jmp	.label_2218
.label_2992:
	movabs	rax, 0xfdddddddddddddde
	mov	rbp, rbp
	cmp	rax, qword ptr [rbp - 0xf8]
	mov	rbp, rbp
	jl	.label_2971
	lea	rdi, [rdi]
	jmp	.label_2218
.label_1996:
	xor	eax, eax
	mov	rbp, rbp
	mov	cl, al
	test	cl, 1
	nop	
	jne	.label_3009
	lea	rdi, [rdi]
	jmp	.label_3014
.label_3009:
	xor	eax, eax
	mov	rsp, rsp
	mov	cl, al
	nop	
	test	cl, 1
	nop	
	jne	.label_2971
	jmp	.label_2218
.label_3014:
	nop	
	cmp	qword ptr [rbp - 0xf8], 0
	nop	
	jge	.label_2297
	mov	rsp, rsp
	movabs	rax, 0xfdddddddddddddde
	cmp	qword ptr [rbp - 0xf8], rax
	mov	rbp, rbp
	jl	.label_2971
	nop	
	jmp	.label_2218
.label_2297:
	movabs	rax, 0x222222222222222
	mov	rbp, rbp
	cmp	rax, qword ptr [rbp - 0xf8]
	jl	.label_2971
.label_2218:
	lea	rsi, [rsi]
	imul	rax, qword ptr [rbp - 0xf8], 0x3c
	cmp	rax, -0x80
	jl	.label_2971
	lea	rsi, [rsi]
	mov	eax, 0x7f
	mov	rbp, rbp
	mov	ecx, eax
	nop	
	imul	rdx, qword ptr [rbp - 0xf8], 0x3c
	cmp	rcx, rdx
	jge	.label_3041
.label_2971:
	lea	rsi, [rsi]
	mov	al, 1
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0xf8]
	mov	edx, ecx
	imul	edx, edx, 0x3c
	mov	sil, dl
	lea	rsi, [rsi]
	movsx	rcx, sil
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x8f0], rcx
	nop	
	test	al, 1
	lea	rsi, [rsi]
	jne	.label_1905
	jmp	.label_1928
.label_3041:
	xor	eax, eax
	mov	rbp, rbp
	mov	cl, al
	nop	
	mov	rdx, qword ptr [rbp - 0xf8]
	lea	rsi, [rsi]
	mov	eax, edx
	mov	rsp, rsp
	imul	eax, eax, 0x3c
	mov	sil, al
	mov	rbp, rbp
	movsx	rdx, sil
	mov	qword ptr [rbp - 0x8f0], rdx
	test	cl, 1
	jne	.label_1905
	lea	rdi, [rdi]
	jmp	.label_1928
.label_2820:
	xor	eax, eax
	lea	rdi, [rdi]
	mov	cl, al
	mov	rsp, rsp
	test	cl, 1
	lea	rdi, [rdi]
	jne	.label_3067
	jmp	.label_3072
.label_3067:
	xor	eax, eax
	mov	rsp, rsp
	mov	cl, al
	mov	rsp, rsp
	test	cl, 1
	lea	rdi, [rdi]
	jne	.label_3073
	lea	rdi, [rdi]
	jmp	.label_3081
.label_3073:
	xor	eax, eax
	lea	rsi, [rsi]
	mov	cl, al
	test	cl, 1
	mov	rbp, rbp
	jne	.label_2764
	lea	rdi, [rdi]
	jmp	.label_3090
.label_2764:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0xf8]
	mov	cx, ax
	movsx	edx, cx
	cmp	edx, 0
	mov	rbp, rbp
	jge	.label_3703
	mov	rax, qword ptr [rbp - 0xf8]
	mov	cx, ax
	movsx	edx, cx
	cmp	edx, 0x2222222
	jl	.label_2418
	jmp	.label_3021
.label_3703:
	xor	eax, eax
	mov	cl, al
	mov	rbp, rbp
	test	cl, 1
	mov	rsp, rsp
	jne	.label_2145
	jmp	.label_3107
.label_2145:
	lea	rdi, [rdi]
	xor	eax, eax
	lea	rdi, [rdi]
	mov	cl, al
	test	cl, 1
	nop	
	jne	.label_2418
	jmp	.label_3021
.label_3107:
	mov	eax, 0xfdddddde
	mov	rcx, qword ptr [rbp - 0xf8]
	mov	dx, cx
	mov	rsp, rsp
	movsx	esi, dx
	nop	
	cmp	eax, esi
	mov	rbp, rbp
	jl	.label_2418
	lea	rdi, [rdi]
	jmp	.label_3021
.label_3090:
	xor	eax, eax
	lea	rdi, [rdi]
	mov	cl, al
	test	cl, 1
	jne	.label_3130
	lea	rdi, [rdi]
	jmp	.label_2956
.label_3130:
	xor	eax, eax
	mov	cl, al
	mov	rbp, rbp
	test	cl, 1
	lea	rsi, [rsi]
	jne	.label_2418
	jmp	.label_3021
.label_2956:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0xf8]
	lea	rdi, [rdi]
	mov	cx, ax
	nop	
	movsx	edx, cx
	nop	
	cmp	edx, 0
	lea	rsi, [rsi]
	jge	.label_3093
	mov	rax, qword ptr [rbp - 0xf8]
	mov	cx, ax
	lea	rdi, [rdi]
	movsx	edx, cx
	lea	rsi, [rsi]
	cmp	edx, 0xfdddddde
	jl	.label_2418
	lea	rdi, [rdi]
	jmp	.label_3021
.label_3093:
	lea	rdi, [rdi]
	mov	eax, 0x2222222
	mov	rcx, qword ptr [rbp - 0xf8]
	mov	dx, cx
	lea	rsi, [rsi]
	movsx	esi, dx
	cmp	eax, esi
	jl	.label_2418
.label_3021:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0xf8]
	mov	cx, ax
	lea	rsi, [rsi]
	movsx	edx, cx
	imul	edx, edx, 0x3c
	cmp	edx, 0xffff8000
	jl	.label_2418
	mov	rbp, rbp
	mov	eax, 0x7fff
	nop	
	mov	rcx, qword ptr [rbp - 0xf8]
	mov	dx, cx
	movsx	esi, dx
	lea	rdi, [rdi]
	imul	esi, esi, 0x3c
	nop	
	cmp	eax, esi
	jge	.label_3161
.label_2418:
	nop	
	mov	al, 1
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0xf8]
	mov	dx, cx
	nop	
	movsx	esi, dx
	mov	rsp, rsp
	imul	esi, esi, 0x3c
	mov	dx, si
	mov	rsp, rsp
	movsx	rcx, dx
	nop	
	mov	qword ptr [rbp - 0x8f0], rcx
	test	al, 1
	mov	rsp, rsp
	jne	.label_1905
	mov	rsp, rsp
	jmp	.label_1928
.label_3161:
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0xf8]
	mov	rsp, rsp
	mov	si, dx
	movsx	eax, si
	lea	rsi, [rsi]
	imul	eax, eax, 0x3c
	nop	
	mov	si, ax
	movsx	rdx, si
	nop	
	mov	qword ptr [rbp - 0x8f0], rdx
	lea	rdi, [rdi]
	test	cl, 1
	nop	
	jne	.label_1905
	jmp	.label_1928
.label_3081:
	xor	eax, eax
	lea	rsi, [rsi]
	mov	cl, al
	mov	rsp, rsp
	test	cl, 1
	lea	rdi, [rdi]
	jne	.label_3207
	jmp	.label_3217
.label_3207:
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0xf8], 0
	lea	rsi, [rsi]
	jge	.label_3219
	movabs	rax, 0x222222222222222
	cmp	qword ptr [rbp - 0xf8], rax
	jl	.label_3227
	jmp	.label_2197
.label_3219:
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	lea	rdi, [rdi]
	jne	.label_3235
	lea	rdi, [rdi]
	jmp	.label_3624
.label_3235:
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	mov	rbp, rbp
	jne	.label_3227
	mov	rsp, rsp
	jmp	.label_2197
.label_3624:
	mov	rbp, rbp
	movabs	rax, 0xfdddddddddddddde
	lea	rdi, [rdi]
	cmp	rax, qword ptr [rbp - 0xf8]
	jl	.label_3227
	lea	rdi, [rdi]
	jmp	.label_2197
.label_3217:
	nop	
	xor	eax, eax
	mov	cl, al
	mov	rsp, rsp
	test	cl, 1
	mov	rbp, rbp
	jne	.label_3252
	jmp	.label_3256
.label_3252:
	lea	rsi, [rsi]
	xor	eax, eax
	mov	rsp, rsp
	mov	cl, al
	lea	rsi, [rsi]
	test	cl, 1
	nop	
	jne	.label_3227
	nop	
	jmp	.label_2197
.label_3256:
	cmp	qword ptr [rbp - 0xf8], 0
	mov	rsp, rsp
	jge	.label_3264
	movabs	rax, 0xfdddddddddddddde
	cmp	qword ptr [rbp - 0xf8], rax
	lea	rsi, [rsi]
	jl	.label_3227
	jmp	.label_2197
.label_3264:
	movabs	rax, 0x222222222222222
	mov	rbp, rbp
	cmp	rax, qword ptr [rbp - 0xf8]
	mov	rbp, rbp
	jl	.label_3227
.label_2197:
	imul	rax, qword ptr [rbp - 0xf8], 0x3c
	mov	rbp, rbp
	cmp	rax, -0x8000
	lea	rsi, [rsi]
	jl	.label_3227
	mov	eax, 0x7fff
	lea	rdi, [rdi]
	mov	ecx, eax
	imul	rdx, qword ptr [rbp - 0xf8], 0x3c
	mov	rbp, rbp
	cmp	rcx, rdx
	jge	.label_3279
.label_3227:
	mov	al, 1
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0xf8]
	mov	edx, ecx
	imul	edx, edx, 0x3c
	mov	si, dx
	mov	rbp, rbp
	movsx	rcx, si
	mov	qword ptr [rbp - 0x8f0], rcx
	test	al, 1
	lea	rsi, [rsi]
	jne	.label_1905
	jmp	.label_1928
.label_3279:
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0xf8]
	mov	eax, edx
	mov	rsp, rsp
	imul	eax, eax, 0x3c
	mov	si, ax
	nop	
	movsx	rdx, si
	mov	qword ptr [rbp - 0x8f0], rdx
	lea	rdi, [rdi]
	test	cl, 1
	jne	.label_1905
	jmp	.label_1928
.label_3072:
	xor	eax, eax
	nop	
	mov	cl, al
	test	cl, 1
	lea	rsi, [rsi]
	jne	.label_3312
	jmp	.label_2176
.label_3312:
	xor	eax, eax
	nop	
	mov	cl, al
	nop	
	test	cl, 1
	mov	rbp, rbp
	jne	.label_2816
	lea	rdi, [rdi]
	jmp	.label_2391
.label_2816:
	xor	eax, eax
	mov	cl, al
	lea	rsi, [rsi]
	test	cl, 1
	lea	rdi, [rdi]
	jne	.label_3026
	nop	
	jmp	.label_3148
.label_3026:
	nop	
	mov	rax, qword ptr [rbp - 0xf8]
	mov	rbp, rbp
	mov	ecx, eax
	mov	rbp, rbp
	cmp	ecx, 0
	nop	
	jge	.label_3329
	mov	rax, qword ptr [rbp - 0xf8]
	mov	ecx, eax
	cmp	ecx, 0x2222222
	lea	rsi, [rsi]
	jl	.label_2552
	jmp	.label_2044
.label_3329:
	xor	eax, eax
	lea	rsi, [rsi]
	mov	cl, al
	lea	rdi, [rdi]
	test	cl, 1
	lea	rdi, [rdi]
	jne	.label_3345
	lea	rdi, [rdi]
	jmp	.label_3351
.label_3345:
	xor	eax, eax
	lea	rsi, [rsi]
	mov	cl, al
	lea	rsi, [rsi]
	test	cl, 1
	jne	.label_2552
	jmp	.label_2044
.label_3351:
	mov	rbp, rbp
	mov	eax, 0xfdddddde
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0xf8]
	lea	rsi, [rsi]
	mov	edx, ecx
	cmp	eax, edx
	jl	.label_2552
	lea	rdi, [rdi]
	jmp	.label_2044
.label_3148:
	mov	rbp, rbp
	xor	eax, eax
	nop	
	mov	cl, al
	test	cl, 1
	jne	.label_3366
	lea	rdi, [rdi]
	jmp	.label_2400
.label_3366:
	mov	rsp, rsp
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_2552
	nop	
	jmp	.label_2044
.label_2400:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0xf8]
	lea	rdi, [rdi]
	mov	ecx, eax
	cmp	ecx, 0
	mov	rsp, rsp
	jge	.label_3376
	mov	rax, qword ptr [rbp - 0xf8]
	lea	rdi, [rdi]
	mov	ecx, eax
	mov	rsp, rsp
	cmp	ecx, 0xfdddddde
	jl	.label_2552
	mov	rbp, rbp
	jmp	.label_2044
.label_3376:
	lea	rdi, [rdi]
	mov	eax, 0x2222222
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0xf8]
	nop	
	mov	edx, ecx
	mov	rbp, rbp
	cmp	eax, edx
	lea	rdi, [rdi]
	jl	.label_2552
.label_2044:
	mov	rax, qword ptr [rbp - 0xf8]
	mov	ecx, eax
	mov	rbp, rbp
	imul	ecx, ecx, 0x3c
	mov	rbp, rbp
	cmp	ecx, 0x80000000
	jl	.label_2552
	lea	rdi, [rdi]
	mov	eax, 0x7fffffff
	mov	rcx, qword ptr [rbp - 0xf8]
	mov	edx, ecx
	lea	rsi, [rsi]
	imul	edx, edx, 0x3c
	mov	rsp, rsp
	cmp	eax, edx
	mov	rbp, rbp
	jge	.label_3394
.label_2552:
	mov	al, 1
	nop	
	mov	rcx, qword ptr [rbp - 0xf8]
	lea	rsi, [rsi]
	mov	edx, ecx
	imul	edx, edx, 0x3c
	lea	rdi, [rdi]
	movsxd	rcx, edx
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x8f0], rcx
	test	al, 1
	lea	rdi, [rdi]
	jne	.label_1905
	lea	rdi, [rdi]
	jmp	.label_1928
.label_3394:
	mov	rbp, rbp
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0xf8]
	mov	eax, edx
	imul	eax, eax, 0x3c
	nop	
	movsxd	rdx, eax
	mov	qword ptr [rbp - 0x8f0], rdx
	test	cl, 1
	mov	rbp, rbp
	jne	.label_1905
	jmp	.label_1928
.label_2391:
	xor	eax, eax
	mov	cl, al
	nop	
	test	cl, 1
	jne	.label_3436
	jmp	.label_3440
.label_3436:
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0xf8], 0
	nop	
	jge	.label_3001
	lea	rdi, [rdi]
	movabs	rax, 0x222222222222222
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0xf8], rax
	mov	rsp, rsp
	jl	.label_3447
	lea	rdi, [rdi]
	jmp	.label_3063
.label_3001:
	lea	rsi, [rsi]
	xor	eax, eax
	nop	
	mov	cl, al
	test	cl, 1
	mov	rsp, rsp
	jne	.label_3457
	jmp	.label_3271
.label_3457:
	lea	rdi, [rdi]
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_3447
	mov	rbp, rbp
	jmp	.label_3063
.label_3271:
	movabs	rax, 0xfdddddddddddddde
	cmp	rax, qword ptr [rbp - 0xf8]
	lea	rdi, [rdi]
	jl	.label_3447
	jmp	.label_3063
.label_3440:
	lea	rdi, [rdi]
	xor	eax, eax
	lea	rdi, [rdi]
	mov	cl, al
	test	cl, 1
	nop	
	jne	.label_3762
	mov	rbp, rbp
	jmp	.label_3478
.label_3762:
	mov	rsp, rsp
	xor	eax, eax
	lea	rsi, [rsi]
	mov	cl, al
	mov	rsp, rsp
	test	cl, 1
	jne	.label_3447
	jmp	.label_3063
.label_3478:
	cmp	qword ptr [rbp - 0xf8], 0
	mov	rsp, rsp
	jge	.label_3268
	movabs	rax, 0xfdddddddddddddde
	cmp	qword ptr [rbp - 0xf8], rax
	jl	.label_3447
	jmp	.label_3063
.label_3268:
	lea	rdi, [rdi]
	movabs	rax, 0x222222222222222
	cmp	rax, qword ptr [rbp - 0xf8]
	jl	.label_3447
.label_3063:
	imul	rax, qword ptr [rbp - 0xf8], 0x3c
	cmp	rax, -0x80000000
	jl	.label_3447
	mov	eax, 0x7fffffff
	lea	rsi, [rsi]
	mov	ecx, eax
	lea	rsi, [rsi]
	imul	rdx, qword ptr [rbp - 0xf8], 0x3c
	mov	rsp, rsp
	cmp	rcx, rdx
	mov	rbp, rbp
	jge	.label_2079
.label_3447:
	lea	rsi, [rsi]
	mov	al, 1
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0xf8]
	mov	edx, ecx
	imul	edx, edx, 0x3c
	movsxd	rcx, edx
	nop	
	mov	qword ptr [rbp - 0x8f0], rcx
	test	al, 1
	nop	
	jne	.label_1905
	nop	
	jmp	.label_1928
.label_2079:
	xor	eax, eax
	mov	cl, al
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0xf8]
	mov	eax, edx
	lea	rsi, [rsi]
	imul	eax, eax, 0x3c
	movsxd	rdx, eax
	nop	
	mov	qword ptr [rbp - 0x8f0], rdx
	test	cl, 1
	lea	rdi, [rdi]
	jne	.label_1905
	mov	rsp, rsp
	jmp	.label_1928
.label_2176:
	mov	al, 1
	lea	rdi, [rdi]
	test	al, 1
	jne	.label_3534
	nop	
	jmp	.label_3537
.label_3534:
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_3540
	lea	rsi, [rsi]
	jmp	.label_3544
.label_3540:
	nop	
	xor	eax, eax
	mov	cl, al
	nop	
	test	cl, 1
	jne	.label_3548
	jmp	.label_3552
.label_3548:
	cmp	qword ptr [rbp - 0xf8], 0
	jge	.label_3553
	nop	
	movabs	rax, 0x222222222222222
	cmp	qword ptr [rbp - 0xf8], rax
	jl	.label_3556
	mov	rbp, rbp
	jmp	.label_3133
.label_3553:
	xor	eax, eax
	mov	rsp, rsp
	mov	cl, al
	mov	rsp, rsp
	test	cl, 1
	jne	.label_3561
	jmp	.label_3734
.label_3561:
	xor	eax, eax
	lea	rdi, [rdi]
	mov	cl, al
	nop	
	test	cl, 1
	nop	
	jne	.label_3556
	jmp	.label_3133
.label_3734:
	lea	rdi, [rdi]
	movabs	rax, 0xfdddddddddddddde
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rbp - 0xf8]
	mov	rsp, rsp
	jl	.label_3556
	jmp	.label_3133
.label_3552:
	mov	rsp, rsp
	xor	eax, eax
	nop	
	mov	cl, al
	test	cl, 1
	jne	.label_3578
	jmp	.label_3581
.label_3578:
	xor	eax, eax
	lea	rdi, [rdi]
	mov	cl, al
	test	cl, 1
	nop	
	jne	.label_3556
	jmp	.label_3133
.label_3581:
	cmp	qword ptr [rbp - 0xf8], 0
	mov	rbp, rbp
	jge	.label_3587
	mov	rsp, rsp
	movabs	rax, 0xfdddddddddddddde
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0xf8], rax
	lea	rdi, [rdi]
	jl	.label_3556
	jmp	.label_3133
.label_3587:
	movabs	rax, 0x222222222222222
	cmp	rax, qword ptr [rbp - 0xf8]
	lea	rsi, [rsi]
	jl	.label_3556
.label_3133:
	nop	
	movabs	rax, 0x8000000000000000
	mov	rbp, rbp
	imul	rcx, qword ptr [rbp - 0xf8], 0x3c
	cmp	rcx, rax
	mov	rsp, rsp
	jl	.label_3556
	mov	rsp, rsp
	movabs	rax, 0x7fffffffffffffff
	lea	rdi, [rdi]
	imul	rcx, qword ptr [rbp - 0xf8], 0x3c
	cmp	rax, rcx
	jge	.label_3603
.label_3556:
	nop	
	mov	al, 1
	imul	rcx, qword ptr [rbp - 0xf8], 0x3c
	mov	qword ptr [rbp - 0x8f0], rcx
	lea	rdi, [rdi]
	test	al, 1
	jne	.label_1905
	lea	rdi, [rdi]
	jmp	.label_1928
.label_3603:
	xor	eax, eax
	mov	cl, al
	nop	
	imul	rdx, qword ptr [rbp - 0xf8], 0x3c
	mov	qword ptr [rbp - 0x8f0], rdx
	lea	rdi, [rdi]
	test	cl, 1
	mov	rsp, rsp
	jne	.label_1905
	jmp	.label_1928
.label_3544:
	xor	eax, eax
	lea	rsi, [rsi]
	mov	cl, al
	lea	rsi, [rsi]
	test	cl, 1
	jne	.label_3634
	jmp	.label_3584
.label_3634:
	cmp	qword ptr [rbp - 0xf8], 0
	lea	rdi, [rdi]
	jge	.label_3296
	mov	rsp, rsp
	movabs	rax, 0x222222222222222
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0xf8], rax
	jl	.label_2661
	jmp	.label_3605
.label_3296:
	xor	eax, eax
	mov	cl, al
	lea	rdi, [rdi]
	test	cl, 1
	lea	rsi, [rsi]
	jne	.label_3651
	jmp	.label_2347
.label_3651:
	mov	rsp, rsp
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_2661
	lea	rsi, [rsi]
	jmp	.label_3605
.label_2347:
	lea	rsi, [rsi]
	movabs	rax, 0xfdddddddddddddde
	lea	rdi, [rdi]
	cmp	rax, qword ptr [rbp - 0xf8]
	mov	rbp, rbp
	jl	.label_2661
	jmp	.label_3605
.label_3584:
	mov	rbp, rbp
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	mov	rsp, rsp
	jne	.label_2517
	jmp	.label_2546
.label_2517:
	xor	eax, eax
	mov	cl, al
	nop	
	test	cl, 1
	lea	rsi, [rsi]
	jne	.label_2661
	jmp	.label_3605
.label_2546:
	cmp	qword ptr [rbp - 0xf8], 0
	jge	.label_3678
	nop	
	movabs	rax, 0xfdddddddddddddde
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0xf8], rax
	lea	rdi, [rdi]
	jl	.label_2661
	mov	rsp, rsp
	jmp	.label_3605
.label_3678:
	movabs	rax, 0x222222222222222
	mov	rsp, rsp
	cmp	rax, qword ptr [rbp - 0xf8]
	jl	.label_2661
.label_3605:
	lea	rsi, [rsi]
	movabs	rax, 0x8000000000000000
	imul	rcx, qword ptr [rbp - 0xf8], 0x3c
	lea	rdi, [rdi]
	cmp	rcx, rax
	jl	.label_2661
	nop	
	movabs	rax, 0x7fffffffffffffff
	nop	
	imul	rcx, qword ptr [rbp - 0xf8], 0x3c
	nop	
	cmp	rax, rcx
	mov	rsp, rsp
	jge	.label_3696
.label_2661:
	mov	al, 1
	imul	rcx, qword ptr [rbp - 0xf8], 0x3c
	mov	qword ptr [rbp - 0x8f0], rcx
	mov	rsp, rsp
	test	al, 1
	mov	rsp, rsp
	jne	.label_1905
	jmp	.label_1928
.label_3696:
	mov	rbp, rbp
	xor	eax, eax
	lea	rdi, [rdi]
	mov	cl, al
	mov	rsp, rsp
	imul	rdx, qword ptr [rbp - 0xf8], 0x3c
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x8f0], rdx
	test	cl, 1
	lea	rsi, [rsi]
	jne	.label_1905
	jmp	.label_1928
.label_3537:
	nop	
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_3720
	jmp	.label_2932
.label_3720:
	mov	rsp, rsp
	xor	eax, eax
	mov	rbp, rbp
	mov	cl, al
	lea	rsi, [rsi]
	test	cl, 1
	lea	rsi, [rsi]
	jne	.label_3727
	lea	rdi, [rdi]
	jmp	.label_3733
.label_3727:
	cmp	qword ptr [rbp - 0xf8], 0
	mov	rbp, rbp
	jge	.label_3737
	movabs	rax, 0x222222222222222
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0xf8], rax
	jl	.label_3385
	jmp	.label_3160
.label_3737:
	xor	eax, eax
	lea	rsi, [rsi]
	mov	cl, al
	mov	rsp, rsp
	test	cl, 1
	jne	.label_3744
	lea	rsi, [rsi]
	jmp	.label_3749
.label_3744:
	lea	rdi, [rdi]
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_3385
	jmp	.label_3160
.label_3749:
	mov	rsp, rsp
	movabs	rax, 0xfdddddddddddddde
	lea	rdi, [rdi]
	cmp	rax, qword ptr [rbp - 0xf8]
	jl	.label_3385
	jmp	.label_3160
.label_3733:
	lea	rdi, [rdi]
	xor	eax, eax
	mov	rbp, rbp
	mov	cl, al
	mov	rbp, rbp
	test	cl, 1
	jne	.label_3167
	mov	rsp, rsp
	jmp	.label_3203
.label_3167:
	nop	
	xor	eax, eax
	lea	rsi, [rsi]
	mov	cl, al
	mov	rsp, rsp
	test	cl, 1
	jne	.label_3385
	jmp	.label_3160
.label_3203:
	cmp	qword ptr [rbp - 0xf8], 0
	jge	.label_3769
	lea	rdi, [rdi]
	movabs	rax, 0xfdddddddddddddde
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0xf8], rax
	lea	rdi, [rdi]
	jl	.label_3385
	jmp	.label_3160
.label_3769:
	movabs	rax, 0x222222222222222
	nop	
	cmp	rax, qword ptr [rbp - 0xf8]
	nop	
	jl	.label_3385
.label_3160:
	lea	rdi, [rdi]
	movabs	rax, 0x8000000000000000
	lea	rdi, [rdi]
	imul	rcx, qword ptr [rbp - 0xf8], 0x3c
	cmp	rcx, rax
	mov	rbp, rbp
	jl	.label_3385
	mov	rbp, rbp
	movabs	rax, 0x7fffffffffffffff
	imul	rcx, qword ptr [rbp - 0xf8], 0x3c
	mov	rbp, rbp
	cmp	rax, rcx
	mov	rbp, rbp
	jge	.label_3400
.label_3385:
	mov	al, 1
	lea	rdi, [rdi]
	imul	rcx, qword ptr [rbp - 0xf8], 0x3c
	mov	qword ptr [rbp - 0x8f0], rcx
	test	al, 1
	lea	rsi, [rsi]
	jne	.label_1905
	jmp	.label_1928
.label_3400:
	xor	eax, eax
	mov	cl, al
	imul	rdx, qword ptr [rbp - 0xf8], 0x3c
	nop	
	mov	qword ptr [rbp - 0x8f0], rdx
	test	cl, 1
	mov	rsp, rsp
	jne	.label_1905
	mov	rbp, rbp
	jmp	.label_1928
.label_2932:
	lea	rsi, [rsi]
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_3808
	nop	
	jmp	.label_3812
.label_3808:
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0xf8], 0
	lea	rsi, [rsi]
	jge	.label_3813
	mov	rsp, rsp
	movabs	rax, 0x222222222222222
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0xf8], rax
	jl	.label_1902
	mov	rbp, rbp
	jmp	.label_3106
.label_3813:
	xor	eax, eax
	mov	cl, al
	lea	rdi, [rdi]
	test	cl, 1
	jne	.label_3828
	lea	rdi, [rdi]
	jmp	.label_3683
.label_3828:
	mov	rbp, rbp
	xor	eax, eax
	mov	cl, al
	mov	rsp, rsp
	test	cl, 1
	lea	rsi, [rsi]
	jne	.label_1902
	jmp	.label_3106
.label_3683:
	movabs	rax, 0xfdddddddddddddde
	mov	rbp, rbp
	cmp	rax, qword ptr [rbp - 0xf8]
	jl	.label_1902
	jmp	.label_3106
.label_3812:
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_2870
	jmp	.label_3850
.label_2870:
	xor	eax, eax
	nop	
	mov	cl, al
	test	cl, 1
	jne	.label_1902
	jmp	.label_3106
.label_3850:
	cmp	qword ptr [rbp - 0xf8], 0
	mov	rsp, rsp
	jge	.label_3857
	movabs	rax, 0xfdddddddddddddde
	cmp	qword ptr [rbp - 0xf8], rax
	mov	rsp, rsp
	jl	.label_1902
	jmp	.label_3106
.label_3857:
	movabs	rax, 0x222222222222222
	cmp	rax, qword ptr [rbp - 0xf8]
	jl	.label_1902
.label_3106:
	mov	rbp, rbp
	movabs	rax, 0x8000000000000000
	lea	rsi, [rsi]
	imul	rcx, qword ptr [rbp - 0xf8], 0x3c
	cmp	rcx, rax
	mov	rbp, rbp
	jl	.label_1902
	movabs	rax, 0x7fffffffffffffff
	lea	rdi, [rdi]
	imul	rcx, qword ptr [rbp - 0xf8], 0x3c
	cmp	rax, rcx
	jge	.label_2907
.label_1902:
	lea	rdi, [rdi]
	mov	al, 1
	imul	rcx, qword ptr [rbp - 0xf8], 0x3c
	mov	qword ptr [rbp - 0x8f0], rcx
	test	al, 1
	jne	.label_1905
	nop	
	jmp	.label_1928
.label_2907:
	xor	eax, eax
	mov	cl, al
	mov	rbp, rbp
	imul	rdx, qword ptr [rbp - 0xf8], 0x3c
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x8f0], rdx
	test	cl, 1
	jne	.label_1905
.label_1928:
	xor	eax, eax
	nop	
	mov	cl, al
	test	cl, 1
	mov	rbp, rbp
	jne	.label_1939
	jmp	.label_1942
.label_1939:
	xor	eax, eax
	lea	rsi, [rsi]
	mov	cl, al
	test	cl, 1
	jne	.label_1945
	jmp	.label_1949
.label_1945:
	lea	rsi, [rsi]
	mov	al, 1
	test	al, 1
	lea	rsi, [rsi]
	jne	.label_2627
	mov	rbp, rbp
	jmp	.label_1956
.label_2627:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x8f0]
	lea	rdi, [rdi]
	mov	cl, al
	lea	rsi, [rsi]
	movsx	edx, cl
	cmp	edx, 0
	nop	
	jge	.label_1960
	mov	rbp, rbp
	mov	eax, 0x80000000
	mov	rcx, qword ptr [rbp - 0x710]
	mov	rbp, rbp
	mov	dl, cl
	movsx	esi, dl
	mov	rcx, qword ptr [rbp - 0x8f0]
	mov	dl, cl
	movsx	edi, dl
	sub	eax, edi
	cmp	esi, eax
	jl	.label_1970
	jmp	.label_1984
.label_1960:
	nop	
	mov	eax, 0x7fffffff
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x8f0]
	mov	dl, cl
	movsx	esi, dl
	lea	rdi, [rdi]
	sub	eax, esi
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x710]
	mov	dl, cl
	movsx	esi, dl
	cmp	eax, esi
	jl	.label_1970
	jmp	.label_1984
.label_1956:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x710]
	lea	rsi, [rsi]
	mov	cl, al
	lea	rdi, [rdi]
	movsx	edx, cl
	cmp	edx, 0
	jge	.label_2001
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x8f0]
	mov	cl, al
	movsx	edx, cl
	nop	
	mov	rax, qword ptr [rbp - 0x710]
	lea	rsi, [rsi]
	mov	cl, al
	lea	rsi, [rsi]
	movsx	esi, cl
	mov	rax, qword ptr [rbp - 0x8f0]
	mov	rsp, rsp
	mov	cl, al
	movsx	edi, cl
	lea	rdi, [rdi]
	add	esi, edi
	cmp	edx, esi
	mov	rsp, rsp
	jle	.label_1970
	mov	rbp, rbp
	jmp	.label_1984
.label_2001:
	mov	rax, qword ptr [rbp - 0x8f0]
	mov	cl, al
	movsx	edx, cl
	cmp	edx, 0
	jge	.label_2651
	nop	
	mov	rax, qword ptr [rbp - 0x710]
	mov	cl, al
	movsx	edx, cl
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x710]
	lea	rsi, [rsi]
	mov	cl, al
	mov	rbp, rbp
	movsx	esi, cl
	mov	rax, qword ptr [rbp - 0x8f0]
	mov	rbp, rbp
	mov	cl, al
	mov	rbp, rbp
	movsx	edi, cl
	add	esi, edi
	cmp	edx, esi
	lea	rdi, [rdi]
	jle	.label_1970
	jmp	.label_1984
.label_2651:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x710]
	mov	rbp, rbp
	mov	cl, al
	movsx	edx, cl
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x8f0]
	lea	rsi, [rsi]
	mov	cl, al
	movsx	esi, cl
	lea	rdi, [rdi]
	add	edx, esi
	mov	rax, qword ptr [rbp - 0x8f0]
	mov	cl, al
	movsx	esi, cl
	cmp	edx, esi
	nop	
	jl	.label_1970
.label_1984:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x710]
	mov	cl, al
	mov	rsp, rsp
	movsx	edx, cl
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x8f0]
	mov	rsp, rsp
	mov	cl, al
	mov	rsp, rsp
	movsx	esi, cl
	add	edx, esi
	cmp	edx, -0x80
	lea	rsi, [rsi]
	jl	.label_1970
	nop	
	mov	eax, 0x7f
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x710]
	mov	dl, cl
	movsx	esi, dl
	mov	rcx, qword ptr [rbp - 0x8f0]
	mov	dl, cl
	mov	rbp, rbp
	movsx	edi, dl
	add	esi, edi
	cmp	eax, esi
	jge	.label_2923
.label_1970:
	mov	al, 1
	mov	rcx, qword ptr [rbp - 0x710]
	mov	dl, cl
	movsx	esi, dl
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x8f0]
	mov	dl, cl
	movsx	edi, dl
	nop	
	add	esi, edi
	mov	dl, sil
	movsx	rcx, dl
	nop	
	mov	qword ptr [rbp - 0x8a0], rcx
	test	al, 1
	lea	rsi, [rsi]
	jne	.label_1905
	lea	rsi, [rsi]
	jmp	.label_2102
.label_2923:
	xor	eax, eax
	lea	rsi, [rsi]
	mov	cl, al
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x710]
	lea	rsi, [rsi]
	mov	sil, dl
	mov	rbp, rbp
	movsx	eax, sil
	mov	rdx, qword ptr [rbp - 0x8f0]
	mov	sil, dl
	mov	rbp, rbp
	movsx	edi, sil
	nop	
	add	eax, edi
	mov	sil, al
	nop	
	movsx	rdx, sil
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x8a0], rdx
	lea	rsi, [rsi]
	test	cl, 1
	nop	
	jne	.label_1905
	jmp	.label_2102
.label_1949:
	lea	rdi, [rdi]
	mov	al, 1
	test	al, 1
	jne	.label_2129
	lea	rsi, [rsi]
	jmp	.label_2134
.label_2129:
	cmp	qword ptr [rbp - 0x8f0], 0
	mov	rbp, rbp
	jge	.label_1957
	nop	
	movabs	rax, 0x8000000000000000
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x710]
	sub	rax, qword ptr [rbp - 0x8f0]
	lea	rdi, [rdi]
	cmp	rcx, rax
	jl	.label_2138
	jmp	.label_2142
.label_1957:
	movabs	rax, 0x7fffffffffffffff
	sub	rax, qword ptr [rbp - 0x8f0]
	mov	rbp, rbp
	cmp	rax, qword ptr [rbp - 0x710]
	jl	.label_2138
	mov	rsp, rsp
	jmp	.label_2142
.label_2134:
	cmp	qword ptr [rbp - 0x710], 0
	jge	.label_2151
	mov	rax, qword ptr [rbp - 0x8f0]
	mov	rcx, qword ptr [rbp - 0x710]
	nop	
	add	rcx, qword ptr [rbp - 0x8f0]
	lea	rsi, [rsi]
	cmp	rax, rcx
	jle	.label_2138
	jmp	.label_2142
.label_2151:
	cmp	qword ptr [rbp - 0x8f0], 0
	mov	rbp, rbp
	jge	.label_2988
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x710]
	mov	rcx, qword ptr [rbp - 0x710]
	add	rcx, qword ptr [rbp - 0x8f0]
	cmp	rax, rcx
	nop	
	jle	.label_2138
	jmp	.label_2142
.label_2988:
	mov	rax, qword ptr [rbp - 0x710]
	add	rax, qword ptr [rbp - 0x8f0]
	nop	
	cmp	rax, qword ptr [rbp - 0x8f0]
	mov	rbp, rbp
	jl	.label_2138
.label_2142:
	mov	rax, qword ptr [rbp - 0x710]
	mov	rsp, rsp
	add	rax, qword ptr [rbp - 0x8f0]
	cmp	rax, -0x80
	jl	.label_2138
	nop	
	mov	eax, 0x7f
	lea	rsi, [rsi]
	mov	ecx, eax
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x710]
	add	rdx, qword ptr [rbp - 0x8f0]
	lea	rsi, [rsi]
	cmp	rcx, rdx
	nop	
	jge	.label_3154
.label_2138:
	nop	
	mov	al, 1
	mov	rcx, qword ptr [rbp - 0x710]
	mov	edx, ecx
	mov	rcx, qword ptr [rbp - 0x8f0]
	mov	esi, ecx
	add	edx, esi
	mov	dil, dl
	movsx	rcx, dil
	mov	qword ptr [rbp - 0x8a0], rcx
	lea	rdi, [rdi]
	test	al, 1
	jne	.label_1905
	jmp	.label_2102
.label_3154:
	nop	
	xor	eax, eax
	lea	rdi, [rdi]
	mov	cl, al
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x710]
	mov	rsp, rsp
	mov	eax, edx
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x8f0]
	mov	esi, edx
	mov	rsp, rsp
	add	eax, esi
	mov	dil, al
	lea	rdi, [rdi]
	movsx	rdx, dil
	mov	qword ptr [rbp - 0x8a0], rdx
	test	cl, 1
	lea	rdi, [rdi]
	jne	.label_1905
	mov	rbp, rbp
	jmp	.label_2102
.label_1942:
	xor	eax, eax
	lea	rsi, [rsi]
	mov	cl, al
	test	cl, 1
	nop	
	jne	.label_2251
	mov	rsp, rsp
	jmp	.label_3354
.label_2251:
	lea	rsi, [rsi]
	xor	eax, eax
	lea	rdi, [rdi]
	mov	cl, al
	nop	
	test	cl, 1
	lea	rdi, [rdi]
	jne	.label_2260
	mov	rsp, rsp
	jmp	.label_2266
.label_2260:
	lea	rdi, [rdi]
	mov	al, 1
	test	al, 1
	mov	rbp, rbp
	jne	.label_2270
	lea	rsi, [rsi]
	jmp	.label_1950
.label_2270:
	mov	rax, qword ptr [rbp - 0x8f0]
	mov	cx, ax
	movsx	edx, cx
	nop	
	cmp	edx, 0
	lea	rsi, [rsi]
	jge	.label_2276
	mov	eax, 0x80000000
	nop	
	mov	rcx, qword ptr [rbp - 0x710]
	mov	rsp, rsp
	mov	dx, cx
	lea	rsi, [rsi]
	movsx	esi, dx
	mov	rcx, qword ptr [rbp - 0x8f0]
	lea	rdi, [rdi]
	mov	dx, cx
	movsx	edi, dx
	sub	eax, edi
	nop	
	cmp	esi, eax
	mov	rsp, rsp
	jl	.label_2284
	nop	
	jmp	.label_2292
.label_2276:
	mov	eax, 0x7fffffff
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x8f0]
	mov	rbp, rbp
	mov	dx, cx
	lea	rdi, [rdi]
	movsx	esi, dx
	sub	eax, esi
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x710]
	mov	rbp, rbp
	mov	dx, cx
	movsx	esi, dx
	mov	rbp, rbp
	cmp	eax, esi
	lea	rsi, [rsi]
	jl	.label_2284
	lea	rsi, [rsi]
	jmp	.label_2292
.label_1950:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x710]
	mov	cx, ax
	movsx	edx, cx
	cmp	edx, 0
	lea	rsi, [rsi]
	jge	.label_2075
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x8f0]
	lea	rsi, [rsi]
	mov	cx, ax
	mov	rbp, rbp
	movsx	edx, cx
	mov	rax, qword ptr [rbp - 0x710]
	lea	rdi, [rdi]
	mov	cx, ax
	movsx	esi, cx
	mov	rax, qword ptr [rbp - 0x8f0]
	lea	rdi, [rdi]
	mov	cx, ax
	lea	rsi, [rsi]
	movsx	edi, cx
	lea	rsi, [rsi]
	add	esi, edi
	cmp	edx, esi
	mov	rsp, rsp
	jle	.label_2284
	lea	rsi, [rsi]
	jmp	.label_2292
.label_2075:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x8f0]
	mov	cx, ax
	lea	rdi, [rdi]
	movsx	edx, cx
	lea	rsi, [rsi]
	cmp	edx, 0
	jge	.label_2395
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x710]
	mov	rbp, rbp
	mov	cx, ax
	mov	rbp, rbp
	movsx	edx, cx
	mov	rax, qword ptr [rbp - 0x710]
	lea	rdi, [rdi]
	mov	cx, ax
	mov	rbp, rbp
	movsx	esi, cx
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x8f0]
	mov	cx, ax
	movsx	edi, cx
	mov	rsp, rsp
	add	esi, edi
	lea	rsi, [rsi]
	cmp	edx, esi
	jle	.label_2284
	mov	rbp, rbp
	jmp	.label_2292
.label_2395:
	mov	rax, qword ptr [rbp - 0x710]
	mov	rbp, rbp
	mov	cx, ax
	movsx	edx, cx
	mov	rax, qword ptr [rbp - 0x8f0]
	nop	
	mov	cx, ax
	movsx	esi, cx
	add	edx, esi
	mov	rax, qword ptr [rbp - 0x8f0]
	mov	cx, ax
	movsx	esi, cx
	cmp	edx, esi
	jl	.label_2284
.label_2292:
	mov	rax, qword ptr [rbp - 0x710]
	lea	rsi, [rsi]
	mov	cx, ax
	movsx	edx, cx
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x8f0]
	mov	rsp, rsp
	mov	cx, ax
	movsx	esi, cx
	add	edx, esi
	cmp	edx, 0xffff8000
	nop	
	jl	.label_2284
	mov	eax, 0x7fff
	mov	rcx, qword ptr [rbp - 0x710]
	nop	
	mov	dx, cx
	movsx	esi, dx
	mov	rcx, qword ptr [rbp - 0x8f0]
	mov	dx, cx
	movsx	edi, dx
	add	esi, edi
	mov	rbp, rbp
	cmp	eax, esi
	jge	.label_2711
.label_2284:
	mov	al, 1
	mov	rcx, qword ptr [rbp - 0x710]
	mov	dx, cx
	movsx	esi, dx
	mov	rcx, qword ptr [rbp - 0x8f0]
	mov	rbp, rbp
	mov	dx, cx
	mov	rsp, rsp
	movsx	edi, dx
	add	esi, edi
	lea	rsi, [rsi]
	mov	dx, si
	lea	rsi, [rsi]
	movsx	rcx, dx
	mov	qword ptr [rbp - 0x8a0], rcx
	nop	
	test	al, 1
	lea	rdi, [rdi]
	jne	.label_1905
	jmp	.label_2102
.label_2711:
	mov	rbp, rbp
	xor	eax, eax
	mov	rbp, rbp
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x710]
	nop	
	mov	si, dx
	movsx	eax, si
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x8f0]
	lea	rsi, [rsi]
	mov	si, dx
	lea	rdi, [rdi]
	movsx	edi, si
	add	eax, edi
	mov	si, ax
	movsx	rdx, si
	mov	qword ptr [rbp - 0x8a0], rdx
	nop	
	test	cl, 1
	mov	rsp, rsp
	jne	.label_1905
	mov	rsp, rsp
	jmp	.label_2102
.label_2266:
	mov	al, 1
	test	al, 1
	jne	.label_2457
	jmp	.label_2893
.label_2457:
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x8f0], 0
	jge	.label_2461
	mov	rsp, rsp
	movabs	rax, 0x8000000000000000
	mov	rcx, qword ptr [rbp - 0x710]
	sub	rax, qword ptr [rbp - 0x8f0]
	cmp	rcx, rax
	lea	rdi, [rdi]
	jl	.label_2497
	jmp	.label_2477
.label_2461:
	movabs	rax, 0x7fffffffffffffff
	sub	rax, qword ptr [rbp - 0x8f0]
	mov	rbp, rbp
	cmp	rax, qword ptr [rbp - 0x710]
	lea	rsi, [rsi]
	jl	.label_2497
	mov	rbp, rbp
	jmp	.label_2477
.label_2893:
	cmp	qword ptr [rbp - 0x710], 0
	lea	rdi, [rdi]
	jge	.label_3707
	mov	rax, qword ptr [rbp - 0x8f0]
	mov	rcx, qword ptr [rbp - 0x710]
	lea	rdi, [rdi]
	add	rcx, qword ptr [rbp - 0x8f0]
	cmp	rax, rcx
	nop	
	jle	.label_2497
	jmp	.label_2477
.label_3707:
	cmp	qword ptr [rbp - 0x8f0], 0
	mov	rbp, rbp
	jge	.label_2511
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x710]
	mov	rcx, qword ptr [rbp - 0x710]
	add	rcx, qword ptr [rbp - 0x8f0]
	cmp	rax, rcx
	jle	.label_2497
	jmp	.label_2477
.label_2511:
	nop	
	mov	rax, qword ptr [rbp - 0x710]
	add	rax, qword ptr [rbp - 0x8f0]
	lea	rdi, [rdi]
	cmp	rax, qword ptr [rbp - 0x8f0]
	jl	.label_2497
.label_2477:
	mov	rax, qword ptr [rbp - 0x710]
	nop	
	add	rax, qword ptr [rbp - 0x8f0]
	cmp	rax, -0x8000
	jl	.label_2497
	mov	eax, 0x7fff
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x710]
	add	rdx, qword ptr [rbp - 0x8f0]
	mov	rbp, rbp
	cmp	rcx, rdx
	jge	.label_1986
.label_2497:
	nop	
	mov	al, 1
	mov	rcx, qword ptr [rbp - 0x710]
	mov	edx, ecx
	mov	rcx, qword ptr [rbp - 0x8f0]
	lea	rdi, [rdi]
	mov	esi, ecx
	lea	rsi, [rsi]
	add	edx, esi
	mov	di, dx
	mov	rbp, rbp
	movsx	rcx, di
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x8a0], rcx
	nop	
	test	al, 1
	jne	.label_1905
	nop	
	jmp	.label_2102
.label_1986:
	xor	eax, eax
	lea	rdi, [rdi]
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x710]
	mov	eax, edx
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x8f0]
	mov	esi, edx
	add	eax, esi
	mov	rbp, rbp
	mov	di, ax
	lea	rdi, [rdi]
	movsx	rdx, di
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x8a0], rdx
	lea	rdi, [rdi]
	test	cl, 1
	jne	.label_1905
	jmp	.label_2102
.label_3354:
	xor	eax, eax
	lea	rsi, [rsi]
	mov	cl, al
	test	cl, 1
	mov	rsp, rsp
	jne	.label_2039
	mov	rbp, rbp
	jmp	.label_2579
.label_2039:
	xor	eax, eax
	nop	
	mov	cl, al
	test	cl, 1
	jne	.label_2583
	mov	rsp, rsp
	jmp	.label_3690
.label_2583:
	mov	al, 1
	nop	
	test	al, 1
	mov	rbp, rbp
	jne	.label_3697
	lea	rsi, [rsi]
	jmp	.label_3710
.label_3697:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x8f0]
	mov	ecx, eax
	cmp	ecx, 0
	lea	rsi, [rsi]
	jge	.label_3725
	nop	
	mov	eax, 0x80000000
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x710]
	mov	edx, ecx
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x8f0]
	mov	esi, ecx
	sub	eax, esi
	lea	rsi, [rsi]
	cmp	edx, eax
	jl	.label_2598
	jmp	.label_2612
.label_3725:
	mov	eax, 0x7fffffff
	mov	rcx, qword ptr [rbp - 0x8f0]
	mov	edx, ecx
	mov	rsp, rsp
	sub	eax, edx
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x710]
	lea	rdi, [rdi]
	mov	edx, ecx
	lea	rdi, [rdi]
	cmp	eax, edx
	jl	.label_2598
	lea	rsi, [rsi]
	jmp	.label_2612
.label_3710:
	nop	
	mov	rax, qword ptr [rbp - 0x710]
	mov	ecx, eax
	mov	rbp, rbp
	cmp	ecx, 0
	lea	rsi, [rsi]
	jge	.label_1912
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x8f0]
	lea	rdi, [rdi]
	mov	ecx, eax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x710]
	mov	edx, eax
	nop	
	mov	rax, qword ptr [rbp - 0x8f0]
	mov	rbp, rbp
	mov	esi, eax
	add	edx, esi
	cmp	ecx, edx
	lea	rsi, [rsi]
	jle	.label_2598
	jmp	.label_2612
.label_1912:
	mov	rax, qword ptr [rbp - 0x8f0]
	lea	rsi, [rsi]
	mov	ecx, eax
	cmp	ecx, 0
	nop	
	jge	.label_2649
	mov	rax, qword ptr [rbp - 0x710]
	lea	rsi, [rsi]
	mov	ecx, eax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x710]
	mov	edx, eax
	mov	rax, qword ptr [rbp - 0x8f0]
	mov	rsp, rsp
	mov	esi, eax
	mov	rbp, rbp
	add	edx, esi
	cmp	ecx, edx
	mov	rsp, rsp
	jle	.label_2598
	jmp	.label_2612
.label_2649:
	mov	rax, qword ptr [rbp - 0x710]
	mov	ecx, eax
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x8f0]
	lea	rdi, [rdi]
	mov	edx, eax
	mov	rsp, rsp
	add	ecx, edx
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x8f0]
	mov	rbp, rbp
	mov	edx, eax
	nop	
	cmp	ecx, edx
	lea	rsi, [rsi]
	jl	.label_2598
.label_2612:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x710]
	mov	ecx, eax
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x8f0]
	mov	edx, eax
	add	ecx, edx
	lea	rdi, [rdi]
	cmp	ecx, 0x80000000
	jl	.label_2598
	mov	eax, 0x7fffffff
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x710]
	lea	rdi, [rdi]
	mov	edx, ecx
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x8f0]
	mov	esi, ecx
	mov	rbp, rbp
	add	edx, esi
	nop	
	cmp	eax, edx
	mov	rsp, rsp
	jge	.label_2689
.label_2598:
	mov	rsp, rsp
	mov	al, 1
	nop	
	mov	rcx, qword ptr [rbp - 0x710]
	mov	rsp, rsp
	mov	edx, ecx
	mov	rcx, qword ptr [rbp - 0x8f0]
	mov	esi, ecx
	add	edx, esi
	lea	rsi, [rsi]
	movsxd	rcx, edx
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x8a0], rcx
	mov	rbp, rbp
	test	al, 1
	jne	.label_1905
	jmp	.label_2102
.label_2689:
	lea	rdi, [rdi]
	xor	eax, eax
	lea	rsi, [rsi]
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x710]
	mov	eax, edx
	nop	
	mov	rdx, qword ptr [rbp - 0x8f0]
	mov	esi, edx
	add	eax, esi
	movsxd	rdx, eax
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x8a0], rdx
	mov	rbp, rbp
	test	cl, 1
	jne	.label_1905
	nop	
	jmp	.label_2102
.label_3690:
	mov	al, 1
	test	al, 1
	lea	rdi, [rdi]
	jne	.label_3538
	jmp	.label_2725
.label_3538:
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0x8f0], 0
	jge	.label_2726
	movabs	rax, 0x8000000000000000
	mov	rcx, qword ptr [rbp - 0x710]
	lea	rsi, [rsi]
	sub	rax, qword ptr [rbp - 0x8f0]
	mov	rbp, rbp
	cmp	rcx, rax
	nop	
	jl	.label_2714
	lea	rdi, [rdi]
	jmp	.label_2706
.label_2726:
	lea	rsi, [rsi]
	movabs	rax, 0x7fffffffffffffff
	lea	rdi, [rdi]
	sub	rax, qword ptr [rbp - 0x8f0]
	cmp	rax, qword ptr [rbp - 0x710]
	lea	rdi, [rdi]
	jl	.label_2714
	nop	
	jmp	.label_2706
.label_2725:
	cmp	qword ptr [rbp - 0x710], 0
	lea	rdi, [rdi]
	jge	.label_2757
	mov	rax, qword ptr [rbp - 0x8f0]
	mov	rcx, qword ptr [rbp - 0x710]
	mov	rsp, rsp
	add	rcx, qword ptr [rbp - 0x8f0]
	mov	rsp, rsp
	cmp	rax, rcx
	lea	rsi, [rsi]
	jle	.label_2714
	jmp	.label_2706
.label_2757:
	cmp	qword ptr [rbp - 0x8f0], 0
	mov	rbp, rbp
	jge	.label_2771
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x710]
	mov	rcx, qword ptr [rbp - 0x710]
	add	rcx, qword ptr [rbp - 0x8f0]
	cmp	rax, rcx
	mov	rbp, rbp
	jle	.label_2714
	nop	
	jmp	.label_2706
.label_2771:
	mov	rax, qword ptr [rbp - 0x710]
	lea	rsi, [rsi]
	add	rax, qword ptr [rbp - 0x8f0]
	lea	rdi, [rdi]
	cmp	rax, qword ptr [rbp - 0x8f0]
	mov	rsp, rsp
	jl	.label_2714
.label_2706:
	nop	
	mov	rax, qword ptr [rbp - 0x710]
	add	rax, qword ptr [rbp - 0x8f0]
	cmp	rax, -0x80000000
	lea	rsi, [rsi]
	jl	.label_2714
	mov	eax, 0x7fffffff
	mov	ecx, eax
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x710]
	add	rdx, qword ptr [rbp - 0x8f0]
	cmp	rcx, rdx
	jge	.label_2798
.label_2714:
	lea	rdi, [rdi]
	mov	al, 1
	nop	
	mov	rcx, qword ptr [rbp - 0x710]
	lea	rsi, [rsi]
	mov	edx, ecx
	mov	rcx, qword ptr [rbp - 0x8f0]
	mov	esi, ecx
	lea	rsi, [rsi]
	add	edx, esi
	movsxd	rcx, edx
	mov	qword ptr [rbp - 0x8a0], rcx
	test	al, 1
	mov	rbp, rbp
	jne	.label_1905
	jmp	.label_2102
.label_2798:
	lea	rdi, [rdi]
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x710]
	mov	eax, edx
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x8f0]
	mov	rsp, rsp
	mov	esi, edx
	add	eax, esi
	lea	rsi, [rsi]
	movsxd	rdx, eax
	mov	qword ptr [rbp - 0x8a0], rdx
	test	cl, 1
	lea	rsi, [rsi]
	jne	.label_1905
	lea	rdi, [rdi]
	jmp	.label_2102
.label_2579:
	mov	al, 1
	test	al, 1
	nop	
	jne	.label_2308
	nop	
	jmp	.label_3286
.label_2308:
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	lea	rdi, [rdi]
	jne	.label_2834
	lea	rsi, [rsi]
	jmp	.label_3323
.label_2834:
	nop	
	mov	al, 1
	lea	rsi, [rsi]
	test	al, 1
	jne	.label_3335
	jmp	.label_3360
.label_3335:
	cmp	qword ptr [rbp - 0x8f0], 0
	mov	rbp, rbp
	jge	.label_2843
	lea	rsi, [rsi]
	movabs	rax, 0x8000000000000000
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x710]
	sub	rax, qword ptr [rbp - 0x8f0]
	cmp	rcx, rax
	mov	rbp, rbp
	jl	.label_2849
	jmp	.label_2859
.label_2843:
	mov	rsp, rsp
	movabs	rax, 0x7fffffffffffffff
	sub	rax, qword ptr [rbp - 0x8f0]
	cmp	rax, qword ptr [rbp - 0x710]
	jl	.label_2849
	jmp	.label_2859
.label_3360:
	cmp	qword ptr [rbp - 0x710], 0
	jge	.label_2874
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x8f0]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x710]
	lea	rsi, [rsi]
	add	rcx, qword ptr [rbp - 0x8f0]
	cmp	rax, rcx
	mov	rsp, rsp
	jle	.label_2849
	jmp	.label_2859
.label_2874:
	nop	
	cmp	qword ptr [rbp - 0x8f0], 0
	jge	.label_2889
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x710]
	nop	
	mov	rcx, qword ptr [rbp - 0x710]
	add	rcx, qword ptr [rbp - 0x8f0]
	cmp	rax, rcx
	mov	rbp, rbp
	jle	.label_2849
	nop	
	jmp	.label_2859
.label_2889:
	mov	rax, qword ptr [rbp - 0x710]
	add	rax, qword ptr [rbp - 0x8f0]
	cmp	rax, qword ptr [rbp - 0x8f0]
	lea	rdi, [rdi]
	jl	.label_2849
.label_2859:
	mov	rbp, rbp
	movabs	rax, 0x8000000000000000
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x710]
	mov	rbp, rbp
	add	rcx, qword ptr [rbp - 0x8f0]
	cmp	rcx, rax
	lea	rdi, [rdi]
	jl	.label_2849
	nop	
	movabs	rax, 0x7fffffffffffffff
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x710]
	mov	rbp, rbp
	add	rcx, qword ptr [rbp - 0x8f0]
	mov	rsp, rsp
	cmp	rax, rcx
	nop	
	jge	.label_2924
.label_2849:
	mov	al, 1
	mov	rcx, qword ptr [rbp - 0x710]
	lea	rsi, [rsi]
	add	rcx, qword ptr [rbp - 0x8f0]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x8a0], rcx
	mov	rsp, rsp
	test	al, 1
	jne	.label_1905
	jmp	.label_2102
.label_2924:
	mov	rbp, rbp
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x710]
	nop	
	add	rdx, qword ptr [rbp - 0x8f0]
	mov	qword ptr [rbp - 0x8a0], rdx
	mov	rbp, rbp
	test	cl, 1
	jne	.label_1905
	jmp	.label_2102
.label_3323:
	mov	al, 1
	test	al, 1
	jne	.label_3756
	lea	rdi, [rdi]
	jmp	.label_2959
.label_3756:
	nop	
	cmp	qword ptr [rbp - 0x8f0], 0
	mov	rbp, rbp
	jge	.label_3179
	lea	rsi, [rsi]
	movabs	rax, 0x8000000000000000
	mov	rcx, qword ptr [rbp - 0x710]
	mov	rbp, rbp
	sub	rax, qword ptr [rbp - 0x8f0]
	cmp	rcx, rax
	jl	.label_2040
	jmp	.label_2072
.label_3179:
	movabs	rax, 0x7fffffffffffffff
	lea	rdi, [rdi]
	sub	rax, qword ptr [rbp - 0x8f0]
	lea	rdi, [rdi]
	cmp	rax, qword ptr [rbp - 0x710]
	jl	.label_2040
	lea	rdi, [rdi]
	jmp	.label_2072
.label_2959:
	nop	
	cmp	qword ptr [rbp - 0x710], 0
	mov	rsp, rsp
	jge	.label_2998
	mov	rax, qword ptr [rbp - 0x8f0]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x710]
	add	rcx, qword ptr [rbp - 0x8f0]
	lea	rdi, [rdi]
	cmp	rax, rcx
	lea	rsi, [rsi]
	jle	.label_2040
	nop	
	jmp	.label_2072
.label_2998:
	nop	
	cmp	qword ptr [rbp - 0x8f0], 0
	lea	rdi, [rdi]
	jge	.label_2257
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x710]
	mov	rcx, qword ptr [rbp - 0x710]
	mov	rsp, rsp
	add	rcx, qword ptr [rbp - 0x8f0]
	mov	rbp, rbp
	cmp	rax, rcx
	lea	rsi, [rsi]
	jle	.label_2040
	jmp	.label_2072
.label_2257:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x710]
	add	rax, qword ptr [rbp - 0x8f0]
	cmp	rax, qword ptr [rbp - 0x8f0]
	lea	rsi, [rsi]
	jl	.label_2040
.label_2072:
	mov	rsp, rsp
	movabs	rax, 0x8000000000000000
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x710]
	add	rcx, qword ptr [rbp - 0x8f0]
	nop	
	cmp	rcx, rax
	jl	.label_2040
	movabs	rax, 0x7fffffffffffffff
	mov	rcx, qword ptr [rbp - 0x710]
	mov	rbp, rbp
	add	rcx, qword ptr [rbp - 0x8f0]
	cmp	rax, rcx
	jge	.label_2225
.label_2040:
	mov	al, 1
	nop	
	mov	rcx, qword ptr [rbp - 0x710]
	mov	rbp, rbp
	add	rcx, qword ptr [rbp - 0x8f0]
	mov	qword ptr [rbp - 0x8a0], rcx
	test	al, 1
	lea	rdi, [rdi]
	jne	.label_1905
	jmp	.label_2102
.label_2225:
	lea	rsi, [rsi]
	xor	eax, eax
	mov	rbp, rbp
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x710]
	add	rdx, qword ptr [rbp - 0x8f0]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x8a0], rdx
	mov	rbp, rbp
	test	cl, 1
	lea	rdi, [rdi]
	jne	.label_1905
	nop	
	jmp	.label_2102
.label_3286:
	xor	eax, eax
	lea	rdi, [rdi]
	mov	cl, al
	test	cl, 1
	jne	.label_2685
	jmp	.label_3069
.label_2685:
	mov	rsp, rsp
	mov	al, 1
	mov	rbp, rbp
	test	al, 1
	nop	
	jne	.label_3071
	jmp	.label_2731
.label_3071:
	cmp	qword ptr [rbp - 0x8f0], 0
	lea	rdi, [rdi]
	jge	.label_3480
	movabs	rax, 0x8000000000000000
	mov	rcx, qword ptr [rbp - 0x710]
	sub	rax, qword ptr [rbp - 0x8f0]
	nop	
	cmp	rcx, rax
	lea	rdi, [rdi]
	jl	.label_2819
	jmp	.label_2354
.label_3480:
	movabs	rax, 0x7fffffffffffffff
	sub	rax, qword ptr [rbp - 0x8f0]
	cmp	rax, qword ptr [rbp - 0x710]
	jl	.label_2819
	jmp	.label_2354
.label_2731:
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0x710], 0
	mov	rbp, rbp
	jge	.label_3102
	mov	rax, qword ptr [rbp - 0x8f0]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x710]
	add	rcx, qword ptr [rbp - 0x8f0]
	mov	rsp, rsp
	cmp	rax, rcx
	jle	.label_2819
	mov	rbp, rbp
	jmp	.label_2354
.label_3102:
	cmp	qword ptr [rbp - 0x8f0], 0
	lea	rdi, [rdi]
	jge	.label_2973
	mov	rax, qword ptr [rbp - 0x710]
	mov	rcx, qword ptr [rbp - 0x710]
	add	rcx, qword ptr [rbp - 0x8f0]
	cmp	rax, rcx
	lea	rdi, [rdi]
	jle	.label_2819
	jmp	.label_2354
.label_2973:
	nop	
	mov	rax, qword ptr [rbp - 0x710]
	nop	
	add	rax, qword ptr [rbp - 0x8f0]
	lea	rdi, [rdi]
	cmp	rax, qword ptr [rbp - 0x8f0]
	lea	rdi, [rdi]
	jl	.label_2819
.label_2354:
	lea	rsi, [rsi]
	movabs	rax, 0x8000000000000000
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x710]
	add	rcx, qword ptr [rbp - 0x8f0]
	cmp	rcx, rax
	mov	rsp, rsp
	jl	.label_2819
	movabs	rax, 0x7fffffffffffffff
	cmp	rax, rcx

