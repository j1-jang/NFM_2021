	.section	.text
	.align	32
	#Procedure 0x401c20

	.globl usage
	.type usage, @function
usage:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x40
	mov	rbp, rbp
	mov	dword ptr [rbp - 4], edi
	cmp	dword ptr [rbp - 4], 0
	je	.label_8
	jmp	.label_10
.label_10:
	movabs	rdi, OFFSET FLAT:.str
	mov	rbp, rbp
	mov	rax,  qword ptr [word ptr [stderr]]
	mov	qword ptr [rbp - 0x10], rax
	mov	rsp, rsp
	call	gettext
	mov	rdx,  qword ptr [word ptr [program_name]]
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, rax
	lea	rsi, [rsi]
	mov	al, 0
	call	fprintf
	mov	dword ptr [rbp - 0x14], eax
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
	mov	dword ptr [rbp - 0x18], eax
	call	gettext
	mov	rsp, rsp
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	mov	rsp, rsp
	call	fputs_unlocked
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x1c], eax
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
	mov	dword ptr [rbp - 0x20], eax
	call	gettext
	lea	rdi, [rdi]
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	mov	rsp, rsp
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:.str.5
	mov	dword ptr [rbp - 0x24], eax
	mov	rbp, rbp
	call	gettext
	mov	rsp, rsp
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	mov	rbp, rbp
	movabs	rdi, OFFSET FLAT:.str.6
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x28], eax
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
	mov	dword ptr [rbp - 0x30], eax
	mov	rbp, rbp
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:.str.9
	mov	dword ptr [rbp - 0x34], eax
	mov	rbp, rbp
	call	emit_ancillary_info
.label_9:
	mov	edi, dword ptr [rbp - 4]
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
	sub	rsp, 0x40
	mov	rbp, rbp
	movabs	rax, OFFSET FLAT:emit_ancillary_info.infomap
	nop	
	mov	qword ptr [rbp - 8], rdi
	nop	
	mov	rdi, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rax
.label_11:
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x18]
	cmp	qword ptr [rdx], 0
	mov	byte ptr [rbp - 0x21], cl
	nop	
	je	.label_14
	nop	
	mov	rdi, qword ptr [rbp - 8]
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x18]
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
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 0x10
	nop	
	mov	qword ptr [rbp - 0x18], rax
	lea	rsi, [rsi]
	jmp	.label_11
.label_15:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x18]
	cmp	qword ptr [rax + 8], 0
	je	.label_16
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax + 8]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x10], rax
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
	mov	dword ptr [rbp - 0x28], eax
	call	setlocale
	mov	qword ptr [rbp - 0x20], rax
	nop	
	cmp	qword ptr [rbp - 0x20], 0
	je	.label_12
	lea	rsi, [rsi]
	movabs	rsi, OFFSET FLAT:.str.38
	mov	rbp, rbp
	mov	eax, 3
	mov	edx, eax
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x20]
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
	mov	dword ptr [rbp - 0x2c], eax
.label_12:
	movabs	rdi, OFFSET FLAT:.str.40
	mov	rsp, rsp
	call	gettext
	movabs	rsi, OFFSET FLAT:.str.18
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	mov	rdi, rax
	mov	al, 0
	call	printf
	mov	rsp, rsp
	movabs	rdi, OFFSET FLAT:.str.41
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x30], eax
	lea	rsi, [rsi]
	call	gettext
	lea	rsi, [rsi]
	movabs	rdx, OFFSET FLAT:.str_0
	lea	rsi, [rsi]
	movabs	rsi, OFFSET FLAT:.str.42
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 0x10]
	cmp	rcx, qword ptr [rbp - 8]
	cmove	rdx, rsi
	mov	qword ptr [rbp - 0x38], rdi
	mov	rsp, rsp
	mov	rdi, rax
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x38]
	mov	al, 0
	lea	rsi, [rsi]
	call	printf
	mov	dword ptr [rbp - 0x3c], eax
	add	rsp, 0x40
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
	sub	rsp, 0x1c8
	mov	dword ptr [rbp - 0x1c], 0
	nop	
	mov	dword ptr [rbp - 0x20], edi
	mov	qword ptr [rbp - 0x28], rsi
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x2d], 0
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x2e], 1
	nop	
	mov	qword ptr [rbp - 0x38], 0
	mov	rsi, qword ptr [rbp - 0x28]
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
	mov	qword ptr [rbp - 0x128], rax
	call	bindtextdomain
	lea	rdi, [rdi]
	movabs	rdi, OFFSET FLAT:.str.11
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x130], rax
	call	textdomain
	lea	rsi, [rsi]
	movabs	rdi, OFFSET FLAT:close_stdout
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x138], rax
	lea	rdi, [rdi]
	call	atexit
	mov	dword ptr [dword ptr [change_times]],  0
	mov	byte ptr [byte ptr [use_ref]],  0
	mov	byte ptr [byte ptr [no_create]],  0
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x13c], eax
.label_41:
	mov	rsp, rsp
	movabs	rdx, OFFSET FLAT:.str.13
	lea	rsi, [rsi]
	movabs	rcx, OFFSET FLAT:longopts
	xor	eax, eax
	mov	r8d, eax
	mov	edi, dword ptr [rbp - 0x20]
	mov	rsi, qword ptr [rbp - 0x28]
	call	getopt_long
	mov	dword ptr [rbp - 0x2c], eax
	cmp	eax, -1
	mov	rsp, rsp
	je	.label_39
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x2c]
	nop	
	mov	ecx, eax
	nop	
	sub	ecx, 0xffffff7d
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x140], eax
	mov	dword ptr [rbp - 0x144], ecx
	je	.label_47
	lea	rdi, [rdi]
	jmp	.label_54
.label_54:
	mov	eax, dword ptr [rbp - 0x140]
	nop	
	sub	eax, 0xffffff7e
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x148], eax
	lea	rsi, [rsi]
	je	.label_58
	jmp	.label_61
.label_61:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x140]
	sub	eax, 0x61
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x14c], eax
	mov	rbp, rbp
	je	.label_62
	jmp	.label_66
.label_66:
	mov	eax, dword ptr [rbp - 0x140]
	nop	
	sub	eax, 0x63
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x150], eax
	lea	rdi, [rdi]
	je	.label_67
	jmp	.label_21
.label_21:
	nop	
	mov	eax, dword ptr [rbp - 0x140]
	sub	eax, 0x64
	mov	dword ptr [rbp - 0x154], eax
	lea	rdi, [rdi]
	je	.label_44
	lea	rsi, [rsi]
	jmp	.label_30
.label_30:
	mov	eax, dword ptr [rbp - 0x140]
	sub	eax, 0x66
	mov	dword ptr [rbp - 0x158], eax
	mov	rbp, rbp
	je	.label_33
	jmp	.label_36
.label_36:
	mov	eax, dword ptr [rbp - 0x140]
	sub	eax, 0x68
	mov	dword ptr [rbp - 0x15c], eax
	lea	rsi, [rsi]
	je	.label_37
	mov	rbp, rbp
	jmp	.label_38
.label_38:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x140]
	lea	rsi, [rsi]
	sub	eax, 0x6d
	mov	dword ptr [rbp - 0x160], eax
	je	.label_40
	mov	rbp, rbp
	jmp	.label_53
.label_53:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x140]
	nop	
	sub	eax, 0x72
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x164], eax
	je	.label_51
	mov	rbp, rbp
	jmp	.label_59
.label_59:
	mov	eax, dword ptr [rbp - 0x140]
	sub	eax, 0x74
	mov	dword ptr [rbp - 0x168], eax
	je	.label_60
	lea	rsi, [rsi]
	jmp	.label_64
.label_64:
	mov	eax, dword ptr [rbp - 0x140]
	sub	eax, 0x80
	mov	dword ptr [rbp - 0x16c], eax
	je	.label_65
	nop	
	jmp	.label_43
.label_62:
	mov	rbp, rbp
	mov	eax,  dword ptr [dword ptr [change_times]]
	or	eax, 1
	mov	rbp, rbp
	mov	dword ptr [dword ptr [change_times]],  eax
	lea	rsi, [rsi]
	jmp	.label_22
.label_67:
	nop	
	mov	byte ptr [byte ptr [no_create]],  1
	jmp	.label_22
.label_44:
	mov	rbp, rbp
	mov	rax,  qword ptr [word ptr [optarg]]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x38], rax
	jmp	.label_22
.label_33:
	lea	rsi, [rsi]
	jmp	.label_22
.label_37:
	mov	byte ptr [byte ptr [no_dereference]],  1
	mov	rbp, rbp
	jmp	.label_22
.label_40:
	mov	eax,  dword ptr [dword ptr [change_times]]
	nop	
	or	eax, 2
	mov	dword ptr [dword ptr [change_times]],  eax
	jmp	.label_22
.label_51:
	mov	rsp, rsp
	mov	byte ptr [byte ptr [use_ref]],  1
	mov	rax,  qword ptr [word ptr [optarg]]
	mov	qword ptr [word ptr [ref_file]],  rax
	mov	rsp, rsp
	jmp	.label_22
.label_60:
	movabs	rdi, OFFSET FLAT:newtime
	nop	
	mov	edx, 6
	lea	rsi, [rsi]
	mov	rsi,  qword ptr [word ptr [optarg]]
	call	posixtime
	test	al, 1
	lea	rsi, [rsi]
	jne	.label_56
	movabs	rdi, OFFSET FLAT:.str.14
	mov	rbp, rbp
	call	gettext
	nop	
	mov	rdi,  qword ptr [word ptr [optarg]]
	mov	qword ptr [rbp - 0x178], rax
	call	quote
	mov	edi, 1
	xor	esi, esi
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x178]
	mov	rcx, rax
	lea	rsi, [rsi]
	mov	al, 0
	call	error
.label_56:
	mov	qword ptr [word ptr [label_27]],  0
	mov	rax,  qword ptr [word ptr [newtime]]
	lea	rsi, [rsi]
	mov	qword ptr [word ptr [label_26]],  rax
	lea	rdi, [rdi]
	mov	rax,  qword ptr [word ptr [label_27]]
	mov	qword ptr [word ptr [label_28]],  rax
	mov	byte ptr [rbp - 0x2d], 1
	lea	rsi, [rsi]
	jmp	.label_22
.label_65:
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
	jmp	.label_22
.label_58:
	xor	edi, edi
	nop	
	call	usage
.label_47:
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
	mov	qword ptr [rbp - 0x180], rdi
	nop	
	mov	rdi, rbx
	nop	
	mov	qword ptr [rbp - 0x188], rcx
	mov	rcx, r14
	nop	
	mov	qword ptr [rsp], rax
	mov	rax, qword ptr [rbp - 0x188]
	mov	qword ptr [rsp + 8], rax
	mov	rbx, qword ptr [rbp - 0x180]
	nop	
	mov	qword ptr [rsp + 0x10], rbx
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x18], 0
	mov	rsp, rsp
	mov	al, 0
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x190], r11
	call	version_etc
	lea	rdi, [rdi]
	xor	edi, edi
	lea	rsi, [rsi]
	call	exit
.label_43:
	mov	edi, 1
	call	usage
.label_22:
	mov	rbp, rbp
	jmp	.label_41
.label_39:
	cmp	dword ptr [dword ptr [change_times]],  0
	lea	rsi, [rsi]
	jne	.label_46
	mov	dword ptr [dword ptr [change_times]],  3
.label_46:
	test	byte ptr [rbp - 0x2d], 1
	mov	rsp, rsp
	je	.label_52
	test	byte ptr [byte ptr [use_ref]],  1
	jne	.label_55
	cmp	qword ptr [rbp - 0x38], 0
	mov	rbp, rbp
	je	.label_52
.label_55:
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
.label_52:
	mov	rsp, rsp
	test	byte ptr [byte ptr [use_ref]],  1
	je	.label_69
	lea	rsi, [rsi]
	test	byte ptr [byte ptr [no_dereference]],  1
	lea	rdi, [rdi]
	je	.label_19
	nop	
	lea	rsi, [rbp - 0xc8]
	mov	rbp, rbp
	mov	rdi,  qword ptr [word ptr [ref_file]]
	lea	rsi, [rsi]
	call	__lstat
	cmp	eax, 0
	jne	.label_32
	jmp	.label_34
.label_19:
	lea	rdi, [rdi]
	lea	rsi, [rbp - 0xc8]
	mov	rdi,  qword ptr [word ptr [ref_file]]
	lea	rdi, [rdi]
	call	stat
	mov	rbp, rbp
	cmp	eax, 0
	je	.label_34
.label_32:
	mov	rbp, rbp
	call	__errno_location
	mov	rsp, rsp
	movabs	rdi, OFFSET FLAT:.str.23
	mov	rsp, rsp
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0x194], esi
	call	gettext
	lea	rsi, [rsi]
	mov	edi, 4
	mov	rsp, rsp
	mov	rsi,  qword ptr [word ptr [ref_file]]
	nop	
	mov	qword ptr [rbp - 0x1a0], rax
	call	quotearg_style
	mov	rbp, rbp
	mov	edi, 1
	lea	rsi, [rsi]
	mov	esi, dword ptr [rbp - 0x194]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x1a0]
	mov	rbp, rbp
	mov	rcx, rax
	mov	al, 0
	call	error
.label_34:
	lea	rdi, [rbp - 0xc8]
	lea	rdi, [rdi]
	call	get_stat_atime
	lea	rdi, [rbp - 0xc8]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0xd8], rax
	mov	rbp, rbp
	mov	qword ptr [rbp - 0xd0], rdx
	mov	rax, qword ptr [rbp - 0xd8]
	lea	rdi, [rdi]
	mov	qword ptr [word ptr [newtime]],  rax
	nop	
	mov	rax, qword ptr [rbp - 0xd0]
	mov	qword ptr [word ptr [label_27]],  rax
	call	get_stat_mtime
	mov	qword ptr [rbp - 0xe8], rax
	nop	
	mov	qword ptr [rbp - 0xe0], rdx
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0xe8]
	mov	rbp, rbp
	mov	qword ptr [word ptr [label_26]],  rax
	mov	rax, qword ptr [rbp - 0xe0]
	lea	rsi, [rsi]
	mov	qword ptr [word ptr [label_28]],  rax
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x2d], 1
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x38], 0
	nop	
	je	.label_29
	mov	eax,  dword ptr [dword ptr [change_times]]
	lea	rsi, [rsi]
	and	eax, 1
	cmp	eax, 0
	je	.label_42
	movabs	rax, OFFSET FLAT:newtime
	mov	rsi, qword ptr [rbp - 0x38]
	mov	rsp, rsp
	mov	rdi, rax
	mov	rdx, rax
	mov	rsp, rsp
	call	get_reldate
.label_42:
	mov	eax,  dword ptr [dword ptr [change_times]]
	lea	rsi, [rsi]
	and	eax, 2
	mov	rbp, rbp
	cmp	eax, 0
	je	.label_57
	lea	rsi, [rsi]
	movabs	rax, OFFSET FLAT:newtime
	mov	rbp, rbp
	add	rax, 0x10
	mov	rsi, qword ptr [rbp - 0x38]
	mov	rdi, rax
	mov	rdx, rax
	call	get_reldate
.label_57:
	jmp	.label_29
.label_29:
	jmp	.label_23
.label_69:
	cmp	qword ptr [rbp - 0x38], 0
	mov	rsp, rsp
	je	.label_35
	lea	rdi, [rbp - 0xf8]
	call	gettime
	movabs	rdi, OFFSET FLAT:newtime
	nop	
	lea	rdx, [rbp - 0xf8]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x38]
	call	get_reldate
	mov	rdx,  qword ptr [word ptr [newtime]]
	mov	qword ptr [word ptr [label_26]],  rdx
	lea	rsi, [rsi]
	mov	rdx,  qword ptr [word ptr [label_27]]
	mov	rsp, rsp
	mov	qword ptr [word ptr [label_28]],  rdx
	mov	byte ptr [rbp - 0x2d], 1
	cmp	dword ptr [dword ptr [change_times]],  3
	lea	rsi, [rsi]
	jne	.label_18
	mov	rax,  qword ptr [word ptr [newtime]]
	cmp	rax, qword ptr [rbp - 0xf8]
	jne	.label_18
	mov	rax,  qword ptr [word ptr [label_27]]
	cmp	rax, qword ptr [rbp - 0xf0]
	jne	.label_18
	mov	rsp, rsp
	lea	rdi, [rbp - 0x118]
	nop	
	lea	rdx, [rbp - 0x108]
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0xf8]
	mov	rbp, rbp
	xor	rax, 1
	nop	
	mov	qword ptr [rbp - 0x108], rax
	mov	rax, qword ptr [rbp - 0xf0]
	mov	qword ptr [rbp - 0x100], rax
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x38]
	call	get_reldate
	nop	
	mov	rax, qword ptr [rbp - 0x118]
	cmp	rax, qword ptr [rbp - 0x108]
	mov	rbp, rbp
	jne	.label_49
	mov	rax, qword ptr [rbp - 0x110]
	cmp	rax, qword ptr [rbp - 0x100]
	jne	.label_49
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x2d], 0
.label_49:
	jmp	.label_18
.label_18:
	mov	rsp, rsp
	jmp	.label_35
.label_35:
	mov	rsp, rsp
	jmp	.label_23
.label_23:
	test	byte ptr [rbp - 0x2d], 1
	jne	.label_24
	mov	rsp, rsp
	mov	eax, 2
	mov	ecx, dword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	sub	ecx,  dword ptr [dword ptr [optind]]
	lea	rdi, [rdi]
	cmp	eax, ecx
	mov	rbp, rbp
	jg	.label_24
	call	posix2_version
	cmp	eax, 0x30db0
	mov	rsp, rsp
	jge	.label_24
	movabs	rdi, OFFSET FLAT:newtime
	mov	edx, 9
	movsxd	rax,  dword ptr [dword ptr [optind]]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	rsi, qword ptr [rcx + rax*8]
	mov	rbp, rbp
	call	posixtime
	test	al, 1
	jne	.label_48
	jmp	.label_24
.label_48:
	lea	rsi, [rsi]
	movabs	rdi, OFFSET FLAT:.str.24
	mov	qword ptr [word ptr [label_27]],  0
	mov	rax,  qword ptr [word ptr [newtime]]
	mov	rsp, rsp
	mov	qword ptr [word ptr [label_26]],  rax
	mov	rax,  qword ptr [word ptr [label_27]]
	mov	rsp, rsp
	mov	qword ptr [word ptr [label_28]],  rax
	nop	
	mov	byte ptr [rbp - 0x2d], 1
	call	getenv
	cmp	rax, 0
	jne	.label_20
	lea	rsi, [rsi]
	movabs	rdi, OFFSET FLAT:newtime
	mov	rsp, rsp
	call	localtime
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x120], rax
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0x120], 0
	nop	
	je	.label_68
	movabs	rdi, OFFSET FLAT:.str.25
	lea	rsi, [rsi]
	call	gettext
	xor	ecx, ecx
	lea	rsi, [rsi]
	movsxd	rdi,  dword ptr [dword ptr [optind]]
	mov	rdx, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rdx + rdi*8]
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x120]
	nop	
	movsxd	rdi, dword ptr [rdi + 0x14]
	add	rdi, 0x76c
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x120]
	mov	r8d, dword ptr [rsi + 0x10]
	lea	rdi, [rdi]
	add	r8d, 1
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x120]
	mov	rsp, rsp
	mov	r9d, dword ptr [rsi + 0xc]
	mov	rsi, qword ptr [rbp - 0x120]
	mov	r10d, dword ptr [rsi + 8]
	mov	rsi, qword ptr [rbp - 0x120]
	mov	r11d, dword ptr [rsi + 4]
	mov	rsi, qword ptr [rbp - 0x120]
	mov	ebx, dword ptr [rsi]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x1a8], rdi
	mov	edi, ecx
	mov	esi, ecx
	mov	qword ptr [rbp - 0x1b0], rdx
	lea	rdi, [rdi]
	mov	rdx, rax
	nop	
	mov	rcx, qword ptr [rbp - 0x1b0]
	mov	rax, qword ptr [rbp - 0x1a8]
	mov	dword ptr [rbp - 0x1b4], r8d
	mov	r8, rax
	mov	r14d, dword ptr [rbp - 0x1b4]
	nop	
	mov	dword ptr [rbp - 0x1b8], r9d
	mov	r9d, r14d
	mov	r15d, dword ptr [rbp - 0x1b8]
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
.label_68:
	mov	rbp, rbp
	jmp	.label_20
.label_20:
	mov	eax,  dword ptr [dword ptr [optind]]
	nop	
	add	eax, 1
	mov	dword ptr [dword ptr [optind]],  eax
.label_24:
	lea	rsi, [rsi]
	test	byte ptr [rbp - 0x2d], 1
	mov	rsp, rsp
	jne	.label_25
	cmp	dword ptr [dword ptr [change_times]],  3
	lea	rsi, [rsi]
	jne	.label_31
	lea	rdi, [rdi]
	mov	byte ptr [byte ptr [amtime_now]],  1
	nop	
	jmp	.label_50
.label_31:
	lea	rdi, [rdi]
	mov	qword ptr [word ptr [label_27]],  0x3fffffff
	mov	rbp, rbp
	mov	qword ptr [word ptr [label_28]],  0x3fffffff
.label_50:
	mov	rsp, rsp
	jmp	.label_25
.label_25:
	mov	rbp, rbp
	mov	eax,  dword ptr [dword ptr [optind]]
	lea	rsi, [rsi]
	cmp	eax, dword ptr [rbp - 0x20]
	mov	rbp, rbp
	jne	.label_45
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
.label_45:
	jmp	.label_17
.label_17:
	mov	eax,  dword ptr [dword ptr [optind]]
	lea	rdi, [rdi]
	cmp	eax, dword ptr [rbp - 0x20]
	nop	
	jge	.label_63
	movsxd	rax,  dword ptr [dword ptr [optind]]
	nop	
	mov	rcx, qword ptr [rbp - 0x28]
	nop	
	mov	rdi, qword ptr [rcx + rax*8]
	lea	rdi, [rdi]
	call	touch
	and	al, 1
	movzx	edx, al
	mov	rbp, rbp
	mov	al, byte ptr [rbp - 0x2e]
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
	mov	byte ptr [rbp - 0x2e], al
	mov	eax,  dword ptr [dword ptr [optind]]
	mov	rbp, rbp
	add	eax, 1
	lea	rsi, [rsi]
	mov	dword ptr [dword ptr [optind]],  eax
	jmp	.label_17
.label_63:
	mov	eax, 1
	lea	rdi, [rdi]
	xor	ecx, ecx
	mov	dl, byte ptr [rbp - 0x2e]
	test	dl, 1
	nop	
	cmovne	eax, ecx
	add	rsp, 0x1c8
	lea	rsi, [rsi]
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x402c70

	.globl get_reldate
	.type get_reldate, @function
get_reldate:
	nop	
	push	rbp
	mov	rbp, rsp
	lea	rdi, [rdi]
	sub	rsp, 0x20
	nop	
	mov	qword ptr [rbp - 8], rdi
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x18]
	call	parse_datetime
	nop	
	test	al, 1
	mov	rsp, rsp
	jne	.label_70
	movabs	rdi, OFFSET FLAT:.str.14
	call	gettext
	mov	rdi, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x20], rax
	lea	rsi, [rsi]
	call	quote
	mov	rsp, rsp
	mov	edi, 1
	xor	esi, esi
	mov	rdx, qword ptr [rbp - 0x20]
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
	#Procedure 0x402d00

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
	mov	qword ptr [rbp - 0x10], rdi
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x18], 0xffffffff
	mov	dword ptr [rbp - 0x1c], 0
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x28], rax
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x10]
	mov	ecx, OFFSET FLAT:.str.55
	mov	esi, ecx
	call	strcmp
	cmp	eax, 0
	mov	rsp, rsp
	jne	.label_87
	mov	dword ptr [rbp - 0x18], 1
	jmp	.label_90
.label_87:
	mov	rsp, rsp
	test	byte ptr [byte ptr [no_create]],  1
	jne	.label_76
	mov	rbp, rbp
	test	byte ptr [byte ptr [no_dereference]],  1
	mov	rbp, rbp
	jne	.label_76
	xor	edi, edi
	nop	
	mov	edx, 0x941
	mov	ecx, 0x1b6
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	call	fd_reopen
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x18], eax
	cmp	dword ptr [rbp - 0x18], -1
	lea	rdi, [rdi]
	jne	.label_78
	call	__errno_location
	lea	rdi, [rdi]
	cmp	dword ptr [rax], 0x15
	je	.label_78
	lea	rsi, [rsi]
	call	__errno_location
	cmp	dword ptr [rax], 0x16
	je	.label_78
	call	__errno_location
	cmp	dword ptr [rax], 1
	je	.label_78
	nop	
	call	__errno_location
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 0x1c], ecx
.label_78:
	jmp	.label_76
.label_76:
	lea	rdi, [rdi]
	jmp	.label_90
.label_90:
	cmp	dword ptr [dword ptr [change_times]],  3
	je	.label_93
	cmp	dword ptr [dword ptr [change_times]],  2
	jne	.label_72
	mov	qword ptr [word ptr [label_27]],  0x3ffffffe
	jmp	.label_73
.label_72:
	cmp	dword ptr [dword ptr [change_times]],  1
	mov	rbp, rbp
	jne	.label_80
	jmp	.label_83
.label_80:
	lea	rdi, [rdi]
	movabs	rdi, OFFSET FLAT:.str.56
	lea	rdi, [rdi]
	movabs	rsi, OFFSET FLAT:.str.57
	mov	edx, 0x99
	nop	
	movabs	rcx, OFFSET FLAT:__PRETTY_FUNCTION__.touch
	call	__assert_fail
.label_83:
	mov	rsp, rsp
	mov	qword ptr [word ptr [label_28]],  0x3ffffffe
.label_73:
	jmp	.label_93
.label_93:
	lea	rsi, [rsi]
	test	byte ptr [byte ptr [amtime_now]],  1
	nop	
	je	.label_71
	nop	
	mov	qword ptr [rbp - 0x28], 0
.label_71:
	mov	edi, dword ptr [rbp - 0x18]
	mov	rbp, rbp
	cmp	dword ptr [rbp - 0x18], 1
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x2c], edi
	mov	rsp, rsp
	jne	.label_75
	xor	eax, eax
	mov	rsp, rsp
	mov	ecx, eax
	mov	qword ptr [rbp - 0x38], rcx
	mov	rbp, rbp
	jmp	.label_81
.label_75:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x38], rax
.label_81:
	mov	rax, qword ptr [rbp - 0x38]
	xor	ecx, ecx
	mov	rsp, rsp
	mov	dl, cl
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x28]
	test	byte ptr [byte ptr [no_dereference]],  1
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x40], rax
	nop	
	mov	qword ptr [rbp - 0x48], rcx
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x49], dl
	mov	rsp, rsp
	je	.label_89
	cmp	dword ptr [rbp - 0x18], -1
	sete	al
	mov	byte ptr [rbp - 0x49], al
.label_89:
	mov	al, byte ptr [rbp - 0x49]
	mov	esi, 0xffffff9c
	xor	ecx, ecx
	mov	edx, 0x100
	mov	rbp, rbp
	test	al, 1
	cmovne	ecx, edx
	nop	
	mov	edi, dword ptr [rbp - 0x2c]
	mov	rdx, qword ptr [rbp - 0x40]
	nop	
	mov	r8, qword ptr [rbp - 0x48]
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x50], ecx
	lea	rdi, [rdi]
	mov	rcx, r8
	mov	r8d, dword ptr [rbp - 0x50]
	mov	rbp, rbp
	call	fdutimensat
	lea	rdi, [rdi]
	cmp	eax, 0
	sete	r9b
	lea	rsi, [rsi]
	and	r9b, 1
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x11], r9b
	cmp	dword ptr [rbp - 0x18], 0
	jne	.label_88
	mov	rbp, rbp
	xor	edi, edi
	call	close
	lea	rdi, [rdi]
	cmp	eax, 0
	nop	
	je	.label_92
	mov	rbp, rbp
	call	__errno_location
	lea	rsi, [rsi]
	movabs	rdi, OFFSET FLAT:.str.58
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0x54], esi
	call	gettext
	nop	
	mov	edi, 4
	mov	rsi, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x60], rax
	call	quotearg_style
	xor	edi, edi
	lea	rdi, [rdi]
	mov	esi, dword ptr [rbp - 0x54]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x60]
	mov	rcx, rax
	mov	al, 0
	mov	rbp, rbp
	call	error
	mov	byte ptr [rbp - 1], 0
	jmp	.label_79
.label_92:
	lea	rdi, [rdi]
	jmp	.label_82
.label_88:
	cmp	dword ptr [rbp - 0x18], 1
	nop	
	jne	.label_77
	nop	
	test	byte ptr [rbp - 0x11], 1
	lea	rsi, [rsi]
	jne	.label_91
	call	__errno_location
	cmp	dword ptr [rax], 9
	mov	rbp, rbp
	jne	.label_91
	test	byte ptr [byte ptr [no_create]],  1
	lea	rsi, [rsi]
	je	.label_91
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 1], 1
	lea	rdi, [rdi]
	jmp	.label_79
.label_91:
	jmp	.label_77
.label_77:
	lea	rsi, [rsi]
	jmp	.label_82
.label_82:
	test	byte ptr [rbp - 0x11], 1
	jne	.label_84
	cmp	dword ptr [rbp - 0x1c], 0
	je	.label_85
	lea	rsi, [rsi]
	movabs	rdi, OFFSET FLAT:.str.59
	mov	esi, dword ptr [rbp - 0x1c]
	mov	dword ptr [rbp - 0x64], esi
	lea	rdi, [rdi]
	call	gettext
	mov	edi, 4
	nop	
	mov	rsi, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x70], rax
	call	quotearg_style
	lea	rsi, [rsi]
	xor	edi, edi
	mov	esi, dword ptr [rbp - 0x64]
	mov	rdx, qword ptr [rbp - 0x70]
	mov	rcx, rax
	mov	rsp, rsp
	mov	al, 0
	call	error
	jmp	.label_74
.label_85:
	mov	rbp, rbp
	test	byte ptr [byte ptr [no_create]],  1
	je	.label_86
	mov	rbp, rbp
	call	__errno_location
	lea	rdi, [rdi]
	cmp	dword ptr [rax], 2
	jne	.label_86
	nop	
	mov	byte ptr [rbp - 1], 1
	lea	rsi, [rsi]
	jmp	.label_79
.label_86:
	call	__errno_location
	mov	rbp, rbp
	movabs	rdi, OFFSET FLAT:.str.60
	mov	esi, dword ptr [rax]
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x74], esi
	lea	rdi, [rdi]
	call	gettext
	mov	edi, 4
	mov	rsi, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x80], rax
	lea	rdi, [rdi]
	call	quotearg_style
	lea	rsi, [rsi]
	xor	edi, edi
	mov	esi, dword ptr [rbp - 0x74]
	mov	rdx, qword ptr [rbp - 0x80]
	nop	
	mov	rcx, rax
	mov	al, 0
	call	error
.label_74:
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 1], 0
	jmp	.label_79
.label_84:
	mov	byte ptr [rbp - 1], 1
.label_79:
	mov	rbp, rbp
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	mov	rbp, rbp
	movzx	eax, al
	add	rsp, 0x80
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x403150

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
	#Procedure 0x403170

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
	mov	qword ptr [rbp - 0x18], rsi
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x20], rdx
	mov	qword ptr [rbp - 0x28], rcx
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x40], -1
	mov	byte ptr [rbp - 0x41], 0
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	call	strlen
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x38], rax
	mov	qword ptr [rbp - 0x30], 0
.label_98:
	mov	rax, qword ptr [rbp - 0x30]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x18]
	cmp	qword ptr [rcx + rax*8], 0
	je	.label_94
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x30]
	nop	
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rdi, qword ptr [rcx + rax*8]
	mov	rsi, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x38]
	call	strncmp
	mov	rbp, rbp
	cmp	eax, 0
	jne	.label_95
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x30]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rdi, qword ptr [rcx + rax*8]
	call	strlen
	cmp	rax, qword ptr [rbp - 0x38]
	mov	rsp, rsp
	jne	.label_99
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x30]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 8], rax
	lea	rsi, [rsi]
	jmp	.label_101
.label_99:
	cmp	qword ptr [rbp - 0x40], -1
	jne	.label_104
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x40], rax
	mov	rsp, rsp
	jmp	.label_96
.label_104:
	cmp	qword ptr [rbp - 0x20], 0
	lea	rdi, [rdi]
	je	.label_100
	mov	rax, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	imul	rcx, qword ptr [rbp - 0x40]
	add	rax, rcx
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x28]
	imul	rdx, qword ptr [rbp - 0x30]
	add	rcx, rdx
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x28]
	nop	
	mov	rdi, rax
	mov	rsi, rcx
	lea	rsi, [rsi]
	call	memcmp
	cmp	eax, 0
	je	.label_102
.label_100:
	nop	
	mov	byte ptr [rbp - 0x41], 1
.label_102:
	lea	rsi, [rsi]
	jmp	.label_96
.label_96:
	mov	rbp, rbp
	jmp	.label_105
.label_105:
	mov	rsp, rsp
	jmp	.label_95
.label_95:
	nop	
	jmp	.label_97
.label_97:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, 1
	mov	qword ptr [rbp - 0x30], rax
	mov	rsp, rsp
	jmp	.label_98
.label_94:
	test	byte ptr [rbp - 0x41], 1
	je	.label_103
	mov	rsp, rsp
	mov	qword ptr [rbp - 8], -2
	jmp	.label_101
.label_103:
	mov	rax, qword ptr [rbp - 0x40]
	mov	rbp, rbp
	mov	qword ptr [rbp - 8], rax
.label_101:
	mov	rax, qword ptr [rbp - 8]
	mov	rbp, rbp
	add	rsp, 0x50
	nop	
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x403320

	.globl argmatch_invalid
	.type argmatch_invalid, @function
argmatch_invalid:
	mov	rbp, rbp
	push	rbp
	mov	rsp, rsp
	mov	rbp, rsp
	sub	rsp, 0x40
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 8], rdi
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x18], -1
	jne	.label_106
	movabs	rdi, OFFSET FLAT:.str_1
	call	gettext
	mov	qword ptr [rbp - 0x28], rax
	nop	
	jmp	.label_107
.label_106:
	nop	
	movabs	rdi, OFFSET FLAT:.str.1_0
	mov	rbp, rbp
	call	gettext
	mov	qword ptr [rbp - 0x28], rax
.label_107:
	mov	rax, qword ptr [rbp - 0x28]
	xor	edi, edi
	mov	rbp, rbp
	mov	esi, 8
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x20], rax
	mov	rdx, qword ptr [rbp - 0x20]
	nop	
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x30], rdx
	lea	rsi, [rsi]
	mov	rdx, rax
	call	quotearg_n_style
	mov	edi, 1
	mov	rsi, qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x38], rax
	call	quote_n
	xor	edi, edi
	mov	dword ptr [rbp - 0x3c], edi
	nop	
	mov	esi, dword ptr [rbp - 0x3c]
	mov	rdx, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x38]
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
	#Procedure 0x403400

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
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	nop	
	mov	qword ptr [rbp - 0x18], rdx
	mov	qword ptr [rbp - 0x28], 0
	mov	rsp, rsp
	mov	rdi, rax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stderr]]
	mov	rbp, rbp
	mov	rdi, rax
	lea	rsi, [rsi]
	call	fputs_unlocked
	mov	qword ptr [rbp - 0x20], 0
	mov	dword ptr [rbp - 0x2c], eax
.label_108:
	mov	rax, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 8]
	mov	rsp, rsp
	cmp	qword ptr [rcx + rax*8], 0
	lea	rsi, [rsi]
	je	.label_112
	nop	
	cmp	qword ptr [rbp - 0x20], 0
	je	.label_111
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x28]
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	imul	rcx, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	add	rax, rcx
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rsi, rax
	lea	rdi, [rdi]
	call	memcmp
	cmp	eax, 0
	lea	rsi, [rsi]
	je	.label_110
.label_111:
	mov	rdi,  qword ptr [word ptr [stderr]]
	mov	rax, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 8]
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
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	imul	rdx, qword ptr [rbp - 0x20]
	add	rcx, rdx
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x28], rcx
	mov	dword ptr [rbp - 0x3c], eax
	jmp	.label_113
.label_110:
	mov	rdi,  qword ptr [word ptr [stderr]]
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 8]
	mov	rax, qword ptr [rcx + rax*8]
	mov	qword ptr [rbp - 0x48], rdi
	lea	rsi, [rsi]
	mov	rdi, rax
	call	quote
	movabs	rsi, OFFSET FLAT:.str.4_0
	mov	rdi, qword ptr [rbp - 0x48]
	mov	rdx, rax
	mov	al, 0
	call	fprintf
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x4c], eax
.label_113:
	jmp	.label_109
.label_109:
	mov	rax, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	add	rax, 1
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x20], rax
	jmp	.label_108
.label_112:
	mov	rbp, rbp
	mov	edi, 0xa
	mov	rsi,  qword ptr [word ptr [stderr]]
	call	putc_unlocked
	mov	dword ptr [rbp - 0x50], eax
	mov	rsp, rsp
	add	rsp, 0x50
	pop	rbp
	lea	rdi, [rdi]
	ret	
	.section	.text
	.align	32
	#Procedure 0x4035b0

	.globl __xargmatch_internal
	.type __xargmatch_internal, @function
__xargmatch_internal:
	push	rbp
	mov	rsp, rsp
	mov	rbp, rsp
	sub	rsp, 0x40
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x20], rdx
	mov	qword ptr [rbp - 0x28], rcx
	mov	qword ptr [rbp - 0x30], r8
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x38], r9
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rbp - 0x20]
	mov	rdx, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x30]
	mov	rbp, rbp
	call	argmatch
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x40], rax
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x40], 0
	jl	.label_114
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x40]
	mov	rsp, rsp
	mov	qword ptr [rbp - 8], rax
	jmp	.label_115
.label_114:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 0x40]
	call	argmatch_invalid
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x30]
	call	argmatch_valid
	mov	rsp, rsp
	call	qword ptr [rbp - 0x38]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 8], -1
.label_115:
	nop	
	mov	rax, qword ptr [rbp - 8]
	mov	rsp, rsp
	add	rsp, 0x40
	mov	rbp, rbp
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x403670
	.globl argmatch_to_argument
	.type argmatch_to_argument, @function
argmatch_to_argument:

	push	rbp
	mov	rbp, rsp
	mov	rsp, rsp
	sub	rsp, 0x30
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x10], rdi
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x18], rsi
	nop	
	mov	qword ptr [rbp - 0x20], rdx
	mov	qword ptr [rbp - 0x28], rcx
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x30], 0
.label_118:
	nop	
	mov	rax, qword ptr [rbp - 0x30]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x18]
	cmp	qword ptr [rcx + rax*8], 0
	mov	rsp, rsp
	je	.label_120
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	imul	rcx, qword ptr [rbp - 0x30]
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
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	mov	rax, qword ptr [rcx + rax*8]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_116
.label_117:
	lea	rdi, [rdi]
	jmp	.label_119
.label_119:
	mov	rax, qword ptr [rbp - 0x30]
	mov	rbp, rbp
	add	rax, 1
	mov	qword ptr [rbp - 0x30], rax
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
	#Procedure 0x403740
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
	#Procedure 0x403770
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
	#Procedure 0x4037a0

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
	je	.label_121
	test	byte ptr [byte ptr [ignore_EPIPE]],  1
	je	.label_123
	mov	rbp, rbp
	call	__errno_location
	mov	rsp, rsp
	cmp	dword ptr [rax], 0x20
	je	.label_121
.label_123:
	mov	rsp, rsp
	movabs	rdi, OFFSET FLAT:.str_2
	call	gettext
	mov	qword ptr [rbp - 8], rax
	cmp	qword ptr [word ptr [file_name]],  0
	je	.label_125
	nop	
	call	__errno_location
	nop	
	mov	esi, dword ptr [rax]
	mov	rdi,  qword ptr [word ptr [file_name]]
	mov	dword ptr [rbp - 0xc], esi
	call	quotearg_colon
	nop	
	xor	edi, edi
	lea	rsi, [rsi]
	movabs	rdx, OFFSET FLAT:.str.1_1
	mov	rbp, rbp
	mov	r8, qword ptr [rbp - 8]
	mov	esi, dword ptr [rbp - 0xc]
	lea	rdi, [rdi]
	mov	rcx, rax
	mov	al, 0
	call	error
	jmp	.label_122
.label_125:
	call	__errno_location
	lea	rdi, [rdi]
	xor	edi, edi
	mov	rsp, rsp
	movabs	rdx, OFFSET FLAT:.str_3
	mov	esi, dword ptr [rax]
	nop	
	mov	rcx, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	mov	al, 0
	mov	rsp, rsp
	call	error
.label_122:
	mov	edi,  dword ptr [dword ptr [exit_failure]]
	mov	rsp, rsp
	call	_exit
.label_121:
	mov	rdi,  qword ptr [word ptr [stderr]]
	mov	rbp, rbp
	call	close_stream
	nop	
	cmp	eax, 0
	je	.label_124
	lea	rdi, [rdi]
	mov	edi,  dword ptr [dword ptr [exit_failure]]
	call	_exit
.label_124:
	lea	rdi, [rdi]
	add	rsp, 0x10
	nop	
	pop	rbp
	lea	rsi, [rsi]
	ret	
	.section	.text
	.align	32
	#Procedure 0x4038d0

	.globl fd_reopen
	.type fd_reopen, @function
fd_reopen:
	push	rbp
	mov	rbp, rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	dword ptr [rbp - 8], edi
	mov	qword ptr [rbp - 0x10], rsi
	mov	dword ptr [rbp - 0x14], edx
	nop	
	mov	dword ptr [rbp - 0x18], ecx
	nop	
	mov	rdi, qword ptr [rbp - 0x10]
	nop	
	mov	esi, dword ptr [rbp - 0x14]
	nop	
	mov	edx, dword ptr [rbp - 0x18]
	mov	al, 0
	call	open
	mov	dword ptr [rbp - 0x1c], eax
	mov	eax, dword ptr [rbp - 0x1c]
	cmp	eax, dword ptr [rbp - 8]
	nop	
	je	.label_128
	cmp	dword ptr [rbp - 0x1c], 0
	jge	.label_127
.label_128:
	mov	eax, dword ptr [rbp - 0x1c]
	nop	
	mov	dword ptr [rbp - 4], eax
	mov	rbp, rbp
	jmp	.label_126
.label_127:
	mov	rbp, rbp
	mov	edi, dword ptr [rbp - 0x1c]
	mov	rbp, rbp
	mov	esi, dword ptr [rbp - 8]
	call	dup2
	mov	dword ptr [rbp - 0x20], eax
	call	__errno_location
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0x24], esi
	lea	rsi, [rsi]
	mov	edi, dword ptr [rbp - 0x1c]
	mov	rsp, rsp
	call	close
	lea	rdi, [rdi]
	mov	esi, dword ptr [rbp - 0x24]
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x28], eax
	mov	dword ptr [rbp - 0x2c], esi
	call	__errno_location
	mov	rbp, rbp
	mov	esi, dword ptr [rbp - 0x2c]
	mov	rsp, rsp
	mov	dword ptr [rax], esi
	mov	esi, dword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 4], esi
.label_126:
	mov	eax, dword ptr [rbp - 4]
	lea	rdi, [rdi]
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x403990

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
	mov	dword ptr [rbp - 8], esi
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x10], rdx
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x18], rcx
	mov	dword ptr [rbp - 0x1c], r8d
	nop	
	mov	dword ptr [rbp - 0x20], 1
	mov	rsp, rsp
	cmp	eax, dword ptr [rbp - 4]
	lea	rdi, [rdi]
	jg	.label_132
	mov	edi, dword ptr [rbp - 4]
	mov	rsi, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	call	futimens
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x20], eax
.label_132:
	cmp	qword ptr [rbp - 0x10], 0
	mov	rsp, rsp
	je	.label_131
	cmp	dword ptr [rbp - 4], 0
	nop	
	jl	.label_130
	cmp	dword ptr [rbp - 0x20], -1
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
	mov	edi, dword ptr [rbp - 8]
	nop	
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	mov	ecx, dword ptr [rbp - 0x1c]
	call	utimensat
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x20], eax
.label_131:
	cmp	dword ptr [rbp - 0x20], 1
	mov	rbp, rbp
	jne	.label_129
	mov	rbp, rbp
	call	__errno_location
	mov	dword ptr [rax], 9
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x20], 0xffffffff
.label_129:
	mov	eax, dword ptr [rbp - 0x20]
	add	rsp, 0x20
	lea	rsi, [rsi]
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x403a80

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
	#Procedure 0x403ac0
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
	lea	rdi, [rbp - 0x20]
	call	gettime
	lea	rdi, [rdi]
	movups	xmm0, xmmword ptr [rbp - 0x20]
	movaps	xmmword ptr [rbp - 0x10], xmm0
	nop	
	mov	rax, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	add	rsp, 0x20
	lea	rsi, [rsi]
	pop	rbp
	mov	rbp, rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x403b10

	.globl yyparse
	.type yyparse, @function
yyparse:
	mov	rbp, rbp
	push	rbp
	lea	rdi, [rdi]
	mov	rbp, rsp
	sub	rsp, 0xdb0
	nop	
	lea	rax, [rbp - 0x4f0]
	lea	rcx, [rbp - 0x80]
	mov	rbp, rbp
	movabs	rdx, OFFSET FLAT:yyparse.yyval_default
	mov	rbp, rbp
	mov	esi, 0x38
	lea	rsi, [rsi]
	mov	r8d, esi
	mov	rbp, rbp
	lea	r9, [rbp - 0x48]
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, r9
	lea	rdi, [rdi]
	mov	rsi, rdx
	nop	
	mov	rdx, r8
	mov	qword ptr [rbp - 0xb78], rcx
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0xb80], rax
	mov	rsp, rsp
	call	memcpy
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x514], 0
	mov	dword ptr [rbp - 0x554], 0
	mov	rax, qword ptr [rbp - 0xb78]
	mov	qword ptr [rbp - 0x88], rax
	mov	qword ptr [rbp - 0x90], rax
	mov	rcx, qword ptr [rbp - 0xb80]
	mov	qword ptr [rbp - 0x4f8], rcx
	nop	
	mov	qword ptr [rbp - 0x500], rcx
	mov	qword ptr [rbp - 0x508], 0x14
	mov	dword ptr [rbp - 0x50], 0
	nop	
	mov	dword ptr [rbp - 0x54], 0
	mov	dword ptr [rbp - 0x4c], 0
	mov	dword ptr [rbp - 0xc], 0xfffffffe
	jmp	.label_902
.label_237:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x90]
	add	rax, 2
	mov	qword ptr [rbp - 0x90], rax
.label_902:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x50]
	nop	
	mov	cx, ax
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x90]
	mov	word ptr [rdx], cx
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x88]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x508]
	nop	
	shl	rsi, 1
	mov	rbp, rbp
	add	rdx, rsi
	add	rdx, -2
	cmp	rdx, qword ptr [rbp - 0x90]
	ja	.label_926
	lea	rdi, [rdi]
	mov	eax, 0x14
	mov	ecx, eax
	nop	
	mov	rdx, qword ptr [rbp - 0x90]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x88]
	mov	rbp, rbp
	sub	rdx, rsi
	sar	rdx, 1
	mov	rsp, rsp
	add	rdx, 1
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x560], rdx
	lea	rsi, [rsi]
	cmp	rcx, qword ptr [rbp - 0x508]
	mov	rsp, rsp
	ja	.label_939
	nop	
	jmp	.label_952
.label_939:
	mov	eax, 0x14
	mov	ecx, eax
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x508]
	nop	
	shl	rdx, 1
	mov	qword ptr [rbp - 0x508], rdx
	cmp	rcx, qword ptr [rbp - 0x508]
	jae	.label_953
	mov	qword ptr [rbp - 0x508], 0x14
.label_953:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x88]
	mov	qword ptr [rbp - 0x568], rax
	lea	rdi, [rdi]
	imul	rax, qword ptr [rbp - 0x508], 0x3a
	add	rax, 0x37
	mov	rdi, rax
	call	malloc
	mov	qword ptr [rbp - 0x570], rax
	cmp	qword ptr [rbp - 0x570], 0
	jne	.label_989
	jmp	.label_952
.label_989:
	jmp	.label_996
.label_996:
	mov	eax, 0x38
	mov	ecx, eax
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x570]
	nop	
	mov	rsi, qword ptr [rbp - 0x88]
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x560]
	nop	
	shl	rdi, 1
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0xb88], rdi
	nop	
	mov	rdi, rdx
	mov	rdx, qword ptr [rbp - 0xb88]
	mov	qword ptr [rbp - 0xb90], rcx
	mov	rbp, rbp
	call	memcpy
	mov	rcx, qword ptr [rbp - 0x570]
	mov	qword ptr [rbp - 0x88], rcx
	mov	rcx, qword ptr [rbp - 0x508]
	shl	rcx, 1
	mov	rsp, rsp
	add	rcx, 0x37
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x578], rcx
	mov	rax, qword ptr [rbp - 0x578]
	lea	rdi, [rdi]
	xor	r8d, r8d
	mov	rbp, rbp
	mov	edx, r8d
	mov	rcx, qword ptr [rbp - 0xb90]
	mov	rbp, rbp
	div	rcx
	lea	rsi, [rsi]
	imul	rax, rax, 0x38
	mov	rbp, rbp
	add	rax, qword ptr [rbp - 0x570]
	mov	qword ptr [rbp - 0x570], rax
	mov	rsp, rsp
	jmp	.label_1008
.label_1008:
	mov	eax, 0x38
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x570]
	mov	rsi, qword ptr [rbp - 0x4f8]
	lea	rsi, [rsi]
	imul	rdi, qword ptr [rbp - 0x560], 0x38
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0xb98], rdi
	mov	rsp, rsp
	mov	rdi, rdx
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0xb98]
	mov	qword ptr [rbp - 0xba0], rcx
	mov	rsp, rsp
	call	memcpy
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x570]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x4f8], rcx
	imul	rcx, qword ptr [rbp - 0x508], 0x38
	add	rcx, 0x37
	mov	qword ptr [rbp - 0x580], rcx
	mov	rax, qword ptr [rbp - 0x580]
	xor	r8d, r8d
	mov	edx, r8d
	mov	rcx, qword ptr [rbp - 0xba0]
	nop	
	div	rcx
	imul	rax, rax, 0x38
	add	rax, qword ptr [rbp - 0x570]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x570], rax
	lea	rax, [rbp - 0x80]
	mov	rcx, qword ptr [rbp - 0x568]
	cmp	rcx, rax
	mov	rsp, rsp
	je	.label_1044
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x568]
	mov	rbp, rbp
	mov	rdi, rax
	call	free
.label_1044:
	mov	rax, qword ptr [rbp - 0x88]
	mov	rcx, qword ptr [rbp - 0x560]
	mov	rbp, rbp
	shl	rcx, 1
	nop	
	add	rax, rcx
	add	rax, -2
	mov	qword ptr [rbp - 0x90], rax
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x4f8]
	lea	rdi, [rdi]
	imul	rcx, qword ptr [rbp - 0x560], 0x38
	lea	rdi, [rdi]
	add	rax, rcx
	lea	rsi, [rsi]
	add	rax, -0x38
	mov	qword ptr [rbp - 0x500], rax
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x88]
	mov	rcx, qword ptr [rbp - 0x508]
	shl	rcx, 1
	mov	rsp, rsp
	add	rax, rcx
	mov	rbp, rbp
	add	rax, -2
	mov	rbp, rbp
	cmp	rax, qword ptr [rbp - 0x90]
	mov	rsp, rsp
	ja	.label_1067
	lea	rdi, [rdi]
	jmp	.label_177
.label_1067:
	lea	rdi, [rdi]
	jmp	.label_926
.label_926:
	cmp	dword ptr [rbp - 0x50], 0xc
	mov	rbp, rbp
	jne	.label_1101
	lea	rdi, [rdi]
	jmp	.label_1105
.label_1101:
	jmp	.label_1111
.label_1111:
	movsxd	rax, dword ptr [rbp - 0x50]
	movsx	ecx,  byte ptr [byte ptr [+ (rax * 1) + yypact]]
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x50c], ecx
	cmp	dword ptr [rbp - 0x50c], -0x5d
	jne	.label_1112
	mov	rsp, rsp
	jmp	.label_301
.label_1112:
	mov	rbp, rbp
	cmp	dword ptr [rbp - 0xc], -2
	mov	rbp, rbp
	jne	.label_945
	lea	rdi, [rbp - 0x48]
	mov	rsi, qword ptr [rbp - 8]
	call	yylex
	nop	
	mov	dword ptr [rbp - 0xc], eax
.label_945:
	cmp	dword ptr [rbp - 0xc], 0
	jg	.label_1134
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x514], 0
	nop	
	mov	dword ptr [rbp - 0xc], 0
	lea	rsi, [rsi]
	jmp	.label_1136
.label_1134:
	nop	
	cmp	dword ptr [rbp - 0xc], 0x115
	ja	.label_1139
	movsxd	rax, dword ptr [rbp - 0xc]
	movzx	ecx,  byte ptr [byte ptr [+ (rax * 1) + yytranslate]]
	nop	
	mov	dword ptr [rbp - 0xba4], ecx
	jmp	.label_1092
.label_1139:
	mov	eax, 2
	mov	dword ptr [rbp - 0xba4], eax
	mov	rsp, rsp
	jmp	.label_1092
.label_1092:
	nop	
	mov	eax, dword ptr [rbp - 0xba4]
	mov	dword ptr [rbp - 0x514], eax
.label_1136:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x514]
	add	eax, dword ptr [rbp - 0x50c]
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x50c], eax
	cmp	dword ptr [rbp - 0x50c], 0
	lea	rsi, [rsi]
	jl	.label_149
	mov	eax, 0x70
	mov	rsp, rsp
	cmp	eax, dword ptr [rbp - 0x50c]
	jl	.label_149
	movsxd	rax, dword ptr [rbp - 0x50c]
	movsx	ecx,  byte ptr [byte ptr [+ (rax * 1) + yycheck]]
	nop	
	cmp	ecx, dword ptr [rbp - 0x514]
	lea	rsi, [rsi]
	je	.label_159
.label_149:
	jmp	.label_301
.label_159:
	movsxd	rax, dword ptr [rbp - 0x50c]
	movzx	ecx,  byte ptr [byte ptr [+ (rax * 1) + yytable]]
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x50c], ecx
	cmp	dword ptr [rbp - 0x50c], 0
	jg	.label_178
	xor	eax, eax
	sub	eax, dword ptr [rbp - 0x50c]
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x50c], eax
	lea	rsi, [rsi]
	jmp	.label_189
.label_178:
	cmp	dword ptr [rbp - 0x54], 0
	lea	rsi, [rsi]
	je	.label_197
	mov	eax, dword ptr [rbp - 0x54]
	add	eax, -1
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x54], eax
.label_197:
	mov	rsp, rsp
	mov	eax, 0x38
	mov	rsp, rsp
	mov	edx, eax
	mov	rsp, rsp
	lea	rcx, [rbp - 0x48]
	mov	dword ptr [rbp - 0xc], 0xfffffffe
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x50c]
	mov	dword ptr [rbp - 0x50], eax
	nop	
	mov	rsi, qword ptr [rbp - 0x500]
	add	rsi, 0x38
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x500], rsi
	mov	rdi, rsi
	mov	rbp, rbp
	mov	rsi, rcx
	mov	rsp, rsp
	call	memcpy
	mov	rbp, rbp
	jmp	.label_237
.label_301:
	lea	rdi, [rdi]
	movsxd	rax, dword ptr [rbp - 0x50]
	lea	rsi, [rsi]
	movzx	ecx,  byte ptr [byte ptr [+ (rax * 1) + yydefact]]
	mov	dword ptr [rbp - 0x50c], ecx
	mov	rsp, rsp
	cmp	dword ptr [rbp - 0x50c], 0
	lea	rsi, [rsi]
	jne	.label_240
	mov	rbp, rbp
	jmp	.label_256
.label_240:
	jmp	.label_189
.label_189:
	movsxd	rax, dword ptr [rbp - 0x50c]
	lea	rsi, [rsi]
	movzx	ecx,  byte ptr [byte ptr [rax + yyr2]]
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x554], ecx
	mov	rbp, rbp
	mov	edx, 1
	sub	edx, ecx
	nop	
	movsxd	rax, edx
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x500]
	nop	
	imul	rax, rax, 0x38
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rsi + rax + 0x30]
	mov	qword ptr [rbp - 0x520], rdi
	movups	xmm0, xmmword ptr [rsi + rax]
	lea	rdi, [rdi]
	movups	xmm1, xmmword ptr [rsi + rax + 0x10]
	lea	rsi, [rsi]
	movups	xmm2, xmmword ptr [rsi + rax + 0x20]
	nop	
	movaps	xmmword ptr [rbp - 0x530], xmm2
	mov	rsp, rsp
	movaps	xmmword ptr [rbp - 0x540], xmm1
	mov	rbp, rbp
	movaps	xmmword ptr [rbp - 0x550], xmm0
	lea	rdi, [rdi]
	mov	ecx, dword ptr [rbp - 0x50c]
	add	ecx, -4
	lea	rsi, [rsi]
	mov	eax, ecx
	sub	ecx, 0x57
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0xbb0], rax
	mov	dword ptr [rbp - 0xbb4], ecx
	mov	rbp, rbp
	ja	.label_260
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0xbb0]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_303]]
	lea	rdi, [rdi]
	jmp	rcx
.label_5191:
	lea	rdi, [rdi]
	movabs	rdi, OFFSET FLAT:.str_4
	mov	rax, qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x500]
	mov	rdx, qword ptr [rcx]
	lea	rdi, [rdi]
	mov	qword ptr [rax + 0x58], rdx
	mov	rcx, qword ptr [rcx + 8]
	mov	rbp, rbp
	mov	qword ptr [rax + 0x60], rcx
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 8]
	mov	byte ptr [rax + 0xa0], 1
	call	gettext
	mov	rsi, qword ptr [rbp - 8]
	mov	rbp, rbp
	mov	rdi, rax
	call	debug_print_current_time
	jmp	.label_200
.label_5192:
	lea	rdi, [rdi]
	movabs	rdi, OFFSET FLAT:.str.1_2
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 8]
	mov	rcx, qword ptr [rax + 0xc8]
	add	rcx, 1
	lea	rsi, [rsi]
	mov	qword ptr [rax + 0xc8], rcx
	nop	
	mov	rax, qword ptr [rbp - 8]
	mov	rcx, qword ptr [rax + 0xa8]
	mov	rbp, rbp
	add	rcx, 1
	mov	qword ptr [rax + 0xa8], rcx
	call	gettext
	mov	rsi, qword ptr [rbp - 8]
	mov	rdi, rax
	call	debug_print_current_time
	jmp	.label_200
.label_5193:
	movabs	rdi, OFFSET FLAT:.str.2_1
	mov	rax, qword ptr [rbp - 8]
	nop	
	mov	rcx, qword ptr [rax + 0xc8]
	add	rcx, 1
	mov	rbp, rbp
	mov	qword ptr [rax + 0xc8], rcx
	nop	
	call	gettext
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	rdi, rax
	call	debug_print_current_time
	lea	rsi, [rsi]
	jmp	.label_200
.label_5194:
	movabs	rdi, OFFSET FLAT:.str.3_1
	nop	
	mov	rax, qword ptr [rbp - 8]
	mov	rcx, qword ptr [rax + 0xb8]
	lea	rsi, [rsi]
	add	rcx, 1
	mov	rbp, rbp
	mov	qword ptr [rax + 0xb8], rcx
	nop	
	call	gettext
	nop	
	mov	rsi, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	rdi, rax
	call	debug_print_current_time
	jmp	.label_200
.label_5195:
	movabs	rdi, OFFSET FLAT:.str.4_1
	mov	rax, qword ptr [rbp - 8]
	mov	rcx, qword ptr [rax + 0xd0]
	add	rcx, 1
	mov	qword ptr [rax + 0xd0], rcx
	nop	
	call	gettext
	mov	rsi, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	mov	rdi, rax
	call	debug_print_current_time
	nop	
	jmp	.label_200
.label_5196:
	movabs	rdi, OFFSET FLAT:.str.5_0
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 8]
	mov	rcx, qword ptr [rax + 0xa8]
	add	rcx, 1
	mov	qword ptr [rax + 0xa8], rcx
	call	gettext
	mov	rsi, qword ptr [rbp - 8]
	mov	rdi, rax
	call	debug_print_current_time
	jmp	.label_200
.label_5197:
	nop	
	movabs	rdi, OFFSET FLAT:.str.6_0
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 8]
	mov	rcx, qword ptr [rax + 0xb0]
	mov	rsp, rsp
	add	rcx, 1
	mov	rbp, rbp
	mov	qword ptr [rax + 0xb0], rcx
	call	gettext
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 8]
	mov	rdi, rax
	mov	rsp, rsp
	call	debug_print_current_time
	jmp	.label_200
.label_5198:
	nop	
	movabs	rdi, OFFSET FLAT:.str.7_0
	nop	
	call	gettext
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 8]
	mov	rdi, rax
	nop	
	call	debug_print_relative_time
	jmp	.label_200
.label_5199:
	lea	rdi, [rdi]
	movabs	rdi, OFFSET FLAT:.str.8_0
	lea	rdi, [rdi]
	call	gettext
	mov	rsi, qword ptr [rbp - 8]
	mov	rdi, rax
	lea	rdi, [rdi]
	call	debug_print_current_time
	nop	
	jmp	.label_200
.label_5200:
	mov	rbp, rbp
	movabs	rdi, OFFSET FLAT:.str.9_0
	call	gettext
	mov	rsi, qword ptr [rbp - 8]
	mov	rbp, rbp
	mov	rdi, rax
	lea	rdi, [rdi]
	call	debug_print_relative_time
	jmp	.label_200
.label_5201:
	lea	rsi, [rsi]
	xor	eax, eax
	nop	
	mov	ecx, eax
	mov	rsp, rsp
	xor	r8d, r8d
	mov	rdi, qword ptr [rbp - 8]
	nop	
	mov	rdx, qword ptr [rbp - 0x500]
	mov	rsi, qword ptr [rdx - 0x30]
	mov	rbp, rbp
	mov	rdx, rcx
	call	set_hhmmss
	mov	rcx, qword ptr [rbp - 0x500]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rcx]
	mov	rbp, rbp
	mov	eax, ecx
	mov	rcx, qword ptr [rbp - 8]
	mov	dword ptr [rcx + 0x1c], eax
	nop	
	jmp	.label_200
.label_5202:
	lea	rdi, [rdi]
	xor	eax, eax
	mov	ecx, eax
	xor	r8d, r8d
	mov	rdi, qword ptr [rbp - 8]
	mov	rdx, qword ptr [rbp - 0x500]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rdx - 0xa0]
	nop	
	mov	rdx, qword ptr [rbp - 0x500]
	mov	rdx, qword ptr [rdx - 0x30]
	call	set_hhmmss
	mov	rcx, qword ptr [rbp - 0x500]
	mov	rcx, qword ptr [rcx]
	nop	
	mov	eax, ecx
	mov	rcx, qword ptr [rbp - 8]
	mov	dword ptr [rcx + 0x1c], eax
	mov	rbp, rbp
	jmp	.label_200
.label_5203:
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x500]
	mov	rsi, qword ptr [rax - 0x110]
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x500]
	mov	rdx, qword ptr [rax - 0xa0]
	mov	rax, qword ptr [rbp - 0x500]
	mov	rcx, qword ptr [rax - 0x38]
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x500]
	mov	rax, qword ptr [rax - 0x30]
	lea	rsi, [rsi]
	mov	r8d, eax
	call	set_hhmmss
	mov	rax, qword ptr [rbp - 0x500]
	mov	rax, qword ptr [rax]
	lea	rdi, [rdi]
	mov	r8d, eax
	nop	
	mov	rax, qword ptr [rbp - 8]
	mov	rbp, rbp
	mov	dword ptr [rax + 0x1c], r8d
	mov	rbp, rbp
	jmp	.label_200
.label_5204:
	xor	eax, eax
	lea	rsi, [rsi]
	mov	ecx, eax
	xor	r8d, r8d
	mov	rdi, qword ptr [rbp - 8]
	nop	
	mov	rdx, qword ptr [rbp - 0x500]
	mov	rsi, qword ptr [rdx - 0x30]
	nop	
	mov	rdx, rcx
	call	set_hhmmss
	mov	rcx, qword ptr [rbp - 8]
	mov	rbp, rbp
	mov	dword ptr [rcx + 0x1c], 2
	lea	rsi, [rsi]
	jmp	.label_200
.label_5205:
	mov	rsp, rsp
	xor	eax, eax
	mov	rbp, rbp
	mov	ecx, eax
	lea	rsi, [rsi]
	xor	r8d, r8d
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 8]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x500]
	mov	rsi, qword ptr [rdx - 0xa0]
	mov	rdx, qword ptr [rbp - 0x500]
	mov	rdx, qword ptr [rdx - 0x30]
	nop	
	call	set_hhmmss
	mov	rcx, qword ptr [rbp - 8]
	mov	dword ptr [rcx + 0x1c], 2
	jmp	.label_200
.label_5206:
	mov	rdi, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x500]
	mov	rsi, qword ptr [rax - 0x110]
	mov	rax, qword ptr [rbp - 0x500]
	mov	rdx, qword ptr [rax - 0xa0]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x500]
	mov	rsp, rsp
	mov	rcx, qword ptr [rax - 0x38]
	mov	rax, qword ptr [rbp - 0x500]
	mov	rax, qword ptr [rax - 0x30]
	mov	r8d, eax
	call	set_hhmmss
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 8]
	mov	dword ptr [rax + 0x1c], 2
	jmp	.label_200
.label_5207:
	nop	
	mov	rax, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rax + 0xd0]
	lea	rsi, [rsi]
	add	rcx, 1
	mov	qword ptr [rax + 0xd0], rcx
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 8]
	mov	rax, qword ptr [rbp - 0x500]
	add	rax, -0x38
	mov	rcx, qword ptr [rbp - 0x500]
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
	jne	.label_628
	jmp	.label_177
.label_628:
	jmp	.label_200
.label_5208:
	mov	rax, qword ptr [rbp - 0x500]
	mov	rax, qword ptr [rax]
	mov	rbp, rbp
	mov	ecx, eax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	dword ptr [rax + 0x14], ecx
	jmp	.label_200
.label_5209:
	mov	rax, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	mov	dword ptr [rax + 0x14], 1
	mov	rax, qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	rcx, qword ptr [rax + 0xc0]
	add	rcx, 1
	mov	qword ptr [rax + 0xc0], rcx
	jmp	.label_200
.label_5210:
	mov	rax, qword ptr [rbp - 0x500]
	mov	rbp, rbp
	mov	rax, qword ptr [rax]
	mov	ecx, eax
	mov	rax, qword ptr [rbp - 8]
	mov	dword ptr [rax + 0x18], ecx
	lea	rsi, [rsi]
	jmp	.label_200
.label_5211:
	mov	rax, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	dword ptr [rax + 0x18], 0x6270
	jmp	.label_200
.label_5212:
	nop	
	mov	eax, 1
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x500]
	mov	rcx, qword ptr [rcx - 0x38]
	mov	rbp, rbp
	mov	edx, ecx
	mov	rcx, qword ptr [rbp - 8]
	mov	dword ptr [rcx + 0x18], edx
	mov	rdi, qword ptr [rbp - 8]
	mov	rcx, qword ptr [rbp - 0x500]
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
	mov	dword ptr [rbp - 0xbb8], eax
	lea	rsi, [rsi]
	call	apply_relative_time
	test	al, 1
	jne	.label_1021
	jmp	.label_177
.label_1021:
	nop	
	movabs	rdi, OFFSET FLAT:.str.7_0
	mov	rsp, rsp
	call	gettext
	mov	rsi, qword ptr [rbp - 8]
	mov	rdi, rax
	call	debug_print_relative_time
	mov	rbp, rbp
	jmp	.label_200
.label_5213:
	mov	rbp, rbp
	mov	eax, 1
	mov	rcx, qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	dword ptr [rcx + 0x18], 0x6270
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 8]
	mov	rcx, qword ptr [rbp - 0x500]
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
	mov	dword ptr [rbp - 0xbbc], eax
	call	apply_relative_time
	test	al, 1
	lea	rdi, [rdi]
	jne	.label_710
	mov	rbp, rbp
	jmp	.label_177
.label_710:
	movabs	rdi, OFFSET FLAT:.str.7_0
	mov	rsp, rsp
	call	gettext
	nop	
	mov	rsi, qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	rdi, rax
	call	debug_print_relative_time
	mov	rsp, rsp
	jmp	.label_200
.label_5214:
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 8]
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x500]
	mov	rsp, rsp
	add	rax, -0x38
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x500]
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
	jne	.label_747
	lea	rsi, [rsi]
	jmp	.label_177
.label_747:
	xor	eax, eax
	mov	cl, al
	nop	
	test	cl, 1
	jne	.label_753
	jmp	.label_757
.label_753:
	lea	rdi, [rdi]
	xor	eax, eax
	lea	rdi, [rdi]
	mov	cl, al
	mov	rbp, rbp
	test	cl, 1
	jne	.label_759
	jmp	.label_771
.label_759:
	mov	al, 1
	test	al, 1
	jne	.label_773
	nop	
	jmp	.label_777
.label_773:
	mov	rax, qword ptr [rbp - 0x500]
	mov	rax, qword ptr [rax - 0x70]
	mov	cl, al
	movsx	edx, cl
	cmp	edx, 0
	lea	rdi, [rdi]
	jge	.label_778
	mov	rsp, rsp
	mov	eax, 0x80000000
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	edx, dword ptr [rcx + 0x18]
	mov	sil, dl
	movsx	edx, sil
	mov	rcx, qword ptr [rbp - 0x500]
	mov	rsp, rsp
	mov	rcx, qword ptr [rcx - 0x70]
	mov	sil, cl
	movsx	edi, sil
	lea	rsi, [rsi]
	sub	eax, edi
	lea	rdi, [rdi]
	cmp	edx, eax
	jl	.label_379
	mov	rbp, rbp
	jmp	.label_792
.label_778:
	mov	rbp, rbp
	mov	eax, 0x7fffffff
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x500]
	mov	rsp, rsp
	mov	rcx, qword ptr [rcx - 0x70]
	mov	dl, cl
	lea	rsi, [rsi]
	movsx	esi, dl
	sub	eax, esi
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	esi, dword ptr [rcx + 0x18]
	mov	rbp, rbp
	mov	dl, sil
	lea	rsi, [rsi]
	movsx	esi, dl
	mov	rsp, rsp
	cmp	eax, esi
	jl	.label_379
	jmp	.label_792
.label_777:
	mov	rax, qword ptr [rbp - 8]
	mov	ecx, dword ptr [rax + 0x18]
	lea	rsi, [rsi]
	mov	dl, cl
	lea	rdi, [rdi]
	movsx	ecx, dl
	cmp	ecx, 0
	jge	.label_811
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x500]
	mov	rax, qword ptr [rax - 0x70]
	lea	rsi, [rsi]
	mov	cl, al
	movsx	edx, cl
	mov	rax, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	esi, dword ptr [rax + 0x18]
	mov	cl, sil
	movsx	esi, cl
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x500]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax - 0x70]
	mov	cl, al
	mov	rbp, rbp
	movsx	edi, cl
	add	esi, edi
	lea	rsi, [rsi]
	cmp	edx, esi
	jle	.label_379
	nop	
	jmp	.label_792
.label_811:
	mov	rax, qword ptr [rbp - 0x500]
	nop	
	mov	rax, qword ptr [rax - 0x70]
	mov	cl, al
	mov	rsp, rsp
	movsx	edx, cl
	mov	rbp, rbp
	cmp	edx, 0
	lea	rdi, [rdi]
	jge	.label_829
	mov	rax, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	ecx, dword ptr [rax + 0x18]
	mov	rsp, rsp
	mov	dl, cl
	lea	rdi, [rdi]
	movsx	ecx, dl
	mov	rax, qword ptr [rbp - 8]
	mov	rbp, rbp
	mov	esi, dword ptr [rax + 0x18]
	mov	dl, sil
	mov	rbp, rbp
	movsx	esi, dl
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x500]
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
	jle	.label_379
	jmp	.label_792
.label_829:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 8]
	nop	
	mov	ecx, dword ptr [rax + 0x18]
	mov	dl, cl
	mov	rsp, rsp
	movsx	ecx, dl
	mov	rax, qword ptr [rbp - 0x500]
	mov	rax, qword ptr [rax - 0x70]
	nop	
	mov	dl, al
	nop	
	movsx	esi, dl
	lea	rsi, [rsi]
	add	ecx, esi
	mov	rax, qword ptr [rbp - 0x500]
	mov	rax, qword ptr [rax - 0x70]
	lea	rsi, [rsi]
	mov	dl, al
	movsx	esi, dl
	nop	
	cmp	ecx, esi
	lea	rsi, [rsi]
	jl	.label_379
.label_792:
	mov	rax, qword ptr [rbp - 8]
	mov	rbp, rbp
	mov	ecx, dword ptr [rax + 0x18]
	lea	rdi, [rdi]
	mov	dl, cl
	movsx	ecx, dl
	mov	rax, qword ptr [rbp - 0x500]
	mov	rax, qword ptr [rax - 0x70]
	mov	dl, al
	mov	rbp, rbp
	movsx	esi, dl
	mov	rsp, rsp
	add	ecx, esi
	lea	rdi, [rdi]
	cmp	ecx, -0x80
	jl	.label_379
	lea	rdi, [rdi]
	mov	eax, 0x7f
	mov	rcx, qword ptr [rbp - 8]
	mov	edx, dword ptr [rcx + 0x18]
	lea	rdi, [rdi]
	mov	sil, dl
	mov	rsp, rsp
	movsx	edx, sil
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x500]
	mov	rcx, qword ptr [rcx - 0x70]
	lea	rsi, [rsi]
	mov	sil, cl
	mov	rbp, rbp
	movsx	edi, sil
	add	edx, edi
	nop	
	cmp	eax, edx
	jge	.label_890
.label_379:
	mov	rsp, rsp
	mov	al, 1
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	mov	edx, dword ptr [rcx + 0x18]
	mov	sil, dl
	movsx	edx, sil
	mov	rcx, qword ptr [rbp - 0x500]
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
	mov	rcx, qword ptr [rbp - 8]
	mov	dword ptr [rcx + 0x18], edx
	test	al, 1
	jne	.label_202
	nop	
	jmp	.label_219
.label_890:
	xor	eax, eax
	nop	
	mov	cl, al
	mov	rdx, qword ptr [rbp - 8]
	mov	eax, dword ptr [rdx + 0x18]
	mov	sil, al
	movsx	eax, sil
	nop	
	mov	rdx, qword ptr [rbp - 0x500]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rdx - 0x70]
	mov	sil, dl
	mov	rbp, rbp
	movsx	edi, sil
	add	eax, edi
	mov	rsp, rsp
	mov	sil, al
	movsx	eax, sil
	mov	rdx, qword ptr [rbp - 8]
	mov	dword ptr [rdx + 0x18], eax
	test	cl, 1
	jne	.label_202
	jmp	.label_219
.label_771:
	mov	al, 1
	test	al, 1
	mov	rsp, rsp
	jne	.label_931
	nop	
	jmp	.label_934
.label_931:
	mov	rax, qword ptr [rbp - 0x500]
	cmp	qword ptr [rax - 0x70], 0
	lea	rdi, [rdi]
	jge	.label_935
	movabs	rax, 0x8000000000000000
	nop	
	mov	rcx, qword ptr [rbp - 8]
	movsxd	rcx, dword ptr [rcx + 0x18]
	mov	rdx, qword ptr [rbp - 0x500]
	sub	rax, qword ptr [rdx - 0x70]
	cmp	rcx, rax
	jl	.label_938
	jmp	.label_947
.label_935:
	movabs	rax, 0x7fffffffffffffff
	mov	rcx, qword ptr [rbp - 0x500]
	mov	rbp, rbp
	sub	rax, qword ptr [rcx - 0x70]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 8]
	movsxd	rcx, dword ptr [rcx + 0x18]
	cmp	rax, rcx
	mov	rbp, rbp
	jl	.label_938
	nop	
	jmp	.label_947
.label_934:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 8]
	mov	rbp, rbp
	cmp	dword ptr [rax + 0x18], 0
	jge	.label_956
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x500]
	mov	rax, qword ptr [rax - 0x70]
	mov	rcx, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	movsxd	rcx, dword ptr [rcx + 0x18]
	mov	rdx, qword ptr [rbp - 0x500]
	mov	rbp, rbp
	add	rcx, qword ptr [rdx - 0x70]
	cmp	rax, rcx
	jle	.label_938
	lea	rsi, [rsi]
	jmp	.label_947
.label_956:
	mov	rax, qword ptr [rbp - 0x500]
	cmp	qword ptr [rax - 0x70], 0
	jge	.label_986
	mov	rax, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	movsxd	rax, dword ptr [rax + 0x18]
	mov	rcx, qword ptr [rbp - 8]
	movsxd	rcx, dword ptr [rcx + 0x18]
	mov	rdx, qword ptr [rbp - 0x500]
	add	rcx, qword ptr [rdx - 0x70]
	cmp	rax, rcx
	jle	.label_938
	jmp	.label_947
.label_986:
	mov	rax, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	movsxd	rax, dword ptr [rax + 0x18]
	nop	
	mov	rcx, qword ptr [rbp - 0x500]
	add	rax, qword ptr [rcx - 0x70]
	mov	rcx, qword ptr [rbp - 0x500]
	nop	
	cmp	rax, qword ptr [rcx - 0x70]
	jl	.label_938
.label_947:
	nop	
	mov	rax, qword ptr [rbp - 8]
	movsxd	rax, dword ptr [rax + 0x18]
	mov	rcx, qword ptr [rbp - 0x500]
	lea	rsi, [rsi]
	add	rax, qword ptr [rcx - 0x70]
	nop	
	cmp	rax, -0x80
	jl	.label_938
	lea	rsi, [rsi]
	mov	eax, 0x7f
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 8]
	movsxd	rdx, dword ptr [rdx + 0x18]
	mov	rsi, qword ptr [rbp - 0x500]
	mov	rbp, rbp
	add	rdx, qword ptr [rsi - 0x70]
	nop	
	cmp	rcx, rdx
	jge	.label_1016
.label_938:
	lea	rsi, [rsi]
	mov	al, 1
	mov	rcx, qword ptr [rbp - 8]
	mov	edx, dword ptr [rcx + 0x18]
	mov	rcx, qword ptr [rbp - 0x500]
	mov	rbp, rbp
	mov	rcx, qword ptr [rcx - 0x70]
	mov	esi, ecx
	add	edx, esi
	mov	dil, dl
	movsx	edx, dil
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 8]
	mov	rbp, rbp
	mov	dword ptr [rcx + 0x18], edx
	lea	rsi, [rsi]
	test	al, 1
	lea	rsi, [rsi]
	jne	.label_202
	lea	rsi, [rsi]
	jmp	.label_219
.label_1016:
	lea	rdi, [rdi]
	xor	eax, eax
	nop	
	mov	cl, al
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 8]
	mov	eax, dword ptr [rdx + 0x18]
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x500]
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
	mov	rdx, qword ptr [rbp - 8]
	nop	
	mov	dword ptr [rdx + 0x18], eax
	test	cl, 1
	jne	.label_202
	jmp	.label_219
.label_757:
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_1052
	mov	rsp, rsp
	jmp	.label_559
.label_1052:
	xor	eax, eax
	nop	
	mov	cl, al
	test	cl, 1
	mov	rsp, rsp
	jne	.label_1057
	mov	rsp, rsp
	jmp	.label_1061
.label_1057:
	mov	al, 1
	test	al, 1
	lea	rdi, [rdi]
	jne	.label_610
	jmp	.label_1065
.label_610:
	mov	rax, qword ptr [rbp - 0x500]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax - 0x70]
	mov	cx, ax
	lea	rsi, [rsi]
	movsx	edx, cx
	mov	rsp, rsp
	cmp	edx, 0
	jge	.label_1066
	mov	rbp, rbp
	mov	eax, 0x80000000
	mov	rcx, qword ptr [rbp - 8]
	mov	edx, dword ptr [rcx + 0x18]
	mov	si, dx
	movsx	edx, si
	nop	
	mov	rcx, qword ptr [rbp - 0x500]
	mov	rcx, qword ptr [rcx - 0x70]
	lea	rsi, [rsi]
	mov	si, cx
	movsx	edi, si
	sub	eax, edi
	cmp	edx, eax
	jl	.label_135
	jmp	.label_1080
.label_1066:
	lea	rsi, [rsi]
	mov	eax, 0x7fffffff
	nop	
	mov	rcx, qword ptr [rbp - 0x500]
	mov	rcx, qword ptr [rcx - 0x70]
	mov	dx, cx
	mov	rbp, rbp
	movsx	esi, dx
	lea	rdi, [rdi]
	sub	eax, esi
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	mov	esi, dword ptr [rcx + 0x18]
	nop	
	mov	dx, si
	mov	rsp, rsp
	movsx	esi, dx
	cmp	eax, esi
	mov	rsp, rsp
	jl	.label_135
	jmp	.label_1080
.label_1065:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 8]
	mov	rbp, rbp
	mov	ecx, dword ptr [rax + 0x18]
	lea	rdi, [rdi]
	mov	dx, cx
	movsx	ecx, dx
	lea	rdi, [rdi]
	cmp	ecx, 0
	nop	
	jge	.label_854
	mov	rax, qword ptr [rbp - 0x500]
	mov	rax, qword ptr [rax - 0x70]
	mov	rsp, rsp
	mov	cx, ax
	movsx	edx, cx
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 8]
	mov	esi, dword ptr [rax + 0x18]
	lea	rdi, [rdi]
	mov	cx, si
	mov	rbp, rbp
	movsx	esi, cx
	mov	rax, qword ptr [rbp - 0x500]
	mov	rax, qword ptr [rax - 0x70]
	mov	rbp, rbp
	mov	cx, ax
	mov	rsp, rsp
	movsx	edi, cx
	add	esi, edi
	cmp	edx, esi
	lea	rsi, [rsi]
	jle	.label_135
	lea	rsi, [rsi]
	jmp	.label_1080
.label_854:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x500]
	mov	rax, qword ptr [rax - 0x70]
	mov	rbp, rbp
	mov	cx, ax
	movsx	edx, cx
	mov	rbp, rbp
	cmp	edx, 0
	mov	rbp, rbp
	jge	.label_1137
	mov	rax, qword ptr [rbp - 8]
	mov	ecx, dword ptr [rax + 0x18]
	mov	dx, cx
	movsx	ecx, dx
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 8]
	mov	esi, dword ptr [rax + 0x18]
	mov	dx, si
	lea	rdi, [rdi]
	movsx	esi, dx
	mov	rax, qword ptr [rbp - 0x500]
	mov	rax, qword ptr [rax - 0x70]
	mov	rbp, rbp
	mov	dx, ax
	lea	rsi, [rsi]
	movsx	edi, dx
	lea	rdi, [rdi]
	add	esi, edi
	cmp	ecx, esi
	jle	.label_135
	mov	rbp, rbp
	jmp	.label_1080
.label_1137:
	mov	rax, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	mov	ecx, dword ptr [rax + 0x18]
	mov	dx, cx
	movsx	ecx, dx
	nop	
	mov	rax, qword ptr [rbp - 0x500]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax - 0x70]
	mov	rsp, rsp
	mov	dx, ax
	mov	rsp, rsp
	movsx	esi, dx
	lea	rdi, [rdi]
	add	ecx, esi
	mov	rax, qword ptr [rbp - 0x500]
	mov	rax, qword ptr [rax - 0x70]
	mov	dx, ax
	movsx	esi, dx
	nop	
	cmp	ecx, esi
	mov	rsp, rsp
	jl	.label_135
.label_1080:
	nop	
	mov	rax, qword ptr [rbp - 8]
	mov	ecx, dword ptr [rax + 0x18]
	mov	dx, cx
	movsx	ecx, dx
	mov	rax, qword ptr [rbp - 0x500]
	mov	rax, qword ptr [rax - 0x70]
	mov	dx, ax
	movsx	esi, dx
	mov	rbp, rbp
	add	ecx, esi
	mov	rbp, rbp
	cmp	ecx, 0xffff8000
	jl	.label_135
	mov	eax, 0x7fff
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 8]
	mov	rbp, rbp
	mov	edx, dword ptr [rcx + 0x18]
	mov	rbp, rbp
	mov	si, dx
	lea	rdi, [rdi]
	movsx	edx, si
	mov	rcx, qword ptr [rbp - 0x500]
	mov	rcx, qword ptr [rcx - 0x70]
	mov	rsp, rsp
	mov	si, cx
	mov	rsp, rsp
	movsx	edi, si
	add	edx, edi
	mov	rsp, rsp
	cmp	eax, edx
	lea	rsi, [rsi]
	jge	.label_827
.label_135:
	mov	rsp, rsp
	mov	al, 1
	mov	rcx, qword ptr [rbp - 8]
	mov	rbp, rbp
	mov	edx, dword ptr [rcx + 0x18]
	mov	si, dx
	movsx	edx, si
	mov	rcx, qword ptr [rbp - 0x500]
	nop	
	mov	rcx, qword ptr [rcx - 0x70]
	mov	si, cx
	movsx	edi, si
	add	edx, edi
	mov	si, dx
	lea	rdi, [rdi]
	movsx	edx, si
	mov	rcx, qword ptr [rbp - 8]
	nop	
	mov	dword ptr [rcx + 0x18], edx
	test	al, 1
	jne	.label_202
	mov	rsp, rsp
	jmp	.label_219
.label_827:
	xor	eax, eax
	mov	cl, al
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 8]
	mov	rbp, rbp
	mov	eax, dword ptr [rdx + 0x18]
	mov	rsp, rsp
	mov	si, ax
	mov	rbp, rbp
	movsx	eax, si
	mov	rdx, qword ptr [rbp - 0x500]
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
	mov	rdx, qword ptr [rbp - 8]
	nop	
	mov	dword ptr [rdx + 0x18], eax
	test	cl, 1
	jne	.label_202
	jmp	.label_219
.label_1061:
	mov	al, 1
	lea	rsi, [rsi]
	test	al, 1
	lea	rsi, [rsi]
	jne	.label_274
	jmp	.label_276
.label_274:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x500]
	nop	
	cmp	qword ptr [rax - 0x70], 0
	jge	.label_279
	nop	
	movabs	rax, 0x8000000000000000
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	movsxd	rcx, dword ptr [rcx + 0x18]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x500]
	sub	rax, qword ptr [rdx - 0x70]
	cmp	rcx, rax
	jl	.label_287
	jmp	.label_298
.label_279:
	movabs	rax, 0x7fffffffffffffff
	mov	rcx, qword ptr [rbp - 0x500]
	mov	rbp, rbp
	sub	rax, qword ptr [rcx - 0x70]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 8]
	mov	rbp, rbp
	movsxd	rcx, dword ptr [rcx + 0x18]
	mov	rbp, rbp
	cmp	rax, rcx
	mov	rsp, rsp
	jl	.label_287
	lea	rdi, [rdi]
	jmp	.label_298
.label_276:
	mov	rax, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	cmp	dword ptr [rax + 0x18], 0
	jge	.label_319
	mov	rax, qword ptr [rbp - 0x500]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax - 0x70]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 8]
	movsxd	rcx, dword ptr [rcx + 0x18]
	mov	rdx, qword ptr [rbp - 0x500]
	lea	rdi, [rdi]
	add	rcx, qword ptr [rdx - 0x70]
	lea	rdi, [rdi]
	cmp	rax, rcx
	nop	
	jle	.label_287
	lea	rsi, [rsi]
	jmp	.label_298
.label_319:
	mov	rax, qword ptr [rbp - 0x500]
	cmp	qword ptr [rax - 0x70], 0
	mov	rbp, rbp
	jge	.label_339
	nop	
	mov	rax, qword ptr [rbp - 8]
	mov	rsp, rsp
	movsxd	rax, dword ptr [rax + 0x18]
	mov	rcx, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	movsxd	rcx, dword ptr [rcx + 0x18]
	mov	rdx, qword ptr [rbp - 0x500]
	add	rcx, qword ptr [rdx - 0x70]
	lea	rsi, [rsi]
	cmp	rax, rcx
	mov	rbp, rbp
	jle	.label_287
	jmp	.label_298
.label_339:
	mov	rax, qword ptr [rbp - 8]
	movsxd	rax, dword ptr [rax + 0x18]
	mov	rcx, qword ptr [rbp - 0x500]
	add	rax, qword ptr [rcx - 0x70]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x500]
	mov	rsp, rsp
	cmp	rax, qword ptr [rcx - 0x70]
	lea	rdi, [rdi]
	jl	.label_287
.label_298:
	mov	rax, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	movsxd	rax, dword ptr [rax + 0x18]
	mov	rcx, qword ptr [rbp - 0x500]
	add	rax, qword ptr [rcx - 0x70]
	mov	rbp, rbp
	cmp	rax, -0x8000
	mov	rsp, rsp
	jl	.label_287
	mov	rbp, rbp
	mov	eax, 0x7fff
	lea	rdi, [rdi]
	mov	ecx, eax
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 8]
	mov	rsp, rsp
	movsxd	rdx, dword ptr [rdx + 0x18]
	mov	rsi, qword ptr [rbp - 0x500]
	add	rdx, qword ptr [rsi - 0x70]
	cmp	rcx, rdx
	lea	rsi, [rsi]
	jge	.label_382
.label_287:
	mov	al, 1
	mov	rcx, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	mov	edx, dword ptr [rcx + 0x18]
	mov	rcx, qword ptr [rbp - 0x500]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rcx - 0x70]
	mov	esi, ecx
	nop	
	add	edx, esi
	mov	di, dx
	movsx	edx, di
	mov	rcx, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	mov	dword ptr [rcx + 0x18], edx
	test	al, 1
	jne	.label_202
	nop	
	jmp	.label_219
.label_382:
	mov	rsp, rsp
	xor	eax, eax
	mov	rsp, rsp
	mov	cl, al
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	eax, dword ptr [rdx + 0x18]
	nop	
	mov	rdx, qword ptr [rbp - 0x500]
	mov	rbp, rbp
	mov	rdx, qword ptr [rdx - 0x70]
	mov	esi, edx
	add	eax, esi
	nop	
	mov	di, ax
	lea	rsi, [rsi]
	movsx	eax, di
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	mov	dword ptr [rdx + 0x18], eax
	nop	
	test	cl, 1
	jne	.label_202
	mov	rbp, rbp
	jmp	.label_219
.label_559:
	mov	al, 1
	mov	rsp, rsp
	test	al, 1
	jne	.label_429
	jmp	.label_434
.label_429:
	xor	eax, eax
	mov	rbp, rbp
	mov	cl, al
	mov	rsp, rsp
	test	cl, 1
	jne	.label_638
	jmp	.label_626
.label_638:
	lea	rsi, [rsi]
	mov	al, 1
	lea	rsi, [rsi]
	test	al, 1
	jne	.label_442
	mov	rsp, rsp
	jmp	.label_445
.label_442:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x500]
	mov	rax, qword ptr [rax - 0x70]
	mov	ecx, eax
	mov	rbp, rbp
	cmp	ecx, 0
	jge	.label_446
	mov	eax, 0x80000000
	mov	rcx, qword ptr [rbp - 8]
	mov	edx, dword ptr [rcx + 0x18]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x500]
	mov	rbp, rbp
	mov	rcx, qword ptr [rcx - 0x70]
	mov	esi, ecx
	sub	eax, esi
	cmp	edx, eax
	jl	.label_449
	jmp	.label_456
.label_446:
	mov	eax, 0x7fffffff
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x500]
	mov	rcx, qword ptr [rcx - 0x70]
	mov	edx, ecx
	mov	rbp, rbp
	sub	eax, edx
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 8]
	cmp	eax, dword ptr [rcx + 0x18]
	jl	.label_449
	lea	rsi, [rsi]
	jmp	.label_456
.label_445:
	mov	rax, qword ptr [rbp - 8]
	cmp	dword ptr [rax + 0x18], 0
	jge	.label_477
	mov	rax, qword ptr [rbp - 0x500]
	nop	
	mov	rax, qword ptr [rax - 0x70]
	mov	rsp, rsp
	mov	ecx, eax
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	mov	edx, dword ptr [rax + 0x18]
	mov	rax, qword ptr [rbp - 0x500]
	mov	rbp, rbp
	mov	rax, qword ptr [rax - 0x70]
	mov	esi, eax
	add	edx, esi
	cmp	ecx, edx
	lea	rdi, [rdi]
	jle	.label_449
	mov	rsp, rsp
	jmp	.label_456
.label_477:
	mov	rax, qword ptr [rbp - 0x500]
	mov	rax, qword ptr [rax - 0x70]
	mov	ecx, eax
	mov	rbp, rbp
	cmp	ecx, 0
	jge	.label_505
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 8]
	mov	ecx, dword ptr [rax + 0x18]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 8]
	mov	edx, dword ptr [rax + 0x18]
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x500]
	mov	rax, qword ptr [rax - 0x70]
	mov	rsp, rsp
	mov	esi, eax
	lea	rdi, [rdi]
	add	edx, esi
	cmp	ecx, edx
	lea	rdi, [rdi]
	jle	.label_449
	jmp	.label_456
.label_505:
	mov	rax, qword ptr [rbp - 8]
	mov	ecx, dword ptr [rax + 0x18]
	mov	rax, qword ptr [rbp - 0x500]
	mov	rax, qword ptr [rax - 0x70]
	mov	edx, eax
	lea	rdi, [rdi]
	add	ecx, edx
	mov	rax, qword ptr [rbp - 0x500]
	mov	rbp, rbp
	mov	rax, qword ptr [rax - 0x70]
	nop	
	mov	edx, eax
	cmp	ecx, edx
	lea	rsi, [rsi]
	jl	.label_449
.label_456:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 8]
	mov	rbp, rbp
	mov	ecx, dword ptr [rax + 0x18]
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x500]
	mov	rax, qword ptr [rax - 0x70]
	mov	edx, eax
	add	ecx, edx
	mov	rbp, rbp
	cmp	ecx, 0x80000000
	jl	.label_449
	mov	eax, 0x7fffffff
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	edx, dword ptr [rcx + 0x18]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x500]
	mov	rsp, rsp
	mov	rcx, qword ptr [rcx - 0x70]
	mov	esi, ecx
	add	edx, esi
	mov	rsp, rsp
	cmp	eax, edx
	nop	
	jge	.label_558
.label_449:
	nop	
	mov	al, 1
	mov	rcx, qword ptr [rbp - 8]
	mov	edx, dword ptr [rcx + 0x18]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x500]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rcx - 0x70]
	mov	esi, ecx
	add	edx, esi
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	dword ptr [rcx + 0x18], edx
	test	al, 1
	jne	.label_202
	jmp	.label_219
.label_558:
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	mov	eax, dword ptr [rdx + 0x18]
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x500]
	mov	rbp, rbp
	mov	rdx, qword ptr [rdx - 0x70]
	mov	rbp, rbp
	mov	esi, edx
	lea	rdi, [rdi]
	add	eax, esi
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 8]
	mov	dword ptr [rdx + 0x18], eax
	test	cl, 1
	mov	rbp, rbp
	jne	.label_202
	lea	rdi, [rdi]
	jmp	.label_219
.label_626:
	mov	rsp, rsp
	mov	al, 1
	test	al, 1
	mov	rbp, rbp
	jne	.label_602
	jmp	.label_605
.label_602:
	mov	rax, qword ptr [rbp - 0x500]
	mov	rbp, rbp
	cmp	qword ptr [rax - 0x70], 0
	lea	rdi, [rdi]
	jge	.label_565
	movabs	rax, 0x8000000000000000
	mov	rcx, qword ptr [rbp - 8]
	movsxd	rcx, dword ptr [rcx + 0x18]
	mov	rdx, qword ptr [rbp - 0x500]
	lea	rsi, [rsi]
	sub	rax, qword ptr [rdx - 0x70]
	mov	rsp, rsp
	cmp	rcx, rax
	jl	.label_613
	mov	rsp, rsp
	jmp	.label_637
.label_565:
	movabs	rax, 0x7fffffffffffffff
	mov	rcx, qword ptr [rbp - 0x500]
	sub	rax, qword ptr [rcx - 0x70]
	mov	rcx, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	movsxd	rcx, dword ptr [rcx + 0x18]
	cmp	rax, rcx
	jl	.label_613
	nop	
	jmp	.label_637
.label_605:
	nop	
	mov	rax, qword ptr [rbp - 8]
	cmp	dword ptr [rax + 0x18], 0
	lea	rsi, [rsi]
	jge	.label_640
	mov	rax, qword ptr [rbp - 0x500]
	mov	rbp, rbp
	mov	rax, qword ptr [rax - 0x70]
	nop	
	mov	rcx, qword ptr [rbp - 8]
	movsxd	rcx, dword ptr [rcx + 0x18]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x500]
	lea	rsi, [rsi]
	add	rcx, qword ptr [rdx - 0x70]
	nop	
	cmp	rax, rcx
	mov	rbp, rbp
	jle	.label_613
	mov	rbp, rbp
	jmp	.label_637
.label_640:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x500]
	cmp	qword ptr [rax - 0x70], 0
	lea	rsi, [rsi]
	jge	.label_295
	nop	
	mov	rax, qword ptr [rbp - 8]
	movsxd	rax, dword ptr [rax + 0x18]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 8]
	movsxd	rcx, dword ptr [rcx + 0x18]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x500]
	nop	
	add	rcx, qword ptr [rdx - 0x70]
	cmp	rax, rcx
	jle	.label_613
	jmp	.label_637
.label_295:
	mov	rax, qword ptr [rbp - 8]
	movsxd	rax, dword ptr [rax + 0x18]
	nop	
	mov	rcx, qword ptr [rbp - 0x500]
	lea	rdi, [rdi]
	add	rax, qword ptr [rcx - 0x70]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x500]
	lea	rdi, [rdi]
	cmp	rax, qword ptr [rcx - 0x70]
	lea	rsi, [rsi]
	jl	.label_613
.label_637:
	mov	rax, qword ptr [rbp - 8]
	nop	
	movsxd	rax, dword ptr [rax + 0x18]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x500]
	nop	
	add	rax, qword ptr [rcx - 0x70]
	nop	
	cmp	rax, -0x80000000
	jl	.label_613
	mov	eax, 0x7fffffff
	mov	ecx, eax
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 8]
	movsxd	rdx, dword ptr [rdx + 0x18]
	mov	rsi, qword ptr [rbp - 0x500]
	add	rdx, qword ptr [rsi - 0x70]
	cmp	rcx, rdx
	nop	
	jge	.label_686
.label_613:
	mov	al, 1
	mov	rcx, qword ptr [rbp - 8]
	nop	
	mov	edx, dword ptr [rcx + 0x18]
	mov	rcx, qword ptr [rbp - 0x500]
	mov	rsp, rsp
	mov	rcx, qword ptr [rcx - 0x70]
	mov	rbp, rbp
	mov	esi, ecx
	nop	
	add	edx, esi
	mov	rcx, qword ptr [rbp - 8]
	mov	dword ptr [rcx + 0x18], edx
	mov	rsp, rsp
	test	al, 1
	jne	.label_202
	jmp	.label_219
.label_686:
	xor	eax, eax
	lea	rsi, [rsi]
	mov	cl, al
	mov	rdx, qword ptr [rbp - 8]
	mov	eax, dword ptr [rdx + 0x18]
	mov	rdx, qword ptr [rbp - 0x500]
	mov	rbp, rbp
	mov	rdx, qword ptr [rdx - 0x70]
	mov	esi, edx
	add	eax, esi
	nop	
	mov	rdx, qword ptr [rbp - 8]
	mov	dword ptr [rdx + 0x18], eax
	test	cl, 1
	mov	rbp, rbp
	jne	.label_202
	jmp	.label_219
.label_434:
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	nop	
	jne	.label_718
	jmp	.label_720
.label_718:
	xor	eax, eax
	mov	cl, al
	mov	rsp, rsp
	test	cl, 1
	jne	.label_721
	lea	rsi, [rsi]
	jmp	.label_726
.label_721:
	mov	rsp, rsp
	mov	al, 1
	lea	rdi, [rdi]
	test	al, 1
	jne	.label_729
	jmp	.label_732
.label_729:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x500]
	cmp	qword ptr [rax - 0x70], 0
	jge	.label_393
	movabs	rax, 0x8000000000000000
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 8]
	mov	rsp, rsp
	movsxd	rcx, dword ptr [rcx + 0x18]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x500]
	sub	rax, qword ptr [rdx - 0x70]
	nop	
	cmp	rcx, rax
	mov	rbp, rbp
	jl	.label_414
	jmp	.label_769
.label_393:
	lea	rdi, [rdi]
	movabs	rax, 0x7fffffffffffffff
	mov	rcx, qword ptr [rbp - 0x500]
	sub	rax, qword ptr [rcx - 0x70]
	mov	rcx, qword ptr [rbp - 8]
	movsxd	rcx, dword ptr [rcx + 0x18]
	cmp	rax, rcx
	jl	.label_414
	mov	rbp, rbp
	jmp	.label_769
.label_732:
	mov	rax, qword ptr [rbp - 8]
	movsxd	rax, dword ptr [rax + 0x18]
	cmp	rax, 0
	jge	.label_774
	mov	rax, qword ptr [rbp - 0x500]
	nop	
	mov	rax, qword ptr [rax - 0x70]
	mov	rcx, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	movsxd	rcx, dword ptr [rcx + 0x18]
	mov	rdx, qword ptr [rbp - 0x500]
	nop	
	add	rcx, qword ptr [rdx - 0x70]
	mov	rsp, rsp
	cmp	rax, rcx
	jle	.label_414
	lea	rdi, [rdi]
	jmp	.label_769
.label_774:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x500]
	cmp	qword ptr [rax - 0x70], 0
	jge	.label_786
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	movsxd	rax, dword ptr [rax + 0x18]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 8]
	mov	rsp, rsp
	movsxd	rcx, dword ptr [rcx + 0x18]
	nop	
	mov	rdx, qword ptr [rbp - 0x500]
	add	rcx, qword ptr [rdx - 0x70]
	cmp	rax, rcx
	jle	.label_414
	jmp	.label_769
.label_786:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 8]
	movsxd	rax, dword ptr [rax + 0x18]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x500]
	add	rax, qword ptr [rcx - 0x70]
	mov	rcx, qword ptr [rbp - 0x500]
	cmp	rax, qword ptr [rcx - 0x70]
	jl	.label_414
.label_769:
	movabs	rax, 0x8000000000000000
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 8]
	movsxd	rcx, dword ptr [rcx + 0x18]
	mov	rdx, qword ptr [rbp - 0x500]
	lea	rdi, [rdi]
	add	rcx, qword ptr [rdx - 0x70]
	lea	rdi, [rdi]
	cmp	rcx, rax
	nop	
	jl	.label_414
	movabs	rax, 0x7fffffffffffffff
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	movsxd	rcx, dword ptr [rcx + 0x18]
	mov	rdx, qword ptr [rbp - 0x500]
	add	rcx, qword ptr [rdx - 0x70]
	cmp	rax, rcx
	lea	rsi, [rsi]
	jge	.label_820
.label_414:
	nop	
	mov	al, 1
	mov	rcx, qword ptr [rbp - 8]
	nop	
	movsxd	rcx, dword ptr [rcx + 0x18]
	mov	rdx, qword ptr [rbp - 0x500]
	add	rcx, qword ptr [rdx - 0x70]
	mov	esi, ecx
	mov	rcx, qword ptr [rbp - 8]
	mov	dword ptr [rcx + 0x18], esi
	mov	rsp, rsp
	test	al, 1
	jne	.label_202
	jmp	.label_219
.label_820:
	xor	eax, eax
	nop	
	mov	cl, al
	mov	rdx, qword ptr [rbp - 8]
	movsxd	rdx, dword ptr [rdx + 0x18]
	mov	rsi, qword ptr [rbp - 0x500]
	lea	rsi, [rsi]
	add	rdx, qword ptr [rsi - 0x70]
	nop	
	mov	eax, edx
	mov	rdx, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	mov	dword ptr [rdx + 0x18], eax
	test	cl, 1
	lea	rdi, [rdi]
	jne	.label_202
	mov	rbp, rbp
	jmp	.label_219
.label_726:
	mov	al, 1
	mov	rsp, rsp
	test	al, 1
	mov	rsp, rsp
	jne	.label_1117
	mov	rsp, rsp
	jmp	.label_855
.label_1117:
	mov	rax, qword ptr [rbp - 0x500]
	nop	
	cmp	qword ptr [rax - 0x70], 0
	jge	.label_856
	movabs	rax, 0x8000000000000000
	mov	rcx, qword ptr [rbp - 8]
	mov	rbp, rbp
	movsxd	rcx, dword ptr [rcx + 0x18]
	mov	rdx, qword ptr [rbp - 0x500]
	sub	rax, qword ptr [rdx - 0x70]
	cmp	rcx, rax
	jl	.label_387
	jmp	.label_886
.label_856:
	mov	rsp, rsp
	movabs	rax, 0x7fffffffffffffff
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x500]
	sub	rax, qword ptr [rcx - 0x70]
	mov	rcx, qword ptr [rbp - 8]
	movsxd	rcx, dword ptr [rcx + 0x18]
	mov	rbp, rbp
	cmp	rax, rcx
	nop	
	jl	.label_387
	lea	rsi, [rsi]
	jmp	.label_886
.label_855:
	nop	
	mov	rax, qword ptr [rbp - 8]
	cmp	dword ptr [rax + 0x18], 0
	jge	.label_887
	mov	rax, qword ptr [rbp - 0x500]
	mov	rax, qword ptr [rax - 0x70]
	mov	rcx, qword ptr [rbp - 8]
	nop	
	movsxd	rcx, dword ptr [rcx + 0x18]
	mov	rdx, qword ptr [rbp - 0x500]
	add	rcx, qword ptr [rdx - 0x70]
	cmp	rax, rcx
	jle	.label_387
	jmp	.label_886
.label_887:
	mov	rax, qword ptr [rbp - 0x500]
	mov	rsp, rsp
	cmp	qword ptr [rax - 0x70], 0
	nop	
	jge	.label_898
	mov	rax, qword ptr [rbp - 8]
	movsxd	rax, dword ptr [rax + 0x18]
	mov	rcx, qword ptr [rbp - 8]
	movsxd	rcx, dword ptr [rcx + 0x18]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x500]
	add	rcx, qword ptr [rdx - 0x70]
	mov	rbp, rbp
	cmp	rax, rcx
	jle	.label_387
	nop	
	jmp	.label_886
.label_898:
	mov	rax, qword ptr [rbp - 8]
	movsxd	rax, dword ptr [rax + 0x18]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x500]
	mov	rsp, rsp
	add	rax, qword ptr [rcx - 0x70]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x500]
	mov	rsp, rsp
	cmp	rax, qword ptr [rcx - 0x70]
	mov	rbp, rbp
	jl	.label_387
.label_886:
	movabs	rax, 0x8000000000000000
	mov	rcx, qword ptr [rbp - 8]
	mov	rbp, rbp
	movsxd	rcx, dword ptr [rcx + 0x18]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x500]
	add	rcx, qword ptr [rdx - 0x70]
	cmp	rcx, rax
	jl	.label_387
	mov	rsp, rsp
	movabs	rax, 0x7fffffffffffffff
	nop	
	mov	rcx, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	movsxd	rcx, dword ptr [rcx + 0x18]
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x500]
	add	rcx, qword ptr [rdx - 0x70]
	cmp	rax, rcx
	lea	rdi, [rdi]
	jge	.label_704
.label_387:
	lea	rsi, [rsi]
	mov	al, 1
	mov	rcx, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	movsxd	rcx, dword ptr [rcx + 0x18]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x500]
	nop	
	add	rcx, qword ptr [rdx - 0x70]
	lea	rsi, [rsi]
	mov	esi, ecx
	nop	
	mov	rcx, qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	dword ptr [rcx + 0x18], esi
	lea	rsi, [rsi]
	test	al, 1
	jne	.label_202
	jmp	.label_219
.label_704:
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 8]
	nop	
	movsxd	rdx, dword ptr [rdx + 0x18]
	mov	rsi, qword ptr [rbp - 0x500]
	mov	rsp, rsp
	add	rdx, qword ptr [rsi - 0x70]
	mov	eax, edx
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 8]
	nop	
	mov	dword ptr [rdx + 0x18], eax
	mov	rbp, rbp
	test	cl, 1
	jne	.label_202
	jmp	.label_219
.label_720:
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	mov	rsp, rsp
	jne	.label_959
	mov	rbp, rbp
	jmp	.label_965
.label_959:
	mov	rsp, rsp
	mov	al, 1
	test	al, 1
	jne	.label_968
	jmp	.label_973
.label_968:
	mov	rax, qword ptr [rbp - 0x500]
	cmp	qword ptr [rax - 0x70], 0
	jge	.label_977
	movabs	rax, 0x8000000000000000
	mov	rcx, qword ptr [rbp - 8]
	movsxd	rcx, dword ptr [rcx + 0x18]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x500]
	nop	
	sub	rax, qword ptr [rdx - 0x70]
	lea	rsi, [rsi]
	cmp	rcx, rax
	mov	rsp, rsp
	jl	.label_421
	jmp	.label_880
.label_977:
	mov	rsp, rsp
	movabs	rax, 0x7fffffffffffffff
	mov	rcx, qword ptr [rbp - 0x500]
	mov	rsp, rsp
	sub	rax, qword ptr [rcx - 0x70]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 8]
	movsxd	rcx, dword ptr [rcx + 0x18]
	cmp	rax, rcx
	lea	rsi, [rsi]
	jl	.label_421
	nop	
	jmp	.label_880
.label_973:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 8]
	movsxd	rax, dword ptr [rax + 0x18]
	mov	rsp, rsp
	cmp	rax, 0
	mov	rsp, rsp
	jge	.label_1154
	mov	rax, qword ptr [rbp - 0x500]
	mov	rax, qword ptr [rax - 0x70]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 8]
	movsxd	rcx, dword ptr [rcx + 0x18]
	nop	
	mov	rdx, qword ptr [rbp - 0x500]
	add	rcx, qword ptr [rdx - 0x70]
	cmp	rax, rcx
	jle	.label_421
	jmp	.label_880
.label_1154:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x500]
	cmp	qword ptr [rax - 0x70], 0
	mov	rbp, rbp
	jge	.label_1024
	mov	rax, qword ptr [rbp - 8]
	movsxd	rax, dword ptr [rax + 0x18]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 8]
	movsxd	rcx, dword ptr [rcx + 0x18]
	mov	rdx, qword ptr [rbp - 0x500]
	add	rcx, qword ptr [rdx - 0x70]
	cmp	rax, rcx
	mov	rbp, rbp
	jle	.label_421
	jmp	.label_880
.label_1024:
	mov	rax, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	movsxd	rax, dword ptr [rax + 0x18]
	mov	rcx, qword ptr [rbp - 0x500]
	lea	rdi, [rdi]
	add	rax, qword ptr [rcx - 0x70]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x500]
	cmp	rax, qword ptr [rcx - 0x70]
	jl	.label_421
.label_880:
	nop	
	movabs	rax, 0x8000000000000000
	mov	rcx, qword ptr [rbp - 8]
	movsxd	rcx, dword ptr [rcx + 0x18]
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x500]
	mov	rsp, rsp
	add	rcx, qword ptr [rdx - 0x70]
	cmp	rcx, rax
	jl	.label_421
	nop	
	movabs	rax, 0x7fffffffffffffff
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 8]
	movsxd	rcx, dword ptr [rcx + 0x18]
	mov	rdx, qword ptr [rbp - 0x500]
	add	rcx, qword ptr [rdx - 0x70]
	lea	rdi, [rdi]
	cmp	rax, rcx
	jge	.label_1056
.label_421:
	mov	rsp, rsp
	mov	al, 1
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 8]
	movsxd	rcx, dword ptr [rcx + 0x18]
	mov	rdx, qword ptr [rbp - 0x500]
	add	rcx, qword ptr [rdx - 0x70]
	mov	esi, ecx
	mov	rcx, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	mov	dword ptr [rcx + 0x18], esi
	mov	rbp, rbp
	test	al, 1
	jne	.label_202
	jmp	.label_219
.label_1056:
	mov	rsp, rsp
	xor	eax, eax
	mov	cl, al
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	movsxd	rdx, dword ptr [rdx + 0x18]
	nop	
	mov	rsi, qword ptr [rbp - 0x500]
	lea	rsi, [rsi]
	add	rdx, qword ptr [rsi - 0x70]
	mov	eax, edx
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	dword ptr [rdx + 0x18], eax
	test	cl, 1
	lea	rsi, [rsi]
	jne	.label_202
	jmp	.label_219
.label_965:
	mov	al, 1
	lea	rsi, [rsi]
	test	al, 1
	mov	rbp, rbp
	jne	.label_668
	lea	rdi, [rdi]
	jmp	.label_1094
.label_668:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x500]
	lea	rsi, [rsi]
	cmp	qword ptr [rax - 0x70], 0
	lea	rsi, [rsi]
	jge	.label_512
	movabs	rax, 0x8000000000000000
	nop	
	mov	rcx, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	movsxd	rcx, dword ptr [rcx + 0x18]
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x500]
	sub	rax, qword ptr [rdx - 0x70]
	cmp	rcx, rax
	jl	.label_185
	mov	rbp, rbp
	jmp	.label_175
.label_512:
	lea	rsi, [rsi]
	movabs	rax, 0x7fffffffffffffff
	mov	rcx, qword ptr [rbp - 0x500]
	sub	rax, qword ptr [rcx - 0x70]
	mov	rcx, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	movsxd	rcx, dword ptr [rcx + 0x18]
	cmp	rax, rcx
	jl	.label_185
	lea	rdi, [rdi]
	jmp	.label_175
.label_1094:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 8]
	cmp	dword ptr [rax + 0x18], 0
	jge	.label_1133
	nop	
	mov	rax, qword ptr [rbp - 0x500]
	mov	rsp, rsp
	mov	rax, qword ptr [rax - 0x70]
	mov	rcx, qword ptr [rbp - 8]
	movsxd	rcx, dword ptr [rcx + 0x18]
	nop	
	mov	rdx, qword ptr [rbp - 0x500]
	lea	rdi, [rdi]
	add	rcx, qword ptr [rdx - 0x70]
	cmp	rax, rcx
	mov	rsp, rsp
	jle	.label_185
	jmp	.label_175
.label_1133:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x500]
	mov	rsp, rsp
	cmp	qword ptr [rax - 0x70], 0
	jge	.label_1142
	nop	
	mov	rax, qword ptr [rbp - 8]
	nop	
	movsxd	rax, dword ptr [rax + 0x18]
	mov	rcx, qword ptr [rbp - 8]
	movsxd	rcx, dword ptr [rcx + 0x18]
	mov	rdx, qword ptr [rbp - 0x500]
	add	rcx, qword ptr [rdx - 0x70]
	cmp	rax, rcx
	lea	rsi, [rsi]
	jle	.label_185
	jmp	.label_175
.label_1142:
	mov	rax, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	movsxd	rax, dword ptr [rax + 0x18]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x500]
	mov	rbp, rbp
	add	rax, qword ptr [rcx - 0x70]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x500]
	cmp	rax, qword ptr [rcx - 0x70]
	jl	.label_185
.label_175:
	lea	rsi, [rsi]
	movabs	rax, 0x8000000000000000
	mov	rcx, qword ptr [rbp - 8]
	movsxd	rcx, dword ptr [rcx + 0x18]
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x500]
	add	rcx, qword ptr [rdx - 0x70]
	cmp	rcx, rax
	nop	
	jl	.label_185
	mov	rsp, rsp
	movabs	rax, 0x7fffffffffffffff
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	movsxd	rcx, dword ptr [rcx + 0x18]
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x500]
	add	rcx, qword ptr [rdx - 0x70]
	lea	rdi, [rdi]
	cmp	rax, rcx
	jge	.label_186
.label_185:
	mov	al, 1
	mov	rcx, qword ptr [rbp - 8]
	movsxd	rcx, dword ptr [rcx + 0x18]
	mov	rdx, qword ptr [rbp - 0x500]
	add	rcx, qword ptr [rdx - 0x70]
	mov	esi, ecx
	mov	rcx, qword ptr [rbp - 8]
	mov	dword ptr [rcx + 0x18], esi
	test	al, 1
	jne	.label_202
	mov	rbp, rbp
	jmp	.label_219
.label_186:
	mov	rsp, rsp
	xor	eax, eax
	lea	rsi, [rsi]
	mov	cl, al
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 8]
	movsxd	rdx, dword ptr [rdx + 0x18]
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x500]
	lea	rsi, [rsi]
	add	rdx, qword ptr [rsi - 0x70]
	mov	eax, edx
	mov	rdx, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	mov	dword ptr [rdx + 0x18], eax
	nop	
	test	cl, 1
	jne	.label_202
	lea	rdi, [rdi]
	jmp	.label_219
.label_202:
	lea	rsi, [rsi]
	jmp	.label_177
.label_219:
	jmp	.label_200
.label_5215:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x500]
	mov	rax, qword ptr [rax]
	lea	rsi, [rsi]
	add	rax, 0xe10
	mov	ecx, eax
	mov	rax, qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	dword ptr [rax + 0x18], ecx
	mov	rbp, rbp
	jmp	.label_200
.label_5216:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x500]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax - 0x38]
	add	rax, 0xe10
	nop	
	mov	ecx, eax
	nop	
	mov	rax, qword ptr [rbp - 8]
	mov	dword ptr [rax + 0x18], ecx
	lea	rdi, [rdi]
	jmp	.label_200
.label_5217:
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rax + 8], 0
	mov	rax, qword ptr [rbp - 0x500]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax]
	mov	ecx, eax
	nop	
	mov	rax, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	mov	dword ptr [rax + 0x10], ecx
	jmp	.label_200
.label_5218:
	mov	rax, qword ptr [rbp - 8]
	nop	
	mov	qword ptr [rax + 8], 0
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x500]
	mov	rax, qword ptr [rax - 0x38]
	nop	
	mov	ecx, eax
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 8]
	mov	dword ptr [rax + 0x10], ecx
	jmp	.label_200
.label_5219:
	mov	rax, qword ptr [rbp - 0x500]
	mov	rax, qword ptr [rax - 0x38]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	mov	qword ptr [rcx + 8], rax
	mov	rax, qword ptr [rbp - 0x500]
	mov	rax, qword ptr [rax]
	mov	edx, eax
	mov	rax, qword ptr [rbp - 8]
	mov	dword ptr [rax + 0x10], edx
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 8]
	mov	byte ptr [rax + 0xe0], 1
	jmp	.label_200
.label_5220:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x500]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax - 0x30]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	qword ptr [rcx + 8], rax
	mov	rax, qword ptr [rbp - 0x500]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax]
	mov	edx, eax
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	dword ptr [rax + 0x10], edx
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 8]
	mov	byte ptr [rax + 0xe0], 1
	jmp	.label_200
.label_5221:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x500]
	mov	rax, qword ptr [rax - 0x68]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 8]
	nop	
	mov	qword ptr [rcx + 0x38], rax
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x500]
	mov	rbp, rbp
	mov	rax, qword ptr [rax + 8]
	mov	rcx, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	qword ptr [rcx + 0x40], rax
	jmp	.label_200
.label_5222:
	mov	eax, 4
	lea	rsi, [rsi]
	mov	ecx, eax
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x500]
	cmp	rcx, qword ptr [rdx - 0xd0]
	lea	rdi, [rdi]
	jg	.label_360
	mov	rax, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	test	byte ptr [rax + 0xd9], 1
	lea	rdi, [rdi]
	je	.label_181
	lea	rsi, [rsi]
	movabs	rdi, OFFSET FLAT:.str.10
	mov	rax, qword ptr [rbp - 0x500]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax - 0xd0]
	mov	qword ptr [rbp - 0x588], rax
	call	gettext
	nop	
	mov	rdi, qword ptr [rbp - 0x500]
	mov	rsi, qword ptr [rdi - 0xd8]
	mov	rdx, qword ptr [rbp - 0x588]
	lea	rsi, [rsi]
	mov	rdi, rax
	mov	rsp, rsp
	mov	al, 0
	call	dbg_printf
.label_181:
	mov	rax, qword ptr [rbp - 8]
	mov	rcx, qword ptr [rbp - 0x500]
	mov	rsp, rsp
	mov	rdx, qword ptr [rcx - 0xe0]
	mov	rsp, rsp
	mov	qword ptr [rax + 0x20], rdx
	mov	rdx, qword ptr [rcx - 0xd8]
	mov	rsp, rsp
	mov	qword ptr [rax + 0x28], rdx
	mov	rcx, qword ptr [rcx - 0xd0]
	mov	qword ptr [rax + 0x30], rcx
	mov	rax, qword ptr [rbp - 0x500]
	mov	rsp, rsp
	mov	rax, qword ptr [rax - 0x68]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 8]
	mov	qword ptr [rcx + 0x38], rax
	nop	
	mov	rax, qword ptr [rbp - 0x500]
	mov	rbp, rbp
	mov	rax, qword ptr [rax + 8]
	mov	rcx, qword ptr [rbp - 8]
	mov	qword ptr [rcx + 0x40], rax
	jmp	.label_389
.label_360:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 8]
	nop	
	test	byte ptr [rax + 0xd9], 1
	je	.label_416
	movabs	rdi, OFFSET FLAT:.str.11_0
	lea	rsi, [rsi]
	call	gettext
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x500]
	mov	rsi, qword ptr [rdi - 0xd8]
	mov	rdi, rax
	mov	al, 0
	call	dbg_printf
.label_416:
	mov	rax, qword ptr [rbp - 0x500]
	nop	
	mov	rax, qword ptr [rax - 0xd8]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 8]
	mov	qword ptr [rcx + 0x38], rax
	mov	rax, qword ptr [rbp - 0x500]
	mov	rax, qword ptr [rax - 0x68]
	mov	rcx, qword ptr [rbp - 8]
	nop	
	mov	qword ptr [rcx + 0x40], rax
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 8]
	mov	rcx, qword ptr [rbp - 0x500]
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
.label_389:
	mov	rsp, rsp
	jmp	.label_200
.label_5223:
	lea	rsi, [rsi]
	xor	eax, eax
	mov	rbp, rbp
	mov	cl, al
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x500]
	mov	rdx, qword ptr [rdx - 0x68]
	nop	
	mov	rsi, qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	qword ptr [rsi + 0x40], rdx
	mov	rdx, qword ptr [rbp - 0x500]
	mov	rdx, qword ptr [rdx - 0x38]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 8]
	mov	rbp, rbp
	mov	qword ptr [rsi + 0x38], rdx
	test	cl, 1
	jne	.label_454
	nop	
	jmp	.label_478
.label_454:
	mov	rsp, rsp
	xor	eax, eax
	mov	cl, al
	lea	rdi, [rdi]
	test	cl, 1
	mov	rbp, rbp
	jne	.label_482
	mov	rbp, rbp
	jmp	.label_491
.label_482:
	mov	al, 1
	test	al, 1
	mov	rsp, rsp
	jne	.label_494
	nop	
	jmp	.label_498
.label_494:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x500]
	mov	rax, qword ptr [rax + 8]
	mov	cl, al
	mov	rsp, rsp
	movsx	edx, cl
	cmp	edx, 0
	jge	.label_1135
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x500]
	mov	rax, qword ptr [rax + 8]
	lea	rdi, [rdi]
	mov	cl, al
	mov	rbp, rbp
	movsx	edx, cl
	nop	
	add	edx, 0x7fffffff
	cmp	edx, 0
	jl	.label_507
	mov	rsp, rsp
	jmp	.label_515
.label_1135:
	mov	rbp, rbp
	xor	eax, eax
	nop	
	mov	rcx, qword ptr [rbp - 0x500]
	mov	rsp, rsp
	mov	rcx, qword ptr [rcx + 8]
	mov	dl, cl
	mov	rsp, rsp
	movsx	esi, dl
	mov	rsp, rsp
	add	esi, 0x80000000
	cmp	eax, esi
	mov	rbp, rbp
	jl	.label_507
	jmp	.label_515
.label_498:
	mov	rbp, rbp
	xor	eax, eax
	mov	rbp, rbp
	mov	cl, al
	nop	
	test	cl, 1
	jne	.label_540
	jmp	.label_548
.label_540:
	mov	rbp, rbp
	mov	al, 1
	test	al, 1
	lea	rsi, [rsi]
	jne	.label_507
	lea	rsi, [rsi]
	jmp	.label_515
.label_548:
	mov	rax, qword ptr [rbp - 0x500]
	mov	rax, qword ptr [rax + 8]
	lea	rsi, [rsi]
	mov	cl, al
	movsx	edx, cl
	cmp	edx, 0
	jge	.label_552
	mov	rbp, rbp
	xor	eax, eax
	nop	
	mov	rcx, qword ptr [rbp - 0x500]
	mov	rcx, qword ptr [rcx + 8]
	mov	dl, cl
	movsx	esi, dl
	sub	eax, esi
	mov	rsp, rsp
	cmp	eax, 0
	nop	
	jle	.label_507
	lea	rsi, [rsi]
	jmp	.label_515
.label_552:
	xor	eax, eax
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x500]
	mov	rcx, qword ptr [rcx + 8]
	mov	dl, cl
	movsx	esi, dl
	cmp	eax, esi
	jl	.label_507
.label_515:
	xor	eax, eax
	mov	rcx, qword ptr [rbp - 0x500]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rcx + 8]
	mov	dl, cl
	movsx	esi, dl
	sub	eax, esi
	lea	rsi, [rsi]
	cmp	eax, -0x80
	jl	.label_507
	mov	eax, 0x7f
	nop	
	xor	ecx, ecx
	mov	rdx, qword ptr [rbp - 0x500]
	mov	rbp, rbp
	mov	rdx, qword ptr [rdx + 8]
	lea	rdi, [rdi]
	mov	sil, dl
	movsx	edi, sil
	nop	
	sub	ecx, edi
	mov	rsp, rsp
	cmp	eax, ecx
	jge	.label_586
.label_507:
	mov	rbp, rbp
	mov	al, 1
	xor	ecx, ecx
	mov	rdx, qword ptr [rbp - 0x500]
	mov	rdx, qword ptr [rdx + 8]
	nop	
	mov	sil, dl
	movsx	edi, sil
	sub	ecx, edi
	mov	sil, cl
	movsx	rdx, sil
	mov	r8, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	mov	qword ptr [r8 + 0x28], rdx
	nop	
	test	al, 1
	lea	rsi, [rsi]
	jne	.label_148
	nop	
	jmp	.label_199
.label_586:
	lea	rsi, [rsi]
	xor	eax, eax
	mov	rsp, rsp
	mov	cl, al
	xor	eax, eax
	mov	rdx, qword ptr [rbp - 0x500]
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
	mov	r8, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	mov	qword ptr [r8 + 0x28], rdx
	test	cl, 1
	mov	rsp, rsp
	jne	.label_148
	nop	
	jmp	.label_199
.label_491:
	mov	al, 1
	nop	
	test	al, 1
	nop	
	jne	.label_631
	mov	rbp, rbp
	jmp	.label_714
.label_631:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x500]
	cmp	qword ptr [rax + 8], 0
	lea	rsi, [rsi]
	jge	.label_1009
	mov	rax, qword ptr [rbp - 0x500]
	movabs	rcx, 0x7fffffffffffffff
	add	rcx, qword ptr [rax + 8]
	mov	rsp, rsp
	cmp	rcx, 0
	lea	rsi, [rsi]
	jl	.label_556
	lea	rdi, [rdi]
	jmp	.label_648
.label_1009:
	xor	eax, eax
	lea	rdi, [rdi]
	mov	ecx, eax
	nop	
	mov	rdx, qword ptr [rbp - 0x500]
	lea	rsi, [rsi]
	movabs	rsi, 0x8000000000000000
	add	rsi, qword ptr [rdx + 8]
	nop	
	cmp	rcx, rsi
	jl	.label_556
	jmp	.label_648
.label_714:
	xor	eax, eax
	mov	cl, al
	mov	rsp, rsp
	test	cl, 1
	lea	rdi, [rdi]
	jne	.label_661
	lea	rdi, [rdi]
	jmp	.label_665
.label_661:
	mov	al, 1
	test	al, 1
	nop	
	jne	.label_556
	jmp	.label_648
.label_665:
	mov	rax, qword ptr [rbp - 0x500]
	mov	rbp, rbp
	cmp	qword ptr [rax + 8], 0
	nop	
	jge	.label_169
	xor	eax, eax
	mov	ecx, eax
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x500]
	mov	rsp, rsp
	sub	rcx, qword ptr [rdx + 8]
	lea	rdi, [rdi]
	cmp	rcx, 0
	mov	rbp, rbp
	jle	.label_556
	jmp	.label_648
.label_169:
	xor	eax, eax
	mov	rsp, rsp
	mov	ecx, eax
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x500]
	mov	rbp, rbp
	cmp	rcx, qword ptr [rdx + 8]
	jl	.label_556
.label_648:
	xor	eax, eax
	lea	rdi, [rdi]
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x500]
	mov	rsp, rsp
	sub	rcx, qword ptr [rdx + 8]
	cmp	rcx, -0x80
	nop	
	jl	.label_556
	mov	rsp, rsp
	mov	eax, 0x7f
	mov	ecx, eax
	lea	rdi, [rdi]
	xor	eax, eax
	lea	rsi, [rsi]
	mov	edx, eax
	mov	rsi, qword ptr [rbp - 0x500]
	mov	rsp, rsp
	sub	rdx, qword ptr [rsi + 8]
	cmp	rcx, rdx
	mov	rbp, rbp
	jge	.label_696
.label_556:
	nop	
	mov	al, 1
	mov	rsp, rsp
	xor	ecx, ecx
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x500]
	mov	rdx, qword ptr [rdx + 8]
	mov	esi, edx
	sub	ecx, esi
	mov	rbp, rbp
	mov	dil, cl
	nop	
	movsx	rdx, dil
	lea	rsi, [rsi]
	mov	r8, qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	qword ptr [r8 + 0x28], rdx
	nop	
	test	al, 1
	jne	.label_148
	lea	rsi, [rsi]
	jmp	.label_199
.label_696:
	lea	rdi, [rdi]
	xor	eax, eax
	mov	rsp, rsp
	mov	cl, al
	xor	eax, eax
	mov	rdx, qword ptr [rbp - 0x500]
	mov	rbp, rbp
	mov	rdx, qword ptr [rdx + 8]
	mov	esi, edx
	lea	rsi, [rsi]
	sub	eax, esi
	nop	
	mov	dil, al
	movsx	rdx, dil
	mov	r8, qword ptr [rbp - 8]
	mov	qword ptr [r8 + 0x28], rdx
	mov	rsp, rsp
	test	cl, 1
	lea	rsi, [rsi]
	jne	.label_148
	jmp	.label_199
.label_478:
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_736
	lea	rsi, [rsi]
	jmp	.label_739
.label_736:
	nop	
	xor	eax, eax
	mov	cl, al
	lea	rdi, [rdi]
	test	cl, 1
	nop	
	jne	.label_741
	mov	rbp, rbp
	jmp	.label_464
.label_741:
	lea	rsi, [rsi]
	mov	al, 1
	lea	rsi, [rsi]
	test	al, 1
	jne	.label_746
	nop	
	jmp	.label_752
.label_746:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x500]
	nop	
	mov	rax, qword ptr [rax + 8]
	mov	cx, ax
	movsx	edx, cx
	cmp	edx, 0
	lea	rsi, [rsi]
	jge	.label_522
	mov	rax, qword ptr [rbp - 0x500]
	mov	rax, qword ptr [rax + 8]
	mov	cx, ax
	mov	rsp, rsp
	movsx	edx, cx
	mov	rbp, rbp
	add	edx, 0x7fffffff
	nop	
	cmp	edx, 0
	jl	.label_765
	jmp	.label_635
.label_522:
	mov	rsp, rsp
	xor	eax, eax
	nop	
	mov	rcx, qword ptr [rbp - 0x500]
	mov	rcx, qword ptr [rcx + 8]
	mov	rsp, rsp
	mov	dx, cx
	movsx	esi, dx
	add	esi, 0x80000000
	mov	rbp, rbp
	cmp	eax, esi
	nop	
	jl	.label_765
	jmp	.label_635
.label_752:
	lea	rsi, [rsi]
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	nop	
	jne	.label_788
	jmp	.label_789
.label_788:
	mov	al, 1
	lea	rdi, [rdi]
	test	al, 1
	jne	.label_765
	jmp	.label_635
.label_789:
	mov	rax, qword ptr [rbp - 0x500]
	mov	rax, qword ptr [rax + 8]
	mov	cx, ax
	movsx	edx, cx
	mov	rbp, rbp
	cmp	edx, 0
	mov	rsp, rsp
	jge	.label_795
	mov	rsp, rsp
	xor	eax, eax
	mov	rcx, qword ptr [rbp - 0x500]
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
	jle	.label_765
	jmp	.label_635
.label_795:
	xor	eax, eax
	mov	rcx, qword ptr [rbp - 0x500]
	mov	rsp, rsp
	mov	rcx, qword ptr [rcx + 8]
	mov	dx, cx
	mov	rbp, rbp
	movsx	esi, dx
	nop	
	cmp	eax, esi
	mov	rsp, rsp
	jl	.label_765
.label_635:
	xor	eax, eax
	mov	rcx, qword ptr [rbp - 0x500]
	mov	rbp, rbp
	mov	rcx, qword ptr [rcx + 8]
	nop	
	mov	dx, cx
	lea	rsi, [rsi]
	movsx	esi, dx
	sub	eax, esi
	nop	
	cmp	eax, 0xffff8000
	jl	.label_765
	mov	eax, 0x7fff
	xor	ecx, ecx
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x500]
	mov	rdx, qword ptr [rdx + 8]
	mov	rsp, rsp
	mov	si, dx
	nop	
	movsx	edi, si
	nop	
	sub	ecx, edi
	mov	rsp, rsp
	cmp	eax, ecx
	jge	.label_826
.label_765:
	mov	rsp, rsp
	mov	al, 1
	xor	ecx, ecx
	mov	rdx, qword ptr [rbp - 0x500]
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
	mov	r8, qword ptr [rbp - 8]
	nop	
	mov	qword ptr [r8 + 0x28], rdx
	lea	rdi, [rdi]
	test	al, 1
	nop	
	jne	.label_148
	lea	rsi, [rsi]
	jmp	.label_199
.label_826:
	xor	eax, eax
	mov	cl, al
	xor	eax, eax
	mov	rdx, qword ptr [rbp - 0x500]
	mov	rsp, rsp
	mov	rdx, qword ptr [rdx + 8]
	mov	si, dx
	movsx	edi, si
	sub	eax, edi
	mov	si, ax
	movsx	rdx, si
	lea	rsi, [rsi]
	mov	r8, qword ptr [rbp - 8]
	mov	qword ptr [r8 + 0x28], rdx
	lea	rdi, [rdi]
	test	cl, 1
	lea	rdi, [rdi]
	jne	.label_148
	nop	
	jmp	.label_199
.label_464:
	mov	rbp, rbp
	mov	al, 1
	lea	rsi, [rsi]
	test	al, 1
	jne	.label_865
	mov	rsp, rsp
	jmp	.label_868
.label_865:
	mov	rax, qword ptr [rbp - 0x500]
	cmp	qword ptr [rax + 8], 0
	jge	.label_870
	mov	rax, qword ptr [rbp - 0x500]
	lea	rsi, [rsi]
	movabs	rcx, 0x7fffffffffffffff
	lea	rsi, [rsi]
	add	rcx, qword ptr [rax + 8]
	cmp	rcx, 0
	mov	rbp, rbp
	jl	.label_630
	jmp	.label_889
.label_870:
	mov	rsp, rsp
	xor	eax, eax
	mov	ecx, eax
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x500]
	movabs	rsi, 0x8000000000000000
	nop	
	add	rsi, qword ptr [rdx + 8]
	cmp	rcx, rsi
	jl	.label_630
	jmp	.label_889
.label_868:
	lea	rsi, [rsi]
	xor	eax, eax
	mov	rsp, rsp
	mov	cl, al
	lea	rdi, [rdi]
	test	cl, 1
	mov	rsp, rsp
	jne	.label_897
	lea	rsi, [rsi]
	jmp	.label_900
.label_897:
	lea	rdi, [rdi]
	mov	al, 1
	test	al, 1
	jne	.label_630
	lea	rdi, [rdi]
	jmp	.label_889
.label_900:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x500]
	cmp	qword ptr [rax + 8], 0
	jge	.label_911
	xor	eax, eax
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x500]
	sub	rcx, qword ptr [rdx + 8]
	cmp	rcx, 0
	lea	rdi, [rdi]
	jle	.label_630
	jmp	.label_889
.label_911:
	xor	eax, eax
	mov	ecx, eax
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x500]
	cmp	rcx, qword ptr [rdx + 8]
	jl	.label_630
.label_889:
	xor	eax, eax
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x500]
	lea	rsi, [rsi]
	sub	rcx, qword ptr [rdx + 8]
	cmp	rcx, -0x8000
	mov	rbp, rbp
	jl	.label_630
	nop	
	mov	eax, 0x7fff
	lea	rsi, [rsi]
	mov	ecx, eax
	lea	rdi, [rdi]
	xor	eax, eax
	mov	edx, eax
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x500]
	sub	rdx, qword ptr [rsi + 8]
	lea	rsi, [rsi]
	cmp	rcx, rdx
	mov	rbp, rbp
	jge	.label_927
.label_630:
	nop	
	mov	al, 1
	mov	rbp, rbp
	xor	ecx, ecx
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x500]
	mov	rdx, qword ptr [rdx + 8]
	mov	rbp, rbp
	mov	esi, edx
	sub	ecx, esi
	mov	di, cx
	mov	rbp, rbp
	movsx	rdx, di
	nop	
	mov	r8, qword ptr [rbp - 8]
	mov	qword ptr [r8 + 0x28], rdx
	lea	rsi, [rsi]
	test	al, 1
	lea	rdi, [rdi]
	jne	.label_148
	mov	rsp, rsp
	jmp	.label_199
.label_927:
	xor	eax, eax
	mov	rsp, rsp
	mov	cl, al
	nop	
	xor	eax, eax
	mov	rdx, qword ptr [rbp - 0x500]
	mov	rdx, qword ptr [rdx + 8]
	mov	esi, edx
	sub	eax, esi
	lea	rdi, [rdi]
	mov	di, ax
	movsx	rdx, di
	lea	rdi, [rdi]
	mov	r8, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	mov	qword ptr [r8 + 0x28], rdx
	test	cl, 1
	jne	.label_148
	lea	rsi, [rsi]
	jmp	.label_199
.label_739:
	xor	eax, eax
	mov	cl, al
	lea	rdi, [rdi]
	test	cl, 1
	jne	.label_964
	lea	rdi, [rdi]
	jmp	.label_970
.label_964:
	xor	eax, eax
	mov	cl, al
	nop	
	test	cl, 1
	lea	rsi, [rsi]
	jne	.label_979
	jmp	.label_981
.label_979:
	mov	al, 1
	test	al, 1
	jne	.label_982
	lea	rsi, [rsi]
	jmp	.label_988
.label_982:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x500]
	mov	rax, qword ptr [rax + 8]
	mov	ecx, eax
	cmp	ecx, 0
	jge	.label_990
	mov	rax, qword ptr [rbp - 0x500]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax + 8]
	mov	ecx, eax
	add	ecx, 0x7fffffff
	mov	rsp, rsp
	cmp	ecx, 0
	jl	.label_997
	jmp	.label_1000
.label_990:
	mov	rsp, rsp
	xor	eax, eax
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x500]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rcx + 8]
	mov	edx, ecx
	add	edx, 0x80000000
	cmp	eax, edx
	lea	rsi, [rsi]
	jl	.label_997
	jmp	.label_1000
.label_988:
	lea	rdi, [rdi]
	xor	eax, eax
	mov	rsp, rsp
	mov	cl, al
	test	cl, 1
	nop	
	jne	.label_1012
	mov	rsp, rsp
	jmp	.label_223
.label_1012:
	mov	al, 1
	mov	rbp, rbp
	test	al, 1
	jne	.label_997
	jmp	.label_1000
.label_223:
	mov	rax, qword ptr [rbp - 0x500]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax + 8]
	mov	ecx, eax
	mov	rbp, rbp
	cmp	ecx, 0
	nop	
	jge	.label_858
	xor	eax, eax
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x500]
	mov	rcx, qword ptr [rcx + 8]
	mov	edx, ecx
	lea	rsi, [rsi]
	sub	eax, edx
	cmp	eax, 0
	nop	
	jle	.label_997
	nop	
	jmp	.label_1000
.label_858:
	xor	eax, eax
	mov	rcx, qword ptr [rbp - 0x500]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rcx + 8]
	mov	edx, ecx
	lea	rdi, [rdi]
	cmp	eax, edx
	jl	.label_997
.label_1000:
	xor	eax, eax
	mov	rcx, qword ptr [rbp - 0x500]
	nop	
	mov	rcx, qword ptr [rcx + 8]
	mov	rsp, rsp
	mov	edx, ecx
	nop	
	sub	eax, edx
	cmp	eax, 0x80000000
	mov	rbp, rbp
	jl	.label_997
	mov	eax, 0x7fffffff
	lea	rdi, [rdi]
	xor	ecx, ecx
	mov	rdx, qword ptr [rbp - 0x500]
	mov	rdx, qword ptr [rdx + 8]
	lea	rdi, [rdi]
	mov	esi, edx
	sub	ecx, esi
	lea	rdi, [rdi]
	cmp	eax, ecx
	jge	.label_1045
.label_997:
	mov	al, 1
	lea	rdi, [rdi]
	xor	ecx, ecx
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x500]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rdx + 8]
	mov	esi, edx
	lea	rdi, [rdi]
	sub	ecx, esi
	movsxd	rdx, ecx
	nop	
	mov	rdi, qword ptr [rbp - 8]
	mov	qword ptr [rdi + 0x28], rdx
	lea	rsi, [rsi]
	test	al, 1
	lea	rdi, [rdi]
	jne	.label_148
	jmp	.label_199
.label_1045:
	xor	eax, eax
	lea	rsi, [rsi]
	mov	cl, al
	xor	eax, eax
	mov	rdx, qword ptr [rbp - 0x500]
	mov	rbp, rbp
	mov	rdx, qword ptr [rdx + 8]
	mov	rbp, rbp
	mov	esi, edx
	mov	rbp, rbp
	sub	eax, esi
	mov	rsp, rsp
	movsxd	rdx, eax
	mov	rdi, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	qword ptr [rdi + 0x28], rdx
	test	cl, 1
	jne	.label_148
	jmp	.label_199
.label_981:
	mov	al, 1
	test	al, 1
	jne	.label_1077
	lea	rdi, [rdi]
	jmp	.label_742
.label_1077:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x500]
	cmp	qword ptr [rax + 8], 0
	jge	.label_1141
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x500]
	mov	rbp, rbp
	movabs	rcx, 0x7fffffffffffffff
	add	rcx, qword ptr [rax + 8]
	lea	rsi, [rsi]
	cmp	rcx, 0
	jl	.label_694
	lea	rsi, [rsi]
	jmp	.label_891
.label_1141:
	lea	rdi, [rdi]
	xor	eax, eax
	mov	ecx, eax
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x500]
	lea	rdi, [rdi]
	movabs	rsi, 0x8000000000000000
	add	rsi, qword ptr [rdx + 8]
	mov	rsp, rsp
	cmp	rcx, rsi
	lea	rdi, [rdi]
	jl	.label_694
	lea	rdi, [rdi]
	jmp	.label_891
.label_742:
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	mov	rsp, rsp
	jne	.label_1116
	jmp	.label_1121
.label_1116:
	mov	al, 1
	lea	rdi, [rdi]
	test	al, 1
	mov	rbp, rbp
	jne	.label_694
	jmp	.label_891
.label_1121:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x500]
	cmp	qword ptr [rax + 8], 0
	mov	rsp, rsp
	jge	.label_1127
	xor	eax, eax
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x500]
	sub	rcx, qword ptr [rdx + 8]
	cmp	rcx, 0
	jle	.label_694
	lea	rdi, [rdi]
	jmp	.label_891
.label_1127:
	lea	rsi, [rsi]
	xor	eax, eax
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x500]
	cmp	rcx, qword ptr [rdx + 8]
	jl	.label_694
.label_891:
	lea	rdi, [rdi]
	xor	eax, eax
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x500]
	sub	rcx, qword ptr [rdx + 8]
	cmp	rcx, -0x80000000
	mov	rsp, rsp
	jl	.label_694
	lea	rsi, [rsi]
	mov	eax, 0x7fffffff
	mov	ecx, eax
	xor	eax, eax
	lea	rdi, [rdi]
	mov	edx, eax
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x500]
	lea	rdi, [rdi]
	sub	rdx, qword ptr [rsi + 8]
	mov	rsp, rsp
	cmp	rcx, rdx
	jge	.label_233
.label_694:
	mov	rsp, rsp
	mov	al, 1
	xor	ecx, ecx
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x500]
	mov	rsp, rsp
	mov	rdx, qword ptr [rdx + 8]
	mov	rsp, rsp
	mov	esi, edx
	lea	rdi, [rdi]
	sub	ecx, esi
	mov	rbp, rbp
	movsxd	rdx, ecx
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 8]
	mov	qword ptr [rdi + 0x28], rdx
	test	al, 1
	mov	rsp, rsp
	jne	.label_148
	jmp	.label_199
.label_233:
	mov	rbp, rbp
	xor	eax, eax
	nop	
	mov	cl, al
	lea	rsi, [rsi]
	xor	eax, eax
	mov	rdx, qword ptr [rbp - 0x500]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rdx + 8]
	lea	rsi, [rsi]
	mov	esi, edx
	sub	eax, esi
	movsxd	rdx, eax
	nop	
	mov	rdi, qword ptr [rbp - 8]
	nop	
	mov	qword ptr [rdi + 0x28], rdx
	test	cl, 1
	lea	rdi, [rdi]
	jne	.label_148
	jmp	.label_199
.label_970:
	mov	al, 1
	mov	rbp, rbp
	test	al, 1
	jne	.label_201
	nop	
	jmp	.label_204
.label_201:
	xor	eax, eax
	mov	cl, al
	nop	
	test	cl, 1
	jne	.label_205
	lea	rdi, [rdi]
	jmp	.label_213
.label_205:
	lea	rdi, [rdi]
	mov	al, 1
	lea	rdi, [rdi]
	test	al, 1
	lea	rsi, [rsi]
	jne	.label_493
	jmp	.label_1145
.label_493:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x500]
	mov	rsp, rsp
	cmp	qword ptr [rax + 8], 0
	jge	.label_224
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x500]
	mov	rbp, rbp
	movabs	rcx, 0x7fffffffffffffff
	lea	rsi, [rsi]
	add	rcx, qword ptr [rax + 8]
	mov	rsp, rsp
	cmp	rcx, 0
	mov	rsp, rsp
	jl	.label_235
	lea	rsi, [rsi]
	jmp	.label_253
.label_224:
	lea	rsi, [rsi]
	xor	eax, eax
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x500]
	movabs	rsi, 0x8000000000000000
	add	rsi, qword ptr [rdx + 8]
	lea	rsi, [rsi]
	cmp	rcx, rsi
	jl	.label_235
	lea	rdi, [rdi]
	jmp	.label_253
.label_1145:
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	nop	
	jne	.label_270
	mov	rbp, rbp
	jmp	.label_760
.label_270:
	lea	rsi, [rsi]
	mov	al, 1
	test	al, 1
	jne	.label_235
	jmp	.label_253
.label_760:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x500]
	mov	rbp, rbp
	cmp	qword ptr [rax + 8], 0
	lea	rdi, [rdi]
	jge	.label_280
	xor	eax, eax
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x500]
	sub	rcx, qword ptr [rdx + 8]
	lea	rdi, [rdi]
	cmp	rcx, 0
	jle	.label_235
	nop	
	jmp	.label_253
.label_280:
	xor	eax, eax
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x500]
	cmp	rcx, qword ptr [rdx + 8]
	mov	rbp, rbp
	jl	.label_235
.label_253:
	movabs	rax, 0x8000000000000000
	xor	ecx, ecx
	lea	rdi, [rdi]
	mov	edx, ecx
	nop	
	mov	rsi, qword ptr [rbp - 0x500]
	mov	rsp, rsp
	sub	rdx, qword ptr [rsi + 8]
	nop	
	cmp	rdx, rax
	lea	rdi, [rdi]
	jl	.label_235
	mov	rbp, rbp
	movabs	rax, 0x7fffffffffffffff
	lea	rsi, [rsi]
	xor	ecx, ecx
	lea	rdi, [rdi]
	mov	edx, ecx
	mov	rsi, qword ptr [rbp - 0x500]
	mov	rsp, rsp
	sub	rdx, qword ptr [rsi + 8]
	cmp	rax, rdx
	mov	rbp, rbp
	jge	.label_317
.label_235:
	lea	rsi, [rsi]
	mov	al, 1
	lea	rsi, [rsi]
	xor	ecx, ecx
	mov	edx, ecx
	mov	rsi, qword ptr [rbp - 0x500]
	lea	rsi, [rsi]
	sub	rdx, qword ptr [rsi + 8]
	mov	rsi, qword ptr [rbp - 8]
	mov	qword ptr [rsi + 0x28], rdx
	mov	rsp, rsp
	test	al, 1
	nop	
	jne	.label_148
	lea	rsi, [rsi]
	jmp	.label_199
.label_317:
	mov	rbp, rbp
	xor	eax, eax
	nop	
	mov	cl, al
	mov	rsp, rsp
	xor	eax, eax
	mov	rsp, rsp
	mov	edx, eax
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x500]
	lea	rsi, [rsi]
	sub	rdx, qword ptr [rsi + 8]
	mov	rsi, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	mov	qword ptr [rsi + 0x28], rdx
	mov	rsp, rsp
	test	cl, 1
	jne	.label_148
	lea	rdi, [rdi]
	jmp	.label_199
.label_213:
	mov	al, 1
	nop	
	test	al, 1
	lea	rsi, [rsi]
	jne	.label_362
	jmp	.label_369
.label_362:
	mov	rax, qword ptr [rbp - 0x500]
	lea	rsi, [rsi]
	cmp	qword ptr [rax + 8], 0
	jge	.label_371
	mov	rax, qword ptr [rbp - 0x500]
	lea	rsi, [rsi]
	movabs	rcx, 0x7fffffffffffffff
	lea	rdi, [rdi]
	add	rcx, qword ptr [rax + 8]
	cmp	rcx, 0
	jl	.label_239
	lea	rdi, [rdi]
	jmp	.label_384
.label_371:
	xor	eax, eax
	nop	
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x500]
	movabs	rsi, 0x8000000000000000
	mov	rbp, rbp
	add	rsi, qword ptr [rdx + 8]
	cmp	rcx, rsi
	nop	
	jl	.label_239
	jmp	.label_384
.label_369:
	lea	rsi, [rsi]
	xor	eax, eax
	mov	rsp, rsp
	mov	cl, al
	lea	rdi, [rdi]
	test	cl, 1
	jne	.label_394
	lea	rsi, [rsi]
	jmp	.label_402
.label_394:
	lea	rsi, [rsi]
	mov	al, 1
	test	al, 1
	jne	.label_239
	jmp	.label_384
.label_402:
	mov	rax, qword ptr [rbp - 0x500]
	lea	rsi, [rsi]
	cmp	qword ptr [rax + 8], 0
	jge	.label_407
	xor	eax, eax
	mov	rsp, rsp
	mov	ecx, eax
	nop	
	mov	rdx, qword ptr [rbp - 0x500]
	sub	rcx, qword ptr [rdx + 8]
	lea	rdi, [rdi]
	cmp	rcx, 0
	jle	.label_239
	lea	rdi, [rdi]
	jmp	.label_384
.label_407:
	lea	rdi, [rdi]
	xor	eax, eax
	lea	rdi, [rdi]
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x500]
	lea	rdi, [rdi]
	cmp	rcx, qword ptr [rdx + 8]
	jl	.label_239
.label_384:
	lea	rsi, [rsi]
	movabs	rax, 0x8000000000000000
	nop	
	xor	ecx, ecx
	mov	rsp, rsp
	mov	edx, ecx
	nop	
	mov	rsi, qword ptr [rbp - 0x500]
	lea	rsi, [rsi]
	sub	rdx, qword ptr [rsi + 8]
	mov	rsp, rsp
	cmp	rdx, rax
	lea	rdi, [rdi]
	jl	.label_239
	lea	rsi, [rsi]
	movabs	rax, 0x7fffffffffffffff
	xor	ecx, ecx
	mov	edx, ecx
	nop	
	mov	rsi, qword ptr [rbp - 0x500]
	lea	rdi, [rdi]
	sub	rdx, qword ptr [rsi + 8]
	lea	rsi, [rsi]
	cmp	rax, rdx
	lea	rsi, [rsi]
	jge	.label_678
.label_239:
	lea	rdi, [rdi]
	mov	al, 1
	lea	rsi, [rsi]
	xor	ecx, ecx
	lea	rdi, [rdi]
	mov	edx, ecx
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x500]
	sub	rdx, qword ptr [rsi + 8]
	nop	
	mov	rsi, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	qword ptr [rsi + 0x28], rdx
	test	al, 1
	jne	.label_148
	jmp	.label_199
.label_678:
	mov	rbp, rbp
	xor	eax, eax
	lea	rsi, [rsi]
	mov	cl, al
	mov	rbp, rbp
	xor	eax, eax
	mov	rsp, rsp
	mov	edx, eax
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x500]
	sub	rdx, qword ptr [rsi + 8]
	mov	rsi, qword ptr [rbp - 8]
	mov	qword ptr [rsi + 0x28], rdx
	test	cl, 1
	jne	.label_148
	jmp	.label_199
.label_204:
	mov	rsp, rsp
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_486
	mov	rbp, rbp
	jmp	.label_913
.label_486:
	mov	al, 1
	lea	rsi, [rsi]
	test	al, 1
	jne	.label_495
	lea	rdi, [rdi]
	jmp	.label_500
.label_495:
	mov	rax, qword ptr [rbp - 0x500]
	nop	
	cmp	qword ptr [rax + 8], 0
	jge	.label_940
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x500]
	mov	rsp, rsp
	movabs	rcx, 0x7fffffffffffffff
	add	rcx, qword ptr [rax + 8]
	cmp	rcx, 0
	mov	rsp, rsp
	jl	.label_218
	lea	rsi, [rsi]
	jmp	.label_278
.label_940:
	lea	rdi, [rdi]
	xor	eax, eax
	mov	ecx, eax
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x500]
	movabs	rsi, 0x8000000000000000
	mov	rbp, rbp
	add	rsi, qword ptr [rdx + 8]
	mov	rbp, rbp
	cmp	rcx, rsi
	lea	rsi, [rsi]
	jl	.label_218
	nop	
	jmp	.label_278
.label_500:
	mov	rsp, rsp
	xor	eax, eax
	mov	cl, al
	mov	rbp, rbp
	test	cl, 1
	jne	.label_538
	jmp	.label_547
.label_538:
	mov	al, 1
	mov	rbp, rbp
	test	al, 1
	jne	.label_218
	nop	
	jmp	.label_278
.label_547:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x500]
	lea	rsi, [rsi]
	cmp	qword ptr [rax + 8], 0
	mov	rbp, rbp
	jge	.label_468
	mov	rsp, rsp
	xor	eax, eax
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x500]
	sub	rcx, qword ptr [rdx + 8]
	mov	rbp, rbp
	cmp	rcx, 0
	jle	.label_218
	jmp	.label_278
.label_468:
	xor	eax, eax
	mov	ecx, eax
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x500]
	cmp	rcx, qword ptr [rdx + 8]
	jl	.label_218
.label_278:
	lea	rdi, [rdi]
	movabs	rax, 0x8000000000000000
	xor	ecx, ecx
	mov	rsp, rsp
	mov	edx, ecx
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x500]
	sub	rdx, qword ptr [rsi + 8]
	lea	rsi, [rsi]
	cmp	rdx, rax
	lea	rdi, [rdi]
	jl	.label_218
	movabs	rax, 0x7fffffffffffffff
	xor	ecx, ecx
	mov	edx, ecx
	mov	rsi, qword ptr [rbp - 0x500]
	lea	rdi, [rdi]
	sub	rdx, qword ptr [rsi + 8]
	cmp	rax, rdx
	jge	.label_463
.label_218:
	lea	rsi, [rsi]
	mov	al, 1
	xor	ecx, ecx
	mov	edx, ecx
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x500]
	mov	rsp, rsp
	sub	rdx, qword ptr [rsi + 8]
	mov	rsi, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	qword ptr [rsi + 0x28], rdx
	lea	rdi, [rdi]
	test	al, 1
	lea	rdi, [rdi]
	jne	.label_148
	jmp	.label_199
.label_463:
	xor	eax, eax
	mov	rbp, rbp
	mov	cl, al
	xor	eax, eax
	mov	edx, eax
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x500]
	sub	rdx, qword ptr [rsi + 8]
	mov	rsi, qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	qword ptr [rsi + 0x28], rdx
	test	cl, 1
	mov	rsp, rsp
	jne	.label_148
	mov	rsp, rsp
	jmp	.label_199
.label_913:
	mov	rbp, rbp
	mov	al, 1
	test	al, 1
	lea	rsi, [rsi]
	jne	.label_620
	lea	rdi, [rdi]
	jmp	.label_625
.label_620:
	mov	rax, qword ptr [rbp - 0x500]
	mov	rbp, rbp
	cmp	qword ptr [rax + 8], 0
	jge	.label_669
	mov	rax, qword ptr [rbp - 0x500]
	nop	
	movabs	rcx, 0x7fffffffffffffff
	mov	rbp, rbp
	add	rcx, qword ptr [rax + 8]
	cmp	rcx, 0
	jl	.label_664
	jmp	.label_642
.label_669:
	nop	
	xor	eax, eax
	mov	rbp, rbp
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x500]
	lea	rdi, [rdi]
	movabs	rsi, 0x8000000000000000
	lea	rdi, [rdi]
	add	rsi, qword ptr [rdx + 8]
	cmp	rcx, rsi
	jl	.label_664
	lea	rsi, [rsi]
	jmp	.label_642
.label_625:
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	lea	rsi, [rsi]
	jne	.label_651
	lea	rsi, [rsi]
	jmp	.label_644
.label_651:
	nop	
	mov	al, 1
	mov	rbp, rbp
	test	al, 1
	jne	.label_664
	nop	
	jmp	.label_642
.label_644:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x500]
	cmp	qword ptr [rax + 8], 0
	jge	.label_659
	lea	rsi, [rsi]
	xor	eax, eax
	mov	ecx, eax
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x500]
	lea	rdi, [rdi]
	sub	rcx, qword ptr [rdx + 8]
	cmp	rcx, 0
	lea	rdi, [rdi]
	jle	.label_664
	jmp	.label_642
.label_659:
	mov	rsp, rsp
	xor	eax, eax
	lea	rsi, [rsi]
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x500]
	cmp	rcx, qword ptr [rdx + 8]
	lea	rsi, [rsi]
	jl	.label_664
.label_642:
	movabs	rax, 0x8000000000000000
	nop	
	xor	ecx, ecx
	nop	
	mov	edx, ecx
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x500]
	mov	rbp, rbp
	sub	rdx, qword ptr [rsi + 8]
	lea	rdi, [rdi]
	cmp	rdx, rax
	nop	
	jl	.label_664
	movabs	rax, 0x7fffffffffffffff
	mov	rbp, rbp
	xor	ecx, ecx
	lea	rsi, [rsi]
	mov	edx, ecx
	nop	
	mov	rsi, qword ptr [rbp - 0x500]
	sub	rdx, qword ptr [rsi + 8]
	lea	rsi, [rsi]
	cmp	rax, rdx
	mov	rsp, rsp
	jge	.label_687
.label_664:
	mov	rsp, rsp
	mov	al, 1
	mov	rbp, rbp
	xor	ecx, ecx
	nop	
	mov	edx, ecx
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x500]
	lea	rsi, [rsi]
	sub	rdx, qword ptr [rsi + 8]
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	qword ptr [rsi + 0x28], rdx
	mov	rsp, rsp
	test	al, 1
	lea	rdi, [rdi]
	jne	.label_148
	jmp	.label_199
.label_687:
	mov	rbp, rbp
	xor	eax, eax
	mov	rsp, rsp
	mov	cl, al
	lea	rdi, [rdi]
	xor	eax, eax
	mov	edx, eax
	mov	rsi, qword ptr [rbp - 0x500]
	lea	rsi, [rsi]
	sub	rdx, qword ptr [rsi + 8]
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	qword ptr [rsi + 0x28], rdx
	test	cl, 1
	lea	rdi, [rdi]
	jne	.label_148
	lea	rsi, [rsi]
	jmp	.label_199
.label_148:
	lea	rdi, [rdi]
	jmp	.label_177
.label_199:
	mov	rax, qword ptr [rbp - 0x500]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax + 0x10]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 8]
	mov	rbp, rbp
	mov	qword ptr [rcx + 0x30], rax
	mov	rbp, rbp
	jmp	.label_200
.label_5224:
	xor	eax, eax
	mov	cl, al
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x500]
	mov	rdx, qword ptr [rdx - 0x70]
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 8]
	mov	qword ptr [rsi + 0x38], rdx
	test	cl, 1
	mov	rsp, rsp
	jne	.label_737
	mov	rbp, rbp
	jmp	.label_744
.label_737:
	mov	rsp, rsp
	xor	eax, eax
	lea	rsi, [rsi]
	mov	cl, al
	nop	
	test	cl, 1
	jne	.label_748
	lea	rsi, [rsi]
	jmp	.label_755
.label_748:
	lea	rdi, [rdi]
	mov	al, 1
	mov	rsp, rsp
	test	al, 1
	lea	rdi, [rdi]
	jne	.label_756
	jmp	.label_763
.label_756:
	mov	rax, qword ptr [rbp - 0x500]
	mov	rax, qword ptr [rax - 0x30]
	lea	rdi, [rdi]
	mov	cl, al
	mov	rsp, rsp
	movsx	edx, cl
	cmp	edx, 0
	jge	.label_766
	nop	
	mov	rax, qword ptr [rbp - 0x500]
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
	jl	.label_780
	jmp	.label_738
.label_766:
	mov	rbp, rbp
	xor	eax, eax
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x500]
	mov	rcx, qword ptr [rcx - 0x30]
	mov	dl, cl
	nop	
	movsx	esi, dl
	add	esi, 0x80000000
	nop	
	cmp	eax, esi
	jl	.label_780
	jmp	.label_738
.label_763:
	mov	rbp, rbp
	xor	eax, eax
	mov	cl, al
	mov	rbp, rbp
	test	cl, 1
	nop	
	jne	.label_793
	mov	rbp, rbp
	jmp	.label_800
.label_793:
	mov	al, 1
	nop	
	test	al, 1
	jne	.label_780
	jmp	.label_738
.label_800:
	mov	rax, qword ptr [rbp - 0x500]
	nop	
	mov	rax, qword ptr [rax - 0x30]
	nop	
	mov	cl, al
	movsx	edx, cl
	mov	rsp, rsp
	cmp	edx, 0
	jge	.label_803
	nop	
	xor	eax, eax
	nop	
	mov	rcx, qword ptr [rbp - 0x500]
	nop	
	mov	rcx, qword ptr [rcx - 0x30]
	mov	dl, cl
	movsx	esi, dl
	sub	eax, esi
	lea	rsi, [rsi]
	cmp	eax, 0
	jle	.label_780
	mov	rbp, rbp
	jmp	.label_738
.label_803:
	mov	rsp, rsp
	xor	eax, eax
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x500]
	mov	rcx, qword ptr [rcx - 0x30]
	mov	dl, cl
	movsx	esi, dl
	lea	rsi, [rsi]
	cmp	eax, esi
	jl	.label_780
.label_738:
	xor	eax, eax
	mov	rcx, qword ptr [rbp - 0x500]
	mov	rcx, qword ptr [rcx - 0x30]
	mov	dl, cl
	lea	rdi, [rdi]
	movsx	esi, dl
	sub	eax, esi
	lea	rdi, [rdi]
	cmp	eax, -0x80
	mov	rbp, rbp
	jl	.label_780
	nop	
	mov	eax, 0x7f
	xor	ecx, ecx
	mov	rdx, qword ptr [rbp - 0x500]
	mov	rdx, qword ptr [rdx - 0x30]
	mov	sil, dl
	movsx	edi, sil
	sub	ecx, edi
	nop	
	cmp	eax, ecx
	jge	.label_999
.label_780:
	mov	al, 1
	xor	ecx, ecx
	mov	rdx, qword ptr [rbp - 0x500]
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
	mov	r8, qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	qword ptr [r8 + 0x40], rdx
	test	al, 1
	nop	
	jne	.label_191
	lea	rsi, [rsi]
	jmp	.label_210
.label_999:
	lea	rdi, [rdi]
	xor	eax, eax
	mov	cl, al
	xor	eax, eax
	nop	
	mov	rdx, qword ptr [rbp - 0x500]
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
	mov	r8, qword ptr [rbp - 8]
	mov	qword ptr [r8 + 0x40], rdx
	test	cl, 1
	lea	rdi, [rdi]
	jne	.label_191
	nop	
	jmp	.label_210
.label_755:
	lea	rdi, [rdi]
	mov	al, 1
	test	al, 1
	jne	.label_869
	jmp	.label_875
.label_869:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x500]
	nop	
	cmp	qword ptr [rax - 0x30], 0
	lea	rsi, [rsi]
	jge	.label_878
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x500]
	movabs	rcx, 0x7fffffffffffffff
	lea	rdi, [rdi]
	add	rcx, qword ptr [rax - 0x30]
	cmp	rcx, 0
	nop	
	jl	.label_415
	lea	rsi, [rsi]
	jmp	.label_894
.label_878:
	xor	eax, eax
	mov	rsp, rsp
	mov	ecx, eax
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x500]
	lea	rsi, [rsi]
	movabs	rsi, 0x8000000000000000
	add	rsi, qword ptr [rdx - 0x30]
	cmp	rcx, rsi
	jl	.label_415
	jmp	.label_894
.label_875:
	xor	eax, eax
	lea	rdi, [rdi]
	mov	cl, al
	mov	rbp, rbp
	test	cl, 1
	jne	.label_497
	jmp	.label_909
.label_497:
	mov	al, 1
	test	al, 1
	lea	rdi, [rdi]
	jne	.label_415
	mov	rsp, rsp
	jmp	.label_894
.label_909:
	mov	rax, qword ptr [rbp - 0x500]
	cmp	qword ptr [rax - 0x30], 0
	jge	.label_914
	lea	rdi, [rdi]
	xor	eax, eax
	mov	rbp, rbp
	mov	ecx, eax
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x500]
	sub	rcx, qword ptr [rdx - 0x30]
	nop	
	cmp	rcx, 0
	mov	rsp, rsp
	jle	.label_415
	jmp	.label_894
.label_914:
	xor	eax, eax
	mov	ecx, eax
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x500]
	nop	
	cmp	rcx, qword ptr [rdx - 0x30]
	lea	rsi, [rsi]
	jl	.label_415
.label_894:
	xor	eax, eax
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x500]
	sub	rcx, qword ptr [rdx - 0x30]
	cmp	rcx, -0x80
	lea	rdi, [rdi]
	jl	.label_415
	lea	rdi, [rdi]
	mov	eax, 0x7f
	lea	rsi, [rsi]
	mov	ecx, eax
	mov	rsp, rsp
	xor	eax, eax
	mov	edx, eax
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x500]
	sub	rdx, qword ptr [rsi - 0x30]
	mov	rbp, rbp
	cmp	rcx, rdx
	lea	rdi, [rdi]
	jge	.label_930
.label_415:
	mov	al, 1
	lea	rsi, [rsi]
	xor	ecx, ecx
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x500]
	nop	
	mov	rdx, qword ptr [rdx - 0x30]
	mov	rsp, rsp
	mov	esi, edx
	sub	ecx, esi
	mov	dil, cl
	lea	rdi, [rdi]
	movsx	rdx, dil
	mov	rsp, rsp
	mov	r8, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	qword ptr [r8 + 0x40], rdx
	mov	rbp, rbp
	test	al, 1
	jne	.label_191
	jmp	.label_210
.label_930:
	lea	rsi, [rsi]
	xor	eax, eax
	mov	cl, al
	xor	eax, eax
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x500]
	mov	rdx, qword ptr [rdx - 0x30]
	mov	esi, edx
	lea	rsi, [rsi]
	sub	eax, esi
	lea	rsi, [rsi]
	mov	dil, al
	mov	rbp, rbp
	movsx	rdx, dil
	mov	rsp, rsp
	mov	r8, qword ptr [rbp - 8]
	mov	rbp, rbp
	mov	qword ptr [r8 + 0x40], rdx
	test	cl, 1
	jne	.label_191
	mov	rsp, rsp
	jmp	.label_210
.label_744:
	nop	
	xor	eax, eax
	mov	rsp, rsp
	mov	cl, al
	test	cl, 1
	lea	rdi, [rdi]
	jne	.label_975
	jmp	.label_983
.label_975:
	mov	rbp, rbp
	xor	eax, eax
	mov	rsp, rsp
	mov	cl, al
	lea	rdi, [rdi]
	test	cl, 1
	jne	.label_987
	mov	rbp, rbp
	jmp	.label_993
.label_987:
	mov	al, 1
	mov	rsp, rsp
	test	al, 1
	nop	
	jne	.label_995
	mov	rbp, rbp
	jmp	.label_1146
.label_995:
	mov	rax, qword ptr [rbp - 0x500]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax - 0x30]
	mov	cx, ax
	movsx	edx, cx
	cmp	edx, 0
	jge	.label_998
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x500]
	mov	rsp, rsp
	mov	rax, qword ptr [rax - 0x30]
	mov	cx, ax
	movsx	edx, cx
	lea	rsi, [rsi]
	add	edx, 0x7fffffff
	cmp	edx, 0
	jl	.label_1002
	nop	
	jmp	.label_703
.label_998:
	xor	eax, eax
	mov	rcx, qword ptr [rbp - 0x500]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rcx - 0x30]
	mov	dx, cx
	mov	rsp, rsp
	movsx	esi, dx
	add	esi, 0x80000000
	cmp	eax, esi
	jl	.label_1002
	mov	rbp, rbp
	jmp	.label_703
.label_1146:
	lea	rdi, [rdi]
	xor	eax, eax
	mov	rbp, rbp
	mov	cl, al
	test	cl, 1
	nop	
	jne	.label_1023
	lea	rsi, [rsi]
	jmp	.label_1027
.label_1023:
	mov	rbp, rbp
	mov	al, 1
	mov	rsp, rsp
	test	al, 1
	lea	rsi, [rsi]
	jne	.label_1002
	jmp	.label_703
.label_1027:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x500]
	mov	rax, qword ptr [rax - 0x30]
	lea	rsi, [rsi]
	mov	cx, ax
	movsx	edx, cx
	mov	rsp, rsp
	cmp	edx, 0
	jge	.label_378
	mov	rbp, rbp
	xor	eax, eax
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x500]
	mov	rcx, qword ptr [rcx - 0x30]
	mov	dx, cx
	movsx	esi, dx
	sub	eax, esi
	cmp	eax, 0
	jle	.label_1002
	jmp	.label_703
.label_378:
	mov	rsp, rsp
	xor	eax, eax
	mov	rcx, qword ptr [rbp - 0x500]
	mov	rcx, qword ptr [rcx - 0x30]
	mov	rsp, rsp
	mov	dx, cx
	lea	rsi, [rsi]
	movsx	esi, dx
	nop	
	cmp	eax, esi
	nop	
	jl	.label_1002
.label_703:
	lea	rsi, [rsi]
	xor	eax, eax
	mov	rcx, qword ptr [rbp - 0x500]
	nop	
	mov	rcx, qword ptr [rcx - 0x30]
	mov	dx, cx
	movsx	esi, dx
	mov	rsp, rsp
	sub	eax, esi
	cmp	eax, 0xffff8000
	jl	.label_1002
	mov	eax, 0x7fff
	xor	ecx, ecx
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x500]
	mov	rbp, rbp
	mov	rdx, qword ptr [rdx - 0x30]
	mov	si, dx
	movsx	edi, si
	sub	ecx, edi
	nop	
	cmp	eax, ecx
	jge	.label_1063
.label_1002:
	mov	rsp, rsp
	mov	al, 1
	mov	rbp, rbp
	xor	ecx, ecx
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x500]
	mov	rdx, qword ptr [rdx - 0x30]
	mov	si, dx
	nop	
	movsx	edi, si
	sub	ecx, edi
	mov	rbp, rbp
	mov	si, cx
	nop	
	movsx	rdx, si
	mov	r8, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	mov	qword ptr [r8 + 0x40], rdx
	mov	rsp, rsp
	test	al, 1
	jne	.label_191
	jmp	.label_210
.label_1063:
	xor	eax, eax
	mov	cl, al
	nop	
	xor	eax, eax
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x500]
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
	mov	r8, qword ptr [rbp - 8]
	mov	qword ptr [r8 + 0x40], rdx
	test	cl, 1
	nop	
	jne	.label_191
	jmp	.label_210
.label_993:
	lea	rdi, [rdi]
	mov	al, 1
	lea	rsi, [rsi]
	test	al, 1
	mov	rsp, rsp
	jne	.label_1100
	jmp	.label_831
.label_1100:
	mov	rax, qword ptr [rbp - 0x500]
	cmp	qword ptr [rax - 0x30], 0
	jge	.label_1110
	mov	rax, qword ptr [rbp - 0x500]
	movabs	rcx, 0x7fffffffffffffff
	add	rcx, qword ptr [rax - 0x30]
	lea	rdi, [rdi]
	cmp	rcx, 0
	nop	
	jl	.label_136
	mov	rsp, rsp
	jmp	.label_1125
.label_1110:
	lea	rsi, [rsi]
	xor	eax, eax
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x500]
	movabs	rsi, 0x8000000000000000
	mov	rbp, rbp
	add	rsi, qword ptr [rdx - 0x30]
	cmp	rcx, rsi
	mov	rsp, rsp
	jl	.label_136
	jmp	.label_1125
.label_831:
	lea	rdi, [rdi]
	xor	eax, eax
	mov	rsp, rsp
	mov	cl, al
	mov	rsp, rsp
	test	cl, 1
	jne	.label_1029
	jmp	.label_1059
.label_1029:
	mov	al, 1
	lea	rsi, [rsi]
	test	al, 1
	jne	.label_136
	jmp	.label_1125
.label_1059:
	nop	
	mov	rax, qword ptr [rbp - 0x500]
	cmp	qword ptr [rax - 0x30], 0
	mov	rbp, rbp
	jge	.label_1143
	xor	eax, eax
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x500]
	sub	rcx, qword ptr [rdx - 0x30]
	cmp	rcx, 0
	nop	
	jle	.label_136
	nop	
	jmp	.label_1125
.label_1143:
	lea	rsi, [rsi]
	xor	eax, eax
	nop	
	mov	ecx, eax
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x500]
	lea	rdi, [rdi]
	cmp	rcx, qword ptr [rdx - 0x30]
	mov	rbp, rbp
	jl	.label_136
.label_1125:
	xor	eax, eax
	mov	ecx, eax
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x500]
	lea	rsi, [rsi]
	sub	rcx, qword ptr [rdx - 0x30]
	mov	rbp, rbp
	cmp	rcx, -0x8000
	jl	.label_136
	mov	rsp, rsp
	mov	eax, 0x7fff
	mov	rbp, rbp
	mov	ecx, eax
	lea	rdi, [rdi]
	xor	eax, eax
	mov	rbp, rbp
	mov	edx, eax
	nop	
	mov	rsi, qword ptr [rbp - 0x500]
	mov	rbp, rbp
	sub	rdx, qword ptr [rsi - 0x30]
	mov	rsp, rsp
	cmp	rcx, rdx
	jge	.label_173
.label_136:
	mov	al, 1
	xor	ecx, ecx
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x500]
	mov	rdx, qword ptr [rdx - 0x30]
	mov	esi, edx
	sub	ecx, esi
	lea	rsi, [rsi]
	mov	di, cx
	movsx	rdx, di
	lea	rsi, [rsi]
	mov	r8, qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	qword ptr [r8 + 0x40], rdx
	lea	rdi, [rdi]
	test	al, 1
	jne	.label_191
	lea	rdi, [rdi]
	jmp	.label_210
.label_173:
	lea	rsi, [rsi]
	xor	eax, eax
	nop	
	mov	cl, al
	lea	rsi, [rsi]
	xor	eax, eax
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x500]
	mov	rdx, qword ptr [rdx - 0x30]
	mov	esi, edx
	sub	eax, esi
	mov	di, ax
	movsx	rdx, di
	mov	r8, qword ptr [rbp - 8]
	mov	qword ptr [r8 + 0x40], rdx
	lea	rdi, [rdi]
	test	cl, 1
	jne	.label_191
	lea	rsi, [rsi]
	jmp	.label_210
.label_983:
	xor	eax, eax
	mov	rsp, rsp
	mov	cl, al
	mov	rbp, rbp
	test	cl, 1
	jne	.label_241
	mov	rsp, rsp
	jmp	.label_247
.label_241:
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	lea	rdi, [rdi]
	jne	.label_251
	mov	rbp, rbp
	jmp	.label_662
.label_251:
	mov	rsp, rsp
	mov	al, 1
	lea	rdi, [rdi]
	test	al, 1
	jne	.label_258
	jmp	.label_262
.label_258:
	mov	rax, qword ptr [rbp - 0x500]
	mov	rsp, rsp
	mov	rax, qword ptr [rax - 0x30]
	lea	rdi, [rdi]
	mov	ecx, eax
	lea	rsi, [rsi]
	cmp	ecx, 0
	jge	.label_263
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x500]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax - 0x30]
	mov	ecx, eax
	add	ecx, 0x7fffffff
	cmp	ecx, 0
	nop	
	jl	.label_284
	jmp	.label_282
.label_263:
	nop	
	xor	eax, eax
	mov	rcx, qword ptr [rbp - 0x500]
	nop	
	mov	rcx, qword ptr [rcx - 0x30]
	lea	rsi, [rsi]
	mov	edx, ecx
	nop	
	add	edx, 0x80000000
	lea	rdi, [rdi]
	cmp	eax, edx
	jl	.label_284
	jmp	.label_282
.label_262:
	xor	eax, eax
	mov	rbp, rbp
	mov	cl, al
	mov	rsp, rsp
	test	cl, 1
	nop	
	jne	.label_292
	jmp	.label_866
.label_292:
	nop	
	mov	al, 1
	nop	
	test	al, 1
	lea	rdi, [rdi]
	jne	.label_284
	jmp	.label_282
.label_866:
	mov	rax, qword ptr [rbp - 0x500]
	mov	rax, qword ptr [rax - 0x30]
	lea	rdi, [rdi]
	mov	ecx, eax
	lea	rdi, [rdi]
	cmp	ecx, 0
	mov	rsp, rsp
	jge	.label_306
	lea	rsi, [rsi]
	xor	eax, eax
	mov	rcx, qword ptr [rbp - 0x500]
	nop	
	mov	rcx, qword ptr [rcx - 0x30]
	lea	rdi, [rdi]
	mov	edx, ecx
	sub	eax, edx
	lea	rdi, [rdi]
	cmp	eax, 0
	nop	
	jle	.label_284
	lea	rsi, [rsi]
	jmp	.label_282
.label_306:
	lea	rsi, [rsi]
	xor	eax, eax
	mov	rcx, qword ptr [rbp - 0x500]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rcx - 0x30]
	nop	
	mov	edx, ecx
	mov	rsp, rsp
	cmp	eax, edx
	jl	.label_284
.label_282:
	mov	rsp, rsp
	xor	eax, eax
	mov	rcx, qword ptr [rbp - 0x500]
	nop	
	mov	rcx, qword ptr [rcx - 0x30]
	mov	edx, ecx
	sub	eax, edx
	lea	rdi, [rdi]
	cmp	eax, 0x80000000
	jl	.label_284
	mov	eax, 0x7fffffff
	xor	ecx, ecx
	mov	rdx, qword ptr [rbp - 0x500]
	nop	
	mov	rdx, qword ptr [rdx - 0x30]
	mov	esi, edx
	sub	ecx, esi
	cmp	eax, ecx
	nop	
	jge	.label_346
.label_284:
	lea	rsi, [rsi]
	mov	al, 1
	xor	ecx, ecx
	mov	rdx, qword ptr [rbp - 0x500]
	mov	rsp, rsp
	mov	rdx, qword ptr [rdx - 0x30]
	mov	esi, edx
	sub	ecx, esi
	movsxd	rdx, ecx
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 8]
	mov	qword ptr [rdi + 0x40], rdx
	test	al, 1
	mov	rsp, rsp
	jne	.label_191
	jmp	.label_210
.label_346:
	xor	eax, eax
	lea	rsi, [rsi]
	mov	cl, al
	xor	eax, eax
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x500]
	mov	rsp, rsp
	mov	rdx, qword ptr [rdx - 0x30]
	mov	esi, edx
	mov	rsp, rsp
	sub	eax, esi
	mov	rbp, rbp
	movsxd	rdx, eax
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	mov	qword ptr [rdi + 0x40], rdx
	nop	
	test	cl, 1
	mov	rsp, rsp
	jne	.label_191
	lea	rsi, [rsi]
	jmp	.label_210
.label_662:
	mov	al, 1
	test	al, 1
	jne	.label_388
	mov	rbp, rbp
	jmp	.label_390
.label_388:
	mov	rax, qword ptr [rbp - 0x500]
	cmp	qword ptr [rax - 0x30], 0
	jge	.label_385
	mov	rax, qword ptr [rbp - 0x500]
	mov	rsp, rsp
	movabs	rcx, 0x7fffffffffffffff
	add	rcx, qword ptr [rax - 0x30]
	mov	rbp, rbp
	cmp	rcx, 0
	jl	.label_400
	jmp	.label_408
.label_385:
	xor	eax, eax
	mov	ecx, eax
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x500]
	mov	rbp, rbp
	movabs	rsi, 0x8000000000000000
	nop	
	add	rsi, qword ptr [rdx - 0x30]
	mov	rbp, rbp
	cmp	rcx, rsi
	jl	.label_400
	lea	rsi, [rsi]
	jmp	.label_408
.label_390:
	lea	rsi, [rsi]
	xor	eax, eax
	mov	cl, al
	mov	rbp, rbp
	test	cl, 1
	mov	rbp, rbp
	jne	.label_418
	mov	rbp, rbp
	jmp	.label_427
.label_418:
	lea	rsi, [rsi]
	mov	al, 1
	lea	rsi, [rsi]
	test	al, 1
	lea	rsi, [rsi]
	jne	.label_400
	lea	rdi, [rdi]
	jmp	.label_408
.label_427:
	nop	
	mov	rax, qword ptr [rbp - 0x500]
	mov	rsp, rsp
	cmp	qword ptr [rax - 0x30], 0
	jge	.label_649
	lea	rsi, [rsi]
	xor	eax, eax
	lea	rdi, [rdi]
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x500]
	sub	rcx, qword ptr [rdx - 0x30]
	lea	rdi, [rdi]
	cmp	rcx, 0
	nop	
	jle	.label_400
	mov	rsp, rsp
	jmp	.label_408
.label_649:
	mov	rsp, rsp
	xor	eax, eax
	mov	rbp, rbp
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x500]
	nop	
	cmp	rcx, qword ptr [rdx - 0x30]
	mov	rsp, rsp
	jl	.label_400
.label_408:
	lea	rsi, [rsi]
	xor	eax, eax
	mov	rbp, rbp
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x500]
	lea	rsi, [rsi]
	sub	rcx, qword ptr [rdx - 0x30]
	cmp	rcx, -0x80000000
	mov	rsp, rsp
	jl	.label_400
	lea	rsi, [rsi]
	mov	eax, 0x7fffffff
	mov	ecx, eax
	lea	rdi, [rdi]
	xor	eax, eax
	mov	edx, eax
	mov	rsi, qword ptr [rbp - 0x500]
	sub	rdx, qword ptr [rsi - 0x30]
	cmp	rcx, rdx
	lea	rsi, [rsi]
	jge	.label_469
.label_400:
	mov	al, 1
	mov	rbp, rbp
	xor	ecx, ecx
	mov	rdx, qword ptr [rbp - 0x500]
	mov	rsp, rsp
	mov	rdx, qword ptr [rdx - 0x30]
	mov	esi, edx
	mov	rsp, rsp
	sub	ecx, esi
	mov	rbp, rbp
	movsxd	rdx, ecx
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	qword ptr [rdi + 0x40], rdx
	nop	
	test	al, 1
	nop	
	jne	.label_191
	nop	
	jmp	.label_210
.label_469:
	xor	eax, eax
	mov	cl, al
	xor	eax, eax
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x500]
	mov	rsp, rsp
	mov	rdx, qword ptr [rdx - 0x30]
	mov	esi, edx
	sub	eax, esi
	nop	
	movsxd	rdx, eax
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 8]
	mov	qword ptr [rdi + 0x40], rdx
	lea	rdi, [rdi]
	test	cl, 1
	nop	
	jne	.label_191
	jmp	.label_210
.label_247:
	lea	rsi, [rsi]
	mov	al, 1
	test	al, 1
	mov	rsp, rsp
	jne	.label_519
	jmp	.label_526
.label_519:
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_528
	jmp	.label_533
.label_528:
	mov	al, 1
	nop	
	test	al, 1
	nop	
	jne	.label_534
	lea	rdi, [rdi]
	jmp	.label_1109
.label_534:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x500]
	mov	rsp, rsp
	cmp	qword ptr [rax - 0x30], 0
	jge	.label_545
	mov	rax, qword ptr [rbp - 0x500]
	lea	rdi, [rdi]
	movabs	rcx, 0x7fffffffffffffff
	lea	rsi, [rsi]
	add	rcx, qword ptr [rax - 0x30]
	lea	rsi, [rsi]
	cmp	rcx, 0
	jl	.label_550
	lea	rdi, [rdi]
	jmp	.label_557
.label_545:
	lea	rdi, [rdi]
	xor	eax, eax
	mov	rbp, rbp
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x500]
	lea	rdi, [rdi]
	movabs	rsi, 0x8000000000000000
	mov	rsp, rsp
	add	rsi, qword ptr [rdx - 0x30]
	lea	rdi, [rdi]
	cmp	rcx, rsi
	jl	.label_550
	mov	rsp, rsp
	jmp	.label_557
.label_1109:
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_569
	jmp	.label_573
.label_569:
	mov	al, 1
	mov	rbp, rbp
	test	al, 1
	lea	rdi, [rdi]
	jne	.label_550
	jmp	.label_557
.label_573:
	nop	
	mov	rax, qword ptr [rbp - 0x500]
	cmp	qword ptr [rax - 0x30], 0
	jge	.label_582
	xor	eax, eax
	mov	rsp, rsp
	mov	ecx, eax
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x500]
	sub	rcx, qword ptr [rdx - 0x30]
	mov	rbp, rbp
	cmp	rcx, 0
	jle	.label_550
	mov	rbp, rbp
	jmp	.label_557
.label_582:
	nop	
	xor	eax, eax
	mov	rbp, rbp
	mov	ecx, eax
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x500]
	cmp	rcx, qword ptr [rdx - 0x30]
	jl	.label_550
.label_557:
	mov	rsp, rsp
	movabs	rax, 0x8000000000000000
	xor	ecx, ecx
	mov	edx, ecx
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x500]
	sub	rdx, qword ptr [rsi - 0x30]
	cmp	rdx, rax
	lea	rdi, [rdi]
	jl	.label_550
	movabs	rax, 0x7fffffffffffffff
	xor	ecx, ecx
	nop	
	mov	edx, ecx
	mov	rsi, qword ptr [rbp - 0x500]
	sub	rdx, qword ptr [rsi - 0x30]
	lea	rdi, [rdi]
	cmp	rax, rdx
	jge	.label_461
.label_550:
	mov	rsp, rsp
	mov	al, 1
	xor	ecx, ecx
	lea	rdi, [rdi]
	mov	edx, ecx
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x500]
	sub	rdx, qword ptr [rsi - 0x30]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 8]
	mov	rbp, rbp
	mov	qword ptr [rsi + 0x40], rdx
	nop	
	test	al, 1
	mov	rsp, rsp
	jne	.label_191
	lea	rsi, [rsi]
	jmp	.label_210
.label_461:
	lea	rsi, [rsi]
	xor	eax, eax
	mov	rsp, rsp
	mov	cl, al
	xor	eax, eax
	mov	edx, eax
	mov	rsi, qword ptr [rbp - 0x500]
	nop	
	sub	rdx, qword ptr [rsi - 0x30]
	mov	rsi, qword ptr [rbp - 8]
	mov	qword ptr [rsi + 0x40], rdx
	lea	rdi, [rdi]
	test	cl, 1
	lea	rdi, [rdi]
	jne	.label_191
	lea	rdi, [rdi]
	jmp	.label_210
.label_533:
	nop	
	mov	al, 1
	nop	
	test	al, 1
	lea	rdi, [rdi]
	jne	.label_652
	jmp	.label_655
.label_652:
	mov	rax, qword ptr [rbp - 0x500]
	mov	rsp, rsp
	cmp	qword ptr [rax - 0x30], 0
	lea	rsi, [rsi]
	jge	.label_656
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x500]
	movabs	rcx, 0x7fffffffffffffff
	add	rcx, qword ptr [rax - 0x30]
	cmp	rcx, 0
	lea	rsi, [rsi]
	jl	.label_180
	mov	rsp, rsp
	jmp	.label_667
.label_656:
	xor	eax, eax
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x500]
	mov	rsp, rsp
	movabs	rsi, 0x8000000000000000
	add	rsi, qword ptr [rdx - 0x30]
	cmp	rcx, rsi
	jl	.label_180
	lea	rsi, [rsi]
	jmp	.label_667
.label_655:
	mov	rbp, rbp
	xor	eax, eax
	lea	rsi, [rsi]
	mov	cl, al
	mov	rbp, rbp
	test	cl, 1
	jne	.label_677
	lea	rsi, [rsi]
	jmp	.label_683
.label_677:
	nop	
	mov	al, 1
	lea	rdi, [rdi]
	test	al, 1
	mov	rsp, rsp
	jne	.label_180
	jmp	.label_667
.label_683:
	mov	rax, qword ptr [rbp - 0x500]
	cmp	qword ptr [rax - 0x30], 0
	jge	.label_689
	lea	rdi, [rdi]
	xor	eax, eax
	mov	rsp, rsp
	mov	ecx, eax
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x500]
	sub	rcx, qword ptr [rdx - 0x30]
	mov	rsp, rsp
	cmp	rcx, 0
	jle	.label_180
	jmp	.label_667
.label_689:
	lea	rdi, [rdi]
	xor	eax, eax
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x500]
	cmp	rcx, qword ptr [rdx - 0x30]
	jl	.label_180
.label_667:
	mov	rsp, rsp
	movabs	rax, 0x8000000000000000
	mov	rsp, rsp
	xor	ecx, ecx
	mov	rsp, rsp
	mov	edx, ecx
	mov	rsi, qword ptr [rbp - 0x500]
	lea	rdi, [rdi]
	sub	rdx, qword ptr [rsi - 0x30]
	mov	rsp, rsp
	cmp	rdx, rax
	jl	.label_180
	mov	rbp, rbp
	movabs	rax, 0x7fffffffffffffff
	xor	ecx, ecx
	mov	edx, ecx
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x500]
	sub	rdx, qword ptr [rsi - 0x30]
	cmp	rax, rdx
	lea	rdi, [rdi]
	jge	.label_715
.label_180:
	mov	al, 1
	mov	rsp, rsp
	xor	ecx, ecx
	mov	edx, ecx
	nop	
	mov	rsi, qword ptr [rbp - 0x500]
	sub	rdx, qword ptr [rsi - 0x30]
	mov	rsi, qword ptr [rbp - 8]
	mov	qword ptr [rsi + 0x40], rdx
	lea	rdi, [rdi]
	test	al, 1
	mov	rsp, rsp
	jne	.label_191
	mov	rsp, rsp
	jmp	.label_210
.label_715:
	xor	eax, eax
	mov	cl, al
	mov	rbp, rbp
	xor	eax, eax
	mov	edx, eax
	mov	rsi, qword ptr [rbp - 0x500]
	lea	rdi, [rdi]
	sub	rdx, qword ptr [rsi - 0x30]
	mov	rsi, qword ptr [rbp - 8]
	mov	rbp, rbp
	mov	qword ptr [rsi + 0x40], rdx
	mov	rbp, rbp
	test	cl, 1
	mov	rsp, rsp
	jne	.label_191
	jmp	.label_210
.label_526:
	xor	eax, eax
	mov	rsp, rsp
	mov	cl, al
	test	cl, 1
	jne	.label_754
	jmp	.label_1122
.label_754:
	mov	al, 1
	test	al, 1
	lea	rdi, [rdi]
	jne	.label_761
	jmp	.label_767
.label_761:
	mov	rax, qword ptr [rbp - 0x500]
	cmp	qword ptr [rax - 0x30], 0
	jge	.label_770
	mov	rax, qword ptr [rbp - 0x500]
	movabs	rcx, 0x7fffffffffffffff
	add	rcx, qword ptr [rax - 0x30]
	mov	rbp, rbp
	cmp	rcx, 0
	jl	.label_666
	jmp	.label_723
.label_770:
	xor	eax, eax
	mov	rbp, rbp
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x500]
	mov	rsp, rsp
	movabs	rsi, 0x8000000000000000
	add	rsi, qword ptr [rdx - 0x30]
	lea	rsi, [rsi]
	cmp	rcx, rsi
	mov	rsp, rsp
	jl	.label_666
	nop	
	jmp	.label_723
.label_767:
	lea	rdi, [rdi]
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	mov	rbp, rbp
	jne	.label_790
	mov	rbp, rbp
	jmp	.label_796
.label_790:
	mov	al, 1
	lea	rsi, [rsi]
	test	al, 1
	lea	rsi, [rsi]
	jne	.label_666
	nop	
	jmp	.label_723
.label_796:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x500]
	cmp	qword ptr [rax - 0x30], 0
	lea	rdi, [rdi]
	jge	.label_805
	mov	rsp, rsp
	xor	eax, eax
	mov	ecx, eax
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x500]
	sub	rcx, qword ptr [rdx - 0x30]
	mov	rsp, rsp
	cmp	rcx, 0
	nop	
	jle	.label_666
	jmp	.label_723
.label_805:
	xor	eax, eax
	lea	rsi, [rsi]
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x500]
	cmp	rcx, qword ptr [rdx - 0x30]
	mov	rbp, rbp
	jl	.label_666
.label_723:
	mov	rsp, rsp
	movabs	rax, 0x8000000000000000
	xor	ecx, ecx
	mov	edx, ecx
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x500]
	lea	rsi, [rsi]
	sub	rdx, qword ptr [rsi - 0x30]
	cmp	rdx, rax
	jl	.label_666
	nop	
	movabs	rax, 0x7fffffffffffffff
	xor	ecx, ecx
	mov	edx, ecx
	mov	rsi, qword ptr [rbp - 0x500]
	nop	
	sub	rdx, qword ptr [rsi - 0x30]
	lea	rsi, [rsi]
	cmp	rax, rdx
	lea	rdi, [rdi]
	jge	.label_972
.label_666:
	lea	rdi, [rdi]
	mov	al, 1
	nop	
	xor	ecx, ecx
	mov	edx, ecx
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x500]
	lea	rsi, [rsi]
	sub	rdx, qword ptr [rsi - 0x30]
	nop	
	mov	rsi, qword ptr [rbp - 8]
	mov	qword ptr [rsi + 0x40], rdx
	mov	rbp, rbp
	test	al, 1
	jne	.label_191
	lea	rdi, [rdi]
	jmp	.label_210
.label_972:
	lea	rsi, [rsi]
	xor	eax, eax
	mov	rsp, rsp
	mov	cl, al
	lea	rsi, [rsi]
	xor	eax, eax
	mov	edx, eax
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x500]
	sub	rdx, qword ptr [rsi - 0x30]
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 8]
	mov	qword ptr [rsi + 0x40], rdx
	test	cl, 1
	jne	.label_191
	jmp	.label_210
.label_1122:
	mov	rsp, rsp
	mov	al, 1
	test	al, 1
	lea	rdi, [rdi]
	jne	.label_860
	lea	rsi, [rsi]
	jmp	.label_862
.label_860:
	nop	
	mov	rax, qword ptr [rbp - 0x500]
	cmp	qword ptr [rax - 0x30], 0
	mov	rsp, rsp
	jge	.label_234
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x500]
	movabs	rcx, 0x7fffffffffffffff
	mov	rbp, rbp
	add	rcx, qword ptr [rax - 0x30]
	mov	rbp, rbp
	cmp	rcx, 0
	mov	rbp, rbp
	jl	.label_264
	jmp	.label_209
.label_234:
	lea	rsi, [rsi]
	xor	eax, eax
	lea	rsi, [rsi]
	mov	ecx, eax
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x500]
	mov	rbp, rbp
	movabs	rsi, 0x8000000000000000
	add	rsi, qword ptr [rdx - 0x30]
	mov	rbp, rbp
	cmp	rcx, rsi
	jl	.label_264
	mov	rsp, rsp
	jmp	.label_209
.label_862:
	xor	eax, eax
	nop	
	mov	cl, al
	test	cl, 1
	jne	.label_896
	lea	rsi, [rsi]
	jmp	.label_899
.label_896:
	lea	rsi, [rsi]
	mov	al, 1
	test	al, 1
	mov	rbp, rbp
	jne	.label_264
	mov	rsp, rsp
	jmp	.label_209
.label_899:
	mov	rax, qword ptr [rbp - 0x500]
	nop	
	cmp	qword ptr [rax - 0x30], 0
	jge	.label_907
	xor	eax, eax
	mov	ecx, eax
	nop	
	mov	rdx, qword ptr [rbp - 0x500]
	mov	rbp, rbp
	sub	rcx, qword ptr [rdx - 0x30]
	lea	rsi, [rsi]
	cmp	rcx, 0
	lea	rdi, [rdi]
	jle	.label_264
	lea	rdi, [rdi]
	jmp	.label_209
.label_907:
	xor	eax, eax
	lea	rdi, [rdi]
	mov	ecx, eax
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x500]
	lea	rdi, [rdi]
	cmp	rcx, qword ptr [rdx - 0x30]
	jl	.label_264
.label_209:
	movabs	rax, 0x8000000000000000
	mov	rsp, rsp
	xor	ecx, ecx
	mov	rbp, rbp
	mov	edx, ecx
	mov	rsi, qword ptr [rbp - 0x500]
	mov	rbp, rbp
	sub	rdx, qword ptr [rsi - 0x30]
	nop	
	cmp	rdx, rax
	mov	rbp, rbp
	jl	.label_264
	movabs	rax, 0x7fffffffffffffff
	xor	ecx, ecx
	mov	edx, ecx
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x500]
	sub	rdx, qword ptr [rsi - 0x30]
	cmp	rax, rdx
	jge	.label_716
.label_264:
	mov	al, 1
	xor	ecx, ecx
	nop	
	mov	edx, ecx
	mov	rsi, qword ptr [rbp - 0x500]
	sub	rdx, qword ptr [rsi - 0x30]
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 8]
	mov	qword ptr [rsi + 0x40], rdx
	mov	rbp, rbp
	test	al, 1
	jne	.label_191
	mov	rbp, rbp
	jmp	.label_210
.label_716:
	mov	rsp, rsp
	xor	eax, eax
	mov	rsp, rsp
	mov	cl, al
	xor	eax, eax
	nop	
	mov	edx, eax
	mov	rsi, qword ptr [rbp - 0x500]
	lea	rdi, [rdi]
	sub	rdx, qword ptr [rsi - 0x30]
	mov	rsi, qword ptr [rbp - 8]
	mov	qword ptr [rsi + 0x40], rdx
	test	cl, 1
	mov	rsp, rsp
	jne	.label_191
	jmp	.label_210
.label_191:
	nop	
	jmp	.label_177
.label_210:
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	lea	rsi, [rsi]
	jne	.label_955
	mov	rbp, rbp
	jmp	.label_960
.label_955:
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	mov	rsp, rsp
	jne	.label_963
	jmp	.label_969
.label_963:
	nop	
	mov	al, 1
	test	al, 1
	jne	.label_971
	jmp	.label_976
.label_971:
	mov	rax, qword ptr [rbp - 0x500]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax + 8]
	mov	cl, al
	movsx	edx, cl
	cmp	edx, 0
	mov	rbp, rbp
	jge	.label_978
	mov	rax, qword ptr [rbp - 0x500]
	mov	rax, qword ptr [rax + 8]
	lea	rsi, [rsi]
	mov	cl, al
	movsx	edx, cl
	add	edx, 0x7fffffff
	mov	rsp, rsp
	cmp	edx, 0
	mov	rbp, rbp
	jl	.label_374
	jmp	.label_297
.label_978:
	xor	eax, eax
	nop	
	mov	rcx, qword ptr [rbp - 0x500]
	mov	rcx, qword ptr [rcx + 8]
	mov	dl, cl
	nop	
	movsx	esi, dl
	mov	rsp, rsp
	add	esi, 0x80000000
	cmp	eax, esi
	jl	.label_374
	lea	rsi, [rsi]
	jmp	.label_297
.label_976:
	lea	rsi, [rsi]
	xor	eax, eax
	nop	
	mov	cl, al
	nop	
	test	cl, 1
	jne	.label_1004
	lea	rdi, [rdi]
	jmp	.label_1011
.label_1004:
	mov	al, 1
	test	al, 1
	jne	.label_374
	jmp	.label_297
.label_1011:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x500]
	mov	rax, qword ptr [rax + 8]
	mov	rsp, rsp
	mov	cl, al
	movsx	edx, cl
	lea	rdi, [rdi]
	cmp	edx, 0
	lea	rdi, [rdi]
	jge	.label_229
	nop	
	xor	eax, eax
	mov	rcx, qword ptr [rbp - 0x500]
	mov	rcx, qword ptr [rcx + 8]
	mov	dl, cl
	lea	rdi, [rdi]
	movsx	esi, dl
	lea	rsi, [rsi]
	sub	eax, esi
	mov	rbp, rbp
	cmp	eax, 0
	jle	.label_374
	jmp	.label_297
.label_229:
	mov	rsp, rsp
	xor	eax, eax
	mov	rcx, qword ptr [rbp - 0x500]
	mov	rcx, qword ptr [rcx + 8]
	lea	rsi, [rsi]
	mov	dl, cl
	mov	rbp, rbp
	movsx	esi, dl
	lea	rdi, [rdi]
	cmp	eax, esi
	lea	rdi, [rdi]
	jl	.label_374
.label_297:
	nop	
	xor	eax, eax
	mov	rcx, qword ptr [rbp - 0x500]
	mov	rcx, qword ptr [rcx + 8]
	mov	dl, cl
	nop	
	movsx	esi, dl
	mov	rbp, rbp
	sub	eax, esi
	mov	rsp, rsp
	cmp	eax, -0x80
	mov	rbp, rbp
	jl	.label_374
	mov	eax, 0x7f
	lea	rsi, [rsi]
	xor	ecx, ecx
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x500]
	mov	rbp, rbp
	mov	rdx, qword ptr [rdx + 8]
	lea	rsi, [rsi]
	mov	sil, dl
	movsx	edi, sil
	lea	rdi, [rdi]
	sub	ecx, edi
	mov	rsp, rsp
	cmp	eax, ecx
	jge	.label_1046
.label_374:
	mov	al, 1
	lea	rdi, [rdi]
	xor	ecx, ecx
	mov	rdx, qword ptr [rbp - 0x500]
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
	mov	r8, qword ptr [rbp - 8]
	mov	qword ptr [r8 + 0x28], rdx
	test	al, 1
	jne	.label_133
	jmp	.label_163
.label_1046:
	lea	rdi, [rdi]
	xor	eax, eax
	mov	cl, al
	mov	rbp, rbp
	xor	eax, eax
	mov	rdx, qword ptr [rbp - 0x500]
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
	mov	r8, qword ptr [rbp - 8]
	mov	qword ptr [r8 + 0x28], rdx
	test	cl, 1
	lea	rsi, [rsi]
	jne	.label_133
	mov	rsp, rsp
	jmp	.label_163
.label_969:
	nop	
	mov	al, 1
	test	al, 1
	mov	rbp, rbp
	jne	.label_1090
	mov	rbp, rbp
	jmp	.label_1093
.label_1090:
	nop	
	mov	rax, qword ptr [rbp - 0x500]
	cmp	qword ptr [rax + 8], 0
	jge	.label_1095
	mov	rax, qword ptr [rbp - 0x500]
	movabs	rcx, 0x7fffffffffffffff
	mov	rsp, rsp
	add	rcx, qword ptr [rax + 8]
	cmp	rcx, 0
	jl	.label_562
	mov	rbp, rbp
	jmp	.label_893
.label_1095:
	xor	eax, eax
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x500]
	movabs	rsi, 0x8000000000000000
	lea	rsi, [rsi]
	add	rsi, qword ptr [rdx + 8]
	cmp	rcx, rsi
	mov	rbp, rbp
	jl	.label_562
	jmp	.label_893
.label_1093:
	xor	eax, eax
	nop	
	mov	cl, al
	lea	rsi, [rsi]
	test	cl, 1
	lea	rdi, [rdi]
	jne	.label_1123
	jmp	.label_1130
.label_1123:
	mov	rsp, rsp
	mov	al, 1
	test	al, 1
	lea	rdi, [rdi]
	jne	.label_562
	jmp	.label_893
.label_1130:
	mov	rax, qword ptr [rbp - 0x500]
	nop	
	cmp	qword ptr [rax + 8], 0
	jge	.label_706
	lea	rsi, [rsi]
	xor	eax, eax
	lea	rdi, [rdi]
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x500]
	lea	rsi, [rsi]
	sub	rcx, qword ptr [rdx + 8]
	mov	rbp, rbp
	cmp	rcx, 0
	mov	rbp, rbp
	jle	.label_562
	jmp	.label_893
.label_706:
	lea	rdi, [rdi]
	xor	eax, eax
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x500]
	lea	rdi, [rdi]
	cmp	rcx, qword ptr [rdx + 8]
	nop	
	jl	.label_562
.label_893:
	xor	eax, eax
	mov	ecx, eax
	nop	
	mov	rdx, qword ptr [rbp - 0x500]
	sub	rcx, qword ptr [rdx + 8]
	cmp	rcx, -0x80
	jl	.label_562
	mov	eax, 0x7f
	mov	ecx, eax
	mov	rbp, rbp
	xor	eax, eax
	mov	edx, eax
	mov	rsi, qword ptr [rbp - 0x500]
	sub	rdx, qword ptr [rsi + 8]
	mov	rsp, rsp
	cmp	rcx, rdx
	lea	rsi, [rsi]
	jge	.label_141
.label_562:
	mov	al, 1
	lea	rdi, [rdi]
	xor	ecx, ecx
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x500]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rdx + 8]
	mov	rsp, rsp
	mov	esi, edx
	sub	ecx, esi
	mov	rbp, rbp
	mov	dil, cl
	nop	
	movsx	rdx, dil
	mov	r8, qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	qword ptr [r8 + 0x28], rdx
	test	al, 1
	jne	.label_133
	lea	rsi, [rsi]
	jmp	.label_163
.label_141:
	mov	rsp, rsp
	xor	eax, eax
	nop	
	mov	cl, al
	lea	rsi, [rsi]
	xor	eax, eax
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x500]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rdx + 8]
	mov	esi, edx
	sub	eax, esi
	mov	dil, al
	mov	rbp, rbp
	movsx	rdx, dil
	nop	
	mov	r8, qword ptr [rbp - 8]
	nop	
	mov	qword ptr [r8 + 0x28], rdx
	nop	
	test	cl, 1
	lea	rdi, [rdi]
	jne	.label_133
	lea	rsi, [rsi]
	jmp	.label_163
.label_960:
	nop	
	xor	eax, eax
	mov	cl, al
	lea	rsi, [rsi]
	test	cl, 1
	jne	.label_217
	lea	rdi, [rdi]
	jmp	.label_222
.label_217:
	mov	rsp, rsp
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_225
	lea	rsi, [rsi]
	jmp	.label_232
.label_225:
	mov	al, 1
	mov	rsp, rsp
	test	al, 1
	jne	.label_236
	nop	
	jmp	.label_242
.label_236:
	mov	rax, qword ptr [rbp - 0x500]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax + 8]
	mov	cx, ax
	mov	rbp, rbp
	movsx	edx, cx
	cmp	edx, 0
	jge	.label_244
	mov	rax, qword ptr [rbp - 0x500]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax + 8]
	mov	cx, ax
	mov	rbp, rbp
	movsx	edx, cx
	add	edx, 0x7fffffff
	lea	rsi, [rsi]
	cmp	edx, 0
	jl	.label_255
	mov	rsp, rsp
	jmp	.label_268
.label_244:
	mov	rsp, rsp
	xor	eax, eax
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x500]
	mov	rbp, rbp
	mov	rcx, qword ptr [rcx + 8]
	mov	dx, cx
	movsx	esi, dx
	lea	rsi, [rsi]
	add	esi, 0x80000000
	mov	rsp, rsp
	cmp	eax, esi
	mov	rsp, rsp
	jl	.label_255
	nop	
	jmp	.label_268
.label_242:
	nop	
	xor	eax, eax
	mov	cl, al
	mov	rsp, rsp
	test	cl, 1
	jne	.label_285
	mov	rsp, rsp
	jmp	.label_290
.label_285:
	mov	al, 1
	test	al, 1
	jne	.label_255
	jmp	.label_268
.label_290:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x500]
	mov	rax, qword ptr [rax + 8]
	lea	rsi, [rsi]
	mov	cx, ax
	movsx	edx, cx
	cmp	edx, 0
	lea	rdi, [rdi]
	jge	.label_352
	xor	eax, eax
	nop	
	mov	rcx, qword ptr [rbp - 0x500]
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
	jle	.label_255
	jmp	.label_268
.label_352:
	nop	
	xor	eax, eax
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x500]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rcx + 8]
	mov	rsp, rsp
	mov	dx, cx
	mov	rbp, rbp
	movsx	esi, dx
	cmp	eax, esi
	jl	.label_255
.label_268:
	lea	rsi, [rsi]
	xor	eax, eax
	mov	rcx, qword ptr [rbp - 0x500]
	nop	
	mov	rcx, qword ptr [rcx + 8]
	lea	rdi, [rdi]
	mov	dx, cx
	movsx	esi, dx
	sub	eax, esi
	mov	rsp, rsp
	cmp	eax, 0xffff8000
	jl	.label_255
	mov	eax, 0x7fff
	mov	rbp, rbp
	xor	ecx, ecx
	mov	rdx, qword ptr [rbp - 0x500]
	mov	rdx, qword ptr [rdx + 8]
	lea	rsi, [rsi]
	mov	si, dx
	lea	rdi, [rdi]
	movsx	edi, si
	sub	ecx, edi
	nop	
	cmp	eax, ecx
	mov	rbp, rbp
	jge	.label_342
.label_255:
	mov	rsp, rsp
	mov	al, 1
	mov	rbp, rbp
	xor	ecx, ecx
	mov	rdx, qword ptr [rbp - 0x500]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rdx + 8]
	lea	rsi, [rsi]
	mov	si, dx
	movsx	edi, si
	sub	ecx, edi
	mov	si, cx
	movsx	rdx, si
	mov	r8, qword ptr [rbp - 8]
	mov	rbp, rbp
	mov	qword ptr [r8 + 0x28], rdx
	test	al, 1
	jne	.label_133
	mov	rbp, rbp
	jmp	.label_163
.label_342:
	lea	rsi, [rsi]
	xor	eax, eax
	mov	cl, al
	nop	
	xor	eax, eax
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x500]
	mov	rdx, qword ptr [rdx + 8]
	mov	si, dx
	movsx	edi, si
	sub	eax, edi
	lea	rsi, [rsi]
	mov	si, ax
	lea	rdi, [rdi]
	movsx	rdx, si
	mov	rbp, rbp
	mov	r8, qword ptr [rbp - 8]
	mov	qword ptr [r8 + 0x28], rdx
	test	cl, 1
	mov	rsp, rsp
	jne	.label_133
	mov	rbp, rbp
	jmp	.label_163
.label_232:
	mov	rsp, rsp
	mov	al, 1
	test	al, 1
	lea	rsi, [rsi]
	jne	.label_375
	mov	rbp, rbp
	jmp	.label_395
.label_375:
	mov	rax, qword ptr [rbp - 0x500]
	lea	rsi, [rsi]
	cmp	qword ptr [rax + 8], 0
	jge	.label_399
	mov	rax, qword ptr [rbp - 0x500]
	movabs	rcx, 0x7fffffffffffffff
	lea	rdi, [rdi]
	add	rcx, qword ptr [rax + 8]
	cmp	rcx, 0
	jl	.label_160
	mov	rbp, rbp
	jmp	.label_410
.label_399:
	xor	eax, eax
	mov	rsp, rsp
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x500]
	lea	rsi, [rsi]
	movabs	rsi, 0x8000000000000000
	add	rsi, qword ptr [rdx + 8]
	mov	rbp, rbp
	cmp	rcx, rsi
	jl	.label_160
	jmp	.label_410
.label_395:
	lea	rdi, [rdi]
	xor	eax, eax
	mov	cl, al
	mov	rsp, rsp
	test	cl, 1
	jne	.label_423
	jmp	.label_431
.label_423:
	lea	rdi, [rdi]
	mov	al, 1
	lea	rsi, [rsi]
	test	al, 1
	lea	rsi, [rsi]
	jne	.label_160
	lea	rdi, [rdi]
	jmp	.label_410
.label_431:
	mov	rax, qword ptr [rbp - 0x500]
	mov	rsp, rsp
	cmp	qword ptr [rax + 8], 0
	mov	rbp, rbp
	jge	.label_441
	xor	eax, eax
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x500]
	mov	rbp, rbp
	sub	rcx, qword ptr [rdx + 8]
	cmp	rcx, 0
	nop	
	jle	.label_160
	jmp	.label_410
.label_441:
	xor	eax, eax
	mov	ecx, eax
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x500]
	cmp	rcx, qword ptr [rdx + 8]
	jl	.label_160
.label_410:
	mov	rsp, rsp
	xor	eax, eax
	mov	rsp, rsp
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x500]
	sub	rcx, qword ptr [rdx + 8]
	cmp	rcx, -0x8000
	mov	rbp, rbp
	jl	.label_160
	mov	eax, 0x7fff
	mov	ecx, eax
	lea	rdi, [rdi]
	xor	eax, eax
	lea	rsi, [rsi]
	mov	edx, eax
	mov	rsi, qword ptr [rbp - 0x500]
	lea	rsi, [rsi]
	sub	rdx, qword ptr [rsi + 8]
	nop	
	cmp	rcx, rdx
	mov	rbp, rbp
	jge	.label_465
.label_160:
	mov	al, 1
	lea	rdi, [rdi]
	xor	ecx, ecx
	mov	rdx, qword ptr [rbp - 0x500]
	mov	rdx, qword ptr [rdx + 8]
	mov	rsp, rsp
	mov	esi, edx
	sub	ecx, esi
	lea	rdi, [rdi]
	mov	di, cx
	mov	rsp, rsp
	movsx	rdx, di
	mov	r8, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	mov	qword ptr [r8 + 0x28], rdx
	mov	rbp, rbp
	test	al, 1
	lea	rdi, [rdi]
	jne	.label_133
	nop	
	jmp	.label_163
.label_465:
	xor	eax, eax
	mov	rsp, rsp
	mov	cl, al
	lea	rsi, [rsi]
	xor	eax, eax
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x500]
	mov	rdx, qword ptr [rdx + 8]
	mov	esi, edx
	lea	rdi, [rdi]
	sub	eax, esi
	nop	
	mov	di, ax
	mov	rbp, rbp
	movsx	rdx, di
	mov	r8, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	qword ptr [r8 + 0x28], rdx
	mov	rbp, rbp
	test	cl, 1
	jne	.label_133
	jmp	.label_163
.label_222:
	xor	eax, eax
	mov	cl, al
	lea	rdi, [rdi]
	test	cl, 1
	jne	.label_525
	nop	
	jmp	.label_531
.label_525:
	mov	rsp, rsp
	xor	eax, eax
	mov	rsp, rsp
	mov	cl, al
	mov	rbp, rbp
	test	cl, 1
	jne	.label_1081
	jmp	.label_543
.label_1081:
	nop	
	mov	al, 1
	test	al, 1
	mov	rbp, rbp
	jne	.label_1096
	nop	
	jmp	.label_549
.label_1096:
	nop	
	mov	rax, qword ptr [rbp - 0x500]
	mov	rbp, rbp
	mov	rax, qword ptr [rax + 8]
	mov	rsp, rsp
	mov	ecx, eax
	mov	rbp, rbp
	cmp	ecx, 0
	mov	rsp, rsp
	jge	.label_422
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x500]
	mov	rbp, rbp
	mov	rax, qword ptr [rax + 8]
	mov	ecx, eax
	add	ecx, 0x7fffffff
	mov	rsp, rsp
	cmp	ecx, 0
	jl	.label_401
	mov	rbp, rbp
	jmp	.label_348
.label_422:
	lea	rsi, [rsi]
	xor	eax, eax
	nop	
	mov	rcx, qword ptr [rbp - 0x500]
	mov	rbp, rbp
	mov	rcx, qword ptr [rcx + 8]
	nop	
	mov	edx, ecx
	mov	rbp, rbp
	add	edx, 0x80000000
	lea	rsi, [rsi]
	cmp	eax, edx
	jl	.label_401
	nop	
	jmp	.label_348
.label_549:
	lea	rsi, [rsi]
	xor	eax, eax
	lea	rsi, [rsi]
	mov	cl, al
	test	cl, 1
	lea	rdi, [rdi]
	jne	.label_403
	jmp	.label_584
.label_403:
	mov	al, 1
	mov	rbp, rbp
	test	al, 1
	nop	
	jne	.label_401
	jmp	.label_348
.label_584:
	nop	
	mov	rax, qword ptr [rbp - 0x500]
	mov	rsp, rsp
	mov	rax, qword ptr [rax + 8]
	mov	ecx, eax
	nop	
	cmp	ecx, 0
	mov	rbp, rbp
	jge	.label_591
	xor	eax, eax
	nop	
	mov	rcx, qword ptr [rbp - 0x500]
	nop	
	mov	rcx, qword ptr [rcx + 8]
	nop	
	mov	edx, ecx
	lea	rdi, [rdi]
	sub	eax, edx
	cmp	eax, 0
	lea	rdi, [rdi]
	jle	.label_401
	mov	rsp, rsp
	jmp	.label_348
.label_591:
	lea	rsi, [rsi]
	xor	eax, eax
	mov	rcx, qword ptr [rbp - 0x500]
	nop	
	mov	rcx, qword ptr [rcx + 8]
	mov	edx, ecx
	cmp	eax, edx
	jl	.label_401
.label_348:
	xor	eax, eax
	mov	rcx, qword ptr [rbp - 0x500]
	mov	rcx, qword ptr [rcx + 8]
	mov	edx, ecx
	sub	eax, edx
	cmp	eax, 0x80000000
	nop	
	jl	.label_401
	lea	rdi, [rdi]
	mov	eax, 0x7fffffff
	xor	ecx, ecx
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x500]
	mov	rdx, qword ptr [rdx + 8]
	lea	rdi, [rdi]
	mov	esi, edx
	sub	ecx, esi
	cmp	eax, ecx
	jge	.label_653
.label_401:
	mov	rsp, rsp
	mov	al, 1
	xor	ecx, ecx
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x500]
	mov	rdx, qword ptr [rdx + 8]
	mov	rbp, rbp
	mov	esi, edx
	sub	ecx, esi
	movsxd	rdx, ecx
	nop	
	mov	rdi, qword ptr [rbp - 8]
	mov	qword ptr [rdi + 0x28], rdx
	test	al, 1
	lea	rsi, [rsi]
	jne	.label_133
	mov	rsp, rsp
	jmp	.label_163
.label_653:
	mov	rsp, rsp
	xor	eax, eax
	mov	cl, al
	mov	rbp, rbp
	xor	eax, eax
	mov	rdx, qword ptr [rbp - 0x500]
	mov	rdx, qword ptr [rdx + 8]
	mov	esi, edx
	sub	eax, esi
	mov	rsp, rsp
	movsxd	rdx, eax
	mov	rdi, qword ptr [rbp - 8]
	mov	qword ptr [rdi + 0x28], rdx
	test	cl, 1
	nop	
	jne	.label_133
	lea	rdi, [rdi]
	jmp	.label_163
.label_543:
	mov	al, 1
	test	al, 1
	lea	rdi, [rdi]
	jne	.label_658
	jmp	.label_881
.label_658:
	mov	rax, qword ptr [rbp - 0x500]
	cmp	qword ptr [rax + 8], 0
	lea	rdi, [rdi]
	jge	.label_660
	mov	rax, qword ptr [rbp - 0x500]
	movabs	rcx, 0x7fffffffffffffff
	nop	
	add	rcx, qword ptr [rax + 8]
	mov	rsp, rsp
	cmp	rcx, 0
	mov	rsp, rsp
	jl	.label_170
	jmp	.label_705
.label_660:
	xor	eax, eax
	mov	ecx, eax
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x500]
	movabs	rsi, 0x8000000000000000
	add	rsi, qword ptr [rdx + 8]
	cmp	rcx, rsi
	mov	rsp, rsp
	jl	.label_170
	jmp	.label_705
.label_881:
	xor	eax, eax
	mov	cl, al
	nop	
	test	cl, 1
	nop	
	jne	.label_682
	nop	
	jmp	.label_1041
.label_682:
	mov	rsp, rsp
	mov	al, 1
	mov	rsp, rsp
	test	al, 1
	lea	rdi, [rdi]
	jne	.label_170
	nop	
	jmp	.label_705
.label_1041:
	nop	
	mov	rax, qword ptr [rbp - 0x500]
	lea	rsi, [rsi]
	cmp	qword ptr [rax + 8], 0
	jge	.label_1079
	mov	rbp, rbp
	xor	eax, eax
	mov	ecx, eax
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x500]
	sub	rcx, qword ptr [rdx + 8]
	lea	rdi, [rdi]
	cmp	rcx, 0
	jle	.label_170
	mov	rbp, rbp
	jmp	.label_705
.label_1079:
	xor	eax, eax
	mov	rbp, rbp
	mov	ecx, eax
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x500]
	lea	rsi, [rsi]
	cmp	rcx, qword ptr [rdx + 8]
	mov	rsp, rsp
	jl	.label_170
.label_705:
	xor	eax, eax
	mov	ecx, eax
	nop	
	mov	rdx, qword ptr [rbp - 0x500]
	mov	rbp, rbp
	sub	rcx, qword ptr [rdx + 8]
	cmp	rcx, -0x80000000
	jl	.label_170
	mov	eax, 0x7fffffff
	mov	ecx, eax
	lea	rdi, [rdi]
	xor	eax, eax
	mov	edx, eax
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x500]
	sub	rdx, qword ptr [rsi + 8]
	cmp	rcx, rdx
	nop	
	jge	.label_674
.label_170:
	nop	
	mov	al, 1
	nop	
	xor	ecx, ecx
	mov	rdx, qword ptr [rbp - 0x500]
	mov	rdx, qword ptr [rdx + 8]
	mov	esi, edx
	sub	ecx, esi
	lea	rsi, [rsi]
	movsxd	rdx, ecx
	mov	rdi, qword ptr [rbp - 8]
	mov	qword ptr [rdi + 0x28], rdx
	test	al, 1
	mov	rbp, rbp
	jne	.label_133
	lea	rdi, [rdi]
	jmp	.label_163
.label_674:
	mov	rsp, rsp
	xor	eax, eax
	mov	cl, al
	lea	rsi, [rsi]
	xor	eax, eax
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x500]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rdx + 8]
	mov	esi, edx
	sub	eax, esi
	movsxd	rdx, eax
	mov	rdi, qword ptr [rbp - 8]
	mov	qword ptr [rdi + 0x28], rdx
	mov	rbp, rbp
	test	cl, 1
	jne	.label_133
	jmp	.label_163
.label_531:
	mov	rsp, rsp
	mov	al, 1
	lea	rsi, [rsi]
	test	al, 1
	mov	rsp, rsp
	jne	.label_758
	jmp	.label_794
.label_758:
	xor	eax, eax
	mov	cl, al
	mov	rsp, rsp
	test	cl, 1
	jne	.label_588
	lea	rsi, [rsi]
	jmp	.label_776
.label_588:
	mov	al, 1
	test	al, 1
	lea	rdi, [rdi]
	jne	.label_779
	lea	rsi, [rsi]
	jmp	.label_782
.label_779:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x500]
	mov	rbp, rbp
	cmp	qword ptr [rax + 8], 0
	lea	rdi, [rdi]
	jge	.label_645
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x500]
	mov	rbp, rbp
	movabs	rcx, 0x7fffffffffffffff
	lea	rdi, [rdi]
	add	rcx, qword ptr [rax + 8]
	cmp	rcx, 0
	jl	.label_785
	jmp	.label_791
.label_645:
	nop	
	xor	eax, eax
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x500]
	movabs	rsi, 0x8000000000000000
	add	rsi, qword ptr [rdx + 8]
	cmp	rcx, rsi
	jl	.label_785
	jmp	.label_791
.label_782:
	xor	eax, eax
	mov	cl, al
	mov	rsp, rsp
	test	cl, 1
	lea	rdi, [rdi]
	jne	.label_802
	jmp	.label_806
.label_802:
	mov	al, 1
	test	al, 1
	jne	.label_785
	lea	rdi, [rdi]
	jmp	.label_791
.label_806:
	nop	
	mov	rax, qword ptr [rbp - 0x500]
	cmp	qword ptr [rax + 8], 0
	jge	.label_810
	nop	
	xor	eax, eax
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x500]
	sub	rcx, qword ptr [rdx + 8]
	cmp	rcx, 0
	nop	
	jle	.label_785
	jmp	.label_791
.label_810:
	xor	eax, eax
	mov	rsp, rsp
	mov	ecx, eax
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x500]
	lea	rsi, [rsi]
	cmp	rcx, qword ptr [rdx + 8]
	lea	rsi, [rsi]
	jl	.label_785
.label_791:
	movabs	rax, 0x8000000000000000
	xor	ecx, ecx
	mov	edx, ecx
	mov	rsi, qword ptr [rbp - 0x500]
	sub	rdx, qword ptr [rsi + 8]
	nop	
	cmp	rdx, rax
	lea	rsi, [rsi]
	jl	.label_785
	movabs	rax, 0x7fffffffffffffff
	xor	ecx, ecx
	lea	rdi, [rdi]
	mov	edx, ecx
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x500]
	nop	
	sub	rdx, qword ptr [rsi + 8]
	lea	rsi, [rsi]
	cmp	rax, rdx
	jge	.label_832
.label_785:
	lea	rsi, [rsi]
	mov	al, 1
	lea	rsi, [rsi]
	xor	ecx, ecx
	mov	edx, ecx
	mov	rsi, qword ptr [rbp - 0x500]
	mov	rsp, rsp
	sub	rdx, qword ptr [rsi + 8]
	nop	
	mov	rsi, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	mov	qword ptr [rsi + 0x28], rdx
	test	al, 1
	jne	.label_133
	jmp	.label_163
.label_832:
	nop	
	xor	eax, eax
	mov	cl, al
	mov	rsp, rsp
	xor	eax, eax
	lea	rdi, [rdi]
	mov	edx, eax
	mov	rsi, qword ptr [rbp - 0x500]
	lea	rdi, [rdi]
	sub	rdx, qword ptr [rsi + 8]
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	qword ptr [rsi + 0x28], rdx
	test	cl, 1
	mov	rsp, rsp
	jne	.label_133
	lea	rsi, [rsi]
	jmp	.label_163
.label_776:
	mov	al, 1
	lea	rsi, [rsi]
	test	al, 1
	jne	.label_867
	jmp	.label_992
.label_867:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x500]
	cmp	qword ptr [rax + 8], 0
	jge	.label_871
	mov	rax, qword ptr [rbp - 0x500]
	lea	rsi, [rsi]
	movabs	rcx, 0x7fffffffffffffff
	mov	rbp, rbp
	add	rcx, qword ptr [rax + 8]
	mov	rbp, rbp
	cmp	rcx, 0
	jl	.label_396
	mov	rsp, rsp
	jmp	.label_551
.label_871:
	lea	rsi, [rsi]
	xor	eax, eax
	lea	rsi, [rsi]
	mov	ecx, eax
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x500]
	nop	
	movabs	rsi, 0x8000000000000000
	add	rsi, qword ptr [rdx + 8]
	cmp	rcx, rsi
	mov	rbp, rbp
	jl	.label_396
	jmp	.label_551
.label_992:
	mov	rsp, rsp
	xor	eax, eax
	lea	rdi, [rdi]
	mov	cl, al
	lea	rdi, [rdi]
	test	cl, 1
	nop	
	jne	.label_474
	jmp	.label_906
.label_474:
	mov	rbp, rbp
	mov	al, 1
	test	al, 1
	jne	.label_396
	lea	rdi, [rdi]
	jmp	.label_551
.label_906:
	mov	rax, qword ptr [rbp - 0x500]
	cmp	qword ptr [rax + 8], 0
	jge	.label_207
	mov	rsp, rsp
	xor	eax, eax
	mov	rbp, rbp
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x500]
	lea	rsi, [rsi]
	sub	rcx, qword ptr [rdx + 8]
	lea	rsi, [rsi]
	cmp	rcx, 0
	mov	rbp, rbp
	jle	.label_396
	jmp	.label_551
.label_207:
	lea	rdi, [rdi]
	xor	eax, eax
	mov	rsp, rsp
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x500]
	lea	rdi, [rdi]
	cmp	rcx, qword ptr [rdx + 8]
	jl	.label_396
.label_551:
	movabs	rax, 0x8000000000000000
	xor	ecx, ecx
	lea	rsi, [rsi]
	mov	edx, ecx
	nop	
	mov	rsi, qword ptr [rbp - 0x500]
	sub	rdx, qword ptr [rsi + 8]
	mov	rsp, rsp
	cmp	rdx, rax
	jl	.label_396
	mov	rbp, rbp
	movabs	rax, 0x7fffffffffffffff
	xor	ecx, ecx
	mov	edx, ecx
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x500]
	mov	rsp, rsp
	sub	rdx, qword ptr [rsi + 8]
	lea	rsi, [rsi]
	cmp	rax, rdx
	mov	rbp, rbp
	jge	.label_933
.label_396:
	mov	al, 1
	lea	rsi, [rsi]
	xor	ecx, ecx
	nop	
	mov	edx, ecx
	mov	rsi, qword ptr [rbp - 0x500]
	mov	rsp, rsp
	sub	rdx, qword ptr [rsi + 8]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	qword ptr [rsi + 0x28], rdx
	lea	rsi, [rsi]
	test	al, 1
	mov	rbp, rbp
	jne	.label_133
	lea	rsi, [rsi]
	jmp	.label_163
.label_933:
	xor	eax, eax
	lea	rsi, [rsi]
	mov	cl, al
	xor	eax, eax
	nop	
	mov	edx, eax
	nop	
	mov	rsi, qword ptr [rbp - 0x500]
	sub	rdx, qword ptr [rsi + 8]
	mov	rsi, qword ptr [rbp - 8]
	mov	qword ptr [rsi + 0x28], rdx
	test	cl, 1
	mov	rbp, rbp
	jne	.label_133
	jmp	.label_163
.label_794:
	mov	rsp, rsp
	xor	eax, eax
	mov	rsp, rsp
	mov	cl, al
	test	cl, 1
	jne	.label_966
	jmp	.label_824
.label_966:
	mov	al, 1
	test	al, 1
	jne	.label_991
	jmp	.label_980
.label_991:
	mov	rax, qword ptr [rbp - 0x500]
	lea	rdi, [rdi]
	cmp	qword ptr [rax + 8], 0
	lea	rsi, [rsi]
	jge	.label_1005
	mov	rax, qword ptr [rbp - 0x500]
	lea	rsi, [rsi]
	movabs	rcx, 0x7fffffffffffffff
	nop	
	add	rcx, qword ptr [rax + 8]
	cmp	rcx, 0
	jl	.label_392
	mov	rsp, rsp
	jmp	.label_815
.label_1005:
	xor	eax, eax
	lea	rsi, [rsi]
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x500]
	mov	rbp, rbp
	movabs	rsi, 0x8000000000000000
	lea	rsi, [rsi]
	add	rsi, qword ptr [rdx + 8]
	cmp	rcx, rsi
	mov	rbp, rbp
	jl	.label_392
	jmp	.label_815
.label_980:
	nop	
	xor	eax, eax
	mov	cl, al
	lea	rsi, [rsi]
	test	cl, 1
	jne	.label_1007
	jmp	.label_1013
.label_1007:
	lea	rsi, [rsi]
	mov	al, 1
	test	al, 1
	mov	rbp, rbp
	jne	.label_392
	jmp	.label_815
.label_1013:
	mov	rax, qword ptr [rbp - 0x500]
	cmp	qword ptr [rax + 8], 0
	lea	rdi, [rdi]
	jge	.label_1018
	xor	eax, eax
	mov	rbp, rbp
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x500]
	sub	rcx, qword ptr [rdx + 8]
	mov	rbp, rbp
	cmp	rcx, 0
	lea	rdi, [rdi]
	jle	.label_392
	jmp	.label_815
.label_1018:
	xor	eax, eax
	mov	rsp, rsp
	mov	ecx, eax
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x500]
	cmp	rcx, qword ptr [rdx + 8]
	jl	.label_392
.label_815:
	movabs	rax, 0x8000000000000000
	xor	ecx, ecx
	mov	edx, ecx
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x500]
	sub	rdx, qword ptr [rsi + 8]
	mov	rbp, rbp
	cmp	rdx, rax
	jl	.label_392
	movabs	rax, 0x7fffffffffffffff
	xor	ecx, ecx
	nop	
	mov	edx, ecx
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x500]
	sub	rdx, qword ptr [rsi + 8]
	cmp	rax, rdx
	jge	.label_1038
.label_392:
	mov	al, 1
	xor	ecx, ecx
	mov	rsp, rsp
	mov	edx, ecx
	mov	rsi, qword ptr [rbp - 0x500]
	lea	rsi, [rsi]
	sub	rdx, qword ptr [rsi + 8]
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 8]
	nop	
	mov	qword ptr [rsi + 0x28], rdx
	test	al, 1
	mov	rsp, rsp
	jne	.label_133
	lea	rsi, [rsi]
	jmp	.label_163
.label_1038:
	xor	eax, eax
	lea	rsi, [rsi]
	mov	cl, al
	xor	eax, eax
	nop	
	mov	edx, eax
	mov	rsi, qword ptr [rbp - 0x500]
	mov	rbp, rbp
	sub	rdx, qword ptr [rsi + 8]
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 8]
	mov	qword ptr [rsi + 0x28], rdx
	lea	rdi, [rdi]
	test	cl, 1
	jne	.label_133
	mov	rbp, rbp
	jmp	.label_163
.label_824:
	mov	al, 1
	test	al, 1
	jne	.label_861
	jmp	.label_1070
.label_861:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x500]
	cmp	qword ptr [rax + 8], 0
	jge	.label_701
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x500]
	nop	
	movabs	rcx, 0x7fffffffffffffff
	mov	rsp, rsp
	add	rcx, qword ptr [rax + 8]
	mov	rbp, rbp
	cmp	rcx, 0
	mov	rbp, rbp
	jl	.label_480
	jmp	.label_524
.label_701:
	lea	rdi, [rdi]
	xor	eax, eax
	mov	rsp, rsp
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x500]
	movabs	rsi, 0x8000000000000000
	add	rsi, qword ptr [rdx + 8]
	cmp	rcx, rsi
	jl	.label_480
	jmp	.label_524
.label_1070:
	mov	rbp, rbp
	xor	eax, eax
	mov	cl, al
	lea	rsi, [rsi]
	test	cl, 1
	lea	rsi, [rsi]
	jne	.label_1099
	jmp	.label_1114
.label_1099:
	mov	al, 1
	lea	rdi, [rdi]
	test	al, 1
	jne	.label_480
	lea	rdi, [rdi]
	jmp	.label_524
.label_1114:
	nop	
	mov	rax, qword ptr [rbp - 0x500]
	lea	rdi, [rdi]
	cmp	qword ptr [rax + 8], 0
	lea	rdi, [rdi]
	jge	.label_1115
	lea	rdi, [rdi]
	xor	eax, eax
	mov	ecx, eax
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x500]
	lea	rdi, [rdi]
	sub	rcx, qword ptr [rdx + 8]
	mov	rsp, rsp
	cmp	rcx, 0
	jle	.label_480
	jmp	.label_524
.label_1115:
	xor	eax, eax
	mov	ecx, eax
	nop	
	mov	rdx, qword ptr [rbp - 0x500]
	cmp	rcx, qword ptr [rdx + 8]
	mov	rsp, rsp
	jl	.label_480
.label_524:
	mov	rsp, rsp
	movabs	rax, 0x8000000000000000
	mov	rsp, rsp
	xor	ecx, ecx
	lea	rdi, [rdi]
	mov	edx, ecx
	nop	
	mov	rsi, qword ptr [rbp - 0x500]
	sub	rdx, qword ptr [rsi + 8]
	cmp	rdx, rax
	jl	.label_480
	lea	rdi, [rdi]
	movabs	rax, 0x7fffffffffffffff
	mov	rsp, rsp
	xor	ecx, ecx
	lea	rdi, [rdi]
	mov	edx, ecx
	mov	rsi, qword ptr [rbp - 0x500]
	sub	rdx, qword ptr [rsi + 8]
	cmp	rax, rdx
	mov	rbp, rbp
	jge	.label_1144
.label_480:
	nop	
	mov	al, 1
	xor	ecx, ecx
	mov	rsp, rsp
	mov	edx, ecx
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x500]
	mov	rsp, rsp
	sub	rdx, qword ptr [rsi + 8]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 8]
	nop	
	mov	qword ptr [rsi + 0x28], rdx
	nop	
	test	al, 1
	mov	rsp, rsp
	jne	.label_133
	jmp	.label_163
.label_1144:
	xor	eax, eax
	nop	
	mov	cl, al
	lea	rdi, [rdi]
	xor	eax, eax
	mov	rbp, rbp
	mov	edx, eax
	mov	rsi, qword ptr [rbp - 0x500]
	mov	rsp, rsp
	sub	rdx, qword ptr [rsi + 8]
	mov	rsi, qword ptr [rbp - 8]
	mov	rbp, rbp
	mov	qword ptr [rsi + 0x28], rdx
	lea	rdi, [rdi]
	test	cl, 1
	mov	rsp, rsp
	jne	.label_133
	jmp	.label_163
.label_133:
	lea	rdi, [rdi]
	jmp	.label_177
.label_163:
	mov	rax, qword ptr [rbp - 0x500]
	mov	rax, qword ptr [rax + 0x10]
	mov	rcx, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	mov	qword ptr [rcx + 0x30], rax
	jmp	.label_200
.label_5225:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x500]
	mov	rax, qword ptr [rax - 0x38]
	mov	rcx, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	mov	qword ptr [rcx + 0x38], rax
	mov	rax, qword ptr [rbp - 0x500]
	mov	rax, qword ptr [rax + 8]
	nop	
	mov	rcx, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	qword ptr [rcx + 0x40], rax
	jmp	.label_200
.label_5226:
	mov	rax, qword ptr [rbp - 0x500]
	mov	rsp, rsp
	mov	rax, qword ptr [rax - 0xa8]
	mov	rcx, qword ptr [rbp - 8]
	mov	qword ptr [rcx + 0x38], rax
	mov	rax, qword ptr [rbp - 0x500]
	mov	rax, qword ptr [rax - 0x68]
	mov	rcx, qword ptr [rbp - 8]
	mov	rbp, rbp
	mov	qword ptr [rcx + 0x40], rax
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 8]
	mov	rcx, qword ptr [rbp - 0x500]
	mov	rdx, qword ptr [rcx]
	mov	qword ptr [rax + 0x20], rdx
	nop	
	mov	rdx, qword ptr [rcx + 8]
	mov	qword ptr [rax + 0x28], rdx
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rcx + 0x10]
	lea	rsi, [rsi]
	mov	qword ptr [rax + 0x30], rcx
	jmp	.label_200
.label_5227:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x500]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax - 0x30]
	mov	rcx, qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	qword ptr [rcx + 0x40], rax
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x500]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 8]
	mov	qword ptr [rcx + 0x38], rax
	jmp	.label_200
.label_5228:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x500]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax - 0x68]
	mov	rcx, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	qword ptr [rcx + 0x40], rax
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x500]
	nop	
	mov	rax, qword ptr [rax - 0x38]
	nop	
	mov	rcx, qword ptr [rbp - 8]
	mov	qword ptr [rcx + 0x38], rax
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x500]
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
	jmp	.label_200
.label_5229:
	mov	rsp, rsp
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 8]
	nop	
	mov	rsi, qword ptr [rbp - 0x500]
	mov	rdi, qword ptr [rsi - 0x70]
	mov	qword ptr [rdx + 0x20], rdi
	mov	rdi, qword ptr [rsi - 0x68]
	nop	
	mov	qword ptr [rdx + 0x28], rdi
	mov	rsi, qword ptr [rsi - 0x60]
	mov	qword ptr [rdx + 0x30], rsi
	test	cl, 1
	mov	rsp, rsp
	jne	.label_929
	lea	rdi, [rdi]
	jmp	.label_942
.label_929:
	lea	rsi, [rsi]
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_324
	jmp	.label_329
.label_324:
	lea	rdi, [rdi]
	mov	al, 1
	test	al, 1
	jne	.label_332
	jmp	.label_335
.label_332:
	mov	rax, qword ptr [rbp - 0x500]
	mov	rax, qword ptr [rax - 0x30]
	nop	
	mov	cl, al
	movsx	edx, cl
	cmp	edx, 0
	lea	rsi, [rsi]
	jge	.label_336
	nop	
	mov	rax, qword ptr [rbp - 0x500]
	mov	rax, qword ptr [rax - 0x30]
	nop	
	mov	cl, al
	movsx	edx, cl
	lea	rsi, [rsi]
	add	edx, 0x7fffffff
	cmp	edx, 0
	mov	rbp, rbp
	jl	.label_340
	mov	rbp, rbp
	jmp	.label_351
.label_336:
	mov	rsp, rsp
	xor	eax, eax
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x500]
	mov	rcx, qword ptr [rcx - 0x30]
	mov	rbp, rbp
	mov	dl, cl
	lea	rdi, [rdi]
	movsx	esi, dl
	add	esi, 0x80000000
	cmp	eax, esi
	lea	rdi, [rdi]
	jl	.label_340
	lea	rsi, [rsi]
	jmp	.label_351
.label_335:
	xor	eax, eax
	mov	cl, al
	mov	rsp, rsp
	test	cl, 1
	nop	
	jne	.label_370
	jmp	.label_377
.label_370:
	mov	al, 1
	test	al, 1
	lea	rsi, [rsi]
	jne	.label_340
	jmp	.label_351
.label_377:
	mov	rax, qword ptr [rbp - 0x500]
	mov	rbp, rbp
	mov	rax, qword ptr [rax - 0x30]
	mov	cl, al
	nop	
	movsx	edx, cl
	cmp	edx, 0
	lea	rdi, [rdi]
	jge	.label_380
	xor	eax, eax
	mov	rcx, qword ptr [rbp - 0x500]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rcx - 0x30]
	mov	dl, cl
	movsx	esi, dl
	sub	eax, esi
	cmp	eax, 0
	jle	.label_340
	lea	rdi, [rdi]
	jmp	.label_351
.label_380:
	mov	rsp, rsp
	xor	eax, eax
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x500]
	nop	
	mov	rcx, qword ptr [rcx - 0x30]
	lea	rsi, [rsi]
	mov	dl, cl
	lea	rsi, [rsi]
	movsx	esi, dl
	cmp	eax, esi
	nop	
	jl	.label_340
.label_351:
	xor	eax, eax
	mov	rcx, qword ptr [rbp - 0x500]
	mov	rcx, qword ptr [rcx - 0x30]
	mov	dl, cl
	mov	rsp, rsp
	movsx	esi, dl
	sub	eax, esi
	mov	rsp, rsp
	cmp	eax, -0x80
	lea	rdi, [rdi]
	jl	.label_340
	lea	rdi, [rdi]
	mov	eax, 0x7f
	xor	ecx, ecx
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x500]
	mov	rsp, rsp
	mov	rdx, qword ptr [rdx - 0x30]
	mov	rsp, rsp
	mov	sil, dl
	mov	rsp, rsp
	movsx	edi, sil
	sub	ecx, edi
	cmp	eax, ecx
	jge	.label_412
.label_340:
	mov	al, 1
	nop	
	xor	ecx, ecx
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x500]
	mov	rdx, qword ptr [rdx - 0x30]
	lea	rsi, [rsi]
	mov	sil, dl
	nop	
	movsx	edi, sil
	sub	ecx, edi
	lea	rsi, [rsi]
	mov	sil, cl
	movsx	rdx, sil
	mov	r8, qword ptr [rbp - 8]
	mov	qword ptr [r8 + 0x38], rdx
	nop	
	test	al, 1
	jne	.label_182
	lea	rdi, [rdi]
	jmp	.label_430
.label_412:
	xor	eax, eax
	mov	cl, al
	xor	eax, eax
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x500]
	mov	rdx, qword ptr [rdx - 0x30]
	lea	rdi, [rdi]
	mov	sil, dl
	lea	rdi, [rdi]
	movsx	edi, sil
	mov	rbp, rbp
	sub	eax, edi
	mov	sil, al
	movsx	rdx, sil
	mov	r8, qword ptr [rbp - 8]
	nop	
	mov	qword ptr [r8 + 0x38], rdx
	test	cl, 1
	lea	rsi, [rsi]
	jne	.label_182
	mov	rsp, rsp
	jmp	.label_430
.label_329:
	mov	al, 1
	test	al, 1
	jne	.label_455
	lea	rsi, [rsi]
	jmp	.label_458
.label_455:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x500]
	cmp	qword ptr [rax - 0x30], 0
	jge	.label_462
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x500]
	movabs	rcx, 0x7fffffffffffffff
	mov	rsp, rsp
	add	rcx, qword ptr [rax - 0x30]
	cmp	rcx, 0
	jl	.label_488
	mov	rsp, rsp
	jmp	.label_485
.label_462:
	nop	
	xor	eax, eax
	mov	rsp, rsp
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x500]
	lea	rdi, [rdi]
	movabs	rsi, 0x8000000000000000
	lea	rsi, [rsi]
	add	rsi, qword ptr [rdx - 0x30]
	lea	rdi, [rdi]
	cmp	rcx, rsi
	jl	.label_488
	nop	
	jmp	.label_485
.label_458:
	lea	rsi, [rsi]
	xor	eax, eax
	lea	rdi, [rdi]
	mov	cl, al
	test	cl, 1
	lea	rdi, [rdi]
	jne	.label_504
	mov	rsp, rsp
	jmp	.label_510
.label_504:
	mov	rsp, rsp
	mov	al, 1
	mov	rsp, rsp
	test	al, 1
	mov	rsp, rsp
	jne	.label_488
	mov	rbp, rbp
	jmp	.label_485
.label_510:
	nop	
	mov	rax, qword ptr [rbp - 0x500]
	mov	rsp, rsp
	cmp	qword ptr [rax - 0x30], 0
	mov	rsp, rsp
	jge	.label_873
	mov	rbp, rbp
	xor	eax, eax
	lea	rdi, [rdi]
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x500]
	mov	rbp, rbp
	sub	rcx, qword ptr [rdx - 0x30]
	mov	rsp, rsp
	cmp	rcx, 0
	nop	
	jle	.label_488
	jmp	.label_485
.label_873:
	xor	eax, eax
	mov	ecx, eax
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x500]
	cmp	rcx, qword ptr [rdx - 0x30]
	jl	.label_488
.label_485:
	nop	
	xor	eax, eax
	mov	ecx, eax
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x500]
	sub	rcx, qword ptr [rdx - 0x30]
	nop	
	cmp	rcx, -0x80
	jl	.label_488
	lea	rsi, [rsi]
	mov	eax, 0x7f
	mov	rbp, rbp
	mov	ecx, eax
	nop	
	xor	eax, eax
	mov	edx, eax
	mov	rsi, qword ptr [rbp - 0x500]
	sub	rdx, qword ptr [rsi - 0x30]
	cmp	rcx, rdx
	jge	.label_555
.label_488:
	mov	rsp, rsp
	mov	al, 1
	nop	
	xor	ecx, ecx
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x500]
	mov	rdx, qword ptr [rdx - 0x30]
	mov	esi, edx
	lea	rdi, [rdi]
	sub	ecx, esi
	mov	dil, cl
	lea	rsi, [rsi]
	movsx	rdx, dil
	mov	rbp, rbp
	mov	r8, qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	qword ptr [r8 + 0x38], rdx
	test	al, 1
	jne	.label_182
	jmp	.label_430
.label_555:
	xor	eax, eax
	mov	rbp, rbp
	mov	cl, al
	xor	eax, eax
	nop	
	mov	rdx, qword ptr [rbp - 0x500]
	mov	rbp, rbp
	mov	rdx, qword ptr [rdx - 0x30]
	mov	esi, edx
	sub	eax, esi
	nop	
	mov	dil, al
	mov	rsp, rsp
	movsx	rdx, dil
	lea	rsi, [rsi]
	mov	r8, qword ptr [rbp - 8]
	nop	
	mov	qword ptr [r8 + 0x38], rdx
	test	cl, 1
	jne	.label_182
	jmp	.label_430
.label_942:
	lea	rdi, [rdi]
	xor	eax, eax
	nop	
	mov	cl, al
	test	cl, 1
	nop	
	jne	.label_286
	nop	
	jmp	.label_603
.label_286:
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	mov	rsp, rsp
	jne	.label_604
	mov	rsp, rsp
	jmp	.label_608
.label_604:
	mov	al, 1
	test	al, 1
	jne	.label_611
	jmp	.label_599
.label_611:
	nop	
	mov	rax, qword ptr [rbp - 0x500]
	mov	rax, qword ptr [rax - 0x30]
	lea	rdi, [rdi]
	mov	cx, ax
	mov	rbp, rbp
	movsx	edx, cx
	cmp	edx, 0
	lea	rdi, [rdi]
	jge	.label_614
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x500]
	mov	rax, qword ptr [rax - 0x30]
	mov	cx, ax
	movsx	edx, cx
	add	edx, 0x7fffffff
	lea	rdi, [rdi]
	cmp	edx, 0
	jl	.label_617
	jmp	.label_632
.label_614:
	lea	rdi, [rdi]
	xor	eax, eax
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x500]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rcx - 0x30]
	mov	dx, cx
	lea	rsi, [rsi]
	movsx	esi, dx
	add	esi, 0x80000000
	cmp	eax, esi
	lea	rdi, [rdi]
	jl	.label_617
	jmp	.label_632
.label_599:
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	lea	rdi, [rdi]
	jne	.label_646
	jmp	.label_647
.label_646:
	mov	al, 1
	test	al, 1
	jne	.label_617
	nop	
	jmp	.label_632
.label_647:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x500]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax - 0x30]
	mov	cx, ax
	mov	rsp, rsp
	movsx	edx, cx
	lea	rsi, [rsi]
	cmp	edx, 0
	jge	.label_654
	xor	eax, eax
	mov	rcx, qword ptr [rbp - 0x500]
	mov	rsp, rsp
	mov	rcx, qword ptr [rcx - 0x30]
	lea	rdi, [rdi]
	mov	dx, cx
	movsx	esi, dx
	nop	
	sub	eax, esi
	mov	rsp, rsp
	cmp	eax, 0
	jle	.label_617
	jmp	.label_632
.label_654:
	xor	eax, eax
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x500]
	nop	
	mov	rcx, qword ptr [rcx - 0x30]
	lea	rsi, [rsi]
	mov	dx, cx
	movsx	esi, dx
	cmp	eax, esi
	lea	rsi, [rsi]
	jl	.label_617
.label_632:
	xor	eax, eax
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x500]
	nop	
	mov	rcx, qword ptr [rcx - 0x30]
	nop	
	mov	dx, cx
	movsx	esi, dx
	sub	eax, esi
	mov	rsp, rsp
	cmp	eax, 0xffff8000
	lea	rsi, [rsi]
	jl	.label_617
	lea	rsi, [rsi]
	mov	eax, 0x7fff
	xor	ecx, ecx
	mov	rdx, qword ptr [rbp - 0x500]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rdx - 0x30]
	lea	rdi, [rdi]
	mov	si, dx
	movsx	edi, si
	sub	ecx, edi
	cmp	eax, ecx
	jge	.label_685
.label_617:
	mov	al, 1
	mov	rbp, rbp
	xor	ecx, ecx
	mov	rdx, qword ptr [rbp - 0x500]
	mov	rdx, qword ptr [rdx - 0x30]
	mov	rsp, rsp
	mov	si, dx
	movsx	edi, si
	sub	ecx, edi
	mov	si, cx
	lea	rsi, [rsi]
	movsx	rdx, si
	nop	
	mov	r8, qword ptr [rbp - 8]
	nop	
	mov	qword ptr [r8 + 0x38], rdx
	test	al, 1
	jne	.label_182
	jmp	.label_430
.label_685:
	xor	eax, eax
	mov	cl, al
	lea	rsi, [rsi]
	xor	eax, eax
	nop	
	mov	rdx, qword ptr [rbp - 0x500]
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
	mov	r8, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	mov	qword ptr [r8 + 0x38], rdx
	test	cl, 1
	jne	.label_182
	lea	rsi, [rsi]
	jmp	.label_430
.label_608:
	mov	al, 1
	nop	
	test	al, 1
	nop	
	jne	.label_725
	lea	rdi, [rdi]
	jmp	.label_728
.label_725:
	mov	rax, qword ptr [rbp - 0x500]
	cmp	qword ptr [rax - 0x30], 0
	lea	rsi, [rsi]
	jge	.label_731
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x500]
	mov	rsp, rsp
	movabs	rcx, 0x7fffffffffffffff
	add	rcx, qword ptr [rax - 0x30]
	cmp	rcx, 0
	jl	.label_735
	nop	
	jmp	.label_743
.label_731:
	xor	eax, eax
	mov	rsp, rsp
	mov	ecx, eax
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x500]
	mov	rbp, rbp
	movabs	rsi, 0x8000000000000000
	mov	rbp, rbp
	add	rsi, qword ptr [rdx - 0x30]
	cmp	rcx, rsi
	mov	rbp, rbp
	jl	.label_735
	jmp	.label_743
.label_728:
	lea	rdi, [rdi]
	xor	eax, eax
	nop	
	mov	cl, al
	mov	rsp, rsp
	test	cl, 1
	jne	.label_762
	mov	rbp, rbp
	jmp	.label_772
.label_762:
	mov	al, 1
	mov	rbp, rbp
	test	al, 1
	jne	.label_735
	lea	rsi, [rsi]
	jmp	.label_743
.label_772:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x500]
	mov	rsp, rsp
	cmp	qword ptr [rax - 0x30], 0
	lea	rdi, [rdi]
	jge	.label_639
	nop	
	xor	eax, eax
	mov	rbp, rbp
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x500]
	sub	rcx, qword ptr [rdx - 0x30]
	cmp	rcx, 0
	lea	rsi, [rsi]
	jle	.label_735
	jmp	.label_743
.label_639:
	xor	eax, eax
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x500]
	mov	rbp, rbp
	cmp	rcx, qword ptr [rdx - 0x30]
	lea	rdi, [rdi]
	jl	.label_735
.label_743:
	xor	eax, eax
	mov	ecx, eax
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x500]
	sub	rcx, qword ptr [rdx - 0x30]
	mov	rsp, rsp
	cmp	rcx, -0x8000
	mov	rsp, rsp
	jl	.label_735
	mov	eax, 0x7fff
	lea	rdi, [rdi]
	mov	ecx, eax
	lea	rsi, [rsi]
	xor	eax, eax
	mov	edx, eax
	mov	rsi, qword ptr [rbp - 0x500]
	nop	
	sub	rdx, qword ptr [rsi - 0x30]
	cmp	rcx, rdx
	lea	rdi, [rdi]
	jge	.label_808
.label_735:
	nop	
	mov	al, 1
	xor	ecx, ecx
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x500]
	nop	
	mov	rdx, qword ptr [rdx - 0x30]
	mov	esi, edx
	sub	ecx, esi
	mov	di, cx
	movsx	rdx, di
	mov	r8, qword ptr [rbp - 8]
	mov	qword ptr [r8 + 0x38], rdx
	test	al, 1
	lea	rsi, [rsi]
	jne	.label_182
	nop	
	jmp	.label_430
.label_808:
	lea	rsi, [rsi]
	xor	eax, eax
	lea	rdi, [rdi]
	mov	cl, al
	nop	
	xor	eax, eax
	mov	rdx, qword ptr [rbp - 0x500]
	mov	rdx, qword ptr [rdx - 0x30]
	mov	rsp, rsp
	mov	esi, edx
	sub	eax, esi
	mov	di, ax
	movsx	rdx, di
	mov	rsp, rsp
	mov	r8, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	qword ptr [r8 + 0x38], rdx
	lea	rsi, [rsi]
	test	cl, 1
	jne	.label_182
	lea	rsi, [rsi]
	jmp	.label_430
.label_603:
	mov	rsp, rsp
	xor	eax, eax
	mov	rsp, rsp
	mov	cl, al
	test	cl, 1
	lea	rdi, [rdi]
	jne	.label_834
	jmp	.label_838
.label_834:
	mov	rbp, rbp
	xor	eax, eax
	mov	rbp, rbp
	mov	cl, al
	nop	
	test	cl, 1
	jne	.label_840
	nop	
	jmp	.label_1124
.label_840:
	mov	al, 1
	lea	rdi, [rdi]
	test	al, 1
	jne	.label_846
	jmp	.label_849
.label_846:
	mov	rax, qword ptr [rbp - 0x500]
	mov	rax, qword ptr [rax - 0x30]
	mov	ecx, eax
	cmp	ecx, 0
	mov	rbp, rbp
	jge	.label_852
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x500]
	mov	rbp, rbp
	mov	rax, qword ptr [rax - 0x30]
	mov	ecx, eax
	add	ecx, 0x7fffffff
	cmp	ecx, 0
	lea	rsi, [rsi]
	jl	.label_650
	jmp	.label_863
.label_852:
	xor	eax, eax
	mov	rcx, qword ptr [rbp - 0x500]
	mov	rsp, rsp
	mov	rcx, qword ptr [rcx - 0x30]
	mov	edx, ecx
	add	edx, 0x80000000
	cmp	eax, edx
	lea	rdi, [rdi]
	jl	.label_650
	nop	
	jmp	.label_863
.label_849:
	lea	rsi, [rsi]
	xor	eax, eax
	mov	cl, al
	lea	rsi, [rsi]
	test	cl, 1
	jne	.label_879
	jmp	.label_252
.label_879:
	nop	
	mov	al, 1
	nop	
	test	al, 1
	jne	.label_650
	jmp	.label_863
.label_252:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x500]
	mov	rax, qword ptr [rax - 0x30]
	mov	ecx, eax
	cmp	ecx, 0
	mov	rbp, rbp
	jge	.label_888
	xor	eax, eax
	mov	rcx, qword ptr [rbp - 0x500]
	mov	rbp, rbp
	mov	rcx, qword ptr [rcx - 0x30]
	mov	edx, ecx
	sub	eax, edx
	nop	
	cmp	eax, 0
	jle	.label_650
	mov	rsp, rsp
	jmp	.label_863
.label_888:
	mov	rbp, rbp
	xor	eax, eax
	mov	rcx, qword ptr [rbp - 0x500]
	mov	rcx, qword ptr [rcx - 0x30]
	mov	edx, ecx
	cmp	eax, edx
	nop	
	jl	.label_650
.label_863:
	xor	eax, eax
	mov	rcx, qword ptr [rbp - 0x500]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rcx - 0x30]
	lea	rdi, [rdi]
	mov	edx, ecx
	mov	rsp, rsp
	sub	eax, edx
	nop	
	cmp	eax, 0x80000000
	jl	.label_650
	mov	eax, 0x7fffffff
	xor	ecx, ecx
	mov	rdx, qword ptr [rbp - 0x500]
	nop	
	mov	rdx, qword ptr [rdx - 0x30]
	mov	esi, edx
	sub	ecx, esi
	nop	
	cmp	eax, ecx
	mov	rbp, rbp
	jge	.label_589
.label_650:
	mov	al, 1
	xor	ecx, ecx
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x500]
	mov	rdx, qword ptr [rdx - 0x30]
	mov	esi, edx
	nop	
	sub	ecx, esi
	nop	
	movsxd	rdx, ecx
	mov	rdi, qword ptr [rbp - 8]
	mov	qword ptr [rdi + 0x38], rdx
	test	al, 1
	lea	rdi, [rdi]
	jne	.label_182
	jmp	.label_430
.label_589:
	nop	
	xor	eax, eax
	mov	cl, al
	nop	
	xor	eax, eax
	mov	rdx, qword ptr [rbp - 0x500]
	mov	rdx, qword ptr [rdx - 0x30]
	mov	rbp, rbp
	mov	esi, edx
	sub	eax, esi
	lea	rsi, [rsi]
	movsxd	rdx, eax
	mov	rdi, qword ptr [rbp - 8]
	mov	qword ptr [rdi + 0x38], rdx
	test	cl, 1
	jne	.label_182
	jmp	.label_430
.label_1124:
	mov	al, 1
	mov	rsp, rsp
	test	al, 1
	mov	rbp, rbp
	jne	.label_936
	mov	rsp, rsp
	jmp	.label_801
.label_936:
	mov	rax, qword ptr [rbp - 0x500]
	nop	
	cmp	qword ptr [rax - 0x30], 0
	lea	rsi, [rsi]
	jge	.label_941
	nop	
	mov	rax, qword ptr [rbp - 0x500]
	movabs	rcx, 0x7fffffffffffffff
	add	rcx, qword ptr [rax - 0x30]
	lea	rsi, [rsi]
	cmp	rcx, 0
	jl	.label_167
	mov	rbp, rbp
	jmp	.label_949
.label_941:
	xor	eax, eax
	mov	rsp, rsp
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x500]
	nop	
	movabs	rsi, 0x8000000000000000
	mov	rsp, rsp
	add	rsi, qword ptr [rdx - 0x30]
	mov	rsp, rsp
	cmp	rcx, rsi
	jl	.label_167
	lea	rdi, [rdi]
	jmp	.label_949
.label_801:
	lea	rsi, [rsi]
	xor	eax, eax
	nop	
	mov	cl, al
	test	cl, 1
	jne	.label_967
	lea	rsi, [rsi]
	jmp	.label_974
.label_967:
	mov	al, 1
	test	al, 1
	jne	.label_167
	jmp	.label_949
.label_974:
	nop	
	mov	rax, qword ptr [rbp - 0x500]
	cmp	qword ptr [rax - 0x30], 0
	mov	rsp, rsp
	jge	.label_984
	xor	eax, eax
	mov	rbp, rbp
	mov	ecx, eax
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x500]
	sub	rcx, qword ptr [rdx - 0x30]
	lea	rsi, [rsi]
	cmp	rcx, 0
	mov	rsp, rsp
	jle	.label_167
	jmp	.label_949
.label_984:
	xor	eax, eax
	nop	
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x500]
	lea	rsi, [rsi]
	cmp	rcx, qword ptr [rdx - 0x30]
	mov	rsp, rsp
	jl	.label_167
.label_949:
	lea	rsi, [rsi]
	xor	eax, eax
	mov	ecx, eax
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x500]
	mov	rsp, rsp
	sub	rcx, qword ptr [rdx - 0x30]
	cmp	rcx, -0x80000000
	lea	rsi, [rsi]
	jl	.label_167
	mov	eax, 0x7fffffff
	mov	ecx, eax
	xor	eax, eax
	mov	edx, eax
	mov	rsi, qword ptr [rbp - 0x500]
	sub	rdx, qword ptr [rsi - 0x30]
	cmp	rcx, rdx
	mov	rsp, rsp
	jge	.label_196
.label_167:
	mov	al, 1
	xor	ecx, ecx
	nop	
	mov	rdx, qword ptr [rbp - 0x500]
	mov	rdx, qword ptr [rdx - 0x30]
	lea	rsi, [rsi]
	mov	esi, edx
	mov	rsp, rsp
	sub	ecx, esi
	lea	rdi, [rdi]
	movsxd	rdx, ecx
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 8]
	mov	qword ptr [rdi + 0x38], rdx
	test	al, 1
	jne	.label_182
	jmp	.label_430
.label_196:
	nop	
	xor	eax, eax
	mov	cl, al
	xor	eax, eax
	mov	rdx, qword ptr [rbp - 0x500]
	mov	rdx, qword ptr [rdx - 0x30]
	mov	esi, edx
	sub	eax, esi
	movsxd	rdx, eax
	mov	rdi, qword ptr [rbp - 8]
	mov	qword ptr [rdi + 0x38], rdx
	test	cl, 1
	jne	.label_182
	jmp	.label_430
.label_838:
	mov	al, 1
	lea	rdi, [rdi]
	test	al, 1
	lea	rsi, [rsi]
	jne	.label_1033
	jmp	.label_1039
.label_1033:
	xor	eax, eax
	mov	cl, al
	mov	rsp, rsp
	test	cl, 1
	mov	rsp, rsp
	jne	.label_1043
	jmp	.label_1047
.label_1043:
	mov	al, 1
	mov	rsp, rsp
	test	al, 1
	mov	rbp, rbp
	jne	.label_1049
	jmp	.label_1051
.label_1049:
	mov	rax, qword ptr [rbp - 0x500]
	cmp	qword ptr [rax - 0x30], 0
	jge	.label_1053
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x500]
	movabs	rcx, 0x7fffffffffffffff
	mov	rbp, rbp
	add	rcx, qword ptr [rax - 0x30]
	cmp	rcx, 0
	jl	.label_328
	jmp	.label_363
.label_1053:
	lea	rsi, [rsi]
	xor	eax, eax
	lea	rdi, [rdi]
	mov	ecx, eax
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x500]
	movabs	rsi, 0x8000000000000000
	lea	rsi, [rsi]
	add	rsi, qword ptr [rdx - 0x30]
	nop	
	cmp	rcx, rsi
	lea	rdi, [rdi]
	jl	.label_328
	lea	rdi, [rdi]
	jmp	.label_363
.label_1051:
	lea	rsi, [rsi]
	xor	eax, eax
	nop	
	mov	cl, al
	lea	rsi, [rsi]
	test	cl, 1
	jne	.label_1074
	jmp	.label_1078
.label_1074:
	mov	rbp, rbp
	mov	al, 1
	mov	rsp, rsp
	test	al, 1
	jne	.label_328
	mov	rbp, rbp
	jmp	.label_363
.label_1078:
	mov	rax, qword ptr [rbp - 0x500]
	cmp	qword ptr [rax - 0x30], 0
	lea	rdi, [rdi]
	jge	.label_1086
	lea	rsi, [rsi]
	xor	eax, eax
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x500]
	lea	rdi, [rdi]
	sub	rcx, qword ptr [rdx - 0x30]
	cmp	rcx, 0
	mov	rsp, rsp
	jle	.label_328
	lea	rsi, [rsi]
	jmp	.label_363
.label_1086:
	lea	rdi, [rdi]
	xor	eax, eax
	mov	ecx, eax
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x500]
	mov	rbp, rbp
	cmp	rcx, qword ptr [rdx - 0x30]
	mov	rbp, rbp
	jl	.label_328
.label_363:
	nop	
	movabs	rax, 0x8000000000000000
	xor	ecx, ecx
	mov	rsp, rsp
	mov	edx, ecx
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x500]
	sub	rdx, qword ptr [rsi - 0x30]
	lea	rsi, [rsi]
	cmp	rdx, rax
	mov	rbp, rbp
	jl	.label_328
	movabs	rax, 0x7fffffffffffffff
	lea	rdi, [rdi]
	xor	ecx, ecx
	lea	rsi, [rsi]
	mov	edx, ecx
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x500]
	sub	rdx, qword ptr [rsi - 0x30]
	nop	
	cmp	rax, rdx
	jge	.label_1126
.label_328:
	mov	al, 1
	xor	ecx, ecx
	lea	rsi, [rsi]
	mov	edx, ecx
	mov	rsi, qword ptr [rbp - 0x500]
	sub	rdx, qword ptr [rsi - 0x30]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 8]
	mov	qword ptr [rsi + 0x38], rdx
	test	al, 1
	jne	.label_182
	nop	
	jmp	.label_430
.label_1126:
	lea	rdi, [rdi]
	xor	eax, eax
	mov	cl, al
	xor	eax, eax
	mov	edx, eax
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x500]
	nop	
	sub	rdx, qword ptr [rsi - 0x30]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 8]
	mov	qword ptr [rsi + 0x38], rdx
	nop	
	test	cl, 1
	jne	.label_182
	jmp	.label_430
.label_1047:
	mov	al, 1
	test	al, 1
	mov	rbp, rbp
	jne	.label_1155
	jmp	.label_138
.label_1155:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x500]
	nop	
	cmp	qword ptr [rax - 0x30], 0
	jge	.label_142
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x500]
	lea	rdi, [rdi]
	movabs	rcx, 0x7fffffffffffffff
	add	rcx, qword ptr [rax - 0x30]
	mov	rbp, rbp
	cmp	rcx, 0
	nop	
	jl	.label_154
	nop	
	jmp	.label_190
.label_142:
	nop	
	xor	eax, eax
	lea	rsi, [rsi]
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x500]
	mov	rsp, rsp
	movabs	rsi, 0x8000000000000000
	add	rsi, qword ptr [rdx - 0x30]
	cmp	rcx, rsi
	nop	
	jl	.label_154
	lea	rsi, [rsi]
	jmp	.label_190
.label_138:
	xor	eax, eax
	nop	
	mov	cl, al
	mov	rbp, rbp
	test	cl, 1
	jne	.label_521
	lea	rdi, [rdi]
	jmp	.label_198
.label_521:
	mov	al, 1
	nop	
	test	al, 1
	mov	rsp, rsp
	jne	.label_154
	lea	rdi, [rdi]
	jmp	.label_190
.label_198:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x500]
	nop	
	cmp	qword ptr [rax - 0x30], 0
	jge	.label_208
	mov	rsp, rsp
	xor	eax, eax
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x500]
	mov	rbp, rbp
	sub	rcx, qword ptr [rdx - 0x30]
	cmp	rcx, 0
	jle	.label_154
	jmp	.label_190
.label_208:
	mov	rsp, rsp
	xor	eax, eax
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x500]
	lea	rsi, [rsi]
	cmp	rcx, qword ptr [rdx - 0x30]
	jl	.label_154
.label_190:
	lea	rdi, [rdi]
	movabs	rax, 0x8000000000000000
	mov	rsp, rsp
	xor	ecx, ecx
	mov	edx, ecx
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x500]
	nop	
	sub	rdx, qword ptr [rsi - 0x30]
	cmp	rdx, rax
	lea	rdi, [rdi]
	jl	.label_154
	lea	rsi, [rsi]
	movabs	rax, 0x7fffffffffffffff
	xor	ecx, ecx
	nop	
	mov	edx, ecx
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x500]
	mov	rbp, rbp
	sub	rdx, qword ptr [rsi - 0x30]
	cmp	rax, rdx
	mov	rbp, rbp
	jge	.label_259
.label_154:
	mov	rbp, rbp
	mov	al, 1
	xor	ecx, ecx
	mov	edx, ecx
	mov	rsi, qword ptr [rbp - 0x500]
	mov	rsp, rsp
	sub	rdx, qword ptr [rsi - 0x30]
	mov	rsi, qword ptr [rbp - 8]
	nop	
	mov	qword ptr [rsi + 0x38], rdx
	mov	rsp, rsp
	test	al, 1
	jne	.label_182
	mov	rsp, rsp
	jmp	.label_430
.label_259:
	xor	eax, eax
	mov	cl, al
	lea	rdi, [rdi]
	xor	eax, eax
	mov	rsp, rsp
	mov	edx, eax
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x500]
	sub	rdx, qword ptr [rsi - 0x30]
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 8]
	mov	qword ptr [rsi + 0x38], rdx
	test	cl, 1
	lea	rsi, [rsi]
	jne	.label_182
	lea	rdi, [rdi]
	jmp	.label_430
.label_1039:
	xor	eax, eax
	mov	cl, al
	nop	
	test	cl, 1
	lea	rdi, [rdi]
	jne	.label_877
	jmp	.label_305
.label_877:
	lea	rsi, [rsi]
	mov	al, 1
	lea	rsi, [rsi]
	test	al, 1
	jne	.label_307
	lea	rsi, [rsi]
	jmp	.label_313
.label_307:
	mov	rax, qword ptr [rbp - 0x500]
	nop	
	cmp	qword ptr [rax - 0x30], 0
	lea	rsi, [rsi]
	jge	.label_316
	mov	rax, qword ptr [rbp - 0x500]
	mov	rbp, rbp
	movabs	rcx, 0x7fffffffffffffff
	lea	rdi, [rdi]
	add	rcx, qword ptr [rax - 0x30]
	cmp	rcx, 0
	nop	
	jl	.label_325
	jmp	.label_337
.label_316:
	xor	eax, eax
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x500]
	mov	rbp, rbp
	movabs	rsi, 0x8000000000000000
	add	rsi, qword ptr [rdx - 0x30]
	cmp	rcx, rsi
	mov	rsp, rsp
	jl	.label_325
	jmp	.label_337
.label_313:
	xor	eax, eax
	mov	rsp, rsp
	mov	cl, al
	mov	rsp, rsp
	test	cl, 1
	lea	rdi, [rdi]
	jne	.label_1075
	mov	rbp, rbp
	jmp	.label_354
.label_1075:
	mov	al, 1
	mov	rsp, rsp
	test	al, 1
	jne	.label_325
	mov	rbp, rbp
	jmp	.label_337
.label_354:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x500]
	mov	rbp, rbp
	cmp	qword ptr [rax - 0x30], 0
	lea	rdi, [rdi]
	jge	.label_501
	mov	rsp, rsp
	xor	eax, eax
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x500]
	sub	rcx, qword ptr [rdx - 0x30]
	cmp	rcx, 0
	jle	.label_325
	nop	
	jmp	.label_337
.label_501:
	mov	rsp, rsp
	xor	eax, eax
	mov	rbp, rbp
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x500]
	mov	rsp, rsp
	cmp	rcx, qword ptr [rdx - 0x30]
	nop	
	jl	.label_325
.label_337:
	movabs	rax, 0x8000000000000000
	xor	ecx, ecx
	nop	
	mov	edx, ecx
	nop	
	mov	rsi, qword ptr [rbp - 0x500]
	mov	rbp, rbp
	sub	rdx, qword ptr [rsi - 0x30]
	cmp	rdx, rax
	jl	.label_325
	movabs	rax, 0x7fffffffffffffff
	xor	ecx, ecx
	mov	rsp, rsp
	mov	edx, ecx
	mov	rsi, qword ptr [rbp - 0x500]
	lea	rdi, [rdi]
	sub	rdx, qword ptr [rsi - 0x30]
	lea	rsi, [rsi]
	cmp	rax, rdx
	lea	rdi, [rdi]
	jge	.label_391
.label_325:
	mov	al, 1
	lea	rdi, [rdi]
	xor	ecx, ecx
	lea	rsi, [rsi]
	mov	edx, ecx
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x500]
	sub	rdx, qword ptr [rsi - 0x30]
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 8]
	mov	qword ptr [rsi + 0x38], rdx
	lea	rsi, [rsi]
	test	al, 1
	lea	rdi, [rdi]
	jne	.label_182
	lea	rdi, [rdi]
	jmp	.label_430
.label_391:
	mov	rbp, rbp
	xor	eax, eax
	lea	rsi, [rsi]
	mov	cl, al
	nop	
	xor	eax, eax
	mov	edx, eax
	mov	rsi, qword ptr [rbp - 0x500]
	sub	rdx, qword ptr [rsi - 0x30]
	mov	rsi, qword ptr [rbp - 8]
	mov	qword ptr [rsi + 0x38], rdx
	test	cl, 1
	jne	.label_182
	mov	rbp, rbp
	jmp	.label_430
.label_305:
	mov	al, 1
	mov	rbp, rbp
	test	al, 1
	jne	.label_432
	jmp	.label_437
.label_432:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x500]
	cmp	qword ptr [rax - 0x30], 0
	lea	rdi, [rdi]
	jge	.label_439
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x500]
	nop	
	movabs	rcx, 0x7fffffffffffffff
	lea	rsi, [rsi]
	add	rcx, qword ptr [rax - 0x30]
	cmp	rcx, 0
	lea	rsi, [rsi]
	jl	.label_361
	jmp	.label_457
.label_439:
	xor	eax, eax
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x500]
	nop	
	movabs	rsi, 0x8000000000000000
	add	rsi, qword ptr [rdx - 0x30]
	mov	rbp, rbp
	cmp	rcx, rsi
	jl	.label_361
	mov	rsp, rsp
	jmp	.label_457
.label_437:
	xor	eax, eax
	mov	cl, al
	lea	rdi, [rdi]
	test	cl, 1
	jne	.label_460
	lea	rsi, [rsi]
	jmp	.label_467
.label_460:
	mov	rbp, rbp
	mov	al, 1
	test	al, 1
	jne	.label_361
	nop	
	jmp	.label_457
.label_467:
	mov	rax, qword ptr [rbp - 0x500]
	mov	rbp, rbp
	cmp	qword ptr [rax - 0x30], 0
	nop	
	jge	.label_475
	mov	rsp, rsp
	xor	eax, eax
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x500]
	mov	rbp, rbp
	sub	rcx, qword ptr [rdx - 0x30]
	cmp	rcx, 0
	lea	rsi, [rsi]
	jle	.label_361
	mov	rsp, rsp
	jmp	.label_457
.label_475:
	nop	
	xor	eax, eax
	mov	rsp, rsp
	mov	ecx, eax
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x500]
	cmp	rcx, qword ptr [rdx - 0x30]
	jl	.label_361
.label_457:
	movabs	rax, 0x8000000000000000
	mov	rsp, rsp
	xor	ecx, ecx
	mov	edx, ecx
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x500]
	sub	rdx, qword ptr [rsi - 0x30]
	mov	rbp, rbp
	cmp	rdx, rax
	jl	.label_361
	mov	rbp, rbp
	movabs	rax, 0x7fffffffffffffff
	xor	ecx, ecx
	mov	rsp, rsp
	mov	edx, ecx
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x500]
	sub	rdx, qword ptr [rsi - 0x30]
	mov	rbp, rbp
	cmp	rax, rdx
	jge	.label_517
.label_361:
	mov	al, 1
	mov	rbp, rbp
	xor	ecx, ecx
	mov	edx, ecx
	mov	rsi, qword ptr [rbp - 0x500]
	sub	rdx, qword ptr [rsi - 0x30]
	mov	rsi, qword ptr [rbp - 8]
	mov	qword ptr [rsi + 0x38], rdx
	nop	
	test	al, 1
	lea	rdi, [rdi]
	jne	.label_182
	nop	
	jmp	.label_430
.label_517:
	lea	rsi, [rsi]
	xor	eax, eax
	mov	cl, al
	lea	rdi, [rdi]
	xor	eax, eax
	mov	edx, eax
	mov	rsi, qword ptr [rbp - 0x500]
	sub	rdx, qword ptr [rsi - 0x30]
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 8]
	nop	
	mov	qword ptr [rsi + 0x38], rdx
	test	cl, 1
	jne	.label_182
	lea	rsi, [rsi]
	jmp	.label_430
.label_182:
	lea	rsi, [rsi]
	jmp	.label_177
.label_430:
	xor	eax, eax
	mov	cl, al
	mov	rsp, rsp
	test	cl, 1
	jne	.label_560
	jmp	.label_563
.label_560:
	xor	eax, eax
	mov	rbp, rbp
	mov	cl, al
	nop	
	test	cl, 1
	nop	
	jne	.label_564
	jmp	.label_568
.label_564:
	mov	rsp, rsp
	mov	al, 1
	mov	rbp, rbp
	test	al, 1
	mov	rsp, rsp
	jne	.label_571
	jmp	.label_576
.label_571:
	mov	rax, qword ptr [rbp - 0x500]
	mov	rax, qword ptr [rax + 8]
	nop	
	mov	cl, al
	movsx	edx, cl
	cmp	edx, 0
	lea	rdi, [rdi]
	jge	.label_579
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x500]
	mov	rax, qword ptr [rax + 8]
	mov	cl, al
	mov	rsp, rsp
	movsx	edx, cl
	add	edx, 0x7fffffff
	cmp	edx, 0
	lea	rdi, [rdi]
	jl	.label_590
	jmp	.label_597
.label_579:
	mov	rbp, rbp
	xor	eax, eax
	mov	rcx, qword ptr [rbp - 0x500]
	mov	rcx, qword ptr [rcx + 8]
	nop	
	mov	dl, cl
	movsx	esi, dl
	mov	rsp, rsp
	add	esi, 0x80000000
	lea	rdi, [rdi]
	cmp	eax, esi
	lea	rsi, [rsi]
	jl	.label_590
	jmp	.label_597
.label_576:
	xor	eax, eax
	mov	cl, al
	mov	rbp, rbp
	test	cl, 1
	lea	rdi, [rdi]
	jne	.label_612
	jmp	.label_616
.label_612:
	mov	rsp, rsp
	mov	al, 1
	test	al, 1
	jne	.label_590
	lea	rsi, [rsi]
	jmp	.label_597
.label_616:
	mov	rax, qword ptr [rbp - 0x500]
	mov	rax, qword ptr [rax + 8]
	mov	cl, al
	mov	rbp, rbp
	movsx	edx, cl
	cmp	edx, 0
	nop	
	jge	.label_623
	lea	rsi, [rsi]
	xor	eax, eax
	mov	rcx, qword ptr [rbp - 0x500]
	mov	rbp, rbp
	mov	rcx, qword ptr [rcx + 8]
	mov	dl, cl
	movsx	esi, dl
	mov	rsp, rsp
	sub	eax, esi
	cmp	eax, 0
	mov	rbp, rbp
	jle	.label_590
	lea	rdi, [rdi]
	jmp	.label_597
.label_623:
	mov	rbp, rbp
	xor	eax, eax
	mov	rcx, qword ptr [rbp - 0x500]
	mov	rcx, qword ptr [rcx + 8]
	mov	dl, cl
	movsx	esi, dl
	cmp	eax, esi
	jl	.label_590
.label_597:
	xor	eax, eax
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x500]
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
	jl	.label_590
	mov	eax, 0x7f
	xor	ecx, ecx
	mov	rdx, qword ptr [rbp - 0x500]
	mov	rsp, rsp
	mov	rdx, qword ptr [rdx + 8]
	lea	rsi, [rsi]
	mov	sil, dl
	movsx	edi, sil
	sub	ecx, edi
	lea	rsi, [rsi]
	cmp	eax, ecx
	jge	.label_657
.label_590:
	mov	al, 1
	xor	ecx, ecx
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x500]
	mov	rsp, rsp
	mov	rdx, qword ptr [rdx + 8]
	mov	sil, dl
	movsx	edi, sil
	sub	ecx, edi
	mov	rbp, rbp
	mov	sil, cl
	movsx	rdx, sil
	mov	r8, qword ptr [rbp - 8]
	mov	rbp, rbp
	mov	qword ptr [r8 + 0x40], rdx
	test	al, 1
	nop	
	jne	.label_183
	mov	rbp, rbp
	jmp	.label_134
.label_657:
	xor	eax, eax
	mov	rbp, rbp
	mov	cl, al
	xor	eax, eax
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x500]
	mov	rdx, qword ptr [rdx + 8]
	lea	rsi, [rsi]
	mov	sil, dl
	movsx	edi, sil
	lea	rsi, [rsi]
	sub	eax, edi
	mov	rbp, rbp
	mov	sil, al
	movsx	rdx, sil
	mov	r8, qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	qword ptr [r8 + 0x40], rdx
	lea	rdi, [rdi]
	test	cl, 1
	lea	rsi, [rsi]
	jne	.label_183
	mov	rsp, rsp
	jmp	.label_134
.label_568:
	mov	al, 1
	test	al, 1
	mov	rsp, rsp
	jne	.label_698
	mov	rbp, rbp
	jmp	.label_700
.label_698:
	mov	rax, qword ptr [rbp - 0x500]
	cmp	qword ptr [rax + 8], 0
	jge	.label_702
	mov	rax, qword ptr [rbp - 0x500]
	lea	rsi, [rsi]
	movabs	rcx, 0x7fffffffffffffff
	add	rcx, qword ptr [rax + 8]
	cmp	rcx, 0
	jl	.label_366
	jmp	.label_509
.label_702:
	lea	rdi, [rdi]
	xor	eax, eax
	lea	rdi, [rdi]
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x500]
	movabs	rsi, 0x8000000000000000
	add	rsi, qword ptr [rdx + 8]
	mov	rsp, rsp
	cmp	rcx, rsi
	jl	.label_366
	jmp	.label_509
.label_700:
	xor	eax, eax
	lea	rsi, [rsi]
	mov	cl, al
	lea	rdi, [rdi]
	test	cl, 1
	jne	.label_722
	jmp	.label_1020
.label_722:
	mov	rbp, rbp
	mov	al, 1
	test	al, 1
	mov	rbp, rbp
	jne	.label_366
	mov	rbp, rbp
	jmp	.label_509
.label_1020:
	mov	rax, qword ptr [rbp - 0x500]
	cmp	qword ptr [rax + 8], 0
	jge	.label_733
	mov	rbp, rbp
	xor	eax, eax
	mov	ecx, eax
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x500]
	nop	
	sub	rcx, qword ptr [rdx + 8]
	lea	rsi, [rsi]
	cmp	rcx, 0
	jle	.label_366
	jmp	.label_509
.label_733:
	lea	rdi, [rdi]
	xor	eax, eax
	mov	rsp, rsp
	mov	ecx, eax
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x500]
	lea	rsi, [rsi]
	cmp	rcx, qword ptr [rdx + 8]
	jl	.label_366
.label_509:
	lea	rdi, [rdi]
	xor	eax, eax
	mov	ecx, eax
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x500]
	nop	
	sub	rcx, qword ptr [rdx + 8]
	cmp	rcx, -0x80
	jl	.label_366
	mov	eax, 0x7f
	lea	rdi, [rdi]
	mov	ecx, eax
	mov	rsp, rsp
	xor	eax, eax
	mov	edx, eax
	mov	rsi, qword ptr [rbp - 0x500]
	nop	
	sub	rdx, qword ptr [rsi + 8]
	lea	rdi, [rdi]
	cmp	rcx, rdx
	jge	.label_775
.label_366:
	mov	al, 1
	xor	ecx, ecx
	mov	rdx, qword ptr [rbp - 0x500]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rdx + 8]
	lea	rdi, [rdi]
	mov	esi, edx
	sub	ecx, esi
	mov	rsp, rsp
	mov	dil, cl
	movsx	rdx, dil
	mov	r8, qword ptr [rbp - 8]
	nop	
	mov	qword ptr [r8 + 0x40], rdx
	test	al, 1
	jne	.label_183
	jmp	.label_134
.label_775:
	xor	eax, eax
	mov	cl, al
	mov	rsp, rsp
	xor	eax, eax
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x500]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rdx + 8]
	mov	esi, edx
	lea	rdi, [rdi]
	sub	eax, esi
	mov	dil, al
	lea	rdi, [rdi]
	movsx	rdx, dil
	mov	r8, qword ptr [rbp - 8]
	mov	rbp, rbp
	mov	qword ptr [r8 + 0x40], rdx
	test	cl, 1
	lea	rdi, [rdi]
	jne	.label_183
	nop	
	jmp	.label_134
.label_563:
	mov	rbp, rbp
	xor	eax, eax
	mov	rsp, rsp
	mov	cl, al
	test	cl, 1
	jne	.label_807
	lea	rsi, [rsi]
	jmp	.label_809
.label_807:
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	mov	rsp, rsp
	jne	.label_813
	jmp	.label_1017
.label_813:
	lea	rdi, [rdi]
	mov	al, 1
	mov	rsp, rsp
	test	al, 1
	jne	.label_816
	lea	rdi, [rdi]
	jmp	.label_819
.label_816:
	mov	rax, qword ptr [rbp - 0x500]
	mov	rax, qword ptr [rax + 8]
	mov	cx, ax
	lea	rsi, [rsi]
	movsx	edx, cx
	lea	rdi, [rdi]
	cmp	edx, 0
	mov	rsp, rsp
	jge	.label_822
	mov	rax, qword ptr [rbp - 0x500]
	mov	rax, qword ptr [rax + 8]
	nop	
	mov	cx, ax
	movsx	edx, cx
	add	edx, 0x7fffffff
	mov	rbp, rbp
	cmp	edx, 0
	lea	rdi, [rdi]
	jl	.label_825
	jmp	.label_833
.label_822:
	nop	
	xor	eax, eax
	mov	rcx, qword ptr [rbp - 0x500]
	mov	rbp, rbp
	mov	rcx, qword ptr [rcx + 8]
	lea	rsi, [rsi]
	mov	dx, cx
	movsx	esi, dx
	add	esi, 0x80000000
	cmp	eax, esi
	jl	.label_825
	mov	rbp, rbp
	jmp	.label_833
.label_819:
	lea	rsi, [rsi]
	xor	eax, eax
	nop	
	mov	cl, al
	nop	
	test	cl, 1
	jne	.label_844
	lea	rsi, [rsi]
	jmp	.label_848
.label_844:
	lea	rdi, [rdi]
	mov	al, 1
	nop	
	test	al, 1
	jne	.label_825
	nop	
	jmp	.label_833
.label_848:
	mov	rax, qword ptr [rbp - 0x500]
	mov	rbp, rbp
	mov	rax, qword ptr [rax + 8]
	mov	rbp, rbp
	mov	cx, ax
	movsx	edx, cx
	cmp	edx, 0
	jge	.label_539
	xor	eax, eax
	mov	rcx, qword ptr [rbp - 0x500]
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
	jle	.label_825
	lea	rdi, [rdi]
	jmp	.label_833
.label_539:
	xor	eax, eax
	mov	rcx, qword ptr [rbp - 0x500]
	mov	rcx, qword ptr [rcx + 8]
	lea	rdi, [rdi]
	mov	dx, cx
	movsx	esi, dx
	mov	rbp, rbp
	cmp	eax, esi
	jl	.label_825
.label_833:
	xor	eax, eax
	mov	rcx, qword ptr [rbp - 0x500]
	mov	rcx, qword ptr [rcx + 8]
	mov	dx, cx
	mov	rbp, rbp
	movsx	esi, dx
	mov	rbp, rbp
	sub	eax, esi
	lea	rdi, [rdi]
	cmp	eax, 0xffff8000
	nop	
	jl	.label_825
	mov	rsp, rsp
	mov	eax, 0x7fff
	xor	ecx, ecx
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x500]
	mov	rdx, qword ptr [rdx + 8]
	mov	rsp, rsp
	mov	si, dx
	movsx	edi, si
	sub	ecx, edi
	cmp	eax, ecx
	mov	rbp, rbp
	jge	.label_895
.label_825:
	nop	
	mov	al, 1
	nop	
	xor	ecx, ecx
	mov	rdx, qword ptr [rbp - 0x500]
	mov	rdx, qword ptr [rdx + 8]
	nop	
	mov	si, dx
	lea	rsi, [rsi]
	movsx	edi, si
	sub	ecx, edi
	mov	rsp, rsp
	mov	si, cx
	movsx	rdx, si
	mov	r8, qword ptr [rbp - 8]
	mov	qword ptr [r8 + 0x40], rdx
	lea	rdi, [rdi]
	test	al, 1
	mov	rsp, rsp
	jne	.label_183
	jmp	.label_134
.label_895:
	mov	rsp, rsp
	xor	eax, eax
	mov	cl, al
	lea	rsi, [rsi]
	xor	eax, eax
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x500]
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
	mov	r8, qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	qword ptr [r8 + 0x40], rdx
	test	cl, 1
	nop	
	jne	.label_183
	mov	rsp, rsp
	jmp	.label_134
.label_1017:
	mov	al, 1
	test	al, 1
	jne	.label_928
	jmp	.label_730
.label_928:
	mov	rax, qword ptr [rbp - 0x500]
	cmp	qword ptr [rax + 8], 0
	jge	.label_932
	nop	
	mov	rax, qword ptr [rbp - 0x500]
	movabs	rcx, 0x7fffffffffffffff
	add	rcx, qword ptr [rax + 8]
	cmp	rcx, 0
	jl	.label_546
	nop	
	jmp	.label_323
.label_932:
	xor	eax, eax
	mov	rsp, rsp
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x500]
	lea	rdi, [rdi]
	movabs	rsi, 0x8000000000000000
	add	rsi, qword ptr [rdx + 8]
	lea	rdi, [rdi]
	cmp	rcx, rsi
	mov	rbp, rbp
	jl	.label_546
	lea	rdi, [rdi]
	jmp	.label_323
.label_730:
	xor	eax, eax
	lea	rsi, [rsi]
	mov	cl, al
	nop	
	test	cl, 1
	jne	.label_1088
	mov	rbp, rbp
	jmp	.label_910
.label_1088:
	mov	rbp, rbp
	mov	al, 1
	test	al, 1
	jne	.label_546
	jmp	.label_323
.label_910:
	mov	rax, qword ptr [rbp - 0x500]
	nop	
	cmp	qword ptr [rax + 8], 0
	lea	rsi, [rsi]
	jge	.label_962
	lea	rsi, [rsi]
	xor	eax, eax
	lea	rdi, [rdi]
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x500]
	sub	rcx, qword ptr [rdx + 8]
	cmp	rcx, 0
	lea	rsi, [rsi]
	jle	.label_546
	mov	rbp, rbp
	jmp	.label_323
.label_962:
	lea	rsi, [rsi]
	xor	eax, eax
	lea	rsi, [rsi]
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x500]
	lea	rdi, [rdi]
	cmp	rcx, qword ptr [rdx + 8]
	lea	rsi, [rsi]
	jl	.label_546
.label_323:
	nop	
	xor	eax, eax
	lea	rdi, [rdi]
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x500]
	sub	rcx, qword ptr [rdx + 8]
	lea	rsi, [rsi]
	cmp	rcx, -0x8000
	mov	rsp, rsp
	jl	.label_546
	mov	eax, 0x7fff
	lea	rdi, [rdi]
	mov	ecx, eax
	mov	rbp, rbp
	xor	eax, eax
	mov	rsp, rsp
	mov	edx, eax
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x500]
	sub	rdx, qword ptr [rsi + 8]
	cmp	rcx, rdx
	lea	rsi, [rsi]
	jge	.label_1001
.label_546:
	mov	rsp, rsp
	mov	al, 1
	xor	ecx, ecx
	mov	rdx, qword ptr [rbp - 0x500]
	mov	rdx, qword ptr [rdx + 8]
	nop	
	mov	esi, edx
	mov	rbp, rbp
	sub	ecx, esi
	nop	
	mov	di, cx
	movsx	rdx, di
	mov	r8, qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	qword ptr [r8 + 0x40], rdx
	test	al, 1
	jne	.label_183
	jmp	.label_134
.label_1001:
	lea	rdi, [rdi]
	xor	eax, eax
	nop	
	mov	cl, al
	xor	eax, eax
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x500]
	mov	rdx, qword ptr [rdx + 8]
	mov	esi, edx
	sub	eax, esi
	mov	di, ax
	movsx	rdx, di
	mov	r8, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	qword ptr [r8 + 0x40], rdx
	mov	rbp, rbp
	test	cl, 1
	jne	.label_183
	jmp	.label_134
.label_809:
	lea	rdi, [rdi]
	xor	eax, eax
	lea	rsi, [rsi]
	mov	cl, al
	test	cl, 1
	jne	.label_1032
	jmp	.label_425
.label_1032:
	xor	eax, eax
	mov	rbp, rbp
	mov	cl, al
	lea	rsi, [rsi]
	test	cl, 1
	jne	.label_1034
	jmp	.label_1042
.label_1034:
	mov	al, 1
	mov	rsp, rsp
	test	al, 1
	lea	rsi, [rsi]
	jne	.label_918
	jmp	.label_503
.label_918:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x500]
	mov	rbp, rbp
	mov	rax, qword ptr [rax + 8]
	mov	rsp, rsp
	mov	ecx, eax
	cmp	ecx, 0
	jge	.label_1050
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x500]
	mov	rax, qword ptr [rax + 8]
	mov	ecx, eax
	add	ecx, 0x7fffffff
	cmp	ecx, 0
	mov	rbp, rbp
	jl	.label_1035
	jmp	.label_211
.label_1050:
	nop	
	xor	eax, eax
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x500]
	mov	rcx, qword ptr [rcx + 8]
	mov	edx, ecx
	lea	rdi, [rdi]
	add	edx, 0x80000000
	nop	
	cmp	eax, edx
	mov	rbp, rbp
	jl	.label_1035
	jmp	.label_211
.label_503:
	lea	rdi, [rdi]
	xor	eax, eax
	lea	rsi, [rsi]
	mov	cl, al
	test	cl, 1
	mov	rbp, rbp
	jne	.label_916
	lea	rsi, [rsi]
	jmp	.label_1073
.label_916:
	mov	al, 1
	test	al, 1
	lea	rsi, [rsi]
	jne	.label_1035
	jmp	.label_211
.label_1073:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x500]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax + 8]
	lea	rdi, [rdi]
	mov	ecx, eax
	cmp	ecx, 0
	mov	rbp, rbp
	jge	.label_265
	lea	rsi, [rsi]
	xor	eax, eax
	mov	rcx, qword ptr [rbp - 0x500]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rcx + 8]
	nop	
	mov	edx, ecx
	lea	rsi, [rsi]
	sub	eax, edx
	cmp	eax, 0
	jle	.label_1035
	jmp	.label_211
.label_265:
	mov	rsp, rsp
	xor	eax, eax
	nop	
	mov	rcx, qword ptr [rbp - 0x500]
	mov	rsp, rsp
	mov	rcx, qword ptr [rcx + 8]
	mov	rbp, rbp
	mov	edx, ecx
	cmp	eax, edx
	jl	.label_1035
.label_211:
	xor	eax, eax
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x500]
	mov	rcx, qword ptr [rcx + 8]
	mov	edx, ecx
	mov	rsp, rsp
	sub	eax, edx
	cmp	eax, 0x80000000
	mov	rsp, rsp
	jl	.label_1035
	mov	eax, 0x7fffffff
	lea	rsi, [rsi]
	xor	ecx, ecx
	mov	rdx, qword ptr [rbp - 0x500]
	mov	rdx, qword ptr [rdx + 8]
	mov	esi, edx
	sub	ecx, esi
	mov	rbp, rbp
	cmp	eax, ecx
	mov	rbp, rbp
	jge	.label_1119
.label_1035:
	mov	al, 1
	xor	ecx, ecx
	mov	rdx, qword ptr [rbp - 0x500]
	mov	rdx, qword ptr [rdx + 8]
	mov	esi, edx
	sub	ecx, esi
	mov	rsp, rsp
	movsxd	rdx, ecx
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	qword ptr [rdi + 0x40], rdx
	mov	rbp, rbp
	test	al, 1
	mov	rbp, rbp
	jne	.label_183
	lea	rdi, [rdi]
	jmp	.label_134
.label_1119:
	xor	eax, eax
	nop	
	mov	cl, al
	nop	
	xor	eax, eax
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x500]
	mov	rdx, qword ptr [rdx + 8]
	mov	rsp, rsp
	mov	esi, edx
	lea	rsi, [rsi]
	sub	eax, esi
	movsxd	rdx, eax
	nop	
	mov	rdi, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	mov	qword ptr [rdi + 0x40], rdx
	test	cl, 1
	lea	rdi, [rdi]
	jne	.label_183
	mov	rsp, rsp
	jmp	.label_134
.label_1042:
	mov	al, 1
	nop	
	test	al, 1
	jne	.label_583
	lea	rdi, [rdi]
	jmp	.label_139
.label_583:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x500]
	nop	
	cmp	qword ptr [rax + 8], 0
	jge	.label_145
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x500]
	lea	rsi, [rsi]
	movabs	rcx, 0x7fffffffffffffff
	add	rcx, qword ptr [rax + 8]
	mov	rsp, rsp
	cmp	rcx, 0
	jl	.label_150
	nop	
	jmp	.label_176
.label_145:
	xor	eax, eax
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x500]
	movabs	rsi, 0x8000000000000000
	add	rsi, qword ptr [rdx + 8]
	mov	rsp, rsp
	cmp	rcx, rsi
	nop	
	jl	.label_150
	jmp	.label_176
.label_139:
	mov	rbp, rbp
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	lea	rsi, [rsi]
	jne	.label_192
	jmp	.label_670
.label_192:
	mov	al, 1
	mov	rbp, rbp
	test	al, 1
	mov	rbp, rbp
	jne	.label_150
	lea	rsi, [rsi]
	jmp	.label_176
.label_670:
	mov	rax, qword ptr [rbp - 0x500]
	nop	
	cmp	qword ptr [rax + 8], 0
	nop	
	jge	.label_206
	nop	
	xor	eax, eax
	mov	rbp, rbp
	mov	ecx, eax
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x500]
	sub	rcx, qword ptr [rdx + 8]
	cmp	rcx, 0
	jle	.label_150
	jmp	.label_176
.label_206:
	xor	eax, eax
	lea	rdi, [rdi]
	mov	ecx, eax
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x500]
	lea	rsi, [rsi]
	cmp	rcx, qword ptr [rdx + 8]
	lea	rsi, [rsi]
	jl	.label_150
.label_176:
	xor	eax, eax
	nop	
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x500]
	sub	rcx, qword ptr [rdx + 8]
	nop	
	cmp	rcx, -0x80000000
	nop	
	jl	.label_150
	mov	eax, 0x7fffffff
	mov	ecx, eax
	xor	eax, eax
	mov	rsp, rsp
	mov	edx, eax
	mov	rsi, qword ptr [rbp - 0x500]
	lea	rdi, [rdi]
	sub	rdx, qword ptr [rsi + 8]
	cmp	rcx, rdx
	jge	.label_768
.label_150:
	mov	al, 1
	mov	rsp, rsp
	xor	ecx, ecx
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x500]
	mov	rdx, qword ptr [rdx + 8]
	mov	esi, edx
	lea	rdi, [rdi]
	sub	ecx, esi
	movsxd	rdx, ecx
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 8]
	nop	
	mov	qword ptr [rdi + 0x40], rdx
	mov	rsp, rsp
	test	al, 1
	nop	
	jne	.label_183
	mov	rsp, rsp
	jmp	.label_134
.label_768:
	mov	rsp, rsp
	xor	eax, eax
	lea	rdi, [rdi]
	mov	cl, al
	xor	eax, eax
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x500]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rdx + 8]
	mov	rbp, rbp
	mov	esi, edx
	mov	rbp, rbp
	sub	eax, esi
	movsxd	rdx, eax
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 8]
	mov	qword ptr [rdi + 0x40], rdx
	nop	
	test	cl, 1
	jne	.label_183
	jmp	.label_134
.label_425:
	lea	rdi, [rdi]
	mov	al, 1
	lea	rdi, [rdi]
	test	al, 1
	jne	.label_300
	mov	rsp, rsp
	jmp	.label_304
.label_300:
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_905
	jmp	.label_311
.label_905:
	lea	rsi, [rsi]
	mov	al, 1
	test	al, 1
	mov	rbp, rbp
	jne	.label_315
	jmp	.label_320
.label_315:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x500]
	cmp	qword ptr [rax + 8], 0
	lea	rsi, [rsi]
	jge	.label_322
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x500]
	movabs	rcx, 0x7fffffffffffffff
	add	rcx, qword ptr [rax + 8]
	nop	
	cmp	rcx, 0
	jl	.label_331
	jmp	.label_172
.label_322:
	xor	eax, eax
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x500]
	lea	rdi, [rdi]
	movabs	rsi, 0x8000000000000000
	add	rsi, qword ptr [rdx + 8]
	cmp	rcx, rsi
	lea	rsi, [rsi]
	jl	.label_331
	nop	
	jmp	.label_172
.label_320:
	xor	eax, eax
	lea	rdi, [rdi]
	mov	cl, al
	mov	rbp, rbp
	test	cl, 1
	jne	.label_350
	lea	rdi, [rdi]
	jmp	.label_358
.label_350:
	mov	al, 1
	mov	rsp, rsp
	test	al, 1
	jne	.label_331
	lea	rsi, [rsi]
	jmp	.label_172
.label_358:
	mov	rax, qword ptr [rbp - 0x500]
	nop	
	cmp	qword ptr [rax + 8], 0
	jge	.label_364
	lea	rsi, [rsi]
	xor	eax, eax
	lea	rdi, [rdi]
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x500]
	lea	rsi, [rsi]
	sub	rcx, qword ptr [rdx + 8]
	mov	rbp, rbp
	cmp	rcx, 0
	nop	
	jle	.label_331
	mov	rsp, rsp
	jmp	.label_172
.label_364:
	lea	rsi, [rsi]
	xor	eax, eax
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x500]
	cmp	rcx, qword ptr [rdx + 8]
	mov	rbp, rbp
	jl	.label_331
.label_172:
	movabs	rax, 0x8000000000000000
	lea	rsi, [rsi]
	xor	ecx, ecx
	mov	edx, ecx
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x500]
	lea	rsi, [rsi]
	sub	rdx, qword ptr [rsi + 8]
	cmp	rdx, rax
	jl	.label_331
	lea	rdi, [rdi]
	movabs	rax, 0x7fffffffffffffff
	lea	rdi, [rdi]
	xor	ecx, ecx
	mov	rsp, rsp
	mov	edx, ecx
	mov	rsi, qword ptr [rbp - 0x500]
	lea	rdi, [rdi]
	sub	rdx, qword ptr [rsi + 8]
	nop	
	cmp	rax, rdx
	jge	.label_397
.label_331:
	mov	al, 1
	xor	ecx, ecx
	mov	rbp, rbp
	mov	edx, ecx
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x500]
	sub	rdx, qword ptr [rsi + 8]
	mov	rsi, qword ptr [rbp - 8]
	mov	qword ptr [rsi + 0x40], rdx
	test	al, 1
	mov	rsp, rsp
	jne	.label_183
	mov	rbp, rbp
	jmp	.label_134
.label_397:
	xor	eax, eax
	lea	rsi, [rsi]
	mov	cl, al
	xor	eax, eax
	lea	rdi, [rdi]
	mov	edx, eax
	mov	rsi, qword ptr [rbp - 0x500]
	lea	rsi, [rsi]
	sub	rdx, qword ptr [rsi + 8]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 8]
	mov	qword ptr [rsi + 0x40], rdx
	test	cl, 1
	lea	rdi, [rdi]
	jne	.label_183
	mov	rsp, rsp
	jmp	.label_134
.label_311:
	mov	rbp, rbp
	mov	al, 1
	nop	
	test	al, 1
	lea	rsi, [rsi]
	jne	.label_438
	nop	
	jmp	.label_814
.label_438:
	mov	rax, qword ptr [rbp - 0x500]
	mov	rsp, rsp
	cmp	qword ptr [rax + 8], 0
	jge	.label_675
	nop	
	mov	rax, qword ptr [rbp - 0x500]
	movabs	rcx, 0x7fffffffffffffff
	add	rcx, qword ptr [rax + 8]
	cmp	rcx, 0
	jl	.label_447
	lea	rsi, [rsi]
	jmp	.label_451
.label_675:
	lea	rsi, [rsi]
	xor	eax, eax
	nop	
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x500]
	movabs	rsi, 0x8000000000000000
	add	rsi, qword ptr [rdx + 8]
	cmp	rcx, rsi
	mov	rbp, rbp
	jl	.label_447
	mov	rbp, rbp
	jmp	.label_451
.label_814:
	xor	eax, eax
	mov	rbp, rbp
	mov	cl, al
	test	cl, 1
	mov	rsp, rsp
	jne	.label_466
	lea	rdi, [rdi]
	jmp	.label_473
.label_466:
	mov	al, 1
	mov	rbp, rbp
	test	al, 1
	lea	rdi, [rdi]
	jne	.label_447
	nop	
	jmp	.label_451
.label_473:
	mov	rax, qword ptr [rbp - 0x500]
	nop	
	cmp	qword ptr [rax + 8], 0
	jge	.label_892
	xor	eax, eax
	mov	rbp, rbp
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x500]
	sub	rcx, qword ptr [rdx + 8]
	cmp	rcx, 0
	jle	.label_447
	lea	rdi, [rdi]
	jmp	.label_451
.label_892:
	xor	eax, eax
	mov	rsp, rsp
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x500]
	cmp	rcx, qword ptr [rdx + 8]
	nop	
	jl	.label_447
.label_451:
	movabs	rax, 0x8000000000000000
	lea	rsi, [rsi]
	xor	ecx, ecx
	mov	rbp, rbp
	mov	edx, ecx
	nop	
	mov	rsi, qword ptr [rbp - 0x500]
	sub	rdx, qword ptr [rsi + 8]
	cmp	rdx, rax
	jl	.label_447
	lea	rdi, [rdi]
	movabs	rax, 0x7fffffffffffffff
	xor	ecx, ecx
	lea	rdi, [rdi]
	mov	edx, ecx
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x500]
	sub	rdx, qword ptr [rsi + 8]
	mov	rbp, rbp
	cmp	rax, rdx
	jge	.label_520
.label_447:
	mov	rbp, rbp
	mov	al, 1
	lea	rsi, [rsi]
	xor	ecx, ecx
	mov	rsp, rsp
	mov	edx, ecx
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x500]
	mov	rbp, rbp
	sub	rdx, qword ptr [rsi + 8]
	mov	rsi, qword ptr [rbp - 8]
	mov	qword ptr [rsi + 0x40], rdx
	lea	rsi, [rsi]
	test	al, 1
	jne	.label_183
	jmp	.label_134
.label_520:
	xor	eax, eax
	lea	rdi, [rdi]
	mov	cl, al
	xor	eax, eax
	lea	rsi, [rsi]
	mov	edx, eax
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x500]
	sub	rdx, qword ptr [rsi + 8]
	mov	rsi, qword ptr [rbp - 8]
	mov	rbp, rbp
	mov	qword ptr [rsi + 0x40], rdx
	lea	rdi, [rdi]
	test	cl, 1
	nop	
	jne	.label_183
	jmp	.label_134
.label_304:
	mov	rsp, rsp
	xor	eax, eax
	mov	cl, al
	lea	rdi, [rdi]
	test	cl, 1
	lea	rsi, [rsi]
	jne	.label_450
	mov	rsp, rsp
	jmp	.label_566
.label_450:
	lea	rdi, [rdi]
	mov	al, 1
	lea	rsi, [rsi]
	test	al, 1
	jne	.label_570
	lea	rdi, [rdi]
	jmp	.label_585
.label_570:
	mov	rax, qword ptr [rbp - 0x500]
	cmp	qword ptr [rax + 8], 0
	mov	rsp, rsp
	jge	.label_578
	nop	
	mov	rax, qword ptr [rbp - 0x500]
	lea	rdi, [rdi]
	movabs	rcx, 0x7fffffffffffffff
	lea	rdi, [rdi]
	add	rcx, qword ptr [rax + 8]
	mov	rsp, rsp
	cmp	rcx, 0
	nop	
	jl	.label_349
	lea	rdi, [rdi]
	jmp	.label_373
.label_578:
	lea	rsi, [rsi]
	xor	eax, eax
	mov	ecx, eax
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x500]
	nop	
	movabs	rsi, 0x8000000000000000
	mov	rbp, rbp
	add	rsi, qword ptr [rdx + 8]
	cmp	rcx, rsi
	jl	.label_349
	jmp	.label_373
.label_585:
	xor	eax, eax
	nop	
	mov	cl, al
	mov	rsp, rsp
	test	cl, 1
	jne	.label_577
	mov	rsp, rsp
	jmp	.label_874
.label_577:
	mov	al, 1
	lea	rsi, [rsi]
	test	al, 1
	jne	.label_349
	mov	rsp, rsp
	jmp	.label_373
.label_874:
	mov	rax, qword ptr [rbp - 0x500]
	nop	
	cmp	qword ptr [rax + 8], 0
	mov	rsp, rsp
	jge	.label_622
	xor	eax, eax
	mov	ecx, eax
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x500]
	sub	rcx, qword ptr [rdx + 8]
	cmp	rcx, 0
	lea	rdi, [rdi]
	jle	.label_349
	lea	rsi, [rsi]
	jmp	.label_373
.label_622:
	xor	eax, eax
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x500]
	cmp	rcx, qword ptr [rdx + 8]
	nop	
	jl	.label_349
.label_373:
	mov	rbp, rbp
	movabs	rax, 0x8000000000000000
	xor	ecx, ecx
	mov	edx, ecx
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x500]
	lea	rsi, [rsi]
	sub	rdx, qword ptr [rsi + 8]
	lea	rsi, [rsi]
	cmp	rdx, rax
	nop	
	jl	.label_349
	nop	
	movabs	rax, 0x7fffffffffffffff
	mov	rbp, rbp
	xor	ecx, ecx
	nop	
	mov	edx, ecx
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x500]
	mov	rsp, rsp
	sub	rdx, qword ptr [rsi + 8]
	cmp	rax, rdx
	jge	.label_1152
.label_349:
	mov	al, 1
	xor	ecx, ecx
	mov	edx, ecx
	mov	rsi, qword ptr [rbp - 0x500]
	sub	rdx, qword ptr [rsi + 8]
	mov	rsi, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	qword ptr [rsi + 0x40], rdx
	test	al, 1
	lea	rdi, [rdi]
	jne	.label_183
	lea	rdi, [rdi]
	jmp	.label_134
.label_1152:
	mov	rsp, rsp
	xor	eax, eax
	mov	cl, al
	lea	rdi, [rdi]
	xor	eax, eax
	mov	edx, eax
	mov	rsi, qword ptr [rbp - 0x500]
	lea	rdi, [rdi]
	sub	rdx, qword ptr [rsi + 8]
	nop	
	mov	rsi, qword ptr [rbp - 8]
	mov	qword ptr [rsi + 0x40], rdx
	test	cl, 1
	nop	
	jne	.label_183
	jmp	.label_134
.label_566:
	mov	rbp, rbp
	mov	al, 1
	nop	
	test	al, 1
	jne	.label_1006
	lea	rdi, [rdi]
	jmp	.label_764
.label_1006:
	mov	rax, qword ptr [rbp - 0x500]
	mov	rbp, rbp
	cmp	qword ptr [rax + 8], 0
	lea	rdi, [rdi]
	jge	.label_684
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x500]
	movabs	rcx, 0x7fffffffffffffff
	lea	rdi, [rdi]
	add	rcx, qword ptr [rax + 8]
	lea	rsi, [rsi]
	cmp	rcx, 0
	lea	rdi, [rdi]
	jl	.label_308
	jmp	.label_572
.label_684:
	mov	rsp, rsp
	xor	eax, eax
	mov	ecx, eax
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x500]
	movabs	rsi, 0x8000000000000000
	add	rsi, qword ptr [rdx + 8]
	cmp	rcx, rsi
	mov	rsp, rsp
	jl	.label_308
	lea	rdi, [rdi]
	jmp	.label_572
.label_764:
	xor	eax, eax
	nop	
	mov	cl, al
	nop	
	test	cl, 1
	nop	
	jne	.label_707
	mov	rsp, rsp
	jmp	.label_709
.label_707:
	mov	rbp, rbp
	mov	al, 1
	test	al, 1
	jne	.label_308
	jmp	.label_572
.label_709:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x500]
	cmp	qword ptr [rax + 8], 0
	jge	.label_719
	mov	rbp, rbp
	xor	eax, eax
	mov	ecx, eax
	nop	
	mov	rdx, qword ptr [rbp - 0x500]
	mov	rbp, rbp
	sub	rcx, qword ptr [rdx + 8]
	mov	rbp, rbp
	cmp	rcx, 0
	jle	.label_308
	mov	rbp, rbp
	jmp	.label_572
.label_719:
	xor	eax, eax
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x500]
	lea	rdi, [rdi]
	cmp	rcx, qword ptr [rdx + 8]
	jl	.label_308
.label_572:
	movabs	rax, 0x8000000000000000
	xor	ecx, ecx
	nop	
	mov	edx, ecx
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x500]
	lea	rsi, [rsi]
	sub	rdx, qword ptr [rsi + 8]
	mov	rsp, rsp
	cmp	rdx, rax
	jl	.label_308
	movabs	rax, 0x7fffffffffffffff
	xor	ecx, ecx
	mov	edx, ecx
	nop	
	mov	rsi, qword ptr [rbp - 0x500]
	nop	
	sub	rdx, qword ptr [rsi + 8]
	nop	
	cmp	rax, rdx
	jge	.label_903
.label_308:
	mov	rbp, rbp
	mov	al, 1
	lea	rdi, [rdi]
	xor	ecx, ecx
	mov	edx, ecx
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x500]
	nop	
	sub	rdx, qword ptr [rsi + 8]
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 8]
	nop	
	mov	qword ptr [rsi + 0x40], rdx
	test	al, 1
	jne	.label_183
	mov	rbp, rbp
	jmp	.label_134
.label_903:
	xor	eax, eax
	lea	rdi, [rdi]
	mov	cl, al
	lea	rsi, [rsi]
	xor	eax, eax
	lea	rdi, [rdi]
	mov	edx, eax
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x500]
	sub	rdx, qword ptr [rsi + 8]
	mov	rsi, qword ptr [rbp - 8]
	mov	qword ptr [rsi + 0x40], rdx
	nop	
	test	cl, 1
	jne	.label_183
	mov	rsp, rsp
	jmp	.label_134
.label_183:
	mov	rbp, rbp
	jmp	.label_177
.label_134:
	jmp	.label_200
.label_5230:
	mov	rdi, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x500]
	add	rax, -0x38
	mov	rcx, qword ptr [rbp - 0x500]
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
	jne	.label_812
	lea	rdi, [rdi]
	jmp	.label_177
.label_812:
	jmp	.label_200
.label_5231:
	mov	eax, 1
	mov	rdi, qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x500]
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
	mov	dword ptr [rbp - 0xbc0], eax
	call	apply_relative_time
	nop	
	test	al, 1
	jne	.label_828
	jmp	.label_177
.label_828:
	nop	
	jmp	.label_200
.label_5232:
	mov	eax, 1
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 8]
	nop	
	mov	rcx, qword ptr [rbp - 0x500]
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
	mov	dword ptr [rbp - 0xbc4], eax
	mov	rsp, rsp
	call	apply_relative_time
	test	al, 1
	mov	rbp, rbp
	jne	.label_471
	jmp	.label_177
.label_471:
	jmp	.label_200
.label_5233:
	mov	eax, 0x38
	mov	rsp, rsp
	mov	edx, eax
	lea	rcx, [rbp - 0x5c0]
	lea	rsi, [rbp - 0x550]
	mov	qword ptr [rbp - 0x5c0], 0
	nop	
	mov	qword ptr [rbp - 0x5b8], 0
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x5b0], 0
	mov	qword ptr [rbp - 0x5a8], 0
	mov	qword ptr [rbp - 0x5a0], 0
	mov	qword ptr [rbp - 0x598], 0
	mov	dword ptr [rbp - 0x590], 0
	mov	rdi, rsi
	mov	rsi, rcx
	mov	rsp, rsp
	call	memcpy
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x500]
	mov	rbp, rbp
	mov	rcx, qword ptr [rcx - 0x38]
	mov	qword ptr [rbp - 0x550], rcx
	jmp	.label_200
.label_5234:
	mov	eax, 0x38
	mov	edx, eax
	lea	rcx, [rbp - 0x5f8]
	lea	rdi, [rdi]
	lea	rsi, [rbp - 0x550]
	mov	qword ptr [rbp - 0x5f8], 0
	mov	qword ptr [rbp - 0x5f0], 0
	mov	qword ptr [rbp - 0x5e8], 0
	mov	qword ptr [rbp - 0x5e0], 0
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x5d8], 0
	mov	qword ptr [rbp - 0x5d0], 0
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x5c8], 0
	mov	rdi, rsi
	mov	rsi, rcx
	call	memcpy
	mov	rcx, qword ptr [rbp - 0x500]
	mov	rsp, rsp
	mov	rcx, qword ptr [rcx - 0x30]
	nop	
	mov	qword ptr [rbp - 0x550], rcx
	jmp	.label_200
.label_5235:
	mov	rbp, rbp
	mov	eax, 0x38
	mov	edx, eax
	lea	rcx, [rbp - 0x630]
	nop	
	lea	rsi, [rbp - 0x550]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x630], 0
	mov	qword ptr [rbp - 0x628], 0
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x620], 0
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x618], 0
	mov	qword ptr [rbp - 0x610], 0
	mov	qword ptr [rbp - 0x608], 0
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x600], 0
	mov	rsp, rsp
	mov	rdi, rsi
	mov	rsi, rcx
	call	memcpy
	mov	qword ptr [rbp - 0x550], 1
	jmp	.label_200
.label_5236:
	mov	eax, 0x38
	mov	rsp, rsp
	mov	edx, eax
	lea	rcx, [rbp - 0x668]
	mov	rbp, rbp
	lea	rsi, [rbp - 0x550]
	mov	qword ptr [rbp - 0x668], 0
	nop	
	mov	qword ptr [rbp - 0x660], 0
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x658], 0
	mov	qword ptr [rbp - 0x650], 0
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x648], 0
	nop	
	mov	qword ptr [rbp - 0x640], 0
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x638], 0
	mov	rdi, rsi
	lea	rsi, [rsi]
	mov	rsi, rcx
	call	memcpy
	mov	rcx, qword ptr [rbp - 0x500]
	nop	
	mov	rcx, qword ptr [rcx - 0x38]
	mov	qword ptr [rbp - 0x548], rcx
	nop	
	jmp	.label_200
.label_5237:
	mov	eax, 0x38
	mov	edx, eax
	mov	rsp, rsp
	lea	rcx, [rbp - 0x6a0]
	mov	rsp, rsp
	lea	rsi, [rbp - 0x550]
	mov	qword ptr [rbp - 0x6a0], 0
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x698], 0
	mov	qword ptr [rbp - 0x690], 0
	mov	qword ptr [rbp - 0x688], 0
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x680], 0
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x678], 0
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x670], 0
	mov	rdi, rsi
	mov	rsi, rcx
	lea	rdi, [rdi]
	call	memcpy
	nop	
	mov	rcx, qword ptr [rbp - 0x500]
	mov	rcx, qword ptr [rcx - 0x30]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x548], rcx
	mov	rsp, rsp
	jmp	.label_200
.label_5238:
	mov	eax, 0x38
	lea	rsi, [rsi]
	mov	edx, eax
	mov	rbp, rbp
	lea	rcx, [rbp - 0x6d8]
	lea	rsi, [rbp - 0x550]
	mov	qword ptr [rbp - 0x6d8], 0
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x6d0], 0
	mov	qword ptr [rbp - 0x6c8], 0
	mov	qword ptr [rbp - 0x6c0], 0
	mov	qword ptr [rbp - 0x6b8], 0
	mov	qword ptr [rbp - 0x6b0], 0
	mov	dword ptr [rbp - 0x6a8], 0
	nop	
	mov	rdi, rsi
	lea	rdi, [rdi]
	mov	rsi, rcx
	mov	rbp, rbp
	call	memcpy
	mov	qword ptr [rbp - 0x548], 1
	jmp	.label_200
.label_5239:
	xor	eax, eax
	mov	cl, al
	mov	eax, 0x38
	lea	rsi, [rsi]
	mov	edx, eax
	lea	rsi, [rbp - 0x710]
	lea	rsi, [rsi]
	lea	rdi, [rbp - 0x550]
	mov	qword ptr [rbp - 0x710], 0
	mov	qword ptr [rbp - 0x708], 0
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x700], 0
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x6f8], 0
	mov	qword ptr [rbp - 0x6f0], 0
	mov	qword ptr [rbp - 0x6e8], 0
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x6e0], 0
	nop	
	mov	byte ptr [rbp - 0xbc5], cl
	call	memcpy
	mov	cl, byte ptr [rbp - 0xbc5]
	mov	rsp, rsp
	test	cl, 1
	mov	rsp, rsp
	jne	.label_1071
	mov	rsp, rsp
	jmp	.label_1076
.label_1071:
	lea	rsi, [rsi]
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_734
	jmp	.label_1084
.label_734:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x500]
	mov	rbp, rbp
	mov	rax, qword ptr [rax]
	mov	cl, al
	lea	rsi, [rsi]
	movsx	edx, cl
	mov	rbp, rbp
	cmp	edx, 0
	lea	rdi, [rdi]
	jge	.label_1085
	mov	rax, qword ptr [rbp - 0x500]
	nop	
	mov	rax, qword ptr [rax - 0x38]
	mov	rsp, rsp
	mov	cl, al
	movsx	edx, cl
	cmp	edx, 0
	lea	rsi, [rsi]
	jge	.label_821
	lea	rdi, [rdi]
	mov	eax, 0x7fffffff
	nop	
	mov	rcx, qword ptr [rbp - 0x500]
	mov	rcx, qword ptr [rcx - 0x38]
	lea	rdi, [rdi]
	mov	dl, cl
	lea	rsi, [rsi]
	movsx	esi, dl
	mov	rcx, qword ptr [rbp - 0x500]
	mov	rcx, qword ptr [rcx]
	mov	dl, cl
	movsx	edi, dl
	cdq	
	lea	rsi, [rsi]
	idiv	edi
	cmp	esi, eax
	jl	.label_137
	jmp	.label_147
.label_821:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x500]
	nop	
	mov	rax, qword ptr [rax]
	lea	rdi, [rdi]
	mov	cl, al
	mov	rsp, rsp
	movsx	edx, cl
	cmp	edx, -1
	jne	.label_937
	lea	rsi, [rsi]
	xor	eax, eax
	mov	rsp, rsp
	mov	cl, al
	test	cl, 1
	jne	.label_137
	lea	rdi, [rdi]
	jmp	.label_147
.label_937:
	lea	rdi, [rdi]
	mov	eax, 0x80000000
	mov	rcx, qword ptr [rbp - 0x500]
	mov	rcx, qword ptr [rcx]
	mov	dl, cl
	mov	rbp, rbp
	movsx	esi, dl
	cdq	
	mov	rbp, rbp
	idiv	esi
	mov	rcx, qword ptr [rbp - 0x500]
	mov	rbp, rbp
	mov	rcx, qword ptr [rcx - 0x38]
	mov	dil, cl
	movsx	esi, dil
	mov	rsp, rsp
	cmp	eax, esi
	lea	rsi, [rsi]
	jl	.label_137
	lea	rdi, [rdi]
	jmp	.label_147
.label_1085:
	mov	rax, qword ptr [rbp - 0x500]
	mov	rbp, rbp
	mov	rax, qword ptr [rax]
	nop	
	mov	cl, al
	movsx	edx, cl
	mov	rsp, rsp
	cmp	edx, 0
	jne	.label_1150
	lea	rdi, [rdi]
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	nop	
	jne	.label_137
	mov	rsp, rsp
	jmp	.label_147
.label_1150:
	nop	
	mov	rax, qword ptr [rbp - 0x500]
	mov	rax, qword ptr [rax - 0x38]
	mov	rbp, rbp
	mov	cl, al
	movsx	edx, cl
	mov	rbp, rbp
	cmp	edx, 0
	jge	.label_152
	mov	eax, 0x80000000
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x500]
	nop	
	mov	rcx, qword ptr [rcx - 0x38]
	mov	rsp, rsp
	mov	dl, cl
	movsx	esi, dl
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x500]
	mov	rcx, qword ptr [rcx]
	nop	
	mov	dl, cl
	lea	rsi, [rsi]
	movsx	edi, dl
	cdq	
	lea	rsi, [rsi]
	idiv	edi
	cmp	esi, eax
	jl	.label_137
	jmp	.label_147
.label_152:
	mov	eax, 0x7fffffff
	nop	
	mov	rcx, qword ptr [rbp - 0x500]
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
	mov	rcx, qword ptr [rbp - 0x500]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rcx - 0x38]
	mov	dil, cl
	lea	rsi, [rsi]
	movsx	esi, dil
	cmp	eax, esi
	mov	rsp, rsp
	jl	.label_137
.label_147:
	mov	rax, qword ptr [rbp - 0x500]
	mov	rax, qword ptr [rax - 0x38]
	lea	rsi, [rsi]
	mov	cl, al
	lea	rdi, [rdi]
	movsx	edx, cl
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x500]
	mov	rsp, rsp
	mov	rax, qword ptr [rax]
	mov	cl, al
	movsx	esi, cl
	imul	edx, esi
	cmp	edx, -0x80
	lea	rsi, [rsi]
	jl	.label_137
	mov	rsp, rsp
	mov	eax, 0x7f
	mov	rcx, qword ptr [rbp - 0x500]
	mov	rcx, qword ptr [rcx - 0x38]
	lea	rdi, [rdi]
	mov	dl, cl
	lea	rsi, [rsi]
	movsx	esi, dl
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x500]
	mov	rcx, qword ptr [rcx]
	mov	rbp, rbp
	mov	dl, cl
	mov	rbp, rbp
	movsx	edi, dl
	imul	esi, edi
	mov	rsp, rsp
	cmp	eax, esi
	nop	
	jge	.label_606
.label_137:
	mov	al, 1
	mov	rcx, qword ptr [rbp - 0x500]
	mov	rcx, qword ptr [rcx - 0x38]
	mov	rbp, rbp
	mov	dl, cl
	lea	rdi, [rdi]
	movsx	esi, dl
	mov	rcx, qword ptr [rbp - 0x500]
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
	mov	qword ptr [rbp - 0x540], rcx
	test	al, 1
	nop	
	jne	.label_267
	jmp	.label_288
.label_606:
	nop	
	xor	eax, eax
	mov	rbp, rbp
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x500]
	mov	rdx, qword ptr [rdx - 0x38]
	lea	rsi, [rsi]
	mov	sil, dl
	movsx	eax, sil
	mov	rdx, qword ptr [rbp - 0x500]
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
	mov	qword ptr [rbp - 0x540], rdx
	test	cl, 1
	jne	.label_267
	nop	
	jmp	.label_288
.label_1084:
	mov	rax, qword ptr [rbp - 0x500]
	cmp	qword ptr [rax], 0
	lea	rdi, [rdi]
	jge	.label_312
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x500]
	mov	rbp, rbp
	cmp	qword ptr [rax - 0x38], 0
	mov	rbp, rbp
	jge	.label_321
	movabs	rax, 0x7fffffffffffffff
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x500]
	mov	rcx, qword ptr [rcx - 0x38]
	mov	rdx, qword ptr [rbp - 0x500]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0xbd0], rdx
	lea	rsi, [rsi]
	cqo	
	mov	rsi, qword ptr [rbp - 0xbd0]
	lea	rsi, [rsi]
	idiv	qword ptr [rsi]
	cmp	rcx, rax
	jl	.label_330
	jmp	.label_214
.label_321:
	mov	rax, qword ptr [rbp - 0x500]
	mov	rbp, rbp
	cmp	qword ptr [rax], -1
	jne	.label_1072
	xor	eax, eax
	mov	rbp, rbp
	mov	cl, al
	test	cl, 1
	jne	.label_330
	jmp	.label_214
.label_1072:
	lea	rsi, [rsi]
	movabs	rax, 0x8000000000000000
	mov	rcx, qword ptr [rbp - 0x500]
	cqo	
	idiv	qword ptr [rcx]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x500]
	cmp	rax, qword ptr [rcx - 0x38]
	mov	rsp, rsp
	jl	.label_330
	jmp	.label_214
.label_312:
	mov	rax, qword ptr [rbp - 0x500]
	mov	rsp, rsp
	cmp	qword ptr [rax], 0
	jne	.label_376
	nop	
	xor	eax, eax
	lea	rsi, [rsi]
	mov	cl, al
	test	cl, 1
	jne	.label_330
	jmp	.label_214
.label_376:
	mov	rax, qword ptr [rbp - 0x500]
	mov	rsp, rsp
	cmp	qword ptr [rax - 0x38], 0
	jge	.label_383
	movabs	rax, 0x8000000000000000
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x500]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rcx - 0x38]
	mov	rdx, qword ptr [rbp - 0x500]
	mov	qword ptr [rbp - 0xbd8], rdx
	nop	
	cqo	
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0xbd8]
	idiv	qword ptr [rsi]
	nop	
	cmp	rcx, rax
	mov	rsp, rsp
	jl	.label_330
	mov	rsp, rsp
	jmp	.label_214
.label_383:
	movabs	rax, 0x7fffffffffffffff
	mov	rcx, qword ptr [rbp - 0x500]
	mov	rbp, rbp
	cqo	
	idiv	qword ptr [rcx]
	nop	
	mov	rcx, qword ptr [rbp - 0x500]
	cmp	rax, qword ptr [rcx - 0x38]
	nop	
	jl	.label_330
.label_214:
	mov	rax, qword ptr [rbp - 0x500]
	mov	rbp, rbp
	mov	rax, qword ptr [rax - 0x38]
	mov	rcx, qword ptr [rbp - 0x500]
	imul	rax, qword ptr [rcx]
	lea	rdi, [rdi]
	cmp	rax, -0x80
	jl	.label_330
	lea	rsi, [rsi]
	mov	eax, 0x7f
	mov	ecx, eax
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x500]
	nop	
	mov	rdx, qword ptr [rdx - 0x38]
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x500]
	imul	rdx, qword ptr [rsi]
	lea	rdi, [rdi]
	cmp	rcx, rdx
	mov	rsp, rsp
	jge	.label_426
.label_330:
	mov	rbp, rbp
	mov	al, 1
	mov	rcx, qword ptr [rbp - 0x500]
	mov	rcx, qword ptr [rcx - 0x38]
	mov	edx, ecx
	nop	
	mov	rcx, qword ptr [rbp - 0x500]
	nop	
	mov	rcx, qword ptr [rcx]
	mov	esi, ecx
	nop	
	imul	edx, esi
	lea	rdi, [rdi]
	mov	dil, dl
	movsx	rcx, dil
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x540], rcx
	mov	rbp, rbp
	test	al, 1
	lea	rdi, [rdi]
	jne	.label_267
	mov	rbp, rbp
	jmp	.label_288
.label_426:
	xor	eax, eax
	nop	
	mov	cl, al
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x500]
	mov	rdx, qword ptr [rdx - 0x38]
	mov	eax, edx
	mov	rdx, qword ptr [rbp - 0x500]
	nop	
	mov	rdx, qword ptr [rdx]
	mov	esi, edx
	imul	eax, esi
	mov	dil, al
	movsx	rdx, dil
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x540], rdx
	test	cl, 1
	mov	rbp, rbp
	jne	.label_267
	nop	
	jmp	.label_288
.label_1076:
	nop	
	xor	eax, eax
	nop	
	mov	cl, al
	test	cl, 1
	lea	rdi, [rdi]
	jne	.label_479
	jmp	.label_487
.label_479:
	xor	eax, eax
	mov	rbp, rbp
	mov	cl, al
	lea	rsi, [rsi]
	test	cl, 1
	jne	.label_489
	jmp	.label_496
.label_489:
	mov	rax, qword ptr [rbp - 0x500]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax]
	mov	cx, ax
	movsx	edx, cx
	mov	rbp, rbp
	cmp	edx, 0
	jge	.label_499
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x500]
	mov	rsp, rsp
	mov	rax, qword ptr [rax - 0x38]
	mov	cx, ax
	movsx	edx, cx
	cmp	edx, 0
	mov	rbp, rbp
	jge	.label_506
	mov	eax, 0x7fffffff
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x500]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rcx - 0x38]
	mov	dx, cx
	movsx	esi, dx
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x500]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rcx]
	lea	rsi, [rsi]
	mov	dx, cx
	movsx	edi, dx
	cdq	
	idiv	edi
	mov	rsp, rsp
	cmp	esi, eax
	jl	.label_513
	lea	rsi, [rsi]
	jmp	.label_333
.label_506:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x500]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax]
	mov	rbp, rbp
	mov	cx, ax
	lea	rdi, [rdi]
	movsx	edx, cx
	cmp	edx, -1
	jne	.label_542
	xor	eax, eax
	lea	rdi, [rdi]
	mov	cl, al
	test	cl, 1
	jne	.label_513
	jmp	.label_333
.label_542:
	mov	eax, 0x80000000
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x500]
	mov	rcx, qword ptr [rcx]
	mov	rsp, rsp
	mov	dx, cx
	movsx	esi, dx
	lea	rsi, [rsi]
	cdq	
	lea	rdi, [rdi]
	idiv	esi
	mov	rcx, qword ptr [rbp - 0x500]
	nop	
	mov	rcx, qword ptr [rcx - 0x38]
	mov	di, cx
	lea	rsi, [rsi]
	movsx	esi, di
	cmp	eax, esi
	nop	
	jl	.label_513
	mov	rbp, rbp
	jmp	.label_333
.label_499:
	mov	rax, qword ptr [rbp - 0x500]
	mov	rax, qword ptr [rax]
	mov	cx, ax
	mov	rsp, rsp
	movsx	edx, cx
	cmp	edx, 0
	lea	rsi, [rsi]
	jne	.label_567
	lea	rsi, [rsi]
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_513
	jmp	.label_333
.label_567:
	mov	rax, qword ptr [rbp - 0x500]
	mov	rax, qword ptr [rax - 0x38]
	lea	rsi, [rsi]
	mov	cx, ax
	movsx	edx, cx
	cmp	edx, 0
	mov	rsp, rsp
	jge	.label_587
	mov	rsp, rsp
	mov	eax, 0x80000000
	mov	rcx, qword ptr [rbp - 0x500]
	mov	rcx, qword ptr [rcx - 0x38]
	lea	rsi, [rsi]
	mov	dx, cx
	movsx	esi, dx
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x500]
	mov	rcx, qword ptr [rcx]
	mov	rbp, rbp
	mov	dx, cx
	movsx	edi, dx
	cdq	
	lea	rdi, [rdi]
	idiv	edi
	cmp	esi, eax
	jl	.label_513
	jmp	.label_333
.label_587:
	mov	eax, 0x7fffffff
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x500]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rcx]
	mov	rsp, rsp
	mov	dx, cx
	movsx	esi, dx
	cdq	
	idiv	esi
	mov	rcx, qword ptr [rbp - 0x500]
	mov	rcx, qword ptr [rcx - 0x38]
	mov	di, cx
	movsx	esi, di
	cmp	eax, esi
	lea	rdi, [rdi]
	jl	.label_513
.label_333:
	mov	rax, qword ptr [rbp - 0x500]
	mov	rbp, rbp
	mov	rax, qword ptr [rax - 0x38]
	mov	cx, ax
	movsx	edx, cx
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x500]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax]
	mov	cx, ax
	movsx	esi, cx
	imul	edx, esi
	cmp	edx, 0xffff8000
	jl	.label_513
	mov	eax, 0x7fff
	mov	rcx, qword ptr [rbp - 0x500]
	mov	rcx, qword ptr [rcx - 0x38]
	nop	
	mov	dx, cx
	lea	rdi, [rdi]
	movsx	esi, dx
	nop	
	mov	rcx, qword ptr [rbp - 0x500]
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
	jge	.label_643
.label_513:
	lea	rdi, [rdi]
	mov	al, 1
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x500]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rcx - 0x38]
	lea	rdi, [rdi]
	mov	dx, cx
	mov	rsp, rsp
	movsx	esi, dx
	mov	rcx, qword ptr [rbp - 0x500]
	mov	rsp, rsp
	mov	rcx, qword ptr [rcx]
	lea	rsi, [rsi]
	mov	dx, cx
	movsx	edi, dx
	imul	esi, edi
	mov	dx, si
	mov	rsp, rsp
	movsx	rcx, dx
	mov	qword ptr [rbp - 0x540], rcx
	test	al, 1
	jne	.label_267
	jmp	.label_288
.label_643:
	nop	
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x500]
	mov	rdx, qword ptr [rdx - 0x38]
	mov	si, dx
	movsx	eax, si
	mov	rdx, qword ptr [rbp - 0x500]
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
	mov	qword ptr [rbp - 0x540], rdx
	mov	rsp, rsp
	test	cl, 1
	lea	rsi, [rsi]
	jne	.label_267
	lea	rsi, [rsi]
	jmp	.label_288
.label_496:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x500]
	mov	rbp, rbp
	cmp	qword ptr [rax], 0
	mov	rsp, rsp
	jge	.label_690
	mov	rax, qword ptr [rbp - 0x500]
	lea	rdi, [rdi]
	cmp	qword ptr [rax - 0x38], 0
	jge	.label_310
	nop	
	movabs	rax, 0x7fffffffffffffff
	mov	rcx, qword ptr [rbp - 0x500]
	mov	rbp, rbp
	mov	rcx, qword ptr [rcx - 0x38]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x500]
	mov	qword ptr [rbp - 0xbe0], rdx
	cqo	
	mov	rsi, qword ptr [rbp - 0xbe0]
	nop	
	idiv	qword ptr [rsi]
	cmp	rcx, rax
	jl	.label_344
	nop	
	jmp	.label_708
.label_310:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x500]
	nop	
	cmp	qword ptr [rax], -1
	mov	rsp, rsp
	jne	.label_711
	lea	rsi, [rsi]
	xor	eax, eax
	mov	rbp, rbp
	mov	cl, al
	test	cl, 1
	lea	rsi, [rsi]
	jne	.label_344
	mov	rbp, rbp
	jmp	.label_708
.label_711:
	lea	rdi, [rdi]
	movabs	rax, 0x8000000000000000
	mov	rcx, qword ptr [rbp - 0x500]
	cqo	
	nop	
	idiv	qword ptr [rcx]
	mov	rcx, qword ptr [rbp - 0x500]
	mov	rsp, rsp
	cmp	rax, qword ptr [rcx - 0x38]
	jl	.label_344
	lea	rdi, [rdi]
	jmp	.label_708
.label_690:
	mov	rax, qword ptr [rbp - 0x500]
	cmp	qword ptr [rax], 0
	mov	rbp, rbp
	jne	.label_428
	lea	rdi, [rdi]
	xor	eax, eax
	mov	rsp, rsp
	mov	cl, al
	nop	
	test	cl, 1
	jne	.label_344
	jmp	.label_708
.label_428:
	mov	rax, qword ptr [rbp - 0x500]
	cmp	qword ptr [rax - 0x38], 0
	mov	rsp, rsp
	jge	.label_750
	lea	rsi, [rsi]
	movabs	rax, 0x8000000000000000
	mov	rcx, qword ptr [rbp - 0x500]
	mov	rcx, qword ptr [rcx - 0x38]
	mov	rdx, qword ptr [rbp - 0x500]
	mov	qword ptr [rbp - 0xbe8], rdx
	cqo	
	mov	rsi, qword ptr [rbp - 0xbe8]
	mov	rsp, rsp
	idiv	qword ptr [rsi]
	cmp	rcx, rax
	jl	.label_344
	lea	rsi, [rsi]
	jmp	.label_708
.label_750:
	movabs	rax, 0x7fffffffffffffff
	mov	rcx, qword ptr [rbp - 0x500]
	cqo	
	lea	rsi, [rsi]
	idiv	qword ptr [rcx]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x500]
	nop	
	cmp	rax, qword ptr [rcx - 0x38]
	jl	.label_344
.label_708:
	nop	
	mov	rax, qword ptr [rbp - 0x500]
	mov	rax, qword ptr [rax - 0x38]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x500]
	nop	
	imul	rax, qword ptr [rcx]
	mov	rbp, rbp
	cmp	rax, -0x8000
	lea	rsi, [rsi]
	jl	.label_344
	mov	rsp, rsp
	mov	eax, 0x7fff
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x500]
	mov	rbp, rbp
	mov	rdx, qword ptr [rdx - 0x38]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x500]
	lea	rsi, [rsi]
	imul	rdx, qword ptr [rsi]
	mov	rsp, rsp
	cmp	rcx, rdx
	jge	.label_797
.label_344:
	mov	al, 1
	nop	
	mov	rcx, qword ptr [rbp - 0x500]
	mov	rcx, qword ptr [rcx - 0x38]
	lea	rdi, [rdi]
	mov	edx, ecx
	nop	
	mov	rcx, qword ptr [rbp - 0x500]
	nop	
	mov	rcx, qword ptr [rcx]
	lea	rsi, [rsi]
	mov	esi, ecx
	imul	edx, esi
	lea	rdi, [rdi]
	mov	di, dx
	movsx	rcx, di
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x540], rcx
	nop	
	test	al, 1
	lea	rdi, [rdi]
	jne	.label_267
	jmp	.label_288
.label_797:
	mov	rsp, rsp
	xor	eax, eax
	nop	
	mov	cl, al
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x500]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rdx - 0x38]
	lea	rdi, [rdi]
	mov	eax, edx
	mov	rdx, qword ptr [rbp - 0x500]
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
	mov	qword ptr [rbp - 0x540], rdx
	test	cl, 1
	mov	rbp, rbp
	jne	.label_267
	jmp	.label_288
.label_487:
	mov	rbp, rbp
	xor	eax, eax
	mov	rsp, rsp
	mov	cl, al
	test	cl, 1
	jne	.label_836
	lea	rdi, [rdi]
	jmp	.label_841
.label_836:
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	mov	rsp, rsp
	jne	.label_843
	lea	rsi, [rsi]
	jmp	.label_847
.label_843:
	mov	rax, qword ptr [rbp - 0x500]
	mov	rax, qword ptr [rax]
	mov	ecx, eax
	mov	rsp, rsp
	cmp	ecx, 0
	nop	
	jge	.label_850
	mov	rax, qword ptr [rbp - 0x500]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax - 0x38]
	mov	ecx, eax
	lea	rsi, [rsi]
	cmp	ecx, 0
	jge	.label_857
	lea	rsi, [rsi]
	mov	eax, 0x7fffffff
	mov	rcx, qword ptr [rbp - 0x500]
	mov	rcx, qword ptr [rcx - 0x38]
	nop	
	mov	edx, ecx
	mov	rcx, qword ptr [rbp - 0x500]
	mov	rcx, qword ptr [rcx]
	mov	esi, ecx
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0xbec], edx
	cdq	
	idiv	esi
	lea	rsi, [rsi]
	mov	esi, dword ptr [rbp - 0xbec]
	lea	rsi, [rsi]
	cmp	esi, eax
	jl	.label_372
	jmp	.label_882
.label_857:
	mov	rax, qword ptr [rbp - 0x500]
	mov	rax, qword ptr [rax]
	mov	ecx, eax
	cmp	ecx, -1
	nop	
	jne	.label_883
	lea	rdi, [rdi]
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_372
	nop	
	jmp	.label_882
.label_883:
	mov	eax, 0x80000000
	mov	rcx, qword ptr [rbp - 0x500]
	mov	rbp, rbp
	mov	rcx, qword ptr [rcx]
	mov	edx, ecx
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0xbf0], edx
	cdq	
	mov	esi, dword ptr [rbp - 0xbf0]
	idiv	esi
	mov	rcx, qword ptr [rbp - 0x500]
	mov	rcx, qword ptr [rcx - 0x38]
	mov	rbp, rbp
	mov	edi, ecx
	cmp	eax, edi
	jl	.label_372
	mov	rsp, rsp
	jmp	.label_882
.label_850:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x500]
	mov	rbp, rbp
	mov	rax, qword ptr [rax]
	mov	ecx, eax
	cmp	ecx, 0
	nop	
	jne	.label_904
	xor	eax, eax
	lea	rsi, [rsi]
	mov	cl, al
	test	cl, 1
	mov	rbp, rbp
	jne	.label_372
	jmp	.label_882
.label_904:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x500]
	mov	rax, qword ptr [rax - 0x38]
	mov	ecx, eax
	lea	rdi, [rdi]
	cmp	ecx, 0
	nop	
	jge	.label_921
	mov	eax, 0x80000000
	mov	rcx, qword ptr [rbp - 0x500]
	mov	rbp, rbp
	mov	rcx, qword ptr [rcx - 0x38]
	lea	rsi, [rsi]
	mov	edx, ecx
	nop	
	mov	rcx, qword ptr [rbp - 0x500]
	mov	rcx, qword ptr [rcx]
	lea	rdi, [rdi]
	mov	esi, ecx
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0xbf4], edx
	cdq	
	idiv	esi
	nop	
	mov	esi, dword ptr [rbp - 0xbf4]
	cmp	esi, eax
	jl	.label_372
	jmp	.label_882
.label_921:
	mov	rsp, rsp
	mov	eax, 0x7fffffff
	mov	rcx, qword ptr [rbp - 0x500]
	mov	rbp, rbp
	mov	rcx, qword ptr [rcx]
	mov	edx, ecx
	mov	dword ptr [rbp - 0xbf8], edx
	nop	
	cdq	
	lea	rdi, [rdi]
	mov	esi, dword ptr [rbp - 0xbf8]
	idiv	esi
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x500]
	mov	rcx, qword ptr [rcx - 0x38]
	mov	edi, ecx
	cmp	eax, edi
	mov	rbp, rbp
	jl	.label_372
.label_882:
	mov	rax, qword ptr [rbp - 0x500]
	mov	rsp, rsp
	mov	rax, qword ptr [rax - 0x38]
	mov	ecx, eax
	mov	rax, qword ptr [rbp - 0x500]
	mov	rax, qword ptr [rax]
	mov	edx, eax
	mov	rbp, rbp
	imul	ecx, edx
	cmp	ecx, 0x80000000
	mov	rbp, rbp
	jl	.label_372
	lea	rsi, [rsi]
	mov	eax, 0x7fffffff
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x500]
	mov	rcx, qword ptr [rcx - 0x38]
	mov	edx, ecx
	mov	rcx, qword ptr [rbp - 0x500]
	mov	rcx, qword ptr [rcx]
	lea	rsi, [rsi]
	mov	esi, ecx
	lea	rdi, [rdi]
	imul	edx, esi
	nop	
	cmp	eax, edx
	mov	rsp, rsp
	jge	.label_951
.label_372:
	mov	al, 1
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x500]
	mov	rbp, rbp
	mov	rcx, qword ptr [rcx - 0x38]
	nop	
	mov	edx, ecx
	mov	rcx, qword ptr [rbp - 0x500]
	mov	rbp, rbp
	mov	rcx, qword ptr [rcx]
	mov	rsp, rsp
	mov	esi, ecx
	imul	edx, esi
	lea	rsi, [rsi]
	movsxd	rcx, edx
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x540], rcx
	test	al, 1
	mov	rsp, rsp
	jne	.label_267
	mov	rsp, rsp
	jmp	.label_288
.label_951:
	xor	eax, eax
	mov	rbp, rbp
	mov	cl, al
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x500]
	mov	rdx, qword ptr [rdx - 0x38]
	mov	eax, edx
	mov	rdx, qword ptr [rbp - 0x500]
	nop	
	mov	rdx, qword ptr [rdx]
	lea	rsi, [rsi]
	mov	esi, edx
	mov	rbp, rbp
	imul	eax, esi
	nop	
	movsxd	rdx, eax
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x540], rdx
	test	cl, 1
	nop	
	jne	.label_267
	jmp	.label_288
.label_847:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x500]
	cmp	qword ptr [rax], 0
	jge	.label_157
	mov	rax, qword ptr [rbp - 0x500]
	lea	rsi, [rsi]
	cmp	qword ptr [rax - 0x38], 0
	jge	.label_1015
	lea	rsi, [rsi]
	movabs	rax, 0x7fffffffffffffff
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x500]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rcx - 0x38]
	mov	rdx, qword ptr [rbp - 0x500]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0xc00], rdx
	cqo	
	mov	rsi, qword ptr [rbp - 0xc00]
	idiv	qword ptr [rsi]
	mov	rsp, rsp
	cmp	rcx, rax
	lea	rdi, [rdi]
	jl	.label_1019
	jmp	.label_1030
.label_1015:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x500]
	mov	rsp, rsp
	cmp	qword ptr [rax], -1
	jne	.label_1031
	xor	eax, eax
	mov	rsp, rsp
	mov	cl, al
	lea	rsi, [rsi]
	test	cl, 1
	nop	
	jne	.label_1019
	jmp	.label_1030
.label_1031:
	movabs	rax, 0x8000000000000000
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x500]
	cqo	
	mov	rbp, rbp
	idiv	qword ptr [rcx]
	mov	rcx, qword ptr [rbp - 0x500]
	cmp	rax, qword ptr [rcx - 0x38]
	jl	.label_1019
	lea	rdi, [rdi]
	jmp	.label_1030
.label_157:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x500]
	cmp	qword ptr [rax], 0
	jne	.label_1054
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	lea	rdi, [rdi]
	jne	.label_1019
	jmp	.label_1030
.label_1054:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x500]
	nop	
	cmp	qword ptr [rax - 0x38], 0
	jge	.label_619
	nop	
	movabs	rax, 0x8000000000000000
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x500]
	mov	rbp, rbp
	mov	rcx, qword ptr [rcx - 0x38]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x500]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0xc08], rdx
	mov	rsp, rsp
	cqo	
	mov	rsi, qword ptr [rbp - 0xc08]
	nop	
	idiv	qword ptr [rsi]
	mov	rbp, rbp
	cmp	rcx, rax
	jl	.label_1019
	nop	
	jmp	.label_1030
.label_619:
	movabs	rax, 0x7fffffffffffffff
	mov	rcx, qword ptr [rbp - 0x500]
	mov	rsp, rsp
	cqo	
	nop	
	idiv	qword ptr [rcx]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x500]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rcx - 0x38]
	nop	
	jl	.label_1019
.label_1030:
	nop	
	mov	rax, qword ptr [rbp - 0x500]
	mov	rax, qword ptr [rax - 0x38]
	mov	rcx, qword ptr [rbp - 0x500]
	nop	
	imul	rax, qword ptr [rcx]
	mov	rsp, rsp
	cmp	rax, -0x80000000
	jl	.label_1019
	mov	eax, 0x7fffffff
	mov	ecx, eax
	nop	
	mov	rdx, qword ptr [rbp - 0x500]
	mov	rdx, qword ptr [rdx - 0x38]
	mov	rsi, qword ptr [rbp - 0x500]
	imul	rdx, qword ptr [rsi]
	lea	rdi, [rdi]
	cmp	rcx, rdx
	mov	rsp, rsp
	jge	.label_1102
.label_1019:
	lea	rdi, [rdi]
	mov	al, 1
	nop	
	mov	rcx, qword ptr [rbp - 0x500]
	mov	rcx, qword ptr [rcx - 0x38]
	mov	edx, ecx
	mov	rcx, qword ptr [rbp - 0x500]
	mov	rcx, qword ptr [rcx]
	mov	rsp, rsp
	mov	esi, ecx
	imul	edx, esi
	movsxd	rcx, edx
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x540], rcx
	lea	rsi, [rsi]
	test	al, 1
	lea	rdi, [rdi]
	jne	.label_267
	jmp	.label_288
.label_1102:
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x500]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rdx - 0x38]
	mov	eax, edx
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x500]
	mov	rsp, rsp
	mov	rdx, qword ptr [rdx]
	lea	rdi, [rdi]
	mov	esi, edx
	imul	eax, esi
	movsxd	rdx, eax
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x540], rdx
	test	cl, 1
	jne	.label_267
	jmp	.label_288
.label_841:
	nop	
	mov	al, 1
	mov	rsp, rsp
	test	al, 1
	jne	.label_1103
	lea	rsi, [rsi]
	jmp	.label_1151
.label_1103:
	lea	rdi, [rdi]
	xor	eax, eax
	mov	cl, al
	lea	rdi, [rdi]
	test	cl, 1
	nop	
	jne	.label_1153
	jmp	.label_688
.label_1153:
	mov	rax, qword ptr [rbp - 0x500]
	cmp	qword ptr [rax], 0
	lea	rsi, [rsi]
	jge	.label_140
	mov	rax, qword ptr [rbp - 0x500]
	cmp	qword ptr [rax - 0x38], 0
	jge	.label_212
	movabs	rax, 0x7fffffffffffffff
	mov	rcx, qword ptr [rbp - 0x500]
	mov	rcx, qword ptr [rcx - 0x38]
	mov	rdx, qword ptr [rbp - 0x500]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0xc10], rdx
	cqo	
	mov	rsi, qword ptr [rbp - 0xc10]
	idiv	qword ptr [rsi]
	cmp	rcx, rax
	jl	.label_161
	jmp	.label_162
.label_212:
	mov	rax, qword ptr [rbp - 0x500]
	nop	
	cmp	qword ptr [rax], -1
	nop	
	jne	.label_188
	mov	rbp, rbp
	xor	eax, eax
	lea	rsi, [rsi]
	mov	cl, al
	mov	rbp, rbp
	test	cl, 1
	mov	rsp, rsp
	jne	.label_161
	lea	rsi, [rsi]
	jmp	.label_162
.label_188:
	movabs	rax, 0x8000000000000000
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x500]
	lea	rdi, [rdi]
	cqo	
	lea	rsi, [rsi]
	idiv	qword ptr [rcx]
	nop	
	mov	rcx, qword ptr [rbp - 0x500]
	cmp	rax, qword ptr [rcx - 0x38]
	lea	rsi, [rsi]
	jl	.label_161
	jmp	.label_162
.label_140:
	mov	rax, qword ptr [rbp - 0x500]
	lea	rsi, [rsi]
	cmp	qword ptr [rax], 0
	jne	.label_226
	xor	eax, eax
	lea	rsi, [rsi]
	mov	cl, al
	test	cl, 1
	jne	.label_161
	jmp	.label_162
.label_226:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x500]
	cmp	qword ptr [rax - 0x38], 0
	nop	
	jge	.label_243
	movabs	rax, 0x8000000000000000
	nop	
	mov	rcx, qword ptr [rbp - 0x500]
	mov	rcx, qword ptr [rcx - 0x38]
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x500]
	mov	qword ptr [rbp - 0xc18], rdx
	mov	rbp, rbp
	cqo	
	mov	rsi, qword ptr [rbp - 0xc18]
	idiv	qword ptr [rsi]
	lea	rsi, [rsi]
	cmp	rcx, rax
	jl	.label_161
	jmp	.label_162
.label_243:
	lea	rdi, [rdi]
	movabs	rax, 0x7fffffffffffffff
	mov	rcx, qword ptr [rbp - 0x500]
	mov	rsp, rsp
	cqo	
	idiv	qword ptr [rcx]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x500]
	cmp	rax, qword ptr [rcx - 0x38]
	lea	rdi, [rdi]
	jl	.label_161
.label_162:
	movabs	rax, 0x8000000000000000
	nop	
	mov	rcx, qword ptr [rbp - 0x500]
	mov	rsp, rsp
	mov	rcx, qword ptr [rcx - 0x38]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x500]
	lea	rsi, [rsi]
	imul	rcx, qword ptr [rdx]
	mov	rsp, rsp
	cmp	rcx, rax
	jl	.label_161
	lea	rsi, [rsi]
	movabs	rax, 0x7fffffffffffffff
	mov	rcx, qword ptr [rbp - 0x500]
	mov	rcx, qword ptr [rcx - 0x38]
	nop	
	mov	rdx, qword ptr [rbp - 0x500]
	lea	rsi, [rsi]
	imul	rcx, qword ptr [rdx]
	lea	rsi, [rsi]
	cmp	rax, rcx
	jge	.label_299
.label_161:
	mov	al, 1
	mov	rcx, qword ptr [rbp - 0x500]
	mov	rsp, rsp
	mov	rcx, qword ptr [rcx - 0x38]
	mov	rdx, qword ptr [rbp - 0x500]
	lea	rdi, [rdi]
	imul	rcx, qword ptr [rdx]
	mov	qword ptr [rbp - 0x540], rcx
	test	al, 1
	mov	rbp, rbp
	jne	.label_267
	lea	rsi, [rsi]
	jmp	.label_288
.label_299:
	lea	rdi, [rdi]
	xor	eax, eax
	nop	
	mov	cl, al
	nop	
	mov	rdx, qword ptr [rbp - 0x500]
	mov	rdx, qword ptr [rdx - 0x38]
	nop	
	mov	rsi, qword ptr [rbp - 0x500]
	imul	rdx, qword ptr [rsi]
	mov	qword ptr [rbp - 0x540], rdx
	lea	rdi, [rdi]
	test	cl, 1
	mov	rbp, rbp
	jne	.label_267
	lea	rsi, [rsi]
	jmp	.label_288
.label_688:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x500]
	nop	
	cmp	qword ptr [rax], 0
	jge	.label_345
	mov	rax, qword ptr [rbp - 0x500]
	mov	rsp, rsp
	cmp	qword ptr [rax - 0x38], 0
	mov	rsp, rsp
	jge	.label_356
	mov	rsp, rsp
	movabs	rax, 0x7fffffffffffffff
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x500]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rcx - 0x38]
	mov	rdx, qword ptr [rbp - 0x500]
	mov	qword ptr [rbp - 0xc20], rdx
	cqo	
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0xc20]
	idiv	qword ptr [rsi]
	nop	
	cmp	rcx, rax
	jl	.label_277
	jmp	.label_343
.label_356:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x500]
	mov	rsp, rsp
	cmp	qword ptr [rax], -1
	jne	.label_283
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_277
	jmp	.label_343
.label_283:
	nop	
	movabs	rax, 0x8000000000000000
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x500]
	lea	rdi, [rdi]
	cqo	
	mov	rsp, rsp
	idiv	qword ptr [rcx]
	mov	rcx, qword ptr [rbp - 0x500]
	cmp	rax, qword ptr [rcx - 0x38]
	mov	rbp, rbp
	jl	.label_277
	lea	rsi, [rsi]
	jmp	.label_343
.label_345:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x500]
	cmp	qword ptr [rax], 0
	lea	rsi, [rsi]
	jne	.label_404
	xor	eax, eax
	mov	cl, al
	lea	rdi, [rdi]
	test	cl, 1
	lea	rdi, [rdi]
	jne	.label_277
	jmp	.label_343
.label_404:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x500]
	cmp	qword ptr [rax - 0x38], 0
	lea	rsi, [rsi]
	jge	.label_523
	movabs	rax, 0x8000000000000000
	mov	rcx, qword ptr [rbp - 0x500]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rcx - 0x38]
	mov	rdx, qword ptr [rbp - 0x500]
	mov	qword ptr [rbp - 0xc28], rdx
	nop	
	cqo	
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0xc28]
	mov	rsp, rsp
	idiv	qword ptr [rsi]
	mov	rsp, rsp
	cmp	rcx, rax
	jl	.label_277
	jmp	.label_343
.label_523:
	movabs	rax, 0x7fffffffffffffff
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x500]
	nop	
	cqo	
	idiv	qword ptr [rcx]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x500]
	cmp	rax, qword ptr [rcx - 0x38]
	lea	rsi, [rsi]
	jl	.label_277
.label_343:
	mov	rbp, rbp
	movabs	rax, 0x8000000000000000
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x500]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rcx - 0x38]
	mov	rdx, qword ptr [rbp - 0x500]
	nop	
	imul	rcx, qword ptr [rdx]
	cmp	rcx, rax
	jl	.label_277
	nop	
	movabs	rax, 0x7fffffffffffffff
	mov	rcx, qword ptr [rbp - 0x500]
	mov	rcx, qword ptr [rcx - 0x38]
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x500]
	nop	
	imul	rcx, qword ptr [rdx]
	cmp	rax, rcx
	mov	rsp, rsp
	jge	.label_459
.label_277:
	mov	rbp, rbp
	mov	al, 1
	nop	
	mov	rcx, qword ptr [rbp - 0x500]
	mov	rbp, rbp
	mov	rcx, qword ptr [rcx - 0x38]
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x500]
	imul	rcx, qword ptr [rdx]
	mov	qword ptr [rbp - 0x540], rcx
	test	al, 1
	jne	.label_267
	jmp	.label_288
.label_459:
	mov	rbp, rbp
	xor	eax, eax
	mov	rsp, rsp
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x500]
	mov	rsp, rsp
	mov	rdx, qword ptr [rdx - 0x38]
	mov	rsi, qword ptr [rbp - 0x500]
	imul	rdx, qword ptr [rsi]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x540], rdx
	test	cl, 1
	jne	.label_267
	lea	rsi, [rsi]
	jmp	.label_288
.label_1151:
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_514
	jmp	.label_624
.label_514:
	nop	
	mov	rax, qword ptr [rbp - 0x500]
	lea	rsi, [rsi]
	cmp	qword ptr [rax], 0
	lea	rdi, [rdi]
	jge	.label_518
	mov	rax, qword ptr [rbp - 0x500]
	cmp	qword ptr [rax - 0x38], 0
	nop	
	jge	.label_529
	lea	rdi, [rdi]
	movabs	rax, 0x7fffffffffffffff
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x500]
	mov	rbp, rbp
	mov	rcx, qword ptr [rcx - 0x38]
	nop	
	mov	rdx, qword ptr [rbp - 0x500]
	mov	qword ptr [rbp - 0xc30], rdx
	cqo	
	mov	rsi, qword ptr [rbp - 0xc30]
	idiv	qword ptr [rsi]
	cmp	rcx, rax
	lea	rdi, [rdi]
	jl	.label_535
	jmp	.label_275
.label_529:
	mov	rax, qword ptr [rbp - 0x500]
	cmp	qword ptr [rax], -1
	jne	.label_553
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	mov	rbp, rbp
	jne	.label_535
	jmp	.label_275
.label_553:
	movabs	rax, 0x8000000000000000
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x500]
	cqo	
	mov	rsp, rsp
	idiv	qword ptr [rcx]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x500]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rcx - 0x38]
	jl	.label_535
	jmp	.label_275
.label_518:
	mov	rax, qword ptr [rbp - 0x500]
	nop	
	cmp	qword ptr [rax], 0
	mov	rsp, rsp
	jne	.label_575
	mov	rbp, rbp
	xor	eax, eax
	mov	cl, al
	mov	rsp, rsp
	test	cl, 1
	lea	rdi, [rdi]
	jne	.label_535
	jmp	.label_275
.label_575:
	mov	rax, qword ptr [rbp - 0x500]
	cmp	qword ptr [rax - 0x38], 0
	jge	.label_448
	lea	rdi, [rdi]
	movabs	rax, 0x8000000000000000
	mov	rcx, qword ptr [rbp - 0x500]
	mov	rcx, qword ptr [rcx - 0x38]
	mov	rdx, qword ptr [rbp - 0x500]
	nop	
	mov	qword ptr [rbp - 0xc38], rdx
	cqo	
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0xc38]
	mov	rsp, rsp
	idiv	qword ptr [rsi]
	cmp	rcx, rax
	mov	rbp, rbp
	jl	.label_535
	jmp	.label_275
.label_448:
	mov	rsp, rsp
	movabs	rax, 0x7fffffffffffffff
	mov	rcx, qword ptr [rbp - 0x500]
	cqo	
	lea	rdi, [rdi]
	idiv	qword ptr [rcx]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x500]
	cmp	rax, qword ptr [rcx - 0x38]
	lea	rdi, [rdi]
	jl	.label_535
.label_275:
	nop	
	movabs	rax, 0x8000000000000000
	mov	rcx, qword ptr [rbp - 0x500]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rcx - 0x38]
	mov	rdx, qword ptr [rbp - 0x500]
	imul	rcx, qword ptr [rdx]
	nop	
	cmp	rcx, rax
	lea	rdi, [rdi]
	jl	.label_535
	movabs	rax, 0x7fffffffffffffff
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x500]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rcx - 0x38]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x500]
	mov	rsp, rsp
	imul	rcx, qword ptr [rdx]
	mov	rsp, rsp
	cmp	rax, rcx
	jge	.label_302
.label_535:
	lea	rsi, [rsi]
	mov	al, 1
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x500]
	mov	rcx, qword ptr [rcx - 0x38]
	nop	
	mov	rdx, qword ptr [rbp - 0x500]
	nop	
	imul	rcx, qword ptr [rdx]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x540], rcx
	test	al, 1
	jne	.label_267
	jmp	.label_288
.label_302:
	xor	eax, eax
	nop	
	mov	cl, al
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x500]
	mov	rdx, qword ptr [rdx - 0x38]
	mov	rsi, qword ptr [rbp - 0x500]
	imul	rdx, qword ptr [rsi]
	mov	qword ptr [rbp - 0x540], rdx
	mov	rbp, rbp
	test	cl, 1
	nop	
	jne	.label_267
	jmp	.label_288
.label_624:
	mov	rax, qword ptr [rbp - 0x500]
	cmp	qword ptr [rax], 0
	nop	
	jge	.label_671
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x500]
	mov	rsp, rsp
	cmp	qword ptr [rax - 0x38], 0
	jge	.label_676
	nop	
	movabs	rax, 0x7fffffffffffffff
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x500]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rcx - 0x38]
	mov	rdx, qword ptr [rbp - 0x500]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0xc40], rdx
	nop	
	cqo	
	mov	rsi, qword ptr [rbp - 0xc40]
	nop	
	idiv	qword ptr [rsi]
	cmp	rcx, rax
	lea	rdi, [rdi]
	jl	.label_680
	jmp	.label_273
.label_676:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x500]
	cmp	qword ptr [rax], -1
	jne	.label_1106
	mov	rbp, rbp
	xor	eax, eax
	mov	cl, al
	lea	rdi, [rdi]
	test	cl, 1
	mov	rsp, rsp
	jne	.label_680
	jmp	.label_273
.label_1106:
	movabs	rax, 0x8000000000000000
	mov	rcx, qword ptr [rbp - 0x500]
	lea	rdi, [rdi]
	cqo	
	lea	rdi, [rdi]
	idiv	qword ptr [rcx]
	mov	rcx, qword ptr [rbp - 0x500]
	cmp	rax, qword ptr [rcx - 0x38]
	mov	rsp, rsp
	jl	.label_680
	mov	rsp, rsp
	jmp	.label_273
.label_671:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x500]
	cmp	qword ptr [rax], 0
	jne	.label_1113
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	lea	rdi, [rdi]
	jne	.label_680
	lea	rdi, [rdi]
	jmp	.label_273
.label_1113:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x500]
	cmp	qword ptr [rax - 0x38], 0
	jge	.label_727
	mov	rbp, rbp
	movabs	rax, 0x8000000000000000
	mov	rcx, qword ptr [rbp - 0x500]
	mov	rsp, rsp
	mov	rcx, qword ptr [rcx - 0x38]
	mov	rdx, qword ptr [rbp - 0x500]
	mov	qword ptr [rbp - 0xc48], rdx
	mov	rsp, rsp
	cqo	
	nop	
	mov	rsi, qword ptr [rbp - 0xc48]
	idiv	qword ptr [rsi]
	cmp	rcx, rax
	jl	.label_680
	jmp	.label_273
.label_727:
	lea	rsi, [rsi]
	movabs	rax, 0x7fffffffffffffff
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x500]
	lea	rdi, [rdi]
	cqo	
	idiv	qword ptr [rcx]
	mov	rcx, qword ptr [rbp - 0x500]
	mov	rsp, rsp
	cmp	rax, qword ptr [rcx - 0x38]
	lea	rdi, [rdi]
	jl	.label_680
.label_273:
	movabs	rax, 0x8000000000000000
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x500]
	nop	
	mov	rcx, qword ptr [rcx - 0x38]
	mov	rdx, qword ptr [rbp - 0x500]
	imul	rcx, qword ptr [rdx]
	cmp	rcx, rax
	jl	.label_680
	movabs	rax, 0x7fffffffffffffff
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x500]
	mov	rcx, qword ptr [rcx - 0x38]
	mov	rdx, qword ptr [rbp - 0x500]
	mov	rsp, rsp
	imul	rcx, qword ptr [rdx]
	cmp	rax, rcx
	mov	rsp, rsp
	jge	.label_864
.label_680:
	lea	rsi, [rsi]
	mov	al, 1
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x500]
	mov	rcx, qword ptr [rcx - 0x38]
	nop	
	mov	rdx, qword ptr [rbp - 0x500]
	nop	
	imul	rcx, qword ptr [rdx]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x540], rcx
	test	al, 1
	jne	.label_267
	lea	rsi, [rsi]
	jmp	.label_288
.label_864:
	xor	eax, eax
	lea	rsi, [rsi]
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x500]
	mov	rdx, qword ptr [rdx - 0x38]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x500]
	imul	rdx, qword ptr [rsi]
	mov	qword ptr [rbp - 0x540], rdx
	lea	rsi, [rsi]
	test	cl, 1
	jne	.label_267
	nop	
	jmp	.label_288
.label_267:
	jmp	.label_177
.label_288:
	nop	
	jmp	.label_200
.label_5240:
	mov	rbp, rbp
	xor	eax, eax
	mov	cl, al
	mov	eax, 0x38
	nop	
	mov	edx, eax
	lea	rsi, [rbp - 0x748]
	lea	rdi, [rbp - 0x550]
	mov	qword ptr [rbp - 0x748], 0
	mov	qword ptr [rbp - 0x740], 0
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x738], 0
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x730], 0
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x728], 0
	mov	qword ptr [rbp - 0x720], 0
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x718], 0
	mov	byte ptr [rbp - 0xc49], cl
	call	memcpy
	mov	cl, byte ptr [rbp - 0xc49]
	test	cl, 1
	lea	rdi, [rdi]
	jne	.label_1055
	mov	rsp, rsp
	jmp	.label_842
.label_1055:
	xor	eax, eax
	mov	rsp, rsp
	mov	cl, al
	lea	rdi, [rdi]
	test	cl, 1
	lea	rdi, [rdi]
	jne	.label_845
	jmp	.label_851
.label_845:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x500]
	mov	rax, qword ptr [rax]
	mov	cl, al
	movsx	edx, cl
	cmp	edx, 0
	jge	.label_853
	mov	rax, qword ptr [rbp - 0x500]
	mov	rbp, rbp
	mov	rax, qword ptr [rax - 0x30]
	mov	rbp, rbp
	mov	cl, al
	movsx	edx, cl
	cmp	edx, 0
	nop	
	jge	.label_859
	nop	
	mov	eax, 0x7fffffff
	nop	
	mov	rcx, qword ptr [rbp - 0x500]
	mov	rcx, qword ptr [rcx - 0x30]
	mov	dl, cl
	movsx	esi, dl
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x500]
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
	jl	.label_598
	nop	
	jmp	.label_884
.label_859:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x500]
	nop	
	mov	rax, qword ptr [rax]
	mov	cl, al
	mov	rbp, rbp
	movsx	edx, cl
	mov	rsp, rsp
	cmp	edx, -1
	jne	.label_885
	xor	eax, eax
	mov	rsp, rsp
	mov	cl, al
	test	cl, 1
	lea	rdi, [rdi]
	jne	.label_598
	jmp	.label_884
.label_885:
	lea	rdi, [rdi]
	mov	eax, 0x80000000
	mov	rcx, qword ptr [rbp - 0x500]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rcx]
	lea	rdi, [rdi]
	mov	dl, cl
	nop	
	movsx	esi, dl
	cdq	
	idiv	esi
	mov	rcx, qword ptr [rbp - 0x500]
	nop	
	mov	rcx, qword ptr [rcx - 0x30]
	nop	
	mov	dil, cl
	movsx	esi, dil
	cmp	eax, esi
	jl	.label_598
	lea	rsi, [rsi]
	jmp	.label_884
.label_853:
	mov	rax, qword ptr [rbp - 0x500]
	nop	
	mov	rax, qword ptr [rax]
	mov	cl, al
	mov	rsp, rsp
	movsx	edx, cl
	cmp	edx, 0
	jne	.label_912
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_598
	jmp	.label_884
.label_912:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x500]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax - 0x30]
	lea	rsi, [rsi]
	mov	cl, al
	movsx	edx, cl
	cmp	edx, 0
	jge	.label_919
	mov	rsp, rsp
	mov	eax, 0x80000000
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x500]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rcx - 0x30]
	mov	dl, cl
	movsx	esi, dl
	mov	rcx, qword ptr [rbp - 0x500]
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
	jl	.label_598
	jmp	.label_884
.label_919:
	nop	
	mov	eax, 0x7fffffff
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x500]
	mov	rcx, qword ptr [rcx]
	mov	dl, cl
	lea	rdi, [rdi]
	movsx	esi, dl
	mov	rbp, rbp
	cdq	
	idiv	esi
	mov	rcx, qword ptr [rbp - 0x500]
	mov	rcx, qword ptr [rcx - 0x30]
	mov	dil, cl
	lea	rdi, [rdi]
	movsx	esi, dil
	cmp	eax, esi
	nop	
	jl	.label_598
.label_884:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x500]
	mov	rsp, rsp
	mov	rax, qword ptr [rax - 0x30]
	lea	rsi, [rsi]
	mov	cl, al
	movsx	edx, cl
	mov	rax, qword ptr [rbp - 0x500]
	mov	rax, qword ptr [rax]
	mov	cl, al
	movsx	esi, cl
	imul	edx, esi
	nop	
	cmp	edx, -0x80
	jl	.label_598
	lea	rsi, [rsi]
	mov	eax, 0x7f
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x500]
	mov	rcx, qword ptr [rcx - 0x30]
	mov	dl, cl
	movsx	esi, dl
	nop	
	mov	rcx, qword ptr [rbp - 0x500]
	mov	rcx, qword ptr [rcx]
	mov	dl, cl
	movsx	edi, dl
	imul	esi, edi
	lea	rsi, [rsi]
	cmp	eax, esi
	jge	.label_957
.label_598:
	mov	al, 1
	mov	rcx, qword ptr [rbp - 0x500]
	mov	rbp, rbp
	mov	rcx, qword ptr [rcx - 0x30]
	mov	dl, cl
	movsx	esi, dl
	mov	rcx, qword ptr [rbp - 0x500]
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
	mov	qword ptr [rbp - 0x540], rcx
	test	al, 1
	lea	rsi, [rsi]
	jne	.label_249
	mov	rbp, rbp
	jmp	.label_146
.label_957:
	lea	rsi, [rsi]
	xor	eax, eax
	lea	rsi, [rsi]
	mov	cl, al
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x500]
	mov	rdx, qword ptr [rdx - 0x30]
	mov	sil, dl
	nop	
	movsx	eax, sil
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x500]
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
	mov	qword ptr [rbp - 0x540], rdx
	test	cl, 1
	mov	rbp, rbp
	jne	.label_249
	mov	rbp, rbp
	jmp	.label_146
.label_851:
	mov	rax, qword ptr [rbp - 0x500]
	cmp	qword ptr [rax], 0
	lea	rsi, [rsi]
	jge	.label_1022
	mov	rax, qword ptr [rbp - 0x500]
	nop	
	cmp	qword ptr [rax - 0x30], 0
	jge	.label_1026
	lea	rdi, [rdi]
	movabs	rax, 0x7fffffffffffffff
	mov	rcx, qword ptr [rbp - 0x500]
	mov	rcx, qword ptr [rcx - 0x30]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x500]
	mov	qword ptr [rbp - 0xc58], rdx
	lea	rdi, [rdi]
	cqo	
	mov	rsi, qword ptr [rbp - 0xc58]
	idiv	qword ptr [rsi]
	cmp	rcx, rax
	jl	.label_544
	jmp	.label_1037
.label_1026:
	mov	rax, qword ptr [rbp - 0x500]
	cmp	qword ptr [rax], -1
	mov	rbp, rbp
	jne	.label_1040
	nop	
	xor	eax, eax
	mov	rbp, rbp
	mov	cl, al
	lea	rsi, [rsi]
	test	cl, 1
	jne	.label_544
	jmp	.label_1037
.label_1040:
	movabs	rax, 0x8000000000000000
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x500]
	mov	rsp, rsp
	cqo	
	nop	
	idiv	qword ptr [rcx]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x500]
	cmp	rax, qword ptr [rcx - 0x30]
	nop	
	jl	.label_544
	mov	rbp, rbp
	jmp	.label_1037
.label_1022:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x500]
	lea	rdi, [rdi]
	cmp	qword ptr [rax], 0
	lea	rdi, [rdi]
	jne	.label_1064
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	mov	rsp, rsp
	jne	.label_544
	jmp	.label_1037
.label_1064:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x500]
	nop	
	cmp	qword ptr [rax - 0x30], 0
	jge	.label_1068
	movabs	rax, 0x8000000000000000
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x500]
	mov	rcx, qword ptr [rcx - 0x30]
	mov	rdx, qword ptr [rbp - 0x500]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0xc60], rdx
	nop	
	cqo	
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0xc60]
	mov	rbp, rbp
	idiv	qword ptr [rsi]
	lea	rdi, [rdi]
	cmp	rcx, rax
	jl	.label_544
	jmp	.label_1037
.label_1068:
	movabs	rax, 0x7fffffffffffffff
	mov	rcx, qword ptr [rbp - 0x500]
	mov	rsp, rsp
	cqo	
	idiv	qword ptr [rcx]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x500]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rcx - 0x30]
	jl	.label_544
.label_1037:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x500]
	mov	rax, qword ptr [rax - 0x30]
	mov	rcx, qword ptr [rbp - 0x500]
	imul	rax, qword ptr [rcx]
	cmp	rax, -0x80
	mov	rsp, rsp
	jl	.label_544
	mov	eax, 0x7f
	lea	rdi, [rdi]
	mov	ecx, eax
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x500]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rdx - 0x30]
	nop	
	mov	rsi, qword ptr [rbp - 0x500]
	imul	rdx, qword ptr [rsi]
	cmp	rcx, rdx
	mov	rbp, rbp
	jge	.label_1118
.label_544:
	mov	al, 1
	mov	rcx, qword ptr [rbp - 0x500]
	mov	rcx, qword ptr [rcx - 0x30]
	mov	edx, ecx
	mov	rcx, qword ptr [rbp - 0x500]
	mov	rsp, rsp
	mov	rcx, qword ptr [rcx]
	lea	rdi, [rdi]
	mov	esi, ecx
	imul	edx, esi
	mov	rsp, rsp
	mov	dil, dl
	movsx	rcx, dil
	mov	qword ptr [rbp - 0x540], rcx
	test	al, 1
	jne	.label_249
	lea	rsi, [rsi]
	jmp	.label_146
.label_1118:
	lea	rdi, [rdi]
	xor	eax, eax
	mov	rsp, rsp
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x500]
	mov	rdx, qword ptr [rdx - 0x30]
	mov	eax, edx
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x500]
	mov	rdx, qword ptr [rdx]
	mov	esi, edx
	imul	eax, esi
	nop	
	mov	dil, al
	lea	rdi, [rdi]
	movsx	rdx, dil
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x540], rdx
	test	cl, 1
	jne	.label_249
	lea	rsi, [rsi]
	jmp	.label_146
.label_842:
	lea	rsi, [rsi]
	xor	eax, eax
	lea	rsi, [rsi]
	mov	cl, al
	nop	
	test	cl, 1
	jne	.label_151
	jmp	.label_254
.label_151:
	xor	eax, eax
	lea	rdi, [rdi]
	mov	cl, al
	test	cl, 1
	jne	.label_164
	mov	rbp, rbp
	jmp	.label_171
.label_164:
	mov	rax, qword ptr [rbp - 0x500]
	mov	rax, qword ptr [rax]
	mov	rsp, rsp
	mov	cx, ax
	movsx	edx, cx
	cmp	edx, 0
	jge	.label_174
	nop	
	mov	rax, qword ptr [rbp - 0x500]
	mov	rax, qword ptr [rax - 0x30]
	lea	rdi, [rdi]
	mov	cx, ax
	mov	rsp, rsp
	movsx	edx, cx
	cmp	edx, 0
	jge	.label_184
	mov	eax, 0x7fffffff
	mov	rcx, qword ptr [rbp - 0x500]
	mov	rcx, qword ptr [rcx - 0x30]
	lea	rsi, [rsi]
	mov	dx, cx
	movsx	esi, dx
	mov	rcx, qword ptr [rbp - 0x500]
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
	jl	.label_194
	nop	
	jmp	.label_238
.label_184:
	nop	
	mov	rax, qword ptr [rbp - 0x500]
	mov	rsp, rsp
	mov	rax, qword ptr [rax]
	mov	cx, ax
	movsx	edx, cx
	lea	rdi, [rdi]
	cmp	edx, -1
	nop	
	jne	.label_220
	lea	rdi, [rdi]
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_194
	lea	rsi, [rsi]
	jmp	.label_238
.label_220:
	lea	rdi, [rdi]
	mov	eax, 0x80000000
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x500]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rcx]
	mov	rbp, rbp
	mov	dx, cx
	movsx	esi, dx
	nop	
	cdq	
	lea	rsi, [rsi]
	idiv	esi
	mov	rcx, qword ptr [rbp - 0x500]
	mov	rsp, rsp
	mov	rcx, qword ptr [rcx - 0x30]
	lea	rdi, [rdi]
	mov	di, cx
	mov	rbp, rbp
	movsx	esi, di
	lea	rdi, [rdi]
	cmp	eax, esi
	lea	rdi, [rdi]
	jl	.label_194
	mov	rbp, rbp
	jmp	.label_238
.label_174:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x500]
	mov	rax, qword ptr [rax]
	lea	rsi, [rsi]
	mov	cx, ax
	lea	rdi, [rdi]
	movsx	edx, cx
	cmp	edx, 0
	lea	rsi, [rsi]
	jne	.label_271
	xor	eax, eax
	nop	
	mov	cl, al
	test	cl, 1
	jne	.label_194
	jmp	.label_238
.label_271:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x500]
	mov	rbp, rbp
	mov	rax, qword ptr [rax - 0x30]
	mov	cx, ax
	nop	
	movsx	edx, cx
	cmp	edx, 0
	jge	.label_799
	lea	rsi, [rsi]
	mov	eax, 0x80000000
	mov	rcx, qword ptr [rbp - 0x500]
	mov	rsp, rsp
	mov	rcx, qword ptr [rcx - 0x30]
	mov	dx, cx
	mov	rsp, rsp
	movsx	esi, dx
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x500]
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
	jl	.label_194
	nop	
	jmp	.label_238
.label_799:
	mov	eax, 0x7fffffff
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x500]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rcx]
	lea	rdi, [rdi]
	mov	dx, cx
	movsx	esi, dx
	mov	rsp, rsp
	cdq	
	idiv	esi
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x500]
	mov	rcx, qword ptr [rcx - 0x30]
	mov	di, cx
	movsx	esi, di
	lea	rdi, [rdi]
	cmp	eax, esi
	nop	
	jl	.label_194
.label_238:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x500]
	mov	rax, qword ptr [rax - 0x30]
	lea	rdi, [rdi]
	mov	cx, ax
	movsx	edx, cx
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x500]
	nop	
	mov	rax, qword ptr [rax]
	nop	
	mov	cx, ax
	movsx	esi, cx
	lea	rdi, [rdi]
	imul	edx, esi
	mov	rsp, rsp
	cmp	edx, 0xffff8000
	jl	.label_194
	mov	eax, 0x7fff
	mov	rcx, qword ptr [rbp - 0x500]
	mov	rcx, qword ptr [rcx - 0x30]
	mov	dx, cx
	movsx	esi, dx
	mov	rcx, qword ptr [rbp - 0x500]
	mov	rbp, rbp
	mov	rcx, qword ptr [rcx]
	mov	rbp, rbp
	mov	dx, cx
	mov	rsp, rsp
	movsx	edi, dx
	lea	rdi, [rdi]
	imul	esi, edi
	cmp	eax, esi
	jge	.label_1108
.label_194:
	mov	al, 1
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x500]
	mov	rcx, qword ptr [rcx - 0x30]
	mov	dx, cx
	nop	
	movsx	esi, dx
	mov	rcx, qword ptr [rbp - 0x500]
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
	mov	qword ptr [rbp - 0x540], rcx
	mov	rbp, rbp
	test	al, 1
	lea	rdi, [rdi]
	jne	.label_249
	lea	rsi, [rsi]
	jmp	.label_146
.label_1108:
	xor	eax, eax
	mov	cl, al
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x500]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rdx - 0x30]
	mov	si, dx
	lea	rdi, [rdi]
	movsx	eax, si
	mov	rdx, qword ptr [rbp - 0x500]
	mov	rdx, qword ptr [rdx]
	mov	rsp, rsp
	mov	si, dx
	movsx	edi, si
	mov	rbp, rbp
	imul	eax, edi
	mov	si, ax
	movsx	rdx, si
	mov	qword ptr [rbp - 0x540], rdx
	nop	
	test	cl, 1
	nop	
	jne	.label_249
	mov	rsp, rsp
	jmp	.label_146
.label_171:
	mov	rax, qword ptr [rbp - 0x500]
	mov	rsp, rsp
	cmp	qword ptr [rax], 0
	mov	rsp, rsp
	jge	.label_411
	mov	rax, qword ptr [rbp - 0x500]
	cmp	qword ptr [rax - 0x30], 0
	lea	rsi, [rsi]
	jge	.label_417
	lea	rsi, [rsi]
	movabs	rax, 0x7fffffffffffffff
	mov	rcx, qword ptr [rbp - 0x500]
	mov	rcx, qword ptr [rcx - 0x30]
	mov	rdx, qword ptr [rbp - 0x500]
	mov	qword ptr [rbp - 0xc68], rdx
	cqo	
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0xc68]
	mov	rbp, rbp
	idiv	qword ptr [rsi]
	cmp	rcx, rax
	jl	.label_420
	lea	rsi, [rsi]
	jmp	.label_443
.label_417:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x500]
	lea	rdi, [rdi]
	cmp	qword ptr [rax], -1
	jne	.label_444
	mov	rsp, rsp
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_420
	nop	
	jmp	.label_443
.label_444:
	lea	rsi, [rsi]
	movabs	rax, 0x8000000000000000
	mov	rcx, qword ptr [rbp - 0x500]
	lea	rsi, [rsi]
	cqo	
	nop	
	idiv	qword ptr [rcx]
	mov	rcx, qword ptr [rbp - 0x500]
	cmp	rax, qword ptr [rcx - 0x30]
	nop	
	jl	.label_420
	jmp	.label_443
.label_411:
	mov	rax, qword ptr [rbp - 0x500]
	cmp	qword ptr [rax], 0
	mov	rsp, rsp
	jne	.label_751
	xor	eax, eax
	mov	cl, al
	nop	
	test	cl, 1
	jne	.label_420
	jmp	.label_443
.label_751:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x500]
	cmp	qword ptr [rax - 0x30], 0
	jge	.label_476
	lea	rsi, [rsi]
	movabs	rax, 0x8000000000000000
	mov	rcx, qword ptr [rbp - 0x500]
	mov	rcx, qword ptr [rcx - 0x30]
	mov	rdx, qword ptr [rbp - 0x500]
	mov	qword ptr [rbp - 0xc70], rdx
	nop	
	cqo	
	mov	rsi, qword ptr [rbp - 0xc70]
	mov	rbp, rbp
	idiv	qword ptr [rsi]
	lea	rsi, [rsi]
	cmp	rcx, rax
	mov	rsp, rsp
	jl	.label_420
	lea	rdi, [rdi]
	jmp	.label_443
.label_476:
	mov	rbp, rbp
	movabs	rax, 0x7fffffffffffffff
	mov	rcx, qword ptr [rbp - 0x500]
	lea	rsi, [rsi]
	cqo	
	nop	
	idiv	qword ptr [rcx]
	mov	rcx, qword ptr [rbp - 0x500]
	mov	rbp, rbp
	cmp	rax, qword ptr [rcx - 0x30]
	mov	rsp, rsp
	jl	.label_420
.label_443:
	mov	rax, qword ptr [rbp - 0x500]
	mov	rax, qword ptr [rax - 0x30]
	mov	rcx, qword ptr [rbp - 0x500]
	nop	
	imul	rax, qword ptr [rcx]
	mov	rbp, rbp
	cmp	rax, -0x8000
	mov	rsp, rsp
	jl	.label_420
	mov	eax, 0x7fff
	mov	rsp, rsp
	mov	ecx, eax
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x500]
	mov	rdx, qword ptr [rdx - 0x30]
	mov	rsi, qword ptr [rbp - 0x500]
	lea	rdi, [rdi]
	imul	rdx, qword ptr [rsi]
	cmp	rcx, rdx
	lea	rsi, [rsi]
	jge	.label_541
.label_420:
	mov	rsp, rsp
	mov	al, 1
	mov	rcx, qword ptr [rbp - 0x500]
	mov	rcx, qword ptr [rcx - 0x30]
	mov	edx, ecx
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x500]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rcx]
	lea	rdi, [rdi]
	mov	esi, ecx
	imul	edx, esi
	mov	di, dx
	lea	rsi, [rsi]
	movsx	rcx, di
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x540], rcx
	lea	rsi, [rsi]
	test	al, 1
	jne	.label_249
	jmp	.label_146
.label_541:
	nop	
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x500]
	mov	rdx, qword ptr [rdx - 0x30]
	mov	eax, edx
	mov	rdx, qword ptr [rbp - 0x500]
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
	mov	qword ptr [rbp - 0x540], rdx
	lea	rsi, [rsi]
	test	cl, 1
	jne	.label_249
	lea	rdi, [rdi]
	jmp	.label_146
.label_254:
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_593
	jmp	.label_595
.label_593:
	mov	rsp, rsp
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	nop	
	jne	.label_596
	jmp	.label_600
.label_596:
	mov	rax, qword ptr [rbp - 0x500]
	mov	rax, qword ptr [rax]
	mov	rsp, rsp
	mov	ecx, eax
	mov	rsp, rsp
	cmp	ecx, 0
	jge	.label_601
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x500]
	mov	rax, qword ptr [rax - 0x30]
	mov	ecx, eax
	mov	rsp, rsp
	cmp	ecx, 0
	lea	rsi, [rsi]
	jge	.label_607
	mov	rsp, rsp
	mov	eax, 0x7fffffff
	mov	rcx, qword ptr [rbp - 0x500]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rcx - 0x30]
	mov	edx, ecx
	nop	
	mov	rcx, qword ptr [rbp - 0x500]
	mov	rcx, qword ptr [rcx]
	lea	rdi, [rdi]
	mov	esi, ecx
	mov	dword ptr [rbp - 0xc74], edx
	mov	rsp, rsp
	cdq	
	idiv	esi
	mov	esi, dword ptr [rbp - 0xc74]
	lea	rdi, [rdi]
	cmp	esi, eax
	jl	.label_615
	jmp	.label_633
.label_607:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x500]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax]
	mov	rbp, rbp
	mov	ecx, eax
	cmp	ecx, -1
	lea	rdi, [rdi]
	jne	.label_634
	xor	eax, eax
	mov	cl, al
	mov	rbp, rbp
	test	cl, 1
	jne	.label_615
	nop	
	jmp	.label_633
.label_634:
	nop	
	mov	eax, 0x80000000
	mov	rcx, qword ptr [rbp - 0x500]
	mov	rcx, qword ptr [rcx]
	mov	rsp, rsp
	mov	edx, ecx
	nop	
	mov	dword ptr [rbp - 0xc78], edx
	cdq	
	mov	rbp, rbp
	mov	esi, dword ptr [rbp - 0xc78]
	lea	rsi, [rsi]
	idiv	esi
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x500]
	mov	rcx, qword ptr [rcx - 0x30]
	mov	rbp, rbp
	mov	edi, ecx
	lea	rdi, [rdi]
	cmp	eax, edi
	lea	rsi, [rsi]
	jl	.label_615
	lea	rdi, [rdi]
	jmp	.label_633
.label_601:
	mov	rax, qword ptr [rbp - 0x500]
	mov	rax, qword ptr [rax]
	lea	rdi, [rdi]
	mov	ecx, eax
	cmp	ecx, 0
	lea	rsi, [rsi]
	jne	.label_663
	xor	eax, eax
	mov	rsp, rsp
	mov	cl, al
	test	cl, 1
	jne	.label_615
	jmp	.label_633
.label_663:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x500]
	mov	rax, qword ptr [rax - 0x30]
	mov	rbp, rbp
	mov	ecx, eax
	mov	rsp, rsp
	cmp	ecx, 0
	jge	.label_672
	lea	rdi, [rdi]
	mov	eax, 0x80000000
	mov	rcx, qword ptr [rbp - 0x500]
	mov	rcx, qword ptr [rcx - 0x30]
	mov	edx, ecx
	nop	
	mov	rcx, qword ptr [rbp - 0x500]
	mov	rcx, qword ptr [rcx]
	mov	esi, ecx
	mov	dword ptr [rbp - 0xc7c], edx
	mov	rbp, rbp
	cdq	
	idiv	esi
	nop	
	mov	esi, dword ptr [rbp - 0xc7c]
	lea	rsi, [rsi]
	cmp	esi, eax
	lea	rsi, [rsi]
	jl	.label_615
	jmp	.label_633
.label_672:
	mov	rbp, rbp
	mov	eax, 0x7fffffff
	mov	rcx, qword ptr [rbp - 0x500]
	mov	rcx, qword ptr [rcx]
	mov	edx, ecx
	mov	dword ptr [rbp - 0xc80], edx
	cdq	
	lea	rdi, [rdi]
	mov	esi, dword ptr [rbp - 0xc80]
	idiv	esi
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x500]
	nop	
	mov	rcx, qword ptr [rcx - 0x30]
	mov	rbp, rbp
	mov	edi, ecx
	cmp	eax, edi
	jl	.label_615
.label_633:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x500]
	mov	rsp, rsp
	mov	rax, qword ptr [rax - 0x30]
	mov	ecx, eax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x500]
	mov	rax, qword ptr [rax]
	mov	edx, eax
	nop	
	imul	ecx, edx
	cmp	ecx, 0x80000000
	jl	.label_615
	lea	rsi, [rsi]
	mov	eax, 0x7fffffff
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x500]
	mov	rsp, rsp
	mov	rcx, qword ptr [rcx - 0x30]
	mov	edx, ecx
	mov	rcx, qword ptr [rbp - 0x500]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rcx]
	mov	rbp, rbp
	mov	esi, ecx
	lea	rsi, [rsi]
	imul	edx, esi
	mov	rsp, rsp
	cmp	eax, edx
	lea	rsi, [rsi]
	jge	.label_717
.label_615:
	mov	rbp, rbp
	mov	al, 1
	mov	rcx, qword ptr [rbp - 0x500]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rcx - 0x30]
	mov	rsp, rsp
	mov	edx, ecx
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x500]
	mov	rcx, qword ptr [rcx]
	mov	rsp, rsp
	mov	esi, ecx
	nop	
	imul	edx, esi
	movsxd	rcx, edx
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x540], rcx
	test	al, 1
	mov	rbp, rbp
	jne	.label_249
	lea	rsi, [rsi]
	jmp	.label_146
.label_717:
	xor	eax, eax
	mov	rsp, rsp
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x500]
	mov	rdx, qword ptr [rdx - 0x30]
	mov	eax, edx
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x500]
	nop	
	mov	rdx, qword ptr [rdx]
	mov	rbp, rbp
	mov	esi, edx
	lea	rsi, [rsi]
	imul	eax, esi
	mov	rsp, rsp
	movsxd	rdx, eax
	mov	qword ptr [rbp - 0x540], rdx
	test	cl, 1
	jne	.label_249
	lea	rdi, [rdi]
	jmp	.label_146
.label_600:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x500]
	cmp	qword ptr [rax], 0
	mov	rbp, rbp
	jge	.label_781
	mov	rax, qword ptr [rbp - 0x500]
	mov	rbp, rbp
	cmp	qword ptr [rax - 0x30], 0
	lea	rsi, [rsi]
	jge	.label_784
	mov	rsp, rsp
	movabs	rax, 0x7fffffffffffffff
	mov	rcx, qword ptr [rbp - 0x500]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rcx - 0x30]
	nop	
	mov	rdx, qword ptr [rbp - 0x500]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0xc88], rdx
	lea	rsi, [rsi]
	cqo	
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0xc88]
	mov	rsp, rsp
	idiv	qword ptr [rsi]
	mov	rsp, rsp
	cmp	rcx, rax
	lea	rdi, [rdi]
	jl	.label_697
	jmp	.label_483
.label_784:
	mov	rax, qword ptr [rbp - 0x500]
	mov	rsp, rsp
	cmp	qword ptr [rax], -1
	mov	rsp, rsp
	jne	.label_804
	mov	rbp, rbp
	xor	eax, eax
	lea	rsi, [rsi]
	mov	cl, al
	test	cl, 1
	nop	
	jne	.label_697
	jmp	.label_483
.label_804:
	nop	
	movabs	rax, 0x8000000000000000
	mov	rcx, qword ptr [rbp - 0x500]
	cqo	
	idiv	qword ptr [rcx]
	mov	rcx, qword ptr [rbp - 0x500]
	mov	rbp, rbp
	cmp	rax, qword ptr [rcx - 0x30]
	jl	.label_697
	jmp	.label_483
.label_781:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x500]
	cmp	qword ptr [rax], 0
	lea	rdi, [rdi]
	jne	.label_823
	xor	eax, eax
	mov	cl, al
	lea	rdi, [rdi]
	test	cl, 1
	jne	.label_697
	mov	rsp, rsp
	jmp	.label_483
.label_823:
	mov	rax, qword ptr [rbp - 0x500]
	nop	
	cmp	qword ptr [rax - 0x30], 0
	jge	.label_830
	movabs	rax, 0x8000000000000000
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x500]
	mov	rcx, qword ptr [rcx - 0x30]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x500]
	mov	qword ptr [rbp - 0xc90], rdx
	mov	rsp, rsp
	cqo	
	mov	rsi, qword ptr [rbp - 0xc90]
	idiv	qword ptr [rsi]
	lea	rsi, [rsi]
	cmp	rcx, rax
	lea	rsi, [rsi]
	jl	.label_697
	jmp	.label_483
.label_830:
	movabs	rax, 0x7fffffffffffffff
	mov	rcx, qword ptr [rbp - 0x500]
	mov	rsp, rsp
	cqo	
	mov	rbp, rbp
	idiv	qword ptr [rcx]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x500]
	cmp	rax, qword ptr [rcx - 0x30]
	lea	rsi, [rsi]
	jl	.label_697
.label_483:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x500]
	mov	rbp, rbp
	mov	rax, qword ptr [rax - 0x30]
	mov	rcx, qword ptr [rbp - 0x500]
	imul	rax, qword ptr [rcx]
	cmp	rax, -0x80000000
	nop	
	jl	.label_697
	mov	rsp, rsp
	mov	eax, 0x7fffffff
	lea	rsi, [rsi]
	mov	ecx, eax
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x500]
	mov	rsp, rsp
	mov	rdx, qword ptr [rdx - 0x30]
	mov	rsi, qword ptr [rbp - 0x500]
	imul	rdx, qword ptr [rsi]
	cmp	rcx, rdx
	jge	.label_872
.label_697:
	mov	al, 1
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x500]
	mov	rcx, qword ptr [rcx - 0x30]
	lea	rsi, [rsi]
	mov	edx, ecx
	mov	rcx, qword ptr [rbp - 0x500]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rcx]
	mov	esi, ecx
	lea	rdi, [rdi]
	imul	edx, esi
	mov	rbp, rbp
	movsxd	rcx, edx
	mov	qword ptr [rbp - 0x540], rcx
	lea	rdi, [rdi]
	test	al, 1
	jne	.label_249
	jmp	.label_146
.label_872:
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x500]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rdx - 0x30]
	mov	eax, edx
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x500]
	mov	rdx, qword ptr [rdx]
	mov	rbp, rbp
	mov	esi, edx
	lea	rsi, [rsi]
	imul	eax, esi
	movsxd	rdx, eax
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x540], rdx
	nop	
	test	cl, 1
	jne	.label_249
	lea	rdi, [rdi]
	jmp	.label_146
.label_595:
	mov	al, 1
	lea	rdi, [rdi]
	test	al, 1
	lea	rsi, [rsi]
	jne	.label_917
	jmp	.label_920
.label_917:
	mov	rbp, rbp
	xor	eax, eax
	mov	rbp, rbp
	mov	cl, al
	mov	rbp, rbp
	test	cl, 1
	jne	.label_922
	jmp	.label_923
.label_922:
	mov	rax, qword ptr [rbp - 0x500]
	mov	rbp, rbp
	cmp	qword ptr [rax], 0
	jge	.label_924
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x500]
	nop	
	cmp	qword ptr [rax - 0x30], 0
	mov	rsp, rsp
	jge	.label_692
	movabs	rax, 0x7fffffffffffffff
	nop	
	mov	rcx, qword ptr [rbp - 0x500]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rcx - 0x30]
	mov	rdx, qword ptr [rbp - 0x500]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0xc98], rdx
	nop	
	cqo	
	mov	rsi, qword ptr [rbp - 0xc98]
	lea	rdi, [rdi]
	idiv	qword ptr [rsi]
	lea	rdi, [rdi]
	cmp	rcx, rax
	jl	.label_386
	mov	rsp, rsp
	jmp	.label_629
.label_692:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x500]
	mov	rsp, rsp
	cmp	qword ptr [rax], -1
	lea	rsi, [rsi]
	jne	.label_944
	lea	rdi, [rdi]
	xor	eax, eax
	nop	
	mov	cl, al
	test	cl, 1
	jne	.label_386
	jmp	.label_629
.label_944:
	nop	
	movabs	rax, 0x8000000000000000
	mov	rcx, qword ptr [rbp - 0x500]
	cqo	
	lea	rdi, [rdi]
	idiv	qword ptr [rcx]
	mov	rcx, qword ptr [rbp - 0x500]
	cmp	rax, qword ptr [rcx - 0x30]
	jl	.label_386
	jmp	.label_629
.label_924:
	mov	rax, qword ptr [rbp - 0x500]
	cmp	qword ptr [rax], 0
	jne	.label_948
	mov	rbp, rbp
	xor	eax, eax
	lea	rdi, [rdi]
	mov	cl, al
	mov	rsp, rsp
	test	cl, 1
	jne	.label_386
	jmp	.label_629
.label_948:
	mov	rax, qword ptr [rbp - 0x500]
	cmp	qword ptr [rax - 0x30], 0
	mov	rsp, rsp
	jge	.label_985
	lea	rdi, [rdi]
	movabs	rax, 0x8000000000000000
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x500]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rcx - 0x30]
	mov	rdx, qword ptr [rbp - 0x500]
	mov	qword ptr [rbp - 0xca0], rdx
	lea	rdi, [rdi]
	cqo	
	nop	
	mov	rsi, qword ptr [rbp - 0xca0]
	idiv	qword ptr [rsi]
	mov	rsp, rsp
	cmp	rcx, rax
	lea	rdi, [rdi]
	jl	.label_386
	jmp	.label_629
.label_985:
	movabs	rax, 0x7fffffffffffffff
	mov	rcx, qword ptr [rbp - 0x500]
	cqo	
	lea	rdi, [rdi]
	idiv	qword ptr [rcx]
	mov	rcx, qword ptr [rbp - 0x500]
	cmp	rax, qword ptr [rcx - 0x30]
	jl	.label_386
.label_629:
	movabs	rax, 0x8000000000000000
	mov	rcx, qword ptr [rbp - 0x500]
	mov	rcx, qword ptr [rcx - 0x30]
	mov	rdx, qword ptr [rbp - 0x500]
	imul	rcx, qword ptr [rdx]
	cmp	rcx, rax
	jl	.label_386
	movabs	rax, 0x7fffffffffffffff
	mov	rcx, qword ptr [rbp - 0x500]
	mov	rcx, qword ptr [rcx - 0x30]
	mov	rdx, qword ptr [rbp - 0x500]
	mov	rsp, rsp
	imul	rcx, qword ptr [rdx]
	lea	rdi, [rdi]
	cmp	rax, rcx
	mov	rbp, rbp
	jge	.label_1025
.label_386:
	mov	al, 1
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x500]
	mov	rcx, qword ptr [rcx - 0x30]
	mov	rdx, qword ptr [rbp - 0x500]
	lea	rdi, [rdi]
	imul	rcx, qword ptr [rdx]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x540], rcx
	mov	rbp, rbp
	test	al, 1
	jne	.label_249
	mov	rsp, rsp
	jmp	.label_146
.label_1025:
	xor	eax, eax
	mov	cl, al
	nop	
	mov	rdx, qword ptr [rbp - 0x500]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rdx - 0x30]
	mov	rsi, qword ptr [rbp - 0x500]
	mov	rsp, rsp
	imul	rdx, qword ptr [rsi]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x540], rdx
	mov	rsp, rsp
	test	cl, 1
	jne	.label_249
	mov	rsp, rsp
	jmp	.label_146
.label_923:
	mov	rax, qword ptr [rbp - 0x500]
	lea	rdi, [rdi]
	cmp	qword ptr [rax], 0
	jge	.label_1058
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x500]
	lea	rsi, [rsi]
	cmp	qword ptr [rax - 0x30], 0
	mov	rbp, rbp
	jge	.label_1062
	movabs	rax, 0x7fffffffffffffff
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x500]
	mov	rcx, qword ptr [rcx - 0x30]
	mov	rdx, qword ptr [rbp - 0x500]
	nop	
	mov	qword ptr [rbp - 0xca8], rdx
	cqo	
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0xca8]
	idiv	qword ptr [rsi]
	lea	rdi, [rdi]
	cmp	rcx, rax
	lea	rdi, [rdi]
	jl	.label_261
	mov	rbp, rbp
	jmp	.label_245
.label_1062:
	mov	rax, qword ptr [rbp - 0x500]
	nop	
	cmp	qword ptr [rax], -1
	jne	.label_745
	xor	eax, eax
	mov	cl, al
	lea	rsi, [rsi]
	test	cl, 1
	nop	
	jne	.label_261
	jmp	.label_245
.label_745:
	lea	rdi, [rdi]
	movabs	rax, 0x8000000000000000
	mov	rcx, qword ptr [rbp - 0x500]
	cqo	
	mov	rbp, rbp
	idiv	qword ptr [rcx]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x500]
	lea	rdi, [rdi]
	cmp	rax, qword ptr [rcx - 0x30]
	jl	.label_261
	nop	
	jmp	.label_245
.label_1058:
	mov	rax, qword ptr [rbp - 0x500]
	mov	rbp, rbp
	cmp	qword ptr [rax], 0
	jne	.label_1104
	lea	rdi, [rdi]
	xor	eax, eax
	lea	rsi, [rsi]
	mov	cl, al
	lea	rsi, [rsi]
	test	cl, 1
	jne	.label_261
	nop	
	jmp	.label_245
.label_1104:
	mov	rax, qword ptr [rbp - 0x500]
	mov	rbp, rbp
	cmp	qword ptr [rax - 0x30], 0
	lea	rdi, [rdi]
	jge	.label_1120
	movabs	rax, 0x8000000000000000
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x500]
	mov	rbp, rbp
	mov	rcx, qword ptr [rcx - 0x30]
	mov	rdx, qword ptr [rbp - 0x500]
	mov	qword ptr [rbp - 0xcb0], rdx
	cqo	
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0xcb0]
	mov	rsp, rsp
	idiv	qword ptr [rsi]
	lea	rsi, [rsi]
	cmp	rcx, rax
	mov	rbp, rbp
	jl	.label_261
	lea	rdi, [rdi]
	jmp	.label_245
.label_1120:
	mov	rsp, rsp
	movabs	rax, 0x7fffffffffffffff
	mov	rcx, qword ptr [rbp - 0x500]
	cqo	
	idiv	qword ptr [rcx]
	mov	rcx, qword ptr [rbp - 0x500]
	mov	rsp, rsp
	cmp	rax, qword ptr [rcx - 0x30]
	jl	.label_261
.label_245:
	movabs	rax, 0x8000000000000000
	mov	rcx, qword ptr [rbp - 0x500]
.label_5123:
	mov	rcx, qword ptr [rcx - 0x30]
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x500]
	lea	rsi, [rsi]
	imul	rcx, qword ptr [rdx]
	cmp	rcx, rax
	jl	.label_261
	lea	rsi, [rsi]
	movabs	rax, 0x7fffffffffffffff
	mov	rcx, qword ptr [rbp - 0x500]
	mov	rbp, rbp
	mov	rcx, qword ptr [rcx - 0x30]
	mov	rdx, qword ptr [rbp - 0x500]
	imul	rcx, qword ptr [rdx]
	lea	rdi, [rdi]
	cmp	rax, rcx
	jge	.label_925
.label_261:
	mov	al, 1
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x500]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rcx - 0x30]
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x500]
	imul	rcx, qword ptr [rdx]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x540], rcx
	test	al, 1
	jne	.label_249
	mov	rbp, rbp
	jmp	.label_146
.label_925:
	lea	rsi, [rsi]
	xor	eax, eax
	lea	rsi, [rsi]
	mov	cl, al
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x500]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rdx - 0x30]
	mov	rsi, qword ptr [rbp - 0x500]
	imul	rdx, qword ptr [rsi]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x540], rdx
	lea	rsi, [rsi]
	test	cl, 1
	jne	.label_249
	nop	
	jmp	.label_146
.label_920:
	mov	rsp, rsp
	xor	eax, eax
	mov	rbp, rbp
	mov	cl, al
	test	cl, 1
	lea	rdi, [rdi]
	jne	.label_221
	jmp	.label_230
.label_221:
	mov	rax, qword ptr [rbp - 0x500]
	mov	rsp, rsp
	cmp	qword ptr [rax], 0
	nop	
	jge	.label_231
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x500]
	cmp	qword ptr [rax - 0x30], 0
	jge	.label_592
	mov	rsp, rsp
	movabs	rax, 0x7fffffffffffffff
	mov	rcx, qword ptr [rbp - 0x500]
	mov	rbp, rbp
	mov	rcx, qword ptr [rcx - 0x30]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x500]
	mov	qword ptr [rbp - 0xcb8], rdx
	cqo	
	mov	rsi, qword ptr [rbp - 0xcb8]
	nop	
	idiv	qword ptr [rsi]
	mov	rsp, rsp
	cmp	rcx, rax
	jl	.label_248
	jmp	.label_281
.label_592:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x500]
	cmp	qword ptr [rax], -1
	jne	.label_272
	xor	eax, eax
	mov	rbp, rbp
	mov	cl, al
	nop	
	test	cl, 1
	lea	rdi, [rdi]
	jne	.label_248
	jmp	.label_281
.label_272:
	movabs	rax, 0x8000000000000000
	mov	rcx, qword ptr [rbp - 0x500]
	cqo	
	mov	rbp, rbp
	idiv	qword ptr [rcx]
	mov	rcx, qword ptr [rbp - 0x500]
	nop	
	cmp	rax, qword ptr [rcx - 0x30]
	mov	rbp, rbp
	jl	.label_248
	jmp	.label_281
.label_231:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x500]
	lea	rdi, [rdi]
	cmp	qword ptr [rax], 0
	jne	.label_293
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	lea	rsi, [rsi]
	jne	.label_248
	jmp	.label_281
.label_293:
	mov	rax, qword ptr [rbp - 0x500]
	cmp	qword ptr [rax - 0x30], 0
	mov	rbp, rbp
	jge	.label_908
	movabs	rax, 0x8000000000000000
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x500]
	mov	rcx, qword ptr [rcx - 0x30]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x500]
	mov	qword ptr [rbp - 0xcc0], rdx
	mov	rbp, rbp
	cqo	
	mov	rsi, qword ptr [rbp - 0xcc0]
	lea	rsi, [rsi]
	idiv	qword ptr [rsi]
	cmp	rcx, rax
	lea	rdi, [rdi]
	jl	.label_248
	jmp	.label_281
.label_908:
	lea	rsi, [rsi]
	movabs	rax, 0x7fffffffffffffff
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x500]
	cqo	
	lea	rsi, [rsi]
	idiv	qword ptr [rcx]
	mov	rcx, qword ptr [rbp - 0x500]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rcx - 0x30]
	nop	
	jl	.label_248
.label_281:
	mov	rbp, rbp
	movabs	rax, 0x8000000000000000
	mov	rcx, qword ptr [rbp - 0x500]
	mov	rcx, qword ptr [rcx - 0x30]
	mov	rdx, qword ptr [rbp - 0x500]
	mov	rbp, rbp
	imul	rcx, qword ptr [rdx]
	mov	rsp, rsp
	cmp	rcx, rax
	jl	.label_248
	movabs	rax, 0x7fffffffffffffff
	mov	rcx, qword ptr [rbp - 0x500]
	mov	rcx, qword ptr [rcx - 0x30]
	mov	rdx, qword ptr [rbp - 0x500]
	mov	rsp, rsp
	imul	rcx, qword ptr [rdx]
	mov	rbp, rbp
	cmp	rax, rcx
	jge	.label_365
.label_248:
	mov	al, 1
	mov	rcx, qword ptr [rbp - 0x500]
	mov	rsp, rsp
	mov	rcx, qword ptr [rcx - 0x30]
	mov	rdx, qword ptr [rbp - 0x500]
	lea	rsi, [rsi]
	imul	rcx, qword ptr [rdx]
	mov	qword ptr [rbp - 0x540], rcx
	test	al, 1
	jne	.label_249
	nop	
	jmp	.label_146
.label_365:
	lea	rsi, [rsi]
	xor	eax, eax
	nop	
	mov	cl, al
	nop	
	mov	rdx, qword ptr [rbp - 0x500]
	mov	rdx, qword ptr [rdx - 0x30]
	nop	
	mov	rsi, qword ptr [rbp - 0x500]
	imul	rdx, qword ptr [rsi]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x540], rdx
	lea	rdi, [rdi]
	test	cl, 1
	lea	rsi, [rsi]
	jne	.label_249
	mov	rsp, rsp
	jmp	.label_146
.label_230:
	mov	rax, qword ptr [rbp - 0x500]
	lea	rdi, [rdi]
	cmp	qword ptr [rax], 0
	jge	.label_406
	mov	rax, qword ptr [rbp - 0x500]
	cmp	qword ptr [rax - 0x30], 0
	mov	rsp, rsp
	jge	.label_409
	movabs	rax, 0x7fffffffffffffff
	mov	rcx, qword ptr [rbp - 0x500]
	mov	rcx, qword ptr [rcx - 0x30]
	mov	rdx, qword ptr [rbp - 0x500]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0xcc8], rdx
	cqo	
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0xcc8]
	nop	
	idiv	qword ptr [rsi]
	mov	rbp, rbp
	cmp	rcx, rax
	mov	rsp, rsp
	jl	.label_413
	nop	
	jmp	.label_433
.label_409:
	mov	rax, qword ptr [rbp - 0x500]
	cmp	qword ptr [rax], -1
	nop	
	jne	.label_436
	mov	rsp, rsp
	xor	eax, eax
	mov	rbp, rbp
	mov	cl, al
	test	cl, 1
	lea	rsi, [rsi]
	jne	.label_413
	jmp	.label_433
.label_436:
	movabs	rax, 0x8000000000000000
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x500]
	lea	rsi, [rsi]
	cqo	
	idiv	qword ptr [rcx]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x500]
	cmp	rax, qword ptr [rcx - 0x30]
	lea	rsi, [rsi]
	jl	.label_413
	jmp	.label_433
.label_406:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x500]
	cmp	qword ptr [rax], 0
	lea	rdi, [rdi]
	jne	.label_453
	lea	rdi, [rdi]
	xor	eax, eax
	mov	rbp, rbp
	mov	cl, al
	test	cl, 1
	jne	.label_413
	jmp	.label_433
.label_453:
	nop	
	mov	rax, qword ptr [rbp - 0x500]
	cmp	qword ptr [rax - 0x30], 0
	nop	
	jge	.label_470
	lea	rsi, [rsi]
	movabs	rax, 0x8000000000000000
	mov	rcx, qword ptr [rbp - 0x500]
	mov	rbp, rbp
	mov	rcx, qword ptr [rcx - 0x30]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x500]
	mov	qword ptr [rbp - 0xcd0], rdx
	cqo	
	mov	rsi, qword ptr [rbp - 0xcd0]
	mov	rbp, rbp
	idiv	qword ptr [rsi]
	cmp	rcx, rax
	mov	rsp, rsp
	jl	.label_413
	jmp	.label_433
.label_470:
	nop	
	movabs	rax, 0x7fffffffffffffff
	mov	rcx, qword ptr [rbp - 0x500]
	cqo	
	idiv	qword ptr [rcx]
	mov	rcx, qword ptr [rbp - 0x500]
	nop	
	cmp	rax, qword ptr [rcx - 0x30]
	nop	
	jl	.label_413
.label_433:
	mov	rsp, rsp
	movabs	rax, 0x8000000000000000
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x500]
	mov	rcx, qword ptr [rcx - 0x30]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x500]
	lea	rsi, [rsi]
	imul	rcx, qword ptr [rdx]
	nop	
	cmp	rcx, rax
	jl	.label_413
	movabs	rax, 0x7fffffffffffffff
	mov	rcx, qword ptr [rbp - 0x500]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rcx - 0x30]
	mov	rdx, qword ptr [rbp - 0x500]
	imul	rcx, qword ptr [rdx]
	cmp	rax, rcx
	jge	.label_532
.label_413:
	lea	rsi, [rsi]
	mov	al, 1
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x500]
	mov	rcx, qword ptr [rcx - 0x30]
	mov	rdx, qword ptr [rbp - 0x500]
	imul	rcx, qword ptr [rdx]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x540], rcx
	lea	rsi, [rsi]
	test	al, 1
	mov	rsp, rsp
	jne	.label_249
	jmp	.label_146
.label_532:
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x500]
	mov	rsp, rsp
	mov	rdx, qword ptr [rdx - 0x30]
	mov	rsi, qword ptr [rbp - 0x500]
	imul	rdx, qword ptr [rsi]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x540], rdx
	nop	
	test	cl, 1
	mov	rbp, rbp
	jne	.label_249
	jmp	.label_146
.label_249:
	jmp	.label_177
.label_146:
	jmp	.label_200
.label_5241:
	mov	eax, 0x38
	mov	rsp, rsp
	mov	edx, eax
	lea	rcx, [rbp - 0x780]
	lea	rsi, [rsi]
	lea	rsi, [rbp - 0x550]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x780], 0
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x778], 0
	mov	qword ptr [rbp - 0x770], 0
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x768], 0
	mov	qword ptr [rbp - 0x760], 0
	mov	qword ptr [rbp - 0x758], 0
	mov	dword ptr [rbp - 0x750], 0
	mov	rdi, rsi
	mov	rsi, rcx
	mov	rbp, rbp
	call	memcpy
	mov	rcx, qword ptr [rbp - 0x500]
	mov	rcx, qword ptr [rcx]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x540], rcx
	mov	rbp, rbp
	jmp	.label_200
.label_5242:
	mov	rsp, rsp
	mov	eax, 0x38
	mov	rbp, rbp
	mov	edx, eax
	nop	
	lea	rcx, [rbp - 0x7b8]
	nop	
	lea	rsi, [rbp - 0x550]
	mov	qword ptr [rbp - 0x7b8], 0
	nop	
	mov	qword ptr [rbp - 0x7b0], 0
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x7a8], 0
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x7a0], 0
	mov	qword ptr [rbp - 0x798], 0
	mov	qword ptr [rbp - 0x790], 0
	mov	dword ptr [rbp - 0x788], 0
	lea	rdi, [rdi]
	mov	rdi, rsi
	lea	rdi, [rdi]
	mov	rsi, rcx
	call	memcpy
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x500]
	mov	rcx, qword ptr [rcx - 0x38]
	mov	qword ptr [rbp - 0x538], rcx
	jmp	.label_200
.label_5243:
	nop	
	mov	eax, 0x38
	lea	rdi, [rdi]
	mov	edx, eax
	lea	rcx, [rbp - 0x7f0]
	mov	rbp, rbp
	lea	rsi, [rbp - 0x550]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x7f0], 0
	mov	qword ptr [rbp - 0x7e8], 0
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x7e0], 0
	mov	qword ptr [rbp - 0x7d8], 0
	mov	qword ptr [rbp - 0x7d0], 0
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x7c8], 0
	mov	dword ptr [rbp - 0x7c0], 0
	mov	rbp, rbp
	mov	rdi, rsi
	nop	
	mov	rsi, rcx
	call	memcpy
	mov	rcx, qword ptr [rbp - 0x500]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rcx - 0x30]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x538], rcx
	mov	rsp, rsp
	jmp	.label_200
.label_5244:
	mov	rsp, rsp
	mov	eax, 0x38
	lea	rdi, [rdi]
	mov	edx, eax
	lea	rdi, [rdi]
	lea	rcx, [rbp - 0x828]
	mov	rbp, rbp
	lea	rsi, [rbp - 0x550]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x828], 0
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x820], 0
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x818], 0
	nop	
	mov	qword ptr [rbp - 0x810], 0
	mov	qword ptr [rbp - 0x808], 0
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x800], 0
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x7f8], 0
	lea	rdi, [rdi]
	mov	rdi, rsi
	lea	rsi, [rsi]
	mov	rsi, rcx
	lea	rsi, [rsi]
	call	memcpy
	mov	qword ptr [rbp - 0x538], 1
	jmp	.label_200
.label_5245:
	mov	eax, 0x38
	mov	edx, eax
	lea	rcx, [rbp - 0x860]
	lea	rsi, [rbp - 0x550]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x860], 0
	mov	qword ptr [rbp - 0x858], 0
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x850], 0
	mov	qword ptr [rbp - 0x848], 0
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x840], 0
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x838], 0
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x830], 0
	mov	rdi, rsi
	mov	rsi, rcx
	call	memcpy
	mov	rcx, qword ptr [rbp - 0x500]
	mov	rcx, qword ptr [rcx - 0x38]
	nop	
	mov	qword ptr [rbp - 0x530], rcx
	mov	rbp, rbp
	jmp	.label_200
.label_5246:
	mov	rbp, rbp
	mov	eax, 0x38
	mov	rbp, rbp
	mov	edx, eax
	mov	rsp, rsp
	lea	rcx, [rbp - 0x898]
	nop	
	lea	rsi, [rbp - 0x550]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x898], 0
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x890], 0
	nop	
	mov	qword ptr [rbp - 0x888], 0
	mov	qword ptr [rbp - 0x880], 0
	mov	qword ptr [rbp - 0x878], 0
	mov	qword ptr [rbp - 0x870], 0
	mov	dword ptr [rbp - 0x868], 0
	mov	rdi, rsi
	mov	rsi, rcx
	mov	rbp, rbp
	call	memcpy
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x500]
	mov	rcx, qword ptr [rcx - 0x30]
	mov	qword ptr [rbp - 0x530], rcx
	lea	rdi, [rdi]
	jmp	.label_200
.label_5247:
	mov	eax, 0x38
	nop	
	mov	edx, eax
	mov	rsp, rsp
	lea	rcx, [rbp - 0x8d0]
	lea	rsi, [rbp - 0x550]
	mov	qword ptr [rbp - 0x8d0], 0
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x8c8], 0
	mov	qword ptr [rbp - 0x8c0], 0
	mov	qword ptr [rbp - 0x8b8], 0
	mov	qword ptr [rbp - 0x8b0], 0
	mov	qword ptr [rbp - 0x8a8], 0
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x8a0], 0
	mov	rbp, rbp
	mov	rdi, rsi
	lea	rsi, [rsi]
	mov	rsi, rcx
	call	memcpy
	nop	
	mov	qword ptr [rbp - 0x530], 1
	jmp	.label_200
.label_5248:
	mov	eax, 0x38
	mov	edx, eax
	lea	rdi, [rdi]
	lea	rcx, [rbp - 0x908]
	lea	rsi, [rbp - 0x550]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x908], 0
	mov	qword ptr [rbp - 0x900], 0
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x8f8], 0
	mov	qword ptr [rbp - 0x8f0], 0
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x8e8], 0
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x8e0], 0
	mov	dword ptr [rbp - 0x8d8], 0
	mov	rdi, rsi
	mov	rsi, rcx
	call	memcpy
	mov	rcx, qword ptr [rbp - 0x500]
	nop	
	mov	rcx, qword ptr [rcx - 0x38]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x528], rcx
	lea	rsi, [rsi]
	jmp	.label_200
.label_5249:
	mov	eax, 0x38
	mov	edx, eax
	lea	rcx, [rbp - 0x940]
	mov	rbp, rbp
	lea	rsi, [rbp - 0x550]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x940], 0
	mov	qword ptr [rbp - 0x938], 0
	mov	qword ptr [rbp - 0x930], 0
	mov	qword ptr [rbp - 0x928], 0
	nop	
	mov	qword ptr [rbp - 0x920], 0
	mov	qword ptr [rbp - 0x918], 0
	nop	
	mov	dword ptr [rbp - 0x910], 0
	mov	rdi, rsi
	mov	rsi, rcx
	call	memcpy
	nop	
	mov	rcx, qword ptr [rbp - 0x500]
	mov	rcx, qword ptr [rcx - 0x30]
	nop	
	mov	qword ptr [rbp - 0x528], rcx
	jmp	.label_200
.label_5250:
	mov	eax, 0x38
	mov	rsp, rsp
	mov	edx, eax
	lea	rcx, [rbp - 0x978]
	mov	rbp, rbp
	lea	rsi, [rbp - 0x550]
	mov	qword ptr [rbp - 0x978], 0
	mov	qword ptr [rbp - 0x970], 0
	mov	qword ptr [rbp - 0x968], 0
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x960], 0
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x958], 0
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x950], 0
	mov	dword ptr [rbp - 0x948], 0
	mov	rdi, rsi
	mov	rsi, rcx
	nop	
	call	memcpy
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x500]
	nop	
	mov	rcx, qword ptr [rcx - 0x38]
	mov	qword ptr [rbp - 0x528], rcx
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x500]
	mov	rsp, rsp
	mov	rcx, qword ptr [rcx - 0x30]
	lea	rsi, [rsi]
	mov	eax, ecx
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x520], eax
	jmp	.label_200
.label_5251:
	mov	eax, 0x38
	mov	edx, eax
	lea	rdi, [rdi]
	lea	rcx, [rbp - 0x9b0]
	lea	rsi, [rbp - 0x550]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x9b0], 0
	mov	qword ptr [rbp - 0x9a8], 0
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x9a0], 0
	mov	qword ptr [rbp - 0x998], 0
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x990], 0
	nop	
	mov	qword ptr [rbp - 0x988], 0
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x980], 0
	lea	rdi, [rdi]
	mov	rdi, rsi
	mov	rsp, rsp
	mov	rsi, rcx
	call	memcpy
	mov	rcx, qword ptr [rbp - 0x500]
	mov	rbp, rbp
	mov	rcx, qword ptr [rcx - 0x38]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x528], rcx
	mov	rcx, qword ptr [rbp - 0x500]
	mov	rbp, rbp
	mov	rcx, qword ptr [rcx - 0x30]
	lea	rdi, [rdi]
	mov	eax, ecx
	mov	dword ptr [rbp - 0x520], eax
	jmp	.label_200
.label_5252:
	mov	rsp, rsp
	mov	eax, 0x38
	mov	rsp, rsp
	mov	edx, eax
	lea	rcx, [rbp - 0x9e8]
	lea	rsi, [rsi]
	lea	rsi, [rbp - 0x550]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x9e8], 0
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x9e0], 0
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x9d8], 0
	mov	qword ptr [rbp - 0x9d0], 0
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x9c8], 0
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x9c0], 0
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x9b8], 0
	mov	rdi, rsi
	mov	rsi, rcx
	call	memcpy
	mov	qword ptr [rbp - 0x528], 1
	mov	rbp, rbp
	jmp	.label_200
.label_5253:
	lea	rdi, [rdi]
	mov	eax, 0x38
	mov	edx, eax
	lea	rcx, [rbp - 0xa20]
	nop	
	lea	rsi, [rbp - 0x550]
	mov	qword ptr [rbp - 0xa20], 0
	mov	qword ptr [rbp - 0xa18], 0
	mov	qword ptr [rbp - 0xa10], 0
	mov	qword ptr [rbp - 0xa08], 0
	mov	qword ptr [rbp - 0xa00], 0
	mov	qword ptr [rbp - 0x9f8], 0
	mov	dword ptr [rbp - 0x9f0], 0
	mov	rsp, rsp
	mov	rdi, rsi
	lea	rdi, [rdi]
	mov	rsi, rcx
	call	memcpy
	mov	rcx, qword ptr [rbp - 0x500]
	mov	rcx, qword ptr [rcx - 0x30]
	mov	qword ptr [rbp - 0x550], rcx
	jmp	.label_200
.label_5254:
	lea	rdi, [rdi]
	mov	eax, 0x38
	mov	edx, eax
	nop	
	lea	rcx, [rbp - 0xa58]
	mov	rsp, rsp
	lea	rsi, [rbp - 0x550]
	nop	
	mov	qword ptr [rbp - 0xa58], 0
	mov	qword ptr [rbp - 0xa50], 0
	mov	qword ptr [rbp - 0xa48], 0
	mov	qword ptr [rbp - 0xa40], 0
	mov	qword ptr [rbp - 0xa38], 0
	mov	qword ptr [rbp - 0xa30], 0
	nop	
	mov	dword ptr [rbp - 0xa28], 0
	lea	rdi, [rdi]
	mov	rdi, rsi
	lea	rsi, [rsi]
	mov	rsi, rcx
	mov	rbp, rbp
	call	memcpy
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x500]
	mov	rcx, qword ptr [rcx - 0x30]
	mov	qword ptr [rbp - 0x548], rcx
	lea	rsi, [rsi]
	jmp	.label_200
.label_5255:
	xor	eax, eax
	lea	rsi, [rsi]
	mov	cl, al
	mov	rbp, rbp
	mov	eax, 0x38
	mov	edx, eax
	lea	rsi, [rbp - 0xa90]
	lea	rdi, [rbp - 0x550]
	mov	qword ptr [rbp - 0xa90], 0
	mov	qword ptr [rbp - 0xa88], 0
	mov	qword ptr [rbp - 0xa80], 0
	mov	qword ptr [rbp - 0xa78], 0
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0xa70], 0
	mov	qword ptr [rbp - 0xa68], 0
	mov	rbp, rbp
	mov	dword ptr [rbp - 0xa60], 0
	mov	byte ptr [rbp - 0xcd1], cl
	call	memcpy
	lea	rsi, [rsi]
	mov	cl, byte ptr [rbp - 0xcd1]
	test	cl, 1
	nop	
	jne	.label_1082
	jmp	.label_1087
.label_1082:
	xor	eax, eax
	nop	
	mov	cl, al
	nop	
	test	cl, 1
	jne	.label_1089
	jmp	.label_787
.label_1089:
	mov	rax, qword ptr [rbp - 0x500]
	mov	rax, qword ptr [rax]
	lea	rsi, [rsi]
	mov	cl, al
	movsx	edx, cl
	cmp	edx, 0
	jge	.label_818
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x500]
	mov	rax, qword ptr [rax - 0x30]
	lea	rsi, [rsi]
	mov	cl, al
	movsx	edx, cl
	nop	
	cmp	edx, 0
	mov	rbp, rbp
	jge	.label_1098
	nop	
	mov	eax, 0x7fffffff
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x500]
	mov	rcx, qword ptr [rcx - 0x30]
	mov	dl, cl
	movsx	esi, dl
	mov	rcx, qword ptr [rbp - 0x500]
	mov	rcx, qword ptr [rcx]
	mov	dl, cl
	movsx	edi, dl
	nop	
	cdq	
	idiv	edi
	mov	rbp, rbp
	cmp	esi, eax
	mov	rbp, rbp
	jl	.label_144
	jmp	.label_153
.label_1098:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x500]
	mov	rbp, rbp
	mov	rax, qword ptr [rax]
	mov	cl, al
	movsx	edx, cl
	cmp	edx, -1
	jne	.label_1128
	xor	eax, eax
	mov	cl, al
	mov	rbp, rbp
	test	cl, 1
	jne	.label_144
	mov	rsp, rsp
	jmp	.label_153
.label_1128:
	nop	
	mov	eax, 0x80000000
	mov	rcx, qword ptr [rbp - 0x500]
	mov	rsp, rsp
	mov	rcx, qword ptr [rcx]
	mov	dl, cl
	movsx	esi, dl
	nop	
	cdq	
	nop	
	idiv	esi
	mov	rcx, qword ptr [rbp - 0x500]
	mov	rcx, qword ptr [rcx - 0x30]
	lea	rsi, [rsi]
	mov	dil, cl
	movsx	esi, dil
	cmp	eax, esi
	jl	.label_144
	jmp	.label_153
.label_818:
	mov	rax, qword ptr [rbp - 0x500]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax]
	mov	cl, al
	lea	rdi, [rdi]
	movsx	edx, cl
	mov	rbp, rbp
	cmp	edx, 0
	mov	rsp, rsp
	jne	.label_609
	xor	eax, eax
	mov	cl, al
	mov	rbp, rbp
	test	cl, 1
	jne	.label_144
	jmp	.label_153
.label_609:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x500]
	mov	rax, qword ptr [rax - 0x30]
	mov	rsp, rsp
	mov	cl, al
	mov	rbp, rbp
	movsx	edx, cl
	mov	rsp, rsp
	cmp	edx, 0
	jge	.label_156
	mov	eax, 0x80000000
	mov	rcx, qword ptr [rbp - 0x500]
	mov	rcx, qword ptr [rcx - 0x30]
	nop	
	mov	dl, cl
	movsx	esi, dl
	mov	rcx, qword ptr [rbp - 0x500]
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
	jl	.label_144
	jmp	.label_153
.label_156:
	mov	eax, 0x7fffffff
	mov	rcx, qword ptr [rbp - 0x500]
	nop	
	mov	rcx, qword ptr [rcx]
	mov	dl, cl
	movsx	esi, dl
	cdq	
	idiv	esi
	nop	
	mov	rcx, qword ptr [rbp - 0x500]
	mov	rcx, qword ptr [rcx - 0x30]
	mov	rbp, rbp
	mov	dil, cl
	lea	rsi, [rsi]
	movsx	esi, dil
	cmp	eax, esi
	nop	
	jl	.label_144
.label_153:
	mov	rax, qword ptr [rbp - 0x500]
	mov	rax, qword ptr [rax - 0x30]
	mov	cl, al
	mov	rbp, rbp
	movsx	edx, cl
	mov	rax, qword ptr [rbp - 0x500]
	mov	rax, qword ptr [rax]
	mov	rbp, rbp
	mov	cl, al
	lea	rdi, [rdi]
	movsx	esi, cl
	lea	rdi, [rdi]
	imul	edx, esi
	cmp	edx, -0x80
	jl	.label_144
	lea	rsi, [rsi]
	mov	eax, 0x7f
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x500]
	mov	rcx, qword ptr [rcx - 0x30]
	mov	rbp, rbp
	mov	dl, cl
	mov	rbp, rbp
	movsx	esi, dl
	mov	rcx, qword ptr [rbp - 0x500]
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
	jge	.label_1147
.label_144:
	mov	al, 1
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x500]
	mov	rcx, qword ptr [rcx - 0x30]
	mov	dl, cl
	lea	rsi, [rsi]
	movsx	esi, dl
	mov	rcx, qword ptr [rbp - 0x500]
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
	mov	qword ptr [rbp - 0x540], rcx
	test	al, 1
	jne	.label_215
	lea	rsi, [rsi]
	jmp	.label_187
.label_1147:
	xor	eax, eax
	nop	
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x500]
	mov	rdx, qword ptr [rdx - 0x30]
	nop	
	mov	sil, dl
	mov	rbp, rbp
	movsx	eax, sil
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x500]
	mov	rdx, qword ptr [rdx]
	mov	rsp, rsp
	mov	sil, dl
	mov	rbp, rbp
	movsx	edi, sil
	imul	eax, edi
	mov	sil, al
	movsx	rdx, sil
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x540], rdx
	lea	rdi, [rdi]
	test	cl, 1
	jne	.label_215
	jmp	.label_187
.label_787:
	mov	rax, qword ptr [rbp - 0x500]
	lea	rdi, [rdi]
	cmp	qword ptr [rax], 0
	nop	
	jge	.label_309
	mov	rax, qword ptr [rbp - 0x500]
	cmp	qword ptr [rax - 0x30], 0
	mov	rsp, rsp
	jge	.label_318
	movabs	rax, 0x7fffffffffffffff
	nop	
	mov	rcx, qword ptr [rbp - 0x500]
	mov	rcx, qword ptr [rcx - 0x30]
	mov	rdx, qword ptr [rbp - 0x500]
	mov	qword ptr [rbp - 0xce0], rdx
	lea	rsi, [rsi]
	cqo	
	mov	rsi, qword ptr [rbp - 0xce0]
	idiv	qword ptr [rsi]
	cmp	rcx, rax
	jl	.label_326
	jmp	.label_367
.label_318:
	nop	
	mov	rax, qword ptr [rbp - 0x500]
	lea	rsi, [rsi]
	cmp	qword ptr [rax], -1
	jne	.label_341
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	lea	rdi, [rdi]
	jne	.label_326
	jmp	.label_367
.label_341:
	nop	
	movabs	rax, 0x8000000000000000
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x500]
	cqo	
	lea	rdi, [rdi]
	idiv	qword ptr [rcx]
	nop	
	mov	rcx, qword ptr [rbp - 0x500]
	cmp	rax, qword ptr [rcx - 0x30]
	jl	.label_326
	jmp	.label_367
.label_309:
	mov	rax, qword ptr [rbp - 0x500]
	cmp	qword ptr [rax], 0
	nop	
	jne	.label_368
	mov	rbp, rbp
	xor	eax, eax
	mov	cl, al
	lea	rdi, [rdi]
	test	cl, 1
	lea	rsi, [rsi]
	jne	.label_326
	nop	
	jmp	.label_367
.label_368:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x500]
	cmp	qword ptr [rax - 0x30], 0
	mov	rsp, rsp
	jge	.label_1140
	mov	rbp, rbp
	movabs	rax, 0x8000000000000000
	mov	rcx, qword ptr [rbp - 0x500]
	nop	
	mov	rcx, qword ptr [rcx - 0x30]
	mov	rdx, qword ptr [rbp - 0x500]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0xce8], rdx
	nop	
	cqo	
	mov	rsi, qword ptr [rbp - 0xce8]
	mov	rbp, rbp
	idiv	qword ptr [rsi]
	cmp	rcx, rax
	lea	rsi, [rsi]
	jl	.label_326
	lea	rsi, [rsi]
	jmp	.label_367
.label_1140:
	mov	rbp, rbp
	movabs	rax, 0x7fffffffffffffff
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x500]
	cqo	
	idiv	qword ptr [rcx]
	mov	rcx, qword ptr [rbp - 0x500]
	cmp	rax, qword ptr [rcx - 0x30]
	jl	.label_326
.label_367:
	mov	rax, qword ptr [rbp - 0x500]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax - 0x30]
	mov	rcx, qword ptr [rbp - 0x500]
	imul	rax, qword ptr [rcx]
	cmp	rax, -0x80
	jl	.label_326
	nop	
	mov	eax, 0x7f
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x500]
	mov	rbp, rbp
	mov	rdx, qword ptr [rdx - 0x30]
	mov	rsi, qword ptr [rbp - 0x500]
	imul	rdx, qword ptr [rsi]
	lea	rdi, [rdi]
	cmp	rcx, rdx
	jge	.label_419
.label_326:
	lea	rdi, [rdi]
	mov	al, 1
	mov	rcx, qword ptr [rbp - 0x500]
	mov	rsp, rsp
	mov	rcx, qword ptr [rcx - 0x30]
	lea	rsi, [rsi]
	mov	edx, ecx
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x500]
	nop	
	mov	rcx, qword ptr [rcx]
	mov	esi, ecx
	imul	edx, esi
	mov	dil, dl
	mov	rsp, rsp
	movsx	rcx, dil
	mov	qword ptr [rbp - 0x540], rcx
	test	al, 1
	jne	.label_215
	jmp	.label_187
.label_419:
	nop	
	xor	eax, eax
	mov	rsp, rsp
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x500]
	mov	rsp, rsp
	mov	rdx, qword ptr [rdx - 0x30]
	mov	eax, edx
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x500]
	mov	rdx, qword ptr [rdx]
	lea	rsi, [rsi]
	mov	esi, edx
	imul	eax, esi
	lea	rdi, [rdi]
	mov	dil, al
	mov	rbp, rbp
	movsx	rdx, dil
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x540], rdx
	test	cl, 1
	lea	rdi, [rdi]
	jne	.label_215
	nop	
	jmp	.label_187
.label_1087:
	lea	rdi, [rdi]
	xor	eax, eax
	mov	cl, al
	mov	rbp, rbp
	test	cl, 1
	jne	.label_472
	jmp	.label_481
.label_472:
	mov	rbp, rbp
	xor	eax, eax
	mov	cl, al
	nop	
	test	cl, 1
	jne	.label_484
	jmp	.label_490
.label_484:
	mov	rax, qword ptr [rbp - 0x500]
	mov	rax, qword ptr [rax]
	mov	rbp, rbp
	mov	cx, ax
	lea	rdi, [rdi]
	movsx	edx, cx
	cmp	edx, 0
	jge	.label_492
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x500]
	mov	rax, qword ptr [rax - 0x30]
	mov	cx, ax
	mov	rbp, rbp
	movsx	edx, cx
	cmp	edx, 0
	jge	.label_502
	mov	eax, 0x7fffffff
	mov	rcx, qword ptr [rbp - 0x500]
	mov	rcx, qword ptr [rcx - 0x30]
	lea	rdi, [rdi]
	mov	dx, cx
	lea	rdi, [rdi]
	movsx	esi, dx
	mov	rcx, qword ptr [rbp - 0x500]
	mov	rcx, qword ptr [rcx]
	mov	dx, cx
	movsx	edi, dx
	cdq	
	lea	rdi, [rdi]
	idiv	edi
	cmp	esi, eax
	lea	rsi, [rsi]
	jl	.label_508
	lea	rsi, [rsi]
	jmp	.label_381
.label_502:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x500]
	mov	rax, qword ptr [rax]
	mov	cx, ax
	lea	rdi, [rdi]
	movsx	edx, cx
	cmp	edx, -1
	lea	rdi, [rdi]
	jne	.label_530
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	lea	rsi, [rsi]
	jne	.label_508
	jmp	.label_381
.label_530:
	mov	eax, 0x80000000
	mov	rcx, qword ptr [rbp - 0x500]
	mov	rsp, rsp
	mov	rcx, qword ptr [rcx]
	lea	rdi, [rdi]
	mov	dx, cx
	lea	rsi, [rsi]
	movsx	esi, dx
	cdq	
	mov	rbp, rbp
	idiv	esi
	mov	rcx, qword ptr [rbp - 0x500]
	mov	rcx, qword ptr [rcx - 0x30]
	mov	di, cx
	lea	rdi, [rdi]
	movsx	esi, di
	cmp	eax, esi
	mov	rbp, rbp
	jl	.label_508
	jmp	.label_381
.label_492:
	mov	rax, qword ptr [rbp - 0x500]
	mov	rax, qword ptr [rax]
	mov	rsp, rsp
	mov	cx, ax
	lea	rsi, [rsi]
	movsx	edx, cx
	mov	rsp, rsp
	cmp	edx, 0
	mov	rsp, rsp
	jne	.label_561
	mov	rsp, rsp
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	mov	rbp, rbp
	jne	.label_508
	lea	rsi, [rsi]
	jmp	.label_381
.label_561:
	mov	rax, qword ptr [rbp - 0x500]
	mov	rax, qword ptr [rax - 0x30]
	mov	rsp, rsp
	mov	cx, ax
	lea	rdi, [rdi]
	movsx	edx, cx
	mov	rbp, rbp
	cmp	edx, 0
	jge	.label_580
	mov	eax, 0x80000000
	mov	rcx, qword ptr [rbp - 0x500]
	nop	
	mov	rcx, qword ptr [rcx - 0x30]
	mov	rsp, rsp
	mov	dx, cx
	nop	
	movsx	esi, dx
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x500]
	mov	rsp, rsp
	mov	rcx, qword ptr [rcx]
	mov	dx, cx
	nop	
	movsx	edi, dx
	nop	
	cdq	
	idiv	edi
	cmp	esi, eax
	jl	.label_508
	jmp	.label_381
.label_580:
	mov	eax, 0x7fffffff
	mov	rcx, qword ptr [rbp - 0x500]
	mov	rcx, qword ptr [rcx]
	mov	dx, cx
	movsx	esi, dx
	lea	rsi, [rsi]
	cdq	
	idiv	esi
	mov	rcx, qword ptr [rbp - 0x500]
	mov	rbp, rbp
	mov	rcx, qword ptr [rcx - 0x30]
	mov	di, cx
	movsx	esi, di
	mov	rsp, rsp
	cmp	eax, esi
	jl	.label_508
.label_381:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x500]
	mov	rax, qword ptr [rax - 0x30]
	mov	cx, ax
	movsx	edx, cx
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x500]
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
	jl	.label_508
	mov	eax, 0x7fff
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x500]
	mov	rcx, qword ptr [rcx - 0x30]
	mov	rsp, rsp
	mov	dx, cx
	movsx	esi, dx
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x500]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rcx]
	mov	dx, cx
	movsx	edi, dx
	mov	rsp, rsp
	imul	esi, edi
	mov	rsp, rsp
	cmp	eax, esi
	nop	
	jge	.label_636
.label_508:
	mov	rbp, rbp
	mov	al, 1
	mov	rcx, qword ptr [rbp - 0x500]
	mov	rcx, qword ptr [rcx - 0x30]
	mov	rbp, rbp
	mov	dx, cx
	movsx	esi, dx
	mov	rcx, qword ptr [rbp - 0x500]
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
	mov	qword ptr [rbp - 0x540], rcx
	lea	rsi, [rsi]
	test	al, 1
	mov	rsp, rsp
	jne	.label_215
	nop	
	jmp	.label_187
.label_636:
	mov	rsp, rsp
	xor	eax, eax
	mov	cl, al
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x500]
	mov	rsp, rsp
	mov	rdx, qword ptr [rdx - 0x30]
	mov	si, dx
	lea	rsi, [rsi]
	movsx	eax, si
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x500]
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
	mov	qword ptr [rbp - 0x540], rdx
	mov	rsp, rsp
	test	cl, 1
	jne	.label_215
	lea	rdi, [rdi]
	jmp	.label_187
.label_490:
	nop	
	mov	rax, qword ptr [rbp - 0x500]
	nop	
	cmp	qword ptr [rax], 0
	mov	rbp, rbp
	jge	.label_691
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x500]
	cmp	qword ptr [rax - 0x30], 0
	jge	.label_695
	movabs	rax, 0x7fffffffffffffff
	mov	rcx, qword ptr [rbp - 0x500]
	mov	rcx, qword ptr [rcx - 0x30]
	mov	rdx, qword ptr [rbp - 0x500]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0xcf0], rdx
	cqo	
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0xcf0]
	lea	rsi, [rsi]
	idiv	qword ptr [rsi]
	nop	
	cmp	rcx, rax
	mov	rsp, rsp
	jl	.label_618
	lea	rdi, [rdi]
	jmp	.label_724
.label_695:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x500]
	mov	rbp, rbp
	cmp	qword ptr [rax], -1
	nop	
	jne	.label_712
	xor	eax, eax
	nop	
	mov	cl, al
	mov	rsp, rsp
	test	cl, 1
	nop	
	jne	.label_618
	jmp	.label_724
.label_712:
	movabs	rax, 0x8000000000000000
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x500]
	nop	
	cqo	
	lea	rdi, [rdi]
	idiv	qword ptr [rcx]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x500]
	cmp	rax, qword ptr [rcx - 0x30]
	nop	
	jl	.label_618
	lea	rsi, [rsi]
	jmp	.label_724
.label_691:
	mov	rax, qword ptr [rbp - 0x500]
	mov	rbp, rbp
	cmp	qword ptr [rax], 0
	jne	.label_740
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_618
	jmp	.label_724
.label_740:
	mov	rax, qword ptr [rbp - 0x500]
	nop	
	cmp	qword ptr [rax - 0x30], 0
	jge	.label_749
	movabs	rax, 0x8000000000000000
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x500]
	mov	rcx, qword ptr [rcx - 0x30]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x500]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0xcf8], rdx
	lea	rdi, [rdi]
	cqo	
	mov	rsi, qword ptr [rbp - 0xcf8]
	lea	rsi, [rsi]
	idiv	qword ptr [rsi]
	cmp	rcx, rax
	mov	rbp, rbp
	jl	.label_618
	jmp	.label_724
.label_749:
	movabs	rax, 0x7fffffffffffffff
	mov	rcx, qword ptr [rbp - 0x500]
	cqo	
	idiv	qword ptr [rcx]
	mov	rcx, qword ptr [rbp - 0x500]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rcx - 0x30]
	mov	rsp, rsp
	jl	.label_618
.label_724:
	mov	rax, qword ptr [rbp - 0x500]
	mov	rax, qword ptr [rax - 0x30]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x500]
	imul	rax, qword ptr [rcx]
	lea	rdi, [rdi]
	cmp	rax, -0x8000
	mov	rbp, rbp
	jl	.label_618
	lea	rsi, [rsi]
	mov	eax, 0x7fff
	mov	rbp, rbp
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x500]
	mov	rdx, qword ptr [rdx - 0x30]
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x500]
	imul	rdx, qword ptr [rsi]
	cmp	rcx, rdx
	lea	rsi, [rsi]
	jge	.label_798
.label_618:
	lea	rsi, [rsi]
	mov	al, 1
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x500]
	mov	rcx, qword ptr [rcx - 0x30]
	lea	rdi, [rdi]
	mov	edx, ecx
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x500]
	mov	rcx, qword ptr [rcx]
	mov	esi, ecx
	lea	rsi, [rsi]
	imul	edx, esi
	lea	rdi, [rdi]
	mov	di, dx
	movsx	rcx, di
	mov	qword ptr [rbp - 0x540], rcx
	nop	
	test	al, 1
	jne	.label_215
	lea	rdi, [rdi]
	jmp	.label_187
.label_798:
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x500]
	mov	rdx, qword ptr [rdx - 0x30]
	mov	eax, edx
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x500]
	mov	rdx, qword ptr [rdx]
	mov	esi, edx
	lea	rdi, [rdi]
	imul	eax, esi
	mov	di, ax
	movsx	rdx, di
	mov	qword ptr [rbp - 0x540], rdx
	mov	rbp, rbp
	test	cl, 1
	jne	.label_215
	mov	rbp, rbp
	jmp	.label_187
.label_481:
	lea	rsi, [rsi]
	xor	eax, eax
	mov	cl, al
	mov	rbp, rbp
	test	cl, 1
	jne	.label_835
	jmp	.label_837
.label_835:
	mov	rbp, rbp
	xor	eax, eax
	nop	
	mov	cl, al
	nop	
	test	cl, 1
	mov	rsp, rsp
	jne	.label_839
	jmp	.label_1083
.label_839:
	nop	
	mov	rax, qword ptr [rbp - 0x500]
	mov	rax, qword ptr [rax]
	mov	ecx, eax
	cmp	ecx, 0
	nop	
	jge	.label_1091
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x500]
	nop	
	mov	rax, qword ptr [rax - 0x30]
	lea	rsi, [rsi]
	mov	ecx, eax
	lea	rsi, [rsi]
	cmp	ecx, 0
	jge	.label_1129
	nop	
	mov	eax, 0x7fffffff
	mov	rcx, qword ptr [rbp - 0x500]
	mov	rcx, qword ptr [rcx - 0x30]
	mov	edx, ecx
	mov	rcx, qword ptr [rbp - 0x500]
	mov	rcx, qword ptr [rcx]
	mov	rbp, rbp
	mov	esi, ecx
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0xcfc], edx
	lea	rsi, [rsi]
	cdq	
	idiv	esi
	nop	
	mov	esi, dword ptr [rbp - 0xcfc]
	lea	rdi, [rdi]
	cmp	esi, eax
	jl	.label_574
	mov	rsp, rsp
	jmp	.label_876
.label_1129:
	nop	
	mov	rax, qword ptr [rbp - 0x500]
	mov	rax, qword ptr [rax]
	mov	ecx, eax
	lea	rsi, [rsi]
	cmp	ecx, -1
	nop	
	jne	.label_314
	xor	eax, eax
	mov	rsp, rsp
	mov	cl, al
	test	cl, 1
	nop	
	jne	.label_574
	lea	rsi, [rsi]
	jmp	.label_876
.label_314:
	mov	rbp, rbp
	mov	eax, 0x80000000
	mov	rcx, qword ptr [rbp - 0x500]
	mov	rcx, qword ptr [rcx]
	mov	edx, ecx
	mov	dword ptr [rbp - 0xd00], edx
	cdq	
	mov	esi, dword ptr [rbp - 0xd00]
	idiv	esi
	mov	rcx, qword ptr [rbp - 0x500]
	mov	rbp, rbp
	mov	rcx, qword ptr [rcx - 0x30]
	mov	edi, ecx
	mov	rsp, rsp
	cmp	eax, edi
	nop	
	jl	.label_574
	jmp	.label_876
.label_1091:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x500]
	nop	
	mov	rax, qword ptr [rax]
	mov	ecx, eax
	cmp	ecx, 0
	lea	rdi, [rdi]
	jne	.label_901
	mov	rsp, rsp
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_574
	nop	
	jmp	.label_876
.label_901:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x500]
	mov	rax, qword ptr [rax - 0x30]
	mov	ecx, eax
	mov	rsp, rsp
	cmp	ecx, 0
	jge	.label_915
	mov	eax, 0x80000000
	nop	
	mov	rcx, qword ptr [rbp - 0x500]
	nop	
	mov	rcx, qword ptr [rcx - 0x30]
	mov	edx, ecx
	nop	
	mov	rcx, qword ptr [rbp - 0x500]
	mov	rcx, qword ptr [rcx]
	mov	esi, ecx
	mov	dword ptr [rbp - 0xd04], edx
	cdq	
	lea	rsi, [rsi]
	idiv	esi
	nop	
	mov	esi, dword ptr [rbp - 0xd04]
	mov	rsp, rsp
	cmp	esi, eax
	lea	rsi, [rsi]
	jl	.label_574
	jmp	.label_876
.label_915:
	mov	eax, 0x7fffffff
	mov	rcx, qword ptr [rbp - 0x500]
	mov	rsp, rsp
	mov	rcx, qword ptr [rcx]
	mov	edx, ecx
	mov	dword ptr [rbp - 0xd08], edx
	lea	rsi, [rsi]
	cdq	
	mov	esi, dword ptr [rbp - 0xd08]
	lea	rdi, [rdi]
	idiv	esi
	mov	rcx, qword ptr [rbp - 0x500]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rcx - 0x30]
	lea	rdi, [rdi]
	mov	edi, ecx
	lea	rsi, [rsi]
	cmp	eax, edi
	jl	.label_574
.label_876:
	mov	rax, qword ptr [rbp - 0x500]
	mov	rax, qword ptr [rax - 0x30]
	mov	rsp, rsp
	mov	ecx, eax
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x500]
	mov	rax, qword ptr [rax]
	mov	edx, eax
	mov	rbp, rbp
	imul	ecx, edx
	cmp	ecx, 0x80000000
	lea	rsi, [rsi]
	jl	.label_574
	mov	eax, 0x7fffffff
	mov	rcx, qword ptr [rbp - 0x500]
	mov	rcx, qword ptr [rcx - 0x30]
	mov	rbp, rbp
	mov	edx, ecx
	mov	rcx, qword ptr [rbp - 0x500]
	mov	rsp, rsp
	mov	rcx, qword ptr [rcx]
	mov	esi, ecx
	imul	edx, esi
	cmp	eax, edx
	jge	.label_950
.label_574:
	mov	rbp, rbp
	mov	al, 1
	mov	rcx, qword ptr [rbp - 0x500]
	mov	rbp, rbp
	mov	rcx, qword ptr [rcx - 0x30]
	mov	edx, ecx
	mov	rcx, qword ptr [rbp - 0x500]
	mov	rbp, rbp
	mov	rcx, qword ptr [rcx]
	mov	rbp, rbp
	mov	esi, ecx
	lea	rdi, [rdi]
	imul	edx, esi
	mov	rsp, rsp
	movsxd	rcx, edx
	mov	qword ptr [rbp - 0x540], rcx
	mov	rbp, rbp
	test	al, 1
	jne	.label_215
	jmp	.label_187
.label_950:
	xor	eax, eax
	lea	rdi, [rdi]
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x500]
	mov	rsp, rsp
	mov	rdx, qword ptr [rdx - 0x30]
	lea	rdi, [rdi]
	mov	eax, edx
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x500]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rdx]
	mov	esi, edx
	imul	eax, esi
	movsxd	rdx, eax
	nop	
	mov	qword ptr [rbp - 0x540], rdx
	test	cl, 1
	nop	
	jne	.label_215
	mov	rsp, rsp
	jmp	.label_187
.label_1083:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x500]
	mov	rsp, rsp
	cmp	qword ptr [rax], 0
	nop	
	jge	.label_1003
	nop	
	mov	rax, qword ptr [rbp - 0x500]
	cmp	qword ptr [rax - 0x30], 0
	lea	rdi, [rdi]
	jge	.label_1010
	movabs	rax, 0x7fffffffffffffff
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x500]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rcx - 0x30]
	mov	rdx, qword ptr [rbp - 0x500]
	mov	qword ptr [rbp - 0xd10], rdx
	cqo	
	mov	rsi, qword ptr [rbp - 0xd10]
	idiv	qword ptr [rsi]
	mov	rbp, rbp
	cmp	rcx, rax
	lea	rdi, [rdi]
	jl	.label_693
	jmp	.label_1028
.label_1010:
	mov	rax, qword ptr [rbp - 0x500]
	nop	
	cmp	qword ptr [rax], -1
	jne	.label_357
	mov	rsp, rsp
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	lea	rdi, [rdi]
	jne	.label_693
	jmp	.label_1028
.label_357:
	movabs	rax, 0x8000000000000000
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x500]
	cqo	
	nop	
	idiv	qword ptr [rcx]
	mov	rcx, qword ptr [rbp - 0x500]
	cmp	rax, qword ptr [rcx - 0x30]
	jl	.label_693
	mov	rsp, rsp
	jmp	.label_1028
.label_1003:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x500]
	lea	rsi, [rsi]
	cmp	qword ptr [rax], 0
	jne	.label_1048
	nop	
	xor	eax, eax
	lea	rdi, [rdi]
	mov	cl, al
	test	cl, 1
	lea	rsi, [rsi]
	jne	.label_693
	mov	rsp, rsp
	jmp	.label_1028
.label_1048:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x500]
	lea	rdi, [rdi]
	cmp	qword ptr [rax - 0x30], 0
	mov	rsp, rsp
	jge	.label_1060
	nop	
	movabs	rax, 0x8000000000000000
	mov	rcx, qword ptr [rbp - 0x500]
	mov	rcx, qword ptr [rcx - 0x30]
	mov	rdx, qword ptr [rbp - 0x500]
	mov	qword ptr [rbp - 0xd18], rdx
	cqo	
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0xd18]
	idiv	qword ptr [rsi]
	lea	rsi, [rsi]
	cmp	rcx, rax
	mov	rsp, rsp
	jl	.label_693
	jmp	.label_1028
.label_1060:
	mov	rbp, rbp
	movabs	rax, 0x7fffffffffffffff
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x500]
	cqo	
	idiv	qword ptr [rcx]
	mov	rcx, qword ptr [rbp - 0x500]
	mov	rbp, rbp
	cmp	rax, qword ptr [rcx - 0x30]
	jl	.label_693
.label_1028:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x500]
	mov	rbp, rbp
	mov	rax, qword ptr [rax - 0x30]
	mov	rcx, qword ptr [rbp - 0x500]
	mov	rsp, rsp
	imul	rax, qword ptr [rcx]
	nop	
	cmp	rax, -0x80000000
	mov	rsp, rsp
	jl	.label_693
	lea	rsi, [rsi]
	mov	eax, 0x7fffffff
	mov	rbp, rbp
	mov	ecx, eax
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x500]
	mov	rdx, qword ptr [rdx - 0x30]
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x500]
	lea	rdi, [rdi]
	imul	rdx, qword ptr [rsi]
	mov	rsp, rsp
	cmp	rcx, rdx
	mov	rsp, rsp
	jge	.label_1097
.label_693:
	mov	al, 1
	mov	rcx, qword ptr [rbp - 0x500]
	nop	
	mov	rcx, qword ptr [rcx - 0x30]
	mov	edx, ecx
	nop	
	mov	rcx, qword ptr [rbp - 0x500]
	nop	
	mov	rcx, qword ptr [rcx]
	mov	esi, ecx
	imul	edx, esi
	movsxd	rcx, edx
	mov	qword ptr [rbp - 0x540], rcx
	nop	
	test	al, 1
	nop	
	jne	.label_215
	nop	
	jmp	.label_187
.label_1097:
	mov	rsp, rsp
	xor	eax, eax
	mov	rsp, rsp
	mov	cl, al
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x500]
	mov	rdx, qword ptr [rdx - 0x30]
	lea	rdi, [rdi]
	mov	eax, edx
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x500]
	mov	rdx, qword ptr [rdx]
	lea	rdi, [rdi]
	mov	esi, edx
	imul	eax, esi
	lea	rsi, [rsi]
	movsxd	rdx, eax
	mov	qword ptr [rbp - 0x540], rdx
	lea	rdi, [rdi]
	test	cl, 1
	jne	.label_215
	lea	rdi, [rdi]
	jmp	.label_187
.label_837:
	mov	al, 1
	mov	rsp, rsp
	test	al, 1
	nop	
	jne	.label_1148
	mov	rbp, rbp
	jmp	.label_1131
.label_1148:
	xor	eax, eax
	mov	rbp, rbp
	mov	cl, al
	mov	rsp, rsp
	test	cl, 1
	nop	
	jne	.label_537
	mov	rsp, rsp
	jmp	.label_155
.label_537:
	mov	rax, qword ptr [rbp - 0x500]
	lea	rdi, [rdi]
	cmp	qword ptr [rax], 0
	lea	rdi, [rdi]
	jge	.label_143
	mov	rax, qword ptr [rbp - 0x500]
	cmp	qword ptr [rax - 0x30], 0
	mov	rsp, rsp
	jge	.label_227
	movabs	rax, 0x7fffffffffffffff
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x500]
	mov	rcx, qword ptr [rcx - 0x30]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x500]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0xd20], rdx
	cqo	
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0xd20]
	idiv	qword ptr [rsi]
	cmp	rcx, rax
	jl	.label_166
	jmp	.label_203
.label_227:
	mov	rax, qword ptr [rbp - 0x500]
	cmp	qword ptr [rax], -1
	jne	.label_193
	mov	rbp, rbp
	xor	eax, eax
	mov	cl, al
	mov	rsp, rsp
	test	cl, 1
	jne	.label_166
	jmp	.label_203
.label_193:
	movabs	rax, 0x8000000000000000
	mov	rcx, qword ptr [rbp - 0x500]
	cqo	
	mov	rbp, rbp
	idiv	qword ptr [rcx]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x500]
	nop	
	cmp	rax, qword ptr [rcx - 0x30]
	jl	.label_166
	mov	rbp, rbp
	jmp	.label_203
.label_143:
	mov	rax, qword ptr [rbp - 0x500]
	cmp	qword ptr [rax], 0
	lea	rdi, [rdi]
	jne	.label_228
	mov	rbp, rbp
	xor	eax, eax
	mov	cl, al
	lea	rdi, [rdi]
	test	cl, 1
	jne	.label_166
	nop	
	jmp	.label_203
.label_228:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x500]
	cmp	qword ptr [rax - 0x30], 0
	lea	rsi, [rsi]
	jge	.label_246
	movabs	rax, 0x8000000000000000
	mov	rcx, qword ptr [rbp - 0x500]
	mov	rcx, qword ptr [rcx - 0x30]
	mov	rdx, qword ptr [rbp - 0x500]
	mov	qword ptr [rbp - 0xd28], rdx
	cqo	
	mov	rsi, qword ptr [rbp - 0xd28]
	lea	rdi, [rdi]
	idiv	qword ptr [rsi]
	lea	rdi, [rdi]
	cmp	rcx, rax
	jl	.label_166
	jmp	.label_203
.label_246:
	movabs	rax, 0x7fffffffffffffff
	mov	rcx, qword ptr [rbp - 0x500]
	lea	rsi, [rsi]
	cqo	
	nop	
	idiv	qword ptr [rcx]
	mov	rcx, qword ptr [rbp - 0x500]
	nop	
	cmp	rax, qword ptr [rcx - 0x30]
	jl	.label_166
.label_203:
	movabs	rax, 0x8000000000000000
	mov	rcx, qword ptr [rbp - 0x500]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rcx - 0x30]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x500]
	imul	rcx, qword ptr [rdx]
	cmp	rcx, rax
	jl	.label_166
	movabs	rax, 0x7fffffffffffffff
	mov	rcx, qword ptr [rbp - 0x500]
	mov	rsp, rsp
	mov	rcx, qword ptr [rcx - 0x30]
	nop	
	mov	rdx, qword ptr [rbp - 0x500]
	lea	rdi, [rdi]
	imul	rcx, qword ptr [rdx]
	nop	
	cmp	rax, rcx
	jge	.label_296
.label_166:
	mov	rsp, rsp
	mov	al, 1
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x500]
	mov	rbp, rbp
	mov	rcx, qword ptr [rcx - 0x30]
	mov	rdx, qword ptr [rbp - 0x500]
	lea	rsi, [rsi]
	imul	rcx, qword ptr [rdx]
	mov	qword ptr [rbp - 0x540], rcx
	lea	rsi, [rsi]
	test	al, 1
	mov	rsp, rsp
	jne	.label_215
	jmp	.label_187
.label_296:
	lea	rdi, [rdi]
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x500]
	mov	rsp, rsp
	mov	rdx, qword ptr [rdx - 0x30]
	nop	
	mov	rsi, qword ptr [rbp - 0x500]
	imul	rdx, qword ptr [rsi]
	mov	qword ptr [rbp - 0x540], rdx
	test	cl, 1
	lea	rdi, [rdi]
	jne	.label_215
	mov	rsp, rsp
	jmp	.label_187
.label_155:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x500]
	cmp	qword ptr [rax], 0
	jge	.label_1069
	mov	rax, qword ptr [rbp - 0x500]
	cmp	qword ptr [rax - 0x30], 0
	jge	.label_353
	nop	
	movabs	rax, 0x7fffffffffffffff
	mov	rcx, qword ptr [rbp - 0x500]
	mov	rcx, qword ptr [rcx - 0x30]
	mov	rdx, qword ptr [rbp - 0x500]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0xd30], rdx
	cqo	
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0xd30]
	idiv	qword ptr [rsi]
	cmp	rcx, rax
	jl	.label_359
	mov	rsp, rsp
	jmp	.label_291
.label_353:
	mov	rax, qword ptr [rbp - 0x500]
	cmp	qword ptr [rax], -1
	jne	.label_257
	mov	rsp, rsp
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_359
	nop	
	jmp	.label_291
.label_257:
	mov	rbp, rbp
	movabs	rax, 0x8000000000000000
	mov	rcx, qword ptr [rbp - 0x500]
	mov	rsp, rsp
	cqo	
	idiv	qword ptr [rcx]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x500]
	cmp	rax, qword ptr [rcx - 0x30]
	jl	.label_359
	jmp	.label_291
.label_1069:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x500]
	lea	rdi, [rdi]
	cmp	qword ptr [rax], 0
	nop	
	jne	.label_398
	xor	eax, eax
	mov	cl, al
	mov	rsp, rsp
	test	cl, 1
	lea	rdi, [rdi]
	jne	.label_359
	jmp	.label_291
.label_398:
	mov	rax, qword ptr [rbp - 0x500]
	cmp	qword ptr [rax - 0x30], 0
	mov	rsp, rsp
	jge	.label_435
	movabs	rax, 0x8000000000000000
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x500]
	mov	rsp, rsp
	mov	rcx, qword ptr [rcx - 0x30]
	mov	rdx, qword ptr [rbp - 0x500]
	mov	qword ptr [rbp - 0xd38], rdx
	cqo	
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0xd38]
	mov	rbp, rbp
	idiv	qword ptr [rsi]
	cmp	rcx, rax
	jl	.label_359
	mov	rsp, rsp
	jmp	.label_291
.label_435:
	movabs	rax, 0x7fffffffffffffff
	mov	rcx, qword ptr [rbp - 0x500]
	lea	rsi, [rsi]
	cqo	
	lea	rsi, [rsi]
	idiv	qword ptr [rcx]
	nop	
	mov	rcx, qword ptr [rbp - 0x500]
	cmp	rax, qword ptr [rcx - 0x30]
	jl	.label_359
.label_291:
	movabs	rax, 0x8000000000000000
	mov	rcx, qword ptr [rbp - 0x500]
	mov	rbp, rbp
	mov	rcx, qword ptr [rcx - 0x30]
	mov	rdx, qword ptr [rbp - 0x500]
	mov	rsp, rsp
	imul	rcx, qword ptr [rdx]
	lea	rdi, [rdi]
	cmp	rcx, rax
	mov	rbp, rbp
	jl	.label_359
	lea	rdi, [rdi]
	movabs	rax, 0x7fffffffffffffff
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x500]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rcx - 0x30]
	mov	rdx, qword ptr [rbp - 0x500]
	imul	rcx, qword ptr [rdx]
	mov	rbp, rbp
	cmp	rax, rcx
	lea	rdi, [rdi]
	jge	.label_452
.label_359:
	lea	rdi, [rdi]
	mov	al, 1
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x500]
	mov	rbp, rbp
	mov	rcx, qword ptr [rcx - 0x30]
	nop	
	mov	rdx, qword ptr [rbp - 0x500]
	imul	rcx, qword ptr [rdx]
	nop	
	mov	qword ptr [rbp - 0x540], rcx
	test	al, 1
	mov	rsp, rsp
	jne	.label_215
	mov	rsp, rsp
	jmp	.label_187
.label_452:
	xor	eax, eax
	mov	rsp, rsp
	mov	cl, al
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x500]
	nop	
	mov	rdx, qword ptr [rdx - 0x30]
	mov	rsi, qword ptr [rbp - 0x500]
	imul	rdx, qword ptr [rsi]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x540], rdx
	lea	rdi, [rdi]
	test	cl, 1
	lea	rdi, [rdi]
	jne	.label_215
	nop	
	jmp	.label_187
.label_1131:
	lea	rsi, [rsi]
	xor	eax, eax
	mov	rbp, rbp
	mov	cl, al
	test	cl, 1
	mov	rsp, rsp
	jne	.label_511
	mov	rbp, rbp
	jmp	.label_516
.label_511:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x500]
	cmp	qword ptr [rax], 0
	jge	.label_1036
	nop	
	mov	rax, qword ptr [rbp - 0x500]
	nop	
	cmp	qword ptr [rax - 0x30], 0
	mov	rbp, rbp
	jge	.label_527
	lea	rdi, [rdi]
	movabs	rax, 0x7fffffffffffffff
	mov	rcx, qword ptr [rbp - 0x500]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rcx - 0x30]
	nop	
	mov	rdx, qword ptr [rbp - 0x500]
	nop	
	mov	qword ptr [rbp - 0xd40], rdx
	mov	rsp, rsp
	cqo	
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0xd40]
	idiv	qword ptr [rsi]
	cmp	rcx, rax
	jl	.label_536
	jmp	.label_294
.label_527:
	mov	rax, qword ptr [rbp - 0x500]
	lea	rsi, [rsi]
	cmp	qword ptr [rax], -1
	mov	rbp, rbp
	jne	.label_554
	lea	rsi, [rsi]
	xor	eax, eax
	lea	rsi, [rsi]
	mov	cl, al
	test	cl, 1
	jne	.label_536
	lea	rdi, [rdi]
	jmp	.label_294
.label_554:
	mov	rbp, rbp
	movabs	rax, 0x8000000000000000
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x500]
	cqo	
	lea	rdi, [rdi]
	idiv	qword ptr [rcx]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x500]
	cmp	rax, qword ptr [rcx - 0x30]
	jl	.label_536
	nop	
	jmp	.label_294
.label_1036:
	nop	
	mov	rax, qword ptr [rbp - 0x500]
	mov	rbp, rbp
	cmp	qword ptr [rax], 0
	mov	rsp, rsp
	jne	.label_581
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	nop	
	jne	.label_536
	jmp	.label_294
.label_581:
	nop	
	mov	rax, qword ptr [rbp - 0x500]
	mov	rbp, rbp
	cmp	qword ptr [rax - 0x30], 0
	lea	rdi, [rdi]
	jge	.label_594
	movabs	rax, 0x8000000000000000
	mov	rcx, qword ptr [rbp - 0x500]
	mov	rcx, qword ptr [rcx - 0x30]
	mov	rdx, qword ptr [rbp - 0x500]
	mov	qword ptr [rbp - 0xd48], rdx
	mov	rsp, rsp
	cqo	
	mov	rsi, qword ptr [rbp - 0xd48]
	idiv	qword ptr [rsi]
	cmp	rcx, rax
	jl	.label_536
	jmp	.label_294
.label_594:
	movabs	rax, 0x7fffffffffffffff
	mov	rcx, qword ptr [rbp - 0x500]
	nop	
	cqo	
	idiv	qword ptr [rcx]
	mov	rcx, qword ptr [rbp - 0x500]
	lea	rdi, [rdi]
	cmp	rax, qword ptr [rcx - 0x30]
	mov	rbp, rbp
	jl	.label_536
.label_294:
	movabs	rax, 0x8000000000000000
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x500]
	mov	rcx, qword ptr [rcx - 0x30]
	mov	rdx, qword ptr [rbp - 0x500]
	imul	rcx, qword ptr [rdx]
	mov	rsp, rsp
	cmp	rcx, rax
	lea	rsi, [rsi]
	jl	.label_536
	movabs	rax, 0x7fffffffffffffff
	mov	rcx, qword ptr [rbp - 0x500]
	mov	rcx, qword ptr [rcx - 0x30]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x500]
	mov	rbp, rbp
	imul	rcx, qword ptr [rdx]
	cmp	rax, rcx
	lea	rsi, [rsi]
	jge	.label_641
.label_536:
	nop	
	mov	al, 1
	mov	rcx, qword ptr [rbp - 0x500]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rcx - 0x30]
	mov	rdx, qword ptr [rbp - 0x500]
	mov	rsp, rsp
	imul	rcx, qword ptr [rdx]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x540], rcx
	nop	
	test	al, 1
	jne	.label_215
	nop	
	jmp	.label_187
.label_641:
	lea	rdi, [rdi]
	xor	eax, eax
	mov	rbp, rbp
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x500]
	mov	rdx, qword ptr [rdx - 0x30]
	mov	rsi, qword ptr [rbp - 0x500]
	imul	rdx, qword ptr [rsi]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x540], rdx
	mov	rsp, rsp
	test	cl, 1
	mov	rsp, rsp
	jne	.label_215
	jmp	.label_187
.label_516:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x500]
	cmp	qword ptr [rax], 0
	jge	.label_673
	mov	rax, qword ptr [rbp - 0x500]
	mov	rsp, rsp
	cmp	qword ptr [rax - 0x30], 0
	jge	.label_994
	movabs	rax, 0x7fffffffffffffff
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x500]
	mov	rcx, qword ptr [rcx - 0x30]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x500]
	mov	qword ptr [rbp - 0xd50], rdx
	cqo	
	mov	rsi, qword ptr [rbp - 0xd50]
	mov	rbp, rbp
	idiv	qword ptr [rsi]
	nop	
	cmp	rcx, rax
	nop	
	jl	.label_621
	mov	rsp, rsp
	jmp	.label_327
.label_994:
	mov	rax, qword ptr [rbp - 0x500]
	lea	rdi, [rdi]
	cmp	qword ptr [rax], -1
	jne	.label_699
	xor	eax, eax
	nop	
	mov	cl, al
	nop	
	test	cl, 1
	nop	
	jne	.label_621
	jmp	.label_327
.label_699:
	movabs	rax, 0x8000000000000000
	nop	
	mov	rcx, qword ptr [rbp - 0x500]
	cqo	
	idiv	qword ptr [rcx]
	mov	rcx, qword ptr [rbp - 0x500]
	lea	rdi, [rdi]
	cmp	rax, qword ptr [rcx - 0x30]
	jl	.label_621
	jmp	.label_327
.label_673:
	mov	rax, qword ptr [rbp - 0x500]
	cmp	qword ptr [rax], 0
	jne	.label_713
	xor	eax, eax
	mov	rbp, rbp
	mov	cl, al
	test	cl, 1
	jne	.label_621
	nop	
	jmp	.label_327
.label_713:
	nop	
	mov	rax, qword ptr [rbp - 0x500]
	lea	rsi, [rsi]
	cmp	qword ptr [rax - 0x30], 0
	lea	rdi, [rdi]
	jge	.label_679
	mov	rbp, rbp
	movabs	rax, 0x8000000000000000
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x500]
	mov	rsp, rsp
	mov	rcx, qword ptr [rcx - 0x30]
	mov	rdx, qword ptr [rbp - 0x500]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0xd58], rdx
	cqo	
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0xd58]
	nop	
	idiv	qword ptr [rsi]
	cmp	rcx, rax
	jl	.label_621
	lea	rdi, [rdi]
	jmp	.label_327
.label_679:
	nop	
	movabs	rax, 0x7fffffffffffffff
	mov	rcx, qword ptr [rbp - 0x500]
	cqo	
	mov	rsp, rsp
	idiv	qword ptr [rcx]
	nop	
	mov	rcx, qword ptr [rbp - 0x500]
	mov	rbp, rbp
	cmp	rax, qword ptr [rcx - 0x30]
	jl	.label_621
.label_327:
	mov	rbp, rbp
	movabs	rax, 0x8000000000000000
	mov	rcx, qword ptr [rbp - 0x500]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rcx - 0x30]
	mov	rdx, qword ptr [rbp - 0x500]
	lea	rdi, [rdi]
	imul	rcx, qword ptr [rdx]
	cmp	rcx, rax
	lea	rsi, [rsi]
	jl	.label_621
	nop	
	movabs	rax, 0x7fffffffffffffff
	mov	rcx, qword ptr [rbp - 0x500]
	nop	
	mov	rcx, qword ptr [rcx - 0x30]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x500]
	lea	rsi, [rsi]
	imul	rcx, qword ptr [rdx]
	mov	rbp, rbp
	cmp	rax, rcx
	mov	rbp, rbp
	jge	.label_783
.label_621:
	mov	rbp, rbp
	mov	al, 1
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x500]
	mov	rcx, qword ptr [rcx - 0x30]
	nop	
	mov	rdx, qword ptr [rbp - 0x500]
	nop	
	imul	rcx, qword ptr [rdx]
	nop	
	mov	qword ptr [rbp - 0x540], rcx
	test	al, 1
	nop	
	jne	.label_215
	jmp	.label_187
.label_783:
	lea	rsi, [rsi]
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x500]
	mov	rdx, qword ptr [rdx - 0x30]
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x500]
	imul	rdx, qword ptr [rsi]
	mov	qword ptr [rbp - 0x540], rdx
	test	cl, 1
	lea	rsi, [rsi]
	jne	.label_215
	mov	rsp, rsp
	jmp	.label_187
.label_215:
	jmp	.label_177
.label_187:
	jmp	.label_200
.label_5256:
	mov	rsp, rsp
	mov	eax, 0x38
	mov	edx, eax
	lea	rcx, [rbp - 0xac8]
	lea	rdi, [rdi]
	lea	rsi, [rbp - 0x550]
	nop	
	mov	qword ptr [rbp - 0xac8], 0
	mov	rbp, rbp
	mov	qword ptr [rbp - 0xac0], 0
	mov	qword ptr [rbp - 0xab8], 0
	mov	qword ptr [rbp - 0xab0], 0
	nop	
	mov	qword ptr [rbp - 0xaa8], 0
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0xaa0], 0
	mov	dword ptr [rbp - 0xa98], 0
	mov	rdi, rsi
	mov	rsi, rcx
	lea	rdi, [rdi]
	call	memcpy
	mov	rcx, qword ptr [rbp - 0x500]
	mov	rcx, qword ptr [rcx - 0x30]
	mov	qword ptr [rbp - 0x538], rcx
	jmp	.label_200
.label_5257:
	lea	rdi, [rdi]
	mov	eax, 0x38
	nop	
	mov	edx, eax
	lea	rdi, [rdi]
	lea	rcx, [rbp - 0xb00]
	mov	rsp, rsp
	lea	rsi, [rbp - 0x550]
	mov	qword ptr [rbp - 0xb00], 0
	mov	rsp, rsp
	mov	qword ptr [rbp - 0xaf8], 0
	mov	qword ptr [rbp - 0xaf0], 0
	mov	qword ptr [rbp - 0xae8], 0
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0xae0], 0
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0xad8], 0
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0xad0], 0
	nop	
	mov	rdi, rsi
	mov	rsi, rcx
	mov	rsp, rsp
	call	memcpy
	nop	
	mov	rcx, qword ptr [rbp - 0x500]
	mov	rcx, qword ptr [rcx - 0x30]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x530], rcx
	mov	rbp, rbp
	jmp	.label_200
.label_5258:
	mov	eax, 0x38
	mov	edx, eax
	lea	rdi, [rdi]
	lea	rcx, [rbp - 0xb38]
	mov	rbp, rbp
	lea	rsi, [rbp - 0x550]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0xb38], 0
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0xb30], 0
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0xb28], 0
	mov	qword ptr [rbp - 0xb20], 0
	mov	rsp, rsp
	mov	qword ptr [rbp - 0xb18], 0
	mov	qword ptr [rbp - 0xb10], 0
	mov	dword ptr [rbp - 0xb08], 0
	mov	rdi, rsi
	mov	rsi, rcx
	lea	rsi, [rsi]
	call	memcpy
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x500]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rcx - 0x30]
	mov	qword ptr [rbp - 0x528], rcx
	jmp	.label_200
.label_5259:
	mov	eax, 0x38
	lea	rsi, [rsi]
	mov	edx, eax
	lea	rcx, [rbp - 0xb70]
	lea	rsi, [rbp - 0x550]
	nop	
	mov	qword ptr [rbp - 0xb70], 0
	mov	qword ptr [rbp - 0xb68], 0
	mov	qword ptr [rbp - 0xb60], 0
	nop	
	mov	qword ptr [rbp - 0xb58], 0
	mov	qword ptr [rbp - 0xb50], 0
	mov	qword ptr [rbp - 0xb48], 0
	mov	dword ptr [rbp - 0xb40], 0
	mov	rdi, rsi
	mov	rsi, rcx
	lea	rdi, [rdi]
	call	memcpy
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x500]
	mov	rcx, qword ptr [rcx]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x540], rcx
	jmp	.label_200
.label_5260:
	nop	
	mov	rax, qword ptr [rbp - 0x500]
	nop	
	mov	rdi, qword ptr [rax + 8]
	mov	rbp, rbp
	call	time_overflow
	nop	
	test	al, 1
	jne	.label_943
	nop	
	jmp	.label_946
.label_943:
	jmp	.label_177
.label_946:
	mov	rax, qword ptr [rbp - 0x500]
	mov	rax, qword ptr [rax + 8]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x550], rax
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x548], 0
	jmp	.label_200
.label_5261:
	mov	rax, qword ptr [rbp - 0x500]
	mov	rdi, qword ptr [rax + 8]
	call	time_overflow
	test	al, 1
	jne	.label_958
	jmp	.label_961
.label_958:
	jmp	.label_177
.label_961:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x500]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x550], rax
	mov	qword ptr [rbp - 0x548], 0
	lea	rsi, [rsi]
	jmp	.label_200
.label_5262:
	mov	rdi, qword ptr [rbp - 8]
	nop	
	mov	rax, qword ptr [rbp - 0x500]
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
	jmp	.label_200
.label_5263:
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x500]
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
	mov	rdi, qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x500]
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
	mov	dword ptr [rbp - 0xd5c], edx
	mov	rsp, rsp
	call	apply_relative_time
	test	al, 1
	lea	rsi, [rsi]
	jne	.label_338
	jmp	.label_177
.label_338:
	jmp	.label_200
.label_5264:
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x550], -1
	mov	rbp, rbp
	jmp	.label_200
.label_5265:
	mov	rax, qword ptr [rbp - 0x500]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax + 8]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x550], rax
	nop	
	jmp	.label_200
.label_260:
	jmp	.label_200
.label_200:
	xor	eax, eax
	mov	ecx, 0x38
	mov	edx, ecx
	lea	rsi, [rbp - 0x550]
	xor	ecx, ecx
	mov	edi, ecx
	mov	ecx, dword ptr [rbp - 0x554]
	mov	r8, qword ptr [rbp - 0x500]
	lea	rsi, [rsi]
	movsxd	r9, ecx
	mov	r10, rdi
	sub	r10, r9
	mov	rbp, rbp
	imul	r9, r10, 0x38
	add	r8, r9
	mov	qword ptr [rbp - 0x500], r8
	mov	rsp, rsp
	mov	ecx, dword ptr [rbp - 0x554]
	nop	
	mov	r8, qword ptr [rbp - 0x90]
	lea	rsi, [rsi]
	movsxd	r9, ecx
	lea	rdi, [rdi]
	sub	rdi, r9
	lea	rdi, [rdi]
	shl	rdi, 1
	add	r8, rdi
	mov	qword ptr [rbp - 0x90], r8
	nop	
	mov	dword ptr [rbp - 0x554], 0
	mov	rdi, qword ptr [rbp - 0x500]
	add	rdi, 0x38
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x500], rdi
	mov	dword ptr [rbp - 0xd60], eax
	mov	rsp, rsp
	call	memcpy
	mov	rsp, rsp
	movsxd	rdx, dword ptr [rbp - 0x50c]
	movzx	eax,  byte ptr [byte ptr [+ (rdx * 1) + yyr1]]
	mov	dword ptr [rbp - 0x50c], eax
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x50c]
	mov	rsp, rsp
	sub	eax, 0x1c
	movsxd	rdx, eax
	mov	rsp, rsp
	movsx	eax,  byte ptr [byte ptr [+ (rdx * 1) + yypgoto]]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x90]
	lea	rdi, [rdi]
	movsx	ecx, word ptr [rdx]
	lea	rsi, [rsi]
	add	eax, ecx
	mov	dword ptr [rbp - 0x50], eax
	mov	eax, dword ptr [rbp - 0xd60]
	cmp	eax, dword ptr [rbp - 0x50]
	jg	.label_817
	cmp	dword ptr [rbp - 0x50], 0x70
	mov	rbp, rbp
	jg	.label_817
	mov	rsp, rsp
	movsxd	rax, dword ptr [rbp - 0x50]
	lea	rsi, [rsi]
	movsx	ecx,  byte ptr [byte ptr [+ (rax * 1) + yycheck]]
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x90]
	nop	
	movsx	edx, word ptr [rax]
	cmp	ecx, edx
	jne	.label_817
	mov	rsp, rsp
	movsxd	rax, dword ptr [rbp - 0x50]
	lea	rsi, [rsi]
	movzx	ecx,  byte ptr [byte ptr [+ (rax * 1) + yytable]]
	mov	dword ptr [rbp - 0x50], ecx
	lea	rsi, [rsi]
	jmp	.label_1107
.label_817:
	mov	eax, dword ptr [rbp - 0x50c]
	sub	eax, 0x1c
	mov	rsp, rsp
	movsxd	rcx, eax
	movsx	eax,  byte ptr [byte ptr [+ (rcx * 1) + yydefgoto]]
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x50], eax
.label_1107:
	jmp	.label_237
.label_256:
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0xc], -2
	mov	rbp, rbp
	jne	.label_954
	mov	eax, 0xfffffffe
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0xd64], eax
	jmp	.label_1132
.label_954:
	mov	rbp, rbp
	cmp	dword ptr [rbp - 0xc], 0x115
	ja	.label_1014
	movsxd	rax, dword ptr [rbp - 0xc]
	movzx	ecx,  byte ptr [byte ptr [+ (rax * 1) + yytranslate]]
	mov	dword ptr [rbp - 0xd68], ecx
	jmp	.label_1138
.label_1014:
	lea	rsi, [rsi]
	mov	eax, 2
	mov	rbp, rbp
	mov	dword ptr [rbp - 0xd68], eax
	jmp	.label_1138
.label_1138:
	nop	
	mov	eax, dword ptr [rbp - 0xd68]
	mov	rbp, rbp
	mov	dword ptr [rbp - 0xd64], eax
.label_1132:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0xd64]
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x514], eax
	cmp	dword ptr [rbp - 0x54], 0
	mov	rbp, rbp
	jne	.label_1149
	nop	
	movabs	rsi, OFFSET FLAT:.str.12_0
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x4c]
	add	eax, 1
	mov	dword ptr [rbp - 0x4c], eax
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 8]
	mov	rsp, rsp
	call	yyerror
	mov	dword ptr [rbp - 0xd6c], eax
.label_1149:
	cmp	dword ptr [rbp - 0x54], 3
	lea	rsi, [rsi]
	jne	.label_158
	cmp	dword ptr [rbp - 0xc], 0
	jg	.label_165
	lea	rsi, [rsi]
	cmp	dword ptr [rbp - 0xc], 0
	mov	rsp, rsp
	jne	.label_168
	jmp	.label_177
.label_168:
	lea	rdi, [rdi]
	jmp	.label_179
.label_165:
	movabs	rdi, OFFSET FLAT:.str.13_0
	nop	
	lea	rdx, [rbp - 0x48]
	mov	esi, dword ptr [rbp - 0x514]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	call	yydestruct
	mov	dword ptr [rbp - 0xc], 0xfffffffe
.label_179:
	jmp	.label_158
.label_158:
	nop	
	jmp	.label_195
.label_195:
	mov	dword ptr [rbp - 0x54], 3
.label_289:
	mov	rbp, rbp
	movsxd	rax, dword ptr [rbp - 0x50]
	mov	rsp, rsp
	movsx	ecx,  byte ptr [byte ptr [+ (rax * 1) + yypact]]
	mov	dword ptr [rbp - 0x50c], ecx
	cmp	dword ptr [rbp - 0x50c], -0x5d
	lea	rsi, [rsi]
	je	.label_266
	xor	eax, eax
	lea	rsi, [rsi]
	mov	ecx, dword ptr [rbp - 0x50c]
	add	ecx, 1
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x50c], ecx
	lea	rdi, [rdi]
	cmp	eax, dword ptr [rbp - 0x50c]
	jg	.label_216
	cmp	dword ptr [rbp - 0x50c], 0x70
	mov	rsp, rsp
	jg	.label_216
	lea	rdi, [rdi]
	movsxd	rax, dword ptr [rbp - 0x50c]
	lea	rdi, [rdi]
	movsx	ecx,  byte ptr [byte ptr [+ (rax * 1) + yycheck]]
	cmp	ecx, 1
	mov	rbp, rbp
	jne	.label_216
	lea	rsi, [rsi]
	xor	eax, eax
	lea	rsi, [rsi]
	movsxd	rcx, dword ptr [rbp - 0x50c]
	movzx	edx,  byte ptr [byte ptr [+ (rcx * 1) + yytable]]
	nop	
	mov	dword ptr [rbp - 0x50c], edx
	cmp	eax, dword ptr [rbp - 0x50c]
	jge	.label_250
	nop	
	jmp	.label_681
.label_250:
	jmp	.label_216
.label_216:
	jmp	.label_266
.label_266:
	mov	rax, qword ptr [rbp - 0x90]
	cmp	rax, qword ptr [rbp - 0x88]
	mov	rbp, rbp
	jne	.label_269
	lea	rdi, [rdi]
	jmp	.label_177
.label_269:
	movabs	rdi, OFFSET FLAT:.str.14_0
	movsxd	rax, dword ptr [rbp - 0x50]
	movzx	esi,  byte ptr [byte ptr [+ (rax * 1) + yystos]]
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x500]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 8]
	call	yydestruct
	mov	rax, qword ptr [rbp - 0x500]
	add	rax, -0x38
	mov	qword ptr [rbp - 0x500], rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x90]
	add	rax, -2
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x90], rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x90]
	movsx	esi, word ptr [rax]
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x50], esi
	jmp	.label_289
.label_681:
	mov	rbp, rbp
	mov	eax, 0x38
	mov	rbp, rbp
	mov	edx, eax
	lea	rcx, [rbp - 0x48]
	mov	rsi, qword ptr [rbp - 0x500]
	nop	
	add	rsi, 0x38
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x500], rsi
	mov	rbp, rbp
	mov	rdi, rsi
	mov	rbp, rbp
	mov	rsi, rcx
	call	memcpy
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x50c]
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x50], eax
	mov	rbp, rbp
	jmp	.label_237
.label_1105:
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x510], 0
	nop	
	jmp	.label_334
.label_177:
	mov	dword ptr [rbp - 0x510], 1
	nop	
	jmp	.label_334
.label_952:
	movabs	rsi, OFFSET FLAT:.str.1_3
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 8]
	call	yyerror
	mov	dword ptr [rbp - 0x510], 2
	mov	dword ptr [rbp - 0xd70], eax
.label_334:
	lea	rsi, [rsi]
	cmp	dword ptr [rbp - 0xc], -2
	mov	rbp, rbp
	je	.label_347
	mov	rbp, rbp
	cmp	dword ptr [rbp - 0xc], 0x115
	nop	
	ja	.label_355
	movsxd	rax, dword ptr [rbp - 0xc]
	mov	rbp, rbp
	movzx	ecx,  byte ptr [byte ptr [+ (rax * 1) + yytranslate]]
	mov	dword ptr [rbp - 0xd74], ecx
	lea	rsi, [rsi]
	jmp	.label_627
.label_355:
	mov	eax, 2
	mov	dword ptr [rbp - 0xd74], eax
	jmp	.label_627
.label_627:
	mov	eax, dword ptr [rbp - 0xd74]
	movabs	rdi, OFFSET FLAT:.str.16
	lea	rdx, [rbp - 0x48]
	mov	dword ptr [rbp - 0x514], eax
	lea	rdi, [rdi]
	mov	esi, dword ptr [rbp - 0x514]
	mov	rcx, qword ptr [rbp - 8]
	call	yydestruct
.label_347:
	lea	rsi, [rsi]
	xor	eax, eax
	mov	ecx, eax
	mov	eax, dword ptr [rbp - 0x554]
	mov	rdx, qword ptr [rbp - 0x500]
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
	mov	qword ptr [rbp - 0x500], rdx
	mov	eax, dword ptr [rbp - 0x554]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x90]
	movsxd	rsi, eax
	lea	rdi, [rdi]
	sub	rcx, rsi
	shl	rcx, 1
	add	rdx, rcx
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x90], rdx
.label_424:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x90]
	lea	rdi, [rdi]
	cmp	rax, qword ptr [rbp - 0x88]
	lea	rdi, [rdi]
	je	.label_405
	mov	rsp, rsp
	movabs	rdi, OFFSET FLAT:.str.17_1
	mov	rax, qword ptr [rbp - 0x90]
	lea	rdi, [rdi]
	movsx	rax, word ptr [rax]
	lea	rsi, [rsi]
	movzx	esi,  byte ptr [byte ptr [+ (rax * 1) + yystos]]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x500]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 8]
	call	yydestruct
	mov	rax, qword ptr [rbp - 0x500]
	mov	rsp, rsp
	add	rax, -0x38
	mov	qword ptr [rbp - 0x500], rax
	mov	rax, qword ptr [rbp - 0x90]
	add	rax, -2
	nop	
	mov	qword ptr [rbp - 0x90], rax
	jmp	.label_424
.label_405:
	lea	rax, [rbp - 0x80]
	nop	
	mov	rcx, qword ptr [rbp - 0x88]
	lea	rdi, [rdi]
	cmp	rcx, rax
	je	.label_440
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x88]
	mov	rdi, rax
	call	free
.label_440:
	nop	
	mov	eax, dword ptr [rbp - 0x510]
	nop	
	add	rsp, 0xdb0
	lea	rsi, [rsi]
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x413420

	.globl yylex
	.type yylex, @function
yylex:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x610
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
.label_1210:
	lea	rdi, [rdi]
	jmp	.label_1455
.label_1455:
	mov	rax, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax]
	mov	cl, byte ptr [rax]
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x19], cl
	mov	rbp, rbp
	movzx	edi, byte ptr [rbp - 0x19]
	nop	
	call	c_isspace
	test	al, 1
	nop	
	jne	.label_1463
	lea	rsi, [rsi]
	jmp	.label_1466
.label_1463:
	mov	rax, qword ptr [rbp - 0x18]
	nop	
	mov	rcx, qword ptr [rax]
	add	rcx, 1
	mov	qword ptr [rax], rcx
	jmp	.label_1455
.label_1466:
	mov	rsp, rsp
	movzx	edi, byte ptr [rbp - 0x19]
	mov	rsp, rsp
	call	c_isdigit
	test	al, 1
	lea	rsi, [rsi]
	jne	.label_1475
	mov	rbp, rbp
	movzx	eax, byte ptr [rbp - 0x19]
	lea	rsi, [rsi]
	cmp	eax, 0x2d
	mov	rbp, rbp
	je	.label_1475
	movzx	eax, byte ptr [rbp - 0x19]
	cmp	eax, 0x2b
	jne	.label_1450
.label_1475:
	mov	qword ptr [rbp - 0x38], 0
	movzx	eax, byte ptr [rbp - 0x19]
	cmp	eax, 0x2d
	je	.label_1490
	movzx	eax, byte ptr [rbp - 0x19]
	mov	rsp, rsp
	cmp	eax, 0x2b
	jne	.label_1495
.label_1490:
	mov	eax, 1
	mov	ecx, 0xffffffff
	nop	
	movzx	edx, byte ptr [rbp - 0x19]
	nop	
	cmp	edx, 0x2d
	lea	rdi, [rdi]
	cmove	eax, ecx
	mov	dword ptr [rbp - 0x2c], eax
.label_1525:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rax]
	mov	rbp, rbp
	mov	rdx, rcx
	lea	rsi, [rsi]
	add	rdx, 1
	mov	qword ptr [rax], rdx
	mov	sil, byte ptr [rcx + 1]
	mov	byte ptr [rbp - 0x19], sil
	nop	
	movzx	edi, byte ptr [rbp - 0x19]
	call	c_isspace
	mov	rsp, rsp
	test	al, 1
	jne	.label_1632
	lea	rsi, [rsi]
	jmp	.label_1521
.label_1632:
	jmp	.label_1525
.label_1521:
	mov	rsp, rsp
	movzx	edi, byte ptr [rbp - 0x19]
	call	c_isdigit
	mov	rbp, rbp
	test	al, 1
	jne	.label_1681
	mov	rbp, rbp
	jmp	.label_1210
.label_1681:
	nop	
	jmp	.label_1171
.label_1495:
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x2c], 0
.label_1171:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax]
	nop	
	mov	qword ptr [rbp - 0x28], rax
.label_1159:
	xor	eax, eax
	mov	rbp, rbp
	mov	cl, al
	test	cl, 1
	mov	rsp, rsp
	jne	.label_1234
	nop	
	jmp	.label_1545
.label_1234:
	mov	rsp, rsp
	xor	eax, eax
	mov	rsp, rsp
	mov	cl, al
	test	cl, 1
	mov	rsp, rsp
	jne	.label_1548
	jmp	.label_1552
.label_1548:
	xor	eax, eax
	lea	rdi, [rdi]
	mov	cl, al
	mov	rbp, rbp
	test	cl, 1
	lea	rsi, [rsi]
	jne	.label_1554
	lea	rdi, [rdi]
	jmp	.label_1355
.label_1554:
	mov	rax, qword ptr [rbp - 0x38]
	lea	rdi, [rdi]
	mov	cl, al
	nop	
	movsx	edx, cl
	mov	rsp, rsp
	cmp	edx, 0
	jge	.label_1256
	mov	rax, qword ptr [rbp - 0x38]
	mov	cl, al
	lea	rdi, [rdi]
	movsx	edx, cl
	nop	
	cmp	edx, 0xccccccc
	jl	.label_1299
	lea	rsi, [rsi]
	jmp	.label_1168
.label_1256:
	xor	eax, eax
	mov	rbp, rbp
	mov	cl, al
	mov	rbp, rbp
	test	cl, 1
	jne	.label_1576
	jmp	.label_1580
.label_1576:
	nop	
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_1299
	mov	rbp, rbp
	jmp	.label_1168
.label_1580:
	mov	eax, 0xf3333334
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x38]
	mov	rsp, rsp
	mov	dl, cl
	mov	rbp, rbp
	movsx	esi, dl
	cmp	eax, esi
	nop	
	jl	.label_1299
	jmp	.label_1168
.label_1355:
	lea	rdi, [rdi]
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_1595
	lea	rsi, [rsi]
	jmp	.label_1598
.label_1595:
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_1299
	nop	
	jmp	.label_1168
.label_1598:
	mov	rax, qword ptr [rbp - 0x38]
	lea	rdi, [rdi]
	mov	cl, al
	movsx	edx, cl
	mov	rbp, rbp
	cmp	edx, 0
	mov	rsp, rsp
	jge	.label_1606
	nop	
	mov	rax, qword ptr [rbp - 0x38]
	mov	cl, al
	mov	rbp, rbp
	movsx	edx, cl
	cmp	edx, 0xf3333334
	jl	.label_1299
	mov	rbp, rbp
	jmp	.label_1168
.label_1606:
	lea	rsi, [rsi]
	mov	eax, 0xccccccc
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x38]
	mov	dl, cl
	movsx	esi, dl
	lea	rdi, [rdi]
	cmp	eax, esi
	lea	rsi, [rsi]
	jl	.label_1299
.label_1168:
	mov	rax, qword ptr [rbp - 0x38]
	lea	rdi, [rdi]
	mov	cl, al
	movsx	edx, cl
	imul	edx, edx, 0xa
	mov	rbp, rbp
	cmp	edx, -0x80
	lea	rdi, [rdi]
	jl	.label_1299
	mov	eax, 0x7f
	mov	rcx, qword ptr [rbp - 0x38]
	nop	
	mov	dl, cl
	mov	rbp, rbp
	movsx	esi, dl
	imul	esi, esi, 0xa
	lea	rsi, [rsi]
	cmp	eax, esi
	mov	rbp, rbp
	jge	.label_1314
.label_1299:
	mov	al, 1
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x38]
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
	mov	qword ptr [rbp - 0x38], rcx
	lea	rsi, [rsi]
	test	al, 1
	jne	.label_1164
	jmp	.label_1162
.label_1314:
	lea	rsi, [rsi]
	xor	eax, eax
	mov	cl, al
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x38]
	mov	rsp, rsp
	mov	sil, dl
	lea	rdi, [rdi]
	movsx	eax, sil
	imul	eax, eax, 0xa
	lea	rdi, [rdi]
	mov	sil, al
	movsx	rdx, sil
	mov	qword ptr [rbp - 0x38], rdx
	test	cl, 1
	jne	.label_1164
	mov	rsp, rsp
	jmp	.label_1162
.label_1552:
	mov	rbp, rbp
	xor	eax, eax
	mov	rsp, rsp
	mov	cl, al
	test	cl, 1
	lea	rdi, [rdi]
	jne	.label_1672
	lea	rsi, [rsi]
	jmp	.label_1678
.label_1672:
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0x38], 0
	jge	.label_1597
	lea	rdi, [rdi]
	movabs	rax, 0xccccccccccccccc
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x38], rax
	jl	.label_1161
	jmp	.label_1158
.label_1597:
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_1689
	nop	
	jmp	.label_1683
.label_1689:
	lea	rdi, [rdi]
	xor	eax, eax
	lea	rsi, [rsi]
	mov	cl, al
	nop	
	test	cl, 1
	jne	.label_1161
	jmp	.label_1158
.label_1683:
	lea	rdi, [rdi]
	movabs	rax, 0xf333333333333334
	cmp	rax, qword ptr [rbp - 0x38]
	jl	.label_1161
	lea	rsi, [rsi]
	jmp	.label_1158
.label_1678:
	xor	eax, eax
	mov	rbp, rbp
	mov	cl, al
	lea	rdi, [rdi]
	test	cl, 1
	mov	rbp, rbp
	jne	.label_1173
	jmp	.label_1178
.label_1173:
	mov	rsp, rsp
	xor	eax, eax
	nop	
	mov	cl, al
	test	cl, 1
	lea	rsi, [rsi]
	jne	.label_1161
	nop	
	jmp	.label_1158
.label_1178:
	cmp	qword ptr [rbp - 0x38], 0
	jge	.label_1193
	movabs	rax, 0xf333333333333334
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x38], rax
	mov	rbp, rbp
	jl	.label_1161
	mov	rsp, rsp
	jmp	.label_1158
.label_1193:
	movabs	rax, 0xccccccccccccccc
	nop	
	cmp	rax, qword ptr [rbp - 0x38]
	jl	.label_1161
.label_1158:
	imul	rax, qword ptr [rbp - 0x38], 0xa
	cmp	rax, -0x80
	jl	.label_1161
	mov	rsp, rsp
	mov	eax, 0x7f
	mov	ecx, eax
	lea	rsi, [rsi]
	imul	rdx, qword ptr [rbp - 0x38], 0xa
	cmp	rcx, rdx
	jge	.label_1215
.label_1161:
	lea	rsi, [rsi]
	mov	al, 1
	mov	rcx, qword ptr [rbp - 0x38]
	lea	rdi, [rdi]
	mov	edx, ecx
	imul	edx, edx, 0xa
	nop	
	mov	sil, dl
	lea	rdi, [rdi]
	movsx	rcx, sil
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x38], rcx
	lea	rsi, [rsi]
	test	al, 1
	nop	
	jne	.label_1164
	jmp	.label_1162
.label_1215:
	lea	rsi, [rsi]
	xor	eax, eax
	nop	
	mov	cl, al
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x38]
	mov	eax, edx
	lea	rsi, [rsi]
	imul	eax, eax, 0xa
	mov	sil, al
	movsx	rdx, sil
	mov	qword ptr [rbp - 0x38], rdx
	test	cl, 1
	jne	.label_1164
	mov	rsp, rsp
	jmp	.label_1162
.label_1545:
	xor	eax, eax
	lea	rdi, [rdi]
	mov	cl, al
	test	cl, 1
	jne	.label_1252
	jmp	.label_1259
.label_1252:
	mov	rbp, rbp
	xor	eax, eax
	mov	rbp, rbp
	mov	cl, al
	nop	
	test	cl, 1
	lea	rdi, [rdi]
	jne	.label_1262
	mov	rbp, rbp
	jmp	.label_1271
.label_1262:
	mov	rsp, rsp
	xor	eax, eax
	mov	cl, al
	lea	rdi, [rdi]
	test	cl, 1
	mov	rbp, rbp
	jne	.label_1273
	nop	
	jmp	.label_1281
.label_1273:
	mov	rax, qword ptr [rbp - 0x38]
	lea	rdi, [rdi]
	mov	cx, ax
	movsx	edx, cx
	cmp	edx, 0
	jge	.label_1282
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x38]
	mov	rbp, rbp
	mov	cx, ax
	nop	
	movsx	edx, cx
	mov	rsp, rsp
	cmp	edx, 0xccccccc
	lea	rdi, [rdi]
	jl	.label_1287
	mov	rbp, rbp
	jmp	.label_1211
.label_1282:
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_1297
	jmp	.label_1302
.label_1297:
	xor	eax, eax
	mov	rbp, rbp
	mov	cl, al
	lea	rdi, [rdi]
	test	cl, 1
	lea	rsi, [rsi]
	jne	.label_1287
	nop	
	jmp	.label_1211
.label_1302:
	lea	rsi, [rsi]
	mov	eax, 0xf3333334
	mov	rcx, qword ptr [rbp - 0x38]
	mov	dx, cx
	movsx	esi, dx
	cmp	eax, esi
	mov	rbp, rbp
	jl	.label_1287
	jmp	.label_1211
.label_1281:
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	nop	
	jne	.label_1313
	nop	
	jmp	.label_1367
.label_1313:
	mov	rbp, rbp
	xor	eax, eax
	lea	rsi, [rsi]
	mov	cl, al
	test	cl, 1
	mov	rbp, rbp
	jne	.label_1287
	jmp	.label_1211
.label_1367:
	mov	rax, qword ptr [rbp - 0x38]
	mov	rbp, rbp
	mov	cx, ax
	movsx	edx, cx
	mov	rbp, rbp
	cmp	edx, 0
	jge	.label_1619
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x38]
	mov	rbp, rbp
	mov	cx, ax
	mov	rsp, rsp
	movsx	edx, cx
	cmp	edx, 0xf3333334
	mov	rbp, rbp
	jl	.label_1287
	nop	
	jmp	.label_1211
.label_1619:
	lea	rsi, [rsi]
	mov	eax, 0xccccccc
	mov	rcx, qword ptr [rbp - 0x38]
	mov	dx, cx
	movsx	esi, dx
	nop	
	cmp	eax, esi
	jl	.label_1287
.label_1211:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x38]
	mov	cx, ax
	movsx	edx, cx
	imul	edx, edx, 0xa
	cmp	edx, 0xffff8000
	lea	rdi, [rdi]
	jl	.label_1287
	mov	eax, 0x7fff
	mov	rcx, qword ptr [rbp - 0x38]
	mov	dx, cx
	mov	rsp, rsp
	movsx	esi, dx
	lea	rdi, [rdi]
	imul	esi, esi, 0xa
	cmp	eax, esi
	jge	.label_1361
.label_1287:
	mov	al, 1
	mov	rcx, qword ptr [rbp - 0x38]
	mov	dx, cx
	movsx	esi, dx
	mov	rsp, rsp
	imul	esi, esi, 0xa
	mov	dx, si
	mov	rsp, rsp
	movsx	rcx, dx
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x38], rcx
	test	al, 1
	jne	.label_1164
	jmp	.label_1162
.label_1361:
	mov	rsp, rsp
	xor	eax, eax
	nop	
	mov	cl, al
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x38]
	mov	si, dx
	nop	
	movsx	eax, si
	nop	
	imul	eax, eax, 0xa
	mov	si, ax
	movsx	rdx, si
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x38], rdx
	mov	rsp, rsp
	test	cl, 1
	jne	.label_1164
	jmp	.label_1162
.label_1271:
	xor	eax, eax
	lea	rsi, [rsi]
	mov	cl, al
	test	cl, 1
	jne	.label_1394
	jmp	.label_1398
.label_1394:
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x38], 0
	jge	.label_1401
	lea	rsi, [rsi]
	movabs	rax, 0xccccccccccccccc
	cmp	qword ptr [rbp - 0x38], rax
	lea	rdi, [rdi]
	jl	.label_1420
	nop	
	jmp	.label_1248
.label_1401:
	lea	rsi, [rsi]
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_1411
	nop	
	jmp	.label_1416
.label_1411:
	mov	rbp, rbp
	xor	eax, eax
	mov	cl, al
	nop	
	test	cl, 1
	lea	rsi, [rsi]
	jne	.label_1420
	lea	rdi, [rdi]
	jmp	.label_1248
.label_1416:
	movabs	rax, 0xf333333333333334
	lea	rdi, [rdi]
	cmp	rax, qword ptr [rbp - 0x38]
	jl	.label_1420
	mov	rbp, rbp
	jmp	.label_1248
.label_1398:
	xor	eax, eax
	mov	rsp, rsp
	mov	cl, al
	lea	rdi, [rdi]
	test	cl, 1
	jne	.label_1438
	jmp	.label_1441
.label_1438:
	lea	rdi, [rdi]
	xor	eax, eax
	lea	rdi, [rdi]
	mov	cl, al
	test	cl, 1
	jne	.label_1420
	jmp	.label_1248
.label_1441:
	cmp	qword ptr [rbp - 0x38], 0
	jge	.label_1449
	movabs	rax, 0xf333333333333334
	cmp	qword ptr [rbp - 0x38], rax
	jl	.label_1420
	jmp	.label_1248
.label_1449:
	nop	
	movabs	rax, 0xccccccccccccccc
	mov	rbp, rbp
	cmp	rax, qword ptr [rbp - 0x38]
	lea	rsi, [rsi]
	jl	.label_1420
.label_1248:
	mov	rbp, rbp
	imul	rax, qword ptr [rbp - 0x38], 0xa
	cmp	rax, -0x8000
	jl	.label_1420
	mov	eax, 0x7fff
	lea	rsi, [rsi]
	mov	ecx, eax
	lea	rdi, [rdi]
	imul	rdx, qword ptr [rbp - 0x38], 0xa
	nop	
	cmp	rcx, rdx
	lea	rsi, [rsi]
	jge	.label_1467
.label_1420:
	mov	rsp, rsp
	mov	al, 1
	mov	rcx, qword ptr [rbp - 0x38]
	mov	edx, ecx
	lea	rsi, [rsi]
	imul	edx, edx, 0xa
	lea	rsi, [rsi]
	mov	si, dx
	mov	rsp, rsp
	movsx	rcx, si
	nop	
	mov	qword ptr [rbp - 0x38], rcx
	test	al, 1
	lea	rsi, [rsi]
	jne	.label_1164
	jmp	.label_1162
.label_1467:
	xor	eax, eax
	nop	
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x38]
	mov	eax, edx
	lea	rdi, [rdi]
	imul	eax, eax, 0xa
	mov	si, ax
	lea	rdi, [rdi]
	movsx	rdx, si
	mov	qword ptr [rbp - 0x38], rdx
	lea	rdi, [rdi]
	test	cl, 1
	lea	rdi, [rdi]
	jne	.label_1164
	jmp	.label_1162
.label_1259:
	xor	eax, eax
	lea	rdi, [rdi]
	mov	cl, al
	lea	rsi, [rsi]
	test	cl, 1
	jne	.label_1503
	lea	rdi, [rdi]
	jmp	.label_1506
.label_1503:
	mov	rbp, rbp
	xor	eax, eax
	lea	rdi, [rdi]
	mov	cl, al
	lea	rsi, [rsi]
	test	cl, 1
	jne	.label_1509
	lea	rdi, [rdi]
	jmp	.label_1517
.label_1509:
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_1519
	jmp	.label_1522
.label_1519:
	mov	rax, qword ptr [rbp - 0x38]
	mov	rsp, rsp
	mov	ecx, eax
	cmp	ecx, 0
	nop	
	jge	.label_1524
	mov	rax, qword ptr [rbp - 0x38]
	mov	ecx, eax
	cmp	ecx, 0xccccccc
	jl	.label_1497
	lea	rdi, [rdi]
	jmp	.label_1283
.label_1524:
	mov	rsp, rsp
	xor	eax, eax
	mov	rsp, rsp
	mov	cl, al
	mov	rbp, rbp
	test	cl, 1
	lea	rsi, [rsi]
	jne	.label_1535
	lea	rdi, [rdi]
	jmp	.label_1229
.label_1535:
	lea	rsi, [rsi]
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	lea	rsi, [rsi]
	jne	.label_1497
	nop	
	jmp	.label_1283
.label_1229:
	mov	eax, 0xf3333334
	mov	rcx, qword ptr [rbp - 0x38]
	mov	edx, ecx
	cmp	eax, edx
	mov	rbp, rbp
	jl	.label_1497
	jmp	.label_1283
.label_1522:
	xor	eax, eax
	lea	rsi, [rsi]
	mov	cl, al
	test	cl, 1
	lea	rdi, [rdi]
	jne	.label_1556
	lea	rdi, [rdi]
	jmp	.label_1560
.label_1556:
	lea	rdi, [rdi]
	xor	eax, eax
	mov	rbp, rbp
	mov	cl, al
	lea	rdi, [rdi]
	test	cl, 1
	jne	.label_1497
	nop	
	jmp	.label_1283
.label_1560:
	mov	rax, qword ptr [rbp - 0x38]
	lea	rsi, [rsi]
	mov	ecx, eax
	cmp	ecx, 0
	nop	
	jge	.label_1568
	mov	rax, qword ptr [rbp - 0x38]
	mov	ecx, eax
	lea	rdi, [rdi]
	cmp	ecx, 0xf3333334
	lea	rdi, [rdi]
	jl	.label_1497
	mov	rsp, rsp
	jmp	.label_1283
.label_1568:
	mov	eax, 0xccccccc
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x38]
	mov	edx, ecx
	mov	rsp, rsp
	cmp	eax, edx
	jl	.label_1497
.label_1283:
	nop	
	mov	rax, qword ptr [rbp - 0x38]
	lea	rsi, [rsi]
	mov	ecx, eax
	lea	rdi, [rdi]
	imul	ecx, ecx, 0xa
	cmp	ecx, 0x80000000
	lea	rdi, [rdi]
	jl	.label_1497
	mov	eax, 0x7fffffff
	mov	rcx, qword ptr [rbp - 0x38]
	mov	edx, ecx
	lea	rdi, [rdi]
	imul	edx, edx, 0xa
	cmp	eax, edx
	mov	rsp, rsp
	jge	.label_1593
.label_1497:
	mov	al, 1
	mov	rcx, qword ptr [rbp - 0x38]
	mov	rsp, rsp
	mov	edx, ecx
	imul	edx, edx, 0xa
	movsxd	rcx, edx
	mov	qword ptr [rbp - 0x38], rcx
	test	al, 1
	mov	rbp, rbp
	jne	.label_1164
	jmp	.label_1162
.label_1593:
	xor	eax, eax
	lea	rsi, [rsi]
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x38]
	mov	eax, edx
	lea	rdi, [rdi]
	imul	eax, eax, 0xa
	movsxd	rdx, eax
	mov	qword ptr [rbp - 0x38], rdx
	mov	rbp, rbp
	test	cl, 1
	nop	
	jne	.label_1164
	jmp	.label_1162
.label_1517:
	xor	eax, eax
	nop	
	mov	cl, al
	test	cl, 1
	jne	.label_1622
	mov	rbp, rbp
	jmp	.label_1627
.label_1622:
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x38], 0
	lea	rdi, [rdi]
	jge	.label_1629
	mov	rbp, rbp
	movabs	rax, 0xccccccccccccccc
	cmp	qword ptr [rbp - 0x38], rax
	nop	
	jl	.label_1391
	jmp	.label_1494
.label_1629:
	xor	eax, eax
	mov	cl, al
	nop	
	test	cl, 1
	jne	.label_1639
	jmp	.label_1643
.label_1639:
	mov	rsp, rsp
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	lea	rdi, [rdi]
	jne	.label_1391
	jmp	.label_1494
.label_1643:
	mov	rsp, rsp
	movabs	rax, 0xf333333333333334
	nop	
	cmp	rax, qword ptr [rbp - 0x38]
	mov	rsp, rsp
	jl	.label_1391
	mov	rbp, rbp
	jmp	.label_1494
.label_1627:
	xor	eax, eax
	mov	rbp, rbp
	mov	cl, al
	test	cl, 1
	lea	rsi, [rsi]
	jne	.label_1657
	jmp	.label_1664
.label_1657:
	xor	eax, eax
	mov	rbp, rbp
	mov	cl, al
	lea	rdi, [rdi]
	test	cl, 1
	jne	.label_1391
	jmp	.label_1494
.label_1664:
	cmp	qword ptr [rbp - 0x38], 0
	jge	.label_1670
	lea	rsi, [rsi]
	movabs	rax, 0xf333333333333334
	cmp	qword ptr [rbp - 0x38], rax
	jl	.label_1391
	jmp	.label_1494
.label_1670:
	movabs	rax, 0xccccccccccccccc
	cmp	rax, qword ptr [rbp - 0x38]
	lea	rsi, [rsi]
	jl	.label_1391
.label_1494:
	imul	rax, qword ptr [rbp - 0x38], 0xa
	lea	rdi, [rdi]
	cmp	rax, -0x80000000
	jl	.label_1391
	mov	eax, 0x7fffffff
	mov	ecx, eax
	lea	rsi, [rsi]
	imul	rdx, qword ptr [rbp - 0x38], 0xa
	mov	rbp, rbp
	cmp	rcx, rdx
	jge	.label_1686
.label_1391:
	lea	rdi, [rdi]
	mov	al, 1
	mov	rcx, qword ptr [rbp - 0x38]
	mov	edx, ecx
	imul	edx, edx, 0xa
	movsxd	rcx, edx
	mov	qword ptr [rbp - 0x38], rcx
	mov	rbp, rbp
	test	al, 1
	jne	.label_1164
	jmp	.label_1162
.label_1686:
	lea	rdi, [rdi]
	xor	eax, eax
	mov	rbp, rbp
	mov	cl, al
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x38]
	mov	eax, edx
	imul	eax, eax, 0xa
	lea	rsi, [rsi]
	movsxd	rdx, eax
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x38], rdx
	lea	rdi, [rdi]
	test	cl, 1
	jne	.label_1164
	lea	rdi, [rdi]
	jmp	.label_1162
.label_1506:
	mov	al, 1
	mov	rbp, rbp
	test	al, 1
	jne	.label_1181
	jmp	.label_1189
.label_1181:
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_1190
	jmp	.label_1197
.label_1190:
	nop	
	xor	eax, eax
	mov	rbp, rbp
	mov	cl, al
	lea	rsi, [rsi]
	test	cl, 1
	jne	.label_1199
	lea	rdi, [rdi]
	jmp	.label_1206
.label_1199:
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x38], 0
	jge	.label_1208
	mov	rbp, rbp
	movabs	rax, 0xccccccccccccccc
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0x38], rax
	jl	.label_1232
	jmp	.label_1216
.label_1208:
	xor	eax, eax
	lea	rdi, [rdi]
	mov	cl, al
	test	cl, 1
	jne	.label_1219
	jmp	.label_1224
.label_1219:
	lea	rdi, [rdi]
	xor	eax, eax
	mov	rbp, rbp
	mov	cl, al
	lea	rdi, [rdi]
	test	cl, 1
	mov	rbp, rbp
	jne	.label_1232
	mov	rbp, rbp
	jmp	.label_1216
.label_1224:
	nop	
	movabs	rax, 0xf333333333333334
	cmp	rax, qword ptr [rbp - 0x38]
	mov	rbp, rbp
	jl	.label_1232
	jmp	.label_1216
.label_1206:
	xor	eax, eax
	lea	rsi, [rsi]
	mov	cl, al
	mov	rbp, rbp
	test	cl, 1
	lea	rsi, [rsi]
	jne	.label_1239
	jmp	.label_1245
.label_1239:
	lea	rsi, [rsi]
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_1232
	mov	rbp, rbp
	jmp	.label_1216
.label_1245:
	cmp	qword ptr [rbp - 0x38], 0
	jge	.label_1255
	lea	rdi, [rdi]
	movabs	rax, 0xf333333333333334
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x38], rax
	jl	.label_1232
	mov	rsp, rsp
	jmp	.label_1216
.label_1255:
	movabs	rax, 0xccccccccccccccc
	mov	rsp, rsp
	cmp	rax, qword ptr [rbp - 0x38]
	mov	rbp, rbp
	jl	.label_1232
.label_1216:
	movabs	rax, 0x8000000000000000
	lea	rsi, [rsi]
	imul	rcx, qword ptr [rbp - 0x38], 0xa
	cmp	rcx, rax
	lea	rdi, [rdi]
	jl	.label_1232
	movabs	rax, 0x7fffffffffffffff
	imul	rcx, qword ptr [rbp - 0x38], 0xa
	lea	rdi, [rdi]
	cmp	rax, rcx
	jge	.label_1288
.label_1232:
	nop	
	mov	al, 1
	imul	rcx, qword ptr [rbp - 0x38], 0xa
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x38], rcx
	test	al, 1
	jne	.label_1164
	jmp	.label_1162
.label_1288:
	xor	eax, eax
	mov	rsp, rsp
	mov	cl, al
	imul	rdx, qword ptr [rbp - 0x38], 0xa
	mov	qword ptr [rbp - 0x38], rdx
	mov	rsp, rsp
	test	cl, 1
	nop	
	jne	.label_1164
	mov	rsp, rsp
	jmp	.label_1162
.label_1197:
	nop	
	xor	eax, eax
	mov	rbp, rbp
	mov	cl, al
	test	cl, 1
	jne	.label_1633
	mov	rbp, rbp
	jmp	.label_1312
.label_1633:
	cmp	qword ptr [rbp - 0x38], 0
	jge	.label_1315
	movabs	rax, 0xccccccccccccccc
	cmp	qword ptr [rbp - 0x38], rax
	jl	.label_1319
	jmp	.label_1323
.label_1315:
	mov	rbp, rbp
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_1325
	jmp	.label_1331
.label_1325:
	xor	eax, eax
	mov	rbp, rbp
	mov	cl, al
	mov	rbp, rbp
	test	cl, 1
	jne	.label_1319
	jmp	.label_1323
.label_1331:
	movabs	rax, 0xf333333333333334
	cmp	rax, qword ptr [rbp - 0x38]
	lea	rdi, [rdi]
	jl	.label_1319
	lea	rsi, [rsi]
	jmp	.label_1323
.label_1312:
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_1345
	nop	
	jmp	.label_1348
.label_1345:
	xor	eax, eax
	mov	cl, al
	lea	rdi, [rdi]
	test	cl, 1
	mov	rsp, rsp
	jne	.label_1319
	jmp	.label_1323
.label_1348:
	cmp	qword ptr [rbp - 0x38], 0
	jge	.label_1357
	mov	rsp, rsp
	movabs	rax, 0xf333333333333334
	cmp	qword ptr [rbp - 0x38], rax
	jl	.label_1319
	jmp	.label_1323
.label_1357:
	nop	
	movabs	rax, 0xccccccccccccccc
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rbp - 0x38]
	jl	.label_1319
.label_1323:
	lea	rdi, [rdi]
	movabs	rax, 0x8000000000000000
	imul	rcx, qword ptr [rbp - 0x38], 0xa
	cmp	rcx, rax
	jl	.label_1319
	movabs	rax, 0x7fffffffffffffff
	imul	rcx, qword ptr [rbp - 0x38], 0xa
	cmp	rax, rcx
	mov	rsp, rsp
	jge	.label_1378
.label_1319:
	mov	al, 1
	mov	rbp, rbp
	imul	rcx, qword ptr [rbp - 0x38], 0xa
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x38], rcx
	nop	
	test	al, 1
	jne	.label_1164
	mov	rbp, rbp
	jmp	.label_1162
.label_1378:
	mov	rsp, rsp
	xor	eax, eax
	nop	
	mov	cl, al
	mov	rbp, rbp
	imul	rdx, qword ptr [rbp - 0x38], 0xa
	nop	
	mov	qword ptr [rbp - 0x38], rdx
	test	cl, 1
	mov	rsp, rsp
	jne	.label_1164
	jmp	.label_1162
.label_1189:
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_1403
	mov	rsp, rsp
	jmp	.label_1408
.label_1403:
	xor	eax, eax
	lea	rdi, [rdi]
	mov	cl, al
	test	cl, 1
	lea	rdi, [rdi]
	jne	.label_1530
	mov	rbp, rbp
	jmp	.label_1415
.label_1530:
	nop	
	cmp	qword ptr [rbp - 0x38], 0
	nop	
	jge	.label_1419
	movabs	rax, 0xccccccccccccccc
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x38], rax
	nop	
	jl	.label_1423
	mov	rbp, rbp
	jmp	.label_1429
.label_1419:
	lea	rsi, [rsi]
	xor	eax, eax
	mov	cl, al
	mov	rbp, rbp
	test	cl, 1
	jne	.label_1433
	jmp	.label_1440
.label_1433:
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	mov	rsp, rsp
	jne	.label_1423
	mov	rbp, rbp
	jmp	.label_1429
.label_1440:
	mov	rbp, rbp
	movabs	rax, 0xf333333333333334
	cmp	rax, qword ptr [rbp - 0x38]
	jl	.label_1423
	lea	rsi, [rsi]
	jmp	.label_1429
.label_1415:
	xor	eax, eax
	mov	cl, al
	mov	rsp, rsp
	test	cl, 1
	jne	.label_1453
	jmp	.label_1456
.label_1453:
	nop	
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_1423
	jmp	.label_1429
.label_1456:
	cmp	qword ptr [rbp - 0x38], 0
	mov	rsp, rsp
	jge	.label_1460
	movabs	rax, 0xf333333333333334
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0x38], rax
	jl	.label_1423
	jmp	.label_1429
.label_1460:
	movabs	rax, 0xccccccccccccccc
	cmp	rax, qword ptr [rbp - 0x38]
	jl	.label_1423
.label_1429:
	movabs	rax, 0x8000000000000000
	imul	rcx, qword ptr [rbp - 0x38], 0xa
	nop	
	cmp	rcx, rax
	jl	.label_1423
	movabs	rax, 0x7fffffffffffffff
	lea	rsi, [rsi]
	imul	rcx, qword ptr [rbp - 0x38], 0xa
	cmp	rax, rcx
	jge	.label_1483
.label_1423:
	mov	al, 1
	lea	rdi, [rdi]
	imul	rcx, qword ptr [rbp - 0x38], 0xa
	mov	qword ptr [rbp - 0x38], rcx
	mov	rbp, rbp
	test	al, 1
	nop	
	jne	.label_1164
	jmp	.label_1162
.label_1483:
	xor	eax, eax
	mov	rbp, rbp
	mov	cl, al
	imul	rdx, qword ptr [rbp - 0x38], 0xa
	mov	qword ptr [rbp - 0x38], rdx
	mov	rsp, rsp
	test	cl, 1
	lea	rsi, [rsi]
	jne	.label_1164
	lea	rdi, [rdi]
	jmp	.label_1162
.label_1408:
	nop	
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	nop	
	jne	.label_1508
	mov	rbp, rbp
	jmp	.label_1513
.label_1508:
	cmp	qword ptr [rbp - 0x38], 0
	jge	.label_1515
	lea	rsi, [rsi]
	movabs	rax, 0xccccccccccccccc
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x38], rax
	mov	rsp, rsp
	jl	.label_1242
	jmp	.label_1528
.label_1515:
	xor	eax, eax
	mov	rbp, rbp
	mov	cl, al
	mov	rbp, rbp
	test	cl, 1
	mov	rbp, rbp
	jne	.label_1529
	mov	rsp, rsp
	jmp	.label_1174
.label_1529:
	lea	rsi, [rsi]
	xor	eax, eax
	nop	
	mov	cl, al
	mov	rsp, rsp
	test	cl, 1
	mov	rsp, rsp
	jne	.label_1242
	mov	rbp, rbp
	jmp	.label_1528
.label_1174:
	movabs	rax, 0xf333333333333334
	mov	rbp, rbp
	cmp	rax, qword ptr [rbp - 0x38]
	jl	.label_1242
	lea	rsi, [rsi]
	jmp	.label_1528
.label_1513:
	xor	eax, eax
	mov	rbp, rbp
	mov	cl, al
	nop	
	test	cl, 1
	jne	.label_1551
	mov	rbp, rbp
	jmp	.label_1555
.label_1551:
	nop	
	xor	eax, eax
	mov	cl, al
	mov	rbp, rbp
	test	cl, 1
	jne	.label_1242
	nop	
	jmp	.label_1528
.label_1555:
	cmp	qword ptr [rbp - 0x38], 0
	lea	rdi, [rdi]
	jge	.label_1370
	mov	rbp, rbp
	movabs	rax, 0xf333333333333334
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x38], rax
	mov	rsp, rsp
	jl	.label_1242
	lea	rdi, [rdi]
	jmp	.label_1528
.label_1370:
	movabs	rax, 0xccccccccccccccc
	mov	rbp, rbp
	cmp	rax, qword ptr [rbp - 0x38]
	mov	rbp, rbp
	jl	.label_1242
.label_1528:
	movabs	rax, 0x8000000000000000
	imul	rcx, qword ptr [rbp - 0x38], 0xa
	lea	rsi, [rsi]
	cmp	rcx, rax
	jl	.label_1242
	lea	rsi, [rsi]
	movabs	rax, 0x7fffffffffffffff
	imul	rcx, qword ptr [rbp - 0x38], 0xa
	cmp	rax, rcx
	mov	rbp, rbp
	jge	.label_1587
.label_1242:
	mov	al, 1
	imul	rcx, qword ptr [rbp - 0x38], 0xa
	nop	
	mov	qword ptr [rbp - 0x38], rcx
	test	al, 1
	jne	.label_1164
	jmp	.label_1162
.label_1587:
	xor	eax, eax
	nop	
	mov	cl, al
	imul	rdx, qword ptr [rbp - 0x38], 0xa
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x38], rdx
	test	cl, 1
	nop	
	jne	.label_1164
	jmp	.label_1162
.label_1164:
	mov	dword ptr [rbp - 4], 0x3f
	mov	rbp, rbp
	jmp	.label_1307
.label_1162:
	mov	rbp, rbp
	xor	eax, eax
	nop	
	mov	cl, al
	test	cl, 1
	lea	rdi, [rdi]
	jne	.label_1610
	mov	rsp, rsp
	jmp	.label_1613
.label_1610:
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_1618
	jmp	.label_1624
.label_1618:
	mov	rbp, rbp
	mov	al, 1
	lea	rdi, [rdi]
	test	al, 1
	lea	rdi, [rdi]
	jne	.label_1625
	jmp	.label_1631
.label_1625:
	cmp	dword ptr [rbp - 0x2c], 0
	mov	rsp, rsp
	jge	.label_1274
	mov	eax, 0x30
	lea	rdi, [rdi]
	movzx	ecx, byte ptr [rbp - 0x19]
	lea	rdi, [rdi]
	sub	eax, ecx
	nop	
	mov	dword ptr [rbp - 0x7c], eax
	jmp	.label_1293
.label_1274:
	mov	rsp, rsp
	movzx	eax, byte ptr [rbp - 0x19]
	mov	rsp, rsp
	sub	eax, 0x30
	mov	dword ptr [rbp - 0x7c], eax
.label_1293:
	mov	eax, dword ptr [rbp - 0x7c]
	lea	rsi, [rsi]
	mov	cl, al
	movsx	eax, cl
	lea	rdi, [rdi]
	cmp	eax, 0
	nop	
	jge	.label_1687
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x38]
	nop	
	mov	cl, al
	movsx	edx, cl
	cmp	dword ptr [rbp - 0x2c], 0
	mov	dword ptr [rbp - 0x80], edx
	jge	.label_1351
	nop	
	mov	eax, 0x30
	mov	rbp, rbp
	movzx	ecx, byte ptr [rbp - 0x19]
	lea	rsi, [rsi]
	sub	eax, ecx
	mov	dword ptr [rbp - 0x84], eax
	jmp	.label_1656
.label_1351:
	movzx	eax, byte ptr [rbp - 0x19]
	sub	eax, 0x30
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x84], eax
.label_1656:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x84]
	nop	
	mov	ecx, 0x80000000
	mov	dl, al
	movsx	eax, dl
	lea	rsi, [rsi]
	sub	ecx, eax
	mov	eax, dword ptr [rbp - 0x80]
	cmp	eax, ecx
	jl	.label_1222
	jmp	.label_1156
.label_1687:
	cmp	dword ptr [rbp - 0x2c], 0
	jge	.label_1676
	mov	eax, 0x30
	movzx	ecx, byte ptr [rbp - 0x19]
	nop	
	sub	eax, ecx
	mov	dword ptr [rbp - 0x88], eax
	jmp	.label_1677
.label_1676:
	lea	rdi, [rdi]
	movzx	eax, byte ptr [rbp - 0x19]
	mov	rbp, rbp
	sub	eax, 0x30
	mov	dword ptr [rbp - 0x88], eax
.label_1677:
	mov	eax, dword ptr [rbp - 0x88]
	mov	ecx, 0x7fffffff
	mov	dl, al
	movsx	eax, dl
	sub	ecx, eax
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x38]
	mov	dl, sil
	movsx	eax, dl
	lea	rsi, [rsi]
	cmp	ecx, eax
	jl	.label_1222
	jmp	.label_1156
.label_1631:
	mov	rax, qword ptr [rbp - 0x38]
	mov	cl, al
	movsx	edx, cl
	mov	rsp, rsp
	cmp	edx, 0
	mov	rbp, rbp
	jge	.label_1157
	lea	rsi, [rsi]
	cmp	dword ptr [rbp - 0x2c], 0
	mov	rsp, rsp
	jge	.label_1167
	mov	eax, 0x30
	movzx	ecx, byte ptr [rbp - 0x19]
	nop	
	sub	eax, ecx
	mov	dword ptr [rbp - 0x8c], eax
	lea	rsi, [rsi]
	jmp	.label_1172
.label_1167:
	nop	
	movzx	eax, byte ptr [rbp - 0x19]
	sub	eax, 0x30
	nop	
	mov	dword ptr [rbp - 0x8c], eax
.label_1172:
	mov	eax, dword ptr [rbp - 0x8c]
	lea	rdi, [rdi]
	mov	cl, al
	movsx	eax, cl
	mov	rdx, qword ptr [rbp - 0x38]
	mov	rsp, rsp
	mov	cl, dl
	movsx	esi, cl
	cmp	dword ptr [rbp - 0x2c], 0
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x90], eax
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x94], esi
	lea	rdi, [rdi]
	jge	.label_1186
	mov	eax, 0x30
	nop	
	movzx	ecx, byte ptr [rbp - 0x19]
	mov	rsp, rsp
	sub	eax, ecx
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x98], eax
	mov	rsp, rsp
	jmp	.label_1209
.label_1186:
	lea	rsi, [rsi]
	movzx	eax, byte ptr [rbp - 0x19]
	mov	rbp, rbp
	sub	eax, 0x30
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x98], eax
.label_1209:
	nop	
	mov	eax, dword ptr [rbp - 0x98]
	mov	cl, al
	movsx	eax, cl
	mov	edx, dword ptr [rbp - 0x94]
	add	edx, eax
	mov	eax, dword ptr [rbp - 0x90]
	cmp	eax, edx
	jle	.label_1222
	lea	rsi, [rsi]
	jmp	.label_1156
.label_1157:
	cmp	dword ptr [rbp - 0x2c], 0
	nop	
	jge	.label_1231
	mov	eax, 0x30
	lea	rsi, [rsi]
	movzx	ecx, byte ptr [rbp - 0x19]
	sub	eax, ecx
	mov	dword ptr [rbp - 0x9c], eax
	lea	rdi, [rdi]
	jmp	.label_1236
.label_1231:
	nop	
	movzx	eax, byte ptr [rbp - 0x19]
	mov	rsp, rsp
	sub	eax, 0x30
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x9c], eax
.label_1236:
	mov	eax, dword ptr [rbp - 0x9c]
	mov	cl, al
	lea	rsi, [rsi]
	movsx	eax, cl
	cmp	eax, 0
	jge	.label_1247
	mov	rax, qword ptr [rbp - 0x38]
	mov	cl, al
	nop	
	movsx	edx, cl
	mov	rax, qword ptr [rbp - 0x38]
	lea	rsi, [rsi]
	mov	cl, al
	movsx	esi, cl
	lea	rsi, [rsi]
	cmp	dword ptr [rbp - 0x2c], 0
	nop	
	mov	dword ptr [rbp - 0xa0], edx
	mov	dword ptr [rbp - 0xa4], esi
	jge	.label_1675
	nop	
	mov	eax, 0x30
	mov	rsp, rsp
	movzx	ecx, byte ptr [rbp - 0x19]
	mov	rbp, rbp
	sub	eax, ecx
	mov	rsp, rsp
	mov	dword ptr [rbp - 0xa8], eax
	nop	
	jmp	.label_1276
.label_1675:
	nop	
	movzx	eax, byte ptr [rbp - 0x19]
	mov	rsp, rsp
	sub	eax, 0x30
	mov	dword ptr [rbp - 0xa8], eax
.label_1276:
	mov	eax, dword ptr [rbp - 0xa8]
	mov	cl, al
	lea	rdi, [rdi]
	movsx	eax, cl
	mov	rsp, rsp
	mov	edx, dword ptr [rbp - 0xa4]
	add	edx, eax
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0xa0]
	cmp	eax, edx
	lea	rdi, [rdi]
	jle	.label_1222
	jmp	.label_1156
.label_1247:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x38]
	mov	cl, al
	movsx	edx, cl
	nop	
	cmp	dword ptr [rbp - 0x2c], 0
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0xac], edx
	jge	.label_1381
	lea	rdi, [rdi]
	mov	eax, 0x30
	movzx	ecx, byte ptr [rbp - 0x19]
	nop	
	sub	eax, ecx
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0xb0], eax
	nop	
	jmp	.label_1309
.label_1381:
	movzx	eax, byte ptr [rbp - 0x19]
	sub	eax, 0x30
	mov	dword ptr [rbp - 0xb0], eax
.label_1309:
	nop	
	mov	eax, dword ptr [rbp - 0xb0]
	mov	rsp, rsp
	mov	cl, al
	mov	rsp, rsp
	movsx	eax, cl
	mov	edx, dword ptr [rbp - 0xac]
	mov	rsp, rsp
	add	edx, eax
	mov	rsp, rsp
	cmp	dword ptr [rbp - 0x2c], 0
	mov	dword ptr [rbp - 0xb4], edx
	mov	rsp, rsp
	jge	.label_1317
	mov	eax, 0x30
	mov	rsp, rsp
	movzx	ecx, byte ptr [rbp - 0x19]
	mov	rsp, rsp
	sub	eax, ecx
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0xb8], eax
	mov	rsp, rsp
	jmp	.label_1333
.label_1317:
	movzx	eax, byte ptr [rbp - 0x19]
	sub	eax, 0x30
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0xb8], eax
.label_1333:
	mov	eax, dword ptr [rbp - 0xb8]
	nop	
	mov	cl, al
	movsx	eax, cl
	mov	edx, dword ptr [rbp - 0xb4]
	nop	
	cmp	edx, eax
	mov	rsp, rsp
	jl	.label_1222
.label_1156:
	mov	rax, qword ptr [rbp - 0x38]
	mov	cl, al
	lea	rsi, [rsi]
	movsx	edx, cl
	cmp	dword ptr [rbp - 0x2c], 0
	mov	dword ptr [rbp - 0xbc], edx
	jge	.label_1691
	mov	rbp, rbp
	mov	eax, 0x30
	movzx	ecx, byte ptr [rbp - 0x19]
	mov	rbp, rbp
	sub	eax, ecx
	mov	rbp, rbp
	mov	dword ptr [rbp - 0xc0], eax
	jmp	.label_1360
.label_1691:
	movzx	eax, byte ptr [rbp - 0x19]
	mov	rbp, rbp
	sub	eax, 0x30
	mov	rbp, rbp
	mov	dword ptr [rbp - 0xc0], eax
.label_1360:
	mov	eax, dword ptr [rbp - 0xc0]
	mov	cl, al
	nop	
	movsx	eax, cl
	mov	edx, dword ptr [rbp - 0xbc]
	add	edx, eax
	cmp	edx, -0x80
	lea	rdi, [rdi]
	jl	.label_1222
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x38]
	nop	
	mov	cl, al
	lea	rdi, [rdi]
	movsx	edx, cl
	cmp	dword ptr [rbp - 0x2c], 0
	mov	dword ptr [rbp - 0xc4], edx
	mov	rbp, rbp
	jge	.label_1379
	lea	rsi, [rsi]
	mov	eax, 0x30
	lea	rsi, [rsi]
	movzx	ecx, byte ptr [rbp - 0x19]
	sub	eax, ecx
	mov	dword ptr [rbp - 0xc8], eax
	jmp	.label_1387
.label_1379:
	movzx	eax, byte ptr [rbp - 0x19]
	sub	eax, 0x30
	mov	dword ptr [rbp - 0xc8], eax
.label_1387:
	mov	eax, dword ptr [rbp - 0xc8]
	mov	ecx, 0x7f
	mov	rbp, rbp
	mov	dl, al
	movsx	eax, dl
	mov	esi, dword ptr [rbp - 0xc4]
	add	esi, eax
	nop	
	cmp	ecx, esi
	jge	.label_1400
.label_1222:
	nop	
	mov	rax, qword ptr [rbp - 0x38]
	mov	cl, al
	mov	rsp, rsp
	movsx	edx, cl
	cmp	dword ptr [rbp - 0x2c], 0
	mov	dword ptr [rbp - 0xcc], edx
	mov	rsp, rsp
	jge	.label_1409
	mov	eax, 0x30
	mov	rbp, rbp
	movzx	ecx, byte ptr [rbp - 0x19]
	lea	rdi, [rdi]
	sub	eax, ecx
	mov	rsp, rsp
	mov	dword ptr [rbp - 0xd0], eax
	mov	rbp, rbp
	jmp	.label_1418
.label_1409:
	movzx	eax, byte ptr [rbp - 0x19]
	mov	rsp, rsp
	sub	eax, 0x30
	mov	dword ptr [rbp - 0xd0], eax
.label_1418:
	mov	eax, dword ptr [rbp - 0xd0]
	mov	cl, 1
	lea	rdi, [rdi]
	mov	dl, al
	lea	rdi, [rdi]
	movsx	eax, dl
	mov	esi, dword ptr [rbp - 0xcc]
	lea	rsi, [rsi]
	add	esi, eax
	lea	rdi, [rdi]
	mov	dl, sil
	movsx	rdi, dl
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x38], rdi
	lea	rsi, [rsi]
	test	cl, 1
	lea	rdi, [rdi]
	jne	.label_1170
	lea	rsi, [rsi]
	jmp	.label_1188
.label_1400:
	mov	rax, qword ptr [rbp - 0x38]
	mov	cl, al
	movsx	edx, cl
	lea	rsi, [rsi]
	cmp	dword ptr [rbp - 0x2c], 0
	mov	dword ptr [rbp - 0xd4], edx
	mov	rbp, rbp
	jge	.label_1451
	mov	eax, 0x30
	movzx	ecx, byte ptr [rbp - 0x19]
	mov	rbp, rbp
	sub	eax, ecx
	mov	dword ptr [rbp - 0xd8], eax
	jmp	.label_1458
.label_1451:
	lea	rdi, [rdi]
	movzx	eax, byte ptr [rbp - 0x19]
	lea	rdi, [rdi]
	sub	eax, 0x30
	mov	dword ptr [rbp - 0xd8], eax
.label_1458:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0xd8]
	xor	ecx, ecx
	mov	dl, cl
	nop	
	mov	sil, al
	nop	
	movsx	eax, sil
	mov	ecx, dword ptr [rbp - 0xd4]
	add	ecx, eax
	mov	sil, cl
	movsx	rdi, sil
	mov	qword ptr [rbp - 0x38], rdi
	test	dl, 1
	jne	.label_1170
	jmp	.label_1188
.label_1624:
	mov	rbp, rbp
	mov	al, 1
	test	al, 1
	lea	rsi, [rsi]
	jne	.label_1481
	lea	rsi, [rsi]
	jmp	.label_1488
.label_1481:
	lea	rsi, [rsi]
	cmp	dword ptr [rbp - 0x2c], 0
	jge	.label_1489
	lea	rsi, [rsi]
	mov	eax, 0x30
	nop	
	movzx	ecx, byte ptr [rbp - 0x19]
	sub	eax, ecx
	mov	dword ptr [rbp - 0xdc], eax
	jmp	.label_1492
.label_1489:
	movzx	eax, byte ptr [rbp - 0x19]
	sub	eax, 0x30
	mov	dword ptr [rbp - 0xdc], eax
.label_1492:
	mov	eax, dword ptr [rbp - 0xdc]
	mov	rbp, rbp
	cmp	eax, 0
	lea	rsi, [rsi]
	jge	.label_1543
	mov	rax, qword ptr [rbp - 0x38]
	mov	rbp, rbp
	cmp	dword ptr [rbp - 0x2c], 0
	nop	
	mov	qword ptr [rbp - 0xe8], rax
	jge	.label_1376
	mov	eax, 0x30
	movzx	ecx, byte ptr [rbp - 0x19]
	mov	rsp, rsp
	sub	eax, ecx
	mov	dword ptr [rbp - 0xec], eax
	jmp	.label_1514
.label_1376:
	movzx	eax, byte ptr [rbp - 0x19]
	lea	rdi, [rdi]
	sub	eax, 0x30
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0xec], eax
.label_1514:
	mov	eax, dword ptr [rbp - 0xec]
	mov	rsp, rsp
	movabs	rcx, 0x8000000000000000
	movsxd	rdx, eax
	sub	rcx, rdx
	mov	rdx, qword ptr [rbp - 0xe8]
	cmp	rdx, rcx
	nop	
	jl	.label_1404
	jmp	.label_1537
.label_1543:
	cmp	dword ptr [rbp - 0x2c], 0
	jge	.label_1539
	mov	rsp, rsp
	mov	eax, 0x30
	mov	rbp, rbp
	movzx	ecx, byte ptr [rbp - 0x19]
	nop	
	sub	eax, ecx
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0xf0], eax
	lea	rdi, [rdi]
	jmp	.label_1540
.label_1539:
	movzx	eax, byte ptr [rbp - 0x19]
	sub	eax, 0x30
	mov	dword ptr [rbp - 0xf0], eax
.label_1540:
	nop	
	mov	eax, dword ptr [rbp - 0xf0]
	movabs	rcx, 0x7fffffffffffffff
	lea	rdi, [rdi]
	movsxd	rdx, eax
	lea	rdi, [rdi]
	sub	rcx, rdx
	cmp	rcx, qword ptr [rbp - 0x38]
	jl	.label_1404
	nop	
	jmp	.label_1537
.label_1488:
	cmp	qword ptr [rbp - 0x38], 0
	nop	
	jge	.label_1563
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x2c], 0
	jge	.label_1566
	lea	rsi, [rsi]
	mov	eax, 0x30
	lea	rsi, [rsi]
	movzx	ecx, byte ptr [rbp - 0x19]
	mov	rbp, rbp
	sub	eax, ecx
	nop	
	mov	dword ptr [rbp - 0xf4], eax
	jmp	.label_1569
.label_1566:
	lea	rsi, [rsi]
	movzx	eax, byte ptr [rbp - 0x19]
	lea	rdi, [rdi]
	sub	eax, 0x30
	nop	
	mov	dword ptr [rbp - 0xf4], eax
.label_1569:
	mov	eax, dword ptr [rbp - 0xf4]
	mov	rbp, rbp
	movsxd	rcx, eax
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x38]
	cmp	dword ptr [rbp - 0x2c], 0
	nop	
	mov	qword ptr [rbp - 0x100], rcx
	nop	
	mov	qword ptr [rbp - 0x108], rdx
	lea	rdi, [rdi]
	jge	.label_1581
	mov	eax, 0x30
	mov	rbp, rbp
	movzx	ecx, byte ptr [rbp - 0x19]
	sub	eax, ecx
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x10c], eax
	jmp	.label_1592
.label_1581:
	mov	rbp, rbp
	movzx	eax, byte ptr [rbp - 0x19]
	mov	rbp, rbp
	sub	eax, 0x30
	mov	dword ptr [rbp - 0x10c], eax
.label_1592:
	nop	
	mov	eax, dword ptr [rbp - 0x10c]
	movsxd	rcx, eax
	mov	rdx, qword ptr [rbp - 0x108]
	add	rdx, rcx
	mov	rcx, qword ptr [rbp - 0x100]
	cmp	rcx, rdx
	lea	rdi, [rdi]
	jle	.label_1404
	lea	rdi, [rdi]
	jmp	.label_1537
.label_1563:
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x2c], 0
	mov	rsp, rsp
	jge	.label_1614
	mov	eax, 0x30
	mov	rbp, rbp
	movzx	ecx, byte ptr [rbp - 0x19]
	nop	
	sub	eax, ecx
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x110], eax
	jmp	.label_1621
.label_1614:
	mov	rbp, rbp
	movzx	eax, byte ptr [rbp - 0x19]
	nop	
	sub	eax, 0x30
	mov	dword ptr [rbp - 0x110], eax
.label_1621:
	nop	
	mov	eax, dword ptr [rbp - 0x110]
	cmp	eax, 0
	jge	.label_1635
	nop	
	mov	rax, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rbp - 0x38]
	nop	
	cmp	dword ptr [rbp - 0x2c], 0
	mov	qword ptr [rbp - 0x118], rax
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x120], rcx
	jge	.label_1638
	mov	eax, 0x30
	movzx	ecx, byte ptr [rbp - 0x19]
	sub	eax, ecx
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x124], eax
	lea	rdi, [rdi]
	jmp	.label_1648
.label_1638:
	nop	
	movzx	eax, byte ptr [rbp - 0x19]
	sub	eax, 0x30
	mov	dword ptr [rbp - 0x124], eax
.label_1648:
	mov	eax, dword ptr [rbp - 0x124]
	movsxd	rcx, eax
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x120]
	add	rdx, rcx
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x118]
	cmp	rcx, rdx
	mov	rbp, rbp
	jle	.label_1404
	jmp	.label_1537
.label_1635:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x38]
	cmp	dword ptr [rbp - 0x2c], 0
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x130], rax
	jge	.label_1668
	mov	eax, 0x30
	mov	rbp, rbp
	movzx	ecx, byte ptr [rbp - 0x19]
	sub	eax, ecx
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x134], eax
	jmp	.label_1673
.label_1668:
	movzx	eax, byte ptr [rbp - 0x19]
	sub	eax, 0x30
	mov	dword ptr [rbp - 0x134], eax
.label_1673:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x134]
	mov	rbp, rbp
	movsxd	rcx, eax
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x130]
	lea	rsi, [rsi]
	add	rdx, rcx
	cmp	dword ptr [rbp - 0x2c], 0
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x140], rdx
	mov	rsp, rsp
	jge	.label_1684
	nop	
	mov	eax, 0x30
	nop	
	movzx	ecx, byte ptr [rbp - 0x19]
	lea	rdi, [rdi]
	sub	eax, ecx
	mov	dword ptr [rbp - 0x144], eax
	mov	rsp, rsp
	jmp	.label_1695
.label_1684:
	movzx	eax, byte ptr [rbp - 0x19]
	lea	rdi, [rdi]
	sub	eax, 0x30
	mov	dword ptr [rbp - 0x144], eax
.label_1695:
	mov	eax, dword ptr [rbp - 0x144]
	nop	
	movsxd	rcx, eax
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x140]
	cmp	rdx, rcx
	jl	.label_1404
.label_1537:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x38]
	cmp	dword ptr [rbp - 0x2c], 0
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x150], rax
	jge	.label_1386
	mov	eax, 0x30
	mov	rbp, rbp
	movzx	ecx, byte ptr [rbp - 0x19]
	sub	eax, ecx
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x154], eax
	mov	rsp, rsp
	jmp	.label_1335
.label_1386:
	movzx	eax, byte ptr [rbp - 0x19]
	sub	eax, 0x30
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x154], eax
.label_1335:
	mov	eax, dword ptr [rbp - 0x154]
	movsxd	rcx, eax
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x150]
	mov	rsp, rsp
	add	rdx, rcx
	mov	rbp, rbp
	cmp	rdx, -0x80
	lea	rsi, [rsi]
	jl	.label_1404
	mov	rax, qword ptr [rbp - 0x38]
	cmp	dword ptr [rbp - 0x2c], 0
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x160], rax
	jge	.label_1218
	lea	rdi, [rdi]
	mov	eax, 0x30
	movzx	ecx, byte ptr [rbp - 0x19]
	nop	
	sub	eax, ecx
	nop	
	mov	dword ptr [rbp - 0x164], eax
	mov	rsp, rsp
	jmp	.label_1407
.label_1218:
	mov	rbp, rbp
	movzx	eax, byte ptr [rbp - 0x19]
	nop	
	sub	eax, 0x30
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x164], eax
.label_1407:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x164]
	lea	rsi, [rsi]
	mov	ecx, 0x7f
	lea	rsi, [rsi]
	mov	edx, ecx
	movsxd	rsi, eax
	mov	rdi, qword ptr [rbp - 0x160]
	lea	rdi, [rdi]
	add	rdi, rsi
	lea	rdi, [rdi]
	cmp	rdx, rdi
	jge	.label_1237
.label_1404:
	mov	rax, qword ptr [rbp - 0x38]
	mov	ecx, eax
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x2c], 0
	nop	
	mov	dword ptr [rbp - 0x168], ecx
	jge	.label_1250
	nop	
	mov	eax, 0x30
	movzx	ecx, byte ptr [rbp - 0x19]
	lea	rsi, [rsi]
	sub	eax, ecx
	mov	dword ptr [rbp - 0x16c], eax
	jmp	.label_1263
.label_1250:
	lea	rdi, [rdi]
	movzx	eax, byte ptr [rbp - 0x19]
	sub	eax, 0x30
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x16c], eax
.label_1263:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x16c]
	mov	cl, 1
	mov	edx, dword ptr [rbp - 0x168]
	add	edx, eax
	mov	sil, dl
	mov	rbp, rbp
	movsx	rdi, sil
	mov	qword ptr [rbp - 0x38], rdi
	mov	rsp, rsp
	test	cl, 1
	lea	rsi, [rsi]
	jne	.label_1170
	nop	
	jmp	.label_1188
.label_1237:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x38]
	mov	rbp, rbp
	mov	ecx, eax
	cmp	dword ptr [rbp - 0x2c], 0
	mov	dword ptr [rbp - 0x170], ecx
	jge	.label_1326
	lea	rdi, [rdi]
	mov	eax, 0x30
	movzx	ecx, byte ptr [rbp - 0x19]
	mov	rsp, rsp
	sub	eax, ecx
	nop	
	mov	dword ptr [rbp - 0x174], eax
	jmp	.label_1300
.label_1326:
	movzx	eax, byte ptr [rbp - 0x19]
	sub	eax, 0x30
	mov	dword ptr [rbp - 0x174], eax
.label_1300:
	mov	eax, dword ptr [rbp - 0x174]
	xor	ecx, ecx
	mov	dl, cl
	nop	
	mov	ecx, dword ptr [rbp - 0x170]
	add	ecx, eax
	nop	
	mov	sil, cl
	nop	
	movsx	rdi, sil
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x38], rdi
	test	dl, 1
	lea	rsi, [rsi]
	jne	.label_1170
	mov	rbp, rbp
	jmp	.label_1188
.label_1613:
	mov	rbp, rbp
	xor	eax, eax
	mov	rbp, rbp
	mov	cl, al
	test	cl, 1
	jne	.label_1321
	mov	rsp, rsp
	jmp	.label_1327
.label_1321:
	lea	rdi, [rdi]
	xor	eax, eax
	mov	rsp, rsp
	mov	cl, al
	lea	rsi, [rsi]
	test	cl, 1
	jne	.label_1329
	jmp	.label_1337
.label_1329:
	mov	al, 1
	test	al, 1
	lea	rsi, [rsi]
	jne	.label_1339
	jmp	.label_1341
.label_1339:
	cmp	dword ptr [rbp - 0x2c], 0
	jge	.label_1343
	mov	rbp, rbp
	mov	eax, 0x30
	nop	
	movzx	ecx, byte ptr [rbp - 0x19]
	sub	eax, ecx
	mov	dword ptr [rbp - 0x178], eax
	nop	
	jmp	.label_1344
.label_1343:
	movzx	eax, byte ptr [rbp - 0x19]
	mov	rsp, rsp
	sub	eax, 0x30
	mov	dword ptr [rbp - 0x178], eax
.label_1344:
	mov	eax, dword ptr [rbp - 0x178]
	lea	rdi, [rdi]
	mov	cx, ax
	movsx	eax, cx
	cmp	eax, 0
	jge	.label_1350
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x38]
	mov	rsp, rsp
	mov	cx, ax
	movsx	edx, cx
	cmp	dword ptr [rbp - 0x2c], 0
	nop	
	mov	dword ptr [rbp - 0x17c], edx
	nop	
	jge	.label_1362
	lea	rdi, [rdi]
	mov	eax, 0x30
	movzx	ecx, byte ptr [rbp - 0x19]
	sub	eax, ecx
	mov	dword ptr [rbp - 0x180], eax
	jmp	.label_1368
.label_1362:
	mov	rbp, rbp
	movzx	eax, byte ptr [rbp - 0x19]
	lea	rdi, [rdi]
	sub	eax, 0x30
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x180], eax
.label_1368:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x180]
	lea	rsi, [rsi]
	mov	ecx, 0x80000000
	nop	
	mov	dx, ax
	movsx	eax, dx
	sub	ecx, eax
	mov	eax, dword ptr [rbp - 0x17c]
	cmp	eax, ecx
	nop	
	jl	.label_1380
	jmp	.label_1388
.label_1350:
	cmp	dword ptr [rbp - 0x2c], 0
	jge	.label_1390
	mov	eax, 0x30
	movzx	ecx, byte ptr [rbp - 0x19]
	sub	eax, ecx
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x184], eax
	lea	rdi, [rdi]
	jmp	.label_1395
.label_1390:
	movzx	eax, byte ptr [rbp - 0x19]
	lea	rsi, [rsi]
	sub	eax, 0x30
	mov	dword ptr [rbp - 0x184], eax
.label_1395:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x184]
	mov	ecx, 0x7fffffff
	lea	rdi, [rdi]
	mov	dx, ax
	nop	
	movsx	eax, dx
	mov	rsp, rsp
	sub	ecx, eax
	mov	rsi, qword ptr [rbp - 0x38]
	mov	dx, si
	mov	rbp, rbp
	movsx	eax, dx
	cmp	ecx, eax
	mov	rbp, rbp
	jl	.label_1380
	nop	
	jmp	.label_1388
.label_1341:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x38]
	mov	cx, ax
	movsx	edx, cx
	lea	rdi, [rdi]
	cmp	edx, 0
	jge	.label_1591
	cmp	dword ptr [rbp - 0x2c], 0
	jge	.label_1430
	lea	rdi, [rdi]
	mov	eax, 0x30
	movzx	ecx, byte ptr [rbp - 0x19]
	lea	rdi, [rdi]
	sub	eax, ecx
	mov	dword ptr [rbp - 0x188], eax
	nop	
	jmp	.label_1647
.label_1430:
	movzx	eax, byte ptr [rbp - 0x19]
	lea	rsi, [rsi]
	sub	eax, 0x30
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x188], eax
.label_1647:
	mov	eax, dword ptr [rbp - 0x188]
	mov	rsp, rsp
	mov	cx, ax
	mov	rbp, rbp
	movsx	eax, cx
	nop	
	mov	rdx, qword ptr [rbp - 0x38]
	mov	cx, dx
	movsx	esi, cx
	nop	
	cmp	dword ptr [rbp - 0x2c], 0
	mov	dword ptr [rbp - 0x18c], eax
	mov	dword ptr [rbp - 0x190], esi
	jge	.label_1447
	mov	eax, 0x30
	lea	rdi, [rdi]
	movzx	ecx, byte ptr [rbp - 0x19]
	nop	
	sub	eax, ecx
	mov	dword ptr [rbp - 0x194], eax
	lea	rdi, [rdi]
	jmp	.label_1278
.label_1447:
	movzx	eax, byte ptr [rbp - 0x19]
	lea	rdi, [rdi]
	sub	eax, 0x30
	mov	dword ptr [rbp - 0x194], eax
.label_1278:
	nop	
	mov	eax, dword ptr [rbp - 0x194]
	mov	rbp, rbp
	mov	cx, ax
	mov	rbp, rbp
	movsx	eax, cx
	mov	edx, dword ptr [rbp - 0x190]
	lea	rdi, [rdi]
	add	edx, eax
	mov	eax, dword ptr [rbp - 0x18c]
	cmp	eax, edx
	nop	
	jle	.label_1380
	lea	rdi, [rdi]
	jmp	.label_1388
.label_1591:
	mov	rsp, rsp
	cmp	dword ptr [rbp - 0x2c], 0
	nop	
	jge	.label_1482
	lea	rdi, [rdi]
	mov	eax, 0x30
	movzx	ecx, byte ptr [rbp - 0x19]
	sub	eax, ecx
	mov	dword ptr [rbp - 0x198], eax
	mov	rbp, rbp
	jmp	.label_1487
.label_1482:
	movzx	eax, byte ptr [rbp - 0x19]
	nop	
	sub	eax, 0x30
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x198], eax
.label_1487:
	mov	eax, dword ptr [rbp - 0x198]
	lea	rdi, [rdi]
	mov	cx, ax
	lea	rsi, [rsi]
	movsx	eax, cx
	lea	rsi, [rsi]
	cmp	eax, 0
	nop	
	jge	.label_1499
	mov	rax, qword ptr [rbp - 0x38]
	mov	cx, ax
	movsx	edx, cx
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x38]
	mov	cx, ax
	movsx	esi, cx
	mov	rsp, rsp
	cmp	dword ptr [rbp - 0x2c], 0
	mov	dword ptr [rbp - 0x19c], edx
	mov	dword ptr [rbp - 0x1a0], esi
	lea	rsi, [rsi]
	jge	.label_1505
	nop	
	mov	eax, 0x30
	mov	rsp, rsp
	movzx	ecx, byte ptr [rbp - 0x19]
	sub	eax, ecx
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x1a4], eax
	lea	rsi, [rsi]
	jmp	.label_1520
.label_1505:
	movzx	eax, byte ptr [rbp - 0x19]
	sub	eax, 0x30
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x1a4], eax
.label_1520:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x1a4]
	mov	cx, ax
	movsx	eax, cx
	nop	
	mov	edx, dword ptr [rbp - 0x1a0]
	add	edx, eax
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x19c]
	cmp	eax, edx
	lea	rdi, [rdi]
	jle	.label_1380
	jmp	.label_1388
.label_1499:
	mov	rax, qword ptr [rbp - 0x38]
	mov	cx, ax
	movsx	edx, cx
	mov	rbp, rbp
	cmp	dword ptr [rbp - 0x2c], 0
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x1a8], edx
	nop	
	jge	.label_1544
	mov	eax, 0x30
	movzx	ecx, byte ptr [rbp - 0x19]
	lea	rsi, [rsi]
	sub	eax, ecx
	mov	dword ptr [rbp - 0x1ac], eax
	jmp	.label_1553
.label_1544:
	mov	rbp, rbp
	movzx	eax, byte ptr [rbp - 0x19]
	lea	rdi, [rdi]
	sub	eax, 0x30
	nop	
	mov	dword ptr [rbp - 0x1ac], eax
.label_1553:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x1ac]
	mov	cx, ax
	mov	rsp, rsp
	movsx	eax, cx
	mov	edx, dword ptr [rbp - 0x1a8]
	add	edx, eax
	cmp	dword ptr [rbp - 0x2c], 0
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x1b0], edx
	jge	.label_1564
	mov	rsp, rsp
	mov	eax, 0x30
	movzx	ecx, byte ptr [rbp - 0x19]
	mov	rbp, rbp
	sub	eax, ecx
	mov	dword ptr [rbp - 0x1b4], eax
	jmp	.label_1575
.label_1564:
	movzx	eax, byte ptr [rbp - 0x19]
	mov	rsp, rsp
	sub	eax, 0x30
	mov	dword ptr [rbp - 0x1b4], eax
.label_1575:
	mov	eax, dword ptr [rbp - 0x1b4]
	mov	cx, ax
	mov	rbp, rbp
	movsx	eax, cx
	mov	rsp, rsp
	mov	edx, dword ptr [rbp - 0x1b0]
	cmp	edx, eax
	lea	rdi, [rdi]
	jl	.label_1380
.label_1388:
	mov	rax, qword ptr [rbp - 0x38]
	mov	cx, ax
	movsx	edx, cx
	cmp	dword ptr [rbp - 0x2c], 0
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x1b8], edx
	jge	.label_1579
	lea	rsi, [rsi]
	mov	eax, 0x30
	nop	
	movzx	ecx, byte ptr [rbp - 0x19]
	mov	rsp, rsp
	sub	eax, ecx
	mov	dword ptr [rbp - 0x1bc], eax
	jmp	.label_1603
.label_1579:
	movzx	eax, byte ptr [rbp - 0x19]
	sub	eax, 0x30
	mov	dword ptr [rbp - 0x1bc], eax
.label_1603:
	mov	eax, dword ptr [rbp - 0x1bc]
	mov	rbp, rbp
	mov	cx, ax
	movsx	eax, cx
	mov	rsp, rsp
	mov	edx, dword ptr [rbp - 0x1b8]
	lea	rdi, [rdi]
	add	edx, eax
	cmp	edx, 0xffff8000
	jl	.label_1380
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x38]
	mov	cx, ax
	nop	
	movsx	edx, cx
	cmp	dword ptr [rbp - 0x2c], 0
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x1c0], edx
	jge	.label_1623
	mov	rsp, rsp
	mov	eax, 0x30
	movzx	ecx, byte ptr [rbp - 0x19]
	lea	rsi, [rsi]
	sub	eax, ecx
	nop	
	mov	dword ptr [rbp - 0x1c4], eax
	mov	rsp, rsp
	jmp	.label_1634
.label_1623:
	movzx	eax, byte ptr [rbp - 0x19]
	lea	rsi, [rsi]
	sub	eax, 0x30
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x1c4], eax
.label_1634:
	nop	
	mov	eax, dword ptr [rbp - 0x1c4]
	mov	ecx, 0x7fff
	mov	dx, ax
	movsx	eax, dx
	mov	esi, dword ptr [rbp - 0x1c0]
	add	esi, eax
	cmp	ecx, esi
	nop	
	jge	.label_1645
.label_1380:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x38]
	lea	rdi, [rdi]
	mov	cx, ax
	mov	rbp, rbp
	movsx	edx, cx
	lea	rsi, [rsi]
	cmp	dword ptr [rbp - 0x2c], 0
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x1c8], edx
	lea	rsi, [rsi]
	jge	.label_1406
	mov	eax, 0x30
	movzx	ecx, byte ptr [rbp - 0x19]
	mov	rbp, rbp
	sub	eax, ecx
	nop	
	mov	dword ptr [rbp - 0x1cc], eax
	nop	
	jmp	.label_1663
.label_1406:
	movzx	eax, byte ptr [rbp - 0x19]
	sub	eax, 0x30
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x1cc], eax
.label_1663:
	mov	eax, dword ptr [rbp - 0x1cc]
	mov	rsp, rsp
	mov	cl, 1
	mov	dx, ax
	movsx	eax, dx
	mov	rsp, rsp
	mov	esi, dword ptr [rbp - 0x1c8]
	add	esi, eax
	lea	rdi, [rdi]
	mov	dx, si
	lea	rsi, [rsi]
	movsx	rdi, dx
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x38], rdi
	mov	rbp, rbp
	test	cl, 1
	jne	.label_1170
	mov	rsp, rsp
	jmp	.label_1188
.label_1645:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x38]
	mov	cx, ax
	movsx	edx, cx
	cmp	dword ptr [rbp - 0x2c], 0
	mov	dword ptr [rbp - 0x1d0], edx
	mov	rsp, rsp
	jge	.label_1369
	mov	eax, 0x30
	mov	rbp, rbp
	movzx	ecx, byte ptr [rbp - 0x19]
	lea	rsi, [rsi]
	sub	eax, ecx
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x1d4], eax
	jmp	.label_1694
.label_1369:
	mov	rsp, rsp
	movzx	eax, byte ptr [rbp - 0x19]
	sub	eax, 0x30
	mov	dword ptr [rbp - 0x1d4], eax
.label_1694:
	mov	eax, dword ptr [rbp - 0x1d4]
	xor	ecx, ecx
	mov	dl, cl
	mov	si, ax
	movsx	eax, si
	mov	rsp, rsp
	mov	ecx, dword ptr [rbp - 0x1d0]
	lea	rdi, [rdi]
	add	ecx, eax
	mov	si, cx
	movsx	rdi, si
	mov	qword ptr [rbp - 0x38], rdi
	test	dl, 1
	mov	rbp, rbp
	jne	.label_1170
	lea	rsi, [rsi]
	jmp	.label_1188
.label_1337:
	mov	al, 1
	test	al, 1
	mov	rbp, rbp
	jne	.label_1191
	mov	rsp, rsp
	jmp	.label_1198
.label_1191:
	mov	rsp, rsp
	cmp	dword ptr [rbp - 0x2c], 0
	lea	rsi, [rsi]
	jge	.label_1201
	mov	eax, 0x30
	movzx	ecx, byte ptr [rbp - 0x19]
	lea	rsi, [rsi]
	sub	eax, ecx
	mov	dword ptr [rbp - 0x1d8], eax
	jmp	.label_1207
.label_1201:
	lea	rsi, [rsi]
	movzx	eax, byte ptr [rbp - 0x19]
	sub	eax, 0x30
	mov	dword ptr [rbp - 0x1d8], eax
.label_1207:
	mov	eax, dword ptr [rbp - 0x1d8]
	mov	rbp, rbp
	cmp	eax, 0
	mov	rbp, rbp
	jge	.label_1214
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x38]
	lea	rsi, [rsi]
	cmp	dword ptr [rbp - 0x2c], 0
	mov	qword ptr [rbp - 0x1e0], rax
	mov	rbp, rbp
	jge	.label_1491
	mov	eax, 0x30
	mov	rsp, rsp
	movzx	ecx, byte ptr [rbp - 0x19]
	lea	rdi, [rdi]
	sub	eax, ecx
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x1e4], eax
	lea	rsi, [rsi]
	jmp	.label_1227
.label_1491:
	lea	rdi, [rdi]
	movzx	eax, byte ptr [rbp - 0x19]
	sub	eax, 0x30
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x1e4], eax
.label_1227:
	mov	eax, dword ptr [rbp - 0x1e4]
	lea	rsi, [rsi]
	movabs	rcx, 0x8000000000000000
	movsxd	rdx, eax
	sub	rcx, rdx
	mov	rdx, qword ptr [rbp - 0x1e0]
	cmp	rdx, rcx
	mov	rbp, rbp
	jl	.label_1241
	jmp	.label_1257
.label_1214:
	cmp	dword ptr [rbp - 0x2c], 0
	jge	.label_1260
	mov	eax, 0x30
	nop	
	movzx	ecx, byte ptr [rbp - 0x19]
	sub	eax, ecx
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x1e8], eax
	mov	rsp, rsp
	jmp	.label_1264
.label_1260:
	lea	rsi, [rsi]
	movzx	eax, byte ptr [rbp - 0x19]
	mov	rbp, rbp
	sub	eax, 0x30
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x1e8], eax
.label_1264:
	nop	
	mov	eax, dword ptr [rbp - 0x1e8]
	lea	rdi, [rdi]
	movabs	rcx, 0x7fffffffffffffff
	movsxd	rdx, eax
	sub	rcx, rdx
	cmp	rcx, qword ptr [rbp - 0x38]
	jl	.label_1241
	jmp	.label_1257
.label_1198:
	cmp	qword ptr [rbp - 0x38], 0
	lea	rsi, [rsi]
	jge	.label_1289
	cmp	dword ptr [rbp - 0x2c], 0
	lea	rdi, [rdi]
	jge	.label_1294
	lea	rdi, [rdi]
	mov	eax, 0x30
	lea	rdi, [rdi]
	movzx	ecx, byte ptr [rbp - 0x19]
	sub	eax, ecx
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x1ec], eax
	lea	rsi, [rsi]
	jmp	.label_1298
.label_1294:
	lea	rdi, [rdi]
	movzx	eax, byte ptr [rbp - 0x19]
	sub	eax, 0x30
	mov	dword ptr [rbp - 0x1ec], eax
.label_1298:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x1ec]
	movsxd	rcx, eax
	nop	
	mov	rdx, qword ptr [rbp - 0x38]
	nop	
	cmp	dword ptr [rbp - 0x2c], 0
	mov	qword ptr [rbp - 0x1f8], rcx
	mov	qword ptr [rbp - 0x200], rdx
	lea	rdi, [rdi]
	jge	.label_1310
	mov	rbp, rbp
	mov	eax, 0x30
	mov	rsp, rsp
	movzx	ecx, byte ptr [rbp - 0x19]
	sub	eax, ecx
	mov	dword ptr [rbp - 0x204], eax
	jmp	.label_1320
.label_1310:
	mov	rsp, rsp
	movzx	eax, byte ptr [rbp - 0x19]
	sub	eax, 0x30
	mov	dword ptr [rbp - 0x204], eax
.label_1320:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x204]
	movsxd	rcx, eax
	mov	rdx, qword ptr [rbp - 0x200]
	add	rdx, rcx
	mov	rcx, qword ptr [rbp - 0x1f8]
	cmp	rcx, rdx
	mov	rsp, rsp
	jle	.label_1241
	jmp	.label_1257
.label_1289:
	mov	rbp, rbp
	cmp	dword ptr [rbp - 0x2c], 0
	jge	.label_1649
	mov	eax, 0x30
	lea	rsi, [rsi]
	movzx	ecx, byte ptr [rbp - 0x19]
	lea	rsi, [rsi]
	sub	eax, ecx
	nop	
	mov	dword ptr [rbp - 0x208], eax
	jmp	.label_1346
.label_1649:
	movzx	eax, byte ptr [rbp - 0x19]
	sub	eax, 0x30
	nop	
	mov	dword ptr [rbp - 0x208], eax
.label_1346:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x208]
	cmp	eax, 0
	jge	.label_1359
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x38]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x38]
	lea	rsi, [rsi]
	cmp	dword ptr [rbp - 0x2c], 0
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x210], rax
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x218], rcx
	jge	.label_1365
	mov	eax, 0x30
	movzx	ecx, byte ptr [rbp - 0x19]
	mov	rbp, rbp
	sub	eax, ecx
	nop	
	mov	dword ptr [rbp - 0x21c], eax
	jmp	.label_1374
.label_1365:
	mov	rsp, rsp
	movzx	eax, byte ptr [rbp - 0x19]
	nop	
	sub	eax, 0x30
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x21c], eax
.label_1374:
	mov	eax, dword ptr [rbp - 0x21c]
	movsxd	rcx, eax
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x218]
	add	rdx, rcx
	nop	
	mov	rcx, qword ptr [rbp - 0x210]
	mov	rbp, rbp
	cmp	rcx, rdx
	lea	rsi, [rsi]
	jle	.label_1241
	jmp	.label_1257
.label_1359:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x38]
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x2c], 0
	mov	qword ptr [rbp - 0x228], rax
	lea	rdi, [rdi]
	jge	.label_1399
	lea	rsi, [rsi]
	mov	eax, 0x30
	mov	rbp, rbp
	movzx	ecx, byte ptr [rbp - 0x19]
	lea	rsi, [rsi]
	sub	eax, ecx
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x22c], eax
	nop	
	jmp	.label_1405
.label_1399:
	lea	rdi, [rdi]
	movzx	eax, byte ptr [rbp - 0x19]
	nop	
	sub	eax, 0x30
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x22c], eax
.label_1405:
	mov	eax, dword ptr [rbp - 0x22c]
	movsxd	rcx, eax
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x228]
	mov	rsp, rsp
	add	rdx, rcx
	mov	rsp, rsp
	cmp	dword ptr [rbp - 0x2c], 0
	mov	qword ptr [rbp - 0x238], rdx
	lea	rdi, [rdi]
	jge	.label_1424
	mov	rsp, rsp
	mov	eax, 0x30
	lea	rdi, [rdi]
	movzx	ecx, byte ptr [rbp - 0x19]
	sub	eax, ecx
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x23c], eax
	jmp	.label_1439
.label_1424:
	movzx	eax, byte ptr [rbp - 0x19]
	sub	eax, 0x30
	mov	dword ptr [rbp - 0x23c], eax
.label_1439:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x23c]
	lea	rdi, [rdi]
	movsxd	rcx, eax
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x238]
	mov	rsp, rsp
	cmp	rdx, rcx
	jl	.label_1241
.label_1257:
	mov	rax, qword ptr [rbp - 0x38]
	cmp	dword ptr [rbp - 0x2c], 0
	mov	qword ptr [rbp - 0x248], rax
	jge	.label_1457
	lea	rdi, [rdi]
	mov	eax, 0x30
	movzx	ecx, byte ptr [rbp - 0x19]
	lea	rsi, [rsi]
	sub	eax, ecx
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x24c], eax
	jmp	.label_1402
.label_1457:
	movzx	eax, byte ptr [rbp - 0x19]
	sub	eax, 0x30
	mov	dword ptr [rbp - 0x24c], eax
.label_1402:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x24c]
	movsxd	rcx, eax
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x248]
	add	rdx, rcx
	cmp	rdx, -0x8000
	nop	
	jl	.label_1241
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x38]
	mov	rbp, rbp
	cmp	dword ptr [rbp - 0x2c], 0
	mov	qword ptr [rbp - 0x258], rax
	lea	rsi, [rsi]
	jge	.label_1480
	nop	
	mov	eax, 0x30
	lea	rdi, [rdi]
	movzx	ecx, byte ptr [rbp - 0x19]
	sub	eax, ecx
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x25c], eax
	jmp	.label_1469
.label_1480:
	movzx	eax, byte ptr [rbp - 0x19]
	mov	rsp, rsp
	sub	eax, 0x30
	mov	dword ptr [rbp - 0x25c], eax
.label_1469:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x25c]
	mov	ecx, 0x7fff
	mov	edx, ecx
	movsxd	rsi, eax
	mov	rdi, qword ptr [rbp - 0x258]
	add	rdi, rsi
	cmp	rdx, rdi
	mov	rbp, rbp
	jge	.label_1502
.label_1241:
	nop	
	mov	rax, qword ptr [rbp - 0x38]
	mov	rbp, rbp
	mov	ecx, eax
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x2c], 0
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x260], ecx
	mov	rbp, rbp
	jge	.label_1601
	lea	rsi, [rsi]
	mov	eax, 0x30
	movzx	ecx, byte ptr [rbp - 0x19]
	sub	eax, ecx
	nop	
	mov	dword ptr [rbp - 0x264], eax
	jmp	.label_1654
.label_1601:
	movzx	eax, byte ptr [rbp - 0x19]
	lea	rsi, [rsi]
	sub	eax, 0x30
	nop	
	mov	dword ptr [rbp - 0x264], eax
.label_1654:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x264]
	mov	rbp, rbp
	mov	cl, 1
	mov	edx, dword ptr [rbp - 0x260]
	add	edx, eax
	nop	
	mov	si, dx
	mov	rbp, rbp
	movsx	rdi, si
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x38], rdi
	test	cl, 1
	lea	rdi, [rdi]
	jne	.label_1170
	lea	rsi, [rsi]
	jmp	.label_1188
.label_1502:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x38]
	mov	rsp, rsp
	mov	ecx, eax
	cmp	dword ptr [rbp - 0x2c], 0
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x268], ecx
	lea	rsi, [rsi]
	jge	.label_1550
	lea	rsi, [rsi]
	mov	eax, 0x30
	movzx	ecx, byte ptr [rbp - 0x19]
	lea	rsi, [rsi]
	sub	eax, ecx
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x26c], eax
	jmp	.label_1558
.label_1550:
	nop	
	movzx	eax, byte ptr [rbp - 0x19]
	mov	rsp, rsp
	sub	eax, 0x30
	mov	dword ptr [rbp - 0x26c], eax
.label_1558:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x26c]
	xor	ecx, ecx
	mov	dl, cl
	lea	rdi, [rdi]
	mov	ecx, dword ptr [rbp - 0x268]
	lea	rsi, [rsi]
	add	ecx, eax
	mov	rsp, rsp
	mov	si, cx
	lea	rdi, [rdi]
	movsx	rdi, si
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x38], rdi
	nop	
	test	dl, 1
	jne	.label_1170
	mov	rsp, rsp
	jmp	.label_1188
.label_1327:
	xor	eax, eax
	mov	rsp, rsp
	mov	cl, al
	mov	rsp, rsp
	test	cl, 1
	nop	
	jne	.label_1584
	jmp	.label_1589
.label_1584:
	xor	eax, eax
	lea	rsi, [rsi]
	mov	cl, al
	nop	
	test	cl, 1
	lea	rdi, [rdi]
	jne	.label_1590
	jmp	.label_1594
.label_1590:
	mov	al, 1
	test	al, 1
	lea	rdi, [rdi]
	jne	.label_1596
	jmp	.label_1599
.label_1596:
	cmp	dword ptr [rbp - 0x2c], 0
	nop	
	jge	.label_1602
	mov	eax, 0x30
	lea	rdi, [rdi]
	movzx	ecx, byte ptr [rbp - 0x19]
	sub	eax, ecx
	mov	dword ptr [rbp - 0x270], eax
	jmp	.label_1605
.label_1602:
	movzx	eax, byte ptr [rbp - 0x19]
	nop	
	sub	eax, 0x30
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x270], eax
.label_1605:
	mov	eax, dword ptr [rbp - 0x270]
	lea	rsi, [rsi]
	cmp	eax, 0
	jge	.label_1612
	mov	rax, qword ptr [rbp - 0x38]
	mov	ecx, eax
	mov	rbp, rbp
	cmp	dword ptr [rbp - 0x2c], 0
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x274], ecx
	jge	.label_1617
	mov	eax, 0x30
	lea	rdi, [rdi]
	movzx	ecx, byte ptr [rbp - 0x19]
	mov	rsp, rsp
	sub	eax, ecx
	nop	
	mov	dword ptr [rbp - 0x278], eax
	jmp	.label_1628
.label_1617:
	mov	rsp, rsp
	movzx	eax, byte ptr [rbp - 0x19]
	mov	rbp, rbp
	sub	eax, 0x30
	mov	dword ptr [rbp - 0x278], eax
.label_1628:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x278]
	mov	rbp, rbp
	mov	ecx, 0x80000000
	lea	rsi, [rsi]
	sub	ecx, eax
	mov	eax, dword ptr [rbp - 0x274]
	lea	rdi, [rdi]
	cmp	eax, ecx
	jl	.label_1240
	jmp	.label_1194
.label_1612:
	mov	rbp, rbp
	cmp	dword ptr [rbp - 0x2c], 0
	jge	.label_1650
	lea	rsi, [rsi]
	mov	eax, 0x30
	lea	rdi, [rdi]
	movzx	ecx, byte ptr [rbp - 0x19]
	mov	rsp, rsp
	sub	eax, ecx
	mov	dword ptr [rbp - 0x27c], eax
	mov	rsp, rsp
	jmp	.label_1653
.label_1650:
	lea	rdi, [rdi]
	movzx	eax, byte ptr [rbp - 0x19]
	lea	rsi, [rsi]
	sub	eax, 0x30
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x27c], eax
.label_1653:
	mov	eax, dword ptr [rbp - 0x27c]
	mov	ecx, 0x7fffffff
	mov	rbp, rbp
	sub	ecx, eax
	mov	rdx, qword ptr [rbp - 0x38]
	mov	eax, edx
	cmp	ecx, eax
	lea	rdi, [rdi]
	jl	.label_1240
	lea	rsi, [rsi]
	jmp	.label_1194
.label_1599:
	mov	rax, qword ptr [rbp - 0x38]
	mov	rbp, rbp
	mov	ecx, eax
	mov	rsp, rsp
	cmp	ecx, 0
	jge	.label_1674
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x2c], 0
	jge	.label_1679
	mov	rsp, rsp
	mov	eax, 0x30
	movzx	ecx, byte ptr [rbp - 0x19]
	mov	rbp, rbp
	sub	eax, ecx
	nop	
	mov	dword ptr [rbp - 0x280], eax
	mov	rsp, rsp
	jmp	.label_1682
.label_1679:
	movzx	eax, byte ptr [rbp - 0x19]
	lea	rdi, [rdi]
	sub	eax, 0x30
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x280], eax
.label_1682:
	mov	eax, dword ptr [rbp - 0x280]
	mov	rcx, qword ptr [rbp - 0x38]
	mov	rbp, rbp
	mov	edx, ecx
	cmp	dword ptr [rbp - 0x2c], 0
	nop	
	mov	dword ptr [rbp - 0x284], eax
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x288], edx
	jge	.label_1692
	mov	eax, 0x30
	movzx	ecx, byte ptr [rbp - 0x19]
	sub	eax, ecx
	mov	dword ptr [rbp - 0x28c], eax
	mov	rbp, rbp
	jmp	.label_1166
.label_1692:
	mov	rsp, rsp
	movzx	eax, byte ptr [rbp - 0x19]
	nop	
	sub	eax, 0x30
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x28c], eax
.label_1166:
	mov	eax, dword ptr [rbp - 0x28c]
	nop	
	mov	ecx, dword ptr [rbp - 0x288]
	add	ecx, eax
	mov	eax, dword ptr [rbp - 0x284]
	cmp	eax, ecx
	lea	rsi, [rsi]
	jle	.label_1240
	lea	rsi, [rsi]
	jmp	.label_1194
.label_1674:
	cmp	dword ptr [rbp - 0x2c], 0
	nop	
	jge	.label_1356
	mov	rbp, rbp
	mov	eax, 0x30
	nop	
	movzx	ecx, byte ptr [rbp - 0x19]
	sub	eax, ecx
	mov	dword ptr [rbp - 0x290], eax
	nop	
	jmp	.label_1202
.label_1356:
	movzx	eax, byte ptr [rbp - 0x19]
	sub	eax, 0x30
	mov	dword ptr [rbp - 0x290], eax
.label_1202:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x290]
	cmp	eax, 0
	mov	rbp, rbp
	jge	.label_1212
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x38]
	nop	
	mov	ecx, eax
	mov	rax, qword ptr [rbp - 0x38]
	mov	edx, eax
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x2c], 0
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x294], ecx
	mov	dword ptr [rbp - 0x298], edx
	jge	.label_1217
	mov	eax, 0x30
	movzx	ecx, byte ptr [rbp - 0x19]
	sub	eax, ecx
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x29c], eax
	jmp	.label_1538
.label_1217:
	movzx	eax, byte ptr [rbp - 0x19]
	lea	rsi, [rsi]
	sub	eax, 0x30
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x29c], eax
.label_1538:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x29c]
	mov	ecx, dword ptr [rbp - 0x298]
	add	ecx, eax
	mov	eax, dword ptr [rbp - 0x294]
	cmp	eax, ecx
	jle	.label_1240
	jmp	.label_1194
.label_1212:
	mov	rax, qword ptr [rbp - 0x38]
	mov	ecx, eax
	cmp	dword ptr [rbp - 0x2c], 0
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x2a0], ecx
	jge	.label_1249
	mov	eax, 0x30
	movzx	ecx, byte ptr [rbp - 0x19]
	sub	eax, ecx
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x2a4], eax
	mov	rsp, rsp
	jmp	.label_1688
.label_1249:
	mov	rsp, rsp
	movzx	eax, byte ptr [rbp - 0x19]
	sub	eax, 0x30
	mov	dword ptr [rbp - 0x2a4], eax
.label_1688:
	mov	eax, dword ptr [rbp - 0x2a4]
	mov	ecx, dword ptr [rbp - 0x2a0]
	add	ecx, eax
	mov	rsp, rsp
	cmp	dword ptr [rbp - 0x2c], 0
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x2a8], ecx
	jge	.label_1279
	lea	rsi, [rsi]
	mov	eax, 0x30
	movzx	ecx, byte ptr [rbp - 0x19]
	sub	eax, ecx
	mov	dword ptr [rbp - 0x2ac], eax
	jmp	.label_1286
.label_1279:
	mov	rsp, rsp
	movzx	eax, byte ptr [rbp - 0x19]
	sub	eax, 0x30
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x2ac], eax
.label_1286:
	mov	eax, dword ptr [rbp - 0x2ac]
	mov	rsp, rsp
	mov	ecx, dword ptr [rbp - 0x2a8]
	cmp	ecx, eax
	lea	rdi, [rdi]
	jl	.label_1240
.label_1194:
	nop	
	mov	rax, qword ptr [rbp - 0x38]
	mov	ecx, eax
	cmp	dword ptr [rbp - 0x2c], 0
	mov	dword ptr [rbp - 0x2b0], ecx
	mov	rsp, rsp
	jge	.label_1303
	mov	eax, 0x30
	mov	rsp, rsp
	movzx	ecx, byte ptr [rbp - 0x19]
	lea	rsi, [rsi]
	sub	eax, ecx
	mov	dword ptr [rbp - 0x2b4], eax
	jmp	.label_1445
.label_1303:
	movzx	eax, byte ptr [rbp - 0x19]
	mov	rbp, rbp
	sub	eax, 0x30
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x2b4], eax
.label_1445:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x2b4]
	mov	ecx, dword ptr [rbp - 0x2b0]
	nop	
	add	ecx, eax
	lea	rdi, [rdi]
	cmp	ecx, 0x80000000
	lea	rsi, [rsi]
	jl	.label_1240
	nop	
	mov	rax, qword ptr [rbp - 0x38]
	nop	
	mov	ecx, eax
	cmp	dword ptr [rbp - 0x2c], 0
	mov	dword ptr [rbp - 0x2b8], ecx
	jge	.label_1571
	mov	eax, 0x30
	mov	rsp, rsp
	movzx	ecx, byte ptr [rbp - 0x19]
	mov	rsp, rsp
	sub	eax, ecx
	mov	dword ptr [rbp - 0x2bc], eax
	jmp	.label_1426
.label_1571:
	movzx	eax, byte ptr [rbp - 0x19]
	nop	
	sub	eax, 0x30
	mov	dword ptr [rbp - 0x2bc], eax
.label_1426:
	nop	
	mov	eax, dword ptr [rbp - 0x2bc]
	mov	ecx, 0x7fffffff
	mov	rbp, rbp
	mov	edx, dword ptr [rbp - 0x2b8]
	add	edx, eax
	cmp	ecx, edx
	jge	.label_1347
.label_1240:
	nop	
	mov	rax, qword ptr [rbp - 0x38]
	mov	rsp, rsp
	mov	ecx, eax
	lea	rsi, [rsi]
	cmp	dword ptr [rbp - 0x2c], 0
	mov	dword ptr [rbp - 0x2c0], ecx
	jge	.label_1354
	mov	eax, 0x30
	movzx	ecx, byte ptr [rbp - 0x19]
	lea	rsi, [rsi]
	sub	eax, ecx
	mov	dword ptr [rbp - 0x2c4], eax
	mov	rsp, rsp
	jmp	.label_1228
.label_1354:
	nop	
	movzx	eax, byte ptr [rbp - 0x19]
	mov	rbp, rbp
	sub	eax, 0x30
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x2c4], eax
.label_1228:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x2c4]
	mov	rsp, rsp
	mov	cl, 1
	mov	edx, dword ptr [rbp - 0x2c0]
	add	edx, eax
	lea	rsi, [rsi]
	movsxd	rsi, edx
	mov	qword ptr [rbp - 0x38], rsi
	test	cl, 1
	jne	.label_1170
	lea	rsi, [rsi]
	jmp	.label_1188
.label_1347:
	mov	rax, qword ptr [rbp - 0x38]
	lea	rdi, [rdi]
	mov	ecx, eax
	cmp	dword ptr [rbp - 0x2c], 0
	mov	dword ptr [rbp - 0x2c8], ecx
	jge	.label_1604
	mov	eax, 0x30
	lea	rsi, [rsi]
	movzx	ecx, byte ptr [rbp - 0x19]
	sub	eax, ecx
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x2cc], eax
	mov	rsp, rsp
	jmp	.label_1392
.label_1604:
	mov	rbp, rbp
	movzx	eax, byte ptr [rbp - 0x19]
	sub	eax, 0x30
	mov	dword ptr [rbp - 0x2cc], eax
.label_1392:
	mov	eax, dword ptr [rbp - 0x2cc]
	mov	rsp, rsp
	xor	ecx, ecx
	lea	rdi, [rdi]
	mov	dl, cl
	mov	ecx, dword ptr [rbp - 0x2c8]
	mov	rbp, rbp
	add	ecx, eax
	lea	rsi, [rsi]
	movsxd	rsi, ecx
	nop	
	mov	qword ptr [rbp - 0x38], rsi
	test	dl, 1
	mov	rsp, rsp
	jne	.label_1170
	jmp	.label_1188
.label_1594:
	nop	
	mov	al, 1
	test	al, 1
	mov	rbp, rbp
	jne	.label_1582
	jmp	.label_1425
.label_1582:
	cmp	dword ptr [rbp - 0x2c], 0
	mov	rsp, rsp
	jge	.label_1427
	mov	eax, 0x30
	mov	rsp, rsp
	movzx	ecx, byte ptr [rbp - 0x19]
	mov	rbp, rbp
	sub	eax, ecx
	nop	
	mov	dword ptr [rbp - 0x2d0], eax
	mov	rbp, rbp
	jmp	.label_1431
.label_1427:
	lea	rsi, [rsi]
	movzx	eax, byte ptr [rbp - 0x19]
	sub	eax, 0x30
	mov	dword ptr [rbp - 0x2d0], eax
.label_1431:
	mov	eax, dword ptr [rbp - 0x2d0]
	cmp	eax, 0
	mov	rbp, rbp
	jge	.label_1443
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x38]
	cmp	dword ptr [rbp - 0x2c], 0
	nop	
	mov	qword ptr [rbp - 0x2d8], rax
	jge	.label_1200
	lea	rsi, [rsi]
	mov	eax, 0x30
	movzx	ecx, byte ptr [rbp - 0x19]
	sub	eax, ecx
	mov	dword ptr [rbp - 0x2dc], eax
	jmp	.label_1238
.label_1200:
	nop	
	movzx	eax, byte ptr [rbp - 0x19]
	mov	rbp, rbp
	sub	eax, 0x30
	mov	dword ptr [rbp - 0x2dc], eax
.label_1238:
	mov	eax, dword ptr [rbp - 0x2dc]
	lea	rsi, [rsi]
	movabs	rcx, 0x8000000000000000
	movsxd	rdx, eax
	lea	rdi, [rdi]
	sub	rcx, rdx
	mov	rdx, qword ptr [rbp - 0x2d8]
	cmp	rdx, rcx
	jl	.label_1462
	lea	rsi, [rsi]
	jmp	.label_1473
.label_1443:
	cmp	dword ptr [rbp - 0x2c], 0
	jge	.label_1474
	nop	
	mov	eax, 0x30
	mov	rsp, rsp
	movzx	ecx, byte ptr [rbp - 0x19]
	sub	eax, ecx
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x2e0], eax
	lea	rdi, [rdi]
	jmp	.label_1478
.label_1474:
	lea	rdi, [rdi]
	movzx	eax, byte ptr [rbp - 0x19]
	sub	eax, 0x30
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x2e0], eax
.label_1478:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x2e0]
	movabs	rcx, 0x7fffffffffffffff
	movsxd	rdx, eax
	nop	
	sub	rcx, rdx
	lea	rdi, [rdi]
	cmp	rcx, qword ptr [rbp - 0x38]
	jl	.label_1462
	jmp	.label_1473
.label_1425:
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x38], 0
	nop	
	jge	.label_1504
	mov	rbp, rbp
	cmp	dword ptr [rbp - 0x2c], 0
	nop	
	jge	.label_1507
	mov	eax, 0x30
	nop	
	movzx	ecx, byte ptr [rbp - 0x19]
	sub	eax, ecx
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x2e4], eax
	nop	
	jmp	.label_1512
.label_1507:
	nop	
	movzx	eax, byte ptr [rbp - 0x19]
	nop	
	sub	eax, 0x30
	mov	dword ptr [rbp - 0x2e4], eax
.label_1512:
	mov	eax, dword ptr [rbp - 0x2e4]
	movsxd	rcx, eax
	nop	
	mov	rdx, qword ptr [rbp - 0x38]
	cmp	dword ptr [rbp - 0x2c], 0
	nop	
	mov	qword ptr [rbp - 0x2f0], rcx
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x2f8], rdx
	jge	.label_1526
	mov	eax, 0x30
	movzx	ecx, byte ptr [rbp - 0x19]
	sub	eax, ecx
	mov	dword ptr [rbp - 0x2fc], eax
	nop	
	jmp	.label_1536
.label_1526:
	movzx	eax, byte ptr [rbp - 0x19]
	sub	eax, 0x30
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x2fc], eax
.label_1536:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x2fc]
	nop	
	movsxd	rcx, eax
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x2f8]
	add	rdx, rcx
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x2f0]
	mov	rbp, rbp
	cmp	rcx, rdx
	jle	.label_1462
	jmp	.label_1473
.label_1504:
	mov	rsp, rsp
	cmp	dword ptr [rbp - 0x2c], 0
	mov	rsp, rsp
	jge	.label_1559
	mov	eax, 0x30
	movzx	ecx, byte ptr [rbp - 0x19]
	lea	rsi, [rsi]
	sub	eax, ecx
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x300], eax
	jmp	.label_1561
.label_1559:
	movzx	eax, byte ptr [rbp - 0x19]
	nop	
	sub	eax, 0x30
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x300], eax
.label_1561:
	mov	eax, dword ptr [rbp - 0x300]
	lea	rdi, [rdi]
	cmp	eax, 0
	lea	rsi, [rsi]
	jge	.label_1574
	mov	rax, qword ptr [rbp - 0x38]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x38]
	cmp	dword ptr [rbp - 0x2c], 0
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x308], rax
	nop	
	mov	qword ptr [rbp - 0x310], rcx
	lea	rsi, [rsi]
	jge	.label_1577
	mov	rbp, rbp
	mov	eax, 0x30
	lea	rdi, [rdi]
	movzx	ecx, byte ptr [rbp - 0x19]
	nop	
	sub	eax, ecx
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x314], eax
	mov	rsp, rsp
	jmp	.label_1588
.label_1577:
	movzx	eax, byte ptr [rbp - 0x19]
	mov	rsp, rsp
	sub	eax, 0x30
	mov	dword ptr [rbp - 0x314], eax
.label_1588:
	mov	eax, dword ptr [rbp - 0x314]
	movsxd	rcx, eax
	mov	rdx, qword ptr [rbp - 0x310]
	lea	rsi, [rsi]
	add	rdx, rcx
	mov	rcx, qword ptr [rbp - 0x308]
	cmp	rcx, rdx
	lea	rsi, [rsi]
	jle	.label_1462
	jmp	.label_1473
.label_1574:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x38]
	nop	
	cmp	dword ptr [rbp - 0x2c], 0
	nop	
	mov	qword ptr [rbp - 0x320], rax
	jge	.label_1609
	mov	eax, 0x30
	lea	rdi, [rdi]
	movzx	ecx, byte ptr [rbp - 0x19]
	sub	eax, ecx
	mov	dword ptr [rbp - 0x324], eax
	jmp	.label_1615
.label_1609:
	movzx	eax, byte ptr [rbp - 0x19]
	mov	rbp, rbp
	sub	eax, 0x30
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x324], eax
.label_1615:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x324]
	movsxd	rcx, eax
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x320]
	add	rdx, rcx
	cmp	dword ptr [rbp - 0x2c], 0
	mov	qword ptr [rbp - 0x330], rdx
	lea	rdi, [rdi]
	jge	.label_1265
	mov	eax, 0x30
	movzx	ecx, byte ptr [rbp - 0x19]
	lea	rdi, [rdi]
	sub	eax, ecx
	mov	dword ptr [rbp - 0x334], eax
	nop	
	jmp	.label_1640
.label_1265:
	movzx	eax, byte ptr [rbp - 0x19]
	mov	rbp, rbp
	sub	eax, 0x30
	nop	
	mov	dword ptr [rbp - 0x334], eax
.label_1640:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x334]
	mov	rsp, rsp
	movsxd	rcx, eax
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x330]
	cmp	rdx, rcx
	jl	.label_1462
.label_1473:
	mov	rax, qword ptr [rbp - 0x38]
	cmp	dword ptr [rbp - 0x2c], 0
	nop	
	mov	qword ptr [rbp - 0x340], rax
	lea	rdi, [rdi]
	jge	.label_1659
	mov	eax, 0x30
	movzx	ecx, byte ptr [rbp - 0x19]
	sub	eax, ecx
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x344], eax
	lea	rsi, [rsi]
	jmp	.label_1666
.label_1659:
	movzx	eax, byte ptr [rbp - 0x19]
	sub	eax, 0x30
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x344], eax
.label_1666:
	mov	eax, dword ptr [rbp - 0x344]
	lea	rdi, [rdi]
	movsxd	rcx, eax
	mov	rdx, qword ptr [rbp - 0x340]
	add	rdx, rcx
	cmp	rdx, -0x80000000
	lea	rsi, [rsi]
	jl	.label_1462
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x38]
	mov	rbp, rbp
	cmp	dword ptr [rbp - 0x2c], 0
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x350], rax
	jge	.label_1496
	nop	
	mov	eax, 0x30
	movzx	ecx, byte ptr [rbp - 0x19]
	mov	rsp, rsp
	sub	eax, ecx
	mov	dword ptr [rbp - 0x354], eax
	mov	rbp, rbp
	jmp	.label_1562
.label_1496:
	mov	rsp, rsp
	movzx	eax, byte ptr [rbp - 0x19]
	sub	eax, 0x30
	mov	dword ptr [rbp - 0x354], eax
.label_1562:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x354]
	mov	ecx, 0x7fffffff
	nop	
	mov	edx, ecx
	mov	rbp, rbp
	movsxd	rsi, eax
	nop	
	mov	rdi, qword ptr [rbp - 0x350]
	add	rdi, rsi
	mov	rsp, rsp
	cmp	rdx, rdi
	jge	.label_1160
.label_1462:
	mov	rax, qword ptr [rbp - 0x38]
	mov	ecx, eax
	lea	rsi, [rsi]
	cmp	dword ptr [rbp - 0x2c], 0
	mov	dword ptr [rbp - 0x358], ecx
	mov	rsp, rsp
	jge	.label_1176
	nop	
	mov	eax, 0x30
	nop	
	movzx	ecx, byte ptr [rbp - 0x19]
	sub	eax, ecx
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x35c], eax
	mov	rsp, rsp
	jmp	.label_1187
.label_1176:
	movzx	eax, byte ptr [rbp - 0x19]
	mov	rsp, rsp
	sub	eax, 0x30
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x35c], eax
.label_1187:
	mov	eax, dword ptr [rbp - 0x35c]
	mov	cl, 1
	mov	edx, dword ptr [rbp - 0x358]
	nop	
	add	edx, eax
	lea	rdi, [rdi]
	movsxd	rsi, edx
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x38], rsi
	nop	
	test	cl, 1
	lea	rdi, [rdi]
	jne	.label_1170
	lea	rdi, [rdi]
	jmp	.label_1188
.label_1160:
	mov	rax, qword ptr [rbp - 0x38]
	mov	ecx, eax
	cmp	dword ptr [rbp - 0x2c], 0
	nop	
	mov	dword ptr [rbp - 0x360], ecx
	mov	rbp, rbp
	jge	.label_1220
	mov	eax, 0x30
	movzx	ecx, byte ptr [rbp - 0x19]
	nop	
	sub	eax, ecx
	mov	dword ptr [rbp - 0x364], eax
	mov	rsp, rsp
	jmp	.label_1225
.label_1220:
	movzx	eax, byte ptr [rbp - 0x19]
	lea	rdi, [rdi]
	sub	eax, 0x30
	mov	dword ptr [rbp - 0x364], eax
.label_1225:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x364]
	xor	ecx, ecx
	mov	dl, cl
	mov	ecx, dword ptr [rbp - 0x360]
	mov	rsp, rsp
	add	ecx, eax
	movsxd	rsi, ecx
	nop	
	mov	qword ptr [rbp - 0x38], rsi
	lea	rsi, [rsi]
	test	dl, 1
	lea	rsi, [rsi]
	jne	.label_1170
	jmp	.label_1188
.label_1589:
	lea	rdi, [rdi]
	mov	al, 1
	mov	rbp, rbp
	test	al, 1
	jne	.label_1251
	jmp	.label_1258
.label_1251:
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	lea	rsi, [rsi]
	jne	.label_1261
	jmp	.label_1266
.label_1261:
	lea	rdi, [rdi]
	mov	al, 1
	test	al, 1
	nop	
	jne	.label_1268
	jmp	.label_1275
.label_1268:
	cmp	dword ptr [rbp - 0x2c], 0
	jge	.label_1277
	lea	rsi, [rsi]
	mov	eax, 0x30
	lea	rdi, [rdi]
	movzx	ecx, byte ptr [rbp - 0x19]
	lea	rdi, [rdi]
	sub	eax, ecx
	mov	dword ptr [rbp - 0x368], eax
	jmp	.label_1280
.label_1277:
	lea	rdi, [rdi]
	movzx	eax, byte ptr [rbp - 0x19]
	lea	rsi, [rsi]
	sub	eax, 0x30
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x368], eax
.label_1280:
	mov	eax, dword ptr [rbp - 0x368]
	movsxd	rcx, eax
	cmp	rcx, 0
	lea	rsi, [rsi]
	jge	.label_1290
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x38]
	cmp	dword ptr [rbp - 0x2c], 0
	nop	
	mov	qword ptr [rbp - 0x370], rax
	mov	rbp, rbp
	jge	.label_1296
	mov	rbp, rbp
	mov	eax, 0x30
	movzx	ecx, byte ptr [rbp - 0x19]
	sub	eax, ecx
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x374], eax
	lea	rdi, [rdi]
	jmp	.label_1304
.label_1296:
	movzx	eax, byte ptr [rbp - 0x19]
	sub	eax, 0x30
	mov	dword ptr [rbp - 0x374], eax
.label_1304:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x374]
	lea	rdi, [rdi]
	movabs	rcx, 0x8000000000000000
	lea	rdi, [rdi]
	movsxd	rdx, eax
	sub	rcx, rdx
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x370]
	nop	
	cmp	rdx, rcx
	jl	.label_1169
	jmp	.label_1318
.label_1290:
	mov	rsp, rsp
	cmp	dword ptr [rbp - 0x2c], 0
	lea	rsi, [rsi]
	jge	.label_1328
	lea	rdi, [rdi]
	mov	eax, 0x30
	mov	rbp, rbp
	movzx	ecx, byte ptr [rbp - 0x19]
	sub	eax, ecx
	mov	dword ptr [rbp - 0x378], eax
	jmp	.label_1334
.label_1328:
	mov	rsp, rsp
	movzx	eax, byte ptr [rbp - 0x19]
	nop	
	sub	eax, 0x30
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x378], eax
.label_1334:
	mov	eax, dword ptr [rbp - 0x378]
	movabs	rcx, 0x7fffffffffffffff
	movsxd	rdx, eax
	sub	rcx, rdx
	cmp	rcx, qword ptr [rbp - 0x38]
	lea	rsi, [rsi]
	jl	.label_1169
	jmp	.label_1318
.label_1275:
	cmp	qword ptr [rbp - 0x38], 0
	jge	.label_1353
	mov	rbp, rbp
	cmp	dword ptr [rbp - 0x2c], 0
	lea	rsi, [rsi]
	jge	.label_1358
	mov	eax, 0x30
	movzx	ecx, byte ptr [rbp - 0x19]
	sub	eax, ecx
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x37c], eax
	lea	rsi, [rsi]
	jmp	.label_1364
.label_1358:
	movzx	eax, byte ptr [rbp - 0x19]
	sub	eax, 0x30
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x37c], eax
.label_1364:
	mov	eax, dword ptr [rbp - 0x37c]
	mov	rsp, rsp
	movsxd	rcx, eax
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x38]
	cmp	dword ptr [rbp - 0x2c], 0
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x388], rcx
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x390], rdx
	nop	
	jge	.label_1371
	lea	rsi, [rsi]
	mov	eax, 0x30
	movzx	ecx, byte ptr [rbp - 0x19]
	sub	eax, ecx
	mov	dword ptr [rbp - 0x394], eax
	mov	rsp, rsp
	jmp	.label_1384
.label_1371:
	movzx	eax, byte ptr [rbp - 0x19]
	lea	rsi, [rsi]
	sub	eax, 0x30
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x394], eax
.label_1384:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x394]
	movsxd	rcx, eax
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x390]
	nop	
	add	rdx, rcx
	mov	rcx, qword ptr [rbp - 0x388]
	lea	rdi, [rdi]
	cmp	rcx, rdx
	nop	
	jle	.label_1169
	jmp	.label_1318
.label_1353:
	cmp	dword ptr [rbp - 0x2c], 0
	jge	.label_1410
	lea	rdi, [rdi]
	mov	eax, 0x30
	mov	rsp, rsp
	movzx	ecx, byte ptr [rbp - 0x19]
	lea	rsi, [rsi]
	sub	eax, ecx
	mov	dword ptr [rbp - 0x398], eax
	jmp	.label_1413
.label_1410:
	lea	rdi, [rdi]
	movzx	eax, byte ptr [rbp - 0x19]
	sub	eax, 0x30
	mov	dword ptr [rbp - 0x398], eax
.label_1413:
	mov	eax, dword ptr [rbp - 0x398]
	movsxd	rcx, eax
	cmp	rcx, 0
	jge	.label_1428
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rbp - 0x38]
	cmp	dword ptr [rbp - 0x2c], 0
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x3a0], rax
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x3a8], rcx
	jge	.label_1436
	mov	rbp, rbp
	mov	eax, 0x30
	movzx	ecx, byte ptr [rbp - 0x19]
	sub	eax, ecx
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x3ac], eax
	jmp	.label_1444
.label_1436:
	movzx	eax, byte ptr [rbp - 0x19]
	sub	eax, 0x30
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x3ac], eax
.label_1444:
	mov	eax, dword ptr [rbp - 0x3ac]
	movsxd	rcx, eax
	mov	rdx, qword ptr [rbp - 0x3a8]
	lea	rdi, [rdi]
	add	rdx, rcx
	mov	rcx, qword ptr [rbp - 0x3a0]
	mov	rsp, rsp
	cmp	rcx, rdx
	mov	rbp, rbp
	jle	.label_1169
	jmp	.label_1318
.label_1428:
	mov	rax, qword ptr [rbp - 0x38]
	cmp	dword ptr [rbp - 0x2c], 0
	mov	qword ptr [rbp - 0x3b8], rax
	lea	rsi, [rsi]
	jge	.label_1465
	nop	
	mov	eax, 0x30
	mov	rbp, rbp
	movzx	ecx, byte ptr [rbp - 0x19]
	sub	eax, ecx
	mov	dword ptr [rbp - 0x3bc], eax
	jmp	.label_1470
.label_1465:
	movzx	eax, byte ptr [rbp - 0x19]
	mov	rsp, rsp
	sub	eax, 0x30
	mov	dword ptr [rbp - 0x3bc], eax
.label_1470:
	mov	eax, dword ptr [rbp - 0x3bc]
	movsxd	rcx, eax
	nop	
	mov	rdx, qword ptr [rbp - 0x3b8]
	nop	
	add	rdx, rcx
	mov	rbp, rbp
	cmp	dword ptr [rbp - 0x2c], 0
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x3c8], rdx
	jge	.label_1432
	lea	rsi, [rsi]
	mov	eax, 0x30
	mov	rbp, rbp
	movzx	ecx, byte ptr [rbp - 0x19]
	lea	rsi, [rsi]
	sub	eax, ecx
	mov	dword ptr [rbp - 0x3cc], eax
	jmp	.label_1498
.label_1432:
	movzx	eax, byte ptr [rbp - 0x19]
	sub	eax, 0x30
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x3cc], eax
.label_1498:
	nop	
	mov	eax, dword ptr [rbp - 0x3cc]
	movsxd	rcx, eax
	mov	rdx, qword ptr [rbp - 0x3c8]
	mov	rsp, rsp
	cmp	rdx, rcx
	jl	.label_1169
.label_1318:
	mov	rax, qword ptr [rbp - 0x38]
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x2c], 0
	mov	qword ptr [rbp - 0x3d8], rax
	jge	.label_1479
	nop	
	mov	eax, 0x30
	nop	
	movzx	ecx, byte ptr [rbp - 0x19]
	sub	eax, ecx
	mov	dword ptr [rbp - 0x3dc], eax
	jmp	.label_1660
.label_1479:
	lea	rdi, [rdi]
	movzx	eax, byte ptr [rbp - 0x19]
	mov	rsp, rsp
	sub	eax, 0x30
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x3dc], eax
.label_1660:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x3dc]
	lea	rsi, [rsi]
	movabs	rcx, 0x8000000000000000
	mov	rbp, rbp
	movsxd	rdx, eax
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x3d8]
	lea	rsi, [rsi]
	add	rsi, rdx
	mov	rsp, rsp
	cmp	rsi, rcx
	jl	.label_1169
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x38]
	cmp	dword ptr [rbp - 0x2c], 0
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x3e8], rax
	jge	.label_1549
	nop	
	mov	eax, 0x30
	mov	rbp, rbp
	movzx	ecx, byte ptr [rbp - 0x19]
	sub	eax, ecx
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x3ec], eax
	lea	rdi, [rdi]
	jmp	.label_1322
.label_1549:
	movzx	eax, byte ptr [rbp - 0x19]
	mov	rbp, rbp
	sub	eax, 0x30
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x3ec], eax
.label_1322:
	nop	
	mov	eax, dword ptr [rbp - 0x3ec]
	movabs	rcx, 0x7fffffffffffffff
	nop	
	movsxd	rdx, eax
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x3e8]
	lea	rdi, [rdi]
	add	rsi, rdx
	cmp	rcx, rsi
	jge	.label_1565
.label_1169:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x38]
	cmp	dword ptr [rbp - 0x2c], 0
	nop	
	mov	qword ptr [rbp - 0x3f8], rax
	jge	.label_1306
	mov	rsp, rsp
	mov	eax, 0x30
	movzx	ecx, byte ptr [rbp - 0x19]
	nop	
	sub	eax, ecx
	mov	dword ptr [rbp - 0x3fc], eax
	jmp	.label_1583
.label_1306:
	mov	rbp, rbp
	movzx	eax, byte ptr [rbp - 0x19]
	lea	rsi, [rsi]
	sub	eax, 0x30
	mov	dword ptr [rbp - 0x3fc], eax
.label_1583:
	mov	eax, dword ptr [rbp - 0x3fc]
	mov	cl, 1
	mov	rsp, rsp
	movsxd	rdx, eax
	mov	rsi, qword ptr [rbp - 0x3f8]
	lea	rdi, [rdi]
	add	rsi, rdx
	mov	qword ptr [rbp - 0x38], rsi
	mov	rsp, rsp
	test	cl, 1
	jne	.label_1170
	jmp	.label_1188
.label_1565:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x38]
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x2c], 0
	mov	qword ptr [rbp - 0x408], rax
	mov	rsp, rsp
	jge	.label_1607
	mov	eax, 0x30
	movzx	ecx, byte ptr [rbp - 0x19]
	mov	rbp, rbp
	sub	eax, ecx
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x40c], eax
	jmp	.label_1221
.label_1607:
	mov	rbp, rbp
	movzx	eax, byte ptr [rbp - 0x19]
	nop	
	sub	eax, 0x30
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x40c], eax
.label_1221:
	mov	eax, dword ptr [rbp - 0x40c]
	lea	rsi, [rsi]
	xor	ecx, ecx
	mov	dl, cl
	mov	rbp, rbp
	movsxd	rsi, eax
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x408]
	add	rdi, rsi
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x38], rdi
	mov	rsp, rsp
	test	dl, 1
	mov	rsp, rsp
	jne	.label_1170
	nop	
	jmp	.label_1188
.label_1266:
	mov	al, 1
	test	al, 1
	lea	rdi, [rdi]
	jne	.label_1642
	lea	rsi, [rsi]
	jmp	.label_1646
.label_1642:
	cmp	dword ptr [rbp - 0x2c], 0
	lea	rsi, [rsi]
	jge	.label_1372
	mov	eax, 0x30
	movzx	ecx, byte ptr [rbp - 0x19]
	sub	eax, ecx
	mov	dword ptr [rbp - 0x410], eax
	nop	
	jmp	.label_1651
.label_1372:
	movzx	eax, byte ptr [rbp - 0x19]
	nop	
	sub	eax, 0x30
	mov	dword ptr [rbp - 0x410], eax
.label_1651:
	mov	eax, dword ptr [rbp - 0x410]
	mov	rsp, rsp
	cmp	eax, 0
	lea	rsi, [rsi]
	jge	.label_1658
	mov	rax, qword ptr [rbp - 0x38]
	cmp	dword ptr [rbp - 0x2c], 0
	mov	qword ptr [rbp - 0x418], rax
	jge	.label_1665
	mov	rsp, rsp
	mov	eax, 0x30
	movzx	ecx, byte ptr [rbp - 0x19]
	sub	eax, ecx
	mov	dword ptr [rbp - 0x41c], eax
	jmp	.label_1669
.label_1665:
	mov	rsp, rsp
	movzx	eax, byte ptr [rbp - 0x19]
	sub	eax, 0x30
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x41c], eax
.label_1669:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x41c]
	movabs	rcx, 0x8000000000000000
	lea	rdi, [rdi]
	movsxd	rdx, eax
	nop	
	sub	rcx, rdx
	mov	rdx, qword ptr [rbp - 0x418]
	lea	rdi, [rdi]
	cmp	rdx, rcx
	mov	rbp, rbp
	jl	.label_1165
	jmp	.label_1177
.label_1658:
	nop	
	cmp	dword ptr [rbp - 0x2c], 0
	lea	rdi, [rdi]
	jge	.label_1690
	mov	eax, 0x30
	movzx	ecx, byte ptr [rbp - 0x19]
	sub	eax, ecx
	mov	dword ptr [rbp - 0x420], eax
	jmp	.label_1693
.label_1690:
	movzx	eax, byte ptr [rbp - 0x19]
	sub	eax, 0x30
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x420], eax
.label_1693:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x420]
	lea	rdi, [rdi]
	movabs	rcx, 0x7fffffffffffffff
	nop	
	movsxd	rdx, eax
	sub	rcx, rdx
	cmp	rcx, qword ptr [rbp - 0x38]
	jl	.label_1165
	jmp	.label_1177
.label_1646:
	nop	
	cmp	qword ptr [rbp - 0x38], 0
	jge	.label_1292
	cmp	dword ptr [rbp - 0x2c], 0
	jge	.label_1182
	mov	eax, 0x30
	movzx	ecx, byte ptr [rbp - 0x19]
	sub	eax, ecx
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x424], eax
	jmp	.label_1324
.label_1182:
	mov	rbp, rbp
	movzx	eax, byte ptr [rbp - 0x19]
	sub	eax, 0x30
	mov	dword ptr [rbp - 0x424], eax
.label_1324:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x424]
	mov	rsp, rsp
	movsxd	rcx, eax
	mov	rdx, qword ptr [rbp - 0x38]
	mov	rbp, rbp
	cmp	dword ptr [rbp - 0x2c], 0
	mov	qword ptr [rbp - 0x430], rcx
	mov	qword ptr [rbp - 0x438], rdx
	mov	rsp, rsp
	jge	.label_1205
	nop	
	mov	eax, 0x30
	movzx	ecx, byte ptr [rbp - 0x19]
	sub	eax, ecx
	mov	dword ptr [rbp - 0x43c], eax
	jmp	.label_1464
.label_1205:
	movzx	eax, byte ptr [rbp - 0x19]
	sub	eax, 0x30
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x43c], eax
.label_1464:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x43c]
	movsxd	rcx, eax
	mov	rdx, qword ptr [rbp - 0x438]
	mov	rsp, rsp
	add	rdx, rcx
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x430]
	mov	rbp, rbp
	cmp	rcx, rdx
	mov	rbp, rbp
	jle	.label_1165
	mov	rsp, rsp
	jmp	.label_1177
.label_1292:
	cmp	dword ptr [rbp - 0x2c], 0
	mov	rbp, rbp
	jge	.label_1611
	mov	eax, 0x30
	movzx	ecx, byte ptr [rbp - 0x19]
	sub	eax, ecx
	mov	dword ptr [rbp - 0x440], eax
	jmp	.label_1244
.label_1611:
	movzx	eax, byte ptr [rbp - 0x19]
	lea	rdi, [rdi]
	sub	eax, 0x30
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x440], eax
.label_1244:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x440]
	nop	
	cmp	eax, 0
	mov	rsp, rsp
	jge	.label_1375
	mov	rax, qword ptr [rbp - 0x38]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x38]
	cmp	dword ptr [rbp - 0x2c], 0
	mov	qword ptr [rbp - 0x448], rax
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x450], rcx
	jge	.label_1270
	lea	rsi, [rsi]
	mov	eax, 0x30
	movzx	ecx, byte ptr [rbp - 0x19]
	mov	rbp, rbp
	sub	eax, ecx
	mov	dword ptr [rbp - 0x454], eax
	jmp	.label_1366
.label_1270:
	movzx	eax, byte ptr [rbp - 0x19]
	sub	eax, 0x30
	nop	
	mov	dword ptr [rbp - 0x454], eax
.label_1366:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x454]
	movsxd	rcx, eax
	mov	rdx, qword ptr [rbp - 0x450]
	lea	rdi, [rdi]
	add	rdx, rcx
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x448]
	cmp	rcx, rdx
	nop	
	jle	.label_1165
	jmp	.label_1177
.label_1375:
	mov	rax, qword ptr [rbp - 0x38]
	cmp	dword ptr [rbp - 0x2c], 0
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x460], rax
	jge	.label_1305
	mov	eax, 0x30
	mov	rsp, rsp
	movzx	ecx, byte ptr [rbp - 0x19]
	sub	eax, ecx
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x464], eax
	jmp	.label_1630
.label_1305:
	movzx	eax, byte ptr [rbp - 0x19]
	sub	eax, 0x30
	nop	
	mov	dword ptr [rbp - 0x464], eax
.label_1630:
	mov	eax, dword ptr [rbp - 0x464]
	movsxd	rcx, eax
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x460]
	nop	
	add	rdx, rcx
	cmp	dword ptr [rbp - 0x2c], 0
	mov	qword ptr [rbp - 0x470], rdx
	lea	rdi, [rdi]
	jge	.label_1667
	lea	rsi, [rsi]
	mov	eax, 0x30
	movzx	ecx, byte ptr [rbp - 0x19]
	sub	eax, ecx
	mov	dword ptr [rbp - 0x474], eax
	jmp	.label_1332
.label_1667:
	lea	rdi, [rdi]
	movzx	eax, byte ptr [rbp - 0x19]
	sub	eax, 0x30
	mov	dword ptr [rbp - 0x474], eax
.label_1332:
	mov	eax, dword ptr [rbp - 0x474]
	lea	rdi, [rdi]
	movsxd	rcx, eax
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x470]
	cmp	rdx, rcx
	jl	.label_1165
.label_1177:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x38]
	mov	rbp, rbp
	cmp	dword ptr [rbp - 0x2c], 0
	mov	qword ptr [rbp - 0x480], rax
	jge	.label_1349
	mov	eax, 0x30
	movzx	ecx, byte ptr [rbp - 0x19]
	sub	eax, ecx
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x484], eax
	jmp	.label_1183
.label_1349:
	movzx	eax, byte ptr [rbp - 0x19]
	nop	
	sub	eax, 0x30
	nop	
	mov	dword ptr [rbp - 0x484], eax
.label_1183:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x484]
	lea	rsi, [rsi]
	movabs	rcx, 0x8000000000000000
	mov	rbp, rbp
	movsxd	rdx, eax
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x480]
	add	rsi, rdx
	cmp	rsi, rcx
	jl	.label_1165
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x38]
	cmp	dword ptr [rbp - 0x2c], 0
	nop	
	mov	qword ptr [rbp - 0x490], rax
	jge	.label_1377
	lea	rdi, [rdi]
	mov	eax, 0x30
	movzx	ecx, byte ptr [rbp - 0x19]
	nop	
	sub	eax, ecx
	nop	
	mov	dword ptr [rbp - 0x494], eax
	jmp	.label_1383
.label_1377:
	movzx	eax, byte ptr [rbp - 0x19]
	sub	eax, 0x30
	mov	dword ptr [rbp - 0x494], eax
.label_1383:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x494]
	movabs	rcx, 0x7fffffffffffffff
	mov	rsp, rsp
	movsxd	rdx, eax
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x490]
	mov	rsp, rsp
	add	rsi, rdx
	cmp	rcx, rsi
	jge	.label_1396
.label_1165:
	mov	rax, qword ptr [rbp - 0x38]
	cmp	dword ptr [rbp - 0x2c], 0
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x4a0], rax
	nop	
	jge	.label_1531
	lea	rsi, [rsi]
	mov	eax, 0x30
	nop	
	movzx	ecx, byte ptr [rbp - 0x19]
	lea	rsi, [rsi]
	sub	eax, ecx
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x4a4], eax
	lea	rdi, [rdi]
	jmp	.label_1414
.label_1531:
	lea	rdi, [rdi]
	movzx	eax, byte ptr [rbp - 0x19]
	sub	eax, 0x30
	mov	dword ptr [rbp - 0x4a4], eax
.label_1414:
	mov	eax, dword ptr [rbp - 0x4a4]
	lea	rsi, [rsi]
	mov	cl, 1
	mov	rbp, rbp
	movsxd	rdx, eax
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x4a0]
	add	rsi, rdx
	mov	qword ptr [rbp - 0x38], rsi
	test	cl, 1
	mov	rsp, rsp
	jne	.label_1170
	mov	rsp, rsp
	jmp	.label_1188
.label_1396:
	mov	rax, qword ptr [rbp - 0x38]
	mov	rsp, rsp
	cmp	dword ptr [rbp - 0x2c], 0
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x4b0], rax
	jge	.label_1446
	mov	rsp, rsp
	mov	eax, 0x30
	movzx	ecx, byte ptr [rbp - 0x19]
	sub	eax, ecx
	mov	dword ptr [rbp - 0x4b4], eax
	jmp	.label_1452
.label_1446:
	movzx	eax, byte ptr [rbp - 0x19]
	lea	rdi, [rdi]
	sub	eax, 0x30
	mov	dword ptr [rbp - 0x4b4], eax
.label_1452:
	nop	
	mov	eax, dword ptr [rbp - 0x4b4]
	nop	
	xor	ecx, ecx
	mov	dl, cl
	movsxd	rsi, eax
	nop	
	mov	rdi, qword ptr [rbp - 0x4b0]
	add	rdi, rsi
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x38], rdi
	test	dl, 1
	jne	.label_1170
	lea	rdi, [rdi]
	jmp	.label_1188
.label_1258:
	nop	
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	lea	rsi, [rsi]
	jne	.label_1472
	jmp	.label_1476
.label_1472:
	lea	rsi, [rsi]
	mov	al, 1
	lea	rdi, [rdi]
	test	al, 1
	jne	.label_1477
	jmp	.label_1484
.label_1477:
	mov	rbp, rbp
	cmp	dword ptr [rbp - 0x2c], 0
	jge	.label_1486
	mov	rbp, rbp
	mov	eax, 0x30
	movzx	ecx, byte ptr [rbp - 0x19]
	mov	rbp, rbp
	sub	eax, ecx
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x4b8], eax
	jmp	.label_1459
.label_1486:
	movzx	eax, byte ptr [rbp - 0x19]
	nop	
	sub	eax, 0x30
	mov	dword ptr [rbp - 0x4b8], eax
.label_1459:
	mov	eax, dword ptr [rbp - 0x4b8]
	lea	rsi, [rsi]
	movsxd	rcx, eax
	lea	rdi, [rdi]
	cmp	rcx, 0
	lea	rdi, [rdi]
	jge	.label_1501
	nop	
	mov	rax, qword ptr [rbp - 0x38]
	nop	
	cmp	dword ptr [rbp - 0x2c], 0
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x4c0], rax
	lea	rdi, [rdi]
	jge	.label_1572
	mov	eax, 0x30
	lea	rdi, [rdi]
	movzx	ecx, byte ptr [rbp - 0x19]
	sub	eax, ecx
	nop	
	mov	dword ptr [rbp - 0x4c4], eax
	jmp	.label_1516
.label_1572:
	mov	rbp, rbp
	movzx	eax, byte ptr [rbp - 0x19]
	mov	rsp, rsp
	sub	eax, 0x30
	nop	
	mov	dword ptr [rbp - 0x4c4], eax
.label_1516:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x4c4]
	mov	rbp, rbp
	movabs	rcx, 0x8000000000000000
	lea	rdi, [rdi]
	movsxd	rdx, eax
	nop	
	sub	rcx, rdx
	nop	
	mov	rdx, qword ptr [rbp - 0x4c0]
	lea	rsi, [rsi]
	cmp	rdx, rcx
	jl	.label_1180
	mov	rbp, rbp
	jmp	.label_1196
.label_1501:
	nop	
	cmp	dword ptr [rbp - 0x2c], 0
	mov	rbp, rbp
	jge	.label_1542
	nop	
	mov	eax, 0x30
	movzx	ecx, byte ptr [rbp - 0x19]
	lea	rsi, [rsi]
	sub	eax, ecx
	mov	dword ptr [rbp - 0x4c8], eax
	mov	rsp, rsp
	jmp	.label_1546
.label_1542:
	movzx	eax, byte ptr [rbp - 0x19]
	mov	rsp, rsp
	sub	eax, 0x30
	mov	dword ptr [rbp - 0x4c8], eax
.label_1546:
	mov	eax, dword ptr [rbp - 0x4c8]
	movabs	rcx, 0x7fffffffffffffff
	mov	rsp, rsp
	movsxd	rdx, eax
	sub	rcx, rdx
	cmp	rcx, qword ptr [rbp - 0x38]
	jl	.label_1180
	jmp	.label_1196
.label_1484:
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0x38], 0
	jge	.label_1567
	mov	rsp, rsp
	cmp	dword ptr [rbp - 0x2c], 0
	lea	rdi, [rdi]
	jge	.label_1570
	mov	eax, 0x30
	movzx	ecx, byte ptr [rbp - 0x19]
	sub	eax, ecx
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x4cc], eax
	mov	rsp, rsp
	jmp	.label_1454
.label_1570:
	movzx	eax, byte ptr [rbp - 0x19]
	lea	rdi, [rdi]
	sub	eax, 0x30
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x4cc], eax
.label_1454:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x4cc]
	movsxd	rcx, eax
	mov	rdx, qword ptr [rbp - 0x38]
	cmp	dword ptr [rbp - 0x2c], 0
	mov	qword ptr [rbp - 0x4d8], rcx
	mov	qword ptr [rbp - 0x4e0], rdx
	jge	.label_1586
	mov	eax, 0x30
	lea	rdi, [rdi]
	movzx	ecx, byte ptr [rbp - 0x19]
	sub	eax, ecx
	nop	
	mov	dword ptr [rbp - 0x4e4], eax
	mov	rbp, rbp
	jmp	.label_1585
.label_1586:
	lea	rsi, [rsi]
	movzx	eax, byte ptr [rbp - 0x19]
	mov	rsp, rsp
	sub	eax, 0x30
	mov	dword ptr [rbp - 0x4e4], eax
.label_1585:
	mov	eax, dword ptr [rbp - 0x4e4]
	movsxd	rcx, eax
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x4e0]
	mov	rbp, rbp
	add	rdx, rcx
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x4d8]
	cmp	rcx, rdx
	mov	rsp, rsp
	jle	.label_1180
	nop	
	jmp	.label_1196
.label_1567:
	mov	rbp, rbp
	cmp	dword ptr [rbp - 0x2c], 0
	nop	
	jge	.label_1620
	mov	rsp, rsp
	mov	eax, 0x30
	lea	rdi, [rdi]
	movzx	ecx, byte ptr [rbp - 0x19]
	sub	eax, ecx
	mov	dword ptr [rbp - 0x4e8], eax
	jmp	.label_1626
.label_1620:
	nop	
	movzx	eax, byte ptr [rbp - 0x19]
	sub	eax, 0x30
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x4e8], eax
.label_1626:
	nop	
	mov	eax, dword ptr [rbp - 0x4e8]
	movsxd	rcx, eax
	nop	
	cmp	rcx, 0
	jge	.label_1636
	mov	rax, qword ptr [rbp - 0x38]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x38]
	mov	rsp, rsp
	cmp	dword ptr [rbp - 0x2c], 0
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x4f0], rax
	mov	qword ptr [rbp - 0x4f8], rcx
	lea	rdi, [rdi]
	jge	.label_1641
	nop	
	mov	eax, 0x30
	mov	rsp, rsp
	movzx	ecx, byte ptr [rbp - 0x19]
	sub	eax, ecx
	mov	dword ptr [rbp - 0x4fc], eax
	jmp	.label_1652
.label_1641:
	mov	rbp, rbp
	movzx	eax, byte ptr [rbp - 0x19]
	sub	eax, 0x30
	mov	dword ptr [rbp - 0x4fc], eax
.label_1652:
	mov	eax, dword ptr [rbp - 0x4fc]
	movsxd	rcx, eax
	mov	rdx, qword ptr [rbp - 0x4f8]
	add	rdx, rcx
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x4f0]
	lea	rdi, [rdi]
	cmp	rcx, rdx
	lea	rsi, [rsi]
	jle	.label_1180
	mov	rbp, rbp
	jmp	.label_1196
.label_1636:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x38]
	cmp	dword ptr [rbp - 0x2c], 0
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x508], rax
	lea	rdi, [rdi]
	jge	.label_1671
	mov	eax, 0x30
	mov	rsp, rsp
	movzx	ecx, byte ptr [rbp - 0x19]
	sub	eax, ecx
	mov	dword ptr [rbp - 0x50c], eax
	jmp	.label_1680
.label_1671:
	movzx	eax, byte ptr [rbp - 0x19]
	lea	rdi, [rdi]
	sub	eax, 0x30
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x50c], eax
.label_1680:
	mov	eax, dword ptr [rbp - 0x50c]
	lea	rsi, [rsi]
	movsxd	rcx, eax
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x508]
	add	rdx, rcx
	mov	rsp, rsp
	cmp	dword ptr [rbp - 0x2c], 0
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x518], rdx
	lea	rdi, [rdi]
	jge	.label_1662
	mov	rsp, rsp
	mov	eax, 0x30
	mov	rsp, rsp
	movzx	ecx, byte ptr [rbp - 0x19]
	sub	eax, ecx
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x51c], eax
	jmp	.label_1163
.label_1662:
	lea	rsi, [rsi]
	movzx	eax, byte ptr [rbp - 0x19]
	sub	eax, 0x30
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x51c], eax
.label_1163:
	mov	eax, dword ptr [rbp - 0x51c]
	movsxd	rcx, eax
	mov	rdx, qword ptr [rbp - 0x518]
	mov	rsp, rsp
	cmp	rdx, rcx
	jl	.label_1180
.label_1196:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x38]
	mov	rsp, rsp
	cmp	dword ptr [rbp - 0x2c], 0
	mov	qword ptr [rbp - 0x528], rax
	jge	.label_1192
	nop	
	mov	eax, 0x30
	nop	
	movzx	ecx, byte ptr [rbp - 0x19]
	lea	rdi, [rdi]
	sub	eax, ecx
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x52c], eax
	mov	rsp, rsp
	jmp	.label_1203
.label_1192:
	nop	
	movzx	eax, byte ptr [rbp - 0x19]
	nop	
	sub	eax, 0x30
	mov	dword ptr [rbp - 0x52c], eax
.label_1203:
	mov	eax, dword ptr [rbp - 0x52c]
	mov	rbp, rbp
	movabs	rcx, 0x8000000000000000
	nop	
	movsxd	rdx, eax
	mov	rsi, qword ptr [rbp - 0x528]
	add	rsi, rdx
	mov	rsp, rsp
	cmp	rsi, rcx
	mov	rsp, rsp
	jl	.label_1180
	mov	rax, qword ptr [rbp - 0x38]
	nop	
	cmp	dword ptr [rbp - 0x2c], 0
	mov	qword ptr [rbp - 0x538], rax
	jge	.label_1226
	mov	eax, 0x30
	movzx	ecx, byte ptr [rbp - 0x19]
	lea	rsi, [rsi]
	sub	eax, ecx
	mov	dword ptr [rbp - 0x53c], eax
	mov	rbp, rbp
	jmp	.label_1233
.label_1226:
	mov	rsp, rsp
	movzx	eax, byte ptr [rbp - 0x19]
	sub	eax, 0x30
	mov	dword ptr [rbp - 0x53c], eax
.label_1233:
	mov	eax, dword ptr [rbp - 0x53c]
	movabs	rcx, 0x7fffffffffffffff
	movsxd	rdx, eax
	mov	rsi, qword ptr [rbp - 0x538]
	lea	rdi, [rdi]
	add	rsi, rdx
	lea	rdi, [rdi]
	cmp	rcx, rsi
	jge	.label_1243
.label_1180:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x38]
	cmp	dword ptr [rbp - 0x2c], 0
	mov	qword ptr [rbp - 0x548], rax
	mov	rbp, rbp
	jge	.label_1393
	lea	rsi, [rsi]
	mov	eax, 0x30
	nop	
	movzx	ecx, byte ptr [rbp - 0x19]
	lea	rdi, [rdi]
	sub	eax, ecx
	mov	dword ptr [rbp - 0x54c], eax
	jmp	.label_1272
.label_1393:
	mov	rbp, rbp
	movzx	eax, byte ptr [rbp - 0x19]
	nop	
	sub	eax, 0x30
	mov	dword ptr [rbp - 0x54c], eax
.label_1272:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x54c]
	lea	rsi, [rsi]
	mov	cl, 1
	movsxd	rdx, eax
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x548]
	mov	rsp, rsp
	add	rsi, rdx
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x38], rsi
	lea	rdi, [rdi]
	test	cl, 1
	lea	rdi, [rdi]
	jne	.label_1170
	jmp	.label_1188
.label_1243:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x38]
	cmp	dword ptr [rbp - 0x2c], 0
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x558], rax
	mov	rsp, rsp
	jge	.label_1301
	mov	eax, 0x30
	nop	
	movzx	ecx, byte ptr [rbp - 0x19]
	nop	
	sub	eax, ecx
	mov	dword ptr [rbp - 0x55c], eax
	jmp	.label_1308
.label_1301:
	movzx	eax, byte ptr [rbp - 0x19]
	sub	eax, 0x30
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x55c], eax
.label_1308:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x55c]
	xor	ecx, ecx
	mov	dl, cl
	movsxd	rsi, eax
	nop	
	mov	rdi, qword ptr [rbp - 0x558]
	mov	rsp, rsp
	add	rdi, rsi
	nop	
	mov	qword ptr [rbp - 0x38], rdi
	lea	rdi, [rdi]
	test	dl, 1
	jne	.label_1170
	nop	
	jmp	.label_1188
.label_1476:
	lea	rdi, [rdi]
	mov	al, 1
	lea	rsi, [rsi]
	test	al, 1
	jne	.label_1330
	nop	
	jmp	.label_1336
.label_1330:
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x2c], 0
	jge	.label_1338
	mov	rbp, rbp
	mov	eax, 0x30
	movzx	ecx, byte ptr [rbp - 0x19]
	sub	eax, ecx
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x560], eax
	lea	rsi, [rsi]
	jmp	.label_1340
.label_1338:
	lea	rsi, [rsi]
	movzx	eax, byte ptr [rbp - 0x19]
	sub	eax, 0x30
	mov	dword ptr [rbp - 0x560], eax
.label_1340:
	mov	eax, dword ptr [rbp - 0x560]
	cmp	eax, 0
	jge	.label_1685
	nop	
	mov	rax, qword ptr [rbp - 0x38]
	lea	rsi, [rsi]
	cmp	dword ptr [rbp - 0x2c], 0
	mov	qword ptr [rbp - 0x568], rax
	mov	rbp, rbp
	jge	.label_1352
	mov	rsp, rsp
	mov	eax, 0x30
	movzx	ecx, byte ptr [rbp - 0x19]
	nop	
	sub	eax, ecx
	mov	dword ptr [rbp - 0x56c], eax
	lea	rsi, [rsi]
	jmp	.label_1363
.label_1352:
	movzx	eax, byte ptr [rbp - 0x19]
	sub	eax, 0x30
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x56c], eax
.label_1363:
	mov	eax, dword ptr [rbp - 0x56c]
	movabs	rcx, 0x8000000000000000
	mov	rbp, rbp
	movsxd	rdx, eax
	sub	rcx, rdx
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x568]
	mov	rsp, rsp
	cmp	rdx, rcx
	nop	
	jl	.label_1267
	lea	rsi, [rsi]
	jmp	.label_1412
.label_1685:
	mov	rsp, rsp
	cmp	dword ptr [rbp - 0x2c], 0
	lea	rsi, [rsi]
	jge	.label_1435
	mov	eax, 0x30
	mov	rbp, rbp
	movzx	ecx, byte ptr [rbp - 0x19]
	sub	eax, ecx
	nop	
	mov	dword ptr [rbp - 0x570], eax
	lea	rsi, [rsi]
	jmp	.label_1557
.label_1435:
	mov	rbp, rbp
	movzx	eax, byte ptr [rbp - 0x19]
	lea	rsi, [rsi]
	sub	eax, 0x30
	mov	dword ptr [rbp - 0x570], eax
.label_1557:
	mov	eax, dword ptr [rbp - 0x570]
	nop	
	movabs	rcx, 0x7fffffffffffffff
	movsxd	rdx, eax
	sub	rcx, rdx
	cmp	rcx, qword ptr [rbp - 0x38]
	jl	.label_1267
	jmp	.label_1412
.label_1336:
	cmp	qword ptr [rbp - 0x38], 0
	jge	.label_1547
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x2c], 0
	jge	.label_1417
	mov	eax, 0x30
	mov	rsp, rsp
	movzx	ecx, byte ptr [rbp - 0x19]
	lea	rsi, [rsi]
	sub	eax, ecx
	mov	dword ptr [rbp - 0x574], eax
	lea	rsi, [rsi]
	jmp	.label_1422
.label_1417:
	nop	
	movzx	eax, byte ptr [rbp - 0x19]
	mov	rbp, rbp
	sub	eax, 0x30
	mov	dword ptr [rbp - 0x574], eax
.label_1422:
	mov	eax, dword ptr [rbp - 0x574]
	lea	rsi, [rsi]
	movsxd	rcx, eax
	mov	rdx, qword ptr [rbp - 0x38]
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x2c], 0
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x580], rcx
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x588], rdx
	jge	.label_1437
	mov	eax, 0x30
	movzx	ecx, byte ptr [rbp - 0x19]
	sub	eax, ecx
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x58c], eax
	jmp	.label_1195
.label_1437:
	mov	rsp, rsp
	movzx	eax, byte ptr [rbp - 0x19]
	sub	eax, 0x30
	mov	dword ptr [rbp - 0x58c], eax
.label_1195:
	mov	eax, dword ptr [rbp - 0x58c]
	lea	rdi, [rdi]
	movsxd	rcx, eax
	mov	rdx, qword ptr [rbp - 0x588]
	add	rdx, rcx
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x580]
	cmp	rcx, rdx
	nop	
	jle	.label_1267
	jmp	.label_1412
.label_1547:
	mov	rsp, rsp
	cmp	dword ptr [rbp - 0x2c], 0
	mov	rsp, rsp
	jge	.label_1468
	mov	eax, 0x30
	lea	rsi, [rsi]
	movzx	ecx, byte ptr [rbp - 0x19]
	sub	eax, ecx
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x590], eax
	jmp	.label_1471
.label_1468:
	lea	rsi, [rsi]
	movzx	eax, byte ptr [rbp - 0x19]
	sub	eax, 0x30
	mov	dword ptr [rbp - 0x590], eax
.label_1471:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x590]
	cmp	eax, 0
	jge	.label_1485
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rbp - 0x38]
	mov	rsp, rsp
	cmp	dword ptr [rbp - 0x2c], 0
	nop	
	mov	qword ptr [rbp - 0x598], rax
	mov	qword ptr [rbp - 0x5a0], rcx
	mov	rbp, rbp
	jge	.label_1461
	lea	rsi, [rsi]
	mov	eax, 0x30
	movzx	ecx, byte ptr [rbp - 0x19]
	sub	eax, ecx
	mov	dword ptr [rbp - 0x5a4], eax
	nop	
	jmp	.label_1500
.label_1461:
	lea	rdi, [rdi]
	movzx	eax, byte ptr [rbp - 0x19]
	sub	eax, 0x30
	mov	dword ptr [rbp - 0x5a4], eax
.label_1500:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x5a4]
	movsxd	rcx, eax
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x5a0]
	add	rdx, rcx
	mov	rcx, qword ptr [rbp - 0x598]
	cmp	rcx, rdx
	jle	.label_1267
	mov	rbp, rbp
	jmp	.label_1412
.label_1485:
	mov	rax, qword ptr [rbp - 0x38]
	mov	rsp, rsp
	cmp	dword ptr [rbp - 0x2c], 0
	mov	qword ptr [rbp - 0x5b0], rax
	lea	rsi, [rsi]
	jge	.label_1527
	mov	rbp, rbp
	mov	eax, 0x30
	lea	rdi, [rdi]
	movzx	ecx, byte ptr [rbp - 0x19]
	sub	eax, ecx
	mov	dword ptr [rbp - 0x5b4], eax
	jmp	.label_1532
.label_1527:
	nop	
	movzx	eax, byte ptr [rbp - 0x19]
	sub	eax, 0x30
	mov	dword ptr [rbp - 0x5b4], eax
.label_1532:
	mov	eax, dword ptr [rbp - 0x5b4]
	nop	
	movsxd	rcx, eax
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x5b0]
	add	rdx, rcx
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x2c], 0
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x5c0], rdx
	jge	.label_1541
	mov	eax, 0x30
	lea	rsi, [rsi]
	movzx	ecx, byte ptr [rbp - 0x19]
	sub	eax, ecx
	mov	dword ptr [rbp - 0x5c4], eax
	mov	rsp, rsp
	jmp	.label_1316
.label_1541:
	movzx	eax, byte ptr [rbp - 0x19]
	lea	rsi, [rsi]
	sub	eax, 0x30
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x5c4], eax
.label_1316:
	mov	eax, dword ptr [rbp - 0x5c4]
	nop	
	movsxd	rcx, eax
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x5c0]
	cmp	rdx, rcx
	jl	.label_1267
.label_1412:
	mov	rax, qword ptr [rbp - 0x38]
	mov	rsp, rsp
	cmp	dword ptr [rbp - 0x2c], 0
	mov	qword ptr [rbp - 0x5d0], rax
	jge	.label_1573
	mov	eax, 0x30
	movzx	ecx, byte ptr [rbp - 0x19]
	nop	
	sub	eax, ecx
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x5d4], eax
	jmp	.label_1578
.label_1573:
	nop	
	movzx	eax, byte ptr [rbp - 0x19]
	nop	
	sub	eax, 0x30
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x5d4], eax
.label_1578:
	mov	eax, dword ptr [rbp - 0x5d4]
	lea	rdi, [rdi]
	movabs	rcx, 0x8000000000000000
	movsxd	rdx, eax
	mov	rsi, qword ptr [rbp - 0x5d0]
	lea	rdi, [rdi]
	add	rsi, rdx
	mov	rbp, rbp
	cmp	rsi, rcx
	lea	rsi, [rsi]
	jl	.label_1267
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x38]
	lea	rsi, [rsi]
	cmp	dword ptr [rbp - 0x2c], 0
	mov	qword ptr [rbp - 0x5e0], rax
	mov	rsp, rsp
	jge	.label_1600
	mov	rbp, rbp
	mov	eax, 0x30
	movzx	ecx, byte ptr [rbp - 0x19]
	sub	eax, ecx
	mov	dword ptr [rbp - 0x5e4], eax
	jmp	.label_1608
.label_1600:
	movzx	eax, byte ptr [rbp - 0x19]
	sub	eax, 0x30
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x5e4], eax
.label_1608:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x5e4]
	movabs	rcx, 0x7fffffffffffffff
	movsxd	rdx, eax
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x5e0]
	mov	rsp, rsp
	add	rsi, rdx
	cmp	rcx, rsi
	jge	.label_1616
.label_1267:
	mov	rax, qword ptr [rbp - 0x38]
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x2c], 0
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x5f0], rax
	jge	.label_1175
	mov	rsp, rsp
	mov	eax, 0x30
	lea	rsi, [rsi]
	movzx	ecx, byte ptr [rbp - 0x19]
	sub	eax, ecx
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x5f4], eax
	lea	rdi, [rdi]
	jmp	.label_1637
.label_1175:
	movzx	eax, byte ptr [rbp - 0x19]
	lea	rdi, [rdi]
	sub	eax, 0x30
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x5f4], eax
.label_1637:
	mov	eax, dword ptr [rbp - 0x5f4]
	nop	
	mov	cl, 1
	movsxd	rdx, eax
	mov	rsi, qword ptr [rbp - 0x5f0]
	add	rsi, rdx
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x38], rsi
	nop	
	test	cl, 1
	mov	rsp, rsp
	jne	.label_1170
	mov	rsp, rsp
	jmp	.label_1188
.label_1616:
	mov	rax, qword ptr [rbp - 0x38]
	cmp	dword ptr [rbp - 0x2c], 0
	mov	qword ptr [rbp - 0x600], rax
	mov	rbp, rbp
	jge	.label_1661
	nop	
	mov	eax, 0x30
	lea	rsi, [rsi]
	movzx	ecx, byte ptr [rbp - 0x19]
	lea	rsi, [rsi]
	sub	eax, ecx
	mov	dword ptr [rbp - 0x604], eax
	jmp	.label_1510
.label_1661:
	movzx	eax, byte ptr [rbp - 0x19]
	nop	
	sub	eax, 0x30
	nop	
	mov	dword ptr [rbp - 0x604], eax
.label_1510:
	mov	eax, dword ptr [rbp - 0x604]
	mov	rsp, rsp
	xor	ecx, ecx
	mov	dl, cl
	nop	
	movsxd	rsi, eax
	mov	rdi, qword ptr [rbp - 0x600]
	add	rdi, rsi
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x38], rdi
	test	dl, 1
	jne	.label_1170
	nop	
	jmp	.label_1188
.label_1170:
	mov	rsp, rsp
	mov	dword ptr [rbp - 4], 0x3f
	jmp	.label_1307
.label_1188:
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, rax
	mov	rsp, rsp
	add	rcx, 1
	mov	qword ptr [rbp - 0x28], rcx
	mov	dl, byte ptr [rax + 1]
	mov	byte ptr [rbp - 0x19], dl
	movzx	edi, byte ptr [rbp - 0x19]
	lea	rdi, [rdi]
	call	c_isdigit
	test	al, 1
	lea	rsi, [rsi]
	jne	.label_1159
	movzx	eax, byte ptr [rbp - 0x19]
	mov	rbp, rbp
	cmp	eax, 0x2e
	je	.label_1213
	movzx	eax, byte ptr [rbp - 0x19]
	cmp	eax, 0x2c
	jne	.label_1184
.label_1213:
	mov	rax, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	movsx	edi, byte ptr [rax + 1]
	lea	rsi, [rsi]
	call	c_isdigit
	mov	rsp, rsp
	test	al, 1
	jne	.label_1179
	jmp	.label_1184
.label_1179:
	mov	rdi, qword ptr [rbp - 0x38]
	lea	rsi, [rsi]
	call	time_overflow
	mov	rbp, rbp
	test	al, 1
	jne	.label_1342
	jmp	.label_1204
.label_1342:
	mov	dword ptr [rbp - 4], 0x3f
	nop	
	jmp	.label_1307
.label_1204:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x38]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x40], rax
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, 1
	mov	qword ptr [rbp - 0x28], rax
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, rax
	add	rcx, 1
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x28], rcx
	lea	rdi, [rdi]
	movsx	edx, byte ptr [rax]
	mov	rbp, rbp
	sub	edx, 0x30
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x44], edx
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x48], 2
.label_1644:
	cmp	dword ptr [rbp - 0x48], 9
	lea	rdi, [rdi]
	jg	.label_1223
	mov	rsp, rsp
	imul	eax, dword ptr [rbp - 0x44], 0xa
	mov	dword ptr [rbp - 0x44], eax
	nop	
	mov	rcx, qword ptr [rbp - 0x28]
	movsx	edi, byte ptr [rcx]
	call	c_isdigit
	test	al, 1
	mov	rsp, rsp
	jne	.label_1230
	nop	
	jmp	.label_1235
.label_1230:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, rax
	lea	rdi, [rdi]
	add	rcx, 1
	mov	qword ptr [rbp - 0x28], rcx
	mov	rbp, rbp
	movsx	edx, byte ptr [rax]
	sub	edx, 0x30
	mov	rbp, rbp
	add	edx, dword ptr [rbp - 0x44]
	mov	dword ptr [rbp - 0x44], edx
.label_1235:
	jmp	.label_1246
.label_1246:
	mov	eax, dword ptr [rbp - 0x48]
	mov	rbp, rbp
	add	eax, 1
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x48], eax
	jmp	.label_1644
.label_1223:
	mov	rsp, rsp
	cmp	dword ptr [rbp - 0x2c], 0
	lea	rdi, [rdi]
	jge	.label_1254
	jmp	.label_1285
.label_1285:
	mov	rax, qword ptr [rbp - 0x28]
	movsx	edi, byte ptr [rax]
	call	c_isdigit
	test	al, 1
	jne	.label_1185
	jmp	.label_1253
.label_1185:
	mov	rax, qword ptr [rbp - 0x28]
	nop	
	movsx	ecx, byte ptr [rax]
	mov	rbp, rbp
	cmp	ecx, 0x30
	nop	
	je	.label_1655
	mov	eax, dword ptr [rbp - 0x44]
	mov	rsp, rsp
	add	eax, 1
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x44], eax
	jmp	.label_1253
.label_1655:
	jmp	.label_1284
.label_1284:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, 1
	mov	qword ptr [rbp - 0x28], rax
	jmp	.label_1285
.label_1253:
	jmp	.label_1254
.label_1254:
	jmp	.label_1291
.label_1291:
	mov	rax, qword ptr [rbp - 0x28]
	movsx	edi, byte ptr [rax]
	nop	
	call	c_isdigit
	test	al, 1
	mov	rsp, rsp
	jne	.label_1295
	lea	rsi, [rsi]
	jmp	.label_1373
.label_1295:
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, 1
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x28], rax
	mov	rbp, rbp
	jmp	.label_1291
.label_1373:
	cmp	dword ptr [rbp - 0x2c], 0
	mov	rsp, rsp
	jge	.label_1269
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x44], 0
	je	.label_1269
	lea	rsi, [rsi]
	movabs	rax, 0x8000000000000000
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0x40], rax
	mov	rbp, rbp
	jne	.label_1311
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 4], 0x3f
	nop	
	jmp	.label_1307
.label_1311:
	mov	eax, 0x3b9aca00
	mov	rcx, qword ptr [rbp - 0x40]
	nop	
	add	rcx, -1
	mov	qword ptr [rbp - 0x40], rcx
	lea	rsi, [rsi]
	sub	eax, dword ptr [rbp - 0x44]
	mov	dword ptr [rbp - 0x44], eax
.label_1269:
	mov	eax, 0x115
	mov	rbp, rbp
	mov	ecx, 0x114
	mov	rdx, qword ptr [rbp - 0x40]
	mov	rsi, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	qword ptr [rsi], rdx
	lea	rsi, [rsi]
	movsxd	rdx, dword ptr [rbp - 0x44]
	mov	rsi, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	qword ptr [rsi + 8], rdx
	mov	rdx, qword ptr [rbp - 0x28]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	qword ptr [rsi], rdx
	cmp	dword ptr [rbp - 0x2c], 0
	lea	rsi, [rsi]
	cmovne	eax, ecx
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 4], eax
	jmp	.label_1307
.label_1184:
	mov	eax, 0x113
	lea	rsi, [rsi]
	mov	ecx, 0x112
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x2c], 0
	setl	dl
	mov	rsi, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	and	dl, 1
	nop	
	mov	byte ptr [rsi], dl
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x38]
	mov	rdi, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	qword ptr [rdi + 8], rsi
	mov	rsi, qword ptr [rbp - 0x28]
	mov	rdi, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rdi]
	lea	rsi, [rsi]
	sub	rsi, rdi
	mov	rdi, qword ptr [rbp - 0x10]
	mov	qword ptr [rdi + 0x10], rsi
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x18]
	mov	qword ptr [rdi], rsi
	cmp	dword ptr [rbp - 0x2c], 0
	cmovne	eax, ecx
	mov	dword ptr [rbp - 4], eax
	nop	
	jmp	.label_1307
.label_1450:
	lea	rsi, [rsi]
	movzx	edi, byte ptr [rbp - 0x19]
	mov	rbp, rbp
	call	c_isalpha
	lea	rdi, [rdi]
	test	al, 1
	mov	rsp, rsp
	jne	.label_1382
	jmp	.label_1385
.label_1382:
	lea	rax, [rbp - 0x60]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x68], rax
.label_1434:
	lea	rsi, [rsi]
	lea	rax, [rbp - 0x60]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x68]
	add	rax, 0x14
	nop	
	add	rax, -1
	mov	rbp, rbp
	cmp	rcx, rax
	mov	rsp, rsp
	jae	.label_1389
	mov	al, byte ptr [rbp - 0x19]
	mov	rcx, qword ptr [rbp - 0x68]
	mov	rdx, rcx
	add	rdx, 1
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x68], rdx
	mov	byte ptr [rcx], al
.label_1389:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	mov	rcx, qword ptr [rax]
	mov	rdx, rcx
	mov	rsp, rsp
	add	rdx, 1
	mov	rbp, rbp
	mov	qword ptr [rax], rdx
	mov	sil, byte ptr [rcx + 1]
	nop	
	mov	byte ptr [rbp - 0x19], sil
	movzx	edi, byte ptr [rbp - 0x19]
	call	c_isalpha
	mov	cl, 1
	test	al, 1
	mov	byte ptr [rbp - 0x605], cl
	jne	.label_1421
	nop	
	movzx	eax, byte ptr [rbp - 0x19]
	lea	rsi, [rsi]
	cmp	eax, 0x2e
	lea	rsi, [rsi]
	sete	cl
	mov	byte ptr [rbp - 0x605], cl
.label_1421:
	mov	al, byte ptr [rbp - 0x605]
	test	al, 1
	jne	.label_1434
	lea	rsi, [rsi]
	lea	rsi, [rbp - 0x60]
	mov	rax, qword ptr [rbp - 0x68]
	mov	byte ptr [rax], 0
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	call	lookup_word
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x70], rax
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0x70], 0
	jne	.label_1442
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	test	byte ptr [rax + 0xd9], 1
	lea	rdi, [rdi]
	je	.label_1448
	mov	rbp, rbp
	movabs	rdi, OFFSET FLAT:.str.98
	call	gettext
	mov	rbp, rbp
	lea	rsi, [rbp - 0x60]
	mov	rdi, rax
	mov	rsp, rsp
	mov	al, 0
	call	dbg_printf
.label_1448:
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 4], 0x3f
	nop	
	jmp	.label_1307
.label_1442:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x70]
	mov	rbp, rbp
	movsxd	rax, dword ptr [rax + 0xc]
	nop	
	mov	rcx, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	qword ptr [rcx], rax
	mov	rax, qword ptr [rbp - 0x70]
	mov	edx, dword ptr [rax + 8]
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 4], edx
	jmp	.label_1307
.label_1385:
	movzx	eax, byte ptr [rbp - 0x19]
	cmp	eax, 0x28
	je	.label_1397
	nop	
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rax]
	mov	rdx, rcx
	nop	
	add	rdx, 1
	mov	qword ptr [rax], rdx
	movsx	edi, byte ptr [rcx]
	call	to_uchar
	movzx	edi, al
	mov	rbp, rbp
	mov	dword ptr [rbp - 4], edi
	lea	rsi, [rsi]
	jmp	.label_1307
.label_1397:
	mov	qword ptr [rbp - 0x78], 0
.label_1534:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	mov	rcx, qword ptr [rax]
	mov	rdx, rcx
	add	rdx, 1
	mov	qword ptr [rax], rdx
	lea	rdi, [rdi]
	mov	sil, byte ptr [rcx]
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x19], sil
	movzx	edi, byte ptr [rbp - 0x19]
	cmp	edi, 0
	nop	
	jne	.label_1493
	movzx	eax, byte ptr [rbp - 0x19]
	mov	dword ptr [rbp - 4], eax
	lea	rsi, [rsi]
	jmp	.label_1307
.label_1493:
	movzx	eax, byte ptr [rbp - 0x19]
	cmp	eax, 0x28
	mov	rbp, rbp
	jne	.label_1511
	mov	rax, qword ptr [rbp - 0x78]
	add	rax, 1
	mov	qword ptr [rbp - 0x78], rax
	lea	rdi, [rdi]
	jmp	.label_1518
.label_1511:
	nop	
	movzx	eax, byte ptr [rbp - 0x19]
	cmp	eax, 0x29
	lea	rsi, [rsi]
	jne	.label_1523
	nop	
	mov	rax, qword ptr [rbp - 0x78]
	mov	rsp, rsp
	add	rax, -1
	mov	qword ptr [rbp - 0x78], rax
.label_1523:
	mov	rbp, rbp
	jmp	.label_1518
.label_1518:
	jmp	.label_1533
.label_1533:
	cmp	qword ptr [rbp - 0x78], 0
	mov	rbp, rbp
	jne	.label_1534
	mov	rsp, rsp
	jmp	.label_1210
.label_1307:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x610
	lea	rdi, [rdi]
	pop	rbp
	mov	rbp, rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x418590

	.globl debug_print_current_time
	.type debug_print_current_time, @function
debug_print_current_time:
	lea	rsi, [rsi]
	push	rbp
	mov	rbp, rsp
	lea	rsi, [rsi]
	sub	rsp, 0x120
	mov	qword ptr [rbp - 8], rdi
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x10], rsi
	mov	byte ptr [rbp - 0x11], 0
	mov	rsi, qword ptr [rbp - 0x10]
	nop	
	test	byte ptr [rsi + 0xd9], 1
	jne	.label_1697
	jmp	.label_1702
.label_1697:
	lea	rsi, [rsi]
	movabs	rdi, OFFSET FLAT:.str.77
	nop	
	call	gettext
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 8]
	mov	rbp, rbp
	mov	rdi, rax
	mov	al, 0
	nop	
	call	dbg_printf
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x10]
	cmp	qword ptr [rsi + 0xa8], 0
	mov	rbp, rbp
	je	.label_1700
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	test	byte ptr [rax + 0xda], 1
	nop	
	jne	.label_1700
	mov	rsp, rsp
	movabs	rsi, OFFSET FLAT:.str.78
	lea	rdi, [rdi]
	mov	rdi,  qword ptr [word ptr [stderr]]
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	rdx, qword ptr [rax + 0x28]
	mov	rax, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	rcx, qword ptr [rax + 0x38]
	mov	rax, qword ptr [rbp - 0x10]
	mov	r8, qword ptr [rax + 0x40]
	mov	al, 0
	call	fprintf
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	byte ptr [rcx + 0xda], 1
	mov	byte ptr [rbp - 0x11], 1
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0xbc], eax
.label_1700:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	cl, byte ptr [rax + 0xd8]
	lea	rdi, [rdi]
	and	cl, 1
	movzx	edx, cl
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x10]
	mov	cl, byte ptr [rax + 0xdf]
	lea	rdi, [rdi]
	and	cl, 1
	mov	rsp, rsp
	movzx	esi, cl
	cmp	edx, esi
	je	.label_1709
	mov	rsp, rsp
	test	byte ptr [rbp - 0x11], 1
	lea	rsi, [rsi]
	je	.label_1708
	mov	edi, 0x20
	mov	rsi,  qword ptr [word ptr [stderr]]
	call	fputc
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0xc0], eax
.label_1708:
	lea	rsi, [rsi]
	movabs	rdi, OFFSET FLAT:.str.79
	lea	rdi, [rdi]
	mov	rax,  qword ptr [word ptr [stderr]]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0xc8], rax
	call	gettext
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rdi + 0x28]
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0xc8]
	mov	rsi, rax
	mov	al, 0
	mov	rbp, rbp
	call	fprintf
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x10]
	mov	cl, byte ptr [rdx + 0xd8]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	and	cl, 1
	mov	byte ptr [rdx + 0xdf], cl
	mov	byte ptr [rbp - 0x11], 1
	mov	dword ptr [rbp - 0xcc], eax
.label_1709:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x10]
	cmp	qword ptr [rax + 0xc8], 0
	je	.label_1703
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x10]
	test	byte ptr [rax + 0xdd], 1
	jne	.label_1703
	movabs	rax, OFFSET FLAT:.str.80
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx + 0x58]
	mov	qword ptr [rbp - 0x20], rcx
	lea	rsi, [rsi]
	mov	rdi,  qword ptr [word ptr [stderr]]
	mov	rbp, rbp
	mov	dl, byte ptr [rbp - 0x11]
	xor	dl, 0xff
	mov	rbp, rbp
	and	dl, 1
	movzx	esi, dl
	movsxd	rcx, esi
	lea	rdi, [rdi]
	add	rax, rcx
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	rdx, qword ptr [rcx + 0x48]
	mov	rcx, qword ptr [rbp - 0x10]
	nop	
	mov	rcx, qword ptr [rcx + 0x50]
	mov	r8, qword ptr [rbp - 0x20]
	mov	rsi, rax
	mov	rsp, rsp
	mov	al, 0
	call	fprintf
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x10]
	cmp	qword ptr [rcx + 0x60], 0
	mov	dword ptr [rbp - 0xd0], eax
	lea	rdi, [rdi]
	je	.label_1705
	movabs	rsi, OFFSET FLAT:.str.81
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x60]
	mov	ecx, eax
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x24], ecx
	mov	rdi,  qword ptr [word ptr [stderr]]
	mov	edx, dword ptr [rbp - 0x24]
	lea	rsi, [rsi]
	mov	al, 0
	lea	rsi, [rsi]
	call	fprintf
	mov	rbp, rbp
	mov	dword ptr [rbp - 0xd4], eax
.label_1705:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	cmp	dword ptr [rax + 0x1c], 1
	nop	
	jne	.label_1701
	mov	rbp, rbp
	movabs	rdi, OFFSET FLAT:.str.41_0
	mov	rsi,  qword ptr [word ptr [stderr]]
	call	fputs
	mov	dword ptr [rbp - 0xd8], eax
.label_1701:
	mov	rax, qword ptr [rbp - 0x10]
	mov	byte ptr [rax + 0xdd], 1
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x11], 1
.label_1703:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x10]
	cmp	qword ptr [rax + 0xb0], 0
	je	.label_1696
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x10]
	test	byte ptr [rax + 0xdb], 1
	lea	rdi, [rdi]
	jne	.label_1696
	test	byte ptr [rbp - 0x11], 1
	nop	
	je	.label_1698
	mov	rsp, rsp
	mov	edi, 0x20
	lea	rsi, [rsi]
	mov	rsi,  qword ptr [word ptr [stderr]]
	call	fputc
	mov	dword ptr [rbp - 0xdc], eax
.label_1698:
	movabs	rdi, OFFSET FLAT:.str.82
	mov	rax,  qword ptr [word ptr [stderr]]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0xe8], rax
	call	gettext
	mov	rbp, rbp
	mov	edx, 0x64
	mov	rbp, rbp
	lea	rsi, [rbp - 0x90]
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0xf0], rax
	mov	rsp, rsp
	call	str_days
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rsi + 8]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	r8d, dword ptr [rsi + 0x10]
	mov	rdi, qword ptr [rbp - 0xe8]
	mov	rsi, qword ptr [rbp - 0xf0]
	mov	rdx, rax
	mov	rsp, rsp
	mov	al, 0
	lea	rsi, [rsi]
	call	fprintf
	nop	
	mov	rcx, qword ptr [rbp - 0x10]
	mov	byte ptr [rcx + 0xdb], 1
	mov	byte ptr [rbp - 0x11], 1
	mov	dword ptr [rbp - 0xf4], eax
.label_1696:
	mov	rax, qword ptr [rbp - 0x10]
	cmp	qword ptr [rax + 0xb8], 0
	nop	
	je	.label_1706
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	test	byte ptr [rax + 0xdc], 1
	mov	rsp, rsp
	jne	.label_1706
	lea	rsi, [rsi]
	movabs	rax, OFFSET FLAT:.str_0
	mov	rsp, rsp
	movabs	rcx, OFFSET FLAT:.str.84
	lea	rsi, [rsi]
	movabs	rdx, OFFSET FLAT:.str.83
	mov	rbp, rbp
	mov	rdi,  qword ptr [word ptr [stderr]]
	mov	sil, byte ptr [rbp - 0x11]
	lea	rsi, [rsi]
	xor	sil, 0xff
	and	sil, 1
	movzx	r8d, sil
	lea	rsi, [rsi]
	movsxd	r9, r8d
	add	rdx, r9
	mov	r9, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	r8d, dword ptr [r9 + 0x14]
	mov	r9, qword ptr [rbp - 0x10]
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
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	byte ptr [rcx + 0xdc], 1
	mov	byte ptr [rbp - 0x11], 1
	mov	dword ptr [rbp - 0xf8], eax
.label_1706:
	mov	rax, qword ptr [rbp - 0x10]
	cmp	qword ptr [rax + 0xd0], 0
	lea	rsi, [rsi]
	je	.label_1699
	mov	rax, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	test	byte ptr [rax + 0xde], 1
	mov	rbp, rbp
	jne	.label_1699
	lea	rsi, [rbp - 0xb0]
	lea	rdi, [rdi]
	movabs	rax, OFFSET FLAT:.str.85
	mov	rdi,  qword ptr [word ptr [stderr]]
	mov	rbp, rbp
	mov	cl, byte ptr [rbp - 0x11]
	xor	cl, 0xff
	and	cl, 1
	mov	rbp, rbp
	movzx	edx, cl
	movsxd	r8, edx
	mov	rbp, rbp
	add	rax, r8
	lea	rsi, [rsi]
	mov	r8, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	edx, dword ptr [r8 + 0x18]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x100], rdi
	lea	rdi, [rdi]
	mov	edi, edx
	nop	
	mov	qword ptr [rbp - 0x108], rax
	call	time_zone_str
	mov	rdi, qword ptr [rbp - 0x100]
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x108]
	lea	rsi, [rsi]
	mov	rdx, rax
	mov	al, 0
	call	fprintf
	mov	rdx, qword ptr [rbp - 0x10]
	mov	byte ptr [rdx + 0xde], 1
	mov	byte ptr [rbp - 0x11], 1
	mov	dword ptr [rbp - 0x10c], eax
.label_1699:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	test	byte ptr [rax + 0xa0], 1
	lea	rsi, [rsi]
	je	.label_1707
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x58]
	mov	qword ptr [rbp - 0xb8], rax
	nop	
	test	byte ptr [rbp - 0x11], 1
	je	.label_1704
	nop	
	mov	edi, 0x20
	mov	rsp, rsp
	mov	rsi,  qword ptr [word ptr [stderr]]
	call	fputc
	mov	dword ptr [rbp - 0x110], eax
.label_1704:
	nop	
	movabs	rdi, OFFSET FLAT:.str.86
	mov	rsp, rsp
	mov	rax,  qword ptr [word ptr [stderr]]
	mov	qword ptr [rbp - 0x118], rax
	call	gettext
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0xb8]
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x118]
	mov	rsi, rax
	lea	rsi, [rsi]
	mov	al, 0
	call	fprintf
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x11c], eax
.label_1707:
	nop	
	mov	edi, 0xa
	mov	rsi,  qword ptr [word ptr [stderr]]
	mov	rsp, rsp
	call	fputc
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x120], eax
.label_1702:
	add	rsp, 0x120
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x418bb0

	.globl debug_print_relative_time
	.type debug_print_relative_time, @function
debug_print_relative_time:
	nop	
	push	rbp
	mov	rsp, rsp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 8], rdi
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x10], rsi
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x11], 0
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	test	byte ptr [rsi + 0xd9], 1
	nop	
	jne	.label_1712
	jmp	.label_1711
.label_1712:
	mov	rbp, rbp
	movabs	rdi, OFFSET FLAT:.str.77
	lea	rsi, [rsi]
	call	gettext
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 8]
	mov	rdi, rax
	nop	
	mov	al, 0
	lea	rsi, [rsi]
	call	dbg_printf
	mov	rsi, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	cmp	qword ptr [rsi + 0x68], 0
	mov	rbp, rbp
	jne	.label_1710
	mov	rax, qword ptr [rbp - 0x10]
	cmp	qword ptr [rax + 0x70], 0
	jne	.label_1710
	mov	rax, qword ptr [rbp - 0x10]
	cmp	qword ptr [rax + 0x78], 0
	lea	rsi, [rsi]
	jne	.label_1710
	mov	rax, qword ptr [rbp - 0x10]
	cmp	qword ptr [rax + 0x80], 0
	lea	rsi, [rsi]
	jne	.label_1710
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	cmp	qword ptr [rax + 0x88], 0
	mov	rbp, rbp
	jne	.label_1710
	nop	
	mov	rax, qword ptr [rbp - 0x10]
	cmp	qword ptr [rax + 0x90], 0
	lea	rsi, [rsi]
	jne	.label_1710
	mov	rax, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	cmp	dword ptr [rax + 0x98], 0
	mov	rbp, rbp
	jne	.label_1710
	movabs	rdi, OFFSET FLAT:.str.87
	call	gettext
	lea	rdi, [rdi]
	mov	rsi,  qword ptr [word ptr [stderr]]
	mov	rbp, rbp
	mov	rdi, rax
	call	fputs
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x18], eax
	mov	rsp, rsp
	jmp	.label_1711
.label_1710:
	mov	rbp, rbp
	movabs	rdx, OFFSET FLAT:.str.88
	mov	rbp, rbp
	mov	al, byte ptr [rbp - 0x11]
	nop	
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rcx + 0x68]
	and	al, 1
	movzx	edi, al
	call	print_rel_part
	lea	rdi, [rdi]
	movabs	rdx, OFFSET FLAT:.str.89
	mov	rsp, rsp
	and	al, 1
	mov	byte ptr [rbp - 0x11], al
	nop	
	mov	al, byte ptr [rbp - 0x11]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rcx + 0x70]
	lea	rdi, [rdi]
	and	al, 1
	mov	rsp, rsp
	movzx	edi, al
	call	print_rel_part
	movabs	rdx, OFFSET FLAT:.str.90
	lea	rdi, [rdi]
	and	al, 1
	mov	byte ptr [rbp - 0x11], al
	mov	al, byte ptr [rbp - 0x11]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x10]
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
	mov	byte ptr [rbp - 0x11], al
	mov	al, byte ptr [rbp - 0x11]
	nop	
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rcx + 0x80]
	and	al, 1
	movzx	edi, al
	nop	
	call	print_rel_part
	movabs	rdx, OFFSET FLAT:.str.92
	and	al, 1
	mov	byte ptr [rbp - 0x11], al
	mov	rbp, rbp
	mov	al, byte ptr [rbp - 0x11]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rcx + 0x88]
	mov	rbp, rbp
	and	al, 1
	movzx	edi, al
	call	print_rel_part
	movabs	rdx, OFFSET FLAT:.str.93
	lea	rdi, [rdi]
	and	al, 1
	mov	byte ptr [rbp - 0x11], al
	mov	al, byte ptr [rbp - 0x11]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	rsi, qword ptr [rcx + 0x90]
	and	al, 1
	movzx	edi, al
	call	print_rel_part
	mov	rsp, rsp
	movabs	rdx, OFFSET FLAT:.str.94
	nop	
	and	al, 1
	mov	byte ptr [rbp - 0x11], al
	lea	rsi, [rsi]
	mov	al, byte ptr [rbp - 0x11]
	mov	rcx, qword ptr [rbp - 0x10]
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
	mov	byte ptr [rbp - 0x19], al
	nop	
	call	fputc
	mov	dword ptr [rbp - 0x20], eax
.label_1711:
	nop	
	add	rsp, 0x20
	mov	rbp, rbp
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x418e60

	.globl set_hhmmss
	.type set_hhmmss, @function
set_hhmmss:
	lea	rdi, [rdi]
	push	rbp
	nop	
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x18], rdx
	mov	qword ptr [rbp - 0x20], rcx
	mov	dword ptr [rbp - 0x24], r8d
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	mov	qword ptr [rdx + 0x48], rcx
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 8]
	mov	qword ptr [rdx + 0x50], rcx
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	mov	qword ptr [rdx + 0x58], rcx
	mov	rbp, rbp
	movsxd	rcx, dword ptr [rbp - 0x24]
	mov	rdx, qword ptr [rbp - 8]
	nop	
	mov	qword ptr [rdx + 0x60], rcx
	pop	rbp
	mov	rsp, rsp
	ret	
	.section	.text
	.align	32
	#Procedure 0x418ed0

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
	mov	qword ptr [rbp - 0x18], rsi
	mov	byte ptr [rbp - 0x21], 0
	cmp	qword ptr [rax + 0x10], 2
	mov	qword ptr [rbp - 0x30], rax
	lea	rsi, [rsi]
	jg	.label_1740
	cmp	qword ptr [rbp - 0x18], 0
	jge	.label_1740
	mov	rax, qword ptr [rbp - 0x30]
	nop	
	imul	rcx, qword ptr [rax + 8], 0x64
	mov	rbp, rbp
	mov	qword ptr [rax + 8], rcx
.label_1740:
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0x18], 0
	jge	.label_1723
	lea	rdi, [rdi]
	mov	eax, 0x64
	mov	ecx, eax
	nop	
	mov	rdx, qword ptr [rbp - 0x30]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rdx + 8]
	cqo	
	idiv	rcx
	mov	rsp, rsp
	imul	rax, rax, 0x3c
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x30]
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rsi + 8]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x38], rax
	mov	rax, rdi
	cqo	
	idiv	rcx
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x38]
	nop	
	add	rcx, rdx
	mov	qword ptr [rbp - 0x20], rcx
	jmp	.label_1728
.label_1723:
	lea	rdi, [rdi]
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_1750
	jmp	.label_1716
.label_1750:
	nop	
	mov	rax, qword ptr [rbp - 0x30]
	mov	rbp, rbp
	cmp	qword ptr [rax + 8], 0
	jge	.label_1720
	movabs	rax, 0x222222222222222
	nop	
	mov	rcx, qword ptr [rbp - 0x30]
	mov	rsp, rsp
	cmp	qword ptr [rcx + 8], rax
	mov	rbp, rbp
	jl	.label_1722
	jmp	.label_1721
.label_1720:
	mov	rbp, rbp
	xor	eax, eax
	mov	cl, al
	mov	rsp, rsp
	test	cl, 1
	mov	rsp, rsp
	jne	.label_1736
	mov	rbp, rbp
	jmp	.label_1745
.label_1736:
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_1722
	mov	rsp, rsp
	jmp	.label_1721
.label_1745:
	movabs	rax, 0xfdddddddddddddde
	mov	rcx, qword ptr [rbp - 0x30]
	cmp	rax, qword ptr [rcx + 8]
	lea	rdi, [rdi]
	jl	.label_1722
	jmp	.label_1721
.label_1716:
	xor	eax, eax
	mov	rsp, rsp
	mov	cl, al
	test	cl, 1
	jne	.label_1718
	jmp	.label_1729
.label_1718:
	lea	rsi, [rsi]
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_1722
	nop	
	jmp	.label_1721
.label_1729:
	nop	
	mov	rax, qword ptr [rbp - 0x30]
	cmp	qword ptr [rax + 8], 0
	jge	.label_1734
	movabs	rax, 0xfdddddddddddddde
	mov	rcx, qword ptr [rbp - 0x30]
	cmp	qword ptr [rcx + 8], rax
	mov	rsp, rsp
	jl	.label_1722
	jmp	.label_1721
.label_1734:
	movabs	rax, 0x222222222222222
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x30]
	mov	rbp, rbp
	cmp	rax, qword ptr [rcx + 8]
	lea	rsi, [rsi]
	jl	.label_1722
.label_1721:
	movabs	rax, 0x8000000000000000
	mov	rcx, qword ptr [rbp - 0x30]
	nop	
	imul	rdx, qword ptr [rcx + 8], 0x3c
	lea	rdi, [rdi]
	cmp	rdx, rax
	lea	rdi, [rdi]
	jl	.label_1722
	movabs	rax, 0x7fffffffffffffff
	mov	rcx, qword ptr [rbp - 0x30]
	imul	rdx, qword ptr [rcx + 8], 0x3c
	mov	rbp, rbp
	cmp	rax, rdx
	mov	rbp, rbp
	jge	.label_1733
.label_1722:
	mov	rbp, rbp
	mov	eax, 1
	mov	rcx, qword ptr [rbp - 0x30]
	nop	
	imul	rdx, qword ptr [rcx + 8], 0x3c
	nop	
	mov	qword ptr [rbp - 0x20], rdx
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x3c], eax
	jmp	.label_1744
.label_1733:
	nop	
	xor	eax, eax
	mov	rcx, qword ptr [rbp - 0x30]
	imul	rdx, qword ptr [rcx + 8], 0x3c
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x20], rdx
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x3c], eax
.label_1744:
	mov	eax, dword ptr [rbp - 0x3c]
	mov	cl, byte ptr [rbp - 0x21]
	and	cl, 1
	mov	rsp, rsp
	movzx	edx, cl
	lea	rdi, [rdi]
	or	edx, eax
	cmp	edx, 0
	setne	cl
	and	cl, 1
	mov	byte ptr [rbp - 0x21], cl
	mov	rsi, qword ptr [rbp - 0x30]
	lea	rdi, [rdi]
	test	byte ptr [rsi], 1
	je	.label_1749
	nop	
	mov	al, 1
	test	al, 1
	jne	.label_1735
	lea	rsi, [rsi]
	jmp	.label_1739
.label_1735:
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x18], 0
	mov	rsp, rsp
	jge	.label_1743
	mov	rbp, rbp
	movabs	rax, 0x7fffffffffffffff
	add	rax, qword ptr [rbp - 0x18]
	cmp	rax, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	jl	.label_1717
	jmp	.label_1726
.label_1743:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x20]
	movabs	rcx, 0x8000000000000000
	add	rcx, qword ptr [rbp - 0x18]
	cmp	rax, rcx
	jl	.label_1717
	jmp	.label_1726
.label_1739:
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x20], 0
	jge	.label_1731
	lea	rdi, [rdi]
	mov	al, 1
	test	al, 1
	jne	.label_1717
	lea	rsi, [rsi]
	jmp	.label_1726
.label_1731:
	cmp	qword ptr [rbp - 0x18], 0
	nop	
	jge	.label_1747
	mov	rax, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	sub	rax, qword ptr [rbp - 0x18]
	cmp	rax, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	jle	.label_1717
	nop	
	jmp	.label_1726
.label_1747:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	cmp	rax, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	jl	.label_1717
.label_1726:
	lea	rsi, [rsi]
	movabs	rax, 0x8000000000000000
	mov	rcx, qword ptr [rbp - 0x20]
	sub	rcx, qword ptr [rbp - 0x18]
	cmp	rcx, rax
	jl	.label_1717
	lea	rdi, [rdi]
	movabs	rax, 0x7fffffffffffffff
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x20]
	sub	rcx, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	cmp	rax, rcx
	nop	
	jge	.label_1724
.label_1717:
	mov	rsp, rsp
	mov	eax, 1
	mov	rcx, qword ptr [rbp - 0x20]
	sub	rcx, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x20], rcx
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x40], eax
	nop	
	jmp	.label_1741
.label_1724:
	xor	eax, eax
	mov	rcx, qword ptr [rbp - 0x20]
	nop	
	sub	rcx, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x20], rcx
	mov	dword ptr [rbp - 0x40], eax
.label_1741:
	mov	eax, dword ptr [rbp - 0x40]
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x44], eax
	nop	
	jmp	.label_1719
.label_1749:
	mov	al, 1
	lea	rdi, [rdi]
	test	al, 1
	jne	.label_1725
	lea	rdi, [rdi]
	jmp	.label_1730
.label_1725:
	nop	
	cmp	qword ptr [rbp - 0x18], 0
	jge	.label_1732
	movabs	rax, 0x8000000000000000
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x20]
	sub	rax, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	cmp	rcx, rax
	jl	.label_1714
	jmp	.label_1713
.label_1732:
	movabs	rax, 0x7fffffffffffffff
	lea	rsi, [rsi]
	sub	rax, qword ptr [rbp - 0x18]
	cmp	rax, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	jl	.label_1714
	jmp	.label_1713
.label_1730:
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x20], 0
	lea	rsi, [rsi]
	jge	.label_1715
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	add	rcx, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	cmp	rax, rcx
	jle	.label_1714
	jmp	.label_1713
.label_1715:
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x18], 0
	jge	.label_1738
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x20]
	add	rcx, qword ptr [rbp - 0x18]
	cmp	rax, rcx
	lea	rsi, [rsi]
	jle	.label_1714
	jmp	.label_1713
.label_1738:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x20]
	nop	
	add	rax, qword ptr [rbp - 0x18]
	cmp	rax, qword ptr [rbp - 0x18]
	jl	.label_1714
.label_1713:
	lea	rdi, [rdi]
	movabs	rax, 0x8000000000000000
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	add	rcx, qword ptr [rbp - 0x18]
	cmp	rcx, rax
	jl	.label_1714
	movabs	rax, 0x7fffffffffffffff
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	add	rcx, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	cmp	rax, rcx
	lea	rdi, [rdi]
	jge	.label_1748
.label_1714:
	lea	rsi, [rsi]
	mov	eax, 1
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	add	rcx, qword ptr [rbp - 0x18]
	nop	
	mov	qword ptr [rbp - 0x20], rcx
	mov	dword ptr [rbp - 0x48], eax
	jmp	.label_1742
.label_1748:
	xor	eax, eax
	mov	rcx, qword ptr [rbp - 0x20]
	nop	
	add	rcx, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x20], rcx
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x48], eax
.label_1742:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x48]
	mov	dword ptr [rbp - 0x44], eax
.label_1719:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x44]
	mov	cl, byte ptr [rbp - 0x21]
	and	cl, 1
	movzx	edx, cl
	or	edx, eax
	nop	
	cmp	edx, 0
	setne	cl
	mov	rsp, rsp
	and	cl, 1
	mov	byte ptr [rbp - 0x21], cl
.label_1728:
	test	byte ptr [rbp - 0x21], 1
	jne	.label_1727
	mov	rax, -0x5a0
	cmp	rax, qword ptr [rbp - 0x20]
	jg	.label_1727
	nop	
	cmp	qword ptr [rbp - 0x20], 0x5a0
	lea	rdi, [rdi]
	jle	.label_1737
.label_1727:
	mov	byte ptr [rbp - 1], 0
	jmp	.label_1746
.label_1737:
	imul	rax, qword ptr [rbp - 0x20], 0x3c
	nop	
	mov	ecx, eax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x10]
	mov	dword ptr [rax + 0x18], ecx
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 1], 1
.label_1746:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x419490

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
	mov	qword ptr [rbp - 0x10], rdi
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x14], esi
	nop	
	cmp	dword ptr [rbp - 0x14], 0
	mov	qword ptr [rbp - 0x20], rax
	jge	.label_1811
	nop	
	mov	al, 1
	test	al, 1
	jne	.label_1787
	nop	
	jmp	.label_1825
.label_1787:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x20]
	cmp	dword ptr [rax + 0x30], 0
	mov	rsp, rsp
	jge	.label_1826
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x20]
	nop	
	mov	ecx, dword ptr [rax + 0x30]
	add	ecx, 0x7fffffff
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	cmp	ecx, dword ptr [rdx + 0x98]
	jl	.label_1831
	jmp	.label_1839
.label_1826:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x10]
	nop	
	mov	ecx, dword ptr [rax + 0x98]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x20]
	nop	
	mov	edx, dword ptr [rax + 0x30]
	add	edx, 0x80000000
	lea	rsi, [rsi]
	cmp	ecx, edx
	lea	rsi, [rsi]
	jl	.label_1831
	jmp	.label_1839
.label_1825:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x10]
	nop	
	cmp	dword ptr [rax + 0x98], 0
	lea	rsi, [rsi]
	jge	.label_1844
	mov	rbp, rbp
	mov	al, 1
	test	al, 1
	mov	rbp, rbp
	jne	.label_1831
	jmp	.label_1839
.label_1844:
	mov	rax, qword ptr [rbp - 0x20]
	cmp	dword ptr [rax + 0x30], 0
	jge	.label_1818
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	ecx, dword ptr [rax + 0x98]
	mov	rax, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	sub	ecx, dword ptr [rax + 0x30]
	mov	rdx, qword ptr [rbp - 0x10]
	cmp	ecx, dword ptr [rdx + 0x98]
	mov	rbp, rbp
	jle	.label_1831
	jmp	.label_1839
.label_1818:
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rax + 0x98]
	mov	rax, qword ptr [rbp - 0x20]
	cmp	ecx, dword ptr [rax + 0x30]
	jl	.label_1831
.label_1839:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rax + 0x98]
	mov	rax, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	sub	ecx, dword ptr [rax + 0x30]
	cmp	ecx, 0x80000000
	jl	.label_1831
	lea	rsi, [rsi]
	mov	eax, 0x7fffffff
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	edx, dword ptr [rcx + 0x98]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x20]
	sub	edx, dword ptr [rcx + 0x30]
	cmp	eax, edx
	mov	rsp, rsp
	jge	.label_1871
.label_1831:
	lea	rdi, [rdi]
	mov	eax, 1
	mov	rcx, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	edx, dword ptr [rcx + 0x98]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x20]
	sub	edx, dword ptr [rcx + 0x30]
	mov	rsi, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	dword ptr [rsi + 0x98], edx
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x24], eax
	lea	rsi, [rsi]
	jmp	.label_1758
.label_1871:
	nop	
	xor	eax, eax
	mov	rcx, qword ptr [rbp - 0x10]
	mov	edx, dword ptr [rcx + 0x98]
	mov	rcx, qword ptr [rbp - 0x20]
	sub	edx, dword ptr [rcx + 0x30]
	nop	
	mov	rsi, qword ptr [rbp - 0x10]
	mov	dword ptr [rsi + 0x98], edx
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x24], eax
.label_1758:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x24]
	mov	cl, 1
	lea	rsi, [rsi]
	test	cl, 1
	mov	dword ptr [rbp - 0x28], eax
	lea	rdi, [rdi]
	jne	.label_1798
	jmp	.label_1842
.label_1798:
	mov	rax, qword ptr [rbp - 0x20]
	cmp	qword ptr [rax + 0x28], 0
	jge	.label_1845
	nop	
	movabs	rax, 0x7fffffffffffffff
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x20]
	nop	
	add	rax, qword ptr [rcx + 0x28]
	mov	rdx, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rdx + 0x90]
	nop	
	jl	.label_1816
	lea	rdi, [rdi]
	jmp	.label_1813
.label_1845:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x90]
	nop	
	movabs	rcx, 0x8000000000000000
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x20]
	add	rcx, qword ptr [rdx + 0x28]
	lea	rdi, [rdi]
	cmp	rax, rcx
	jl	.label_1816
	nop	
	jmp	.label_1813
.label_1842:
	mov	rax, qword ptr [rbp - 0x10]
	cmp	qword ptr [rax + 0x90], 0
	jge	.label_1838
	mov	al, 1
	mov	rbp, rbp
	test	al, 1
	lea	rsi, [rsi]
	jne	.label_1816
	lea	rdi, [rdi]
	jmp	.label_1813
.label_1838:
	mov	rax, qword ptr [rbp - 0x20]
	cmp	qword ptr [rax + 0x28], 0
	lea	rdi, [rdi]
	jge	.label_1843
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	rax, qword ptr [rax + 0x90]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x20]
	sub	rax, qword ptr [rcx + 0x28]
	mov	rdx, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rdx + 0x90]
	lea	rsi, [rsi]
	jle	.label_1816
	jmp	.label_1813
.label_1843:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x90]
	mov	rcx, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	cmp	rax, qword ptr [rcx + 0x28]
	lea	rsi, [rsi]
	jl	.label_1816
.label_1813:
	lea	rdi, [rdi]
	movabs	rax, 0x8000000000000000
	nop	
	mov	rcx, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rcx + 0x90]
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	sub	rcx, qword ptr [rdx + 0x28]
	lea	rdi, [rdi]
	cmp	rcx, rax
	mov	rbp, rbp
	jl	.label_1816
	movabs	rax, 0x7fffffffffffffff
	nop	
	mov	rcx, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rcx + 0x90]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	sub	rcx, qword ptr [rdx + 0x28]
	cmp	rax, rcx
	jge	.label_1867
.label_1816:
	mov	rsp, rsp
	mov	eax, 1
	nop	
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	rcx, qword ptr [rcx + 0x90]
	mov	rdx, qword ptr [rbp - 0x20]
	nop	
	sub	rcx, qword ptr [rdx + 0x28]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	qword ptr [rsi + 0x90], rcx
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x2c], eax
	lea	rsi, [rsi]
	jmp	.label_1879
.label_1867:
	lea	rsi, [rsi]
	xor	eax, eax
	nop	
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	rcx, qword ptr [rcx + 0x90]
	mov	rdx, qword ptr [rbp - 0x20]
	nop	
	sub	rcx, qword ptr [rdx + 0x28]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	qword ptr [rsi + 0x90], rcx
	mov	dword ptr [rbp - 0x2c], eax
.label_1879:
	mov	eax, dword ptr [rbp - 0x2c]
	lea	rdi, [rdi]
	mov	cl, 1
	mov	rsp, rsp
	mov	edx, dword ptr [rbp - 0x28]
	or	edx, eax
	lea	rsi, [rsi]
	test	cl, 1
	mov	dword ptr [rbp - 0x30], edx
	jne	.label_1791
	nop	
	jmp	.label_1805
.label_1791:
	mov	rax, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	cmp	qword ptr [rax + 0x20], 0
	mov	rbp, rbp
	jge	.label_1840
	nop	
	movabs	rax, 0x7fffffffffffffff
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x20]
	nop	
	add	rax, qword ptr [rcx + 0x20]
	mov	rdx, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rdx + 0x88]
	jl	.label_1815
	jmp	.label_1795
.label_1840:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	rax, qword ptr [rax + 0x88]
	movabs	rcx, 0x8000000000000000
	mov	rdx, qword ptr [rbp - 0x20]
	nop	
	add	rcx, qword ptr [rdx + 0x20]
	mov	rsp, rsp
	cmp	rax, rcx
	mov	rsp, rsp
	jl	.label_1815
	lea	rsi, [rsi]
	jmp	.label_1795
.label_1805:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x10]
	cmp	qword ptr [rax + 0x88], 0
	jge	.label_1837
	mov	rbp, rbp
	mov	al, 1
	test	al, 1
	jne	.label_1815
	jmp	.label_1795
.label_1837:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x20]
	cmp	qword ptr [rax + 0x20], 0
	jge	.label_1830
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x88]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x20]
	sub	rax, qword ptr [rcx + 0x20]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	cmp	rax, qword ptr [rdx + 0x88]
	jle	.label_1815
	jmp	.label_1795
.label_1830:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	rax, qword ptr [rax + 0x88]
	mov	rcx, qword ptr [rbp - 0x20]
	cmp	rax, qword ptr [rcx + 0x20]
	mov	rbp, rbp
	jl	.label_1815
.label_1795:
	lea	rdi, [rdi]
	movabs	rax, 0x8000000000000000
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx + 0x88]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x20]
	sub	rcx, qword ptr [rdx + 0x20]
	lea	rdi, [rdi]
	cmp	rcx, rax
	jl	.label_1815
	movabs	rax, 0x7fffffffffffffff
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx + 0x88]
	mov	rdx, qword ptr [rbp - 0x20]
	sub	rcx, qword ptr [rdx + 0x20]
	cmp	rax, rcx
	lea	rsi, [rsi]
	jge	.label_1865
.label_1815:
	mov	eax, 1
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx + 0x88]
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x20]
	sub	rcx, qword ptr [rdx + 0x20]
	nop	
	mov	rsi, qword ptr [rbp - 0x10]
	nop	
	mov	qword ptr [rsi + 0x88], rcx
	mov	dword ptr [rbp - 0x34], eax
	jmp	.label_1873
.label_1865:
	xor	eax, eax
	mov	rcx, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rcx + 0x88]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x20]
	sub	rcx, qword ptr [rdx + 0x20]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	qword ptr [rsi + 0x88], rcx
	mov	dword ptr [rbp - 0x34], eax
.label_1873:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x34]
	mov	cl, 1
	mov	edx, dword ptr [rbp - 0x30]
	or	edx, eax
	lea	rsi, [rsi]
	test	cl, 1
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x38], edx
	lea	rdi, [rdi]
	jne	.label_1781
	jmp	.label_1796
.label_1781:
	mov	rax, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	cmp	qword ptr [rax + 0x18], 0
	jge	.label_1807
	mov	rbp, rbp
	movabs	rax, 0x7fffffffffffffff
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	add	rax, qword ptr [rcx + 0x18]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rdx + 0x80]
	nop	
	jl	.label_1822
	lea	rsi, [rsi]
	jmp	.label_1833
.label_1807:
	mov	rax, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax + 0x80]
	lea	rsi, [rsi]
	movabs	rcx, 0x8000000000000000
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	add	rcx, qword ptr [rdx + 0x18]
	mov	rbp, rbp
	cmp	rax, rcx
	lea	rdi, [rdi]
	jl	.label_1822
	nop	
	jmp	.label_1833
.label_1796:
	mov	rax, qword ptr [rbp - 0x10]
	cmp	qword ptr [rax + 0x80], 0
	jge	.label_1868
	lea	rdi, [rdi]
	mov	al, 1
	test	al, 1
	nop	
	jne	.label_1822
	lea	rdi, [rdi]
	jmp	.label_1833
.label_1868:
	mov	rax, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	cmp	qword ptr [rax + 0x18], 0
	lea	rdi, [rdi]
	jge	.label_1841
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax + 0x80]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x20]
	sub	rax, qword ptr [rcx + 0x18]
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rdx + 0x80]
	mov	rsp, rsp
	jle	.label_1822
	mov	rsp, rsp
	jmp	.label_1833
.label_1841:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax + 0x80]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x20]
	nop	
	cmp	rax, qword ptr [rcx + 0x18]
	lea	rdi, [rdi]
	jl	.label_1822
.label_1833:
	movabs	rax, 0x8000000000000000
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx + 0x80]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x20]
	sub	rcx, qword ptr [rdx + 0x18]
	lea	rdi, [rdi]
	cmp	rcx, rax
	jl	.label_1822
	movabs	rax, 0x7fffffffffffffff
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx + 0x80]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x20]
	sub	rcx, qword ptr [rdx + 0x18]
	cmp	rax, rcx
	lea	rsi, [rsi]
	jge	.label_1866
.label_1822:
	lea	rsi, [rsi]
	mov	eax, 1
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx + 0x80]
	mov	rdx, qword ptr [rbp - 0x20]
	nop	
	sub	rcx, qword ptr [rdx + 0x18]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	qword ptr [rsi + 0x80], rcx
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x3c], eax
	jmp	.label_1876
.label_1866:
	lea	rsi, [rsi]
	xor	eax, eax
	mov	rcx, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rcx + 0x80]
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	sub	rcx, qword ptr [rdx + 0x18]
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	qword ptr [rsi + 0x80], rcx
	mov	dword ptr [rbp - 0x3c], eax
.label_1876:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x3c]
	mov	cl, 1
	mov	rbp, rbp
	mov	edx, dword ptr [rbp - 0x38]
	mov	rsp, rsp
	or	edx, eax
	test	cl, 1
	mov	dword ptr [rbp - 0x40], edx
	nop	
	jne	.label_1784
	jmp	.label_1799
.label_1784:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	cmp	qword ptr [rax + 0x10], 0
	mov	rsp, rsp
	jge	.label_1802
	movabs	rax, 0x7fffffffffffffff
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	add	rax, qword ptr [rcx + 0x10]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rdx + 0x78]
	mov	rsp, rsp
	jl	.label_1810
	mov	rbp, rbp
	jmp	.label_1803
.label_1802:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x78]
	movabs	rcx, 0x8000000000000000
	mov	rdx, qword ptr [rbp - 0x20]
	add	rcx, qword ptr [rdx + 0x10]
	mov	rsp, rsp
	cmp	rax, rcx
	nop	
	jl	.label_1810
	lea	rdi, [rdi]
	jmp	.label_1803
.label_1799:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	cmp	qword ptr [rax + 0x78], 0
	nop	
	jge	.label_1835
	mov	rbp, rbp
	mov	al, 1
	mov	rbp, rbp
	test	al, 1
	lea	rsi, [rsi]
	jne	.label_1810
	jmp	.label_1803
.label_1835:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	cmp	qword ptr [rax + 0x10], 0
	lea	rdi, [rdi]
	jge	.label_1770
	mov	rax, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	rax, qword ptr [rax + 0x78]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	sub	rax, qword ptr [rcx + 0x10]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rdx + 0x78]
	lea	rdi, [rdi]
	jle	.label_1810
	jmp	.label_1803
.label_1770:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x78]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	cmp	rax, qword ptr [rcx + 0x10]
	nop	
	jl	.label_1810
.label_1803:
	lea	rdi, [rdi]
	movabs	rax, 0x8000000000000000
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	rcx, qword ptr [rcx + 0x78]
	mov	rdx, qword ptr [rbp - 0x20]
	sub	rcx, qword ptr [rdx + 0x10]
	mov	rsp, rsp
	cmp	rcx, rax
	lea	rdi, [rdi]
	jl	.label_1810
	nop	
	movabs	rax, 0x7fffffffffffffff
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx + 0x78]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x20]
	sub	rcx, qword ptr [rdx + 0x10]
	mov	rbp, rbp
	cmp	rax, rcx
	jge	.label_1864
.label_1810:
	nop	
	mov	eax, 1
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	rcx, qword ptr [rcx + 0x78]
	mov	rdx, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	sub	rcx, qword ptr [rdx + 0x10]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	qword ptr [rsi + 0x78], rcx
	mov	dword ptr [rbp - 0x44], eax
	nop	
	jmp	.label_1872
.label_1864:
	xor	eax, eax
	nop	
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	rcx, qword ptr [rcx + 0x78]
	mov	rdx, qword ptr [rbp - 0x20]
	sub	rcx, qword ptr [rdx + 0x10]
	nop	
	mov	rsi, qword ptr [rbp - 0x10]
	mov	qword ptr [rsi + 0x78], rcx
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x44], eax
.label_1872:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x44]
	mov	cl, 1
	mov	edx, dword ptr [rbp - 0x40]
	mov	rbp, rbp
	or	edx, eax
	test	cl, 1
	mov	dword ptr [rbp - 0x48], edx
	jne	.label_1774
	jmp	.label_1786
.label_1774:
	mov	rax, qword ptr [rbp - 0x20]
	cmp	qword ptr [rax + 8], 0
	jge	.label_1789
	mov	rsp, rsp
	movabs	rax, 0x7fffffffffffffff
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	add	rax, qword ptr [rcx + 8]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rdx + 0x70]
	jl	.label_1792
	lea	rdi, [rdi]
	jmp	.label_1812
.label_1789:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	rax, qword ptr [rax + 0x70]
	movabs	rcx, 0x8000000000000000
	mov	rdx, qword ptr [rbp - 0x20]
	add	rcx, qword ptr [rdx + 8]
	mov	rsp, rsp
	cmp	rax, rcx
	jl	.label_1792
	mov	rbp, rbp
	jmp	.label_1812
.label_1786:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	cmp	qword ptr [rax + 0x70], 0
	lea	rsi, [rsi]
	jge	.label_1827
	mov	al, 1
	mov	rbp, rbp
	test	al, 1
	jne	.label_1792
	mov	rbp, rbp
	jmp	.label_1812
.label_1827:
	mov	rax, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	cmp	qword ptr [rax + 8], 0
	mov	rbp, rbp
	jge	.label_1836
	mov	rax, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax + 0x70]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	sub	rax, qword ptr [rcx + 8]
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	cmp	rax, qword ptr [rdx + 0x70]
	jle	.label_1792
	jmp	.label_1812
.label_1836:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x70]
	nop	
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	cmp	rax, qword ptr [rcx + 8]
	jl	.label_1792
.label_1812:
	lea	rdi, [rdi]
	movabs	rax, 0x8000000000000000
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	rcx, qword ptr [rcx + 0x70]
	mov	rdx, qword ptr [rbp - 0x20]
	sub	rcx, qword ptr [rdx + 8]
	cmp	rcx, rax
	nop	
	jl	.label_1792
	lea	rdi, [rdi]
	movabs	rax, 0x7fffffffffffffff
	mov	rcx, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rcx + 0x70]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	sub	rcx, qword ptr [rdx + 8]
	lea	rsi, [rsi]
	cmp	rax, rcx
	mov	rbp, rbp
	jge	.label_1854
.label_1792:
	nop	
	mov	eax, 1
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x10]
	nop	
	mov	rcx, qword ptr [rcx + 0x70]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	sub	rcx, qword ptr [rdx + 8]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	qword ptr [rsi + 0x70], rcx
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x4c], eax
	mov	rsp, rsp
	jmp	.label_1862
.label_1854:
	lea	rdi, [rdi]
	xor	eax, eax
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rcx + 0x70]
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	sub	rcx, qword ptr [rdx + 8]
	mov	rsi, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	qword ptr [rsi + 0x70], rcx
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x4c], eax
.label_1862:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x4c]
	nop	
	mov	cl, 1
	mov	edx, dword ptr [rbp - 0x48]
	mov	rsp, rsp
	or	edx, eax
	mov	rsp, rsp
	test	cl, 1
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x50], edx
	jne	.label_1765
	lea	rdi, [rdi]
	jmp	.label_1808
.label_1765:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x20]
	cmp	qword ptr [rax], 0
	lea	rsi, [rsi]
	jge	.label_1782
	nop	
	movabs	rax, 0x7fffffffffffffff
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	add	rax, qword ptr [rcx]
	mov	rdx, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rdx + 0x68]
	nop	
	jl	.label_1790
	jmp	.label_1766
.label_1782:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x68]
	lea	rsi, [rsi]
	movabs	rcx, 0x8000000000000000
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x20]
	add	rcx, qword ptr [rdx]
	cmp	rax, rcx
	mov	rbp, rbp
	jl	.label_1790
	jmp	.label_1766
.label_1808:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	cmp	qword ptr [rax + 0x68], 0
	jge	.label_1793
	mov	al, 1
	test	al, 1
	jne	.label_1790
	lea	rsi, [rsi]
	jmp	.label_1766
.label_1793:
	mov	rax, qword ptr [rbp - 0x20]
	cmp	qword ptr [rax], 0
	mov	rbp, rbp
	jge	.label_1761
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x68]
	mov	rcx, qword ptr [rbp - 0x20]
	sub	rax, qword ptr [rcx]
	mov	rdx, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rdx + 0x68]
	jle	.label_1790
	jmp	.label_1766
.label_1761:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x68]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	cmp	rax, qword ptr [rcx]
	nop	
	jl	.label_1790
.label_1766:
	lea	rdi, [rdi]
	movabs	rax, 0x8000000000000000
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	rcx, qword ptr [rcx + 0x68]
	nop	
	mov	rdx, qword ptr [rbp - 0x20]
	nop	
	sub	rcx, qword ptr [rdx]
	cmp	rcx, rax
	jl	.label_1790
	lea	rsi, [rsi]
	movabs	rax, 0x7fffffffffffffff
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx + 0x68]
	nop	
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	sub	rcx, qword ptr [rdx]
	mov	rsp, rsp
	cmp	rax, rcx
	jge	.label_1768
.label_1790:
	lea	rdi, [rdi]
	mov	eax, 1
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx + 0x68]
	mov	rdx, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	sub	rcx, qword ptr [rdx]
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	qword ptr [rsi + 0x68], rcx
	mov	dword ptr [rbp - 0x54], eax
	jmp	.label_1855
.label_1768:
	xor	eax, eax
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	rcx, qword ptr [rcx + 0x68]
	nop	
	mov	rdx, qword ptr [rbp - 0x20]
	sub	rcx, qword ptr [rdx]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	qword ptr [rsi + 0x68], rcx
	mov	dword ptr [rbp - 0x54], eax
.label_1855:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x54]
	mov	rbp, rbp
	mov	ecx, dword ptr [rbp - 0x50]
	or	ecx, eax
	cmp	ecx, 0
	nop	
	jne	.label_1870
	jmp	.label_1850
.label_1811:
	mov	al, 1
	test	al, 1
	jne	.label_1880
	jmp	.label_1751
.label_1880:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x20]
	nop	
	cmp	dword ptr [rax + 0x30], 0
	mov	rsp, rsp
	jge	.label_1753
	mov	eax, 0x80000000
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	edx, dword ptr [rcx + 0x98]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	sub	eax, dword ptr [rcx + 0x30]
	cmp	edx, eax
	jl	.label_1763
	jmp	.label_1780
.label_1753:
	mov	eax, 0x7fffffff
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	sub	eax, dword ptr [rcx + 0x30]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	cmp	eax, dword ptr [rdx + 0x98]
	mov	rbp, rbp
	jl	.label_1763
	jmp	.label_1780
.label_1751:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	cmp	dword ptr [rax + 0x98], 0
	jge	.label_1801
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	mov	ecx, dword ptr [rax + 0x30]
	nop	
	mov	rdx, qword ptr [rbp - 0x10]
	mov	esi, dword ptr [rdx + 0x98]
	add	esi, dword ptr [rax + 0x30]
	cmp	ecx, esi
	jle	.label_1763
	lea	rdi, [rdi]
	jmp	.label_1780
.label_1801:
	mov	rax, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	cmp	dword ptr [rax + 0x30], 0
	lea	rsi, [rsi]
	jge	.label_1821
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rax + 0x98]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x10]
	mov	edx, dword ptr [rax + 0x98]
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x20]
	add	edx, dword ptr [rax + 0x30]
	mov	rbp, rbp
	cmp	ecx, edx
	mov	rsp, rsp
	jle	.label_1763
	lea	rsi, [rsi]
	jmp	.label_1780
.label_1821:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	ecx, dword ptr [rax + 0x98]
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x20]
	add	ecx, dword ptr [rax + 0x30]
	cmp	ecx, dword ptr [rax + 0x30]
	lea	rsi, [rsi]
	jl	.label_1763
.label_1780:
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rax + 0x98]
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	add	ecx, dword ptr [rax + 0x30]
	lea	rdi, [rdi]
	cmp	ecx, 0x80000000
	jl	.label_1763
	mov	eax, 0x7fffffff
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	edx, dword ptr [rcx + 0x98]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	add	edx, dword ptr [rcx + 0x30]
	nop	
	cmp	eax, edx
	jge	.label_1847
.label_1763:
	nop	
	mov	eax, 1
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	edx, dword ptr [rcx + 0x98]
	nop	
	mov	rcx, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	add	edx, dword ptr [rcx + 0x30]
	nop	
	mov	rsi, qword ptr [rbp - 0x10]
	nop	
	mov	dword ptr [rsi + 0x98], edx
	mov	dword ptr [rbp - 0x58], eax
	mov	rsp, rsp
	jmp	.label_1852
.label_1847:
	nop	
	xor	eax, eax
	mov	rcx, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	edx, dword ptr [rcx + 0x98]
	mov	rcx, qword ptr [rbp - 0x20]
	nop	
	add	edx, dword ptr [rcx + 0x30]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	dword ptr [rsi + 0x98], edx
	mov	dword ptr [rbp - 0x58], eax
.label_1852:
	mov	eax, dword ptr [rbp - 0x58]
	mov	rsp, rsp
	mov	cl, 1
	lea	rdi, [rdi]
	test	cl, 1
	mov	dword ptr [rbp - 0x5c], eax
	jne	.label_1869
	lea	rsi, [rsi]
	jmp	.label_1857
.label_1869:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	cmp	qword ptr [rax + 0x28], 0
	lea	rdi, [rdi]
	jge	.label_1863
	lea	rsi, [rsi]
	movabs	rax, 0x8000000000000000
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx + 0x90]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x20]
	sub	rax, qword ptr [rdx + 0x28]
	lea	rsi, [rsi]
	cmp	rcx, rax
	mov	rsp, rsp
	jl	.label_1757
	jmp	.label_1777
.label_1863:
	nop	
	movabs	rax, 0x7fffffffffffffff
	mov	rcx, qword ptr [rbp - 0x20]
	sub	rax, qword ptr [rcx + 0x28]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x10]
	nop	
	cmp	rax, qword ptr [rdx + 0x90]
	mov	rbp, rbp
	jl	.label_1757
	jmp	.label_1777
.label_1857:
	mov	rax, qword ptr [rbp - 0x10]
	nop	
	cmp	qword ptr [rax + 0x90], 0
	jge	.label_1800
	nop	
	mov	rax, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rax + 0x28]
	mov	rdx, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rdx + 0x90]
	add	rdx, qword ptr [rax + 0x28]
	lea	rdi, [rdi]
	cmp	rcx, rdx
	jle	.label_1757
	jmp	.label_1777
.label_1800:
	mov	rax, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	cmp	qword ptr [rax + 0x28], 0
	jge	.label_1820
	mov	rax, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax + 0x90]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	rcx, qword ptr [rcx + 0x90]
	nop	
	mov	rdx, qword ptr [rbp - 0x20]
	add	rcx, qword ptr [rdx + 0x28]
	cmp	rax, rcx
	jle	.label_1757
	lea	rdi, [rdi]
	jmp	.label_1777
.label_1820:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x90]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x20]
	add	rax, qword ptr [rcx + 0x28]
	cmp	rax, qword ptr [rcx + 0x28]
	mov	rsp, rsp
	jl	.label_1757
.label_1777:
	mov	rbp, rbp
	movabs	rax, 0x8000000000000000
	mov	rcx, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rcx + 0x90]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x20]
	add	rcx, qword ptr [rdx + 0x28]
	nop	
	cmp	rcx, rax
	lea	rsi, [rsi]
	jl	.label_1757
	lea	rsi, [rsi]
	movabs	rax, 0x7fffffffffffffff
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx + 0x90]
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	add	rcx, qword ptr [rdx + 0x28]
	lea	rdi, [rdi]
	cmp	rax, rcx
	mov	rbp, rbp
	jge	.label_1848
.label_1757:
	mov	eax, 1
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx + 0x90]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x20]
	nop	
	add	rcx, qword ptr [rdx + 0x28]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	qword ptr [rsi + 0x90], rcx
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x60], eax
	mov	rbp, rbp
	jmp	.label_1858
.label_1848:
	xor	eax, eax
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rcx + 0x90]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x20]
	add	rcx, qword ptr [rdx + 0x28]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	qword ptr [rsi + 0x90], rcx
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x60], eax
.label_1858:
	mov	eax, dword ptr [rbp - 0x60]
	mov	rbp, rbp
	mov	cl, 1
	mov	rbp, rbp
	mov	edx, dword ptr [rbp - 0x5c]
	mov	rsp, rsp
	or	edx, eax
	test	cl, 1
	nop	
	mov	dword ptr [rbp - 0x64], edx
	jne	.label_1877
	nop	
	jmp	.label_1759
.label_1877:
	mov	rax, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	cmp	qword ptr [rax + 0x20], 0
	mov	rbp, rbp
	jge	.label_1762
	movabs	rax, 0x8000000000000000
	mov	rcx, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rcx + 0x88]
	mov	rdx, qword ptr [rbp - 0x20]
	sub	rax, qword ptr [rdx + 0x20]
	cmp	rcx, rax
	mov	rbp, rbp
	jl	.label_1772
	jmp	.label_1788
.label_1762:
	movabs	rax, 0x7fffffffffffffff
	mov	rcx, qword ptr [rbp - 0x20]
	sub	rax, qword ptr [rcx + 0x20]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rdx + 0x88]
	lea	rsi, [rsi]
	jl	.label_1772
	jmp	.label_1788
.label_1759:
	mov	rax, qword ptr [rbp - 0x10]
	cmp	qword ptr [rax + 0x88], 0
	lea	rdi, [rdi]
	jge	.label_1809
	mov	rax, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	mov	rcx, qword ptr [rax + 0x20]
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rdx + 0x88]
	lea	rsi, [rsi]
	add	rdx, qword ptr [rax + 0x20]
	nop	
	cmp	rcx, rdx
	jle	.label_1772
	mov	rbp, rbp
	jmp	.label_1788
.label_1809:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	cmp	qword ptr [rax + 0x20], 0
	jge	.label_1829
	nop	
	mov	rax, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax + 0x88]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx + 0x88]
	nop	
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	add	rcx, qword ptr [rdx + 0x20]
	lea	rsi, [rsi]
	cmp	rax, rcx
	mov	rbp, rbp
	jle	.label_1772
	lea	rsi, [rsi]
	jmp	.label_1788
.label_1829:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	rax, qword ptr [rax + 0x88]
	mov	rcx, qword ptr [rbp - 0x20]
	add	rax, qword ptr [rcx + 0x20]
	mov	rsp, rsp
	cmp	rax, qword ptr [rcx + 0x20]
	jl	.label_1772
.label_1788:
	movabs	rax, 0x8000000000000000
	mov	rcx, qword ptr [rbp - 0x10]
	nop	
	mov	rcx, qword ptr [rcx + 0x88]
	mov	rdx, qword ptr [rbp - 0x20]
	nop	
	add	rcx, qword ptr [rdx + 0x20]
	nop	
	cmp	rcx, rax
	mov	rbp, rbp
	jl	.label_1772
	movabs	rax, 0x7fffffffffffffff
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	rcx, qword ptr [rcx + 0x88]
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x20]
	nop	
	add	rcx, qword ptr [rdx + 0x20]
	cmp	rax, rcx
	jge	.label_1819
.label_1772:
	mov	eax, 1
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx + 0x88]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x20]
	add	rcx, qword ptr [rdx + 0x20]
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x10]
	mov	qword ptr [rsi + 0x88], rcx
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x68], eax
	nop	
	jmp	.label_1860
.label_1819:
	nop	
	xor	eax, eax
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x10]
	nop	
	mov	rcx, qword ptr [rcx + 0x88]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x20]
	add	rcx, qword ptr [rdx + 0x20]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	qword ptr [rsi + 0x88], rcx
	mov	dword ptr [rbp - 0x68], eax
.label_1860:
	mov	eax, dword ptr [rbp - 0x68]
	mov	cl, 1
	mov	rsp, rsp
	mov	edx, dword ptr [rbp - 0x64]
	nop	
	or	edx, eax
	test	cl, 1
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x6c], edx
	jne	.label_1752
	jmp	.label_1767
.label_1752:
	nop	
	mov	rax, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	cmp	qword ptr [rax + 0x18], 0
	lea	rdi, [rdi]
	jge	.label_1769
	mov	rsp, rsp
	movabs	rax, 0x8000000000000000
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx + 0x80]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x20]
	sub	rax, qword ptr [rdx + 0x18]
	cmp	rcx, rax
	lea	rdi, [rdi]
	jl	.label_1776
	nop	
	jmp	.label_1797
.label_1769:
	movabs	rax, 0x7fffffffffffffff
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x20]
	sub	rax, qword ptr [rcx + 0x18]
	mov	rdx, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	cmp	rax, qword ptr [rdx + 0x80]
	mov	rsp, rsp
	jl	.label_1776
	nop	
	jmp	.label_1797
.label_1767:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	cmp	qword ptr [rax + 0x80], 0
	nop	
	jge	.label_1817
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rax + 0x18]
	nop	
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rdx + 0x80]
	add	rdx, qword ptr [rax + 0x18]
	cmp	rcx, rdx
	jle	.label_1776
	lea	rsi, [rsi]
	jmp	.label_1797
.label_1817:
	mov	rax, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	cmp	qword ptr [rax + 0x18], 0
	lea	rdi, [rdi]
	jge	.label_1832
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x80]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	rcx, qword ptr [rcx + 0x80]
	mov	rdx, qword ptr [rbp - 0x20]
	add	rcx, qword ptr [rdx + 0x18]
	cmp	rax, rcx
	lea	rdi, [rdi]
	jle	.label_1776
	lea	rdi, [rdi]
	jmp	.label_1797
.label_1832:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax + 0x80]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	add	rax, qword ptr [rcx + 0x18]
	cmp	rax, qword ptr [rcx + 0x18]
	jl	.label_1776
.label_1797:
	movabs	rax, 0x8000000000000000
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx + 0x80]
	mov	rdx, qword ptr [rbp - 0x20]
	add	rcx, qword ptr [rdx + 0x18]
	cmp	rcx, rax
	lea	rdi, [rdi]
	jl	.label_1776
	mov	rbp, rbp
	movabs	rax, 0x7fffffffffffffff
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx + 0x80]
	mov	rdx, qword ptr [rbp - 0x20]
	add	rcx, qword ptr [rdx + 0x18]
	lea	rsi, [rsi]
	cmp	rax, rcx
	lea	rdi, [rdi]
	jge	.label_1853
.label_1776:
	mov	eax, 1
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	rcx, qword ptr [rcx + 0x80]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	add	rcx, qword ptr [rdx + 0x18]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	qword ptr [rsi + 0x80], rcx
	mov	dword ptr [rbp - 0x70], eax
	mov	rbp, rbp
	jmp	.label_1878
.label_1853:
	xor	eax, eax
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rcx + 0x80]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x20]
	add	rcx, qword ptr [rdx + 0x18]
	mov	rsi, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	qword ptr [rsi + 0x80], rcx
	mov	dword ptr [rbp - 0x70], eax
.label_1878:
	nop	
	mov	eax, dword ptr [rbp - 0x70]
	mov	rsp, rsp
	mov	cl, 1
	mov	edx, dword ptr [rbp - 0x6c]
	nop	
	or	edx, eax
	test	cl, 1
	nop	
	mov	dword ptr [rbp - 0x74], edx
	lea	rsi, [rsi]
	jne	.label_1764
	jmp	.label_1775
.label_1764:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x20]
	cmp	qword ptr [rax + 0x10], 0
	jge	.label_1778
	lea	rsi, [rsi]
	movabs	rax, 0x8000000000000000
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx + 0x78]
	mov	rdx, qword ptr [rbp - 0x20]
	sub	rax, qword ptr [rdx + 0x10]
	lea	rsi, [rsi]
	cmp	rcx, rax
	jl	.label_1785
	lea	rdi, [rdi]
	jmp	.label_1806
.label_1778:
	mov	rsp, rsp
	movabs	rax, 0x7fffffffffffffff
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x20]
	sub	rax, qword ptr [rcx + 0x10]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	cmp	rax, qword ptr [rdx + 0x78]
	jl	.label_1785
	mov	rbp, rbp
	jmp	.label_1806
.label_1775:
	nop	
	mov	rax, qword ptr [rbp - 0x10]
	nop	
	cmp	qword ptr [rax + 0x78], 0
	jge	.label_1823
	mov	rax, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	mov	rcx, qword ptr [rax + 0x10]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rdx + 0x78]
	add	rdx, qword ptr [rax + 0x10]
	cmp	rcx, rdx
	jle	.label_1785
	nop	
	jmp	.label_1806
.label_1823:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	cmp	qword ptr [rax + 0x10], 0
	mov	rsp, rsp
	jge	.label_1834
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x78]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx + 0x78]
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	add	rcx, qword ptr [rdx + 0x10]
	nop	
	cmp	rax, rcx
	jle	.label_1785
	lea	rdi, [rdi]
	jmp	.label_1806
.label_1834:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x78]
	mov	rcx, qword ptr [rbp - 0x20]
	add	rax, qword ptr [rcx + 0x10]
	cmp	rax, qword ptr [rcx + 0x10]
	mov	rsp, rsp
	jl	.label_1785
.label_1806:
	movabs	rax, 0x8000000000000000
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx + 0x78]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	add	rcx, qword ptr [rdx + 0x10]
	cmp	rcx, rax
	mov	rbp, rbp
	jl	.label_1785
	movabs	rax, 0x7fffffffffffffff
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx + 0x78]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	add	rcx, qword ptr [rdx + 0x10]
	cmp	rax, rcx
	jge	.label_1856
.label_1785:
	mov	eax, 1
	mov	rcx, qword ptr [rbp - 0x10]
	nop	
	mov	rcx, qword ptr [rcx + 0x78]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x20]
	add	rcx, qword ptr [rdx + 0x10]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	qword ptr [rsi + 0x78], rcx
	mov	dword ptr [rbp - 0x78], eax
	jmp	.label_1861
.label_1856:
	mov	rsp, rsp
	xor	eax, eax
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	rcx, qword ptr [rcx + 0x78]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x20]
	add	rcx, qword ptr [rdx + 0x10]
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x10]
	mov	qword ptr [rsi + 0x78], rcx
	mov	dword ptr [rbp - 0x78], eax
.label_1861:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x78]
	mov	rbp, rbp
	mov	cl, 1
	mov	edx, dword ptr [rbp - 0x74]
	mov	rbp, rbp
	or	edx, eax
	test	cl, 1
	nop	
	mov	dword ptr [rbp - 0x7c], edx
	lea	rsi, [rsi]
	jne	.label_1755
	jmp	.label_1771
.label_1755:
	mov	rax, qword ptr [rbp - 0x20]
	nop	
	cmp	qword ptr [rax + 8], 0
	jge	.label_1773
	movabs	rax, 0x8000000000000000
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx + 0x70]
	mov	rdx, qword ptr [rbp - 0x20]
	sub	rax, qword ptr [rdx + 8]
	cmp	rcx, rax
	mov	rbp, rbp
	jl	.label_1779
	jmp	.label_1783
.label_1773:
	movabs	rax, 0x7fffffffffffffff
	mov	rcx, qword ptr [rbp - 0x20]
	nop	
	sub	rax, qword ptr [rcx + 8]
	mov	rdx, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rdx + 0x70]
	mov	rbp, rbp
	jl	.label_1779
	nop	
	jmp	.label_1783
.label_1771:
	mov	rax, qword ptr [rbp - 0x10]
	cmp	qword ptr [rax + 0x70], 0
	lea	rdi, [rdi]
	jge	.label_1814
	nop	
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rax + 8]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rdx + 0x70]
	add	rdx, qword ptr [rax + 8]
	cmp	rcx, rdx
	mov	rbp, rbp
	jle	.label_1779
	lea	rsi, [rsi]
	jmp	.label_1783
.label_1814:
	mov	rax, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	cmp	qword ptr [rax + 8], 0
	mov	rbp, rbp
	jge	.label_1828
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x70]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx + 0x70]
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x20]
	add	rcx, qword ptr [rdx + 8]
	mov	rbp, rbp
	cmp	rax, rcx
	jle	.label_1779
	nop	
	jmp	.label_1783
.label_1828:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x70]
	mov	rcx, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	add	rax, qword ptr [rcx + 8]
	cmp	rax, qword ptr [rcx + 8]
	mov	rsp, rsp
	jl	.label_1779
.label_1783:
	movabs	rax, 0x8000000000000000
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	rcx, qword ptr [rcx + 0x70]
	mov	rdx, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	add	rcx, qword ptr [rdx + 8]
	nop	
	cmp	rcx, rax
	jl	.label_1779
	movabs	rax, 0x7fffffffffffffff
	mov	rcx, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rcx + 0x70]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x20]
	nop	
	add	rcx, qword ptr [rdx + 8]
	cmp	rax, rcx
	lea	rdi, [rdi]
	jge	.label_1849
.label_1779:
	mov	rbp, rbp
	mov	eax, 1
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	rcx, qword ptr [rcx + 0x70]
	mov	rdx, qword ptr [rbp - 0x20]
	add	rcx, qword ptr [rdx + 8]
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x10]
	mov	qword ptr [rsi + 0x70], rcx
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x80], eax
	jmp	.label_1859
.label_1849:
	xor	eax, eax
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx + 0x70]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x20]
	nop	
	add	rcx, qword ptr [rdx + 8]
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x10]
	mov	qword ptr [rsi + 0x70], rcx
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x80], eax
.label_1859:
	mov	eax, dword ptr [rbp - 0x80]
	mov	cl, 1
	mov	rsp, rsp
	mov	edx, dword ptr [rbp - 0x7c]
	nop	
	or	edx, eax
	mov	rbp, rbp
	test	cl, 1
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x84], edx
	jne	.label_1874
	lea	rdi, [rdi]
	jmp	.label_1756
.label_1874:
	mov	rax, qword ptr [rbp - 0x20]
	cmp	qword ptr [rax], 0
	jge	.label_1760
	movabs	rax, 0x8000000000000000
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx + 0x68]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	sub	rax, qword ptr [rdx]
	nop	
	cmp	rcx, rax
	lea	rdi, [rdi]
	jl	.label_1754
	jmp	.label_1794
.label_1760:
	movabs	rax, 0x7fffffffffffffff
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x20]
	sub	rax, qword ptr [rcx]
	mov	rdx, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rdx + 0x68]
	jl	.label_1754
	jmp	.label_1794
.label_1756:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x10]
	cmp	qword ptr [rax + 0x68], 0
	lea	rsi, [rsi]
	jge	.label_1804
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rax]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	rdx, qword ptr [rdx + 0x68]
	add	rdx, qword ptr [rax]
	nop	
	cmp	rcx, rdx
	lea	rsi, [rsi]
	jle	.label_1754
	lea	rdi, [rdi]
	jmp	.label_1794
.label_1804:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	cmp	qword ptr [rax], 0
	jge	.label_1824
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x68]
	nop	
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx + 0x68]
	mov	rdx, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	add	rcx, qword ptr [rdx]
	mov	rsp, rsp
	cmp	rax, rcx
	jle	.label_1754
	mov	rsp, rsp
	jmp	.label_1794
.label_1824:
	mov	rax, qword ptr [rbp - 0x10]
	nop	
	mov	rax, qword ptr [rax + 0x68]
	mov	rcx, qword ptr [rbp - 0x20]
	nop	
	add	rax, qword ptr [rcx]
	cmp	rax, qword ptr [rcx]
	jl	.label_1754
.label_1794:
	movabs	rax, 0x8000000000000000
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rcx + 0x68]
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	add	rcx, qword ptr [rdx]
	lea	rsi, [rsi]
	cmp	rcx, rax
	jl	.label_1754
	movabs	rax, 0x7fffffffffffffff
	nop	
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx + 0x68]
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	add	rcx, qword ptr [rdx]
	cmp	rax, rcx
	mov	rsp, rsp
	jge	.label_1846
.label_1754:
	mov	eax, 1
	mov	rcx, qword ptr [rbp - 0x10]
	nop	
	mov	rcx, qword ptr [rcx + 0x68]
	mov	rdx, qword ptr [rbp - 0x20]
	add	rcx, qword ptr [rdx]
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x10]
	mov	qword ptr [rsi + 0x68], rcx
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x88], eax
	lea	rsi, [rsi]
	jmp	.label_1851
.label_1846:
	xor	eax, eax
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx + 0x68]
	mov	rdx, qword ptr [rbp - 0x20]
	add	rcx, qword ptr [rdx]
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x10]
	mov	qword ptr [rsi + 0x68], rcx
	nop	
	mov	dword ptr [rbp - 0x88], eax
.label_1851:
	mov	eax, dword ptr [rbp - 0x88]
	lea	rdi, [rdi]
	mov	ecx, dword ptr [rbp - 0x84]
	mov	rbp, rbp
	or	ecx, eax
	lea	rsi, [rsi]
	cmp	ecx, 0
	je	.label_1850
.label_1870:
	mov	byte ptr [rbp - 1], 0
	jmp	.label_1875
.label_1850:
	mov	rax, qword ptr [rbp - 0x10]
	mov	byte ptr [rax + 0xa1], 1
	mov	byte ptr [rbp - 1], 1
.label_1875:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	lea	rsi, [rsi]
	add	rsp, 8
	nop	
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x41b020

	.globl dbg_printf
	.type dbg_printf, @function
dbg_printf:
	nop	
	push	rbp
	mov	rsp, rsp
	mov	rbp, rsp
	mov	rsp, rsp
	sub	rsp, 0x190
	lea	rsi, [rsi]
	test	al, al
	lea	rsi, [rsi]
	movaps	xmmword ptr [rbp - 0xe0], xmm7
	lea	rsi, [rsi]
	movaps	xmmword ptr [rbp - 0xf0], xmm6
	movaps	xmmword ptr [rbp - 0x100], xmm5
	mov	rsp, rsp
	movaps	xmmword ptr [rbp - 0x110], xmm4
	mov	rsp, rsp
	movaps	xmmword ptr [rbp - 0x120], xmm3
	mov	rsp, rsp
	movaps	xmmword ptr [rbp - 0x130], xmm2
	lea	rsi, [rsi]
	movaps	xmmword ptr [rbp - 0x140], xmm1
	movaps	xmmword ptr [rbp - 0x150], xmm0
	mov	qword ptr [rbp - 0x158], rdi
	mov	qword ptr [rbp - 0x160], r9
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x168], r8
	nop	
	mov	qword ptr [rbp - 0x170], rcx
	mov	qword ptr [rbp - 0x178], rdx
	nop	
	mov	qword ptr [rbp - 0x180], rsi
	je	.label_1881
	lea	rdi, [rdi]
	movaps	xmm0, xmmword ptr [rbp - 0x150]
	movaps	xmmword ptr [rbp - 0xa0], xmm0
	mov	rsp, rsp
	movaps	xmm1, xmmword ptr [rbp - 0x140]
	lea	rsi, [rsi]
	movaps	xmmword ptr [rbp - 0x90], xmm1
	nop	
	movaps	xmm2, xmmword ptr [rbp - 0x130]
	movaps	xmmword ptr [rbp - 0x80], xmm2
	mov	rbp, rbp
	movaps	xmm3, xmmword ptr [rbp - 0x120]
	movaps	xmmword ptr [rbp - 0x70], xmm3
	mov	rsp, rsp
	movaps	xmm4, xmmword ptr [rbp - 0x110]
	mov	rbp, rbp
	movaps	xmmword ptr [rbp - 0x60], xmm4
	movaps	xmm5, xmmword ptr [rbp - 0x100]
	mov	rsp, rsp
	movaps	xmmword ptr [rbp - 0x50], xmm5
	movaps	xmm6, xmmword ptr [rbp - 0xf0]
	movaps	xmmword ptr [rbp - 0x40], xmm6
	movaps	xmm7, xmmword ptr [rbp - 0xe0]
	movaps	xmmword ptr [rbp - 0x30], xmm7
.label_1881:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x160]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0xa8], rax
	mov	rcx, qword ptr [rbp - 0x168]
	mov	qword ptr [rbp - 0xb0], rcx
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x170]
	mov	qword ptr [rbp - 0xb8], rdx
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x178]
	nop	
	mov	qword ptr [rbp - 0xc0], rsi
	mov	rdi, qword ptr [rbp - 0x180]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0xc8], rdi
	mov	r8, qword ptr [rbp - 0x158]
	mov	qword ptr [rbp - 8], r8
	mov	rsi,  qword ptr [word ptr [rip + stderr]]
	mov	r9d, OFFSET FLAT:.str.96
	mov	edi, r9d
	lea	rsi, [rsi]
	call	fputs
	mov	rbp, rbp
	lea	rcx, [rbp - 0xd0]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x10], rcx
	lea	rsi, [rsi]
	lea	rcx, [rbp + 0x10]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x18], rcx
	mov	dword ptr [rbp - 0x1c], 0x30
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x20], 8
	mov	rdi,  qword ptr [word ptr [rip + stderr]]
	mov	rsi, qword ptr [rbp - 8]
	nop	
	lea	rdx, [rbp - 0x20]
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x184], eax
	call	vfprintf
	mov	dword ptr [rbp - 0x188], eax
	mov	rsp, rsp
	add	rsp, 0x190
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x41b210

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
	#Procedure 0x41b2b0

	.globl digits_to_date_time
	.type digits_to_date_time, @function
digits_to_date_time:
	push	rbp
	mov	rbp, rbp
	mov	rbp, rsp
	lea	rax, [rbp + 0x10]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	cmp	qword ptr [rdi + 0xa8], 0
	nop	
	mov	qword ptr [rbp - 0x10], rax
	nop	
	je	.label_1888
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 8]
	cmp	qword ptr [rax + 0x30], 0
	jne	.label_1888
	mov	rax, qword ptr [rbp - 8]
	test	byte ptr [rax + 0xa1], 1
	jne	.label_1888
	nop	
	mov	rax, qword ptr [rbp - 8]
	cmp	qword ptr [rax + 0xc8], 0
	jne	.label_1891
	mov	eax, 2
	mov	rsp, rsp
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x10]
	nop	
	cmp	rcx, qword ptr [rdx + 0x10]
	lea	rsi, [rsi]
	jge	.label_1888
.label_1891:
	nop	
	mov	rax, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	mov	byte ptr [rax + 0xd8], 1
	mov	rax, qword ptr [rbp - 8]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rcx]
	lea	rsi, [rsi]
	mov	qword ptr [rax + 0x20], rdx
	mov	rdx, qword ptr [rcx + 8]
	mov	qword ptr [rax + 0x28], rdx
	mov	rdx, qword ptr [rcx + 0x10]
	mov	qword ptr [rax + 0x30], rdx
	mov	rsp, rsp
	jmp	.label_1886
.label_1888:
	lea	rsi, [rsi]
	mov	eax, 4
	mov	ecx, eax
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	cmp	rcx, qword ptr [rdx + 0x10]
	jge	.label_1887
	mov	eax, 0x2710
	lea	rdi, [rdi]
	mov	ecx, eax
	mov	eax, 0x64
	mov	rsp, rsp
	mov	edx, eax
	mov	rsi, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rsi + 0xa8]
	add	rdi, 1
	mov	rsp, rsp
	mov	qword ptr [rsi + 0xa8], rdi
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	rax, qword ptr [rsi + 8]
	mov	qword ptr [rbp - 0x18], rdx
	lea	rsi, [rsi]
	cqo	
	nop	
	mov	rdi, qword ptr [rbp - 0x18]
	idiv	rdi
	mov	rsp, rsp
	mov	r8, qword ptr [rbp - 8]
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
	mov	r8, qword ptr [rbp - 8]
	mov	rbp, rbp
	mov	qword ptr [r8 + 0x38], rdx
	mov	rdx, qword ptr [rsi + 8]
	mov	rax, rdx
	cqo	
	idiv	rcx
	nop	
	mov	rcx, qword ptr [rbp - 8]
	nop	
	mov	qword ptr [rcx + 0x28], rax
	mov	rax, qword ptr [rsi + 0x10]
	sub	rax, 4
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 8]
	mov	qword ptr [rcx + 0x30], rax
	mov	rbp, rbp
	jmp	.label_1885
.label_1887:
	mov	rax, qword ptr [rbp - 8]
	mov	rcx, qword ptr [rax + 0xc8]
	add	rcx, 1
	mov	qword ptr [rax + 0xc8], rcx
	mov	rax, qword ptr [rbp - 0x10]
	cmp	qword ptr [rax + 0x10], 2
	mov	rbp, rbp
	jg	.label_1889
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rax + 8]
	nop	
	mov	rdx, qword ptr [rbp - 8]
	mov	qword ptr [rdx + 0x48], rcx
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 8]
	nop	
	mov	qword ptr [rcx + 0x50], 0
	lea	rdi, [rdi]
	jmp	.label_1890
.label_1889:
	mov	eax, 0x64
	nop	
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rdx + 8]
	cqo	
	idiv	rcx
	mov	rsi, qword ptr [rbp - 8]
	mov	qword ptr [rsi + 0x48], rax
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 8]
	nop	
	cqo	
	mov	rsp, rsp
	idiv	rcx
	mov	rcx, qword ptr [rbp - 8]
	mov	qword ptr [rcx + 0x50], rdx
.label_1890:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 8]
	nop	
	mov	qword ptr [rax + 0x58], 0
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rax + 0x60], 0
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 8]
	mov	dword ptr [rax + 0x1c], 2
.label_1885:
	mov	rsp, rsp
	jmp	.label_1886
.label_1886:
	mov	rsp, rsp
	pop	rbp
	lea	rsi, [rsi]
	ret	
	.section	.text
	.align	32
	#Procedure 0x41b500

	.globl yyerror
	.type yyerror, @function
yyerror:
	push	rbp
	lea	rdi, [rdi]
	mov	rbp, rsp
	nop	
	xor	eax, eax
	mov	qword ptr [rbp - 8], rdi
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x10], rsi
	lea	rdi, [rdi]
	pop	rbp
	mov	rsp, rsp
	ret	
	.section	.text
	.align	32
	#Procedure 0x41b520

	.globl yydestruct
	.type yydestruct, @function
yydestruct:
	push	rbp
	lea	rdi, [rdi]
	mov	rbp, rsp
	mov	rsp, rsp
	mov	qword ptr [rbp - 8], rdi
	mov	dword ptr [rbp - 0xc], esi
	nop	
	mov	qword ptr [rbp - 0x18], rdx
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x20], rcx
	nop	
	cmp	qword ptr [rbp - 8], 0
	lea	rsi, [rsi]
	jne	.label_1892
	movabs	rax, OFFSET FLAT:.str.97
	mov	qword ptr [rbp - 8], rax
.label_1892:
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x41b560

	.globl parse_datetime
	.type parse_datetime, @function
parse_datetime:
	mov	rbp, rbp
	push	rbp
	mov	rbp, rsp
	nop	
	sub	rsp, 0x40
	mov	rbp, rbp
	movabs	rax, OFFSET FLAT:.str_5
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], rdx
	mov	rdi, rax
	nop	
	call	getenv
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x28], rax
	mov	rdi, qword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	call	tzalloc
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x30], rax
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x30], 0
	mov	rsp, rsp
	jne	.label_1893
	mov	byte ptr [rbp - 1], 0
	jmp	.label_1894
.label_1893:
	mov	rbp, rbp
	xor	ecx, ecx
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	mov	r8, qword ptr [rbp - 0x30]
	mov	r9, qword ptr [rbp - 0x28]
	nop	
	call	parse_datetime2
	lea	rdi, [rdi]
	and	al, 1
	mov	byte ptr [rbp - 0x31], al
	mov	rdi, qword ptr [rbp - 0x30]
	lea	rsi, [rsi]
	call	tzfree
	mov	al, byte ptr [rbp - 0x31]
	mov	rsp, rsp
	and	al, 1
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 1], al
.label_1894:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	nop	
	add	rsp, 0x40
	pop	rbp
	mov	rbp, rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x41b620

	.globl parse_datetime2
	.type parse_datetime2, @function
parse_datetime2:
	lea	rdi, [rdi]
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0xf40
	mov	qword ptr [rbp - 8], rdi
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x1c], ecx
	mov	qword ptr [rbp - 0x28], r8
	nop	
	mov	qword ptr [rbp - 0x30], r9
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x131], 0
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rbp - 0x10]
	nop	
	mov	qword ptr [rbp - 0x5a8], rdx
	lea	rdi, [rdi]
	call	strlen
	mov	rdx, qword ptr [rbp - 0x5a8]
	add	rdx, rax
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x140], rdx
	nop	
	mov	qword ptr [rbp - 0x148], 0
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x18], 0
	mov	rbp, rbp
	jne	.label_2897
	mov	rbp, rbp
	lea	rdi, [rbp - 0x1c0]
	mov	rbp, rbp
	call	gettime
	lea	rdi, [rbp - 0x1c0]
	mov	qword ptr [rbp - 0x18], rdi
.label_2897:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	mov	rax, qword ptr [rax]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x1c8], rax
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax + 8]
	mov	rsp, rsp
	mov	ecx, eax
	mov	dword ptr [rbp - 0x1cc], ecx
.label_3368:
	mov	rax, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	cl, byte ptr [rax]
	mov	byte ptr [rbp - 0x1cd], cl
	lea	rdi, [rdi]
	movzx	edi, byte ptr [rbp - 0x1cd]
	call	c_isspace
	nop	
	test	al, 1
	nop	
	jne	.label_3364
	jmp	.label_3366
.label_3364:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 1
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_3368
.label_3366:
	movabs	rsi, OFFSET FLAT:.str.19_0
	nop	
	mov	eax, 4
	lea	rsi, [rsi]
	mov	edx, eax
	mov	rcx, qword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x1d8], rcx
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x10]
	call	strncmp
	cmp	eax, 0
	lea	rdi, [rdi]
	jne	.label_3384
	mov	rax, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	add	rax, 4
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x1e0], rax
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x1e8], 1
	mov	rax, qword ptr [rbp - 0x1e0]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x1f0], rax
.label_3548:
	mov	rax, qword ptr [rbp - 0x1f0]
	mov	rbp, rbp
	cmp	byte ptr [rax], 0
	je	.label_3397
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x1f0]
	mov	rsp, rsp
	movsx	ecx, byte ptr [rax]
	lea	rsi, [rsi]
	cmp	ecx, 0x5c
	jne	.label_3401
	mov	rax, qword ptr [rbp - 0x1f0]
	mov	rbp, rbp
	add	rax, 1
	mov	qword ptr [rbp - 0x1f0], rax
	mov	rax, qword ptr [rbp - 0x1f0]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0x5c
	lea	rdi, [rdi]
	je	.label_3408
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x1f0]
	movsx	ecx, byte ptr [rax]
	lea	rsi, [rsi]
	cmp	ecx, 0x22
	nop	
	je	.label_3408
	lea	rdi, [rdi]
	jmp	.label_3397
.label_3408:
	jmp	.label_3418
.label_3401:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x1f0]
	lea	rsi, [rsi]
	movsx	ecx, byte ptr [rax]
	mov	rbp, rbp
	cmp	ecx, 0x22
	jne	.label_3419
	nop	
	mov	eax, 0x64
	mov	rbp, rbp
	mov	ecx, eax
	lea	rdi, [rdi]
	lea	rdx, [rbp - 0x1b0]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x200], rdx
	cmp	rcx, qword ptr [rbp - 0x1e8]
	jge	.label_3428
	mov	rdi, qword ptr [rbp - 0x1e8]
	call	malloc
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x148], rax
	cmp	qword ptr [rbp - 0x148], 0
	lea	rdi, [rdi]
	jne	.label_3113
	nop	
	jmp	.label_2446
.label_3113:
	mov	rax, qword ptr [rbp - 0x148]
	mov	qword ptr [rbp - 0x200], rax
.label_3428:
	nop	
	mov	rax, qword ptr [rbp - 0x200]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x208], rax
	mov	rax, qword ptr [rbp - 0x1e0]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x1f0], rax
.label_3473:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x1f0]
	mov	rbp, rbp
	movsx	ecx, byte ptr [rax]
	mov	rbp, rbp
	cmp	ecx, 0x22
	je	.label_3460
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x1f0]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0x5c
	lea	rdi, [rdi]
	sete	dl
	lea	rsi, [rsi]
	and	dl, 1
	mov	rsp, rsp
	movzx	ecx, dl
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x1f0]
	nop	
	movsxd	rsi, ecx
	mov	rsp, rsp
	mov	rdi, rax
	nop	
	add	rdi, rsi
	mov	qword ptr [rbp - 0x1f0], rdi
	mov	dl, byte ptr [rax + rsi]
	mov	rax, qword ptr [rbp - 0x208]
	mov	rsi, rax
	lea	rsi, [rsi]
	add	rsi, 1
	mov	qword ptr [rbp - 0x208], rsi
	mov	byte ptr [rax], dl
	mov	rax, qword ptr [rbp - 0x1f0]
	add	rax, 1
	mov	qword ptr [rbp - 0x1f0], rax
	nop	
	jmp	.label_3473
.label_3460:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x208]
	mov	byte ptr [rax], 0
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x200]
	nop	
	call	tzalloc
	mov	qword ptr [rbp - 0x1f8], rax
	cmp	qword ptr [rbp - 0x1f8], 0
	jne	.label_3508
	jmp	.label_2446
.label_3508:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x1f8]
	mov	qword ptr [rbp - 0x1d8], rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x200]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x30], rax
	mov	rax, qword ptr [rbp - 0x1f0]
	lea	rsi, [rsi]
	add	rax, 1
	nop	
	mov	qword ptr [rbp - 0x10], rax
.label_3535:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	cl, byte ptr [rax]
	mov	byte ptr [rbp - 0x1cd], cl
	mov	rsp, rsp
	movzx	edi, byte ptr [rbp - 0x1cd]
	mov	rbp, rbp
	call	c_isspace
	test	al, 1
	nop	
	jne	.label_3530
	jmp	.label_3533
.label_3530:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 1
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_3535
.label_3533:
	mov	rbp, rbp
	jmp	.label_3397
.label_3419:
	lea	rdi, [rdi]
	jmp	.label_3418
.label_3418:
	mov	rsp, rsp
	jmp	.label_3545
.label_3545:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x1f0]
	nop	
	add	rax, 1
	mov	qword ptr [rbp - 0x1f0], rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x1e8]
	lea	rsi, [rsi]
	add	rax, 1
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x1e8], rax
	jmp	.label_3548
.label_3397:
	jmp	.label_3384
.label_3384:
	lea	rdx, [rbp - 0x240]
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x1d8]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x18]
	call	localtime_rz
	cmp	rax, 0
	nop	
	jne	.label_3571
	lea	rdi, [rdi]
	jmp	.label_2446
.label_3571:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0
	jne	.label_3576
	lea	rdi, [rdi]
	movabs	rax, OFFSET FLAT:.str.20_0
	mov	qword ptr [rbp - 0x10], rax
.label_3576:
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x358], rdx
	mov	eax, dword ptr [rbp - 0x1c]
	mov	rbp, rbp
	and	eax, 1
	lea	rsi, [rsi]
	cmp	eax, 0
	lea	rsi, [rsi]
	setne	sil
	and	sil, 1
	mov	byte ptr [rbp - 0x27f], sil
	mov	rsp, rsp
	test	cl, 1
	lea	rsi, [rsi]
	jne	.label_3584
	jmp	.label_3602
.label_3584:
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	mov	rsp, rsp
	jne	.label_3603
	mov	rbp, rbp
	jmp	.label_3606
.label_3603:
	mov	rsp, rsp
	mov	al, 1
	test	al, 1
	lea	rsi, [rsi]
	jne	.label_3607
	lea	rsi, [rsi]
	jmp	.label_3609
.label_3607:
	xor	eax, eax
	mov	rbp, rbp
	mov	cl, al
	mov	rbp, rbp
	test	cl, 1
	jne	.label_3611
	nop	
	jmp	.label_3613
.label_3611:
	mov	eax, dword ptr [rbp - 0x22c]
	mov	cl, al
	movsx	eax, cl
	cmp	eax, 0x7fffff94
	mov	rbp, rbp
	jl	.label_3614
	jmp	.label_2353
.label_3613:
	mov	eax, 0x7fffff93
	mov	ecx, dword ptr [rbp - 0x22c]
	mov	dl, cl
	movsx	ecx, dl
	mov	rsp, rsp
	cmp	eax, ecx
	lea	rsi, [rsi]
	jl	.label_3614
	jmp	.label_2353
.label_3609:
	mov	eax, dword ptr [rbp - 0x22c]
	mov	cl, al
	mov	rsp, rsp
	movsx	eax, cl
	cmp	eax, 0
	jge	.label_3625
	mov	eax, 0x6c
	mov	ecx, dword ptr [rbp - 0x22c]
	mov	dl, cl
	movsx	ecx, dl
	lea	rdi, [rdi]
	add	ecx, 0x6c
	lea	rdi, [rdi]
	cmp	eax, ecx
	jle	.label_3614
	lea	rsi, [rsi]
	jmp	.label_2353
.label_3625:
	lea	rsi, [rsi]
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	nop	
	jne	.label_3639
	lea	rsi, [rsi]
	jmp	.label_3642
.label_3639:
	mov	eax, dword ptr [rbp - 0x22c]
	nop	
	mov	cl, al
	movsx	eax, cl
	mov	rbp, rbp
	mov	edx, dword ptr [rbp - 0x22c]
	lea	rdi, [rdi]
	mov	cl, dl
	lea	rsi, [rsi]
	movsx	edx, cl
	nop	
	add	edx, 0x6c
	cmp	eax, edx
	mov	rbp, rbp
	jle	.label_3614
	jmp	.label_2353
.label_3642:
	mov	eax, dword ptr [rbp - 0x22c]
	nop	
	mov	cl, al
	movsx	eax, cl
	mov	rbp, rbp
	add	eax, 0x6c
	cmp	eax, 0x6c
	lea	rdi, [rdi]
	jl	.label_3614
.label_2353:
	mov	eax, dword ptr [rbp - 0x22c]
	mov	cl, al
	mov	rbp, rbp
	movsx	eax, cl
	add	eax, 0x6c
	cmp	eax, -0x80
	jl	.label_3614
	lea	rsi, [rsi]
	mov	eax, 0x7f
	mov	rbp, rbp
	mov	ecx, dword ptr [rbp - 0x22c]
	mov	dl, cl
	movsx	ecx, dl
	nop	
	add	ecx, 0x6c
	cmp	eax, ecx
	nop	
	jge	.label_2567
.label_3614:
	mov	al, 1
	mov	rbp, rbp
	mov	ecx, dword ptr [rbp - 0x22c]
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
	mov	qword ptr [rbp - 0x330], rsi
	test	al, 1
	jne	.label_1907
	jmp	.label_1930
.label_2567:
	xor	eax, eax
	lea	rdi, [rdi]
	mov	cl, al
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x22c]
	lea	rsi, [rsi]
	mov	dl, al
	movsx	eax, dl
	mov	rbp, rbp
	add	eax, 0x6c
	mov	rsp, rsp
	mov	dl, al
	movsx	rsi, dl
	mov	qword ptr [rbp - 0x330], rsi
	test	cl, 1
	jne	.label_1907
	lea	rdi, [rdi]
	jmp	.label_1930
.label_3606:
	mov	al, 1
	test	al, 1
	jne	.label_3702
	mov	rsp, rsp
	jmp	.label_3703
.label_3702:
	lea	rsi, [rsi]
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	nop	
	jne	.label_3706
	mov	rsp, rsp
	jmp	.label_3709
.label_3706:
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x22c], 0x7ffff894
	jl	.label_3345
	nop	
	jmp	.label_3298
.label_3709:
	nop	
	mov	eax, 0x7ffff893
	cmp	eax, dword ptr [rbp - 0x22c]
	mov	rsp, rsp
	jl	.label_3345
	jmp	.label_3298
.label_3703:
	lea	rsi, [rsi]
	cmp	dword ptr [rbp - 0x22c], 0
	lea	rsi, [rsi]
	jge	.label_3722
	lea	rsi, [rsi]
	mov	eax, 0x76c
	lea	rsi, [rsi]
	mov	ecx, dword ptr [rbp - 0x22c]
	add	ecx, 0x76c
	mov	rbp, rbp
	cmp	eax, ecx
	jle	.label_3345
	jmp	.label_3298
.label_3722:
	xor	eax, eax
	nop	
	mov	cl, al
	test	cl, 1
	jne	.label_3731
	jmp	.label_3735
.label_3731:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x22c]
	lea	rsi, [rsi]
	mov	ecx, dword ptr [rbp - 0x22c]
	mov	rsp, rsp
	add	ecx, 0x76c
	mov	rbp, rbp
	cmp	eax, ecx
	mov	rsp, rsp
	jle	.label_3345
	jmp	.label_3298
.label_3735:
	nop	
	mov	eax, dword ptr [rbp - 0x22c]
	add	eax, 0x76c
	lea	rdi, [rdi]
	cmp	eax, 0x76c
	jl	.label_3345
.label_3298:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x22c]
	mov	rsp, rsp
	add	eax, 0x76c
	lea	rdi, [rdi]
	cmp	eax, -0x80
	lea	rdi, [rdi]
	jl	.label_3345
	nop	
	mov	eax, 0x7f
	mov	ecx, dword ptr [rbp - 0x22c]
	nop	
	add	ecx, 0x76c
	lea	rdi, [rdi]
	cmp	eax, ecx
	jge	.label_3760
.label_3345:
	mov	al, 1
	mov	ecx, dword ptr [rbp - 0x22c]
	add	ecx, 0x76c
	lea	rsi, [rsi]
	mov	dl, cl
	lea	rdi, [rdi]
	movsx	rsi, dl
	mov	qword ptr [rbp - 0x330], rsi
	test	al, 1
	lea	rsi, [rsi]
	jne	.label_1907
	lea	rsi, [rsi]
	jmp	.label_1930
.label_3760:
	lea	rsi, [rsi]
	xor	eax, eax
	mov	cl, al
	mov	eax, dword ptr [rbp - 0x22c]
	add	eax, 0x76c
	mov	dl, al
	lea	rsi, [rsi]
	movsx	rsi, dl
	mov	qword ptr [rbp - 0x330], rsi
	mov	rsp, rsp
	test	cl, 1
	jne	.label_1907
	jmp	.label_1930
.label_3602:
	mov	rsp, rsp
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_3341
	nop	
	jmp	.label_3792
.label_3341:
	lea	rsi, [rsi]
	xor	eax, eax
	lea	rdi, [rdi]
	mov	cl, al
	nop	
	test	cl, 1
	lea	rdi, [rdi]
	jne	.label_2013
	jmp	.label_3396
.label_2013:
	lea	rsi, [rsi]
	mov	al, 1
	mov	rbp, rbp
	test	al, 1
	jne	.label_3798
	jmp	.label_3802
.label_3798:
	mov	rbp, rbp
	xor	eax, eax
	lea	rdi, [rdi]
	mov	cl, al
	test	cl, 1
	jne	.label_3804
	mov	rsp, rsp
	jmp	.label_3805
.label_3804:
	mov	eax, dword ptr [rbp - 0x22c]
	mov	cx, ax
	movsx	eax, cx
	cmp	eax, 0x7ffff894
	nop	
	jl	.label_3762
	nop	
	jmp	.label_2122
.label_3805:
	mov	rbp, rbp
	mov	eax, 0x7ffff893
	mov	ecx, dword ptr [rbp - 0x22c]
	nop	
	mov	dx, cx
	movsx	ecx, dx
	cmp	eax, ecx
	lea	rdi, [rdi]
	jl	.label_3762
	jmp	.label_2122
.label_3802:
	mov	eax, dword ptr [rbp - 0x22c]
	nop	
	mov	cx, ax
	movsx	eax, cx
	lea	rdi, [rdi]
	cmp	eax, 0
	mov	rsp, rsp
	jge	.label_3816
	mov	rbp, rbp
	mov	eax, 0x76c
	mov	ecx, dword ptr [rbp - 0x22c]
	mov	dx, cx
	mov	rbp, rbp
	movsx	ecx, dx
	nop	
	add	ecx, 0x76c
	mov	rbp, rbp
	cmp	eax, ecx
	lea	rdi, [rdi]
	jle	.label_3762
	mov	rsp, rsp
	jmp	.label_2122
.label_3816:
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	nop	
	jne	.label_3836
	jmp	.label_3838
.label_3836:
	mov	eax, dword ptr [rbp - 0x22c]
	mov	cx, ax
	mov	rsp, rsp
	movsx	eax, cx
	mov	edx, dword ptr [rbp - 0x22c]
	mov	rsp, rsp
	mov	cx, dx
	movsx	edx, cx
	add	edx, 0x76c
	cmp	eax, edx
	jle	.label_3762
	mov	rbp, rbp
	jmp	.label_2122
.label_3838:
	mov	eax, dword ptr [rbp - 0x22c]
	mov	cx, ax
	movsx	eax, cx
	add	eax, 0x76c
	cmp	eax, 0x76c
	mov	rbp, rbp
	jl	.label_3762
.label_2122:
	nop	
	mov	eax, dword ptr [rbp - 0x22c]
	lea	rsi, [rsi]
	mov	cx, ax
	movsx	eax, cx
	mov	rsp, rsp
	add	eax, 0x76c
	cmp	eax, 0xffff8000
	jl	.label_3762
	mov	rbp, rbp
	mov	eax, 0x7fff
	mov	ecx, dword ptr [rbp - 0x22c]
	lea	rsi, [rsi]
	mov	dx, cx
	movsx	ecx, dx
	lea	rdi, [rdi]
	add	ecx, 0x76c
	mov	rsp, rsp
	cmp	eax, ecx
	jge	.label_3864
.label_3762:
	mov	al, 1
	lea	rsi, [rsi]
	mov	ecx, dword ptr [rbp - 0x22c]
	mov	dx, cx
	lea	rsi, [rsi]
	movsx	ecx, dx
	add	ecx, 0x76c
	mov	dx, cx
	mov	rsp, rsp
	movsx	rsi, dx
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x330], rsi
	test	al, 1
	jne	.label_1907
	lea	rdi, [rdi]
	jmp	.label_1930
.label_3864:
	xor	eax, eax
	nop	
	mov	cl, al
	mov	eax, dword ptr [rbp - 0x22c]
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
	mov	qword ptr [rbp - 0x330], rsi
	test	cl, 1
	lea	rsi, [rsi]
	jne	.label_1907
	nop	
	jmp	.label_1930
.label_3396:
	lea	rsi, [rsi]
	mov	al, 1
	test	al, 1
	jne	.label_1960
	jmp	.label_1966
.label_1960:
	mov	rsp, rsp
	xor	eax, eax
	lea	rdi, [rdi]
	mov	cl, al
	nop	
	test	cl, 1
	jne	.label_1968
	jmp	.label_1978
.label_1968:
	mov	rbp, rbp
	cmp	dword ptr [rbp - 0x22c], 0x7ffff894
	jl	.label_1981
	mov	rsp, rsp
	jmp	.label_1991
.label_1978:
	mov	eax, 0x7ffff893
	cmp	eax, dword ptr [rbp - 0x22c]
	jl	.label_1981
	mov	rsp, rsp
	jmp	.label_1991
.label_1966:
	cmp	dword ptr [rbp - 0x22c], 0
	lea	rdi, [rdi]
	jge	.label_2003
	mov	eax, 0x76c
	mov	ecx, dword ptr [rbp - 0x22c]
	mov	rbp, rbp
	add	ecx, 0x76c
	cmp	eax, ecx
	mov	rbp, rbp
	jle	.label_1981
	jmp	.label_1991
.label_2003:
	xor	eax, eax
	mov	cl, al
	nop	
	test	cl, 1
	jne	.label_2020
	jmp	.label_2023
.label_2020:
	mov	eax, dword ptr [rbp - 0x22c]
	mov	ecx, dword ptr [rbp - 0x22c]
	add	ecx, 0x76c
	nop	
	cmp	eax, ecx
	jle	.label_1981
	jmp	.label_1991
.label_2023:
	mov	eax, dword ptr [rbp - 0x22c]
	add	eax, 0x76c
	cmp	eax, 0x76c
	jl	.label_1981
.label_1991:
	mov	eax, dword ptr [rbp - 0x22c]
	lea	rsi, [rsi]
	add	eax, 0x76c
	cmp	eax, 0xffff8000
	nop	
	jl	.label_1981
	lea	rdi, [rdi]
	mov	eax, 0x7fff
	mov	ecx, dword ptr [rbp - 0x22c]
	add	ecx, 0x76c
	lea	rdi, [rdi]
	cmp	eax, ecx
	jge	.label_2043
.label_1981:
	mov	al, 1
	mov	ecx, dword ptr [rbp - 0x22c]
	nop	
	add	ecx, 0x76c
	mov	rbp, rbp
	mov	dx, cx
	mov	rbp, rbp
	movsx	rsi, dx
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x330], rsi
	test	al, 1
	jne	.label_1907
	jmp	.label_1930
.label_2043:
	nop	
	xor	eax, eax
	mov	cl, al
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x22c]
	add	eax, 0x76c
	mov	dx, ax
	nop	
	movsx	rsi, dx
	mov	qword ptr [rbp - 0x330], rsi
	test	cl, 1
	jne	.label_1907
	mov	rbp, rbp
	jmp	.label_1930
.label_3792:
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	nop	
	jne	.label_2077
	jmp	.label_2785
.label_2077:
	xor	eax, eax
	mov	cl, al
	mov	rbp, rbp
	test	cl, 1
	jne	.label_2084
	jmp	.label_2087
.label_2084:
	mov	rsp, rsp
	mov	al, 1
	lea	rdi, [rdi]
	test	al, 1
	jne	.label_2090
	lea	rdi, [rdi]
	jmp	.label_2092
.label_2090:
	nop	
	xor	eax, eax
	mov	cl, al
	lea	rsi, [rsi]
	test	cl, 1
	jne	.label_2093
	jmp	.label_2098
.label_2093:
	cmp	dword ptr [rbp - 0x22c], 0x7ffff894
	jl	.label_2100
	mov	rsp, rsp
	jmp	.label_2107
.label_2098:
	lea	rdi, [rdi]
	mov	eax, 0x7ffff893
	cmp	eax, dword ptr [rbp - 0x22c]
	lea	rdi, [rdi]
	jl	.label_2100
	jmp	.label_2107
.label_2092:
	cmp	dword ptr [rbp - 0x22c], 0
	nop	
	jge	.label_2120
	mov	rsp, rsp
	mov	eax, 0x76c
	mov	ecx, dword ptr [rbp - 0x22c]
	nop	
	add	ecx, 0x76c
	cmp	eax, ecx
	lea	rsi, [rsi]
	jle	.label_2100
	mov	rsp, rsp
	jmp	.label_2107
.label_2120:
	mov	rsp, rsp
	xor	eax, eax
	mov	rbp, rbp
	mov	cl, al
	nop	
	test	cl, 1
	mov	rsp, rsp
	jne	.label_2134
	mov	rbp, rbp
	jmp	.label_2141
.label_2134:
	mov	eax, dword ptr [rbp - 0x22c]
	lea	rdi, [rdi]
	mov	ecx, dword ptr [rbp - 0x22c]
	mov	rsp, rsp
	add	ecx, 0x76c
	lea	rsi, [rsi]
	cmp	eax, ecx
	jle	.label_2100
	jmp	.label_2107
.label_2141:
	mov	eax, dword ptr [rbp - 0x22c]
	nop	
	add	eax, 0x76c
	lea	rsi, [rsi]
	cmp	eax, 0x76c
	lea	rdi, [rdi]
	jl	.label_2100
.label_2107:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x22c]
	mov	rbp, rbp
	add	eax, 0x76c
	cmp	eax, 0x80000000
	mov	rsp, rsp
	jl	.label_2100
	mov	eax, 0x7fffffff
	nop	
	mov	ecx, dword ptr [rbp - 0x22c]
	mov	rbp, rbp
	add	ecx, 0x76c
	cmp	eax, ecx
	mov	rbp, rbp
	jge	.label_2174
.label_2100:
	mov	rsp, rsp
	mov	al, 1
	mov	ecx, dword ptr [rbp - 0x22c]
	add	ecx, 0x76c
	lea	rdi, [rdi]
	movsxd	rdx, ecx
	nop	
	mov	qword ptr [rbp - 0x330], rdx
	mov	rsp, rsp
	test	al, 1
	lea	rsi, [rsi]
	jne	.label_1907
	jmp	.label_1930
.label_2174:
	nop	
	xor	eax, eax
	mov	rsp, rsp
	mov	cl, al
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x22c]
	add	eax, 0x76c
	nop	
	movsxd	rdx, eax
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x330], rdx
	nop	
	test	cl, 1
	lea	rdi, [rdi]
	jne	.label_1907
	jmp	.label_1930
.label_2087:
	mov	al, 1
	nop	
	test	al, 1
	lea	rsi, [rsi]
	jne	.label_2207
	mov	rsp, rsp
	jmp	.label_2214
.label_2207:
	mov	rbp, rbp
	xor	eax, eax
	nop	
	mov	cl, al
	test	cl, 1
	lea	rdi, [rdi]
	jne	.label_3409
	jmp	.label_2221
.label_3409:
	cmp	dword ptr [rbp - 0x22c], 0x7ffff894
	lea	rsi, [rsi]
	jl	.label_2224
	lea	rsi, [rsi]
	jmp	.label_2231
.label_2221:
	lea	rdi, [rdi]
	mov	eax, 0x7ffff893
	mov	rbp, rbp
	cmp	eax, dword ptr [rbp - 0x22c]
	mov	rsp, rsp
	jl	.label_2224
	jmp	.label_2231
.label_2214:
	cmp	dword ptr [rbp - 0x22c], 0
	jge	.label_2240
	mov	eax, 0x76c
	mov	ecx, dword ptr [rbp - 0x22c]
	lea	rdi, [rdi]
	add	ecx, 0x76c
	mov	rbp, rbp
	cmp	eax, ecx
	nop	
	jle	.label_2224
	jmp	.label_2231
.label_2240:
	xor	eax, eax
	mov	cl, al
	mov	rsp, rsp
	test	cl, 1
	lea	rdi, [rdi]
	jne	.label_2257
	jmp	.label_2264
.label_2257:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x22c]
	lea	rsi, [rsi]
	mov	ecx, dword ptr [rbp - 0x22c]
	lea	rsi, [rsi]
	add	ecx, 0x76c
	cmp	eax, ecx
	jle	.label_2224
	lea	rsi, [rsi]
	jmp	.label_2231
.label_2264:
	mov	eax, dword ptr [rbp - 0x22c]
	lea	rdi, [rdi]
	add	eax, 0x76c
	cmp	eax, 0x76c
	jl	.label_2224
.label_2231:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x22c]
	mov	rbp, rbp
	add	eax, 0x76c
	mov	rsp, rsp
	cmp	eax, 0x80000000
	jl	.label_2224
	mov	eax, 0x7fffffff
	mov	ecx, dword ptr [rbp - 0x22c]
	add	ecx, 0x76c
	cmp	eax, ecx
	jge	.label_2283
.label_2224:
	mov	al, 1
	mov	rbp, rbp
	mov	ecx, dword ptr [rbp - 0x22c]
	add	ecx, 0x76c
	lea	rsi, [rsi]
	movsxd	rdx, ecx
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x330], rdx
	nop	
	test	al, 1
	jne	.label_1907
	mov	rbp, rbp
	jmp	.label_1930
.label_2283:
	mov	rsp, rsp
	xor	eax, eax
	nop	
	mov	cl, al
	nop	
	mov	eax, dword ptr [rbp - 0x22c]
	mov	rsp, rsp
	add	eax, 0x76c
	movsxd	rdx, eax
	nop	
	mov	qword ptr [rbp - 0x330], rdx
	test	cl, 1
	jne	.label_1907
	lea	rdi, [rdi]
	jmp	.label_1930
.label_2785:
	mov	al, 1
	mov	rbp, rbp
	test	al, 1
	lea	rdi, [rdi]
	jne	.label_2320
	mov	rsp, rsp
	jmp	.label_2323
.label_2320:
	mov	rbp, rbp
	mov	al, 1
	nop	
	test	al, 1
	jne	.label_2326
	jmp	.label_2327
.label_2326:
	lea	rdi, [rdi]
	mov	al, 1
	test	al, 1
	lea	rsi, [rsi]
	jne	.label_2329
	jmp	.label_2333
.label_2329:
	mov	rsp, rsp
	xor	eax, eax
	mov	rsp, rsp
	mov	cl, al
	test	cl, 1
	mov	rbp, rbp
	jne	.label_2088
	lea	rsi, [rsi]
	jmp	.label_2340
.label_2088:
	mov	rsp, rsp
	movabs	rax, 0x7ffffffffffff894
	movsxd	rcx, dword ptr [rbp - 0x22c]
	cmp	rcx, rax
	jl	.label_2345
	jmp	.label_2249
.label_2340:
	movabs	rax, 0x7ffffffffffff893
	lea	rdi, [rdi]
	movsxd	rcx, dword ptr [rbp - 0x22c]
	cmp	rax, rcx
	jl	.label_2345
	lea	rsi, [rsi]
	jmp	.label_2249
.label_2333:
	movsxd	rax, dword ptr [rbp - 0x22c]
	cmp	rax, 0
	lea	rsi, [rsi]
	jge	.label_2359
	mov	eax, 0x76c
	lea	rsi, [rsi]
	mov	ecx, eax
	nop	
	movsxd	rdx, dword ptr [rbp - 0x22c]
	add	rdx, 0x76c
	lea	rdi, [rdi]
	cmp	rcx, rdx
	mov	rbp, rbp
	jle	.label_2345
	mov	rsp, rsp
	jmp	.label_2249
.label_2359:
	xor	eax, eax
	lea	rdi, [rdi]
	mov	cl, al
	mov	rbp, rbp
	test	cl, 1
	lea	rdi, [rdi]
	jne	.label_2375
	mov	rsp, rsp
	jmp	.label_2378
.label_2375:
	lea	rdi, [rdi]
	movsxd	rax, dword ptr [rbp - 0x22c]
	nop	
	movsxd	rcx, dword ptr [rbp - 0x22c]
	add	rcx, 0x76c
	cmp	rax, rcx
	lea	rdi, [rdi]
	jle	.label_2345
	jmp	.label_2249
.label_2378:
	movsxd	rax, dword ptr [rbp - 0x22c]
	add	rax, 0x76c
	cmp	rax, 0x76c
	jl	.label_2345
.label_2249:
	movabs	rax, 0x8000000000000000
	movsxd	rcx, dword ptr [rbp - 0x22c]
	mov	rbp, rbp
	add	rcx, 0x76c
	lea	rdi, [rdi]
	cmp	rcx, rax
	lea	rdi, [rdi]
	jl	.label_2345
	movabs	rax, 0x7fffffffffffffff
	movsxd	rcx, dword ptr [rbp - 0x22c]
	lea	rdi, [rdi]
	add	rcx, 0x76c
	cmp	rax, rcx
	jge	.label_2402
.label_2345:
	nop	
	mov	al, 1
	mov	rbp, rbp
	movsxd	rcx, dword ptr [rbp - 0x22c]
	add	rcx, 0x76c
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x330], rcx
	mov	rbp, rbp
	test	al, 1
	mov	rbp, rbp
	jne	.label_1907
	jmp	.label_1930
.label_2402:
	xor	eax, eax
	mov	cl, al
	movsxd	rdx, dword ptr [rbp - 0x22c]
	mov	rbp, rbp
	add	rdx, 0x76c
	mov	qword ptr [rbp - 0x330], rdx
	nop	
	test	cl, 1
	mov	rbp, rbp
	jne	.label_1907
	lea	rdi, [rdi]
	jmp	.label_1930
.label_2327:
	mov	rbp, rbp
	mov	al, 1
	test	al, 1
	lea	rdi, [rdi]
	jne	.label_2426
	nop	
	jmp	.label_2920
.label_2426:
	mov	rbp, rbp
	xor	eax, eax
	mov	rsp, rsp
	mov	cl, al
	mov	rbp, rbp
	test	cl, 1
	jne	.label_2437
	jmp	.label_2442
.label_2437:
	nop	
	cmp	dword ptr [rbp - 0x22c], 0x7ffff894
	jl	.label_2443
	jmp	.label_2448
.label_2442:
	mov	rsp, rsp
	mov	eax, 0x7ffff893
	cmp	eax, dword ptr [rbp - 0x22c]
	mov	rsp, rsp
	jl	.label_2443
	mov	rbp, rbp
	jmp	.label_2448
.label_2920:
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x22c], 0
	jge	.label_2454
	mov	eax, 0x76c
	mov	rbp, rbp
	mov	ecx, dword ptr [rbp - 0x22c]
	mov	rbp, rbp
	add	ecx, 0x76c
	lea	rsi, [rsi]
	cmp	eax, ecx
	mov	rsp, rsp
	jle	.label_2443
	jmp	.label_2448
.label_2454:
	nop	
	xor	eax, eax
	nop	
	mov	cl, al
	test	cl, 1
	jne	.label_2479
	jmp	.label_2485
.label_2479:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x22c]
	lea	rsi, [rsi]
	mov	ecx, dword ptr [rbp - 0x22c]
	nop	
	add	ecx, 0x76c
	mov	rsp, rsp
	cmp	eax, ecx
	jle	.label_2443
	jmp	.label_2448
.label_2485:
	nop	
	mov	eax, dword ptr [rbp - 0x22c]
	add	eax, 0x76c
	mov	rsp, rsp
	cmp	eax, 0x76c
	lea	rdi, [rdi]
	jl	.label_2443
.label_2448:
	movabs	rax, 0x8000000000000000
	mov	ecx, dword ptr [rbp - 0x22c]
	lea	rsi, [rsi]
	add	ecx, 0x76c
	mov	rsp, rsp
	movsxd	rdx, ecx
	cmp	rdx, rax
	jl	.label_2443
	movabs	rax, 0x7fffffffffffffff
	lea	rdi, [rdi]
	mov	ecx, dword ptr [rbp - 0x22c]
	mov	rbp, rbp
	add	ecx, 0x76c
	nop	
	movsxd	rdx, ecx
	cmp	rax, rdx
	mov	rbp, rbp
	jge	.label_2520
.label_2443:
	mov	al, 1
	lea	rdi, [rdi]
	movsxd	rcx, dword ptr [rbp - 0x22c]
	nop	
	add	rcx, 0x76c
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x330], rcx
	test	al, 1
	jne	.label_1907
	jmp	.label_1930
.label_2520:
	xor	eax, eax
	mov	cl, al
	lea	rsi, [rsi]
	movsxd	rdx, dword ptr [rbp - 0x22c]
	nop	
	add	rdx, 0x76c
	mov	qword ptr [rbp - 0x330], rdx
	nop	
	test	cl, 1
	jne	.label_1907
	jmp	.label_1930
.label_2323:
	mov	rbp, rbp
	mov	al, 1
	test	al, 1
	lea	rsi, [rsi]
	jne	.label_2554
	jmp	.label_3353
.label_2554:
	mov	al, 1
	lea	rdi, [rdi]
	test	al, 1
	jne	.label_2560
	lea	rdi, [rdi]
	jmp	.label_2563
.label_2560:
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_3388
	jmp	.label_2570
.label_3388:
	mov	rbp, rbp
	movabs	rax, 0x7ffffffffffff894
	movsxd	rcx, dword ptr [rbp - 0x22c]
	cmp	rcx, rax
	jl	.label_2571
	jmp	.label_2577
.label_2570:
	movabs	rax, 0x7ffffffffffff893
	movsxd	rcx, dword ptr [rbp - 0x22c]
	mov	rsp, rsp
	cmp	rax, rcx
	lea	rsi, [rsi]
	jl	.label_2571
	jmp	.label_2577
.label_2563:
	movsxd	rax, dword ptr [rbp - 0x22c]
	lea	rdi, [rdi]
	cmp	rax, 0
	mov	rsp, rsp
	jge	.label_2593
	mov	eax, 0x76c
	mov	ecx, eax
	lea	rdi, [rdi]
	movsxd	rdx, dword ptr [rbp - 0x22c]
	add	rdx, 0x76c
	lea	rsi, [rsi]
	cmp	rcx, rdx
	jle	.label_2571
	jmp	.label_2577
.label_2593:
	lea	rdi, [rdi]
	xor	eax, eax
	lea	rsi, [rsi]
	mov	cl, al
	lea	rsi, [rsi]
	test	cl, 1
	nop	
	jne	.label_2609
	jmp	.label_2620
.label_2609:
	lea	rdi, [rdi]
	movsxd	rax, dword ptr [rbp - 0x22c]
	movsxd	rcx, dword ptr [rbp - 0x22c]
	add	rcx, 0x76c
	cmp	rax, rcx
	jle	.label_2571
	jmp	.label_2577
.label_2620:
	lea	rsi, [rsi]
	movsxd	rax, dword ptr [rbp - 0x22c]
	add	rax, 0x76c
	cmp	rax, 0x76c
	lea	rdi, [rdi]
	jl	.label_2571
.label_2577:
	movabs	rax, 0x8000000000000000
	nop	
	movsxd	rcx, dword ptr [rbp - 0x22c]
	mov	rsp, rsp
	add	rcx, 0x76c
	lea	rdi, [rdi]
	cmp	rcx, rax
	jl	.label_2571
	nop	
	movabs	rax, 0x7fffffffffffffff
	movsxd	rcx, dword ptr [rbp - 0x22c]
	mov	rsp, rsp
	add	rcx, 0x76c
	cmp	rax, rcx
	mov	rbp, rbp
	jge	.label_2644
.label_2571:
	lea	rdi, [rdi]
	mov	al, 1
	movsxd	rcx, dword ptr [rbp - 0x22c]
	nop	
	add	rcx, 0x76c
	mov	qword ptr [rbp - 0x330], rcx
	test	al, 1
	jne	.label_1907
	jmp	.label_1930
.label_2644:
	mov	rsp, rsp
	xor	eax, eax
	mov	cl, al
	movsxd	rdx, dword ptr [rbp - 0x22c]
	nop	
	add	rdx, 0x76c
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x330], rdx
	nop	
	test	cl, 1
	mov	rbp, rbp
	jne	.label_1907
	jmp	.label_1930
.label_3353:
	mov	al, 1
	test	al, 1
	lea	rdi, [rdi]
	jne	.label_2672
	mov	rsp, rsp
	jmp	.label_2045
.label_2672:
	xor	eax, eax
	mov	rsp, rsp
	mov	cl, al
	lea	rsi, [rsi]
	test	cl, 1
	jne	.label_3377
	jmp	.label_3509
.label_3377:
	nop	
	cmp	dword ptr [rbp - 0x22c], 0x7ffff894
	jl	.label_2211
	mov	rbp, rbp
	jmp	.label_2685
.label_3509:
	mov	eax, 0x7ffff893
	cmp	eax, dword ptr [rbp - 0x22c]
	lea	rsi, [rsi]
	jl	.label_2211
	lea	rdi, [rdi]
	jmp	.label_2685
.label_2045:
	nop	
	cmp	dword ptr [rbp - 0x22c], 0
	jge	.label_2692
	mov	rbp, rbp
	mov	eax, 0x76c
	mov	ecx, dword ptr [rbp - 0x22c]
	mov	rbp, rbp
	add	ecx, 0x76c
	cmp	eax, ecx
	jle	.label_2211
	jmp	.label_2685
.label_2692:
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	mov	rsp, rsp
	jne	.label_2707
	jmp	.label_2713
.label_2707:
	mov	eax, dword ptr [rbp - 0x22c]
	mov	ecx, dword ptr [rbp - 0x22c]
	mov	rbp, rbp
	add	ecx, 0x76c
	mov	rbp, rbp
	cmp	eax, ecx
	jle	.label_2211
	jmp	.label_2685
.label_2713:
	mov	eax, dword ptr [rbp - 0x22c]
	lea	rdi, [rdi]
	add	eax, 0x76c
	nop	
	cmp	eax, 0x76c
	jl	.label_2211
.label_2685:
	mov	rbp, rbp
	movabs	rax, 0x8000000000000000
	mov	rbp, rbp
	mov	ecx, dword ptr [rbp - 0x22c]
	add	ecx, 0x76c
	lea	rdi, [rdi]
	movsxd	rdx, ecx
	lea	rsi, [rsi]
	cmp	rdx, rax
	lea	rsi, [rsi]
	jl	.label_2211
	mov	rbp, rbp
	movabs	rax, 0x7fffffffffffffff
	mov	ecx, dword ptr [rbp - 0x22c]
	add	ecx, 0x76c
	mov	rbp, rbp
	movsxd	rdx, ecx
	cmp	rax, rdx
	mov	rbp, rbp
	jge	.label_2459
.label_2211:
	mov	al, 1
	lea	rdi, [rdi]
	movsxd	rcx, dword ptr [rbp - 0x22c]
	add	rcx, 0x76c
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x330], rcx
	test	al, 1
	jne	.label_1907
	mov	rbp, rbp
	jmp	.label_1930
.label_2459:
	lea	rdi, [rdi]
	xor	eax, eax
	mov	cl, al
	movsxd	rdx, dword ptr [rbp - 0x22c]
	add	rdx, 0x76c
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x330], rdx
	lea	rsi, [rsi]
	test	cl, 1
	jne	.label_1907
	jmp	.label_1930
.label_1907:
	lea	rsi, [rsi]
	test	byte ptr [rbp - 0x27f], 1
	je	.label_2760
	lea	rdi, [rdi]
	movabs	rdi, OFFSET FLAT:.str.21_0
	lea	rsi, [rsi]
	call	gettext
	nop	
	mov	rdi, rax
	nop	
	mov	al, 0
	call	dbg_printf
.label_2760:
	jmp	.label_2446
.label_1930:
	movabs	rax, OFFSET FLAT:parse_datetime2.rel_time_0
	lea	rsi, [rsi]
	mov	ecx, 0x38
	lea	rdi, [rdi]
	mov	edx, ecx
	mov	rbp, rbp
	lea	rsi, [rbp - 0x358]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x328], 0
	mov	ecx, dword ptr [rbp - 0x230]
	mov	rsp, rsp
	add	ecx, 1
	lea	rdi, [rdi]
	movsxd	rdi, ecx
	nop	
	mov	qword ptr [rbp - 0x320], rdi
	lea	rsi, [rsi]
	movsxd	rdi, dword ptr [rbp - 0x234]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x318], rdi
	movsxd	rdi, dword ptr [rbp - 0x238]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x310], rdi
	lea	rdi, [rdi]
	movsxd	rdi, dword ptr [rbp - 0x23c]
	mov	qword ptr [rbp - 0x308], rdi
	lea	rsi, [rsi]
	movsxd	rdi, dword ptr [rbp - 0x240]
	mov	qword ptr [rbp - 0x300], rdi
	mov	rsp, rsp
	movsxd	rdi, dword ptr [rbp - 0x1cc]
	nop	
	mov	qword ptr [rbp - 0x2f8], rdi
	lea	rsi, [rsi]
	mov	ecx, dword ptr [rbp - 0x220]
	mov	dword ptr [rbp - 0x48], ecx
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x33c], 2
	add	rsi, 0x68
	lea	rdi, [rdi]
	mov	rdi, rsi
	mov	rsp, rsp
	mov	rsi, rax
	call	memcpy
	mov	byte ptr [rbp - 0x2b8], 0
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x2b7], 0
	mov	qword ptr [rbp - 0x2b0], 0
	mov	qword ptr [rbp - 0x2a8], 0
	mov	qword ptr [rbp - 0x290], 0
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x2a0], 0
	nop	
	mov	qword ptr [rbp - 0x298], 0
	nop	
	mov	qword ptr [rbp - 0x288], 0
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x280], 0
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x27e], 0
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x27d], 0
	mov	byte ptr [rbp - 0x27b], 0
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x27c], 0
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x27a], 0
	mov	byte ptr [rbp - 0x279], 0
	nop	
	mov	byte ptr [rbp - 0x278], 0
	mov	rax, qword ptr [rbp - 0x210]
	mov	qword ptr [rbp - 0x270], rax
	mov	dword ptr [rbp - 0x268], 0x10d
	mov	ecx, dword ptr [rbp - 0x220]
	mov	dword ptr [rbp - 0x264], ecx
	mov	qword ptr [rbp - 0x260], 0
	mov	dword ptr [rbp - 0x35c], 1
.label_2465:
	cmp	dword ptr [rbp - 0x35c], 3
	nop	
	jg	.label_2416
	xor	eax, eax
	mov	rsp, rsp
	mov	cl, al
	test	cl, 1
	jne	.label_2888
	nop	
	jmp	.label_3362
.label_2888:
	mov	rsp, rsp
	xor	eax, eax
	mov	cl, al
	mov	rbp, rbp
	test	cl, 1
	lea	rsi, [rsi]
	jne	.label_2894
	nop	
	jmp	.label_3400
.label_2894:
	mov	al, 1
	test	al, 1
	jne	.label_2899
	jmp	.label_2903
.label_2899:
	imul	eax, dword ptr [rbp - 0x35c], 0x76a700
	mov	cl, al
	lea	rdi, [rdi]
	movsx	eax, cl
	cmp	eax, 0
	jge	.label_2904
	mov	rsp, rsp
	mov	eax, 0x80000000
	mov	rcx, qword ptr [rbp - 0x1c8]
	mov	dl, cl
	movsx	esi, dl
	lea	rsi, [rsi]
	imul	edi, dword ptr [rbp - 0x35c], 0x76a700
	lea	rdi, [rdi]
	mov	dl, dil
	movsx	edi, dl
	sub	eax, edi
	lea	rdi, [rdi]
	cmp	esi, eax
	mov	rsp, rsp
	jl	.label_2638
	mov	rbp, rbp
	jmp	.label_2955
.label_2904:
	mov	eax, 0x7fffffff
	imul	ecx, dword ptr [rbp - 0x35c], 0x76a700
	mov	rbp, rbp
	mov	dl, cl
	nop	
	movsx	ecx, dl
	lea	rdi, [rdi]
	sub	eax, ecx
	mov	rsi, qword ptr [rbp - 0x1c8]
	lea	rsi, [rsi]
	mov	dl, sil
	nop	
	movsx	ecx, dl
	cmp	eax, ecx
	jl	.label_2638
	jmp	.label_2955
.label_2903:
	nop	
	mov	rax, qword ptr [rbp - 0x1c8]
	nop	
	mov	cl, al
	mov	rbp, rbp
	movsx	edx, cl
	mov	rbp, rbp
	cmp	edx, 0
	jge	.label_3480
	imul	eax, dword ptr [rbp - 0x35c], 0x76a700
	mov	cl, al
	mov	rbp, rbp
	movsx	eax, cl
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x1c8]
	mov	rbp, rbp
	mov	cl, dl
	mov	rbp, rbp
	movsx	esi, cl
	imul	edi, dword ptr [rbp - 0x35c], 0x76a700
	mov	cl, dil
	nop	
	movsx	edi, cl
	mov	rsp, rsp
	add	esi, edi
	cmp	eax, esi
	jle	.label_2638
	jmp	.label_2955
.label_3480:
	imul	eax, dword ptr [rbp - 0x35c], 0x76a700
	nop	
	mov	cl, al
	lea	rsi, [rsi]
	movsx	eax, cl
	cmp	eax, 0
	mov	rbp, rbp
	jge	.label_2956
	mov	rax, qword ptr [rbp - 0x1c8]
	nop	
	mov	cl, al
	lea	rsi, [rsi]
	movsx	edx, cl
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x1c8]
	mov	rsp, rsp
	mov	cl, al
	movsx	esi, cl
	imul	edi, dword ptr [rbp - 0x35c], 0x76a700
	lea	rdi, [rdi]
	mov	cl, dil
	lea	rdi, [rdi]
	movsx	edi, cl
	nop	
	add	esi, edi
	cmp	edx, esi
	jle	.label_2638
	jmp	.label_2955
.label_2956:
	mov	rax, qword ptr [rbp - 0x1c8]
	mov	cl, al
	movsx	edx, cl
	imul	esi, dword ptr [rbp - 0x35c], 0x76a700
	mov	rbp, rbp
	mov	cl, sil
	movsx	esi, cl
	add	edx, esi
	imul	esi, dword ptr [rbp - 0x35c], 0x76a700
	mov	cl, sil
	movsx	esi, cl
	mov	rsp, rsp
	cmp	edx, esi
	nop	
	jl	.label_2638
.label_2955:
	mov	rax, qword ptr [rbp - 0x1c8]
	mov	rbp, rbp
	mov	cl, al
	movsx	edx, cl
	imul	esi, dword ptr [rbp - 0x35c], 0x76a700
	nop	
	mov	cl, sil
	mov	rsp, rsp
	movsx	esi, cl
	lea	rdi, [rdi]
	add	edx, esi
	nop	
	cmp	edx, -0x80
	nop	
	jl	.label_2638
	mov	rsp, rsp
	mov	eax, 0x7f
	mov	rcx, qword ptr [rbp - 0x1c8]
	nop	
	mov	dl, cl
	movsx	esi, dl
	imul	edi, dword ptr [rbp - 0x35c], 0x76a700
	mov	dl, dil
	lea	rdi, [rdi]
	movsx	edi, dl
	add	esi, edi
	cmp	eax, esi
	mov	rbp, rbp
	jge	.label_3003
.label_2638:
	mov	al, 1
	mov	rcx, qword ptr [rbp - 0x1c8]
	mov	rbp, rbp
	mov	dl, cl
	nop	
	movsx	esi, dl
	nop	
	imul	edi, dword ptr [rbp - 0x35c], 0x76a700
	nop	
	mov	dl, dil
	nop	
	movsx	edi, dl
	add	esi, edi
	lea	rsi, [rsi]
	mov	dl, sil
	lea	rdi, [rdi]
	movsx	rcx, dl
	mov	qword ptr [rbp - 0x368], rcx
	test	al, 1
	jne	.label_2076
	jmp	.label_1919
.label_3003:
	xor	eax, eax
	nop	
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x1c8]
	mov	sil, dl
	mov	rsp, rsp
	movsx	eax, sil
	imul	edi, dword ptr [rbp - 0x35c], 0x76a700
	mov	sil, dil
	mov	rbp, rbp
	movsx	edi, sil
	lea	rdi, [rdi]
	add	eax, edi
	mov	sil, al
	mov	rbp, rbp
	movsx	rdx, sil
	mov	qword ptr [rbp - 0x368], rdx
	test	cl, 1
	jne	.label_2076
	jmp	.label_1919
.label_3400:
	lea	rsi, [rsi]
	mov	al, 1
	test	al, 1
	lea	rdi, [rdi]
	jne	.label_3043
	lea	rdi, [rdi]
	jmp	.label_3047
.label_3043:
	imul	eax, dword ptr [rbp - 0x35c], 0x76a700
	lea	rdi, [rdi]
	cmp	eax, 0
	jge	.label_3049
	lea	rdi, [rdi]
	movabs	rax, 0x8000000000000000
	mov	rcx, qword ptr [rbp - 0x1c8]
	lea	rsi, [rsi]
	imul	edx, dword ptr [rbp - 0x35c], 0x76a700
	lea	rsi, [rsi]
	movsxd	rsi, edx
	sub	rax, rsi
	mov	rsp, rsp
	cmp	rcx, rax
	jl	.label_3051
	jmp	.label_3067
.label_3049:
	movabs	rax, 0x7fffffffffffffff
	imul	ecx, dword ptr [rbp - 0x35c], 0x76a700
	movsxd	rdx, ecx
	mov	rsp, rsp
	sub	rax, rdx
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rbp - 0x1c8]
	jl	.label_3051
	jmp	.label_3067
.label_3047:
	nop	
	cmp	qword ptr [rbp - 0x1c8], 0
	lea	rdi, [rdi]
	jge	.label_3080
	imul	eax, dword ptr [rbp - 0x35c], 0x76a700
	lea	rsi, [rsi]
	movsxd	rcx, eax
	mov	rdx, qword ptr [rbp - 0x1c8]
	mov	rbp, rbp
	imul	eax, dword ptr [rbp - 0x35c], 0x76a700
	mov	rsp, rsp
	movsxd	rsi, eax
	nop	
	add	rdx, rsi
	cmp	rcx, rdx
	mov	rsp, rsp
	jle	.label_3051
	mov	rsp, rsp
	jmp	.label_3067
.label_3080:
	imul	eax, dword ptr [rbp - 0x35c], 0x76a700
	mov	rsp, rsp
	cmp	eax, 0
	jge	.label_3097
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x1c8]
	nop	
	mov	rcx, qword ptr [rbp - 0x1c8]
	mov	rsp, rsp
	imul	edx, dword ptr [rbp - 0x35c], 0x76a700
	nop	
	movsxd	rsi, edx
	add	rcx, rsi
	mov	rsp, rsp
	cmp	rax, rcx
	lea	rdi, [rdi]
	jle	.label_3051
	jmp	.label_3067
.label_3097:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x1c8]
	lea	rsi, [rsi]
	imul	ecx, dword ptr [rbp - 0x35c], 0x76a700
	movsxd	rdx, ecx
	lea	rsi, [rsi]
	add	rax, rdx
	lea	rsi, [rsi]
	imul	ecx, dword ptr [rbp - 0x35c], 0x76a700
	nop	
	movsxd	rdx, ecx
	mov	rbp, rbp
	cmp	rax, rdx
	mov	rbp, rbp
	jl	.label_3051
.label_3067:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x1c8]
	imul	ecx, dword ptr [rbp - 0x35c], 0x76a700
	lea	rdi, [rdi]
	movsxd	rdx, ecx
	add	rax, rdx
	mov	rsp, rsp
	cmp	rax, -0x80
	jl	.label_3051
	lea	rsi, [rsi]
	mov	eax, 0x7f
	mov	ecx, eax
	nop	
	mov	rdx, qword ptr [rbp - 0x1c8]
	lea	rsi, [rsi]
	imul	eax, dword ptr [rbp - 0x35c], 0x76a700
	movsxd	rsi, eax
	add	rdx, rsi
	lea	rdi, [rdi]
	cmp	rcx, rdx
	jge	.label_3141
.label_3051:
	mov	rbp, rbp
	mov	al, 1
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x1c8]
	mov	edx, ecx
	nop	
	imul	esi, dword ptr [rbp - 0x35c], 0x76a700
	lea	rdi, [rdi]
	add	edx, esi
	mov	rbp, rbp
	mov	dil, dl
	movsx	rcx, dil
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x368], rcx
	nop	
	test	al, 1
	jne	.label_2076
	jmp	.label_1919
.label_3141:
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x1c8]
	mov	eax, edx
	lea	rsi, [rsi]
	imul	esi, dword ptr [rbp - 0x35c], 0x76a700
	nop	
	add	eax, esi
	nop	
	mov	dil, al
	movsx	rdx, dil
	mov	qword ptr [rbp - 0x368], rdx
	test	cl, 1
	nop	
	jne	.label_2076
	nop	
	jmp	.label_1919
.label_3362:
	mov	rbp, rbp
	xor	eax, eax
	mov	rsp, rsp
	mov	cl, al
	test	cl, 1
	jne	.label_3166
	nop	
	jmp	.label_3171
.label_3166:
	xor	eax, eax
	nop	
	mov	cl, al
	nop	
	test	cl, 1
	mov	rsp, rsp
	jne	.label_3173
	mov	rbp, rbp
	jmp	.label_3363
.label_3173:
	lea	rdi, [rdi]
	mov	al, 1
	mov	rbp, rbp
	test	al, 1
	jne	.label_3184
	nop	
	jmp	.label_3186
.label_3184:
	lea	rdi, [rdi]
	imul	eax, dword ptr [rbp - 0x35c], 0x76a700
	mov	cx, ax
	movsx	eax, cx
	cmp	eax, 0
	lea	rdi, [rdi]
	jge	.label_3188
	mov	eax, 0x80000000
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x1c8]
	mov	rsp, rsp
	mov	dx, cx
	mov	rsp, rsp
	movsx	esi, dx
	lea	rsi, [rsi]
	imul	edi, dword ptr [rbp - 0x35c], 0x76a700
	nop	
	mov	dx, di
	lea	rdi, [rdi]
	movsx	edi, dx
	mov	rbp, rbp
	sub	eax, edi
	lea	rsi, [rsi]
	cmp	esi, eax
	mov	rsp, rsp
	jl	.label_1999
	lea	rdi, [rdi]
	jmp	.label_1987
.label_3188:
	mov	eax, 0x7fffffff
	imul	ecx, dword ptr [rbp - 0x35c], 0x76a700
	mov	dx, cx
	movsx	ecx, dx
	sub	eax, ecx
	mov	rsi, qword ptr [rbp - 0x1c8]
	mov	dx, si
	mov	rbp, rbp
	movsx	ecx, dx
	cmp	eax, ecx
	nop	
	jl	.label_1999
	mov	rbp, rbp
	jmp	.label_1987
.label_3186:
	mov	rax, qword ptr [rbp - 0x1c8]
	mov	cx, ax
	mov	rsp, rsp
	movsx	edx, cx
	nop	
	cmp	edx, 0
	lea	rdi, [rdi]
	jge	.label_3238
	lea	rdi, [rdi]
	imul	eax, dword ptr [rbp - 0x35c], 0x76a700
	lea	rsi, [rsi]
	mov	cx, ax
	mov	rsp, rsp
	movsx	eax, cx
	mov	rdx, qword ptr [rbp - 0x1c8]
	mov	cx, dx
	lea	rsi, [rsi]
	movsx	esi, cx
	mov	rsp, rsp
	imul	edi, dword ptr [rbp - 0x35c], 0x76a700
	mov	cx, di
	mov	rbp, rbp
	movsx	edi, cx
	lea	rsi, [rsi]
	add	esi, edi
	lea	rsi, [rsi]
	cmp	eax, esi
	mov	rbp, rbp
	jle	.label_1999
	jmp	.label_1987
.label_3238:
	lea	rsi, [rsi]
	imul	eax, dword ptr [rbp - 0x35c], 0x76a700
	nop	
	mov	cx, ax
	mov	rsp, rsp
	movsx	eax, cx
	lea	rsi, [rsi]
	cmp	eax, 0
	lea	rdi, [rdi]
	jge	.label_3261
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x1c8]
	nop	
	mov	cx, ax
	movsx	edx, cx
	mov	rax, qword ptr [rbp - 0x1c8]
	lea	rsi, [rsi]
	mov	cx, ax
	movsx	esi, cx
	lea	rdi, [rdi]
	imul	edi, dword ptr [rbp - 0x35c], 0x76a700
	mov	cx, di
	mov	rsp, rsp
	movsx	edi, cx
	lea	rdi, [rdi]
	add	esi, edi
	mov	rbp, rbp
	cmp	edx, esi
	jle	.label_1999
	jmp	.label_1987
.label_3261:
	mov	rax, qword ptr [rbp - 0x1c8]
	nop	
	mov	cx, ax
	movsx	edx, cx
	imul	esi, dword ptr [rbp - 0x35c], 0x76a700
	mov	cx, si
	mov	rsp, rsp
	movsx	esi, cx
	add	edx, esi
	imul	esi, dword ptr [rbp - 0x35c], 0x76a700
	nop	
	mov	cx, si
	mov	rbp, rbp
	movsx	esi, cx
	nop	
	cmp	edx, esi
	mov	rsp, rsp
	jl	.label_1999
.label_1987:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x1c8]
	mov	cx, ax
	movsx	edx, cx
	imul	esi, dword ptr [rbp - 0x35c], 0x76a700
	mov	cx, si
	lea	rdi, [rdi]
	movsx	esi, cx
	add	edx, esi
	nop	
	cmp	edx, 0xffff8000
	jl	.label_1999
	mov	eax, 0x7fff
	mov	rcx, qword ptr [rbp - 0x1c8]
	nop	
	mov	dx, cx
	lea	rsi, [rsi]
	movsx	esi, dx
	nop	
	imul	edi, dword ptr [rbp - 0x35c], 0x76a700
	mov	dx, di
	movsx	edi, dx
	add	esi, edi
	cmp	eax, esi
	jge	.label_3296
.label_1999:
	mov	al, 1
	mov	rcx, qword ptr [rbp - 0x1c8]
	mov	rsp, rsp
	mov	dx, cx
	mov	rbp, rbp
	movsx	esi, dx
	imul	edi, dword ptr [rbp - 0x35c], 0x76a700
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
	mov	qword ptr [rbp - 0x368], rcx
	test	al, 1
	jne	.label_2076
	mov	rsp, rsp
	jmp	.label_1919
.label_3296:
	xor	eax, eax
	mov	cl, al
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x1c8]
	mov	rsp, rsp
	mov	si, dx
	movsx	eax, si
	mov	rsp, rsp
	imul	edi, dword ptr [rbp - 0x35c], 0x76a700
	lea	rsi, [rsi]
	mov	si, di
	lea	rdi, [rdi]
	movsx	edi, si
	add	eax, edi
	lea	rdi, [rdi]
	mov	si, ax
	movsx	rdx, si
	mov	qword ptr [rbp - 0x368], rdx
	test	cl, 1
	lea	rsi, [rsi]
	jne	.label_2076
	jmp	.label_1919
.label_3363:
	nop	
	mov	al, 1
	test	al, 1
	jne	.label_3351
	jmp	.label_3354
.label_3351:
	imul	eax, dword ptr [rbp - 0x35c], 0x76a700
	cmp	eax, 0
	jge	.label_3356
	movabs	rax, 0x8000000000000000
	mov	rcx, qword ptr [rbp - 0x1c8]
	imul	edx, dword ptr [rbp - 0x35c], 0x76a700
	mov	rsp, rsp
	movsxd	rsi, edx
	nop	
	sub	rax, rsi
	cmp	rcx, rax
	jl	.label_2669
	mov	rbp, rbp
	jmp	.label_2957
.label_3356:
	movabs	rax, 0x7fffffffffffffff
	lea	rdi, [rdi]
	imul	ecx, dword ptr [rbp - 0x35c], 0x76a700
	mov	rsp, rsp
	movsxd	rdx, ecx
	sub	rax, rdx
	cmp	rax, qword ptr [rbp - 0x1c8]
	mov	rsp, rsp
	jl	.label_2669
	mov	rsp, rsp
	jmp	.label_2957
.label_3354:
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x1c8], 0
	jge	.label_3385
	nop	
	imul	eax, dword ptr [rbp - 0x35c], 0x76a700
	movsxd	rcx, eax
	mov	rdx, qword ptr [rbp - 0x1c8]
	lea	rsi, [rsi]
	imul	eax, dword ptr [rbp - 0x35c], 0x76a700
	lea	rsi, [rsi]
	movsxd	rsi, eax
	add	rdx, rsi
	lea	rsi, [rsi]
	cmp	rcx, rdx
	jle	.label_2669
	lea	rdi, [rdi]
	jmp	.label_2957
.label_3385:
	imul	eax, dword ptr [rbp - 0x35c], 0x76a700
	mov	rbp, rbp
	cmp	eax, 0
	lea	rsi, [rsi]
	jge	.label_3404
	mov	rax, qword ptr [rbp - 0x1c8]
	mov	rcx, qword ptr [rbp - 0x1c8]
	imul	edx, dword ptr [rbp - 0x35c], 0x76a700
	lea	rsi, [rsi]
	movsxd	rsi, edx
	nop	
	add	rcx, rsi
	mov	rbp, rbp
	cmp	rax, rcx
	jle	.label_2669
	nop	
	jmp	.label_2957
.label_3404:
	mov	rax, qword ptr [rbp - 0x1c8]
	mov	rbp, rbp
	imul	ecx, dword ptr [rbp - 0x35c], 0x76a700
	movsxd	rdx, ecx
	mov	rbp, rbp
	add	rax, rdx
	imul	ecx, dword ptr [rbp - 0x35c], 0x76a700
	movsxd	rdx, ecx
	cmp	rax, rdx
	lea	rsi, [rsi]
	jl	.label_2669
.label_2957:
	mov	rax, qword ptr [rbp - 0x1c8]
	nop	
	imul	ecx, dword ptr [rbp - 0x35c], 0x76a700
	nop	
	movsxd	rdx, ecx
	add	rax, rdx
	cmp	rax, -0x8000
	jl	.label_2669
	mov	rbp, rbp
	mov	eax, 0x7fff
	mov	rsp, rsp
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x1c8]
	imul	eax, dword ptr [rbp - 0x35c], 0x76a700
	movsxd	rsi, eax
	mov	rsp, rsp
	add	rdx, rsi
	cmp	rcx, rdx
	lea	rsi, [rsi]
	jge	.label_3438
.label_2669:
	mov	al, 1
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x1c8]
	mov	rbp, rbp
	mov	edx, ecx
	lea	rdi, [rdi]
	imul	esi, dword ptr [rbp - 0x35c], 0x76a700
	mov	rsp, rsp
	add	edx, esi
	mov	rbp, rbp
	mov	di, dx
	movsx	rcx, di
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x368], rcx
	mov	rsp, rsp
	test	al, 1
	nop	
	jne	.label_2076
	lea	rdi, [rdi]
	jmp	.label_1919
.label_3438:
	mov	rbp, rbp
	xor	eax, eax
	mov	rbp, rbp
	mov	cl, al
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x1c8]
	mov	eax, edx
	imul	esi, dword ptr [rbp - 0x35c], 0x76a700
	lea	rdi, [rdi]
	add	eax, esi
	lea	rdi, [rdi]
	mov	di, ax
	lea	rsi, [rsi]
	movsx	rdx, di
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x368], rdx
	test	cl, 1
	lea	rsi, [rsi]
	jne	.label_2076
	jmp	.label_1919
.label_3171:
	nop	
	xor	eax, eax
	nop	
	mov	cl, al
	mov	rbp, rbp
	test	cl, 1
	lea	rsi, [rsi]
	jne	.label_3487
	jmp	.label_3493
.label_3487:
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_3495
	jmp	.label_3498
.label_3495:
	mov	rsp, rsp
	mov	al, 1
	lea	rsi, [rsi]
	test	al, 1
	lea	rsi, [rsi]
	jne	.label_3500
	jmp	.label_3504
.label_3500:
	imul	eax, dword ptr [rbp - 0x35c], 0x76a700
	cmp	eax, 0
	nop	
	jge	.label_3505
	nop	
	mov	eax, 0x80000000
	nop	
	mov	rcx, qword ptr [rbp - 0x1c8]
	lea	rsi, [rsi]
	mov	edx, ecx
	mov	rsp, rsp
	imul	esi, dword ptr [rbp - 0x35c], 0x76a700
	sub	eax, esi
	nop	
	cmp	edx, eax
	mov	rbp, rbp
	jl	.label_3512
	nop	
	jmp	.label_3520
.label_3505:
	lea	rsi, [rsi]
	mov	eax, 0x7fffffff
	nop	
	imul	ecx, dword ptr [rbp - 0x35c], 0x76a700
	sub	eax, ecx
	mov	rdx, qword ptr [rbp - 0x1c8]
	nop	
	mov	ecx, edx
	cmp	eax, ecx
	mov	rbp, rbp
	jl	.label_3512
	jmp	.label_3520
.label_3504:
	mov	rax, qword ptr [rbp - 0x1c8]
	mov	rbp, rbp
	mov	ecx, eax
	cmp	ecx, 0
	jge	.label_3531
	nop	
	imul	eax, dword ptr [rbp - 0x35c], 0x76a700
	mov	rcx, qword ptr [rbp - 0x1c8]
	mov	edx, ecx
	nop	
	imul	esi, dword ptr [rbp - 0x35c], 0x76a700
	add	edx, esi
	cmp	eax, edx
	jle	.label_3512
	lea	rsi, [rsi]
	jmp	.label_3520
.label_3531:
	imul	eax, dword ptr [rbp - 0x35c], 0x76a700
	cmp	eax, 0
	jge	.label_3552
	mov	rax, qword ptr [rbp - 0x1c8]
	mov	ecx, eax
	mov	rax, qword ptr [rbp - 0x1c8]
	mov	rbp, rbp
	mov	edx, eax
	imul	esi, dword ptr [rbp - 0x35c], 0x76a700
	add	edx, esi
	cmp	ecx, edx
	jle	.label_3512
	jmp	.label_3520
.label_3552:
	nop	
	mov	rax, qword ptr [rbp - 0x1c8]
	mov	rbp, rbp
	mov	ecx, eax
	mov	rbp, rbp
	imul	edx, dword ptr [rbp - 0x35c], 0x76a700
	lea	rdi, [rdi]
	add	ecx, edx
	imul	edx, dword ptr [rbp - 0x35c], 0x76a700
	cmp	ecx, edx
	lea	rdi, [rdi]
	jl	.label_3512
.label_3520:
	mov	rax, qword ptr [rbp - 0x1c8]
	mov	rbp, rbp
	mov	ecx, eax
	imul	edx, dword ptr [rbp - 0x35c], 0x76a700
	add	ecx, edx
	cmp	ecx, 0x80000000
	jl	.label_3512
	mov	eax, 0x7fffffff
	mov	rcx, qword ptr [rbp - 0x1c8]
	lea	rsi, [rsi]
	mov	edx, ecx
	nop	
	imul	esi, dword ptr [rbp - 0x35c], 0x76a700
	add	edx, esi
	lea	rsi, [rsi]
	cmp	eax, edx
	jge	.label_3591
.label_3512:
	mov	al, 1
	mov	rcx, qword ptr [rbp - 0x1c8]
	mov	edx, ecx
	imul	esi, dword ptr [rbp - 0x35c], 0x76a700
	add	edx, esi
	nop	
	movsxd	rcx, edx
	mov	qword ptr [rbp - 0x368], rcx
	mov	rbp, rbp
	test	al, 1
	jne	.label_2076
	mov	rbp, rbp
	jmp	.label_1919
.label_3591:
	lea	rdi, [rdi]
	xor	eax, eax
	lea	rdi, [rdi]
	mov	cl, al
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x1c8]
	mov	eax, edx
	lea	rdi, [rdi]
	imul	esi, dword ptr [rbp - 0x35c], 0x76a700
	mov	rbp, rbp
	add	eax, esi
	lea	rdi, [rdi]
	movsxd	rdx, eax
	mov	qword ptr [rbp - 0x368], rdx
	lea	rsi, [rsi]
	test	cl, 1
	jne	.label_2076
	jmp	.label_1919
.label_3498:
	mov	al, 1
	mov	rsp, rsp
	test	al, 1
	mov	rbp, rbp
	jne	.label_3620
	nop	
	jmp	.label_3624
.label_3620:
	mov	rsp, rsp
	imul	eax, dword ptr [rbp - 0x35c], 0x76a700
	mov	rbp, rbp
	cmp	eax, 0
	mov	rsp, rsp
	jge	.label_3626
	lea	rdi, [rdi]
	movabs	rax, 0x8000000000000000
	mov	rcx, qword ptr [rbp - 0x1c8]
	mov	rbp, rbp
	imul	edx, dword ptr [rbp - 0x35c], 0x76a700
	movsxd	rsi, edx
	nop	
	sub	rax, rsi
	cmp	rcx, rax
	jl	.label_2977
	nop	
	jmp	.label_2597
.label_3626:
	mov	rsp, rsp
	movabs	rax, 0x7fffffffffffffff
	imul	ecx, dword ptr [rbp - 0x35c], 0x76a700
	mov	rbp, rbp
	movsxd	rdx, ecx
	sub	rax, rdx
	cmp	rax, qword ptr [rbp - 0x1c8]
	nop	
	jl	.label_2977
	mov	rsp, rsp
	jmp	.label_2597
.label_3624:
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x1c8], 0
	jge	.label_2464
	nop	
	imul	eax, dword ptr [rbp - 0x35c], 0x76a700
	movsxd	rcx, eax
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x1c8]
	mov	rsp, rsp
	imul	eax, dword ptr [rbp - 0x35c], 0x76a700
	nop	
	movsxd	rsi, eax
	mov	rbp, rbp
	add	rdx, rsi
	cmp	rcx, rdx
	jle	.label_2977
	jmp	.label_2597
.label_2464:
	lea	rsi, [rsi]
	imul	eax, dword ptr [rbp - 0x35c], 0x76a700
	nop	
	cmp	eax, 0
	jge	.label_2963
	mov	rax, qword ptr [rbp - 0x1c8]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x1c8]
	lea	rsi, [rsi]
	imul	edx, dword ptr [rbp - 0x35c], 0x76a700
	movsxd	rsi, edx
	mov	rsp, rsp
	add	rcx, rsi
	cmp	rax, rcx
	jle	.label_2977
	lea	rdi, [rdi]
	jmp	.label_2597
.label_2963:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x1c8]
	lea	rdi, [rdi]
	imul	ecx, dword ptr [rbp - 0x35c], 0x76a700
	lea	rsi, [rsi]
	movsxd	rdx, ecx
	nop	
	add	rax, rdx
	lea	rdi, [rdi]
	imul	ecx, dword ptr [rbp - 0x35c], 0x76a700
	movsxd	rdx, ecx
	cmp	rax, rdx
	lea	rsi, [rsi]
	jl	.label_2977
.label_2597:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x1c8]
	lea	rsi, [rsi]
	imul	ecx, dword ptr [rbp - 0x35c], 0x76a700
	lea	rsi, [rsi]
	movsxd	rdx, ecx
	add	rax, rdx
	cmp	rax, -0x80000000
	lea	rsi, [rsi]
	jl	.label_2977
	lea	rdi, [rdi]
	mov	eax, 0x7fffffff
	mov	ecx, eax
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x1c8]
	mov	rbp, rbp
	imul	eax, dword ptr [rbp - 0x35c], 0x76a700
	lea	rsi, [rsi]
	movsxd	rsi, eax
	add	rdx, rsi
	cmp	rcx, rdx
	jge	.label_3713
.label_2977:
	lea	rsi, [rsi]
	mov	al, 1
	mov	rcx, qword ptr [rbp - 0x1c8]
	lea	rsi, [rsi]
	mov	edx, ecx
	imul	esi, dword ptr [rbp - 0x35c], 0x76a700
	mov	rsp, rsp
	add	edx, esi
	nop	
	movsxd	rcx, edx
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x368], rcx
	mov	rbp, rbp
	test	al, 1
	mov	rsp, rsp
	jne	.label_2076
	mov	rsp, rsp
	jmp	.label_1919
.label_3713:
	xor	eax, eax
	mov	cl, al
	nop	
	mov	rdx, qword ptr [rbp - 0x1c8]
	mov	eax, edx
	lea	rdi, [rdi]
	imul	esi, dword ptr [rbp - 0x35c], 0x76a700
	add	eax, esi
	mov	rsp, rsp
	movsxd	rdx, eax
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x368], rdx
	lea	rdi, [rdi]
	test	cl, 1
	lea	rdi, [rdi]
	jne	.label_2076
	jmp	.label_1919
.label_3493:
	mov	al, 1
	test	al, 1
	lea	rsi, [rsi]
	jne	.label_3749
	lea	rdi, [rdi]
	jmp	.label_3753
.label_3749:
	lea	rsi, [rsi]
	xor	eax, eax
	mov	cl, al
	nop	
	test	cl, 1
	jne	.label_3754
	jmp	.label_3759
.label_3754:
	mov	al, 1
	test	al, 1
	jne	.label_3761
	jmp	.label_3765
.label_3761:
	mov	rsp, rsp
	imul	eax, dword ptr [rbp - 0x35c], 0x76a700
	movsxd	rcx, eax
	mov	rsp, rsp
	cmp	rcx, 0
	mov	rsp, rsp
	jge	.label_3178
	movabs	rax, 0x8000000000000000
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x1c8]
	mov	rbp, rbp
	imul	edx, dword ptr [rbp - 0x35c], 0x76a700
	mov	rbp, rbp
	movsxd	rsi, edx
	sub	rax, rsi
	lea	rsi, [rsi]
	cmp	rcx, rax
	nop	
	jl	.label_3514
	nop	
	jmp	.label_2679
.label_3178:
	movabs	rax, 0x7fffffffffffffff
	imul	ecx, dword ptr [rbp - 0x35c], 0x76a700
	movsxd	rdx, ecx
	lea	rdi, [rdi]
	sub	rax, rdx
	mov	rsp, rsp
	cmp	rax, qword ptr [rbp - 0x1c8]
	mov	rbp, rbp
	jl	.label_3514
	jmp	.label_2679
.label_3765:
	cmp	qword ptr [rbp - 0x1c8], 0
	mov	rbp, rbp
	jge	.label_3794
	imul	eax, dword ptr [rbp - 0x35c], 0x76a700
	lea	rsi, [rsi]
	movsxd	rcx, eax
	mov	rdx, qword ptr [rbp - 0x1c8]
	mov	rbp, rbp
	imul	eax, dword ptr [rbp - 0x35c], 0x76a700
	movsxd	rsi, eax
	add	rdx, rsi
	cmp	rcx, rdx
	jle	.label_3514
	jmp	.label_2679
.label_3794:
	imul	eax, dword ptr [rbp - 0x35c], 0x76a700
	mov	rsp, rsp
	movsxd	rcx, eax
	cmp	rcx, 0
	jge	.label_3806
	nop	
	mov	rax, qword ptr [rbp - 0x1c8]
	mov	rcx, qword ptr [rbp - 0x1c8]
	lea	rdi, [rdi]
	imul	edx, dword ptr [rbp - 0x35c], 0x76a700
	movsxd	rsi, edx
	add	rcx, rsi
	cmp	rax, rcx
	jle	.label_3514
	lea	rdi, [rdi]
	jmp	.label_2679
.label_3806:
	mov	rax, qword ptr [rbp - 0x1c8]
	imul	ecx, dword ptr [rbp - 0x35c], 0x76a700
	movsxd	rdx, ecx
	mov	rbp, rbp
	add	rax, rdx
	imul	ecx, dword ptr [rbp - 0x35c], 0x76a700
	lea	rdi, [rdi]
	movsxd	rdx, ecx
	lea	rdi, [rdi]
	cmp	rax, rdx
	lea	rdi, [rdi]
	jl	.label_3514
.label_2679:
	mov	rbp, rbp
	movabs	rax, 0x8000000000000000
	mov	rcx, qword ptr [rbp - 0x1c8]
	imul	edx, dword ptr [rbp - 0x35c], 0x76a700
	movsxd	rsi, edx
	add	rcx, rsi
	mov	rbp, rbp
	cmp	rcx, rax
	mov	rbp, rbp
	jl	.label_3514
	movabs	rax, 0x7fffffffffffffff
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x1c8]
	imul	edx, dword ptr [rbp - 0x35c], 0x76a700
	lea	rsi, [rsi]
	movsxd	rsi, edx
	add	rcx, rsi
	cmp	rax, rcx
	lea	rdi, [rdi]
	jge	.label_3843
.label_3514:
	mov	rsp, rsp
	mov	al, 1
	mov	rcx, qword ptr [rbp - 0x1c8]
	imul	edx, dword ptr [rbp - 0x35c], 0x76a700
	movsxd	rsi, edx
	mov	rsp, rsp
	add	rcx, rsi
	mov	qword ptr [rbp - 0x368], rcx
	mov	rbp, rbp
	test	al, 1
	jne	.label_2076
	nop	
	jmp	.label_1919
.label_3843:
	mov	rsp, rsp
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x1c8]
	lea	rsi, [rsi]
	imul	eax, dword ptr [rbp - 0x35c], 0x76a700
	movsxd	rsi, eax
	mov	rsp, rsp
	add	rdx, rsi
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x368], rdx
	lea	rsi, [rsi]
	test	cl, 1
	mov	rbp, rbp
	jne	.label_2076
	jmp	.label_1919
.label_3759:
	mov	rbp, rbp
	mov	al, 1
	nop	
	test	al, 1
	jne	.label_1923
	lea	rsi, [rsi]
	jmp	.label_1928
.label_1923:
	imul	eax, dword ptr [rbp - 0x35c], 0x76a700
	cmp	eax, 0
	mov	rbp, rbp
	jge	.label_1933
	lea	rsi, [rsi]
	movabs	rax, 0x8000000000000000
	mov	rcx, qword ptr [rbp - 0x1c8]
	imul	edx, dword ptr [rbp - 0x35c], 0x76a700
	movsxd	rsi, edx
	sub	rax, rsi
	cmp	rcx, rax
	nop	
	jl	.label_1944
	lea	rdi, [rdi]
	jmp	.label_1957
.label_1933:
	nop	
	movabs	rax, 0x7fffffffffffffff
	mov	rbp, rbp
	imul	ecx, dword ptr [rbp - 0x35c], 0x76a700
	movsxd	rdx, ecx
	sub	rax, rdx
	cmp	rax, qword ptr [rbp - 0x1c8]
	lea	rsi, [rsi]
	jl	.label_1944
	jmp	.label_1957
.label_1928:
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x1c8], 0
	jge	.label_1983
	nop	
	imul	eax, dword ptr [rbp - 0x35c], 0x76a700
	mov	rbp, rbp
	movsxd	rcx, eax
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x1c8]
	lea	rdi, [rdi]
	imul	eax, dword ptr [rbp - 0x35c], 0x76a700
	movsxd	rsi, eax
	add	rdx, rsi
	nop	
	cmp	rcx, rdx
	jle	.label_1944
	lea	rsi, [rsi]
	jmp	.label_1957
.label_1983:
	imul	eax, dword ptr [rbp - 0x35c], 0x76a700
	cmp	eax, 0
	jge	.label_2016
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x1c8]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x1c8]
	imul	edx, dword ptr [rbp - 0x35c], 0x76a700
	mov	rbp, rbp
	movsxd	rsi, edx
	mov	rsp, rsp
	add	rcx, rsi
	cmp	rax, rcx
	jle	.label_1944
	lea	rsi, [rsi]
	jmp	.label_1957
.label_2016:
	mov	rax, qword ptr [rbp - 0x1c8]
	mov	rsp, rsp
	imul	ecx, dword ptr [rbp - 0x35c], 0x76a700
	lea	rdi, [rdi]
	movsxd	rdx, ecx
	add	rax, rdx
	mov	rbp, rbp
	imul	ecx, dword ptr [rbp - 0x35c], 0x76a700
	movsxd	rdx, ecx
	lea	rdi, [rdi]
	cmp	rax, rdx
	jl	.label_1944
.label_1957:
	lea	rsi, [rsi]
	movabs	rax, 0x8000000000000000
	nop	
	mov	rcx, qword ptr [rbp - 0x1c8]
	imul	edx, dword ptr [rbp - 0x35c], 0x76a700
	lea	rdi, [rdi]
	movsxd	rsi, edx
	lea	rsi, [rsi]
	add	rcx, rsi
	cmp	rcx, rax
	nop	
	jl	.label_1944
	movabs	rax, 0x7fffffffffffffff
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x1c8]
	imul	edx, dword ptr [rbp - 0x35c], 0x76a700
	mov	rsp, rsp
	movsxd	rsi, edx
	lea	rdi, [rdi]
	add	rcx, rsi
	cmp	rax, rcx
	lea	rsi, [rsi]
	jge	.label_2061
.label_1944:
	lea	rsi, [rsi]
	mov	al, 1
	mov	rcx, qword ptr [rbp - 0x1c8]
	imul	edx, dword ptr [rbp - 0x35c], 0x76a700
	movsxd	rsi, edx
	add	rcx, rsi
	mov	qword ptr [rbp - 0x368], rcx
	mov	rsp, rsp
	test	al, 1
	mov	rsp, rsp
	jne	.label_2076
	jmp	.label_1919
.label_2061:
	mov	rsp, rsp
	xor	eax, eax
	mov	rbp, rbp
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x1c8]
	lea	rdi, [rdi]
	imul	eax, dword ptr [rbp - 0x35c], 0x76a700
	mov	rsp, rsp
	movsxd	rsi, eax
	mov	rbp, rbp
	add	rdx, rsi
	mov	qword ptr [rbp - 0x368], rdx
	lea	rsi, [rsi]
	test	cl, 1
	lea	rdi, [rdi]
	jne	.label_2076
	jmp	.label_1919
.label_3753:
	mov	rsp, rsp
	xor	eax, eax
	mov	cl, al
	mov	rsp, rsp
	test	cl, 1
	nop	
	jne	.label_2113
	jmp	.label_2119
.label_2113:
	mov	rsp, rsp
	mov	al, 1
	test	al, 1
	jne	.label_2121
	jmp	.label_2126
.label_2121:
	lea	rdi, [rdi]
	imul	eax, dword ptr [rbp - 0x35c], 0x76a700
	movsxd	rcx, eax
	cmp	rcx, 0
	mov	rbp, rbp
	jge	.label_2128
	movabs	rax, 0x8000000000000000
	mov	rcx, qword ptr [rbp - 0x1c8]
	mov	rbp, rbp
	imul	edx, dword ptr [rbp - 0x35c], 0x76a700
	mov	rbp, rbp
	movsxd	rsi, edx
	lea	rdi, [rdi]
	sub	rax, rsi
	mov	rbp, rbp
	cmp	rcx, rax
	nop	
	jl	.label_2133
	jmp	.label_2150
.label_2128:
	movabs	rax, 0x7fffffffffffffff
	nop	
	imul	ecx, dword ptr [rbp - 0x35c], 0x76a700
	movsxd	rdx, ecx
	lea	rdi, [rdi]
	sub	rax, rdx
	cmp	rax, qword ptr [rbp - 0x1c8]
	jl	.label_2133
	jmp	.label_2150
.label_2126:
	nop	
	cmp	qword ptr [rbp - 0x1c8], 0
	jge	.label_2166
	imul	eax, dword ptr [rbp - 0x35c], 0x76a700
	movsxd	rcx, eax
	mov	rdx, qword ptr [rbp - 0x1c8]
	imul	eax, dword ptr [rbp - 0x35c], 0x76a700
	movsxd	rsi, eax
	lea	rsi, [rsi]
	add	rdx, rsi
	cmp	rcx, rdx
	nop	
	jle	.label_2133
	jmp	.label_2150
.label_2166:
	imul	eax, dword ptr [rbp - 0x35c], 0x76a700
	nop	
	movsxd	rcx, eax
	cmp	rcx, 0
	mov	rbp, rbp
	jge	.label_2185
	mov	rax, qword ptr [rbp - 0x1c8]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x1c8]
	nop	
	imul	edx, dword ptr [rbp - 0x35c], 0x76a700
	nop	
	movsxd	rsi, edx
	add	rcx, rsi
	lea	rdi, [rdi]
	cmp	rax, rcx
	jle	.label_2133
	mov	rsp, rsp
	jmp	.label_2150
.label_2185:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x1c8]
	mov	rsp, rsp
	imul	ecx, dword ptr [rbp - 0x35c], 0x76a700
	movsxd	rdx, ecx
	add	rax, rdx
	mov	rsp, rsp
	imul	ecx, dword ptr [rbp - 0x35c], 0x76a700
	movsxd	rdx, ecx
	lea	rdi, [rdi]
	cmp	rax, rdx
	mov	rsp, rsp
	jl	.label_2133
.label_2150:
	movabs	rax, 0x8000000000000000
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x1c8]
	lea	rsi, [rsi]
	imul	edx, dword ptr [rbp - 0x35c], 0x76a700
	lea	rdi, [rdi]
	movsxd	rsi, edx
	add	rcx, rsi
	mov	rbp, rbp
	cmp	rcx, rax
	jl	.label_2133
	movabs	rax, 0x7fffffffffffffff
	mov	rcx, qword ptr [rbp - 0x1c8]
	imul	edx, dword ptr [rbp - 0x35c], 0x76a700
	movsxd	rsi, edx
	add	rcx, rsi
	cmp	rax, rcx
	mov	rbp, rbp
	jge	.label_2239
.label_2133:
	mov	al, 1
	mov	rcx, qword ptr [rbp - 0x1c8]
	imul	edx, dword ptr [rbp - 0x35c], 0x76a700
	movsxd	rsi, edx
	add	rcx, rsi
	mov	qword ptr [rbp - 0x368], rcx
	lea	rsi, [rsi]
	test	al, 1
	jne	.label_2076
	nop	
	jmp	.label_1919
.label_2239:
	xor	eax, eax
	mov	rbp, rbp
	mov	cl, al
	nop	
	mov	rdx, qword ptr [rbp - 0x1c8]
	lea	rdi, [rdi]
	imul	eax, dword ptr [rbp - 0x35c], 0x76a700
	lea	rsi, [rsi]
	movsxd	rsi, eax
	mov	rbp, rbp
	add	rdx, rsi
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x368], rdx
	lea	rdi, [rdi]
	test	cl, 1
	mov	rbp, rbp
	jne	.label_2076
	nop	
	jmp	.label_1919
.label_2119:
	mov	al, 1
	test	al, 1
	mov	rsp, rsp
	jne	.label_2279
	mov	rsp, rsp
	jmp	.label_2285
.label_2279:
	nop	
	imul	eax, dword ptr [rbp - 0x35c], 0x76a700
	mov	rbp, rbp
	cmp	eax, 0
	mov	rbp, rbp
	jge	.label_2288
	movabs	rax, 0x8000000000000000
	mov	rcx, qword ptr [rbp - 0x1c8]
	mov	rbp, rbp
	imul	edx, dword ptr [rbp - 0x35c], 0x76a700
	mov	rsp, rsp
	movsxd	rsi, edx
	sub	rax, rsi
	mov	rbp, rbp
	cmp	rcx, rax
	jl	.label_2296
	jmp	.label_2317
.label_2288:
	mov	rsp, rsp
	movabs	rax, 0x7fffffffffffffff
	mov	rbp, rbp
	imul	ecx, dword ptr [rbp - 0x35c], 0x76a700
	movsxd	rdx, ecx
	sub	rax, rdx
	cmp	rax, qword ptr [rbp - 0x1c8]
	jl	.label_2296
	jmp	.label_2317
.label_2285:
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x1c8], 0
	jge	.label_2324
	imul	eax, dword ptr [rbp - 0x35c], 0x76a700
	movsxd	rcx, eax
	mov	rdx, qword ptr [rbp - 0x1c8]
	mov	rsp, rsp
	imul	eax, dword ptr [rbp - 0x35c], 0x76a700
	lea	rdi, [rdi]
	movsxd	rsi, eax
	add	rdx, rsi
	cmp	rcx, rdx
	lea	rsi, [rsi]
	jle	.label_2296
	jmp	.label_2317
.label_2324:
	imul	eax, dword ptr [rbp - 0x35c], 0x76a700
	cmp	eax, 0
	jge	.label_2344
	mov	rax, qword ptr [rbp - 0x1c8]
	mov	rcx, qword ptr [rbp - 0x1c8]
	mov	rbp, rbp
	imul	edx, dword ptr [rbp - 0x35c], 0x76a700
	mov	rbp, rbp
	movsxd	rsi, edx
	add	rcx, rsi
	lea	rsi, [rsi]
	cmp	rax, rcx
	jle	.label_2296
	jmp	.label_2317
.label_2344:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x1c8]
	imul	ecx, dword ptr [rbp - 0x35c], 0x76a700
	lea	rsi, [rsi]
	movsxd	rdx, ecx
	add	rax, rdx
	imul	ecx, dword ptr [rbp - 0x35c], 0x76a700
	movsxd	rdx, ecx
	lea	rsi, [rsi]
	cmp	rax, rdx
	nop	
	jl	.label_2296
.label_2317:
	movabs	rax, 0x8000000000000000
	mov	rcx, qword ptr [rbp - 0x1c8]
	imul	edx, dword ptr [rbp - 0x35c], 0x76a700
	nop	
	movsxd	rsi, edx
	nop	
	add	rcx, rsi
	cmp	rcx, rax
	jl	.label_2296
	nop	
	movabs	rax, 0x7fffffffffffffff
	mov	rcx, qword ptr [rbp - 0x1c8]
	mov	rsp, rsp
	imul	edx, dword ptr [rbp - 0x35c], 0x76a700
	movsxd	rsi, edx
	add	rcx, rsi
	mov	rsp, rsp
	cmp	rax, rcx
	lea	rdi, [rdi]
	jge	.label_2379
.label_2296:
	mov	al, 1
	nop	
	mov	rcx, qword ptr [rbp - 0x1c8]
	imul	edx, dword ptr [rbp - 0x35c], 0x76a700
	movsxd	rsi, edx
	add	rcx, rsi
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x368], rcx
	nop	
	test	al, 1
	lea	rdi, [rdi]
	jne	.label_2076
	jmp	.label_1919
.label_2379:
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x1c8]
	imul	eax, dword ptr [rbp - 0x35c], 0x76a700
	movsxd	rsi, eax
	nop	
	add	rdx, rsi
	mov	qword ptr [rbp - 0x368], rdx
	test	cl, 1
	jne	.label_2076
.label_1919:
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x368]
	call	time_overflow
	test	al, 1
	mov	rsp, rsp
	jne	.label_2076
	lea	rdi, [rdi]
	jmp	.label_2415
.label_2076:
	mov	rbp, rbp
	jmp	.label_2416
.label_2415:
	lea	rsi, [rsi]
	lea	rsi, [rbp - 0x370]
	mov	rsp, rsp
	lea	rdx, [rbp - 0x3a8]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x368]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x370], rax
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x1d8]
	call	localtime_rz
	cmp	rax, 0
	je	.label_2428
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x378], 0
	mov	rbp, rbp
	je	.label_2428
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x388]
	lea	rdi, [rdi]
	cmp	eax, dword ptr [rbp - 0x264]
	je	.label_2428
	mov	rax, qword ptr [rbp - 0x378]
	mov	qword ptr [rbp - 0x260], rax
	mov	dword ptr [rbp - 0x258], 0x10d
	mov	ecx, dword ptr [rbp - 0x388]
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x254], ecx
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x250], 0
	jmp	.label_2416
.label_2428:
	lea	rdi, [rdi]
	jmp	.label_2463
.label_2463:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x35c]
	add	eax, 1
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x35c], eax
	lea	rsi, [rsi]
	jmp	.label_2465
.label_2416:
	cmp	qword ptr [rbp - 0x270], 0
	je	.label_2477
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x260], 0
	je	.label_2477
	mov	rdi, qword ptr [rbp - 0x270]
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x260]
	lea	rsi, [rsi]
	call	strcmp
	lea	rdi, [rdi]
	cmp	eax, 0
	mov	rbp, rbp
	jne	.label_2477
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x264], 0xffffffff
	mov	qword ptr [rbp - 0x260], 0
.label_2477:
	nop	
	lea	rdi, [rbp - 0x358]
	call	yyparse
	lea	rdi, [rdi]
	cmp	eax, 0
	lea	rdi, [rdi]
	je	.label_2510
	mov	rbp, rbp
	test	byte ptr [rbp - 0x27f], 1
	je	.label_2514
	mov	rax, qword ptr [rbp - 0x140]
	mov	rbp, rbp
	cmp	rax, qword ptr [rbp - 0x358]
	mov	rbp, rbp
	ja	.label_2521
	nop	
	movabs	rdi, OFFSET FLAT:.str.22_0
	nop	
	call	gettext
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x5b0], rax
	jmp	.label_2532
.label_2521:
	movabs	rdi, OFFSET FLAT:.str.23_0
	lea	rdi, [rdi]
	call	gettext
	nop	
	mov	qword ptr [rbp - 0x5b0], rax
.label_2532:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x5b0]
	nop	
	mov	rsi, qword ptr [rbp - 0x358]
	mov	rdi, rax
	mov	rbp, rbp
	mov	al, 0
	mov	rbp, rbp
	call	dbg_printf
.label_2514:
	lea	rsi, [rsi]
	jmp	.label_2446
.label_2510:
	mov	rbp, rbp
	test	byte ptr [rbp - 0x27f], 1
	nop	
	je	.label_2553
	movabs	rdi, OFFSET FLAT:.str.24_0
	call	gettext
	mov	rdi, rax
	mov	rsp, rsp
	mov	al, 0
	mov	rsp, rsp
	call	dbg_printf
	lea	rsi, [rsi]
	test	byte ptr [rbp - 0x2b8], 1
	je	.label_2568
	movabs	rdi, OFFSET FLAT:.str.25_0
	mov	rax,  qword ptr [word ptr [stderr]]
	mov	qword ptr [rbp - 0x5b8], rax
	call	gettext
	nop	
	mov	rdi, qword ptr [rbp - 0x5b8]
	mov	rsi, rax
	mov	al, 0
	lea	rsi, [rsi]
	call	fprintf
	nop	
	mov	dword ptr [rbp - 0x5bc], eax
	jmp	.label_2697
.label_2568:
	cmp	qword ptr [rbp - 0x288], 0
	je	.label_3503
	lea	rsi, [rsi]
	movabs	rdi, OFFSET FLAT:.str.26_0
	mov	rsp, rsp
	mov	rax,  qword ptr [word ptr [stderr]]
	mov	qword ptr [rbp - 0x5c8], rax
	mov	rbp, rbp
	call	gettext
	mov	rdi, qword ptr [rbp - 0x5c8]
	nop	
	mov	rsi, rax
	mov	rsp, rsp
	mov	al, 0
	call	fprintf
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x5cc], eax
	jmp	.label_2611
.label_3503:
	cmp	qword ptr [rbp - 0x30], 0
	je	.label_2616
	mov	rax, qword ptr [rbp - 0x1d8]
	mov	rbp, rbp
	cmp	rax, qword ptr [rbp - 0x28]
	je	.label_3636
	mov	rbp, rbp
	movabs	rdi, OFFSET FLAT:.str.27_0
	mov	rax,  qword ptr [word ptr [stderr]]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x5d8], rax
	call	gettext
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x30]
	mov	rdi, qword ptr [rbp - 0x5d8]
	mov	rsi, rax
	mov	al, 0
	nop	
	call	fprintf
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x5dc], eax
	mov	rsp, rsp
	jmp	.label_2637
.label_3636:
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x30]
	mov	rsp, rsp
	mov	eax, OFFSET FLAT:.str.28
	mov	esi, eax
	call	strcmp
	lea	rsi, [rsi]
	cmp	eax, 0
	lea	rsi, [rsi]
	jne	.label_2647
	movabs	rdi, OFFSET FLAT:.str.29
	mov	rax,  qword ptr [word ptr [stderr]]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x5e8], rax
	mov	rbp, rbp
	call	gettext
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x5e8]
	mov	rsi, rax
	lea	rdi, [rdi]
	mov	al, 0
	mov	rsp, rsp
	call	fprintf
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x5ec], eax
	jmp	.label_2663
.label_2647:
	movabs	rdi, OFFSET FLAT:.str.30
	lea	rsi, [rsi]
	mov	rax,  qword ptr [word ptr [stderr]]
	mov	qword ptr [rbp - 0x5f8], rax
	call	gettext
	mov	rdx, qword ptr [rbp - 0x30]
	mov	rdi, qword ptr [rbp - 0x5f8]
	mov	rsi, rax
	mov	al, 0
	call	fprintf
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x5fc], eax
.label_2663:
	jmp	.label_2637
.label_2637:
	lea	rsi, [rsi]
	jmp	.label_2680
.label_2616:
	movabs	rdi, OFFSET FLAT:.str.31
	mov	rax,  qword ptr [word ptr [stderr]]
	mov	qword ptr [rbp - 0x608], rax
	call	gettext
	mov	rdi, qword ptr [rbp - 0x608]
	mov	rsp, rsp
	mov	rsi, rax
	lea	rsi, [rsi]
	mov	al, 0
	lea	rdi, [rdi]
	call	fprintf
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x60c], eax
.label_2680:
	lea	rdi, [rdi]
	jmp	.label_2611
.label_2611:
	lea	rdi, [rdi]
	jmp	.label_2697
.label_2697:
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x2a0], 0
	lea	rsi, [rsi]
	je	.label_2700
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x288], 0
	jne	.label_2700
	xor	eax, eax
	cmp	eax, dword ptr [rbp - 0x344]
	jge	.label_2700
	movabs	rsi, OFFSET FLAT:.str.32
	mov	rdi,  qword ptr [word ptr [stderr]]
	mov	al, 0
	nop	
	call	fprintf
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x610], eax
.label_2700:
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x288], 0
	je	.label_2372
	lea	rsi, [rbp - 0xc0]
	mov	rdi,  qword ptr [word ptr [stderr]]
	nop	
	mov	eax, dword ptr [rbp - 0x340]
	mov	qword ptr [rbp - 0x618], rdi
	mov	edi, eax
	lea	rsi, [rsi]
	call	time_zone_str
	movabs	rsi, OFFSET FLAT:.str.33
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x618]
	lea	rsi, [rsi]
	mov	rdx, rax
	mov	rbp, rbp
	mov	al, 0
	mov	rbp, rbp
	call	fprintf
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x61c], eax
.label_2372:
	mov	edi, 0xa
	mov	rbp, rbp
	mov	rsi,  qword ptr [word ptr [stderr]]
	call	fputc
	mov	dword ptr [rbp - 0x620], eax
.label_2553:
	lea	rsi, [rsi]
	test	byte ptr [rbp - 0x2b8], 1
	je	.label_2747
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 8]
	mov	rcx, qword ptr [rbp - 0x300]
	mov	qword ptr [rax], rcx
	mov	rcx, qword ptr [rbp - 0x2f8]
	mov	qword ptr [rax + 8], rcx
	jmp	.label_2394
.label_2747:
	nop	
	mov	eax, 1
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x290]
	lea	rdi, [rdi]
	or	rdx, qword ptr [rbp - 0x2b0]
	mov	rbp, rbp
	or	rdx, qword ptr [rbp - 0x2a8]
	lea	rdi, [rdi]
	or	rdx, qword ptr [rbp - 0x298]
	nop	
	mov	rsi, qword ptr [rbp - 0x2a0]
	lea	rdi, [rdi]
	add	rsi, qword ptr [rbp - 0x288]
	lea	rsi, [rsi]
	or	rdx, rsi
	cmp	rcx, rdx
	jge	.label_2754
	lea	rdi, [rdi]
	test	byte ptr [rbp - 0x27f], 1
	je	.label_2779
	cmp	qword ptr [rbp - 0x290], 1
	jle	.label_2783
	nop	
	movabs	rdi, OFFSET FLAT:.str.34
	lea	rdi, [rdi]
	mov	al, 0
	call	dbg_printf
.label_2783:
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x2b0], 1
	jle	.label_2789
	mov	rsp, rsp
	movabs	rdi, OFFSET FLAT:.str.35
	nop	
	mov	al, 0
	lea	rdi, [rdi]
	call	dbg_printf
.label_2789:
	cmp	qword ptr [rbp - 0x2a8], 1
	nop	
	jle	.label_2804
	movabs	rdi, OFFSET FLAT:.str.36_0
	mov	al, 0
	mov	rbp, rbp
	call	dbg_printf
.label_2804:
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x298], 1
	mov	rbp, rbp
	jle	.label_2815
	lea	rsi, [rsi]
	movabs	rdi, OFFSET FLAT:.str.37
	mov	al, 0
	call	dbg_printf
.label_2815:
	mov	rax, qword ptr [rbp - 0x2a0]
	lea	rsi, [rsi]
	add	rax, qword ptr [rbp - 0x288]
	cmp	rax, 1
	jle	.label_2828
	mov	rbp, rbp
	movabs	rdi, OFFSET FLAT:.str.38_0
	mov	al, 0
	call	dbg_printf
.label_2828:
	jmp	.label_2779
.label_2779:
	nop	
	jmp	.label_2446
.label_2754:
	lea	rax, [rbp - 0x68]
	mov	rbp, rbp
	lea	rcx, [rbp - 0x358]
	add	rcx, 0x20
	nop	
	mov	dl, byte ptr [rbp - 0x27f]
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
	jne	.label_2857
	lea	rdi, [rdi]
	jmp	.label_1993
.label_2857:
	lea	rdi, [rdi]
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_2863
	jmp	.label_2867
.label_2863:
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	mov	rbp, rbp
	jne	.label_3232
	jmp	.label_2870
.label_3232:
	mov	al, 1
	mov	rbp, rbp
	test	al, 1
	jne	.label_2871
	jmp	.label_2874
.label_2871:
	mov	al, 1
	test	al, 1
	jne	.label_2875
	jmp	.label_3288
.label_2875:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x320]
	mov	cl, al
	mov	rbp, rbp
	movsx	edx, cl
	lea	rdi, [rdi]
	cmp	edx, 0x80000001
	lea	rdi, [rdi]
	jl	.label_2878
	mov	rsp, rsp
	jmp	.label_2896
.label_3288:
	lea	rdi, [rdi]
	mov	eax, 0x80000000
	mov	rcx, qword ptr [rbp - 0x320]
	mov	dl, cl
	mov	rbp, rbp
	movsx	esi, dl
	cmp	eax, esi
	lea	rsi, [rsi]
	jl	.label_2878
	nop	
	jmp	.label_2896
.label_2874:
	mov	rax, qword ptr [rbp - 0x320]
	mov	cl, al
	movsx	edx, cl
	cmp	edx, 0
	mov	rbp, rbp
	jge	.label_2898
	mov	rsp, rsp
	mov	eax, 0xffffffff
	mov	rcx, qword ptr [rbp - 0x320]
	mov	dl, cl
	movsx	esi, dl
	add	esi, -1
	cmp	eax, esi
	nop	
	jle	.label_2878
	lea	rsi, [rsi]
	jmp	.label_2896
.label_2898:
	lea	rsi, [rsi]
	mov	al, 1
	nop	
	test	al, 1
	jne	.label_2912
	jmp	.label_2915
.label_2912:
	mov	rax, qword ptr [rbp - 0x320]
	mov	rbp, rbp
	mov	cl, al
	movsx	edx, cl
	mov	rax, qword ptr [rbp - 0x320]
	mov	cl, al
	lea	rdi, [rdi]
	movsx	esi, cl
	lea	rdi, [rdi]
	add	esi, -1
	mov	rbp, rbp
	cmp	edx, esi
	jle	.label_2878
	lea	rdi, [rdi]
	jmp	.label_2896
.label_2915:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x320]
	mov	cl, al
	movsx	edx, cl
	add	edx, -1
	cmp	edx, -1
	mov	rbp, rbp
	jl	.label_2878
.label_2896:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x320]
	mov	cl, al
	movsx	edx, cl
	lea	rsi, [rsi]
	add	edx, -1
	cmp	edx, -0x80
	lea	rsi, [rsi]
	jl	.label_2878
	mov	eax, 0x7f
	mov	rcx, qword ptr [rbp - 0x320]
	lea	rdi, [rdi]
	mov	dl, cl
	movsx	esi, dl
	lea	rsi, [rsi]
	add	esi, -1
	lea	rsi, [rsi]
	cmp	eax, esi
	nop	
	jge	.label_3689
.label_2878:
	mov	al, 1
	mov	rcx, qword ptr [rbp - 0x320]
	lea	rsi, [rsi]
	mov	dl, cl
	nop	
	movsx	esi, dl
	add	esi, -1
	mov	dl, sil
	movsx	esi, dl
	mov	dword ptr [rbp - 0x58], esi
	test	al, 1
	jne	.label_1993
	jmp	.label_2365
.label_3689:
	xor	eax, eax
	nop	
	mov	cl, al
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x320]
	mov	sil, dl
	movsx	eax, sil
	add	eax, -1
	mov	sil, al
	nop	
	movsx	eax, sil
	mov	dword ptr [rbp - 0x58], eax
	test	cl, 1
	jne	.label_1993
	lea	rsi, [rsi]
	jmp	.label_2365
.label_2870:
	mov	al, 1
	test	al, 1
	jne	.label_2964
	jmp	.label_3862
.label_2964:
	mov	al, 1
	test	al, 1
	jne	.label_2970
	jmp	.label_2972
.label_2970:
	mov	rsp, rsp
	movabs	rax, 0x8000000000000001
	cmp	qword ptr [rbp - 0x320], rax
	mov	rbp, rbp
	jl	.label_2974
	jmp	.label_2982
.label_2972:
	movabs	rax, 0x8000000000000000
	cmp	rax, qword ptr [rbp - 0x320]
	jl	.label_2974
	jmp	.label_2982
.label_3862:
	cmp	qword ptr [rbp - 0x320], 0
	lea	rsi, [rsi]
	jge	.label_2988
	lea	rsi, [rsi]
	mov	rax, -1
	mov	rcx, qword ptr [rbp - 0x320]
	add	rcx, -1
	lea	rsi, [rsi]
	cmp	rax, rcx
	jle	.label_2974
	nop	
	jmp	.label_2982
.label_2988:
	mov	rsp, rsp
	mov	al, 1
	test	al, 1
	lea	rdi, [rdi]
	jne	.label_3002
	jmp	.label_3005
.label_3002:
	mov	rax, qword ptr [rbp - 0x320]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x320]
	add	rcx, -1
	lea	rsi, [rsi]
	cmp	rax, rcx
	mov	rbp, rbp
	jle	.label_2974
	lea	rdi, [rdi]
	jmp	.label_2982
.label_3005:
	mov	rax, qword ptr [rbp - 0x320]
	add	rax, -1
	nop	
	cmp	rax, -1
	jl	.label_2974
.label_2982:
	mov	rax, qword ptr [rbp - 0x320]
	add	rax, -1
	cmp	rax, -0x80
	jl	.label_2974
	mov	rbp, rbp
	mov	eax, 0x7f
	lea	rdi, [rdi]
	mov	ecx, eax
	nop	
	mov	rdx, qword ptr [rbp - 0x320]
	add	rdx, -1
	lea	rsi, [rsi]
	cmp	rcx, rdx
	jge	.label_3030
.label_2974:
	lea	rsi, [rsi]
	mov	al, 1
	mov	rcx, qword ptr [rbp - 0x320]
	lea	rsi, [rsi]
	mov	edx, ecx
	mov	rsp, rsp
	add	edx, -1
	lea	rsi, [rsi]
	mov	sil, dl
	movsx	edx, sil
	mov	dword ptr [rbp - 0x58], edx
	lea	rsi, [rsi]
	test	al, 1
	jne	.label_1993
	lea	rsi, [rsi]
	jmp	.label_2365
.label_3030:
	xor	eax, eax
	mov	rbp, rbp
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x320]
	lea	rsi, [rsi]
	mov	eax, edx
	add	eax, -1
	mov	sil, al
	mov	rbp, rbp
	movsx	eax, sil
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x58], eax
	test	cl, 1
	nop	
	jne	.label_1993
	lea	rdi, [rdi]
	jmp	.label_2365
.label_2867:
	lea	rdi, [rdi]
	xor	eax, eax
	lea	rsi, [rsi]
	mov	cl, al
	mov	rbp, rbp
	test	cl, 1
	jne	.label_3053
	jmp	.label_3060
.label_3053:
	xor	eax, eax
	nop	
	mov	cl, al
	test	cl, 1
	jne	.label_3062
	nop	
	jmp	.label_3064
.label_3062:
	lea	rdi, [rdi]
	mov	al, 1
	test	al, 1
	mov	rsp, rsp
	jne	.label_3066
	lea	rdi, [rdi]
	jmp	.label_3070
.label_3066:
	lea	rsi, [rsi]
	mov	al, 1
	test	al, 1
	mov	rbp, rbp
	jne	.label_3072
	lea	rdi, [rdi]
	jmp	.label_3075
.label_3072:
	mov	rax, qword ptr [rbp - 0x320]
	mov	rbp, rbp
	mov	cx, ax
	movsx	edx, cx
	lea	rsi, [rsi]
	cmp	edx, 0x80000001
	jl	.label_3025
	jmp	.label_3084
.label_3075:
	mov	eax, 0x80000000
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x320]
	mov	dx, cx
	mov	rsp, rsp
	movsx	esi, dx
	cmp	eax, esi
	mov	rbp, rbp
	jl	.label_3025
	mov	rsp, rsp
	jmp	.label_3084
.label_3070:
	mov	rax, qword ptr [rbp - 0x320]
	mov	rsp, rsp
	mov	cx, ax
	movsx	edx, cx
	cmp	edx, 0
	lea	rdi, [rdi]
	jge	.label_3094
	lea	rdi, [rdi]
	mov	eax, 0xffffffff
	mov	rcx, qword ptr [rbp - 0x320]
	mov	dx, cx
	lea	rdi, [rdi]
	movsx	esi, dx
	add	esi, -1
	mov	rsp, rsp
	cmp	eax, esi
	lea	rdi, [rdi]
	jle	.label_3025
	mov	rbp, rbp
	jmp	.label_3084
.label_3094:
	lea	rsi, [rsi]
	mov	al, 1
	test	al, 1
	mov	rsp, rsp
	jne	.label_3115
	mov	rbp, rbp
	jmp	.label_3117
.label_3115:
	mov	rax, qword ptr [rbp - 0x320]
	mov	cx, ax
	lea	rsi, [rsi]
	movsx	edx, cx
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x320]
	mov	cx, ax
	nop	
	movsx	esi, cx
	add	esi, -1
	lea	rdi, [rdi]
	cmp	edx, esi
	lea	rsi, [rsi]
	jle	.label_3025
	mov	rbp, rbp
	jmp	.label_3084
.label_3117:
	mov	rax, qword ptr [rbp - 0x320]
	mov	rsp, rsp
	mov	cx, ax
	mov	rbp, rbp
	movsx	edx, cx
	add	edx, -1
	cmp	edx, -1
	jl	.label_3025
.label_3084:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x320]
	mov	cx, ax
	movsx	edx, cx
	mov	rsp, rsp
	add	edx, -1
	lea	rsi, [rsi]
	cmp	edx, 0xffff8000
	mov	rbp, rbp
	jl	.label_3025
	mov	rsp, rsp
	mov	eax, 0x7fff
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x320]
	mov	rsp, rsp
	mov	dx, cx
	movsx	esi, dx
	nop	
	add	esi, -1
	cmp	eax, esi
	lea	rsi, [rsi]
	jge	.label_3149
.label_3025:
	mov	rsp, rsp
	mov	al, 1
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x320]
	lea	rsi, [rsi]
	mov	dx, cx
	movsx	esi, dx
	add	esi, -1
	mov	dx, si
	movsx	esi, dx
	nop	
	mov	dword ptr [rbp - 0x58], esi
	test	al, 1
	jne	.label_1993
	jmp	.label_2365
.label_3149:
	lea	rdi, [rdi]
	xor	eax, eax
	mov	cl, al
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x320]
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
	mov	dword ptr [rbp - 0x58], eax
	test	cl, 1
	jne	.label_1993
	mov	rsp, rsp
	jmp	.label_2365
.label_3064:
	lea	rdi, [rdi]
	mov	al, 1
	test	al, 1
	jne	.label_3167
	jmp	.label_3340
.label_3167:
	mov	rsp, rsp
	mov	al, 1
	test	al, 1
	jne	.label_3174
	jmp	.label_3179
.label_3174:
	movabs	rax, 0x8000000000000001
	cmp	qword ptr [rbp - 0x320], rax
	jl	.label_3182
	nop	
	jmp	.label_3187
.label_3179:
	lea	rsi, [rsi]
	movabs	rax, 0x8000000000000000
	mov	rsp, rsp
	cmp	rax, qword ptr [rbp - 0x320]
	lea	rsi, [rsi]
	jl	.label_3182
	jmp	.label_3187
.label_3340:
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x320], 0
	lea	rdi, [rdi]
	jge	.label_3200
	nop	
	mov	rax, -1
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x320]
	mov	rbp, rbp
	add	rcx, -1
	cmp	rax, rcx
	jle	.label_3182
	nop	
	jmp	.label_3187
.label_3200:
	mov	al, 1
	mov	rsp, rsp
	test	al, 1
	jne	.label_3215
	mov	rbp, rbp
	jmp	.label_3219
.label_3215:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x320]
	mov	rcx, qword ptr [rbp - 0x320]
	add	rcx, -1
	cmp	rax, rcx
	mov	rbp, rbp
	jle	.label_3182
	mov	rbp, rbp
	jmp	.label_3187
.label_3219:
	mov	rax, qword ptr [rbp - 0x320]
	add	rax, -1
	lea	rsi, [rsi]
	cmp	rax, -1
	mov	rbp, rbp
	jl	.label_3182
.label_3187:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x320]
	add	rax, -1
	mov	rsp, rsp
	cmp	rax, -0x8000
	lea	rsi, [rsi]
	jl	.label_3182
	mov	eax, 0x7fff
	mov	ecx, eax
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x320]
	add	rdx, -1
	mov	rsp, rsp
	cmp	rcx, rdx
	nop	
	jge	.label_3248
.label_3182:
	nop	
	mov	al, 1
	mov	rcx, qword ptr [rbp - 0x320]
	mov	edx, ecx
	add	edx, -1
	mov	si, dx
	movsx	edx, si
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x58], edx
	test	al, 1
	nop	
	jne	.label_1993
	mov	rbp, rbp
	jmp	.label_2365
.label_3248:
	xor	eax, eax
	lea	rdi, [rdi]
	mov	cl, al
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x320]
	mov	rbp, rbp
	mov	eax, edx
	mov	rbp, rbp
	add	eax, -1
	lea	rsi, [rsi]
	mov	si, ax
	movsx	eax, si
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x58], eax
	test	cl, 1
	mov	rsp, rsp
	jne	.label_1993
	mov	rsp, rsp
	jmp	.label_2365
.label_3060:
	mov	al, 1
	test	al, 1
	lea	rdi, [rdi]
	jne	.label_3271
	lea	rdi, [rdi]
	jmp	.label_3272
.label_3271:
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_3273
	jmp	.label_3308
.label_3273:
	mov	al, 1
	nop	
	test	al, 1
	jne	.label_3276
	jmp	.label_3279
.label_3276:
	mov	al, 1
	nop	
	test	al, 1
	jne	.label_2035
	jmp	.label_3284
.label_2035:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x320]
	mov	ecx, eax
	nop	
	cmp	ecx, 0x80000001
	mov	rsp, rsp
	jl	.label_2321
	lea	rdi, [rdi]
	jmp	.label_2272
.label_3284:
	lea	rsi, [rsi]
	mov	eax, 0x80000000
	mov	rcx, qword ptr [rbp - 0x320]
	mov	edx, ecx
	nop	
	cmp	eax, edx
	jl	.label_2321
	jmp	.label_2272
.label_3279:
	mov	rax, qword ptr [rbp - 0x320]
	lea	rdi, [rdi]
	mov	ecx, eax
	lea	rsi, [rsi]
	cmp	ecx, 0
	jge	.label_3295
	lea	rsi, [rsi]
	mov	eax, 0xffffffff
	mov	rcx, qword ptr [rbp - 0x320]
	nop	
	mov	edx, ecx
	add	edx, -1
	mov	rbp, rbp
	cmp	eax, edx
	lea	rdi, [rdi]
	jle	.label_2321
	lea	rdi, [rdi]
	jmp	.label_2272
.label_3295:
	mov	al, 1
	mov	rsp, rsp
	test	al, 1
	nop	
	jne	.label_3305
	mov	rbp, rbp
	jmp	.label_2314
.label_3305:
	mov	rax, qword ptr [rbp - 0x320]
	mov	ecx, eax
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x320]
	mov	edx, eax
	add	edx, -1
	lea	rsi, [rsi]
	cmp	ecx, edx
	lea	rsi, [rsi]
	jle	.label_2321
	jmp	.label_2272
.label_2314:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x320]
	mov	ecx, eax
	add	ecx, -1
	cmp	ecx, -1
	jl	.label_2321
.label_2272:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x320]
	mov	ecx, eax
	add	ecx, -1
	cmp	ecx, 0x80000000
	jl	.label_2321
	mov	eax, 0x7fffffff
	mov	rcx, qword ptr [rbp - 0x320]
	lea	rsi, [rsi]
	mov	edx, ecx
	add	edx, -1
	lea	rsi, [rsi]
	cmp	eax, edx
	jge	.label_2445
.label_2321:
	mov	rsp, rsp
	mov	al, 1
	mov	rcx, qword ptr [rbp - 0x320]
	mov	edx, ecx
	mov	rsp, rsp
	add	edx, -1
	mov	dword ptr [rbp - 0x58], edx
	lea	rsi, [rsi]
	test	al, 1
	jne	.label_1993
	jmp	.label_2365
.label_2445:
	mov	rsp, rsp
	xor	eax, eax
	mov	cl, al
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x320]
	mov	rsp, rsp
	mov	eax, edx
	nop	
	add	eax, -1
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x58], eax
	lea	rsi, [rsi]
	test	cl, 1
	jne	.label_1993
	jmp	.label_2365
.label_3308:
	mov	rbp, rbp
	mov	al, 1
	test	al, 1
	mov	rbp, rbp
	jne	.label_3369
	jmp	.label_3373
.label_3369:
	mov	al, 1
	mov	rbp, rbp
	test	al, 1
	jne	.label_3374
	jmp	.label_3378
.label_3374:
	movabs	rax, 0x8000000000000001
	cmp	qword ptr [rbp - 0x320], rax
	jl	.label_3379
	jmp	.label_3383
.label_3378:
	movabs	rax, 0x8000000000000000
	lea	rdi, [rdi]
	cmp	rax, qword ptr [rbp - 0x320]
	jl	.label_3379
	jmp	.label_3383
.label_3373:
	nop	
	cmp	qword ptr [rbp - 0x320], 0
	jge	.label_3389
	mov	rax, -1
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x320]
	mov	rbp, rbp
	add	rcx, -1
	mov	rbp, rbp
	cmp	rax, rcx
	mov	rsp, rsp
	jle	.label_3379
	jmp	.label_3383
.label_3389:
	lea	rsi, [rsi]
	mov	al, 1
	test	al, 1
	mov	rbp, rbp
	jne	.label_3405
	jmp	.label_3407
.label_3405:
	mov	rax, qword ptr [rbp - 0x320]
	mov	rcx, qword ptr [rbp - 0x320]
	lea	rdi, [rdi]
	add	rcx, -1
	cmp	rax, rcx
	jle	.label_3379
	mov	rsp, rsp
	jmp	.label_3383
.label_3407:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x320]
	add	rax, -1
	cmp	rax, -1
	lea	rsi, [rsi]
	jl	.label_3379
.label_3383:
	mov	rax, qword ptr [rbp - 0x320]
	add	rax, -1
	cmp	rax, -0x80000000
	lea	rdi, [rdi]
	jl	.label_3379
	lea	rsi, [rsi]
	mov	eax, 0x7fffffff
	mov	rsp, rsp
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x320]
	add	rdx, -1
	nop	
	cmp	rcx, rdx
	lea	rdi, [rdi]
	jge	.label_3422
.label_3379:
	mov	al, 1
	mov	rcx, qword ptr [rbp - 0x320]
	mov	edx, ecx
	mov	rbp, rbp
	add	edx, -1
	mov	dword ptr [rbp - 0x58], edx
	test	al, 1
	jne	.label_1993
	lea	rsi, [rsi]
	jmp	.label_2365
.label_3422:
	lea	rsi, [rsi]
	xor	eax, eax
	mov	cl, al
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x320]
	mov	rbp, rbp
	mov	eax, edx
	nop	
	add	eax, -1
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x58], eax
	test	cl, 1
	nop	
	jne	.label_1993
	jmp	.label_2365
.label_3272:
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_3451
	jmp	.label_3455
.label_3451:
	xor	eax, eax
	mov	cl, al
	nop	
	test	cl, 1
	lea	rsi, [rsi]
	jne	.label_3456
	lea	rsi, [rsi]
	jmp	.label_3461
.label_3456:
	nop	
	mov	al, 1
	test	al, 1
	mov	rsp, rsp
	jne	.label_3463
	mov	rbp, rbp
	jmp	.label_3470
.label_3463:
	nop	
	mov	al, 1
	test	al, 1
	jne	.label_3264
	nop	
	jmp	.label_3475
.label_3264:
	movabs	rax, 0x8000000000000001
	cmp	qword ptr [rbp - 0x320], rax
	mov	rsp, rsp
	jl	.label_3478
	nop	
	jmp	.label_3484
.label_3475:
	lea	rsi, [rsi]
	movabs	rax, 0x8000000000000000
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rbp - 0x320]
	mov	rsp, rsp
	jl	.label_3478
	nop	
	jmp	.label_3484
.label_3470:
	nop	
	cmp	qword ptr [rbp - 0x320], 0
	jge	.label_3491
	mov	rax, -1
	mov	rcx, qword ptr [rbp - 0x320]
	lea	rdi, [rdi]
	add	rcx, -1
	nop	
	cmp	rax, rcx
	lea	rsi, [rsi]
	jle	.label_3478
	jmp	.label_3484
.label_3491:
	nop	
	mov	al, 1
	test	al, 1
	jne	.label_3506
	lea	rsi, [rsi]
	jmp	.label_3510
.label_3506:
	mov	rax, qword ptr [rbp - 0x320]
	mov	rcx, qword ptr [rbp - 0x320]
	add	rcx, -1
	cmp	rax, rcx
	jle	.label_3478
	lea	rdi, [rdi]
	jmp	.label_3484
.label_3510:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x320]
	add	rax, -1
	cmp	rax, -1
	jl	.label_3478
.label_3484:
	movabs	rax, 0x8000000000000000
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x320]
	nop	
	add	rcx, -1
	mov	rsp, rsp
	cmp	rcx, rax
	mov	rbp, rbp
	jl	.label_3478
	movabs	rax, 0x7fffffffffffffff
	mov	rcx, qword ptr [rbp - 0x320]
	mov	rsp, rsp
	add	rcx, -1
	nop	
	cmp	rax, rcx
	jge	.label_3532
.label_3478:
	mov	al, 1
	mov	rcx, qword ptr [rbp - 0x320]
	lea	rsi, [rsi]
	add	rcx, -1
	mov	edx, ecx
	mov	dword ptr [rbp - 0x58], edx
	nop	
	test	al, 1
	jne	.label_1993
	lea	rdi, [rdi]
	jmp	.label_2365
.label_3532:
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x320]
	add	rdx, -1
	mov	rbp, rbp
	mov	eax, edx
	mov	dword ptr [rbp - 0x58], eax
	mov	rsp, rsp
	test	cl, 1
	jne	.label_1993
	jmp	.label_2365
.label_3461:
	lea	rdi, [rdi]
	mov	al, 1
	mov	rsp, rsp
	test	al, 1
	jne	.label_3561
	lea	rsi, [rsi]
	jmp	.label_3567
.label_3561:
	lea	rsi, [rsi]
	mov	al, 1
	mov	rbp, rbp
	test	al, 1
	jne	.label_3569
	lea	rsi, [rsi]
	jmp	.label_3574
.label_3569:
	nop	
	movabs	rax, 0x8000000000000001
	cmp	qword ptr [rbp - 0x320], rax
	jl	.label_1964
	lea	rsi, [rsi]
	jmp	.label_3022
.label_3574:
	movabs	rax, 0x8000000000000000
	cmp	rax, qword ptr [rbp - 0x320]
	jl	.label_1964
	jmp	.label_3022
.label_3567:
	cmp	qword ptr [rbp - 0x320], 0
	jge	.label_3590
	mov	rax, -1
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x320]
	add	rcx, -1
	cmp	rax, rcx
	jle	.label_1964
	jmp	.label_3022
.label_3590:
	nop	
	mov	al, 1
	test	al, 1
	lea	rdi, [rdi]
	jne	.label_2038
	jmp	.label_3468
.label_2038:
	nop	
	mov	rax, qword ptr [rbp - 0x320]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x320]
	add	rcx, -1
	mov	rbp, rbp
	cmp	rax, rcx
	jle	.label_1964
	jmp	.label_3022
.label_3468:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x320]
	lea	rdi, [rdi]
	add	rax, -1
	nop	
	cmp	rax, -1
	jl	.label_1964
.label_3022:
	nop	
	movabs	rax, 0x8000000000000000
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x320]
	lea	rsi, [rsi]
	add	rcx, -1
	lea	rsi, [rsi]
	cmp	rcx, rax
	lea	rdi, [rdi]
	jl	.label_1964
	mov	rsp, rsp
	movabs	rax, 0x7fffffffffffffff
	mov	rcx, qword ptr [rbp - 0x320]
	mov	rsp, rsp
	add	rcx, -1
	lea	rsi, [rsi]
	cmp	rax, rcx
	jge	.label_3622
.label_1964:
	mov	al, 1
	mov	rcx, qword ptr [rbp - 0x320]
	add	rcx, -1
	mov	edx, ecx
	mov	dword ptr [rbp - 0x58], edx
	mov	rsp, rsp
	test	al, 1
	lea	rsi, [rsi]
	jne	.label_1993
	jmp	.label_2365
.label_3622:
	xor	eax, eax
	mov	cl, al
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x320]
	add	rdx, -1
	lea	rdi, [rdi]
	mov	eax, edx
	mov	dword ptr [rbp - 0x58], eax
	test	cl, 1
	mov	rsp, rsp
	jne	.label_1993
	mov	rbp, rbp
	jmp	.label_2365
.label_3455:
	lea	rdi, [rdi]
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_3650
	lea	rdi, [rdi]
	jmp	.label_2449
.label_3650:
	lea	rdi, [rdi]
	mov	al, 1
	test	al, 1
	mov	rsp, rsp
	jne	.label_3657
	jmp	.label_3660
.label_3657:
	lea	rsi, [rsi]
	mov	al, 1
	test	al, 1
	lea	rsi, [rsi]
	jne	.label_3662
	jmp	.label_3667
.label_3662:
	movabs	rax, 0x8000000000000001
	cmp	qword ptr [rbp - 0x320], rax
	mov	rbp, rbp
	jl	.label_3669
	jmp	.label_2714
.label_3667:
	movabs	rax, 0x8000000000000000
	mov	rbp, rbp
	cmp	rax, qword ptr [rbp - 0x320]
	mov	rbp, rbp
	jl	.label_3669
	jmp	.label_2714
.label_3660:
	nop	
	cmp	qword ptr [rbp - 0x320], 0
	jge	.label_3687
	mov	rax, -1
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x320]
	lea	rdi, [rdi]
	add	rcx, -1
	cmp	rax, rcx
	jle	.label_3669
	mov	rsp, rsp
	jmp	.label_2714
.label_3687:
	mov	al, 1
	nop	
	test	al, 1
	mov	rbp, rbp
	jne	.label_3695
	jmp	.label_3696
.label_3695:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x320]
	mov	rcx, qword ptr [rbp - 0x320]
	nop	
	add	rcx, -1
	mov	rbp, rbp
	cmp	rax, rcx
	jle	.label_3669
	jmp	.label_2714
.label_3696:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x320]
	mov	rsp, rsp
	add	rax, -1
	nop	
	cmp	rax, -1
	jl	.label_3669
.label_2714:
	lea	rsi, [rsi]
	movabs	rax, 0x8000000000000000
	mov	rcx, qword ptr [rbp - 0x320]
	lea	rdi, [rdi]
	add	rcx, -1
	cmp	rcx, rax
	mov	rbp, rbp
	jl	.label_3669
	movabs	rax, 0x7fffffffffffffff
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x320]
	add	rcx, -1
	cmp	rax, rcx
	jge	.label_3718
.label_3669:
	mov	al, 1
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x320]
	lea	rsi, [rsi]
	add	rcx, -1
	mov	edx, ecx
	mov	dword ptr [rbp - 0x58], edx
	test	al, 1
	lea	rdi, [rdi]
	jne	.label_1993
	jmp	.label_2365
.label_3718:
	xor	eax, eax
	mov	rbp, rbp
	mov	cl, al
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x320]
	mov	rsp, rsp
	add	rdx, -1
	mov	eax, edx
	mov	dword ptr [rbp - 0x58], eax
	test	cl, 1
	jne	.label_1993
	jmp	.label_2365
.label_2449:
	mov	rbp, rbp
	mov	al, 1
	nop	
	test	al, 1
	lea	rdi, [rdi]
	jne	.label_3739
	mov	rbp, rbp
	jmp	.label_3071
.label_3739:
	mov	al, 1
	lea	rsi, [rsi]
	test	al, 1
	nop	
	jne	.label_3743
	jmp	.label_3748
.label_3743:
	movabs	rax, 0x8000000000000001
	cmp	qword ptr [rbp - 0x320], rax
	jl	.label_3218
	jmp	.label_3265
.label_3748:
	nop	
	movabs	rax, 0x8000000000000000
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rbp - 0x320]
	mov	rsp, rsp
	jl	.label_3218
	lea	rdi, [rdi]
	jmp	.label_3265
.label_3071:
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x320], 0
	jge	.label_3769
	mov	rax, -1
	mov	rcx, qword ptr [rbp - 0x320]
	mov	rsp, rsp
	add	rcx, -1
	lea	rdi, [rdi]
	cmp	rax, rcx
	jle	.label_3218
	nop	
	jmp	.label_3265
.label_3769:
	mov	al, 1
	mov	rsp, rsp
	test	al, 1
	jne	.label_3780
	jmp	.label_3282
.label_3780:
	mov	rax, qword ptr [rbp - 0x320]
	mov	rcx, qword ptr [rbp - 0x320]
	lea	rsi, [rsi]
	add	rcx, -1
	lea	rdi, [rdi]
	cmp	rax, rcx
	jle	.label_3218
	jmp	.label_3265
.label_3282:
	mov	rax, qword ptr [rbp - 0x320]
	lea	rsi, [rsi]
	add	rax, -1
	cmp	rax, -1
	jl	.label_3218
.label_3265:
	lea	rdi, [rdi]
	movabs	rax, 0x8000000000000000
	mov	rcx, qword ptr [rbp - 0x320]
	lea	rdi, [rdi]
	add	rcx, -1
	cmp	rcx, rax
	lea	rsi, [rsi]
	jl	.label_3218
	mov	rsp, rsp
	movabs	rax, 0x7fffffffffffffff
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x320]
	add	rcx, -1
	cmp	rax, rcx
	lea	rsi, [rsi]
	jge	.label_3524
.label_3218:
	mov	rbp, rbp
	mov	al, 1
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x320]
	add	rcx, -1
	lea	rsi, [rsi]
	mov	edx, ecx
	mov	dword ptr [rbp - 0x58], edx
	mov	rsp, rsp
	test	al, 1
	jne	.label_1993
	mov	rbp, rbp
	jmp	.label_2365
.label_3524:
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x320]
	lea	rdi, [rdi]
	add	rdx, -1
	mov	eax, edx
	nop	
	mov	dword ptr [rbp - 0x58], eax
	test	cl, 1
	mov	rbp, rbp
	jne	.label_1993
.label_2365:
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_3337
	lea	rsi, [rsi]
	jmp	.label_3824
.label_3337:
	xor	eax, eax
	lea	rdi, [rdi]
	mov	cl, al
	test	cl, 1
	jne	.label_3827
	jmp	.label_3829
.label_3827:
	mov	al, 1
	mov	rbp, rbp
	test	al, 1
	lea	rdi, [rdi]
	jne	.label_3832
	jmp	.label_3676
.label_3832:
	xor	eax, eax
	mov	cl, al
	mov	rbp, rbp
	test	cl, 1
	mov	rbp, rbp
	jne	.label_3837
	jmp	.label_3840
.label_3837:
	mov	rax, qword ptr [rbp - 0x318]
	mov	cl, al
	mov	rbp, rbp
	movsx	edx, cl
	lea	rdi, [rdi]
	cmp	edx, 0x80000000
	nop	
	jl	.label_1917
	mov	rbp, rbp
	jmp	.label_1902
.label_3840:
	mov	rbp, rbp
	mov	eax, 0x7fffffff
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x318]
	mov	dl, cl
	mov	rsp, rsp
	movsx	esi, dl
	cmp	eax, esi
	nop	
	jl	.label_1917
	mov	rsp, rsp
	jmp	.label_1902
.label_3676:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x318]
	mov	cl, al
	movsx	edx, cl
	nop	
	cmp	edx, 0
	mov	rsp, rsp
	jge	.label_3860
	xor	eax, eax
	mov	rcx, qword ptr [rbp - 0x318]
	mov	rbp, rbp
	mov	dl, cl
	lea	rsi, [rsi]
	movsx	esi, dl
	add	esi, 0
.label_5124:
	mov	rbp, rbp
	cmp	eax, esi
	jle	.label_1917
	mov	rsp, rsp
	jmp	.label_1902
.label_3860:
	lea	rsi, [rsi]
	xor	eax, eax
	lea	rdi, [rdi]
	mov	cl, al
	lea	rdi, [rdi]
	test	cl, 1
	jne	.label_1908
	jmp	.label_1915
.label_1908:
	mov	rax, qword ptr [rbp - 0x318]
	mov	cl, al
	movsx	edx, cl
	mov	rax, qword ptr [rbp - 0x318]
	lea	rsi, [rsi]
	mov	cl, al
	mov	rbp, rbp
	movsx	esi, cl
	add	esi, 0
	cmp	edx, esi
	mov	rbp, rbp
	jle	.label_1917
	lea	rdi, [rdi]
	jmp	.label_1902
.label_1915:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x318]
	mov	rsp, rsp
	mov	cl, al
	mov	rbp, rbp
	movsx	edx, cl
	mov	rbp, rbp
	add	edx, 0
	cmp	edx, 0
	nop	
	jl	.label_1917
.label_1902:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x318]
	lea	rsi, [rsi]
	mov	cl, al
	mov	rbp, rbp
	movsx	edx, cl
	add	edx, 0
	lea	rdi, [rdi]
	cmp	edx, -0x80
	mov	rbp, rbp
	jl	.label_1917
	mov	eax, 0x7f
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x318]
	mov	rsp, rsp
	mov	dl, cl
	lea	rdi, [rdi]
	movsx	esi, dl
	add	esi, 0
	lea	rdi, [rdi]
	cmp	eax, esi
	mov	rbp, rbp
	jge	.label_2230
.label_1917:
	mov	rsp, rsp
	mov	al, 1
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x318]
	mov	dl, cl
	movsx	esi, dl
	add	esi, 0
	mov	dl, sil
	movsx	esi, dl
	mov	dword ptr [rbp - 0x5c], esi
	mov	rsp, rsp
	test	al, 1
	lea	rdi, [rdi]
	jne	.label_1993
	jmp	.label_2027
.label_2230:
	xor	eax, eax
	mov	cl, al
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x318]
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
	mov	dword ptr [rbp - 0x5c], eax
	test	cl, 1
	jne	.label_1993
	nop	
	jmp	.label_2027
.label_3829:
	mov	al, 1
	nop	
	test	al, 1
	jne	.label_2029
	mov	rsp, rsp
	jmp	.label_2031
.label_2029:
	mov	rbp, rbp
	xor	eax, eax
	lea	rdi, [rdi]
	mov	cl, al
	test	cl, 1
	mov	rbp, rbp
	jne	.label_2032
	jmp	.label_2535
.label_2032:
	movabs	rax, 0x8000000000000000
	cmp	qword ptr [rbp - 0x318], rax
	nop	
	jl	.label_2039
	lea	rdi, [rdi]
	jmp	.label_2044
.label_2535:
	movabs	rax, 0x7fffffffffffffff
	mov	rbp, rbp
	cmp	rax, qword ptr [rbp - 0x318]
	mov	rbp, rbp
	jl	.label_2039
	lea	rsi, [rsi]
	jmp	.label_2044
.label_2031:
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x318], 0
	jge	.label_2055
	xor	eax, eax
	lea	rdi, [rdi]
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x318]
	mov	rbp, rbp
	add	rdx, 0
	cmp	rcx, rdx
	lea	rsi, [rsi]
	jle	.label_2039
	jmp	.label_2044
.label_2055:
	lea	rsi, [rsi]
	xor	eax, eax
	mov	rbp, rbp
	mov	cl, al
	mov	rsp, rsp
	test	cl, 1
	nop	
	jne	.label_2067
	jmp	.label_2075
.label_2067:
	mov	rax, qword ptr [rbp - 0x318]
	mov	rcx, qword ptr [rbp - 0x318]
	add	rcx, 0
	mov	rsp, rsp
	cmp	rax, rcx
	nop	
	jle	.label_2039
	jmp	.label_2044
.label_2075:
	mov	rax, qword ptr [rbp - 0x318]
	add	rax, 0
	lea	rdi, [rdi]
	cmp	rax, 0
	mov	rbp, rbp
	jl	.label_2039
.label_2044:
	mov	rax, qword ptr [rbp - 0x318]
	add	rax, 0
	cmp	rax, -0x80
	jl	.label_2039
	mov	eax, 0x7f
	lea	rdi, [rdi]
	mov	ecx, eax
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x318]
	mov	rbp, rbp
	add	rdx, 0
	cmp	rcx, rdx
	jge	.label_2099
.label_2039:
	mov	al, 1
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x318]
	mov	edx, ecx
	add	edx, 0
	mov	sil, dl
	movsx	edx, sil
	mov	dword ptr [rbp - 0x5c], edx
	mov	rsp, rsp
	test	al, 1
	mov	rsp, rsp
	jne	.label_1993
	jmp	.label_2027
.label_2099:
	xor	eax, eax
	mov	cl, al
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x318]
	mov	eax, edx
	lea	rdi, [rdi]
	add	eax, 0
	mov	sil, al
	movsx	eax, sil
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x5c], eax
	test	cl, 1
	jne	.label_1993
	jmp	.label_2027
.label_3824:
	lea	rdi, [rdi]
	xor	eax, eax
	mov	rbp, rbp
	mov	cl, al
	test	cl, 1
	lea	rdi, [rdi]
	jne	.label_2140
	jmp	.label_2148
.label_2140:
	xor	eax, eax
	lea	rsi, [rsi]
	mov	cl, al
	lea	rdi, [rdi]
	test	cl, 1
	jne	.label_2149
	mov	rsp, rsp
	jmp	.label_2152
.label_2149:
	nop	
	mov	al, 1
	test	al, 1
	jne	.label_2155
	lea	rsi, [rsi]
	jmp	.label_2160
.label_2155:
	mov	rsp, rsp
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	mov	rbp, rbp
	jne	.label_2162
	mov	rsp, rsp
	jmp	.label_2170
.label_2162:
	mov	rax, qword ptr [rbp - 0x318]
	mov	cx, ax
	lea	rdi, [rdi]
	movsx	edx, cx
	nop	
	cmp	edx, 0x80000000
	jl	.label_2173
	jmp	.label_2177
.label_2170:
	mov	eax, 0x7fffffff
	mov	rcx, qword ptr [rbp - 0x318]
	mov	rsp, rsp
	mov	dx, cx
	movsx	esi, dx
	cmp	eax, esi
	nop	
	jl	.label_2173
	mov	rsp, rsp
	jmp	.label_2177
.label_2160:
	mov	rax, qword ptr [rbp - 0x318]
	mov	cx, ax
	movsx	edx, cx
	mov	rsp, rsp
	cmp	edx, 0
	jge	.label_2189
	mov	rsp, rsp
	xor	eax, eax
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x318]
	lea	rsi, [rsi]
	mov	dx, cx
	lea	rsi, [rsi]
	movsx	esi, dx
	add	esi, 0
	cmp	eax, esi
	mov	rbp, rbp
	jle	.label_2173
	jmp	.label_2177
.label_2189:
	xor	eax, eax
	mov	rsp, rsp
	mov	cl, al
	mov	rbp, rbp
	test	cl, 1
	lea	rdi, [rdi]
	jne	.label_2205
	jmp	.label_2215
.label_2205:
	nop	
	mov	rax, qword ptr [rbp - 0x318]
	nop	
	mov	cx, ax
	lea	rsi, [rsi]
	movsx	edx, cx
	mov	rax, qword ptr [rbp - 0x318]
	mov	cx, ax
	movsx	esi, cx
	add	esi, 0
	cmp	edx, esi
	mov	rbp, rbp
	jle	.label_2173
	nop	
	jmp	.label_2177
.label_2215:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x318]
	lea	rsi, [rsi]
	mov	cx, ax
	movsx	edx, cx
	lea	rdi, [rdi]
	add	edx, 0
	cmp	edx, 0
	mov	rbp, rbp
	jl	.label_2173
.label_2177:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x318]
	mov	cx, ax
	movsx	edx, cx
	nop	
	add	edx, 0
	nop	
	cmp	edx, 0xffff8000
	jl	.label_2173
	mov	eax, 0x7fff
	mov	rcx, qword ptr [rbp - 0x318]
	mov	dx, cx
	mov	rsp, rsp
	movsx	esi, dx
	add	esi, 0
	mov	rbp, rbp
	cmp	eax, esi
	lea	rsi, [rsi]
	jge	.label_2253
.label_2173:
	mov	rsp, rsp
	mov	al, 1
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x318]
	mov	dx, cx
	mov	rsp, rsp
	movsx	esi, dx
	add	esi, 0
	lea	rsi, [rsi]
	mov	dx, si
	movsx	esi, dx
	mov	dword ptr [rbp - 0x5c], esi
	mov	rbp, rbp
	test	al, 1
	lea	rsi, [rsi]
	jne	.label_1993
	lea	rdi, [rdi]
	jmp	.label_2027
.label_2253:
	mov	rbp, rbp
	xor	eax, eax
	mov	cl, al
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x318]
	mov	rsp, rsp
	mov	si, dx
	lea	rsi, [rsi]
	movsx	eax, si
	add	eax, 0
	lea	rsi, [rsi]
	mov	si, ax
	movsx	eax, si
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x5c], eax
	test	cl, 1
	jne	.label_1993
	jmp	.label_2027
.label_2152:
	mov	al, 1
	lea	rsi, [rsi]
	test	al, 1
	mov	rsp, rsp
	jne	.label_2293
	jmp	.label_2299
.label_2293:
	nop	
	xor	eax, eax
	nop	
	mov	cl, al
	lea	rsi, [rsi]
	test	cl, 1
	nop	
	jne	.label_2302
	jmp	.label_2307
.label_2302:
	movabs	rax, 0x8000000000000000
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x318], rax
	jl	.label_2309
	jmp	.label_2196
.label_2307:
	movabs	rax, 0x7fffffffffffffff
	mov	rsp, rsp
	cmp	rax, qword ptr [rbp - 0x318]
	jl	.label_2309
	mov	rbp, rbp
	jmp	.label_2196
.label_2299:
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0x318], 0
	lea	rdi, [rdi]
	jge	.label_2322
	mov	rsp, rsp
	xor	eax, eax
	mov	rbp, rbp
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x318]
	mov	rbp, rbp
	add	rdx, 0
	nop	
	cmp	rcx, rdx
	jle	.label_2309
	mov	rsp, rsp
	jmp	.label_2196
.label_2322:
	xor	eax, eax
	mov	cl, al
	lea	rsi, [rsi]
	test	cl, 1
	lea	rsi, [rsi]
	jne	.label_2337
	jmp	.label_2343
.label_2337:
	mov	rax, qword ptr [rbp - 0x318]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x318]
	add	rcx, 0
	nop	
	cmp	rax, rcx
	jle	.label_2309
	lea	rsi, [rsi]
	jmp	.label_2196
.label_2343:
	mov	rax, qword ptr [rbp - 0x318]
	add	rax, 0
	cmp	rax, 0
	jl	.label_2309
.label_2196:
	mov	rax, qword ptr [rbp - 0x318]
	add	rax, 0
	lea	rsi, [rsi]
	cmp	rax, -0x8000
	nop	
	jl	.label_2309
	mov	eax, 0x7fff
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x318]
	add	rdx, 0
	nop	
	cmp	rcx, rdx
	jge	.label_2361
.label_2309:
	mov	al, 1
	mov	rcx, qword ptr [rbp - 0x318]
	mov	edx, ecx
	add	edx, 0
	mov	rsp, rsp
	mov	si, dx
	movsx	edx, si
	mov	dword ptr [rbp - 0x5c], edx
	test	al, 1
	jne	.label_1993
	lea	rdi, [rdi]
	jmp	.label_2027
.label_2361:
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x318]
	mov	rsp, rsp
	mov	eax, edx
	add	eax, 0
	mov	rsp, rsp
	mov	si, ax
	movsx	eax, si
	mov	dword ptr [rbp - 0x5c], eax
	mov	rbp, rbp
	test	cl, 1
	jne	.label_1993
	mov	rbp, rbp
	jmp	.label_2027
.label_2148:
	lea	rsi, [rsi]
	mov	al, 1
	test	al, 1
	jne	.label_2461
	jmp	.label_2391
.label_2461:
	lea	rdi, [rdi]
	xor	eax, eax
	mov	cl, al
	mov	rbp, rbp
	test	cl, 1
	mov	rsp, rsp
	jne	.label_2392
	nop	
	jmp	.label_2397
.label_2392:
	mov	al, 1
	mov	rsp, rsp
	test	al, 1
	jne	.label_2544
	jmp	.label_2401
.label_2544:
	lea	rdi, [rdi]
	xor	eax, eax
	mov	rbp, rbp
	mov	cl, al
	test	cl, 1
	mov	rsp, rsp
	jne	.label_2576
	mov	rbp, rbp
	jmp	.label_2405
.label_2576:
	mov	rax, qword ptr [rbp - 0x318]
	mov	rbp, rbp
	mov	ecx, eax
	cmp	ecx, 0x80000000
	jl	.label_2407
	lea	rdi, [rdi]
	jmp	.label_2413
.label_2405:
	mov	eax, 0x7fffffff
	mov	rcx, qword ptr [rbp - 0x318]
	mov	edx, ecx
	cmp	eax, edx
	mov	rsp, rsp
	jl	.label_2407
	jmp	.label_2413
.label_2401:
	mov	rax, qword ptr [rbp - 0x318]
	lea	rdi, [rdi]
	mov	ecx, eax
	cmp	ecx, 0
	jge	.label_2420
	lea	rsi, [rsi]
	xor	eax, eax
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x318]
	nop	
	mov	edx, ecx
	add	edx, 0
	lea	rsi, [rsi]
	cmp	eax, edx
	jle	.label_2407
	lea	rsi, [rsi]
	jmp	.label_2413
.label_2420:
	xor	eax, eax
	mov	cl, al
	nop	
	test	cl, 1
	lea	rdi, [rdi]
	jne	.label_2434
	lea	rsi, [rsi]
	jmp	.label_2440
.label_2434:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x318]
	mov	rsp, rsp
	mov	ecx, eax
	mov	rax, qword ptr [rbp - 0x318]
	mov	rsp, rsp
	mov	edx, eax
	mov	rbp, rbp
	add	edx, 0
	cmp	ecx, edx
	lea	rsi, [rsi]
	jle	.label_2407
	mov	rsp, rsp
	jmp	.label_2413
.label_2440:
	nop	
	mov	rax, qword ptr [rbp - 0x318]
	mov	ecx, eax
	lea	rdi, [rdi]
	add	ecx, 0
	cmp	ecx, 0
	jl	.label_2407
.label_2413:
	mov	rax, qword ptr [rbp - 0x318]
	lea	rdi, [rdi]
	mov	ecx, eax
	add	ecx, 0
	cmp	ecx, 0x80000000
	jl	.label_2407
	mov	eax, 0x7fffffff
	mov	rcx, qword ptr [rbp - 0x318]
	mov	edx, ecx
	mov	rbp, rbp
	add	edx, 0
	cmp	eax, edx
	jge	.label_2474
.label_2407:
	mov	al, 1
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x318]
	mov	edx, ecx
	add	edx, 0
	mov	dword ptr [rbp - 0x5c], edx
	lea	rsi, [rsi]
	test	al, 1
	jne	.label_1993
	mov	rsp, rsp
	jmp	.label_2027
.label_2474:
	nop	
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x318]
	mov	eax, edx
	add	eax, 0
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x5c], eax
	test	cl, 1
	jne	.label_1993
	mov	rbp, rbp
	jmp	.label_2027
.label_2397:
	mov	rsp, rsp
	mov	al, 1
	test	al, 1
	jne	.label_2509
	jmp	.label_2512
.label_2509:
	xor	eax, eax
	nop	
	mov	cl, al
	nop	
	test	cl, 1
	mov	rbp, rbp
	jne	.label_2513
	jmp	.label_2518
.label_2513:
	mov	rbp, rbp
	movabs	rax, 0x8000000000000000
	cmp	qword ptr [rbp - 0x318], rax
	jl	.label_2522
	jmp	.label_2550
.label_2518:
	movabs	rax, 0x7fffffffffffffff
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rbp - 0x318]
	jl	.label_2522
	jmp	.label_2550
.label_2512:
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x318], 0
	jge	.label_2537
	mov	rsp, rsp
	xor	eax, eax
	mov	ecx, eax
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x318]
	lea	rsi, [rsi]
	add	rdx, 0
	lea	rdi, [rdi]
	cmp	rcx, rdx
	jle	.label_2522
	nop	
	jmp	.label_2550
.label_2537:
	xor	eax, eax
	mov	cl, al
	nop	
	test	cl, 1
	nop	
	jne	.label_2552
	mov	rbp, rbp
	jmp	.label_2557
.label_2552:
	nop	
	mov	rax, qword ptr [rbp - 0x318]
	nop	
	mov	rcx, qword ptr [rbp - 0x318]
	lea	rsi, [rsi]
	add	rcx, 0
	lea	rsi, [rsi]
	cmp	rax, rcx
	jle	.label_2522
	mov	rbp, rbp
	jmp	.label_2550
.label_2557:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x318]
	nop	
	add	rax, 0
	nop	
	cmp	rax, 0
	mov	rbp, rbp
	jl	.label_2522
.label_2550:
	mov	rax, qword ptr [rbp - 0x318]
	nop	
	add	rax, 0
	mov	rbp, rbp
	cmp	rax, -0x80000000
	jl	.label_2522
	mov	eax, 0x7fffffff
	lea	rsi, [rsi]
	mov	ecx, eax
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x318]
	mov	rbp, rbp
	add	rdx, 0
	mov	rsp, rsp
	cmp	rcx, rdx
	nop	
	jge	.label_2588
.label_2522:
	mov	al, 1
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x318]
	mov	edx, ecx
	lea	rsi, [rsi]
	add	edx, 0
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x5c], edx
	test	al, 1
	mov	rbp, rbp
	jne	.label_1993
	mov	rbp, rbp
	jmp	.label_2027
.label_2588:
	lea	rsi, [rsi]
	xor	eax, eax
	mov	cl, al
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x318]
	lea	rdi, [rdi]
	mov	eax, edx
	lea	rsi, [rsi]
	add	eax, 0
	mov	dword ptr [rbp - 0x5c], eax
	lea	rdi, [rdi]
	test	cl, 1
	jne	.label_1993
	lea	rdi, [rdi]
	jmp	.label_2027
.label_2391:
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	nop	
	jne	.label_2624
	mov	rbp, rbp
	jmp	.label_2627
.label_2624:
	xor	eax, eax
	mov	rsp, rsp
	mov	cl, al
	test	cl, 1
	jne	.label_2631
	jmp	.label_2634
.label_2631:
	mov	rbp, rbp
	mov	al, 1
	mov	rsp, rsp
	test	al, 1
	jne	.label_2636
	mov	rsp, rsp
	jmp	.label_2639
.label_2636:
	lea	rdi, [rdi]
	xor	eax, eax
	lea	rsi, [rsi]
	mov	cl, al
	test	cl, 1
	jne	.label_2640
	lea	rdi, [rdi]
	jmp	.label_2646
.label_2640:
	nop	
	movabs	rax, 0x8000000000000000
	cmp	qword ptr [rbp - 0x318], rax
	jl	.label_1962
	mov	rsp, rsp
	jmp	.label_2650
.label_2646:
	lea	rsi, [rsi]
	movabs	rax, 0x7fffffffffffffff
	lea	rdi, [rdi]
	cmp	rax, qword ptr [rbp - 0x318]
	jl	.label_1962
	lea	rdi, [rdi]
	jmp	.label_2650
.label_2639:
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0x318], 0
	mov	rbp, rbp
	jge	.label_2662
	nop	
	xor	eax, eax
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x318]
	add	rdx, 0
	nop	
	cmp	rcx, rdx
	lea	rsi, [rsi]
	jle	.label_1962
	lea	rdi, [rdi]
	jmp	.label_2650
.label_2662:
	xor	eax, eax
	mov	cl, al
	mov	rbp, rbp
	test	cl, 1
	jne	.label_2673
	jmp	.label_2678
.label_2673:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x318]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x318]
	lea	rsi, [rsi]
	add	rcx, 0
	mov	rsp, rsp
	cmp	rax, rcx
	jle	.label_1962
	jmp	.label_2650
.label_2678:
	mov	rax, qword ptr [rbp - 0x318]
	add	rax, 0
	cmp	rax, 0
	nop	
	jl	.label_1962
.label_2650:
	mov	rsp, rsp
	movabs	rax, 0x8000000000000000
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x318]
	add	rcx, 0
	cmp	rcx, rax
	jl	.label_1962
	movabs	rax, 0x7fffffffffffffff
	mov	rcx, qword ptr [rbp - 0x318]
	mov	rbp, rbp
	add	rcx, 0
	cmp	rax, rcx
	lea	rsi, [rsi]
	jge	.label_2701
.label_1962:
	mov	rsp, rsp
	mov	al, 1
	mov	rcx, qword ptr [rbp - 0x318]
	lea	rsi, [rsi]
	add	rcx, 0
	mov	rsp, rsp
	mov	edx, ecx
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x5c], edx
	test	al, 1
	lea	rsi, [rsi]
	jne	.label_1993
	mov	rsp, rsp
	jmp	.label_2027
.label_2701:
	xor	eax, eax
	mov	cl, al
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x318]
	add	rdx, 0
	mov	rsp, rsp
	mov	eax, edx
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x5c], eax
	lea	rsi, [rsi]
	test	cl, 1
	mov	rbp, rbp
	jne	.label_1993
	mov	rsp, rsp
	jmp	.label_2027
.label_2634:
	mov	rsp, rsp
	mov	al, 1
	nop	
	test	al, 1
	jne	.label_2441
	jmp	.label_2734
.label_2441:
	xor	eax, eax
	mov	cl, al
	mov	rbp, rbp
	test	cl, 1
	nop	
	jne	.label_2683
	jmp	.label_2739
.label_2683:
	mov	rbp, rbp
	movabs	rax, 0x8000000000000000
	cmp	qword ptr [rbp - 0x318], rax
	jl	.label_2746
	jmp	.label_2745
.label_2739:
	lea	rsi, [rsi]
	movabs	rax, 0x7fffffffffffffff
	mov	rsp, rsp
	cmp	rax, qword ptr [rbp - 0x318]
	nop	
	jl	.label_2746
	jmp	.label_2745
.label_2734:
	cmp	qword ptr [rbp - 0x318], 0
	mov	rbp, rbp
	jge	.label_2751
	lea	rdi, [rdi]
	xor	eax, eax
	mov	rbp, rbp
	mov	ecx, eax
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x318]
	add	rdx, 0
	mov	rsp, rsp
	cmp	rcx, rdx
	jle	.label_2746
	jmp	.label_2745
.label_2751:
	lea	rsi, [rsi]
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_2706
	jmp	.label_2772
.label_2706:
	mov	rax, qword ptr [rbp - 0x318]
	nop	
	mov	rcx, qword ptr [rbp - 0x318]
	lea	rsi, [rsi]
	add	rcx, 0
	nop	
	cmp	rax, rcx
	lea	rsi, [rsi]
	jle	.label_2746
	jmp	.label_2745
.label_2772:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x318]
	lea	rdi, [rdi]
	add	rax, 0
	cmp	rax, 0
	jl	.label_2746
.label_2745:
	movabs	rax, 0x8000000000000000
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x318]
	mov	rbp, rbp
	add	rcx, 0
	cmp	rcx, rax
	jl	.label_2746
	mov	rsp, rsp
	movabs	rax, 0x7fffffffffffffff
	mov	rcx, qword ptr [rbp - 0x318]
	add	rcx, 0
	lea	rdi, [rdi]
	cmp	rax, rcx
	jge	.label_2801
.label_2746:
	nop	
	mov	al, 1
	mov	rcx, qword ptr [rbp - 0x318]
	lea	rsi, [rsi]
	add	rcx, 0
	mov	edx, ecx
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x5c], edx
	lea	rsi, [rsi]
	test	al, 1
	jne	.label_1993
	mov	rbp, rbp
	jmp	.label_2027
.label_2801:
	lea	rdi, [rdi]
	xor	eax, eax
	mov	rsp, rsp
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x318]
	mov	rbp, rbp
	add	rdx, 0
	mov	rbp, rbp
	mov	eax, edx
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x5c], eax
	test	cl, 1
	jne	.label_1993
	jmp	.label_2027
.label_2627:
	xor	eax, eax
	mov	rbp, rbp
	mov	cl, al
	test	cl, 1
	jne	.label_2422
	lea	rsi, [rsi]
	jmp	.label_3069
.label_2422:
	mov	al, 1
	test	al, 1
	jne	.label_2839
	mov	rbp, rbp
	jmp	.label_2694
.label_2839:
	xor	eax, eax
	nop	
	mov	cl, al
	test	cl, 1
	lea	rdi, [rdi]
	jne	.label_2842
	nop	
	jmp	.label_2848
.label_2842:
	movabs	rax, 0x8000000000000000
	nop	
	cmp	qword ptr [rbp - 0x318], rax
	jl	.label_2851
	lea	rdi, [rdi]
	jmp	.label_2856
.label_2848:
	lea	rdi, [rdi]
	movabs	rax, 0x7fffffffffffffff
	lea	rdi, [rdi]
	cmp	rax, qword ptr [rbp - 0x318]
	jl	.label_2851
	lea	rsi, [rsi]
	jmp	.label_2856
.label_2694:
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x318], 0
	jge	.label_2868
	xor	eax, eax
	mov	ecx, eax
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x318]
	add	rdx, 0
	lea	rsi, [rsi]
	cmp	rcx, rdx
	jle	.label_2851
	mov	rsp, rsp
	jmp	.label_2856
.label_2868:
	mov	rbp, rbp
	xor	eax, eax
	mov	rbp, rbp
	mov	cl, al
	test	cl, 1
	jne	.label_2879
	jmp	.label_3317
.label_2879:
	mov	rax, qword ptr [rbp - 0x318]
	mov	rcx, qword ptr [rbp - 0x318]
	lea	rdi, [rdi]
	add	rcx, 0
	lea	rdi, [rdi]
	cmp	rax, rcx
	jle	.label_2851
	mov	rsp, rsp
	jmp	.label_2856
.label_3317:
	mov	rax, qword ptr [rbp - 0x318]
	lea	rdi, [rdi]
	add	rax, 0
	cmp	rax, 0
	lea	rdi, [rdi]
	jl	.label_2851
.label_2856:
	movabs	rax, 0x8000000000000000
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x318]
	add	rcx, 0
	cmp	rcx, rax
	nop	
	jl	.label_2851
	mov	rbp, rbp
	movabs	rax, 0x7fffffffffffffff
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x318]
	lea	rsi, [rsi]
	add	rcx, 0
	cmp	rax, rcx
	lea	rsi, [rsi]
	jge	.label_2909
.label_2851:
	lea	rdi, [rdi]
	mov	al, 1
	mov	rcx, qword ptr [rbp - 0x318]
	add	rcx, 0
	mov	edx, ecx
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x5c], edx
	lea	rsi, [rsi]
	test	al, 1
	jne	.label_1993
	jmp	.label_2027
.label_2909:
	xor	eax, eax
	mov	cl, al
	nop	
	mov	rdx, qword ptr [rbp - 0x318]
	mov	rbp, rbp
	add	rdx, 0
	mov	eax, edx
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x5c], eax
	test	cl, 1
	jne	.label_1993
	nop	
	jmp	.label_2027
.label_3069:
	mov	al, 1
	mov	rsp, rsp
	test	al, 1
	jne	.label_2936
	jmp	.label_2939
.label_2936:
	xor	eax, eax
	nop	
	mov	cl, al
	test	cl, 1
	mov	rsp, rsp
	jne	.label_3707
	mov	rbp, rbp
	jmp	.label_3807
.label_3707:
	movabs	rax, 0x8000000000000000
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x318], rax
	jl	.label_2049
	jmp	.label_2952
.label_3807:
	mov	rbp, rbp
	movabs	rax, 0x7fffffffffffffff
	cmp	rax, qword ptr [rbp - 0x318]
	jl	.label_2049
	lea	rdi, [rdi]
	jmp	.label_2952
.label_2939:
	cmp	qword ptr [rbp - 0x318], 0
	jge	.label_2433
	lea	rsi, [rsi]
	xor	eax, eax
	mov	rbp, rbp
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x318]
	add	rdx, 0
	lea	rdi, [rdi]
	cmp	rcx, rdx
	nop	
	jle	.label_2049
	jmp	.label_2952
.label_2433:
	mov	rsp, rsp
	xor	eax, eax
	nop	
	mov	cl, al
	lea	rsi, [rsi]
	test	cl, 1
	jne	.label_2961
	lea	rsi, [rsi]
	jmp	.label_2969
.label_2961:
	mov	rax, qword ptr [rbp - 0x318]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x318]
	mov	rbp, rbp
	add	rcx, 0
	lea	rdi, [rdi]
	cmp	rax, rcx
	jle	.label_2049
	jmp	.label_2952
.label_2969:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x318]
	add	rax, 0
	cmp	rax, 0
	nop	
	jl	.label_2049
.label_2952:
	mov	rsp, rsp
	movabs	rax, 0x8000000000000000
	mov	rcx, qword ptr [rbp - 0x318]
	add	rcx, 0
	cmp	rcx, rax
	mov	rsp, rsp
	jl	.label_2049
	movabs	rax, 0x7fffffffffffffff
	mov	rcx, qword ptr [rbp - 0x318]
	mov	rbp, rbp
	add	rcx, 0
	cmp	rax, rcx
	nop	
	jge	.label_2995
.label_2049:
	lea	rsi, [rsi]
	mov	al, 1
	nop	
	mov	rcx, qword ptr [rbp - 0x318]
	mov	rbp, rbp
	add	rcx, 0
	lea	rdi, [rdi]
	mov	edx, ecx
	nop	
	mov	dword ptr [rbp - 0x5c], edx
	test	al, 1
	mov	rsp, rsp
	jne	.label_1993
	nop	
	jmp	.label_2027
.label_2995:
	mov	rbp, rbp
	xor	eax, eax
	mov	rbp, rbp
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x318]
	mov	rbp, rbp
	add	rdx, 0
	mov	eax, edx
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x5c], eax
	test	cl, 1
	jne	.label_1993
	lea	rdi, [rdi]
	jmp	.label_2027
.label_1993:
	test	byte ptr [rbp - 0x27f], 1
	lea	rsi, [rsi]
	je	.label_3028
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
.label_3028:
	lea	rsi, [rsi]
	jmp	.label_2446
.label_2027:
	cmp	qword ptr [rbp - 0x290], 0
	jne	.label_3037
	mov	rbp, rbp
	test	byte ptr [rbp - 0x2b7], 1
	mov	rsp, rsp
	je	.label_3038
	cmp	qword ptr [rbp - 0x2b0], 0
	jne	.label_3038
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0x2a8], 0
	lea	rsi, [rsi]
	jne	.label_3038
.label_3037:
	mov	rdi, qword ptr [rbp - 0x310]
	lea	rdi, [rdi]
	mov	esi, dword ptr [rbp - 0x33c]
	mov	rsp, rsp
	call	to_hour
	mov	dword ptr [rbp - 0x60], eax
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x60], 0
	jge	.label_3054
	cmp	dword ptr [rbp - 0x33c], 0
	jne	.label_3057
	nop	
	movabs	rax, OFFSET FLAT:.str.40_0
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x628], rax
	lea	rdi, [rdi]
	jmp	.label_3063
.label_3057:
	movabs	rax, OFFSET FLAT:.str_0
	mov	rbp, rbp
	movabs	rcx, OFFSET FLAT:.str.41_0
	mov	rsp, rsp
	cmp	dword ptr [rbp - 0x33c], 1
	nop	
	cmove	rax, rcx
	mov	qword ptr [rbp - 0x628], rax
.label_3063:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x628]
	mov	qword ptr [rbp - 0x3b0], rax
	test	byte ptr [rbp - 0x27f], 1
	lea	rsi, [rsi]
	je	.label_3079
	nop	
	movabs	rdi, OFFSET FLAT:.str.43
	lea	rdi, [rdi]
	call	gettext
	mov	rsi, qword ptr [rbp - 0x310]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x3b0]
	mov	rsp, rsp
	mov	rdi, rax
	mov	al, 0
	call	dbg_printf
.label_3079:
	jmp	.label_2446
.label_3054:
	mov	rax, qword ptr [rbp - 0x308]
	lea	rdi, [rdi]
	mov	ecx, eax
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x64], ecx
	mov	rax, qword ptr [rbp - 0x300]
	mov	ecx, eax
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x68], ecx
	nop	
	test	byte ptr [rbp - 0x27f], 1
	je	.label_3098
	cmp	qword ptr [rbp - 0x290], 0
	lea	rdi, [rdi]
	je	.label_2901
	mov	rsp, rsp
	movabs	rdi, OFFSET FLAT:.str.44
	mov	rbp, rbp
	call	gettext
	mov	qword ptr [rbp - 0x630], rax
	jmp	.label_3120
.label_2901:
	mov	rbp, rbp
	movabs	rdi, OFFSET FLAT:.str.45
	call	gettext
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x630], rax
.label_3120:
	mov	rax, qword ptr [rbp - 0x630]
	lea	rdi, [rdi]
	lea	rdi, [rbp - 0x68]
	mov	edx, 0x64
	mov	rsp, rsp
	lea	rsi, [rbp - 0x130]
	mov	qword ptr [rbp - 0x638], rax
	mov	rbp, rbp
	call	debug_strftime
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x638]
	mov	rsi, rax
	lea	rsi, [rsi]
	mov	al, 0
	call	dbg_printf
.label_3098:
	mov	rbp, rbp
	jmp	.label_3142
.label_3038:
	mov	dword ptr [rbp - 0x68], 0
	nop	
	mov	dword ptr [rbp - 0x64], 0
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x60], 0
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x2f8], 0
	lea	rsi, [rsi]
	test	byte ptr [rbp - 0x27f], 1
	mov	rsp, rsp
	je	.label_3144
	movabs	rdi, OFFSET FLAT:.str.46
	mov	al, 0
	lea	rdi, [rdi]
	call	dbg_printf
.label_3144:
	lea	rsi, [rsi]
	jmp	.label_3142
.label_3142:
	mov	rax, qword ptr [rbp - 0x2b0]
	mov	rsp, rsp
	or	rax, qword ptr [rbp - 0x2a8]
	or	rax, qword ptr [rbp - 0x290]
	cmp	rax, 0
	mov	rbp, rbp
	je	.label_3158
	mov	dword ptr [rbp - 0x48], 0xffffffff
.label_3158:
	cmp	qword ptr [rbp - 0x2a0], 0
	je	.label_3164
	mov	eax, dword ptr [rbp - 0x344]
	mov	dword ptr [rbp - 0x48], eax
.label_3164:
	lea	rsi, [rbp - 0x68]
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x68]
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0xa0], eax
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x64]
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x9c], eax
	mov	eax, dword ptr [rbp - 0x60]
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x98], eax
	nop	
	mov	eax, dword ptr [rbp - 0x5c]
	mov	dword ptr [rbp - 0x94], eax
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x58]
	mov	dword ptr [rbp - 0x90], eax
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x54]
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x8c], eax
	mov	eax, dword ptr [rbp - 0x48]
	mov	dword ptr [rbp - 0x80], eax
	mov	dword ptr [rbp - 0x50], 0xffffffff
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x1d8]
	call	mktime_z
	lea	rdi, [rbp - 0xa0]
	lea	rsi, [rsi]
	lea	rsi, [rbp - 0x68]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x1c8], rax
	call	mktime_ok
	nop	
	test	al, 1
	mov	rbp, rbp
	jne	.label_3208
	mov	byte ptr [rbp - 0x3b1], 0
	cmp	qword ptr [rbp - 0x288], 0
	lea	rdi, [rdi]
	setne	al
	and	al, 1
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x3b2], al
	test	byte ptr [rbp - 0x3b2], 1
	je	.label_3210
	lea	rax, [rbp - 0x3d0]
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x3ce], 0x58
	mov	byte ptr [rbp - 0x3cf], 0x58
	mov	byte ptr [rbp - 0x3d0], 0x58
	mov	edi, dword ptr [rbp - 0x340]
	lea	rdi, [rdi]
	add	rax, 3
	lea	rdi, [rdi]
	mov	rsi, rax
	lea	rdi, [rdi]
	call	time_zone_str
	lea	rdi, [rdi]
	lea	rdi, [rbp - 0x3d0]
	mov	qword ptr [rbp - 0x640], rax
	call	tzalloc
	mov	qword ptr [rbp - 0x3d8], rax
	cmp	qword ptr [rbp - 0x3d8], 0
	jne	.label_3241
	test	byte ptr [rbp - 0x27f], 1
	mov	rsp, rsp
	je	.label_3247
	lea	rsi, [rsi]
	movabs	rdi, OFFSET FLAT:.str.47
	call	gettext
	lea	rsi, [rsi]
	lea	rsi, [rbp - 0x3d0]
	lea	rsi, [rsi]
	mov	rdi, rax
	lea	rsi, [rsi]
	mov	al, 0
	lea	rdi, [rdi]
	call	dbg_printf
.label_3247:
	jmp	.label_2446
.label_3241:
	lea	rsi, [rbp - 0x68]
	nop	
	mov	eax, dword ptr [rbp - 0xa0]
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x68], eax
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x9c]
	mov	dword ptr [rbp - 0x64], eax
	mov	eax, dword ptr [rbp - 0x98]
	mov	dword ptr [rbp - 0x60], eax
	mov	eax, dword ptr [rbp - 0x94]
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x5c], eax
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x90]
	mov	dword ptr [rbp - 0x58], eax
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x8c]
	mov	dword ptr [rbp - 0x54], eax
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x80]
	mov	dword ptr [rbp - 0x48], eax
	mov	dword ptr [rbp - 0x50], 0xffffffff
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x3d8]
	mov	rsp, rsp
	call	mktime_z
	lea	rdi, [rbp - 0xa0]
	mov	rbp, rbp
	lea	rsi, [rbp - 0x68]
	mov	qword ptr [rbp - 0x1c8], rax
	mov	rsp, rsp
	call	mktime_ok
	and	al, 1
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x3b1], al
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x3d8]
	call	tzfree
.label_3210:
	test	byte ptr [rbp - 0x3b1], 1
	mov	rbp, rbp
	jne	.label_3289
	mov	rbp, rbp
	lea	rdi, [rbp - 0xa0]
	lea	rdi, [rdi]
	lea	rsi, [rbp - 0x68]
	mov	rbp, rbp
	lea	rdx, [rbp - 0x358]
	mov	rbp, rbp
	mov	al, byte ptr [rbp - 0x3b2]
	and	al, 1
	mov	rsp, rsp
	movzx	ecx, al
	lea	rsi, [rsi]
	call	debug_mktime_not_ok
	mov	rsp, rsp
	jmp	.label_2446
.label_3289:
	jmp	.label_3208
.label_3208:
	nop	
	cmp	qword ptr [rbp - 0x2a8], 0
	je	.label_2702
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0x2b0], 0
	nop	
	jne	.label_2702
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_3304
	nop	
	jmp	.label_2306
.label_3304:
	mov	rbp, rbp
	xor	eax, eax
	mov	cl, al
	mov	rbp, rbp
	test	cl, 1
	nop	
	jne	.label_3311
	nop	
	jmp	.label_3322
.label_3311:
	xor	eax, eax
	lea	rdi, [rdi]
	mov	cl, al
	lea	rsi, [rsi]
	test	cl, 1
	jne	.label_3326
	mov	rbp, rbp
	jmp	.label_3332
.label_3326:
	lea	rdi, [rdi]
	xor	eax, eax
	mov	rbp, rbp
	mov	cl, al
	lea	rdi, [rdi]
	xor	eax, eax
	mov	rbp, rbp
	mov	edx, eax
	mov	rsi, qword ptr [rbp - 0x350]
	cmp	rdx, qword ptr [rbp - 0x350]
	mov	qword ptr [rbp - 0x648], rsi
	mov	byte ptr [rbp - 0x649], cl
	jge	.label_2387
	mov	eax, dword ptr [rbp - 0x50]
	mov	rbp, rbp
	cmp	eax, dword ptr [rbp - 0x348]
	setne	cl
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x649], cl
.label_2387:
	mov	al, byte ptr [rbp - 0x649]
	lea	rsi, [rsi]
	and	al, 1
	nop	
	movzx	ecx, al
	mov	rbp, rbp
	movsxd	rdx, ecx
	mov	rsi, qword ptr [rbp - 0x648]
	lea	rsi, [rsi]
	sub	rsi, rdx
	mov	al, sil
	nop	
	movsx	ecx, al
	mov	rsp, rsp
	cmp	ecx, 0
	jge	.label_3585
	xor	eax, eax
	nop	
	mov	cl, al
	mov	rbp, rbp
	xor	eax, eax
	mov	edx, eax
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x350]
	mov	rsp, rsp
	cmp	rdx, qword ptr [rbp - 0x350]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x658], rsi
	mov	byte ptr [rbp - 0x659], cl
	jge	.label_3360
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x50]
	mov	rbp, rbp
	cmp	eax, dword ptr [rbp - 0x348]
	setne	cl
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x659], cl
.label_3360:
	mov	al, byte ptr [rbp - 0x659]
	and	al, 1
	movzx	ecx, al
	nop	
	movsxd	rdx, ecx
	mov	rsi, qword ptr [rbp - 0x658]
	lea	rdi, [rdi]
	sub	rsi, rdx
	mov	rsp, rsp
	mov	al, sil
	mov	rbp, rbp
	movsx	ecx, al
	mov	rsp, rsp
	cmp	ecx, 0x12492492
	mov	rsp, rsp
	jl	.label_3380
	jmp	.label_3391
.label_3585:
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_3393
	jmp	.label_3395
.label_3393:
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	lea	rsi, [rsi]
	jne	.label_3380
	mov	rsp, rsp
	jmp	.label_3391
.label_3395:
	lea	rdi, [rdi]
	xor	eax, eax
	mov	cl, al
	nop	
	xor	eax, eax
	mov	edx, eax
	mov	rsi, qword ptr [rbp - 0x350]
	nop	
	cmp	rdx, qword ptr [rbp - 0x350]
	mov	qword ptr [rbp - 0x668], rsi
	nop	
	mov	byte ptr [rbp - 0x669], cl
	nop	
	jge	.label_3403
	mov	eax, dword ptr [rbp - 0x50]
	cmp	eax, dword ptr [rbp - 0x348]
	lea	rsi, [rsi]
	setne	cl
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x669], cl
.label_3403:
	mov	al, byte ptr [rbp - 0x669]
	mov	ecx, 0xedb6db6e
	lea	rsi, [rsi]
	and	al, 1
	movzx	edx, al
	movsxd	rsi, edx
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x668]
	mov	rbp, rbp
	sub	rdi, rsi
	mov	al, dil
	mov	rsp, rsp
	movsx	edx, al
	cmp	ecx, edx
	nop	
	jl	.label_3380
	jmp	.label_3391
.label_3332:
	mov	rsp, rsp
	xor	eax, eax
	mov	cl, al
	mov	rsp, rsp
	test	cl, 1
	lea	rdi, [rdi]
	jne	.label_3427
	jmp	.label_3434
.label_3427:
	nop	
	xor	eax, eax
	lea	rsi, [rsi]
	mov	cl, al
	test	cl, 1
	jne	.label_3380
	jmp	.label_3391
.label_3434:
	nop	
	xor	eax, eax
	mov	cl, al
	lea	rdi, [rdi]
	xor	eax, eax
	lea	rdi, [rdi]
	mov	edx, eax
	mov	rsi, qword ptr [rbp - 0x350]
	mov	rsp, rsp
	cmp	rdx, qword ptr [rbp - 0x350]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x678], rsi
	mov	byte ptr [rbp - 0x679], cl
	jge	.label_3439
	mov	eax, dword ptr [rbp - 0x50]
	lea	rsi, [rsi]
	cmp	eax, dword ptr [rbp - 0x348]
	lea	rdi, [rdi]
	setne	cl
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x679], cl
.label_3439:
	mov	rsp, rsp
	mov	al, byte ptr [rbp - 0x679]
	and	al, 1
	mov	rbp, rbp
	movzx	ecx, al
	movsxd	rdx, ecx
	mov	rsi, qword ptr [rbp - 0x678]
	sub	rsi, rdx
	mov	al, sil
	lea	rsi, [rsi]
	movsx	ecx, al
	nop	
	cmp	ecx, 0
	jge	.label_3457
	xor	eax, eax
	mov	cl, al
	mov	rsp, rsp
	xor	eax, eax
	mov	rbp, rbp
	mov	edx, eax
	mov	rsi, qword ptr [rbp - 0x350]
	lea	rdi, [rdi]
	cmp	rdx, qword ptr [rbp - 0x350]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x688], rsi
	mov	byte ptr [rbp - 0x689], cl
	lea	rsi, [rsi]
	jge	.label_3616
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x50]
	mov	rsp, rsp
	cmp	eax, dword ptr [rbp - 0x348]
	setne	cl
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x689], cl
.label_3616:
	mov	al, byte ptr [rbp - 0x689]
	lea	rdi, [rdi]
	and	al, 1
	nop	
	movzx	ecx, al
	nop	
	movsxd	rdx, ecx
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x688]
	lea	rsi, [rsi]
	sub	rsi, rdx
	mov	rsp, rsp
	mov	al, sil
	lea	rdi, [rdi]
	movsx	ecx, al
	mov	rsp, rsp
	cmp	ecx, 0xedb6db6e
	jl	.label_3380
	jmp	.label_3391
.label_3457:
	xor	eax, eax
	mov	cl, al
	xor	eax, eax
	mov	edx, eax
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x350]
	lea	rsi, [rsi]
	cmp	rdx, qword ptr [rbp - 0x350]
	mov	qword ptr [rbp - 0x698], rsi
	mov	byte ptr [rbp - 0x699], cl
	jge	.label_2787
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x50]
	cmp	eax, dword ptr [rbp - 0x348]
	setne	cl
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x699], cl
.label_2787:
	mov	rbp, rbp
	mov	al, byte ptr [rbp - 0x699]
	lea	rsi, [rsi]
	mov	ecx, 0x12492492
	and	al, 1
	lea	rdi, [rdi]
	movzx	edx, al
	movsxd	rsi, edx
	mov	rdi, qword ptr [rbp - 0x698]
	sub	rdi, rsi
	mov	al, dil
	movsx	edx, al
	nop	
	cmp	ecx, edx
	lea	rdi, [rdi]
	jl	.label_3380
.label_3391:
	lea	rdi, [rdi]
	xor	eax, eax
	lea	rsi, [rsi]
	mov	cl, al
	xor	eax, eax
	mov	edx, eax
	mov	rsi, qword ptr [rbp - 0x350]
	cmp	rdx, qword ptr [rbp - 0x350]
	nop	
	mov	qword ptr [rbp - 0x6a8], rsi
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x6a9], cl
	mov	rsp, rsp
	jge	.label_3540
	mov	eax, dword ptr [rbp - 0x50]
	cmp	eax, dword ptr [rbp - 0x348]
	setne	cl
	mov	byte ptr [rbp - 0x6a9], cl
.label_3540:
	lea	rsi, [rsi]
	mov	al, byte ptr [rbp - 0x6a9]
	and	al, 1
	lea	rsi, [rsi]
	movzx	ecx, al
	mov	rsp, rsp
	movsxd	rdx, ecx
	mov	rsi, qword ptr [rbp - 0x6a8]
	mov	rsp, rsp
	sub	rsi, rdx
	mov	al, sil
	mov	rbp, rbp
	movsx	ecx, al
	imul	ecx, ecx, 7
	lea	rdi, [rdi]
	cmp	ecx, -0x80
	jl	.label_3380
	xor	eax, eax
	mov	rsp, rsp
	mov	cl, al
	xor	eax, eax
	mov	edx, eax
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x350]
	cmp	rdx, qword ptr [rbp - 0x350]
	nop	
	mov	qword ptr [rbp - 0x6b8], rsi
	mov	byte ptr [rbp - 0x6b9], cl
	jge	.label_3575
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x50]
	lea	rdi, [rdi]
	cmp	eax, dword ptr [rbp - 0x348]
	setne	cl
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x6b9], cl
.label_3575:
	mov	al, byte ptr [rbp - 0x6b9]
	mov	rsp, rsp
	mov	ecx, 0x7f
	lea	rdi, [rdi]
	and	al, 1
	nop	
	movzx	edx, al
	movsxd	rsi, edx
	mov	rdi, qword ptr [rbp - 0x6b8]
	lea	rsi, [rsi]
	sub	rdi, rsi
	lea	rdi, [rdi]
	mov	al, dil
	movsx	edx, al
	mov	rbp, rbp
	imul	edx, edx, 7
	cmp	ecx, edx
	nop	
	jge	.label_3595
.label_3380:
	xor	eax, eax
	lea	rsi, [rsi]
	mov	cl, al
	xor	eax, eax
	nop	
	mov	edx, eax
	mov	rsi, qword ptr [rbp - 0x350]
	lea	rsi, [rsi]
	cmp	rdx, qword ptr [rbp - 0x350]
	mov	qword ptr [rbp - 0x6c8], rsi
	mov	byte ptr [rbp - 0x6c9], cl
	lea	rdi, [rdi]
	jge	.label_3608
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x50]
	mov	rsp, rsp
	cmp	eax, dword ptr [rbp - 0x348]
	lea	rsi, [rsi]
	setne	cl
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x6c9], cl
.label_3608:
	lea	rdi, [rdi]
	mov	al, byte ptr [rbp - 0x6c9]
	nop	
	mov	cl, 1
	lea	rsi, [rsi]
	and	al, 1
	movzx	edx, al
	movsxd	rsi, edx
	mov	rdi, qword ptr [rbp - 0x6c8]
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
	mov	qword ptr [rbp - 0x448], rsi
	test	cl, 1
	lea	rsi, [rsi]
	jne	.label_1909
	jmp	.label_2025
.label_3595:
	mov	rbp, rbp
	xor	eax, eax
	mov	cl, al
	xor	eax, eax
	lea	rdi, [rdi]
	mov	edx, eax
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x350]
	cmp	rdx, qword ptr [rbp - 0x350]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x6d8], rsi
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x6d9], cl
	lea	rsi, [rsi]
	jge	.label_3634
	mov	eax, dword ptr [rbp - 0x50]
	cmp	eax, dword ptr [rbp - 0x348]
	setne	cl
	nop	
	mov	byte ptr [rbp - 0x6d9], cl
.label_3634:
	mov	al, byte ptr [rbp - 0x6d9]
	mov	rbp, rbp
	xor	ecx, ecx
	nop	
	mov	dl, cl
	mov	rsp, rsp
	and	al, 1
	mov	rbp, rbp
	movzx	ecx, al
	movsxd	rsi, ecx
	mov	rdi, qword ptr [rbp - 0x6d8]
	nop	
	sub	rdi, rsi
	lea	rdi, [rdi]
	mov	al, dil
	movsx	ecx, al
	imul	ecx, ecx, 7
	lea	rdi, [rdi]
	mov	al, cl
	movsx	rsi, al
	mov	qword ptr [rbp - 0x448], rsi
	test	dl, 1
	jne	.label_1909
	mov	rsp, rsp
	jmp	.label_2025
.label_3322:
	xor	eax, eax
	nop	
	mov	cl, al
	lea	rdi, [rdi]
	test	cl, 1
	mov	rsp, rsp
	jne	.label_3679
	nop	
	jmp	.label_3684
.label_3679:
	xor	eax, eax
	mov	cl, al
	lea	rdi, [rdi]
	xor	eax, eax
	mov	edx, eax
	mov	rsi, qword ptr [rbp - 0x350]
	cmp	rdx, qword ptr [rbp - 0x350]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x6e8], rsi
	nop	
	mov	byte ptr [rbp - 0x6e9], cl
	lea	rdi, [rdi]
	jge	.label_3686
	mov	eax, dword ptr [rbp - 0x50]
	mov	rbp, rbp
	cmp	eax, dword ptr [rbp - 0x348]
	setne	cl
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x6e9], cl
.label_3686:
	mov	al, byte ptr [rbp - 0x6e9]
	lea	rsi, [rsi]
	and	al, 1
	lea	rsi, [rsi]
	movzx	ecx, al
	mov	rsp, rsp
	movsxd	rdx, ecx
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x6e8]
	sub	rsi, rdx
	mov	rbp, rbp
	cmp	rsi, 0
	jge	.label_3697
	xor	eax, eax
	lea	rdi, [rdi]
	mov	cl, al
	xor	eax, eax
	nop	
	mov	edx, eax
	mov	rsi, qword ptr [rbp - 0x350]
	mov	rsp, rsp
	cmp	rdx, qword ptr [rbp - 0x350]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x6f8], rsi
	nop	
	mov	byte ptr [rbp - 0x6f9], cl
	mov	rsp, rsp
	jge	.label_3705
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x50]
	cmp	eax, dword ptr [rbp - 0x348]
	lea	rdi, [rdi]
	setne	cl
	mov	byte ptr [rbp - 0x6f9], cl
.label_3705:
	mov	al, byte ptr [rbp - 0x6f9]
	lea	rdi, [rdi]
	movabs	rcx, 0x1249249249249249
	and	al, 1
	mov	rsp, rsp
	movzx	edx, al
	movsxd	rsi, edx
	mov	rdi, qword ptr [rbp - 0x6f8]
	sub	rdi, rsi
	cmp	rdi, rcx
	jl	.label_1899
	jmp	.label_3635
.label_3697:
	lea	rsi, [rsi]
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	mov	rbp, rbp
	jne	.label_2991
	nop	
	jmp	.label_3734
.label_2991:
	xor	eax, eax
	lea	rdi, [rdi]
	mov	cl, al
	mov	rsp, rsp
	test	cl, 1
	jne	.label_1899
	jmp	.label_3635
.label_3734:
	xor	eax, eax
	mov	rbp, rbp
	mov	cl, al
	lea	rdi, [rdi]
	xor	eax, eax
	nop	
	mov	edx, eax
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x350]
	cmp	rdx, qword ptr [rbp - 0x350]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x708], rsi
	mov	byte ptr [rbp - 0x709], cl
	jge	.label_3740
	nop	
	mov	eax, dword ptr [rbp - 0x50]
	cmp	eax, dword ptr [rbp - 0x348]
	setne	cl
	mov	byte ptr [rbp - 0x709], cl
.label_3740:
	mov	al, byte ptr [rbp - 0x709]
	movabs	rcx, 0xedb6db6db6db6db7
	and	al, 1
	mov	rbp, rbp
	movzx	edx, al
	movsxd	rsi, edx
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x708]
	sub	rdi, rsi
	cmp	rcx, rdi
	lea	rdi, [rdi]
	jl	.label_1899
	lea	rsi, [rsi]
	jmp	.label_3635
.label_3684:
	xor	eax, eax
	mov	rsp, rsp
	mov	cl, al
	nop	
	test	cl, 1
	lea	rsi, [rsi]
	jne	.label_3774
	jmp	.label_3778
.label_3774:
	xor	eax, eax
	lea	rdi, [rdi]
	mov	cl, al
	lea	rsi, [rsi]
	test	cl, 1
	mov	rbp, rbp
	jne	.label_1899
	jmp	.label_3635
.label_3778:
	lea	rsi, [rsi]
	xor	eax, eax
	mov	rsp, rsp
	mov	cl, al
	xor	eax, eax
	lea	rdi, [rdi]
	mov	edx, eax
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x350]
	mov	rsp, rsp
	cmp	rdx, qword ptr [rbp - 0x350]
	mov	qword ptr [rbp - 0x718], rsi
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x719], cl
	lea	rdi, [rdi]
	jge	.label_3785
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x50]
	lea	rsi, [rsi]
	cmp	eax, dword ptr [rbp - 0x348]
	lea	rdi, [rdi]
	setne	cl
	mov	byte ptr [rbp - 0x719], cl
.label_3785:
	mov	rbp, rbp
	mov	al, byte ptr [rbp - 0x719]
	lea	rsi, [rsi]
	and	al, 1
	lea	rdi, [rdi]
	movzx	ecx, al
	mov	rsp, rsp
	movsxd	rdx, ecx
	mov	rsi, qword ptr [rbp - 0x718]
	sub	rsi, rdx
	cmp	rsi, 0
	jge	.label_3800
	xor	eax, eax
	mov	cl, al
	xor	eax, eax
	nop	
	mov	edx, eax
	mov	rsi, qword ptr [rbp - 0x350]
	nop	
	cmp	rdx, qword ptr [rbp - 0x350]
	mov	qword ptr [rbp - 0x728], rsi
	mov	byte ptr [rbp - 0x729], cl
	jge	.label_3485
	mov	eax, dword ptr [rbp - 0x50]
	cmp	eax, dword ptr [rbp - 0x348]
	setne	cl
	mov	byte ptr [rbp - 0x729], cl
.label_3485:
	mov	rbp, rbp
	mov	al, byte ptr [rbp - 0x729]
	movabs	rcx, 0xedb6db6db6db6db7
	and	al, 1
	lea	rdi, [rdi]
	movzx	edx, al
	mov	rsp, rsp
	movsxd	rsi, edx
	mov	rdi, qword ptr [rbp - 0x728]
	sub	rdi, rsi
	cmp	rdi, rcx
	jl	.label_1899
	mov	rsp, rsp
	jmp	.label_3635
.label_3800:
	xor	eax, eax
	mov	cl, al
	xor	eax, eax
	lea	rsi, [rsi]
	mov	edx, eax
	nop	
	mov	rsi, qword ptr [rbp - 0x350]
	cmp	rdx, qword ptr [rbp - 0x350]
	mov	qword ptr [rbp - 0x738], rsi
	mov	byte ptr [rbp - 0x739], cl
	lea	rdi, [rdi]
	jge	.label_3831
	mov	eax, dword ptr [rbp - 0x50]
	lea	rdi, [rdi]
	cmp	eax, dword ptr [rbp - 0x348]
	nop	
	setne	cl
	mov	byte ptr [rbp - 0x739], cl
.label_3831:
	mov	al, byte ptr [rbp - 0x739]
	movabs	rcx, 0x1249249249249249
	nop	
	and	al, 1
	movzx	edx, al
	movsxd	rsi, edx
	mov	rdi, qword ptr [rbp - 0x738]
	sub	rdi, rsi
	nop	
	cmp	rcx, rdi
	lea	rdi, [rdi]
	jl	.label_1899
.label_3635:
	xor	eax, eax
	mov	cl, al
	lea	rdi, [rdi]
	xor	eax, eax
	mov	edx, eax
	mov	rsi, qword ptr [rbp - 0x350]
	cmp	rdx, qword ptr [rbp - 0x350]
	mov	qword ptr [rbp - 0x748], rsi
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x749], cl
	mov	rbp, rbp
	jge	.label_3855
	mov	eax, dword ptr [rbp - 0x50]
	cmp	eax, dword ptr [rbp - 0x348]
	setne	cl
	mov	byte ptr [rbp - 0x749], cl
.label_3855:
	mov	al, byte ptr [rbp - 0x749]
	lea	rdi, [rdi]
	and	al, 1
	movzx	ecx, al
	movsxd	rdx, ecx
	nop	
	mov	rsi, qword ptr [rbp - 0x748]
	sub	rsi, rdx
	imul	rdx, rsi, 7
	cmp	rdx, -0x80
	jl	.label_1899
	mov	rsp, rsp
	xor	eax, eax
	mov	cl, al
	xor	eax, eax
	nop	
	mov	edx, eax
	mov	rsi, qword ptr [rbp - 0x350]
	mov	rsp, rsp
	cmp	rdx, qword ptr [rbp - 0x350]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x758], rsi
	mov	byte ptr [rbp - 0x759], cl
	jge	.label_1920
	mov	eax, dword ptr [rbp - 0x50]
	mov	rbp, rbp
	cmp	eax, dword ptr [rbp - 0x348]
	setne	cl
	mov	byte ptr [rbp - 0x759], cl
.label_1920:
	mov	al, byte ptr [rbp - 0x759]
	mov	ecx, 0x7f
	mov	edx, ecx
	and	al, 1
	lea	rdi, [rdi]
	movzx	ecx, al
	lea	rdi, [rdi]
	movsxd	rsi, ecx
	nop	
	mov	rdi, qword ptr [rbp - 0x758]
	lea	rdi, [rdi]
	sub	rdi, rsi
	imul	rsi, rdi, 7
	cmp	rdx, rsi
	mov	rbp, rbp
	jge	.label_1951
.label_1899:
	mov	rsp, rsp
	xor	eax, eax
	lea	rsi, [rsi]
	mov	cl, al
	mov	rsp, rsp
	xor	eax, eax
	mov	edx, eax
	mov	rsi, qword ptr [rbp - 0x350]
	cmp	rdx, qword ptr [rbp - 0x350]
	mov	qword ptr [rbp - 0x768], rsi
	mov	byte ptr [rbp - 0x769], cl
	jge	.label_1970
	mov	eax, dword ptr [rbp - 0x50]
	lea	rsi, [rsi]
	cmp	eax, dword ptr [rbp - 0x348]
	lea	rdi, [rdi]
	setne	cl
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x769], cl
.label_1970:
	mov	al, byte ptr [rbp - 0x769]
	mov	cl, 1
	lea	rdi, [rdi]
	and	al, 1
	movzx	edx, al
	movsxd	rsi, edx
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x768]
	nop	
	sub	rdi, rsi
	mov	rbp, rbp
	mov	edx, edi
	imul	edx, edx, 7
	mov	al, dl
	mov	rsp, rsp
	movsx	rsi, al
	mov	qword ptr [rbp - 0x448], rsi
	nop	
	test	cl, 1
	jne	.label_1909
	jmp	.label_2025
.label_1951:
	nop	
	xor	eax, eax
	nop	
	mov	cl, al
	mov	rbp, rbp
	xor	eax, eax
	lea	rsi, [rsi]
	mov	edx, eax
	mov	rsi, qword ptr [rbp - 0x350]
	cmp	rdx, qword ptr [rbp - 0x350]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x778], rsi
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x779], cl
	lea	rdi, [rdi]
	jge	.label_2028
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x50]
	mov	rsp, rsp
	cmp	eax, dword ptr [rbp - 0x348]
	mov	rbp, rbp
	setne	cl
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x779], cl
.label_2028:
	lea	rsi, [rsi]
	mov	al, byte ptr [rbp - 0x779]
	xor	ecx, ecx
	lea	rsi, [rsi]
	mov	dl, cl
	mov	rbp, rbp
	and	al, 1
	nop	
	movzx	ecx, al
	lea	rdi, [rdi]
	movsxd	rsi, ecx
	mov	rdi, qword ptr [rbp - 0x778]
	sub	rdi, rsi
	nop	
	mov	ecx, edi
	imul	ecx, ecx, 7
	lea	rsi, [rsi]
	mov	al, cl
	movsx	rsi, al
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x448], rsi
	nop	
	test	dl, 1
	mov	rbp, rbp
	jne	.label_1909
	jmp	.label_2025
.label_2306:
	xor	eax, eax
	mov	cl, al
	lea	rdi, [rdi]
	test	cl, 1
	jne	.label_2066
	jmp	.label_2071
.label_2066:
	mov	rsp, rsp
	xor	eax, eax
	lea	rdi, [rdi]
	mov	cl, al
	test	cl, 1
	jne	.label_2074
	nop	
	jmp	.label_2079
.label_2074:
	xor	eax, eax
	mov	rbp, rbp
	mov	cl, al
	test	cl, 1
	jne	.label_2082
	jmp	.label_2811
.label_2082:
	xor	eax, eax
	mov	cl, al
	xor	eax, eax
	mov	edx, eax
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x350]
	cmp	rdx, qword ptr [rbp - 0x350]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x788], rsi
	mov	byte ptr [rbp - 0x789], cl
	mov	rbp, rbp
	jge	.label_2823
	mov	eax, dword ptr [rbp - 0x50]
	cmp	eax, dword ptr [rbp - 0x348]
	setne	cl
	mov	byte ptr [rbp - 0x789], cl
.label_2823:
	mov	rsp, rsp
	mov	al, byte ptr [rbp - 0x789]
	and	al, 1
	movzx	ecx, al
	movsxd	rdx, ecx
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x788]
	sub	rsi, rdx
	lea	rsi, [rsi]
	mov	di, si
	lea	rdi, [rdi]
	movsx	ecx, di
	nop	
	cmp	ecx, 0
	lea	rdi, [rdi]
	jge	.label_2108
	xor	eax, eax
	mov	cl, al
	mov	rsp, rsp
	xor	eax, eax
	mov	edx, eax
	mov	rsi, qword ptr [rbp - 0x350]
	cmp	rdx, qword ptr [rbp - 0x350]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x798], rsi
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x799], cl
	nop	
	jge	.label_2127
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x50]
	nop	
	cmp	eax, dword ptr [rbp - 0x348]
	mov	rsp, rsp
	setne	cl
	mov	byte ptr [rbp - 0x799], cl
.label_2127:
	lea	rsi, [rsi]
	mov	al, byte ptr [rbp - 0x799]
	and	al, 1
	movzx	ecx, al
	movsxd	rdx, ecx
	mov	rsi, qword ptr [rbp - 0x798]
	lea	rdi, [rdi]
	sub	rsi, rdx
	mov	di, si
	lea	rdi, [rdi]
	movsx	ecx, di
	cmp	ecx, 0x12492492
	lea	rdi, [rdi]
	jl	.label_2147
	lea	rsi, [rsi]
	jmp	.label_2163
.label_2108:
	lea	rsi, [rsi]
	xor	eax, eax
	nop	
	mov	cl, al
	test	cl, 1
	jne	.label_2165
	lea	rsi, [rsi]
	jmp	.label_3181
.label_2165:
	mov	rsp, rsp
	xor	eax, eax
	mov	rbp, rbp
	mov	cl, al
	nop	
	test	cl, 1
	jne	.label_2147
	mov	rbp, rbp
	jmp	.label_2163
.label_3181:
	xor	eax, eax
	mov	cl, al
	xor	eax, eax
	nop	
	mov	edx, eax
	mov	rsi, qword ptr [rbp - 0x350]
	nop	
	cmp	rdx, qword ptr [rbp - 0x350]
	nop	
	mov	qword ptr [rbp - 0x7a8], rsi
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x7a9], cl
	jge	.label_2180
	nop	
	mov	eax, dword ptr [rbp - 0x50]
	lea	rsi, [rsi]
	cmp	eax, dword ptr [rbp - 0x348]
	setne	cl
	nop	
	mov	byte ptr [rbp - 0x7a9], cl
.label_2180:
	mov	al, byte ptr [rbp - 0x7a9]
	mov	ecx, 0xedb6db6e
	and	al, 1
	mov	rbp, rbp
	movzx	edx, al
	movsxd	rsi, edx
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x7a8]
	mov	rbp, rbp
	sub	rdi, rsi
	mov	r8w, di
	mov	rbp, rbp
	movsx	edx, r8w
	cmp	ecx, edx
	jl	.label_2147
	jmp	.label_2163
.label_2811:
	mov	rsp, rsp
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_2216
	lea	rsi, [rsi]
	jmp	.label_2219
.label_2216:
	mov	rsp, rsp
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_2147
	nop	
	jmp	.label_2163
.label_2219:
	xor	eax, eax
	lea	rdi, [rdi]
	mov	cl, al
	xor	eax, eax
	nop	
	mov	edx, eax
	mov	rsi, qword ptr [rbp - 0x350]
	cmp	rdx, qword ptr [rbp - 0x350]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x7b8], rsi
	mov	byte ptr [rbp - 0x7b9], cl
	jge	.label_2232
	nop	
	mov	eax, dword ptr [rbp - 0x50]
	cmp	eax, dword ptr [rbp - 0x348]
	setne	cl
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x7b9], cl
.label_2232:
	mov	al, byte ptr [rbp - 0x7b9]
	nop	
	and	al, 1
	movzx	ecx, al
	movsxd	rdx, ecx
	mov	rsi, qword ptr [rbp - 0x7b8]
	sub	rsi, rdx
	mov	di, si
	nop	
	movsx	ecx, di
	mov	rbp, rbp
	cmp	ecx, 0
	jge	.label_2251
	lea	rdi, [rdi]
	xor	eax, eax
	lea	rdi, [rdi]
	mov	cl, al
	xor	eax, eax
	mov	rsp, rsp
	mov	edx, eax
	mov	rsi, qword ptr [rbp - 0x350]
	mov	rbp, rbp
	cmp	rdx, qword ptr [rbp - 0x350]
	mov	qword ptr [rbp - 0x7c8], rsi
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x7c9], cl
	jge	.label_2267
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x50]
	cmp	eax, dword ptr [rbp - 0x348]
	setne	cl
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x7c9], cl
.label_2267:
	mov	al, byte ptr [rbp - 0x7c9]
	lea	rsi, [rsi]
	and	al, 1
	nop	
	movzx	ecx, al
	nop	
	movsxd	rdx, ecx
	mov	rsi, qword ptr [rbp - 0x7c8]
	mov	rsp, rsp
	sub	rsi, rdx
	mov	di, si
	movsx	ecx, di
	nop	
	cmp	ecx, 0xedb6db6e
	jl	.label_2147
	jmp	.label_2163
.label_2251:
	mov	rsp, rsp
	xor	eax, eax
	mov	cl, al
	lea	rsi, [rsi]
	xor	eax, eax
	lea	rsi, [rsi]
	mov	edx, eax
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x350]
	cmp	rdx, qword ptr [rbp - 0x350]
	mov	qword ptr [rbp - 0x7d8], rsi
	mov	byte ptr [rbp - 0x7d9], cl
	jge	.label_2297
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x50]
	cmp	eax, dword ptr [rbp - 0x348]
	nop	
	setne	cl
	mov	byte ptr [rbp - 0x7d9], cl
.label_2297:
	lea	rsi, [rsi]
	mov	al, byte ptr [rbp - 0x7d9]
	nop	
	mov	ecx, 0x12492492
	nop	
	and	al, 1
	movzx	edx, al
	movsxd	rsi, edx
	mov	rdi, qword ptr [rbp - 0x7d8]
	sub	rdi, rsi
	mov	r8w, di
	mov	rbp, rbp
	movsx	edx, r8w
	cmp	ecx, edx
	jl	.label_2147
.label_2163:
	lea	rsi, [rsi]
	xor	eax, eax
	lea	rdi, [rdi]
	mov	cl, al
	mov	rbp, rbp
	xor	eax, eax
	mov	edx, eax
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x350]
	lea	rdi, [rdi]
	cmp	rdx, qword ptr [rbp - 0x350]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x7e8], rsi
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x7e9], cl
	lea	rdi, [rdi]
	jge	.label_2328
	mov	eax, dword ptr [rbp - 0x50]
	lea	rsi, [rsi]
	cmp	eax, dword ptr [rbp - 0x348]
	lea	rsi, [rsi]
	setne	cl
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x7e9], cl
.label_2328:
	mov	al, byte ptr [rbp - 0x7e9]
	lea	rdi, [rdi]
	and	al, 1
	movzx	ecx, al
	movsxd	rdx, ecx
	nop	
	mov	rsi, qword ptr [rbp - 0x7e8]
	lea	rsi, [rsi]
	sub	rsi, rdx
	lea	rdi, [rdi]
	mov	di, si
	movsx	ecx, di
	imul	ecx, ecx, 7
	cmp	ecx, 0xffff8000
	lea	rsi, [rsi]
	jl	.label_2147
	mov	rsp, rsp
	xor	eax, eax
	mov	rsp, rsp
	mov	cl, al
	xor	eax, eax
	mov	edx, eax
	mov	rsi, qword ptr [rbp - 0x350]
	lea	rdi, [rdi]
	cmp	rdx, qword ptr [rbp - 0x350]
	mov	qword ptr [rbp - 0x7f8], rsi
	mov	byte ptr [rbp - 0x7f9], cl
	lea	rsi, [rsi]
	jge	.label_2363
	mov	eax, dword ptr [rbp - 0x50]
	mov	rbp, rbp
	cmp	eax, dword ptr [rbp - 0x348]
	lea	rdi, [rdi]
	setne	cl
	nop	
	mov	byte ptr [rbp - 0x7f9], cl
.label_2363:
	mov	al, byte ptr [rbp - 0x7f9]
	mov	ecx, 0x7fff
	and	al, 1
	mov	rbp, rbp
	movzx	edx, al
	lea	rdi, [rdi]
	movsxd	rsi, edx
	nop	
	mov	rdi, qword ptr [rbp - 0x7f8]
	lea	rsi, [rsi]
	sub	rdi, rsi
	mov	r8w, di
	lea	rsi, [rsi]
	movsx	edx, r8w
	imul	edx, edx, 7
	cmp	ecx, edx
	jge	.label_2381
.label_2147:
	xor	eax, eax
	mov	cl, al
	xor	eax, eax
	mov	edx, eax
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x350]
	cmp	rdx, qword ptr [rbp - 0x350]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x808], rsi
	mov	byte ptr [rbp - 0x809], cl
	lea	rdi, [rdi]
	jge	.label_2393
	nop	
	mov	eax, dword ptr [rbp - 0x50]
	mov	rsp, rsp
	cmp	eax, dword ptr [rbp - 0x348]
	mov	rsp, rsp
	setne	cl
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x809], cl
.label_2393:
	lea	rdi, [rdi]
	mov	al, byte ptr [rbp - 0x809]
	mov	cl, 1
	mov	rbp, rbp
	and	al, 1
	mov	rbp, rbp
	movzx	edx, al
	movsxd	rsi, edx
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x808]
	sub	rdi, rsi
	mov	r8w, di
	movsx	edx, r8w
	imul	edx, edx, 7
	mov	r8w, dx
	movsx	rsi, r8w
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x448], rsi
	nop	
	test	cl, 1
	lea	rdi, [rdi]
	jne	.label_1909
	jmp	.label_2025
.label_2381:
	xor	eax, eax
	mov	cl, al
	lea	rsi, [rsi]
	xor	eax, eax
	mov	edx, eax
	mov	rsi, qword ptr [rbp - 0x350]
	nop	
	cmp	rdx, qword ptr [rbp - 0x350]
	mov	qword ptr [rbp - 0x818], rsi
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x819], cl
	jge	.label_2424
	mov	eax, dword ptr [rbp - 0x50]
	mov	rsp, rsp
	cmp	eax, dword ptr [rbp - 0x348]
	setne	cl
	mov	byte ptr [rbp - 0x819], cl
.label_2424:
	mov	al, byte ptr [rbp - 0x819]
	mov	rsp, rsp
	xor	ecx, ecx
	mov	dl, cl
	and	al, 1
	nop	
	movzx	ecx, al
	movsxd	rsi, ecx
	mov	rdi, qword ptr [rbp - 0x818]
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
	mov	qword ptr [rbp - 0x448], rsi
	test	dl, 1
	mov	rsp, rsp
	jne	.label_1909
	mov	rbp, rbp
	jmp	.label_2025
.label_2079:
	lea	rdi, [rdi]
	xor	eax, eax
	mov	cl, al
	mov	rbp, rbp
	test	cl, 1
	jne	.label_2473
	jmp	.label_2481
.label_2473:
	lea	rsi, [rsi]
	xor	eax, eax
	mov	cl, al
	nop	
	xor	eax, eax
	mov	edx, eax
	mov	rsi, qword ptr [rbp - 0x350]
	lea	rdi, [rdi]
	cmp	rdx, qword ptr [rbp - 0x350]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x828], rsi
	mov	byte ptr [rbp - 0x829], cl
	jge	.label_2483
	mov	eax, dword ptr [rbp - 0x50]
	lea	rdi, [rdi]
	cmp	eax, dword ptr [rbp - 0x348]
	mov	rsp, rsp
	setne	cl
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x829], cl
.label_2483:
	nop	
	mov	al, byte ptr [rbp - 0x829]
	and	al, 1
	lea	rsi, [rsi]
	movzx	ecx, al
	mov	rbp, rbp
	movsxd	rdx, ecx
	mov	rsi, qword ptr [rbp - 0x828]
	lea	rsi, [rsi]
	sub	rsi, rdx
	mov	rsp, rsp
	cmp	rsi, 0
	mov	rbp, rbp
	jge	.label_3102
	xor	eax, eax
	mov	rbp, rbp
	mov	cl, al
	lea	rsi, [rsi]
	xor	eax, eax
	lea	rdi, [rdi]
	mov	edx, eax
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x350]
	lea	rdi, [rdi]
	cmp	rdx, qword ptr [rbp - 0x350]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x838], rsi
	mov	byte ptr [rbp - 0x839], cl
	mov	rbp, rbp
	jge	.label_2523
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x50]
	lea	rdi, [rdi]
	cmp	eax, dword ptr [rbp - 0x348]
	setne	cl
	mov	byte ptr [rbp - 0x839], cl
.label_2523:
	lea	rdi, [rdi]
	mov	al, byte ptr [rbp - 0x839]
	movabs	rcx, 0x1249249249249249
	lea	rsi, [rsi]
	and	al, 1
	nop	
	movzx	edx, al
	lea	rsi, [rsi]
	movsxd	rsi, edx
	nop	
	mov	rdi, qword ptr [rbp - 0x838]
	mov	rbp, rbp
	sub	rdi, rsi
	cmp	rdi, rcx
	mov	rbp, rbp
	jl	.label_2542
	mov	rsp, rsp
	jmp	.label_2086
.label_3102:
	nop	
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_2562
	mov	rbp, rbp
	jmp	.label_2566
.label_2562:
	xor	eax, eax
	mov	rbp, rbp
	mov	cl, al
	mov	rsp, rsp
	test	cl, 1
	jne	.label_2542
	jmp	.label_2086
.label_2566:
	lea	rdi, [rdi]
	xor	eax, eax
	lea	rsi, [rsi]
	mov	cl, al
	xor	eax, eax
	mov	edx, eax
	mov	rsi, qword ptr [rbp - 0x350]
	cmp	rdx, qword ptr [rbp - 0x350]
	mov	qword ptr [rbp - 0x848], rsi
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x849], cl
	lea	rsi, [rsi]
	jge	.label_2575
	nop	
	mov	eax, dword ptr [rbp - 0x50]
	lea	rdi, [rdi]
	cmp	eax, dword ptr [rbp - 0x348]
	setne	cl
	nop	
	mov	byte ptr [rbp - 0x849], cl
.label_2575:
	lea	rsi, [rsi]
	mov	al, byte ptr [rbp - 0x849]
	mov	rsp, rsp
	movabs	rcx, 0xedb6db6db6db6db7
	mov	rbp, rbp
	and	al, 1
	movzx	edx, al
	movsxd	rsi, edx
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x848]
	nop	
	sub	rdi, rsi
	lea	rdi, [rdi]
	cmp	rcx, rdi
	nop	
	jl	.label_2542
	nop	
	jmp	.label_2086
.label_2481:
	nop	
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_2619
	jmp	.label_2622
.label_2619:
	xor	eax, eax
	lea	rsi, [rsi]
	mov	cl, al
	test	cl, 1
	jne	.label_2542
	mov	rbp, rbp
	jmp	.label_2086
.label_2622:
	nop	
	xor	eax, eax
	mov	rbp, rbp
	mov	cl, al
	xor	eax, eax
	mov	edx, eax
	nop	
	mov	rsi, qword ptr [rbp - 0x350]
	cmp	rdx, qword ptr [rbp - 0x350]
	mov	qword ptr [rbp - 0x858], rsi
	mov	byte ptr [rbp - 0x859], cl
	nop	
	jge	.label_2625
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x50]
	cmp	eax, dword ptr [rbp - 0x348]
	setne	cl
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x859], cl
.label_2625:
	mov	al, byte ptr [rbp - 0x859]
	nop	
	and	al, 1
	mov	rbp, rbp
	movzx	ecx, al
	movsxd	rdx, ecx
	nop	
	mov	rsi, qword ptr [rbp - 0x858]
	mov	rbp, rbp
	sub	rsi, rdx
	lea	rsi, [rsi]
	cmp	rsi, 0
	jge	.label_2643
	xor	eax, eax
	mov	cl, al
	mov	rbp, rbp
	xor	eax, eax
	mov	edx, eax
	mov	rsi, qword ptr [rbp - 0x350]
	mov	rbp, rbp
	cmp	rdx, qword ptr [rbp - 0x350]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x868], rsi
	mov	byte ptr [rbp - 0x869], cl
	mov	rsp, rsp
	jge	.label_2652
	mov	eax, dword ptr [rbp - 0x50]
	mov	rbp, rbp
	cmp	eax, dword ptr [rbp - 0x348]
	setne	cl
	mov	byte ptr [rbp - 0x869], cl
.label_2652:
	mov	al, byte ptr [rbp - 0x869]
	movabs	rcx, 0xedb6db6db6db6db7
	mov	rbp, rbp
	and	al, 1
	movzx	edx, al
	lea	rsi, [rsi]
	movsxd	rsi, edx
	mov	rdi, qword ptr [rbp - 0x868]
	sub	rdi, rsi
	cmp	rdi, rcx
	mov	rbp, rbp
	jl	.label_2542
	lea	rdi, [rdi]
	jmp	.label_2086
.label_2643:
	xor	eax, eax
	mov	cl, al
	xor	eax, eax
	mov	rbp, rbp
	mov	edx, eax
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x350]
	mov	rsp, rsp
	cmp	rdx, qword ptr [rbp - 0x350]
	mov	qword ptr [rbp - 0x878], rsi
	mov	byte ptr [rbp - 0x879], cl
	lea	rdi, [rdi]
	jge	.label_2682
	mov	eax, dword ptr [rbp - 0x50]
	lea	rdi, [rdi]
	cmp	eax, dword ptr [rbp - 0x348]
	lea	rsi, [rsi]
	setne	cl
	mov	byte ptr [rbp - 0x879], cl
.label_2682:
	mov	al, byte ptr [rbp - 0x879]
	movabs	rcx, 0x1249249249249249
	nop	
	and	al, 1
	movzx	edx, al
	lea	rdi, [rdi]
	movsxd	rsi, edx
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x878]
	nop	
	sub	rdi, rsi
	cmp	rcx, rdi
	jl	.label_2542
.label_2086:
	lea	rdi, [rdi]
	xor	eax, eax
	nop	
	mov	cl, al
	xor	eax, eax
	mov	edx, eax
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x350]
	lea	rdi, [rdi]
	cmp	rdx, qword ptr [rbp - 0x350]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x888], rsi
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x889], cl
	mov	rbp, rbp
	jge	.label_2319
	mov	eax, dword ptr [rbp - 0x50]
	cmp	eax, dword ptr [rbp - 0x348]
	nop	
	setne	cl
	nop	
	mov	byte ptr [rbp - 0x889], cl
.label_2319:
	mov	al, byte ptr [rbp - 0x889]
	and	al, 1
	lea	rdi, [rdi]
	movzx	ecx, al
	movsxd	rdx, ecx
	mov	rsi, qword ptr [rbp - 0x888]
	lea	rsi, [rsi]
	sub	rsi, rdx
	imul	rdx, rsi, 7
	cmp	rdx, -0x8000
	jl	.label_2542
	mov	rbp, rbp
	xor	eax, eax
	mov	cl, al
	mov	rsp, rsp
	xor	eax, eax
	lea	rdi, [rdi]
	mov	edx, eax
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x350]
	cmp	rdx, qword ptr [rbp - 0x350]
	mov	qword ptr [rbp - 0x898], rsi
	mov	byte ptr [rbp - 0x899], cl
	mov	rsp, rsp
	jge	.label_2738
	mov	eax, dword ptr [rbp - 0x50]
	lea	rdi, [rdi]
	cmp	eax, dword ptr [rbp - 0x348]
	lea	rdi, [rdi]
	setne	cl
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x899], cl
.label_2738:
	nop	
	mov	al, byte ptr [rbp - 0x899]
	mov	rbp, rbp
	mov	ecx, 0x7fff
	mov	rbp, rbp
	mov	edx, ecx
	and	al, 1
	movzx	ecx, al
	movsxd	rsi, ecx
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x898]
	sub	rdi, rsi
	nop	
	imul	rsi, rdi, 7
	cmp	rdx, rsi
	lea	rsi, [rsi]
	jge	.label_2753
.label_2542:
	lea	rsi, [rsi]
	xor	eax, eax
	mov	cl, al
	xor	eax, eax
	mov	edx, eax
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x350]
	cmp	rdx, qword ptr [rbp - 0x350]
	nop	
	mov	qword ptr [rbp - 0x8a8], rsi
	mov	byte ptr [rbp - 0x8a9], cl
	jge	.label_2771
	mov	eax, dword ptr [rbp - 0x50]
	mov	rsp, rsp
	cmp	eax, dword ptr [rbp - 0x348]
	mov	rbp, rbp
	setne	cl
	mov	byte ptr [rbp - 0x8a9], cl
.label_2771:
	mov	rsp, rsp
	mov	al, byte ptr [rbp - 0x8a9]
	mov	cl, 1
	and	al, 1
	movzx	edx, al
	mov	rsp, rsp
	movsxd	rsi, edx
	mov	rdi, qword ptr [rbp - 0x8a8]
	sub	rdi, rsi
	mov	rsp, rsp
	mov	edx, edi
	imul	edx, edx, 7
	mov	r8w, dx
	movsx	rsi, r8w
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x448], rsi
	mov	rsp, rsp
	test	cl, 1
	mov	rbp, rbp
	jne	.label_1909
	mov	rsp, rsp
	jmp	.label_2025
.label_2753:
	nop	
	xor	eax, eax
	mov	cl, al
	mov	rbp, rbp
	xor	eax, eax
	nop	
	mov	edx, eax
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x350]
	mov	rbp, rbp
	cmp	rdx, qword ptr [rbp - 0x350]
	mov	qword ptr [rbp - 0x8b8], rsi
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x8b9], cl
	jge	.label_2813
	mov	eax, dword ptr [rbp - 0x50]
	cmp	eax, dword ptr [rbp - 0x348]
	mov	rsp, rsp
	setne	cl
	mov	byte ptr [rbp - 0x8b9], cl
.label_2813:
	mov	al, byte ptr [rbp - 0x8b9]
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
	mov	rdi, qword ptr [rbp - 0x8b8]
	mov	rbp, rbp
	sub	rdi, rsi
	lea	rsi, [rsi]
	mov	ecx, edi
	imul	ecx, ecx, 7
	mov	r8w, cx
	lea	rsi, [rsi]
	movsx	rsi, r8w
	mov	qword ptr [rbp - 0x448], rsi
	lea	rsi, [rsi]
	test	dl, 1
	lea	rdi, [rdi]
	jne	.label_1909
	mov	rbp, rbp
	jmp	.label_2025
.label_2071:
	xor	eax, eax
	lea	rsi, [rsi]
	mov	cl, al
	lea	rsi, [rsi]
	test	cl, 1
	jne	.label_2555
	jmp	.label_2858
.label_2555:
	xor	eax, eax
	lea	rdi, [rdi]
	mov	cl, al
	mov	rsp, rsp
	test	cl, 1
	mov	rsp, rsp
	jne	.label_2859
	lea	rdi, [rdi]
	jmp	.label_2866
.label_2859:
	xor	eax, eax
	mov	cl, al
	lea	rsi, [rsi]
	test	cl, 1
	jne	.label_2533
	jmp	.label_3252
.label_2533:
	lea	rsi, [rsi]
	xor	eax, eax
	mov	cl, al
	mov	rsp, rsp
	xor	eax, eax
	mov	edx, eax
	mov	rsi, qword ptr [rbp - 0x350]
	lea	rdi, [rdi]
	cmp	rdx, qword ptr [rbp - 0x350]
	mov	qword ptr [rbp - 0x8c8], rsi
	mov	byte ptr [rbp - 0x8c9], cl
	mov	rbp, rbp
	jge	.label_3260
	mov	eax, dword ptr [rbp - 0x50]
	nop	
	cmp	eax, dword ptr [rbp - 0x348]
	setne	cl
	mov	byte ptr [rbp - 0x8c9], cl
.label_3260:
	mov	al, byte ptr [rbp - 0x8c9]
	mov	rbp, rbp
	and	al, 1
	movzx	ecx, al
	lea	rdi, [rdi]
	movsxd	rdx, ecx
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x8c8]
	mov	rbp, rbp
	sub	rsi, rdx
	lea	rdi, [rdi]
	mov	ecx, esi
	mov	rbp, rbp
	cmp	ecx, 0
	jge	.label_2890
	xor	eax, eax
	lea	rsi, [rsi]
	mov	cl, al
	xor	eax, eax
	mov	edx, eax
	mov	rsi, qword ptr [rbp - 0x350]
	nop	
	cmp	rdx, qword ptr [rbp - 0x350]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x8d8], rsi
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x8d9], cl
	jge	.label_2902
	mov	eax, dword ptr [rbp - 0x50]
	cmp	eax, dword ptr [rbp - 0x348]
	setne	cl
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x8d9], cl
.label_2902:
	mov	rsp, rsp
	mov	al, byte ptr [rbp - 0x8d9]
	lea	rdi, [rdi]
	and	al, 1
	lea	rsi, [rsi]
	movzx	ecx, al
	mov	rsp, rsp
	movsxd	rdx, ecx
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x8d8]
	sub	rsi, rdx
	mov	ecx, esi
	cmp	ecx, 0x12492492
	mov	rsp, rsp
	jl	.label_2684
	mov	rsp, rsp
	jmp	.label_2928
.label_2890:
	xor	eax, eax
	lea	rsi, [rsi]
	mov	cl, al
	test	cl, 1
	mov	rsp, rsp
	jne	.label_2930
	mov	rbp, rbp
	jmp	.label_2934
.label_2930:
	xor	eax, eax
	mov	cl, al
	mov	rbp, rbp
	test	cl, 1
	lea	rsi, [rsi]
	jne	.label_2684
	jmp	.label_2928
.label_2934:
	lea	rsi, [rsi]
	xor	eax, eax
	mov	rsp, rsp
	mov	cl, al
	nop	
	xor	eax, eax
	nop	
	mov	edx, eax
	mov	rsi, qword ptr [rbp - 0x350]
	lea	rsi, [rsi]
	cmp	rdx, qword ptr [rbp - 0x350]
	mov	qword ptr [rbp - 0x8e8], rsi
	mov	byte ptr [rbp - 0x8e9], cl
	jge	.label_2945
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x50]
	cmp	eax, dword ptr [rbp - 0x348]
	mov	rsp, rsp
	setne	cl
	nop	
	mov	byte ptr [rbp - 0x8e9], cl
.label_2945:
	mov	al, byte ptr [rbp - 0x8e9]
	mov	rbp, rbp
	mov	ecx, 0xedb6db6e
	and	al, 1
	movzx	edx, al
	movsxd	rsi, edx
	mov	rdi, qword ptr [rbp - 0x8e8]
	nop	
	sub	rdi, rsi
	mov	rsp, rsp
	mov	edx, edi
	lea	rsi, [rsi]
	cmp	ecx, edx
	mov	rsp, rsp
	jl	.label_2684
	jmp	.label_2928
.label_3252:
	xor	eax, eax
	lea	rsi, [rsi]
	mov	cl, al
	test	cl, 1
	jne	.label_2962
	lea	rdi, [rdi]
	jmp	.label_2968
.label_2962:
	xor	eax, eax
	lea	rsi, [rsi]
	mov	cl, al
	mov	rbp, rbp
	test	cl, 1
	jne	.label_2684
	nop	
	jmp	.label_2928
.label_2968:
	xor	eax, eax
	mov	cl, al
	lea	rsi, [rsi]
	xor	eax, eax
	lea	rsi, [rsi]
	mov	edx, eax
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x350]
	mov	rbp, rbp
	cmp	rdx, qword ptr [rbp - 0x350]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x8f8], rsi
	mov	byte ptr [rbp - 0x8f9], cl
	jge	.label_2979
	mov	eax, dword ptr [rbp - 0x50]
	cmp	eax, dword ptr [rbp - 0x348]
	setne	cl
	nop	
	mov	byte ptr [rbp - 0x8f9], cl
.label_2979:
	lea	rdi, [rdi]
	mov	al, byte ptr [rbp - 0x8f9]
	mov	rsp, rsp
	and	al, 1
	lea	rsi, [rsi]
	movzx	ecx, al
	lea	rdi, [rdi]
	movsxd	rdx, ecx
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x8f8]
	lea	rdi, [rdi]
	sub	rsi, rdx
	mov	ecx, esi
	cmp	ecx, 0
	jge	.label_2993
	xor	eax, eax
	mov	cl, al
	xor	eax, eax
	mov	rsp, rsp
	mov	edx, eax
	mov	rsi, qword ptr [rbp - 0x350]
	cmp	rdx, qword ptr [rbp - 0x350]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x908], rsi
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x909], cl
	jge	.label_3007
	mov	eax, dword ptr [rbp - 0x50]
	cmp	eax, dword ptr [rbp - 0x348]
	setne	cl
	nop	
	mov	byte ptr [rbp - 0x909], cl
.label_3007:
	mov	al, byte ptr [rbp - 0x909]
	and	al, 1
	movzx	ecx, al
	movsxd	rdx, ecx
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x908]
	lea	rsi, [rsi]
	sub	rsi, rdx
	mov	ecx, esi
	cmp	ecx, 0xedb6db6e
	lea	rdi, [rdi]
	jl	.label_2684
	jmp	.label_2928
.label_2993:
	lea	rsi, [rsi]
	xor	eax, eax
	mov	rbp, rbp
	mov	cl, al
	nop	
	xor	eax, eax
	mov	edx, eax
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x350]
	nop	
	cmp	rdx, qword ptr [rbp - 0x350]
	mov	qword ptr [rbp - 0x918], rsi
	mov	byte ptr [rbp - 0x919], cl
	mov	rbp, rbp
	jge	.label_3034
	mov	eax, dword ptr [rbp - 0x50]
	mov	rsp, rsp
	cmp	eax, dword ptr [rbp - 0x348]
	setne	cl
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x919], cl
.label_3034:
	mov	al, byte ptr [rbp - 0x919]
	mov	ecx, 0x12492492
	and	al, 1
	nop	
	movzx	edx, al
	movsxd	rsi, edx
	mov	rdi, qword ptr [rbp - 0x918]
	mov	rbp, rbp
	sub	rdi, rsi
	mov	edx, edi
	cmp	ecx, edx
	jl	.label_2684
.label_2928:
	xor	eax, eax
	mov	cl, al
	xor	eax, eax
	nop	
	mov	edx, eax
	nop	
	mov	rsi, qword ptr [rbp - 0x350]
	lea	rdi, [rdi]
	cmp	rdx, qword ptr [rbp - 0x350]
	mov	qword ptr [rbp - 0x928], rsi
	mov	byte ptr [rbp - 0x929], cl
	mov	rsp, rsp
	jge	.label_3056
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x50]
	lea	rsi, [rsi]
	cmp	eax, dword ptr [rbp - 0x348]
	nop	
	setne	cl
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x929], cl
.label_3056:
	mov	rsp, rsp
	mov	al, byte ptr [rbp - 0x929]
	lea	rdi, [rdi]
	and	al, 1
	lea	rsi, [rsi]
	movzx	ecx, al
	movsxd	rdx, ecx
	mov	rsi, qword ptr [rbp - 0x928]
	lea	rdi, [rdi]
	sub	rsi, rdx
	mov	rsp, rsp
	mov	ecx, esi
	imul	ecx, ecx, 7
	cmp	ecx, 0x80000000
	jl	.label_2684
	mov	rsp, rsp
	xor	eax, eax
	mov	cl, al
	xor	eax, eax
	mov	edx, eax
	mov	rsi, qword ptr [rbp - 0x350]
	cmp	rdx, qword ptr [rbp - 0x350]
	nop	
	mov	qword ptr [rbp - 0x938], rsi
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x939], cl
	lea	rdi, [rdi]
	jge	.label_3087
	mov	eax, dword ptr [rbp - 0x50]
	cmp	eax, dword ptr [rbp - 0x348]
	setne	cl
	nop	
	mov	byte ptr [rbp - 0x939], cl
.label_3087:
	mov	al, byte ptr [rbp - 0x939]
	mov	rsp, rsp
	mov	ecx, 0x7fffffff
	mov	rsp, rsp
	and	al, 1
	mov	rbp, rbp
	movzx	edx, al
	mov	rsp, rsp
	movsxd	rsi, edx
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x938]
	mov	rbp, rbp
	sub	rdi, rsi
	mov	rbp, rbp
	mov	edx, edi
	imul	edx, edx, 7
	cmp	ecx, edx
	lea	rsi, [rsi]
	jge	.label_3103
.label_2684:
	xor	eax, eax
	lea	rdi, [rdi]
	mov	cl, al
	lea	rdi, [rdi]
	xor	eax, eax
	mov	rbp, rbp
	mov	edx, eax
	mov	rsi, qword ptr [rbp - 0x350]
	cmp	rdx, qword ptr [rbp - 0x350]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x948], rsi
	nop	
	mov	byte ptr [rbp - 0x949], cl
	lea	rdi, [rdi]
	jge	.label_3122
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x50]
	cmp	eax, dword ptr [rbp - 0x348]
	setne	cl
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x949], cl
.label_3122:
	mov	al, byte ptr [rbp - 0x949]
	mov	cl, 1
	and	al, 1
	lea	rsi, [rsi]
	movzx	edx, al
	nop	
	movsxd	rsi, edx
	mov	rdi, qword ptr [rbp - 0x948]
	sub	rdi, rsi
	mov	edx, edi
	mov	rsp, rsp
	imul	edx, edx, 7
	nop	
	movsxd	rsi, edx
	mov	qword ptr [rbp - 0x448], rsi
	mov	rbp, rbp
	test	cl, 1
	lea	rdi, [rdi]
	jne	.label_1909
	jmp	.label_2025
.label_3103:
	mov	rbp, rbp
	xor	eax, eax
	mov	rbp, rbp
	mov	cl, al
	mov	rbp, rbp
	xor	eax, eax
	mov	edx, eax
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x350]
	cmp	rdx, qword ptr [rbp - 0x350]
	nop	
	mov	qword ptr [rbp - 0x958], rsi
	mov	byte ptr [rbp - 0x959], cl
	jge	.label_3152
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x50]
	nop	
	cmp	eax, dword ptr [rbp - 0x348]
	setne	cl
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x959], cl
.label_3152:
	mov	al, byte ptr [rbp - 0x959]
	xor	ecx, ecx
	lea	rdi, [rdi]
	mov	dl, cl
	and	al, 1
	nop	
	movzx	ecx, al
	mov	rbp, rbp
	movsxd	rsi, ecx
	mov	rdi, qword ptr [rbp - 0x958]
	sub	rdi, rsi
	mov	ecx, edi
	mov	rsp, rsp
	imul	ecx, ecx, 7
	lea	rdi, [rdi]
	movsxd	rsi, ecx
	mov	qword ptr [rbp - 0x448], rsi
	test	dl, 1
	jne	.label_1909
	nop	
	jmp	.label_2025
.label_2866:
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_3175
	jmp	.label_3180
.label_3175:
	lea	rsi, [rsi]
	xor	eax, eax
	mov	cl, al
	lea	rsi, [rsi]
	xor	eax, eax
	mov	edx, eax
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x350]
	mov	rbp, rbp
	cmp	rdx, qword ptr [rbp - 0x350]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x968], rsi
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x969], cl
	mov	rbp, rbp
	jge	.label_3183
	mov	eax, dword ptr [rbp - 0x50]
	cmp	eax, dword ptr [rbp - 0x348]
	setne	cl
	mov	byte ptr [rbp - 0x969], cl
.label_3183:
	mov	al, byte ptr [rbp - 0x969]
	and	al, 1
	movzx	ecx, al
	movsxd	rdx, ecx
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x968]
	lea	rdi, [rdi]
	sub	rsi, rdx
	cmp	rsi, 0
	jge	.label_3481
	lea	rsi, [rsi]
	xor	eax, eax
	nop	
	mov	cl, al
	xor	eax, eax
	lea	rsi, [rsi]
	mov	edx, eax
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x350]
	mov	rbp, rbp
	cmp	rdx, qword ptr [rbp - 0x350]
	mov	qword ptr [rbp - 0x978], rsi
	mov	byte ptr [rbp - 0x979], cl
	lea	rdi, [rdi]
	jge	.label_3214
	mov	eax, dword ptr [rbp - 0x50]
	cmp	eax, dword ptr [rbp - 0x348]
	mov	rbp, rbp
	setne	cl
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x979], cl
.label_3214:
	lea	rsi, [rsi]
	mov	al, byte ptr [rbp - 0x979]
	lea	rdi, [rdi]
	movabs	rcx, 0x1249249249249249
	lea	rsi, [rsi]
	and	al, 1
	movzx	edx, al
	mov	rsp, rsp
	movsxd	rsi, edx
	mov	rdi, qword ptr [rbp - 0x978]
	sub	rdi, rsi
	lea	rdi, [rdi]
	cmp	rdi, rcx
	mov	rsp, rsp
	jl	.label_3104
	jmp	.label_3250
.label_3481:
	mov	rbp, rbp
	xor	eax, eax
	nop	
	mov	cl, al
	test	cl, 1
	nop	
	jne	.label_3251
	mov	rsp, rsp
	jmp	.label_3254
.label_3251:
	xor	eax, eax
	mov	cl, al
	lea	rdi, [rdi]
	test	cl, 1
	nop	
	jne	.label_3104
	lea	rsi, [rsi]
	jmp	.label_3250
.label_3254:
	mov	rbp, rbp
	xor	eax, eax
	mov	cl, al
	xor	eax, eax
	mov	edx, eax
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x350]
	cmp	rdx, qword ptr [rbp - 0x350]
	mov	qword ptr [rbp - 0x988], rsi
	mov	byte ptr [rbp - 0x989], cl
	lea	rdi, [rdi]
	jge	.label_3263
	mov	eax, dword ptr [rbp - 0x50]
	cmp	eax, dword ptr [rbp - 0x348]
	setne	cl
	nop	
	mov	byte ptr [rbp - 0x989], cl
.label_3263:
	nop	
	mov	al, byte ptr [rbp - 0x989]
	movabs	rcx, 0xedb6db6db6db6db7
	nop	
	and	al, 1
	lea	rdi, [rdi]
	movzx	edx, al
	mov	rbp, rbp
	movsxd	rsi, edx
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x988]
	sub	rdi, rsi
	mov	rsp, rsp
	cmp	rcx, rdi
	jl	.label_3104
	jmp	.label_3250
.label_3180:
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	mov	rbp, rbp
	jne	.label_3283
	jmp	.label_3287
.label_3283:
	lea	rdi, [rdi]
	xor	eax, eax
	mov	cl, al
	nop	
	test	cl, 1
	jne	.label_3104
	mov	rsp, rsp
	jmp	.label_3250
.label_3287:
	xor	eax, eax
	lea	rdi, [rdi]
	mov	cl, al
	xor	eax, eax
	mov	edx, eax
	mov	rsi, qword ptr [rbp - 0x350]
	nop	
	cmp	rdx, qword ptr [rbp - 0x350]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x998], rsi
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x999], cl
	jge	.label_3290
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x50]
	cmp	eax, dword ptr [rbp - 0x348]
	setne	cl
	mov	byte ptr [rbp - 0x999], cl
.label_3290:
	mov	al, byte ptr [rbp - 0x999]
	mov	rsp, rsp
	and	al, 1
	movzx	ecx, al
	lea	rsi, [rsi]
	movsxd	rdx, ecx
	nop	
	mov	rsi, qword ptr [rbp - 0x998]
	mov	rsp, rsp
	sub	rsi, rdx
	cmp	rsi, 0
	mov	rsp, rsp
	jge	.label_3299
	lea	rdi, [rdi]
	xor	eax, eax
	mov	cl, al
	mov	rbp, rbp
	xor	eax, eax
	lea	rsi, [rsi]
	mov	edx, eax
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x350]
	lea	rdi, [rdi]
	cmp	rdx, qword ptr [rbp - 0x350]
	mov	qword ptr [rbp - 0x9a8], rsi
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x9a9], cl
	jge	.label_3315
	nop	
	mov	eax, dword ptr [rbp - 0x50]
	nop	
	cmp	eax, dword ptr [rbp - 0x348]
	lea	rdi, [rdi]
	setne	cl
	nop	
	mov	byte ptr [rbp - 0x9a9], cl
.label_3315:
	mov	rsp, rsp
	mov	al, byte ptr [rbp - 0x9a9]
	mov	rsp, rsp
	movabs	rcx, 0xedb6db6db6db6db7
	and	al, 1
	movzx	edx, al
	movsxd	rsi, edx
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x9a8]
	sub	rdi, rsi
	nop	
	cmp	rdi, rcx
	jl	.label_3104
	mov	rbp, rbp
	jmp	.label_3250
.label_3299:
	xor	eax, eax
	mov	cl, al
	xor	eax, eax
	mov	edx, eax
	mov	rsi, qword ptr [rbp - 0x350]
	nop	
	cmp	rdx, qword ptr [rbp - 0x350]
	mov	qword ptr [rbp - 0x9b8], rsi
	mov	byte ptr [rbp - 0x9b9], cl
	nop	
	jge	.label_2538
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x50]
	cmp	eax, dword ptr [rbp - 0x348]
	lea	rdi, [rdi]
	setne	cl
	mov	byte ptr [rbp - 0x9b9], cl
.label_2538:
	lea	rdi, [rdi]
	mov	al, byte ptr [rbp - 0x9b9]
	movabs	rcx, 0x1249249249249249
	and	al, 1
	lea	rdi, [rdi]
	movzx	edx, al
	mov	rsp, rsp
	movsxd	rsi, edx
	mov	rdi, qword ptr [rbp - 0x9b8]
	sub	rdi, rsi
	cmp	rcx, rdi
	jl	.label_3104
.label_3250:
	xor	eax, eax
	mov	cl, al
	xor	eax, eax
	mov	edx, eax
	mov	rsi, qword ptr [rbp - 0x350]
	cmp	rdx, qword ptr [rbp - 0x350]
	mov	qword ptr [rbp - 0x9c8], rsi
	mov	byte ptr [rbp - 0x9c9], cl
	jge	.label_3381
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x50]
	cmp	eax, dword ptr [rbp - 0x348]
	lea	rdi, [rdi]
	setne	cl
	mov	byte ptr [rbp - 0x9c9], cl
.label_3381:
	lea	rdi, [rdi]
	mov	al, byte ptr [rbp - 0x9c9]
	and	al, 1
	mov	rbp, rbp
	movzx	ecx, al
	movsxd	rdx, ecx
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x9c8]
	sub	rsi, rdx
	nop	
	imul	rdx, rsi, 7
	lea	rdi, [rdi]
	cmp	rdx, -0x80000000
	mov	rsp, rsp
	jl	.label_3104
	lea	rdi, [rdi]
	xor	eax, eax
	mov	cl, al
	mov	rbp, rbp
	xor	eax, eax
	mov	edx, eax
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x350]
	cmp	rdx, qword ptr [rbp - 0x350]
	mov	qword ptr [rbp - 0x9d8], rsi
	nop	
	mov	byte ptr [rbp - 0x9d9], cl
	jge	.label_3406
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x50]
	cmp	eax, dword ptr [rbp - 0x348]
	setne	cl
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x9d9], cl
.label_3406:
	mov	al, byte ptr [rbp - 0x9d9]
	mov	rbp, rbp
	mov	ecx, 0x7fffffff
	lea	rsi, [rsi]
	mov	edx, ecx
	and	al, 1
	nop	
	movzx	ecx, al
	movsxd	rsi, ecx
	mov	rdi, qword ptr [rbp - 0x9d8]
	sub	rdi, rsi
	imul	rsi, rdi, 7
	lea	rsi, [rsi]
	cmp	rdx, rsi
	jge	.label_3417
.label_3104:
	mov	rsp, rsp
	xor	eax, eax
	mov	rbp, rbp
	mov	cl, al
	xor	eax, eax
	mov	rsp, rsp
	mov	edx, eax
	mov	rsi, qword ptr [rbp - 0x350]
	cmp	rdx, qword ptr [rbp - 0x350]
	mov	qword ptr [rbp - 0x9e8], rsi
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x9e9], cl
	jge	.label_3433
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x50]
	lea	rsi, [rsi]
	cmp	eax, dword ptr [rbp - 0x348]
	setne	cl
	mov	byte ptr [rbp - 0x9e9], cl
.label_3433:
	lea	rdi, [rdi]
	mov	al, byte ptr [rbp - 0x9e9]
	mov	cl, 1
	and	al, 1
	movzx	edx, al
	lea	rdi, [rdi]
	movsxd	rsi, edx
	mov	rdi, qword ptr [rbp - 0x9e8]
	sub	rdi, rsi
	lea	rdi, [rdi]
	mov	edx, edi
	imul	edx, edx, 7
	mov	rbp, rbp
	movsxd	rsi, edx
	mov	qword ptr [rbp - 0x448], rsi
	test	cl, 1
	lea	rdi, [rdi]
	jne	.label_1909
	nop	
	jmp	.label_2025
.label_3417:
	xor	eax, eax
	mov	cl, al
	xor	eax, eax
	mov	edx, eax
	mov	rsi, qword ptr [rbp - 0x350]
	cmp	rdx, qword ptr [rbp - 0x350]
	mov	qword ptr [rbp - 0x9f8], rsi
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x9f9], cl
	mov	rbp, rbp
	jge	.label_3472
	mov	eax, dword ptr [rbp - 0x50]
	cmp	eax, dword ptr [rbp - 0x348]
	setne	cl
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x9f9], cl
.label_3472:
	mov	rbp, rbp
	mov	al, byte ptr [rbp - 0x9f9]
	mov	rsp, rsp
	xor	ecx, ecx
	lea	rdi, [rdi]
	mov	dl, cl
	lea	rsi, [rsi]
	and	al, 1
	movzx	ecx, al
	movsxd	rsi, ecx
	mov	rdi, qword ptr [rbp - 0x9f8]
	mov	rsp, rsp
	sub	rdi, rsi
	mov	ecx, edi
	mov	rbp, rbp
	imul	ecx, ecx, 7
	nop	
	movsxd	rsi, ecx
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x448], rsi
	test	dl, 1
	jne	.label_1909
	jmp	.label_2025
.label_2858:
	mov	al, 1
	test	al, 1
	mov	rbp, rbp
	jne	.label_3507
	jmp	.label_3511
.label_3507:
	xor	eax, eax
	mov	rbp, rbp
	mov	cl, al
	test	cl, 1
	lea	rsi, [rsi]
	jne	.label_3474
	jmp	.label_3515
.label_3474:
	lea	rsi, [rsi]
	xor	eax, eax
	lea	rsi, [rsi]
	mov	cl, al
	test	cl, 1
	lea	rdi, [rdi]
	jne	.label_3516
	jmp	.label_3537
.label_3516:
	xor	eax, eax
	mov	cl, al
	mov	rbp, rbp
	xor	eax, eax
	lea	rdi, [rdi]
	mov	edx, eax
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x350]
	cmp	rdx, qword ptr [rbp - 0x350]
	mov	qword ptr [rbp - 0xa08], rsi
	mov	rsp, rsp
	mov	byte ptr [rbp - 0xa09], cl
	jge	.label_3521
	mov	eax, dword ptr [rbp - 0x50]
	cmp	eax, dword ptr [rbp - 0x348]
	setne	cl
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0xa09], cl
.label_3521:
	mov	al, byte ptr [rbp - 0xa09]
	lea	rdi, [rdi]
	and	al, 1
	mov	rsp, rsp
	movzx	ecx, al
	nop	
	movsxd	rdx, ecx
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0xa08]
	sub	rsi, rdx
	mov	rbp, rbp
	cmp	rsi, 0
	lea	rdi, [rdi]
	jge	.label_3539
	xor	eax, eax
	nop	
	mov	cl, al
	xor	eax, eax
	mov	edx, eax
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x350]
	cmp	rdx, qword ptr [rbp - 0x350]
	mov	qword ptr [rbp - 0xa18], rsi
	nop	
	mov	byte ptr [rbp - 0xa19], cl
	jge	.label_3554
	mov	eax, dword ptr [rbp - 0x50]
	lea	rdi, [rdi]
	cmp	eax, dword ptr [rbp - 0x348]
	lea	rsi, [rsi]
	setne	cl
	mov	byte ptr [rbp - 0xa19], cl
.label_3554:
	mov	al, byte ptr [rbp - 0xa19]
	mov	rsp, rsp
	movabs	rcx, 0x1249249249249249
	and	al, 1
	movzx	edx, al
	lea	rdi, [rdi]
	movsxd	rsi, edx
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0xa18]
	sub	rdi, rsi
	cmp	rdi, rcx
	lea	rdi, [rdi]
	jl	.label_3572
	nop	
	jmp	.label_1996
.label_3539:
	lea	rsi, [rsi]
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	lea	rdi, [rdi]
	jne	.label_3586
	nop	
	jmp	.label_3593
.label_3586:
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_3572
	lea	rdi, [rdi]
	jmp	.label_1996
.label_3593:
	xor	eax, eax
	mov	rbp, rbp
	mov	cl, al
	xor	eax, eax
	lea	rdi, [rdi]
	mov	edx, eax
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x350]
	cmp	rdx, qword ptr [rbp - 0x350]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0xa28], rsi
	mov	byte ptr [rbp - 0xa29], cl
	jge	.label_3600
	mov	eax, dword ptr [rbp - 0x50]
	cmp	eax, dword ptr [rbp - 0x348]
	nop	
	setne	cl
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0xa29], cl
.label_3600:
	mov	al, byte ptr [rbp - 0xa29]
	mov	rsp, rsp
	movabs	rcx, 0xedb6db6db6db6db7
	lea	rsi, [rsi]
	and	al, 1
	movzx	edx, al
	movsxd	rsi, edx
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0xa28]
	mov	rbp, rbp
	sub	rdi, rsi
	mov	rsp, rsp
	cmp	rcx, rdi
	jl	.label_3572
	lea	rsi, [rsi]
	jmp	.label_1996
.label_3537:
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	mov	rbp, rbp
	jne	.label_3621
	lea	rsi, [rsi]
	jmp	.label_3627
.label_3621:
	xor	eax, eax
	mov	rbp, rbp
	mov	cl, al
	test	cl, 1
	jne	.label_3572
	lea	rdi, [rdi]
	jmp	.label_1996
.label_3627:
	mov	rsp, rsp
	xor	eax, eax
	mov	rsp, rsp
	mov	cl, al
	xor	eax, eax
	mov	edx, eax
	mov	rsi, qword ptr [rbp - 0x350]
	nop	
	cmp	rdx, qword ptr [rbp - 0x350]
	mov	qword ptr [rbp - 0xa38], rsi
	mov	byte ptr [rbp - 0xa39], cl
	jge	.label_3630
	mov	eax, dword ptr [rbp - 0x50]
	nop	
	cmp	eax, dword ptr [rbp - 0x348]
	setne	cl
	mov	byte ptr [rbp - 0xa39], cl
.label_3630:
	mov	al, byte ptr [rbp - 0xa39]
	and	al, 1
	movzx	ecx, al
	movsxd	rdx, ecx
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0xa38]
	sub	rsi, rdx
	nop	
	cmp	rsi, 0
	nop	
	jge	.label_3646
	lea	rsi, [rsi]
	xor	eax, eax
	lea	rdi, [rdi]
	mov	cl, al
	xor	eax, eax
	mov	edx, eax
	mov	rsi, qword ptr [rbp - 0x350]
	cmp	rdx, qword ptr [rbp - 0x350]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0xa48], rsi
	mov	byte ptr [rbp - 0xa49], cl
	lea	rdi, [rdi]
	jge	.label_2475
	mov	eax, dword ptr [rbp - 0x50]
	cmp	eax, dword ptr [rbp - 0x348]
	setne	cl
	nop	
	mov	byte ptr [rbp - 0xa49], cl
.label_2475:
	mov	al, byte ptr [rbp - 0xa49]
	movabs	rcx, 0xedb6db6db6db6db7
	mov	rsp, rsp
	and	al, 1
	mov	rsp, rsp
	movzx	edx, al
	movsxd	rsi, edx
	mov	rdi, qword ptr [rbp - 0xa48]
	sub	rdi, rsi
	cmp	rdi, rcx
	jl	.label_3572
	jmp	.label_1996
.label_3646:
	xor	eax, eax
	nop	
	mov	cl, al
	xor	eax, eax
	mov	rbp, rbp
	mov	edx, eax
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x350]
	mov	rbp, rbp
	cmp	rdx, qword ptr [rbp - 0x350]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0xa58], rsi
	mov	byte ptr [rbp - 0xa59], cl
	mov	rsp, rsp
	jge	.label_2676
	mov	eax, dword ptr [rbp - 0x50]
	mov	rsp, rsp
	cmp	eax, dword ptr [rbp - 0x348]
	setne	cl
	mov	byte ptr [rbp - 0xa59], cl
.label_2676:
	mov	rbp, rbp
	mov	al, byte ptr [rbp - 0xa59]
	movabs	rcx, 0x1249249249249249
	mov	rsp, rsp
	and	al, 1
	lea	rdi, [rdi]
	movzx	edx, al
	movsxd	rsi, edx
	mov	rdi, qword ptr [rbp - 0xa58]
	sub	rdi, rsi
	lea	rsi, [rsi]
	cmp	rcx, rdi
	jl	.label_3572
.label_1996:
	xor	eax, eax
	mov	rbp, rbp
	mov	cl, al
	lea	rsi, [rsi]
	xor	eax, eax
	mov	edx, eax
	nop	
	mov	rsi, qword ptr [rbp - 0x350]
	nop	
	cmp	rdx, qword ptr [rbp - 0x350]
	nop	
	mov	qword ptr [rbp - 0xa68], rsi
	mov	byte ptr [rbp - 0xa69], cl
	mov	rbp, rbp
	jge	.label_3712
	mov	eax, dword ptr [rbp - 0x50]
	cmp	eax, dword ptr [rbp - 0x348]
	mov	rsp, rsp
	setne	cl
	mov	byte ptr [rbp - 0xa69], cl
.label_3712:
	mov	rbp, rbp
	mov	al, byte ptr [rbp - 0xa69]
	nop	
	movabs	rcx, 0x8000000000000000
	and	al, 1
	mov	rsp, rsp
	movzx	edx, al
	lea	rdi, [rdi]
	movsxd	rsi, edx
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0xa68]
	sub	rdi, rsi
	mov	rbp, rbp
	imul	rsi, rdi, 7
	cmp	rsi, rcx
	lea	rsi, [rsi]
	jl	.label_3572
	lea	rsi, [rsi]
	xor	eax, eax
	nop	
	mov	cl, al
	xor	eax, eax
	nop	
	mov	edx, eax
	mov	rsi, qword ptr [rbp - 0x350]
	cmp	rdx, qword ptr [rbp - 0x350]
	mov	qword ptr [rbp - 0xa78], rsi
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0xa79], cl
	lea	rsi, [rsi]
	jge	.label_3738
	mov	eax, dword ptr [rbp - 0x50]
	mov	rbp, rbp
	cmp	eax, dword ptr [rbp - 0x348]
	lea	rdi, [rdi]
	setne	cl
	nop	
	mov	byte ptr [rbp - 0xa79], cl
.label_3738:
	mov	al, byte ptr [rbp - 0xa79]
	movabs	rcx, 0x7fffffffffffffff
	and	al, 1
	movzx	edx, al
	nop	
	movsxd	rsi, edx
	mov	rdi, qword ptr [rbp - 0xa78]
	mov	rbp, rbp
	sub	rdi, rsi
	imul	rsi, rdi, 7
	cmp	rcx, rsi
	jge	.label_3756
.label_3572:
	xor	eax, eax
	mov	rsp, rsp
	mov	cl, al
	xor	eax, eax
	mov	rbp, rbp
	mov	edx, eax
	mov	rsi, qword ptr [rbp - 0x350]
	nop	
	cmp	rdx, qword ptr [rbp - 0x350]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0xa88], rsi
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0xa89], cl
	mov	rbp, rbp
	jge	.label_3773
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x50]
	mov	rsp, rsp
	cmp	eax, dword ptr [rbp - 0x348]
	mov	rbp, rbp
	setne	cl
	mov	rbp, rbp
	mov	byte ptr [rbp - 0xa89], cl
.label_3773:
	lea	rdi, [rdi]
	mov	al, byte ptr [rbp - 0xa89]
	lea	rdi, [rdi]
	mov	cl, 1
	and	al, 1
	nop	
	movzx	edx, al
	movsxd	rsi, edx
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0xa88]
	mov	rbp, rbp
	sub	rdi, rsi
	imul	rsi, rdi, 7
	mov	qword ptr [rbp - 0x448], rsi
	mov	rbp, rbp
	test	cl, 1
	jne	.label_1909
	nop	
	jmp	.label_2025
.label_3756:
	xor	eax, eax
	mov	cl, al
	lea	rdi, [rdi]
	xor	eax, eax
	lea	rdi, [rdi]
	mov	edx, eax
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x350]
	cmp	rdx, qword ptr [rbp - 0x350]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0xa98], rsi
	mov	byte ptr [rbp - 0xa99], cl
	jge	.label_3801
	mov	eax, dword ptr [rbp - 0x50]
	mov	rsp, rsp
	cmp	eax, dword ptr [rbp - 0x348]
	lea	rdi, [rdi]
	setne	cl
	nop	
	mov	byte ptr [rbp - 0xa99], cl
.label_3801:
	mov	al, byte ptr [rbp - 0xa99]
	lea	rsi, [rsi]
	xor	ecx, ecx
	mov	dl, cl
	and	al, 1
	movzx	ecx, al
	movsxd	rsi, ecx
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0xa98]
	lea	rdi, [rdi]
	sub	rdi, rsi
	lea	rsi, [rsi]
	imul	rsi, rdi, 7
	mov	qword ptr [rbp - 0x448], rsi
	lea	rsi, [rsi]
	test	dl, 1
	jne	.label_1909
	jmp	.label_2025
.label_3515:
	xor	eax, eax
	mov	cl, al
	mov	rbp, rbp
	test	cl, 1
	jne	.label_3828
	nop	
	jmp	.label_3830
.label_3828:
	xor	eax, eax
	mov	cl, al
	mov	rbp, rbp
	xor	eax, eax
	mov	edx, eax
	mov	rsi, qword ptr [rbp - 0x350]
	lea	rdi, [rdi]
	cmp	rdx, qword ptr [rbp - 0x350]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0xaa8], rsi
	mov	rbp, rbp
	mov	byte ptr [rbp - 0xaa9], cl
	jge	.label_3833
	mov	eax, dword ptr [rbp - 0x50]
	mov	rsp, rsp
	cmp	eax, dword ptr [rbp - 0x348]
	setne	cl
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0xaa9], cl
.label_3833:
	mov	rbp, rbp
	mov	al, byte ptr [rbp - 0xaa9]
	lea	rsi, [rsi]
	and	al, 1
	movzx	ecx, al
	movsxd	rdx, ecx
	mov	rsi, qword ptr [rbp - 0xaa8]
	mov	rbp, rbp
	sub	rsi, rdx
	cmp	rsi, 0
	jge	.label_3847
	lea	rdi, [rdi]
	xor	eax, eax
	mov	cl, al
	xor	eax, eax
	mov	rbp, rbp
	mov	edx, eax
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x350]
	nop	
	cmp	rdx, qword ptr [rbp - 0x350]
	nop	
	mov	qword ptr [rbp - 0xab8], rsi
	mov	rbp, rbp
	mov	byte ptr [rbp - 0xab9], cl
	lea	rsi, [rsi]
	jge	.label_3858
	nop	
	mov	eax, dword ptr [rbp - 0x50]
	nop	
	cmp	eax, dword ptr [rbp - 0x348]
	mov	rbp, rbp
	setne	cl
	nop	
	mov	byte ptr [rbp - 0xab9], cl
.label_3858:
	mov	al, byte ptr [rbp - 0xab9]
	movabs	rcx, 0x1249249249249249
	nop	
	and	al, 1
	movzx	edx, al
	mov	rbp, rbp
	movsxd	rsi, edx
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0xab8]
	nop	
	sub	rdi, rsi
	cmp	rdi, rcx
	jl	.label_1910
	jmp	.label_1934
.label_3847:
	xor	eax, eax
	mov	cl, al
	mov	rsp, rsp
	test	cl, 1
	mov	rbp, rbp
	jne	.label_1936
	jmp	.label_1945
.label_1936:
	mov	rsp, rsp
	xor	eax, eax
	nop	
	mov	cl, al
	test	cl, 1
	jne	.label_1910
	mov	rbp, rbp
	jmp	.label_1934
.label_1945:
	lea	rdi, [rdi]
	xor	eax, eax
	mov	rbp, rbp
	mov	cl, al
	xor	eax, eax
	nop	
	mov	edx, eax
	nop	
	mov	rsi, qword ptr [rbp - 0x350]
	cmp	rdx, qword ptr [rbp - 0x350]
	mov	qword ptr [rbp - 0xac8], rsi
	mov	byte ptr [rbp - 0xac9], cl
	jge	.label_1953
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x50]
	mov	rsp, rsp
	cmp	eax, dword ptr [rbp - 0x348]
	setne	cl
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0xac9], cl
.label_1953:
	lea	rdi, [rdi]
	mov	al, byte ptr [rbp - 0xac9]
	movabs	rcx, 0xedb6db6db6db6db7
	mov	rbp, rbp
	and	al, 1
	movzx	edx, al
	movsxd	rsi, edx
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0xac8]
	mov	rbp, rbp
	sub	rdi, rsi
	cmp	rcx, rdi
	nop	
	jl	.label_1910
	nop	
	jmp	.label_1934
.label_3830:
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	mov	rsp, rsp
	jne	.label_2010
	jmp	.label_2017
.label_2010:
	nop	
	xor	eax, eax
	mov	rsp, rsp
	mov	cl, al
	lea	rdi, [rdi]
	test	cl, 1
	jne	.label_1910
	lea	rdi, [rdi]
	jmp	.label_1934
.label_2017:
	mov	rbp, rbp
	xor	eax, eax
	mov	rsp, rsp
	mov	cl, al
	xor	eax, eax
	lea	rdi, [rdi]
	mov	edx, eax
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x350]
	cmp	rdx, qword ptr [rbp - 0x350]
	nop	
	mov	qword ptr [rbp - 0xad8], rsi
	mov	rsp, rsp
	mov	byte ptr [rbp - 0xad9], cl
	lea	rsi, [rsi]
	jge	.label_2436
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x50]
	lea	rdi, [rdi]
	cmp	eax, dword ptr [rbp - 0x348]
	setne	cl
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0xad9], cl
.label_2436:
	mov	rsp, rsp
	mov	al, byte ptr [rbp - 0xad9]
	and	al, 1
	movzx	ecx, al
	lea	rdi, [rdi]
	movsxd	rdx, ecx
	mov	rsi, qword ptr [rbp - 0xad8]
	lea	rsi, [rsi]
	sub	rsi, rdx
	cmp	rsi, 0
	lea	rsi, [rsi]
	jge	.label_2046
	lea	rsi, [rsi]
	xor	eax, eax
	mov	rbp, rbp
	mov	cl, al
	nop	
	xor	eax, eax
	lea	rdi, [rdi]
	mov	edx, eax
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x350]
	mov	rbp, rbp
	cmp	rdx, qword ptr [rbp - 0x350]
	mov	qword ptr [rbp - 0xae8], rsi
	mov	rbp, rbp
	mov	byte ptr [rbp - 0xae9], cl
	jge	.label_2057
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x50]
	cmp	eax, dword ptr [rbp - 0x348]
	lea	rdi, [rdi]
	setne	cl
	mov	rsp, rsp
	mov	byte ptr [rbp - 0xae9], cl
.label_2057:
	mov	al, byte ptr [rbp - 0xae9]
	mov	rsp, rsp
	movabs	rcx, 0xedb6db6db6db6db7
	lea	rdi, [rdi]
	and	al, 1
	mov	rbp, rbp
	movzx	edx, al
	mov	rbp, rbp
	movsxd	rsi, edx
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0xae8]
	nop	
	sub	rdi, rsi
	lea	rdi, [rdi]
	cmp	rdi, rcx
	jl	.label_1910
	lea	rdi, [rdi]
	jmp	.label_1934
.label_2046:
	lea	rsi, [rsi]
	xor	eax, eax
	mov	cl, al
	xor	eax, eax
	mov	edx, eax
	nop	
	mov	rsi, qword ptr [rbp - 0x350]
	nop	
	cmp	rdx, qword ptr [rbp - 0x350]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0xaf8], rsi
	mov	rbp, rbp
	mov	byte ptr [rbp - 0xaf9], cl
	jge	.label_2097
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x50]
	cmp	eax, dword ptr [rbp - 0x348]
	lea	rdi, [rdi]
	setne	cl
	mov	byte ptr [rbp - 0xaf9], cl
.label_2097:
	mov	al, byte ptr [rbp - 0xaf9]
	movabs	rcx, 0x1249249249249249
	nop	
	and	al, 1
	mov	rsp, rsp
	movzx	edx, al
	movsxd	rsi, edx
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0xaf8]
	mov	rsp, rsp
	sub	rdi, rsi
	mov	rsp, rsp
	cmp	rcx, rdi
	jl	.label_1910
.label_1934:
	xor	eax, eax
	mov	cl, al
	lea	rdi, [rdi]
	xor	eax, eax
	mov	edx, eax
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x350]
	cmp	rdx, qword ptr [rbp - 0x350]
	mov	qword ptr [rbp - 0xb08], rsi
	nop	
	mov	byte ptr [rbp - 0xb09], cl
	jge	.label_3048
	mov	eax, dword ptr [rbp - 0x50]
	nop	
	cmp	eax, dword ptr [rbp - 0x348]
	mov	rsp, rsp
	setne	cl
	nop	
	mov	byte ptr [rbp - 0xb09], cl
.label_3048:
	mov	rbp, rbp
	mov	al, byte ptr [rbp - 0xb09]
	mov	rsp, rsp
	movabs	rcx, 0x8000000000000000
	and	al, 1
	nop	
	movzx	edx, al
	movsxd	rsi, edx
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0xb08]
	nop	
	sub	rdi, rsi
	mov	rbp, rbp
	imul	rsi, rdi, 7
	mov	rbp, rbp
	cmp	rsi, rcx
	jl	.label_1910
	nop	
	xor	eax, eax
	mov	cl, al
	mov	rbp, rbp
	xor	eax, eax
	lea	rdi, [rdi]
	mov	edx, eax
	mov	rsi, qword ptr [rbp - 0x350]
	cmp	rdx, qword ptr [rbp - 0x350]
	mov	qword ptr [rbp - 0xb18], rsi
	mov	byte ptr [rbp - 0xb19], cl
	jge	.label_2178
	mov	eax, dword ptr [rbp - 0x50]
	cmp	eax, dword ptr [rbp - 0x348]
	setne	cl
	mov	byte ptr [rbp - 0xb19], cl
.label_2178:
	mov	al, byte ptr [rbp - 0xb19]
	mov	rbp, rbp
	movabs	rcx, 0x7fffffffffffffff
	nop	
	and	al, 1
	movzx	edx, al
	mov	rbp, rbp
	movsxd	rsi, edx
	mov	rdi, qword ptr [rbp - 0xb18]
	sub	rdi, rsi
	lea	rdi, [rdi]
	imul	rsi, rdi, 7
	mov	rbp, rbp
	cmp	rcx, rsi
	nop	
	jge	.label_3302
.label_1910:
	xor	eax, eax
	mov	rsp, rsp
	mov	cl, al
	xor	eax, eax
	mov	edx, eax
	mov	rsi, qword ptr [rbp - 0x350]
	lea	rsi, [rsi]
	cmp	rdx, qword ptr [rbp - 0x350]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0xb28], rsi
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0xb29], cl
	nop	
	jge	.label_2212
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x50]
	nop	
	cmp	eax, dword ptr [rbp - 0x348]
	setne	cl
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0xb29], cl
.label_2212:
	mov	al, byte ptr [rbp - 0xb29]
	mov	cl, 1
	mov	rsp, rsp
	and	al, 1
	movzx	edx, al
	movsxd	rsi, edx
	mov	rdi, qword ptr [rbp - 0xb28]
	mov	rsp, rsp
	sub	rdi, rsi
	nop	
	imul	rsi, rdi, 7
	mov	qword ptr [rbp - 0x448], rsi
	lea	rsi, [rsi]
	test	cl, 1
	jne	.label_1909
	jmp	.label_2025
.label_3302:
	xor	eax, eax
	mov	rsp, rsp
	mov	cl, al
	xor	eax, eax
	mov	edx, eax
	mov	rsi, qword ptr [rbp - 0x350]
	lea	rdi, [rdi]
	cmp	rdx, qword ptr [rbp - 0x350]
	nop	
	mov	qword ptr [rbp - 0xb38], rsi
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0xb39], cl
	nop	
	jge	.label_3431
	mov	eax, dword ptr [rbp - 0x50]
	mov	rbp, rbp
	cmp	eax, dword ptr [rbp - 0x348]
	setne	cl
	nop	
	mov	byte ptr [rbp - 0xb39], cl
.label_3431:
	mov	al, byte ptr [rbp - 0xb39]
	lea	rsi, [rsi]
	xor	ecx, ecx
	mov	dl, cl
	mov	rbp, rbp
	and	al, 1
	mov	rbp, rbp
	movzx	ecx, al
	mov	rsp, rsp
	movsxd	rsi, ecx
	mov	rdi, qword ptr [rbp - 0xb38]
	lea	rsi, [rsi]
	sub	rdi, rsi
	imul	rsi, rdi, 7
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x448], rsi
	test	dl, 1
	mov	rsp, rsp
	jne	.label_1909
	lea	rdi, [rdi]
	jmp	.label_2025
.label_3511:
	lea	rdi, [rdi]
	xor	eax, eax
	lea	rdi, [rdi]
	mov	cl, al
	test	cl, 1
	jne	.label_3787
	lea	rsi, [rsi]
	jmp	.label_2300
.label_3787:
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	mov	rsp, rsp
	jne	.label_2304
	jmp	.label_2308
.label_2304:
	xor	eax, eax
	lea	rsi, [rsi]
	mov	cl, al
	xor	eax, eax
	mov	edx, eax
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x350]
	cmp	rdx, qword ptr [rbp - 0x350]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0xb48], rsi
	mov	byte ptr [rbp - 0xb49], cl
	jge	.label_2310
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x50]
	cmp	eax, dword ptr [rbp - 0x348]
	nop	
	setne	cl
	mov	byte ptr [rbp - 0xb49], cl
.label_2310:
	nop	
	mov	al, byte ptr [rbp - 0xb49]
	mov	rbp, rbp
	and	al, 1
	mov	rsp, rsp
	movzx	ecx, al
	movsxd	rdx, ecx
	mov	rsi, qword ptr [rbp - 0xb48]
	lea	rdi, [rdi]
	sub	rsi, rdx
	cmp	rsi, 0
	mov	rsp, rsp
	jge	.label_2325
	xor	eax, eax
	nop	
	mov	cl, al
	xor	eax, eax
	mov	rbp, rbp
	mov	edx, eax
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x350]
	cmp	rdx, qword ptr [rbp - 0x350]
	mov	qword ptr [rbp - 0xb58], rsi
	mov	byte ptr [rbp - 0xb59], cl
	mov	rbp, rbp
	jge	.label_2336
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x50]
	cmp	eax, dword ptr [rbp - 0x348]
	setne	cl
	mov	rbp, rbp
	mov	byte ptr [rbp - 0xb59], cl
.label_2336:
	lea	rsi, [rsi]
	mov	al, byte ptr [rbp - 0xb59]
	lea	rsi, [rsi]
	movabs	rcx, 0x1249249249249249
	mov	rbp, rbp
	and	al, 1
	movzx	edx, al
	lea	rsi, [rsi]
	movsxd	rsi, edx
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0xb58]
	sub	rdi, rsi
	lea	rsi, [rsi]
	cmp	rdi, rcx
	lea	rdi, [rdi]
	jl	.label_2220
	jmp	.label_2366
.label_2325:
	xor	eax, eax
	mov	rsp, rsp
	mov	cl, al
	lea	rsi, [rsi]
	test	cl, 1
	jne	.label_2368
	lea	rsi, [rsi]
	jmp	.label_2374
.label_2368:
	xor	eax, eax
	mov	cl, al
	nop	
	test	cl, 1
	mov	rsp, rsp
	jne	.label_2220
	jmp	.label_2366
.label_2374:
	mov	rbp, rbp
	xor	eax, eax
	mov	cl, al
	xor	eax, eax
	mov	rbp, rbp
	mov	edx, eax
	mov	rsi, qword ptr [rbp - 0x350]
	lea	rsi, [rsi]
	cmp	rdx, qword ptr [rbp - 0x350]
	mov	qword ptr [rbp - 0xb68], rsi
	mov	byte ptr [rbp - 0xb69], cl
	lea	rdi, [rdi]
	jge	.label_2396
	nop	
	mov	eax, dword ptr [rbp - 0x50]
	cmp	eax, dword ptr [rbp - 0x348]
	lea	rsi, [rsi]
	setne	cl
	mov	rsp, rsp
	mov	byte ptr [rbp - 0xb69], cl
.label_2396:
	nop	
	mov	al, byte ptr [rbp - 0xb69]
	movabs	rcx, 0xedb6db6db6db6db7
	lea	rdi, [rdi]
	and	al, 1
	lea	rdi, [rdi]
	movzx	edx, al
	movsxd	rsi, edx
	mov	rdi, qword ptr [rbp - 0xb68]
	nop	
	sub	rdi, rsi
	lea	rdi, [rdi]
	cmp	rcx, rdi
	jl	.label_2220
	jmp	.label_2366
.label_2308:
	nop	
	xor	eax, eax
	nop	
	mov	cl, al
	mov	rbp, rbp
	test	cl, 1
	jne	.label_2406
	lea	rdi, [rdi]
	jmp	.label_2410
.label_2406:
	xor	eax, eax
	mov	cl, al
	lea	rdi, [rdi]
	test	cl, 1
	lea	rdi, [rdi]
	jne	.label_2220
	lea	rdi, [rdi]
	jmp	.label_2366
.label_2410:
	xor	eax, eax
	mov	cl, al
	xor	eax, eax
	mov	rbp, rbp
	mov	edx, eax
	mov	rsi, qword ptr [rbp - 0x350]
	cmp	rdx, qword ptr [rbp - 0x350]
	mov	qword ptr [rbp - 0xb78], rsi
	mov	byte ptr [rbp - 0xb79], cl
	jge	.label_2418
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x50]
	cmp	eax, dword ptr [rbp - 0x348]
	mov	rsp, rsp
	setne	cl
	mov	byte ptr [rbp - 0xb79], cl
.label_2418:
	mov	al, byte ptr [rbp - 0xb79]
	and	al, 1
	movzx	ecx, al
	movsxd	rdx, ecx
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0xb78]
	mov	rbp, rbp
	sub	rsi, rdx
	cmp	rsi, 0
	jge	.label_2431
	mov	rbp, rbp
	xor	eax, eax
	mov	cl, al
	xor	eax, eax
	mov	edx, eax
	mov	rsi, qword ptr [rbp - 0x350]
	cmp	rdx, qword ptr [rbp - 0x350]
	mov	qword ptr [rbp - 0xb88], rsi
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0xb89], cl
	lea	rsi, [rsi]
	jge	.label_2444
	mov	eax, dword ptr [rbp - 0x50]
	lea	rsi, [rsi]
	cmp	eax, dword ptr [rbp - 0x348]
	setne	cl
	mov	byte ptr [rbp - 0xb89], cl
.label_2444:
	mov	al, byte ptr [rbp - 0xb89]
	movabs	rcx, 0xedb6db6db6db6db7
	and	al, 1
	movzx	edx, al
	movsxd	rsi, edx
	mov	rdi, qword ptr [rbp - 0xb88]
	sub	rdi, rsi
	lea	rdi, [rdi]
	cmp	rdi, rcx
	lea	rsi, [rsi]
	jl	.label_2220
	mov	rsp, rsp
	jmp	.label_2366
.label_2431:
	xor	eax, eax
	mov	cl, al
	xor	eax, eax
	mov	edx, eax
	mov	rsi, qword ptr [rbp - 0x350]
	lea	rdi, [rdi]
	cmp	rdx, qword ptr [rbp - 0x350]
	mov	qword ptr [rbp - 0xb98], rsi
	mov	rbp, rbp
	mov	byte ptr [rbp - 0xb99], cl
	jge	.label_2486
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x50]
	cmp	eax, dword ptr [rbp - 0x348]
	mov	rsp, rsp
	setne	cl
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0xb99], cl
.label_2486:
	mov	al, byte ptr [rbp - 0xb99]
	movabs	rcx, 0x1249249249249249
	and	al, 1
	lea	rdi, [rdi]
	movzx	edx, al
	movsxd	rsi, edx
	mov	rdi, qword ptr [rbp - 0xb98]
	lea	rsi, [rsi]
	sub	rdi, rsi
	cmp	rcx, rdi
	jl	.label_2220
.label_2366:
	xor	eax, eax
	lea	rsi, [rsi]
	mov	cl, al
	xor	eax, eax
	nop	
	mov	edx, eax
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x350]
	lea	rsi, [rsi]
	cmp	rdx, qword ptr [rbp - 0x350]
	mov	qword ptr [rbp - 0xba8], rsi
	mov	byte ptr [rbp - 0xba9], cl
	jge	.label_2526
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x50]
	lea	rsi, [rsi]
	cmp	eax, dword ptr [rbp - 0x348]
	setne	cl
	nop	
	mov	byte ptr [rbp - 0xba9], cl
.label_2526:
	mov	al, byte ptr [rbp - 0xba9]
	movabs	rcx, 0x8000000000000000
	nop	
	and	al, 1
	movzx	edx, al
	movsxd	rsi, edx
	nop	
	mov	rdi, qword ptr [rbp - 0xba8]
	mov	rsp, rsp
	sub	rdi, rsi
	imul	rsi, rdi, 7
	nop	
	cmp	rsi, rcx
	jl	.label_2220
	lea	rdi, [rdi]
	xor	eax, eax
	mov	rbp, rbp
	mov	cl, al
	lea	rsi, [rsi]
	xor	eax, eax
	mov	edx, eax
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x350]
	cmp	rdx, qword ptr [rbp - 0x350]
	mov	qword ptr [rbp - 0xbb8], rsi
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0xbb9], cl
	mov	rsp, rsp
	jge	.label_2558
	nop	
	mov	eax, dword ptr [rbp - 0x50]
	cmp	eax, dword ptr [rbp - 0x348]
	mov	rbp, rbp
	setne	cl
	mov	rbp, rbp
	mov	byte ptr [rbp - 0xbb9], cl
.label_2558:
	mov	rsp, rsp
	mov	al, byte ptr [rbp - 0xbb9]
	movabs	rcx, 0x7fffffffffffffff
	lea	rsi, [rsi]
	and	al, 1
	lea	rdi, [rdi]
	movzx	edx, al
	movsxd	rsi, edx
	mov	rdi, qword ptr [rbp - 0xbb8]
	nop	
	sub	rdi, rsi
	imul	rsi, rdi, 7
	cmp	rcx, rsi
	jge	.label_2580
.label_2220:
	xor	eax, eax
	mov	cl, al
	nop	
	xor	eax, eax
	mov	edx, eax
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x350]
	cmp	rdx, qword ptr [rbp - 0x350]
	nop	
	mov	qword ptr [rbp - 0xbc8], rsi
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0xbc9], cl
	jge	.label_2600
	mov	eax, dword ptr [rbp - 0x50]
	cmp	eax, dword ptr [rbp - 0x348]
	setne	cl
	mov	rsp, rsp
	mov	byte ptr [rbp - 0xbc9], cl
.label_2600:
	mov	al, byte ptr [rbp - 0xbc9]
	mov	cl, 1
	and	al, 1
	lea	rdi, [rdi]
	movzx	edx, al
	movsxd	rsi, edx
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0xbc8]
	sub	rdi, rsi
	mov	rbp, rbp
	imul	rsi, rdi, 7
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x448], rsi
	mov	rbp, rbp
	test	cl, 1
	jne	.label_1909
	lea	rdi, [rdi]
	jmp	.label_2025
.label_2580:
	nop	
	xor	eax, eax
	mov	cl, al
	xor	eax, eax
	mov	edx, eax
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x350]
	lea	rdi, [rdi]
	cmp	rdx, qword ptr [rbp - 0x350]
	mov	qword ptr [rbp - 0xbd8], rsi
	mov	byte ptr [rbp - 0xbd9], cl
	jge	.label_2635
	mov	eax, dword ptr [rbp - 0x50]
	nop	
	cmp	eax, dword ptr [rbp - 0x348]
	setne	cl
	nop	
	mov	byte ptr [rbp - 0xbd9], cl
.label_2635:
	mov	rsp, rsp
	mov	al, byte ptr [rbp - 0xbd9]
	mov	rbp, rbp
	xor	ecx, ecx
	lea	rsi, [rsi]
	mov	dl, cl
	and	al, 1
	mov	rsp, rsp
	movzx	ecx, al
	movsxd	rsi, ecx
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0xbd8]
	mov	rbp, rbp
	sub	rdi, rsi
	imul	rsi, rdi, 7
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x448], rsi
	mov	rbp, rbp
	test	dl, 1
	jne	.label_1909
	jmp	.label_2025
.label_2300:
	xor	eax, eax
	mov	rsp, rsp
	mov	cl, al
	test	cl, 1
	jne	.label_2666
	jmp	.label_2668
.label_2666:
	xor	eax, eax
	mov	cl, al
	mov	rbp, rbp
	xor	eax, eax
	nop	
	mov	edx, eax
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x350]
	lea	rsi, [rsi]
	cmp	rdx, qword ptr [rbp - 0x350]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0xbe8], rsi
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0xbe9], cl
	jge	.label_2670
	mov	eax, dword ptr [rbp - 0x50]
	lea	rdi, [rdi]
	cmp	eax, dword ptr [rbp - 0x348]
	lea	rdi, [rdi]
	setne	cl
	mov	byte ptr [rbp - 0xbe9], cl
.label_2670:
	mov	al, byte ptr [rbp - 0xbe9]
	mov	rsp, rsp
	and	al, 1
	mov	rbp, rbp
	movzx	ecx, al
	movsxd	rdx, ecx
	mov	rsi, qword ptr [rbp - 0xbe8]
	sub	rsi, rdx
	cmp	rsi, 0
	lea	rdi, [rdi]
	jge	.label_2687
	xor	eax, eax
	mov	cl, al
	xor	eax, eax
	lea	rsi, [rsi]
	mov	edx, eax
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x350]
	lea	rsi, [rsi]
	cmp	rdx, qword ptr [rbp - 0x350]
	mov	qword ptr [rbp - 0xbf8], rsi
	mov	byte ptr [rbp - 0xbf9], cl
	jge	.label_2695
	mov	eax, dword ptr [rbp - 0x50]
	cmp	eax, dword ptr [rbp - 0x348]
	mov	rsp, rsp
	setne	cl
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0xbf9], cl
.label_2695:
	mov	al, byte ptr [rbp - 0xbf9]
	movabs	rcx, 0x1249249249249249
	mov	rsp, rsp
	and	al, 1
	movzx	edx, al
	movsxd	rsi, edx
	mov	rdi, qword ptr [rbp - 0xbf8]
	nop	
	sub	rdi, rsi
	cmp	rdi, rcx
	mov	rbp, rbp
	jl	.label_2715
	jmp	.label_2724
.label_2687:
	mov	rsp, rsp
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_2726
	nop	
	jmp	.label_2427
.label_2726:
	xor	eax, eax
	mov	rsp, rsp
	mov	cl, al
	mov	rsp, rsp
	test	cl, 1
	jne	.label_2715
	jmp	.label_2724
.label_2427:
	mov	rsp, rsp
	xor	eax, eax
	nop	
	mov	cl, al
	nop	
	xor	eax, eax
	mov	edx, eax
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x350]
	cmp	rdx, qword ptr [rbp - 0x350]
	mov	qword ptr [rbp - 0xc08], rsi
	mov	rsp, rsp
	mov	byte ptr [rbp - 0xc09], cl
	mov	rsp, rsp
	jge	.label_2736
	mov	eax, dword ptr [rbp - 0x50]
	cmp	eax, dword ptr [rbp - 0x348]
	setne	cl
	mov	rsp, rsp
	mov	byte ptr [rbp - 0xc09], cl
.label_2736:
	mov	al, byte ptr [rbp - 0xc09]
	lea	rdi, [rdi]
	movabs	rcx, 0xedb6db6db6db6db7
	mov	rsp, rsp
	and	al, 1
	movzx	edx, al
	movsxd	rsi, edx
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0xc08]
	mov	rsp, rsp
	sub	rdi, rsi
	lea	rdi, [rdi]
	cmp	rcx, rdi
	jl	.label_2715
	mov	rsp, rsp
	jmp	.label_2724
.label_2668:
	lea	rsi, [rsi]
	xor	eax, eax
	mov	rbp, rbp
	mov	cl, al
	lea	rsi, [rsi]
	test	cl, 1
	jne	.label_2767
	lea	rsi, [rsi]
	jmp	.label_2881
.label_2767:
	mov	rbp, rbp
	xor	eax, eax
	mov	cl, al
	lea	rdi, [rdi]
	test	cl, 1
	jne	.label_2715
	mov	rbp, rbp
	jmp	.label_2724
.label_2881:
	lea	rdi, [rdi]
	xor	eax, eax
	mov	rsp, rsp
	mov	cl, al
	xor	eax, eax
	mov	edx, eax
	nop	
	mov	rsi, qword ptr [rbp - 0x350]
	cmp	rdx, qword ptr [rbp - 0x350]
	mov	qword ptr [rbp - 0xc18], rsi
	mov	byte ptr [rbp - 0xc19], cl
	nop	
	jge	.label_2784
	mov	eax, dword ptr [rbp - 0x50]
	nop	
	cmp	eax, dword ptr [rbp - 0x348]
	setne	cl
	mov	rsp, rsp
	mov	byte ptr [rbp - 0xc19], cl
.label_2784:
	mov	rsp, rsp
	mov	al, byte ptr [rbp - 0xc19]
	and	al, 1
	movzx	ecx, al
	movsxd	rdx, ecx
	mov	rsi, qword ptr [rbp - 0xc18]
	sub	rsi, rdx
	cmp	rsi, 0
	lea	rdi, [rdi]
	jge	.label_2803
	xor	eax, eax
	mov	rbp, rbp
	mov	cl, al
	xor	eax, eax
	mov	rbp, rbp
	mov	edx, eax
	mov	rsi, qword ptr [rbp - 0x350]
	cmp	rdx, qword ptr [rbp - 0x350]
	mov	qword ptr [rbp - 0xc28], rsi
	mov	byte ptr [rbp - 0xc29], cl
	jge	.label_2816
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x50]
	cmp	eax, dword ptr [rbp - 0x348]
	setne	cl
	mov	byte ptr [rbp - 0xc29], cl
.label_2816:
	nop	
	mov	al, byte ptr [rbp - 0xc29]
	lea	rsi, [rsi]
	movabs	rcx, 0xedb6db6db6db6db7
	and	al, 1
	nop	
	movzx	edx, al
	lea	rdi, [rdi]
	movsxd	rsi, edx
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0xc28]
	mov	rbp, rbp
	sub	rdi, rsi
	mov	rsp, rsp
	cmp	rdi, rcx
	jl	.label_2715
	nop	
	jmp	.label_2724
.label_2803:
	xor	eax, eax
	mov	cl, al
	nop	
	xor	eax, eax
	mov	rsp, rsp
	mov	edx, eax
	nop	
	mov	rsi, qword ptr [rbp - 0x350]
	cmp	rdx, qword ptr [rbp - 0x350]
	nop	
	mov	qword ptr [rbp - 0xc38], rsi
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0xc39], cl
	lea	rsi, [rsi]
	jge	.label_2845
	mov	eax, dword ptr [rbp - 0x50]
	cmp	eax, dword ptr [rbp - 0x348]
	lea	rsi, [rsi]
	setne	cl
	mov	byte ptr [rbp - 0xc39], cl
.label_2845:
	mov	rbp, rbp
	mov	al, byte ptr [rbp - 0xc39]
	movabs	rcx, 0x1249249249249249
	mov	rsp, rsp
	and	al, 1
	movzx	edx, al
	lea	rdi, [rdi]
	movsxd	rsi, edx
	nop	
	mov	rdi, qword ptr [rbp - 0xc38]
	sub	rdi, rsi
	mov	rsp, rsp
	cmp	rcx, rdi
	lea	rdi, [rdi]
	jl	.label_2715
.label_2724:
	xor	eax, eax
	mov	cl, al
	xor	eax, eax
	mov	edx, eax
	mov	rsi, qword ptr [rbp - 0x350]
	lea	rdi, [rdi]
	cmp	rdx, qword ptr [rbp - 0x350]
	mov	qword ptr [rbp - 0xc48], rsi
	mov	rsp, rsp
	mov	byte ptr [rbp - 0xc49], cl
	jge	.label_2877
	mov	eax, dword ptr [rbp - 0x50]
	cmp	eax, dword ptr [rbp - 0x348]
	setne	cl
	mov	rsp, rsp
	mov	byte ptr [rbp - 0xc49], cl
.label_2877:
	mov	rsp, rsp
	mov	al, byte ptr [rbp - 0xc49]
	movabs	rcx, 0x8000000000000000
	and	al, 1
	mov	rbp, rbp
	movzx	edx, al
	movsxd	rsi, edx
	mov	rdi, qword ptr [rbp - 0xc48]
	lea	rdi, [rdi]
	sub	rdi, rsi
	lea	rdi, [rdi]
	imul	rsi, rdi, 7
	cmp	rsi, rcx
	jl	.label_2715
	xor	eax, eax
	mov	rsp, rsp
	mov	cl, al
	xor	eax, eax
	mov	rsp, rsp
	mov	edx, eax
	mov	rsi, qword ptr [rbp - 0x350]
	mov	rbp, rbp
	cmp	rdx, qword ptr [rbp - 0x350]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0xc58], rsi
	mov	rbp, rbp
	mov	byte ptr [rbp - 0xc59], cl
	mov	rsp, rsp
	jge	.label_2908
	mov	eax, dword ptr [rbp - 0x50]
	cmp	eax, dword ptr [rbp - 0x348]
	setne	cl
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0xc59], cl
.label_2908:
	mov	rbp, rbp
	mov	al, byte ptr [rbp - 0xc59]
	lea	rsi, [rsi]
	movabs	rcx, 0x7fffffffffffffff
	and	al, 1
	movzx	edx, al
	movsxd	rsi, edx
	mov	rdi, qword ptr [rbp - 0xc58]
	sub	rdi, rsi
	imul	rsi, rdi, 7
	lea	rdi, [rdi]
	cmp	rcx, rsi
	jge	.label_2924
.label_2715:
	xor	eax, eax
	mov	cl, al
	lea	rdi, [rdi]
	xor	eax, eax
	mov	edx, eax
	mov	rsi, qword ptr [rbp - 0x350]
	cmp	rdx, qword ptr [rbp - 0x350]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0xc68], rsi
	mov	byte ptr [rbp - 0xc69], cl
	jge	.label_2938
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x50]
	cmp	eax, dword ptr [rbp - 0x348]
	setne	cl
	mov	byte ptr [rbp - 0xc69], cl
.label_2938:
	mov	rsp, rsp
	mov	al, byte ptr [rbp - 0xc69]
	nop	
	mov	cl, 1
	and	al, 1
	mov	rsp, rsp
	movzx	edx, al
	movsxd	rsi, edx
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0xc68]
	mov	rbp, rbp
	sub	rdi, rsi
	nop	
	imul	rsi, rdi, 7
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x448], rsi
	lea	rsi, [rsi]
	test	cl, 1
	jne	.label_1909
	jmp	.label_2025
.label_2924:
	lea	rsi, [rsi]
	xor	eax, eax
	mov	cl, al
	xor	eax, eax
	mov	edx, eax
	mov	rsi, qword ptr [rbp - 0x350]
	lea	rdi, [rdi]
	cmp	rdx, qword ptr [rbp - 0x350]
	mov	qword ptr [rbp - 0xc78], rsi
	mov	rbp, rbp
	mov	byte ptr [rbp - 0xc79], cl
	jge	.label_2960
	mov	eax, dword ptr [rbp - 0x50]
	lea	rsi, [rsi]
	cmp	eax, dword ptr [rbp - 0x348]
	mov	rbp, rbp
	setne	cl
	nop	
	mov	byte ptr [rbp - 0xc79], cl
.label_2960:
	mov	al, byte ptr [rbp - 0xc79]
	mov	rbp, rbp
	xor	ecx, ecx
	mov	dl, cl
	lea	rdi, [rdi]
	and	al, 1
	mov	rsp, rsp
	movzx	ecx, al
	movsxd	rsi, ecx
	mov	rdi, qword ptr [rbp - 0xc78]
	lea	rdi, [rdi]
	sub	rdi, rsi
	imul	rsi, rdi, 7
	mov	qword ptr [rbp - 0x448], rsi
	test	dl, 1
	lea	rsi, [rsi]
	jne	.label_1909
.label_2025:
	lea	rsi, [rsi]
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	mov	rbp, rbp
	jne	.label_2992
	jmp	.label_2999
.label_2992:
	lea	rdi, [rdi]
	xor	eax, eax
	mov	cl, al
	nop	
	test	cl, 1
	lea	rsi, [rsi]
	jne	.label_2138
	lea	rdi, [rdi]
	jmp	.label_3004
.label_2138:
	mov	al, 1
	test	al, 1
	jne	.label_3006
	jmp	.label_2716
.label_3006:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x448]
	mov	rsp, rsp
	mov	cl, al
	lea	rdi, [rdi]
	movsx	edx, cl
	cmp	edx, 0
	jge	.label_3010
	lea	rdi, [rdi]
	mov	eax, 0x80000000
	mov	ecx, 7
	mov	edx, dword ptr [rbp - 0x348]
	sub	edx, dword ptr [rbp - 0x50]
	mov	rbp, rbp
	add	edx, 7
	mov	rsp, rsp
	mov	dword ptr [rbp - 0xc80], eax
	mov	rbp, rbp
	mov	eax, edx
	cdq	
	idiv	ecx
	lea	rdi, [rdi]
	mov	sil, dl
	movsx	ecx, sil
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x448]
	mov	sil, dil
	lea	rdi, [rdi]
	movsx	edx, sil
	lea	rsi, [rsi]
	mov	r8d, dword ptr [rbp - 0xc80]
	mov	rbp, rbp
	sub	r8d, edx
	cmp	ecx, r8d
	mov	rsp, rsp
	jl	.label_2269
	nop	
	jmp	.label_2834
.label_3010:
	mov	eax, 7
	mov	ecx, 0x7fffffff
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x448]
	lea	rsi, [rsi]
	mov	sil, dl
	mov	rsp, rsp
	movsx	edi, sil
	sub	ecx, edi
	mov	rbp, rbp
	mov	edi, dword ptr [rbp - 0x348]
	sub	edi, dword ptr [rbp - 0x50]
	mov	rbp, rbp
	add	edi, 7
	mov	dword ptr [rbp - 0xc84], eax
	mov	eax, edi
	mov	rbp, rbp
	cdq	
	mov	edi, dword ptr [rbp - 0xc84]
	idiv	edi
	mov	sil, dl
	mov	rbp, rbp
	movsx	edx, sil
	lea	rdi, [rdi]
	cmp	ecx, edx
	nop	
	jl	.label_2269
	jmp	.label_2834
.label_2716:
	nop	
	mov	eax, 7
	mov	ecx, dword ptr [rbp - 0x348]
	sub	ecx, dword ptr [rbp - 0x50]
	mov	rsp, rsp
	add	ecx, 7
	mov	dword ptr [rbp - 0xc88], eax
	mov	rbp, rbp
	mov	eax, ecx
	cdq	
	mov	ecx, dword ptr [rbp - 0xc88]
	idiv	ecx
	mov	sil, dl
	lea	rdi, [rdi]
	movsx	edx, sil
	mov	rbp, rbp
	cmp	edx, 0
	lea	rdi, [rdi]
	jge	.label_3058
	lea	rsi, [rsi]
	mov	eax, 7
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x448]
	lea	rdi, [rdi]
	mov	dl, cl
	mov	rsp, rsp
	movsx	esi, dl
	mov	edi, dword ptr [rbp - 0x348]
	mov	rbp, rbp
	sub	edi, dword ptr [rbp - 0x50]
	lea	rdi, [rdi]
	add	edi, 7
	mov	dword ptr [rbp - 0xc8c], eax
	mov	eax, edi
	cdq	
	lea	rsi, [rsi]
	mov	edi, dword ptr [rbp - 0xc8c]
	mov	rsp, rsp
	idiv	edi
	mov	r8b, dl
	movsx	edx, r8b
	nop	
	mov	rcx, qword ptr [rbp - 0x448]
	lea	rdi, [rdi]
	mov	r8b, cl
	nop	
	movsx	r9d, r8b
	add	edx, r9d
	cmp	esi, edx
	jle	.label_2269
	mov	rsp, rsp
	jmp	.label_2834
.label_3058:
	mov	rax, qword ptr [rbp - 0x448]
	lea	rsi, [rsi]
	mov	cl, al
	movsx	edx, cl
	cmp	edx, 0
	lea	rdi, [rdi]
	jge	.label_3101
	mov	eax, 7
	mov	rsp, rsp
	mov	ecx, dword ptr [rbp - 0x348]
	sub	ecx, dword ptr [rbp - 0x50]
	add	ecx, 7
	mov	dword ptr [rbp - 0xc90], eax
	lea	rsi, [rsi]
	mov	eax, ecx
	lea	rsi, [rsi]
	cdq	
	mov	ecx, dword ptr [rbp - 0xc90]
	idiv	ecx
	lea	rdi, [rdi]
	mov	sil, dl
	mov	rbp, rbp
	movsx	edx, sil
	mov	rsp, rsp
	mov	edi, dword ptr [rbp - 0x348]
	sub	edi, dword ptr [rbp - 0x50]
	add	edi, 7
	lea	rdi, [rdi]
	mov	eax, edi
	mov	dword ptr [rbp - 0xc94], edx
	mov	rbp, rbp
	cdq	
	idiv	ecx
	mov	rbp, rbp
	mov	sil, dl
	mov	rsp, rsp
	movsx	edx, sil
	nop	
	mov	r8, qword ptr [rbp - 0x448]
	mov	rbp, rbp
	mov	sil, r8b
	movsx	edi, sil
	add	edx, edi
	lea	rsi, [rsi]
	mov	edi, dword ptr [rbp - 0xc94]
	nop	
	cmp	edi, edx
	jle	.label_2269
	jmp	.label_2834
.label_3101:
	mov	eax, 7
	mov	ecx, dword ptr [rbp - 0x348]
	sub	ecx, dword ptr [rbp - 0x50]
	lea	rdi, [rdi]
	add	ecx, 7
	mov	dword ptr [rbp - 0xc98], eax
	mov	eax, ecx
	cdq	
	mov	ecx, dword ptr [rbp - 0xc98]
	mov	rsp, rsp
	idiv	ecx
	mov	rsp, rsp
	mov	sil, dl
	movsx	edx, sil
	mov	rdi, qword ptr [rbp - 0x448]
	lea	rdi, [rdi]
	mov	sil, dil
	movsx	r8d, sil
	add	edx, r8d
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x448]
	mov	rsp, rsp
	mov	sil, dil
	mov	rsp, rsp
	movsx	r8d, sil
	cmp	edx, r8d
	jl	.label_2269
.label_2834:
	nop	
	mov	eax, 7
	nop	
	mov	ecx, dword ptr [rbp - 0x348]
	lea	rsi, [rsi]
	sub	ecx, dword ptr [rbp - 0x50]
	mov	rsp, rsp
	add	ecx, 7
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0xc9c], eax
	mov	eax, ecx
	lea	rsi, [rsi]
	cdq	
	lea	rdi, [rdi]
	mov	ecx, dword ptr [rbp - 0xc9c]
	idiv	ecx
	lea	rsi, [rsi]
	mov	sil, dl
	movsx	edx, sil
	mov	rdi, qword ptr [rbp - 0x448]
	mov	sil, dil
	mov	rsp, rsp
	movsx	r8d, sil
	nop	
	add	edx, r8d
	lea	rsi, [rsi]
	cmp	edx, -0x80
	jl	.label_2269
	mov	eax, 0x7f
	mov	ecx, 7
	mov	edx, dword ptr [rbp - 0x348]
	mov	rbp, rbp
	sub	edx, dword ptr [rbp - 0x50]
	add	edx, 7
	nop	
	mov	dword ptr [rbp - 0xca0], eax
	mov	eax, edx
	cdq	
	idiv	ecx
	mov	sil, dl
	mov	rbp, rbp
	movsx	ecx, sil
	mov	rdi, qword ptr [rbp - 0x448]
	mov	sil, dil
	movsx	edx, sil
	mov	rsp, rsp
	add	ecx, edx
	lea	rdi, [rdi]
	mov	edx, dword ptr [rbp - 0xca0]
	cmp	edx, ecx
	mov	rsp, rsp
	jge	.label_3168
.label_2269:
	mov	al, 1
	mov	rsp, rsp
	mov	ecx, 7
	mov	edx, dword ptr [rbp - 0x348]
	sub	edx, dword ptr [rbp - 0x50]
	lea	rdi, [rdi]
	add	edx, 7
	mov	byte ptr [rbp - 0xca1], al
	mov	rsp, rsp
	mov	eax, edx
	cdq	
	lea	rdi, [rdi]
	idiv	ecx
	mov	sil, dl
	movsx	ecx, sil
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x448]
	nop	
	mov	sil, dil
	nop	
	movsx	edx, sil
	add	ecx, edx
	nop	
	mov	sil, cl
	movsx	rdi, sil
	mov	qword ptr [rbp - 0x448], rdi
	lea	rsi, [rsi]
	mov	sil, byte ptr [rbp - 0xca1]
	lea	rdi, [rdi]
	test	sil, 1
	nop	
	jne	.label_1909
	jmp	.label_1943
.label_3168:
	xor	eax, eax
	nop	
	mov	cl, al
	mov	eax, 7
	mov	edx, dword ptr [rbp - 0x348]
	mov	rbp, rbp
	sub	edx, dword ptr [rbp - 0x50]
	lea	rdi, [rdi]
	add	edx, 7
	mov	rbp, rbp
	mov	dword ptr [rbp - 0xca8], eax
	mov	rbp, rbp
	mov	eax, edx
	mov	rsp, rsp
	cdq	
	mov	esi, dword ptr [rbp - 0xca8]
	lea	rdi, [rdi]
	idiv	esi
	lea	rsi, [rsi]
	mov	dil, dl
	mov	rsp, rsp
	movsx	edx, dil
	mov	r8, qword ptr [rbp - 0x448]
	nop	
	mov	dil, r8b
	movsx	r9d, dil
	lea	rdi, [rdi]
	add	edx, r9d
	lea	rsi, [rsi]
	mov	dil, dl
	movsx	r8, dil
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x448], r8
	test	cl, 1
	jne	.label_1909
	jmp	.label_1943
.label_3004:
	mov	al, 1
	test	al, 1
	lea	rsi, [rsi]
	jne	.label_3258
	jmp	.label_3782
.label_3258:
	cmp	qword ptr [rbp - 0x448], 0
	lea	rsi, [rsi]
	jge	.label_3262
	movabs	rax, 0x8000000000000000
	mov	ecx, 7
	mov	edx, dword ptr [rbp - 0x348]
	nop	
	sub	edx, dword ptr [rbp - 0x50]
	mov	rsp, rsp
	add	edx, 7
	mov	rsp, rsp
	mov	qword ptr [rbp - 0xcb0], rax
	mov	eax, edx
	cdq	
	mov	rbp, rbp
	idiv	ecx
	mov	rsp, rsp
	movsxd	rsi, edx
	mov	rdi, qword ptr [rbp - 0xcb0]
	sub	rdi, qword ptr [rbp - 0x448]
	cmp	rsi, rdi
	lea	rsi, [rsi]
	jl	.label_3275
	mov	rbp, rbp
	jmp	.label_3274
.label_3262:
	mov	rsp, rsp
	mov	eax, 7
	movabs	rcx, 0x7fffffffffffffff
	nop	
	sub	rcx, qword ptr [rbp - 0x448]
	mov	edx, dword ptr [rbp - 0x348]
	sub	edx, dword ptr [rbp - 0x50]
	nop	
	add	edx, 7
	mov	rsp, rsp
	mov	dword ptr [rbp - 0xcb4], eax
	lea	rsi, [rsi]
	mov	eax, edx
	cdq	
	lea	rsi, [rsi]
	mov	esi, dword ptr [rbp - 0xcb4]
	lea	rsi, [rsi]
	idiv	esi
	movsxd	rdi, edx
	cmp	rcx, rdi
	jl	.label_3275
	jmp	.label_3274
.label_3782:
	lea	rsi, [rsi]
	mov	eax, 7
	mov	ecx, dword ptr [rbp - 0x348]
	sub	ecx, dword ptr [rbp - 0x50]
	add	ecx, 7
	mov	rsp, rsp
	mov	dword ptr [rbp - 0xcb8], eax
	mov	eax, ecx
	lea	rsi, [rsi]
	cdq	
	mov	ecx, dword ptr [rbp - 0xcb8]
	idiv	ecx
	cmp	edx, 0
	mov	rsp, rsp
	jge	.label_3292
	mov	eax, 7
	nop	
	mov	rcx, qword ptr [rbp - 0x448]
	mov	rsp, rsp
	mov	edx, dword ptr [rbp - 0x348]
	sub	edx, dword ptr [rbp - 0x50]
	lea	rsi, [rsi]
	add	edx, 7
	mov	dword ptr [rbp - 0xcbc], eax
	mov	eax, edx
	cdq	
	mov	esi, dword ptr [rbp - 0xcbc]
	mov	rsp, rsp
	idiv	esi
	mov	rbp, rbp
	movsxd	rdi, edx
	mov	rsp, rsp
	add	rdi, qword ptr [rbp - 0x448]
	mov	rbp, rbp
	cmp	rcx, rdi
	jle	.label_3275
	mov	rbp, rbp
	jmp	.label_3274
.label_3292:
	cmp	qword ptr [rbp - 0x448], 0
	mov	rbp, rbp
	jge	.label_3330
	mov	eax, 7
	mov	ecx, dword ptr [rbp - 0x348]
	mov	rsp, rsp
	sub	ecx, dword ptr [rbp - 0x50]
	lea	rsi, [rsi]
	add	ecx, 7
	mov	rsp, rsp
	mov	dword ptr [rbp - 0xcc0], eax
	mov	eax, ecx
	cdq	
	lea	rsi, [rsi]
	mov	ecx, dword ptr [rbp - 0xcc0]
	idiv	ecx
	movsxd	rsi, edx
	mov	edx, dword ptr [rbp - 0x348]
	sub	edx, dword ptr [rbp - 0x50]
	add	edx, 7
	mov	rsp, rsp
	mov	eax, edx
	cdq	
	lea	rsi, [rsi]
	idiv	ecx
	mov	rbp, rbp
	movsxd	rdi, edx
	add	rdi, qword ptr [rbp - 0x448]
	lea	rsi, [rsi]
	cmp	rsi, rdi
	nop	
	jle	.label_3275
	jmp	.label_3274
.label_3330:
	lea	rsi, [rsi]
	mov	eax, 7
	nop	
	mov	ecx, dword ptr [rbp - 0x348]
	lea	rdi, [rdi]
	sub	ecx, dword ptr [rbp - 0x50]
	add	ecx, 7
	mov	dword ptr [rbp - 0xcc4], eax
	lea	rsi, [rsi]
	mov	eax, ecx
	nop	
	cdq	
	mov	ecx, dword ptr [rbp - 0xcc4]
	idiv	ecx
	lea	rdi, [rdi]
	movsxd	rsi, edx
	mov	rsp, rsp
	add	rsi, qword ptr [rbp - 0x448]
	cmp	rsi, qword ptr [rbp - 0x448]
	nop	
	jl	.label_3275
.label_3274:
	nop	
	mov	eax, 7
	mov	ecx, dword ptr [rbp - 0x348]
	mov	rsp, rsp
	sub	ecx, dword ptr [rbp - 0x50]
	mov	rsp, rsp
	add	ecx, 7
	mov	rbp, rbp
	mov	dword ptr [rbp - 0xcc8], eax
	mov	eax, ecx
	nop	
	cdq	
	lea	rdi, [rdi]
	mov	ecx, dword ptr [rbp - 0xcc8]
	lea	rsi, [rsi]
	idiv	ecx
	lea	rdi, [rdi]
	movsxd	rsi, edx
	add	rsi, qword ptr [rbp - 0x448]
	cmp	rsi, -0x80
	mov	rbp, rbp
	jl	.label_3275
	lea	rdi, [rdi]
	mov	eax, 0x7f
	lea	rsi, [rsi]
	mov	ecx, eax
	nop	
	mov	eax, 7
	mov	edx, dword ptr [rbp - 0x348]
	sub	edx, dword ptr [rbp - 0x50]
	add	edx, 7
	mov	dword ptr [rbp - 0xccc], eax
	lea	rdi, [rdi]
	mov	eax, edx
	mov	rsp, rsp
	cdq	
	mov	esi, dword ptr [rbp - 0xccc]
	mov	rbp, rbp
	idiv	esi
	movsxd	rdi, edx
	add	rdi, qword ptr [rbp - 0x448]
	nop	
	cmp	rcx, rdi
	lea	rdi, [rdi]
	jge	.label_3387
.label_3275:
	mov	rsp, rsp
	mov	al, 1
	mov	ecx, 7
	nop	
	mov	edx, dword ptr [rbp - 0x348]
	sub	edx, dword ptr [rbp - 0x50]
	add	edx, 7
	mov	byte ptr [rbp - 0xccd], al
	mov	eax, edx
	mov	rbp, rbp
	cdq	
	idiv	ecx
	mov	rsi, qword ptr [rbp - 0x448]
	lea	rsi, [rsi]
	mov	ecx, esi
	nop	
	add	edx, ecx
	mov	dil, dl
	lea	rsi, [rsi]
	movsx	rsi, dil
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x448], rsi
	mov	dil, byte ptr [rbp - 0xccd]
	test	dil, 1
	mov	rbp, rbp
	jne	.label_1909
	mov	rsp, rsp
	jmp	.label_1943
.label_3387:
	mov	rbp, rbp
	xor	eax, eax
	mov	rbp, rbp
	mov	cl, al
	nop	
	mov	eax, 7
	mov	edx, dword ptr [rbp - 0x348]
	sub	edx, dword ptr [rbp - 0x50]
	add	edx, 7
	mov	dword ptr [rbp - 0xcd4], eax
	mov	rbp, rbp
	mov	eax, edx
	cdq	
	mov	esi, dword ptr [rbp - 0xcd4]
	lea	rdi, [rdi]
	idiv	esi
	mov	rdi, qword ptr [rbp - 0x448]
	mov	r8d, edi
	lea	rsi, [rsi]
	add	edx, r8d
	lea	rsi, [rsi]
	mov	r9b, dl
	lea	rsi, [rsi]
	movsx	rdi, r9b
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x448], rdi
	test	cl, 1
	jne	.label_1909
	jmp	.label_1943
.label_2999:
	nop	
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_3446
	mov	rsp, rsp
	jmp	.label_3163
.label_3446:
	lea	rdi, [rdi]
	xor	eax, eax
	nop	
	mov	cl, al
	lea	rsi, [rsi]
	test	cl, 1
	mov	rsp, rsp
	jne	.label_3169
	lea	rsi, [rsi]
	jmp	.label_3458
.label_3169:
	mov	al, 1
	test	al, 1
	lea	rsi, [rsi]
	jne	.label_3462
	jmp	.label_3467
.label_3462:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x448]
	mov	cx, ax
	movsx	edx, cx
	mov	rsp, rsp
	cmp	edx, 0
	nop	
	jge	.label_3469
	mov	eax, 0x80000000
	lea	rsi, [rsi]
	mov	ecx, 7
	mov	edx, dword ptr [rbp - 0x348]
	lea	rsi, [rsi]
	sub	edx, dword ptr [rbp - 0x50]
	add	edx, 7
	mov	dword ptr [rbp - 0xcd8], eax
	mov	eax, edx
	mov	rbp, rbp
	cdq	
	idiv	ecx
	nop	
	mov	si, dx
	nop	
	movsx	ecx, si
	mov	rdi, qword ptr [rbp - 0x448]
	mov	si, di
	mov	rsp, rsp
	movsx	edx, si
	mov	r8d, dword ptr [rbp - 0xcd8]
	sub	r8d, edx
	lea	rsi, [rsi]
	cmp	ecx, r8d
	jl	.label_3479
	jmp	.label_3497
.label_3469:
	nop	
	mov	eax, 7
	mov	ecx, 0x7fffffff
	nop	
	mov	rdx, qword ptr [rbp - 0x448]
	nop	
	mov	si, dx
	movsx	edi, si
	sub	ecx, edi
	mov	edi, dword ptr [rbp - 0x348]
	sub	edi, dword ptr [rbp - 0x50]
	add	edi, 7
	mov	rbp, rbp
	mov	dword ptr [rbp - 0xcdc], eax
	mov	eax, edi
	cdq	
	mov	edi, dword ptr [rbp - 0xcdc]
	mov	rbp, rbp
	idiv	edi
	mov	si, dx
	movsx	edx, si
	cmp	ecx, edx
	jl	.label_3479
	lea	rsi, [rsi]
	jmp	.label_3497
.label_3467:
	mov	eax, 7
	mov	ecx, dword ptr [rbp - 0x348]
	sub	ecx, dword ptr [rbp - 0x50]
	add	ecx, 7
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0xce0], eax
	mov	eax, ecx
	cdq	
	mov	rbp, rbp
	mov	ecx, dword ptr [rbp - 0xce0]
	idiv	ecx
	mov	si, dx
	nop	
	movsx	edx, si
	lea	rdi, [rdi]
	cmp	edx, 0
	jge	.label_3519
	mov	eax, 7
	mov	rcx, qword ptr [rbp - 0x448]
	mov	dx, cx
	movsx	esi, dx
	mov	edi, dword ptr [rbp - 0x348]
	sub	edi, dword ptr [rbp - 0x50]
	mov	rbp, rbp
	add	edi, 7
	mov	dword ptr [rbp - 0xce4], eax
	mov	eax, edi
	lea	rsi, [rsi]
	cdq	
	mov	edi, dword ptr [rbp - 0xce4]
	mov	rsp, rsp
	idiv	edi
	mov	r8w, dx
	lea	rsi, [rsi]
	movsx	edx, r8w
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x448]
	mov	r8w, cx
	movsx	r9d, r8w
	add	edx, r9d
	cmp	esi, edx
	lea	rdi, [rdi]
	jle	.label_3479
	jmp	.label_3497
.label_3519:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x448]
	mov	cx, ax
	mov	rsp, rsp
	movsx	edx, cx
	cmp	edx, 0
	jge	.label_3559
	lea	rsi, [rsi]
	mov	eax, 7
	mov	ecx, dword ptr [rbp - 0x348]
	sub	ecx, dword ptr [rbp - 0x50]
	add	ecx, 7
	mov	rbp, rbp
	mov	dword ptr [rbp - 0xce8], eax
	mov	eax, ecx
	cdq	
	mov	rsp, rsp
	mov	ecx, dword ptr [rbp - 0xce8]
	idiv	ecx
	mov	rsp, rsp
	mov	si, dx
	movsx	edx, si
	lea	rsi, [rsi]
	mov	edi, dword ptr [rbp - 0x348]
	sub	edi, dword ptr [rbp - 0x50]
	add	edi, 7
	mov	eax, edi
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0xcec], edx
	nop	
	cdq	
	nop	
	idiv	ecx
	nop	
	mov	si, dx
	movsx	edx, si
	mov	r8, qword ptr [rbp - 0x448]
	mov	rbp, rbp
	mov	si, r8w
	mov	rsp, rsp
	movsx	edi, si
	add	edx, edi
	mov	edi, dword ptr [rbp - 0xcec]
	cmp	edi, edx
	mov	rbp, rbp
	jle	.label_3479
	nop	
	jmp	.label_3497
.label_3559:
	nop	
	mov	eax, 7
	lea	rsi, [rsi]
	mov	ecx, dword ptr [rbp - 0x348]
	sub	ecx, dword ptr [rbp - 0x50]
	nop	
	add	ecx, 7
	nop	
	mov	dword ptr [rbp - 0xcf0], eax
	mov	rsp, rsp
	mov	eax, ecx
	cdq	
	mov	ecx, dword ptr [rbp - 0xcf0]
	idiv	ecx
	lea	rdi, [rdi]
	mov	si, dx
	movsx	edx, si
	mov	rdi, qword ptr [rbp - 0x448]
	mov	rsp, rsp
	mov	si, di
	nop	
	movsx	r8d, si
	lea	rsi, [rsi]
	add	edx, r8d
	mov	rdi, qword ptr [rbp - 0x448]
	mov	rbp, rbp
	mov	si, di
	movsx	r8d, si
	cmp	edx, r8d
	jl	.label_3479
.label_3497:
	mov	eax, 7
	nop	
	mov	ecx, dword ptr [rbp - 0x348]
	sub	ecx, dword ptr [rbp - 0x50]
	nop	
	add	ecx, 7
	mov	dword ptr [rbp - 0xcf4], eax
	mov	rbp, rbp
	mov	eax, ecx
	cdq	
	mov	ecx, dword ptr [rbp - 0xcf4]
	mov	rbp, rbp
	idiv	ecx
	lea	rdi, [rdi]
	mov	si, dx
	movsx	edx, si
	mov	rdi, qword ptr [rbp - 0x448]
	lea	rdi, [rdi]
	mov	si, di
	movsx	r8d, si
	add	edx, r8d
	mov	rsp, rsp
	cmp	edx, 0xffff8000
	jl	.label_3479
	mov	eax, 0x7fff
	mov	rsp, rsp
	mov	ecx, 7
	lea	rsi, [rsi]
	mov	edx, dword ptr [rbp - 0x348]
	sub	edx, dword ptr [rbp - 0x50]
	lea	rdi, [rdi]
	add	edx, 7
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0xcf8], eax
	lea	rsi, [rsi]
	mov	eax, edx
	nop	
	cdq	
	idiv	ecx
	mov	si, dx
	movsx	ecx, si
	nop	
	mov	rdi, qword ptr [rbp - 0x448]
	lea	rsi, [rsi]
	mov	si, di
	mov	rsp, rsp
	movsx	edx, si
	mov	rbp, rbp
	add	ecx, edx
	mov	edx, dword ptr [rbp - 0xcf8]
	nop	
	cmp	edx, ecx
	jge	.label_3632
.label_3479:
	mov	al, 1
	mov	ecx, 7
	lea	rdi, [rdi]
	mov	edx, dword ptr [rbp - 0x348]
	sub	edx, dword ptr [rbp - 0x50]
	add	edx, 7
	mov	rbp, rbp
	mov	byte ptr [rbp - 0xcf9], al
	mov	rsp, rsp
	mov	eax, edx
	cdq	
	idiv	ecx
	mov	si, dx
	lea	rsi, [rsi]
	movsx	ecx, si
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x448]
	lea	rdi, [rdi]
	mov	si, di
	movsx	edx, si
	mov	rbp, rbp
	add	ecx, edx
	mov	rbp, rbp
	mov	si, cx
	movsx	rdi, si
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x448], rdi
	mov	rsp, rsp
	mov	r8b, byte ptr [rbp - 0xcf9]
	lea	rdi, [rdi]
	test	r8b, 1
	lea	rsi, [rsi]
	jne	.label_1909
	lea	rsi, [rsi]
	jmp	.label_1943
.label_3632:
	xor	eax, eax
	mov	cl, al
	mov	eax, 7
	nop	
	mov	edx, dword ptr [rbp - 0x348]
	mov	rbp, rbp
	sub	edx, dword ptr [rbp - 0x50]
	nop	
	add	edx, 7
	nop	
	mov	dword ptr [rbp - 0xd00], eax
	nop	
	mov	eax, edx
	cdq	
	lea	rdi, [rdi]
	mov	esi, dword ptr [rbp - 0xd00]
	mov	rbp, rbp
	idiv	esi
	mov	di, dx
	lea	rsi, [rsi]
	movsx	edx, di
	mov	rbp, rbp
	mov	r8, qword ptr [rbp - 0x448]
	mov	di, r8w
	mov	rbp, rbp
	movsx	r9d, di
	add	edx, r9d
	mov	rsp, rsp
	mov	di, dx
	nop	
	movsx	r8, di
	nop	
	mov	qword ptr [rbp - 0x448], r8
	nop	
	test	cl, 1
	lea	rsi, [rsi]
	jne	.label_1909
	lea	rdi, [rdi]
	jmp	.label_1943
.label_3458:
	lea	rdi, [rdi]
	mov	al, 1
	test	al, 1
	jne	.label_3711
	lea	rsi, [rsi]
	jmp	.label_3714
.label_3711:
	cmp	qword ptr [rbp - 0x448], 0
	lea	rdi, [rdi]
	jge	.label_3716
	movabs	rax, 0x8000000000000000
	mov	ecx, 7
	mov	edx, dword ptr [rbp - 0x348]
	mov	rbp, rbp
	sub	edx, dword ptr [rbp - 0x50]
	add	edx, 7
	mov	qword ptr [rbp - 0xd08], rax
	mov	eax, edx
	cdq	
	mov	rbp, rbp
	idiv	ecx
	movsxd	rsi, edx
	mov	rdi, qword ptr [rbp - 0xd08]
	lea	rdi, [rdi]
	sub	rdi, qword ptr [rbp - 0x448]
	lea	rsi, [rsi]
	cmp	rsi, rdi
	jl	.label_3719
	nop	
	jmp	.label_3732
.label_3716:
	nop	
	mov	eax, 7
	movabs	rcx, 0x7fffffffffffffff
	sub	rcx, qword ptr [rbp - 0x448]
	mov	rbp, rbp
	mov	edx, dword ptr [rbp - 0x348]
	lea	rdi, [rdi]
	sub	edx, dword ptr [rbp - 0x50]
	mov	rbp, rbp
	add	edx, 7
	mov	dword ptr [rbp - 0xd0c], eax
	mov	eax, edx
	nop	
	cdq	
	mov	esi, dword ptr [rbp - 0xd0c]
	lea	rsi, [rsi]
	idiv	esi
	nop	
	movsxd	rdi, edx
	cmp	rcx, rdi
	jl	.label_3719
	lea	rsi, [rsi]
	jmp	.label_3732
.label_3714:
	mov	rbp, rbp
	mov	eax, 7
	mov	ecx, dword ptr [rbp - 0x348]
	sub	ecx, dword ptr [rbp - 0x50]
	lea	rdi, [rdi]
	add	ecx, 7
	nop	
	mov	dword ptr [rbp - 0xd10], eax
	mov	eax, ecx
	mov	rsp, rsp
	cdq	
	mov	rbp, rbp
	mov	ecx, dword ptr [rbp - 0xd10]
	lea	rdi, [rdi]
	idiv	ecx
	lea	rdi, [rdi]
	cmp	edx, 0
	jge	.label_3752
	mov	rsp, rsp
	mov	eax, 7
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x448]
	mov	edx, dword ptr [rbp - 0x348]
	mov	rbp, rbp
	sub	edx, dword ptr [rbp - 0x50]
	mov	rsp, rsp
	add	edx, 7
	mov	dword ptr [rbp - 0xd14], eax
	mov	eax, edx
	lea	rsi, [rsi]
	cdq	
	mov	rbp, rbp
	mov	esi, dword ptr [rbp - 0xd14]
	idiv	esi
	movsxd	rdi, edx
	lea	rsi, [rsi]
	add	rdi, qword ptr [rbp - 0x448]
	cmp	rcx, rdi
	jle	.label_3719
	jmp	.label_3732
.label_3752:
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0x448], 0
	jge	.label_3788
	mov	eax, 7
	lea	rsi, [rsi]
	mov	ecx, dword ptr [rbp - 0x348]
	sub	ecx, dword ptr [rbp - 0x50]
	add	ecx, 7
	mov	dword ptr [rbp - 0xd18], eax
	lea	rsi, [rsi]
	mov	eax, ecx
	cdq	
	mov	rsp, rsp
	mov	ecx, dword ptr [rbp - 0xd18]
	idiv	ecx
	movsxd	rsi, edx
	lea	rsi, [rsi]
	mov	edx, dword ptr [rbp - 0x348]
	sub	edx, dword ptr [rbp - 0x50]
	add	edx, 7
	mov	eax, edx
	nop	
	cdq	
	nop	
	idiv	ecx
	mov	rsp, rsp
	movsxd	rdi, edx
	add	rdi, qword ptr [rbp - 0x448]
	cmp	rsi, rdi
	jle	.label_3719
	mov	rbp, rbp
	jmp	.label_3732
.label_3788:
	mov	eax, 7
	mov	ecx, dword ptr [rbp - 0x348]
	mov	rbp, rbp
	sub	ecx, dword ptr [rbp - 0x50]
	lea	rsi, [rsi]
	add	ecx, 7
	mov	rbp, rbp
	mov	dword ptr [rbp - 0xd1c], eax
	mov	eax, ecx
	cdq	
	nop	
	mov	ecx, dword ptr [rbp - 0xd1c]
	mov	rbp, rbp
	idiv	ecx
	lea	rsi, [rsi]
	movsxd	rsi, edx
	add	rsi, qword ptr [rbp - 0x448]
	cmp	rsi, qword ptr [rbp - 0x448]
	lea	rsi, [rsi]
	jl	.label_3719
.label_3732:
	nop	
	mov	eax, 7
	mov	ecx, dword ptr [rbp - 0x348]
	sub	ecx, dword ptr [rbp - 0x50]
	lea	rsi, [rsi]
	add	ecx, 7
	mov	dword ptr [rbp - 0xd20], eax
	mov	eax, ecx
	cdq	
	mov	ecx, dword ptr [rbp - 0xd20]
	nop	
	idiv	ecx
	movsxd	rsi, edx
	nop	
	add	rsi, qword ptr [rbp - 0x448]
	cmp	rsi, -0x8000
	jl	.label_3719
	mov	rsp, rsp
	mov	eax, 0x7fff
	mov	ecx, eax
	mov	rbp, rbp
	mov	eax, 7
	nop	
	mov	edx, dword ptr [rbp - 0x348]
	nop	
	sub	edx, dword ptr [rbp - 0x50]
	nop	
	add	edx, 7
	mov	dword ptr [rbp - 0xd24], eax
	mov	rbp, rbp
	mov	eax, edx
	mov	rbp, rbp
	cdq	
	mov	esi, dword ptr [rbp - 0xd24]
	idiv	esi
	mov	rsp, rsp
	movsxd	rdi, edx
	nop	
	add	rdi, qword ptr [rbp - 0x448]
	lea	rsi, [rsi]
	cmp	rcx, rdi
	mov	rsp, rsp
	jge	.label_3835
.label_3719:
	mov	rbp, rbp
	mov	al, 1
	mov	ecx, 7
	mov	edx, dword ptr [rbp - 0x348]
	sub	edx, dword ptr [rbp - 0x50]
	lea	rsi, [rsi]
	add	edx, 7
	mov	rsp, rsp
	mov	byte ptr [rbp - 0xd25], al
	mov	eax, edx
	mov	rbp, rbp
	cdq	
	idiv	ecx
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x448]
	lea	rdi, [rdi]
	mov	ecx, esi
	lea	rdi, [rdi]
	add	edx, ecx
	mov	rsp, rsp
	mov	di, dx
	movsx	rsi, di
	mov	qword ptr [rbp - 0x448], rsi
	mov	r8b, byte ptr [rbp - 0xd25]
	test	r8b, 1
	jne	.label_1909
	mov	rbp, rbp
	jmp	.label_1943
.label_3835:
	xor	eax, eax
	lea	rsi, [rsi]
	mov	cl, al
	nop	
	mov	eax, 7
	lea	rsi, [rsi]
	mov	edx, dword ptr [rbp - 0x348]
	sub	edx, dword ptr [rbp - 0x50]
	add	edx, 7
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0xd2c], eax
	mov	rbp, rbp
	mov	eax, edx
	lea	rsi, [rsi]
	cdq	
	mov	esi, dword ptr [rbp - 0xd2c]
	idiv	esi
	mov	rdi, qword ptr [rbp - 0x448]
	mov	r8d, edi
	lea	rsi, [rsi]
	add	edx, r8d
	mov	r9w, dx
	movsx	rdi, r9w
	nop	
	mov	qword ptr [rbp - 0x448], rdi
	lea	rdi, [rdi]
	test	cl, 1
	jne	.label_1909
	jmp	.label_1943
.label_3163:
	xor	eax, eax
	nop	
	mov	cl, al
	mov	rbp, rbp
	test	cl, 1
	jne	.label_1952
	jmp	.label_1956
.label_1952:
	mov	rbp, rbp
	xor	eax, eax
	mov	rsp, rsp
	mov	cl, al
	test	cl, 1
	jne	.label_1958
	mov	rsp, rsp
	jmp	.label_1967
.label_1958:
	mov	al, 1
	test	al, 1
	mov	rbp, rbp
	jne	.label_1969
	lea	rsi, [rsi]
	jmp	.label_1976
.label_1969:
	mov	rax, qword ptr [rbp - 0x448]
	mov	ecx, eax
	mov	rsp, rsp
	cmp	ecx, 0
	mov	rbp, rbp
	jge	.label_2630
	mov	eax, 0x80000000
	mov	ecx, 7
	lea	rdi, [rdi]
	mov	edx, dword ptr [rbp - 0x348]
	sub	edx, dword ptr [rbp - 0x50]
	add	edx, 7
	mov	dword ptr [rbp - 0xd30], eax
	nop	
	mov	eax, edx
	lea	rsi, [rsi]
	cdq	
	lea	rsi, [rsi]
	idiv	ecx
	mov	rsi, qword ptr [rbp - 0x448]
	mov	ecx, esi
	mov	edi, dword ptr [rbp - 0xd30]
	sub	edi, ecx
	mov	rbp, rbp
	cmp	edx, edi
	lea	rsi, [rsi]
	jl	.label_2021
	mov	rsp, rsp
	jmp	.label_2018
.label_2630:
	mov	eax, 7
	mov	ecx, 0x7fffffff
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x448]
	mov	rsp, rsp
	mov	esi, edx
	sub	ecx, esi
	mov	esi, dword ptr [rbp - 0x348]
	lea	rdi, [rdi]
	sub	esi, dword ptr [rbp - 0x50]
	add	esi, 7
	mov	dword ptr [rbp - 0xd34], eax
	mov	eax, esi
	cdq	
	mov	esi, dword ptr [rbp - 0xd34]
	idiv	esi
	mov	rbp, rbp
	cmp	ecx, edx
	nop	
	jl	.label_2021
	jmp	.label_2018
.label_1976:
	mov	rbp, rbp
	mov	eax, 7
	mov	rsp, rsp
	mov	ecx, dword ptr [rbp - 0x348]
	lea	rdi, [rdi]
	sub	ecx, dword ptr [rbp - 0x50]
	add	ecx, 7
	mov	dword ptr [rbp - 0xd38], eax
	mov	eax, ecx
	nop	
	cdq	
	mov	ecx, dword ptr [rbp - 0xd38]
	idiv	ecx
	cmp	edx, 0
	jge	.label_3841
	nop	
	mov	eax, 7
	mov	rcx, qword ptr [rbp - 0x448]
	mov	rsp, rsp
	mov	edx, ecx
	mov	rsp, rsp
	mov	esi, dword ptr [rbp - 0x348]
	mov	rsp, rsp
	sub	esi, dword ptr [rbp - 0x50]
	add	esi, 7
	mov	dword ptr [rbp - 0xd3c], eax
	nop	
	mov	eax, esi
	nop	
	mov	dword ptr [rbp - 0xd40], edx
	mov	rsp, rsp
	cdq	
	mov	esi, dword ptr [rbp - 0xd3c]
	lea	rsi, [rsi]
	idiv	esi
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x448]
	lea	rsi, [rsi]
	mov	edi, ecx
	add	edx, edi
	mov	edi, dword ptr [rbp - 0xd40]
	nop	
	cmp	edi, edx
	lea	rsi, [rsi]
	jle	.label_2021
	mov	rbp, rbp
	jmp	.label_2018
.label_3841:
	mov	rax, qword ptr [rbp - 0x448]
	lea	rsi, [rsi]
	mov	ecx, eax
	cmp	ecx, 0
	jge	.label_2080
	lea	rdi, [rdi]
	mov	eax, 7
	mov	ecx, dword ptr [rbp - 0x348]
	sub	ecx, dword ptr [rbp - 0x50]
	nop	
	add	ecx, 7
	mov	rsp, rsp
	mov	dword ptr [rbp - 0xd44], eax
	lea	rdi, [rdi]
	mov	eax, ecx
	nop	
	cdq	
	mov	ecx, dword ptr [rbp - 0xd44]
	lea	rsi, [rsi]
	idiv	ecx
	mov	esi, dword ptr [rbp - 0x348]
	lea	rdi, [rdi]
	sub	esi, dword ptr [rbp - 0x50]
	mov	rsp, rsp
	add	esi, 7
	mov	eax, esi
	mov	dword ptr [rbp - 0xd48], edx
	cdq	
	idiv	ecx
	mov	rdi, qword ptr [rbp - 0x448]
	nop	
	mov	esi, edi
	add	edx, esi
	mov	esi, dword ptr [rbp - 0xd48]
	mov	rsp, rsp
	cmp	esi, edx
	mov	rbp, rbp
	jle	.label_2021
	jmp	.label_2018
.label_2080:
	nop	
	mov	eax, 7
	mov	ecx, dword ptr [rbp - 0x348]
	sub	ecx, dword ptr [rbp - 0x50]
	lea	rsi, [rsi]
	add	ecx, 7
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0xd4c], eax
	mov	eax, ecx
	lea	rsi, [rsi]
	cdq	
	mov	ecx, dword ptr [rbp - 0xd4c]
	idiv	ecx
	mov	rsi, qword ptr [rbp - 0x448]
	mov	edi, esi
	mov	rbp, rbp
	add	edx, edi
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x448]
	lea	rsi, [rsi]
	mov	edi, esi
	cmp	edx, edi
	lea	rdi, [rdi]
	jl	.label_2021
.label_2018:
	mov	rsp, rsp
	mov	eax, 7
	mov	ecx, dword ptr [rbp - 0x348]
	sub	ecx, dword ptr [rbp - 0x50]
	lea	rdi, [rdi]
	add	ecx, 7
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0xd50], eax
	lea	rdi, [rdi]
	mov	eax, ecx
	nop	
	cdq	
	mov	ecx, dword ptr [rbp - 0xd50]
	idiv	ecx
	nop	
	mov	rsi, qword ptr [rbp - 0x448]
	mov	rsp, rsp
	mov	edi, esi
	lea	rdi, [rdi]
	add	edx, edi
	mov	rsp, rsp
	cmp	edx, 0x80000000
	lea	rdi, [rdi]
	jl	.label_2021
	lea	rsi, [rsi]
	mov	eax, 0x7fffffff
	mov	rsp, rsp
	mov	ecx, 7
	nop	
	mov	edx, dword ptr [rbp - 0x348]
	lea	rsi, [rsi]
	sub	edx, dword ptr [rbp - 0x50]
	nop	
	add	edx, 7
	mov	dword ptr [rbp - 0xd54], eax
	lea	rsi, [rsi]
	mov	eax, edx
	cdq	
	lea	rdi, [rdi]
	idiv	ecx
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x448]
	lea	rdi, [rdi]
	mov	ecx, esi
	add	edx, ecx
	mov	rsp, rsp
	mov	ecx, dword ptr [rbp - 0xd54]
	cmp	ecx, edx
	mov	rsp, rsp
	jge	.label_2172
.label_2021:
	mov	al, 1
	mov	ecx, 7
	mov	rsp, rsp
	mov	edx, dword ptr [rbp - 0x348]
	mov	rsp, rsp
	sub	edx, dword ptr [rbp - 0x50]
	add	edx, 7
	mov	byte ptr [rbp - 0xd55], al
	mov	eax, edx
	cdq	
	idiv	ecx
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x448]
	mov	ecx, esi
	add	edx, ecx
	mov	rbp, rbp
	movsxd	rsi, edx
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x448], rsi
	nop	
	mov	dil, byte ptr [rbp - 0xd55]
	lea	rdi, [rdi]
	test	dil, 1
	mov	rsp, rsp
	jne	.label_1909
	jmp	.label_1943
.label_2172:
	xor	eax, eax
	lea	rsi, [rsi]
	mov	cl, al
	mov	eax, 7
	mov	edx, dword ptr [rbp - 0x348]
	mov	rbp, rbp
	sub	edx, dword ptr [rbp - 0x50]
	lea	rdi, [rdi]
	add	edx, 7
	nop	
	mov	dword ptr [rbp - 0xd5c], eax
	mov	eax, edx
	cdq	
	mov	esi, dword ptr [rbp - 0xd5c]
	idiv	esi
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x448]
	lea	rsi, [rsi]
	mov	r8d, edi
	add	edx, r8d
	movsxd	rdi, edx
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x448], rdi
	test	cl, 1
	mov	rsp, rsp
	jne	.label_1909
	lea	rdi, [rdi]
	jmp	.label_1943
.label_1967:
	mov	al, 1
	test	al, 1
	mov	rsp, rsp
	jne	.label_2248
	jmp	.label_3588
.label_2248:
	cmp	qword ptr [rbp - 0x448], 0
	lea	rsi, [rsi]
	jge	.label_2255
	mov	rbp, rbp
	movabs	rax, 0x8000000000000000
	nop	
	mov	ecx, 7
	mov	edx, dword ptr [rbp - 0x348]
	lea	rdi, [rdi]
	sub	edx, dword ptr [rbp - 0x50]
	add	edx, 7
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0xd68], rax
	lea	rsi, [rsi]
	mov	eax, edx
	lea	rdi, [rdi]
	cdq	
	lea	rdi, [rdi]
	idiv	ecx
	movsxd	rsi, edx
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0xd68]
	lea	rdi, [rdi]
	sub	rdi, qword ptr [rbp - 0x448]
	lea	rsi, [rsi]
	cmp	rsi, rdi
	jl	.label_2261
	mov	rbp, rbp
	jmp	.label_2342
.label_2255:
	mov	eax, 7
	lea	rdi, [rdi]
	movabs	rcx, 0x7fffffffffffffff
	sub	rcx, qword ptr [rbp - 0x448]
	mov	edx, dword ptr [rbp - 0x348]
	sub	edx, dword ptr [rbp - 0x50]
	nop	
	add	edx, 7
	mov	dword ptr [rbp - 0xd6c], eax
	mov	eax, edx
	cdq	
	mov	esi, dword ptr [rbp - 0xd6c]
	lea	rdi, [rdi]
	idiv	esi
	mov	rbp, rbp
	movsxd	rdi, edx
	lea	rdi, [rdi]
	cmp	rcx, rdi
	jl	.label_2261
	nop	
	jmp	.label_2342
.label_3588:
	mov	eax, 7
	nop	
	mov	ecx, dword ptr [rbp - 0x348]
	sub	ecx, dword ptr [rbp - 0x50]
	mov	rsp, rsp
	add	ecx, 7
	mov	dword ptr [rbp - 0xd70], eax
	lea	rdi, [rdi]
	mov	eax, ecx
	lea	rdi, [rdi]
	cdq	
	mov	ecx, dword ptr [rbp - 0xd70]
	idiv	ecx
	lea	rsi, [rsi]
	cmp	edx, 0
	mov	rsp, rsp
	jge	.label_2311
	nop	
	mov	eax, 7
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x448]
	mov	rsp, rsp
	mov	edx, dword ptr [rbp - 0x348]
	lea	rsi, [rsi]
	sub	edx, dword ptr [rbp - 0x50]
	add	edx, 7
	mov	dword ptr [rbp - 0xd74], eax
	nop	
	mov	eax, edx
	cdq	
	mov	rsp, rsp
	mov	esi, dword ptr [rbp - 0xd74]
	idiv	esi
	lea	rsi, [rsi]
	movsxd	rdi, edx
	mov	rbp, rbp
	add	rdi, qword ptr [rbp - 0x448]
	nop	
	cmp	rcx, rdi
	mov	rsp, rsp
	jle	.label_2261
	lea	rsi, [rsi]
	jmp	.label_2342
.label_2311:
	nop	
	cmp	qword ptr [rbp - 0x448], 0
	jge	.label_2346
	mov	rsp, rsp
	mov	eax, 7
	nop	
	mov	ecx, dword ptr [rbp - 0x348]
	lea	rdi, [rdi]
	sub	ecx, dword ptr [rbp - 0x50]
	add	ecx, 7
	mov	dword ptr [rbp - 0xd78], eax
	mov	eax, ecx
	nop	
	cdq	
	mov	rsp, rsp
	mov	ecx, dword ptr [rbp - 0xd78]
	lea	rdi, [rdi]
	idiv	ecx
	mov	rsp, rsp
	movsxd	rsi, edx
	mov	rbp, rbp
	mov	edx, dword ptr [rbp - 0x348]
	nop	
	sub	edx, dword ptr [rbp - 0x50]
	mov	rsp, rsp
	add	edx, 7
	lea	rsi, [rsi]
	mov	eax, edx
	cdq	
	idiv	ecx
	movsxd	rdi, edx
	mov	rbp, rbp
	add	rdi, qword ptr [rbp - 0x448]
	lea	rsi, [rsi]
	cmp	rsi, rdi
	jle	.label_2261
	jmp	.label_2342
.label_2346:
	mov	rsp, rsp
	mov	eax, 7
	mov	rsp, rsp
	mov	ecx, dword ptr [rbp - 0x348]
	sub	ecx, dword ptr [rbp - 0x50]
	nop	
	add	ecx, 7
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0xd7c], eax
	lea	rdi, [rdi]
	mov	eax, ecx
	mov	rsp, rsp
	cdq	
	mov	ecx, dword ptr [rbp - 0xd7c]
	idiv	ecx
	movsxd	rsi, edx
	lea	rdi, [rdi]
	add	rsi, qword ptr [rbp - 0x448]
	mov	rbp, rbp
	cmp	rsi, qword ptr [rbp - 0x448]
	lea	rsi, [rsi]
	jl	.label_2261
.label_2342:
	mov	eax, 7
	mov	rbp, rbp
	mov	ecx, dword ptr [rbp - 0x348]
	mov	rbp, rbp
	sub	ecx, dword ptr [rbp - 0x50]
	add	ecx, 7
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0xd80], eax
	mov	eax, ecx
	nop	
	cdq	
	mov	ecx, dword ptr [rbp - 0xd80]
	idiv	ecx
	movsxd	rsi, edx
	mov	rsp, rsp
	add	rsi, qword ptr [rbp - 0x448]
	lea	rdi, [rdi]
	cmp	rsi, -0x80000000
	jl	.label_2261
	mov	eax, 0x7fffffff
	nop	
	mov	ecx, eax
	mov	eax, 7
	lea	rdi, [rdi]
	mov	edx, dword ptr [rbp - 0x348]
	sub	edx, dword ptr [rbp - 0x50]
	mov	rbp, rbp
	add	edx, 7
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0xd84], eax
	mov	eax, edx
	mov	rbp, rbp
	cdq	
	lea	rdi, [rdi]
	mov	esi, dword ptr [rbp - 0xd84]
	mov	rsp, rsp
	idiv	esi
	movsxd	rdi, edx
	add	rdi, qword ptr [rbp - 0x448]
	cmp	rcx, rdi
	jge	.label_2403
.label_2261:
	mov	al, 1
	mov	rsp, rsp
	mov	ecx, 7
	mov	rsp, rsp
	mov	edx, dword ptr [rbp - 0x348]
	sub	edx, dword ptr [rbp - 0x50]
	mov	rsp, rsp
	add	edx, 7
	mov	byte ptr [rbp - 0xd85], al
	mov	eax, edx
	cdq	
	idiv	ecx
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x448]
	mov	ecx, esi
	add	edx, ecx
	lea	rdi, [rdi]
	movsxd	rsi, edx
	mov	qword ptr [rbp - 0x448], rsi
	mov	dil, byte ptr [rbp - 0xd85]
	lea	rdi, [rdi]
	test	dil, 1
	lea	rdi, [rdi]
	jne	.label_1909
	jmp	.label_1943
.label_2403:
	xor	eax, eax
	mov	rbp, rbp
	mov	cl, al
	mov	eax, 7
	lea	rdi, [rdi]
	mov	edx, dword ptr [rbp - 0x348]
	nop	
	sub	edx, dword ptr [rbp - 0x50]
	add	edx, 7
	mov	dword ptr [rbp - 0xd8c], eax
	mov	eax, edx
	mov	rbp, rbp
	cdq	
	mov	esi, dword ptr [rbp - 0xd8c]
	idiv	esi
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x448]
	mov	r8d, edi
	nop	
	add	edx, r8d
	movsxd	rdi, edx
	mov	qword ptr [rbp - 0x448], rdi
	test	cl, 1
	mov	rbp, rbp
	jne	.label_1909
	lea	rdi, [rdi]
	jmp	.label_1943
.label_1956:
	mov	rbp, rbp
	mov	al, 1
	mov	rbp, rbp
	test	al, 1
	lea	rsi, [rsi]
	jne	.label_2472
	jmp	.label_2480
.label_2472:
	lea	rsi, [rsi]
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_3867
	nop	
	jmp	.label_2487
.label_3867:
	mov	rbp, rbp
	mov	al, 1
	test	al, 1
	mov	rbp, rbp
	jne	.label_2491
	lea	rsi, [rsi]
	jmp	.label_2497
.label_2491:
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x448], 0
	mov	rsp, rsp
	jge	.label_2499
	movabs	rax, 0x8000000000000000
	mov	ecx, 7
	nop	
	mov	edx, dword ptr [rbp - 0x348]
	sub	edx, dword ptr [rbp - 0x50]
	add	edx, 7
	mov	qword ptr [rbp - 0xd98], rax
	mov	eax, edx
	cdq	
	idiv	ecx
	mov	rsp, rsp
	movsxd	rsi, edx
	mov	rdi, qword ptr [rbp - 0xd98]
	sub	rdi, qword ptr [rbp - 0x448]
	cmp	rsi, rdi
	mov	rsp, rsp
	jl	.label_2503
	jmp	.label_2527
.label_2499:
	mov	eax, 7
	mov	rbp, rbp
	movabs	rcx, 0x7fffffffffffffff
	sub	rcx, qword ptr [rbp - 0x448]
	mov	edx, dword ptr [rbp - 0x348]
	lea	rdi, [rdi]
	sub	edx, dword ptr [rbp - 0x50]
	mov	rbp, rbp
	add	edx, 7
	mov	dword ptr [rbp - 0xd9c], eax
	mov	eax, edx
	cdq	
	mov	esi, dword ptr [rbp - 0xd9c]
	idiv	esi
	movsxd	rdi, edx
	mov	rsp, rsp
	cmp	rcx, rdi
	jl	.label_2503
	mov	rbp, rbp
	jmp	.label_2527
.label_2497:
	mov	rbp, rbp
	mov	eax, 7
	lea	rdi, [rdi]
	mov	ecx, dword ptr [rbp - 0x348]
	sub	ecx, dword ptr [rbp - 0x50]
	add	ecx, 7
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0xda0], eax
	mov	eax, ecx
	cdq	
	mov	ecx, dword ptr [rbp - 0xda0]
	lea	rsi, [rsi]
	idiv	ecx
	nop	
	movsxd	rsi, edx
	cmp	rsi, 0
	lea	rdi, [rdi]
	jge	.label_2545
	mov	eax, 7
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x448]
	nop	
	mov	edx, dword ptr [rbp - 0x348]
	sub	edx, dword ptr [rbp - 0x50]
	mov	rsp, rsp
	add	edx, 7
	mov	dword ptr [rbp - 0xda4], eax
	lea	rsi, [rsi]
	mov	eax, edx
	cdq	
	lea	rsi, [rsi]
	mov	esi, dword ptr [rbp - 0xda4]
	idiv	esi
	movsxd	rdi, edx
	add	rdi, qword ptr [rbp - 0x448]
	cmp	rcx, rdi
	jle	.label_2503
	jmp	.label_2527
.label_2545:
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x448], 0
	mov	rsp, rsp
	jge	.label_3486
	mov	eax, 7
	mov	rsp, rsp
	mov	ecx, dword ptr [rbp - 0x348]
	sub	ecx, dword ptr [rbp - 0x50]
	lea	rsi, [rsi]
	add	ecx, 7
	nop	
	mov	dword ptr [rbp - 0xda8], eax
	mov	eax, ecx
	cdq	
	lea	rsi, [rsi]
	mov	ecx, dword ptr [rbp - 0xda8]
	lea	rsi, [rsi]
	idiv	ecx
	lea	rsi, [rsi]
	movsxd	rsi, edx
	lea	rdi, [rdi]
	mov	edx, dword ptr [rbp - 0x348]
	sub	edx, dword ptr [rbp - 0x50]
	add	edx, 7
	mov	rsp, rsp
	mov	eax, edx
	nop	
	cdq	
	idiv	ecx
	movsxd	rdi, edx
	mov	rsp, rsp
	add	rdi, qword ptr [rbp - 0x448]
	mov	rbp, rbp
	cmp	rsi, rdi
	lea	rsi, [rsi]
	jle	.label_2503
	jmp	.label_2527
.label_3486:
	nop	
	mov	eax, 7
	mov	rbp, rbp
	mov	ecx, dword ptr [rbp - 0x348]
	mov	rsp, rsp
	sub	ecx, dword ptr [rbp - 0x50]
	add	ecx, 7
	mov	dword ptr [rbp - 0xdac], eax
	mov	eax, ecx
	lea	rdi, [rdi]
	cdq	
	nop	
	mov	ecx, dword ptr [rbp - 0xdac]
	idiv	ecx
	mov	rbp, rbp
	movsxd	rsi, edx
	lea	rdi, [rdi]
	add	rsi, qword ptr [rbp - 0x448]
	cmp	rsi, qword ptr [rbp - 0x448]
	lea	rsi, [rsi]
	jl	.label_2503
.label_2527:
	movabs	rax, 0x8000000000000000
	mov	ecx, 7
	mov	rsp, rsp
	mov	edx, dword ptr [rbp - 0x348]
	mov	rsp, rsp
	sub	edx, dword ptr [rbp - 0x50]
	mov	rbp, rbp
	add	edx, 7
	mov	qword ptr [rbp - 0xdb8], rax
	mov	rbp, rbp
	mov	eax, edx
	mov	rbp, rbp
	cdq	
	lea	rsi, [rsi]
	idiv	ecx
	movsxd	rsi, edx
	add	rsi, qword ptr [rbp - 0x448]
	nop	
	mov	rdi, qword ptr [rbp - 0xdb8]
	mov	rsp, rsp
	cmp	rsi, rdi
	lea	rdi, [rdi]
	jl	.label_2503
	mov	rsp, rsp
	movabs	rax, 0x7fffffffffffffff
	mov	ecx, 7
	mov	edx, dword ptr [rbp - 0x348]
	lea	rsi, [rsi]
	sub	edx, dword ptr [rbp - 0x50]
	add	edx, 7
	mov	rsp, rsp
	mov	qword ptr [rbp - 0xdc0], rax
	mov	eax, edx
	cdq	
	idiv	ecx
	movsxd	rsi, edx
	add	rsi, qword ptr [rbp - 0x448]
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0xdc0]
	lea	rdi, [rdi]
	cmp	rdi, rsi
	jge	.label_2660
.label_2503:
	mov	al, 1
	mov	ecx, 7
	mov	edx, dword ptr [rbp - 0x348]
	nop	
	sub	edx, dword ptr [rbp - 0x50]
	lea	rdi, [rdi]
	add	edx, 7
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0xdc1], al
	mov	eax, edx
	nop	
	cdq	
	lea	rdi, [rdi]
	idiv	ecx
	lea	rdi, [rdi]
	movsxd	rsi, edx
	add	rsi, qword ptr [rbp - 0x448]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x448], rsi
	mov	rbp, rbp
	mov	dil, byte ptr [rbp - 0xdc1]
	lea	rdi, [rdi]
	test	dil, 1
	nop	
	jne	.label_1909
	mov	rsp, rsp
	jmp	.label_1943
.label_2660:
	xor	eax, eax
	mov	rsp, rsp
	mov	cl, al
	nop	
	mov	eax, 7
	lea	rsi, [rsi]
	mov	edx, dword ptr [rbp - 0x348]
	sub	edx, dword ptr [rbp - 0x50]
	add	edx, 7
	nop	
	mov	dword ptr [rbp - 0xdc8], eax
	mov	rbp, rbp
	mov	eax, edx
	mov	rsp, rsp
	cdq	
	mov	rsp, rsp
	mov	esi, dword ptr [rbp - 0xdc8]
	nop	
	idiv	esi
	movsxd	rdi, edx
	add	rdi, qword ptr [rbp - 0x448]
	mov	qword ptr [rbp - 0x448], rdi
	test	cl, 1
	jne	.label_1909
	jmp	.label_1943
.label_2487:
	mov	al, 1
	test	al, 1
	mov	rsp, rsp
	jne	.label_2718
	nop	
	jmp	.label_2721
.label_2718:
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x448], 0
	jge	.label_2722
	mov	rsp, rsp
	movabs	rax, 0x8000000000000000
	mov	ecx, 7
	mov	edx, dword ptr [rbp - 0x348]
	mov	rsp, rsp
	sub	edx, dword ptr [rbp - 0x50]
	nop	
	add	edx, 7
	mov	qword ptr [rbp - 0xdd0], rax
	mov	eax, edx
	cdq	
	nop	
	idiv	ecx
	nop	
	movsxd	rsi, edx
	mov	rdi, qword ptr [rbp - 0xdd0]
	nop	
	sub	rdi, qword ptr [rbp - 0x448]
	mov	rsp, rsp
	cmp	rsi, rdi
	mov	rsp, rsp
	jl	.label_2725
	nop	
	jmp	.label_2742
.label_2722:
	mov	eax, 7
	movabs	rcx, 0x7fffffffffffffff
	sub	rcx, qword ptr [rbp - 0x448]
	lea	rsi, [rsi]
	mov	edx, dword ptr [rbp - 0x348]
	sub	edx, dword ptr [rbp - 0x50]
	nop	
	add	edx, 7
	mov	dword ptr [rbp - 0xdd4], eax
	mov	rsp, rsp
	mov	eax, edx
	mov	rbp, rbp
	cdq	
	mov	esi, dword ptr [rbp - 0xdd4]
	nop	
	idiv	esi
	lea	rsi, [rsi]
	movsxd	rdi, edx
	mov	rbp, rbp
	cmp	rcx, rdi
	jl	.label_2725
	jmp	.label_2742
.label_2721:
	lea	rdi, [rdi]
	mov	eax, 7
	mov	rsp, rsp
	mov	ecx, dword ptr [rbp - 0x348]
	lea	rsi, [rsi]
	sub	ecx, dword ptr [rbp - 0x50]
	mov	rsp, rsp
	add	ecx, 7
	mov	dword ptr [rbp - 0xdd8], eax
	mov	eax, ecx
	lea	rsi, [rsi]
	cdq	
	lea	rsi, [rsi]
	mov	ecx, dword ptr [rbp - 0xdd8]
	mov	rsp, rsp
	idiv	ecx
	mov	rbp, rbp
	cmp	edx, 0
	lea	rsi, [rsi]
	jge	.label_2761
	mov	eax, 7
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x448]
	mov	rsp, rsp
	mov	edx, dword ptr [rbp - 0x348]
	sub	edx, dword ptr [rbp - 0x50]
	mov	rbp, rbp
	add	edx, 7
	mov	dword ptr [rbp - 0xddc], eax
	mov	eax, edx
	cdq	
	mov	esi, dword ptr [rbp - 0xddc]
	mov	rsp, rsp
	idiv	esi
	nop	
	movsxd	rdi, edx
	add	rdi, qword ptr [rbp - 0x448]
	lea	rdi, [rdi]
	cmp	rcx, rdi
	lea	rdi, [rdi]
	jle	.label_2725
	jmp	.label_2742
.label_2761:
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x448], 0
	jge	.label_2806
	mov	rbp, rbp
	mov	eax, 7
	mov	ecx, dword ptr [rbp - 0x348]
	nop	
	sub	ecx, dword ptr [rbp - 0x50]
	add	ecx, 7
	mov	rsp, rsp
	mov	dword ptr [rbp - 0xde0], eax
	mov	rbp, rbp
	mov	eax, ecx
	lea	rdi, [rdi]
	cdq	
	mov	ecx, dword ptr [rbp - 0xde0]
	idiv	ecx
	lea	rsi, [rsi]
	movsxd	rsi, edx
	mov	edx, dword ptr [rbp - 0x348]
	nop	
	sub	edx, dword ptr [rbp - 0x50]
	add	edx, 7
	mov	rbp, rbp
	mov	eax, edx
	cdq	
	mov	rsp, rsp
	idiv	ecx
	lea	rdi, [rdi]
	movsxd	rdi, edx
	add	rdi, qword ptr [rbp - 0x448]
	mov	rbp, rbp
	cmp	rsi, rdi
	jle	.label_2725
	jmp	.label_2742
.label_2806:
	mov	rsp, rsp
	mov	eax, 7
	mov	ecx, dword ptr [rbp - 0x348]
	sub	ecx, dword ptr [rbp - 0x50]
	nop	
	add	ecx, 7
	mov	dword ptr [rbp - 0xde4], eax
	mov	eax, ecx
	cdq	
	mov	ecx, dword ptr [rbp - 0xde4]
	idiv	ecx
	movsxd	rsi, edx
	add	rsi, qword ptr [rbp - 0x448]
	cmp	rsi, qword ptr [rbp - 0x448]
	nop	
	jl	.label_2725
.label_2742:
	movabs	rax, 0x8000000000000000
	lea	rdi, [rdi]
	mov	ecx, 7
	mov	rsp, rsp
	mov	edx, dword ptr [rbp - 0x348]
	mov	rbp, rbp
	sub	edx, dword ptr [rbp - 0x50]
	nop	
	add	edx, 7
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0xdf0], rax
	mov	eax, edx
	cdq	
	idiv	ecx
	nop	
	movsxd	rsi, edx
	add	rsi, qword ptr [rbp - 0x448]
	mov	rdi, qword ptr [rbp - 0xdf0]
	cmp	rsi, rdi
	lea	rdi, [rdi]
	jl	.label_2725
	mov	rbp, rbp
	movabs	rax, 0x7fffffffffffffff
	mov	ecx, 7
	mov	edx, dword ptr [rbp - 0x348]
	lea	rdi, [rdi]
	sub	edx, dword ptr [rbp - 0x50]
	mov	rsp, rsp
	add	edx, 7
	mov	qword ptr [rbp - 0xdf8], rax
	mov	rbp, rbp
	mov	eax, edx
	cdq	
	idiv	ecx
	nop	
	movsxd	rsi, edx
	add	rsi, qword ptr [rbp - 0x448]
	mov	rdi, qword ptr [rbp - 0xdf8]
	mov	rbp, rbp
	cmp	rdi, rsi
	jge	.label_3255
.label_2725:
	lea	rsi, [rsi]
	mov	al, 1
	nop	
	mov	ecx, 7
	nop	
	mov	edx, dword ptr [rbp - 0x348]
	mov	rsp, rsp
	sub	edx, dword ptr [rbp - 0x50]
	add	edx, 7
	nop	
	mov	byte ptr [rbp - 0xdf9], al
	lea	rdi, [rdi]
	mov	eax, edx
	cdq	
	nop	
	idiv	ecx
	movsxd	rsi, edx
	add	rsi, qword ptr [rbp - 0x448]
	mov	qword ptr [rbp - 0x448], rsi
	mov	rbp, rbp
	mov	dil, byte ptr [rbp - 0xdf9]
	test	dil, 1
	jne	.label_1909
	lea	rdi, [rdi]
	jmp	.label_1943
.label_3255:
	lea	rdi, [rdi]
	xor	eax, eax
	mov	cl, al
	mov	rbp, rbp
	mov	eax, 7
	mov	edx, dword ptr [rbp - 0x348]
	sub	edx, dword ptr [rbp - 0x50]
	add	edx, 7
	mov	dword ptr [rbp - 0xe00], eax
	mov	eax, edx
	mov	rsp, rsp
	cdq	
	nop	
	mov	esi, dword ptr [rbp - 0xe00]
	idiv	esi
	movsxd	rdi, edx
	mov	rbp, rbp
	add	rdi, qword ptr [rbp - 0x448]
	mov	qword ptr [rbp - 0x448], rdi
	mov	rsp, rsp
	test	cl, 1
	lea	rsi, [rsi]
	jne	.label_1909
	lea	rsi, [rsi]
	jmp	.label_1943
.label_2480:
	lea	rsi, [rsi]
	xor	eax, eax
	mov	rsp, rsp
	mov	cl, al
	test	cl, 1
	nop	
	jne	.label_2929
	lea	rdi, [rdi]
	jmp	.label_2933
.label_2929:
	mov	rbp, rbp
	mov	al, 1
	test	al, 1
	jne	.label_2937
	jmp	.label_2940
.label_2937:
	cmp	qword ptr [rbp - 0x448], 0
	lea	rsi, [rsi]
	jge	.label_2942
	mov	rbp, rbp
	movabs	rax, 0x8000000000000000
	mov	ecx, 7
	mov	rbp, rbp
	mov	edx, dword ptr [rbp - 0x348]
	sub	edx, dword ptr [rbp - 0x50]
	lea	rdi, [rdi]
	add	edx, 7
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0xe08], rax
	nop	
	mov	eax, edx
	nop	
	cdq	
	idiv	ecx
	movsxd	rsi, edx
	mov	rdi, qword ptr [rbp - 0xe08]
	sub	rdi, qword ptr [rbp - 0x448]
	mov	rbp, rbp
	cmp	rsi, rdi
	jl	.label_2091
	jmp	.label_1931
.label_2942:
	mov	eax, 7
	movabs	rcx, 0x7fffffffffffffff
	lea	rdi, [rdi]
	sub	rcx, qword ptr [rbp - 0x448]
	mov	edx, dword ptr [rbp - 0x348]
	sub	edx, dword ptr [rbp - 0x50]
	add	edx, 7
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0xe0c], eax
	lea	rdi, [rdi]
	mov	eax, edx
	mov	rbp, rbp
	cdq	
	nop	
	mov	esi, dword ptr [rbp - 0xe0c]
	idiv	esi
	lea	rsi, [rsi]
	movsxd	rdi, edx
	mov	rbp, rbp
	cmp	rcx, rdi
	lea	rsi, [rsi]
	jl	.label_2091
	jmp	.label_1931
.label_2940:
	lea	rsi, [rsi]
	mov	eax, 7
	mov	ecx, dword ptr [rbp - 0x348]
	mov	rsp, rsp
	sub	ecx, dword ptr [rbp - 0x50]
	add	ecx, 7
	mov	rbp, rbp
	mov	dword ptr [rbp - 0xe10], eax
	mov	rsp, rsp
	mov	eax, ecx
	nop	
	cdq	
	nop	
	mov	ecx, dword ptr [rbp - 0xe10]
	idiv	ecx
	movsxd	rsi, edx
	mov	rbp, rbp
	cmp	rsi, 0
	mov	rsp, rsp
	jge	.label_2980
	lea	rsi, [rsi]
	mov	eax, 7
	mov	rcx, qword ptr [rbp - 0x448]
	lea	rsi, [rsi]
	mov	edx, dword ptr [rbp - 0x348]
	sub	edx, dword ptr [rbp - 0x50]
	lea	rdi, [rdi]
	add	edx, 7
	mov	dword ptr [rbp - 0xe14], eax
	lea	rdi, [rdi]
	mov	eax, edx
	mov	rbp, rbp
	cdq	
	mov	esi, dword ptr [rbp - 0xe14]
	idiv	esi
	movsxd	rdi, edx
	mov	rsp, rsp
	add	rdi, qword ptr [rbp - 0x448]
	cmp	rcx, rdi
	jle	.label_2091
	lea	rdi, [rdi]
	jmp	.label_1931
.label_2980:
	cmp	qword ptr [rbp - 0x448], 0
	lea	rdi, [rdi]
	jge	.label_3014
	mov	eax, 7
	lea	rsi, [rsi]
	mov	ecx, dword ptr [rbp - 0x348]
	sub	ecx, dword ptr [rbp - 0x50]
	mov	rsp, rsp
	add	ecx, 7
	mov	dword ptr [rbp - 0xe18], eax
	nop	
	mov	eax, ecx
	cdq	
	mov	ecx, dword ptr [rbp - 0xe18]
	nop	
	idiv	ecx
	lea	rsi, [rsi]
	movsxd	rsi, edx
	mov	edx, dword ptr [rbp - 0x348]
	lea	rsi, [rsi]
	sub	edx, dword ptr [rbp - 0x50]
	nop	
	add	edx, 7
	lea	rsi, [rsi]
	mov	eax, edx
	cdq	
	idiv	ecx
	movsxd	rdi, edx
	lea	rsi, [rsi]
	add	rdi, qword ptr [rbp - 0x448]
	cmp	rsi, rdi
	jle	.label_2091
	jmp	.label_1931
.label_3014:
	lea	rdi, [rdi]
	mov	eax, 7
	mov	ecx, dword ptr [rbp - 0x348]
	nop	
	sub	ecx, dword ptr [rbp - 0x50]
	add	ecx, 7
	mov	dword ptr [rbp - 0xe1c], eax
	mov	eax, ecx
	cdq	
	mov	ecx, dword ptr [rbp - 0xe1c]
	mov	rsp, rsp
	idiv	ecx
	movsxd	rsi, edx
	mov	rbp, rbp
	add	rsi, qword ptr [rbp - 0x448]
	cmp	rsi, qword ptr [rbp - 0x448]
	jl	.label_2091
.label_1931:
	mov	rbp, rbp
	movabs	rax, 0x8000000000000000
	mov	ecx, 7
	lea	rdi, [rdi]
	mov	edx, dword ptr [rbp - 0x348]
	sub	edx, dword ptr [rbp - 0x50]
	add	edx, 7
	mov	qword ptr [rbp - 0xe28], rax
	lea	rdi, [rdi]
	mov	eax, edx
	cdq	
	idiv	ecx
	movsxd	rsi, edx
	add	rsi, qword ptr [rbp - 0x448]
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0xe28]
	lea	rsi, [rsi]
	cmp	rsi, rdi
	jl	.label_2091
	movabs	rax, 0x7fffffffffffffff
	nop	
	mov	ecx, 7
	lea	rsi, [rsi]
	mov	edx, dword ptr [rbp - 0x348]
	sub	edx, dword ptr [rbp - 0x50]
	add	edx, 7
	nop	
	mov	qword ptr [rbp - 0xe30], rax
	mov	eax, edx
	lea	rsi, [rsi]
	cdq	
	idiv	ecx
	movsxd	rsi, edx
	add	rsi, qword ptr [rbp - 0x448]
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0xe30]
	lea	rdi, [rdi]
	cmp	rdi, rsi
	lea	rdi, [rdi]
	jge	.label_3068
.label_2091:
	mov	rsp, rsp
	mov	al, 1
	nop	
	mov	ecx, 7
	mov	edx, dword ptr [rbp - 0x348]
	lea	rsi, [rsi]
	sub	edx, dword ptr [rbp - 0x50]
	add	edx, 7
	mov	byte ptr [rbp - 0xe31], al
	mov	eax, edx
	cdq	
	idiv	ecx
	movsxd	rsi, edx
	add	rsi, qword ptr [rbp - 0x448]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x448], rsi
	mov	dil, byte ptr [rbp - 0xe31]
	test	dil, 1
	nop	
	jne	.label_1909
	jmp	.label_1943
.label_3068:
	xor	eax, eax
	lea	rdi, [rdi]
	mov	cl, al
	nop	
	mov	eax, 7
	mov	edx, dword ptr [rbp - 0x348]
	sub	edx, dword ptr [rbp - 0x50]
	add	edx, 7
	mov	dword ptr [rbp - 0xe38], eax
	mov	rsp, rsp
	mov	eax, edx
	cdq	
	nop	
	mov	esi, dword ptr [rbp - 0xe38]
	idiv	esi
	mov	rsp, rsp
	movsxd	rdi, edx
	add	rdi, qword ptr [rbp - 0x448]
	mov	qword ptr [rbp - 0x448], rdi
	mov	rsp, rsp
	test	cl, 1
	jne	.label_1909
	jmp	.label_1943
.label_2933:
	nop	
	mov	al, 1
	lea	rsi, [rsi]
	test	al, 1
	jne	.label_3130
	jmp	.label_3134
.label_3130:
	cmp	qword ptr [rbp - 0x448], 0
	nop	
	jge	.label_3136
	mov	rsp, rsp
	movabs	rax, 0x8000000000000000
	mov	rbp, rbp
	mov	ecx, 7
	mov	rbp, rbp
	mov	edx, dword ptr [rbp - 0x348]
	sub	edx, dword ptr [rbp - 0x50]
	nop	
	add	edx, 7
	mov	rsp, rsp
	mov	qword ptr [rbp - 0xe40], rax
	mov	eax, edx
	cdq	
	idiv	ecx
	mov	rsp, rsp
	movsxd	rsi, edx
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0xe40]
	mov	rbp, rbp
	sub	rdi, qword ptr [rbp - 0x448]
	cmp	rsi, rdi
	nop	
	jl	.label_3029
	mov	rsp, rsp
	jmp	.label_3151
.label_3136:
	lea	rdi, [rdi]
	mov	eax, 7
	movabs	rcx, 0x7fffffffffffffff
	sub	rcx, qword ptr [rbp - 0x448]
	mov	edx, dword ptr [rbp - 0x348]
	sub	edx, dword ptr [rbp - 0x50]
	mov	rbp, rbp
	add	edx, 7
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0xe44], eax
	nop	
	mov	eax, edx
	lea	rsi, [rsi]
	cdq	
	nop	
	mov	esi, dword ptr [rbp - 0xe44]
	mov	rbp, rbp
	idiv	esi
	movsxd	rdi, edx
	mov	rsp, rsp
	cmp	rcx, rdi
	nop	
	jl	.label_3029
	lea	rsi, [rsi]
	jmp	.label_3151
.label_3134:
	mov	eax, 7
	lea	rdi, [rdi]
	mov	ecx, dword ptr [rbp - 0x348]
	lea	rsi, [rsi]
	sub	ecx, dword ptr [rbp - 0x50]
	add	ecx, 7
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0xe48], eax
	mov	rbp, rbp
	mov	eax, ecx
	cdq	
	nop	
	mov	ecx, dword ptr [rbp - 0xe48]
	idiv	ecx
	cmp	edx, 0
	jge	.label_3165
	lea	rsi, [rsi]
	mov	eax, 7
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x448]
	mov	edx, dword ptr [rbp - 0x348]
	mov	rsp, rsp
	sub	edx, dword ptr [rbp - 0x50]
	add	edx, 7
	mov	dword ptr [rbp - 0xe4c], eax
	lea	rsi, [rsi]
	mov	eax, edx
	mov	rsp, rsp
	cdq	
	mov	esi, dword ptr [rbp - 0xe4c]
	idiv	esi
	movsxd	rdi, edx
	add	rdi, qword ptr [rbp - 0x448]
	cmp	rcx, rdi
	jle	.label_3029
	mov	rbp, rbp
	jmp	.label_3151
.label_3165:
	nop	
	cmp	qword ptr [rbp - 0x448], 0
	mov	rbp, rbp
	jge	.label_3201
	mov	eax, 7
	mov	ecx, dword ptr [rbp - 0x348]
	sub	ecx, dword ptr [rbp - 0x50]
	lea	rdi, [rdi]
	add	ecx, 7
	mov	dword ptr [rbp - 0xe50], eax
	mov	eax, ecx
	cdq	
	mov	ecx, dword ptr [rbp - 0xe50]
	lea	rdi, [rdi]
	idiv	ecx
	movsxd	rsi, edx
	mov	edx, dword ptr [rbp - 0x348]
	sub	edx, dword ptr [rbp - 0x50]
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
	add	rdi, qword ptr [rbp - 0x448]
	cmp	rsi, rdi
	mov	rbp, rbp
	jle	.label_3029
	lea	rsi, [rsi]
	jmp	.label_3151
.label_3201:
	mov	rbp, rbp
	mov	eax, 7
	mov	rbp, rbp
	mov	ecx, dword ptr [rbp - 0x348]
	mov	rsp, rsp
	sub	ecx, dword ptr [rbp - 0x50]
	add	ecx, 7
	nop	
	mov	dword ptr [rbp - 0xe54], eax
	mov	rsp, rsp
	mov	eax, ecx
	lea	rsi, [rsi]
	cdq	
	mov	ecx, dword ptr [rbp - 0xe54]
	nop	
	idiv	ecx
	movsxd	rsi, edx
	lea	rdi, [rdi]
	add	rsi, qword ptr [rbp - 0x448]
	cmp	rsi, qword ptr [rbp - 0x448]
	lea	rsi, [rsi]
	jl	.label_3029
.label_3151:
	movabs	rax, 0x8000000000000000
	lea	rdi, [rdi]
	mov	ecx, 7
	mov	edx, dword ptr [rbp - 0x348]
	sub	edx, dword ptr [rbp - 0x50]
	add	edx, 7
	mov	qword ptr [rbp - 0xe60], rax
	mov	eax, edx
	cdq	
	lea	rdi, [rdi]
	idiv	ecx
	movsxd	rsi, edx
	add	rsi, qword ptr [rbp - 0x448]
	mov	rdi, qword ptr [rbp - 0xe60]
	lea	rdi, [rdi]
	cmp	rsi, rdi
	jl	.label_3029
	lea	rsi, [rsi]
	movabs	rax, 0x7fffffffffffffff
	nop	
	mov	ecx, 7
	nop	
	mov	edx, dword ptr [rbp - 0x348]
	sub	edx, dword ptr [rbp - 0x50]
	add	edx, 7
	mov	rbp, rbp
	mov	qword ptr [rbp - 0xe68], rax
	mov	rbp, rbp
	mov	eax, edx
	nop	
	cdq	
	mov	rbp, rbp
	idiv	ecx
	movsxd	rsi, edx
	add	rsi, qword ptr [rbp - 0x448]
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0xe68]
	lea	rsi, [rsi]
	cmp	rdi, rsi
	mov	rsp, rsp
	jge	.label_3269
.label_3029:
	mov	al, 1
	mov	ecx, 7
	mov	edx, dword ptr [rbp - 0x348]
	sub	edx, dword ptr [rbp - 0x50]
	add	edx, 7
	mov	rsp, rsp
	mov	byte ptr [rbp - 0xe69], al
	mov	rsp, rsp
	mov	eax, edx
	nop	
	cdq	
	idiv	ecx
	lea	rsi, [rsi]
	movsxd	rsi, edx
	add	rsi, qword ptr [rbp - 0x448]
	mov	qword ptr [rbp - 0x448], rsi
	mov	dil, byte ptr [rbp - 0xe69]
	lea	rdi, [rdi]
	test	dil, 1
	jne	.label_1909
	mov	rsp, rsp
	jmp	.label_1943
.label_3269:
	mov	rsp, rsp
	xor	eax, eax
	mov	rsp, rsp
	mov	cl, al
	nop	
	mov	eax, 7
	lea	rsi, [rsi]
	mov	edx, dword ptr [rbp - 0x348]
	sub	edx, dword ptr [rbp - 0x50]
	nop	
	add	edx, 7
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0xe70], eax
	mov	rbp, rbp
	mov	eax, edx
	lea	rsi, [rsi]
	cdq	
	mov	esi, dword ptr [rbp - 0xe70]
	lea	rsi, [rsi]
	idiv	esi
	movsxd	rdi, edx
	mov	rsp, rsp
	add	rdi, qword ptr [rbp - 0x448]
	mov	qword ptr [rbp - 0x448], rdi
	lea	rsi, [rsi]
	test	cl, 1
	mov	rbp, rbp
	jne	.label_1909
.label_1943:
	mov	rbp, rbp
	xor	eax, eax
	mov	cl, al
	nop	
	test	cl, 1
	jne	.label_3725
	lea	rdi, [rdi]
	jmp	.label_3325
.label_3725:
	xor	eax, eax
	mov	cl, al
	nop	
	test	cl, 1
	mov	rsp, rsp
	jne	.label_3328
	jmp	.label_3334
.label_3328:
	mov	al, 1
	test	al, 1
	mov	rsp, rsp
	jne	.label_3335
	mov	rbp, rbp
	jmp	.label_3339
.label_3335:
	mov	eax, dword ptr [rbp - 0x5c]
	mov	cl, al
	mov	rsp, rsp
	movsx	eax, cl
	mov	rbp, rbp
	cmp	eax, 0
	jge	.label_3342
	mov	eax, 0x80000000
	mov	rcx, qword ptr [rbp - 0x448]
	lea	rdi, [rdi]
	mov	dl, cl
	movsx	esi, dl
	mov	edi, dword ptr [rbp - 0x5c]
	lea	rdi, [rdi]
	mov	dl, dil
	movsx	edi, dl
	lea	rsi, [rsi]
	sub	eax, edi
	cmp	esi, eax
	jl	.label_2883
	jmp	.label_3350
.label_3342:
	nop	
	mov	eax, 0x7fffffff
	lea	rsi, [rsi]
	mov	ecx, dword ptr [rbp - 0x5c]
	mov	dl, cl
	mov	rbp, rbp
	movsx	ecx, dl
	mov	rbp, rbp
	sub	eax, ecx
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x448]
	mov	dl, sil
	movsx	ecx, dl
	nop	
	cmp	eax, ecx
	jl	.label_2883
	jmp	.label_3350
.label_3339:
	mov	rax, qword ptr [rbp - 0x448]
	mov	cl, al
	movsx	edx, cl
	cmp	edx, 0
	nop	
	jge	.label_3365
	mov	eax, dword ptr [rbp - 0x5c]
	mov	rsp, rsp
	mov	cl, al
	mov	rsp, rsp
	movsx	eax, cl
	mov	rdx, qword ptr [rbp - 0x448]
	mov	cl, dl
	movsx	esi, cl
	mov	rsp, rsp
	mov	edi, dword ptr [rbp - 0x5c]
	lea	rsi, [rsi]
	mov	cl, dil
	mov	rbp, rbp
	movsx	edi, cl
	mov	rbp, rbp
	add	esi, edi
	mov	rbp, rbp
	cmp	eax, esi
	jle	.label_2883
	jmp	.label_3350
.label_3365:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x5c]
	mov	cl, al
	nop	
	movsx	eax, cl
	cmp	eax, 0
	lea	rdi, [rdi]
	jge	.label_2743
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x448]
	mov	cl, al
	lea	rsi, [rsi]
	movsx	edx, cl
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x448]
	mov	cl, al
	movsx	esi, cl
	lea	rdi, [rdi]
	mov	edi, dword ptr [rbp - 0x5c]
	nop	
	mov	cl, dil
	movsx	edi, cl
	add	esi, edi
	mov	rsp, rsp
	cmp	edx, esi
	mov	rsp, rsp
	jle	.label_2883
	lea	rsi, [rsi]
	jmp	.label_3350
.label_2743:
	mov	rax, qword ptr [rbp - 0x448]
	mov	rbp, rbp
	mov	cl, al
	movsx	edx, cl
	mov	esi, dword ptr [rbp - 0x5c]
	mov	rbp, rbp
	mov	cl, sil
	movsx	esi, cl
	add	edx, esi
	mov	esi, dword ptr [rbp - 0x5c]
	lea	rsi, [rsi]
	mov	cl, sil
	lea	rsi, [rsi]
	movsx	esi, cl
	cmp	edx, esi
	mov	rsp, rsp
	jl	.label_2883
.label_3350:
	mov	rax, qword ptr [rbp - 0x448]
	mov	rbp, rbp
	mov	cl, al
	mov	rsp, rsp
	movsx	edx, cl
	mov	rsp, rsp
	mov	esi, dword ptr [rbp - 0x5c]
	nop	
	mov	cl, sil
	movsx	esi, cl
	add	edx, esi
	cmp	edx, -0x80
	jl	.label_2883
	mov	eax, 0x7f
	mov	rcx, qword ptr [rbp - 0x448]
	mov	dl, cl
	mov	rbp, rbp
	movsx	esi, dl
	mov	edi, dword ptr [rbp - 0x5c]
	lea	rdi, [rdi]
	mov	dl, dil
	movsx	edi, dl
	lea	rdi, [rdi]
	add	esi, edi
	cmp	eax, esi
	jge	.label_3420
.label_2883:
	mov	al, 1
	mov	rcx, qword ptr [rbp - 0x448]
	mov	rsp, rsp
	mov	dl, cl
	movsx	esi, dl
	lea	rsi, [rsi]
	mov	edi, dword ptr [rbp - 0x5c]
	lea	rsi, [rsi]
	mov	dl, dil
	movsx	edi, dl
	nop	
	add	esi, edi
	lea	rdi, [rdi]
	mov	dl, sil
	movsx	esi, dl
	mov	dword ptr [rbp - 0x5c], esi
	mov	rbp, rbp
	test	al, 1
	lea	rdi, [rdi]
	jne	.label_1909
	jmp	.label_1955
.label_3420:
	mov	rsp, rsp
	xor	eax, eax
	mov	cl, al
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x448]
	mov	rsp, rsp
	mov	sil, dl
	mov	rsp, rsp
	movsx	eax, sil
	mov	edi, dword ptr [rbp - 0x5c]
	mov	sil, dil
	lea	rsi, [rsi]
	movsx	edi, sil
	lea	rdi, [rdi]
	add	eax, edi
	mov	sil, al
	movsx	eax, sil
	mov	dword ptr [rbp - 0x5c], eax
	test	cl, 1
	jne	.label_1909
	jmp	.label_1955
.label_3334:
	mov	al, 1
	lea	rsi, [rsi]
	test	al, 1
	lea	rsi, [rsi]
	jne	.label_3471
	jmp	.label_3784
.label_3471:
	cmp	dword ptr [rbp - 0x5c], 0
	jge	.label_3476
	lea	rsi, [rsi]
	movabs	rax, 0x8000000000000000
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x448]
	movsxd	rdx, dword ptr [rbp - 0x5c]
	sub	rax, rdx
	lea	rsi, [rsi]
	cmp	rcx, rax
	jl	.label_1901
	lea	rsi, [rsi]
	jmp	.label_2284
.label_3476:
	lea	rdi, [rdi]
	movabs	rax, 0x7fffffffffffffff
	mov	rbp, rbp
	movsxd	rcx, dword ptr [rbp - 0x5c]
	mov	rsp, rsp
	sub	rax, rcx
	mov	rbp, rbp
	cmp	rax, qword ptr [rbp - 0x448]
	mov	rbp, rbp
	jl	.label_1901
	lea	rdi, [rdi]
	jmp	.label_2284
.label_3784:
	cmp	qword ptr [rbp - 0x448], 0
	mov	rsp, rsp
	jge	.label_3501
	mov	rbp, rbp
	movsxd	rax, dword ptr [rbp - 0x5c]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x448]
	nop	
	movsxd	rdx, dword ptr [rbp - 0x5c]
	mov	rsp, rsp
	add	rcx, rdx
	cmp	rax, rcx
	jle	.label_1901
	mov	rbp, rbp
	jmp	.label_2284
.label_3501:
	cmp	dword ptr [rbp - 0x5c], 0
	mov	rbp, rbp
	jge	.label_3517
	mov	rax, qword ptr [rbp - 0x448]
	mov	rcx, qword ptr [rbp - 0x448]
	movsxd	rdx, dword ptr [rbp - 0x5c]
	add	rcx, rdx
	lea	rdi, [rdi]
	cmp	rax, rcx
	jle	.label_1901
	mov	rsp, rsp
	jmp	.label_2284
.label_3517:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x448]
	lea	rdi, [rdi]
	movsxd	rcx, dword ptr [rbp - 0x5c]
	lea	rdi, [rdi]
	add	rax, rcx
	movsxd	rcx, dword ptr [rbp - 0x5c]
	cmp	rax, rcx
	nop	
	jl	.label_1901
.label_2284:
	mov	rax, qword ptr [rbp - 0x448]
	movsxd	rcx, dword ptr [rbp - 0x5c]
	lea	rdi, [rdi]
	add	rax, rcx
	cmp	rax, -0x80
	jl	.label_1901
	nop	
	mov	eax, 0x7f
	mov	ecx, eax
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x448]
	lea	rdi, [rdi]
	movsxd	rsi, dword ptr [rbp - 0x5c]
	nop	
	add	rdx, rsi
	mov	rbp, rbp
	cmp	rcx, rdx
	lea	rdi, [rdi]
	jge	.label_3546
.label_1901:
	mov	al, 1
	mov	rcx, qword ptr [rbp - 0x448]
	nop	
	mov	edx, ecx
	add	edx, dword ptr [rbp - 0x5c]
	mov	sil, dl
	movsx	edx, sil
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x5c], edx
	test	al, 1
	mov	rsp, rsp
	jne	.label_1909
	nop	
	jmp	.label_1955
.label_3546:
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x448]
	mov	eax, edx
	add	eax, dword ptr [rbp - 0x5c]
	lea	rdi, [rdi]
	mov	sil, al
	movsx	eax, sil
	nop	
	mov	dword ptr [rbp - 0x5c], eax
	mov	rsp, rsp
	test	cl, 1
	nop	
	jne	.label_1909
	mov	rsp, rsp
	jmp	.label_1955
.label_3325:
	mov	rbp, rbp
	xor	eax, eax
	mov	rsp, rsp
	mov	cl, al
	test	cl, 1
	lea	rsi, [rsi]
	jne	.label_3582
	mov	rbp, rbp
	jmp	.label_3587
.label_3582:
	xor	eax, eax
	mov	cl, al
	mov	rbp, rbp
	test	cl, 1
	nop	
	jne	.label_3589
	jmp	.label_3596
.label_3589:
	nop	
	mov	al, 1
	test	al, 1
	jne	.label_3598
	lea	rsi, [rsi]
	jmp	.label_3599
.label_3598:
	nop	
	mov	eax, dword ptr [rbp - 0x5c]
	nop	
	mov	cx, ax
	movsx	eax, cx
	cmp	eax, 0
	mov	rsp, rsp
	jge	.label_3119
	mov	eax, 0x80000000
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x448]
	mov	dx, cx
	movsx	esi, dx
	mov	rbp, rbp
	mov	edi, dword ptr [rbp - 0x5c]
	mov	dx, di
	movsx	edi, dx
	sub	eax, edi
	cmp	esi, eax
	jl	.label_2628
	lea	rdi, [rdi]
	jmp	.label_2236
.label_3119:
	nop	
	mov	eax, 0x7fffffff
	mov	ecx, dword ptr [rbp - 0x5c]
	lea	rsi, [rsi]
	mov	dx, cx
	mov	rsp, rsp
	movsx	ecx, dx
	lea	rdi, [rdi]
	sub	eax, ecx
	mov	rsi, qword ptr [rbp - 0x448]
	mov	dx, si
	lea	rdi, [rdi]
	movsx	ecx, dx
	lea	rdi, [rdi]
	cmp	eax, ecx
	jl	.label_2628
	lea	rdi, [rdi]
	jmp	.label_2236
.label_3599:
	mov	rax, qword ptr [rbp - 0x448]
	mov	cx, ax
	movsx	edx, cx
	cmp	edx, 0
	mov	rsp, rsp
	jge	.label_2247
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x5c]
	lea	rdi, [rdi]
	mov	cx, ax
	movsx	eax, cx
	mov	rdx, qword ptr [rbp - 0x448]
	mov	rsp, rsp
	mov	cx, dx
	movsx	esi, cx
	mov	rbp, rbp
	mov	edi, dword ptr [rbp - 0x5c]
	lea	rdi, [rdi]
	mov	cx, di
	mov	rsp, rsp
	movsx	edi, cx
	add	esi, edi
	nop	
	cmp	eax, esi
	mov	rsp, rsp
	jle	.label_2628
	jmp	.label_2236
.label_2247:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x5c]
	nop	
	mov	cx, ax
	nop	
	movsx	eax, cx
	mov	rbp, rbp
	cmp	eax, 0
	jge	.label_2385
	mov	rax, qword ptr [rbp - 0x448]
	mov	cx, ax
	mov	rsp, rsp
	movsx	edx, cx
	mov	rax, qword ptr [rbp - 0x448]
	mov	rbp, rbp
	mov	cx, ax
	lea	rsi, [rsi]
	movsx	esi, cx
	lea	rdi, [rdi]
	mov	edi, dword ptr [rbp - 0x5c]
	mov	cx, di
	mov	rsp, rsp
	movsx	edi, cx
	add	esi, edi
	lea	rsi, [rsi]
	cmp	edx, esi
	jle	.label_2628
	nop	
	jmp	.label_2236
.label_2385:
	mov	rax, qword ptr [rbp - 0x448]
	mov	cx, ax
	nop	
	movsx	edx, cx
	lea	rdi, [rdi]
	mov	esi, dword ptr [rbp - 0x5c]
	mov	cx, si
	movsx	esi, cx
	lea	rdi, [rdi]
	add	edx, esi
	mov	rsp, rsp
	mov	esi, dword ptr [rbp - 0x5c]
	nop	
	mov	cx, si
	movsx	esi, cx
	nop	
	cmp	edx, esi
	lea	rdi, [rdi]
	jl	.label_2628
.label_2236:
	nop	
	mov	rax, qword ptr [rbp - 0x448]
	lea	rdi, [rdi]
	mov	cx, ax
	lea	rsi, [rsi]
	movsx	edx, cx
	lea	rsi, [rsi]
	mov	esi, dword ptr [rbp - 0x5c]
	mov	cx, si
	mov	rsp, rsp
	movsx	esi, cx
	add	edx, esi
	cmp	edx, 0xffff8000
	mov	rsp, rsp
	jl	.label_2628
	lea	rsi, [rsi]
	mov	eax, 0x7fff
	mov	rcx, qword ptr [rbp - 0x448]
	lea	rdi, [rdi]
	mov	dx, cx
	movsx	esi, dx
	mov	edi, dword ptr [rbp - 0x5c]
	mov	dx, di
	movsx	edi, dx
	nop	
	add	esi, edi
	cmp	eax, esi
	lea	rdi, [rdi]
	jge	.label_3694
.label_2628:
	mov	al, 1
	mov	rcx, qword ptr [rbp - 0x448]
	mov	dx, cx
	lea	rdi, [rdi]
	movsx	esi, dx
	mov	edi, dword ptr [rbp - 0x5c]
	mov	dx, di
	lea	rsi, [rsi]
	movsx	edi, dx
	add	esi, edi
	lea	rsi, [rsi]
	mov	dx, si
	movsx	esi, dx
	nop	
	mov	dword ptr [rbp - 0x5c], esi
	test	al, 1
	jne	.label_1909
	lea	rsi, [rsi]
	jmp	.label_1955
.label_3694:
	mov	rbp, rbp
	xor	eax, eax
	lea	rdi, [rdi]
	mov	cl, al
	nop	
	mov	rdx, qword ptr [rbp - 0x448]
	mov	si, dx
	movsx	eax, si
	lea	rsi, [rsi]
	mov	edi, dword ptr [rbp - 0x5c]
	lea	rdi, [rdi]
	mov	si, di
	movsx	edi, si
	mov	rsp, rsp
	add	eax, edi
	mov	si, ax
	lea	rdi, [rdi]
	movsx	eax, si
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x5c], eax
	mov	rbp, rbp
	test	cl, 1
	lea	rdi, [rdi]
	jne	.label_1909
	mov	rbp, rbp
	jmp	.label_1955
.label_3596:
	mov	al, 1
	test	al, 1
	jne	.label_2958
	lea	rdi, [rdi]
	jmp	.label_3726
.label_2958:
	cmp	dword ptr [rbp - 0x5c], 0
	jge	.label_3727
	lea	rdi, [rdi]
	movabs	rax, 0x8000000000000000
	mov	rcx, qword ptr [rbp - 0x448]
	movsxd	rdx, dword ptr [rbp - 0x5c]
	sub	rax, rdx
	cmp	rcx, rax
	mov	rsp, rsp
	jl	.label_2997
	jmp	.label_3046
.label_3727:
	movabs	rax, 0x7fffffffffffffff
	mov	rbp, rbp
	movsxd	rcx, dword ptr [rbp - 0x5c]
	sub	rax, rcx
	mov	rbp, rbp
	cmp	rax, qword ptr [rbp - 0x448]
	jl	.label_2997
	jmp	.label_3046
.label_3726:
	cmp	qword ptr [rbp - 0x448], 0
	jge	.label_3111
	movsxd	rax, dword ptr [rbp - 0x5c]
	nop	
	mov	rcx, qword ptr [rbp - 0x448]
	nop	
	movsxd	rdx, dword ptr [rbp - 0x5c]
	add	rcx, rdx
	lea	rdi, [rdi]
	cmp	rax, rcx
	lea	rdi, [rdi]
	jle	.label_2997
	jmp	.label_3046
.label_3111:
	lea	rsi, [rsi]
	cmp	dword ptr [rbp - 0x5c], 0
	jge	.label_3766
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x448]
	mov	rcx, qword ptr [rbp - 0x448]
	movsxd	rdx, dword ptr [rbp - 0x5c]
	add	rcx, rdx
	lea	rdi, [rdi]
	cmp	rax, rcx
	jle	.label_2997
	jmp	.label_3046
.label_3766:
	mov	rax, qword ptr [rbp - 0x448]
	mov	rsp, rsp
	movsxd	rcx, dword ptr [rbp - 0x5c]
	add	rax, rcx
	lea	rsi, [rsi]
	movsxd	rcx, dword ptr [rbp - 0x5c]
	cmp	rax, rcx
	jl	.label_2997
.label_3046:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x448]
	movsxd	rcx, dword ptr [rbp - 0x5c]
	add	rax, rcx
	lea	rsi, [rsi]
	cmp	rax, -0x8000
	mov	rsp, rsp
	jl	.label_2997
	nop	
	mov	eax, 0x7fff
	lea	rsi, [rsi]
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x448]
	mov	rbp, rbp
	movsxd	rsi, dword ptr [rbp - 0x5c]
	lea	rdi, [rdi]
	add	rdx, rsi
	cmp	rcx, rdx
	lea	rsi, [rsi]
	jge	.label_3791
.label_2997:
	lea	rdi, [rdi]
	mov	al, 1
	mov	rcx, qword ptr [rbp - 0x448]
	mov	edx, ecx
	mov	rsp, rsp
	add	edx, dword ptr [rbp - 0x5c]
	mov	si, dx
	movsx	edx, si
	mov	dword ptr [rbp - 0x5c], edx
	test	al, 1
	mov	rsp, rsp
	jne	.label_1909
	jmp	.label_1955
.label_3791:
	nop	
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x448]
	mov	eax, edx
	mov	rbp, rbp
	add	eax, dword ptr [rbp - 0x5c]
	lea	rdi, [rdi]
	mov	si, ax
	movsx	eax, si
	mov	dword ptr [rbp - 0x5c], eax
	mov	rbp, rbp
	test	cl, 1
	jne	.label_1909
	nop	
	jmp	.label_1955
.label_3587:
	mov	al, 1
	test	al, 1
	lea	rdi, [rdi]
	jne	.label_3810
	lea	rsi, [rsi]
	jmp	.label_3812
.label_3810:
	xor	eax, eax
	mov	rbp, rbp
	mov	cl, al
	lea	rsi, [rsi]
	test	cl, 1
	jne	.label_3815
	lea	rdi, [rdi]
	jmp	.label_3592
.label_3815:
	mov	al, 1
	test	al, 1
	nop	
	jne	.label_3821
	mov	rsp, rsp
	jmp	.label_3823
.label_3821:
	cmp	dword ptr [rbp - 0x5c], 0
	jge	.label_3826
	mov	eax, 0x80000000
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x448]
	mov	edx, ecx
	mov	rbp, rbp
	sub	eax, dword ptr [rbp - 0x5c]
	cmp	edx, eax
	jl	.label_1900
	mov	rbp, rbp
	jmp	.label_1895
.label_3826:
	mov	eax, 0x7fffffff
	nop	
	sub	eax, dword ptr [rbp - 0x5c]
	mov	rcx, qword ptr [rbp - 0x448]
	mov	edx, ecx
	lea	rsi, [rsi]
	cmp	eax, edx
	lea	rsi, [rsi]
	jl	.label_1900
	nop	
	jmp	.label_1895
.label_3823:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x448]
	nop	
	mov	ecx, eax
	cmp	ecx, 0
	jge	.label_3845
	mov	eax, dword ptr [rbp - 0x5c]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x448]
	lea	rsi, [rsi]
	mov	edx, ecx
	mov	rsp, rsp
	add	edx, dword ptr [rbp - 0x5c]
	lea	rsi, [rsi]
	cmp	eax, edx
	jle	.label_1900
	mov	rsp, rsp
	jmp	.label_1895
.label_3845:
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x5c], 0
	jge	.label_3861
	mov	rax, qword ptr [rbp - 0x448]
	mov	ecx, eax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x448]
	lea	rsi, [rsi]
	mov	edx, eax
	add	edx, dword ptr [rbp - 0x5c]
	cmp	ecx, edx
	jle	.label_1900
	mov	rbp, rbp
	jmp	.label_1895
.label_3861:
	mov	rax, qword ptr [rbp - 0x448]
	nop	
	mov	ecx, eax
	add	ecx, dword ptr [rbp - 0x5c]
	lea	rsi, [rsi]
	cmp	ecx, dword ptr [rbp - 0x5c]
	nop	
	jl	.label_1900
.label_1895:
	nop	
	mov	rax, qword ptr [rbp - 0x448]
	nop	
	mov	ecx, eax
	add	ecx, dword ptr [rbp - 0x5c]
	cmp	ecx, 0x80000000
	mov	rsp, rsp
	jl	.label_1900
	mov	eax, 0x7fffffff
	mov	rcx, qword ptr [rbp - 0x448]
	mov	edx, ecx
	mov	rbp, rbp
	add	edx, dword ptr [rbp - 0x5c]
	cmp	eax, edx
	mov	rsp, rsp
	jge	.label_1926
.label_1900:
	mov	al, 1
	mov	rcx, qword ptr [rbp - 0x448]
	mov	rbp, rbp
	mov	edx, ecx
	lea	rdi, [rdi]
	add	edx, dword ptr [rbp - 0x5c]
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x5c], edx
	mov	rsp, rsp
	test	al, 1
	lea	rdi, [rdi]
	jne	.label_1909
	mov	rbp, rbp
	jmp	.label_1955
.label_1926:
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x448]
	lea	rsi, [rsi]
	mov	eax, edx
	add	eax, dword ptr [rbp - 0x5c]
	mov	dword ptr [rbp - 0x5c], eax
	test	cl, 1
	lea	rsi, [rsi]
	jne	.label_1909
	mov	rbp, rbp
	jmp	.label_1955
.label_3592:
	mov	al, 1
	test	al, 1
	mov	rsp, rsp
	jne	.label_1973
	lea	rdi, [rdi]
	jmp	.label_2583
.label_1973:
	cmp	dword ptr [rbp - 0x5c], 0
	jge	.label_1985
	mov	rsp, rsp
	movabs	rax, 0x8000000000000000
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x448]
	lea	rsi, [rsi]
	movsxd	rdx, dword ptr [rbp - 0x5c]
	lea	rdi, [rdi]
	sub	rax, rdx
	mov	rsp, rsp
	cmp	rcx, rax
	lea	rdi, [rdi]
	jl	.label_1992
	mov	rbp, rbp
	jmp	.label_2009
.label_1985:
	movabs	rax, 0x7fffffffffffffff
	lea	rdi, [rdi]
	movsxd	rcx, dword ptr [rbp - 0x5c]
	sub	rax, rcx
	cmp	rax, qword ptr [rbp - 0x448]
	jl	.label_1992
	lea	rdi, [rdi]
	jmp	.label_2009
.label_2583:
	cmp	qword ptr [rbp - 0x448], 0
	jge	.label_2024
	lea	rsi, [rsi]
	movsxd	rax, dword ptr [rbp - 0x5c]
	mov	rcx, qword ptr [rbp - 0x448]
	movsxd	rdx, dword ptr [rbp - 0x5c]
	add	rcx, rdx
	mov	rbp, rbp
	cmp	rax, rcx
	lea	rsi, [rsi]
	jle	.label_1992
	jmp	.label_2009
.label_2024:
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x5c], 0
	mov	rsp, rsp
	jge	.label_2036
	mov	rax, qword ptr [rbp - 0x448]
	nop	
	mov	rcx, qword ptr [rbp - 0x448]
	movsxd	rdx, dword ptr [rbp - 0x5c]
	lea	rdi, [rdi]
	add	rcx, rdx
	nop	
	cmp	rax, rcx
	lea	rdi, [rdi]
	jle	.label_1992
	jmp	.label_2009
.label_2036:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x448]
	movsxd	rcx, dword ptr [rbp - 0x5c]
	mov	rbp, rbp
	add	rax, rcx
	mov	rbp, rbp
	movsxd	rcx, dword ptr [rbp - 0x5c]
	nop	
	cmp	rax, rcx
	lea	rdi, [rdi]
	jl	.label_1992
.label_2009:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x448]
	nop	
	movsxd	rcx, dword ptr [rbp - 0x5c]
	lea	rdi, [rdi]
	add	rax, rcx
	cmp	rax, -0x80000000
	jl	.label_1992
	mov	rbp, rbp
	mov	eax, 0x7fffffff
	nop	
	mov	ecx, eax
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x448]
	mov	rsp, rsp
	movsxd	rsi, dword ptr [rbp - 0x5c]
	add	rdx, rsi
	cmp	rcx, rdx
	jge	.label_2068
.label_1992:
	lea	rdi, [rdi]
	mov	al, 1
	mov	rcx, qword ptr [rbp - 0x448]
	nop	
	mov	edx, ecx
	add	edx, dword ptr [rbp - 0x5c]
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x5c], edx
	test	al, 1
	jne	.label_1909
	mov	rsp, rsp
	jmp	.label_1955
.label_2068:
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x448]
	mov	rsp, rsp
	mov	eax, edx
	add	eax, dword ptr [rbp - 0x5c]
	mov	dword ptr [rbp - 0x5c], eax
	test	cl, 1
	nop	
	jne	.label_1909
	mov	rbp, rbp
	jmp	.label_1955
.label_3812:
	xor	eax, eax
	lea	rsi, [rsi]
	mov	cl, al
	nop	
	test	cl, 1
	jne	.label_2103
	lea	rdi, [rdi]
	jmp	.label_2109
.label_2103:
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_2112
	jmp	.label_2951
.label_2112:
	mov	rbp, rbp
	mov	al, 1
	test	al, 1
	mov	rsp, rsp
	jne	.label_2118
	lea	rdi, [rdi]
	jmp	.label_2125
.label_2118:
	lea	rsi, [rsi]
	movsxd	rax, dword ptr [rbp - 0x5c]
	cmp	rax, 0
	jge	.label_2985
	mov	rsp, rsp
	movabs	rax, 0x8000000000000000
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x448]
	lea	rdi, [rdi]
	movsxd	rdx, dword ptr [rbp - 0x5c]
	mov	rbp, rbp
	sub	rax, rdx
	lea	rdi, [rdi]
	cmp	rcx, rax
	nop	
	jl	.label_2014
	lea	rdi, [rdi]
	jmp	.label_2143
.label_2985:
	movabs	rax, 0x7fffffffffffffff
	lea	rsi, [rsi]
	movsxd	rcx, dword ptr [rbp - 0x5c]
	mov	rsp, rsp
	sub	rax, rcx
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rbp - 0x448]
	nop	
	jl	.label_2014
	mov	rsp, rsp
	jmp	.label_2143
.label_2125:
	cmp	qword ptr [rbp - 0x448], 0
	mov	rsp, rsp
	jge	.label_3147
	lea	rsi, [rsi]
	movsxd	rax, dword ptr [rbp - 0x5c]
	mov	rcx, qword ptr [rbp - 0x448]
	movsxd	rdx, dword ptr [rbp - 0x5c]
	add	rcx, rdx
	lea	rsi, [rsi]
	cmp	rax, rcx
	mov	rbp, rbp
	jle	.label_2014
	jmp	.label_2143
.label_3147:
	lea	rsi, [rsi]
	movsxd	rax, dword ptr [rbp - 0x5c]
	lea	rsi, [rsi]
	cmp	rax, 0
	lea	rdi, [rdi]
	jge	.label_3222
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x448]
	mov	rcx, qword ptr [rbp - 0x448]
	nop	
	movsxd	rdx, dword ptr [rbp - 0x5c]
	lea	rdi, [rdi]
	add	rcx, rdx
	lea	rsi, [rsi]
	cmp	rax, rcx
	lea	rdi, [rdi]
	jle	.label_2014
	jmp	.label_2143
.label_3222:
	mov	rax, qword ptr [rbp - 0x448]
	mov	rsp, rsp
	movsxd	rcx, dword ptr [rbp - 0x5c]
	mov	rsp, rsp
	add	rax, rcx
	mov	rbp, rbp
	movsxd	rcx, dword ptr [rbp - 0x5c]
	cmp	rax, rcx
	jl	.label_2014
.label_2143:
	movabs	rax, 0x8000000000000000
	mov	rcx, qword ptr [rbp - 0x448]
	mov	rsp, rsp
	movsxd	rdx, dword ptr [rbp - 0x5c]
	add	rcx, rdx
	lea	rsi, [rsi]
	cmp	rcx, rax
	mov	rbp, rbp
	jl	.label_2014
	movabs	rax, 0x7fffffffffffffff
	mov	rcx, qword ptr [rbp - 0x448]
	movsxd	rdx, dword ptr [rbp - 0x5c]
	mov	rsp, rsp
	add	rcx, rdx
	cmp	rax, rcx
	jge	.label_2217
.label_2014:
	mov	al, 1
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x448]
	nop	
	movsxd	rdx, dword ptr [rbp - 0x5c]
	lea	rdi, [rdi]
	add	rcx, rdx
	mov	esi, ecx
	mov	dword ptr [rbp - 0x5c], esi
	lea	rsi, [rsi]
	test	al, 1
	jne	.label_1909
	jmp	.label_1955
.label_2217:
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x448]
	nop	
	movsxd	rsi, dword ptr [rbp - 0x5c]
	lea	rdi, [rdi]
	add	rdx, rsi
	lea	rsi, [rsi]
	mov	eax, edx
	mov	dword ptr [rbp - 0x5c], eax
	test	cl, 1
	jne	.label_1909
	jmp	.label_1955
.label_2951:
	mov	al, 1
	test	al, 1
	jne	.label_3172
	lea	rsi, [rsi]
	jmp	.label_2259
.label_3172:
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x5c], 0
	jge	.label_2262
	nop	
	movabs	rax, 0x8000000000000000
	mov	rcx, qword ptr [rbp - 0x448]
	movsxd	rdx, dword ptr [rbp - 0x5c]
	sub	rax, rdx
	cmp	rcx, rax
	jl	.label_2287
	mov	rbp, rbp
	jmp	.label_2271
.label_2262:
	mov	rbp, rbp
	movabs	rax, 0x7fffffffffffffff
	movsxd	rcx, dword ptr [rbp - 0x5c]
	sub	rax, rcx
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rbp - 0x448]
	lea	rsi, [rsi]
	jl	.label_2287
	lea	rsi, [rsi]
	jmp	.label_2271
.label_2259:
	nop	
	cmp	qword ptr [rbp - 0x448], 0
	jge	.label_2282
	mov	rsp, rsp
	movsxd	rax, dword ptr [rbp - 0x5c]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x448]
	movsxd	rdx, dword ptr [rbp - 0x5c]
	add	rcx, rdx
	cmp	rax, rcx
	jle	.label_2287
	lea	rsi, [rsi]
	jmp	.label_2271
.label_2282:
	cmp	dword ptr [rbp - 0x5c], 0
	jge	.label_2303
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x448]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x448]
	lea	rsi, [rsi]
	movsxd	rdx, dword ptr [rbp - 0x5c]
	lea	rdi, [rdi]
	add	rcx, rdx
	mov	rsp, rsp
	cmp	rax, rcx
	lea	rdi, [rdi]
	jle	.label_2287
	jmp	.label_2271
.label_2303:
	mov	rax, qword ptr [rbp - 0x448]
	nop	
	movsxd	rcx, dword ptr [rbp - 0x5c]
	lea	rdi, [rdi]
	add	rax, rcx
	nop	
	movsxd	rcx, dword ptr [rbp - 0x5c]
	mov	rbp, rbp
	cmp	rax, rcx
	jl	.label_2287
.label_2271:
	movabs	rax, 0x8000000000000000
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x448]
	movsxd	rdx, dword ptr [rbp - 0x5c]
	mov	rbp, rbp
	add	rcx, rdx
	cmp	rcx, rax
	jl	.label_2287
	movabs	rax, 0x7fffffffffffffff
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x448]
	lea	rdi, [rdi]
	movsxd	rdx, dword ptr [rbp - 0x5c]
	add	rcx, rdx
	cmp	rax, rcx
	jge	.label_2334
.label_2287:
	lea	rsi, [rsi]
	mov	al, 1
	mov	rcx, qword ptr [rbp - 0x448]
	movsxd	rdx, dword ptr [rbp - 0x5c]
	mov	rsp, rsp
	add	rcx, rdx
	lea	rdi, [rdi]
	mov	esi, ecx
	mov	dword ptr [rbp - 0x5c], esi
	test	al, 1
	nop	
	jne	.label_1909
	jmp	.label_1955
.label_2334:
	nop	
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x448]
	movsxd	rsi, dword ptr [rbp - 0x5c]
	lea	rsi, [rsi]
	add	rdx, rsi
	lea	rsi, [rsi]
	mov	eax, edx
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x5c], eax
	nop	
	test	cl, 1
	jne	.label_1909
	mov	rsp, rsp
	jmp	.label_1955
.label_2109:
	xor	eax, eax
	nop	
	mov	cl, al
	lea	rdi, [rdi]
	test	cl, 1
	lea	rsi, [rsi]
	jne	.label_3112
	jmp	.label_2371
.label_3112:
	lea	rdi, [rdi]
	mov	al, 1
	test	al, 1
	lea	rdi, [rdi]
	jne	.label_3059
	lea	rdi, [rdi]
	jmp	.label_2376
.label_3059:
	movsxd	rax, dword ptr [rbp - 0x5c]
	mov	rsp, rsp
	cmp	rax, 0
	jge	.label_2377
	mov	rsp, rsp
	movabs	rax, 0x8000000000000000
	mov	rcx, qword ptr [rbp - 0x448]
	lea	rsi, [rsi]
	movsxd	rdx, dword ptr [rbp - 0x5c]
	mov	rbp, rbp
	sub	rax, rdx
	cmp	rcx, rax
	lea	rdi, [rdi]
	jl	.label_2198
	lea	rdi, [rdi]
	jmp	.label_2389
.label_2377:
	nop	
	movabs	rax, 0x7fffffffffffffff
	movsxd	rcx, dword ptr [rbp - 0x5c]
	mov	rsp, rsp
	sub	rax, rcx
	cmp	rax, qword ptr [rbp - 0x448]
	jl	.label_2198
	mov	rsp, rsp
	jmp	.label_2389
.label_2376:
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x448], 0
	jge	.label_2400
	movsxd	rax, dword ptr [rbp - 0x5c]
	mov	rcx, qword ptr [rbp - 0x448]
	movsxd	rdx, dword ptr [rbp - 0x5c]
	add	rcx, rdx
	cmp	rax, rcx
	nop	
	jle	.label_2198
	jmp	.label_2389
.label_2400:
	movsxd	rax, dword ptr [rbp - 0x5c]
	cmp	rax, 0
	mov	rsp, rsp
	jge	.label_2408
	mov	rax, qword ptr [rbp - 0x448]
	mov	rcx, qword ptr [rbp - 0x448]
	movsxd	rdx, dword ptr [rbp - 0x5c]
	add	rcx, rdx
	lea	rsi, [rsi]
	cmp	rax, rcx
	jle	.label_2198
	jmp	.label_2389
.label_2408:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x448]
	nop	
	movsxd	rcx, dword ptr [rbp - 0x5c]
	lea	rdi, [rdi]
	add	rax, rcx
	movsxd	rcx, dword ptr [rbp - 0x5c]
	cmp	rax, rcx
	nop	
	jl	.label_2198
.label_2389:
	lea	rsi, [rsi]
	movabs	rax, 0x8000000000000000
	nop	
	mov	rcx, qword ptr [rbp - 0x448]
	movsxd	rdx, dword ptr [rbp - 0x5c]
	mov	rsp, rsp
	add	rcx, rdx
	cmp	rcx, rax
	jl	.label_2198
	movabs	rax, 0x7fffffffffffffff
	nop	
	mov	rcx, qword ptr [rbp - 0x448]
	nop	
	movsxd	rdx, dword ptr [rbp - 0x5c]
	mov	rbp, rbp
	add	rcx, rdx
	cmp	rax, rcx
	jge	.label_2439
.label_2198:
	mov	al, 1
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x448]
	lea	rdi, [rdi]
	movsxd	rdx, dword ptr [rbp - 0x5c]
	mov	rsp, rsp
	add	rcx, rdx
	mov	esi, ecx
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x5c], esi
	lea	rdi, [rdi]
	test	al, 1
	jne	.label_1909
	jmp	.label_1955
.label_2439:
	xor	eax, eax
	lea	rdi, [rdi]
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x448]
	movsxd	rsi, dword ptr [rbp - 0x5c]
	mov	rbp, rbp
	add	rdx, rsi
	mov	rsp, rsp
	mov	eax, edx
	mov	dword ptr [rbp - 0x5c], eax
	lea	rdi, [rdi]
	test	cl, 1
	nop	
	jne	.label_1909
	mov	rbp, rbp
	jmp	.label_1955
.label_2371:
	mov	rsp, rsp
	mov	al, 1
	test	al, 1
	jne	.label_2484
	jmp	.label_2488
.label_2484:
	mov	rsp, rsp
	cmp	dword ptr [rbp - 0x5c], 0
	jge	.label_3032
	lea	rsi, [rsi]
	movabs	rax, 0x8000000000000000
	mov	rcx, qword ptr [rbp - 0x448]
	movsxd	rdx, dword ptr [rbp - 0x5c]
	lea	rsi, [rsi]
	sub	rax, rdx
	cmp	rcx, rax
	jl	.label_2539
	jmp	.label_2506
.label_3032:
	lea	rsi, [rsi]
	movabs	rax, 0x7fffffffffffffff
	lea	rdi, [rdi]
	movsxd	rcx, dword ptr [rbp - 0x5c]
	sub	rax, rcx
	cmp	rax, qword ptr [rbp - 0x448]
	mov	rsp, rsp
	jl	.label_2539
	lea	rdi, [rdi]
	jmp	.label_2506
.label_2488:
	cmp	qword ptr [rbp - 0x448], 0
	lea	rsi, [rsi]
	jge	.label_3159
	movsxd	rax, dword ptr [rbp - 0x5c]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x448]
	movsxd	rdx, dword ptr [rbp - 0x5c]
	lea	rsi, [rsi]
	add	rcx, rdx
	lea	rdi, [rdi]
	cmp	rax, rcx
	lea	rdi, [rdi]
	jle	.label_2539
	nop	
	jmp	.label_2506
.label_3159:
	mov	rsp, rsp
	cmp	dword ptr [rbp - 0x5c], 0
	lea	rsi, [rsi]
	jge	.label_2536
	mov	rax, qword ptr [rbp - 0x448]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x448]
	movsxd	rdx, dword ptr [rbp - 0x5c]
	lea	rsi, [rsi]
	add	rcx, rdx
	lea	rdi, [rdi]
	cmp	rax, rcx
	jle	.label_2539
	mov	rbp, rbp
	jmp	.label_2506
.label_2536:
	mov	rax, qword ptr [rbp - 0x448]
	movsxd	rcx, dword ptr [rbp - 0x5c]
	add	rax, rcx
	lea	rsi, [rsi]
	movsxd	rcx, dword ptr [rbp - 0x5c]
	cmp	rax, rcx
	jl	.label_2539
.label_2506:
	movabs	rax, 0x8000000000000000
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x448]
	lea	rsi, [rsi]
	movsxd	rdx, dword ptr [rbp - 0x5c]
	add	rcx, rdx
	nop	
	cmp	rcx, rax
	jl	.label_2539
	mov	rbp, rbp
	movabs	rax, 0x7fffffffffffffff
	mov	rcx, qword ptr [rbp - 0x448]
	mov	rsp, rsp
	movsxd	rdx, dword ptr [rbp - 0x5c]
	add	rcx, rdx
	cmp	rax, rcx
	jge	.label_2573
.label_2539:
	mov	rbp, rbp
	mov	al, 1
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x448]
	lea	rsi, [rsi]
	movsxd	rdx, dword ptr [rbp - 0x5c]
	add	rcx, rdx
	lea	rdi, [rdi]
	mov	esi, ecx
	mov	dword ptr [rbp - 0x5c], esi
	test	al, 1
	jne	.label_1909
	mov	rbp, rbp
	jmp	.label_1955
.label_2573:
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x448]
	lea	rdi, [rdi]
	movsxd	rsi, dword ptr [rbp - 0x5c]
	nop	
	add	rdx, rsi
	mov	eax, edx
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x5c], eax
	test	cl, 1
	jne	.label_1909
	mov	rbp, rbp
	jmp	.label_1955
.label_1909:
	mov	qword ptr [rbp - 0x1c8], -1
	mov	rbp, rbp
	jmp	.label_2612
.label_1955:
	lea	rsi, [rbp - 0x68]
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x48], 0xffffffff
	mov	rdi, qword ptr [rbp - 0x1d8]
	nop	
	call	mktime_z
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x1c8], rax
.label_2612:
	cmp	qword ptr [rbp - 0x1c8], -1
	lea	rdi, [rdi]
	jne	.label_3690
	test	byte ptr [rbp - 0x27f], 1
	je	.label_2632
	nop	
	movabs	rdi, OFFSET FLAT:.str.48
	nop	
	call	gettext
	lea	rdi, [rbp - 0x358]
	nop	
	mov	edx, 0x64
	lea	rdi, [rdi]
	lea	rsi, [rbp - 0x440]
	nop	
	mov	qword ptr [rbp - 0xe78], rax
	call	str_days
	lea	rsi, [rsi]
	lea	rdi, [rbp - 0x68]
	lea	rsi, [rbp - 0x358]
	mov	rsp, rsp
	mov	ecx, 0x64
	nop	
	lea	rdx, [rbp - 0x130]
	mov	r8, qword ptr [rbp - 0x350]
	mov	rsp, rsp
	mov	r9d, dword ptr [rbp - 0x348]
	mov	qword ptr [rbp - 0xe80], rax
	mov	dword ptr [rbp - 0xe84], r9d
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0xe90], r8
	nop	
	call	debug_strfdatetime
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0xe78]
	mov	rsi, qword ptr [rbp - 0xe80]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0xe90]
	mov	ecx, dword ptr [rbp - 0xe84]
	nop	
	mov	r8, rax
	mov	al, 0
	mov	rsp, rsp
	call	dbg_printf
.label_2632:
	mov	rsp, rsp
	jmp	.label_2446
.label_3690:
	test	byte ptr [rbp - 0x27f], 1
	je	.label_2674
	nop	
	movabs	rdi, OFFSET FLAT:.str.49
	call	gettext
	mov	rbp, rbp
	lea	rdi, [rbp - 0x358]
	mov	edx, 0x64
	lea	rsi, [rbp - 0x440]
	mov	qword ptr [rbp - 0xe98], rax
	call	str_days
	lea	rdi, [rbp - 0x68]
	lea	rsi, [rbp - 0x358]
	mov	ecx, 0x64
	lea	rdi, [rdi]
	lea	rdx, [rbp - 0x130]
	mov	qword ptr [rbp - 0xea0], rax
	call	debug_strfdatetime
	mov	rdi, qword ptr [rbp - 0xe98]
	mov	rsi, qword ptr [rbp - 0xea0]
	mov	rdx, rax
	mov	al, 0
	call	dbg_printf
.label_2674:
	jmp	.label_2702
.label_2702:
	mov	rbp, rbp
	test	byte ptr [rbp - 0x27f], 1
	mov	rbp, rbp
	je	.label_2704
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x2b0], 0
	jne	.label_2711
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x2a8], 0
	mov	rsp, rsp
	jne	.label_2711
	mov	rbp, rbp
	movabs	rdi, OFFSET FLAT:.str.50
	call	gettext
	lea	rdi, [rdi]
	lea	rdi, [rbp - 0x68]
	mov	rbp, rbp
	mov	edx, 0x64
	lea	rsi, [rsi]
	lea	rsi, [rbp - 0x130]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0xea8], rax
	nop	
	call	debug_strfdate
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0xea8]
	mov	rbp, rbp
	mov	rsi, rax
	lea	rsi, [rsi]
	mov	al, 0
	lea	rdi, [rdi]
	call	dbg_printf
.label_2711:
	cmp	qword ptr [rbp - 0x2a8], 0
	lea	rsi, [rsi]
	je	.label_2735
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x2b0], 0
	je	.label_2735
	movabs	rdi, OFFSET FLAT:.str.51
	lea	rsi, [rsi]
	call	gettext
	lea	rdi, [rbp - 0x358]
	lea	rdi, [rdi]
	mov	edx, 0x64
	lea	rsi, [rbp - 0x440]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0xeb0], rax
	mov	rsp, rsp
	call	str_days
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0xeb0]
	mov	rsp, rsp
	mov	rsi, rax
	mov	al, 0
	call	dbg_printf
.label_2735:
	movabs	rdi, OFFSET FLAT:.str.52
	call	gettext
	nop	
	lea	rdi, [rbp - 0x68]
	lea	rdi, [rdi]
	lea	rsi, [rbp - 0x358]
	lea	rsi, [rsi]
	mov	ecx, 0x64
	lea	rdi, [rdi]
	lea	rdx, [rbp - 0x130]
	mov	qword ptr [rbp - 0xeb8], rax
	call	debug_strfdatetime
	mov	rdi, qword ptr [rbp - 0xeb8]
	mov	rsi, rax
	lea	rdi, [rdi]
	mov	al, 0
	call	dbg_printf
.label_2704:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x2f0]
	lea	rdi, [rdi]
	or	rax, qword ptr [rbp - 0x2e8]
	mov	rsp, rsp
	or	rax, qword ptr [rbp - 0x2e0]
	cmp	rax, 0
	je	.label_2654
	lea	rsi, [rsi]
	test	byte ptr [rbp - 0x27f], 1
	je	.label_2656
	nop	
	cmp	qword ptr [rbp - 0x2f0], 0
	lea	rsi, [rsi]
	jne	.label_2792
	cmp	qword ptr [rbp - 0x2e8], 0
	mov	rsp, rsp
	je	.label_2800
.label_2792:
	mov	rsp, rsp
	cmp	dword ptr [rbp - 0x5c], 0xf
	lea	rdi, [rdi]
	je	.label_2800
	movabs	rdi, OFFSET FLAT:.str.53
	lea	rsi, [rsi]
	call	gettext
	mov	rdi, rax
	mov	rsp, rsp
	mov	al, 0
	call	dbg_printf
.label_2800:
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x2e0], 0
	mov	rsp, rsp
	je	.label_2820
	cmp	dword ptr [rbp - 0x60], 0xc
	je	.label_2820
	mov	rsp, rsp
	movabs	rdi, OFFSET FLAT:.str.54
	lea	rdi, [rdi]
	call	gettext
	lea	rdi, [rdi]
	mov	rdi, rax
	mov	al, 0
	call	dbg_printf
.label_2820:
	lea	rdi, [rdi]
	jmp	.label_2656
.label_2656:
	mov	rsp, rsp
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_2835
	jmp	.label_2837
.label_2835:
	lea	rsi, [rsi]
	xor	eax, eax
	mov	rbp, rbp
	mov	cl, al
	mov	rbp, rbp
	test	cl, 1
	mov	rsp, rsp
	jne	.label_2838
	lea	rsi, [rsi]
	jmp	.label_2844
.label_2838:
	nop	
	mov	al, 1
	test	al, 1
	jne	.label_2847
	nop	
	jmp	.label_2852
.label_2847:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x2f0]
	mov	rbp, rbp
	mov	cl, al
	lea	rdi, [rdi]
	movsx	edx, cl
	mov	rsp, rsp
	cmp	edx, 0
	lea	rdi, [rdi]
	jge	.label_2853
	mov	rbp, rbp
	mov	eax, 0x80000000
	lea	rsi, [rsi]
	mov	ecx, dword ptr [rbp - 0x54]
	mov	dl, cl
	movsx	ecx, dl
	mov	rsi, qword ptr [rbp - 0x2f0]
	lea	rdi, [rdi]
	mov	dl, sil
	movsx	edi, dl
	sub	eax, edi
	cmp	ecx, eax
	lea	rdi, [rdi]
	jl	.label_2861
	lea	rdi, [rdi]
	jmp	.label_2203
.label_2853:
	mov	rsp, rsp
	mov	eax, 0x7fffffff
	nop	
	mov	rcx, qword ptr [rbp - 0x2f0]
	mov	dl, cl
	movsx	esi, dl
	sub	eax, esi
	mov	esi, dword ptr [rbp - 0x54]
	lea	rdi, [rdi]
	mov	dl, sil
	movsx	esi, dl
	nop	
	cmp	eax, esi
	jl	.label_2861
	jmp	.label_2203
.label_2852:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x54]
	lea	rsi, [rsi]
	mov	cl, al
	lea	rdi, [rdi]
	movsx	eax, cl
	mov	rbp, rbp
	cmp	eax, 0
	jge	.label_2885
	mov	rax, qword ptr [rbp - 0x2f0]
	nop	
	mov	cl, al
	movsx	edx, cl
	mov	rbp, rbp
	mov	esi, dword ptr [rbp - 0x54]
	mov	cl, sil
	movsx	esi, cl
	mov	rax, qword ptr [rbp - 0x2f0]
	lea	rdi, [rdi]
	mov	cl, al
	lea	rsi, [rsi]
	movsx	edi, cl
	lea	rdi, [rdi]
	add	esi, edi
	cmp	edx, esi
	mov	rbp, rbp
	jle	.label_2861
	jmp	.label_2203
.label_2885:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x2f0]
	mov	cl, al
	movsx	edx, cl
	cmp	edx, 0
	mov	rbp, rbp
	jge	.label_2906
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x54]
	mov	cl, al
	lea	rdi, [rdi]
	movsx	eax, cl
	mov	edx, dword ptr [rbp - 0x54]
	mov	cl, dl
	movsx	edx, cl
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x2f0]
	mov	cl, sil
	movsx	edi, cl
	mov	rbp, rbp
	add	edx, edi
	cmp	eax, edx
	mov	rbp, rbp
	jle	.label_2861
	lea	rsi, [rsi]
	jmp	.label_2203
.label_2906:
	mov	eax, dword ptr [rbp - 0x54]
	mov	cl, al
	lea	rdi, [rdi]
	movsx	eax, cl
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x2f0]
	mov	rsp, rsp
	mov	cl, dl
	movsx	esi, cl
	add	eax, esi
	mov	rdx, qword ptr [rbp - 0x2f0]
	mov	cl, dl
	movsx	esi, cl
	cmp	eax, esi
	mov	rbp, rbp
	jl	.label_2861
.label_2203:
	mov	eax, dword ptr [rbp - 0x54]
	mov	cl, al
	movsx	eax, cl
	mov	rdx, qword ptr [rbp - 0x2f0]
	mov	cl, dl
	movsx	esi, cl
	lea	rdi, [rdi]
	add	eax, esi
	mov	rbp, rbp
	cmp	eax, -0x80
	lea	rsi, [rsi]
	jl	.label_2861
	mov	rbp, rbp
	mov	eax, 0x7f
	mov	ecx, dword ptr [rbp - 0x54]
	mov	dl, cl
	movsx	ecx, dl
	mov	rsi, qword ptr [rbp - 0x2f0]
	mov	dl, sil
	mov	rsp, rsp
	movsx	edi, dl
	add	ecx, edi
	mov	rbp, rbp
	cmp	eax, ecx
	jge	.label_2949
.label_2861:
	mov	al, 1
	mov	ecx, dword ptr [rbp - 0x54]
	nop	
	mov	dl, cl
	mov	rbp, rbp
	movsx	ecx, dl
	mov	rsi, qword ptr [rbp - 0x2f0]
	lea	rdi, [rdi]
	mov	dl, sil
	movsx	edi, dl
	add	ecx, edi
	lea	rsi, [rsi]
	mov	dl, cl
	lea	rdi, [rdi]
	movsx	ecx, dl
	mov	dword ptr [rbp - 0x44c], ecx
	test	al, 1
	jne	.label_1939
	jmp	.label_1950
.label_2949:
	xor	eax, eax
	lea	rdi, [rdi]
	mov	cl, al
	mov	eax, dword ptr [rbp - 0x54]
	mov	dl, al
	nop	
	movsx	eax, dl
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x2f0]
	lea	rdi, [rdi]
	mov	dl, sil
	lea	rsi, [rsi]
	movsx	edi, dl
	add	eax, edi
	lea	rsi, [rsi]
	mov	dl, al
	movsx	eax, dl
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x44c], eax
	lea	rdi, [rdi]
	test	cl, 1
	jne	.label_1939
	jmp	.label_1950
.label_2844:
	lea	rdi, [rdi]
	mov	al, 1
	test	al, 1
	lea	rsi, [rsi]
	jne	.label_2015
	jmp	.label_3673
.label_2015:
	cmp	qword ptr [rbp - 0x2f0], 0
	mov	rbp, rbp
	jge	.label_2986
	movabs	rax, 0x8000000000000000
	movsxd	rcx, dword ptr [rbp - 0x54]
	sub	rax, qword ptr [rbp - 0x2f0]
	cmp	rcx, rax
	jl	.label_2990
	jmp	.label_2998
.label_2986:
	mov	rsp, rsp
	movabs	rax, 0x7fffffffffffffff
	sub	rax, qword ptr [rbp - 0x2f0]
	movsxd	rcx, dword ptr [rbp - 0x54]
	cmp	rax, rcx
	mov	rsp, rsp
	jl	.label_2990
	jmp	.label_2998
.label_3673:
	cmp	dword ptr [rbp - 0x54], 0
	mov	rbp, rbp
	jge	.label_3009
	nop	
	mov	rax, qword ptr [rbp - 0x2f0]
	movsxd	rcx, dword ptr [rbp - 0x54]
	add	rcx, qword ptr [rbp - 0x2f0]
	cmp	rax, rcx
	jle	.label_2990
	lea	rdi, [rdi]
	jmp	.label_2998
.label_3009:
	nop	
	cmp	qword ptr [rbp - 0x2f0], 0
	mov	rsp, rsp
	jge	.label_3021
	movsxd	rax, dword ptr [rbp - 0x54]
	lea	rdi, [rdi]
	movsxd	rcx, dword ptr [rbp - 0x54]
	lea	rdi, [rdi]
	add	rcx, qword ptr [rbp - 0x2f0]
	lea	rdi, [rdi]
	cmp	rax, rcx
	lea	rdi, [rdi]
	jle	.label_2990
	jmp	.label_2998
.label_3021:
	movsxd	rax, dword ptr [rbp - 0x54]
	add	rax, qword ptr [rbp - 0x2f0]
	cmp	rax, qword ptr [rbp - 0x2f0]
	mov	rbp, rbp
	jl	.label_2990
.label_2998:
	movsxd	rax, dword ptr [rbp - 0x54]
	add	rax, qword ptr [rbp - 0x2f0]
	cmp	rax, -0x80
	lea	rdi, [rdi]
	jl	.label_2990
	mov	eax, 0x7f
	mov	ecx, eax
	mov	rsp, rsp
	movsxd	rdx, dword ptr [rbp - 0x54]
	lea	rsi, [rsi]
	add	rdx, qword ptr [rbp - 0x2f0]
	mov	rbp, rbp
	cmp	rcx, rdx
	jge	.label_3039
.label_2990:
	mov	rsp, rsp
	mov	al, 1
	mov	rbp, rbp
	mov	ecx, dword ptr [rbp - 0x54]
	nop	
	mov	rdx, qword ptr [rbp - 0x2f0]
	nop	
	mov	esi, edx
	nop	
	add	ecx, esi
	mov	dil, cl
	movsx	ecx, dil
	mov	dword ptr [rbp - 0x44c], ecx
	test	al, 1
	jne	.label_1939
	jmp	.label_1950
.label_3039:
	xor	eax, eax
	mov	rsp, rsp
	mov	cl, al
	nop	
	mov	eax, dword ptr [rbp - 0x54]
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x2f0]
	mov	esi, edx
	add	eax, esi
	mov	dil, al
	mov	rsp, rsp
	movsx	eax, dil
	mov	dword ptr [rbp - 0x44c], eax
	test	cl, 1
	jne	.label_1939
	mov	rsp, rsp
	jmp	.label_1950
.label_2837:
	mov	rsp, rsp
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_3073
	jmp	.label_3076
.label_3073:
	nop	
	xor	eax, eax
	lea	rsi, [rsi]
	mov	cl, al
	test	cl, 1
	jne	.label_3078
	jmp	.label_3082
.label_3078:
	mov	al, 1
	mov	rbp, rbp
	test	al, 1
	mov	rsp, rsp
	jne	.label_3083
	mov	rbp, rbp
	jmp	.label_2749
.label_3083:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x2f0]
	lea	rdi, [rdi]
	mov	cx, ax
	lea	rdi, [rdi]
	movsx	edx, cx
	cmp	edx, 0
	jge	.label_3089
	mov	eax, 0x80000000
	mov	ecx, dword ptr [rbp - 0x54]
	mov	dx, cx
	movsx	ecx, dx
	mov	rsi, qword ptr [rbp - 0x2f0]
	mov	dx, si
	lea	rsi, [rsi]
	movsx	edi, dx
	lea	rdi, [rdi]
	sub	eax, edi
	cmp	ecx, eax
	lea	rdi, [rdi]
	jl	.label_3096
	jmp	.label_3121
.label_3089:
	lea	rsi, [rsi]
	mov	eax, 0x7fffffff
	nop	
	mov	rcx, qword ptr [rbp - 0x2f0]
	mov	rbp, rbp
	mov	dx, cx
	movsx	esi, dx
	mov	rbp, rbp
	sub	eax, esi
	nop	
	mov	esi, dword ptr [rbp - 0x54]
	mov	rbp, rbp
	mov	dx, si
	movsx	esi, dx
	cmp	eax, esi
	jl	.label_3096
	mov	rsp, rsp
	jmp	.label_3121
.label_2749:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x54]
	lea	rdi, [rdi]
	mov	cx, ax
	mov	rsp, rsp
	movsx	eax, cx
	lea	rsi, [rsi]
	cmp	eax, 0
	lea	rdi, [rdi]
	jge	.label_3124
	mov	rax, qword ptr [rbp - 0x2f0]
	lea	rsi, [rsi]
	mov	cx, ax
	movsx	edx, cx
	mov	esi, dword ptr [rbp - 0x54]
	mov	cx, si
	lea	rdi, [rdi]
	movsx	esi, cx
	mov	rax, qword ptr [rbp - 0x2f0]
	mov	cx, ax
	mov	rbp, rbp
	movsx	edi, cx
	mov	rbp, rbp
	add	esi, edi
	nop	
	cmp	edx, esi
	jle	.label_3096
	nop	
	jmp	.label_3121
.label_3124:
	mov	rax, qword ptr [rbp - 0x2f0]
	lea	rsi, [rsi]
	mov	cx, ax
	mov	rbp, rbp
	movsx	edx, cx
	mov	rsp, rsp
	cmp	edx, 0
	jge	.label_3086
	mov	eax, dword ptr [rbp - 0x54]
	mov	cx, ax
	movsx	eax, cx
	mov	edx, dword ptr [rbp - 0x54]
	mov	cx, dx
	movsx	edx, cx
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x2f0]
	mov	cx, si
	movsx	edi, cx
	add	edx, edi
	nop	
	cmp	eax, edx
	jle	.label_3096
	jmp	.label_3121
.label_3086:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x54]
	mov	cx, ax
	movsx	eax, cx
	nop	
	mov	rdx, qword ptr [rbp - 0x2f0]
	mov	cx, dx
	mov	rsp, rsp
	movsx	esi, cx
	mov	rbp, rbp
	add	eax, esi
	mov	rdx, qword ptr [rbp - 0x2f0]
	mov	cx, dx
	lea	rdi, [rdi]
	movsx	esi, cx
	nop	
	cmp	eax, esi
	lea	rsi, [rsi]
	jl	.label_3096
.label_3121:
	nop	
	mov	eax, dword ptr [rbp - 0x54]
	lea	rsi, [rsi]
	mov	cx, ax
	lea	rdi, [rdi]
	movsx	eax, cx
	mov	rdx, qword ptr [rbp - 0x2f0]
	mov	cx, dx
	nop	
	movsx	esi, cx
	add	eax, esi
	cmp	eax, 0xffff8000
	jl	.label_3096
	mov	eax, 0x7fff
	mov	ecx, dword ptr [rbp - 0x54]
	mov	dx, cx
	nop	
	movsx	ecx, dx
	mov	rsi, qword ptr [rbp - 0x2f0]
	mov	dx, si
	nop	
	movsx	edi, dx
	add	ecx, edi
	mov	rsp, rsp
	cmp	eax, ecx
	mov	rbp, rbp
	jge	.label_3170
.label_3096:
	mov	al, 1
	mov	ecx, dword ptr [rbp - 0x54]
	lea	rsi, [rsi]
	mov	dx, cx
	nop	
	movsx	ecx, dx
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x2f0]
	mov	dx, si
	movsx	edi, dx
	nop	
	add	ecx, edi
	mov	rsp, rsp
	mov	dx, cx
	movsx	ecx, dx
	mov	dword ptr [rbp - 0x44c], ecx
	test	al, 1
	jne	.label_1939
	jmp	.label_1950
.label_3170:
	xor	eax, eax
	mov	rsp, rsp
	mov	cl, al
	mov	eax, dword ptr [rbp - 0x54]
	mov	rsp, rsp
	mov	dx, ax
	movsx	eax, dx
	nop	
	mov	rsi, qword ptr [rbp - 0x2f0]
	lea	rdi, [rdi]
	mov	dx, si
	movsx	edi, dx
	add	eax, edi
	lea	rsi, [rsi]
	mov	dx, ax
	lea	rdi, [rdi]
	movsx	eax, dx
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x44c], eax
	test	cl, 1
	mov	rbp, rbp
	jne	.label_1939
	lea	rdi, [rdi]
	jmp	.label_1950
.label_3082:
	lea	rdi, [rdi]
	mov	al, 1
	test	al, 1
	lea	rsi, [rsi]
	jne	.label_3227
	lea	rdi, [rdi]
	jmp	.label_3233
.label_3227:
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0x2f0], 0
	mov	rbp, rbp
	jge	.label_3236
	movabs	rax, 0x8000000000000000
	lea	rsi, [rsi]
	movsxd	rcx, dword ptr [rbp - 0x54]
	sub	rax, qword ptr [rbp - 0x2f0]
	cmp	rcx, rax
	lea	rdi, [rdi]
	jl	.label_3246
	jmp	.label_3244
.label_3236:
	mov	rsp, rsp
	movabs	rax, 0x7fffffffffffffff
	sub	rax, qword ptr [rbp - 0x2f0]
	mov	rbp, rbp
	movsxd	rcx, dword ptr [rbp - 0x54]
	lea	rdi, [rdi]
	cmp	rax, rcx
	jl	.label_3246
	mov	rbp, rbp
	jmp	.label_3244
.label_3233:
	lea	rsi, [rsi]
	cmp	dword ptr [rbp - 0x54], 0
	jge	.label_3257
	mov	rax, qword ptr [rbp - 0x2f0]
	mov	rbp, rbp
	movsxd	rcx, dword ptr [rbp - 0x54]
	add	rcx, qword ptr [rbp - 0x2f0]
	cmp	rax, rcx
	lea	rsi, [rsi]
	jle	.label_3246
	jmp	.label_3244
.label_3257:
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x2f0], 0
	jge	.label_3268
	movsxd	rax, dword ptr [rbp - 0x54]
	movsxd	rcx, dword ptr [rbp - 0x54]
	lea	rsi, [rsi]
	add	rcx, qword ptr [rbp - 0x2f0]
	cmp	rax, rcx
	jle	.label_3246
	jmp	.label_3244
.label_3268:
	movsxd	rax, dword ptr [rbp - 0x54]
	nop	
	add	rax, qword ptr [rbp - 0x2f0]
	cmp	rax, qword ptr [rbp - 0x2f0]
	nop	
	jl	.label_3246
.label_3244:
	movsxd	rax, dword ptr [rbp - 0x54]
	add	rax, qword ptr [rbp - 0x2f0]
	lea	rsi, [rsi]
	cmp	rax, -0x8000
	jl	.label_3246
	lea	rsi, [rsi]
	mov	eax, 0x7fff
	mov	ecx, eax
	movsxd	rdx, dword ptr [rbp - 0x54]
	add	rdx, qword ptr [rbp - 0x2f0]
	mov	rsp, rsp
	cmp	rcx, rdx
	jge	.label_3281
.label_3246:
	mov	al, 1
	mov	rbp, rbp
	mov	ecx, dword ptr [rbp - 0x54]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x2f0]
	nop	
	mov	esi, edx
	lea	rsi, [rsi]
	add	ecx, esi
	nop	
	mov	di, cx
	lea	rdi, [rdi]
	movsx	ecx, di
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x44c], ecx
	test	al, 1
	nop	
	jne	.label_1939
	nop	
	jmp	.label_1950
.label_3281:
	xor	eax, eax
	mov	cl, al
	mov	eax, dword ptr [rbp - 0x54]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x2f0]
	mov	esi, edx
	mov	rsp, rsp
	add	eax, esi
	mov	di, ax
	nop	
	movsx	eax, di
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x44c], eax
	lea	rsi, [rsi]
	test	cl, 1
	jne	.label_1939
	nop	
	jmp	.label_1950
.label_3076:
	mov	al, 1
	test	al, 1
	jne	.label_3306
	jmp	.label_3309
.label_3306:
	lea	rdi, [rdi]
	xor	eax, eax
	mov	cl, al
	mov	rsp, rsp
	test	cl, 1
	mov	rsp, rsp
	jne	.label_3310
	lea	rsi, [rsi]
	jmp	.label_3323
.label_3310:
	mov	rbp, rbp
	mov	al, 1
	lea	rsi, [rsi]
	test	al, 1
	mov	rbp, rbp
	jne	.label_3327
	mov	rsp, rsp
	jmp	.label_3333
.label_3327:
	mov	rax, qword ptr [rbp - 0x2f0]
	lea	rsi, [rsi]
	mov	ecx, eax
	nop	
	cmp	ecx, 0
	jge	.label_3336
	mov	eax, 0x80000000
	lea	rsi, [rsi]
	mov	ecx, dword ptr [rbp - 0x54]
	nop	
	mov	rdx, qword ptr [rbp - 0x2f0]
	mov	esi, edx
	mov	rbp, rbp
	sub	eax, esi
	cmp	ecx, eax
	lea	rdi, [rdi]
	jl	.label_2489
	jmp	.label_2732
.label_3336:
	mov	rbp, rbp
	mov	eax, 0x7fffffff
	mov	rcx, qword ptr [rbp - 0x2f0]
	mov	rsp, rsp
	mov	edx, ecx
	sub	eax, edx
	cmp	eax, dword ptr [rbp - 0x54]
	nop	
	jl	.label_2489
	jmp	.label_2732
.label_3333:
	mov	rbp, rbp
	cmp	dword ptr [rbp - 0x54], 0
	jge	.label_2549
	mov	rax, qword ptr [rbp - 0x2f0]
	mov	rbp, rbp
	mov	ecx, eax
	mov	edx, dword ptr [rbp - 0x54]
	mov	rax, qword ptr [rbp - 0x2f0]
	lea	rsi, [rsi]
	mov	esi, eax
	mov	rsp, rsp
	add	edx, esi
	lea	rdi, [rdi]
	cmp	ecx, edx
	mov	rbp, rbp
	jle	.label_2489
	jmp	.label_2732
.label_2549:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x2f0]
	lea	rsi, [rsi]
	mov	ecx, eax
	cmp	ecx, 0
	jge	.label_3370
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x54]
	mov	rsp, rsp
	mov	ecx, dword ptr [rbp - 0x54]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x2f0]
	nop	
	mov	esi, edx
	mov	rbp, rbp
	add	ecx, esi
	cmp	eax, ecx
	jle	.label_2489
	jmp	.label_2732
.label_3370:
	nop	
	mov	eax, dword ptr [rbp - 0x54]
	mov	rcx, qword ptr [rbp - 0x2f0]
	mov	edx, ecx
	add	eax, edx
	mov	rcx, qword ptr [rbp - 0x2f0]
	mov	edx, ecx
	cmp	eax, edx
	jl	.label_2489
.label_2732:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x54]
	mov	rcx, qword ptr [rbp - 0x2f0]
	mov	edx, ecx
	add	eax, edx
	mov	rbp, rbp
	cmp	eax, 0x80000000
	nop	
	jl	.label_2489
	mov	eax, 0x7fffffff
	mov	ecx, dword ptr [rbp - 0x54]
	mov	rdx, qword ptr [rbp - 0x2f0]
	mov	esi, edx
	add	ecx, esi
	lea	rdi, [rdi]
	cmp	eax, ecx
	lea	rdi, [rdi]
	jge	.label_3398
.label_2489:
	mov	al, 1
	mov	rsp, rsp
	mov	ecx, dword ptr [rbp - 0x54]
	mov	rdx, qword ptr [rbp - 0x2f0]
	mov	rsp, rsp
	mov	esi, edx
	add	ecx, esi
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x44c], ecx
	test	al, 1
	jne	.label_1939
	mov	rbp, rbp
	jmp	.label_1950
.label_3398:
	lea	rdi, [rdi]
	xor	eax, eax
	nop	
	mov	cl, al
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x54]
	nop	
	mov	rdx, qword ptr [rbp - 0x2f0]
	mov	esi, edx
	mov	rsp, rsp
	add	eax, esi
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x44c], eax
	test	cl, 1
	jne	.label_1939
	jmp	.label_1950
.label_3323:
	mov	rsp, rsp
	mov	al, 1
	test	al, 1
	mov	rbp, rbp
	jne	.label_3421
	jmp	.label_3426
.label_3421:
	cmp	qword ptr [rbp - 0x2f0], 0
	jge	.label_3429
	mov	rbp, rbp
	movabs	rax, 0x8000000000000000
	lea	rsi, [rsi]
	movsxd	rcx, dword ptr [rbp - 0x54]
	mov	rbp, rbp
	sub	rax, qword ptr [rbp - 0x2f0]
	lea	rdi, [rdi]
	cmp	rcx, rax
	jl	.label_3052
	jmp	.label_3291
.label_3429:
	movabs	rax, 0x7fffffffffffffff
	sub	rax, qword ptr [rbp - 0x2f0]
	nop	
	movsxd	rcx, dword ptr [rbp - 0x54]
	lea	rdi, [rdi]
	cmp	rax, rcx
	jl	.label_3052
	nop	
	jmp	.label_3291
.label_3426:
	cmp	dword ptr [rbp - 0x54], 0
	jge	.label_3450
	mov	rax, qword ptr [rbp - 0x2f0]
	mov	rsp, rsp
	movsxd	rcx, dword ptr [rbp - 0x54]
	add	rcx, qword ptr [rbp - 0x2f0]
	cmp	rax, rcx
	lea	rsi, [rsi]
	jle	.label_3052
	nop	
	jmp	.label_3291
.label_3450:
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x2f0], 0
	jge	.label_3466
	movsxd	rax, dword ptr [rbp - 0x54]
	lea	rsi, [rsi]
	movsxd	rcx, dword ptr [rbp - 0x54]
	mov	rsp, rsp
	add	rcx, qword ptr [rbp - 0x2f0]
	lea	rsi, [rsi]
	cmp	rax, rcx
	jle	.label_3052
	mov	rsp, rsp
	jmp	.label_3291
.label_3466:
	nop	
	movsxd	rax, dword ptr [rbp - 0x54]
	add	rax, qword ptr [rbp - 0x2f0]
	cmp	rax, qword ptr [rbp - 0x2f0]
	jl	.label_3052
.label_3291:
	movsxd	rax, dword ptr [rbp - 0x54]
	add	rax, qword ptr [rbp - 0x2f0]
	cmp	rax, -0x80000000
	jl	.label_3052
	mov	rsp, rsp
	mov	eax, 0x7fffffff
	lea	rdi, [rdi]
	mov	ecx, eax
	mov	rsp, rsp
	movsxd	rdx, dword ptr [rbp - 0x54]
	lea	rsi, [rsi]
	add	rdx, qword ptr [rbp - 0x2f0]
	mov	rbp, rbp
	cmp	rcx, rdx
	lea	rsi, [rsi]
	jge	.label_3492
.label_3052:
	lea	rsi, [rsi]
	mov	al, 1
	nop	
	mov	ecx, dword ptr [rbp - 0x54]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x2f0]
	lea	rsi, [rsi]
	mov	esi, edx
	mov	rbp, rbp
	add	ecx, esi
	mov	dword ptr [rbp - 0x44c], ecx
	test	al, 1
	mov	rbp, rbp
	jne	.label_1939
	jmp	.label_1950
.label_3492:
	mov	rbp, rbp
	xor	eax, eax
	mov	cl, al
	mov	eax, dword ptr [rbp - 0x54]
	mov	rdx, qword ptr [rbp - 0x2f0]
	lea	rsi, [rsi]
	mov	esi, edx
	add	eax, esi
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x44c], eax
	test	cl, 1
	jne	.label_1939
	nop	
	jmp	.label_1950
.label_3309:
	xor	eax, eax
	mov	rsp, rsp
	mov	cl, al
	test	cl, 1
	jne	.label_3523
	lea	rsi, [rsi]
	jmp	.label_3527
.label_3523:
	mov	rbp, rbp
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_3685
	mov	rsp, rsp
	jmp	.label_3536
.label_3685:
	lea	rdi, [rdi]
	mov	al, 1
	test	al, 1
	lea	rsi, [rsi]
	jne	.label_3538
	jmp	.label_3543
.label_3538:
	cmp	qword ptr [rbp - 0x2f0], 0
	jge	.label_3544
	movabs	rax, 0x8000000000000000
	lea	rdi, [rdi]
	movsxd	rcx, dword ptr [rbp - 0x54]
	lea	rdi, [rdi]
	sub	rax, qword ptr [rbp - 0x2f0]
	cmp	rcx, rax
	jl	.label_3549
	jmp	.label_3557
.label_3544:
	mov	rbp, rbp
	movabs	rax, 0x7fffffffffffffff
	sub	rax, qword ptr [rbp - 0x2f0]
	movsxd	rcx, dword ptr [rbp - 0x54]
	cmp	rax, rcx
	lea	rsi, [rsi]
	jl	.label_3549
	nop	
	jmp	.label_3557
.label_3543:
	movsxd	rax, dword ptr [rbp - 0x54]
	cmp	rax, 0
	jge	.label_3570
	mov	rax, qword ptr [rbp - 0x2f0]
	mov	rsp, rsp
	movsxd	rcx, dword ptr [rbp - 0x54]
	add	rcx, qword ptr [rbp - 0x2f0]
	cmp	rax, rcx
	jle	.label_3549
	nop	
	jmp	.label_3557
.label_3570:
	cmp	qword ptr [rbp - 0x2f0], 0
	nop	
	jge	.label_3583
	movsxd	rax, dword ptr [rbp - 0x54]
	lea	rsi, [rsi]
	movsxd	rcx, dword ptr [rbp - 0x54]
	lea	rdi, [rdi]
	add	rcx, qword ptr [rbp - 0x2f0]
	nop	
	cmp	rax, rcx
	nop	
	jle	.label_3549
	mov	rsp, rsp
	jmp	.label_3557
.label_3583:
	lea	rsi, [rsi]
	movsxd	rax, dword ptr [rbp - 0x54]
	add	rax, qword ptr [rbp - 0x2f0]
	nop	
	cmp	rax, qword ptr [rbp - 0x2f0]
	lea	rdi, [rdi]
	jl	.label_3549
.label_3557:
	mov	rsp, rsp
	movabs	rax, 0x8000000000000000
	lea	rsi, [rsi]
	movsxd	rcx, dword ptr [rbp - 0x54]
	mov	rsp, rsp
	add	rcx, qword ptr [rbp - 0x2f0]
	cmp	rcx, rax
	jl	.label_3549
	mov	rbp, rbp
	movabs	rax, 0x7fffffffffffffff
	movsxd	rcx, dword ptr [rbp - 0x54]
	nop	
	add	rcx, qword ptr [rbp - 0x2f0]
	cmp	rax, rcx
	lea	rsi, [rsi]
	jge	.label_3612
.label_3549:
	lea	rsi, [rsi]
	mov	al, 1
	lea	rsi, [rsi]
	movsxd	rcx, dword ptr [rbp - 0x54]
	add	rcx, qword ptr [rbp - 0x2f0]
	mov	edx, ecx
	mov	dword ptr [rbp - 0x44c], edx
	test	al, 1
	lea	rdi, [rdi]
	jne	.label_1939
	jmp	.label_1950
.label_3612:
	xor	eax, eax
	mov	rsp, rsp
	mov	cl, al
	mov	rsp, rsp
	movsxd	rdx, dword ptr [rbp - 0x54]
	nop	
	add	rdx, qword ptr [rbp - 0x2f0]
	mov	eax, edx
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x44c], eax
	test	cl, 1
	mov	rsp, rsp
	jne	.label_1939
	jmp	.label_1950
.label_3536:
	mov	al, 1
	test	al, 1
	mov	rsp, rsp
	jne	.label_3631
	mov	rbp, rbp
	jmp	.label_3633
.label_3631:
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x2f0], 0
	lea	rdi, [rdi]
	jge	.label_3637
	lea	rsi, [rsi]
	movabs	rax, 0x8000000000000000
	mov	rsp, rsp
	movsxd	rcx, dword ptr [rbp - 0x54]
	lea	rsi, [rsi]
	sub	rax, qword ptr [rbp - 0x2f0]
	cmp	rcx, rax
	jl	.label_3643
	jmp	.label_3652
.label_3637:
	lea	rdi, [rdi]
	movabs	rax, 0x7fffffffffffffff
	mov	rsp, rsp
	sub	rax, qword ptr [rbp - 0x2f0]
	movsxd	rcx, dword ptr [rbp - 0x54]
	cmp	rax, rcx
	jl	.label_3643
	lea	rdi, [rdi]
	jmp	.label_3652
.label_3633:
	cmp	dword ptr [rbp - 0x54], 0
	jge	.label_3666
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x2f0]
	movsxd	rcx, dword ptr [rbp - 0x54]
	add	rcx, qword ptr [rbp - 0x2f0]
	cmp	rax, rcx
	jle	.label_3643
	nop	
	jmp	.label_3652
.label_3666:
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x2f0], 0
	lea	rdi, [rdi]
	jge	.label_2603
	mov	rbp, rbp
	movsxd	rax, dword ptr [rbp - 0x54]
	movsxd	rcx, dword ptr [rbp - 0x54]
	nop	
	add	rcx, qword ptr [rbp - 0x2f0]
	cmp	rax, rcx
	jle	.label_3643
	jmp	.label_3652
.label_2603:
	lea	rdi, [rdi]
	movsxd	rax, dword ptr [rbp - 0x54]
	nop	
	add	rax, qword ptr [rbp - 0x2f0]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rbp - 0x2f0]
	nop	
	jl	.label_3643
.label_3652:
	lea	rsi, [rsi]
	movabs	rax, 0x8000000000000000
	mov	rsp, rsp
	movsxd	rcx, dword ptr [rbp - 0x54]
	mov	rsp, rsp
	add	rcx, qword ptr [rbp - 0x2f0]
	lea	rsi, [rsi]
	cmp	rcx, rax
	lea	rdi, [rdi]
	jl	.label_3643
	mov	rsp, rsp
	movabs	rax, 0x7fffffffffffffff
	movsxd	rcx, dword ptr [rbp - 0x54]
	mov	rbp, rbp
	add	rcx, qword ptr [rbp - 0x2f0]
	cmp	rax, rcx
	lea	rdi, [rdi]
	jge	.label_3700
.label_3643:
	lea	rsi, [rsi]
	mov	al, 1
	mov	rbp, rbp
	movsxd	rcx, dword ptr [rbp - 0x54]
	mov	rsp, rsp
	add	rcx, qword ptr [rbp - 0x2f0]
	mov	edx, ecx
	mov	dword ptr [rbp - 0x44c], edx
	test	al, 1
	jne	.label_1939
	lea	rsi, [rsi]
	jmp	.label_1950
.label_3700:
	xor	eax, eax
	mov	rbp, rbp
	mov	cl, al
	movsxd	rdx, dword ptr [rbp - 0x54]
	add	rdx, qword ptr [rbp - 0x2f0]
	mov	eax, edx
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x44c], eax
	test	cl, 1
	lea	rsi, [rsi]
	jne	.label_1939
	jmp	.label_1950
.label_3527:
	lea	rdi, [rdi]
	xor	eax, eax
	lea	rdi, [rdi]
	mov	cl, al
	test	cl, 1
	jne	.label_2959
	mov	rsp, rsp
	jmp	.label_2362
.label_2959:
	lea	rdi, [rdi]
	mov	al, 1
	test	al, 1
	jne	.label_3729
	jmp	.label_3733
.label_3729:
	cmp	qword ptr [rbp - 0x2f0], 0
	mov	rbp, rbp
	jge	.label_3736
	movabs	rax, 0x8000000000000000
	lea	rdi, [rdi]
	movsxd	rcx, dword ptr [rbp - 0x54]
	lea	rsi, [rsi]
	sub	rax, qword ptr [rbp - 0x2f0]
	lea	rdi, [rdi]
	cmp	rcx, rax
	mov	rsp, rsp
	jl	.label_2690
	nop	
	jmp	.label_3747
.label_3736:
	movabs	rax, 0x7fffffffffffffff
	sub	rax, qword ptr [rbp - 0x2f0]
	nop	
	movsxd	rcx, dword ptr [rbp - 0x54]
	lea	rsi, [rsi]
	cmp	rax, rcx
	jl	.label_2690
	jmp	.label_3747
.label_3733:
	mov	rbp, rbp
	movsxd	rax, dword ptr [rbp - 0x54]
	mov	rbp, rbp
	cmp	rax, 0
	mov	rsp, rsp
	jge	.label_3758
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x2f0]
	lea	rdi, [rdi]
	movsxd	rcx, dword ptr [rbp - 0x54]
	lea	rsi, [rsi]
	add	rcx, qword ptr [rbp - 0x2f0]
	lea	rdi, [rdi]
	cmp	rax, rcx
	jle	.label_2690
	jmp	.label_3747
.label_3758:
	cmp	qword ptr [rbp - 0x2f0], 0
	jge	.label_3776
	movsxd	rax, dword ptr [rbp - 0x54]
	nop	
	movsxd	rcx, dword ptr [rbp - 0x54]
	mov	rsp, rsp
	add	rcx, qword ptr [rbp - 0x2f0]
	nop	
	cmp	rax, rcx
	jle	.label_2690
	mov	rsp, rsp
	jmp	.label_3747
.label_3776:
	mov	rsp, rsp
	movsxd	rax, dword ptr [rbp - 0x54]
	nop	
	add	rax, qword ptr [rbp - 0x2f0]
	cmp	rax, qword ptr [rbp - 0x2f0]
	jl	.label_2690
.label_3747:
	movabs	rax, 0x8000000000000000
	lea	rsi, [rsi]
	movsxd	rcx, dword ptr [rbp - 0x54]
	add	rcx, qword ptr [rbp - 0x2f0]
	cmp	rcx, rax
	mov	rbp, rbp
	jl	.label_2690
	lea	rdi, [rdi]
	movabs	rax, 0x7fffffffffffffff
	lea	rdi, [rdi]
	movsxd	rcx, dword ptr [rbp - 0x54]
	nop	
	add	rcx, qword ptr [rbp - 0x2f0]
	cmp	rax, rcx
	lea	rsi, [rsi]
	jge	.label_3797
.label_2690:
	mov	rsp, rsp
	mov	al, 1
	movsxd	rcx, dword ptr [rbp - 0x54]
	nop	
	add	rcx, qword ptr [rbp - 0x2f0]
	mov	edx, ecx
	mov	dword ptr [rbp - 0x44c], edx
	mov	rbp, rbp
	test	al, 1
	jne	.label_1939
	mov	rsp, rsp
	jmp	.label_1950
.label_3797:
	xor	eax, eax
	mov	cl, al
	movsxd	rdx, dword ptr [rbp - 0x54]
	add	rdx, qword ptr [rbp - 0x2f0]
	mov	rbp, rbp
	mov	eax, edx
	mov	dword ptr [rbp - 0x44c], eax
	test	cl, 1
	jne	.label_1939
	jmp	.label_1950
.label_2362:
	mov	al, 1
	test	al, 1
	mov	rsp, rsp
	jne	.label_3817
	jmp	.label_3818
.label_3817:
	cmp	qword ptr [rbp - 0x2f0], 0
	jge	.label_3820
	mov	rsp, rsp
	movabs	rax, 0x8000000000000000
	lea	rsi, [rsi]
	movsxd	rcx, dword ptr [rbp - 0x54]
	sub	rax, qword ptr [rbp - 0x2f0]
	nop	
	cmp	rcx, rax
	jl	.label_3392
	lea	rsi, [rsi]
	jmp	.label_3834
.label_3820:
	movabs	rax, 0x7fffffffffffffff
	lea	rdi, [rdi]
	sub	rax, qword ptr [rbp - 0x2f0]
	movsxd	rcx, dword ptr [rbp - 0x54]
	mov	rsp, rsp
	cmp	rax, rcx
	lea	rdi, [rdi]
	jl	.label_3392
	jmp	.label_3834
.label_3818:
	cmp	dword ptr [rbp - 0x54], 0
	jge	.label_3844
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x2f0]
	mov	rbp, rbp
	movsxd	rcx, dword ptr [rbp - 0x54]
	mov	rbp, rbp
	add	rcx, qword ptr [rbp - 0x2f0]
	mov	rsp, rsp
	cmp	rax, rcx
	nop	
	jle	.label_3392
	mov	rbp, rbp
	jmp	.label_3834
.label_3844:
	cmp	qword ptr [rbp - 0x2f0], 0
	jge	.label_3857
	nop	
	movsxd	rax, dword ptr [rbp - 0x54]
	movsxd	rcx, dword ptr [rbp - 0x54]
	lea	rdi, [rdi]
	add	rcx, qword ptr [rbp - 0x2f0]
	cmp	rax, rcx
	jle	.label_3392
	mov	rbp, rbp
	jmp	.label_3834
.label_3857:
	nop	
	movsxd	rax, dword ptr [rbp - 0x54]
	mov	rsp, rsp
	add	rax, qword ptr [rbp - 0x2f0]
	cmp	rax, qword ptr [rbp - 0x2f0]
	jl	.label_3392
.label_3834:
	movabs	rax, 0x8000000000000000
	movsxd	rcx, dword ptr [rbp - 0x54]
	add	rcx, qword ptr [rbp - 0x2f0]
	cmp	rcx, rax
	mov	rbp, rbp
	jl	.label_3392
	nop	
	movabs	rax, 0x7fffffffffffffff
	movsxd	rcx, dword ptr [rbp - 0x54]
	add	rcx, qword ptr [rbp - 0x2f0]
	lea	rdi, [rdi]
	cmp	rax, rcx
	jge	.label_1922
.label_3392:
	mov	al, 1
	movsxd	rcx, dword ptr [rbp - 0x54]
	lea	rsi, [rsi]
	add	rcx, qword ptr [rbp - 0x2f0]
	mov	edx, ecx
	mov	dword ptr [rbp - 0x44c], edx
	test	al, 1
	nop	
	jne	.label_1939
	mov	rsp, rsp
	jmp	.label_1950
.label_1922:
	nop	
	xor	eax, eax
	mov	cl, al
	movsxd	rdx, dword ptr [rbp - 0x54]
	mov	rbp, rbp
	add	rdx, qword ptr [rbp - 0x2f0]
	mov	eax, edx
	mov	dword ptr [rbp - 0x44c], eax
	nop	
	test	cl, 1
	jne	.label_1939
.label_1950:
	lea	rdi, [rdi]
	xor	eax, eax
	mov	cl, al
	mov	rsp, rsp
	test	cl, 1
	lea	rdi, [rdi]
	jne	.label_1965
	nop	
	jmp	.label_1975
.label_1965:
	mov	rbp, rbp
	xor	eax, eax
	mov	cl, al
	mov	rsp, rsp
	test	cl, 1
	mov	rbp, rbp
	jne	.label_1979
	mov	rsp, rsp
	jmp	.label_2882
.label_1979:
	mov	al, 1
	lea	rdi, [rdi]
	test	al, 1
	lea	rsi, [rsi]
	jne	.label_2312
	mov	rsp, rsp
	jmp	.label_2000
.label_2312:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x2e8]
	mov	rbp, rbp
	mov	cl, al
	lea	rsi, [rsi]
	movsx	edx, cl
	cmp	edx, 0
	jge	.label_2002
	lea	rdi, [rdi]
	mov	eax, 0x80000000
	lea	rsi, [rsi]
	mov	ecx, dword ptr [rbp - 0x58]
	mov	rbp, rbp
	mov	dl, cl
	movsx	ecx, dl
	mov	rsi, qword ptr [rbp - 0x2e8]
	mov	dl, sil
	movsx	edi, dl
	mov	rbp, rbp
	sub	eax, edi
	cmp	ecx, eax
	jl	.label_2012
	jmp	.label_2026
.label_2002:
	mov	eax, 0x7fffffff
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x2e8]
	mov	rsp, rsp
	mov	dl, cl
	lea	rdi, [rdi]
	movsx	esi, dl
	sub	eax, esi
	mov	rsp, rsp
	mov	esi, dword ptr [rbp - 0x58]
	mov	dl, sil
	mov	rsp, rsp
	movsx	esi, dl
	cmp	eax, esi
	jl	.label_2012
	mov	rsp, rsp
	jmp	.label_2026
.label_2000:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x58]
	mov	cl, al
	mov	rbp, rbp
	movsx	eax, cl
	cmp	eax, 0
	mov	rbp, rbp
	jge	.label_2041
	mov	rax, qword ptr [rbp - 0x2e8]
	lea	rdi, [rdi]
	mov	cl, al
	nop	
	movsx	edx, cl
	nop	
	mov	esi, dword ptr [rbp - 0x58]
	mov	cl, sil
	movsx	esi, cl
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x2e8]
	mov	cl, al
	movsx	edi, cl
	add	esi, edi
	lea	rsi, [rsi]
	cmp	edx, esi
	jle	.label_2012
	nop	
	jmp	.label_2026
.label_2041:
	mov	rax, qword ptr [rbp - 0x2e8]
	mov	rsp, rsp
	mov	cl, al
	mov	rbp, rbp
	movsx	edx, cl
	cmp	edx, 0
	mov	rbp, rbp
	jge	.label_2062
	mov	eax, dword ptr [rbp - 0x58]
	lea	rsi, [rsi]
	mov	cl, al
	mov	rbp, rbp
	movsx	eax, cl
	mov	rsp, rsp
	mov	edx, dword ptr [rbp - 0x58]
	lea	rdi, [rdi]
	mov	cl, dl
	movsx	edx, cl
	mov	rsi, qword ptr [rbp - 0x2e8]
	lea	rsi, [rsi]
	mov	cl, sil
	lea	rdi, [rdi]
	movsx	edi, cl
	add	edx, edi
	cmp	eax, edx
	mov	rbp, rbp
	jle	.label_2012
	mov	rsp, rsp
	jmp	.label_2026
.label_2062:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x58]
	mov	cl, al
	movsx	eax, cl
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x2e8]
	mov	rsp, rsp
	mov	cl, dl
	mov	rbp, rbp
	movsx	esi, cl
	lea	rdi, [rdi]
	add	eax, esi
	mov	rdx, qword ptr [rbp - 0x2e8]
	mov	rsp, rsp
	mov	cl, dl
	mov	rbp, rbp
	movsx	esi, cl
	cmp	eax, esi
	jl	.label_2012
.label_2026:
	mov	eax, dword ptr [rbp - 0x58]
	mov	cl, al
	movsx	eax, cl
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x2e8]
	mov	rsp, rsp
	mov	cl, dl
	movsx	esi, cl
	add	eax, esi
	cmp	eax, -0x80
	mov	rbp, rbp
	jl	.label_2012
	mov	eax, 0x7f
	nop	
	mov	ecx, dword ptr [rbp - 0x58]
	lea	rdi, [rdi]
	mov	dl, cl
	movsx	ecx, dl
	mov	rsi, qword ptr [rbp - 0x2e8]
	mov	dl, sil
	lea	rdi, [rdi]
	movsx	edi, dl
	add	ecx, edi
	cmp	eax, ecx
	jge	.label_2123
.label_2012:
	mov	rbp, rbp
	mov	al, 1
	lea	rsi, [rsi]
	mov	ecx, dword ptr [rbp - 0x58]
	lea	rsi, [rsi]
	mov	dl, cl
	lea	rdi, [rdi]
	movsx	ecx, dl
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x2e8]
	mov	dl, sil
	lea	rdi, [rdi]
	movsx	edi, dl
	mov	rsp, rsp
	add	ecx, edi
	mov	dl, cl
	lea	rsi, [rsi]
	movsx	ecx, dl
	mov	dword ptr [rbp - 0x450], ecx
	lea	rdi, [rdi]
	test	al, 1
	jne	.label_1939
	lea	rsi, [rsi]
	jmp	.label_1977
.label_2123:
	xor	eax, eax
	nop	
	mov	cl, al
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x58]
	mov	rbp, rbp
	mov	dl, al
	nop	
	movsx	eax, dl
	mov	rsi, qword ptr [rbp - 0x2e8]
	lea	rsi, [rsi]
	mov	dl, sil
	mov	rbp, rbp
	movsx	edi, dl
	add	eax, edi
	mov	dl, al
	movsx	eax, dl
	mov	dword ptr [rbp - 0x450], eax
	nop	
	test	cl, 1
	lea	rdi, [rdi]
	jne	.label_1939
	jmp	.label_1977
.label_2882:
	lea	rdi, [rdi]
	mov	al, 1
	test	al, 1
	mov	rsp, rsp
	jne	.label_2175
	nop	
	jmp	.label_2182
.label_2175:
	cmp	qword ptr [rbp - 0x2e8], 0
	mov	rsp, rsp
	jge	.label_2183
	movabs	rax, 0x8000000000000000
	lea	rsi, [rsi]
	movsxd	rcx, dword ptr [rbp - 0x58]
	lea	rdi, [rdi]
	sub	rax, qword ptr [rbp - 0x2e8]
	cmp	rcx, rax
	jl	.label_2187
	jmp	.label_2204
.label_2183:
	movabs	rax, 0x7fffffffffffffff
	sub	rax, qword ptr [rbp - 0x2e8]
	mov	rsp, rsp
	movsxd	rcx, dword ptr [rbp - 0x58]
	cmp	rax, rcx
	lea	rdi, [rdi]
	jl	.label_2187
	lea	rdi, [rdi]
	jmp	.label_2204
.label_2182:
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x58], 0
	jge	.label_2208
	mov	rax, qword ptr [rbp - 0x2e8]
	lea	rsi, [rsi]
	movsxd	rcx, dword ptr [rbp - 0x58]
	mov	rsp, rsp
	add	rcx, qword ptr [rbp - 0x2e8]
	mov	rbp, rbp
	cmp	rax, rcx
	mov	rsp, rsp
	jle	.label_2187
	mov	rbp, rbp
	jmp	.label_2204
.label_2208:
	cmp	qword ptr [rbp - 0x2e8], 0
	mov	rsp, rsp
	jge	.label_2228
	nop	
	movsxd	rax, dword ptr [rbp - 0x58]
	mov	rsp, rsp
	movsxd	rcx, dword ptr [rbp - 0x58]
	add	rcx, qword ptr [rbp - 0x2e8]
	cmp	rax, rcx
	jle	.label_2187
	jmp	.label_2204
.label_2228:
	lea	rdi, [rdi]
	movsxd	rax, dword ptr [rbp - 0x58]
	nop	
	add	rax, qword ptr [rbp - 0x2e8]
	mov	rsp, rsp
	cmp	rax, qword ptr [rbp - 0x2e8]
	jl	.label_2187
.label_2204:
	mov	rbp, rbp
	movsxd	rax, dword ptr [rbp - 0x58]
	mov	rsp, rsp
	add	rax, qword ptr [rbp - 0x2e8]
	lea	rdi, [rdi]
	cmp	rax, -0x80
	jl	.label_2187
	nop	
	mov	eax, 0x7f
	mov	ecx, eax
	nop	
	movsxd	rdx, dword ptr [rbp - 0x58]
	mov	rbp, rbp
	add	rdx, qword ptr [rbp - 0x2e8]
	nop	
	cmp	rcx, rdx
	jge	.label_2263
.label_2187:
	mov	al, 1
	mov	ecx, dword ptr [rbp - 0x58]
	mov	rdx, qword ptr [rbp - 0x2e8]
	lea	rsi, [rsi]
	mov	esi, edx
	mov	rbp, rbp
	add	ecx, esi
	mov	dil, cl
	movsx	ecx, dil
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x450], ecx
	test	al, 1
	jne	.label_1939
	lea	rdi, [rdi]
	jmp	.label_1977
.label_2263:
	xor	eax, eax
	mov	cl, al
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x58]
	mov	rdx, qword ptr [rbp - 0x2e8]
	mov	esi, edx
	add	eax, esi
	mov	rsp, rsp
	mov	dil, al
	movsx	eax, dil
	nop	
	mov	dword ptr [rbp - 0x450], eax
	mov	rbp, rbp
	test	cl, 1
	jne	.label_1939
	jmp	.label_1977
.label_1975:
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	mov	rsp, rsp
	jne	.label_2295
	mov	rsp, rsp
	jmp	.label_3811
.label_2295:
	xor	eax, eax
	nop	
	mov	cl, al
	lea	rdi, [rdi]
	test	cl, 1
	jne	.label_2305
	lea	rsi, [rsi]
	jmp	.label_2313
.label_2305:
	mov	al, 1
	test	al, 1
	lea	rdi, [rdi]
	jne	.label_2316
	jmp	.label_1904
.label_2316:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x2e8]
	nop	
	mov	cx, ax
	lea	rdi, [rdi]
	movsx	edx, cx
	cmp	edx, 0
	nop	
	jge	.label_1916
	mov	eax, 0x80000000
	mov	ecx, dword ptr [rbp - 0x58]
	mov	dx, cx
	mov	rbp, rbp
	movsx	ecx, dx
	mov	rsi, qword ptr [rbp - 0x2e8]
	mov	dx, si
	mov	rbp, rbp
	movsx	edi, dx
	mov	rsp, rsp
	sub	eax, edi
	cmp	ecx, eax
	lea	rdi, [rdi]
	jl	.label_1994
	mov	rbp, rbp
	jmp	.label_2332
.label_1916:
	mov	eax, 0x7fffffff
	mov	rcx, qword ptr [rbp - 0x2e8]
	mov	rbp, rbp
	mov	dx, cx
	movsx	esi, dx
	mov	rbp, rbp
	sub	eax, esi
	mov	rsp, rsp
	mov	esi, dword ptr [rbp - 0x58]
	mov	dx, si
	lea	rsi, [rsi]
	movsx	esi, dx
	cmp	eax, esi
	mov	rsp, rsp
	jl	.label_1994
	jmp	.label_2332
.label_1904:
	nop	
	mov	eax, dword ptr [rbp - 0x58]
	mov	cx, ax
	movsx	eax, cx
	cmp	eax, 0
	nop	
	jge	.label_2352
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x2e8]
	mov	rbp, rbp
	mov	cx, ax
	mov	rsp, rsp
	movsx	edx, cx
	nop	
	mov	esi, dword ptr [rbp - 0x58]
	mov	rbp, rbp
	mov	cx, si
	movsx	esi, cx
	mov	rax, qword ptr [rbp - 0x2e8]
	lea	rdi, [rdi]
	mov	cx, ax
	nop	
	movsx	edi, cx
	lea	rdi, [rdi]
	add	esi, edi
	mov	rbp, rbp
	cmp	edx, esi
	jle	.label_1994
	jmp	.label_2332
.label_2352:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x2e8]
	mov	rsp, rsp
	mov	cx, ax
	movsx	edx, cx
	cmp	edx, 0
	mov	rsp, rsp
	jge	.label_2370
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x58]
	mov	cx, ax
	nop	
	movsx	eax, cx
	mov	edx, dword ptr [rbp - 0x58]
	mov	cx, dx
	movsx	edx, cx
	mov	rsi, qword ptr [rbp - 0x2e8]
	lea	rsi, [rsi]
	mov	cx, si
	nop	
	movsx	edi, cx
	add	edx, edi
	nop	
	cmp	eax, edx
	jle	.label_1994
	jmp	.label_2332
.label_2370:
	mov	eax, dword ptr [rbp - 0x58]
	mov	rbp, rbp
	mov	cx, ax
	movsx	eax, cx
	mov	rdx, qword ptr [rbp - 0x2e8]
	nop	
	mov	cx, dx
	movsx	esi, cx
	add	eax, esi
	mov	rdx, qword ptr [rbp - 0x2e8]
	mov	rsp, rsp
	mov	cx, dx
	lea	rdi, [rdi]
	movsx	esi, cx
	mov	rsp, rsp
	cmp	eax, esi
	mov	rbp, rbp
	jl	.label_1994
.label_2332:
	mov	eax, dword ptr [rbp - 0x58]
	mov	rsp, rsp
	mov	cx, ax
	nop	
	movsx	eax, cx
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x2e8]
	mov	rbp, rbp
	mov	cx, dx
	nop	
	movsx	esi, cx
	mov	rbp, rbp
	add	eax, esi
	cmp	eax, 0xffff8000
	lea	rdi, [rdi]
	jl	.label_1994
	lea	rsi, [rsi]
	mov	eax, 0x7fff
	mov	rsp, rsp
	mov	ecx, dword ptr [rbp - 0x58]
	mov	dx, cx
	movsx	ecx, dx
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x2e8]
	mov	dx, si
	movsx	edi, dx
	add	ecx, edi
	cmp	eax, ecx
	mov	rbp, rbp
	jge	.label_2409
.label_1994:
	mov	al, 1
	mov	ecx, dword ptr [rbp - 0x58]
	mov	dx, cx
	nop	
	movsx	ecx, dx
	mov	rsi, qword ptr [rbp - 0x2e8]
	mov	rbp, rbp
	mov	dx, si
	movsx	edi, dx
	lea	rsi, [rsi]
	add	ecx, edi
	lea	rdi, [rdi]
	mov	dx, cx
	lea	rsi, [rsi]
	movsx	ecx, dx
	mov	dword ptr [rbp - 0x450], ecx
	lea	rdi, [rdi]
	test	al, 1
	jne	.label_1939
	jmp	.label_1977
.label_2409:
	mov	rbp, rbp
	xor	eax, eax
	mov	cl, al
	mov	eax, dword ptr [rbp - 0x58]
	mov	dx, ax
	movsx	eax, dx
	nop	
	mov	rsi, qword ptr [rbp - 0x2e8]
	lea	rsi, [rsi]
	mov	dx, si
	movsx	edi, dx
	nop	
	add	eax, edi
	mov	dx, ax
	movsx	eax, dx
	mov	dword ptr [rbp - 0x450], eax
	mov	rbp, rbp
	test	cl, 1
	jne	.label_1939
	mov	rbp, rbp
	jmp	.label_1977
.label_2313:
	mov	al, 1
	test	al, 1
	mov	rbp, rbp
	jne	.label_2452
	lea	rdi, [rdi]
	jmp	.label_2455
.label_2452:
	cmp	qword ptr [rbp - 0x2e8], 0
	nop	
	jge	.label_2460
	lea	rdi, [rdi]
	movabs	rax, 0x8000000000000000
	movsxd	rcx, dword ptr [rbp - 0x58]
	sub	rax, qword ptr [rbp - 0x2e8]
	nop	
	cmp	rcx, rax
	jl	.label_2467
	jmp	.label_2495
.label_2460:
	nop	
	movabs	rax, 0x7fffffffffffffff
	sub	rax, qword ptr [rbp - 0x2e8]
	nop	
	movsxd	rcx, dword ptr [rbp - 0x58]
	cmp	rax, rcx
	mov	rbp, rbp
	jl	.label_2467
	mov	rsp, rsp
	jmp	.label_2495
.label_2455:
	mov	rbp, rbp
	cmp	dword ptr [rbp - 0x58], 0
	jge	.label_2498
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x2e8]
	movsxd	rcx, dword ptr [rbp - 0x58]
	lea	rsi, [rsi]
	add	rcx, qword ptr [rbp - 0x2e8]
	cmp	rax, rcx
	jle	.label_2467
	mov	rbp, rbp
	jmp	.label_2495
.label_2498:
	cmp	qword ptr [rbp - 0x2e8], 0
	jge	.label_2511
	movsxd	rax, dword ptr [rbp - 0x58]
	nop	
	movsxd	rcx, dword ptr [rbp - 0x58]
	lea	rsi, [rsi]
	add	rcx, qword ptr [rbp - 0x2e8]
	lea	rdi, [rdi]
	cmp	rax, rcx
	lea	rsi, [rsi]
	jle	.label_2467
	mov	rbp, rbp
	jmp	.label_2495
.label_2511:
	movsxd	rax, dword ptr [rbp - 0x58]
	add	rax, qword ptr [rbp - 0x2e8]
	cmp	rax, qword ptr [rbp - 0x2e8]
	jl	.label_2467
.label_2495:
	lea	rdi, [rdi]
	movsxd	rax, dword ptr [rbp - 0x58]
	add	rax, qword ptr [rbp - 0x2e8]
	mov	rbp, rbp
	cmp	rax, -0x8000
	nop	
	jl	.label_2467
	mov	eax, 0x7fff
	mov	ecx, eax
	movsxd	rdx, dword ptr [rbp - 0x58]
	nop	
	add	rdx, qword ptr [rbp - 0x2e8]
	lea	rdi, [rdi]
	cmp	rcx, rdx
	nop	
	jge	.label_2540
.label_2467:
	lea	rsi, [rsi]
	mov	al, 1
	lea	rdi, [rdi]
	mov	ecx, dword ptr [rbp - 0x58]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x2e8]
	mov	rbp, rbp
	mov	esi, edx
	add	ecx, esi
	mov	di, cx
	movsx	ecx, di
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x450], ecx
	test	al, 1
	mov	rsp, rsp
	jne	.label_1939
	mov	rbp, rbp
	jmp	.label_1977
.label_2540:
	xor	eax, eax
	mov	cl, al
	mov	eax, dword ptr [rbp - 0x58]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x2e8]
	nop	
	mov	esi, edx
	nop	
	add	eax, esi
	mov	di, ax
	nop	
	movsx	eax, di
	mov	dword ptr [rbp - 0x450], eax
	test	cl, 1
	mov	rsp, rsp
	jne	.label_1939
	jmp	.label_1977
.label_3811:
	mov	al, 1
	mov	rbp, rbp
	test	al, 1
	jne	.label_2582
	lea	rsi, [rsi]
	jmp	.label_2586
.label_2582:
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_2590
	jmp	.label_2594
.label_2590:
	mov	rbp, rbp
	mov	al, 1
	lea	rdi, [rdi]
	test	al, 1
	jne	.label_2596
	jmp	.label_2601
.label_2596:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x2e8]
	mov	ecx, eax
	mov	rsp, rsp
	cmp	ecx, 0
	jge	.label_2604
	mov	eax, 0x80000000
	mov	rsp, rsp
	mov	ecx, dword ptr [rbp - 0x58]
	mov	rdx, qword ptr [rbp - 0x2e8]
	mov	esi, edx
	nop	
	sub	eax, esi
	nop	
	cmp	ecx, eax
	jl	.label_2607
	jmp	.label_2618
.label_2604:
	mov	rbp, rbp
	mov	eax, 0x7fffffff
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x2e8]
	mov	edx, ecx
	lea	rdi, [rdi]
	sub	eax, edx
	cmp	eax, dword ptr [rbp - 0x58]
	mov	rsp, rsp
	jl	.label_2607
	jmp	.label_2618
.label_2601:
	nop	
	cmp	dword ptr [rbp - 0x58], 0
	mov	rsp, rsp
	jge	.label_2626
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x2e8]
	nop	
	mov	ecx, eax
	mov	rbp, rbp
	mov	edx, dword ptr [rbp - 0x58]
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x2e8]
	mov	esi, eax
	add	edx, esi
	cmp	ecx, edx
	lea	rsi, [rsi]
	jle	.label_2607
	jmp	.label_2618
.label_2626:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x2e8]
	mov	ecx, eax
	nop	
	cmp	ecx, 0
	lea	rsi, [rsi]
	jge	.label_2641
	mov	eax, dword ptr [rbp - 0x58]
	mov	ecx, dword ptr [rbp - 0x58]
	mov	rdx, qword ptr [rbp - 0x2e8]
	mov	esi, edx
	mov	rsp, rsp
	add	ecx, esi
	cmp	eax, ecx
	jle	.label_2607
	mov	rsp, rsp
	jmp	.label_2618
.label_2641:
	mov	eax, dword ptr [rbp - 0x58]
	nop	
	mov	rcx, qword ptr [rbp - 0x2e8]
	mov	edx, ecx
	mov	rsp, rsp
	add	eax, edx
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x2e8]
	mov	rsp, rsp
	mov	edx, ecx
	mov	rsp, rsp
	cmp	eax, edx
	lea	rsi, [rsi]
	jl	.label_2607
.label_2618:
	mov	eax, dword ptr [rbp - 0x58]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x2e8]
	mov	edx, ecx
	add	eax, edx
	cmp	eax, 0x80000000
	jl	.label_2607
	mov	rsp, rsp
	mov	eax, 0x7fffffff
	mov	ecx, dword ptr [rbp - 0x58]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x2e8]
	mov	esi, edx
	add	ecx, esi
	lea	rdi, [rdi]
	cmp	eax, ecx
	mov	rbp, rbp
	jge	.label_2671
.label_2607:
	mov	rsp, rsp
	mov	al, 1
	mov	rbp, rbp
	mov	ecx, dword ptr [rbp - 0x58]
	mov	rdx, qword ptr [rbp - 0x2e8]
	lea	rsi, [rsi]
	mov	esi, edx
	add	ecx, esi
	mov	dword ptr [rbp - 0x450], ecx
	test	al, 1
	mov	rbp, rbp
	jne	.label_1939
	lea	rsi, [rsi]
	jmp	.label_1977
.label_2671:
	lea	rsi, [rsi]
	xor	eax, eax
	mov	cl, al
	mov	eax, dword ptr [rbp - 0x58]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x2e8]
	mov	esi, edx
	lea	rdi, [rdi]
	add	eax, esi
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x450], eax
	lea	rsi, [rsi]
	test	cl, 1
	lea	rdi, [rdi]
	jne	.label_1939
	jmp	.label_1977
.label_2594:
	mov	al, 1
	test	al, 1
	jne	.label_2705
	mov	rsp, rsp
	jmp	.label_2709
.label_2705:
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x2e8], 0
	mov	rsp, rsp
	jge	.label_2712
	movabs	rax, 0x8000000000000000
	movsxd	rcx, dword ptr [rbp - 0x58]
	sub	rax, qword ptr [rbp - 0x2e8]
	mov	rbp, rbp
	cmp	rcx, rax
	jl	.label_2380
	lea	rsi, [rsi]
	jmp	.label_2720
.label_2712:
	movabs	rax, 0x7fffffffffffffff
	sub	rax, qword ptr [rbp - 0x2e8]
	movsxd	rcx, dword ptr [rbp - 0x58]
	lea	rsi, [rsi]
	cmp	rax, rcx
	nop	
	jl	.label_2380
	lea	rsi, [rsi]
	jmp	.label_2720
.label_2709:
	cmp	dword ptr [rbp - 0x58], 0
	jge	.label_2729
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x2e8]
	movsxd	rcx, dword ptr [rbp - 0x58]
	lea	rdi, [rdi]
	add	rcx, qword ptr [rbp - 0x2e8]
	cmp	rax, rcx
	mov	rbp, rbp
	jle	.label_2380
	mov	rbp, rbp
	jmp	.label_2720
.label_2729:
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x2e8], 0
	mov	rbp, rbp
	jge	.label_2741
	mov	rbp, rbp
	movsxd	rax, dword ptr [rbp - 0x58]
	movsxd	rcx, dword ptr [rbp - 0x58]
	lea	rdi, [rdi]
	add	rcx, qword ptr [rbp - 0x2e8]
	lea	rdi, [rdi]
	cmp	rax, rcx
	nop	
	jle	.label_2380
	jmp	.label_2720
.label_2741:
	movsxd	rax, dword ptr [rbp - 0x58]
	mov	rbp, rbp
	add	rax, qword ptr [rbp - 0x2e8]
	cmp	rax, qword ptr [rbp - 0x2e8]
	jl	.label_2380
.label_2720:
	movsxd	rax, dword ptr [rbp - 0x58]
	add	rax, qword ptr [rbp - 0x2e8]
	mov	rbp, rbp
	cmp	rax, -0x80000000
	mov	rsp, rsp
	jl	.label_2380
	lea	rdi, [rdi]
	mov	eax, 0x7fffffff
	lea	rdi, [rdi]
	mov	ecx, eax
	movsxd	rdx, dword ptr [rbp - 0x58]
	add	rdx, qword ptr [rbp - 0x2e8]
	cmp	rcx, rdx
	jge	.label_2900
.label_2380:
	mov	rsp, rsp
	mov	al, 1
	lea	rsi, [rsi]
	mov	ecx, dword ptr [rbp - 0x58]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x2e8]
	mov	rsp, rsp
	mov	esi, edx
	lea	rdi, [rdi]
	add	ecx, esi
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x450], ecx
	test	al, 1
	jne	.label_1939
	lea	rdi, [rdi]
	jmp	.label_1977
.label_2900:
	xor	eax, eax
	mov	rbp, rbp
	mov	cl, al
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x58]
	mov	rdx, qword ptr [rbp - 0x2e8]
	mov	esi, edx
	nop	
	add	eax, esi
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x450], eax
	mov	rbp, rbp
	test	cl, 1
	lea	rsi, [rsi]
	jne	.label_1939
	lea	rdi, [rdi]
	jmp	.label_1977
.label_2586:
	lea	rsi, [rsi]
	xor	eax, eax
	mov	cl, al
	mov	rsp, rsp
	test	cl, 1
	jne	.label_2911
	mov	rsp, rsp
	jmp	.label_2814
.label_2911:
	nop	
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_2817
	jmp	.label_2822
.label_2817:
	nop	
	mov	al, 1
	test	al, 1
	jne	.label_2824
	lea	rdi, [rdi]
	jmp	.label_2826
.label_2824:
	cmp	qword ptr [rbp - 0x2e8], 0
	mov	rbp, rbp
	jge	.label_2829
	mov	rbp, rbp
	movabs	rax, 0x8000000000000000
	lea	rsi, [rsi]
	movsxd	rcx, dword ptr [rbp - 0x58]
	nop	
	sub	rax, qword ptr [rbp - 0x2e8]
	mov	rbp, rbp
	cmp	rcx, rax
	nop	
	jl	.label_2832
	jmp	.label_2836
.label_2829:
	movabs	rax, 0x7fffffffffffffff
	nop	
	sub	rax, qword ptr [rbp - 0x2e8]
	movsxd	rcx, dword ptr [rbp - 0x58]
	cmp	rax, rcx
	lea	rsi, [rsi]
	jl	.label_2832
	mov	rbp, rbp
	jmp	.label_2836
.label_2826:
	movsxd	rax, dword ptr [rbp - 0x58]
	cmp	rax, 0
	lea	rdi, [rdi]
	jge	.label_2849
	mov	rax, qword ptr [rbp - 0x2e8]
	movsxd	rcx, dword ptr [rbp - 0x58]
	lea	rsi, [rsi]
	add	rcx, qword ptr [rbp - 0x2e8]
	cmp	rax, rcx
	mov	rsp, rsp
	jle	.label_2832
	jmp	.label_2836
.label_2849:
	cmp	qword ptr [rbp - 0x2e8], 0
	mov	rbp, rbp
	jge	.label_2864
	movsxd	rax, dword ptr [rbp - 0x58]
	nop	
	movsxd	rcx, dword ptr [rbp - 0x58]
	add	rcx, qword ptr [rbp - 0x2e8]
	cmp	rax, rcx
	jle	.label_2832
	nop	
	jmp	.label_2836
.label_2864:
	mov	rsp, rsp
	movsxd	rax, dword ptr [rbp - 0x58]
	add	rax, qword ptr [rbp - 0x2e8]
	cmp	rax, qword ptr [rbp - 0x2e8]
	lea	rdi, [rdi]
	jl	.label_2832
.label_2836:
	nop	
	movabs	rax, 0x8000000000000000
	movsxd	rcx, dword ptr [rbp - 0x58]
	add	rcx, qword ptr [rbp - 0x2e8]
	cmp	rcx, rax
	jl	.label_2832
	nop	
	movabs	rax, 0x7fffffffffffffff
	lea	rdi, [rdi]
	movsxd	rcx, dword ptr [rbp - 0x58]
	add	rcx, qword ptr [rbp - 0x2e8]
	lea	rsi, [rsi]
	cmp	rax, rcx
	mov	rbp, rbp
	jge	.label_2404
.label_2832:
	lea	rdi, [rdi]
	mov	al, 1
	nop	
	movsxd	rcx, dword ptr [rbp - 0x58]
	add	rcx, qword ptr [rbp - 0x2e8]
	mov	edx, ecx
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x450], edx
	test	al, 1
	mov	rbp, rbp
	jne	.label_1939
	mov	rbp, rbp
	jmp	.label_1977
.label_2404:
	xor	eax, eax
	mov	cl, al
	mov	rbp, rbp
	movsxd	rdx, dword ptr [rbp - 0x58]
	add	rdx, qword ptr [rbp - 0x2e8]
	mov	rsp, rsp
	mov	eax, edx
	mov	dword ptr [rbp - 0x450], eax
	test	cl, 1
	lea	rsi, [rsi]
	jne	.label_1939
	mov	rbp, rbp
	jmp	.label_1977
.label_2822:
	mov	rbp, rbp
	mov	al, 1
	test	al, 1
	jne	.label_2917
	jmp	.label_2922
.label_2917:
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x2e8], 0
	jge	.label_2923
	movabs	rax, 0x8000000000000000
	lea	rsi, [rsi]
	movsxd	rcx, dword ptr [rbp - 0x58]
	nop	
	sub	rax, qword ptr [rbp - 0x2e8]
	mov	rsp, rsp
	cmp	rcx, rax
	lea	rdi, [rdi]
	jl	.label_2926
	jmp	.label_2935
.label_2923:
	movabs	rax, 0x7fffffffffffffff
	lea	rsi, [rsi]
	sub	rax, qword ptr [rbp - 0x2e8]
	movsxd	rcx, dword ptr [rbp - 0x58]
	nop	
	cmp	rax, rcx
	jl	.label_2926
	jmp	.label_2935
.label_2922:
	mov	rbp, rbp
	cmp	dword ptr [rbp - 0x58], 0
	jge	.label_2947
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x2e8]
	nop	
	movsxd	rcx, dword ptr [rbp - 0x58]
	add	rcx, qword ptr [rbp - 0x2e8]
	cmp	rax, rcx
	lea	rsi, [rsi]
	jle	.label_2926
	mov	rsp, rsp
	jmp	.label_2935
.label_2947:
	cmp	qword ptr [rbp - 0x2e8], 0
	jge	.label_2954
	movsxd	rax, dword ptr [rbp - 0x58]
	movsxd	rcx, dword ptr [rbp - 0x58]
	add	rcx, qword ptr [rbp - 0x2e8]
	lea	rsi, [rsi]
	cmp	rax, rcx
	jle	.label_2926
	mov	rbp, rbp
	jmp	.label_2935
.label_2954:
	movsxd	rax, dword ptr [rbp - 0x58]
	add	rax, qword ptr [rbp - 0x2e8]
	lea	rdi, [rdi]
	cmp	rax, qword ptr [rbp - 0x2e8]
	jl	.label_2926
.label_2935:
	mov	rbp, rbp
	movabs	rax, 0x8000000000000000
	movsxd	rcx, dword ptr [rbp - 0x58]
	add	rcx, qword ptr [rbp - 0x2e8]
	cmp	rcx, rax
	mov	rsp, rsp
	jl	.label_2926
	mov	rbp, rbp
	movabs	rax, 0x7fffffffffffffff
	mov	rsp, rsp
	movsxd	rcx, dword ptr [rbp - 0x58]
	nop	
	add	rcx, qword ptr [rbp - 0x2e8]
	lea	rsi, [rsi]
	cmp	rax, rcx
	jge	.label_2978
.label_2926:
	mov	al, 1
	movsxd	rcx, dword ptr [rbp - 0x58]
	add	rcx, qword ptr [rbp - 0x2e8]
	mov	edx, ecx
	mov	dword ptr [rbp - 0x450], edx
	test	al, 1
	jne	.label_1939
	mov	rbp, rbp
	jmp	.label_1977
.label_2978:
	mov	rbp, rbp
	xor	eax, eax
	mov	cl, al
	mov	rsp, rsp
	movsxd	rdx, dword ptr [rbp - 0x58]
	lea	rsi, [rsi]
	add	rdx, qword ptr [rbp - 0x2e8]
	mov	eax, edx
	mov	dword ptr [rbp - 0x450], eax
	test	cl, 1
	jne	.label_1939
	lea	rsi, [rsi]
	jmp	.label_1977
.label_2814:
	lea	rsi, [rsi]
	xor	eax, eax
	lea	rdi, [rdi]
	mov	cl, al
	test	cl, 1
	nop	
	jne	.label_2186
	jmp	.label_3011
.label_2186:
	mov	rbp, rbp
	mov	al, 1
	test	al, 1
	jne	.label_3012
	lea	rsi, [rsi]
	jmp	.label_3016
.label_3012:
	cmp	qword ptr [rbp - 0x2e8], 0
	lea	rsi, [rsi]
	jge	.label_3018
	movabs	rax, 0x8000000000000000
	movsxd	rcx, dword ptr [rbp - 0x58]
	sub	rax, qword ptr [rbp - 0x2e8]
	cmp	rcx, rax
	lea	rdi, [rdi]
	jl	.label_2278
	jmp	.label_3031
.label_3018:
	movabs	rax, 0x7fffffffffffffff
	lea	rdi, [rdi]
	sub	rax, qword ptr [rbp - 0x2e8]
	nop	
	movsxd	rcx, dword ptr [rbp - 0x58]
	cmp	rax, rcx
	jl	.label_2278
	lea	rsi, [rsi]
	jmp	.label_3031
.label_3016:
	movsxd	rax, dword ptr [rbp - 0x58]
	cmp	rax, 0
	jge	.label_3036
	mov	rax, qword ptr [rbp - 0x2e8]
	mov	rsp, rsp
	movsxd	rcx, dword ptr [rbp - 0x58]
	lea	rsi, [rsi]
	add	rcx, qword ptr [rbp - 0x2e8]
	cmp	rax, rcx
	jle	.label_2278
	lea	rdi, [rdi]
	jmp	.label_3031
.label_3036:
	cmp	qword ptr [rbp - 0x2e8], 0
	jge	.label_2492
	mov	rbp, rbp
	movsxd	rax, dword ptr [rbp - 0x58]
	lea	rsi, [rsi]
	movsxd	rcx, dword ptr [rbp - 0x58]
	mov	rbp, rbp
	add	rcx, qword ptr [rbp - 0x2e8]
	cmp	rax, rcx
	jle	.label_2278
	mov	rbp, rbp
	jmp	.label_3031
.label_2492:
	lea	rdi, [rdi]
	movsxd	rax, dword ptr [rbp - 0x58]
	add	rax, qword ptr [rbp - 0x2e8]
	cmp	rax, qword ptr [rbp - 0x2e8]
	jl	.label_2278
.label_3031:
	mov	rbp, rbp
	movabs	rax, 0x8000000000000000
	lea	rdi, [rdi]
	movsxd	rcx, dword ptr [rbp - 0x58]
	add	rcx, qword ptr [rbp - 0x2e8]
	mov	rbp, rbp
	cmp	rcx, rax
	jl	.label_2278
	nop	
	movabs	rax, 0x7fffffffffffffff
	mov	rbp, rbp
	movsxd	rcx, dword ptr [rbp - 0x58]
	mov	rsp, rsp
	add	rcx, qword ptr [rbp - 0x2e8]
	lea	rdi, [rdi]
	cmp	rax, rcx
	nop	
	jge	.label_3074
.label_2278:
	mov	al, 1
	mov	rsp, rsp
	movsxd	rcx, dword ptr [rbp - 0x58]
	add	rcx, qword ptr [rbp - 0x2e8]
	mov	rsp, rsp
	mov	edx, ecx
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x450], edx
	test	al, 1
	mov	rsp, rsp
	jne	.label_1939
	lea	rdi, [rdi]
	jmp	.label_1977
.label_3074:
	xor	eax, eax
	mov	cl, al
	movsxd	rdx, dword ptr [rbp - 0x58]
	add	rdx, qword ptr [rbp - 0x2e8]
	mov	eax, edx
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x450], eax
	mov	rsp, rsp
	test	cl, 1
	jne	.label_1939
	lea	rdi, [rdi]
	jmp	.label_1977
.label_3011:
	mov	al, 1
	test	al, 1
	nop	
	jne	.label_3105
	jmp	.label_2891
.label_3105:
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x2e8], 0
	lea	rsi, [rsi]
	jge	.label_3110
	nop	
	movabs	rax, 0x8000000000000000
	lea	rsi, [rsi]
	movsxd	rcx, dword ptr [rbp - 0x58]
	mov	rsp, rsp
	sub	rax, qword ptr [rbp - 0x2e8]
	cmp	rcx, rax
	jl	.label_1990
	lea	rsi, [rsi]
	jmp	.label_3126
.label_3110:
	movabs	rax, 0x7fffffffffffffff
	sub	rax, qword ptr [rbp - 0x2e8]
	mov	rsp, rsp
	movsxd	rcx, dword ptr [rbp - 0x58]
	cmp	rax, rcx
	nop	
	jl	.label_1990
	lea	rdi, [rdi]
	jmp	.label_3126
.label_2891:
	cmp	dword ptr [rbp - 0x58], 0
	mov	rbp, rbp
	jge	.label_3138
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x2e8]
	movsxd	rcx, dword ptr [rbp - 0x58]
	nop	
	add	rcx, qword ptr [rbp - 0x2e8]
	mov	rbp, rbp
	cmp	rax, rcx
	jle	.label_1990
	jmp	.label_3126
.label_3138:
	cmp	qword ptr [rbp - 0x2e8], 0
	jge	.label_3146
	lea	rdi, [rdi]
	movsxd	rax, dword ptr [rbp - 0x58]
	mov	rsp, rsp
	movsxd	rcx, dword ptr [rbp - 0x58]
	add	rcx, qword ptr [rbp - 0x2e8]
	cmp	rax, rcx
	lea	rsi, [rsi]
	jle	.label_1990
	jmp	.label_3126
.label_3146:
	movsxd	rax, dword ptr [rbp - 0x58]
	lea	rdi, [rdi]
	add	rax, qword ptr [rbp - 0x2e8]
	nop	
	cmp	rax, qword ptr [rbp - 0x2e8]
	nop	
	jl	.label_1990
.label_3126:
	movabs	rax, 0x8000000000000000
	movsxd	rcx, dword ptr [rbp - 0x58]
	mov	rsp, rsp
	add	rcx, qword ptr [rbp - 0x2e8]
	cmp	rcx, rax
	mov	rbp, rbp
	jl	.label_1990
	lea	rsi, [rsi]
	movabs	rax, 0x7fffffffffffffff
	movsxd	rcx, dword ptr [rbp - 0x58]
	add	rcx, qword ptr [rbp - 0x2e8]
	lea	rdi, [rdi]
	cmp	rax, rcx
	mov	rsp, rsp
	jge	.label_3161
.label_1990:
	mov	al, 1
	nop	
	movsxd	rcx, dword ptr [rbp - 0x58]
	add	rcx, qword ptr [rbp - 0x2e8]
	mov	edx, ecx
	mov	dword ptr [rbp - 0x450], edx
	nop	
	test	al, 1
	lea	rsi, [rsi]
	jne	.label_1939
	nop	
	jmp	.label_1977
.label_3161:
	mov	rsp, rsp
	xor	eax, eax
	mov	cl, al
	lea	rdi, [rdi]
	movsxd	rdx, dword ptr [rbp - 0x58]
	add	rdx, qword ptr [rbp - 0x2e8]
	mov	eax, edx
	nop	
	mov	dword ptr [rbp - 0x450], eax
	lea	rdi, [rdi]
	test	cl, 1
	jne	.label_1939
.label_1977:
	xor	eax, eax
	mov	cl, al
	mov	rsp, rsp
	test	cl, 1
	mov	rbp, rbp
	jne	.label_3191
	jmp	.label_3195
.label_3191:
	lea	rdi, [rdi]
	xor	eax, eax
	mov	cl, al
	nop	
	test	cl, 1
	lea	rdi, [rdi]
	jne	.label_3197
	jmp	.label_3203
.label_3197:
	mov	al, 1
	lea	rdi, [rdi]
	test	al, 1
	lea	rsi, [rsi]
	jne	.label_3205
	jmp	.label_3211
.label_3205:
	mov	rax, qword ptr [rbp - 0x2e0]
	mov	cl, al
	movsx	edx, cl
	mov	rsp, rsp
	cmp	edx, 0
	jge	.label_3212
	mov	rsp, rsp
	mov	eax, 0x80000000
	mov	ecx, dword ptr [rbp - 0x5c]
	mov	dl, cl
	movsx	ecx, dl
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x2e0]
	lea	rsi, [rsi]
	mov	dl, sil
	movsx	edi, dl
	mov	rbp, rbp
	sub	eax, edi
	cmp	ecx, eax
	lea	rsi, [rsi]
	jl	.label_2083
	lea	rsi, [rsi]
	jmp	.label_3234
.label_3212:
	mov	eax, 0x7fffffff
	mov	rcx, qword ptr [rbp - 0x2e0]
	mov	dl, cl
	mov	rsp, rsp
	movsx	esi, dl
	sub	eax, esi
	mov	esi, dword ptr [rbp - 0x5c]
	mov	dl, sil
	nop	
	movsx	esi, dl
	nop	
	cmp	eax, esi
	jl	.label_2083
	jmp	.label_3234
.label_3211:
	nop	
	mov	eax, dword ptr [rbp - 0x5c]
	mov	cl, al
	lea	rdi, [rdi]
	movsx	eax, cl
	lea	rdi, [rdi]
	cmp	eax, 0
	jge	.label_3693
	mov	rax, qword ptr [rbp - 0x2e0]
	mov	cl, al
	lea	rdi, [rdi]
	movsx	edx, cl
	mov	esi, dword ptr [rbp - 0x5c]
	lea	rdi, [rdi]
	mov	cl, sil
	movsx	esi, cl
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x2e0]
	mov	cl, al
	mov	rbp, rbp
	movsx	edi, cl
	add	esi, edi
	nop	
	cmp	edx, esi
	jle	.label_2083
	jmp	.label_3234
.label_3693:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x2e0]
	mov	cl, al
	movsx	edx, cl
	lea	rdi, [rdi]
	cmp	edx, 0
	jge	.label_3795
	mov	eax, dword ptr [rbp - 0x5c]
	lea	rdi, [rdi]
	mov	cl, al
	mov	rbp, rbp
	movsx	eax, cl
	nop	
	mov	edx, dword ptr [rbp - 0x5c]
	nop	
	mov	cl, dl
	mov	rsp, rsp
	movsx	edx, cl
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x2e0]
	nop	
	mov	cl, sil
	lea	rsi, [rsi]
	movsx	edi, cl
	add	edx, edi
	cmp	eax, edx
	jle	.label_2083
	nop	
	jmp	.label_3234
.label_3795:
	nop	
	mov	eax, dword ptr [rbp - 0x5c]
	mov	rbp, rbp
	mov	cl, al
	mov	rbp, rbp
	movsx	eax, cl
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x2e0]
	mov	rbp, rbp
	mov	cl, dl
	movsx	esi, cl
	mov	rbp, rbp
	add	eax, esi
	mov	rdx, qword ptr [rbp - 0x2e0]
	mov	cl, dl
	lea	rsi, [rsi]
	movsx	esi, cl
	cmp	eax, esi
	lea	rdi, [rdi]
	jl	.label_2083
.label_3234:
	mov	eax, dword ptr [rbp - 0x5c]
	mov	cl, al
	lea	rdi, [rdi]
	movsx	eax, cl
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x2e0]
	lea	rsi, [rsi]
	mov	cl, dl
	nop	
	movsx	esi, cl
	mov	rsp, rsp
	add	eax, esi
	mov	rsp, rsp
	cmp	eax, -0x80
	jl	.label_2083
	mov	rbp, rbp
	mov	eax, 0x7f
	lea	rsi, [rsi]
	mov	ecx, dword ptr [rbp - 0x5c]
	mov	rbp, rbp
	mov	dl, cl
	nop	
	movsx	ecx, dl
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x2e0]
	lea	rsi, [rsi]
	mov	dl, sil
	movsx	edi, dl
	mov	rbp, rbp
	add	ecx, edi
	mov	rbp, rbp
	cmp	eax, ecx
	jge	.label_2168
.label_2083:
	lea	rdi, [rdi]
	mov	al, 1
	lea	rdi, [rdi]
	mov	ecx, dword ptr [rbp - 0x5c]
	mov	rsp, rsp
	mov	dl, cl
	movsx	ecx, dl
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x2e0]
	mov	rsp, rsp
	mov	dl, sil
	nop	
	movsx	edi, dl
	lea	rdi, [rdi]
	add	ecx, edi
	mov	dl, cl
	mov	rbp, rbp
	movsx	ecx, dl
	mov	dword ptr [rbp - 0x454], ecx
	lea	rsi, [rsi]
	test	al, 1
	mov	rbp, rbp
	jne	.label_1939
	jmp	.label_1937
.label_2168:
	xor	eax, eax
	mov	cl, al
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x5c]
	nop	
	mov	dl, al
	lea	rdi, [rdi]
	movsx	eax, dl
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x2e0]
	mov	dl, sil
	nop	
	movsx	edi, dl
	mov	rbp, rbp
	add	eax, edi
	mov	dl, al
	lea	rsi, [rsi]
	movsx	eax, dl
	nop	
	mov	dword ptr [rbp - 0x454], eax
	mov	rbp, rbp
	test	cl, 1
	jne	.label_1939
	jmp	.label_1937
.label_3203:
	mov	al, 1
	mov	rbp, rbp
	test	al, 1
	nop	
	jne	.label_3347
	lea	rdi, [rdi]
	jmp	.label_3349
.label_3347:
	cmp	qword ptr [rbp - 0x2e0], 0
	lea	rdi, [rdi]
	jge	.label_2698
	mov	rsp, rsp
	movabs	rax, 0x8000000000000000
	movsxd	rcx, dword ptr [rbp - 0x5c]
	sub	rax, qword ptr [rbp - 0x2e0]
	cmp	rcx, rax
	jl	.label_2768
	jmp	.label_2759
.label_2698:
	lea	rsi, [rsi]
	movabs	rax, 0x7fffffffffffffff
	sub	rax, qword ptr [rbp - 0x2e0]
	mov	rbp, rbp
	movsxd	rcx, dword ptr [rbp - 0x5c]
	mov	rbp, rbp
	cmp	rax, rcx
	jl	.label_2768
	mov	rbp, rbp
	jmp	.label_2759
.label_3349:
	mov	rbp, rbp
	cmp	dword ptr [rbp - 0x5c], 0
	lea	rdi, [rdi]
	jge	.label_3375
	mov	rax, qword ptr [rbp - 0x2e0]
	mov	rbp, rbp
	movsxd	rcx, dword ptr [rbp - 0x5c]
	add	rcx, qword ptr [rbp - 0x2e0]
	cmp	rax, rcx
	nop	
	jle	.label_2768
	jmp	.label_2759
.label_3375:
	cmp	qword ptr [rbp - 0x2e0], 0
	jge	.label_2748
	movsxd	rax, dword ptr [rbp - 0x5c]
	lea	rdi, [rdi]
	movsxd	rcx, dword ptr [rbp - 0x5c]
	mov	rbp, rbp
	add	rcx, qword ptr [rbp - 0x2e0]
	nop	
	cmp	rax, rcx
	jle	.label_2768
	mov	rsp, rsp
	jmp	.label_2759
.label_2748:
	lea	rsi, [rsi]
	movsxd	rax, dword ptr [rbp - 0x5c]
	lea	rsi, [rsi]
	add	rax, qword ptr [rbp - 0x2e0]
	cmp	rax, qword ptr [rbp - 0x2e0]
	mov	rsp, rsp
	jl	.label_2768
.label_2759:
	movsxd	rax, dword ptr [rbp - 0x5c]
	add	rax, qword ptr [rbp - 0x2e0]
	lea	rdi, [rdi]
	cmp	rax, -0x80
	nop	
	jl	.label_2768
	lea	rdi, [rdi]
	mov	eax, 0x7f
	mov	ecx, eax
	movsxd	rdx, dword ptr [rbp - 0x5c]
	add	rdx, qword ptr [rbp - 0x2e0]
	lea	rsi, [rsi]
	cmp	rcx, rdx
	jge	.label_1897
.label_2768:
	mov	al, 1
	lea	rdi, [rdi]
	mov	ecx, dword ptr [rbp - 0x5c]
	nop	
	mov	rdx, qword ptr [rbp - 0x2e0]
	mov	esi, edx
	add	ecx, esi
	mov	dil, cl
	lea	rdi, [rdi]
	movsx	ecx, dil
	mov	dword ptr [rbp - 0x454], ecx
	nop	
	test	al, 1
	jne	.label_1939
	mov	rsp, rsp
	jmp	.label_1937
.label_1897:
	lea	rdi, [rdi]
	xor	eax, eax
	lea	rsi, [rsi]
	mov	cl, al
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x5c]
	mov	rdx, qword ptr [rbp - 0x2e0]
	nop	
	mov	esi, edx
	lea	rsi, [rsi]
	add	eax, esi
	mov	rsp, rsp
	mov	dil, al
	movsx	eax, dil
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x454], eax
	test	cl, 1
	lea	rsi, [rsi]
	jne	.label_1939
	jmp	.label_1937
.label_3195:
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_3441
	jmp	.label_3443
.label_3441:
	xor	eax, eax
	nop	
	mov	cl, al
	test	cl, 1
	nop	
	jne	.label_3444
	mov	rbp, rbp
	jmp	.label_3153
.label_3444:
	mov	al, 1
	test	al, 1
	jne	.label_3449
	nop	
	jmp	.label_3452
.label_3449:
	nop	
	mov	rax, qword ptr [rbp - 0x2e0]
	mov	cx, ax
	lea	rsi, [rsi]
	movsx	edx, cx
	cmp	edx, 0
	mov	rbp, rbp
	jge	.label_3176
	mov	eax, 0x80000000
	mov	ecx, dword ptr [rbp - 0x5c]
	mov	rsp, rsp
	mov	dx, cx
	nop	
	movsx	ecx, dx
	nop	
	mov	rsi, qword ptr [rbp - 0x2e0]
	lea	rsi, [rsi]
	mov	dx, si
	movsx	edi, dx
	nop	
	sub	eax, edi
	nop	
	cmp	ecx, eax
	jl	.label_3226
	mov	rsp, rsp
	jmp	.label_3280
.label_3176:
	mov	eax, 0x7fffffff
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x2e0]
	mov	rsp, rsp
	mov	dx, cx
	lea	rdi, [rdi]
	movsx	esi, dx
	sub	eax, esi
	mov	esi, dword ptr [rbp - 0x5c]
	mov	dx, si
	movsx	esi, dx
	lea	rdi, [rdi]
	cmp	eax, esi
	jl	.label_3226
	nop	
	jmp	.label_3280
.label_3452:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x5c]
	mov	cx, ax
	movsx	eax, cx
	cmp	eax, 0
	jge	.label_3490
	mov	rax, qword ptr [rbp - 0x2e0]
	lea	rdi, [rdi]
	mov	cx, ax
	lea	rsi, [rsi]
	movsx	edx, cx
	mov	rsp, rsp
	mov	esi, dword ptr [rbp - 0x5c]
	mov	cx, si
	movsx	esi, cx
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x2e0]
	mov	rbp, rbp
	mov	cx, ax
	movsx	edi, cx
	add	esi, edi
	cmp	edx, esi
	jle	.label_3226
	lea	rsi, [rsi]
	jmp	.label_3280
.label_3490:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x2e0]
	mov	cx, ax
	movsx	edx, cx
	nop	
	cmp	edx, 0
	lea	rsi, [rsi]
	jge	.label_3513
	mov	eax, dword ptr [rbp - 0x5c]
	lea	rdi, [rdi]
	mov	cx, ax
	mov	rsp, rsp
	movsx	eax, cx
	lea	rdi, [rdi]
	mov	edx, dword ptr [rbp - 0x5c]
	mov	cx, dx
	lea	rdi, [rdi]
	movsx	edx, cx
	nop	
	mov	rsi, qword ptr [rbp - 0x2e0]
	mov	rsp, rsp
	mov	cx, si
	movsx	edi, cx
	add	edx, edi
	cmp	eax, edx
	nop	
	jle	.label_3226
	mov	rsp, rsp
	jmp	.label_3280
.label_3513:
	mov	eax, dword ptr [rbp - 0x5c]
	mov	cx, ax
	lea	rsi, [rsi]
	movsx	eax, cx
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x2e0]
	lea	rdi, [rdi]
	mov	cx, dx
	movsx	esi, cx
	lea	rsi, [rsi]
	add	eax, esi
	mov	rdx, qword ptr [rbp - 0x2e0]
	mov	cx, dx
	lea	rsi, [rsi]
	movsx	esi, cx
	lea	rdi, [rdi]
	cmp	eax, esi
	mov	rsp, rsp
	jl	.label_3226
.label_3280:
	mov	eax, dword ptr [rbp - 0x5c]
	mov	cx, ax
	movsx	eax, cx
	mov	rdx, qword ptr [rbp - 0x2e0]
	lea	rdi, [rdi]
	mov	cx, dx
	movsx	esi, cx
	mov	rbp, rbp
	add	eax, esi
	cmp	eax, 0xffff8000
	mov	rbp, rbp
	jl	.label_3226
	lea	rdi, [rdi]
	mov	eax, 0x7fff
	lea	rsi, [rsi]
	mov	ecx, dword ptr [rbp - 0x5c]
	mov	rbp, rbp
	mov	dx, cx
	movsx	ecx, dx
	mov	rsi, qword ptr [rbp - 0x2e0]
	nop	
	mov	dx, si
	mov	rbp, rbp
	movsx	edi, dx
	mov	rsp, rsp
	add	ecx, edi
	mov	rsp, rsp
	cmp	eax, ecx
	jge	.label_3563
.label_3226:
	mov	al, 1
	mov	ecx, dword ptr [rbp - 0x5c]
	mov	dx, cx
	lea	rdi, [rdi]
	movsx	ecx, dx
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x2e0]
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
	mov	dword ptr [rbp - 0x454], ecx
	mov	rbp, rbp
	test	al, 1
	jne	.label_1939
	jmp	.label_1937
.label_3563:
	nop	
	xor	eax, eax
	mov	cl, al
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x5c]
	lea	rsi, [rsi]
	mov	dx, ax
	movsx	eax, dx
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x2e0]
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
	mov	dword ptr [rbp - 0x454], eax
	test	cl, 1
	nop	
	jne	.label_1939
	lea	rsi, [rsi]
	jmp	.label_1937
.label_3153:
	lea	rdi, [rdi]
	mov	al, 1
	mov	rsp, rsp
	test	al, 1
	mov	rsp, rsp
	jne	.label_2144
	mov	rbp, rbp
	jmp	.label_2176
.label_2144:
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x2e0], 0
	mov	rbp, rbp
	jge	.label_3615
	lea	rsi, [rsi]
	movabs	rax, 0x8000000000000000
	movsxd	rcx, dword ptr [rbp - 0x5c]
	lea	rsi, [rsi]
	sub	rax, qword ptr [rbp - 0x2e0]
	cmp	rcx, rax
	lea	rdi, [rdi]
	jl	.label_2579
	jmp	.label_2286
.label_3615:
	movabs	rax, 0x7fffffffffffffff
	sub	rax, qword ptr [rbp - 0x2e0]
	movsxd	rcx, dword ptr [rbp - 0x5c]
	lea	rdi, [rdi]
	cmp	rax, rcx
	nop	
	jl	.label_2579
	mov	rbp, rbp
	jmp	.label_2286
.label_2176:
	nop	
	cmp	dword ptr [rbp - 0x5c], 0
	lea	rdi, [rdi]
	jge	.label_2358
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x2e0]
	movsxd	rcx, dword ptr [rbp - 0x5c]
	lea	rsi, [rsi]
	add	rcx, qword ptr [rbp - 0x2e0]
	nop	
	cmp	rax, rcx
	mov	rbp, rbp
	jle	.label_2579
	lea	rsi, [rsi]
	jmp	.label_2286
.label_2358:
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x2e0], 0
	lea	rdi, [rdi]
	jge	.label_2430
	movsxd	rax, dword ptr [rbp - 0x5c]
	mov	rsp, rsp
	movsxd	rcx, dword ptr [rbp - 0x5c]
	nop	
	add	rcx, qword ptr [rbp - 0x2e0]
	cmp	rax, rcx
	jle	.label_2579
	jmp	.label_2286
.label_2430:
	mov	rsp, rsp
	movsxd	rax, dword ptr [rbp - 0x5c]
	add	rax, qword ptr [rbp - 0x2e0]
	mov	rbp, rbp
	cmp	rax, qword ptr [rbp - 0x2e0]
	nop	
	jl	.label_2579
.label_2286:
	movsxd	rax, dword ptr [rbp - 0x5c]
	add	rax, qword ptr [rbp - 0x2e0]
	nop	
	cmp	rax, -0x8000
	jl	.label_2579
	lea	rdi, [rdi]
	mov	eax, 0x7fff
	mov	rbp, rbp
	mov	ecx, eax
	mov	rsp, rsp
	movsxd	rdx, dword ptr [rbp - 0x5c]
	mov	rsp, rsp
	add	rdx, qword ptr [rbp - 0x2e0]
	mov	rbp, rbp
	cmp	rcx, rdx
	jge	.label_2623
.label_2579:
	mov	al, 1
	mov	ecx, dword ptr [rbp - 0x5c]
	nop	
	mov	rdx, qword ptr [rbp - 0x2e0]
	mov	esi, edx
	lea	rsi, [rsi]
	add	ecx, esi
	lea	rdi, [rdi]
	mov	di, cx
	lea	rdi, [rdi]
	movsx	ecx, di
	mov	dword ptr [rbp - 0x454], ecx
	test	al, 1
	mov	rsp, rsp
	jne	.label_1939
	mov	rbp, rbp
	jmp	.label_1937
.label_2623:
	lea	rsi, [rsi]
	xor	eax, eax
	mov	cl, al
	mov	eax, dword ptr [rbp - 0x5c]
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x2e0]
	mov	esi, edx
	add	eax, esi
	mov	di, ax
	movsx	eax, di
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x454], eax
	lea	rdi, [rdi]
	test	cl, 1
	jne	.label_1939
	lea	rsi, [rsi]
	jmp	.label_1937
.label_3443:
	nop	
	mov	al, 1
	test	al, 1
	lea	rsi, [rsi]
	jne	.label_3708
	mov	rbp, rbp
	jmp	.label_2865
.label_3708:
	xor	eax, eax
	mov	cl, al
	mov	rbp, rbp
	test	cl, 1
	mov	rsp, rsp
	jne	.label_2873
	lea	rdi, [rdi]
	jmp	.label_3825
.label_2873:
	mov	al, 1
	lea	rsi, [rsi]
	test	al, 1
	jne	.label_3720
	jmp	.label_2051
.label_3720:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x2e0]
	mov	ecx, eax
	cmp	ecx, 0
	mov	rsp, rsp
	jge	.label_3723
	mov	eax, 0x80000000
	lea	rdi, [rdi]
	mov	ecx, dword ptr [rbp - 0x5c]
	nop	
	mov	rdx, qword ptr [rbp - 0x2e0]
	mov	esi, edx
	nop	
	sub	eax, esi
	mov	rbp, rbp
	cmp	ecx, eax
	jl	.label_2494
	lea	rsi, [rsi]
	jmp	.label_3343
.label_3723:
	mov	rbp, rbp
	mov	eax, 0x7fffffff
	mov	rcx, qword ptr [rbp - 0x2e0]
	lea	rsi, [rsi]
	mov	edx, ecx
	lea	rsi, [rsi]
	sub	eax, edx
	mov	rsp, rsp
	cmp	eax, dword ptr [rbp - 0x5c]
	jl	.label_2494
	lea	rsi, [rsi]
	jmp	.label_3343
.label_2051:
	mov	rsp, rsp
	cmp	dword ptr [rbp - 0x5c], 0
	nop	
	jge	.label_3077
	nop	
	mov	rax, qword ptr [rbp - 0x2e0]
	mov	rsp, rsp
	mov	ecx, eax
	mov	edx, dword ptr [rbp - 0x5c]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x2e0]
	mov	rsp, rsp
	mov	esi, eax
	add	edx, esi
	mov	rsp, rsp
	cmp	ecx, edx
	mov	rsp, rsp
	jle	.label_2494
	lea	rsi, [rsi]
	jmp	.label_3343
.label_3077:
	nop	
	mov	rax, qword ptr [rbp - 0x2e0]
	mov	ecx, eax
	cmp	ecx, 0
	lea	rsi, [rsi]
	jge	.label_3162
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x5c]
	mov	ecx, dword ptr [rbp - 0x5c]
	mov	rdx, qword ptr [rbp - 0x2e0]
	mov	esi, edx
	add	ecx, esi
	lea	rsi, [rsi]
	cmp	eax, ecx
	jle	.label_2494
	jmp	.label_3343
.label_3162:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x5c]
	nop	
	mov	rcx, qword ptr [rbp - 0x2e0]
	mov	rsp, rsp
	mov	edx, ecx
	mov	rbp, rbp
	add	eax, edx
	mov	rcx, qword ptr [rbp - 0x2e0]
	mov	edx, ecx
	cmp	eax, edx
	lea	rsi, [rsi]
	jl	.label_2494
.label_3343:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x5c]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x2e0]
	lea	rsi, [rsi]
	mov	edx, ecx
	lea	rdi, [rdi]
	add	eax, edx
	mov	rsp, rsp
	cmp	eax, 0x80000000
	jl	.label_2494
	mov	eax, 0x7fffffff
	mov	rbp, rbp
	mov	ecx, dword ptr [rbp - 0x5c]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x2e0]
	lea	rdi, [rdi]
	mov	esi, edx
	add	ecx, esi
	mov	rsp, rsp
	cmp	eax, ecx
	mov	rsp, rsp
	jge	.label_3565
.label_2494:
	mov	al, 1
	lea	rsi, [rsi]
	mov	ecx, dword ptr [rbp - 0x5c]
	mov	rdx, qword ptr [rbp - 0x2e0]
	mov	esi, edx
	add	ecx, esi
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x454], ecx
	test	al, 1
	jne	.label_1939
	jmp	.label_1937
.label_3565:
	nop	
	xor	eax, eax
	nop	
	mov	cl, al
	mov	eax, dword ptr [rbp - 0x5c]
	mov	rdx, qword ptr [rbp - 0x2e0]
	nop	
	mov	esi, edx
	lea	rsi, [rsi]
	add	eax, esi
	mov	dword ptr [rbp - 0x454], eax
	test	cl, 1
	jne	.label_1939
	jmp	.label_1937
.label_3825:
	lea	rsi, [rsi]
	mov	al, 1
	test	al, 1
	jne	.label_3526
	jmp	.label_3813
.label_3526:
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0x2e0], 0
	jge	.label_3814
	movabs	rax, 0x8000000000000000
	movsxd	rcx, dword ptr [rbp - 0x5c]
	sub	rax, qword ptr [rbp - 0x2e0]
	mov	rbp, rbp
	cmp	rcx, rax
	jl	.label_1947
	lea	rdi, [rdi]
	jmp	.label_3008
.label_3814:
	movabs	rax, 0x7fffffffffffffff
	sub	rax, qword ptr [rbp - 0x2e0]
	mov	rsp, rsp
	movsxd	rcx, dword ptr [rbp - 0x5c]
	cmp	rax, rcx
	lea	rdi, [rdi]
	jl	.label_1947
	lea	rdi, [rdi]
	jmp	.label_3008
.label_3813:
	cmp	dword ptr [rbp - 0x5c], 0
	lea	rsi, [rsi]
	jge	.label_3839
	mov	rax, qword ptr [rbp - 0x2e0]
	movsxd	rcx, dword ptr [rbp - 0x5c]
	lea	rsi, [rsi]
	add	rcx, qword ptr [rbp - 0x2e0]
	lea	rsi, [rsi]
	cmp	rax, rcx
	lea	rsi, [rsi]
	jle	.label_1947
	jmp	.label_3008
.label_3839:
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x2e0], 0
	jge	.label_3848
	nop	
	movsxd	rax, dword ptr [rbp - 0x5c]
	nop	
	movsxd	rcx, dword ptr [rbp - 0x5c]
	add	rcx, qword ptr [rbp - 0x2e0]
	cmp	rax, rcx
	nop	
	jle	.label_1947
	mov	rsp, rsp
	jmp	.label_3008
.label_3848:
	nop	
	movsxd	rax, dword ptr [rbp - 0x5c]
	nop	
	add	rax, qword ptr [rbp - 0x2e0]
	mov	rbp, rbp
	cmp	rax, qword ptr [rbp - 0x2e0]
	jl	.label_1947
.label_3008:
	lea	rsi, [rsi]
	movsxd	rax, dword ptr [rbp - 0x5c]
	add	rax, qword ptr [rbp - 0x2e0]
	nop	
	cmp	rax, -0x80000000
	jl	.label_1947
	mov	eax, 0x7fffffff
	mov	ecx, eax
	mov	rbp, rbp
	movsxd	rdx, dword ptr [rbp - 0x5c]
	add	rdx, qword ptr [rbp - 0x2e0]
	cmp	rcx, rdx
	mov	rsp, rsp
	jge	.label_1905
.label_1947:
	mov	al, 1
	mov	ecx, dword ptr [rbp - 0x5c]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x2e0]
	nop	
	mov	esi, edx
	add	ecx, esi
	mov	dword ptr [rbp - 0x454], ecx
	test	al, 1
	jne	.label_1939
	lea	rsi, [rsi]
	jmp	.label_1937
.label_1905:
	lea	rdi, [rdi]
	xor	eax, eax
	mov	rbp, rbp
	mov	cl, al
	nop	
	mov	eax, dword ptr [rbp - 0x5c]
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x2e0]
	mov	esi, edx
	lea	rsi, [rsi]
	add	eax, esi
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x454], eax
	lea	rdi, [rdi]
	test	cl, 1
	jne	.label_1939
	jmp	.label_1937
.label_2865:
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	mov	rbp, rbp
	jne	.label_1959
	lea	rdi, [rdi]
	jmp	.label_2585
.label_1959:
	mov	rsp, rsp
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_2649
	jmp	.label_2254
.label_2649:
	mov	al, 1
	lea	rdi, [rdi]
	test	al, 1
	jne	.label_1980
	jmp	.label_1986
.label_1980:
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x2e0], 0
	jge	.label_1989
	lea	rsi, [rsi]
	movabs	rax, 0x8000000000000000
	nop	
	movsxd	rcx, dword ptr [rbp - 0x5c]
	sub	rax, qword ptr [rbp - 0x2e0]
	mov	rbp, rbp
	cmp	rcx, rax
	jl	.label_2011
	nop	
	jmp	.label_2008
.label_1989:
	lea	rdi, [rdi]
	movabs	rax, 0x7fffffffffffffff
	mov	rsp, rsp
	sub	rax, qword ptr [rbp - 0x2e0]
	movsxd	rcx, dword ptr [rbp - 0x5c]
	cmp	rax, rcx
	lea	rdi, [rdi]
	jl	.label_2011
	lea	rsi, [rsi]
	jmp	.label_2008
.label_1986:
	movsxd	rax, dword ptr [rbp - 0x5c]
	cmp	rax, 0
	jge	.label_3629
	mov	rax, qword ptr [rbp - 0x2e0]
	movsxd	rcx, dword ptr [rbp - 0x5c]
	mov	rbp, rbp
	add	rcx, qword ptr [rbp - 0x2e0]
	cmp	rax, rcx
	jle	.label_2011
	lea	rdi, [rdi]
	jmp	.label_2008
.label_3629:
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x2e0], 0
	mov	rsp, rsp
	jge	.label_2530
	movsxd	rax, dword ptr [rbp - 0x5c]
	mov	rbp, rbp
	movsxd	rcx, dword ptr [rbp - 0x5c]
	add	rcx, qword ptr [rbp - 0x2e0]
	cmp	rax, rcx
	mov	rsp, rsp
	jle	.label_2011
	jmp	.label_2008
.label_2530:
	mov	rbp, rbp
	movsxd	rax, dword ptr [rbp - 0x5c]
	add	rax, qword ptr [rbp - 0x2e0]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rbp - 0x2e0]
	mov	rbp, rbp
	jl	.label_2011
.label_2008:
	movabs	rax, 0x8000000000000000
	movsxd	rcx, dword ptr [rbp - 0x5c]
	lea	rdi, [rdi]
	add	rcx, qword ptr [rbp - 0x2e0]
	cmp	rcx, rax
	mov	rbp, rbp
	jl	.label_2011
	movabs	rax, 0x7fffffffffffffff
	mov	rbp, rbp
	movsxd	rcx, dword ptr [rbp - 0x5c]
	lea	rdi, [rdi]
	add	rcx, qword ptr [rbp - 0x2e0]
	lea	rdi, [rdi]
	cmp	rax, rcx
	jge	.label_2053
.label_2011:
	mov	rsp, rsp
	mov	al, 1
	mov	rsp, rsp
	movsxd	rcx, dword ptr [rbp - 0x5c]
	add	rcx, qword ptr [rbp - 0x2e0]
	mov	edx, ecx
	mov	dword ptr [rbp - 0x454], edx
	lea	rsi, [rsi]
	test	al, 1
	nop	
	jne	.label_1939
	jmp	.label_1937
.label_2053:
	xor	eax, eax
	mov	cl, al
	nop	
	movsxd	rdx, dword ptr [rbp - 0x5c]
	lea	rdi, [rdi]
	add	rdx, qword ptr [rbp - 0x2e0]
	lea	rsi, [rsi]
	mov	eax, edx
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x454], eax
	test	cl, 1
	nop	
	jne	.label_1939
	mov	rsp, rsp
	jmp	.label_1937
.label_2254:
	nop	
	mov	al, 1
	lea	rsi, [rsi]
	test	al, 1
	mov	rsp, rsp
	jne	.label_2105
	jmp	.label_2111
.label_2105:
	nop	
	cmp	qword ptr [rbp - 0x2e0], 0
	jge	.label_2114
	movabs	rax, 0x8000000000000000
	mov	rbp, rbp
	movsxd	rcx, dword ptr [rbp - 0x5c]
	sub	rax, qword ptr [rbp - 0x2e0]
	cmp	rcx, rax
	jl	.label_2130
	jmp	.label_2129
.label_2114:
	movabs	rax, 0x7fffffffffffffff
	sub	rax, qword ptr [rbp - 0x2e0]
	movsxd	rcx, dword ptr [rbp - 0x5c]
	mov	rsp, rsp
	cmp	rax, rcx
	jl	.label_2130
	jmp	.label_2129
.label_2111:
	mov	rbp, rbp
	cmp	dword ptr [rbp - 0x5c], 0
	lea	rdi, [rdi]
	jge	.label_2139
	mov	rax, qword ptr [rbp - 0x2e0]
	movsxd	rcx, dword ptr [rbp - 0x5c]
	add	rcx, qword ptr [rbp - 0x2e0]
	cmp	rax, rcx
	mov	rbp, rbp
	jle	.label_2130
	jmp	.label_2129
.label_2139:
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x2e0], 0
	jge	.label_2154
	mov	rbp, rbp
	movsxd	rax, dword ptr [rbp - 0x5c]
	mov	rbp, rbp
	movsxd	rcx, dword ptr [rbp - 0x5c]
	add	rcx, qword ptr [rbp - 0x2e0]
	mov	rbp, rbp
	cmp	rax, rcx
	jle	.label_2130
	nop	
	jmp	.label_2129
.label_2154:
	nop	
	movsxd	rax, dword ptr [rbp - 0x5c]
	add	rax, qword ptr [rbp - 0x2e0]
	cmp	rax, qword ptr [rbp - 0x2e0]
	mov	rbp, rbp
	jl	.label_2130
.label_2129:
	lea	rsi, [rsi]
	movabs	rax, 0x8000000000000000
	mov	rsp, rsp
	movsxd	rcx, dword ptr [rbp - 0x5c]
	add	rcx, qword ptr [rbp - 0x2e0]
	lea	rdi, [rdi]
	cmp	rcx, rax
	jl	.label_2130
	nop	
	movabs	rax, 0x7fffffffffffffff
	movsxd	rcx, dword ptr [rbp - 0x5c]
	add	rcx, qword ptr [rbp - 0x2e0]
	cmp	rax, rcx
	jge	.label_2188
.label_2130:
	mov	al, 1
	nop	
	movsxd	rcx, dword ptr [rbp - 0x5c]
	add	rcx, qword ptr [rbp - 0x2e0]
	nop	
	mov	edx, ecx
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x454], edx
	test	al, 1
	jne	.label_1939
	jmp	.label_1937
.label_2188:
	lea	rdi, [rdi]
	xor	eax, eax
	mov	cl, al
	lea	rdi, [rdi]
	movsxd	rdx, dword ptr [rbp - 0x5c]
	lea	rdi, [rdi]
	add	rdx, qword ptr [rbp - 0x2e0]
	mov	eax, edx
	mov	dword ptr [rbp - 0x454], eax
	lea	rdi, [rdi]
	test	cl, 1
	mov	rbp, rbp
	jne	.label_1939
	jmp	.label_1937
.label_2585:
	xor	eax, eax
	lea	rsi, [rsi]
	mov	cl, al
	test	cl, 1
	jne	.label_1924
	lea	rsi, [rsi]
	jmp	.label_2229
.label_1924:
	lea	rdi, [rdi]
	mov	al, 1
	test	al, 1
	jne	.label_2233
	jmp	.label_2235
.label_2233:
	nop	
	cmp	qword ptr [rbp - 0x2e0], 0
	nop	
	jge	.label_2237
	movabs	rax, 0x8000000000000000
	mov	rbp, rbp
	movsxd	rcx, dword ptr [rbp - 0x5c]
	lea	rsi, [rsi]
	sub	rax, qword ptr [rbp - 0x2e0]
	nop	
	cmp	rcx, rax
	jl	.label_2270
	jmp	.label_2268
.label_2237:
	lea	rdi, [rdi]
	movabs	rax, 0x7fffffffffffffff
	sub	rax, qword ptr [rbp - 0x2e0]
	nop	
	movsxd	rcx, dword ptr [rbp - 0x5c]
	cmp	rax, rcx
	lea	rdi, [rdi]
	jl	.label_2270
	jmp	.label_2268
.label_2235:
	lea	rdi, [rdi]
	movsxd	rax, dword ptr [rbp - 0x5c]
	lea	rsi, [rsi]
	cmp	rax, 0
	jge	.label_3638
	mov	rax, qword ptr [rbp - 0x2e0]
	mov	rbp, rbp
	movsxd	rcx, dword ptr [rbp - 0x5c]
	add	rcx, qword ptr [rbp - 0x2e0]
	cmp	rax, rcx
	jle	.label_2270
	mov	rbp, rbp
	jmp	.label_2268
.label_3638:
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x2e0], 0
	lea	rsi, [rsi]
	jge	.label_3715
	lea	rsi, [rsi]
	movsxd	rax, dword ptr [rbp - 0x5c]
	nop	
	movsxd	rcx, dword ptr [rbp - 0x5c]
	add	rcx, qword ptr [rbp - 0x2e0]
	cmp	rax, rcx
	lea	rsi, [rsi]
	jle	.label_2270
	jmp	.label_2268
.label_3715:
	movsxd	rax, dword ptr [rbp - 0x5c]
	add	rax, qword ptr [rbp - 0x2e0]
	cmp	rax, qword ptr [rbp - 0x2e0]
	nop	
	jl	.label_2270
.label_2268:
	movabs	rax, 0x8000000000000000
	movsxd	rcx, dword ptr [rbp - 0x5c]
	add	rcx, qword ptr [rbp - 0x2e0]
	cmp	rcx, rax
	lea	rsi, [rsi]
	jl	.label_2270
	movabs	rax, 0x7fffffffffffffff
	lea	rsi, [rsi]
	movsxd	rcx, dword ptr [rbp - 0x5c]
	nop	
	add	rcx, qword ptr [rbp - 0x2e0]
	lea	rsi, [rsi]
	cmp	rax, rcx
	mov	rbp, rbp
	jge	.label_2315
.label_2270:
	mov	al, 1
	lea	rsi, [rsi]
	movsxd	rcx, dword ptr [rbp - 0x5c]
	add	rcx, qword ptr [rbp - 0x2e0]
	mov	edx, ecx
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x454], edx
	lea	rsi, [rsi]
	test	al, 1
	mov	rbp, rbp
	jne	.label_1939
	jmp	.label_1937
.label_2315:
	nop	
	xor	eax, eax
	mov	cl, al
	lea	rsi, [rsi]
	movsxd	rdx, dword ptr [rbp - 0x5c]
	add	rdx, qword ptr [rbp - 0x2e0]
	lea	rdi, [rdi]
	mov	eax, edx
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x454], eax
	lea	rsi, [rsi]
	test	cl, 1
	jne	.label_1939
	lea	rdi, [rdi]
	jmp	.label_1937
.label_2229:
	nop	
	mov	al, 1
	test	al, 1
	lea	rdi, [rdi]
	jne	.label_2621
	lea	rsi, [rsi]
	jmp	.label_2348
.label_2621:
	nop	
	cmp	qword ptr [rbp - 0x2e0], 0
	nop	
	jge	.label_2350
	movabs	rax, 0x8000000000000000
	mov	rsp, rsp
	movsxd	rcx, dword ptr [rbp - 0x5c]
	lea	rdi, [rdi]
	sub	rax, qword ptr [rbp - 0x2e0]
	mov	rsp, rsp
	cmp	rcx, rax
	mov	rsp, rsp
	jl	.label_2291
	mov	rbp, rbp
	jmp	.label_2383
.label_2350:
	lea	rsi, [rsi]
	movabs	rax, 0x7fffffffffffffff
	lea	rsi, [rsi]
	sub	rax, qword ptr [rbp - 0x2e0]
	movsxd	rcx, dword ptr [rbp - 0x5c]
	cmp	rax, rcx
	jl	.label_2291
	jmp	.label_2383
.label_2348:
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x5c], 0
	mov	rbp, rbp
	jge	.label_3207
	mov	rax, qword ptr [rbp - 0x2e0]
	movsxd	rcx, dword ptr [rbp - 0x5c]
	mov	rsp, rsp
	add	rcx, qword ptr [rbp - 0x2e0]
	mov	rsp, rsp
	cmp	rax, rcx
	jle	.label_2291
	jmp	.label_2383
.label_3207:
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x2e0], 0
	jge	.label_2384
	nop	
	movsxd	rax, dword ptr [rbp - 0x5c]
	movsxd	rcx, dword ptr [rbp - 0x5c]
	add	rcx, qword ptr [rbp - 0x2e0]
	nop	
	cmp	rax, rcx
	mov	rsp, rsp
	jle	.label_2291
	lea	rdi, [rdi]
	jmp	.label_2383
.label_2384:
	movsxd	rax, dword ptr [rbp - 0x5c]
	add	rax, qword ptr [rbp - 0x2e0]
	cmp	rax, qword ptr [rbp - 0x2e0]
	jl	.label_2291
.label_2383:
	mov	rbp, rbp
	movabs	rax, 0x8000000000000000
	lea	rsi, [rsi]
	movsxd	rcx, dword ptr [rbp - 0x5c]
	lea	rsi, [rsi]
	add	rcx, qword ptr [rbp - 0x2e0]
	lea	rsi, [rsi]
	cmp	rcx, rax
	jl	.label_2291
	movabs	rax, 0x7fffffffffffffff
	movsxd	rcx, dword ptr [rbp - 0x5c]
	lea	rdi, [rdi]
	add	rcx, qword ptr [rbp - 0x2e0]
	mov	rbp, rbp
	cmp	rax, rcx
	jge	.label_2525
.label_2291:
	lea	rsi, [rsi]
	mov	al, 1
	mov	rsp, rsp
	movsxd	rcx, dword ptr [rbp - 0x5c]
	mov	rbp, rbp
	add	rcx, qword ptr [rbp - 0x2e0]
	mov	rsp, rsp
	mov	edx, ecx
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x454], edx
	test	al, 1
	jne	.label_1939
	jmp	.label_1937
.label_2525:
	xor	eax, eax
	lea	rdi, [rdi]
	mov	cl, al
	movsxd	rdx, dword ptr [rbp - 0x5c]
	nop	
	add	rdx, qword ptr [rbp - 0x2e0]
	mov	eax, edx
	mov	dword ptr [rbp - 0x454], eax
	test	cl, 1
	jne	.label_1939
	jmp	.label_1937
.label_1939:
	test	byte ptr [rbp - 0x27f], 1
	je	.label_2798
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
.label_2798:
	jmp	.label_2446
.label_1937:
	mov	rsp, rsp
	lea	rsi, [rbp - 0x68]
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x44c]
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x54], eax
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x450]
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x58], eax
	nop	
	mov	eax, dword ptr [rbp - 0x454]
	nop	
	mov	dword ptr [rbp - 0x5c], eax
	mov	eax, dword ptr [rbp - 0x98]
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x60], eax
	nop	
	mov	eax, dword ptr [rbp - 0x9c]
	mov	dword ptr [rbp - 0x64], eax
	mov	eax, dword ptr [rbp - 0xa0]
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x68], eax
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x80]
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x48], eax
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x1d8]
	call	mktime_z
	mov	qword ptr [rbp - 0x1c8], rax
	cmp	qword ptr [rbp - 0x1c8], -1
	mov	rbp, rbp
	jne	.label_2493
	test	byte ptr [rbp - 0x27f], 1
	mov	rbp, rbp
	je	.label_3065
	movabs	rdi, OFFSET FLAT:.str.57_0
	call	gettext
	mov	rbp, rbp
	lea	rdi, [rbp - 0x68]
	lea	rsi, [rbp - 0x358]
	lea	rdi, [rdi]
	mov	ecx, 0x64
	lea	rdx, [rbp - 0x130]
	mov	qword ptr [rbp - 0xec0], rax
	call	debug_strfdatetime
	mov	rdi, qword ptr [rbp - 0xec0]
	mov	rbp, rbp
	mov	rsi, rax
	mov	al, 0
	call	dbg_printf
.label_3065:
	jmp	.label_2446
.label_2493:
	test	byte ptr [rbp - 0x27f], 1
	nop	
	je	.label_2528
	nop	
	movabs	rdi, OFFSET FLAT:.str.58_0
	mov	rbp, rbp
	call	gettext
	mov	rsi, qword ptr [rbp - 0x2f0]
	mov	rdx, qword ptr [rbp - 0x2e8]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x2e0]
	mov	rdi, rax
	nop	
	mov	al, 0
	call	dbg_printf
	nop	
	movabs	rdi, OFFSET FLAT:.str.59_0
	call	gettext
	lea	rdi, [rbp - 0x68]
	lea	rsi, [rbp - 0x358]
	mov	ecx, 0x64
	mov	rbp, rbp
	lea	rdx, [rbp - 0x130]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0xec8], rax
	call	debug_strfdatetime
	mov	rdi, qword ptr [rbp - 0xec8]
	mov	rsi, rax
	mov	al, 0
	call	dbg_printf
	cmp	dword ptr [rbp - 0x80], -1
	je	.label_2564
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x48]
	cmp	eax, dword ptr [rbp - 0x80]
	lea	rsi, [rsi]
	je	.label_2564
	lea	rsi, [rsi]
	movabs	rdi, OFFSET FLAT:.str.60_0
	call	gettext
	lea	rsi, [rsi]
	mov	rdi, rax
	nop	
	mov	al, 0
	call	dbg_printf
.label_2564:
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x2e0], 0
	jne	.label_2581
	mov	eax, dword ptr [rbp - 0x5c]
	cmp	eax, dword ptr [rbp - 0x454]
	lea	rsi, [rsi]
	jne	.label_2587
	cmp	qword ptr [rbp - 0x2e8], 0
	jne	.label_2581
	nop	
	mov	eax, dword ptr [rbp - 0x58]
	mov	rsp, rsp
	cmp	eax, dword ptr [rbp - 0x450]
	je	.label_2581
.label_2587:
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
	lea	rsi, [rbp - 0x461]
	nop	
	mov	edi, dword ptr [rbp - 0x44c]
	mov	qword ptr [rbp - 0xed0], rax
	call	tm_year_str
	mov	edi, dword ptr [rbp - 0x450]
	add	edi, 1
	lea	rsi, [rsi]
	mov	ecx, dword ptr [rbp - 0x454]
	mov	rsi, qword ptr [rbp - 0xed0]
	mov	dword ptr [rbp - 0xed4], edi
	mov	rdi, rsi
	mov	rsi, rax
	mov	edx, dword ptr [rbp - 0xed4]
	lea	rsi, [rsi]
	mov	al, 0
	mov	rbp, rbp
	call	dbg_printf
	mov	rbp, rbp
	movabs	rdi, OFFSET FLAT:.str.63
	mov	rbp, rbp
	call	gettext
	lea	rsi, [rbp - 0x461]
	mov	edi, dword ptr [rbp - 0x54]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0xee0], rax
	call	tm_year_str
	nop	
	mov	ecx, dword ptr [rbp - 0x58]
	add	ecx, 1
	mov	edx, dword ptr [rbp - 0x5c]
	nop	
	mov	rdi, qword ptr [rbp - 0xee0]
	mov	rsi, rax
	mov	dword ptr [rbp - 0xee4], edx
	mov	edx, ecx
	mov	ecx, dword ptr [rbp - 0xee4]
	mov	al, 0
	call	dbg_printf
.label_2581:
	nop	
	jmp	.label_2528
.label_2528:
	jmp	.label_2654
.label_2654:
	cmp	qword ptr [rbp - 0x288], 0
	je	.label_2657
	lea	rdi, [rdi]
	mov	al, 1
	lea	rdi, [rdi]
	movsxd	rcx, dword ptr [rbp - 0x340]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x470], rcx
	mov	byte ptr [rbp - 0x479], 0
	mov	rcx, qword ptr [rbp - 0x40]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x488], rcx
	test	al, 1
	lea	rsi, [rsi]
	jne	.label_2661
	lea	rdi, [rdi]
	jmp	.label_2033
.label_2661:
	cmp	qword ptr [rbp - 0x488], 0
	lea	rdi, [rdi]
	jge	.label_2675
	movabs	rax, 0x7fffffffffffffff
	lea	rdi, [rdi]
	add	rax, qword ptr [rbp - 0x488]
	mov	rbp, rbp
	cmp	rax, qword ptr [rbp - 0x470]
	lea	rsi, [rsi]
	jl	.label_2069
	lea	rsi, [rsi]
	jmp	.label_2213
.label_2675:
	mov	rax, qword ptr [rbp - 0x470]
	lea	rdi, [rdi]
	movabs	rcx, 0x8000000000000000
	add	rcx, qword ptr [rbp - 0x488]
	cmp	rax, rcx
	jl	.label_2069
	jmp	.label_2213
.label_2033:
	cmp	qword ptr [rbp - 0x470], 0
	nop	
	jge	.label_2222
	lea	rdi, [rdi]
	mov	al, 1
	lea	rsi, [rsi]
	test	al, 1
	lea	rdi, [rdi]
	jne	.label_2069
	jmp	.label_2213
.label_2222:
	cmp	qword ptr [rbp - 0x488], 0
	lea	rsi, [rsi]
	jge	.label_2710
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x470]
	lea	rsi, [rsi]
	sub	rax, qword ptr [rbp - 0x488]
	lea	rdi, [rdi]
	cmp	rax, qword ptr [rbp - 0x470]
	jle	.label_2069
	mov	rbp, rbp
	jmp	.label_2213
.label_2710:
	mov	rax, qword ptr [rbp - 0x470]
	nop	
	cmp	rax, qword ptr [rbp - 0x488]
	nop	
	jl	.label_2069
.label_2213:
	nop	
	movabs	rax, 0x8000000000000000
	mov	rcx, qword ptr [rbp - 0x470]
	mov	rbp, rbp
	sub	rcx, qword ptr [rbp - 0x488]
	nop	
	cmp	rcx, rax
	mov	rbp, rbp
	jl	.label_2069
	lea	rdi, [rdi]
	movabs	rax, 0x7fffffffffffffff
	nop	
	mov	rcx, qword ptr [rbp - 0x470]
	sub	rcx, qword ptr [rbp - 0x488]
	cmp	rax, rcx
	jge	.label_2733
.label_2069:
	lea	rdi, [rdi]
	mov	eax, 1
	nop	
	mov	rcx, qword ptr [rbp - 0x470]
	sub	rcx, qword ptr [rbp - 0x488]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x470], rcx
	mov	dword ptr [rbp - 0xee8], eax
	jmp	.label_2531
.label_2733:
	nop	
	xor	eax, eax
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x470]
	sub	rcx, qword ptr [rbp - 0x488]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x470], rcx
	mov	dword ptr [rbp - 0xee8], eax
.label_2531:
	mov	eax, dword ptr [rbp - 0xee8]
	mov	cl, 1
	mov	dl, byte ptr [rbp - 0x479]
	and	dl, 1
	movzx	esi, dl
	lea	rsi, [rsi]
	or	esi, eax
	mov	rsp, rsp
	cmp	esi, 0
	setne	dl
	mov	rbp, rbp
	and	dl, 1
	mov	byte ptr [rbp - 0x479], dl
	test	cl, 1
	mov	rsp, rsp
	jne	.label_2755
	jmp	.label_2731
.label_2755:
	cmp	qword ptr [rbp - 0x470], 0
	lea	rdi, [rdi]
	jge	.label_2776
	movabs	rax, 0x7fffffffffffffff
	add	rax, qword ptr [rbp - 0x470]
	lea	rdi, [rdi]
	cmp	rax, qword ptr [rbp - 0x1c8]
	jl	.label_2758
	jmp	.label_2786
.label_2776:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x1c8]
	mov	rsp, rsp
	movabs	rcx, 0x8000000000000000
	lea	rsi, [rsi]
	add	rcx, qword ptr [rbp - 0x470]
	cmp	rax, rcx
	lea	rdi, [rdi]
	jl	.label_2758
	lea	rsi, [rsi]
	jmp	.label_2786
.label_2731:
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x1c8], 0
	mov	rbp, rbp
	jge	.label_2805
	nop	
	mov	al, 1
	test	al, 1
	lea	rdi, [rdi]
	jne	.label_2758
	jmp	.label_2786
.label_2805:
	cmp	qword ptr [rbp - 0x470], 0
	jge	.label_2818
	mov	rax, qword ptr [rbp - 0x1c8]
	sub	rax, qword ptr [rbp - 0x470]
	nop	
	cmp	rax, qword ptr [rbp - 0x1c8]
	mov	rsp, rsp
	jle	.label_2758
	jmp	.label_2786
.label_2818:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x1c8]
	cmp	rax, qword ptr [rbp - 0x470]
	jl	.label_2758
.label_2786:
	lea	rdi, [rdi]
	movabs	rax, 0x8000000000000000
	mov	rcx, qword ptr [rbp - 0x1c8]
	sub	rcx, qword ptr [rbp - 0x470]
	mov	rbp, rbp
	cmp	rcx, rax
	jl	.label_2758
	lea	rsi, [rsi]
	movabs	rax, 0x7fffffffffffffff
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x1c8]
	mov	rbp, rbp
	sub	rcx, qword ptr [rbp - 0x470]
	cmp	rax, rcx
	jge	.label_2840
.label_2758:
	mov	rsp, rsp
	mov	eax, 1
	mov	rcx, qword ptr [rbp - 0x1c8]
	sub	rcx, qword ptr [rbp - 0x470]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x478], rcx
	mov	dword ptr [rbp - 0xeec], eax
	lea	rsi, [rsi]
	jmp	.label_2854
.label_2840:
	xor	eax, eax
	nop	
	mov	rcx, qword ptr [rbp - 0x1c8]
	mov	rbp, rbp
	sub	rcx, qword ptr [rbp - 0x470]
	nop	
	mov	qword ptr [rbp - 0x478], rcx
	mov	dword ptr [rbp - 0xeec], eax
.label_2854:
	mov	eax, dword ptr [rbp - 0xeec]
	nop	
	mov	cl, byte ptr [rbp - 0x479]
	and	cl, 1
	nop	
	movzx	edx, cl
	or	edx, eax
	nop	
	cmp	edx, 0
	setne	cl
	and	cl, 1
	mov	byte ptr [rbp - 0x479], cl
	lea	rdi, [rdi]
	test	byte ptr [rbp - 0x479], 1
	jne	.label_2889
	mov	rdi, qword ptr [rbp - 0x478]
	lea	rsi, [rsi]
	call	time_overflow
	nop	
	test	al, 1
	nop	
	jne	.label_2889
	jmp	.label_2892
.label_2889:
	test	byte ptr [rbp - 0x27f], 1
	je	.label_2893
	movabs	rdi, OFFSET FLAT:.str.64
	mov	rbp, rbp
	call	gettext
	mov	esi, dword ptr [rbp - 0x340]
	mov	rdi, rax
	mov	al, 0
	call	dbg_printf
.label_2893:
	nop	
	jmp	.label_2446
.label_2892:
	mov	rax, qword ptr [rbp - 0x478]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x1c8], rax
.label_2657:
	lea	rdi, [rdi]
	test	byte ptr [rbp - 0x27f], 1
	je	.label_2693
	lea	rsi, [rsi]
	movabs	rdi, OFFSET FLAT:.str.65
	mov	rax, qword ptr [rbp - 0x1c8]
	mov	qword ptr [rbp - 0x490], rax
	mov	rbp, rbp
	call	gettext
	mov	rbp, rbp
	lea	rdi, [rbp - 0x68]
	lea	rdi, [rdi]
	lea	rsi, [rbp - 0x358]
	mov	ecx, 0x64
	lea	rdx, [rbp - 0x130]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0xef8], rax
	mov	rbp, rbp
	call	debug_strfdatetime
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x490]
	nop	
	mov	rdi, qword ptr [rbp - 0xef8]
	mov	rsi, rax
	mov	al, 0
	call	dbg_printf
.label_2693:
	xor	eax, eax
	mov	cl, al
	mov	eax, 0x3b9aca00
	lea	rdi, [rdi]
	mov	edx, eax
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x2f8]
	mov	qword ptr [rbp - 0x498], rsi
	mov	rsi, qword ptr [rbp - 0x498]
	nop	
	movsxd	rdi, dword ptr [rbp - 0x2c0]
	lea	rsi, [rsi]
	add	rsi, rdi
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x4a0], rsi
	mov	rax, qword ptr [rbp - 0x4a0]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0xf00], rdx
	cqo	
	mov	rsi, qword ptr [rbp - 0xf00]
	idiv	rsi
	add	rdx, 0x3b9aca00
	mov	rax, rdx
	mov	rbp, rbp
	cqo	
	mov	rbp, rbp
	idiv	rsi
	mov	rbp, rbp
	mov	r8d, edx
	mov	dword ptr [rbp - 0x4a4], r8d
	mov	rdx, qword ptr [rbp - 0x4a0]
	mov	rsp, rsp
	movsxd	rdi, dword ptr [rbp - 0x4a4]
	nop	
	sub	rdx, rdi
	mov	rax, rdx
	mov	rbp, rbp
	cqo	
	idiv	rsi
	mov	r8d, eax
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x4a8], r8d
	test	cl, 1
	jne	.label_1940
	mov	rbp, rbp
	jmp	.label_2966
.label_1940:
	xor	eax, eax
	nop	
	mov	cl, al
	mov	rbp, rbp
	test	cl, 1
	jne	.label_3319
	jmp	.label_2975
.label_3319:
	mov	rsp, rsp
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	mov	rsp, rsp
	jne	.label_2976
	jmp	.label_2981
.label_2976:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x2d8]
	lea	rdi, [rdi]
	mov	cl, al
	mov	rsp, rsp
	movsx	edx, cl
	lea	rdi, [rdi]
	cmp	edx, 0
	jge	.label_2984
	mov	rax, qword ptr [rbp - 0x2d8]
	lea	rsi, [rsi]
	mov	cl, al
	movsx	edx, cl
	cmp	edx, 0x7ffffff
	jl	.label_2157
	jmp	.label_2994
.label_2984:
	xor	eax, eax
	lea	rdi, [rdi]
	mov	cl, al
	nop	
	test	cl, 1
	lea	rsi, [rsi]
	jne	.label_2996
	jmp	.label_3001
.label_2996:
	lea	rsi, [rsi]
	xor	eax, eax
	mov	cl, al
	lea	rdi, [rdi]
	test	cl, 1
	jne	.label_2157
	lea	rdi, [rdi]
	jmp	.label_2994
.label_3001:
	mov	rbp, rbp
	mov	eax, 0xf8000000
	mov	rcx, qword ptr [rbp - 0x2d8]
	mov	dl, cl
	mov	rbp, rbp
	movsx	esi, dl
	lea	rsi, [rsi]
	cmp	eax, esi
	mov	rsp, rsp
	jl	.label_2157
	jmp	.label_2994
.label_2981:
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_3019
	lea	rsi, [rsi]
	jmp	.label_3024
.label_3019:
	xor	eax, eax
	mov	cl, al
	mov	rsp, rsp
	test	cl, 1
	mov	rsp, rsp
	jne	.label_2157
	mov	rbp, rbp
	jmp	.label_2994
.label_3024:
	mov	rax, qword ptr [rbp - 0x2d8]
	lea	rdi, [rdi]
	mov	cl, al
	lea	rdi, [rdi]
	movsx	edx, cl
	nop	
	cmp	edx, 0
	jge	.label_2349
	mov	rax, qword ptr [rbp - 0x2d8]
	mov	cl, al
	movsx	edx, cl
	mov	rsp, rsp
	cmp	edx, 0xf8000000
	lea	rsi, [rsi]
	jl	.label_2157
	lea	rsi, [rsi]
	jmp	.label_2994
.label_2349:
	mov	rsp, rsp
	mov	eax, 0x7ffffff
	mov	rcx, qword ptr [rbp - 0x2d8]
	mov	dl, cl
	lea	rdi, [rdi]
	movsx	esi, dl
	cmp	eax, esi
	mov	rbp, rbp
	jl	.label_2157
.label_2994:
	mov	rax, qword ptr [rbp - 0x2d8]
	mov	cl, al
	movsx	edx, cl
	shl	edx, 4
	lea	rsi, [rsi]
	cmp	edx, -0x80
	lea	rdi, [rdi]
	jl	.label_2157
	nop	
	mov	eax, 0x7f
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x2d8]
	mov	dl, cl
	movsx	esi, dl
	mov	rbp, rbp
	shl	esi, 4
	mov	rsp, rsp
	cmp	eax, esi
	jge	.label_3050
.label_2157:
	mov	al, 1
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x2d8]
	nop	
	mov	dl, cl
	mov	rsp, rsp
	movsx	esi, dl
	shl	esi, 4
	mov	rbp, rbp
	mov	dl, sil
	mov	rsp, rsp
	movsx	rcx, dl
	mov	qword ptr [rbp - 0x4b0], rcx
	nop	
	test	al, 1
	mov	rsp, rsp
	jne	.label_1997
	jmp	.label_2022
.label_3050:
	xor	eax, eax
	lea	rsi, [rsi]
	mov	cl, al
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x2d8]
	mov	sil, dl
	movsx	eax, sil
	shl	eax, 4
	mov	sil, al
	movsx	rdx, sil
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x4b0], rdx
	test	cl, 1
	mov	rbp, rbp
	jne	.label_1997
	jmp	.label_2022
.label_2975:
	xor	eax, eax
	mov	rsp, rsp
	mov	cl, al
	test	cl, 1
	jne	.label_3090
	jmp	.label_3093
.label_3090:
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x2d8], 0
	lea	rsi, [rsi]
	jge	.label_3095
	movabs	rax, 0x91a2b3c4d5e6f
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x2d8], rax
	nop	
	jl	.label_3099
	lea	rsi, [rsi]
	jmp	.label_3106
.label_3095:
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_3108
	jmp	.label_2907
.label_3108:
	xor	eax, eax
	nop	
	mov	cl, al
	lea	rsi, [rsi]
	test	cl, 1
	jne	.label_3099
	nop	
	jmp	.label_3106
.label_2907:
	nop	
	movabs	rax, 0xfff6e5d4c3b2a191
	cmp	rax, qword ptr [rbp - 0x2d8]
	jl	.label_3099
	jmp	.label_3106
.label_3093:
	xor	eax, eax
	mov	cl, al
	mov	rsp, rsp
	test	cl, 1
	jne	.label_3129
	mov	rsp, rsp
	jmp	.label_3133
.label_3129:
	xor	eax, eax
	mov	rsp, rsp
	mov	cl, al
	test	cl, 1
	nop	
	jne	.label_3099
	mov	rsp, rsp
	jmp	.label_3106
.label_3133:
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x2d8], 0
	jge	.label_3139
	movabs	rax, 0xfff6e5d4c3b2a191
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x2d8], rax
	nop	
	jl	.label_3099
	jmp	.label_3106
.label_3139:
	mov	rsp, rsp
	movabs	rax, 0x91a2b3c4d5e6f
	lea	rdi, [rdi]
	cmp	rax, qword ptr [rbp - 0x2d8]
	mov	rbp, rbp
	jl	.label_3099
.label_3106:
	imul	rax, qword ptr [rbp - 0x2d8], 0xe10
	cmp	rax, -0x80
	mov	rbp, rbp
	jl	.label_3099
	mov	eax, 0x7f
	mov	ecx, eax
	imul	rdx, qword ptr [rbp - 0x2d8], 0xe10
	cmp	rcx, rdx
	mov	rsp, rsp
	jge	.label_3156
.label_3099:
	mov	al, 1
	nop	
	mov	rcx, qword ptr [rbp - 0x2d8]
	lea	rsi, [rsi]
	mov	edx, ecx
	mov	rsp, rsp
	imul	edx, edx, 0xe10
	mov	sil, dl
	movsx	rcx, sil
	mov	qword ptr [rbp - 0x4b0], rcx
	test	al, 1
	mov	rbp, rbp
	jne	.label_1997
	mov	rsp, rsp
	jmp	.label_2022
.label_3156:
	lea	rsi, [rsi]
	xor	eax, eax
	nop	
	mov	cl, al
	nop	
	mov	rdx, qword ptr [rbp - 0x2d8]
	mov	rbp, rbp
	mov	eax, edx
	lea	rdi, [rdi]
	imul	eax, eax, 0xe10
	mov	sil, al
	lea	rdi, [rdi]
	movsx	rdx, sil
	mov	qword ptr [rbp - 0x4b0], rdx
	mov	rbp, rbp
	test	cl, 1
	jne	.label_1997
	lea	rsi, [rsi]
	jmp	.label_2022
.label_2966:
	lea	rsi, [rsi]
	xor	eax, eax
	mov	cl, al
	nop	
	test	cl, 1
	jne	.label_3185
	jmp	.label_3189
.label_3185:
	lea	rsi, [rsi]
	xor	eax, eax
	mov	rsp, rsp
	mov	cl, al
	test	cl, 1
	mov	rbp, rbp
	jne	.label_3190
	jmp	.label_3196
.label_3190:
	xor	eax, eax
	lea	rdi, [rdi]
	mov	cl, al
	nop	
	test	cl, 1
	lea	rdi, [rdi]
	jne	.label_3198
	jmp	.label_3204
.label_3198:
	mov	rax, qword ptr [rbp - 0x2d8]
	mov	rsp, rsp
	mov	cx, ax
	mov	rbp, rbp
	movsx	edx, cx
	mov	rsp, rsp
	cmp	edx, 0
	mov	rbp, rbp
	jge	.label_3206
	mov	rax, qword ptr [rbp - 0x2d8]
	mov	cx, ax
	movsx	edx, cx
	cmp	edx, 0x91a2b
	jl	.label_2921
	mov	rsp, rsp
	jmp	.label_3240
.label_3206:
	xor	eax, eax
	mov	cl, al
	mov	rsp, rsp
	test	cl, 1
	lea	rdi, [rdi]
	jne	.label_3224
	lea	rdi, [rdi]
	jmp	.label_3230
.label_3224:
	lea	rdi, [rdi]
	xor	eax, eax
	mov	cl, al
	nop	
	test	cl, 1
	jne	.label_2921
	nop	
	jmp	.label_3240
.label_3230:
	mov	eax, 0xfff6e5d5
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x2d8]
	mov	dx, cx
	movsx	esi, dx
	lea	rdi, [rdi]
	cmp	eax, esi
	jl	.label_2921
	jmp	.label_3240
.label_3204:
	mov	rsp, rsp
	xor	eax, eax
	mov	rsp, rsp
	mov	cl, al
	test	cl, 1
	jne	.label_3245
	jmp	.label_3249
.label_3245:
	xor	eax, eax
	mov	rbp, rbp
	mov	cl, al
	test	cl, 1
	nop	
	jne	.label_2921
	mov	rsp, rsp
	jmp	.label_3240
.label_3249:
	mov	rax, qword ptr [rbp - 0x2d8]
	mov	cx, ax
	lea	rdi, [rdi]
	movsx	edx, cx
	lea	rsi, [rsi]
	cmp	edx, 0
	jge	.label_3256
	mov	rax, qword ptr [rbp - 0x2d8]
	lea	rdi, [rdi]
	mov	cx, ax
	mov	rbp, rbp
	movsx	edx, cx
	cmp	edx, 0xfff6e5d5
	mov	rsp, rsp
	jl	.label_2921
	mov	rbp, rbp
	jmp	.label_3240
.label_3256:
	mov	eax, 0x91a2b
	mov	rcx, qword ptr [rbp - 0x2d8]
	mov	dx, cx
	movsx	esi, dx
	nop	
	cmp	eax, esi
	mov	rsp, rsp
	jl	.label_2921
.label_3240:
	mov	rax, qword ptr [rbp - 0x2d8]
	mov	rsp, rsp
	mov	cx, ax
	mov	rbp, rbp
	movsx	edx, cx
	imul	edx, edx, 0xe10
	mov	rbp, rbp
	cmp	edx, 0xffff8000
	jl	.label_2921
	lea	rsi, [rsi]
	mov	eax, 0x7fff
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x2d8]
	mov	dx, cx
	movsx	esi, dx
	nop	
	imul	esi, esi, 0xe10
	mov	rbp, rbp
	cmp	eax, esi
	jge	.label_3277
.label_2921:
	lea	rsi, [rsi]
	mov	al, 1
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x2d8]
	mov	rbp, rbp
	mov	dx, cx
	lea	rsi, [rsi]
	movsx	esi, dx
	imul	esi, esi, 0xe10
	lea	rdi, [rdi]
	mov	dx, si
	movsx	rcx, dx
	mov	qword ptr [rbp - 0x4b0], rcx
	lea	rsi, [rsi]
	test	al, 1
	jne	.label_1997
	nop	
	jmp	.label_2022
.label_3277:
	nop	
	xor	eax, eax
	mov	cl, al
	nop	
	mov	rdx, qword ptr [rbp - 0x2d8]
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
	mov	qword ptr [rbp - 0x4b0], rdx
	mov	rbp, rbp
	test	cl, 1
	lea	rdi, [rdi]
	jne	.label_1997
	jmp	.label_2022
.label_3196:
	xor	eax, eax
	mov	rsp, rsp
	mov	cl, al
	test	cl, 1
	jne	.label_3313
	jmp	.label_3320
.label_3313:
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x2d8], 0
	jge	.label_3324
	movabs	rax, 0x91a2b3c4d5e6f
	nop	
	cmp	qword ptr [rbp - 0x2d8], rax
	jl	.label_2508
	mov	rbp, rbp
	jmp	.label_3338
.label_3324:
	lea	rsi, [rsi]
	xor	eax, eax
	mov	cl, al
	lea	rsi, [rsi]
	test	cl, 1
	lea	rsi, [rsi]
	jne	.label_3529
	jmp	.label_3344
.label_3529:
	mov	rbp, rbp
	xor	eax, eax
	nop	
	mov	cl, al
	lea	rsi, [rsi]
	test	cl, 1
	mov	rsp, rsp
	jne	.label_2508
	lea	rdi, [rdi]
	jmp	.label_3338
.label_3344:
	movabs	rax, 0xfff6e5d4c3b2a191
	cmp	rax, qword ptr [rbp - 0x2d8]
	jl	.label_2508
	lea	rdi, [rdi]
	jmp	.label_3338
.label_3320:
	xor	eax, eax
	lea	rsi, [rsi]
	mov	cl, al
	mov	rsp, rsp
	test	cl, 1
	nop	
	jne	.label_3355
	lea	rsi, [rsi]
	jmp	.label_2592
.label_3355:
	xor	eax, eax
	mov	cl, al
	nop	
	test	cl, 1
	lea	rdi, [rdi]
	jne	.label_2508
	lea	rsi, [rsi]
	jmp	.label_3338
.label_2592:
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x2d8], 0
	jge	.label_3367
	lea	rdi, [rdi]
	movabs	rax, 0xfff6e5d4c3b2a191
	nop	
	cmp	qword ptr [rbp - 0x2d8], rax
	mov	rsp, rsp
	jl	.label_2508
	jmp	.label_3338
.label_3367:
	mov	rbp, rbp
	movabs	rax, 0x91a2b3c4d5e6f
	cmp	rax, qword ptr [rbp - 0x2d8]
	mov	rsp, rsp
	jl	.label_2508
.label_3338:
	mov	rbp, rbp
	imul	rax, qword ptr [rbp - 0x2d8], 0xe10
	cmp	rax, -0x8000
	jl	.label_2508
	mov	eax, 0x7fff
	mov	ecx, eax
	mov	rbp, rbp
	imul	rdx, qword ptr [rbp - 0x2d8], 0xe10
	lea	rdi, [rdi]
	cmp	rcx, rdx
	nop	
	jge	.label_3390
.label_2508:
	lea	rsi, [rsi]
	mov	al, 1
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x2d8]
	mov	edx, ecx
	mov	rsp, rsp
	imul	edx, edx, 0xe10
	mov	si, dx
	lea	rsi, [rsi]
	movsx	rcx, si
	mov	qword ptr [rbp - 0x4b0], rcx
	test	al, 1
	jne	.label_1997
	nop	
	jmp	.label_2022
.label_3390:
	nop	
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x2d8]
	mov	eax, edx
	imul	eax, eax, 0xe10
	lea	rdi, [rdi]
	mov	si, ax
	lea	rdi, [rdi]
	movsx	rdx, si
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x4b0], rdx
	test	cl, 1
	mov	rbp, rbp
	jne	.label_1997
	lea	rdi, [rdi]
	jmp	.label_2022
.label_3189:
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_3000
	lea	rdi, [rdi]
	jmp	.label_3423
.label_3000:
	xor	eax, eax
	mov	cl, al
	mov	rbp, rbp
	test	cl, 1
	jne	.label_3425
	nop	
	jmp	.label_3045
.label_3425:
	nop	
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_3432
	jmp	.label_3435
.label_3432:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x2d8]
	mov	ecx, eax
	cmp	ecx, 0
	jge	.label_3437
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x2d8]
	mov	ecx, eax
	mov	rsp, rsp
	cmp	ecx, 0x91a2b
	lea	rsi, [rsi]
	jl	.label_3440
	jmp	.label_3220
.label_3437:
	lea	rdi, [rdi]
	xor	eax, eax
	nop	
	mov	cl, al
	lea	rdi, [rdi]
	test	cl, 1
	nop	
	jne	.label_3447
	mov	rbp, rbp
	jmp	.label_3454
.label_3447:
	xor	eax, eax
	mov	rsp, rsp
	mov	cl, al
	nop	
	test	cl, 1
	lea	rsi, [rsi]
	jne	.label_3440
	mov	rbp, rbp
	jmp	.label_3220
.label_3454:
	mov	eax, 0xfff6e5d5
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x2d8]
	mov	edx, ecx
	mov	rsp, rsp
	cmp	eax, edx
	lea	rsi, [rsi]
	jl	.label_3440
	nop	
	jmp	.label_3220
.label_3435:
	mov	rbp, rbp
	xor	eax, eax
	mov	rbp, rbp
	mov	cl, al
	mov	rbp, rbp
	test	cl, 1
	lea	rdi, [rdi]
	jne	.label_3477
	lea	rsi, [rsi]
	jmp	.label_3483
.label_3477:
	xor	eax, eax
	mov	rsp, rsp
	mov	cl, al
	test	cl, 1
	jne	.label_3440
	lea	rdi, [rdi]
	jmp	.label_3220
.label_3483:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x2d8]
	mov	ecx, eax
	lea	rsi, [rsi]
	cmp	ecx, 0
	mov	rbp, rbp
	jge	.label_3489
	mov	rax, qword ptr [rbp - 0x2d8]
	mov	ecx, eax
	cmp	ecx, 0xfff6e5d5
	lea	rsi, [rsi]
	jl	.label_3440
	mov	rsp, rsp
	jmp	.label_3220
.label_3489:
	mov	eax, 0x91a2b
	mov	rcx, qword ptr [rbp - 0x2d8]
	mov	edx, ecx
	lea	rsi, [rsi]
	cmp	eax, edx
	lea	rsi, [rsi]
	jl	.label_3440
.label_3220:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x2d8]
	lea	rsi, [rsi]
	mov	ecx, eax
	imul	ecx, ecx, 0xe10
	nop	
	cmp	ecx, 0x80000000
	mov	rsp, rsp
	jl	.label_3440
	lea	rdi, [rdi]
	mov	eax, 0x7fffffff
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x2d8]
	nop	
	mov	edx, ecx
	lea	rsi, [rsi]
	imul	edx, edx, 0xe10
	cmp	eax, edx
	jge	.label_3518
.label_3440:
	lea	rdi, [rdi]
	mov	al, 1
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x2d8]
	mov	edx, ecx
	mov	rbp, rbp
	imul	edx, edx, 0xe10
	lea	rsi, [rsi]
	movsxd	rcx, edx
	nop	
	mov	qword ptr [rbp - 0x4b0], rcx
	lea	rsi, [rsi]
	test	al, 1
	jne	.label_1997
	mov	rbp, rbp
	jmp	.label_2022
.label_3518:
	mov	rsp, rsp
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x2d8]
	lea	rsi, [rsi]
	mov	eax, edx
	imul	eax, eax, 0xe10
	mov	rsp, rsp
	movsxd	rdx, eax
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x4b0], rdx
	lea	rsi, [rsi]
	test	cl, 1
	jne	.label_1997
	mov	rsp, rsp
	jmp	.label_2022
.label_3045:
	nop	
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	mov	rbp, rbp
	jne	.label_3558
	mov	rsp, rsp
	jmp	.label_2708
.label_3558:
	cmp	qword ptr [rbp - 0x2d8], 0
	mov	rbp, rbp
	jge	.label_3564
	lea	rdi, [rdi]
	movabs	rax, 0x91a2b3c4d5e6f
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x2d8], rax
	jl	.label_2599
	lea	rsi, [rsi]
	jmp	.label_3577
.label_3564:
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_3579
	mov	rbp, rbp
	jmp	.label_3581
.label_3579:
	nop	
	xor	eax, eax
	mov	cl, al
	lea	rsi, [rsi]
	test	cl, 1
	nop	
	jne	.label_2599
	jmp	.label_3577
.label_3581:
	lea	rsi, [rsi]
	movabs	rax, 0xfff6e5d4c3b2a191
	nop	
	cmp	rax, qword ptr [rbp - 0x2d8]
	mov	rbp, rbp
	jl	.label_2599
	mov	rbp, rbp
	jmp	.label_3577
.label_2708:
	mov	rbp, rbp
	xor	eax, eax
	mov	rsp, rsp
	mov	cl, al
	lea	rdi, [rdi]
	test	cl, 1
	jne	.label_3601
	jmp	.label_3605
.label_3601:
	xor	eax, eax
	nop	
	mov	cl, al
	nop	
	test	cl, 1
	mov	rbp, rbp
	jne	.label_2599
	lea	rsi, [rsi]
	jmp	.label_3577
.label_3605:
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x2d8], 0
	lea	rsi, [rsi]
	jge	.label_3610
	nop	
	movabs	rax, 0xfff6e5d4c3b2a191
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x2d8], rax
	jl	.label_2599
	jmp	.label_3577
.label_3610:
	movabs	rax, 0x91a2b3c4d5e6f
	cmp	rax, qword ptr [rbp - 0x2d8]
	mov	rsp, rsp
	jl	.label_2599
.label_3577:
	imul	rax, qword ptr [rbp - 0x2d8], 0xe10
	cmp	rax, -0x80000000
	jl	.label_2599
	mov	rsp, rsp
	mov	eax, 0x7fffffff
	mov	ecx, eax
	nop	
	imul	rdx, qword ptr [rbp - 0x2d8], 0xe10
	cmp	rcx, rdx
	jge	.label_2273
.label_2599:
	mov	rbp, rbp
	mov	al, 1
	mov	rcx, qword ptr [rbp - 0x2d8]
	mov	rsp, rsp
	mov	edx, ecx
	nop	
	imul	edx, edx, 0xe10
	lea	rsi, [rsi]
	movsxd	rcx, edx
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x4b0], rcx
	mov	rsp, rsp
	test	al, 1
	jne	.label_1997
	lea	rsi, [rsi]
	jmp	.label_2022
.label_2273:
	xor	eax, eax
	mov	rsp, rsp
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x2d8]
	lea	rdi, [rdi]
	mov	eax, edx
	imul	eax, eax, 0xe10
	movsxd	rdx, eax
	mov	qword ptr [rbp - 0x4b0], rdx
	test	cl, 1
	lea	rdi, [rdi]
	jne	.label_1997
	lea	rdi, [rdi]
	jmp	.label_2022
.label_3423:
	mov	al, 1
	test	al, 1
	nop	
	jne	.label_3659
	jmp	.label_3663
.label_3659:
	nop	
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_3665
	lea	rsi, [rsi]
	jmp	.label_3668
.label_3665:
	lea	rsi, [rsi]
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_3671
	lea	rsi, [rsi]
	jmp	.label_3674
.label_3671:
	cmp	qword ptr [rbp - 0x2d8], 0
	jge	.label_3677
	mov	rbp, rbp
	movabs	rax, 0x91a2b3c4d5e6f
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x2d8], rax
	mov	rsp, rsp
	jl	.label_3681
	jmp	.label_2841
.label_3677:
	lea	rsi, [rsi]
	xor	eax, eax
	lea	rdi, [rdi]
	mov	cl, al
	test	cl, 1
	jne	.label_2793
	mov	rsp, rsp
	jmp	.label_3692
.label_2793:
	xor	eax, eax
	mov	cl, al
	nop	
	test	cl, 1
	lea	rdi, [rdi]
	jne	.label_3681
	jmp	.label_2841
.label_3692:
	lea	rsi, [rsi]
	movabs	rax, 0xfff6e5d4c3b2a191
	cmp	rax, qword ptr [rbp - 0x2d8]
	nop	
	jl	.label_3681
	nop	
	jmp	.label_2841
.label_3674:
	nop	
	xor	eax, eax
	lea	rdi, [rdi]
	mov	cl, al
	lea	rdi, [rdi]
	test	cl, 1
	jne	.label_2780
	jmp	.label_3704
.label_2780:
	xor	eax, eax
	mov	rbp, rbp
	mov	cl, al
	test	cl, 1
	jne	.label_3681
	jmp	.label_2841
.label_3704:
	cmp	qword ptr [rbp - 0x2d8], 0
	mov	rbp, rbp
	jge	.label_3710
	lea	rsi, [rsi]
	movabs	rax, 0xfff6e5d4c3b2a191
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x2d8], rax
	jl	.label_3681
	jmp	.label_2841
.label_3710:
	lea	rdi, [rdi]
	movabs	rax, 0x91a2b3c4d5e6f
	cmp	rax, qword ptr [rbp - 0x2d8]
	nop	
	jl	.label_3681
.label_2841:
	nop	
	movabs	rax, 0x8000000000000000
	nop	
	imul	rcx, qword ptr [rbp - 0x2d8], 0xe10
	cmp	rcx, rax
	lea	rsi, [rsi]
	jl	.label_3681
	movabs	rax, 0x7fffffffffffffff
	nop	
	imul	rcx, qword ptr [rbp - 0x2d8], 0xe10
	cmp	rax, rcx
	mov	rbp, rbp
	jge	.label_3730
.label_3681:
	mov	al, 1
	imul	rcx, qword ptr [rbp - 0x2d8], 0xe10
	mov	qword ptr [rbp - 0x4b0], rcx
	test	al, 1
	jne	.label_1997
	mov	rsp, rsp
	jmp	.label_2022
.label_3730:
	xor	eax, eax
	mov	rbp, rbp
	mov	cl, al
	mov	rsp, rsp
	imul	rdx, qword ptr [rbp - 0x2d8], 0xe10
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x4b0], rdx
	test	cl, 1
	lea	rdi, [rdi]
	jne	.label_1997
	jmp	.label_2022
.label_3668:
	lea	rsi, [rsi]
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_3757
	lea	rsi, [rsi]
	jmp	.label_3763
.label_3757:
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x2d8], 0
	lea	rdi, [rdi]
	jge	.label_3767
	lea	rsi, [rsi]
	movabs	rax, 0x91a2b3c4d5e6f
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0x2d8], rax
	mov	rbp, rbp
	jl	.label_3771
	nop	
	jmp	.label_3416
.label_3767:
	mov	rsp, rsp
	xor	eax, eax
	lea	rdi, [rdi]
	mov	cl, al
	nop	
	test	cl, 1
	jne	.label_3779
	lea	rsi, [rsi]
	jmp	.label_3783
.label_3779:
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_3771
	jmp	.label_3416
.label_3783:
	lea	rsi, [rsi]
	movabs	rax, 0xfff6e5d4c3b2a191
	cmp	rax, qword ptr [rbp - 0x2d8]
	jl	.label_3771
	mov	rsp, rsp
	jmp	.label_3416
.label_3763:
	nop	
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_3793
	mov	rsp, rsp
	jmp	.label_3796
.label_3793:
	lea	rsi, [rsi]
	xor	eax, eax
	mov	cl, al
	mov	rsp, rsp
	test	cl, 1
	jne	.label_3771
	jmp	.label_3416
.label_3796:
	cmp	qword ptr [rbp - 0x2d8], 0
	jge	.label_3803
	nop	
	movabs	rax, 0xfff6e5d4c3b2a191
	cmp	qword ptr [rbp - 0x2d8], rax
	nop	
	jl	.label_3771
	mov	rbp, rbp
	jmp	.label_3416
.label_3803:
	mov	rbp, rbp
	movabs	rax, 0x91a2b3c4d5e6f
	lea	rdi, [rdi]
	cmp	rax, qword ptr [rbp - 0x2d8]
	mov	rsp, rsp
	jl	.label_3771
.label_3416:
	movabs	rax, 0x8000000000000000
	mov	rbp, rbp
	imul	rcx, qword ptr [rbp - 0x2d8], 0xe10
	lea	rsi, [rsi]
	cmp	rcx, rax
	jl	.label_3771
	nop	
	movabs	rax, 0x7fffffffffffffff
	imul	rcx, qword ptr [rbp - 0x2d8], 0xe10
	mov	rsp, rsp
	cmp	rax, rcx
	lea	rdi, [rdi]
	jge	.label_3819
.label_3771:
	mov	rsp, rsp
	mov	al, 1
	mov	rbp, rbp
	imul	rcx, qword ptr [rbp - 0x2d8], 0xe10
	mov	qword ptr [rbp - 0x4b0], rcx
	lea	rdi, [rdi]
	test	al, 1
	jne	.label_1997
	jmp	.label_2022
.label_3819:
	xor	eax, eax
	mov	rbp, rbp
	mov	cl, al
	imul	rdx, qword ptr [rbp - 0x2d8], 0xe10
	mov	qword ptr [rbp - 0x4b0], rdx
	test	cl, 1
	nop	
	jne	.label_1997
	lea	rsi, [rsi]
	jmp	.label_2022
.label_3663:
	xor	eax, eax
	lea	rdi, [rdi]
	mov	cl, al
	lea	rdi, [rdi]
	test	cl, 1
	jne	.label_3846
	jmp	.label_3850
.label_3846:
	mov	rbp, rbp
	xor	eax, eax
	mov	cl, al
	nop	
	test	cl, 1
	nop	
	jne	.label_3851
	jmp	.label_3856
.label_3851:
	cmp	qword ptr [rbp - 0x2d8], 0
	jge	.label_3859
	movabs	rax, 0x91a2b3c4d5e6f
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x2d8], rax
	jl	.label_1903
	jmp	.label_1911
.label_3859:
	xor	eax, eax
	mov	cl, al
	mov	rsp, rsp
	test	cl, 1
	jne	.label_3866
	lea	rdi, [rdi]
	jmp	.label_1898
.label_3866:
	xor	eax, eax
	mov	cl, al
	mov	rbp, rbp
	test	cl, 1
	lea	rdi, [rdi]
	jne	.label_1903
	jmp	.label_1911
.label_1898:
	movabs	rax, 0xfff6e5d4c3b2a191
	mov	rsp, rsp
	cmp	rax, qword ptr [rbp - 0x2d8]
	jl	.label_1903
	jmp	.label_1911
.label_3856:
	mov	rsp, rsp
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_1929
	lea	rsi, [rsi]
	jmp	.label_1938
.label_1929:
	xor	eax, eax
	lea	rsi, [rsi]
	mov	cl, al
	nop	
	test	cl, 1
	jne	.label_1903
	jmp	.label_1911
.label_1938:
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x2d8], 0
	mov	rbp, rbp
	jge	.label_1948
	mov	rsp, rsp
	movabs	rax, 0xfff6e5d4c3b2a191
	cmp	qword ptr [rbp - 0x2d8], rax
	mov	rsp, rsp
	jl	.label_1903
	lea	rdi, [rdi]
	jmp	.label_1911
.label_1948:
	mov	rbp, rbp
	movabs	rax, 0x91a2b3c4d5e6f
	cmp	rax, qword ptr [rbp - 0x2d8]
	jl	.label_1903
.label_1911:
	lea	rsi, [rsi]
	movabs	rax, 0x8000000000000000
	lea	rdi, [rdi]
	imul	rcx, qword ptr [rbp - 0x2d8], 0xe10
	lea	rdi, [rdi]
	cmp	rcx, rax
	nop	
	jl	.label_1903
	lea	rdi, [rdi]
	movabs	rax, 0x7fffffffffffffff
	imul	rcx, qword ptr [rbp - 0x2d8], 0xe10
	mov	rbp, rbp
	cmp	rax, rcx
	jge	.label_2330
.label_1903:
	mov	al, 1
	imul	rcx, qword ptr [rbp - 0x2d8], 0xe10
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x4b0], rcx
	mov	rbp, rbp
	test	al, 1
	jne	.label_1997
	jmp	.label_2022
.label_2330:
	lea	rsi, [rsi]
	xor	eax, eax
	mov	cl, al
	imul	rdx, qword ptr [rbp - 0x2d8], 0xe10
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x4b0], rdx
	lea	rdi, [rdi]
	test	cl, 1
	jne	.label_1997
	nop	
	jmp	.label_2022
.label_3850:
	lea	rdi, [rdi]
	xor	eax, eax
	mov	cl, al
	lea	rdi, [rdi]
	test	cl, 1
	lea	rdi, [rdi]
	jne	.label_2034
	lea	rdi, [rdi]
	jmp	.label_2040
.label_2034:
	cmp	qword ptr [rbp - 0x2d8], 0
	mov	rsp, rsp
	jge	.label_2042
	movabs	rax, 0x91a2b3c4d5e6f
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x2d8], rax
	jl	.label_2047
	nop	
	jmp	.label_2052
.label_2042:
	xor	eax, eax
	mov	cl, al
	mov	rsp, rsp
	test	cl, 1
	lea	rdi, [rdi]
	jne	.label_2658
	jmp	.label_2058
.label_2658:
	mov	rbp, rbp
	xor	eax, eax
	mov	cl, al
	nop	
	test	cl, 1
	jne	.label_2047
	jmp	.label_2052
.label_2058:
	movabs	rax, 0xfff6e5d4c3b2a191
	lea	rdi, [rdi]
	cmp	rax, qword ptr [rbp - 0x2d8]
	mov	rbp, rbp
	jl	.label_2047
	jmp	.label_2052
.label_2040:
	mov	rbp, rbp
	xor	eax, eax
	lea	rdi, [rdi]
	mov	cl, al
	nop	
	test	cl, 1
	jne	.label_2073
	nop	
	jmp	.label_2774
.label_2073:
	mov	rbp, rbp
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	nop	
	jne	.label_2047
	lea	rsi, [rsi]
	jmp	.label_2052
.label_2774:
	cmp	qword ptr [rbp - 0x2d8], 0
	lea	rdi, [rdi]
	jge	.label_2089
	movabs	rax, 0xfff6e5d4c3b2a191
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x2d8], rax
	mov	rsp, rsp
	jl	.label_2047
	jmp	.label_2052
.label_2089:
	movabs	rax, 0x91a2b3c4d5e6f
	mov	rbp, rbp
	cmp	rax, qword ptr [rbp - 0x2d8]
	jl	.label_2047
.label_2052:
	nop	
	movabs	rax, 0x8000000000000000
	imul	rcx, qword ptr [rbp - 0x2d8], 0xe10
	cmp	rcx, rax
	mov	rsp, rsp
	jl	.label_2047
	mov	rsp, rsp
	movabs	rax, 0x7fffffffffffffff
	imul	rcx, qword ptr [rbp - 0x2d8], 0xe10
	lea	rdi, [rdi]
	cmp	rax, rcx
	jge	.label_2124
.label_2047:
	nop	
	mov	al, 1
	imul	rcx, qword ptr [rbp - 0x2d8], 0xe10
	mov	qword ptr [rbp - 0x4b0], rcx
	test	al, 1
	jne	.label_1997
	jmp	.label_2022
.label_2124:
	lea	rdi, [rdi]
	xor	eax, eax
	nop	
	mov	cl, al
	mov	rsp, rsp
	imul	rdx, qword ptr [rbp - 0x2d8], 0xe10
	mov	qword ptr [rbp - 0x4b0], rdx
	mov	rbp, rbp
	test	cl, 1
	jne	.label_1997
.label_2022:
	xor	eax, eax
	nop	
	mov	cl, al
	lea	rdi, [rdi]
	test	cl, 1
	jne	.label_2153
	jmp	.label_2159
.label_2153:
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	lea	rdi, [rdi]
	jne	.label_2161
	jmp	.label_2167
.label_2161:
	mov	al, 1
	test	al, 1
	jne	.label_2169
	lea	rdi, [rdi]
	jmp	.label_3560
.label_2169:
	mov	rax, qword ptr [rbp - 0x4b0]
	lea	rdi, [rdi]
	mov	cl, al
	lea	rdi, [rdi]
	movsx	edx, cl
	lea	rsi, [rsi]
	cmp	edx, 0
	jge	.label_3193
	lea	rdi, [rdi]
	mov	eax, 0x80000000
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x1c8]
	lea	rsi, [rsi]
	mov	dl, cl
	movsx	esi, dl
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x4b0]
	mov	dl, cl
	lea	rsi, [rsi]
	movsx	edi, dl
	sub	eax, edi
	lea	rdi, [rdi]
	cmp	esi, eax
	lea	rdi, [rdi]
	jl	.label_2181
	mov	rbp, rbp
	jmp	.label_2194
.label_3193:
	lea	rdi, [rdi]
	mov	eax, 0x7fffffff
	mov	rcx, qword ptr [rbp - 0x4b0]
	nop	
	mov	dl, cl
	mov	rsp, rsp
	movsx	esi, dl
	nop	
	sub	eax, esi
	mov	rcx, qword ptr [rbp - 0x1c8]
	mov	dl, cl
	lea	rsi, [rsi]
	movsx	esi, dl
	nop	
	cmp	eax, esi
	jl	.label_2181
	nop	
	jmp	.label_2194
.label_3560:
	nop	
	mov	rax, qword ptr [rbp - 0x1c8]
	nop	
	mov	cl, al
	lea	rdi, [rdi]
	movsx	edx, cl
	cmp	edx, 0
	lea	rdi, [rdi]
	jge	.label_3402
	mov	rax, qword ptr [rbp - 0x4b0]
	nop	
	mov	cl, al
	mov	rsp, rsp
	movsx	edx, cl
	mov	rax, qword ptr [rbp - 0x1c8]
	mov	rbp, rbp
	mov	cl, al
	mov	rbp, rbp
	movsx	esi, cl
	mov	rax, qword ptr [rbp - 0x4b0]
	mov	cl, al
	movsx	edi, cl
	lea	rsi, [rsi]
	add	esi, edi
	cmp	edx, esi
	mov	rsp, rsp
	jle	.label_2181
	lea	rdi, [rdi]
	jmp	.label_2194
.label_3402:
	mov	rax, qword ptr [rbp - 0x4b0]
	nop	
	mov	cl, al
	movsx	edx, cl
	cmp	edx, 0
	lea	rdi, [rdi]
	jge	.label_3541
	mov	rax, qword ptr [rbp - 0x1c8]
	mov	rsp, rsp
	mov	cl, al
	mov	rsp, rsp
	movsx	edx, cl
	mov	rax, qword ptr [rbp - 0x1c8]
	mov	cl, al
	movsx	esi, cl
	nop	
	mov	rax, qword ptr [rbp - 0x4b0]
	mov	cl, al
	movsx	edi, cl
	add	esi, edi
	cmp	edx, esi
	mov	rbp, rbp
	jle	.label_2181
	mov	rsp, rsp
	jmp	.label_2194
.label_3541:
	mov	rax, qword ptr [rbp - 0x1c8]
	mov	rsp, rsp
	mov	cl, al
	lea	rdi, [rdi]
	movsx	edx, cl
	mov	rax, qword ptr [rbp - 0x4b0]
	mov	cl, al
	lea	rsi, [rsi]
	movsx	esi, cl
	nop	
	add	edx, esi
	mov	rax, qword ptr [rbp - 0x4b0]
	lea	rsi, [rsi]
	mov	cl, al
	mov	rbp, rbp
	movsx	esi, cl
	cmp	edx, esi
	jl	.label_2181
.label_2194:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x1c8]
	mov	cl, al
	movsx	edx, cl
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x4b0]
	mov	cl, al
	mov	rbp, rbp
	movsx	esi, cl
	add	edx, esi
	nop	
	cmp	edx, -0x80
	jl	.label_2181
	nop	
	mov	eax, 0x7f
	mov	rcx, qword ptr [rbp - 0x1c8]
	mov	dl, cl
	movsx	esi, dl
	nop	
	mov	rcx, qword ptr [rbp - 0x4b0]
	mov	dl, cl
	lea	rsi, [rsi]
	movsx	edi, dl
	lea	rsi, [rsi]
	add	esi, edi
	cmp	eax, esi
	jge	.label_2294
.label_2181:
	mov	al, 1
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x1c8]
	mov	dl, cl
	movsx	esi, dl
	mov	rcx, qword ptr [rbp - 0x4b0]
	nop	
	mov	dl, cl
	movsx	edi, dl
	mov	rsp, rsp
	add	esi, edi
	mov	dl, sil
	lea	rdi, [rdi]
	movsx	rcx, dl
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x4b8], rcx
	nop	
	test	al, 1
	jne	.label_1997
	jmp	.label_2019
.label_2294:
	mov	rbp, rbp
	xor	eax, eax
	mov	cl, al
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x1c8]
	lea	rsi, [rsi]
	mov	sil, dl
	movsx	eax, sil
	mov	rdx, qword ptr [rbp - 0x4b0]
	mov	sil, dl
	movsx	edi, sil
	add	eax, edi
	mov	sil, al
	movsx	rdx, sil
	mov	qword ptr [rbp - 0x4b8], rdx
	mov	rsp, rsp
	test	cl, 1
	mov	rbp, rbp
	jne	.label_1997
	jmp	.label_2019
.label_2167:
	mov	al, 1
	mov	rsp, rsp
	test	al, 1
	jne	.label_2347
	nop	
	jmp	.label_2490
.label_2347:
	nop	
	cmp	qword ptr [rbp - 0x4b0], 0
	lea	rdi, [rdi]
	jge	.label_2351
	nop	
	movabs	rax, 0x8000000000000000
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x1c8]
	sub	rax, qword ptr [rbp - 0x4b0]
	cmp	rcx, rax
	nop	
	jl	.label_2355
	nop	
	jmp	.label_2275
.label_2351:
	mov	rbp, rbp
	movabs	rax, 0x7fffffffffffffff
	nop	
	sub	rax, qword ptr [rbp - 0x4b0]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rbp - 0x1c8]
	jl	.label_2355
	jmp	.label_2275
.label_2490:
	cmp	qword ptr [rbp - 0x1c8], 0
	mov	rbp, rbp
	jge	.label_2373
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x4b0]
	mov	rcx, qword ptr [rbp - 0x1c8]
	mov	rsp, rsp
	add	rcx, qword ptr [rbp - 0x4b0]
	cmp	rax, rcx
	mov	rsp, rsp
	jle	.label_2355
	lea	rdi, [rdi]
	jmp	.label_2275
.label_2373:
	nop	
	cmp	qword ptr [rbp - 0x4b0], 0
	nop	
	jge	.label_2386
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x1c8]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x1c8]
	mov	rbp, rbp
	add	rcx, qword ptr [rbp - 0x4b0]
	mov	rbp, rbp
	cmp	rax, rcx
	jle	.label_2355
	jmp	.label_2275
.label_2386:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x1c8]
	mov	rbp, rbp
	add	rax, qword ptr [rbp - 0x4b0]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rbp - 0x4b0]
	jl	.label_2355
.label_2275:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x1c8]
	lea	rsi, [rsi]
	add	rax, qword ptr [rbp - 0x4b0]
	lea	rsi, [rsi]
	cmp	rax, -0x80
	jl	.label_2355
	lea	rsi, [rsi]
	mov	eax, 0x7f
	lea	rsi, [rsi]
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x1c8]
	add	rdx, qword ptr [rbp - 0x4b0]
	lea	rdi, [rdi]
	cmp	rcx, rdx
	jge	.label_2412
.label_2355:
	nop	
	mov	al, 1
	mov	rcx, qword ptr [rbp - 0x1c8]
	mov	edx, ecx
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x4b0]
	mov	esi, ecx
	mov	rsp, rsp
	add	edx, esi
	lea	rsi, [rsi]
	mov	dil, dl
	lea	rdi, [rdi]
	movsx	rcx, dil
	nop	
	mov	qword ptr [rbp - 0x4b8], rcx
	test	al, 1
	jne	.label_1997
	jmp	.label_2019
.label_2412:
	xor	eax, eax
	mov	rbp, rbp
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x1c8]
	mov	eax, edx
	mov	rdx, qword ptr [rbp - 0x4b0]
	lea	rdi, [rdi]
	mov	esi, edx
	add	eax, esi
	mov	dil, al
	movsx	rdx, dil
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x4b8], rdx
	mov	rsp, rsp
	test	cl, 1
	lea	rsi, [rsi]
	jne	.label_1997
	nop	
	jmp	.label_2019
.label_2159:
	lea	rdi, [rdi]
	xor	eax, eax
	mov	rbp, rbp
	mov	cl, al
	lea	rdi, [rdi]
	test	cl, 1
	mov	rsp, rsp
	jne	.label_2450
	jmp	.label_2457
.label_2450:
	xor	eax, eax
	lea	rdi, [rdi]
	mov	cl, al
	lea	rsi, [rsi]
	test	cl, 1
	jne	.label_2462
	jmp	.label_2469
.label_2462:
	mov	al, 1
	test	al, 1
	nop	
	jne	.label_2470
	jmp	.label_2476
.label_2470:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x4b0]
	mov	cx, ax
	movsx	edx, cx
	lea	rsi, [rsi]
	cmp	edx, 0
	lea	rdi, [rdi]
	jge	.label_2478
	mov	eax, 0x80000000
	nop	
	mov	rcx, qword ptr [rbp - 0x1c8]
	mov	dx, cx
	movsx	esi, dx
	mov	rcx, qword ptr [rbp - 0x4b0]
	mov	dx, cx
	mov	rsp, rsp
	movsx	edi, dx
	sub	eax, edi
	cmp	esi, eax
	lea	rdi, [rdi]
	jl	.label_2507
	mov	rsp, rsp
	jmp	.label_2504
.label_2478:
	mov	rbp, rbp
	mov	eax, 0x7fffffff
	mov	rcx, qword ptr [rbp - 0x4b0]
	mov	dx, cx
	movsx	esi, dx
	sub	eax, esi
	nop	
	mov	rcx, qword ptr [rbp - 0x1c8]
	nop	
	mov	dx, cx
	movsx	esi, dx
	nop	
	cmp	eax, esi
	mov	rbp, rbp
	jl	.label_2507
	jmp	.label_2504
.label_2476:
	mov	rax, qword ptr [rbp - 0x1c8]
	mov	cx, ax
	movsx	edx, cx
	mov	rbp, rbp
	cmp	edx, 0
	nop	
	jge	.label_2524
	nop	
	mov	rax, qword ptr [rbp - 0x4b0]
	mov	rbp, rbp
	mov	cx, ax
	movsx	edx, cx
	mov	rax, qword ptr [rbp - 0x1c8]
	mov	cx, ax
	nop	
	movsx	esi, cx
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x4b0]
	lea	rsi, [rsi]
	mov	cx, ax
	nop	
	movsx	edi, cx
	mov	rsp, rsp
	add	esi, edi
	cmp	edx, esi
	jle	.label_2507
	mov	rsp, rsp
	jmp	.label_2504
.label_2524:
	mov	rax, qword ptr [rbp - 0x4b0]
	mov	cx, ax
	movsx	edx, cx
	lea	rdi, [rdi]
	cmp	edx, 0
	nop	
	jge	.label_2546
	mov	rax, qword ptr [rbp - 0x1c8]
	lea	rdi, [rdi]
	mov	cx, ax
	mov	rsp, rsp
	movsx	edx, cx
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x1c8]
	mov	cx, ax
	movsx	esi, cx
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x4b0]
	mov	cx, ax
	lea	rdi, [rdi]
	movsx	edi, cx
	mov	rbp, rbp
	add	esi, edi
	nop	
	cmp	edx, esi
	mov	rbp, rbp
	jle	.label_2507
	lea	rdi, [rdi]
	jmp	.label_2504
.label_2546:
	mov	rax, qword ptr [rbp - 0x1c8]
	mov	cx, ax
	movsx	edx, cx
	mov	rax, qword ptr [rbp - 0x4b0]
	mov	rsp, rsp
	mov	cx, ax
	nop	
	movsx	esi, cx
	mov	rbp, rbp
	add	edx, esi
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x4b0]
	mov	cx, ax
	lea	rdi, [rdi]
	movsx	esi, cx
	cmp	edx, esi
	nop	
	jl	.label_2507
.label_2504:
	mov	rax, qword ptr [rbp - 0x1c8]
	lea	rdi, [rdi]
	mov	cx, ax
	mov	rbp, rbp
	movsx	edx, cx
	mov	rax, qword ptr [rbp - 0x4b0]
	lea	rsi, [rsi]
	mov	cx, ax
	movsx	esi, cx
	add	edx, esi
	mov	rsp, rsp
	cmp	edx, 0xffff8000
	jl	.label_2507
	lea	rsi, [rsi]
	mov	eax, 0x7fff
	mov	rcx, qword ptr [rbp - 0x1c8]
	nop	
	mov	dx, cx
	mov	rsp, rsp
	movsx	esi, dx
	mov	rcx, qword ptr [rbp - 0x4b0]
	mov	dx, cx
	mov	rbp, rbp
	movsx	edi, dx
	add	esi, edi
	cmp	eax, esi
	lea	rsi, [rsi]
	jge	.label_2608
.label_2507:
	mov	rsp, rsp
	mov	al, 1
	mov	rcx, qword ptr [rbp - 0x1c8]
	lea	rdi, [rdi]
	mov	dx, cx
	mov	rbp, rbp
	movsx	esi, dx
	mov	rcx, qword ptr [rbp - 0x4b0]
	lea	rdi, [rdi]
	mov	dx, cx
	movsx	edi, dx
	add	esi, edi
	mov	dx, si
	movsx	rcx, dx
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x4b8], rcx
	lea	rdi, [rdi]
	test	al, 1
	jne	.label_1997
	jmp	.label_2019
.label_2608:
	mov	rsp, rsp
	xor	eax, eax
	mov	rbp, rbp
	mov	cl, al
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x1c8]
	mov	rbp, rbp
	mov	si, dx
	nop	
	movsx	eax, si
	mov	rdx, qword ptr [rbp - 0x4b0]
	mov	si, dx
	movsx	edi, si
	lea	rdi, [rdi]
	add	eax, edi
	mov	si, ax
	lea	rsi, [rsi]
	movsx	rdx, si
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x4b8], rdx
	nop	
	test	cl, 1
	jne	.label_1997
	lea	rsi, [rsi]
	jmp	.label_2019
.label_2469:
	mov	al, 1
	mov	rbp, rbp
	test	al, 1
	jne	.label_2659
	lea	rsi, [rsi]
	jmp	.label_2664
.label_2659:
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x4b0], 0
	jge	.label_2665
	nop	
	movabs	rax, 0x8000000000000000
	mov	rcx, qword ptr [rbp - 0x1c8]
	sub	rax, qword ptr [rbp - 0x4b0]
	lea	rdi, [rdi]
	cmp	rcx, rax
	jl	.label_2063
	nop	
	jmp	.label_2677
.label_2665:
	nop	
	movabs	rax, 0x7fffffffffffffff
	sub	rax, qword ptr [rbp - 0x4b0]
	cmp	rax, qword ptr [rbp - 0x1c8]
	jl	.label_2063
	jmp	.label_2677
.label_2664:
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0x1c8], 0
	jge	.label_2686
	nop	
	mov	rax, qword ptr [rbp - 0x4b0]
	mov	rcx, qword ptr [rbp - 0x1c8]
	nop	
	add	rcx, qword ptr [rbp - 0x4b0]
	cmp	rax, rcx
	jle	.label_2063
	mov	rsp, rsp
	jmp	.label_2677
.label_2686:
	cmp	qword ptr [rbp - 0x4b0], 0
	jge	.label_2696
	mov	rax, qword ptr [rbp - 0x1c8]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x1c8]
	add	rcx, qword ptr [rbp - 0x4b0]
	cmp	rax, rcx
	jle	.label_2063
	mov	rbp, rbp
	jmp	.label_2677
.label_2696:
	mov	rax, qword ptr [rbp - 0x1c8]
	add	rax, qword ptr [rbp - 0x4b0]
	mov	rbp, rbp
	cmp	rax, qword ptr [rbp - 0x4b0]
	mov	rbp, rbp
	jl	.label_2063
.label_2677:
	mov	rax, qword ptr [rbp - 0x1c8]
	mov	rsp, rsp
	add	rax, qword ptr [rbp - 0x4b0]
	cmp	rax, -0x8000
	nop	
	jl	.label_2063
	nop	
	mov	eax, 0x7fff
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x1c8]
	lea	rsi, [rsi]
	add	rdx, qword ptr [rbp - 0x4b0]
	cmp	rcx, rdx
	mov	rbp, rbp
	jge	.label_2723
.label_2063:
	mov	al, 1
	nop	
	mov	rcx, qword ptr [rbp - 0x1c8]
	nop	
	mov	edx, ecx
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x4b0]
	mov	esi, ecx
	add	edx, esi
	mov	di, dx
	mov	rsp, rsp
	movsx	rcx, di
	mov	qword ptr [rbp - 0x4b8], rcx
	test	al, 1
	mov	rbp, rbp
	jne	.label_1997
	nop	
	jmp	.label_2019
.label_2723:
	xor	eax, eax
	mov	rbp, rbp
	mov	cl, al
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x1c8]
	nop	
	mov	eax, edx
	mov	rdx, qword ptr [rbp - 0x4b0]
	nop	
	mov	esi, edx
	nop	
	add	eax, esi
	lea	rdi, [rdi]
	mov	di, ax
	movsx	rdx, di
	mov	qword ptr [rbp - 0x4b8], rdx
	test	cl, 1
	lea	rdi, [rdi]
	jne	.label_1997
	lea	rsi, [rsi]
	jmp	.label_2019
.label_2457:
	xor	eax, eax
	nop	
	mov	cl, al
	lea	rdi, [rdi]
	test	cl, 1
	mov	rsp, rsp
	jne	.label_2756
	mov	rbp, rbp
	jmp	.label_2764
.label_2756:
	lea	rdi, [rdi]
	xor	eax, eax
	lea	rsi, [rsi]
	mov	cl, al
	lea	rdi, [rdi]
	test	cl, 1
	lea	rsi, [rsi]
	jne	.label_2766
	jmp	.label_2775
.label_2766:
	mov	rsp, rsp
	mov	al, 1
	mov	rbp, rbp
	test	al, 1
	jne	.label_2778
	lea	rdi, [rdi]
	jmp	.label_2781
.label_2778:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x4b0]
	lea	rsi, [rsi]
	mov	ecx, eax
	cmp	ecx, 0
	lea	rdi, [rdi]
	jge	.label_2782
	mov	eax, 0x80000000
	mov	rcx, qword ptr [rbp - 0x1c8]
	mov	rsp, rsp
	mov	edx, ecx
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x4b0]
	lea	rsi, [rsi]
	mov	esi, ecx
	lea	rsi, [rsi]
	sub	eax, esi
	cmp	edx, eax
	jl	.label_2788
	lea	rdi, [rdi]
	jmp	.label_2802
.label_2782:
	mov	eax, 0x7fffffff
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x4b0]
	mov	rsp, rsp
	mov	edx, ecx
	sub	eax, edx
	mov	rcx, qword ptr [rbp - 0x1c8]
	lea	rsi, [rsi]
	mov	edx, ecx
	cmp	eax, edx
	jl	.label_2788
	jmp	.label_2802
.label_2781:
	mov	rax, qword ptr [rbp - 0x1c8]
	mov	ecx, eax
	cmp	ecx, 0
	nop	
	jge	.label_2819
	mov	rax, qword ptr [rbp - 0x4b0]
	mov	ecx, eax
	mov	rax, qword ptr [rbp - 0x1c8]
	mov	edx, eax
	mov	rax, qword ptr [rbp - 0x4b0]
	mov	esi, eax
	nop	
	add	edx, esi
	mov	rsp, rsp
	cmp	ecx, edx
	mov	rsp, rsp
	jle	.label_2788
	jmp	.label_2802
.label_2819:
	mov	rax, qword ptr [rbp - 0x4b0]
	mov	ecx, eax
	mov	rsp, rsp
	cmp	ecx, 0
	mov	rbp, rbp
	jge	.label_2833
	mov	rax, qword ptr [rbp - 0x1c8]
	nop	
	mov	ecx, eax
	mov	rax, qword ptr [rbp - 0x1c8]
	nop	
	mov	edx, eax
	nop	
	mov	rax, qword ptr [rbp - 0x4b0]
	mov	rbp, rbp
	mov	esi, eax
	add	edx, esi
	cmp	ecx, edx
	jle	.label_2788
	jmp	.label_2802
.label_2833:
	mov	rax, qword ptr [rbp - 0x1c8]
	mov	ecx, eax
	mov	rax, qword ptr [rbp - 0x4b0]
	lea	rdi, [rdi]
	mov	edx, eax
	mov	rsp, rsp
	add	ecx, edx
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x4b0]
	mov	edx, eax
	lea	rdi, [rdi]
	cmp	ecx, edx
	jl	.label_2788
.label_2802:
	nop	
	mov	rax, qword ptr [rbp - 0x1c8]
	mov	ecx, eax
	nop	
	mov	rax, qword ptr [rbp - 0x4b0]
	mov	rbp, rbp
	mov	edx, eax
	mov	rbp, rbp
	add	ecx, edx
	cmp	ecx, 0x80000000
	jl	.label_2788
	nop	
	mov	eax, 0x7fffffff
	mov	rcx, qword ptr [rbp - 0x1c8]
	nop	
	mov	edx, ecx
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x4b0]
	lea	rdi, [rdi]
	mov	esi, ecx
	mov	rbp, rbp
	add	edx, esi
	cmp	eax, edx
	nop	
	jge	.label_2872
.label_2788:
	mov	rsp, rsp
	mov	al, 1
	mov	rcx, qword ptr [rbp - 0x1c8]
	lea	rsi, [rsi]
	mov	edx, ecx
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x4b0]
	lea	rsi, [rsi]
	mov	esi, ecx
	add	edx, esi
	movsxd	rcx, edx
	mov	qword ptr [rbp - 0x4b8], rcx
	lea	rdi, [rdi]
	test	al, 1
	jne	.label_1997
	lea	rdi, [rdi]
	jmp	.label_2019
.label_2872:
	xor	eax, eax
	lea	rsi, [rsi]
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x1c8]
	nop	
	mov	eax, edx
	mov	rdx, qword ptr [rbp - 0x4b0]
	lea	rdi, [rdi]
	mov	esi, edx
	add	eax, esi
	movsxd	rdx, eax
	mov	qword ptr [rbp - 0x4b8], rdx
	test	cl, 1
	lea	rsi, [rsi]
	jne	.label_1997
	lea	rdi, [rdi]
	jmp	.label_2019
.label_2775:
	mov	rbp, rbp
	mov	al, 1
	lea	rdi, [rdi]
	test	al, 1
	lea	rdi, [rdi]
	jne	.label_2910
	lea	rsi, [rsi]
	jmp	.label_2914
.label_2910:
	cmp	qword ptr [rbp - 0x4b0], 0
	jge	.label_2916
	movabs	rax, 0x8000000000000000
	mov	rcx, qword ptr [rbp - 0x1c8]
	sub	rax, qword ptr [rbp - 0x4b0]
	lea	rsi, [rsi]
	cmp	rcx, rax
	jl	.label_2919
	mov	rbp, rbp
	jmp	.label_2927
.label_2916:
	lea	rdi, [rdi]
	movabs	rax, 0x7fffffffffffffff
	lea	rsi, [rsi]
	sub	rax, qword ptr [rbp - 0x4b0]
	nop	
	cmp	rax, qword ptr [rbp - 0x1c8]
	mov	rbp, rbp
	jl	.label_2919
	nop	
	jmp	.label_2927
.label_2914:
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x1c8], 0
	jge	.label_2941
	mov	rax, qword ptr [rbp - 0x4b0]
	mov	rcx, qword ptr [rbp - 0x1c8]
	lea	rdi, [rdi]
	add	rcx, qword ptr [rbp - 0x4b0]
	cmp	rax, rcx
	jle	.label_2919
	jmp	.label_2927
.label_2941:
	cmp	qword ptr [rbp - 0x4b0], 0
	jge	.label_2953
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x1c8]
	mov	rcx, qword ptr [rbp - 0x1c8]
	mov	rbp, rbp
	add	rcx, qword ptr [rbp - 0x4b0]
	mov	rbp, rbp
	cmp	rax, rcx
	jle	.label_2919
	jmp	.label_2927
.label_2953:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x1c8]
	add	rax, qword ptr [rbp - 0x4b0]
	cmp	rax, qword ptr [rbp - 0x4b0]
	lea	rdi, [rdi]
	jl	.label_2919
.label_2927:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x1c8]
	nop	
	add	rax, qword ptr [rbp - 0x4b0]
	mov	rbp, rbp
	cmp	rax, -0x80000000
	jl	.label_2919
	nop	
	mov	eax, 0x7fffffff
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x1c8]
	lea	rdi, [rdi]
	add	rdx, qword ptr [rbp - 0x4b0]
	nop	
	cmp	rcx, rdx
	lea	rsi, [rsi]
	jge	.label_2973
.label_2919:
	mov	al, 1
	mov	rcx, qword ptr [rbp - 0x1c8]
	mov	edx, ecx
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x4b0]
	mov	esi, ecx
	lea	rsi, [rsi]
	add	edx, esi
	movsxd	rcx, edx
	mov	qword ptr [rbp - 0x4b8], rcx
	test	al, 1
	jne	.label_1997
	jmp	.label_2019
.label_2973:
	mov	rsp, rsp
	xor	eax, eax
	lea	rsi, [rsi]
	mov	cl, al
	nop	
	mov	rdx, qword ptr [rbp - 0x1c8]
	mov	rsp, rsp
	mov	eax, edx
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x4b0]
	nop	
	mov	esi, edx
	add	eax, esi
	movsxd	rdx, eax
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x4b8], rdx
	test	cl, 1
	jne	.label_1997
	jmp	.label_2019
.label_2764:
	mov	al, 1
	test	al, 1
	mov	rbp, rbp
	jne	.label_2209
	mov	rbp, rbp
	jmp	.label_3013
.label_2209:
	lea	rsi, [rsi]
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	mov	rsp, rsp
	jne	.label_2246
	lea	rsi, [rsi]
	jmp	.label_3020
.label_2246:
	mov	al, 1
	mov	rsp, rsp
	test	al, 1
	jne	.label_3023
	jmp	.label_3092
.label_3023:
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x4b0], 0
	jge	.label_3027
	lea	rsi, [rsi]
	movabs	rax, 0x8000000000000000
	mov	rcx, qword ptr [rbp - 0x1c8]
	sub	rax, qword ptr [rbp - 0x4b0]
	lea	rsi, [rsi]
	cmp	rcx, rax
	jl	.label_2584
	jmp	.label_3035
.label_3027:
	nop	
	movabs	rax, 0x7fffffffffffffff
	sub	rax, qword ptr [rbp - 0x4b0]
	nop	
	cmp	rax, qword ptr [rbp - 0x1c8]
	jl	.label_2584
	lea	rdi, [rdi]
	jmp	.label_3035
.label_3092:
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x1c8], 0
	jge	.label_3042
	mov	rax, qword ptr [rbp - 0x4b0]
	mov	rcx, qword ptr [rbp - 0x1c8]
	add	rcx, qword ptr [rbp - 0x4b0]
	nop	
	cmp	rax, rcx
	mov	rbp, rbp
	jle	.label_2584
	jmp	.label_3035
.label_3042:
	nop	
	cmp	qword ptr [rbp - 0x4b0], 0
	jge	.label_3055
	mov	rax, qword ptr [rbp - 0x1c8]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x1c8]
	nop	
	add	rcx, qword ptr [rbp - 0x4b0]
	cmp	rax, rcx
	jle	.label_2584
	nop	
	jmp	.label_3035
.label_3055:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x1c8]
	add	rax, qword ptr [rbp - 0x4b0]
	cmp	rax, qword ptr [rbp - 0x4b0]
	lea	rdi, [rdi]
	jl	.label_2584
.label_3035:
	movabs	rax, 0x8000000000000000
	mov	rcx, qword ptr [rbp - 0x1c8]
	nop	
	add	rcx, qword ptr [rbp - 0x4b0]
	lea	rsi, [rsi]
	cmp	rcx, rax
	nop	
	jl	.label_2584
	mov	rbp, rbp
	movabs	rax, 0x7fffffffffffffff
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x1c8]
	nop	
	add	rcx, qword ptr [rbp - 0x4b0]
	nop	
	cmp	rax, rcx
	lea	rdi, [rdi]
	jge	.label_3085
.label_2584:
	mov	rsp, rsp
	mov	al, 1
	mov	rcx, qword ptr [rbp - 0x1c8]
	lea	rsi, [rsi]
	add	rcx, qword ptr [rbp - 0x4b0]
	nop	
	mov	qword ptr [rbp - 0x4b8], rcx
	mov	rbp, rbp
	test	al, 1
	jne	.label_1997
	jmp	.label_2019
.label_3085:
	xor	eax, eax
	mov	cl, al
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x1c8]
	mov	rbp, rbp
	add	rdx, qword ptr [rbp - 0x4b0]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x4b8], rdx
	test	cl, 1
	mov	rbp, rbp
	jne	.label_1997
	jmp	.label_2019
.label_3020:
	mov	al, 1
	nop	
	test	al, 1
	jne	.label_2944
	mov	rbp, rbp
	jmp	.label_3123
.label_2944:
	nop	
	cmp	qword ptr [rbp - 0x4b0], 0
	mov	rbp, rbp
	jge	.label_3125
	mov	rbp, rbp
	movabs	rax, 0x8000000000000000
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x1c8]
	nop	
	sub	rax, qword ptr [rbp - 0x4b0]
	lea	rsi, [rsi]
	cmp	rcx, rax
	jl	.label_3132
	jmp	.label_3040
.label_3125:
	movabs	rax, 0x7fffffffffffffff
	sub	rax, qword ptr [rbp - 0x4b0]
	lea	rdi, [rdi]
	cmp	rax, qword ptr [rbp - 0x1c8]
	mov	rbp, rbp
	jl	.label_3132
	lea	rdi, [rdi]
	jmp	.label_3040
.label_3123:
	nop	
	cmp	qword ptr [rbp - 0x1c8], 0
	mov	rbp, rbp
	jge	.label_3107
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x4b0]
	mov	rcx, qword ptr [rbp - 0x1c8]
	add	rcx, qword ptr [rbp - 0x4b0]
	cmp	rax, rcx
	lea	rsi, [rsi]
	jle	.label_3132
	jmp	.label_3040
.label_3107:
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x4b0], 0
	jge	.label_3157
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x1c8]
	mov	rcx, qword ptr [rbp - 0x1c8]
	add	rcx, qword ptr [rbp - 0x4b0]
	nop	
	cmp	rax, rcx
	jle	.label_3132
	jmp	.label_3040
.label_3157:
	mov	rax, qword ptr [rbp - 0x1c8]
	nop	
	add	rax, qword ptr [rbp - 0x4b0]
	lea	rdi, [rdi]
	cmp	rax, qword ptr [rbp - 0x4b0]
	jl	.label_3132
.label_3040:
	lea	rdi, [rdi]
	movabs	rax, 0x8000000000000000
	mov	rcx, qword ptr [rbp - 0x1c8]
	add	rcx, qword ptr [rbp - 0x4b0]
	cmp	rcx, rax
	lea	rsi, [rsi]
	jl	.label_3132
	movabs	rax, 0x7fffffffffffffff
	mov	rcx, qword ptr [rbp - 0x1c8]
	nop	
	add	rcx, qword ptr [rbp - 0x4b0]
	mov	rbp, rbp
	cmp	rax, rcx
	jge	.label_3177
.label_3132:
	lea	rdi, [rdi]
	mov	al, 1
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x1c8]
	add	rcx, qword ptr [rbp - 0x4b0]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x4b8], rcx
	lea	rsi, [rsi]
	test	al, 1
	jne	.label_1997
	lea	rdi, [rdi]
	jmp	.label_2019
.label_3177:
	lea	rdi, [rdi]
	xor	eax, eax
	nop	
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x1c8]
	lea	rsi, [rsi]
	add	rdx, qword ptr [rbp - 0x4b0]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x4b8], rdx
	mov	rbp, rbp
	test	cl, 1
	jne	.label_1997
	jmp	.label_2019
.label_3013:
	xor	eax, eax
	mov	cl, al
	nop	
	test	cl, 1
	jne	.label_3216
	lea	rdi, [rdi]
	jmp	.label_3221
.label_3216:
	lea	rsi, [rsi]
	mov	al, 1
	test	al, 1
	lea	rsi, [rsi]
	jne	.label_3223
	mov	rsp, rsp
	jmp	.label_3228
.label_3223:
	nop	
	cmp	qword ptr [rbp - 0x4b0], 0
	jge	.label_3231
	movabs	rax, 0x8000000000000000
	mov	rcx, qword ptr [rbp - 0x1c8]
	sub	rax, qword ptr [rbp - 0x4b0]
	lea	rsi, [rsi]
	cmp	rcx, rax
	mov	rsp, rsp
	jl	.label_1995
	jmp	.label_1921
.label_3231:
	movabs	rax, 0x7fffffffffffffff
	nop	
	sub	rax, qword ptr [rbp - 0x4b0]
	nop	
	cmp	rax, qword ptr [rbp - 0x1c8]
	jl	.label_1995
	mov	rsp, rsp
	jmp	.label_1921
.label_3228:
	nop	
	cmp	qword ptr [rbp - 0x1c8], 0
	lea	rsi, [rsi]
	jge	.label_3253
	mov	rax, qword ptr [rbp - 0x4b0]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x1c8]
	lea	rsi, [rsi]
	add	rcx, qword ptr [rbp - 0x4b0]
	mov	rsp, rsp
	cmp	rax, rcx
	jle	.label_1995
	lea	rsi, [rsi]
	jmp	.label_1921
.label_3253:
	cmp	qword ptr [rbp - 0x4b0], 0
	jge	.label_3808
	nop	
	mov	rax, qword ptr [rbp - 0x1c8]
	mov	rcx, qword ptr [rbp - 0x1c8]
	lea	rdi, [rdi]
	add	rcx, qword ptr [rbp - 0x4b0]
	mov	rsp, rsp
	cmp	rax, rcx
	mov	rbp, rbp
	jle	.label_1995
	jmp	.label_1921
.label_3808:
	nop	
	mov	rax, qword ptr [rbp - 0x1c8]
	add	rax, qword ptr [rbp - 0x4b0]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rbp - 0x4b0]
	nop	
	jl	.label_1995
.label_1921:
	movabs	rax, 0x8000000000000000
	mov	rcx, qword ptr [rbp - 0x1c8]
	add	rcx, qword ptr [rbp - 0x4b0]
	mov	rbp, rbp
	cmp	rcx, rax
	nop	
	jl	.label_1995
	nop	
	movabs	rax, 0x7fffffffffffffff
	mov	rcx, qword ptr [rbp - 0x1c8]
	mov	rsp, rsp
	add	rcx, qword ptr [rbp - 0x4b0]
	cmp	rax, rcx
	lea	rdi, [rdi]
	jge	.label_3286
.label_1995:
	lea	rsi, [rsi]
	mov	al, 1
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x1c8]
	add	rcx, qword ptr [rbp - 0x4b0]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x4b8], rcx
	test	al, 1
	jne	.label_1997
	jmp	.label_2019
.label_3286:
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x1c8]
	add	rdx, qword ptr [rbp - 0x4b0]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x4b8], rdx
	lea	rdi, [rdi]
	test	cl, 1
	jne	.label_1997
	mov	rbp, rbp
	jmp	.label_2019
.label_3221:
	mov	al, 1
	test	al, 1
	mov	rbp, rbp
	jne	.label_3307
	jmp	.label_3312
.label_3307:
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x4b0], 0
	lea	rsi, [rsi]
	jge	.label_3316
	movabs	rax, 0x8000000000000000
	nop	
	mov	rcx, qword ptr [rbp - 0x1c8]
	mov	rbp, rbp
	sub	rax, qword ptr [rbp - 0x4b0]
	cmp	rcx, rax
	jl	.label_2354
	lea	rdi, [rdi]
	jmp	.label_2451
.label_3316:
	movabs	rax, 0x7fffffffffffffff
	mov	rsp, rsp
	sub	rax, qword ptr [rbp - 0x4b0]
	cmp	rax, qword ptr [rbp - 0x1c8]
	jl	.label_2354
	lea	rsi, [rsi]
	jmp	.label_2451
.label_3312:
	cmp	qword ptr [rbp - 0x1c8], 0
	jge	.label_3346
	mov	rax, qword ptr [rbp - 0x4b0]
	mov	rcx, qword ptr [rbp - 0x1c8]
	nop	
	add	rcx, qword ptr [rbp - 0x4b0]
	lea	rdi, [rdi]
	cmp	rax, rcx
	jle	.label_2354
	lea	rsi, [rsi]
	jmp	.label_2451
.label_3346:
	cmp	qword ptr [rbp - 0x4b0], 0
	jge	.label_3358
	mov	rax, qword ptr [rbp - 0x1c8]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x1c8]
	lea	rsi, [rsi]
	add	rcx, qword ptr [rbp - 0x4b0]
	lea	rdi, [rdi]
	cmp	rax, rcx
	jle	.label_2354
	jmp	.label_2451
.label_3358:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x1c8]
	add	rax, qword ptr [rbp - 0x4b0]
	cmp	rax, qword ptr [rbp - 0x4b0]
	lea	rsi, [rsi]
	jl	.label_2354
.label_2451:
	movabs	rax, 0x8000000000000000
	mov	rcx, qword ptr [rbp - 0x1c8]
	add	rcx, qword ptr [rbp - 0x4b0]
	mov	rsp, rsp
	cmp	rcx, rax
	jl	.label_2354
	lea	rdi, [rdi]
	movabs	rax, 0x7fffffffffffffff
	mov	rcx, qword ptr [rbp - 0x1c8]
	add	rcx, qword ptr [rbp - 0x4b0]
	mov	rsp, rsp
	cmp	rax, rcx
	mov	rsp, rsp
	jge	.label_3259
.label_2354:
	mov	al, 1
	mov	rcx, qword ptr [rbp - 0x1c8]
	add	rcx, qword ptr [rbp - 0x4b0]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x4b8], rcx
	test	al, 1
	lea	rsi, [rsi]
	jne	.label_1997
	jmp	.label_2019
.label_3259:
	mov	rsp, rsp
	xor	eax, eax
	mov	rbp, rbp
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x1c8]
	add	rdx, qword ptr [rbp - 0x4b0]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x4b8], rdx
	test	cl, 1
	mov	rbp, rbp
	jne	.label_1997
.label_2019:
	nop	
	xor	eax, eax
	mov	cl, al
	lea	rdi, [rdi]
	test	cl, 1
	jne	.label_3411
	jmp	.label_3413
.label_3411:
	mov	rbp, rbp
	xor	eax, eax
	nop	
	mov	cl, al
	lea	rsi, [rsi]
	test	cl, 1
	lea	rdi, [rdi]
	jne	.label_3415
	jmp	.label_2589
.label_3415:
	mov	rbp, rbp
	xor	eax, eax
	mov	cl, al
	nop	
	test	cl, 1
	jne	.label_2629
	lea	rdi, [rdi]
	jmp	.label_3424
.label_2629:
	mov	rax, qword ptr [rbp - 0x2d0]
	mov	cl, al
	lea	rdi, [rdi]
	movsx	edx, cl
	cmp	edx, 0
	nop	
	jge	.label_3033
	mov	rax, qword ptr [rbp - 0x2d0]
	mov	rbp, rbp
	mov	cl, al
	movsx	edx, cl
	lea	rdi, [rdi]
	cmp	edx, 0x2222222
	mov	rbp, rbp
	jl	.label_2965
	jmp	.label_3109
.label_3033:
	mov	rbp, rbp
	xor	eax, eax
	mov	rbp, rbp
	mov	cl, al
	mov	rsp, rsp
	test	cl, 1
	mov	rbp, rbp
	jne	.label_3442
	jmp	.label_3150
.label_3442:
	mov	rbp, rbp
	xor	eax, eax
	nop	
	mov	cl, al
	test	cl, 1
	jne	.label_2965
	lea	rsi, [rsi]
	jmp	.label_3109
.label_3150:
	mov	eax, 0xfdddddde
	mov	rcx, qword ptr [rbp - 0x2d0]
	mov	dl, cl
	movsx	esi, dl
	cmp	eax, esi
	nop	
	jl	.label_2965
	mov	rsp, rsp
	jmp	.label_3109
.label_3424:
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_3464
	mov	rbp, rbp
	jmp	.label_1946
.label_3464:
	xor	eax, eax
	mov	cl, al
	nop	
	test	cl, 1
	lea	rdi, [rdi]
	jne	.label_2965
	jmp	.label_3109
.label_1946:
	mov	rax, qword ptr [rbp - 0x2d0]
	nop	
	mov	cl, al
	movsx	edx, cl
	mov	rsp, rsp
	cmp	edx, 0
	lea	rsi, [rsi]
	jge	.label_3285
	mov	rax, qword ptr [rbp - 0x2d0]
	nop	
	mov	cl, al
	mov	rsp, rsp
	movsx	edx, cl
	cmp	edx, 0xfdddddde
	jl	.label_2965
	jmp	.label_3109
.label_3285:
	mov	eax, 0x2222222
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x2d0]
	lea	rdi, [rdi]
	mov	dl, cl
	nop	
	movsx	esi, dl
	cmp	eax, esi
	mov	rbp, rbp
	jl	.label_2965
.label_3109:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x2d0]
	mov	rsp, rsp
	mov	cl, al
	movsx	edx, cl
	imul	edx, edx, 0x3c
	lea	rsi, [rsi]
	cmp	edx, -0x80
	lea	rsi, [rsi]
	jl	.label_2965
	mov	eax, 0x7f
	mov	rcx, qword ptr [rbp - 0x2d0]
	nop	
	mov	dl, cl
	movsx	esi, dl
	imul	esi, esi, 0x3c
	mov	rbp, rbp
	cmp	eax, esi
	lea	rsi, [rsi]
	jge	.label_3459
.label_2965:
	mov	al, 1
	mov	rcx, qword ptr [rbp - 0x2d0]
	mov	dl, cl
	movsx	esi, dl
	lea	rsi, [rsi]
	imul	esi, esi, 0x3c
	lea	rsi, [rsi]
	mov	dl, sil
	lea	rsi, [rsi]
	movsx	rcx, dl
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x4c0], rcx
	test	al, 1
	jne	.label_1997
	mov	rbp, rbp
	jmp	.label_2054
.label_3459:
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x2d0]
	mov	sil, dl
	movsx	eax, sil
	mov	rbp, rbp
	imul	eax, eax, 0x3c
	lea	rdi, [rdi]
	mov	sil, al
	movsx	rdx, sil
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x4c0], rdx
	test	cl, 1
	mov	rsp, rsp
	jne	.label_1997
	jmp	.label_2054
.label_2589:
	xor	eax, eax
	lea	rsi, [rsi]
	mov	cl, al
	mov	rsp, rsp
	test	cl, 1
	jne	.label_3682
	lea	rdi, [rdi]
	jmp	.label_3553
.label_3682:
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0x2d0], 0
	lea	rsi, [rsi]
	jge	.label_3555
	lea	rsi, [rsi]
	movabs	rax, 0x222222222222222
	cmp	qword ptr [rbp - 0x2d0], rax
	lea	rdi, [rdi]
	jl	.label_2614
	jmp	.label_3566
.label_3555:
	xor	eax, eax
	mov	rsp, rsp
	mov	cl, al
	test	cl, 1
	lea	rdi, [rdi]
	jne	.label_3568
	jmp	.label_3573
.label_3568:
	xor	eax, eax
	lea	rsi, [rsi]
	mov	cl, al
	mov	rsp, rsp
	test	cl, 1
	jne	.label_2614
	mov	rsp, rsp
	jmp	.label_3566
.label_3573:
	movabs	rax, 0xfdddddddddddddde
	mov	rbp, rbp
	cmp	rax, qword ptr [rbp - 0x2d0]
	mov	rbp, rbp
	jl	.label_2614
	lea	rdi, [rdi]
	jmp	.label_3566
.label_3553:
	xor	eax, eax
	mov	rbp, rbp
	mov	cl, al
	test	cl, 1
	nop	
	jne	.label_1935
	lea	rdi, [rdi]
	jmp	.label_1971
.label_1935:
	xor	eax, eax
	mov	rsp, rsp
	mov	cl, al
	nop	
	test	cl, 1
	nop	
	jne	.label_2614
	jmp	.label_3566
.label_1971:
	nop	
	cmp	qword ptr [rbp - 0x2d0], 0
	nop	
	jge	.label_3604
	mov	rsp, rsp
	movabs	rax, 0xfdddddddddddddde
	cmp	qword ptr [rbp - 0x2d0], rax
	mov	rbp, rbp
	jl	.label_2614
	nop	
	jmp	.label_3566
.label_3604:
	movabs	rax, 0x222222222222222
	mov	rbp, rbp
	cmp	rax, qword ptr [rbp - 0x2d0]
	jl	.label_2614
.label_3566:
	lea	rsi, [rsi]
	imul	rax, qword ptr [rbp - 0x2d0], 0x3c
	cmp	rax, -0x80
	jl	.label_2614
	lea	rsi, [rsi]
	mov	eax, 0x7f
	mov	rbp, rbp
	mov	ecx, eax
	nop	
	imul	rdx, qword ptr [rbp - 0x2d0], 0x3c
	cmp	rcx, rdx
	jge	.label_3617
.label_2614:
	lea	rsi, [rsi]
	mov	al, 1
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x2d0]
	mov	edx, ecx
	imul	edx, edx, 0x3c
	mov	sil, dl
	lea	rsi, [rsi]
	movsx	rcx, sil
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x4c0], rcx
	nop	
	test	al, 1
	lea	rsi, [rsi]
	jne	.label_1997
	jmp	.label_2054
.label_3617:
	xor	eax, eax
	mov	rbp, rbp
	mov	cl, al
	nop	
	mov	rdx, qword ptr [rbp - 0x2d0]
	lea	rsi, [rsi]
	mov	eax, edx
	mov	rsp, rsp
	imul	eax, eax, 0x3c
	mov	sil, al
	mov	rbp, rbp
	movsx	rdx, sil
	mov	qword ptr [rbp - 0x4c0], rdx
	test	cl, 1
	jne	.label_1997
	lea	rdi, [rdi]
	jmp	.label_2054
.label_3413:
	xor	eax, eax
	lea	rdi, [rdi]
	mov	cl, al
	mov	rsp, rsp
	test	cl, 1
	lea	rdi, [rdi]
	jne	.label_3648
	jmp	.label_3655
.label_3648:
	xor	eax, eax
	mov	rsp, rsp
	mov	cl, al
	mov	rsp, rsp
	test	cl, 1
	lea	rdi, [rdi]
	jne	.label_3656
	lea	rdi, [rdi]
	jmp	.label_3661
.label_3656:
	xor	eax, eax
	lea	rsi, [rsi]
	mov	cl, al
	test	cl, 1
	mov	rbp, rbp
	jne	.label_2516
	lea	rdi, [rdi]
	jmp	.label_3670
.label_2516:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x2d0]
	mov	cx, ax
	movsx	edx, cx
	cmp	edx, 0
	mov	rbp, rbp
	jge	.label_2561
	mov	rax, qword ptr [rbp - 0x2d0]
	mov	cx, ax
	movsx	edx, cx
	cmp	edx, 0x2222222
	jl	.label_1963
	jmp	.label_2648
.label_2561:
	xor	eax, eax
	mov	cl, al
	mov	rbp, rbp
	test	cl, 1
	mov	rsp, rsp
	jne	.label_3688
	jmp	.label_3691
.label_3688:
	lea	rdi, [rdi]
	xor	eax, eax
	lea	rdi, [rdi]
	mov	cl, al
	test	cl, 1
	nop	
	jne	.label_1963
	jmp	.label_2648
.label_3691:
	mov	eax, 0xfdddddde
	mov	rcx, qword ptr [rbp - 0x2d0]
	mov	dx, cx
	mov	rsp, rsp
	movsx	esi, dx
	nop	
	cmp	eax, esi
	mov	rbp, rbp
	jl	.label_1963
	lea	rdi, [rdi]
	jmp	.label_2648
.label_3670:
	xor	eax, eax
	lea	rdi, [rdi]
	mov	cl, al
	test	cl, 1
	jne	.label_3699
	lea	rdi, [rdi]
	jmp	.label_2797
.label_3699:
	xor	eax, eax
	mov	cl, al
	mov	rbp, rbp
	test	cl, 1
	lea	rsi, [rsi]
	jne	.label_1963
	jmp	.label_2648
.label_2797:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x2d0]
	lea	rdi, [rdi]
	mov	cx, ax
	nop	
	movsx	edx, cx
	nop	
	cmp	edx, 0
	lea	rsi, [rsi]
	jge	.label_2846
	mov	rax, qword ptr [rbp - 0x2d0]
	mov	cx, ax
	lea	rdi, [rdi]
	movsx	edx, cx
	lea	rsi, [rsi]
	cmp	edx, 0xfdddddde
	jl	.label_1963
	lea	rdi, [rdi]
	jmp	.label_2648
.label_2846:
	lea	rdi, [rdi]
	mov	eax, 0x2222222
	mov	rcx, qword ptr [rbp - 0x2d0]
	mov	dx, cx
	lea	rsi, [rsi]
	movsx	esi, dx
	cmp	eax, esi
	jl	.label_1963
.label_2648:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x2d0]
	mov	cx, ax
	lea	rsi, [rsi]
	movsx	edx, cx
	imul	edx, edx, 0x3c
	cmp	edx, 0xffff8000
	jl	.label_1963
	mov	rbp, rbp
	mov	eax, 0x7fff
	nop	
	mov	rcx, qword ptr [rbp - 0x2d0]
	mov	dx, cx
	movsx	esi, dx
	lea	rdi, [rdi]
	imul	esi, esi, 0x3c
	nop	
	cmp	eax, esi
	jge	.label_3737
.label_1963:
	nop	
	mov	al, 1
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x2d0]
	mov	dx, cx
	nop	
	movsx	esi, dx
	mov	rsp, rsp
	imul	esi, esi, 0x3c
	mov	dx, si
	mov	rsp, rsp
	movsx	rcx, dx
	nop	
	mov	qword ptr [rbp - 0x4c0], rcx
	test	al, 1
	mov	rsp, rsp
	jne	.label_1997
	mov	rsp, rsp
	jmp	.label_2054
.label_3737:
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x2d0]
	mov	rsp, rsp
	mov	si, dx
	movsx	eax, si
	lea	rsi, [rsi]
	imul	eax, eax, 0x3c
	nop	
	mov	si, ax
	movsx	rdx, si
	nop	
	mov	qword ptr [rbp - 0x4c0], rdx
	lea	rdi, [rdi]
	test	cl, 1
	nop	
	jne	.label_1997
	jmp	.label_2054
.label_3661:
	xor	eax, eax
	lea	rsi, [rsi]
	mov	cl, al
	mov	rsp, rsp
	test	cl, 1
	lea	rdi, [rdi]
	jne	.label_3243
	jmp	.label_3270
.label_3243:
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x2d0], 0
	lea	rsi, [rsi]
	jge	.label_3781
	movabs	rax, 0x222222222222222
	cmp	qword ptr [rbp - 0x2d0], rax
	jl	.label_3293
	jmp	.label_2227
.label_3781:
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	lea	rdi, [rdi]
	jne	.label_3618
	lea	rdi, [rdi]
	jmp	.label_2645
.label_3618:
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	mov	rbp, rbp
	jne	.label_3293
	mov	rsp, rsp
	jmp	.label_2227
.label_2645:
	mov	rbp, rbp
	movabs	rax, 0xfdddddddddddddde
	lea	rdi, [rdi]
	cmp	rax, qword ptr [rbp - 0x2d0]
	jl	.label_3293
	lea	rdi, [rdi]
	jmp	.label_2227
.label_3270:
	nop	
	xor	eax, eax
	mov	cl, al
	mov	rsp, rsp
	test	cl, 1
	mov	rbp, rbp
	jne	.label_3445
	jmp	.label_3482
.label_3445:
	lea	rsi, [rsi]
	xor	eax, eax
	mov	rsp, rsp
	mov	cl, al
	lea	rsi, [rsi]
	test	cl, 1
	nop	
	jne	.label_3293
	nop	
	jmp	.label_2227
.label_3482:
	cmp	qword ptr [rbp - 0x2d0], 0
	mov	rsp, rsp
	jge	.label_3809
	movabs	rax, 0xfdddddddddddddde
	cmp	qword ptr [rbp - 0x2d0], rax
	lea	rsi, [rsi]
	jl	.label_3293
	jmp	.label_2227
.label_3809:
	movabs	rax, 0x222222222222222
	mov	rbp, rbp
	cmp	rax, qword ptr [rbp - 0x2d0]
	mov	rbp, rbp
	jl	.label_3293
.label_2227:
	imul	rax, qword ptr [rbp - 0x2d0], 0x3c
	mov	rbp, rbp
	cmp	rax, -0x8000
	lea	rsi, [rsi]
	jl	.label_3293
	mov	eax, 0x7fff
	lea	rdi, [rdi]
	mov	ecx, eax
	imul	rdx, qword ptr [rbp - 0x2d0], 0x3c
	mov	rbp, rbp
	cmp	rcx, rdx
	jge	.label_3672
.label_3293:
	mov	al, 1
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x2d0]
	mov	edx, ecx
	imul	edx, edx, 0x3c
	mov	si, dx
	mov	rbp, rbp
	movsx	rcx, si
	mov	qword ptr [rbp - 0x4c0], rcx
	test	al, 1
	lea	rsi, [rsi]
	jne	.label_1997
	jmp	.label_2054
.label_3672:
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x2d0]
	mov	eax, edx
	mov	rsp, rsp
	imul	eax, eax, 0x3c
	mov	si, ax
	nop	
	movsx	rdx, si
	mov	qword ptr [rbp - 0x4c0], rdx
	lea	rdi, [rdi]
	test	cl, 1
	jne	.label_1997
	jmp	.label_2054
.label_3655:
	xor	eax, eax
	nop	
	mov	cl, al
	test	cl, 1
	lea	rsi, [rsi]
	jne	.label_3863
	jmp	.label_3318
.label_3863:
	xor	eax, eax
	nop	
	mov	cl, al
	nop	
	test	cl, 1
	mov	rbp, rbp
.label_5125:
	jne	.label_3865
	lea	rdi, [rdi]
	jmp	.label_1918
.label_3865:
	xor	eax, eax
	mov	cl, al
	lea	rsi, [rsi]
	test	cl, 1
	lea	rdi, [rdi]
	jne	.label_3534
	nop	
	jmp	.label_1988
.label_3534:
	nop	
	mov	rax, qword ptr [rbp - 0x2d0]
	mov	rbp, rbp
	mov	ecx, eax
	mov	rbp, rbp
	cmp	ecx, 0
	nop	
	jge	.label_1914
	mov	rax, qword ptr [rbp - 0x2d0]
	mov	ecx, eax
	cmp	ecx, 0x2222222
	lea	rsi, [rsi]
	jl	.label_1927
	jmp	.label_1941
.label_1914:
	xor	eax, eax
	lea	rsi, [rsi]
	mov	cl, al
	lea	rdi, [rdi]
	test	cl, 1
	lea	rdi, [rdi]
	jne	.label_1942
	lea	rdi, [rdi]
	jmp	.label_1949
.label_1942:
	xor	eax, eax
	lea	rsi, [rsi]
	mov	cl, al
	lea	rsi, [rsi]
	test	cl, 1
	jne	.label_1927
	jmp	.label_1941
.label_1949:
	mov	rbp, rbp
	mov	eax, 0xfdddddde
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x2d0]
	lea	rsi, [rsi]
	mov	edx, ecx
	cmp	eax, edx
	jl	.label_1927
	lea	rdi, [rdi]
	jmp	.label_1941
.label_1988:
	mov	rbp, rbp
	xor	eax, eax
	nop	
	mov	cl, al
	test	cl, 1
	jne	.label_2252
	lea	rdi, [rdi]
	jmp	.label_1984
.label_2252:
	mov	rsp, rsp
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_1927
	nop	
	jmp	.label_1941
.label_1984:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x2d0]
	lea	rdi, [rdi]
	mov	ecx, eax
	cmp	ecx, 0
	mov	rsp, rsp
	jge	.label_1998
	mov	rax, qword ptr [rbp - 0x2d0]
	lea	rdi, [rdi]
	mov	ecx, eax
	mov	rsp, rsp
	cmp	ecx, 0xfdddddde
	jl	.label_1927
	mov	rbp, rbp
	jmp	.label_1941
.label_1998:
	lea	rdi, [rdi]
	mov	eax, 0x2222222
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x2d0]
	nop	
	mov	edx, ecx
	mov	rbp, rbp
	cmp	eax, edx
	lea	rdi, [rdi]
	jl	.label_1927
.label_1941:
	mov	rax, qword ptr [rbp - 0x2d0]
	mov	ecx, eax
	mov	rbp, rbp
	imul	ecx, ecx, 0x3c
	mov	rbp, rbp
	cmp	ecx, 0x80000000
	jl	.label_1927
	lea	rdi, [rdi]
	mov	eax, 0x7fffffff
	mov	rcx, qword ptr [rbp - 0x2d0]
	mov	edx, ecx
	lea	rsi, [rsi]
	imul	edx, edx, 0x3c
	mov	rsp, rsp
	cmp	eax, edx
	mov	rbp, rbp
	jge	.label_3751
.label_1927:
	mov	al, 1
	nop	
	mov	rcx, qword ptr [rbp - 0x2d0]
	lea	rsi, [rsi]
	mov	edx, ecx
	imul	edx, edx, 0x3c
	lea	rdi, [rdi]
	movsxd	rcx, edx
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x4c0], rcx
	test	al, 1
	lea	rdi, [rdi]
	jne	.label_1997
	lea	rdi, [rdi]
	jmp	.label_2054
.label_3751:
	mov	rbp, rbp
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x2d0]
	mov	eax, edx
	imul	eax, eax, 0x3c
	nop	
	movsxd	rdx, eax
	mov	qword ptr [rbp - 0x4c0], rdx
	test	cl, 1
	mov	rbp, rbp
	jne	.label_1997
	jmp	.label_2054
.label_1918:
	xor	eax, eax
	mov	cl, al
	nop	
	test	cl, 1
	jne	.label_2065
	jmp	.label_2070
.label_2065:
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x2d0], 0
	nop	
	jge	.label_2072
	lea	rdi, [rdi]
	movabs	rax, 0x222222222222222
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0x2d0], rax
	mov	rsp, rsp
	jl	.label_2078
	lea	rdi, [rdi]
	jmp	.label_2131
.label_2072:
	lea	rsi, [rsi]
	xor	eax, eax
	nop	
	mov	cl, al
	test	cl, 1
	mov	rsp, rsp
	jne	.label_2136
	jmp	.label_2862
.label_2136:
	lea	rdi, [rdi]
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_2078
	mov	rbp, rbp
	jmp	.label_2131
.label_2862:
	movabs	rax, 0xfdddddddddddddde
	cmp	rax, qword ptr [rbp - 0x2d0]
	lea	rdi, [rdi]
	jl	.label_2078
	jmp	.label_2131
.label_2070:
	lea	rdi, [rdi]
	xor	eax, eax
	lea	rdi, [rdi]
	mov	cl, al
	test	cl, 1
	nop	
	jne	.label_2115
	mov	rbp, rbp
	jmp	.label_3297
.label_2115:
	mov	rsp, rsp
	xor	eax, eax
	lea	rsi, [rsi]
	mov	cl, al
	mov	rsp, rsp
	test	cl, 1
	jne	.label_2078
	jmp	.label_2131
.label_3297:
	cmp	qword ptr [rbp - 0x2d0], 0
	mov	rsp, rsp
	jge	.label_2132
	movabs	rax, 0xfdddddddddddddde
	cmp	qword ptr [rbp - 0x2d0], rax
	jl	.label_2078
	jmp	.label_2131
.label_2132:
	lea	rdi, [rdi]
	movabs	rax, 0x222222222222222
	cmp	rax, qword ptr [rbp - 0x2d0]
	jl	.label_2078
.label_2131:
	imul	rax, qword ptr [rbp - 0x2d0], 0x3c
	cmp	rax, -0x80000000
	jl	.label_2078
	mov	eax, 0x7fffffff
	lea	rsi, [rsi]
	mov	ecx, eax
	lea	rsi, [rsi]
	imul	rdx, qword ptr [rbp - 0x2d0], 0x3c
	mov	rsp, rsp
	cmp	rcx, rdx
	mov	rbp, rbp
	jge	.label_2156
.label_2078:
	lea	rsi, [rsi]
	mov	al, 1
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x2d0]
	mov	edx, ecx
	imul	edx, edx, 0x3c
	movsxd	rcx, edx
	nop	
	mov	qword ptr [rbp - 0x4c0], rcx
	test	al, 1
	nop	
	jne	.label_1997
	nop	
	jmp	.label_2054
.label_2156:
	xor	eax, eax
	mov	cl, al
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x2d0]
	mov	eax, edx
	lea	rsi, [rsi]
	imul	eax, eax, 0x3c
	movsxd	rdx, eax
	nop	
	mov	qword ptr [rbp - 0x4c0], rdx
	test	cl, 1
	lea	rdi, [rdi]
	jne	.label_1997
	mov	rsp, rsp
	jmp	.label_2054
.label_3318:
	mov	al, 1
	lea	rdi, [rdi]
	test	al, 1
	jne	.label_2357
	nop	
	jmp	.label_2195
.label_2357:
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_2197
	lea	rsi, [rsi]
	jmp	.label_2200
.label_2197:
	nop	
	xor	eax, eax
	mov	cl, al
	nop	
	test	cl, 1
	jne	.label_2202
	jmp	.label_3382
.label_2202:
	cmp	qword ptr [rbp - 0x2d0], 0
	jge	.label_2210
	nop	
	movabs	rax, 0x222222222222222
	cmp	qword ptr [rbp - 0x2d0], rax
	jl	.label_2184
	mov	rbp, rbp
	jmp	.label_2223
.label_2210:
	xor	eax, eax
	mov	rsp, rsp
	mov	cl, al
	mov	rsp, rsp
	test	cl, 1
	jne	.label_2225
	jmp	.label_3242
.label_2225:
	xor	eax, eax
	lea	rdi, [rdi]
	mov	cl, al
	nop	
	test	cl, 1
	nop	
	jne	.label_2184
	jmp	.label_2223
.label_3242:
	lea	rdi, [rdi]
	movabs	rax, 0xfdddddddddddddde
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rbp - 0x2d0]
	mov	rsp, rsp
	jl	.label_2184
	jmp	.label_2223
.label_3382:
	mov	rsp, rsp
	xor	eax, eax
	nop	
	mov	cl, al
	test	cl, 1
	jne	.label_2250
	jmp	.label_3786
.label_2250:
	xor	eax, eax
	lea	rdi, [rdi]
	mov	cl, al
	test	cl, 1
	nop	
	jne	.label_2184
	jmp	.label_2223
.label_3786:
	cmp	qword ptr [rbp - 0x2d0], 0
	mov	rbp, rbp
	jge	.label_2266
	mov	rsp, rsp
	movabs	rax, 0xfdddddddddddddde
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x2d0], rax
	lea	rdi, [rdi]
	jl	.label_2184
	jmp	.label_2223
.label_2266:
	movabs	rax, 0x222222222222222
	cmp	rax, qword ptr [rbp - 0x2d0]
	lea	rsi, [rsi]
	jl	.label_2184
.label_2223:
	nop	
	movabs	rax, 0x8000000000000000
	mov	rbp, rbp
	imul	rcx, qword ptr [rbp - 0x2d0], 0x3c
	cmp	rcx, rax
	mov	rsp, rsp
	jl	.label_2184
	mov	rsp, rsp
	movabs	rax, 0x7fffffffffffffff
	lea	rdi, [rdi]
	imul	rcx, qword ptr [rbp - 0x2d0], 0x3c
	cmp	rax, rcx
	jge	.label_2290
.label_2184:
	nop	
	mov	al, 1
	imul	rcx, qword ptr [rbp - 0x2d0], 0x3c
	mov	qword ptr [rbp - 0x4c0], rcx
	lea	rdi, [rdi]
	test	al, 1
	jne	.label_1997
	lea	rdi, [rdi]
	jmp	.label_2054
.label_2290:
	xor	eax, eax
	mov	cl, al
	nop	
	imul	rdx, qword ptr [rbp - 0x2d0], 0x3c
	mov	qword ptr [rbp - 0x4c0], rdx
	lea	rdi, [rdi]
	test	cl, 1
	mov	rsp, rsp
	jne	.label_1997
	jmp	.label_2054
.label_2200:
	xor	eax, eax
	lea	rsi, [rsi]
	mov	cl, al
	lea	rsi, [rsi]
	test	cl, 1
	jne	.label_1972
	jmp	.label_2399
.label_1972:
	cmp	qword ptr [rbp - 0x2d0], 0
	lea	rdi, [rdi]
	jge	.label_3352
	mov	rsp, rsp
	movabs	rax, 0x222222222222222
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x2d0], rax
	jl	.label_2151
	jmp	.label_2243
.label_3352:
	xor	eax, eax
	mov	cl, al
	lea	rdi, [rdi]
	test	cl, 1
	lea	rsi, [rsi]
	jne	.label_2338
	jmp	.label_2142
.label_2338:
	mov	rsp, rsp
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_2151
	lea	rsi, [rsi]
	jmp	.label_2243
.label_2142:
	lea	rsi, [rsi]
	movabs	rax, 0xfdddddddddddddde
	lea	rdi, [rdi]
	cmp	rax, qword ptr [rbp - 0x2d0]
	mov	rbp, rbp
	jl	.label_2151
	jmp	.label_2243
.label_2399:
	mov	rbp, rbp
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	mov	rsp, rsp
	jne	.label_2256
	jmp	.label_2360
.label_2256:
	xor	eax, eax
	mov	cl, al
	nop	
	test	cl, 1
	lea	rsi, [rsi]
	jne	.label_2151
	jmp	.label_2243
.label_2360:
	cmp	qword ptr [rbp - 0x2d0], 0
	jge	.label_2367
	nop	
	movabs	rax, 0xfdddddddddddddde
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x2d0], rax
	lea	rdi, [rdi]
	jl	.label_2151
	mov	rsp, rsp
	jmp	.label_2243
.label_2367:
	movabs	rax, 0x222222222222222
	mov	rsp, rsp
	cmp	rax, qword ptr [rbp - 0x2d0]
	jl	.label_2151
.label_2243:
	lea	rsi, [rsi]
	movabs	rax, 0x8000000000000000
	imul	rcx, qword ptr [rbp - 0x2d0], 0x3c
	lea	rdi, [rdi]
	cmp	rcx, rax
	jl	.label_2151
	nop	
	movabs	rax, 0x7fffffffffffffff
	nop	
	imul	rcx, qword ptr [rbp - 0x2d0], 0x3c
	nop	
	cmp	rax, rcx
	mov	rsp, rsp
	jge	.label_2390
.label_2151:
	mov	al, 1
	imul	rcx, qword ptr [rbp - 0x2d0], 0x3c
	mov	qword ptr [rbp - 0x4c0], rcx
	mov	rsp, rsp
	test	al, 1
	mov	rsp, rsp
	jne	.label_1997
	jmp	.label_2054
.label_2390:
	mov	rbp, rbp
	xor	eax, eax
	lea	rdi, [rdi]
	mov	cl, al
	mov	rsp, rsp
	imul	rdx, qword ptr [rbp - 0x2d0], 0x3c
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x4c0], rdx
	test	cl, 1
	lea	rsi, [rsi]
	jne	.label_1997
	jmp	.label_2054
.label_2195:
	nop	
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_2414
	jmp	.label_2417
.label_2414:
	mov	rsp, rsp
	xor	eax, eax
	mov	rbp, rbp
	mov	cl, al
	lea	rsi, [rsi]
	test	cl, 1
	lea	rsi, [rsi]
	jne	.label_2419
	lea	rdi, [rdi]
	jmp	.label_2730
.label_2419:
	cmp	qword ptr [rbp - 0x2d0], 0
	mov	rbp, rbp
	jge	.label_2423
	movabs	rax, 0x222222222222222
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0x2d0], rax
	jl	.label_2425
	jmp	.label_2456
.label_2423:
	xor	eax, eax
	lea	rsi, [rsi]
	mov	cl, al
	mov	rsp, rsp
	test	cl, 1
	jne	.label_2438
	lea	rsi, [rsi]
	jmp	.label_2193
.label_2438:
	lea	rdi, [rdi]
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_2425
	jmp	.label_2456
.label_2193:
	mov	rsp, rsp
	movabs	rax, 0xfdddddddddddddde
	lea	rdi, [rdi]
	cmp	rax, qword ptr [rbp - 0x2d0]
	jl	.label_2425
	jmp	.label_2456
.label_2730:
	lea	rdi, [rdi]
	xor	eax, eax
	mov	rbp, rbp
	mov	cl, al
	mov	rbp, rbp
	test	cl, 1
	jne	.label_2458
	mov	rsp, rsp
	jmp	.label_2468
.label_2458:
	nop	
	xor	eax, eax
	lea	rsi, [rsi]
	mov	cl, al
	mov	rsp, rsp
	test	cl, 1
	jne	.label_2425
	jmp	.label_2456
.label_2468:
	cmp	qword ptr [rbp - 0x2d0], 0
	jge	.label_2482
	lea	rdi, [rdi]
	movabs	rax, 0xfdddddddddddddde
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x2d0], rax
	lea	rdi, [rdi]
	jl	.label_2425
	jmp	.label_2456
.label_2482:
	movabs	rax, 0x222222222222222
	nop	
	cmp	rax, qword ptr [rbp - 0x2d0]
	nop	
	jl	.label_2425
.label_2456:
	lea	rdi, [rdi]
	movabs	rax, 0x8000000000000000
	lea	rdi, [rdi]
	imul	rcx, qword ptr [rbp - 0x2d0], 0x3c
	cmp	rcx, rax
	mov	rbp, rbp
	jl	.label_2425
	mov	rbp, rbp
	movabs	rax, 0x7fffffffffffffff
	imul	rcx, qword ptr [rbp - 0x2d0], 0x3c
	mov	rbp, rbp
	cmp	rax, rcx
	mov	rbp, rbp
	jge	.label_3148
.label_2425:
	mov	al, 1
	lea	rdi, [rdi]
	imul	rcx, qword ptr [rbp - 0x2d0], 0x3c
	mov	qword ptr [rbp - 0x4c0], rcx
	test	al, 1
	lea	rsi, [rsi]
	jne	.label_1997
	jmp	.label_2054
.label_3148:
	xor	eax, eax
	mov	cl, al
	imul	rdx, qword ptr [rbp - 0x2d0], 0x3c
	nop	
	mov	qword ptr [rbp - 0x4c0], rdx
	test	cl, 1
	mov	rsp, rsp
	jne	.label_1997
	mov	rbp, rbp
	jmp	.label_2054
.label_2417:
	lea	rsi, [rsi]
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_2274
	nop	
	jmp	.label_3300
.label_2274:
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x2d0], 0
	lea	rsi, [rsi]
	jge	.label_2551
	mov	rsp, rsp
	movabs	rax, 0x222222222222222
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0x2d0], rax
	jl	.label_2574
	mov	rbp, rbp
	jmp	.label_2565
.label_2551:
	xor	eax, eax
	mov	cl, al
	lea	rdi, [rdi]
	test	cl, 1
	jne	.label_2569
	lea	rdi, [rdi]
	jmp	.label_2572
.label_2569:
	mov	rbp, rbp
	xor	eax, eax
	mov	cl, al
	mov	rsp, rsp
	test	cl, 1
	lea	rsi, [rsi]
	jne	.label_2574
	jmp	.label_2565
.label_2572:
	movabs	rax, 0xfdddddddddddddde
	mov	rbp, rbp
	cmp	rax, qword ptr [rbp - 0x2d0]
	jl	.label_2574
	jmp	.label_2565
.label_3300:
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_2591
	jmp	.label_2598
.label_2591:
	xor	eax, eax
	nop	
	mov	cl, al
	test	cl, 1
	jne	.label_2574
	jmp	.label_2565
.label_2598:
	cmp	qword ptr [rbp - 0x2d0], 0
	mov	rsp, rsp
	jge	.label_2605
	movabs	rax, 0xfdddddddddddddde
	cmp	qword ptr [rbp - 0x2d0], rax
	mov	rsp, rsp
	jl	.label_2574
	jmp	.label_2565
.label_2605:
	movabs	rax, 0x222222222222222
	cmp	rax, qword ptr [rbp - 0x2d0]
	jl	.label_2574
.label_2565:
	mov	rbp, rbp
	movabs	rax, 0x8000000000000000
	lea	rsi, [rsi]
	imul	rcx, qword ptr [rbp - 0x2d0], 0x3c
	cmp	rcx, rax
	mov	rbp, rbp
	jl	.label_2574
	movabs	rax, 0x7fffffffffffffff
	lea	rdi, [rdi]
	imul	rcx, qword ptr [rbp - 0x2d0], 0x3c
	cmp	rax, rcx
	jge	.label_2519
.label_2574:
	lea	rdi, [rdi]
	mov	al, 1
	imul	rcx, qword ptr [rbp - 0x2d0], 0x3c
	mov	qword ptr [rbp - 0x4c0], rcx
	test	al, 1
	jne	.label_1997
	nop	
	jmp	.label_2054
.label_2519:
	xor	eax, eax
	mov	cl, al
	mov	rbp, rbp
	imul	rdx, qword ptr [rbp - 0x2d0], 0x3c
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x4c0], rdx
	test	cl, 1
	jne	.label_1997
.label_2054:
	xor	eax, eax
	nop	
	mov	cl, al
	test	cl, 1
	mov	rbp, rbp
	jne	.label_2651
	jmp	.label_2653
.label_2651:
	xor	eax, eax
	lea	rsi, [rsi]
	mov	cl, al
	test	cl, 1
	jne	.label_2655
	jmp	.label_3744
.label_2655:
	lea	rsi, [rsi]
	mov	al, 1
	test	al, 1
	lea	rsi, [rsi]
	jne	.label_1913
	mov	rbp, rbp
	jmp	.label_1954
.label_1913:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x4c0]
	lea	rdi, [rdi]
	mov	cl, al
	lea	rsi, [rsi]
	movsx	edx, cl
	cmp	edx, 0
	nop	
	jge	.label_2667
	mov	rbp, rbp
	mov	eax, 0x80000000
	mov	rcx, qword ptr [rbp - 0x4b8]
	mov	rbp, rbp
	mov	dl, cl
	movsx	esi, dl
	mov	rcx, qword ptr [rbp - 0x4c0]
	mov	dl, cl
	movsx	edi, dl
	sub	eax, edi
	cmp	esi, eax
	jl	.label_2110
	jmp	.label_2199
.label_2667:
	nop	
	mov	eax, 0x7fffffff
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x4c0]
	mov	dl, cl
	movsx	esi, dl
	lea	rdi, [rdi]
	sub	eax, esi
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x4b8]
	mov	dl, cl
	movsx	esi, dl
	cmp	eax, esi
	jl	.label_2110
	jmp	.label_2199
.label_1954:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x4b8]
	lea	rsi, [rsi]
	mov	cl, al
	lea	rdi, [rdi]
	movsx	edx, cl
	cmp	edx, 0
	jge	.label_3550
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x4c0]
	mov	cl, al
	movsx	edx, cl
	nop	
	mov	rax, qword ptr [rbp - 0x4b8]
	lea	rsi, [rsi]
	mov	cl, al
	lea	rsi, [rsi]
	movsx	esi, cl
	mov	rax, qword ptr [rbp - 0x4c0]
	mov	rsp, rsp
	mov	cl, al
	movsx	edi, cl
	lea	rdi, [rdi]
	add	esi, edi
	cmp	edx, esi
	mov	rsp, rsp
	jle	.label_2110
	mov	rbp, rbp
	jmp	.label_2199
.label_3550:
	mov	rax, qword ptr [rbp - 0x4c0]
	mov	cl, al
	movsx	edx, cl
	cmp	edx, 0
	jge	.label_2466
	nop	
	mov	rax, qword ptr [rbp - 0x4b8]
	mov	cl, al
	movsx	edx, cl
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x4b8]
	lea	rsi, [rsi]
	mov	cl, al
	mov	rbp, rbp
	movsx	esi, cl
	mov	rax, qword ptr [rbp - 0x4c0]
	mov	rbp, rbp
	mov	cl, al
	mov	rbp, rbp
	movsx	edi, cl
	add	esi, edi
	cmp	edx, esi
	lea	rdi, [rdi]
	jle	.label_2110
	jmp	.label_2199
.label_2466:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x4b8]
	mov	rbp, rbp
	mov	cl, al
	movsx	edx, cl
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x4c0]
	lea	rsi, [rsi]
	mov	cl, al
	movsx	esi, cl
	lea	rdi, [rdi]
	add	edx, esi
	mov	rax, qword ptr [rbp - 0x4c0]
	mov	cl, al
	movsx	esi, cl
	cmp	edx, esi
	nop	
	jl	.label_2110
.label_2199:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x4b8]
	mov	cl, al
	mov	rsp, rsp
	movsx	edx, cl
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x4c0]
	mov	rsp, rsp
	mov	cl, al
	mov	rsp, rsp
	movsx	esi, cl
	add	edx, esi
	cmp	edx, -0x80
	lea	rsi, [rsi]
	jl	.label_2110
	nop	
	mov	eax, 0x7f
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x4b8]
	mov	dl, cl
	movsx	esi, dl
	mov	rcx, qword ptr [rbp - 0x4c0]
	mov	dl, cl
	mov	rbp, rbp
	movsx	edi, dl
	add	esi, edi
	cmp	eax, esi
	jge	.label_2762
.label_2110:
	mov	al, 1
	mov	rcx, qword ptr [rbp - 0x4b8]
	mov	dl, cl
	movsx	esi, dl
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x4c0]
	mov	dl, cl
	movsx	edi, dl
	nop	
	add	esi, edi
	mov	dl, sil
	movsx	rcx, dl
	nop	
	mov	qword ptr [rbp - 0x4c8], rcx
	test	al, 1
	lea	rsi, [rsi]
	jne	.label_1997
	lea	rsi, [rsi]
	jmp	.label_2744
.label_2762:
	xor	eax, eax
	lea	rsi, [rsi]
	mov	cl, al
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x4b8]
	lea	rsi, [rsi]
	mov	sil, dl
	mov	rbp, rbp
	movsx	eax, sil
	mov	rdx, qword ptr [rbp - 0x4c0]
	mov	sil, dl
	mov	rbp, rbp
	movsx	edi, sil
	nop	
	add	eax, edi
	mov	sil, al
	nop	
	movsx	rdx, sil
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x4c8], rdx
	lea	rsi, [rsi]
	test	cl, 1
	nop	
	jne	.label_1997
	jmp	.label_2744
.label_3744:
	lea	rdi, [rdi]
	mov	al, 1
	test	al, 1
	jne	.label_2821
	lea	rsi, [rsi]
	jmp	.label_2825
.label_2821:
	cmp	qword ptr [rbp - 0x4c0], 0
	mov	rbp, rbp
	jge	.label_2827
	nop	
	movabs	rax, 0x8000000000000000
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x4b8]
	sub	rax, qword ptr [rbp - 0x4c0]
	lea	rdi, [rdi]
	cmp	rcx, rax
	jl	.label_2831
	jmp	.label_2843
.label_2827:
	movabs	rax, 0x7fffffffffffffff
	sub	rax, qword ptr [rbp - 0x4c0]
	mov	rbp, rbp
	cmp	rax, qword ptr [rbp - 0x4b8]
	jl	.label_2831
	mov	rsp, rsp
	jmp	.label_2843
.label_2825:
	cmp	qword ptr [rbp - 0x4b8], 0
	jge	.label_3128
	mov	rax, qword ptr [rbp - 0x4c0]
	mov	rcx, qword ptr [rbp - 0x4b8]
	nop	
	add	rcx, qword ptr [rbp - 0x4c0]
	lea	rsi, [rsi]
	cmp	rax, rcx
	jle	.label_2831
	jmp	.label_2843
.label_3128:
	cmp	qword ptr [rbp - 0x4c0], 0
	mov	rbp, rbp
	jge	.label_2860
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x4b8]
	mov	rcx, qword ptr [rbp - 0x4b8]
	add	rcx, qword ptr [rbp - 0x4c0]
	cmp	rax, rcx
	nop	
	jle	.label_2831
	jmp	.label_2843
.label_2860:
	mov	rax, qword ptr [rbp - 0x4b8]
	add	rax, qword ptr [rbp - 0x4c0]
	nop	
	cmp	rax, qword ptr [rbp - 0x4c0]
	mov	rbp, rbp
	jl	.label_2831
.label_2843:
	mov	rax, qword ptr [rbp - 0x4b8]
	mov	rsp, rsp
	add	rax, qword ptr [rbp - 0x4c0]
	cmp	rax, -0x80
	jl	.label_2831
	nop	
	mov	eax, 0x7f
	lea	rsi, [rsi]
	mov	ecx, eax
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x4b8]
	add	rdx, qword ptr [rbp - 0x4c0]
	lea	rsi, [rsi]
	cmp	rcx, rdx
	nop	
	jge	.label_2887
.label_2831:
	nop	
	mov	al, 1
	mov	rcx, qword ptr [rbp - 0x4b8]
	mov	edx, ecx
	mov	rcx, qword ptr [rbp - 0x4c0]
	mov	esi, ecx
	add	edx, esi
	mov	dil, dl
	movsx	rcx, dil
	mov	qword ptr [rbp - 0x4c8], rcx
	lea	rdi, [rdi]
	test	al, 1
	jne	.label_1997
	jmp	.label_2744
.label_2887:
	nop	
	xor	eax, eax
	lea	rdi, [rdi]
	mov	cl, al
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x4b8]
	mov	rsp, rsp
	mov	eax, edx
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x4c0]
	mov	esi, edx
	mov	rsp, rsp
	add	eax, esi
	mov	dil, al
	lea	rdi, [rdi]
	movsx	rdx, dil
	mov	qword ptr [rbp - 0x4c8], rdx
	test	cl, 1
	lea	rdi, [rdi]
	jne	.label_1997
	mov	rbp, rbp
	jmp	.label_2744
.label_2653:
	xor	eax, eax
	lea	rsi, [rsi]
	mov	cl, al
	test	cl, 1
	nop	
	jne	.label_2925
	mov	rsp, rsp
	jmp	.label_2341
.label_2925:
	lea	rsi, [rsi]
	xor	eax, eax
	lea	rdi, [rdi]
	mov	cl, al
	nop	
	test	cl, 1
	lea	rdi, [rdi]
	jne	.label_2932
	mov	rsp, rsp
	jmp	.label_3640
.label_2932:
	lea	rdi, [rdi]
	mov	al, 1
	test	al, 1
	mov	rbp, rbp
	jne	.label_3651
	lea	rsi, [rsi]
	jmp	.label_3678
.label_3651:
	mov	rax, qword ptr [rbp - 0x4c0]
	mov	cx, ax
	movsx	edx, cx
	nop	
	cmp	edx, 0
	lea	rsi, [rsi]
	jge	.label_2398
	mov	eax, 0x80000000
	nop	
	mov	rcx, qword ptr [rbp - 0x4b8]
	mov	rsp, rsp
	mov	dx, cx
	lea	rsi, [rsi]
	movsx	esi, dx
	mov	rcx, qword ptr [rbp - 0x4c0]
	lea	rdi, [rdi]
	mov	dx, cx
	movsx	edi, dx
	sub	eax, edi
	nop	
	cmp	esi, eax
	mov	rsp, rsp
	jl	.label_2950
	nop	
	jmp	.label_2989
.label_2398:
	mov	eax, 0x7fffffff
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x4c0]
	mov	rbp, rbp
	mov	dx, cx
	lea	rdi, [rdi]
	movsx	esi, dx
	sub	eax, esi
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x4b8]
	mov	rbp, rbp
	mov	dx, cx
	movsx	esi, dx
	mov	rbp, rbp
	cmp	eax, esi
	lea	rsi, [rsi]
	jl	.label_2950
	lea	rsi, [rsi]
	jmp	.label_2989
.label_3678:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x4b8]
	mov	cx, ax
	movsx	edx, cx
	cmp	edx, 0
	lea	rsi, [rsi]
	jge	.label_2971
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x4c0]
	lea	rsi, [rsi]
	mov	cx, ax
	mov	rbp, rbp
	movsx	edx, cx
	mov	rax, qword ptr [rbp - 0x4b8]
	lea	rdi, [rdi]
	mov	cx, ax
	movsx	esi, cx
	mov	rax, qword ptr [rbp - 0x4c0]
	lea	rdi, [rdi]
	mov	cx, ax
	lea	rsi, [rsi]
	movsx	edi, cx
	lea	rsi, [rsi]
	add	esi, edi
	cmp	edx, esi
	mov	rsp, rsp
	jle	.label_2950
	lea	rsi, [rsi]
	jmp	.label_2989
.label_2971:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x4c0]
	mov	cx, ax
	lea	rdi, [rdi]
	movsx	edx, cx
	lea	rsi, [rsi]
	cmp	edx, 0
	jge	.label_2356
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x4b8]
	mov	rbp, rbp
	mov	cx, ax
	mov	rbp, rbp
	movsx	edx, cx
	mov	rax, qword ptr [rbp - 0x4b8]
	lea	rdi, [rdi]
	mov	cx, ax
	mov	rbp, rbp
	movsx	esi, cx
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x4c0]
	mov	cx, ax
	movsx	edi, cx
	mov	rsp, rsp
	add	esi, edi
	lea	rsi, [rsi]
	cmp	edx, esi
	jle	.label_2950
	mov	rbp, rbp
	jmp	.label_2989
.label_2356:
	mov	rax, qword ptr [rbp - 0x4b8]
	mov	rbp, rbp
	mov	cx, ax
	movsx	edx, cx
	mov	rax, qword ptr [rbp - 0x4c0]
	nop	
	mov	cx, ax
	movsx	esi, cx
	add	edx, esi
	mov	rax, qword ptr [rbp - 0x4c0]
	mov	cx, ax
	movsx	esi, cx
	cmp	edx, esi
	jl	.label_2950
.label_2989:
	mov	rax, qword ptr [rbp - 0x4b8]
	lea	rsi, [rsi]
	mov	cx, ax
	movsx	edx, cx
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x4c0]
	mov	rsp, rsp
	mov	cx, ax
	movsx	esi, cx
	add	edx, esi
	cmp	edx, 0xffff8000
	nop	
	jl	.label_2950
	mov	eax, 0x7fff
	mov	rcx, qword ptr [rbp - 0x4b8]
	nop	
	mov	dx, cx
	movsx	esi, dx
	mov	rcx, qword ptr [rbp - 0x4c0]
	mov	dx, cx
	movsx	edi, dx
	add	esi, edi
	mov	rbp, rbp
	cmp	eax, esi
	jge	.label_2791
.label_2950:
	mov	al, 1
	mov	rcx, qword ptr [rbp - 0x4b8]
	mov	dx, cx
	movsx	esi, dx
	mov	rcx, qword ptr [rbp - 0x4c0]
	mov	rbp, rbp
	mov	dx, cx
	mov	rsp, rsp
	movsx	edi, dx
	add	esi, edi
	lea	rsi, [rsi]
	mov	dx, si
	lea	rsi, [rsi]
	movsx	rcx, dx
	mov	qword ptr [rbp - 0x4c8], rcx
	nop	
	test	al, 1
	lea	rdi, [rdi]
	jne	.label_1997
	jmp	.label_2744
.label_2791:
	mov	rbp, rbp
	xor	eax, eax
	mov	rbp, rbp
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x4b8]
	nop	
	mov	si, dx
	movsx	eax, si
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x4c0]
	lea	rsi, [rsi]
	mov	si, dx
	lea	rdi, [rdi]
	movsx	edi, si
	add	eax, edi
	mov	si, ax
	movsx	rdx, si
	mov	qword ptr [rbp - 0x4c8], rdx
	nop	
	test	cl, 1
	mov	rsp, rsp
	jne	.label_1997
	mov	rsp, rsp
	jmp	.label_2744
.label_3640:
	mov	al, 1
	test	al, 1
	jne	.label_3088
	jmp	.label_2777
.label_3088:
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x4c0], 0
	jge	.label_3091
	mov	rsp, rsp
	movabs	rax, 0x8000000000000000
	mov	rcx, qword ptr [rbp - 0x4b8]
	sub	rax, qword ptr [rbp - 0x4c0]
	cmp	rcx, rax
	lea	rdi, [rdi]
	jl	.label_2763
	jmp	.label_3044
.label_3091:
	movabs	rax, 0x7fffffffffffffff
	sub	rax, qword ptr [rbp - 0x4c0]
	mov	rbp, rbp
	cmp	rax, qword ptr [rbp - 0x4b8]
	lea	rsi, [rsi]
	jl	.label_2763
	mov	rbp, rbp
	jmp	.label_3044
.label_2777:
	cmp	qword ptr [rbp - 0x4b8], 0
	lea	rdi, [rdi]
	jge	.label_2869
	mov	rax, qword ptr [rbp - 0x4c0]
	mov	rcx, qword ptr [rbp - 0x4b8]
	lea	rdi, [rdi]
	add	rcx, qword ptr [rbp - 0x4c0]
	cmp	rax, rcx
	nop	
	jle	.label_2763
	jmp	.label_3044
.label_2869:
	cmp	qword ptr [rbp - 0x4c0], 0
	mov	rbp, rbp
	jge	.label_3135
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x4b8]
	mov	rcx, qword ptr [rbp - 0x4b8]
	add	rcx, qword ptr [rbp - 0x4c0]
	cmp	rax, rcx
	jle	.label_2763
	jmp	.label_3044
.label_3135:
	nop	
	mov	rax, qword ptr [rbp - 0x4b8]
	add	rax, qword ptr [rbp - 0x4c0]
	lea	rdi, [rdi]
	cmp	rax, qword ptr [rbp - 0x4c0]
	jl	.label_2763
.label_3044:
	mov	rax, qword ptr [rbp - 0x4b8]
	nop	
	add	rax, qword ptr [rbp - 0x4c0]
	cmp	rax, -0x8000
	jl	.label_2763
	mov	eax, 0x7fff
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x4b8]
	add	rdx, qword ptr [rbp - 0x4c0]
	mov	rbp, rbp
	cmp	rcx, rdx
	jge	.label_3154
.label_2763:
	nop	
	mov	al, 1
	mov	rcx, qword ptr [rbp - 0x4b8]
	mov	edx, ecx
	mov	rcx, qword ptr [rbp - 0x4c0]
	lea	rdi, [rdi]
	mov	esi, ecx
	lea	rsi, [rsi]
	add	edx, esi
	mov	di, dx
	mov	rbp, rbp
	movsx	rcx, di
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x4c8], rcx
	nop	
	test	al, 1
	jne	.label_1997
	nop	
	jmp	.label_2744
.label_3154:
	xor	eax, eax
	lea	rdi, [rdi]
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x4b8]
	mov	eax, edx
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x4c0]
	mov	esi, edx
	add	eax, esi
	mov	rbp, rbp
	mov	di, ax
	lea	rdi, [rdi]
	movsx	rdx, di
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x4c8], rdx
	lea	rdi, [rdi]
	test	cl, 1
	jne	.label_1997
	jmp	.label_2744
.label_2341:
	xor	eax, eax
	lea	rsi, [rsi]
	mov	cl, al
	test	cl, 1
	mov	rsp, rsp
	jne	.label_2750
	mov	rbp, rbp
	jmp	.label_2895
.label_2750:
	xor	eax, eax
	nop	
	mov	cl, al
	test	cl, 1
	jne	.label_2948
	mov	rsp, rsp
	jmp	.label_3192
.label_2948:
	mov	al, 1
	nop	
	test	al, 1
	mov	rbp, rbp
	jne	.label_3194
	lea	rsi, [rsi]
	jmp	.label_3453
.label_3194:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x4c0]
	mov	ecx, eax
	cmp	ecx, 0
	lea	rsi, [rsi]
	jge	.label_3414
	nop	
	mov	eax, 0x80000000
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x4b8]
	mov	edx, ecx
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x4c0]
	mov	esi, ecx
	sub	eax, esi
	lea	rsi, [rsi]
	cmp	edx, eax
	jl	.label_3209
	jmp	.label_2095
.label_3414:
	mov	eax, 0x7fffffff
	mov	rcx, qword ptr [rbp - 0x4c0]
	mov	edx, ecx
	mov	rsp, rsp
	sub	eax, edx
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x4b8]
	lea	rdi, [rdi]
	mov	edx, ecx
	lea	rdi, [rdi]
	cmp	eax, edx
	jl	.label_3209
	lea	rsi, [rsi]
	jmp	.label_2095
.label_3453:
	nop	
	mov	rax, qword ptr [rbp - 0x4b8]
	mov	ecx, eax
	mov	rbp, rbp
	cmp	ecx, 0
	lea	rsi, [rsi]
	jge	.label_3641
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x4c0]
	lea	rdi, [rdi]
	mov	ecx, eax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x4b8]
	mov	edx, eax
	nop	
	mov	rax, qword ptr [rbp - 0x4c0]
	mov	rbp, rbp
	mov	esi, eax
	add	edx, esi
	cmp	ecx, edx
	lea	rsi, [rsi]
	jle	.label_3209
	jmp	.label_2095
.label_3641:
	mov	rax, qword ptr [rbp - 0x4c0]
	lea	rsi, [rsi]
	mov	ecx, eax
	cmp	ecx, 0
	nop	
	jge	.label_3746
	mov	rax, qword ptr [rbp - 0x4b8]
	lea	rsi, [rsi]
	mov	ecx, eax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x4b8]
	mov	edx, eax
	mov	rax, qword ptr [rbp - 0x4c0]
	mov	rsp, rsp
	mov	esi, eax
	mov	rbp, rbp
	add	edx, esi
	cmp	ecx, edx
	mov	rsp, rsp
	jle	.label_3209
	jmp	.label_2095
.label_3746:
	mov	rax, qword ptr [rbp - 0x4b8]
	mov	ecx, eax
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x4c0]
	lea	rdi, [rdi]
	mov	edx, eax
	mov	rsp, rsp
	add	ecx, edx
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x4c0]
	mov	rbp, rbp
	mov	edx, eax
	nop	
	cmp	ecx, edx
	lea	rsi, [rsi]
	jl	.label_3209
.label_2095:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x4b8]
	mov	ecx, eax
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x4c0]
	mov	edx, eax
	add	ecx, edx
	lea	rdi, [rdi]
	cmp	ecx, 0x80000000
	jl	.label_3209
	mov	eax, 0x7fffffff
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x4b8]
	lea	rdi, [rdi]
	mov	edx, ecx
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x4c0]
	mov	esi, ecx
	mov	rbp, rbp
	add	edx, esi
	nop	
	cmp	eax, edx
	mov	rsp, rsp
	jge	.label_2059
.label_3209:
	mov	rsp, rsp
	mov	al, 1
	nop	
	mov	rcx, qword ptr [rbp - 0x4b8]
	mov	rsp, rsp
	mov	edx, ecx
	mov	rcx, qword ptr [rbp - 0x4c0]
	mov	esi, ecx
	add	edx, esi
	lea	rsi, [rsi]
	movsxd	rcx, edx
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x4c8], rcx
	mov	rbp, rbp
	test	al, 1
	jne	.label_1997
	jmp	.label_2744
.label_2059:
	lea	rdi, [rdi]
	xor	eax, eax
	lea	rsi, [rsi]
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x4b8]
	mov	eax, edx
	nop	
	mov	rdx, qword ptr [rbp - 0x4c0]
	mov	esi, edx
	add	eax, esi
	movsxd	rdx, eax
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x4c8], rdx
	mov	rbp, rbp
	test	cl, 1
	jne	.label_1997
	nop	
	jmp	.label_2744
.label_3192:
	mov	al, 1
	test	al, 1
	lea	rdi, [rdi]
	jne	.label_3294
	jmp	.label_3329
.label_3294:
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0x4c0], 0
	jge	.label_3331
	movabs	rax, 0x8000000000000000
	mov	rcx, qword ptr [rbp - 0x4b8]
	lea	rsi, [rsi]
	sub	rax, qword ptr [rbp - 0x4c0]
	mov	rbp, rbp
	cmp	rcx, rax
	nop	
	jl	.label_3357
	lea	rdi, [rdi]
	jmp	.label_3137
.label_3331:
	lea	rsi, [rsi]
	movabs	rax, 0x7fffffffffffffff
	lea	rdi, [rdi]
	sub	rax, qword ptr [rbp - 0x4c0]
	cmp	rax, qword ptr [rbp - 0x4b8]
	lea	rdi, [rdi]
	jl	.label_3357
	nop	
	jmp	.label_3137
.label_3329:
	cmp	qword ptr [rbp - 0x4b8], 0
	lea	rdi, [rdi]
	jge	.label_2276
	mov	rax, qword ptr [rbp - 0x4c0]
	mov	rcx, qword ptr [rbp - 0x4b8]
	mov	rsp, rsp
	add	rcx, qword ptr [rbp - 0x4c0]
	mov	rsp, rsp
	cmp	rax, rcx
	lea	rsi, [rsi]
	jle	.label_3357
	jmp	.label_3137
.label_2276:
	cmp	qword ptr [rbp - 0x4c0], 0
	mov	rbp, rbp
	jge	.label_2737
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x4b8]
	mov	rcx, qword ptr [rbp - 0x4b8]
	add	rcx, qword ptr [rbp - 0x4c0]
	cmp	rax, rcx
	mov	rbp, rbp
	jle	.label_3357
	nop	
	jmp	.label_3137
.label_2737:
	mov	rax, qword ptr [rbp - 0x4b8]
	lea	rsi, [rsi]
	add	rax, qword ptr [rbp - 0x4c0]
	lea	rdi, [rdi]
	cmp	rax, qword ptr [rbp - 0x4c0]
	mov	rsp, rsp
	jl	.label_3357
.label_3137:
	nop	
	mov	rax, qword ptr [rbp - 0x4b8]
	add	rax, qword ptr [rbp - 0x4c0]
	cmp	rax, -0x80000000
	lea	rsi, [rsi]
	jl	.label_3357
	mov	eax, 0x7fffffff
	mov	ecx, eax
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x4b8]
	add	rdx, qword ptr [rbp - 0x4c0]
	cmp	rcx, rdx
	jge	.label_3394
.label_3357:
	lea	rdi, [rdi]
	mov	al, 1
	nop	
	mov	rcx, qword ptr [rbp - 0x4b8]
	lea	rsi, [rsi]
	mov	edx, ecx
	mov	rcx, qword ptr [rbp - 0x4c0]
	mov	esi, ecx
	lea	rsi, [rsi]
	add	edx, esi
	movsxd	rcx, edx
	mov	qword ptr [rbp - 0x4c8], rcx
	test	al, 1
	mov	rbp, rbp
	jne	.label_1997
	jmp	.label_2744
.label_3394:
	lea	rdi, [rdi]
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x4b8]
	mov	eax, edx
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x4c0]
	mov	rsp, rsp
	mov	esi, edx
	add	eax, esi
	lea	rsi, [rsi]
	movsxd	rdx, eax
	mov	qword ptr [rbp - 0x4c8], rdx
	test	cl, 1
	lea	rsi, [rsi]
	jne	.label_1997
	lea	rdi, [rdi]
	jmp	.label_2744
.label_2895:
	mov	al, 1
	test	al, 1
	nop	
	jne	.label_3675
	nop	
	jmp	.label_2884
.label_3675:
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	lea	rdi, [rdi]
	jne	.label_3430
	lea	rsi, [rsi]
	jmp	.label_2335
.label_3430:
	nop	
	mov	al, 1
	lea	rsi, [rsi]
	test	al, 1
	jne	.label_3436
	jmp	.label_2007
.label_3436:
	cmp	qword ptr [rbp - 0x4c0], 0
	mov	rbp, rbp
	jge	.label_3100
	lea	rsi, [rsi]
	movabs	rax, 0x8000000000000000
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x4b8]
	sub	rax, qword ptr [rbp - 0x4c0]
	cmp	rcx, rax
	mov	rbp, rbp
	jl	.label_2534
	jmp	.label_3235
.label_3100:
	mov	rsp, rsp
	movabs	rax, 0x7fffffffffffffff
	sub	rax, qword ptr [rbp - 0x4c0]
	cmp	rax, qword ptr [rbp - 0x4b8]
	jl	.label_2534
	jmp	.label_3235
.label_2007:
	cmp	qword ptr [rbp - 0x4b8], 0
	jge	.label_3465
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x4c0]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x4b8]
	lea	rsi, [rsi]
	add	rcx, qword ptr [rbp - 0x4c0]
	cmp	rax, rcx
	mov	rsp, rsp
	jle	.label_2534
	jmp	.label_3235
.label_3465:
	nop	
	cmp	qword ptr [rbp - 0x4c0], 0
	jge	.label_3301
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x4b8]
	nop	
	mov	rcx, qword ptr [rbp - 0x4b8]
	add	rcx, qword ptr [rbp - 0x4c0]
	cmp	rax, rcx
	mov	rbp, rbp
	jle	.label_2534
	nop	
	jmp	.label_3235
.label_3301:
	mov	rax, qword ptr [rbp - 0x4b8]
	add	rax, qword ptr [rbp - 0x4c0]
	cmp	rax, qword ptr [rbp - 0x4c0]
	lea	rdi, [rdi]
	jl	.label_2534
.label_3235:
	mov	rbp, rbp
	movabs	rax, 0x8000000000000000
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x4b8]
	mov	rbp, rbp
	add	rcx, qword ptr [rbp - 0x4c0]
	cmp	rcx, rax
	lea	rdi, [rdi]
	jl	.label_2534
	nop	
	movabs	rax, 0x7fffffffffffffff
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x4b8]
	mov	rbp, rbp
	add	rcx, qword ptr [rbp - 0x4c0]
	mov	rsp, rsp
	cmp	rax, rcx
	nop	
	jge	.label_3494
.label_2534:
	mov	al, 1
	mov	rcx, qword ptr [rbp - 0x4b8]
	lea	rsi, [rsi]
	add	rcx, qword ptr [rbp - 0x4c0]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x4c8], rcx
	mov	rsp, rsp
	test	al, 1
	jne	.label_1997
	jmp	.label_2744
.label_3494:
	mov	rbp, rbp
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x4b8]
	nop	
	add	rdx, qword ptr [rbp - 0x4c0]
	mov	qword ptr [rbp - 0x4c8], rdx
	mov	rbp, rbp
	test	cl, 1
	jne	.label_1997
	jmp	.label_2744
.label_2335:
	mov	al, 1
	test	al, 1
	jne	.label_3547
	lea	rdi, [rdi]
	jmp	.label_3551
.label_3547:
	nop	
	cmp	qword ptr [rbp - 0x4c0], 0
	mov	rbp, rbp
	jge	.label_3701
	lea	rsi, [rsi]
	movabs	rax, 0x8000000000000000
	mov	rcx, qword ptr [rbp - 0x4b8]
	mov	rbp, rbp
	sub	rax, qword ptr [rbp - 0x4c0]
	cmp	rcx, rax
	jl	.label_3556
	jmp	.label_3578
.label_3701:
	movabs	rax, 0x7fffffffffffffff
	lea	rdi, [rdi]
	sub	rax, qword ptr [rbp - 0x4c0]
	lea	rdi, [rdi]
	cmp	rax, qword ptr [rbp - 0x4b8]
	jl	.label_3556
	lea	rdi, [rdi]
	jmp	.label_3578
.label_3551:
	nop	
	cmp	qword ptr [rbp - 0x4b8], 0
	mov	rsp, rsp
	jge	.label_3580
	mov	rax, qword ptr [rbp - 0x4c0]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x4b8]
	add	rcx, qword ptr [rbp - 0x4c0]
	lea	rdi, [rdi]
	cmp	rax, rcx
	lea	rsi, [rsi]
	jle	.label_3556
	nop	
	jmp	.label_3578
.label_3580:
	nop	
	cmp	qword ptr [rbp - 0x4c0], 0
	lea	rdi, [rdi]
	jge	.label_3597
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x4b8]
	mov	rcx, qword ptr [rbp - 0x4b8]
	mov	rsp, rsp
	add	rcx, qword ptr [rbp - 0x4c0]
	mov	rbp, rbp
	cmp	rax, rcx
	lea	rsi, [rsi]
	jle	.label_3556
	jmp	.label_3578
.label_3597:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x4b8]
	add	rax, qword ptr [rbp - 0x4c0]
	cmp	rax, qword ptr [rbp - 0x4c0]
	lea	rsi, [rsi]
	jl	.label_3556
.label_3578:
	mov	rsp, rsp
	movabs	rax, 0x8000000000000000
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x4b8]
	add	rcx, qword ptr [rbp - 0x4c0]
	nop	
	cmp	rcx, rax
	jl	.label_3556
	movabs	rax, 0x7fffffffffffffff
	mov	rcx, qword ptr [rbp - 0x4b8]
	mov	rbp, rbp
	add	rcx, qword ptr [rbp - 0x4c0]
	cmp	rax, rcx
	jge	.label_3619
.label_3556:
	mov	al, 1
	nop	
	mov	rcx, qword ptr [rbp - 0x4b8]
	mov	rbp, rbp
	add	rcx, qword ptr [rbp - 0x4c0]
	mov	qword ptr [rbp - 0x4c8], rcx
	test	al, 1
	lea	rdi, [rdi]
	jne	.label_1997
	jmp	.label_2744
.label_3619:
	lea	rsi, [rsi]
	xor	eax, eax
	mov	rbp, rbp
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x4b8]
	add	rdx, qword ptr [rbp - 0x4c0]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x4c8], rdx
	mov	rbp, rbp
	test	cl, 1
	lea	rdi, [rdi]
	jne	.label_1997
	nop	
	jmp	.label_2744
.label_2884:
	xor	eax, eax
	lea	rdi, [rdi]
	mov	cl, al
	test	cl, 1
	jne	.label_3647
	jmp	.label_3653
.label_3647:
	mov	rsp, rsp
	mov	al, 1
	mov	rbp, rbp
	test	al, 1
	nop	
	jne	.label_3654
	jmp	.label_2301
.label_3654:
	cmp	qword ptr [rbp - 0x4c0], 0
	lea	rdi, [rdi]
	jge	.label_3658
	movabs	rax, 0x8000000000000000
	mov	rcx, qword ptr [rbp - 0x4b8]
	sub	rax, qword ptr [rbp - 0x4c0]
	nop	
	cmp	rcx, rax
	lea	rdi, [rdi]
	jl	.label_2191
	jmp	.label_3542
.label_3658:
	movabs	rax, 0x7fffffffffffffff
	sub	rax, qword ptr [rbp - 0x4c0]
	cmp	rax, qword ptr [rbp - 0x4b8]
	jl	.label_2191
	jmp	.label_3542
.label_2301:
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0x4b8], 0
	mov	rbp, rbp
	jge	.label_2642
	mov	rax, qword ptr [rbp - 0x4c0]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x4b8]
	add	rcx, qword ptr [rbp - 0x4c0]
	mov	rsp, rsp
	cmp	rax, rcx
	jle	.label_2191
	mov	rbp, rbp
	jmp	.label_3542
.label_2642:
	cmp	qword ptr [rbp - 0x4c0], 0
	lea	rdi, [rdi]
	jge	.label_3202
	mov	rax, qword ptr [rbp - 0x4b8]
	mov	rcx, qword ptr [rbp - 0x4b8]
	add	rcx, qword ptr [rbp - 0x4c0]
	cmp	rax, rcx
	lea	rdi, [rdi]
	jle	.label_2191
	jmp	.label_3542
.label_3202:
	nop	
	mov	rax, qword ptr [rbp - 0x4b8]
	nop	
	add	rax, qword ptr [rbp - 0x4c0]
	lea	rdi, [rdi]
	cmp	rax, qword ptr [rbp - 0x4c0]
	lea	rdi, [rdi]
	jl	.label_2191
.label_3542:
	lea	rsi, [rsi]
	movabs	rax, 0x8000000000000000
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x4b8]
	add	rcx, qword ptr [rbp - 0x4c0]
	cmp	rcx, rax
	mov	rsp, rsp
	jl	.label_2191
	movabs	rax, 0x7fffffffffffffff
	mov	rcx, qword ptr [rbp - 0x4b8]
	add	rcx, qword ptr [rbp - 0x4c0]
	cmp	rax, rcx
	jge	.label_3721
.label_2191:
	mov	al, 1
	nop	
	mov	rcx, qword ptr [rbp - 0x4b8]
	lea	rdi, [rdi]
	add	rcx, qword ptr [rbp - 0x4c0]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x4c8], rcx
	mov	rsp, rsp
	test	al, 1
	lea	rsi, [rsi]
	jne	.label_1997
	jmp	.label_2744
.label_3721:
	mov	rsp, rsp
	xor	eax, eax
	nop	
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x4b8]
	add	rdx, qword ptr [rbp - 0x4c0]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x4c8], rdx
	mov	rsp, rsp
	test	cl, 1
	jne	.label_1997
	jmp	.label_2744
.label_3653:
	nop	
	mov	al, 1
	mov	rbp, rbp
	test	al, 1
	lea	rsi, [rsi]
	jne	.label_3745
	nop	
	jmp	.label_2001
.label_3745:
	nop	
	cmp	qword ptr [rbp - 0x4c0], 0
	jge	.label_3750
	lea	rsi, [rsi]
	movabs	rax, 0x8000000000000000
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x4b8]
	lea	rsi, [rsi]
	sub	rax, qword ptr [rbp - 0x4c0]
	cmp	rcx, rax
	jl	.label_3127
	mov	rbp, rbp
	jmp	.label_3768
.label_3750:
	movabs	rax, 0x7fffffffffffffff
	sub	rax, qword ptr [rbp - 0x4c0]
	cmp	rax, qword ptr [rbp - 0x4b8]
	nop	
	jl	.label_3127
	lea	rdi, [rdi]
	jmp	.label_3768
.label_2001:
	nop	
	cmp	qword ptr [rbp - 0x4b8], 0
	mov	rbp, rbp
	jge	.label_3777
	mov	rax, qword ptr [rbp - 0x4c0]
	mov	rcx, qword ptr [rbp - 0x4b8]
	nop	
	add	rcx, qword ptr [rbp - 0x4c0]
	mov	rsp, rsp
	cmp	rax, rcx
	jle	.label_3127
	jmp	.label_3768
.label_3777:
	cmp	qword ptr [rbp - 0x4c0], 0
	nop	
	jge	.label_3789
	mov	rax, qword ptr [rbp - 0x4b8]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x4b8]
	nop	
	add	rcx, qword ptr [rbp - 0x4c0]
	cmp	rax, rcx
	jle	.label_3127
	jmp	.label_3768
.label_3789:
	mov	rax, qword ptr [rbp - 0x4b8]
	mov	rbp, rbp
	add	rax, qword ptr [rbp - 0x4c0]
	mov	rbp, rbp
	cmp	rax, qword ptr [rbp - 0x4c0]
	lea	rsi, [rsi]
	jl	.label_3127
.label_3768:
	movabs	rax, 0x8000000000000000
	mov	rcx, qword ptr [rbp - 0x4b8]
	mov	rsp, rsp
	add	rcx, qword ptr [rbp - 0x4c0]
	cmp	rcx, rax
	lea	rdi, [rdi]
	jl	.label_3127
	mov	rsp, rsp
	movabs	rax, 0x7fffffffffffffff
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x4b8]
	mov	rbp, rbp
	add	rcx, qword ptr [rbp - 0x4c0]
	mov	rbp, rbp
	cmp	rax, rcx
	jge	.label_3502
.label_3127:
	lea	rdi, [rdi]
	mov	al, 1
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x4b8]
	mov	rbp, rbp
	add	rcx, qword ptr [rbp - 0x4c0]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x4c8], rcx
	mov	rbp, rbp
	test	al, 1
	mov	rbp, rbp
	jne	.label_1997
	jmp	.label_2744
.label_3502:
	xor	eax, eax
	lea	rdi, [rdi]
	mov	cl, al
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x4b8]
	mov	rbp, rbp
	add	rdx, qword ptr [rbp - 0x4c0]
	mov	qword ptr [rbp - 0x4c8], rdx
	test	cl, 1
	nop	
.label_2744:
