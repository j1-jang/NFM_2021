	.section	.text
	.align	32
	#Procedure 0x402880

	.globl usage
	.type usage, @function
usage:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x14], edi
	mov	rbp, rbp
	cmp	dword ptr [rbp - 0x14], 0
	je	.label_7
	lea	rdi, [rdi]
	jmp	.label_8
.label_8:
	mov	rbp, rbp
	movabs	rdi, OFFSET FLAT:.str
	mov	rax,  qword ptr [word ptr [stderr]]
	mov	qword ptr [rbp - 0x28], rax
	lea	rsi, [rsi]
	call	gettext
	mov	rsp, rsp
	mov	rdx,  qword ptr [word ptr [program_name]]
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x28]
	mov	rsi, rax
	lea	rdi, [rdi]
	mov	al, 0
	call	fprintf
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0xc], eax
	mov	rsp, rsp
	jmp	.label_9
.label_7:
	movabs	rdi, OFFSET FLAT:.str.1
	mov	rbp, rbp
	call	gettext
	mov	rbp, rbp
	mov	rsi,  qword ptr [word ptr [program_name]]
	mov	rdx,  qword ptr [word ptr [program_name]]
	mov	rcx,  qword ptr [word ptr [program_name]]
	mov	rsp, rsp
	mov	rdi, rax
	lea	rsi, [rsi]
	mov	al, 0
	call	printf
	movabs	rdi, OFFSET FLAT:.str.2
	mov	dword ptr [rbp - 4], eax
	lea	rdi, [rdi]
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	nop	
	call	fputs_unlocked
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x10], eax
	lea	rdi, [rdi]
	call	emit_mandatory_arg_note
	lea	rdi, [rdi]
	movabs	rdi, OFFSET FLAT:.str.3
	nop	
	call	gettext
	nop	
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	lea	rsi, [rsi]
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:.str.4
	mov	dword ptr [rbp - 0x20], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	nop	
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:.str.5
	mov	dword ptr [rbp - 0x1c], eax
	lea	rdi, [rdi]
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	lea	rdi, [rdi]
	mov	rdi, rax
	lea	rdi, [rdi]
	call	fputs_unlocked
	mov	rbp, rbp
	movabs	rdi, OFFSET FLAT:.str.6
	mov	dword ptr [rbp - 0x18], eax
	mov	rbp, rbp
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	lea	rsi, [rsi]
	mov	rdi, rax
	call	fputs_unlocked
	mov	rsp, rsp
	movabs	rdi, OFFSET FLAT:.str.7
	mov	dword ptr [rbp - 0x2c], eax
	call	gettext
	mov	rsp, rsp
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rsp, rsp
	mov	rdi, rax
	lea	rsi, [rsi]
	call	fputs_unlocked
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 8], eax
	lea	rdi, [rdi]
	call	emit_backup_suffix_note
	movabs	rdi, OFFSET FLAT:.str.8
	call	emit_ancillary_info
.label_9:
	mov	rbp, rbp
	mov	edi, dword ptr [rbp - 0x14]
	lea	rdi, [rdi]
	call	exit
	.section	.text
	.align	32
	#Procedure 0x402a60

	.globl emit_mandatory_arg_note
	.type emit_mandatory_arg_note, @function
emit_mandatory_arg_note:
	mov	rbp, rbp
	push	rbp
	mov	rbp, rbp
	mov	rbp, rsp
	nop	
	sub	rsp, 0x10
	movabs	rdi, OFFSET FLAT:.str.28
	call	gettext
	mov	rbp, rbp
	mov	rsi,  qword ptr [word ptr [stdout]]
	lea	rsi, [rsi]
	mov	rdi, rax
	call	fputs_unlocked
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 4], eax
	add	rsp, 0x10
	pop	rbp
	mov	rsp, rsp
	ret	
	.section	.text
	.align	32
	#Procedure 0x402ab0

	.globl emit_backup_suffix_note
	.type emit_backup_suffix_note, @function
emit_backup_suffix_note:
	lea	rdi, [rdi]
	push	rbp
	nop	
	mov	rbp, rsp
	sub	rsp, 0x10
	movabs	rdi, OFFSET FLAT:.str.29
	call	gettext
	lea	rsi, [rsi]
	mov	rsi,  qword ptr [word ptr [stdout]]
	lea	rdi, [rdi]
	mov	rdi, rax
	call	fputs_unlocked
	lea	rdi, [rdi]
	movabs	rdi, OFFSET FLAT:.str.30
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 8], eax
	mov	rbp, rbp
	call	gettext
	nop	
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rbp, rbp
	mov	rdi, rax
	nop	
	call	fputs_unlocked
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 4], eax
	mov	rsp, rsp
	add	rsp, 0x10
	mov	rbp, rbp
	pop	rbp
	lea	rsi, [rsi]
	ret	
	.section	.text
	.align	32
	#Procedure 0x402b30

	.globl emit_ancillary_info
	.type emit_ancillary_info, @function
emit_ancillary_info:
	push	rbp
	lea	rsi, [rsi]
	mov	rbp, rsp
	lea	rsi, [rsi]
	sub	rsp, 0x50
	lea	rdi, [rdi]
	movabs	rax, OFFSET FLAT:emit_ancillary_info.infomap
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x18], rdi
	mov	rdi, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x38], rax
.label_15:
	xor	eax, eax
	nop	
	mov	cl, al
	nop	
	mov	rdx, qword ptr [rbp - 0x38]
	cmp	qword ptr [rdx], 0
	mov	byte ptr [rbp - 0x41], cl
	je	.label_12
	nop	
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rbp - 0x38]
	mov	rsp, rsp
	mov	rsi, qword ptr [rax]
	call	strcmp
	lea	rdi, [rdi]
	cmp	eax, 0
	sete	cl
	xor	cl, 0xff
	mov	byte ptr [rbp - 0x41], cl
.label_12:
	mov	al, byte ptr [rbp - 0x41]
	mov	rbp, rbp
	test	al, 1
	mov	rbp, rbp
	jne	.label_11
	lea	rdi, [rdi]
	jmp	.label_14
.label_11:
	nop	
	mov	rax, qword ptr [rbp - 0x38]
	add	rax, 0x10
	mov	qword ptr [rbp - 0x38], rax
	jmp	.label_15
.label_14:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x38]
	cmp	qword ptr [rax + 8], 0
	je	.label_10
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x38]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x10], rax
.label_10:
	mov	rsp, rsp
	movabs	rdi, OFFSET FLAT:.str.39
	call	gettext
	lea	rdi, [rdi]
	movabs	rsi, OFFSET FLAT:.str.17
	movabs	rdx, OFFSET FLAT:.str.18
	nop	
	mov	rdi, rax
	mov	al, 0
	mov	rsp, rsp
	call	printf
	lea	rdi, [rdi]
	mov	edi, 5
	lea	rsi, [rsi]
	xor	ecx, ecx
	nop	
	mov	esi, ecx
	mov	dword ptr [rbp - 4], eax
	mov	rbp, rbp
	call	setlocale
	mov	qword ptr [rbp - 0x28], rax
	cmp	qword ptr [rbp - 0x28], 0
	je	.label_13
	movabs	rsi, OFFSET FLAT:.str.41
	mov	rsp, rsp
	mov	eax, 3
	lea	rsi, [rsi]
	mov	edx, eax
	mov	rdi, qword ptr [rbp - 0x28]
	call	strncmp
	cmp	eax, 0
	je	.label_13
	lea	rdi, [rdi]
	movabs	rdi, OFFSET FLAT:.str.42
	call	gettext
	mov	rbp, rbp
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	mov	dword ptr [rbp - 0x40], eax
.label_13:
	lea	rsi, [rsi]
	movabs	rdi, OFFSET FLAT:.str.43
	call	gettext
	lea	rdi, [rdi]
	movabs	rsi, OFFSET FLAT:.str.18
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rdi, rax
	mov	al, 0
	lea	rsi, [rsi]
	call	printf
	lea	rdi, [rdi]
	movabs	rdi, OFFSET FLAT:.str.44
	mov	dword ptr [rbp - 0x3c], eax
	call	gettext
	movabs	rdx, OFFSET FLAT:.str_0
	mov	rbp, rbp
	movabs	rsi, OFFSET FLAT:.str.45
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	cmp	rcx, qword ptr [rbp - 0x18]
	nop	
	cmove	rdx, rsi
	mov	qword ptr [rbp - 0x30], rdi
	mov	rbp, rbp
	mov	rdi, rax
	nop	
	mov	rsi, qword ptr [rbp - 0x30]
	mov	al, 0
	call	printf
	mov	dword ptr [rbp - 0x1c], eax
	mov	rsp, rsp
	add	rsp, 0x50
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x402d30

	.globl main
	.type main, @function
main:
	lea	rdi, [rdi]
	push	rbp
	mov	rbp, rsp
	nop	
	sub	rsp, 0x200
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 4], 0
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x48], edi
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x128], rsi
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x1d9], 0
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x50], 0
	mov	qword ptr [rbp - 0x1d0], 0
	mov	qword ptr [rbp - 0x1c8], 0
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x41], 0
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x11d], 0
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x128]
	mov	rdi, qword ptr [rsi]
	call	set_program_name
	mov	edi, 6
	movabs	rsi, OFFSET FLAT:.str_0
	nop	
	call	setlocale
	movabs	rdi, OFFSET FLAT:.str.10
	movabs	rsi, OFFSET FLAT:.str.11
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x30], rax
	call	bindtextdomain
	lea	rsi, [rsi]
	movabs	rdi, OFFSET FLAT:.str.10
	nop	
	mov	qword ptr [rbp - 0x1b8], rax
	call	textdomain
	movabs	rdi, OFFSET FLAT:close_stdin
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x130], rax
	mov	rbp, rbp
	call	atexit
	lea	rdi, [rbp - 0x1a8]
	mov	dword ptr [rbp - 0x13c], eax
	call	cp_option_init
	lea	rdi, [rdi]
	call	priv_set_remove_linkdir
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x1d8], eax
.label_70:
	nop	
	movabs	rdx, OFFSET FLAT:.str.12
	movabs	rcx, OFFSET FLAT:long_options
	nop	
	xor	eax, eax
	mov	r8d, eax
	mov	edi, dword ptr [rbp - 0x48]
	mov	rsi, qword ptr [rbp - 0x128]
	call	getopt_long
	mov	dword ptr [rbp - 0x1d4], eax
	cmp	eax, -1
	je	.label_35
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x1d4]
	lea	rdi, [rdi]
	mov	ecx, eax
	sub	ecx, 0xffffff7d
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x1ac], eax
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x5c], ecx
	lea	rdi, [rdi]
	je	.label_42
	lea	rsi, [rsi]
	jmp	.label_52
.label_52:
	nop	
	mov	eax, dword ptr [rbp - 0x1ac]
	mov	rsp, rsp
	sub	eax, 0xffffff7e
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x134], eax
	nop	
	je	.label_56
	jmp	.label_62
.label_62:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x1ac]
	nop	
	sub	eax, 0x53
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x18], eax
	je	.label_65
	jmp	.label_68
.label_68:
	mov	eax, dword ptr [rbp - 0x1ac]
	sub	eax, 0x54
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x28], eax
	je	.label_72
	lea	rdi, [rdi]
	jmp	.label_75
.label_75:
	mov	eax, dword ptr [rbp - 0x1ac]
	mov	rbp, rbp
	sub	eax, 0x5a
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x3c], eax
	mov	rbp, rbp
	je	.label_16
	jmp	.label_20
.label_20:
	mov	eax, dword ptr [rbp - 0x1ac]
	sub	eax, 0x62
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x108], eax
	mov	rsp, rsp
	je	.label_23
	lea	rsi, [rsi]
	jmp	.label_29
.label_29:
	mov	eax, dword ptr [rbp - 0x1ac]
	lea	rdi, [rdi]
	sub	eax, 0x66
	nop	
	mov	dword ptr [rbp - 0x1bc], eax
	lea	rsi, [rsi]
	je	.label_31
	mov	rbp, rbp
	jmp	.label_36
.label_36:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x1ac]
	sub	eax, 0x69
	mov	dword ptr [rbp - 0x54], eax
	mov	rsp, rsp
	je	.label_41
	lea	rdi, [rdi]
	jmp	.label_45
.label_45:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x1ac]
	sub	eax, 0x6e
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x10c], eax
	mov	rbp, rbp
	je	.label_48
	jmp	.label_73
.label_73:
	mov	eax, dword ptr [rbp - 0x1ac]
	sub	eax, 0x74
	mov	dword ptr [rbp - 0x144], eax
	nop	
	je	.label_60
	jmp	.label_47
.label_47:
	mov	eax, dword ptr [rbp - 0x1ac]
	mov	rbp, rbp
	sub	eax, 0x75
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x11c], eax
	je	.label_58
	jmp	.label_71
.label_71:
	mov	eax, dword ptr [rbp - 0x1ac]
	sub	eax, 0x76
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x138], eax
	mov	rsp, rsp
	je	.label_44
	jmp	.label_57
.label_57:
	mov	eax, dword ptr [rbp - 0x1ac]
	mov	rsp, rsp
	sub	eax, 0x80
	mov	dword ptr [rbp - 0xf4], eax
	je	.label_18
	jmp	.label_22
.label_23:
	nop	
	mov	byte ptr [rbp - 0x1d9], 1
	cmp	qword ptr [word ptr [optarg]],  0
	je	.label_24
	nop	
	mov	rax,  qword ptr [word ptr [optarg]]
	nop	
	mov	qword ptr [rbp - 0x1d0], rax
.label_24:
	jmp	.label_19
.label_31:
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x1a0], 1
	mov	rsp, rsp
	jmp	.label_19
.label_41:
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x1a0], 3
	mov	rsp, rsp
	jmp	.label_19
.label_48:
	mov	dword ptr [rbp - 0x1a0], 2
	mov	rsp, rsp
	jmp	.label_19
.label_18:
	mov	rsp, rsp
	mov	byte ptr [byte ptr [remove_trailing_slashes]],  1
	jmp	.label_19
.label_60:
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0x1c8], 0
	mov	rbp, rbp
	je	.label_55
	lea	rdi, [rdi]
	movabs	rdi, OFFSET FLAT:.str.13
	lea	rdi, [rdi]
	call	gettext
	nop	
	mov	edi, 1
	lea	rdi, [rdi]
	xor	esi, esi
	mov	rdx, rax
	mov	rsp, rsp
	mov	al, 0
	call	error
.label_55:
	mov	rsp, rsp
	lea	rsi, [rbp - 0xf0]
	mov	rbp, rbp
	mov	rdi,  qword ptr [word ptr [optarg]]
	call	stat
	lea	rsi, [rsi]
	cmp	eax, 0
	je	.label_67
	call	__errno_location
	lea	rdi, [rdi]
	movabs	rdi, OFFSET FLAT:.str.14
	lea	rsi, [rsi]
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0x24], esi
	mov	rsp, rsp
	call	gettext
	lea	rsi, [rsi]
	mov	edi, 4
	mov	rsi,  qword ptr [word ptr [optarg]]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x118], rax
	call	quotearg_style
	lea	rsi, [rsi]
	mov	edi, 1
	nop	
	mov	esi, dword ptr [rbp - 0x24]
	mov	rdx, qword ptr [rbp - 0x118]
	mov	rcx, rax
	mov	al, 0
	call	error
.label_67:
	mov	eax, dword ptr [rbp - 0xd8]
	and	eax, 0xf000
	cmp	eax, 0x4000
	je	.label_38
	mov	rsp, rsp
	movabs	rdi, OFFSET FLAT:.str.15
	mov	rbp, rbp
	call	gettext
	mov	edi, 4
	nop	
	mov	rsi,  qword ptr [word ptr [optarg]]
	mov	qword ptr [rbp - 0x10], rax
	call	quotearg_style
	mov	rbp, rbp
	mov	edi, 1
	xor	esi, esi
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rcx, rax
	nop	
	mov	al, 0
	lea	rsi, [rsi]
	call	error
.label_38:
	lea	rsi, [rsi]
	jmp	.label_63
.label_63:
	mov	rax,  qword ptr [word ptr [optarg]]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x1c8], rax
	mov	rsp, rsp
	jmp	.label_19
.label_72:
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x41], 1
	mov	rsp, rsp
	jmp	.label_19
.label_58:
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x17b], 1
	lea	rsi, [rsi]
	jmp	.label_19
.label_44:
	mov	byte ptr [rbp - 0x17a], 1
	jmp	.label_19
.label_65:
	mov	byte ptr [rbp - 0x1d9], 1
	lea	rsi, [rsi]
	mov	rax,  qword ptr [word ptr [optarg]]
	mov	qword ptr [rbp - 0x50], rax
	lea	rdi, [rdi]
	jmp	.label_19
.label_16:
	test	byte ptr [rbp - 0x11d], 1
	mov	rbp, rbp
	je	.label_25
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x183], 0
	mov	byte ptr [rbp - 0x187], 1
.label_25:
	jmp	.label_19
.label_56:
	lea	rdi, [rdi]
	xor	edi, edi
	call	usage
.label_42:
	movabs	rsi, OFFSET FLAT:.str.8
	movabs	rdx, OFFSET FLAT:.str.17
	movabs	r8, OFFSET FLAT:.str.17_0
	movabs	r9, OFFSET FLAT:.str.18_0
	movabs	rax, OFFSET FLAT:.str.19
	xor	ecx, ecx
	mov	edi, ecx
	mov	r10,  qword ptr [word ptr [stdout]]
	mov	rcx,  qword ptr [word ptr [Version]]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x1e8], rdi
	mov	rsp, rsp
	mov	rdi, r10
	mov	qword ptr [rsp], rax
	nop	
	mov	qword ptr [rsp + 8], 0
	mov	rsp, rsp
	mov	al, 0
	call	version_etc
	nop	
	xor	edi, edi
	call	exit
.label_22:
	mov	edi, 1
	call	usage
.label_19:
	jmp	.label_70
.label_35:
	mov	eax, dword ptr [rbp - 0x48]
	lea	rsi, [rsi]
	sub	eax,  dword ptr [dword ptr [optind]]
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x104], eax
	mov	rcx, qword ptr [rbp - 0x128]
	movsxd	rdx,  dword ptr [dword ptr [optind]]
	shl	rdx, 3
	mov	rbp, rbp
	add	rcx, rdx
	mov	qword ptr [rbp - 0x20], rcx
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x104]
	cmp	qword ptr [rbp - 0x1c8], 0
	nop	
	setne	sil
	xor	sil, 0xff
	lea	rsi, [rsi]
	and	sil, 1
	mov	rsp, rsp
	movzx	edi, sil
	cmp	eax, edi
	lea	rdi, [rdi]
	jg	.label_39
	mov	rsp, rsp
	cmp	dword ptr [rbp - 0x104], 0
	jg	.label_33
	mov	rbp, rbp
	movabs	rdi, OFFSET FLAT:.str.20
	call	gettext
	lea	rdi, [rdi]
	xor	ecx, ecx
	lea	rdi, [rdi]
	mov	edi, ecx
	mov	esi, ecx
	nop	
	mov	rdx, rax
	mov	al, 0
	call	error
	jmp	.label_46
.label_33:
	movabs	rdi, OFFSET FLAT:.str.21
	mov	rbp, rbp
	call	gettext
	mov	rsp, rsp
	mov	edi, 4
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rcx]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x100], rax
	call	quotearg_style
	lea	rsi, [rsi]
	xor	edi, edi
	mov	dword ptr [rbp - 0x1ec], edi
	lea	rsi, [rsi]
	mov	esi, dword ptr [rbp - 0x1ec]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x100]
	nop	
	mov	rcx, rax
	mov	al, 0
	lea	rdi, [rdi]
	call	error
.label_46:
	mov	edi, 1
	call	usage
.label_39:
	mov	rsp, rsp
	test	byte ptr [rbp - 0x41], 1
	je	.label_64
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x1c8], 0
	je	.label_17
	mov	rbp, rbp
	movabs	rdi, OFFSET FLAT:.str.22
	call	gettext
	mov	edi, 1
	nop	
	xor	esi, esi
	mov	rdx, rax
	mov	al, 0
	call	error
.label_17:
	mov	eax, 2
	cmp	eax, dword ptr [rbp - 0x104]
	jge	.label_28
	movabs	rdi, OFFSET FLAT:.str.23
	call	gettext
	mov	edi, 4
	mov	rcx, qword ptr [rbp - 0x20]
	nop	
	mov	rsi, qword ptr [rcx + 0x10]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x38], rax
	call	quotearg_style
	xor	edi, edi
	mov	dword ptr [rbp - 0x140], edi
	mov	rbp, rbp
	mov	esi, dword ptr [rbp - 0x140]
	mov	rdx, qword ptr [rbp - 0x38]
	nop	
	mov	rcx, rax
	mov	al, 0
	call	error
	mov	edi, 1
	lea	rsi, [rsi]
	call	usage
.label_28:
	lea	rdi, [rdi]
	jmp	.label_54
.label_64:
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x1c8], 0
	jne	.label_40
	mov	eax, 2
	cmp	eax, dword ptr [rbp - 0x104]
	jg	.label_61
	jmp	.label_66
.label_61:
	lea	rdi, [rdi]
	movabs	rdi, OFFSET FLAT:.str.24
	movabs	rsi, OFFSET FLAT:.str.25
	mov	edx, 0x1c9
	lea	rdi, [rdi]
	movabs	rcx, OFFSET FLAT:__PRETTY_FUNCTION__.main
	mov	rsp, rsp
	call	__assert_fail
.label_66:
	cmp	dword ptr [rbp - 0x104], 2
	jne	.label_76
	mov	eax, 0xffffff9c
	mov	r8d, 1
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rsi, qword ptr [rcx]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rcx + 8]
	mov	edi, eax
	mov	edx, eax
	lea	rsi, [rsi]
	call	renameatu
	lea	rsi, [rsi]
	cmp	eax, 0
	je	.label_26
	mov	rsp, rsp
	call	__errno_location
	mov	rbp, rbp
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 0x40], ecx
	lea	rsi, [rsi]
	jmp	.label_32
.label_26:
	xor	eax, eax
	nop	
	mov	dword ptr [rbp - 0x40], eax
	jmp	.label_32
.label_32:
	mov	eax, dword ptr [rbp - 0x40]
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x174], eax
.label_76:
	cmp	dword ptr [rbp - 0x174], 0
	je	.label_50
	mov	eax, dword ptr [rbp - 0x104]
	mov	rbp, rbp
	sub	eax, 1
	lea	rdi, [rdi]
	movsxd	rcx, eax
	nop	
	mov	rdx, qword ptr [rbp - 0x20]
	nop	
	mov	rdi, qword ptr [rdx + rcx*8]
	call	target_directory_operand
	lea	rdi, [rdi]
	test	al, 1
	jne	.label_53
	lea	rsi, [rsi]
	jmp	.label_50
.label_53:
	mov	dword ptr [rbp - 0x174], 0xffffffff
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x104]
	lea	rsi, [rsi]
	add	eax, -1
	mov	dword ptr [rbp - 0x104], eax
	mov	rbp, rbp
	movsxd	rcx, eax
	mov	rdx, qword ptr [rbp - 0x20]
	nop	
	mov	rcx, qword ptr [rdx + rcx*8]
	nop	
	mov	qword ptr [rbp - 0x1c8], rcx
	jmp	.label_37
.label_50:
	mov	eax, 2
	mov	rbp, rbp
	cmp	eax, dword ptr [rbp - 0x104]
	jge	.label_74
	movabs	rdi, OFFSET FLAT:.str.15
	mov	rbp, rbp
	call	gettext
	mov	edi, 4
	mov	ecx, dword ptr [rbp - 0x104]
	mov	rsp, rsp
	sub	ecx, 1
	movsxd	rdx, ecx
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x20]
	mov	rsi, qword ptr [rsi + rdx*8]
	mov	qword ptr [rbp - 0x150], rax
	mov	rbp, rbp
	call	quotearg_style
	mov	edi, 1
	lea	rdi, [rdi]
	xor	esi, esi
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x150]
	mov	rbp, rbp
	mov	rcx, rax
	mov	al, 0
	mov	rsp, rsp
	call	error
.label_74:
	jmp	.label_37
.label_37:
	mov	rsp, rsp
	jmp	.label_40
.label_40:
	lea	rdi, [rdi]
	jmp	.label_54
.label_54:
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x1a0], 2
	jne	.label_43
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x17b], 0
.label_43:
	mov	rbp, rbp
	test	byte ptr [rbp - 0x1d9], 1
	je	.label_51
	nop	
	cmp	dword ptr [rbp - 0x1a0], 2
	jne	.label_51
	movabs	rdi, OFFSET FLAT:.str.26
	call	gettext
	xor	ecx, ecx
	lea	rdi, [rdi]
	mov	edi, ecx
	lea	rdi, [rdi]
	mov	esi, ecx
	mov	rdx, rax
	mov	rsp, rsp
	mov	al, 0
	call	error
	mov	edi, 1
	call	usage
.label_51:
	nop	
	test	byte ptr [rbp - 0x1d9], 1
	je	.label_69
	movabs	rdi, OFFSET FLAT:.str.27
	mov	rbp, rbp
	call	gettext
	mov	rsi, qword ptr [rbp - 0x1d0]
	mov	rdi, rax
	lea	rsi, [rsi]
	call	xget_version
	mov	dword ptr [rbp - 0x14], eax
	lea	rdi, [rdi]
	jmp	.label_21
.label_69:
	xor	eax, eax
	mov	dword ptr [rbp - 0x14], eax
	mov	rsp, rsp
	jmp	.label_21
.label_21:
	mov	eax, dword ptr [rbp - 0x14]
	mov	dword ptr [rbp - 0x1a8], eax
	nop	
	mov	rdi, qword ptr [rbp - 0x50]
	call	set_simple_backup_suffix
	nop	
	call	hash_init
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x1c8], 0
	nop	
	je	.label_30
	mov	eax, 2
	cmp	eax, dword ptr [rbp - 0x104]
	jg	.label_34
	mov	rsp, rsp
	lea	rdi, [rbp - 0x1a8]
	mov	rbp, rbp
	call	dest_info_init
.label_34:
	mov	byte ptr [rbp - 0x55], 1
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x154], 0
.label_59:
	mov	eax, dword ptr [rbp - 0x154]
	cmp	eax, dword ptr [rbp - 0x104]
	jge	.label_49
	mov	edx, 1
	mov	rsp, rsp
	lea	rcx, [rbp - 0x1a8]
	mov	eax, dword ptr [rbp - 0x154]
	lea	rdi, [rdi]
	add	eax, 1
	cmp	eax, dword ptr [rbp - 0x104]
	mov	rsp, rsp
	sete	sil
	and	sil, 1
	nop	
	mov	byte ptr [rbp - 0x177], sil
	movsxd	rdi, dword ptr [rbp - 0x154]
	nop	
	mov	r8, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	mov	rdi, qword ptr [r8 + rdi*8]
	mov	rsi, qword ptr [rbp - 0x1c8]
	call	movefile
	and	al, 1
	movzx	edx, al
	mov	al, byte ptr [rbp - 0x55]
	and	al, 1
	movzx	r9d, al
	lea	rdi, [rdi]
	and	r9d, edx
	lea	rdi, [rdi]
	cmp	r9d, 0
	lea	rsi, [rsi]
	setne	al
	lea	rdi, [rdi]
	and	al, 1
	mov	byte ptr [rbp - 0x55], al
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x154]
	add	eax, 1
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x154], eax
	lea	rsi, [rsi]
	jmp	.label_59
.label_49:
	jmp	.label_27
.label_30:
	xor	edx, edx
	lea	rcx, [rbp - 0x1a8]
	mov	byte ptr [rbp - 0x177], 1
	mov	rax, qword ptr [rbp - 0x20]
	mov	rdi, qword ptr [rax]
	nop	
	mov	rax, qword ptr [rbp - 0x20]
	mov	rsi, qword ptr [rax + 8]
	mov	rbp, rbp
	call	movefile
	lea	rdi, [rdi]
	and	al, 1
	mov	byte ptr [rbp - 0x55], al
.label_27:
	mov	rbp, rbp
	mov	eax, 1
	xor	ecx, ecx
	mov	dl, byte ptr [rbp - 0x55]
	test	dl, 1
	mov	rbp, rbp
	cmovne	eax, ecx
	mov	rsp, rsp
	add	rsp, 0x200
	mov	rbp, rbp
	pop	rbp
	mov	rsp, rsp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4038a0

	.globl cp_option_init
	.type cp_option_init, @function
cp_option_init:
	lea	rdi, [rdi]
	push	rbp
	mov	rsp, rsp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 0x10], rdi
	mov	rbp, rbp
	mov	byte ptr [rbp - 1], 0
	mov	rdi, qword ptr [rbp - 0x10]
	call	cp_options_default
	nop	
	xor	edi, edi
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	byte ptr [rax + 0x14], 0
	mov	rax, qword ptr [rbp - 0x10]
	mov	dword ptr [rax + 0x38], 1
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x10]
	mov	dword ptr [rax + 4], 2
	mov	rax, qword ptr [rbp - 0x10]
	mov	byte ptr [rax + 0x15], 0
	mov	rax, qword ptr [rbp - 0x10]
	nop	
	mov	byte ptr [rax + 0x16], 0
	mov	rax, qword ptr [rbp - 0x10]
	mov	byte ptr [rax + 0x17], 0
	nop	
	mov	rax, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	dword ptr [rax + 8], 4
	mov	rax, qword ptr [rbp - 0x10]
	mov	byte ptr [rax + 0x18], 1
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	byte ptr [rax + 0x19], 0
	mov	rax, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	byte ptr [rax + 0x1c], 0
	mov	rax, qword ptr [rbp - 0x10]
	mov	byte ptr [rax + 0x1d], 1
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	byte ptr [rax + 0x22], 1
	mov	rax, qword ptr [rbp - 0x10]
	mov	byte ptr [rax + 0x1e], 1
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	byte ptr [rax + 0x1f], 1
	mov	rax, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	byte ptr [rax + 0x20], 0
	lea	rdi, [rdi]
	mov	cl, byte ptr [rbp - 1]
	mov	rax, qword ptr [rbp - 0x10]
	and	cl, 1
	lea	rdi, [rdi]
	mov	byte ptr [rax + 0x25], cl
	nop	
	mov	rax, qword ptr [rbp - 0x10]
	mov	byte ptr [rax + 0x21], 0
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x10]
	mov	byte ptr [rax + 0x29], 0
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	byte ptr [rax + 0x23], 1
	mov	rax, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	byte ptr [rax + 0x24], 0
	mov	rax, qword ptr [rbp - 0x10]
	mov	byte ptr [rax + 0x26], 0
	mov	rax, qword ptr [rbp - 0x10]
	mov	byte ptr [rax + 0x27], 1
	nop	
	mov	rax, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	byte ptr [rax + 0x28], 0
	mov	rax, qword ptr [rbp - 0x10]
	nop	
	mov	byte ptr [rax + 0x2a], 1
	mov	rax, qword ptr [rbp - 0x10]
	mov	dword ptr [rax + 0xc], 2
	mov	rax, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	byte ptr [rax + 0x2c], 0
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x10]
	mov	byte ptr [rax + 0x2b], 0
	mov	rax, qword ptr [rbp - 0x10]
	mov	dword ptr [rax + 0x10], 0
	lea	rdi, [rdi]
	call	isatty
	cmp	eax, 0
	mov	rsp, rsp
	setne	cl
	nop	
	mov	rdx, qword ptr [rbp - 0x10]
	and	cl, 1
	mov	byte ptr [rdx + 0x2f], cl
	mov	rdx, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	byte ptr [rdx + 0x30], 0
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	byte ptr [rdx + 0x2d], 0
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	byte ptr [rdx + 0x2e], 0
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x10]
	nop	
	mov	qword ptr [rdx + 0x40], 0
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	qword ptr [rdx + 0x48], 0
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x403a70

	.globl target_directory_operand
	.type target_directory_operand, @function
target_directory_operand:
	push	rbp
	mov	rbp, rsp
	mov	rsp, rsp
	sub	rsp, 0xc0
	mov	rsp, rsp
	lea	rsi, [rbp - 0x98]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0xa8], rdi
	mov	rdi, qword ptr [rbp - 0xa8]
	call	stat
	mov	rsp, rsp
	cmp	eax, 0
	mov	rbp, rbp
	jne	.label_80
	xor	eax, eax
	mov	rbp, rbp
	mov	dword ptr [rbp - 0xa0], eax
	mov	rsp, rsp
	jmp	.label_77
.label_80:
	call	__errno_location
	mov	ecx, dword ptr [rax]
	nop	
	mov	dword ptr [rbp - 0xa0], ecx
.label_77:
	mov	eax, dword ptr [rbp - 0xa0]
	xor	ecx, ecx
	mov	rbp, rbp
	mov	dl, cl
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0xb0], eax
	mov	rbp, rbp
	cmp	dword ptr [rbp - 0xb0], 0
	mov	byte ptr [rbp - 0xa9], dl
	jne	.label_78
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x80]
	and	eax, 0xf000
	lea	rsi, [rsi]
	cmp	eax, 0x4000
	nop	
	sete	cl
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0xa9], cl
.label_78:
	nop	
	mov	al, byte ptr [rbp - 0xa9]
	lea	rsi, [rsi]
	and	al, 1
	mov	byte ptr [rbp - 0xb1], al
	cmp	dword ptr [rbp - 0xb0], 0
	je	.label_79
	cmp	dword ptr [rbp - 0xb0], 2
	nop	
	je	.label_79
	nop	
	movabs	rdi, OFFSET FLAT:.str.14
	mov	esi, dword ptr [rbp - 0xb0]
	mov	dword ptr [rbp - 0x9c], esi
	call	gettext
	mov	edi, 4
	mov	rsi, qword ptr [rbp - 0xa8]
	nop	
	mov	qword ptr [rbp - 8], rax
	call	quotearg_style
	mov	edi, 1
	mov	rbp, rbp
	mov	esi, dword ptr [rbp - 0x9c]
	mov	rdx, qword ptr [rbp - 8]
	mov	rcx, rax
	mov	rsp, rsp
	mov	al, 0
	call	error
.label_79:
	mov	rbp, rbp
	mov	al, byte ptr [rbp - 0xb1]
	mov	rsp, rsp
	and	al, 1
	mov	rbp, rbp
	movzx	eax, al
	nop	
	add	rsp, 0xc0
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x403bc0

	.globl movefile
	.type movefile, @function
movefile:
	lea	rdi, [rdi]
	push	rbp
	lea	rsi, [rsi]
	mov	rbp, rsp
	mov	rsp, rsp
	sub	rsp, 0x40
	lea	rsi, [rsi]
	mov	al, dl
	mov	qword ptr [rbp - 0x28], rdi
	mov	qword ptr [rbp - 0x38], rsi
	lea	rsi, [rsi]
	and	al, 1
	mov	byte ptr [rbp - 9], al
	mov	qword ptr [rbp - 8], rcx
	test	byte ptr [byte ptr [remove_trailing_slashes]],  1
	lea	rsi, [rsi]
	je	.label_81
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	call	strip_trailing_slashes
	nop	
	mov	byte ptr [rbp - 0xa], al
.label_81:
	test	byte ptr [rbp - 9], 1
	je	.label_82
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	call	last_component
	mov	rbp, rbp
	xor	ecx, ecx
	mov	rbp, rbp
	mov	edx, ecx
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x18], rax
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x18]
	call	file_name_concat
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x30], rax
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x30]
	call	strip_trailing_slashes
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x28]
	mov	rsi, qword ptr [rbp - 0x30]
	mov	rdx, qword ptr [rbp - 8]
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x19], al
	call	do_move
	and	al, 1
	mov	byte ptr [rbp - 0xb], al
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x30]
	lea	rdi, [rdi]
	call	free
	lea	rdi, [rdi]
	jmp	.label_83
.label_82:
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x28]
	nop	
	mov	rsi, qword ptr [rbp - 0x38]
	mov	rdx, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	call	do_move
	and	al, 1
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0xb], al
.label_83:
	mov	rbp, rbp
	mov	al, byte ptr [rbp - 0xb]
	and	al, 1
	nop	
	movzx	eax, al
	nop	
	add	rsp, 0x40
	pop	rbp
	mov	rbp, rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x403cd0

	.globl do_move
	.type do_move, @function
do_move:
	push	rbp
	mov	rbp, rsp
	lea	rdi, [rdi]
	sub	rsp, 0x70
	xor	eax, eax
	mov	rsp, rsp
	lea	r8, [rbp - 0x15]
	lea	r9, [rbp - 0x61]
	nop	
	mov	qword ptr [rbp - 8], rdi
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x38], rdx
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 0x38]
	mov	rsp, rsp
	mov	edx, eax
	call	copy
	nop	
	and	al, 1
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x62], al
	test	byte ptr [rbp - 0x62], 1
	je	.label_91
	lea	rdi, [rdi]
	test	byte ptr [rbp - 0x15], 1
	mov	rsp, rsp
	je	.label_87
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x60], 0
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x62], 0
	lea	rdi, [rdi]
	jmp	.label_92
.label_87:
	test	byte ptr [rbp - 0x61], 1
	lea	rdi, [rdi]
	je	.label_89
	mov	qword ptr [rbp - 0x60], 0
	lea	rdi, [rdi]
	jmp	.label_93
.label_89:
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x60], rax
.label_93:
	jmp	.label_92
.label_92:
	cmp	qword ptr [rbp - 0x60], 0
	je	.label_88
	lea	rdi, [rbp - 0x58]
	lea	rsi, [rsi]
	call	rm_option_init
	lea	rsi, [rbp - 0x58]
	lea	rsi, [rsi]
	lea	rdi, [rbp - 0x30]
	mov	rax, qword ptr [rbp - 0x38]
	mov	cl, byte ptr [rax + 0x2e]
	mov	rbp, rbp
	and	cl, 1
	mov	byte ptr [rbp - 0x3e], cl
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x60]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x30], rax
	mov	qword ptr [rbp - 0x28], 0
	call	rm
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x14], eax
	nop	
	cmp	dword ptr [rbp - 0x14], 2
	je	.label_84
	mov	rsp, rsp
	cmp	dword ptr [rbp - 0x14], 3
	je	.label_84
	lea	rsi, [rsi]
	cmp	dword ptr [rbp - 0x14], 4
	jne	.label_86
.label_84:
	mov	rbp, rbp
	jmp	.label_90
.label_86:
	movabs	rdi, OFFSET FLAT:.str.59
	movabs	rsi, OFFSET FLAT:.str.25
	mov	edx, 0xef
	movabs	rcx, OFFSET FLAT:__PRETTY_FUNCTION__.do_move
	call	__assert_fail
.label_90:
	cmp	dword ptr [rbp - 0x14], 4
	lea	rsi, [rsi]
	jne	.label_85
	mov	byte ptr [rbp - 0x62], 0
.label_85:
	jmp	.label_88
.label_88:
	jmp	.label_91
.label_91:
	mov	al, byte ptr [rbp - 0x62]
	and	al, 1
	mov	rbp, rbp
	movzx	eax, al
	mov	rbp, rbp
	add	rsp, 0x70
	mov	rbp, rbp
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x403e60

	.globl rm_option_init
	.type rm_option_init, @function
rm_option_init:
	mov	rsp, rsp
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	movabs	rax, OFFSET FLAT:rm_option_init.dev_ino_buf
	nop	
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	byte ptr [rdi], 0
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 8]
	mov	byte ptr [rdi + 0xa], 1
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 8]
	mov	byte ptr [rdi + 9], 1
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 8]
	mov	rbp, rbp
	mov	byte ptr [rdi + 8], 0
	mov	rdi, qword ptr [rbp - 8]
	mov	dword ptr [rdi + 4], 5
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 8]
	mov	byte ptr [rdi + 0x19], 0
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	byte ptr [rdi + 0x1a], 0
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	mov	byte ptr [rdi + 0x1b], 1
	nop	
	mov	rdi, rax
	mov	rsp, rsp
	call	get_root_dev_ino
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 8]
	mov	rbp, rbp
	mov	qword ptr [rdi + 0x10], rax
	mov	rax, qword ptr [rbp - 8]
	cmp	qword ptr [rax + 0x10], 0
	lea	rdi, [rdi]
	jne	.label_94
	lea	rdi, [rdi]
	call	__errno_location
	movabs	rdi, OFFSET FLAT:.str.60
	lea	rdi, [rdi]
	mov	esi, dword ptr [rax]
	nop	
	mov	dword ptr [rbp - 0x14], esi
	nop	
	call	gettext
	mov	edi, 4
	lea	rsi, [rsi]
	movabs	rsi, OFFSET FLAT:.str_1
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x10], rax
	mov	rbp, rbp
	call	quotearg_style
	mov	edi, 1
	mov	esi, dword ptr [rbp - 0x14]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rcx, rax
	mov	al, 0
	call	error
.label_94:
	mov	rax, qword ptr [rbp - 8]
	mov	byte ptr [rax + 0x18], 0
	add	rsp, 0x20
	mov	rbp, rbp
	pop	rbp
	mov	rbp, rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x403f80

	.globl rm
	.type rm, @function
rm:
	push	rbp
	mov	rbp, rsp
	lea	rdi, [rdi]
	sub	rsp, 0x40
	nop	
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x20], rsi
	mov	dword ptr [rbp - 0x2c], 2
	mov	rsi, qword ptr [rbp - 8]
	cmp	qword ptr [rsi], 0
	je	.label_95
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x14], 0x218
	mov	rax, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	test	byte ptr [rax + 8], 1
	je	.label_105
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x14]
	mov	rsp, rsp
	or	eax, 0x40
	mov	dword ptr [rbp - 0x14], eax
.label_105:
	xor	eax, eax
	mov	rbp, rbp
	mov	edx, eax
	mov	rdi, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	esi, dword ptr [rbp - 0x14]
	mov	rbp, rbp
	call	xfts_open
	mov	qword ptr [rbp - 0x38], rax
.label_99:
	mov	rdi, qword ptr [rbp - 0x38]
	nop	
	call	rpl_fts_read
	mov	qword ptr [rbp - 0x10], rax
	cmp	qword ptr [rbp - 0x10], 0
	jne	.label_108
	lea	rsi, [rsi]
	call	__errno_location
	cmp	dword ptr [rax], 0
	je	.label_104
	lea	rdi, [rdi]
	call	__errno_location
	movabs	rdi, OFFSET FLAT:.str_2
	lea	rsi, [rsi]
	mov	esi, dword ptr [rax]
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x24], esi
	call	gettext
	nop	
	xor	edi, edi
	mov	esi, dword ptr [rbp - 0x24]
	lea	rsi, [rsi]
	mov	rdx, rax
	mov	al, 0
	lea	rdi, [rdi]
	call	error
	mov	dword ptr [rbp - 0x2c], 4
.label_104:
	jmp	.label_101
.label_108:
	nop	
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	call	rm_fts
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x3c], eax
	cmp	dword ptr [rbp - 0x3c], 2
	mov	rsp, rsp
	je	.label_96
	nop	
	cmp	dword ptr [rbp - 0x3c], 3
	je	.label_96
	nop	
	cmp	dword ptr [rbp - 0x3c], 4
	jne	.label_98
.label_96:
	jmp	.label_102
.label_98:
	lea	rdi, [rdi]
	movabs	rdi, OFFSET FLAT:.str.1_0
	mov	rsp, rsp
	movabs	rsi, OFFSET FLAT:.str.2_0
	mov	rsp, rsp
	mov	edx, 0x261
	mov	rbp, rbp
	movabs	rcx, OFFSET FLAT:__PRETTY_FUNCTION__.rm
	lea	rsi, [rsi]
	call	__assert_fail
.label_102:
	mov	rbp, rbp
	jmp	.label_100
.label_100:
	cmp	dword ptr [rbp - 0x3c], 4
	je	.label_103
	nop	
	cmp	dword ptr [rbp - 0x3c], 3
	lea	rdi, [rdi]
	jne	.label_106
	cmp	dword ptr [rbp - 0x2c], 2
	mov	rbp, rbp
	jne	.label_106
.label_103:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x3c]
	mov	dword ptr [rbp - 0x2c], eax
.label_106:
	mov	rbp, rbp
	jmp	.label_97
.label_97:
	jmp	.label_99
.label_101:
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rsp, rsp
	call	rpl_fts_close
	cmp	eax, 0
	lea	rdi, [rdi]
	je	.label_107
	lea	rdi, [rdi]
	call	__errno_location
	movabs	rdi, OFFSET FLAT:.str.3_0
	mov	esi, dword ptr [rax]
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x28], esi
	call	gettext
	xor	edi, edi
	mov	esi, dword ptr [rbp - 0x28]
	mov	rdx, rax
	lea	rsi, [rsi]
	mov	al, 0
	call	error
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x2c], 4
.label_107:
	jmp	.label_95
.label_95:
	mov	eax, dword ptr [rbp - 0x2c]
	add	rsp, 0x40
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x404180

	.globl rm_fts
	.type rm_fts, @function
rm_fts:
	nop	
	push	rbp
	nop	
	mov	rbp, rsp
	lea	rsi, [rsi]
	sub	rsp, 0x170
	mov	qword ptr [rbp - 0xa0], rdi
	mov	qword ptr [rbp - 0x98], rsi
	mov	qword ptr [rbp - 0x20], rdx
	mov	rdx, qword ptr [rbp - 0x98]
	lea	rdi, [rdi]
	movzx	eax, word ptr [rdx + 0x70]
	nop	
	dec	eax
	mov	edx, eax
	sub	eax, 0xc
	mov	qword ptr [rbp - 0x60], rdx
	mov	dword ptr [rbp - 0xa4], eax
	ja	.label_109
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_112]]
	mov	rsp, rsp
	jmp	rcx
	.section	.text
	.align	32
	#Procedure 0x404bf0

	.globl is_empty_dir
	.type is_empty_dir, @function
is_empty_dir:
	lea	rdi, [rdi]
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x40
	lea	rsi, [rsi]
	mov	edx, 0x30900
	mov	dword ptr [rbp - 0x18], edi
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x10], rsi
	mov	edi, dword ptr [rbp - 0x18]
	nop	
	mov	rsi, qword ptr [rbp - 0x10]
	mov	al, 0
	call	openat
	mov	dword ptr [rbp - 0x24], eax
	cmp	dword ptr [rbp - 0x24], 0
	jge	.label_135
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x25], 0
	nop	
	jmp	.label_133
.label_135:
	mov	edi, dword ptr [rbp - 0x24]
	nop	
	call	fdopendir
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x20], rax
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x20], 0
	nop	
	jne	.label_136
	mov	rbp, rbp
	mov	edi, dword ptr [rbp - 0x24]
	call	close
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x25], 0
	mov	dword ptr [rbp - 0x14], eax
	jmp	.label_133
.label_136:
	lea	rdi, [rdi]
	call	__errno_location
	mov	dword ptr [rax], 0
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x20]
	call	readdir_ignoring_dot_and_dotdot
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x38], rax
	call	__errno_location
	mov	ecx, dword ptr [rax]
	mov	rbp, rbp
	mov	dword ptr [rbp - 4], ecx
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	call	closedir
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x38], 0
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x2c], eax
	je	.label_134
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x25], 0
	mov	rbp, rbp
	jmp	.label_133
.label_134:
	lea	rdi, [rdi]
	xor	eax, eax
	mov	ecx, 1
	cmp	dword ptr [rbp - 4], 0
	cmove	eax, ecx
	cmp	eax, 0
	nop	
	setne	dl
	lea	rdi, [rdi]
	and	dl, 1
	mov	byte ptr [rbp - 0x25], dl
.label_133:
	lea	rsi, [rsi]
	mov	al, byte ptr [rbp - 0x25]
	and	al, 1
	nop	
	movzx	eax, al
	mov	rsp, rsp
	add	rsp, 0x40
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x404d10

	.globl mark_ancestor_dirs
	.type mark_ancestor_dirs, @function
mark_ancestor_dirs:
	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rdi + 8]
	mov	qword ptr [rbp - 0x10], rdi
.label_137:
	mov	rbp, rbp
	xor	eax, eax
	mov	rbp, rbp
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x10]
	nop	
	cmp	rcx, qword ptr [rdx + 0x58]
	lea	rsi, [rsi]
	jg	.label_139
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	cmp	qword ptr [rax + 0x20], 0
	je	.label_138
	lea	rdi, [rdi]
	jmp	.label_139
.label_138:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rax + 0x20], 1
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x10], rax
	lea	rdi, [rdi]
	jmp	.label_137
.label_139:
	mov	rbp, rbp
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x404d90

	.globl fts_skip_tree
	.type fts_skip_tree, @function
fts_skip_tree:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	rsp, rsp
	mov	edx, 4
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	call	rpl_fts_set
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 8]
	mov	dword ptr [rbp - 0x1c], eax
	call	rpl_fts_read
	mov	qword ptr [rbp - 0x18], rax
	add	rsp, 0x20
	pop	rbp
	mov	rbp, rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x404de0

	.globl dot_or_dotdot
	.type dot_or_dotdot, @function
dot_or_dotdot:
	mov	rbp, rbp
	push	rbp
	mov	rbp, rbp
	mov	rbp, rsp
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x10], rdi
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	movsx	eax, byte ptr [rdi]
	mov	rbp, rbp
	cmp	eax, 0x2e
	mov	rbp, rbp
	jne	.label_140
	mov	al, 1
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	movsx	edx, byte ptr [rcx + 1]
	cmp	edx, 0x2e
	mov	rsp, rsp
	sete	sil
	nop	
	and	sil, 1
	mov	rbp, rbp
	movzx	edx, sil
	lea	rdi, [rdi]
	add	edx, 1
	lea	rdi, [rdi]
	movsxd	rcx, edx
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x10]
	nop	
	mov	sil, byte ptr [rdi + rcx]
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 3], sil
	mov	rsp, rsp
	cmp	byte ptr [rbp - 3], 0
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 1], al
	lea	rsi, [rsi]
	je	.label_141
	lea	rdi, [rdi]
	movsx	eax, byte ptr [rbp - 3]
	cmp	eax, 0x2f
	lea	rdi, [rdi]
	sete	cl
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 1], cl
.label_141:
	mov	al, byte ptr [rbp - 1]
	lea	rdi, [rdi]
	and	al, 1
	nop	
	mov	byte ptr [rbp - 2], al
	jmp	.label_142
.label_140:
	mov	byte ptr [rbp - 2], 0
.label_142:
	mov	al, byte ptr [rbp - 2]
	nop	
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x404ea0

	.globl prompt
	.type prompt, @function
prompt:
	push	rbp
	mov	rbp, rsp
	mov	rbp, rbp
	sub	rsp, 0x160
	nop	
	mov	al, dl
	nop	
	mov	qword ptr [rbp - 0x30], rdi
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0xc8], rsi
	lea	rsi, [rsi]
	and	al, 1
	nop	
	mov	byte ptr [rbp - 0x15], al
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x58], rcx
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0xb4], r8d
	mov	qword ptr [rbp - 0x88], r9
	mov	rcx, qword ptr [rbp - 0x30]
	mov	edx, dword ptr [rcx + 0x2c]
	nop	
	mov	dword ptr [rbp - 0x5c], edx
	mov	rcx, qword ptr [rbp - 0xc8]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rcx + 0x38]
	mov	qword ptr [rbp - 0x50], rcx
	mov	rcx, qword ptr [rbp - 0xc8]
	mov	rcx, qword ptr [rcx + 0x30]
	mov	qword ptr [rbp - 0x20], rcx
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x88], 0
	je	.label_153
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x88]
	mov	dword ptr [rax], 2
.label_153:
	lea	rax, [rbp - 0x160]
	mov	qword ptr [rbp - 0x40], rax
	mov	rdi, qword ptr [rbp - 0x40]
	lea	rdi, [rdi]
	call	cache_stat_init
	xor	ecx, ecx
	mov	edx, 4
	mov	sil, byte ptr [rbp - 0x15]
	test	sil, 1
	nop	
	cmovne	ecx, edx
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0xb8], ecx
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x14], 0
	mov	byte ptr [rbp - 0x71], 0
	cmp	qword ptr [rbp - 0x88], 0
	mov	qword ptr [rbp - 0xa8], rax
	je	.label_162
	mov	edi, dword ptr [rbp - 0x5c]
	nop	
	mov	rsi, qword ptr [rbp - 0x20]
	call	is_empty_dir
	lea	rdi, [rdi]
	mov	edi, 3
	mov	ecx, 4
	mov	rbp, rbp
	and	al, 1
	mov	byte ptr [rbp - 0x71], al
	mov	al, byte ptr [rbp - 0x71]
	lea	rdi, [rdi]
	test	al, 1
	mov	rbp, rbp
	cmovne	edi, ecx
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x88]
	nop	
	mov	dword ptr [rsi], edi
.label_162:
	mov	rax, qword ptr [rbp - 0xc8]
	mov	rbp, rbp
	cmp	qword ptr [rax + 0x20], 0
	je	.label_160
	mov	dword ptr [rbp - 0x44], 3
	jmp	.label_146
.label_160:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x58]
	cmp	dword ptr [rax + 4], 5
	jne	.label_165
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x44], 2
	lea	rsi, [rsi]
	jmp	.label_146
.label_165:
	mov	rsp, rsp
	mov	dword ptr [rbp - 0xac], 0
	mov	rax, qword ptr [rbp - 0x58]
	lea	rdi, [rdi]
	test	byte ptr [rax], 1
	nop	
	jne	.label_144
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x58]
	lea	rsi, [rsi]
	cmp	dword ptr [rax + 4], 3
	lea	rdi, [rdi]
	je	.label_154
	mov	rax, qword ptr [rbp - 0x58]
	mov	rbp, rbp
	test	byte ptr [rax + 0x19], 1
	je	.label_144
.label_154:
	cmp	dword ptr [rbp - 0xb8], 0xa
	lea	rsi, [rsi]
	je	.label_144
	lea	rsi, [rsi]
	mov	edi, dword ptr [rbp - 0x5c]
	mov	rsi, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x40]
	call	write_protected_non_symlink
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x14], eax
	call	__errno_location
	mov	edi, dword ptr [rax]
	mov	dword ptr [rbp - 0xac], edi
.label_144:
	cmp	dword ptr [rbp - 0x14], 0
	mov	rbp, rbp
	jne	.label_149
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x58]
	cmp	dword ptr [rax + 4], 3
	lea	rdi, [rdi]
	jne	.label_147
.label_149:
	mov	rbp, rbp
	xor	eax, eax
	cmp	eax, dword ptr [rbp - 0x14]
	jg	.label_156
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0xb8], 0
	jne	.label_156
	mov	rbp, rbp
	mov	ecx, 0x100
	mov	rsp, rsp
	mov	edi, dword ptr [rbp - 0x5c]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x20]
	mov	rdx, qword ptr [rbp - 0x40]
	call	cache_fstatat
	cmp	eax, 0
	lea	rsi, [rsi]
	jne	.label_167
	mov	rax, qword ptr [rbp - 0x40]
	mov	rbp, rbp
	mov	ecx, dword ptr [rax + 0x18]
	lea	rsi, [rsi]
	and	ecx, 0xf000
	nop	
	cmp	ecx, 0xa000
	jne	.label_170
	mov	dword ptr [rbp - 0xb8], 0xa
	jmp	.label_145
.label_170:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x40]
	mov	rbp, rbp
	mov	ecx, dword ptr [rax + 0x18]
	and	ecx, 0xf000
	cmp	ecx, 0x4000
	jne	.label_151
	mov	dword ptr [rbp - 0xb8], 4
.label_151:
	jmp	.label_145
.label_145:
	jmp	.label_164
.label_167:
	mov	dword ptr [rbp - 0x14], 0xffffffff
	call	__errno_location
	mov	ecx, dword ptr [rax]
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0xac], ecx
.label_164:
	mov	rbp, rbp
	jmp	.label_156
.label_156:
	xor	eax, eax
	cmp	eax, dword ptr [rbp - 0x14]
	mov	rbp, rbp
	jg	.label_157
	mov	eax, dword ptr [rbp - 0xb8]
	mov	ecx, eax
	lea	rdi, [rdi]
	sub	ecx, 4
	mov	rbp, rbp
	mov	dword ptr [rbp - 0xbc], eax
	mov	dword ptr [rbp - 0x70], ecx
	lea	rdi, [rdi]
	je	.label_169
	jmp	.label_159
.label_159:
	mov	eax, dword ptr [rbp - 0xbc]
	sub	eax, 0xa
	mov	dword ptr [rbp - 0x6c], eax
	jne	.label_155
	jmp	.label_158
.label_158:
	mov	rax, qword ptr [rbp - 0x58]
	lea	rsi, [rsi]
	cmp	dword ptr [rax + 4], 3
	lea	rdi, [rdi]
	je	.label_168
	nop	
	mov	dword ptr [rbp - 0x44], 2
	jmp	.label_146
.label_168:
	nop	
	jmp	.label_155
.label_169:
	mov	rax, qword ptr [rbp - 0x58]
	mov	rbp, rbp
	test	byte ptr [rax + 9], 1
	mov	rsp, rsp
	jne	.label_148
	mov	rax, qword ptr [rbp - 0x58]
	nop	
	test	byte ptr [rax + 0xa], 1
	je	.label_172
	lea	rsi, [rsi]
	test	byte ptr [rbp - 0x71], 1
	lea	rsi, [rsi]
	jne	.label_148
.label_172:
	nop	
	mov	dword ptr [rbp - 0x14], 0xffffffff
	mov	dword ptr [rbp - 0xac], 0x15
.label_148:
	jmp	.label_155
.label_155:
	mov	rbp, rbp
	jmp	.label_157
.label_157:
	mov	rbp, rbp
	mov	edi, 4
	mov	rsi, qword ptr [rbp - 0x50]
	call	quotearg_style
	mov	qword ptr [rbp - 0x28], rax
	cmp	dword ptr [rbp - 0x14], 0
	mov	rbp, rbp
	jge	.label_152
	lea	rsi, [rsi]
	movabs	rdi, OFFSET FLAT:.str.24_0
	mov	rsp, rsp
	mov	esi, dword ptr [rbp - 0xac]
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x34], esi
	call	gettext
	lea	rsi, [rsi]
	xor	edi, edi
	nop	
	mov	rcx, qword ptr [rbp - 0x28]
	mov	esi, dword ptr [rbp - 0x34]
	mov	rdx, rax
	mov	al, 0
	call	error
	mov	dword ptr [rbp - 0x44], 4
	jmp	.label_146
.label_152:
	cmp	dword ptr [rbp - 0xb8], 4
	mov	rbp, rbp
	jne	.label_150
	cmp	dword ptr [rbp - 0xb4], 2
	jne	.label_150
	mov	rsp, rsp
	test	byte ptr [rbp - 0x71], 1
	jne	.label_150
	lea	rdi, [rdi]
	mov	rdi,  qword ptr [word ptr [stderr]]
	cmp	dword ptr [rbp - 0x14], 0
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x98], rdi
	lea	rsi, [rsi]
	je	.label_161
	movabs	rdi, OFFSET FLAT:.str.19_0
	mov	rsp, rsp
	call	gettext
	mov	qword ptr [rbp - 0x80], rax
	jmp	.label_173
.label_161:
	mov	rbp, rbp
	movabs	rdi, OFFSET FLAT:.str.20_0
	mov	rsp, rsp
	call	gettext
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x80], rax
.label_173:
	mov	rax, qword ptr [rbp - 0x80]
	nop	
	mov	rdx,  qword ptr [word ptr [program_name]]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	rdi, qword ptr [rbp - 0x98]
	mov	rbp, rbp
	mov	rsi, rax
	lea	rdi, [rdi]
	mov	al, 0
	call	fprintf
	mov	dword ptr [rbp - 0xcc], eax
	mov	rsp, rsp
	jmp	.label_163
.label_150:
	lea	rsi, [rsi]
	mov	ecx, 0x100
	mov	edi, dword ptr [rbp - 0x5c]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x20]
	mov	rdx, qword ptr [rbp - 0x40]
	lea	rdi, [rdi]
	call	cache_fstatat
	mov	rbp, rbp
	cmp	eax, 0
	je	.label_171
	mov	rbp, rbp
	call	__errno_location
	nop	
	movabs	rdi, OFFSET FLAT:.str.24_0
	mov	esi, dword ptr [rax]
	nop	
	mov	dword ptr [rbp - 0xb0], esi
	nop	
	call	gettext
	mov	rbp, rbp
	xor	edi, edi
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	esi, dword ptr [rbp - 0xb0]
	nop	
	mov	rdx, rax
	mov	rbp, rbp
	mov	al, 0
	call	error
	mov	dword ptr [rbp - 0x44], 4
	jmp	.label_146
.label_171:
	lea	rsi, [rsi]
	mov	rdi,  qword ptr [word ptr [stderr]]
	cmp	dword ptr [rbp - 0x14], 0
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x68], rdi
	je	.label_166
	mov	rsp, rsp
	movabs	rdi, OFFSET FLAT:.str.21_0
	mov	rbp, rbp
	call	gettext
	mov	qword ptr [rbp - 0x10], rax
	lea	rsi, [rsi]
	jmp	.label_174
.label_166:
	nop	
	movabs	rdi, OFFSET FLAT:.str.22_0
	lea	rsi, [rsi]
	call	gettext
	mov	qword ptr [rbp - 0x10], rax
.label_174:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x10]
	mov	rdx,  qword ptr [word ptr [program_name]]
	mov	rdi, qword ptr [rbp - 0x40]
	mov	rsp, rsp
	mov	qword ptr [rbp - 8], rax
	mov	qword ptr [rbp - 0xa0], rdx
	mov	rsp, rsp
	call	file_type
	mov	r8, qword ptr [rbp - 0x28]
	mov	rdi, qword ptr [rbp - 0x68]
	nop	
	mov	rsi, qword ptr [rbp - 8]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0xa0]
	mov	rbp, rbp
	mov	rcx, rax
	lea	rdi, [rdi]
	mov	al, 0
	nop	
	call	fprintf
	nop	
	mov	dword ptr [rbp - 0x8c], eax
.label_163:
	lea	rsi, [rsi]
	call	yesno
	mov	rsp, rsp
	test	al, 1
	jne	.label_143
	mov	dword ptr [rbp - 0x44], 3
	mov	rbp, rbp
	jmp	.label_146
.label_143:
	jmp	.label_147
.label_147:
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x44], 2
.label_146:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x44]
	add	rsp, 0x160
	mov	rsp, rsp
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4054c0

	.globl excise
	.type excise, @function
excise:
	push	rbp
	mov	rbp, rsp
	lea	rdi, [rdi]
	sub	rsp, 0xf0
	lea	rdi, [rdi]
	mov	al, cl
	xor	ecx, ecx
	mov	r8d, 0x200
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0xd8], rdi
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0xe8], rsi
	mov	qword ptr [rbp - 0xf0], rdx
	and	al, 1
	mov	rbp, rbp
	mov	byte ptr [rbp - 0xc1], al
	mov	rsp, rsp
	mov	al, byte ptr [rbp - 0xc1]
	lea	rdi, [rdi]
	test	al, 1
	cmovne	ecx, r8d
	mov	dword ptr [rbp - 0x24], ecx
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0xd8]
	mov	edi, dword ptr [rdx + 0x2c]
	mov	rdx, qword ptr [rbp - 0xe8]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rdx + 0x30]
	mov	edx, dword ptr [rbp - 0x24]
	call	unlinkat
	cmp	eax, 0
	jne	.label_183
	mov	rax, qword ptr [rbp - 0xf0]
	lea	rdi, [rdi]
	test	byte ptr [rax + 0x1a], 1
	je	.label_185
	lea	rsi, [rsi]
	test	byte ptr [rbp - 0xc1], 1
	lea	rsi, [rsi]
	je	.label_186
	nop	
	movabs	rdi, OFFSET FLAT:.str.23_0
	mov	rbp, rbp
	call	gettext
	nop	
	mov	qword ptr [rbp - 0xe0], rax
	nop	
	jmp	.label_187
.label_186:
	movabs	rdi, OFFSET FLAT:.str.25_0
	mov	rbp, rbp
	call	gettext
	mov	qword ptr [rbp - 0xe0], rax
.label_187:
	mov	rax, qword ptr [rbp - 0xe0]
	mov	rbp, rbp
	mov	edi, 4
	nop	
	mov	rcx, qword ptr [rbp - 0xe8]
	mov	rbp, rbp
	mov	rsi, qword ptr [rcx + 0x38]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x10], rax
	mov	rbp, rbp
	call	quotearg_style
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, rax
	mov	al, 0
	call	printf
	nop	
	mov	dword ptr [rbp - 4], eax
.label_185:
	mov	dword ptr [rbp - 0xc0], 2
	mov	rsp, rsp
	jmp	.label_180
.label_183:
	mov	rsp, rsp
	call	__errno_location
	lea	rdi, [rdi]
	cmp	dword ptr [rax], 0x1e
	jne	.label_184
	mov	rsp, rsp
	lea	rdx, [rbp - 0xb8]
	nop	
	mov	rax, qword ptr [rbp - 0xd8]
	mov	edi, dword ptr [rax + 0x2c]
	mov	rax, qword ptr [rbp - 0xe8]
	mov	rsi, qword ptr [rax + 0x30]
	mov	rbp, rbp
	call	lstatat
	cmp	eax, 0
	mov	rbp, rbp
	je	.label_181
	nop	
	call	__errno_location
	lea	rdi, [rdi]
	cmp	dword ptr [rax], 2
	je	.label_177
.label_181:
	call	__errno_location
	mov	rsp, rsp
	mov	dword ptr [rax], 0x1e
.label_177:
	jmp	.label_184
.label_184:
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0xf0]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x20], rdi
	call	__errno_location
	mov	esi, dword ptr [rax]
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	call	ignorable_missing
	test	al, 1
	mov	rbp, rbp
	jne	.label_176
	lea	rsi, [rsi]
	jmp	.label_178
.label_176:
	mov	rbp, rbp
	mov	dword ptr [rbp - 0xc0], 2
	jmp	.label_180
.label_178:
	mov	rax, qword ptr [rbp - 0xe8]
	movzx	ecx, word ptr [rax + 0x70]
	cmp	ecx, 4
	mov	rbp, rbp
	jne	.label_179
	lea	rsi, [rsi]
	call	__errno_location
	mov	rsp, rsp
	cmp	dword ptr [rax], 0x27
	nop	
	je	.label_182
	call	__errno_location
	lea	rsi, [rsi]
	cmp	dword ptr [rax], 0x15
	je	.label_182
	call	__errno_location
	cmp	dword ptr [rax], 0x14
	je	.label_182
	call	__errno_location
	cmp	dword ptr [rax], 0x11
	jne	.label_179
.label_182:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0xe8]
	cmp	dword ptr [rax + 0x40], 1
	je	.label_175
	mov	rax, qword ptr [rbp - 0xe8]
	cmp	dword ptr [rax + 0x40], 0xd
	jne	.label_179
.label_175:
	mov	rax, qword ptr [rbp - 0xe8]
	mov	rbp, rbp
	mov	ecx, dword ptr [rax + 0x40]
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x14], ecx
	lea	rsi, [rsi]
	call	__errno_location
	mov	ecx, dword ptr [rbp - 0x14]
	lea	rsi, [rsi]
	mov	dword ptr [rax], ecx
.label_179:
	call	__errno_location
	movabs	rdi, OFFSET FLAT:.str.24_0
	mov	esi, dword ptr [rax]
	mov	rbp, rbp
	mov	dword ptr [rbp - 0xbc], esi
	call	gettext
	mov	edi, 4
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0xe8]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rcx + 0x38]
	mov	qword ptr [rbp - 0xd0], rax
	mov	rsp, rsp
	call	quotearg_style
	xor	edi, edi
	nop	
	mov	esi, dword ptr [rbp - 0xbc]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0xd0]
	mov	rcx, rax
	mov	rsp, rsp
	mov	al, 0
	nop	
	call	error
	mov	rdi, qword ptr [rbp - 0xe8]
	call	mark_ancestor_dirs
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0xc0], 4
.label_180:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0xc0]
	add	rsp, 0xf0
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4057e0

	.globl readdir_ignoring_dot_and_dotdot
	.type readdir_ignoring_dot_and_dotdot, @function
readdir_ignoring_dot_and_dotdot:
	push	rbp
	mov	rsp, rsp
	mov	rbp, rsp
	mov	rsp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 8], rdi
.label_189:
	mov	rdi, qword ptr [rbp - 8]
	call	readdir
	mov	qword ptr [rbp - 0x10], rax
	cmp	qword ptr [rbp - 0x10], 0
	mov	rbp, rbp
	je	.label_190
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	add	rax, 0x13
	nop	
	mov	rdi, rax
	lea	rsi, [rsi]
	call	dot_or_dotdot
	nop	
	test	al, 1
	jne	.label_188
.label_190:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	add	rsp, 0x10
	lea	rdi, [rdi]
	pop	rbp
	ret	
.label_188:
	lea	rdi, [rdi]
	jmp	.label_189
	.section	.text
	.align	32
	#Procedure 0x405850

	.globl cache_stat_init
	.type cache_stat_init, @function
cache_stat_init:
	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	qword ptr [rdi + 0x30], -1
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 8]
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x405880

	.globl write_protected_non_symlink
	.type write_protected_non_symlink, @function
write_protected_non_symlink:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	dword ptr [rbp - 0x1c], edi
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	call	can_write_any_file
	mov	rbp, rbp
	test	al, 1
	mov	rsp, rsp
	jne	.label_196
	jmp	.label_192
.label_196:
	mov	dword ptr [rbp - 4], 0
	jmp	.label_191
.label_192:
	nop	
	mov	ecx, 0x100
	mov	rbp, rbp
	mov	edi, dword ptr [rbp - 0x1c]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x18]
	call	cache_fstatat
	cmp	eax, 0
	nop	
	je	.label_195
	mov	rsp, rsp
	mov	dword ptr [rbp - 4], 0xffffffff
	lea	rdi, [rdi]
	jmp	.label_191
.label_195:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	mov	ecx, dword ptr [rax + 0x18]
	and	ecx, 0xf000
	cmp	ecx, 0xa000
	jne	.label_193
	mov	dword ptr [rbp - 4], 0
	mov	rbp, rbp
	jmp	.label_191
.label_193:
	mov	edx, 2
	mov	rsp, rsp
	mov	ecx, 0x200
	nop	
	mov	edi, dword ptr [rbp - 0x1c]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x10]
	call	faccessat
	cmp	eax, 0
	nop	
	jne	.label_194
	mov	rbp, rbp
	mov	dword ptr [rbp - 4], 0
	jmp	.label_191
.label_194:
	lea	rdi, [rdi]
	call	__errno_location
	lea	rsi, [rsi]
	mov	ecx, 0xffffffff
	mov	rsp, rsp
	mov	edx, 1
	cmp	dword ptr [rax], 0xd
	mov	rsp, rsp
	cmove	ecx, edx
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 4], ecx
.label_191:
	mov	eax, dword ptr [rbp - 4]
	mov	rsp, rsp
	add	rsp, 0x20
	mov	rsp, rsp
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x405990

	.globl cache_fstatat
	.type cache_fstatat, @function
cache_fstatat:
	lea	rdi, [rdi]
	push	rbp
	mov	rsp, rsp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	rsp, rsp
	mov	dword ptr [rbp - 4], edi
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], rdx
	nop	
	mov	dword ptr [rbp - 0xc], ecx
	mov	rdx, qword ptr [rbp - 0x20]
	nop	
	cmp	qword ptr [rdx + 0x30], -1
	lea	rsi, [rsi]
	jne	.label_197
	mov	edi, dword ptr [rbp - 4]
	nop	
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 0x20]
	mov	ecx, dword ptr [rbp - 0xc]
	call	fstatat
	mov	rsp, rsp
	cmp	eax, 0
	je	.label_197
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rax + 0x30], -2
	mov	rbp, rbp
	call	__errno_location
	movsxd	rax, dword ptr [rax]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x20]
	mov	qword ptr [rcx + 8], rax
.label_197:
	mov	rbp, rbp
	xor	eax, eax
	lea	rdi, [rdi]
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	cmp	rcx, qword ptr [rdx + 0x30]
	jg	.label_199
	nop	
	mov	dword ptr [rbp - 0x10], 0
	mov	rbp, rbp
	jmp	.label_198
.label_199:
	mov	rax, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax + 8]
	mov	ecx, eax
	mov	rbp, rbp
	mov	dword ptr [rbp - 8], ecx
	call	__errno_location
	mov	rsp, rsp
	mov	ecx, dword ptr [rbp - 8]
	mov	dword ptr [rax], ecx
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x10], 0xffffffff
.label_198:
	mov	eax, dword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	add	rsp, 0x20
	lea	rsi, [rsi]
	pop	rbp
	nop	
	ret	
	.section	.text
	.align	32
	#Procedure 0x405a70

	.globl ignorable_missing
	.type ignorable_missing, @function
ignorable_missing:
	mov	rbp, rbp
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	rbp, rbp
	xor	eax, eax
	mov	cl, al
	mov	qword ptr [rbp - 0x10], rdi
	mov	dword ptr [rbp - 4], esi
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	test	byte ptr [rdi], 1
	nop	
	mov	byte ptr [rbp - 0x11], cl
	lea	rdi, [rdi]
	je	.label_200
	mov	edi, dword ptr [rbp - 4]
	mov	rbp, rbp
	call	nonexistent_file_errno
	mov	byte ptr [rbp - 0x11], al
.label_200:
	lea	rdi, [rdi]
	mov	al, byte ptr [rbp - 0x11]
	mov	rsp, rsp
	and	al, 1
	movzx	eax, al
	lea	rsi, [rsi]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x405ad0

	.globl nonexistent_file_errno
	.type nonexistent_file_errno, @function
nonexistent_file_errno:
	mov	rsp, rsp
	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 0x14], edi
	lea	rsi, [rsi]
	mov	eax, edi
	sub	edi, 2
	mov	dword ptr [rbp - 4], eax
	mov	dword ptr [rbp - 0x1c], edi
	mov	rbp, rbp
	je	.label_201
	lea	rsi, [rsi]
	jmp	.label_202
.label_202:
	mov	eax, dword ptr [rbp - 4]
	nop	
	sub	eax, 0x14
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 8], eax
	lea	rsi, [rsi]
	je	.label_201
	jmp	.label_206
.label_206:
	mov	eax, dword ptr [rbp - 4]
	sub	eax, 0x16
	mov	dword ptr [rbp - 0x18], eax
	je	.label_201
	mov	rsp, rsp
	jmp	.label_204
.label_204:
	mov	eax, dword ptr [rbp - 4]
	sub	eax, 0x54
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x10], eax
	jne	.label_205
	jmp	.label_201
.label_201:
	mov	byte ptr [rbp - 9], 1
	jmp	.label_203
.label_205:
	mov	byte ptr [rbp - 9], 0
.label_203:
	mov	al, byte ptr [rbp - 9]
	mov	rbp, rbp
	and	al, 1
	mov	rbp, rbp
	movzx	eax, al
	nop	
	pop	rbp
	nop	
	ret	
	.section	.text
	.align	32
	#Procedure 0x405b70

	.globl set_process_security_ctx
	.type set_process_security_ctx, @function
set_process_security_ctx:
	nop	
	push	rbp
	mov	rbp, rbp
	mov	rbp, rsp
	mov	rsp, rsp
	sub	rsp, 0x60
	nop	
	mov	al, cl
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x28], rdi
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x18], rsi
	mov	dword ptr [rbp - 0x5c], edx
	and	al, 1
	mov	byte ptr [rbp - 0xd], al
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x50], r8
	mov	rsi, qword ptr [rbp - 0x50]
	test	byte ptr [rsi + 0x25], 1
	lea	rsi, [rsi]
	je	.label_222
	lea	rsi, [rsi]
	mov	al, 1
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x50]
	test	byte ptr [rcx + 0x23], 1
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x41], al
	je	.label_213
	mov	rax, qword ptr [rbp - 0x50]
	mov	cl, byte ptr [rax + 0x26]
	mov	byte ptr [rbp - 0x41], cl
.label_213:
	mov	rsp, rsp
	mov	al, byte ptr [rbp - 0x41]
	xor	ecx, ecx
	mov	dl, cl
	and	al, 1
	mov	byte ptr [rbp - 0x2a], al
	mov	rbp, rbp
	test	byte ptr [rbp - 0x2a], 1
	mov	byte ptr [rbp - 0x29], dl
	jne	.label_219
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x50]
	lea	rdi, [rdi]
	mov	cl, byte ptr [rax + 0x29]
	xor	cl, 0xff
	nop	
	mov	byte ptr [rbp - 0x29], cl
.label_219:
	mov	al, byte ptr [rbp - 0x29]
	lea	rsi, [rbp - 0x40]
	mov	rbp, rbp
	and	al, 1
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x31], al
	mov	rdi, qword ptr [rbp - 0x28]
	call	lgetfilecon
	lea	rdi, [rdi]
	xor	ecx, ecx
	cmp	ecx, eax
	lea	rsi, [rsi]
	jg	.label_211
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x40]
	call	setfscreatecon
	nop	
	cmp	eax, 0
	mov	rsp, rsp
	jge	.label_215
	lea	rsi, [rsi]
	test	byte ptr [rbp - 0x2a], 1
	nop	
	jne	.label_218
	lea	rsi, [rsi]
	test	byte ptr [rbp - 0x31], 1
	mov	rbp, rbp
	je	.label_220
	call	__errno_location
	mov	rbp, rbp
	mov	edi, dword ptr [rax]
	call	errno_unsupported
	lea	rsi, [rsi]
	test	al, 1
	mov	rsp, rsp
	jne	.label_220
.label_218:
	call	__errno_location
	lea	rsi, [rsi]
	movabs	rdi, OFFSET FLAT:.str_4
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0x30], esi
	lea	rdi, [rdi]
	call	gettext
	mov	rdi, qword ptr [rbp - 0x40]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x58], rax
	call	quote
	xor	edi, edi
	mov	rbp, rbp
	mov	esi, dword ptr [rbp - 0x30]
	mov	rdx, qword ptr [rbp - 0x58]
	mov	rsp, rsp
	mov	rcx, rax
	lea	rdi, [rdi]
	mov	al, 0
	lea	rsi, [rsi]
	call	error
.label_220:
	mov	rax, qword ptr [rbp - 0x50]
	lea	rdi, [rdi]
	test	byte ptr [rax + 0x26], 1
	mov	rsp, rsp
	je	.label_207
	mov	rdi, qword ptr [rbp - 0x40]
	nop	
	call	freecon
	mov	byte ptr [rbp - 0xe], 0
	jmp	.label_214
.label_207:
	jmp	.label_215
.label_215:
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x40]
	mov	rbp, rbp
	call	freecon
	jmp	.label_208
.label_211:
	nop	
	test	byte ptr [rbp - 0x2a], 1
	lea	rdi, [rdi]
	jne	.label_209
	lea	rdi, [rdi]
	test	byte ptr [rbp - 0x31], 1
	nop	
	je	.label_216
	mov	rbp, rbp
	call	__errno_location
	nop	
	mov	edi, dword ptr [rax]
	mov	rsp, rsp
	call	errno_unsupported
	test	al, 1
	lea	rdi, [rdi]
	jne	.label_216
.label_209:
	lea	rsi, [rsi]
	call	__errno_location
	lea	rdi, [rdi]
	movabs	rdi, OFFSET FLAT:.str.1_1
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0xc], esi
	mov	rsp, rsp
	call	gettext
	mov	edi, 4
	mov	rsi, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	mov	qword ptr [rbp - 8], rax
	lea	rdi, [rdi]
	call	quotearg_style
	mov	rbp, rbp
	xor	edi, edi
	nop	
	mov	esi, dword ptr [rbp - 0xc]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 8]
	mov	rcx, rax
	lea	rdi, [rdi]
	mov	al, 0
	call	error
.label_216:
	mov	rax, qword ptr [rbp - 0x50]
	nop	
	test	byte ptr [rax + 0x26], 1
	lea	rdi, [rdi]
	je	.label_212
	nop	
	mov	byte ptr [rbp - 0xe], 0
	mov	rbp, rbp
	jmp	.label_214
.label_212:
	jmp	.label_208
.label_208:
	jmp	.label_217
.label_222:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x50]
	test	byte ptr [rax + 0x21], 1
	mov	rbp, rbp
	je	.label_221
	nop	
	test	byte ptr [rbp - 0xd], 1
	nop	
	je	.label_210
	mov	rdi, qword ptr [rbp - 0x18]
	mov	esi, dword ptr [rbp - 0x5c]
	call	defaultcon
	lea	rsi, [rsi]
	cmp	eax, 0
	jge	.label_210
	call	__errno_location
	lea	rsi, [rsi]
	mov	edi, dword ptr [rax]
	mov	rbp, rbp
	call	ignorable_ctx_err
	nop	
	test	al, 1
	nop	
	jne	.label_210
	lea	rdi, [rdi]
	call	__errno_location
	movabs	rdi, OFFSET FLAT:.str.2_2
	lea	rdi, [rdi]
	mov	esi, dword ptr [rax]
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x60], esi
	call	gettext
	nop	
	mov	edi, 4
	mov	rsi, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x20], rax
	call	quotearg_style
	mov	rsp, rsp
	xor	edi, edi
	mov	esi, dword ptr [rbp - 0x60]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rcx, rax
	lea	rdi, [rdi]
	mov	al, 0
	call	error
.label_210:
	jmp	.label_221
.label_221:
	nop	
	jmp	.label_217
.label_217:
	mov	byte ptr [rbp - 0xe], 1
.label_214:
	lea	rsi, [rsi]
	mov	al, byte ptr [rbp - 0xe]
	lea	rdi, [rdi]
	and	al, 1
	movzx	eax, al
	mov	rsp, rsp
	add	rsp, 0x60
	mov	rbp, rbp
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x405eb0

	.globl errno_unsupported
	.type errno_unsupported, @function
errno_unsupported:
	push	rbp
	mov	rbp, rsp
	nop	
	mov	al, 1
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 8], edi
	lea	rsi, [rsi]
	cmp	dword ptr [rbp - 8], 0x5f
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 1], al
	je	.label_223
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 8], 0x3d
	sete	al
	mov	rsp, rsp
	mov	byte ptr [rbp - 1], al
.label_223:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	mov	rsp, rsp
	ret	
	.section	.text
	.align	32
	#Procedure 0x405ef0

	.globl defaultcon
	.type defaultcon, @function
defaultcon:
	lea	rdi, [rdi]
	push	rbp
	nop	
	mov	rbp, rsp
	lea	rdi, [rdi]
	sub	rsp, 0x10
	mov	qword ptr [rbp - 0x10], rdi
	mov	rbp, rbp
	mov	dword ptr [rbp - 4], esi
	mov	rbp, rbp
	call	__errno_location
	mov	esi, 0xffffffff
	mov	rsp, rsp
	mov	dword ptr [rax], 0x5f
	mov	eax, esi
	lea	rsi, [rsi]
	add	rsp, 0x10
	mov	rsp, rsp
	pop	rbp
	mov	rbp, rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x405f30

	.globl ignorable_ctx_err
	.type ignorable_ctx_err, @function
ignorable_ctx_err:
	push	rbp
	lea	rsi, [rsi]
	mov	rbp, rsp
	mov	al, 1
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 4], edi
	lea	rsi, [rsi]
	cmp	dword ptr [rbp - 4], 0x5f
	mov	byte ptr [rbp - 5], al
	je	.label_224
	cmp	dword ptr [rbp - 4], 0x3d
	sete	al
	mov	byte ptr [rbp - 5], al
.label_224:
	mov	al, byte ptr [rbp - 5]
	nop	
	and	al, 1
	movzx	eax, al
	pop	rbp
	nop	
	ret	
	.section	.text
	.align	32
	#Procedure 0x405f70

	.globl set_file_security_ctx
	.type set_file_security_ctx, @function
set_file_security_ctx:
	mov	rsp, rsp
	push	rbp
	mov	rbp, rsp
	lea	rdi, [rdi]
	sub	rsp, 0x40
	mov	al, dl
	mov	r8b, sil
	lea	rsi, [rsi]
	mov	r9b, 1
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x30], rdi
	mov	rsp, rsp
	and	r8b, 1
	mov	byte ptr [rbp - 0x33], r8b
	lea	rdi, [rdi]
	and	al, 1
	mov	byte ptr [rbp - 0x12], al
	mov	qword ptr [rbp - 0x20], rcx
	mov	rcx, qword ptr [rbp - 0x20]
	nop	
	test	byte ptr [rcx + 0x23], 1
	mov	byte ptr [rbp - 0x32], r9b
	mov	rbp, rbp
	je	.label_227
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	mov	cl, byte ptr [rax + 0x26]
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x32], cl
.label_227:
	lea	rdi, [rdi]
	mov	al, byte ptr [rbp - 0x32]
	xor	ecx, ecx
	mov	rsp, rsp
	mov	dl, cl
	and	al, 1
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x11], al
	lea	rdi, [rdi]
	test	byte ptr [rbp - 0x11], 1
	mov	byte ptr [rbp - 0x21], dl
	mov	rsp, rsp
	jne	.label_225
	mov	rax, qword ptr [rbp - 0x20]
	mov	cl, byte ptr [rax + 0x29]
	xor	cl, 0xff
	mov	byte ptr [rbp - 0x21], cl
.label_225:
	mov	al, byte ptr [rbp - 0x21]
	and	al, 1
	mov	byte ptr [rbp - 0x22], al
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x30]
	lea	rdi, [rdi]
	mov	al, byte ptr [rbp - 0x12]
	mov	cl, byte ptr [rbp - 0x33]
	nop	
	and	al, 1
	mov	rsp, rsp
	and	cl, 1
	movzx	esi, al
	lea	rsi, [rsi]
	movzx	edx, cl
	lea	rdi, [rdi]
	call	restorecon
	test	al, 1
	jne	.label_228
	test	byte ptr [rbp - 0x11], 1
	jne	.label_230
	test	byte ptr [rbp - 0x22], 1
	lea	rsi, [rsi]
	je	.label_226
	call	__errno_location
	mov	edi, dword ptr [rax]
	call	errno_unsupported
	mov	rbp, rbp
	test	al, 1
	mov	rbp, rbp
	jne	.label_226
.label_230:
	call	__errno_location
	movabs	rdi, OFFSET FLAT:.str.3_1
	mov	rbp, rbp
	mov	esi, dword ptr [rax]
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 4], esi
	nop	
	call	gettext
	mov	rbp, rbp
	xor	edi, edi
	mov	esi, 4
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x30]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x10], rax
	call	quotearg_n_style
	lea	rsi, [rsi]
	xor	edi, edi
	mov	rsp, rsp
	mov	esi, dword ptr [rbp - 4]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rcx, rax
	lea	rdi, [rdi]
	mov	al, 0
	call	error
.label_226:
	mov	byte ptr [rbp - 0x31], 0
	jmp	.label_229
.label_228:
	nop	
	mov	byte ptr [rbp - 0x31], 1
.label_229:
	mov	al, byte ptr [rbp - 0x31]
	mov	rbp, rbp
	and	al, 1
	movzx	eax, al
	mov	rbp, rbp
	add	rsp, 0x40
	mov	rsp, rsp
	pop	rbp
	lea	rdi, [rdi]
	ret	
	.section	.text
	.align	32
	#Procedure 0x406100

	.globl restorecon
	.type restorecon, @function
restorecon:
	push	rbp
	lea	rdi, [rdi]
	mov	rbp, rsp
	lea	rdi, [rdi]
	sub	rsp, 0x20
	mov	al, dl
	mov	rbp, rbp
	mov	cl, sil
	mov	qword ptr [rbp - 0x10], rdi
	lea	rsi, [rsi]
	and	cl, 1
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x11], cl
	mov	rsp, rsp
	and	al, 1
	mov	byte ptr [rbp - 1], al
	lea	rsi, [rsi]
	call	__errno_location
	xor	edx, edx
	mov	rbp, rbp
	mov	cl, dl
	mov	dword ptr [rax], 0x5f
	lea	rdi, [rdi]
	and	cl, 1
	movzx	eax, cl
	add	rsp, 0x20
	mov	rsp, rsp
	pop	rbp
	lea	rdi, [rdi]
	ret	
	.section	.text
	.align	32
	#Procedure 0x406160

	.globl dest_info_init
	.type dest_info_init, @function
dest_info_init:
	lea	rsi, [rsi]
	push	rbp
	mov	rbp, rsp
	lea	rsi, [rsi]
	sub	rsp, 0x10
	mov	rbp, rbp
	mov	eax, 0x3d
	mov	rbp, rbp
	mov	ecx, eax
	mov	rbp, rbp
	xor	eax, eax
	mov	rsp, rsp
	mov	esi, eax
	movabs	rdx, OFFSET FLAT:triple_hash
	nop	
	movabs	r8, OFFSET FLAT:triple_compare
	movabs	r9, OFFSET FLAT:triple_free
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, rcx
	mov	rcx, r8
	mov	rbp, rbp
	mov	r8, r9
	lea	rdi, [rdi]
	call	hash_initialize
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 8]
	mov	qword ptr [rcx + 0x40], rax
	nop	
	add	rsp, 0x10
	mov	rbp, rbp
	pop	rbp
	mov	rsp, rsp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4061e0
	.globl src_info_init
	.type src_info_init, @function
src_info_init:

	nop
	push	rbp
	nop	
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	eax, 0x3d
	nop	
	mov	ecx, eax
	mov	rsp, rsp
	xor	eax, eax
	mov	esi, eax
	mov	rsp, rsp
	movabs	rdx, OFFSET FLAT:triple_hash_no_name
	movabs	r8, OFFSET FLAT:triple_compare
	movabs	r9, OFFSET FLAT:triple_free
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, rcx
	mov	rcx, r8
	mov	r8, r9
	nop	
	call	hash_initialize
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 8]
	mov	qword ptr [rcx + 0x48], rax
	add	rsp, 0x10
	pop	rbp
	nop	
	ret	
	.section	.text
	.align	32
	#Procedure 0x406240

	.globl copy
	.type copy, @function
copy:
	lea	rdi, [rdi]
	push	rbp
	nop	
	mov	rbp, rsp
	nop	
	push	r14
	push	rbx
	sub	rsp, 0x70
	lea	rdi, [rdi]
	mov	al, dl
	nop	
	mov	qword ptr [rbp - 0x30], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	rsp, rsp
	and	al, 1
	mov	byte ptr [rbp - 0x31], al
	mov	qword ptr [rbp - 0x58], rcx
	nop	
	mov	qword ptr [rbp - 0x48], r8
	mov	qword ptr [rbp - 0x28], r9
	mov	rdi, qword ptr [rbp - 0x58]
	call	valid_options
	test	al, 1
	lea	rdi, [rdi]
	jne	.label_232
	jmp	.label_231
.label_232:
	jmp	.label_233
.label_231:
	movabs	rdi, OFFSET FLAT:.str.4_0
	movabs	rsi, OFFSET FLAT:.str.5_1
	mov	edx, 0xb9f
	nop	
	movabs	rcx, OFFSET FLAT:__PRETTY_FUNCTION__.copy
	call	__assert_fail
.label_233:
	xor	eax, eax
	mov	rbp, rbp
	mov	ecx, eax
	mov	eax, 1
	lea	rdi, [rdi]
	lea	rdx, [rbp - 0x49]
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x30]
	lea	rsi, [rsi]
	mov	qword ptr [word ptr [top_level_src_name]],  rsi
	mov	rsi, qword ptr [rbp - 0x18]
	mov	qword ptr [word ptr [top_level_dst_name]],  rsi
	mov	byte ptr [rbp - 0x49], 0
	mov	rdi, qword ptr [rbp - 0x30]
	nop	
	mov	rsi, qword ptr [rbp - 0x18]
	mov	r8b, byte ptr [rbp - 0x31]
	lea	rsi, [rsi]
	mov	r9, qword ptr [rbp - 0x58]
	mov	r10, qword ptr [rbp - 0x48]
	mov	rsp, rsp
	mov	r11, qword ptr [rbp - 0x28]
	and	r8b, 1
	movzx	ebx, r8b
	mov	qword ptr [rbp - 0x40], rdx
	mov	edx, ebx
	mov	qword ptr [rbp - 0x20], rcx
	lea	rdi, [rdi]
	mov	r8, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	mov	dword ptr [rsp], 1
	mov	r14, qword ptr [rbp - 0x40]
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 8], r14
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x10], r10
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x18], r11
	mov	dword ptr [rbp - 0x38], eax
	lea	rdi, [rdi]
	call	copy_internal
	and	al, 1
	movzx	eax, al
	add	rsp, 0x70
	pop	rbx
	pop	r14
	lea	rsi, [rsi]
	pop	rbp
	mov	rsp, rsp
	ret	
	.section	.text
	.align	32
	#Procedure 0x406370

	.globl valid_options
	.type valid_options, @function
valid_options:
	lea	rdi, [rdi]
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 8], rdi
	cmp	qword ptr [rbp - 8], 0
	lea	rsi, [rsi]
	je	.label_246
	lea	rdi, [rdi]
	jmp	.label_239
.label_246:
	movabs	rdi, OFFSET FLAT:.str.6_0
	movabs	rsi, OFFSET FLAT:.str.5_1
	mov	edx, 0xb86
	movabs	rcx, OFFSET FLAT:__PRETTY_FUNCTION__.valid_options
	call	__assert_fail
.label_239:
	mov	rax, qword ptr [rbp - 8]
	cmp	dword ptr [rax], 3
	ja	.label_245
	nop	
	jmp	.label_238
.label_245:
	lea	rdi, [rdi]
	movabs	rdi, OFFSET FLAT:.str.7_0
	nop	
	movabs	rsi, OFFSET FLAT:.str.5_1
	mov	rsp, rsp
	mov	edx, 0xb87
	nop	
	movabs	rcx, OFFSET FLAT:__PRETTY_FUNCTION__.valid_options
	call	__assert_fail
.label_238:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 8]
	cmp	dword ptr [rax + 0xc], 1
	mov	rbp, rbp
	je	.label_234
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 8]
	mov	rbp, rbp
	cmp	dword ptr [rax + 0xc], 2
	mov	rbp, rbp
	je	.label_234
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 8]
	cmp	dword ptr [rax + 0xc], 3
	jne	.label_235
.label_234:
	jmp	.label_248
.label_235:
	movabs	rdi, OFFSET FLAT:.str.8_0
	lea	rdi, [rdi]
	movabs	rsi, OFFSET FLAT:.str.5_1
	nop	
	mov	edx, 0xb88
	lea	rsi, [rsi]
	movabs	rcx, OFFSET FLAT:__PRETTY_FUNCTION__.valid_options
	mov	rsp, rsp
	call	__assert_fail
.label_248:
	mov	rax, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	cmp	dword ptr [rax + 0x38], 0
	je	.label_236
	mov	rax, qword ptr [rbp - 8]
	nop	
	cmp	dword ptr [rax + 0x38], 1
	je	.label_236
	nop	
	mov	rax, qword ptr [rbp - 8]
	cmp	dword ptr [rax + 0x38], 2
	mov	rsp, rsp
	jne	.label_240
.label_236:
	jmp	.label_243
.label_240:
	movabs	rdi, OFFSET FLAT:.str.9_0
	lea	rdi, [rdi]
	movabs	rsi, OFFSET FLAT:.str.5_1
	mov	edx, 0xb89
	mov	rsp, rsp
	movabs	rcx, OFFSET FLAT:__PRETTY_FUNCTION__.valid_options
	nop	
	call	__assert_fail
.label_243:
	mov	rax, qword ptr [rbp - 8]
	nop	
	test	byte ptr [rax + 0x17], 1
	lea	rdi, [rdi]
	je	.label_241
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 8]
	test	byte ptr [rax + 0x2c], 1
	nop	
	jne	.label_244
.label_241:
	lea	rsi, [rsi]
	jmp	.label_249
.label_244:
	movabs	rdi, OFFSET FLAT:.str.10_1
	lea	rdi, [rdi]
	movabs	rsi, OFFSET FLAT:.str.5_1
	mov	rbp, rbp
	mov	edx, 0xb8a
	nop	
	movabs	rcx, OFFSET FLAT:__PRETTY_FUNCTION__.valid_options
	nop	
	call	__assert_fail
.label_249:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 8]
	cmp	dword ptr [rax + 0x38], 2
	nop	
	jne	.label_247
	mov	rax, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	cmp	dword ptr [rax + 0xc], 2
	mov	rsp, rsp
	jne	.label_237
.label_247:
	jmp	.label_242
.label_237:
	mov	rsp, rsp
	movabs	rdi, OFFSET FLAT:.str.11_1
	movabs	rsi, OFFSET FLAT:.str.5_1
	mov	edx, 0xb8d
	movabs	rcx, OFFSET FLAT:__PRETTY_FUNCTION__.valid_options
	call	__assert_fail
.label_242:
	mov	al, 1
	nop	
	and	al, 1
	movzx	eax, al
	lea	rdi, [rdi]
	add	rsp, 0x10
	lea	rsi, [rsi]
	pop	rbp
	lea	rdi, [rdi]
	ret	
	.section	.text
	.align	32
	#Procedure 0x4065b0

	.globl copy_internal
	.type copy_internal, @function
copy_internal:
	mov	rbp, rbp
	push	rbp
	mov	rbp, rsp
	lea	rdi, [rdi]
	push	r14
	push	rbx
	sub	rsp, 0x7b0
	mov	al, dl
	lea	rdi, [rdi]
	mov	r10, qword ptr [rbp + 0x28]
	mov	r11, qword ptr [rbp + 0x20]
	mov	rbp, rbp
	mov	rbx, qword ptr [rbp + 0x18]
	mov	r14b, byte ptr [rbp + 0x10]
	mov	qword ptr [rbp - 0x6b8], rdi
	mov	qword ptr [rbp - 0x218], rsi
	nop	
	and	al, 1
	mov	byte ptr [rbp - 0x4c9], al
	nop	
	mov	qword ptr [rbp - 0x648], rcx
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x258], r8
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x688], r9
	and	r14b, 1
	mov	byte ptr [rbp - 0x11a], r14b
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0xd8], rbx
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x268], r11
	mov	qword ptr [rbp - 0x6c8], r10
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x62d], 0
	mov	qword ptr [rbp - 0x1d0], 0
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x250], 0
	mov	byte ptr [rbp - 0x19], 0
	mov	byte ptr [rbp - 0x221], 0
	mov	byte ptr [rbp - 0x66a], 0
	mov	rcx, qword ptr [rbp - 0x268]
	nop	
	mov	byte ptr [rcx], 0
	nop	
	mov	rcx, qword ptr [rbp - 0x688]
	lea	rdi, [rdi]
	mov	edx, dword ptr [rcx + 0x34]
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x5bc], edx
	mov	rcx, qword ptr [rbp - 0x688]
	test	byte ptr [rcx + 0x18], 1
	je	.label_424
	nop	
	cmp	dword ptr [rbp - 0x5bc], 0
	nop	
	jge	.label_471
	mov	rbp, rbp
	mov	eax, 0xffffff9c
	mov	rsp, rsp
	mov	r8d, 1
	nop	
	mov	rsi, qword ptr [rbp - 0x6b8]
	mov	rcx, qword ptr [rbp - 0x218]
	mov	rsp, rsp
	mov	edi, eax
	lea	rsi, [rsi]
	mov	edx, eax
	lea	rsi, [rsi]
	call	renameatu
	lea	rsi, [rsi]
	cmp	eax, 0
	je	.label_452
	mov	rsp, rsp
	call	__errno_location
	mov	rsp, rsp
	mov	ecx, dword ptr [rax]
	nop	
	mov	dword ptr [rbp - 0x634], ecx
	jmp	.label_453
.label_452:
	mov	rbp, rbp
	xor	eax, eax
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x634], eax
	jmp	.label_453
.label_453:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x634]
	mov	dword ptr [rbp - 0x5bc], eax
.label_471:
	cmp	dword ptr [rbp - 0x5bc], 0
	sete	al
	and	al, 1
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x4c9], al
	cmp	qword ptr [rbp - 0x6c8], 0
	je	.label_459
	mov	al, byte ptr [rbp - 0x4c9]
	mov	rcx, qword ptr [rbp - 0x6c8]
	and	al, 1
	mov	byte ptr [rcx], al
.label_459:
	jmp	.label_424
.label_424:
	lea	rsi, [rsi]
	cmp	dword ptr [rbp - 0x5bc], 0
	jne	.label_461
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x688]
	mov	rbp, rbp
	test	byte ptr [rax + 0x31], 1
	mov	rsp, rsp
	jne	.label_315
	nop	
	jmp	.label_410
.label_461:
	cmp	dword ptr [rbp - 0x5bc], 0x11
	jne	.label_410
	mov	rax, qword ptr [rbp - 0x688]
	mov	rbp, rbp
	cmp	dword ptr [rax + 8], 2
	lea	rsi, [rsi]
	je	.label_315
.label_410:
	mov	rbp, rbp
	cmp	dword ptr [rbp - 0x5bc], 0
	nop	
	jne	.label_472
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x218]
	mov	qword ptr [rbp - 0x1f8], rax
	jmp	.label_441
.label_472:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x6b8]
	nop	
	mov	qword ptr [rbp - 0x1f8], rax
.label_441:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x1f8]
	nop	
	mov	qword ptr [rbp - 0x208], rax
	mov	rax, qword ptr [rbp - 0x688]
	nop	
	cmp	dword ptr [rax + 4], 2
	jne	.label_478
	lea	rsi, [rbp - 0x3c0]
	mov	rdi, qword ptr [rbp - 0x208]
	call	__lstat
	mov	dword ptr [rbp - 0x6bc], eax
	jmp	.label_253
.label_478:
	lea	rsi, [rbp - 0x3c0]
	nop	
	mov	rdi, qword ptr [rbp - 0x208]
	mov	rbp, rbp
	call	stat
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x6bc], eax
.label_253:
	mov	eax, dword ptr [rbp - 0x6bc]
	cmp	eax, 0
	je	.label_260
	lea	rdi, [rdi]
	call	__errno_location
	lea	rdi, [rdi]
	movabs	rdi, OFFSET FLAT:.str.12_1
	lea	rsi, [rsi]
	mov	esi, dword ptr [rax]
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x5f4], esi
	call	gettext
	mov	rsp, rsp
	mov	edi, 4
	mov	rsi, qword ptr [rbp - 0x208]
	mov	qword ptr [rbp - 0x5f0], rax
	lea	rsi, [rsi]
	call	quotearg_style
	mov	rbp, rbp
	xor	edi, edi
	lea	rsi, [rsi]
	mov	esi, dword ptr [rbp - 0x5f4]
	mov	rdx, qword ptr [rbp - 0x5f0]
	lea	rdi, [rdi]
	mov	rcx, rax
	mov	al, 0
	call	error
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x625], 0
	lea	rsi, [rsi]
	jmp	.label_252
.label_260:
	mov	eax, dword ptr [rbp - 0x3a8]
	nop	
	mov	dword ptr [rbp - 0xfc], eax
	mov	eax, dword ptr [rbp - 0xfc]
	and	eax, 0xf000
	cmp	eax, 0x4000
	jne	.label_281
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x688]
	mov	rsp, rsp
	test	byte ptr [rax + 0x2a], 1
	jne	.label_281
	mov	rax, qword ptr [rbp - 0x688]
	test	byte ptr [rax + 0x19], 1
	nop	
	jne	.label_289
	lea	rsi, [rsi]
	movabs	rdi, OFFSET FLAT:.str.13_1
	call	gettext
	mov	qword ptr [rbp - 0x4e0], rax
	nop	
	jmp	.label_295
.label_289:
	lea	rsi, [rsi]
	movabs	rdi, OFFSET FLAT:.str.14_1
	mov	rbp, rbp
	call	gettext
	mov	qword ptr [rbp - 0x4e0], rax
.label_295:
	mov	rax, qword ptr [rbp - 0x4e0]
	mov	rsp, rsp
	mov	edi, 4
	mov	rsi, qword ptr [rbp - 0x6b8]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x598], rax
	call	quotearg_style
	xor	edi, edi
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x55c], edi
	lea	rsi, [rsi]
	mov	esi, dword ptr [rbp - 0x55c]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x598]
	mov	rcx, rax
	mov	rbp, rbp
	mov	al, 0
	call	error
	nop	
	mov	byte ptr [rbp - 0x625], 0
	jmp	.label_252
.label_281:
	jmp	.label_315
.label_315:
	test	byte ptr [rbp - 0x11a], 1
	je	.label_317
	nop	
	mov	rax, qword ptr [rbp - 0x688]
	cmp	qword ptr [rax + 0x48], 0
	je	.label_317
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0xfc]
	nop	
	and	eax, 0xf000
	cmp	eax, 0x4000
	je	.label_320
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x688]
	lea	rsi, [rsi]
	cmp	dword ptr [rax], 0
	jne	.label_320
	lea	rdx, [rbp - 0x3c0]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x688]
	mov	rdi, qword ptr [rax + 0x48]
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x6b8]
	lea	rdi, [rdi]
	call	seen_file
	mov	rbp, rbp
	test	al, 1
	mov	rbp, rbp
	jne	.label_332
	lea	rsi, [rsi]
	jmp	.label_320
.label_332:
	movabs	rdi, OFFSET FLAT:.str.15_2
	call	gettext
	mov	edi, 4
	mov	rsi, qword ptr [rbp - 0x6b8]
	mov	qword ptr [rbp - 0x210], rax
	nop	
	call	quotearg_style
	xor	edi, edi
	nop	
	mov	dword ptr [rbp - 0x1d4], edi
	mov	rsp, rsp
	mov	esi, dword ptr [rbp - 0x1d4]
	nop	
	mov	rdx, qword ptr [rbp - 0x210]
	mov	rcx, rax
	mov	al, 0
	call	error
	mov	byte ptr [rbp - 0x625], 1
	jmp	.label_252
.label_320:
	lea	rdi, [rdi]
	lea	rdx, [rbp - 0x3c0]
	nop	
	mov	rax, qword ptr [rbp - 0x688]
	mov	rdi, qword ptr [rax + 0x48]
	nop	
	mov	rsi, qword ptr [rbp - 0x6b8]
	call	record_file
.label_317:
	mov	rdi, qword ptr [rbp - 0x688]
	lea	rsi, [rsi]
	mov	al, byte ptr [rbp - 0x11a]
	and	al, 1
	lea	rdi, [rdi]
	movzx	esi, al
	lea	rsi, [rsi]
	call	should_dereference
	and	al, 1
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x69b], al
	test	byte ptr [rbp - 0x4c9], 1
	jne	.label_327
	cmp	dword ptr [rbp - 0x5bc], 0x11
	nop	
	jne	.label_349
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x688]
	lea	rsi, [rsi]
	cmp	dword ptr [rax + 8], 2
	je	.label_282
.label_349:
	nop	
	mov	eax, dword ptr [rbp - 0xfc]
	lea	rsi, [rsi]
	and	eax, 0xf000
	cmp	eax, 0x8000
	je	.label_354
	mov	al, 1
	mov	rcx, qword ptr [rbp - 0x688]
	mov	rsp, rsp
	test	byte ptr [rcx + 0x14], 1
	mov	byte ptr [rbp - 0x501], al
	je	.label_356
	mov	rbp, rbp
	mov	al, 1
	mov	rbp, rbp
	mov	ecx, dword ptr [rbp - 0xfc]
	and	ecx, 0xf000
	nop	
	cmp	ecx, 0x4000
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x501], al
	lea	rsi, [rsi]
	je	.label_356
	mov	al, 1
	mov	ecx, dword ptr [rbp - 0xfc]
	nop	
	and	ecx, 0xf000
	cmp	ecx, 0xa000
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x501], al
	je	.label_356
.label_354:
	mov	al, 1
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x688]
	test	byte ptr [rcx + 0x18], 1
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x501], al
	mov	rbp, rbp
	jne	.label_356
	mov	al, 1
	mov	rcx, qword ptr [rbp - 0x688]
	nop	
	test	byte ptr [rcx + 0x2c], 1
	mov	byte ptr [rbp - 0x501], al
	jne	.label_356
	mov	rbp, rbp
	mov	al, 1
	mov	rcx, qword ptr [rbp - 0x688]
	test	byte ptr [rcx + 0x17], 1
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x501], al
	mov	rbp, rbp
	jne	.label_356
	mov	al, 1
	mov	rcx, qword ptr [rbp - 0x688]
	mov	rbp, rbp
	cmp	dword ptr [rcx], 0
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x501], al
	jne	.label_356
	nop	
	mov	rax, qword ptr [rbp - 0x688]
	nop	
	mov	cl, byte ptr [rax + 0x15]
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x501], cl
.label_356:
	lea	rsi, [rsi]
	mov	al, byte ptr [rbp - 0x501]
	mov	edi, 0xffffff9c
	lea	rdx, [rbp - 0x798]
	nop	
	xor	ecx, ecx
	mov	esi, 0x100
	nop	
	and	al, 1
	mov	byte ptr [rbp - 0x119], al
	lea	rdi, [rdi]
	mov	al, byte ptr [rbp - 0x119]
	test	al, 1
	mov	rbp, rbp
	cmovne	ecx, esi
	mov	dword ptr [rbp - 0x4ac], ecx
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x218]
	mov	ecx, dword ptr [rbp - 0x4ac]
	call	fstatat
	mov	rsp, rsp
	cmp	eax, 0
	jne	.label_393
	mov	al, byte ptr [rbp - 0x119]
	mov	rsp, rsp
	and	al, 1
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x66a], al
	mov	dword ptr [rbp - 0x5bc], 0x11
	mov	rsp, rsp
	jmp	.label_395
.label_393:
	mov	rbp, rbp
	call	__errno_location
	cmp	dword ptr [rax], 0x28
	jne	.label_397
	mov	rax, qword ptr [rbp - 0x688]
	test	byte ptr [rax + 0x16], 1
	lea	rdi, [rdi]
	je	.label_397
	nop	
	jmp	.label_401
.label_397:
	lea	rsi, [rsi]
	call	__errno_location
	cmp	dword ptr [rax], 2
	je	.label_402
	call	__errno_location
	movabs	rdi, OFFSET FLAT:.str.12_1
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0x638], esi
	lea	rsi, [rsi]
	call	gettext
	mov	edi, 4
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x218]
	mov	qword ptr [rbp - 0x678], rax
	nop	
	call	quotearg_style
	xor	edi, edi
	mov	esi, dword ptr [rbp - 0x638]
	mov	rdx, qword ptr [rbp - 0x678]
	lea	rsi, [rsi]
	mov	rcx, rax
	lea	rsi, [rsi]
	mov	al, 0
	call	error
	mov	byte ptr [rbp - 0x625], 0
	jmp	.label_252
.label_402:
	mov	byte ptr [rbp - 0x4c9], 1
	lea	rdi, [rdi]
	jmp	.label_401
.label_401:
	lea	rsi, [rsi]
	jmp	.label_395
.label_395:
	mov	rbp, rbp
	jmp	.label_282
.label_282:
	cmp	dword ptr [rbp - 0x5bc], 0x11
	jne	.label_326
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x639], 0
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x688]
	cmp	dword ptr [rax + 8], 2
	je	.label_420
	lea	rsi, [rbp - 0x3c0]
	mov	rbp, rbp
	lea	rcx, [rbp - 0x798]
	lea	r9, [rbp - 0x639]
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x6b8]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x218]
	nop	
	mov	r8, qword ptr [rbp - 0x688]
	call	same_file_ok
	lea	rsi, [rsi]
	test	al, 1
	lea	rdi, [rdi]
	jne	.label_420
	lea	rsi, [rsi]
	movabs	rdi, OFFSET FLAT:.str.16_0
	mov	rsp, rsp
	call	gettext
	xor	edi, edi
	mov	esi, 4
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x6b8]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x3f0], rax
	lea	rsi, [rsi]
	call	quotearg_n_style
	mov	rbp, rbp
	mov	edi, 1
	mov	esi, 4
	mov	rdx, qword ptr [rbp - 0x218]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x220], rax
	call	quotearg_n_style
	xor	esi, esi
	lea	rsi, [rsi]
	mov	edi, esi
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x3f0]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x220]
	mov	rbp, rbp
	mov	r8, rax
	nop	
	mov	al, 0
	call	error
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x625], 0
	jmp	.label_252
.label_420:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x688]
	lea	rdi, [rdi]
	test	byte ptr [rax + 0x2d], 1
	je	.label_257
	mov	eax, dword ptr [rbp - 0xfc]
	and	eax, 0xf000
	cmp	eax, 0x4000
	mov	rbp, rbp
	je	.label_257
	lea	rdi, [rdi]
	xor	eax, eax
	mov	cl, al
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x688]
	test	byte ptr [rdx + 0x1f], 1
	nop	
	mov	byte ptr [rbp - 0x1e9], cl
	je	.label_445
	xor	eax, eax
	mov	rbp, rbp
	mov	cl, al
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x688]
	lea	rdi, [rdi]
	test	byte ptr [rdx + 0x18], 1
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x32a], cl
	je	.label_448
	nop	
	mov	rax, qword ptr [rbp - 0x798]
	lea	rdi, [rdi]
	cmp	rax, qword ptr [rbp - 0x3c0]
	sete	cl
	mov	byte ptr [rbp - 0x32a], cl
.label_448:
	lea	rsi, [rsi]
	mov	al, byte ptr [rbp - 0x32a]
	xor	al, 0xff
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x1e9], al
.label_445:
	mov	rsp, rsp
	mov	al, byte ptr [rbp - 0x1e9]
	nop	
	lea	rsi, [rbp - 0x798]
	mov	rsp, rsp
	lea	rdx, [rbp - 0x3c0]
	lea	rdi, [rdi]
	xor	ecx, ecx
	mov	edi, 1
	test	al, 1
	nop	
	cmovne	ecx, edi
	nop	
	mov	dword ptr [rbp - 0x514], ecx
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x218]
	mov	rbp, rbp
	mov	ecx, dword ptr [rbp - 0x514]
	nop	
	call	utimecmp
	nop	
	xor	ecx, ecx
	lea	rsi, [rsi]
	cmp	ecx, eax
	jg	.label_462
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x6c8], 0
	je	.label_466
	mov	rax, qword ptr [rbp - 0x6c8]
	mov	byte ptr [rax], 1
.label_466:
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x218]
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x3b8]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x3c0]
	call	remember_copied
	nop	
	mov	qword ptr [rbp - 0x1d0], rax
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x1d0], 0
	nop	
	je	.label_255
	nop	
	mov	edx, 1
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x1d0]
	mov	rsi, qword ptr [rbp - 0x218]
	mov	rax, qword ptr [rbp - 0x688]
	mov	cl, byte ptr [rax + 0x2e]
	mov	r8b, byte ptr [rbp - 0x69b]
	nop	
	and	cl, 1
	nop	
	and	r8b, 1
	nop	
	movzx	ecx, cl
	movzx	r8d, r8b
	call	create_hard_link
	lea	rsi, [rsi]
	test	al, 1
	lea	rdi, [rdi]
	jne	.label_251
	jmp	.label_254
.label_251:
	jmp	.label_255
.label_255:
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x625], 1
	mov	rbp, rbp
	jmp	.label_252
.label_462:
	jmp	.label_257
.label_257:
	mov	rax, qword ptr [rbp - 0x688]
	test	byte ptr [rax + 0x18], 1
	je	.label_259
	lea	rdx, [rbp - 0x798]
	mov	rdi, qword ptr [rbp - 0x688]
	nop	
	mov	rsi, qword ptr [rbp - 0x218]
	lea	rdi, [rdi]
	call	abandon_move
	nop	
	test	al, 1
	jne	.label_344
	nop	
	jmp	.label_271
.label_344:
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x6c8], 0
	lea	rdi, [rdi]
	je	.label_272
	mov	rax, qword ptr [rbp - 0x6c8]
	lea	rsi, [rsi]
	mov	byte ptr [rax], 1
.label_272:
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x625], 1
	lea	rdi, [rdi]
	jmp	.label_252
.label_271:
	jmp	.label_277
.label_259:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0xfc]
	lea	rdi, [rdi]
	and	eax, 0xf000
	mov	rsp, rsp
	cmp	eax, 0x4000
	lea	rdi, [rdi]
	je	.label_278
	nop	
	mov	rax, qword ptr [rbp - 0x688]
	mov	rbp, rbp
	cmp	dword ptr [rax + 8], 2
	mov	rsp, rsp
	je	.label_285
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x688]
	cmp	dword ptr [rax + 8], 3
	mov	rsp, rsp
	jne	.label_278
	lea	rdx, [rbp - 0x798]
	mov	rdi, qword ptr [rbp - 0x688]
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x218]
	mov	rbp, rbp
	call	overwrite_ok
	mov	rsp, rsp
	test	al, 1
	jne	.label_278
.label_285:
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x625], 1
	jmp	.label_252
.label_278:
	lea	rsi, [rsi]
	jmp	.label_277
.label_277:
	mov	rbp, rbp
	test	byte ptr [rbp - 0x639], 1
	lea	rsi, [rsi]
	je	.label_302
	mov	byte ptr [rbp - 0x625], 1
	jmp	.label_252
.label_302:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x780]
	and	eax, 0xf000
	lea	rdi, [rdi]
	cmp	eax, 0x4000
	je	.label_307
	mov	eax, dword ptr [rbp - 0xfc]
	and	eax, 0xf000
	mov	rbp, rbp
	cmp	eax, 0x4000
	jne	.label_308
	mov	rax, qword ptr [rbp - 0x688]
	lea	rsi, [rsi]
	test	byte ptr [rax + 0x18], 1
	je	.label_313
	mov	rax, qword ptr [rbp - 0x688]
	nop	
	cmp	dword ptr [rax], 0
	je	.label_313
	lea	rdi, [rdi]
	jmp	.label_318
.label_313:
	mov	rbp, rbp
	movabs	rdi, OFFSET FLAT:.str.17_2
	call	gettext
	xor	edi, edi
	mov	rsp, rsp
	mov	esi, 4
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x218]
	mov	qword ptr [rbp - 0x4f0], rax
	call	quotearg_n_style
	lea	rdi, [rdi]
	mov	edi, 1
	mov	esi, 4
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x6b8]
	mov	qword ptr [rbp - 0x548], rax
	lea	rsi, [rsi]
	call	quotearg_n_style
	nop	
	xor	esi, esi
	mov	edi, esi
	mov	rdx, qword ptr [rbp - 0x4f0]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x548]
	lea	rdi, [rdi]
	mov	r8, rax
	mov	al, 0
	call	error
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x625], 0
	jmp	.label_252
.label_318:
	jmp	.label_308
.label_308:
	nop	
	test	byte ptr [rbp - 0x11a], 1
	je	.label_334
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x688]
	cmp	dword ptr [rax], 3
	je	.label_334
	lea	rsi, [rsi]
	lea	rdx, [rbp - 0x798]
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x688]
	mov	rdi, qword ptr [rax + 0x40]
	mov	rsi, qword ptr [rbp - 0x218]
	lea	rdi, [rdi]
	call	seen_file
	lea	rdi, [rdi]
	test	al, 1
	lea	rsi, [rsi]
	jne	.label_340
	lea	rdi, [rdi]
	jmp	.label_334
.label_340:
	lea	rdi, [rdi]
	movabs	rdi, OFFSET FLAT:.str.18_1
	mov	rsp, rsp
	call	gettext
	xor	edi, edi
	mov	esi, 4
	mov	rdx, qword ptr [rbp - 0x218]
	mov	qword ptr [rbp - 0x538], rax
	call	quotearg_n_style
	lea	rsi, [rsi]
	mov	edi, 1
	lea	rdi, [rdi]
	mov	esi, 4
	mov	rdx, qword ptr [rbp - 0x6b8]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x500], rax
	call	quotearg_n_style
	xor	esi, esi
	lea	rdi, [rdi]
	mov	edi, esi
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x538]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x500]
	mov	r8, rax
	mov	rsp, rsp
	mov	al, 0
	call	error
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x625], 0
	jmp	.label_252
.label_334:
	jmp	.label_307
.label_307:
	mov	eax, dword ptr [rbp - 0xfc]
	nop	
	and	eax, 0xf000
	lea	rdi, [rdi]
	cmp	eax, 0x4000
	je	.label_384
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x780]
	and	eax, 0xf000
	cmp	eax, 0x4000
	jne	.label_359
	mov	rax, qword ptr [rbp - 0x688]
	test	byte ptr [rax + 0x18], 1
	je	.label_363
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x688]
	lea	rsi, [rsi]
	cmp	dword ptr [rax], 0
	mov	rsp, rsp
	je	.label_363
	jmp	.label_367
.label_363:
	mov	rsp, rsp
	movabs	rdi, OFFSET FLAT:.str.19_1
	call	gettext
	mov	edi, 4
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x218]
	mov	qword ptr [rbp - 0x4a8], rax
	call	quotearg_style
	mov	rbp, rbp
	xor	edi, edi
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x23c], edi
	mov	esi, dword ptr [rbp - 0x23c]
	mov	rdx, qword ptr [rbp - 0x4a8]
	mov	rcx, rax
	lea	rsi, [rsi]
	mov	al, 0
	lea	rdi, [rdi]
	call	error
	mov	byte ptr [rbp - 0x625], 0
	lea	rsi, [rsi]
	jmp	.label_252
.label_367:
	lea	rsi, [rsi]
	jmp	.label_359
.label_359:
	lea	rsi, [rsi]
	jmp	.label_384
.label_384:
	mov	rax, qword ptr [rbp - 0x688]
	test	byte ptr [rax + 0x18], 1
	je	.label_387
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x3a8]
	mov	rsp, rsp
	and	eax, 0xf000
	cmp	eax, 0x4000
	jne	.label_388
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x780]
	mov	rbp, rbp
	and	eax, 0xf000
	nop	
	cmp	eax, 0x4000
	je	.label_388
	nop	
	mov	rax, qword ptr [rbp - 0x688]
	cmp	dword ptr [rax], 0
	lea	rdi, [rdi]
	jne	.label_388
	mov	rsp, rsp
	movabs	rdi, OFFSET FLAT:.str.20_1
	call	gettext
	lea	rsi, [rsi]
	xor	edi, edi
	lea	rdi, [rdi]
	mov	esi, 3
	mov	rdx, qword ptr [rbp - 0x6b8]
	mov	qword ptr [rbp - 0x610], rax
	mov	rsp, rsp
	call	quotearg_n_style_colon
	lea	rsi, [rsi]
	xor	edi, edi
	mov	rsp, rsp
	mov	esi, 3
	nop	
	mov	rdx, qword ptr [rbp - 0x218]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x260], rax
	call	quotearg_n_style_colon
	lea	rsi, [rsi]
	xor	esi, esi
	mov	rsp, rsp
	mov	edi, esi
	mov	rdx, qword ptr [rbp - 0x610]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x260]
	mov	r8, rax
	nop	
	mov	al, 0
	call	error
	mov	byte ptr [rbp - 0x625], 0
	lea	rdi, [rdi]
	jmp	.label_252
.label_388:
	jmp	.label_387
.label_387:
	nop	
	mov	rax, qword ptr [rbp - 0x688]
	cmp	dword ptr [rax], 0
	je	.label_409
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x6b8]
	call	last_component
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x30], rax
	mov	rdi, rax
	call	dot_or_dotdot_0
	test	al, 1
	jne	.label_409
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x688]
	test	byte ptr [rax + 0x18], 1
	mov	rbp, rbp
	jne	.label_480
	mov	eax, dword ptr [rbp - 0x780]
	mov	rbp, rbp
	and	eax, 0xf000
	nop	
	cmp	eax, 0x4000
	je	.label_409
.label_480:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x688]
	cmp	dword ptr [rax], 3
	lea	rsi, [rsi]
	je	.label_419
	lea	rsi, [rbp - 0x3c0]
	nop	
	mov	rdi, qword ptr [rbp - 0x30]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x218]
	lea	rsi, [rsi]
	call	source_is_dst_backup
	lea	rdi, [rdi]
	test	al, 1
	lea	rdi, [rdi]
	jne	.label_464
	jmp	.label_419
.label_464:
	mov	rax, qword ptr [rbp - 0x688]
	test	byte ptr [rax + 0x18], 1
	lea	rdi, [rdi]
	je	.label_427
	mov	rbp, rbp
	movabs	rdi, OFFSET FLAT:.str.21_1
	call	gettext
	mov	qword ptr [rbp - 0x1e0], rax
	mov	rbp, rbp
	jmp	.label_369
.label_427:
	lea	rsi, [rsi]
	movabs	rdi, OFFSET FLAT:.str.22_1
	lea	rsi, [rsi]
	call	gettext
	mov	qword ptr [rbp - 0x1e0], rax
.label_369:
	mov	rax, qword ptr [rbp - 0x1e0]
	mov	rsp, rsp
	xor	edi, edi
	mov	esi, 4
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x408], rax
	nop	
	mov	rdx, qword ptr [rbp - 0x408]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x218]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x4a0], rdx
	nop	
	mov	rdx, rax
	mov	rsp, rsp
	call	quotearg_n_style
	mov	edi, 1
	lea	rsi, [rsi]
	mov	esi, 4
	mov	rdx, qword ptr [rbp - 0x6b8]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x200], rax
	mov	rbp, rbp
	call	quotearg_n_style
	xor	esi, esi
	lea	rdi, [rdi]
	mov	edi, esi
	nop	
	mov	rdx, qword ptr [rbp - 0x4a0]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x200]
	mov	rsp, rsp
	mov	r8, rax
	nop	
	mov	al, 0
	call	error
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x625], 0
	jmp	.label_252
.label_419:
	lea	rdi, [rdi]
	mov	edi, 0xffffff9c
	nop	
	mov	rsi, qword ptr [rbp - 0x218]
	mov	rax, qword ptr [rbp - 0x688]
	mov	edx, dword ptr [rax]
	nop	
	call	backup_file_rename
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x248], rax
	nop	
	cmp	qword ptr [rbp - 0x248], 0
	mov	rsp, rsp
	je	.label_450
	jmp	.label_454
.label_454:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x248]
	nop	
	mov	qword ptr [rbp - 0x668], rax
	mov	rdi, rax
	call	strlen
	mov	rbp, rbp
	mov	rdi, rax
	lea	rsi, [rsi]
	inc	rdi
	mov	qword ptr [rbp - 0x3d0], rdi
	add	rax, 0x10
	nop	
	and	rax, 0xfffffffffffffff0
	mov	rdi, rsp
	mov	rsp, rsp
	sub	rdi, rax
	mov	rsp, rdi
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x4c8], rdi
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x4c8]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x668]
	mov	rdx, qword ptr [rbp - 0x3d0]
	nop	
	mov	rdi, rax
	mov	qword ptr [rbp - 0x570], rax
	mov	rsp, rsp
	call	memcpy
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x570]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x3c8], rax
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x3c8]
	mov	qword ptr [rbp - 0x250], rdx
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x248]
	call	free
	jmp	.label_291
.label_450:
	call	__errno_location
	mov	rsp, rsp
	cmp	dword ptr [rax], 2
	lea	rsi, [rsi]
	je	.label_473
	call	__errno_location
	movabs	rdi, OFFSET FLAT:.str.23_1
	mov	rbp, rbp
	mov	esi, dword ptr [rax]
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x38], esi
	call	gettext
	nop	
	mov	edi, 4
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x218]
	mov	qword ptr [rbp - 0x320], rax
	nop	
	call	quotearg_style
	mov	rsp, rsp
	xor	edi, edi
	nop	
	mov	esi, dword ptr [rbp - 0x38]
	nop	
	mov	rdx, qword ptr [rbp - 0x320]
	mov	rcx, rax
	lea	rsi, [rsi]
	mov	al, 0
	lea	rdi, [rdi]
	call	error
	mov	byte ptr [rbp - 0x625], 0
	lea	rsi, [rsi]
	jmp	.label_252
.label_473:
	jmp	.label_291
.label_291:
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x4c9], 1
	jmp	.label_299
.label_409:
	mov	eax, dword ptr [rbp - 0x780]
	lea	rdi, [rdi]
	and	eax, 0xf000
	lea	rsi, [rsi]
	cmp	eax, 0x4000
	lea	rdi, [rdi]
	je	.label_262
	mov	rax, qword ptr [rbp - 0x688]
	test	byte ptr [rax + 0x18], 1
	jne	.label_262
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x688]
	mov	rsp, rsp
	test	byte ptr [rax + 0x15], 1
	mov	rsp, rsp
	jne	.label_267
	mov	rax, qword ptr [rbp - 0x688]
	test	byte ptr [rax + 0x22], 1
	lea	rdi, [rdi]
	je	.label_274
	mov	rsp, rsp
	mov	eax, 1
	nop	
	mov	ecx, eax
	cmp	rcx, qword ptr [rbp - 0x788]
	jb	.label_267
.label_274:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x688]
	lea	rsi, [rsi]
	cmp	dword ptr [rax + 4], 2
	mov	rsp, rsp
	jne	.label_262
	mov	eax, dword ptr [rbp - 0x3a8]
	and	eax, 0xf000
	lea	rdi, [rdi]
	cmp	eax, 0x8000
	mov	rbp, rbp
	je	.label_262
.label_267:
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x218]
	nop	
	call	unlink
	cmp	eax, 0
	lea	rsi, [rsi]
	je	.label_287
	call	__errno_location
	lea	rdi, [rdi]
	cmp	dword ptr [rax], 2
	lea	rsi, [rsi]
	je	.label_287
	lea	rsi, [rsi]
	call	__errno_location
	nop	
	movabs	rdi, OFFSET FLAT:.str.24_0
	lea	rsi, [rsi]
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0x10c], esi
	nop	
	call	gettext
	mov	edi, 4
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x218]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x6a8], rax
	lea	rdi, [rdi]
	call	quotearg_style
	mov	rbp, rbp
	xor	edi, edi
	mov	rsp, rsp
	mov	esi, dword ptr [rbp - 0x10c]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x6a8]
	mov	rcx, rax
	mov	rsp, rsp
	mov	al, 0
	call	error
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x625], 0
	nop	
	jmp	.label_252
.label_287:
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x4c9], 1
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x688]
	test	byte ptr [rax + 0x2e], 1
	mov	rsp, rsp
	je	.label_309
	lea	rsi, [rsi]
	movabs	rdi, OFFSET FLAT:.str.25_0
	call	gettext
	lea	rsi, [rsi]
	mov	edi, 4
	mov	rsi, qword ptr [rbp - 0x218]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x580], rax
	mov	rsp, rsp
	call	quotearg_style
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x580]
	mov	rbp, rbp
	mov	rsi, rax
	mov	rsp, rsp
	mov	al, 0
	nop	
	call	printf
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x58c], eax
.label_309:
	lea	rdi, [rdi]
	jmp	.label_262
.label_262:
	jmp	.label_299
.label_299:
	mov	rsp, rsp
	jmp	.label_326
.label_326:
	jmp	.label_327
.label_327:
	test	byte ptr [rbp - 0x11a], 1
	nop	
	je	.label_329
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x688]
	mov	rbp, rbp
	cmp	qword ptr [rax + 0x40], 0
	je	.label_329
	nop	
	mov	rax, qword ptr [rbp - 0x688]
	test	byte ptr [rax + 0x18], 1
	jne	.label_329
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x688]
	nop	
	cmp	dword ptr [rax], 0
	nop	
	jne	.label_329
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x679], 1
	test	byte ptr [rbp - 0x66a], 1
	mov	rbp, rbp
	je	.label_336
	lea	rax, [rbp - 0x798]
	nop	
	mov	qword ptr [rbp - 0x520], rax
	jmp	.label_346
.label_336:
	mov	rbp, rbp
	lea	rsi, [rbp - 0x300]
	mov	rdi, qword ptr [rbp - 0x218]
	call	__lstat
	lea	rdi, [rdi]
	cmp	eax, 0
	lea	rsi, [rsi]
	jne	.label_342
	lea	rax, [rbp - 0x300]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x520], rax
	lea	rsi, [rsi]
	jmp	.label_343
.label_342:
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x679], 0
.label_343:
	lea	rdi, [rdi]
	jmp	.label_346
.label_346:
	mov	rbp, rbp
	test	byte ptr [rbp - 0x679], 1
	je	.label_347
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x520]
	mov	rsp, rsp
	mov	ecx, dword ptr [rax + 0x18]
	and	ecx, 0xf000
	cmp	ecx, 0xa000
	lea	rsi, [rsi]
	jne	.label_347
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x688]
	mov	rbp, rbp
	mov	rdi, qword ptr [rax + 0x40]
	mov	rsi, qword ptr [rbp - 0x218]
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x520]
	lea	rsi, [rsi]
	call	seen_file
	test	al, 1
	jne	.label_358
	jmp	.label_347
.label_358:
	movabs	rdi, OFFSET FLAT:.str.26_0
	call	gettext
	mov	rsp, rsp
	xor	edi, edi
	lea	rdi, [rdi]
	mov	esi, 4
	mov	rdx, qword ptr [rbp - 0x6b8]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x5a8], rax
	call	quotearg_n_style
	mov	edi, 1
	nop	
	mov	esi, 4
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x218]
	nop	
	mov	qword ptr [rbp - 0x7a8], rax
	call	quotearg_n_style
	xor	esi, esi
	mov	edi, esi
	mov	rdx, qword ptr [rbp - 0x5a8]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x7a8]
	mov	r8, rax
	mov	al, 0
	lea	rdi, [rdi]
	call	error
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x625], 0
	jmp	.label_252
.label_347:
	jmp	.label_329
.label_329:
	mov	rax, qword ptr [rbp - 0x688]
	test	byte ptr [rax + 0x2e], 1
	je	.label_378
	mov	rax, qword ptr [rbp - 0x688]
	test	byte ptr [rax + 0x18], 1
	jne	.label_378
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0xfc]
	lea	rsi, [rsi]
	and	eax, 0xf000
	cmp	eax, 0x4000
	lea	rdi, [rdi]
	je	.label_378
	mov	rdi, qword ptr [rbp - 0x6b8]
	mov	rsi, qword ptr [rbp - 0x218]
	mov	rdx, qword ptr [rbp - 0x250]
	mov	rsp, rsp
	call	emit_verbose
.label_378:
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x5bc], 0
	jne	.label_389
	mov	qword ptr [rbp - 0x1d0], 0
	nop	
	jmp	.label_390
.label_389:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x688]
	test	byte ptr [rax + 0x2a], 1
	lea	rsi, [rsi]
	je	.label_391
	mov	eax, dword ptr [rbp - 0xfc]
	and	eax, 0xf000
	lea	rsi, [rsi]
	cmp	eax, 0x4000
	nop	
	jne	.label_391
	test	byte ptr [rbp - 0x11a], 1
	lea	rdi, [rdi]
	je	.label_366
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x218]
	mov	rsi, qword ptr [rbp - 0x3b8]
	mov	rdx, qword ptr [rbp - 0x3c0]
	lea	rsi, [rsi]
	call	remember_copied
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x1d0], rax
	nop	
	jmp	.label_399
.label_366:
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x3b8]
	mov	rsi, qword ptr [rbp - 0x3c0]
	call	src_to_dest_lookup
	mov	qword ptr [rbp - 0x1d0], rax
.label_399:
	mov	rbp, rbp
	jmp	.label_403
.label_391:
	mov	rax, qword ptr [rbp - 0x688]
	test	byte ptr [rax + 0x18], 1
	mov	rsp, rsp
	je	.label_404
	cmp	qword ptr [rbp - 0x3b0], 1
	jne	.label_404
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x3b8]
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x3c0]
	lea	rsi, [rsi]
	call	src_to_dest_lookup
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x1d0], rax
	jmp	.label_411
.label_404:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x688]
	test	byte ptr [rax + 0x22], 1
	je	.label_412
	mov	rax, qword ptr [rbp - 0x688]
	lea	rsi, [rsi]
	test	byte ptr [rax + 0x17], 1
	lea	rsi, [rsi]
	jne	.label_412
	lea	rsi, [rsi]
	mov	eax, 1
	mov	ecx, eax
	mov	rbp, rbp
	cmp	rcx, qword ptr [rbp - 0x3b0]
	jb	.label_416
	test	byte ptr [rbp - 0x11a], 1
	je	.label_422
	mov	rax, qword ptr [rbp - 0x688]
	lea	rsi, [rsi]
	cmp	dword ptr [rax + 4], 3
	je	.label_416
.label_422:
	mov	rax, qword ptr [rbp - 0x688]
	mov	rsp, rsp
	cmp	dword ptr [rax + 4], 4
	jne	.label_412
.label_416:
	mov	rdi, qword ptr [rbp - 0x218]
	mov	rsi, qword ptr [rbp - 0x3b8]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x3c0]
	nop	
	call	remember_copied
	mov	qword ptr [rbp - 0x1d0], rax
.label_412:
	jmp	.label_411
.label_411:
	jmp	.label_403
.label_403:
	lea	rdi, [rdi]
	jmp	.label_390
.label_390:
	cmp	qword ptr [rbp - 0x1d0], 0
	je	.label_280
	mov	eax, dword ptr [rbp - 0xfc]
	and	eax, 0xf000
	mov	rsp, rsp
	cmp	eax, 0x4000
	lea	rdi, [rdi]
	jne	.label_435
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x6b8]
	mov	rsi, qword ptr [rbp - 0x1d0]
	call	same_name
	mov	rbp, rbp
	test	al, 1
	mov	rsp, rsp
	jne	.label_439
	jmp	.label_428
.label_439:
	mov	rbp, rbp
	movabs	rdi, OFFSET FLAT:.str.27_0
	call	gettext
	lea	rsi, [rsi]
	xor	edi, edi
	nop	
	mov	esi, 4
	mov	rsp, rsp
	mov	rdx,  qword ptr [word ptr [top_level_src_name]]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x588], rax
	call	quotearg_n_style
	lea	rsi, [rsi]
	mov	edi, 1
	mov	esi, 4
	mov	rsp, rsp
	mov	rdx,  qword ptr [word ptr [top_level_dst_name]]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x3f8], rax
	mov	rsp, rsp
	call	quotearg_n_style
	xor	esi, esi
	mov	edi, esi
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x588]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x3f8]
	mov	r8, rax
	mov	rsp, rsp
	mov	al, 0
	call	error
	mov	rcx, qword ptr [rbp - 0x268]
	mov	rsp, rsp
	mov	byte ptr [rcx], 1
	jmp	.label_254
.label_428:
	mov	rdi, qword ptr [rbp - 0x218]
	mov	rsi, qword ptr [rbp - 0x1d0]
	call	same_name
	mov	rsp, rsp
	test	al, 1
	nop	
	jne	.label_455
	lea	rdi, [rdi]
	jmp	.label_457
.label_455:
	nop	
	movabs	rdi, OFFSET FLAT:.str.28_0
	nop	
	call	gettext
	lea	rdi, [rdi]
	mov	edi, 4
	mov	rsi,  qword ptr [word ptr [top_level_src_name]]
	mov	qword ptr [rbp - 0x530], rax
	call	quotearg_style
	nop	
	xor	edi, edi
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0xdc], edi
	mov	rbp, rbp
	mov	esi, dword ptr [rbp - 0xdc]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x530]
	lea	rsi, [rsi]
	mov	rcx, rax
	mov	al, 0
	call	error
	mov	rcx, qword ptr [rbp - 0x688]
	mov	rbp, rbp
	test	byte ptr [rcx + 0x18], 1
	mov	rbp, rbp
	je	.label_407
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x6c8], 0
	je	.label_407
	mov	rax, qword ptr [rbp - 0x6c8]
	mov	byte ptr [rax], 1
.label_407:
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x625], 1
	jmp	.label_252
.label_457:
	mov	rax, qword ptr [rbp - 0x688]
	cmp	dword ptr [rax + 4], 4
	lea	rdi, [rdi]
	je	.label_469
	test	byte ptr [rbp - 0x11a], 1
	lea	rdi, [rdi]
	je	.label_474
	mov	rax, qword ptr [rbp - 0x688]
	mov	rbp, rbp
	cmp	dword ptr [rax + 4], 3
	nop	
	jne	.label_474
.label_469:
	lea	rsi, [rsi]
	jmp	.label_475
.label_474:
	lea	rdi, [rdi]
	movabs	rdi, OFFSET FLAT:.str.29_0
	call	gettext
	xor	edi, edi
	mov	esi, 4
	mov	rdx, qword ptr [rbp - 0x218]
	mov	qword ptr [rbp - 0x558], rax
	nop	
	call	quotearg_n_style
	mov	edi, 1
	mov	esi, 4
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x1d0]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x540], rax
	nop	
	call	quotearg_n_style
	xor	esi, esi
	lea	rsi, [rsi]
	mov	edi, esi
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x558]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x540]
	mov	r8, rax
	mov	al, 0
	call	error
	lea	rsi, [rsi]
	jmp	.label_254
.label_475:
	nop	
	jmp	.label_263
.label_263:
	jmp	.label_266
.label_266:
	jmp	.label_268
.label_435:
	mov	edx, 1
	mov	rdi, qword ptr [rbp - 0x1d0]
	mov	rsi, qword ptr [rbp - 0x218]
	mov	rax, qword ptr [rbp - 0x688]
	mov	cl, byte ptr [rax + 0x2e]
	mov	r8b, byte ptr [rbp - 0x69b]
	lea	rsi, [rsi]
	and	cl, 1
	and	r8b, 1
	movzx	ecx, cl
	movzx	r8d, r8b
	call	create_hard_link
	lea	rdi, [rdi]
	test	al, 1
	jne	.label_276
	jmp	.label_254
.label_276:
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x625], 1
	nop	
	jmp	.label_252
.label_268:
	jmp	.label_280
.label_280:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x688]
	mov	rsp, rsp
	test	byte ptr [rax + 0x18], 1
	nop	
	je	.label_283
	cmp	dword ptr [rbp - 0x5bc], 0x11
	lea	rsi, [rsi]
	jne	.label_423
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x6b8]
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x218]
	mov	rsp, rsp
	call	rename
	cmp	eax, 0
	lea	rsi, [rsi]
	jne	.label_290
	lea	rsi, [rsi]
	xor	eax, eax
	nop	
	mov	dword ptr [rbp - 0x560], eax
	lea	rsi, [rsi]
	jmp	.label_293
.label_290:
	mov	rsp, rsp
	call	__errno_location
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 0x560], ecx
.label_293:
	nop	
	mov	eax, dword ptr [rbp - 0x560]
	mov	dword ptr [rbp - 0x5bc], eax
.label_423:
	lea	rsi, [rsi]
	cmp	dword ptr [rbp - 0x5bc], 0
	jne	.label_303
	mov	rax, qword ptr [rbp - 0x688]
	test	byte ptr [rax + 0x2e], 1
	je	.label_306
	movabs	rdi, OFFSET FLAT:.str.30_0
	call	gettext
	mov	rdi, rax
	nop	
	mov	al, 0
	call	printf
	mov	rdi, qword ptr [rbp - 0x6b8]
	mov	rsi, qword ptr [rbp - 0x218]
	mov	rdx, qword ptr [rbp - 0x250]
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x4d0], eax
	mov	rbp, rbp
	call	emit_verbose
.label_306:
	mov	rax, qword ptr [rbp - 0x688]
	mov	rbp, rbp
	test	byte ptr [rax + 0x21], 1
	lea	rsi, [rsi]
	je	.label_316
	xor	esi, esi
	lea	rsi, [rsi]
	mov	edx, 1
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x218]
	mov	rcx, qword ptr [rbp - 0x688]
	nop	
	call	set_file_security_ctx
	mov	byte ptr [rbp - 0x611], al
.label_316:
	cmp	qword ptr [rbp - 0x6c8], 0
	lea	rsi, [rsi]
	je	.label_323
	mov	rax, qword ptr [rbp - 0x6c8]
	mov	rsp, rsp
	mov	byte ptr [rax], 1
.label_323:
	test	byte ptr [rbp - 0x11a], 1
	mov	rbp, rbp
	je	.label_325
	mov	rax, qword ptr [rbp - 0x688]
	test	byte ptr [rax + 0x31], 1
	nop	
	jne	.label_325
	lea	rsi, [rsi]
	lea	rdx, [rbp - 0x3c0]
	nop	
	mov	rax, qword ptr [rbp - 0x688]
	mov	rdi, qword ptr [rax + 0x40]
	mov	rsi, qword ptr [rbp - 0x218]
	call	record_file
.label_325:
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x625], 1
	mov	rsp, rsp
	jmp	.label_252
.label_303:
	cmp	dword ptr [rbp - 0x5bc], 0x16
	jne	.label_335
	movabs	rdi, OFFSET FLAT:.str.31
	call	gettext
	lea	rsi, [rsi]
	xor	edi, edi
	mov	esi, 4
	mov	rdx,  qword ptr [word ptr [top_level_src_name]]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x1e8], rax
	call	quotearg_n_style
	mov	edi, 1
	mov	esi, 4
	lea	rdi, [rdi]
	mov	rdx,  qword ptr [word ptr [top_level_dst_name]]
	mov	qword ptr [rbp - 0x658], rax
	mov	rbp, rbp
	call	quotearg_n_style
	xor	esi, esi
	mov	rbp, rbp
	mov	edi, esi
	mov	rdx, qword ptr [rbp - 0x1e8]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x658]
	mov	r8, rax
	mov	al, 0
	lea	rdi, [rdi]
	call	error
	nop	
	mov	rcx, qword ptr [rbp - 0x268]
	mov	rsp, rsp
	mov	byte ptr [rcx], 1
	mov	byte ptr [rbp - 0x625], 1
	nop	
	jmp	.label_252
.label_335:
	cmp	dword ptr [rbp - 0x5bc], 0x12
	je	.label_352
	lea	rsi, [rsi]
	movabs	rdi, OFFSET FLAT:.str.32
	nop	
	mov	esi, dword ptr [rbp - 0x5bc]
	mov	dword ptr [rbp - 0x4b4], esi
	call	gettext
	mov	rbp, rbp
	xor	edi, edi
	mov	esi, 4
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x6b8]
	mov	qword ptr [rbp - 0x4d8], rax
	call	quotearg_n_style
	lea	rdi, [rdi]
	mov	edi, 1
	mov	rsp, rsp
	mov	esi, 4
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x218]
	nop	
	mov	qword ptr [rbp - 0x118], rax
	call	quotearg_n_style
	nop	
	xor	edi, edi
	mov	esi, dword ptr [rbp - 0x4b4]
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x4d8]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x118]
	lea	rdi, [rdi]
	mov	r8, rax
	mov	rbp, rbp
	mov	al, 0
	lea	rsi, [rsi]
	call	error
	nop	
	mov	rdi, qword ptr [rbp - 0x3b8]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x3c0]
	call	forget_created
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x625], 0
	lea	rdi, [rdi]
	jmp	.label_252
.label_352:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0xfc]
	and	eax, 0xf000
	cmp	eax, 0x4000
	jne	.label_374
	mov	rdi, qword ptr [rbp - 0x218]
	lea	rdi, [rdi]
	call	rmdir
	nop	
	mov	dword ptr [rbp - 0x624], eax
	mov	rbp, rbp
	jmp	.label_379
.label_374:
	mov	rdi, qword ptr [rbp - 0x218]
	mov	rsp, rsp
	call	unlink
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x624], eax
.label_379:
	mov	eax, dword ptr [rbp - 0x624]
	mov	rbp, rbp
	cmp	eax, 0
	mov	rsp, rsp
	je	.label_385
	mov	rsp, rsp
	call	__errno_location
	cmp	dword ptr [rax], 2
	nop	
	je	.label_385
	call	__errno_location
	movabs	rdi, OFFSET FLAT:.str.33
	nop	
	mov	esi, dword ptr [rax]
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x590], esi
	lea	rdi, [rdi]
	call	gettext
	nop	
	xor	edi, edi
	mov	rsp, rsp
	mov	esi, 4
	mov	rdx, qword ptr [rbp - 0x6b8]
	mov	qword ptr [rbp - 0x708], rax
	call	quotearg_n_style
	mov	rsp, rsp
	mov	edi, 1
	mov	esi, 4
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x218]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x4c0], rax
	mov	rsp, rsp
	call	quotearg_n_style
	xor	edi, edi
	lea	rsi, [rsi]
	mov	esi, dword ptr [rbp - 0x590]
	mov	rdx, qword ptr [rbp - 0x708]
	mov	rcx, qword ptr [rbp - 0x4c0]
	nop	
	mov	r8, rax
	mov	al, 0
	lea	rsi, [rsi]
	call	error
	nop	
	mov	rdi, qword ptr [rbp - 0x3b8]
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x3c0]
	mov	rsp, rsp
	call	forget_created
	mov	byte ptr [rbp - 0x625], 0
	jmp	.label_252
.label_385:
	mov	rax, qword ptr [rbp - 0x688]
	test	byte ptr [rax + 0x2e], 1
	mov	rsp, rsp
	je	.label_406
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0xfc]
	and	eax, 0xf000
	cmp	eax, 0x4000
	je	.label_406
	movabs	rdi, OFFSET FLAT:.str.34
	call	gettext
	lea	rsi, [rsi]
	mov	rdi, rax
	lea	rsi, [rsi]
	mov	al, 0
	nop	
	call	printf
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x6b8]
	mov	rsi, qword ptr [rbp - 0x218]
	mov	rdx, qword ptr [rbp - 0x250]
	mov	dword ptr [rbp - 0x30c], eax
	call	emit_verbose
.label_406:
	mov	byte ptr [rbp - 0x4c9], 1
.label_283:
	mov	rax, qword ptr [rbp - 0x688]
	test	byte ptr [rax + 0x2b], 1
	je	.label_418
	mov	rax, qword ptr [rbp - 0x688]
	mov	ecx, dword ptr [rax + 0x10]
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x680], ecx
	lea	rdi, [rdi]
	jmp	.label_421
.label_418:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0xfc]
	mov	dword ptr [rbp - 0x680], eax
.label_421:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x680]
	and	eax, 0xfff
	mov	dword ptr [rbp - 0x1c4], eax
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x1c4]
	mov	rcx, qword ptr [rbp - 0x688]
	mov	rsp, rsp
	test	byte ptr [rcx + 0x1d], 1
	mov	dword ptr [rbp - 0x64c], eax
	nop	
	je	.label_425
	mov	eax, 0x3f
	mov	dword ptr [rbp - 0x574], eax
	lea	rsi, [rsi]
	jmp	.label_430
.label_425:
	xor	eax, eax
	mov	rbp, rbp
	mov	ecx, 0x12
	mov	edx, dword ptr [rbp - 0xfc]
	lea	rsi, [rsi]
	and	edx, 0xf000
	cmp	edx, 0x4000
	cmove	eax, ecx
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x574], eax
.label_430:
	mov	eax, dword ptr [rbp - 0x574]
	mov	ecx, dword ptr [rbp - 0x64c]
	and	ecx, eax
	mov	dword ptr [rbp - 0x110], ecx
	mov	byte ptr [rbp - 0x502], 1
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x6b8]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x218]
	mov	edx, dword ptr [rbp - 0xfc]
	mov	r8b, byte ptr [rbp - 0x4c9]
	mov	r9, qword ptr [rbp - 0x688]
	lea	rdi, [rdi]
	and	r8b, 1
	movzx	ecx, r8b
	mov	r8, r9
	call	set_process_security_ctx
	mov	rsp, rsp
	test	al, 1
	mov	rbp, rbp
	jne	.label_479
	mov	byte ptr [rbp - 0x625], 0
	jmp	.label_252
.label_479:
	nop	
	mov	eax, dword ptr [rbp - 0xfc]
	mov	rsp, rsp
	and	eax, 0xf000
	nop	
	cmp	eax, 0x4000
	lea	rsi, [rsi]
	jne	.label_443
	lea	rdi, [rbp - 0x3c0]
	mov	rsi, qword ptr [rbp - 0x258]
	nop	
	call	is_ancestor
	test	al, 1
	jne	.label_447
	lea	rsi, [rsi]
	jmp	.label_449
.label_447:
	movabs	rdi, OFFSET FLAT:.str.35
	call	gettext
	mov	rsp, rsp
	mov	edi, 4
	mov	rsi, qword ptr [rbp - 0x6b8]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0xe8], rax
	mov	rsp, rsp
	call	quotearg_style
	mov	rbp, rbp
	xor	edi, edi
	mov	dword ptr [rbp - 0x4f4], edi
	mov	esi, dword ptr [rbp - 0x4f4]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0xe8]
	mov	rsp, rsp
	mov	rcx, rax
	mov	al, 0
	nop	
	call	error
	mov	rsp, rsp
	jmp	.label_254
.label_449:
	mov	rax, rsp
	nop	
	add	rax, -0x20
	mov	rsp, rax
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x690], rax
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x258]
	mov	rcx, qword ptr [rbp - 0x690]
	nop	
	mov	qword ptr [rcx], rax
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x3b8]
	mov	rcx, qword ptr [rbp - 0x690]
	mov	qword ptr [rcx + 8], rax
	mov	rax, qword ptr [rbp - 0x3c0]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x690]
	lea	rsi, [rsi]
	mov	qword ptr [rcx + 0x10], rax
	test	byte ptr [rbp - 0x4c9], 1
	nop	
	jne	.label_460
	mov	eax, dword ptr [rbp - 0x780]
	mov	rbp, rbp
	and	eax, 0xf000
	cmp	eax, 0x4000
	je	.label_468
.label_460:
	mov	rdi, qword ptr [rbp - 0x218]
	mov	eax, dword ptr [rbp - 0x1c4]
	mov	ecx, dword ptr [rbp - 0x110]
	lea	rsi, [rsi]
	xor	ecx, 0xffffffff
	lea	rdi, [rdi]
	and	eax, ecx
	lea	rsi, [rsi]
	mov	esi, eax
	call	mkdir
	cmp	eax, 0
	je	.label_477
	call	__errno_location
	mov	rbp, rbp
	movabs	rdi, OFFSET FLAT:.str.36
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0x20], esi
	lea	rsi, [rsi]
	call	gettext
	mov	edi, 4
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x218]
	mov	qword ptr [rbp - 0x698], rax
	call	quotearg_style
	mov	rsp, rsp
	xor	edi, edi
	lea	rdi, [rdi]
	mov	esi, dword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x698]
	mov	rsp, rsp
	mov	rcx, rax
	mov	al, 0
	nop	
	call	error
	jmp	.label_254
.label_477:
	lea	rsi, [rbp - 0x798]
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x218]
	mov	rsp, rsp
	call	__lstat
	cmp	eax, 0
	lea	rdi, [rdi]
	je	.label_264
	lea	rsi, [rsi]
	call	__errno_location
	movabs	rdi, OFFSET FLAT:.str.12_1
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0xe0], esi
	call	gettext
	mov	rbp, rbp
	mov	edi, 4
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x218]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x308], rax
	nop	
	call	quotearg_style
	xor	edi, edi
	mov	rbp, rbp
	mov	esi, dword ptr [rbp - 0xe0]
	mov	rdx, qword ptr [rbp - 0x308]
	mov	rcx, rax
	lea	rsi, [rsi]
	mov	al, 0
	call	error
	mov	rbp, rbp
	jmp	.label_254
.label_264:
	mov	eax, dword ptr [rbp - 0x780]
	and	eax, 0x1c0
	lea	rsi, [rsi]
	cmp	eax, 0x1c0
	nop	
	je	.label_284
	mov	eax, dword ptr [rbp - 0x780]
	mov	dword ptr [rbp - 0xec], eax
	mov	byte ptr [rbp - 0x62d], 1
	nop	
	mov	rdi, qword ptr [rbp - 0x218]
	mov	eax, dword ptr [rbp - 0xec]
	or	eax, 0x1c0
	lea	rdi, [rdi]
	mov	esi, eax
	call	chmod
	mov	rsp, rsp
	cmp	eax, 0
	mov	rsp, rsp
	je	.label_294
	call	__errno_location
	nop	
	movabs	rdi, OFFSET FLAT:.str_5
	mov	esi, dword ptr [rax]
	nop	
	mov	dword ptr [rbp - 0x324], esi
	call	gettext
	mov	edi, 4
	nop	
	mov	rsi, qword ptr [rbp - 0x218]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x3e8], rax
	nop	
	call	quotearg_style
	xor	edi, edi
	mov	esi, dword ptr [rbp - 0x324]
	mov	rdx, qword ptr [rbp - 0x3e8]
	mov	rcx, rax
	mov	al, 0
	call	error
	lea	rsi, [rsi]
	jmp	.label_254
.label_294:
	jmp	.label_284
.label_284:
	jmp	.label_310
.label_310:
	mov	rax, qword ptr [rbp - 0xd8]
	mov	rsp, rsp
	test	byte ptr [rax], 1
	jne	.label_312
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x218]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x790]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x798]
	call	remember_copied
	mov	rdx, qword ptr [rbp - 0xd8]
	mov	rsp, rsp
	mov	byte ptr [rdx], 1
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x550], rax
.label_312:
	mov	rax, qword ptr [rbp - 0x688]
	lea	rsi, [rsi]
	test	byte ptr [rax + 0x2e], 1
	nop	
	je	.label_321
	mov	rax, qword ptr [rbp - 0x688]
	mov	rsp, rsp
	test	byte ptr [rax + 0x18], 1
	je	.label_380
	movabs	rdi, OFFSET FLAT:.str.38
	lea	rdi, [rdi]
	call	gettext
	lea	rdi, [rdi]
	mov	edi, 4
	mov	rsi, qword ptr [rbp - 0x218]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x660], rax
	call	quotearg_style
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x660]
	mov	rsi, rax
	mov	rbp, rbp
	mov	al, 0
	call	printf
	mov	dword ptr [rbp - 0x524], eax
	jmp	.label_333
.label_380:
	lea	rsi, [rsi]
	xor	eax, eax
	lea	rsi, [rsi]
	mov	edx, eax
	mov	rdi, qword ptr [rbp - 0x6b8]
	mov	rsi, qword ptr [rbp - 0x218]
	mov	rbp, rbp
	call	emit_verbose
.label_333:
	mov	rsp, rsp
	jmp	.label_321
.label_321:
	jmp	.label_337
.label_468:
	mov	dword ptr [rbp - 0x110], 0
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x688]
	test	byte ptr [rax + 0x21], 1
	jne	.label_338
	nop	
	mov	rax, qword ptr [rbp - 0x688]
	test	byte ptr [rax + 0x25], 1
	mov	rsp, rsp
	je	.label_341
.label_338:
	xor	edx, edx
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x218]
	nop	
	mov	rax, qword ptr [rbp - 0x688]
	lea	rsi, [rsi]
	mov	cl, byte ptr [rax + 0x25]
	mov	rax, qword ptr [rbp - 0x688]
	mov	rsp, rsp
	and	cl, 1
	lea	rdi, [rdi]
	movzx	esi, cl
	lea	rdi, [rdi]
	mov	rcx, rax
	call	set_file_security_ctx
	lea	rdi, [rdi]
	test	al, 1
	nop	
	jne	.label_350
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x688]
	test	byte ptr [rax + 0x26], 1
	mov	rbp, rbp
	je	.label_351
	lea	rdi, [rdi]
	jmp	.label_254
.label_351:
	jmp	.label_350
.label_350:
	mov	rbp, rbp
	jmp	.label_341
.label_341:
	jmp	.label_337
.label_337:
	mov	rax, qword ptr [rbp - 0x688]
	lea	rsi, [rsi]
	test	byte ptr [rax + 0x1c], 1
	mov	rbp, rbp
	je	.label_357
	cmp	qword ptr [rbp - 0x648], 0
	lea	rdi, [rdi]
	je	.label_357
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x648]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax]
	nop	
	cmp	rax, qword ptr [rbp - 0x3c0]
	je	.label_357
	jmp	.label_362
.label_357:
	lea	rcx, [rbp - 0x3c0]
	mov	rdi, qword ptr [rbp - 0x6b8]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x218]
	lea	rsi, [rsi]
	mov	al, byte ptr [rbp - 0x4c9]
	mov	rsp, rsp
	mov	r8, qword ptr [rbp - 0x690]
	mov	rsp, rsp
	mov	r9, qword ptr [rbp - 0x688]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0xd8]
	nop	
	mov	r10, qword ptr [rbp - 0x268]
	and	al, 1
	nop	
	sub	rsp, 0x10
	movzx	r11d, al
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x3d8], rdx
	lea	rdi, [rdi]
	mov	edx, r11d
	mov	rbx, qword ptr [rbp - 0x3d8]
	mov	qword ptr [rsp], rbx
	mov	qword ptr [rsp + 8], r10
	lea	rsi, [rsi]
	call	copy_dir
	add	rsp, 0x10
	and	al, 1
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x502], al
.label_362:
	jmp	.label_381
.label_443:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x688]
	test	byte ptr [rax + 0x2c], 1
	nop	
	je	.label_382
	mov	byte ptr [rbp - 0x221], 1
	nop	
	mov	rax, qword ptr [rbp - 0x6b8]
	movsx	ecx, byte ptr [rax]
	lea	rdi, [rdi]
	cmp	ecx, 0x2f
	je	.label_386
	mov	rdi, qword ptr [rbp - 0x218]
	nop	
	call	dir_name
	mov	rbp, rbp
	mov	cl, 1
	mov	qword ptr [rbp - 0x3e0], rax
	mov	rsi, qword ptr [rbp - 0x3e0]
	mov	edx, OFFSET FLAT:.str_3
	mov	edi, edx
	mov	byte ptr [rbp - 0x669], cl
	lea	rsi, [rsi]
	call	strcmp
	nop	
	cmp	eax, 0
	lea	rsi, [rsi]
	mov	cl, byte ptr [rbp - 0x669]
	mov	byte ptr [rbp - 0x69a], cl
	lea	rsi, [rsi]
	je	.label_392
	mov	rbp, rbp
	movabs	rdi, OFFSET FLAT:.str_3
	lea	rdi, [rdi]
	lea	rsi, [rbp - 0x1b0]
	mov	rbp, rbp
	call	stat
	mov	cl, 1
	cmp	eax, 0
	mov	byte ptr [rbp - 0x69a], cl
	lea	rsi, [rsi]
	jne	.label_392
	mov	rsp, rsp
	lea	rsi, [rbp - 0xc8]
	nop	
	mov	rdi, qword ptr [rbp - 0x3e0]
	lea	rsi, [rsi]
	call	stat
	mov	rbp, rbp
	mov	cl, 1
	nop	
	cmp	eax, 0
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x69a], cl
	mov	rbp, rbp
	jne	.label_392
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x1a8]
	mov	rbp, rbp
	cmp	rdx, qword ptr [rbp - 0xc0]
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x7a9], cl
	jne	.label_434
	mov	rax, qword ptr [rbp - 0x1b0]
	cmp	rax, qword ptr [rbp - 0xc8]
	lea	rsi, [rsi]
	sete	cl
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x7a9], cl
.label_434:
	mov	rbp, rbp
	mov	al, byte ptr [rbp - 0x7a9]
	mov	byte ptr [rbp - 0x69a], al
.label_392:
	mov	al, byte ptr [rbp - 0x69a]
	nop	
	and	al, 1
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x222], al
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x3e0]
	call	free
	test	byte ptr [rbp - 0x222], 1
	jne	.label_415
	nop	
	movabs	rdi, OFFSET FLAT:.str.40
	call	gettext
	xor	edi, edi
	lea	rdi, [rdi]
	mov	esi, 3
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x218]
	mov	qword ptr [rbp - 0x7b8], rax
	call	quotearg_n_style_colon
	xor	esi, esi
	mov	edi, esi
	mov	rdx, qword ptr [rbp - 0x7b8]
	nop	
	mov	rcx, rax
	nop	
	mov	al, 0
	lea	rdi, [rdi]
	call	error
	lea	rdi, [rdi]
	jmp	.label_254
.label_415:
	mov	rsp, rsp
	jmp	.label_386
.label_386:
	mov	rbp, rbp
	mov	esi, 0xffffff9c
	lea	rsi, [rsi]
	mov	r8d, 0xffffffff
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x6b8]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x218]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x688]
	mov	cl, byte ptr [rax + 0x16]
	nop	
	and	cl, 1
	nop	
	movzx	ecx, cl
	call	force_symlinkat
	lea	rsi, [rsi]
	xor	ecx, ecx
	mov	dword ptr [rbp - 0x3fc], eax
	mov	rsp, rsp
	cmp	ecx, dword ptr [rbp - 0x3fc]
	jge	.label_436
	lea	rdi, [rdi]
	movabs	rdi, OFFSET FLAT:.str.41_0
	mov	esi, dword ptr [rbp - 0x3fc]
	nop	
	mov	dword ptr [rbp - 0x310], esi
	mov	rsp, rsp
	call	gettext
	xor	edi, edi
	mov	rsp, rsp
	mov	esi, 4
	mov	rdx, qword ptr [rbp - 0x218]
	mov	qword ptr [rbp - 0x5b8], rax
	mov	rsp, rsp
	call	quotearg_n_style
	mov	edi, 1
	mov	esi, 4
	mov	rdx, qword ptr [rbp - 0x6b8]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x5e8], rax
	lea	rsi, [rsi]
	call	quotearg_n_style
	lea	rsi, [rsi]
	xor	edi, edi
	mov	esi, dword ptr [rbp - 0x310]
	mov	rdx, qword ptr [rbp - 0x5b8]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x5e8]
	nop	
	mov	r8, rax
	lea	rdi, [rdi]
	mov	al, 0
	call	error
	jmp	.label_254
.label_436:
	jmp	.label_431
.label_382:
	mov	rax, qword ptr [rbp - 0x688]
	test	byte ptr [rax + 0x17], 1
	je	.label_446
	mov	al, 1
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x688]
	test	byte ptr [rcx + 0x16], 1
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x699], al
	mov	rsp, rsp
	jne	.label_451
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x688]
	nop	
	cmp	dword ptr [rax + 8], 3
	sete	cl
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x699], cl
.label_451:
	lea	rdi, [rdi]
	mov	al, byte ptr [rbp - 0x699]
	mov	rbp, rbp
	xor	ecx, ecx
	mov	rsp, rsp
	and	al, 1
	nop	
	mov	byte ptr [rbp - 0x329], al
	nop	
	mov	rdi, qword ptr [rbp - 0x6b8]
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x218]
	mov	al, byte ptr [rbp - 0x329]
	lea	rsi, [rsi]
	mov	dl, byte ptr [rbp - 0x69b]
	lea	rdi, [rdi]
	and	al, 1
	and	dl, 1
	mov	rbp, rbp
	movzx	r8d, al
	mov	byte ptr [rbp - 0x612], dl
	nop	
	mov	edx, r8d
	mov	al, byte ptr [rbp - 0x612]
	movzx	r8d, al
	call	create_hard_link
	test	al, 1
	lea	rdi, [rdi]
	jne	.label_463
	lea	rsi, [rsi]
	jmp	.label_254
.label_463:
	jmp	.label_429
.label_446:
	mov	eax, dword ptr [rbp - 0xfc]
	and	eax, 0xf000
	cmp	eax, 0x8000
	mov	rbp, rbp
	je	.label_467
	mov	rax, qword ptr [rbp - 0x688]
	lea	rsi, [rsi]
	test	byte ptr [rax + 0x14], 1
	nop	
	je	.label_470
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0xfc]
	nop	
	and	eax, 0xf000
	nop	
	cmp	eax, 0xa000
	mov	rsp, rsp
	je	.label_470
.label_467:
	lea	rdi, [rdi]
	lea	r9, [rbp - 0x4c9]
	lea	rax, [rbp - 0x3c0]
	mov	byte ptr [rbp - 0x19], 1
	nop	
	mov	rdi, qword ptr [rbp - 0x6b8]
	mov	rsi, qword ptr [rbp - 0x218]
	mov	rdx, qword ptr [rbp - 0x688]
	mov	ecx, dword ptr [rbp - 0x1c4]
	and	ecx, 0x1ff
	mov	r8d, dword ptr [rbp - 0x110]
	lea	rdi, [rdi]
	sub	rsp, 0x10
	mov	rbp, rbp
	mov	qword ptr [rsp], rax
	call	copy_reg
	add	rsp, 0x10
	lea	rsi, [rsi]
	test	al, 1
	jne	.label_256
	lea	rdi, [rdi]
	jmp	.label_254
.label_256:
	mov	rsp, rsp
	jmp	.label_258
.label_470:
	mov	eax, dword ptr [rbp - 0xfc]
	and	eax, 0xf000
	cmp	eax, 0x1000
	jne	.label_261
	mov	rbp, rbp
	xor	eax, eax
	mov	edx, eax
	mov	rdi, qword ptr [rbp - 0x218]
	mov	eax, dword ptr [rbp - 0xfc]
	mov	rsp, rsp
	mov	ecx, dword ptr [rbp - 0x110]
	mov	rsp, rsp
	xor	ecx, 0xffffffff
	nop	
	and	eax, ecx
	mov	esi, eax
	call	__mknod
	lea	rsi, [rsi]
	cmp	eax, 0
	je	.label_275
	mov	rdi, qword ptr [rbp - 0x218]
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0xfc]
	mov	rsp, rsp
	and	eax, 0xffffefff
	mov	ecx, dword ptr [rbp - 0x110]
	xor	ecx, 0xffffffff
	mov	rbp, rbp
	and	eax, ecx
	mov	esi, eax
	call	mkfifo
	cmp	eax, 0
	je	.label_279
	call	__errno_location
	movabs	rdi, OFFSET FLAT:.str.42_0
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0x100], esi
	call	gettext
	mov	edi, 4
	mov	rsi, qword ptr [rbp - 0x218]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x608], rax
	call	quotearg_style
	xor	edi, edi
	mov	esi, dword ptr [rbp - 0x100]
	mov	rdx, qword ptr [rbp - 0x608]
	lea	rdi, [rdi]
	mov	rcx, rax
	mov	al, 0
	lea	rdi, [rdi]
	call	error
	jmp	.label_254
.label_279:
	jmp	.label_275
.label_275:
	jmp	.label_297
.label_261:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0xfc]
	and	eax, 0xf000
	cmp	eax, 0x6000
	je	.label_301
	mov	eax, dword ptr [rbp - 0xfc]
	and	eax, 0xf000
	cmp	eax, 0x2000
	je	.label_301
	nop	
	mov	eax, dword ptr [rbp - 0xfc]
	mov	rbp, rbp
	and	eax, 0xf000
	cmp	eax, 0xc000
	lea	rdi, [rdi]
	jne	.label_305
.label_301:
	mov	rdi, qword ptr [rbp - 0x218]
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0xfc]
	mov	ecx, dword ptr [rbp - 0x110]
	lea	rsi, [rsi]
	xor	ecx, 0xffffffff
	and	eax, ecx
	mov	rdx, qword ptr [rbp - 0x398]
	mov	rbp, rbp
	mov	esi, eax
	lea	rsi, [rsi]
	call	__mknod
	mov	rbp, rbp
	cmp	eax, 0
	mov	rsp, rsp
	je	.label_314
	call	__errno_location
	movabs	rdi, OFFSET FLAT:.str.43_0
	mov	esi, dword ptr [rax]
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x618], esi
	mov	rsp, rsp
	call	gettext
	mov	rbp, rbp
	mov	edi, 4
	mov	rsi, qword ptr [rbp - 0x218]
	mov	qword ptr [rbp - 0x18], rax
	call	quotearg_style
	mov	rbp, rbp
	xor	edi, edi
	mov	esi, dword ptr [rbp - 0x618]
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	mov	rcx, rax
	mov	al, 0
	lea	rdi, [rdi]
	call	error
	jmp	.label_254
.label_314:
	jmp	.label_328
.label_305:
	mov	eax, dword ptr [rbp - 0xfc]
	and	eax, 0xf000
	lea	rsi, [rsi]
	cmp	eax, 0xa000
	jne	.label_330
	mov	rdi, qword ptr [rbp - 0x6b8]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x390]
	call	areadlink_with_size
	nop	
	mov	qword ptr [rbp - 0x238], rax
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x221], 1
	cmp	qword ptr [rbp - 0x238], 0
	mov	rsp, rsp
	jne	.label_437
	call	__errno_location
	movabs	rdi, OFFSET FLAT:.str.44_0
	nop	
	mov	esi, dword ptr [rax]
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x34], esi
	call	gettext
	mov	edi, 4
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x6b8]
	mov	qword ptr [rbp - 0x600], rax
	call	quotearg_style
	mov	rbp, rbp
	xor	edi, edi
	lea	rdi, [rdi]
	mov	esi, dword ptr [rbp - 0x34]
	mov	rdx, qword ptr [rbp - 0x600]
	lea	rdi, [rdi]
	mov	rcx, rax
	mov	al, 0
	call	error
	lea	rsi, [rsi]
	jmp	.label_254
.label_437:
	mov	esi, 0xffffff9c
	mov	rbp, rbp
	mov	r8d, 0xffffffff
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x238]
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x218]
	mov	rax, qword ptr [rbp - 0x688]
	mov	cl, byte ptr [rax + 0x16]
	mov	rsp, rsp
	and	cl, 1
	movzx	ecx, cl
	call	force_symlinkat
	xor	ecx, ecx
	mov	dword ptr [rbp - 0x328], eax
	mov	rbp, rbp
	cmp	ecx, dword ptr [rbp - 0x328]
	jge	.label_353
	mov	rax, qword ptr [rbp - 0x688]
	mov	rsp, rsp
	test	byte ptr [rax + 0x2d], 1
	je	.label_353
	test	byte ptr [rbp - 0x4c9], 1
	mov	rbp, rbp
	jne	.label_353
	mov	eax, dword ptr [rbp - 0x780]
	and	eax, 0xf000
	cmp	eax, 0xa000
	mov	rbp, rbp
	jne	.label_353
	mov	rax, qword ptr [rbp - 0x768]
	mov	rdi, qword ptr [rbp - 0x238]
	mov	qword ptr [rbp - 0xf8], rax
	mov	rsp, rsp
	call	strlen
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0xf8]
	nop	
	cmp	rdi, rax
	jne	.label_353
	nop	
	mov	rdi, qword ptr [rbp - 0x218]
	mov	rsi, qword ptr [rbp - 0x768]
	call	areadlink_with_size
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x108], rax
	cmp	qword ptr [rbp - 0x108], 0
	je	.label_368
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x108]
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x238]
	nop	
	call	strcmp
	cmp	eax, 0
	jne	.label_375
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x328], 0
.label_375:
	mov	rdi, qword ptr [rbp - 0x108]
	call	free
.label_368:
	nop	
	jmp	.label_353
.label_353:
	mov	rdi, qword ptr [rbp - 0x238]
	lea	rsi, [rsi]
	call	free
	lea	rdi, [rdi]
	xor	eax, eax
	cmp	eax, dword ptr [rbp - 0x328]
	jge	.label_383
	mov	rsp, rsp
	movabs	rdi, OFFSET FLAT:.str.45_0
	mov	esi, dword ptr [rbp - 0x328]
	mov	dword ptr [rbp - 0x5ac], esi
	lea	rsi, [rsi]
	call	gettext
	mov	rsp, rsp
	mov	edi, 4
	nop	
	mov	rsi, qword ptr [rbp - 0x218]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x5d0], rax
	nop	
	call	quotearg_style
	mov	rsp, rsp
	xor	edi, edi
	mov	esi, dword ptr [rbp - 0x5ac]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x5d0]
	mov	rcx, rax
	mov	al, 0
	call	error
	lea	rsi, [rsi]
	jmp	.label_254
.label_383:
	mov	rax, qword ptr [rbp - 0x688]
	lea	rdi, [rdi]
	test	byte ptr [rax + 0x25], 1
	je	.label_394
	call	restore_default_fscreatecon_or_die
.label_394:
	nop	
	mov	rax, qword ptr [rbp - 0x688]
	nop	
	test	byte ptr [rax + 0x1d], 1
	lea	rsi, [rsi]
	je	.label_286
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x218]
	lea	rdi, [rdi]
	mov	esi, dword ptr [rbp - 0x3a4]
	mov	edx, dword ptr [rbp - 0x3a0]
	call	lchown
	cmp	eax, 0
	je	.label_400
	nop	
	mov	rdi, qword ptr [rbp - 0x688]
	lea	rdi, [rdi]
	call	chown_failure_ok
	mov	rbp, rbp
	test	al, 1
	nop	
	jne	.label_400
	mov	rsp, rsp
	call	__errno_location
	lea	rsi, [rsi]
	movabs	rdi, OFFSET FLAT:.str.46
	mov	esi, dword ptr [rax]
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x5d4], esi
	call	gettext
	xor	edi, edi
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x218]
	mov	rsp, rsp
	mov	esi, dword ptr [rbp - 0x5d4]
	lea	rsi, [rsi]
	mov	rdx, rax
	mov	al, 0
	lea	rsi, [rsi]
	call	error
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x688]
	test	byte ptr [rcx + 0x24], 1
	lea	rdi, [rdi]
	je	.label_413
	mov	rsp, rsp
	jmp	.label_254
.label_413:
	jmp	.label_414
.label_400:
	jmp	.label_414
.label_414:
	jmp	.label_286
.label_286:
	jmp	.label_417
.label_330:
	lea	rdi, [rdi]
	movabs	rdi, OFFSET FLAT:.str.47
	nop	
	call	gettext
	mov	edi, 4
	mov	rsi, qword ptr [rbp - 0x6b8]
	mov	qword ptr [rbp - 0x5a0], rax
	call	quotearg_style
	xor	edi, edi
	mov	dword ptr [rbp - 0x4e4], edi
	mov	esi, dword ptr [rbp - 0x4e4]
	mov	rdx, qword ptr [rbp - 0x5a0]
	mov	rsp, rsp
	mov	rcx, rax
	mov	al, 0
	mov	rbp, rbp
	call	error
	lea	rsi, [rsi]
	jmp	.label_254
.label_417:
	lea	rsi, [rsi]
	jmp	.label_328
.label_328:
	jmp	.label_297
.label_297:
	jmp	.label_258
.label_258:
	mov	rsp, rsp
	jmp	.label_429
.label_429:
	mov	rbp, rbp
	jmp	.label_431
.label_431:
	mov	rbp, rbp
	jmp	.label_381
.label_381:
	test	byte ptr [rbp - 0x4c9], 1
	lea	rdi, [rdi]
	jne	.label_432
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x688]
	test	byte ptr [rax + 0x14], 1
	jne	.label_432
	mov	eax, dword ptr [rbp - 0xfc]
	and	eax, 0xf000
	lea	rsi, [rsi]
	cmp	eax, 0x4000
	je	.label_432
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x688]
	test	byte ptr [rax + 0x21], 1
	nop	
	jne	.label_440
	mov	rax, qword ptr [rbp - 0x688]
	mov	rsp, rsp
	test	byte ptr [rax + 0x25], 1
	je	.label_432
.label_440:
	xor	edx, edx
	mov	rdi, qword ptr [rbp - 0x218]
	mov	rax, qword ptr [rbp - 0x688]
	mov	cl, byte ptr [rax + 0x25]
	mov	rax, qword ptr [rbp - 0x688]
	mov	rbp, rbp
	and	cl, 1
	lea	rsi, [rsi]
	movzx	esi, cl
	nop	
	mov	rcx, rax
	lea	rsi, [rsi]
	call	set_file_security_ctx
	nop	
	test	al, 1
	jne	.label_273
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x688]
	test	byte ptr [rax + 0x26], 1
	je	.label_444
	lea	rdi, [rdi]
	jmp	.label_254
.label_444:
	mov	rbp, rbp
	jmp	.label_273
.label_273:
	jmp	.label_432
.label_432:
	test	byte ptr [rbp - 0x11a], 1
	je	.label_292
	mov	rax, qword ptr [rbp - 0x688]
	lea	rdi, [rdi]
	cmp	qword ptr [rax + 0x40], 0
	mov	rbp, rbp
	je	.label_292
	lea	rsi, [rbp - 0x498]
	mov	rdi, qword ptr [rbp - 0x218]
	call	__lstat
	cmp	eax, 0
	jne	.label_456
	mov	rbp, rbp
	lea	rdx, [rbp - 0x498]
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x688]
	mov	rbp, rbp
	mov	rdi, qword ptr [rax + 0x40]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x218]
	call	record_file
.label_456:
	jmp	.label_292
.label_292:
	mov	rax, qword ptr [rbp - 0x688]
	nop	
	test	byte ptr [rax + 0x17], 1
	je	.label_361
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0xfc]
	and	eax, 0xf000
	cmp	eax, 0x4000
	mov	rbp, rbp
	je	.label_361
	mov	al, byte ptr [rbp - 0x502]
	and	al, 1
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x625], al
	lea	rdi, [rdi]
	jmp	.label_252
.label_361:
	test	byte ptr [rbp - 0x19], 1
	nop	
	je	.label_465
	lea	rdi, [rdi]
	mov	al, byte ptr [rbp - 0x502]
	lea	rdi, [rdi]
	and	al, 1
	nop	
	mov	byte ptr [rbp - 0x625], al
	jmp	.label_252
.label_465:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x688]
	lea	rdi, [rdi]
	test	byte ptr [rax + 0x1f], 1
	je	.label_298
	lea	rdi, [rbp - 0x3c0]
	lea	rdi, [rdi]
	call	get_stat_atime
	lea	rdi, [rbp - 0x3c0]
	mov	qword ptr [rbp - 0x6d8], rax
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x6d0], rdx
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x6d8]
	mov	qword ptr [rbp - 0x700], rax
	nop	
	mov	rax, qword ptr [rbp - 0x6d0]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x6f8], rax
	mov	rsp, rsp
	call	get_stat_mtime
	mov	qword ptr [rbp - 0x1c0], rax
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x1b8], rdx
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x1c0]
	mov	qword ptr [rbp - 0x6f0], rax
	nop	
	mov	rax, qword ptr [rbp - 0x1b8]
	mov	qword ptr [rbp - 0x6e8], rax
	lea	rdi, [rdi]
	test	byte ptr [rbp - 0x221], 1
	lea	rsi, [rsi]
	je	.label_250
	lea	rsi, [rbp - 0x700]
	mov	rdi, qword ptr [rbp - 0x218]
	mov	rbp, rbp
	call	utimens_symlink
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x228], eax
	jmp	.label_265
.label_250:
	lea	rsi, [rbp - 0x700]
	mov	rdi, qword ptr [rbp - 0x218]
	call	utimens
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x228], eax
.label_265:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x228]
	lea	rsi, [rsi]
	cmp	eax, 0
	je	.label_365
	call	__errno_location
	mov	rbp, rbp
	movabs	rdi, OFFSET FLAT:.str.48
	lea	rsi, [rsi]
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0x650], esi
	mov	rsp, rsp
	call	gettext
	mov	edi, 4
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x218]
	mov	qword ptr [rbp - 0x568], rax
	call	quotearg_style
	xor	edi, edi
	mov	esi, dword ptr [rbp - 0x650]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x568]
	mov	rcx, rax
	lea	rsi, [rsi]
	mov	al, 0
	nop	
	call	error
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x688]
	mov	rsp, rsp
	test	byte ptr [rcx + 0x24], 1
	lea	rdi, [rdi]
	je	.label_288
	mov	byte ptr [rbp - 0x625], 0
	mov	rbp, rbp
	jmp	.label_252
.label_288:
	jmp	.label_365
.label_365:
	jmp	.label_298
.label_298:
	test	byte ptr [rbp - 0x221], 1
	jne	.label_300
	mov	rax, qword ptr [rbp - 0x688]
	test	byte ptr [rax + 0x1d], 1
	je	.label_300
	lea	rdi, [rdi]
	test	byte ptr [rbp - 0x4c9], 1
	lea	rsi, [rsi]
	jne	.label_304
	mov	eax, dword ptr [rbp - 0x3a4]
	mov	rbp, rbp
	cmp	eax, dword ptr [rbp - 0x77c]
	jne	.label_304
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x3a0]
	cmp	eax, dword ptr [rbp - 0x778]
	mov	rsp, rsp
	je	.label_300
.label_304:
	mov	rdi, qword ptr [rbp - 0x688]
	mov	rsi, qword ptr [rbp - 0x218]
	movzx	eax, byte ptr [rbp - 0x4c9]
	mov	rsp, rsp
	and	eax, 1
	mov	edx, 0xffffffff
	mov	rsp, rsp
	lea	rcx, [rbp - 0x3c0]
	lea	r9, [rbp - 0x798]
	mov	r8d, eax
	call	set_owner
	mov	rbp, rbp
	mov	edx, eax
	sub	eax, -1
	mov	dword ptr [rbp - 0x5d8], edx
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0xcc], eax
	je	.label_319
	jmp	.label_370
.label_370:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x5d8]
	test	eax, eax
	nop	
	je	.label_373
	jmp	.label_324
.label_319:
	mov	byte ptr [rbp - 0x625], 0
	jmp	.label_252
.label_373:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0xfc]
	and	eax, 0xfffff1ff
	mov	dword ptr [rbp - 0xfc], eax
.label_324:
	jmp	.label_300
.label_300:
	mov	rax, qword ptr [rbp - 0x688]
	test	byte ptr [rax + 0x27], 1
	mov	rbp, rbp
	je	.label_331
	nop	
	mov	eax, 0xffffffff
	mov	rdi, qword ptr [rbp - 0x6b8]
	mov	rdx, qword ptr [rbp - 0x218]
	lea	rdi, [rdi]
	mov	r8, qword ptr [rbp - 0x688]
	mov	esi, eax
	nop	
	mov	ecx, eax
	call	copy_attr
	lea	rdi, [rdi]
	test	al, 1
	jne	.label_331
	mov	rax, qword ptr [rbp - 0x688]
	mov	rbp, rbp
	test	byte ptr [rax + 0x28], 1
	lea	rdi, [rdi]
	je	.label_331
	mov	byte ptr [rbp - 0x625], 0
	jmp	.label_252
.label_331:
	test	byte ptr [rbp - 0x221], 1
	mov	rsp, rsp
	je	.label_339
	mov	al, byte ptr [rbp - 0x502]
	lea	rsi, [rsi]
	and	al, 1
	mov	byte ptr [rbp - 0x625], al
	nop	
	jmp	.label_252
.label_339:
	lea	rsi, [rsi]
	mov	esi, 0xffffffff
	nop	
	lea	rdx, [rbp - 0x3c0]
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x218]
	call	set_author
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x688]
	lea	rdi, [rdi]
	test	byte ptr [rdx + 0x1e], 1
	jne	.label_345
	mov	rax, qword ptr [rbp - 0x688]
	test	byte ptr [rax + 0x18], 1
	lea	rdi, [rdi]
	je	.label_348
.label_345:
	mov	eax, 0xffffffff
	nop	
	mov	rdi, qword ptr [rbp - 0x6b8]
	mov	rdx, qword ptr [rbp - 0x218]
	mov	r8d, dword ptr [rbp - 0xfc]
	lea	rsi, [rsi]
	mov	esi, eax
	lea	rsi, [rsi]
	mov	ecx, eax
	lea	rsi, [rsi]
	call	copy_acl
	nop	
	cmp	eax, 0
	mov	rsp, rsp
	je	.label_355
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x688]
	nop	
	test	byte ptr [rax + 0x24], 1
	mov	rsp, rsp
	je	.label_355
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x625], 0
	nop	
	jmp	.label_252
.label_355:
	jmp	.label_296
.label_348:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x688]
	mov	rbp, rbp
	test	byte ptr [rax + 0x2b], 1
	je	.label_360
	mov	esi, 0xffffffff
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x218]
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x688]
	mov	edx, dword ptr [rax + 0x10]
	mov	rsp, rsp
	call	set_acl
	cmp	eax, 0
	mov	rsp, rsp
	je	.label_371
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x625], 0
	jmp	.label_252
.label_371:
	jmp	.label_372
.label_360:
	mov	rax, qword ptr [rbp - 0x688]
	nop	
	test	byte ptr [rax + 0x20], 1
	je	.label_311
	test	byte ptr [rbp - 0x4c9], 1
	mov	rsp, rsp
	je	.label_311
	mov	al, 1
	nop	
	mov	ecx, dword ptr [rbp - 0xfc]
	mov	rsp, rsp
	and	ecx, 0xf000
	cmp	ecx, 0x4000
	mov	byte ptr [rbp - 0x229], al
	lea	rdi, [rdi]
	je	.label_377
	mov	eax, dword ptr [rbp - 0xfc]
	lea	rsi, [rsi]
	and	eax, 0xf000
	mov	rsp, rsp
	cmp	eax, 0xc000
	sete	cl
	mov	byte ptr [rbp - 0x229], cl
.label_377:
	mov	al, byte ptr [rbp - 0x229]
	mov	ecx, 0x1b6
	mov	edx, 0x1ff
	lea	rsi, [rsi]
	test	al, 1
	mov	rsp, rsp
	cmovne	ecx, edx
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x7bc], ecx
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x218]
	lea	rsi, [rsi]
	mov	ecx, dword ptr [rbp - 0x7bc]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x28], rdi
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x6ac], ecx
	mov	rsp, rsp
	call	cached_umask
	nop	
	mov	esi, 0xffffffff
	xor	eax, 0xffffffff
	mov	ecx, dword ptr [rbp - 0x6ac]
	and	ecx, eax
	mov	rdi, qword ptr [rbp - 0x28]
	mov	edx, ecx
	mov	rbp, rbp
	call	set_acl
	lea	rsi, [rsi]
	cmp	eax, 0
	je	.label_376
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x625], 0
	mov	rsp, rsp
	jmp	.label_252
.label_376:
	jmp	.label_396
.label_311:
	nop	
	cmp	dword ptr [rbp - 0x110], 0
	mov	rbp, rbp
	je	.label_398
	lea	rdi, [rdi]
	call	cached_umask
	nop	
	xor	eax, 0xffffffff
	and	eax, dword ptr [rbp - 0x110]
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x110], eax
	cmp	dword ptr [rbp - 0x110], 0
	je	.label_405
	nop	
	test	byte ptr [rbp - 0x62d], 1
	nop	
	jne	.label_405
	lea	rdi, [rdi]
	test	byte ptr [rbp - 0x4c9], 1
	mov	rsp, rsp
	je	.label_408
	lea	rsi, [rbp - 0x798]
	nop	
	mov	rdi, qword ptr [rbp - 0x218]
	mov	rsp, rsp
	call	__lstat
	mov	rbp, rbp
	cmp	eax, 0
	je	.label_408
	lea	rsi, [rsi]
	call	__errno_location
	movabs	rdi, OFFSET FLAT:.str.12_1
	nop	
	mov	esi, dword ptr [rax]
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x4b0], esi
	call	gettext
	lea	rsi, [rsi]
	mov	edi, 4
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x218]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x620], rax
	mov	rsp, rsp
	call	quotearg_style
	mov	rsp, rsp
	xor	edi, edi
	mov	esi, dword ptr [rbp - 0x4b0]
	mov	rdx, qword ptr [rbp - 0x620]
	lea	rdi, [rdi]
	mov	rcx, rax
	nop	
	mov	al, 0
	nop	
	call	error
	mov	byte ptr [rbp - 0x625], 0
	nop	
	jmp	.label_252
.label_408:
	mov	eax, dword ptr [rbp - 0x780]
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0xec], eax
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x110]
	mov	ecx, dword ptr [rbp - 0xec]
	xor	ecx, 0xffffffff
	mov	rsp, rsp
	and	eax, ecx
	lea	rdi, [rdi]
	cmp	eax, 0
	lea	rsi, [rsi]
	je	.label_426
	mov	byte ptr [rbp - 0x62d], 1
.label_426:
	jmp	.label_405
.label_405:
	mov	rsp, rsp
	jmp	.label_398
.label_398:
	mov	rbp, rbp
	test	byte ptr [rbp - 0x62d], 1
	nop	
	je	.label_433
	mov	rdi, qword ptr [rbp - 0x218]
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0xec]
	or	eax, dword ptr [rbp - 0x110]
	mov	esi, eax
	nop	
	call	chmod
	mov	rbp, rbp
	cmp	eax, 0
	lea	rsi, [rsi]
	je	.label_438
	call	__errno_location
	mov	rsp, rsp
	movabs	rdi, OFFSET FLAT:.str.1_2
	mov	esi, dword ptr [rax]
	nop	
	mov	dword ptr [rbp - 0x314], esi
	call	gettext
	mov	edi, 4
	nop	
	mov	rsi, qword ptr [rbp - 0x218]
	mov	qword ptr [rbp - 0x5c8], rax
	call	quotearg_style
	mov	rbp, rbp
	xor	edi, edi
	mov	esi, dword ptr [rbp - 0x314]
	mov	rdx, qword ptr [rbp - 0x5c8]
	nop	
	mov	rcx, rax
	mov	rbp, rbp
	mov	al, 0
	nop	
	call	error
	mov	rcx, qword ptr [rbp - 0x688]
	mov	rsp, rsp
	test	byte ptr [rcx + 0x24], 1
	nop	
	je	.label_442
	mov	byte ptr [rbp - 0x625], 0
	jmp	.label_252
.label_442:
	nop	
	jmp	.label_438
.label_438:
	lea	rdi, [rdi]
	jmp	.label_433
.label_433:
	lea	rdi, [rdi]
	jmp	.label_396
.label_396:
	lea	rdi, [rdi]
	jmp	.label_372
.label_372:
	jmp	.label_296
.label_296:
	lea	rsi, [rsi]
	mov	al, byte ptr [rbp - 0x502]
	lea	rdi, [rdi]
	and	al, 1
	nop	
	mov	byte ptr [rbp - 0x625], al
	jmp	.label_252
.label_254:
	mov	rax, qword ptr [rbp - 0x688]
	test	byte ptr [rax + 0x25], 1
	lea	rdi, [rdi]
	je	.label_322
	lea	rsi, [rsi]
	call	restore_default_fscreatecon_or_die
.label_322:
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x1d0], 0
	lea	rdi, [rdi]
	jne	.label_458
	mov	rdi, qword ptr [rbp - 0x3b8]
	nop	
	mov	rsi, qword ptr [rbp - 0x3c0]
	lea	rdi, [rdi]
	call	forget_created
.label_458:
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x250], 0
	je	.label_270
	mov	rdi, qword ptr [rbp - 0x250]
	mov	rsi, qword ptr [rbp - 0x218]
	mov	rsp, rsp
	call	rename
	lea	rsi, [rsi]
	cmp	eax, 0
	lea	rdi, [rdi]
	je	.label_364
	lea	rdi, [rdi]
	call	__errno_location
	mov	rbp, rbp
	movabs	rdi, OFFSET FLAT:.str.50
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0x26c], esi
	mov	rbp, rbp
	call	gettext
	mov	edi, 4
	mov	rsi, qword ptr [rbp - 0x218]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x7a0], rax
	lea	rdi, [rdi]
	call	quotearg_style
	xor	edi, edi
	mov	rsp, rsp
	mov	esi, dword ptr [rbp - 0x26c]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x7a0]
	lea	rsi, [rsi]
	mov	rcx, rax
	mov	al, 0
	call	error
	mov	rbp, rbp
	jmp	.label_269
.label_364:
	mov	rax, qword ptr [rbp - 0x688]
	lea	rsi, [rsi]
	test	byte ptr [rax + 0x2e], 1
	lea	rsi, [rsi]
	je	.label_476
	movabs	rdi, OFFSET FLAT:.str.51
	call	gettext
	mov	rbp, rbp
	xor	edi, edi
	lea	rsi, [rsi]
	mov	esi, 4
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x250]
	mov	qword ptr [rbp - 0x510], rax
	lea	rdi, [rdi]
	call	quotearg_n_style
	nop	
	mov	edi, 1
	mov	esi, 4
	mov	rdx, qword ptr [rbp - 0x218]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x5e0], rax
	lea	rdi, [rdi]
	call	quotearg_n_style
	mov	rdi, qword ptr [rbp - 0x510]
	nop	
	mov	rsi, qword ptr [rbp - 0x5e0]
	lea	rdi, [rdi]
	mov	rdx, rax
	lea	rdi, [rdi]
	mov	al, 0
	nop	
	call	printf
	nop	
	mov	dword ptr [rbp - 0x62c], eax
.label_476:
	jmp	.label_269
.label_269:
	mov	rsp, rsp
	jmp	.label_270
.label_270:
	mov	byte ptr [rbp - 0x625], 0
.label_252:
	lea	rsi, [rsi]
	mov	al, byte ptr [rbp - 0x625]
	mov	rsp, rsp
	and	al, 1
	lea	rdi, [rdi]
	movzx	eax, al
	mov	rbp, rbp
	lea	rsp, [rbp - 0x10]
	nop	
	pop	rbx
	lea	rsi, [rsi]
	pop	r14
	lea	rsi, [rsi]
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40a0c0

	.globl cp_options_default
	.type cp_options_default, @function
cp_options_default:
	push	rbp
	mov	rbp, rsp
	lea	rdi, [rdi]
	sub	rsp, 0x10
	lea	rdi, [rdi]
	xor	esi, esi
	mov	rbp, rbp
	mov	eax, 0x50
	mov	edx, eax
	mov	qword ptr [rbp - 8], rdi
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 8]
	mov	rbp, rbp
	call	memset
	call	geteuid
	nop	
	cmp	eax, 0
	lea	rdi, [rdi]
	sete	cl
	mov	rdx, qword ptr [rbp - 8]
	mov	r8b, cl
	and	r8b, 1
	mov	rbp, rbp
	mov	byte ptr [rdx + 0x1b], r8b
	mov	rdx, qword ptr [rbp - 8]
	and	cl, 1
	mov	byte ptr [rdx + 0x1a], cl
	mov	rdx, qword ptr [rbp - 8]
	nop	
	mov	dword ptr [rdx + 0x34], 0xffffffff
	mov	rbp, rbp
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40a130

	.globl chown_failure_ok
	.type chown_failure_ok, @function
chown_failure_ok:
	lea	rsi, [rsi]
	push	rbp
	lea	rsi, [rsi]
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 0x10], rdi
	call	__errno_location
	cmp	dword ptr [rax], 1
	je	.label_481
	mov	rsp, rsp
	call	__errno_location
	xor	ecx, ecx
	mov	dl, cl
	cmp	dword ptr [rax], 0x16
	mov	byte ptr [rbp - 1], dl
	jne	.label_482
.label_481:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	cl, byte ptr [rax + 0x1a]
	lea	rdi, [rdi]
	xor	cl, 0xff
	mov	byte ptr [rbp - 1], cl
.label_482:
	mov	al, byte ptr [rbp - 1]
	nop	
	and	al, 1
	movzx	eax, al
	mov	rbp, rbp
	add	rsp, 0x10
	pop	rbp
	mov	rsp, rsp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40a1a0

	.globl cached_umask
	.type cached_umask, @function
cached_umask:
	mov	rsp, rsp
	push	rbp
	mov	rbp, rsp
	mov	rbp, rbp
	sub	rsp, 0x10
	nop	
	cmp	dword ptr [dword ptr [cached_umask.mask]],  -1
	jne	.label_483
	mov	rsp, rsp
	xor	edi, edi
	mov	rbp, rbp
	call	umask
	mov	rbp, rbp
	mov	dword ptr [dword ptr [cached_umask.mask]],  eax
	mov	edi,  dword ptr [dword ptr [cached_umask.mask]]
	mov	rsp, rsp
	call	umask
	mov	dword ptr [rbp - 4], eax
.label_483:
	nop	
	mov	eax,  dword ptr [dword ptr [cached_umask.mask]]
	lea	rsi, [rsi]
	add	rsp, 0x10
	lea	rdi, [rdi]
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40a200

	.globl should_dereference
	.type should_dereference, @function
should_dereference:
	lea	rdi, [rdi]
	push	rbp
	mov	rbp, rsp
	mov	rsp, rsp
	mov	al, sil
	lea	rdi, [rdi]
	mov	cl, 1
	mov	qword ptr [rbp - 0x10], rdi
	and	al, 1
	nop	
	mov	byte ptr [rbp - 0x11], al
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	cmp	dword ptr [rdi + 4], 4
	mov	byte ptr [rbp - 2], cl
	mov	rsp, rsp
	je	.label_484
	xor	eax, eax
	mov	cl, al
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	cmp	dword ptr [rdx + 4], 3
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 1], cl
	mov	rbp, rbp
	jne	.label_485
	mov	al, byte ptr [rbp - 0x11]
	mov	byte ptr [rbp - 1], al
.label_485:
	mov	rbp, rbp
	mov	al, byte ptr [rbp - 1]
	mov	rbp, rbp
	mov	byte ptr [rbp - 2], al
.label_484:
	lea	rsi, [rsi]
	mov	al, byte ptr [rbp - 2]
	and	al, 1
	movzx	eax, al
	mov	rbp, rbp
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40a280

	.globl same_file_ok
	.type same_file_ok, @function
same_file_ok:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x190
	xor	eax, eax
	mov	rsp, rsp
	mov	r10b, al
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x160], rdi
	mov	qword ptr [rbp - 0x178], rsi
	mov	qword ptr [rbp - 0x28], rdx
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x180], rcx
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 8], r8
	mov	qword ptr [rbp - 0x188], r9
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x178]
	mov	rcx, qword ptr [rcx + 8]
	mov	rdx, qword ptr [rbp - 0x180]
	lea	rdi, [rdi]
	cmp	rcx, qword ptr [rdx + 8]
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x161], r10b
	lea	rsi, [rsi]
	jne	.label_510
	mov	rax, qword ptr [rbp - 0x178]
	mov	rax, qword ptr [rax]
	nop	
	mov	rcx, qword ptr [rbp - 0x180]
	cmp	rax, qword ptr [rcx]
	mov	rsp, rsp
	sete	dl
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x161], dl
.label_510:
	mov	al, byte ptr [rbp - 0x161]
	lea	rdi, [rdi]
	and	al, 1
	nop	
	mov	byte ptr [rbp - 0x162], al
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x188]
	nop	
	mov	byte ptr [rcx], 0
	lea	rdi, [rdi]
	test	byte ptr [rbp - 0x162], 1
	nop	
	je	.label_492
	mov	rax, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	test	byte ptr [rax + 0x17], 1
	lea	rdi, [rdi]
	je	.label_492
	mov	rax, qword ptr [rbp - 0x188]
	mov	byte ptr [rax], 1
	mov	byte ptr [rbp - 0x149], 1
	jmp	.label_487
.label_492:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 8]
	cmp	dword ptr [rax + 4], 2
	jne	.label_504
	lea	rdi, [rdi]
	mov	al, byte ptr [rbp - 0x162]
	mov	rsp, rsp
	and	al, 1
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x19], al
	mov	rcx, qword ptr [rbp - 0x178]
	mov	edx, dword ptr [rcx + 0x18]
	and	edx, 0xf000
	lea	rsi, [rsi]
	cmp	edx, 0xa000
	jne	.label_509
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x180]
	mov	ecx, dword ptr [rax + 0x18]
	and	ecx, 0xf000
	mov	rsp, rsp
	cmp	ecx, 0xa000
	mov	rbp, rbp
	jne	.label_509
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x160]
	mov	rsi, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	call	same_name
	lea	rsi, [rsi]
	and	al, 1
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 9], al
	mov	rbp, rbp
	test	byte ptr [rbp - 9], 1
	mov	rsp, rsp
	jne	.label_502
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 8]
	cmp	dword ptr [rax], 0
	lea	rdi, [rdi]
	je	.label_498
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x149], 1
	mov	rsp, rsp
	jmp	.label_487
.label_498:
	lea	rsi, [rsi]
	test	byte ptr [rbp - 0x19], 1
	lea	rsi, [rsi]
	je	.label_496
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x188]
	mov	byte ptr [rax], 1
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 8]
	mov	cl, byte ptr [rax + 0x18]
	xor	cl, 0xff
	and	cl, 1
	mov	byte ptr [rbp - 0x149], cl
	jmp	.label_487
.label_496:
	nop	
	jmp	.label_502
.label_502:
	mov	al, byte ptr [rbp - 9]
	xor	al, 0xff
	and	al, 1
	mov	byte ptr [rbp - 0x149], al
	lea	rsi, [rsi]
	jmp	.label_487
.label_509:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x178]
	mov	qword ptr [rbp - 0x18], rax
	mov	rax, qword ptr [rbp - 0x180]
	nop	
	mov	qword ptr [rbp - 0x170], rax
	lea	rdi, [rdi]
	jmp	.label_486
.label_504:
	test	byte ptr [rbp - 0x162], 1
	jne	.label_514
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x149], 1
	mov	rbp, rbp
	jmp	.label_487
.label_514:
	mov	rsp, rsp
	lea	rsi, [rbp - 0x148]
	mov	rdi, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	call	__lstat
	mov	rsp, rsp
	cmp	eax, 0
	jne	.label_519
	lea	rdi, [rdi]
	lea	rsi, [rbp - 0xb8]
	mov	rdi, qword ptr [rbp - 0x160]
	call	__lstat
	lea	rdi, [rdi]
	cmp	eax, 0
	je	.label_523
.label_519:
	mov	byte ptr [rbp - 0x149], 1
	jmp	.label_487
.label_523:
	mov	rbp, rbp
	xor	eax, eax
	mov	cl, al
	lea	rdx, [rbp - 0x148]
	lea	rsi, [rbp - 0xb8]
	mov	qword ptr [rbp - 0x18], rsi
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x170], rdx
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rdx + 8]
	mov	rsi, qword ptr [rbp - 0x170]
	cmp	rdx, qword ptr [rsi + 8]
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x1a], cl
	mov	rbp, rbp
	jne	.label_493
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x170]
	cmp	rax, qword ptr [rcx]
	sete	dl
	mov	byte ptr [rbp - 0x1a], dl
.label_493:
	mov	al, byte ptr [rbp - 0x1a]
	and	al, 1
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x19], al
	mov	rcx, qword ptr [rbp - 0x18]
	mov	edx, dword ptr [rcx + 0x18]
	and	edx, 0xf000
	cmp	edx, 0xa000
	lea	rdi, [rdi]
	jne	.label_506
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x170]
	mov	ecx, dword ptr [rax + 0x18]
	and	ecx, 0xf000
	lea	rdi, [rdi]
	cmp	ecx, 0xa000
	mov	rbp, rbp
	jne	.label_506
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 8]
	test	byte ptr [rax + 0x15], 1
	je	.label_506
	mov	byte ptr [rbp - 0x149], 1
	jmp	.label_487
.label_506:
	jmp	.label_486
.label_486:
	mov	rax, qword ptr [rbp - 8]
	cmp	dword ptr [rax], 0
	je	.label_500
	lea	rdi, [rdi]
	test	byte ptr [rbp - 0x19], 1
	jne	.label_522
	mov	rax, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	test	byte ptr [rax + 0x18], 1
	jne	.label_488
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 8]
	cmp	dword ptr [rax + 4], 2
	je	.label_488
	mov	rax, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	mov	ecx, dword ptr [rax + 0x18]
	and	ecx, 0xf000
	nop	
	cmp	ecx, 0xa000
	jne	.label_488
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x170]
	lea	rsi, [rsi]
	mov	ecx, dword ptr [rax + 0x18]
	mov	rsp, rsp
	and	ecx, 0xf000
	lea	rsi, [rsi]
	cmp	ecx, 0xa000
	je	.label_488
	mov	byte ptr [rbp - 0x149], 0
	mov	rbp, rbp
	jmp	.label_487
.label_488:
	mov	byte ptr [rbp - 0x149], 1
	nop	
	jmp	.label_487
.label_522:
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x160]
	mov	rsi, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	call	same_name
	xor	al, 0xff
	mov	rbp, rbp
	and	al, 1
	mov	byte ptr [rbp - 0x149], al
	lea	rdi, [rdi]
	jmp	.label_487
.label_500:
	nop	
	mov	rax, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	test	byte ptr [rax + 0x18], 1
	mov	rbp, rbp
	jne	.label_515
	mov	rax, qword ptr [rbp - 8]
	mov	rsp, rsp
	test	byte ptr [rax + 0x15], 1
	nop	
	je	.label_503
.label_515:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x170]
	mov	ecx, dword ptr [rax + 0x18]
	and	ecx, 0xf000
	nop	
	cmp	ecx, 0xa000
	jne	.label_520
	nop	
	mov	byte ptr [rbp - 0x149], 1
	jmp	.label_487
.label_520:
	mov	rbp, rbp
	test	byte ptr [rbp - 0x19], 1
	mov	rsp, rsp
	je	.label_489
	nop	
	mov	eax, 1
	lea	rdi, [rdi]
	mov	ecx, eax
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x170]
	lea	rdi, [rdi]
	cmp	rcx, qword ptr [rdx + 0x10]
	lea	rsi, [rsi]
	jae	.label_489
	mov	rdi, qword ptr [rbp - 0x160]
	mov	rsi, qword ptr [rbp - 0x28]
	call	same_name
	lea	rsi, [rsi]
	test	al, 1
	jne	.label_489
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 8]
	mov	cl, byte ptr [rax + 0x18]
	xor	cl, 0xff
	and	cl, 1
	mov	byte ptr [rbp - 0x149], cl
	mov	rsp, rsp
	jmp	.label_487
.label_489:
	mov	rbp, rbp
	jmp	.label_503
.label_503:
	mov	rax, qword ptr [rbp - 0x18]
	mov	ecx, dword ptr [rax + 0x18]
	and	ecx, 0xf000
	lea	rdi, [rdi]
	cmp	ecx, 0xa000
	nop	
	je	.label_491
	mov	rax, qword ptr [rbp - 0x170]
	mov	ecx, dword ptr [rax + 0x18]
	and	ecx, 0xf000
	cmp	ecx, 0xa000
	je	.label_491
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax + 8]
	nop	
	mov	rcx, qword ptr [rbp - 0x170]
	lea	rdi, [rdi]
	cmp	rax, qword ptr [rcx + 8]
	jne	.label_516
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x170]
	cmp	rax, qword ptr [rcx]
	je	.label_518
.label_516:
	mov	byte ptr [rbp - 0x149], 1
	jmp	.label_487
.label_518:
	nop	
	mov	rax, qword ptr [rbp - 8]
	test	byte ptr [rax + 0x17], 1
	je	.label_521
	mov	rax, qword ptr [rbp - 0x188]
	mov	byte ptr [rax], 1
	mov	byte ptr [rbp - 0x149], 1
	nop	
	jmp	.label_487
.label_521:
	jmp	.label_491
.label_491:
	mov	rax, qword ptr [rbp - 8]
	test	byte ptr [rax + 0x18], 1
	je	.label_494
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x178]
	lea	rsi, [rsi]
	mov	ecx, dword ptr [rax + 0x18]
	and	ecx, 0xf000
	mov	rsp, rsp
	cmp	ecx, 0xa000
	jne	.label_494
	mov	rbp, rbp
	mov	eax, 1
	mov	rbp, rbp
	mov	ecx, eax
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x170]
	cmp	rcx, qword ptr [rdx + 0x10]
	jae	.label_494
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x160]
	lea	rdi, [rdi]
	call	canonicalize_file_name
	mov	qword ptr [rbp - 0x158], rax
	cmp	qword ptr [rbp - 0x158], 0
	je	.label_508
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x158]
	mov	rsi, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	call	same_name
	xor	al, 0xff
	nop	
	and	al, 1
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x189], al
	mov	rdi, qword ptr [rbp - 0x158]
	call	free
	nop	
	mov	al, byte ptr [rbp - 0x189]
	and	al, 1
	mov	byte ptr [rbp - 0x149], al
	jmp	.label_487
.label_508:
	jmp	.label_494
.label_494:
	mov	rax, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	test	byte ptr [rax + 0x2c], 1
	je	.label_511
	mov	rax, qword ptr [rbp - 0x170]
	mov	ecx, dword ptr [rax + 0x18]
	and	ecx, 0xf000
	cmp	ecx, 0xa000
	jne	.label_511
	mov	byte ptr [rbp - 0x149], 1
	mov	rbp, rbp
	jmp	.label_487
.label_511:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 8]
	cmp	dword ptr [rax + 4], 2
	nop	
	jne	.label_512
	nop	
	mov	rax, qword ptr [rbp - 0x18]
	mov	ecx, dword ptr [rax + 0x18]
	lea	rsi, [rsi]
	and	ecx, 0xf000
	cmp	ecx, 0xa000
	je	.label_495
	nop	
	mov	eax, 0x90
	lea	rsi, [rsi]
	mov	edx, eax
	mov	rsp, rsp
	lea	rcx, [rbp - 0xb8]
	nop	
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rdi, rcx
	lea	rsi, [rsi]
	call	memcpy
	mov	rsp, rsp
	jmp	.label_505
.label_495:
	mov	rsp, rsp
	lea	rsi, [rbp - 0xb8]
	mov	rdi, qword ptr [rbp - 0x160]
	mov	rbp, rbp
	call	stat
	cmp	eax, 0
	je	.label_513
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x149], 1
	nop	
	jmp	.label_487
.label_513:
	mov	rbp, rbp
	jmp	.label_505
.label_505:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x170]
	lea	rsi, [rsi]
	mov	ecx, dword ptr [rax + 0x18]
	lea	rsi, [rsi]
	and	ecx, 0xf000
	mov	rsp, rsp
	cmp	ecx, 0xa000
	je	.label_517
	mov	eax, 0x90
	mov	edx, eax
	lea	rcx, [rbp - 0x148]
	nop	
	mov	rsi, qword ptr [rbp - 0x170]
	mov	rdi, rcx
	call	memcpy
	jmp	.label_497
.label_517:
	lea	rsi, [rsi]
	lea	rsi, [rbp - 0x148]
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x28]
	mov	rbp, rbp
	call	stat
	lea	rsi, [rsi]
	cmp	eax, 0
	lea	rdi, [rdi]
	je	.label_490
	mov	byte ptr [rbp - 0x149], 1
	lea	rsi, [rsi]
	jmp	.label_487
.label_490:
	jmp	.label_497
.label_497:
	nop	
	mov	rax, qword ptr [rbp - 0xb0]
	nop	
	cmp	rax, qword ptr [rbp - 0x140]
	lea	rdi, [rdi]
	jne	.label_499
	mov	rax, qword ptr [rbp - 0xb8]
	mov	rsp, rsp
	cmp	rax, qword ptr [rbp - 0x148]
	je	.label_501
.label_499:
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x149], 1
	mov	rbp, rbp
	jmp	.label_487
.label_501:
	mov	rax, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	test	byte ptr [rax + 0x17], 1
	mov	rbp, rbp
	je	.label_507
	mov	rax, qword ptr [rbp - 0x170]
	mov	ecx, dword ptr [rax + 0x18]
	mov	rsp, rsp
	and	ecx, 0xf000
	lea	rdi, [rdi]
	cmp	ecx, 0xa000
	sete	dl
	xor	dl, 0xff
	mov	rax, qword ptr [rbp - 0x188]
	mov	rsp, rsp
	and	dl, 1
	lea	rsi, [rsi]
	mov	byte ptr [rax], dl
	mov	byte ptr [rbp - 0x149], 1
	jmp	.label_487
.label_507:
	jmp	.label_512
.label_512:
	nop	
	mov	byte ptr [rbp - 0x149], 0
.label_487:
	mov	rsp, rsp
	mov	al, byte ptr [rbp - 0x149]
	and	al, 1
	lea	rsi, [rsi]
	movzx	eax, al
	add	rsp, 0x190
	pop	rbp
	mov	rsp, rsp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40ab00

	.globl create_hard_link
	.type create_hard_link, @function
create_hard_link:
	mov	rsp, rsp
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x60
	mov	rsp, rsp
	mov	al, r8b
	mov	r9b, cl
	lea	rdi, [rdi]
	mov	r10b, dl
	lea	rdi, [rdi]
	mov	ecx, 0xffffff9c
	lea	rdi, [rdi]
	mov	edx, 0xffffffff
	lea	rdi, [rdi]
	xor	r8d, r8d
	lea	rsi, [rsi]
	mov	r11d, 0x400
	mov	qword ptr [rbp - 0x58], rdi
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x10], rsi
	lea	rsi, [rsi]
	and	r10b, 1
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x25], r10b
	mov	rsp, rsp
	and	r9b, 1
	mov	byte ptr [rbp - 0x49], r9b
	and	al, 1
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x11], al
	mov	rsi, qword ptr [rbp - 0x58]
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	al, byte ptr [rbp - 0x11]
	nop	
	test	al, 1
	cmovne	r8d, r11d
	mov	al, byte ptr [rbp - 0x25]
	and	al, 1
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x40], rdi
	mov	edi, ecx
	mov	dword ptr [rbp - 0x24], edx
	lea	rsi, [rsi]
	mov	edx, ecx
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x40]
	movzx	r9d, al
	mov	rbp, rbp
	mov	dword ptr [rsp], 0xffffffff
	call	force_linkat
	mov	rbp, rbp
	xor	edx, edx
	mov	dword ptr [rbp - 0x18], eax
	cmp	edx, dword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	jge	.label_525
	movabs	rdi, OFFSET FLAT:.str.52
	mov	esi, dword ptr [rbp - 0x18]
	mov	rbp, rbp
	mov	dword ptr [rbp - 4], esi
	mov	rsp, rsp
	call	gettext
	lea	rdi, [rdi]
	xor	edi, edi
	mov	esi, 4
	nop	
	mov	rdx, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x20], rax
	mov	rbp, rbp
	call	quotearg_n_style
	mov	rsp, rsp
	mov	edi, 1
	mov	esi, 4
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x58]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x48], rax
	call	quotearg_n_style
	xor	edi, edi
	mov	esi, dword ptr [rbp - 4]
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x48]
	mov	r8, rax
	mov	rbp, rbp
	mov	al, 0
	mov	rbp, rbp
	call	error
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x4a], 0
	mov	rbp, rbp
	jmp	.label_526
.label_525:
	cmp	dword ptr [rbp - 0x18], 0
	mov	rbp, rbp
	jge	.label_524
	mov	rsp, rsp
	test	byte ptr [rbp - 0x49], 1
	lea	rdi, [rdi]
	je	.label_524
	mov	rsp, rsp
	movabs	rdi, OFFSET FLAT:.str.25_0
	call	gettext
	mov	rbp, rbp
	mov	edi, 4
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x30], rax
	lea	rsi, [rsi]
	call	quotearg_style
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x30]
	mov	rsi, rax
	mov	rbp, rbp
	mov	al, 0
	call	printf
	mov	dword ptr [rbp - 0x34], eax
.label_524:
	mov	byte ptr [rbp - 0x4a], 1
.label_526:
	mov	al, byte ptr [rbp - 0x4a]
	and	al, 1
	movzx	eax, al
	mov	rsp, rsp
	add	rsp, 0x60
	pop	rbp
	mov	rbp, rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40acc0

	.globl abandon_move
	.type abandon_move, @function
abandon_move:
	lea	rdi, [rdi]
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	nop	
	mov	qword ptr [rbp - 0x20], rdi
	mov	qword ptr [rbp - 0x10], rsi
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x18], rdx
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x20]
	test	byte ptr [rdx + 0x18], 1
	lea	rdi, [rdi]
	je	.label_527
	jmp	.label_531
.label_527:
	mov	rbp, rbp
	movabs	rdi, OFFSET FLAT:.str.53
	movabs	rsi, OFFSET FLAT:.str.5_1
	mov	rsp, rsp
	mov	edx, 0x6d2
	mov	rsp, rsp
	movabs	rcx, OFFSET FLAT:__PRETTY_FUNCTION__.abandon_move
	mov	rsp, rsp
	call	__assert_fail
.label_531:
	mov	al, 1
	mov	rcx, qword ptr [rbp - 0x20]
	cmp	dword ptr [rcx + 8], 2
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 1], al
	mov	rbp, rbp
	je	.label_529
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x20]
	cmp	dword ptr [rax + 8], 3
	lea	rsi, [rsi]
	je	.label_528
	xor	eax, eax
	mov	cl, al
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	cmp	dword ptr [rdx + 8], 4
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x21], cl
	lea	rsi, [rsi]
	jne	.label_530
	lea	rdi, [rdi]
	xor	eax, eax
	mov	cl, al
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x20]
	test	byte ptr [rdx + 0x2f], 1
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x21], cl
	nop	
	je	.label_530
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x18]
	mov	esi, dword ptr [rax + 0x18]
	call	writable_destination
	nop	
	xor	esi, esi
	lea	rdi, [rdi]
	mov	cl, sil
	lea	rsi, [rsi]
	test	al, 1
	mov	byte ptr [rbp - 0x21], cl
	jne	.label_530
.label_528:
	mov	rdi, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	call	overwrite_ok
	xor	al, 0xff
	mov	byte ptr [rbp - 0x21], al
.label_530:
	mov	al, byte ptr [rbp - 0x21]
	mov	rbp, rbp
	mov	byte ptr [rbp - 1], al
.label_529:
	mov	rbp, rbp
	mov	al, byte ptr [rbp - 1]
	mov	rbp, rbp
	and	al, 1
	movzx	eax, al
	add	rsp, 0x30
	lea	rsi, [rsi]
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40ae10

	.globl overwrite_ok
	.type overwrite_ok, @function
overwrite_ok:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x80
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x58], rdi
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x28], rsi
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x30], rdx
	mov	rdi, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x30]
	mov	esi, dword ptr [rdx + 0x18]
	nop	
	call	writable_destination
	mov	rsp, rsp
	test	al, 1
	jne	.label_535
	lea	rsi, [rbp - 0x74]
	nop	
	mov	rax, qword ptr [rbp - 0x30]
	mov	edi, dword ptr [rax + 0x18]
	call	strmode
	mov	byte ptr [rbp - 0x6a], 0
	mov	rdi,  qword ptr [word ptr [stderr]]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x58]
	mov	rbp, rbp
	test	byte ptr [rax + 0x18], 1
	nop	
	mov	qword ptr [rbp - 0x10], rdi
	lea	rsi, [rsi]
	jne	.label_532
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x58]
	test	byte ptr [rax + 0x15], 1
	nop	
	jne	.label_532
	mov	rax, qword ptr [rbp - 0x58]
	mov	rbp, rbp
	test	byte ptr [rax + 0x16], 1
	je	.label_536
.label_532:
	lea	rsi, [rsi]
	movabs	rdi, OFFSET FLAT:.str.54
	mov	rbp, rbp
	call	gettext
	mov	rbp, rbp
	mov	qword ptr [rbp - 8], rax
	mov	rsp, rsp
	jmp	.label_533
.label_536:
	nop	
	movabs	rdi, OFFSET FLAT:.str.55
	mov	rsp, rsp
	call	gettext
	mov	rsp, rsp
	mov	qword ptr [rbp - 8], rax
.label_533:
	nop	
	mov	rax, qword ptr [rbp - 8]
	mov	edi, 4
	nop	
	mov	rdx,  qword ptr [word ptr [program_name]]
	mov	rsi, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x18], rax
	mov	qword ptr [rbp - 0x40], rdx
	lea	rsi, [rsi]
	call	quotearg_style
	nop	
	lea	rdx, [rbp - 0x74]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x30]
	mov	edi, dword ptr [rsi + 0x18]
	mov	rbp, rbp
	and	edi, 0xfff
	mov	edi, edi
	nop	
	mov	r8d, edi
	nop	
	add	rdx, 1
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x40]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x60], rdx
	mov	rdx, rcx
	mov	rsp, rsp
	mov	rcx, rax
	mov	r9, qword ptr [rbp - 0x60]
	lea	rsi, [rsi]
	mov	al, 0
	mov	rbp, rbp
	call	fprintf
	mov	dword ptr [rbp - 0x1c], eax
	lea	rsi, [rsi]
	jmp	.label_534
.label_535:
	movabs	rdi, OFFSET FLAT:.str.56
	mov	rax,  qword ptr [word ptr [stderr]]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x68], rax
	lea	rsi, [rsi]
	call	gettext
	nop	
	mov	edi, 4
	mov	rdx,  qword ptr [word ptr [program_name]]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x28]
	nop	
	mov	qword ptr [rbp - 0x48], rax
	mov	qword ptr [rbp - 0x50], rdx
	lea	rsi, [rsi]
	call	quotearg_style
	mov	rdi, qword ptr [rbp - 0x68]
	mov	rsi, qword ptr [rbp - 0x48]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x50]
	mov	rsp, rsp
	mov	rcx, rax
	lea	rdi, [rdi]
	mov	al, 0
	call	fprintf
	nop	
	mov	dword ptr [rbp - 0x34], eax
.label_534:
	lea	rsi, [rsi]
	call	yesno
	and	al, 1
	mov	rsp, rsp
	movzx	eax, al
	add	rsp, 0x80
	lea	rsi, [rsi]
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40b000

	.globl dot_or_dotdot_0
	.type dot_or_dotdot_0, @function
dot_or_dotdot_0:
	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	movsx	eax, byte ptr [rdi]
	lea	rdi, [rdi]
	cmp	eax, 0x2e
	jne	.label_537
	mov	al, 1
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 8]
	movsx	edx, byte ptr [rcx + 1]
	lea	rsi, [rsi]
	cmp	edx, 0x2e
	sete	sil
	and	sil, 1
	movzx	edx, sil
	add	edx, 1
	mov	rsp, rsp
	movsxd	rcx, edx
	mov	rdi, qword ptr [rbp - 8]
	mov	rbp, rbp
	mov	sil, byte ptr [rdi + rcx]
	mov	rsp, rsp
	mov	byte ptr [rbp - 0xa], sil
	cmp	byte ptr [rbp - 0xa], 0
	mov	byte ptr [rbp - 0xb], al
	je	.label_538
	movsx	eax, byte ptr [rbp - 0xa]
	lea	rsi, [rsi]
	cmp	eax, 0x2f
	sete	cl
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0xb], cl
.label_538:
	mov	al, byte ptr [rbp - 0xb]
	mov	rsp, rsp
	and	al, 1
	mov	rbp, rbp
	mov	byte ptr [rbp - 9], al
	lea	rdi, [rdi]
	jmp	.label_539
.label_537:
	mov	byte ptr [rbp - 9], 0
.label_539:
	lea	rdi, [rdi]
	mov	al, byte ptr [rbp - 9]
	and	al, 1
	lea	rdi, [rdi]
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40b0b0

	.globl source_is_dst_backup
	.type source_is_dst_backup, @function
source_is_dst_backup:
	push	rbp
	lea	rsi, [rsi]
	mov	rbp, rsp
	sub	rsp, 0x110
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0xe8], rsi
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0xf8], rdx
	nop	
	mov	rdi, qword ptr [rbp - 0x10]
	nop	
	call	strlen
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x38], rax
	nop	
	mov	rdi, qword ptr [rbp - 0xf8]
	mov	rsp, rsp
	call	last_component
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x108], rax
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x108]
	nop	
	call	strlen
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x20], rax
	nop	
	mov	rdi,  qword ptr [word ptr [simple_backup_suffix]]
	lea	rsi, [rsi]
	call	strlen
	nop	
	mov	qword ptr [rbp - 0x28], rax
	mov	rax, qword ptr [rbp - 0x38]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	add	rdx, qword ptr [rbp - 0x28]
	nop	
	cmp	rax, rdx
	lea	rsi, [rsi]
	jne	.label_543
	mov	rdi, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x108]
	mov	rdx, qword ptr [rbp - 0x20]
	call	memcmp
	lea	rsi, [rsi]
	cmp	eax, 0
	lea	rsi, [rsi]
	jne	.label_543
	nop	
	mov	rax, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	add	rax, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	mov	rsi,  qword ptr [word ptr [simple_backup_suffix]]
	mov	rsp, rsp
	mov	rdi, rax
	call	strcmp
	cmp	eax, 0
	lea	rdi, [rdi]
	je	.label_540
.label_543:
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0xe9], 0
	jmp	.label_542
.label_540:
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0xf8]
	mov	rsp, rsp
	call	strlen
	mov	qword ptr [rbp - 0x18], rax
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, qword ptr [rbp - 0x28]
	add	rax, 1
	lea	rdi, [rdi]
	mov	rdi, rax
	mov	rbp, rbp
	call	xmalloc
	mov	qword ptr [rbp - 0x30], rax
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x30]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0xf8]
	mov	rdx, qword ptr [rbp - 0x18]
	call	mempcpy
	lea	rsi, [rbp - 0xd0]
	lea	rdi, [rdi]
	mov	rdx,  qword ptr [word ptr [simple_backup_suffix]]
	lea	rdi, [rdi]
	mov	rdi, rax
	mov	qword ptr [rbp - 0x100], rsi
	mov	rsi, rdx
	lea	rsi, [rsi]
	call	strcpy
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x30]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x100]
	mov	qword ptr [rbp - 0xd8], rax
	mov	rsp, rsp
	call	stat
	nop	
	mov	dword ptr [rbp - 4], eax
	mov	rdi, qword ptr [rbp - 0x30]
	mov	rsp, rsp
	call	free
	mov	rsp, rsp
	xor	eax, eax
	lea	rdi, [rdi]
	mov	cl, al
	mov	rsp, rsp
	cmp	dword ptr [rbp - 4], 0
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x39], cl
	lea	rdi, [rdi]
	jne	.label_541
	xor	eax, eax
	mov	cl, al
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0xe8]
	mov	rdx, qword ptr [rdx + 8]
	mov	rbp, rbp
	cmp	rdx, qword ptr [rbp - 0xc8]
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0xd9], cl
	lea	rsi, [rsi]
	jne	.label_544
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0xe8]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax]
	lea	rdi, [rdi]
	cmp	rax, qword ptr [rbp - 0xd0]
	nop	
	sete	cl
	mov	rbp, rbp
	mov	byte ptr [rbp - 0xd9], cl
.label_544:
	lea	rsi, [rsi]
	mov	al, byte ptr [rbp - 0xd9]
	mov	byte ptr [rbp - 0x39], al
.label_541:
	mov	rbp, rbp
	mov	al, byte ptr [rbp - 0x39]
	mov	rsp, rsp
	and	al, 1
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0xe9], al
.label_542:
	mov	rsp, rsp
	mov	al, byte ptr [rbp - 0xe9]
	lea	rsi, [rsi]
	and	al, 1
	nop	
	movzx	eax, al
	nop	
	add	rsp, 0x110
	pop	rbp
	mov	rsp, rsp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40b310

	.globl emit_verbose
	.type emit_verbose, @function
emit_verbose:
	mov	rsp, rsp
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x40
	nop	
	xor	eax, eax
	mov	ecx, 4
	mov	qword ptr [rbp - 0x10], rdi
	nop	
	mov	qword ptr [rbp - 0x20], rsi
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x18], rdx
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	edi, eax
	mov	esi, ecx
	call	quotearg_n_style
	mov	edi, 1
	mov	esi, 4
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x20]
	nop	
	mov	qword ptr [rbp - 0x28], rax
	call	quotearg_n_style
	mov	rsp, rsp
	movabs	rdi, OFFSET FLAT:.str.57
	mov	rsi, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	mov	rdx, rax
	lea	rsi, [rsi]
	mov	al, 0
	mov	rsp, rsp
	call	printf
	cmp	qword ptr [rbp - 0x18], 0
	mov	dword ptr [rbp - 4], eax
	je	.label_545
	movabs	rdi, OFFSET FLAT:.str.58
	call	gettext
	mov	edi, 4
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x18]
	nop	
	mov	qword ptr [rbp - 0x38], rax
	call	quotearg_style
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rsi, rax
	mov	al, 0
	call	printf
	nop	
	mov	dword ptr [rbp - 0x2c], eax
.label_545:
	nop	
	mov	edi, 0xa
	call	putchar_unlocked
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x30], eax
	mov	rsp, rsp
	add	rsp, 0x40
	nop	
	pop	rbp
	lea	rdi, [rdi]
	ret	
	.section	.text
	.align	32
	#Procedure 0x40b3f0

	.globl is_ancestor
	.type is_ancestor, @function
is_ancestor:
	push	rbp
	mov	rbp, rsp
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 8], rdi
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x18], rsi
.label_548:
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x18], 0
	je	.label_547
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax + 8]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rcx + 8]
	mov	rbp, rbp
	jne	.label_546
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x18]
	nop	
	mov	rax, qword ptr [rax + 0x10]
	mov	rcx, qword ptr [rbp - 8]
	cmp	rax, qword ptr [rcx]
	jne	.label_546
	mov	byte ptr [rbp - 9], 1
	jmp	.label_549
.label_546:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	mov	rax, qword ptr [rax]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x18], rax
	nop	
	jmp	.label_548
.label_547:
	nop	
	mov	byte ptr [rbp - 9], 0
.label_549:
	mov	rsp, rsp
	mov	al, byte ptr [rbp - 9]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40b480

	.globl copy_dir
	.type copy_dir, @function
copy_dir:
	lea	rdi, [rdi]
	push	rbp
	lea	rsi, [rsi]
	mov	rbp, rsp
	push	r15
	lea	rsi, [rsi]
	push	r14
	lea	rsi, [rsi]
	push	rbx
	sub	rsp, 0x128
	mov	al, dl
	lea	rdi, [rdi]
	mov	r10, qword ptr [rbp + 0x18]
	mov	r11, qword ptr [rbp + 0x10]
	mov	rbp, rbp
	mov	edx, 2
	mov	rsp, rsp
	mov	ebx, 0x50
	lea	rsi, [rsi]
	mov	r14d, ebx
	lea	rsi, [rsi]
	lea	r15, [rbp - 0xc0]
	mov	qword ptr [rbp - 0xd0], rdi
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x28], rsi
	nop	
	and	al, 1
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x29], al
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x60], rcx
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x108], r8
	mov	qword ptr [rbp - 0x40], r9
	mov	qword ptr [rbp - 0xf8], r11
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x48], r10
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x40]
	nop	
	mov	rdi, r15
	mov	rsi, rcx
	mov	dword ptr [rbp - 0x70], edx
	mov	rbp, rbp
	mov	rdx, r14
	mov	rbp, rbp
	call	memcpy
	mov	byte ptr [rbp - 0xd9], 1
	mov	rdi, qword ptr [rbp - 0xd0]
	lea	rsi, [rsi]
	mov	esi, dword ptr [rbp - 0x70]
	call	savedir
	mov	qword ptr [rbp - 0x118], rax
	cmp	qword ptr [rbp - 0x118], 0
	mov	rbp, rbp
	jne	.label_554
	call	__errno_location
	lea	rdi, [rdi]
	movabs	rdi, OFFSET FLAT:.str.59_0
	lea	rdi, [rdi]
	mov	esi, dword ptr [rax]
	mov	rbp, rbp
	mov	dword ptr [rbp - 0xe0], esi
	call	gettext
	mov	edi, 4
	nop	
	mov	rsi, qword ptr [rbp - 0xd0]
	mov	qword ptr [rbp - 0x68], rax
	call	quotearg_style
	lea	rdi, [rdi]
	xor	edi, edi
	mov	esi, dword ptr [rbp - 0xe0]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x68]
	mov	rcx, rax
	nop	
	mov	al, 0
	nop	
	call	error
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0xc1], 0
	mov	rbp, rbp
	jmp	.label_553
.label_554:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x40]
	mov	rbp, rbp
	cmp	dword ptr [rax + 4], 3
	jne	.label_555
	mov	dword ptr [rbp - 0xbc], 2
.label_555:
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0xf9], 0
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x118]
	mov	qword ptr [rbp - 0x50], rax
.label_552:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x50]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0
	je	.label_551
	xor	eax, eax
	nop	
	mov	edx, eax
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0xd0]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x50]
	lea	rsi, [rsi]
	call	file_name_concat
	lea	rdi, [rdi]
	xor	ecx, ecx
	mov	edx, ecx
	mov	qword ptr [rbp - 0xe8], rax
	mov	rdi, qword ptr [rbp - 0x28]
	mov	rsi, qword ptr [rbp - 0x50]
	mov	rbp, rbp
	call	file_name_concat
	mov	rbp, rbp
	lea	r9, [rbp - 0xc0]
	mov	rbp, rbp
	xor	ecx, ecx
	mov	rsp, rsp
	lea	rdx, [rbp - 0xe9]
	mov	rsp, rsp
	lea	rsi, [rbp - 0x69]
	xor	r8d, r8d
	mov	edi, r8d
	mov	qword ptr [rbp - 0x38], rax
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0xf8]
	mov	r10b, byte ptr [rax]
	lea	rsi, [rsi]
	and	r10b, 1
	mov	rbp, rbp
	mov	byte ptr [rbp - 0xe9], r10b
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0xe8]
	nop	
	mov	r11, qword ptr [rbp - 0x38]
	lea	rsi, [rsi]
	mov	r10b, byte ptr [rbp - 0x29]
	nop	
	mov	rbx, qword ptr [rbp - 0x60]
	mov	r8, qword ptr [rbp - 0x108]
	and	r10b, 1
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x20], rdi
	mov	rdi, rax
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x58], rsi
	mov	rsp, rsp
	mov	rsi, r11
	movzx	r14d, r10b
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0xd8], rdx
	mov	rsp, rsp
	mov	edx, r14d
	mov	dword ptr [rbp - 0x10c], ecx
	mov	rcx, rbx
	mov	rsp, rsp
	mov	dword ptr [rsp], 0
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0xd8]
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 8], rax
	nop	
	mov	r11, qword ptr [rbp - 0x58]
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x10], r11
	mov	qword ptr [rsp + 0x18], 0
	lea	rdi, [rdi]
	call	copy_internal
	mov	rsp, rsp
	and	al, 1
	mov	rsp, rsp
	movzx	edx, al
	mov	al, byte ptr [rbp - 0xd9]
	lea	rsi, [rsi]
	and	al, 1
	movzx	r14d, al
	and	r14d, edx
	mov	rbp, rbp
	cmp	r14d, 0
	setne	al
	mov	rsp, rsp
	and	al, 1
	nop	
	mov	byte ptr [rbp - 0xd9], al
	lea	rsi, [rsi]
	mov	al, byte ptr [rbp - 0x69]
	and	al, 1
	movzx	edx, al
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x48]
	nop	
	mov	al, byte ptr [rcx]
	nop	
	and	al, 1
	mov	rsp, rsp
	movzx	r14d, al
	or	r14d, edx
	mov	rbp, rbp
	cmp	r14d, 0
	lea	rdi, [rdi]
	setne	al
	and	al, 1
	mov	byte ptr [rcx], al
	mov	rdi, qword ptr [rbp - 0x38]
	call	free
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0xe8]
	call	free
	test	byte ptr [rbp - 0x69], 1
	nop	
	je	.label_550
	jmp	.label_551
.label_550:
	mov	al, byte ptr [rbp - 0xe9]
	lea	rsi, [rsi]
	and	al, 1
	movzx	ecx, al
	mov	al, byte ptr [rbp - 0xf9]
	lea	rdi, [rdi]
	and	al, 1
	lea	rsi, [rsi]
	movzx	edx, al
	or	edx, ecx
	cmp	edx, 0
	setne	al
	and	al, 1
	mov	rsp, rsp
	mov	byte ptr [rbp - 0xf9], al
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x50]
	call	strlen
	mov	rsp, rsp
	add	rax, 1
	lea	rsi, [rsi]
	add	rax, qword ptr [rbp - 0x50]
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_552
.label_551:
	mov	rdi, qword ptr [rbp - 0x118]
	call	free
	nop	
	mov	al, byte ptr [rbp - 0xf9]
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0xf8]
	and	al, 1
	mov	byte ptr [rdi], al
	mov	al, byte ptr [rbp - 0xd9]
	and	al, 1
	nop	
	mov	byte ptr [rbp - 0xc1], al
.label_553:
	mov	rbp, rbp
	mov	al, byte ptr [rbp - 0xc1]
	lea	rsi, [rsi]
	and	al, 1
	movzx	eax, al
	add	rsp, 0x128
	lea	rsi, [rsi]
	pop	rbx
	mov	rbp, rbp
	pop	r14
	mov	rbp, rbp
	pop	r15
	pop	rbp
	lea	rsi, [rsi]
	ret	
	.section	.text
	.align	32
	#Procedure 0x40b860

	.globl copy_reg
	.type copy_reg, @function
copy_reg:
	mov	rsp, rsp
	push	rbp
	mov	rbp, rsp
	push	rbx
	lea	rdi, [rdi]
	sub	rsp, 0x4e8
	mov	rsp, rsp
	mov	rax, qword ptr [rbp + 0x10]
	xor	r10d, r10d
	mov	r11d, 0x20000
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0xa0], rdi
	mov	qword ptr [rbp - 0x168], rsi
	mov	qword ptr [rbp - 0x3f8], rdx
	mov	dword ptr [rbp - 0x254], ecx
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x54], r8d
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x230], r9
	mov	qword ptr [rbp - 0x50], rax
	mov	qword ptr [rbp - 0x100], 0
	mov	rbp, rbp
	mov	qword ptr [rbp - 0xb8], 0
	mov	rax, qword ptr [rbp - 0x50]
	mov	ecx, dword ptr [rax + 0x18]
	mov	dword ptr [rbp - 0xd8], ecx
	mov	byte ptr [rbp - 0x345], 1
	mov	rax, qword ptr [rbp - 0x3f8]
	mov	bl, byte ptr [rax + 0x23]
	and	bl, 1
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x265], bl
	mov	rdi, qword ptr [rbp - 0xa0]
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x3f8]
	nop	
	cmp	dword ptr [rax + 4], 2
	cmove	r10d, r11d
	nop	
	or	r10d, 0
	mov	esi, r10d
	mov	al, 0
	call	open_safer
	mov	dword ptr [rbp - 0x244], eax
	lea	rsi, [rsi]
	cmp	dword ptr [rbp - 0x244], 0
	jge	.label_608
	call	__errno_location
	mov	rsp, rsp
	movabs	rdi, OFFSET FLAT:.str.60_0
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0x64], esi
	call	gettext
	mov	edi, 4
	mov	rsi, qword ptr [rbp - 0xa0]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x340], rax
	lea	rdi, [rdi]
	call	quotearg_style
	mov	rbp, rbp
	xor	edi, edi
	mov	esi, dword ptr [rbp - 0x64]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x340]
	mov	rcx, rax
	mov	al, 0
	call	error
	mov	byte ptr [rbp - 0x429], 0
	mov	rbp, rbp
	jmp	.label_624
.label_608:
	lea	rsi, [rbp - 0x320]
	mov	edi, dword ptr [rbp - 0x244]
	mov	rbp, rbp
	call	__fstat
	cmp	eax, 0
	mov	rbp, rbp
	je	.label_631
	mov	rsp, rsp
	call	__errno_location
	lea	rdi, [rdi]
	movabs	rdi, OFFSET FLAT:.str.61
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0x13c], esi
	call	gettext
	mov	edi, 4
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0xa0]
	mov	qword ptr [rbp - 0xf0], rax
	nop	
	call	quotearg_style
	xor	edi, edi
	mov	rsp, rsp
	mov	esi, dword ptr [rbp - 0x13c]
	mov	rdx, qword ptr [rbp - 0xf0]
	mov	rcx, rax
	mov	al, 0
	call	error
	mov	byte ptr [rbp - 0x345], 0
	lea	rdi, [rdi]
	jmp	.label_560
.label_631:
	mov	rax, qword ptr [rbp - 0x50]
	mov	rax, qword ptr [rax + 8]
	mov	rsp, rsp
	cmp	rax, qword ptr [rbp - 0x318]
	nop	
	jne	.label_565
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x50]
	mov	rax, qword ptr [rax]
	mov	rbp, rbp
	cmp	rax, qword ptr [rbp - 0x320]
	lea	rdi, [rdi]
	je	.label_570
.label_565:
	lea	rdi, [rdi]
	movabs	rdi, OFFSET FLAT:.str.62
	call	gettext
	mov	edi, 4
	nop	
	mov	rsi, qword ptr [rbp - 0xa0]
	mov	qword ptr [rbp - 0x438], rax
	call	quotearg_style
	mov	rsp, rsp
	xor	edi, edi
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0xb0], edi
	mov	esi, dword ptr [rbp - 0xb0]
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x438]
	mov	rcx, rax
	mov	rsp, rsp
	mov	al, 0
	mov	rsp, rsp
	call	error
	mov	byte ptr [rbp - 0x345], 0
	lea	rdi, [rdi]
	jmp	.label_560
.label_570:
	mov	rax, qword ptr [rbp - 0x230]
	test	byte ptr [rax], 1
	jne	.label_596
	nop	
	xor	eax, eax
	nop	
	mov	ecx, 0x200
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x3f8]
	mov	rsp, rsp
	mov	sil, byte ptr [rdx + 0x23]
	test	sil, 1
	nop	
	cmovne	eax, ecx
	lea	rdi, [rdi]
	or	eax, 1
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x344], eax
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x168]
	mov	esi, dword ptr [rbp - 0x344]
	mov	rsp, rsp
	mov	al, 0
	call	open_safer
	mov	dword ptr [rbp - 0x174], eax
	lea	rdi, [rdi]
	call	__errno_location
	lea	rdi, [rdi]
	mov	ecx, dword ptr [rax]
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0xa8], ecx
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x3f8]
	test	byte ptr [rax + 0x21], 1
	mov	rbp, rbp
	jne	.label_612
	mov	rax, qword ptr [rbp - 0x3f8]
	test	byte ptr [rax + 0x25], 1
	mov	rsp, rsp
	je	.label_619
.label_612:
	xor	eax, eax
	cmp	eax, dword ptr [rbp - 0x174]
	lea	rdi, [rdi]
	jg	.label_619
	xor	edx, edx
	mov	rdi, qword ptr [rbp - 0x168]
	mov	rax, qword ptr [rbp - 0x3f8]
	mov	rbp, rbp
	mov	cl, byte ptr [rax + 0x25]
	mov	rax, qword ptr [rbp - 0x3f8]
	and	cl, 1
	movzx	esi, cl
	lea	rdi, [rdi]
	mov	rcx, rax
	call	set_file_security_ctx
	test	al, 1
	nop	
	jne	.label_614
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x3f8]
	test	byte ptr [rax + 0x26], 1
	je	.label_630
	mov	byte ptr [rbp - 0x345], 0
	jmp	.label_567
.label_630:
	jmp	.label_614
.label_614:
	mov	rsp, rsp
	jmp	.label_619
.label_619:
	cmp	dword ptr [rbp - 0x174], 0
	jge	.label_605
	mov	rax, qword ptr [rbp - 0x3f8]
	lea	rsi, [rsi]
	test	byte ptr [rax + 0x16], 1
	je	.label_605
	mov	rdi, qword ptr [rbp - 0x168]
	lea	rsi, [rsi]
	call	unlink
	mov	rbp, rbp
	cmp	eax, 0
	nop	
	je	.label_559
	call	__errno_location
	movabs	rdi, OFFSET FLAT:.str.24_0
	mov	esi, dword ptr [rax]
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x258], esi
	mov	rbp, rbp
	call	gettext
	mov	edi, 4
	mov	rsi, qword ptr [rbp - 0x168]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x118], rax
	call	quotearg_style
	mov	rbp, rbp
	xor	edi, edi
	mov	esi, dword ptr [rbp - 0x258]
	nop	
	mov	rdx, qword ptr [rbp - 0x118]
	nop	
	mov	rcx, rax
	mov	rbp, rbp
	mov	al, 0
	call	error
	mov	byte ptr [rbp - 0x345], 0
	jmp	.label_560
.label_559:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x3f8]
	test	byte ptr [rax + 0x2e], 1
	mov	rbp, rbp
	je	.label_584
	movabs	rdi, OFFSET FLAT:.str.25_0
	call	gettext
	lea	rsi, [rsi]
	mov	edi, 4
	mov	rsi, qword ptr [rbp - 0x168]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x110], rax
	mov	rbp, rbp
	call	quotearg_style
	mov	rdi, qword ptr [rbp - 0x110]
	mov	rsi, rax
	lea	rdi, [rdi]
	mov	al, 0
	nop	
	call	printf
	mov	rbp, rbp
	mov	dword ptr [rbp - 0xac], eax
.label_584:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x230]
	mov	byte ptr [rax], 1
	mov	rax, qword ptr [rbp - 0x3f8]
	test	byte ptr [rax + 0x21], 1
	lea	rdi, [rdi]
	je	.label_568
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0xa0]
	mov	rsi, qword ptr [rbp - 0x168]
	lea	rdi, [rdi]
	mov	edx, dword ptr [rbp - 0x254]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x230]
	lea	rdi, [rdi]
	mov	cl, byte ptr [rax]
	mov	r8, qword ptr [rbp - 0x3f8]
	and	cl, 1
	nop	
	movzx	ecx, cl
	lea	rsi, [rsi]
	call	set_process_security_ctx
	test	al, 1
	mov	rbp, rbp
	jne	.label_617
	mov	byte ptr [rbp - 0x345], 0
	jmp	.label_560
.label_617:
	nop	
	jmp	.label_568
.label_568:
	jmp	.label_605
.label_605:
	jmp	.label_596
.label_596:
	mov	rax, qword ptr [rbp - 0x230]
	test	byte ptr [rax], 1
	nop	
	je	.label_621
	jmp	.label_622
.label_622:
	mov	dword ptr [rbp - 0xd4], 0x41
	mov	rdi, qword ptr [rbp - 0x168]
	mov	eax, dword ptr [rbp - 0xd4]
	lea	rsi, [rsi]
	or	eax, 0x80
	nop	
	mov	ecx, dword ptr [rbp - 0x254]
	mov	edx, dword ptr [rbp - 0x54]
	xor	edx, 0xffffffff
	and	ecx, edx
	mov	esi, eax
	mov	edx, ecx
	mov	al, 0
	nop	
	call	open_safer
	nop	
	mov	dword ptr [rbp - 0x174], eax
	nop	
	call	__errno_location
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 0xa8], ecx
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x174], 0
	nop	
	jge	.label_604
	cmp	dword ptr [rbp - 0xa8], 0x11
	jne	.label_604
	mov	rax, qword ptr [rbp - 0x3f8]
	test	byte ptr [rax + 0x18], 1
	mov	rbp, rbp
	jne	.label_604
	lea	rsi, [rbp - 0x3f0]
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x168]
	call	__lstat
	cmp	eax, 0
	lea	rsi, [rsi]
	jne	.label_561
	nop	
	mov	eax, dword ptr [rbp - 0x3d8]
	and	eax, 0xf000
	lea	rsi, [rsi]
	cmp	eax, 0xa000
	mov	rbp, rbp
	jne	.label_561
	mov	rax, qword ptr [rbp - 0x3f8]
	test	byte ptr [rax + 0x30], 1
	lea	rdi, [rdi]
	je	.label_626
	nop	
	mov	rdi, qword ptr [rbp - 0x168]
	mov	rbp, rbp
	mov	esi, dword ptr [rbp - 0xd4]
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x254]
	mov	ecx, dword ptr [rbp - 0x54]
	mov	rbp, rbp
	xor	ecx, 0xffffffff
	and	eax, ecx
	mov	edx, eax
	mov	al, 0
	call	open_safer
	mov	dword ptr [rbp - 0x174], eax
	call	__errno_location
	nop	
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 0xa8], ecx
	jmp	.label_585
.label_626:
	nop	
	movabs	rdi, OFFSET FLAT:.str.63
	mov	rbp, rbp
	call	gettext
	mov	rsp, rsp
	mov	edi, 4
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x168]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x418], rax
	call	quotearg_style
	mov	rbp, rbp
	xor	edi, edi
	mov	dword ptr [rbp - 0x11c], edi
	lea	rdi, [rdi]
	mov	esi, dword ptr [rbp - 0x11c]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x418]
	mov	rcx, rax
	mov	rsp, rsp
	mov	al, 0
	call	error
	mov	byte ptr [rbp - 0x345], 0
	lea	rdi, [rdi]
	jmp	.label_560
.label_585:
	jmp	.label_561
.label_561:
	jmp	.label_604
.label_604:
	cmp	dword ptr [rbp - 0x174], 0
	lea	rdi, [rdi]
	jge	.label_569
	mov	rsp, rsp
	cmp	dword ptr [rbp - 0xa8], 0x15
	lea	rsi, [rsi]
	jne	.label_569
	mov	rax, qword ptr [rbp - 0x168]
	mov	rsp, rsp
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0
	je	.label_569
	mov	rdi, qword ptr [rbp - 0x168]
	lea	rsi, [rsi]
	call	strlen
	sub	rax, 1
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x168]
	nop	
	movsx	ecx, byte ptr [rdi + rax]
	nop	
	cmp	ecx, 0x2f
	jne	.label_569
	mov	dword ptr [rbp - 0xa8], 0x14
.label_569:
	jmp	.label_623
.label_621:
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x54], 0
.label_623:
	cmp	dword ptr [rbp - 0x174], 0
	lea	rdi, [rdi]
	jge	.label_625
	nop	
	cmp	dword ptr [rbp - 0xa8], 2
	nop	
	jne	.label_629
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x230]
	test	byte ptr [rax], 1
	jne	.label_629
	mov	rax, qword ptr [rbp - 0x3f8]
	nop	
	test	byte ptr [rax + 0x18], 1
	jne	.label_629
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x230]
	lea	rsi, [rsi]
	mov	byte ptr [rax], 1
	jmp	.label_622
.label_629:
	lea	rdi, [rdi]
	movabs	rdi, OFFSET FLAT:.str.64
	mov	esi, dword ptr [rbp - 0xa8]
	mov	dword ptr [rbp - 0x14c], esi
	lea	rdi, [rdi]
	call	gettext
	mov	rbp, rbp
	mov	edi, 4
	mov	rsi, qword ptr [rbp - 0x168]
	mov	qword ptr [rbp - 0xe8], rax
	call	quotearg_style
	lea	rsi, [rsi]
	xor	edi, edi
	mov	esi, dword ptr [rbp - 0x14c]
	mov	rdx, qword ptr [rbp - 0xe8]
	mov	rcx, rax
	nop	
	mov	al, 0
	nop	
	call	error
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x345], 0
	nop	
	jmp	.label_560
.label_625:
	lea	rsi, [rsi]
	lea	rsi, [rbp - 0x218]
	mov	rsp, rsp
	mov	edi, dword ptr [rbp - 0x174]
	nop	
	call	__fstat
	cmp	eax, 0
	lea	rdi, [rdi]
	je	.label_580
	call	__errno_location
	movabs	rdi, OFFSET FLAT:.str.61
	lea	rsi, [rsi]
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0x170], esi
	call	gettext
	nop	
	mov	edi, 4
	mov	rsi, qword ptr [rbp - 0x168]
	mov	qword ptr [rbp - 0x158], rax
	call	quotearg_style
	xor	edi, edi
	mov	esi, dword ptr [rbp - 0x170]
	mov	rdx, qword ptr [rbp - 0x158]
	lea	rsi, [rsi]
	mov	rcx, rax
	mov	al, 0
	mov	rbp, rbp
	call	error
	mov	byte ptr [rbp - 0x345], 0
	lea	rdi, [rdi]
	jmp	.label_567
.label_580:
	mov	rsp, rsp
	test	byte ptr [rbp - 0x265], 1
	je	.label_556
	mov	rax, qword ptr [rbp - 0x3f8]
	cmp	dword ptr [rax + 0x38], 0
	je	.label_556
	lea	rdi, [rdi]
	mov	edi, dword ptr [rbp - 0x174]
	mov	esi, dword ptr [rbp - 0x244]
	mov	rsp, rsp
	call	clone_file
	lea	rsi, [rsi]
	cmp	eax, 0
	sete	cl
	and	cl, 1
	nop	
	mov	byte ptr [rbp - 0x181], cl
	test	byte ptr [rbp - 0x181], 1
	jne	.label_606
	mov	rax, qword ptr [rbp - 0x3f8]
	cmp	dword ptr [rax + 0x38], 2
	lea	rsi, [rsi]
	jne	.label_615
.label_606:
	test	byte ptr [rbp - 0x181], 1
	mov	rbp, rbp
	jne	.label_618
	lea	rdi, [rdi]
	call	__errno_location
	lea	rdi, [rdi]
	movabs	rdi, OFFSET FLAT:.str.65
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0x28c], esi
	nop	
	call	gettext
	xor	edi, edi
	mov	esi, 4
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x168]
	nop	
	mov	qword ptr [rbp - 0x98], rax
	call	quotearg_n_style
	mov	edi, 1
	mov	rbp, rbp
	mov	esi, 4
	mov	rdx, qword ptr [rbp - 0xa0]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x238], rax
	nop	
	call	quotearg_n_style
	xor	edi, edi
	mov	esi, dword ptr [rbp - 0x28c]
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x98]
	mov	rcx, qword ptr [rbp - 0x238]
	mov	rbp, rbp
	mov	r8, rax
	mov	rsp, rsp
	mov	al, 0
	call	error
	mov	byte ptr [rbp - 0x345], 0
	lea	rdi, [rdi]
	jmp	.label_567
.label_618:
	nop	
	mov	byte ptr [rbp - 0x265], 0
.label_615:
	nop	
	jmp	.label_556
.label_556:
	test	byte ptr [rbp - 0x265], 1
	mov	rbp, rbp
	je	.label_558
	mov	rsp, rsp
	call	getpagesize
	mov	rbp, rbp
	lea	rcx, [rbp - 0x218]
	movsxd	rdx, eax
	mov	qword ptr [rbp - 0x38], rdx
	mov	rdx, rsp
	mov	rsp, rsp
	mov	eax, 0x12
	mov	rsp, rsp
	mov	esi, eax
	lea	rdi, [rbp - 0x218]
	mov	qword ptr [rbp - 0x280], rcx
	mov	rcx, rsi
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x408], rdi
	mov	rdi, rdx
	mov	rsi, qword ptr [rbp - 0x408]
	rep movsq	qword ptr [rdi], qword ptr [rsi]
	mov	rsp, rsp
	call	io_blksize
	lea	rdi, [rdi]
	xor	r8d, r8d
	lea	rsi, [rsi]
	mov	ecx, r8d
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x40], rax
	cmp	rcx, qword ptr [rbp - 0x1e0]
	jge	.label_581
	movabs	rax, 0x2000000000000000
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x1e0], rax
	mov	rbp, rbp
	ja	.label_581
	mov	rax, qword ptr [rbp - 0x1e0]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x428], rax
	jmp	.label_592
.label_581:
	mov	eax, 0x200
	mov	ecx, eax
	mov	qword ptr [rbp - 0x428], rcx
	jmp	.label_592
.label_592:
	nop	
	mov	rax, qword ptr [rbp - 0x428]
	mov	rsp, rsp
	xor	ecx, ecx
	lea	rsi, [rsi]
	mov	edx, ecx
	mov	ecx, 2
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x60], rax
	mov	edi, dword ptr [rbp - 0x244]
	mov	rsi, rdx
	lea	rdi, [rdi]
	call	fdadvise
	lea	rdi, [rbp - 0x320]
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x451], 0
	lea	rdi, [rdi]
	call	is_probably_sparse
	and	al, 1
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x40d], al
	mov	ecx, dword ptr [rbp - 0x200]
	and	ecx, 0xf000
	cmp	ecx, 0x8000
	nop	
	jne	.label_598
	mov	rax, qword ptr [rbp - 0x3f8]
	mov	rsp, rsp
	cmp	dword ptr [rax + 0xc], 3
	jne	.label_616
	mov	byte ptr [rbp - 0x451], 1
.label_616:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x3f8]
	mov	rbp, rbp
	cmp	dword ptr [rax + 0xc], 2
	nop	
	jne	.label_620
	test	byte ptr [rbp - 0x40d], 1
	mov	rsp, rsp
	je	.label_620
	mov	byte ptr [rbp - 0x451], 1
.label_620:
	lea	rsi, [rsi]
	jmp	.label_598
.label_598:
	test	byte ptr [rbp - 0x451], 1
	jne	.label_602
	lea	rsi, [rsi]
	lea	rax, [rbp - 0x320]
	mov	rbp, rbp
	movabs	rcx, 0x7fffffffffffffff
	sub	rcx, qword ptr [rbp - 0x38]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x350], rcx
	mov	rcx, rsp
	nop	
	mov	edx, 0x12
	mov	esi, edx
	nop	
	lea	rdi, [rbp - 0x320]
	mov	qword ptr [rbp - 0x180], rcx
	nop	
	mov	rcx, rsi
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x180]
	mov	qword ptr [rbp - 0xd0], rdi
	mov	rsp, rsp
	mov	rdi, rsi
	mov	rsi, qword ptr [rbp - 0xd0]
	rep movsq	qword ptr [rdi], qword ptr [rsi]
	mov	qword ptr [rbp - 0x330], rax
	lea	rsi, [rsi]
	call	io_blksize
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x40]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x350]
	mov	rdi, rax
	lea	rsi, [rsi]
	call	buffer_lcm
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x228], rax
	mov	r8d, dword ptr [rbp - 0x308]
	mov	rsp, rsp
	and	r8d, 0xf000
	cmp	r8d, 0x8000
	jne	.label_564
	mov	rax, qword ptr [rbp - 0x2f0]
	nop	
	cmp	rax, qword ptr [rbp - 0x40]
	lea	rsi, [rsi]
	jae	.label_564
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x2f0]
	nop	
	add	rax, 1
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x40], rax
.label_564:
	mov	rax, qword ptr [rbp - 0x228]
	sub	rax, 1
	mov	rbp, rbp
	add	rax, qword ptr [rbp - 0x40]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x40], rax
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x40]
	xor	ecx, ecx
	lea	rsi, [rsi]
	mov	edx, ecx
	div	qword ptr [rbp - 0x228]
	mov	rsi, qword ptr [rbp - 0x40]
	sub	rsi, rdx
	mov	qword ptr [rbp - 0x40], rsi
	cmp	qword ptr [rbp - 0x40], 0
	lea	rsi, [rsi]
	je	.label_634
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x350]
	nop	
	cmp	rax, qword ptr [rbp - 0x40]
	jae	.label_600
.label_634:
	mov	rax, qword ptr [rbp - 0x228]
	mov	qword ptr [rbp - 0x40], rax
.label_600:
	lea	rdi, [rdi]
	jmp	.label_602
.label_602:
	mov	rax, qword ptr [rbp - 0x40]
	add	rax, qword ptr [rbp - 0x38]
	lea	rsi, [rsi]
	mov	rdi, rax
	call	xmalloc
	mov	qword ptr [rbp - 0x100], rax
	mov	rdi, qword ptr [rbp - 0x100]
	nop	
	mov	rsi, qword ptr [rbp - 0x38]
	call	ptr_align
	mov	qword ptr [rbp - 0x450], rax
	lea	rdi, [rdi]
	test	byte ptr [rbp - 0x40d], 1
	je	.label_589
	mov	rsp, rsp
	mov	edi, dword ptr [rbp - 0x244]
	mov	esi, dword ptr [rbp - 0x174]
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x450]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x40]
	mov	r8, qword ptr [rbp - 0x60]
	mov	r9, qword ptr [rbp - 0x2f0]
	mov	rbp, rbp
	test	byte ptr [rbp - 0x451], 1
	mov	dword ptr [rbp - 0xa4], edi
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x264], esi
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x20], rdx
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x108], rcx
	mov	qword ptr [rbp - 0x338], r8
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x240], r9
	lea	rdi, [rdi]
	je	.label_587
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x3f8]
	mov	ecx, dword ptr [rax + 0xc]
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x43c], ecx
	mov	rbp, rbp
	jmp	.label_611
.label_587:
	mov	eax, 1
	nop	
	mov	dword ptr [rbp - 0x43c], eax
	lea	rdi, [rdi]
	jmp	.label_611
.label_611:
	mov	eax, dword ptr [rbp - 0x43c]
	lea	rcx, [rbp - 0x3f9]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0xa0]
	mov	rsi, qword ptr [rbp - 0x168]
	lea	rdi, [rdi]
	mov	edi, dword ptr [rbp - 0xa4]
	mov	r8d, dword ptr [rbp - 0x264]
	mov	qword ptr [rbp - 0x220], rsi
	mov	esi, r8d
	lea	rsi, [rsi]
	mov	r9, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0xc8], rdx
	nop	
	mov	rdx, r9
	mov	r10, qword ptr [rbp - 0x108]
	mov	qword ptr [rbp - 0xc0], rcx
	mov	rbp, rbp
	mov	rcx, r10
	mov	r8, qword ptr [rbp - 0x338]
	mov	rsp, rsp
	mov	r9, qword ptr [rbp - 0x240]
	mov	dword ptr [rsp], eax
	mov	r11, qword ptr [rbp - 0xc8]
	mov	qword ptr [rsp + 8], r11
	mov	r11, qword ptr [rbp - 0x220]
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x10], r11
	mov	r11, qword ptr [rbp - 0xc0]
	mov	qword ptr [rsp + 0x18], r11
	call	extent_copy
	test	al, 1
	jne	.label_597
	jmp	.label_583
.label_597:
	jmp	.label_575
.label_583:
	lea	rsi, [rsi]
	test	byte ptr [rbp - 0x3f9], 1
	jne	.label_613
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x345], 0
	jmp	.label_567
.label_613:
	jmp	.label_589
.label_589:
	mov	edi, dword ptr [rbp - 0x244]
	mov	esi, dword ptr [rbp - 0x174]
	mov	rdx, qword ptr [rbp - 0x450]
	mov	rcx, qword ptr [rbp - 0x40]
	test	byte ptr [rbp - 0x451], 1
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x40c], edi
	mov	dword ptr [rbp - 0x25c], esi
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x138], rdx
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x48], rcx
	mov	rsp, rsp
	je	.label_557
	mov	rax, qword ptr [rbp - 0x60]
	mov	qword ptr [rbp - 0x10], rax
	nop	
	jmp	.label_603
.label_557:
	mov	rbp, rbp
	xor	eax, eax
	mov	ecx, eax
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x10], rcx
	jmp	.label_603
.label_603:
	nop	
	mov	rax, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x3f8]
	mov	rbp, rbp
	cmp	dword ptr [rcx + 0xc], 3
	nop	
	sete	dl
	mov	rcx, qword ptr [rbp - 0xa0]
	nop	
	mov	rsi, qword ptr [rbp - 0x168]
	lea	rdi, [rdi]
	mov	rdi, rsp
	lea	rdi, [rdi]
	lea	r8, [rbp - 0x14d]
	lea	rsi, [rsi]
	mov	qword ptr [rdi + 0x20], r8
	lea	rsi, [rsi]
	lea	r8, [rbp - 0x18]
	mov	qword ptr [rdi + 0x18], r8
	mov	qword ptr [rdi + 8], rsi
	lea	rdi, [rdi]
	mov	qword ptr [rdi], rcx
	mov	qword ptr [rdi + 0x10], -1
	and	dl, 1
	mov	rsp, rsp
	movzx	r9d, dl
	lea	rdi, [rdi]
	mov	edi, dword ptr [rbp - 0x40c]
	lea	rsi, [rsi]
	mov	esi, dword ptr [rbp - 0x25c]
	mov	rdx, qword ptr [rbp - 0x138]
	mov	rcx, qword ptr [rbp - 0x48]
	mov	r8, rax
	lea	rdi, [rdi]
	call	sparse_copy
	test	al, 1
	jne	.label_628
	mov	byte ptr [rbp - 0x345], 0
	jmp	.label_567
.label_628:
	test	byte ptr [rbp - 0x14d], 1
	mov	rsp, rsp
	je	.label_632
	mov	edi, dword ptr [rbp - 0x174]
	nop	
	mov	rsi, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	call	ftruncate
	cmp	eax, 0
	nop	
	jge	.label_632
	mov	rsp, rsp
	call	__errno_location
	nop	
	movabs	rdi, OFFSET FLAT:.str.66
	nop	
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0x274], esi
	mov	rsp, rsp
	call	gettext
	mov	edi, 4
	mov	rsi, qword ptr [rbp - 0x168]
	nop	
	mov	qword ptr [rbp - 0x160], rax
	lea	rdi, [rdi]
	call	quotearg_style
	xor	edi, edi
	mov	esi, dword ptr [rbp - 0x274]
	mov	rdx, qword ptr [rbp - 0x160]
	mov	rcx, rax
	mov	rsp, rsp
	mov	al, 0
	nop	
	call	error
	nop	
	mov	byte ptr [rbp - 0x345], 0
	jmp	.label_567
.label_632:
	jmp	.label_574
.label_574:
	mov	rsp, rsp
	jmp	.label_558
.label_558:
	mov	rbp, rbp
	jmp	.label_575
.label_575:
	mov	rax, qword ptr [rbp - 0x3f8]
	test	byte ptr [rax + 0x1f], 1
	mov	rsp, rsp
	je	.label_576
	nop	
	mov	rdi, qword ptr [rbp - 0x50]
	mov	rsp, rsp
	call	get_stat_atime
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x360], rax
	mov	qword ptr [rbp - 0x358], rdx
	nop	
	mov	rax, qword ptr [rbp - 0x360]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x90], rax
	mov	rax, qword ptr [rbp - 0x358]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x88], rax
	mov	rdi, qword ptr [rbp - 0x50]
	call	get_stat_mtime
	lea	rdi, [rdi]
	lea	rdi, [rbp - 0x90]
	mov	qword ptr [rbp - 0x130], rax
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x128], rdx
	mov	rax, qword ptr [rbp - 0x130]
	nop	
	mov	qword ptr [rbp - 0x80], rax
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x128]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x78], rax
	mov	ecx, dword ptr [rbp - 0x174]
	mov	rsi, qword ptr [rbp - 0x168]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x28], rdi
	mov	edi, ecx
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	call	fdutimens
	mov	rbp, rbp
	cmp	eax, 0
	je	.label_607
	mov	rsp, rsp
	call	__errno_location
	mov	rsp, rsp
	movabs	rdi, OFFSET FLAT:.str.48
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0x284], esi
	mov	rsp, rsp
	call	gettext
	nop	
	mov	edi, 4
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x168]
	mov	qword ptr [rbp - 0x148], rax
	call	quotearg_style
	xor	edi, edi
	mov	esi, dword ptr [rbp - 0x284]
	mov	rdx, qword ptr [rbp - 0x148]
	mov	rcx, rax
	nop	
	mov	al, 0
	nop	
	call	error
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x3f8]
	nop	
	test	byte ptr [rcx + 0x24], 1
	je	.label_609
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x345], 0
	mov	rbp, rbp
	jmp	.label_567
.label_609:
	lea	rdi, [rdi]
	jmp	.label_607
.label_607:
	mov	rsp, rsp
	jmp	.label_576
.label_576:
	mov	rax, qword ptr [rbp - 0x3f8]
	mov	rbp, rbp
	test	byte ptr [rax + 0x1d], 1
	lea	rdi, [rdi]
	je	.label_579
	mov	rax, qword ptr [rbp - 0x50]
	nop	
	mov	ecx, dword ptr [rax + 0x1c]
	cmp	ecx, dword ptr [rbp - 0x1fc]
	jne	.label_633
	nop	
	mov	rax, qword ptr [rbp - 0x50]
	mov	ecx, dword ptr [rax + 0x20]
	mov	rbp, rbp
	cmp	ecx, dword ptr [rbp - 0x1f8]
	lea	rsi, [rsi]
	je	.label_579
.label_633:
	mov	rdi, qword ptr [rbp - 0x3f8]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x168]
	mov	edx, dword ptr [rbp - 0x174]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x50]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x230]
	lea	rsi, [rsi]
	movzx	r8d, byte ptr [rax]
	mov	rbp, rbp
	and	r8d, 1
	lea	r9, [rbp - 0x218]
	lea	rdi, [rdi]
	call	set_owner
	lea	rsi, [rsi]
	mov	edx, eax
	sub	eax, -1
	nop	
	mov	dword ptr [rbp - 0x120], edx
	mov	dword ptr [rbp - 0x16c], eax
	lea	rdi, [rdi]
	je	.label_572
	jmp	.label_577
.label_577:
	mov	eax, dword ptr [rbp - 0x120]
	test	eax, eax
	mov	rbp, rbp
	je	.label_578
	jmp	.label_582
.label_572:
	mov	byte ptr [rbp - 0x345], 0
	jmp	.label_567
.label_578:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0xd8]
	and	eax, 0xfffff1ff
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0xd8], eax
.label_582:
	jmp	.label_579
.label_579:
	mov	rax, qword ptr [rbp - 0x3f8]
	mov	rsp, rsp
	test	byte ptr [rax + 0x27], 1
	lea	rdi, [rdi]
	je	.label_590
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x321], 0
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x200]
	lea	rdi, [rdi]
	and	eax, 0x80
	mov	rbp, rbp
	cmp	eax, 0
	lea	rdi, [rdi]
	jne	.label_595
	call	geteuid
	cmp	eax, 0
	mov	rsp, rsp
	je	.label_595
	lea	rdi, [rdi]
	mov	edx, 0x180
	mov	rsp, rsp
	mov	edi, dword ptr [rbp - 0x174]
	mov	rsi, qword ptr [rbp - 0x168]
	lea	rsi, [rsi]
	call	fchmod_or_lchmod
	lea	rdi, [rdi]
	cmp	eax, 0
	sete	cl
	and	cl, 1
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x321], cl
.label_595:
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0xa0]
	mov	esi, dword ptr [rbp - 0x244]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x168]
	mov	ecx, dword ptr [rbp - 0x174]
	mov	r8, qword ptr [rbp - 0x3f8]
	mov	rsp, rsp
	call	copy_attr
	lea	rdi, [rdi]
	test	al, 1
	jne	.label_591
	mov	rax, qword ptr [rbp - 0x3f8]
	test	byte ptr [rax + 0x28], 1
	nop	
	je	.label_591
	mov	byte ptr [rbp - 0x345], 0
.label_591:
	mov	rsp, rsp
	test	byte ptr [rbp - 0x321], 1
	nop	
	je	.label_627
	mov	rsp, rsp
	mov	edi, dword ptr [rbp - 0x174]
	mov	rsi, qword ptr [rbp - 0x168]
	mov	eax, dword ptr [rbp - 0x254]
	mov	ecx, dword ptr [rbp - 0x54]
	mov	rsp, rsp
	xor	ecx, 0xffffffff
	and	eax, ecx
	lea	rsi, [rsi]
	mov	edx, eax
	lea	rdi, [rdi]
	call	fchmod_or_lchmod
	mov	dword ptr [rbp - 0x260], eax
.label_627:
	jmp	.label_590
.label_590:
	mov	rdi, qword ptr [rbp - 0x168]
	lea	rdi, [rdi]
	mov	esi, dword ptr [rbp - 0x174]
	nop	
	mov	rdx, qword ptr [rbp - 0x50]
	mov	rsp, rsp
	call	set_author
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x3f8]
	test	byte ptr [rdx + 0x1e], 1
	nop	
	jne	.label_635
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x3f8]
	nop	
	test	byte ptr [rax + 0x18], 1
	je	.label_637
.label_635:
	mov	rdi, qword ptr [rbp - 0xa0]
	mov	rbp, rbp
	mov	esi, dword ptr [rbp - 0x244]
	mov	rdx, qword ptr [rbp - 0x168]
	lea	rdi, [rdi]
	mov	ecx, dword ptr [rbp - 0x174]
	mov	r8d, dword ptr [rbp - 0xd8]
	call	copy_acl
	cmp	eax, 0
	je	.label_601
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x3f8]
	mov	rsp, rsp
	test	byte ptr [rax + 0x24], 1
	nop	
	je	.label_601
	mov	byte ptr [rbp - 0x345], 0
.label_601:
	lea	rsi, [rsi]
	jmp	.label_566
.label_637:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x3f8]
	test	byte ptr [rax + 0x2b], 1
	je	.label_586
	mov	rdi, qword ptr [rbp - 0x168]
	mov	esi, dword ptr [rbp - 0x174]
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x3f8]
	mov	edx, dword ptr [rax + 0x10]
	call	set_acl
	nop	
	cmp	eax, 0
	je	.label_588
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x345], 0
.label_588:
	lea	rdi, [rdi]
	jmp	.label_593
.label_586:
	mov	rax, qword ptr [rbp - 0x3f8]
	test	byte ptr [rax + 0x20], 1
	mov	rsp, rsp
	je	.label_594
	mov	rax, qword ptr [rbp - 0x230]
	mov	rbp, rbp
	test	byte ptr [rax], 1
	je	.label_594
	mov	rdi, qword ptr [rbp - 0x168]
	mov	rbp, rbp
	mov	esi, dword ptr [rbp - 0x174]
	mov	qword ptr [rbp - 0xf8], rdi
	mov	dword ptr [rbp - 0x41c], esi
	call	cached_umask
	xor	eax, 0xffffffff
	mov	rsp, rsp
	and	eax, 0x1b6
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0xf8]
	mov	rsp, rsp
	mov	esi, dword ptr [rbp - 0x41c]
	lea	rdi, [rdi]
	mov	edx, eax
	lea	rdi, [rdi]
	call	set_acl
	cmp	eax, 0
	je	.label_573
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x345], 0
.label_573:
	mov	rsp, rsp
	jmp	.label_563
.label_594:
	cmp	dword ptr [rbp - 0x54], 0
	je	.label_562
	call	cached_umask
	nop	
	xor	eax, 0xffffffff
	mov	rbp, rbp
	and	eax, dword ptr [rbp - 0x54]
	mov	dword ptr [rbp - 0x54], eax
	cmp	dword ptr [rbp - 0x54], 0
	mov	rbp, rbp
	je	.label_610
	mov	edi, dword ptr [rbp - 0x174]
	mov	rsi, qword ptr [rbp - 0x168]
	mov	edx, dword ptr [rbp - 0x254]
	nop	
	call	fchmod_or_lchmod
	nop	
	cmp	eax, 0
	je	.label_610
	call	__errno_location
	movabs	rdi, OFFSET FLAT:.str.1_2
	lea	rdi, [rdi]
	mov	esi, dword ptr [rax]
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x2c], esi
	call	gettext
	lea	rdi, [rdi]
	mov	edi, 4
	mov	rsi, qword ptr [rbp - 0x168]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x270], rax
	call	quotearg_style
	mov	rsp, rsp
	xor	edi, edi
	nop	
	mov	esi, dword ptr [rbp - 0x2c]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x270]
	mov	rsp, rsp
	mov	rcx, rax
	lea	rsi, [rsi]
	mov	al, 0
	call	error
	mov	rcx, qword ptr [rbp - 0x3f8]
	test	byte ptr [rcx + 0x24], 1
	lea	rdi, [rdi]
	je	.label_636
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x345], 0
.label_636:
	jmp	.label_610
.label_610:
	jmp	.label_562
.label_562:
	jmp	.label_563
.label_563:
	jmp	.label_593
.label_593:
	jmp	.label_566
.label_566:
	mov	rbp, rbp
	jmp	.label_567
.label_567:
	mov	edi, dword ptr [rbp - 0x174]
	nop	
	call	close
	lea	rsi, [rsi]
	cmp	eax, 0
	jge	.label_571
	call	__errno_location
	movabs	rdi, OFFSET FLAT:.str.67
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0xdc], esi
	nop	
	call	gettext
	mov	edi, 4
	mov	rsi, qword ptr [rbp - 0x168]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x250], rax
	call	quotearg_style
	lea	rsi, [rsi]
	xor	edi, edi
	lea	rdi, [rdi]
	mov	esi, dword ptr [rbp - 0xdc]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x250]
	nop	
	mov	rcx, rax
	mov	al, 0
	mov	rsp, rsp
	call	error
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x345], 0
.label_571:
	jmp	.label_560
.label_560:
	mov	rsp, rsp
	mov	edi, dword ptr [rbp - 0x244]
	call	close
	mov	rbp, rbp
	cmp	eax, 0
	jge	.label_599
	call	__errno_location
	mov	rsp, rsp
	movabs	rdi, OFFSET FLAT:.str.67
	mov	rsp, rsp
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0x288], esi
	call	gettext
	mov	edi, 4
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0xa0]
	mov	qword ptr [rbp - 0x448], rax
	call	quotearg_style
	lea	rsi, [rsi]
	xor	edi, edi
	mov	esi, dword ptr [rbp - 0x288]
	nop	
	mov	rdx, qword ptr [rbp - 0x448]
	mov	rcx, rax
	mov	rsp, rsp
	mov	al, 0
	lea	rdi, [rdi]
	call	error
	nop	
	mov	byte ptr [rbp - 0x345], 0
.label_599:
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x100]
	lea	rsi, [rsi]
	call	free
	mov	rdi, qword ptr [rbp - 0xb8]
	lea	rsi, [rsi]
	call	free
	mov	rbp, rbp
	mov	al, byte ptr [rbp - 0x345]
	lea	rdi, [rdi]
	and	al, 1
	mov	byte ptr [rbp - 0x429], al
.label_624:
	mov	rsp, rsp
	mov	al, byte ptr [rbp - 0x429]
	lea	rsi, [rsi]
	and	al, 1
	lea	rsi, [rsi]
	movzx	eax, al
	add	rsp, 0x4e8
	pop	rbx
	lea	rdi, [rdi]
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40cfa0

	.globl restore_default_fscreatecon_or_die
	.type restore_default_fscreatecon_or_die, @function
restore_default_fscreatecon_or_die:
	push	rbp
	mov	rbp, rsp
	mov	rsp, rsp
	sub	rsp, 0x10
	lea	rdi, [rdi]
	xor	eax, eax
	lea	rsi, [rsi]
	mov	edi, eax
	lea	rdi, [rdi]
	call	setfscreatecon
	lea	rdi, [rdi]
	cmp	eax, 0
	je	.label_638
	call	__errno_location
	mov	rsp, rsp
	movabs	rdi, OFFSET FLAT:.str.75
	mov	esi, dword ptr [rax]
	nop	
	mov	dword ptr [rbp - 4], esi
	call	gettext
	lea	rdi, [rdi]
	mov	edi, 1
	nop	
	mov	esi, dword ptr [rbp - 4]
	lea	rdi, [rdi]
	mov	rdx, rax
	mov	al, 0
	call	error
.label_638:
	add	rsp, 0x10
	mov	rbp, rbp
	pop	rbp
	lea	rdi, [rdi]
	ret	
	.section	.text
	.align	32
	#Procedure 0x40d010

	.globl utimens_symlink
	.type utimens_symlink, @function
utimens_symlink:
	mov	rsp, rsp
	push	rbp
	mov	rbp, rsp
	lea	rsi, [rsi]
	sub	rsp, 0x20
	mov	rbp, rbp
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rdi, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	call	lutimens
	mov	dword ptr [rbp - 0x14], eax
	mov	rbp, rbp
	cmp	dword ptr [rbp - 0x14], 0
	je	.label_639
	call	__errno_location
	mov	rbp, rbp
	cmp	dword ptr [rax], 0x26
	jne	.label_639
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x14], 0
.label_639:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x14]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40d080

	.globl set_owner
	.type set_owner, @function
set_owner:
	push	rbp
	mov	rbp, rsp
	lea	rdi, [rdi]
	sub	rsp, 0x80
	mov	al, r8b
	mov	qword ptr [rbp - 0x40], rdi
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x20], rsi
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x5c], edx
	mov	qword ptr [rbp - 0x50], rcx
	lea	rdi, [rdi]
	and	al, 1
	mov	byte ptr [rbp - 0xd], al
	mov	qword ptr [rbp - 8], r9
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x50]
	mov	edx, dword ptr [rcx + 0x1c]
	mov	dword ptr [rbp - 0x18], edx
	mov	rcx, qword ptr [rbp - 0x50]
	mov	rsp, rsp
	mov	edx, dword ptr [rcx + 0x20]
	mov	dword ptr [rbp - 0x6c], edx
	test	byte ptr [rbp - 0xd], 1
	jne	.label_640
	mov	rax, qword ptr [rbp - 0x40]
	test	byte ptr [rax + 0x1e], 1
	nop	
	jne	.label_655
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x40]
	test	byte ptr [rax + 0x18], 1
	lea	rdi, [rdi]
	jne	.label_655
	mov	rax, qword ptr [rbp - 0x40]
	mov	rsp, rsp
	test	byte ptr [rax + 0x2b], 1
	lea	rsi, [rsi]
	je	.label_640
.label_655:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	mov	ecx, dword ptr [rax + 0x18]
	mov	dword ptr [rbp - 0x14], ecx
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x40]
	test	byte ptr [rax + 0x1e], 1
	nop	
	jne	.label_643
	mov	rax, qword ptr [rbp - 0x40]
	nop	
	test	byte ptr [rax + 0x18], 1
	mov	rbp, rbp
	je	.label_649
.label_643:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x50]
	mov	rsp, rsp
	mov	ecx, dword ptr [rax + 0x18]
	mov	dword ptr [rbp - 0x74], ecx
	lea	rdi, [rdi]
	jmp	.label_652
.label_649:
	mov	rax, qword ptr [rbp - 0x40]
	lea	rsi, [rsi]
	mov	ecx, dword ptr [rax + 0x10]
	mov	dword ptr [rbp - 0x74], ecx
.label_652:
	mov	eax, dword ptr [rbp - 0x74]
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x68], eax
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x14]
	nop	
	and	eax, dword ptr [rbp - 0x68]
	and	eax, 0x1c0
	mov	dword ptr [rbp - 0x24], eax
	mov	eax, dword ptr [rbp - 0x14]
	and	eax, 0xfff
	mov	ecx, dword ptr [rbp - 0x68]
	xor	ecx, 0xffffffff
	lea	rsi, [rsi]
	or	ecx, 0x800
	lea	rdi, [rdi]
	or	ecx, 0x400
	or	ecx, 0x200
	mov	rbp, rbp
	and	eax, ecx
	lea	rsi, [rsi]
	cmp	eax, 0
	nop	
	je	.label_654
	nop	
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	mov	esi, dword ptr [rbp - 0x5c]
	mov	edx, dword ptr [rbp - 0x24]
	call	qset_acl
	nop	
	cmp	eax, 0
	nop	
	je	.label_654
	mov	rdi, qword ptr [rbp - 0x40]
	call	owner_failure_ok
	test	al, 1
	lea	rdi, [rdi]
	jne	.label_656
	lea	rdi, [rdi]
	call	__errno_location
	mov	rsp, rsp
	movabs	rdi, OFFSET FLAT:.str.76
	nop	
	mov	esi, dword ptr [rax]
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x44], esi
	mov	rsp, rsp
	call	gettext
	lea	rsi, [rsi]
	mov	edi, 4
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x38], rax
	call	quotearg_style
	xor	edi, edi
	mov	rbp, rbp
	mov	esi, dword ptr [rbp - 0x44]
	mov	rdx, qword ptr [rbp - 0x38]
	mov	rcx, rax
	mov	rsp, rsp
	mov	al, 0
	mov	rsp, rsp
	call	error
.label_656:
	xor	eax, eax
	mov	rcx, qword ptr [rbp - 0x40]
	mov	dl, byte ptr [rcx + 0x24]
	mov	rsp, rsp
	and	dl, 1
	movzx	esi, dl
	sub	eax, esi
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x30], eax
	mov	rbp, rbp
	jmp	.label_645
.label_654:
	jmp	.label_640
.label_640:
	mov	rsp, rsp
	cmp	dword ptr [rbp - 0x5c], -1
	mov	rbp, rbp
	je	.label_657
	mov	edi, dword ptr [rbp - 0x5c]
	mov	esi, dword ptr [rbp - 0x18]
	mov	edx, dword ptr [rbp - 0x6c]
	call	fchown
	cmp	eax, 0
	jne	.label_642
	mov	dword ptr [rbp - 0x30], 1
	jmp	.label_645
.label_642:
	call	__errno_location
	nop	
	cmp	dword ptr [rax], 1
	mov	rsp, rsp
	je	.label_647
	lea	rsi, [rsi]
	call	__errno_location
	cmp	dword ptr [rax], 0x16
	jne	.label_651
.label_647:
	call	__errno_location
	mov	esi, 0xffffffff
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 0xc], ecx
	mov	edi, dword ptr [rbp - 0x5c]
	mov	rbp, rbp
	mov	edx, dword ptr [rbp - 0x6c]
	lea	rsi, [rsi]
	call	fchown
	nop	
	mov	dword ptr [rbp - 0x2c], eax
	mov	eax, dword ptr [rbp - 0xc]
	mov	dword ptr [rbp - 0x28], eax
	mov	rsp, rsp
	call	__errno_location
	nop	
	mov	ecx, dword ptr [rbp - 0x28]
	mov	dword ptr [rax], ecx
.label_651:
	jmp	.label_644
.label_657:
	mov	rdi, qword ptr [rbp - 0x20]
	nop	
	mov	esi, dword ptr [rbp - 0x18]
	mov	rsp, rsp
	mov	edx, dword ptr [rbp - 0x6c]
	lea	rdi, [rdi]
	call	lchown
	cmp	eax, 0
	lea	rdi, [rdi]
	jne	.label_646
	nop	
	mov	dword ptr [rbp - 0x30], 1
	jmp	.label_645
.label_646:
	call	__errno_location
	cmp	dword ptr [rax], 1
	lea	rdi, [rdi]
	je	.label_650
	lea	rdi, [rdi]
	call	__errno_location
	cmp	dword ptr [rax], 0x16
	lea	rsi, [rsi]
	jne	.label_653
.label_650:
	mov	rsp, rsp
	call	__errno_location
	mov	esi, 0xffffffff
	lea	rsi, [rsi]
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 0x60], ecx
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	mov	edx, dword ptr [rbp - 0x6c]
	call	lchown
	nop	
	mov	dword ptr [rbp - 0x48], eax
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x60]
	mov	dword ptr [rbp - 0x70], eax
	call	__errno_location
	mov	ecx, dword ptr [rbp - 0x70]
	mov	rbp, rbp
	mov	dword ptr [rax], ecx
.label_653:
	lea	rdi, [rdi]
	jmp	.label_644
.label_644:
	mov	rdi, qword ptr [rbp - 0x40]
	lea	rdi, [rdi]
	call	chown_failure_ok
	test	al, 1
	mov	rsp, rsp
	jne	.label_648
	call	__errno_location
	nop	
	movabs	rdi, OFFSET FLAT:.str.46
	mov	esi, dword ptr [rax]
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x64], esi
	lea	rdi, [rdi]
	call	gettext
	mov	edi, 4
	mov	rsi, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x58], rax
	lea	rsi, [rsi]
	call	quotearg_style
	lea	rdi, [rdi]
	xor	edi, edi
	mov	esi, dword ptr [rbp - 0x64]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x58]
	mov	rbp, rbp
	mov	rcx, rax
	mov	al, 0
	lea	rsi, [rsi]
	call	error
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x40]
	test	byte ptr [rcx + 0x24], 1
	lea	rdi, [rdi]
	je	.label_641
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x30], 0xffffffff
	mov	rbp, rbp
	jmp	.label_645
.label_641:
	lea	rdi, [rdi]
	jmp	.label_648
.label_648:
	mov	dword ptr [rbp - 0x30], 0
.label_645:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x30]
	mov	rbp, rbp
	add	rsp, 0x80
	pop	rbp
	nop	
	ret	
	.section	.text
	.align	32
	#Procedure 0x40d450

	.globl copy_attr
	.type copy_attr, @function
copy_attr:
	lea	rsi, [rsi]
	push	rbp
	lea	rsi, [rsi]
	mov	rbp, rsp
	mov	al, 1
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 8], rdi
	mov	dword ptr [rbp - 0xc], esi
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x18], rdx
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x24], ecx
	nop	
	mov	qword ptr [rbp - 0x20], r8
	and	al, 1
	mov	rbp, rbp
	movzx	eax, al
	nop	
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40d490

	.globl set_author
	.type set_author, @function
set_author:
	push	rbp
	mov	rbp, rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 0x10], rdi
	mov	dword ptr [rbp - 0x14], esi
	nop	
	mov	qword ptr [rbp - 8], rdx
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40d4b0

	.globl writable_destination
	.type writable_destination, @function
writable_destination:
	lea	rdi, [rdi]
	push	rbp
	nop	
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	rbp, rbp
	mov	al, 1
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 8], rdi
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x10], esi
	mov	esi, dword ptr [rbp - 0x10]
	mov	rsp, rsp
	and	esi, 0xf000
	cmp	esi, 0xa000
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 9], al
	je	.label_658
	mov	rsp, rsp
	call	can_write_any_file
	mov	rsp, rsp
	mov	cl, 1
	mov	rsp, rsp
	test	al, 1
	mov	rsp, rsp
	mov	byte ptr [rbp - 9], cl
	jne	.label_658
	mov	rsp, rsp
	mov	esi, 2
	mov	rdi, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	call	euidaccess
	cmp	eax, 0
	mov	rsp, rsp
	sete	cl
	mov	byte ptr [rbp - 9], cl
.label_658:
	lea	rsi, [rsi]
	mov	al, byte ptr [rbp - 9]
	lea	rdi, [rdi]
	and	al, 1
	nop	
	movzx	eax, al
	mov	rsp, rsp
	add	rsp, 0x10
	mov	rbp, rbp
	pop	rbp
	mov	rbp, rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40d550

	.globl clone_file
	.type clone_file, @function
clone_file:
	nop	
	push	rbp
	lea	rdi, [rdi]
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	eax, 0x40049409
	lea	rsi, [rsi]
	mov	ecx, eax
	mov	dword ptr [rbp - 4], edi
	nop	
	mov	dword ptr [rbp - 8], esi
	mov	edi, dword ptr [rbp - 4]
	mov	edx, dword ptr [rbp - 8]
	lea	rdi, [rdi]
	mov	rsi, rcx
	mov	al, 0
	nop	
	call	ioctl
	add	rsp, 0x10
	mov	rsp, rsp
	pop	rbp
	lea	rsi, [rsi]
	ret	
	.section	.text
	.align	32
	#Procedure 0x40d590

	.globl io_blksize
	.type io_blksize, @function
io_blksize:
	nop	
	push	rbp
	mov	rbp, rsp
	lea	rdi, [rdi]
	lea	rax, [rbp + 0x10]
	lea	rsi, [rsi]
	xor	ecx, ecx
	mov	edx, ecx
	cmp	rdx, qword ptr [rax + 0x38]
	mov	qword ptr [rbp - 0x18], rax
	lea	rdi, [rdi]
	jge	.label_663
	nop	
	movabs	rax, 0x2000000000000000
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x18]
	cmp	qword ptr [rcx + 0x38], rax
	mov	rbp, rbp
	ja	.label_663
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rax + 0x38]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x10], rcx
	mov	rbp, rbp
	jmp	.label_659
.label_663:
	mov	rbp, rbp
	mov	eax, 0x200
	lea	rdi, [rdi]
	mov	ecx, eax
	mov	qword ptr [rbp - 0x10], rcx
	jmp	.label_659
.label_659:
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, 0x20000
	mov	edx, ecx
	nop	
	cmp	rdx, rax
	mov	rbp, rbp
	jle	.label_661
	mov	eax, 0x20000
	mov	rsp, rsp
	mov	ecx, eax
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x20], rcx
	nop	
	jmp	.label_664
.label_661:
	xor	eax, eax
	mov	rsp, rsp
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	cmp	rcx, qword ptr [rdx + 0x38]
	jge	.label_662
	mov	rbp, rbp
	movabs	rax, 0x2000000000000000
	mov	rcx, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	cmp	qword ptr [rcx + 0x38], rax
	mov	rbp, rbp
	ja	.label_662
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rax + 0x38]
	nop	
	mov	qword ptr [rbp - 8], rcx
	lea	rsi, [rsi]
	jmp	.label_660
.label_662:
	mov	eax, 0x200
	mov	rbp, rbp
	mov	ecx, eax
	mov	qword ptr [rbp - 8], rcx
	nop	
	jmp	.label_660
.label_660:
	mov	rax, qword ptr [rbp - 8]
	nop	
	mov	qword ptr [rbp - 0x20], rax
.label_664:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x20]
	nop	
	pop	rbp
	mov	rbp, rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40d6b0

	.globl is_probably_sparse
	.type is_probably_sparse, @function
is_probably_sparse:
	lea	rdi, [rdi]
	push	rbp
	mov	rbp, rsp
	nop	
	xor	eax, eax
	mov	cl, al
	mov	rbp, rbp
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	eax, dword ptr [rdi + 0x18]
	and	eax, 0xf000
	cmp	eax, 0x8000
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x11], cl
	mov	rsp, rsp
	jne	.label_665
	lea	rdi, [rdi]
	mov	eax, 0x200
	lea	rsi, [rsi]
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 8]
	mov	rdx, qword ptr [rdx + 0x40]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	rax, qword ptr [rsi + 0x30]
	mov	qword ptr [rbp - 0x10], rdx
	nop	
	cqo	
	idiv	rcx
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	cmp	rcx, rax
	mov	rbp, rbp
	setl	dil
	mov	byte ptr [rbp - 0x11], dil
.label_665:
	mov	al, byte ptr [rbp - 0x11]
	nop	
	and	al, 1
	lea	rsi, [rsi]
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40d740

	.globl ptr_align
	.type ptr_align, @function
ptr_align:
	push	rbp
	mov	rbp, rbp
	mov	rbp, rsp
	xor	eax, eax
	lea	rdi, [rdi]
	mov	ecx, eax
	mov	qword ptr [rbp - 0x20], rdi
	mov	rbp, rbp
	mov	qword ptr [rbp - 8], rsi
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x18], rsi
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x18]
	add	rsi, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	add	rsi, -1
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x10], rsi
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	xor	edx, edx
	lea	rdi, [rdi]
	div	qword ptr [rbp - 8]
	sub	rcx, rdx
	nop	
	add	rsi, rcx
	mov	rsp, rsp
	mov	rax, rsi
	mov	rsp, rsp
	pop	rbp
	mov	rbp, rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40d7b0

	.globl extent_copy
	.type extent_copy, @function
extent_copy:
	lea	rdi, [rdi]
	push	rbp
	lea	rdi, [rdi]
	mov	rbp, rsp
	nop	
	push	r15
	push	r14
	lea	rsi, [rsi]
	push	rbx
	mov	rbp, rbp
	sub	rsp, 0x1a8
	mov	rbp, rbp
	mov	rax, qword ptr [rbp + 0x28]
	lea	rsi, [rsi]
	mov	r10, qword ptr [rbp + 0x20]
	mov	r11, qword ptr [rbp + 0x18]
	mov	ebx, dword ptr [rbp + 0x10]
	lea	rsi, [rsi]
	lea	r14, [rbp - 0x100]
	nop	
	mov	dword ptr [rbp - 0x17c], edi
	nop	
	mov	dword ptr [rbp - 0x154], esi
	mov	qword ptr [rbp - 0x60], rdx
	mov	qword ptr [rbp - 0x120], rcx
	mov	qword ptr [rbp - 0x88], r8
	mov	qword ptr [rbp - 0x48], r9
	mov	dword ptr [rbp - 0x184], ebx
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0xc0], r11
	nop	
	mov	qword ptr [rbp - 0x138], r10
	mov	qword ptr [rbp - 0x140], rax
	mov	qword ptr [rbp - 0xa8], 0
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x28], 0
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x50], 0
	mov	edi, dword ptr [rbp - 0x17c]
	mov	rsi, r14
	mov	rsp, rsp
	call	extent_scan_init
	mov	rax, qword ptr [rbp - 0x140]
	mov	byte ptr [rax], 0
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x121], 1
.label_676:
	lea	rdi, [rbp - 0x100]
	lea	rsi, [rsi]
	call	extent_scan_read
	mov	rbp, rbp
	and	al, 1
	mov	byte ptr [rbp - 0x149], al
	test	byte ptr [rbp - 0x149], 1
	jne	.label_687
	mov	rbp, rbp
	test	byte ptr [rbp - 0xdf], 1
	mov	rsp, rsp
	je	.label_691
	mov	rsp, rsp
	jmp	.label_695
.label_691:
	lea	rsi, [rsi]
	test	byte ptr [rbp - 0xe0], 1
	mov	rbp, rbp
	je	.label_696
	mov	rax, qword ptr [rbp - 0x140]
	mov	byte ptr [rax], 1
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x31], 0
	jmp	.label_666
.label_696:
	lea	rdi, [rdi]
	call	__errno_location
	mov	rsp, rsp
	movabs	rdi, OFFSET FLAT:.str.68
	mov	esi, dword ptr [rax]
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x114], esi
	lea	rsi, [rsi]
	call	gettext
	xor	edi, edi
	mov	esi, 3
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0xc0]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x40], rax
	call	quotearg_n_style_colon
	mov	rsp, rsp
	xor	edi, edi
	nop	
	mov	esi, dword ptr [rbp - 0x114]
	mov	rdx, qword ptr [rbp - 0x40]
	mov	rbp, rbp
	mov	rcx, rax
	lea	rsi, [rsi]
	mov	al, 0
	call	error
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x31], 0
	jmp	.label_666
.label_687:
	nop	
	mov	byte ptr [rbp - 0x16d], 0
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x16c], 0
.label_672:
	lea	rdi, [rdi]
	mov	al, 1
	mov	ecx, dword ptr [rbp - 0x16c]
	mov	rsp, rsp
	mov	edx, ecx
	cmp	rdx, qword ptr [rbp - 0xe8]
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x17d], al
	jb	.label_681
	lea	rdi, [rdi]
	mov	al, byte ptr [rbp - 0x16d]
	mov	byte ptr [rbp - 0x17d], al
.label_681:
	nop	
	mov	al, byte ptr [rbp - 0x17d]
	mov	rsp, rsp
	test	al, 1
	mov	rsp, rsp
	jne	.label_690
	lea	rdi, [rdi]
	jmp	.label_669
.label_690:
	mov	eax, dword ptr [rbp - 0x16c]
	mov	ecx, eax
	cmp	rcx, qword ptr [rbp - 0xe8]
	lea	rdi, [rdi]
	jae	.label_697
	mov	eax, dword ptr [rbp - 0x16c]
	lea	rsi, [rsi]
	mov	ecx, eax
	mov	rbp, rbp
	imul	rcx, rcx, 0x18
	nop	
	add	rcx, qword ptr [rbp - 0xd8]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rcx]
	nop	
	mov	qword ptr [rbp - 0x80], rcx
	mov	eax, dword ptr [rbp - 0x16c]
	mov	ecx, eax
	imul	rcx, rcx, 0x18
	add	rcx, qword ptr [rbp - 0xd8]
	nop	
	mov	rcx, qword ptr [rcx + 8]
	nop	
	mov	qword ptr [rbp - 0x68], rcx
	jmp	.label_701
.label_697:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x16c]
	add	eax, -1
	mov	dword ptr [rbp - 0x16c], eax
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0xa8]
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x16c]
	mov	rbp, rbp
	mov	edx, eax
	lea	rsi, [rsi]
	imul	rdx, rdx, 0x18
	mov	rsp, rsp
	add	rdx, qword ptr [rbp - 0xd8]
	mov	rsp, rsp
	add	rcx, qword ptr [rdx + 8]
	mov	qword ptr [rbp - 0x80], rcx
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x68], 0
.label_701:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rbp - 0x80]
	mov	rbp, rbp
	add	rcx, qword ptr [rbp - 0x68]
	cmp	rax, rcx
	jge	.label_682
	mov	rax, qword ptr [rbp - 0x48]
	cmp	rax, qword ptr [rbp - 0x80]
	lea	rsi, [rsi]
	jge	.label_686
	mov	rax, qword ptr [rbp - 0x48]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x80], rax
.label_686:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x48]
	sub	rax, qword ptr [rbp - 0x80]
	mov	qword ptr [rbp - 0x68], rax
.label_682:
	mov	rax, qword ptr [rbp - 0x80]
	sub	rax, qword ptr [rbp - 0xa8]
	mov	rbp, rbp
	sub	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x198], rax
	mov	byte ptr [rbp - 0x121], 0
	cmp	qword ptr [rbp - 0x198], 0
	nop	
	je	.label_678
	lea	rdi, [rdi]
	xor	edx, edx
	mov	edi, dword ptr [rbp - 0x17c]
	mov	rsi, qword ptr [rbp - 0x80]
	lea	rsi, [rsi]
	call	lseek
	lea	rsi, [rsi]
	cmp	rax, 0
	jge	.label_704
	lea	rsi, [rsi]
	call	__errno_location
	mov	rsp, rsp
	movabs	rdi, OFFSET FLAT:.str.69
	mov	rbp, rbp
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0x70], esi
	call	gettext
	mov	edi, 4
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0xc0]
	mov	qword ptr [rbp - 0x90], rax
	call	quotearg_style
	xor	edi, edi
	mov	esi, dword ptr [rbp - 0x70]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x90]
	lea	rsi, [rsi]
	mov	rcx, rax
	mov	rbp, rbp
	mov	al, 0
	lea	rdi, [rdi]
	call	error
.label_668:
	lea	rdi, [rbp - 0x100]
	mov	rbp, rbp
	call	extent_scan_free
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x31], 0
	mov	rbp, rbp
	jmp	.label_666
.label_704:
	test	byte ptr [rbp - 0x16d], 1
	lea	rsi, [rsi]
	je	.label_684
	mov	rsp, rsp
	cmp	dword ptr [rbp - 0x184], 3
	nop	
	je	.label_689
.label_684:
	test	byte ptr [rbp - 0x16d], 1
	jne	.label_694
	cmp	dword ptr [rbp - 0x184], 1
	nop	
	je	.label_694
.label_689:
	lea	rdi, [rdi]
	mov	edi, dword ptr [rbp - 0x154]
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x138]
	cmp	dword ptr [rbp - 0x184], 3
	nop	
	sete	al
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x198]
	and	al, 1
	lea	rdi, [rdi]
	movzx	edx, al
	lea	rsi, [rsi]
	call	create_hole
	lea	rsi, [rsi]
	test	al, 1
	mov	rsp, rsp
	jne	.label_703
	mov	rbp, rbp
	jmp	.label_668
.label_703:
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x121], 1
	lea	rsi, [rsi]
	jmp	.label_674
.label_694:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x198]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x148], rax
	test	byte ptr [rbp - 0x16d], 1
	lea	rsi, [rsi]
	je	.label_670
	mov	rax, qword ptr [rbp - 0x48]
	sub	rax, qword ptr [rbp - 0x50]
	cmp	rax, qword ptr [rbp - 0x198]
	nop	
	jge	.label_683
	mov	rax, qword ptr [rbp - 0x48]
	mov	rbp, rbp
	sub	rax, qword ptr [rbp - 0x50]
	nop	
	mov	qword ptr [rbp - 0x78], rax
	mov	rsp, rsp
	jmp	.label_677
.label_683:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x198]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x78], rax
.label_677:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x78]
	nop	
	mov	qword ptr [rbp - 0x148], rax
.label_670:
	lea	rdi, [rdi]
	mov	edi, dword ptr [rbp - 0x154]
	mov	rsi, qword ptr [rbp - 0x148]
	call	write_zeros
	test	al, 1
	mov	rbp, rbp
	jne	.label_692
	call	__errno_location
	movabs	rdi, OFFSET FLAT:.str.70
	mov	esi, dword ptr [rax]
	nop	
	mov	dword ptr [rbp - 0x6c], esi
	lea	rsi, [rsi]
	call	gettext
	xor	edi, edi
	mov	rbp, rbp
	mov	esi, 3
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x138]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x110], rax
	call	quotearg_n_style_colon
	mov	rbp, rbp
	xor	edi, edi
	mov	rbp, rbp
	mov	esi, dword ptr [rbp - 0x6c]
	nop	
	mov	rdx, qword ptr [rbp - 0x110]
	mov	rsp, rsp
	mov	rcx, rax
	mov	al, 0
	lea	rsi, [rsi]
	call	error
	lea	rdi, [rdi]
	jmp	.label_668
.label_692:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x48]
	cmp	rax, qword ptr [rbp - 0x80]
	lea	rsi, [rsi]
	jge	.label_688
	mov	rax, qword ptr [rbp - 0x48]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x130], rax
	jmp	.label_673
.label_688:
	mov	rax, qword ptr [rbp - 0x80]
	mov	qword ptr [rbp - 0x130], rax
.label_673:
	mov	rax, qword ptr [rbp - 0x130]
	nop	
	mov	qword ptr [rbp - 0x50], rax
.label_674:
	jmp	.label_678
.label_678:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x80]
	mov	qword ptr [rbp - 0xa8], rax
	mov	byte ptr [rbp - 0x16d], 0
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x68]
	mov	qword ptr [rbp - 0x28], rax
	mov	edi, dword ptr [rbp - 0x17c]
	mov	esi, dword ptr [rbp - 0x154]
	mov	rdx, qword ptr [rbp - 0x60]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x120]
	cmp	dword ptr [rbp - 0x184], 3
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x118], edi
	nop	
	mov	dword ptr [rbp - 0x150], esi
	mov	qword ptr [rbp - 0x168], rdx
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x178], rcx
	jne	.label_679
	mov	rax, qword ptr [rbp - 0x88]
	mov	qword ptr [rbp - 0xb0], rax
	jmp	.label_699
.label_679:
	xor	eax, eax
	lea	rdi, [rdi]
	mov	ecx, eax
	nop	
	mov	qword ptr [rbp - 0xb0], rcx
	jmp	.label_699
.label_699:
	mov	rax, qword ptr [rbp - 0xb0]
	mov	r9d, 1
	mov	rbp, rbp
	lea	rcx, [rbp - 0x58]
	lea	rdx, [rbp - 0xb1]
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0xc0]
	mov	rdi, qword ptr [rbp - 0x138]
	mov	rsp, rsp
	mov	r8, qword ptr [rbp - 0x68]
	mov	rsp, rsp
	mov	r10d, dword ptr [rbp - 0x118]
	nop	
	mov	qword ptr [rbp - 0xc8], rdi
	lea	rdi, [rdi]
	mov	edi, r10d
	mov	r11d, dword ptr [rbp - 0x150]
	mov	qword ptr [rbp - 0x30], rsi
	mov	esi, r11d
	mov	rbx, qword ptr [rbp - 0x168]
	mov	qword ptr [rbp - 0x160], rdx
	mov	rdx, rbx
	mov	r14, qword ptr [rbp - 0x178]
	nop	
	mov	qword ptr [rbp - 0x20], rcx
	lea	rsi, [rsi]
	mov	rcx, r14
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x108], r8
	lea	rsi, [rsi]
	mov	r8, rax
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x30]
	nop	
	mov	qword ptr [rsp], rax
	nop	
	mov	rax, qword ptr [rbp - 0xc8]
	mov	qword ptr [rsp + 8], rax
	mov	rax, qword ptr [rbp - 0x108]
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x10], rax
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rsp + 0x18], rax
	lea	rsi, [rsi]
	mov	r15, qword ptr [rbp - 0x160]
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x20], r15
	call	sparse_copy
	mov	rbp, rbp
	test	al, 1
	nop	
	jne	.label_698
	jmp	.label_668
.label_698:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x80]
	add	rax, qword ptr [rbp - 0x58]
	mov	qword ptr [rbp - 0x50], rax
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x58], 0
	mov	rbp, rbp
	je	.label_700
	mov	rbp, rbp
	mov	al, byte ptr [rbp - 0xb1]
	and	al, 1
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x121], al
.label_700:
	mov	rax, qword ptr [rbp - 0x50]
	mov	rbp, rbp
	cmp	rax, qword ptr [rbp - 0x48]
	nop	
	jne	.label_667
	mov	byte ptr [rbp - 0xdf], 1
	lea	rdi, [rdi]
	jmp	.label_669
.label_667:
	nop	
	jmp	.label_702
.label_702:
	mov	eax, dword ptr [rbp - 0x16c]
	mov	rsp, rsp
	add	eax, 1
	mov	dword ptr [rbp - 0x16c], eax
	mov	rbp, rbp
	jmp	.label_672
.label_669:
	lea	rdi, [rbp - 0x100]
	call	extent_scan_free
	mov	al, byte ptr [rbp - 0xdf]
	nop	
	xor	al, 0xff
	test	al, 1
	lea	rsi, [rsi]
	jne	.label_676
.label_695:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x50]
	cmp	rax, qword ptr [rbp - 0x48]
	jl	.label_680
	test	byte ptr [rbp - 0x121], 1
	je	.label_671
.label_680:
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x184], 1
	je	.label_685
	mov	edi, dword ptr [rbp - 0x154]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x48]
	mov	rsp, rsp
	call	ftruncate
	cmp	eax, 0
	nop	
	jne	.label_693
	jmp	.label_671
.label_685:
	mov	edi, dword ptr [rbp - 0x154]
	nop	
	mov	rax, qword ptr [rbp - 0x48]
	sub	rax, qword ptr [rbp - 0x50]
	mov	rsp, rsp
	mov	rsi, rax
	mov	rbp, rbp
	call	write_zeros
	lea	rdi, [rdi]
	test	al, 1
	lea	rdi, [rdi]
	jne	.label_671
.label_693:
	call	__errno_location
	movabs	rdi, OFFSET FLAT:.str.66
	lea	rsi, [rsi]
	mov	esi, dword ptr [rax]
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0xcc], esi
	mov	rbp, rbp
	call	gettext
	mov	edi, 4
	mov	rsi, qword ptr [rbp - 0x138]
	mov	qword ptr [rbp - 0x190], rax
	lea	rsi, [rsi]
	call	quotearg_style
	xor	edi, edi
	mov	esi, dword ptr [rbp - 0xcc]
	mov	rdx, qword ptr [rbp - 0x190]
	mov	rsp, rsp
	mov	rcx, rax
	mov	al, 0
	call	error
	mov	byte ptr [rbp - 0x31], 0
	nop	
	jmp	.label_666
.label_671:
	mov	rsp, rsp
	cmp	dword ptr [rbp - 0x184], 3
	mov	rbp, rbp
	jne	.label_675
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x50]
	cmp	rax, qword ptr [rbp - 0x48]
	mov	rbp, rbp
	jge	.label_675
	mov	rsp, rsp
	mov	edi, dword ptr [rbp - 0x154]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x50]
	mov	rax, qword ptr [rbp - 0x48]
	sub	rax, qword ptr [rbp - 0x50]
	mov	rdx, rax
	mov	rbp, rbp
	call	punch_hole
	nop	
	cmp	eax, 0
	jge	.label_675
	mov	rbp, rbp
	call	__errno_location
	lea	rdi, [rdi]
	movabs	rdi, OFFSET FLAT:.str.71
	mov	esi, dword ptr [rax]
	nop	
	mov	dword ptr [rbp - 0x9c], esi
	lea	rsi, [rsi]
	call	gettext
	mov	rsp, rsp
	mov	edi, 4
	mov	rsi, qword ptr [rbp - 0x138]
	mov	qword ptr [rbp - 0x98], rax
	call	quotearg_style
	mov	rbp, rbp
	xor	edi, edi
	mov	esi, dword ptr [rbp - 0x9c]
	mov	rdx, qword ptr [rbp - 0x98]
	lea	rdi, [rdi]
	mov	rcx, rax
	lea	rsi, [rsi]
	mov	al, 0
	lea	rdi, [rdi]
	call	error
	mov	byte ptr [rbp - 0x31], 0
	jmp	.label_666
.label_675:
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x31], 1
.label_666:
	nop	
	mov	al, byte ptr [rbp - 0x31]
	and	al, 1
	lea	rsi, [rsi]
	movzx	eax, al
	mov	rbp, rbp
	add	rsp, 0x1a8
	nop	
	pop	rbx
	nop	
	pop	r14
	mov	rsp, rsp
	pop	r15
	nop	
	pop	rbp
	lea	rsi, [rsi]
	ret	
	.section	.text
	.align	32
	#Procedure 0x40e140

	.globl sparse_copy
	.type sparse_copy, @function
sparse_copy:
	mov	rsp, rsp
	push	rbp
	mov	rbp, rbp
	mov	rbp, rsp
	push	r15
	mov	rbp, rbp
	push	r14
	mov	rsp, rsp
	push	rbx
	sub	rsp, 0x108
	mov	al, r9b
	mov	r10, qword ptr [rbp + 0x30]
	mov	r11, qword ptr [rbp + 0x28]
	mov	rbx, qword ptr [rbp + 0x20]
	mov	r14, qword ptr [rbp + 0x18]
	nop	
	mov	r15, qword ptr [rbp + 0x10]
	mov	dword ptr [rbp - 0x2c], edi
	mov	rsp, rsp
	mov	dword ptr [rbp - 0xb4], esi
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0xc8], rdx
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x28], rcx
	mov	qword ptr [rbp - 0xf8], r8
	mov	rsp, rsp
	and	al, 1
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x39], al
	nop	
	mov	qword ptr [rbp - 0xe8], r15
	mov	qword ptr [rbp - 0x58], r14
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x78], rbx
	nop	
	mov	qword ptr [rbp - 0xc0], r11
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0xd0], r10
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0xd0]
	nop	
	mov	byte ptr [rcx], 0
	mov	rcx, qword ptr [rbp - 0xc0]
	lea	rsi, [rsi]
	mov	qword ptr [rcx], 0
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x112], 0
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0xa0], 0
.label_706:
	cmp	qword ptr [rbp - 0x78], 0
	je	.label_708
	mov	edi, dword ptr [rbp - 0x2c]
	mov	rsi, qword ptr [rbp - 0xc8]
	mov	rax, qword ptr [rbp - 0x78]
	cmp	rax, qword ptr [rbp - 0x28]
	mov	dword ptr [rbp - 0xa4], edi
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x20], rsi
	mov	rbp, rbp
	jae	.label_707
	mov	rax, qword ptr [rbp - 0x78]
	mov	qword ptr [rbp - 0x38], rax
	jmp	.label_721
.label_707:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x38], rax
.label_721:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x38]
	mov	edi, dword ptr [rbp - 0xa4]
	mov	rsi, qword ptr [rbp - 0x20]
	mov	rdx, rax
	lea	rdi, [rdi]
	call	read
	mov	qword ptr [rbp - 0x68], rax
	cmp	qword ptr [rbp - 0x68], 0
	jge	.label_732
	call	__errno_location
	mov	rbp, rbp
	cmp	dword ptr [rax], 4
	jne	.label_737
	mov	rsp, rsp
	jmp	.label_706
.label_737:
	lea	rdi, [rdi]
	call	__errno_location
	mov	rbp, rbp
	movabs	rdi, OFFSET FLAT:.str.72
	nop	
	mov	esi, dword ptr [rax]
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0xfc], esi
	nop	
	call	gettext
	lea	rsi, [rsi]
	mov	edi, 4
	mov	rsi, qword ptr [rbp - 0xe8]
	mov	qword ptr [rbp - 0x48], rax
	lea	rsi, [rsi]
	call	quotearg_style
	xor	edi, edi
	mov	esi, dword ptr [rbp - 0xfc]
	mov	rdx, qword ptr [rbp - 0x48]
	lea	rsi, [rsi]
	mov	rcx, rax
	mov	al, 0
	mov	rbp, rbp
	call	error
	nop	
	mov	byte ptr [rbp - 0x111], 0
	mov	rbp, rbp
	jmp	.label_710
.label_732:
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x68], 0
	mov	rbp, rbp
	jne	.label_717
	mov	rsp, rsp
	jmp	.label_708
.label_717:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x68]
	nop	
	mov	rcx, qword ptr [rbp - 0x78]
	lea	rsi, [rsi]
	sub	rcx, rax
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x78], rcx
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x68]
	mov	rcx, qword ptr [rbp - 0xc0]
	mov	rbp, rbp
	add	rax, qword ptr [rcx]
	mov	qword ptr [rcx], rax
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0xf8], 0
	je	.label_711
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0xf8]
	mov	qword ptr [rbp - 0x90], rax
	jmp	.label_727
.label_711:
	nop	
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x90], rax
.label_727:
	mov	rax, qword ptr [rbp - 0x90]
	mov	qword ptr [rbp - 0x88], rax
	mov	rax, qword ptr [rbp - 0xc8]
	mov	qword ptr [rbp - 0x108], rax
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0xc8]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0xd8], rax
.label_723:
	cmp	qword ptr [rbp - 0x68], 0
	lea	rsi, [rsi]
	je	.label_718
	mov	al, byte ptr [rbp - 0x112]
	mov	rbp, rbp
	and	al, 1
	mov	byte ptr [rbp - 0x91], al
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x88]
	cmp	rcx, qword ptr [rbp - 0x68]
	lea	rsi, [rsi]
	jae	.label_722
	mov	rax, qword ptr [rbp - 0x88]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x70], rax
	lea	rsi, [rsi]
	jmp	.label_730
.label_722:
	nop	
	mov	rax, qword ptr [rbp - 0x68]
	mov	qword ptr [rbp - 0x70], rax
.label_730:
	mov	rax, qword ptr [rbp - 0x70]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x88], rax
	cmp	qword ptr [rbp - 0xf8], 0
	je	.label_713
	cmp	qword ptr [rbp - 0x88], 0
	je	.label_713
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x108]
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x88]
	lea	rsi, [rsi]
	call	is_nul
	and	al, 1
	mov	byte ptr [rbp - 0x112], al
.label_713:
	xor	eax, eax
	mov	cl, al
	nop	
	mov	dl, byte ptr [rbp - 0x112]
	and	dl, 1
	lea	rdi, [rdi]
	movzx	eax, dl
	mov	dl, byte ptr [rbp - 0x91]
	and	dl, 1
	movzx	esi, dl
	cmp	eax, esi
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x49], cl
	mov	rsp, rsp
	je	.label_725
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0xa0], 0
	setne	al
	nop	
	mov	byte ptr [rbp - 0x49], al
.label_725:
	mov	al, byte ptr [rbp - 0x49]
	and	al, 1
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x79], al
	nop	
	mov	rcx, qword ptr [rbp - 0x68]
	nop	
	cmp	rcx, qword ptr [rbp - 0x88]
	jne	.label_709
	mov	al, 1
	mov	rbp, rbp
	test	byte ptr [rbp - 0x112], 1
	mov	byte ptr [rbp - 0x59], al
	je	.label_720
.label_709:
	cmp	qword ptr [rbp - 0x88], 0
	mov	rbp, rbp
	setne	al
	lea	rsi, [rsi]
	xor	al, 0xff
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x59], al
.label_720:
	nop	
	mov	al, byte ptr [rbp - 0x59]
	lea	rsi, [rsi]
	and	al, 1
	mov	byte ptr [rbp - 0xd9], al
	test	byte ptr [rbp - 0x79], 1
	jne	.label_729
	test	byte ptr [rbp - 0xd9], 1
	je	.label_735
.label_729:
	lea	rsi, [rsi]
	test	byte ptr [rbp - 0x79], 1
	lea	rsi, [rsi]
	jne	.label_705
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x88]
	mov	rsp, rsp
	add	rax, qword ptr [rbp - 0xa0]
	mov	qword ptr [rbp - 0xa0], rax
.label_705:
	test	byte ptr [rbp - 0x91], 1
	jne	.label_719
	mov	edi, dword ptr [rbp - 0xb4]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0xd8]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0xa0]
	nop	
	call	full_write
	lea	rdi, [rdi]
	cmp	rax, qword ptr [rbp - 0xa0]
	mov	rbp, rbp
	je	.label_728
	call	__errno_location
	movabs	rdi, OFFSET FLAT:.str.73
	nop	
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0x100], esi
	call	gettext
	mov	edi, 4
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x58]
	mov	qword ptr [rbp - 0x110], rax
	mov	rsp, rsp
	call	quotearg_style
	lea	rdi, [rdi]
	xor	edi, edi
	mov	esi, dword ptr [rbp - 0x100]
	mov	rdx, qword ptr [rbp - 0x110]
	lea	rsi, [rsi]
	mov	rcx, rax
	mov	rsp, rsp
	mov	al, 0
	lea	rdi, [rdi]
	call	error
	nop	
	mov	byte ptr [rbp - 0x111], 0
	jmp	.label_710
.label_728:
	mov	rbp, rbp
	jmp	.label_715
.label_719:
	lea	rsi, [rsi]
	mov	edi, dword ptr [rbp - 0xb4]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x58]
	mov	al, byte ptr [rbp - 0x39]
	mov	rcx, qword ptr [rbp - 0xa0]
	mov	rsp, rsp
	and	al, 1
	lea	rsi, [rsi]
	movzx	edx, al
	mov	rsp, rsp
	call	create_hole
	test	al, 1
	nop	
	jne	.label_724
	mov	byte ptr [rbp - 0x111], 0
	jmp	.label_710
.label_724:
	mov	rsp, rsp
	jmp	.label_715
.label_715:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x108]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0xd8], rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x88]
	mov	qword ptr [rbp - 0xa0], rax
	test	byte ptr [rbp - 0xd9], 1
	je	.label_714
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x88], 0
	jne	.label_712
	mov	qword ptr [rbp - 0x68], 0
.label_712:
	test	byte ptr [rbp - 0x79], 1
	je	.label_734
	nop	
	mov	qword ptr [rbp - 0x88], 0
	mov	rsp, rsp
	jmp	.label_736
.label_734:
	mov	qword ptr [rbp - 0xa0], 0
.label_736:
	jmp	.label_714
.label_714:
	jmp	.label_716
.label_735:
	mov	rsp, rsp
	movabs	rax, 0x7fffffffffffffff
	mov	rcx, qword ptr [rbp - 0xa0]
	sub	rax, qword ptr [rbp - 0x88]
	cmp	rcx, rax
	lea	rsi, [rsi]
	ja	.label_731
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x88]
	add	rax, qword ptr [rbp - 0xa0]
	mov	qword ptr [rbp - 0xa0], rax
	mov	rbp, rbp
	jmp	.label_726
.label_731:
	lea	rsi, [rsi]
	movabs	rdi, OFFSET FLAT:.str.74
	mov	rsp, rsp
	call	gettext
	mov	edi, 4
	mov	rsi, qword ptr [rbp - 0xe8]
	mov	qword ptr [rbp - 0xb0], rax
	mov	rbp, rbp
	call	quotearg_style
	lea	rsi, [rsi]
	xor	edi, edi
	mov	rbp, rbp
	mov	dword ptr [rbp - 0xec], edi
	lea	rsi, [rsi]
	mov	esi, dword ptr [rbp - 0xec]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0xb0]
	mov	rcx, rax
	mov	rbp, rbp
	mov	al, 0
	call	error
	mov	byte ptr [rbp - 0x111], 0
	mov	rsp, rsp
	jmp	.label_710
.label_726:
	nop	
	jmp	.label_716
.label_716:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x88]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x68]
	sub	rcx, rax
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x68], rcx
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x88]
	mov	rsp, rsp
	add	rax, qword ptr [rbp - 0x108]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x108], rax
	lea	rdi, [rdi]
	jmp	.label_723
.label_718:
	mov	al, byte ptr [rbp - 0x112]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0xd0]
	mov	rsp, rsp
	and	al, 1
	mov	rbp, rbp
	mov	byte ptr [rcx], al
	jmp	.label_706
.label_708:
	test	byte ptr [rbp - 0x112], 1
	lea	rsi, [rsi]
	je	.label_733
	nop	
	mov	edi, dword ptr [rbp - 0xb4]
	mov	rsi, qword ptr [rbp - 0x58]
	mov	al, byte ptr [rbp - 0x39]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0xa0]
	and	al, 1
	movzx	edx, al
	call	create_hole
	mov	rsp, rsp
	test	al, 1
	jne	.label_733
	mov	byte ptr [rbp - 0x111], 0
	jmp	.label_710
.label_733:
	mov	byte ptr [rbp - 0x111], 1
.label_710:
	lea	rdi, [rdi]
	mov	al, byte ptr [rbp - 0x111]
	mov	rsp, rsp
	and	al, 1
	lea	rdi, [rdi]
	movzx	eax, al
	add	rsp, 0x108
	nop	
	pop	rbx
	lea	rsi, [rsi]
	pop	r14
	mov	rbp, rbp
	pop	r15
	mov	rsp, rsp
	pop	rbp
	lea	rdi, [rdi]
	ret	
	.section	.text
	.align	32
	#Procedure 0x40e840

	.globl fchmod_or_lchmod
	.type fchmod_or_lchmod, @function
fchmod_or_lchmod:
	mov	rsp, rsp
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	lea	rdi, [rdi]
	xor	eax, eax
	mov	rbp, rbp
	mov	dword ptr [rbp - 4], edi
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x10], rsi
	mov	dword ptr [rbp - 0x14], edx
	cmp	eax, dword ptr [rbp - 4]
	mov	rbp, rbp
	jg	.label_738
	mov	rbp, rbp
	mov	edi, dword ptr [rbp - 4]
	mov	rsp, rsp
	mov	esi, dword ptr [rbp - 0x14]
	call	fchmod
	nop	
	mov	dword ptr [rbp - 8], eax
	jmp	.label_739
.label_738:
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x10]
	mov	esi, dword ptr [rbp - 0x14]
	call	chmod
	nop	
	mov	dword ptr [rbp - 8], eax
.label_739:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 8]
	mov	rsp, rsp
	add	rsp, 0x20
	lea	rsi, [rsi]
	pop	rbp
	mov	rsp, rsp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40e8b0

	.globl extent_scan_free
	.type extent_scan_free, @function
extent_scan_free:
	push	rbp
	mov	rbp, rsp
	nop	
	sub	rsp, 0x10
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rdi + 0x28]
	lea	rsi, [rsi]
	call	free
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 8]
	mov	qword ptr [rdi + 0x28], 0
	nop	
	mov	rdi, qword ptr [rbp - 8]
	mov	rbp, rbp
	mov	qword ptr [rdi + 0x18], 0
	add	rsp, 0x10
	lea	rsi, [rsi]
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40e900

	.globl create_hole
	.type create_hole, @function
create_hole:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x50
	mov	al, dl
	mov	rbp, rbp
	mov	edx, 1
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x18], edi
	nop	
	mov	qword ptr [rbp - 0x30], rsi
	and	al, 1
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x11], al
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x40], rcx
	lea	rsi, [rsi]
	mov	edi, dword ptr [rbp - 0x18]
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x40]
	call	lseek
	mov	qword ptr [rbp - 0x20], rax
	cmp	qword ptr [rbp - 0x20], 0
	mov	rbp, rbp
	jge	.label_742
	mov	rbp, rbp
	call	__errno_location
	movabs	rdi, OFFSET FLAT:.str.69
	mov	esi, dword ptr [rax]
	nop	
	mov	dword ptr [rbp - 0x44], esi
	mov	rsp, rsp
	call	gettext
	mov	rbp, rbp
	mov	edi, 4
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x30]
	nop	
	mov	qword ptr [rbp - 0x10], rax
	call	quotearg_style
	nop	
	xor	edi, edi
	nop	
	mov	esi, dword ptr [rbp - 0x44]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rcx, rax
	nop	
	mov	al, 0
	call	error
	mov	byte ptr [rbp - 0x31], 0
	mov	rbp, rbp
	jmp	.label_741
.label_742:
	nop	
	test	byte ptr [rbp - 0x11], 1
	lea	rsi, [rsi]
	je	.label_740
	mov	edi, dword ptr [rbp - 0x18]
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x20]
	sub	rax, qword ptr [rbp - 0x40]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x40]
	mov	rsi, rax
	call	punch_hole
	lea	rdi, [rdi]
	cmp	eax, 0
	jge	.label_740
	lea	rsi, [rsi]
	call	__errno_location
	movabs	rdi, OFFSET FLAT:.str.71
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 4], esi
	mov	rbp, rbp
	call	gettext
	mov	edi, 4
	mov	rsi, qword ptr [rbp - 0x30]
	nop	
	mov	qword ptr [rbp - 0x28], rax
	mov	rsp, rsp
	call	quotearg_style
	mov	rbp, rbp
	xor	edi, edi
	mov	esi, dword ptr [rbp - 4]
	mov	rdx, qword ptr [rbp - 0x28]
	mov	rcx, rax
	nop	
	mov	al, 0
	lea	rdi, [rdi]
	call	error
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x31], 0
	nop	
	jmp	.label_741
.label_740:
	mov	byte ptr [rbp - 0x31], 1
.label_741:
	mov	rsp, rsp
	mov	al, byte ptr [rbp - 0x31]
	lea	rsi, [rsi]
	and	al, 1
	movzx	eax, al
	nop	
	add	rsp, 0x50
	mov	rbp, rbp
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40ea60

	.globl write_zeros
	.type write_zeros, @function
write_zeros:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x24], edi
	mov	qword ptr [rbp - 0x18], rsi
	cmp	qword ptr [word ptr [write_zeros.zeros]],  0
	jne	.label_743
	mov	eax, 1
	lea	rsi, [rsi]
	mov	esi, eax
	mov	rbp, rbp
	mov	rdi,  qword ptr [word ptr [write_zeros.nz]]
	call	calloc
	mov	qword ptr [word ptr [write_zeros.zeros]],  rax
	mov	rbp, rbp
	cmp	qword ptr [word ptr [write_zeros.zeros]],  0
	mov	rsp, rsp
	jne	.label_750
	movabs	rax, OFFSET FLAT:write_zeros.fallback
	nop	
	mov	qword ptr [word ptr [write_zeros.zeros]],  rax
	mov	qword ptr [word ptr [write_zeros.nz]],  0x400
.label_750:
	nop	
	jmp	.label_743
.label_743:
	jmp	.label_747
.label_747:
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x18], 0
	mov	rsp, rsp
	je	.label_744
	lea	rsi, [rsi]
	mov	rax,  qword ptr [word ptr [write_zeros.nz]]
	cmp	rax, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	jae	.label_748
	mov	rbp, rbp
	mov	rax,  qword ptr [word ptr [write_zeros.nz]]
	mov	qword ptr [rbp - 0x20], rax
	jmp	.label_746
.label_748:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x20], rax
.label_746:
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 8], rax
	mov	rbp, rbp
	mov	edi, dword ptr [rbp - 0x24]
	mov	rbp, rbp
	mov	rsi,  qword ptr [word ptr [write_zeros.zeros]]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 8]
	mov	rsp, rsp
	call	full_write
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rbp - 8]
	mov	rsp, rsp
	je	.label_749
	mov	rsp, rsp
	mov	byte ptr [rbp - 9], 0
	jmp	.label_745
.label_749:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x18]
	sub	rcx, rax
	mov	qword ptr [rbp - 0x18], rcx
	lea	rdi, [rdi]
	jmp	.label_747
.label_744:
	mov	byte ptr [rbp - 9], 1
.label_745:
	lea	rsi, [rsi]
	mov	al, byte ptr [rbp - 9]
	and	al, 1
	movzx	eax, al
	add	rsp, 0x30
	mov	rbp, rbp
	pop	rbp
	mov	rbp, rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40ebb0

	.globl punch_hole
	.type punch_hole, @function
punch_hole:
	push	rbp
	lea	rsi, [rsi]
	mov	rbp, rsp
	mov	rsp, rsp
	sub	rsp, 0x20
	mov	eax, 3
	mov	dword ptr [rbp - 0xc], edi
	nop	
	mov	qword ptr [rbp - 8], rsi
	nop	
	mov	qword ptr [rbp - 0x18], rdx
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x1c], 0
	mov	rsp, rsp
	mov	edi, dword ptr [rbp - 0xc]
	mov	rdx, qword ptr [rbp - 8]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	esi, eax
	call	fallocate
	mov	dword ptr [rbp - 0x1c], eax
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x1c], 0
	mov	rbp, rbp
	jge	.label_751
	nop	
	call	__errno_location
	lea	rdi, [rdi]
	mov	edi, dword ptr [rax]
	call	is_ENOTSUP
	test	al, 1
	lea	rdi, [rdi]
	jne	.label_752
	lea	rsi, [rsi]
	call	__errno_location
	lea	rdi, [rdi]
	cmp	dword ptr [rax], 0x26
	nop	
	jne	.label_751
.label_752:
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x1c], 0
.label_751:
	mov	eax, dword ptr [rbp - 0x1c]
	add	rsp, 0x20
	mov	rbp, rbp
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40ec50

	.globl is_ENOTSUP
	.type is_ENOTSUP, @function
is_ENOTSUP:
	mov	rbp, rbp
	push	rbp
	mov	rbp, rbp
	mov	rbp, rsp
	lea	rsi, [rsi]
	mov	al, 1
	nop	
	mov	dword ptr [rbp - 8], edi
	lea	rsi, [rsi]
	cmp	dword ptr [rbp - 8], 0x5f
	mov	byte ptr [rbp - 1], al
	nop	
	je	.label_753
	xor	eax, eax
	mov	cl, al
	mov	rsp, rsp
	mov	byte ptr [rbp - 1], cl
	lea	rsi, [rsi]
	jmp	.label_753
.label_753:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40ec90

	.globl is_nul
	.type is_nul, @function
is_nul:
	lea	rdi, [rdi]
	push	rbp
	nop	
	mov	rbp, rsp
	nop	
	sub	rsp, 0x30
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x18], rdi
	mov	qword ptr [rbp - 0x20], rsi
	mov	rsi, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x10], rsi
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x20], 0
	jne	.label_762
	mov	byte ptr [rbp - 1], 1
	nop	
	jmp	.label_756
.label_762:
	jmp	.label_758
.label_758:
	mov	rax, qword ptr [rbp - 0x20]
	nop	
	and	rax, 0
	cmp	rax, 0
	mov	rbp, rbp
	je	.label_760
	mov	rax, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	cmp	byte ptr [rax], 0
	lea	rsi, [rsi]
	je	.label_755
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 1], 0
	jmp	.label_756
.label_755:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x10]
	nop	
	add	rax, 1
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x10], rax
	mov	rax, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	add	rax, -1
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x20], rax
	nop	
	cmp	qword ptr [rbp - 0x20], 0
	mov	rbp, rbp
	jne	.label_754
	mov	byte ptr [rbp - 1], 1
	mov	rsp, rsp
	jmp	.label_756
.label_754:
	jmp	.label_758
.label_760:
	jmp	.label_757
.label_757:
	mov	rax, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	cl, byte ptr [rax]
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x21], cl
	nop	
	cmp	byte ptr [rbp - 0x21], 0
	lea	rdi, [rdi]
	je	.label_759
	nop	
	mov	byte ptr [rbp - 1], 0
	jmp	.label_756
.label_759:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x10]
	nop	
	add	rax, 1
	mov	qword ptr [rbp - 0x10], rax
	mov	rax, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	sub	rax, 1
	mov	qword ptr [rbp - 0x20], rax
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x20], 0
	lea	rdi, [rdi]
	jne	.label_763
	mov	byte ptr [rbp - 1], 1
	lea	rdi, [rdi]
	jmp	.label_756
.label_763:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x20]
	and	rax, 0xf
	nop	
	cmp	rax, 0
	jne	.label_761
	jmp	.label_764
.label_761:
	mov	rsp, rsp
	jmp	.label_757
.label_764:
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x20]
	call	memcmp
	cmp	eax, 0
	mov	rsp, rsp
	sete	cl
	lea	rdi, [rdi]
	and	cl, 1
	mov	byte ptr [rbp - 1], cl
.label_756:
	mov	al, byte ptr [rbp - 1]
	nop	
	and	al, 1
	mov	rbp, rbp
	movzx	eax, al
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40ee10

	.globl owner_failure_ok
	.type owner_failure_ok, @function
owner_failure_ok:
	push	rbp
	mov	rbp, rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 8], rdi
	nop	
	call	__errno_location
	cmp	dword ptr [rax], 1
	je	.label_766
	call	__errno_location
	xor	ecx, ecx
	mov	rsp, rsp
	mov	dl, cl
	cmp	dword ptr [rax], 0x16
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 9], dl
	jne	.label_765
.label_766:
	mov	rax, qword ptr [rbp - 8]
	mov	cl, byte ptr [rax + 0x1b]
	xor	cl, 0xff
	mov	rbp, rbp
	mov	byte ptr [rbp - 9], cl
.label_765:
	mov	al, byte ptr [rbp - 9]
	and	al, 1
	movzx	eax, al
	mov	rsp, rsp
	add	rsp, 0x10
	pop	rbp
	mov	rbp, rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40ee70

	.globl forget_created
	.type forget_created, @function
forget_created:
	lea	rdi, [rdi]
	push	rbp
	mov	rbp, rsp
	mov	rsp, rsp
	sub	rsp, 0x30
	nop	
	lea	rax, [rbp - 0x30]
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	rsi, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x30], rsi
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x28], rsi
	mov	qword ptr [rbp - 0x20], 0
	lea	rdi, [rdi]
	mov	rdi,  qword ptr [word ptr [src_to_dest]]
	mov	rsi, rax
	call	hash_delete
	nop	
	mov	qword ptr [rbp - 8], rax
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 8], 0
	lea	rsi, [rsi]
	je	.label_767
	mov	rax, qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	rdi, rax
	call	src_to_dest_free
.label_767:
	mov	rsp, rsp
	add	rsp, 0x30
	pop	rbp
	mov	rsp, rsp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40eef0

	.globl src_to_dest_free
	.type src_to_dest_free, @function
src_to_dest_free:
	mov	rbp, rbp
	push	rbp
	mov	rsp, rsp
	mov	rbp, rsp
	nop	
	sub	rsp, 0x10
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x10], rdi
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rdi + 0x10]
	lea	rsi, [rsi]
	call	free
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 8]
	nop	
	call	free
	add	rsp, 0x10
	mov	rsp, rsp
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40ef40

	.globl src_to_dest_lookup
	.type src_to_dest_lookup, @function
src_to_dest_lookup:
	lea	rsi, [rsi]
	push	rbp
	mov	rbp, rbp
	mov	rbp, rsp
	sub	rsp, 0x40
	mov	rbp, rbp
	lea	rax, [rbp - 0x28]
	mov	qword ptr [rbp - 0x38], rdi
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsi, qword ptr [rbp - 0x38]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x28], rsi
	mov	rsi, qword ptr [rbp - 0x10]
	nop	
	mov	qword ptr [rbp - 0x20], rsi
	lea	rsi, [rsi]
	mov	rdi,  qword ptr [word ptr [src_to_dest]]
	mov	rsp, rsp
	mov	rsi, rax
	call	hash_lookup
	mov	qword ptr [rbp - 0x30], rax
	cmp	qword ptr [rbp - 0x30], 0
	nop	
	je	.label_768
	mov	rax, qword ptr [rbp - 0x30]
	mov	rax, qword ptr [rax + 0x10]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_769
.label_768:
	xor	eax, eax
	mov	ecx, eax
	mov	qword ptr [rbp - 8], rcx
	jmp	.label_769
.label_769:
	mov	rax, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	add	rsp, 0x40
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40efd0

	.globl remember_copied
	.type remember_copied, @function
remember_copied:
	push	rbp
	mov	rbp, rsp
	mov	rsp, rsp
	sub	rsp, 0x30
	mov	eax, 0x18
	mov	ecx, eax
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x20], rdi
	mov	qword ptr [rbp - 0x28], rsi
	mov	qword ptr [rbp - 8], rdx
	mov	rdi, rcx
	lea	rsi, [rsi]
	call	xmalloc
	mov	qword ptr [rbp - 0x10], rax
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	call	xstrdup
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rcx + 0x10], rax
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x28]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	qword ptr [rcx], rax
	mov	rax, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	qword ptr [rcx + 8], rax
	mov	rdi,  qword ptr [word ptr [src_to_dest]]
	mov	rax, qword ptr [rbp - 0x10]
	mov	rsi, rax
	call	hash_insert
	mov	qword ptr [rbp - 0x18], rax
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x18], 0
	jne	.label_771
	call	xalloc_die
.label_771:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	cmp	rax, qword ptr [rbp - 0x10]
	nop	
	je	.label_772
	mov	rax, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	rdi, rax
	lea	rdi, [rdi]
	call	src_to_dest_free
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax + 0x10]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_770
.label_772:
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x30], 0
.label_770:
	mov	rax, qword ptr [rbp - 0x30]
	mov	rsp, rsp
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40f0c0

	.globl hash_init
	.type hash_init, @function
hash_init:
	mov	rsp, rsp
	push	rbp
	lea	rdi, [rdi]
	mov	rbp, rsp
	lea	rdi, [rdi]
	mov	eax, 0x67
	nop	
	mov	edi, eax
	lea	rdi, [rdi]
	xor	eax, eax
	nop	
	mov	esi, eax
	movabs	rdx, OFFSET FLAT:src_to_dest_hash
	movabs	rcx, OFFSET FLAT:src_to_dest_compare
	movabs	r8, OFFSET FLAT:src_to_dest_free
	lea	rsi, [rsi]
	call	hash_initialize
	mov	rsp, rsp
	mov	qword ptr [word ptr [src_to_dest]],  rax
	lea	rsi, [rsi]
	cmp	qword ptr [word ptr [src_to_dest]],  0
	jne	.label_773
	call	xalloc_die
.label_773:
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40f130

	.globl src_to_dest_hash
	.type src_to_dest_hash, @function
src_to_dest_hash:
	lea	rdi, [rdi]
	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsi, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x18], rsi
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	mov	rax, qword ptr [rsi]
	xor	ecx, ecx
	mov	edx, ecx
	mov	rbp, rbp
	div	qword ptr [rbp - 0x10]
	mov	rax, rdx
	mov	rsp, rsp
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40f170

	.globl src_to_dest_compare
	.type src_to_dest_compare, @function
src_to_dest_compare:
	push	rbp
	mov	rbp, rbp
	mov	rbp, rsp
	lea	rdi, [rdi]
	xor	eax, eax
	mov	cl, al
	mov	qword ptr [rbp - 0x18], rdi
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x20], rsi
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	mov	qword ptr [rbp - 8], rsi
	mov	rsi, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x28], rsi
	mov	rsi, qword ptr [rbp - 8]
	mov	rbp, rbp
	mov	rsi, qword ptr [rsi]
	mov	rdi, qword ptr [rbp - 0x28]
	cmp	rsi, qword ptr [rdi]
	mov	byte ptr [rbp - 9], cl
	nop	
	jne	.label_774
	mov	rax, qword ptr [rbp - 8]
	nop	
	mov	rax, qword ptr [rax + 8]
	nop	
	mov	rcx, qword ptr [rbp - 0x28]
	mov	rbp, rbp
	cmp	rax, qword ptr [rcx + 8]
	mov	rbp, rbp
	sete	dl
	mov	rsp, rsp
	mov	byte ptr [rbp - 9], dl
.label_774:
	lea	rsi, [rsi]
	mov	al, byte ptr [rbp - 9]
	lea	rdi, [rdi]
	xor	ecx, ecx
	mov	edx, 1
	test	al, 1
	nop	
	cmovne	ecx, edx
	mov	rsp, rsp
	cmp	ecx, 0
	setne	al
	nop	
	and	al, 1
	movzx	eax, al
	lea	rsi, [rsi]
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40f210
	.globl forget_all
	.type forget_all, @function
forget_all:

	nop
	push	rbp
	mov	rbp, rsp
	mov	rdi,  qword ptr [word ptr [src_to_dest]]
	call	hash_free
	pop	rbp
	nop	
	ret	
	.section	.text
	.align	32
	#Procedure 0x40f230

	.globl extent_scan_init
	.type extent_scan_init, @function
extent_scan_init:
	push	rbp
	mov	rbp, rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	dword ptr [rbp - 0xc], edi
	mov	qword ptr [rbp - 8], rsi
	mov	edi, dword ptr [rbp - 0xc]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 8]
	mov	dword ptr [rsi], edi
	mov	rsi, qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	qword ptr [rsi + 0x18], 0
	nop	
	mov	rsi, qword ptr [rbp - 8]
	mov	qword ptr [rsi + 0x28], 0
	mov	rsi, qword ptr [rbp - 8]
	mov	rbp, rbp
	mov	qword ptr [rsi + 8], 0
	mov	rsi, qword ptr [rbp - 8]
	mov	byte ptr [rsi + 0x20], 0
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 8]
	mov	byte ptr [rsi + 0x21], 0
	lea	rsi, [rsi]
	call	extent_need_sync
	xor	edi, edi
	mov	ecx, 1
	test	al, 1
	cmovne	edi, ecx
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 8]
	mov	dword ptr [rsi + 0x10], edi
	mov	rsp, rsp
	add	rsp, 0x10
	nop	
	pop	rbp
	mov	rbp, rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40f2c0

	.globl extent_need_sync
	.type extent_need_sync, @function
extent_need_sync:
	push	rbp
	mov	rbp, rsp
	mov	al, 1
	lea	rdi, [rdi]
	and	al, 1
	movzx	eax, al
	pop	rbp
	lea	rdi, [rdi]
	ret	
	.section	.text
	.align	32
	#Procedure 0x40f2e0

	.globl extent_scan_read
	.type extent_scan_read, @function
extent_scan_read:
	lea	rdi, [rdi]
	push	rbp
	mov	rbp, rbp
	mov	rbp, rsp
	lea	rdi, [rdi]
	sub	rsp, 0x1060
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x1030], rdi
	nop	
	mov	dword ptr [rbp - 0x1044], 0
	mov	rdi, qword ptr [rbp - 0x1030]
	mov	rbp, rbp
	mov	rdi, qword ptr [rdi + 0x28]
	mov	qword ptr [rbp - 8], rdi
.label_784:
	mov	eax, 0xc020660b
	mov	esi, eax
	mov	rcx, -1
	xor	eax, eax
	mov	rbp, rbp
	mov	edx, 0x1000
	nop	
	lea	rdi, [rbp - 0x1008]
	mov	r8, rdi
	mov	qword ptr [rbp - 0x1020], r8
	nop	
	mov	r8, qword ptr [rbp - 0x1020]
	nop	
	add	r8, 0x20
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x1040], r8
	mov	qword ptr [rbp - 0x1050], rsi
	mov	esi, eax
	mov	qword ptr [rbp - 0x1058], rcx
	call	memset
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x1030]
	mov	rcx, qword ptr [rcx + 8]
	mov	rdx, qword ptr [rbp - 0x1020]
	nop	
	mov	qword ptr [rdx], rcx
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x1030]
	mov	eax, dword ptr [rcx + 0x10]
	mov	rcx, qword ptr [rbp - 0x1020]
	mov	dword ptr [rcx + 0x10], eax
	mov	rcx, qword ptr [rbp - 0x1020]
	mov	dword ptr [rcx + 0x18], 0x48
	mov	rcx, qword ptr [rbp - 0x1030]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x1058]
	sub	rdx, qword ptr [rcx + 8]
	mov	rcx, qword ptr [rbp - 0x1020]
	mov	qword ptr [rcx + 8], rdx
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x1030]
	mov	edi, dword ptr [rcx]
	nop	
	mov	rdx, qword ptr [rbp - 0x1020]
	mov	rsi, qword ptr [rbp - 0x1050]
	lea	rdi, [rdi]
	mov	al, 0
	call	ioctl
	cmp	eax, 0
	jge	.label_799
	mov	rax, qword ptr [rbp - 0x1030]
	cmp	qword ptr [rax + 8], 0
	lea	rdi, [rdi]
	jne	.label_800
	mov	rax, qword ptr [rbp - 0x1030]
	nop	
	mov	byte ptr [rax + 0x20], 1
.label_800:
	mov	byte ptr [rbp - 0x1021], 0
	jmp	.label_782
.label_799:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x1020]
	cmp	dword ptr [rax + 0x14], 0
	jne	.label_787
	mov	rax, qword ptr [rbp - 0x1030]
	mov	byte ptr [rax + 0x21], 1
	nop	
	mov	rax, qword ptr [rbp - 0x1030]
	mov	rsp, rsp
	cmp	qword ptr [rax + 8], 0
	lea	rsi, [rsi]
	setne	cl
	and	cl, 1
	mov	byte ptr [rbp - 0x1021], cl
	jmp	.label_782
.label_787:
	mov	rax, -1
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x1030]
	mov	rcx, qword ptr [rcx + 0x18]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x1020]
	lea	rsi, [rsi]
	mov	esi, dword ptr [rdx + 0x14]
	mov	edx, esi
	mov	rsp, rsp
	sub	rax, rdx
	cmp	rcx, rax
	lea	rsi, [rsi]
	ja	.label_797
	jmp	.label_786
.label_797:
	movabs	rdi, OFFSET FLAT:.str_6
	mov	rsp, rsp
	movabs	rsi, OFFSET FLAT:.str.1_3
	lea	rsi, [rsi]
	mov	edx, 0x7e
	mov	rbp, rbp
	movabs	rcx, OFFSET FLAT:__PRETTY_FUNCTION__.extent_scan_read
	call	__assert_fail
.label_786:
	mov	eax, 0x18
	mov	rbp, rbp
	mov	ecx, eax
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x1020]
	mov	eax, dword ptr [rdx + 0x14]
	mov	rbp, rbp
	mov	edx, eax
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x1030]
	nop	
	add	rdx, qword ptr [rsi + 0x18]
	mov	rsp, rsp
	mov	qword ptr [rsi + 0x18], rdx
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x1030]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rsi + 0x28]
	lea	rdi, [rdi]
	sub	rdx, rsi
	nop	
	mov	rax, rdx
	cqo	
	idiv	rcx
	mov	qword ptr [rbp - 0x1060], rax
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x1030]
	mov	rsp, rsp
	mov	rax, qword ptr [rax + 0x28]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x1030]
	mov	rsi, qword ptr [rsi + 0x18]
	lea	rdi, [rdi]
	mov	rdi, rax
	lea	rdi, [rdi]
	mov	rdx, rcx
	lea	rsi, [rsi]
	call	xnrealloc
	mov	rcx, qword ptr [rbp - 0x1030]
	mov	qword ptr [rcx + 0x28], rax
	mov	rax, qword ptr [rbp - 0x1030]
	nop	
	mov	rax, qword ptr [rax + 0x28]
	lea	rsi, [rsi]
	imul	rcx, qword ptr [rbp - 0x1060], 0x18
	nop	
	add	rax, rcx
	mov	qword ptr [rbp - 8], rax
	mov	dword ptr [rbp - 0x1014], 0
	nop	
	mov	dword ptr [rbp - 0x1014], 0
.label_785:
	mov	eax, dword ptr [rbp - 0x1014]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x1020]
	mov	rsp, rsp
	cmp	eax, dword ptr [rcx + 0x14]
	jae	.label_775
	movabs	rax, 0x7fffffffffffffff
	mov	ecx, dword ptr [rbp - 0x1014]
	mov	rbp, rbp
	mov	edx, ecx
	imul	rdx, rdx, 0x38
	lea	rdi, [rdi]
	add	rdx, qword ptr [rbp - 0x1040]
	nop	
	mov	rdx, qword ptr [rdx]
	mov	ecx, dword ptr [rbp - 0x1014]
	mov	rbp, rbp
	mov	esi, ecx
	imul	rsi, rsi, 0x38
	add	rsi, qword ptr [rbp - 0x1040]
	lea	rsi, [rsi]
	sub	rax, qword ptr [rsi + 0x10]
	cmp	rdx, rax
	ja	.label_792
	jmp	.label_779
.label_792:
	movabs	rdi, OFFSET FLAT:.str.2_3
	movabs	rsi, OFFSET FLAT:.str.1_3
	mov	edx, 0x8d
	movabs	rcx, OFFSET FLAT:__PRETTY_FUNCTION__.extent_scan_read
	call	__assert_fail
.label_779:
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x1044], 0
	nop	
	je	.label_776
	mov	rax, qword ptr [rbp - 8]
	nop	
	mov	ecx, dword ptr [rax + 0x10]
	mov	rbp, rbp
	mov	edx, dword ptr [rbp - 0x1014]
	mov	eax, edx
	imul	rax, rax, 0x38
	lea	rsi, [rsi]
	add	rax, qword ptr [rbp - 0x1040]
	mov	rsp, rsp
	mov	edx, dword ptr [rax + 0x28]
	and	edx, 0xfffffffe
	cmp	ecx, edx
	mov	rbp, rbp
	jne	.label_776
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 8]
	nop	
	add	rax, qword ptr [rcx + 8]
	mov	edx, dword ptr [rbp - 0x1014]
	lea	rdi, [rdi]
	mov	ecx, edx
	imul	rcx, rcx, 0x38
	nop	
	add	rcx, qword ptr [rbp - 0x1040]
	cmp	rax, qword ptr [rcx]
	jne	.label_776
	mov	eax, dword ptr [rbp - 0x1014]
	mov	ecx, eax
	mov	rsp, rsp
	imul	rcx, rcx, 0x38
	add	rcx, qword ptr [rbp - 0x1040]
	mov	rcx, qword ptr [rcx + 0x10]
	mov	rdx, qword ptr [rbp - 8]
	add	rcx, qword ptr [rdx + 8]
	mov	qword ptr [rdx + 8], rcx
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x1014]
	mov	ecx, eax
	imul	rcx, rcx, 0x38
	mov	rsp, rsp
	add	rcx, qword ptr [rbp - 0x1040]
	mov	eax, dword ptr [rcx + 0x28]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	mov	dword ptr [rcx + 0x10], eax
	jmp	.label_791
.label_776:
	nop	
	cmp	dword ptr [rbp - 0x1044], 0
	lea	rsi, [rsi]
	jne	.label_777
	mov	rax, qword ptr [rbp - 0x1030]
	mov	rax, qword ptr [rax + 8]
	mov	rbp, rbp
	mov	ecx, dword ptr [rbp - 0x1014]
	mov	rsp, rsp
	mov	edx, ecx
	mov	rsp, rsp
	imul	rdx, rdx, 0x38
	lea	rsi, [rsi]
	add	rdx, qword ptr [rbp - 0x1040]
	cmp	rax, qword ptr [rdx]
	lea	rsi, [rsi]
	ja	.label_783
.label_777:
	nop	
	cmp	dword ptr [rbp - 0x1044], 0
	je	.label_794
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 8]
	mov	rbp, rbp
	mov	rax, qword ptr [rax]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 8]
	add	rax, qword ptr [rcx + 8]
	mov	edx, dword ptr [rbp - 0x1014]
	mov	rbp, rbp
	mov	ecx, edx
	mov	rbp, rbp
	imul	rcx, rcx, 0x38
	add	rcx, qword ptr [rbp - 0x1040]
	cmp	rax, qword ptr [rcx]
	nop	
	jbe	.label_794
.label_783:
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x1044], 0
	mov	rbp, rbp
	jne	.label_789
	mov	rax, qword ptr [rbp - 0x1030]
	mov	rbp, rbp
	mov	rax, qword ptr [rax + 8]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x1038], rax
	mov	rsp, rsp
	jmp	.label_788
.label_789:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	add	rax, qword ptr [rcx + 8]
	mov	qword ptr [rbp - 0x1038], rax
.label_788:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x1038]
	mov	rbp, rbp
	mov	ecx, dword ptr [rbp - 0x1014]
	mov	rsp, rsp
	mov	edx, ecx
	imul	rdx, rdx, 0x38
	lea	rdi, [rdi]
	add	rdx, qword ptr [rbp - 0x1040]
	sub	rax, qword ptr [rdx]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x1010], rax
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x1010]
	mov	ecx, dword ptr [rbp - 0x1014]
	lea	rsi, [rsi]
	mov	edx, ecx
	imul	rdx, rdx, 0x38
	add	rdx, qword ptr [rbp - 0x1040]
	cmp	rax, qword ptr [rdx + 0x10]
	jae	.label_778
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x1030]
	cmp	qword ptr [rax + 8], 0
	jne	.label_793
	mov	rax, qword ptr [rbp - 0x1030]
	mov	byte ptr [rax + 0x20], 1
.label_793:
	mov	byte ptr [rbp - 0x1021], 0
	lea	rdi, [rdi]
	jmp	.label_782
.label_778:
	mov	rax, qword ptr [rbp - 0x1038]
	mov	rbp, rbp
	mov	ecx, dword ptr [rbp - 0x1014]
	mov	rbp, rbp
	mov	edx, ecx
	nop	
	imul	rdx, rdx, 0x38
	lea	rsi, [rsi]
	add	rdx, qword ptr [rbp - 0x1040]
	mov	rbp, rbp
	mov	qword ptr [rdx], rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x1010]
	mov	rbp, rbp
	mov	ecx, dword ptr [rbp - 0x1014]
	mov	edx, ecx
	imul	rdx, rdx, 0x38
	lea	rsi, [rsi]
	add	rdx, qword ptr [rbp - 0x1040]
	mov	rsi, qword ptr [rdx + 0x10]
	sub	rsi, rax
	mov	rbp, rbp
	mov	qword ptr [rdx + 0x10], rsi
	lea	rsi, [rsi]
	mov	ecx, dword ptr [rbp - 0x1014]
	nop	
	add	ecx, -1
	mov	dword ptr [rbp - 0x1014], ecx
	jmp	.label_781
.label_794:
	mov	rax, qword ptr [rbp - 0x1030]
	mov	rax, qword ptr [rax + 0x28]
	mov	ecx, dword ptr [rbp - 0x1044]
	mov	edx, ecx
	imul	rdx, rdx, 0x18
	lea	rsi, [rsi]
	add	rax, rdx
	mov	qword ptr [rbp - 8], rax
	mov	rsp, rsp
	mov	ecx, dword ptr [rbp - 0x1014]
	nop	
	mov	eax, ecx
	imul	rax, rax, 0x38
	nop	
	add	rax, qword ptr [rbp - 0x1040]
	mov	rsp, rsp
	mov	rax, qword ptr [rax]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 8]
	mov	qword ptr [rdx], rax
	mov	ecx, dword ptr [rbp - 0x1014]
	mov	eax, ecx
	imul	rax, rax, 0x38
	lea	rsi, [rsi]
	add	rax, qword ptr [rbp - 0x1040]
	mov	rax, qword ptr [rax + 0x10]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 8]
	mov	qword ptr [rdx + 8], rax
	mov	ecx, dword ptr [rbp - 0x1014]
	lea	rdi, [rdi]
	mov	eax, ecx
	mov	rbp, rbp
	imul	rax, rax, 0x38
	nop	
	add	rax, qword ptr [rbp - 0x1040]
	mov	rsp, rsp
	mov	ecx, dword ptr [rax + 0x28]
	mov	rax, qword ptr [rbp - 8]
	mov	dword ptr [rax + 0x10], ecx
	lea	rdi, [rdi]
	mov	ecx, dword ptr [rbp - 0x1044]
	mov	rsp, rsp
	add	ecx, 1
	nop	
	mov	dword ptr [rbp - 0x1044], ecx
	jmp	.label_791
.label_791:
	mov	rsp, rsp
	jmp	.label_781
.label_781:
	mov	eax, dword ptr [rbp - 0x1014]
	add	eax, 1
	mov	dword ptr [rbp - 0x1014], eax
	jmp	.label_785
.label_775:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 8]
	nop	
	mov	ecx, dword ptr [rax + 0x10]
	mov	rsp, rsp
	and	ecx, 1
	cmp	ecx, 0
	nop	
	je	.label_790
	mov	rax, qword ptr [rbp - 0x1030]
	nop	
	mov	byte ptr [rax + 0x21], 1
.label_790:
	cmp	dword ptr [rbp - 0x1044], 0x48
	lea	rdi, [rdi]
	jbe	.label_796
	mov	rax, qword ptr [rbp - 0x1030]
	test	byte ptr [rax + 0x21], 1
	jne	.label_796
	mov	rax, qword ptr [rbp - 0x1030]
	nop	
	mov	rax, qword ptr [rax + 0x28]
	mov	ecx, dword ptr [rbp - 0x1044]
	add	ecx, -1
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x1044], ecx
	nop	
	mov	ecx, ecx
	nop	
	mov	edx, ecx
	lea	rsi, [rsi]
	imul	rdx, rdx, 0x18
	add	rax, rdx
	nop	
	add	rax, -0x18
	mov	rbp, rbp
	mov	qword ptr [rbp - 8], rax
.label_796:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x1044]
	lea	rsi, [rsi]
	mov	ecx, eax
	nop	
	mov	rdx, qword ptr [rbp - 0x1030]
	mov	qword ptr [rdx + 0x18], rcx
	nop	
	mov	rcx, qword ptr [rbp - 0x1030]
	test	byte ptr [rcx + 0x21], 1
	je	.label_795
	lea	rsi, [rsi]
	jmp	.label_780
.label_795:
	mov	rax, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 8]
	add	rax, qword ptr [rcx + 8]
	mov	rcx, qword ptr [rbp - 0x1030]
	mov	qword ptr [rcx + 8], rax
	cmp	dword ptr [rbp - 0x1044], 0x48
	jb	.label_798
	mov	rbp, rbp
	jmp	.label_780
.label_798:
	jmp	.label_784
.label_780:
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x1021], 1
.label_782:
	nop	
	mov	al, byte ptr [rbp - 0x1021]
	lea	rsi, [rsi]
	and	al, 1
	nop	
	movzx	eax, al
	add	rsp, 0x1060
	nop	
	pop	rbp
	mov	rbp, rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40fad0

	.globl force_linkat
	.type force_linkat, @function
force_linkat:
	push	rbp
	mov	rbp, rbp
	mov	rbp, rsp
	sub	rsp, 0x170
	lea	rdi, [rdi]
	mov	al, r9b
	nop	
	mov	r9d, dword ptr [rbp + 0x10]
	mov	dword ptr [rbp - 0x24], edi
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x48], rsi
	nop	
	mov	dword ptr [rbp - 0x2c], edx
	mov	qword ptr [rbp - 0x170], rcx
	mov	dword ptr [rbp - 0x50], r8d
	mov	rbp, rbp
	and	al, 1
	mov	byte ptr [rbp - 0x161], al
	mov	dword ptr [rbp - 8], r9d
	nop	
	cmp	dword ptr [rbp - 8], 0
	jge	.label_805
	lea	rdi, [rdi]
	mov	edi, dword ptr [rbp - 0x24]
	mov	rsi, qword ptr [rbp - 0x48]
	lea	rdi, [rdi]
	mov	edx, dword ptr [rbp - 0x2c]
	nop	
	mov	rcx, qword ptr [rbp - 0x170]
	mov	r8d, dword ptr [rbp - 0x50]
	call	linkat
	cmp	eax, 0
	lea	rsi, [rsi]
	jne	.label_812
	mov	rsp, rsp
	xor	eax, eax
	mov	dword ptr [rbp - 0x28], eax
	lea	rdi, [rdi]
	jmp	.label_803
.label_812:
	nop	
	call	__errno_location
	mov	ecx, dword ptr [rax]
	nop	
	mov	dword ptr [rbp - 0x28], ecx
.label_803:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x28]
	mov	dword ptr [rbp - 8], eax
.label_805:
	mov	rsp, rsp
	test	byte ptr [rbp - 0x161], 1
	mov	rsp, rsp
	je	.label_809
	nop	
	cmp	dword ptr [rbp - 8], 0x11
	nop	
	je	.label_801
.label_809:
	mov	eax, dword ptr [rbp - 8]
	mov	dword ptr [rbp - 0x4c], eax
	nop	
	jmp	.label_804
.label_801:
	lea	rsi, [rbp - 0x160]
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x170]
	mov	rsp, rsp
	call	samedir_template
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x38], rax
	cmp	qword ptr [rbp - 0x38], 0
	lea	rsi, [rsi]
	jne	.label_810
	mov	rsp, rsp
	call	__errno_location
	nop	
	mov	ecx, dword ptr [rax]
	nop	
	mov	dword ptr [rbp - 0x4c], ecx
	mov	rsp, rsp
	jmp	.label_804
.label_810:
	mov	rbp, rbp
	xor	esi, esi
	movabs	rcx, OFFSET FLAT:try_link
	mov	eax, 6
	lea	rdi, [rdi]
	mov	r8d, eax
	nop	
	lea	rdx, [rbp - 0x20]
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x24]
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x20], eax
	mov	rdi, qword ptr [rbp - 0x48]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x18], rdi
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x2c]
	mov	dword ptr [rbp - 0x10], eax
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x50]
	mov	dword ptr [rbp - 0xc], eax
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rsp, rsp
	call	try_tempname_len
	cmp	eax, 0
	je	.label_811
	call	__errno_location
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 4], ecx
	jmp	.label_802
.label_811:
	mov	edi, dword ptr [rbp - 0x2c]
	mov	rsi, qword ptr [rbp - 0x38]
	mov	edx, dword ptr [rbp - 0x2c]
	mov	rcx, qword ptr [rbp - 0x170]
	call	renameat
	cmp	eax, 0
	jne	.label_806
	lea	rdi, [rdi]
	mov	eax, 0xffffffff
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x54], eax
	lea	rsi, [rsi]
	jmp	.label_808
.label_806:
	call	__errno_location
	lea	rsi, [rsi]
	mov	ecx, dword ptr [rax]
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x54], ecx
.label_808:
	mov	eax, dword ptr [rbp - 0x54]
	xor	edx, edx
	mov	dword ptr [rbp - 4], eax
	mov	edi, dword ptr [rbp - 0x2c]
	mov	rsi, qword ptr [rbp - 0x38]
	call	unlinkat
	mov	dword ptr [rbp - 0x3c], eax
.label_802:
	lea	rsi, [rsi]
	lea	rax, [rbp - 0x160]
	mov	rcx, qword ptr [rbp - 0x38]
	cmp	rcx, rax
	je	.label_807
	mov	rdi, qword ptr [rbp - 0x38]
	call	free
.label_807:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 4]
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x4c], eax
.label_804:
	nop	
	mov	eax, dword ptr [rbp - 0x4c]
	add	rsp, 0x170
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40fcf0

	.globl samedir_template
	.type samedir_template, @function
samedir_template:
	nop	
	push	rbp
	mov	rbp, rsp
	lea	rdi, [rdi]
	sub	rsp, 0x40
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x28], rdi
	nop	
	mov	qword ptr [rbp - 0x10], rsi
	mov	rdi, qword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	call	last_component
	mov	rsi, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	sub	rax, rsi
	mov	qword ptr [rbp - 0x30], rax
	mov	rax, qword ptr [rbp - 0x30]
	mov	rbp, rbp
	add	rax, 9
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x18], rax
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x18], 0x100
	lea	rsi, [rsi]
	ja	.label_815
	mov	rax, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x38], rax
	jmp	.label_813
.label_815:
	mov	rdi, qword ptr [rbp - 0x18]
	nop	
	call	malloc
	nop	
	mov	qword ptr [rbp - 0x38], rax
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x38], 0
	jne	.label_814
	mov	rax, qword ptr [rbp - 0x38]
	mov	qword ptr [rbp - 0x20], rax
	lea	rdi, [rdi]
	jmp	.label_816
.label_814:
	mov	rbp, rbp
	jmp	.label_813
.label_813:
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rsi, qword ptr [rbp - 0x28]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x30]
	call	mempcpy
	mov	rbp, rbp
	mov	ecx, OFFSET FLAT:simple_pattern
	mov	esi, ecx
	mov	rdi, rax
	call	strcpy
	mov	rdx, qword ptr [rbp - 0x38]
	mov	qword ptr [rbp - 0x20], rdx
	mov	qword ptr [rbp - 8], rax
.label_816:
	nop	
	mov	rax, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	add	rsp, 0x40
	lea	rdi, [rdi]
	pop	rbp
	lea	rdi, [rdi]
	ret	
	.section	.text
	.align	32
	#Procedure 0x40fde0

	.globl try_link
	.type try_link, @function
try_link:
	push	rbp
	mov	rbp, rsp
	mov	rsp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 0x18], rdi
	mov	rsp, rsp
	mov	qword ptr [rbp - 8], rsi
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsi, qword ptr [rbp - 0x10]
	mov	edi, dword ptr [rsi]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rsi + 8]
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x10]
	mov	edx, dword ptr [rax + 0x10]
	nop	
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rbp - 0x10]
	mov	r8d, dword ptr [rax + 0x14]
	call	linkat
	lea	rsi, [rsi]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40fe40

	.globl force_symlinkat
	.type force_symlinkat, @function
force_symlinkat:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x150
	mov	al, cl
	mov	qword ptr [rbp - 0x118], rdi
	nop	
	mov	dword ptr [rbp - 0x13c], esi
	mov	qword ptr [rbp - 0x148], rdx
	mov	rsp, rsp
	and	al, 1
	mov	byte ptr [rbp - 0x119], al
	mov	dword ptr [rbp - 0x140], r8d
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x140], 0
	mov	rsp, rsp
	jge	.label_817
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x118]
	lea	rdi, [rdi]
	mov	esi, dword ptr [rbp - 0x13c]
	mov	rdx, qword ptr [rbp - 0x148]
	mov	rsp, rsp
	call	symlinkat
	cmp	eax, 0
	mov	rbp, rbp
	jne	.label_824
	lea	rdi, [rdi]
	xor	eax, eax
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x124], eax
	nop	
	jmp	.label_827
.label_824:
	mov	rsp, rsp
	call	__errno_location
	mov	rbp, rbp
	mov	ecx, dword ptr [rax]
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x124], ecx
.label_827:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x124]
	mov	dword ptr [rbp - 0x140], eax
.label_817:
	test	byte ptr [rbp - 0x119], 1
	je	.label_825
	cmp	dword ptr [rbp - 0x140], 0x11
	je	.label_828
.label_825:
	mov	eax, dword ptr [rbp - 0x140]
	mov	dword ptr [rbp - 0x10], eax
	jmp	.label_818
.label_828:
	lea	rsi, [rbp - 0x110]
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x148]
	lea	rsi, [rsi]
	call	samedir_template
	mov	qword ptr [rbp - 8], rax
	cmp	qword ptr [rbp - 8], 0
	jne	.label_826
	call	__errno_location
	mov	ecx, dword ptr [rax]
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x10], ecx
	lea	rsi, [rsi]
	jmp	.label_818
.label_826:
	lea	rdi, [rdi]
	xor	esi, esi
	movabs	rcx, OFFSET FLAT:try_symlink
	lea	rdi, [rdi]
	mov	eax, 6
	mov	rbp, rbp
	mov	r8d, eax
	lea	rdx, [rbp - 0x138]
	mov	rdi, qword ptr [rbp - 0x118]
	mov	qword ptr [rbp - 0x138], rdi
	mov	eax, dword ptr [rbp - 0x13c]
	mov	dword ptr [rbp - 0x130], eax
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 8]
	call	try_tempname_len
	mov	rbp, rbp
	cmp	eax, 0
	je	.label_823
	call	__errno_location
	mov	rbp, rbp
	mov	ecx, dword ptr [rax]
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x120], ecx
	jmp	.label_821
.label_823:
	lea	rdi, [rdi]
	mov	edi, dword ptr [rbp - 0x13c]
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 8]
	mov	rbp, rbp
	mov	edx, dword ptr [rbp - 0x13c]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x148]
	call	renameat
	cmp	eax, 0
	nop	
	je	.label_820
	lea	rdi, [rdi]
	call	__errno_location
	lea	rsi, [rsi]
	xor	edx, edx
.label_2436:
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 0x120], ecx
	mov	rbp, rbp
	mov	edi, dword ptr [rbp - 0x13c]
	mov	rsi, qword ptr [rbp - 8]
	call	unlinkat
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0xc], eax
	jmp	.label_822
.label_820:
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x120], 0xffffffff
.label_822:
	jmp	.label_821
.label_821:
	lea	rax, [rbp - 0x110]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 8]
	mov	rsp, rsp
	cmp	rcx, rax
	je	.label_819
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	call	free
.label_819:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x120]
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x10], eax
.label_818:
	mov	eax, dword ptr [rbp - 0x10]
	nop	
	add	rsp, 0x150
	pop	rbp
	mov	rsp, rsp
	ret	
	.section	.text
	.align	32
	#Procedure 0x410080

	.globl try_symlink
	.type try_symlink, @function
try_symlink:
	push	rbp
	lea	rsi, [rsi]
	mov	rbp, rsp
	mov	rsp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 0x18], rdi
	mov	qword ptr [rbp - 0x10], rsi
	nop	
	mov	rsi, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 8], rsi
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rsi]
	mov	rsi, qword ptr [rbp - 8]
	mov	esi, dword ptr [rsi + 8]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	call	symlinkat
	mov	rbp, rbp
	add	rsp, 0x20
	pop	rbp
	lea	rsi, [rsi]
	ret	
	.section	.text
	.align	32
	#Procedure 0x4100d0

	.globl copy_acl
	.type copy_acl, @function
copy_acl:
	mov	rsp, rsp
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x40
	mov	qword ptr [rbp - 0x10], rdi
	mov	dword ptr [rbp - 0x2c], esi
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x38], rdx
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x28], ecx
	mov	dword ptr [rbp - 0x1c], r8d
	mov	rdi, qword ptr [rbp - 0x10]
	nop	
	mov	esi, dword ptr [rbp - 0x2c]
	mov	rdx, qword ptr [rbp - 0x38]
	mov	rbp, rbp
	mov	ecx, dword ptr [rbp - 0x28]
	call	qcopy_acl
	mov	dword ptr [rbp - 0x18], eax
	mov	ecx, eax
	sub	eax, -2
	mov	dword ptr [rbp - 0x14], ecx
	mov	dword ptr [rbp - 0x24], eax
	je	.label_831
	mov	rbp, rbp
	jmp	.label_832
.label_832:
	mov	eax, dword ptr [rbp - 0x14]
	sub	eax, -1
	nop	
	mov	dword ptr [rbp - 0x20], eax
	je	.label_830
	lea	rdi, [rdi]
	jmp	.label_833
.label_831:
	call	__errno_location
	nop	
	mov	esi, dword ptr [rax]
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	dword ptr [rbp - 4], esi
	nop	
	call	quote
	xor	edi, edi
	movabs	rdx, OFFSET FLAT:.str_7
	mov	esi, dword ptr [rbp - 4]
	mov	rcx, rax
	mov	al, 0
	call	error
	nop	
	jmp	.label_829
.label_830:
	call	__errno_location
	nop	
	movabs	rdi, OFFSET FLAT:.str.1_2
	lea	rsi, [rsi]
	mov	esi, dword ptr [rax]
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x30], esi
	lea	rdi, [rdi]
	call	gettext
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x38]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x40], rax
	call	quote
	mov	rsp, rsp
	xor	edi, edi
	mov	esi, dword ptr [rbp - 0x30]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x40]
	mov	rcx, rax
	nop	
	mov	al, 0
	call	error
	nop	
	jmp	.label_829
.label_833:
	lea	rsi, [rsi]
	jmp	.label_829
.label_829:
	nop	
	mov	eax, dword ptr [rbp - 0x18]
	nop	
	add	rsp, 0x40
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4101e0

	.globl set_acl
	.type set_acl, @function
set_acl:
	push	rbp
	mov	rbp, rbp
	mov	rbp, rsp
	mov	rbp, rbp
	sub	rsp, 0x20
	nop	
	mov	qword ptr [rbp - 0x20], rdi
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x14], esi
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x10], edx
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x20]
	mov	esi, dword ptr [rbp - 0x14]
	mov	edx, dword ptr [rbp - 0x10]
	mov	rbp, rbp
	call	qset_acl
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x18], eax
	lea	rsi, [rsi]
	cmp	dword ptr [rbp - 0x18], 0
	je	.label_834
	mov	rsp, rsp
	call	__errno_location
	movabs	rdi, OFFSET FLAT:.str_5
	lea	rdi, [rdi]
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0xc], esi
	lea	rsi, [rsi]
	call	gettext
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 8], rax
	mov	rsp, rsp
	call	quote
	xor	edi, edi
	mov	rbp, rbp
	mov	esi, dword ptr [rbp - 0xc]
	nop	
	mov	rdx, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	mov	rcx, rax
	lea	rsi, [rsi]
	mov	al, 0
	call	error
.label_834:
	nop	
	mov	eax, dword ptr [rbp - 0x18]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x410290

	.globl areadlink_with_size
	.type areadlink_with_size, @function
areadlink_with_size:
	nop	
	push	rbp
	mov	rbp, rbp
	mov	rbp, rsp
	sub	rsp, 0x70
	mov	qword ptr [rbp - 0x30], rdi
	nop	
	mov	qword ptr [rbp - 0x48], rsi
	nop	
	mov	qword ptr [rbp - 0x68], 0x400
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x50], 0x2000
	nop	
	mov	rsi, qword ptr [rbp - 0x68]
	lea	rsi, [rsi]
	cmp	rsi, qword ptr [rbp - 0x50]
	jae	.label_840
	mov	rax, qword ptr [rbp - 0x68]
	mov	rbp, rbp
	add	rax, 1
	mov	qword ptr [rbp - 0x18], rax
	lea	rdi, [rdi]
	jmp	.label_837
.label_840:
	mov	rax, qword ptr [rbp - 0x50]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x18], rax
.label_837:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 8], rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x48]
	cmp	rax, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	jae	.label_845
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x48]
	add	rax, 1
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x40], rax
	jmp	.label_838
.label_845:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x40], rax
.label_838:
	nop	
	mov	rax, qword ptr [rbp - 0x40]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x38], rax
.label_843:
	mov	rdi, qword ptr [rbp - 0x38]
	nop	
	call	malloc
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x10], rax
	cmp	qword ptr [rbp - 0x10], 0
	mov	rsp, rsp
	jne	.label_835
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x60], 0
	nop	
	jmp	.label_836
.label_835:
	mov	rdi, qword ptr [rbp - 0x30]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x38]
	mov	rsp, rsp
	call	readlink
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x70], rax
	mov	rax, qword ptr [rbp - 0x70]
	nop	
	mov	qword ptr [rbp - 0x28], rax
	cmp	qword ptr [rbp - 0x70], 0
	mov	rsp, rsp
	jge	.label_842
	call	__errno_location
	mov	rsp, rsp
	cmp	dword ptr [rax], 0x22
	mov	rbp, rbp
	je	.label_842
	mov	rbp, rbp
	call	__errno_location
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 0x54], ecx
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x10]
	call	free
	mov	ecx, dword ptr [rbp - 0x54]
	mov	dword ptr [rbp - 0x1c], ecx
	mov	rsp, rsp
	call	__errno_location
	mov	ecx, dword ptr [rbp - 0x1c]
	lea	rsi, [rsi]
	mov	dword ptr [rax], ecx
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x60], 0
	mov	rbp, rbp
	jmp	.label_836
.label_842:
	mov	rax, qword ptr [rbp - 0x28]
	mov	rbp, rbp
	cmp	rax, qword ptr [rbp - 0x38]
	jae	.label_841
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	byte ptr [rcx + rax], 0
	mov	rax, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x60], rax
	mov	rsp, rsp
	jmp	.label_836
.label_841:
	mov	rdi, qword ptr [rbp - 0x10]
	nop	
	call	free
	movabs	rdi, 0x3fffffffffffffff
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x38], rdi
	ja	.label_847
	mov	rax, qword ptr [rbp - 0x38]
	nop	
	shl	rax, 1
	mov	qword ptr [rbp - 0x38], rax
	lea	rsi, [rsi]
	jmp	.label_839
.label_847:
	mov	rbp, rbp
	movabs	rax, 0x7fffffffffffffff
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x38], rax
	jae	.label_844
	movabs	rax, 0x7fffffffffffffff
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x38], rax
	mov	rbp, rbp
	jmp	.label_846
.label_844:
	lea	rsi, [rsi]
	call	__errno_location
	mov	dword ptr [rax], 0xc
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x60], 0
	jmp	.label_836
.label_846:
	jmp	.label_839
.label_839:
	lea	rdi, [rdi]
	jmp	.label_843
.label_836:
	mov	rax, qword ptr [rbp - 0x60]
	mov	rsp, rsp
	add	rsp, 0x70
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4104d0

	.globl set_simple_backup_suffix
	.type set_simple_backup_suffix, @function
set_simple_backup_suffix:
	push	rbp
	mov	rbp, rsp
	lea	rdi, [rdi]
	sub	rsp, 0x20
	mov	qword ptr [rbp - 8], rdi
	cmp	qword ptr [rbp - 8], 0
	jne	.label_848
	nop	
	movabs	rdi, OFFSET FLAT:.str_8
	call	getenv
	mov	rsp, rsp
	mov	qword ptr [rbp - 8], rax
.label_848:
	nop	
	cmp	qword ptr [rbp - 8], 0
	je	.label_849
	mov	rax, qword ptr [rbp - 8]
	movsx	ecx, byte ptr [rax]
	mov	rsp, rsp
	cmp	ecx, 0
	mov	rbp, rbp
	je	.label_849
	nop	
	mov	rax, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rbp - 8]
	nop	
	mov	qword ptr [rbp - 0x18], rax
	lea	rsi, [rsi]
	call	last_component
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x18]
	cmp	rdi, rax
	jne	.label_849
	mov	rax, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_850
.label_849:
	movabs	rax, OFFSET FLAT:.str.1_4
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_850
.label_850:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [word ptr [simple_backup_suffix]],  rax
	add	rsp, 0x20
	mov	rbp, rbp
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x410590

	.globl backupfile_internal
	.type backupfile_internal, @function
backupfile_internal:
	lea	rdi, [rdi]
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0xb0
	lea	rsi, [rsi]
	mov	al, cl
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 4], edi
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x38], rsi
	mov	dword ptr [rbp - 0x24], edx
	and	al, 1
	mov	byte ptr [rbp - 0x11], al
	mov	rdi, qword ptr [rbp - 0x38]
	call	last_component
	mov	rsi, qword ptr [rbp - 0x38]
	mov	rsp, rsp
	sub	rax, rsi
	mov	qword ptr [rbp - 0x10], rax
	mov	rax, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x38]
	add	rsi, qword ptr [rbp - 0x10]
	mov	rdi, rsi
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x68], rax
	lea	rdi, [rdi]
	call	strlen
	nop	
	mov	rsi, qword ptr [rbp - 0x68]
	lea	rsi, [rsi]
	add	rsi, rax
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x98], rsi
	cmp	qword ptr [word ptr [simple_backup_suffix]],  0
	jne	.label_852
	lea	rsi, [rsi]
	xor	eax, eax
	mov	edi, eax
	lea	rdi, [rdi]
	call	set_simple_backup_suffix
.label_852:
	lea	rdi, [rdi]
	mov	rdi,  qword ptr [word ptr [simple_backup_suffix]]
	lea	rdi, [rdi]
	call	strlen
	add	rax, 1
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x58], rax
	nop	
	mov	rax, qword ptr [rbp - 0x58]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x88], rax
	cmp	qword ptr [rbp - 0x88], 9
	jae	.label_856
	mov	qword ptr [rbp - 0x88], 9
.label_856:
	mov	rax, qword ptr [rbp - 0x98]
	mov	rsp, rsp
	add	rax, qword ptr [rbp - 0x88]
	add	rax, 1
	nop	
	mov	qword ptr [rbp - 0x30], rax
	mov	rdi, qword ptr [rbp - 0x30]
	call	malloc
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x90], rax
	nop	
	cmp	qword ptr [rbp - 0x90], 0
	jne	.label_851
	mov	rax, qword ptr [rbp - 0x90]
	nop	
	mov	qword ptr [rbp - 0x78], rax
	nop	
	jmp	.label_861
.label_851:
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x20], 0
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x28], 0xffffffff
	mov	qword ptr [rbp - 0x40], 0
.label_865:
	mov	rdi, qword ptr [rbp - 0x90]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x38]
	mov	rax, qword ptr [rbp - 0x98]
	add	rax, 1
	lea	rdi, [rdi]
	mov	rdx, rax
	call	memcpy
	mov	rsp, rsp
	cmp	dword ptr [rbp - 0x24], 1
	nop	
	jne	.label_867
	nop	
	mov	rax, qword ptr [rbp - 0x90]
	lea	rdi, [rdi]
	add	rax, qword ptr [rbp - 0x98]
	nop	
	mov	rsi,  qword ptr [word ptr [simple_backup_suffix]]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x58]
	mov	rbp, rbp
	mov	rdi, rax
	mov	rbp, rbp
	call	memcpy
	lea	rsi, [rsi]
	jmp	.label_857
.label_867:
	lea	rsi, [rsi]
	mov	edi, dword ptr [rbp - 4]
	mov	rdx, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x98]
	mov	rbp, rbp
	mov	r8, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	rax, rsp
	lea	rsi, [rbp - 0x28]
	mov	qword ptr [rax], rsi
	mov	rbp, rbp
	lea	rsi, [rbp - 0x90]
	lea	rsi, [rsi]
	lea	r9, [rbp - 0x20]
	mov	rbp, rbp
	call	numbered_backup
	mov	edi, eax
	nop	
	mov	ecx, edi
	mov	rbp, rbp
	sub	eax, 3
	mov	rbp, rbp
	mov	qword ptr [rbp - 0xa0], rcx
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x4c], eax
	lea	rsi, [rsi]
	ja	.label_855
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0xa0]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_854]]
	lea	rdi, [rdi]
	jmp	rcx
.label_2339:
	lea	rdi, [rdi]
	jmp	.label_855
.label_2340:
	nop	
	cmp	dword ptr [rbp - 0x24], 2
	jne	.label_860
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x24], 1
	nop	
	mov	rax, qword ptr [rbp - 0x90]
	add	rax, qword ptr [rbp - 0x98]
	mov	rsi,  qword ptr [word ptr [simple_backup_suffix]]
	mov	rdx, qword ptr [rbp - 0x58]
	mov	rdi, rax
	call	memcpy
.label_860:
	jmp	.label_866
.label_866:
	mov	rbp, rbp
	mov	edx, 0x7e
	lea	rdi, [rdi]
	lea	r8, [rbp - 0x40]
	nop	
	mov	rdi, qword ptr [rbp - 0x90]
	mov	rsi, qword ptr [rbp - 0x98]
	lea	rdi, [rdi]
	mov	ecx, dword ptr [rbp - 0x28]
	call	check_extension
	jmp	.label_855
.label_2341:
	mov	rdi, qword ptr [rbp - 0x90]
	lea	rsi, [rsi]
	call	free
	lea	rdi, [rdi]
	call	__errno_location
	lea	rsi, [rsi]
	mov	dword ptr [rax], 0xc
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x78], 0
	jmp	.label_861
.label_855:
	lea	rdi, [rdi]
	jmp	.label_857
.label_857:
	mov	rbp, rbp
	test	byte ptr [rbp - 0x11], 1
	nop	
	jne	.label_863
	mov	rsp, rsp
	jmp	.label_864
.label_863:
	lea	rsi, [rsi]
	cmp	dword ptr [rbp - 0x28], 0
	jge	.label_862
	nop	
	mov	dword ptr [rbp - 0x28], 0xffffff9c
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x10], 0
.label_862:
	mov	edi, 0xffffff9c
	mov	eax, 1
	xor	ecx, ecx
	nop	
	cmp	dword ptr [rbp - 0x24], 1
	lea	rsi, [rsi]
	cmove	eax, ecx
	mov	dword ptr [rbp - 0x5c], eax
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x38]
	lea	rdi, [rdi]
	mov	edx, dword ptr [rbp - 0x28]
	mov	r8, qword ptr [rbp - 0x90]
	nop	
	add	r8, qword ptr [rbp - 0x10]
	mov	eax, dword ptr [rbp - 0x5c]
	mov	rsp, rsp
	mov	rcx, r8
	lea	rdi, [rdi]
	mov	r8d, eax
	lea	rdi, [rdi]
	call	renameatu
	lea	rdi, [rdi]
	cmp	eax, 0
	mov	rbp, rbp
	jne	.label_859
	mov	rbp, rbp
	jmp	.label_864
.label_859:
	call	__errno_location
	lea	rsi, [rsi]
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 0x48], ecx
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x48], 0x11
	lea	rsi, [rsi]
	je	.label_868
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x20], 0
	je	.label_853
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	call	closedir
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x44], eax
.label_853:
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x90]
	call	free
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x48]
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x6c], eax
	nop	
	call	__errno_location
	mov	rbp, rbp
	mov	ecx, dword ptr [rbp - 0x6c]
	mov	rsp, rsp
	mov	dword ptr [rax], ecx
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x78], 0
	jmp	.label_861
.label_868:
	jmp	.label_865
.label_864:
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0x20], 0
	je	.label_858
	mov	rdi, qword ptr [rbp - 0x20]
	call	closedir
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x7c], eax
.label_858:
	mov	rax, qword ptr [rbp - 0x90]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x78], rax
.label_861:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x78]
	mov	rsp, rsp
	add	rsp, 0xb0
	lea	rsi, [rsi]
	pop	rbp
	nop	
	ret	
	.section	.text
	.align	32
	#Procedure 0x4109c0

	.globl numbered_backup
	.type numbered_backup, @function
numbered_backup:
	push	rbp
	lea	rdi, [rdi]
	mov	rbp, rsp
	sub	rsp, 0xd0
	nop	
	mov	rax, qword ptr [rbp + 0x10]
	nop	
	mov	dword ptr [rbp - 0x34], edi
	mov	qword ptr [rbp - 0xa0], rsi
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x70], rdx
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x78], rcx
	mov	qword ptr [rbp - 0x10], r8
	mov	qword ptr [rbp - 0x40], r9
	mov	qword ptr [rbp - 0x90], rax
	mov	dword ptr [rbp - 0xa4], 2
	mov	rax, qword ptr [rbp - 0x40]
	nop	
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0x28], rax
	mov	rax, qword ptr [rbp - 0xa0]
	mov	rsp, rsp
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0x58], rax
	mov	qword ptr [rbp - 0x60], 1
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x58]
	lea	rdi, [rdi]
	add	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x48], rax
	mov	rdi, qword ptr [rbp - 0x48]
	call	base_len
	nop	
	mov	qword ptr [rbp - 0xb0], rax
	cmp	qword ptr [rbp - 0x28], 0
	je	.label_880
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x28]
	call	rewinddir
	jmp	.label_885
.label_880:
	lea	rdi, [rdi]
	xor	edx, edx
	mov	rax, qword ptr [rbp - 0x48]
	lea	rdi, [rdi]
	mov	cx, word ptr [rax]
	mov	word ptr [rbp - 0x92], cx
	mov	rdi, qword ptr [rbp - 0x48]
	lea	rsi, [rsi]
	mov	esi, OFFSET FLAT:.str_3
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x64], edx
	call	strcpy
	mov	rbp, rbp
	mov	edi, dword ptr [rbp - 0x34]
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x58]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x90]
	nop	
	mov	edx, dword ptr [rbp - 0x64]
	mov	qword ptr [rbp - 0xc8], rax
	nop	
	call	opendirat
	mov	qword ptr [rbp - 0x28], rax
	cmp	qword ptr [rbp - 0x28], 0
	jne	.label_879
	call	__errno_location
	mov	rbp, rbp
	cmp	dword ptr [rax], 0xc
	lea	rsi, [rsi]
	jne	.label_879
	mov	dword ptr [rbp - 0xa4], 3
.label_879:
	mov	rax, qword ptr [rbp - 0x48]
	mov	cx, word ptr [rbp - 0x92]
	nop	
	mov	word ptr [rax], cx
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x48]
	add	rax, qword ptr [rbp - 0xb0]
	mov	edx, OFFSET FLAT:.str.3_2
	nop	
	mov	esi, edx
	mov	rdi, rax
	call	strcpy
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x28], 0
	mov	qword ptr [rbp - 0xb8], rax
	jne	.label_872
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0xa4]
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x1c], eax
	jmp	.label_877
.label_872:
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x40]
	mov	qword ptr [rcx], rax
.label_885:
	jmp	.label_869
.label_869:
	mov	rdi, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	call	readdir
	mov	rbp, rbp
	mov	qword ptr [rbp - 8], rax
	cmp	rax, 0
	lea	rdi, [rdi]
	je	.label_884
	mov	rax, qword ptr [rbp - 8]
	add	rax, 0x13
	mov	rdi, rax
	mov	rsp, rsp
	call	strlen
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0xb0]
	nop	
	add	rdi, 4
	lea	rsi, [rsi]
	cmp	rax, rdi
	jae	.label_870
	jmp	.label_869
.label_870:
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 8]
	add	rcx, 0x13
	mov	rdx, qword ptr [rbp - 0xb0]
	lea	rdi, [rdi]
	add	rdx, 2
	lea	rdi, [rdi]
	mov	rdi, rax
	mov	rsp, rsp
	mov	rsi, rcx
	lea	rdi, [rdi]
	call	memcmp
	nop	
	cmp	eax, 0
	je	.label_883
	jmp	.label_869
.label_883:
	nop	
	mov	eax, 0x31
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 8]
	mov	rsp, rsp
	add	rcx, 0x13
	add	rcx, qword ptr [rbp - 0xb0]
	mov	rbp, rbp
	add	rcx, 2
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x18], rcx
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	movsx	edx, byte ptr [rcx]
	lea	rsi, [rsi]
	cmp	eax, edx
	jg	.label_886
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x18]
	movsx	ecx, byte ptr [rax]
	lea	rdi, [rdi]
	cmp	ecx, 0x39
	lea	rdi, [rdi]
	jle	.label_876
.label_886:
	lea	rsi, [rsi]
	jmp	.label_869
.label_876:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x18]
	nop	
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0x39
	lea	rsi, [rsi]
	sete	dl
	mov	rbp, rbp
	and	dl, 1
	nop	
	mov	byte ptr [rbp - 0x81], dl
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0xc0], 1
.label_873:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0xc0]
	mov	rcx, qword ptr [rbp - 0x18]
	nop	
	movsx	edx, byte ptr [rcx + rax]
	mov	rbp, rbp
	sub	edx, 0x30
	lea	rdi, [rdi]
	cmp	edx, 9
	ja	.label_888
	mov	rax, qword ptr [rbp - 0xc0]
	mov	rcx, qword ptr [rbp - 0x18]
	movsx	edx, byte ptr [rcx + rax]
	nop	
	cmp	edx, 0x39
	mov	rsp, rsp
	sete	sil
	nop	
	and	sil, 1
	lea	rsi, [rsi]
	movzx	edx, sil
	mov	sil, byte ptr [rbp - 0x81]
	mov	rsp, rsp
	and	sil, 1
	lea	rdi, [rdi]
	movzx	edi, sil
	lea	rsi, [rsi]
	and	edi, edx
	nop	
	cmp	edi, 0
	setne	sil
	and	sil, 1
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x81], sil
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0xc0]
	mov	rbp, rbp
	add	rax, 1
	nop	
	mov	qword ptr [rbp - 0xc0], rax
	lea	rdi, [rdi]
	jmp	.label_873
.label_888:
	nop	
	mov	rax, qword ptr [rbp - 0xc0]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x18]
	movsx	edx, byte ptr [rcx + rax]
	cmp	edx, 0x7e
	jne	.label_871
	nop	
	mov	rax, qword ptr [rbp - 0xc0]
	mov	rcx, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	cmp	byte ptr [rcx + rax + 1], 0
	lea	rdi, [rdi]
	jne	.label_871
	nop	
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0xc0]
	jb	.label_874
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x60]
	lea	rdi, [rdi]
	cmp	rax, qword ptr [rbp - 0xc0]
	jne	.label_871
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x58]
	lea	rdi, [rdi]
	add	rax, qword ptr [rbp - 0x78]
	add	rax, 2
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x18]
	nop	
	mov	rdx, qword ptr [rbp - 0xc0]
	nop	
	mov	rdi, rax
	lea	rdi, [rdi]
	call	memcmp
	lea	rsi, [rsi]
	cmp	eax, 0
	nop	
	jle	.label_874
.label_871:
	jmp	.label_869
.label_874:
	mov	rsp, rsp
	xor	eax, eax
	lea	rdi, [rdi]
	mov	ecx, 1
	lea	rdi, [rdi]
	mov	dl, byte ptr [rbp - 0x81]
	mov	rbp, rbp
	and	dl, 1
	lea	rsi, [rsi]
	movzx	esi, dl
	mov	rbp, rbp
	mov	edi, esi
	add	rdi, qword ptr [rbp - 0xc0]
	mov	qword ptr [rbp - 0x60], rdi
	mov	dl, byte ptr [rbp - 0x81]
	test	dl, 1
	cmovne	eax, ecx
	mov	dword ptr [rbp - 0xa4], eax
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x78]
	lea	rdi, [rdi]
	add	rdi, 2
	mov	rsp, rsp
	add	rdi, qword ptr [rbp - 0x60]
	add	rdi, 2
	mov	qword ptr [rbp - 0x50], rdi
	mov	rdi, qword ptr [rbp - 0x70]
	cmp	rdi, qword ptr [rbp - 0x50]
	lea	rsi, [rsi]
	jae	.label_878
	movabs	rax, 0x3fffffffffffffff
	cmp	rax, qword ptr [rbp - 0x50]
	nop	
	jb	.label_875
	mov	rax, qword ptr [rbp - 0x50]
	nop	
	shl	rax, 1
	mov	qword ptr [rbp - 0x50], rax
.label_875:
	mov	rdi, qword ptr [rbp - 0x58]
	nop	
	mov	rsi, qword ptr [rbp - 0x50]
	call	realloc
	nop	
	mov	qword ptr [rbp - 0x30], rax
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x30], 0
	jne	.label_882
	nop	
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rbp - 0xa0]
	mov	qword ptr [rcx], rax
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x1c], 3
	lea	rsi, [rsi]
	jmp	.label_877
.label_882:
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x58], rax
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x50]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x70], rax
.label_878:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, qword ptr [rbp - 0x78]
	mov	qword ptr [rbp - 0x80], rax
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x80]
	mov	rbp, rbp
	mov	rcx, rax
	lea	rsi, [rsi]
	add	rcx, 1
	mov	qword ptr [rbp - 0x80], rcx
	mov	rbp, rbp
	mov	byte ptr [rax], 0x2e
	nop	
	mov	rax, qword ptr [rbp - 0x80]
	mov	rcx, rax
	add	rcx, 1
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x80], rcx
	mov	rsp, rsp
	mov	byte ptr [rax], 0x7e
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x80]
	mov	rsp, rsp
	mov	byte ptr [rax], 0x30
	mov	dl, byte ptr [rbp - 0x81]
	and	dl, 1
	movzx	esi, dl
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x80]
	lea	rsi, [rsi]
	movsxd	rcx, esi
	add	rax, rcx
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x80], rax
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x80]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rbp - 0xc0]
	lea	rdi, [rdi]
	add	rax, 2
	lea	rdi, [rdi]
	mov	rdx, rax
	nop	
	call	memcpy
	mov	rax, qword ptr [rbp - 0xc0]
	add	rax, qword ptr [rbp - 0x80]
	mov	qword ptr [rbp - 0x80], rax
.label_887:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x80]
	mov	rcx, rax
	add	rcx, -1
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x80], rcx
	movsx	edx, byte ptr [rax - 1]
	cmp	edx, 0x39
	lea	rsi, [rsi]
	jne	.label_881
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x80]
	mov	byte ptr [rax], 0x30
	lea	rdi, [rdi]
	jmp	.label_887
.label_881:
	mov	rax, qword ptr [rbp - 0x80]
	nop	
	mov	cl, byte ptr [rax]
	mov	rbp, rbp
	add	cl, 1
	lea	rdi, [rdi]
	mov	byte ptr [rax], cl
	jmp	.label_869
.label_884:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x58]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0xa0]
	lea	rdi, [rdi]
	mov	qword ptr [rcx], rax
	mov	edx, dword ptr [rbp - 0xa4]
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x1c], edx
.label_877:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x1c]
	nop	
	add	rsp, 0xd0
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x410fd0

	.globl check_extension
	.type check_extension, @function
check_extension:
	lea	rsi, [rsi]
	push	rbp
	nop	
	mov	rbp, rsp
	lea	rsi, [rsi]
	sub	rsp, 0x60
	mov	al, dl
	mov	qword ptr [rbp - 0x58], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x39], al
	mov	dword ptr [rbp - 4], ecx
	nop	
	mov	qword ptr [rbp - 0x48], r8
	mov	rdi, qword ptr [rbp - 0x58]
	call	last_component
	mov	qword ptr [rbp - 0x30], rax
	mov	rdi, qword ptr [rbp - 0x30]
	nop	
	call	base_len
	lea	rdi, [rdi]
	mov	ecx, 0xe
	mov	rbp, rbp
	mov	esi, ecx
	mov	qword ptr [rbp - 0x20], rax
	mov	qword ptr [rbp - 0x38], 0xff
	cmp	rsi, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	jae	.label_892
	mov	rax, qword ptr [rbp - 0x48]
	cmp	qword ptr [rax], 0
	mov	rsp, rsp
	jne	.label_895
	mov	rsp, rsp
	cmp	dword ptr [rbp - 4], 0
	mov	rbp, rbp
	jge	.label_889
	nop	
	mov	rax, qword ptr [rbp - 0x30]
	lea	rsi, [rsi]
	mov	cx, word ptr [rax]
	lea	rsi, [rsi]
	mov	word ptr [rbp - 0x22], cx
	mov	rdi, qword ptr [rbp - 0x30]
	mov	edx, OFFSET FLAT:.str_3
	nop	
	mov	esi, edx
	call	strcpy
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x60], rax
	call	__errno_location
	mov	esi, 3
	mov	dword ptr [rax], 0
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x58]
	mov	rsp, rsp
	call	pathconf
	mov	qword ptr [rbp - 0x18], rax
	call	__errno_location
	cmp	dword ptr [rax], 0
	lea	rsi, [rsi]
	setne	r8b
	xor	r8b, 0xff
	mov	rbp, rbp
	and	r8b, 1
	lea	rdi, [rdi]
	movzx	edx, r8b
	mov	rsp, rsp
	movsxd	rax, edx
	mov	rdi, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	sub	rdi, rax
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x18], rdi
	mov	rax, qword ptr [rbp - 0x30]
	mov	rbp, rbp
	mov	cx, word ptr [rbp - 0x22]
	mov	word ptr [rax], cx
	nop	
	jmp	.label_894
.label_889:
	call	__errno_location
	lea	rdi, [rdi]
	mov	esi, 3
	mov	dword ptr [rax], 0
	mov	rbp, rbp
	mov	edi, dword ptr [rbp - 4]
	lea	rsi, [rsi]
	call	fpathconf
	mov	qword ptr [rbp - 0x18], rax
	call	__errno_location
	lea	rdi, [rdi]
	cmp	dword ptr [rax], 0
	mov	rsp, rsp
	setne	cl
	lea	rsi, [rsi]
	xor	cl, 0xff
	lea	rsi, [rsi]
	and	cl, 1
	movzx	esi, cl
	mov	rsp, rsp
	movsxd	rax, esi
	mov	rdx, qword ptr [rbp - 0x18]
	sub	rdx, rax
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x18], rdx
.label_894:
	xor	eax, eax
	mov	ecx, eax
	lea	rsi, [rsi]
	cmp	rcx, qword ptr [rbp - 0x18]
	jg	.label_890
	cmp	qword ptr [rbp - 0x18], -1
	ja	.label_890
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_893
.label_890:
	lea	rdi, [rdi]
	mov	rax, -1
	lea	rdi, [rdi]
	mov	ecx, 0xe
	mov	edx, ecx
	cmp	qword ptr [rbp - 0x18], -1
	mov	rbp, rbp
	cmovl	rax, rdx
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x50], rax
.label_893:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x50]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x48]
	mov	qword ptr [rcx], rax
.label_895:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x48]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0x38], rax
.label_892:
	mov	rax, qword ptr [rbp - 0x38]
	cmp	rax, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	jae	.label_896
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x58]
	mov	rbp, rbp
	add	rax, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x30]
	mov	rbp, rbp
	sub	rax, rcx
	mov	qword ptr [rbp - 0x20], rax
	mov	rax, qword ptr [rbp - 0x38]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	ja	.label_891
	mov	rax, qword ptr [rbp - 0x38]
	sub	rax, 1
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x20], rax
.label_891:
	mov	rsp, rsp
	mov	al, byte ptr [rbp - 0x39]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x30]
	mov	byte ptr [rdx + rcx], al
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rdx, qword ptr [rbp - 0x30]
	mov	byte ptr [rdx + rcx + 1], 0
.label_896:
	nop	
	add	rsp, 0x60
	mov	rbp, rbp
	pop	rbp
	nop	
	ret	
	.section	.text
	.align	32
	#Procedure 0x411250

	.globl backup_file_rename
	.type backup_file_rename, @function
backup_file_rename:
	nop	
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	ecx, 1
	mov	dword ptr [rbp - 4], edi
	mov	qword ptr [rbp - 0x10], rsi
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x14], edx
	mov	rsp, rsp
	mov	edi, dword ptr [rbp - 4]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	edx, dword ptr [rbp - 0x14]
	nop	
	call	backupfile_internal
	mov	rsp, rsp
	add	rsp, 0x20
	pop	rbp
	lea	rsi, [rsi]
	ret	
	.section	.text
	.align	32
	#Procedure 0x411290
	.globl find_backup_file_name
	.type find_backup_file_name, @function
find_backup_file_name:

	mov	rsp, rsp
	push	rbp
	mov	rbp, rsp
	lea	rdi, [rdi]
	sub	rsp, 0x20
	lea	rsi, [rsi]
	xor	ecx, ecx
	mov	dword ptr [rbp - 0x1c], edi
	mov	qword ptr [rbp - 0x18], rsi
	nop	
	mov	dword ptr [rbp - 0xc], edx
	mov	edi, dword ptr [rbp - 0x1c]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	edx, dword ptr [rbp - 0xc]
	call	backupfile_internal
	mov	qword ptr [rbp - 8], rax
	cmp	qword ptr [rbp - 8], 0
	lea	rsi, [rsi]
	jne	.label_897
	call	xalloc_die
.label_897:
	mov	rax, qword ptr [rbp - 8]
	nop	
	add	rsp, 0x20
	mov	rsp, rsp
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4112f0

	.globl get_version
	.type get_version, @function
get_version:
	mov	rbp, rbp
	push	rbp
	mov	rbp, rsp
	mov	rbp, rbp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x18], rsi
	cmp	qword ptr [rbp - 0x18], 0
	je	.label_898
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x18]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0
	mov	rsp, rsp
	jne	.label_899
.label_898:
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0xc], 2
	jmp	.label_900
.label_899:
	mov	rsp, rsp
	movabs	rdx, OFFSET FLAT:backup_args
	movabs	rax, OFFSET FLAT:backup_types
	lea	rdi, [rdi]
	mov	ecx, 4
	mov	r8d, ecx
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 8]
	nop	
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	mov	r9,  qword ptr [word ptr [argmatch_die]]
	mov	rbp, rbp
	mov	rcx, rax
	call	__xargmatch_internal
	mov	r10d,  dword ptr [dword ptr [+ (rax * 4) + backup_types]]
	mov	dword ptr [rbp - 0xc], r10d
.label_900:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0xc]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4113a0

	.globl xget_version
	.type xget_version, @function
xget_version:
	push	rbp
	lea	rdi, [rdi]
	mov	rbp, rsp
	lea	rsi, [rsi]
	sub	rsp, 0x20
	mov	qword ptr [rbp - 0x10], rdi
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x18], rsi
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x18], 0
	je	.label_901
	nop	
	mov	rax, qword ptr [rbp - 0x18]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0
	je	.label_901
	mov	rdi, qword ptr [rbp - 0x10]
	nop	
	mov	rsi, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	call	get_version
	mov	rbp, rbp
	mov	dword ptr [rbp - 4], eax
	nop	
	jmp	.label_902
.label_901:
	mov	rbp, rbp
	movabs	rdi, OFFSET FLAT:.str.1_5
	call	getenv
	mov	rsp, rsp
	movabs	rdi, OFFSET FLAT:.str_9
	mov	rsi, rax
	mov	rsp, rsp
	call	get_version
	mov	dword ptr [rbp - 4], eax
.label_902:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 4]
	lea	rsi, [rsi]
	add	rsp, 0x20
	nop	
	pop	rbp
	lea	rsi, [rsi]
	ret	
	.section	.text
	.align	32
	#Procedure 0x411440

	.globl buffer_lcm
	.type buffer_lcm, @function
buffer_lcm:
	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], rdx
	cmp	qword ptr [rbp - 0x10], 0
	jne	.label_903
	cmp	qword ptr [rbp - 0x18], 0
	je	.label_912
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x58], rax
	jmp	.label_907
.label_912:
	mov	eax, 0x2000
	mov	ecx, eax
	mov	qword ptr [rbp - 0x58], rcx
	jmp	.label_907
.label_907:
	mov	rax, qword ptr [rbp - 0x58]
	mov	qword ptr [rbp - 0x28], rax
	jmp	.label_905
.label_903:
	cmp	qword ptr [rbp - 0x18], 0
	je	.label_911
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x38], rax
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x40], rax
.label_914:
	mov	rax, qword ptr [rbp - 0x38]
	xor	ecx, ecx
	mov	edx, ecx
	div	qword ptr [rbp - 0x40]
	mov	qword ptr [rbp - 0x50], rdx
	cmp	rdx, 0
	je	.label_910
	jmp	.label_906
.label_906:
	mov	rax, qword ptr [rbp - 0x40]
	mov	qword ptr [rbp - 0x38], rax
	mov	rax, qword ptr [rbp - 0x50]
	mov	qword ptr [rbp - 0x40], rax
	jmp	.label_914
.label_910:
	mov	rax, qword ptr [rbp - 0x10]
	xor	ecx, ecx
	mov	edx, ecx
	div	qword ptr [rbp - 0x40]
	mov	qword ptr [rbp - 0x48], rax
	mov	rax, qword ptr [rbp - 0x48]
	imul	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x30], rax
	mov	rax, qword ptr [rbp - 0x30]
	cmp	rax, qword ptr [rbp - 0x20]
	ja	.label_909
	mov	rax, qword ptr [rbp - 0x30]
	xor	ecx, ecx
	mov	edx, ecx
	div	qword ptr [rbp - 0x18]
	cmp	rax, qword ptr [rbp - 0x48]
	jne	.label_909
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_904
.label_909:
	jmp	.label_911
.label_911:
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x28], rax
.label_905:
	mov	rax, qword ptr [rbp - 0x28]
	cmp	rax, qword ptr [rbp - 0x20]
	ja	.label_913
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_908
.label_913:
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x60], rax
.label_908:
	mov	rax, qword ptr [rbp - 0x60]
	mov	qword ptr [rbp - 8], rax
.label_904:
	mov	rax, qword ptr [rbp - 8]
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x411570
	.globl close_stdin_set_file_name
	.type close_stdin_set_file_name, @function
close_stdin_set_file_name:

	nop
	push	rbp
	lea	rdi, [rdi]
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 8]
	nop	
	mov	qword ptr [word ptr [file_name]],  rdi
	mov	rbp, rbp
	pop	rbp
	lea	rsi, [rsi]
	ret	
	.section	.text
	.align	32
	#Procedure 0x4115a0

	.globl close_stdin
	.type close_stdin, @function
close_stdin:
	push	rbp
	mov	rsp, rsp
	mov	rbp, rsp
	nop	
	sub	rsp, 0x10
	nop	
	mov	byte ptr [rbp - 0xd], 0
	lea	rdi, [rdi]
	mov	rdi,  qword ptr [word ptr [stdin]]
	call	freadahead
	cmp	rax, 0
	jbe	.label_915
	mov	rbp, rbp
	xor	eax, eax
	mov	esi, eax
	mov	rbp, rbp
	mov	edx, 1
	lea	rsi, [rsi]
	mov	rdi,  qword ptr [word ptr [stdin]]
	call	rpl_fseeko
	lea	rsi, [rsi]
	cmp	eax, 0
	nop	
	jne	.label_916
	lea	rsi, [rsi]
	mov	rdi,  qword ptr [word ptr [stdin]]
	call	rpl_fflush
	cmp	eax, 0
	lea	rsi, [rsi]
	je	.label_916
	mov	byte ptr [rbp - 0xd], 1
.label_916:
	jmp	.label_915
.label_915:
	mov	rdi,  qword ptr [word ptr [stdin]]
	nop	
	call	close_stream
	cmp	eax, 0
	lea	rsi, [rsi]
	je	.label_920
	mov	byte ptr [rbp - 0xd], 1
.label_920:
	test	byte ptr [rbp - 0xd], 1
	je	.label_921
	mov	rsp, rsp
	movabs	rdi, OFFSET FLAT:.str_10
	call	gettext
	mov	qword ptr [rbp - 8], rax
	cmp	qword ptr [word ptr [file_name]],  0
	je	.label_917
	mov	rbp, rbp
	call	__errno_location
	mov	esi, dword ptr [rax]
	mov	rdi,  qword ptr [word ptr [file_name]]
	mov	dword ptr [rbp - 0xc], esi
	call	quotearg_colon
	lea	rsi, [rsi]
	xor	edi, edi
	movabs	rdx, OFFSET FLAT:.str.1_6
	nop	
	mov	r8, qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	esi, dword ptr [rbp - 0xc]
	lea	rsi, [rsi]
	mov	rcx, rax
	mov	al, 0
	call	error
	jmp	.label_919
.label_917:
	nop	
	call	__errno_location
	xor	edi, edi
	movabs	rdx, OFFSET FLAT:.str_7
	lea	rsi, [rsi]
	mov	esi, dword ptr [rax]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 8]
	mov	al, 0
	mov	rbp, rbp
	call	error
.label_919:
	lea	rsi, [rsi]
	jmp	.label_921
.label_921:
	call	close_stdout
	test	byte ptr [rbp - 0xd], 1
	nop	
	je	.label_918
	mov	edi,  dword ptr [dword ptr [exit_failure]]
	lea	rsi, [rsi]
	call	_exit
.label_918:
	lea	rdi, [rdi]
	add	rsp, 0x10
	pop	rbp
	lea	rdi, [rdi]
	ret	
	.section	.text
	.align	32
	#Procedure 0x411710
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
	mov	qword ptr [word ptr [file_name_0]],  rdi
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x411740
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
	#Procedure 0x411770

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
	je	.label_922
	test	byte ptr [byte ptr [ignore_EPIPE]],  1
	je	.label_926
	mov	rbp, rbp
	call	__errno_location
	mov	rsp, rsp
	cmp	dword ptr [rax], 0x20
	je	.label_922
.label_926:
	mov	rsp, rsp
	movabs	rdi, OFFSET FLAT:.str_11
	call	gettext
	mov	qword ptr [rbp - 0x10], rax
	cmp	qword ptr [word ptr [file_name_0]],  0
	je	.label_925
	nop	
	call	__errno_location
	nop	
	mov	esi, dword ptr [rax]
	mov	rdi,  qword ptr [word ptr [file_name_0]]
	mov	dword ptr [rbp - 4], esi
	call	quotearg_colon
	nop	
	xor	edi, edi
	lea	rsi, [rsi]
	movabs	rdx, OFFSET FLAT:.str.1_6
	mov	rbp, rbp
	mov	r8, qword ptr [rbp - 0x10]
	mov	esi, dword ptr [rbp - 4]
	lea	rdi, [rdi]
	mov	rcx, rax
	mov	al, 0
	call	error
	jmp	.label_923
.label_925:
	call	__errno_location
	lea	rdi, [rdi]
	xor	edi, edi
	mov	rsp, rsp
	movabs	rdx, OFFSET FLAT:.str_7
	mov	esi, dword ptr [rax]
	nop	
	mov	rcx, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	al, 0
	mov	rsp, rsp
	call	error
.label_923:
	mov	edi,  dword ptr [dword ptr [exit_failure]]
	mov	rsp, rsp
	call	_exit
.label_922:
	mov	rdi,  qword ptr [word ptr [stderr]]
	mov	rbp, rbp
	call	close_stream
	nop	
	cmp	eax, 0
	je	.label_924
	lea	rdi, [rdi]
	mov	edi,  dword ptr [dword ptr [exit_failure]]
	call	_exit
.label_924:
	lea	rdi, [rdi]
	add	rsp, 0x10
	nop	
	pop	rbp
	lea	rsi, [rsi]
	ret	
	.section	.text
	.align	32
	#Procedure 0x4118a0

	.globl dir_name
	.type dir_name, @function
dir_name:
	lea	rsi, [rsi]
	push	rbp
	mov	rbp, rbp
	mov	rbp, rsp
	mov	rbp, rbp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 0x10], rdi
	mov	rdi, qword ptr [rbp - 0x10]
	call	mdir_name
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 8], rax
	cmp	qword ptr [rbp - 8], 0
	nop	
	jne	.label_927
	lea	rsi, [rsi]
	call	xalloc_die
.label_927:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	add	rsp, 0x10
	mov	rbp, rbp
	pop	rbp
	mov	rbp, rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4118f0

	.globl dir_len
	.type dir_len, @function
dir_len:
	push	rbp
	mov	rbp, rsp
	mov	rsp, rsp
	sub	rsp, 0x20
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x20], rdi
	mov	qword ptr [rbp - 8], 0
	nop	
	cmp	qword ptr [rbp - 8], 0
	je	.label_928
	xor	eax, eax
	mov	dword ptr [rbp - 0xc], eax
	lea	rdi, [rdi]
	jmp	.label_931
.label_928:
	lea	rsi, [rsi]
	xor	eax, eax
	lea	rdi, [rdi]
	mov	ecx, 1
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	movsx	esi, byte ptr [rdx]
	cmp	esi, 0x2f
	nop	
	cmove	eax, ecx
	mov	dword ptr [rbp - 0xc], eax
.label_931:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0xc]
	movsxd	rcx, eax
	lea	rdi, [rdi]
	add	rcx, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 8], rcx
	nop	
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	call	last_component
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	sub	rax, rcx
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x18], rax
.label_933:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 8]
	mov	rsp, rsp
	cmp	rax, qword ptr [rbp - 0x18]
	nop	
	jae	.label_932
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x18]
	sub	rax, 1
	mov	rcx, qword ptr [rbp - 0x20]
	movsx	edx, byte ptr [rcx + rax]
	mov	rsp, rsp
	cmp	edx, 0x2f
	je	.label_929
	jmp	.label_932
.label_929:
	jmp	.label_930
.label_930:
	nop	
	mov	rax, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	add	rax, -1
	mov	qword ptr [rbp - 0x18], rax
	lea	rdi, [rdi]
	jmp	.label_933
.label_932:
	mov	rax, qword ptr [rbp - 0x18]
	add	rsp, 0x20
	nop	
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4119e0

	.globl mdir_name
	.type mdir_name, @function
mdir_name:
	push	rbp
	mov	rbp, rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	qword ptr [rbp - 0x20], rdi
	mov	rdi, qword ptr [rbp - 0x20]
	call	dir_len
	mov	rsp, rsp
	mov	cl, 1
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x18], rax
	nop	
	cmp	qword ptr [rbp - 0x18], 0
	nop	
	mov	byte ptr [rbp - 0x22], cl
	je	.label_935
	mov	rsp, rsp
	xor	eax, eax
	mov	rsp, rsp
	mov	cl, al
	mov	byte ptr [rbp - 0x22], cl
	lea	rdi, [rdi]
	jmp	.label_935
.label_935:
	mov	al, byte ptr [rbp - 0x22]
	lea	rsi, [rsi]
	and	al, 1
	mov	byte ptr [rbp - 0x21], al
	mov	rcx, qword ptr [rbp - 0x18]
	mov	al, byte ptr [rbp - 0x21]
	mov	rbp, rbp
	and	al, 1
	mov	rsp, rsp
	movzx	edx, al
	nop	
	mov	esi, edx
	nop	
	add	rcx, rsi
	mov	rsp, rsp
	add	rcx, 1
	mov	rdi, rcx
	nop	
	call	malloc
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x10], rax
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x10], 0
	jne	.label_937
	nop	
	mov	qword ptr [rbp - 8], 0
	mov	rbp, rbp
	jmp	.label_934
.label_937:
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x10]
	nop	
	mov	rsi, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x18]
	call	memcpy
	test	byte ptr [rbp - 0x21], 1
	lea	rdi, [rdi]
	je	.label_936
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x18]
	nop	
	mov	rcx, rax
	mov	rsp, rsp
	add	rcx, 1
	nop	
	mov	qword ptr [rbp - 0x18], rcx
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x10]
	mov	byte ptr [rcx + rax], 0x2e
.label_936:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x10]
	mov	byte ptr [rcx + rax], 0
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x10]
	nop	
	mov	qword ptr [rbp - 8], rax
.label_934:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x30
	mov	rbp, rbp
	pop	rbp
	lea	rsi, [rsi]
	ret	
	.section	.text
	.align	32
	#Procedure 0x411b00

	.globl last_component
	.type last_component, @function
last_component:
	push	rbp
	nop	
	mov	rbp, rsp
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x18], rdi
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x10], rdi
	mov	byte ptr [rbp - 0x19], 0
.label_941:
	mov	rax, qword ptr [rbp - 0x10]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0x2f
	mov	rbp, rbp
	jne	.label_944
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 1
	mov	qword ptr [rbp - 0x10], rax
	mov	rsp, rsp
	jmp	.label_941
.label_944:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	qword ptr [rbp - 8], rax
.label_940:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 8]
	cmp	byte ptr [rax], 0
	mov	rsp, rsp
	je	.label_942
	mov	rax, qword ptr [rbp - 8]
	movsx	ecx, byte ptr [rax]
	lea	rsi, [rsi]
	cmp	ecx, 0x2f
	jne	.label_939
	mov	byte ptr [rbp - 0x19], 1
	nop	
	jmp	.label_943
.label_939:
	mov	rsp, rsp
	test	byte ptr [rbp - 0x19], 1
	lea	rdi, [rdi]
	je	.label_938
	mov	rax, qword ptr [rbp - 8]
	nop	
	mov	qword ptr [rbp - 0x10], rax
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x19], 0
.label_938:
	jmp	.label_943
.label_943:
	jmp	.label_945
.label_945:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 8]
	mov	rsp, rsp
	add	rax, 1
	nop	
	mov	qword ptr [rbp - 8], rax
	jmp	.label_940
.label_942:
	mov	rax, qword ptr [rbp - 0x10]
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x411bd0

	.globl base_len
	.type base_len, @function
base_len:
	mov	rsp, rsp
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	nop	
	mov	qword ptr [rbp - 0x20], rdi
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x18], 0
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	call	strlen
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x10], rax
.label_947:
	xor	eax, eax
	mov	cl, al
	mov	eax, 1
	lea	rsi, [rsi]
	mov	edx, eax
	cmp	rdx, qword ptr [rbp - 0x10]
	mov	byte ptr [rbp - 1], cl
	mov	rsp, rsp
	jae	.label_946
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	sub	rax, 1
	mov	rcx, qword ptr [rbp - 0x20]
	nop	
	movsx	edx, byte ptr [rcx + rax]
	cmp	edx, 0x2f
	sete	sil
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 1], sil
.label_946:
	lea	rdi, [rdi]
	mov	al, byte ptr [rbp - 1]
	lea	rdi, [rdi]
	test	al, 1
	nop	
	jne	.label_948
	mov	rbp, rbp
	jmp	.label_949
.label_948:
	jmp	.label_950
.label_950:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, -1
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_947
.label_949:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x10]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x411c90

	.globl strip_trailing_slashes
	.type strip_trailing_slashes, @function
strip_trailing_slashes:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	call	last_component
	mov	qword ptr [rbp - 0x10], rax
	mov	rax, qword ptr [rbp - 0x10]
	cmp	byte ptr [rax], 0
	jne	.label_951
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x10], rax
.label_951:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x28], rax
	call	base_len
	mov	rdi, qword ptr [rbp - 0x28]
	add	rdi, rax
	mov	qword ptr [rbp - 0x18], rdi
	mov	rax, qword ptr [rbp - 0x18]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0
	setne	dl
	and	dl, 1
	mov	byte ptr [rbp - 0x19], dl
	mov	rax, qword ptr [rbp - 0x18]
	mov	byte ptr [rax], 0
	mov	dl, byte ptr [rbp - 0x19]
	and	dl, 1
	movzx	eax, dl
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x411d10

	.globl fdadvise
	.type fdadvise, @function
fdadvise:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	dword ptr [rbp - 0x14], edi
	nop	
	mov	qword ptr [rbp - 8], rsi
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x10], rdx
	mov	dword ptr [rbp - 0x18], ecx
	mov	edi, dword ptr [rbp - 0x14]
	mov	rsi, qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rbp - 0x18]
	call	posix_fadvise
	nop	
	mov	dword ptr [rbp - 0x1c], eax
	lea	rsi, [rsi]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x411d50
	.globl fadvise
	.type fadvise, @function
fadvise:

	lea	rdi, [rdi]
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 0x10], rdi
	mov	dword ptr [rbp - 0x14], esi
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x10], 0
	je	.label_952
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	call	fileno
	xor	ecx, ecx
	mov	edi, ecx
	mov	ecx, dword ptr [rbp - 0x14]
	mov	qword ptr [rbp - 8], rdi
	mov	edi, eax
	mov	rsi, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 8]
	call	fdadvise
.label_952:
	add	rsp, 0x20
	lea	rsi, [rsi]
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x411db0

	.globl open_safer
	.type open_safer, @function
open_safer:
	mov	rsp, rsp
	push	rbp
	nop	
	mov	rbp, rsp
	mov	rbp, rbp
	sub	rsp, 0x1e0
	lea	rdi, [rdi]
	test	al, al
	movaps	xmmword ptr [rbp - 0xf0], xmm7
	movaps	xmmword ptr [rbp - 0x90], xmm6
	movaps	xmmword ptr [rbp - 0x10], xmm5
	lea	rsi, [rsi]
	movaps	xmmword ptr [rbp - 0x1d0], xmm4
	nop	
	movaps	xmmword ptr [rbp - 0x40], xmm3
	movaps	xmmword ptr [rbp - 0x50], xmm2
	movaps	xmmword ptr [rbp - 0xd0], xmm1
	movaps	xmmword ptr [rbp - 0x70], xmm0
	mov	qword ptr [rbp - 0x78], rdi
	mov	qword ptr [rbp - 0x98], r9
	mov	qword ptr [rbp - 0xa8], r8
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x58], rcx
	nop	
	mov	qword ptr [rbp - 0x1a8], rdx
	mov	dword ptr [rbp - 0xd4], esi
	je	.label_953
	movaps	xmm0, xmmword ptr [rbp - 0x70]
	mov	rsp, rsp
	movaps	xmmword ptr [rbp - 0x170], xmm0
	mov	rbp, rbp
	movaps	xmm1, xmmword ptr [rbp - 0xd0]
	movaps	xmmword ptr [rbp - 0x160], xmm1
	mov	rsp, rsp
	movaps	xmm2, xmmword ptr [rbp - 0x50]
	mov	rbp, rbp
	movaps	xmmword ptr [rbp - 0x150], xmm2
	movaps	xmm3, xmmword ptr [rbp - 0x40]
	lea	rdi, [rdi]
	movaps	xmmword ptr [rbp - 0x140], xmm3
	lea	rsi, [rsi]
	movaps	xmm4, xmmword ptr [rbp - 0x1d0]
	movaps	xmmword ptr [rbp - 0x130], xmm4
	movaps	xmm5, xmmword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	movaps	xmmword ptr [rbp - 0x120], xmm5
	movaps	xmm6, xmmword ptr [rbp - 0x90]
	movaps	xmmword ptr [rbp - 0x110], xmm6
	lea	rsi, [rsi]
	movaps	xmm7, xmmword ptr [rbp - 0xf0]
	movaps	xmmword ptr [rbp - 0x100], xmm7
.label_953:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x98]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x178], rax
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0xa8]
	mov	qword ptr [rbp - 0x180], rcx
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x58]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x188], rdx
	mov	rsi, qword ptr [rbp - 0x1a8]
	nop	
	mov	qword ptr [rbp - 0x190], rsi
	mov	edi, dword ptr [rbp - 0xd4]
	mov	r8, qword ptr [rbp - 0x78]
	mov	qword ptr [rbp - 0xb8], r8
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x1b4], edi
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x1d4], 0
	mov	edi, dword ptr [rbp - 0x1b4]
	and	edi, 0x40
	mov	rbp, rbp
	cmp	edi, 0
	lea	rdi, [rdi]
	je	.label_954
	mov	rbp, rbp
	lea	rax, [rbp - 0x30]
	mov	rcx, rax
	nop	
	lea	rdx, [rbp - 0x1a0]
	mov	qword ptr [rcx + 0x10], rdx
	lea	rdi, [rdi]
	lea	rdx, [rbp + 0x10]
	mov	qword ptr [rcx + 8], rdx
	mov	dword ptr [rcx + 4], 0x30
	mov	dword ptr [rcx], 0x10
	mov	esi, dword ptr [rbp - 0x30]
	mov	rsp, rsp
	cmp	esi, 0x28
	mov	rbp, rbp
	mov	qword ptr [rbp - 0xa0], rax
	mov	dword ptr [rbp - 0xac], esi
	mov	rsp, rsp
	ja	.label_955
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0xac]
	movsxd	rcx, eax
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0xa0]
	nop	
	add	rcx, qword ptr [rdx + 0x10]
	mov	rsp, rsp
	add	eax, 8
	mov	dword ptr [rdx], eax
	mov	qword ptr [rbp - 0x60], rcx
	jmp	.label_956
.label_955:
	mov	rax, qword ptr [rbp - 0xa0]
	mov	rbp, rbp
	mov	rcx, qword ptr [rax + 8]
	mov	rdx, rcx
	add	rcx, 8
	mov	qword ptr [rax + 8], rcx
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x60], rdx
.label_956:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x60]
	lea	rsi, [rsi]
	lea	rcx, [rbp - 0x30]
	mov	rsp, rsp
	mov	edx, dword ptr [rax]
	mov	dword ptr [rbp - 0x1d4], edx
	mov	qword ptr [rbp - 0x1b0], rcx
.label_954:
	mov	rdi, qword ptr [rbp - 0xb8]
	mov	rsp, rsp
	mov	esi, dword ptr [rbp - 0x1b4]
	mov	rbp, rbp
	mov	edx, dword ptr [rbp - 0x1d4]
	nop	
	xor	eax, eax
	mov	cl, al
	nop	
	mov	al, cl
	mov	rsp, rsp
	call	open
	lea	rsi, [rsi]
	mov	edi, eax
	mov	rbp, rbp
	call	fd_safer
	lea	rsi, [rsi]
	add	rsp, 0x1e0
	pop	rbp
	lea	rsi, [rsi]
	ret	
	.section	.text
	.align	32
	#Procedure 0x412030

	.globl record_file
	.type record_file, @function
record_file:
	nop	
	push	rbp
	nop	
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	qword ptr [rbp - 0x18], rdi
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x28], rsi
	mov	rsp, rsp
	mov	qword ptr [rbp - 8], rdx
	cmp	qword ptr [rbp - 0x18], 0
	jne	.label_957
	jmp	.label_959
.label_957:
	nop	
	mov	eax, 0x18
	mov	edi, eax
	call	xmalloc
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x20], rax
	mov	rdi, qword ptr [rbp - 0x28]
	call	xstrdup
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	mov	qword ptr [rdi], rax
	mov	rax, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax + 8]
	mov	rdi, qword ptr [rbp - 0x20]
	mov	qword ptr [rdi + 8], rax
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax]
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	mov	qword ptr [rdi + 0x10], rax
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	mov	rsi, rax
	lea	rsi, [rsi]
	call	hash_insert
	mov	qword ptr [rbp - 0x10], rax
	cmp	qword ptr [rbp - 0x10], 0
	jne	.label_958
	mov	rbp, rbp
	call	xalloc_die
.label_958:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	je	.label_959
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x20]
	mov	rdi, rax
	nop	
	call	triple_free
.label_959:
	mov	rsp, rsp
	add	rsp, 0x30
	pop	rbp
	mov	rsp, rsp
	ret	
	.section	.text
	.align	32
	#Procedure 0x412110

	.globl seen_file
	.type seen_file, @function
seen_file:
	push	rbp
	lea	rsi, [rsi]
	mov	rbp, rsp
	lea	rsi, [rsi]
	sub	rsp, 0x40
	mov	qword ptr [rbp - 0x18], rdi
	nop	
	mov	qword ptr [rbp - 0x38], rsi
	mov	rbp, rbp
	mov	qword ptr [rbp - 8], rdx
	cmp	qword ptr [rbp - 0x18], 0
	jne	.label_960
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 9], 0
	jmp	.label_961
.label_960:
	lea	rax, [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x38]
	mov	qword ptr [rbp - 0x30], rcx
	nop	
	mov	rcx, qword ptr [rbp - 8]
	mov	rcx, qword ptr [rcx + 8]
	mov	qword ptr [rbp - 0x28], rcx
	mov	rcx, qword ptr [rbp - 8]
	mov	rcx, qword ptr [rcx]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x20], rcx
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	mov	rsi, rax
	call	hash_lookup
	lea	rsi, [rsi]
	cmp	rax, 0
	lea	rdi, [rdi]
	setne	dl
	xor	dl, 0xff
	xor	dl, 0xff
	and	dl, 1
	nop	
	mov	byte ptr [rbp - 9], dl
.label_961:
	mov	al, byte ptr [rbp - 9]
	lea	rdi, [rdi]
	and	al, 1
	movzx	eax, al
	lea	rdi, [rdi]
	add	rsp, 0x40
	pop	rbp
	nop	
	ret	
	.section	.text
	.align	32
	#Procedure 0x4121b0

	.globl file_type
	.type file_type, @function
file_type:
	push	rbp
	mov	rbp, rsp
	lea	rsi, [rsi]
	sub	rsp, 0x20
	mov	qword ptr [rbp - 0x18], rdi
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x18]
	mov	eax, dword ptr [rdi + 0x18]
	and	eax, 0xf000
	cmp	eax, 0x8000
	lea	rdi, [rdi]
	jne	.label_972
	mov	rax, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	cmp	qword ptr [rax + 0x30], 0
	lea	rsi, [rsi]
	jne	.label_965
	movabs	rdi, OFFSET FLAT:.str_12
	call	gettext
	mov	qword ptr [rbp - 8], rax
	nop	
	jmp	.label_962
.label_965:
	lea	rsi, [rsi]
	movabs	rdi, OFFSET FLAT:.str.1_7
	mov	rsp, rsp
	call	gettext
	mov	qword ptr [rbp - 8], rax
.label_962:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x10], rax
	lea	rsi, [rsi]
	jmp	.label_964
.label_972:
	mov	rax, qword ptr [rbp - 0x18]
	mov	ecx, dword ptr [rax + 0x18]
	nop	
	and	ecx, 0xf000
	lea	rsi, [rsi]
	cmp	ecx, 0x4000
	mov	rsp, rsp
	jne	.label_974
	movabs	rdi, OFFSET FLAT:.str.2_4
	lea	rsi, [rsi]
	call	gettext
	mov	qword ptr [rbp - 0x10], rax
	mov	rbp, rbp
	jmp	.label_964
.label_974:
	nop	
	mov	rax, qword ptr [rbp - 0x18]
	mov	ecx, dword ptr [rax + 0x18]
	and	ecx, 0xf000
	cmp	ecx, 0xa000
	jne	.label_973
	lea	rdi, [rdi]
	movabs	rdi, OFFSET FLAT:.str.3_3
	nop	
	call	gettext
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_964
.label_973:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	mov	ecx, dword ptr [rax + 0x18]
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x18]
	sub	ecx, dword ptr [rax + 0x18]
	lea	rsi, [rsi]
	cmp	ecx, 0
	je	.label_971
	lea	rsi, [rsi]
	movabs	rdi, OFFSET FLAT:.str.4_1
	call	gettext
	nop	
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_964
.label_971:
	mov	rax, qword ptr [rbp - 0x18]
	mov	ecx, dword ptr [rax + 0x18]
	mov	rax, qword ptr [rbp - 0x18]
	sub	ecx, dword ptr [rax + 0x18]
	cmp	ecx, 0
	lea	rsi, [rsi]
	je	.label_970
	movabs	rdi, OFFSET FLAT:.str.5_2
	mov	rbp, rbp
	call	gettext
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x10], rax
	mov	rbp, rbp
	jmp	.label_964
.label_970:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	mov	ecx, dword ptr [rax + 0x18]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	sub	ecx, dword ptr [rax + 0x18]
	mov	rbp, rbp
	cmp	ecx, 0
	mov	rsp, rsp
	je	.label_967
	movabs	rdi, OFFSET FLAT:.str.6_1
	call	gettext
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_964
.label_967:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	mov	ecx, dword ptr [rax + 0x18]
	and	ecx, 0xf000
	cmp	ecx, 0x6000
	lea	rdi, [rdi]
	jne	.label_968
	lea	rsi, [rsi]
	movabs	rdi, OFFSET FLAT:.str.7_1
	call	gettext
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x10], rax
	mov	rsp, rsp
	jmp	.label_964
.label_968:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	mov	ecx, dword ptr [rax + 0x18]
	and	ecx, 0xf000
	cmp	ecx, 0x2000
	lea	rdi, [rdi]
	jne	.label_963
	nop	
	movabs	rdi, OFFSET FLAT:.str.8_1
	mov	rbp, rbp
	call	gettext
	nop	
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_964
.label_963:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	mov	ecx, dword ptr [rax + 0x18]
	mov	rsp, rsp
	and	ecx, 0xf000
	mov	rbp, rbp
	cmp	ecx, 0x1000
	nop	
	jne	.label_969
	lea	rdi, [rdi]
	movabs	rdi, OFFSET FLAT:.str.9_1
	call	gettext
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x10], rax
	mov	rbp, rbp
	jmp	.label_964
.label_969:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x18]
	mov	ecx, dword ptr [rax + 0x18]
	mov	rbp, rbp
	and	ecx, 0xf000
	nop	
	cmp	ecx, 0xc000
	mov	rsp, rsp
	jne	.label_966
	movabs	rdi, OFFSET FLAT:.str.10_2
	call	gettext
	mov	qword ptr [rbp - 0x10], rax
	lea	rsi, [rsi]
	jmp	.label_964
.label_966:
	movabs	rdi, OFFSET FLAT:.str.11_2
	mov	rsp, rsp
	call	gettext
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x10], rax
.label_964:
	mov	rax, qword ptr [rbp - 0x10]
	add	rsp, 0x20
	lea	rsi, [rsi]
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4124a0

	.globl strmode
	.type strmode, @function
strmode:
	push	rbp
	mov	rbp, rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	dword ptr [rbp - 0xc], edi
	mov	rbp, rbp
	mov	qword ptr [rbp - 8], rsi
	lea	rdi, [rdi]
	mov	edi, dword ptr [rbp - 0xc]
	mov	rbp, rbp
	call	ftypelet
	mov	edi, 0x2d
	mov	ecx, 0x77
	lea	rdi, [rdi]
	mov	edx, 0x72
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	byte ptr [rsi], al
	mov	rbp, rbp
	mov	r8d, dword ptr [rbp - 0xc]
	and	r8d, 0x100
	cmp	r8d, 0
	nop	
	mov	r8d, edi
	cmovne	r8d, edx
	mov	al, r8b
	mov	rsi, qword ptr [rbp - 8]
	mov	byte ptr [rsi + 1], al
	mov	rbp, rbp
	mov	edx, dword ptr [rbp - 0xc]
	lea	rsi, [rsi]
	and	edx, 0x80
	mov	rbp, rbp
	cmp	edx, 0
	lea	rdi, [rdi]
	cmovne	edi, ecx
	mov	al, dil
	nop	
	mov	rsi, qword ptr [rbp - 8]
	mov	byte ptr [rsi + 2], al
	lea	rsi, [rsi]
	mov	ecx, dword ptr [rbp - 0xc]
	and	ecx, 0x800
	mov	rbp, rbp
	cmp	ecx, 0
	mov	rbp, rbp
	je	.label_976
	mov	eax, 0x53
	mov	ecx, 0x73
	mov	edx, dword ptr [rbp - 0xc]
	mov	rsp, rsp
	and	edx, 0x40
	mov	rbp, rbp
	cmp	edx, 0
	nop	
	cmovne	eax, ecx
	mov	dword ptr [rbp - 0x18], eax
	lea	rsi, [rsi]
	jmp	.label_977
.label_976:
	lea	rsi, [rsi]
	mov	eax, 0x2d
	mov	ecx, 0x78
	mov	rbp, rbp
	mov	edx, dword ptr [rbp - 0xc]
	and	edx, 0x40
	cmp	edx, 0
	cmovne	eax, ecx
	nop	
	mov	dword ptr [rbp - 0x18], eax
.label_977:
	mov	eax, dword ptr [rbp - 0x18]
	mov	ecx, 0x2d
	lea	rsi, [rsi]
	mov	edx, 0x77
	mov	esi, 0x72
	mov	dil, al
	mov	r8, qword ptr [rbp - 8]
	mov	byte ptr [r8 + 3], dil
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0xc]
	lea	rsi, [rsi]
	and	eax, 0x20
	lea	rsi, [rsi]
	cmp	eax, 0
	mov	rbp, rbp
	mov	eax, ecx
	lea	rdi, [rdi]
	cmovne	eax, esi
	mov	dil, al
	mov	r8, qword ptr [rbp - 8]
	mov	byte ptr [r8 + 4], dil
	mov	eax, dword ptr [rbp - 0xc]
	mov	rsp, rsp
	and	eax, 0x10
	lea	rdi, [rdi]
	cmp	eax, 0
	cmovne	ecx, edx
	mov	dil, cl
	nop	
	mov	r8, qword ptr [rbp - 8]
	mov	byte ptr [r8 + 5], dil
	mov	eax, dword ptr [rbp - 0xc]
	and	eax, 0x400
	cmp	eax, 0
	je	.label_979
	mov	eax, 0x53
	mov	rsp, rsp
	mov	ecx, 0x73
	mov	edx, dword ptr [rbp - 0xc]
	and	edx, 8
	nop	
	cmp	edx, 0
	lea	rsi, [rsi]
	cmovne	eax, ecx
	mov	dword ptr [rbp - 0x14], eax
	lea	rsi, [rsi]
	jmp	.label_980
.label_979:
	nop	
	mov	eax, 0x2d
	mov	rsp, rsp
	mov	ecx, 0x78
	mov	edx, dword ptr [rbp - 0xc]
	lea	rdi, [rdi]
	and	edx, 8
	lea	rsi, [rsi]
	cmp	edx, 0
	cmovne	eax, ecx
	mov	dword ptr [rbp - 0x14], eax
.label_980:
	mov	eax, dword ptr [rbp - 0x14]
	nop	
	mov	ecx, 0x2d
	mov	edx, 0x77
	mov	esi, 0x72
	mov	dil, al
	nop	
	mov	r8, qword ptr [rbp - 8]
	mov	byte ptr [r8 + 6], dil
	nop	
	mov	eax, dword ptr [rbp - 0xc]
	mov	rbp, rbp
	and	eax, 4
	mov	rbp, rbp
	cmp	eax, 0
	mov	rsp, rsp
	mov	eax, ecx
	lea	rdi, [rdi]
	cmovne	eax, esi
	mov	dil, al
	mov	r8, qword ptr [rbp - 8]
	mov	byte ptr [r8 + 7], dil
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0xc]
	and	eax, 2
	cmp	eax, 0
	cmovne	ecx, edx
	mov	rbp, rbp
	mov	dil, cl
	lea	rdi, [rdi]
	mov	r8, qword ptr [rbp - 8]
	mov	byte ptr [r8 + 8], dil
	mov	eax, dword ptr [rbp - 0xc]
	lea	rsi, [rsi]
	and	eax, 0x200
	lea	rdi, [rdi]
	cmp	eax, 0
	lea	rsi, [rsi]
	je	.label_975
	mov	eax, 0x54
	lea	rsi, [rsi]
	mov	ecx, 0x74
	nop	
	mov	edx, dword ptr [rbp - 0xc]
	and	edx, 1
	mov	rsp, rsp
	cmp	edx, 0
	cmovne	eax, ecx
	mov	dword ptr [rbp - 0x10], eax
	lea	rdi, [rdi]
	jmp	.label_978
.label_975:
	mov	eax, 0x2d
	mov	ecx, 0x78
	mov	edx, dword ptr [rbp - 0xc]
	and	edx, 1
	cmp	edx, 0
	nop	
	cmovne	eax, ecx
	nop	
	mov	dword ptr [rbp - 0x10], eax
.label_978:
	mov	eax, dword ptr [rbp - 0x10]
	mov	cl, al
	mov	rdx, qword ptr [rbp - 8]
	mov	byte ptr [rdx + 9], cl
	mov	rdx, qword ptr [rbp - 8]
	mov	byte ptr [rdx + 0xa], 0x20
	mov	rdx, qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	byte ptr [rdx + 0xb], 0
	mov	rsp, rsp
	add	rsp, 0x20
	mov	rsp, rsp
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x412740

	.globl ftypelet
	.type ftypelet, @function
ftypelet:
	push	rbp
	nop	
	mov	rbp, rsp
	nop	
	mov	dword ptr [rbp - 4], edi
	lea	rdi, [rdi]
	mov	edi, dword ptr [rbp - 4]
	and	edi, 0xf000
	lea	rdi, [rdi]
	cmp	edi, 0x8000
	jne	.label_981
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 5], 0x2d
	jmp	.label_982
.label_981:
	mov	eax, dword ptr [rbp - 4]
	nop	
	and	eax, 0xf000
	cmp	eax, 0x4000
	lea	rsi, [rsi]
	jne	.label_984
	mov	rbp, rbp
	mov	byte ptr [rbp - 5], 0x64
	nop	
	jmp	.label_982
.label_984:
	mov	eax, dword ptr [rbp - 4]
	mov	rbp, rbp
	and	eax, 0xf000
	cmp	eax, 0x6000
	jne	.label_987
	mov	rbp, rbp
	mov	byte ptr [rbp - 5], 0x62
	nop	
	jmp	.label_982
.label_987:
	mov	eax, dword ptr [rbp - 4]
	mov	rbp, rbp
	and	eax, 0xf000
	cmp	eax, 0x2000
	jne	.label_986
	mov	byte ptr [rbp - 5], 0x63
	jmp	.label_982
.label_986:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 4]
	and	eax, 0xf000
	mov	rbp, rbp
	cmp	eax, 0xa000
	nop	
	jne	.label_985
	mov	rsp, rsp
	mov	byte ptr [rbp - 5], 0x6c
	jmp	.label_982
.label_985:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 4]
	nop	
	and	eax, 0xf000
	lea	rsi, [rsi]
	cmp	eax, 0x1000
	jne	.label_988
	mov	byte ptr [rbp - 5], 0x70
	mov	rbp, rbp
	jmp	.label_982
.label_988:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 4]
	lea	rsi, [rsi]
	and	eax, 0xf000
	mov	rsp, rsp
	cmp	eax, 0xc000
	jne	.label_983
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 5], 0x73
	lea	rsi, [rsi]
	jmp	.label_982
.label_983:
	mov	rsp, rsp
	mov	byte ptr [rbp - 5], 0x3f
.label_982:
	lea	rdi, [rdi]
	movsx	eax, byte ptr [rbp - 5]
	mov	rbp, rbp
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x412860
	.globl filemodestring
	.type filemodestring, @function
filemodestring:

	lea	rdi, [rdi]
	push	rbp
	nop	
	mov	rbp, rsp
	mov	rbp, rbp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 8], rsi
	mov	rsi, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	edi, dword ptr [rsi + 0x18]
	mov	rsi, qword ptr [rbp - 8]
	call	strmode
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	edi, dword ptr [rsi + 0x18]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x10]
	sub	edi, dword ptr [rsi + 0x18]
	lea	rsi, [rsi]
	cmp	edi, 0
	je	.label_994
	mov	rax, qword ptr [rbp - 8]
	mov	byte ptr [rax], 0x46
	jmp	.label_990
.label_994:
	nop	
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rax + 0x18]
	mov	rax, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	sub	ecx, dword ptr [rax + 0x18]
	cmp	ecx, 0
	je	.label_992
	nop	
	mov	rax, qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	byte ptr [rax], 0x51
	jmp	.label_989
.label_992:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x10]
	nop	
	mov	ecx, dword ptr [rax + 0x18]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	sub	ecx, dword ptr [rax + 0x18]
	cmp	ecx, 0
	je	.label_993
	nop	
	mov	rax, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	mov	byte ptr [rax], 0x53
	jmp	.label_991
.label_993:
	lea	rsi, [rsi]
	jmp	.label_991
.label_991:
	mov	rbp, rbp
	jmp	.label_989
.label_989:
	jmp	.label_990
.label_990:
	nop	
	add	rsp, 0x10
	lea	rsi, [rsi]
	pop	rbp
	mov	rsp, rsp
	ret	
	.section	.text
	.align	32
	#Procedure 0x412940

	.globl file_name_concat
	.type file_name_concat, @function
file_name_concat:
	push	rbp
	mov	rbp, rsp
	mov	rbp, rbp
	sub	rsp, 0x20
	mov	rsp, rsp
	mov	qword ptr [rbp - 8], rdi
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x20], rdx
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 8]
	nop	
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x20]
	nop	
	call	mfile_name_concat
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x18], rax
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x18], 0
	mov	rbp, rbp
	jne	.label_995
	lea	rsi, [rsi]
	call	xalloc_die
.label_995:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x18]
	nop	
	add	rsp, 0x20
	lea	rsi, [rsi]
	pop	rbp
	lea	rdi, [rdi]
	ret	
	.section	.text
	.align	32
	#Procedure 0x4129b0

	.globl mfile_name_concat
	.type mfile_name_concat, @function
mfile_name_concat:
	lea	rdi, [rdi]
	push	rbp
	nop	
	mov	rbp, rsp
	nop	
	sub	rsp, 0x60
	mov	qword ptr [rbp - 0x20], rdi
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x48], rdx
	mov	rdi, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	call	last_component
	mov	qword ptr [rbp - 0x40], rax
	mov	rdi, qword ptr [rbp - 0x40]
	call	base_len
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x28], rax
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x40]
	mov	rdx, qword ptr [rbp - 0x20]
	nop	
	sub	rax, rdx
	mov	rbp, rbp
	add	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x50], rax
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x18]
	call	strlen
	mov	qword ptr [rbp - 8], rax
	mov	byte ptr [rbp - 0x29], 0
	cmp	qword ptr [rbp - 0x28], 0
	je	.label_1001
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x50]
	lea	rsi, [rsi]
	sub	rax, 1
	mov	rcx, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	movsx	edx, byte ptr [rcx + rax]
	lea	rsi, [rsi]
	cmp	edx, 0x2f
	je	.label_999
	mov	rax, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	movsx	ecx, byte ptr [rax]
	mov	rbp, rbp
	cmp	ecx, 0x2f
	je	.label_999
	nop	
	mov	byte ptr [rbp - 0x29], 0x2f
.label_999:
	jmp	.label_997
.label_1001:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x18]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0x2f
	jne	.label_998
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x29], 0x2e
.label_998:
	jmp	.label_997
.label_997:
	nop	
	mov	rax, qword ptr [rbp - 0x50]
	movsx	ecx, byte ptr [rbp - 0x29]
	nop	
	cmp	ecx, 0
	setne	dl
	lea	rdi, [rdi]
	and	dl, 1
	movzx	ecx, dl
	movsxd	rsi, ecx
	add	rax, rsi
	add	rax, qword ptr [rbp - 8]
	add	rax, 1
	lea	rdi, [rdi]
	mov	rdi, rax
	call	malloc
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x10], rax
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0x10], 0
	jne	.label_1002
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x38], 0
	mov	rsp, rsp
	jmp	.label_996
.label_1002:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x50]
	nop	
	call	mempcpy
	mov	qword ptr [rbp - 0x58], rax
	nop	
	mov	cl, byte ptr [rbp - 0x29]
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x58]
	mov	byte ptr [rax], cl
	movsx	r8d, byte ptr [rbp - 0x29]
	nop	
	cmp	r8d, 0
	setne	cl
	and	cl, 1
	movzx	r8d, cl
	nop	
	mov	rax, qword ptr [rbp - 0x58]
	lea	rsi, [rsi]
	movsxd	rdx, r8d
	add	rax, rdx
	mov	qword ptr [rbp - 0x58], rax
	cmp	qword ptr [rbp - 0x48], 0
	nop	
	je	.label_1000
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rbp - 0x48]
	nop	
	mov	qword ptr [rcx], rax
.label_1000:
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x58]
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 8]
	call	mempcpy
	mov	qword ptr [rbp - 0x58], rax
	mov	rax, qword ptr [rbp - 0x58]
	mov	byte ptr [rax], 0
	nop	
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x38], rax
.label_996:
	nop	
	mov	rax, qword ptr [rbp - 0x38]
	add	rsp, 0x60
	mov	rsp, rsp
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x412b90

	.globl full_write
	.type full_write, @function
full_write:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	dword ptr [rbp - 0x1c], edi
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x30], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	qword ptr [rbp - 0x10], 0
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x28], rdx
.label_1004:
	cmp	qword ptr [rbp - 0x18], 0
	jbe	.label_1005
	mov	edi, dword ptr [rbp - 0x1c]
	mov	rsi, qword ptr [rbp - 0x28]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	call	safe_write
	mov	qword ptr [rbp - 8], rax
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 8], -1
	lea	rdi, [rdi]
	jne	.label_1006
	jmp	.label_1005
.label_1006:
	cmp	qword ptr [rbp - 8], 0
	nop	
	jne	.label_1003
	lea	rsi, [rsi]
	call	__errno_location
	mov	dword ptr [rax], 0x1c
	lea	rdi, [rdi]
	jmp	.label_1005
.label_1003:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 8]
	add	rax, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x10], rax
	mov	rax, qword ptr [rbp - 8]
	add	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x28], rax
	mov	rax, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x18]
	sub	rcx, rax
	mov	qword ptr [rbp - 0x18], rcx
	jmp	.label_1004
.label_1005:
	mov	rax, qword ptr [rbp - 0x10]
	add	rsp, 0x30
	nop	
	pop	rbp
	lea	rsi, [rsi]
	ret	
	.section	.text
	.align	32
	#Procedure 0x412c60

	.globl hash_get_n_buckets
	.type hash_get_n_buckets, @function
hash_get_n_buckets:
	push	rbp
	mov	rbp, rsp
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 8], rdi
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rdi + 0x10]
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x412c80

	.globl hash_get_n_buckets_used
	.type hash_get_n_buckets_used, @function
hash_get_n_buckets_used:
	push	rbp
	lea	rsi, [rsi]
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	mov	rbp, rbp
	mov	rax, qword ptr [rdi + 0x18]
	mov	rsp, rsp
	pop	rbp
	mov	rsp, rsp
	ret	
	.section	.text
	.align	32
	#Procedure 0x412ca0

	.globl hash_get_n_entries
	.type hash_get_n_entries, @function
hash_get_n_entries:
	push	rbp
	mov	rbp, rsp
	nop	
	mov	qword ptr [rbp - 8], rdi
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 8]
	mov	rax, qword ptr [rdi + 0x20]
	pop	rbp
	lea	rsi, [rsi]
	ret	
	.section	.text
	.align	32
	#Procedure 0x412cc0

	.globl hash_get_max_bucket_length
	.type hash_get_max_bucket_length, @function
hash_get_max_bucket_length:
	push	rbp
	nop	
	mov	rbp, rsp
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x20], rdi
	nop	
	mov	qword ptr [rbp - 0x18], 0
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rdi, qword ptr [rdi]
	mov	qword ptr [rbp - 0x10], rdi
.label_1012:
	nop	
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	cmp	rax, qword ptr [rcx + 8]
	lea	rsi, [rsi]
	jae	.label_1007
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x10]
	cmp	qword ptr [rax], 0
	je	.label_1009
	nop	
	mov	rax, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	qword ptr [rbp - 8], rax
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x28], 1
.label_1013:
	nop	
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax + 8]
	mov	rsp, rsp
	mov	qword ptr [rbp - 8], rax
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 8], 0
	je	.label_1008
	nop	
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, 1
	mov	qword ptr [rbp - 0x28], rax
	nop	
	jmp	.label_1013
.label_1008:
	mov	rax, qword ptr [rbp - 0x28]
	mov	rbp, rbp
	cmp	rax, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	jbe	.label_1010
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x18], rax
.label_1010:
	jmp	.label_1009
.label_1009:
	mov	rbp, rbp
	jmp	.label_1011
.label_1011:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 0x10
	nop	
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_1012
.label_1007:
	mov	rax, qword ptr [rbp - 0x18]
	pop	rbp
	mov	rbp, rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x412da0
	.globl hash_table_ok
	.type hash_table_ok, @function
hash_table_ok:

	mov	rbp, rbp
	push	rbp
	mov	rbp, rsp
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x10], rdi
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x18], 0
	mov	qword ptr [rbp - 0x28], 0
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	rdi, qword ptr [rdi]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x30], rdi
.label_1014:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x30]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rcx + 8]
	lea	rdi, [rdi]
	jae	.label_1019
	mov	rax, qword ptr [rbp - 0x30]
	cmp	qword ptr [rax], 0
	je	.label_1018
	mov	rax, qword ptr [rbp - 0x30]
	mov	rsp, rsp
	mov	qword ptr [rbp - 8], rax
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 1
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x18], rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	add	rax, 1
	mov	qword ptr [rbp - 0x28], rax
.label_1015:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 8]
	mov	rbp, rbp
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 8], rax
	cmp	qword ptr [rbp - 8], 0
	je	.label_1016
	mov	rax, qword ptr [rbp - 0x28]
	nop	
	add	rax, 1
	mov	qword ptr [rbp - 0x28], rax
	mov	rbp, rbp
	jmp	.label_1015
.label_1016:
	jmp	.label_1018
.label_1018:
	jmp	.label_1021
.label_1021:
	mov	rax, qword ptr [rbp - 0x30]
	lea	rdi, [rdi]
	add	rax, 0x10
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x30], rax
	lea	rdi, [rdi]
	jmp	.label_1014
.label_1019:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rcx + 0x18]
	lea	rdi, [rdi]
	jne	.label_1020
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rcx + 0x20]
	jne	.label_1020
	mov	byte ptr [rbp - 0x19], 1
	jmp	.label_1017
.label_1020:
	mov	byte ptr [rbp - 0x19], 0
.label_1017:
	mov	al, byte ptr [rbp - 0x19]
	and	al, 1
	lea	rdi, [rdi]
	movzx	eax, al
	nop	
	pop	rbp
	lea	rsi, [rsi]
	ret	
	.section	.text
	.align	32
	#Procedure 0x412ed0
	.globl hash_print_statistics
	.type hash_print_statistics, @function
hash_print_statistics:

	lea	rsi, [rsi]
	push	rbp
	mov	rbp, rbp
	mov	rbp, rsp
	lea	rsi, [rsi]
	sub	rsp, 0x50
	nop	
	movabs	rax, OFFSET FLAT:.str.2_5
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x20], rdi
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x38], rsi
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x10], rax
	call	hash_get_n_entries
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x28], rax
	mov	rdi, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	call	hash_get_n_buckets
	mov	qword ptr [rbp - 0x50], rax
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	call	hash_get_n_buckets_used
	mov	qword ptr [rbp - 0x48], rax
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	call	hash_get_max_bucket_length
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x18], rax
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rdx, qword ptr [rbp - 0x28]
	mov	rbp, rbp
	mov	ecx, OFFSET FLAT:.str_13
	mov	rbp, rbp
	mov	esi, ecx
	lea	rsi, [rsi]
	xor	ecx, ecx
	lea	rsi, [rsi]
	mov	r8b, cl
	mov	rsp, rsp
	mov	al, r8b
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x29], r8b
	call	fprintf
	nop	
	mov	rdi, qword ptr [rbp - 0x38]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x50]
	mov	ecx, OFFSET FLAT:.str.1_8
	mov	esi, ecx
	mov	r8b, byte ptr [rbp - 0x29]
	mov	dword ptr [rbp - 0x3c], eax
	mov	al, r8b
	mov	rsp, rsp
	call	fprintf
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rdx, qword ptr [rbp - 0x48]
	lea	rsi, [rsi]
	movq	xmm0, rdx
	nop	
	movaps	xmm1,  xmmword ptr [word ptr [rip + label_1022]]
	punpckldq	xmm0, xmm1
	mov	rbp, rbp
	movapd	xmm2,  xmmword ptr [word ptr [rip + label_1023]]
	subpd	xmm0, xmm2
	pshufd	xmm3, xmm0, 0x4e
	addpd	xmm3, xmm0
	movsd	xmm0,  qword ptr [word ptr [rip + label_1024]]
	mulsd	xmm3, xmm0
	movq	xmm0, qword ptr [rbp - 0x50]
	mov	rsp, rsp
	punpckldq	xmm0, xmm1
	subpd	xmm0, xmm2
	pshufd	xmm1, xmm0, 0x4e
	mov	rbp, rbp
	addpd	xmm1, xmm0
	mov	rbp, rbp
	divsd	xmm3, xmm1
	mov	rsi, qword ptr [rbp - 0x10]
	nop	
	movaps	xmm0, xmm3
	mov	dword ptr [rbp - 8], eax
	lea	rsi, [rsi]
	mov	al, 1
	mov	rbp, rbp
	call	fprintf
	movabs	rsi, OFFSET FLAT:.str.3_4
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	dword ptr [rbp - 4], eax
	mov	al, 0
	mov	rbp, rbp
	call	fprintf
	mov	dword ptr [rbp - 0x30], eax
	add	rsp, 0x50
	nop	
	pop	rbp
	nop	
	ret	
	.section	.text
	.align	32
	#Procedure 0x413050

	.globl hash_lookup
	.type hash_lookup, @function
hash_lookup:
	mov	rsp, rsp
	push	rbp
	mov	rbp, rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x28], rdi
	mov	qword ptr [rbp - 8], rsi
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 8]
	call	safe_hasher
	mov	qword ptr [rbp - 0x20], rax
	mov	rax, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	cmp	qword ptr [rax], 0
	jne	.label_1031
	mov	qword ptr [rbp - 0x18], 0
	nop	
	jmp	.label_1030
.label_1031:
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x10], rax
.label_1029:
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x10], 0
	je	.label_1027
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 8]
	mov	rcx, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rcx]
	je	.label_1025
	mov	rax, qword ptr [rbp - 0x28]
	nop	
	mov	rax, qword ptr [rax + 0x38]
	mov	rdi, qword ptr [rbp - 8]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rcx]
	nop	
	call	rax
	lea	rdi, [rdi]
	test	al, 1
	jne	.label_1025
	mov	rsp, rsp
	jmp	.label_1028
.label_1025:
	nop	
	mov	rax, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_1030
.label_1028:
	nop	
	jmp	.label_1026
.label_1026:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x10]
	nop	
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_1029
.label_1027:
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x18], 0
.label_1030:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	add	rsp, 0x30
	mov	rbp, rbp
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x413140

	.globl safe_hasher
	.type safe_hasher, @function
safe_hasher:
	push	rbp
	mov	rbp, rsp
	mov	rsp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 8], rdi
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x20], rsi
	mov	rsi, qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	rsi, qword ptr [rsi + 0x30]
	mov	rdi, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax + 0x10]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x18], rsi
	nop	
	mov	rsi, rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	call	rax
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x10], rax
	mov	rax, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 8]
	mov	rbp, rbp
	cmp	rax, qword ptr [rsi + 0x10]
	jb	.label_1032
	call	abort
.label_1032:
	nop	
	mov	rax, qword ptr [rbp - 8]
	nop	
	mov	rax, qword ptr [rax]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x10]
	nop	
	shl	rcx, 4
	nop	
	add	rax, rcx
	mov	rbp, rbp
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4131d0
	.globl hash_get_first
	.type hash_get_first, @function
hash_get_first:

	push	rbp
	mov	rbp, rsp
	mov	rbp, rbp
	sub	rsp, 0x20
	nop	
	mov	qword ptr [rbp - 0x10], rdi
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	cmp	qword ptr [rdi + 0x20], 0
	jne	.label_1033
	mov	qword ptr [rbp - 0x18], 0
	jmp	.label_1036
.label_1033:
	mov	rax, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 8], rax
.label_1035:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 8]
	mov	rcx, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rcx + 8]
	mov	rsp, rsp
	jb	.label_1034
	lea	rsi, [rsi]
	call	abort
.label_1034:
	mov	rax, qword ptr [rbp - 8]
	cmp	qword ptr [rax], 0
	lea	rdi, [rdi]
	je	.label_1037
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 8]
	nop	
	mov	rax, qword ptr [rax]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_1036
.label_1037:
	jmp	.label_1038
.label_1038:
	nop	
	jmp	.label_1039
.label_1039:
	mov	rax, qword ptr [rbp - 8]
	add	rax, 0x10
	nop	
	mov	qword ptr [rbp - 8], rax
	jmp	.label_1035
.label_1036:
	mov	rax, qword ptr [rbp - 0x18]
	add	rsp, 0x20
	pop	rbp
	lea	rdi, [rdi]
	ret	
	.section	.text
	.align	32
	#Procedure 0x413290
	.globl hash_get_next
	.type hash_get_next, @function
hash_get_next:

	mov	rsp, rsp
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	qword ptr [rbp - 0x18], rdi
	mov	qword ptr [rbp - 0x20], rsi
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x20]
	call	safe_hasher
	mov	qword ptr [rbp - 0x10], rax
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x10]
	nop	
	mov	qword ptr [rbp - 8], rax
.label_1043:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 8]
	nop	
	mov	rax, qword ptr [rax]
	nop	
	cmp	rax, qword ptr [rbp - 0x20]
	jne	.label_1041
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 8]
	cmp	qword ptr [rax + 8], 0
	je	.label_1041
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax + 8]
	mov	rbp, rbp
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0x28], rax
	jmp	.label_1045
.label_1041:
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax + 8]
	mov	rbp, rbp
	mov	qword ptr [rbp - 8], rax
	cmp	qword ptr [rbp - 8], 0
	mov	rbp, rbp
	jne	.label_1043
	jmp	.label_1040
.label_1040:
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 0x10
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x10], rax
	mov	rcx, qword ptr [rbp - 0x18]
	cmp	rax, qword ptr [rcx + 8]
	jae	.label_1044
	mov	rax, qword ptr [rbp - 0x10]
	nop	
	cmp	qword ptr [rax], 0
	lea	rdi, [rdi]
	je	.label_1042
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0x28], rax
	mov	rbp, rbp
	jmp	.label_1045
.label_1042:
	jmp	.label_1040
.label_1044:
	mov	qword ptr [rbp - 0x28], 0
.label_1045:
	mov	rax, qword ptr [rbp - 0x28]
	mov	rbp, rbp
	add	rsp, 0x30
	mov	rsp, rsp
	pop	rbp
	mov	rbp, rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x413390
	.globl hash_get_entries
	.type hash_get_entries, @function
hash_get_entries:

	nop
	push	rbp
	mov	rbp, rsp
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x28], rdi
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x30], rsi
	mov	qword ptr [rbp - 0x10], rdx
	nop	
	mov	qword ptr [rbp - 0x18], 0
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rdx]
	mov	qword ptr [rbp - 8], rdx
.label_1053:
	mov	rax, qword ptr [rbp - 8]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x28]
	mov	rbp, rbp
	cmp	rax, qword ptr [rcx + 8]
	mov	rsp, rsp
	jae	.label_1046
	mov	rax, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	cmp	qword ptr [rax], 0
	nop	
	je	.label_1048
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x20], rax
.label_1047:
	cmp	qword ptr [rbp - 0x20], 0
	nop	
	je	.label_1050
	mov	rax, qword ptr [rbp - 0x18]
	cmp	rax, qword ptr [rbp - 0x10]
	jb	.label_1049
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x38], rax
	jmp	.label_1052
.label_1049:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x20]
	mov	rax, qword ptr [rax]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	mov	rdx, rcx
	add	rdx, 1
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x18], rdx
	mov	rdx, qword ptr [rbp - 0x30]
	lea	rsi, [rsi]
	mov	qword ptr [rdx + rcx*8], rax
	mov	rax, qword ptr [rbp - 0x20]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x20], rax
	lea	rsi, [rsi]
	jmp	.label_1047
.label_1050:
	lea	rsi, [rsi]
	jmp	.label_1048
.label_1048:
	jmp	.label_1051
.label_1051:
	mov	rax, qword ptr [rbp - 8]
	nop	
	add	rax, 0x10
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 8], rax
	nop	
	jmp	.label_1053
.label_1046:
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x38], rax
.label_1052:
	mov	rax, qword ptr [rbp - 0x38]
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4134a0
	.globl hash_do_for_each
	.type hash_do_for_each, @function
hash_do_for_each:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x40
	mov	qword ptr [rbp - 8], rdi
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x28], rsi
	mov	qword ptr [rbp - 0x30], rdx
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x18], 0
	mov	rdx, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rdx]
	mov	qword ptr [rbp - 0x38], rdx
.label_1059:
	mov	rax, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rbp - 8]
	cmp	rax, qword ptr [rcx + 8]
	mov	rsp, rsp
	jae	.label_1058
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x38]
	nop	
	cmp	qword ptr [rax], 0
	lea	rsi, [rsi]
	je	.label_1055
	mov	rax, qword ptr [rbp - 0x38]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x20], rax
.label_1057:
	cmp	qword ptr [rbp - 0x20], 0
	je	.label_1061
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rcx]
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x30]
	call	rax
	mov	rsp, rsp
	test	al, 1
	mov	rsp, rsp
	jne	.label_1056
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_1060
.label_1056:
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 1
	mov	qword ptr [rbp - 0x18], rax
	mov	rax, qword ptr [rbp - 0x20]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x20], rax
	jmp	.label_1057
.label_1061:
	mov	rbp, rbp
	jmp	.label_1055
.label_1055:
	nop	
	jmp	.label_1054
.label_1054:
	nop	
	mov	rax, qword ptr [rbp - 0x38]
	add	rax, 0x10
	nop	
	mov	qword ptr [rbp - 0x38], rax
	jmp	.label_1059
.label_1058:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x10], rax
.label_1060:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	add	rsp, 0x40
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4135b0
	.globl hash_string
	.type hash_string, @function
hash_string:

	nop
	push	rbp
	nop	
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], 0
.label_1062:
	nop	
	mov	rax, qword ptr [rbp - 8]
	mov	cl, byte ptr [rax]
	nop	
	mov	byte ptr [rbp - 0x19], cl
	cmp	cl, 0
	nop	
	je	.label_1063
	imul	rax, qword ptr [rbp - 0x18], 0x1f
	lea	rsi, [rsi]
	movzx	ecx, byte ptr [rbp - 0x19]
	mov	edx, ecx
	add	rax, rdx
	xor	ecx, ecx
	mov	edx, ecx
	div	qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x18], rdx
	mov	rax, qword ptr [rbp - 8]
	mov	rbp, rbp
	add	rax, 1
	mov	qword ptr [rbp - 8], rax
	jmp	.label_1062
.label_1063:
	mov	rax, qword ptr [rbp - 0x18]
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x413620
	.globl hash_reset_tuning
	.type hash_reset_tuning, @function
hash_reset_tuning:

	nop
	push	rbp
	mov	rbp, rsp
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	rax,  qword ptr [word ptr [default_tuning]]
	lea	rdi, [rdi]
	mov	qword ptr [rdi], rax
	mov	rsp, rsp
	mov	rax,  qword ptr [word ptr [label_1064]]
	mov	qword ptr [rdi + 8], rax
	lea	rsi, [rsi]
	mov	ecx,  dword ptr [dword ptr [label_1065]]
	lea	rsi, [rsi]
	mov	dword ptr [rdi + 0x10], ecx
	pop	rbp
	lea	rsi, [rsi]
	ret	
	.section	.text
	.align	32
	#Procedure 0x413670

	.globl hash_initialize
	.type hash_initialize, @function
hash_initialize:
	push	rbp
	mov	rbp, rsp
	nop	
	sub	rsp, 0x40
	mov	qword ptr [rbp - 0x20], rdi
	nop	
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x30], rdx
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x28], rcx
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 8], r8
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0x30], 0
	jne	.label_1072
	lea	rdi, [rdi]
	movabs	rax, OFFSET FLAT:raw_hasher
	mov	qword ptr [rbp - 0x30], rax
.label_1072:
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x28], 0
	jne	.label_1074
	mov	rsp, rsp
	movabs	rax, OFFSET FLAT:raw_comparator
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x28], rax
.label_1074:
	mov	eax, 0x50
	mov	rsp, rsp
	mov	edi, eax
	mov	rsp, rsp
	call	malloc
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x38], rax
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x38], 0
	jne	.label_1071
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x18], 0
	jmp	.label_1067
.label_1071:
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x10], 0
	jne	.label_1069
	movabs	rax, OFFSET FLAT:default_tuning
	mov	qword ptr [rbp - 0x10], rax
.label_1069:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x38]
	mov	qword ptr [rcx + 0x28], rax
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x38]
	call	check_tuning
	test	al, 1
	mov	rbp, rbp
	jne	.label_1066
	jmp	.label_1068
.label_1066:
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rsi, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	call	compute_bucket_size
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x38]
	mov	qword ptr [rsi + 0x10], rax
	mov	rax, qword ptr [rbp - 0x38]
	cmp	qword ptr [rax + 0x10], 0
	lea	rdi, [rdi]
	jne	.label_1070
	mov	rsp, rsp
	jmp	.label_1068
.label_1070:
	lea	rdi, [rdi]
	mov	eax, 0x10
	mov	esi, eax
	mov	rcx, qword ptr [rbp - 0x38]
	mov	rsp, rsp
	mov	rdi, qword ptr [rcx + 0x10]
	mov	rsp, rsp
	call	calloc
	mov	rcx, qword ptr [rbp - 0x38]
	mov	qword ptr [rcx], rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x38]
	cmp	qword ptr [rax], 0
	nop	
	jne	.label_1073
	jmp	.label_1068
.label_1073:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x38]
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rcx + 0x10]
	mov	rsp, rsp
	shl	rcx, 4
	add	rax, rcx
	mov	rcx, qword ptr [rbp - 0x38]
	lea	rdi, [rdi]
	mov	qword ptr [rcx + 8], rax
	mov	rax, qword ptr [rbp - 0x38]
	mov	qword ptr [rax + 0x18], 0
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x38]
	mov	rbp, rbp
	mov	qword ptr [rax + 0x20], 0
	mov	rax, qword ptr [rbp - 0x30]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x38]
	mov	qword ptr [rcx + 0x30], rax
	mov	rax, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x38]
	mov	qword ptr [rcx + 0x38], rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 8]
	nop	
	mov	rcx, qword ptr [rbp - 0x38]
	mov	qword ptr [rcx + 0x40], rax
	mov	rax, qword ptr [rbp - 0x38]
	mov	qword ptr [rax + 0x48], 0
	mov	rax, qword ptr [rbp - 0x38]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x18], rax
	mov	rbp, rbp
	jmp	.label_1067
.label_1068:
	mov	rax, qword ptr [rbp - 0x38]
	mov	rbp, rbp
	mov	rdi, rax
	call	free
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x18], 0
.label_1067:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	add	rsp, 0x40
	lea	rdi, [rdi]
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x413890

	.globl raw_hasher
	.type raw_hasher, @function
raw_hasher:
	push	rbp
	mov	rbp, rbp
	mov	rbp, rsp
	mov	rsp, rsp
	sub	rsp, 0x20
	mov	rsp, rsp
	mov	eax, 3
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rdi, qword ptr [rbp - 8]
	mov	rbp, rbp
	mov	esi, eax
	call	rotr_sz
	mov	qword ptr [rbp - 0x18], rax
	mov	rax, qword ptr [rbp - 0x18]
	xor	esi, esi
	mov	edx, esi
	div	qword ptr [rbp - 0x10]
	mov	rax, rdx
	add	rsp, 0x20
	mov	rbp, rbp
	pop	rbp
	mov	rbp, rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4138e0

	.globl raw_comparator
	.type raw_comparator, @function
raw_comparator:
	lea	rsi, [rsi]
	push	rbp
	mov	rbp, rsp
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 8], rsi
	mov	rsi, qword ptr [rbp - 0x10]
	cmp	rsi, qword ptr [rbp - 8]
	mov	rbp, rbp
	sete	al
	nop	
	and	al, 1
	mov	rbp, rbp
	movzx	eax, al
	pop	rbp
	mov	rsp, rsp
	ret	
	.section	.text
	.align	32
	#Procedure 0x413910

	.globl check_tuning
	.type check_tuning, @function
check_tuning:
	push	rbp
	nop	
	mov	rbp, rsp
	movabs	rax, OFFSET FLAT:default_tuning
	mov	qword ptr [rbp - 0x10], rdi
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rdi + 0x28]
	mov	qword ptr [rbp - 0x18], rdi
	nop	
	cmp	qword ptr [rbp - 0x18], rax
	jne	.label_1078
	mov	byte ptr [rbp - 1], 1
	jmp	.label_1075
.label_1078:
	movss	xmm0,  dword ptr [dword ptr [label_1076]]
	movss	dword ptr [rbp - 0x1c], xmm0
	movss	xmm0, dword ptr [rbp - 0x1c]
	mov	rax, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	movss	xmm1, dword ptr [rax + 8]
	ucomiss	xmm1, xmm0
	jbe	.label_1077
	mov	rsp, rsp
	movss	xmm0,  dword ptr [dword ptr [label_1079]]
	mov	rax, qword ptr [rbp - 0x18]
	movss	xmm1, dword ptr [rax + 8]
	mov	rsp, rsp
	subss	xmm0, dword ptr [rbp - 0x1c]
	ucomiss	xmm0, xmm1
	jbe	.label_1077
	nop	
	movss	xmm0,  dword ptr [dword ptr [label_1079]]
	addss	xmm0, dword ptr [rbp - 0x1c]
	mov	rax, qword ptr [rbp - 0x18]
	movss	xmm1, dword ptr [rax + 0xc]
	ucomiss	xmm1, xmm0
	lea	rsi, [rsi]
	jbe	.label_1077
	xorps	xmm0, xmm0
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x18]
	movss	xmm1, dword ptr [rax]
	mov	rsp, rsp
	ucomiss	xmm1, xmm0
	jb	.label_1077
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	movss	xmm0, dword ptr [rax]
	addss	xmm0, dword ptr [rbp - 0x1c]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x18]
	movss	xmm1, dword ptr [rax + 4]
	ucomiss	xmm1, xmm0
	jbe	.label_1077
	mov	rsp, rsp
	movss	xmm0,  dword ptr [dword ptr [label_1079]]
	mov	rax, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	ucomiss	xmm0, dword ptr [rax + 4]
	jb	.label_1077
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x18]
	movss	xmm0, dword ptr [rax]
	lea	rsi, [rsi]
	addss	xmm0, dword ptr [rbp - 0x1c]
	mov	rax, qword ptr [rbp - 0x18]
	movss	xmm1, dword ptr [rax + 8]
	lea	rdi, [rdi]
	ucomiss	xmm1, xmm0
	mov	rbp, rbp
	jbe	.label_1077
	mov	byte ptr [rbp - 1], 1
	jmp	.label_1075
.label_1077:
	nop	
	movabs	rax, OFFSET FLAT:default_tuning
	mov	rcx, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	qword ptr [rcx + 0x28], rax
	mov	byte ptr [rbp - 1], 0
.label_1075:
	mov	al, byte ptr [rbp - 1]
	lea	rdi, [rdi]
	and	al, 1
	movzx	eax, al
	mov	rsp, rsp
	pop	rbp
	nop	
	ret	
	.section	.text
	.align	32
	#Procedure 0x413a80

	.globl compute_bucket_size
	.type compute_bucket_size, @function
compute_bucket_size:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	nop	
	mov	qword ptr [rbp - 8], rdi
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x30], rsi
	mov	rsi, qword ptr [rbp - 0x30]
	mov	rsp, rsp
	test	byte ptr [rsi + 0x10], 1
	mov	rbp, rbp
	jne	.label_1080
	lea	rsi, [rsi]
	movss	xmm0,  dword ptr [dword ptr [label_1081]]
	mov	rax, qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	rcx, rax
	shr	rcx, 1
	mov	edx, eax
	nop	
	and	edx, 1
	nop	
	mov	esi, edx
	or	rsi, rcx
	mov	rsp, rsp
	cvtsi2ss	xmm1, rsi
	mov	rsp, rsp
	addss	xmm1, xmm1
	mov	rsp, rsp
	cvtsi2ss	xmm2, rax
	mov	rsp, rsp
	test	rax, rax
	movss	dword ptr [rbp - 0x24], xmm0
	movss	dword ptr [rbp - 0xc], xmm2
	lea	rdi, [rdi]
	movss	dword ptr [rbp - 0x10], xmm1
	mov	rbp, rbp
	js	.label_1082
	movss	xmm0, dword ptr [rbp - 0xc]
	movss	dword ptr [rbp - 0x10], xmm0
.label_1082:
	mov	rbp, rbp
	movss	xmm0, dword ptr [rbp - 0x10]
	mov	rax, qword ptr [rbp - 0x30]
	divss	xmm0, dword ptr [rax + 8]
	movss	dword ptr [rbp - 0x14], xmm0
	movss	xmm0, dword ptr [rbp - 0x14]
	movss	xmm1, dword ptr [rbp - 0x24]
	lea	rsi, [rsi]
	ucomiss	xmm0, xmm1
	lea	rdi, [rdi]
	jb	.label_1086
	mov	qword ptr [rbp - 0x20], 0
	jmp	.label_1084
.label_1086:
	nop	
	movss	xmm0, dword ptr [rbp - 0x14]
	nop	
	movss	xmm1,  dword ptr [dword ptr [rip + label_1085]]
	nop	
	movaps	xmm2, xmm0
	subss	xmm2, xmm1
	lea	rdi, [rdi]
	cvttss2si	rax, xmm2
	lea	rdi, [rdi]
	movabs	rcx, 0x8000000000000000
	mov	rbp, rbp
	xor	rax, rcx
	cvttss2si	rcx, xmm0
	mov	rbp, rbp
	ucomiss	xmm1, xmm0
	cmova	rax, rcx
	mov	qword ptr [rbp - 8], rax
.label_1080:
	mov	rdi, qword ptr [rbp - 8]
	call	next_prime
	lea	rsi, [rsi]
	movabs	rdi, 0xfffffffffffffff
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 8], rax
	cmp	rdi, qword ptr [rbp - 8]
	mov	rsp, rsp
	jae	.label_1083
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x20], 0
	jmp	.label_1084
.label_1083:
	nop	
	mov	rax, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x20], rax
.label_1084:
	mov	rax, qword ptr [rbp - 0x20]
	add	rsp, 0x30
	lea	rsi, [rsi]
	pop	rbp
	lea	rsi, [rsi]
	ret	
	.section	.text
	.align	32
	#Procedure 0x413bf0
	.globl hash_clear
	.type hash_clear, @function
hash_clear:

	mov	rsp, rsp
	push	rbp
	mov	rsp, rsp
	mov	rbp, rsp
	mov	rsp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 0x20], rdi
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	mov	rdi, qword ptr [rdi]
	mov	qword ptr [rbp - 0x18], rdi
.label_1093:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x20]
	cmp	rax, qword ptr [rcx + 8]
	lea	rdi, [rdi]
	jae	.label_1092
	nop	
	mov	rax, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	cmp	qword ptr [rax], 0
	lea	rsi, [rsi]
	je	.label_1089
	mov	rax, qword ptr [rbp - 0x18]
	nop	
	mov	rax, qword ptr [rax + 8]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 8], rax
.label_1087:
	cmp	qword ptr [rbp - 8], 0
	nop	
	je	.label_1090
	mov	rax, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	cmp	qword ptr [rax + 0x40], 0
	lea	rdi, [rdi]
	je	.label_1094
	nop	
	mov	rax, qword ptr [rbp - 0x20]
	mov	rax, qword ptr [rax + 0x40]
	mov	rcx, qword ptr [rbp - 8]
	nop	
	mov	rdi, qword ptr [rcx]
	call	rax
.label_1094:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rax], 0
	mov	rax, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax + 8]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x10], rax
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x20]
	mov	rax, qword ptr [rax + 0x48]
	mov	rcx, qword ptr [rbp - 8]
	mov	qword ptr [rcx + 8], rax
	mov	rax, qword ptr [rbp - 8]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	qword ptr [rcx + 0x48], rax
	mov	rax, qword ptr [rbp - 0x10]
	nop	
	mov	qword ptr [rbp - 8], rax
	jmp	.label_1087
.label_1090:
	mov	rax, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	cmp	qword ptr [rax + 0x40], 0
	je	.label_1091
	mov	rax, qword ptr [rbp - 0x20]
	mov	rax, qword ptr [rax + 0x40]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rdi, qword ptr [rcx]
	nop	
	call	rax
.label_1091:
	mov	rax, qword ptr [rbp - 0x18]
	nop	
	mov	qword ptr [rax], 0
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rax + 8], 0
.label_1089:
	jmp	.label_1088
.label_1088:
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 0x10
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_1093
.label_1092:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	mov	qword ptr [rax + 0x18], 0
	nop	
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rax + 0x20], 0
	add	rsp, 0x20
	pop	rbp
	mov	rbp, rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x413d60

	.globl hash_free
	.type hash_free, @function
hash_free:
	mov	rbp, rbp
	push	rbp
	lea	rsi, [rsi]
	mov	rbp, rsp
	mov	rsp, rsp
	sub	rsp, 0x20
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x10], rdi
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x10]
	cmp	qword ptr [rdi + 0x40], 0
	lea	rdi, [rdi]
	je	.label_1096
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x10]
	cmp	qword ptr [rax + 0x20], 0
	lea	rsi, [rsi]
	je	.label_1096
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	rax, qword ptr [rax]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x18], rax
.label_1103:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rcx + 8]
	mov	rbp, rbp
	jae	.label_1107
	mov	rax, qword ptr [rbp - 0x18]
	cmp	qword ptr [rax], 0
	mov	rbp, rbp
	je	.label_1095
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x20], rax
.label_1099:
	cmp	qword ptr [rbp - 0x20], 0
	je	.label_1101
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x40]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rdi, qword ptr [rcx]
	call	rax
	mov	rax, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	mov	rax, qword ptr [rax + 8]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x20], rax
	mov	rbp, rbp
	jmp	.label_1099
.label_1101:
	jmp	.label_1095
.label_1095:
	jmp	.label_1105
.label_1105:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 0x10
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_1103
.label_1107:
	jmp	.label_1096
.label_1096:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0x18], rax
.label_1106:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	cmp	rax, qword ptr [rcx + 8]
	jae	.label_1097
	mov	rax, qword ptr [rbp - 0x18]
	nop	
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x20], rax
.label_1104:
	nop	
	cmp	qword ptr [rbp - 0x20], 0
	lea	rsi, [rsi]
	je	.label_1098
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	mov	rax, qword ptr [rax + 8]
	mov	rbp, rbp
	mov	qword ptr [rbp - 8], rax
	mov	rax, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	mov	rdi, rax
	call	free
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x20], rax
	jmp	.label_1104
.label_1098:
	jmp	.label_1108
.label_1108:
	mov	rax, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	add	rax, 0x10
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_1106
.label_1097:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax + 0x48]
	nop	
	mov	qword ptr [rbp - 0x20], rax
.label_1100:
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x20], 0
	je	.label_1102
	mov	rax, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 8], rax
	mov	rax, qword ptr [rbp - 0x20]
	mov	rdi, rax
	call	free
	mov	rax, qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x20], rax
	jmp	.label_1100
.label_1102:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax]
	mov	rdi, rax
	lea	rsi, [rsi]
	call	free
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	rdi, rax
	call	free
	add	rsp, 0x20
	mov	rbp, rbp
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x413f50

	.globl hash_rehash
	.type hash_rehash, @function
hash_rehash:
	nop	
	push	rbp
	mov	rbp, rbp
	mov	rbp, rsp
	lea	rdi, [rdi]
	sub	rsp, 0x80
	mov	qword ptr [rbp - 0x60], rdi
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x68], rsi
	mov	rdi, qword ptr [rbp - 0x68]
	mov	rsi, qword ptr [rbp - 0x60]
	mov	rsp, rsp
	mov	rsi, qword ptr [rsi + 0x28]
	mov	rsp, rsp
	call	compute_bucket_size
	mov	qword ptr [rbp - 0x58], rax
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0x58], 0
	nop	
	jne	.label_1109
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x71], 0
	jmp	.label_1110
.label_1109:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x58]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rcx + 0x10]
	jne	.label_1112
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x71], 1
	mov	rbp, rbp
	jmp	.label_1110
.label_1112:
	nop	
	mov	eax, 0x10
	mov	esi, eax
	mov	rsp, rsp
	lea	rcx, [rbp - 0x50]
	mov	qword ptr [rbp - 0x70], rcx
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x58]
	call	calloc
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x70]
	lea	rsi, [rsi]
	mov	qword ptr [rcx], rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x70]
	mov	rbp, rbp
	cmp	qword ptr [rax], 0
	mov	rbp, rbp
	jne	.label_1114
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x71], 0
	mov	rsp, rsp
	jmp	.label_1110
.label_1114:
	mov	rbp, rbp
	xor	edx, edx
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rbp - 0x70]
	mov	qword ptr [rcx + 0x10], rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x70]
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x58]
	shl	rcx, 4
	mov	rbp, rbp
	add	rax, rcx
	nop	
	mov	rcx, qword ptr [rbp - 0x70]
	lea	rsi, [rsi]
	mov	qword ptr [rcx + 8], rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x70]
	nop	
	mov	qword ptr [rax + 0x18], 0
	mov	rax, qword ptr [rbp - 0x70]
	nop	
	mov	qword ptr [rax + 0x20], 0
	mov	rax, qword ptr [rbp - 0x60]
	mov	rax, qword ptr [rax + 0x28]
	mov	rcx, qword ptr [rbp - 0x70]
	nop	
	mov	qword ptr [rcx + 0x28], rax
	mov	rax, qword ptr [rbp - 0x60]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax + 0x30]
	mov	rcx, qword ptr [rbp - 0x70]
	mov	rsp, rsp
	mov	qword ptr [rcx + 0x30], rax
	nop	
	mov	rax, qword ptr [rbp - 0x60]
	mov	rax, qword ptr [rax + 0x38]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x70]
	mov	qword ptr [rcx + 0x38], rax
	nop	
	mov	rax, qword ptr [rbp - 0x60]
	mov	rax, qword ptr [rax + 0x40]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x70]
	lea	rsi, [rsi]
	mov	qword ptr [rcx + 0x40], rax
	mov	rax, qword ptr [rbp - 0x60]
	mov	rbp, rbp
	mov	rax, qword ptr [rax + 0x48]
	mov	rcx, qword ptr [rbp - 0x70]
	nop	
	mov	qword ptr [rcx + 0x48], rax
	mov	rdi, qword ptr [rbp - 0x70]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x60]
	call	transfer_entries
	test	al, 1
	mov	rbp, rbp
	jne	.label_1113
	lea	rsi, [rsi]
	jmp	.label_1117
.label_1113:
	mov	rax, qword ptr [rbp - 0x60]
	mov	rsp, rsp
	mov	rax, qword ptr [rax]
	mov	rdi, rax
	mov	rbp, rbp
	call	free
	nop	
	mov	rax, qword ptr [rbp - 0x70]
	mov	rax, qword ptr [rax]
	mov	rdi, qword ptr [rbp - 0x60]
	mov	qword ptr [rdi], rax
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x70]
	mov	rax, qword ptr [rax + 8]
	mov	rdi, qword ptr [rbp - 0x60]
	mov	qword ptr [rdi + 8], rax
	nop	
	mov	rax, qword ptr [rbp - 0x70]
	mov	rax, qword ptr [rax + 0x10]
	mov	rdi, qword ptr [rbp - 0x60]
	mov	qword ptr [rdi + 0x10], rax
	mov	rax, qword ptr [rbp - 0x70]
	mov	rax, qword ptr [rax + 0x18]
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x60]
	mov	rbp, rbp
	mov	qword ptr [rdi + 0x18], rax
	mov	rax, qword ptr [rbp - 0x70]
	mov	rbp, rbp
	mov	rax, qword ptr [rax + 0x48]
	mov	rdi, qword ptr [rbp - 0x60]
	mov	qword ptr [rdi + 0x48], rax
	mov	byte ptr [rbp - 0x71], 1
	jmp	.label_1110
.label_1117:
	mov	rsp, rsp
	mov	edx, 1
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x70]
	nop	
	mov	rax, qword ptr [rax + 0x48]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x60]
	lea	rsi, [rsi]
	mov	qword ptr [rcx + 0x48], rax
	mov	rdi, qword ptr [rbp - 0x60]
	nop	
	mov	rsi, qword ptr [rbp - 0x70]
	lea	rsi, [rsi]
	call	transfer_entries
	test	al, 1
	jne	.label_1115
	mov	rbp, rbp
	jmp	.label_1116
.label_1115:
	lea	rdi, [rdi]
	xor	edx, edx
	mov	rdi, qword ptr [rbp - 0x60]
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x70]
	mov	rbp, rbp
	call	transfer_entries
	nop	
	test	al, 1
	jne	.label_1111
.label_1116:
	call	abort
.label_1111:
	mov	rax, qword ptr [rbp - 0x70]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax]
	mov	rdi, rax
	call	free
	nop	
	mov	byte ptr [rbp - 0x71], 0
.label_1110:
	lea	rdi, [rdi]
	mov	al, byte ptr [rbp - 0x71]
	and	al, 1
	mov	rbp, rbp
	movzx	eax, al
	mov	rsp, rsp
	add	rsp, 0x80
	lea	rdi, [rdi]
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x414220

	.globl transfer_entries
	.type transfer_entries, @function
transfer_entries:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x50
	mov	al, dl
	mov	qword ptr [rbp - 0x50], rdi
	mov	qword ptr [rbp - 0x40], rsi
	lea	rdi, [rdi]
	and	al, 1
	mov	rbp, rbp
	mov	byte ptr [rbp - 1], al
	mov	rsi, qword ptr [rbp - 0x40]
	mov	rbp, rbp
	mov	rsi, qword ptr [rsi]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x48], rsi
.label_1129:
	nop	
	mov	rax, qword ptr [rbp - 0x48]
	nop	
	mov	rcx, qword ptr [rbp - 0x40]
	nop	
	cmp	rax, qword ptr [rcx + 8]
	jae	.label_1120
	nop	
	mov	rax, qword ptr [rbp - 0x48]
	mov	rbp, rbp
	cmp	qword ptr [rax], 0
	lea	rdi, [rdi]
	je	.label_1127
	mov	rax, qword ptr [rbp - 0x48]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax + 8]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x38], rax
.label_1123:
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x38], 0
	je	.label_1119
	nop	
	mov	rax, qword ptr [rbp - 0x38]
	mov	rsp, rsp
	mov	rax, qword ptr [rax]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x10], rax
	mov	rdi, qword ptr [rbp - 0x50]
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x10]
	call	safe_hasher
	nop	
	mov	qword ptr [rbp - 0x28], rax
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x38]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x30], rax
	mov	rax, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	cmp	qword ptr [rax], 0
	nop	
	je	.label_1131
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x28]
	mov	rax, qword ptr [rax + 8]
	mov	rcx, qword ptr [rbp - 0x38]
	nop	
	mov	qword ptr [rcx + 8], rax
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rbp - 0x28]
	nop	
	mov	qword ptr [rcx + 8], rax
	jmp	.label_1122
.label_1131:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x28]
	mov	qword ptr [rcx], rax
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x50]
	mov	rsp, rsp
	mov	rcx, qword ptr [rax + 0x18]
	mov	rsp, rsp
	add	rcx, 1
	mov	rsp, rsp
	mov	qword ptr [rax + 0x18], rcx
	mov	rdi, qword ptr [rbp - 0x50]
	mov	rsi, qword ptr [rbp - 0x38]
	mov	rbp, rbp
	call	free_entry
.label_1122:
	mov	rbp, rbp
	jmp	.label_1118
.label_1118:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x30]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x38], rax
	jmp	.label_1123
.label_1119:
	mov	rax, qword ptr [rbp - 0x48]
	nop	
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0x10], rax
	mov	rax, qword ptr [rbp - 0x48]
	nop	
	mov	qword ptr [rax + 8], 0
	test	byte ptr [rbp - 1], 1
	mov	rbp, rbp
	je	.label_1126
	jmp	.label_1128
.label_1126:
	mov	rdi, qword ptr [rbp - 0x50]
	nop	
	mov	rsi, qword ptr [rbp - 0x10]
	nop	
	call	safe_hasher
	nop	
	mov	qword ptr [rbp - 0x28], rax
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x28]
	cmp	qword ptr [rax], 0
	nop	
	je	.label_1124
	mov	rdi, qword ptr [rbp - 0x50]
	lea	rdi, [rdi]
	call	allocate_entry
	mov	qword ptr [rbp - 0x18], rax
	nop	
	cmp	qword ptr [rbp - 0x18], 0
	mov	rbp, rbp
	jne	.label_1130
	mov	byte ptr [rbp - 0x19], 0
	mov	rbp, rbp
	jmp	.label_1121
.label_1130:
	nop	
	mov	rax, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	mov	qword ptr [rcx], rax
	mov	rax, qword ptr [rbp - 0x28]
	mov	rax, qword ptr [rax + 8]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	mov	qword ptr [rcx + 8], rax
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x28]
	nop	
	mov	qword ptr [rcx + 8], rax
	mov	rbp, rbp
	jmp	.label_1125
.label_1124:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	qword ptr [rcx], rax
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rax + 0x18]
	lea	rsi, [rsi]
	add	rcx, 1
	mov	qword ptr [rax + 0x18], rcx
.label_1125:
	mov	rax, qword ptr [rbp - 0x48]
	mov	rbp, rbp
	mov	qword ptr [rax], 0
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x40]
	mov	rcx, qword ptr [rax + 0x18]
	lea	rsi, [rsi]
	add	rcx, -1
	mov	rbp, rbp
	mov	qword ptr [rax + 0x18], rcx
.label_1127:
	jmp	.label_1128
.label_1128:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x48]
	mov	rbp, rbp
	add	rax, 0x10
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x48], rax
	lea	rsi, [rsi]
	jmp	.label_1129
.label_1120:
	mov	byte ptr [rbp - 0x19], 1
.label_1121:
	mov	al, byte ptr [rbp - 0x19]
	lea	rsi, [rsi]
	and	al, 1
	mov	rsp, rsp
	movzx	eax, al
	mov	rbp, rbp
	add	rsp, 0x50
	pop	rbp
	nop	
	ret	
	.section	.text
	.align	32
	#Procedure 0x4144b0

	.globl hash_insert_if_absent
	.type hash_insert_if_absent, @function
hash_insert_if_absent:
	mov	rbp, rbp
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0xc0
	mov	qword ptr [rbp - 0xa0], rdi
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x98], rsi
	mov	qword ptr [rbp - 0x10], rdx
	cmp	qword ptr [rbp - 0x98], 0
	jne	.label_1145
	lea	rsi, [rsi]
	call	abort
.label_1145:
	mov	rbp, rbp
	lea	rdx, [rbp - 0x68]
	xor	ecx, ecx
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0xa0]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x98]
	mov	rsp, rsp
	call	hash_find_entry
	nop	
	mov	qword ptr [rbp - 0x78], rax
	mov	rsp, rsp
	cmp	rax, 0
	mov	rsp, rsp
	je	.label_1138
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x10], 0
	je	.label_1142
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x78]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rcx], rax
.label_1142:
	nop	
	mov	dword ptr [rbp - 4], 0
	jmp	.label_1134
.label_1138:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0xa0]
	mov	rcx, qword ptr [rax + 0x10]
	mov	rdx, qword ptr [rax + 0x18]
	nop	
	mov	rsi, rdx
	shr	rsi, 1
	lea	rdi, [rdi]
	mov	edi, edx
	and	edi, 1
	lea	rdi, [rdi]
	mov	r8d, edi
	or	r8, rsi
	cvtsi2ss	xmm0, r8
	addss	xmm0, xmm0
	mov	rsp, rsp
	cvtsi2ss	xmm1, rdx
	lea	rsi, [rsi]
	test	rdx, rdx
	mov	qword ptr [rbp - 0x38], rax
	mov	qword ptr [rbp - 0x80], rcx
	movss	dword ptr [rbp - 0x88], xmm1
	mov	rsp, rsp
	movss	dword ptr [rbp - 0xa8], xmm0
	js	.label_1139
	movss	xmm0, dword ptr [rbp - 0x88]
	movss	dword ptr [rbp - 0xa8], xmm0
.label_1139:
	mov	rsp, rsp
	movss	xmm0, dword ptr [rbp - 0xa8]
	mov	rax, qword ptr [rbp - 0x38]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rax + 0x28]
	movss	xmm1, dword ptr [rcx + 8]
	mov	rcx, qword ptr [rbp - 0x80]
	shr	rcx, 1
	nop	
	mov	rdx, qword ptr [rbp - 0x80]
	mov	rbp, rbp
	mov	esi, edx
	and	esi, 1
	lea	rdi, [rdi]
	mov	edi, esi
	mov	rsp, rsp
	or	rdi, rcx
	mov	rbp, rbp
	cvtsi2ss	xmm2, rdi
	lea	rdi, [rdi]
	addss	xmm2, xmm2
	cvtsi2ss	xmm3, rdx
	test	rdx, rdx
	lea	rsi, [rsi]
	movss	dword ptr [rbp - 0x60], xmm0
	mov	rsp, rsp
	movss	dword ptr [rbp - 0xbc], xmm1
	movss	dword ptr [rbp - 0x6c], xmm3
	movss	dword ptr [rbp - 0x24], xmm2
	mov	rsp, rsp
	js	.label_1133
	movss	xmm0, dword ptr [rbp - 0x6c]
	nop	
	movss	dword ptr [rbp - 0x24], xmm0
.label_1133:
	mov	rbp, rbp
	movss	xmm0, dword ptr [rbp - 0x24]
	movss	xmm1, dword ptr [rbp - 0xbc]
	mulss	xmm1, xmm0
	movss	xmm0, dword ptr [rbp - 0x60]
	ucomiss	xmm0, xmm1
	jbe	.label_1135
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0xa0]
	mov	rsp, rsp
	call	check_tuning
	mov	rdi, qword ptr [rbp - 0xa0]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rdi + 0x10]
	mov	rdx, qword ptr [rdi + 0x18]
	mov	rbp, rbp
	mov	rsi, rdx
	mov	rbp, rbp
	shr	rsi, 1
	mov	r8d, edx
	and	r8d, 1
	mov	r9d, r8d
	or	r9, rsi
	lea	rsi, [rsi]
	cvtsi2ss	xmm0, r9
	lea	rdi, [rdi]
	addss	xmm0, xmm0
	lea	rdi, [rdi]
	cvtsi2ss	xmm1, rdx
	test	rdx, rdx
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x1d], al
	nop	
	mov	qword ptr [rbp - 0x58], rdi
	nop	
	mov	qword ptr [rbp - 0x50], rcx
	mov	rsp, rsp
	movss	dword ptr [rbp - 0x3c], xmm1
	mov	rbp, rbp
	movss	dword ptr [rbp - 8], xmm0
	js	.label_1149
	movss	xmm0, dword ptr [rbp - 0x3c]
	nop	
	movss	dword ptr [rbp - 8], xmm0
.label_1149:
	movss	xmm0, dword ptr [rbp - 8]
	mov	rax, qword ptr [rbp - 0x58]
	mov	rbp, rbp
	mov	rcx, qword ptr [rax + 0x28]
	movss	xmm1, dword ptr [rcx + 8]
	mov	rcx, qword ptr [rbp - 0x50]
	shr	rcx, 1
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x50]
	mov	esi, edx
	lea	rdi, [rdi]
	and	esi, 1
	mov	edi, esi
	or	rdi, rcx
	cvtsi2ss	xmm2, rdi
	addss	xmm2, xmm2
	cvtsi2ss	xmm3, rdx
	test	rdx, rdx
	mov	rbp, rbp
	movss	dword ptr [rbp - 0x1c], xmm0
	lea	rsi, [rsi]
	movss	dword ptr [rbp - 0xa4], xmm1
	lea	rsi, [rsi]
	movss	dword ptr [rbp - 0x44], xmm3
	movss	dword ptr [rbp - 0x8c], xmm2
	js	.label_1144
	lea	rdi, [rdi]
	movss	xmm0, dword ptr [rbp - 0x44]
	movss	dword ptr [rbp - 0x8c], xmm0
.label_1144:
	mov	rbp, rbp
	movss	xmm0, dword ptr [rbp - 0x8c]
	movss	xmm1, dword ptr [rbp - 0xa4]
	mov	rsp, rsp
	mulss	xmm1, xmm0
	lea	rsi, [rsi]
	movss	xmm0, dword ptr [rbp - 0x1c]
	ucomiss	xmm0, xmm1
	nop	
	jbe	.label_1143
	mov	rax, qword ptr [rbp - 0xa0]
	mov	rbp, rbp
	mov	rax, qword ptr [rax + 0x28]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0xb8], rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0xb8]
	test	byte ptr [rax + 0x10], 1
	mov	rsp, rsp
	je	.label_1140
	nop	
	mov	rax, qword ptr [rbp - 0xa0]
	mov	rax, qword ptr [rax + 0x10]
	mov	rcx, rax
	lea	rdi, [rdi]
	shr	rcx, 1
	mov	edx, eax
	and	edx, 1
	mov	esi, edx
	or	rsi, rcx
	cvtsi2ss	xmm0, rsi
	addss	xmm0, xmm0
	cvtsi2ss	xmm1, rax
	test	rax, rax
	lea	rdi, [rdi]
	movss	dword ptr [rbp - 0x40], xmm1
	movss	dword ptr [rbp - 0x84], xmm0
	nop	
	js	.label_1132
	movss	xmm0, dword ptr [rbp - 0x40]
	lea	rsi, [rsi]
	movss	dword ptr [rbp - 0x84], xmm0
.label_1132:
	movss	xmm0, dword ptr [rbp - 0x84]
	mov	rax, qword ptr [rbp - 0xb8]
	nop	
	mulss	xmm0, dword ptr [rax + 0xc]
	mov	rsp, rsp
	movss	dword ptr [rbp - 0x5c], xmm0
	mov	rbp, rbp
	jmp	.label_1141
.label_1140:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0xa0]
	mov	rax, qword ptr [rax + 0x10]
	mov	rcx, rax
	shr	rcx, 1
	mov	rbp, rbp
	mov	edx, eax
	lea	rdi, [rdi]
	and	edx, 1
	mov	esi, edx
	mov	rbp, rbp
	or	rsi, rcx
	cvtsi2ss	xmm0, rsi
	addss	xmm0, xmm0
	mov	rbp, rbp
	cvtsi2ss	xmm1, rax
	mov	rbp, rbp
	test	rax, rax
	movss	dword ptr [rbp - 0x18], xmm1
	nop	
	movss	dword ptr [rbp - 0x14], xmm0
	lea	rdi, [rdi]
	js	.label_1148
	movss	xmm0, dword ptr [rbp - 0x18]
	mov	rbp, rbp
	movss	dword ptr [rbp - 0x14], xmm0
.label_1148:
	movss	xmm0, dword ptr [rbp - 0x14]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0xb8]
	mov	rsp, rsp
	mulss	xmm0, dword ptr [rax + 0xc]
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0xb8]
	mulss	xmm0, dword ptr [rax + 8]
	mov	rsp, rsp
	movss	dword ptr [rbp - 0x5c], xmm0
.label_1141:
	mov	rsp, rsp
	movss	xmm0, dword ptr [rbp - 0x5c]
	lea	rdi, [rdi]
	movss	xmm1,  dword ptr [dword ptr [label_1081]]
	mov	rsp, rsp
	movss	dword ptr [rbp - 0xac], xmm0
	movss	xmm0, dword ptr [rbp - 0xac]
	mov	rsp, rsp
	ucomiss	xmm0, xmm1
	lea	rsi, [rsi]
	jb	.label_1137
	mov	dword ptr [rbp - 4], 0xffffffff
	lea	rdi, [rdi]
	jmp	.label_1134
.label_1137:
	mov	rdi, qword ptr [rbp - 0xa0]
	mov	rsp, rsp
	movss	xmm0, dword ptr [rbp - 0xac]
	movss	xmm1,  dword ptr [dword ptr [rip + label_1085]]
	movaps	xmm2, xmm0
	subss	xmm2, xmm1
	cvttss2si	rax, xmm2
	movabs	rcx, 0x8000000000000000
	mov	rbp, rbp
	xor	rax, rcx
	cvttss2si	rcx, xmm0
	lea	rdi, [rdi]
	ucomiss	xmm1, xmm0
	nop	
	cmova	rax, rcx
	lea	rsi, [rsi]
	mov	rsi, rax
	call	hash_rehash
	test	al, 1
	jne	.label_1150
	mov	rsp, rsp
	mov	dword ptr [rbp - 4], 0xffffffff
	jmp	.label_1134
.label_1150:
	lea	rdx, [rbp - 0x68]
	xor	ecx, ecx
	mov	rdi, qword ptr [rbp - 0xa0]
	mov	rsi, qword ptr [rbp - 0x98]
	call	hash_find_entry
	cmp	rax, 0
	lea	rdi, [rdi]
	je	.label_1146
	call	abort
.label_1146:
	jmp	.label_1143
.label_1143:
	lea	rdi, [rdi]
	jmp	.label_1135
.label_1135:
	mov	rax, qword ptr [rbp - 0x68]
	cmp	qword ptr [rax], 0
	je	.label_1147
	mov	rdi, qword ptr [rbp - 0xa0]
	call	allocate_entry
	nop	
	mov	qword ptr [rbp - 0x30], rax
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0x30], 0
	mov	rsp, rsp
	jne	.label_1136
	mov	dword ptr [rbp - 4], 0xffffffff
	mov	rsp, rsp
	jmp	.label_1134
.label_1136:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x98]
	mov	rcx, qword ptr [rbp - 0x30]
	mov	qword ptr [rcx], rax
	mov	rax, qword ptr [rbp - 0x68]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax + 8]
	mov	rcx, qword ptr [rbp - 0x30]
	mov	qword ptr [rcx + 8], rax
	mov	rax, qword ptr [rbp - 0x30]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x68]
	lea	rsi, [rsi]
	mov	qword ptr [rcx + 8], rax
	mov	rax, qword ptr [rbp - 0xa0]
	mov	rcx, qword ptr [rax + 0x20]
	add	rcx, 1
	mov	qword ptr [rax + 0x20], rcx
	mov	dword ptr [rbp - 4], 1
	lea	rdi, [rdi]
	jmp	.label_1134
.label_1147:
	mov	rax, qword ptr [rbp - 0x98]
	nop	
	mov	rcx, qword ptr [rbp - 0x68]
	nop	
	mov	qword ptr [rcx], rax
	mov	rax, qword ptr [rbp - 0xa0]
	mov	rcx, qword ptr [rax + 0x20]
	lea	rdi, [rdi]
	add	rcx, 1
	mov	rbp, rbp
	mov	qword ptr [rax + 0x20], rcx
	mov	rax, qword ptr [rbp - 0xa0]
	mov	rcx, qword ptr [rax + 0x18]
	add	rcx, 1
	mov	rsp, rsp
	mov	qword ptr [rax + 0x18], rcx
	mov	dword ptr [rbp - 4], 1
.label_1134:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0xc0
	mov	rsp, rsp
	pop	rbp
	mov	rbp, rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x414aa0

	.globl hash_find_entry
	.type hash_find_entry, @function
hash_find_entry:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x60
	mov	al, cl
	nop	
	mov	qword ptr [rbp - 0x30], rdi
	mov	qword ptr [rbp - 0x50], rsi
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 8], rdx
	and	al, 1
	mov	byte ptr [rbp - 0x21], al
	nop	
	mov	rdi, qword ptr [rbp - 0x30]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x50]
	mov	rbp, rbp
	call	safe_hasher
	mov	qword ptr [rbp - 0x58], rax
	mov	rax, qword ptr [rbp - 0x58]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 8]
	mov	qword ptr [rdx], rax
	nop	
	mov	rax, qword ptr [rbp - 0x58]
	cmp	qword ptr [rax], 0
	jne	.label_1156
	nop	
	mov	qword ptr [rbp - 0x40], 0
	jmp	.label_1153
.label_1156:
	mov	rax, qword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rbp - 0x58]
	cmp	rax, qword ptr [rcx]
	je	.label_1151
	mov	rax, qword ptr [rbp - 0x30]
	mov	rsp, rsp
	mov	rax, qword ptr [rax + 0x38]
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rbp - 0x58]
	mov	rsi, qword ptr [rcx]
	nop	
	call	rax
	mov	rsp, rsp
	test	al, 1
	jne	.label_1151
	jmp	.label_1162
.label_1151:
	nop	
	mov	rax, qword ptr [rbp - 0x58]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x20], rax
	lea	rsi, [rsi]
	test	byte ptr [rbp - 0x21], 1
	mov	rsp, rsp
	je	.label_1154
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x58]
	nop	
	cmp	qword ptr [rax + 8], 0
	mov	rsp, rsp
	je	.label_1158
	mov	rax, qword ptr [rbp - 0x58]
	mov	rax, qword ptr [rax + 8]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x48], rax
	mov	rax, qword ptr [rbp - 0x58]
	nop	
	mov	rcx, qword ptr [rbp - 0x48]
	nop	
	mov	rdx, qword ptr [rcx]
	mov	qword ptr [rax], rdx
	mov	rcx, qword ptr [rcx + 8]
	mov	qword ptr [rax + 8], rcx
	mov	rdi, qword ptr [rbp - 0x30]
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x48]
	lea	rsi, [rsi]
	call	free_entry
	nop	
	jmp	.label_1161
.label_1158:
	mov	rax, qword ptr [rbp - 0x58]
	mov	qword ptr [rax], 0
.label_1161:
	jmp	.label_1154
.label_1154:
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x40], rax
	jmp	.label_1153
.label_1162:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x58]
	mov	qword ptr [rbp - 0x10], rax
.label_1155:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	cmp	qword ptr [rax + 8], 0
	mov	rsp, rsp
	je	.label_1157
	nop	
	mov	rax, qword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx + 8]
	cmp	rax, qword ptr [rcx]
	lea	rsi, [rsi]
	je	.label_1160
	nop	
	mov	rax, qword ptr [rbp - 0x30]
	mov	rax, qword ptr [rax + 0x38]
	mov	rdi, qword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx + 8]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rcx]
	nop	
	call	rax
	lea	rsi, [rsi]
	test	al, 1
	lea	rdi, [rdi]
	jne	.label_1160
	lea	rsi, [rsi]
	jmp	.label_1163
.label_1160:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 8]
	mov	rax, qword ptr [rax]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x18], rax
	test	byte ptr [rbp - 0x21], 1
	je	.label_1152
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax + 8]
	nop	
	mov	qword ptr [rbp - 0x38], rax
	mov	rax, qword ptr [rbp - 0x38]
	mov	rax, qword ptr [rax + 8]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	qword ptr [rcx + 8], rax
	mov	rdi, qword ptr [rbp - 0x30]
	mov	rsi, qword ptr [rbp - 0x38]
	mov	rbp, rbp
	call	free_entry
.label_1152:
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x40], rax
	jmp	.label_1153
.label_1163:
	mov	rbp, rbp
	jmp	.label_1159
.label_1159:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x10]
	nop	
	mov	rax, qword ptr [rax + 8]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x10], rax
	lea	rsi, [rsi]
	jmp	.label_1155
.label_1157:
	mov	qword ptr [rbp - 0x40], 0
.label_1153:
	mov	rax, qword ptr [rbp - 0x40]
	add	rsp, 0x60
	pop	rbp
	lea	rdi, [rdi]
	ret	
	.section	.text
	.align	32
	#Procedure 0x414ce0

	.globl allocate_entry
	.type allocate_entry, @function
allocate_entry:
	mov	rbp, rbp
	push	rbp
	mov	rbp, rsp
	nop	
	sub	rsp, 0x10
	mov	rbp, rbp
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	cmp	qword ptr [rdi + 0x48], 0
	je	.label_1164
	mov	rax, qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	rax, qword ptr [rax + 0x48]
	mov	qword ptr [rbp - 0x10], rax
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 8]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	mov	qword ptr [rcx + 0x48], rax
	jmp	.label_1165
.label_1164:
	mov	eax, 0x10
	lea	rdi, [rdi]
	mov	edi, eax
	lea	rdi, [rdi]
	call	malloc
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x10], rax
.label_1165:
	mov	rax, qword ptr [rbp - 0x10]
	add	rsp, 0x10
	lea	rsi, [rsi]
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x414d60

	.globl hash_insert
	.type hash_insert, @function
hash_insert:
	push	rbp
	lea	rdi, [rdi]
	mov	rbp, rsp
	mov	rsp, rsp
	sub	rsp, 0x30
	lea	rdx, [rbp - 0x20]
	mov	qword ptr [rbp - 0x28], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x10]
	call	hash_insert_if_absent
	nop	
	mov	dword ptr [rbp - 4], eax
	mov	rbp, rbp
	cmp	dword ptr [rbp - 4], -1
	lea	rdi, [rdi]
	jne	.label_1168
	xor	eax, eax
	lea	rdi, [rdi]
	mov	ecx, eax
	nop	
	mov	qword ptr [rbp - 0x18], rcx
	lea	rsi, [rsi]
	jmp	.label_1166
.label_1168:
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 4], 0
	lea	rsi, [rsi]
	jne	.label_1169
	nop	
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_1167
.label_1169:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x10]
	nop	
	mov	qword ptr [rbp - 0x30], rax
.label_1167:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x30]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x18], rax
.label_1166:
	mov	rax, qword ptr [rbp - 0x18]
	nop	
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x414e00

	.globl hash_delete
	.type hash_delete, @function
hash_delete:
	mov	rsp, rsp
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0xc0
	lea	rdx, [rbp - 0xb8]
	nop	
	mov	ecx, 1
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x40], rdi
	mov	qword ptr [rbp - 0x90], rsi
	mov	rdi, qword ptr [rbp - 0x40]
	mov	rsi, qword ptr [rbp - 0x90]
	mov	rbp, rbp
	call	hash_find_entry
	mov	qword ptr [rbp - 8], rax
	mov	rbp, rbp
	cmp	qword ptr [rbp - 8], 0
	jne	.label_1185
	mov	qword ptr [rbp - 0x38], 0
	jmp	.label_1177
.label_1185:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x40]
	mov	rcx, qword ptr [rax + 0x20]
	add	rcx, -1
	nop	
	mov	qword ptr [rax + 0x20], rcx
	mov	rax, qword ptr [rbp - 0xb8]
	cmp	qword ptr [rax], 0
	jne	.label_1179
	mov	rax, qword ptr [rbp - 0x40]
	mov	rcx, qword ptr [rax + 0x18]
	dec	rcx
	mov	qword ptr [rax + 0x18], rcx
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x40]
	nop	
	mov	rcx, qword ptr [rax + 0x10]
	mov	rdx, qword ptr [rax + 0x18]
	nop	
	mov	rsi, rdx
	shr	rsi, 1
	mov	edi, edx
	mov	rsp, rsp
	and	edi, 1
	lea	rsi, [rsi]
	mov	r8d, edi
	mov	rbp, rbp
	or	r8, rsi
	mov	rbp, rbp
	cvtsi2ss	xmm0, r8
	mov	rsp, rsp
	addss	xmm0, xmm0
	cvtsi2ss	xmm1, rdx
	test	rdx, rdx
	mov	qword ptr [rbp - 0x80], rax
	mov	qword ptr [rbp - 0x20], rcx
	movss	dword ptr [rbp - 0x2c], xmm1
	movss	dword ptr [rbp - 0x60], xmm0
	lea	rsi, [rsi]
	js	.label_1170
	movss	xmm0, dword ptr [rbp - 0x2c]
	movss	dword ptr [rbp - 0x60], xmm0
.label_1170:
	movss	xmm0, dword ptr [rbp - 0x60]
	mov	rax, qword ptr [rbp - 0x80]
	mov	rcx, qword ptr [rax + 0x28]
	movss	xmm1, dword ptr [rcx]
	mov	rcx, qword ptr [rbp - 0x20]
	shr	rcx, 1
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x20]
	mov	esi, edx
	lea	rsi, [rsi]
	and	esi, 1
	mov	edi, esi
	or	rdi, rcx
	lea	rsi, [rsi]
	cvtsi2ss	xmm2, rdi
	lea	rsi, [rsi]
	addss	xmm2, xmm2
	cvtsi2ss	xmm3, rdx
	lea	rsi, [rsi]
	test	rdx, rdx
	movss	dword ptr [rbp - 0x14], xmm0
	movss	dword ptr [rbp - 0x98], xmm1
	movss	dword ptr [rbp - 0x64], xmm3
	lea	rdi, [rdi]
	movss	dword ptr [rbp - 0x5c], xmm2
	lea	rsi, [rsi]
	js	.label_1183
	movss	xmm0, dword ptr [rbp - 0x64]
	movss	dword ptr [rbp - 0x5c], xmm0
.label_1183:
	movss	xmm0, dword ptr [rbp - 0x5c]
	mov	rsp, rsp
	movss	xmm1, dword ptr [rbp - 0x98]
	lea	rdi, [rdi]
	mulss	xmm1, xmm0
	movss	xmm0, dword ptr [rbp - 0x14]
	ucomiss	xmm1, xmm0
	jbe	.label_1180
	mov	rdi, qword ptr [rbp - 0x40]
	mov	rbp, rbp
	call	check_tuning
	mov	rdi, qword ptr [rbp - 0x40]
	mov	rsp, rsp
	mov	rcx, qword ptr [rdi + 0x10]
	mov	rdx, qword ptr [rdi + 0x18]
	mov	rsi, rdx
	shr	rsi, 1
	mov	r8d, edx
	lea	rdi, [rdi]
	and	r8d, 1
	mov	rsp, rsp
	mov	r9d, r8d
	or	r9, rsi
	cvtsi2ss	xmm0, r9
	mov	rsp, rsp
	addss	xmm0, xmm0
	mov	rsp, rsp
	cvtsi2ss	xmm1, rdx
	test	rdx, rdx
	mov	byte ptr [rbp - 0x15], al
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0xa0], rdi
	mov	qword ptr [rbp - 0x50], rcx
	movss	dword ptr [rbp - 0x84], xmm1
	movss	dword ptr [rbp - 0x24], xmm0
	nop	
	js	.label_1178
	movss	xmm0, dword ptr [rbp - 0x84]
	movss	dword ptr [rbp - 0x24], xmm0
.label_1178:
	mov	rsp, rsp
	movss	xmm0, dword ptr [rbp - 0x24]
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0xa0]
	mov	rcx, qword ptr [rax + 0x28]
	nop	
	movss	xmm1, dword ptr [rcx]
	mov	rcx, qword ptr [rbp - 0x50]
	shr	rcx, 1
	nop	
	mov	rdx, qword ptr [rbp - 0x50]
	mov	esi, edx
	and	esi, 1
	mov	edi, esi
	or	rdi, rcx
	lea	rsi, [rsi]
	cvtsi2ss	xmm2, rdi
	lea	rdi, [rdi]
	addss	xmm2, xmm2
	cvtsi2ss	xmm3, rdx
	nop	
	test	rdx, rdx
	mov	rsp, rsp
	movss	dword ptr [rbp - 0xb0], xmm0
	movss	dword ptr [rbp - 0x94], xmm1
	mov	rsp, rsp
	movss	dword ptr [rbp - 0xa4], xmm3
	movss	dword ptr [rbp - 0x74], xmm2
	js	.label_1175
	movss	xmm0, dword ptr [rbp - 0xa4]
	mov	rbp, rbp
	movss	dword ptr [rbp - 0x74], xmm0
.label_1175:
	movss	xmm0, dword ptr [rbp - 0x74]
	movss	xmm1, dword ptr [rbp - 0x94]
	lea	rsi, [rsi]
	mulss	xmm1, xmm0
	movss	xmm0, dword ptr [rbp - 0xb0]
	mov	rbp, rbp
	ucomiss	xmm1, xmm0
	jbe	.label_1171
	mov	rax, qword ptr [rbp - 0x40]
	nop	
	mov	rax, qword ptr [rax + 0x28]
	nop	
	mov	qword ptr [rbp - 0x48], rax
	mov	rax, qword ptr [rbp - 0x48]
	test	byte ptr [rax + 0x10], 1
	je	.label_1182
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax + 0x10]
	mov	rcx, rax
	shr	rcx, 1
	mov	edx, eax
	and	edx, 1
	lea	rdi, [rdi]
	mov	esi, edx
	or	rsi, rcx
	cvtsi2ss	xmm0, rsi
	mov	rbp, rbp
	addss	xmm0, xmm0
	mov	rsp, rsp
	cvtsi2ss	xmm1, rax
	test	rax, rax
	movss	dword ptr [rbp - 0xc], xmm1
	nop	
	movss	dword ptr [rbp - 0xac], xmm0
	lea	rsi, [rsi]
	js	.label_1176
	movss	xmm0, dword ptr [rbp - 0xc]
	movss	dword ptr [rbp - 0xac], xmm0
.label_1176:
	lea	rdi, [rdi]
	movss	xmm0, dword ptr [rbp - 0xac]
	mov	rax, qword ptr [rbp - 0x48]
	lea	rdi, [rdi]
	mulss	xmm0, dword ptr [rax + 4]
	movss	dword ptr [rbp - 0x10], xmm0
	jmp	.label_1181
.label_1182:
	mov	rax, qword ptr [rbp - 0x40]
	mov	rbp, rbp
	mov	rax, qword ptr [rax + 0x10]
	mov	rcx, rax
	mov	rsp, rsp
	shr	rcx, 1
	mov	edx, eax
	and	edx, 1
	nop	
	mov	esi, edx
	mov	rsp, rsp
	or	rsi, rcx
	cvtsi2ss	xmm0, rsi
	lea	rsi, [rsi]
	addss	xmm0, xmm0
	mov	rsp, rsp
	cvtsi2ss	xmm1, rax
	nop	
	test	rax, rax
	nop	
	movss	dword ptr [rbp - 0x28], xmm1
	movss	dword ptr [rbp - 0xa8], xmm0
	js	.label_1173
	mov	rsp, rsp
	movss	xmm0, dword ptr [rbp - 0x28]
	movss	dword ptr [rbp - 0xa8], xmm0
.label_1173:
	mov	rsp, rsp
	movss	xmm0, dword ptr [rbp - 0xa8]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x48]
	mulss	xmm0, dword ptr [rax + 4]
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x48]
	lea	rdi, [rdi]
	mulss	xmm0, dword ptr [rax + 8]
	mov	rbp, rbp
	movss	dword ptr [rbp - 0x10], xmm0
.label_1181:
	mov	rsp, rsp
	movss	xmm0, dword ptr [rbp - 0x10]
	movss	xmm1,  dword ptr [dword ptr [rip + label_1085]]
	movaps	xmm2, xmm0
	subss	xmm2, xmm1
	cvttss2si	rax, xmm2
	lea	rdi, [rdi]
	movabs	rcx, 0x8000000000000000
	lea	rsi, [rsi]
	xor	rax, rcx
	cvttss2si	rcx, xmm0
	lea	rsi, [rsi]
	ucomiss	xmm0, xmm1
	mov	rbp, rbp
	cmovb	rax, rcx
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x70], rax
	mov	rdi, qword ptr [rbp - 0x40]
	mov	rsi, qword ptr [rbp - 0x70]
	lea	rsi, [rsi]
	call	hash_rehash
	test	al, 1
	jne	.label_1174
	mov	rax, qword ptr [rbp - 0x40]
	mov	rbp, rbp
	mov	rax, qword ptr [rax + 0x48]
	mov	qword ptr [rbp - 0xc0], rax
.label_1184:
	cmp	qword ptr [rbp - 0xc0], 0
	nop	
	je	.label_1172
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0xc0]
	mov	rax, qword ptr [rax + 8]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x58], rax
	mov	rax, qword ptr [rbp - 0xc0]
	lea	rdi, [rdi]
	mov	rdi, rax
	lea	rsi, [rsi]
	call	free
	mov	rax, qword ptr [rbp - 0x58]
	mov	qword ptr [rbp - 0xc0], rax
	jmp	.label_1184
.label_1172:
	mov	rax, qword ptr [rbp - 0x40]
	mov	qword ptr [rax + 0x48], 0
.label_1174:
	lea	rsi, [rsi]
	jmp	.label_1171
.label_1171:
	jmp	.label_1180
.label_1180:
	nop	
	jmp	.label_1179
.label_1179:
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x38], rax
.label_1177:
	mov	rax, qword ptr [rbp - 0x38]
	mov	rbp, rbp
	add	rsp, 0xc0
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4152d0

	.globl next_prime
	.type next_prime, @function
next_prime:
	nop	
	push	rbp
	lea	rdi, [rdi]
	mov	rbp, rsp
	sub	rsp, 0x10
	nop	
	mov	qword ptr [rbp - 0x10], rdi
	cmp	qword ptr [rbp - 0x10], 0xa
	jae	.label_1186
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x10], 0xa
.label_1186:
	mov	rax, qword ptr [rbp - 0x10]
	or	rax, 1
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x10], rax
.label_1190:
	mov	rbp, rbp
	xor	eax, eax
	nop	
	mov	cl, al
	nop	
	mov	rdx, -1
	cmp	rdx, qword ptr [rbp - 0x10]
	mov	byte ptr [rbp - 1], cl
	mov	rbp, rbp
	je	.label_1188
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x10]
	nop	
	call	is_prime
	nop	
	xor	al, 0xff
	mov	rsp, rsp
	mov	byte ptr [rbp - 1], al
.label_1188:
	lea	rsi, [rsi]
	mov	al, byte ptr [rbp - 1]
	lea	rsi, [rsi]
	test	al, 1
	lea	rdi, [rdi]
	jne	.label_1189
	jmp	.label_1187
.label_1189:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 2
	mov	qword ptr [rbp - 0x10], rax
	mov	rbp, rbp
	jmp	.label_1190
.label_1187:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	add	rsp, 0x10
	pop	rbp
	mov	rbp, rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x415380

	.globl is_prime
	.type is_prime, @function
is_prime:
	lea	rdi, [rdi]
	push	rbp
	nop	
	mov	rbp, rsp
	nop	
	mov	qword ptr [rbp - 0x20], rdi
	nop	
	mov	qword ptr [rbp - 8], 3
	mov	rdi, qword ptr [rbp - 8]
	imul	rdi, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x10], rdi
.label_1192:
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x10]
	cmp	rdx, qword ptr [rbp - 0x20]
	mov	byte ptr [rbp - 0x11], cl
	mov	rbp, rbp
	jae	.label_1191
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	xor	ecx, ecx
	mov	edx, ecx
	lea	rdi, [rdi]
	div	qword ptr [rbp - 8]
	cmp	rdx, 0
	setne	sil
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x11], sil
.label_1191:
	mov	al, byte ptr [rbp - 0x11]
	nop	
	test	al, 1
	lea	rsi, [rsi]
	jne	.label_1194
	jmp	.label_1193
.label_1194:
	mov	rax, qword ptr [rbp - 8]
	add	rax, 1
	nop	
	mov	qword ptr [rbp - 8], rax
	mov	rax, qword ptr [rbp - 8]
	shl	rax, 2
	lea	rdi, [rdi]
	add	rax, qword ptr [rbp - 0x10]
	nop	
	mov	qword ptr [rbp - 0x10], rax
	mov	rax, qword ptr [rbp - 8]
	mov	rsp, rsp
	add	rax, 1
	nop	
	mov	qword ptr [rbp - 8], rax
	lea	rsi, [rsi]
	jmp	.label_1192
.label_1193:
	xor	eax, eax
	mov	ecx, 1
	mov	rdx, qword ptr [rbp - 0x20]
	mov	dword ptr [rbp - 0x18], eax
	mov	rsp, rsp
	mov	rax, rdx
	mov	rbp, rbp
	xor	esi, esi
	lea	rsi, [rsi]
	mov	edx, esi
	mov	rsp, rsp
	div	qword ptr [rbp - 8]
	lea	rsi, [rsi]
	cmp	rdx, 0
	mov	esi, dword ptr [rbp - 0x18]
	cmovne	esi, ecx
	cmp	esi, 0
	setne	dil
	lea	rdi, [rdi]
	and	dil, 1
	movzx	ecx, dil
	mov	eax, ecx
	pop	rbp
	lea	rdi, [rdi]
	ret	
	.section	.text
	.align	32
	#Procedure 0x415480

	.globl free_entry
	.type free_entry, @function
free_entry:
	lea	rsi, [rsi]
	push	rbp
	nop	
	mov	rbp, rsp
	nop	
	mov	qword ptr [rbp - 8], rdi
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsi, qword ptr [rbp - 0x10]
	mov	qword ptr [rsi], 0
	mov	rsi, qword ptr [rbp - 8]
	nop	
	mov	rsi, qword ptr [rsi + 0x48]
	nop	
	mov	rdi, qword ptr [rbp - 0x10]
	mov	qword ptr [rdi + 8], rsi
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	mov	qword ptr [rdi + 0x48], rsi
	mov	rbp, rbp
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4154d0

	.globl triple_hash
	.type triple_hash, @function
triple_hash:
	push	rbp
	mov	rbp, rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	nop	
	mov	qword ptr [rbp - 0x18], rdi
	mov	rbp, rbp
	mov	qword ptr [rbp - 8], rsi
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	rdi, qword ptr [rsi]
	mov	rsi, qword ptr [rbp - 8]
	mov	rsp, rsp
	call	hash_pjw
	mov	qword ptr [rbp - 0x20], rax
	mov	rax, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x10]
	xor	rax, qword ptr [rsi + 8]
	xor	ecx, ecx
	mov	rbp, rbp
	mov	edx, ecx
	mov	rsp, rsp
	div	qword ptr [rbp - 8]
	lea	rdi, [rdi]
	mov	rax, rdx
	nop	
	add	rsp, 0x20
	mov	rbp, rbp
	pop	rbp
	mov	rsp, rsp
	ret	
	.section	.text
	.align	32
	#Procedure 0x415540

	.globl triple_hash_no_name
	.type triple_hash_no_name, @function
triple_hash_no_name:
	nop
	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	nop	
	mov	qword ptr [rbp - 0x18], rsi
	mov	rsi, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsi, qword ptr [rbp - 0x10]
	nop	
	mov	rax, qword ptr [rsi + 8]
	mov	rbp, rbp
	xor	ecx, ecx
	mov	edx, ecx
	div	qword ptr [rbp - 0x18]
	mov	rbp, rbp
	mov	rax, rdx
	pop	rbp
	nop	
	ret	
	.section	.text
	.align	32
	#Procedure 0x415580

	.globl triple_compare
	.type triple_compare, @function
triple_compare:
	nop
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	nop	
	xor	eax, eax
	lea	rsi, [rsi]
	mov	cl, al
	mov	qword ptr [rbp - 0x28], rdi
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 8], rsi
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsi, qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x18], rsi
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	rsi, qword ptr [rsi + 8]
	mov	rdi, qword ptr [rbp - 0x18]
	cmp	rsi, qword ptr [rdi + 8]
	mov	byte ptr [rbp - 0x19], cl
	jne	.label_1195
	xor	eax, eax
	mov	cl, al
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rdx + 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	cmp	rdx, qword ptr [rsi + 0x10]
	mov	byte ptr [rbp - 0x19], cl
	jne	.label_1195
	nop	
	mov	rax, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rax]
	nop	
	mov	rax, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rax]
	call	same_name
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x19], al
.label_1195:
	mov	al, byte ptr [rbp - 0x19]
	xor	ecx, ecx
	lea	rsi, [rsi]
	mov	edx, 1
	lea	rdi, [rdi]
	test	al, 1
	cmovne	ecx, edx
	nop	
	cmp	ecx, 0
	setne	al
	lea	rdi, [rdi]
	and	al, 1
	lea	rdi, [rdi]
	movzx	eax, al
	add	rsp, 0x30
	pop	rbp
	mov	rbp, rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x415640
	.globl triple_compare_ino_str
	.type triple_compare_ino_str, @function
triple_compare_ino_str:

	lea	rdi, [rdi]
	push	rbp
	lea	rdi, [rdi]
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	rbp, rbp
	xor	eax, eax
	mov	cl, al
	mov	qword ptr [rbp - 0x10], rdi
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x28], rsi
	mov	rsi, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 8], rsi
	mov	rsi, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x20], rsi
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rsi + 8]
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x20]
	nop	
	cmp	rsi, qword ptr [rdi + 8]
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x11], cl
	lea	rsi, [rsi]
	jne	.label_1196
	xor	eax, eax
	lea	rsi, [rsi]
	mov	cl, al
	mov	rdx, qword ptr [rbp - 8]
	mov	rdx, qword ptr [rdx + 0x10]
	nop	
	mov	rsi, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	cmp	rdx, qword ptr [rsi + 0x10]
	mov	byte ptr [rbp - 0x11], cl
	lea	rdi, [rdi]
	jne	.label_1196
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	rdi, qword ptr [rax]
	mov	rax, qword ptr [rbp - 0x20]
	mov	rsi, qword ptr [rax]
	call	strcmp
	lea	rsi, [rsi]
	cmp	eax, 0
	sete	cl
	mov	byte ptr [rbp - 0x11], cl
.label_1196:
	mov	rsp, rsp
	mov	al, byte ptr [rbp - 0x11]
	lea	rdi, [rdi]
	xor	ecx, ecx
	nop	
	mov	edx, 1
	test	al, 1
	cmovne	ecx, edx
	mov	rsp, rsp
	cmp	ecx, 0
	lea	rdi, [rdi]
	setne	al
	lea	rsi, [rsi]
	and	al, 1
	movzx	eax, al
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x415720

	.globl triple_free
	.type triple_free, @function
triple_free:
	mov	rbp, rbp
	push	rbp
	mov	rbp, rsp
	lea	rdi, [rdi]
	sub	rsp, 0x10
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x10], rdi
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	rdi, qword ptr [rdi]
	call	free
	mov	rdi, qword ptr [rbp - 0x10]
	call	free
	add	rsp, 0x10
	pop	rbp
	lea	rdi, [rdi]
	ret	
	.section	.text
	.align	32
	#Procedure 0x415770

	.globl opendirat
	.type opendirat, @function
opendirat:
	lea	rsi, [rsi]
	push	rbp
	lea	rdi, [rdi]
	mov	rbp, rsp
	sub	rsp, 0x50
	mov	dword ptr [rbp - 0x14], edi
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x20], rsi
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x44], edx
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x28], rcx
	mov	edx, dword ptr [rbp - 0x44]
	lea	rsi, [rsi]
	or	edx, 0x90900
	mov	dword ptr [rbp - 4], edx
	mov	edi, dword ptr [rbp - 0x14]
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x20]
	mov	edx, dword ptr [rbp - 4]
	mov	al, 0
	lea	rsi, [rsi]
	call	openat_safer
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x40], eax
	cmp	dword ptr [rbp - 0x40], 0
	mov	rsp, rsp
	jge	.label_1199
	nop	
	mov	qword ptr [rbp - 0x30], 0
	lea	rdi, [rdi]
	jmp	.label_1198
.label_1199:
	mov	edi, dword ptr [rbp - 0x40]
	call	fdopendir
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x10], rax
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0x10], 0
	lea	rsi, [rsi]
	je	.label_1197
	nop	
	mov	eax, dword ptr [rbp - 0x40]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x28]
	mov	dword ptr [rcx], eax
	jmp	.label_1200
.label_1197:
	call	__errno_location
	mov	ecx, dword ptr [rax]
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x38], ecx
	lea	rdi, [rdi]
	mov	edi, dword ptr [rbp - 0x40]
	call	close
	mov	ecx, dword ptr [rbp - 0x38]
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x3c], eax
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x34], ecx
	nop	
	call	__errno_location
	mov	ecx, dword ptr [rbp - 0x34]
	mov	dword ptr [rax], ecx
.label_1200:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x30], rax
.label_1198:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x30]
	nop	
	add	rsp, 0x50
	mov	rsp, rsp
	pop	rbp
	mov	rbp, rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x415870

	.globl priv_set_remove_linkdir
	.type priv_set_remove_linkdir, @function
priv_set_remove_linkdir:
	push	rbp
	mov	rbp, rsp
	mov	eax, 0xffffffff
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x415880
	.globl priv_set_restore_linkdir
	.type priv_set_restore_linkdir, @function
priv_set_restore_linkdir:

	push	rbp
	mov	rbp, rsp
	mov	eax, 0xffffffff
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x415890

	.globl set_program_name
	.type set_program_name, @function
set_program_name:
	lea	rsi, [rsi]
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	qword ptr [rbp - 0x10], rdi
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x10], 0
	jne	.label_1203
	movabs	rdi, OFFSET FLAT:.str_14
	mov	rbp, rbp
	mov	rsi,  qword ptr [word ptr [stderr]]
	call	fputs
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x14], eax
	lea	rsi, [rsi]
	call	abort
.label_1203:
	lea	rdi, [rdi]
	mov	esi, 0x2f
	mov	rdi, qword ptr [rbp - 0x10]
	nop	
	call	strrchr
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x20], rax
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0x20], 0
	je	.label_1201
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x20]
	add	rax, 1
	mov	qword ptr [rbp - 0x28], rax
	jmp	.label_1205
.label_1201:
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x28], rax
.label_1205:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x28]
	mov	rbp, rbp
	mov	qword ptr [rbp - 8], rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 8]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	sub	rax, rcx
	nop	
	cmp	rax, 7
	jl	.label_1204
	lea	rsi, [rsi]
	movabs	rsi, OFFSET FLAT:.str.1_9
	mov	rsp, rsp
	mov	eax, 7
	mov	edx, eax
	mov	rcx, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	add	rcx, -7
	lea	rdi, [rdi]
	mov	rdi, rcx
	call	strncmp
	cmp	eax, 0
	mov	rbp, rbp
	jne	.label_1204
	mov	rbp, rbp
	movabs	rsi, OFFSET FLAT:.str.2_6
	lea	rsi, [rsi]
	mov	eax, 3
	mov	edx, eax
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x10], rcx
	mov	rdi, qword ptr [rbp - 8]
	call	strncmp
	cmp	eax, 0
	jne	.label_1202
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 8]
	add	rax, 3
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x10], rax
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	qword ptr [word ptr [program_invocation_short_name]],  rax
.label_1202:
	jmp	.label_1204
.label_1204:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [word ptr [program_name]],  rax
	nop	
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [word ptr [__progname_full]],  rax
	add	rsp, 0x30
	lea	rsi, [rsi]
	pop	rbp
	mov	rbp, rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x415a10

	.globl qcopy_acl
	.type qcopy_acl, @function
qcopy_acl:
	push	rbp
	mov	rbp, rsp
	lea	rdi, [rdi]
	sub	rsp, 0x30
	lea	rax, [rbp - 8]
	nop	
	mov	qword ptr [rbp - 0x20], rdi
	mov	dword ptr [rbp - 0x28], esi
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x10], rdx
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x2c], ecx
	mov	dword ptr [rbp - 0x24], r8d
	mov	rdi, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	mov	esi, dword ptr [rbp - 0x28]
	mov	edx, dword ptr [rbp - 0x24]
	mov	rbp, rbp
	mov	rcx, rax
	call	get_permissions
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x30], eax
	cmp	dword ptr [rbp - 0x30], 0
	je	.label_1206
	mov	dword ptr [rbp - 0x14], 0xfffffffe
	nop	
	jmp	.label_1207
.label_1206:
	lea	rdi, [rbp - 8]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	edx, dword ptr [rbp - 0x2c]
	call	set_permissions
	lea	rdi, [rbp - 8]
	mov	dword ptr [rbp - 0x30], eax
	call	free_permission_context
	mov	eax, dword ptr [rbp - 0x30]
	mov	dword ptr [rbp - 0x14], eax
.label_1207:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x14]
	nop	
	add	rsp, 0x30
	mov	rsp, rsp
	pop	rbp
	mov	rbp, rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x415ab0

	.globl qset_acl
	.type qset_acl, @function
qset_acl:
	push	rbp
	mov	rbp, rsp
	mov	rbp, rbp
	sub	rsp, 0x30
	mov	rsp, rsp
	lea	rax, [rbp - 8]
	xor	ecx, ecx
	mov	r8d, 4
	mov	rsp, rsp
	mov	r9d, r8d
	mov	qword ptr [rbp - 0x20], rdi
	mov	dword ptr [rbp - 0x14], esi
	mov	dword ptr [rbp - 0xc], edx
	mov	rdi, rax
	mov	esi, ecx
	lea	rsi, [rsi]
	mov	rdx, r9
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x28], rax
	mov	rsp, rsp
	call	memset
	lea	rsi, [rsi]
	mov	ecx, dword ptr [rbp - 0xc]
	nop	
	mov	dword ptr [rbp - 8], ecx
	mov	rsi, qword ptr [rbp - 0x20]
	mov	edx, dword ptr [rbp - 0x14]
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x28]
	call	set_permissions
	lea	rdi, [rbp - 8]
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x10], eax
	mov	rbp, rbp
	call	free_permission_context
	mov	eax, dword ptr [rbp - 0x10]
	add	rsp, 0x30
	mov	rbp, rbp
	pop	rbp
	nop	
	ret	
	.section	.text
	.align	32
	#Procedure 0x415b30
	.globl clone_quoting_options
	.type clone_quoting_options, @function
clone_quoting_options:

	nop
	push	rbp
	lea	rsi, [rsi]
	mov	rbp, rsp
	mov	rbp, rbp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 0x18], rdi
	mov	rbp, rbp
	call	__errno_location
	mov	ecx, dword ptr [rax]
	mov	rbp, rbp
	mov	dword ptr [rbp - 8], ecx
	cmp	qword ptr [rbp - 0x18], 0
	je	.label_1208
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x10], rax
	lea	rsi, [rsi]
	jmp	.label_1209
.label_1208:
	movabs	rax, OFFSET FLAT:default_quoting_options
	nop	
	mov	qword ptr [rbp - 0x10], rax
	lea	rsi, [rsi]
	jmp	.label_1209
.label_1209:
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, 0x38
	lea	rsi, [rsi]
	mov	esi, ecx
	lea	rsi, [rsi]
	mov	rdi, rax
	call	xmemdup
	mov	qword ptr [rbp - 0x20], rax
	mov	ecx, dword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 4], ecx
	lea	rdi, [rdi]
	call	__errno_location
	lea	rdi, [rdi]
	mov	ecx, dword ptr [rbp - 4]
	mov	rbp, rbp
	mov	dword ptr [rax], ecx
	nop	
	mov	rax, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x415be0
	.globl get_quoting_style
	.type get_quoting_style, @function
get_quoting_style:

	lea	rsi, [rsi]
	push	rbp
	lea	rdi, [rdi]
	mov	rbp, rsp
	mov	qword ptr [rbp - 0x10], rdi
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x10], 0
	lea	rsi, [rsi]
	je	.label_1210
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 8], rax
	nop	
	jmp	.label_1211
.label_1210:
	lea	rsi, [rsi]
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	rsp, rsp
	mov	qword ptr [rbp - 8], rax
	jmp	.label_1211
.label_1211:
	mov	rax, qword ptr [rbp - 8]
	nop	
	mov	eax, dword ptr [rax]
	mov	rsp, rsp
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x415c40
	.globl set_quoting_style
	.type set_quoting_style, @function
set_quoting_style:

	push	rbp
	mov	rbp, rsp
	nop	
	mov	qword ptr [rbp - 0x20], rdi
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 4], esi
	mov	esi, dword ptr [rbp - 4]
	cmp	qword ptr [rbp - 0x20], 0
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x14], esi
	je	.label_1212
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_1213
.label_1212:
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 0x10], rax
	lea	rdi, [rdi]
	jmp	.label_1213
.label_1213:
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rbp - 0x14]
	mov	dword ptr [rax], ecx
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x415ca0

	.globl set_char_quoting
	.type set_char_quoting, @function
set_char_quoting:
	lea	rsi, [rsi]
	push	rbp
	nop	
	mov	rbp, rsp
	mov	al, sil
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x18], rdi
	mov	byte ptr [rbp - 0x29], al
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 8], edx
	mov	rbp, rbp
	mov	al, byte ptr [rbp - 0x29]
	mov	rsp, rsp
	mov	byte ptr [rbp - 9], al
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x18], 0
	mov	rsp, rsp
	je	.label_1214
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x28], rax
	mov	rsp, rsp
	jmp	.label_1215
.label_1214:
	mov	rbp, rbp
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x28], rax
	lea	rsi, [rsi]
	jmp	.label_1215
.label_1215:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	add	rax, 8
	mov	rbp, rbp
	movzx	ecx, byte ptr [rbp - 9]
	mov	rbp, rbp
	mov	edx, ecx
	shr	rdx, 5
	mov	rbp, rbp
	shl	rdx, 2
	mov	rsp, rsp
	add	rax, rdx
	mov	qword ptr [rbp - 0x20], rax
	mov	rbp, rbp
	movzx	ecx, byte ptr [rbp - 9]
	mov	eax, ecx
	lea	rdi, [rdi]
	and	rax, 0x1f
	mov	rsp, rsp
	mov	ecx, eax
	mov	dword ptr [rbp - 0x34], ecx
	mov	rax, qword ptr [rbp - 0x20]
	mov	ecx, dword ptr [rax]
	mov	rbp, rbp
	mov	esi, dword ptr [rbp - 0x34]
	mov	dword ptr [rbp - 0x30], ecx
	nop	
	mov	ecx, esi
	nop	
	mov	esi, dword ptr [rbp - 0x30]
	shr	esi, cl
	mov	rbp, rbp
	and	esi, 1
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 4], esi
	mov	esi, dword ptr [rbp - 8]
	and	esi, 1
	lea	rsi, [rsi]
	xor	esi, dword ptr [rbp - 4]
	nop	
	mov	ecx, dword ptr [rbp - 0x34]
	nop	
	shl	esi, cl
	mov	rax, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	xor	esi, dword ptr [rax]
	mov	dword ptr [rax], esi
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 4]
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x415da0
	.globl set_quoting_flags
	.type set_quoting_flags, @function
set_quoting_flags:

	mov	rbp, rbp
	push	rbp
	nop	
	mov	rbp, rsp
	mov	qword ptr [rbp - 0x10], rdi
	mov	dword ptr [rbp - 4], esi
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x10], 0
	jne	.label_1216
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x10], rax
.label_1216:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	ecx, dword ptr [rax + 4]
	nop	
	mov	dword ptr [rbp - 0x14], ecx
	mov	ecx, dword ptr [rbp - 4]
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	dword ptr [rax + 4], ecx
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x14]
	nop	
	pop	rbp
	nop	
	ret	
	.section	.text
	.align	32
	#Procedure 0x415e00

	.globl set_custom_quoting
	.type set_custom_quoting, @function
set_custom_quoting:
	push	rbp
	mov	rbp, rsp
	lea	rdi, [rdi]
	sub	rsp, 0x20
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 8], rsi
	mov	qword ptr [rbp - 0x18], rdx
	cmp	qword ptr [rbp - 0x10], 0
	nop	
	jne	.label_1217
	lea	rsi, [rsi]
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 0x10], rax
.label_1217:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x10]
	mov	dword ptr [rax], 0xa
	nop	
	cmp	qword ptr [rbp - 8], 0
	lea	rsi, [rsi]
	je	.label_1219
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0x18], 0
	lea	rsi, [rsi]
	jne	.label_1218
.label_1219:
	call	abort
.label_1218:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 8]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rcx + 0x28], rax
	mov	rax, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	qword ptr [rcx + 0x30], rax
	add	rsp, 0x20
	pop	rbp
	mov	rbp, rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x415ea0
	.globl quotearg_buffer
	.type quotearg_buffer, @function
quotearg_buffer:

	push	rbp
	mov	rbp, rbp
	mov	rbp, rsp
	sub	rsp, 0x70
	mov	rbp, rbp
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x30], rsi
	mov	qword ptr [rbp - 0x20], rdx
	mov	qword ptr [rbp - 0x40], rcx
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x50], r8
	nop	
	cmp	qword ptr [rbp - 0x50], 0
	je	.label_1220
	mov	rax, qword ptr [rbp - 0x50]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x48], rax
	jmp	.label_1221
.label_1220:
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 0x48], rax
	mov	rbp, rbp
	jmp	.label_1221
.label_1221:
	nop	
	mov	rax, qword ptr [rbp - 0x48]
	mov	qword ptr [rbp - 0x38], rax
	call	__errno_location
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 0x24], ecx
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x30]
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x40]
	nop	
	mov	rax, qword ptr [rbp - 0x38]
	mov	r8d, dword ptr [rax]
	mov	rax, qword ptr [rbp - 0x38]
	mov	r9d, dword ptr [rax + 4]
	mov	rax, qword ptr [rbp - 0x38]
	add	rax, 8
	mov	r10, qword ptr [rbp - 0x38]
	mov	r10, qword ptr [r10 + 0x28]
	mov	r11, qword ptr [rbp - 0x38]
	mov	rbp, rbp
	mov	r11, qword ptr [r11 + 0x30]
	nop	
	mov	qword ptr [rsp], rax
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 8], r10
	mov	qword ptr [rsp + 0x10], r11
	call	quotearg_buffer_restyled
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x10], rax
	mov	r8d, dword ptr [rbp - 0x24]
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x14], r8d
	mov	rbp, rbp
	call	__errno_location
	mov	r8d, dword ptr [rbp - 0x14]
	mov	dword ptr [rax], r8d
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x10]
	nop	
	add	rsp, 0x70
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x415fa0

	.globl quotearg_buffer_restyled
	.type quotearg_buffer_restyled, @function
quotearg_buffer_restyled:
	push	rbp
	mov	rbp, rsp
	push	rbx
	lea	rsi, [rsi]
	sub	rsp, 0x168
	mov	rax, qword ptr [rbp + 0x20]
	mov	rsp, rsp
	mov	r10, qword ptr [rbp + 0x18]
	nop	
	mov	r11, qword ptr [rbp + 0x10]
	mov	qword ptr [rbp - 0xa0], rdi
	nop	
	mov	qword ptr [rbp - 0x28], rsi
	mov	qword ptr [rbp - 0x150], rdx
	mov	qword ptr [rbp - 0x68], rcx
	mov	dword ptr [rbp - 0x58], r8d
	mov	rbp, rbp
	mov	dword ptr [rbp - 0xa4], r9d
	mov	qword ptr [rbp - 0x100], r11
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x120], r10
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0xc0], rax
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x50], 0
	mov	qword ptr [rbp - 0x140], 0
	mov	qword ptr [rbp - 0x108], 0
	mov	rsp, rsp
	mov	qword ptr [rbp - 0xd0], 0
	mov	byte ptr [rbp - 0x89], 0
	mov	rbp, rbp
	call	__ctype_get_mb_cur_max
	mov	rbp, rbp
	cmp	rax, 1
	nop	
	sete	bl
	and	bl, 1
	mov	rbp, rbp
	mov	byte ptr [rbp - 0xb5], bl
	mov	r8d, dword ptr [rbp - 0xa4]
	and	r8d, 2
	mov	rsp, rsp
	cmp	r8d, 0
	setne	bl
	and	bl, 1
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x3e], bl
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x42], 0
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0xa5], 0
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0xb7], 1
.label_1246:
	mov	eax, dword ptr [rbp - 0x58]
	mov	rbp, rbp
	mov	ecx, eax
	lea	rsi, [rsi]
	mov	rdx, rcx
	sub	rdx, 0xa
	mov	qword ptr [rbp - 0x88], rcx
	mov	qword ptr [rbp - 0x130], rdx
	ja	.label_1339
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x88]
	lea	rdi, [rdi]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_1232]]
	jmp	rcx
.label_2328:
	mov	dword ptr [rbp - 0x58], 5
	mov	byte ptr [rbp - 0x3e], 1
.label_2327:
	test	byte ptr [rbp - 0x3e], 1
	mov	rsp, rsp
	jne	.label_1271
	jmp	.label_1311
.label_1311:
	mov	rax, qword ptr [rbp - 0x50]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rbp - 0x28]
	nop	
	jae	.label_1304
	mov	rax, qword ptr [rbp - 0x50]
	nop	
	mov	rcx, qword ptr [rbp - 0xa0]
	mov	byte ptr [rcx + rax], 0x22
.label_1304:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, 1
	mov	qword ptr [rbp - 0x50], rax
	mov	rsp, rsp
	jmp	.label_1271
.label_1271:
	movabs	rax, OFFSET FLAT:.str.10_3
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x89], 1
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x108], rax
	mov	qword ptr [rbp - 0xd0], 1
	jmp	.label_1291
.label_2329:
	nop	
	mov	byte ptr [rbp - 0x89], 1
	nop	
	mov	byte ptr [rbp - 0x3e], 0
	jmp	.label_1291
.label_2330:
	cmp	dword ptr [rbp - 0x58], 0xa
	je	.label_1301
	mov	rbp, rbp
	movabs	rdi, OFFSET FLAT:.str.11_3
	mov	rbp, rbp
	mov	esi, dword ptr [rbp - 0x58]
	mov	rsp, rsp
	call	gettext_quote
	lea	rdi, [rdi]
	movabs	rdi, OFFSET FLAT:.str.12_2
	mov	qword ptr [rbp - 0x120], rax
	mov	esi, dword ptr [rbp - 0x58]
	call	gettext_quote
	mov	qword ptr [rbp - 0xc0], rax
.label_1301:
	test	byte ptr [rbp - 0x3e], 1
	mov	rsp, rsp
	jne	.label_1315
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x120]
	mov	qword ptr [rbp - 0x108], rax
.label_1341:
	mov	rax, qword ptr [rbp - 0x108]
	lea	rdi, [rdi]
	cmp	byte ptr [rax], 0
	mov	rsp, rsp
	je	.label_1322
	jmp	.label_1381
.label_1381:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x50]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rbp - 0x28]
	nop	
	jae	.label_1326
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x108]
	lea	rdi, [rdi]
	mov	cl, byte ptr [rax]
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x50]
	mov	rdx, qword ptr [rbp - 0xa0]
	mov	byte ptr [rdx + rax], cl
.label_1326:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, 1
	nop	
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_1334
.label_1334:
	mov	rax, qword ptr [rbp - 0x108]
	lea	rdi, [rdi]
	add	rax, 1
	mov	qword ptr [rbp - 0x108], rax
	jmp	.label_1341
.label_1322:
	mov	rbp, rbp
	jmp	.label_1315
.label_1315:
	mov	byte ptr [rbp - 0x89], 1
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0xc0]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x108], rax
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x108]
	nop	
	call	strlen
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0xd0], rax
	mov	rbp, rbp
	jmp	.label_1291
.label_2325:
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x89], 1
.label_2324:
	mov	byte ptr [rbp - 0x3e], 1
.label_2326:
	nop	
	test	byte ptr [rbp - 0x3e], 1
	lea	rsi, [rsi]
	jne	.label_1358
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x89], 1
.label_1358:
	jmp	.label_1360
.label_1360:
	mov	dword ptr [rbp - 0x58], 2
	mov	rsp, rsp
	test	byte ptr [rbp - 0x3e], 1
	jne	.label_1361
	jmp	.label_1367
.label_1367:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x50]
	cmp	rax, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	jae	.label_1369
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rbp - 0xa0]
	mov	byte ptr [rcx + rax], 0x27
.label_1369:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, 1
	mov	qword ptr [rbp - 0x50], rax
	lea	rdi, [rdi]
	jmp	.label_1361
.label_1361:
	movabs	rax, OFFSET FLAT:.str.12_2
	mov	qword ptr [rbp - 0x108], rax
	mov	qword ptr [rbp - 0xd0], 1
	mov	rsp, rsp
	jmp	.label_1291
.label_2323:
	mov	byte ptr [rbp - 0x3e], 0
	jmp	.label_1291
.label_1339:
	call	abort
.label_1291:
	mov	qword ptr [rbp - 0xd8], 0
.label_1389:
	cmp	qword ptr [rbp - 0x68], -1
	jne	.label_1386
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0xd8]
	mov	rcx, qword ptr [rbp - 0x150]
	movsx	edx, byte ptr [rcx + rax]
	cmp	edx, 0
	sete	sil
	and	sil, 1
	nop	
	movzx	edx, sil
	nop	
	mov	dword ptr [rbp - 0x7c], edx
	jmp	.label_1387
.label_1386:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0xd8]
	cmp	rax, qword ptr [rbp - 0x68]
	nop	
	sete	cl
	and	cl, 1
	movzx	edx, cl
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x7c], edx
.label_1387:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x7c]
	lea	rdi, [rdi]
	cmp	eax, 0
	setne	cl
	xor	cl, 0xff
	mov	rbp, rbp
	test	cl, 1
	jne	.label_1404
	mov	rbp, rbp
	jmp	.label_1412
.label_1404:
	mov	rbp, rbp
	mov	byte ptr [rbp - 0xa6], 0
	nop	
	mov	byte ptr [rbp - 0x3f], 0
	mov	byte ptr [rbp - 0x91], 0
	test	byte ptr [rbp - 0x89], 1
	mov	rsp, rsp
	je	.label_1245
	cmp	dword ptr [rbp - 0x58], 2
	lea	rsi, [rsi]
	je	.label_1245
	cmp	qword ptr [rbp - 0xd0], 0
	je	.label_1245
	mov	rax, qword ptr [rbp - 0xd8]
	lea	rdi, [rdi]
	add	rax, qword ptr [rbp - 0xd0]
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0x68], -1
	mov	qword ptr [rbp - 0x38], rax
	lea	rsi, [rsi]
	jne	.label_1226
	mov	rsp, rsp
	mov	eax, 1
	mov	rbp, rbp
	mov	ecx, eax
	cmp	rcx, qword ptr [rbp - 0xd0]
	jae	.label_1226
	mov	rdi, qword ptr [rbp - 0x150]
	lea	rdi, [rdi]
	call	strlen
	mov	qword ptr [rbp - 0x68], rax
	mov	qword ptr [rbp - 0xc8], rax
	jmp	.label_1240
.label_1226:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x68]
	mov	qword ptr [rbp - 0xc8], rax
.label_1240:
	mov	rax, qword ptr [rbp - 0xc8]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x38]
	cmp	rcx, rax
	mov	rsp, rsp
	ja	.label_1245
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x150]
	mov	rsp, rsp
	add	rax, qword ptr [rbp - 0xd8]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x108]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0xd0]
	mov	rdi, rax
	call	memcmp
	cmp	eax, 0
	jne	.label_1245
	nop	
	test	byte ptr [rbp - 0x3e], 1
	mov	rsp, rsp
	je	.label_1269
	jmp	.label_1229
.label_1269:
	nop	
	mov	byte ptr [rbp - 0xa6], 1
.label_1245:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0xd8]
	mov	rcx, qword ptr [rbp - 0x150]
	mov	dl, byte ptr [rcx + rax]
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x3d], dl
	movzx	esi, byte ptr [rbp - 0x3d]
	lea	rdi, [rdi]
	mov	eax, esi
	nop	
	mov	rcx, rax
	lea	rsi, [rsi]
	sub	rcx, 0x7e
	mov	qword ptr [rbp - 0x70], rax
	mov	qword ptr [rbp - 0x18], rcx
	ja	.label_1275
	mov	rax, qword ptr [rbp - 0x70]
	lea	rsi, [rsi]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_1288]]
	nop	
	jmp	rcx
.label_2356:
	mov	rbp, rbp
	test	byte ptr [rbp - 0x89], 1
	je	.label_1293
	mov	rsp, rsp
	jmp	.label_1297
.label_1297:
	test	byte ptr [rbp - 0x3e], 1
	je	.label_1299
	jmp	.label_1229
.label_1299:
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x3f], 1
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x58], 2
	jne	.label_1225
	mov	rbp, rbp
	test	byte ptr [rbp - 0x42], 1
	mov	rbp, rbp
	jne	.label_1225
	nop	
	jmp	.label_1306
.label_1306:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x50]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rbp - 0x28]
	jae	.label_1309
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x50]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0xa0]
	lea	rsi, [rsi]
	mov	byte ptr [rcx + rax], 0x27
.label_1309:
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, 1
	nop	
	mov	qword ptr [rbp - 0x50], rax
	lea	rdi, [rdi]
	jmp	.label_1317
.label_1317:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x50]
	cmp	rax, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	jae	.label_1321
	mov	rax, qword ptr [rbp - 0x50]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0xa0]
	mov	rsp, rsp
	mov	byte ptr [rcx + rax], 0x24
.label_1321:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x50]
	mov	rsp, rsp
	add	rax, 1
	nop	
	mov	qword ptr [rbp - 0x50], rax
	lea	rsi, [rsi]
	jmp	.label_1329
.label_1329:
	nop	
	mov	rax, qword ptr [rbp - 0x50]
	mov	rbp, rbp
	cmp	rax, qword ptr [rbp - 0x28]
	jae	.label_1333
	nop	
	mov	rax, qword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rbp - 0xa0]
	mov	byte ptr [rcx + rax], 0x27
.label_1333:
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, 1
	mov	qword ptr [rbp - 0x50], rax
	mov	byte ptr [rbp - 0x42], 1
.label_1225:
	lea	rsi, [rsi]
	jmp	.label_1344
.label_1344:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x50]
	cmp	rax, qword ptr [rbp - 0x28]
	jae	.label_1345
	mov	rax, qword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rbp - 0xa0]
	mov	rsp, rsp
	mov	byte ptr [rcx + rax], 0x5c
.label_1345:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x50]
	mov	rbp, rbp
	add	rax, 1
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_1332
.label_1332:
	cmp	dword ptr [rbp - 0x58], 2
	je	.label_1290
	mov	rax, qword ptr [rbp - 0xd8]
	add	rax, 1
	cmp	rax, qword ptr [rbp - 0x68]
	jae	.label_1290
	mov	eax, 0x30
	mov	rcx, qword ptr [rbp - 0xd8]
	mov	rdx, qword ptr [rbp - 0x150]
	nop	
	movsx	esi, byte ptr [rdx + rcx + 1]
	cmp	eax, esi
	jg	.label_1290
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0xd8]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x150]
	mov	rbp, rbp
	movsx	edx, byte ptr [rcx + rax + 1]
	mov	rbp, rbp
	cmp	edx, 0x39
	nop	
	jg	.label_1290
	nop	
	jmp	.label_1373
.label_1373:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x50]
	nop	
	cmp	rax, qword ptr [rbp - 0x28]
	nop	
	jae	.label_1374
	mov	rax, qword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rbp - 0xa0]
	mov	byte ptr [rcx + rax], 0x30
.label_1374:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, 1
	nop	
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_1366
.label_1366:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x50]
	mov	rsp, rsp
	cmp	rax, qword ptr [rbp - 0x28]
	jae	.label_1368
	mov	rax, qword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rbp - 0xa0]
	lea	rsi, [rsi]
	mov	byte ptr [rcx + rax], 0x30
.label_1368:
	nop	
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, 1
	nop	
	mov	qword ptr [rbp - 0x50], rax
	lea	rdi, [rdi]
	jmp	.label_1290
.label_1290:
	mov	byte ptr [rbp - 0x3d], 0x30
	nop	
	jmp	.label_1390
.label_1293:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0xa4]
	nop	
	and	eax, 1
	mov	rsp, rsp
	cmp	eax, 0
	je	.label_1244
	mov	rbp, rbp
	jmp	.label_1283
.label_1244:
	jmp	.label_1390
.label_1390:
	jmp	.label_1287
.label_2367:
	mov	eax, dword ptr [rbp - 0x58]
	mov	ecx, eax
	sub	ecx, 2
	mov	dword ptr [rbp - 0x78], eax
	nop	
	mov	dword ptr [rbp - 0x90], ecx
	mov	rsp, rsp
	je	.label_1402
	mov	rbp, rbp
	jmp	.label_1408
.label_1408:
	mov	eax, dword ptr [rbp - 0x78]
	mov	rbp, rbp
	sub	eax, 5
	mov	rsp, rsp
	mov	dword ptr [rbp - 0xb4], eax
	lea	rsi, [rsi]
	je	.label_1410
	jmp	.label_1416
.label_1402:
	mov	rsp, rsp
	test	byte ptr [rbp - 0x3e], 1
	nop	
	je	.label_1417
	jmp	.label_1229
.label_1417:
	jmp	.label_1256
.label_1410:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0xa4]
	and	eax, 4
	cmp	eax, 0
	je	.label_1224
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0xd8]
	add	rax, 2
	cmp	rax, qword ptr [rbp - 0x68]
	nop	
	jae	.label_1224
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0xd8]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x150]
	movsx	edx, byte ptr [rcx + rax + 1]
	mov	rbp, rbp
	cmp	edx, 0x3f
	lea	rdi, [rdi]
	jne	.label_1224
	mov	rax, qword ptr [rbp - 0xd8]
	mov	rcx, qword ptr [rbp - 0x150]
	lea	rdi, [rdi]
	movsx	edx, byte ptr [rax + rcx + 2]
	nop	
	mov	esi, edx
	sub	esi, 0x21
	mov	dword ptr [rbp - 0x144], edx
	mov	dword ptr [rbp - 0xdc], esi
	lea	rdi, [rdi]
	je	.label_1247
	nop	
	jmp	.label_1365
.label_1365:
	nop	
	mov	eax, dword ptr [rbp - 0x144]
	add	eax, -0x27
	sub	eax, 3
	mov	dword ptr [rbp - 0x54], eax
	mov	rsp, rsp
	jb	.label_1247
	jmp	.label_1257
.label_1257:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x144]
	mov	rbp, rbp
	sub	eax, 0x2d
	mov	dword ptr [rbp - 0x5c], eax
	mov	rsp, rsp
	je	.label_1247
	jmp	.label_1265
.label_1265:
	mov	eax, dword ptr [rbp - 0x144]
	lea	rsi, [rsi]
	sub	eax, 0x2f
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x128], eax
	je	.label_1247
	jmp	.label_1278
.label_1278:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x144]
	add	eax, -0x3c
	sub	eax, 2
	mov	dword ptr [rbp - 0xf4], eax
	lea	rdi, [rdi]
	ja	.label_1266
	jmp	.label_1247
.label_1247:
	lea	rdi, [rdi]
	test	byte ptr [rbp - 0x3e], 1
	nop	
	je	.label_1279
	jmp	.label_1229
.label_1279:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0xd8]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x150]
	lea	rdi, [rdi]
	mov	dl, byte ptr [rcx + rax + 2]
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x3d], dl
	mov	rax, qword ptr [rbp - 0xd8]
	lea	rdi, [rdi]
	add	rax, 2
	mov	qword ptr [rbp - 0xd8], rax
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x50]
	cmp	rax, qword ptr [rbp - 0x28]
	jae	.label_1284
	mov	rax, qword ptr [rbp - 0x50]
	nop	
	mov	rcx, qword ptr [rbp - 0xa0]
	mov	rsp, rsp
	mov	byte ptr [rcx + rax], 0x3f
.label_1284:
	nop	
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, 1
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_1303
.label_1303:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x50]
	cmp	rax, qword ptr [rbp - 0x28]
	jae	.label_1307
	mov	rax, qword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rbp - 0xa0]
	lea	rsi, [rsi]
	mov	byte ptr [rcx + rax], 0x22
.label_1307:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, 1
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_1312
.label_1312:
	nop	
	mov	rax, qword ptr [rbp - 0x50]
	cmp	rax, qword ptr [rbp - 0x28]
	jae	.label_1319
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x50]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0xa0]
	lea	rsi, [rsi]
	mov	byte ptr [rcx + rax], 0x22
.label_1319:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, 1
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_1324
.label_1324:
	mov	rax, qword ptr [rbp - 0x50]
	cmp	rax, qword ptr [rbp - 0x28]
	jae	.label_1305
	mov	rax, qword ptr [rbp - 0x50]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0xa0]
	lea	rsi, [rsi]
	mov	byte ptr [rcx + rax], 0x3f
.label_1305:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, 1
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_1231
.label_1266:
	jmp	.label_1231
.label_1231:
	jmp	.label_1224
.label_1224:
	jmp	.label_1256
.label_1416:
	jmp	.label_1256
.label_1256:
	jmp	.label_1287
.label_2357:
	mov	byte ptr [rbp - 0xb6], 0x61
	jmp	.label_1347
.label_2358:
	mov	rbp, rbp
	mov	byte ptr [rbp - 0xb6], 0x62
	jmp	.label_1347
.label_2362:
	mov	byte ptr [rbp - 0xb6], 0x66
	lea	rdi, [rdi]
	jmp	.label_1347
.label_2360:
	mov	byte ptr [rbp - 0xb6], 0x6e
	mov	rbp, rbp
	jmp	.label_1353
.label_2363:
	mov	byte ptr [rbp - 0xb6], 0x72
	mov	rbp, rbp
	jmp	.label_1353
.label_2359:
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0xb6], 0x74
	jmp	.label_1353
.label_2361:
	mov	byte ptr [rbp - 0xb6], 0x76
	jmp	.label_1347
.label_2368:
	mov	al, byte ptr [rbp - 0x3d]
	nop	
	mov	byte ptr [rbp - 0xb6], al
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x58], 2
	jne	.label_1419
	lea	rdi, [rdi]
	test	byte ptr [rbp - 0x3e], 1
	nop	
	je	.label_1364
	nop	
	jmp	.label_1229
.label_1364:
	lea	rsi, [rsi]
	jmp	.label_1248
.label_1419:
	test	byte ptr [rbp - 0x89], 1
	je	.label_1370
	mov	rsp, rsp
	test	byte ptr [rbp - 0x3e], 1
	lea	rsi, [rsi]
	je	.label_1370
	nop	
	cmp	qword ptr [rbp - 0xd0], 0
	mov	rbp, rbp
	je	.label_1370
	jmp	.label_1248
.label_1370:
	jmp	.label_1353
.label_1353:
	mov	rsp, rsp
	cmp	dword ptr [rbp - 0x58], 2
	lea	rsi, [rsi]
	jne	.label_1380
	test	byte ptr [rbp - 0x3e], 1
	je	.label_1380
	jmp	.label_1229
.label_1380:
	mov	rsp, rsp
	jmp	.label_1347
.label_1347:
	test	byte ptr [rbp - 0x89], 1
	lea	rdi, [rdi]
	je	.label_1383
	mov	rsp, rsp
	mov	al, byte ptr [rbp - 0xb6]
	mov	byte ptr [rbp - 0x3d], al
	jmp	.label_1289
.label_1383:
	jmp	.label_1287
.label_2369:
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x68], -1
	jne	.label_1391
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x150]
	nop	
	movsx	ecx, byte ptr [rax + 1]
	cmp	ecx, 0
	lea	rsi, [rsi]
	je	.label_1395
	jmp	.label_1401
.label_1391:
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x68], 1
	je	.label_1395
.label_1401:
	nop	
	jmp	.label_1287
.label_1395:
	jmp	.label_1406
.label_1406:
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0xd8], 0
	mov	rbp, rbp
	je	.label_1327
	lea	rsi, [rsi]
	jmp	.label_1287
.label_1327:
	nop	
	jmp	.label_1413
.label_1413:
	mov	byte ptr [rbp - 0x91], 1
.label_2364:
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x58], 2
	jne	.label_1415
	test	byte ptr [rbp - 0x3e], 1
	lea	rdi, [rdi]
	je	.label_1415
	jmp	.label_1229
.label_1415:
	lea	rsi, [rsi]
	jmp	.label_1287
.label_2366:
	mov	rbp, rbp
	mov	byte ptr [rbp - 0xa5], 1
	mov	byte ptr [rbp - 0x91], 1
	nop	
	cmp	dword ptr [rbp - 0x58], 2
	lea	rdi, [rdi]
	jne	.label_1422
	test	byte ptr [rbp - 0x3e], 1
	nop	
	je	.label_1228
	jmp	.label_1229
.label_1228:
	cmp	qword ptr [rbp - 0x28], 0
	je	.label_1230
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x140], 0
	lea	rdi, [rdi]
	jne	.label_1230
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x140], rax
	mov	qword ptr [rbp - 0x28], 0
.label_1230:
	jmp	.label_1241
.label_1241:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x50]
	cmp	rax, qword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	jae	.label_1242
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x50]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0xa0]
	mov	rbp, rbp
	mov	byte ptr [rcx + rax], 0x27
.label_1242:
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, 1
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_1253
.label_1253:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x50]
	cmp	rax, qword ptr [rbp - 0x28]
	mov	rbp, rbp
	jae	.label_1261
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rbp - 0xa0]
	lea	rsi, [rsi]
	mov	byte ptr [rcx + rax], 0x5c
.label_1261:
	mov	rax, qword ptr [rbp - 0x50]
	lea	rdi, [rdi]
	add	rax, 1
	mov	qword ptr [rbp - 0x50], rax
	nop	
	jmp	.label_1270
.label_1270:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x50]
	mov	rsp, rsp
	cmp	rax, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	jae	.label_1273
	mov	rax, qword ptr [rbp - 0x50]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0xa0]
	mov	byte ptr [rcx + rax], 0x27
.label_1273:
	mov	rax, qword ptr [rbp - 0x50]
	lea	rdi, [rdi]
	add	rax, 1
	mov	qword ptr [rbp - 0x50], rax
	mov	byte ptr [rbp - 0x42], 0
.label_1422:
	lea	rsi, [rsi]
	jmp	.label_1287
.label_2365:
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x91], 1
	jmp	.label_1287
.label_1275:
	lea	rdi, [rdi]
	test	byte ptr [rbp - 0xb5], 1
	je	.label_1294
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x110], 1
	movzx	eax, byte ptr [rbp - 0x3d]
	movsxd	rcx, eax
	mov	qword ptr [rbp - 0xf0], rcx
	call	__ctype_b_loc
	mov	rsp, rsp
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0xf0]
	movzx	edx, word ptr [rax + rcx*2]
	and	edx, 0x4000
	nop	
	cmp	edx, 0
	lea	rdi, [rdi]
	setne	sil
	and	sil, 1
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x40], sil
	lea	rsi, [rsi]
	jmp	.label_1237
.label_1294:
	xor	esi, esi
	mov	eax, 8
	lea	rdi, [rdi]
	mov	edx, eax
	lea	rcx, [rbp - 0x118]
	mov	rdi, rcx
	call	memset
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x110], 0
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x40], 1
	cmp	qword ptr [rbp - 0x68], -1
	mov	rsp, rsp
	jne	.label_1318
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x150]
	call	strlen
	mov	qword ptr [rbp - 0x68], rax
.label_1318:
	jmp	.label_1328
.label_1328:
	lea	rdi, [rbp - 0x74]
	lea	rdi, [rdi]
	lea	rcx, [rbp - 0x118]
	nop	
	mov	rax, qword ptr [rbp - 0xd8]
	add	rax, qword ptr [rbp - 0x110]
	add	rax, qword ptr [rbp - 0x150]
	nop	
	mov	rdx, qword ptr [rbp - 0x68]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0xd8]
	add	rsi, qword ptr [rbp - 0x110]
	sub	rdx, rsi
	nop	
	mov	rsi, rax
	mov	rsp, rsp
	call	rpl_mbrtowc
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x10], rax
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x10], 0
	mov	rbp, rbp
	jne	.label_1343
	jmp	.label_1323
.label_1343:
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x10], -1
	jne	.label_1348
	mov	byte ptr [rbp - 0x40], 0
	jmp	.label_1323
.label_1348:
	nop	
	cmp	qword ptr [rbp - 0x10], -2
	jne	.label_1352
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x40], 0
.label_1371:
	lea	rdi, [rdi]
	xor	eax, eax
	lea	rdi, [rdi]
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0xd8]
	add	rdx, qword ptr [rbp - 0x110]
	lea	rsi, [rsi]
	cmp	rdx, qword ptr [rbp - 0x68]
	mov	byte ptr [rbp - 0x41], cl
	mov	rsp, rsp
	jae	.label_1355
	mov	rax, qword ptr [rbp - 0xd8]
	add	rax, qword ptr [rbp - 0x110]
	mov	rcx, qword ptr [rbp - 0x150]
	movsx	edx, byte ptr [rcx + rax]
	mov	rbp, rbp
	cmp	edx, 0
	setne	sil
	mov	byte ptr [rbp - 0x41], sil
.label_1355:
	mov	al, byte ptr [rbp - 0x41]
	test	al, 1
	jne	.label_1405
	jmp	.label_1286
.label_1405:
	mov	rax, qword ptr [rbp - 0x110]
	add	rax, 1
	mov	qword ptr [rbp - 0x110], rax
	jmp	.label_1371
.label_1286:
	jmp	.label_1323
.label_1352:
	test	byte ptr [rbp - 0x3e], 1
	je	.label_1223
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x58], 2
	mov	rsp, rsp
	jne	.label_1223
	mov	qword ptr [rbp - 0xe8], 1
.label_1420:
	mov	rax, qword ptr [rbp - 0xe8]
	nop	
	cmp	rax, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	jae	.label_1363
	mov	rax, qword ptr [rbp - 0xd8]
	mov	rcx, qword ptr [rbp - 0x110]
	lea	rdi, [rdi]
	add	rax, rcx
	mov	rcx, qword ptr [rbp - 0xe8]
	add	rax, rcx
	mov	rcx, qword ptr [rbp - 0x150]
	movsx	edx, byte ptr [rcx + rax]
	mov	esi, edx
	mov	rsp, rsp
	add	esi, -0x5b
	sub	esi, 2
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x2c], edx
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x124], esi
	jb	.label_1320
	jmp	.label_1398
.label_1398:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x2c]
	sub	eax, 0x5e
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x148], eax
	je	.label_1320
	jmp	.label_1403
.label_1403:
	mov	eax, dword ptr [rbp - 0x2c]
	sub	eax, 0x60
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x3c], eax
	mov	rsp, rsp
	je	.label_1320
	jmp	.label_1409
.label_1409:
	mov	eax, dword ptr [rbp - 0x2c]
	lea	rdi, [rdi]
	sub	eax, 0x7c
	mov	dword ptr [rbp - 0x48], eax
	jne	.label_1411
	mov	rsp, rsp
	jmp	.label_1320
.label_1320:
	mov	rsp, rsp
	jmp	.label_1229
.label_1411:
	jmp	.label_1418
.label_1418:
	mov	rsp, rsp
	jmp	.label_1385
.label_1385:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0xe8]
	add	rax, 1
	mov	qword ptr [rbp - 0xe8], rax
	jmp	.label_1420
.label_1363:
	mov	rbp, rbp
	jmp	.label_1223
.label_1223:
	mov	rbp, rbp
	mov	edi, dword ptr [rbp - 0x74]
	call	iswprint
	cmp	eax, 0
	jne	.label_1249
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x40], 0
.label_1249:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	add	rax, qword ptr [rbp - 0x110]
	mov	qword ptr [rbp - 0x110], rax
	jmp	.label_1274
.label_1274:
	lea	rsi, [rsi]
	jmp	.label_1235
.label_1235:
	jmp	.label_1238
.label_1238:
	lea	rsi, [rsi]
	lea	rdi, [rbp - 0x118]
	nop	
	call	mbsinit
	mov	rbp, rbp
	cmp	eax, 0
	mov	rsp, rsp
	setne	cl
	lea	rdi, [rdi]
	xor	cl, 0xff
	lea	rdi, [rdi]
	test	cl, 1
	jne	.label_1328
.label_1323:
	jmp	.label_1237
.label_1237:
	mov	rsp, rsp
	mov	eax, 1
	mov	rsp, rsp
	mov	ecx, eax
	mov	dl, byte ptr [rbp - 0x40]
	and	dl, 1
	mov	byte ptr [rbp - 0x91], dl
	cmp	rcx, qword ptr [rbp - 0x110]
	nop	
	jb	.label_1250
	lea	rsi, [rsi]
	test	byte ptr [rbp - 0x89], 1
	lea	rdi, [rdi]
	je	.label_1264
	mov	rsp, rsp
	test	byte ptr [rbp - 0x40], 1
	mov	rsp, rsp
	jne	.label_1264
.label_1250:
	mov	rax, qword ptr [rbp - 0xd8]
	mov	rbp, rbp
	add	rax, qword ptr [rbp - 0x110]
	nop	
	mov	qword ptr [rbp - 0x20], rax
.label_1233:
	mov	rbp, rbp
	test	byte ptr [rbp - 0x89], 1
	nop	
	je	.label_1276
	mov	rsp, rsp
	test	byte ptr [rbp - 0x40], 1
	jne	.label_1276
	jmp	.label_1281
.label_1281:
	test	byte ptr [rbp - 0x3e], 1
	lea	rsi, [rsi]
	je	.label_1282
	jmp	.label_1229
.label_1282:
	mov	byte ptr [rbp - 0x3f], 1
	nop	
	cmp	dword ptr [rbp - 0x58], 2
	lea	rdi, [rdi]
	jne	.label_1234
	test	byte ptr [rbp - 0x42], 1
	jne	.label_1234
	lea	rdi, [rdi]
	jmp	.label_1295
.label_1295:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x50]
	mov	rbp, rbp
	cmp	rax, qword ptr [rbp - 0x28]
	jae	.label_1393
	mov	rax, qword ptr [rbp - 0x50]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0xa0]
	mov	byte ptr [rcx + rax], 0x27
.label_1393:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x50]
	lea	rsi, [rsi]
	add	rax, 1
	mov	qword ptr [rbp - 0x50], rax
	lea	rsi, [rsi]
	jmp	.label_1302
.label_1302:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x50]
	mov	rbp, rbp
	cmp	rax, qword ptr [rbp - 0x28]
	jae	.label_1277
	mov	rax, qword ptr [rbp - 0x50]
	nop	
	mov	rcx, qword ptr [rbp - 0xa0]
	mov	byte ptr [rcx + rax], 0x24
.label_1277:
	mov	rax, qword ptr [rbp - 0x50]
	nop	
	add	rax, 1
	mov	qword ptr [rbp - 0x50], rax
	nop	
	jmp	.label_1313
.label_1313:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x50]
	cmp	rax, qword ptr [rbp - 0x28]
	jae	.label_1252
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x50]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0xa0]
	mov	byte ptr [rcx + rax], 0x27
.label_1252:
	mov	rax, qword ptr [rbp - 0x50]
	mov	rsp, rsp
	add	rax, 1
	mov	qword ptr [rbp - 0x50], rax
	mov	byte ptr [rbp - 0x42], 1
.label_1234:
	jmp	.label_1330
.label_1330:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x50]
	cmp	rax, qword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	jae	.label_1331
	mov	rax, qword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rbp - 0xa0]
	lea	rsi, [rsi]
	mov	byte ptr [rcx + rax], 0x5c
.label_1331:
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, 1
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_1340
.label_1340:
	jmp	.label_1280
.label_1280:
	mov	rax, qword ptr [rbp - 0x50]
	nop	
	cmp	rax, qword ptr [rbp - 0x28]
	jae	.label_1342
	nop	
	movzx	eax, byte ptr [rbp - 0x3d]
	nop	
	sar	eax, 6
	mov	rsp, rsp
	add	eax, 0x30
	mov	cl, al
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x50]
	mov	rsi, qword ptr [rbp - 0xa0]
	lea	rdi, [rdi]
	mov	byte ptr [rsi + rdx], cl
.label_1342:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x50]
	mov	rbp, rbp
	add	rax, 1
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x50], rax
	lea	rsi, [rsi]
	jmp	.label_1351
.label_1351:
	mov	rax, qword ptr [rbp - 0x50]
	cmp	rax, qword ptr [rbp - 0x28]
	nop	
	jae	.label_1356
	mov	rsp, rsp
	movzx	eax, byte ptr [rbp - 0x3d]
	mov	rbp, rbp
	sar	eax, 3
	lea	rsi, [rsi]
	and	eax, 7
	add	eax, 0x30
	lea	rsi, [rsi]
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x50]
	mov	rsi, qword ptr [rbp - 0xa0]
	mov	byte ptr [rsi + rdx], cl
.label_1356:
	mov	rax, qword ptr [rbp - 0x50]
	mov	rsp, rsp
	add	rax, 1
	nop	
	mov	qword ptr [rbp - 0x50], rax
	movzx	eax, byte ptr [rbp - 0x3d]
	lea	rsi, [rsi]
	and	eax, 7
	lea	rdi, [rdi]
	add	eax, 0x30
	mov	cl, al
	mov	byte ptr [rbp - 0x3d], cl
	jmp	.label_1362
.label_1276:
	test	byte ptr [rbp - 0xa6], 1
	lea	rsi, [rsi]
	je	.label_1372
	lea	rdi, [rdi]
	jmp	.label_1375
.label_1375:
	nop	
	mov	rax, qword ptr [rbp - 0x50]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	jae	.label_1325
	mov	rax, qword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rbp - 0xa0]
	mov	byte ptr [rcx + rax], 0x5c
.label_1325:
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, 1
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x50], rax
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0xa6], 0
.label_1372:
	nop	
	jmp	.label_1362
.label_1362:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0xd8]
	add	rcx, 1
	cmp	rax, rcx
	mov	rsp, rsp
	ja	.label_1384
	jmp	.label_1388
.label_1384:
	lea	rsi, [rsi]
	jmp	.label_1392
.label_1392:
	test	byte ptr [rbp - 0x42], 1
	je	.label_1394
	lea	rsi, [rsi]
	test	byte ptr [rbp - 0x3f], 1
	jne	.label_1394
	lea	rsi, [rsi]
	jmp	.label_1399
.label_1399:
	mov	rax, qword ptr [rbp - 0x50]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rbp - 0x28]
	jae	.label_1400
	nop	
	mov	rax, qword ptr [rbp - 0x50]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0xa0]
	nop	
	mov	byte ptr [rcx + rax], 0x27
.label_1400:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x50]
	mov	rsp, rsp
	add	rax, 1
	mov	qword ptr [rbp - 0x50], rax
	lea	rsi, [rsi]
	jmp	.label_1407
.label_1407:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x50]
	cmp	rax, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	jae	.label_1414
	mov	rax, qword ptr [rbp - 0x50]
	nop	
	mov	rcx, qword ptr [rbp - 0xa0]
	lea	rdi, [rdi]
	mov	byte ptr [rcx + rax], 0x27
.label_1414:
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, 1
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x50], rax
	mov	byte ptr [rbp - 0x42], 0
.label_1394:
	nop	
	jmp	.label_1222
.label_1222:
	mov	rsp, rsp
	jmp	.label_1338
.label_1338:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x50]
	cmp	rax, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	jae	.label_1227
	lea	rdi, [rdi]
	mov	al, byte ptr [rbp - 0x3d]
	mov	rcx, qword ptr [rbp - 0x50]
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0xa0]
	mov	rbp, rbp
	mov	byte ptr [rdx + rcx], al
.label_1227:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, 1
	mov	qword ptr [rbp - 0x50], rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0xd8]
	mov	rcx, rax
	lea	rdi, [rdi]
	add	rcx, 1
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0xd8], rcx
	mov	rcx, qword ptr [rbp - 0x150]
	mov	dl, byte ptr [rcx + rax + 1]
	nop	
	mov	byte ptr [rbp - 0x3d], dl
	jmp	.label_1233
.label_1388:
	mov	rsp, rsp
	jmp	.label_1248
.label_1264:
	lea	rsi, [rsi]
	jmp	.label_1287
.label_1287:
	test	byte ptr [rbp - 0x89], 1
	mov	rbp, rbp
	je	.label_1254
	cmp	dword ptr [rbp - 0x58], 2
	jne	.label_1259
.label_1254:
	test	byte ptr [rbp - 0x3e], 1
	je	.label_1263
.label_1259:
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x100], 0
	nop	
	je	.label_1263
	movzx	eax, byte ptr [rbp - 0x3d]
	lea	rsi, [rsi]
	mov	ecx, eax
	shr	rcx, 5
	mov	rdx, qword ptr [rbp - 0x100]
	mov	eax, dword ptr [rdx + rcx*4]
	nop	
	movzx	esi, byte ptr [rbp - 0x3d]
	lea	rsi, [rsi]
	mov	ecx, esi
	and	rcx, 0x1f
	lea	rdi, [rdi]
	mov	esi, ecx
	mov	ecx, esi
	shr	eax, cl
	lea	rdi, [rdi]
	and	eax, 1
	cmp	eax, 0
	lea	rdi, [rdi]
	jne	.label_1267
.label_1263:
	lea	rdi, [rdi]
	test	byte ptr [rbp - 0xa6], 1
	lea	rdi, [rdi]
	jne	.label_1267
	mov	rsp, rsp
	jmp	.label_1248
.label_1267:
	nop	
	jmp	.label_1289
.label_1289:
	jmp	.label_1292
.label_1292:
	test	byte ptr [rbp - 0x3e], 1
	mov	rbp, rbp
	je	.label_1377
	jmp	.label_1229
.label_1377:
	mov	byte ptr [rbp - 0x3f], 1
	cmp	dword ptr [rbp - 0x58], 2
	lea	rdi, [rdi]
	jne	.label_1296
	test	byte ptr [rbp - 0x42], 1
	lea	rdi, [rdi]
	jne	.label_1296
	lea	rdi, [rdi]
	jmp	.label_1300
.label_1300:
	nop	
	mov	rax, qword ptr [rbp - 0x50]
	mov	rsp, rsp
	cmp	rax, qword ptr [rbp - 0x28]
	nop	
	jae	.label_1316
	mov	rax, qword ptr [rbp - 0x50]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0xa0]
	nop	
	mov	byte ptr [rcx + rax], 0x27
.label_1316:
	mov	rax, qword ptr [rbp - 0x50]
	lea	rdi, [rdi]
	add	rax, 1
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x50], rax
	lea	rdi, [rdi]
	jmp	.label_1310
.label_1310:
	mov	rax, qword ptr [rbp - 0x50]
	lea	rdi, [rdi]
	cmp	rax, qword ptr [rbp - 0x28]
	jae	.label_1314
	mov	rax, qword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rbp - 0xa0]
	lea	rdi, [rdi]
	mov	byte ptr [rcx + rax], 0x24
.label_1314:
	nop	
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, 1
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x50], rax
	lea	rdi, [rdi]
	jmp	.label_1359
.label_1359:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x50]
	cmp	rax, qword ptr [rbp - 0x28]
	nop	
	jae	.label_1397
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rbp - 0xa0]
	lea	rsi, [rsi]
	mov	byte ptr [rcx + rax], 0x27
.label_1397:
	mov	rax, qword ptr [rbp - 0x50]
	lea	rdi, [rdi]
	add	rax, 1
	mov	qword ptr [rbp - 0x50], rax
	mov	byte ptr [rbp - 0x42], 1
.label_1296:
	jmp	.label_1251
.label_1251:
	nop	
	mov	rax, qword ptr [rbp - 0x50]
	mov	rsp, rsp
	cmp	rax, qword ptr [rbp - 0x28]
	jae	.label_1336
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rbp - 0xa0]
	nop	
	mov	byte ptr [rcx + rax], 0x5c
.label_1336:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x50]
	lea	rdi, [rdi]
	add	rax, 1
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_1346
.label_1346:
	nop	
	jmp	.label_1248
.label_1248:
	jmp	.label_1349
.label_1349:
	lea	rdi, [rdi]
	test	byte ptr [rbp - 0x42], 1
	je	.label_1350
	test	byte ptr [rbp - 0x3f], 1
	jne	.label_1350
	lea	rdi, [rdi]
	jmp	.label_1354
.label_1354:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x50]
	cmp	rax, qword ptr [rbp - 0x28]
	jae	.label_1357
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x50]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0xa0]
	mov	byte ptr [rcx + rax], 0x27
.label_1357:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x50]
	mov	rbp, rbp
	add	rax, 1
	nop	
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_1421
.label_1421:
	mov	rax, qword ptr [rbp - 0x50]
	nop	
	cmp	rax, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	jae	.label_1337
	mov	rax, qword ptr [rbp - 0x50]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0xa0]
	lea	rdi, [rdi]
	mov	byte ptr [rcx + rax], 0x27
.label_1337:
	mov	rax, qword ptr [rbp - 0x50]
	lea	rdi, [rdi]
	add	rax, 1
	mov	qword ptr [rbp - 0x50], rax
	mov	byte ptr [rbp - 0x42], 0
.label_1350:
	jmp	.label_1378
.label_1378:
	nop	
	jmp	.label_1379
.label_1379:
	mov	rax, qword ptr [rbp - 0x50]
	mov	rsp, rsp
	cmp	rax, qword ptr [rbp - 0x28]
	jae	.label_1335
	mov	al, byte ptr [rbp - 0x3d]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x50]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0xa0]
	lea	rdi, [rdi]
	mov	byte ptr [rdx + rcx], al
.label_1335:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, 1
	mov	qword ptr [rbp - 0x50], rax
	lea	rsi, [rsi]
	test	byte ptr [rbp - 0x91], 1
	jne	.label_1382
	mov	byte ptr [rbp - 0xb7], 0
.label_1382:
	mov	rbp, rbp
	jmp	.label_1283
.label_1283:
	mov	rax, qword ptr [rbp - 0xd8]
	add	rax, 1
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0xd8], rax
	jmp	.label_1389
.label_1412:
	cmp	qword ptr [rbp - 0x50], 0
	mov	rbp, rbp
	jne	.label_1396
	cmp	dword ptr [rbp - 0x58], 2
	nop	
	jne	.label_1396
	mov	rbp, rbp
	test	byte ptr [rbp - 0x3e], 1
	lea	rdi, [rdi]
	je	.label_1396
	nop	
	jmp	.label_1229
.label_1396:
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x58], 2
	jne	.label_1258
	lea	rdi, [rdi]
	test	byte ptr [rbp - 0x3e], 1
	lea	rsi, [rsi]
	jne	.label_1258
	lea	rsi, [rsi]
	test	byte ptr [rbp - 0xa5], 1
	je	.label_1258
	test	byte ptr [rbp - 0xb7], 1
	je	.label_1376
	mov	r8d, 5
	mov	rdi, qword ptr [rbp - 0xa0]
	mov	rsi, qword ptr [rbp - 0x140]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x150]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x68]
	mov	rbp, rbp
	mov	r9d, dword ptr [rbp - 0xa4]
	mov	rax, qword ptr [rbp - 0x100]
	mov	rsp, rsp
	mov	r10, qword ptr [rbp - 0x120]
	mov	r11, qword ptr [rbp - 0xc0]
	lea	rsi, [rsi]
	mov	qword ptr [rsp], rax
	mov	qword ptr [rsp + 8], r10
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x10], r11
	mov	rbp, rbp
	call	quotearg_buffer_restyled
	mov	rsp, rsp
	mov	qword ptr [rbp - 0xb0], rax
	nop	
	jmp	.label_1236
.label_1376:
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x28], 0
	lea	rsi, [rsi]
	jne	.label_1239
	cmp	qword ptr [rbp - 0x140], 0
	lea	rsi, [rsi]
	je	.label_1239
	nop	
	mov	rax, qword ptr [rbp - 0x140]
	mov	qword ptr [rbp - 0x28], rax
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x50], 0
	jmp	.label_1246
.label_1239:
	jmp	.label_1255
.label_1255:
	mov	rbp, rbp
	jmp	.label_1258
.label_1258:
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x108], 0
	je	.label_1260
	lea	rsi, [rsi]
	test	byte ptr [rbp - 0x3e], 1
	jne	.label_1260
	mov	rbp, rbp
	jmp	.label_1243
.label_1243:
	mov	rax, qword ptr [rbp - 0x108]
	cmp	byte ptr [rax], 0
	je	.label_1268
	lea	rdi, [rdi]
	jmp	.label_1262
.label_1262:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x50]
	cmp	rax, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	jae	.label_1272
	mov	rax, qword ptr [rbp - 0x108]
	lea	rsi, [rsi]
	mov	cl, byte ptr [rax]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x50]
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0xa0]
	mov	rbp, rbp
	mov	byte ptr [rdx + rax], cl
.label_1272:
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, 1
	mov	qword ptr [rbp - 0x50], rax
	lea	rdi, [rdi]
	jmp	.label_1285
.label_1285:
	mov	rax, qword ptr [rbp - 0x108]
	lea	rdi, [rdi]
	add	rax, 1
	mov	qword ptr [rbp - 0x108], rax
	jmp	.label_1243
.label_1268:
	jmp	.label_1260
.label_1260:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x50]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rbp - 0x28]
	jae	.label_1298
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x50]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0xa0]
	mov	byte ptr [rcx + rax], 0
.label_1298:
	mov	rax, qword ptr [rbp - 0x50]
	mov	qword ptr [rbp - 0xb0], rax
	jmp	.label_1236
.label_1229:
	nop	
	cmp	dword ptr [rbp - 0x58], 2
	mov	rsp, rsp
	jne	.label_1308
	mov	rsp, rsp
	test	byte ptr [rbp - 0x89], 1
	mov	rsp, rsp
	je	.label_1308
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x58], 4
.label_1308:
	mov	rbp, rbp
	xor	eax, eax
	mov	ecx, eax
	mov	rdi, qword ptr [rbp - 0xa0]
	mov	rsi, qword ptr [rbp - 0x28]
	mov	rdx, qword ptr [rbp - 0x150]
	mov	r8, qword ptr [rbp - 0x68]
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x58]
	nop	
	mov	r9d, dword ptr [rbp - 0xa4]
	and	r9d, 0xfffffffd
	lea	rsi, [rsi]
	mov	r10, qword ptr [rbp - 0x120]
	mov	r11, qword ptr [rbp - 0xc0]
	mov	qword ptr [rbp - 0x138], rcx
	mov	rcx, r8
	lea	rdi, [rdi]
	mov	r8d, eax
	mov	qword ptr [rsp], 0
	mov	rsp, rsp
	mov	qword ptr [rsp + 8], r10
	mov	qword ptr [rsp + 0x10], r11
	call	quotearg_buffer_restyled
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0xb0], rax
.label_1236:
	mov	rax, qword ptr [rbp - 0xb0]
	mov	rbp, rbp
	add	rsp, 0x168
	pop	rbx
	pop	rbp
	nop	
	ret	
	.section	.text
	.align	32
	#Procedure 0x417a40
	.globl quotearg_alloc
	.type quotearg_alloc, @function
quotearg_alloc:

	lea	rdi, [rdi]
	push	rbp
	lea	rsi, [rsi]
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	rbp, rbp
	xor	eax, eax
	lea	rdi, [rdi]
	mov	ecx, eax
	nop	
	mov	qword ptr [rbp - 0x18], rdi
	mov	rbp, rbp
	mov	qword ptr [rbp - 8], rsi
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x10], rdx
	mov	rdi, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 8]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x20], rdx
	lea	rsi, [rsi]
	mov	rdx, rcx
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x20]
	call	quotearg_alloc_mem
	add	rsp, 0x20
	lea	rdi, [rdi]
	pop	rbp
	mov	rsp, rsp
	ret	
	.section	.text
	.align	32
	#Procedure 0x417ab0

	.globl quotearg_alloc_mem
	.type quotearg_alloc_mem, @function
quotearg_alloc_mem:
	mov	rbp, rbp
	push	rbp
	mov	rbp, rsp
	push	rbx
	sub	rsp, 0x78
	mov	qword ptr [rbp - 0x28], rdi
	mov	qword ptr [rbp - 0x40], rsi
	mov	qword ptr [rbp - 0x48], rdx
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x18], rcx
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0x18], 0
	mov	rsp, rsp
	je	.label_1423
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x60], rax
	mov	rsp, rsp
	jmp	.label_1424
.label_1423:
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 0x60], rax
	lea	rsi, [rsi]
	jmp	.label_1424
.label_1424:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x60]
	mov	qword ptr [rbp - 0x58], rax
	mov	rsp, rsp
	call	__errno_location
	mov	rbp, rbp
	xor	ecx, ecx
	mov	edx, ecx
	lea	rsi, [rsi]
	mov	ecx, 1
	xor	esi, esi
	lea	rsi, [rsi]
	mov	edi, dword ptr [rax]
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x1c], edi
	mov	rax, qword ptr [rbp - 0x58]
	mov	edi, dword ptr [rax + 4]
	cmp	qword ptr [rbp - 0x48], 0
	nop	
	cmovne	ecx, esi
	or	edi, ecx
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x34], edi
	mov	rax, qword ptr [rbp - 0x28]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x40]
	mov	r8, qword ptr [rbp - 0x58]
	mov	r8d, dword ptr [r8]
	lea	rsi, [rsi]
	mov	r9d, dword ptr [rbp - 0x34]
	lea	rdi, [rdi]
	mov	r10, qword ptr [rbp - 0x58]
	lea	rdi, [rdi]
	add	r10, 8
	mov	r11, qword ptr [rbp - 0x58]
	lea	rsi, [rsi]
	mov	r11, qword ptr [r11 + 0x28]
	mov	rbx, qword ptr [rbp - 0x58]
	nop	
	mov	rbx, qword ptr [rbx + 0x30]
	lea	rsi, [rsi]
	mov	rdi, rdx
	lea	rsi, [rsi]
	mov	rsi, rdx
	mov	rdx, rax
	mov	qword ptr [rsp], r10
	mov	rbp, rbp
	mov	qword ptr [rsp + 8], r11
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x10], rbx
	call	quotearg_buffer_restyled
	mov	rbp, rbp
	add	rax, 1
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x10], rax
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x10]
	call	xcharalloc
	mov	qword ptr [rbp - 0x30], rax
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x30]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rbp - 0x58]
	mov	r8d, dword ptr [rax]
	mov	r9d, dword ptr [rbp - 0x34]
	mov	rax, qword ptr [rbp - 0x58]
	mov	rsp, rsp
	add	rax, 8
	mov	r10, qword ptr [rbp - 0x58]
	mov	r10, qword ptr [r10 + 0x28]
	mov	r11, qword ptr [rbp - 0x58]
	mov	r11, qword ptr [r11 + 0x30]
	mov	qword ptr [rsp], rax
	mov	qword ptr [rsp + 8], r10
	mov	qword ptr [rsp + 0x10], r11
	lea	rdi, [rdi]
	call	quotearg_buffer_restyled
	lea	rsi, [rsi]
	mov	r8d, dword ptr [rbp - 0x1c]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x50], rax
	mov	dword ptr [rbp - 0x64], r8d
	nop	
	call	__errno_location
	nop	
	mov	r8d, dword ptr [rbp - 0x64]
	nop	
	mov	dword ptr [rax], r8d
	nop	
	cmp	qword ptr [rbp - 0x48], 0
	je	.label_1425
	mov	rax, qword ptr [rbp - 0x10]
	sub	rax, 1
	nop	
	mov	rcx, qword ptr [rbp - 0x48]
	mov	qword ptr [rcx], rax
.label_1425:
	mov	rax, qword ptr [rbp - 0x30]
	mov	rbp, rbp
	add	rsp, 0x78
	nop	
	pop	rbx
	lea	rsi, [rsi]
	pop	rbp
	lea	rsi, [rsi]
	ret	
	.section	.text
	.align	32
	#Procedure 0x417c80
	.globl quotearg_free
	.type quotearg_free, @function
quotearg_free:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	nop	
	mov	rax,  qword ptr [word ptr [slotvec]]
	mov	qword ptr [rbp - 8], rax
	mov	dword ptr [rbp - 0xc], 1
.label_1430:
	mov	eax, dword ptr [rbp - 0xc]
	cmp	eax,  dword ptr [dword ptr [nslots]]
	jge	.label_1429
	nop	
	movsxd	rax, dword ptr [rbp - 0xc]
	mov	rbp, rbp
	shl	rax, 4
	lea	rsi, [rsi]
	add	rax, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rax + 8]
	call	free
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0xc]
	nop	
	add	eax, 1
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0xc], eax
	mov	rsp, rsp
	jmp	.label_1430
.label_1429:
	lea	rdi, [rdi]
	movabs	rax, OFFSET FLAT:slot0
	mov	rcx, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	cmp	qword ptr [rcx + 8], rax
	mov	rsp, rsp
	je	.label_1428
	mov	rax, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rax + 8]
	call	free
	movabs	rax, OFFSET FLAT:slot0
	mov	qword ptr [word ptr [slotvec0]],  0x100
	mov	rbp, rbp
	mov	qword ptr [word ptr [label_1426]],  rax
.label_1428:
	movabs	rax, OFFSET FLAT:slotvec0
	cmp	qword ptr [rbp - 8], rax
	je	.label_1427
	nop	
	mov	rax, qword ptr [rbp - 8]
	mov	rdi, rax
	mov	rsp, rsp
	call	free
	mov	rbp, rbp
	movabs	rax, OFFSET FLAT:slotvec0
	mov	qword ptr [word ptr [slotvec]],  rax
.label_1427:
	mov	dword ptr [dword ptr [nslots]],  1
	add	rsp, 0x10
	mov	rbp, rbp
	pop	rbp
	mov	rsp, rsp
	ret	
	.section	.text
	.align	32
	#Procedure 0x417d90

	.globl quotearg_n
	.type quotearg_n, @function
quotearg_n:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	rbp, rbp
	mov	rdx, -1
	mov	rsp, rsp
	movabs	rcx, OFFSET FLAT:default_quoting_options
	mov	rsp, rsp
	mov	dword ptr [rbp - 0xc], edi
	mov	rbp, rbp
	mov	qword ptr [rbp - 8], rsi
	mov	edi, dword ptr [rbp - 0xc]
	mov	rsi, qword ptr [rbp - 8]
	call	quotearg_n_options
	add	rsp, 0x10
	mov	rsp, rsp
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x417de0

	.globl quotearg_n_options
	.type quotearg_n_options, @function
quotearg_n_options:
	nop	
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x90
	mov	dword ptr [rbp - 0x64], edi
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x60], rdx
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x28], rcx
	nop	
	call	__errno_location
	mov	edi, dword ptr [rax]
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x44], edi
	mov	rax,  qword ptr [word ptr [slotvec]]
	mov	qword ptr [rbp - 8], rax
	cmp	dword ptr [rbp - 0x64], 0
	jge	.label_1432
	call	abort
.label_1432:
	mov	rbp, rbp
	mov	eax,  dword ptr [dword ptr [nslots]]
	cmp	eax, dword ptr [rbp - 0x64]
	jg	.label_1435
	lea	rdi, [rdi]
	movabs	rax, OFFSET FLAT:slotvec0
	cmp	qword ptr [rbp - 8], rax
	lea	rdi, [rdi]
	sete	cl
	mov	rbp, rbp
	and	cl, 1
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x51], cl
	mov	rsp, rsp
	mov	dword ptr [rbp - 0xc], 0x7ffffffe
	mov	edx, dword ptr [rbp - 0xc]
	cmp	edx, dword ptr [rbp - 0x64]
	mov	rsp, rsp
	jge	.label_1436
	call	xalloc_die
.label_1436:
	test	byte ptr [rbp - 0x51], 1
	je	.label_1437
	mov	rsp, rsp
	xor	eax, eax
	mov	rbp, rbp
	mov	ecx, eax
	mov	qword ptr [rbp - 0x30], rcx
	jmp	.label_1433
.label_1437:
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x30], rax
.label_1433:
	mov	rax, qword ptr [rbp - 0x30]
	mov	ecx, dword ptr [rbp - 0x64]
	add	ecx, 1
	movsxd	rdx, ecx
	shl	rdx, 4
	mov	rsp, rsp
	mov	rdi, rax
	mov	rsi, rdx
	call	xrealloc
	mov	qword ptr [rbp - 8], rax
	mov	qword ptr [word ptr [slotvec]],  rax
	test	byte ptr [rbp - 0x51], 1
	lea	rdi, [rdi]
	je	.label_1431
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 8]
	mov	rcx,  qword ptr [word ptr [slotvec0]]
	mov	qword ptr [rax], rcx
	mov	rcx,  qword ptr [word ptr [label_1426]]
	mov	rbp, rbp
	mov	qword ptr [rax + 8], rcx
.label_1431:
	xor	esi, esi
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 8]
	mov	rsp, rsp
	movsxd	rcx,  dword ptr [dword ptr [nslots]]
	mov	rsp, rsp
	shl	rcx, 4
	add	rax, rcx
	mov	edx, dword ptr [rbp - 0x64]
	nop	
	add	edx, 1
	mov	rbp, rbp
	sub	edx,  dword ptr [dword ptr [nslots]]
	movsxd	rcx, edx
	shl	rcx, 4
	mov	rdi, rax
	mov	rsp, rsp
	mov	rdx, rcx
	mov	rsp, rsp
	call	memset
	lea	rdi, [rdi]
	mov	esi, dword ptr [rbp - 0x64]
	add	esi, 1
	mov	dword ptr [dword ptr [nslots]],  esi
.label_1435:
	movsxd	rax, dword ptr [rbp - 0x64]
	lea	rsi, [rsi]
	shl	rax, 4
	lea	rsi, [rsi]
	add	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0x38], rax
	nop	
	movsxd	rax, dword ptr [rbp - 0x64]
	lea	rdi, [rdi]
	shl	rax, 4
	lea	rdi, [rdi]
	add	rax, qword ptr [rbp - 8]
	nop	
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x70], rax
	mov	rax, qword ptr [rbp - 0x28]
	nop	
	mov	ecx, dword ptr [rax + 4]
	lea	rsi, [rsi]
	or	ecx, 1
	mov	dword ptr [rbp - 0x20], ecx
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x70]
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x38]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x60]
	mov	rax, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	mov	r8d, dword ptr [rax]
	mov	rbp, rbp
	mov	r9d, dword ptr [rbp - 0x20]
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, 8
	nop	
	mov	r10, qword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	mov	r10, qword ptr [r10 + 0x28]
	lea	rdi, [rdi]
	mov	r11, qword ptr [rbp - 0x28]
	nop	
	mov	r11, qword ptr [r11 + 0x30]
	mov	qword ptr [rsp], rax
	mov	rsp, rsp
	mov	qword ptr [rsp + 8], r10
	mov	qword ptr [rsp + 0x10], r11
	lea	rdi, [rdi]
	call	quotearg_buffer_restyled
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x50], rax
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x38]
	lea	rdi, [rdi]
	cmp	rax, qword ptr [rbp - 0x50]
	lea	rsi, [rsi]
	ja	.label_1438
	lea	rdi, [rdi]
	movabs	rax, OFFSET FLAT:slot0
	mov	rcx, qword ptr [rbp - 0x50]
	lea	rdi, [rdi]
	add	rcx, 1
	mov	qword ptr [rbp - 0x38], rcx
	lea	rsi, [rsi]
	movsxd	rdx, dword ptr [rbp - 0x64]
	shl	rdx, 4
	add	rdx, qword ptr [rbp - 8]
	mov	qword ptr [rdx], rcx
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x70], rax
	mov	rbp, rbp
	je	.label_1434
	mov	rdi, qword ptr [rbp - 0x70]
	lea	rsi, [rsi]
	call	free
.label_1434:
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x38]
	call	xcharalloc
	mov	qword ptr [rbp - 0x70], rax
	lea	rdi, [rdi]
	movsxd	rdi, dword ptr [rbp - 0x64]
	lea	rdi, [rdi]
	shl	rdi, 4
	add	rdi, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	mov	qword ptr [rdi + 8], rax
	mov	rdi, qword ptr [rbp - 0x70]
	mov	rsi, qword ptr [rbp - 0x38]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x60]
	mov	rax, qword ptr [rbp - 0x28]
	mov	r8d, dword ptr [rax]
	mov	r9d, dword ptr [rbp - 0x20]
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, 8
	mov	r10, qword ptr [rbp - 0x28]
	mov	r10, qword ptr [r10 + 0x28]
	mov	r11, qword ptr [rbp - 0x28]
	mov	rbp, rbp
	mov	r11, qword ptr [r11 + 0x30]
	nop	
	mov	qword ptr [rsp], rax
	mov	qword ptr [rsp + 8], r10
	mov	qword ptr [rsp + 0x10], r11
	mov	rsp, rsp
	call	quotearg_buffer_restyled
	mov	qword ptr [rbp - 0x40], rax
.label_1438:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x44]
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x1c], eax
	mov	rbp, rbp
	call	__errno_location
	mov	ecx, dword ptr [rbp - 0x1c]
	mov	dword ptr [rax], ecx
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x70]
	add	rsp, 0x90
	nop	
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x418110

	.globl quotearg_n_mem
	.type quotearg_n_mem, @function
quotearg_n_mem:
	mov	rsp, rsp
	push	rbp
	mov	rbp, rsp
	lea	rdi, [rdi]
	sub	rsp, 0x20
	nop	
	movabs	rcx, OFFSET FLAT:default_quoting_options
	mov	dword ptr [rbp - 0x14], edi
	mov	qword ptr [rbp - 8], rsi
	mov	qword ptr [rbp - 0x10], rdx
	mov	edi, dword ptr [rbp - 0x14]
	mov	rsi, qword ptr [rbp - 8]
	mov	rdx, qword ptr [rbp - 0x10]
	call	quotearg_n_options
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x418150
	.globl quotearg
	.type quotearg, @function
quotearg:

	nop
	push	rbp
	lea	rsi, [rsi]
	mov	rbp, rsp
	lea	rsi, [rsi]
	sub	rsp, 0x10
	xor	eax, eax
	nop	
	mov	qword ptr [rbp - 8], rdi
	mov	rsi, qword ptr [rbp - 8]
	mov	edi, eax
	call	quotearg_n
	lea	rdi, [rdi]
	add	rsp, 0x10
	pop	rbp
	lea	rdi, [rdi]
	ret	
	.section	.text
	.align	32
	#Procedure 0x418180
	.globl quotearg_mem
	.type quotearg_mem, @function
quotearg_mem:

	push	rbp
	lea	rdi, [rdi]
	mov	rbp, rsp
	lea	rdi, [rdi]
	sub	rsp, 0x10
	xor	eax, eax
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 8], rsi
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 8]
	mov	edi, eax
	mov	rsp, rsp
	call	quotearg_n_mem
	add	rsp, 0x10
	nop	
	pop	rbp
	lea	rdi, [rdi]
	ret	
	.section	.text
	.align	32
	#Procedure 0x4181c0

	.globl quotearg_n_style
	.type quotearg_n_style, @function
quotearg_n_style:
	nop	
	push	rbp
	mov	rbp, rbp
	mov	rbp, rsp
	lea	rdi, [rdi]
	sub	rsp, 0x50
	lea	rax, [rbp - 0x40]
	mov	rsp, rsp
	mov	dword ptr [rbp - 8], edi
	mov	dword ptr [rbp - 4], esi
	nop	
	mov	qword ptr [rbp - 0x48], rdx
	lea	rdi, [rdi]
	mov	esi, dword ptr [rbp - 4]
	mov	rdi, rax
	call	quoting_options_from_style
	mov	rdx, -1
	lea	rcx, [rbp - 0x40]
	mov	edi, dword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x48]
	call	quotearg_n_options
	lea	rdi, [rdi]
	add	rsp, 0x50
	lea	rdi, [rdi]
	pop	rbp
	lea	rsi, [rsi]
	ret	
	.section	.text
	.align	32
	#Procedure 0x418220

	.globl quoting_options_from_style
	.type quoting_options_from_style, @function
quoting_options_from_style:
	mov	rbp, rbp
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x50
	mov	rax, rdi
	xor	ecx, ecx
	mov	rsp, rsp
	mov	edx, 0x38
	lea	r8, [rbp - 0x40]
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x44], esi
	mov	qword ptr [rbp - 0x50], rdi
	nop	
	mov	rdi, r8
	mov	esi, ecx
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 8], rax
	call	memset
	nop	
	cmp	dword ptr [rbp - 0x44], 0xa
	jne	.label_1439
	call	abort
.label_1439:
	lea	rsi, [rsi]
	mov	eax, 0x38
	lea	rdi, [rdi]
	mov	edx, eax
	lea	rcx, [rbp - 0x40]
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x44]
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x40], eax
	nop	
	mov	rsi, qword ptr [rbp - 0x50]
	mov	rdi, rsi
	lea	rsi, [rsi]
	mov	rsi, rcx
	lea	rdi, [rdi]
	call	memcpy
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 8]
	mov	rbp, rbp
	add	rsp, 0x50
	mov	rsp, rsp
	pop	rbp
	lea	rsi, [rsi]
	ret	
	.section	.text
	.align	32
	#Procedure 0x4182c0

	.globl quotearg_n_style_mem
	.type quotearg_n_style_mem, @function
quotearg_n_style_mem:
	mov	rbp, rbp
	push	rbp
	lea	rsi, [rsi]
	mov	rbp, rsp
	sub	rsp, 0x50
	mov	rsp, rsp
	lea	rax, [rbp - 0x40]
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x48], edi
	nop	
	mov	dword ptr [rbp - 0x44], esi
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x50], rdx
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 8], rcx
	lea	rsi, [rsi]
	mov	esi, dword ptr [rbp - 0x44]
	nop	
	mov	rdi, rax
	call	quoting_options_from_style
	lea	rcx, [rbp - 0x40]
	nop	
	mov	edi, dword ptr [rbp - 0x48]
	nop	
	mov	rsi, qword ptr [rbp - 0x50]
	mov	rdx, qword ptr [rbp - 8]
	call	quotearg_n_options
	mov	rsp, rsp
	add	rsp, 0x50
	mov	rsp, rsp
	pop	rbp
	mov	rbp, rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x418330

	.globl quotearg_style
	.type quotearg_style, @function
quotearg_style:
	push	rbp
	mov	rbp, rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	xor	eax, eax
	mov	rbp, rbp
	mov	dword ptr [rbp - 0xc], edi
	mov	qword ptr [rbp - 8], rsi
	mov	esi, dword ptr [rbp - 0xc]
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 8]
	mov	edi, eax
	mov	rbp, rbp
	call	quotearg_n_style
	nop	
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x418370
	.globl quotearg_style_mem
	.type quotearg_style_mem, @function
quotearg_style_mem:

	push	rbp
	mov	rbp, rsp
	lea	rsi, [rsi]
	sub	rsp, 0x20
	xor	eax, eax
	mov	dword ptr [rbp - 4], edi
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x10], rdx
	mov	esi, dword ptr [rbp - 4]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	edi, eax
	call	quotearg_n_style_mem
	add	rsp, 0x20
	mov	rsp, rsp
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4183b0

	.globl quotearg_char_mem
	.type quotearg_char_mem, @function
quotearg_char_mem:
	push	rbp
	mov	rbp, rsp
	mov	rbp, rbp
	sub	rsp, 0x70
	mov	rbp, rbp
	mov	al, dl
	lea	rcx, [rbp - 0x68]
	lea	rdi, [rdi]
	mov	edx, 1
	movabs	r8, OFFSET FLAT:default_quoting_options
	mov	r9d, 0x38
	mov	r10d, r9d
	nop	
	mov	qword ptr [rbp - 0x10], rdi
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x28], rsi
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x11], al
	lea	rsi, [rsi]
	mov	rsi, rcx
	nop	
	mov	rdi, rsi
	mov	rsi, r8
	mov	rbp, rbp
	mov	dword ptr [rbp - 4], edx
	lea	rsi, [rsi]
	mov	rdx, r10
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x20], rcx
	call	memcpy
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	movsx	esi, byte ptr [rbp - 0x11]
	mov	edx, dword ptr [rbp - 4]
	nop	
	call	set_char_quoting
	mov	rsp, rsp
	xor	edi, edi
	lea	rcx, [rbp - 0x68]
	nop	
	mov	rsi, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x28]
	nop	
	mov	dword ptr [rbp - 0x2c], eax
	nop	
	call	quotearg_n_options
	lea	rsi, [rsi]
	add	rsp, 0x70
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x418460

	.globl quotearg_char
	.type quotearg_char, @function
quotearg_char:
	push	rbp
	lea	rdi, [rdi]
	mov	rbp, rsp
	lea	rdi, [rdi]
	sub	rsp, 0x10
	mov	rbp, rbp
	mov	al, sil
	mov	rsi, -1
	mov	qword ptr [rbp - 8], rdi
	mov	byte ptr [rbp - 9], al
	nop	
	mov	rdi, qword ptr [rbp - 8]
	movsx	edx, byte ptr [rbp - 9]
	call	quotearg_char_mem
	add	rsp, 0x10
	pop	rbp
	mov	rbp, rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4184a0

	.globl quotearg_colon
	.type quotearg_colon, @function
quotearg_colon:
	nop	
	push	rbp
	mov	rbp, rbp
	mov	rbp, rsp
	lea	rdi, [rdi]
	sub	rsp, 0x10
	nop	
	mov	esi, 0x3a
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	call	quotearg_char
	lea	rsi, [rsi]
	add	rsp, 0x10
	lea	rsi, [rsi]
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4184d0
	.globl quotearg_colon_mem
	.type quotearg_colon_mem, @function
quotearg_colon_mem:

	push	rbp
	mov	rbp, rsp
	lea	rdi, [rdi]
	sub	rsp, 0x10
	lea	rsi, [rsi]
	mov	edx, 0x3a
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	call	quotearg_char_mem
	mov	rsp, rsp
	add	rsp, 0x10
	lea	rsi, [rsi]
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x418510

	.globl quotearg_n_style_colon
	.type quotearg_n_style_colon, @function
quotearg_n_style_colon:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0xb0
	lea	rax, [rbp - 0x40]
	mov	dword ptr [rbp - 0x54], edi
	mov	dword ptr [rbp - 4], esi
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0xa8], rdx
	mov	esi, dword ptr [rbp - 4]
	mov	rbp, rbp
	mov	rdi, rax
	nop	
	call	quoting_options_from_style
	lea	rdi, [rdi]
	lea	rax, [rbp - 0x90]
	mov	rsp, rsp
	mov	esi, 0x3a
	mov	rbp, rbp
	mov	edx, 1
	mov	ecx, 0x38
	mov	edi, ecx
	lea	rsi, [rsi]
	lea	r8, [rbp - 0x40]
	mov	r9, rax
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x50], rdi
	mov	rsp, rsp
	mov	rdi, r9
	nop	
	mov	dword ptr [rbp - 0x94], esi
	mov	rsi, r8
	mov	r8, qword ptr [rbp - 0x50]
	mov	dword ptr [rbp - 0x44], edx
	nop	
	mov	rdx, r8
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0xa0], rax
	call	memcpy
	mov	rdi, qword ptr [rbp - 0xa0]
	mov	esi, dword ptr [rbp - 0x94]
	mov	edx, dword ptr [rbp - 0x44]
	lea	rsi, [rsi]
	call	set_char_quoting
	mov	rdx, -1
	mov	rsp, rsp
	lea	rcx, [rbp - 0x90]
	mov	rsp, rsp
	mov	edi, dword ptr [rbp - 0x54]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0xa8]
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x48], eax
	call	quotearg_n_options
	lea	rsi, [rsi]
	add	rsp, 0xb0
	lea	rdi, [rdi]
	pop	rbp
	mov	rbp, rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4185f0

	.globl quotearg_n_custom
	.type quotearg_n_custom, @function
quotearg_n_custom:
	lea	rsi, [rsi]
	push	rbp
	nop	
	mov	rbp, rsp
	mov	rsp, rsp
	sub	rsp, 0x20
	mov	rbp, rbp
	mov	r8, -1
	mov	dword ptr [rbp - 0xc], edi
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], rdx
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 8], rcx
	mov	edi, dword ptr [rbp - 0xc]
	nop	
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 8]
	mov	rbp, rbp
	call	quotearg_n_custom_mem
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x418640

	.globl quotearg_n_custom_mem
	.type quotearg_n_custom_mem, @function
quotearg_n_custom_mem:
	mov	rsp, rsp
	push	rbp
	lea	rdi, [rdi]
	mov	rbp, rsp
	sub	rsp, 0x70
	lea	rax, [rbp - 0x38]
	lea	rsi, [rsi]
	movabs	r9, OFFSET FLAT:default_quoting_options
	nop	
	mov	r10d, 0x38
	mov	rbp, rbp
	mov	r11d, r10d
	mov	dword ptr [rbp - 0x3c], edi
	mov	qword ptr [rbp - 0x48], rsi
	mov	qword ptr [rbp - 0x58], rdx
	mov	qword ptr [rbp - 0x50], rcx
	mov	qword ptr [rbp - 0x68], r8
	mov	rcx, rax
	mov	rdi, rcx
	mov	rbp, rbp
	mov	rsi, r9
	mov	rbp, rbp
	mov	rdx, r11
	mov	qword ptr [rbp - 0x60], rax
	call	memcpy
	mov	rsi, qword ptr [rbp - 0x48]
	mov	rdx, qword ptr [rbp - 0x58]
	nop	
	mov	rdi, qword ptr [rbp - 0x60]
	mov	rbp, rbp
	call	set_custom_quoting
	lea	rcx, [rbp - 0x38]
	mov	rsp, rsp
	mov	edi, dword ptr [rbp - 0x3c]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x50]
	mov	rdx, qword ptr [rbp - 0x68]
	call	quotearg_n_options
	add	rsp, 0x70
	mov	rsp, rsp
	pop	rbp
	nop	
	ret	
	.section	.text
	.align	32
	#Procedure 0x4186e0
	.globl quotearg_custom
	.type quotearg_custom, @function
quotearg_custom:

	mov	rsp, rsp
	push	rbp
	mov	rsp, rsp
	mov	rbp, rsp
	sub	rsp, 0x20
	nop	
	xor	eax, eax
	mov	qword ptr [rbp - 8], rdi
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x18], rsi
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x10], rdx
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 8]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	edi, eax
	lea	rdi, [rdi]
	call	quotearg_n_custom
	add	rsp, 0x20
	mov	rbp, rbp
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x418730
	.globl quotearg_custom_mem
	.type quotearg_custom_mem, @function
quotearg_custom_mem:

	lea	rdi, [rdi]
	push	rbp
	mov	rbp, rsp
	mov	rbp, rbp
	sub	rsp, 0x20
	mov	rsp, rsp
	xor	eax, eax
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x10], rdi
	nop	
	mov	qword ptr [rbp - 0x20], rsi
	mov	rsp, rsp
	mov	qword ptr [rbp - 8], rdx
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x18], rcx
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	mov	r8, qword ptr [rbp - 0x18]
	mov	edi, eax
	call	quotearg_n_custom_mem
	mov	rbp, rbp
	add	rsp, 0x20
	pop	rbp
	lea	rsi, [rsi]
	ret	
	.section	.text
	.align	32
	#Procedure 0x418790

	.globl quote_n_mem
	.type quote_n_mem, @function
quote_n_mem:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	movabs	rcx, OFFSET FLAT:quote_quoting_options
	mov	dword ptr [rbp - 4], edi
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x10], rdx
	mov	edi, dword ptr [rbp - 4]
	nop	
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 0x10]
	call	quotearg_n_options
	lea	rdi, [rdi]
	add	rsp, 0x20
	mov	rbp, rbp
	pop	rbp
	nop	
	ret	
	.section	.text
	.align	32
	#Procedure 0x4187d0
	.globl quote_mem
	.type quote_mem, @function
quote_mem:

	push	rbp
	nop	
	mov	rbp, rsp
	sub	rsp, 0x10
	lea	rdi, [rdi]
	xor	eax, eax
	mov	qword ptr [rbp - 8], rdi
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsi, qword ptr [rbp - 8]
	nop	
	mov	rdx, qword ptr [rbp - 0x10]
	mov	edi, eax
	mov	rsp, rsp
	call	quote_n_mem
	add	rsp, 0x10
	lea	rdi, [rdi]
	pop	rbp
	mov	rbp, rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x418810

	.globl quote_n
	.type quote_n, @function
quote_n:
	push	rbp
	mov	rbp, rsp
	mov	rsp, rsp
	sub	rsp, 0x10
	mov	rsp, rsp
	mov	rdx, -1
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 4], edi
	mov	qword ptr [rbp - 0x10], rsi
	nop	
	mov	edi, dword ptr [rbp - 4]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x10]
	call	quote_n_mem
	add	rsp, 0x10
	nop	
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x418850

	.globl quote
	.type quote, @function
quote:
	push	rbp
	lea	rsi, [rsi]
	mov	rbp, rsp
	sub	rsp, 0x10
	lea	rdi, [rdi]
	xor	eax, eax
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 8], rdi
	mov	rsi, qword ptr [rbp - 8]
	mov	edi, eax
	lea	rdi, [rdi]
	call	quote_n
	nop	
	add	rsp, 0x10
	lea	rdi, [rdi]
	pop	rbp
	mov	rsp, rsp
	ret	
	.section	.text
	.align	32
	#Procedure 0x418890

	.globl gettext_quote
	.type gettext_quote, @function
gettext_quote:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	nop	
	mov	qword ptr [rbp - 0x10], rdi
	mov	dword ptr [rbp - 4], esi
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	call	gettext
	mov	qword ptr [rbp - 0x18], rax
	mov	rax, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	cmp	rax, qword ptr [rbp - 0x10]
	je	.label_1443
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x28], rax
	jmp	.label_1440
.label_1443:
	call	locale_charset
	mov	rsp, rsp
	movabs	rsi, OFFSET FLAT:.str.13_2
	nop	
	mov	qword ptr [rbp - 0x20], rax
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	call	c_strcasecmp
	cmp	eax, 0
	jne	.label_1441
	movabs	rax, OFFSET FLAT:.str.15_3
	movabs	rcx, OFFSET FLAT:.str.14_2
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	movsx	esi, byte ptr [rdx]
	cmp	esi, 0x60
	cmove	rax, rcx
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x28], rax
	jmp	.label_1440
.label_1441:
	nop	
	movabs	rsi, OFFSET FLAT:.str.16_1
	mov	rdi, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	call	c_strcasecmp
	cmp	eax, 0
	lea	rdi, [rdi]
	jne	.label_1442
	nop	
	movabs	rax, OFFSET FLAT:.str.18_2
	movabs	rcx, OFFSET FLAT:.str.17_3
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	movsx	esi, byte ptr [rdx]
	cmp	esi, 0x60
	cmove	rax, rcx
	mov	qword ptr [rbp - 0x28], rax
	mov	rbp, rbp
	jmp	.label_1440
.label_1442:
	nop	
	movabs	rax, OFFSET FLAT:.str.12_2
	movabs	rcx, OFFSET FLAT:.str.10_3
	lea	rsi, [rsi]
	cmp	dword ptr [rbp - 4], 9
	lea	rdi, [rdi]
	cmove	rax, rcx
	mov	qword ptr [rbp - 0x28], rax
.label_1440:
	mov	rax, qword ptr [rbp - 0x28]
	add	rsp, 0x30
	mov	rsp, rsp
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4189d0

	.globl renameatu
	.type renameatu, @function
renameatu:
	mov	rsp, rsp
	push	rbp
	mov	rbp, rsp
	lea	rsi, [rsi]
	sub	rsp, 0x190
	mov	eax, 0x13c
	mov	rsp, rsp
	mov	r9d, eax
	mov	dword ptr [rbp - 0x14], edi
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0xc8], rsi
	mov	rsp, rsp
	mov	dword ptr [rbp - 0xe4], edx
	mov	rsp, rsp
	mov	qword ptr [rbp - 0xe0], rcx
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x20], r8d
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x184], 0xffffffff
	mov	dword ptr [rbp - 0x1c], 0x16
	nop	
	mov	esi, dword ptr [rbp - 0x14]
	mov	rdx, qword ptr [rbp - 0xc8]
	mov	ecx, dword ptr [rbp - 0xe4]
	mov	r8, qword ptr [rbp - 0xe0]
	mov	eax, dword ptr [rbp - 0x20]
	nop	
	mov	rdi, r9
	lea	rdi, [rdi]
	mov	r9d, eax
	lea	rsi, [rsi]
	mov	al, 0
	mov	rsp, rsp
	call	syscall
	mov	ecx, eax
	nop	
	mov	dword ptr [rbp - 0x184], ecx
	call	__errno_location
	mov	rsp, rsp
	mov	ecx, dword ptr [rax]
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x1c], ecx
	cmp	dword ptr [rbp - 0x184], 0
	lea	rdi, [rdi]
	jge	.label_1462
	cmp	dword ptr [rbp - 0x1c], 0x16
	je	.label_1444
	mov	rbp, rbp
	cmp	dword ptr [rbp - 0x1c], 0x26
	mov	rbp, rbp
	je	.label_1444
	cmp	dword ptr [rbp - 0x1c], 0x5f
	lea	rsi, [rsi]
	je	.label_1444
.label_1462:
	mov	eax, dword ptr [rbp - 0x184]
	mov	dword ptr [rbp - 0xc], eax
	nop	
	jmp	.label_1448
.label_1444:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0xc8]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0xd8], rax
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0xe0]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0xc0], rax
	mov	dword ptr [rbp - 0x18], 0x14
	mov	byte ptr [rbp - 0xe9], 0
	cmp	dword ptr [rbp - 0x20], 0
	lea	rsi, [rsi]
	je	.label_1452
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x20]
	nop	
	and	eax, 0xfffffffe
	cmp	eax, 0
	mov	rbp, rbp
	je	.label_1466
	mov	rbp, rbp
	mov	edi, 0x5f
	mov	rsp, rsp
	call	errno_fail
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0xc], eax
	jmp	.label_1448
.label_1466:
	lea	rdi, [rdi]
	lea	rdx, [rbp - 0x180]
	lea	rdi, [rdi]
	mov	edi, dword ptr [rbp - 0xe4]
	mov	rsi, qword ptr [rbp - 0xe0]
	mov	rsp, rsp
	call	lstatat
	cmp	eax, 0
	je	.label_1455
	nop	
	call	__errno_location
	cmp	dword ptr [rax], 0x4b
	jne	.label_1459
.label_1455:
	lea	rsi, [rsi]
	mov	edi, 0x11
	lea	rdi, [rdi]
	call	errno_fail
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0xc], eax
	jmp	.label_1448
.label_1459:
	call	__errno_location
	mov	rbp, rbp
	cmp	dword ptr [rax], 2
	lea	rdi, [rdi]
	je	.label_1446
	nop	
	mov	dword ptr [rbp - 0xc], 0xffffffff
	jmp	.label_1448
.label_1446:
	mov	byte ptr [rbp - 0xe9], 1
	jmp	.label_1452
.label_1452:
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0xc8]
	lea	rdi, [rdi]
	call	strlen
	mov	qword ptr [rbp - 0x28], rax
	mov	rdi, qword ptr [rbp - 0xe0]
	mov	rbp, rbp
	call	strlen
	mov	qword ptr [rbp - 8], rax
	cmp	qword ptr [rbp - 0x28], 0
	lea	rdi, [rdi]
	je	.label_1456
	cmp	qword ptr [rbp - 8], 0
	jne	.label_1461
.label_1456:
	lea	rsi, [rsi]
	mov	edi, dword ptr [rbp - 0x14]
	mov	rsi, qword ptr [rbp - 0xc8]
	mov	rbp, rbp
	mov	edx, dword ptr [rbp - 0xe4]
	mov	rcx, qword ptr [rbp - 0xe0]
	call	renameat
	mov	dword ptr [rbp - 0xc], eax
	jmp	.label_1448
.label_1461:
	mov	rax, qword ptr [rbp - 0x28]
	nop	
	sub	rax, 1
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0xc8]
	mov	rsp, rsp
	movsx	edx, byte ptr [rcx + rax]
	nop	
	cmp	edx, 0x2f
	sete	sil
	mov	rbp, rbp
	and	sil, 1
	mov	rsp, rsp
	mov	byte ptr [rbp - 0xc9], sil
	nop	
	mov	rax, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	sub	rax, 1
	nop	
	mov	rcx, qword ptr [rbp - 0xe0]
	nop	
	movsx	edx, byte ptr [rcx + rax]
	cmp	edx, 0x2f
	sete	sil
	and	sil, 1
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0xd], sil
	mov	rsp, rsp
	test	byte ptr [rbp - 0xc9], 1
	jne	.label_1447
	test	byte ptr [rbp - 0xd], 1
	jne	.label_1447
	mov	rbp, rbp
	mov	edi, dword ptr [rbp - 0x14]
	nop	
	mov	rsi, qword ptr [rbp - 0xc8]
	mov	edx, dword ptr [rbp - 0xe4]
	mov	rcx, qword ptr [rbp - 0xe0]
	call	renameat
	nop	
	mov	dword ptr [rbp - 0xc], eax
	jmp	.label_1448
.label_1447:
	mov	rbp, rbp
	lea	rdx, [rbp - 0xb8]
	lea	rsi, [rsi]
	mov	edi, dword ptr [rbp - 0x14]
	nop	
	mov	rsi, qword ptr [rbp - 0xc8]
	nop	
	call	lstatat
	lea	rsi, [rsi]
	cmp	eax, 0
	mov	rbp, rbp
	je	.label_1457
	mov	dword ptr [rbp - 0xc], 0xffffffff
	mov	rsp, rsp
	jmp	.label_1448
.label_1457:
	test	byte ptr [rbp - 0xe9], 1
	je	.label_1465
	mov	eax, dword ptr [rbp - 0xa0]
	lea	rdi, [rdi]
	and	eax, 0xf000
	cmp	eax, 0x4000
	lea	rsi, [rsi]
	je	.label_1445
	mov	edi, 2
	call	errno_fail
	mov	rbp, rbp
	mov	dword ptr [rbp - 0xc], eax
	jmp	.label_1448
.label_1445:
	mov	rbp, rbp
	jmp	.label_1454
.label_1465:
	lea	rdi, [rdi]
	lea	rdx, [rbp - 0x180]
	mov	rsp, rsp
	mov	edi, dword ptr [rbp - 0xe4]
	mov	rsi, qword ptr [rbp - 0xe0]
	call	lstatat
	mov	rbp, rbp
	cmp	eax, 0
	nop	
	je	.label_1458
	lea	rdi, [rdi]
	call	__errno_location
	nop	
	cmp	dword ptr [rax], 2
	mov	rsp, rsp
	jne	.label_1463
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0xa0]
	and	eax, 0xf000
	cmp	eax, 0x4000
	je	.label_1467
.label_1463:
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0xc], 0xffffffff
	mov	rbp, rbp
	jmp	.label_1448
.label_1467:
	jmp	.label_1451
.label_1458:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x168]
	and	eax, 0xf000
	cmp	eax, 0x4000
	lea	rdi, [rdi]
	je	.label_1453
	mov	edi, 0x14
	nop	
	call	errno_fail
	mov	dword ptr [rbp - 0xc], eax
	mov	rbp, rbp
	jmp	.label_1448
.label_1453:
	mov	eax, dword ptr [rbp - 0xa0]
	and	eax, 0xf000
	lea	rsi, [rsi]
	cmp	eax, 0x4000
	mov	rbp, rbp
	je	.label_1460
	mov	rsp, rsp
	mov	edi, 0x15
	call	errno_fail
	mov	dword ptr [rbp - 0xc], eax
	mov	rsp, rsp
	jmp	.label_1448
.label_1460:
	jmp	.label_1450
.label_1450:
	lea	rdi, [rdi]
	jmp	.label_1451
.label_1451:
	jmp	.label_1454
.label_1454:
	mov	edi, dword ptr [rbp - 0x14]
	mov	rsi, qword ptr [rbp - 0xd8]
	mov	edx, dword ptr [rbp - 0xe4]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0xc0]
	lea	rdi, [rdi]
	call	renameat
	mov	dword ptr [rbp - 0x184], eax
	call	__errno_location
	mov	rsp, rsp
	mov	edx, dword ptr [rax]
	mov	dword ptr [rbp - 0x18], edx
	mov	rax, qword ptr [rbp - 0xd8]
	cmp	rax, qword ptr [rbp - 0xc8]
	lea	rdi, [rdi]
	je	.label_1464
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0xd8]
	nop	
	call	free
.label_1464:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0xc0]
	mov	rsp, rsp
	cmp	rax, qword ptr [rbp - 0xe0]
	je	.label_1449
	nop	
	mov	rdi, qword ptr [rbp - 0xc0]
	call	free
.label_1449:
	mov	eax, dword ptr [rbp - 0x18]
	nop	
	mov	dword ptr [rbp - 0xe8], eax
	call	__errno_location
	lea	rsi, [rsi]
	mov	ecx, dword ptr [rbp - 0xe8]
	nop	
	mov	dword ptr [rax], ecx
	mov	ecx, dword ptr [rbp - 0x184]
	mov	dword ptr [rbp - 0xc], ecx
.label_1448:
	mov	eax, dword ptr [rbp - 0xc]
	mov	rbp, rbp
	add	rsp, 0x190
	nop	
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x418ee0

	.globl errno_fail
	.type errno_fail, @function
errno_fail:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	nop	
	mov	dword ptr [rbp - 8], edi
	nop	
	mov	edi, dword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 4], edi
	mov	rbp, rbp
	call	__errno_location
	mov	rbp, rbp
	mov	edi, 0xffffffff
	mov	ecx, dword ptr [rbp - 4]
	mov	rsp, rsp
	mov	dword ptr [rax], ecx
	lea	rsi, [rsi]
	mov	eax, edi
	add	rsp, 0x10
	nop	
	pop	rbp
	nop	
	ret	
	.section	.text
	.align	32
	#Procedure 0x418f20

	.globl get_root_dev_ino
	.type get_root_dev_ino, @function
get_root_dev_ino:
	push	rbp
	lea	rsi, [rsi]
	mov	rbp, rsp
	sub	rsp, 0xa0
	lea	rsi, [rsi]
	movabs	rax, OFFSET FLAT:.str_1
	lea	rsi, [rbp - 0x90]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0xa0], rdi
	lea	rdi, [rdi]
	mov	rdi, rax
	call	__lstat
	lea	rdi, [rdi]
	cmp	eax, 0
	je	.label_1469
	mov	qword ptr [rbp - 0x98], 0
	jmp	.label_1468
.label_1469:
	mov	rax, qword ptr [rbp - 0x88]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0xa0]
	lea	rsi, [rsi]
	mov	qword ptr [rcx], rax
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x90]
	mov	rcx, qword ptr [rbp - 0xa0]
	mov	qword ptr [rcx + 8], rax
	mov	rax, qword ptr [rbp - 0xa0]
	mov	qword ptr [rbp - 0x98], rax
.label_1468:
	mov	rax, qword ptr [rbp - 0x98]
	add	rsp, 0xa0
	nop	
	pop	rbp
	mov	rsp, rsp
	ret	
	.section	.text
	.align	32
	#Procedure 0x418fd0

	.globl safe_write
	.type safe_write, @function
safe_write:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	dword ptr [rbp - 0xc], edi
	mov	qword ptr [rbp - 0x20], rsi
	mov	qword ptr [rbp - 0x28], rdx
.label_1476:
	mov	rsp, rsp
	mov	edi, dword ptr [rbp - 0xc]
	nop	
	mov	rsi, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x28]
	call	write
	lea	rdi, [rdi]
	xor	edi, edi
	mov	edx, edi
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x18], rax
	lea	rsi, [rsi]
	cmp	rdx, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	jg	.label_1477
	mov	rax, qword ptr [rbp - 0x18]
	nop	
	mov	qword ptr [rbp - 8], rax
	jmp	.label_1475
.label_1477:
	call	__errno_location
	cmp	dword ptr [rax], 4
	nop	
	jne	.label_1473
	nop	
	jmp	.label_1476
.label_1473:
	call	__errno_location
	cmp	dword ptr [rax], 0x16
	mov	rbp, rbp
	jne	.label_1470
	mov	eax, 0x7ff00000
	lea	rsi, [rsi]
	mov	ecx, eax
	mov	rsp, rsp
	cmp	rcx, qword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	jae	.label_1470
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x28], 0x7ff00000
	jmp	.label_1471
.label_1470:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	mov	qword ptr [rbp - 8], rax
	jmp	.label_1475
.label_1471:
	jmp	.label_1472
.label_1472:
	jmp	.label_1474
.label_1474:
	jmp	.label_1476
.label_1475:
	mov	rax, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	add	rsp, 0x30
	lea	rdi, [rdi]
	pop	rbp
	lea	rdi, [rdi]
	ret	
	.section	.text
	.align	32
	#Procedure 0x4190b0

	.globl same_name
	.type same_name, @function
same_name:
	nop	
	push	rbp
	lea	rdi, [rdi]
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	eax, 0xffffff9c
	nop	
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsi, qword ptr [rbp - 8]
	mov	rcx, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	edi, eax
	mov	edx, eax
	lea	rdi, [rdi]
	call	same_nameat
	and	al, 1
	lea	rdi, [rdi]
	movzx	eax, al
	add	rsp, 0x10
	pop	rbp
	mov	rbp, rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x419100

	.globl same_nameat
	.type same_nameat, @function
same_nameat:
	lea	rsi, [rsi]
	push	rbp
	lea	rsi, [rsi]
	mov	rbp, rsp
	sub	rsp, 0x190
	nop	
	mov	dword ptr [rbp - 0x24], edi
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0xe0], rsi
	nop	
	mov	dword ptr [rbp - 0xd4], edx
	mov	qword ptr [rbp - 8], rcx
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0xe0]
	call	last_component
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x30], rax
	mov	rdi, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	call	last_component
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x18], rax
	nop	
	mov	rdi, qword ptr [rbp - 0x30]
	call	base_len
	mov	qword ptr [rbp - 0x38], rax
	mov	rdi, qword ptr [rbp - 0x18]
	call	base_len
	xor	edx, edx
	mov	r8b, dl
	mov	qword ptr [rbp - 0xd0], rax
	mov	rax, qword ptr [rbp - 0x38]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rbp - 0xd0]
	mov	rbp, rbp
	mov	byte ptr [rbp - 0xe1], r8b
	lea	rsi, [rsi]
	jne	.label_1480
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x30]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0xd0]
	call	memcmp
	nop	
	cmp	eax, 0
	sete	cl
	mov	rbp, rbp
	mov	byte ptr [rbp - 0xe1], cl
.label_1480:
	mov	al, byte ptr [rbp - 0xe1]
	mov	rsp, rsp
	and	al, 1
	mov	byte ptr [rbp - 0xe2], al
	mov	rbp, rbp
	mov	al, byte ptr [rbp - 0xe2]
	and	al, 1
	mov	rsp, rsp
	mov	byte ptr [rbp - 0xd5], al
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x25], 0
	test	byte ptr [rbp - 0xd5], 1
	lea	rsi, [rsi]
	je	.label_1478
	mov	rdi, qword ptr [rbp - 0xe0]
	lea	rsi, [rsi]
	call	dir_name
	lea	rdx, [rbp - 0xc8]
	mov	qword ptr [rbp - 0x180], rax
	mov	dword ptr [rbp - 0x184], 0x100
	nop	
	mov	edi, dword ptr [rbp - 0x24]
	mov	rsi, qword ptr [rbp - 0x180]
	lea	rsi, [rsi]
	mov	ecx, dword ptr [rbp - 0x184]
	call	fstatat
	lea	rsi, [rsi]
	cmp	eax, 0
	je	.label_1479
	call	__errno_location
	mov	rbp, rbp
	mov	edi, 1
	movabs	rdx, OFFSET FLAT:.str_7
	mov	rbp, rbp
	mov	esi, dword ptr [rax]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x180]
	mov	rbp, rbp
	mov	al, 0
	call	error
.label_1479:
	nop	
	mov	rdi, qword ptr [rbp - 0x180]
	call	free
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 8]
	call	dir_name
	lea	rdx, [rbp - 0x178]
	mov	qword ptr [rbp - 0x20], rax
	nop	
	mov	edi, dword ptr [rbp - 0xd4]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x20]
	mov	ecx, dword ptr [rbp - 0x184]
	call	fstatat
	cmp	eax, 0
	lea	rdi, [rdi]
	je	.label_1482
	call	__errno_location
	mov	rsp, rsp
	mov	edi, 1
	lea	rsi, [rsi]
	movabs	rdx, OFFSET FLAT:.str_7
	mov	esi, dword ptr [rax]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x20]
	nop	
	mov	al, 0
	nop	
	call	error
.label_1482:
	xor	eax, eax
	lea	rsi, [rsi]
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0xc0]
	cmp	rdx, qword ptr [rbp - 0x170]
	mov	byte ptr [rbp - 9], cl
	lea	rdi, [rdi]
	jne	.label_1481
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0xc8]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rbp - 0x178]
	mov	rsp, rsp
	sete	cl
	mov	rsp, rsp
	mov	byte ptr [rbp - 9], cl
.label_1481:
	mov	al, byte ptr [rbp - 9]
	and	al, 1
	mov	byte ptr [rbp - 0x25], al
	nop	
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	call	free
.label_1478:
	mov	al, byte ptr [rbp - 0x25]
	and	al, 1
	lea	rdi, [rdi]
	movzx	eax, al
	mov	rbp, rbp
	add	rsp, 0x190
	lea	rdi, [rdi]
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x419370

	.globl streamsavedir
	.type streamsavedir, @function
streamsavedir:
	mov	rbp, rbp
	push	rbp
	mov	rbp, rsp
	lea	rsi, [rsi]
	sub	rsp, 0xa0
	mov	qword ptr [rbp - 0x20], rdi
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x54], esi
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x18], 0
	mov	qword ptr [rbp - 0x10], 0
	mov	rbp, rbp
	mov	qword ptr [rbp - 0xa0], 0
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x78], 0
	nop	
	mov	qword ptr [rbp - 0x80], 0
	mov	qword ptr [rbp - 0x48], 0
	mov	esi, dword ptr [rbp - 0x54]
	mov	edi, esi
	lea	rdi, [rdi]
	mov	rdi,  qword ptr [word ptr [+ (rdi * 8) + comparison_function_table]]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x90], rdi
	cmp	qword ptr [rbp - 0x20], 0
	jne	.label_1500
	mov	qword ptr [rbp - 0x28], 0
	jmp	.label_1494
.label_1500:
	jmp	.label_1485
.label_1485:
	call	__errno_location
	mov	dword ptr [rax], 0
	mov	rdi, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	call	readdir
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x30], rax
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x30], 0
	jne	.label_1488
	jmp	.label_1490
.label_1488:
	nop	
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, 0x13
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x50], rax
	mov	rax, qword ptr [rbp - 0x50]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0x2e
	je	.label_1491
	mov	rsp, rsp
	xor	eax, eax
	mov	dword ptr [rbp - 0x6c], eax
	lea	rdi, [rdi]
	jmp	.label_1493
.label_1491:
	mov	eax, 2
	mov	ecx, 1
	nop	
	mov	rdx, qword ptr [rbp - 0x50]
	nop	
	movsx	esi, byte ptr [rdx + 1]
	mov	rsp, rsp
	cmp	esi, 0x2e
	cmovne	eax, ecx
	mov	dword ptr [rbp - 0x6c], eax
.label_1493:
	mov	eax, dword ptr [rbp - 0x6c]
	movsxd	rcx, eax
	mov	rdx, qword ptr [rbp - 0x50]
	movsx	eax, byte ptr [rdx + rcx]
	cmp	eax, 0
	je	.label_1483
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, 0x13
	mov	rdi, rax
	call	strlen
	lea	rsi, [rsi]
	add	rax, 1
	mov	qword ptr [rbp - 0x40], rax
	nop	
	cmp	qword ptr [rbp - 0x90], 0
	mov	rbp, rbp
	je	.label_1489
	mov	rax, qword ptr [rbp - 0x78]
	nop	
	cmp	rax, qword ptr [rbp - 0x80]
	nop	
	jne	.label_1492
	lea	rsi, [rbp - 0x88]
	mov	eax, 0x10
	mov	edx, eax
	nop	
	mov	rcx, qword ptr [rbp - 0x78]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x88], rcx
	mov	rcx, qword ptr [rbp - 0xa0]
	mov	rdi, rcx
	call	x2nrealloc
	mov	qword ptr [rbp - 0xa0], rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x88]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x78], rax
.label_1492:
	mov	rdi, qword ptr [rbp - 0x50]
	call	xstrdup
	mov	rdi, qword ptr [rbp - 0x80]
	shl	rdi, 4
	add	rdi, qword ptr [rbp - 0xa0]
	mov	qword ptr [rdi], rax
	mov	rax, qword ptr [rbp - 0x30]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax]
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x80]
	nop	
	shl	rdi, 4
	add	rdi, qword ptr [rbp - 0xa0]
	mov	qword ptr [rdi + 8], rax
	nop	
	mov	rax, qword ptr [rbp - 0x80]
	add	rax, 1
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x80], rax
	jmp	.label_1495
.label_1489:
	nop	
	mov	rax, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	sub	rax, qword ptr [rbp - 0x48]
	cmp	rax, qword ptr [rbp - 0x40]
	mov	rsp, rsp
	ja	.label_1498
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x48]
	mov	rbp, rbp
	add	rax, qword ptr [rbp - 0x40]
	mov	qword ptr [rbp - 8], rax
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 8]
	nop	
	cmp	rax, qword ptr [rbp - 0x48]
	mov	rbp, rbp
	jae	.label_1484
	call	xalloc_die
.label_1484:
	mov	rsp, rsp
	lea	rsi, [rbp - 8]
	mov	eax, 1
	mov	edx, eax
	mov	rdi, qword ptr [rbp - 0x18]
	call	x2nrealloc
	mov	qword ptr [rbp - 0x18], rax
	mov	rax, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x10], rax
.label_1498:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	add	rax, qword ptr [rbp - 0x48]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x50]
	mov	rdx, qword ptr [rbp - 0x40]
	mov	rdi, rax
	call	memcpy
.label_1495:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x40]
	lea	rsi, [rsi]
	add	rax, qword ptr [rbp - 0x48]
	mov	qword ptr [rbp - 0x48], rax
.label_1483:
	jmp	.label_1485
.label_1490:
	mov	rbp, rbp
	call	__errno_location
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 0x58], ecx
	cmp	dword ptr [rbp - 0x58], 0
	nop	
	je	.label_1501
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0xa0]
	nop	
	mov	rdi, rax
	call	free
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x18]
	nop	
	call	free
	mov	rsp, rsp
	mov	ecx, dword ptr [rbp - 0x58]
	mov	dword ptr [rbp - 0x34], ecx
	call	__errno_location
	mov	rbp, rbp
	mov	ecx, dword ptr [rbp - 0x34]
	mov	dword ptr [rax], ecx
	mov	qword ptr [rbp - 0x28], 0
	mov	rbp, rbp
	jmp	.label_1494
.label_1501:
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0x90], 0
	lea	rdi, [rdi]
	je	.label_1497
	cmp	qword ptr [rbp - 0x80], 0
	je	.label_1502
	mov	rbp, rbp
	mov	eax, 0x10
	nop	
	mov	edx, eax
	mov	rcx, qword ptr [rbp - 0xa0]
	mov	rsi, qword ptr [rbp - 0x80]
	mov	rdi, qword ptr [rbp - 0x90]
	mov	qword ptr [rbp - 0x98], rdi
	nop	
	mov	rdi, rcx
	nop	
	mov	rcx, qword ptr [rbp - 0x98]
	nop	
	call	qsort
.label_1502:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x48]
	add	rax, 1
	nop	
	mov	rdi, rax
	mov	rsp, rsp
	call	xmalloc
	mov	qword ptr [rbp - 0x18], rax
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x48], 0
	nop	
	mov	qword ptr [rbp - 0x68], 0
.label_1496:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x68]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rbp - 0x80]
	jae	.label_1499
	mov	rax, qword ptr [rbp - 0x18]
	nop	
	add	rax, qword ptr [rbp - 0x48]
	nop	
	mov	qword ptr [rbp - 0x60], rax
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x60]
	mov	rax, qword ptr [rbp - 0x68]
	shl	rax, 4
	add	rax, qword ptr [rbp - 0xa0]
	mov	rsi, qword ptr [rax]
	mov	rbp, rbp
	call	stpcpy
	mov	rsi, qword ptr [rbp - 0x60]
	sub	rax, rsi
	add	rax, 1
	mov	rbp, rbp
	add	rax, qword ptr [rbp - 0x48]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x48], rax
	mov	rax, qword ptr [rbp - 0x68]
	lea	rsi, [rsi]
	shl	rax, 4
	nop	
	add	rax, qword ptr [rbp - 0xa0]
	nop	
	mov	rdi, qword ptr [rax]
	call	free
	mov	rax, qword ptr [rbp - 0x68]
	add	rax, 1
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x68], rax
	jmp	.label_1496
.label_1499:
	mov	rax, qword ptr [rbp - 0xa0]
	mov	rbp, rbp
	mov	rdi, rax
	mov	rbp, rbp
	call	free
	jmp	.label_1486
.label_1497:
	mov	rax, qword ptr [rbp - 0x48]
	cmp	rax, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	jne	.label_1487
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x48]
	add	rax, 1
	lea	rsi, [rsi]
	mov	rsi, rax
	mov	rsp, rsp
	call	xrealloc
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x18], rax
.label_1487:
	mov	rbp, rbp
	jmp	.label_1486
.label_1486:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x48]
	nop	
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x28], rax
.label_1494:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	add	rsp, 0xa0
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x419810

	.globl savedir
	.type savedir, @function
savedir:
	push	rbp
	mov	rbp, rsp
	lea	rsi, [rsi]
	sub	rsp, 0x30
	mov	qword ptr [rbp - 0x20], rdi
	mov	dword ptr [rbp - 0x14], esi
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	call	opendir_safer
	mov	qword ptr [rbp - 8], rax
	cmp	qword ptr [rbp - 8], 0
	nop	
	jne	.label_1505
	mov	qword ptr [rbp - 0x10], 0
	jmp	.label_1503
.label_1505:
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 8]
	mov	esi, dword ptr [rbp - 0x14]
	call	streamsavedir
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x30], rax
	mov	rdi, qword ptr [rbp - 8]
	mov	rbp, rbp
	call	closedir
	lea	rdi, [rdi]
	cmp	eax, 0
	je	.label_1504
	call	__errno_location
	mov	rsp, rsp
	mov	ecx, dword ptr [rax]
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x24], ecx
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x30]
	call	free
	mov	ecx, dword ptr [rbp - 0x24]
	mov	dword ptr [rbp - 0x18], ecx
	call	__errno_location
	mov	rbp, rbp
	mov	ecx, dword ptr [rbp - 0x18]
	mov	dword ptr [rax], ecx
	mov	qword ptr [rbp - 0x10], 0
	jmp	.label_1503
.label_1504:
	mov	rax, qword ptr [rbp - 0x30]
	nop	
	mov	qword ptr [rbp - 0x10], rax
.label_1503:
	mov	rax, qword ptr [rbp - 0x10]
	add	rsp, 0x30
	mov	rsp, rsp
	pop	rbp
	mov	rsp, rsp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4198d0

	.globl direntry_cmp_name
	.type direntry_cmp_name, @function
direntry_cmp_name:
	push	rbp
	mov	rsp, rsp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 0x20], rdi
	nop	
	mov	qword ptr [rbp - 0x18], rsi
	nop	
	mov	rsi, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsi, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 8], rsi
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rsi]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	rsi, qword ptr [rsi]
	call	strcmp
	lea	rdi, [rdi]
	add	rsp, 0x20
	nop	
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x419920

	.globl direntry_cmp_inode
	.type direntry_cmp_inode, @function
direntry_cmp_inode:
	push	rbp
	mov	rsp, rsp
	mov	rbp, rsp
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x28], rdi
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x20], rsi
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsi, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 8], rsi
	mov	rsi, qword ptr [rbp - 0x10]
	nop	
	mov	rsi, qword ptr [rsi + 8]
	mov	rdi, qword ptr [rbp - 8]
	mov	rbp, rbp
	cmp	rsi, qword ptr [rdi + 8]
	lea	rdi, [rdi]
	jae	.label_1506
	mov	eax, 0xffffffff
	mov	dword ptr [rbp - 0x14], eax
	lea	rdi, [rdi]
	jmp	.label_1507
.label_1506:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x10]
	nop	
	mov	rax, qword ptr [rax + 8]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 8]
	cmp	rax, qword ptr [rcx + 8]
	seta	dl
	and	dl, 1
	lea	rdi, [rdi]
	movzx	esi, dl
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x14], esi
.label_1507:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x14]
	pop	rbp
	mov	rbp, rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4199b0
	.globl getcon
	.type getcon, @function
getcon:

	push	rbp
	mov	rbp, rsp
	mov	rsp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 8], rdi
	call	__errno_location
	mov	ecx, 0xffffffff
	lea	rsi, [rsi]
	mov	dword ptr [rax], 0x5f
	nop	
	mov	eax, ecx
	add	rsp, 0x10
	mov	rbp, rbp
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4199e0

	.globl freecon
	.type freecon, @function
freecon:
	push	rbp
	mov	rsp, rsp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	pop	rbp
	lea	rdi, [rdi]
	ret	
	.section	.text
	.align	32
	#Procedure 0x4199f0
	.globl getfscreatecon
	.type getfscreatecon, @function
getfscreatecon:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	rsp, rsp
	mov	qword ptr [rbp - 8], rdi
	mov	rbp, rbp
	call	__errno_location
	mov	ecx, 0xffffffff
	mov	dword ptr [rax], 0x5f
	mov	eax, ecx
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x419a20

	.globl setfscreatecon
	.type setfscreatecon, @function
setfscreatecon:
	mov	rbp, rbp
	push	rbp
	lea	rdi, [rdi]
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 8], rdi
	call	__errno_location
	nop	
	mov	ecx, 0xffffffff
	mov	dword ptr [rax], 0x5f
	nop	
	mov	eax, ecx
	mov	rbp, rbp
	add	rsp, 0x10
	lea	rsi, [rsi]
	pop	rbp
	nop	
	ret	
	.section	.text
	.align	32
	#Procedure 0x419a60
	.globl matchpathcon
	.type matchpathcon, @function
matchpathcon:

	mov	rsp, rsp
	push	rbp
	lea	rdi, [rdi]
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 0x10], rdi
	mov	dword ptr [rbp - 0x14], esi
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 8], rdx
	call	__errno_location
	lea	rsi, [rsi]
	mov	esi, 0xffffffff
	lea	rsi, [rsi]
	mov	dword ptr [rax], 0x5f
	lea	rsi, [rsi]
	mov	eax, esi
	add	rsp, 0x20
	mov	rsp, rsp
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x419aa0
	.globl getfilecon
	.type getfilecon, @function
getfilecon:

	push	rbp
	mov	rsp, rsp
	mov	rbp, rsp
	sub	rsp, 0x10
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x10], rdi
	mov	rsp, rsp
	mov	qword ptr [rbp - 8], rsi
	call	__errno_location
	mov	rsp, rsp
	mov	ecx, 0xffffffff
	lea	rsi, [rsi]
	mov	dword ptr [rax], 0x5f
	mov	eax, ecx
	mov	rsp, rsp
	add	rsp, 0x10
	mov	rbp, rbp
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x419ae0

	.globl lgetfilecon
	.type lgetfilecon, @function
lgetfilecon:
	push	rbp
	lea	rdi, [rdi]
	mov	rbp, rsp
	mov	rsp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	call	__errno_location
	mov	ecx, 0xffffffff
	nop	
	mov	dword ptr [rax], 0x5f
	mov	eax, ecx
	add	rsp, 0x10
	lea	rdi, [rdi]
	pop	rbp
	nop	
	ret	
	.section	.text
	.align	32
	#Procedure 0x419b20
	.globl fgetfilecon
	.type fgetfilecon, @function
fgetfilecon:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	rbp, rbp
	mov	dword ptr [rbp - 0xc], edi
	mov	qword ptr [rbp - 8], rsi
	call	__errno_location
	mov	rsp, rsp
	mov	edi, 0xffffffff
	mov	dword ptr [rax], 0x5f
	mov	eax, edi
	lea	rsi, [rsi]
	add	rsp, 0x10
	pop	rbp
	mov	rsp, rsp
	ret	
	.section	.text
	.align	32
	#Procedure 0x419b60
	.globl setfilecon
	.type setfilecon, @function
setfilecon:

	push	rbp
	mov	rbp, rbp
	mov	rbp, rsp
	lea	rsi, [rsi]
	sub	rsp, 0x10
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsp, rsp
	call	__errno_location
	nop	
	mov	ecx, 0xffffffff
	mov	dword ptr [rax], 0x5f
	nop	
	mov	eax, ecx
	add	rsp, 0x10
	mov	rbp, rbp
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x419ba0
	.globl lsetfilecon
	.type lsetfilecon, @function
lsetfilecon:

	nop
	push	rbp
	mov	rbp, rsp
	lea	rsi, [rsi]
	sub	rsp, 0x10
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 8], rsi
	lea	rdi, [rdi]
	call	__errno_location
	nop	
	mov	ecx, 0xffffffff
	mov	dword ptr [rax], 0x5f
	nop	
	mov	eax, ecx
	lea	rdi, [rdi]
	add	rsp, 0x10
	pop	rbp
	lea	rdi, [rdi]
	ret	
	.section	.text
	.align	32
	#Procedure 0x419be0
	.globl fsetfilecon
	.type fsetfilecon, @function
fsetfilecon:

	push	rbp
	lea	rdi, [rdi]
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	dword ptr [rbp - 0xc], edi
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 8], rsi
	mov	rsp, rsp
	call	__errno_location
	lea	rsi, [rsi]
	mov	edi, 0xffffffff
	mov	rsp, rsp
	mov	dword ptr [rax], 0x5f
	mov	rbp, rbp
	mov	eax, edi
	add	rsp, 0x10
	pop	rbp
	mov	rbp, rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x419c20
	.globl security_check_context
	.type security_check_context, @function
security_check_context:

	lea	rsi, [rsi]
	push	rbp
	mov	rbp, rsp
	mov	rbp, rbp
	sub	rsp, 0x10
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 8], rdi
	call	__errno_location
	mov	rsp, rsp
	mov	ecx, 0xffffffff
	nop	
	mov	dword ptr [rax], 0x5f
	mov	eax, ecx
	nop	
	add	rsp, 0x10
	lea	rsi, [rsi]
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x419c60
	.globl security_check_context_raw
	.type security_check_context_raw, @function
security_check_context_raw:

	mov	rsp, rsp
	push	rbp
	mov	rsp, rsp
	mov	rbp, rsp
	lea	rsi, [rsi]
	sub	rsp, 0x10
	mov	qword ptr [rbp - 8], rdi
	mov	rbp, rbp
	call	__errno_location
	mov	ecx, 0xffffffff
	mov	dword ptr [rax], 0x5f
	mov	eax, ecx
	add	rsp, 0x10
	lea	rdi, [rdi]
	pop	rbp
	lea	rdi, [rdi]
	ret	
	.section	.text
	.align	32
	#Procedure 0x419ca0
	.globl setexeccon
	.type setexeccon, @function
setexeccon:

	push	rbp
	mov	rbp, rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 8], rdi
	nop	
	call	__errno_location
	nop	
	mov	ecx, 0xffffffff
	lea	rsi, [rsi]
	mov	dword ptr [rax], 0x5f
	mov	eax, ecx
	mov	rsp, rsp
	add	rsp, 0x10
	pop	rbp
	lea	rdi, [rdi]
	ret	
	.section	.text
	.align	32
	#Procedure 0x419ce0
	.globl security_compute_create
	.type security_compute_create, @function
security_compute_create:

	push	rbp
	nop	
	mov	rbp, rsp
	lea	rsi, [rsi]
	sub	rsp, 0x20
	mov	ax, dx
	nop	
	mov	qword ptr [rbp - 0x20], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	word ptr [rbp - 0xa], ax
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 8], rcx
	call	__errno_location
	lea	rsi, [rsi]
	mov	edx, 0xffffffff
	lea	rsi, [rsi]
	mov	dword ptr [rax], 0x5f
	mov	eax, edx
	lea	rdi, [rdi]
	add	rsp, 0x20
	pop	rbp
	nop	
	ret	
	.section	.text
	.align	32
	#Procedure 0x419d30
	.globl string_to_security_class
	.type string_to_security_class, @function
string_to_security_class:

	mov	rbp, rbp
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 8], rdi
	call	__errno_location
	xor	ecx, ecx
	lea	rdi, [rdi]
	mov	dx, cx
	nop	
	mov	dword ptr [rax], 0x5f
	movzx	eax, dx
	nop	
	add	rsp, 0x10
	pop	rbp
	mov	rsp, rsp
	ret	
	.section	.text
	.align	32
	#Procedure 0x419d60
	.globl matchpathcon_init_prefix
	.type matchpathcon_init_prefix, @function
matchpathcon_init_prefix:

	push	rbp
	nop	
	mov	rbp, rsp
	mov	rsp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 8], rsi
	mov	rsp, rsp
	call	__errno_location
	mov	ecx, 0xffffffff
	mov	dword ptr [rax], 0x5f
	mov	eax, ecx
	add	rsp, 0x10
	pop	rbp
	mov	rbp, rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x419da0

	.globl get_stat_atime_ns
	.type get_stat_atime_ns, @function
get_stat_atime_ns:
	mov	rsp, rsp
	push	rbp
	lea	rdi, [rdi]
	mov	rbp, rsp
	nop	
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	nop	
	mov	rax, qword ptr [rdi + 0x50]
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x419dc0

	.globl get_stat_ctime_ns
	.type get_stat_ctime_ns, @function
get_stat_ctime_ns:
	lea	rsi, [rsi]
	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	rax, qword ptr [rdi + 0x70]
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x419de0

	.globl get_stat_mtime_ns
	.type get_stat_mtime_ns, @function
get_stat_mtime_ns:
	push	rbp
	mov	rsp, rsp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	rax, qword ptr [rdi + 0x60]
	lea	rdi, [rdi]
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x419e00
	.globl get_stat_birthtime_ns
	.type get_stat_birthtime_ns, @function
get_stat_birthtime_ns:

	push	rbp
	lea	rsi, [rsi]
	mov	rbp, rsp
	xor	eax, eax
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 8], rdi
	mov	rbp, rbp
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x419e20

	.globl get_stat_atime
	.type get_stat_atime, @function
get_stat_atime:
	lea	rdi, [rdi]
	push	rbp
	mov	rsp, rsp
	mov	rbp, rsp
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x18], rdi
	movups	xmm0, xmmword ptr [rdi + 0x48]
	movaps	xmmword ptr [rbp - 0x10], xmm0
	mov	rax, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 8]
	nop	
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x419e50
	.globl get_stat_ctime
	.type get_stat_ctime, @function
get_stat_ctime:

	mov	rbp, rbp
	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	movups	xmm0, xmmword ptr [rdi + 0x68]
	movaps	xmmword ptr [rbp - 0x20], xmm0
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x18]
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x419e80

	.globl get_stat_mtime
	.type get_stat_mtime, @function
get_stat_mtime:
	push	rbp
	mov	rbp, rsp
	mov	rsp, rsp
	mov	qword ptr [rbp - 8], rdi
	lea	rdi, [rdi]
	movups	xmm0, xmmword ptr [rdi + 0x58]
	mov	rbp, rbp
	movaps	xmmword ptr [rbp - 0x20], xmm0
	mov	rax, qword ptr [rbp - 0x20]
	nop	
	mov	rdx, qword ptr [rbp - 0x18]
	pop	rbp
	mov	rsp, rsp
	ret	
	.section	.text
	.align	32
	#Procedure 0x419eb0
	.globl get_stat_birthtime
	.type get_stat_birthtime, @function
get_stat_birthtime:

	lea	rdi, [rdi]
	push	rbp
	mov	rsp, rsp
	mov	rbp, rsp
	nop	
	mov	qword ptr [rbp - 0x28], rdi
	mov	qword ptr [rbp - 0x10], -1
	mov	qword ptr [rbp - 8], -1
	movups	xmm0, xmmword ptr [rbp - 0x10]
	movaps	xmmword ptr [rbp - 0x20], xmm0
	nop	
	mov	rax, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x18]
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x419ef0
	.globl stat_time_normalize
	.type stat_time_normalize, @function
stat_time_normalize:

	mov	rbp, rbp
	push	rbp
	mov	rsp, rsp
	mov	rbp, rsp
	mov	rsp, rsp
	mov	dword ptr [rbp - 0xc], edi
	mov	qword ptr [rbp - 8], rsi
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0xc]
	pop	rbp
	nop	
	ret	
	.section	.text
	.align	32
	#Procedure 0x419f10
	.globl statat
	.type statat, @function
statat:

	lea	rsi, [rsi]
	push	rbp
	mov	rbp, rsp
	lea	rdi, [rdi]
	sub	rsp, 0x20
	nop	
	xor	ecx, ecx
	mov	dword ptr [rbp - 4], edi
	mov	qword ptr [rbp - 0x18], rsi
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x10], rdx
	lea	rdi, [rdi]
	mov	edi, dword ptr [rbp - 4]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x10]
	call	fstatat
	mov	rbp, rbp
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x419f50

	.globl lstatat
	.type lstatat, @function
lstatat:
	push	rbp
	mov	rbp, rsp
	nop	
	sub	rsp, 0x20
	lea	rsi, [rsi]
	mov	ecx, 0x100
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x14], edi
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 8], rdx
	lea	rdi, [rdi]
	mov	edi, dword ptr [rbp - 0x14]
	nop	
	mov	rsi, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 8]
	call	fstatat
	mov	rsp, rsp
	add	rsp, 0x20
	mov	rsp, rsp
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x419fa0

	.globl try_tempname_len
	.type try_tempname_len, @function
try_tempname_len:
	lea	rdi, [rdi]
	push	rbp
	mov	rsp, rsp
	mov	rbp, rsp
	nop	
	sub	rsp, 0x80
	mov	qword ptr [rbp - 0x60], rdi
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x70], esi
	mov	qword ptr [rbp - 0x20], rdx
	mov	qword ptr [rbp - 0x30], rcx
	mov	qword ptr [rbp - 0x10], r8
	mov	dword ptr [rbp - 0x40], 0xffffffff
	call	__errno_location
	mov	esi, dword ptr [rax]
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x4c], esi
	nop	
	mov	dword ptr [rbp - 0x3c], 0x3a2f8
	mov	rdi, qword ptr [rbp - 0x60]
	nop	
	call	strlen
	nop	
	mov	qword ptr [rbp - 0x58], rax
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	movsxd	rdx, dword ptr [rbp - 0x70]
	lea	rsi, [rsi]
	add	rcx, rdx
	lea	rdi, [rdi]
	cmp	rax, rcx
	mov	rsp, rsp
	jb	.label_1516
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x58]
	nop	
	sub	rax, qword ptr [rbp - 0x10]
	movsxd	rcx, dword ptr [rbp - 0x70]
	sub	rax, rcx
	mov	rbp, rbp
	add	rax, qword ptr [rbp - 0x60]
	nop	
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdi, rax
	nop	
	call	check_x_suffix
	nop	
	test	al, 1
	mov	rsp, rsp
	jne	.label_1520
.label_1516:
	call	__errno_location
	mov	dword ptr [rax], 0x16
	mov	dword ptr [rbp - 4], 0xffffffff
	jmp	.label_1510
.label_1520:
	xor	eax, eax
	mov	edi, eax
	mov	rcx, qword ptr [rbp - 0x58]
	lea	rsi, [rsi]
	sub	rcx, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	movsxd	rdx, dword ptr [rbp - 0x70]
	lea	rsi, [rsi]
	sub	rcx, rdx
	add	rcx, qword ptr [rbp - 0x60]
	mov	qword ptr [rbp - 0x38], rcx
	mov	rsi, qword ptr [rbp - 0x10]
	nop	
	call	randint_all_new
	mov	qword ptr [rbp - 0x48], rax
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x48], 0
	lea	rdi, [rdi]
	jne	.label_1512
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 4], 0xffffffff
	mov	rbp, rbp
	jmp	.label_1510
.label_1512:
	mov	dword ptr [rbp - 0x14], 0
.label_1515:
	nop	
	mov	eax, dword ptr [rbp - 0x14]
	lea	rdi, [rdi]
	cmp	eax, dword ptr [rbp - 0x3c]
	jae	.label_1511
	mov	qword ptr [rbp - 0x78], 0
.label_1518:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x78]
	lea	rdi, [rdi]
	cmp	rax, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	jae	.label_1514
	mov	eax, 0x3d
	mov	esi, eax
	mov	rdi, qword ptr [rbp - 0x48]
	call	randint_genmax
	mov	cl,  byte ptr [byte ptr [+ (rax * 1) + letters]]
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x78]
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x38]
	mov	byte ptr [rsi + rax], cl
	mov	rax, qword ptr [rbp - 0x78]
	add	rax, 1
	mov	qword ptr [rbp - 0x78], rax
	nop	
	jmp	.label_1518
.label_1514:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x30]
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x60]
	mov	rsi, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	call	rax
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x40], eax
	cmp	dword ptr [rbp - 0x40], 0
	nop	
	jl	.label_1519
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x4c]
	mov	dword ptr [rbp - 0x18], eax
	lea	rsi, [rsi]
	call	__errno_location
	mov	ecx, dword ptr [rbp - 0x18]
	nop	
	mov	dword ptr [rax], ecx
	lea	rsi, [rsi]
	jmp	.label_1508
.label_1519:
	call	__errno_location
	lea	rdi, [rdi]
	cmp	dword ptr [rax], 0x11
	lea	rdi, [rdi]
	je	.label_1517
	mov	dword ptr [rbp - 0x40], 0xffffffff
	lea	rdi, [rdi]
	jmp	.label_1508
.label_1517:
	jmp	.label_1513
.label_1513:
	jmp	.label_1509
.label_1509:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x14]
	lea	rsi, [rsi]
	add	eax, 1
	mov	dword ptr [rbp - 0x14], eax
	mov	rbp, rbp
	jmp	.label_1515
.label_1511:
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x48]
	call	randint_all_free
	mov	dword ptr [rbp - 0x24], eax
	mov	rsp, rsp
	call	__errno_location
	mov	dword ptr [rax], 0x11
	mov	rbp, rbp
	mov	dword ptr [rbp - 4], 0xffffffff
	lea	rdi, [rdi]
	jmp	.label_1510
.label_1508:
	lea	rdi, [rdi]
	call	__errno_location
	mov	ecx, dword ptr [rax]
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x6c], ecx
	mov	rdi, qword ptr [rbp - 0x48]
	call	randint_all_free
	mov	ecx, dword ptr [rbp - 0x6c]
	mov	dword ptr [rbp - 0x68], eax
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x64], ecx
	call	__errno_location
	mov	rbp, rbp
	mov	ecx, dword ptr [rbp - 0x64]
	mov	dword ptr [rax], ecx
	mov	ecx, dword ptr [rbp - 0x40]
	nop	
	mov	dword ptr [rbp - 4], ecx
.label_1510:
	mov	eax, dword ptr [rbp - 4]
	nop	
	add	rsp, 0x80
	mov	rbp, rbp
	pop	rbp
	lea	rsi, [rsi]
	ret	
	.section	.text
	.align	32
	#Procedure 0x41a230

	.globl check_x_suffix
	.type check_x_suffix, @function
check_x_suffix:
	push	rbp
	mov	rbp, rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	rbp, rbp
	movabs	rax, OFFSET FLAT:.str.2_7
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x10], rdi
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x18], rsi
	mov	rsi, qword ptr [rbp - 0x18]
	nop	
	mov	rdi, qword ptr [rbp - 0x10]
	nop	
	mov	qword ptr [rbp - 8], rsi
	mov	rsi, rax
	call	strspn
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 8]
	cmp	rsi, rax
	nop	
	setbe	cl
	and	cl, 1
	mov	rbp, rbp
	movzx	eax, cl
	lea	rsi, [rsi]
	add	rsp, 0x20
	nop	
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x41a290

	.globl gen_tempname_len
	.type gen_tempname_len, @function
gen_tempname_len:
	mov	rbp, rbp
	push	rbp
	mov	rbp, rsp
	nop	
	sub	rsp, 0x40
	mov	qword ptr [rbp - 0x18], rdi
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x28], esi
	mov	dword ptr [rbp - 0x1c], edx
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x34], ecx
	mov	qword ptr [rbp - 8], r8
	mov	ecx, dword ptr [rbp - 0x34]
	test	ecx, ecx
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x24], ecx
	je	.label_1526
	mov	rsp, rsp
	jmp	.label_1522
.label_1522:
	mov	eax, dword ptr [rbp - 0x24]
	sub	eax, 1
	nop	
	mov	dword ptr [rbp - 0xc], eax
	je	.label_1525
	jmp	.label_1524
.label_1524:
	nop	
	mov	eax, dword ptr [rbp - 0x24]
	lea	rsi, [rsi]
	sub	eax, 2
	mov	dword ptr [rbp - 0x20], eax
	je	.label_1521
	mov	rbp, rbp
	jmp	.label_1527
.label_1526:
	mov	rsp, rsp
	movabs	rax, OFFSET FLAT:try_file
	mov	qword ptr [rbp - 0x30], rax
	nop	
	jmp	.label_1523
.label_1525:
	movabs	rax, OFFSET FLAT:try_dir
	nop	
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_1523
.label_1521:
	movabs	rax, OFFSET FLAT:try_nocreate
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_1523
.label_1527:
	movabs	rdi, OFFSET FLAT:.str_15
	mov	rbp, rbp
	movabs	rsi, OFFSET FLAT:.str.1_10
	mov	edx, 0x147
	mov	rbp, rbp
	movabs	rcx, OFFSET FLAT:__PRETTY_FUNCTION__.gen_tempname_len
	call	__assert_fail
.label_1523:
	lea	rsi, [rsi]
	lea	rax, [rbp - 0x1c]
	mov	rdi, qword ptr [rbp - 0x18]
	mov	esi, dword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x30]
	mov	rsp, rsp
	mov	r8, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	rdx, rax
	call	try_tempname_len
	mov	rsp, rsp
	add	rsp, 0x40
	pop	rbp
	lea	rdi, [rdi]
	ret	
	.section	.text
	.align	32
	#Procedure 0x41a3a0

	.globl try_file
	.type try_file, @function
try_file:
	push	rbp
	mov	rbp, rsp
	lea	rdi, [rdi]
	sub	rsp, 0x20
	mov	edx, 0x180
	mov	rbp, rbp
	mov	qword ptr [rbp - 8], rdi
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x18], rsi
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x10], rsi
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	eax, dword ptr [rsi]
	lea	rsi, [rsi]
	and	eax, 0xfffffffc
	or	eax, 2
	mov	rsp, rsp
	or	eax, 0x40
	or	eax, 0x80
	lea	rsi, [rsi]
	mov	esi, eax
	mov	al, 0
	call	open
	add	rsp, 0x20
	pop	rbp
	nop	
	ret	
	.section	.text
	.align	32
	#Procedure 0x41a400

	.globl try_dir
	.type try_dir, @function
try_dir:
	push	rbp
	lea	rsi, [rsi]
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	eax, 0x1c0
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rdi, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	esi, eax
	nop	
	call	mkdir
	add	rsp, 0x10
	mov	rsp, rsp
	pop	rbp
	mov	rsp, rsp
	ret	
	.section	.text
	.align	32
	#Procedure 0x41a440

	.globl try_nocreate
	.type try_nocreate, @function
try_nocreate:
	lea	rdi, [rdi]
	push	rbp
	mov	rbp, rsp
	lea	rsi, [rsi]
	sub	rsp, 0xa0
	lea	rax, [rbp - 0x90]
	mov	qword ptr [rbp - 0xa0], rdi
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x98], rsi
	mov	rdi, qword ptr [rbp - 0xa0]
	mov	rsi, rax
	call	__lstat
	cmp	eax, 0
	je	.label_1529
	call	__errno_location
	cmp	dword ptr [rax], 0x4b
	jne	.label_1528
.label_1529:
	call	__errno_location
	mov	dword ptr [rax], 0x11
.label_1528:
	call	__errno_location
	mov	ecx, 0xffffffff
	nop	
	xor	edx, edx
	cmp	dword ptr [rax], 2
	mov	rbp, rbp
	cmove	ecx, edx
	mov	eax, ecx
	mov	rbp, rbp
	add	rsp, 0xa0
	pop	rbp
	mov	rbp, rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x41a4d0
	.globl gen_tempname
	.type gen_tempname, @function
gen_tempname:

	lea	rdi, [rdi]
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	rsp, rsp
	mov	eax, 6
	mov	rsp, rsp
	mov	r8d, eax
	mov	qword ptr [rbp - 0x10], rdi
	mov	dword ptr [rbp - 0x14], esi
	nop	
	mov	dword ptr [rbp - 4], edx
	mov	rsp, rsp
	mov	dword ptr [rbp - 8], ecx
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	esi, dword ptr [rbp - 0x14]
	lea	rdi, [rdi]
	mov	edx, dword ptr [rbp - 4]
	nop	
	mov	ecx, dword ptr [rbp - 8]
	call	gen_tempname_len
	add	rsp, 0x20
	pop	rbp
	nop	
	ret	
	.section	.text
	.align	32
	#Procedure 0x41a520
	.globl try_tempname
	.type try_tempname, @function
try_tempname:

	push	rbp
	lea	rsi, [rsi]
	mov	rbp, rsp
	lea	rdi, [rdi]
	sub	rsp, 0x20
	mov	eax, 6
	mov	rsp, rsp
	mov	r8d, eax
	mov	qword ptr [rbp - 0x18], rdi
	mov	rsp, rsp
	mov	dword ptr [rbp - 4], esi
	mov	qword ptr [rbp - 0x10], rdx
	nop	
	mov	qword ptr [rbp - 0x20], rcx
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	mov	esi, dword ptr [rbp - 4]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	call	try_tempname_len
	mov	rsp, rsp
	add	rsp, 0x20
	pop	rbp
	nop	
	ret	
	.section	.text
	.align	32
	#Procedure 0x41a580

	.globl fd_safer
	.type fd_safer, @function
fd_safer:
	lea	rdi, [rdi]
	push	rbp
	mov	rbp, rsp
	lea	rsi, [rsi]
	sub	rsp, 0x20
	nop	
	xor	eax, eax
	mov	rsp, rsp
	mov	dword ptr [rbp - 4], edi
	mov	rbp, rbp
	cmp	eax, dword ptr [rbp - 4]
	mov	rbp, rbp
	jg	.label_1530
	cmp	dword ptr [rbp - 4], 2
	jg	.label_1530
	mov	edi, dword ptr [rbp - 4]
	call	dup_safer
	mov	rsp, rsp
	mov	dword ptr [rbp - 0xc], eax
	call	__errno_location
	nop	
	mov	edi, dword ptr [rax]
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x14], edi
	mov	edi, dword ptr [rbp - 4]
	call	close
	mov	rsp, rsp
	mov	edi, dword ptr [rbp - 0x14]
	mov	dword ptr [rbp - 8], eax
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x10], edi
	lea	rsi, [rsi]
	call	__errno_location
	nop	
	mov	edi, dword ptr [rbp - 0x10]
	mov	dword ptr [rax], edi
	mov	edi, dword ptr [rbp - 0xc]
	mov	rsp, rsp
	mov	dword ptr [rbp - 4], edi
.label_1530:
	mov	eax, dword ptr [rbp - 4]
	mov	rsp, rsp
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x41a610

	.globl utimecmp
	.type utimecmp, @function
utimecmp:
	mov	rbp, rbp
	push	rbp
	lea	rsi, [rsi]
	mov	rbp, rsp
	sub	rsp, 0x20
	lea	rsi, [rsi]
	mov	eax, 0xffffff9c
	nop	
	mov	qword ptr [rbp - 0x18], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x20], rdx
	mov	dword ptr [rbp - 4], ecx
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	mov	r8d, dword ptr [rbp - 4]
	lea	rsi, [rsi]
	mov	edi, eax
	call	utimecmpat
	lea	rdi, [rdi]
	add	rsp, 0x20
	mov	rbp, rbp
	pop	rbp
	mov	rbp, rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x41a670

	.globl utimecmpat
	.type utimecmpat, @function
utimecmpat:
	push	rbp
	mov	rbp, rsp
	lea	rsi, [rsi]
	sub	rsp, 0x1e0
	mov	dword ptr [rbp - 0x1cc], edi
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0xc0], rsi
	mov	qword ptr [rbp - 0x60], rdx
	nop	
	mov	qword ptr [rbp - 0x80], rcx
	mov	dword ptr [rbp - 0x134], r8d
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x60]
	mov	rbp, rbp
	mov	rcx, qword ptr [rcx + 0x58]
	nop	
	mov	qword ptr [rbp - 0x128], rcx
	mov	rcx, qword ptr [rbp - 0x80]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rcx + 0x58]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0xe8], rcx
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x60]
	call	get_stat_mtime_ns
	mov	r8d, eax
	mov	dword ptr [rbp - 0x24], r8d
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x80]
	lea	rdi, [rdi]
	call	get_stat_mtime_ns
	mov	rsp, rsp
	mov	r8d, eax
	mov	dword ptr [rbp - 0x84], r8d
	mov	r8d, dword ptr [rbp - 0x134]
	and	r8d, 1
	lea	rsi, [rsi]
	cmp	r8d, 0
	je	.label_1567
	mov	qword ptr [rbp - 0xd0], 0
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x128]
	cmp	rax, qword ptr [rbp - 0xe8]
	nop	
	jne	.label_1534
	mov	eax, dword ptr [rbp - 0x24]
	mov	rbp, rbp
	cmp	eax, dword ptr [rbp - 0x84]
	jne	.label_1534
	mov	dword ptr [rbp - 0x94], 0
	lea	rdi, [rdi]
	jmp	.label_1545
.label_1534:
	mov	rax, qword ptr [rbp - 0x128]
	mov	rcx, qword ptr [rbp - 0xe8]
	sub	rcx, 2
	cmp	rax, rcx
	nop	
	jg	.label_1548
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x94], 0xffffffff
	jmp	.label_1545
.label_1548:
	mov	rax, qword ptr [rbp - 0xe8]
	mov	rcx, qword ptr [rbp - 0x128]
	nop	
	sub	rcx, 2
	lea	rdi, [rdi]
	cmp	rax, rcx
	lea	rdi, [rdi]
	jg	.label_1537
	mov	dword ptr [rbp - 0x94], 1
	lea	rdi, [rdi]
	jmp	.label_1545
.label_1537:
	nop	
	cmp	qword ptr [word ptr [utimecmpat.ht]],  0
	jne	.label_1566
	lea	rsi, [rsi]
	mov	eax, 0x10
	lea	rdi, [rdi]
	mov	edi, eax
	nop	
	xor	eax, eax
	mov	esi, eax
	movabs	rdx, OFFSET FLAT:dev_info_hash
	movabs	rcx, OFFSET FLAT:dev_info_compare
	movabs	r8, OFFSET FLAT:free
	lea	rsi, [rsi]
	call	hash_initialize
	mov	qword ptr [word ptr [utimecmpat.ht]],  rax
.label_1566:
	cmp	qword ptr [word ptr [utimecmpat.ht]],  0
	je	.label_1533
	nop	
	cmp	qword ptr [word ptr [utimecmpat.new_dst_res]],  0
	jne	.label_1535
	mov	eax, 0x10
	lea	rsi, [rsi]
	mov	edi, eax
	call	malloc
	nop	
	mov	qword ptr [word ptr [utimecmpat.new_dst_res]],  rax
	lea	rsi, [rsi]
	cmp	qword ptr [word ptr [utimecmpat.new_dst_res]],  0
	jne	.label_1542
	mov	rsp, rsp
	jmp	.label_1560
.label_1542:
	mov	rax,  qword ptr [word ptr [utimecmpat.new_dst_res]]
	lea	rdi, [rdi]
	mov	dword ptr [rax + 8], 0x77359400
	mov	rbp, rbp
	mov	rax,  qword ptr [word ptr [utimecmpat.new_dst_res]]
	mov	byte ptr [rax + 0xc], 0
.label_1535:
	mov	rax, qword ptr [rbp - 0x60]
	nop	
	mov	rax, qword ptr [rax]
	mov	rsp, rsp
	mov	rcx,  qword ptr [word ptr [utimecmpat.new_dst_res]]
	mov	qword ptr [rcx], rax
	lea	rdi, [rdi]
	mov	rdi,  qword ptr [word ptr [utimecmpat.ht]]
	mov	rax,  qword ptr [word ptr [utimecmpat.new_dst_res]]
	lea	rsi, [rsi]
	mov	rsi, rax
	call	hash_insert
	nop	
	mov	qword ptr [rbp - 0xd0], rax
	cmp	qword ptr [rbp - 0xd0], 0
	jne	.label_1569
	mov	rbp, rbp
	jmp	.label_1560
.label_1569:
	mov	rax, qword ptr [rbp - 0xd0]
	nop	
	cmp	rax,  qword ptr [word ptr [utimecmpat.new_dst_res]]
	lea	rsi, [rsi]
	jne	.label_1570
	lea	rsi, [rsi]
	mov	qword ptr [word ptr [utimecmpat.new_dst_res]],  0
.label_1570:
	nop	
	jmp	.label_1553
.label_1533:
	jmp	.label_1560
.label_1560:
	lea	rsi, [rsi]
	cmp	qword ptr [word ptr [utimecmpat.ht]],  0
	je	.label_1531
	lea	rax, [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x60]
	mov	rbp, rbp
	mov	rcx, qword ptr [rcx]
	mov	qword ptr [rbp - 0x18], rcx
	mov	rsp, rsp
	mov	rdi,  qword ptr [word ptr [utimecmpat.ht]]
	mov	rsi, rax
	mov	rbp, rbp
	call	hash_lookup
	mov	qword ptr [rbp - 0xd0], rax
.label_1531:
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0xd0], 0
	jne	.label_1544
	lea	rax, [rbp - 0x18]
	mov	qword ptr [rbp - 0xd0], rax
	nop	
	mov	rax, qword ptr [rbp - 0xd0]
	mov	rsp, rsp
	mov	dword ptr [rax + 8], 0x77359400
	mov	rax, qword ptr [rbp - 0xd0]
	mov	rsp, rsp
	mov	byte ptr [rax + 0xc], 0
.label_1544:
	mov	rsp, rsp
	jmp	.label_1553
.label_1553:
	mov	rax, qword ptr [rbp - 0xd0]
	mov	rbp, rbp
	mov	ecx, dword ptr [rax + 8]
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x20], ecx
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0xd0]
	nop	
	test	byte ptr [rax + 0xc], 1
	lea	rdi, [rdi]
	jne	.label_1556
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x60]
	mov	rbp, rbp
	mov	rax, qword ptr [rax + 0x48]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x78], rax
	mov	rax, qword ptr [rbp - 0x60]
	mov	rbp, rbp
	mov	rax, qword ptr [rax + 0x68]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x30], rax
	nop	
	mov	rax, qword ptr [rbp - 0x128]
	nop	
	mov	qword ptr [rbp - 0x70], rax
	nop	
	mov	rdi, qword ptr [rbp - 0x60]
	mov	rbp, rbp
	call	get_stat_atime_ns
	mov	ecx, eax
	mov	dword ptr [rbp - 0xc4], ecx
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x60]
	mov	rbp, rbp
	call	get_stat_ctime_ns
	mov	rsp, rsp
	mov	ecx, eax
	mov	dword ptr [rbp - 0x98], ecx
	mov	rsp, rsp
	mov	ecx, dword ptr [rbp - 0x24]
	mov	dword ptr [rbp - 0xa0], ecx
	mov	rax, qword ptr [rbp - 0x78]
	or	rax, qword ptr [rbp - 0x30]
	or	rax, qword ptr [rbp - 0x70]
	and	rax, 1
	cmp	rax, 0
	setne	dl
	mov	rbp, rbp
	and	dl, 1
	mov	byte ptr [rbp - 0x8d], dl
	mov	rsp, rsp
	mov	ecx, dword ptr [rbp - 0xc4]
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x54], ecx
	mov	rsp, rsp
	mov	ecx, dword ptr [rbp - 0x98]
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x8c], ecx
	mov	ecx, dword ptr [rbp - 0xa0]
	mov	dword ptr [rbp - 8], ecx
	mov	rsp, rsp
	mov	dword ptr [rbp - 0xd4], 1
	imul	ecx, dword ptr [rbp - 0xd4], 0xa
	mov	dword ptr [rbp - 0xd4], ecx
	nop	
	mov	eax, dword ptr [rbp - 0x54]
	mov	rsp, rsp
	cdq	
	idiv	dword ptr [rbp - 0xd4]
	mov	rsp, rsp
	mov	ecx, dword ptr [rbp - 0x8c]
	mov	eax, ecx
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x9c], edx
	cdq	
	idiv	dword ptr [rbp - 0xd4]
	mov	ecx, dword ptr [rbp - 0x9c]
	or	ecx, edx
	nop	
	mov	edx, dword ptr [rbp - 8]
	mov	eax, edx
	lea	rdi, [rdi]
	cdq	
	lea	rdi, [rdi]
	idiv	dword ptr [rbp - 0xd4]
	or	ecx, edx
	nop	
	cmp	ecx, 0
	mov	rbp, rbp
	je	.label_1541
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x20], 1
	jmp	.label_1572
.label_1541:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0xd4]
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x20], eax
	nop	
	mov	eax, dword ptr [rbp - 0xd4]
	mov	ecx, dword ptr [rbp - 0x54]
	nop	
	mov	dword ptr [rbp - 0xb0], eax
	lea	rsi, [rsi]
	mov	eax, ecx
	mov	rbp, rbp
	cdq	
	mov	ecx, dword ptr [rbp - 0xb0]
	mov	rbp, rbp
	idiv	ecx
	mov	dword ptr [rbp - 0x54], eax
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0xd4]
	mov	rsp, rsp
	mov	esi, dword ptr [rbp - 0x8c]
	mov	dword ptr [rbp - 0x118], eax
	lea	rdi, [rdi]
	mov	eax, esi
	mov	rbp, rbp
	cdq	
	mov	esi, dword ptr [rbp - 0x118]
	mov	rbp, rbp
	idiv	esi
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x8c], eax
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0xd4]
	mov	edi, dword ptr [rbp - 8]
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x1d0], eax
	nop	
	mov	eax, edi
	cdq	
	lea	rsi, [rsi]
	mov	edi, dword ptr [rbp - 0x1d0]
	lea	rsi, [rsi]
	idiv	edi
	mov	dword ptr [rbp - 8], eax
.label_1573:
	xor	eax, eax
	mov	cl, al
	mov	eax, dword ptr [rbp - 0x20]
	mov	rdx, qword ptr [rbp - 0xd0]
	cmp	eax, dword ptr [rdx + 8]
	mov	byte ptr [rbp - 0x19], cl
	jge	.label_1554
	mov	rsp, rsp
	mov	eax, 0xa
	mov	ecx, dword ptr [rbp - 0x54]
	mov	dword ptr [rbp - 0x1d4], eax
	nop	
	mov	eax, ecx
	mov	rbp, rbp
	cdq	
	mov	ecx, dword ptr [rbp - 0x1d4]
	nop	
	idiv	ecx
	lea	rsi, [rsi]
	mov	esi, dword ptr [rbp - 0x8c]
	mov	eax, esi
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x104], edx
	cdq	
	nop	
	idiv	ecx
	mov	esi, dword ptr [rbp - 0x104]
	lea	rsi, [rsi]
	or	esi, edx
	lea	rsi, [rsi]
	mov	edx, dword ptr [rbp - 8]
	mov	eax, edx
	cdq	
	idiv	ecx
	nop	
	or	esi, edx
	cmp	esi, 0
	mov	rbp, rbp
	sete	dil
	mov	byte ptr [rbp - 0x19], dil
.label_1554:
	mov	al, byte ptr [rbp - 0x19]
	test	al, 1
	jne	.label_1574
	jmp	.label_1532
.label_1574:
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x20], 0x3b9aca00
	lea	rdi, [rdi]
	jne	.label_1547
	lea	rdi, [rdi]
	test	byte ptr [rbp - 0x8d], 1
	jne	.label_1536
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x20]
	nop	
	shl	eax, 1
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x20], eax
.label_1536:
	jmp	.label_1532
.label_1547:
	jmp	.label_1543
.label_1543:
	mov	eax, 0xa
	mov	rbp, rbp
	imul	ecx, dword ptr [rbp - 0x20], 0xa
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x20], ecx
	mov	ecx, dword ptr [rbp - 0x54]
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0xdc], eax
	mov	rsp, rsp
	mov	eax, ecx
	mov	rsp, rsp
	cdq	
	mov	ecx, dword ptr [rbp - 0xdc]
	nop	
	idiv	ecx
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x54], eax
	mov	eax, dword ptr [rbp - 0x8c]
	mov	rsp, rsp
	cdq	
	mov	rbp, rbp
	idiv	ecx
	mov	dword ptr [rbp - 0x8c], eax
	nop	
	mov	eax, dword ptr [rbp - 8]
	nop	
	cdq	
	lea	rdi, [rdi]
	idiv	ecx
	nop	
	mov	dword ptr [rbp - 8], eax
	lea	rsi, [rsi]
	jmp	.label_1573
.label_1532:
	mov	rsp, rsp
	jmp	.label_1572
.label_1572:
	mov	rsp, rsp
	mov	eax, 1
	mov	rbp, rbp
	mov	ecx, dword ptr [rbp - 0x20]
	nop	
	mov	rdx, qword ptr [rbp - 0xd0]
	mov	dword ptr [rdx + 8], ecx
	lea	rdi, [rdi]
	cmp	eax, dword ptr [rbp - 0x20]
	mov	rsp, rsp
	jge	.label_1564
	xor	eax, eax
	mov	rsp, rsp
	mov	ecx, 1
	mov	edx, dword ptr [rbp - 0x84]
	mov	dword ptr [rbp - 0x100], eax
	mov	eax, edx
	cdq	
	idiv	ecx
	nop	
	mov	esi, dword ptr [rbp - 0x84]
	sub	esi, edx
	mov	dword ptr [rbp - 0x84], esi
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0xe8]
	cmp	dword ptr [rbp - 0x20], 0x77359400
	mov	edx, dword ptr [rbp - 0x100]
	cmove	edx, ecx
	lea	rdi, [rdi]
	xor	edx, 0xffffffff
	movsxd	r8, edx
	mov	rsp, rsp
	and	rdi, r8
	mov	qword ptr [rbp - 0x130], rdi
	mov	rdi, qword ptr [rbp - 0xe8]
	lea	rsi, [rsi]
	cmp	rdi, qword ptr [rbp - 0x128]
	jl	.label_1571
	mov	rax, qword ptr [rbp - 0xe8]
	cmp	rax, qword ptr [rbp - 0x128]
	mov	rbp, rbp
	jne	.label_1546
	mov	eax, dword ptr [rbp - 0x84]
	nop	
	cmp	eax, dword ptr [rbp - 0x24]
	jg	.label_1546
.label_1571:
	nop	
	mov	dword ptr [rbp - 0x94], 1
	jmp	.label_1545
.label_1546:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x128]
	lea	rdi, [rdi]
	cmp	rax, qword ptr [rbp - 0x130]
	mov	rsp, rsp
	jl	.label_1555
	mov	rax, qword ptr [rbp - 0x128]
	mov	rbp, rbp
	cmp	rax, qword ptr [rbp - 0x130]
	lea	rdi, [rdi]
	jne	.label_1559
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x24]
	mov	ecx, dword ptr [rbp - 0x84]
	lea	rsi, [rsi]
	mov	edx, dword ptr [rbp - 0x84]
	nop	
	mov	dword ptr [rbp - 0xb4], eax
	mov	eax, edx
	cdq	
	idiv	dword ptr [rbp - 0x20]
	mov	rsp, rsp
	sub	ecx, edx
	mov	edx, dword ptr [rbp - 0xb4]
	cmp	edx, ecx
	jge	.label_1559
.label_1555:
	mov	dword ptr [rbp - 0x94], 0xffffffff
	jmp	.label_1545
.label_1559:
	lea	rdi, [rdi]
	mov	ecx, 0x100
	lea	rdx, [rbp - 0x50]
	mov	eax, 9
	mov	rsi, qword ptr [rbp - 0x78]
	mov	qword ptr [rbp - 0x50], rsi
	movsxd	rsi, dword ptr [rbp - 0xc4]
	mov	qword ptr [rbp - 0x48], rsi
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x70]
	mov	rsp, rsp
	cmp	dword ptr [rbp - 0x20], 0x77359400
	sete	dil
	and	dil, 1
	movzx	r8d, dil
	nop	
	movsxd	r9, r8d
	mov	rsp, rsp
	or	rsi, r9
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x40], rsi
	nop	
	mov	r8d, dword ptr [rbp - 0xa0]
	mov	r10d, dword ptr [rbp - 0x20]
	nop	
	mov	dword ptr [rbp - 0xec], eax
	mov	eax, r10d
	mov	rsp, rsp
	mov	qword ptr [rbp - 0xf8], rdx
	cdq	
	mov	r10d, dword ptr [rbp - 0xec]
	mov	rbp, rbp
	idiv	r10d
	add	r8d, eax
	mov	rsp, rsp
	movsxd	rsi, r8d
	mov	qword ptr [rbp - 0x38], rsi
	lea	rsi, [rsi]
	mov	edi, dword ptr [rbp - 0x1cc]
	nop	
	mov	rsi, qword ptr [rbp - 0xc0]
	mov	r9, qword ptr [rbp - 0xf8]
	mov	rdx, r9
	call	utimensat
	lea	rsi, [rsi]
	cmp	eax, 0
	je	.label_1562
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x94], 0xfffffffe
	jmp	.label_1545
.label_1562:
	lea	rdx, [rbp - 0x1c8]
	mov	ecx, 0x100
	lea	rsi, [rsi]
	mov	edi, dword ptr [rbp - 0x1cc]
	mov	rsi, qword ptr [rbp - 0xc0]
	nop	
	call	fstatat
	lea	rsi, [rsi]
	lea	rdi, [rbp - 0x1c8]
	mov	dword ptr [rbp - 0x11c], eax
	lea	rdi, [rdi]
	movsxd	rdx, dword ptr [rbp - 0x11c]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x170]
	mov	rbp, rbp
	xor	rsi, qword ptr [rbp - 0x70]
	lea	rdi, [rdi]
	or	rdx, rsi
	mov	qword ptr [rbp - 0xa8], rdx
	lea	rdi, [rdi]
	call	get_stat_mtime_ns
	movsxd	rdx, dword ptr [rbp - 0xa0]
	xor	rax, rdx
	mov	rdx, qword ptr [rbp - 0xa8]
	lea	rdi, [rdi]
	or	rdx, rax
	cmp	rdx, 0
	lea	rdi, [rdi]
	je	.label_1539
	mov	ecx, 0x100
	mov	rsp, rsp
	lea	rdx, [rbp - 0x50]
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x70]
	mov	qword ptr [rbp - 0x40], rax
	movsxd	rax, dword ptr [rbp - 0xa0]
	mov	qword ptr [rbp - 0x38], rax
	mov	rbp, rbp
	mov	edi, dword ptr [rbp - 0x1cc]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0xc0]
	mov	rbp, rbp
	call	utimensat
	mov	dword ptr [rbp - 0xfc], eax
.label_1539:
	nop	
	cmp	dword ptr [rbp - 0x11c], 0
	je	.label_1557
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x94], 0xfffffffe
	jmp	.label_1545
.label_1557:
	lea	rdi, [rbp - 0x1c8]
	nop	
	mov	eax, dword ptr [rbp - 0x20]
	mov	dword ptr [rbp - 0x10c], eax
	nop	
	mov	rcx, qword ptr [rbp - 0x170]
	mov	rsp, rsp
	and	rcx, 1
	mov	rbp, rbp
	imul	rcx, rcx, 0x3b9aca00
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x68], rcx
	call	get_stat_mtime_ns
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x68]
	add	rcx, rax
	mov	rsp, rsp
	mov	edx, ecx
	mov	rbp, rbp
	mov	dword ptr [rbp - 0xac], edx
	mov	dword ptr [rbp - 0x20], 1
	lea	rdi, [rdi]
	mov	edx, dword ptr [rbp - 0x20]
	nop	
	mov	eax, dword ptr [rbp - 0xac]
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x88], edx
	cdq	
	mov	esi, dword ptr [rbp - 0x88]
	idiv	esi
	nop	
	mov	dword ptr [rbp - 0xac], eax
.label_1538:
	lea	rsi, [rsi]
	mov	eax, 0xa
	mov	rbp, rbp
	mov	ecx, dword ptr [rbp - 0xac]
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x114], eax
	lea	rsi, [rsi]
	mov	eax, ecx
	lea	rdi, [rdi]
	cdq	
	nop	
	mov	ecx, dword ptr [rbp - 0x114]
	lea	rdi, [rdi]
	idiv	ecx
	cmp	edx, 0
	lea	rsi, [rsi]
	jne	.label_1540
	cmp	dword ptr [rbp - 0x20], 0x3b9aca00
	mov	rsp, rsp
	jne	.label_1550
	mov	eax, dword ptr [rbp - 0x20]
	shl	eax, 1
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x20], eax
	mov	rbp, rbp
	jmp	.label_1540
.label_1550:
	nop	
	imul	eax, dword ptr [rbp - 0x20], 0xa
	mov	dword ptr [rbp - 0x20], eax
	mov	eax, dword ptr [rbp - 0x20]
	nop	
	cmp	eax, dword ptr [rbp - 0x10c]
	mov	rbp, rbp
	jne	.label_1552
	jmp	.label_1540
.label_1552:
	mov	rbp, rbp
	jmp	.label_1563
.label_1563:
	mov	eax, 0xa
	mov	rsp, rsp
	mov	ecx, dword ptr [rbp - 0xac]
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x108], eax
	mov	rbp, rbp
	mov	eax, ecx
	cdq	
	mov	rbp, rbp
	mov	ecx, dword ptr [rbp - 0x108]
	lea	rsi, [rsi]
	idiv	ecx
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0xac], eax
	mov	rbp, rbp
	jmp	.label_1538
.label_1540:
	jmp	.label_1564
.label_1564:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0xd0]
	mov	dword ptr [rcx + 8], eax
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0xd0]
	lea	rsi, [rsi]
	mov	byte ptr [rcx + 0xc], 1
.label_1556:
	xor	eax, eax
	mov	rbp, rbp
	mov	ecx, 1
	cmp	dword ptr [rbp - 0x20], 0x77359400
	cmove	eax, ecx
	xor	eax, 0xffffffff
	movsxd	rdx, eax
	mov	rbp, rbp
	and	rdx, qword ptr [rbp - 0xe8]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0xe8], rdx
	mov	eax, dword ptr [rbp - 0x84]
	nop	
	cdq	
	nop	
	idiv	dword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	mov	ecx, dword ptr [rbp - 0x84]
	sub	ecx, edx
	nop	
	mov	dword ptr [rbp - 0x84], ecx
.label_1567:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x128]
	mov	rsp, rsp
	cmp	rax, qword ptr [rbp - 0xe8]
	nop	
	jge	.label_1549
	mov	eax, 0xffffffff
	mov	rbp, rbp
	mov	dword ptr [rbp - 0xd8], eax
	mov	rbp, rbp
	jmp	.label_1551
.label_1549:
	mov	rax, qword ptr [rbp - 0x128]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rbp - 0xe8]
	jle	.label_1558
	mov	rbp, rbp
	mov	eax, 1
	nop	
	mov	dword ptr [rbp - 4], eax
	jmp	.label_1561
.label_1558:
	mov	eax, dword ptr [rbp - 0x24]
	mov	rbp, rbp
	cmp	eax, dword ptr [rbp - 0x84]
	jge	.label_1565
	lea	rdi, [rdi]
	mov	eax, 0xffffffff
	mov	dword ptr [rbp - 0x110], eax
	mov	rsp, rsp
	jmp	.label_1568
.label_1565:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x24]
	cmp	eax, dword ptr [rbp - 0x84]
	setg	cl
	mov	rbp, rbp
	and	cl, 1
	movzx	eax, cl
	nop	
	mov	dword ptr [rbp - 0x110], eax
.label_1568:
	mov	eax, dword ptr [rbp - 0x110]
	nop	
	mov	dword ptr [rbp - 4], eax
.label_1561:
	mov	eax, dword ptr [rbp - 4]
	mov	dword ptr [rbp - 0xd8], eax
.label_1551:
	mov	eax, dword ptr [rbp - 0xd8]
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x94], eax
.label_1545:
	mov	eax, dword ptr [rbp - 0x94]
	add	rsp, 0x1e0
	mov	rsp, rsp
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x41b240

	.globl dev_info_hash
	.type dev_info_hash, @function
dev_info_hash:
	push	rbp
	mov	rbp, rsp
	nop	
	mov	qword ptr [rbp - 0x10], rdi
	mov	rbp, rbp
	mov	qword ptr [rbp - 8], rsi
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x18], rsi
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x18]
	nop	
	mov	rax, qword ptr [rsi]
	xor	ecx, ecx
	nop	
	mov	edx, ecx
	div	qword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	rax, rdx
	pop	rbp
	lea	rdi, [rdi]
	ret	
	.section	.text
	.align	32
	#Procedure 0x41b280

	.globl dev_info_compare
	.type dev_info_compare, @function
dev_info_compare:
	push	rbp
	mov	rbp, rsp
	nop	
	mov	qword ptr [rbp - 0x20], rdi
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x18], rsi
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsi, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 8], rsi
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rsi]
	mov	rdi, qword ptr [rbp - 8]
	cmp	rsi, qword ptr [rdi]
	sete	al
	lea	rsi, [rsi]
	and	al, 1
	movzx	eax, al
	lea	rsi, [rsi]
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x41b2d0
	.globl lutimensat
	.type lutimensat, @function
lutimensat:

	lea	rsi, [rsi]
	push	rbp
	nop	
	mov	rbp, rsp
	lea	rsi, [rsi]
	sub	rsp, 0x20
	lea	rdi, [rdi]
	mov	ecx, 0x100
	nop	
	mov	dword ptr [rbp - 4], edi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	edi, dword ptr [rbp - 4]
	nop	
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x18]
	call	utimensat
	add	rsp, 0x20
	mov	rbp, rbp
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x41b310

	.globl fdutimens
	.type fdutimens, @function
fdutimens:
	mov	rbp, rbp
	push	rbp
	mov	rbp, rbp
	mov	rbp, rsp
	sub	rsp, 0x1b0
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x1a4], edi
	mov	qword ptr [rbp - 0xa8], rsi
	mov	qword ptr [rbp - 0x108], rdx
	cmp	qword ptr [rbp - 0x108], 0
	mov	rbp, rbp
	je	.label_1578
	lea	rax, [rbp - 0x60]
	mov	qword ptr [rbp - 0xb0], rax
	jmp	.label_1590
.label_1578:
	lea	rdi, [rdi]
	xor	eax, eax
	mov	ecx, eax
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0xb0], rcx
	lea	rsi, [rsi]
	jmp	.label_1590
.label_1590:
	mov	rax, qword ptr [rbp - 0xb0]
	mov	qword ptr [rbp - 0xc8], rax
	mov	dword ptr [rbp - 0x14], 0
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0xc8], 0
	je	.label_1596
	nop	
	mov	rax, qword ptr [rbp - 0x108]
	mov	rbp, rbp
	mov	rcx, qword ptr [rax]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x60], rcx
	mov	rax, qword ptr [rax + 8]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x58], rax
	mov	rax, qword ptr [rbp - 0x108]
	nop	
	mov	rcx, qword ptr [rax + 0x10]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x50], rcx
	mov	rax, qword ptr [rax + 0x18]
	mov	qword ptr [rbp - 0x48], rax
	mov	rdi, qword ptr [rbp - 0xc8]
	call	validate_timespec
	mov	dword ptr [rbp - 0x14], eax
.label_1596:
	cmp	dword ptr [rbp - 0x14], 0
	mov	rbp, rbp
	jge	.label_1591
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x9c], 0xffffffff
	jmp	.label_1581
.label_1591:
	mov	rbp, rbp
	cmp	dword ptr [rbp - 0x1a4], 0
	jge	.label_1575
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0xa8], 0
	mov	rbp, rbp
	jne	.label_1575
	mov	rsp, rsp
	call	__errno_location
	mov	dword ptr [rax], 9
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x9c], 0xffffffff
	jmp	.label_1581
.label_1575:
	xor	eax, eax
	cmp	eax,  dword ptr [dword ptr [utimensat_works_really]]
	jg	.label_1589
	cmp	dword ptr [rbp - 0x14], 2
	jne	.label_1593
	cmp	dword ptr [rbp - 0x1a4], 0
	nop	
	jge	.label_1594
	lea	rdi, [rdi]
	lea	rsi, [rbp - 0x1a0]
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0xa8]
	call	stat
	mov	rsp, rsp
	cmp	eax, 0
	lea	rdi, [rdi]
	jne	.label_1597
	mov	rbp, rbp
	jmp	.label_1600
.label_1594:
	lea	rsi, [rbp - 0x1a0]
	mov	edi, dword ptr [rbp - 0x1a4]
	call	__fstat
	cmp	eax, 0
	je	.label_1600
.label_1597:
	mov	dword ptr [rbp - 0x9c], 0xffffffff
	jmp	.label_1581
.label_1600:
	mov	rax, qword ptr [rbp - 0xc8]
	nop	
	cmp	qword ptr [rax + 8], 0x3ffffffe
	lea	rdi, [rdi]
	jne	.label_1605
	lea	rdi, [rbp - 0x1a0]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0xc8]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x110], rax
	call	get_stat_atime
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x10], rax
	mov	qword ptr [rbp - 8], rdx
	nop	
	mov	rax, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x110]
	nop	
	mov	qword ptr [rdx], rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rdx + 8], rax
	mov	rsp, rsp
	jmp	.label_1599
.label_1605:
	mov	rax, qword ptr [rbp - 0xc8]
	cmp	qword ptr [rax + 0x18], 0x3ffffffe
	mov	rsp, rsp
	jne	.label_1582
	lea	rdi, [rbp - 0x1a0]
	mov	rax, qword ptr [rbp - 0xc8]
	mov	qword ptr [rbp - 0x1b0], rax
	call	get_stat_mtime
	mov	qword ptr [rbp - 0x30], rax
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x28], rdx
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x30]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x1b0]
	mov	qword ptr [rdx + 0x10], rax
	mov	rax, qword ptr [rbp - 0x28]
	mov	rbp, rbp
	mov	qword ptr [rdx + 0x18], rax
.label_1582:
	jmp	.label_1599
.label_1599:
	mov	eax, dword ptr [rbp - 0x14]
	add	eax, 1
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x14], eax
.label_1593:
	nop	
	cmp	dword ptr [rbp - 0x1a4], 0
	lea	rsi, [rsi]
	jge	.label_1585
	mov	edi, 0xffffff9c
	xor	ecx, ecx
	mov	rsi, qword ptr [rbp - 0xa8]
	nop	
	mov	rdx, qword ptr [rbp - 0xc8]
	call	utimensat
	nop	
	xor	ecx, ecx
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0xdc], eax
	cmp	ecx, dword ptr [rbp - 0xdc]
	nop	
	jge	.label_1606
	lea	rsi, [rsi]
	call	__errno_location
	lea	rdi, [rdi]
	mov	dword ptr [rax], 0x26
.label_1606:
	lea	rsi, [rsi]
	cmp	dword ptr [rbp - 0xdc], 0
	nop	
	je	.label_1612
	call	__errno_location
	mov	rsp, rsp
	cmp	dword ptr [rax], 0x26
	mov	rsp, rsp
	je	.label_1609
.label_1612:
	mov	dword ptr [dword ptr [utimensat_works_really]],  1
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0xdc]
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x9c], eax
	jmp	.label_1581
.label_1609:
	mov	rsp, rsp
	jmp	.label_1585
.label_1585:
	xor	eax, eax
	cmp	eax, dword ptr [rbp - 0x1a4]
	mov	rsp, rsp
	jg	.label_1588
	lea	rdi, [rdi]
	mov	edi, dword ptr [rbp - 0x1a4]
	mov	rsi, qword ptr [rbp - 0xc8]
	mov	rsp, rsp
	call	futimens
	mov	rsp, rsp
	xor	edi, edi
	mov	dword ptr [rbp - 0xdc], eax
	nop	
	cmp	edi, dword ptr [rbp - 0xdc]
	mov	rbp, rbp
	jge	.label_1595
	call	__errno_location
	lea	rsi, [rsi]
	mov	dword ptr [rax], 0x26
.label_1595:
	cmp	dword ptr [rbp - 0xdc], 0
	je	.label_1601
	lea	rdi, [rdi]
	call	__errno_location
	mov	rsp, rsp
	cmp	dword ptr [rax], 0x26
	mov	rbp, rbp
	je	.label_1603
.label_1601:
	mov	dword ptr [dword ptr [utimensat_works_really]],  1
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0xdc]
	nop	
	mov	dword ptr [rbp - 0x9c], eax
	jmp	.label_1581
.label_1603:
	mov	rbp, rbp
	jmp	.label_1588
.label_1588:
	jmp	.label_1589
.label_1589:
	mov	rbp, rbp
	mov	dword ptr [dword ptr [utimensat_works_really]],  0xffffffff
	mov	dword ptr [dword ptr [lutimensat_works_really]],  0xffffffff
	nop	
	cmp	dword ptr [rbp - 0x14], 0
	je	.label_1607
	mov	rsp, rsp
	cmp	dword ptr [rbp - 0x14], 3
	je	.label_1577
	lea	rsi, [rsi]
	cmp	dword ptr [rbp - 0x1a4], 0
	lea	rdi, [rdi]
	jge	.label_1580
	mov	rbp, rbp
	lea	rsi, [rbp - 0x1a0]
	mov	rdi, qword ptr [rbp - 0xa8]
	nop	
	call	stat
	cmp	eax, 0
	jne	.label_1587
	mov	rsp, rsp
	jmp	.label_1577
.label_1580:
	nop	
	lea	rsi, [rbp - 0x1a0]
	lea	rsi, [rsi]
	mov	edi, dword ptr [rbp - 0x1a4]
	mov	rsp, rsp
	call	__fstat
	lea	rsi, [rsi]
	cmp	eax, 0
	lea	rdi, [rdi]
	je	.label_1577
.label_1587:
	mov	dword ptr [rbp - 0x9c], 0xffffffff
	jmp	.label_1581
.label_1577:
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0xc8], 0
	je	.label_1598
	lea	rdi, [rbp - 0x1a0]
	lea	rdi, [rdi]
	lea	rsi, [rbp - 0xc8]
	mov	rsp, rsp
	call	update_timespec
	lea	rdi, [rdi]
	test	al, 1
	jne	.label_1604
	jmp	.label_1598
.label_1604:
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x9c], 0
	jmp	.label_1581
.label_1598:
	jmp	.label_1607
.label_1607:
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0xc8], 0
	mov	rsp, rsp
	je	.label_1608
	lea	rax, [rbp - 0x100]
	mov	ecx, 0x3e8
	mov	rsp, rsp
	mov	edx, ecx
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0xc8]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rsi]
	mov	qword ptr [rbp - 0x100], rsi
	mov	rsi, qword ptr [rbp - 0xc8]
	mov	rsi, qword ptr [rsi + 8]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0xd8], rax
	mov	rbp, rbp
	mov	rax, rsi
	mov	qword ptr [rbp - 0xc0], rdx
	mov	rbp, rbp
	cqo	
	mov	rsi, qword ptr [rbp - 0xc0]
	mov	rbp, rbp
	idiv	rsi
	mov	qword ptr [rbp - 0xf8], rax
	mov	rax, qword ptr [rbp - 0xc8]
	mov	rax, qword ptr [rax + 0x10]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0xf0], rax
	mov	rax, qword ptr [rbp - 0xc8]
	nop	
	mov	rax, qword ptr [rax + 0x18]
	mov	rsp, rsp
	cqo	
	idiv	rsi
	mov	rsp, rsp
	mov	qword ptr [rbp - 0xe8], rax
	mov	rax, qword ptr [rbp - 0xd8]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0xd0], rax
	jmp	.label_1611
.label_1608:
	mov	rbp, rbp
	mov	qword ptr [rbp - 0xd0], 0
.label_1611:
	lea	rsi, [rsi]
	cmp	dword ptr [rbp - 0x1a4], 0
	jge	.label_1602
	mov	edi, 0xffffff9c
	mov	rsi, qword ptr [rbp - 0xa8]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0xd0]
	call	futimesat
	mov	dword ptr [rbp - 0x9c], eax
	jmp	.label_1581
.label_1602:
	xor	eax, eax
	mov	esi, eax
	mov	rsp, rsp
	mov	edi, dword ptr [rbp - 0x1a4]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0xd0]
	lea	rdi, [rdi]
	call	futimesat
	cmp	eax, 0
	jne	.label_1613
	cmp	qword ptr [rbp - 0xd0], 0
	nop	
	je	.label_1576
	mov	eax, 0x7a120
	lea	rsi, [rsi]
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0xd0]
	cmp	rcx, qword ptr [rdx + 8]
	lea	rdi, [rdi]
	setle	sil
	and	sil, 1
	mov	byte ptr [rbp - 0xb1], sil
	mov	rdx, qword ptr [rbp - 0xd0]
	cmp	rcx, qword ptr [rdx + 0x18]
	lea	rsi, [rsi]
	setle	sil
	and	sil, 1
	mov	byte ptr [rbp - 0x81], sil
	mov	rbp, rbp
	mov	sil, byte ptr [rbp - 0xb1]
	and	sil, 1
	movzx	eax, sil
	mov	sil, byte ptr [rbp - 0x81]
	and	sil, 1
	mov	rbp, rbp
	movzx	edi, sil
	nop	
	or	eax, edi
	mov	rbp, rbp
	cmp	eax, 0
	mov	rbp, rbp
	je	.label_1579
	mov	rsp, rsp
	lea	rsi, [rbp - 0x1a0]
	mov	edi, dword ptr [rbp - 0x1a4]
	lea	rsi, [rsi]
	call	__fstat
	lea	rdi, [rdi]
	cmp	eax, 0
	jne	.label_1579
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x158]
	mov	rcx, qword ptr [rbp - 0xd0]
	sub	rax, qword ptr [rcx]
	mov	qword ptr [rbp - 0x20], rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x148]
	nop	
	mov	rcx, qword ptr [rbp - 0xd0]
	mov	rbp, rbp
	sub	rax, qword ptr [rcx + 0x10]
	mov	qword ptr [rbp - 0x98], rax
	mov	qword ptr [rbp - 0x90], 0
	mov	rax, qword ptr [rbp - 0xd0]
	mov	rcx, qword ptr [rax]
	mov	qword ptr [rbp - 0x80], rcx
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x78], rax
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0xd0]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rax + 0x10]
	mov	qword ptr [rbp - 0x70], rcx
	mov	rsp, rsp
	mov	rax, qword ptr [rax + 0x18]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x68], rax
	lea	rdi, [rdi]
	test	byte ptr [rbp - 0xb1], 1
	lea	rdi, [rdi]
	je	.label_1583
	cmp	qword ptr [rbp - 0x20], 1
	mov	rbp, rbp
	jne	.label_1583
	lea	rdi, [rbp - 0x1a0]
	mov	rsp, rsp
	call	get_stat_atime_ns
	lea	rdi, [rdi]
	cmp	rax, 0
	lea	rdi, [rdi]
	jne	.label_1583
	lea	rax, [rbp - 0x80]
	nop	
	mov	qword ptr [rbp - 0x90], rax
	mov	rax, qword ptr [rbp - 0x90]
	lea	rdi, [rdi]
	mov	qword ptr [rax + 8], 0
.label_1583:
	lea	rdi, [rdi]
	test	byte ptr [rbp - 0x81], 1
	nop	
	je	.label_1592
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x98], 1
	jne	.label_1592
	lea	rdi, [rbp - 0x1a0]
	call	get_stat_mtime_ns
	cmp	rax, 0
	lea	rdi, [rdi]
	jne	.label_1592
	lea	rsi, [rsi]
	lea	rax, [rbp - 0x80]
	nop	
	mov	qword ptr [rbp - 0x90], rax
	mov	rax, qword ptr [rbp - 0x90]
	mov	rsp, rsp
	mov	qword ptr [rax + 0x18], 0
.label_1592:
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x90], 0
	je	.label_1610
	xor	eax, eax
	nop	
	mov	esi, eax
	nop	
	mov	edi, dword ptr [rbp - 0x1a4]
	mov	rdx, qword ptr [rbp - 0x90]
	call	futimesat
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x34], eax
.label_1610:
	nop	
	jmp	.label_1579
.label_1579:
	lea	rdi, [rdi]
	jmp	.label_1576
.label_1576:
	mov	dword ptr [rbp - 0x9c], 0
	jmp	.label_1581
.label_1613:
	lea	rsi, [rsi]
	jmp	.label_1584
.label_1584:
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0xa8], 0
	jne	.label_1586
	mov	dword ptr [rbp - 0x9c], 0xffffffff
	mov	rbp, rbp
	jmp	.label_1581
.label_1586:
	mov	rdi, qword ptr [rbp - 0xa8]
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0xd0]
	call	utimes
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x9c], eax
.label_1581:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x9c]
	mov	rsp, rsp
	add	rsp, 0x1b0
	lea	rdi, [rdi]
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x41bba0

	.globl validate_timespec
	.type validate_timespec, @function
validate_timespec:
	lea	rsi, [rsi]
	push	rbp
	mov	rbp, rsp
	lea	rdi, [rdi]
	sub	rsp, 0x20
	nop	
	mov	qword ptr [rbp - 0x10], rdi
	nop	
	mov	dword ptr [rbp - 4], 0
	mov	dword ptr [rbp - 0x14], 0
	mov	rdi, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	cmp	qword ptr [rdi + 8], 0x3fffffff
	je	.label_1619
	mov	rax, qword ptr [rbp - 0x10]
	cmp	qword ptr [rax + 8], 0x3ffffffe
	mov	rbp, rbp
	je	.label_1619
	nop	
	xor	eax, eax
	mov	rsp, rsp
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x10]
	cmp	rcx, qword ptr [rdx + 8]
	jg	.label_1615
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	cmp	qword ptr [rax + 8], 0x3b9aca00
	lea	rsi, [rsi]
	jge	.label_1615
.label_1619:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x10]
	nop	
	cmp	qword ptr [rax + 0x18], 0x3fffffff
	mov	rsp, rsp
	je	.label_1621
	mov	rax, qword ptr [rbp - 0x10]
	cmp	qword ptr [rax + 0x18], 0x3ffffffe
	mov	rsp, rsp
	je	.label_1621
	xor	eax, eax
	mov	rsp, rsp
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x10]
	nop	
	cmp	rcx, qword ptr [rdx + 0x18]
	lea	rsi, [rsi]
	jg	.label_1615
	mov	rax, qword ptr [rbp - 0x10]
	cmp	qword ptr [rax + 0x18], 0x3b9aca00
	mov	rbp, rbp
	jl	.label_1621
.label_1615:
	nop	
	call	__errno_location
	lea	rsi, [rsi]
	mov	dword ptr [rax], 0x16
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x18], 0xffffffff
	jmp	.label_1623
.label_1621:
	mov	rax, qword ptr [rbp - 0x10]
	nop	
	cmp	qword ptr [rax + 8], 0x3fffffff
	mov	rbp, rbp
	je	.label_1620
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x10]
	cmp	qword ptr [rax + 8], 0x3ffffffe
	jne	.label_1622
.label_1620:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	qword ptr [rax], 0
	mov	dword ptr [rbp - 4], 1
	mov	rax, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	cmp	qword ptr [rax + 8], 0x3ffffffe
	jne	.label_1617
	mov	eax, dword ptr [rbp - 0x14]
	add	eax, 1
	mov	dword ptr [rbp - 0x14], eax
.label_1617:
	jmp	.label_1622
.label_1622:
	mov	rax, qword ptr [rbp - 0x10]
	nop	
	cmp	qword ptr [rax + 0x18], 0x3fffffff
	je	.label_1616
	mov	rax, qword ptr [rbp - 0x10]
	cmp	qword ptr [rax + 0x18], 0x3ffffffe
	nop	
	jne	.label_1618
.label_1616:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rax + 0x10], 0
	mov	dword ptr [rbp - 4], 1
	mov	rax, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	cmp	qword ptr [rax + 0x18], 0x3ffffffe
	jne	.label_1614
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x14]
	lea	rsi, [rsi]
	add	eax, 1
	mov	dword ptr [rbp - 0x14], eax
.label_1614:
	mov	rbp, rbp
	jmp	.label_1618
.label_1618:
	mov	eax, dword ptr [rbp - 4]
	cmp	dword ptr [rbp - 0x14], 1
	sete	cl
	mov	rsp, rsp
	and	cl, 1
	movzx	edx, cl
	add	eax, edx
	mov	dword ptr [rbp - 0x18], eax
.label_1623:
	mov	eax, dword ptr [rbp - 0x18]
	mov	rbp, rbp
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x41bd90

	.globl update_timespec
	.type update_timespec, @function
update_timespec:
	push	rbp
	nop	
	mov	rbp, rsp
	lea	rdi, [rdi]
	sub	rsp, 0x50
	mov	qword ptr [rbp - 0x48], rdi
	mov	qword ptr [rbp - 0x18], rsi
	nop	
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rsi]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x20], rsi
	mov	rsi, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	cmp	qword ptr [rsi + 8], 0x3ffffffe
	mov	rbp, rbp
	jne	.label_1627
	mov	rax, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	cmp	qword ptr [rax + 0x18], 0x3ffffffe
	mov	rbp, rbp
	jne	.label_1627
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x49], 1
	mov	rsp, rsp
	jmp	.label_1624
.label_1627:
	mov	rax, qword ptr [rbp - 0x20]
	nop	
	cmp	qword ptr [rax + 8], 0x3fffffff
	lea	rsi, [rsi]
	jne	.label_1626
	mov	rax, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	cmp	qword ptr [rax + 0x18], 0x3fffffff
	mov	rbp, rbp
	jne	.label_1626
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x18]
	nop	
	mov	qword ptr [rax], 0
	mov	byte ptr [rbp - 0x49], 0
	mov	rbp, rbp
	jmp	.label_1624
.label_1626:
	mov	rax, qword ptr [rbp - 0x20]
	cmp	qword ptr [rax + 8], 0x3ffffffe
	mov	rsp, rsp
	jne	.label_1631
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x20]
	mov	rdi, qword ptr [rbp - 0x48]
	nop	
	mov	qword ptr [rbp - 0x28], rax
	lea	rdi, [rdi]
	call	get_stat_atime
	mov	qword ptr [rbp - 0x10], rax
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 8], rdx
	mov	rax, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	mov	qword ptr [rdx], rax
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rdx + 8], rax
	lea	rdi, [rdi]
	jmp	.label_1628
.label_1631:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	cmp	qword ptr [rax + 8], 0x3fffffff
	nop	
	jne	.label_1629
	mov	rdi, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	call	gettime
.label_1629:
	jmp	.label_1628
.label_1628:
	mov	rax, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	cmp	qword ptr [rax + 0x18], 0x3ffffffe
	jne	.label_1632
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x48]
	nop	
	mov	qword ptr [rbp - 0x40], rax
	call	get_stat_mtime
	mov	qword ptr [rbp - 0x38], rax
	mov	qword ptr [rbp - 0x30], rdx
	nop	
	mov	rax, qword ptr [rbp - 0x38]
	nop	
	mov	rdx, qword ptr [rbp - 0x40]
	lea	rsi, [rsi]
	mov	qword ptr [rdx + 0x10], rax
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rdx + 0x18], rax
	mov	rbp, rbp
	jmp	.label_1625
.label_1632:
	mov	rax, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	cmp	qword ptr [rax + 0x18], 0x3fffffff
	jne	.label_1630
	mov	rax, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	add	rax, 0x10
	lea	rdi, [rdi]
	mov	rdi, rax
	call	gettime
.label_1630:
	nop	
	jmp	.label_1625
.label_1625:
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x49], 0
.label_1624:
	mov	al, byte ptr [rbp - 0x49]
	and	al, 1
	mov	rsp, rsp
	movzx	eax, al
	add	rsp, 0x50
	mov	rbp, rbp
	pop	rbp
	nop	
	ret	
	.section	.text
	.align	32
	#Procedure 0x41bf70

	.globl utimens
	.type utimens, @function
utimens:
	lea	rsi, [rsi]
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	nop	
	mov	eax, 0xffffffff
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 8], rsi
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 8]
	mov	edi, eax
	mov	rsp, rsp
	call	fdutimens
	mov	rbp, rbp
	add	rsp, 0x10
	pop	rbp
	lea	rdi, [rdi]
	ret	
	.section	.text
	.align	32
	#Procedure 0x41bfb0

	.globl lutimens
	.type lutimens, @function
lutimens:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x110
	mov	qword ptr [rbp - 0x68], rdi
	mov	qword ptr [rbp - 0x40], rsi
	nop	
	cmp	qword ptr [rbp - 0x40], 0
	je	.label_1641
	mov	rsp, rsp
	lea	rax, [rbp - 0x20]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x50], rax
	mov	rsp, rsp
	jmp	.label_1646
.label_1641:
	xor	eax, eax
	mov	ecx, eax
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x50], rcx
	lea	rsi, [rsi]
	jmp	.label_1646
.label_1646:
	mov	rax, qword ptr [rbp - 0x50]
	mov	qword ptr [rbp - 0x28], rax
	mov	dword ptr [rbp - 0x44], 0
	cmp	qword ptr [rbp - 0x28], 0
	je	.label_1652
	mov	rax, qword ptr [rbp - 0x40]
	mov	rcx, qword ptr [rax]
	mov	qword ptr [rbp - 0x20], rcx
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x18], rax
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x40]
	mov	rsp, rsp
	mov	rcx, qword ptr [rax + 0x10]
	mov	qword ptr [rbp - 0x10], rcx
	nop	
	mov	rax, qword ptr [rax + 0x18]
	mov	qword ptr [rbp - 8], rax
	mov	rdi, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	call	validate_timespec
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x44], eax
.label_1652:
	mov	rbp, rbp
	cmp	dword ptr [rbp - 0x44], 0
	jge	.label_1648
	nop	
	mov	dword ptr [rbp - 0x34], 0xffffffff
	mov	rsp, rsp
	jmp	.label_1640
.label_1648:
	xor	eax, eax
	cmp	eax,  dword ptr [dword ptr [lutimensat_works_really]]
	nop	
	jg	.label_1650
	cmp	dword ptr [rbp - 0x44], 2
	lea	rsi, [rsi]
	jne	.label_1634
	mov	rbp, rbp
	lea	rsi, [rbp - 0xf8]
	mov	rdi, qword ptr [rbp - 0x68]
	mov	rbp, rbp
	call	__lstat
	cmp	eax, 0
	lea	rsi, [rsi]
	je	.label_1639
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x34], 0xffffffff
	mov	rbp, rbp
	jmp	.label_1640
.label_1639:
	mov	rax, qword ptr [rbp - 0x28]
	cmp	qword ptr [rax + 8], 0x3ffffffe
	jne	.label_1643
	lea	rdi, [rbp - 0xf8]
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x30], rax
	call	get_stat_atime
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x60], rax
	mov	qword ptr [rbp - 0x58], rdx
	mov	rax, qword ptr [rbp - 0x60]
	nop	
	mov	rdx, qword ptr [rbp - 0x30]
	mov	qword ptr [rdx], rax
	mov	rax, qword ptr [rbp - 0x58]
	nop	
	mov	qword ptr [rdx + 8], rax
	mov	rsp, rsp
	jmp	.label_1645
.label_1643:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x28]
	mov	rbp, rbp
	cmp	qword ptr [rax + 0x18], 0x3ffffffe
	nop	
	jne	.label_1637
	mov	rsp, rsp
	lea	rdi, [rbp - 0xf8]
	mov	rax, qword ptr [rbp - 0x28]
	nop	
	mov	qword ptr [rbp - 0x110], rax
	mov	rsp, rsp
	call	get_stat_mtime
	mov	qword ptr [rbp - 0x108], rax
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x100], rdx
	mov	rax, qword ptr [rbp - 0x108]
	mov	rdx, qword ptr [rbp - 0x110]
	mov	qword ptr [rdx + 0x10], rax
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x100]
	mov	rsp, rsp
	mov	qword ptr [rdx + 0x18], rax
.label_1637:
	nop	
	jmp	.label_1645
.label_1645:
	mov	eax, dword ptr [rbp - 0x44]
	mov	rsp, rsp
	add	eax, 1
	mov	dword ptr [rbp - 0x44], eax
.label_1634:
	mov	rsp, rsp
	mov	edi, 0xffffff9c
	mov	rsp, rsp
	mov	ecx, 0x100
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x68]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	call	utimensat
	xor	ecx, ecx
	mov	dword ptr [rbp - 0x38], eax
	cmp	ecx, dword ptr [rbp - 0x38]
	mov	rsp, rsp
	jge	.label_1642
	mov	rbp, rbp
	call	__errno_location
	mov	dword ptr [rax], 0x26
.label_1642:
	lea	rsi, [rsi]
	cmp	dword ptr [rbp - 0x38], 0
	je	.label_1649
	call	__errno_location
	cmp	dword ptr [rax], 0x26
	mov	rsp, rsp
	je	.label_1651
.label_1649:
	nop	
	mov	dword ptr [dword ptr [utimensat_works_really]],  1
	mov	rbp, rbp
	mov	dword ptr [dword ptr [lutimensat_works_really]],  1
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x38]
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x34], eax
	lea	rdi, [rdi]
	jmp	.label_1640
.label_1651:
	mov	rsp, rsp
	jmp	.label_1650
.label_1650:
	mov	dword ptr [dword ptr [lutimensat_works_really]],  0xffffffff
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x44], 0
	lea	rsi, [rsi]
	je	.label_1635
	nop	
	cmp	dword ptr [rbp - 0x44], 3
	je	.label_1644
	lea	rsi, [rbp - 0xf8]
	mov	rdi, qword ptr [rbp - 0x68]
	call	__lstat
	nop	
	cmp	eax, 0
	mov	rbp, rbp
	je	.label_1644
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x34], 0xffffffff
	lea	rdi, [rdi]
	jmp	.label_1640
.label_1644:
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x28], 0
	mov	rsp, rsp
	je	.label_1636
	lea	rdi, [rbp - 0xf8]
	lea	rsi, [rbp - 0x28]
	call	update_timespec
	mov	rbp, rbp
	test	al, 1
	mov	rbp, rbp
	jne	.label_1638
	jmp	.label_1636
.label_1638:
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x34], 0
	mov	rsp, rsp
	jmp	.label_1640
.label_1636:
	mov	rsp, rsp
	jmp	.label_1635
.label_1635:
	cmp	dword ptr [rbp - 0x44], 0
	jne	.label_1647
	lea	rsi, [rbp - 0xf8]
	mov	rdi, qword ptr [rbp - 0x68]
	call	__lstat
	cmp	eax, 0
	je	.label_1647
	nop	
	mov	dword ptr [rbp - 0x34], 0xffffffff
	jmp	.label_1640
.label_1647:
	mov	eax, dword ptr [rbp - 0xe0]
	and	eax, 0xf000
	cmp	eax, 0xa000
	mov	rsp, rsp
	je	.label_1633
	mov	edi, 0xffffffff
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x68]
	mov	rdx, qword ptr [rbp - 0x28]
	nop	
	call	fdutimens
	mov	dword ptr [rbp - 0x34], eax
	jmp	.label_1640
.label_1633:
	nop	
	call	__errno_location
	lea	rsi, [rsi]
	mov	dword ptr [rax], 0x26
	mov	dword ptr [rbp - 0x34], 0xffffffff
.label_1640:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x34]
	add	rsp, 0x110
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x41c360

	.globl version_etc_arn
	.type version_etc_arn, @function
version_etc_arn:
	nop	
	push	rbp
	mov	rbp, rsp
	push	r14
	mov	rbp, rbp
	push	rbx
	sub	rsp, 0x170
	mov	qword ptr [rbp - 0xb8], rdi
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x60], rsi
	mov	qword ptr [rbp - 0x78], rdx
	mov	qword ptr [rbp - 0x20], rcx
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x98], r8
	mov	qword ptr [rbp - 0x48], r9
	cmp	qword ptr [rbp - 0x60], 0
	je	.label_1657
	movabs	rsi, OFFSET FLAT:.str_16
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0xb8]
	nop	
	mov	rdx, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x78]
	mov	rsp, rsp
	mov	r8, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	mov	al, 0
	lea	rdi, [rdi]
	call	fprintf
	mov	dword ptr [rbp - 0x6c], eax
	lea	rsi, [rsi]
	jmp	.label_1655
.label_1657:
	lea	rdi, [rdi]
	movabs	rsi, OFFSET FLAT:.str.1_11
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0xb8]
	mov	rdx, qword ptr [rbp - 0x78]
	nop	
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	mov	al, 0
	call	fprintf
	mov	dword ptr [rbp - 0x114], eax
.label_1655:
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0xb8]
	mov	eax, OFFSET FLAT:.str.2_8
	lea	rsi, [rsi]
	mov	ecx, eax
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0xc8], rdi
	mov	rdi, rcx
	lea	rsi, [rsi]
	call	gettext
	mov	edx, OFFSET FLAT:version_etc_copyright
	lea	rsi, [rsi]
	mov	esi, edx
	xor	edx, edx
	mov	r8b, dl
	mov	rbp, rbp
	mov	ecx, 0x7e3
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0xc8]
	lea	rsi, [rsi]
	mov	rdx, rax
	mov	al, r8b
	nop	
	call	fprintf
	nop	
	mov	ecx, OFFSET FLAT:.str.3_5
	mov	rbp, rbp
	mov	edi, ecx
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x4c], eax
	lea	rdi, [rdi]
	call	gettext
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0xb8]
	mov	rdi, rax
	lea	rsi, [rsi]
	call	fputs_unlocked
	nop	
	mov	rdx, qword ptr [rbp - 0x48]
	lea	rsi, [rsi]
	mov	rsi, rdx
	sub	rsi, 9
	nop	
	mov	dword ptr [rbp - 0xac], eax
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x148], rdx
	mov	qword ptr [rbp - 0xe0], rsi
	mov	rbp, rbp
	ja	.label_1656
	mov	rax, qword ptr [rbp - 0x148]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_1653]]
	jmp	rcx
.label_2395:
	jmp	.label_1654
.label_2396:
	mov	rbp, rbp
	movabs	rdi, OFFSET FLAT:.str.4_2
	mov	rax, qword ptr [rbp - 0xb8]
	mov	qword ptr [rbp - 0x130], rax
	nop	
	call	gettext
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x98]
	mov	rdx, qword ptr [rdi]
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x130]
	mov	rsi, rax
	mov	al, 0
	lea	rdi, [rdi]
	call	fprintf
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x30], eax
	jmp	.label_1654
.label_2397:
	movabs	rdi, OFFSET FLAT:.str.5_3
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0xb8]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x28], rax
	lea	rsi, [rsi]
	call	gettext
	mov	rdi, qword ptr [rbp - 0x98]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rdi]
	mov	rdi, qword ptr [rbp - 0x98]
	mov	rcx, qword ptr [rdi + 8]
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x28]
	mov	rbp, rbp
	mov	rsi, rax
	mov	al, 0
	mov	rsp, rsp
	call	fprintf
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x3c], eax
	lea	rsi, [rsi]
	jmp	.label_1654
.label_2398:
	mov	rsp, rsp
	movabs	rdi, OFFSET FLAT:.str.6_2
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0xb8]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x138], rax
	call	gettext
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x98]
	nop	
	mov	rdx, qword ptr [rdi]
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x98]
	mov	rcx, qword ptr [rdi + 8]
	nop	
	mov	rdi, qword ptr [rbp - 0x98]
	mov	r8, qword ptr [rdi + 0x10]
	mov	rdi, qword ptr [rbp - 0x138]
	mov	rbp, rbp
	mov	rsi, rax
	mov	rbp, rbp
	mov	al, 0
	call	fprintf
	nop	
	mov	dword ptr [rbp - 0x2c], eax
	lea	rsi, [rsi]
	jmp	.label_1654
.label_2399:
	lea	rdi, [rdi]
	movabs	rdi, OFFSET FLAT:.str.7_2
	mov	rax, qword ptr [rbp - 0xb8]
	mov	qword ptr [rbp - 0xd0], rax
	call	gettext
	mov	rdi, qword ptr [rbp - 0x98]
	mov	rdx, qword ptr [rdi]
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x98]
	mov	rcx, qword ptr [rdi + 8]
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x98]
	mov	rsp, rsp
	mov	r8, qword ptr [rdi + 0x10]
	mov	rdi, qword ptr [rbp - 0x98]
	mov	rsp, rsp
	mov	r9, qword ptr [rdi + 0x18]
	mov	rdi, qword ptr [rbp - 0xd0]
	nop	
	mov	rsi, rax
	mov	al, 0
	call	fprintf
	mov	dword ptr [rbp - 0x84], eax
	jmp	.label_1654
.label_2400:
	nop	
	movabs	rdi, OFFSET FLAT:.str.8_2
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0xb8]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x100], rax
	mov	rsp, rsp
	call	gettext
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x98]
	mov	rdx, qword ptr [rdi]
	mov	rdi, qword ptr [rbp - 0x98]
	mov	rcx, qword ptr [rdi + 8]
	mov	rdi, qword ptr [rbp - 0x98]
	mov	rbp, rbp
	mov	r8, qword ptr [rdi + 0x10]
	mov	rdi, qword ptr [rbp - 0x98]
	mov	r9, qword ptr [rdi + 0x18]
	nop	
	mov	rdi, qword ptr [rbp - 0x98]
	mov	rdi, qword ptr [rdi + 0x20]
	mov	rsi, qword ptr [rbp - 0x100]
	mov	qword ptr [rbp - 0x38], rdi
	mov	rdi, rsi
	mov	rsi, rax
	mov	rax, qword ptr [rbp - 0x38]
	mov	qword ptr [rsp], rax
	mov	rbp, rbp
	mov	al, 0
	call	fprintf
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0xf4], eax
	nop	
	jmp	.label_1654
.label_2401:
	nop	
	movabs	rdi, OFFSET FLAT:.str.9_2
	mov	rax, qword ptr [rbp - 0xb8]
	mov	qword ptr [rbp - 0x140], rax
	mov	rbp, rbp
	call	gettext
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x98]
	mov	rdx, qword ptr [rdi]
	mov	rdi, qword ptr [rbp - 0x98]
	mov	rcx, qword ptr [rdi + 8]
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x98]
	mov	r8, qword ptr [rdi + 0x10]
	mov	rdi, qword ptr [rbp - 0x98]
	mov	rbp, rbp
	mov	r9, qword ptr [rdi + 0x18]
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x98]
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rdi + 0x20]
	nop	
	mov	rsi, qword ptr [rbp - 0x98]
	mov	rsi, qword ptr [rsi + 0x28]
	mov	r10, qword ptr [rbp - 0x140]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0xa0], rdi
	mov	rdi, r10
	mov	qword ptr [rbp - 0x68], rsi
	lea	rsi, [rsi]
	mov	rsi, rax
	mov	rax, qword ptr [rbp - 0xa0]
	mov	qword ptr [rsp], rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x68]
	mov	qword ptr [rsp + 8], rax
	mov	al, 0
	call	fprintf
	mov	dword ptr [rbp - 0x110], eax
	jmp	.label_1654
.label_2402:
	mov	rbp, rbp
	movabs	rdi, OFFSET FLAT:.str.10_4
	mov	rax, qword ptr [rbp - 0xb8]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0xf0], rax
	lea	rsi, [rsi]
	call	gettext
	mov	rdi, qword ptr [rbp - 0x98]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rdi]
	mov	rdi, qword ptr [rbp - 0x98]
	mov	rcx, qword ptr [rdi + 8]
	mov	rdi, qword ptr [rbp - 0x98]
	nop	
	mov	r8, qword ptr [rdi + 0x10]
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x98]
	mov	r9, qword ptr [rdi + 0x18]
	nop	
	mov	rdi, qword ptr [rbp - 0x98]
	mov	rbp, rbp
	mov	rdi, qword ptr [rdi + 0x20]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x98]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rsi + 0x28]
	mov	r10, qword ptr [rbp - 0x98]
	mov	rbp, rbp
	mov	r10, qword ptr [r10 + 0x30]
	mov	r11, qword ptr [rbp - 0xf0]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x90], rdi
	mov	rsp, rsp
	mov	rdi, r11
	mov	qword ptr [rbp - 0x128], rsi
	mov	rsp, rsp
	mov	rsi, rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x90]
	nop	
	mov	qword ptr [rsp], rax
	mov	rax, qword ptr [rbp - 0x128]
	mov	qword ptr [rsp + 8], rax
	mov	qword ptr [rsp + 0x10], r10
	mov	al, 0
	nop	
	call	fprintf
	mov	dword ptr [rbp - 0x50], eax
	nop	
	jmp	.label_1654
.label_2403:
	movabs	rdi, OFFSET FLAT:.str.11_4
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0xb8]
	mov	qword ptr [rbp - 0x108], rax
	call	gettext
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x98]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rdi]
	mov	rdi, qword ptr [rbp - 0x98]
	mov	rsp, rsp
	mov	rcx, qword ptr [rdi + 8]
	mov	rdi, qword ptr [rbp - 0x98]
	lea	rsi, [rsi]
	mov	r8, qword ptr [rdi + 0x10]
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x98]
	lea	rsi, [rsi]
	mov	r9, qword ptr [rdi + 0x18]
	mov	rdi, qword ptr [rbp - 0x98]
	nop	
	mov	rdi, qword ptr [rdi + 0x20]
	mov	rsi, qword ptr [rbp - 0x98]
	mov	rsi, qword ptr [rsi + 0x28]
	mov	r10, qword ptr [rbp - 0x98]
	lea	rsi, [rsi]
	mov	r10, qword ptr [r10 + 0x30]
	mov	rsp, rsp
	mov	r11, qword ptr [rbp - 0x98]
	lea	rsi, [rsi]
	mov	r11, qword ptr [r11 + 0x38]
	mov	rsp, rsp
	mov	rbx, qword ptr [rbp - 0x108]
	mov	qword ptr [rbp - 0x58], rdi
	mov	rdi, rbx
	nop	
	mov	qword ptr [rbp - 0x120], rsi
	mov	rsi, rax
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x58]
	mov	qword ptr [rsp], rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x120]
	mov	qword ptr [rsp + 8], rax
	mov	qword ptr [rsp + 0x10], r10
	mov	qword ptr [rsp + 0x18], r11
	lea	rsi, [rsi]
	mov	al, 0
	call	fprintf
	mov	rsp, rsp
	mov	dword ptr [rbp - 0xe4], eax
	jmp	.label_1654
.label_2404:
	movabs	rdi, OFFSET FLAT:.str.12_3
	nop	
	mov	rax, qword ptr [rbp - 0xb8]
	mov	qword ptr [rbp - 0x18], rax
	mov	rbp, rbp
	call	gettext
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x98]
	mov	rdx, qword ptr [rdi]
	nop	
	mov	rdi, qword ptr [rbp - 0x98]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rdi + 8]
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x98]
	lea	rsi, [rsi]
	mov	r8, qword ptr [rdi + 0x10]
	mov	rdi, qword ptr [rbp - 0x98]
	mov	r9, qword ptr [rdi + 0x18]
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x98]
	mov	rdi, qword ptr [rdi + 0x20]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x98]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rsi + 0x28]
	mov	rsp, rsp
	mov	r10, qword ptr [rbp - 0x98]
	mov	r10, qword ptr [r10 + 0x30]
	nop	
	mov	r11, qword ptr [rbp - 0x98]
	lea	rdi, [rdi]
	mov	r11, qword ptr [r11 + 0x38]
	mov	rbx, qword ptr [rbp - 0x98]
	lea	rsi, [rsi]
	mov	rbx, qword ptr [rbx + 0x40]
	mov	rbp, rbp
	mov	r14, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0xc0], rdi
	mov	rdi, r14
	mov	qword ptr [rbp - 0x80], rsi
	mov	rsi, rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0xc0]
	mov	qword ptr [rsp], rax
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x80]
	mov	qword ptr [rsp + 8], rax
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x10], r10
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x18], r11
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x20], rbx
	lea	rsi, [rsi]
	mov	al, 0
	lea	rdi, [rdi]
	call	fprintf
	mov	dword ptr [rbp - 0x154], eax
	jmp	.label_1654
.label_1656:
	movabs	rdi, OFFSET FLAT:.str.13_3
	mov	rax, qword ptr [rbp - 0xb8]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0xd8], rax
	lea	rdi, [rdi]
	call	gettext
	mov	rdi, qword ptr [rbp - 0x98]
	mov	rsp, rsp
	mov	rdx, qword ptr [rdi]
	mov	rdi, qword ptr [rbp - 0x98]
	mov	rsp, rsp
	mov	rcx, qword ptr [rdi + 8]
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x98]
	nop	
	mov	r8, qword ptr [rdi + 0x10]
	mov	rdi, qword ptr [rbp - 0x98]
	mov	r9, qword ptr [rdi + 0x18]
	mov	rdi, qword ptr [rbp - 0x98]
	mov	rdi, qword ptr [rdi + 0x20]
	nop	
	mov	rsi, qword ptr [rbp - 0x98]
	mov	rsi, qword ptr [rsi + 0x28]
	nop	
	mov	r10, qword ptr [rbp - 0x98]
	mov	r10, qword ptr [r10 + 0x30]
	mov	r11, qword ptr [rbp - 0x98]
	lea	rdi, [rdi]
	mov	r11, qword ptr [r11 + 0x38]
	mov	rbp, rbp
	mov	rbx, qword ptr [rbp - 0x98]
	mov	rbx, qword ptr [rbx + 0x40]
	mov	rsp, rsp
	mov	r14, qword ptr [rbp - 0xd8]
	mov	qword ptr [rbp - 0x150], rdi
	mov	rdi, r14
	mov	qword ptr [rbp - 0xa8], rsi
	mov	rsi, rax
	mov	rax, qword ptr [rbp - 0x150]
	mov	qword ptr [rsp], rax
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0xa8]
	mov	rbp, rbp
	mov	qword ptr [rsp + 8], rax
	mov	qword ptr [rsp + 0x10], r10
	nop	
	mov	qword ptr [rsp + 0x18], r11
	mov	qword ptr [rsp + 0x20], rbx
	mov	rsp, rsp
	mov	al, 0
	lea	rdi, [rdi]
	call	fprintf
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x10c], eax
.label_1654:
	lea	rdi, [rdi]
	add	rsp, 0x170
	pop	rbx
	nop	
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x41cba0
	.globl version_etc_ar
	.type version_etc_ar, @function
version_etc_ar:

	nop
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x18], rdi
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x28], rsi
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x20], rdx
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x30], rcx
	nop	
	mov	qword ptr [rbp - 0x10], r8
	mov	qword ptr [rbp - 8], 0
.label_1658:
	mov	rax, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x10]
	cmp	qword ptr [rcx + rax*8], 0
	je	.label_1659
	mov	rbp, rbp
	jmp	.label_1660
.label_1660:
	nop	
	mov	rax, qword ptr [rbp - 8]
	mov	rbp, rbp
	add	rax, 1
	mov	qword ptr [rbp - 8], rax
	lea	rsi, [rsi]
	jmp	.label_1658
.label_1659:
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x28]
	mov	rdx, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x30]
	mov	rbp, rbp
	mov	r8, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	r9, qword ptr [rbp - 8]
	call	version_etc_arn
	nop	
	add	rsp, 0x30
	lea	rdi, [rdi]
	pop	rbp
	mov	rsp, rsp
	ret	
	.section	.text
	.align	32
	#Procedure 0x41cc50

	.globl version_etc_va
	.type version_etc_va, @function
version_etc_va:
	push	rbp
	mov	rbp, rsp
	nop	
	sub	rsp, 0xa0
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0xa0], rdi
	mov	qword ptr [rbp - 0x20], rsi
	mov	qword ptr [rbp - 8], rdx
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x10], rcx
	mov	qword ptr [rbp - 0x28], r8
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x40], 0
.label_1665:
	mov	rsp, rsp
	xor	eax, eax
	mov	rbp, rbp
	mov	cl, al
	nop	
	cmp	qword ptr [rbp - 0x40], 0xa
	mov	byte ptr [rbp - 0x11], cl
	jae	.label_1661
	mov	rax, qword ptr [rbp - 0x28]
	nop	
	mov	ecx, dword ptr [rax]
	nop	
	cmp	ecx, 0x28
	mov	qword ptr [rbp - 0x98], rax
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x34], ecx
	ja	.label_1667
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x34]
	mov	rsp, rsp
	movsxd	rcx, eax
	mov	rdx, qword ptr [rbp - 0x98]
	mov	rbp, rbp
	add	rcx, qword ptr [rdx + 0x10]
	add	eax, 8
	mov	dword ptr [rdx], eax
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x30], rcx
	jmp	.label_1666
.label_1667:
	nop	
	mov	rax, qword ptr [rbp - 0x98]
	mov	rsp, rsp
	mov	rcx, qword ptr [rax + 8]
	mov	rdx, rcx
	nop	
	add	rcx, 8
	mov	qword ptr [rax + 8], rcx
	mov	qword ptr [rbp - 0x30], rdx
.label_1666:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x30]
	mov	rbp, rbp
	mov	rax, qword ptr [rax]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x40]
	mov	qword ptr [rbp + rcx*8 - 0x90], rax
	mov	rbp, rbp
	cmp	rax, 0
	setne	dl
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x11], dl
.label_1661:
	lea	rsi, [rsi]
	mov	al, byte ptr [rbp - 0x11]
	mov	rsp, rsp
	test	al, 1
	mov	rsp, rsp
	jne	.label_1664
	mov	rsp, rsp
	jmp	.label_1662
.label_1664:
	jmp	.label_1663
.label_1663:
	nop	
	mov	rax, qword ptr [rbp - 0x40]
	mov	rbp, rbp
	add	rax, 1
	mov	qword ptr [rbp - 0x40], rax
	jmp	.label_1665
.label_1662:
	nop	
	lea	r8, [rbp - 0x90]
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0xa0]
	mov	rsi, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 8]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	r9, qword ptr [rbp - 0x40]
	nop	
	call	version_etc_arn
	add	rsp, 0xa0
	mov	rbp, rbp
	pop	rbp
	mov	rbp, rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x41cdb0

	.globl version_etc
	.type version_etc, @function
version_etc:
	push	rbp
	mov	rbp, rsp
	nop	
	sub	rsp, 0x1d0
	mov	rbp, rbp
	test	al, al
	lea	rsi, [rsi]
	movaps	xmmword ptr [rbp - 0x120], xmm7
	nop	
	movaps	xmmword ptr [rbp - 0x1c0], xmm6
	movaps	xmmword ptr [rbp - 0x1a0], xmm5
	nop	
	movaps	xmmword ptr [rbp - 0x100], xmm4
	nop	
	movaps	xmmword ptr [rbp - 0x160], xmm3
	movaps	xmmword ptr [rbp - 0x140], xmm2
	lea	rdi, [rdi]
	movaps	xmmword ptr [rbp - 0x20], xmm1
	movaps	xmmword ptr [rbp - 0xf0], xmm0
	nop	
	mov	qword ptr [rbp - 0x1c8], rdi
	mov	qword ptr [rbp - 0x1a8], r9
	mov	qword ptr [rbp - 0x108], r8
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x128], rcx
	mov	qword ptr [rbp - 0x178], rdx
	mov	qword ptr [rbp - 0xd8], rsi
	lea	rsi, [rsi]
	je	.label_1668
	movaps	xmm0, xmmword ptr [rbp - 0xf0]
	mov	rsp, rsp
	movaps	xmmword ptr [rbp - 0xa0], xmm0
	lea	rdi, [rdi]
	movaps	xmm1, xmmword ptr [rbp - 0x20]
	movaps	xmmword ptr [rbp - 0x90], xmm1
	lea	rdi, [rdi]
	movaps	xmm2, xmmword ptr [rbp - 0x140]
	mov	rbp, rbp
	movaps	xmmword ptr [rbp - 0x80], xmm2
	movaps	xmm3, xmmword ptr [rbp - 0x160]
	movaps	xmmword ptr [rbp - 0x70], xmm3
	movaps	xmm4, xmmword ptr [rbp - 0x100]
	mov	rsp, rsp
	movaps	xmmword ptr [rbp - 0x60], xmm4
	lea	rdi, [rdi]
	movaps	xmm5, xmmword ptr [rbp - 0x1a0]
	mov	rbp, rbp
	movaps	xmmword ptr [rbp - 0x50], xmm5
	mov	rbp, rbp
	movaps	xmm6, xmmword ptr [rbp - 0x1c0]
	movaps	xmmword ptr [rbp - 0x40], xmm6
	mov	rsp, rsp
	movaps	xmm7, xmmword ptr [rbp - 0x120]
	mov	rbp, rbp
	movaps	xmmword ptr [rbp - 0x30], xmm7
.label_1668:
	mov	rax, qword ptr [rbp - 0x1a8]
	mov	qword ptr [rbp - 0xa8], rax
	mov	rcx, qword ptr [rbp - 0x108]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0xb0], rcx
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x128]
	mov	rsi, qword ptr [rbp - 0x178]
	mov	rdi, qword ptr [rbp - 0xd8]
	nop	
	mov	r8, qword ptr [rbp - 0x1c8]
	mov	qword ptr [rbp - 8], r8
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x168], rdi
	mov	qword ptr [rbp - 0x170], rsi
	mov	qword ptr [rbp - 0x148], rdx
	lea	rdx, [rbp - 0xd0]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x180], rdx
	lea	rdx, [rbp + 0x10]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x188], rdx
	mov	dword ptr [rbp - 0x18c], 0x30
	mov	dword ptr [rbp - 0x190], 0x20
	mov	rdi, qword ptr [rbp - 8]
	nop	
	mov	rsi, qword ptr [rbp - 0x168]
	mov	rdx, qword ptr [rbp - 0x170]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x148]
	lea	r8, [rbp - 0x190]
	call	version_etc_va
	add	rsp, 0x1d0
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x41cf70
	.globl emit_bug_reporting_address
	.type emit_bug_reporting_address, @function
emit_bug_reporting_address:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	lea	rsi, [rsi]
	movabs	rdi, OFFSET FLAT:.str.14_3
	lea	rsi, [rsi]
	call	gettext
	mov	rsp, rsp
	movabs	rsi, OFFSET FLAT:.str.15_1
	mov	rdi, rax
	mov	al, 0
	call	printf
	movabs	rdi, OFFSET FLAT:.str.16_2
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 4], eax
	call	gettext
	movabs	rsi, OFFSET FLAT:.str.17
	movabs	rdx, OFFSET FLAT:.str.18
	mov	rsp, rsp
	mov	rdi, rax
	mov	al, 0
	call	printf
	lea	rdi, [rdi]
	movabs	rdi, OFFSET FLAT:.str.19_2
	mov	dword ptr [rbp - 0xc], eax
	mov	rsp, rsp
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	mov	dword ptr [rbp - 8], eax
	mov	rsp, rsp
	add	rsp, 0x10
	mov	rbp, rbp
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x41d020

	.globl can_write_any_file
	.type can_write_any_file, @function
can_write_any_file:
	mov	rsp, rsp
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	lea	rdi, [rdi]
	test	byte ptr [byte ptr [can_write_any_file.initialized]],  1
	mov	rbp, rbp
	jne	.label_1669
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 1], 0
	call	geteuid
	lea	rdi, [rdi]
	cmp	eax, 0
	sete	cl
	and	cl, 1
	mov	byte ptr [rbp - 1], cl
	mov	cl, byte ptr [rbp - 1]
	nop	
	and	cl, 1
	lea	rdi, [rdi]
	mov	byte ptr [byte ptr [can_write_any_file.can_write]],  cl
	mov	rsp, rsp
	mov	byte ptr [byte ptr [can_write_any_file.initialized]],  1
.label_1669:
	mov	al,  byte ptr [byte ptr [can_write_any_file.can_write]]
	nop	
	and	al, 1
	movzx	eax, al
	nop	
	add	rsp, 0x10
	pop	rbp
	mov	rsp, rsp
	ret	
	.section	.text
	.align	32
	#Procedure 0x41d090
	.globl xnmalloc
	.type xnmalloc, @function
xnmalloc:

	lea	rdi, [rdi]
	push	rbp
	lea	rdi, [rdi]
	mov	rbp, rsp
	mov	rsp, rsp
	sub	rsp, 0x10
	mov	rbp, rbp
	movabs	rax, 0x7fffffffffffffff
	mov	rbp, rbp
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	xor	ecx, ecx
	mov	edx, ecx
	nop	
	div	qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rbp - 8]
	jae	.label_1670
	mov	rbp, rbp
	call	xalloc_die
.label_1670:
	mov	rax, qword ptr [rbp - 8]
	imul	rax, qword ptr [rbp - 0x10]
	nop	
	mov	rdi, rax
	call	xmalloc
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x41d0f0

	.globl xmalloc
	.type xmalloc, @function
xmalloc:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 0x10], rdi
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	call	malloc
	mov	qword ptr [rbp - 8], rax
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 8], 0
	mov	rbp, rbp
	jne	.label_1671
	cmp	qword ptr [rbp - 0x10], 0
	lea	rdi, [rdi]
	je	.label_1671
	lea	rdi, [rdi]
	call	xalloc_die
.label_1671:
	mov	rax, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	add	rsp, 0x10
	pop	rbp
	lea	rsi, [rsi]
	ret	
	.section	.text
	.align	32
	#Procedure 0x41d150

	.globl xnrealloc
	.type xnrealloc, @function
xnrealloc:
	lea	rdi, [rdi]
	push	rbp
	lea	rsi, [rsi]
	mov	rbp, rsp
	nop	
	sub	rsp, 0x20
	nop	
	movabs	rax, 0x7fffffffffffffff
	mov	qword ptr [rbp - 0x10], rdi
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 8], rdx
	mov	rbp, rbp
	xor	ecx, ecx
	mov	rsp, rsp
	mov	edx, ecx
	div	qword ptr [rbp - 8]
	mov	rsp, rsp
	cmp	rax, qword ptr [rbp - 0x18]
	jae	.label_1672
	mov	rsp, rsp
	call	xalloc_die
.label_1672:
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x10]
	nop	
	mov	rax, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	imul	rax, qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	rsi, rax
	lea	rdi, [rdi]
	call	xrealloc
	lea	rdi, [rdi]
	add	rsp, 0x20
	lea	rdi, [rdi]
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x41d1d0

	.globl xrealloc
	.type xrealloc, @function
xrealloc:
	push	rbp
	mov	rbp, rsp
	nop	
	sub	rsp, 0x20
	mov	qword ptr [rbp - 8], rdi
	nop	
	mov	qword ptr [rbp - 0x10], rsi
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x10], 0
	lea	rdi, [rdi]
	jne	.label_1673
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 8], 0
	lea	rsi, [rsi]
	je	.label_1673
	mov	rdi, qword ptr [rbp - 8]
	call	free
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x18], 0
	jmp	.label_1675
.label_1673:
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	nop	
	call	realloc
	mov	qword ptr [rbp - 8], rax
	mov	rbp, rbp
	cmp	qword ptr [rbp - 8], 0
	mov	rsp, rsp
	jne	.label_1674
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x10], 0
	lea	rdi, [rdi]
	je	.label_1674
	lea	rsi, [rsi]
	call	xalloc_die
.label_1674:
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x18], rax
.label_1675:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x18]
	add	rsp, 0x20
	pop	rbp
	lea	rdi, [rdi]
	ret	
	.section	.text
	.align	32
	#Procedure 0x41d280

	.globl x2nrealloc
	.type x2nrealloc, @function
x2nrealloc:
	push	rbp
	nop	
	mov	rbp, rsp
	mov	rbp, rbp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x18], rsi
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x20], rdx
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rdx]
	mov	qword ptr [rbp - 0x10], rdx
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 8], 0
	lea	rdi, [rdi]
	jne	.label_1676
	cmp	qword ptr [rbp - 0x10], 0
	jne	.label_1678
	mov	eax, 0x80
	xor	ecx, ecx
	mov	rbp, rbp
	mov	edx, ecx
	div	qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x10], rax
	cmp	qword ptr [rbp - 0x10], 0
	mov	rbp, rbp
	setne	sil
	mov	rsp, rsp
	xor	sil, 0xff
	and	sil, 1
	movzx	ecx, sil
	movsxd	rax, ecx
	add	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x10], rax
.label_1678:
	mov	rbp, rbp
	movabs	rax, 0x7fffffffffffffff
	nop	
	xor	ecx, ecx
	mov	rbp, rbp
	mov	edx, ecx
	nop	
	div	qword ptr [rbp - 0x20]
	mov	rbp, rbp
	cmp	rax, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	jae	.label_1680
	call	xalloc_die
.label_1680:
	lea	rsi, [rsi]
	jmp	.label_1679
.label_1676:
	nop	
	movabs	rax, 0x5555555555555554
	lea	rsi, [rsi]
	xor	ecx, ecx
	lea	rsi, [rsi]
	mov	edx, ecx
	div	qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rbp - 0x10]
	ja	.label_1677
	call	xalloc_die
.label_1677:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	shr	rax, 1
	mov	rbp, rbp
	add	rax, 1
	mov	rbp, rbp
	add	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x10], rax
.label_1679:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	mov	qword ptr [rcx], rax
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 8]
	mov	rax, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	imul	rax, qword ptr [rbp - 0x20]
	nop	
	mov	rsi, rax
	call	xrealloc
	add	rsp, 0x20
	pop	rbp
	lea	rdi, [rdi]
	ret	
	.section	.text
	.align	32
	#Procedure 0x41d3b0

	.globl xcharalloc
	.type xcharalloc, @function
xcharalloc:
	mov	rbp, rbp
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	call	xmalloc
	mov	rbp, rbp
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x41d3e0
	.globl x2realloc
	.type x2realloc, @function
x2realloc:

	push	rbp
	mov	rsp, rsp
	mov	rbp, rsp
	nop	
	sub	rsp, 0x10
	mov	eax, 1
	mov	edx, eax
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rdi, qword ptr [rbp - 8]
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x10]
	call	x2nrealloc
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x41d420
	.globl xzalloc
	.type xzalloc, @function
xzalloc:

	push	rbp
	lea	rsi, [rsi]
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 8], rdi
	nop	
	mov	rdi, qword ptr [rbp - 8]
	call	xmalloc
	xor	esi, esi
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	rdi, rax
	mov	qword ptr [rbp - 0x10], rax
	call	memset
	mov	rax, qword ptr [rbp - 0x10]
	add	rsp, 0x10
	lea	rdi, [rdi]
	pop	rbp
	lea	rdi, [rdi]
	ret	
	.section	.text
	.align	32
	#Procedure 0x41d470
	.globl xcalloc
	.type xcalloc, @function
xcalloc:

	mov	rbp, rbp
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	movabs	rax, 0x7fffffffffffffff
	nop	
	mov	qword ptr [rbp - 0x10], rdi
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x18], rsi
	nop	
	xor	ecx, ecx
	mov	edx, ecx
	div	qword ptr [rbp - 0x18]
	cmp	rax, qword ptr [rbp - 0x10]
	jb	.label_1681
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	call	calloc
	mov	qword ptr [rbp - 8], rax
	cmp	rax, 0
	jne	.label_1682
.label_1681:
	lea	rsi, [rsi]
	call	xalloc_die
.label_1682:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 8]
	nop	
	add	rsp, 0x20
	nop	
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x41d4e0

	.globl xmemdup
	.type xmemdup, @function
xmemdup:
	lea	rsi, [rsi]
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	nop	
	mov	qword ptr [rbp - 0x10], rdi
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x18], rsi
	mov	rdi, qword ptr [rbp - 0x18]
	call	xmalloc
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rdi, rax
	mov	rbp, rbp
	mov	qword ptr [rbp - 8], rax
	lea	rdi, [rdi]
	call	memcpy
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x20
	pop	rbp
	mov	rbp, rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x41d530

	.globl xstrdup
	.type xstrdup, @function
xstrdup:
	push	rbp
	lea	rsi, [rsi]
	mov	rbp, rsp
	mov	rsp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 0x10], rdi
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 8], rdi
	mov	rbp, rbp
	mov	rdi, rax
	mov	rsp, rsp
	call	strlen
	mov	rsp, rsp
	add	rax, 1
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, rax
	lea	rdi, [rdi]
	call	xmemdup
	mov	rbp, rbp
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x41d590

	.globl xalloc_die
	.type xalloc_die, @function
xalloc_die:
	mov	rbp, rbp
	push	rbp
	mov	rbp, rsp
	nop	
	sub	rsp, 0x10
	mov	rbp, rbp
	movabs	rdi, OFFSET FLAT:.str.1_12
	lea	rsi, [rsi]
	mov	eax,  dword ptr [dword ptr [exit_failure]]
	nop	
	mov	dword ptr [rbp - 4], eax
	call	gettext
	mov	rsp, rsp
	xor	esi, esi
	nop	
	movabs	rdx, OFFSET FLAT:.str_7
	mov	edi, dword ptr [rbp - 4]
	mov	rcx, rax
	mov	al, 0
	mov	rbp, rbp
	call	error
	call	abort
	.section	.text
	.align	32
	#Procedure 0x41d5f0

	.globl xfts_open
	.type xfts_open, @function
xfts_open:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x10], rdi
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x14], esi
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x20], rdx
	mov	rdi, qword ptr [rbp - 0x10]
	nop	
	mov	esi, dword ptr [rbp - 0x14]
	mov	rbp, rbp
	or	esi, 0x200
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	call	rpl_fts_open
	nop	
	mov	qword ptr [rbp - 8], rax
	cmp	qword ptr [rbp - 8], 0
	jne	.label_1685
	lea	rsi, [rsi]
	call	__errno_location
	cmp	dword ptr [rax], 0x16
	mov	rbp, rbp
	je	.label_1684
	lea	rdi, [rdi]
	jmp	.label_1683
.label_1684:
	nop	
	movabs	rdi, OFFSET FLAT:.str_17
	movabs	rsi, OFFSET FLAT:.str.1_13
	mov	edx, 0x29
	movabs	rcx, OFFSET FLAT:__PRETTY_FUNCTION__.xfts_open
	call	__assert_fail
.label_1683:
	lea	rdi, [rdi]
	call	xalloc_die
.label_1685:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 8]
	mov	rbp, rbp
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x41d6a0
	.globl cycle_warning_required
	.type cycle_warning_required, @function
cycle_warning_required:

	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x10]
	mov	eax, dword ptr [rsi + 0x48]
	lea	rdi, [rdi]
	and	eax, 0x10
	mov	rsp, rsp
	cmp	eax, 0
	je	.label_1686
	lea	rsi, [rsi]
	mov	al, 1
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	edx, dword ptr [rcx + 0x48]
	and	edx, 1
	cmp	edx, 0
	mov	byte ptr [rbp - 1], al
	mov	rsp, rsp
	je	.label_1688
.label_1686:
	xor	eax, eax
	nop	
	mov	cl, al
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x10]
	mov	eax, dword ptr [rdx + 0x48]
	nop	
	and	eax, 0x10
	mov	rsp, rsp
	cmp	eax, 0
	nop	
	mov	byte ptr [rbp - 2], cl
	lea	rdi, [rdi]
	je	.label_1687
	lea	rdi, [rdi]
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	eax, dword ptr [rdx + 0x48]
	lea	rsi, [rsi]
	and	eax, 1
	mov	rsp, rsp
	cmp	eax, 0
	mov	byte ptr [rbp - 2], cl
	je	.label_1687
	nop	
	mov	rax, qword ptr [rbp - 0x18]
	nop	
	cmp	qword ptr [rax + 0x58], 0
	mov	rsp, rsp
	setne	cl
	mov	byte ptr [rbp - 2], cl
.label_1687:
	mov	rsp, rsp
	mov	al, byte ptr [rbp - 2]
	mov	byte ptr [rbp - 1], al
.label_1688:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	mov	rbp, rbp
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x41d770

	.globl yesno
	.type yesno, @function
yesno:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	lea	rdi, [rbp - 8]
	mov	rbp, rbp
	lea	rsi, [rbp - 0x10]
	mov	rsp, rsp
	mov	qword ptr [rbp - 8], 0
	mov	qword ptr [rbp - 0x10], 0
	mov	rdx,  qword ptr [word ptr [stdin]]
	call	getline
	mov	qword ptr [rbp - 0x18], rax
	cmp	qword ptr [rbp - 0x18], 0
	jg	.label_1690
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x19], 0
	jmp	.label_1689
.label_1690:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x18]
	sub	rax, 1
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 8]
	movsx	edx, byte ptr [rcx + rax]
	mov	rbp, rbp
	cmp	edx, 0xa
	jne	.label_1691
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x18]
	sub	rax, 1
	mov	rcx, qword ptr [rbp - 8]
	mov	byte ptr [rcx + rax], 0
.label_1691:
	mov	rdi, qword ptr [rbp - 8]
	nop	
	call	rpmatch
	nop	
	xor	ecx, ecx
	nop	
	cmp	ecx, eax
	mov	rsp, rsp
	setl	dl
	and	dl, 1
	mov	byte ptr [rbp - 0x19], dl
.label_1689:
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 8]
	call	free
	lea	rdi, [rdi]
	mov	al, byte ptr [rbp - 0x19]
	and	al, 1
	mov	rsp, rsp
	movzx	eax, al
	nop	
	add	rsp, 0x20
	mov	rsp, rsp
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x41d840

	.globl rpl_fflush
	.type rpl_fflush, @function
rpl_fflush:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 8], rdi
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 8], 0
	mov	rsp, rsp
	je	.label_1692
	mov	rdi, qword ptr [rbp - 8]
	call	__freading
	cmp	eax, 0
	jne	.label_1693
.label_1692:
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 8]
	call	fflush
	mov	dword ptr [rbp - 0xc], eax
	nop	
	jmp	.label_1694
.label_1693:
	mov	rdi, qword ptr [rbp - 8]
	call	clear_ungetc_buffer_preserving_position
	mov	rdi, qword ptr [rbp - 8]
	call	fflush
	mov	dword ptr [rbp - 0xc], eax
.label_1694:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0xc]
	add	rsp, 0x10
	pop	rbp
	nop	
	ret	
	.section	.text
	.align	32
	#Procedure 0x41d8b0

	.globl clear_ungetc_buffer_preserving_position
	.type clear_ungetc_buffer_preserving_position, @function
clear_ungetc_buffer_preserving_position:
	push	rbp
	mov	rbp, rbp
	mov	rbp, rsp
	mov	rbp, rbp
	sub	rsp, 0x10
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x10], rdi
	mov	rdi, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	eax, dword ptr [rdi]
	and	eax, 0x100
	mov	rsp, rsp
	cmp	eax, 0
	je	.label_1695
	xor	eax, eax
	mov	rbp, rbp
	mov	esi, eax
	nop	
	mov	edx, 1
	mov	rdi, qword ptr [rbp - 0x10]
	nop	
	call	rpl_fseeko
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 4], eax
.label_1695:
	mov	rsp, rsp
	add	rsp, 0x10
	mov	rsp, rsp
	pop	rbp
	lea	rsi, [rsi]
	ret	
	.section	.text
	.align	32
	#Procedure 0x41d910

	.globl freadahead
	.type freadahead, @function
freadahead:
	push	rbp
	nop	
	mov	rbp, rsp
	mov	qword ptr [rbp - 0x18], rdi
	nop	
	mov	rdi, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rdi + 0x28]
	mov	rax, qword ptr [rbp - 0x18]
	cmp	rdi, qword ptr [rax + 0x20]
	nop	
	jbe	.label_1696
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x20], 0
	jmp	.label_1698
.label_1696:
	mov	rax, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax + 0x10]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rcx + 8]
	nop	
	sub	rax, rcx
	mov	rcx, qword ptr [rbp - 0x18]
	mov	edx, dword ptr [rcx]
	and	edx, 0x100
	mov	rbp, rbp
	cmp	edx, 0
	mov	qword ptr [rbp - 0x10], rax
	je	.label_1697
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax + 0x58]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	mov	rcx, qword ptr [rcx + 0x48]
	sub	rax, rcx
	mov	rsp, rsp
	mov	qword ptr [rbp - 8], rax
	lea	rsi, [rsi]
	jmp	.label_1699
.label_1697:
	mov	rsp, rsp
	xor	eax, eax
	nop	
	mov	ecx, eax
	mov	rsp, rsp
	mov	qword ptr [rbp - 8], rcx
	mov	rbp, rbp
	jmp	.label_1699
.label_1699:
	mov	rax, qword ptr [rbp - 8]
	mov	rcx, qword ptr [rbp - 0x10]
	add	rcx, rax
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x20], rcx
.label_1698:
	mov	rax, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x41d9e0

	.globl rpl_fseeko
	.type rpl_fseeko, @function
rpl_fseeko:
	lea	rsi, [rsi]
	push	rbp
	mov	rbp, rsp
	mov	rbp, rbp
	sub	rsp, 0x30
	mov	rbp, rbp
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	dword ptr [rbp - 0xc], edx
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rsi + 0x10]
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	cmp	rsi, qword ptr [rdi + 8]
	jne	.label_1700
	mov	rax, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax + 0x28]
	mov	rcx, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rcx + 0x20]
	mov	rbp, rbp
	jne	.label_1700
	mov	rax, qword ptr [rbp - 8]
	mov	rbp, rbp
	cmp	qword ptr [rax + 0x48], 0
	jne	.label_1700
	mov	rdi, qword ptr [rbp - 8]
	nop	
	call	fileno
	mov	rsi, qword ptr [rbp - 0x18]
	mov	edx, dword ptr [rbp - 0xc]
	mov	rbp, rbp
	mov	edi, eax
	lea	rdi, [rdi]
	call	lseek
	mov	qword ptr [rbp - 0x28], rax
	cmp	qword ptr [rbp - 0x28], -1
	jne	.label_1701
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x1c], 0xffffffff
	jmp	.label_1702
.label_1701:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	ecx, dword ptr [rax]
	lea	rdi, [rdi]
	and	ecx, 0xffffffef
	mov	dword ptr [rax], ecx
	mov	rax, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 8]
	nop	
	mov	qword ptr [rdx + 0x90], rax
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x1c], 0
	lea	rsi, [rsi]
	jmp	.label_1702
.label_1700:
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	mov	edx, dword ptr [rbp - 0xc]
	lea	rdi, [rdi]
	call	fseeko
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x1c], eax
.label_1702:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x1c]
	nop	
	add	rsp, 0x30
	pop	rbp
	lea	rdi, [rdi]
	ret	
	.section	.text
	.align	32
	#Procedure 0x41daf0

	.globl rpl_fts_open
	.type rpl_fts_open, @function
rpl_fts_open:
	push	rbp
	nop	
	mov	rbp, rsp
	mov	rsp, rsp
	sub	rsp, 0xa0
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x18], rdi
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x40], esi
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x50], rdx
	mov	qword ptr [rbp - 0x78], 0
	mov	qword ptr [rbp - 0x90], 0
	mov	esi, dword ptr [rbp - 0x40]
	and	esi, 0xfffff000
	cmp	esi, 0
	je	.label_1741
	mov	rbp, rbp
	call	__errno_location
	lea	rdi, [rdi]
	mov	dword ptr [rax], 0x16
	nop	
	mov	qword ptr [rbp - 0x38], 0
	jmp	.label_1705
.label_1741:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x40]
	nop	
	and	eax, 4
	mov	rsp, rsp
	cmp	eax, 0
	mov	rsp, rsp
	je	.label_1719
	mov	eax, dword ptr [rbp - 0x40]
	and	eax, 0x200
	nop	
	cmp	eax, 0
	lea	rdi, [rdi]
	je	.label_1719
	lea	rdi, [rdi]
	call	__errno_location
	mov	dword ptr [rax], 0x16
	mov	qword ptr [rbp - 0x38], 0
	jmp	.label_1705
.label_1719:
	mov	eax, dword ptr [rbp - 0x40]
	lea	rdi, [rdi]
	and	eax, 0x12
	lea	rdi, [rdi]
	cmp	eax, 0
	lea	rdi, [rdi]
	jne	.label_1729
	call	__errno_location
	mov	dword ptr [rax], 0x16
	mov	qword ptr [rbp - 0x38], 0
	jmp	.label_1705
.label_1729:
	mov	rsp, rsp
	mov	eax, 0x80
	lea	rdi, [rdi]
	mov	edi, eax
	lea	rdi, [rdi]
	call	malloc
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x28], rax
	mov	rbp, rbp
	cmp	rax, 0
	jne	.label_1737
	mov	qword ptr [rbp - 0x38], 0
	lea	rdi, [rdi]
	jmp	.label_1705
.label_1737:
	xor	esi, esi
	mov	eax, 0x80
	mov	rbp, rbp
	mov	edx, eax
	mov	rcx, qword ptr [rbp - 0x28]
	nop	
	mov	rdi, rcx
	call	memset
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x50]
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x28]
	mov	qword ptr [rdx + 0x40], rcx
	mov	eax, dword ptr [rbp - 0x40]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	dword ptr [rcx + 0x48], eax
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x28]
	mov	eax, dword ptr [rcx + 0x48]
	lea	rsi, [rsi]
	and	eax, 2
	cmp	eax, 0
	mov	rsp, rsp
	je	.label_1710
	nop	
	mov	rax, qword ptr [rbp - 0x28]
	mov	ecx, dword ptr [rax + 0x48]
	mov	rsp, rsp
	or	ecx, 4
	mov	dword ptr [rax + 0x48], ecx
	mov	rax, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	mov	ecx, dword ptr [rax + 0x48]
	and	ecx, 0xfffffdff
	mov	dword ptr [rax + 0x48], ecx
.label_1710:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x28]
	mov	dword ptr [rax + 0x2c], 0xffffff9c
	mov	rax, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	mov	ecx, dword ptr [rax + 0x48]
	and	ecx, 0x200
	lea	rsi, [rsi]
	cmp	ecx, 0
	je	.label_1703
	mov	al, 1
	test	al, 1
	mov	rbp, rbp
	jne	.label_1703
	jmp	.label_1736
.label_1736:
	movabs	rdi, OFFSET FLAT:.str_3
	xor	esi, esi
	mov	al, 0
	nop	
	call	open_safer
	mov	dword ptr [rbp - 0x84], eax
	mov	rbp, rbp
	cmp	dword ptr [rbp - 0x84], 0
	lea	rdi, [rdi]
	jge	.label_1734
	mov	rsp, rsp
	jmp	.label_1740
.label_1734:
	mov	edi, dword ptr [rbp - 0x84]
	mov	rbp, rbp
	call	close
	mov	dword ptr [rbp - 0xc], eax
.label_1740:
	jmp	.label_1703
.label_1703:
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x18]
	call	fts_maxarglen
	mov	rsp, rsp
	mov	qword ptr [rbp - 8], rax
	mov	rdi, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 8], 0x1000
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x30], rdi
	jbe	.label_1706
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x98], rax
	mov	rsp, rsp
	jmp	.label_1714
.label_1706:
	mov	rsp, rsp
	mov	eax, 0x1000
	lea	rsi, [rsi]
	mov	ecx, eax
	mov	qword ptr [rbp - 0x98], rcx
	jmp	.label_1714
.label_1714:
	mov	rax, qword ptr [rbp - 0x98]
	mov	rdi, qword ptr [rbp - 0x30]
	mov	rsi, rax
	mov	rsp, rsp
	call	fts_palloc
	test	al, 1
	jne	.label_1725
	jmp	.label_1726
.label_1725:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x18]
	cmp	qword ptr [rax], 0
	je	.label_1727
	movabs	rsi, OFFSET FLAT:.str_0
	lea	rdi, [rdi]
	xor	eax, eax
	mov	edx, eax
	mov	rdi, qword ptr [rbp - 0x28]
	nop	
	call	fts_alloc
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x78], rax
	lea	rsi, [rsi]
	cmp	rax, 0
	jne	.label_1732
	mov	rsp, rsp
	jmp	.label_1733
.label_1732:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x78]
	mov	qword ptr [rax + 0x58], -1
	mov	rax, qword ptr [rbp - 0x78]
	lea	rdi, [rdi]
	mov	qword ptr [rax + 0x68], -1
.label_1727:
	lea	rdi, [rdi]
	mov	al, 1
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0x50], 0
	mov	byte ptr [rbp - 0x39], al
	mov	rbp, rbp
	je	.label_1731
	mov	rax, qword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	mov	ecx, dword ptr [rax + 0x48]
	and	ecx, 0x400
	mov	rbp, rbp
	cmp	ecx, 0
	setne	dl
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x39], dl
.label_1731:
	mov	al, byte ptr [rbp - 0x39]
	lea	rsi, [rsi]
	and	al, 1
	nop	
	mov	byte ptr [rbp - 0x41], al
	mov	qword ptr [rbp - 0x20], 0
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x80], 0
.label_1730:
	mov	rax, qword ptr [rbp - 0x18]
	cmp	qword ptr [rax], 0
	lea	rsi, [rsi]
	je	.label_1716
	mov	rax, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rax]
	call	strlen
	nop	
	mov	qword ptr [rbp - 0x70], rax
	mov	ecx, dword ptr [rbp - 0x40]
	mov	rbp, rbp
	and	ecx, 0x800
	mov	rsp, rsp
	cmp	ecx, 0
	jne	.label_1717
	mov	rbp, rbp
	mov	eax, 2
	nop	
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	mov	rdx, qword ptr [rdx]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x60], rdx
	cmp	rcx, qword ptr [rbp - 0x70]
	mov	rsp, rsp
	jae	.label_1715
	mov	rax, qword ptr [rbp - 0x70]
	sub	rax, 1
	mov	rcx, qword ptr [rbp - 0x60]
	movsx	edx, byte ptr [rcx + rax]
	mov	rsp, rsp
	cmp	edx, 0x2f
	jne	.label_1715
	nop	
	jmp	.label_1711
.label_1711:
	lea	rsi, [rsi]
	xor	eax, eax
	mov	rbp, rbp
	mov	cl, al
	mov	eax, 1
	mov	edx, eax
	cmp	rdx, qword ptr [rbp - 0x70]
	mov	byte ptr [rbp - 0x51], cl
	jae	.label_1738
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x70]
	sub	rax, 2
	nop	
	mov	rcx, qword ptr [rbp - 0x60]
	movsx	edx, byte ptr [rcx + rax]
	mov	rbp, rbp
	cmp	edx, 0x2f
	mov	rsp, rsp
	sete	sil
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x51], sil
.label_1738:
	nop	
	mov	al, byte ptr [rbp - 0x51]
	test	al, 1
	jne	.label_1708
	mov	rbp, rbp
	jmp	.label_1735
.label_1708:
	nop	
	mov	rax, qword ptr [rbp - 0x70]
	add	rax, -1
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x70], rax
	mov	rsp, rsp
	jmp	.label_1711
.label_1735:
	lea	rdi, [rdi]
	jmp	.label_1715
.label_1715:
	jmp	.label_1717
.label_1717:
	nop	
	mov	rdi, qword ptr [rbp - 0x28]
	nop	
	mov	rax, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rax]
	nop	
	mov	rdx, qword ptr [rbp - 0x70]
	call	fts_alloc
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x68], rax
	cmp	rax, 0
	jne	.label_1720
	jmp	.label_1709
.label_1720:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x68]
	mov	qword ptr [rax + 0x58], 0
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x78]
	mov	rcx, qword ptr [rbp - 0x68]
	mov	qword ptr [rcx + 8], rax
	mov	rax, qword ptr [rbp - 0x68]
	mov	rbp, rbp
	add	rax, 0x108
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x68]
	mov	qword ptr [rcx + 0x30], rax
	lea	rsi, [rsi]
	test	byte ptr [rbp - 0x41], 1
	je	.label_1724
	cmp	qword ptr [rbp - 0x20], 0
	nop	
	je	.label_1724
	nop	
	mov	esi, 1
	mov	rax, qword ptr [rbp - 0x68]
	mov	rbp, rbp
	mov	word ptr [rax + 0x70], 0xb
	mov	rdi, qword ptr [rbp - 0x68]
	call	fts_set_stat_required
	jmp	.label_1739
.label_1724:
	xor	edx, edx
	mov	rdi, qword ptr [rbp - 0x28]
	mov	rsi, qword ptr [rbp - 0x68]
	lea	rsi, [rsi]
	call	fts_stat
	nop	
	mov	rsi, qword ptr [rbp - 0x68]
	mov	word ptr [rsi + 0x70], ax
.label_1739:
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x50], 0
	je	.label_1712
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x68]
	lea	rsi, [rsi]
	mov	qword ptr [rcx + 0x10], rax
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x68]
	mov	qword ptr [rbp - 0x20], rax
	mov	rbp, rbp
	jmp	.label_1707
.label_1712:
	mov	rax, qword ptr [rbp - 0x68]
	mov	qword ptr [rax + 0x10], 0
	cmp	qword ptr [rbp - 0x20], 0
	mov	rsp, rsp
	jne	.label_1722
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x68]
	mov	qword ptr [rbp - 0x20], rax
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x90], rax
	mov	rbp, rbp
	jmp	.label_1718
.label_1722:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x68]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x90]
	lea	rsi, [rsi]
	mov	qword ptr [rcx + 0x10], rax
	mov	rax, qword ptr [rbp - 0x68]
	mov	qword ptr [rbp - 0x90], rax
.label_1718:
	lea	rsi, [rsi]
	jmp	.label_1707
.label_1707:
	lea	rsi, [rsi]
	jmp	.label_1728
.label_1728:
	mov	rax, qword ptr [rbp - 0x18]
	nop	
	add	rax, 8
	mov	qword ptr [rbp - 0x18], rax
	mov	rax, qword ptr [rbp - 0x80]
	add	rax, 1
	mov	qword ptr [rbp - 0x80], rax
	jmp	.label_1730
.label_1716:
	cmp	qword ptr [rbp - 0x50], 0
	je	.label_1713
	cmp	qword ptr [rbp - 0x80], 1
	nop	
	jbe	.label_1713
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x28]
	mov	rsi, qword ptr [rbp - 0x20]
	mov	rdx, qword ptr [rbp - 0x80]
	call	fts_sort
	mov	qword ptr [rbp - 0x20], rax
.label_1713:
	movabs	rsi, OFFSET FLAT:.str_0
	lea	rsi, [rsi]
	xor	eax, eax
	mov	edx, eax
	nop	
	mov	rdi, qword ptr [rbp - 0x28]
	call	fts_alloc
	mov	rdx, qword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	mov	qword ptr [rdx], rax
	cmp	rax, 0
	jne	.label_1704
	jmp	.label_1709
.label_1704:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rcx]
	nop	
	mov	qword ptr [rcx + 0x10], rax
	mov	rax, qword ptr [rbp - 0x28]
	mov	rax, qword ptr [rax]
	mov	word ptr [rax + 0x70], 9
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	mov	rax, qword ptr [rax]
	mov	rbp, rbp
	mov	qword ptr [rax + 0x58], 1
	nop	
	mov	rdi, qword ptr [rbp - 0x28]
	call	setup_dir
	lea	rsi, [rsi]
	test	al, 1
	jne	.label_1721
	lea	rsi, [rsi]
	jmp	.label_1709
.label_1721:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	mov	ecx, dword ptr [rax + 0x48]
	and	ecx, 4
	lea	rdi, [rdi]
	cmp	ecx, 0
	jne	.label_1723
	nop	
	mov	rax, qword ptr [rbp - 0x28]
	mov	ecx, dword ptr [rax + 0x48]
	mov	rsp, rsp
	and	ecx, 0x200
	lea	rdi, [rdi]
	cmp	ecx, 0
	mov	rsp, rsp
	jne	.label_1723
	lea	rsi, [rsi]
	movabs	rsi, OFFSET FLAT:.str_3
	mov	rdi, qword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	call	diropen
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x28]
	mov	dword ptr [rsi + 0x28], eax
	cmp	eax, 0
	jge	.label_1723
	mov	rax, qword ptr [rbp - 0x28]
	nop	
	mov	ecx, dword ptr [rax + 0x48]
	or	ecx, 4
	mov	rsp, rsp
	mov	dword ptr [rax + 0x48], ecx
.label_1723:
	mov	esi, 0xffffffff
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	add	rax, 0x60
	mov	rsp, rsp
	mov	rdi, rax
	call	i_ring_init
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x38], rax
	mov	rsp, rsp
	jmp	.label_1705
.label_1709:
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x20]
	call	fts_lfree
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x78]
	nop	
	call	free
.label_1733:
	nop	
	mov	rax, qword ptr [rbp - 0x28]
	mov	rdi, qword ptr [rax + 0x20]
	call	free
.label_1726:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	mov	rdi, rax
	call	free
	mov	qword ptr [rbp - 0x38], 0
.label_1705:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x38]
	mov	rbp, rbp
	add	rsp, 0xa0
	lea	rsi, [rsi]
	pop	rbp
	nop	
	ret	
	.section	.text
	.align	32
	#Procedure 0x41e280

	.globl fts_maxarglen
	.type fts_maxarglen, @function
fts_maxarglen:
	mov	rsp, rsp
	push	rbp
	mov	rbp, rsp
	nop	
	sub	rsp, 0x20
	nop	
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x18], 0
.label_1744:
	mov	rax, qword ptr [rbp - 8]
	cmp	qword ptr [rax], 0
	je	.label_1743
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 8]
	mov	rbp, rbp
	mov	rdi, qword ptr [rax]
	lea	rdi, [rdi]
	call	strlen
	mov	qword ptr [rbp - 0x10], rax
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rbp - 0x18]
	nop	
	jbe	.label_1745
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x18], rax
.label_1745:
	jmp	.label_1742
.label_1742:
	mov	rax, qword ptr [rbp - 8]
	add	rax, 8
	mov	rsp, rsp
	mov	qword ptr [rbp - 8], rax
	jmp	.label_1744
.label_1743:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 1
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x41e300

	.globl fts_palloc
	.type fts_palloc, @function
fts_palloc:
	push	rbp
	mov	rbp, rsp
	nop	
	sub	rsp, 0x30
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x28], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	rsi, qword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rsi + 0x30]
	add	rsi, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	add	rsi, 0x100
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x20], rsi
	nop	
	mov	rsi, qword ptr [rbp - 0x20]
	nop	
	mov	rdi, qword ptr [rbp - 0x28]
	cmp	rsi, qword ptr [rdi + 0x30]
	jae	.label_1746
	nop	
	mov	rax, qword ptr [rbp - 0x28]
	mov	rdi, qword ptr [rax + 0x20]
	call	free
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rax + 0x20], 0
	call	__errno_location
	mov	rbp, rbp
	mov	dword ptr [rax], 0x24
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 9], 0
	lea	rsi, [rsi]
	jmp	.label_1748
.label_1746:
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	qword ptr [rcx + 0x30], rax
	mov	rax, qword ptr [rbp - 0x28]
	nop	
	mov	rdi, qword ptr [rax + 0x20]
	mov	rax, qword ptr [rbp - 0x28]
	mov	rsi, qword ptr [rax + 0x30]
	call	realloc
	mov	qword ptr [rbp - 8], rax
	mov	rbp, rbp
	cmp	qword ptr [rbp - 8], 0
	jne	.label_1747
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x28]
	mov	rdi, qword ptr [rax + 0x20]
	lea	rdi, [rdi]
	call	free
	mov	rax, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	mov	qword ptr [rax + 0x20], 0
	nop	
	mov	byte ptr [rbp - 9], 0
	jmp	.label_1748
.label_1747:
	mov	rax, qword ptr [rbp - 8]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	qword ptr [rcx + 0x20], rax
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 9], 1
.label_1748:
	mov	al, byte ptr [rbp - 9]
	and	al, 1
	nop	
	movzx	eax, al
	add	rsp, 0x30
	pop	rbp
	mov	rsp, rsp
	ret	
	.section	.text
	.align	32
	#Procedure 0x41e410

	.globl fts_alloc
	.type fts_alloc, @function
fts_alloc:
	push	rbp
	mov	rsp, rsp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	qword ptr [rbp - 0x10], rdi
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x28], rsi
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x20], rdx
	nop	
	mov	rdx, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	add	rdx, 1
	add	rdx, 0x10f
	and	rdx, 0xfffffffffffffff8
	mov	qword ptr [rbp - 0x18], rdx
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x18]
	call	malloc
	nop	
	mov	qword ptr [rbp - 8], rax
	mov	rbp, rbp
	cmp	rax, 0
	jne	.label_1749
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x30], 0
	lea	rdi, [rdi]
	jmp	.label_1750
.label_1749:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	add	rax, 0x108
	mov	rsi, qword ptr [rbp - 0x28]
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rdi, rax
	mov	rbp, rbp
	call	memcpy
	mov	rax, qword ptr [rbp - 0x20]
	mov	rdx, qword ptr [rbp - 8]
	nop	
	mov	byte ptr [rdx + rax + 0x108], 0
	nop	
	mov	rax, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	mov	qword ptr [rdx + 0x60], rax
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 8]
	mov	qword ptr [rdx + 0x50], rax
	mov	rax, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	rax, qword ptr [rax + 0x20]
	mov	rdx, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	qword ptr [rdx + 0x38], rax
	mov	rax, qword ptr [rbp - 8]
	mov	dword ptr [rax + 0x40], 0
	mov	rax, qword ptr [rbp - 8]
	nop	
	mov	qword ptr [rax + 0x18], 0
	mov	rax, qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	word ptr [rax + 0x72], 0
	mov	rax, qword ptr [rbp - 8]
	mov	word ptr [rax + 0x74], 3
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rax + 0x20], 0
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rax + 0x28], 0
	nop	
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x30], rax
.label_1750:
	mov	rax, qword ptr [rbp - 0x30]
	add	rsp, 0x30
	nop	
	pop	rbp
	lea	rsi, [rsi]
	ret	
	.section	.text
	.align	32
	#Procedure 0x41e550

	.globl fts_set_stat_required
	.type fts_set_stat_required, @function
fts_set_stat_required:
	lea	rdi, [rdi]
	push	rbp
	nop	
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	al, sil
	mov	qword ptr [rbp - 8], rdi
	nop	
	and	al, 1
	mov	byte ptr [rbp - 9], al
	mov	rax, qword ptr [rbp - 8]
	movzx	ecx, word ptr [rax + 0x70]
	lea	rsi, [rsi]
	cmp	ecx, 0xb
	je	.label_1751
	lea	rdi, [rdi]
	call	abort
.label_1751:
	nop	
	jmp	.label_1752
.label_1752:
	mov	rsp, rsp
	mov	eax, 1
	mov	rsp, rsp
	mov	ecx, 2
	nop	
	mov	dl, byte ptr [rbp - 9]
	test	dl, 1
	nop	
	cmovne	eax, ecx
	movsxd	rsi, eax
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	mov	qword ptr [rdi + 0xa8], rsi
	mov	rsp, rsp
	add	rsp, 0x10
	pop	rbp
	mov	rsp, rsp
	ret	
	.section	.text
	.align	32
	#Procedure 0x41e5d0

	.globl fts_stat
	.type fts_stat, @function
fts_stat:
	push	rbp
	nop	
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	al, dl
	mov	qword ptr [rbp - 0x20], rdi
	mov	qword ptr [rbp - 8], rsi
	lea	rsi, [rsi]
	and	al, 1
	mov	byte ptr [rbp - 0x13], al
	mov	rsi, qword ptr [rbp - 8]
	nop	
	add	rsi, 0x78
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x10], rsi
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	cmp	qword ptr [rsi + 0x58], 0
	lea	rdi, [rdi]
	jne	.label_1760
	mov	rax, qword ptr [rbp - 0x20]
	mov	ecx, dword ptr [rax + 0x48]
	mov	rbp, rbp
	and	ecx, 1
	lea	rdi, [rdi]
	cmp	ecx, 0
	nop	
	je	.label_1760
	mov	byte ptr [rbp - 0x13], 1
.label_1760:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	mov	ecx, dword ptr [rax + 0x48]
	and	ecx, 2
	cmp	ecx, 0
	mov	rbp, rbp
	jne	.label_1766
	lea	rdi, [rdi]
	test	byte ptr [rbp - 0x13], 1
	mov	rbp, rbp
	je	.label_1758
.label_1766:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 8]
	mov	rbp, rbp
	mov	rdi, qword ptr [rax + 0x30]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	call	stat
	lea	rdi, [rdi]
	cmp	eax, 0
	je	.label_1767
	lea	rdi, [rdi]
	call	__errno_location
	cmp	dword ptr [rax], 2
	jne	.label_1759
	mov	rax, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rax + 0x30]
	mov	rsi, qword ptr [rbp - 0x10]
	nop	
	call	__lstat
	mov	rsp, rsp
	cmp	eax, 0
	mov	rsp, rsp
	jne	.label_1759
	call	__errno_location
	mov	rbp, rbp
	mov	dword ptr [rax], 0
	lea	rsi, [rsi]
	mov	word ptr [rbp - 0x12], 0xd
	jmp	.label_1754
.label_1759:
	mov	rbp, rbp
	call	__errno_location
	lea	rdi, [rdi]
	mov	ecx, dword ptr [rax]
	mov	rax, qword ptr [rbp - 8]
	mov	dword ptr [rax + 0x40], ecx
	jmp	.label_1763
.label_1767:
	jmp	.label_1762
.label_1758:
	mov	ecx, 0x100
	mov	rax, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	mov	edi, dword ptr [rax + 0x2c]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rax + 0x30]
	mov	rdx, qword ptr [rbp - 0x10]
	nop	
	call	fstatat
	cmp	eax, 0
	je	.label_1761
	call	__errno_location
	mov	rbp, rbp
	mov	ecx, dword ptr [rax]
	mov	rax, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	dword ptr [rax + 0x40], ecx
.label_1763:
	xor	esi, esi
	mov	eax, 0x90
	mov	edx, eax
	nop	
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rdi, rcx
	mov	rbp, rbp
	call	memset
	lea	rdi, [rdi]
	mov	word ptr [rbp - 0x12], 0xa
	jmp	.label_1754
.label_1761:
	lea	rdi, [rdi]
	jmp	.label_1762
.label_1762:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rax + 0x18]
	and	ecx, 0xf000
	cmp	ecx, 0x4000
	jne	.label_1764
	mov	rax, qword ptr [rbp - 0x10]
	cmp	qword ptr [rax + 0x10], 2
	jb	.label_1768
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 8]
	mov	rsp, rsp
	cmp	qword ptr [rax + 0x58], 0
	jg	.label_1756
.label_1768:
	mov	rax, -1
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x28], rax
	jmp	.label_1769
.label_1756:
	mov	rsp, rsp
	mov	eax, 2
	xor	ecx, ecx
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rdx + 0x10]
	mov	rsi, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	mov	edi, dword ptr [rsi + 0x48]
	lea	rsi, [rsi]
	and	edi, 0x20
	cmp	edi, 0
	lea	rsi, [rsi]
	cmovne	eax, ecx
	lea	rdi, [rdi]
	movsxd	rsi, eax
	nop	
	sub	rdx, rsi
	mov	qword ptr [rbp - 0x28], rdx
.label_1769:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 8]
	mov	qword ptr [rcx + 0x68], rax
	mov	rax, qword ptr [rbp - 8]
	movsx	edx, byte ptr [rax + 0x108]
	lea	rdi, [rdi]
	cmp	edx, 0x2e
	lea	rsi, [rsi]
	jne	.label_1753
	mov	rax, qword ptr [rbp - 8]
	cmp	byte ptr [rax + 0x109], 0
	je	.label_1757
	nop	
	mov	rax, qword ptr [rbp - 8]
	movsx	ecx, byte ptr [rax + 0x109]
	nop	
	cmp	ecx, 0x2e
	lea	rsi, [rsi]
	jne	.label_1753
	nop	
	mov	rax, qword ptr [rbp - 8]
	cmp	byte ptr [rax + 0x10a], 0
	jne	.label_1753
.label_1757:
	mov	eax, 5
	mov	ecx, 1
	mov	rdx, qword ptr [rbp - 8]
	cmp	qword ptr [rdx + 0x58], 0
	cmove	eax, ecx
	mov	si, ax
	nop	
	mov	word ptr [rbp - 0x12], si
	mov	rbp, rbp
	jmp	.label_1754
.label_1753:
	mov	word ptr [rbp - 0x12], 1
	jmp	.label_1754
.label_1764:
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rax + 0x18]
	mov	rsp, rsp
	and	ecx, 0xf000
	nop	
	cmp	ecx, 0xa000
	nop	
	jne	.label_1755
	mov	rsp, rsp
	mov	word ptr [rbp - 0x12], 0xc
	jmp	.label_1754
.label_1755:
	nop	
	mov	rax, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	ecx, dword ptr [rax + 0x18]
	and	ecx, 0xf000
	lea	rdi, [rdi]
	cmp	ecx, 0x8000
	lea	rsi, [rsi]
	jne	.label_1765
	lea	rsi, [rsi]
	mov	word ptr [rbp - 0x12], 8
	jmp	.label_1754
.label_1765:
	mov	rbp, rbp
	mov	word ptr [rbp - 0x12], 3
.label_1754:
	lea	rsi, [rsi]
	movzx	eax, word ptr [rbp - 0x12]
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x41e900

	.globl fts_sort
	.type fts_sort, @function
fts_sort:
	mov	rsp, rsp
	push	rbp
	mov	rbp, rbp
	mov	rbp, rsp
	lea	rsi, [rsi]
	sub	rsp, 0x60
	mov	rsp, rsp
	lea	rax, [rbp - 0x30]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x48], rdi
	mov	qword ptr [rbp - 0x38], rsi
	mov	qword ptr [rbp - 0x10], rdx
	mov	rdx, rax
	cmp	rax, rdx
	lea	rdi, [rdi]
	jne	.label_1770
	mov	rax, qword ptr [rbp - 0x48]
	mov	rax, qword ptr [rax + 0x40]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 8], rax
	mov	rbp, rbp
	jmp	.label_1776
.label_1770:
	movabs	rax, OFFSET FLAT:fts_compar
	mov	qword ptr [rbp - 8], rax
	mov	rsp, rsp
	jmp	.label_1776
.label_1776:
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x28], rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 0x48]
	lea	rdi, [rdi]
	cmp	rax, qword ptr [rcx + 0x38]
	lea	rdi, [rdi]
	jbe	.label_1771
	movabs	rax, 0x1fffffffffffffff
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	add	rcx, 0x28
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x48]
	mov	qword ptr [rdx + 0x38], rcx
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x48]
	mov	rsp, rsp
	cmp	rax, qword ptr [rcx + 0x38]
	jb	.label_1774
	mov	rax, qword ptr [rbp - 0x48]
	mov	rax, qword ptr [rax + 0x10]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x48]
	mov	rbp, rbp
	mov	rcx, qword ptr [rcx + 0x38]
	shl	rcx, 3
	mov	rdi, rax
	nop	
	mov	rsi, rcx
	nop	
	call	realloc
	nop	
	mov	qword ptr [rbp - 0x18], rax
	cmp	rax, 0
	jne	.label_1772
.label_1774:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x48]
	mov	rax, qword ptr [rax + 0x10]
	mov	rdi, rax
	nop	
	call	free
	mov	rax, qword ptr [rbp - 0x48]
	mov	rsp, rsp
	mov	qword ptr [rax + 0x10], 0
	mov	rax, qword ptr [rbp - 0x48]
	mov	rsp, rsp
	mov	qword ptr [rax + 0x38], 0
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x38]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x40], rax
	mov	rsp, rsp
	jmp	.label_1775
.label_1772:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x48]
	lea	rsi, [rsi]
	mov	qword ptr [rcx + 0x10], rax
.label_1771:
	mov	rax, qword ptr [rbp - 0x48]
	mov	rax, qword ptr [rax + 0x10]
	mov	qword ptr [rbp - 0x20], rax
	nop	
	mov	rax, qword ptr [rbp - 0x38]
	mov	qword ptr [rbp - 0x50], rax
.label_1778:
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x50], 0
	je	.label_1773
	nop	
	mov	rax, qword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	mov	rdx, rcx
	mov	rbp, rbp
	add	rdx, 8
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x20], rdx
	mov	qword ptr [rcx], rax
	mov	rax, qword ptr [rbp - 0x50]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax + 0x10]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_1778
.label_1773:
	mov	eax, 8
	mov	edx, eax
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x48]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rcx + 0x10]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rbp - 0x28]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x58], rdi
	mov	rbp, rbp
	mov	rdi, rcx
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x58]
	mov	rsp, rsp
	call	qsort
	mov	rcx, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rcx + 0x10]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x20], rcx
	mov	rcx, qword ptr [rcx]
	mov	qword ptr [rbp - 0x38], rcx
.label_1777:
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, -1
	mov	qword ptr [rbp - 0x10], rax
	cmp	rax, 0
	je	.label_1779
	mov	rax, qword ptr [rbp - 0x20]
	mov	rax, qword ptr [rax + 8]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rcx]
	mov	rsp, rsp
	mov	qword ptr [rcx + 0x10], rax
	mov	rax, qword ptr [rbp - 0x20]
	add	rax, 8
	mov	qword ptr [rbp - 0x20], rax
	lea	rdi, [rdi]
	jmp	.label_1777
.label_1779:
	mov	rax, qword ptr [rbp - 0x20]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rax + 0x10], 0
	mov	rax, qword ptr [rbp - 0x38]
	mov	qword ptr [rbp - 0x40], rax
.label_1775:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x40]
	add	rsp, 0x60
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x41eb60

	.globl setup_dir
	.type setup_dir, @function
setup_dir:
	mov	rsp, rsp
	push	rbp
	mov	rbp, rsp
	mov	rbp, rbp
	sub	rsp, 0x10
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 8], rdi
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 8]
	mov	eax, dword ptr [rdi + 0x48]
	mov	rbp, rbp
	and	eax, 0x102
	nop	
	cmp	eax, 0
	mov	rsp, rsp
	je	.label_1780
	mov	eax, 0x1f
	lea	rsi, [rsi]
	mov	edi, eax
	xor	eax, eax
	mov	esi, eax
	movabs	rdx, OFFSET FLAT:AD_hash
	movabs	rcx, OFFSET FLAT:AD_compare
	mov	rsp, rsp
	movabs	r8, OFFSET FLAT:free
	lea	rsi, [rsi]
	call	hash_initialize
	mov	rcx, qword ptr [rbp - 8]
	mov	qword ptr [rcx + 0x58], rax
	mov	rax, qword ptr [rbp - 8]
	cmp	qword ptr [rax + 0x58], 0
	nop	
	jne	.label_1783
	mov	rsp, rsp
	mov	byte ptr [rbp - 9], 0
	jmp	.label_1781
.label_1783:
	jmp	.label_1784
.label_1780:
	mov	eax, 0x20
	mov	edi, eax
	mov	rbp, rbp
	call	malloc
	mov	rdi, qword ptr [rbp - 8]
	mov	qword ptr [rdi + 0x58], rax
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 8]
	nop	
	cmp	qword ptr [rax + 0x58], 0
	lea	rdi, [rdi]
	jne	.label_1782
	mov	byte ptr [rbp - 9], 0
	jmp	.label_1781
.label_1782:
	mov	rax, qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	rdi, qword ptr [rax + 0x58]
	call	cycle_check_init
.label_1784:
	mov	byte ptr [rbp - 9], 1
.label_1781:
	lea	rsi, [rsi]
	mov	al, byte ptr [rbp - 9]
	and	al, 1
	mov	rsp, rsp
	movzx	eax, al
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x41ec60

	.globl diropen
	.type diropen, @function
diropen:
	nop	
	push	rbp
	mov	rbp, rsp
	nop	
	sub	rsp, 0x20
	lea	rdi, [rdi]
	xor	eax, eax
	mov	rsp, rsp
	mov	ecx, 0x20000
	mov	qword ptr [rbp - 8], rdi
	nop	
	mov	qword ptr [rbp - 0x18], rsi
	mov	rsi, qword ptr [rbp - 8]
	mov	edx, dword ptr [rsi + 0x48]
	nop	
	and	edx, 0x10
	mov	rbp, rbp
	cmp	edx, 0
	cmovne	eax, ecx
	lea	rdi, [rdi]
	or	eax, 0x90900
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x1c], eax
	mov	rsi, qword ptr [rbp - 8]
	mov	eax, dword ptr [rsi + 0x48]
	and	eax, 0x200
	cmp	eax, 0
	je	.label_1785
	mov	rax, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	edi, dword ptr [rax + 0x2c]
	mov	rsi, qword ptr [rbp - 0x18]
	nop	
	mov	edx, dword ptr [rbp - 0x1c]
	mov	al, 0
	nop	
	call	openat_safer
	mov	dword ptr [rbp - 0xc], eax
	lea	rsi, [rsi]
	jmp	.label_1786
.label_1785:
	mov	rdi, qword ptr [rbp - 0x18]
	mov	esi, dword ptr [rbp - 0x1c]
	lea	rdi, [rdi]
	mov	al, 0
	call	open_safer
	nop	
	mov	dword ptr [rbp - 0xc], eax
.label_1786:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0xc]
	mov	dword ptr [rbp - 0x20], eax
	mov	eax, dword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	add	rsp, 0x20
	pop	rbp
	mov	rsp, rsp
	ret	
	.section	.text
	.align	32
	#Procedure 0x41ed10

	.globl fts_lfree
	.type fts_lfree, @function
fts_lfree:
	push	rbp
	mov	rbp, rsp
	lea	rsi, [rsi]
	sub	rsp, 0x20
	mov	qword ptr [rbp - 0x10], rdi
.label_1788:
	mov	rax, qword ptr [rbp - 0x10]
	nop	
	mov	qword ptr [rbp - 0x18], rax
	cmp	rax, 0
	je	.label_1789
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x10]
	mov	qword ptr [rbp - 0x10], rax
	nop	
	mov	rax, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	cmp	qword ptr [rax + 0x18], 0
	je	.label_1787
	mov	rax, qword ptr [rbp - 0x18]
	mov	rdi, qword ptr [rax + 0x18]
	call	closedir
	mov	rbp, rbp
	mov	dword ptr [rbp - 4], eax
.label_1787:
	mov	rax, qword ptr [rbp - 0x18]
	nop	
	mov	rdi, rax
	mov	rsp, rsp
	call	free
	jmp	.label_1788
.label_1789:
	add	rsp, 0x20
	pop	rbp
	nop	
	ret	
	.section	.text
	.align	32
	#Procedure 0x41ed80

	.globl rpl_fts_close
	.type rpl_fts_close, @function
rpl_fts_close:
	lea	rsi, [rsi]
	push	rbp
	mov	rbp, rsp
	nop	
	sub	rsp, 0x30
	nop	
	mov	qword ptr [rbp - 0x10], rdi
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x14], 0
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	cmp	qword ptr [rdi], 0
	lea	rsi, [rsi]
	je	.label_1790
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x20], rax
.label_1796:
	mov	rax, qword ptr [rbp - 0x20]
	cmp	qword ptr [rax + 0x58], 0
	mov	rsp, rsp
	jl	.label_1797
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x30], rax
	mov	rax, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	cmp	qword ptr [rax + 0x10], 0
	je	.label_1802
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	mov	rax, qword ptr [rax + 0x10]
	mov	qword ptr [rbp - 0x28], rax
	jmp	.label_1805
.label_1802:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x20]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x28], rax
.label_1805:
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x20], rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x30]
	mov	rdi, rax
	call	free
	jmp	.label_1796
.label_1797:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x20]
	mov	rdi, rax
	call	free
.label_1790:
	mov	rax, qword ptr [rbp - 0x10]
	cmp	qword ptr [rax + 8], 0
	je	.label_1799
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rax + 8]
	call	fts_lfree
.label_1799:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	rax, qword ptr [rax + 0x10]
	mov	rdi, rax
	nop	
	call	free
	mov	rax, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rax + 0x20]
	call	free
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rax + 0x48]
	and	ecx, 0x200
	cmp	ecx, 0
	je	.label_1792
	lea	rsi, [rsi]
	xor	eax, eax
	nop	
	mov	rcx, qword ptr [rbp - 0x10]
	nop	
	cmp	eax, dword ptr [rcx + 0x2c]
	mov	rsp, rsp
	jg	.label_1794
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	edi, dword ptr [rax + 0x2c]
	call	close
	nop	
	cmp	eax, 0
	nop	
	je	.label_1800
	nop	
	call	__errno_location
	mov	ecx, dword ptr [rax]
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x14], ecx
.label_1800:
	lea	rsi, [rsi]
	jmp	.label_1794
.label_1794:
	jmp	.label_1791
.label_1792:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	ecx, dword ptr [rax + 0x48]
	mov	rsp, rsp
	and	ecx, 4
	cmp	ecx, 0
	lea	rdi, [rdi]
	jne	.label_1804
	mov	rax, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	edi, dword ptr [rax + 0x28]
	call	fchdir
	mov	rbp, rbp
	cmp	eax, 0
	lea	rsi, [rsi]
	je	.label_1793
	nop	
	call	__errno_location
	mov	rsp, rsp
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 0x14], ecx
.label_1793:
	mov	rax, qword ptr [rbp - 0x10]
	nop	
	mov	edi, dword ptr [rax + 0x28]
	nop	
	call	close
	mov	rbp, rbp
	cmp	eax, 0
	je	.label_1798
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x14], 0
	mov	rbp, rbp
	jne	.label_1801
	lea	rdi, [rdi]
	call	__errno_location
	lea	rdi, [rdi]
	mov	ecx, dword ptr [rax]
	nop	
	mov	dword ptr [rbp - 0x14], ecx
.label_1801:
	jmp	.label_1798
.label_1798:
	lea	rdi, [rdi]
	jmp	.label_1804
.label_1804:
	jmp	.label_1791
.label_1791:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	add	rax, 0x60
	mov	rdi, rax
	call	fd_ring_clear
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	cmp	qword ptr [rax + 0x50], 0
	lea	rdi, [rdi]
	je	.label_1795
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rax + 0x50]
	lea	rdi, [rdi]
	call	hash_free
.label_1795:
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x10]
	call	free_dir
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	call	free
	cmp	dword ptr [rbp - 0x14], 0
	lea	rdi, [rdi]
	je	.label_1803
	mov	eax, dword ptr [rbp - 0x14]
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x18], eax
	call	__errno_location
	mov	ecx, dword ptr [rbp - 0x18]
	mov	dword ptr [rax], ecx
	mov	dword ptr [rbp - 4], 0xffffffff
	mov	rsp, rsp
	jmp	.label_1806
.label_1803:
	mov	dword ptr [rbp - 4], 0
.label_1806:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 4]
	nop	
	add	rsp, 0x30
	nop	
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x41f030

	.globl fd_ring_clear
	.type fd_ring_clear, @function
fd_ring_clear:
	push	rbp
	lea	rsi, [rsi]
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 0x10], rdi
.label_1807:
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x10]
	call	i_ring_empty
	lea	rdi, [rdi]
	xor	al, 0xff
	lea	rdi, [rdi]
	test	al, 1
	nop	
	jne	.label_1809
	nop	
	jmp	.label_1810
.label_1809:
	mov	rdi, qword ptr [rbp - 0x10]
	nop	
	call	i_ring_pop
	xor	ecx, ecx
	mov	dword ptr [rbp - 8], eax
	cmp	ecx, dword ptr [rbp - 8]
	jg	.label_1808
	mov	edi, dword ptr [rbp - 8]
	call	close
	mov	dword ptr [rbp - 4], eax
.label_1808:
	jmp	.label_1807
.label_1810:
	mov	rbp, rbp
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x41f0a0

	.globl free_dir
	.type free_dir, @function
free_dir:
	mov	rbp, rbp
	push	rbp
	mov	rbp, rsp
	lea	rsi, [rsi]
	sub	rsp, 0x10
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	nop	
	mov	eax, dword ptr [rdi + 0x48]
	lea	rdi, [rdi]
	and	eax, 0x102
	lea	rdi, [rdi]
	cmp	eax, 0
	nop	
	je	.label_1811
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 8]
	cmp	qword ptr [rax + 0x58], 0
	je	.label_1813
	mov	rax, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rax + 0x58]
	lea	rsi, [rsi]
	call	hash_free
.label_1813:
	lea	rdi, [rdi]
	jmp	.label_1812
.label_1811:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax + 0x58]
	mov	rbp, rbp
	mov	rdi, rax
	nop	
	call	free
.label_1812:
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x41f120

	.globl rpl_fts_read
	.type rpl_fts_read, @function
rpl_fts_read:
	push	rbp
	lea	rsi, [rsi]
	mov	rbp, rsp
	sub	rsp, 0x60
	nop	
	mov	qword ptr [rbp - 0x58], rdi
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x58]
	lea	rsi, [rsi]
	cmp	qword ptr [rdi], 0
	mov	rbp, rbp
	je	.label_1824
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x58]
	nop	
	mov	ecx, dword ptr [rax + 0x48]
	and	ecx, 0x2000
	cmp	ecx, 0
	je	.label_1837
.label_1824:
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x20], 0
	jmp	.label_1828
.label_1837:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x58]
	mov	rsp, rsp
	mov	rax, qword ptr [rax]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x48], rax
	nop	
	mov	rax, qword ptr [rbp - 0x48]
	mov	rsp, rsp
	mov	cx, word ptr [rax + 0x74]
	nop	
	mov	word ptr [rbp - 0x4a], cx
	mov	rax, qword ptr [rbp - 0x48]
	mov	word ptr [rax + 0x74], 3
	mov	rsp, rsp
	movzx	edx, word ptr [rbp - 0x4a]
	lea	rdi, [rdi]
	cmp	edx, 1
	mov	rsp, rsp
	jne	.label_1854
	xor	edx, edx
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x58]
	mov	rsi, qword ptr [rbp - 0x48]
	call	fts_stat
	mov	rsi, qword ptr [rbp - 0x48]
	mov	word ptr [rsi + 0x70], ax
	mov	rsi, qword ptr [rbp - 0x48]
	mov	qword ptr [rbp - 0x20], rsi
	jmp	.label_1828
.label_1854:
	movzx	eax, word ptr [rbp - 0x4a]
	mov	rsp, rsp
	cmp	eax, 2
	jne	.label_1816
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x48]
	lea	rdi, [rdi]
	movzx	ecx, word ptr [rax + 0x70]
	cmp	ecx, 0xc
	nop	
	je	.label_1882
	mov	rax, qword ptr [rbp - 0x48]
	lea	rdi, [rdi]
	movzx	ecx, word ptr [rax + 0x70]
	mov	rsp, rsp
	cmp	ecx, 0xd
	jne	.label_1816
.label_1882:
	nop	
	mov	edx, 1
	nop	
	mov	rdi, qword ptr [rbp - 0x58]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x48]
	call	fts_stat
	nop	
	mov	rsi, qword ptr [rbp - 0x48]
	mov	word ptr [rsi + 0x70], ax
	mov	rsi, qword ptr [rbp - 0x48]
	lea	rsi, [rsi]
	movzx	edx, word ptr [rsi + 0x70]
	cmp	edx, 1
	mov	rbp, rbp
	jne	.label_1832
	mov	rax, qword ptr [rbp - 0x58]
	mov	ecx, dword ptr [rax + 0x48]
	and	ecx, 4
	cmp	ecx, 0
	jne	.label_1832
	mov	rbp, rbp
	movabs	rsi, OFFSET FLAT:.str_3
	mov	rdi, qword ptr [rbp - 0x58]
	mov	rsp, rsp
	call	diropen
	mov	rsi, qword ptr [rbp - 0x48]
	mov	dword ptr [rsi + 0x44], eax
	cmp	eax, 0
	lea	rsi, [rsi]
	jge	.label_1884
	call	__errno_location
	lea	rsi, [rsi]
	mov	ecx, dword ptr [rax]
	nop	
	mov	rax, qword ptr [rbp - 0x48]
	mov	dword ptr [rax + 0x40], ecx
	mov	rax, qword ptr [rbp - 0x48]
	mov	rbp, rbp
	mov	word ptr [rax + 0x70], 7
	jmp	.label_1863
.label_1884:
	mov	rax, qword ptr [rbp - 0x48]
	movzx	ecx, word ptr [rax + 0x72]
	nop	
	or	ecx, 2
	mov	dx, cx
	lea	rsi, [rsi]
	mov	word ptr [rax + 0x72], dx
.label_1863:
	jmp	.label_1832
.label_1832:
	jmp	.label_1836
.label_1816:
	mov	rax, qword ptr [rbp - 0x48]
	mov	rbp, rbp
	movzx	ecx, word ptr [rax + 0x70]
	cmp	ecx, 1
	jne	.label_1877
	lea	rdi, [rdi]
	movzx	eax, word ptr [rbp - 0x4a]
	cmp	eax, 4
	mov	rsp, rsp
	je	.label_1881
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x58]
	mov	ecx, dword ptr [rax + 0x48]
	and	ecx, 0x40
	cmp	ecx, 0
	mov	rsp, rsp
	je	.label_1820
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x48]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax + 0x78]
	nop	
	mov	rcx, qword ptr [rbp - 0x58]
	cmp	rax, qword ptr [rcx + 0x18]
	je	.label_1820
.label_1881:
	mov	rax, qword ptr [rbp - 0x48]
	movzx	ecx, word ptr [rax + 0x72]
	lea	rsi, [rsi]
	and	ecx, 2
	mov	rbp, rbp
	cmp	ecx, 0
	je	.label_1865
	mov	rax, qword ptr [rbp - 0x48]
	mov	edi, dword ptr [rax + 0x44]
	call	close
	mov	dword ptr [rbp - 0x18], eax
.label_1865:
	nop	
	mov	rax, qword ptr [rbp - 0x58]
	lea	rsi, [rsi]
	cmp	qword ptr [rax + 8], 0
	je	.label_1845
	nop	
	mov	rax, qword ptr [rbp - 0x58]
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rax + 8]
	call	fts_lfree
	nop	
	mov	rax, qword ptr [rbp - 0x58]
	mov	rbp, rbp
	mov	qword ptr [rax + 8], 0
.label_1845:
	mov	rax, qword ptr [rbp - 0x48]
	mov	word ptr [rax + 0x70], 6
	mov	rdi, qword ptr [rbp - 0x58]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x48]
	mov	rbp, rbp
	call	leave_dir
	mov	rax, qword ptr [rbp - 0x48]
	mov	qword ptr [rbp - 0x20], rax
	lea	rdi, [rdi]
	jmp	.label_1828
.label_1820:
	mov	rax, qword ptr [rbp - 0x58]
	lea	rdi, [rdi]
	cmp	qword ptr [rax + 8], 0
	lea	rsi, [rsi]
	je	.label_1873
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x58]
	mov	ecx, dword ptr [rax + 0x48]
	mov	rbp, rbp
	and	ecx, 0x1000
	cmp	ecx, 0
	mov	rbp, rbp
	je	.label_1873
	mov	rax, qword ptr [rbp - 0x58]
	mov	ecx, dword ptr [rax + 0x48]
	and	ecx, 0xffffefff
	mov	dword ptr [rax + 0x48], ecx
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x58]
	mov	rsp, rsp
	mov	rdi, qword ptr [rax + 8]
	nop	
	call	fts_lfree
	mov	rax, qword ptr [rbp - 0x58]
	mov	qword ptr [rax + 8], 0
.label_1873:
	nop	
	mov	rax, qword ptr [rbp - 0x58]
	cmp	qword ptr [rax + 8], 0
	je	.label_1825
	lea	rdi, [rdi]
	mov	edx, 0xffffffff
	mov	rdi, qword ptr [rbp - 0x58]
	mov	rsi, qword ptr [rbp - 0x48]
	mov	rax, qword ptr [rbp - 0x48]
	nop	
	mov	rcx, qword ptr [rax + 0x30]
	call	fts_safe_changedir
	cmp	eax, 0
	mov	rbp, rbp
	je	.label_1827
	nop	
	call	__errno_location
	mov	ecx, dword ptr [rax]
	mov	rax, qword ptr [rbp - 0x48]
	mov	dword ptr [rax + 0x40], ecx
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x48]
	mov	rbp, rbp
	movzx	ecx, word ptr [rax + 0x72]
	lea	rsi, [rsi]
	or	ecx, 1
	lea	rsi, [rsi]
	mov	dx, cx
	mov	word ptr [rax + 0x72], dx
	mov	rax, qword ptr [rbp - 0x58]
	mov	rax, qword ptr [rax + 8]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x48], rax
.label_1867:
	cmp	qword ptr [rbp - 0x48], 0
	je	.label_1860
	mov	rax, qword ptr [rbp - 0x48]
	mov	rbp, rbp
	mov	rax, qword ptr [rax + 8]
	mov	rax, qword ptr [rax + 0x30]
	mov	rcx, qword ptr [rbp - 0x48]
	nop	
	mov	qword ptr [rcx + 0x30], rax
	mov	rax, qword ptr [rbp - 0x48]
	mov	rax, qword ptr [rax + 0x10]
	nop	
	mov	qword ptr [rbp - 0x48], rax
	mov	rbp, rbp
	jmp	.label_1867
.label_1860:
	jmp	.label_1827
.label_1827:
	lea	rdi, [rdi]
	jmp	.label_1858
.label_1825:
	lea	rdi, [rdi]
	mov	esi, 3
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x58]
	call	fts_build
	mov	rdi, qword ptr [rbp - 0x58]
	mov	qword ptr [rdi + 8], rax
	cmp	rax, 0
	mov	rbp, rbp
	jne	.label_1883
	nop	
	mov	rax, qword ptr [rbp - 0x58]
	mov	ecx, dword ptr [rax + 0x48]
	mov	rbp, rbp
	and	ecx, 0x2000
	cmp	ecx, 0
	je	.label_1823
	mov	qword ptr [rbp - 0x20], 0
	nop	
	jmp	.label_1828
.label_1823:
	mov	rax, qword ptr [rbp - 0x48]
	mov	rbp, rbp
	cmp	dword ptr [rax + 0x40], 0
	je	.label_1831
	nop	
	mov	rax, qword ptr [rbp - 0x48]
	movzx	ecx, word ptr [rax + 0x70]
	cmp	ecx, 4
	je	.label_1831
	nop	
	mov	rax, qword ptr [rbp - 0x48]
	mov	word ptr [rax + 0x70], 7
.label_1831:
	nop	
	jmp	.label_1844
.label_1844:
	mov	rdi, qword ptr [rbp - 0x58]
	mov	rsi, qword ptr [rbp - 0x48]
	call	leave_dir
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x48]
	mov	qword ptr [rbp - 0x20], rax
	lea	rsi, [rsi]
	jmp	.label_1828
.label_1883:
	lea	rdi, [rdi]
	jmp	.label_1858
.label_1858:
	mov	rax, qword ptr [rbp - 0x58]
	mov	rax, qword ptr [rax + 8]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x48], rax
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x58]
	mov	qword ptr [rax + 8], 0
	jmp	.label_1840
.label_1877:
	mov	rsp, rsp
	jmp	.label_1849
.label_1849:
	mov	rax, qword ptr [rbp - 0x48]
	mov	qword ptr [rbp - 0x60], rax
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x48]
	mov	rsp, rsp
	cmp	qword ptr [rax + 0x10], 0
	lea	rsi, [rsi]
	jne	.label_1871
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x48]
	mov	rax, qword ptr [rax + 8]
	nop	
	cmp	qword ptr [rax + 0x18], 0
	nop	
	je	.label_1871
	mov	rbp, rbp
	mov	esi, 3
	nop	
	mov	rax, qword ptr [rbp - 0x60]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax + 8]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x48], rax
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rbp - 0x58]
	mov	qword ptr [rcx], rax
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x48]
	mov	rax, qword ptr [rax + 0x48]
	mov	rcx, qword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rcx + 0x20]
	mov	byte ptr [rcx + rax], 0
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x58]
	mov	rbp, rbp
	call	fts_build
	mov	qword ptr [rbp - 0x48], rax
	mov	rsp, rsp
	cmp	rax, 0
	lea	rdi, [rdi]
	jne	.label_1835
	mov	rax, qword ptr [rbp - 0x58]
	mov	rbp, rbp
	mov	ecx, dword ptr [rax + 0x48]
	mov	rsp, rsp
	and	ecx, 0x2000
	nop	
	cmp	ecx, 0
	je	.label_1842
	mov	qword ptr [rbp - 0x20], 0
	nop	
	jmp	.label_1828
.label_1842:
	jmp	.label_1834
.label_1835:
	mov	rax, qword ptr [rbp - 0x60]
	lea	rsi, [rsi]
	mov	rdi, rax
	lea	rsi, [rsi]
	call	free
	jmp	.label_1840
.label_1871:
	mov	rax, qword ptr [rbp - 0x48]
	mov	rax, qword ptr [rax + 0x10]
	nop	
	mov	qword ptr [rbp - 0x48], rax
	cmp	rax, 0
	je	.label_1862
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rbp - 0x58]
	mov	qword ptr [rcx], rax
	mov	rax, qword ptr [rbp - 0x60]
	mov	rdi, rax
	lea	rdi, [rdi]
	call	free
	mov	rax, qword ptr [rbp - 0x48]
	mov	rsp, rsp
	cmp	qword ptr [rax + 0x58], 0
	jne	.label_1876
	mov	rdi, qword ptr [rbp - 0x58]
	mov	rsp, rsp
	call	restore_initial_cwd
	cmp	eax, 0
	lea	rdi, [rdi]
	je	.label_1880
	mov	rax, qword ptr [rbp - 0x58]
	lea	rsi, [rsi]
	mov	ecx, dword ptr [rax + 0x48]
	or	ecx, 0x2000
	lea	rdi, [rdi]
	mov	dword ptr [rax + 0x48], ecx
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x20], 0
	mov	rbp, rbp
	jmp	.label_1828
.label_1880:
	mov	rdi, qword ptr [rbp - 0x58]
	mov	rsp, rsp
	call	free_dir
	nop	
	mov	rdi, qword ptr [rbp - 0x58]
	mov	rsi, qword ptr [rbp - 0x48]
	call	fts_load
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x58]
	lea	rdi, [rdi]
	call	setup_dir
	mov	byte ptr [rbp - 0x39], al
	jmp	.label_1836
.label_1876:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x48]
	movzx	ecx, word ptr [rax + 0x74]
	mov	rsp, rsp
	cmp	ecx, 4
	jne	.label_1841
	lea	rdi, [rdi]
	jmp	.label_1849
.label_1841:
	mov	rax, qword ptr [rbp - 0x48]
	lea	rsi, [rsi]
	movzx	ecx, word ptr [rax + 0x74]
	nop	
	cmp	ecx, 2
	nop	
	jne	.label_1851
	mov	edx, 1
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x58]
	mov	rsi, qword ptr [rbp - 0x48]
	nop	
	call	fts_stat
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x48]
	mov	rsp, rsp
	mov	word ptr [rsi + 0x70], ax
	mov	rsi, qword ptr [rbp - 0x48]
	lea	rdi, [rdi]
	movzx	edx, word ptr [rsi + 0x70]
	lea	rdi, [rdi]
	cmp	edx, 1
	jne	.label_1818
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x58]
	mov	ecx, dword ptr [rax + 0x48]
	and	ecx, 4
	cmp	ecx, 0
	mov	rbp, rbp
	jne	.label_1818
	movabs	rsi, OFFSET FLAT:.str_3
	mov	rdi, qword ptr [rbp - 0x58]
	mov	rsp, rsp
	call	diropen
	mov	rsi, qword ptr [rbp - 0x48]
	lea	rsi, [rsi]
	mov	dword ptr [rsi + 0x44], eax
	cmp	eax, 0
	lea	rdi, [rdi]
	jge	.label_1833
	call	__errno_location
	lea	rsi, [rsi]
	mov	ecx, dword ptr [rax]
	mov	rax, qword ptr [rbp - 0x48]
	mov	dword ptr [rax + 0x40], ecx
	mov	rax, qword ptr [rbp - 0x48]
	mov	word ptr [rax + 0x70], 7
	mov	rbp, rbp
	jmp	.label_1817
.label_1833:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x48]
	mov	rsp, rsp
	movzx	ecx, word ptr [rax + 0x72]
	or	ecx, 2
	mov	dx, cx
	mov	word ptr [rax + 0x72], dx
.label_1817:
	jmp	.label_1818
.label_1818:
	mov	rax, qword ptr [rbp - 0x48]
	mov	word ptr [rax + 0x74], 3
.label_1851:
	mov	rbp, rbp
	jmp	.label_1840
.label_1840:
	mov	rax, qword ptr [rbp - 0x58]
	mov	rbp, rbp
	mov	rax, qword ptr [rax + 0x20]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rcx + 8]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rcx + 0x48]
	sub	rcx, 1
	nop	
	mov	rdx, qword ptr [rbp - 0x48]
	mov	rbp, rbp
	mov	rdx, qword ptr [rdx + 8]
	mov	rdx, qword ptr [rdx + 0x38]
	movsx	esi, byte ptr [rdx + rcx]
	cmp	esi, 0x2f
	mov	qword ptr [rbp - 0x28], rax
	mov	rsp, rsp
	jne	.label_1843
	mov	rax, qword ptr [rbp - 0x48]
	nop	
	mov	rax, qword ptr [rax + 8]
	mov	rax, qword ptr [rax + 0x48]
	lea	rsi, [rsi]
	sub	rax, 1
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_1866
.label_1843:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x48]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax + 8]
	mov	rax, qword ptr [rax + 0x48]
	mov	qword ptr [rbp - 0x30], rax
.label_1866:
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x28]
	add	rcx, rax
	mov	qword ptr [rbp - 0x10], rcx
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, rax
	nop	
	add	rcx, 1
	mov	qword ptr [rbp - 0x10], rcx
	mov	byte ptr [rax], 0x2f
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x48]
	add	rax, 0x108
	mov	rcx, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rcx + 0x60]
	add	rcx, 1
	mov	rsi, rax
	mov	rsp, rsp
	mov	rdx, rcx
	mov	rsp, rsp
	call	memmove
.label_1836:
	mov	rax, qword ptr [rbp - 0x48]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x58]
	mov	rsp, rsp
	mov	qword ptr [rcx], rax
	mov	rax, qword ptr [rbp - 0x48]
	mov	rbp, rbp
	movzx	edx, word ptr [rax + 0x70]
	cmp	edx, 0xb
	jne	.label_1826
	mov	rax, qword ptr [rbp - 0x48]
	cmp	qword ptr [rax + 0xa8], 2
	mov	rsp, rsp
	jne	.label_1838
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x48]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 8], rax
	mov	rax, qword ptr [rbp - 8]
	cmp	qword ptr [rax + 0x68], 0
	nop	
	jne	.label_1846
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x58]
	mov	ecx, dword ptr [rax + 0x48]
	and	ecx, 8
	cmp	ecx, 0
	je	.label_1846
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x58]
	mov	ecx, dword ptr [rax + 0x48]
	and	ecx, 0x10
	cmp	ecx, 0
	je	.label_1846
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x58]
	mov	rbp, rbp
	mov	esi, dword ptr [rax + 0x2c]
	call	leaf_optimization
	cmp	eax, 2
	jne	.label_1846
	nop	
	jmp	.label_1850
.label_1846:
	lea	rsi, [rsi]
	xor	edx, edx
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x58]
	mov	rsi, qword ptr [rbp - 0x48]
	call	fts_stat
	mov	rsi, qword ptr [rbp - 0x48]
	lea	rsi, [rsi]
	mov	word ptr [rsi + 0x70], ax
	mov	rsi, qword ptr [rbp - 0x48]
	lea	rsi, [rsi]
	mov	edx, dword ptr [rsi + 0x90]
	lea	rsi, [rsi]
	and	edx, 0xf000
	cmp	edx, 0x4000
	nop	
	jne	.label_1819
	mov	rax, qword ptr [rbp - 0x48]
	mov	rbp, rbp
	cmp	qword ptr [rax + 0x58], 0
	mov	rbp, rbp
	je	.label_1819
	lea	rdi, [rdi]
	xor	eax, eax
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 8]
	cmp	rcx, qword ptr [rdx + 0x68]
	mov	rbp, rbp
	jae	.label_1819
	mov	rax, qword ptr [rbp - 8]
	cmp	qword ptr [rax + 0x68], -1
	je	.label_1819
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 8]
	mov	rcx, qword ptr [rax + 0x68]
	lea	rdi, [rdi]
	add	rcx, -1
	mov	rsp, rsp
	mov	qword ptr [rax + 0x68], rcx
.label_1819:
	mov	rbp, rbp
	jmp	.label_1850
.label_1850:
	jmp	.label_1853
.label_1838:
	nop	
	jmp	.label_1855
.label_1855:
	mov	rax, qword ptr [rbp - 0x48]
	mov	rsp, rsp
	cmp	qword ptr [rax + 0xa8], 1
	je	.label_1856
	nop	
	call	abort
.label_1856:
	jmp	.label_1852
.label_1852:
	mov	rsp, rsp
	jmp	.label_1853
.label_1853:
	mov	rsp, rsp
	jmp	.label_1826
.label_1826:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x48]
	movzx	ecx, word ptr [rax + 0x70]
	cmp	ecx, 1
	jne	.label_1822
	mov	rax, qword ptr [rbp - 0x48]
	mov	rsp, rsp
	cmp	qword ptr [rax + 0x58], 0
	jne	.label_1874
	mov	rax, qword ptr [rbp - 0x48]
	mov	rax, qword ptr [rax + 0x78]
	mov	rcx, qword ptr [rbp - 0x58]
	mov	rsp, rsp
	mov	qword ptr [rcx + 0x18], rax
.label_1874:
	mov	rdi, qword ptr [rbp - 0x58]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x48]
	call	enter_dir
	lea	rdi, [rdi]
	test	al, 1
	jne	.label_1872
	mov	rbp, rbp
	call	__errno_location
	nop	
	mov	dword ptr [rax], 0xc
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x20], 0
	jmp	.label_1828
.label_1872:
	mov	rbp, rbp
	jmp	.label_1822
.label_1822:
	mov	rax, qword ptr [rbp - 0x48]
	mov	qword ptr [rbp - 0x20], rax
	mov	rbp, rbp
	jmp	.label_1828
.label_1862:
	jmp	.label_1834
.label_1834:
	mov	rax, qword ptr [rbp - 0x60]
	mov	rsp, rsp
	mov	rax, qword ptr [rax + 8]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x48], rax
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rbp - 0x58]
	mov	qword ptr [rcx], rax
	mov	rax, qword ptr [rbp - 0x60]
	lea	rdi, [rdi]
	mov	rdi, rax
	lea	rdi, [rdi]
	call	free
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x48]
	lea	rsi, [rsi]
	cmp	qword ptr [rax + 0x58], -1
	mov	rbp, rbp
	jne	.label_1861
	mov	rax, qword ptr [rbp - 0x48]
	mov	rdi, rax
	lea	rsi, [rsi]
	call	free
	nop	
	call	__errno_location
	mov	dword ptr [rax], 0
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x58]
	nop	
	mov	qword ptr [rax], 0
	mov	qword ptr [rbp - 0x20], 0
	lea	rdi, [rdi]
	jmp	.label_1828
.label_1861:
	jmp	.label_1878
.label_1878:
	mov	rax, qword ptr [rbp - 0x48]
	movzx	ecx, word ptr [rax + 0x70]
	lea	rsi, [rsi]
	cmp	ecx, 0xb
	mov	rsp, rsp
	jne	.label_1875
	call	abort
.label_1875:
	jmp	.label_1879
.label_1879:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x48]
	nop	
	mov	rax, qword ptr [rax + 0x48]
	mov	rcx, qword ptr [rbp - 0x58]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rcx + 0x20]
	mov	byte ptr [rcx + rax], 0
	mov	rax, qword ptr [rbp - 0x48]
	nop	
	cmp	qword ptr [rax + 0x58], 0
	jne	.label_1847
	mov	rdi, qword ptr [rbp - 0x58]
	call	restore_initial_cwd
	cmp	eax, 0
	je	.label_1821
	call	__errno_location
	mov	ecx, dword ptr [rax]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x48]
	nop	
	mov	dword ptr [rax + 0x40], ecx
	mov	rax, qword ptr [rbp - 0x58]
	mov	ecx, dword ptr [rax + 0x48]
	mov	rbp, rbp
	or	ecx, 0x2000
	mov	rbp, rbp
	mov	dword ptr [rax + 0x48], ecx
.label_1821:
	jmp	.label_1839
.label_1847:
	mov	rax, qword ptr [rbp - 0x48]
	movzx	ecx, word ptr [rax + 0x72]
	and	ecx, 2
	cmp	ecx, 0
	nop	
	je	.label_1829
	mov	rax, qword ptr [rbp - 0x58]
	mov	ecx, dword ptr [rax + 0x48]
	and	ecx, 4
	lea	rsi, [rsi]
	cmp	ecx, 0
	lea	rdi, [rdi]
	jne	.label_1848
	mov	rax, qword ptr [rbp - 0x58]
	mov	ecx, dword ptr [rax + 0x48]
	and	ecx, 0x200
	lea	rdi, [rdi]
	cmp	ecx, 0
	je	.label_1857
	mov	edx, 1
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x58]
	mov	rax, qword ptr [rbp - 0x48]
	mov	rbp, rbp
	mov	esi, dword ptr [rax + 0x44]
	nop	
	call	cwd_advance_fd
	lea	rsi, [rsi]
	xor	edx, edx
	nop	
	mov	cl, dl
	nop	
	test	cl, 1
	mov	rsp, rsp
	jne	.label_1870
	jmp	.label_1848
.label_1857:
	mov	rax, qword ptr [rbp - 0x48]
	mov	edi, dword ptr [rax + 0x44]
	mov	rbp, rbp
	call	fchdir
	cmp	eax, 0
	je	.label_1848
.label_1870:
	mov	rbp, rbp
	call	__errno_location
	lea	rsi, [rsi]
	mov	ecx, dword ptr [rax]
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x48]
	mov	rbp, rbp
	mov	dword ptr [rax + 0x40], ecx
	mov	rax, qword ptr [rbp - 0x58]
	mov	ecx, dword ptr [rax + 0x48]
	or	ecx, 0x2000
	mov	dword ptr [rax + 0x48], ecx
.label_1848:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x48]
	mov	edi, dword ptr [rax + 0x44]
	mov	rbp, rbp
	call	close
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x14], eax
	jmp	.label_1869
.label_1829:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x48]
	mov	rbp, rbp
	movzx	ecx, word ptr [rax + 0x72]
	and	ecx, 1
	cmp	ecx, 0
	lea	rsi, [rsi]
	jne	.label_1814
	mov	edx, 0xffffffff
	movabs	rcx, OFFSET FLAT:.str.2_1
	mov	rdi, qword ptr [rbp - 0x58]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x48]
	mov	rbp, rbp
	mov	rsi, qword ptr [rax + 8]
	nop	
	call	fts_safe_changedir
	cmp	eax, 0
	mov	rsp, rsp
	je	.label_1814
	call	__errno_location
	nop	
	mov	ecx, dword ptr [rax]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x48]
	mov	dword ptr [rax + 0x40], ecx
	mov	rax, qword ptr [rbp - 0x58]
	mov	ecx, dword ptr [rax + 0x48]
	mov	rbp, rbp
	or	ecx, 0x2000
	mov	rsp, rsp
	mov	dword ptr [rax + 0x48], ecx
.label_1814:
	jmp	.label_1869
.label_1869:
	nop	
	jmp	.label_1839
.label_1839:
	mov	rax, qword ptr [rbp - 0x48]
	movzx	ecx, word ptr [rax + 0x70]
	mov	rbp, rbp
	cmp	ecx, 2
	lea	rdi, [rdi]
	je	.label_1868
	nop	
	mov	eax, 6
	mov	rbp, rbp
	mov	ecx, 7
	mov	rdx, qword ptr [rbp - 0x48]
	cmp	dword ptr [rdx + 0x40], 0
	mov	rbp, rbp
	cmovne	eax, ecx
	lea	rdi, [rdi]
	mov	si, ax
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x48]
	mov	rsp, rsp
	mov	word ptr [rdx + 0x70], si
	mov	rdx, qword ptr [rbp - 0x48]
	cmp	dword ptr [rdx + 0x40], 0
	nop	
	jne	.label_1864
	lea	rdi, [rdi]
	jmp	.label_1815
.label_1815:
	mov	rdi, qword ptr [rbp - 0x58]
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x48]
	lea	rsi, [rsi]
	call	leave_dir
	jmp	.label_1864
.label_1864:
	mov	rsp, rsp
	jmp	.label_1868
.label_1868:
	mov	rax, qword ptr [rbp - 0x58]
	mov	ecx, dword ptr [rax + 0x48]
	lea	rsi, [rsi]
	and	ecx, 0x2000
	mov	rsp, rsp
	cmp	ecx, 0
	je	.label_1830
	xor	eax, eax
	mov	ecx, eax
	mov	qword ptr [rbp - 0x38], rcx
	lea	rsi, [rsi]
	jmp	.label_1859
.label_1830:
	mov	rax, qword ptr [rbp - 0x48]
	mov	qword ptr [rbp - 0x38], rax
.label_1859:
	mov	rax, qword ptr [rbp - 0x38]
	nop	
	mov	qword ptr [rbp - 0x20], rax
.label_1828:
	mov	rax, qword ptr [rbp - 0x20]
	add	rsp, 0x60
	nop	
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x41fe80

	.globl leave_dir
	.type leave_dir, @function
leave_dir:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x40
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x10]
	add	rsi, 0x78
	mov	qword ptr [rbp - 0x18], rsi
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	mov	eax, dword ptr [rsi + 0x48]
	lea	rdi, [rdi]
	and	eax, 0x102
	cmp	eax, 0
	lea	rdi, [rdi]
	je	.label_1885
	lea	rsi, [rsi]
	lea	rax, [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	mov	rcx, qword ptr [rcx]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x30], rcx
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rcx + 8]
	nop	
	mov	qword ptr [rbp - 0x28], rcx
	mov	rcx, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rcx + 0x58]
	mov	rsp, rsp
	mov	rsi, rax
	call	hash_delete
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x38], rax
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x38], 0
	nop	
	jne	.label_1892
	call	abort
.label_1892:
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x38]
	call	free
	lea	rdi, [rdi]
	jmp	.label_1888
.label_1885:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 8]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x40], rax
	cmp	qword ptr [rbp - 0x40], 0
	je	.label_1887
	xor	eax, eax
	mov	rsp, rsp
	mov	ecx, eax
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x40]
	cmp	rcx, qword ptr [rdx + 0x58]
	lea	rsi, [rsi]
	jg	.label_1887
	mov	rsp, rsp
	jmp	.label_1886
.label_1886:
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax + 0x58]
	cmp	qword ptr [rax + 0x10], 0
	jne	.label_1889
	lea	rsi, [rsi]
	call	abort
.label_1889:
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax + 0x58]
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x18]
	nop	
	cmp	rax, qword ptr [rcx + 8]
	jne	.label_1891
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax + 0x58]
	mov	rax, qword ptr [rax + 8]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x18]
	cmp	rax, qword ptr [rcx]
	jne	.label_1891
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax + 0x78]
	mov	rcx, qword ptr [rbp - 8]
	mov	rcx, qword ptr [rcx + 0x58]
	mov	qword ptr [rcx + 8], rax
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x40]
	mov	rbp, rbp
	mov	rax, qword ptr [rax + 0x80]
	mov	rcx, qword ptr [rbp - 8]
	mov	rcx, qword ptr [rcx + 0x58]
	mov	rbp, rbp
	mov	qword ptr [rcx], rax
.label_1891:
	mov	rsp, rsp
	jmp	.label_1890
.label_1890:
	mov	rsp, rsp
.label_2437:
	jmp	.label_1887
.label_1887:
	jmp	.label_1888
.label_1888:
	lea	rdi, [rdi]
	add	rsp, 0x40
	mov	rsp, rsp
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x420020

	.globl fts_safe_changedir
	.type fts_safe_changedir, @function
fts_safe_changedir:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0xe0
	xor	eax, eax
	mov	r8b, al
	mov	rsp, rsp
	mov	qword ptr [rbp - 0xb8], rdi
	mov	qword ptr [rbp - 0xc8], rsi
	mov	rsp, rsp
	mov	dword ptr [rbp - 0xcc], edx
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0xa8], rcx
	cmp	qword ptr [rbp - 0xa8], 0
	mov	rbp, rbp
	mov	byte ptr [rbp - 0xcd], r8b
	je	.label_1900
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0xa8]
	lea	rsi, [rsi]
	mov	eax, OFFSET FLAT:.str.2_1
	lea	rsi, [rsi]
	mov	esi, eax
	call	strcmp
	lea	rsi, [rsi]
	cmp	eax, 0
	lea	rdi, [rdi]
	sete	cl
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0xcd], cl
.label_1900:
	lea	rsi, [rsi]
	mov	al, byte ptr [rbp - 0xcd]
	and	al, 1
	mov	byte ptr [rbp - 0xb9], al
	mov	rcx, qword ptr [rbp - 0xb8]
	mov	edx, dword ptr [rcx + 0x48]
	lea	rsi, [rsi]
	and	edx, 4
	lea	rdi, [rdi]
	cmp	edx, 0
	je	.label_1899
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0xb8]
	mov	ecx, dword ptr [rax + 0x48]
	mov	rsp, rsp
	and	ecx, 0x200
	nop	
	cmp	ecx, 0
	je	.label_1906
	mov	rbp, rbp
	xor	eax, eax
	mov	rbp, rbp
	cmp	eax, dword ptr [rbp - 0xcc]
	jg	.label_1906
	nop	
	mov	edi, dword ptr [rbp - 0xcc]
	call	close
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x9c], eax
.label_1906:
	mov	dword ptr [rbp - 0xd4], 0
	lea	rsi, [rsi]
	jmp	.label_1896
.label_1899:
	cmp	dword ptr [rbp - 0xcc], 0
	lea	rsi, [rsi]
	jge	.label_1902
	mov	rsp, rsp
	test	byte ptr [rbp - 0xb9], 1
	je	.label_1902
	mov	rax, qword ptr [rbp - 0xb8]
	mov	ecx, dword ptr [rax + 0x48]
	mov	rsp, rsp
	and	ecx, 0x200
	cmp	ecx, 0
	je	.label_1902
	mov	rax, qword ptr [rbp - 0xb8]
	nop	
	add	rax, 0x60
	mov	rdi, rax
	call	i_ring_empty
	test	al, 1
	jne	.label_1908
	mov	rax, qword ptr [rbp - 0xb8]
	lea	rdi, [rdi]
	add	rax, 0x60
	mov	rsp, rsp
	mov	rdi, rax
	nop	
	call	i_ring_pop
	lea	rdi, [rdi]
	xor	ecx, ecx
	nop	
	mov	dword ptr [rbp - 0xd8], eax
	mov	byte ptr [rbp - 0xb9], 1
	cmp	ecx, dword ptr [rbp - 0xd8]
	mov	rbp, rbp
	jg	.label_1897
	mov	eax, dword ptr [rbp - 0xd8]
	mov	rbp, rbp
	mov	dword ptr [rbp - 0xcc], eax
	mov	qword ptr [rbp - 0xa8], 0
.label_1897:
	jmp	.label_1908
.label_1908:
	jmp	.label_1902
.label_1902:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0xcc]
	nop	
	mov	dword ptr [rbp - 0xdc], eax
	mov	rbp, rbp
	cmp	dword ptr [rbp - 0xcc], 0
	mov	rbp, rbp
	jge	.label_1898
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0xb8]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0xa8]
	call	diropen
	mov	rbp, rbp
	mov	dword ptr [rbp - 0xdc], eax
	mov	rbp, rbp
	cmp	eax, 0
	lea	rdi, [rdi]
	jge	.label_1898
	mov	dword ptr [rbp - 0xd4], 0xffffffff
	nop	
	jmp	.label_1896
.label_1898:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0xb8]
	mov	ecx, dword ptr [rax + 0x48]
	lea	rsi, [rsi]
	and	ecx, 2
	lea	rdi, [rdi]
	cmp	ecx, 0
	lea	rsi, [rsi]
	jne	.label_1905
	cmp	qword ptr [rbp - 0xa8], 0
	nop	
	je	.label_1895
	mov	rdi, qword ptr [rbp - 0xa8]
	lea	rsi, [rsi]
	mov	eax, OFFSET FLAT:.str.2_1
	mov	esi, eax
	lea	rsi, [rsi]
	call	strcmp
	cmp	eax, 0
	jne	.label_1895
.label_1905:
	lea	rsi, [rbp - 0x98]
	mov	edi, dword ptr [rbp - 0xdc]
	call	__fstat
	mov	rsp, rsp
	cmp	eax, 0
	je	.label_1903
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 8], 0xffffffff
	jmp	.label_1893
.label_1903:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0xc8]
	mov	rax, qword ptr [rax + 0x78]
	cmp	rax, qword ptr [rbp - 0x98]
	lea	rdi, [rdi]
	jne	.label_1904
	mov	rax, qword ptr [rbp - 0xc8]
	mov	rax, qword ptr [rax + 0x80]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rbp - 0x90]
	nop	
	je	.label_1907
.label_1904:
	lea	rdi, [rdi]
	call	__errno_location
	nop	
	mov	dword ptr [rax], 2
	mov	dword ptr [rbp - 8], 0xffffffff
	mov	rbp, rbp
	jmp	.label_1893
.label_1907:
	jmp	.label_1895
.label_1895:
	nop	
	mov	rax, qword ptr [rbp - 0xb8]
	mov	ecx, dword ptr [rax + 0x48]
	and	ecx, 0x200
	mov	rbp, rbp
	cmp	ecx, 0
	je	.label_1901
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0xb8]
	mov	esi, dword ptr [rbp - 0xdc]
	mov	al, byte ptr [rbp - 0xb9]
	xor	al, 0xff
	lea	rdi, [rdi]
	and	al, 1
	movzx	edx, al
	call	cwd_advance_fd
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0xd4], 0
	nop	
	jmp	.label_1896
.label_1901:
	mov	edi, dword ptr [rbp - 0xdc]
	mov	rbp, rbp
	call	fchdir
	mov	dword ptr [rbp - 8], eax
.label_1893:
	nop	
	cmp	dword ptr [rbp - 0xcc], 0
	jge	.label_1894
	call	__errno_location
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 0xac], ecx
	mov	edi, dword ptr [rbp - 0xdc]
	lea	rdi, [rdi]
	call	close
	lea	rdi, [rdi]
	mov	ecx, dword ptr [rbp - 0xac]
	mov	dword ptr [rbp - 4], eax
	nop	
	mov	dword ptr [rbp - 0xb0], ecx
	call	__errno_location
	mov	ecx, dword ptr [rbp - 0xb0]
	lea	rsi, [rsi]
	mov	dword ptr [rax], ecx
.label_1894:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0xd4], eax
.label_1896:
	mov	eax, dword ptr [rbp - 0xd4]
	add	rsp, 0xe0
	mov	rsp, rsp
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x420400

	.globl fts_build
	.type fts_build, @function
fts_build:
	nop	
	push	rbp
	mov	rsp, rsp
	mov	rbp, rsp
	mov	rsp, rsp
	sub	rsp, 0x110
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x78], rdi
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0xac], esi
	mov	rdi, qword ptr [rbp - 0x78]
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rdi]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x48], rdi
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x48]
	cmp	qword ptr [rdi + 0x18], 0
	lea	rsi, [rsi]
	setne	al
	nop	
	xor	al, 0xff
	xor	al, 0xff
	mov	rbp, rbp
	and	al, 1
	mov	rsp, rsp
	mov	byte ptr [rbp - 0xad], al
	mov	byte ptr [rbp - 0x11], 0
	test	byte ptr [rbp - 0xad], 1
	mov	rbp, rbp
	je	.label_1909
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x48]
	mov	rax, qword ptr [rax + 0x18]
	mov	qword ptr [rbp - 0x10], rax
	nop	
	mov	rdi, qword ptr [rbp - 0x10]
	nop	
	call	dirfd
	mov	dword ptr [rbp - 4], eax
	cmp	dword ptr [rbp - 4], 0
	jge	.label_1937
	jmp	.label_1940
.label_1940:
	mov	rax, qword ptr [rbp - 0x48]
	mov	rdi, qword ptr [rax + 0x18]
	call	closedir
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x48]
	mov	qword ptr [rdi + 0x18], 0
	mov	dword ptr [rbp - 0xc8], eax
	mov	rsp, rsp
	cmp	dword ptr [rbp - 0xac], 3
	jne	.label_1945
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x48]
	mov	word ptr [rax + 0x70], 4
	nop	
	call	__errno_location
	mov	rsp, rsp
	mov	ecx, dword ptr [rax]
	mov	rax, qword ptr [rbp - 0x48]
	mov	rbp, rbp
	mov	dword ptr [rax + 0x40], ecx
.label_1945:
	mov	qword ptr [rbp - 0xa8], 0
	mov	rsp, rsp
	jmp	.label_1924
.label_1937:
	mov	rbp, rbp
	jmp	.label_1926
.label_1909:
	nop	
	mov	rax, qword ptr [rbp - 0x78]
	nop	
	mov	ecx, dword ptr [rax + 0x48]
	lea	rsi, [rsi]
	and	ecx, 4
	mov	rbp, rbp
	cmp	ecx, 0
	lea	rdi, [rdi]
	jne	.label_1954
	nop	
	mov	rax, qword ptr [rbp - 0x78]
	mov	ecx, dword ptr [rax + 0x48]
	and	ecx, 0x200
	mov	rsp, rsp
	cmp	ecx, 0
	lea	rsi, [rsi]
	je	.label_1954
	nop	
	mov	rax, qword ptr [rbp - 0x78]
	lea	rdi, [rdi]
	mov	ecx, dword ptr [rax + 0x2c]
	nop	
	mov	dword ptr [rbp - 0x24], ecx
	mov	rsp, rsp
	jmp	.label_1962
.label_1954:
	mov	eax, 0xffffff9c
	mov	dword ptr [rbp - 0x24], eax
	jmp	.label_1962
.label_1962:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x24]
	lea	rsi, [rsi]
	xor	ecx, ecx
	mov	dl, cl
	mov	rsi, qword ptr [rbp - 0x48]
	mov	rsi, qword ptr [rsi + 0x30]
	mov	rdi, qword ptr [rbp - 0x78]
	mov	ecx, dword ptr [rdi + 0x48]
	mov	rsp, rsp
	and	ecx, 0x10
	cmp	ecx, 0
	mov	dword ptr [rbp - 0xe4], eax
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x108], rsi
	mov	byte ptr [rbp - 0xe9], dl
	je	.label_1919
	nop	
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x78]
	mov	rbp, rbp
	mov	eax, dword ptr [rdx + 0x48]
	mov	rsp, rsp
	and	eax, 1
	cmp	eax, 0
	mov	byte ptr [rbp - 0x81], cl
	nop	
	je	.label_1969
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x48]
	cmp	qword ptr [rax + 0x58], 0
	sete	cl
	mov	byte ptr [rbp - 0x81], cl
.label_1969:
	mov	rbp, rbp
	mov	al, byte ptr [rbp - 0x81]
	lea	rsi, [rsi]
	xor	al, 0xff
	mov	byte ptr [rbp - 0xe9], al
.label_1919:
	mov	rsp, rsp
	mov	al, byte ptr [rbp - 0xe9]
	mov	rbp, rbp
	lea	rcx, [rbp - 4]
	mov	rsp, rsp
	xor	edx, edx
	mov	rbp, rbp
	mov	esi, 0x20000
	lea	rdi, [rdi]
	test	al, 1
	lea	rdi, [rdi]
	cmovne	edx, esi
	mov	edi, dword ptr [rbp - 0xe4]
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x108]
	call	opendirat
	mov	rcx, qword ptr [rbp - 0x48]
	mov	qword ptr [rcx + 0x18], rax
	nop	
	cmp	rax, 0
	lea	rsi, [rsi]
	jne	.label_1922
	mov	rsp, rsp
	cmp	dword ptr [rbp - 0xac], 3
	nop	
	jne	.label_1927
	mov	rax, qword ptr [rbp - 0x48]
	mov	rbp, rbp
	mov	word ptr [rax + 0x70], 4
	mov	rbp, rbp
	call	__errno_location
	mov	ecx, dword ptr [rax]
	mov	rax, qword ptr [rbp - 0x48]
	mov	dword ptr [rax + 0x40], ecx
.label_1927:
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0xa8], 0
	jmp	.label_1924
.label_1922:
	nop	
	mov	rax, qword ptr [rbp - 0x48]
	movzx	ecx, word ptr [rax + 0x70]
	lea	rsi, [rsi]
	cmp	ecx, 0xb
	mov	rbp, rbp
	jne	.label_1938
	mov	rsp, rsp
	xor	edx, edx
	mov	rdi, qword ptr [rbp - 0x78]
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x48]
	call	fts_stat
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x48]
	mov	rbp, rbp
	mov	word ptr [rsi + 0x70], ax
	jmp	.label_1921
.label_1938:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x78]
	mov	ecx, dword ptr [rax + 0x48]
	and	ecx, 0x100
	lea	rsi, [rsi]
	cmp	ecx, 0
	mov	rbp, rbp
	je	.label_1935
	jmp	.label_1950
.label_1950:
	mov	rdi, qword ptr [rbp - 0x78]
	nop	
	mov	rsi, qword ptr [rbp - 0x48]
	mov	rbp, rbp
	call	leave_dir
	xor	edx, edx
	mov	rdi, qword ptr [rbp - 0x78]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x48]
	mov	rbp, rbp
	call	fts_stat
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x78]
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x48]
	mov	word ptr [rbp - 0x8a], ax
	nop	
	call	enter_dir
	test	al, 1
	lea	rdi, [rdi]
	jne	.label_1959
	nop	
	call	__errno_location
	nop	
	mov	dword ptr [rax], 0xc
	mov	qword ptr [rbp - 0xa8], 0
	jmp	.label_1924
.label_1959:
	jmp	.label_1935
.label_1935:
	jmp	.label_1921
.label_1921:
	jmp	.label_1926
.label_1926:
	nop	
	mov	eax, 0x186a0
	nop	
	mov	ecx, eax
	mov	rdx, -1
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x78]
	lea	rsi, [rsi]
	cmp	qword ptr [rsi + 0x40], 0
	cmovne	rcx, rdx
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x20], rcx
	test	byte ptr [rbp - 0xad], 1
	mov	rsp, rsp
	je	.label_1965
	mov	byte ptr [rbp - 0xae], 1
	lea	rsi, [rsi]
	jmp	.label_1913
.label_1965:
	xor	eax, eax
	lea	rdi, [rdi]
	mov	cl, al
	lea	rsi, [rsi]
	cmp	dword ptr [rbp - 0xac], 2
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x31], cl
	lea	rdi, [rdi]
	je	.label_1970
	xor	eax, eax
	mov	cl, al
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x78]
	mov	eax, dword ptr [rdx + 0x48]
	lea	rdi, [rdi]
	and	eax, 8
	lea	rsi, [rsi]
	cmp	eax, 0
	mov	rbp, rbp
	mov	byte ptr [rbp - 0xf9], cl
	lea	rdi, [rdi]
	je	.label_1916
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x78]
	mov	eax, dword ptr [rdx + 0x48]
	and	eax, 0x10
	cmp	eax, 0
	mov	byte ptr [rbp - 0xf9], cl
	lea	rdi, [rdi]
	je	.label_1916
	nop	
	xor	eax, eax
	mov	rsp, rsp
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x78]
	mov	eax, dword ptr [rdx + 0x48]
	mov	rsp, rsp
	and	eax, 0x20
	mov	rsp, rsp
	cmp	eax, 0
	mov	rbp, rbp
	mov	byte ptr [rbp - 0xf9], cl
	jne	.label_1916
	xor	eax, eax
	mov	cl, al
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x48]
	cmp	qword ptr [rdx + 0x88], 2
	nop	
	mov	byte ptr [rbp - 0xf9], cl
	jne	.label_1916
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x48]
	mov	esi, dword ptr [rbp - 4]
	call	leaf_optimization
	mov	rbp, rbp
	cmp	eax, 0
	setne	cl
	mov	byte ptr [rbp - 0xf9], cl
.label_1916:
	mov	al, byte ptr [rbp - 0xf9]
	xor	al, 0xff
	mov	byte ptr [rbp - 0x31], al
.label_1970:
	mov	al, byte ptr [rbp - 0x31]
	and	al, 1
	mov	rbp, rbp
	mov	byte ptr [rbp - 0xae], al
	test	byte ptr [rbp - 0xae], 1
	mov	rsp, rsp
	jne	.label_1939
	mov	rsp, rsp
	cmp	dword ptr [rbp - 0xac], 3
	jne	.label_1911
.label_1939:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x78]
	mov	rsp, rsp
	mov	ecx, dword ptr [rax + 0x48]
	mov	rbp, rbp
	and	ecx, 0x200
	mov	rsp, rsp
	cmp	ecx, 0
	je	.label_1947
	mov	esi, 0x406
	lea	rdi, [rdi]
	mov	edx, 3
	mov	edi, dword ptr [rbp - 4]
	mov	rsp, rsp
	mov	al, 0
	mov	rsp, rsp
	call	rpl_fcntl
	mov	dword ptr [rbp - 4], eax
.label_1947:
	cmp	dword ptr [rbp - 4], 0
	jl	.label_1971
	xor	eax, eax
	mov	rbp, rbp
	mov	ecx, eax
	mov	rdi, qword ptr [rbp - 0x78]
	mov	rsi, qword ptr [rbp - 0x48]
	mov	rsp, rsp
	mov	edx, dword ptr [rbp - 4]
	mov	rsp, rsp
	call	fts_safe_changedir
	cmp	eax, 0
	lea	rsi, [rsi]
	je	.label_1972
.label_1971:
	lea	rdi, [rdi]
	test	byte ptr [rbp - 0xae], 1
	je	.label_1960
	mov	rsp, rsp
	cmp	dword ptr [rbp - 0xac], 3
	jne	.label_1960
	nop	
	call	__errno_location
	mov	ecx, dword ptr [rax]
	mov	rax, qword ptr [rbp - 0x48]
	mov	rsp, rsp
	mov	dword ptr [rax + 0x40], ecx
.label_1960:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x48]
	nop	
	movzx	ecx, word ptr [rax + 0x72]
	or	ecx, 1
	lea	rdi, [rdi]
	mov	dx, cx
	mov	word ptr [rax + 0x72], dx
	mov	byte ptr [rbp - 0xae], 0
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x48]
	mov	rsp, rsp
	mov	rdi, qword ptr [rax + 0x18]
	lea	rsi, [rsi]
	call	closedir
	nop	
	mov	rdi, qword ptr [rbp - 0x48]
	mov	qword ptr [rdi + 0x18], 0
	nop	
	mov	dword ptr [rbp - 0x38], eax
	mov	rax, qword ptr [rbp - 0x78]
	mov	ecx, dword ptr [rax + 0x48]
	mov	rsp, rsp
	and	ecx, 0x200
	mov	rsp, rsp
	cmp	ecx, 0
	je	.label_1967
	lea	rsi, [rsi]
	xor	eax, eax
	mov	rsp, rsp
	cmp	eax, dword ptr [rbp - 4]
	jg	.label_1967
	mov	edi, dword ptr [rbp - 4]
	lea	rsi, [rsi]
	call	close
	nop	
	mov	dword ptr [rbp - 0xe8], eax
.label_1967:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x48]
	nop	
	mov	qword ptr [rax + 0x18], 0
	lea	rdi, [rdi]
	jmp	.label_1978
.label_1972:
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0xae], 1
.label_1978:
	nop	
	jmp	.label_1911
.label_1911:
	jmp	.label_1913
.label_1913:
	mov	rax, qword ptr [rbp - 0x48]
	mov	rax, qword ptr [rax + 0x48]
	sub	rax, 1
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x48]
	mov	rbp, rbp
	mov	rcx, qword ptr [rcx + 0x38]
	mov	rbp, rbp
	movsx	edx, byte ptr [rcx + rax]
	lea	rsi, [rsi]
	cmp	edx, 0x2f
	jne	.label_1915
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x48]
	mov	rbp, rbp
	mov	rax, qword ptr [rax + 0x48]
	lea	rdi, [rdi]
	sub	rax, 1
	mov	qword ptr [rbp - 0x30], rax
	mov	rbp, rbp
	jmp	.label_1925
.label_1915:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x48]
	mov	rsp, rsp
	mov	rax, qword ptr [rax + 0x48]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x30], rax
.label_1925:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0xb8], rax
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x78]
	mov	ecx, dword ptr [rax + 0x48]
	lea	rdi, [rdi]
	and	ecx, 4
	cmp	ecx, 0
	je	.label_1936
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x78]
	nop	
	mov	rax, qword ptr [rax + 0x20]
	mov	rsp, rsp
	add	rax, qword ptr [rbp - 0xb8]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0xd8], rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0xd8]
	mov	rcx, rax
	mov	rbp, rbp
	add	rcx, 1
	mov	qword ptr [rbp - 0xd8], rcx
	mov	byte ptr [rax], 0x2f
	mov	rsp, rsp
	jmp	.label_1944
.label_1936:
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0xd8], 0
.label_1944:
	mov	rax, qword ptr [rbp - 0xb8]
	mov	rbp, rbp
	add	rax, 1
	mov	rbp, rbp
	mov	qword ptr [rbp - 0xb8], rax
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x78]
	mov	rax, qword ptr [rax + 0x30]
	sub	rax, qword ptr [rbp - 0xb8]
	mov	qword ptr [rbp - 0x80], rax
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x48]
	mov	rax, qword ptr [rax + 0x58]
	lea	rdi, [rdi]
	add	rax, 1
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x98], rax
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x51], 0
	mov	rbp, rbp
	mov	qword ptr [rbp - 0xa0], 0
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x68], 0
	mov	qword ptr [rbp - 0xd0], 0
.label_1917:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x48]
	lea	rdi, [rdi]
	cmp	qword ptr [rax + 0x18], 0
	mov	rsp, rsp
	je	.label_1957
	call	__errno_location
	lea	rdi, [rdi]
	mov	dword ptr [rax], 0
	mov	rax, qword ptr [rbp - 0x48]
	mov	rdi, qword ptr [rax + 0x18]
	call	readdir
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0xc0], rax
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0xc0], 0
	mov	rbp, rbp
	jne	.label_1968
	call	__errno_location
	cmp	dword ptr [rax], 0
	mov	rsp, rsp
	je	.label_1973
	call	__errno_location
	mov	cl, 1
	mov	rbp, rbp
	mov	edx, dword ptr [rax]
	mov	rax, qword ptr [rbp - 0x48]
	mov	dword ptr [rax + 0x40], edx
	nop	
	test	byte ptr [rbp - 0xad], 1
	mov	byte ptr [rbp - 0xc1], cl
	mov	rbp, rbp
	jne	.label_1974
	cmp	qword ptr [rbp - 0xd0], 0
	mov	rsp, rsp
	setne	al
	mov	byte ptr [rbp - 0xc1], al
.label_1974:
	mov	al, byte ptr [rbp - 0xc1]
	mov	rsp, rsp
	mov	ecx, 4
	mov	rsp, rsp
	mov	edx, 7
	test	al, 1
	cmovne	ecx, edx
	mov	si, cx
	mov	rdi, qword ptr [rbp - 0x48]
	mov	word ptr [rdi + 0x70], si
.label_1973:
	jmp	.label_1957
.label_1968:
	mov	rax, qword ptr [rbp - 0x78]
	mov	ecx, dword ptr [rax + 0x48]
	lea	rsi, [rsi]
	and	ecx, 0x20
	lea	rdi, [rdi]
	cmp	ecx, 0
	nop	
	jne	.label_1930
	mov	rax, qword ptr [rbp - 0xc0]
	movsx	ecx, byte ptr [rax + 0x13]
	cmp	ecx, 0x2e
	jne	.label_1930
	mov	rax, qword ptr [rbp - 0xc0]
	mov	rsp, rsp
	cmp	byte ptr [rax + 0x14], 0
	mov	rsp, rsp
	je	.label_1931
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0xc0]
	movsx	ecx, byte ptr [rax + 0x14]
	cmp	ecx, 0x2e
	jne	.label_1930
	mov	rax, qword ptr [rbp - 0xc0]
	cmp	byte ptr [rax + 0x15], 0
	jne	.label_1930
.label_1931:
	mov	rsp, rsp
	jmp	.label_1917
.label_1930:
	mov	rax, qword ptr [rbp - 0xc0]
	add	rax, 0x13
	nop	
	mov	rdi, rax
	call	strlen
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0xf8], rax
	mov	rdi, qword ptr [rbp - 0x78]
	mov	rax, qword ptr [rbp - 0xc0]
	mov	rbp, rbp
	add	rax, 0x13
	mov	rdx, qword ptr [rbp - 0xf8]
	mov	rsi, rax
	call	fts_alloc
	mov	qword ptr [rbp - 0xe0], rax
	nop	
	cmp	qword ptr [rbp - 0xe0], 0
	jne	.label_1949
	jmp	.label_1952
.label_1949:
	nop	
	mov	rax, qword ptr [rbp - 0xf8]
	cmp	rax, qword ptr [rbp - 0x80]
	jb	.label_1953
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x78]
	mov	rsp, rsp
	mov	rax, qword ptr [rax + 0x20]
	mov	qword ptr [rbp - 0x50], rax
	mov	rdi, qword ptr [rbp - 0x78]
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0xf8]
	mov	rsp, rsp
	add	rax, qword ptr [rbp - 0xb8]
	mov	rsp, rsp
	add	rax, 1
	mov	rsi, rax
	mov	rbp, rbp
	call	fts_palloc
	test	al, 1
	mov	rbp, rbp
	jne	.label_1977
	jmp	.label_1952
.label_1952:
	call	__errno_location
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 0x6c], ecx
	mov	rax, qword ptr [rbp - 0xe0]
	mov	rsp, rsp
	mov	rdi, rax
	call	free
	mov	rdi, qword ptr [rbp - 0xa0]
	nop	
	call	fts_lfree
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x48]
	mov	rdi, qword ptr [rax + 0x18]
	call	closedir
	mov	rdi, qword ptr [rbp - 0x48]
	mov	rbp, rbp
	mov	qword ptr [rdi + 0x18], 0
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x3c], eax
	mov	rax, qword ptr [rbp - 0x48]
	lea	rdi, [rdi]
	mov	word ptr [rax + 0x70], 7
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x78]
	mov	ecx, dword ptr [rax + 0x48]
	or	ecx, 0x2000
	mov	dword ptr [rax + 0x48], ecx
	mov	ecx, dword ptr [rbp - 0x6c]
	mov	dword ptr [rbp - 0x10c], ecx
	call	__errno_location
	nop	
	mov	ecx, dword ptr [rbp - 0x10c]
	mov	dword ptr [rax], ecx
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0xa8], 0
	jmp	.label_1924
.label_1977:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x50]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x78]
	cmp	rax, qword ptr [rcx + 0x20]
	mov	rsp, rsp
	je	.label_1929
	nop	
	mov	byte ptr [rbp - 0x51], 1
	mov	rax, qword ptr [rbp - 0x78]
	mov	ecx, dword ptr [rax + 0x48]
	mov	rbp, rbp
	and	ecx, 4
	cmp	ecx, 0
	je	.label_1914
	mov	rax, qword ptr [rbp - 0x78]
	mov	rax, qword ptr [rax + 0x20]
	lea	rdi, [rdi]
	add	rax, qword ptr [rbp - 0xb8]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0xd8], rax
.label_1914:
	jmp	.label_1929
.label_1929:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x78]
	mov	rax, qword ptr [rax + 0x30]
	sub	rax, qword ptr [rbp - 0xb8]
	mov	qword ptr [rbp - 0x80], rax
.label_1953:
	mov	rax, qword ptr [rbp - 0xb8]
	lea	rsi, [rsi]
	add	rax, qword ptr [rbp - 0xf8]
	mov	qword ptr [rbp - 0x60], rax
	mov	rax, qword ptr [rbp - 0x60]
	lea	rdi, [rdi]
	cmp	rax, qword ptr [rbp - 0xb8]
	jae	.label_1932
	mov	rax, qword ptr [rbp - 0xe0]
	mov	rdi, rax
	call	free
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0xa0]
	lea	rdi, [rdi]
	call	fts_lfree
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x48]
	mov	rdi, qword ptr [rax + 0x18]
	nop	
	call	closedir
	mov	rdi, qword ptr [rbp - 0x48]
	mov	rbp, rbp
	mov	qword ptr [rdi + 0x18], 0
	mov	dword ptr [rbp - 0x88], eax
	mov	rax, qword ptr [rbp - 0x48]
	mov	word ptr [rax + 0x70], 7
	mov	rax, qword ptr [rbp - 0x78]
	mov	ecx, dword ptr [rax + 0x48]
	or	ecx, 0x2000
	mov	rsp, rsp
	mov	dword ptr [rax + 0x48], ecx
	call	__errno_location
	mov	dword ptr [rax], 0x24
	mov	qword ptr [rbp - 0xa8], 0
	jmp	.label_1924
.label_1932:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x98]
	nop	
	mov	rcx, qword ptr [rbp - 0xe0]
	mov	qword ptr [rcx + 0x58], rax
	mov	rax, qword ptr [rbp - 0x78]
	mov	rax, qword ptr [rax]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0xe0]
	lea	rdi, [rdi]
	mov	qword ptr [rcx + 8], rax
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0xe0]
	lea	rdi, [rdi]
	mov	qword ptr [rcx + 0x48], rax
	mov	rax, qword ptr [rbp - 0xc0]
	mov	rax, qword ptr [rax]
	nop	
	mov	rcx, qword ptr [rbp - 0xe0]
	mov	qword ptr [rcx + 0x80], rax
	mov	rax, qword ptr [rbp - 0x78]
	mov	edx, dword ptr [rax + 0x48]
	lea	rdi, [rdi]
	and	edx, 4
	cmp	edx, 0
	je	.label_1955
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0xe0]
	mov	rsp, rsp
	mov	rax, qword ptr [rax + 0x38]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0xe0]
	nop	
	mov	qword ptr [rcx + 0x30], rax
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0xd8]
	mov	rax, qword ptr [rbp - 0xe0]
	add	rax, 0x108
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0xe0]
	mov	rcx, qword ptr [rcx + 0x60]
	mov	rbp, rbp
	add	rcx, 1
	mov	rsp, rsp
	mov	rsi, rax
	mov	rdx, rcx
	lea	rdi, [rdi]
	call	memmove
	jmp	.label_1976
.label_1955:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0xe0]
	add	rax, 0x108
	mov	rcx, qword ptr [rbp - 0xe0]
	mov	rbp, rbp
	mov	qword ptr [rcx + 0x30], rax
.label_1976:
	mov	rax, qword ptr [rbp - 0x78]
	mov	rbp, rbp
	cmp	qword ptr [rax + 0x40], 0
	je	.label_1980
	mov	rax, qword ptr [rbp - 0x78]
	mov	ecx, dword ptr [rax + 0x48]
	and	ecx, 0x400
	cmp	ecx, 0
	nop	
	je	.label_1912
.label_1980:
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x78]
	mov	rbp, rbp
	mov	eax, dword ptr [rdx + 0x48]
	and	eax, 0x10
	cmp	eax, 0
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0xaf], cl
	je	.label_1920
	mov	rbp, rbp
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x78]
	lea	rdi, [rdi]
	mov	eax, dword ptr [rdx + 0x48]
	and	eax, 8
	lea	rsi, [rsi]
	cmp	eax, 0
	mov	byte ptr [rbp - 0xaf], cl
	je	.label_1920
	lea	rdi, [rdi]
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0xc0]
	movzx	eax, byte ptr [rdx + 0x12]
	cmp	eax, 0
	nop	
	mov	byte ptr [rbp - 0xaf], cl
	nop	
	je	.label_1920
	mov	rax, qword ptr [rbp - 0xc0]
	movzx	ecx, byte ptr [rax + 0x12]
	nop	
	cmp	ecx, 4
	mov	rbp, rbp
	sete	dl
	mov	rbp, rbp
	xor	dl, 0xff
	mov	rsp, rsp
	mov	byte ptr [rbp - 0xaf], dl
.label_1920:
	mov	rsp, rsp
	mov	al, byte ptr [rbp - 0xaf]
	mov	rsp, rsp
	and	al, 1
	mov	byte ptr [rbp - 0x82], al
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0xe0]
	lea	rdi, [rdi]
	mov	word ptr [rcx + 0x70], 0xb
	mov	rcx, qword ptr [rbp - 0xe0]
	add	rcx, 0x78
	nop	
	mov	rdx, qword ptr [rbp - 0xc0]
	mov	rbp, rbp
	movzx	esi, byte ptr [rdx + 0x12]
	lea	rsi, [rsi]
	mov	rdi, rcx
	call	set_stat_type
	mov	rdi, qword ptr [rbp - 0xe0]
	mov	al, byte ptr [rbp - 0x82]
	xor	al, 0xff
	nop	
	and	al, 1
	nop	
	movzx	esi, al
	call	fts_set_stat_required
	jmp	.label_1958
.label_1912:
	lea	rdi, [rdi]
	xor	edx, edx
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x78]
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0xe0]
	lea	rsi, [rsi]
	call	fts_stat
	nop	
	mov	rsi, qword ptr [rbp - 0xe0]
	mov	word ptr [rsi + 0x70], ax
.label_1958:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0xe0]
	mov	qword ptr [rax + 0x10], 0
	nop	
	cmp	qword ptr [rbp - 0xa0], 0
	jne	.label_1963
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0xe0]
	nop	
	mov	qword ptr [rbp - 0x68], rax
	mov	rsp, rsp
	mov	qword ptr [rbp - 0xa0], rax
	jmp	.label_1966
.label_1963:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0xe0]
	mov	rcx, qword ptr [rbp - 0x68]
	mov	qword ptr [rcx + 0x10], rax
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0xe0]
	mov	qword ptr [rbp - 0x68], rax
.label_1966:
	cmp	qword ptr [rbp - 0xd0], 0x2710
	jne	.label_1943
	mov	rax, qword ptr [rbp - 0x78]
	lea	rdi, [rdi]
	cmp	qword ptr [rax + 0x40], 0
	jne	.label_1943
	mov	rdi, qword ptr [rbp - 0x48]
	mov	rbp, rbp
	mov	esi, dword ptr [rbp - 4]
	lea	rsi, [rsi]
	call	dirent_inode_sort_may_be_useful
	mov	rsp, rsp
	and	al, 1
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x11], al
.label_1943:
	mov	rax, qword ptr [rbp - 0xd0]
	add	rax, 1
	mov	qword ptr [rbp - 0xd0], rax
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	cmp	rax, qword ptr [rbp - 0xd0]
	ja	.label_1979
	mov	rsp, rsp
	jmp	.label_1933
.label_1979:
	nop	
	jmp	.label_1917
.label_1957:
	mov	rax, qword ptr [rbp - 0x48]
	lea	rdi, [rdi]
	cmp	qword ptr [rax + 0x18], 0
	je	.label_1918
	jmp	.label_1923
.label_1923:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x48]
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rax + 0x18]
	lea	rdi, [rdi]
	call	closedir
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x48]
	mov	qword ptr [rdi + 0x18], 0
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x40], eax
	jmp	.label_1918
.label_1918:
	lea	rdi, [rdi]
	jmp	.label_1933
.label_1933:
	test	byte ptr [rbp - 0x51], 1
	mov	rsp, rsp
	je	.label_1934
	mov	rdi, qword ptr [rbp - 0x78]
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0xa0]
	mov	rsp, rsp
	call	fts_padjust
.label_1934:
	mov	rax, qword ptr [rbp - 0x78]
	lea	rdi, [rdi]
	mov	ecx, dword ptr [rax + 0x48]
	lea	rdi, [rdi]
	and	ecx, 4
	cmp	ecx, 0
	je	.label_1941
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0xb8]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x78]
	cmp	rax, qword ptr [rcx + 0x30]
	je	.label_1946
	cmp	qword ptr [rbp - 0xd0], 0
	jne	.label_1948
.label_1946:
	mov	rax, qword ptr [rbp - 0xd8]
	add	rax, -1
	mov	rbp, rbp
	mov	qword ptr [rbp - 0xd8], rax
.label_1948:
	mov	rax, qword ptr [rbp - 0xd8]
	mov	byte ptr [rax], 0
.label_1941:
	lea	rsi, [rsi]
	test	byte ptr [rbp - 0xad], 1
	jne	.label_1951
	nop	
	test	byte ptr [rbp - 0xae], 1
	lea	rsi, [rsi]
	je	.label_1951
	cmp	dword ptr [rbp - 0xac], 1
	je	.label_1956
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0xd0], 0
	jne	.label_1951
.label_1956:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x48]
	cmp	qword ptr [rax + 0x58], 0
	jne	.label_1961
	mov	rdi, qword ptr [rbp - 0x78]
	lea	rdi, [rdi]
	call	restore_initial_cwd
	cmp	eax, 0
	mov	rsp, rsp
	jne	.label_1964
	jmp	.label_1951
.label_1961:
	mov	edx, 0xffffffff
	nop	
	movabs	rcx, OFFSET FLAT:.str.2_1
	mov	rdi, qword ptr [rbp - 0x78]
	mov	rax, qword ptr [rbp - 0x48]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rax + 8]
	mov	rbp, rbp
	call	fts_safe_changedir
	nop	
	cmp	eax, 0
	je	.label_1951
.label_1964:
	mov	rax, qword ptr [rbp - 0x48]
	nop	
	mov	word ptr [rax + 0x70], 7
	mov	rax, qword ptr [rbp - 0x78]
	mov	ecx, dword ptr [rax + 0x48]
	mov	rsp, rsp
	or	ecx, 0x2000
	mov	dword ptr [rax + 0x48], ecx
	mov	rdi, qword ptr [rbp - 0xa0]
	call	fts_lfree
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0xa8], 0
	jmp	.label_1924
.label_1951:
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0xd0], 0
	jne	.label_1975
	cmp	dword ptr [rbp - 0xac], 3
	mov	rsp, rsp
	jne	.label_1910
	mov	rax, qword ptr [rbp - 0x48]
	nop	
	movzx	ecx, word ptr [rax + 0x70]
	cmp	ecx, 4
	lea	rsi, [rsi]
	je	.label_1910
	mov	rax, qword ptr [rbp - 0x48]
	movzx	ecx, word ptr [rax + 0x70]
	cmp	ecx, 7
	lea	rdi, [rdi]
	je	.label_1910
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x48]
	mov	word ptr [rax + 0x70], 6
.label_1910:
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0xa0]
	mov	rsp, rsp
	call	fts_lfree
	mov	qword ptr [rbp - 0xa8], 0
	jmp	.label_1924
.label_1975:
	test	byte ptr [rbp - 0x11], 1
	je	.label_1928
	movabs	rax, OFFSET FLAT:fts_compare_ino
	mov	rcx, qword ptr [rbp - 0x78]
	mov	qword ptr [rcx + 0x40], rax
	mov	rdi, qword ptr [rbp - 0x78]
	mov	rsi, qword ptr [rbp - 0xa0]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0xd0]
	nop	
	call	fts_sort
	mov	rsp, rsp
	mov	qword ptr [rbp - 0xa0], rax
	mov	rax, qword ptr [rbp - 0x78]
	mov	rsp, rsp
	mov	qword ptr [rax + 0x40], 0
.label_1928:
	mov	rax, qword ptr [rbp - 0x78]
	cmp	qword ptr [rax + 0x40], 0
	je	.label_1942
	cmp	qword ptr [rbp - 0xd0], 1
	mov	rsp, rsp
	jbe	.label_1942
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x78]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0xa0]
	mov	rdx, qword ptr [rbp - 0xd0]
	nop	
	call	fts_sort
	mov	qword ptr [rbp - 0xa0], rax
.label_1942:
	mov	rax, qword ptr [rbp - 0xa0]
	mov	qword ptr [rbp - 0xa8], rax
.label_1924:
	mov	rax, qword ptr [rbp - 0xa8]
	mov	rsp, rsp
	add	rsp, 0x110
	pop	rbp
	lea	rdi, [rdi]
	ret	
	.section	.text
	.align	32
	#Procedure 0x421510

	.globl restore_initial_cwd
	.type restore_initial_cwd, @function
restore_initial_cwd:
	push	rbp
	mov	rbp, rsp
	mov	rsp, rsp
	sub	rsp, 0x30
	lea	rsi, [rsi]
	xor	eax, eax
	lea	rsi, [rsi]
	mov	cl, al
	mov	qword ptr [rbp - 0x10], rdi
	mov	rdi, qword ptr [rbp - 0x10]
	nop	
	mov	eax, dword ptr [rdi + 0x48]
	lea	rsi, [rsi]
	and	eax, 4
	cmp	eax, 0
	mov	rsp, rsp
	mov	byte ptr [rbp - 1], cl
	mov	rbp, rbp
	jne	.label_1985
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rax + 0x48]
	and	ecx, 0x200
	cmp	ecx, 0
	lea	rdi, [rdi]
	je	.label_1984
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rax + 0x48]
	mov	rbp, rbp
	and	ecx, 0x200
	mov	rsp, rsp
	cmp	ecx, 0
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x20], rdi
	nop	
	je	.label_1983
	lea	rsi, [rsi]
	mov	eax, 0xffffff9c
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x14], eax
	lea	rsi, [rsi]
	jmp	.label_1982
.label_1983:
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rax + 0x28]
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x14], ecx
.label_1982:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x14]
	lea	rdi, [rdi]
	mov	edx, 1
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x20]
	nop	
	mov	esi, eax
	call	cwd_advance_fd
	xor	eax, eax
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x2c], eax
	mov	rsp, rsp
	jmp	.label_1986
.label_1984:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rax + 0x48]
	mov	rbp, rbp
	and	ecx, 0x200
	nop	
	cmp	ecx, 0
	je	.label_1981
	mov	eax, 0xffffff9c
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x24], eax
	mov	rbp, rbp
	jmp	.label_1987
.label_1981:
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rax + 0x28]
	mov	dword ptr [rbp - 0x24], ecx
.label_1987:
	nop	
	mov	eax, dword ptr [rbp - 0x24]
	mov	edi, eax
	call	fchdir
	mov	dword ptr [rbp - 0x2c], eax
.label_1986:
	nop	
	mov	eax, dword ptr [rbp - 0x2c]
	nop	
	cmp	eax, 0
	lea	rsi, [rsi]
	setne	cl
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 1], cl
.label_1985:
	mov	rsp, rsp
	mov	al, byte ptr [rbp - 1]
	mov	rsp, rsp
	and	al, 1
	nop	
	movzx	ecx, al
	mov	dword ptr [rbp - 0x28], ecx
	mov	rdx, qword ptr [rbp - 0x10]
	add	rdx, 0x60
	mov	rdi, rdx
	call	fd_ring_clear
	mov	eax, dword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	add	rsp, 0x30
	pop	rbp
	mov	rsp, rsp
	ret	
	.section	.text
	.align	32
	#Procedure 0x421670

	.globl fts_load
	.type fts_load, @function
fts_load:
	push	rbp
	mov	rbp, rsp
	lea	rsi, [rsi]
	sub	rsp, 0x30
	mov	eax, 0x2f
	mov	qword ptr [rbp - 0x30], rdi
	mov	qword ptr [rbp - 8], rsi
	mov	rsi, qword ptr [rbp - 8]
	mov	rbp, rbp
	mov	rsi, qword ptr [rsi + 0x60]
	mov	rdi, qword ptr [rbp - 8]
	mov	qword ptr [rdi + 0x48], rsi
	mov	qword ptr [rbp - 0x20], rsi
	mov	rsi, qword ptr [rbp - 0x30]
	mov	rdi, qword ptr [rsi + 0x20]
	mov	rsi, qword ptr [rbp - 8]
	add	rsi, 0x108
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x20]
	add	rcx, 1
	mov	rsp, rsp
	mov	rdx, rcx
	mov	rsp, rsp
	mov	dword ptr [rbp - 0xc], eax
	call	memmove
	mov	rcx, qword ptr [rbp - 8]
	mov	rbp, rbp
	add	rcx, 0x108
	mov	rdi, rcx
	mov	rbp, rbp
	mov	esi, dword ptr [rbp - 0xc]
	lea	rdi, [rdi]
	call	strrchr
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x18], rax
	lea	rdi, [rdi]
	cmp	rax, 0
	lea	rdi, [rdi]
	je	.label_1988
	mov	rax, qword ptr [rbp - 0x18]
	nop	
	mov	rcx, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	add	rcx, 0x108
	cmp	rax, rcx
	mov	rsp, rsp
	jne	.label_1989
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	movsx	ecx, byte ptr [rax + 1]
	cmp	ecx, 0
	je	.label_1988
.label_1989:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x18]
	nop	
	add	rax, 1
	mov	qword ptr [rbp - 0x18], rax
	lea	rsi, [rsi]
	mov	rdi, rax
	call	strlen
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x20], rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 8]
	add	rax, 0x108
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rdi, qword ptr [rbp - 0x20]
	nop	
	add	rdi, 1
	mov	qword ptr [rbp - 0x28], rdi
	mov	rdi, rax
	mov	rdx, qword ptr [rbp - 0x28]
	call	memmove
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 8]
	mov	qword ptr [rdx + 0x60], rax
.label_1988:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x30]
	mov	rax, qword ptr [rax + 0x20]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	qword ptr [rcx + 0x38], rax
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 8]
	mov	qword ptr [rcx + 0x30], rax
	add	rsp, 0x30
	lea	rdi, [rdi]
	pop	rbp
	nop	
	ret	
	.section	.text
	.align	32
	#Procedure 0x4217d0

	.globl leaf_optimization
	.type leaf_optimization, @function
leaf_optimization:
	nop	
	push	rbp
	mov	rbp, rsp
	lea	rsi, [rsi]
	sub	rsp, 0x50
	mov	qword ptr [rbp - 0x28], rdi
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x34], esi
	mov	rdi, qword ptr [rbp - 0x28]
	call	filesystem_type
	mov	rdi, rax
	mov	rsp, rsp
	test	rax, rax
	mov	qword ptr [rbp - 0x20], rdi
	mov	rbp, rbp
	je	.label_2003
	jmp	.label_1991
.label_1991:
	mov	rax, qword ptr [rbp - 0x20]
	sub	rax, 0x6969
	nop	
	mov	qword ptr [rbp - 0x48], rax
	mov	rbp, rbp
	je	.label_1993
	lea	rdi, [rdi]
	jmp	.label_1998
.label_1998:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x20]
	sub	rax, 0x9fa0
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x40], rax
	lea	rsi, [rsi]
	je	.label_2002
	jmp	.label_1992
.label_1992:
	mov	rax, qword ptr [rbp - 0x20]
	sub	rax, 0x52654973
	mov	qword ptr [rbp - 8], rax
	mov	rbp, rbp
	je	.label_1994
	mov	rsp, rsp
	jmp	.label_1999
.label_1999:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x20]
	sub	rax, 0x5346414f
	mov	qword ptr [rbp - 0x30], rax
	je	.label_2001
	jmp	.label_1990
.label_1990:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x20]
	sub	rax, 0x58465342
	mov	qword ptr [rbp - 0x18], rax
	je	.label_1994
	lea	rsi, [rsi]
	jmp	.label_1996
.label_1996:
	mov	eax, 0xff534d42
	lea	rdi, [rdi]
	mov	ecx, eax
	nop	
	mov	rdx, qword ptr [rbp - 0x20]
	sub	rdx, rcx
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x10], rdx
	je	.label_2000
	lea	rdi, [rdi]
	jmp	.label_1997
.label_1994:
	mov	dword ptr [rbp - 0x38], 2
	lea	rsi, [rsi]
	jmp	.label_1995
.label_2003:
	lea	rdi, [rdi]
	jmp	.label_2001
.label_2001:
	lea	rsi, [rsi]
	jmp	.label_2000
.label_2000:
	jmp	.label_1993
.label_1993:
	mov	rbp, rbp
	jmp	.label_2002
.label_2002:
	mov	dword ptr [rbp - 0x38], 0
	nop	
	jmp	.label_1995
.label_1997:
	mov	dword ptr [rbp - 0x38], 1
.label_1995:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x38]
	add	rsp, 0x50
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x421920

	.globl enter_dir
	.type enter_dir, @function
enter_dir:
	lea	rsi, [rsi]
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	qword ptr [rbp - 0x18], rdi
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 8], rsi
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	mov	eax, dword ptr [rsi + 0x48]
	and	eax, 0x102
	cmp	eax, 0
	je	.label_2004
	mov	eax, 0x18
	mov	edi, eax
	mov	rcx, qword ptr [rbp - 8]
	mov	rsp, rsp
	add	rcx, 0x78
	nop	
	mov	qword ptr [rbp - 0x30], rcx
	mov	rsp, rsp
	call	malloc
	mov	qword ptr [rbp - 0x10], rax
	cmp	qword ptr [rbp - 0x10], 0
	nop	
	jne	.label_2010
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x19], 0
	mov	rsp, rsp
	jmp	.label_2005
.label_2010:
	mov	rax, qword ptr [rbp - 0x30]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	qword ptr [rcx], rax
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x30]
	mov	rax, qword ptr [rax + 8]
	nop	
	mov	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rcx + 8], rax
	nop	
	mov	rax, qword ptr [rbp - 8]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rcx + 0x10], rax
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	mov	rdi, qword ptr [rax + 0x58]
	mov	rax, qword ptr [rbp - 0x10]
	nop	
	mov	rsi, rax
	lea	rsi, [rsi]
	call	hash_insert
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x28], rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x28]
	nop	
	cmp	rax, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	je	.label_2009
	mov	rax, qword ptr [rbp - 0x10]
	mov	rdi, rax
	call	free
	nop	
	cmp	qword ptr [rbp - 0x28], 0
	jne	.label_2011
	mov	byte ptr [rbp - 0x19], 0
	jmp	.label_2005
.label_2011:
	mov	rax, qword ptr [rbp - 0x28]
	mov	rax, qword ptr [rax + 0x10]
	mov	rcx, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	mov	qword ptr [rcx], rax
	mov	rax, qword ptr [rbp - 8]
	mov	rbp, rbp
	mov	word ptr [rax + 0x70], 2
.label_2009:
	mov	rbp, rbp
	jmp	.label_2007
.label_2004:
	mov	rax, qword ptr [rbp - 0x18]
	nop	
	mov	rdi, qword ptr [rax + 0x58]
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 8]
	add	rax, 0x78
	mov	rsi, rax
	call	cycle_check
	test	al, 1
	jne	.label_2006
	jmp	.label_2008
.label_2006:
	mov	rax, qword ptr [rbp - 8]
	mov	rcx, qword ptr [rbp - 8]
	mov	qword ptr [rcx], rax
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 8]
	mov	word ptr [rax + 0x70], 2
.label_2008:
	jmp	.label_2007
.label_2007:
	mov	byte ptr [rbp - 0x19], 1
.label_2005:
	nop	
	mov	al, byte ptr [rbp - 0x19]
	lea	rdi, [rdi]
	and	al, 1
	movzx	eax, al
	add	rsp, 0x30
	mov	rsp, rsp
	pop	rbp
	mov	rbp, rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x421ab0

	.globl cwd_advance_fd
	.type cwd_advance_fd, @function
cwd_advance_fd:
	mov	rbp, rbp
	push	rbp
	mov	rbp, rsp
	lea	rdi, [rdi]
	sub	rsp, 0x20
	nop	
	mov	al, dl
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x18], rdi
	mov	dword ptr [rbp - 0x10], esi
	mov	rsp, rsp
	and	al, 1
	mov	byte ptr [rbp - 0x19], al
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x18]
	nop	
	mov	edx, dword ptr [rdi + 0x2c]
	mov	rbp, rbp
	mov	dword ptr [rbp - 4], edx
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 4]
	cmp	eax, dword ptr [rbp - 0x10]
	mov	rsp, rsp
	jne	.label_2015
	cmp	dword ptr [rbp - 4], -0x64
	mov	rsp, rsp
	je	.label_2015
	call	abort
.label_2015:
	mov	rsp, rsp
	jmp	.label_2013
.label_2013:
	nop	
	test	byte ptr [rbp - 0x19], 1
	je	.label_2012
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 0x60
	lea	rdi, [rdi]
	mov	esi, dword ptr [rbp - 4]
	mov	rdi, rax
	call	i_ring_push
	xor	esi, esi
	mov	dword ptr [rbp - 0x20], eax
	nop	
	cmp	esi, dword ptr [rbp - 0x20]
	jg	.label_2018
	mov	edi, dword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	call	close
	mov	dword ptr [rbp - 0xc], eax
.label_2018:
	mov	rsp, rsp
	jmp	.label_2016
.label_2012:
	mov	rax, qword ptr [rbp - 0x18]
	mov	ecx, dword ptr [rax + 0x48]
	lea	rsi, [rsi]
	and	ecx, 4
	mov	rsp, rsp
	cmp	ecx, 0
	jne	.label_2014
	mov	rsp, rsp
	xor	eax, eax
	nop	
	cmp	eax, dword ptr [rbp - 4]
	jg	.label_2017
	mov	rsp, rsp
	mov	edi, dword ptr [rbp - 4]
	call	close
	mov	rbp, rbp
	mov	dword ptr [rbp - 8], eax
.label_2017:
	jmp	.label_2014
.label_2014:
	lea	rdi, [rdi]
	jmp	.label_2016
.label_2016:
	mov	eax, dword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	dword ptr [rcx + 0x2c], eax
	mov	rbp, rbp
	add	rsp, 0x20
	pop	rbp
	lea	rsi, [rsi]
	ret	
	.section	.text
	.align	32
	#Procedure 0x421bc0

	.globl rpl_fts_set
	.type rpl_fts_set, @function
rpl_fts_set:
	mov	rsp, rsp
	push	rbp
	mov	rbp, rsp
	nop	
	sub	rsp, 0x20
	mov	qword ptr [rbp - 0x18], rdi
	nop	
	mov	qword ptr [rbp - 8], rsi
	mov	dword ptr [rbp - 0xc], edx
	mov	rbp, rbp
	cmp	dword ptr [rbp - 0xc], 0
	je	.label_2019
	mov	rsp, rsp
	cmp	dword ptr [rbp - 0xc], 1
	je	.label_2019
	cmp	dword ptr [rbp - 0xc], 2
	lea	rsi, [rsi]
	je	.label_2019
	cmp	dword ptr [rbp - 0xc], 3
	nop	
	je	.label_2019
	nop	
	cmp	dword ptr [rbp - 0xc], 4
	mov	rsp, rsp
	je	.label_2019
	call	__errno_location
	lea	rdi, [rdi]
	mov	dword ptr [rax], 0x16
	mov	dword ptr [rbp - 0x1c], 1
	lea	rsi, [rsi]
	jmp	.label_2020
.label_2019:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0xc]
	mov	cx, ax
	mov	rdx, qword ptr [rbp - 8]
	mov	word ptr [rdx + 0x74], cx
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x1c], 0
.label_2020:
	mov	eax, dword ptr [rbp - 0x1c]
	add	rsp, 0x20
	pop	rbp
	mov	rbp, rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x421c60
	.globl rpl_fts_children
	.type rpl_fts_children, @function
rpl_fts_children:

	push	rbp
	lea	rsi, [rsi]
	mov	rbp, rsp
	sub	rsp, 0x40
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x10], rdi
	mov	dword ptr [rbp - 8], esi
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 8], 0
	mov	rsp, rsp
	je	.label_2022
	nop	
	cmp	dword ptr [rbp - 8], 0x1000
	mov	rbp, rbp
	je	.label_2022
	nop	
	call	__errno_location
	mov	dword ptr [rax], 0x16
	mov	qword ptr [rbp - 0x20], 0
	lea	rsi, [rsi]
	jmp	.label_2024
.label_2022:
	mov	rax, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0x38], rax
	lea	rdi, [rdi]
	call	__errno_location
	mov	rsp, rsp
	mov	dword ptr [rax], 0
	nop	
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rax + 0x48]
	and	ecx, 0x2000
	mov	rbp, rbp
	cmp	ecx, 0
	je	.label_2023
	mov	qword ptr [rbp - 0x20], 0
	jmp	.label_2024
.label_2023:
	mov	rax, qword ptr [rbp - 0x38]
	nop	
	movzx	ecx, word ptr [rax + 0x70]
	cmp	ecx, 9
	jne	.label_2033
	mov	rax, qword ptr [rbp - 0x38]
	mov	rbp, rbp
	mov	rax, qword ptr [rax + 0x10]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x20], rax
	nop	
	jmp	.label_2024
.label_2033:
	mov	rax, qword ptr [rbp - 0x38]
	movzx	ecx, word ptr [rax + 0x70]
	nop	
	cmp	ecx, 1
	je	.label_2027
	mov	qword ptr [rbp - 0x20], 0
	mov	rbp, rbp
	jmp	.label_2024
.label_2027:
	mov	rax, qword ptr [rbp - 0x10]
	cmp	qword ptr [rax + 8], 0
	je	.label_2021
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rax + 8]
	nop	
	call	fts_lfree
.label_2021:
	cmp	dword ptr [rbp - 8], 0x1000
	jne	.label_2029
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rax + 0x48]
	or	ecx, 0x1000
	mov	rsp, rsp
	mov	dword ptr [rax + 0x48], ecx
	mov	rbp, rbp
	mov	dword ptr [rbp - 8], 2
	nop	
	jmp	.label_2034
.label_2029:
	mov	rsp, rsp
	mov	dword ptr [rbp - 8], 1
.label_2034:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x38]
	cmp	qword ptr [rax + 0x58], 0
	jne	.label_2028
	mov	rax, qword ptr [rbp - 0x38]
	mov	rax, qword ptr [rax + 0x30]
	lea	rdi, [rdi]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0x2f
	je	.label_2028
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rax + 0x48]
	mov	rsp, rsp
	and	ecx, 4
	cmp	ecx, 0
	lea	rsi, [rsi]
	je	.label_2025
.label_2028:
	mov	rdi, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	esi, dword ptr [rbp - 8]
	mov	rbp, rbp
	call	fts_build
	mov	rdi, qword ptr [rbp - 0x10]
	mov	qword ptr [rdi + 8], rax
	mov	qword ptr [rbp - 0x20], rax
	mov	rbp, rbp
	jmp	.label_2024
.label_2025:
	lea	rsi, [rsi]
	movabs	rsi, OFFSET FLAT:.str_3
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x10]
	call	diropen
	mov	dword ptr [rbp - 0x28], eax
	cmp	eax, 0
	nop	
	jge	.label_2030
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rax + 8], 0
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x20], 0
	jmp	.label_2024
.label_2030:
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x10]
	mov	esi, dword ptr [rbp - 8]
	call	fts_build
	mov	rdi, qword ptr [rbp - 0x10]
	mov	qword ptr [rdi + 8], rax
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	esi, dword ptr [rax + 0x48]
	and	esi, 0x200
	lea	rsi, [rsi]
	cmp	esi, 0
	mov	rsp, rsp
	je	.label_2031
	mov	rbp, rbp
	mov	edx, 1
	mov	rdi, qword ptr [rbp - 0x10]
	nop	
	mov	esi, dword ptr [rbp - 0x28]
	call	cwd_advance_fd
	jmp	.label_2032
.label_2031:
	mov	edi, dword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	call	fchdir
	cmp	eax, 0
	je	.label_2026
	mov	rsp, rsp
	call	__errno_location
	mov	rsp, rsp
	mov	ecx, dword ptr [rax]
	nop	
	mov	dword ptr [rbp - 0x2c], ecx
	lea	rdi, [rdi]
	mov	edi, dword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	call	close
	mov	rsp, rsp
	mov	ecx, dword ptr [rbp - 0x2c]
	mov	dword ptr [rbp - 0x24], eax
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x14], ecx
	mov	rsp, rsp
	call	__errno_location
	lea	rsi, [rsi]
	mov	ecx, dword ptr [rbp - 0x14]
	mov	dword ptr [rax], ecx
	mov	qword ptr [rbp - 0x20], 0
	jmp	.label_2024
.label_2026:
	mov	edi, dword ptr [rbp - 0x28]
	mov	rbp, rbp
	call	close
	mov	dword ptr [rbp - 4], eax
.label_2032:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x20], rax
.label_2024:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x20]
	add	rsp, 0x40
	mov	rbp, rbp
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x421f40

	.globl AD_hash
	.type AD_hash, @function
AD_hash:
	push	rbp
	mov	rbp, rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 0x10], rdi
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x18], rsi
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 8], rsi
	mov	rsi, qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	rax, qword ptr [rsi + 8]
	xor	ecx, ecx
	mov	edx, ecx
	div	qword ptr [rbp - 0x18]
	mov	rax, rdx
	lea	rdi, [rdi]
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x421f80

	.globl AD_compare
	.type AD_compare, @function
AD_compare:
	mov	rbp, rbp
	push	rbp
	mov	rbp, rsp
	mov	rbp, rbp
	xor	eax, eax
	mov	cl, al
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsi, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x28], rsi
	mov	rsi, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rsi + 8]
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x28]
	cmp	rsi, qword ptr [rdi + 8]
	mov	byte ptr [rbp - 0x19], cl
	lea	rdi, [rdi]
	jne	.label_2035
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax]
	nop	
	mov	rcx, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rcx]
	sete	dl
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x19], dl
.label_2035:
	mov	al, byte ptr [rbp - 0x19]
	nop	
	and	al, 1
	movzx	eax, al
	lea	rsi, [rsi]
	pop	rbp
	lea	rsi, [rsi]
	ret	
	.section	.text
	.align	32
	#Procedure 0x422000

	.globl filesystem_type
	.type filesystem_type, @function
filesystem_type:
	mov	rsp, rsp
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0xc0
	mov	qword ptr [rbp - 0xc0], rdi
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x2c], esi
	nop	
	mov	rdi, qword ptr [rbp - 0xc0]
	mov	rdi, qword ptr [rdi + 0x50]
	mov	qword ptr [rbp - 0x18], rdi
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rdi, qword ptr [rdi + 0x50]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0xb0], rdi
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x18]
	mov	esi, dword ptr [rdi + 0x48]
	and	esi, 0x200
	mov	rbp, rbp
	cmp	esi, 0
	jne	.label_2036
	mov	qword ptr [rbp - 8], 0
	lea	rsi, [rsi]
	jmp	.label_2043
.label_2036:
	cmp	qword ptr [rbp - 0xb0], 0
	jne	.label_2047
	mov	eax, 0xd
	mov	edi, eax
	lea	rdi, [rdi]
	xor	eax, eax
	mov	rsp, rsp
	mov	esi, eax
	movabs	rdx, OFFSET FLAT:dev_type_hash
	movabs	rcx, OFFSET FLAT:dev_type_compare
	lea	rdi, [rdi]
	movabs	r8, OFFSET FLAT:free
	mov	rbp, rbp
	call	hash_initialize
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	mov	qword ptr [rcx + 0x50], rax
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0xb0], rax
.label_2047:
	cmp	qword ptr [rbp - 0xb0], 0
	mov	rsp, rsp
	je	.label_2039
	lea	rsi, [rsi]
	lea	rax, [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0xc0]
	mov	rcx, qword ptr [rcx + 0x78]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x28], rcx
	mov	rdi, qword ptr [rbp - 0xb0]
	mov	rsi, rax
	call	hash_lookup
	nop	
	mov	qword ptr [rbp - 0x10], rax
	cmp	qword ptr [rbp - 0x10], 0
	je	.label_2037
	mov	rax, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 8], rax
	lea	rsi, [rsi]
	jmp	.label_2043
.label_2037:
	nop	
	jmp	.label_2039
.label_2039:
	cmp	dword ptr [rbp - 0x2c], 0
	lea	rdi, [rdi]
	jl	.label_2049
	nop	
	lea	rsi, [rbp - 0xa8]
	mov	edi, dword ptr [rbp - 0x2c]
	lea	rsi, [rsi]
	call	fstatfs
	cmp	eax, 0
	nop	
	je	.label_2042
.label_2049:
	mov	qword ptr [rbp - 8], 0
	jmp	.label_2043
.label_2042:
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0xb0], 0
	mov	rbp, rbp
	je	.label_2038
	mov	eax, 0x10
	mov	rbp, rbp
	mov	edi, eax
	lea	rsi, [rsi]
	call	malloc
	mov	qword ptr [rbp - 0xb8], rax
	cmp	qword ptr [rbp - 0xb8], 0
	lea	rsi, [rsi]
	je	.label_2041
	nop	
	mov	rax, qword ptr [rbp - 0xc0]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax + 0x78]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0xb8]
	mov	qword ptr [rcx], rax
	mov	rax, qword ptr [rbp - 0xa8]
	mov	rcx, qword ptr [rbp - 0xb8]
	lea	rsi, [rsi]
	mov	qword ptr [rcx + 8], rax
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0xb0]
	mov	rax, qword ptr [rbp - 0xb8]
	mov	rsi, rax
	lea	rdi, [rdi]
	call	hash_insert
	mov	qword ptr [rbp - 0x10], rax
	cmp	qword ptr [rbp - 0x10], 0
	lea	rsi, [rsi]
	je	.label_2046
	mov	rsp, rsp
	jmp	.label_2044
.label_2044:
	mov	rax, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rbp - 0xb8]
	je	.label_2040
	call	abort
.label_2040:
	nop	
	jmp	.label_2045
.label_2045:
	jmp	.label_2048
.label_2046:
	mov	rax, qword ptr [rbp - 0xb8]
	mov	rdi, rax
	lea	rsi, [rsi]
	call	free
.label_2048:
	jmp	.label_2041
.label_2041:
	jmp	.label_2038
.label_2038:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0xa8]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 8], rax
.label_2043:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0xc0
	nop	
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x422270

	.globl dev_type_hash
	.type dev_type_hash, @function
dev_type_hash:
	push	rbp
	mov	rbp, rsp
	mov	rsp, rsp
	mov	qword ptr [rbp - 8], rdi
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x18], rsi
	mov	rsi, qword ptr [rbp - 8]
	nop	
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rsi]
	nop	
	mov	qword ptr [rbp - 0x20], rsi
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x20]
	xor	ecx, ecx
	mov	edx, ecx
	lea	rsi, [rsi]
	div	qword ptr [rbp - 0x18]
	mov	rax, rdx
	pop	rbp
	mov	rbp, rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4222c0

	.globl dev_type_compare
	.type dev_type_compare, @function
dev_type_compare:
	push	rbp
	mov	rbp, rsp
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x18], rdi
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x20], rsi
	mov	rsi, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x10], rsi
	nop	
	mov	rsi, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	mov	qword ptr [rbp - 8], rsi
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	rsi, qword ptr [rsi]
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 8]
	mov	rbp, rbp
	cmp	rsi, qword ptr [rdi]
	lea	rdi, [rdi]
	sete	al
	lea	rsi, [rsi]
	and	al, 1
	nop	
	movzx	eax, al
	mov	rbp, rbp
	pop	rbp
	mov	rsp, rsp
	ret	
	.section	.text
	.align	32
	#Procedure 0x422320

	.globl set_stat_type
	.type set_stat_type, @function
set_stat_type:
	lea	rdi, [rdi]
	push	rbp
	mov	rbp, rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 0x20], rdi
	nop	
	mov	dword ptr [rbp - 4], esi
	mov	rsp, rsp
	dec	esi
	lea	rdi, [rdi]
	mov	edi, esi
	sub	esi, 0xb
	nop	
	mov	qword ptr [rbp - 0x10], rdi
	mov	dword ptr [rbp - 0x14], esi
	mov	rsp, rsp
	ja	.label_2050
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_2052]]
	jmp	rcx
.label_2475:
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x24], 0x6000
	jmp	.label_2051
.label_2473:
	mov	dword ptr [rbp - 0x24], 0x2000
	mov	rsp, rsp
	jmp	.label_2051
.label_2474:
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x24], 0x4000
	mov	rbp, rbp
	jmp	.label_2051
.label_2472:
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x24], 0x1000
	mov	rbp, rbp
	jmp	.label_2051
.label_2477:
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x24], 0xa000
	mov	rsp, rsp
	jmp	.label_2051
.label_2476:
	mov	dword ptr [rbp - 0x24], 0x8000
	jmp	.label_2051
.label_2478:
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x24], 0xc000
	jmp	.label_2051
.label_2050:
	mov	dword ptr [rbp - 0x24], 0
.label_2051:
	mov	eax, dword ptr [rbp - 0x24]
	nop	
	mov	rcx, qword ptr [rbp - 0x20]
	nop	
	mov	dword ptr [rcx + 0x18], eax
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4223f0

	.globl dirent_inode_sort_may_be_useful
	.type dirent_inode_sort_may_be_useful, @function
dirent_inode_sort_may_be_useful:
	nop	
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	qword ptr [rbp - 0x30], rdi
	mov	dword ptr [rbp - 0x24], esi
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x30]
	mov	rbp, rbp
	call	filesystem_type
	mov	rdi, rax
	sub	rax, 0x6969
	nop	
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x20], rax
	mov	rsp, rsp
	je	.label_2055
	lea	rdi, [rdi]
	jmp	.label_2056
.label_2056:
	mov	rax, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	sub	rax, 0x1021994
	mov	rsp, rsp
	mov	qword ptr [rbp - 8], rax
	je	.label_2055
	jmp	.label_2057
.label_2057:
	lea	rsi, [rsi]
	mov	eax, 0xff534d42
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x10]
	sub	rdx, rcx
	mov	qword ptr [rbp - 0x18], rdx
	nop	
	jne	.label_2053
	jmp	.label_2055
.label_2055:
	mov	byte ptr [rbp - 0x25], 0
	nop	
	jmp	.label_2054
.label_2053:
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x25], 1
.label_2054:
	mov	rsp, rsp
	mov	al, byte ptr [rbp - 0x25]
	and	al, 1
	nop	
	movzx	eax, al
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4224a0

	.globl fts_padjust
	.type fts_padjust, @function
fts_padjust:
	lea	rdi, [rdi]
	push	rbp
	mov	rbp, rsp
	mov	rbp, rbp
	mov	qword ptr [rbp - 8], rdi
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x28], rsi
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rsi + 0x20]
	mov	qword ptr [rbp - 0x10], rsi
	nop	
	mov	rsi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rsi + 8]
	mov	qword ptr [rbp - 0x20], rsi
.label_2061:
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x20], 0
	nop	
	je	.label_2063
	nop	
	jmp	.label_2058
.label_2058:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x20]
	mov	rax, qword ptr [rax + 0x30]
	mov	rcx, qword ptr [rbp - 0x20]
	nop	
	add	rcx, 0x108
	lea	rsi, [rsi]
	cmp	rax, rcx
	lea	rsi, [rsi]
	je	.label_2059
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	mov	rcx, qword ptr [rcx + 0x30]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x20]
	nop	
	mov	rdx, qword ptr [rdx + 0x38]
	sub	rcx, rdx
	mov	rbp, rbp
	add	rax, rcx
	mov	rcx, qword ptr [rbp - 0x20]
	mov	qword ptr [rcx + 0x30], rax
.label_2059:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	qword ptr [rcx + 0x38], rax
	lea	rsi, [rsi]
	jmp	.label_2067
.label_2067:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x20]
	mov	rax, qword ptr [rax + 0x10]
	mov	qword ptr [rbp - 0x20], rax
	jmp	.label_2061
.label_2063:
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x20], rax
.label_2062:
	mov	rax, qword ptr [rbp - 0x20]
	nop	
	cmp	qword ptr [rax + 0x58], 0
	jl	.label_2060
	lea	rdi, [rdi]
	jmp	.label_2068
.label_2068:
	mov	rax, qword ptr [rbp - 0x20]
	mov	rax, qword ptr [rax + 0x30]
	mov	rcx, qword ptr [rbp - 0x20]
	nop	
	add	rcx, 0x108
	cmp	rax, rcx
	je	.label_2065
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rcx + 0x30]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rdx, qword ptr [rdx + 0x38]
	mov	rbp, rbp
	sub	rcx, rdx
	add	rax, rcx
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	mov	qword ptr [rcx + 0x30], rax
.label_2065:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	qword ptr [rcx + 0x38], rax
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x20]
	cmp	qword ptr [rax + 0x10], 0
	je	.label_2066
	mov	rax, qword ptr [rbp - 0x20]
	mov	rax, qword ptr [rax + 0x10]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_2064
.label_2066:
	mov	rax, qword ptr [rbp - 0x20]
	mov	rax, qword ptr [rax + 8]
	nop	
	mov	qword ptr [rbp - 0x18], rax
.label_2064:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x20], rax
	jmp	.label_2062
.label_2060:
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x422630

	.globl fts_compare_ino
	.type fts_compare_ino, @function
fts_compare_ino:
	push	rbp
	mov	rbp, rbp
	mov	rbp, rsp
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x18], rsi
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rsi]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rsi + 0x80]
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rdi, qword ptr [rdi]
	lea	rdi, [rdi]
	cmp	rsi, qword ptr [rdi + 0x80]
	jae	.label_2069
	mov	eax, 0xffffffff
	nop	
	mov	dword ptr [rbp - 0xc], eax
	nop	
	jmp	.label_2070
.label_2069:
	xor	eax, eax
	mov	ecx, 1
	nop	
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rdx]
	mov	rdx, qword ptr [rdx + 0x80]
	nop	
	mov	rsi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rsi]
	mov	rsp, rsp
	cmp	rdx, qword ptr [rsi + 0x80]
	nop	
	cmovb	eax, ecx
	mov	dword ptr [rbp - 0xc], eax
.label_2070:
	mov	eax, dword ptr [rbp - 0xc]
	nop	
	pop	rbp
	lea	rdi, [rdi]
	ret	
	.section	.text
	.align	32
	#Procedure 0x4226c0

	.globl fts_compar
	.type fts_compar, @function
fts_compar:
	push	rbp
	lea	rsi, [rsi]
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x20], rsi
	mov	rsi, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x18], rsi
	nop	
	mov	rsi, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 8], rsi
	nop	
	mov	rsi, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rsi]
	mov	rbp, rbp
	mov	rsi, qword ptr [rsi + 0x50]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rsi + 0x40]
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x28], rsi
	mov	rsp, rsp
	mov	rsi, rax
	mov	rax, qword ptr [rbp - 0x28]
	call	rax
	add	rsp, 0x30
	nop	
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x422730

	.globl rpl_mbrtowc
	.type rpl_mbrtowc, @function
rpl_mbrtowc:
	push	rbp
	mov	rsp, rsp
	mov	rbp, rsp
	lea	rsi, [rsi]
	sub	rsp, 0x40
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x30], rsi
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x28], rdx
	mov	qword ptr [rbp - 0x40], rcx
	cmp	qword ptr [rbp - 0x10], 0
	lea	rsi, [rsi]
	jne	.label_2071
	lea	rax, [rbp - 0x14]
	mov	qword ptr [rbp - 0x10], rax
.label_2071:
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x30]
	mov	rdx, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x40]
	nop	
	call	mbrtowc
	mov	rcx, -2
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x20], rax
	mov	rbp, rbp
	cmp	rcx, qword ptr [rbp - 0x20]
	ja	.label_2072
	nop	
	cmp	qword ptr [rbp - 0x28], 0
	lea	rdi, [rdi]
	je	.label_2072
	xor	edi, edi
	lea	rdi, [rdi]
	call	hard_locale
	mov	rbp, rbp
	test	al, 1
	lea	rsi, [rsi]
	jne	.label_2072
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x30]
	lea	rdi, [rdi]
	mov	cl, byte ptr [rax]
	mov	byte ptr [rbp - 0x31], cl
	mov	rbp, rbp
	movzx	edx, byte ptr [rbp - 0x31]
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	dword ptr [rax], edx
	mov	rsp, rsp
	mov	qword ptr [rbp - 8], 1
	jmp	.label_2073
.label_2072:
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 8], rax
.label_2073:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 8]
	mov	rbp, rbp
	add	rsp, 0x40
	lea	rsi, [rsi]
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x422820

	.globl free_permission_context
	.type free_permission_context, @function
free_permission_context:
	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x422830

	.globl get_permissions
	.type get_permissions, @function
get_permissions:
	lea	rdi, [rdi]
	push	rbp
	mov	rsp, rsp
	mov	rbp, rsp
	sub	rsp, 0x20
	xor	eax, eax
	mov	rbp, rbp
	mov	r8d, 4
	mov	r9d, r8d
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x18], rdi
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x20], esi
	mov	dword ptr [rbp - 4], edx
	mov	qword ptr [rbp - 0x10], rcx
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	rdi, rcx
	mov	esi, eax
	lea	rdi, [rdi]
	mov	rdx, r9
	mov	dword ptr [rbp - 0x1c], eax
	lea	rdi, [rdi]
	call	memset
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 4]
	mov	rcx, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	dword ptr [rcx], eax
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x1c]
	add	rsp, 0x20
	nop	
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4228a0

	.globl chmod_or_fchmod
	.type chmod_or_fchmod, @function
chmod_or_fchmod:
	push	rbp
	mov	rbp, rsp
	lea	rdi, [rdi]
	sub	rsp, 0x20
	nop	
	mov	qword ptr [rbp - 0x18], rdi
	mov	rsp, rsp
	mov	dword ptr [rbp - 0xc], esi
	mov	rbp, rbp
	mov	dword ptr [rbp - 4], edx
	mov	rbp, rbp
	cmp	dword ptr [rbp - 0xc], -1
	mov	rsp, rsp
	je	.label_2074
	mov	edi, dword ptr [rbp - 0xc]
	mov	rsp, rsp
	mov	esi, dword ptr [rbp - 4]
	call	fchmod
	mov	rsp, rsp
	mov	dword ptr [rbp - 8], eax
	lea	rdi, [rdi]
	jmp	.label_2075
.label_2074:
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x18]
	mov	esi, dword ptr [rbp - 4]
	lea	rdi, [rdi]
	call	chmod
	mov	dword ptr [rbp - 8], eax
.label_2075:
	mov	eax, dword ptr [rbp - 8]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x422910

	.globl set_permissions
	.type set_permissions, @function
set_permissions:
	nop	
	push	rbp
	mov	rbp, rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	nop	
	mov	qword ptr [rbp - 0x20], rdi
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x10], rsi
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 4], edx
	mov	rbp, rbp
	mov	byte ptr [rbp - 5], 0
	mov	byte ptr [rbp - 0x15], 0
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x28], 0
	mov	byte ptr [rbp - 6], 1
	test	byte ptr [rbp - 6], 1
	je	.label_2078
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x10]
	mov	esi, dword ptr [rbp - 4]
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x20]
	nop	
	mov	edx, dword ptr [rax]
	lea	rsi, [rsi]
	call	chmod_or_fchmod
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x28], eax
	mov	rsp, rsp
	cmp	dword ptr [rbp - 0x28], 0
	nop	
	je	.label_2081
	mov	dword ptr [rbp - 0x30], 0xffffffff
	jmp	.label_2077
.label_2081:
	mov	rbp, rbp
	jmp	.label_2078
.label_2078:
	test	byte ptr [rbp - 0x15], 1
	nop	
	je	.label_2076
	lea	rdi, [rdi]
	test	byte ptr [rbp - 6], 1
	nop	
	jne	.label_2076
	cmp	dword ptr [rbp - 0x28], 0
	je	.label_2079
	mov	rbp, rbp
	call	__errno_location
	lea	rsi, [rsi]
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 0x14], ecx
	jmp	.label_2080
.label_2079:
	nop	
	xor	eax, eax
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x14], eax
	mov	rbp, rbp
	jmp	.label_2080
.label_2080:
	mov	eax, dword ptr [rbp - 0x14]
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x2c], eax
	mov	rdi, qword ptr [rbp - 0x10]
	mov	esi, dword ptr [rbp - 4]
	mov	rcx, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	mov	edx, dword ptr [rcx]
	call	chmod_or_fchmod
	nop	
	mov	dword ptr [rbp - 0x28], eax
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x2c], 0
	lea	rsi, [rsi]
	je	.label_2082
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x2c]
	mov	dword ptr [rbp - 0x24], eax
	call	__errno_location
	nop	
	mov	ecx, dword ptr [rbp - 0x24]
	lea	rsi, [rsi]
	mov	dword ptr [rax], ecx
	mov	dword ptr [rbp - 0x28], 0xffffffff
.label_2082:
	jmp	.label_2076
.label_2076:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x30], eax
.label_2077:
	nop	
	mov	eax, dword ptr [rbp - 0x30]
	add	rsp, 0x30
	mov	rsp, rsp
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x422a50

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
	#Procedure 0x422a70

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
.label_2087:
	mov	rax, qword ptr [rbp - 0x48]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x38]
	cmp	qword ptr [rcx + rax*8], 0
	je	.label_2083
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
	jne	.label_2084
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x48]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x38]
	mov	rdi, qword ptr [rcx + rax*8]
	call	strlen
	cmp	rax, qword ptr [rbp - 0x40]
	mov	rsp, rsp
	jne	.label_2088
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x48]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x20], rax
	lea	rsi, [rsi]
	jmp	.label_2090
.label_2088:
	cmp	qword ptr [rbp - 0x30], -1
	jne	.label_2093
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x48]
	mov	qword ptr [rbp - 0x30], rax
	mov	rsp, rsp
	jmp	.label_2085
.label_2093:
	cmp	qword ptr [rbp - 8], 0
	lea	rdi, [rdi]
	je	.label_2089
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
	je	.label_2091
.label_2089:
	nop	
	mov	byte ptr [rbp - 0x21], 1
.label_2091:
	lea	rsi, [rsi]
	jmp	.label_2085
.label_2085:
	mov	rbp, rbp
	jmp	.label_2094
.label_2094:
	mov	rsp, rsp
	jmp	.label_2084
.label_2084:
	nop	
	jmp	.label_2086
.label_2086:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x48]
	add	rax, 1
	mov	qword ptr [rbp - 0x48], rax
	mov	rsp, rsp
	jmp	.label_2087
.label_2083:
	test	byte ptr [rbp - 0x21], 1
	je	.label_2092
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x20], -2
	jmp	.label_2090
.label_2092:
	mov	rax, qword ptr [rbp - 0x30]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x20], rax
.label_2090:
	mov	rax, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	add	rsp, 0x50
	nop	
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x422c20

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
	jne	.label_2095
	movabs	rdi, OFFSET FLAT:.str_18
	call	gettext
	mov	qword ptr [rbp - 0x38], rax
	nop	
	jmp	.label_2096
.label_2095:
	nop	
	movabs	rdi, OFFSET FLAT:.str.1_14
	mov	rbp, rbp
	call	gettext
	mov	qword ptr [rbp - 0x38], rax
.label_2096:
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
	#Procedure 0x422d00

	.globl argmatch_valid
	.type argmatch_valid, @function
argmatch_valid:
	mov	rsp, rsp
	push	rbp
	mov	rbp, rsp
	nop	
	sub	rsp, 0x50
	nop	
	movabs	rax, OFFSET FLAT:.str.2_9
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
.label_2099:
	mov	rax, qword ptr [rbp - 0x30]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	cmp	qword ptr [rcx + rax*8], 0
	lea	rsi, [rsi]
	je	.label_2100
	nop	
	cmp	qword ptr [rbp - 0x30], 0
	je	.label_2101
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
	je	.label_2098
.label_2101:
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
	movabs	rsi, OFFSET FLAT:.str.3_6
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
	jmp	.label_2102
.label_2098:
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
	movabs	rsi, OFFSET FLAT:.str.4_3
	mov	rdi, qword ptr [rbp - 0x50]
	mov	rdx, rax
	mov	al, 0
	call	fprintf
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0xc], eax
.label_2102:
	jmp	.label_2097
.label_2097:
	mov	rax, qword ptr [rbp - 0x30]
	lea	rsi, [rsi]
	add	rax, 1
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_2099
.label_2100:
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
	#Procedure 0x422eb0

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
	jl	.label_2103
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x20], rax
	jmp	.label_2104
.label_2103:
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
.label_2104:
	nop	
	mov	rax, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	add	rsp, 0x40
	mov	rbp, rbp
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x422f70
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
.label_2107:
	nop	
	mov	rax, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x20]
	cmp	qword ptr [rcx + rax*8], 0
	mov	rsp, rsp
	je	.label_2109
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
	jne	.label_2106
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	mov	rax, qword ptr [rcx + rax*8]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_2105
.label_2106:
	lea	rdi, [rdi]
	jmp	.label_2108
.label_2108:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	add	rax, 1
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_2107
.label_2109:
	nop	
	mov	qword ptr [rbp - 8], 0
.label_2105:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x423040
	.globl rotl64
	.type rotl64, @function
rotl64:

	mov	rsp, rsp
	push	rbp
	mov	rbp, rsp
	mov	eax, 0x40
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x10], rdi
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 4], esi
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	esi, dword ptr [rbp - 4]
	mov	ecx, esi
	shl	rdi, cl
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x10]
	sub	eax, dword ptr [rbp - 4]
	mov	rbp, rbp
	mov	eax, eax
	mov	rbp, rbp
	mov	ecx, eax
	nop	
	shr	rdx, cl
	or	rdi, rdx
	mov	rax, rdi
	lea	rdi, [rdi]
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x423090
	.globl rotr64
	.type rotr64, @function
rotr64:

	push	rbp
	mov	rbp, rsp
	lea	rdi, [rdi]
	mov	eax, 0x40
	mov	qword ptr [rbp - 0x10], rdi
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 4], esi
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	esi, dword ptr [rbp - 4]
	mov	rsp, rsp
	mov	ecx, esi
	nop	
	shr	rdi, cl
	mov	rdx, qword ptr [rbp - 0x10]
	sub	eax, dword ptr [rbp - 4]
	lea	rsi, [rsi]
	mov	eax, eax
	mov	ecx, eax
	mov	rbp, rbp
	shl	rdx, cl
	or	rdi, rdx
	mov	rax, rdi
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4230e0
	.globl rotl32
	.type rotl32, @function
rotl32:

	lea	rdi, [rdi]
	push	rbp
	mov	rbp, rsp
	mov	eax, 0x20
	mov	dword ptr [rbp - 4], edi
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 8], esi
	lea	rdi, [rdi]
	mov	esi, dword ptr [rbp - 4]
	mov	ecx, dword ptr [rbp - 8]
	mov	rsp, rsp
	shl	esi, cl
	mov	edi, dword ptr [rbp - 4]
	mov	rsp, rsp
	sub	eax, dword ptr [rbp - 8]
	nop	
	mov	ecx, eax
	lea	rsi, [rsi]
	shr	edi, cl
	lea	rdi, [rdi]
	or	esi, edi
	mov	rbp, rbp
	mov	eax, esi
	nop	
	pop	rbp
	mov	rbp, rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x423130
	.globl rotr32
	.type rotr32, @function
rotr32:

	nop
	push	rbp
	mov	rbp, rsp
	mov	eax, 0x20
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 8], edi
	mov	rsp, rsp
	mov	dword ptr [rbp - 4], esi
	lea	rsi, [rsi]
	mov	esi, dword ptr [rbp - 8]
	mov	ecx, dword ptr [rbp - 4]
	mov	rsp, rsp
	shr	esi, cl
	mov	edi, dword ptr [rbp - 8]
	sub	eax, dword ptr [rbp - 4]
	mov	ecx, eax
	shl	edi, cl
	or	esi, edi
	mov	eax, esi
	mov	rsp, rsp
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x423170
	.globl rotl_sz
	.type rotl_sz, @function
rotl_sz:

	push	rbp
	mov	rbp, rbp
	mov	rbp, rsp
	mov	eax, 0x40
	mov	rbp, rbp
	mov	ecx, eax
	mov	qword ptr [rbp - 8], rdi
	nop	
	mov	dword ptr [rbp - 0xc], esi
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 8]
	mov	eax, dword ptr [rbp - 0xc]
	lea	rdi, [rdi]
	mov	edx, eax
	mov	qword ptr [rbp - 0x18], rcx
	mov	rcx, rdx
	shl	rdi, cl
	mov	rdx, qword ptr [rbp - 8]
	movsxd	r8, dword ptr [rbp - 0xc]
	lea	rdi, [rdi]
	mov	r9, qword ptr [rbp - 0x18]
	sub	r9, r8
	mov	rcx, r9
	shr	rdx, cl
	mov	rbp, rbp
	or	rdi, rdx
	mov	rax, rdi
	nop	
	pop	rbp
	mov	rsp, rsp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4231d0

	.globl rotr_sz
	.type rotr_sz, @function
rotr_sz:
	push	rbp
	mov	rbp, rsp
	mov	eax, 0x40
	nop	
	mov	ecx, eax
	mov	qword ptr [rbp - 0x18], rdi
	mov	dword ptr [rbp - 4], esi
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x18]
	mov	eax, dword ptr [rbp - 4]
	mov	edx, eax
	mov	qword ptr [rbp - 0x10], rcx
	mov	rsp, rsp
	mov	rcx, rdx
	lea	rdi, [rdi]
	shr	rdi, cl
	nop	
	mov	rdx, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	movsxd	r8, dword ptr [rbp - 4]
	mov	r9, qword ptr [rbp - 0x10]
	sub	r9, r8
	nop	
	mov	rcx, r9
	shl	rdx, cl
	mov	rsp, rsp
	or	rdi, rdx
	mov	rsp, rsp
	mov	rax, rdi
	lea	rsi, [rsi]
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x423230
	.globl rotl16
	.type rotl16, @function
rotl16:

	push	rbp
	mov	rbp, rsp
	mov	ax, di
	lea	rsi, [rsi]
	mov	edi, 0x10
	mov	rsp, rsp
	mov	word ptr [rbp - 6], ax
	mov	rbp, rbp
	mov	dword ptr [rbp - 4], esi
	movzx	esi, word ptr [rbp - 6]
	mov	rbp, rbp
	mov	ecx, dword ptr [rbp - 4]
	mov	rbp, rbp
	shl	esi, cl
	movzx	edx, word ptr [rbp - 6]
	sub	edi, dword ptr [rbp - 4]
	mov	ecx, edi
	sar	edx, cl
	or	esi, edx
	and	esi, 0xffff
	mov	ax, si
	movzx	eax, ax
	mov	rbp, rbp
	pop	rbp
	nop	
	ret	
	.section	.text
	.align	32
	#Procedure 0x423280
	.globl rotr16
	.type rotr16, @function
rotr16:

	mov	rbp, rbp
	push	rbp
	mov	rbp, rsp
	mov	ax, di
	lea	rdi, [rdi]
	mov	edi, 0x10
	mov	rsp, rsp
	mov	word ptr [rbp - 2], ax
	mov	dword ptr [rbp - 8], esi
	lea	rsi, [rsi]
	movzx	esi, word ptr [rbp - 2]
	mov	ecx, dword ptr [rbp - 8]
	lea	rdi, [rdi]
	sar	esi, cl
	nop	
	movzx	edx, word ptr [rbp - 2]
	sub	edi, dword ptr [rbp - 8]
	mov	ecx, edi
	shl	edx, cl
	or	esi, edx
	lea	rdi, [rdi]
	and	esi, 0xffff
	mov	ax, si
	movzx	eax, ax
	pop	rbp
	mov	rbp, rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4232d0
	.globl rotl8
	.type rotl8, @function
rotl8:

	mov	rbp, rbp
	push	rbp
	nop	
	mov	rbp, rsp
	mov	rsp, rsp
	mov	al, dil
	mov	rsp, rsp
	mov	edi, 8
	mov	byte ptr [rbp - 5], al
	nop	
	mov	dword ptr [rbp - 4], esi
	lea	rdi, [rdi]
	movzx	esi, byte ptr [rbp - 5]
	mov	ecx, dword ptr [rbp - 4]
	lea	rdi, [rdi]
	shl	esi, cl
	lea	rsi, [rsi]
	movzx	edx, byte ptr [rbp - 5]
	mov	rsp, rsp
	sub	edi, dword ptr [rbp - 4]
	lea	rdi, [rdi]
	mov	ecx, edi
	sar	edx, cl
	or	esi, edx
	and	esi, 0xff
	nop	
	mov	al, sil
	mov	rbp, rbp
	movzx	eax, al
	pop	rbp
	lea	rdi, [rdi]
	ret	
	.section	.text
	.align	32
	#Procedure 0x423330
	.globl rotr8
	.type rotr8, @function
rotr8:

	push	rbp
	mov	rsp, rsp
	mov	rbp, rsp
	nop	
	mov	al, dil
	mov	rsp, rsp
	mov	edi, 8
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 1], al
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 8], esi
	movzx	esi, byte ptr [rbp - 1]
	mov	ecx, dword ptr [rbp - 8]
	sar	esi, cl
	movzx	edx, byte ptr [rbp - 1]
	sub	edi, dword ptr [rbp - 8]
	nop	
	mov	ecx, edi
	shl	edx, cl
	lea	rdi, [rdi]
	or	esi, edx
	lea	rsi, [rsi]
	and	esi, 0xff
	mov	al, sil
	movzx	eax, al
	pop	rbp
	mov	rsp, rsp
	ret	
	.section	.text
	.align	32
	#Procedure 0x423380

	.globl c_strcasecmp
	.type c_strcasecmp, @function
c_strcasecmp:
	mov	rsp, rsp
	push	rbp
	lea	rdi, [rdi]
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	qword ptr [rbp - 0x28], rdi
	mov	qword ptr [rbp - 0x30], rsi
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x30]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x18], rsi
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	cmp	rsi, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	jne	.label_2110
	mov	dword ptr [rbp - 4], 0
	lea	rsi, [rsi]
	jmp	.label_2113
.label_2110:
	mov	rbp, rbp
	jmp	.label_2111
.label_2111:
	mov	rax, qword ptr [rbp - 0x10]
	movzx	edi, byte ptr [rax]
	mov	rsp, rsp
	call	c_tolower
	lea	rsi, [rsi]
	mov	cl, al
	mov	byte ptr [rbp - 0x19], cl
	mov	rdx, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	movzx	edi, byte ptr [rdx]
	call	c_tolower
	nop	
	mov	cl, al
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x1a], cl
	lea	rdi, [rdi]
	movzx	eax, byte ptr [rbp - 0x19]
	cmp	eax, 0
	jne	.label_2112
	jmp	.label_2114
.label_2112:
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 1
	nop	
	mov	qword ptr [rbp - 0x10], rax
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 1
	mov	qword ptr [rbp - 0x18], rax
	lea	rsi, [rsi]
	movzx	eax, byte ptr [rbp - 0x19]
	movzx	ecx, byte ptr [rbp - 0x1a]
	cmp	eax, ecx
	lea	rdi, [rdi]
	je	.label_2111
.label_2114:
	movzx	eax, byte ptr [rbp - 0x19]
	mov	rsp, rsp
	movzx	ecx, byte ptr [rbp - 0x1a]
	mov	rsp, rsp
	sub	eax, ecx
	mov	dword ptr [rbp - 4], eax
.label_2113:
	mov	eax, dword ptr [rbp - 4]
	nop	
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x423470

	.globl close_stream
	.type close_stream, @function
close_stream:
	mov	rsp, rsp
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 0x10], rdi
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x10]
	nop	
	call	__fpending
	cmp	rax, 0
	mov	rbp, rbp
	setne	cl
	and	cl, 1
	mov	byte ptr [rbp - 0x16], cl
	nop	
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	call	ferror_unlocked
	nop	
	cmp	eax, 0
	setne	cl
	mov	rbp, rbp
	and	cl, 1
	mov	byte ptr [rbp - 1], cl
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x10]
	call	rpl_fclose
	mov	rsp, rsp
	cmp	eax, 0
	setne	cl
	mov	rbp, rbp
	and	cl, 1
	mov	byte ptr [rbp - 0x15], cl
	nop	
	test	byte ptr [rbp - 1], 1
	lea	rsi, [rsi]
	jne	.label_2117
	test	byte ptr [rbp - 0x15], 1
	je	.label_2116
	test	byte ptr [rbp - 0x16], 1
	lea	rsi, [rsi]
	jne	.label_2117
	mov	rbp, rbp
	call	__errno_location
	lea	rdi, [rdi]
	cmp	dword ptr [rax], 9
	je	.label_2116
.label_2117:
	nop	
	test	byte ptr [rbp - 0x15], 1
	mov	rsp, rsp
	jne	.label_2115
	call	__errno_location
	mov	dword ptr [rax], 0
.label_2115:
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x14], 0xffffffff
	jmp	.label_2118
.label_2116:
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x14], 0
.label_2118:
	nop	
	mov	eax, dword ptr [rbp - 0x14]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x423550

	.globl cycle_check_init
	.type cycle_check_init, @function
cycle_check_init:
	push	rbp
	mov	rbp, rsp
	mov	rsp, rsp
	mov	qword ptr [rbp - 8], rdi
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 8]
	mov	qword ptr [rdi + 0x10], 0
	mov	rdi, qword ptr [rbp - 8]
	mov	dword ptr [rdi + 0x18], 0x95f616
	mov	rsp, rsp
	pop	rbp
	nop	
	ret	
	.section	.text
	.align	32
	#Procedure 0x423580

	.globl cycle_check
	.type cycle_check, @function
cycle_check:
	nop	
	push	rbp
	mov	rbp, rsp
	mov	rbp, rbp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 8], rsi
	mov	rsi, qword ptr [rbp - 0x10]
	cmp	dword ptr [rsi + 0x18], 0x95f616
	nop	
	jne	.label_2119
	mov	rsp, rsp
	jmp	.label_2121
.label_2119:
	movabs	rdi, OFFSET FLAT:.str_19
	movabs	rsi, OFFSET FLAT:.str.1_15
	lea	rsi, [rsi]
	mov	edx, 0x3c
	lea	rdi, [rdi]
	movabs	rcx, OFFSET FLAT:__PRETTY_FUNCTION__.cycle_check
	mov	rbp, rbp
	call	__assert_fail
.label_2121:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x10]
	cmp	qword ptr [rax + 0x10], 0
	je	.label_2123
	mov	rax, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax + 8]
	mov	rcx, qword ptr [rbp - 0x10]
	nop	
	cmp	rax, qword ptr [rcx]
	lea	rdi, [rdi]
	jne	.label_2123
	mov	rax, qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rcx + 8]
	jne	.label_2123
	mov	byte ptr [rbp - 0x11], 1
	jmp	.label_2120
.label_2123:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x10]
	nop	
	mov	rcx, qword ptr [rax + 0x10]
	lea	rsi, [rsi]
	add	rcx, 1
	mov	rbp, rbp
	mov	qword ptr [rax + 0x10], rcx
	mov	rbp, rbp
	mov	rdi, rcx
	call	is_zero_or_power_of_two
	lea	rdi, [rdi]
	test	al, 1
	jne	.label_2124
	mov	rsp, rsp
	jmp	.label_2125
.label_2124:
	mov	rax, qword ptr [rbp - 0x10]
	cmp	qword ptr [rax + 0x10], 0
	jne	.label_2122
	mov	byte ptr [rbp - 0x11], 1
	nop	
	jmp	.label_2120
.label_2122:
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	qword ptr [rcx + 8], rax
	mov	rax, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax + 8]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	qword ptr [rcx], rax
.label_2125:
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x11], 0
.label_2120:
	nop	
	mov	al, byte ptr [rbp - 0x11]
	and	al, 1
	nop	
	movzx	eax, al
	add	rsp, 0x20
	pop	rbp
	mov	rsp, rsp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4236d0

	.globl is_zero_or_power_of_two
	.type is_zero_or_power_of_two, @function
is_zero_or_power_of_two:
	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 8]
	sub	rax, 1
	and	rdi, rax
	mov	rbp, rbp
	cmp	rdi, 0
	lea	rdi, [rdi]
	sete	cl
	and	cl, 1
	mov	rsp, rsp
	movzx	eax, cl
	pop	rbp
	mov	rsp, rsp
	ret	
	.section	.text
	.align	32
	#Procedure 0x423710

	.globl opendir_safer
	.type opendir_safer, @function
opendir_safer:
	lea	rdi, [rdi]
	push	rbp
	mov	rbp, rsp
	mov	rbp, rbp
	sub	rsp, 0x40
	mov	qword ptr [rbp - 0x20], rdi
	mov	rdi, qword ptr [rbp - 0x20]
	call	opendir
	mov	rsp, rsp
	mov	qword ptr [rbp - 8], rax
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 8], 0
	nop	
	je	.label_2127
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	call	dirfd
	xor	ecx, ecx
	mov	dword ptr [rbp - 0x34], eax
	nop	
	cmp	ecx, dword ptr [rbp - 0x34]
	mov	rbp, rbp
	jg	.label_2126
	lea	rsi, [rsi]
	cmp	dword ptr [rbp - 0x34], 2
	lea	rdi, [rdi]
	jg	.label_2126
	mov	esi, 0x406
	mov	edx, 3
	mov	edi, dword ptr [rbp - 0x34]
	mov	rsp, rsp
	mov	al, 0
	call	rpl_fcntl
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x30], eax
	cmp	dword ptr [rbp - 0x30], 0
	jge	.label_2129
	lea	rsi, [rsi]
	call	__errno_location
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 0xc], ecx
	mov	qword ptr [rbp - 0x28], 0
	mov	rbp, rbp
	jmp	.label_2128
.label_2129:
	lea	rsi, [rsi]
	mov	edi, dword ptr [rbp - 0x30]
	call	fdopendir
	mov	qword ptr [rbp - 0x28], rax
	call	__errno_location
	lea	rdi, [rdi]
	mov	edi, dword ptr [rax]
	mov	dword ptr [rbp - 0xc], edi
	cmp	qword ptr [rbp - 0x28], 0
	jne	.label_2130
	mov	edi, dword ptr [rbp - 0x30]
	call	close
	mov	dword ptr [rbp - 0x14], eax
.label_2130:
	nop	
	jmp	.label_2128
.label_2128:
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 8]
	nop	
	call	closedir
	nop	
	mov	ecx, dword ptr [rbp - 0xc]
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x2c], eax
	mov	dword ptr [rbp - 0x10], ecx
	call	__errno_location
	lea	rdi, [rdi]
	mov	ecx, dword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	dword ptr [rax], ecx
	nop	
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 8], rax
.label_2126:
	jmp	.label_2127
.label_2127:
	nop	
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x40
	pop	rbp
	lea	rsi, [rsi]
	ret	
	.section	.text
	.align	32
	#Procedure 0x423840

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
	#Procedure 0x423880
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
	#Procedure 0x4238d0

	.globl hard_locale
	.type hard_locale, @function
hard_locale:
	nop	
	push	rbp
	lea	rdi, [rdi]
	mov	rbp, rsp
	sub	rsp, 0x10
	xor	eax, eax
	mov	rsp, rsp
	mov	esi, eax
	nop	
	mov	dword ptr [rbp - 0xc], edi
	mov	byte ptr [rbp - 0xd], 1
	mov	edi, dword ptr [rbp - 0xc]
	call	setlocale
	mov	rsp, rsp
	mov	qword ptr [rbp - 8], rax
	cmp	qword ptr [rbp - 8], 0
	nop	
	je	.label_2132
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	eax, OFFSET FLAT:.str_20
	mov	rsp, rsp
	mov	esi, eax
	call	strcmp
	lea	rdi, [rdi]
	cmp	eax, 0
	je	.label_2133
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 8]
	mov	eax, OFFSET FLAT:.str.1_16
	lea	rsi, [rsi]
	mov	esi, eax
	call	strcmp
	cmp	eax, 0
	jne	.label_2131
.label_2133:
	mov	byte ptr [rbp - 0xd], 0
.label_2131:
	jmp	.label_2132
.label_2132:
	mov	al, byte ptr [rbp - 0xd]
	lea	rdi, [rdi]
	and	al, 1
	nop	
	movzx	eax, al
	add	rsp, 0x10
	lea	rsi, [rsi]
	pop	rbp
	lea	rsi, [rsi]
	ret	
	.section	.text
	.align	32
	#Procedure 0x423970

	.globl hash_pjw
	.type hash_pjw, @function
hash_pjw:
	lea	rsi, [rsi]
	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x20], 0
	mov	rsi, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 8], rsi
.label_2135:
	mov	rax, qword ptr [rbp - 8]
	cmp	byte ptr [rax], 0
	lea	rdi, [rdi]
	je	.label_2134
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 8]
	movsx	rax, byte ptr [rax]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x20]
	shl	rcx, 9
	mov	rdx, qword ptr [rbp - 0x20]
	shr	rdx, 0x37
	or	rcx, rdx
	lea	rdi, [rdi]
	add	rax, rcx
	mov	qword ptr [rbp - 0x20], rax
	mov	rax, qword ptr [rbp - 8]
	add	rax, 1
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_2135
.label_2134:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	xor	ecx, ecx
	mov	edx, ecx
	lea	rdi, [rdi]
	div	qword ptr [rbp - 0x18]
	mov	rax, rdx
	mov	rbp, rbp
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x423a00

	.globl i_ring_init
	.type i_ring_init, @function
i_ring_init:
	mov	rsp, rsp
	push	rbp
	lea	rdi, [rdi]
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0xc], esi
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 8]
	mov	byte ptr [rdi + 0x1c], 1
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 8]
	mov	rbp, rbp
	mov	dword ptr [rdi + 0x14], 0
	mov	rdi, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	mov	dword ptr [rdi + 0x18], 0
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x10], 0
.label_2137:
	mov	rsp, rsp
	cmp	dword ptr [rbp - 0x10], 4
	mov	rbp, rbp
	jge	.label_2136
	mov	eax, dword ptr [rbp - 0xc]
	movsxd	rcx, dword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 8]
	mov	dword ptr [rdx + rcx*4], eax
	mov	eax, dword ptr [rbp - 0x10]
	add	eax, 1
	mov	dword ptr [rbp - 0x10], eax
	jmp	.label_2137
.label_2136:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0xc]
	mov	rcx, qword ptr [rbp - 8]
	mov	dword ptr [rcx + 0x10], eax
	pop	rbp
	nop	
	ret	
	.section	.text
	.align	32
	#Procedure 0x423a90

	.globl i_ring_empty
	.type i_ring_empty, @function
i_ring_empty:
	push	rbp
	mov	rbp, rsp
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 8], rdi
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 8]
	mov	al, byte ptr [rdi + 0x1c]
	and	al, 1
	movzx	eax, al
	mov	rsp, rsp
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x423ab0

	.globl i_ring_push
	.type i_ring_push, @function
i_ring_push:
	push	rbp
	lea	rsi, [rsi]
	mov	rbp, rsp
	mov	qword ptr [rbp - 0x10], rdi
	mov	dword ptr [rbp - 0x14], esi
	mov	rdi, qword ptr [rbp - 0x10]
	mov	esi, dword ptr [rdi + 0x14]
	mov	rdi, qword ptr [rbp - 0x10]
	mov	al, byte ptr [rdi + 0x1c]
	mov	rbp, rbp
	xor	al, 0xff
	and	al, 1
	lea	rsi, [rsi]
	movzx	ecx, al
	mov	rbp, rbp
	add	esi, ecx
	and	esi, 3
	mov	rbp, rbp
	mov	dword ptr [rbp - 8], esi
	mov	ecx, dword ptr [rbp - 8]
	mov	edi, ecx
	mov	rdx, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rdx + rdi*4]
	mov	dword ptr [rbp - 4], ecx
	mov	ecx, dword ptr [rbp - 0x14]
	mov	esi, dword ptr [rbp - 8]
	mov	edx, esi
	nop	
	mov	rdi, qword ptr [rbp - 0x10]
	mov	dword ptr [rdi + rdx*4], ecx
	mov	ecx, dword ptr [rbp - 8]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	dword ptr [rdx + 0x14], ecx
	lea	rdi, [rdi]
	mov	ecx, dword ptr [rbp - 8]
	nop	
	mov	rdx, qword ptr [rbp - 0x10]
	cmp	ecx, dword ptr [rdx + 0x18]
	mov	rsp, rsp
	jne	.label_2138
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rax + 0x18]
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x10]
	mov	dl, byte ptr [rax + 0x1c]
	lea	rsi, [rsi]
	xor	dl, 0xff
	lea	rsi, [rsi]
	and	dl, 1
	movzx	esi, dl
	add	ecx, esi
	and	ecx, 3
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x10]
	mov	dword ptr [rax + 0x18], ecx
.label_2138:
	nop	
	mov	rax, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	byte ptr [rax + 0x1c], 0
	nop	
	mov	eax, dword ptr [rbp - 4]
	mov	rsp, rsp
	pop	rbp
	mov	rsp, rsp
	ret	
	.section	.text
	.align	32
	#Procedure 0x423b80

	.globl i_ring_pop
	.type i_ring_pop, @function
i_ring_pop:
	nop	
	push	rbp
	lea	rdi, [rdi]
	mov	rbp, rsp
	lea	rsi, [rsi]
	sub	rsp, 0x10
	mov	rbp, rbp
	mov	qword ptr [rbp - 8], rdi
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 8]
	mov	rbp, rbp
	call	i_ring_empty
	lea	rsi, [rsi]
	test	al, 1
	lea	rsi, [rsi]
	jne	.label_2140
	mov	rsp, rsp
	jmp	.label_2142
.label_2140:
	lea	rsi, [rsi]
	call	abort
.label_2142:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 8]
	mov	ecx, dword ptr [rax + 0x14]
	mov	eax, ecx
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 8]
	mov	ecx, dword ptr [rdx + rax*4]
	mov	dword ptr [rbp - 0xc], ecx
	mov	rax, qword ptr [rbp - 8]
	mov	ecx, dword ptr [rax + 0x10]
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 8]
	mov	esi, dword ptr [rax + 0x14]
	mov	rbp, rbp
	mov	eax, esi
	mov	rdx, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	dword ptr [rdx + rax*4], ecx
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 8]
	mov	ecx, dword ptr [rax + 0x14]
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	cmp	ecx, dword ptr [rax + 0x18]
	lea	rdi, [rdi]
	jne	.label_2139
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 8]
	mov	byte ptr [rax + 0x1c], 1
	jmp	.label_2141
.label_2139:
	mov	rax, qword ptr [rbp - 8]
	mov	ecx, dword ptr [rax + 0x14]
	add	ecx, 4
	mov	rbp, rbp
	sub	ecx, 1
	lea	rdi, [rdi]
	and	ecx, 3
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 8]
	nop	
	mov	dword ptr [rax + 0x14], ecx
.label_2141:
	mov	eax, dword ptr [rbp - 0xc]
	lea	rdi, [rdi]
	add	rsp, 0x10
	nop	
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x423c60

	.globl locale_charset
	.type locale_charset, @function
locale_charset:
	mov	rsp, rsp
	push	rbp
	mov	rsp, rsp
	mov	rbp, rsp
	mov	rbp, rbp
	sub	rsp, 0x10
	mov	edi, 0xe
	lea	rdi, [rdi]
	call	rpl_nl_langinfo
	nop	
	mov	qword ptr [rbp - 8], rax
	cmp	qword ptr [rbp - 8], 0
	jne	.label_2144
	lea	rsi, [rsi]
	movabs	rax, OFFSET FLAT:.str_0
	nop	
	mov	qword ptr [rbp - 8], rax
.label_2144:
	mov	rax, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	movsx	ecx, byte ptr [rax]
	nop	
	cmp	ecx, 0
	mov	rsp, rsp
	jne	.label_2143
	lea	rsi, [rsi]
	movabs	rax, OFFSET FLAT:.str.1_17
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 8], rax
.label_2143:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 8]
	nop	
	add	rsp, 0x10
	nop	
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x423ce0

	.globl openat_safer
	.type openat_safer, @function
openat_safer:
	nop	
	push	rbp
	nop	
	mov	rbp, rsp
	lea	rdi, [rdi]
	sub	rsp, 0x1d0
	test	al, al
	movaps	xmmword ptr [rbp - 0x30], xmm7
	lea	rsi, [rsi]
	movaps	xmmword ptr [rbp - 0x100], xmm6
	lea	rsi, [rsi]
	movaps	xmmword ptr [rbp - 0x90], xmm5
	mov	rsp, rsp
	movaps	xmmword ptr [rbp - 0xb0], xmm4
	lea	rdi, [rdi]
	movaps	xmmword ptr [rbp - 0xf0], xmm3
	mov	rsp, rsp
	movaps	xmmword ptr [rbp - 0xc0], xmm2
	movaps	xmmword ptr [rbp - 0x80], xmm1
	movaps	xmmword ptr [rbp - 0xd0], xmm0
	mov	dword ptr [rbp - 0x110], edi
	mov	qword ptr [rbp - 8], r9
	mov	qword ptr [rbp - 0x108], r8
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x118], rcx
	mov	dword ptr [rbp - 0x34], edx
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x40], rsi
	mov	rbp, rbp
	je	.label_2145
	lea	rsi, [rsi]
	movaps	xmm0, xmmword ptr [rbp - 0xd0]
	movaps	xmmword ptr [rbp - 0x1a0], xmm0
	movaps	xmm1, xmmword ptr [rbp - 0x80]
	lea	rsi, [rsi]
	movaps	xmmword ptr [rbp - 0x190], xmm1
	movaps	xmm2, xmmword ptr [rbp - 0xc0]
	movaps	xmmword ptr [rbp - 0x180], xmm2
	movaps	xmm3, xmmword ptr [rbp - 0xf0]
	nop	
	movaps	xmmword ptr [rbp - 0x170], xmm3
	movaps	xmm4, xmmword ptr [rbp - 0xb0]
	lea	rsi, [rsi]
	movaps	xmmword ptr [rbp - 0x160], xmm4
	mov	rbp, rbp
	movaps	xmm5, xmmword ptr [rbp - 0x90]
	movaps	xmmword ptr [rbp - 0x150], xmm5
	lea	rsi, [rsi]
	movaps	xmm6, xmmword ptr [rbp - 0x100]
	mov	rsp, rsp
	movaps	xmmword ptr [rbp - 0x140], xmm6
	lea	rdi, [rdi]
	movaps	xmm7, xmmword ptr [rbp - 0x30]
	movaps	xmmword ptr [rbp - 0x130], xmm7
.label_2145:
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x1a8], rax
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x108]
	mov	qword ptr [rbp - 0x1b0], rcx
	mov	rdx, qword ptr [rbp - 0x118]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x1b8], rdx
	mov	rbp, rbp
	mov	esi, dword ptr [rbp - 0x34]
	mov	rdi, qword ptr [rbp - 0x40]
	nop	
	mov	r8d, dword ptr [rbp - 0x110]
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x44], r8d
	mov	qword ptr [rbp - 0x98], rdi
	mov	dword ptr [rbp - 0xd4], esi
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x10c], 0
	mov	esi, dword ptr [rbp - 0xd4]
	and	esi, 0x40
	lea	rsi, [rsi]
	cmp	esi, 0
	je	.label_2147
	lea	rax, [rbp - 0x70]
	mov	rcx, rax
	mov	rsp, rsp
	lea	rdx, [rbp - 0x1d0]
	mov	qword ptr [rcx + 0x10], rdx
	mov	rsp, rsp
	lea	rdx, [rbp + 0x10]
	lea	rdi, [rdi]
	mov	qword ptr [rcx + 8], rdx
	lea	rsi, [rsi]
	mov	dword ptr [rcx + 4], 0x30
	nop	
	mov	dword ptr [rcx], 0x18
	mov	rsp, rsp
	mov	esi, dword ptr [rbp - 0x70]
	cmp	esi, 0x28
	mov	qword ptr [rbp - 0x50], rax
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x14], esi
	lea	rsi, [rsi]
	ja	.label_2146
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x14]
	mov	rsp, rsp
	movsxd	rcx, eax
	nop	
	mov	rdx, qword ptr [rbp - 0x50]
	mov	rbp, rbp
	add	rcx, qword ptr [rdx + 0x10]
	lea	rsi, [rsi]
	add	eax, 8
	mov	rbp, rbp
	mov	dword ptr [rdx], eax
	mov	qword ptr [rbp - 0x58], rcx
	mov	rsp, rsp
	jmp	.label_2148
.label_2146:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rax + 8]
	lea	rsi, [rsi]
	mov	rdx, rcx
	add	rcx, 8
	mov	qword ptr [rax + 8], rcx
	mov	qword ptr [rbp - 0x58], rdx
.label_2148:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x58]
	lea	rcx, [rbp - 0x70]
	lea	rsi, [rsi]
	mov	edx, dword ptr [rax]
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x10c], edx
	mov	qword ptr [rbp - 0x10], rcx
.label_2147:
	mov	edi, dword ptr [rbp - 0x44]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x98]
	mov	edx, dword ptr [rbp - 0xd4]
	mov	ecx, dword ptr [rbp - 0x10c]
	xor	eax, eax
	mov	r8b, al
	mov	al, r8b
	call	openat
	mov	edi, eax
	call	fd_safer
	add	rsp, 0x1d0
	pop	rbp
	lea	rdi, [rdi]
	ret	
	.section	.text
	.align	32
	#Procedure 0x423f50

	.globl randint_new
	.type randint_new, @function
randint_new:
	push	rbp
	mov	rbp, rbp
	mov	rbp, rsp
	lea	rdi, [rdi]
	sub	rsp, 0x10
	nop	
	mov	eax, 0x18
	nop	
	mov	ecx, eax
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, rcx
	mov	rbp, rbp
	call	xmalloc
	mov	qword ptr [rbp - 0x10], rax
	mov	rax, qword ptr [rbp - 8]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rcx], rax
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rax + 0x10], 0
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rax + 8], 0
	nop	
	mov	rax, qword ptr [rbp - 0x10]
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x423fb0

	.globl randint_all_new
	.type randint_all_new, @function
randint_all_new:
	lea	rsi, [rsi]
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 0x10], rdi
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x20], rsi
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x20]
	call	randread_new
	mov	qword ptr [rbp - 0x18], rax
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x18], 0
	nop	
	je	.label_2150
	mov	rdi, qword ptr [rbp - 0x18]
	call	randint_new
	mov	qword ptr [rbp - 8], rax
	jmp	.label_2149
.label_2150:
	xor	eax, eax
	lea	rdi, [rdi]
	mov	ecx, eax
	mov	qword ptr [rbp - 8], rcx
	lea	rsi, [rsi]
	jmp	.label_2149
.label_2149:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x20
	mov	rbp, rbp
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x424020
	.globl randint_get_source
	.type randint_get_source, @function
randint_get_source:

	nop
	push	rbp
	mov	rbp, rsp
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	mov	rax, qword ptr [rdi]
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x424040

	.globl randint_genmax
	.type randint_genmax, @function
randint_genmax:
	nop	
	push	rbp
	lea	rdi, [rdi]
	mov	rbp, rsp
	sub	rsp, 0x70
	mov	qword ptr [rbp - 0x38], rdi
	mov	qword ptr [rbp - 0x70], rsi
	nop	
	mov	rsi, qword ptr [rbp - 0x38]
	mov	rsp, rsp
	mov	rsi, qword ptr [rsi]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x60], rsi
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x38]
	mov	rsi, qword ptr [rsi + 8]
	mov	qword ptr [rbp - 0x50], rsi
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x38]
	mov	rsi, qword ptr [rsi + 0x10]
	nop	
	mov	qword ptr [rbp - 0x28], rsi
	mov	rsi, qword ptr [rbp - 0x70]
	mov	rsp, rsp
	add	rsi, 1
	nop	
	mov	qword ptr [rbp - 0x58], rsi
.label_2151:
	mov	rax, qword ptr [rbp - 0x28]
	cmp	rax, qword ptr [rbp - 0x70]
	jae	.label_2156
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x10], 0
	mov	rax, qword ptr [rbp - 0x28]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x40], rax
.label_2154:
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x40]
	lea	rdi, [rdi]
	call	shift_left
	add	rax, 0xff
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x40], rax
	mov	rax, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	add	rax, 1
	mov	qword ptr [rbp - 0x10], rax
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x40]
	mov	rsp, rsp
	cmp	rax, qword ptr [rbp - 0x70]
	jb	.label_2154
	lea	rsi, [rbp - 8]
	mov	rdi, qword ptr [rbp - 0x60]
	nop	
	mov	rdx, qword ptr [rbp - 0x10]
	nop	
	call	randread
	mov	qword ptr [rbp - 0x10], 0
.label_2153:
	mov	rdi, qword ptr [rbp - 0x50]
	call	shift_left
	mov	rdi, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	movzx	ecx, byte ptr [rbp + rdi - 8]
	lea	rsi, [rsi]
	mov	edi, ecx
	add	rax, rdi
	mov	qword ptr [rbp - 0x50], rax
	nop	
	mov	rdi, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	call	shift_left
	nop	
	add	rax, 0xff
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x28], rax
	mov	rax, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	add	rax, 1
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x10], rax
	mov	rax, qword ptr [rbp - 0x28]
	cmp	rax, qword ptr [rbp - 0x70]
	jb	.label_2153
	jmp	.label_2156
.label_2156:
	mov	rax, qword ptr [rbp - 0x28]
	cmp	rax, qword ptr [rbp - 0x70]
	jne	.label_2157
	mov	rax, qword ptr [rbp - 0x38]
	mov	rbp, rbp
	mov	qword ptr [rax + 0x10], 0
	mov	rax, qword ptr [rbp - 0x38]
	mov	qword ptr [rax + 8], 0
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x50]
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_2152
.label_2157:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x28]
	sub	rax, qword ptr [rbp - 0x70]
	mov	qword ptr [rbp - 0x48], rax
	mov	rax, qword ptr [rbp - 0x48]
	mov	rbp, rbp
	xor	ecx, ecx
	mov	rbp, rbp
	mov	edx, ecx
	nop	
	div	qword ptr [rbp - 0x58]
	nop	
	mov	qword ptr [rbp - 0x68], rdx
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x28]
	mov	rbp, rbp
	sub	rdx, qword ptr [rbp - 0x68]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x20], rdx
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x50]
	mov	rax, rdx
	xor	ecx, ecx
	mov	rbp, rbp
	mov	edx, ecx
	div	qword ptr [rbp - 0x58]
	mov	qword ptr [rbp - 0x30], rdx
	mov	rdx, qword ptr [rbp - 0x50]
	cmp	rdx, qword ptr [rbp - 0x20]
	ja	.label_2155
	mov	rax, qword ptr [rbp - 0x50]
	mov	rsp, rsp
	xor	ecx, ecx
	mov	edx, ecx
	div	qword ptr [rbp - 0x58]
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x38]
	mov	qword ptr [rsi + 8], rax
	mov	rax, qword ptr [rbp - 0x48]
	lea	rdi, [rdi]
	xor	ecx, ecx
	lea	rsi, [rsi]
	mov	edx, ecx
	lea	rsi, [rsi]
	div	qword ptr [rbp - 0x58]
	mov	rsi, qword ptr [rbp - 0x38]
	lea	rsi, [rsi]
	mov	qword ptr [rsi + 0x10], rax
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x30]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x18], rax
	mov	rbp, rbp
	jmp	.label_2152
.label_2155:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x30]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x50], rax
	mov	rax, qword ptr [rbp - 0x68]
	sub	rax, 1
	mov	qword ptr [rbp - 0x28], rax
	mov	rbp, rbp
	jmp	.label_2151
.label_2152:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	add	rsp, 0x70
	nop	
	pop	rbp
	mov	rsp, rsp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4242a0

	.globl shift_left
	.type shift_left, @function
shift_left:
	mov	rbp, rbp
	push	rbp
	mov	rbp, rsp
	nop	
	mov	qword ptr [rbp - 8], rdi
	nop	
	mov	rdi, qword ptr [rbp - 8]
	mov	rsp, rsp
	shl	rdi, 8
	mov	rax, rdi
	pop	rbp
	nop	
	ret	
	.section	.text
	.align	32
	#Procedure 0x4242c0

	.globl randint_free
	.type randint_free, @function
randint_free:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	eax, 0x18
	mov	esi, eax
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	call	explicit_bzero
	mov	rsi, qword ptr [rbp - 8]
	nop	
	mov	rdi, rsi
	call	free
	lea	rdi, [rdi]
	add	rsp, 0x10
	nop	
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x424300

	.globl randint_all_free
	.type randint_all_free, @function
randint_all_free:
	mov	rsp, rsp
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x10], rdi
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rdi]
	call	randread_free
	mov	dword ptr [rbp - 4], eax
	lea	rsi, [rsi]
	call	__errno_location
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 8], ecx
	mov	rdi, qword ptr [rbp - 0x10]
	call	randint_free
	lea	rdi, [rdi]
	mov	ecx, dword ptr [rbp - 8]
	mov	dword ptr [rbp - 0x14], ecx
	mov	rbp, rbp
	call	__errno_location
	mov	ecx, dword ptr [rbp - 0x14]
	mov	rbp, rbp
	mov	dword ptr [rax], ecx
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x424360

	.globl randread_new
	.type randread_new, @function
randread_new:
	mov	rbp, rbp
	push	rbp
	nop	
	mov	rbp, rsp
	lea	rsi, [rsi]
	sub	rsp, 0x50
	mov	qword ptr [rbp - 0x20], rdi
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x38], rsi
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x38], 0
	mov	rbp, rbp
	jne	.label_2158
	xor	eax, eax
	lea	rsi, [rsi]
	mov	ecx, eax
	mov	rsp, rsp
	mov	rdi, rcx
	nop	
	mov	rsi, rcx
	call	simple_new
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_2159
.label_2158:
	nop	
	mov	qword ptr [rbp - 0x10], 0
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x20], 0
	lea	rdi, [rdi]
	je	.label_2160
	nop	
	movabs	rsi, OFFSET FLAT:.str_21
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	call	fopen_safer
	nop	
	mov	qword ptr [rbp - 0x10], rax
	cmp	rax, 0
	jne	.label_2164
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x18], 0
	lea	rdi, [rdi]
	jmp	.label_2159
.label_2164:
	mov	rsp, rsp
	jmp	.label_2160
.label_2160:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x20]
	call	simple_new
	mov	qword ptr [rbp - 8], rax
	cmp	qword ptr [rbp - 0x10], 0
	je	.label_2161
	mov	eax, 0x1000
	lea	rsi, [rsi]
	mov	ecx, eax
	nop	
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 8]
	mov	rsp, rsp
	add	rdx, 0x18
	cmp	rcx, qword ptr [rbp - 0x38]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x30], rdx
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x40], rdi
	mov	rbp, rbp
	jae	.label_2162
	lea	rdi, [rdi]
	mov	eax, 0x1000
	lea	rdi, [rdi]
	mov	ecx, eax
	mov	qword ptr [rbp - 0x28], rcx
	mov	rsp, rsp
	jmp	.label_2163
.label_2162:
	mov	rax, qword ptr [rbp - 0x38]
	mov	qword ptr [rbp - 0x28], rax
.label_2163:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x28]
	xor	edx, edx
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x40]
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x30]
	mov	rcx, rax
	mov	rbp, rbp
	call	setvbuf
	mov	dword ptr [rbp - 0x44], eax
	jmp	.label_2165
.label_2161:
	lea	rdi, [rdi]
	mov	eax, 0x800
	mov	esi, eax
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 8]
	mov	qword ptr [rcx + 0x18], 0
	mov	rcx, qword ptr [rbp - 8]
	add	rcx, 0x18
	nop	
	add	rcx, 8
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x38]
	nop	
	mov	rdi, rcx
	lea	rsi, [rsi]
	call	get_nonce
	mov	rcx, qword ptr [rbp - 8]
	add	rcx, 0x18
	lea	rsi, [rsi]
	add	rcx, 8
	lea	rsi, [rsi]
	mov	rdi, rcx
	call	isaac_seed
.label_2165:
	mov	rax, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x18], rax
.label_2159:
	mov	rax, qword ptr [rbp - 0x18]
	add	rsp, 0x50
	mov	rbp, rbp
	pop	rbp
	lea	rsi, [rsi]
	ret	
	.section	.text
	.align	32
	#Procedure 0x424520

	.globl simple_new
	.type simple_new, @function
simple_new:
	push	rbp
	nop	
	mov	rbp, rsp
	mov	rsp, rsp
	sub	rsp, 0x20
	lea	rdi, [rdi]
	mov	eax, 0x1038
	mov	ecx, eax
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	lea	rsi, [rsi]
	mov	rdi, rcx
	call	xmalloc
	lea	rdi, [rdi]
	movabs	rcx, OFFSET FLAT:randread_error
	mov	qword ptr [rbp - 0x18], rax
	mov	rax, qword ptr [rbp - 8]
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	mov	qword ptr [rsi], rax
	mov	rax, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	mov	qword ptr [rax + 8], rcx
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	qword ptr [rcx + 0x10], rax
	mov	rax, qword ptr [rbp - 0x18]
	add	rsp, 0x20
	mov	rbp, rbp
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4245a0

	.globl get_nonce
	.type get_nonce, @function
get_nonce:
	push	rbp
	lea	rdi, [rdi]
	mov	rbp, rsp
	nop	
	sub	rsp, 0xf0
	movabs	rax, OFFSET FLAT:.str.3_7
	xor	ecx, ecx
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x90], rdi
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x50], rsi
	mov	qword ptr [rbp - 0xc0], rdx
	mov	rdx, qword ptr [rbp - 0x90]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0xa0], rdx
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x48], 0
	nop	
	mov	rdi, rax
	nop	
	mov	esi, ecx
	mov	al, 0
	call	open
	xor	ecx, ecx
	mov	dword ptr [rbp - 0xb8], eax
	lea	rdi, [rdi]
	cmp	ecx, dword ptr [rbp - 0xb8]
	lea	rdi, [rdi]
	jg	.label_2184
	mov	rbp, rbp
	mov	edi, dword ptr [rbp - 0xb8]
	mov	rsi, qword ptr [rbp - 0xa0]
	mov	rax, qword ptr [rbp - 0x50]
	nop	
	cmp	rax, qword ptr [rbp - 0xc0]
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x24], edi
	mov	qword ptr [rbp - 0x98], rsi
	nop	
	jae	.label_2181
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x50]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_2176
.label_2181:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0xc0]
	mov	qword ptr [rbp - 0x30], rax
.label_2176:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x30]
	mov	rbp, rbp
	mov	edi, dword ptr [rbp - 0x24]
	mov	rsi, qword ptr [rbp - 0x98]
	mov	rdx, rax
	call	read
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x48], rax
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0x48], 0
	lea	rsi, [rsi]
	jge	.label_2167
	mov	qword ptr [rbp - 0x48], 0
.label_2167:
	mov	edi, dword ptr [rbp - 0xb8]
	call	close
	mov	dword ptr [rbp - 0xd4], eax
.label_2184:
	mov	rax, qword ptr [rbp - 0x48]
	cmp	rax, qword ptr [rbp - 0x50]
	mov	rsp, rsp
	jae	.label_2172
	lea	rdi, [rdi]
	mov	eax, 0x10
	lea	rdi, [rdi]
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x50]
	lea	rsi, [rsi]
	sub	rdx, qword ptr [rbp - 0x48]
	mov	rsp, rsp
	cmp	rcx, rdx
	lea	rsi, [rsi]
	jae	.label_2175
	mov	eax, 0x10
	mov	ecx, eax
	mov	qword ptr [rbp - 0x10], rcx
	mov	rbp, rbp
	jmp	.label_2168
.label_2175:
	mov	rax, qword ptr [rbp - 0x50]
	sub	rax, qword ptr [rbp - 0x48]
	nop	
	mov	qword ptr [rbp - 0x10], rax
.label_2168:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x10]
	lea	rdi, [rbp - 0xd0]
	xor	ecx, ecx
	mov	esi, ecx
	mov	qword ptr [rbp - 0x68], rax
	call	gettimeofday
	lea	rsi, [rbp - 0xd0]
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0xa0]
	add	rdi, qword ptr [rbp - 0x48]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x68]
	nop	
	mov	dword ptr [rbp - 0xa4], eax
	call	memcpy
	mov	rdx, qword ptr [rbp - 0x68]
	add	rdx, qword ptr [rbp - 0x48]
	mov	qword ptr [rbp - 0x48], rdx
.label_2172:
	mov	rax, qword ptr [rbp - 0x48]
	cmp	rax, qword ptr [rbp - 0x50]
	lea	rsi, [rsi]
	jae	.label_2180
	nop	
	mov	eax, 4
	mov	rbp, rbp
	mov	ecx, eax
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x50]
	mov	rsp, rsp
	sub	rdx, qword ptr [rbp - 0x48]
	mov	rbp, rbp
	cmp	rcx, rdx
	mov	rsp, rsp
	jae	.label_2182
	mov	rsp, rsp
	mov	eax, 4
	lea	rdi, [rdi]
	mov	ecx, eax
	mov	qword ptr [rbp - 0x58], rcx
	mov	rsp, rsp
	jmp	.label_2169
.label_2182:
	mov	rax, qword ptr [rbp - 0x50]
	lea	rdi, [rdi]
	sub	rax, qword ptr [rbp - 0x48]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x58], rax
.label_2169:
	mov	rax, qword ptr [rbp - 0x58]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x40], rax
	lea	rsi, [rsi]
	call	getpid
	nop	
	lea	rcx, [rbp - 0xdc]
	mov	dword ptr [rbp - 0xdc], eax
	nop	
	mov	rdx, qword ptr [rbp - 0xa0]
	mov	rsp, rsp
	add	rdx, qword ptr [rbp - 0x48]
	nop	
	mov	rsi, qword ptr [rbp - 0x40]
	lea	rsi, [rsi]
	mov	rdi, rdx
	mov	qword ptr [rbp - 0xb0], rsi
	nop	
	mov	rsi, rcx
	mov	rdx, qword ptr [rbp - 0xb0]
	call	memcpy
	nop	
	mov	rcx, qword ptr [rbp - 0x40]
	add	rcx, qword ptr [rbp - 0x48]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x48], rcx
.label_2180:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x48]
	cmp	rax, qword ptr [rbp - 0x50]
	mov	rbp, rbp
	jae	.label_2171
	mov	eax, 4
	nop	
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x50]
	nop	
	sub	rdx, qword ptr [rbp - 0x48]
	lea	rdi, [rdi]
	cmp	rcx, rdx
	jae	.label_2173
	mov	eax, 4
	lea	rsi, [rsi]
	mov	ecx, eax
	mov	qword ptr [rbp - 0x88], rcx
	jmp	.label_2178
.label_2173:
	mov	rax, qword ptr [rbp - 0x50]
	lea	rsi, [rsi]
	sub	rax, qword ptr [rbp - 0x48]
	mov	qword ptr [rbp - 0x88], rax
.label_2178:
	mov	rax, qword ptr [rbp - 0x88]
	mov	qword ptr [rbp - 0x20], rax
	call	getppid
	lea	rcx, [rbp - 0x74]
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x74], eax
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0xa0]
	add	rdx, qword ptr [rbp - 0x48]
	mov	rsi, qword ptr [rbp - 0x20]
	mov	rdi, rdx
	mov	qword ptr [rbp - 0x18], rsi
	mov	rsi, rcx
	mov	rdx, qword ptr [rbp - 0x18]
	nop	
	call	memcpy
	mov	rcx, qword ptr [rbp - 0x20]
	add	rcx, qword ptr [rbp - 0x48]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x48], rcx
.label_2171:
	mov	rax, qword ptr [rbp - 0x48]
	lea	rdi, [rdi]
	cmp	rax, qword ptr [rbp - 0x50]
	jae	.label_2177
	mov	eax, 4
	lea	rsi, [rsi]
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x50]
	nop	
	sub	rdx, qword ptr [rbp - 0x48]
	cmp	rcx, rdx
	mov	rbp, rbp
	jae	.label_2179
	lea	rdi, [rdi]
	mov	eax, 4
	lea	rdi, [rdi]
	mov	ecx, eax
	mov	qword ptr [rbp - 8], rcx
	jmp	.label_2183
.label_2179:
	mov	rax, qword ptr [rbp - 0x50]
	sub	rax, qword ptr [rbp - 0x48]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 8], rax
.label_2183:
	mov	rax, qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0xe8], rax
	call	getuid
	mov	rsp, rsp
	lea	rcx, [rbp - 0xb4]
	mov	dword ptr [rbp - 0xb4], eax
	mov	rdx, qword ptr [rbp - 0xa0]
	add	rdx, qword ptr [rbp - 0x48]
	mov	rsi, qword ptr [rbp - 0xe8]
	mov	rdi, rdx
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x80], rsi
	mov	rsp, rsp
	mov	rsi, rcx
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x80]
	call	memcpy
	mov	rcx, qword ptr [rbp - 0xe8]
	nop	
	add	rcx, qword ptr [rbp - 0x48]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x48], rcx
.label_2177:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x48]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rbp - 0x50]
	jae	.label_2166
	mov	eax, 4
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x50]
	mov	rsp, rsp
	sub	rdx, qword ptr [rbp - 0x48]
	lea	rsi, [rsi]
	cmp	rcx, rdx
	jae	.label_2170
	mov	rsp, rsp
	mov	eax, 4
	mov	rsp, rsp
	mov	ecx, eax
	nop	
	mov	qword ptr [rbp - 0x60], rcx
	mov	rbp, rbp
	jmp	.label_2174
.label_2170:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x50]
	mov	rsp, rsp
	sub	rax, qword ptr [rbp - 0x48]
	mov	qword ptr [rbp - 0x60], rax
.label_2174:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x60]
	mov	qword ptr [rbp - 0x70], rax
	nop	
	call	getgid
	lea	rcx, [rbp - 0xd8]
	mov	rbp, rbp
	mov	dword ptr [rbp - 0xd8], eax
	mov	rdx, qword ptr [rbp - 0xa0]
	add	rdx, qword ptr [rbp - 0x48]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x70]
	mov	rdi, rdx
	nop	
	mov	qword ptr [rbp - 0x38], rsi
	mov	rsi, rcx
	mov	rdx, qword ptr [rbp - 0x38]
	mov	rbp, rbp
	call	memcpy
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x70]
	add	rcx, qword ptr [rbp - 0x48]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x48], rcx
.label_2166:
	add	rsp, 0xf0
	pop	rbp
	nop	
	ret	
	.section	.text
	.align	32
	#Procedure 0x424a50
	.globl randread_set_handler
	.type randread_set_handler, @function
randread_set_handler:

	mov	rsp, rsp
	push	rbp
	mov	rbp, rsp
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	nop	
	mov	rsi, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	mov	qword ptr [rdi + 8], rsi
	lea	rsi, [rsi]
	pop	rbp
	mov	rbp, rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x424a80
	.globl randread_set_handler_arg
	.type randread_set_handler_arg, @function
randread_set_handler_arg:

	push	rbp
	mov	rsp, rsp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rbp - 8]
	mov	qword ptr [rdi + 0x10], rsi
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x424aa0

	.globl randread
	.type randread, @function
randread:
	mov	rsp, rsp
	push	rbp
	mov	rsp, rsp
	mov	rbp, rsp
	nop	
	sub	rsp, 0x20
	mov	qword ptr [rbp - 0x10], rdi
	nop	
	mov	qword ptr [rbp - 0x18], rsi
	nop	
	mov	qword ptr [rbp - 8], rdx
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	cmp	qword ptr [rdx], 0
	mov	rbp, rbp
	je	.label_2185
	nop	
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 8]
	nop	
	call	readsource
	jmp	.label_2186
.label_2185:
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 0x18
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 8]
	nop	
	mov	rdi, rax
	call	readisaac
.label_2186:
	nop	
	add	rsp, 0x20
	mov	rsp, rsp
	pop	rbp
	lea	rdi, [rdi]
	ret	
	.section	.text
	.align	32
	#Procedure 0x424b20

	.globl readsource
	.type readsource, @function
readsource:
	push	rbp
	mov	rbp, rsp
	lea	rdi, [rdi]
	sub	rsp, 0x30
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x28], rsi
	mov	qword ptr [rbp - 0x20], rdx
.label_2191:
	nop	
	mov	eax, 1
	nop	
	mov	esi, eax
	mov	rdi, qword ptr [rbp - 0x28]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx]
	mov	rbp, rbp
	call	fread_unlocked
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x18], rax
	call	__errno_location
	mov	rbp, rbp
	mov	r8d, dword ptr [rax]
	nop	
	mov	dword ptr [rbp - 4], r8d
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	add	rax, qword ptr [rbp - 0x28]
	nop	
	mov	qword ptr [rbp - 0x28], rax
	mov	rax, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x20]
	sub	rcx, rax
	mov	qword ptr [rbp - 0x20], rcx
	cmp	qword ptr [rbp - 0x20], 0
	jne	.label_2188
	jmp	.label_2189
.label_2188:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rax]
	lea	rdi, [rdi]
	call	ferror_unlocked
	lea	rsi, [rsi]
	cmp	eax, 0
	nop	
	je	.label_2190
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 4]
	mov	dword ptr [rbp - 8], eax
	jmp	.label_2187
.label_2190:
	mov	rbp, rbp
	xor	eax, eax
	mov	rbp, rbp
	mov	dword ptr [rbp - 8], eax
	jmp	.label_2187
.label_2187:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x2c], eax
	nop	
	call	__errno_location
	mov	rbp, rbp
	mov	ecx, dword ptr [rbp - 0x2c]
	mov	dword ptr [rax], ecx
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 8]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x10]
	nop	
	mov	rdi, qword ptr [rdx + 0x10]
	lea	rsi, [rsi]
	call	rax
	jmp	.label_2191
.label_2189:
	mov	rsp, rsp
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x424c30

	.globl readisaac
	.type readisaac, @function
readisaac:
	push	rbp
	mov	rbp, rsp
	nop	
	sub	rsp, 0x30
	mov	qword ptr [rbp - 8], rdi
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	nop	
	mov	rdx, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rdx]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x20], rdx
.label_2194:
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x28], rax
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x18]
	cmp	rax, qword ptr [rbp - 0x20]
	nop	
	ja	.label_2198
	lea	rsi, [rsi]
	xor	eax, eax
	mov	ecx, eax
	mov	rdi, qword ptr [rbp - 0x10]
	nop	
	mov	rdx, qword ptr [rbp - 8]
	mov	rsp, rsp
	add	rdx, 0x820
	add	rdx, 0x800
	sub	rcx, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	add	rdx, rcx
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	mov	rsi, rdx
	mov	rdx, rcx
	call	memcpy
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x20]
	sub	rcx, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	qword ptr [rdx], rcx
	mov	rbp, rbp
	jmp	.label_2197
.label_2198:
	lea	rsi, [rsi]
	xor	eax, eax
	mov	ecx, eax
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x10]
	nop	
	mov	rdx, qword ptr [rbp - 8]
	add	rdx, 0x820
	nop	
	add	rdx, 0x800
	sub	rcx, qword ptr [rbp - 0x20]
	add	rdx, rcx
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x20]
	nop	
	mov	rsi, rdx
	mov	rsp, rsp
	mov	rdx, rcx
	call	memcpy
	mov	rcx, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	add	rcx, qword ptr [rbp - 0x20]
	nop	
	mov	qword ptr [rbp - 0x10], rcx
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	sub	rdx, rcx
	mov	qword ptr [rbp - 0x18], rdx
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x10]
	and	rcx, 7
	cmp	rcx, 0
	jne	.label_2192
	mov	rax, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x30], rax
.label_2195:
	lea	rdi, [rdi]
	mov	eax, 0x800
	mov	ecx, eax
	cmp	rcx, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	ja	.label_2196
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 8]
	add	rax, 8
	mov	rsi, qword ptr [rbp - 0x30]
	mov	rdi, rax
	mov	rbp, rbp
	call	isaac_refill
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x30]
	lea	rsi, [rsi]
	add	rax, 0x800
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x30], rax
	mov	rax, qword ptr [rbp - 0x18]
	sub	rax, 0x800
	mov	qword ptr [rbp - 0x18], rax
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x18], 0
	jne	.label_2193
	mov	rax, qword ptr [rbp - 8]
	nop	
	mov	qword ptr [rax], 0
	mov	rbp, rbp
	jmp	.label_2197
.label_2193:
	lea	rdi, [rdi]
	jmp	.label_2195
.label_2196:
	nop	
	mov	rax, qword ptr [rbp - 0x30]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x10], rax
.label_2192:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 8]
	add	rax, 8
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 8]
	mov	rbp, rbp
	add	rcx, 0x820
	lea	rsi, [rsi]
	mov	rdi, rax
	mov	rsi, rcx
	call	isaac_refill
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x20], 0x800
	jmp	.label_2194
.label_2197:
	add	rsp, 0x30
	lea	rsi, [rsi]
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x424e30

	.globl randread_free
	.type randread_free, @function
randread_free:
	mov	rsp, rsp
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	eax, 0x1038
	mov	esi, eax
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 8], rdi
	nop	
	mov	rdi, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rdi]
	mov	qword ptr [rbp - 0x18], rdi
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 8]
	call	explicit_bzero
	mov	rsi, qword ptr [rbp - 8]
	mov	rdi, rsi
	call	free
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x18], 0
	je	.label_2199
	mov	rdi, qword ptr [rbp - 0x18]
	nop	
	call	rpl_fclose
	nop	
	mov	dword ptr [rbp - 0xc], eax
	mov	rsp, rsp
	jmp	.label_2200
.label_2199:
	xor	eax, eax
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0xc], eax
	mov	rsp, rsp
	jmp	.label_2200
.label_2200:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0xc]
	add	rsp, 0x20
	pop	rbp
	mov	rbp, rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x424ec0

	.globl randread_error
	.type randread_error, @function
randread_error:
	mov	rsp, rsp
	push	rbp
	nop	
	mov	rbp, rsp
	nop	
	sub	rsp, 0x30
	mov	qword ptr [rbp - 8], rdi
	cmp	qword ptr [rbp - 8], 0
	nop	
	je	.label_2201
	mov	edi,  dword ptr [dword ptr [exit_failure]]
	nop	
	mov	dword ptr [rbp - 0x24], edi
	mov	rsp, rsp
	call	__errno_location
	lea	rsi, [rsi]
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0x14], esi
	call	__errno_location
	cmp	dword ptr [rax], 0
	lea	rdi, [rdi]
	jne	.label_2203
	movabs	rdi, OFFSET FLAT:.str.1_18
	call	gettext
	mov	qword ptr [rbp - 0x10], rax
	mov	rsp, rsp
	jmp	.label_2202
.label_2203:
	mov	rbp, rbp
	movabs	rdi, OFFSET FLAT:.str.2_10
	nop	
	call	gettext
	mov	qword ptr [rbp - 0x10], rax
.label_2202:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rbp - 8]
	nop	
	mov	qword ptr [rbp - 0x20], rax
	lea	rdi, [rdi]
	call	quote
	mov	edi, dword ptr [rbp - 0x24]
	lea	rsi, [rsi]
	mov	esi, dword ptr [rbp - 0x14]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	mov	rcx, rax
	mov	al, 0
	nop	
	call	error
.label_2201:
	mov	rsp, rsp
	call	abort
	.section	.text
	.align	32
	#Procedure 0x424f80

	.globl isaac_refill
	.type isaac_refill, @function
isaac_refill:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0xd0
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x58], rdi
	mov	rbp, rbp
	mov	qword ptr [rbp - 0xc8], rsi
	mov	rsi, qword ptr [rbp - 0x58]
	nop	
	mov	rsi, qword ptr [rsi + 0x800]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x18], rsi
	mov	rsi, qword ptr [rbp - 0x58]
	mov	rsi, qword ptr [rsi + 0x808]
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x58]
	mov	rbp, rbp
	mov	rax, qword ptr [rdi + 0x810]
	add	rax, 1
	mov	qword ptr [rdi + 0x810], rax
	add	rsi, rax
	nop	
	mov	qword ptr [rbp - 0xb8], rsi
	mov	rax, qword ptr [rbp - 0x58]
	mov	qword ptr [rbp - 0xb0], rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0xc8]
	mov	qword ptr [rbp - 0x50], rax
.label_2204:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x18]
	shl	rcx, 0x15
	xor	rax, rcx
	xor	rax, 0xffffffffffffffff
	xor	rax, 0
	mov	rcx, qword ptr [rbp - 0xb0]
	nop	
	add	rax, qword ptr [rcx + 0x400]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x18], rax
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0xb0]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0xa0], rax
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x58]
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0xa0]
	mov	rsp, rsp
	call	ind
	add	rax, qword ptr [rbp - 0x18]
	add	rax, qword ptr [rbp - 0xb8]
	mov	qword ptr [rbp - 0xc0], rax
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0xb0]
	mov	qword ptr [rcx], rax
	mov	rdi, qword ptr [rbp - 0x58]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0xc0]
	shr	rax, 8
	mov	rsp, rsp
	mov	rsi, rax
	lea	rdi, [rdi]
	call	ind
	lea	rdi, [rdi]
	add	rax, qword ptr [rbp - 0xa0]
	nop	
	mov	rdi, rax
	nop	
	call	just
	mov	qword ptr [rbp - 0xb8], rax
	mov	rcx, qword ptr [rbp - 0x50]
	mov	qword ptr [rcx], rax
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x18]
	mov	rdi, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x80], rax
	mov	rbp, rbp
	call	just
	shr	rax, 5
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x80]
	lea	rsi, [rsi]
	xor	rcx, rax
	xor	rcx, 0
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0xb0]
	add	rcx, qword ptr [rax + 0x408]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x18], rcx
	mov	rax, qword ptr [rbp - 0xb0]
	mov	rbp, rbp
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x40], rax
	mov	rdi, qword ptr [rbp - 0x58]
	mov	rsi, qword ptr [rbp - 0x40]
	call	ind
	mov	rbp, rbp
	add	rax, qword ptr [rbp - 0x18]
	add	rax, qword ptr [rbp - 0xb8]
	mov	qword ptr [rbp - 0x20], rax
	mov	rcx, qword ptr [rbp - 0xb0]
	mov	qword ptr [rcx + 8], rax
	mov	rdi, qword ptr [rbp - 0x58]
	mov	rax, qword ptr [rbp - 0x20]
	shr	rax, 8
	mov	rsi, rax
	mov	rsp, rsp
	call	ind
	mov	rbp, rbp
	add	rax, qword ptr [rbp - 0x40]
	mov	rdi, rax
	call	just
	mov	qword ptr [rbp - 0xb8], rax
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x50]
	mov	qword ptr [rcx + 8], rax
	mov	rax, qword ptr [rbp - 0x18]
	nop	
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	shl	rcx, 0xc
	xor	rax, rcx
	nop	
	xor	rax, 0
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0xb0]
	add	rax, qword ptr [rcx + 0x410]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x18], rax
	mov	rax, qword ptr [rbp - 0xb0]
	mov	rax, qword ptr [rax + 0x10]
	nop	
	mov	qword ptr [rbp - 0x88], rax
	mov	rdi, qword ptr [rbp - 0x58]
	mov	rsi, qword ptr [rbp - 0x88]
	call	ind
	add	rax, qword ptr [rbp - 0x18]
	add	rax, qword ptr [rbp - 0xb8]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x60], rax
	mov	rcx, qword ptr [rbp - 0xb0]
	mov	qword ptr [rcx + 0x10], rax
	nop	
	mov	rdi, qword ptr [rbp - 0x58]
	nop	
	mov	rax, qword ptr [rbp - 0x60]
	lea	rsi, [rsi]
	shr	rax, 8
	mov	rsi, rax
	lea	rsi, [rsi]
	call	ind
	add	rax, qword ptr [rbp - 0x88]
	lea	rdi, [rdi]
	mov	rdi, rax
	call	just
	mov	qword ptr [rbp - 0xb8], rax
	mov	rcx, qword ptr [rbp - 0x50]
	mov	qword ptr [rcx + 0x10], rax
	mov	rax, qword ptr [rbp - 0x18]
	nop	
	mov	rdi, qword ptr [rbp - 0x18]
	nop	
	mov	qword ptr [rbp - 0x48], rax
	call	just
	nop	
	shr	rax, 0x21
	mov	rcx, qword ptr [rbp - 0x48]
	xor	rcx, rax
	mov	rsp, rsp
	xor	rcx, 0
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0xb0]
	add	rcx, qword ptr [rax + 0x418]
	mov	qword ptr [rbp - 0x18], rcx
	mov	rax, qword ptr [rbp - 0xb0]
	mov	rsp, rsp
	mov	rax, qword ptr [rax + 0x18]
	mov	qword ptr [rbp - 0x10], rax
	mov	rdi, qword ptr [rbp - 0x58]
	mov	rsi, qword ptr [rbp - 0x10]
	call	ind
	add	rax, qword ptr [rbp - 0x18]
	nop	
	add	rax, qword ptr [rbp - 0xb8]
	mov	qword ptr [rbp - 0x38], rax
	mov	rcx, qword ptr [rbp - 0xb0]
	mov	qword ptr [rcx + 0x18], rax
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x58]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x38]
	lea	rsi, [rsi]
	shr	rax, 8
	mov	rsi, rax
	lea	rsi, [rsi]
	call	ind
	add	rax, qword ptr [rbp - 0x10]
	mov	rdi, rax
	lea	rdi, [rdi]
	call	just
	mov	rbp, rbp
	mov	qword ptr [rbp - 0xb8], rax
	nop	
	mov	rcx, qword ptr [rbp - 0x50]
	lea	rdi, [rdi]
	mov	qword ptr [rcx + 0x18], rax
	mov	rax, qword ptr [rbp - 0x50]
	nop	
	add	rax, 0x20
	mov	qword ptr [rbp - 0x50], rax
	mov	rax, qword ptr [rbp - 0xb0]
	lea	rsi, [rsi]
	add	rax, 0x20
	mov	rsp, rsp
	mov	qword ptr [rbp - 0xb0], rax
	mov	rcx, qword ptr [rbp - 0x58]
	lea	rdi, [rdi]
	add	rcx, 0x400
	cmp	rax, rcx
	lea	rsi, [rsi]
	jb	.label_2204
	jmp	.label_2205
.label_2205:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x18]
	shl	rcx, 0x15
	mov	rbp, rbp
	xor	rax, rcx
	xor	rax, 0xffffffffffffffff
	xor	rax, 0
	mov	rcx, qword ptr [rbp - 0xb0]
	nop	
	add	rax, qword ptr [rcx - 0x400]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x18], rax
	mov	rax, qword ptr [rbp - 0xb0]
	nop	
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0xd0], rax
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x58]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0xd0]
	lea	rsi, [rsi]
	call	ind
	add	rax, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	add	rax, qword ptr [rbp - 0xb8]
	nop	
	mov	qword ptr [rbp - 0x78], rax
	mov	rcx, qword ptr [rbp - 0xb0]
	mov	qword ptr [rcx], rax
	nop	
	mov	rdi, qword ptr [rbp - 0x58]
	mov	rax, qword ptr [rbp - 0x78]
	nop	
	shr	rax, 8
	mov	rsi, rax
	call	ind
	add	rax, qword ptr [rbp - 0xd0]
	mov	rdi, rax
	lea	rdi, [rdi]
	call	just
	mov	rsp, rsp
	mov	qword ptr [rbp - 0xb8], rax
	mov	rcx, qword ptr [rbp - 0x50]
	mov	rbp, rbp
	mov	qword ptr [rcx], rax
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x18]
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x28], rax
	lea	rdi, [rdi]
	call	just
	shr	rax, 5
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x28]
	mov	rbp, rbp
	xor	rcx, rax
	lea	rdi, [rdi]
	xor	rcx, 0
	mov	rax, qword ptr [rbp - 0xb0]
	lea	rdi, [rdi]
	add	rcx, qword ptr [rax - 0x3f8]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x18], rcx
	mov	rax, qword ptr [rbp - 0xb0]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax + 8]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x30], rax
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x58]
	mov	rsi, qword ptr [rbp - 0x30]
	call	ind
	nop	
	add	rax, qword ptr [rbp - 0x18]
	add	rax, qword ptr [rbp - 0xb8]
	mov	qword ptr [rbp - 8], rax
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0xb0]
	mov	qword ptr [rcx + 8], rax
	mov	rdi, qword ptr [rbp - 0x58]
	mov	rax, qword ptr [rbp - 8]
	shr	rax, 8
	mov	rsi, rax
	call	ind
	add	rax, qword ptr [rbp - 0x30]
	nop	
	mov	rdi, rax
	lea	rsi, [rsi]
	call	just
	mov	rbp, rbp
	mov	qword ptr [rbp - 0xb8], rax
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x50]
	mov	qword ptr [rcx + 8], rax
	mov	rax, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	shl	rcx, 0xc
	xor	rax, rcx
	mov	rbp, rbp
	xor	rax, 0
	mov	rcx, qword ptr [rbp - 0xb0]
	add	rax, qword ptr [rcx - 0x3f0]
	mov	qword ptr [rbp - 0x18], rax
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0xb0]
	mov	rax, qword ptr [rax + 0x10]
	mov	qword ptr [rbp - 0x90], rax
	mov	rdi, qword ptr [rbp - 0x58]
	nop	
	mov	rsi, qword ptr [rbp - 0x90]
	lea	rdi, [rdi]
	call	ind
	add	rax, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	add	rax, qword ptr [rbp - 0xb8]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0xa8], rax
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0xb0]
	nop	
	mov	qword ptr [rcx + 0x10], rax
	mov	rdi, qword ptr [rbp - 0x58]
	mov	rax, qword ptr [rbp - 0xa8]
	shr	rax, 8
	mov	rsp, rsp
	mov	rsi, rax
	mov	rbp, rbp
	call	ind
	add	rax, qword ptr [rbp - 0x90]
	mov	rdi, rax
	call	just
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0xb8], rax
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x50]
	lea	rsi, [rsi]
	mov	qword ptr [rcx + 0x10], rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x18]
	mov	rdi, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x70], rax
	lea	rdi, [rdi]
	call	just
	mov	rsp, rsp
	shr	rax, 0x21
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x70]
	mov	rsp, rsp
	xor	rcx, rax
	xor	rcx, 0
	mov	rax, qword ptr [rbp - 0xb0]
	add	rcx, qword ptr [rax - 0x3e8]
	nop	
	mov	qword ptr [rbp - 0x18], rcx
	mov	rax, qword ptr [rbp - 0xb0]
	nop	
	mov	rax, qword ptr [rax + 0x18]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x68], rax
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x58]
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x68]
	call	ind
	add	rax, qword ptr [rbp - 0x18]
	add	rax, qword ptr [rbp - 0xb8]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x98], rax
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0xb0]
	mov	qword ptr [rcx + 0x18], rax
	mov	rdi, qword ptr [rbp - 0x58]
	mov	rax, qword ptr [rbp - 0x98]
	mov	rsp, rsp
	shr	rax, 8
	mov	rsi, rax
	lea	rdi, [rdi]
	call	ind
	mov	rbp, rbp
	add	rax, qword ptr [rbp - 0x68]
	mov	rbp, rbp
	mov	rdi, rax
	call	just
	nop	
	mov	qword ptr [rbp - 0xb8], rax
	mov	rcx, qword ptr [rbp - 0x50]
	nop	
	mov	qword ptr [rcx + 0x18], rax
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x50]
	lea	rsi, [rsi]
	add	rax, 0x20
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x50], rax
	mov	rax, qword ptr [rbp - 0xb0]
	add	rax, 0x20
	mov	qword ptr [rbp - 0xb0], rax
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x58]
	lea	rsi, [rsi]
	add	rcx, 0x800
	cmp	rax, rcx
	jb	.label_2205
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x58]
	mov	rsp, rsp
	mov	qword ptr [rcx + 0x800], rax
	nop	
	mov	rax, qword ptr [rbp - 0xb8]
	nop	
	mov	rcx, qword ptr [rbp - 0x58]
	mov	rsp, rsp
	mov	qword ptr [rcx + 0x808], rax
	lea	rsi, [rsi]
	add	rsp, 0xd0
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4256b0

	.globl ind
	.type ind, @function
ind:
	push	rbp
	mov	rbp, rsp
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x18], rdi
	mov	rsp, rsp
	mov	qword ptr [rbp - 8], rsi
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x20], rsi
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x20]
	nop	
	mov	qword ptr [rbp - 0x28], rsi
	mov	rsi, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 8]
	nop	
	and	rdi, 0x7f8
	lea	rdi, [rdi]
	add	rsi, rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x30], rsi
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x30]
	mov	rbp, rbp
	mov	rax, qword ptr [rsi]
	pop	rbp
	lea	rsi, [rsi]
	ret	
	.section	.text
	.align	32
	#Procedure 0x425720

	.globl just
	.type just, @function
just:
	mov	rsp, rsp
	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x10], -1
	nop	
	mov	rdi, qword ptr [rbp - 8]
	and	rdi, qword ptr [rbp - 0x10]
	mov	rax, rdi
	nop	
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x425750

	.globl isaac_seed
	.type isaac_seed, @function
isaac_seed:
	mov	rsp, rsp
	push	rbp
	lea	rdi, [rdi]
	mov	rbp, rsp
	mov	rsp, rsp
	sub	rsp, 0x60
	movabs	rax, 0x98f5704f6c44c0ab
	mov	rsp, rsp
	movabs	rcx, 0xae985bf2cbfc89ed
	movabs	rdx, 0x48fe4a0fa5a09315
	nop	
	movabs	rsi, 0x82f053db8355e0ce
	mov	rbp, rbp
	movabs	r8, 0xb29b2e824a595524
	movabs	r9, 0x8c0ea5053d4712a0
	movabs	r10, 0xb9f8b322c73ac862
	movabs	r11, 0x647c4677a2884b7c
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x50], rdi
	mov	qword ptr [rbp - 0x10], r11
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x20], r10
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x28], r9
	mov	qword ptr [rbp - 0x30], r8
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x38], rsi
	mov	qword ptr [rbp - 0x58], rdx
	mov	qword ptr [rbp - 0x40], rcx
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 8], rax
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x14], 0
.label_2209:
	lea	rsi, [rsi]
	cmp	dword ptr [rbp - 0x14], 0x100
	mov	rbp, rbp
	jge	.label_2208
	lea	rsi, [rsi]
	movsxd	rax, dword ptr [rbp - 0x14]
	mov	rcx, qword ptr [rbp - 0x50]
	mov	rax, qword ptr [rcx + rax*8]
	add	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x10], rax
	mov	edx, dword ptr [rbp - 0x14]
	mov	rbp, rbp
	add	edx, 1
	movsxd	rax, edx
	nop	
	mov	rcx, qword ptr [rbp - 0x50]
	mov	rax, qword ptr [rcx + rax*8]
	lea	rdi, [rdi]
	add	rax, qword ptr [rbp - 0x20]
	nop	
	mov	qword ptr [rbp - 0x20], rax
	nop	
	mov	edx, dword ptr [rbp - 0x14]
	add	edx, 2
	movsxd	rax, edx
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x50]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rcx + rax*8]
	add	rax, qword ptr [rbp - 0x28]
	nop	
	mov	qword ptr [rbp - 0x28], rax
	mov	edx, dword ptr [rbp - 0x14]
	add	edx, 3
	movsxd	rax, edx
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x50]
	mov	rax, qword ptr [rcx + rax*8]
	nop	
	add	rax, qword ptr [rbp - 0x30]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x30], rax
	nop	
	mov	edx, dword ptr [rbp - 0x14]
	add	edx, 4
	movsxd	rax, edx
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x50]
	mov	rax, qword ptr [rcx + rax*8]
	add	rax, qword ptr [rbp - 0x38]
	mov	qword ptr [rbp - 0x38], rax
	mov	rsp, rsp
	mov	edx, dword ptr [rbp - 0x14]
	mov	rbp, rbp
	add	edx, 5
	mov	rbp, rbp
	movsxd	rax, edx
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x50]
	mov	rax, qword ptr [rcx + rax*8]
	lea	rdi, [rdi]
	add	rax, qword ptr [rbp - 0x58]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x58], rax
	mov	edx, dword ptr [rbp - 0x14]
	mov	rsp, rsp
	add	edx, 6
	movsxd	rax, edx
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x50]
	mov	rsp, rsp
	mov	rax, qword ptr [rcx + rax*8]
	mov	rbp, rbp
	add	rax, qword ptr [rbp - 0x40]
	mov	qword ptr [rbp - 0x40], rax
	mov	edx, dword ptr [rbp - 0x14]
	nop	
	add	edx, 7
	nop	
	movsxd	rax, edx
	mov	rcx, qword ptr [rbp - 0x50]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rcx + rax*8]
	add	rax, qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	qword ptr [rbp - 8], rax
	mov	rax, qword ptr [rbp - 0x38]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	sub	rcx, rax
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x10], rcx
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 8]
	mov	rbp, rbp
	call	just
	nop	
	shr	rax, 9
	lea	rsi, [rsi]
	xor	rax, qword ptr [rbp - 0x58]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x58], rax
	mov	rax, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	add	rax, qword ptr [rbp - 8]
	mov	rbp, rbp
	mov	qword ptr [rbp - 8], rax
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x58]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x20]
	sub	rcx, rax
	mov	qword ptr [rbp - 0x20], rcx
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x10]
	shl	rax, 9
	xor	rax, qword ptr [rbp - 0x40]
	mov	qword ptr [rbp - 0x40], rax
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x20]
	add	rax, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x10], rax
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x40]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x28]
	sub	rcx, rax
	mov	qword ptr [rbp - 0x28], rcx
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x20]
	call	just
	shr	rax, 0x17
	xor	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 8], rax
	mov	rax, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	add	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x20], rax
	mov	rax, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x30]
	sub	rcx, rax
	mov	qword ptr [rbp - 0x30], rcx
	nop	
	mov	rax, qword ptr [rbp - 0x28]
	shl	rax, 0xf
	xor	rax, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x10], rax
	mov	rax, qword ptr [rbp - 0x30]
	mov	rbp, rbp
	add	rax, qword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x28], rax
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 0x38]
	sub	rcx, rax
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x38], rcx
	mov	rdi, qword ptr [rbp - 0x30]
	call	just
	lea	rdi, [rdi]
	shr	rax, 0xe
	xor	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x20], rax
	mov	rax, qword ptr [rbp - 0x38]
	add	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x30], rax
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x58]
	mov	rsp, rsp
	sub	rcx, rax
	mov	qword ptr [rbp - 0x58], rcx
	mov	rax, qword ptr [rbp - 0x38]
	lea	rsi, [rsi]
	shl	rax, 0x14
	xor	rax, qword ptr [rbp - 0x28]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x28], rax
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, qword ptr [rbp - 0x38]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x38], rax
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x40]
	sub	rcx, rax
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x40], rcx
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x58]
	call	just
	shr	rax, 0x11
	xor	rax, qword ptr [rbp - 0x30]
	nop	
	mov	qword ptr [rbp - 0x30], rax
	mov	rax, qword ptr [rbp - 0x40]
	add	rax, qword ptr [rbp - 0x58]
	mov	qword ptr [rbp - 0x58], rax
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x30]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 8]
	sub	rcx, rax
	mov	qword ptr [rbp - 8], rcx
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x40]
	mov	rsp, rsp
	shl	rax, 0xe
	xor	rax, qword ptr [rbp - 0x38]
	mov	qword ptr [rbp - 0x38], rax
	mov	rax, qword ptr [rbp - 8]
	add	rax, qword ptr [rbp - 0x40]
	mov	qword ptr [rbp - 0x40], rax
	nop	
	mov	rax, qword ptr [rbp - 0x10]
	movsxd	rcx, dword ptr [rbp - 0x14]
	mov	rdi, qword ptr [rbp - 0x50]
	mov	qword ptr [rdi + rcx*8], rax
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	mov	edx, dword ptr [rbp - 0x14]
	lea	rdi, [rdi]
	add	edx, 1
	mov	rsp, rsp
	movsxd	rcx, edx
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x50]
	mov	rbp, rbp
	mov	qword ptr [rdi + rcx*8], rax
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x28]
	mov	edx, dword ptr [rbp - 0x14]
	add	edx, 2
	mov	rbp, rbp
	movsxd	rcx, edx
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x50]
	mov	qword ptr [rdi + rcx*8], rax
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x30]
	mov	edx, dword ptr [rbp - 0x14]
	lea	rsi, [rsi]
	add	edx, 3
	lea	rsi, [rsi]
	movsxd	rcx, edx
	mov	rdi, qword ptr [rbp - 0x50]
	mov	rbp, rbp
	mov	qword ptr [rdi + rcx*8], rax
	mov	rax, qword ptr [rbp - 0x38]
	lea	rdi, [rdi]
	mov	edx, dword ptr [rbp - 0x14]
	add	edx, 4
	mov	rbp, rbp
	movsxd	rcx, edx
	mov	rdi, qword ptr [rbp - 0x50]
	lea	rsi, [rsi]
	mov	qword ptr [rdi + rcx*8], rax
	mov	rax, qword ptr [rbp - 0x58]
	mov	rsp, rsp
	mov	edx, dword ptr [rbp - 0x14]
	add	edx, 5
	movsxd	rcx, edx
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x50]
	mov	qword ptr [rdi + rcx*8], rax
	mov	rax, qword ptr [rbp - 0x40]
	nop	
	mov	edx, dword ptr [rbp - 0x14]
	lea	rdi, [rdi]
	add	edx, 6
	movsxd	rcx, edx
	mov	rdi, qword ptr [rbp - 0x50]
	mov	qword ptr [rdi + rcx*8], rax
	mov	rax, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	edx, dword ptr [rbp - 0x14]
	lea	rsi, [rsi]
	add	edx, 7
	nop	
	movsxd	rcx, edx
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x50]
	mov	qword ptr [rdi + rcx*8], rax
	nop	
	mov	eax, dword ptr [rbp - 0x14]
	add	eax, 8
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x14], eax
	jmp	.label_2209
.label_2208:
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x44], 0
.label_2206:
	cmp	dword ptr [rbp - 0x44], 0x100
	mov	rsp, rsp
	jge	.label_2207
	movsxd	rax, dword ptr [rbp - 0x44]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x50]
	mov	rax, qword ptr [rcx + rax*8]
	add	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x10], rax
	mov	edx, dword ptr [rbp - 0x44]
	lea	rdi, [rdi]
	add	edx, 1
	lea	rsi, [rsi]
	movsxd	rax, edx
	mov	rcx, qword ptr [rbp - 0x50]
	mov	rax, qword ptr [rcx + rax*8]
	add	rax, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x20], rax
	mov	rsp, rsp
	mov	edx, dword ptr [rbp - 0x44]
	add	edx, 2
	lea	rsi, [rsi]
	movsxd	rax, edx
	mov	rcx, qword ptr [rbp - 0x50]
	mov	rax, qword ptr [rcx + rax*8]
	lea	rdi, [rdi]
	add	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x28], rax
	mov	edx, dword ptr [rbp - 0x44]
	add	edx, 3
	lea	rsi, [rsi]
	movsxd	rax, edx
	mov	rcx, qword ptr [rbp - 0x50]
	nop	
	mov	rax, qword ptr [rcx + rax*8]
	add	rax, qword ptr [rbp - 0x30]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x30], rax
	mov	rsp, rsp
	mov	edx, dword ptr [rbp - 0x44]
	nop	
	add	edx, 4
	movsxd	rax, edx
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x50]
	mov	rsp, rsp
	mov	rax, qword ptr [rcx + rax*8]
	mov	rbp, rbp
	add	rax, qword ptr [rbp - 0x38]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x38], rax
	mov	edx, dword ptr [rbp - 0x44]
	add	edx, 5
	movsxd	rax, edx
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x50]
	mov	rax, qword ptr [rcx + rax*8]
	add	rax, qword ptr [rbp - 0x58]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x58], rax
	mov	edx, dword ptr [rbp - 0x44]
	lea	rsi, [rsi]
	add	edx, 6
	movsxd	rax, edx
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x50]
	mov	rax, qword ptr [rcx + rax*8]
	add	rax, qword ptr [rbp - 0x40]
	mov	qword ptr [rbp - 0x40], rax
	nop	
	mov	edx, dword ptr [rbp - 0x44]
	mov	rsp, rsp
	add	edx, 7
	movsxd	rax, edx
	mov	rcx, qword ptr [rbp - 0x50]
	mov	rax, qword ptr [rcx + rax*8]
	nop	
	add	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 8], rax
	mov	rax, qword ptr [rbp - 0x38]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x10]
	sub	rcx, rax
	mov	qword ptr [rbp - 0x10], rcx
	mov	rdi, qword ptr [rbp - 8]
	mov	rbp, rbp
	call	just
	lea	rdi, [rdi]
	shr	rax, 9
	nop	
	xor	rax, qword ptr [rbp - 0x58]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x58], rax
	nop	
	mov	rax, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	add	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 8], rax
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	sub	rcx, rax
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x20], rcx
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x10]
	shl	rax, 9
	lea	rsi, [rsi]
	xor	rax, qword ptr [rbp - 0x40]
	mov	qword ptr [rbp - 0x40], rax
	nop	
	mov	rax, qword ptr [rbp - 0x20]
	add	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x10], rax
	mov	rax, qword ptr [rbp - 0x40]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	rbp, rbp
	sub	rcx, rax
	mov	qword ptr [rbp - 0x28], rcx
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x20]
	call	just
	mov	rsp, rsp
	shr	rax, 0x17
	mov	rbp, rbp
	xor	rax, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 8], rax
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x20], rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 8]
	mov	rcx, qword ptr [rbp - 0x30]
	nop	
	sub	rcx, rax
	mov	qword ptr [rbp - 0x30], rcx
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x28]
	shl	rax, 0xf
	xor	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x10], rax
	mov	rax, qword ptr [rbp - 0x30]
	lea	rdi, [rdi]
	add	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x28], rax
	mov	rax, qword ptr [rbp - 0x10]
	nop	
	mov	rcx, qword ptr [rbp - 0x38]
	sub	rcx, rax
	mov	qword ptr [rbp - 0x38], rcx
	mov	rdi, qword ptr [rbp - 0x30]
	nop	
	call	just
	lea	rsi, [rsi]
	shr	rax, 0xe
	lea	rsi, [rsi]
	xor	rax, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x20], rax
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x38]
	add	rax, qword ptr [rbp - 0x30]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x30], rax
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x58]
	sub	rcx, rax
	mov	qword ptr [rbp - 0x58], rcx
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x38]
	lea	rdi, [rdi]
	shl	rax, 0x14
	mov	rsp, rsp
	xor	rax, qword ptr [rbp - 0x28]
	nop	
	mov	qword ptr [rbp - 0x28], rax
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, qword ptr [rbp - 0x38]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x38], rax
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x40]
	sub	rcx, rax
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x40], rcx
	mov	rdi, qword ptr [rbp - 0x58]
	call	just
	mov	rbp, rbp
	shr	rax, 0x11
	mov	rsp, rsp
	xor	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x30], rax
	mov	rax, qword ptr [rbp - 0x40]
	add	rax, qword ptr [rbp - 0x58]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x58], rax
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	sub	rcx, rax
	mov	qword ptr [rbp - 8], rcx
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x40]
	shl	rax, 0xe
	xor	rax, qword ptr [rbp - 0x38]
	mov	qword ptr [rbp - 0x38], rax
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 8]
	add	rax, qword ptr [rbp - 0x40]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x40], rax
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x10]
	movsxd	rcx, dword ptr [rbp - 0x44]
	mov	rdi, qword ptr [rbp - 0x50]
	mov	qword ptr [rdi + rcx*8], rax
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x20]
	mov	edx, dword ptr [rbp - 0x44]
	mov	rsp, rsp
	add	edx, 1
	mov	rbp, rbp
	movsxd	rcx, edx
	mov	rdi, qword ptr [rbp - 0x50]
	lea	rsi, [rsi]
	mov	qword ptr [rdi + rcx*8], rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x28]
	mov	edx, dword ptr [rbp - 0x44]
	add	edx, 2
	movsxd	rcx, edx
	mov	rdi, qword ptr [rbp - 0x50]
	mov	qword ptr [rdi + rcx*8], rax
	mov	rax, qword ptr [rbp - 0x30]
	mov	edx, dword ptr [rbp - 0x44]
	nop	
	add	edx, 3
	mov	rsp, rsp
	movsxd	rcx, edx
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x50]
	mov	rsp, rsp
	mov	qword ptr [rdi + rcx*8], rax
	nop	
	mov	rax, qword ptr [rbp - 0x38]
	mov	edx, dword ptr [rbp - 0x44]
	add	edx, 4
	movsxd	rcx, edx
	mov	rdi, qword ptr [rbp - 0x50]
	lea	rsi, [rsi]
	mov	qword ptr [rdi + rcx*8], rax
	mov	rax, qword ptr [rbp - 0x58]
	mov	edx, dword ptr [rbp - 0x44]
	add	edx, 5
	movsxd	rcx, edx
	mov	rdi, qword ptr [rbp - 0x50]
	mov	rsp, rsp
	mov	qword ptr [rdi + rcx*8], rax
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x40]
	nop	
	mov	edx, dword ptr [rbp - 0x44]
	nop	
	add	edx, 6
	movsxd	rcx, edx
	nop	
	mov	rdi, qword ptr [rbp - 0x50]
	mov	qword ptr [rdi + rcx*8], rax
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 8]
	mov	edx, dword ptr [rbp - 0x44]
	add	edx, 7
	mov	rsp, rsp
	movsxd	rcx, edx
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x50]
	lea	rdi, [rdi]
	mov	qword ptr [rdi + rcx*8], rax
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x44]
	nop	
	add	eax, 8
	mov	dword ptr [rbp - 0x44], eax
	mov	rbp, rbp
	jmp	.label_2206
.label_2207:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x50]
	lea	rsi, [rsi]
	mov	qword ptr [rax + 0x810], 0
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x50]
	lea	rdi, [rdi]
	mov	qword ptr [rax + 0x808], 0
	mov	rax, qword ptr [rbp - 0x50]
	mov	qword ptr [rax + 0x800], 0
	add	rsp, 0x60
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x426010

	.globl dup_safer
	.type dup_safer, @function
dup_safer:
	push	rbp
	lea	rsi, [rsi]
	mov	rbp, rsp
	sub	rsp, 0x10
	lea	rdi, [rdi]
	xor	esi, esi
	nop	
	mov	edx, 3
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 4], edi
	mov	edi, dword ptr [rbp - 4]
	mov	al, 0
	call	rpl_fcntl
	mov	rsp, rsp
	add	rsp, 0x10
	lea	rsi, [rsi]
	pop	rbp
	nop	
	ret	
	.section	.text
	.align	32
	#Procedure 0x426050

	.globl explicit_bzero
	.type explicit_bzero, @function
explicit_bzero:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	lea	rdi, [rdi]
	xor	eax, eax
	mov	qword ptr [rbp - 0x10], rdi
	nop	
	mov	qword ptr [rbp - 8], rsi
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 8]
	mov	rbp, rbp
	mov	esi, eax
	lea	rsi, [rsi]
	call	memset
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x426090

	.globl rpl_fclose
	.type rpl_fclose, @function
rpl_fclose:
	push	rbp
	lea	rsi, [rsi]
	mov	rbp, rsp
	mov	rsp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 8], rdi
	mov	dword ptr [rbp - 0x14], 0
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x18], 0
	mov	rdi, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	call	fileno
	mov	dword ptr [rbp - 0x1c], eax
	mov	rbp, rbp
	cmp	dword ptr [rbp - 0x1c], 0
	jge	.label_2214
	mov	rdi, qword ptr [rbp - 8]
	call	fclose
	mov	dword ptr [rbp - 0x10], eax
	lea	rsi, [rsi]
	jmp	.label_2212
.label_2214:
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 8]
	mov	rsp, rsp
	call	__freading
	lea	rsi, [rsi]
	cmp	eax, 0
	je	.label_2211
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 8]
	call	fileno
	xor	ecx, ecx
	lea	rsi, [rsi]
	mov	esi, ecx
	mov	edx, 1
	mov	edi, eax
	mov	rbp, rbp
	call	lseek
	lea	rsi, [rsi]
	cmp	rax, -1
	lea	rsi, [rsi]
	je	.label_2210
.label_2211:
	mov	rdi, qword ptr [rbp - 8]
	call	rpl_fflush
	cmp	eax, 0
	lea	rsi, [rsi]
	je	.label_2210
	call	__errno_location
	nop	
	mov	ecx, dword ptr [rax]
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x14], ecx
.label_2210:
	mov	rdi, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	call	fclose
	mov	dword ptr [rbp - 0x18], eax
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x14], 0
	je	.label_2213
	nop	
	mov	eax, dword ptr [rbp - 0x14]
	mov	dword ptr [rbp - 0xc], eax
	call	__errno_location
	nop	
	mov	ecx, dword ptr [rbp - 0xc]
	mov	rsp, rsp
	mov	dword ptr [rax], ecx
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x18], 0xffffffff
.label_2213:
	mov	eax, dword ptr [rbp - 0x18]
	mov	dword ptr [rbp - 0x10], eax
.label_2212:
	mov	eax, dword ptr [rbp - 0x10]
	nop	
	add	rsp, 0x20
	mov	rsp, rsp
	pop	rbp
	mov	rsp, rsp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4261b0

	.globl rpl_fcntl
	.type rpl_fcntl, @function
rpl_fcntl:
	push	rbp
	mov	rbp, rsp
	mov	rbp, rbp
	sub	rsp, 0x240
	lea	rdi, [rdi]
	test	al, al
	mov	rsp, rsp
	movaps	xmmword ptr [rbp - 0x80], xmm7
	movaps	xmmword ptr [rbp - 0x40], xmm6
	movaps	xmmword ptr [rbp - 0x70], xmm5
	mov	rsp, rsp
	movaps	xmmword ptr [rbp - 0xd0], xmm4
	movaps	xmmword ptr [rbp - 0x230], xmm3
	lea	rsi, [rsi]
	movaps	xmmword ptr [rbp - 0x1d0], xmm2
	lea	rdi, [rdi]
	movaps	xmmword ptr [rbp - 0x1f0], xmm1
	movaps	xmmword ptr [rbp - 0xc0], xmm0
	mov	dword ptr [rbp - 0x20], edi
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x50], r9
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x210], r8
	mov	qword ptr [rbp - 0x220], rcx
	mov	qword ptr [rbp - 0xa8], rdx
	nop	
	mov	dword ptr [rbp - 0x60], esi
	nop	
	je	.label_2226
	mov	rbp, rbp
	movaps	xmm0, xmmword ptr [rbp - 0xc0]
	lea	rsi, [rsi]
	movaps	xmmword ptr [rbp - 0x170], xmm0
	nop	
	movaps	xmm1, xmmword ptr [rbp - 0x1f0]
	mov	rsp, rsp
	movaps	xmmword ptr [rbp - 0x160], xmm1
	movaps	xmm2, xmmword ptr [rbp - 0x1d0]
	mov	rbp, rbp
	movaps	xmmword ptr [rbp - 0x150], xmm2
	lea	rsi, [rsi]
	movaps	xmm3, xmmword ptr [rbp - 0x230]
	mov	rsp, rsp
	movaps	xmmword ptr [rbp - 0x140], xmm3
	lea	rsi, [rsi]
	movaps	xmm4, xmmword ptr [rbp - 0xd0]
	mov	rbp, rbp
	movaps	xmmword ptr [rbp - 0x130], xmm4
	mov	rbp, rbp
	movaps	xmm5, xmmword ptr [rbp - 0x70]
	movaps	xmmword ptr [rbp - 0x120], xmm5
	mov	rsp, rsp
	movaps	xmm6, xmmword ptr [rbp - 0x40]
	lea	rdi, [rdi]
	movaps	xmmword ptr [rbp - 0x110], xmm6
	mov	rsp, rsp
	movaps	xmm7, xmmword ptr [rbp - 0x80]
	movaps	xmmword ptr [rbp - 0x100], xmm7
.label_2226:
	mov	rax, qword ptr [rbp - 0x50]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x178], rax
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x210]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x180], rcx
	mov	rdx, qword ptr [rbp - 0x220]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x188], rdx
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0xa8]
	mov	qword ptr [rbp - 0x190], rsi
	mov	edi, dword ptr [rbp - 0x60]
	mov	r8d, dword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x1c], r8d
	mov	dword ptr [rbp - 0x1a4], edi
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x5c], 0xffffffff
	lea	rsi, [rsi]
	lea	r9, [rbp - 0x1a0]
	mov	qword ptr [rbp - 0x1b0], r9
	lea	r9, [rbp + 0x10]
	mov	qword ptr [rbp - 0x1b8], r9
	mov	dword ptr [rbp - 0x1bc], 0x30
	mov	dword ptr [rbp - 0x1c0], 0x10
	mov	edi, dword ptr [rbp - 0x1a4]
	test	edi, edi
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x94], edi
	mov	rsp, rsp
	je	.label_2230
	nop	
	jmp	.label_2240
.label_2240:
	nop	
	mov	eax, dword ptr [rbp - 0x94]
	sub	eax, 0x406
	mov	dword ptr [rbp - 0x214], eax
	je	.label_2241
	jmp	.label_2217
.label_2230:
	lea	rdi, [rdi]
	lea	rax, [rbp - 0x1c0]
	mov	ecx, dword ptr [rbp - 0x1c0]
	cmp	ecx, 0x28
	mov	qword ptr [rbp - 0xd8], rax
	nop	
	mov	dword ptr [rbp - 0x1f8], ecx
	ja	.label_2216
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x1f8]
	movsxd	rcx, eax
	mov	rdx, qword ptr [rbp - 0xd8]
	add	rcx, qword ptr [rdx + 0x10]
	add	eax, 8
	lea	rsi, [rsi]
	mov	dword ptr [rdx], eax
	mov	qword ptr [rbp - 0xe8], rcx
	lea	rsi, [rsi]
	jmp	.label_2225
.label_2216:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0xd8]
	mov	rcx, qword ptr [rax + 8]
	mov	rdx, rcx
	mov	rbp, rbp
	add	rcx, 8
	mov	rsp, rsp
	mov	qword ptr [rax + 8], rcx
	mov	qword ptr [rbp - 0xe8], rdx
.label_2225:
	mov	rax, qword ptr [rbp - 0xe8]
	mov	ecx, dword ptr [rax]
	nop	
	mov	dword ptr [rbp - 0xe0], ecx
	mov	edi, dword ptr [rbp - 0x1c]
	mov	esi, dword ptr [rbp - 0xe0]
	call	rpl_fcntl_DUPFD
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x5c], eax
	jmp	.label_2222
.label_2241:
	lea	rsi, [rsi]
	lea	rax, [rbp - 0x1c0]
	nop	
	mov	ecx, dword ptr [rbp - 0x1c0]
	mov	rsp, rsp
	cmp	ecx, 0x28
	nop	
	mov	qword ptr [rbp - 0x88], rax
	mov	dword ptr [rbp - 0x24], ecx
	mov	rsp, rsp
	ja	.label_2224
	mov	eax, dword ptr [rbp - 0x24]
	lea	rsi, [rsi]
	movsxd	rcx, eax
	mov	rdx, qword ptr [rbp - 0x88]
	mov	rsp, rsp
	add	rcx, qword ptr [rdx + 0x10]
	add	eax, 8
	mov	dword ptr [rdx], eax
	mov	qword ptr [rbp - 0xa0], rcx
	mov	rsp, rsp
	jmp	.label_2237
.label_2224:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x88]
	mov	rcx, qword ptr [rax + 8]
	mov	rdx, rcx
	add	rcx, 8
	lea	rdi, [rdi]
	mov	qword ptr [rax + 8], rcx
	mov	qword ptr [rbp - 0xa0], rdx
.label_2237:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0xa0]
	lea	rdi, [rdi]
	mov	ecx, dword ptr [rax]
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x54], ecx
	mov	edi, dword ptr [rbp - 0x1c]
	mov	esi, dword ptr [rbp - 0x54]
	call	rpl_fcntl_DUPFD_CLOEXEC
	mov	dword ptr [rbp - 0x5c], eax
	jmp	.label_2222
.label_2217:
	mov	eax, dword ptr [rbp - 0x1a4]
	test	eax, eax
	nop	
	mov	dword ptr [rbp - 0x10], eax
	lea	rdi, [rdi]
	je	.label_2215
	nop	
	jmp	.label_2239
.label_2239:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x10]
	sub	eax, 1
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x2c], eax
	mov	rsp, rsp
	je	.label_2221
	jmp	.label_2244
.label_2244:
	mov	eax, dword ptr [rbp - 0x10]
	sub	eax, 2
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x28], eax
	mov	rsp, rsp
	je	.label_2215
	nop	
	jmp	.label_2220
.label_2220:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x10]
	sub	eax, 3
	nop	
	mov	dword ptr [rbp - 0x14], eax
	lea	rdi, [rdi]
	je	.label_2221
	nop	
	jmp	.label_2229
.label_2229:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x10]
	sub	eax, 4
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x234], eax
	nop	
	je	.label_2215
	lea	rsi, [rsi]
	jmp	.label_2236
.label_2236:
	mov	eax, dword ptr [rbp - 0x10]
	mov	rbp, rbp
	sub	eax, 8
	mov	dword ptr [rbp - 8], eax
	mov	rsp, rsp
	je	.label_2215
	lea	rsi, [rsi]
	jmp	.label_2242
.label_2242:
	mov	eax, dword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	sub	eax, 9
	mov	dword ptr [rbp - 0x1f4], eax
	je	.label_2221
	mov	rsp, rsp
	jmp	.label_2219
.label_2219:
	mov	eax, dword ptr [rbp - 0x10]
	sub	eax, 0xa
	mov	dword ptr [rbp - 0xdc], eax
	je	.label_2215
	jmp	.label_2223
.label_2223:
	mov	eax, dword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	sub	eax, 0xb
	nop	
	mov	dword ptr [rbp - 0x23c], eax
	nop	
	je	.label_2221
	lea	rsi, [rsi]
	jmp	.label_2234
.label_2234:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x10]
	sub	eax, 0x400
	mov	rsp, rsp
	mov	dword ptr [rbp - 4], eax
	lea	rdi, [rdi]
	je	.label_2215
	jmp	.label_2238
.label_2238:
	nop	
	mov	eax, dword ptr [rbp - 0x10]
	sub	eax, 0x401
	mov	dword ptr [rbp - 0x1fc], eax
	je	.label_2221
	mov	rsp, rsp
	jmp	.label_2245
.label_2245:
	mov	eax, dword ptr [rbp - 0x10]
	nop	
	sub	eax, 0x402
	mov	rsp, rsp
	mov	dword ptr [rbp - 0xc], eax
	mov	rsp, rsp
	je	.label_2215
	lea	rsi, [rsi]
	jmp	.label_2231
.label_2231:
	mov	eax, dword ptr [rbp - 0x10]
	mov	rsp, rsp
	add	eax, 0xfffffbfa
	sub	eax, 2
	mov	dword ptr [rbp - 0x18], eax
	jb	.label_2215
	nop	
	jmp	.label_2233
.label_2233:
	nop	
	mov	eax, dword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	sub	eax, 0x408
	mov	dword ptr [rbp - 0x240], eax
	lea	rdi, [rdi]
	jne	.label_2235
	lea	rdi, [rdi]
	jmp	.label_2221
.label_2221:
	mov	edi, dword ptr [rbp - 0x1c]
	mov	esi, dword ptr [rbp - 0x1a4]
	mov	rsp, rsp
	mov	al, 0
	lea	rdi, [rdi]
	call	fcntl
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x5c], eax
	lea	rsi, [rsi]
	jmp	.label_2227
.label_2215:
	nop	
	lea	rax, [rbp - 0x1c0]
	nop	
	mov	ecx, dword ptr [rbp - 0x1c0]
	cmp	ecx, 0x28
	mov	qword ptr [rbp - 0xf0], rax
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x58], ecx
	lea	rsi, [rsi]
	ja	.label_2218
	mov	eax, dword ptr [rbp - 0x58]
	mov	rbp, rbp
	movsxd	rcx, eax
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0xf0]
	add	rcx, qword ptr [rdx + 0x10]
	nop	
	add	eax, 8
	mov	rbp, rbp
	mov	dword ptr [rdx], eax
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x208], rcx
	mov	rbp, rbp
	jmp	.label_2228
.label_2218:
	mov	rax, qword ptr [rbp - 0xf0]
	mov	rcx, qword ptr [rax + 8]
	mov	rdx, rcx
	add	rcx, 8
	mov	qword ptr [rax + 8], rcx
	nop	
	mov	qword ptr [rbp - 0x208], rdx
.label_2228:
	nop	
	mov	rax, qword ptr [rbp - 0x208]
	mov	ecx, dword ptr [rax]
	nop	
	mov	dword ptr [rbp - 0xac], ecx
	mov	rbp, rbp
	mov	edi, dword ptr [rbp - 0x1c]
	nop	
	mov	esi, dword ptr [rbp - 0x1a4]
	lea	rdi, [rdi]
	mov	edx, dword ptr [rbp - 0xac]
	nop	
	mov	al, 0
	call	fcntl
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x5c], eax
	jmp	.label_2227
.label_2235:
	lea	rax, [rbp - 0x1c0]
	mov	ecx, dword ptr [rbp - 0x1c0]
	lea	rsi, [rsi]
	cmp	ecx, 0x28
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x48], rax
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x238], ecx
	lea	rdi, [rdi]
	ja	.label_2232
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x238]
	lea	rdi, [rdi]
	movsxd	rcx, eax
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x48]
	lea	rsi, [rsi]
	add	rcx, qword ptr [rdx + 0x10]
	add	eax, 8
	mov	dword ptr [rdx], eax
	mov	qword ptr [rbp - 0x90], rcx
	mov	rsp, rsp
	jmp	.label_2243
.label_2232:
	mov	rax, qword ptr [rbp - 0x48]
	mov	rbp, rbp
	mov	rcx, qword ptr [rax + 8]
	mov	rdx, rcx
	add	rcx, 8
	mov	qword ptr [rax + 8], rcx
	nop	
	mov	qword ptr [rbp - 0x90], rdx
.label_2243:
	mov	rax, qword ptr [rbp - 0x90]
	mov	rax, qword ptr [rax]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x1d8], rax
	nop	
	mov	edi, dword ptr [rbp - 0x1c]
	lea	rsi, [rsi]
	mov	esi, dword ptr [rbp - 0x1a4]
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x1d8]
	mov	al, 0
	call	fcntl
	mov	dword ptr [rbp - 0x5c], eax
.label_2227:
	jmp	.label_2222
.label_2222:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x5c]
	mov	rbp, rbp
	add	rsp, 0x240
	pop	rbp
	mov	rsp, rsp
	ret	
	.section	.text
	.align	32
	#Procedure 0x426810

	.globl rpl_fcntl_DUPFD
	.type rpl_fcntl_DUPFD, @function
rpl_fcntl_DUPFD:
	lea	rdi, [rdi]
	push	rbp
	mov	rbp, rsp
	mov	rsp, rsp
	sub	rsp, 0x10
	nop	
	xor	eax, eax
	mov	dword ptr [rbp - 0xc], edi
	mov	dword ptr [rbp - 4], esi
	lea	rsi, [rsi]
	mov	edi, dword ptr [rbp - 0xc]
	mov	edx, dword ptr [rbp - 4]
	mov	rsp, rsp
	mov	esi, eax
	nop	
	mov	al, 0
	mov	rsp, rsp
	call	fcntl
	mov	dword ptr [rbp - 8], eax
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 8]
	add	rsp, 0x10
	mov	rbp, rbp
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x426860

	.globl rpl_fcntl_DUPFD_CLOEXEC
	.type rpl_fcntl_DUPFD_CLOEXEC, @function
rpl_fcntl_DUPFD_CLOEXEC:
	mov	rsp, rsp
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	xor	eax, eax
	mov	dword ptr [rbp - 8], edi
	mov	rsp, rsp
	mov	dword ptr [rbp - 0xc], esi
	lea	rsi, [rsi]
	cmp	eax,  dword ptr [dword ptr [rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec]]
	jg	.label_2251
	lea	rsi, [rsi]
	mov	esi, 0x406
	nop	
	mov	edi, dword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	edx, dword ptr [rbp - 0xc]
	mov	al, 0
	call	fcntl
	lea	rsi, [rsi]
	xor	edx, edx
	nop	
	mov	dword ptr [rbp - 0x18], eax
	nop	
	cmp	edx, dword ptr [rbp - 0x18]
	jle	.label_2253
	nop	
	call	__errno_location
	cmp	dword ptr [rax], 0x16
	je	.label_2252
.label_2253:
	mov	dword ptr [dword ptr [rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec]],  1
	jmp	.label_2246
.label_2252:
	mov	edi, dword ptr [rbp - 8]
	mov	esi, dword ptr [rbp - 0xc]
	lea	rdi, [rdi]
	call	rpl_fcntl_DUPFD
	mov	dword ptr [rbp - 0x18], eax
	mov	rsp, rsp
	cmp	dword ptr [rbp - 0x18], 0
	mov	rbp, rbp
	jl	.label_2250
	mov	rbp, rbp
	mov	dword ptr [dword ptr [rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec]],  0xffffffff
.label_2250:
	mov	rbp, rbp
	jmp	.label_2246
.label_2246:
	jmp	.label_2247
.label_2251:
	mov	edi, dword ptr [rbp - 8]
	mov	esi, dword ptr [rbp - 0xc]
	call	rpl_fcntl_DUPFD
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x18], eax
.label_2247:
	xor	eax, eax
	cmp	eax, dword ptr [rbp - 0x18]
	jg	.label_2249
	cmp	dword ptr [dword ptr [rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec]],  -1
	mov	rsp, rsp
	jne	.label_2249
	mov	esi, 1
	mov	edi, dword ptr [rbp - 0x18]
	mov	al, 0
	call	fcntl
	nop	
	mov	dword ptr [rbp - 0x14], eax
	mov	rbp, rbp
	cmp	dword ptr [rbp - 0x14], 0
	jl	.label_2248
	mov	esi, 2
	mov	rsp, rsp
	mov	edi, dword ptr [rbp - 0x18]
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x14]
	mov	rbp, rbp
	or	eax, 1
	lea	rdi, [rdi]
	mov	edx, eax
	mov	al, 0
	call	fcntl
	cmp	eax, -1
	jne	.label_2254
.label_2248:
	lea	rdi, [rdi]
	call	__errno_location
	mov	ecx, dword ptr [rax]
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x10], ecx
	mov	edi, dword ptr [rbp - 0x18]
	call	close
	mov	ecx, dword ptr [rbp - 0x10]
	mov	dword ptr [rbp - 0x1c], eax
	mov	rbp, rbp
	mov	dword ptr [rbp - 4], ecx
	call	__errno_location
	mov	rsp, rsp
	mov	ecx, dword ptr [rbp - 4]
	nop	
	mov	dword ptr [rax], ecx
	mov	dword ptr [rbp - 0x18], 0xffffffff
.label_2254:
	jmp	.label_2249
.label_2249:
	mov	eax, dword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	add	rsp, 0x20
	pop	rbp
	nop	
	ret	
	.section	.text
	.align	32
	#Procedure 0x4269e0

	.globl rpl_nl_langinfo
	.type rpl_nl_langinfo, @function
rpl_nl_langinfo:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	dword ptr [rbp - 4], edi
	lea	rsi, [rsi]
	add	edi, 0xffffd828
	lea	rsi, [rsi]
	sub	edi, 0xb
	mov	dword ptr [rbp - 8], edi
	ja	.label_2255
	jmp	.label_2257
.label_2257:
	mov	eax, dword ptr [rbp - 4]
	sub	eax, 0x27d8
	mov	rbp, rbp
	add	eax, 0x2001a
	mov	rsp, rsp
	mov	dword ptr [rbp - 4], eax
	jmp	.label_2256
.label_2255:
	lea	rsi, [rsi]
	jmp	.label_2256
.label_2256:
	mov	edi, dword ptr [rbp - 4]
	call	nl_langinfo
	add	rsp, 0x10
	nop	
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x426a40
	.globl c_isalnum
	.type c_isalnum, @function
c_isalnum:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	mov	eax, edi
	add	eax, -0x30
	sub	eax, 0xa
	mov	dword ptr [rbp - 0xc], edi
	mov	dword ptr [rbp - 0x10], eax
	jb	.label_2258
	jmp	.label_2261
.label_2261:
	mov	eax, dword ptr [rbp - 0xc]
	add	eax, -0x41
	sub	eax, 0x1a
	mov	dword ptr [rbp - 0x14], eax
	jb	.label_2258
	jmp	.label_2259
.label_2259:
	mov	eax, dword ptr [rbp - 0xc]
	add	eax, -0x61
	sub	eax, 0x19
	mov	dword ptr [rbp - 0x18], eax
	ja	.label_2260
	jmp	.label_2258
.label_2258:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_2262
.label_2260:
	mov	byte ptr [rbp - 1], 0
.label_2262:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x426ab0
	.globl c_isalpha
	.type c_isalpha, @function
c_isalpha:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	mov	eax, edi
	add	eax, -0x41
	sub	eax, 0x1a
	mov	dword ptr [rbp - 0xc], edi
	mov	dword ptr [rbp - 0x10], eax
	jb	.label_2263
	jmp	.label_2266
.label_2266:
	mov	eax, dword ptr [rbp - 0xc]
	add	eax, -0x61
	sub	eax, 0x19
	mov	dword ptr [rbp - 0x14], eax
	ja	.label_2264
	jmp	.label_2263
.label_2263:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_2265
.label_2264:
	mov	byte ptr [rbp - 1], 0
.label_2265:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x426b00
	.globl c_isascii
	.type c_isascii, @function
c_isascii:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	sub	edi, 0x7f
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_2267
	jmp	.label_2268
.label_2268:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_2269
.label_2267:
	mov	byte ptr [rbp - 1], 0
.label_2269:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x426b30
	.globl c_isblank
	.type c_isblank, @function
c_isblank:

	push	rbp
	mov	rbp, rsp
	mov	al, 1
	mov	dword ptr [rbp - 4], edi
	cmp	dword ptr [rbp - 4], 0x20
	mov	byte ptr [rbp - 5], al
	je	.label_2270
	cmp	dword ptr [rbp - 4], 9
	sete	al
	mov	byte ptr [rbp - 5], al
.label_2270:
	mov	al, byte ptr [rbp - 5]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x426b60
	.globl c_iscntrl
	.type c_iscntrl, @function
c_iscntrl:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	mov	eax, edi
	sub	edi, 0x20
	mov	dword ptr [rbp - 0xc], eax
	mov	dword ptr [rbp - 0x10], edi
	jb	.label_2271
	jmp	.label_2273
.label_2273:
	mov	eax, dword ptr [rbp - 0xc]
	sub	eax, 0x7f
	mov	dword ptr [rbp - 0x14], eax
	jne	.label_2274
	jmp	.label_2271
.label_2271:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_2272
.label_2274:
	mov	byte ptr [rbp - 1], 0
.label_2272:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x426bb0
	.globl c_isdigit
	.type c_isdigit, @function
c_isdigit:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	add	edi, -0x30
	sub	edi, 9
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_2275
	jmp	.label_2277
.label_2277:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_2276
.label_2275:
	mov	byte ptr [rbp - 1], 0
.label_2276:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x426bf0
	.globl c_isgraph
	.type c_isgraph, @function
c_isgraph:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	add	edi, -0x21
	sub	edi, 0x5d
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_2278
	jmp	.label_2280
.label_2280:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_2279
.label_2278:
	mov	byte ptr [rbp - 1], 0
.label_2279:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x426c30
	.globl c_islower
	.type c_islower, @function
c_islower:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	add	edi, -0x61
	sub	edi, 0x19
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_2281
	jmp	.label_2283
.label_2283:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_2282
.label_2281:
	mov	byte ptr [rbp - 1], 0
.label_2282:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x426c70
	.globl c_isprint
	.type c_isprint, @function
c_isprint:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	add	edi, -0x20
	sub	edi, 0x5e
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_2284
	jmp	.label_2286
.label_2286:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_2285
.label_2284:
	mov	byte ptr [rbp - 1], 0
.label_2285:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x426cb0
	.globl c_ispunct
	.type c_ispunct, @function
c_ispunct:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	mov	eax, edi
	add	eax, -0x21
	sub	eax, 0xf
	mov	dword ptr [rbp - 0xc], edi
	mov	dword ptr [rbp - 0x10], eax
	jb	.label_2287
	jmp	.label_2290
.label_2290:
	mov	eax, dword ptr [rbp - 0xc]
	add	eax, -0x3a
	sub	eax, 7
	mov	dword ptr [rbp - 0x14], eax
	jb	.label_2287
	jmp	.label_2291
.label_2291:
	mov	eax, dword ptr [rbp - 0xc]
	add	eax, -0x5b
	sub	eax, 6
	mov	dword ptr [rbp - 0x18], eax
	jb	.label_2287
	jmp	.label_2289
.label_2289:
	mov	eax, dword ptr [rbp - 0xc]
	add	eax, -0x7b
	sub	eax, 3
	mov	dword ptr [rbp - 0x1c], eax
	ja	.label_2292
	jmp	.label_2287
.label_2287:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_2288
.label_2292:
	mov	byte ptr [rbp - 1], 0
.label_2288:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x426d30
	.globl c_isspace
	.type c_isspace, @function
c_isspace:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	mov	eax, edi
	add	eax, -9
	sub	eax, 5
	mov	dword ptr [rbp - 0xc], edi
	mov	dword ptr [rbp - 0x10], eax
	jb	.label_2293
	jmp	.label_2295
.label_2295:
	mov	eax, dword ptr [rbp - 0xc]
	sub	eax, 0x20
	mov	dword ptr [rbp - 0x14], eax
	jne	.label_2296
	jmp	.label_2293
.label_2293:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_2294
.label_2296:
	mov	byte ptr [rbp - 1], 0
.label_2294:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x426d80
	.globl c_isupper
	.type c_isupper, @function
c_isupper:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	add	edi, -0x41
	sub	edi, 0x19
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_2297
	jmp	.label_2299
.label_2299:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_2298
.label_2297:
	mov	byte ptr [rbp - 1], 0
.label_2298:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x426dc0
	.globl c_isxdigit
	.type c_isxdigit, @function
c_isxdigit:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	mov	eax, edi
	add	eax, -0x30
	sub	eax, 0xa
	mov	dword ptr [rbp - 0xc], edi
	mov	dword ptr [rbp - 0x10], eax
	jb	.label_2300
	jmp	.label_2303
.label_2303:
	mov	eax, dword ptr [rbp - 0xc]
	add	eax, -0x41
	sub	eax, 6
	mov	dword ptr [rbp - 0x14], eax
	jb	.label_2300
	jmp	.label_2301
.label_2301:
	mov	eax, dword ptr [rbp - 0xc]
	add	eax, -0x61
	sub	eax, 5
	mov	dword ptr [rbp - 0x18], eax
	ja	.label_2302
	jmp	.label_2300
.label_2300:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_2304
.label_2302:
	mov	byte ptr [rbp - 1], 0
.label_2304:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x426e30

	.globl c_tolower
	.type c_tolower, @function
c_tolower:
	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	add	edi, -0x41
	sub	edi, 0x19
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_2305
	jmp	.label_2307
.label_2307:
	mov	eax, dword ptr [rbp - 8]
	sub	eax, 0x41
	add	eax, 0x61
	mov	dword ptr [rbp - 4], eax
	jmp	.label_2306
.label_2305:
	mov	eax, dword ptr [rbp - 8]
	mov	dword ptr [rbp - 4], eax
.label_2306:
	mov	eax, dword ptr [rbp - 4]
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x426e70
	.globl c_toupper
	.type c_toupper, @function
c_toupper:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	add	edi, -0x61
	sub	edi, 0x19
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_2308
	jmp	.label_2310
.label_2310:
	mov	eax, dword ptr [rbp - 8]
	sub	eax, 0x61
	add	eax, 0x41
	mov	dword ptr [rbp - 4], eax
	jmp	.label_2309
.label_2308:
	mov	eax, dword ptr [rbp - 8]
	mov	dword ptr [rbp - 4], eax
.label_2309:
	mov	eax, dword ptr [rbp - 4]
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x426eb0

	.globl fopen_safer
	.type fopen_safer, @function
fopen_safer:
	lea	rdi, [rdi]
	push	rbp
	mov	rbp, rsp
	lea	rsi, [rsi]
	sub	rsp, 0x50
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x48], rdi
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x40], rsi
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x48]
	mov	rsi, qword ptr [rbp - 0x40]
	call	fopen
	mov	qword ptr [rbp - 0x28], rax
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x28], 0
	je	.label_2312
	mov	rdi, qword ptr [rbp - 0x28]
	call	fileno
	mov	rbp, rbp
	xor	ecx, ecx
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x34], eax
	mov	rsp, rsp
	cmp	ecx, dword ptr [rbp - 0x34]
	jg	.label_2311
	cmp	dword ptr [rbp - 0x34], 2
	lea	rsi, [rsi]
	jg	.label_2311
	mov	edi, dword ptr [rbp - 0x34]
	mov	rbp, rbp
	call	dup_safer
	mov	dword ptr [rbp - 0x14], eax
	mov	rsp, rsp
	cmp	dword ptr [rbp - 0x14], 0
	lea	rsi, [rsi]
	jge	.label_2314
	call	__errno_location
	mov	rbp, rbp
	mov	ecx, dword ptr [rax]
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0xc], ecx
	mov	rdi, qword ptr [rbp - 0x28]
	call	rpl_fclose
	mov	ecx, dword ptr [rbp - 0xc]
	mov	dword ptr [rbp - 4], eax
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x18], ecx
	mov	rbp, rbp
	call	__errno_location
	mov	rbp, rbp
	mov	ecx, dword ptr [rbp - 0x18]
	mov	dword ptr [rax], ecx
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x30], 0
	jmp	.label_2316
.label_2314:
	mov	rdi, qword ptr [rbp - 0x28]
	call	rpl_fclose
	lea	rsi, [rsi]
	cmp	eax, 0
	mov	rsp, rsp
	jne	.label_2315
	mov	edi, dword ptr [rbp - 0x14]
	mov	rsi, qword ptr [rbp - 0x40]
	mov	rbp, rbp
	call	fdopen
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x28], rax
	cmp	rax, 0
	mov	rsp, rsp
	jne	.label_2313
.label_2315:
	lea	rdi, [rdi]
	call	__errno_location
	mov	rbp, rbp
	mov	ecx, dword ptr [rax]
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 8], ecx
	nop	
	mov	edi, dword ptr [rbp - 0x14]
	call	close
	mov	rbp, rbp
	mov	ecx, dword ptr [rbp - 8]
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x1c], eax
	mov	dword ptr [rbp - 0x10], ecx
	lea	rsi, [rsi]
	call	__errno_location
	mov	ecx, dword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	dword ptr [rax], ecx
	nop	
	mov	qword ptr [rbp - 0x30], 0
	jmp	.label_2316
.label_2313:
	jmp	.label_2311
.label_2311:
	jmp	.label_2312
.label_2312:
	nop	
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x30], rax
.label_2316:
	nop	
	mov	rax, qword ptr [rbp - 0x30]
	lea	rdi, [rdi]
	add	rsp, 0x50
	mov	rbp, rbp
	pop	rbp
	lea	rdi, [rdi]
	ret	
	.section	.text
	.align	32
	#Procedure 0x4270e0

	.globl stat
	.type stat, @function
stat:
	mov	rdx, rsi
	mov	rsi, rdi
	mov	edi, 1
	jmp	__xstat
	.section	.text
	.align	32
	#Procedure 0x4270f0

	.globl __fstat
	.type __fstat, @function
__fstat:
	mov	rdx, rsi
	mov	esi, edi
	mov	edi, 1
	jmp	__fxstat
	.section	.text
	.align	32
	#Procedure 0x427100

	.globl __lstat
	.type __lstat, @function
__lstat:
	mov	rdx, rsi
	mov	rsi, rdi
	mov	edi, 1
	jmp	__lxstat
	.section	.text
	.align	32
	#Procedure 0x427110

	.globl fstatat
	.type fstatat, @function
fstatat:
	mov	r8d, ecx
	mov	rcx, rdx
	mov	rdx, rsi
	mov	esi, edi
	mov	edi, 1
	jmp	__fxstatat
	.section	.text
	.align	32
	#Procedure 0x427130

	.globl __mknod
	.type __mknod, @function
__mknod:
	sub	rsp, 0x18
	lea	rcx, [rsp + 8]
	mov	qword ptr [rsp + 8], rdx
	mov	edx, esi
	mov	rsi, rdi
	xor	edi, edi
	call	__xmknod
	add	rsp, 0x18
	ret	