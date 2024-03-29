	.section	.text
	.align	16
	#Procedure 0x402c50

	.globl usage
	.type usage, @function
usage:
	mov	rsp, rsp
	push	rbp
	lea	rdi, [rdi]
	mov	rbp, rsp
	mov	rsp, rsp
	sub	rsp, 0x70
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 4], edi
	cmp	dword ptr [rbp - 4], 0
	mov	rsp, rsp
	je	.label_8
	jmp	.label_9
.label_9:
	mov	rsp, rsp
	movabs	rdi, OFFSET FLAT:.str
	mov	rax,  qword ptr [word ptr [stderr]]
	mov	qword ptr [rbp - 0x10], rax
	mov	rsp, rsp
	call	gettext
	mov	rdx,  qword ptr [word ptr [program_name]]
	nop	
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	rsi, rax
	mov	al, 0
	call	fprintf
	mov	dword ptr [rbp - 0x14], eax
	jmp	.label_7
.label_8:
	movabs	rdi, OFFSET FLAT:.str.1
	call	gettext
	mov	rsi,  qword ptr [word ptr [program_name]]
	mov	rbp, rbp
	mov	rdx,  qword ptr [word ptr [program_name]]
	mov	rdi, rax
	mov	al, 0
	mov	rsp, rsp
	call	printf
	movabs	rdi, OFFSET FLAT:.str.2
	mov	dword ptr [rbp - 0x18], eax
	lea	rdi, [rdi]
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	lea	rsi, [rsi]
	mov	rdi, rax
	mov	rbp, rbp
	call	fputs_unlocked
	mov	dword ptr [rbp - 0x1c], eax
	call	emit_stdin_note
	mov	rsp, rsp
	call	emit_mandatory_arg_note
	movabs	rdi, OFFSET FLAT:.str.3
	call	gettext
	nop	
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rbp, rbp
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:.str.4
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x20], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	lea	rdi, [rdi]
	call	fputs_unlocked
	nop	
	movabs	rdi, OFFSET FLAT:.str.5
	mov	dword ptr [rbp - 0x24], eax
	call	gettext
	mov	rbp, rbp
	mov	rsi,  qword ptr [word ptr [stdout]]
	lea	rdi, [rdi]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:.str.6
	mov	dword ptr [rbp - 0x28], eax
	lea	rdi, [rdi]
	call	gettext
	mov	rsp, rsp
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	mov	rsp, rsp
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:.str.7
	mov	dword ptr [rbp - 0x2c], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	lea	rdi, [rdi]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:.str.8
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x30], eax
	call	gettext
	mov	rsp, rsp
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	mov	rsp, rsp
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:.str.9
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x34], eax
	lea	rsi, [rsi]
	call	gettext
	lea	rdi, [rdi]
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rsp, rsp
	mov	rdi, rax
	call	fputs_unlocked
	mov	rsp, rsp
	movabs	rdi, OFFSET FLAT:.str.10
	mov	dword ptr [rbp - 0x38], eax
	mov	rbp, rbp
	call	gettext
	mov	rbp, rbp
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:.str.11
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x3c], eax
	lea	rsi, [rsi]
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rsp, rsp
	mov	rdi, rax
	lea	rsi, [rsi]
	call	fputs_unlocked
	mov	rsp, rsp
	movabs	rdi, OFFSET FLAT:.str.12
	nop	
	mov	dword ptr [rbp - 0x40], eax
	lea	rsi, [rsi]
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	lea	rsi, [rsi]
	mov	rdi, rax
	mov	rbp, rbp
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:.str.13
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x44], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	nop	
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:.str.14
	mov	dword ptr [rbp - 0x48], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	nop	
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:.str.15
	mov	dword ptr [rbp - 0x4c], eax
	call	gettext
	movabs	rsi, OFFSET FLAT:.str.16
	mov	rdi, rax
	mov	al, 0
	lea	rdi, [rdi]
	call	printf
	nop	
	movabs	rdi, OFFSET FLAT:.str.17
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x50], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rbp, rbp
	mov	rdi, rax
	mov	rsp, rsp
	call	fputs_unlocked
	mov	rsp, rsp
	movabs	rdi, OFFSET FLAT:.str.18
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x54], eax
	mov	rsp, rsp
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	lea	rsi, [rsi]
	mov	rdi, rax
	mov	rsp, rsp
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:.str.19
	mov	dword ptr [rbp - 0x58], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rbp, rbp
	mov	rdi, rax
	lea	rdi, [rdi]
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:.str.20
	mov	dword ptr [rbp - 0x5c], eax
	mov	rbp, rbp
	call	gettext
	mov	rsp, rsp
	mov	rsi,  qword ptr [word ptr [stdout]]
	lea	rsi, [rsi]
	mov	rdi, rax
	call	fputs_unlocked
	mov	rsp, rsp
	movabs	rdi, OFFSET FLAT:.str.21
	mov	dword ptr [rbp - 0x60], eax
	lea	rsi, [rsi]
	call	gettext
	mov	rsp, rsp
	mov	rsi,  qword ptr [word ptr [stdout]]
	lea	rsi, [rsi]
	mov	rdi, rax
	mov	rbp, rbp
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:.str.22
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x64], eax
	call	emit_ancillary_info
.label_7:
	lea	rsi, [rsi]
	mov	edi, dword ptr [rbp - 4]
	call	exit
	.section	.text
	.align	16
	#Procedure 0x403040

	.globl emit_stdin_note
	.type emit_stdin_note, @function
emit_stdin_note:
	lea	rdi, [rdi]
	push	rbp
	nop	
	mov	rbp, rsp
	sub	rsp, 0x10
	movabs	rdi, OFFSET FLAT:.str.66
	mov	rbp, rbp
	call	gettext
	lea	rsi, [rsi]
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	mov	dword ptr [rbp - 4], eax
	mov	rbp, rbp
	add	rsp, 0x10
	lea	rsi, [rsi]
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x403080

	.globl emit_mandatory_arg_note
	.type emit_mandatory_arg_note, @function
emit_mandatory_arg_note:
	lea	rdi, [rdi]
	push	rbp
	nop	
	mov	rbp, rsp
	sub	rsp, 0x10
	movabs	rdi, OFFSET FLAT:.str.67
	call	gettext
	lea	rsi, [rsi]
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	nop	
	mov	dword ptr [rbp - 4], eax
	add	rsp, 0x10
	pop	rbp
	nop	
	ret	
	.section	.text
	.align	16
	#Procedure 0x4030c0

	.globl emit_ancillary_info
	.type emit_ancillary_info, @function
emit_ancillary_info:
	nop	
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x40
	lea	rdi, [rdi]
	movabs	rax, OFFSET FLAT:emit_ancillary_info.infomap
	mov	qword ptr [rbp - 8], rdi
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 8]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rax
.label_15:
	xor	eax, eax
	lea	rsi, [rsi]
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	cmp	qword ptr [rdx], 0
	mov	byte ptr [rbp - 0x21], cl
	mov	rbp, rbp
	je	.label_13
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x18]
	nop	
	mov	rsi, qword ptr [rax]
	call	strcmp
	cmp	eax, 0
	sete	cl
	lea	rsi, [rsi]
	xor	cl, 0xff
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x21], cl
.label_13:
	mov	al, byte ptr [rbp - 0x21]
	lea	rsi, [rsi]
	test	al, 1
	lea	rsi, [rsi]
	jne	.label_14
	nop	
	jmp	.label_10
.label_14:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	add	rax, 0x10
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_15
.label_10:
	mov	rax, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	cmp	qword ptr [rax + 8], 0
	mov	rsp, rsp
	je	.label_11
	mov	rax, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	mov	rax, qword ptr [rax + 8]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x10], rax
.label_11:
	movabs	rdi, OFFSET FLAT:.str.76
	lea	rdi, [rdi]
	call	gettext
	movabs	rsi, OFFSET FLAT:.str.17_0
	lea	rsi, [rsi]
	movabs	rdx, OFFSET FLAT:.str.18_0
	lea	rdi, [rdi]
	mov	rdi, rax
	nop	
	mov	al, 0
	mov	rbp, rbp
	call	printf
	lea	rdi, [rdi]
	mov	edi, 5
	xor	ecx, ecx
	mov	esi, ecx
	mov	dword ptr [rbp - 0x28], eax
	nop	
	call	setlocale
	nop	
	mov	qword ptr [rbp - 0x20], rax
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0x20], 0
	je	.label_12
	movabs	rsi, OFFSET FLAT:.str.78
	lea	rdi, [rdi]
	mov	eax, 3
	mov	rbp, rbp
	mov	edx, eax
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	call	strncmp
	mov	rsp, rsp
	cmp	eax, 0
	je	.label_12
	mov	rbp, rbp
	movabs	rdi, OFFSET FLAT:.str.79
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	lea	rdi, [rdi]
	mov	rdi, rax
	call	fputs_unlocked
	mov	dword ptr [rbp - 0x2c], eax
.label_12:
	movabs	rdi, OFFSET FLAT:.str.80
	nop	
	call	gettext
	lea	rsi, [rsi]
	movabs	rsi, OFFSET FLAT:.str.18_0
	mov	rdx, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	mov	rdi, rax
	lea	rdi, [rdi]
	mov	al, 0
	call	printf
	movabs	rdi, OFFSET FLAT:.str.81
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x30], eax
	lea	rdi, [rdi]
	call	gettext
	movabs	rdx, OFFSET FLAT:.str_0
	lea	rsi, [rsi]
	movabs	rsi, OFFSET FLAT:.str.82
	mov	rdi, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x10]
	cmp	rcx, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	cmove	rdx, rsi
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x38], rdi
	nop	
	mov	rdi, rax
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x38]
	lea	rdi, [rdi]
	mov	al, 0
	lea	rdi, [rdi]
	call	printf
	mov	dword ptr [rbp - 0x3c], eax
	mov	rsp, rsp
	add	rsp, 0x40
	mov	rbp, rbp
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4032f0

	.globl main
	.type main, @function
main:
	push	rbp
	mov	rbp, rsp
	lea	rsi, [rsi]
	sub	rsp, 0x4b0
	movabs	rax, OFFSET FLAT:.str.23
	nop	
	mov	dword ptr [rbp - 4], 0
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 8], edi
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x10], rsi
	mov	byte ptr [rbp - 0xa9], 0
	mov	rsp, rsp
	mov	dword ptr [rbp - 0xbc], 0
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0xbd], 0
	mov	byte ptr [rbp - 0xbe], 0
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0xc8], 0
	mov	byte ptr [rbp - 0xc9], 0
	mov	qword ptr [rbp - 0xd8], 0
	mov	rsp, rsp
	mov	qword ptr [rbp - 0xe0], 0
	mov	rdi, rax
	call	getenv
	mov	rsp, rsp
	cmp	rax, 0
	lea	rsi, [rsi]
	setne	cl
	and	cl, 1
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0xe1], cl
	lea	rdi, [rdi]
	call	posix2_version
	xor	edx, edx
	mov	cl, dl
	mov	rbp, rbp
	mov	edx, 0x30db0
	mov	dword ptr [rbp - 0xe8], eax
	lea	rsi, [rsi]
	cmp	edx, dword ptr [rbp - 0xe8]
	mov	byte ptr [rbp - 0x339], cl
	nop	
	jg	.label_168
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0xe8], 0x31069
	mov	rsp, rsp
	setl	al
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x339], al
.label_168:
	mov	rbp, rbp
	mov	al, byte ptr [rbp - 0x339]
	nop	
	xor	al, 0xff
	nop	
	and	al, 1
	mov	byte ptr [rbp - 0xe9], al
	mov	qword ptr [rbp - 0x100], 0
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x228], 0
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rcx]
	lea	rdi, [rdi]
	call	set_program_name
	lea	rdi, [rdi]
	mov	edi, 6
	lea	rdi, [rdi]
	movabs	rsi, OFFSET FLAT:.str_0
	call	setlocale
	nop	
	movabs	rdi, OFFSET FLAT:.str.25
	movabs	rsi, OFFSET FLAT:.str.26
	cmp	rax, 0
	setne	dl
	xor	dl, 0xff
	nop	
	xor	dl, 0xff
	and	dl, 1
	mov	byte ptr [rbp - 0x229], dl
	call	bindtextdomain
	movabs	rdi, OFFSET FLAT:.str.25
	nop	
	mov	qword ptr [rbp - 0x348], rax
	nop	
	call	textdomain
	mov	rsp, rsp
	mov	edi, 2
	mov	qword ptr [rbp - 0x350], rax
	call	initialize_exit_failure
	mov	edi, 3
	lea	rsi, [rsi]
	call	hard_locale
	mov	edi, 2
	and	al, 1
	mov	byte ptr [byte ptr [hard_LC_COLLATE]],  al
	call	hard_locale
	lea	rdi, [rdi]
	and	al, 1
	mov	rsp, rsp
	mov	byte ptr [byte ptr [hard_LC_TIME]],  al
	call	localeconv
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x238], rax
	nop	
	mov	rax, qword ptr [rbp - 0x238]
	mov	rax, qword ptr [rax]
	movsx	edi, byte ptr [rax]
	call	to_uchar
	movzx	edi, al
	mov	dword ptr [dword ptr [decimal_point]],  edi
	mov	rsp, rsp
	cmp	dword ptr [dword ptr [decimal_point]],  0
	je	.label_50
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x238]
	mov	rsp, rsp
	mov	rax, qword ptr [rax]
	movsx	ecx, byte ptr [rax + 1]
	mov	rbp, rbp
	cmp	ecx, 0
	je	.label_59
.label_50:
	lea	rsi, [rsi]
	mov	dword ptr [dword ptr [decimal_point]],  0x2e
.label_59:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x238]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax + 8]
	movsx	edi, byte ptr [rax]
	call	to_uchar
	lea	rdi, [rdi]
	movzx	edi, al
	nop	
	mov	dword ptr [dword ptr [thousands_sep]],  edi
	mov	rbp, rbp
	cmp	dword ptr [dword ptr [thousands_sep]],  0
	mov	rbp, rbp
	je	.label_73
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x238]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax + 8]
	movsx	ecx, byte ptr [rax + 1]
	cmp	ecx, 0
	mov	rbp, rbp
	je	.label_82
.label_73:
	mov	dword ptr [dword ptr [thousands_sep]],  0xffffffff
.label_82:
	nop	
	mov	byte ptr [byte ptr [have_read_stdin]],  0
	mov	rsp, rsp
	call	inittables
	lea	rsi, [rsi]
	movabs	rdi, OFFSET FLAT:caught_signals
	call	sigemptyset
	nop	
	mov	qword ptr [rbp - 0x240], 0
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x354], eax
.label_120:
	nop	
	cmp	qword ptr [rbp - 0x240], 0xb
	lea	rsi, [rsi]
	jae	.label_97
	nop	
	xor	eax, eax
	mov	esi, eax
	lea	rdi, [rdi]
	lea	rdx, [rbp - 0x2d8]
	nop	
	mov	rcx, qword ptr [rbp - 0x240]
	mov	edi,  dword ptr [dword ptr [+ (rcx * 4) + main.sig]]
	call	sigaction
	mov	edi, 1
	mov	rsp, rsp
	mov	ecx, edi
	cmp	qword ptr [rbp - 0x2d8], rcx
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x358], eax
	je	.label_109
	movabs	rdi, OFFSET FLAT:caught_signals
	mov	rax, qword ptr [rbp - 0x240]
	mov	esi,  dword ptr [dword ptr [+ (rax * 4) + main.sig]]
	call	sigaddset
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x35c], eax
.label_109:
	lea	rdi, [rdi]
	jmp	.label_117
.label_117:
	mov	rax, qword ptr [rbp - 0x240]
	add	rax, 1
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x240], rax
	jmp	.label_120
.label_97:
	mov	rbp, rbp
	movabs	rax, OFFSET FLAT:caught_signals
	nop	
	mov	ecx, 0x80
	mov	edx, ecx
	lea	rsi, [rbp - 0x2d8]
	mov	rbp, rbp
	movabs	rdi, OFFSET FLAT:sighandler
	mov	qword ptr [rbp - 0x2d8], rdi
	mov	rsp, rsp
	add	rsi, 8
	mov	rdi, rsi
	mov	rsi, rax
	call	memcpy
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x250], 0
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x240], 0
.label_153:
	nop	
	cmp	qword ptr [rbp - 0x240], 0xb
	lea	rsi, [rsi]
	jae	.label_141
	lea	rdi, [rdi]
	movabs	rdi, OFFSET FLAT:caught_signals
	mov	rax, qword ptr [rbp - 0x240]
	lea	rdi, [rdi]
	mov	esi,  dword ptr [dword ptr [+ (rax * 4) + main.sig]]
	call	sigismember
	lea	rdi, [rdi]
	cmp	eax, 0
	nop	
	je	.label_157
	lea	rsi, [rbp - 0x2d8]
	nop	
	xor	eax, eax
	mov	edx, eax
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x240]
	mov	edi,  dword ptr [dword ptr [+ (rcx * 4) + main.sig]]
	call	sigaction
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x360], eax
.label_157:
	nop	
	jmp	.label_151
.label_151:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x240]
	add	rax, 1
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x240], rax
	mov	rsp, rsp
	jmp	.label_153
.label_141:
	mov	edi, 0x11
	xor	eax, eax
	lea	rdi, [rdi]
	mov	esi, eax
	nop	
	call	signal
	movabs	rdi, OFFSET FLAT:exit_cleanup
	mov	qword ptr [rbp - 0x368], rax
	call	atexit
	mov	rbp, rbp
	lea	rdi, [rbp - 0xa8]
	mov	dword ptr [rbp - 0x36c], eax
	mov	rsp, rsp
	call	key_init
	mov	rsp, rsp
	mov	ecx, 8
	lea	rdi, [rdi]
	mov	esi, ecx
	nop	
	mov	qword ptr [rbp - 0xa8], -1
	movsxd	rdi, dword ptr [rbp - 8]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x378], rax
	call	xnmalloc
	mov	qword ptr [rbp - 0xf8], rax
.label_143:
	mov	dword ptr [rbp - 0x2dc], 0xffffffff
	nop	
	cmp	dword ptr [rbp - 0xbc], -1
	je	.label_16
	test	byte ptr [rbp - 0xe1], 1
	je	.label_35
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0xe0], 0
	nop	
	je	.label_35
	mov	rbp, rbp
	test	byte ptr [rbp - 0xe9], 1
	lea	rsi, [rsi]
	je	.label_16
	cmp	byte ptr [rbp - 0xbd], 0
	nop	
	jne	.label_16
	mov	eax,  dword ptr [dword ptr [optind]]
	cmp	eax, dword ptr [rbp - 8]
	lea	rdi, [rdi]
	je	.label_16
	mov	rbp, rbp
	movsxd	rax,  dword ptr [dword ptr [optind]]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rcx + rax*8]
	lea	rsi, [rsi]
	movsx	edx, byte ptr [rax]
	cmp	edx, 0x2d
	jne	.label_16
	lea	rdi, [rdi]
	movsxd	rax,  dword ptr [dword ptr [optind]]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	rax, qword ptr [rcx + rax*8]
	movsx	edx, byte ptr [rax + 1]
	cmp	edx, 0x6f
	jne	.label_16
	nop	
	movsxd	rax,  dword ptr [dword ptr [optind]]
	mov	rcx, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rcx + rax*8]
	movsx	edx, byte ptr [rax + 2]
	lea	rdi, [rdi]
	cmp	edx, 0
	mov	rsp, rsp
	jne	.label_35
	mov	rbp, rbp
	mov	eax,  dword ptr [dword ptr [optind]]
	add	eax, 1
	nop	
	cmp	eax, dword ptr [rbp - 8]
	je	.label_16
.label_35:
	nop	
	movabs	rdx, OFFSET FLAT:short_options
	movabs	rcx, OFFSET FLAT:long_options
	mov	rbp, rbp
	lea	r8, [rbp - 0x2dc]
	mov	edi, dword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	call	getopt_long
	mov	rsp, rsp
	mov	dword ptr [rbp - 0xbc], eax
	cmp	eax, -1
	nop	
	jne	.label_51
.label_16:
	mov	eax, dword ptr [rbp - 8]
	lea	rdi, [rdi]
	cmp	eax,  dword ptr [dword ptr [optind]]
	jg	.label_57
	jmp	.label_61
.label_57:
	mov	eax,  dword ptr [dword ptr [optind]]
	mov	ecx, eax
	add	ecx, 1
	lea	rdi, [rdi]
	mov	dword ptr [dword ptr [optind]],  ecx
	mov	rsp, rsp
	movsxd	rdx, eax
	nop	
	mov	rsi, qword ptr [rbp - 0x10]
	nop	
	mov	rdx, qword ptr [rsi + rdx*8]
	mov	rsi, qword ptr [rbp - 0xe0]
	mov	rdi, rsi
	add	rdi, 1
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0xe0], rdi
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0xf8]
	nop	
	mov	qword ptr [rdi + rsi*8], rdx
	lea	rdi, [rdi]
	jmp	.label_62
.label_51:
	mov	eax, dword ptr [rbp - 0xbc]
	lea	rdi, [rdi]
	mov	ecx, eax
	sub	ecx, 0xffffff7d
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x37c], eax
	mov	dword ptr [rbp - 0x380], ecx
	nop	
	je	.label_81
	lea	rsi, [rsi]
	jmp	.label_74
.label_74:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x37c]
	sub	eax, 0xffffff7e
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x384], eax
	je	.label_129
	jmp	.label_93
.label_93:
	mov	eax, dword ptr [rbp - 0x37c]
	sub	eax, 1
	mov	dword ptr [rbp - 0x388], eax
	mov	rbp, rbp
	je	.label_118
	jmp	.label_98
.label_98:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x37c]
	mov	rsp, rsp
	sub	eax, 0x43
	mov	dword ptr [rbp - 0x38c], eax
	mov	rbp, rbp
	je	.label_99
	jmp	.label_105
.label_105:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x37c]
	sub	eax, 0x4d
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x390], eax
	mov	rsp, rsp
	je	.label_75
	jmp	.label_111
.label_111:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x37c]
	sub	eax, 0x52
	mov	dword ptr [rbp - 0x394], eax
	lea	rdi, [rdi]
	je	.label_75
	mov	rsp, rsp
	jmp	.label_114
.label_114:
	mov	eax, dword ptr [rbp - 0x37c]
	sub	eax, 0x53
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x398], eax
	lea	rdi, [rdi]
	je	.label_115
	jmp	.label_121
.label_121:
	mov	eax, dword ptr [rbp - 0x37c]
	mov	rsp, rsp
	sub	eax, 0x54
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x39c], eax
	lea	rdi, [rdi]
	je	.label_123
	mov	rbp, rbp
	jmp	.label_130
.label_130:
	mov	eax, dword ptr [rbp - 0x37c]
	mov	rsp, rsp
	sub	eax, 0x56
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x3a0], eax
	je	.label_75
	lea	rdi, [rdi]
	jmp	.label_137
.label_137:
	mov	eax, dword ptr [rbp - 0x37c]
	mov	rbp, rbp
	sub	eax, 0x62
	mov	dword ptr [rbp - 0x3a4], eax
	lea	rdi, [rdi]
	je	.label_75
	jmp	.label_140
.label_140:
	mov	eax, dword ptr [rbp - 0x37c]
	sub	eax, 0x63
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x3a8], eax
	je	.label_99
	jmp	.label_69
.label_69:
	mov	eax, dword ptr [rbp - 0x37c]
	lea	rdi, [rdi]
	sub	eax, 0x64
	mov	dword ptr [rbp - 0x3ac], eax
	nop	
	je	.label_75
	lea	rsi, [rsi]
	jmp	.label_103
.label_103:
	mov	eax, dword ptr [rbp - 0x37c]
	nop	
	add	eax, -0x66
	sub	eax, 4
	mov	dword ptr [rbp - 0x3b0], eax
	lea	rsi, [rsi]
	jb	.label_75
	lea	rdi, [rdi]
	jmp	.label_149
.label_149:
	mov	eax, dword ptr [rbp - 0x37c]
	lea	rdi, [rdi]
	sub	eax, 0x6b
	mov	dword ptr [rbp - 0x3b4], eax
	mov	rbp, rbp
	je	.label_150
	mov	rsp, rsp
	jmp	.label_155
.label_155:
	mov	eax, dword ptr [rbp - 0x37c]
	sub	eax, 0x6d
	mov	dword ptr [rbp - 0x3b8], eax
	je	.label_158
	jmp	.label_162
.label_162:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x37c]
	sub	eax, 0x6e
	mov	dword ptr [rbp - 0x3bc], eax
	mov	rsp, rsp
	je	.label_75
	jmp	.label_165
.label_165:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x37c]
	mov	rbp, rbp
	sub	eax, 0x6f
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x3c0], eax
	je	.label_166
	jmp	.label_169
.label_169:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x37c]
	sub	eax, 0x72
	mov	dword ptr [rbp - 0x3c4], eax
	lea	rdi, [rdi]
	je	.label_75
	jmp	.label_172
.label_172:
	mov	eax, dword ptr [rbp - 0x37c]
	mov	rsp, rsp
	sub	eax, 0x73
	mov	dword ptr [rbp - 0x3c8], eax
	lea	rsi, [rsi]
	je	.label_173
	lea	rdi, [rdi]
	jmp	.label_174
.label_174:
	mov	eax, dword ptr [rbp - 0x37c]
	mov	rbp, rbp
	sub	eax, 0x74
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x3cc], eax
	je	.label_175
	jmp	.label_17
.label_17:
	mov	eax, dword ptr [rbp - 0x37c]
	sub	eax, 0x75
	mov	dword ptr [rbp - 0x3d0], eax
	lea	rsi, [rsi]
	je	.label_18
	jmp	.label_20
.label_20:
	mov	eax, dword ptr [rbp - 0x37c]
	mov	rbp, rbp
	sub	eax, 0x79
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x3d4], eax
	je	.label_21
	lea	rdi, [rdi]
	jmp	.label_89
.label_89:
	mov	eax, dword ptr [rbp - 0x37c]
	nop	
	sub	eax, 0x7a
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x3d8], eax
	je	.label_94
	mov	rbp, rbp
	jmp	.label_30
.label_30:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x37c]
	sub	eax, 0x80
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x3dc], eax
	je	.label_132
	lea	rdi, [rdi]
	jmp	.label_152
.label_152:
	mov	eax, dword ptr [rbp - 0x37c]
	sub	eax, 0x81
	mov	dword ptr [rbp - 0x3e0], eax
	lea	rsi, [rsi]
	je	.label_39
	jmp	.label_43
.label_43:
	mov	eax, dword ptr [rbp - 0x37c]
	sub	eax, 0x82
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x3e4], eax
	lea	rdi, [rdi]
	je	.label_44
	lea	rdi, [rdi]
	jmp	.label_47
.label_47:
	mov	eax, dword ptr [rbp - 0x37c]
	sub	eax, 0x83
	mov	dword ptr [rbp - 0x3e8], eax
	je	.label_48
	mov	rbp, rbp
	jmp	.label_52
.label_52:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x37c]
	lea	rdi, [rdi]
	sub	eax, 0x84
	mov	dword ptr [rbp - 0x3ec], eax
	mov	rbp, rbp
	je	.label_54
	jmp	.label_116
.label_116:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x37c]
	lea	rsi, [rsi]
	sub	eax, 0x85
	mov	dword ptr [rbp - 0x3f0], eax
	lea	rsi, [rsi]
	je	.label_63
	nop	
	jmp	.label_66
.label_66:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x37c]
	nop	
	sub	eax, 0x86
	mov	dword ptr [rbp - 0x3f4], eax
	mov	rbp, rbp
	je	.label_72
	jmp	.label_77
.label_77:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x37c]
	lea	rdi, [rdi]
	sub	eax, 0x87
	mov	dword ptr [rbp - 0x3f8], eax
	je	.label_79
	mov	rbp, rbp
	jmp	.label_142
.label_118:
	mov	qword ptr [rbp - 0x18], 0
	mov	rax,  qword ptr [word ptr [optarg]]
	lea	rsi, [rsi]
	movsx	ecx, byte ptr [rax]
	mov	rbp, rbp
	cmp	ecx, 0x2b
	jne	.label_67
	mov	rsp, rsp
	xor	eax, eax
	mov	cl, al
	mov	eax,  dword ptr [dword ptr [optind]]
	cmp	eax, dword ptr [rbp - 8]
	mov	byte ptr [rbp - 0x3f9], cl
	je	.label_90
	xor	eax, eax
	mov	rbp, rbp
	mov	cl, al
	movsxd	rdx,  dword ptr [dword ptr [optind]]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rsi + rdx*8]
	lea	rdi, [rdi]
	movsx	eax, byte ptr [rdx]
	mov	rsp, rsp
	cmp	eax, 0x2d
	mov	byte ptr [rbp - 0x3f9], cl
	lea	rsi, [rsi]
	jne	.label_90
	movsxd	rax,  dword ptr [dword ptr [optind]]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rcx + rax*8]
	movsx	edx, byte ptr [rax + 1]
	mov	rbp, rbp
	sub	edx, 0x30
	mov	rbp, rbp
	cmp	edx, 9
	setbe	sil
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x3f9], sil
.label_90:
	mov	rsp, rsp
	mov	al, byte ptr [rbp - 0x3f9]
	lea	rsi, [rsi]
	xor	ecx, ecx
	mov	dl, cl
	lea	rsi, [rsi]
	and	al, 1
	mov	byte ptr [rbp - 0x2dd], al
	nop	
	test	byte ptr [rbp - 0x2dd], 1
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x3fa], dl
	lea	rsi, [rsi]
	je	.label_112
	mov	al, byte ptr [rbp - 0xe1]
	mov	rsp, rsp
	xor	al, 0xff
	mov	byte ptr [rbp - 0x3fa], al
.label_112:
	lea	rsi, [rsi]
	mov	al, byte ptr [rbp - 0x3fa]
	lea	rsi, [rsi]
	and	al, 1
	mov	rbp, rbp
	movzx	ecx, al
	mov	al, byte ptr [rbp - 0xe9]
	lea	rdi, [rdi]
	and	al, 1
	nop	
	movzx	edx, al
	mov	rbp, rbp
	or	edx, ecx
	cmp	edx, 0
	lea	rsi, [rsi]
	setne	al
	and	al, 1
	mov	rbp, rbp
	mov	byte ptr [rbp - 0xe9], al
	test	byte ptr [rbp - 0xe9], 1
	mov	rbp, rbp
	je	.label_84
	lea	rdi, [rdi]
	lea	rdi, [rbp - 0x60]
	mov	rsp, rsp
	call	key_init
	mov	rsp, rsp
	xor	ecx, ecx
	mov	edx, ecx
	mov	qword ptr [rbp - 0x18], rax
	lea	rdi, [rdi]
	mov	rax,  qword ptr [word ptr [optarg]]
	lea	rsi, [rsi]
	add	rax, 1
	mov	rsi, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	mov	rdi, rax
	call	parse_field_count
	mov	qword ptr [rbp - 0xb8], rax
	nop	
	cmp	qword ptr [rbp - 0xb8], 0
	mov	rbp, rbp
	je	.label_147
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0xb8]
	lea	rsi, [rsi]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0x2e
	nop	
	jne	.label_147
	xor	eax, eax
	mov	edx, eax
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0xb8]
	add	rcx, 1
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	add	rsi, 8
	mov	rdi, rcx
	lea	rdi, [rdi]
	call	parse_field_count
	mov	qword ptr [rbp - 0xb8], rax
.label_147:
	mov	rax, qword ptr [rbp - 0x18]
	cmp	qword ptr [rax], 0
	nop	
	jne	.label_161
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x18]
	cmp	qword ptr [rax + 8], 0
	jne	.label_161
	nop	
	mov	rax, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	mov	qword ptr [rax], -1
.label_161:
	cmp	qword ptr [rbp - 0xb8], 0
	lea	rsi, [rsi]
	je	.label_167
	xor	edx, edx
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0xb8]
	mov	rsi, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	call	set_ordering
	movsx	edx, byte ptr [rax]
	cmp	edx, 0
	je	.label_170
.label_167:
	mov	qword ptr [rbp - 0x18], 0
	mov	rbp, rbp
	jmp	.label_171
.label_170:
	test	byte ptr [rbp - 0x2dd], 1
	nop	
	je	.label_80
	lea	rsi, [rsi]
	movabs	rdx, OFFSET FLAT:.str.27
	mov	rsp, rsp
	mov	eax,  dword ptr [dword ptr [optind]]
	mov	rsp, rsp
	mov	ecx, eax
	add	ecx, 1
	mov	dword ptr [dword ptr [optind]],  ecx
	mov	rbp, rbp
	movsxd	rsi, eax
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rdi + rsi*8]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x2e8], rsi
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x2e8]
	lea	rsi, [rsi]
	add	rsi, 1
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	add	rdi, 0x10
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x408], rdi
	mov	rdi, rsi
	mov	rsi, qword ptr [rbp - 0x408]
	call	parse_field_count
	nop	
	mov	qword ptr [rbp - 0xb8], rax
	nop	
	cmp	qword ptr [rbp - 0xb8], 0
	je	.label_25
	mov	rbp, rbp
	jmp	.label_32
.label_25:
	movabs	rdi, OFFSET FLAT:.str.28
	movabs	rsi, OFFSET FLAT:.str.29
	mov	edx, 0x1112
	movabs	rcx, OFFSET FLAT:__PRETTY_FUNCTION__.main
	lea	rsi, [rsi]
	call	__assert_fail
.label_32:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0xb8]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0x2e
	jne	.label_41
	movabs	rdx, OFFSET FLAT:.str.30
	mov	rax, qword ptr [rbp - 0xb8]
	mov	rbp, rbp
	add	rax, 1
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	add	rcx, 0x18
	mov	rdi, rax
	mov	rbp, rbp
	mov	rsi, rcx
	call	parse_field_count
	mov	rsp, rsp
	mov	qword ptr [rbp - 0xb8], rax
.label_41:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x18]
	nop	
	cmp	qword ptr [rax + 0x18], 0
	jne	.label_53
	mov	rax, qword ptr [rbp - 0x18]
	cmp	qword ptr [rax + 0x10], 0
	je	.label_53
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rax + 0x10]
	add	rcx, -1
	mov	qword ptr [rax + 0x10], rcx
.label_53:
	mov	edx, 1
	mov	rdi, qword ptr [rbp - 0xb8]
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x18]
	call	set_ordering
	mov	rsp, rsp
	cmp	byte ptr [rax], 0
	je	.label_71
	mov	rsp, rsp
	movabs	rsi, OFFSET FLAT:.str.31
	mov	rdi, qword ptr [rbp - 0x2e8]
	lea	rdi, [rdi]
	call	badfieldspec
.label_71:
	nop	
	jmp	.label_80
.label_80:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x18]
	nop	
	mov	byte ptr [rax + 0x39], 1
	mov	rdi, qword ptr [rbp - 0x18]
	call	insertkey
.label_171:
	mov	rsp, rsp
	jmp	.label_84
.label_84:
	nop	
	jmp	.label_67
.label_67:
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x18], 0
	jne	.label_86
	lea	rdi, [rdi]
	mov	rax,  qword ptr [word ptr [optarg]]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0xe0]
	mov	rdx, rcx
	add	rdx, 1
	mov	qword ptr [rbp - 0xe0], rdx
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0xf8]
	nop	
	mov	qword ptr [rdx + rcx*8], rax
.label_86:
	mov	rsp, rsp
	jmp	.label_64
.label_72:
	movabs	rdi, OFFSET FLAT:.str.32
	movabs	rdx, OFFSET FLAT:sort_args
	lea	rsi, [rsi]
	movabs	rcx, OFFSET FLAT:sort_types
	mov	eax, 1
	mov	r8d, eax
	mov	rsi,  qword ptr [word ptr [optarg]]
	nop	
	mov	r9,  qword ptr [word ptr [argmatch_die]]
	call	__xargmatch_internal
	lea	rsi, [rsi]
	movsx	r10d,  byte ptr [byte ptr [+ (rax * 1) + sort_types]]
	mov	dword ptr [rbp - 0xbc], r10d
.label_75:
	lea	rsi, [rbp - 0xa8]
	mov	edx, 2
	nop	
	lea	rdi, [rbp - 0x2ea]
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0xbc]
	mov	cl, al
	mov	byte ptr [rbp - 0x2ea], cl
	mov	byte ptr [rbp - 0x2e9], 0
	lea	rsi, [rsi]
	call	set_ordering
	nop	
	mov	qword ptr [rbp - 0x410], rax
	lea	rsi, [rsi]
	jmp	.label_64
.label_132:
	cmp	qword ptr [word ptr [optarg]],  0
	je	.label_126
	mov	rsp, rsp
	movabs	rdi, OFFSET FLAT:.str.33
	movabs	rdx, OFFSET FLAT:check_args
	mov	rbp, rbp
	movabs	rcx, OFFSET FLAT:check_types
	lea	rsi, [rsi]
	mov	eax, 1
	lea	rdi, [rdi]
	mov	r8d, eax
	mov	rsi,  qword ptr [word ptr [optarg]]
	mov	r9,  qword ptr [word ptr [argmatch_die]]
	nop	
	call	__xargmatch_internal
	movsx	r10d,  byte ptr [byte ptr [+ (rax * 1) + check_types]]
	mov	dword ptr [rbp - 0x414], r10d
	jmp	.label_60
.label_126:
	mov	rbp, rbp
	mov	eax, 0x63
	mov	dword ptr [rbp - 0x414], eax
	lea	rdi, [rdi]
	jmp	.label_60
.label_60:
	mov	eax, dword ptr [rbp - 0x414]
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0xbc], eax
.label_99:
	movsx	eax, byte ptr [rbp - 0xbd]
	lea	rsi, [rsi]
	cmp	eax, 0
	mov	rsp, rsp
	je	.label_127
	lea	rsi, [rsi]
	movsx	eax, byte ptr [rbp - 0xbd]
	cmp	eax, dword ptr [rbp - 0xbc]
	je	.label_127
	movabs	rdi, OFFSET FLAT:.str.34
	mov	rsp, rsp
	call	incompatible_options
.label_127:
	mov	eax, dword ptr [rbp - 0xbc]
	mov	rbp, rbp
	mov	cl, al
	mov	byte ptr [rbp - 0xbd], cl
	lea	rdi, [rdi]
	jmp	.label_64
.label_39:
	cmp	qword ptr [word ptr [compress_program]],  0
	je	.label_159
	mov	rbp, rbp
	mov	rdi,  qword ptr [word ptr [compress_program]]
	mov	rsp, rsp
	mov	rsi,  qword ptr [word ptr [optarg]]
	call	strcmp
	nop	
	cmp	eax, 0
	je	.label_159
	movabs	rdi, OFFSET FLAT:.str.35
	nop	
	call	gettext
	mov	edi, 2
	xor	esi, esi
	mov	rdx, rax
	mov	al, 0
	lea	rsi, [rsi]
	call	error
.label_159:
	lea	rdi, [rdi]
	mov	rax,  qword ptr [word ptr [optarg]]
	mov	qword ptr [word ptr [compress_program]],  rax
	mov	rsp, rsp
	jmp	.label_64
.label_44:
	mov	byte ptr [byte ptr [debug]],  1
	jmp	.label_64
.label_48:
	mov	rax,  qword ptr [word ptr [optarg]]
	nop	
	mov	qword ptr [rbp - 0x100], rax
	nop	
	jmp	.label_64
.label_150:
	lea	rdi, [rbp - 0x60]
	call	key_init
	movabs	rdx, OFFSET FLAT:.str.36
	mov	qword ptr [rbp - 0x18], rax
	mov	rdi,  qword ptr [word ptr [optarg]]
	mov	rsi, qword ptr [rbp - 0x18]
	call	parse_field_count
	mov	qword ptr [rbp - 0xb8], rax
	mov	rax, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rax]
	mov	rsi, rdx
	add	rsi, -1
	lea	rsi, [rsi]
	mov	qword ptr [rax], rsi
	cmp	rdx, 0
	lea	rdi, [rdi]
	jne	.label_19
	movabs	rsi, OFFSET FLAT:.str.37
	mov	rsp, rsp
	mov	rdi,  qword ptr [word ptr [optarg]]
	mov	rsp, rsp
	call	badfieldspec
.label_19:
	mov	rax, qword ptr [rbp - 0xb8]
	lea	rdi, [rdi]
	movsx	ecx, byte ptr [rax]
	mov	rsp, rsp
	cmp	ecx, 0x2e
	jne	.label_28
	nop	
	movabs	rdx, OFFSET FLAT:.str.30
	mov	rax, qword ptr [rbp - 0xb8]
	add	rax, 1
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x18]
	add	rcx, 8
	mov	rsp, rsp
	mov	rdi, rax
	mov	rbp, rbp
	mov	rsi, rcx
	mov	rbp, rbp
	call	parse_field_count
	mov	qword ptr [rbp - 0xb8], rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	mov	rcx, qword ptr [rax + 8]
	mov	rdx, rcx
	mov	rbp, rbp
	add	rdx, -1
	mov	rbp, rbp
	mov	qword ptr [rax + 8], rdx
	cmp	rcx, 0
	jne	.label_42
	movabs	rsi, OFFSET FLAT:.str.38
	mov	rdi,  qword ptr [word ptr [optarg]]
	call	badfieldspec
.label_42:
	lea	rdi, [rdi]
	jmp	.label_28
.label_28:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x18]
	cmp	qword ptr [rax], 0
	jne	.label_56
	mov	rax, qword ptr [rbp - 0x18]
	cmp	qword ptr [rax + 8], 0
	jne	.label_56
	mov	rax, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	mov	qword ptr [rax], -1
.label_56:
	xor	edx, edx
	mov	rdi, qword ptr [rbp - 0xb8]
	mov	rsi, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	call	set_ordering
	nop	
	mov	qword ptr [rbp - 0xb8], rax
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0xb8]
	lea	rsi, [rsi]
	movsx	edx, byte ptr [rax]
	nop	
	cmp	edx, 0x2c
	je	.label_70
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rax + 0x10], -1
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rax + 0x18], 0
	mov	rbp, rbp
	jmp	.label_76
.label_70:
	movabs	rdx, OFFSET FLAT:.str.39
	nop	
	mov	rax, qword ptr [rbp - 0xb8]
	mov	rbp, rbp
	add	rax, 1
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x18]
	add	rcx, 0x10
	mov	rdi, rax
	lea	rdi, [rdi]
	mov	rsi, rcx
	call	parse_field_count
	mov	qword ptr [rbp - 0xb8], rax
	mov	rax, qword ptr [rbp - 0x18]
	nop	
	mov	rcx, qword ptr [rax + 0x10]
	mov	rdx, rcx
	add	rdx, -1
	nop	
	mov	qword ptr [rax + 0x10], rdx
	cmp	rcx, 0
	jne	.label_92
	movabs	rsi, OFFSET FLAT:.str.37
	mov	rbp, rbp
	mov	rdi,  qword ptr [word ptr [optarg]]
	call	badfieldspec
.label_92:
	mov	rax, qword ptr [rbp - 0xb8]
	mov	rsp, rsp
	movsx	ecx, byte ptr [rax]
	nop	
	cmp	ecx, 0x2e
	jne	.label_104
	movabs	rdx, OFFSET FLAT:.str.30
	mov	rax, qword ptr [rbp - 0xb8]
	add	rax, 1
	mov	rcx, qword ptr [rbp - 0x18]
	add	rcx, 0x18
	mov	rdi, rax
	mov	rsi, rcx
	call	parse_field_count
	mov	qword ptr [rbp - 0xb8], rax
.label_104:
	mov	edx, 1
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0xb8]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x18]
	call	set_ordering
	nop	
	mov	qword ptr [rbp - 0xb8], rax
.label_76:
	nop	
	mov	rax, qword ptr [rbp - 0xb8]
	lea	rdi, [rdi]
	cmp	byte ptr [rax], 0
	nop	
	je	.label_122
	movabs	rsi, OFFSET FLAT:.str.31
	mov	rdi,  qword ptr [word ptr [optarg]]
	call	badfieldspec
.label_122:
	mov	rdi, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	call	insertkey
	lea	rsi, [rsi]
	jmp	.label_64
.label_158:
	mov	byte ptr [rbp - 0xbe], 1
	jmp	.label_64
.label_54:
	mov	edi, dword ptr [rbp - 0x2dc]
	mov	eax, dword ptr [rbp - 0xbc]
	mov	cl, al
	mov	rdx,  qword ptr [word ptr [optarg]]
	movsx	esi, cl
	call	specify_nmerge
	lea	rdi, [rdi]
	jmp	.label_64
.label_166:
	cmp	qword ptr [rbp - 0x228], 0
	nop	
	je	.label_96
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x228]
	lea	rdi, [rdi]
	mov	rsi,  qword ptr [word ptr [optarg]]
	mov	rsp, rsp
	call	strcmp
	lea	rsi, [rsi]
	cmp	eax, 0
	je	.label_96
	movabs	rdi, OFFSET FLAT:.str.40
	lea	rsi, [rsi]
	call	gettext
	lea	rdi, [rdi]
	mov	edi, 2
	lea	rsi, [rsi]
	xor	esi, esi
	mov	rdx, rax
	nop	
	mov	al, 0
	call	error
.label_96:
	mov	rax,  qword ptr [word ptr [optarg]]
	mov	qword ptr [rbp - 0x228], rax
	mov	rbp, rbp
	jmp	.label_64
.label_63:
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0xc8], 0
	je	.label_38
	mov	rdi, qword ptr [rbp - 0xc8]
	nop	
	mov	rsi,  qword ptr [word ptr [optarg]]
	nop	
	call	strcmp
	mov	rsp, rsp
	cmp	eax, 0
	je	.label_38
	movabs	rdi, OFFSET FLAT:.str.41
	call	gettext
	mov	edi, 2
	nop	
	xor	esi, esi
	mov	rsp, rsp
	mov	rdx, rax
	nop	
	mov	al, 0
	lea	rdi, [rdi]
	call	error
.label_38:
	lea	rdi, [rdi]
	mov	rax,  qword ptr [word ptr [optarg]]
	mov	qword ptr [rbp - 0xc8], rax
	jmp	.label_64
.label_173:
	mov	byte ptr [byte ptr [stable]],  1
	nop	
	jmp	.label_64
.label_115:
	mov	edi, dword ptr [rbp - 0x2dc]
	mov	eax, dword ptr [rbp - 0xbc]
	lea	rsi, [rsi]
	mov	cl, al
	nop	
	mov	rdx,  qword ptr [word ptr [optarg]]
	movsx	esi, cl
	nop	
	call	specify_sort_size
	jmp	.label_64
.label_175:
	mov	rax,  qword ptr [word ptr [optarg]]
	lea	rsi, [rsi]
	mov	cl, byte ptr [rax]
	mov	byte ptr [rbp - 0x2eb], cl
	lea	rsi, [rsi]
	cmp	byte ptr [rbp - 0x2eb], 0
	jne	.label_176
	mov	rsp, rsp
	movabs	rdi, OFFSET FLAT:.str.42
	call	gettext
	mov	edi, 2
	mov	rbp, rbp
	xor	esi, esi
	nop	
	mov	rdx, rax
	mov	al, 0
	call	error
.label_176:
	mov	rax,  qword ptr [word ptr [optarg]]
	mov	rsp, rsp
	cmp	byte ptr [rax + 1], 0
	je	.label_22
	mov	rdi,  qword ptr [word ptr [optarg]]
	mov	eax, OFFSET FLAT:.str.43
	mov	rsp, rsp
	mov	esi, eax
	call	strcmp
	lea	rdi, [rdi]
	cmp	eax, 0
	jne	.label_119
	mov	byte ptr [rbp - 0x2eb], 0
	jmp	.label_33
.label_119:
	movabs	rdi, OFFSET FLAT:.str.44
	call	gettext
	mov	rdi,  qword ptr [word ptr [optarg]]
	nop	
	mov	qword ptr [rbp - 0x420], rax
	lea	rdi, [rdi]
	call	quote
	mov	edi, 2
	xor	esi, esi
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x420]
	mov	rcx, rax
	mov	al, 0
	mov	rsp, rsp
	call	error
.label_33:
	mov	rbp, rbp
	jmp	.label_22
.label_22:
	cmp	dword ptr [dword ptr [tab]],  0x80
	je	.label_46
	mov	eax,  dword ptr [dword ptr [tab]]
	movsx	ecx, byte ptr [rbp - 0x2eb]
	cmp	eax, ecx
	nop	
	je	.label_46
	mov	rsp, rsp
	movabs	rdi, OFFSET FLAT:.str.45
	lea	rdi, [rdi]
	call	gettext
	mov	edi, 2
	xor	esi, esi
	lea	rsi, [rsi]
	mov	rdx, rax
	mov	al, 0
	lea	rdi, [rdi]
	call	error
.label_46:
	lea	rdi, [rdi]
	movsx	eax, byte ptr [rbp - 0x2eb]
	mov	rbp, rbp
	mov	dword ptr [dword ptr [tab]],  eax
	mov	rbp, rbp
	jmp	.label_64
.label_123:
	nop	
	mov	rdi,  qword ptr [word ptr [optarg]]
	lea	rdi, [rdi]
	call	add_temp_dir
	jmp	.label_64
.label_79:
	mov	rbp, rbp
	mov	edi, dword ptr [rbp - 0x2dc]
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0xbc]
	lea	rdi, [rdi]
	mov	cl, al
	nop	
	mov	rdx,  qword ptr [word ptr [optarg]]
	mov	rsp, rsp
	movsx	esi, cl
	call	specify_nthreads
	mov	qword ptr [rbp - 0xd8], rax
	jmp	.label_64
.label_18:
	mov	byte ptr [byte ptr [unique]],  1
	jmp	.label_64
.label_21:
	mov	rax,  qword ptr [word ptr [optarg]]
	lea	rdi, [rdi]
	mov	ecx,  dword ptr [dword ptr [optind]]
	sub	ecx, 1
	nop	
	movsxd	rdx, ecx
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	cmp	rax, qword ptr [rsi + rdx*8]
	mov	rbp, rbp
	jne	.label_88
	mov	rax,  qword ptr [word ptr [optarg]]
	mov	qword ptr [rbp - 0x2f8], rax
.label_163:
	nop	
	mov	rax, qword ptr [rbp - 0x2f8]
	movsx	ecx, byte ptr [rax]
	sub	ecx, 0x30
	cmp	ecx, 9
	ja	.label_100
	jmp	.label_102
.label_102:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x2f8]
	lea	rsi, [rsi]
	add	rax, 1
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x2f8], rax
	lea	rdi, [rdi]
	jmp	.label_163
.label_100:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x2f8]
	lea	rsi, [rsi]
	movsx	ecx, byte ptr [rax]
	mov	rbp, rbp
	cmp	ecx, 0
	setne	dl
	and	dl, 1
	nop	
	movzx	ecx, dl
	mov	esi,  dword ptr [dword ptr [optind]]
	sub	esi, ecx
	nop	
	mov	dword ptr [dword ptr [optind]],  esi
.label_88:
	jmp	.label_64
.label_94:
	mov	byte ptr [byte ptr [eolchar]],  0
	nop	
	jmp	.label_64
.label_129:
	xor	edi, edi
	call	usage
.label_81:
	nop	
	movabs	rsi, OFFSET FLAT:.str.22
	mov	rsp, rsp
	movabs	rdx, OFFSET FLAT:.str.17_0
	lea	rdi, [rdi]
	movabs	r8, OFFSET FLAT:.str.47
	mov	rbp, rbp
	movabs	r9, OFFSET FLAT:.str.48
	xor	eax, eax
	lea	rsi, [rsi]
	mov	ecx, eax
	lea	rdi, [rdi]
	mov	rdi,  qword ptr [word ptr [stdout]]
	nop	
	mov	r10,  qword ptr [word ptr [Version]]
	nop	
	mov	qword ptr [rbp - 0x428], rcx
	lea	rsi, [rsi]
	mov	rcx, r10
	mov	qword ptr [rsp], 0
	mov	al, 0
	call	version_etc
	xor	edi, edi
	mov	rsp, rsp
	call	exit
.label_142:
	lea	rdi, [rdi]
	mov	edi, 2
	call	usage
.label_64:
	nop	
	jmp	.label_62
.label_62:
	jmp	.label_143
.label_61:
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x100], 0
	lea	rdi, [rdi]
	je	.label_124
	cmp	qword ptr [rbp - 0xe0], 0
	je	.label_146
	movabs	rdi, OFFSET FLAT:.str.49
	mov	rsp, rsp
	call	gettext
	mov	edi, 4
	mov	rcx, qword ptr [rbp - 0xf8]
	mov	rsi, qword ptr [rcx]
	mov	qword ptr [rbp - 0x430], rax
	call	quotearg_style
	xor	edi, edi
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x434], edi
	mov	esi, dword ptr [rbp - 0x434]
	mov	rdx, qword ptr [rbp - 0x430]
	lea	rsi, [rsi]
	mov	rcx, rax
	mov	al, 0
	call	error
	movabs	rdi, OFFSET FLAT:.str.51
	mov	rsp, rsp
	mov	rcx,  qword ptr [word ptr [stderr]]
	mov	qword ptr [rbp - 0x440], rcx
	mov	rbp, rbp
	call	gettext
	mov	rsp, rsp
	movabs	rsi, OFFSET FLAT:.str_2
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x440]
	mov	rdx, rax
	mov	al, 0
	lea	rsi, [rsi]
	call	fprintf
	mov	edi, 2
	mov	dword ptr [rbp - 0x444], eax
	mov	rbp, rbp
	call	usage
.label_146:
	mov	rbp, rbp
	movabs	rsi, OFFSET FLAT:.str.52
	mov	rdi, qword ptr [rbp - 0x100]
	mov	rsp, rsp
	call	xfopen
	lea	rdi, [rbp - 0x220]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x300], rax
	nop	
	call	readtokens0_init
	mov	rsp, rsp
	lea	rsi, [rbp - 0x220]
	mov	rdi, qword ptr [rbp - 0x300]
	call	readtokens0
	test	al, 1
	jne	.label_177
	movabs	rdi, OFFSET FLAT:.str.53
	nop	
	call	gettext
	mov	edi, 4
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x100]
	mov	qword ptr [rbp - 0x450], rax
	mov	rbp, rbp
	call	quotearg_style
	mov	rsp, rsp
	mov	edi, 2
	xor	esi, esi
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x450]
	mov	rcx, rax
	mov	al, 0
	call	error
.label_177:
	mov	rdi, qword ptr [rbp - 0x300]
	mov	rsi, qword ptr [rbp - 0x100]
	call	xfclose
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x220], 0
	nop	
	je	.label_29
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0xf8]
	mov	rsp, rsp
	mov	rdi, rax
	lea	rdi, [rdi]
	call	free
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x218]
	mov	qword ptr [rbp - 0xf8], rax
	mov	rax, qword ptr [rbp - 0x220]
	mov	qword ptr [rbp - 0xe0], rax
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x308], 0
.label_108:
	mov	rax, qword ptr [rbp - 0x308]
	lea	rdi, [rdi]
	cmp	rax, qword ptr [rbp - 0xe0]
	nop	
	jae	.label_27
	mov	rax, qword ptr [rbp - 0x308]
	mov	rcx, qword ptr [rbp - 0xf8]
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rcx + rax*8]
	mov	edx, OFFSET FLAT:.str.54
	mov	esi, edx
	lea	rdi, [rdi]
	call	strcmp
	lea	rdi, [rdi]
	cmp	eax, 0
	lea	rsi, [rsi]
	jne	.label_55
	mov	rsp, rsp
	movabs	rdi, OFFSET FLAT:.str.55
	call	gettext
	mov	edi, 4
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x308]
	mov	rdx, qword ptr [rbp - 0xf8]
	mov	rsi, qword ptr [rdx + rcx*8]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x458], rax
	mov	rsp, rsp
	call	quotearg_style
	mov	rsp, rsp
	mov	edi, 2
	xor	esi, esi
	nop	
	mov	rdx, qword ptr [rbp - 0x458]
	mov	rcx, rax
	mov	al, 0
	lea	rdi, [rdi]
	call	error
.label_55:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x308]
	mov	rcx, qword ptr [rbp - 0xf8]
	mov	rbp, rbp
	mov	rax, qword ptr [rcx + rax*8]
	movsx	edx, byte ptr [rax]
	mov	rbp, rbp
	cmp	edx, 0
	jne	.label_78
	movabs	rdi, OFFSET FLAT:.str.56
	mov	rax, qword ptr [rbp - 0x308]
	mov	rsp, rsp
	add	rax, 1
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x310], rax
	call	gettext
	xor	edi, edi
	mov	esi, 3
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x100]
	mov	qword ptr [rbp - 0x460], rax
	call	quotearg_n_style_colon
	nop	
	mov	edi, 2
	xor	esi, esi
	nop	
	mov	r8, qword ptr [rbp - 0x310]
	nop	
	mov	rdx, qword ptr [rbp - 0x460]
	mov	rsp, rsp
	mov	rcx, rax
	lea	rsi, [rsi]
	mov	al, 0
	call	error
.label_78:
	jmp	.label_106
.label_106:
	jmp	.label_107
.label_107:
	mov	rax, qword ptr [rbp - 0x308]
	add	rax, 1
	mov	qword ptr [rbp - 0x308], rax
	jmp	.label_108
.label_27:
	nop	
	jmp	.label_36
.label_29:
	movabs	rdi, OFFSET FLAT:.str.57
	nop	
	call	gettext
	mov	edi, 4
	mov	rsi, qword ptr [rbp - 0x100]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x468], rax
	nop	
	call	quotearg_style
	mov	edi, 2
	nop	
	xor	esi, esi
	nop	
	mov	rdx, qword ptr [rbp - 0x468]
	mov	rcx, rax
	mov	al, 0
	lea	rsi, [rsi]
	call	error
.label_36:
	jmp	.label_124
.label_124:
	mov	rax,  qword ptr [word ptr [keylist]]
	mov	qword ptr [rbp - 0x18], rax
.label_154:
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x18], 0
	lea	rdi, [rdi]
	je	.label_128
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x18]
	call	default_key_compare
	test	al, 1
	mov	rsp, rsp
	jne	.label_134
	lea	rsi, [rsi]
	jmp	.label_136
.label_134:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x18]
	nop	
	test	byte ptr [rax + 0x37], 1
	jne	.label_136
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x88]
	nop	
	mov	rcx, qword ptr [rbp - 0x18]
	mov	qword ptr [rcx + 0x20], rax
	nop	
	mov	rax, qword ptr [rbp - 0x80]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	qword ptr [rcx + 0x28], rax
	mov	rsp, rsp
	mov	dl, byte ptr [rbp - 0x78]
	mov	rax, qword ptr [rbp - 0x18]
	and	dl, 1
	nop	
	mov	byte ptr [rax + 0x30], dl
	mov	dl, byte ptr [rbp - 0x77]
	nop	
	mov	rax, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	and	dl, 1
	mov	byte ptr [rax + 0x31], dl
	lea	rdi, [rdi]
	mov	dl, byte ptr [rbp - 0x72]
	mov	rax, qword ptr [rbp - 0x18]
	and	dl, 1
	mov	byte ptr [rax + 0x36], dl
	mov	dl, byte ptr [rbp - 0x76]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x18]
	nop	
	and	dl, 1
	mov	rbp, rbp
	mov	byte ptr [rax + 0x32], dl
	mov	dl, byte ptr [rbp - 0x74]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x18]
	and	dl, 1
	mov	byte ptr [rax + 0x34], dl
	mov	dl, byte ptr [rbp - 0x73]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	and	dl, 1
	nop	
	mov	byte ptr [rax + 0x35], dl
	lea	rsi, [rsi]
	mov	dl, byte ptr [rbp - 0x70]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x18]
	and	dl, 1
	mov	byte ptr [rax + 0x38], dl
	mov	rsp, rsp
	mov	dl, byte ptr [rbp - 0x75]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x18]
	and	dl, 1
	nop	
	mov	byte ptr [rax + 0x33], dl
	mov	rsp, rsp
	mov	dl, byte ptr [rbp - 0x71]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x18]
	nop	
	and	dl, 1
	mov	byte ptr [rax + 0x37], dl
.label_136:
	mov	rax, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	mov	cl, byte ptr [rax + 0x33]
	and	cl, 1
	movzx	edx, cl
	mov	cl, byte ptr [rbp - 0xc9]
	and	cl, 1
	movzx	esi, cl
	mov	rbp, rbp
	or	esi, edx
	cmp	esi, 0
	setne	cl
	lea	rsi, [rsi]
	and	cl, 1
	mov	byte ptr [rbp - 0xc9], cl
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax + 0x40]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_154
.label_128:
	cmp	qword ptr [word ptr [keylist]],  0
	jne	.label_139
	mov	rsp, rsp
	lea	rdi, [rbp - 0xa8]
	mov	rbp, rbp
	call	default_key_compare
	mov	rbp, rbp
	test	al, 1
	lea	rdi, [rdi]
	jne	.label_139
	lea	rdi, [rbp - 0xa8]
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0xa9], 1
	lea	rdi, [rdi]
	call	insertkey
	nop	
	mov	al, byte ptr [rbp - 0x75]
	lea	rdi, [rdi]
	and	al, 1
	movzx	ecx, al
	nop	
	mov	al, byte ptr [rbp - 0xc9]
	nop	
	and	al, 1
	lea	rsi, [rsi]
	movzx	edx, al
	mov	rbp, rbp
	or	edx, ecx
	mov	rsp, rsp
	cmp	edx, 0
	setne	al
	and	al, 1
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0xc9], al
.label_139:
	call	check_ordering_compatibility
	test	byte ptr [byte ptr [debug]],  1
	je	.label_24
	movsx	eax, byte ptr [rbp - 0xbd]
	cmp	eax, 0
	jne	.label_26
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0x228], 0
	mov	rbp, rbp
	je	.label_31
.label_26:
	lea	rdi, [rdi]
	movsx	eax, byte ptr [rbp - 0xbd]
	mov	rsp, rsp
	cmp	eax, 0
	lea	rsi, [rsi]
	je	.label_34
	movsx	eax, byte ptr [rbp - 0xbd]
	mov	dword ptr [rbp - 0x46c], eax
	jmp	.label_40
.label_34:
	mov	rbp, rbp
	mov	eax, 0x6f
	mov	dword ptr [rbp - 0x46c], eax
	nop	
	jmp	.label_40
.label_40:
	mov	eax, dword ptr [rbp - 0x46c]
	movabs	rdi, OFFSET FLAT:main.opts
	nop	
	mov	cl, al
	mov	rsp, rsp
	mov	byte ptr [byte ptr [main.opts]],  cl
	call	incompatible_options
.label_31:
	mov	rsp, rsp
	test	byte ptr [rbp - 0x229], 1
	lea	rsi, [rsi]
	je	.label_49
	mov	edi, 3
	movabs	rsi, OFFSET FLAT:.str_0
	call	setlocale
	cmp	rax, 0
	nop	
	setne	cl
	xor	cl, 0xff
	lea	rdi, [rdi]
	xor	cl, 0xff
	lea	rdi, [rdi]
	and	cl, 1
	mov	byte ptr [rbp - 0x229], cl
.label_49:
	lea	rsi, [rsi]
	test	byte ptr [rbp - 0x229], 1
	jne	.label_65
	mov	rsp, rsp
	movabs	rdi, OFFSET FLAT:.str.59
	call	gettext
	mov	rbp, rbp
	xor	ecx, ecx
	lea	rdi, [rdi]
	movabs	rdx, OFFSET FLAT:.str_1
	mov	rbp, rbp
	mov	edi, ecx
	mov	esi, ecx
	mov	rbp, rbp
	mov	rcx, rax
	nop	
	mov	al, 0
	lea	rdi, [rdi]
	call	error
.label_65:
	lea	rdi, [rdi]
	test	byte ptr [byte ptr [hard_LC_COLLATE]],  1
	mov	rsp, rsp
	je	.label_83
	lea	rdi, [rdi]
	movabs	rdi, OFFSET FLAT:.str.60
	call	gettext
	mov	edi, 3
	mov	rbp, rbp
	xor	ecx, ecx
	mov	esi, ecx
	mov	qword ptr [rbp - 0x478], rax
	call	setlocale
	mov	rsp, rsp
	mov	rdi, rax
	lea	rdi, [rdi]
	call	quote
	xor	ecx, ecx
	lea	rsi, [rsi]
	mov	edi, ecx
	mov	rsp, rsp
	mov	esi, ecx
	mov	rdx, qword ptr [rbp - 0x478]
	mov	rcx, rax
	lea	rdi, [rdi]
	mov	al, 0
	call	error
	mov	rbp, rbp
	jmp	.label_101
.label_83:
	movabs	rdi, OFFSET FLAT:.str.61
	nop	
	call	gettext
	xor	ecx, ecx
	movabs	rdx, OFFSET FLAT:.str_1
	mov	rsp, rsp
	mov	edi, ecx
	mov	esi, ecx
	mov	rcx, rax
	mov	rsp, rsp
	mov	al, 0
	mov	rbp, rbp
	call	error
.label_101:
	lea	rdi, [rbp - 0xa8]
	nop	
	mov	al, byte ptr [rbp - 0xa9]
	lea	rdi, [rdi]
	and	al, 1
	lea	rdi, [rdi]
	movzx	esi, al
	mov	rsp, rsp
	call	key_warnings
.label_24:
	mov	al, byte ptr [rbp - 0x71]
	lea	rdi, [rdi]
	and	al, 1
	lea	rsi, [rsi]
	mov	byte ptr [byte ptr [reverse]],  al
	test	byte ptr [rbp - 0xc9], 1
	lea	rsi, [rsi]
	je	.label_113
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0xc8]
	mov	rbp, rbp
	call	random_md5_state_init
.label_113:
	cmp	qword ptr [word ptr [temp_dir_count]],  0
	mov	rbp, rbp
	jne	.label_125
	mov	rbp, rbp
	movabs	rdi, OFFSET FLAT:.str.62
	call	getenv
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x318], rax
	nop	
	cmp	qword ptr [rbp - 0x318], 0
	je	.label_133
	mov	rax, qword ptr [rbp - 0x318]
	mov	qword ptr [rbp - 0x480], rax
	jmp	.label_138
.label_133:
	lea	rsi, [rsi]
	movabs	rax, OFFSET FLAT:.str.16
	nop	
	mov	qword ptr [rbp - 0x480], rax
	lea	rsi, [rsi]
	jmp	.label_138
.label_138:
	mov	rax, qword ptr [rbp - 0x480]
	mov	rdi, rax
	nop	
	call	add_temp_dir
.label_125:
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0xe0], 0
	jne	.label_145
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0xe0], 1
	nop	
	mov	rax, qword ptr [rbp - 0xf8]
	mov	rsp, rsp
	mov	rdi, rax
	call	free
	mov	ecx, 8
	lea	rdi, [rdi]
	mov	edi, ecx
	nop	
	call	xmalloc
	lea	rdi, [rdi]
	movabs	rdi, OFFSET FLAT:.str.54
	mov	qword ptr [rbp - 0xf8], rax
	mov	rax, qword ptr [rbp - 0xf8]
	mov	qword ptr [rax], rdi
.label_145:
	xor	eax, eax
	mov	ecx, eax
	lea	rdi, [rdi]
	cmp	rcx,  qword ptr [word ptr [sort_size]]
	jae	.label_156
	mov	rax,  qword ptr [word ptr [sort_size]]
	mov	ecx,  dword ptr [dword ptr [nmerge]]
	mov	edx, ecx
	lea	rdi, [rdi]
	imul	rdx, rdx, 0x22
	cmp	rax, rdx
	jbe	.label_160
	mov	rax,  qword ptr [word ptr [sort_size]]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x488], rax
	mov	rsp, rsp
	jmp	.label_164
.label_160:
	lea	rdi, [rdi]
	mov	eax,  dword ptr [dword ptr [nmerge]]
	mov	ecx, eax
	lea	rsi, [rsi]
	imul	rcx, rcx, 0x22
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x488], rcx
.label_164:
	mov	rax, qword ptr [rbp - 0x488]
	mov	qword ptr [word ptr [sort_size]],  rax
.label_156:
	cmp	byte ptr [rbp - 0xbd], 0
	lea	rdi, [rdi]
	je	.label_131
	cmp	qword ptr [rbp - 0xe0], 1
	mov	rsp, rsp
	jbe	.label_144
	lea	rsi, [rsi]
	movabs	rdi, OFFSET FLAT:.str.63
	call	gettext
	lea	rsi, [rsi]
	mov	edi, 4
	mov	rcx, qword ptr [rbp - 0xf8]
	mov	rbp, rbp
	mov	rsi, qword ptr [rcx + 8]
	nop	
	mov	qword ptr [rbp - 0x490], rax
	call	quotearg_style
	mov	edi, 2
	xor	esi, esi
	movsx	r8d, byte ptr [rbp - 0xbd]
	mov	rdx, qword ptr [rbp - 0x490]
	lea	rdi, [rdi]
	mov	rcx, rax
	lea	rsi, [rsi]
	mov	al, 0
	lea	rsi, [rsi]
	call	error
.label_144:
	cmp	qword ptr [rbp - 0x228], 0
	je	.label_23
	movabs	rdi, OFFSET FLAT:main.opts.64
	mov	rsp, rsp
	mov	al, byte ptr [rbp - 0xbd]
	mov	byte ptr [byte ptr [main.opts.64]],  al
	call	incompatible_options
.label_23:
	mov	rax, qword ptr [rbp - 0xf8]
	mov	rdi, qword ptr [rax]
	movsx	esi, byte ptr [rbp - 0xbd]
	call	check
	mov	esi, 1
	xor	ecx, ecx
	mov	rsp, rsp
	test	al, 1
	lea	rsi, [rsi]
	cmovne	esi, ecx
	mov	dword ptr [rbp - 4], esi
	jmp	.label_37
.label_131:
	mov	rdi, qword ptr [rbp - 0xf8]
	mov	rsi, qword ptr [rbp - 0xe0]
	mov	rbp, rbp
	call	check_inputs
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x228]
	call	check_output
	test	byte ptr [rbp - 0xbe], 1
	je	.label_45
	mov	rsp, rsp
	mov	eax, 0x10
	lea	rsi, [rsi]
	mov	esi, eax
	nop	
	mov	rdi, qword ptr [rbp - 0xe0]
	nop	
	call	xcalloc
	nop	
	mov	qword ptr [rbp - 0x320], rax
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x328], 0
.label_148:
	nop	
	mov	rax, qword ptr [rbp - 0x328]
	cmp	rax, qword ptr [rbp - 0xe0]
	jae	.label_58
	mov	rax, qword ptr [rbp - 0x328]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0xf8]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rcx + rax*8]
	mov	rcx, qword ptr [rbp - 0x328]
	shl	rcx, 4
	mov	rbp, rbp
	add	rcx, qword ptr [rbp - 0x320]
	mov	qword ptr [rcx], rax
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x328]
	add	rax, 1
	mov	qword ptr [rbp - 0x328], rax
	nop	
	jmp	.label_148
.label_58:
	xor	eax, eax
	mov	esi, eax
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x320]
	mov	rdx, qword ptr [rbp - 0xe0]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x228]
	lea	rdi, [rdi]
	call	merge
	mov	rbp, rbp
	jmp	.label_85
.label_45:
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0xd8], 0
	jne	.label_87
	mov	rbp, rbp
	mov	edi, 2
	call	num_processors
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x330], rax
	cmp	qword ptr [rbp - 0x330], 8
	jae	.label_91
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x330]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x498], rax
	jmp	.label_95
.label_91:
	mov	eax, 8
	lea	rdi, [rdi]
	mov	ecx, eax
	mov	qword ptr [rbp - 0x498], rcx
	mov	rbp, rbp
	jmp	.label_95
.label_95:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x498]
	mov	qword ptr [rbp - 0xd8], rax
.label_87:
	mov	rbp, rbp
	movabs	rax, 0xffffffffffffff
	nop	
	mov	qword ptr [rbp - 0x338], rax
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0xd8]
	cmp	rax, qword ptr [rbp - 0x338]
	jae	.label_110
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0xd8]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x4a0], rax
	jmp	.label_68
.label_110:
	mov	rax, qword ptr [rbp - 0x338]
	mov	qword ptr [rbp - 0x4a0], rax
.label_68:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x4a0]
	mov	qword ptr [rbp - 0xd8], rax
	mov	rdi, qword ptr [rbp - 0xf8]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0xe0]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x228]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0xd8]
	lea	rdi, [rdi]
	call	sort
.label_85:
	lea	rdi, [rdi]
	test	byte ptr [byte ptr [have_read_stdin]],  1
	je	.label_135
	mov	rbp, rbp
	mov	rdi,  qword ptr [word ptr [stdin]]
	call	rpl_fclose
	mov	rbp, rbp
	cmp	eax, -1
	jne	.label_135
	mov	rbp, rbp
	movabs	rdi, OFFSET FLAT:.str.65
	call	gettext
	movabs	rsi, OFFSET FLAT:.str.54
	mov	rdi, rax
	lea	rdi, [rdi]
	call	sort_die
.label_135:
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 4], 0
.label_37:
	nop	
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x4b0
	pop	rbp
	nop	
	ret	
	.section	.text
	.align	16
	#Procedure 0x405710

	.globl initialize_exit_failure
	.type initialize_exit_failure, @function
initialize_exit_failure:
	push	rbp
	mov	rbp, rsp
	mov	rbp, rbp
	mov	dword ptr [rbp - 4], edi
	mov	rsp, rsp
	cmp	dword ptr [rbp - 4], 1
	lea	rsi, [rsi]
	je	.label_178
	mov	eax, dword ptr [rbp - 4]
	mov	rsp, rsp
	mov	dword ptr [dword ptr [exit_failure]],  eax
.label_178:
	nop	
	pop	rbp
	mov	rsp, rsp
	ret	
	.section	.text
	.align	16
	#Procedure 0x405740

	.globl to_uchar
	.type to_uchar, @function
to_uchar:
	push	rbp
	mov	rbp, rsp
	mov	al, dil
	mov	rbp, rbp
	mov	byte ptr [rbp - 1], al
	nop	
	movzx	eax, byte ptr [rbp - 1]
	lea	rsi, [rsi]
	pop	rbp
	lea	rsi, [rsi]
	ret	
	.section	.text
	.align	16
	#Procedure 0x405760

	.globl inittables
	.type inittables, @function
inittables:
	lea	rsi, [rsi]
	push	rbp
	mov	rbp, rbp
	mov	rbp, rsp
	nop	
	sub	rsp, 0x50
	mov	rbp, rbp
	mov	qword ptr [rbp - 8], 0
.label_181:
	cmp	qword ptr [rbp - 8], 0x100
	jae	.label_184
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 8]
	mov	cl, al
	nop	
	movzx	edi, cl
	call	field_sep
	mov	rdx, qword ptr [rbp - 8]
	and	al, 1
	mov	byte ptr [byte ptr [+ (rdx * 1) + blanks]],  al
	mov	rdx, qword ptr [rbp - 8]
	mov	edi, edx
	lea	rsi, [rsi]
	movsxd	rdx, edi
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x38], rdx
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x38]
	lea	rsi, [rsi]
	movzx	edi, word ptr [rax + rdx*2]
	lea	rsi, [rsi]
	and	edi, 0x4000
	cmp	edi, 0
	setne	cl
	lea	rdi, [rdi]
	xor	cl, 0xff
	mov	rax, qword ptr [rbp - 8]
	mov	rbp, rbp
	and	cl, 1
	mov	byte ptr [byte ptr [+ (rax * 1) + nonprinting]],  cl
	mov	rax, qword ptr [rbp - 8]
	mov	edi, eax
	mov	rbp, rbp
	movsxd	rax, edi
	mov	qword ptr [rbp - 0x40], rax
	call	__ctype_b_loc
	mov	rsp, rsp
	xor	edi, edi
	mov	cl, dil
	nop	
	mov	rax, qword ptr [rax]
	mov	rdx, qword ptr [rbp - 0x40]
	movzx	edi, word ptr [rax + rdx*2]
	lea	rsi, [rsi]
	and	edi, 8
	nop	
	cmp	edi, 0
	mov	byte ptr [rbp - 0x41], cl
	jne	.label_180
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 8]
	mov	cl, al
	lea	rdi, [rdi]
	movzx	edi, cl
	mov	rbp, rbp
	call	field_sep
	nop	
	xor	al, 0xff
	mov	byte ptr [rbp - 0x41], al
.label_180:
	mov	al, byte ptr [rbp - 0x41]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 8]
	mov	rbp, rbp
	and	al, 1
	mov	byte ptr [byte ptr [+ (rcx * 1) + nondictionary]],  al
	mov	rcx, qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	edx, ecx
	mov	edi, edx
	call	toupper
	mov	sil, al
	mov	rcx, qword ptr [rbp - 8]
	mov	byte ptr [byte ptr [+ (rcx * 1) + fold_toupper]],  sil
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 8]
	mov	rsp, rsp
	add	rax, 1
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 8], rax
	lea	rsi, [rsi]
	jmp	.label_181
.label_184:
	lea	rdi, [rdi]
	test	byte ptr [byte ptr [hard_LC_TIME]],  1
	je	.label_186
	mov	qword ptr [rbp - 8], 0
.label_183:
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 8], 0xc
	jae	.label_187
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 8]
	mov	rsp, rsp
	add	rax, 0x2000e
	mov	rbp, rbp
	mov	ecx, eax
	mov	edi, ecx
	mov	rsp, rsp
	call	rpl_nl_langinfo
	nop	
	mov	qword ptr [rbp - 0x10], rax
	mov	rdi, qword ptr [rbp - 0x10]
	call	strlen
	mov	qword ptr [rbp - 0x18], rax
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 1
	mov	rdi, rax
	call	xmalloc
	movabs	rdi, OFFSET FLAT:monthtab
	mov	qword ptr [rbp - 0x30], rax
	mov	rdx, qword ptr [rbp - 8]
	shl	rdx, 4
	mov	rsi, rdi
	nop	
	add	rsi, rdx
	mov	qword ptr [rsi], rax
	nop	
	mov	rax, qword ptr [rbp - 8]
	mov	rbp, rbp
	add	rax, 1
	mov	ecx, eax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 8]
	mov	rsp, rsp
	shl	rax, 4
	add	rdi, rax
	mov	dword ptr [rdi + 8], ecx
	mov	qword ptr [rbp - 0x28], 0
	mov	qword ptr [rbp - 0x20], 0
.label_179:
	mov	rax, qword ptr [rbp - 0x20]
	cmp	rax, qword ptr [rbp - 0x18]
	nop	
	jae	.label_185
	mov	rax, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x10]
	movsx	edi, byte ptr [rcx + rax]
	lea	rdi, [rdi]
	call	to_uchar
	mov	rbp, rbp
	movzx	edi, al
	movsxd	rcx, edi
	mov	qword ptr [rbp - 0x50], rcx
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x50]
	movzx	edi, word ptr [rax + rcx*2]
	nop	
	and	edi, 1
	cmp	edi, 0
	lea	rdi, [rdi]
	jne	.label_182
	nop	
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	movsx	edi, byte ptr [rcx + rax]
	mov	rsp, rsp
	call	to_uchar
	nop	
	movzx	edi, al
	lea	rdi, [rdi]
	mov	ecx, edi
	mov	rsp, rsp
	mov	al,  byte ptr [byte ptr [+ (rcx * 1) + fold_toupper]]
	nop	
	mov	rcx, qword ptr [rbp - 0x28]
	nop	
	mov	rdx, rcx
	mov	rbp, rbp
	add	rdx, 1
	mov	qword ptr [rbp - 0x28], rdx
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x30]
	mov	byte ptr [rdx + rcx], al
.label_182:
	nop	
	jmp	.label_188
.label_188:
	nop	
	mov	rax, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	add	rax, 1
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x20], rax
	jmp	.label_179
.label_185:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x30]
	nop	
	mov	byte ptr [rcx + rax], 0
	mov	rax, qword ptr [rbp - 8]
	add	rax, 1
	mov	rsp, rsp
	mov	qword ptr [rbp - 8], rax
	lea	rdi, [rdi]
	jmp	.label_183
.label_187:
	movabs	rax, OFFSET FLAT:monthtab
	mov	ecx, 0xc
	mov	esi, ecx
	mov	ecx, 0x10
	mov	edx, ecx
	lea	rdi, [rdi]
	movabs	rcx, OFFSET FLAT:struct_month_cmp
	mov	rbp, rbp
	mov	rdi, rax
	call	qsort
.label_186:
	add	rsp, 0x50
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x405a80

	.globl sighandler
	.type sighandler, @function
sighandler:
	mov	rsp, rsp
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	nop	
	mov	dword ptr [rbp - 4], edi
	lea	rdi, [rdi]
	call	cleanup
	mov	rsp, rsp
	xor	edi, edi
	lea	rsi, [rsi]
	mov	esi, edi
	mov	edi, dword ptr [rbp - 4]
	mov	rsp, rsp
	call	signal
	mov	edi, dword ptr [rbp - 4]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x10], rax
	call	raise
	mov	dword ptr [rbp - 0x14], eax
	add	rsp, 0x20
	pop	rbp
	lea	rsi, [rsi]
	ret	
	.section	.text
	.align	16
	#Procedure 0x405ad0

	.globl exit_cleanup
	.type exit_cleanup, @function
exit_cleanup:
	lea	rdi, [rdi]
	push	rbp
	mov	rbp, rsp
	lea	rsi, [rsi]
	sub	rsp, 0x90
	lea	rdi, [rdi]
	mov	rax,  qword ptr [word ptr [temphead]]
	lea	rdi, [rdi]
	cmp	rax, 0
	lea	rdi, [rdi]
	je	.label_189
	lea	rdi, [rbp - 0x88]
	lea	rdi, [rdi]
	call	cs_enter
	lea	rdi, [rdi]
	call	cleanup
	mov	rsp, rsp
	lea	rdi, [rbp - 0x88]
	nop	
	call	cs_leave
.label_189:
	mov	rbp, rbp
	call	close_stdout
	mov	rsp, rsp
	add	rsp, 0x90
	mov	rbp, rbp
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x405b40

	.globl key_init
	.type key_init, @function
key_init:
	lea	rdi, [rdi]
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	rbp, rbp
	xor	esi, esi
	mov	rsp, rsp
	mov	eax, 0x48
	mov	rsp, rsp
	mov	edx, eax
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	call	memset
	mov	rdx, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	qword ptr [rdx + 0x10], -1
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x10
	nop	
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x405b90

	.globl parse_field_count
	.type parse_field_count, @function
parse_field_count:
	lea	rsi, [rsi]
	push	rbp
	lea	rdi, [rdi]
	mov	rbp, rsp
	mov	rsp, rsp
	sub	rsp, 0x50
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	nop	
	mov	qword ptr [rbp - 0x20], rdx
	mov	rdi, qword ptr [rbp - 0x10]
	nop	
	mov	eax, OFFSET FLAT:.str_0
	mov	r8d, eax
	lea	rsi, [rbp - 0x28]
	nop	
	mov	edx, 0xa
	lea	rsi, [rsi]
	lea	rcx, [rbp - 0x30]
	mov	rsp, rsp
	call	xstrtoumax
	mov	rbp, rbp
	mov	edx, eax
	mov	rsp, rsp
	mov	ecx, edx
	sub	eax, 4
	mov	qword ptr [rbp - 0x38], rcx
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x3c], eax
	nop	
	ja	.label_190
	mov	rax, qword ptr [rbp - 0x38]
	lea	rdi, [rdi]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_192]]
	mov	rbp, rbp
	jmp	rcx
.label_2298:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x30]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	mov	qword ptr [rcx], rax
	mov	rax, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	mov	rax, qword ptr [rax]
	cmp	rax, qword ptr [rbp - 0x30]
	nop	
	jne	.label_191
	lea	rdi, [rdi]
	jmp	.label_190
.label_191:
	mov	rsp, rsp
	jmp	.label_194
.label_194:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	mov	qword ptr [rax], -1
	jmp	.label_190
.label_2299:
	cmp	qword ptr [rbp - 0x20], 0
	je	.label_195
	lea	rsi, [rsi]
	movabs	rdi, OFFSET FLAT:.str.124
	lea	rdi, [rdi]
	call	gettext
	mov	rdi, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x48], rax
	call	gettext
	nop	
	mov	rdi, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x50], rax
	call	quote
	mov	edi, 2
	mov	rbp, rbp
	xor	esi, esi
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x48]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x50]
	mov	r8, rax
	lea	rdi, [rdi]
	mov	al, 0
	call	error
.label_195:
	mov	qword ptr [rbp - 8], 0
	lea	rsi, [rsi]
	jmp	.label_193
.label_190:
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 8], rax
.label_193:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 8]
	mov	rbp, rbp
	add	rsp, 0x50
	lea	rdi, [rdi]
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x405cf0

	.globl set_ordering
	.type set_ordering, @function
set_ordering:
	lea	rdi, [rdi]
	push	rbp
	mov	rbp, rsp
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x10], rdi
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x18], rsi
	mov	dword ptr [rbp - 0x1c], edx
.label_197:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	cmp	byte ptr [rax], 0
	je	.label_198
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x10]
	nop	
	movsx	ecx, byte ptr [rax]
	mov	edx, ecx
	sub	edx, 0x4d
	mov	dword ptr [rbp - 0x20], ecx
	mov	dword ptr [rbp - 0x24], edx
	je	.label_203
	lea	rsi, [rsi]
	jmp	.label_207
.label_207:
	mov	eax, dword ptr [rbp - 0x20]
	sub	eax, 0x52
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x28], eax
	mov	rbp, rbp
	je	.label_210
	jmp	.label_214
.label_214:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x20]
	sub	eax, 0x56
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x2c], eax
	lea	rdi, [rdi]
	je	.label_217
	jmp	.label_221
.label_221:
	mov	eax, dword ptr [rbp - 0x20]
	sub	eax, 0x62
	mov	dword ptr [rbp - 0x30], eax
	je	.label_223
	mov	rsp, rsp
	jmp	.label_196
.label_196:
	mov	eax, dword ptr [rbp - 0x20]
	sub	eax, 0x64
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x34], eax
	je	.label_200
	nop	
	jmp	.label_204
.label_204:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x20]
	sub	eax, 0x66
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x38], eax
	mov	rbp, rbp
	je	.label_205
	jmp	.label_209
.label_209:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x20]
	sub	eax, 0x67
	mov	dword ptr [rbp - 0x3c], eax
	je	.label_211
	nop	
	jmp	.label_215
.label_215:
	mov	eax, dword ptr [rbp - 0x20]
	nop	
	sub	eax, 0x68
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x40], eax
	je	.label_218
	jmp	.label_201
.label_201:
	mov	eax, dword ptr [rbp - 0x20]
	nop	
	sub	eax, 0x69
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x44], eax
	je	.label_222
	mov	rbp, rbp
	jmp	.label_199
.label_199:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x20]
	mov	rsp, rsp
	sub	eax, 0x6e
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x48], eax
	je	.label_225
	jmp	.label_219
.label_219:
	mov	eax, dword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	sub	eax, 0x72
	mov	dword ptr [rbp - 0x4c], eax
	je	.label_206
	lea	rsi, [rsi]
	jmp	.label_208
.label_223:
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x1c], 0
	lea	rdi, [rdi]
	je	.label_212
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x1c], 2
	jne	.label_224
.label_212:
	nop	
	mov	rax, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	mov	byte ptr [rax + 0x30], 1
.label_224:
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x1c], 1
	lea	rdi, [rdi]
	je	.label_220
	nop	
	cmp	dword ptr [rbp - 0x1c], 2
	jne	.label_226
.label_220:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	mov	byte ptr [rax + 0x31], 1
.label_226:
	jmp	.label_202
.label_200:
	movabs	rax, OFFSET FLAT:nondictionary
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x18]
	mov	qword ptr [rcx + 0x20], rax
	jmp	.label_202
.label_205:
	movabs	rax, OFFSET FLAT:fold_toupper
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	mov	qword ptr [rcx + 0x28], rax
	jmp	.label_202
.label_211:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	mov	byte ptr [rax + 0x34], 1
	jmp	.label_202
.label_218:
	mov	rax, qword ptr [rbp - 0x18]
	mov	byte ptr [rax + 0x35], 1
	mov	rsp, rsp
	jmp	.label_202
.label_222:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	cmp	qword ptr [rax + 0x20], 0
	nop	
	jne	.label_216
	mov	rsp, rsp
	movabs	rax, OFFSET FLAT:nonprinting
	mov	rcx, qword ptr [rbp - 0x18]
	mov	qword ptr [rcx + 0x20], rax
.label_216:
	nop	
	jmp	.label_202
.label_203:
	mov	rax, qword ptr [rbp - 0x18]
	mov	byte ptr [rax + 0x36], 1
	jmp	.label_202
.label_225:
	mov	rax, qword ptr [rbp - 0x18]
	mov	byte ptr [rax + 0x32], 1
	mov	rsp, rsp
	jmp	.label_202
.label_210:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	mov	byte ptr [rax + 0x33], 1
	mov	rbp, rbp
	jmp	.label_202
.label_206:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	mov	byte ptr [rax + 0x37], 1
	lea	rdi, [rdi]
	jmp	.label_202
.label_217:
	mov	rax, qword ptr [rbp - 0x18]
	mov	byte ptr [rax + 0x38], 1
	jmp	.label_202
.label_208:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x10]
	nop	
	mov	qword ptr [rbp - 8], rax
	jmp	.label_213
.label_202:
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 1
	mov	qword ptr [rbp - 0x10], rax
	nop	
	jmp	.label_197
.label_198:
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 8], rax
.label_213:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	pop	rbp
	nop	
	ret	
	.section	.text
	.align	16
	#Procedure 0x405fb0

	.globl badfieldspec
	.type badfieldspec, @function
badfieldspec:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	lea	rdi, [rdi]
	movabs	rax, OFFSET FLAT:.str.125
	mov	qword ptr [rbp - 8], rdi
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsp, rsp
	mov	rdi, rax
	call	gettext
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x18], rax
	mov	rbp, rbp
	call	gettext
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x20], rax
	call	quote
	lea	rsi, [rsi]
	mov	edi, 2
	xor	esi, esi
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	mov	r8, rax
	nop	
	mov	al, 0
	call	error
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406030

	.globl insertkey
	.type insertkey, @function
insertkey:
	lea	rsi, [rsi]
	push	rbp
	nop	
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	rsp, rsp
	mov	eax, 0x48
	mov	esi, eax
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	call	xmemdup
	movabs	rsi, OFFSET FLAT:keylist
	mov	qword ptr [rbp - 0x18], rax
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x10], rsi
.label_227:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	cmp	qword ptr [rax], 0
	mov	rbp, rbp
	je	.label_228
	jmp	.label_229
.label_229:
	nop	
	mov	rax, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	rax, qword ptr [rax]
	lea	rdi, [rdi]
	add	rax, 0x40
	mov	qword ptr [rbp - 0x10], rax
	lea	rdi, [rdi]
	jmp	.label_227
.label_228:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rcx], rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	mov	qword ptr [rax + 0x40], 0
	add	rsp, 0x20
	mov	rsp, rsp
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4060d0

	.globl incompatible_options
	.type incompatible_options, @function
incompatible_options:
	push	rbp
	mov	rbp, rsp
	lea	rsi, [rsi]
	sub	rsp, 0x10
	nop	
	movabs	rax, OFFSET FLAT:.str.134
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, rax
	mov	rbp, rbp
	call	gettext
	lea	rsi, [rsi]
	mov	edi, 2
	xor	esi, esi
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	rdx, rax
	nop	
	mov	al, 0
	lea	rdi, [rdi]
	call	error
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406120

	.globl specify_nmerge
	.type specify_nmerge, @function
specify_nmerge:
	push	rbp
	lea	rdi, [rdi]
	mov	rbp, rsp
	mov	rbp, rbp
	sub	rsp, 0x90
	mov	rsp, rsp
	mov	al, sil
	mov	rbp, rbp
	xor	esi, esi
	lea	rdi, [rdi]
	mov	ecx, esi
	lea	rdi, [rdi]
	mov	esi, 0xa
	lea	rdi, [rdi]
	lea	r8, [rbp - 0x18]
	nop	
	mov	dword ptr [rbp - 4], edi
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 5], al
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x10], rdx
	mov	rdi, qword ptr [rbp - 0x10]
	mov	dword ptr [rbp - 0x40], esi
	mov	rsi, rcx
	mov	rsp, rsp
	mov	edx, dword ptr [rbp - 0x40]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x48], rcx
	lea	rdi, [rdi]
	mov	rcx, r8
	mov	r8, qword ptr [rbp - 0x48]
	call	xstrtoumax
	mov	edi, 7
	nop	
	lea	rsi, [rbp - 0x28]
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x2c], eax
	call	getrlimit
	lea	rsi, [rsi]
	cmp	eax, 0
	lea	rdi, [rdi]
	jne	.label_234
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_238
.label_234:
	mov	rbp, rbp
	mov	eax, 0x14
	mov	rsp, rsp
	mov	ecx, eax
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x50], rcx
	mov	rbp, rbp
	jmp	.label_238
.label_238:
	mov	rax, qword ptr [rbp - 0x50]
	lea	rdi, [rdi]
	sub	rax, 3
	mov	ecx, eax
	mov	dword ptr [rbp - 0x30], ecx
	lea	rsi, [rsi]
	cmp	dword ptr [rbp - 0x2c], 0
	mov	rsp, rsp
	jne	.label_231
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	mov	ecx, eax
	mov	dword ptr [dword ptr [nmerge]],  ecx
	mov	ecx,  dword ptr [dword ptr [nmerge]]
	mov	rsp, rsp
	mov	eax, ecx
	cmp	rax, qword ptr [rbp - 0x18]
	je	.label_239
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x2c], 1
	lea	rsi, [rsi]
	jmp	.label_232
.label_239:
	lea	rdi, [rdi]
	cmp	dword ptr [dword ptr [nmerge]],  2
	mov	rbp, rbp
	jae	.label_233
	lea	rdi, [rdi]
	movabs	rdi, OFFSET FLAT:.str.135
	mov	rsp, rsp
	call	gettext
	lea	rdi, [rdi]
	movabs	rdi, OFFSET FLAT:long_options
	movsxd	rcx, dword ptr [rbp - 4]
	lea	rdi, [rdi]
	shl	rcx, 5
	add	rdi, rcx
	mov	rcx, qword ptr [rdi]
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x58], rax
	mov	qword ptr [rbp - 0x60], rcx
	call	quote
	mov	rbp, rbp
	xor	edx, edx
	lea	rsi, [rsi]
	mov	edi, edx
	mov	esi, edx
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x58]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x60]
	mov	r8, rax
	mov	rbp, rbp
	mov	al, 0
	call	error
	movabs	rdi, OFFSET FLAT:.str.136
	mov	rsp, rsp
	call	gettext
	movabs	rdi, OFFSET FLAT:.str.137
	mov	rbp, rbp
	movabs	rcx, OFFSET FLAT:long_options
	movsxd	rdx, dword ptr [rbp - 4]
	shl	rdx, 5
	add	rcx, rdx
	mov	rcx, qword ptr [rcx]
	mov	qword ptr [rbp - 0x68], rax
	mov	qword ptr [rbp - 0x70], rcx
	call	quote
	mov	edi, 2
	lea	rsi, [rsi]
	xor	esi, esi
	mov	rdx, qword ptr [rbp - 0x68]
	mov	rcx, qword ptr [rbp - 0x70]
	lea	rsi, [rsi]
	mov	r8, rax
	lea	rsi, [rsi]
	mov	al, 0
	lea	rsi, [rsi]
	call	error
.label_233:
	nop	
	mov	eax, dword ptr [rbp - 0x30]
	nop	
	cmp	eax,  dword ptr [dword ptr [nmerge]]
	jae	.label_235
	mov	dword ptr [rbp - 0x2c], 1
	lea	rsi, [rsi]
	jmp	.label_237
.label_235:
	lea	rsi, [rsi]
	add	rsp, 0x90
	pop	rbp
	lea	rsi, [rsi]
	ret	
.label_237:
	mov	rbp, rbp
	jmp	.label_230
.label_230:
	jmp	.label_232
.label_232:
	jmp	.label_231
.label_231:
	cmp	dword ptr [rbp - 0x2c], 1
	lea	rsi, [rsi]
	jne	.label_236
	mov	rsp, rsp
	movabs	rdi, OFFSET FLAT:.str.138
	mov	rbp, rbp
	call	gettext
	movabs	rdi, OFFSET FLAT:long_options
	movsxd	rcx, dword ptr [rbp - 4]
	mov	rbp, rbp
	shl	rcx, 5
	nop	
	add	rdi, rcx
	mov	rcx, qword ptr [rdi]
	mov	rdi, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x78], rax
	nop	
	mov	qword ptr [rbp - 0x80], rcx
	mov	rbp, rbp
	call	quote
	xor	edx, edx
	lea	rsi, [rsi]
	mov	edi, edx
	mov	esi, edx
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x78]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x80]
	mov	rsp, rsp
	mov	r8, rax
	lea	rdi, [rdi]
	mov	al, 0
	nop	
	call	error
	lea	rsi, [rsi]
	movabs	rdi, OFFSET FLAT:.str.139
	call	gettext
	lea	rsi, [rsi]
	lea	rsi, [rbp - 0x3b]
	nop	
	movabs	rcx, OFFSET FLAT:long_options
	movsxd	rdx, dword ptr [rbp - 4]
	nop	
	shl	rdx, 5
	lea	rsi, [rsi]
	add	rcx, rdx
	mov	rcx, qword ptr [rcx]
	nop	
	mov	edi, dword ptr [rbp - 0x30]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x88], rax
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x90], rcx
	call	uinttostr
	mov	edi, 2
	xor	esi, esi
	mov	rdx, qword ptr [rbp - 0x88]
	mov	rcx, qword ptr [rbp - 0x90]
	mov	r8, rax
	mov	al, 0
	lea	rdi, [rdi]
	call	error
.label_236:
	movabs	rcx, OFFSET FLAT:long_options
	lea	rsi, [rsi]
	mov	edi, dword ptr [rbp - 0x2c]
	mov	esi, dword ptr [rbp - 4]
	mov	al, byte ptr [rbp - 5]
	mov	r8, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	movsx	edx, al
	nop	
	call	xstrtol_fatal
	.section	.text
	.align	16
	#Procedure 0x406480

	.globl specify_sort_size
	.type specify_sort_size, @function
specify_sort_size:
	nop	
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x60
	mov	rsp, rsp
	mov	al, sil
	lea	rsi, [rsi]
	lea	rsi, [rbp - 0x20]
	mov	ecx, 0xa
	lea	r8, [rbp - 0x18]
	mov	rbp, rbp
	movabs	r9, OFFSET FLAT:.str.140
	nop	
	mov	dword ptr [rbp - 4], edi
	mov	byte ptr [rbp - 5], al
	mov	qword ptr [rbp - 0x10], rdx
	mov	rdi, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	edx, ecx
	lea	rdi, [rdi]
	mov	rcx, r8
	mov	r8, r9
	call	xstrtoumax
	mov	dword ptr [rbp - 0x24], eax
	mov	rsp, rsp
	cmp	dword ptr [rbp - 0x24], 0
	nop	
	jne	.label_242
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x20]
	movsx	ecx, byte ptr [rax - 1]
	sub	ecx, 0x30
	cmp	ecx, 9
	lea	rdi, [rdi]
	ja	.label_242
	movabs	rax, 0x3fffffffffffff
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0x18], rax
	mov	rsp, rsp
	ja	.label_246
	mov	rax, qword ptr [rbp - 0x18]
	shl	rax, 0xa
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_244
.label_246:
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x24], 1
.label_244:
	lea	rdi, [rdi]
	jmp	.label_242
.label_242:
	cmp	dword ptr [rbp - 0x24], 2
	jne	.label_240
	mov	rax, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	movsx	ecx, byte ptr [rax - 1]
	mov	rbp, rbp
	sub	ecx, 0x30
	cmp	ecx, 9
	lea	rsi, [rsi]
	ja	.label_240
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x20]
	cmp	byte ptr [rax + 1], 0
	jne	.label_240
	nop	
	mov	rax, qword ptr [rbp - 0x20]
	nop	
	movsx	ecx, byte ptr [rax]
	mov	edx, ecx
	mov	rbp, rbp
	sub	edx, 0x25
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x34], ecx
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x38], edx
	je	.label_253
	jmp	.label_243
.label_243:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x34]
	sub	eax, 0x62
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x3c], eax
	jne	.label_245
	jmp	.label_252
.label_252:
	mov	dword ptr [rbp - 0x24], 0
	lea	rsi, [rsi]
	jmp	.label_245
.label_253:
	movsd	xmm0,  qword ptr [word ptr [label_259]]
	movsd	xmm1,  qword ptr [word ptr [label_260]]
	lea	rsi, [rsi]
	movsd	qword ptr [rbp - 0x48], xmm0
	movsd	qword ptr [rbp - 0x50], xmm1
	nop	
	call	physmem_total
	movaps	xmm1,  xmmword ptr [word ptr [rip + label_247]]
	movq	xmm2, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	punpckldq	xmm2, xmm1
	mov	rbp, rbp
	movapd	xmm1,  xmmword ptr [word ptr [rip + label_248]]
	mov	rbp, rbp
	subpd	xmm2, xmm1
	lea	rdi, [rdi]
	pshufd	xmm1, xmm2, 0x4e
	addpd	xmm1, xmm2
	mulsd	xmm0, xmm1
	nop	
	movsd	xmm1, qword ptr [rbp - 0x50]
	divsd	xmm0, xmm1
	movsd	qword ptr [rbp - 0x30], xmm0
	mov	rbp, rbp
	movsd	xmm0, qword ptr [rbp - 0x48]
	ucomisd	xmm0, qword ptr [rbp - 0x30]
	jbe	.label_249
	mov	rsp, rsp
	movsd	xmm0, qword ptr [rbp - 0x30]
	lea	rsi, [rsi]
	movsd	xmm1,  qword ptr [word ptr [rip + label_257]]
	movaps	xmm2, xmm0
	mov	rbp, rbp
	subsd	xmm2, xmm1
	cvttsd2si	rax, xmm2
	lea	rdi, [rdi]
	movabs	rcx, 0x8000000000000000
	lea	rdi, [rdi]
	xor	rax, rcx
	cvttsd2si	rcx, xmm0
	ucomisd	xmm1, xmm0
	mov	rsp, rsp
	cmova	rax, rcx
	nop	
	mov	qword ptr [rbp - 0x18], rax
	nop	
	mov	dword ptr [rbp - 0x24], 0
	lea	rsi, [rsi]
	jmp	.label_258
.label_249:
	mov	dword ptr [rbp - 0x24], 1
.label_258:
	jmp	.label_245
.label_245:
	jmp	.label_240
.label_240:
	mov	rsp, rsp
	cmp	dword ptr [rbp - 0x24], 0
	nop	
	jne	.label_250
	mov	rax, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	cmp	rax,  qword ptr [word ptr [sort_size]]
	jae	.label_255
	mov	rsp, rsp
	jmp	.label_241
.label_255:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	mov	qword ptr [word ptr [sort_size]],  rax
	mov	rax,  qword ptr [word ptr [sort_size]]
	cmp	rax, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	jne	.label_251
	mov	rax,  qword ptr [word ptr [sort_size]]
	mov	rsp, rsp
	mov	ecx,  dword ptr [dword ptr [nmerge]]
	nop	
	mov	edx, ecx
	lea	rdi, [rdi]
	imul	rdx, rdx, 0x22
	cmp	rax, rdx
	jbe	.label_256
	mov	rax,  qword ptr [word ptr [sort_size]]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x58], rax
	lea	rdi, [rdi]
	jmp	.label_254
.label_256:
	mov	eax,  dword ptr [dword ptr [nmerge]]
	mov	rsp, rsp
	mov	ecx, eax
	imul	rcx, rcx, 0x22
	mov	qword ptr [rbp - 0x58], rcx
.label_254:
	mov	rax, qword ptr [rbp - 0x58]
	mov	rbp, rbp
	mov	qword ptr [word ptr [sort_size]],  rax
	jmp	.label_241
.label_251:
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x24], 1
.label_250:
	lea	rdi, [rdi]
	movabs	rcx, OFFSET FLAT:long_options
	mov	edi, dword ptr [rbp - 0x24]
	nop	
	mov	esi, dword ptr [rbp - 4]
	lea	rsi, [rsi]
	mov	al, byte ptr [rbp - 5]
	lea	rdi, [rdi]
	mov	r8, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	movsx	edx, al
	lea	rdi, [rdi]
	call	xstrtol_fatal
.label_241:
	add	rsp, 0x60
	pop	rbp
	mov	rsp, rsp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4067a0

	.globl add_temp_dir
	.type add_temp_dir, @function
add_temp_dir:
	mov	rsp, rsp
	push	rbp
	mov	rbp, rsp
	mov	rsp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 8], rdi
	mov	rdi,  qword ptr [word ptr [temp_dir_count]]
	cmp	rdi,  qword ptr [word ptr [temp_dir_alloc]]
	jne	.label_261
	nop	
	movabs	rsi, OFFSET FLAT:temp_dir_alloc
	mov	eax, 8
	mov	edx, eax
	lea	rdi, [rdi]
	mov	rcx,  qword ptr [word ptr [temp_dirs]]
	lea	rsi, [rsi]
	mov	rdi, rcx
	call	x2nrealloc
	lea	rsi, [rsi]
	mov	qword ptr [word ptr [temp_dirs]],  rax
.label_261:
	nop	
	mov	rax, qword ptr [rbp - 8]
	mov	rcx,  qword ptr [word ptr [temp_dir_count]]
	mov	rdx, rcx
	lea	rdi, [rdi]
	add	rdx, 1
	lea	rdi, [rdi]
	mov	qword ptr [word ptr [temp_dir_count]],  rdx
	mov	rsp, rsp
	mov	rdx,  qword ptr [word ptr [temp_dirs]]
	mov	rsp, rsp
	mov	qword ptr [rdx + rcx*8], rax
	lea	rdi, [rdi]
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x406840

	.globl specify_nthreads
	.type specify_nthreads, @function
specify_nthreads:
	lea	rsi, [rsi]
	push	rbp
	mov	rbp, rsp
	lea	rdi, [rdi]
	sub	rsp, 0x30
	mov	al, sil
	xor	esi, esi
	mov	ecx, 0xa
	lea	r8, [rbp - 0x20]
	movabs	r9, OFFSET FLAT:.str_0
	mov	rbp, rbp
	mov	dword ptr [rbp - 0xc], edi
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0xd], al
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x18], rdx
	mov	rdi, qword ptr [rbp - 0x18]
	nop	
	mov	edx, ecx
	nop	
	mov	rcx, r8
	mov	r8, r9
	call	xstrtoul
	nop	
	mov	dword ptr [rbp - 0x24], eax
	mov	rsp, rsp
	cmp	dword ptr [rbp - 0x24], 1
	jne	.label_265
	mov	qword ptr [rbp - 8], -1
	jmp	.label_266
.label_265:
	nop	
	cmp	dword ptr [rbp - 0x24], 0
	mov	rbp, rbp
	je	.label_264
	mov	rbp, rbp
	movabs	rcx, OFFSET FLAT:long_options
	nop	
	mov	edi, dword ptr [rbp - 0x24]
	nop	
	mov	esi, dword ptr [rbp - 0xc]
	mov	al, byte ptr [rbp - 0xd]
	lea	rsi, [rsi]
	mov	r8, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	movsx	edx, al
	mov	rbp, rbp
	call	xstrtol_fatal
.label_264:
	mov	rbp, rbp
	mov	rax, -1
	mov	rbp, rbp
	cmp	rax, qword ptr [rbp - 0x20]
	nop	
	jae	.label_262
	nop	
	mov	qword ptr [rbp - 0x20], -1
.label_262:
	cmp	qword ptr [rbp - 0x20], 0
	jne	.label_263
	movabs	rdi, OFFSET FLAT:.str.141
	call	gettext
	lea	rsi, [rsi]
	mov	edi, 2
	xor	esi, esi
	mov	rdx, rax
	lea	rsi, [rsi]
	mov	al, 0
	lea	rdi, [rdi]
	call	error
.label_263:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x20]
	nop	
	mov	qword ptr [rbp - 8], rax
.label_266:
	nop	
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x30
	pop	rbp
	mov	rbp, rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x406960

	.globl xfopen
	.type xfopen, @function
xfopen:
	push	rbp
	lea	rsi, [rsi]
	mov	rbp, rsp
	lea	rdi, [rdi]
	sub	rsp, 0x20
	nop	
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	call	stream_open
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x18], rax
	cmp	qword ptr [rbp - 0x18], 0
	jne	.label_267
	movabs	rdi, OFFSET FLAT:.str.142
	call	gettext
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 8]
	mov	rdi, rax
	call	sort_die
.label_267:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x18]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4069d0

	.globl xfclose
	.type xfclose, @function
xfclose:
	mov	rsp, rsp
	push	rbp
	mov	rsp, rsp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rdi, qword ptr [rbp - 8]
	call	fileno
	mov	ecx, eax
	mov	rsp, rsp
	test	eax, eax
	mov	dword ptr [rbp - 0x14], ecx
	je	.label_271
	jmp	.label_275
.label_275:
	nop	
	mov	eax, dword ptr [rbp - 0x14]
	lea	rdi, [rdi]
	sub	eax, 1
	mov	dword ptr [rbp - 0x18], eax
	lea	rdi, [rdi]
	je	.label_268
	nop	
	jmp	.label_273
.label_271:
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 8]
	nop	
	call	feof_unlocked
	lea	rsi, [rsi]
	cmp	eax, 0
	je	.label_270
	mov	rdi, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	call	clearerr_unlocked
.label_270:
	lea	rdi, [rdi]
	jmp	.label_269
.label_268:
	nop	
	mov	rdi, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	call	fflush_unlocked
	lea	rsi, [rsi]
	cmp	eax, 0
	je	.label_274
	lea	rsi, [rsi]
	movabs	rdi, OFFSET FLAT:.str.145
	mov	rsp, rsp
	call	gettext
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdi, rax
	mov	rbp, rbp
	call	sort_die
.label_274:
	mov	rbp, rbp
	jmp	.label_269
.label_273:
	mov	rdi, qword ptr [rbp - 8]
	call	rpl_fclose
	nop	
	cmp	eax, 0
	mov	rbp, rbp
	je	.label_272
	movabs	rdi, OFFSET FLAT:.str.65
	mov	rbp, rbp
	call	gettext
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdi, rax
	mov	rbp, rbp
	call	sort_die
.label_272:
	jmp	.label_269
.label_269:
	lea	rsi, [rsi]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x406ae0

	.globl default_key_compare
	.type default_key_compare, @function
default_key_compare:
	lea	rdi, [rdi]
	push	rbp
	mov	rbp, rsp
	mov	rbp, rbp
	sub	rsp, 0x10
	lea	rdi, [rdi]
	mov	al, 1
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	cmp	qword ptr [rdi + 0x20], 0
	mov	rsp, rsp
	mov	byte ptr [rbp - 9], al
	jne	.label_276
	mov	al, 1
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 8]
	cmp	qword ptr [rcx + 0x28], 0
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 9], al
	nop	
	jne	.label_276
	mov	al, 1
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 8]
	test	byte ptr [rcx + 0x30], 1
	mov	byte ptr [rbp - 9], al
	jne	.label_276
	mov	al, 1
	mov	rcx, qword ptr [rbp - 8]
	nop	
	test	byte ptr [rcx + 0x31], 1
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 9], al
	mov	rbp, rbp
	jne	.label_276
	mov	rdi, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	call	key_numeric
	mov	rbp, rbp
	mov	cl, 1
	nop	
	test	al, 1
	mov	rsp, rsp
	mov	byte ptr [rbp - 9], cl
	jne	.label_276
	lea	rdi, [rdi]
	mov	al, 1
	nop	
	mov	rcx, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	test	byte ptr [rcx + 0x36], 1
	nop	
	mov	byte ptr [rbp - 9], al
	jne	.label_276
	mov	al, 1
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 8]
	mov	rsp, rsp
	test	byte ptr [rcx + 0x38], 1
	mov	rbp, rbp
	mov	byte ptr [rbp - 9], al
	lea	rdi, [rdi]
	jne	.label_276
	mov	rax, qword ptr [rbp - 8]
	mov	cl, byte ptr [rax + 0x33]
	mov	rbp, rbp
	mov	byte ptr [rbp - 9], cl
.label_276:
	mov	al, byte ptr [rbp - 9]
	xor	al, 0xff
	lea	rdi, [rdi]
	and	al, 1
	nop	
	movzx	eax, al
	mov	rsp, rsp
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x406be0

	.globl check_ordering_compatibility
	.type check_ordering_compatibility, @function
check_ordering_compatibility:
	mov	rbp, rbp
	push	rbp
	nop	
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	rax,  qword ptr [word ptr [keylist]]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 8], rax
.label_277:
	nop	
	cmp	qword ptr [rbp - 8], 0
	lea	rdi, [rdi]
	je	.label_279
	mov	eax, 1
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	dl, byte ptr [rcx + 0x32]
	and	dl, 1
	lea	rdi, [rdi]
	movzx	esi, dl
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 8]
	mov	rbp, rbp
	mov	dl, byte ptr [rcx + 0x34]
	and	dl, 1
	lea	rsi, [rsi]
	movzx	edi, dl
	lea	rdi, [rdi]
	add	esi, edi
	nop	
	mov	rcx, qword ptr [rbp - 8]
	mov	rbp, rbp
	mov	dl, byte ptr [rcx + 0x35]
	and	dl, 1
	movzx	edi, dl
	mov	rsp, rsp
	add	esi, edi
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 8]
	mov	dl, byte ptr [rcx + 0x36]
	and	dl, 1
	movzx	edi, dl
	lea	rsi, [rsi]
	add	esi, edi
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 8]
	mov	dl, byte ptr [rcx + 0x38]
	and	dl, 1
	mov	rbp, rbp
	movzx	edi, dl
	mov	rcx, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	dl, byte ptr [rcx + 0x33]
	mov	rsp, rsp
	and	dl, 1
	movzx	r8d, dl
	or	edi, r8d
	mov	rcx, qword ptr [rbp - 8]
	cmp	qword ptr [rcx + 0x20], 0
	setne	dl
	lea	rdi, [rdi]
	xor	dl, 0xff
	lea	rdi, [rdi]
	xor	dl, 0xff
	and	dl, 1
	lea	rsi, [rsi]
	movzx	r8d, dl
	or	edi, r8d
	add	esi, edi
	cmp	eax, esi
	jge	.label_278
	lea	rsi, [rbp - 0x30]
	nop	
	mov	rax, qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	byte ptr [rax + 0x37], 0
	mov	rax, qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	byte ptr [rax + 0x31], 0
	nop	
	mov	rax, qword ptr [rbp - 8]
	mov	byte ptr [rax + 0x30], 0
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 8]
	call	key_to_opts
	lea	rdi, [rbp - 0x30]
	call	incompatible_options
.label_278:
	mov	rbp, rbp
	jmp	.label_280
.label_280:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax + 0x40]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_277
.label_279:
	lea	rsi, [rsi]
	add	rsp, 0x30
	pop	rbp
	nop	
	ret	
	.section	.text
	.align	16
	#Procedure 0x406d30

	.globl key_warnings
	.type key_warnings, @function
key_warnings:
	mov	rbp, rbp
	push	rbp
	mov	rbp, rbp
	mov	rbp, rsp
	sub	rsp, 0x1e0
	mov	rsp, rsp
	mov	al, sil
	mov	rsp, rsp
	mov	esi, 0x48
	mov	rsp, rsp
	mov	edx, esi
	lea	rcx, [rbp - 0x60]
	mov	rbp, rbp
	mov	qword ptr [rbp - 8], rdi
	lea	rsi, [rsi]
	and	al, 1
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 9], al
	mov	rdi, qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x148], rdi
	mov	rdi, rcx
	mov	rsi, qword ptr [rbp - 0x148]
	lea	rsi, [rsi]
	call	memcpy
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x68], 1
	mov	rcx,  qword ptr [word ptr [keylist]]
	nop	
	mov	qword ptr [rbp - 0x18], rcx
.label_305:
	cmp	qword ptr [rbp - 0x18], 0
	je	.label_295
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x18]
	test	byte ptr [rax + 0x39], 1
	lea	rsi, [rsi]
	je	.label_297
	lea	rax, [rbp - 0xf0]
	lea	rsi, [rsi]
	lea	rcx, [rbp - 0xc0]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rdx]
	mov	qword ptr [rbp - 0x70], rdx
	nop	
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	mov	rdx, qword ptr [rdx + 0x10]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x78], rdx
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0xf8], rcx
	mov	qword ptr [rbp - 0x100], rax
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x70], -1
	jne	.label_301
	mov	rax, qword ptr [rbp - 0x70]
	add	rax, 1
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x70], rax
.label_301:
	mov	rsp, rsp
	lea	rsi, [rbp - 0x90]
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0xf8]
	nop	
	mov	eax, OFFSET FLAT:.str.146
	mov	ecx, eax
	mov	qword ptr [rbp - 0x150], rsi
	nop	
	mov	rsi, rcx
	call	stpcpy
	mov	rdi, qword ptr [rbp - 0x70]
	mov	rsi, qword ptr [rbp - 0x150]
	mov	qword ptr [rbp - 0x158], rax
	call	umaxtostr
	lea	rsi, [rbp - 0x90]
	mov	rdi, qword ptr [rbp - 0x158]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x160], rsi
	mov	rsi, rax
	mov	rsp, rsp
	call	stpcpy
	mov	qword ptr [rbp - 0xf8], rax
	mov	rdi, qword ptr [rbp - 0x100]
	lea	rdi, [rdi]
	mov	edx, OFFSET FLAT:.str.147
	lea	rsi, [rsi]
	mov	esi, edx
	mov	rbp, rbp
	call	stpcpy
	mov	rcx, qword ptr [rbp - 0x70]
	mov	rbp, rbp
	add	rcx, 1
	mov	rdi, rcx
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x160]
	mov	qword ptr [rbp - 0x168], rax
	call	umaxtostr
	mov	rdi, qword ptr [rbp - 0x168]
	lea	rsi, [rsi]
	mov	rsi, rax
	nop	
	call	stpcpy
	mov	qword ptr [rbp - 0x100], rax
	nop	
	mov	rax, qword ptr [rbp - 0x18]
	cmp	qword ptr [rax + 0x10], -1
	je	.label_303
	lea	rsi, [rbp - 0x90]
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0xf8]
	lea	rdi, [rdi]
	mov	eax, OFFSET FLAT:.str.148
	mov	rsp, rsp
	mov	ecx, eax
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x170], rsi
	mov	rsp, rsp
	mov	rsi, rcx
	nop	
	call	stpcpy
	mov	rcx, qword ptr [rbp - 0x78]
	nop	
	add	rcx, 1
	mov	rdi, rcx
	mov	rsi, qword ptr [rbp - 0x170]
	mov	qword ptr [rbp - 0x178], rax
	lea	rsi, [rsi]
	call	umaxtostr
	mov	rsp, rsp
	lea	rsi, [rbp - 0x90]
	mov	rdi, qword ptr [rbp - 0x178]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x180], rsi
	mov	rsi, rax
	call	stpcpy
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x100]
	mov	edx, OFFSET FLAT:.str.149
	lea	rdi, [rdi]
	mov	esi, edx
	mov	qword ptr [rbp - 0x188], rax
	call	stpcpy
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x78]
	lea	rsi, [rsi]
	add	rcx, 1
	mov	rsi, qword ptr [rbp - 0x18]
	cmp	qword ptr [rsi + 0x18], -1
	sete	r8b
	mov	rbp, rbp
	and	r8b, 1
	mov	rsp, rsp
	movzx	edx, r8b
	nop	
	movsxd	rsi, edx
	add	rcx, rsi
	mov	rdi, rcx
	mov	rsi, qword ptr [rbp - 0x180]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x190], rax
	mov	rsp, rsp
	call	umaxtostr
	mov	rdi, qword ptr [rbp - 0x190]
	nop	
	mov	rsi, rax
	mov	rbp, rbp
	call	stpcpy
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x198], rax
.label_303:
	mov	rbp, rbp
	movabs	rdi, OFFSET FLAT:.str.150
	lea	rsi, [rsi]
	call	gettext
	mov	rbp, rbp
	xor	edi, edi
	lea	rsi, [rbp - 0xc0]
	mov	qword ptr [rbp - 0x1a0], rax
	mov	rbp, rbp
	call	quote_n
	mov	edi, 1
	nop	
	lea	rsi, [rbp - 0xf0]
	mov	qword ptr [rbp - 0x1a8], rax
	call	quote_n
	xor	edi, edi
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x1ac], edi
	mov	esi, dword ptr [rbp - 0x1ac]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x1a0]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x1a8]
	lea	rdi, [rdi]
	mov	r8, rax
	mov	al, 0
	nop	
	call	error
.label_297:
	mov	rbp, rbp
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x18]
	cmp	qword ptr [rdx], -1
	nop	
	mov	byte ptr [rbp - 0x1ad], cl
	je	.label_292
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	mov	rax, qword ptr [rax + 0x10]
	mov	rcx, qword ptr [rbp - 0x18]
	cmp	rax, qword ptr [rcx]
	lea	rsi, [rsi]
	setb	dl
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x1ad], dl
.label_292:
	mov	rsp, rsp
	mov	al, byte ptr [rbp - 0x1ad]
	lea	rdi, [rdi]
	and	al, 1
	mov	byte ptr [rbp - 0x101], al
	mov	rbp, rbp
	test	byte ptr [rbp - 0x101], 1
	je	.label_299
	mov	rbp, rbp
	movabs	rdi, OFFSET FLAT:.str.151
	lea	rsi, [rsi]
	call	gettext
	xor	ecx, ecx
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x68]
	mov	qword ptr [rbp - 0x1b8], rdi
	mov	rbp, rbp
	mov	edi, ecx
	mov	esi, ecx
	mov	rdx, rax
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x1b8]
	mov	al, 0
	lea	rdi, [rdi]
	call	error
.label_299:
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x18]
	nop	
	call	key_numeric
	mov	rbp, rbp
	mov	cl, 1
	test	al, 1
	mov	byte ptr [rbp - 0x1b9], cl
	jne	.label_306
	mov	rax, qword ptr [rbp - 0x18]
	mov	cl, byte ptr [rax + 0x36]
	mov	byte ptr [rbp - 0x1b9], cl
.label_306:
	mov	rsp, rsp
	mov	al, byte ptr [rbp - 0x1b9]
	mov	rsp, rsp
	xor	ecx, ecx
	mov	dl, cl
	lea	rsi, [rsi]
	and	al, 1
	mov	byte ptr [rbp - 0x102], al
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x18]
	cmp	qword ptr [rsi + 0x10], 0
	mov	byte ptr [rbp - 0x1ba], dl
	jne	.label_289
	nop	
	mov	rax, qword ptr [rbp - 0x18]
	cmp	qword ptr [rax + 0x18], 0
	setne	cl
	nop	
	mov	byte ptr [rbp - 0x1ba], cl
.label_289:
	lea	rdi, [rdi]
	mov	al, byte ptr [rbp - 0x1ba]
	nop	
	and	al, 1
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x103], al
	test	byte ptr [rbp - 0x101], 1
	lea	rsi, [rsi]
	jne	.label_288
	test	byte ptr [rbp - 9], 1
	lea	rsi, [rsi]
	jne	.label_288
	cmp	dword ptr [dword ptr [tab]],  0x80
	mov	rsp, rsp
	jne	.label_288
	test	byte ptr [rbp - 0x103], 1
	jne	.label_288
	mov	rax, qword ptr [rbp - 0x18]
	test	byte ptr [rax + 0x30], 1
	nop	
	jne	.label_304
	test	byte ptr [rbp - 0x102], 1
	mov	rbp, rbp
	je	.label_286
.label_304:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x18]
	test	byte ptr [rax + 0x30], 1
	lea	rsi, [rsi]
	jne	.label_281
	mov	rax, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	cmp	qword ptr [rax + 8], 0
	jne	.label_286
.label_281:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	test	byte ptr [rax + 0x31], 1
	jne	.label_288
	nop	
	mov	rax, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	cmp	qword ptr [rax + 0x18], 0
	nop	
	je	.label_288
.label_286:
	movabs	rdi, OFFSET FLAT:.str.152
	nop	
	call	gettext
	xor	ecx, ecx
	mov	rdi, qword ptr [rbp - 0x68]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x1c8], rdi
	lea	rsi, [rsi]
	mov	edi, ecx
	mov	esi, ecx
	mov	rdx, rax
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x1c8]
	mov	al, 0
	lea	rdi, [rdi]
	call	error
.label_288:
	mov	rsp, rsp
	test	byte ptr [rbp - 9], 1
	jne	.label_293
	mov	rdi, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	call	key_numeric
	mov	rbp, rbp
	test	al, 1
	mov	rsp, rsp
	jne	.label_296
	mov	rbp, rbp
	jmp	.label_293
.label_296:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax]
	add	rax, 1
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x110], rax
	nop	
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax + 0x10]
	lea	rdi, [rdi]
	add	rax, 1
	mov	qword ptr [rbp - 0x118], rax
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x110], 0
	jne	.label_300
	mov	rax, qword ptr [rbp - 0x110]
	add	rax, 1
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x110], rax
.label_300:
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0x118], 0
	je	.label_291
	mov	rax, qword ptr [rbp - 0x110]
	cmp	rax, qword ptr [rbp - 0x118]
	lea	rsi, [rsi]
	jae	.label_302
.label_291:
	mov	rsp, rsp
	movabs	rdi, OFFSET FLAT:.str.153
	lea	rsi, [rsi]
	call	gettext
	mov	rbp, rbp
	xor	ecx, ecx
	nop	
	mov	rdi, qword ptr [rbp - 0x68]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x1d0], rdi
	mov	rsp, rsp
	mov	edi, ecx
	mov	esi, ecx
	nop	
	mov	rdx, rax
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x1d0]
	mov	al, 0
	call	error
.label_302:
	nop	
	jmp	.label_293
.label_293:
	cmp	qword ptr [rbp - 0x40], 0
	je	.label_294
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x40]
	mov	rcx, qword ptr [rbp - 0x18]
	cmp	rax, qword ptr [rcx + 0x20]
	jne	.label_294
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x40], 0
.label_294:
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x38], 0
	lea	rdi, [rdi]
	je	.label_298
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x38]
	nop	
	mov	rcx, qword ptr [rbp - 0x18]
	cmp	rax, qword ptr [rcx + 0x28]
	lea	rsi, [rsi]
	jne	.label_298
	mov	qword ptr [rbp - 0x38], 0
.label_298:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	mov	cl, byte ptr [rax + 0x30]
	mov	rsp, rsp
	xor	cl, 0xff
	and	cl, 1
	nop	
	movzx	edx, cl
	mov	cl, byte ptr [rbp - 0x30]
	nop	
	and	cl, 1
	nop	
	movzx	esi, cl
	and	esi, edx
	mov	rbp, rbp
	cmp	esi, 0
	setne	cl
	nop	
	and	cl, 1
	mov	byte ptr [rbp - 0x30], cl
	mov	rax, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	mov	cl, byte ptr [rax + 0x31]
	xor	cl, 0xff
	lea	rdi, [rdi]
	and	cl, 1
	movzx	edx, cl
	mov	rsp, rsp
	mov	cl, byte ptr [rbp - 0x2f]
	and	cl, 1
	mov	rsp, rsp
	movzx	esi, cl
	and	esi, edx
	cmp	esi, 0
	mov	rbp, rbp
	setne	cl
	and	cl, 1
	mov	byte ptr [rbp - 0x2f], cl
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x18]
	nop	
	mov	cl, byte ptr [rax + 0x36]
	nop	
	xor	cl, 0xff
	lea	rsi, [rsi]
	and	cl, 1
	nop	
	movzx	edx, cl
	mov	cl, byte ptr [rbp - 0x2a]
	lea	rdi, [rdi]
	and	cl, 1
	movzx	esi, cl
	lea	rdi, [rdi]
	and	esi, edx
	cmp	esi, 0
	mov	rsp, rsp
	setne	cl
	and	cl, 1
	mov	byte ptr [rbp - 0x2a], cl
	mov	rax, qword ptr [rbp - 0x18]
	mov	cl, byte ptr [rax + 0x32]
	mov	rbp, rbp
	xor	cl, 0xff
	nop	
	and	cl, 1
	movzx	edx, cl
	lea	rdi, [rdi]
	mov	cl, byte ptr [rbp - 0x2e]
	and	cl, 1
	movzx	esi, cl
	mov	rsp, rsp
	and	esi, edx
	cmp	esi, 0
	setne	cl
	and	cl, 1
	nop	
	mov	byte ptr [rbp - 0x2e], cl
	mov	rax, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	mov	cl, byte ptr [rax + 0x34]
	mov	rbp, rbp
	xor	cl, 0xff
	lea	rdi, [rdi]
	and	cl, 1
	lea	rdi, [rdi]
	movzx	edx, cl
	mov	cl, byte ptr [rbp - 0x2c]
	and	cl, 1
	lea	rdi, [rdi]
	movzx	esi, cl
	lea	rsi, [rsi]
	and	esi, edx
	mov	rbp, rbp
	cmp	esi, 0
	mov	rbp, rbp
	setne	cl
	nop	
	and	cl, 1
	mov	byte ptr [rbp - 0x2c], cl
	mov	rax, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	mov	cl, byte ptr [rax + 0x35]
	lea	rsi, [rsi]
	xor	cl, 0xff
	and	cl, 1
	movzx	edx, cl
	mov	cl, byte ptr [rbp - 0x2b]
	and	cl, 1
	mov	rsp, rsp
	movzx	esi, cl
	and	esi, edx
	cmp	esi, 0
	setne	cl
	and	cl, 1
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x2b], cl
	mov	rax, qword ptr [rbp - 0x18]
	mov	cl, byte ptr [rax + 0x33]
	xor	cl, 0xff
	lea	rdi, [rdi]
	and	cl, 1
	movzx	edx, cl
	mov	cl, byte ptr [rbp - 0x2d]
	mov	rbp, rbp
	and	cl, 1
	nop	
	movzx	esi, cl
	and	esi, edx
	mov	rbp, rbp
	cmp	esi, 0
	setne	cl
	and	cl, 1
	nop	
	mov	byte ptr [rbp - 0x2d], cl
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x18]
	mov	cl, byte ptr [rax + 0x38]
	xor	cl, 0xff
	mov	rsp, rsp
	and	cl, 1
	movzx	edx, cl
	mov	rbp, rbp
	mov	cl, byte ptr [rbp - 0x28]
	lea	rdi, [rdi]
	and	cl, 1
	lea	rdi, [rdi]
	movzx	esi, cl
	and	esi, edx
	nop	
	cmp	esi, 0
	nop	
	setne	cl
	and	cl, 1
	nop	
	mov	byte ptr [rbp - 0x28], cl
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x18]
	mov	cl, byte ptr [rax + 0x37]
	xor	cl, 0xff
	mov	rsp, rsp
	and	cl, 1
	lea	rsi, [rsi]
	movzx	edx, cl
	mov	cl, byte ptr [rbp - 0x29]
	and	cl, 1
	lea	rsi, [rsi]
	movzx	esi, cl
	mov	rsp, rsp
	and	esi, edx
	lea	rsi, [rsi]
	cmp	esi, 0
	setne	cl
	lea	rsi, [rsi]
	and	cl, 1
	mov	byte ptr [rbp - 0x29], cl
	mov	rax, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	mov	rax, qword ptr [rax + 0x40]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x18], rax
	mov	rax, qword ptr [rbp - 0x68]
	lea	rdi, [rdi]
	add	rax, 1
	mov	qword ptr [rbp - 0x68], rax
	lea	rdi, [rdi]
	jmp	.label_305
.label_295:
	nop	
	lea	rdi, [rbp - 0x60]
	mov	rbp, rbp
	call	default_key_compare
	test	al, 1
	jne	.label_282
	nop	
	jmp	.label_283
.label_282:
	test	byte ptr [rbp - 0x29], 1
	je	.label_285
	lea	rsi, [rsi]
	test	byte ptr [byte ptr [stable]],  1
	lea	rsi, [rsi]
	jne	.label_287
	test	byte ptr [byte ptr [unique]],  1
	lea	rsi, [rsi]
	je	.label_285
.label_287:
	mov	rbp, rbp
	cmp	qword ptr [word ptr [keylist]],  0
	lea	rsi, [rsi]
	je	.label_285
.label_283:
	mov	al, byte ptr [rbp - 0x29]
	lea	rsi, [rsi]
	and	al, 1
	mov	byte ptr [rbp - 0x119], al
	test	byte ptr [byte ptr [stable]],  1
	jne	.label_290
	test	byte ptr [byte ptr [unique]],  1
	nop	
	jne	.label_290
	mov	byte ptr [rbp - 0x29], 0
.label_290:
	lea	rdi, [rbp - 0x60]
	lea	rdi, [rdi]
	lea	rsi, [rbp - 0x140]
	mov	rbp, rbp
	call	key_to_opts
	lea	rdi, [rbp - 0x140]
	mov	rbp, rbp
	call	strlen
	lea	rdi, [rdi]
	mov	rdi, rax
	call	select_plural
	mov	rsp, rsp
	movabs	rdi, OFFSET FLAT:.str.154
	nop	
	movabs	rsi, OFFSET FLAT:.str.155
	mov	rdx, rax
	mov	rsp, rsp
	call	ngettext
	xor	ecx, ecx
	nop	
	lea	rdx, [rbp - 0x140]
	mov	edi, ecx
	mov	esi, ecx
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x1d8], rdx
	mov	rdx, rax
	mov	rcx, qword ptr [rbp - 0x1d8]
	mov	rbp, rbp
	mov	al, 0
	call	error
	mov	al, byte ptr [rbp - 0x119]
	and	al, 1
	mov	byte ptr [rbp - 0x29], al
.label_285:
	test	byte ptr [rbp - 0x29], 1
	je	.label_284
	lea	rsi, [rsi]
	test	byte ptr [byte ptr [stable]],  1
	nop	
	jne	.label_284
	test	byte ptr [byte ptr [unique]],  1
	jne	.label_284
	cmp	qword ptr [word ptr [keylist]],  0
	je	.label_284
	lea	rsi, [rsi]
	movabs	rdi, OFFSET FLAT:.str.156
	nop	
	call	gettext
	xor	ecx, ecx
	lea	rsi, [rsi]
	mov	edi, ecx
	mov	esi, ecx
	mov	rdx, rax
	mov	rsp, rsp
	mov	al, 0
	call	error
.label_284:
	add	rsp, 0x1e0
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x407780

	.globl random_md5_state_init
	.type random_md5_state_init, @function
random_md5_state_init:
	mov	rbp, rbp
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	rsp, rsp
	mov	eax, 0x10
	mov	esi, eax
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	call	randread_new
	mov	qword ptr [rbp - 0x28], rax
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x28], 0
	jne	.label_307
	mov	rbp, rbp
	movabs	rdi, OFFSET FLAT:.str.142
	mov	rsp, rsp
	call	gettext
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	rdi, rax
	lea	rsi, [rsi]
	call	sort_die
.label_307:
	mov	eax, 0x10
	lea	rsi, [rsi]
	mov	edx, eax
	lea	rsi, [rbp - 0x20]
	mov	rdi, qword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	call	randread
	mov	rdi, qword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	call	randread_free
	lea	rsi, [rsi]
	cmp	eax, 0
	je	.label_308
	lea	rsi, [rsi]
	movabs	rdi, OFFSET FLAT:.str.65
	lea	rsi, [rsi]
	call	gettext
	nop	
	mov	rsi, qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	rdi, rax
	mov	rbp, rbp
	call	sort_die
.label_308:
	nop	
	movabs	rdi, OFFSET FLAT:random_md5_state
	mov	rsp, rsp
	call	md5_init_ctx
	nop	
	mov	eax, 0x10
	mov	rbp, rbp
	mov	esi, eax
	movabs	rdx, OFFSET FLAT:random_md5_state
	lea	rdi, [rbp - 0x20]
	lea	rsi, [rsi]
	call	md5_process_bytes
	nop	
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x407880

	.globl check
	.type check, @function
check:
	push	rbp
	mov	rbp, rsp
	mov	rsp, rsp
	sub	rsp, 0x120
	mov	al, sil
	lea	rdi, [rdi]
	movabs	rsi, OFFSET FLAT:.str.52
	nop	
	mov	qword ptr [rbp - 8], rdi
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 9], al
	nop	
	mov	rdi, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	call	xfopen
	mov	qword ptr [rbp - 0x18], rax
	mov	qword ptr [rbp - 0x78], 0
	mov	qword ptr [rbp - 0x80], 0
	mov	rax,  qword ptr [word ptr [keylist]]
	mov	qword ptr [rbp - 0x88], rax
	lea	rsi, [rsi]
	mov	cl,  byte ptr [byte ptr [unique]]
	xor	cl, 0xff
	and	cl, 1
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x89], cl
	mov	byte ptr [rbp - 0x8a], 1
	nop	
	mov	rax,  qword ptr [word ptr [merge_buffer_size]]
	cmp	rax,  qword ptr [word ptr [sort_size]]
	lea	rdi, [rdi]
	jbe	.label_318
	lea	rdi, [rdi]
	mov	rax,  qword ptr [word ptr [merge_buffer_size]]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0xd8], rax
	mov	rbp, rbp
	jmp	.label_313
.label_318:
	mov	rax,  qword ptr [word ptr [sort_size]]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0xd8], rax
.label_313:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0xd8]
	lea	rdi, [rbp - 0x50]
	nop	
	mov	ecx, 0x20
	nop	
	mov	esi, ecx
	mov	rdx, rax
	call	initbuf
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x70], 0
.label_320:
	lea	rsi, [rsi]
	lea	rdi, [rbp - 0x50]
	nop	
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 8]
	call	fillbuf
	test	al, 1
	lea	rsi, [rsi]
	jne	.label_310
	mov	rsp, rsp
	jmp	.label_312
.label_310:
	nop	
	lea	rdi, [rbp - 0x50]
	mov	rbp, rbp
	call	buffer_linelim
	lea	rdi, [rdi]
	xor	ecx, ecx
	lea	rdi, [rdi]
	mov	edi, ecx
	mov	qword ptr [rbp - 0x98], rax
	nop	
	mov	rax, qword ptr [rbp - 0x98]
	mov	rbp, rbp
	sub	rdi, qword ptr [rbp - 0x40]
	lea	rdi, [rdi]
	shl	rdi, 5
	lea	rsi, [rsi]
	add	rax, rdi
	nop	
	mov	qword ptr [rbp - 0xa0], rax
	nop	
	cmp	qword ptr [rbp - 0x78], 0
	je	.label_314
	lea	rdi, [rdi]
	lea	rdi, [rbp - 0x70]
	mov	al, byte ptr [rbp - 0x89]
	and	al, 1
	lea	rsi, [rsi]
	movzx	ecx, al
	nop	
	mov	rdx, qword ptr [rbp - 0x98]
	mov	rsp, rsp
	add	rdx, -0x20
	mov	rsi, rdx
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0xdc], ecx
	call	compare
	nop	
	mov	ecx, dword ptr [rbp - 0xdc]
	cmp	ecx, eax
	jg	.label_314
	jmp	.label_315
.label_315:
	movsx	eax, byte ptr [rbp - 9]
	mov	rbp, rbp
	cmp	eax, 0x63
	jne	.label_316
	lea	rdi, [rbp - 0x50]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x98]
	lea	rsi, [rsi]
	add	rax, -0x20
	nop	
	mov	qword ptr [rbp - 0xa8], rax
	nop	
	call	buffer_linelim
	movabs	rdi, OFFSET FLAT:.str.157
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0xa8]
	sub	rax, rcx
	lea	rsi, [rsi]
	sar	rax, 5
	mov	rsp, rsp
	add	rax, qword ptr [rbp - 0x80]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0xb0], rax
	mov	rax,  qword ptr [word ptr [stderr]]
	mov	qword ptr [rbp - 0xe8], rax
	call	gettext
	lea	rsi, [rbp - 0xd0]
	mov	rsp, rsp
	mov	rdx,  qword ptr [word ptr [program_name]]
	mov	rcx, qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0xb0]
	mov	qword ptr [rbp - 0xf0], rax
	mov	qword ptr [rbp - 0xf8], rcx
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x100], rdx
	mov	rbp, rbp
	call	umaxtostr
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0xe8]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0xf0]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x100]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0xf8]
	mov	r8, rax
	mov	al, 0
	mov	rbp, rbp
	call	fprintf
	mov	rsp, rsp
	movabs	rdi, OFFSET FLAT:.str.158
	mov	rcx, qword ptr [rbp - 0xa8]
	nop	
	mov	rsi,  qword ptr [word ptr [stderr]]
	nop	
	mov	dword ptr [rbp - 0x104], eax
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x110], rsi
	mov	qword ptr [rbp - 0x118], rcx
	lea	rdi, [rdi]
	call	gettext
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x118]
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x110]
	mov	rbp, rbp
	mov	rdx, rax
	lea	rsi, [rsi]
	call	write_line
.label_316:
	nop	
	mov	byte ptr [rbp - 0x8a], 0
	nop	
	jmp	.label_312
.label_314:
	jmp	.label_309
.label_309:
	mov	rax, qword ptr [rbp - 0xa0]
	mov	rcx, qword ptr [rbp - 0x98]
	mov	rsp, rsp
	add	rcx, -0x20
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x98], rcx
	nop	
	cmp	rax, rcx
	mov	rsp, rsp
	jae	.label_321
	nop	
	mov	al, byte ptr [rbp - 0x89]
	and	al, 1
	lea	rdi, [rdi]
	movzx	ecx, al
	mov	rdi, qword ptr [rbp - 0x98]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x98]
	mov	rsp, rsp
	add	rdx, -0x20
	mov	rsi, rdx
	mov	dword ptr [rbp - 0x11c], ecx
	call	compare
	mov	ecx, dword ptr [rbp - 0x11c]
	mov	rbp, rbp
	cmp	ecx, eax
	nop	
	jg	.label_324
	jmp	.label_315
.label_324:
	lea	rdi, [rdi]
	jmp	.label_309
.label_321:
	mov	rax, qword ptr [rbp - 0x40]
	add	rax, qword ptr [rbp - 0x80]
	mov	qword ptr [rbp - 0x80], rax
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x78]
	mov	rcx, qword ptr [rbp - 0x98]
	lea	rdi, [rdi]
	cmp	rax, qword ptr [rcx + 8]
	jae	.label_311
	jmp	.label_317
.label_317:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x78]
	shl	rax, 1
	nop	
	mov	qword ptr [rbp - 0x78], rax
	cmp	qword ptr [rbp - 0x78], 0
	lea	rsi, [rsi]
	jne	.label_319
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x98]
	mov	rax, qword ptr [rax + 8]
	nop	
	mov	qword ptr [rbp - 0x78], rax
	mov	rbp, rbp
	jmp	.label_323
.label_319:
	mov	rsp, rsp
	jmp	.label_325
.label_325:
	mov	rax, qword ptr [rbp - 0x78]
	mov	rcx, qword ptr [rbp - 0x98]
	cmp	rax, qword ptr [rcx + 8]
	mov	rsp, rsp
	jb	.label_317
.label_323:
	mov	rdi, qword ptr [rbp - 0x70]
	call	free
	mov	rdi, qword ptr [rbp - 0x78]
	mov	rsp, rsp
	call	xmalloc
	mov	qword ptr [rbp - 0x70], rax
.label_311:
	nop	
	mov	rdi, qword ptr [rbp - 0x70]
	nop	
	mov	rax, qword ptr [rbp - 0x98]
	nop	
	mov	rsi, qword ptr [rax]
	mov	rax, qword ptr [rbp - 0x98]
	mov	rdx, qword ptr [rax + 8]
	mov	rbp, rbp
	call	memcpy
	mov	rax, qword ptr [rbp - 0x98]
	mov	rax, qword ptr [rax + 8]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x68], rax
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x88], 0
	nop	
	je	.label_322
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x70]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x98]
	mov	rcx, qword ptr [rcx + 0x10]
	nop	
	mov	rdx, qword ptr [rbp - 0x98]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rdx]
	lea	rsi, [rsi]
	sub	rcx, rdx
	add	rax, rcx
	mov	qword ptr [rbp - 0x60], rax
	mov	rax, qword ptr [rbp - 0x70]
	mov	rcx, qword ptr [rbp - 0x98]
	nop	
	mov	rcx, qword ptr [rcx + 0x18]
	mov	rdx, qword ptr [rbp - 0x98]
	mov	rdx, qword ptr [rdx]
	sub	rcx, rdx
	lea	rdi, [rdi]
	add	rax, rcx
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x58], rax
.label_322:
	lea	rsi, [rsi]
	jmp	.label_320
.label_312:
	mov	rdi, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 8]
	mov	rsp, rsp
	call	xfclose
	mov	rdi, qword ptr [rbp - 0x50]
	call	free
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x70]
	call	free
	mov	al, byte ptr [rbp - 0x8a]
	lea	rdi, [rdi]
	and	al, 1
	movzx	eax, al
	nop	
	add	rsp, 0x120
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x407da0

	.globl check_inputs
	.type check_inputs, @function
check_inputs:
	push	rbp
	mov	rbp, rsp
	mov	rbp, rbp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x18], 0
.label_330:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x18]
	cmp	rax, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	jae	.label_329
	mov	rax, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 8]
	nop	
	mov	rdi, qword ptr [rcx + rax*8]
	nop	
	mov	edx, OFFSET FLAT:.str.54
	mov	esi, edx
	nop	
	call	strcmp
	mov	rsp, rsp
	cmp	eax, 0
	jne	.label_326
	jmp	.label_327
.label_326:
	mov	esi, 4
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rcx + rax*8]
	call	euidaccess
	mov	rsp, rsp
	cmp	eax, 0
	mov	rsp, rsp
	je	.label_328
	movabs	rdi, OFFSET FLAT:.str.165
	nop	
	call	gettext
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	rsi, qword ptr [rcx + rdi*8]
	mov	rbp, rbp
	mov	rdi, rax
	call	sort_die
.label_328:
	nop	
	jmp	.label_327
.label_327:
	nop	
	mov	rax, qword ptr [rbp - 0x18]
	nop	
	add	rax, 1
	mov	qword ptr [rbp - 0x18], rax
	mov	rbp, rbp
	jmp	.label_330
.label_329:
	mov	rbp, rbp
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x407e80

	.globl check_output
	.type check_output, @function
check_output:
	lea	rsi, [rsi]
	push	rbp
	lea	rdi, [rdi]
	mov	rbp, rsp
	nop	
	sub	rsp, 0x10
	mov	qword ptr [rbp - 8], rdi
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 8], 0
	lea	rdi, [rdi]
	je	.label_331
	mov	edx, 0x1b6
	mov	dword ptr [rbp - 0xc], 0x80041
	mov	rdi, qword ptr [rbp - 8]
	mov	esi, dword ptr [rbp - 0xc]
	mov	al, 0
	lea	rdi, [rdi]
	call	open
	mov	dword ptr [rbp - 0x10], eax
	mov	rbp, rbp
	cmp	dword ptr [rbp - 0x10], 0
	mov	rbp, rbp
	jge	.label_332
	mov	rsp, rsp
	movabs	rdi, OFFSET FLAT:.str.142
	mov	rsp, rsp
	call	gettext
	mov	rsi, qword ptr [rbp - 8]
	mov	rdi, rax
	call	sort_die
.label_332:
	nop	
	mov	esi, 1
	mov	rsp, rsp
	mov	edi, dword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	call	move_fd
.label_331:
	nop	
	add	rsp, 0x10
	lea	rdi, [rdi]
	pop	rbp
	lea	rsi, [rsi]
	ret	
	.section	.text
	.align	16
	#Procedure 0x407f20

	.globl merge
	.type merge, @function
merge:
	nop	
	push	rbp
	nop	
	mov	rbp, rsp
	lea	rdi, [rdi]
	sub	rsp, 0x110
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x20], rcx
.label_358:
	mov	eax,  dword ptr [dword ptr [nmerge]]
	mov	ecx, eax
	lea	rsi, [rsi]
	cmp	rcx, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	jae	.label_349
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x28], 0
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x30], 0
.label_335:
	lea	rsi, [rsi]
	mov	eax,  dword ptr [dword ptr [nmerge]]
	lea	rdi, [rdi]
	mov	ecx, eax
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x18]
	sub	rdx, qword ptr [rbp - 0x28]
	nop	
	cmp	rcx, rdx
	ja	.label_346
	lea	rdi, [rbp - 0x48]
	nop	
	call	create_temp
	mov	qword ptr [rbp - 0x50], rax
	mov	rax, qword ptr [rbp - 0x28]
	shl	rax, 4
	lea	rsi, [rsi]
	add	rax, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rbp - 0x10]
	nop	
	mov	ecx,  dword ptr [dword ptr [nmerge]]
	mov	edx, ecx
	cmp	rdi, rdx
	mov	qword ptr [rbp - 0xa8], rax
	mov	rbp, rbp
	jae	.label_342
	mov	rax, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0xb0], rax
	lea	rsi, [rsi]
	jmp	.label_354
.label_342:
	mov	rbp, rbp
	mov	eax,  dword ptr [dword ptr [nmerge]]
	mov	ecx, eax
	mov	rbp, rbp
	mov	qword ptr [rbp - 0xb0], rcx
.label_354:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0xb0]
	mov	ecx,  dword ptr [dword ptr [nmerge]]
	mov	edx, ecx
	mov	rcx, qword ptr [rbp - 0x48]
	mov	rsi, qword ptr [rbp - 0x50]
	add	rsi, 0xd
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0xa8]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0xb8], rsi
	mov	rbp, rbp
	mov	rsi, rax
	lea	rsi, [rsi]
	mov	r8, qword ptr [rbp - 0xb8]
	nop	
	call	mergefiles
	mov	qword ptr [rbp - 0x58], rax
	mov	rax, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	cmp	rax, qword ptr [rbp - 0x58]
	jae	.label_351
	mov	rax, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0xc0], rax
	nop	
	jmp	.label_337
.label_351:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x58]
	mov	qword ptr [rbp - 0xc0], rax
.label_337:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0xc0]
	mov	rcx, qword ptr [rbp - 0x10]
	sub	rcx, rax
	mov	qword ptr [rbp - 0x10], rcx
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, 0xd
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x30]
	shl	rcx, 4
	lea	rsi, [rsi]
	add	rcx, qword ptr [rbp - 8]
	mov	qword ptr [rcx], rax
	mov	rax, qword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rbp - 0x30]
	shl	rcx, 4
	nop	
	add	rcx, qword ptr [rbp - 8]
	mov	qword ptr [rcx + 8], rax
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, qword ptr [rbp - 0x28]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x28], rax
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, 1
	mov	qword ptr [rbp - 0x30], rax
	mov	rbp, rbp
	jmp	.label_335
.label_346:
	mov	rax, qword ptr [rbp - 0x18]
	sub	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x38], rax
	mov	ecx,  dword ptr [dword ptr [nmerge]]
	mov	rsp, rsp
	mov	eax, ecx
	mov	rdx, qword ptr [rbp - 0x30]
	mov	rbp, rbp
	mov	ecx,  dword ptr [dword ptr [nmerge]]
	mov	rsp, rsp
	mov	esi, ecx
	mov	rbp, rbp
	mov	qword ptr [rbp - 0xc8], rax
	lea	rsi, [rsi]
	mov	rax, rdx
	xor	ecx, ecx
	nop	
	mov	edx, ecx
	nop	
	div	rsi
	mov	rsi, qword ptr [rbp - 0xc8]
	sub	rsi, rdx
	mov	qword ptr [rbp - 0x40], rsi
	nop	
	mov	rdx, qword ptr [rbp - 0x40]
	cmp	rdx, qword ptr [rbp - 0x38]
	jae	.label_338
	mov	rsp, rsp
	lea	rdi, [rbp - 0x68]
	mov	rax, qword ptr [rbp - 0x38]
	mov	rsp, rsp
	sub	rax, qword ptr [rbp - 0x40]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	call	create_temp
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x70], rax
	mov	rax, qword ptr [rbp - 0x28]
	shl	rax, 4
	add	rax, qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x10]
	cmp	rdi, qword ptr [rbp - 0x60]
	nop	
	mov	qword ptr [rbp - 0xd0], rax
	lea	rdi, [rdi]
	jae	.label_357
	mov	rax, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0xd8], rax
	nop	
	jmp	.label_341
.label_357:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x60]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0xd8], rax
.label_341:
	mov	rax, qword ptr [rbp - 0xd8]
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x68]
	mov	rsi, qword ptr [rbp - 0x70]
	lea	rdi, [rdi]
	add	rsi, 0xd
	mov	rdi, qword ptr [rbp - 0xd0]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0xe0], rsi
	mov	rsi, rax
	mov	r8, qword ptr [rbp - 0xe0]
	mov	rsp, rsp
	call	mergefiles
	mov	qword ptr [rbp - 0x78], rax
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	cmp	rax, qword ptr [rbp - 0x78]
	mov	rsp, rsp
	jae	.label_333
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0xe8], rax
	lea	rsi, [rsi]
	jmp	.label_345
.label_333:
	mov	rax, qword ptr [rbp - 0x78]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0xe8], rax
.label_345:
	mov	rax, qword ptr [rbp - 0xe8]
	mov	rcx, qword ptr [rbp - 0x10]
	sub	rcx, rax
	mov	qword ptr [rbp - 0x10], rcx
	mov	rax, qword ptr [rbp - 0x70]
	add	rax, 0xd
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x30]
	mov	rbp, rbp
	shl	rcx, 4
	lea	rsi, [rsi]
	add	rcx, qword ptr [rbp - 8]
	mov	qword ptr [rcx], rax
	mov	rax, qword ptr [rbp - 0x70]
	nop	
	mov	rcx, qword ptr [rbp - 0x30]
	mov	rdx, rcx
	mov	rsp, rsp
	add	rdx, 1
	mov	qword ptr [rbp - 0x30], rdx
	lea	rdi, [rdi]
	shl	rcx, 4
	mov	rbp, rbp
	add	rcx, qword ptr [rbp - 8]
	mov	rbp, rbp
	mov	qword ptr [rcx + 8], rax
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x78]
	lea	rdi, [rdi]
	add	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x28], rax
.label_338:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x30]
	shl	rax, 4
	mov	rsp, rsp
	add	rax, qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x28]
	shl	rcx, 4
	nop	
	add	rcx, qword ptr [rbp - 8]
	mov	rdx, qword ptr [rbp - 0x18]
	sub	rdx, qword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	shl	rdx, 4
	mov	rdi, rax
	lea	rdi, [rdi]
	mov	rsi, rcx
	nop	
	call	memmove
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x10], rax
	mov	rax, qword ptr [rbp - 0x28]
	sub	rax, qword ptr [rbp - 0x30]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x18]
	nop	
	sub	rcx, rax
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x18], rcx
	jmp	.label_358
.label_349:
	nop	
	mov	rdi, qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	call	avoid_trashing_input
.label_343:
	lea	rdx, [rbp - 0x80]
	nop	
	mov	rdi, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x18]
	call	open_input_files
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x88], rax
	mov	rax, qword ptr [rbp - 0x88]
	cmp	rax, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	jne	.label_353
	movabs	rsi, OFFSET FLAT:.str.166
	mov	rdi, qword ptr [rbp - 0x20]
	call	stream_open
	mov	qword ptr [rbp - 0x90], rax
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0x90], 0
	je	.label_334
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x90]
	mov	r8, qword ptr [rbp - 0x20]
	nop	
	mov	r9, qword ptr [rbp - 0x80]
	lea	rsi, [rsi]
	call	mergefps
	jmp	.label_350
.label_334:
	call	__errno_location
	cmp	dword ptr [rax], 0x18
	jne	.label_352
	cmp	qword ptr [rbp - 0x88], 2
	nop	
	ja	.label_355
.label_352:
	lea	rsi, [rsi]
	movabs	rdi, OFFSET FLAT:.str.142
	lea	rsi, [rsi]
	call	gettext
	mov	rsi, qword ptr [rbp - 0x20]
	mov	rdi, rax
	mov	rbp, rbp
	call	sort_die
.label_355:
	lea	rdi, [rdi]
	jmp	.label_336
.label_353:
	cmp	qword ptr [rbp - 0x88], 2
	lea	rsi, [rsi]
	ja	.label_340
	movabs	rdi, OFFSET FLAT:.str.142
	call	gettext
	mov	rdi, qword ptr [rbp - 0x88]
	shl	rdi, 4
	mov	rsp, rsp
	add	rdi, qword ptr [rbp - 8]
	mov	rbp, rbp
	mov	rsi, qword ptr [rdi]
	mov	rdi, rax
	lea	rsi, [rsi]
	call	sort_die
.label_340:
	mov	rsp, rsp
	jmp	.label_336
.label_336:
	lea	rdi, [rdi]
	jmp	.label_356
.label_356:
	mov	rax, qword ptr [rbp - 0x88]
	mov	rsp, rsp
	add	rax, -1
	mov	qword ptr [rbp - 0x88], rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x88]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x80]
	mov	rbp, rbp
	mov	rdi, qword ptr [rcx + rax*8]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x88]
	shl	rax, 4
	mov	rsp, rsp
	add	rax, qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	rsi, qword ptr [rax]
	lea	rdi, [rdi]
	call	xfclose
	nop	
	lea	rax, [rbp - 0x98]
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x88], 2
	setbe	dl
	xor	dl, 0xff
	mov	rsp, rsp
	and	dl, 1
	lea	rsi, [rsi]
	movzx	esi, dl
	lea	rdi, [rbp - 0x98]
	mov	qword ptr [rbp - 0xf0], rax
	call	maybe_create_temp
	mov	qword ptr [rbp - 0xa0], rax
	cmp	qword ptr [rbp - 0xa0], 0
	lea	rdi, [rdi]
	setne	al
	xor	al, 0xff
	test	al, 1
	mov	rsp, rsp
	jne	.label_356
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rbp - 0x88]
	mov	qword ptr [rbp - 0xf8], rdi
	jae	.label_339
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x100], rax
	jmp	.label_347
.label_339:
	mov	rax, qword ptr [rbp - 0x88]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x100], rax
.label_347:
	mov	rax, qword ptr [rbp - 0x100]
	mov	rdx, qword ptr [rbp - 0x88]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x98]
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0xa0]
	mov	rbp, rbp
	add	rsi, 0xd
	mov	r9, qword ptr [rbp - 0x80]
	mov	rdi, qword ptr [rbp - 0xf8]
	mov	qword ptr [rbp - 0x108], rsi
	mov	rsp, rsp
	mov	rsi, rax
	lea	rsi, [rsi]
	mov	r8, qword ptr [rbp - 0x108]
	lea	rsi, [rsi]
	call	mergefps
	mov	rax, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rbp - 0x88]
	jae	.label_344
	nop	
	mov	rax, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x110], rax
	mov	rsp, rsp
	jmp	.label_348
.label_344:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x88]
	mov	qword ptr [rbp - 0x110], rax
.label_348:
	mov	rax, qword ptr [rbp - 0x110]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x10]
	sub	rcx, rax
	mov	qword ptr [rbp - 0x10], rcx
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0xa0]
	add	rax, 0xd
	nop	
	mov	rcx, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	mov	qword ptr [rcx], rax
	mov	rax, qword ptr [rbp - 0xa0]
	mov	rcx, qword ptr [rbp - 8]
	mov	qword ptr [rcx + 8], rax
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 8]
	add	rax, 0x10
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x88]
	mov	rsp, rsp
	shl	rcx, 4
	nop	
	add	rcx, qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x18]
	sub	rdx, qword ptr [rbp - 0x88]
	shl	rdx, 4
	nop	
	mov	rdi, rax
	mov	rsi, rcx
	nop	
	call	memmove
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 1
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x10], rax
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x88]
	sub	rax, 1
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x18]
	sub	rcx, rax
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x18], rcx
	jmp	.label_343
.label_350:
	mov	rbp, rbp
	add	rsp, 0x110
	mov	rbp, rbp
	pop	rbp
	mov	rbp, rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4086b0

	.globl sort
	.type sort, @function
sort:
	mov	rbp, rbp
	push	rbp
	lea	rsi, [rsi]
	mov	rbp, rsp
	sub	rsp, 0x140
	mov	qword ptr [rbp - 8], rdi
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x10], rsi
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x18], rdx
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x20], rcx
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x60], 0
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x61], 0
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x40], 0
.label_361:
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x10], 0
	lea	rsi, [rsi]
	je	.label_378
	mov	rsp, rsp
	movabs	rsi, OFFSET FLAT:.str.52
	mov	rax, qword ptr [rbp - 8]
	mov	rbp, rbp
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0x78], rax
	nop	
	mov	rdi, qword ptr [rbp - 0x78]
	call	xfopen
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x80], rax
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x20], 1
	jbe	.label_367
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x98], 1
	mov	qword ptr [rbp - 0xa0], 1
.label_376:
	mov	rax, qword ptr [rbp - 0x98]
	cmp	rax, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	jae	.label_363
	mov	rax, qword ptr [rbp - 0x98]
	shl	rax, 1
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x98], rax
	mov	rax, qword ptr [rbp - 0xa0]
	lea	rdi, [rdi]
	add	rax, 1
	mov	qword ptr [rbp - 0xa0], rax
	jmp	.label_376
.label_363:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0xa0]
	mov	rbp, rbp
	shl	rax, 5
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x90], rax
	lea	rsi, [rsi]
	jmp	.label_369
.label_367:
	mov	qword ptr [rbp - 0x90], 0x30
.label_369:
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x40], 0
	nop	
	jne	.label_371
	mov	rsp, rsp
	lea	rdi, [rbp - 0x80]
	lea	rsi, [rsi]
	mov	eax, 1
	mov	esi, eax
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x90]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 8]
	nop	
	mov	r8, qword ptr [rbp - 0x10]
	mov	r9, qword ptr [rbp - 0x90]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x130], rcx
	nop	
	mov	rcx, r8
	mov	r8, r9
	call	sort_buffer_size
	nop	
	lea	rdi, [rbp - 0x58]
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x130]
	mov	rdx, rax
	call	initbuf
.label_371:
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x28], 0
	mov	rax, qword ptr [rbp - 8]
	add	rax, 8
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 8], rax
	mov	rax, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	add	rax, -1
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x10], rax
.label_366:
	lea	rsi, [rsi]
	lea	rdi, [rbp - 0x58]
	mov	rsi, qword ptr [rbp - 0x80]
	mov	rdx, qword ptr [rbp - 0x78]
	call	fillbuf
	test	al, 1
	mov	rbp, rbp
	jne	.label_377
	jmp	.label_374
.label_377:
	mov	rsp, rsp
	test	byte ptr [rbp - 0x28], 1
	mov	rbp, rbp
	je	.label_359
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x10], 0
	nop	
	je	.label_359
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x90]
	add	rax, 1
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x40]
	sub	rcx, qword ptr [rbp - 0x50]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x90]
	lea	rsi, [rsi]
	imul	rdx, qword ptr [rbp - 0x48]
	sub	rcx, rdx
	nop	
	cmp	rax, rcx
	jae	.label_359
	mov	rax, qword ptr [rbp - 0x50]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x38], rax
	lea	rsi, [rsi]
	jmp	.label_374
.label_359:
	lea	rdi, [rdi]
	lea	rdi, [rbp - 0x58]
	mov	rbp, rbp
	mov	qword ptr [word ptr [saved_line]],  0
	lea	rsi, [rsi]
	call	buffer_linelim
	mov	qword ptr [rbp - 0xa8], rax
	mov	rbp, rbp
	test	byte ptr [rbp - 0x28], 1
	je	.label_360
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x10], 0
	jne	.label_360
	nop	
	cmp	qword ptr [rbp - 0x60], 0
	jne	.label_360
	nop	
	cmp	qword ptr [rbp - 0x38], 0
	jne	.label_360
	mov	rdi, qword ptr [rbp - 0x80]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x78]
	call	xfclose
	mov	rbp, rbp
	movabs	rsi, OFFSET FLAT:.str.166
	mov	rdi, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	call	xfopen
	mov	qword ptr [rbp - 0x88], rax
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x70], rax
	mov	byte ptr [rbp - 0x61], 1
	jmp	.label_375
.label_360:
	lea	rdi, [rbp - 0x88]
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	call	create_temp
	add	rax, 0xd
	mov	qword ptr [rbp - 0x70], rax
.label_375:
	lea	rsi, [rsi]
	mov	eax, 1
	mov	ecx, eax
	cmp	rcx, qword ptr [rbp - 0x48]
	jae	.label_365
	lea	rdi, [rbp - 0x108]
	mov	rsi, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	call	queue_init
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x48]
	mov	rdx, qword ptr [rbp - 0xa8]
	lea	rdi, [rdi]
	call	merge_tree_init
	lea	r8, [rbp - 0x108]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x110], rax
	mov	rdi, qword ptr [rbp - 0xa8]
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x48]
	mov	rax, qword ptr [rbp - 0x110]
	add	rax, 0x80
	mov	r9, qword ptr [rbp - 0x88]
	mov	rcx, qword ptr [rbp - 0x70]
	mov	qword ptr [rbp - 0x138], rcx
	mov	rsp, rsp
	mov	rcx, rax
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x138]
	lea	rsi, [rsi]
	mov	qword ptr [rsp], rax
	nop	
	call	sortlines
	mov	rbp, rbp
	jmp	.label_372
.label_365:
	mov	rax, qword ptr [rbp - 0xa8]
	lea	rsi, [rsi]
	add	rax, -0x20
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x88]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x70]
	mov	rdi, rax
	lea	rsi, [rsi]
	call	write_unique
.label_372:
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x88]
	mov	rsi, qword ptr [rbp - 0x70]
	nop	
	call	xfclose
	lea	rdi, [rdi]
	test	byte ptr [rbp - 0x61], 1
	je	.label_362
	mov	rbp, rbp
	jmp	.label_370
.label_362:
	lea	rsi, [rsi]
	jmp	.label_366
.label_374:
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x80]
	nop	
	mov	rsi, qword ptr [rbp - 0x78]
	call	xfclose
	lea	rsi, [rsi]
	jmp	.label_361
.label_378:
	jmp	.label_370
.label_370:
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x58]
	mov	rbp, rbp
	call	free
	test	byte ptr [rbp - 0x61], 1
	mov	rsp, rsp
	jne	.label_368
	mov	eax, 0x10
	mov	esi, eax
	nop	
	mov	rcx,  qword ptr [word ptr [temphead]]
	nop	
	mov	qword ptr [rbp - 0x118], rcx
	mov	rdi, qword ptr [rbp - 0x60]
	mov	rsp, rsp
	call	xnmalloc
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x120], rax
	mov	qword ptr [rbp - 0x128], 0
.label_373:
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x118], 0
	lea	rdi, [rdi]
	je	.label_364
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x118]
	lea	rdi, [rdi]
	add	rax, 0xd
	nop	
	mov	rcx, qword ptr [rbp - 0x128]
	shl	rcx, 4
	lea	rdi, [rdi]
	add	rcx, qword ptr [rbp - 0x120]
	mov	qword ptr [rcx], rax
	mov	rax, qword ptr [rbp - 0x118]
	mov	rcx, qword ptr [rbp - 0x128]
	mov	rbp, rbp
	shl	rcx, 4
	add	rcx, qword ptr [rbp - 0x120]
	mov	rsp, rsp
	mov	qword ptr [rcx + 8], rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x118]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x118], rax
	mov	rax, qword ptr [rbp - 0x128]
	add	rax, 1
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x128], rax
	lea	rdi, [rdi]
	jmp	.label_373
.label_364:
	mov	rdi, qword ptr [rbp - 0x120]
	mov	rsi, qword ptr [rbp - 0x60]
	mov	rdx, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	call	merge
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x120]
	lea	rdi, [rdi]
	mov	rdi, rcx
	mov	rbp, rbp
	call	free
.label_368:
	lea	rdi, [rdi]
	call	reap_all
	add	rsp, 0x140
	mov	rsp, rsp
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x408c00

	.globl sort_die
	.type sort_die, @function
sort_die:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsp, rsp
	call	__errno_location
	mov	esi, dword ptr [rax]
	mov	rcx, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x10], 0
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x14], esi
	mov	qword ptr [rbp - 0x20], rcx
	je	.label_380
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x28], rax
	lea	rdi, [rdi]
	jmp	.label_379
.label_380:
	lea	rsi, [rsi]
	movabs	rdi, OFFSET FLAT:.str.180
	call	gettext
	mov	qword ptr [rbp - 0x28], rax
.label_379:
	mov	rax, qword ptr [rbp - 0x28]
	xor	edi, edi
	mov	rsp, rsp
	mov	esi, 3
	mov	rdx, rax
	nop	
	call	quotearg_n_style_colon
	lea	rsi, [rsi]
	mov	edi, 2
	movabs	rdx, OFFSET FLAT:.str.1_0
	mov	rsp, rsp
	mov	esi, dword ptr [rbp - 0x14]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	r8, rax
	mov	al, 0
	call	error
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x408ca0

	.globl field_sep
	.type field_sep, @function
field_sep:
	lea	rdi, [rdi]
	push	rbp
	mov	rsp, rsp
	mov	rbp, rsp
	lea	rsi, [rsi]
	sub	rsp, 0x20
	mov	al, dil
	mov	byte ptr [rbp - 1], al
	lea	rsi, [rsi]
	movzx	edi, byte ptr [rbp - 1]
	movsxd	rcx, edi
	nop	
	mov	qword ptr [rbp - 0x10], rcx
	call	__ctype_b_loc
	lea	rdi, [rdi]
	mov	dl, 1
	mov	rsp, rsp
	mov	rax, qword ptr [rax]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x10]
	movzx	edi, word ptr [rax + rcx*2]
	lea	rdi, [rdi]
	and	edi, 1
	cmp	edi, 0
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x11], dl
	jne	.label_381
	movzx	eax, byte ptr [rbp - 1]
	cmp	eax, 0xa
	lea	rsi, [rsi]
	sete	cl
	mov	byte ptr [rbp - 0x11], cl
.label_381:
	mov	al, byte ptr [rbp - 0x11]
	and	al, 1
	lea	rdi, [rdi]
	movzx	eax, al
	mov	rbp, rbp
	add	rsp, 0x20
	nop	
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x408d20

	.globl struct_month_cmp
	.type struct_month_cmp, @function
struct_month_cmp:
	push	rbp
	lea	rsi, [rsi]
	mov	rbp, rsp
	lea	rdi, [rdi]
	sub	rsp, 0x20
	mov	qword ptr [rbp - 8], rdi
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x18], rsi
	mov	rsi, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x20], rsi
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rdi, qword ptr [rsi]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x20]
	mov	rsi, qword ptr [rsi]
	call	strcmp
	add	rsp, 0x20
	pop	rbp
	lea	rsi, [rsi]
	ret	
	.section	.text
	.align	16
	#Procedure 0x408d70

	.globl cleanup
	.type cleanup, @function
cleanup:
	push	rbp
	mov	rbp, rsp
	mov	rbp, rbp
	sub	rsp, 0x10
	mov	rax,  qword ptr [word ptr [temphead]]
	mov	qword ptr [rbp - 8], rax
.label_382:
	cmp	qword ptr [rbp - 8], 0
	lea	rdi, [rdi]
	je	.label_383
	mov	rax, qword ptr [rbp - 8]
	mov	rsp, rsp
	add	rax, 0xd
	mov	rsp, rsp
	mov	rdi, rax
	call	unlink
	mov	rsp, rsp
	mov	dword ptr [rbp - 0xc], eax
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 8]
	nop	
	mov	rax, qword ptr [rax]
	mov	rsp, rsp
	mov	qword ptr [rbp - 8], rax
	jmp	.label_382
.label_383:
	mov	qword ptr [word ptr [temphead]],  0
	lea	rsi, [rsi]
	add	rsp, 0x10
	lea	rdi, [rdi]
	pop	rbp
	mov	rsp, rsp
	ret	
	.section	.text
	.align	16
	#Procedure 0x408df0

	.globl cs_enter
	.type cs_enter, @function
cs_enter:
	mov	rsp, rsp
	push	rbp
	mov	rbp, rsp
	lea	rdi, [rdi]
	sub	rsp, 0x20
	xor	eax, eax
	mov	rsp, rsp
	movabs	rsi, OFFSET FLAT:caught_signals
	mov	qword ptr [rbp - 8], rdi
	nop	
	mov	rdi, qword ptr [rbp - 8]
	nop	
	add	rdi, 8
	mov	qword ptr [rbp - 0x18], rdi
	lea	rsi, [rsi]
	mov	edi, eax
	mov	rdx, qword ptr [rbp - 0x18]
	call	pthread_sigmask
	mov	dword ptr [rbp - 0xc], eax
	cmp	dword ptr [rbp - 0xc], 0
	sete	cl
	mov	rdx, qword ptr [rbp - 8]
	and	cl, 1
	lea	rdi, [rdi]
	mov	byte ptr [rdx], cl
	lea	rdi, [rdi]
	add	rsp, 0x20
	mov	rsp, rsp
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x408e50

	.globl cs_leave
	.type cs_leave, @function
cs_leave:
	push	rbp
	lea	rsi, [rsi]
	mov	rbp, rsp
	sub	rsp, 0x10
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 8], rdi
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	test	byte ptr [rdi], 1
	lea	rsi, [rsi]
	je	.label_384
	mov	edi, 2
	xor	eax, eax
	mov	edx, eax
	mov	rcx, qword ptr [rbp - 8]
	add	rcx, 8
	lea	rdi, [rdi]
	mov	rsi, rcx
	call	pthread_sigmask
	mov	rsp, rsp
	mov	dword ptr [rbp - 0xc], eax
.label_384:
	mov	rbp, rbp
	add	rsp, 0x10
	mov	rbp, rbp
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x408eb0

	.globl stream_open
	.type stream_open, @function
stream_open:
	push	rbp
	mov	rbp, rsp
	lea	rsi, [rsi]
	sub	rsp, 0x40
	nop	
	mov	qword ptr [rbp - 8], rdi
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsi, qword ptr [rbp - 0x10]
	movsx	eax, byte ptr [rsi]
	nop	
	cmp	eax, 0x72
	mov	rbp, rbp
	jne	.label_392
	nop	
	mov	rdi, qword ptr [rbp - 8]
	nop	
	mov	eax, OFFSET FLAT:.str.54
	mov	esi, eax
	call	strcmp
	mov	rbp, rbp
	cmp	eax, 0
	jne	.label_391
	mov	byte ptr [byte ptr [have_read_stdin]],  1
	mov	rsp, rsp
	mov	rax,  qword ptr [word ptr [stdin]]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x18], rax
	mov	rbp, rbp
	jmp	.label_394
.label_391:
	mov	esi, 0x80000
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 8]
	mov	al, 0
	mov	rbp, rbp
	call	open
	mov	dword ptr [rbp - 0x1c], eax
	nop	
	cmp	dword ptr [rbp - 0x1c], 0
	nop	
	jge	.label_393
	xor	eax, eax
	mov	rsp, rsp
	mov	ecx, eax
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x30], rcx
	jmp	.label_386
.label_393:
	nop	
	mov	edi, dword ptr [rbp - 0x1c]
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x10]
	call	fdopen
	mov	qword ptr [rbp - 0x30], rax
.label_386:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x30]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x18], rax
.label_394:
	mov	esi, 2
	mov	rdi, qword ptr [rbp - 0x18]
	nop	
	call	fadvise
	mov	rbp, rbp
	jmp	.label_387
.label_392:
	mov	rax, qword ptr [rbp - 0x10]
	nop	
	movsx	ecx, byte ptr [rax]
	lea	rsi, [rsi]
	cmp	ecx, 0x77
	jne	.label_388
	cmp	qword ptr [rbp - 8], 0
	nop	
	je	.label_385
	mov	edi, 1
	xor	eax, eax
	lea	rdi, [rdi]
	mov	esi, eax
	lea	rdi, [rdi]
	call	ftruncate
	cmp	eax, 0
	mov	rbp, rbp
	je	.label_385
	lea	rsi, [rsi]
	call	__errno_location
	lea	rsi, [rsi]
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 0x20], ecx
	lea	rsi, [rsi]
	call	get_outstatus
	mov	qword ptr [rbp - 0x28], rax
	cmp	qword ptr [rbp - 0x28], 0
	nop	
	je	.label_390
	mov	rax, qword ptr [rbp - 0x28]
	mov	ecx, dword ptr [rax + 0x18]
	mov	rbp, rbp
	and	ecx, 0xf000
	nop	
	cmp	ecx, 0x8000
	mov	rbp, rbp
	je	.label_390
	mov	rax, qword ptr [rbp - 0x28]
	mov	ecx, dword ptr [rax + 0x18]
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	sub	ecx, dword ptr [rax + 0x18]
	cmp	ecx, 0
	je	.label_389
.label_390:
	mov	rbp, rbp
	movabs	rdi, OFFSET FLAT:.str.143
	mov	rsp, rsp
	mov	esi, dword ptr [rbp - 0x20]
	mov	dword ptr [rbp - 0x34], esi
	call	gettext
	xor	edi, edi
	mov	esi, 3
	mov	rdx, qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x40], rax
	call	quotearg_n_style_colon
	mov	edi, 2
	mov	esi, dword ptr [rbp - 0x34]
	mov	rdx, qword ptr [rbp - 0x40]
	mov	rcx, rax
	nop	
	mov	al, 0
	call	error
.label_389:
	jmp	.label_385
.label_385:
	mov	rsp, rsp
	mov	rax,  qword ptr [word ptr [stdout]]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x18], rax
	lea	rsi, [rsi]
	jmp	.label_395
.label_388:
	movabs	rdi, OFFSET FLAT:.str.144
	mov	rbp, rbp
	movabs	rsi, OFFSET FLAT:.str.29
	lea	rdi, [rdi]
	mov	edx, 0x3d6
	mov	rbp, rbp
	movabs	rcx, OFFSET FLAT:__PRETTY_FUNCTION__.stream_open
	call	__assert_fail
.label_395:
	mov	rsp, rsp
	jmp	.label_387
.label_387:
	mov	rax, qword ptr [rbp - 0x18]
	add	rsp, 0x40
	lea	rdi, [rdi]
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4090e0

	.globl get_outstatus
	.type get_outstatus, @function
get_outstatus:
	nop	
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	lea	rdi, [rdi]
	cmp	dword ptr [dword ptr [get_outstatus.outstat_errno]],  0
	nop	
	jne	.label_396
	mov	edi, 1
	lea	rdi, [rdi]
	movabs	rsi, OFFSET FLAT:get_outstatus.outstat
	nop	
	call	__fstat
	cmp	eax, 0
	jne	.label_397
	nop	
	mov	eax, 0xffffffff
	mov	rsp, rsp
	mov	dword ptr [rbp - 4], eax
	jmp	.label_398
.label_397:
	lea	rdi, [rdi]
	call	__errno_location
	mov	ecx, dword ptr [rax]
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 4], ecx
.label_398:
	mov	eax, dword ptr [rbp - 4]
	lea	rsi, [rsi]
	mov	dword ptr [dword ptr [get_outstatus.outstat_errno]],  eax
.label_396:
	xor	eax, eax
	mov	ecx, eax
	movabs	rdx, OFFSET FLAT:get_outstatus.outstat
	cmp	dword ptr [dword ptr [get_outstatus.outstat_errno]],  0
	mov	rbp, rbp
	cmovl	rcx, rdx
	lea	rdi, [rdi]
	mov	rax, rcx
	add	rsp, 0x10
	lea	rsi, [rsi]
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x409180

	.globl key_numeric
	.type key_numeric, @function
key_numeric:
	push	rbp
	lea	rsi, [rsi]
	mov	rbp, rsp
	mov	al, 1
	mov	qword ptr [rbp - 8], rdi
	nop	
	mov	rdi, qword ptr [rbp - 8]
	test	byte ptr [rdi + 0x32], 1
	mov	byte ptr [rbp - 9], al
	lea	rsi, [rsi]
	jne	.label_399
	mov	al, 1
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 8]
	mov	rsp, rsp
	test	byte ptr [rcx + 0x34], 1
	mov	rsp, rsp
	mov	byte ptr [rbp - 9], al
	mov	rsp, rsp
	jne	.label_399
	mov	rax, qword ptr [rbp - 8]
	mov	cl, byte ptr [rax + 0x35]
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 9], cl
.label_399:
	lea	rsi, [rsi]
	mov	al, byte ptr [rbp - 9]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4091e0

	.globl key_to_opts
	.type key_to_opts, @function
key_to_opts:
	lea	rdi, [rdi]
	push	rbp
	nop	
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x10], rsi
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 8]
	test	byte ptr [rsi + 0x30], 1
	jne	.label_406
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 8]
	test	byte ptr [rax + 0x31], 1
	je	.label_401
.label_406:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 0x10], rcx
	lea	rdi, [rdi]
	mov	byte ptr [rax], 0x62
.label_401:
	movabs	rax, OFFSET FLAT:nondictionary
	mov	rcx, qword ptr [rbp - 8]
	mov	rbp, rbp
	cmp	qword ptr [rcx + 0x20], rax
	jne	.label_408
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 0x10], rcx
	mov	rbp, rbp
	mov	byte ptr [rax], 0x64
.label_408:
	nop	
	mov	rax, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	cmp	qword ptr [rax + 0x28], 0
	je	.label_400
	nop	
	mov	rax, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	rcx, rax
	nop	
	add	rcx, 1
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x10], rcx
	mov	byte ptr [rax], 0x66
.label_400:
	mov	rax, qword ptr [rbp - 8]
	test	byte ptr [rax + 0x34], 1
	je	.label_404
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, rax
	nop	
	add	rcx, 1
	mov	qword ptr [rbp - 0x10], rcx
	lea	rsi, [rsi]
	mov	byte ptr [rax], 0x67
.label_404:
	mov	rax, qword ptr [rbp - 8]
	test	byte ptr [rax + 0x35], 1
	je	.label_410
	nop	
	mov	rax, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	rcx, rax
	add	rcx, 1
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x10], rcx
	mov	byte ptr [rax], 0x68
.label_410:
	movabs	rax, OFFSET FLAT:nonprinting
	mov	rcx, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	cmp	qword ptr [rcx + 0x20], rax
	mov	rbp, rbp
	jne	.label_407
	mov	rax, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 0x10], rcx
	mov	byte ptr [rax], 0x69
.label_407:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 8]
	mov	rsp, rsp
	test	byte ptr [rax + 0x36], 1
	je	.label_403
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 0x10], rcx
	mov	rbp, rbp
	mov	byte ptr [rax], 0x4d
.label_403:
	nop	
	mov	rax, qword ptr [rbp - 8]
	test	byte ptr [rax + 0x32], 1
	je	.label_411
	mov	rax, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 0x10], rcx
	lea	rdi, [rdi]
	mov	byte ptr [rax], 0x6e
.label_411:
	mov	rax, qword ptr [rbp - 8]
	test	byte ptr [rax + 0x33], 1
	mov	rbp, rbp
	je	.label_405
	nop	
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 0x10], rcx
	mov	byte ptr [rax], 0x52
.label_405:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 8]
	test	byte ptr [rax + 0x37], 1
	lea	rsi, [rsi]
	je	.label_402
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 0x10], rcx
	mov	rsp, rsp
	mov	byte ptr [rax], 0x72
.label_402:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 8]
	mov	rsp, rsp
	test	byte ptr [rax + 0x38], 1
	nop	
	je	.label_409
	nop	
	mov	rax, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	rcx, rax
	mov	rbp, rbp
	add	rcx, 1
	mov	qword ptr [rbp - 0x10], rcx
	mov	rsp, rsp
	mov	byte ptr [rax], 0x56
.label_409:
	mov	rax, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	byte ptr [rax], 0
	lea	rdi, [rdi]
	pop	rbp
	lea	rdi, [rdi]
	ret	
	.section	.text
	.align	16
	#Procedure 0x409400

	.globl select_plural
	.type select_plural, @function
select_plural:
	push	rbp
	lea	rsi, [rsi]
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	nop	
	cmp	qword ptr [rbp - 8], -1
	ja	.label_412
	mov	rax, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_413
.label_412:
	mov	eax, 0xf4240
	mov	ecx, eax
	mov	rax, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	xor	edx, edx
	mov	rbp, rbp
	div	rcx
	lea	rsi, [rsi]
	add	rdx, 0xf4240
	mov	qword ptr [rbp - 0x10], rdx
.label_413:
	nop	
	mov	rax, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x409460

	.globl initbuf
	.type initbuf, @function
initbuf:
	push	rbp
	nop	
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x18], rdx
.label_416:
	mov	eax, 0x20
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	and	rdx, 0x1f
	sub	rcx, rdx
	add	rcx, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x18], rcx
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x18]
	nop	
	call	malloc
	nop	
	mov	rcx, qword ptr [rbp - 8]
	mov	qword ptr [rcx], rax
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 8]
	cmp	qword ptr [rax], 0
	je	.label_415
	jmp	.label_417
.label_415:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	shr	rax, 1
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x18], rax
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	add	rcx, 1
	nop	
	cmp	rax, rcx
	ja	.label_414
	call	xalloc_die
.label_414:
	jmp	.label_416
.label_417:
	mov	rax, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 8]
	mov	qword ptr [rcx + 0x28], rax
	nop	
	mov	rax, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	qword ptr [rcx + 0x18], rax
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rax + 0x10], 0
	nop	
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rax + 0x20], 0
	mov	rax, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	qword ptr [rax + 8], 0
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 8]
	mov	byte ptr [rax + 0x30], 0
	mov	rsp, rsp
	add	rsp, 0x20
	pop	rbp
	lea	rsi, [rsi]
	ret	
	.section	.text
	.align	16
	#Procedure 0x409570

	.globl fillbuf
	.type fillbuf, @function
fillbuf:
	lea	rsi, [rsi]
	push	rbp
	mov	rsp, rsp
	mov	rbp, rsp
	nop	
	sub	rsp, 0xb0
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x20], rdx
	nop	
	mov	rdx,  qword ptr [word ptr [keylist]]
	mov	qword ptr [rbp - 0x28], rdx
	mov	al,  byte ptr [byte ptr [eolchar]]
	mov	byte ptr [rbp - 0x29], al
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rdx + 0x28]
	mov	qword ptr [rbp - 0x38], rdx
	mov	rdx,  qword ptr [word ptr [merge_buffer_size]]
	sub	rdx, 0x22
	mov	qword ptr [rbp - 0x40], rdx
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x10]
	test	byte ptr [rdx + 0x30], 1
	nop	
	je	.label_443
	mov	byte ptr [rbp - 1], 0
	jmp	.label_418
.label_443:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 8]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x10]
	nop	
	cmp	rax, qword ptr [rcx + 0x20]
	je	.label_432
	xor	eax, eax
	nop	
	mov	ecx, eax
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rdx]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x10]
	nop	
	mov	rdx, qword ptr [rdx]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x10]
	add	rdx, qword ptr [rsi + 8]
	mov	rsi, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	sub	rcx, qword ptr [rsi + 0x20]
	add	rdx, rcx
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	rcx, qword ptr [rcx + 0x20]
	lea	rdi, [rdi]
	mov	rsi, rdx
	mov	rbp, rbp
	mov	rdx, rcx
	mov	rbp, rbp
	call	memmove
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	rcx, qword ptr [rcx + 0x20]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	qword ptr [rdx + 8], rcx
	mov	rcx, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	qword ptr [rcx + 0x10], 0
.label_432:
	lea	rsi, [rsi]
	jmp	.label_438
.label_438:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x10]
	add	rax, qword ptr [rcx + 8]
	mov	qword ptr [rbp - 0x48], rax
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	call	buffer_linelim
	xor	edx, edx
	mov	rbp, rbp
	mov	ecx, edx
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x50], rax
	mov	rax, qword ptr [rbp - 0x50]
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, rcx
	nop	
	sub	rsi, qword ptr [rdi + 0x10]
	mov	rsp, rsp
	shl	rsi, 5
	add	rax, rsi
	mov	qword ptr [rbp - 0x58], rax
	mov	rax, qword ptr [rbp - 0x50]
	nop	
	mov	rsi, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rsi + 0x10]
	nop	
	imul	rsi, qword ptr [rbp - 0x38]
	mov	rbp, rbp
	sub	rcx, rsi
	mov	rbp, rbp
	add	rax, rcx
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x48]
	lea	rsi, [rsi]
	sub	rax, rcx
	nop	
	mov	qword ptr [rbp - 0x60], rax
	mov	rax, qword ptr [rbp - 0x10]
	cmp	qword ptr [rax + 0x10], 0
	je	.label_425
	mov	rax, qword ptr [rbp - 0x58]
	mov	rsp, rsp
	mov	rax, qword ptr [rax]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x58]
	nop	
	add	rax, qword ptr [rcx + 8]
	mov	qword ptr [rbp - 0x98], rax
	lea	rdi, [rdi]
	jmp	.label_421
.label_425:
	nop	
	mov	rax, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0x98], rax
.label_421:
	mov	rax, qword ptr [rbp - 0x98]
	mov	qword ptr [rbp - 0x68], rax
.label_420:
	mov	rax, qword ptr [rbp - 0x38]
	lea	rsi, [rsi]
	add	rax, 1
	nop	
	cmp	rax, qword ptr [rbp - 0x60]
	mov	rsp, rsp
	jae	.label_419
	mov	rbp, rbp
	mov	eax, 1
	mov	esi, eax
	nop	
	mov	rcx, qword ptr [rbp - 0x60]
	sub	rcx, 1
	mov	rdx, qword ptr [rbp - 0x38]
	mov	rbp, rbp
	add	rdx, 1
	mov	rbp, rbp
	mov	rax, rcx
	xor	edi, edi
	mov	rsp, rsp
	mov	qword ptr [rbp - 0xa0], rdx
	nop	
	mov	edx, edi
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0xa0]
	div	rcx
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x70], rax
	mov	rdi, qword ptr [rbp - 0x48]
	mov	rax, qword ptr [rbp - 0x70]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rdx, rax
	mov	rbp, rbp
	call	fread_unlocked
	mov	qword ptr [rbp - 0x78], rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x48]
	add	rax, qword ptr [rbp - 0x78]
	mov	qword ptr [rbp - 0x80], rax
	mov	rax, qword ptr [rbp - 0x78]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x60]
	mov	rbp, rbp
	sub	rcx, rax
	mov	qword ptr [rbp - 0x60], rcx
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x78]
	cmp	rax, qword ptr [rbp - 0x70]
	lea	rsi, [rsi]
	je	.label_433
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x18]
	call	ferror_unlocked
	mov	rbp, rbp
	cmp	eax, 0
	lea	rdi, [rdi]
	je	.label_422
	movabs	rdi, OFFSET FLAT:.str.159
	lea	rdi, [rdi]
	call	gettext
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	mov	rdi, rax
	call	sort_die
.label_422:
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x18]
	call	feof_unlocked
	mov	rbp, rbp
	cmp	eax, 0
	je	.label_436
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	byte ptr [rax + 0x30], 1
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax]
	nop	
	cmp	rax, qword ptr [rbp - 0x80]
	jne	.label_439
	mov	byte ptr [rbp - 1], 0
	jmp	.label_418
.label_439:
	mov	rax, qword ptr [rbp - 0x68]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rbp - 0x80]
	je	.label_427
	mov	rax, qword ptr [rbp - 0x80]
	mov	rbp, rbp
	movsx	ecx, byte ptr [rax - 1]
	mov	rsp, rsp
	movsx	edx, byte ptr [rbp - 0x29]
	nop	
	cmp	ecx, edx
	lea	rsi, [rsi]
	je	.label_427
	mov	al, byte ptr [rbp - 0x29]
	mov	rcx, qword ptr [rbp - 0x80]
	lea	rdi, [rdi]
	mov	rdx, rcx
	mov	rbp, rbp
	add	rdx, 1
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x80], rdx
	nop	
	mov	byte ptr [rcx], al
.label_427:
	jmp	.label_436
.label_436:
	nop	
	jmp	.label_433
.label_433:
	lea	rdi, [rdi]
	jmp	.label_434
.label_434:
	mov	rdi, qword ptr [rbp - 0x48]
	movsx	esi, byte ptr [rbp - 0x29]
	nop	
	mov	rax, qword ptr [rbp - 0x80]
	mov	rcx, qword ptr [rbp - 0x48]
	nop	
	sub	rax, rcx
	mov	rdx, rax
	call	memchr
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x88], rax
	cmp	rax, 0
	je	.label_429
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x88]
	mov	byte ptr [rax], 0
	mov	rax, qword ptr [rbp - 0x88]
	lea	rdi, [rdi]
	add	rax, 1
	mov	qword ptr [rbp - 0x48], rax
	mov	rax, qword ptr [rbp - 0x58]
	lea	rdi, [rdi]
	add	rax, -0x20
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x58], rax
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x68]
	nop	
	mov	rcx, qword ptr [rbp - 0x58]
	mov	rsp, rsp
	mov	qword ptr [rcx], rax
	mov	rax, qword ptr [rbp - 0x48]
	nop	
	mov	rcx, qword ptr [rbp - 0x68]
	sub	rax, rcx
	mov	rcx, qword ptr [rbp - 0x58]
	mov	qword ptr [rcx + 8], rax
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x40]
	mov	rcx, qword ptr [rbp - 0x58]
	mov	rsp, rsp
	cmp	rax, qword ptr [rcx + 8]
	jbe	.label_423
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x40]
	mov	qword ptr [rbp - 0xa8], rax
	jmp	.label_444
.label_423:
	mov	rax, qword ptr [rbp - 0x58]
	mov	rbp, rbp
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0xa8], rax
.label_444:
	mov	rax, qword ptr [rbp - 0xa8]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x40], rax
	mov	rax, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rbp - 0x60]
	sub	rcx, rax
	mov	qword ptr [rbp - 0x60], rcx
	cmp	qword ptr [rbp - 0x28], 0
	lea	rsi, [rsi]
	je	.label_430
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	cmp	qword ptr [rax + 0x10], -1
	jne	.label_437
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x88]
	mov	qword ptr [rbp - 0xb0], rax
	jmp	.label_442
.label_437:
	mov	rdi, qword ptr [rbp - 0x58]
	mov	rsi, qword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	call	limfield
	mov	qword ptr [rbp - 0xb0], rax
.label_442:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0xb0]
	mov	rcx, qword ptr [rbp - 0x58]
	mov	rsp, rsp
	mov	qword ptr [rcx + 0x18], rax
	nop	
	mov	rax, qword ptr [rbp - 0x28]
	mov	rbp, rbp
	cmp	qword ptr [rax], -1
	je	.label_424
	mov	rdi, qword ptr [rbp - 0x58]
	mov	rsi, qword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	call	begfield
	mov	rsi, qword ptr [rbp - 0x58]
	mov	qword ptr [rsi + 0x10], rax
	nop	
	jmp	.label_435
.label_424:
	mov	rax, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	test	byte ptr [rax + 0x30], 1
	mov	rbp, rbp
	je	.label_428
	jmp	.label_426
.label_426:
	mov	rax, qword ptr [rbp - 0x68]
	lea	rsi, [rsi]
	movsx	edi, byte ptr [rax]
	call	to_uchar
	movzx	edi, al
	lea	rsi, [rsi]
	mov	ecx, edi
	mov	rbp, rbp
	test	byte ptr [byte ptr [+ (rcx * 1) + blanks]],  1
	je	.label_441
	mov	rax, qword ptr [rbp - 0x68]
	add	rax, 1
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x68], rax
	lea	rsi, [rsi]
	jmp	.label_426
.label_441:
	mov	rsp, rsp
	jmp	.label_428
.label_428:
	mov	rax, qword ptr [rbp - 0x68]
	mov	rcx, qword ptr [rbp - 0x58]
	mov	qword ptr [rcx + 0x10], rax
.label_435:
	jmp	.label_430
.label_430:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x48]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x68], rax
	jmp	.label_434
.label_429:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x80]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x48], rax
	mov	rax, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	test	byte ptr [rax + 0x30], 1
	je	.label_440
	jmp	.label_419
.label_440:
	lea	rsi, [rsi]
	jmp	.label_420
.label_419:
	mov	rax, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	rcx, qword ptr [rcx]
	nop	
	sub	rax, rcx
	mov	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rcx + 8], rax
	mov	rdi, qword ptr [rbp - 0x10]
	call	buffer_linelim
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x58]
	mov	rsp, rsp
	sub	rax, rcx
	mov	rsp, rsp
	sar	rax, 5
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x10]
	nop	
	mov	qword ptr [rcx + 0x10], rax
	mov	rax, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	cmp	qword ptr [rax + 0x10], 0
	je	.label_431
	nop	
	mov	rax, qword ptr [rbp - 0x48]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x68]
	lea	rsi, [rsi]
	sub	rax, rcx
	nop	
	mov	rcx, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	qword ptr [rcx + 0x20], rax
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x40]
	lea	rsi, [rsi]
	add	rax, 0x22
	mov	qword ptr [word ptr [merge_buffer_size]],  rax
	nop	
	mov	byte ptr [rbp - 1], 1
	mov	rbp, rbp
	jmp	.label_418
.label_431:
	lea	rsi, [rbp - 0x90]
	mov	eax, 0x20
	mov	edx, eax
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx + 0x18]
	shr	rcx, 5
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x90], rcx
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x10]
	nop	
	mov	rdi, qword ptr [rcx]
	lea	rsi, [rsi]
	call	x2nrealloc
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rcx], rax
	mov	rax, qword ptr [rbp - 0x90]
	shl	rax, 5
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	qword ptr [rcx + 0x18], rax
	nop	
	jmp	.label_438
.label_418:
	mov	rsp, rsp
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	add	rsp, 0xb0
	pop	rbp
	mov	rsp, rsp
	ret	
	.section	.text
	.align	16
	#Procedure 0x409c20

	.globl buffer_linelim
	.type buffer_linelim, @function
buffer_linelim:
	lea	rsi, [rsi]
	push	rbp
	mov	rbp, rsp
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 8], rdi
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	rdi, qword ptr [rdi]
	nop	
	mov	rax, qword ptr [rbp - 8]
	add	rdi, qword ptr [rax + 0x18]
	mov	qword ptr [rbp - 0x10], rdi
	mov	rax, qword ptr [rbp - 0x10]
	pop	rbp
	mov	rbp, rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x409c60

	.globl compare
	.type compare, @function
compare:
	nop	
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x50
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	cmp	qword ptr [word ptr [keylist]],  0
	nop	
	je	.label_453
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	call	keycompare
	mov	dword ptr [rbp - 0x1c], eax
	lea	rsi, [rsi]
	cmp	dword ptr [rbp - 0x1c], 0
	nop	
	jne	.label_446
	lea	rsi, [rsi]
	test	byte ptr [byte ptr [unique]],  1
	lea	rsi, [rsi]
	jne	.label_446
	mov	rsp, rsp
	test	byte ptr [byte ptr [stable]],  1
	je	.label_461
.label_446:
	nop	
	mov	eax, dword ptr [rbp - 0x1c]
	mov	dword ptr [rbp - 4], eax
	nop	
	jmp	.label_448
.label_461:
	jmp	.label_453
.label_453:
	mov	rax, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax + 8]
	mov	rbp, rbp
	sub	rax, 1
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x28], rax
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x18]
	nop	
	mov	rax, qword ptr [rax + 8]
	sub	rax, 1
	mov	qword ptr [rbp - 0x30], rax
	cmp	qword ptr [rbp - 0x28], 0
	nop	
	jne	.label_454
	xor	eax, eax
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0x30], 0
	setne	cl
	and	cl, 1
	movzx	edx, cl
	lea	rdi, [rdi]
	sub	eax, edx
	mov	dword ptr [rbp - 0x1c], eax
	jmp	.label_456
.label_454:
	cmp	qword ptr [rbp - 0x30], 0
	mov	rbp, rbp
	jne	.label_459
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x1c], 1
	lea	rdi, [rdi]
	jmp	.label_445
.label_459:
	mov	rsp, rsp
	test	byte ptr [byte ptr [hard_LC_COLLATE]],  1
	je	.label_449
	mov	rax, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rax]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, 1
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rcx]
	mov	rcx, qword ptr [rbp - 0x30]
	mov	rbp, rbp
	add	rcx, 1
	mov	rsp, rsp
	mov	rsi, rax
	call	xmemcoll0
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x1c], eax
	jmp	.label_451
.label_449:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rax]
	mov	rax, qword ptr [rbp - 0x18]
	nop	
	mov	rsi, qword ptr [rax]
	mov	rax, qword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	cmp	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x38], rdi
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x40], rsi
	lea	rsi, [rsi]
	jae	.label_455
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x48], rax
	jmp	.label_450
.label_455:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x48], rax
.label_450:
	mov	rax, qword ptr [rbp - 0x48]
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rsi, qword ptr [rbp - 0x40]
	lea	rsi, [rsi]
	mov	rdx, rax
	call	memcmp
	mov	dword ptr [rbp - 0x1c], eax
	cmp	eax, 0
	nop	
	jne	.label_447
	nop	
	mov	rax, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rbp - 0x30]
	jae	.label_452
	mov	eax, 0xffffffff
	mov	dword ptr [rbp - 0x4c], eax
	lea	rsi, [rsi]
	jmp	.label_458
.label_452:
	mov	rax, qword ptr [rbp - 0x28]
	cmp	rax, qword ptr [rbp - 0x30]
	nop	
	setne	cl
	and	cl, 1
	nop	
	movzx	edx, cl
	mov	dword ptr [rbp - 0x4c], edx
.label_458:
	mov	eax, dword ptr [rbp - 0x4c]
	mov	dword ptr [rbp - 0x1c], eax
.label_447:
	lea	rsi, [rsi]
	jmp	.label_451
.label_451:
	nop	
	jmp	.label_445
.label_445:
	jmp	.label_456
.label_456:
	test	byte ptr [byte ptr [reverse]],  1
	nop	
	je	.label_457
	mov	rsp, rsp
	xor	eax, eax
	mov	rbp, rbp
	sub	eax, dword ptr [rbp - 0x1c]
	nop	
	mov	dword ptr [rbp - 0x50], eax
	jmp	.label_460
.label_457:
	mov	eax, dword ptr [rbp - 0x1c]
	mov	dword ptr [rbp - 0x50], eax
.label_460:
	mov	eax, dword ptr [rbp - 0x50]
	nop	
	mov	dword ptr [rbp - 4], eax
.label_448:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x50
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x409eb0

	.globl write_line
	.type write_line, @function
write_line:
	nop	
	push	rbp
	mov	rbp, rsp
	lea	rsi, [rsi]
	sub	rsp, 0x40
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x18], rdx
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 8]
	mov	rdx, qword ptr [rdx]
	mov	qword ptr [rbp - 0x20], rdx
	mov	rdx, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rdx + 8]
	mov	qword ptr [rbp - 0x28], rdx
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	add	rdx, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x30], rdx
	cmp	qword ptr [rbp - 0x18], 0
	mov	rbp, rbp
	jne	.label_463
	test	byte ptr [byte ptr [debug]],  1
	nop	
	je	.label_463
	nop	
	mov	rax, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x38], rax
.label_462:
	mov	rax, qword ptr [rbp - 0x38]
	nop	
	cmp	rax, qword ptr [rbp - 0x30]
	jae	.label_464
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x38]
	mov	rcx, rax
	mov	rsp, rsp
	add	rcx, 1
	nop	
	mov	qword ptr [rbp - 0x38], rcx
	mov	dl, byte ptr [rax]
	mov	byte ptr [rbp - 0x39], dl
	movsx	esi, byte ptr [rbp - 0x39]
	cmp	esi, 9
	mov	rbp, rbp
	jne	.label_470
	mov	byte ptr [rbp - 0x39], 0x3e
	jmp	.label_468
.label_470:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x38]
	cmp	rax, qword ptr [rbp - 0x30]
	jne	.label_469
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x39], 0xa
.label_469:
	mov	rbp, rbp
	jmp	.label_468
.label_468:
	mov	rsp, rsp
	movsx	edi, byte ptr [rbp - 0x39]
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x10]
	call	fputc_unlocked
	lea	rdi, [rdi]
	cmp	eax, -1
	lea	rdi, [rdi]
	jne	.label_466
	movabs	rdi, OFFSET FLAT:.str.163
	mov	rsp, rsp
	call	gettext
	mov	rsi, qword ptr [rbp - 0x18]
	nop	
	mov	rdi, rax
	call	sort_die
.label_466:
	mov	rsp, rsp
	jmp	.label_462
.label_464:
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 8]
	call	debug_line
	lea	rsi, [rsi]
	jmp	.label_467
.label_463:
	mov	eax, 1
	lea	rsi, [rsi]
	mov	esi, eax
	lea	rdi, [rdi]
	mov	cl,  byte ptr [byte ptr [eolchar]]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x30]
	mov	byte ptr [rdx - 1], cl
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rdx, qword ptr [rbp - 0x28]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x10]
	call	fwrite_unlocked
	mov	rbp, rbp
	cmp	rax, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	je	.label_465
	lea	rsi, [rsi]
	movabs	rdi, OFFSET FLAT:.str.163
	call	gettext
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x18]
	nop	
	mov	rdi, rax
	lea	rdi, [rdi]
	call	sort_die
.label_465:
	nop	
	mov	rax, qword ptr [rbp - 0x30]
	mov	rsp, rsp
	mov	byte ptr [rax - 1], 0
.label_467:
	add	rsp, 0x40
	pop	rbp
	lea	rsi, [rsi]
	ret	
	.section	.text
	.align	16
	#Procedure 0x40a060

	.globl limfield
	.type limfield, @function
limfield:
	push	rbp
	mov	rbp, rsp
	nop	
	sub	rsp, 0x40
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 8], rdi
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rsi]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x18], rsi
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 8]
	add	rsi, qword ptr [rdi + 8]
	add	rsi, -1
	mov	qword ptr [rbp - 0x20], rsi
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rsi + 0x10]
	mov	qword ptr [rbp - 0x28], rsi
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	rsi, qword ptr [rsi + 0x18]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x30], rsi
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x30], 0
	nop	
	jne	.label_495
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, 1
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x28], rax
.label_495:
	lea	rsi, [rsi]
	cmp	dword ptr [dword ptr [tab]],  0x80
	je	.label_488
	jmp	.label_499
.label_499:
	xor	eax, eax
	nop	
	mov	cl, al
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	cmp	rdx, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x31], cl
	lea	rdi, [rdi]
	jae	.label_501
	nop	
	mov	rax, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	mov	rcx, rax
	lea	rsi, [rsi]
	add	rcx, -1
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x28], rcx
	nop	
	cmp	rax, 0
	setne	dl
	mov	byte ptr [rbp - 0x31], dl
.label_501:
	lea	rsi, [rsi]
	mov	al, byte ptr [rbp - 0x31]
	test	al, 1
	jne	.label_485
	nop	
	jmp	.label_492
.label_485:
	mov	rbp, rbp
	jmp	.label_481
.label_481:
	nop	
	xor	eax, eax
	mov	rbp, rbp
	mov	cl, al
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	cmp	rdx, qword ptr [rbp - 0x20]
	mov	byte ptr [rbp - 0x32], cl
	mov	rbp, rbp
	jae	.label_494
	mov	rax, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	movsx	ecx, byte ptr [rax]
	cmp	ecx,  dword ptr [dword ptr [tab]]
	setne	dl
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x32], dl
.label_494:
	mov	al, byte ptr [rbp - 0x32]
	test	al, 1
	jne	.label_476
	lea	rsi, [rsi]
	jmp	.label_478
.label_476:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 1
	mov	qword ptr [rbp - 0x18], rax
	lea	rsi, [rsi]
	jmp	.label_481
.label_478:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x18]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_486
	cmp	qword ptr [rbp - 0x28], 0
	jne	.label_498
	cmp	qword ptr [rbp - 0x30], 0
	je	.label_486
.label_498:
	mov	rax, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	add	rax, 1
	mov	qword ptr [rbp - 0x18], rax
.label_486:
	mov	rsp, rsp
	jmp	.label_499
.label_492:
	jmp	.label_471
.label_488:
	lea	rsi, [rsi]
	jmp	.label_472
.label_472:
	mov	rbp, rbp
	xor	eax, eax
	mov	rsp, rsp
	mov	cl, al
	nop	
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	cmp	rdx, qword ptr [rbp - 0x20]
	mov	byte ptr [rbp - 0x33], cl
	jae	.label_474
	mov	rax, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	mov	rcx, rax
	add	rcx, -1
	mov	qword ptr [rbp - 0x28], rcx
	cmp	rax, 0
	nop	
	setne	dl
	mov	byte ptr [rbp - 0x33], dl
.label_474:
	lea	rsi, [rsi]
	mov	al, byte ptr [rbp - 0x33]
	mov	rsp, rsp
	test	al, 1
	nop	
	jne	.label_489
	mov	rsp, rsp
	jmp	.label_493
.label_489:
	jmp	.label_484
.label_484:
	nop	
	xor	eax, eax
	nop	
	mov	cl, al
	nop	
	mov	rdx, qword ptr [rbp - 0x18]
	cmp	rdx, qword ptr [rbp - 0x20]
	mov	byte ptr [rbp - 0x34], cl
	lea	rdi, [rdi]
	jae	.label_497
	mov	rax, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	movsx	edi, byte ptr [rax]
	mov	rbp, rbp
	call	to_uchar
	lea	rsi, [rsi]
	movzx	edi, al
	mov	rsp, rsp
	mov	ecx, edi
	nop	
	mov	al,  byte ptr [byte ptr [+ (rcx * 1) + blanks]]
	mov	byte ptr [rbp - 0x34], al
.label_497:
	mov	al, byte ptr [rbp - 0x34]
	test	al, 1
	jne	.label_479
	jmp	.label_483
.label_479:
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 1
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_484
.label_483:
	jmp	.label_473
.label_473:
	xor	eax, eax
	mov	cl, al
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x18]
	cmp	rdx, qword ptr [rbp - 0x20]
	mov	byte ptr [rbp - 0x35], cl
	jae	.label_500
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	movsx	edi, byte ptr [rax]
	lea	rsi, [rsi]
	call	to_uchar
	lea	rsi, [rsi]
	movzx	edi, al
	mov	ecx, edi
	nop	
	mov	al,  byte ptr [byte ptr [+ (rcx * 1) + blanks]]
	xor	al, 0xff
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x35], al
.label_500:
	mov	al, byte ptr [rbp - 0x35]
	test	al, 1
	lea	rdi, [rdi]
	jne	.label_477
	jmp	.label_480
.label_477:
	mov	rax, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	add	rax, 1
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x18], rax
	lea	rdi, [rdi]
	jmp	.label_473
.label_480:
	mov	rsp, rsp
	jmp	.label_472
.label_493:
	jmp	.label_471
.label_471:
	cmp	qword ptr [rbp - 0x30], 0
	lea	rdi, [rdi]
	je	.label_491
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	test	byte ptr [rax + 0x31], 1
	mov	rsp, rsp
	je	.label_496
	jmp	.label_490
.label_490:
	xor	eax, eax
	mov	rbp, rbp
	mov	cl, al
	nop	
	mov	rdx, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	cmp	rdx, qword ptr [rbp - 0x20]
	mov	byte ptr [rbp - 0x36], cl
	lea	rsi, [rsi]
	jae	.label_503
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x18]
	movsx	edi, byte ptr [rax]
	call	to_uchar
	lea	rdi, [rdi]
	movzx	edi, al
	mov	rbp, rbp
	mov	ecx, edi
	lea	rdi, [rdi]
	mov	al,  byte ptr [byte ptr [+ (rcx * 1) + blanks]]
	mov	byte ptr [rbp - 0x36], al
.label_503:
	mov	al, byte ptr [rbp - 0x36]
	lea	rdi, [rdi]
	test	al, 1
	mov	rsp, rsp
	jne	.label_487
	jmp	.label_502
.label_487:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	add	rax, 1
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_490
.label_502:
	nop	
	jmp	.label_496
.label_496:
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	add	rcx, qword ptr [rbp - 0x30]
	cmp	rax, rcx
	mov	rbp, rbp
	jae	.label_482
	mov	rax, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x40], rax
	jmp	.label_475
.label_482:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x40], rax
.label_475:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x40]
	nop	
	mov	qword ptr [rbp - 0x18], rax
.label_491:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	add	rsp, 0x40
	mov	rbp, rbp
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40a450

	.globl begfield
	.type begfield, @function
begfield:
	lea	rdi, [rdi]
	push	rbp
	mov	rsp, rsp
	mov	rbp, rsp
	sub	rsp, 0x40
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rsi]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x18], rsi
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rdi, qword ptr [rbp - 8]
	add	rsi, qword ptr [rdi + 8]
	mov	rbp, rbp
	add	rsi, -1
	mov	qword ptr [rbp - 0x20], rsi
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rsi]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x28], rsi
	nop	
	mov	rsi, qword ptr [rbp - 0x10]
	nop	
	mov	rsi, qword ptr [rsi + 8]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x30], rsi
	cmp	dword ptr [dword ptr [tab]],  0x80
	je	.label_524
	jmp	.label_521
.label_521:
	lea	rsi, [rsi]
	xor	eax, eax
	lea	rdi, [rdi]
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x18]
	nop	
	cmp	rdx, qword ptr [rbp - 0x20]
	nop	
	mov	byte ptr [rbp - 0x31], cl
	jae	.label_522
	mov	rax, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	mov	rcx, rax
	mov	rbp, rbp
	add	rcx, -1
	mov	qword ptr [rbp - 0x28], rcx
	cmp	rax, 0
	setne	dl
	mov	byte ptr [rbp - 0x31], dl
.label_522:
	lea	rsi, [rsi]
	mov	al, byte ptr [rbp - 0x31]
	test	al, 1
	jne	.label_505
	mov	rbp, rbp
	jmp	.label_512
.label_505:
	jmp	.label_515
.label_515:
	nop	
	xor	eax, eax
	nop	
	mov	cl, al
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	cmp	rdx, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x32], cl
	lea	rsi, [rsi]
	jae	.label_516
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	movsx	ecx, byte ptr [rax]
	lea	rsi, [rsi]
	cmp	ecx,  dword ptr [dword ptr [tab]]
	lea	rsi, [rsi]
	setne	dl
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x32], dl
.label_516:
	lea	rsi, [rsi]
	mov	al, byte ptr [rbp - 0x32]
	mov	rsp, rsp
	test	al, 1
	jne	.label_527
	jmp	.label_531
.label_527:
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 1
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_515
.label_531:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x18]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_523
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 1
	mov	qword ptr [rbp - 0x18], rax
.label_523:
	jmp	.label_521
.label_512:
	jmp	.label_508
.label_524:
	jmp	.label_504
.label_504:
	lea	rsi, [rsi]
	xor	eax, eax
	lea	rdi, [rdi]
	mov	cl, al
	nop	
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	cmp	rdx, qword ptr [rbp - 0x20]
	mov	byte ptr [rbp - 0x33], cl
	nop	
	jae	.label_519
	mov	rax, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	mov	rcx, rax
	lea	rsi, [rsi]
	add	rcx, -1
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x28], rcx
	nop	
	cmp	rax, 0
	setne	dl
	mov	byte ptr [rbp - 0x33], dl
.label_519:
	mov	al, byte ptr [rbp - 0x33]
	test	al, 1
	lea	rsi, [rsi]
	jne	.label_532
	lea	rdi, [rdi]
	jmp	.label_509
.label_532:
	nop	
	jmp	.label_514
.label_514:
	lea	rsi, [rsi]
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	cmp	rdx, qword ptr [rbp - 0x20]
	mov	byte ptr [rbp - 0x34], cl
	lea	rsi, [rsi]
	jae	.label_513
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	movsx	edi, byte ptr [rax]
	call	to_uchar
	movzx	edi, al
	mov	ecx, edi
	mov	al,  byte ptr [byte ptr [+ (rcx * 1) + blanks]]
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x34], al
.label_513:
	lea	rdi, [rdi]
	mov	al, byte ptr [rbp - 0x34]
	test	al, 1
	jne	.label_525
	lea	rdi, [rdi]
	jmp	.label_529
.label_525:
	nop	
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 1
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x18], rax
	nop	
	jmp	.label_514
.label_529:
	jmp	.label_507
.label_507:
	xor	eax, eax
	lea	rsi, [rsi]
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x18]
	cmp	rdx, qword ptr [rbp - 0x20]
	nop	
	mov	byte ptr [rbp - 0x35], cl
	lea	rdi, [rdi]
	jae	.label_510
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x18]
	movsx	edi, byte ptr [rax]
	call	to_uchar
	mov	rsp, rsp
	movzx	edi, al
	lea	rdi, [rdi]
	mov	ecx, edi
	lea	rsi, [rsi]
	mov	al,  byte ptr [byte ptr [+ (rcx * 1) + blanks]]
	xor	al, 0xff
	mov	byte ptr [rbp - 0x35], al
.label_510:
	mov	rsp, rsp
	mov	al, byte ptr [rbp - 0x35]
	mov	rsp, rsp
	test	al, 1
	mov	rsp, rsp
	jne	.label_526
	mov	rsp, rsp
	jmp	.label_528
.label_526:
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 1
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_507
.label_528:
	lea	rdi, [rdi]
	jmp	.label_504
.label_509:
	jmp	.label_508
.label_508:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	test	byte ptr [rax + 0x30], 1
	nop	
	je	.label_511
	lea	rsi, [rsi]
	jmp	.label_506
.label_506:
	nop	
	xor	eax, eax
	mov	cl, al
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x18]
	nop	
	cmp	rdx, qword ptr [rbp - 0x20]
	mov	byte ptr [rbp - 0x36], cl
	mov	rsp, rsp
	jae	.label_518
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x18]
	movsx	edi, byte ptr [rax]
	call	to_uchar
	lea	rsi, [rsi]
	movzx	edi, al
	lea	rdi, [rdi]
	mov	ecx, edi
	mov	rbp, rbp
	mov	al,  byte ptr [byte ptr [+ (rcx * 1) + blanks]]
	mov	byte ptr [rbp - 0x36], al
.label_518:
	lea	rdi, [rdi]
	mov	al, byte ptr [rbp - 0x36]
	test	al, 1
	mov	rsp, rsp
	jne	.label_530
	jmp	.label_533
.label_530:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	add	rax, 1
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_506
.label_533:
	jmp	.label_511
.label_511:
	mov	rax, qword ptr [rbp - 0x20]
	nop	
	mov	rcx, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	add	rcx, qword ptr [rbp - 0x30]
	cmp	rax, rcx
	lea	rsi, [rsi]
	jae	.label_517
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x40], rax
	mov	rsp, rsp
	jmp	.label_520
.label_517:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, qword ptr [rbp - 0x30]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x40], rax
.label_520:
	mov	rax, qword ptr [rbp - 0x40]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x18], rax
	nop	
	mov	rax, qword ptr [rbp - 0x18]
	add	rsp, 0x40
	lea	rsi, [rsi]
	pop	rbp
	lea	rsi, [rsi]
	ret	
	.section	.text
	.align	16
	#Procedure 0x40a800

	.globl keycompare
	.type keycompare, @function
keycompare:
	mov	rbp, rbp
	push	rbp
	nop	
	mov	rbp, rsp
	mov	rbp, rbp
	sub	rsp, 0x10b0
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	rbp, rbp
	mov	rsi,  qword ptr [word ptr [keylist]]
	nop	
	mov	qword ptr [rbp - 0x20], rsi
	nop	
	mov	rsi, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rsi + 0x10]
	mov	qword ptr [rbp - 0x28], rsi
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rsi + 0x10]
	mov	qword ptr [rbp - 0x30], rsi
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	rsi, qword ptr [rsi + 0x18]
	nop	
	mov	qword ptr [rbp - 0x38], rsi
	mov	rsi, qword ptr [rbp - 0x18]
	nop	
	mov	rsi, qword ptr [rsi + 0x18]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x40], rsi
.label_639:
	nop	
	mov	rax, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax + 0x28]
	nop	
	mov	qword ptr [rbp - 0x50], rax
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	mov	rax, qword ptr [rax + 0x20]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x58], rax
	mov	rax, qword ptr [rbp - 0x28]
	cmp	rax, qword ptr [rbp - 0x38]
	jbe	.label_555
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x1058], rax
	mov	rsp, rsp
	jmp	.label_569
.label_555:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x38]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x1058], rax
.label_569:
	mov	rax, qword ptr [rbp - 0x1058]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x38], rax
	mov	rax, qword ptr [rbp - 0x30]
	nop	
	cmp	rax, qword ptr [rbp - 0x40]
	mov	rbp, rbp
	jbe	.label_578
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x1060], rax
	lea	rsi, [rsi]
	jmp	.label_585
.label_578:
	mov	rax, qword ptr [rbp - 0x40]
	nop	
	mov	qword ptr [rbp - 0x1060], rax
.label_585:
	mov	rax, qword ptr [rbp - 0x1060]
	mov	qword ptr [rbp - 0x40], rax
	mov	rax, qword ptr [rbp - 0x38]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	sub	rax, rcx
	mov	qword ptr [rbp - 0x60], rax
	nop	
	mov	rax, qword ptr [rbp - 0x40]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x30]
	sub	rax, rcx
	mov	qword ptr [rbp - 0x68], rax
	nop	
	test	byte ptr [byte ptr [hard_LC_COLLATE]],  1
	jne	.label_543
	nop	
	mov	rdi, qword ptr [rbp - 0x20]
	call	key_numeric
	test	al, 1
	lea	rsi, [rsi]
	jne	.label_543
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x20]
	nop	
	test	byte ptr [rax + 0x36], 1
	jne	.label_543
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x20]
	test	byte ptr [rax + 0x33], 1
	jne	.label_543
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	test	byte ptr [rax + 0x38], 1
	mov	rbp, rbp
	je	.label_619
.label_543:
	cmp	qword ptr [rbp - 0x58], 0
	jne	.label_592
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0x50], 0
	mov	rbp, rbp
	je	.label_628
.label_592:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	add	rax, qword ptr [rbp - 0x68]
	mov	rsp, rsp
	add	rax, 1
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x1050], rax
	cmp	qword ptr [rbp - 0x1050], 0xfa0
	lea	rdi, [rdi]
	ja	.label_631
	lea	rax, [rbp - 0x1040]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x70], rax
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x98], 0
	jmp	.label_554
.label_631:
	mov	rdi, qword ptr [rbp - 0x1050]
	lea	rsi, [rsi]
	call	xmalloc
	mov	qword ptr [rbp - 0x98], rax
	mov	qword ptr [rbp - 0x70], rax
.label_554:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x70]
	add	rax, qword ptr [rbp - 0x60]
	lea	rsi, [rsi]
	add	rax, 1
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x78], rax
	mov	qword ptr [rbp - 0x1048], 0
	mov	qword ptr [rbp - 0x80], 0
.label_602:
	mov	rax, qword ptr [rbp - 0x1048]
	mov	rbp, rbp
	cmp	rax, qword ptr [rbp - 0x60]
	jae	.label_547
	cmp	qword ptr [rbp - 0x58], 0
	je	.label_551
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x1048]
	mov	rcx, qword ptr [rbp - 0x28]
	movsx	edi, byte ptr [rcx + rax]
	nop	
	call	to_uchar
	movzx	edi, al
	lea	rsi, [rsi]
	mov	ecx, edi
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x58]
	test	byte ptr [rdx + rcx], 1
	jne	.label_563
.label_551:
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x50], 0
	je	.label_570
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x1048]
	nop	
	mov	rcx, qword ptr [rbp - 0x28]
	movsx	edi, byte ptr [rcx + rax]
	call	to_uchar
	lea	rsi, [rsi]
	movzx	edi, al
	lea	rdi, [rdi]
	mov	ecx, edi
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x50]
	mov	rbp, rbp
	movsx	edi, byte ptr [rdx + rcx]
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x1064], edi
	jmp	.label_567
.label_570:
	mov	rax, qword ptr [rbp - 0x1048]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x28]
	movsx	edx, byte ptr [rcx + rax]
	mov	dword ptr [rbp - 0x1064], edx
.label_567:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x1064]
	mov	rbp, rbp
	mov	cl, al
	nop	
	mov	rdx, qword ptr [rbp - 0x80]
	mov	rsi, rdx
	add	rsi, 1
	nop	
	mov	qword ptr [rbp - 0x80], rsi
	mov	rsi, qword ptr [rbp - 0x70]
	mov	byte ptr [rsi + rdx], cl
.label_563:
	jmp	.label_601
.label_601:
	nop	
	mov	rax, qword ptr [rbp - 0x1048]
	mov	rsp, rsp
	add	rax, 1
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x1048], rax
	jmp	.label_602
.label_547:
	mov	rax, qword ptr [rbp - 0x80]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x70]
	mov	byte ptr [rcx + rax], 0
	nop	
	mov	qword ptr [rbp - 0x1048], 0
	mov	qword ptr [rbp - 0x88], 0
.label_550:
	mov	rax, qword ptr [rbp - 0x1048]
	nop	
	cmp	rax, qword ptr [rbp - 0x68]
	nop	
	jae	.label_616
	cmp	qword ptr [rbp - 0x58], 0
	mov	rbp, rbp
	je	.label_620
	mov	rax, qword ptr [rbp - 0x1048]
	mov	rcx, qword ptr [rbp - 0x30]
	lea	rsi, [rsi]
	movsx	edi, byte ptr [rcx + rax]
	mov	rbp, rbp
	call	to_uchar
	movzx	edi, al
	mov	ecx, edi
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x58]
	lea	rsi, [rsi]
	test	byte ptr [rdx + rcx], 1
	jne	.label_629
.label_620:
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x50], 0
	je	.label_637
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x1048]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x30]
	movsx	edi, byte ptr [rcx + rax]
	call	to_uchar
	movzx	edi, al
	lea	rsi, [rsi]
	mov	ecx, edi
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x50]
	movsx	edi, byte ptr [rdx + rcx]
	mov	dword ptr [rbp - 0x1068], edi
	lea	rdi, [rdi]
	jmp	.label_644
.label_637:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x1048]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x30]
	movsx	edx, byte ptr [rcx + rax]
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x1068], edx
.label_644:
	mov	eax, dword ptr [rbp - 0x1068]
	nop	
	mov	cl, al
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x88]
	mov	rsi, rdx
	add	rsi, 1
	mov	qword ptr [rbp - 0x88], rsi
	mov	rsi, qword ptr [rbp - 0x78]
	mov	byte ptr [rsi + rdx], cl
.label_629:
	mov	rbp, rbp
	jmp	.label_548
.label_548:
	mov	rax, qword ptr [rbp - 0x1048]
	add	rax, 1
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x1048], rax
	nop	
	jmp	.label_550
.label_616:
	mov	rax, qword ptr [rbp - 0x88]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x78]
	mov	byte ptr [rcx + rax], 0
	nop	
	jmp	.label_559
.label_628:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x70], rax
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x60]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x80], rax
	mov	rax, qword ptr [rbp - 0x80]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x70]
	mov	dl, byte ptr [rcx + rax]
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x89], dl
	nop	
	mov	rax, qword ptr [rbp - 0x80]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x70]
	mov	byte ptr [rcx + rax], 0
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x30]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x78], rax
	mov	rax, qword ptr [rbp - 0x68]
	mov	qword ptr [rbp - 0x88], rax
	mov	rax, qword ptr [rbp - 0x88]
	nop	
	mov	rcx, qword ptr [rbp - 0x78]
	mov	dl, byte ptr [rcx + rax]
	mov	byte ptr [rbp - 0x8a], dl
	mov	rax, qword ptr [rbp - 0x88]
	mov	rcx, qword ptr [rbp - 0x78]
	lea	rsi, [rsi]
	mov	byte ptr [rcx + rax], 0
.label_559:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x20]
	test	byte ptr [rax + 0x32], 1
	je	.label_597
	nop	
	mov	rdi, qword ptr [rbp - 0x70]
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x78]
	mov	rsp, rsp
	call	numcompare
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x44], eax
	lea	rsi, [rsi]
	jmp	.label_591
.label_597:
	nop	
	mov	rax, qword ptr [rbp - 0x20]
	test	byte ptr [rax + 0x34], 1
	je	.label_607
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x70]
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x78]
	nop	
	call	general_numcompare
	nop	
	mov	dword ptr [rbp - 0x44], eax
	lea	rsi, [rsi]
	jmp	.label_611
.label_607:
	nop	
	mov	rax, qword ptr [rbp - 0x20]
	test	byte ptr [rax + 0x35], 1
	mov	rsp, rsp
	je	.label_574
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x70]
	mov	rsi, qword ptr [rbp - 0x78]
	call	human_numcompare
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x44], eax
	jmp	.label_589
.label_574:
	mov	rax, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	test	byte ptr [rax + 0x36], 1
	je	.label_626
	lea	rdi, [rdi]
	xor	eax, eax
	mov	rbp, rbp
	mov	esi, eax
	mov	rdi, qword ptr [rbp - 0x70]
	nop	
	call	getmonth
	xor	ecx, ecx
	mov	esi, ecx
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x78]
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x106c], eax
	call	getmonth
	mov	ecx, dword ptr [rbp - 0x106c]
	sub	ecx, eax
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x44], ecx
	jmp	.label_588
.label_626:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x20]
	test	byte ptr [rax + 0x33], 1
	nop	
	je	.label_645
	mov	rdi, qword ptr [rbp - 0x70]
	mov	rsi, qword ptr [rbp - 0x80]
	mov	rdx, qword ptr [rbp - 0x78]
	mov	rcx, qword ptr [rbp - 0x88]
	mov	rsp, rsp
	call	compare_random
	mov	dword ptr [rbp - 0x44], eax
	nop	
	jmp	.label_540
.label_645:
	mov	rax, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	test	byte ptr [rax + 0x38], 1
	je	.label_542
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x70]
	mov	rsi, qword ptr [rbp - 0x78]
	nop	
	call	filevercmp
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x44], eax
	mov	rsp, rsp
	jmp	.label_546
.label_542:
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x80], 0
	jne	.label_549
	lea	rsi, [rsi]
	xor	eax, eax
	cmp	qword ptr [rbp - 0x88], 0
	lea	rdi, [rdi]
	setne	cl
	and	cl, 1
	lea	rdi, [rdi]
	movzx	edx, cl
	mov	rbp, rbp
	sub	eax, edx
	mov	dword ptr [rbp - 0x44], eax
	jmp	.label_553
.label_549:
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x88], 0
	jne	.label_565
	mov	dword ptr [rbp - 0x44], 1
	jmp	.label_633
.label_565:
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x70]
	mov	rax, qword ptr [rbp - 0x80]
	mov	rbp, rbp
	add	rax, 1
	mov	rdx, qword ptr [rbp - 0x78]
	mov	rcx, qword ptr [rbp - 0x88]
	add	rcx, 1
	lea	rdi, [rdi]
	mov	rsi, rax
	mov	rbp, rbp
	call	xmemcoll0
	nop	
	mov	dword ptr [rbp - 0x44], eax
.label_633:
	lea	rdi, [rdi]
	jmp	.label_553
.label_553:
	jmp	.label_546
.label_546:
	jmp	.label_540
.label_540:
	jmp	.label_588
.label_588:
	jmp	.label_589
.label_589:
	mov	rsp, rsp
	jmp	.label_611
.label_611:
	nop	
	jmp	.label_591
.label_591:
	cmp	qword ptr [rbp - 0x58], 0
	lea	rsi, [rsi]
	jne	.label_593
	cmp	qword ptr [rbp - 0x50], 0
	je	.label_598
.label_593:
	mov	rdi, qword ptr [rbp - 0x98]
	mov	rsp, rsp
	call	free
	jmp	.label_603
.label_598:
	lea	rdi, [rdi]
	mov	al, byte ptr [rbp - 0x89]
	mov	rcx, qword ptr [rbp - 0x80]
	mov	rdx, qword ptr [rbp - 0x70]
	mov	rsp, rsp
	mov	byte ptr [rdx + rcx], al
	mov	rbp, rbp
	mov	al, byte ptr [rbp - 0x8a]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x88]
	mov	rdx, qword ptr [rbp - 0x78]
	mov	rsp, rsp
	mov	byte ptr [rdx + rcx], al
.label_603:
	jmp	.label_612
.label_619:
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0x58], 0
	je	.label_614
	cmp	qword ptr [rbp - 0x50], 0
	je	.label_584
	jmp	.label_600
.label_600:
	jmp	.label_599
.label_599:
	mov	rbp, rbp
	jmp	.label_534
.label_534:
	mov	rbp, rbp
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	cmp	rdx, qword ptr [rbp - 0x38]
	mov	byte ptr [rbp - 0x106d], cl
	lea	rdi, [rdi]
	jae	.label_622
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x28]
	mov	rbp, rbp
	movsx	edi, byte ptr [rax]
	call	to_uchar
	lea	rsi, [rsi]
	movzx	edi, al
	mov	rbp, rbp
	mov	ecx, edi
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x58]
	nop	
	mov	al, byte ptr [rdx + rcx]
	mov	byte ptr [rbp - 0x106d], al
.label_622:
	mov	al, byte ptr [rbp - 0x106d]
	mov	rbp, rbp
	test	al, 1
	nop	
	jne	.label_642
	lea	rdi, [rdi]
	jmp	.label_647
.label_642:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x28]
	mov	rbp, rbp
	add	rax, 1
	mov	qword ptr [rbp - 0x28], rax
	jmp	.label_534
.label_647:
	jmp	.label_538
.label_538:
	lea	rsi, [rsi]
	xor	eax, eax
	mov	rbp, rbp
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x30]
	cmp	rdx, qword ptr [rbp - 0x40]
	mov	byte ptr [rbp - 0x106e], cl
	jae	.label_586
	mov	rax, qword ptr [rbp - 0x30]
	movsx	edi, byte ptr [rax]
	mov	rbp, rbp
	call	to_uchar
	movzx	edi, al
	mov	rbp, rbp
	mov	ecx, edi
	nop	
	mov	rdx, qword ptr [rbp - 0x58]
	lea	rsi, [rsi]
	mov	al, byte ptr [rdx + rcx]
	mov	byte ptr [rbp - 0x106e], al
.label_586:
	mov	al, byte ptr [rbp - 0x106e]
	lea	rsi, [rsi]
	test	al, 1
	jne	.label_552
	jmp	.label_558
.label_552:
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, 1
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_538
.label_558:
	mov	rax, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rbp - 0x38]
	jae	.label_608
	mov	rax, qword ptr [rbp - 0x30]
	cmp	rax, qword ptr [rbp - 0x40]
	mov	rbp, rbp
	jb	.label_537
.label_608:
	jmp	.label_539
.label_537:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	movsx	edi, byte ptr [rax]
	call	to_uchar
	movzx	edi, al
	mov	ecx, edi
	mov	rdx, qword ptr [rbp - 0x50]
	mov	rsp, rsp
	movsx	edi, byte ptr [rdx + rcx]
	call	to_uchar
	movzx	edi, al
	mov	rcx, qword ptr [rbp - 0x30]
	nop	
	movsx	esi, byte ptr [rcx]
	mov	dword ptr [rbp - 0x1074], edi
	mov	edi, esi
	call	to_uchar
	movzx	esi, al
	mov	rbp, rbp
	mov	ecx, esi
	mov	rdx, qword ptr [rbp - 0x50]
	movsx	edi, byte ptr [rdx + rcx]
	nop	
	call	to_uchar
	lea	rsi, [rsi]
	movzx	esi, al
	mov	rsp, rsp
	mov	edi, dword ptr [rbp - 0x1074]
	sub	edi, esi
	mov	dword ptr [rbp - 0x44], edi
	cmp	dword ptr [rbp - 0x44], 0
	lea	rdi, [rdi]
	je	.label_594
	jmp	.label_583
.label_594:
	nop	
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, 1
	mov	qword ptr [rbp - 0x28], rax
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, 1
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_599
.label_539:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x28]
	mov	rbp, rbp
	cmp	rax, qword ptr [rbp - 0x38]
	lea	rdi, [rdi]
	setb	cl
	and	cl, 1
	mov	rsp, rsp
	movzx	edx, cl
	nop	
	mov	rax, qword ptr [rbp - 0x30]
	cmp	rax, qword ptr [rbp - 0x40]
	setb	cl
	mov	rsp, rsp
	and	cl, 1
	lea	rsi, [rsi]
	movzx	esi, cl
	sub	edx, esi
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x44], edx
	mov	rsp, rsp
	jmp	.label_605
.label_584:
	jmp	.label_623
.label_623:
	jmp	.label_596
.label_596:
	jmp	.label_571
.label_571:
	mov	rbp, rbp
	xor	eax, eax
	nop	
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	cmp	rdx, qword ptr [rbp - 0x38]
	nop	
	mov	byte ptr [rbp - 0x1075], cl
	jae	.label_627
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x28]
	movsx	edi, byte ptr [rax]
	mov	rsp, rsp
	call	to_uchar
	mov	rbp, rbp
	movzx	edi, al
	mov	rsp, rsp
	mov	ecx, edi
	nop	
	mov	rdx, qword ptr [rbp - 0x58]
	mov	al, byte ptr [rdx + rcx]
	nop	
	mov	byte ptr [rbp - 0x1075], al
.label_627:
	lea	rdi, [rdi]
	mov	al, byte ptr [rbp - 0x1075]
	test	al, 1
	lea	rdi, [rdi]
	jne	.label_643
	lea	rdi, [rdi]
	jmp	.label_632
.label_643:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, 1
	mov	qword ptr [rbp - 0x28], rax
	jmp	.label_571
.label_632:
	jmp	.label_561
.label_561:
	lea	rsi, [rsi]
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x30]
	mov	rbp, rbp
	cmp	rdx, qword ptr [rbp - 0x40]
	mov	byte ptr [rbp - 0x1076], cl
	lea	rsi, [rsi]
	jae	.label_580
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x30]
	movsx	edi, byte ptr [rax]
	call	to_uchar
	lea	rsi, [rsi]
	movzx	edi, al
	mov	ecx, edi
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x58]
	nop	
	mov	al, byte ptr [rdx + rcx]
	mov	byte ptr [rbp - 0x1076], al
.label_580:
	mov	al, byte ptr [rbp - 0x1076]
	mov	rsp, rsp
	test	al, 1
	jne	.label_556
	jmp	.label_560
.label_556:
	mov	rax, qword ptr [rbp - 0x30]
	mov	rsp, rsp
	add	rax, 1
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_561
.label_560:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x28]
	cmp	rax, qword ptr [rbp - 0x38]
	jae	.label_566
	mov	rax, qword ptr [rbp - 0x30]
	cmp	rax, qword ptr [rbp - 0x40]
	lea	rdi, [rdi]
	jb	.label_573
.label_566:
	jmp	.label_576
.label_573:
	mov	rax, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	movsx	edi, byte ptr [rax]
	lea	rdi, [rdi]
	call	to_uchar
	nop	
	movzx	edi, al
	nop	
	mov	rcx, qword ptr [rbp - 0x30]
	movsx	edx, byte ptr [rcx]
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x107c], edi
	mov	edi, edx
	call	to_uchar
	movzx	edx, al
	lea	rdi, [rdi]
	mov	edi, dword ptr [rbp - 0x107c]
	nop	
	sub	edi, edx
	nop	
	mov	dword ptr [rbp - 0x44], edi
	cmp	dword ptr [rbp - 0x44], 0
	je	.label_587
	jmp	.label_583
.label_587:
	mov	rax, qword ptr [rbp - 0x28]
	mov	rbp, rbp
	add	rax, 1
	mov	qword ptr [rbp - 0x28], rax
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, 1
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x30], rax
	lea	rsi, [rsi]
	jmp	.label_596
.label_576:
	mov	rax, qword ptr [rbp - 0x28]
	cmp	rax, qword ptr [rbp - 0x38]
	lea	rsi, [rsi]
	setb	cl
	and	cl, 1
	movzx	edx, cl
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x30]
	lea	rdi, [rdi]
	cmp	rax, qword ptr [rbp - 0x40]
	mov	rbp, rbp
	setb	cl
	and	cl, 1
	mov	rbp, rbp
	movzx	esi, cl
	sub	edx, esi
	mov	dword ptr [rbp - 0x44], edx
	jmp	.label_605
.label_605:
	lea	rsi, [rsi]
	jmp	.label_617
.label_614:
	cmp	qword ptr [rbp - 0x60], 0
	jne	.label_618
	mov	rsp, rsp
	xor	eax, eax
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x68], 0
	mov	rbp, rbp
	setne	cl
	and	cl, 1
	movzx	edx, cl
	sub	eax, edx
	mov	dword ptr [rbp - 0x44], eax
	jmp	.label_621
.label_618:
	nop	
	cmp	qword ptr [rbp - 0x68], 0
	nop	
	jne	.label_615
	lea	rsi, [rsi]
	jmp	.label_634
.label_615:
	nop	
	cmp	qword ptr [rbp - 0x50], 0
	je	.label_635
	mov	rsp, rsp
	jmp	.label_624
.label_624:
	nop	
	xor	eax, eax
	lea	rsi, [rsi]
	mov	cl, al
	nop	
	mov	rdx, qword ptr [rbp - 0x28]
	cmp	rdx, qword ptr [rbp - 0x38]
	mov	byte ptr [rbp - 0x107d], cl
	jae	.label_638
	mov	rax, qword ptr [rbp - 0x30]
	mov	rbp, rbp
	cmp	rax, qword ptr [rbp - 0x40]
	lea	rsi, [rsi]
	setb	cl
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x107d], cl
.label_638:
	mov	al, byte ptr [rbp - 0x107d]
	test	al, 1
	jne	.label_535
	mov	rbp, rbp
	jmp	.label_564
.label_535:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, rax
	add	rcx, 1
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x28], rcx
	movsx	edi, byte ptr [rax]
	mov	rbp, rbp
	call	to_uchar
	lea	rdi, [rdi]
	movzx	edi, al
	nop	
	mov	ecx, edi
	mov	rdx, qword ptr [rbp - 0x50]
	movsx	edi, byte ptr [rdx + rcx]
	call	to_uchar
	movzx	edi, al
	nop	
	mov	rcx, qword ptr [rbp - 0x30]
	mov	rdx, rcx
	add	rdx, 1
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x30], rdx
	mov	rsp, rsp
	movsx	esi, byte ptr [rcx]
	nop	
	mov	dword ptr [rbp - 0x1084], edi
	lea	rsi, [rsi]
	mov	edi, esi
	call	to_uchar
	lea	rdi, [rdi]
	movzx	esi, al
	mov	ecx, esi
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x50]
	movsx	edi, byte ptr [rdx + rcx]
	call	to_uchar
	movzx	esi, al
	mov	edi, dword ptr [rbp - 0x1084]
	sub	edi, esi
	mov	dword ptr [rbp - 0x44], edi
	cmp	dword ptr [rbp - 0x44], 0
	lea	rsi, [rsi]
	je	.label_568
	nop	
	jmp	.label_583
.label_568:
	nop	
	jmp	.label_624
.label_564:
	mov	rsp, rsp
	jmp	.label_577
.label_635:
	mov	rdi, qword ptr [rbp - 0x28]
	mov	rsi, qword ptr [rbp - 0x30]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x60]
	lea	rdi, [rdi]
	cmp	rax, qword ptr [rbp - 0x68]
	mov	qword ptr [rbp - 0x1090], rdi
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x1098], rsi
	mov	rsp, rsp
	jae	.label_579
	mov	rax, qword ptr [rbp - 0x60]
	mov	qword ptr [rbp - 0x10a0], rax
	lea	rdi, [rdi]
	jmp	.label_590
.label_579:
	mov	rax, qword ptr [rbp - 0x68]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x10a0], rax
.label_590:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x10a0]
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x1090]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x1098]
	mov	rdx, rax
	call	memcmp
	mov	dword ptr [rbp - 0x44], eax
	cmp	dword ptr [rbp - 0x44], 0
	je	.label_606
	lea	rdi, [rdi]
	jmp	.label_583
.label_606:
	mov	rbp, rbp
	jmp	.label_577
.label_577:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x68]
	jae	.label_610
	mov	eax, 0xffffffff
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x10a4], eax
	jmp	.label_562
.label_610:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x68]
	lea	rsi, [rsi]
	setne	cl
	and	cl, 1
	movzx	edx, cl
	mov	dword ptr [rbp - 0x10a4], edx
.label_562:
	mov	eax, dword ptr [rbp - 0x10a4]
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x44], eax
	jmp	.label_621
.label_621:
	jmp	.label_617
.label_617:
	jmp	.label_612
.label_612:
	cmp	dword ptr [rbp - 0x44], 0
	je	.label_544
	jmp	.label_583
.label_544:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax + 0x40]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x20], rax
	cmp	qword ptr [rbp - 0x20], 0
	jne	.label_636
	jmp	.label_641
.label_636:
	mov	rax, qword ptr [rbp - 0x20]
	cmp	qword ptr [rax + 0x10], -1
	nop	
	je	.label_613
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x20]
	call	limfield
	mov	qword ptr [rbp - 0x38], rax
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x20]
	call	limfield
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x40], rax
	jmp	.label_541
.label_613:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	add	rax, qword ptr [rcx + 8]
	nop	
	add	rax, -1
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x38], rax
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	add	rax, qword ptr [rcx + 8]
	mov	rbp, rbp
	add	rax, -1
	mov	qword ptr [rbp - 0x40], rax
.label_541:
	mov	rax, qword ptr [rbp - 0x20]
	nop	
	cmp	qword ptr [rax], -1
	lea	rsi, [rsi]
	je	.label_557
	mov	rdi, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	call	begfield
	mov	qword ptr [rbp - 0x28], rax
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	call	begfield
	mov	qword ptr [rbp - 0x30], rax
	lea	rsi, [rsi]
	jmp	.label_572
.label_557:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0x28], rax
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0x30], rax
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x20]
	test	byte ptr [rax + 0x30], 1
	je	.label_575
	jmp	.label_581
.label_581:
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x28]
	nop	
	cmp	rdx, qword ptr [rbp - 0x38]
	mov	byte ptr [rbp - 0x10a5], cl
	jae	.label_582
	nop	
	mov	rax, qword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	movsx	edi, byte ptr [rax]
	call	to_uchar
	nop	
	movzx	edi, al
	lea	rsi, [rsi]
	mov	ecx, edi
	lea	rsi, [rsi]
	mov	al,  byte ptr [byte ptr [+ (rcx * 1) + blanks]]
	mov	byte ptr [rbp - 0x10a5], al
.label_582:
	nop	
	mov	al, byte ptr [rbp - 0x10a5]
	test	al, 1
	jne	.label_625
	jmp	.label_604
.label_625:
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, 1
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x28], rax
	jmp	.label_581
.label_604:
	lea	rdi, [rdi]
	jmp	.label_595
.label_595:
	xor	eax, eax
	lea	rdi, [rdi]
	mov	cl, al
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x30]
	cmp	rdx, qword ptr [rbp - 0x40]
	mov	byte ptr [rbp - 0x10a6], cl
	mov	rbp, rbp
	jae	.label_609
	mov	rax, qword ptr [rbp - 0x30]
	mov	rsp, rsp
	movsx	edi, byte ptr [rax]
	nop	
	call	to_uchar
	movzx	edi, al
	mov	rsp, rsp
	mov	ecx, edi
	lea	rsi, [rsi]
	mov	al,  byte ptr [byte ptr [+ (rcx * 1) + blanks]]
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x10a6], al
.label_609:
	lea	rsi, [rsi]
	mov	al, byte ptr [rbp - 0x10a6]
	test	al, 1
	nop	
	jne	.label_630
	nop	
	jmp	.label_545
.label_630:
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, 1
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_595
.label_545:
	mov	rsp, rsp
	jmp	.label_575
.label_575:
	jmp	.label_572
.label_572:
	lea	rsi, [rsi]
	jmp	.label_639
.label_641:
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 4], 0
	jmp	.label_640
.label_634:
	mov	dword ptr [rbp - 0x44], 1
.label_583:
	mov	rax, qword ptr [rbp - 0x20]
	test	byte ptr [rax + 0x37], 1
	je	.label_646
	xor	eax, eax
	lea	rdi, [rdi]
	sub	eax, dword ptr [rbp - 0x44]
	mov	dword ptr [rbp - 0x10ac], eax
	jmp	.label_536
.label_646:
	mov	eax, dword ptr [rbp - 0x44]
	nop	
	mov	dword ptr [rbp - 0x10ac], eax
.label_536:
	mov	eax, dword ptr [rbp - 0x10ac]
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 4], eax
.label_640:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 4]
	mov	rbp, rbp
	add	rsp, 0x10b0
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40b840

	.globl numcompare
	.type numcompare, @function
numcompare:
	lea	rdi, [rdi]
	push	rbp
	mov	rbp, rsp
	lea	rsi, [rsi]
	sub	rsp, 0x10
	mov	qword ptr [rbp - 8], rdi
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x10], rsi
.label_649:
	nop	
	mov	rax, qword ptr [rbp - 8]
	movsx	edi, byte ptr [rax]
	mov	rbp, rbp
	call	to_uchar
	movzx	edi, al
	lea	rdi, [rdi]
	mov	ecx, edi
	mov	rsp, rsp
	test	byte ptr [byte ptr [+ (rcx * 1) + blanks]],  1
	nop	
	je	.label_648
	mov	rax, qword ptr [rbp - 8]
	add	rax, 1
	mov	rbp, rbp
	mov	qword ptr [rbp - 8], rax
	jmp	.label_649
.label_648:
	lea	rsi, [rsi]
	jmp	.label_650
.label_650:
	mov	rax, qword ptr [rbp - 0x10]
	movsx	edi, byte ptr [rax]
	lea	rsi, [rsi]
	call	to_uchar
	movzx	edi, al
	lea	rsi, [rsi]
	mov	ecx, edi
	lea	rdi, [rdi]
	test	byte ptr [byte ptr [+ (rcx * 1) + blanks]],  1
	je	.label_651
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 1
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_650
.label_651:
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	edx,  dword ptr [dword ptr [decimal_point]]
	mov	ecx,  dword ptr [dword ptr [thousands_sep]]
	lea	rdi, [rdi]
	call	strnumcmp
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40b910

	.globl general_numcompare
	.type general_numcompare, @function
general_numcompare:
	nop	
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x70
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	nop	
	mov	rdi, qword ptr [rbp - 0x10]
	lea	rsi, [rbp - 0x20]
	call	strtold
	nop	
	fstp	xword ptr [rbp - 0x40]
	mov	rdi, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	lea	rsi, [rbp - 0x28]
	call	strtold
	lea	rdi, [rdi]
	fstp	xword ptr [rbp - 0x50]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	cmp	rsi, qword ptr [rbp - 0x20]
	jne	.label_653
	mov	eax, 0xffffffff
	lea	rdi, [rdi]
	xor	ecx, ecx
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x18]
	cmp	rdx, qword ptr [rbp - 0x28]
	cmove	eax, ecx
	mov	dword ptr [rbp - 4], eax
	nop	
	jmp	.label_656
.label_653:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	cmp	rax, qword ptr [rbp - 0x28]
	nop	
	jne	.label_668
	nop	
	mov	dword ptr [rbp - 4], 1
	nop	
	jmp	.label_656
.label_668:
	lea	rdi, [rdi]
	fld	xword ptr [rbp - 0x40]
	lea	rdi, [rdi]
	fld	xword ptr [rbp - 0x50]
	fucomip	st(1)
	fstp	st(0)
	mov	rbp, rbp
	jbe	.label_659
	mov	rsp, rsp
	jmp	.label_667
.label_667:
	nop	
	mov	eax, 0xffffffff
	mov	dword ptr [rbp - 0x54], eax
	nop	
	jmp	.label_669
.label_659:
	mov	rsp, rsp
	fld	xword ptr [rbp - 0x40]
	mov	rsp, rsp
	fld	xword ptr [rbp - 0x50]
	fxch	st(1)
	fucomip	st(1)
	fstp	st(0)
	lea	rdi, [rdi]
	jbe	.label_655
	mov	rsp, rsp
	jmp	.label_663
.label_663:
	mov	eax, 1
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x58], eax
	jmp	.label_665
.label_655:
	mov	rbp, rbp
	fld	xword ptr [rbp - 0x40]
	mov	rbp, rbp
	fld	xword ptr [rbp - 0x50]
	fxch	st(1)
	fucomip	st(1)
	mov	rbp, rbp
	fstp	st(0)
	jne	.label_654
	nop	
	jnp	.label_658
	jmp	.label_654
.label_658:
	xor	eax, eax
	nop	
	mov	dword ptr [rbp - 0x5c], eax
	jmp	.label_662
.label_654:
	fld	xword ptr [rbp - 0x50]
	lea	rdi, [rdi]
	fucomip	st(0)
	jp	.label_666
	jmp	.label_652
.label_652:
	lea	rsi, [rsi]
	mov	eax, 0xffffffff
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x60], eax
	jmp	.label_661
.label_666:
	fld	xword ptr [rbp - 0x40]
	fucomip	st(0)
	jp	.label_657
	mov	rsp, rsp
	jmp	.label_660
.label_660:
	mov	eax, 1
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x64], eax
	jmp	.label_664
.label_657:
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	call	nan_compare
	mov	dword ptr [rbp - 0x64], eax
.label_664:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x64]
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x60], eax
.label_661:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x60]
	mov	dword ptr [rbp - 0x5c], eax
.label_662:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x5c]
	mov	dword ptr [rbp - 0x58], eax
.label_665:
	mov	eax, dword ptr [rbp - 0x58]
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x54], eax
.label_669:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x54]
	mov	rsp, rsp
	mov	dword ptr [rbp - 4], eax
.label_656:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x70
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40bae0

	.globl human_numcompare
	.type human_numcompare, @function
human_numcompare:
	push	rbp
	mov	rsp, rsp
	mov	rbp, rsp
	lea	rdi, [rdi]
	sub	rsp, 0x20
	mov	qword ptr [rbp - 8], rdi
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x10], rsi
.label_671:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	movsx	edi, byte ptr [rax]
	call	to_uchar
	movzx	edi, al
	mov	rbp, rbp
	mov	ecx, edi
	lea	rsi, [rsi]
	test	byte ptr [byte ptr [+ (rcx * 1) + blanks]],  1
	nop	
	je	.label_673
	mov	rax, qword ptr [rbp - 8]
	add	rax, 1
	mov	qword ptr [rbp - 8], rax
	jmp	.label_671
.label_673:
	jmp	.label_675
.label_675:
	mov	rax, qword ptr [rbp - 0x10]
	movsx	edi, byte ptr [rax]
	call	to_uchar
	movzx	edi, al
	mov	rsp, rsp
	mov	ecx, edi
	test	byte ptr [byte ptr [+ (rcx * 1) + blanks]],  1
	je	.label_672
	nop	
	mov	rax, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	add	rax, 1
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_675
.label_672:
	mov	rdi, qword ptr [rbp - 8]
	call	find_unit_order
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x18], eax
	call	find_unit_order
	lea	rdi, [rdi]
	mov	ecx, dword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	sub	ecx, eax
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x14], ecx
	cmp	dword ptr [rbp - 0x14], 0
	je	.label_674
	nop	
	mov	eax, dword ptr [rbp - 0x14]
	nop	
	mov	dword ptr [rbp - 0x1c], eax
	jmp	.label_670
.label_674:
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	nop	
	mov	edx,  dword ptr [dword ptr [decimal_point]]
	mov	ecx,  dword ptr [dword ptr [thousands_sep]]
	lea	rdi, [rdi]
	call	strnumcmp
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x1c], eax
.label_670:
	mov	eax, dword ptr [rbp - 0x1c]
	add	rsp, 0x20
	lea	rdi, [rdi]
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40bbf0

	.globl getmonth
	.type getmonth, @function
getmonth:
	push	rbp
	lea	rsi, [rsi]
	mov	rbp, rsp
	sub	rsp, 0x50
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x10], rdi
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], 0
	mov	qword ptr [rbp - 0x28], 0xc
.label_676:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	movsx	edi, byte ptr [rax]
	call	to_uchar
	mov	rbp, rbp
	movzx	edi, al
	nop	
	mov	ecx, edi
	lea	rsi, [rsi]
	test	byte ptr [byte ptr [+ (rcx * 1) + blanks]],  1
	je	.label_684
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 1
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x10], rax
	mov	rbp, rbp
	jmp	.label_676
.label_684:
	jmp	.label_677
.label_677:
	movabs	rax, OFFSET FLAT:monthtab
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	add	rcx, qword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	shr	rcx, 1
	nop	
	mov	qword ptr [rbp - 0x30], rcx
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x38], rcx
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x30]
	mov	rbp, rbp
	shl	rcx, 4
	lea	rdi, [rdi]
	add	rax, rcx
	nop	
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0x40], rax
.label_682:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x40]
	mov	rsp, rsp
	cmp	byte ptr [rax], 0
	jne	.label_685
	cmp	qword ptr [rbp - 0x18], 0
	lea	rdi, [rdi]
	je	.label_687
	mov	rax, qword ptr [rbp - 0x38]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	mov	qword ptr [rcx], rax
.label_687:
	mov	rsp, rsp
	movabs	rax, OFFSET FLAT:monthtab
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x30]
	shl	rcx, 4
	add	rax, rcx
	lea	rdi, [rdi]
	mov	edx, dword ptr [rax + 8]
	mov	dword ptr [rbp - 4], edx
	jmp	.label_683
.label_685:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x38]
	mov	rsp, rsp
	movsx	edi, byte ptr [rax]
	lea	rsi, [rsi]
	call	to_uchar
	movzx	edi, al
	lea	rsi, [rsi]
	mov	ecx, edi
	nop	
	movsx	edi,  byte ptr [byte ptr [+ (rcx * 1) + fold_toupper]]
	call	to_uchar
	mov	rbp, rbp
	movzx	edi, al
	mov	rcx, qword ptr [rbp - 0x40]
	movsx	edx, byte ptr [rcx]
	nop	
	mov	dword ptr [rbp - 0x44], edi
	mov	edi, edx
	call	to_uchar
	movzx	edx, al
	mov	edi, dword ptr [rbp - 0x44]
	mov	rbp, rbp
	cmp	edi, edx
	lea	rdi, [rdi]
	jge	.label_678
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x28], rax
	jmp	.label_681
.label_678:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x38]
	movsx	edi, byte ptr [rax]
	call	to_uchar
	lea	rdi, [rdi]
	movzx	edi, al
	lea	rdi, [rdi]
	mov	ecx, edi
	movsx	edi,  byte ptr [byte ptr [+ (rcx * 1) + fold_toupper]]
	mov	rbp, rbp
	call	to_uchar
	movzx	edi, al
	mov	rcx, qword ptr [rbp - 0x40]
	movsx	edx, byte ptr [rcx]
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x48], edi
	nop	
	mov	edi, edx
	call	to_uchar
	nop	
	movzx	edx, al
	mov	edi, dword ptr [rbp - 0x48]
	cmp	edi, edx
	jle	.label_686
	mov	rax, qword ptr [rbp - 0x30]
	mov	rsp, rsp
	add	rax, 1
	nop	
	mov	qword ptr [rbp - 0x20], rax
	jmp	.label_681
.label_686:
	lea	rdi, [rdi]
	jmp	.label_679
.label_679:
	mov	rbp, rbp
	jmp	.label_680
.label_680:
	mov	rax, qword ptr [rbp - 0x38]
	add	rax, 1
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x38], rax
	mov	rax, qword ptr [rbp - 0x40]
	add	rax, 1
	mov	qword ptr [rbp - 0x40], rax
	jmp	.label_682
.label_681:
	lea	rsi, [rsi]
	jmp	.label_688
.label_688:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rbp - 0x28]
	nop	
	jb	.label_677
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 4], 0
.label_683:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x50
	lea	rdi, [rdi]
	pop	rbp
	nop	
	ret	
	.section	.text
	.align	16
	#Procedure 0x40be40

	.globl compare_random
	.type compare_random, @function
compare_random:
	nop	
	push	rbp
	nop	
	mov	rbp, rsp
	sub	rsp, 0x1240
	nop	
	mov	eax, 0x9c
	mov	r8d, eax
	lea	rdi, [rdi]
	movabs	r9, OFFSET FLAT:random_md5_state
	nop	
	lea	r10, [rbp - 0x1150]
	lea	rsi, [rsi]
	lea	r11, [rbp - 0xfd0]
	mov	rbp, rbp
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x20], rcx
	mov	dword ptr [rbp - 0x24], 0
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0xfd8], r11
	nop	
	mov	qword ptr [rbp - 0xfe0], 0xfa0
	mov	qword ptr [rbp - 0xfe8], 0
	nop	
	mov	rcx, r10
	mov	rsp, rsp
	add	rcx, 0x9c
	mov	rdx, rcx
	mov	rdi, rdx
	mov	rsi, r9
	mov	rsp, rsp
	mov	rdx, r8
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x1190], rcx
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x1198], r10
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x11a0], r8
	mov	rsp, rsp
	call	memcpy
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x1198]
	mov	rdx, qword ptr [rbp - 0x1190]
	mov	rdi, rcx
	nop	
	mov	rsi, rdx
	mov	rdx, qword ptr [rbp - 0x11a0]
	call	memcpy
	test	byte ptr [byte ptr [hard_LC_COLLATE]],  1
	mov	rsp, rsp
	je	.label_700
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 8]
	add	rax, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x1158], rax
	nop	
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x1160], rax
.label_708:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	add	rax, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	imul	rax, rax, 3
	nop	
	add	rax, 2
	mov	qword ptr [rbp - 0x1168], rax
	mov	rax, qword ptr [rbp - 0xfe0]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rbp - 0x1168]
	jae	.label_701
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x1168]
	nop	
	imul	rcx, qword ptr [rbp - 0xfe0], 3
	lea	rdi, [rdi]
	shr	rcx, 1
	lea	rdi, [rdi]
	cmp	rax, rcx
	jbe	.label_691
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x1168]
	mov	qword ptr [rbp - 0x11a8], rax
	lea	rdi, [rdi]
	jmp	.label_690
.label_691:
	lea	rdi, [rdi]
	imul	rax, qword ptr [rbp - 0xfe0], 3
	lea	rdi, [rdi]
	shr	rax, 1
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x11a8], rax
.label_690:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x11a8]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0xfe0], rax
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0xfe8]
	lea	rdi, [rdi]
	call	free
	mov	rdi, qword ptr [rbp - 0xfe0]
	lea	rdi, [rdi]
	call	malloc
	mov	rbp, rbp
	mov	qword ptr [rbp - 0xfe8], rax
	mov	qword ptr [rbp - 0xfd8], rax
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0xfd8], 0
	jne	.label_697
	lea	rax, [rbp - 0xfd0]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0xfd8], rax
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0xfe0], 0xfa0
.label_697:
	jmp	.label_701
.label_701:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 8]
	cmp	rax, qword ptr [rbp - 0x1158]
	mov	rbp, rbp
	jae	.label_714
	mov	rdi, qword ptr [rbp - 0xfd8]
	mov	rsi, qword ptr [rbp - 8]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0xfe0]
	mov	rbp, rbp
	call	xstrxfrm
	add	rax, 1
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x11b0], rax
	nop	
	jmp	.label_694
.label_714:
	xor	eax, eax
	lea	rdi, [rdi]
	mov	ecx, eax
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x11b0], rcx
	jmp	.label_694
.label_694:
	mov	rax, qword ptr [rbp - 0x11b0]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x1170], rax
	mov	rax, qword ptr [rbp - 0x1170]
	cmp	rax, qword ptr [rbp - 0xfe0]
	mov	rsp, rsp
	setbe	cl
	mov	rbp, rbp
	and	cl, 1
	mov	byte ptr [rbp - 0x1171], cl
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x18]
	cmp	rax, qword ptr [rbp - 0x1160]
	jae	.label_707
	mov	rsp, rsp
	test	byte ptr [rbp - 0x1171], 1
	je	.label_720
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0xfd8]
	add	rax, qword ptr [rbp - 0x1170]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x11b8], rax
	jmp	.label_693
.label_720:
	xor	eax, eax
	lea	rsi, [rsi]
	mov	ecx, eax
	mov	qword ptr [rbp - 0x11b8], rcx
	lea	rdi, [rdi]
	jmp	.label_693
.label_693:
	mov	rax, qword ptr [rbp - 0x11b8]
	mov	rsi, qword ptr [rbp - 0x18]
	test	byte ptr [rbp - 0x1171], 1
	mov	qword ptr [rbp - 0x11c0], rax
	nop	
	mov	qword ptr [rbp - 0x11c8], rsi
	mov	rbp, rbp
	je	.label_699
	mov	rax, qword ptr [rbp - 0xfe0]
	sub	rax, qword ptr [rbp - 0x1170]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x11d0], rax
	mov	rsp, rsp
	jmp	.label_713
.label_699:
	xor	eax, eax
	mov	ecx, eax
	mov	qword ptr [rbp - 0x11d0], rcx
	jmp	.label_713
.label_713:
	nop	
	mov	rax, qword ptr [rbp - 0x11d0]
	nop	
	mov	rdi, qword ptr [rbp - 0x11c0]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x11c8]
	mov	rdx, rax
	call	xstrxfrm
	add	rax, 1
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x11d8], rax
	mov	rbp, rbp
	jmp	.label_689
.label_707:
	xor	eax, eax
	mov	ecx, eax
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x11d8], rcx
	jmp	.label_689
.label_689:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x11d8]
	mov	qword ptr [rbp - 0x1180], rax
	lea	rdi, [rdi]
	test	byte ptr [rbp - 0x1171], 1
	mov	rsp, rsp
	je	.label_718
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x1170]
	lea	rdi, [rdi]
	add	rax, qword ptr [rbp - 0x1180]
	cmp	rax, qword ptr [rbp - 0xfe0]
	jbe	.label_692
.label_718:
	movabs	rax, 0x5555555555555555
	mov	rcx, qword ptr [rbp - 0x1170]
	lea	rdi, [rdi]
	add	rcx, qword ptr [rbp - 0x1180]
	mov	qword ptr [rbp - 0xfe0], rcx
	cmp	qword ptr [rbp - 0xfe0], rax
	mov	rbp, rbp
	jae	.label_719
	imul	rax, qword ptr [rbp - 0xfe0], 3
	lea	rsi, [rsi]
	shr	rax, 1
	mov	qword ptr [rbp - 0xfe0], rax
.label_719:
	mov	rdi, qword ptr [rbp - 0xfe8]
	call	free
	mov	rdi, qword ptr [rbp - 0xfe0]
	call	xmalloc
	mov	qword ptr [rbp - 0xfe8], rax
	mov	qword ptr [rbp - 0xfd8], rax
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 8]
	cmp	rax, qword ptr [rbp - 0x1158]
	lea	rsi, [rsi]
	jae	.label_717
	mov	rdi, qword ptr [rbp - 0xfd8]
	mov	rsi, qword ptr [rbp - 8]
	mov	rdx, qword ptr [rbp - 0x1170]
	lea	rdi, [rdi]
	call	strxfrm
	mov	qword ptr [rbp - 0x11e0], rax
.label_717:
	mov	rax, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	cmp	rax, qword ptr [rbp - 0x1160]
	jae	.label_712
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0xfd8]
	nop	
	add	rax, qword ptr [rbp - 0x1170]
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x18]
	nop	
	mov	rdx, qword ptr [rbp - 0x1180]
	mov	rdi, rax
	lea	rdi, [rdi]
	call	strxfrm
	mov	qword ptr [rbp - 0x11e8], rax
.label_712:
	mov	rbp, rbp
	jmp	.label_692
.label_692:
	mov	rax, qword ptr [rbp - 8]
	cmp	rax, qword ptr [rbp - 0x1158]
	jae	.label_705
	mov	rdi, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	call	strlen
	add	rax, 1
	lea	rsi, [rsi]
	add	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 8], rax
.label_705:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	cmp	rax, qword ptr [rbp - 0x1160]
	lea	rsi, [rsi]
	jae	.label_711
	mov	rdi, qword ptr [rbp - 0x18]
	call	strlen
	add	rax, 1
	add	rax, qword ptr [rbp - 0x18]
	nop	
	mov	qword ptr [rbp - 0x18], rax
.label_711:
	mov	rax, qword ptr [rbp - 8]
	cmp	rax, qword ptr [rbp - 0x1158]
	jb	.label_695
	mov	rax, qword ptr [rbp - 0x18]
	cmp	rax, qword ptr [rbp - 0x1160]
	jb	.label_695
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x1170]
	nop	
	mov	qword ptr [rbp - 0x10], rax
	nop	
	mov	rax, qword ptr [rbp - 0xfd8]
	mov	qword ptr [rbp - 8], rax
	mov	rax, qword ptr [rbp - 0x1180]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x20], rax
	mov	rax, qword ptr [rbp - 0xfd8]
	nop	
	add	rax, qword ptr [rbp - 0x1170]
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_703
.label_695:
	lea	rsi, [rsi]
	lea	rdx, [rbp - 0x1150]
	mov	rdi, qword ptr [rbp - 0xfd8]
	mov	rsi, qword ptr [rbp - 0x1170]
	mov	rsp, rsp
	call	md5_process_bytes
	lea	rdx, [rbp - 0x1150]
	mov	rsi, qword ptr [rbp - 0xfd8]
	add	rsi, qword ptr [rbp - 0x1170]
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x1180]
	add	rdx, 0x9c
	mov	qword ptr [rbp - 0x11f0], rdi
	nop	
	mov	rdi, rsi
	nop	
	mov	rsi, qword ptr [rbp - 0x11f0]
	lea	rdi, [rdi]
	call	md5_process_bytes
	cmp	dword ptr [rbp - 0x24], 0
	jne	.label_710
	nop	
	mov	rdi, qword ptr [rbp - 0xfd8]
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0xfd8]
	add	rax, qword ptr [rbp - 0x1170]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x1170]
	mov	rsp, rsp
	cmp	rcx, qword ptr [rbp - 0x1180]
	mov	qword ptr [rbp - 0x11f8], rdi
	mov	qword ptr [rbp - 0x1200], rax
	mov	rbp, rbp
	jae	.label_698
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x1170]
	nop	
	mov	qword ptr [rbp - 0x1208], rax
	nop	
	jmp	.label_696
.label_698:
	mov	rax, qword ptr [rbp - 0x1180]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x1208], rax
.label_696:
	mov	rax, qword ptr [rbp - 0x1208]
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x11f8]
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x1200]
	nop	
	mov	rdx, rax
	mov	rsp, rsp
	call	memcmp
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x24], eax
	mov	rsp, rsp
	cmp	dword ptr [rbp - 0x24], 0
	jne	.label_715
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x1170]
	mov	rsp, rsp
	cmp	rax, qword ptr [rbp - 0x1180]
	mov	rbp, rbp
	seta	cl
	and	cl, 1
	movzx	edx, cl
	mov	rax, qword ptr [rbp - 0x1170]
	nop	
	cmp	rax, qword ptr [rbp - 0x1180]
	setb	cl
	and	cl, 1
	mov	rbp, rbp
	movzx	esi, cl
	sub	edx, esi
	mov	dword ptr [rbp - 0x24], edx
.label_715:
	mov	rsp, rsp
	jmp	.label_710
.label_710:
	mov	rbp, rbp
	jmp	.label_708
.label_703:
	jmp	.label_700
.label_700:
	mov	rbp, rbp
	lea	rdx, [rbp - 0x1150]
	nop	
	mov	rdi, qword ptr [rbp - 8]
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x10]
	nop	
	call	md5_process_bytes
	lea	rdx, [rbp - 0x1010]
	nop	
	lea	rdi, [rbp - 0x1150]
	mov	rsi, rdx
	nop	
	call	md5_finish_ctx
	lea	rdx, [rbp - 0x1150]
	mov	rdi, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x20]
	add	rdx, 0x9c
	mov	qword ptr [rbp - 0x1210], rax
	mov	rsp, rsp
	call	md5_process_bytes
	mov	rsp, rsp
	lea	rax, [rbp - 0x1010]
	mov	rsp, rsp
	lea	rdx, [rbp - 0x1150]
	mov	rsp, rsp
	add	rdx, 0x9c
	add	rax, 0x10
	mov	rdi, rdx
	lea	rdi, [rdi]
	mov	rsi, rax
	lea	rsi, [rsi]
	call	md5_finish_ctx
	lea	rsi, [rsi]
	lea	rdx, [rbp - 0x1010]
	mov	rsi, rdx
	add	rdx, 0x10
	mov	ecx, 0x10
	mov	edi, ecx
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x1218], rdi
	lea	rsi, [rsi]
	mov	rdi, rsi
	mov	rsi, rdx
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x1218]
	nop	
	mov	qword ptr [rbp - 0x1220], rax
	lea	rsi, [rsi]
	call	memcmp
	mov	dword ptr [rbp - 0x1184], eax
	cmp	dword ptr [rbp - 0x1184], 0
	jne	.label_702
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x24], 0
	nop	
	jne	.label_706
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rbp - 0x20]
	nop	
	mov	qword ptr [rbp - 0x1228], rdi
	mov	qword ptr [rbp - 0x1230], rsi
	jae	.label_709
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x1238], rax
	lea	rdi, [rdi]
	jmp	.label_716
.label_709:
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x1238], rax
.label_716:
	mov	rax, qword ptr [rbp - 0x1238]
	mov	rdi, qword ptr [rbp - 0x1228]
	mov	rsi, qword ptr [rbp - 0x1230]
	mov	rdx, rax
	nop	
	call	memcmp
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x24], eax
	cmp	dword ptr [rbp - 0x24], 0
	lea	rdi, [rdi]
	jne	.label_704
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rbp - 0x20]
	seta	cl
	nop	
	and	cl, 1
	lea	rsi, [rsi]
	movzx	edx, cl
	mov	rax, qword ptr [rbp - 0x10]
	nop	
	cmp	rax, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	setb	cl
	nop	
	and	cl, 1
	mov	rbp, rbp
	movzx	esi, cl
	sub	edx, esi
	mov	dword ptr [rbp - 0x24], edx
.label_704:
	jmp	.label_706
.label_706:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x24]
	mov	dword ptr [rbp - 0x1184], eax
.label_702:
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0xfe8]
	call	free
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x1184]
	add	rsp, 0x1240
	lea	rdi, [rdi]
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40c720

	.globl nan_compare
	.type nan_compare, @function
nan_compare:
	mov	rbp, rbp
	push	rbp
	lea	rdi, [rdi]
	mov	rbp, rsp
	sub	rsp, 0x60
	lea	rax, [rbp - 0x30]
	lea	rcx, [rbp - 0x20]
	mov	qword ptr [rbp - 8], rdi
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsp, rsp
	xorps	xmm0, xmm0
	movaps	xmmword ptr [rbp - 0x20], xmm0
	mov	rdi, qword ptr [rbp - 8]
	xor	edx, edx
	mov	esi, edx
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x38], rsi
	mov	qword ptr [rbp - 0x40], rcx
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x48], rax
	mov	rsp, rsp
	movaps	xmmword ptr [rbp - 0x60], xmm0
	mov	rbp, rbp
	call	strtold
	fstp	xword ptr [rbp - 0x20]
	movaps	xmm0, xmmword ptr [rbp - 0x60]
	mov	rsp, rsp
	movaps	xmmword ptr [rbp - 0x30], xmm0
	nop	
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x38]
	call	strtold
	lea	rdi, [rdi]
	fstp	xword ptr [rbp - 0x30]
	mov	rax, qword ptr [rbp - 0x40]
	mov	rcx, qword ptr [rbp - 0x48]
	mov	rsp, rsp
	mov	edx, 0x10
	mov	rdi, rax
	mov	rsp, rsp
	mov	rsi, rcx
	mov	rbp, rbp
	call	memcmp
	nop	
	add	rsp, 0x60
	lea	rdi, [rdi]
	pop	rbp
	mov	rbp, rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40c7d0

	.globl find_unit_order
	.type find_unit_order, @function
find_unit_order:
	push	rbp
	mov	rbp, rsp
	mov	rsp, rsp
	sub	rsp, 0x30
	mov	rbp, rbp
	lea	rax, [rbp - 0x20]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x10], rdi
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x10]
	movsx	ecx, byte ptr [rdi]
	lea	rdi, [rdi]
	cmp	ecx, 0x2d
	sete	dl
	and	dl, 1
	mov	byte ptr [rbp - 0x11], dl
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x10]
	mov	dl, byte ptr [rbp - 0x11]
	lea	rsi, [rsi]
	and	dl, 1
	nop	
	movzx	ecx, dl
	lea	rsi, [rsi]
	movsxd	rsi, ecx
	lea	rsi, [rsi]
	add	rdi, rsi
	mov	qword ptr [rbp - 0x20], rdi
	mov	rbp, rbp
	mov	rdi, rax
	mov	rbp, rbp
	call	traverse_raw_number
	mov	ecx, 0x30
	mov	byte ptr [rbp - 0x21], al
	movzx	r8d, byte ptr [rbp - 0x21]
	lea	rsi, [rsi]
	cmp	ecx, r8d
	jge	.label_721
	mov	rax, qword ptr [rbp - 0x20]
	mov	cl, byte ptr [rax]
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x22], cl
	nop	
	movzx	edx, byte ptr [rbp - 0x22]
	mov	eax, edx
	mov	rsp, rsp
	movsx	edx,  byte ptr [byte ptr [+ (rax * 1) + unit_order]]
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x28], edx
	test	byte ptr [rbp - 0x11], 1
	je	.label_724
	xor	eax, eax
	sub	eax, dword ptr [rbp - 0x28]
	mov	dword ptr [rbp - 0x2c], eax
	lea	rdi, [rdi]
	jmp	.label_723
.label_724:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x28]
	mov	dword ptr [rbp - 0x2c], eax
.label_723:
	mov	eax, dword ptr [rbp - 0x2c]
	mov	dword ptr [rbp - 4], eax
	jmp	.label_722
.label_721:
	mov	dword ptr [rbp - 4], 0
.label_722:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40c8c0

	.globl traverse_raw_number
	.type traverse_raw_number, @function
traverse_raw_number:
	lea	rdi, [rdi]
	push	rbp
	nop	
	mov	rbp, rsp
	mov	qword ptr [rbp - 0x10], rdi
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rdi]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x18], rdi
	mov	byte ptr [rbp - 0x1a], 0
	mov	byte ptr [rbp - 0x1b], 0
.label_728:
	mov	rax, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 0x18], rcx
	mov	dl, byte ptr [rax]
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x19], dl
	movzx	esi, dl
	sub	esi, 0x30
	cmp	esi, 9
	ja	.label_730
	movzx	eax, byte ptr [rbp - 0x1a]
	movzx	ecx, byte ptr [rbp - 0x19]
	cmp	eax, ecx
	mov	rsp, rsp
	jge	.label_733
	mov	al, byte ptr [rbp - 0x19]
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x1a], al
.label_733:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x18]
	movsx	ecx, byte ptr [rax]
	cmp	ecx,  dword ptr [dword ptr [thousands_sep]]
	mov	rbp, rbp
	sete	dl
	and	dl, 1
	mov	byte ptr [rbp - 0x1b], dl
	mov	rsp, rsp
	test	byte ptr [rbp - 0x1b], 1
	je	.label_731
	mov	rax, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	add	rax, 1
	mov	qword ptr [rbp - 0x18], rax
.label_731:
	jmp	.label_728
.label_730:
	test	byte ptr [rbp - 0x1b], 1
	je	.label_726
	mov	rax, qword ptr [rbp - 0x18]
	nop	
	add	rax, -2
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	qword ptr [rcx], rax
	lea	rdi, [rdi]
	mov	dl, byte ptr [rbp - 0x1a]
	nop	
	mov	byte ptr [rbp - 1], dl
	jmp	.label_734
.label_726:
	lea	rdi, [rdi]
	movzx	eax, byte ptr [rbp - 0x19]
	cmp	eax,  dword ptr [dword ptr [decimal_point]]
	jne	.label_732
	jmp	.label_729
.label_729:
	nop	
	mov	rax, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	mov	rcx, rax
	lea	rdi, [rdi]
	add	rcx, 1
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x18], rcx
	lea	rsi, [rsi]
	mov	dl, byte ptr [rax]
	nop	
	mov	byte ptr [rbp - 0x19], dl
	movzx	esi, dl
	lea	rsi, [rsi]
	sub	esi, 0x30
	nop	
	cmp	esi, 9
	lea	rsi, [rsi]
	ja	.label_725
	mov	rbp, rbp
	movzx	eax, byte ptr [rbp - 0x1a]
	lea	rsi, [rsi]
	movzx	ecx, byte ptr [rbp - 0x19]
	cmp	eax, ecx
	jge	.label_727
	mov	al, byte ptr [rbp - 0x19]
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x1a], al
.label_727:
	nop	
	jmp	.label_729
.label_725:
	jmp	.label_732
.label_732:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, -1
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rcx], rax
	mov	dl, byte ptr [rbp - 0x1a]
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 1], dl
.label_734:
	movzx	eax, byte ptr [rbp - 1]
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40ca40

	.globl xstrxfrm
	.type xstrxfrm, @function
xstrxfrm:
	lea	rsi, [rsi]
	push	rbp
	lea	rsi, [rsi]
	mov	rbp, rsp
	nop	
	sub	rsp, 0x30
	mov	rsp, rsp
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	call	__errno_location
	mov	dword ptr [rax], 0
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	call	strxfrm
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x20], rax
	mov	rsp, rsp
	call	__errno_location
	mov	rbp, rbp
	cmp	dword ptr [rax], 0
	nop	
	je	.label_735
	lea	rsi, [rsi]
	call	__errno_location
	lea	rsi, [rsi]
	movabs	rdi, OFFSET FLAT:.str.160
	lea	rsi, [rsi]
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0x24], esi
	call	gettext
	xor	edi, edi
	mov	rsp, rsp
	mov	esi, dword ptr [rbp - 0x24]
	mov	rsp, rsp
	mov	rdx, rax
	lea	rdi, [rdi]
	mov	al, 0
	mov	rbp, rbp
	call	error
	lea	rdi, [rdi]
	movabs	rdi, OFFSET FLAT:.str.161
	mov	rbp, rbp
	call	gettext
	lea	rdi, [rdi]
	xor	esi, esi
	lea	rsi, [rsi]
	mov	edi, esi
	mov	rdx, rax
	mov	al, 0
	call	error
	movabs	rdi, OFFSET FLAT:.str.162
	call	gettext
	lea	rsi, [rsi]
	xor	edi, edi
	mov	esi, 8
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x30], rax
	lea	rsi, [rsi]
	call	quotearg_n_style
	mov	edi, 2
	nop	
	xor	esi, esi
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x30]
	mov	rbp, rbp
	mov	rcx, rax
	mov	al, 0
	lea	rsi, [rsi]
	call	error
.label_735:
	mov	rax, qword ptr [rbp - 0x20]
	nop	
	add	rsp, 0x30
	lea	rsi, [rsi]
	pop	rbp
	lea	rdi, [rdi]
	ret	
	.section	.text
	.align	16
	#Procedure 0x40cb60

	.globl debug_line
	.type debug_line, @function
debug_line:
	mov	rbp, rbp
	push	rbp
	mov	rbp, rsp
	lea	rsi, [rsi]
	sub	rsp, 0x20
	mov	rsp, rsp
	mov	qword ptr [rbp - 8], rdi
	lea	rsi, [rsi]
	mov	rdi,  qword ptr [word ptr [keylist]]
	mov	qword ptr [rbp - 0x10], rdi
.label_736:
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	call	debug_key
	lea	rdi, [rdi]
	xor	eax, eax
	lea	rsi, [rsi]
	mov	cl, al
	cmp	qword ptr [rbp - 0x10], 0
	mov	byte ptr [rbp - 0x11], cl
	lea	rsi, [rsi]
	je	.label_738
	lea	rsi, [rsi]
	mov	al, 1
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx + 0x40]
	mov	qword ptr [rbp - 0x10], rcx
	lea	rdi, [rdi]
	cmp	rcx, 0
	mov	byte ptr [rbp - 0x12], al
	lea	rdi, [rdi]
	jne	.label_739
	lea	rdi, [rdi]
	mov	al, 1
	lea	rsi, [rsi]
	test	byte ptr [byte ptr [unique]],  1
	mov	byte ptr [rbp - 0x13], al
	lea	rsi, [rsi]
	jne	.label_737
	mov	al,  byte ptr [byte ptr [stable]]
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x13], al
.label_737:
	mov	rbp, rbp
	mov	al, byte ptr [rbp - 0x13]
	xor	al, 0xff
	mov	byte ptr [rbp - 0x12], al
.label_739:
	mov	al, byte ptr [rbp - 0x12]
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x11], al
.label_738:
	mov	al, byte ptr [rbp - 0x11]
	test	al, 1
	nop	
	jne	.label_736
	add	rsp, 0x20
	pop	rbp
	mov	rsp, rsp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40cc30

	.globl debug_key
	.type debug_key, @function
debug_key:
	push	rbp
	mov	rbp, rsp
	mov	rbp, rbp
	sub	rsp, 0xa0
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rsi]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x18], rsi
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x18]
	nop	
	mov	qword ptr [rbp - 0x20], rsi
	nop	
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 8]
	add	rsi, qword ptr [rdi + 8]
	add	rsi, -1
	nop	
	mov	qword ptr [rbp - 0x28], rsi
	cmp	qword ptr [rbp - 0x10], 0
	mov	rsp, rsp
	je	.label_747
	mov	rax, qword ptr [rbp - 0x10]
	cmp	qword ptr [rax], -1
	lea	rsi, [rsi]
	je	.label_741
	mov	rdi, qword ptr [rbp - 8]
	nop	
	mov	rsi, qword ptr [rbp - 0x10]
	call	begfield
	mov	qword ptr [rbp - 0x20], rax
.label_741:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	cmp	qword ptr [rax + 0x10], -1
	je	.label_754
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	call	limfield
	mov	qword ptr [rbp - 0x28], rax
.label_754:
	mov	rax, qword ptr [rbp - 0x10]
	nop	
	test	byte ptr [rax + 0x30], 1
	nop	
	je	.label_753
	mov	rax, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	cmp	qword ptr [rax], -1
	je	.label_744
.label_753:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x10]
	test	byte ptr [rax + 0x36], 1
	mov	rsp, rsp
	jne	.label_744
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	call	key_numeric
	lea	rdi, [rdi]
	test	al, 1
	lea	rsi, [rsi]
	jne	.label_744
	jmp	.label_756
.label_744:
	mov	rax, qword ptr [rbp - 0x28]
	mov	cl, byte ptr [rax]
	mov	byte ptr [rbp - 0x29], cl
	mov	rax, qword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	mov	byte ptr [rax], 0
.label_757:
	mov	rax, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	movsx	edi, byte ptr [rax]
	nop	
	call	to_uchar
	movzx	edi, al
	mov	ecx, edi
	lea	rsi, [rsi]
	test	byte ptr [byte ptr [+ (rcx * 1) + blanks]],  1
	mov	rsp, rsp
	je	.label_751
	mov	rax, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	add	rax, 1
	mov	qword ptr [rbp - 0x20], rax
	jmp	.label_757
.label_751:
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x38], rax
	mov	rax, qword ptr [rbp - 0x28]
	cmp	rax, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	jae	.label_759
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x28]
	nop	
	mov	qword ptr [rbp - 0x38], rax
	nop	
	jmp	.label_755
.label_759:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x10]
	test	byte ptr [rax + 0x36], 1
	je	.label_745
	lea	rsi, [rbp - 0x38]
	nop	
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	call	getmonth
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x74], eax
	jmp	.label_749
.label_745:
	mov	rax, qword ptr [rbp - 0x10]
	test	byte ptr [rax + 0x34], 1
	je	.label_752
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	lea	rsi, [rbp - 0x38]
	lea	rdi, [rdi]
	call	strtold
	lea	rsi, [rsi]
	fstp	xword ptr [rbp - 0x50]
	jmp	.label_750
.label_752:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	test	byte ptr [rax + 0x32], 1
	jne	.label_740
	mov	rax, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	test	byte ptr [rax + 0x35], 1
	je	.label_743
.label_740:
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x20]
	nop	
	mov	rsi, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	cmp	rsi, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x80], rdx
	mov	byte ptr [rbp - 0x81], cl
	lea	rsi, [rsi]
	jae	.label_758
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	movsx	ecx, byte ptr [rax]
	lea	rdi, [rdi]
	cmp	ecx, 0x2d
	sete	dl
	mov	byte ptr [rbp - 0x81], dl
.label_758:
	mov	al, byte ptr [rbp - 0x81]
	mov	rbp, rbp
	lea	rdi, [rbp - 0x58]
	and	al, 1
	movzx	ecx, al
	mov	rsp, rsp
	movsxd	rdx, ecx
	nop	
	mov	rsi, qword ptr [rbp - 0x80]
	add	rsi, rdx
	mov	qword ptr [rbp - 0x58], rsi
	call	traverse_raw_number
	mov	ecx, 0x30
	mov	byte ptr [rbp - 0x59], al
	movzx	r8d, byte ptr [rbp - 0x59]
	lea	rsi, [rsi]
	cmp	ecx, r8d
	jg	.label_742
	mov	rsp, rsp
	xor	eax, eax
	mov	cl, al
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x58]
	mov	rbp, rbp
	mov	sil, byte ptr [rdx]
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x5a], sil
	mov	rdx, qword ptr [rbp - 0x58]
	mov	rdi, qword ptr [rbp - 0x10]
	nop	
	test	byte ptr [rdi + 0x35], 1
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x90], rdx
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x91], cl
	je	.label_746
	movzx	eax, byte ptr [rbp - 0x5a]
	mov	ecx, eax
	lea	rdi, [rdi]
	movsx	eax,  byte ptr [byte ptr [+ (rcx * 1) + unit_order]]
	cmp	eax, 0
	mov	rsp, rsp
	setne	dl
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x91], dl
.label_746:
	lea	rdi, [rdi]
	mov	al, byte ptr [rbp - 0x91]
	nop	
	and	al, 1
	mov	rbp, rbp
	movzx	ecx, al
	lea	rsi, [rsi]
	movsxd	rdx, ecx
	mov	rsi, qword ptr [rbp - 0x90]
	nop	
	add	rsi, rdx
	mov	qword ptr [rbp - 0x38], rsi
.label_742:
	lea	rdi, [rdi]
	jmp	.label_748
.label_743:
	mov	rax, qword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x38], rax
.label_748:
	lea	rdi, [rdi]
	jmp	.label_750
.label_750:
	mov	rsp, rsp
	jmp	.label_749
.label_749:
	jmp	.label_755
.label_755:
	lea	rdi, [rdi]
	mov	al, byte ptr [rbp - 0x29]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	byte ptr [rcx], al
	mov	rcx, qword ptr [rbp - 0x38]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x28], rcx
.label_756:
	mov	rbp, rbp
	jmp	.label_747
.label_747:
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	call	debug_width
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x68], rax
	mov	rdi, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x28]
	call	debug_width
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x70], rax
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x68]
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x70]
	lea	rdi, [rdi]
	call	mark_key
	mov	rbp, rbp
	add	rsp, 0xa0
	lea	rdi, [rdi]
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40cfe0

	.globl debug_width
	.type debug_width, @function
debug_width:
	nop	
	push	rbp
	mov	rbp, rbp
	mov	rbp, rsp
	mov	rsp, rsp
	sub	rsp, 0x20
	nop	
	xor	edx, edx
	mov	rbp, rbp
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 8]
	nop	
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rbp - 8]
	sub	rsi, rax
	lea	rsi, [rsi]
	call	mbsnwidth
	movsxd	rsi, eax
	mov	qword ptr [rbp - 0x18], rsi
.label_760:
	mov	rax, qword ptr [rbp - 8]
	nop	
	cmp	rax, qword ptr [rbp - 0x10]
	jae	.label_761
	mov	rax, qword ptr [rbp - 8]
	nop	
	mov	rcx, rax
	mov	rbp, rbp
	add	rcx, 1
	mov	rsp, rsp
	mov	qword ptr [rbp - 8], rcx
	mov	rsp, rsp
	movsx	edx, byte ptr [rax]
	cmp	edx, 9
	mov	rbp, rbp
	sete	sil
	lea	rdi, [rdi]
	and	sil, 1
	mov	rsp, rsp
	movzx	edx, sil
	movsxd	rax, edx
	mov	rbp, rbp
	add	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x18], rax
	mov	rbp, rbp
	jmp	.label_760
.label_761:
	mov	rax, qword ptr [rbp - 0x18]
	add	rsp, 0x20
	pop	rbp
	nop	
	ret	
	.section	.text
	.align	16
	#Procedure 0x40d090

	.globl mark_key
	.type mark_key, @function
mark_key:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	rsp, rsp
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
.label_766:
	mov	rax, qword ptr [rbp - 8]
	mov	rbp, rbp
	mov	rcx, rax
	add	rcx, -1
	mov	qword ptr [rbp - 8], rcx
	lea	rsi, [rsi]
	cmp	rax, 0
	lea	rsi, [rsi]
	je	.label_762
	mov	edi, 0x20
	call	putchar_unlocked
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x14], eax
	mov	rbp, rbp
	jmp	.label_766
.label_762:
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x10], 0
	jne	.label_765
	movabs	rdi, OFFSET FLAT:.str.164
	lea	rdi, [rdi]
	call	gettext
	mov	rdi, rax
	nop	
	mov	al, 0
	nop	
	call	printf
	nop	
	mov	dword ptr [rbp - 0x18], eax
	mov	rsp, rsp
	jmp	.label_763
.label_765:
	jmp	.label_764
.label_764:
	lea	rsi, [rsi]
	mov	edi, 0x5f
	lea	rsi, [rsi]
	call	putchar_unlocked
	mov	dword ptr [rbp - 0x1c], eax
	mov	rax, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	add	rax, -1
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x10], rax
	cmp	rax, 0
	lea	rdi, [rdi]
	jne	.label_764
	mov	rsp, rsp
	mov	edi, 0xa
	call	putchar_unlocked
	nop	
	mov	dword ptr [rbp - 0x20], eax
.label_763:
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40d170

	.globl move_fd
	.type move_fd, @function
move_fd:
	push	rbp
	lea	rsi, [rsi]
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	dword ptr [rbp - 4], edi
	mov	dword ptr [rbp - 8], esi
	mov	rbp, rbp
	mov	esi, dword ptr [rbp - 4]
	cmp	esi, dword ptr [rbp - 8]
	mov	rbp, rbp
	je	.label_767
	nop	
	mov	edi, dword ptr [rbp - 4]
	nop	
	mov	esi, dword ptr [rbp - 8]
	call	dup2
	nop	
	mov	edi, dword ptr [rbp - 4]
	mov	dword ptr [rbp - 0xc], eax
	lea	rsi, [rsi]
	call	close
	mov	dword ptr [rbp - 0x10], eax
.label_767:
	add	rsp, 0x10
	lea	rdi, [rdi]
	pop	rbp
	lea	rsi, [rsi]
	ret	
	.section	.text
	.align	16
	#Procedure 0x40d1c0

	.globl create_temp
	.type create_temp, @function
create_temp:
	lea	rdi, [rdi]
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	xor	esi, esi
	mov	qword ptr [rbp - 8], rdi
	nop	
	mov	rdi, qword ptr [rbp - 8]
	call	maybe_create_temp
	nop	
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40d1f0

	.globl mergefiles
	.type mergefiles, @function
mergefiles:
	lea	rdi, [rdi]
	push	rbp
	mov	rbp, rsp
	nop	
	sub	rsp, 0x40
	lea	rsi, [rsi]
	lea	rax, [rbp - 0x30]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x18], rdx
	mov	qword ptr [rbp - 0x20], rcx
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x28], r8
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rdx, rax
	call	open_input_files
	mov	qword ptr [rbp - 0x38], rax
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x38]
	lea	rdi, [rdi]
	cmp	rax, qword ptr [rbp - 0x18]
	jae	.label_768
	nop	
	cmp	qword ptr [rbp - 0x38], 2
	jae	.label_768
	movabs	rdi, OFFSET FLAT:.str.142
	call	gettext
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x38]
	shl	rdi, 4
	add	rdi, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rdi]
	mov	rdi, rax
	call	sort_die
.label_768:
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	mov	r8, qword ptr [rbp - 0x28]
	mov	rbp, rbp
	mov	r9, qword ptr [rbp - 0x30]
	lea	rsi, [rsi]
	call	mergefps
	mov	rax, qword ptr [rbp - 0x38]
	add	rsp, 0x40
	lea	rdi, [rdi]
	pop	rbp
	mov	rsp, rsp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40d2c0

	.globl avoid_trashing_input
	.type avoid_trashing_input, @function
avoid_trashing_input:
	nop	
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0xf0
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	qword ptr [rbp - 0x20], rcx
	mov	qword ptr [rbp - 0x28], 0
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x10]
	nop	
	mov	qword ptr [rbp - 0x30], rcx
.label_769:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x30]
	cmp	rax, qword ptr [rbp - 0x18]
	jae	.label_774
	mov	rax, qword ptr [rbp - 0x30]
	mov	rbp, rbp
	shl	rax, 4
	lea	rsi, [rsi]
	add	rax, qword ptr [rbp - 8]
	nop	
	mov	rdi, qword ptr [rax]
	mov	ecx, OFFSET FLAT:.str.54
	mov	rsp, rsp
	mov	esi, ecx
	call	strcmp
	cmp	eax, 0
	sete	dl
	mov	rsp, rsp
	and	dl, 1
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x31], dl
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x20], 0
	mov	rsp, rsp
	je	.label_777
	mov	rdi, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x30]
	shl	rax, 4
	lea	rsi, [rsi]
	add	rax, qword ptr [rbp - 8]
	nop	
	mov	rsi, qword ptr [rax]
	call	strcmp
	cmp	eax, 0
	jne	.label_777
	test	byte ptr [rbp - 0x31], 1
	jne	.label_777
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x32], 1
	nop	
	jmp	.label_780
.label_777:
	call	get_outstatus
	mov	qword ptr [rbp - 0xd0], rax
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0xd0], 0
	mov	rbp, rbp
	jne	.label_772
	jmp	.label_774
.label_772:
	test	byte ptr [rbp - 0x31], 1
	nop	
	je	.label_779
	xor	edi, edi
	lea	rdi, [rdi]
	lea	rsi, [rbp - 0xc8]
	mov	rsp, rsp
	call	__fstat
	mov	dword ptr [rbp - 0xdc], eax
	jmp	.label_771
.label_779:
	lea	rdi, [rdi]
	lea	rsi, [rbp - 0xc8]
	mov	rax, qword ptr [rbp - 0x30]
	mov	rsp, rsp
	shl	rax, 4
	nop	
	add	rax, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rax]
	lea	rsi, [rsi]
	call	stat
	mov	dword ptr [rbp - 0xdc], eax
.label_771:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0xdc]
	nop	
	xor	ecx, ecx
	mov	dl, cl
	mov	rsp, rsp
	cmp	eax, 0
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0xdd], dl
	jne	.label_770
	mov	rsp, rsp
	xor	eax, eax
	mov	cl, al
	nop	
	mov	rdx, qword ptr [rbp - 0xc0]
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0xd0]
	lea	rsi, [rsi]
	cmp	rdx, qword ptr [rsi + 8]
	mov	byte ptr [rbp - 0xde], cl
	nop	
	jne	.label_778
	nop	
	mov	rax, qword ptr [rbp - 0xc8]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0xd0]
	cmp	rax, qword ptr [rcx]
	mov	rsp, rsp
	sete	dl
	mov	rsp, rsp
	mov	byte ptr [rbp - 0xde], dl
.label_778:
	mov	al, byte ptr [rbp - 0xde]
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0xdd], al
.label_770:
	mov	al, byte ptr [rbp - 0xdd]
	and	al, 1
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x32], al
.label_780:
	lea	rdi, [rdi]
	test	byte ptr [rbp - 0x32], 1
	nop	
	je	.label_775
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x28], 0
	jne	.label_776
	lea	rdi, [rbp - 0xd8]
	call	create_temp
	mov	rsp, rsp
	xor	ecx, ecx
	mov	esi, ecx
	nop	
	mov	ecx, 1
	nop	
	mov	edx, ecx
	nop	
	mov	qword ptr [rbp - 0x28], rax
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x30]
	lea	rsi, [rsi]
	shl	rax, 4
	add	rax, qword ptr [rbp - 8]
	mov	rcx, qword ptr [rbp - 0xd8]
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	add	rdi, 0xd
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0xe8], rdi
	mov	rdi, rax
	mov	r8, qword ptr [rbp - 0xe8]
	lea	rsi, [rsi]
	call	mergefiles
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0xf0], rax
.label_776:
	mov	rax, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	add	rax, 0xd
	mov	rcx, qword ptr [rbp - 0x30]
	shl	rcx, 4
	add	rcx, qword ptr [rbp - 8]
	mov	qword ptr [rcx], rax
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x30]
	shl	rcx, 4
	add	rcx, qword ptr [rbp - 8]
	mov	qword ptr [rcx + 8], rax
.label_775:
	jmp	.label_773
.label_773:
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, 1
	mov	qword ptr [rbp - 0x30], rax
	mov	rsp, rsp
	jmp	.label_769
.label_774:
	mov	rbp, rbp
	add	rsp, 0xf0
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40d580

	.globl open_input_files
	.type open_input_files, @function
open_input_files:
	push	rbp
	mov	rsp, rsp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	eax, 8
	mov	ecx, eax
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x18], rdx
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	rsi, rcx
	call	xnmalloc
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	qword ptr [rcx], rax
	mov	qword ptr [rbp - 0x20], rax
	mov	dword ptr [rbp - 0x24], 0
.label_783:
	movsxd	rax, dword ptr [rbp - 0x24]
	nop	
	cmp	rax, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	jae	.label_781
	movsxd	rax, dword ptr [rbp - 0x24]
	mov	rsp, rsp
	shl	rax, 4
	add	rax, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	cmp	qword ptr [rax + 8], 0
	je	.label_784
	lea	rdi, [rdi]
	movsxd	rax, dword ptr [rbp - 0x24]
	lea	rsi, [rsi]
	shl	rax, 4
	add	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax + 8]
	lea	rsi, [rsi]
	movsx	ecx, byte ptr [rax + 0xc]
	cmp	ecx, 0
	mov	rbp, rbp
	je	.label_784
	lea	rdi, [rdi]
	movsxd	rax, dword ptr [rbp - 0x24]
	mov	rsp, rsp
	shl	rax, 4
	add	rax, qword ptr [rbp - 8]
	nop	
	mov	rdi, qword ptr [rax + 8]
	call	open_temp
	mov	qword ptr [rbp - 0x30], rax
	mov	rsp, rsp
	jmp	.label_786
.label_784:
	lea	rdi, [rdi]
	movabs	rsi, OFFSET FLAT:.str.52
	mov	rsp, rsp
	movsxd	rax, dword ptr [rbp - 0x24]
	shl	rax, 4
	add	rax, qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	rdi, qword ptr [rax]
	mov	rbp, rbp
	call	stream_open
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x30], rax
.label_786:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x30]
	lea	rdi, [rdi]
	movsxd	rcx, dword ptr [rbp - 0x24]
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	mov	qword ptr [rdx + rcx*8], rax
	movsxd	rax, dword ptr [rbp - 0x24]
	nop	
	mov	rcx, qword ptr [rbp - 0x20]
	cmp	qword ptr [rcx + rax*8], 0
	lea	rdi, [rdi]
	jne	.label_785
	jmp	.label_781
.label_785:
	mov	rbp, rbp
	jmp	.label_782
.label_782:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x24]
	add	eax, 1
	mov	dword ptr [rbp - 0x24], eax
	jmp	.label_783
.label_781:
	lea	rdi, [rdi]
	movsxd	rax, dword ptr [rbp - 0x24]
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40d6e0

	.globl mergefps
	.type mergefps, @function
mergefps:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x100
	lea	rsi, [rsi]
	mov	eax, 0x38
	mov	rsp, rsp
	mov	r10d, eax
	mov	qword ptr [rbp - 8], rdi
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x20], rcx
	mov	qword ptr [rbp - 0x28], r8
	mov	qword ptr [rbp - 0x30], r9
	mov	rdi, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	mov	rsi, r10
	mov	rbp, rbp
	call	xnmalloc
	lea	rsi, [rsi]
	mov	r11d, 8
	lea	rdi, [rdi]
	mov	esi, r11d
	nop	
	mov	qword ptr [rbp - 0x38], rax
	mov	qword ptr [rbp - 0x60], 0
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x68], 0
	mov	rdi, qword ptr [rbp - 0x18]
	call	xnmalloc
	mov	rsp, rsp
	mov	r11d, 8
	mov	rbp, rbp
	mov	esi, r11d
	mov	qword ptr [rbp - 0x70], rax
	mov	rdi, qword ptr [rbp - 0x18]
	call	xnmalloc
	mov	r11d, 8
	mov	esi, r11d
	mov	qword ptr [rbp - 0x78], rax
	nop	
	mov	rdi, qword ptr [rbp - 0x18]
	call	xnmalloc
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x80], rax
	nop	
	mov	rax,  qword ptr [word ptr [keylist]]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0xa0], rax
	mov	qword ptr [rbp - 0x58], 0
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x88], 0
.label_816:
	nop	
	mov	rax, qword ptr [rbp - 0x88]
	cmp	rax, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	jae	.label_822
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x88]
	imul	rax, rax, 0x38
	lea	rsi, [rsi]
	add	rax, qword ptr [rbp - 0x38]
	mov	rcx,  qword ptr [word ptr [merge_buffer_size]]
	mov	rdx,  qword ptr [word ptr [sort_size]]
	mov	qword ptr [rbp - 0xf0], rax
	mov	rax, rdx
	xor	esi, esi
	mov	edx, esi
	div	qword ptr [rbp - 0x18]
	mov	rsp, rsp
	cmp	rcx, rax
	jbe	.label_826
	mov	rax,  qword ptr [word ptr [merge_buffer_size]]
	mov	qword ptr [rbp - 0xf8], rax
	mov	rbp, rbp
	jmp	.label_795
.label_826:
	mov	rax,  qword ptr [word ptr [sort_size]]
	mov	rbp, rbp
	xor	ecx, ecx
	mov	edx, ecx
	nop	
	div	qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0xf8], rax
.label_795:
	mov	rax, qword ptr [rbp - 0xf8]
	lea	rsi, [rsi]
	mov	ecx, 0x20
	lea	rsi, [rsi]
	mov	esi, ecx
	mov	rdi, qword ptr [rbp - 0xf0]
	nop	
	mov	rdx, rax
	lea	rsi, [rsi]
	call	initbuf
	mov	rax, qword ptr [rbp - 0x88]
	imul	rax, rax, 0x38
	lea	rdi, [rdi]
	add	rax, qword ptr [rbp - 0x38]
	mov	rdx, qword ptr [rbp - 0x88]
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x30]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rsi + rdx*8]
	mov	rdx, qword ptr [rbp - 0x88]
	mov	rbp, rbp
	shl	rdx, 4
	add	rdx, qword ptr [rbp - 8]
	mov	rbp, rbp
	mov	rdx, qword ptr [rdx]
	mov	rdi, rax
	call	fillbuf
	test	al, 1
	mov	rbp, rbp
	jne	.label_821
	jmp	.label_823
.label_821:
	mov	rax, qword ptr [rbp - 0x88]
	mov	rsp, rsp
	imul	rax, rax, 0x38
	lea	rdi, [rdi]
	add	rax, qword ptr [rbp - 0x38]
	mov	rdi, rax
	call	buffer_linelim
	xor	ecx, ecx
	mov	edi, ecx
	nop	
	mov	qword ptr [rbp - 0xa8], rax
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0xa8]
	nop	
	add	rax, -0x20
	nop	
	mov	rdx, qword ptr [rbp - 0x88]
	mov	rsi, qword ptr [rbp - 0x70]
	mov	qword ptr [rsi + rdx*8], rax
	mov	rax, qword ptr [rbp - 0xa8]
	mov	rdx, qword ptr [rbp - 0x88]
	imul	rdx, rdx, 0x38
	add	rdx, qword ptr [rbp - 0x38]
	sub	rdi, qword ptr [rdx + 0x10]
	shl	rdi, 5
	add	rax, rdi
	mov	rdx, qword ptr [rbp - 0x88]
	mov	rsi, qword ptr [rbp - 0x78]
	mov	qword ptr [rsi + rdx*8], rax
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x88]
	add	rax, 1
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x88], rax
	jmp	.label_814
.label_823:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x88]
	mov	rcx, qword ptr [rbp - 0x30]
	mov	rdi, qword ptr [rcx + rax*8]
	mov	rax, qword ptr [rbp - 0x88]
	mov	rbp, rbp
	shl	rax, 4
	add	rax, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rax]
	lea	rdi, [rdi]
	call	xfclose
	mov	rax, qword ptr [rbp - 0x88]
	cmp	rax, qword ptr [rbp - 0x10]
	jae	.label_811
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, -1
	mov	qword ptr [rbp - 0x10], rax
	mov	rax, qword ptr [rbp - 0x88]
	shl	rax, 4
	lea	rsi, [rsi]
	add	rax, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rax]
	call	zaptemp
.label_811:
	nop	
	mov	rax, qword ptr [rbp - 0x88]
	mov	rbp, rbp
	imul	rax, rax, 0x38
	add	rax, qword ptr [rbp - 0x38]
	mov	rbp, rbp
	mov	rdi, qword ptr [rax]
	lea	rdi, [rdi]
	call	free
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	add	rax, -1
	mov	qword ptr [rbp - 0x18], rax
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x88]
	mov	qword ptr [rbp - 0x90], rax
.label_796:
	mov	rax, qword ptr [rbp - 0x90]
	nop	
	cmp	rax, qword ptr [rbp - 0x18]
	jae	.label_788
	mov	rax, qword ptr [rbp - 0x90]
	shl	rax, 4
	mov	rsp, rsp
	add	rax, qword ptr [rbp - 8]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x90]
	add	rcx, 1
	shl	rcx, 4
	nop	
	add	rcx, qword ptr [rbp - 8]
	mov	rdx, qword ptr [rcx]
	mov	qword ptr [rax], rdx
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rcx + 8]
	lea	rsi, [rsi]
	mov	qword ptr [rax + 8], rcx
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x90]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x30]
	mov	rax, qword ptr [rcx + rax*8 + 8]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x90]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x30]
	mov	qword ptr [rdx + rcx*8], rax
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x90]
	add	rax, 1
	nop	
	mov	qword ptr [rbp - 0x90], rax
	jmp	.label_796
.label_788:
	mov	rsp, rsp
	jmp	.label_814
.label_814:
	jmp	.label_816
.label_822:
	mov	qword ptr [rbp - 0x88], 0
.label_824:
	mov	rax, qword ptr [rbp - 0x88]
	nop	
	cmp	rax, qword ptr [rbp - 0x18]
	jae	.label_820
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x88]
	mov	rcx, qword ptr [rbp - 0x88]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x80]
	mov	qword ptr [rdx + rcx*8], rax
	mov	rax, qword ptr [rbp - 0x88]
	add	rax, 1
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x88], rax
	lea	rdi, [rdi]
	jmp	.label_824
.label_820:
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x88], 1
.label_835:
	nop	
	mov	rax, qword ptr [rbp - 0x88]
	lea	rdi, [rdi]
	cmp	rax, qword ptr [rbp - 0x18]
	jae	.label_791
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x88]
	lea	rdi, [rdi]
	sub	rax, 1
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x80]
	nop	
	mov	rax, qword ptr [rcx + rax*8]
	nop	
	mov	rcx, qword ptr [rbp - 0x70]
	mov	rbp, rbp
	mov	rdi, qword ptr [rcx + rax*8]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x88]
	mov	rcx, qword ptr [rbp - 0x80]
	nop	
	mov	rax, qword ptr [rcx + rax*8]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x70]
	nop	
	mov	rsi, qword ptr [rcx + rax*8]
	call	compare
	mov	rsp, rsp
	xor	edx, edx
	cmp	edx, eax
	jge	.label_807
	nop	
	mov	rax, qword ptr [rbp - 0x88]
	nop	
	sub	rax, 1
	mov	rcx, qword ptr [rbp - 0x80]
	mov	rax, qword ptr [rcx + rax*8]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x98], rax
	mov	rax, qword ptr [rbp - 0x88]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x80]
	mov	rax, qword ptr [rcx + rax*8]
	mov	rcx, qword ptr [rbp - 0x88]
	nop	
	sub	rcx, 1
	mov	rdx, qword ptr [rbp - 0x80]
	mov	qword ptr [rdx + rcx*8], rax
	mov	rax, qword ptr [rbp - 0x98]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x88]
	mov	rdx, qword ptr [rbp - 0x80]
	mov	qword ptr [rdx + rcx*8], rax
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x88], 0
.label_807:
	lea	rsi, [rsi]
	jmp	.label_833
.label_833:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x88]
	add	rax, 1
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x88], rax
	jmp	.label_835
.label_791:
	jmp	.label_789
.label_789:
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x18], 0
	mov	rsp, rsp
	je	.label_794
	mov	rax, qword ptr [rbp - 0x80]
	mov	rsp, rsp
	mov	rax, qword ptr [rax]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x70]
	mov	rax, qword ptr [rcx + rax*8]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0xb0], rax
	lea	rdi, [rdi]
	test	byte ptr [byte ptr [unique]],  1
	lea	rdi, [rdi]
	je	.label_797
	cmp	qword ptr [rbp - 0x60], 0
	lea	rsi, [rsi]
	je	.label_803
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x60]
	mov	rsi, qword ptr [rbp - 0xb0]
	call	compare
	nop	
	cmp	eax, 0
	je	.label_803
	lea	rdi, [rbp - 0x58]
	mov	qword ptr [rbp - 0x60], 0
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x28]
	mov	rbp, rbp
	call	write_line
.label_803:
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x60], 0
	mov	rsp, rsp
	jne	.label_815
	lea	rax, [rbp - 0x58]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x60], rax
	nop	
	mov	rax, qword ptr [rbp - 0x68]
	mov	rcx, qword ptr [rbp - 0xb0]
	mov	rsp, rsp
	cmp	rax, qword ptr [rcx + 8]
	jae	.label_801
	jmp	.label_799
.label_799:
	nop	
	cmp	qword ptr [rbp - 0x68], 0
	jne	.label_829
	mov	rax, qword ptr [rbp - 0xb0]
	mov	rbp, rbp
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x68], rax
	mov	rbp, rbp
	jmp	.label_834
.label_829:
	nop	
	jmp	.label_787
.label_787:
	mov	rax, qword ptr [rbp - 0x68]
	lea	rdi, [rdi]
	shl	rax, 1
	mov	qword ptr [rbp - 0x68], rax
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0xb0]
	cmp	rax, qword ptr [rcx + 8]
	mov	rbp, rbp
	jb	.label_799
.label_834:
	mov	rdi, qword ptr [rbp - 0x58]
	mov	rbp, rbp
	call	free
	mov	rdi, qword ptr [rbp - 0x68]
	lea	rsi, [rsi]
	call	xmalloc
	mov	qword ptr [rbp - 0x58], rax
.label_801:
	nop	
	mov	rax, qword ptr [rbp - 0xb0]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x50], rax
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x58]
	mov	rax, qword ptr [rbp - 0xb0]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rax]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x50]
	call	memcpy
	cmp	qword ptr [rbp - 0xa0], 0
	je	.label_809
	mov	rax, qword ptr [rbp - 0x58]
	nop	
	mov	rcx, qword ptr [rbp - 0xb0]
	mov	rcx, qword ptr [rcx + 0x10]
	mov	rdx, qword ptr [rbp - 0xb0]
	mov	rdx, qword ptr [rdx]
	sub	rcx, rdx
	lea	rsi, [rsi]
	add	rax, rcx
	mov	qword ptr [rbp - 0x48], rax
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x58]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0xb0]
	mov	rcx, qword ptr [rcx + 0x18]
	mov	rdx, qword ptr [rbp - 0xb0]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rdx]
	mov	rbp, rbp
	sub	rcx, rdx
	add	rax, rcx
	mov	qword ptr [rbp - 0x40], rax
.label_809:
	jmp	.label_815
.label_815:
	mov	rbp, rbp
	jmp	.label_832
.label_797:
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0xb0]
	mov	rsi, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	call	write_line
.label_832:
	mov	rax, qword ptr [rbp - 0x80]
	nop	
	mov	rax, qword ptr [rax]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x78]
	nop	
	mov	rax, qword ptr [rcx + rax*8]
	mov	rbp, rbp
	cmp	rax, qword ptr [rbp - 0xb0]
	mov	rsp, rsp
	jae	.label_790
	mov	rax, qword ptr [rbp - 0xb0]
	add	rax, -0x20
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x80]
	mov	rcx, qword ptr [rcx]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x70]
	mov	qword ptr [rdx + rcx*8], rax
	lea	rsi, [rsi]
	jmp	.label_792
.label_790:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x80]
	mov	rbp, rbp
	mov	rax, qword ptr [rax]
	imul	rax, rax, 0x38
	add	rax, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rbp - 0x80]
	mov	rcx, qword ptr [rcx]
	mov	rdx, qword ptr [rbp - 0x30]
	mov	rsp, rsp
	mov	rsi, qword ptr [rdx + rcx*8]
	nop	
	mov	rcx, qword ptr [rbp - 0x80]
	mov	rcx, qword ptr [rcx]
	shl	rcx, 4
	lea	rdi, [rdi]
	add	rcx, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rcx]
	mov	rdi, rax
	mov	rsp, rsp
	call	fillbuf
	test	al, 1
	mov	rsp, rsp
	jne	.label_825
	jmp	.label_818
.label_825:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x80]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax]
	imul	rax, rax, 0x38
	mov	rsp, rsp
	add	rax, qword ptr [rbp - 0x38]
	mov	rdi, rax
	call	buffer_linelim
	xor	ecx, ecx
	mov	edi, ecx
	mov	rbp, rbp
	mov	qword ptr [rbp - 0xb8], rax
	mov	rax, qword ptr [rbp - 0xb8]
	lea	rdi, [rdi]
	add	rax, -0x20
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x80]
	mov	rdx, qword ptr [rdx]
	mov	rsi, qword ptr [rbp - 0x70]
	mov	qword ptr [rsi + rdx*8], rax
	mov	rax, qword ptr [rbp - 0xb8]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x80]
	mov	rdx, qword ptr [rdx]
	imul	rdx, rdx, 0x38
	nop	
	add	rdx, qword ptr [rbp - 0x38]
	mov	rsp, rsp
	sub	rdi, qword ptr [rdx + 0x10]
	shl	rdi, 5
	add	rax, rdi
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x80]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rdx]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x78]
	lea	rsi, [rsi]
	mov	qword ptr [rsi + rdx*8], rax
	jmp	.label_827
.label_818:
	mov	qword ptr [rbp - 0x88], 1
.label_817:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x88]
	cmp	rax, qword ptr [rbp - 0x18]
	jae	.label_802
	mov	rax, qword ptr [rbp - 0x88]
	mov	rcx, qword ptr [rbp - 0x80]
	mov	rbp, rbp
	mov	rax, qword ptr [rcx + rax*8]
	nop	
	mov	rcx, qword ptr [rbp - 0x80]
	cmp	rax, qword ptr [rcx]
	jbe	.label_806
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x88]
	mov	rcx, qword ptr [rbp - 0x80]
	mov	rbp, rbp
	mov	rdx, qword ptr [rcx + rax*8]
	nop	
	add	rdx, -1
	mov	qword ptr [rcx + rax*8], rdx
.label_806:
	jmp	.label_830
.label_830:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x88]
	add	rax, 1
	mov	qword ptr [rbp - 0x88], rax
	jmp	.label_817
.label_802:
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, -1
	mov	qword ptr [rbp - 0x18], rax
	mov	rax, qword ptr [rbp - 0x80]
	mov	rax, qword ptr [rax]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x30]
	mov	rdi, qword ptr [rcx + rax*8]
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x80]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax]
	nop	
	shl	rax, 4
	lea	rdi, [rdi]
	add	rax, qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	rsi, qword ptr [rax]
	call	xfclose
	mov	rax, qword ptr [rbp - 0x80]
	mov	rax, qword ptr [rax]
	cmp	rax, qword ptr [rbp - 0x10]
	jae	.label_798
	nop	
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, -1
	mov	qword ptr [rbp - 0x10], rax
	mov	rax, qword ptr [rbp - 0x80]
	mov	rbp, rbp
	mov	rax, qword ptr [rax]
	shl	rax, 4
	add	rax, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rax]
	call	zaptemp
.label_798:
	mov	rax, qword ptr [rbp - 0x80]
	mov	rax, qword ptr [rax]
	imul	rax, rax, 0x38
	mov	rbp, rbp
	add	rax, qword ptr [rbp - 0x38]
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rax]
	lea	rdi, [rdi]
	call	free
	mov	rax, qword ptr [rbp - 0x80]
	mov	rbp, rbp
	mov	rax, qword ptr [rax]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x88], rax
.label_800:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x88]
	lea	rdi, [rdi]
	cmp	rax, qword ptr [rbp - 0x18]
	jae	.label_805
	lea	rsi, [rsi]
	mov	eax, 0x38
	mov	rbp, rbp
	mov	edx, eax
	mov	rcx, qword ptr [rbp - 0x88]
	mov	rsi, qword ptr [rbp - 0x30]
	mov	rbp, rbp
	mov	rcx, qword ptr [rsi + rcx*8 + 8]
	mov	rsi, qword ptr [rbp - 0x88]
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x30]
	mov	qword ptr [rdi + rsi*8], rcx
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x88]
	mov	rsp, rsp
	shl	rcx, 4
	add	rcx, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x88]
	lea	rdi, [rdi]
	add	rsi, 1
	nop	
	shl	rsi, 4
	add	rsi, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rsi]
	lea	rsi, [rsi]
	mov	qword ptr [rcx], rdi
	mov	rsp, rsp
	mov	rsi, qword ptr [rsi + 8]
	nop	
	mov	qword ptr [rcx + 8], rsi
	mov	rcx, qword ptr [rbp - 0x88]
	imul	rcx, rcx, 0x38
	lea	rdi, [rdi]
	add	rcx, qword ptr [rbp - 0x38]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x88]
	add	rsi, 1
	imul	rsi, rsi, 0x38
	mov	rsp, rsp
	add	rsi, qword ptr [rbp - 0x38]
	mov	rdi, rcx
	mov	rsp, rsp
	call	memcpy
	mov	rcx, qword ptr [rbp - 0x88]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x70]
	nop	
	mov	rcx, qword ptr [rdx + rcx*8 + 8]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x88]
	mov	rsi, qword ptr [rbp - 0x70]
	mov	qword ptr [rsi + rdx*8], rcx
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x88]
	mov	rdx, qword ptr [rbp - 0x78]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rdx + rcx*8 + 8]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x88]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x78]
	lea	rdi, [rdi]
	mov	qword ptr [rsi + rdx*8], rcx
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x88]
	add	rax, 1
	mov	qword ptr [rbp - 0x88], rax
	mov	rsp, rsp
	jmp	.label_800
.label_805:
	mov	qword ptr [rbp - 0x88], 0
.label_812:
	mov	rax, qword ptr [rbp - 0x88]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rbp - 0x18]
	jae	.label_819
	mov	rax, qword ptr [rbp - 0x88]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x80]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rcx + rax*8 + 8]
	mov	rcx, qword ptr [rbp - 0x88]
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x80]
	mov	qword ptr [rdx + rcx*8], rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x88]
	lea	rdi, [rdi]
	add	rax, 1
	mov	qword ptr [rbp - 0x88], rax
	jmp	.label_812
.label_819:
	mov	rbp, rbp
	jmp	.label_789
.label_827:
	lea	rdi, [rdi]
	jmp	.label_792
.label_792:
	mov	qword ptr [rbp - 0xc0], 1
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0xc8], rax
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0xc0]
	nop	
	mov	qword ptr [rbp - 0xd0], rax
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x80]
	mov	rax, qword ptr [rax]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0xd8], rax
.label_793:
	mov	rax, qword ptr [rbp - 0xc0]
	cmp	rax, qword ptr [rbp - 0xc8]
	jae	.label_836
	mov	rax, qword ptr [rbp - 0xd8]
	mov	rcx, qword ptr [rbp - 0x70]
	mov	rdi, qword ptr [rcx + rax*8]
	mov	rax, qword ptr [rbp - 0xd0]
	mov	rcx, qword ptr [rbp - 0x80]
	mov	rax, qword ptr [rcx + rax*8]
	mov	rcx, qword ptr [rbp - 0x70]
	mov	rbp, rbp
	mov	rsi, qword ptr [rcx + rax*8]
	call	compare
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0xe4], eax
	nop	
	cmp	dword ptr [rbp - 0xe4], 0
	lea	rsi, [rsi]
	jl	.label_813
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0xe4], 0
	jne	.label_810
	nop	
	mov	rax, qword ptr [rbp - 0xd8]
	mov	rcx, qword ptr [rbp - 0xd0]
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x80]
	mov	rbp, rbp
	cmp	rax, qword ptr [rdx + rcx*8]
	jae	.label_810
.label_813:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0xd0]
	mov	qword ptr [rbp - 0xc8], rax
	jmp	.label_831
.label_810:
	mov	rax, qword ptr [rbp - 0xd0]
	mov	rbp, rbp
	add	rax, 1
	mov	rbp, rbp
	mov	qword ptr [rbp - 0xc0], rax
.label_831:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0xc0]
	mov	rbp, rbp
	add	rax, qword ptr [rbp - 0xc8]
	shr	rax, 1
	mov	qword ptr [rbp - 0xd0], rax
	lea	rsi, [rsi]
	jmp	.label_793
.label_836:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0xc0]
	nop	
	sub	rax, 1
	mov	rbp, rbp
	mov	qword ptr [rbp - 0xe0], rax
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x90], 0
.label_808:
	mov	rax, qword ptr [rbp - 0x90]
	cmp	rax, qword ptr [rbp - 0xe0]
	jae	.label_804
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x90]
	mov	rcx, qword ptr [rbp - 0x80]
	mov	rax, qword ptr [rcx + rax*8 + 8]
	mov	rcx, qword ptr [rbp - 0x90]
	mov	rdx, qword ptr [rbp - 0x80]
	lea	rdi, [rdi]
	mov	qword ptr [rdx + rcx*8], rax
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x90]
	nop	
	add	rax, 1
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x90], rax
	jmp	.label_808
.label_804:
	nop	
	mov	rax, qword ptr [rbp - 0xd8]
	nop	
	mov	rcx, qword ptr [rbp - 0xe0]
	mov	rdx, qword ptr [rbp - 0x80]
	mov	qword ptr [rdx + rcx*8], rax
	mov	rbp, rbp
	jmp	.label_789
.label_794:
	lea	rdi, [rdi]
	test	byte ptr [byte ptr [unique]],  1
	lea	rsi, [rsi]
	je	.label_828
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x60], 0
	je	.label_828
	mov	rbp, rbp
	lea	rdi, [rbp - 0x58]
	mov	rsi, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x28]
	call	write_line
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x58]
	call	free
.label_828:
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rsi, qword ptr [rbp - 0x28]
	call	xfclose
	nop	
	mov	rsi, qword ptr [rbp - 0x30]
	mov	rbp, rbp
	mov	rdi, rsi
	mov	rbp, rbp
	call	free
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x38]
	mov	rdi, rsi
	lea	rdi, [rdi]
	call	free
	mov	rsi, qword ptr [rbp - 0x80]
	mov	rdi, rsi
	lea	rsi, [rsi]
	call	free
	mov	rsi, qword ptr [rbp - 0x78]
	mov	rsp, rsp
	mov	rdi, rsi
	call	free
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x70]
	lea	rsi, [rsi]
	mov	rdi, rsi
	call	free
	lea	rsi, [rsi]
	add	rsp, 0x100
	mov	rsp, rsp
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40e490

	.globl maybe_create_temp
	.type maybe_create_temp, @function
maybe_create_temp:
	push	rbp
	nop	
	mov	rbp, rsp
	sub	rsp, 0x40
	mov	rbp, rbp
	mov	al, sil
	lea	rcx, [rbp - 0x18]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x10], rdi
	and	al, 1
	mov	byte ptr [rbp - 0x11], al
	mov	al, byte ptr [rbp - 0x11]
	and	al, 1
	mov	rdi, rcx
	movzx	esi, al
	call	create_temp_file
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x20], rax
	nop	
	cmp	qword ptr [rbp - 0x20], 0
	jne	.label_843
	mov	qword ptr [rbp - 8], 0
	jmp	.label_840
.label_843:
	nop	
	mov	rax, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	mov	byte ptr [rax + 0xc], 0
	cmp	qword ptr [word ptr [compress_program]],  0
	je	.label_841
	mov	eax, 4
	mov	esi, eax
	lea	rdi, [rdi]
	lea	rdi, [rbp - 0x28]
	mov	rsp, rsp
	call	pipe_fork
	nop	
	xor	ecx, ecx
	mov	rsi, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	mov	dword ptr [rsi + 8], eax
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x20]
	cmp	ecx, dword ptr [rsi + 8]
	jge	.label_839
	mov	edi, dword ptr [rbp - 0x18]
	mov	rbp, rbp
	call	close
	lea	rdi, [rdi]
	mov	edi, dword ptr [rbp - 0x28]
	mov	dword ptr [rbp - 0x2c], eax
	call	close
	mov	rsp, rsp
	mov	edi, dword ptr [rbp - 0x24]
	mov	dword ptr [rbp - 0x18], edi
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x30], eax
	call	register_proc
	jmp	.label_838
.label_839:
	nop	
	mov	rax, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	cmp	dword ptr [rax + 8], 0
	lea	rdi, [rdi]
	jne	.label_842
	nop	
	mov	edi, dword ptr [rbp - 0x24]
	call	close
	lea	rdi, [rdi]
	mov	esi, 1
	mov	edi, dword ptr [rbp - 0x18]
	mov	dword ptr [rbp - 0x34], eax
	mov	rsp, rsp
	call	move_fd
	xor	esi, esi
	mov	edi, dword ptr [rbp - 0x28]
	call	move_fd
	xor	eax, eax
	mov	edx, eax
	mov	rsp, rsp
	mov	rdi,  qword ptr [word ptr [compress_program]]
	lea	rdi, [rdi]
	mov	rsi,  qword ptr [word ptr [compress_program]]
	mov	al, 0
	call	execlp
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x38], eax
	call	__errno_location
	movabs	rsi, OFFSET FLAT:.str.175
	mov	edi, dword ptr [rax]
	lea	rdi, [rdi]
	call	async_safe_die
.label_842:
	mov	rbp, rbp
	jmp	.label_838
.label_838:
	jmp	.label_841
.label_841:
	nop	
	movabs	rsi, OFFSET FLAT:.str.166
	mov	edi, dword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	call	fdopen
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	qword ptr [rsi], rax
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	cmp	qword ptr [rax], 0
	mov	rbp, rbp
	jne	.label_837
	nop	
	movabs	rdi, OFFSET FLAT:.str.176
	lea	rsi, [rsi]
	call	gettext
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	add	rdi, 0xd
	mov	qword ptr [rbp - 0x40], rdi
	mov	rdi, rax
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x40]
	call	sort_die
.label_837:
	mov	rax, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	mov	qword ptr [rbp - 8], rax
.label_840:
	mov	rax, qword ptr [rbp - 8]
	mov	rbp, rbp
	add	rsp, 0x40
	lea	rsi, [rsi]
	pop	rbp
	lea	rsi, [rsi]
	ret	
	.section	.text
	.align	16
	#Procedure 0x40e680

	.globl open_temp
	.type open_temp, @function
open_temp:
	push	rbp
	mov	rbp, rbp
	mov	rbp, rsp
	sub	rsp, 0x70
	nop	
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x28], 0
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x10]
	movsx	eax, byte ptr [rdi + 0xc]
	nop	
	cmp	eax, 1
	jne	.label_844
	mov	rax, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	edi, dword ptr [rax + 8]
	lea	rdi, [rdi]
	call	wait_proc
.label_844:
	xor	esi, esi
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 0xd
	lea	rsi, [rsi]
	mov	rdi, rax
	mov	al, 0
	call	open
	mov	dword ptr [rbp - 0x14], eax
	cmp	dword ptr [rbp - 0x14], 0
	lea	rdi, [rdi]
	jge	.label_850
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 8], 0
	jmp	.label_853
.label_850:
	mov	eax, 9
	lea	rdi, [rdi]
	mov	esi, eax
	nop	
	lea	rdi, [rbp - 0x1c]
	nop	
	call	pipe_fork
	mov	dword ptr [rbp - 0x2c], eax
	lea	rdi, [rdi]
	mov	ecx, eax
	sub	eax, -1
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x34], ecx
	mov	dword ptr [rbp - 0x38], eax
	je	.label_848
	lea	rsi, [rsi]
	jmp	.label_852
.label_852:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x34]
	mov	rbp, rbp
	test	eax, eax
	lea	rdi, [rdi]
	je	.label_849
	jmp	.label_845
.label_848:
	call	__errno_location
	nop	
	cmp	dword ptr [rax], 0x18
	lea	rdi, [rdi]
	je	.label_846
	call	__errno_location
	lea	rsi, [rsi]
	movabs	rdi, OFFSET FLAT:.str.167
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0x3c], esi
	call	gettext
	lea	rdi, [rdi]
	mov	edi, 4
	mov	rsi,  qword ptr [word ptr [compress_program]]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x48], rax
	call	quotearg_style
	mov	edi, 2
	lea	rsi, [rsi]
	mov	esi, dword ptr [rbp - 0x3c]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x48]
	mov	rsp, rsp
	mov	rcx, rax
	mov	rsp, rsp
	mov	al, 0
	call	error
.label_846:
	lea	rsi, [rsi]
	mov	edi, dword ptr [rbp - 0x14]
	call	close
	mov	dword ptr [rbp - 0x4c], eax
	call	__errno_location
	mov	dword ptr [rax], 0x18
	mov	rsp, rsp
	jmp	.label_847
.label_849:
	mov	rsp, rsp
	mov	edi, dword ptr [rbp - 0x1c]
	call	close
	xor	esi, esi
	mov	rbp, rbp
	mov	edi, dword ptr [rbp - 0x14]
	nop	
	mov	dword ptr [rbp - 0x50], eax
	call	move_fd
	nop	
	mov	esi, 1
	mov	edi, dword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	call	move_fd
	movabs	rdx, OFFSET FLAT:.str.168
	xor	eax, eax
	mov	rbp, rbp
	mov	ecx, eax
	mov	rsp, rsp
	mov	rdi,  qword ptr [word ptr [compress_program]]
	mov	rsi,  qword ptr [word ptr [compress_program]]
	mov	rbp, rbp
	mov	al, 0
	call	execlp
	mov	dword ptr [rbp - 0x54], eax
	call	__errno_location
	movabs	rsi, OFFSET FLAT:.str.169
	mov	edi, dword ptr [rax]
	call	async_safe_die
.label_845:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x2c]
	mov	rcx, qword ptr [rbp - 0x10]
	nop	
	mov	dword ptr [rcx + 8], eax
	mov	rdi, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	call	register_proc
	nop	
	mov	edi, dword ptr [rbp - 0x14]
	lea	rsi, [rsi]
	call	close
	lea	rsi, [rsi]
	mov	edi, dword ptr [rbp - 0x18]
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x58], eax
	nop	
	call	close
	lea	rdi, [rdi]
	movabs	rsi, OFFSET FLAT:.str.52
	nop	
	mov	edi, dword ptr [rbp - 0x1c]
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x5c], eax
	call	fdopen
	mov	qword ptr [rbp - 0x28], rax
	cmp	qword ptr [rbp - 0x28], 0
	mov	rbp, rbp
	jne	.label_851
	lea	rsi, [rsi]
	call	__errno_location
	mov	rsp, rsp
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 0x30], ecx
	mov	edi, dword ptr [rbp - 0x1c]
	mov	rbp, rbp
	call	close
	mov	ecx, dword ptr [rbp - 0x30]
	mov	dword ptr [rbp - 0x60], eax
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x64], ecx
	call	__errno_location
	lea	rsi, [rsi]
	mov	ecx, dword ptr [rbp - 0x64]
	mov	dword ptr [rax], ecx
.label_851:
	jmp	.label_847
.label_847:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 8], rax
.label_853:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x70
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40e900

	.globl wait_proc
	.type wait_proc, @function
wait_proc:
	nop	
	push	rbp
	mov	rsp, rsp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	dword ptr [rbp - 4], edi
	mov	edi, dword ptr [rbp - 4]
	call	delete_proc
	test	al, 1
	jne	.label_854
	lea	rsi, [rsi]
	jmp	.label_855
.label_854:
	lea	rdi, [rdi]
	mov	edi, dword ptr [rbp - 4]
	call	reap
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 8], eax
.label_855:
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40e940

	.globl pipe_fork
	.type pipe_fork, @function
pipe_fork:
	mov	rbp, rbp
	push	rbp
	nop	
	mov	rbp, rsp
	sub	rsp, 0xe0
	mov	eax, 0x80000
	lea	rdi, [rdi]
	movsd	xmm0,  qword ptr [word ptr [label_856]]
	mov	qword ptr [rbp - 0x10], rdi
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x18], rsi
	lea	rdi, [rdi]
	movsd	qword ptr [rbp - 0x30], xmm0
	mov	rdi, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	esi, eax
	lea	rsi, [rsi]
	call	rpl_pipe2
	cmp	eax, 0
	jge	.label_858
	nop	
	mov	dword ptr [rbp - 4], 0xffffffff
	lea	rdi, [rdi]
	jmp	.label_860
.label_858:
	lea	rsi, [rsi]
	mov	eax,  dword ptr [dword ptr [nmerge]]
	nop	
	add	eax, 1
	cmp	eax,  dword ptr [dword ptr [nprocs]]
	jae	.label_869
	call	reap_some
.label_869:
	lea	rdi, [rdi]
	jmp	.label_862
.label_862:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	mov	rcx, rax
	add	rcx, -1
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x18], rcx
	lea	rsi, [rsi]
	cmp	rax, 0
	mov	rbp, rbp
	je	.label_864
	lea	rdi, [rbp - 0xc0]
	mov	rbp, rbp
	call	cs_enter
	nop	
	mov	rdi,  qword ptr [word ptr [temphead]]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x20], rdi
	mov	qword ptr [word ptr [temphead]],  0
	call	fork
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x34], eax
	call	__errno_location
	lea	rsi, [rsi]
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 0x24], ecx
	cmp	dword ptr [rbp - 0x34], 0
	je	.label_866
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [word ptr [temphead]],  rax
.label_866:
	lea	rdi, [rbp - 0xc0]
	lea	rdi, [rdi]
	call	cs_leave
	nop	
	mov	eax, dword ptr [rbp - 0x24]
	mov	rsp, rsp
	mov	dword ptr [rbp - 0xc4], eax
	call	__errno_location
	xor	ecx, ecx
	mov	rsp, rsp
	mov	edx, dword ptr [rbp - 0xc4]
	mov	dword ptr [rax], edx
	cmp	ecx, dword ptr [rbp - 0x34]
	jle	.label_865
	nop	
	call	__errno_location
	cmp	dword ptr [rax], 0xb
	je	.label_857
.label_865:
	jmp	.label_864
.label_857:
	movsd	xmm0, qword ptr [rbp - 0x30]
	call	xnanosleep
	lea	rsi, [rsi]
	movsd	xmm0,  qword ptr [word ptr [label_861]]
	mov	rsp, rsp
	mulsd	xmm0, qword ptr [rbp - 0x30]
	movsd	qword ptr [rbp - 0x30], xmm0
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0xc8], eax
	nop	
	call	reap_exited
	jmp	.label_862
.label_864:
	cmp	dword ptr [rbp - 0x34], 0
	mov	rbp, rbp
	jge	.label_859
	call	__errno_location
	mov	ecx, dword ptr [rax]
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x24], ecx
	mov	rax, qword ptr [rbp - 0x10]
	mov	edi, dword ptr [rax]
	call	close
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	edi, dword ptr [rdx + 4]
	mov	rsp, rsp
	mov	dword ptr [rbp - 0xcc], eax
	mov	rbp, rbp
	call	close
	mov	ecx, dword ptr [rbp - 0x24]
	mov	dword ptr [rbp - 0xd0], eax
	mov	dword ptr [rbp - 0xd4], ecx
	call	__errno_location
	mov	rbp, rbp
	mov	ecx, dword ptr [rbp - 0xd4]
	mov	dword ptr [rax], ecx
	jmp	.label_863
.label_859:
	cmp	dword ptr [rbp - 0x34], 0
	nop	
	jne	.label_867
	xor	edi, edi
	call	close
	nop	
	mov	edi, 1
	mov	rbp, rbp
	mov	dword ptr [rbp - 0xd8], eax
	mov	rbp, rbp
	call	close
	mov	dword ptr [rbp - 0xdc], eax
	jmp	.label_868
.label_867:
	mov	rsp, rsp
	mov	eax,  dword ptr [dword ptr [nprocs]]
	lea	rdi, [rdi]
	add	eax, 1
	lea	rdi, [rdi]
	mov	dword ptr [dword ptr [nprocs]],  eax
.label_868:
	lea	rdi, [rdi]
	jmp	.label_863
.label_863:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x34]
	nop	
	mov	dword ptr [rbp - 4], eax
.label_860:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 4]
	mov	rbp, rbp
	add	rsp, 0xe0
	mov	rbp, rbp
	pop	rbp
	nop	
	ret	
	.section	.text
	.align	16
	#Procedure 0x40eba0

	.globl async_safe_die
	.type async_safe_die, @function
async_safe_die:
	push	rbp
	mov	rbp, rsp
	lea	rdi, [rdi]
	sub	rsp, 0x70
	mov	eax, 2
	mov	dword ptr [rbp - 4], edi
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rbp - 0x10]
	mov	dword ptr [rbp - 0x4c], eax
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x58], rsi
	lea	rsi, [rsi]
	call	strlen
	lea	rdi, [rdi]
	mov	edi, dword ptr [rbp - 0x4c]
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x58]
	nop	
	mov	rdx, rax
	nop	
	call	write
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x18], rax
	lea	rsi, [rsi]
	cmp	dword ptr [rbp - 4], 0
	je	.label_870
	lea	rsi, [rsi]
	lea	rsi, [rbp - 0x24]
	nop	
	mov	edi, dword ptr [rbp - 4]
	mov	rsp, rsp
	call	inttostr
	mov	edi, 2
	movabs	rsi, OFFSET FLAT:.str.172
	mov	ecx, 8
	mov	rsp, rsp
	mov	edx, ecx
	mov	qword ptr [rbp - 0x30], rax
	call	write
	mov	edi, 2
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x38], rax
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x30]
	mov	rax, qword ptr [rbp - 0x30]
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x5c], edi
	mov	rbp, rbp
	mov	rdi, rax
	mov	qword ptr [rbp - 0x68], rsi
	call	strlen
	mov	rsp, rsp
	mov	edi, dword ptr [rbp - 0x5c]
	mov	rsi, qword ptr [rbp - 0x68]
	mov	rdx, rax
	call	write
	mov	qword ptr [rbp - 0x40], rax
.label_870:
	mov	edi, 2
	movabs	rsi, OFFSET FLAT:.str.173
	mov	eax, 1
	mov	edx, eax
	lea	rsi, [rsi]
	call	write
	mov	edi, 2
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x48], rax
	lea	rsi, [rsi]
	call	_exit
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40ecb0

	.globl register_proc
	.type register_proc, @function
register_proc:
	push	rbp
	mov	rbp, rsp
	mov	rsp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 8], rdi
	lea	rsi, [rsi]
	cmp	qword ptr [word ptr [proctab]],  0
	lea	rsi, [rsi]
	jne	.label_871
	mov	eax, 0x2f
	lea	rsi, [rsi]
	mov	edi, eax
	xor	eax, eax
	mov	ecx, eax
	lea	rsi, [rsi]
	movabs	rdx, OFFSET FLAT:proctab_hasher
	mov	rbp, rbp
	movabs	rsi, OFFSET FLAT:proctab_comparator
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsi, rcx
	mov	r8, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x18], rcx
	mov	rsp, rsp
	mov	rcx, r8
	mov	rsp, rsp
	mov	r8, qword ptr [rbp - 0x18]
	call	hash_initialize
	mov	qword ptr [word ptr [proctab]],  rax
	lea	rsi, [rsi]
	cmp	qword ptr [word ptr [proctab]],  0
	jne	.label_873
	nop	
	call	xalloc_die
.label_873:
	jmp	.label_871
.label_871:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	mov	byte ptr [rax + 0xc], 1
	lea	rsi, [rsi]
	mov	rdi,  qword ptr [word ptr [proctab]]
	mov	rax, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	rsi, rax
	lea	rsi, [rsi]
	call	hash_insert
	cmp	rax, 0
	nop	
	jne	.label_872
	mov	rbp, rbp
	call	xalloc_die
.label_872:
	lea	rdi, [rdi]
	add	rsp, 0x20
	pop	rbp
	mov	rbp, rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40ed90

	.globl delete_proc
	.type delete_proc, @function
delete_proc:
	nop	
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	rbp, rbp
	lea	rax, [rbp - 0x18]
	mov	dword ptr [rbp - 8], edi
	mov	rsp, rsp
	mov	edi, dword ptr [rbp - 8]
	mov	dword ptr [rbp - 0x10], edi
	lea	rdi, [rdi]
	mov	rdi,  qword ptr [word ptr [proctab]]
	mov	rsi, rax
	mov	rsp, rsp
	call	hash_delete
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x20], rax
	cmp	qword ptr [rbp - 0x20], 0
	jne	.label_874
	nop	
	mov	byte ptr [rbp - 1], 0
	lea	rdi, [rdi]
	jmp	.label_875
.label_874:
	mov	rax, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	mov	byte ptr [rax + 0xc], 2
	mov	byte ptr [rbp - 1], 1
.label_875:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	add	rsp, 0x20
	mov	rsp, rsp
	pop	rbp
	mov	rbp, rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40ee10

	.globl reap
	.type reap, @function
reap:
	mov	rbp, rbp
	push	rbp
	lea	rsi, [rsi]
	mov	rbp, rsp
	mov	rsp, rsp
	sub	rsp, 0x30
	nop	
	mov	dword ptr [rbp - 4], edi
	cmp	dword ptr [rbp - 4], 0
	je	.label_879
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 4]
	mov	dword ptr [rbp - 0x1c], eax
	jmp	.label_881
.label_879:
	mov	eax, 0xffffffff
	mov	dword ptr [rbp - 0x1c], eax
	mov	rbp, rbp
	jmp	.label_881
.label_881:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x1c]
	lea	rdi, [rdi]
	lea	rsi, [rbp - 8]
	mov	ecx, 1
	xor	edx, edx
	cmp	dword ptr [rbp - 4], 0
	mov	rbp, rbp
	cmovne	ecx, edx
	mov	edi, eax
	mov	rbp, rbp
	mov	edx, ecx
	lea	rsi, [rsi]
	call	waitpid
	mov	rbp, rbp
	mov	dword ptr [rbp - 0xc], eax
	lea	rsi, [rsi]
	cmp	dword ptr [rbp - 0xc], 0
	jge	.label_882
	lea	rsi, [rsi]
	call	__errno_location
	movabs	rdi, OFFSET FLAT:.str.170
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0x20], esi
	call	gettext
	lea	rdi, [rdi]
	mov	edi, 4
	mov	rsi,  qword ptr [word ptr [compress_program]]
	mov	qword ptr [rbp - 0x28], rax
	call	quotearg_style
	mov	edi, 2
	mov	rsp, rsp
	mov	esi, dword ptr [rbp - 0x20]
	mov	rdx, qword ptr [rbp - 0x28]
	mov	rcx, rax
	mov	rsp, rsp
	mov	al, 0
	lea	rdi, [rdi]
	call	error
.label_882:
	lea	rdi, [rdi]
	xor	eax, eax
	cmp	eax, dword ptr [rbp - 0xc]
	mov	rsp, rsp
	jge	.label_880
	mov	rbp, rbp
	xor	eax, eax
	cmp	eax, dword ptr [rbp - 4]
	mov	rsp, rsp
	jl	.label_878
	mov	rsp, rsp
	mov	edi, dword ptr [rbp - 0xc]
	call	delete_proc
	test	al, 1
	mov	rsp, rsp
	jne	.label_878
	lea	rdi, [rdi]
	jmp	.label_880
.label_878:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 8]
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x10], eax
	mov	eax, dword ptr [rbp - 0x10]
	and	eax, 0x7f
	cmp	eax, 0
	jne	.label_877
	mov	eax, dword ptr [rbp - 8]
	mov	dword ptr [rbp - 0x18], eax
	mov	eax, dword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	and	eax, 0xff00
	sar	eax, 8
	mov	rsp, rsp
	cmp	eax, 0
	je	.label_883
.label_877:
	nop	
	movabs	rdi, OFFSET FLAT:.str.171
	mov	rsp, rsp
	call	gettext
	mov	edi, 4
	mov	rsi,  qword ptr [word ptr [compress_program]]
	mov	qword ptr [rbp - 0x30], rax
	mov	rbp, rbp
	call	quotearg_style
	mov	rsp, rsp
	mov	edi, 2
	lea	rdi, [rdi]
	xor	esi, esi
	mov	rdx, qword ptr [rbp - 0x30]
	mov	rbp, rbp
	mov	rcx, rax
	lea	rsi, [rsi]
	mov	al, 0
	call	error
.label_883:
	nop	
	mov	eax,  dword ptr [dword ptr [nprocs]]
	lea	rsi, [rsi]
	add	eax, -1
	mov	rbp, rbp
	mov	dword ptr [dword ptr [nprocs]],  eax
.label_880:
	lea	rdi, [rdi]
	jmp	.label_876
.label_876:
	nop	
	mov	eax, dword ptr [rbp - 0xc]
	add	rsp, 0x30
	nop	
	pop	rbp
	mov	rbp, rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40efe0

	.globl reap_some
	.type reap_some, @function
reap_some:
	nop	
	push	rbp
	mov	rbp, rsp
	mov	rsp, rsp
	sub	rsp, 0x10
	lea	rsi, [rsi]
	mov	edi, 0xffffffff
	call	reap
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 4], eax
	mov	rsp, rsp
	call	reap_exited
	add	rsp, 0x10
	pop	rbp
	nop	
	ret	
	.section	.text
	.align	16
	#Procedure 0x40f010

	.globl reap_exited
	.type reap_exited, @function
reap_exited:
	push	rbp
	mov	rsp, rsp
	mov	rbp, rsp
	lea	rsi, [rsi]
	sub	rsp, 0x10
	jmp	.label_884
.label_884:
	lea	rsi, [rsi]
	xor	eax, eax
	nop	
	mov	cl, al
	xor	eax, eax
	cmp	eax,  dword ptr [dword ptr [nprocs]]
	mov	rbp, rbp
	mov	byte ptr [rbp - 1], cl
	jge	.label_885
	xor	edi, edi
	lea	rsi, [rsi]
	call	reap
	cmp	eax, 0
	setne	cl
	mov	rsp, rsp
	mov	byte ptr [rbp - 1], cl
.label_885:
	mov	rbp, rbp
	mov	al, byte ptr [rbp - 1]
	nop	
	test	al, 1
	jne	.label_887
	mov	rsp, rsp
	jmp	.label_886
.label_887:
	jmp	.label_884
.label_886:
	lea	rdi, [rdi]
	add	rsp, 0x10
	pop	rbp
	lea	rdi, [rdi]
	ret	
	.section	.text
	.align	16
	#Procedure 0x40f080

	.globl proctab_hasher
	.type proctab_hasher, @function
proctab_hasher:
	mov	rsp, rsp
	push	rbp
	mov	rsp, rsp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x18], rsi
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	movsxd	rax, dword ptr [rsi + 8]
	mov	rsp, rsp
	xor	ecx, ecx
	mov	edx, ecx
	div	qword ptr [rbp - 0x10]
	mov	rax, rdx
	mov	rbp, rbp
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40f0c0

	.globl proctab_comparator
	.type proctab_comparator, @function
proctab_comparator:
	mov	rsp, rsp
	push	rbp
	mov	rbp, rsp
	nop	
	mov	qword ptr [rbp - 8], rdi
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsi, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x18], rsi
	mov	rsi, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x20], rsi
	mov	rsi, qword ptr [rbp - 0x18]
	mov	eax, dword ptr [rsi + 8]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	cmp	eax, dword ptr [rsi + 8]
	sete	cl
	and	cl, 1
	mov	rbp, rbp
	movzx	eax, cl
	pop	rbp
	mov	rsp, rsp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40f110

	.globl zaptemp
	.type zaptemp, @function
zaptemp:
	push	rbp
	nop	
	mov	rbp, rsp
	nop	
	sub	rsp, 0xc0
	movabs	rax, OFFSET FLAT:temphead
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 8], rdi
	mov	dword ptr [rbp - 0x28], 0
	mov	qword ptr [rbp - 0x10], rax
.label_888:
	mov	rax, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0x18], rax
	add	rax, 0xd
	cmp	rax, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	je	.label_893
	mov	rsp, rsp
	jmp	.label_892
.label_892:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x10], rax
	nop	
	jmp	.label_888
.label_893:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x18]
	movsx	ecx, byte ptr [rax + 0xc]
	cmp	ecx, 1
	jne	.label_890
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x18]
	mov	edi, dword ptr [rax + 8]
	mov	rsp, rsp
	call	wait_proc
.label_890:
	mov	rbp, rbp
	lea	rdi, [rbp - 0xb0]
	mov	rax, qword ptr [rbp - 0x18]
	nop	
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0x20], rax
	call	cs_enter
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 8]
	call	unlink
	mov	dword ptr [rbp - 0x24], eax
	lea	rsi, [rsi]
	call	__errno_location
	mov	rbp, rbp
	lea	rdi, [rbp - 0xb0]
	mov	rsp, rsp
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 0x28], ecx
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	qword ptr [rdx], rax
	call	cs_leave
	mov	rbp, rbp
	cmp	dword ptr [rbp - 0x24], 0
	mov	rbp, rbp
	je	.label_891
	movabs	rdi, OFFSET FLAT:.str.174
	nop	
	mov	esi, dword ptr [rbp - 0x28]
	mov	dword ptr [rbp - 0xb4], esi
	call	gettext
	xor	edi, edi
	mov	esi, 3
	mov	rdx, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0xc0], rax
	lea	rdi, [rdi]
	call	quotearg_n_style_colon
	mov	rbp, rbp
	xor	edi, edi
	mov	rbp, rbp
	mov	esi, dword ptr [rbp - 0xb4]
	mov	rdx, qword ptr [rbp - 0xc0]
	lea	rdi, [rdi]
	mov	rcx, rax
	lea	rdi, [rdi]
	mov	al, 0
	lea	rsi, [rsi]
	call	error
.label_891:
	cmp	qword ptr [rbp - 0x20], 0
	lea	rsi, [rsi]
	jne	.label_889
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [word ptr [temptail]],  rax
.label_889:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rdi, rax
	mov	rsp, rsp
	call	free
	lea	rsi, [rsi]
	add	rsp, 0xc0
	pop	rbp
	lea	rsi, [rsi]
	ret	
	.section	.text
	.align	16
	#Procedure 0x40f2a0

	.globl create_temp_file
	.type create_temp_file, @function
create_temp_file:
	push	rbp
	lea	rsi, [rsi]
	mov	rbp, rsp
	sub	rsp, 0xd0
	mov	al, sil
	mov	qword ptr [rbp - 8], rdi
	and	al, 1
	mov	byte ptr [rbp - 9], al
	mov	rdi,  qword ptr [word ptr [create_temp_file.temp_dir_index]]
	mov	rcx,  qword ptr [word ptr [temp_dirs]]
	mov	rcx, qword ptr [rcx + rdi*8]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x20], rcx
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x20]
	call	strlen
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x28], rax
	mov	rax, qword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	add	rax, 0xc
	add	rax, 0x14
	nop	
	and	rax, 0xfffffffffffffff8
	mov	rbp, rbp
	mov	rdi, rax
	nop	
	call	xmalloc
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x30], rax
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, 0xd
	nop	
	mov	qword ptr [rbp - 0x38], rax
	mov	rdi, qword ptr [rbp - 0x38]
	nop	
	mov	rsi, qword ptr [rbp - 0x20]
	mov	rdx, qword ptr [rbp - 0x28]
	call	memcpy
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x38]
	nop	
	mov	rcx, qword ptr [rbp - 0x28]
	mov	rdx,  qword ptr [word ptr [create_temp_file.slashbase]]
	mov	qword ptr [rax + rcx], rdx
	lea	rsi, [rsi]
	mov	r8d,  dword ptr [dword ptr [label_896]]
	mov	dword ptr [rax + rcx + 8], r8d
	mov	rax, qword ptr [rbp - 0x30]
	nop	
	mov	qword ptr [rax], 0
	lea	rdi, [rdi]
	mov	rax,  qword ptr [word ptr [create_temp_file.temp_dir_index]]
	mov	rsp, rsp
	add	rax, 1
	mov	qword ptr [word ptr [create_temp_file.temp_dir_index]],  rax
	lea	rdi, [rdi]
	cmp	rax,  qword ptr [word ptr [temp_dir_count]]
	jne	.label_897
	lea	rsi, [rsi]
	mov	qword ptr [word ptr [create_temp_file.temp_dir_index]],  0
.label_897:
	lea	rsi, [rsi]
	lea	rdi, [rbp - 0xc0]
	call	cs_enter
	mov	esi, 0x80000
	nop	
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rbp, rbp
	call	mkostemp_safer
	xor	esi, esi
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x10], eax
	lea	rdi, [rdi]
	cmp	esi, dword ptr [rbp - 0x10]
	jg	.label_899
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx,  qword ptr [word ptr [temptail]]
	mov	qword ptr [rcx], rax
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [word ptr [temptail]],  rax
.label_899:
	call	__errno_location
	lea	rdi, [rbp - 0xc0]
	mov	rbp, rbp
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 0x14], ecx
	call	cs_leave
	nop	
	mov	ecx, dword ptr [rbp - 0x14]
	mov	dword ptr [rbp - 0xc4], ecx
	mov	rbp, rbp
	call	__errno_location
	mov	ecx, dword ptr [rbp - 0xc4]
	nop	
	mov	dword ptr [rax], ecx
	cmp	dword ptr [rbp - 0x10], 0
	jge	.label_894
	test	byte ptr [rbp - 9], 1
	je	.label_895
	call	__errno_location
	lea	rsi, [rsi]
	cmp	dword ptr [rax], 0x18
	mov	rbp, rbp
	je	.label_898
.label_895:
	call	__errno_location
	nop	
	movabs	rdi, OFFSET FLAT:.str.177
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0xc8], esi
	nop	
	call	gettext
	lea	rdi, [rdi]
	mov	edi, 4
	mov	rsi, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0xd0], rax
	nop	
	call	quotearg_style
	mov	edi, 2
	mov	rsp, rsp
	mov	esi, dword ptr [rbp - 0xc8]
	nop	
	mov	rdx, qword ptr [rbp - 0xd0]
	lea	rdi, [rdi]
	mov	rcx, rax
	nop	
	mov	al, 0
	call	error
.label_898:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x30]
	mov	rsp, rsp
	mov	rdi, rax
	call	free
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x30], 0
.label_894:
	mov	eax, dword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	dword ptr [rcx], eax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x30]
	add	rsp, 0xd0
	lea	rdi, [rdi]
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40f4f0

	.globl sort_buffer_size
	.type sort_buffer_size, @function
sort_buffer_size:
	push	rbp
	lea	rdi, [rdi]
	mov	rbp, rsp
	lea	rdi, [rdi]
	sub	rsp, 0x100
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x20], rdx
	mov	qword ptr [rbp - 0x28], rcx
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x30], r8
	mov	rcx, qword ptr [rbp - 0x30]
	nop	
	add	rcx, 1
	mov	qword ptr [rbp - 0x38], rcx
	nop	
	mov	rcx, qword ptr [rbp - 0x38]
	mov	rbp, rbp
	add	rcx, 1
	nop	
	mov	qword ptr [rbp - 0x40], rcx
	mov	qword ptr [rbp - 0x48], 0
.label_903:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x48]
	cmp	rax, qword ptr [rbp - 0x28]
	jae	.label_901
	mov	rax, qword ptr [rbp - 0x48]
	nop	
	cmp	rax, qword ptr [rbp - 0x18]
	jae	.label_914
	nop	
	mov	rax, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rcx + rax*8]
	call	fileno
	lea	rsi, [rbp - 0xd8]
	mov	rbp, rbp
	mov	edi, eax
	mov	rbp, rbp
	call	__fstat
	mov	dword ptr [rbp - 0xec], eax
	jmp	.label_908
.label_914:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rdi, qword ptr [rcx + rax*8]
	mov	edx, OFFSET FLAT:.str.54
	mov	esi, edx
	call	strcmp
	cmp	eax, 0
	mov	rsp, rsp
	jne	.label_912
	xor	edi, edi
	lea	rsi, [rbp - 0xd8]
	call	__fstat
	mov	dword ptr [rbp - 0xf0], eax
	jmp	.label_904
.label_912:
	lea	rsi, [rbp - 0xd8]
	mov	rax, qword ptr [rbp - 0x48]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	mov	rdi, qword ptr [rcx + rax*8]
	call	stat
	mov	dword ptr [rbp - 0xf0], eax
.label_904:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0xf0]
	mov	rsp, rsp
	mov	dword ptr [rbp - 0xec], eax
.label_908:
	mov	eax, dword ptr [rbp - 0xec]
	cmp	eax, 0
	je	.label_905
	movabs	rdi, OFFSET FLAT:.str.178
	lea	rsi, [rsi]
	call	gettext
	mov	rdi, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rbp - 0x20]
	nop	
	mov	rsi, qword ptr [rcx + rdi*8]
	mov	rbp, rbp
	mov	rdi, rax
	lea	rsi, [rsi]
	call	sort_die
.label_905:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0xc0]
	and	eax, 0xf000
	lea	rdi, [rdi]
	cmp	eax, 0x8000
	nop	
	jne	.label_902
	mov	rax, qword ptr [rbp - 0xa8]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0xe0], rax
	lea	rsi, [rsi]
	jmp	.label_909
.label_902:
	cmp	qword ptr [word ptr [sort_size]],  0
	je	.label_913
	mov	rax,  qword ptr [word ptr [sort_size]]
	mov	rbp, rbp
	mov	qword ptr [rbp - 8], rax
	lea	rdi, [rdi]
	jmp	.label_906
.label_913:
	mov	qword ptr [rbp - 0xe0], 0x20000
.label_909:
	cmp	qword ptr [word ptr [sort_buffer_size.size_bound]],  0
	lea	rsi, [rsi]
	jne	.label_911
	mov	rax,  qword ptr [word ptr [sort_size]]
	mov	qword ptr [word ptr [sort_buffer_size.size_bound]],  rax
	mov	rbp, rbp
	cmp	qword ptr [word ptr [sort_buffer_size.size_bound]],  0
	lea	rsi, [rsi]
	jne	.label_900
	nop	
	call	default_sort_size
	mov	qword ptr [word ptr [sort_buffer_size.size_bound]],  rax
.label_900:
	mov	rbp, rbp
	jmp	.label_911
.label_911:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0xe0]
	lea	rdi, [rdi]
	imul	rax, qword ptr [rbp - 0x38]
	add	rax, 1
	mov	rsp, rsp
	mov	qword ptr [rbp - 0xe8], rax
	mov	rax, qword ptr [rbp - 0xe0]
	mov	rcx, qword ptr [rbp - 0xe8]
	mov	qword ptr [rbp - 0xf8], rax
	lea	rdi, [rdi]
	mov	rax, rcx
	lea	rdi, [rdi]
	xor	edx, edx
	div	qword ptr [rbp - 0x38]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0xf8]
	nop	
	cmp	rcx, rax
	lea	rdi, [rdi]
	jne	.label_910
	mov	rax,  qword ptr [word ptr [sort_buffer_size.size_bound]]
	mov	rbp, rbp
	sub	rax, qword ptr [rbp - 0x40]
	mov	rsp, rsp
	cmp	rax, qword ptr [rbp - 0xe8]
	ja	.label_907
.label_910:
	mov	rax,  qword ptr [word ptr [sort_buffer_size.size_bound]]
	mov	rsp, rsp
	mov	qword ptr [rbp - 8], rax
	jmp	.label_906
.label_907:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0xe8]
	mov	rsp, rsp
	add	rax, qword ptr [rbp - 0x40]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x40], rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x48]
	add	rax, 1
	mov	qword ptr [rbp - 0x48], rax
	nop	
	jmp	.label_903
.label_901:
	nop	
	mov	rax, qword ptr [rbp - 0x40]
	mov	qword ptr [rbp - 8], rax
.label_906:
	nop	
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x100
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40f7d0

	.globl queue_init
	.type queue_init, @function
queue_init:
	mov	rbp, rbp
	push	rbp
	lea	rsi, [rsi]
	mov	rbp, rsp
	mov	rbp, rbp
	sub	rsp, 0x20
	lea	rsi, [rsi]
	movabs	rax, OFFSET FLAT:compare_nodes
	mov	qword ptr [rbp - 8], rdi
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsi, qword ptr [rbp - 0x10]
	shl	rsi, 1
	mov	rdi, rax
	mov	rbp, rbp
	call	heap_alloc
	mov	rsp, rsp
	xor	ecx, ecx
	mov	rsp, rsp
	mov	esi, ecx
	mov	rdi, qword ptr [rbp - 8]
	mov	qword ptr [rdi], rax
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 8]
	add	rax, 8
	lea	rsi, [rsi]
	mov	rdi, rax
	call	pthread_mutex_init
	xor	ecx, ecx
	mov	rbp, rbp
	mov	esi, ecx
	mov	rdi, qword ptr [rbp - 8]
	add	rdi, 0x30
	mov	dword ptr [rbp - 0x14], eax
	call	pthread_cond_init
	mov	dword ptr [rbp - 0x18], eax
	add	rsp, 0x20
	pop	rbp
	nop	
	ret	
	.section	.text
	.align	16
	#Procedure 0x40f860

	.globl merge_tree_init
	.type merge_tree_init, @function
merge_tree_init:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x40
	mov	rsp, rsp
	mov	qword ptr [rbp - 8], rdi
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	rdx, qword ptr [rbp - 8]
	shl	rdx, 8
	mov	rdi, rdx
	lea	rsi, [rsi]
	call	xmalloc
	nop	
	xor	ecx, ecx
	nop	
	mov	esi, ecx
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x20], rax
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x28], rax
	nop	
	mov	rax, qword ptr [rbp - 0x28]
	nop	
	mov	qword ptr [rax + 0x18], 0
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rax + 0x10], 0
	mov	rax, qword ptr [rbp - 0x28]
	mov	rbp, rbp
	mov	qword ptr [rax + 8], 0
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rax], 0
	nop	
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rax + 0x20], 0
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x10]
	nop	
	mov	rdx, qword ptr [rbp - 0x28]
	mov	qword ptr [rdx + 0x30], rax
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x28]
	mov	qword ptr [rdx + 0x28], rax
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rax + 0x38], 0
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x28]
	mov	rbp, rbp
	mov	dword ptr [rax + 0x50], 0
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x28]
	mov	rbp, rbp
	mov	byte ptr [rax + 0x54], 0
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, 0x58
	mov	rdi, rax
	mov	rbp, rbp
	call	pthread_mutex_init
	xor	r9d, r9d
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x28]
	mov	rdx, qword ptr [rbp - 0x28]
	nop	
	add	rdx, 0x80
	nop	
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	r8, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x30], rsi
	lea	rsi, [rsi]
	mov	rsi, rdx
	nop	
	mov	rdx, qword ptr [rbp - 0x30]
	mov	dword ptr [rbp - 0x34], eax
	call	init_node
	mov	rcx, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x40], rax
	mov	rax, rcx
	lea	rsi, [rsi]
	add	rsp, 0x40
	mov	rbp, rbp
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40f9a0

	.globl sortlines
	.type sortlines, @function
sortlines:
	push	rbp
	mov	rsp, rsp
	mov	rbp, rsp
	mov	rbp, rbp
	sub	rsp, 0xd0
	mov	rsp, rsp
	mov	rax, qword ptr [rbp + 0x10]
	nop	
	mov	qword ptr [rbp - 8], rdi
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x10], rsi
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x18], rdx
	mov	qword ptr [rbp - 0x20], rcx
	mov	qword ptr [rbp - 0x28], r8
	mov	qword ptr [rbp - 0x30], r9
	nop	
	mov	qword ptr [rbp - 0x38], rax
	mov	rax, qword ptr [rbp - 0x20]
	mov	rax, qword ptr [rax + 0x28]
	mov	rcx, qword ptr [rbp - 0x20]
	nop	
	add	rax, qword ptr [rcx + 0x30]
	mov	qword ptr [rbp - 0x40], rax
	mov	rax, qword ptr [rbp - 0x10]
	shr	rax, 1
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x48], rax
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x10]
	sub	rax, qword ptr [rbp - 0x48]
	mov	qword ptr [rbp - 0x50], rax
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x90], rax
	mov	rax, qword ptr [rbp - 0x48]
	mov	qword ptr [rbp - 0x88], rax
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x80], rax
	mov	rax, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	mov	rax, qword ptr [rax + 0x40]
	mov	qword ptr [rbp - 0x78], rax
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x70], rax
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x68], rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x38]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x60], rax
	cmp	qword ptr [rbp - 0x10], 1
	mov	rsp, rsp
	jbe	.label_915
	mov	eax, 0x20000
	mov	rsp, rsp
	mov	ecx, eax
	cmp	rcx, qword ptr [rbp - 0x40]
	ja	.label_915
	lea	rdi, [rbp - 0x58]
	xor	eax, eax
	mov	rbp, rbp
	mov	esi, eax
	movabs	rdx, OFFSET FLAT:sortlines_thread
	mov	rbp, rbp
	lea	rcx, [rbp - 0x90]
	call	pthread_create
	mov	rsp, rsp
	cmp	eax, 0
	jne	.label_915
	mov	rsp, rsp
	xor	eax, eax
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x20]
	nop	
	sub	rcx, qword ptr [rsi + 0x28]
	shl	rcx, 5
	mov	rsp, rsp
	add	rdx, rcx
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x50]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x20]
	nop	
	mov	rdi, qword ptr [rdi + 0x48]
	mov	rsp, rsp
	mov	r8, qword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	mov	r9, qword ptr [rbp - 0x30]
	mov	rsp, rsp
	mov	r10, qword ptr [rbp - 0x38]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0xb0], rdi
	lea	rsi, [rsi]
	mov	rdi, rdx
	mov	rdx, rcx
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0xb0]
	mov	qword ptr [rsp], r10
	lea	rdi, [rdi]
	call	sortlines
	lea	rsi, [rsi]
	xor	eax, eax
	mov	rsp, rsp
	mov	esi, eax
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x58]
	call	pthread_join
	nop	
	mov	dword ptr [rbp - 0xb4], eax
	lea	rdi, [rdi]
	jmp	.label_918
.label_915:
	mov	eax, 1
	mov	ecx, eax
	xor	eax, eax
	mov	edx, eax
	mov	rsi, qword ptr [rbp - 0x20]
	mov	rsi, qword ptr [rsi + 0x28]
	mov	qword ptr [rbp - 0x98], rsi
	nop	
	mov	rsi, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rsi + 0x30]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0xa0], rsi
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 8]
	sub	rdx, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	shl	rdx, 5
	lea	rdi, [rdi]
	add	rsi, rdx
	mov	qword ptr [rbp - 0xa8], rsi
	nop	
	cmp	rcx, qword ptr [rbp - 0xa0]
	jae	.label_917
	lea	rdi, [rdi]
	xor	ecx, ecx
	mov	rsp, rsp
	xor	eax, eax
	mov	edx, eax
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 8]
	mov	rdi, rdx
	mov	rbp, rbp
	sub	rdi, qword ptr [rbp - 0x98]
	mov	rsp, rsp
	shl	rdi, 5
	add	rsi, rdi
	mov	rdi, qword ptr [rbp - 0xa0]
	mov	rsp, rsp
	mov	r8, qword ptr [rbp - 0xa8]
	nop	
	mov	r9, qword ptr [rbp - 0x98]
	shr	r9, 1
	sub	rdx, r9
	lea	rsi, [rsi]
	shl	rdx, 5
	add	r8, rdx
	mov	rsp, rsp
	mov	qword ptr [rbp - 0xc0], rdi
	lea	rdi, [rdi]
	mov	rdi, rsi
	mov	rsi, qword ptr [rbp - 0xc0]
	mov	rdx, r8
	mov	rsp, rsp
	call	sequential_sort
.label_917:
	mov	rbp, rbp
	mov	eax, 1
	mov	ecx, eax
	cmp	rcx, qword ptr [rbp - 0x98]
	mov	rsp, rsp
	jae	.label_916
	mov	rsp, rsp
	xor	ecx, ecx
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 8]
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x98]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0xa8]
	call	sequential_sort
.label_916:
	xor	eax, eax
	mov	ecx, eax
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	mov	qword ptr [rsi], rdx
	mov	rdx, qword ptr [rbp - 8]
	mov	rsi, rcx
	lea	rdi, [rdi]
	sub	rsi, qword ptr [rbp - 0x98]
	mov	rbp, rbp
	shl	rsi, 5
	lea	rdi, [rdi]
	add	rdx, rsi
	mov	rsi, qword ptr [rbp - 0x20]
	mov	qword ptr [rsi + 8], rdx
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 8]
	mov	rbp, rbp
	mov	rsi, rcx
	mov	rsp, rsp
	sub	rsi, qword ptr [rbp - 0x98]
	shl	rsi, 5
	mov	rsp, rsp
	add	rdx, rsi
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	mov	qword ptr [rsi + 0x10], rdx
	mov	rdx, qword ptr [rbp - 8]
	mov	rsi, rcx
	sub	rsi, qword ptr [rbp - 0x98]
	shl	rsi, 5
	add	rdx, rsi
	lea	rdi, [rdi]
	sub	rcx, qword ptr [rbp - 0xa0]
	lea	rdi, [rdi]
	shl	rcx, 5
	mov	rsp, rsp
	add	rdx, rcx
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	mov	qword ptr [rcx + 0x18], rdx
	mov	rdi, qword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x20]
	nop	
	call	queue_insert
	nop	
	mov	rdi, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x38]
	mov	rsp, rsp
	call	merge_loop
.label_918:
	add	rsp, 0xd0
	pop	rbp
	nop	
	ret	
	.section	.text
	.align	16
	#Procedure 0x40fd40

	.globl write_unique
	.type write_unique, @function
write_unique:
	nop	
	push	rbp
	nop	
	mov	rbp, rsp
	lea	rsi, [rsi]
	sub	rsp, 0x20
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 8], rdi
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x10], rsi
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x18], rdx
	lea	rsi, [rsi]
	test	byte ptr [byte ptr [unique]],  1
	je	.label_919
	cmp	qword ptr [word ptr [saved_line]],  0
	lea	rdi, [rdi]
	je	.label_920
	movabs	rsi, OFFSET FLAT:saved_line
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 8]
	call	compare
	cmp	eax, 0
	jne	.label_920
	jmp	.label_921
.label_920:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 8]
	nop	
	mov	rcx, qword ptr [rax]
	nop	
	mov	qword ptr [word ptr [saved_line]],  rcx
	mov	rcx, qword ptr [rax + 8]
	lea	rsi, [rsi]
	mov	qword ptr [word ptr [label_922]],  rcx
	mov	rcx, qword ptr [rax + 0x10]
	mov	qword ptr [word ptr [label_923]],  rcx
	mov	rbp, rbp
	mov	rax, qword ptr [rax + 0x18]
	mov	rbp, rbp
	mov	qword ptr [word ptr [label_924]],  rax
.label_919:
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x18]
	call	write_line
.label_921:
	mov	rsp, rsp
	add	rsp, 0x20
	mov	rbp, rbp
	pop	rbp
	nop	
	ret	
	.section	.text
	.align	16
	#Procedure 0x40fe10

	.globl reap_all
	.type reap_all, @function
reap_all:
	push	rbp
	mov	rbp, rsp
	mov	rbp, rbp
	sub	rsp, 0x10
	mov	rsp, rsp
	jmp	.label_925
.label_925:
	xor	eax, eax
	cmp	eax,  dword ptr [dword ptr [nprocs]]
	jge	.label_926
	lea	rsi, [rsi]
	mov	edi, 0xffffffff
	call	reap
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 4], eax
	nop	
	jmp	.label_925
.label_926:
	add	rsp, 0x10
	nop	
	pop	rbp
	nop	
	ret	
	.section	.text
	.align	16
	#Procedure 0x40fe60

	.globl default_sort_size
	.type default_sort_size, @function
default_sort_size:
	push	rbp
	mov	rbp, rbp
	mov	rbp, rsp
	sub	rsp, 0x40
	nop	
	mov	edi, 2
	lea	rdi, [rdi]
	lea	rsi, [rbp - 0x18]
	mov	qword ptr [rbp - 8], -1
	call	getrlimit
	lea	rdi, [rdi]
	cmp	eax, 0
	jne	.label_928
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x18]
	nop	
	cmp	rax, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	jae	.label_928
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 8], rax
.label_928:
	mov	edi, 9
	lea	rsi, [rbp - 0x18]
	lea	rsi, [rsi]
	call	getrlimit
	cmp	eax, 0
	jne	.label_927
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x18]
	nop	
	cmp	rax, qword ptr [rbp - 8]
	jae	.label_927
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x18]
	nop	
	mov	qword ptr [rbp - 8], rax
.label_927:
	lea	rdi, [rdi]
	mov	edi, 5
	lea	rsi, [rsi]
	lea	rsi, [rbp - 0x18]
	nop	
	mov	rax, qword ptr [rbp - 8]
	shr	rax, 1
	mov	rsp, rsp
	mov	qword ptr [rbp - 8], rax
	nop	
	call	getrlimit
	cmp	eax, 0
	jne	.label_931
	mov	rax, qword ptr [rbp - 0x18]
	shr	rax, 4
	mov	rbp, rbp
	imul	rax, rax, 0xf
	cmp	rax, qword ptr [rbp - 8]
	jae	.label_931
	mov	rax, qword ptr [rbp - 0x18]
	shr	rax, 4
	mov	rbp, rbp
	imul	rax, rax, 0xf
	mov	qword ptr [rbp - 8], rax
.label_931:
	call	physmem_available
	movsd	qword ptr [rbp - 0x20], xmm0
	call	physmem_total
	movsd	xmm1,  qword ptr [word ptr [label_932]]
	mov	rbp, rbp
	movsd	qword ptr [rbp - 0x28], xmm0
	mov	rsp, rsp
	movsd	xmm0, qword ptr [rbp - 0x20]
	movsd	xmm2, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	divsd	xmm2, xmm1
	ucomisd	xmm0, xmm2
	nop	
	jbe	.label_933
	movsd	xmm0, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	movsd	qword ptr [rbp - 0x38], xmm0
	jmp	.label_930
.label_933:
	movsd	xmm0,  qword ptr [word ptr [label_932]]
	movsd	xmm1, qword ptr [rbp - 0x28]
	nop	
	divsd	xmm1, xmm0
	mov	rbp, rbp
	movsd	qword ptr [rbp - 0x38], xmm1
.label_930:
	movsd	xmm0, qword ptr [rbp - 0x38]
	mov	rbp, rbp
	movsd	qword ptr [rbp - 0x30], xmm0
	movsd	xmm0, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	movsd	xmm1,  qword ptr [word ptr [rip + label_929]]
	mulsd	xmm0, xmm1
	movaps	xmm1,  xmmword ptr [word ptr [rip + label_247]]
	movq	xmm2, qword ptr [rbp - 8]
	nop	
	punpckldq	xmm2, xmm1
	movapd	xmm1,  xmmword ptr [word ptr [rip + label_248]]
	subpd	xmm2, xmm1
	mov	rsp, rsp
	pshufd	xmm1, xmm2, 0x4e
	nop	
	addpd	xmm1, xmm2
	mov	rbp, rbp
	ucomisd	xmm1, xmm0
.label_2337:
	jbe	.label_935
	movsd	xmm0, qword ptr [rbp - 0x28]
	movsd	xmm1,  qword ptr [word ptr [rip + label_929]]
	mulsd	xmm0, xmm1
	movsd	xmm1,  qword ptr [word ptr [rip + label_257]]
	mov	rbp, rbp
	movaps	xmm2, xmm0
	mov	rsp, rsp
	subsd	xmm2, xmm1
	lea	rsi, [rsi]
	cvttsd2si	rax, xmm2
	nop	
	movabs	rcx, 0x8000000000000000
	lea	rdi, [rdi]
	xor	rax, rcx
	nop	
	cvttsd2si	rcx, xmm0
	mov	rbp, rbp
	ucomisd	xmm0, xmm1
	cmovb	rax, rcx
	mov	qword ptr [rbp - 8], rax
.label_935:
	movsd	xmm0, qword ptr [rbp - 0x30]
	movaps	xmm1,  xmmword ptr [word ptr [rip + label_247]]
	movq	xmm2, qword ptr [rbp - 8]
	mov	rbp, rbp
	punpckldq	xmm2, xmm1
	lea	rsi, [rsi]
	movapd	xmm1,  xmmword ptr [word ptr [rip + label_248]]
	mov	rbp, rbp
	subpd	xmm2, xmm1
	nop	
	pshufd	xmm1, xmm2, 0x4e
	addpd	xmm1, xmm2
	ucomisd	xmm1, xmm0
	jbe	.label_934
	movsd	xmm0, qword ptr [rbp - 0x30]
	movsd	xmm1,  qword ptr [word ptr [rip + label_257]]
	movaps	xmm2, xmm0
	subsd	xmm2, xmm1
	mov	rsp, rsp
	cvttsd2si	rax, xmm2
	movabs	rcx, 0x8000000000000000
	xor	rax, rcx
	nop	
	cvttsd2si	rcx, xmm0
	ucomisd	xmm1, xmm0
	lea	rsi, [rsi]
	cmova	rax, rcx
	mov	qword ptr [rbp - 8], rax
.label_934:
	mov	rax, qword ptr [rbp - 8]
	mov	ecx,  dword ptr [dword ptr [nmerge]]
	lea	rdi, [rdi]
	mov	edx, ecx
	imul	rdx, rdx, 0x22
	cmp	rax, rdx
	mov	rbp, rbp
	jbe	.label_937
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x40], rax
	jmp	.label_936
.label_937:
	mov	eax,  dword ptr [dword ptr [nmerge]]
	mov	ecx, eax
	mov	rsp, rsp
	imul	rcx, rcx, 0x22
	mov	qword ptr [rbp - 0x40], rcx
.label_936:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x40]
	nop	
	add	rsp, 0x40
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x410130

	.globl compare_nodes
	.type compare_nodes, @function
compare_nodes:
	lea	rsi, [rsi]
	push	rbp
	mov	rbp, rsp
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	rsi, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x20], rsi
	mov	rsi, qword ptr [rbp - 0x18]
	nop	
	mov	qword ptr [rbp - 0x28], rsi
	nop	
	mov	rsi, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	mov	eax, dword ptr [rsi + 0x50]
	mov	rsi, qword ptr [rbp - 0x28]
	cmp	eax, dword ptr [rsi + 0x50]
	mov	rbp, rbp
	jne	.label_938
	mov	rax, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	mov	rax, qword ptr [rax + 0x28]
	mov	rcx, qword ptr [rbp - 0x20]
	add	rax, qword ptr [rcx + 0x30]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x28]
	nop	
	mov	rcx, qword ptr [rcx + 0x28]
	mov	rdx, qword ptr [rbp - 0x28]
	add	rcx, qword ptr [rdx + 0x30]
	cmp	rax, rcx
	mov	rbp, rbp
	setb	sil
	mov	rbp, rbp
	and	sil, 1
	nop	
	movzx	edi, sil
	nop	
	mov	dword ptr [rbp - 4], edi
	jmp	.label_939
.label_938:
	nop	
	mov	rax, qword ptr [rbp - 0x20]
	mov	ecx, dword ptr [rax + 0x50]
	mov	rax, qword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	cmp	ecx, dword ptr [rax + 0x50]
	nop	
	setb	dl
	lea	rsi, [rsi]
	and	dl, 1
	nop	
	movzx	ecx, dl
	mov	rsp, rsp
	mov	dword ptr [rbp - 4], ecx
.label_939:
	mov	eax, dword ptr [rbp - 4]
	lea	rsi, [rsi]
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4101f0

	.globl init_node
	.type init_node, @function
init_node:
	push	rbp
	mov	rbp, rsp
	lea	rdi, [rdi]
	sub	rsp, 0x90
	nop	
	mov	al, r9b
	nop	
	mov	qword ptr [rbp - 8], rdi
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	qword ptr [rbp - 0x20], rcx
	mov	qword ptr [rbp - 0x28], r8
	and	al, 1
	mov	byte ptr [rbp - 0x29], al
	lea	rsi, [rsi]
	test	byte ptr [rbp - 0x29], 1
	je	.label_943
	mov	rax, qword ptr [rbp - 8]
	nop	
	mov	rax, qword ptr [rax + 0x28]
	mov	qword ptr [rbp - 0x80], rax
	jmp	.label_942
.label_943:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax + 0x30]
	mov	qword ptr [rbp - 0x80], rax
.label_942:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x80]
	xor	ecx, ecx
	lea	rdi, [rdi]
	mov	edx, ecx
	mov	qword ptr [rbp - 0x38], rax
	mov	rax, qword ptr [rbp - 0x38]
	mov	rsp, rsp
	shr	rax, 1
	mov	qword ptr [rbp - 0x40], rax
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x38]
	sub	rax, qword ptr [rbp - 0x40]
	mov	qword ptr [rbp - 0x48], rax
	mov	rax, qword ptr [rbp - 0x18]
	nop	
	mov	rsi, rdx
	sub	rsi, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	shl	rsi, 5
	lea	rsi, [rsi]
	add	rax, rsi
	mov	qword ptr [rbp - 0x50], rax
	mov	rax, qword ptr [rbp - 0x50]
	sub	rdx, qword ptr [rbp - 0x40]
	shl	rdx, 5
	mov	rbp, rbp
	add	rax, rdx
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x58], rax
	mov	rbp, rbp
	test	byte ptr [rbp - 0x29], 1
	lea	rsi, [rsi]
	je	.label_940
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	add	rax, 0x10
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x88], rax
	mov	rbp, rbp
	jmp	.label_941
.label_940:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 8]
	nop	
	add	rax, 0x18
	mov	qword ptr [rbp - 0x88], rax
.label_941:
	mov	rax, qword ptr [rbp - 0x88]
	xor	ecx, ecx
	mov	esi, ecx
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x60], rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	rdx, rax
	add	rdx, 0x80
	mov	qword ptr [rbp - 0x10], rdx
	mov	qword ptr [rbp - 0x68], rax
	mov	rax, qword ptr [rbp - 0x50]
	mov	rdx, qword ptr [rbp - 0x68]
	mov	rsp, rsp
	mov	qword ptr [rdx + 0x10], rax
	mov	rdx, qword ptr [rbp - 0x68]
	mov	qword ptr [rdx], rax
	mov	rax, qword ptr [rbp - 0x58]
	mov	rdx, qword ptr [rbp - 0x68]
	lea	rsi, [rsi]
	mov	qword ptr [rdx + 0x18], rax
	nop	
	mov	rdx, qword ptr [rbp - 0x68]
	mov	qword ptr [rdx + 8], rax
	mov	rax, qword ptr [rbp - 0x60]
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x68]
	lea	rsi, [rsi]
	mov	qword ptr [rdx + 0x20], rax
	mov	rax, qword ptr [rbp - 0x40]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x68]
	lea	rdi, [rdi]
	mov	qword ptr [rdx + 0x28], rax
	mov	rax, qword ptr [rbp - 0x48]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x68]
	mov	qword ptr [rdx + 0x30], rax
	mov	rax, qword ptr [rbp - 8]
	mov	rdx, qword ptr [rbp - 0x68]
	mov	rsp, rsp
	mov	qword ptr [rdx + 0x38], rax
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	ecx, dword ptr [rax + 0x50]
	lea	rdi, [rdi]
	add	ecx, 1
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x68]
	mov	rbp, rbp
	mov	dword ptr [rax + 0x50], ecx
	mov	rax, qword ptr [rbp - 0x68]
	mov	byte ptr [rax + 0x54], 0
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x68]
	lea	rdi, [rdi]
	add	rax, 0x58
	lea	rsi, [rsi]
	mov	rdi, rax
	call	pthread_mutex_init
	cmp	qword ptr [rbp - 0x20], 1
	mov	dword ptr [rbp - 0x8c], eax
	jbe	.label_945
	mov	r9d, 1
	mov	rax, qword ptr [rbp - 0x20]
	shr	rax, 1
	mov	qword ptr [rbp - 0x70], rax
	nop	
	mov	rax, qword ptr [rbp - 0x20]
	sub	rax, qword ptr [rbp - 0x70]
	nop	
	mov	qword ptr [rbp - 0x78], rax
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 0x68]
	nop	
	mov	qword ptr [rcx + 0x40], rax
	mov	rdi, qword ptr [rbp - 0x68]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x50]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x70]
	lea	rsi, [rsi]
	mov	r8, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	call	init_node
	lea	rsi, [rsi]
	xor	r9d, r9d
	mov	qword ptr [rbp - 0x10], rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 0x68]
	mov	qword ptr [rcx + 0x48], rax
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x68]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x58]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x78]
	lea	rsi, [rsi]
	mov	r8, qword ptr [rbp - 0x28]
	call	init_node
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_944
.label_945:
	mov	rax, qword ptr [rbp - 0x68]
	mov	rsp, rsp
	mov	qword ptr [rax + 0x40], 0
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x68]
	lea	rdi, [rdi]
	mov	qword ptr [rax + 0x48], 0
.label_944:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	add	rsp, 0x90
	pop	rbp
	lea	rdi, [rdi]
	ret	
	.section	.text
	.align	16
	#Procedure 0x4104c0

	.globl sortlines_thread
	.type sortlines_thread, @function
sortlines_thread:
	push	rbp
	mov	rbp, rbp
	mov	rbp, rsp
	nop	
	sub	rsp, 0x20
	nop	
	mov	qword ptr [rbp - 8], rdi
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x10], rdi
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rdi]
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rax + 8]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	rdx, qword ptr [rax + 0x10]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rax + 0x18]
	mov	rax, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	r8, qword ptr [rax + 0x20]
	mov	rax, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	r9, qword ptr [rax + 0x28]
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax + 0x30]
	mov	rbp, rbp
	mov	qword ptr [rsp], rax
	lea	rsi, [rsi]
	call	sortlines
	nop	
	xor	r10d, r10d
	lea	rsi, [rsi]
	mov	eax, r10d
	add	rsp, 0x20
	mov	rsp, rsp
	pop	rbp
	lea	rsi, [rsi]
	ret	
	.section	.text
	.align	16
	#Procedure 0x410550

	.globl sequential_sort
	.type sequential_sort, @function
sequential_sort:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x80
	mov	al, cl
	mov	qword ptr [rbp - 8], rdi
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	rbp, rbp
	and	al, 1
	mov	byte ptr [rbp - 0x19], al
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x10], 2
	mov	rsp, rsp
	jne	.label_949
	mov	rax, qword ptr [rbp - 8]
	nop	
	add	rax, -0x20
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 8]
	add	rcx, -0x40
	mov	rbp, rbp
	mov	rdi, rax
	mov	rsi, rcx
	call	compare
	lea	rdi, [rdi]
	xor	edx, edx
	mov	rbp, rbp
	cmp	edx, eax
	lea	rsi, [rsi]
	setl	r8b
	mov	rbp, rbp
	and	r8b, 1
	mov	rsp, rsp
	movzx	eax, r8b
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x20], eax
	lea	rsi, [rsi]
	test	byte ptr [rbp - 0x19], 1
	mov	rbp, rbp
	je	.label_956
	mov	eax, 0xffffffff
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	sub	eax, dword ptr [rbp - 0x20]
	mov	rsp, rsp
	movsxd	rdx, eax
	shl	rdx, 5
	lea	rdi, [rdi]
	add	rdx, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rdx]
	lea	rsi, [rsi]
	mov	qword ptr [rcx - 0x20], rsi
	mov	rsi, qword ptr [rdx + 8]
	mov	qword ptr [rcx - 0x18], rsi
	nop	
	mov	rsi, qword ptr [rdx + 0x10]
	mov	qword ptr [rcx - 0x10], rsi
	mov	rdx, qword ptr [rdx + 0x18]
	mov	qword ptr [rcx - 8], rdx
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	eax, dword ptr [rbp - 0x20]
	add	eax, 0xfffffffe
	movsxd	rdx, eax
	shl	rdx, 5
	nop	
	add	rdx, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rdx]
	mov	qword ptr [rcx - 0x40], rsi
	mov	rsi, qword ptr [rdx + 8]
	mov	qword ptr [rcx - 0x38], rsi
	mov	rsi, qword ptr [rdx + 0x10]
	mov	qword ptr [rcx - 0x30], rsi
	mov	rdx, qword ptr [rdx + 0x18]
	mov	qword ptr [rcx - 0x28], rdx
	jmp	.label_951
.label_956:
	cmp	dword ptr [rbp - 0x20], 0
	je	.label_955
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 8]
	mov	rdx, qword ptr [rcx - 0x20]
	mov	rbp, rbp
	mov	qword ptr [rax - 0x20], rdx
	nop	
	mov	rdx, qword ptr [rcx - 0x18]
	mov	qword ptr [rax - 0x18], rdx
	mov	rbp, rbp
	mov	rdx, qword ptr [rcx - 0x10]
	lea	rsi, [rsi]
	mov	qword ptr [rax - 0x10], rdx
	mov	rcx, qword ptr [rcx - 8]
	lea	rsi, [rsi]
	mov	qword ptr [rax - 8], rcx
	mov	rax, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 8]
	mov	rdx, qword ptr [rcx - 0x40]
	mov	rsp, rsp
	mov	qword ptr [rax - 0x20], rdx
	mov	rbp, rbp
	mov	rdx, qword ptr [rcx - 0x38]
	lea	rdi, [rdi]
	mov	qword ptr [rax - 0x18], rdx
	mov	rsp, rsp
	mov	rdx, qword ptr [rcx - 0x30]
	lea	rsi, [rsi]
	mov	qword ptr [rax - 0x10], rdx
	mov	rsp, rsp
	mov	rcx, qword ptr [rcx - 0x28]
	mov	qword ptr [rax - 8], rcx
	mov	rax, qword ptr [rbp - 8]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rcx - 0x20]
	mov	qword ptr [rax - 0x40], rdx
	mov	rbp, rbp
	mov	rdx, qword ptr [rcx - 0x18]
	mov	qword ptr [rax - 0x38], rdx
	nop	
	mov	rdx, qword ptr [rcx - 0x10]
	nop	
	mov	qword ptr [rax - 0x30], rdx
	nop	
	mov	rcx, qword ptr [rcx - 8]
	mov	qword ptr [rax - 0x28], rcx
.label_955:
	jmp	.label_951
.label_951:
	nop	
	jmp	.label_953
.label_949:
	xor	eax, eax
	mov	rbp, rbp
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	shr	rdx, 1
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x28], rdx
	mov	rdx, qword ptr [rbp - 0x10]
	sub	rdx, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x30], rdx
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 8]
	nop	
	mov	qword ptr [rbp - 0x38], rdx
	mov	rdx, qword ptr [rbp - 8]
	mov	rsp, rsp
	sub	rcx, qword ptr [rbp - 0x28]
	shl	rcx, 5
	mov	rbp, rbp
	add	rdx, rcx
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x40], rdx
	mov	rdi, qword ptr [rbp - 0x40]
	mov	rsi, qword ptr [rbp - 0x30]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x18]
	test	byte ptr [rbp - 0x19], 1
	mov	qword ptr [rbp - 0x58], rdi
	mov	qword ptr [rbp - 0x60], rsi
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x68], rcx
	je	.label_954
	mov	rax, qword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x70], rax
	jmp	.label_952
.label_954:
	xor	eax, eax
	lea	rsi, [rsi]
	mov	ecx, eax
	mov	qword ptr [rbp - 0x70], rcx
	nop	
	jmp	.label_952
.label_952:
	mov	rax, qword ptr [rbp - 0x70]
	xor	ecx, ecx
	mov	edx, ecx
	nop	
	sub	rdx, rax
	lea	rsi, [rsi]
	shl	rdx, 5
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x68]
	mov	rbp, rbp
	add	rax, rdx
	mov	sil, byte ptr [rbp - 0x19]
	and	sil, 1
	mov	rdi, qword ptr [rbp - 0x58]
	mov	rdx, qword ptr [rbp - 0x60]
	mov	byte ptr [rbp - 0x71], sil
	mov	rsi, rdx
	lea	rdi, [rdi]
	mov	rdx, rax
	mov	r8b, byte ptr [rbp - 0x71]
	mov	rbp, rbp
	movzx	ecx, r8b
	call	sequential_sort
	mov	rbp, rbp
	mov	ecx, 1
	nop	
	mov	eax, ecx
	lea	rdi, [rdi]
	cmp	rax, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	jae	.label_948
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	mov	al, byte ptr [rbp - 0x19]
	xor	al, 0xff
	and	al, 1
	mov	rbp, rbp
	movzx	ecx, al
	call	sequential_sort
	jmp	.label_946
.label_948:
	lea	rsi, [rsi]
	test	byte ptr [rbp - 0x19], 1
	lea	rsi, [rsi]
	jne	.label_947
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x38]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rcx - 0x20]
	mov	qword ptr [rax - 0x20], rdx
	mov	rdx, qword ptr [rcx - 0x18]
	mov	qword ptr [rax - 0x18], rdx
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rcx - 0x10]
	mov	qword ptr [rax - 0x10], rdx
	mov	rcx, qword ptr [rcx - 8]
	lea	rsi, [rsi]
	mov	qword ptr [rax - 8], rcx
.label_947:
	jmp	.label_946
.label_946:
	test	byte ptr [rbp - 0x19], 1
	lea	rdi, [rdi]
	je	.label_950
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x48], rax
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x50], rax
	nop	
	jmp	.label_957
.label_950:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x48], rax
	nop	
	mov	rax, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x50], rax
.label_957:
	mov	rdi, qword ptr [rbp - 0x48]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x50]
	call	mergelines
.label_953:
	mov	rbp, rbp
	add	rsp, 0x80
	lea	rsi, [rsi]
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x410900

	.globl queue_insert
	.type queue_insert, @function
queue_insert:
	push	rbp
	nop	
	mov	rbp, rsp
	mov	rsp, rsp
	sub	rsp, 0x20
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 8], rdi
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x10], rsi
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 8]
	nop	
	add	rsi, 8
	mov	rsp, rsp
	mov	rdi, rsi
	call	pthread_mutex_lock
	mov	rsi, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rsi]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	dword ptr [rbp - 0x14], eax
	call	heap_insert
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	byte ptr [rsi + 0x54], 1
	nop	
	mov	rsi, qword ptr [rbp - 8]
	mov	rbp, rbp
	add	rsi, 0x30
	mov	rdi, rsi
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x18], eax
	lea	rsi, [rsi]
	call	pthread_cond_signal
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	add	rsi, 8
	lea	rsi, [rsi]
	mov	rdi, rsi
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x1c], eax
	call	pthread_mutex_unlock
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x20], eax
	lea	rdi, [rdi]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4109a0

	.globl merge_loop
	.type merge_loop, @function
merge_loop:
	push	rbp
	lea	rdi, [rdi]
	mov	rbp, rsp
	sub	rsp, 0x30
	nop	
	mov	qword ptr [rbp - 8], rdi
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x10], rsi
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x18], rdx
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x20], rcx
.label_960:
	mov	rdi, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	call	queue_pop
	mov	qword ptr [rbp - 0x28], rax
	mov	rax, qword ptr [rbp - 0x28]
	mov	rbp, rbp
	cmp	dword ptr [rax + 0x50], 0
	jne	.label_959
	mov	rdi, qword ptr [rbp - 0x28]
	mov	rbp, rbp
	call	unlock_node
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 8]
	nop	
	mov	rsi, qword ptr [rbp - 0x28]
	call	queue_insert
	lea	rdi, [rdi]
	jmp	.label_958
.label_959:
	mov	rdi, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x20]
	nop	
	call	mergelines_node
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x28]
	call	queue_check_insert
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x28]
	call	queue_check_insert_parent
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x28]
	call	unlock_node
	mov	rbp, rbp
	jmp	.label_960
.label_958:
	add	rsp, 0x30
	pop	rbp
	lea	rsi, [rsi]
	ret	
	.section	.text
	.align	16
	#Procedure 0x410a70

	.globl mergelines
	.type mergelines, @function
mergelines:
	push	rbp
	lea	rsi, [rsi]
	mov	rbp, rsp
	mov	rsp, rsp
	sub	rsp, 0x30
	xor	eax, eax
	mov	ecx, eax
	mov	qword ptr [rbp - 8], rdi
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x18], rdx
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x10]
	shr	rdx, 1
	nop	
	mov	qword ptr [rbp - 0x20], rdx
	mov	rdx, qword ptr [rbp - 0x10]
	sub	rdx, qword ptr [rbp - 0x20]
	nop	
	mov	qword ptr [rbp - 0x28], rdx
	mov	rdx, qword ptr [rbp - 8]
	mov	rbp, rbp
	sub	rcx, qword ptr [rbp - 0x20]
	nop	
	shl	rcx, 5
	add	rdx, rcx
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x30], rdx
.label_965:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, -0x20
	nop	
	mov	rcx, qword ptr [rbp - 0x30]
	nop	
	add	rcx, -0x20
	mov	rdi, rax
	mov	rsi, rcx
	mov	rsp, rsp
	call	compare
	lea	rdi, [rdi]
	cmp	eax, 0
	lea	rdi, [rdi]
	jg	.label_964
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 8]
	mov	rcx, rax
	mov	rbp, rbp
	add	rcx, -0x20
	mov	qword ptr [rbp - 8], rcx
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	mov	rdx, rcx
	add	rdx, -0x20
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x18], rdx
	mov	rdx, qword ptr [rcx - 0x20]
	mov	qword ptr [rax - 0x20], rdx
	mov	rbp, rbp
	mov	rdx, qword ptr [rcx - 0x18]
	lea	rsi, [rsi]
	mov	qword ptr [rax - 0x18], rdx
	nop	
	mov	rdx, qword ptr [rcx - 0x10]
	mov	qword ptr [rax - 0x10], rdx
	mov	rcx, qword ptr [rcx - 8]
	mov	qword ptr [rax - 8], rcx
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	add	rax, -1
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x20], rax
	nop	
	cmp	rax, 0
	jne	.label_967
	jmp	.label_961
.label_967:
	jmp	.label_963
.label_964:
	mov	rax, qword ptr [rbp - 8]
	nop	
	mov	rcx, rax
	mov	rsp, rsp
	add	rcx, -0x20
	mov	qword ptr [rbp - 8], rcx
	mov	rcx, qword ptr [rbp - 0x30]
	mov	rdx, rcx
	lea	rdi, [rdi]
	add	rdx, -0x20
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x30], rdx
	nop	
	mov	rdx, qword ptr [rcx - 0x20]
	lea	rsi, [rsi]
	mov	qword ptr [rax - 0x20], rdx
	mov	rdx, qword ptr [rcx - 0x18]
	mov	qword ptr [rax - 0x18], rdx
	mov	rsp, rsp
	mov	rdx, qword ptr [rcx - 0x10]
	lea	rsi, [rsi]
	mov	qword ptr [rax - 0x10], rdx
	mov	rbp, rbp
	mov	rcx, qword ptr [rcx - 8]
	mov	qword ptr [rax - 8], rcx
	nop	
	mov	rax, qword ptr [rbp - 0x28]
	nop	
	add	rax, -1
	mov	qword ptr [rbp - 0x28], rax
	mov	rsp, rsp
	cmp	rax, 0
	mov	rbp, rbp
	jne	.label_966
	nop	
	jmp	.label_962
.label_962:
	mov	rax, qword ptr [rbp - 8]
	nop	
	mov	rcx, rax
	add	rcx, -0x20
	mov	qword ptr [rbp - 8], rcx
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rdx, rcx
	lea	rdi, [rdi]
	add	rdx, -0x20
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x18], rdx
	mov	rbp, rbp
	mov	rdx, qword ptr [rcx - 0x20]
	mov	rsp, rsp
	mov	qword ptr [rax - 0x20], rdx
	mov	rbp, rbp
	mov	rdx, qword ptr [rcx - 0x18]
	mov	rsp, rsp
	mov	qword ptr [rax - 0x18], rdx
	mov	rdx, qword ptr [rcx - 0x10]
	mov	qword ptr [rax - 0x10], rdx
	mov	rcx, qword ptr [rcx - 8]
	mov	rsp, rsp
	mov	qword ptr [rax - 8], rcx
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x20]
	add	rax, -1
	mov	qword ptr [rbp - 0x20], rax
	lea	rsi, [rsi]
	cmp	rax, 0
	lea	rdi, [rdi]
	jne	.label_962
	mov	rsp, rsp
	jmp	.label_961
.label_966:
	jmp	.label_963
.label_963:
	lea	rsi, [rsi]
	jmp	.label_965
.label_961:
	add	rsp, 0x30
	mov	rbp, rbp
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x410c90

	.globl queue_pop
	.type queue_pop, @function
queue_pop:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	rbp, rbp
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	nop	
	add	rdi, 8
	call	pthread_mutex_lock
	mov	dword ptr [rbp - 0x14], eax
.label_969:
	mov	rax, qword ptr [rbp - 8]
	mov	rbp, rbp
	mov	rdi, qword ptr [rax]
	nop	
	call	heap_remove_top
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x10], rax
	cmp	rax, 0
	setne	cl
	mov	rbp, rbp
	xor	cl, 0xff
	mov	rbp, rbp
	test	cl, 1
	jne	.label_970
	lea	rdi, [rdi]
	jmp	.label_968
.label_970:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 8]
	add	rax, 0x30
	nop	
	mov	rcx, qword ptr [rbp - 8]
	add	rcx, 8
	mov	rdi, rax
	mov	rsi, rcx
	mov	rsp, rsp
	call	pthread_cond_wait
	mov	dword ptr [rbp - 0x18], eax
	mov	rbp, rbp
	jmp	.label_969
.label_968:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 8]
	add	rax, 8
	mov	rdi, rax
	call	pthread_mutex_unlock
	nop	
	mov	rdi, qword ptr [rbp - 0x10]
	nop	
	mov	dword ptr [rbp - 0x1c], eax
	mov	rsp, rsp
	call	lock_node
	nop	
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	byte ptr [rdi + 0x54], 0
	mov	rax, qword ptr [rbp - 0x10]
	add	rsp, 0x20
	pop	rbp
	lea	rdi, [rdi]
	ret	
	.section	.text
	.align	16
	#Procedure 0x410d60

	.globl unlock_node
	.type unlock_node, @function
unlock_node:
	push	rbp
	lea	rsi, [rsi]
	mov	rbp, rsp
	mov	rbp, rbp
	sub	rsp, 0x10
	nop	
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	add	rdi, 0x58
	call	pthread_mutex_unlock
	mov	dword ptr [rbp - 0xc], eax
	mov	rsp, rsp
	add	rsp, 0x10
	lea	rdi, [rdi]
	pop	rbp
	nop	
	ret	
	.section	.text
	.align	16
	#Procedure 0x410d90

	.globl mergelines_node
	.type mergelines_node, @function
mergelines_node:
	push	rbp
	mov	rbp, rsp
	lea	rsi, [rsi]
	sub	rsp, 0x60
	mov	qword ptr [rbp - 8], rdi
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x10], rsi
	nop	
	mov	qword ptr [rbp - 0x18], rdx
	mov	qword ptr [rbp - 0x20], rcx
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rcx]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x28], rcx
	mov	rcx, qword ptr [rbp - 8]
	nop	
	mov	rcx, qword ptr [rcx + 8]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x30], rcx
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	mov	eax, dword ptr [rdx + 0x50]
	mov	rsp, rsp
	add	eax, 1
	shl	eax, 1
	mov	eax, eax
	mov	rbp, rbp
	mov	edx, eax
	mov	qword ptr [rbp - 0x58], rcx
	mov	rcx, rdx
	mov	rdx, qword ptr [rbp - 0x58]
	lea	rdi, [rdi]
	shr	rdx, cl
	mov	rsp, rsp
	add	rdx, 1
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x38], rdx
	mov	rdx, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	cmp	dword ptr [rdx + 0x50], 1
	lea	rsi, [rsi]
	jbe	.label_978
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax + 0x20]
	nop	
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0x50], rax
.label_990:
	xor	eax, eax
	mov	cl, al
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 8]
	mov	rdx, qword ptr [rdx]
	mov	rsi, qword ptr [rbp - 8]
	nop	
	cmp	rdx, qword ptr [rsi + 0x10]
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x59], cl
	mov	rbp, rbp
	je	.label_989
	mov	rbp, rbp
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	rdx, qword ptr [rdx + 8]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	cmp	rdx, qword ptr [rsi + 0x18]
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x59], cl
	lea	rsi, [rsi]
	je	.label_989
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x38]
	mov	rcx, rax
	add	rcx, -1
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x38], rcx
	cmp	rax, 0
	lea	rdi, [rdi]
	setne	dl
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x59], dl
.label_989:
	mov	al, byte ptr [rbp - 0x59]
	test	al, 1
	lea	rdi, [rdi]
	jne	.label_993
	jmp	.label_991
.label_993:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 8]
	nop	
	mov	rax, qword ptr [rax]
	mov	rsp, rsp
	add	rax, -0x20
	mov	rcx, qword ptr [rbp - 8]
	mov	rcx, qword ptr [rcx + 8]
	add	rcx, -0x20
	lea	rdi, [rdi]
	mov	rdi, rax
	mov	rsi, rcx
	mov	rsp, rsp
	call	compare
	cmp	eax, 0
	jg	.label_1006
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x50]
	nop	
	mov	rcx, rax
	mov	rbp, rbp
	add	rcx, -0x20
	nop	
	mov	qword ptr [rbp - 0x50], rcx
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rcx]
	nop	
	mov	rsi, rdx
	mov	rbp, rbp
	add	rsi, -0x20
	lea	rsi, [rsi]
	mov	qword ptr [rcx], rsi
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rdx - 0x20]
	nop	
	mov	qword ptr [rax - 0x20], rcx
	nop	
	mov	rcx, qword ptr [rdx - 0x18]
	mov	qword ptr [rax - 0x18], rcx
	mov	rcx, qword ptr [rdx - 0x10]
	mov	qword ptr [rax - 0x10], rcx
	mov	rcx, qword ptr [rdx - 8]
	lea	rdi, [rdi]
	mov	qword ptr [rax - 8], rcx
	lea	rsi, [rsi]
	jmp	.label_977
.label_1006:
	mov	rax, qword ptr [rbp - 0x50]
	mov	rcx, rax
	lea	rdi, [rdi]
	add	rcx, -0x20
	mov	qword ptr [rbp - 0x50], rcx
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 8]
	mov	rdx, qword ptr [rcx + 8]
	lea	rdi, [rdi]
	mov	rsi, rdx
	mov	rbp, rbp
	add	rsi, -0x20
	mov	qword ptr [rcx + 8], rsi
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rdx - 0x20]
	mov	qword ptr [rax - 0x20], rcx
	nop	
	mov	rcx, qword ptr [rdx - 0x18]
	nop	
	mov	qword ptr [rax - 0x18], rcx
	nop	
	mov	rcx, qword ptr [rdx - 0x10]
	nop	
	mov	qword ptr [rax - 0x10], rcx
	mov	rbp, rbp
	mov	rcx, qword ptr [rdx - 8]
	nop	
	mov	qword ptr [rax - 8], rcx
.label_977:
	jmp	.label_990
.label_991:
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rcx]
	sub	rax, rcx
	sar	rax, 5
	mov	qword ptr [rbp - 0x40], rax
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	rcx, qword ptr [rcx + 8]
	lea	rsi, [rsi]
	sub	rax, rcx
	sar	rax, 5
	mov	qword ptr [rbp - 0x48], rax
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 8]
	mov	rbp, rbp
	mov	rax, qword ptr [rax + 0x30]
	cmp	rax, qword ptr [rbp - 0x48]
	mov	rbp, rbp
	jne	.label_983
	jmp	.label_980
.label_980:
	mov	rbp, rbp
	xor	eax, eax
	nop	
	mov	cl, al
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	rdx, qword ptr [rdx]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	cmp	rdx, qword ptr [rsi + 0x10]
	mov	byte ptr [rbp - 0x5a], cl
	je	.label_982
	nop	
	mov	rax, qword ptr [rbp - 0x38]
	mov	rcx, rax
	add	rcx, -1
	nop	
	mov	qword ptr [rbp - 0x38], rcx
	cmp	rax, 0
	nop	
	setne	dl
	nop	
	mov	byte ptr [rbp - 0x5a], dl
.label_982:
	mov	rbp, rbp
	mov	al, byte ptr [rbp - 0x5a]
	test	al, 1
	lea	rsi, [rsi]
	jne	.label_1001
	jmp	.label_971
.label_1001:
	mov	rax, qword ptr [rbp - 0x50]
	mov	rcx, rax
	mov	rbp, rbp
	add	rcx, -0x20
	nop	
	mov	qword ptr [rbp - 0x50], rcx
	nop	
	mov	rcx, qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	rdx, qword ptr [rcx]
	mov	rsi, rdx
	add	rsi, -0x20
	mov	qword ptr [rcx], rsi
	mov	rcx, qword ptr [rdx - 0x20]
	nop	
	mov	qword ptr [rax - 0x20], rcx
	mov	rcx, qword ptr [rdx - 0x18]
	lea	rsi, [rsi]
	mov	qword ptr [rax - 0x18], rcx
	nop	
	mov	rcx, qword ptr [rdx - 0x10]
	mov	qword ptr [rax - 0x10], rcx
	mov	rbp, rbp
	mov	rcx, qword ptr [rdx - 8]
	mov	qword ptr [rax - 8], rcx
	lea	rdi, [rdi]
	jmp	.label_980
.label_971:
	jmp	.label_988
.label_983:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax + 0x28]
	cmp	rax, qword ptr [rbp - 0x40]
	lea	rsi, [rsi]
	jne	.label_986
	jmp	.label_995
.label_995:
	mov	rsp, rsp
	xor	eax, eax
	lea	rdi, [rdi]
	mov	cl, al
	mov	rdx, qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	rdx, qword ptr [rdx + 8]
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 8]
	cmp	rdx, qword ptr [rsi + 0x18]
	mov	byte ptr [rbp - 0x5b], cl
	je	.label_1003
	nop	
	mov	rax, qword ptr [rbp - 0x38]
	mov	rcx, rax
	add	rcx, -1
	mov	qword ptr [rbp - 0x38], rcx
	cmp	rax, 0
	setne	dl
	mov	byte ptr [rbp - 0x5b], dl
.label_1003:
	mov	al, byte ptr [rbp - 0x5b]
	lea	rdi, [rdi]
	test	al, 1
	mov	rsp, rsp
	jne	.label_1004
	jmp	.label_992
.label_1004:
	mov	rax, qword ptr [rbp - 0x50]
	mov	rcx, rax
	lea	rdi, [rdi]
	add	rcx, -0x20
	mov	qword ptr [rbp - 0x50], rcx
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 8]
	mov	rdx, qword ptr [rcx + 8]
	mov	rbp, rbp
	mov	rsi, rdx
	nop	
	add	rsi, -0x20
	mov	qword ptr [rcx + 8], rsi
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rdx - 0x20]
	mov	rbp, rbp
	mov	qword ptr [rax - 0x20], rcx
	mov	rsp, rsp
	mov	rcx, qword ptr [rdx - 0x18]
	mov	qword ptr [rax - 0x18], rcx
	mov	rbp, rbp
	mov	rcx, qword ptr [rdx - 0x10]
	mov	rbp, rbp
	mov	qword ptr [rax - 0x10], rcx
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rdx - 8]
	mov	qword ptr [rax - 8], rcx
	lea	rdi, [rdi]
	jmp	.label_995
.label_992:
	jmp	.label_986
.label_986:
	lea	rdi, [rdi]
	jmp	.label_988
.label_988:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rbp - 8]
	mov	rcx, qword ptr [rcx + 0x20]
	mov	qword ptr [rcx], rax
	jmp	.label_972
.label_978:
	mov	rbp, rbp
	jmp	.label_976
.label_976:
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rdx]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 8]
	cmp	rdx, qword ptr [rsi + 0x10]
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x5c], cl
	lea	rdi, [rdi]
	je	.label_975
	lea	rsi, [rsi]
	xor	eax, eax
	mov	cl, al
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 8]
	mov	rbp, rbp
	mov	rdx, qword ptr [rdx + 8]
	mov	rsi, qword ptr [rbp - 8]
	cmp	rdx, qword ptr [rsi + 0x18]
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x5c], cl
	je	.label_975
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x38]
	lea	rdi, [rdi]
	mov	rcx, rax
	add	rcx, -1
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x38], rcx
	mov	rbp, rbp
	cmp	rax, 0
	setne	dl
	mov	byte ptr [rbp - 0x5c], dl
.label_975:
	mov	al, byte ptr [rbp - 0x5c]
	test	al, 1
	lea	rdi, [rdi]
	jne	.label_996
	jmp	.label_1000
.label_996:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax]
	add	rax, -0x20
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 8]
	mov	rbp, rbp
	mov	rcx, qword ptr [rcx + 8]
	mov	rbp, rbp
	add	rcx, -0x20
	mov	rdi, rax
	mov	rsp, rsp
	mov	rsi, rcx
	nop	
	call	compare
	nop	
	cmp	eax, 0
	jg	.label_981
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 8]
	mov	rcx, qword ptr [rax]
	mov	rsp, rsp
	add	rcx, -0x20
	lea	rdi, [rdi]
	mov	qword ptr [rax], rcx
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 0x20]
	nop	
	mov	rdi, rcx
	call	write_unique
	nop	
	jmp	.label_994
.label_981:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 8]
	mov	rcx, qword ptr [rax + 8]
	add	rcx, -0x20
	nop	
	mov	qword ptr [rax + 8], rcx
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	mov	rdi, rcx
	nop	
	call	write_unique
.label_994:
	jmp	.label_976
.label_1000:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 8]
	mov	rcx, qword ptr [rcx]
	nop	
	sub	rax, rcx
	mov	rsp, rsp
	sar	rax, 5
	mov	qword ptr [rbp - 0x40], rax
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x30]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 8]
	nop	
	mov	rcx, qword ptr [rcx + 8]
	lea	rsi, [rsi]
	sub	rax, rcx
	sar	rax, 5
	mov	qword ptr [rbp - 0x48], rax
	mov	rax, qword ptr [rbp - 8]
	mov	rbp, rbp
	mov	rax, qword ptr [rax + 0x30]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rbp - 0x48]
	jne	.label_973
	nop	
	jmp	.label_997
.label_997:
	mov	rsp, rsp
	xor	eax, eax
	lea	rsi, [rsi]
	mov	cl, al
	mov	rdx, qword ptr [rbp - 8]
	mov	rdx, qword ptr [rdx]
	mov	rsi, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	cmp	rdx, qword ptr [rsi + 0x10]
	mov	byte ptr [rbp - 0x5d], cl
	lea	rsi, [rsi]
	je	.label_999
	mov	rax, qword ptr [rbp - 0x38]
	mov	rbp, rbp
	mov	rcx, rax
	mov	rsp, rsp
	add	rcx, -1
	mov	qword ptr [rbp - 0x38], rcx
	cmp	rax, 0
	mov	rsp, rsp
	setne	dl
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x5d], dl
.label_999:
	mov	rbp, rbp
	mov	al, byte ptr [rbp - 0x5d]
	lea	rdi, [rdi]
	test	al, 1
	mov	rsp, rsp
	jne	.label_984
	jmp	.label_998
.label_984:
	mov	rax, qword ptr [rbp - 8]
	mov	rcx, qword ptr [rax]
	add	rcx, -0x20
	mov	qword ptr [rax], rcx
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x18]
	nop	
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rdi, rcx
	lea	rsi, [rsi]
	call	write_unique
	mov	rsp, rsp
	jmp	.label_997
.label_998:
	jmp	.label_987
.label_973:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	rax, qword ptr [rax + 0x28]
	mov	rsp, rsp
	cmp	rax, qword ptr [rbp - 0x40]
	jne	.label_985
	jmp	.label_979
.label_979:
	xor	eax, eax
	mov	rbp, rbp
	mov	cl, al
	mov	rdx, qword ptr [rbp - 8]
	mov	rdx, qword ptr [rdx + 8]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	cmp	rdx, qword ptr [rsi + 0x18]
	mov	byte ptr [rbp - 0x5e], cl
	lea	rsi, [rsi]
	je	.label_974
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x38]
	lea	rdi, [rdi]
	mov	rcx, rax
	lea	rdi, [rdi]
	add	rcx, -1
	mov	qword ptr [rbp - 0x38], rcx
	mov	rbp, rbp
	cmp	rax, 0
	nop	
	setne	dl
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x5e], dl
.label_974:
	mov	al, byte ptr [rbp - 0x5e]
	nop	
	test	al, 1
	mov	rbp, rbp
	jne	.label_1002
	jmp	.label_1005
.label_1002:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 8]
	mov	rcx, qword ptr [rax + 8]
	add	rcx, -0x20
	lea	rsi, [rsi]
	mov	qword ptr [rax + 8], rcx
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x18]
	nop	
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rdi, rcx
	nop	
	call	write_unique
	lea	rsi, [rsi]
	jmp	.label_979
.label_1005:
	mov	rbp, rbp
	jmp	.label_985
.label_985:
	mov	rbp, rbp
	jmp	.label_987
.label_987:
	jmp	.label_972
.label_972:
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 8]
	mov	rcx, qword ptr [rcx]
	mov	rbp, rbp
	sub	rax, rcx
	sar	rax, 5
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x40], rax
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rcx + 8]
	lea	rdi, [rdi]
	sub	rax, rcx
	lea	rsi, [rsi]
	sar	rax, 5
	nop	
	mov	qword ptr [rbp - 0x48], rax
	mov	rax, qword ptr [rbp - 0x40]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 8]
	mov	rdx, qword ptr [rcx + 0x28]
	mov	rsp, rsp
	sub	rdx, rax
	mov	qword ptr [rcx + 0x28], rdx
	mov	rax, qword ptr [rbp - 0x48]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 8]
	mov	rdx, qword ptr [rcx + 0x30]
	lea	rsi, [rsi]
	sub	rdx, rax
	lea	rsi, [rsi]
	mov	qword ptr [rcx + 0x30], rdx
	lea	rdi, [rdi]
	add	rsp, 0x60
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x411540

	.globl queue_check_insert
	.type queue_check_insert, @function
queue_check_insert:
	push	rbp
	lea	rdi, [rdi]
	mov	rbp, rsp
	sub	rsp, 0x20
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	test	byte ptr [rsi + 0x54], 1
	mov	rbp, rbp
	jne	.label_1007
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx + 0x10]
	nop	
	sub	rax, rcx
	nop	
	sar	rax, 5
	cmp	rax, 0
	setne	dl
	and	dl, 1
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x11], dl
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 8]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx + 0x18]
	lea	rdi, [rdi]
	sub	rax, rcx
	lea	rdi, [rdi]
	sar	rax, 5
	cmp	rax, 0
	mov	rsp, rsp
	setne	dl
	and	dl, 1
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x12], dl
	nop	
	test	byte ptr [rbp - 0x11], 1
	je	.label_1010
	lea	rdi, [rdi]
	test	byte ptr [rbp - 0x12], 1
	lea	rsi, [rsi]
	jne	.label_1009
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x10]
	cmp	qword ptr [rax + 0x30], 0
	nop	
	jne	.label_1008
	nop	
	jmp	.label_1009
.label_1010:
	test	byte ptr [rbp - 0x12], 1
	je	.label_1008
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	cmp	qword ptr [rax + 0x28], 0
	jne	.label_1008
.label_1009:
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x10]
	call	queue_insert
.label_1008:
	jmp	.label_1007
.label_1007:
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x411640

	.globl queue_check_insert_parent
	.type queue_check_insert_parent, @function
queue_check_insert_parent:
	lea	rdi, [rdi]
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	rsp, rsp
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	cmp	dword ptr [rsi + 0x50], 1
	lea	rsi, [rsi]
	jbe	.label_1011
	mov	rax, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rax + 0x38]
	lea	rsi, [rsi]
	call	lock_node
	nop	
	mov	rdi, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x10]
	nop	
	mov	rsi, qword ptr [rax + 0x38]
	call	queue_check_insert
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rax + 0x38]
	call	unlock_node
	jmp	.label_1012
.label_1011:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x28]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	add	rax, qword ptr [rcx + 0x30]
	cmp	rax, 0
	lea	rsi, [rsi]
	jne	.label_1013
	mov	rdi, qword ptr [rbp - 8]
	nop	
	mov	rax, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rax + 0x38]
	call	queue_insert
.label_1013:
	jmp	.label_1012
.label_1012:
	add	rsp, 0x10
	mov	rbp, rbp
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4116f0

	.globl lock_node
	.type lock_node, @function
lock_node:
	lea	rsi, [rsi]
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	rbp, rbp
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	add	rdi, 0x58
	call	pthread_mutex_lock
	mov	dword ptr [rbp - 0xc], eax
	lea	rsi, [rsi]
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x411720

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
	.align	16
	#Procedure 0x411740

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
.label_1021:
	mov	rax, qword ptr [rbp - 0x30]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x18]
	cmp	qword ptr [rcx + rax*8], 0
	je	.label_1019
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
	jne	.label_1016
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x30]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rdi, qword ptr [rcx + rax*8]
	call	strlen
	cmp	rax, qword ptr [rbp - 0x38]
	mov	rsp, rsp
	jne	.label_1022
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x30]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 8], rax
	lea	rsi, [rsi]
	jmp	.label_1014
.label_1022:
	cmp	qword ptr [rbp - 0x40], -1
	jne	.label_1017
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x40], rax
	mov	rsp, rsp
	jmp	.label_1015
.label_1017:
	cmp	qword ptr [rbp - 0x20], 0
	lea	rdi, [rdi]
	je	.label_1023
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
	je	.label_1024
.label_1023:
	nop	
	mov	byte ptr [rbp - 0x41], 1
.label_1024:
	lea	rsi, [rsi]
	jmp	.label_1015
.label_1015:
	mov	rbp, rbp
	jmp	.label_1018
.label_1018:
	mov	rsp, rsp
	jmp	.label_1016
.label_1016:
	nop	
	jmp	.label_1020
.label_1020:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, 1
	mov	qword ptr [rbp - 0x30], rax
	mov	rsp, rsp
	jmp	.label_1021
.label_1019:
	test	byte ptr [rbp - 0x41], 1
	je	.label_1025
	mov	rsp, rsp
	mov	qword ptr [rbp - 8], -2
	jmp	.label_1014
.label_1025:
	mov	rax, qword ptr [rbp - 0x40]
	mov	rbp, rbp
	mov	qword ptr [rbp - 8], rax
.label_1014:
	mov	rax, qword ptr [rbp - 8]
	mov	rbp, rbp
	add	rsp, 0x50
	nop	
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4118f0

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
	jne	.label_1026
	movabs	rdi, OFFSET FLAT:.str_3
	call	gettext
	mov	qword ptr [rbp - 0x28], rax
	nop	
	jmp	.label_1027
.label_1026:
	nop	
	movabs	rdi, OFFSET FLAT:.str.1_1
	mov	rbp, rbp
	call	gettext
	mov	qword ptr [rbp - 0x28], rax
.label_1027:
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
	.align	16
	#Procedure 0x4119d0

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
.label_1029:
	mov	rax, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 8]
	mov	rsp, rsp
	cmp	qword ptr [rcx + rax*8], 0
	lea	rsi, [rsi]
	je	.label_1030
	nop	
	cmp	qword ptr [rbp - 0x20], 0
	je	.label_1028
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
	je	.label_1033
.label_1028:
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
	jmp	.label_1031
.label_1033:
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
.label_1031:
	jmp	.label_1032
.label_1032:
	mov	rax, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	add	rax, 1
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x20], rax
	jmp	.label_1029
.label_1030:
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
	.align	16
	#Procedure 0x411b80

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
	jl	.label_1034
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x40]
	mov	rsp, rsp
	mov	qword ptr [rbp - 8], rax
	jmp	.label_1035
.label_1034:
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
.label_1035:
	nop	
	mov	rax, qword ptr [rbp - 8]
	mov	rsp, rsp
	add	rsp, 0x40
	mov	rbp, rbp
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x411c40
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
.label_1038:
	nop	
	mov	rax, qword ptr [rbp - 0x30]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x18]
	cmp	qword ptr [rcx + rax*8], 0
	mov	rsp, rsp
	je	.label_1040
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
	jne	.label_1037
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	mov	rax, qword ptr [rcx + rax*8]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_1036
.label_1037:
	lea	rdi, [rdi]
	jmp	.label_1039
.label_1039:
	mov	rax, qword ptr [rbp - 0x30]
	mov	rbp, rbp
	add	rax, 1
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_1038
.label_1040:
	nop	
	mov	qword ptr [rbp - 8], 0
.label_1036:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x411d10
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
	.align	16
	#Procedure 0x411d40
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
	.align	16
	#Procedure 0x411d70

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
	je	.label_1041
	test	byte ptr [byte ptr [ignore_EPIPE]],  1
	je	.label_1045
	mov	rbp, rbp
	call	__errno_location
	mov	rsp, rsp
	cmp	dword ptr [rax], 0x20
	je	.label_1041
.label_1045:
	mov	rsp, rsp
	movabs	rdi, OFFSET FLAT:.str_4
	call	gettext
	mov	qword ptr [rbp - 8], rax
	cmp	qword ptr [word ptr [file_name]],  0
	je	.label_1042
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
	movabs	rdx, OFFSET FLAT:.str.1_0
	mov	rbp, rbp
	mov	r8, qword ptr [rbp - 8]
	mov	esi, dword ptr [rbp - 0xc]
	lea	rdi, [rdi]
	mov	rcx, rax
	mov	al, 0
	call	error
	jmp	.label_1043
.label_1042:
	call	__errno_location
	lea	rdi, [rdi]
	xor	edi, edi
	mov	rsp, rsp
	movabs	rdx, OFFSET FLAT:.str_1
	mov	esi, dword ptr [rax]
	nop	
	mov	rcx, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	mov	al, 0
	mov	rsp, rsp
	call	error
.label_1043:
	mov	edi,  dword ptr [dword ptr [exit_failure]]
	mov	rsp, rsp
	call	_exit
.label_1041:
	mov	rdi,  qword ptr [word ptr [stderr]]
	mov	rbp, rbp
	call	close_stream
	nop	
	cmp	eax, 0
	je	.label_1044
	lea	rdi, [rdi]
	mov	edi,  dword ptr [dword ptr [exit_failure]]
	call	_exit
.label_1044:
	lea	rdi, [rdi]
	add	rsp, 0x10
	nop	
	pop	rbp
	lea	rsi, [rsi]
	ret	
	.section	.text
	.align	16
	#Procedure 0x411ea0

	.globl md5_init_ctx
	.type md5_init_ctx, @function
md5_init_ctx:
	push	rbp
	lea	rsi, [rsi]
	mov	rbp, rsp
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	dword ptr [rdi], 0x67452301
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	dword ptr [rdi + 4], 0xefcdab89
	mov	rdi, qword ptr [rbp - 8]
	mov	dword ptr [rdi + 8], 0x98badcfe
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 8]
	mov	dword ptr [rdi + 0xc], 0x10325476
	mov	rdi, qword ptr [rbp - 8]
	mov	dword ptr [rdi + 0x14], 0
	mov	rdi, qword ptr [rbp - 8]
	nop	
	mov	dword ptr [rdi + 0x10], 0
	mov	rdi, qword ptr [rbp - 8]
	mov	rbp, rbp
	mov	dword ptr [rdi + 0x18], 0
	mov	rbp, rbp
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x411f10

	.globl md5_read_ctx
	.type md5_read_ctx, @function
md5_read_ctx:
	nop	
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	nop	
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x18], rsi
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	esi, dword ptr [rsi]
	call	set_uint32
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x18]
	add	rdi, 4
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	esi, dword ptr [rax + 4]
	call	set_uint32
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 8
	mov	rdi, qword ptr [rbp - 8]
	mov	esi, dword ptr [rdi + 8]
	mov	rbp, rbp
	mov	rdi, rax
	call	set_uint32
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 0xc
	mov	rdi, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	esi, dword ptr [rdi + 0xc]
	mov	rdi, rax
	lea	rsi, [rsi]
	call	set_uint32
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x10]
	add	rsp, 0x20
	pop	rbp
	mov	rbp, rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x411fb0

	.globl set_uint32
	.type set_uint32, @function
set_uint32:
	push	rbp
	mov	rsp, rsp
	mov	rbp, rsp
	nop	
	mov	qword ptr [rbp - 8], rdi
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0xc], esi
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	esi, dword ptr [rbp - 0xc]
	mov	rbp, rbp
	mov	dword ptr [rdi], esi
	lea	rsi, [rsi]
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x411fe0

	.globl md5_finish_ctx
	.type md5_finish_ctx, @function
md5_finish_ctx:
	lea	rdi, [rdi]
	push	rbp
	mov	rbp, rsp
	mov	rsp, rsp
	sub	rsp, 0x30
	mov	rsp, rsp
	mov	eax, 0x20
	mov	ecx, 0x10
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsi, qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	edx, dword ptr [rsi + 0x18]
	mov	dword ptr [rbp - 0x14], edx
	nop	
	cmp	dword ptr [rbp - 0x14], 0x38
	cmovb	eax, ecx
	nop	
	movsxd	rsi, eax
	mov	qword ptr [rbp - 0x20], rsi
	mov	eax, dword ptr [rbp - 0x14]
	mov	rsi, qword ptr [rbp - 8]
	add	eax, dword ptr [rsi + 0x10]
	mov	dword ptr [rsi + 0x10], eax
	mov	rsi, qword ptr [rbp - 8]
	mov	eax, dword ptr [rsi + 0x10]
	mov	rbp, rbp
	cmp	eax, dword ptr [rbp - 0x14]
	jae	.label_1046
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	ecx, dword ptr [rax + 0x14]
	mov	rsp, rsp
	add	ecx, 1
	mov	rsp, rsp
	mov	dword ptr [rax + 0x14], ecx
.label_1046:
	movabs	rsi, OFFSET FLAT:fillbuf_0
	mov	rax, qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	ecx, dword ptr [rax + 0x10]
	shl	ecx, 3
	nop	
	mov	rax, qword ptr [rbp - 0x20]
	sub	rax, 2
	mov	rdx, qword ptr [rbp - 8]
	mov	dword ptr [rdx + rax*4 + 0x1c], ecx
	mov	rax, qword ptr [rbp - 8]
	mov	ecx, dword ptr [rax + 0x14]
	shl	ecx, 3
	nop	
	mov	rax, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	edi, dword ptr [rax + 0x10]
	nop	
	shr	edi, 0x1d
	mov	rbp, rbp
	or	ecx, edi
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	sub	rax, 1
	mov	rdx, qword ptr [rbp - 8]
	mov	dword ptr [rdx + rax*4 + 0x1c], ecx
	mov	ecx, dword ptr [rbp - 0x14]
	mov	eax, ecx
	mov	rdx, qword ptr [rbp - 8]
	mov	rbp, rbp
	add	rdx, 0x1c
	add	rdx, rax
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x20]
	nop	
	sub	rax, 2
	shl	rax, 2
	mov	rsp, rsp
	mov	ecx, dword ptr [rbp - 0x14]
	lea	rdi, [rdi]
	mov	r8d, ecx
	sub	rax, r8
	nop	
	mov	rdi, rdx
	mov	rdx, rax
	call	memcpy
	mov	rax, qword ptr [rbp - 8]
	nop	
	add	rax, 0x1c
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	shl	rdx, 2
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	rdi, rax
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x28], rsi
	mov	rsi, rdx
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	call	md5_process_block
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x10]
	call	md5_read_ctx
	mov	rsp, rsp
	add	rsp, 0x30
	pop	rbp
	mov	rsp, rsp
	ret	
	.section	.text
	.align	16
	#Procedure 0x412150

	.globl md5_process_block
	.type md5_process_block, @function
md5_process_block:
	lea	rsi, [rsi]
	push	rbp
	mov	rbp, rsp
	nop	
	sub	rsp, 0x30
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x18], rdx
	mov	rdx, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x68], rdx
	nop	
	mov	rdx, qword ptr [rbp - 0x10]
	shr	rdx, 2
	mov	qword ptr [rbp - 0x70], rdx
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x68]
	mov	rsi, qword ptr [rbp - 0x70]
	mov	rbp, rbp
	shl	rsi, 2
	add	rdx, rsi
	mov	qword ptr [rbp - 0x78], rdx
	nop	
	mov	rdx, qword ptr [rbp - 0x18]
	mov	eax, dword ptr [rdx]
	mov	dword ptr [rbp - 0x7c], eax
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	mov	eax, dword ptr [rdx + 4]
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x80], eax
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	mov	eax, dword ptr [rdx + 8]
	nop	
	mov	dword ptr [rbp - 0x84], eax
	mov	rdx, qword ptr [rbp - 0x18]
	mov	eax, dword ptr [rdx + 0xc]
	nop	
	mov	dword ptr [rbp - 0x88], eax
	mov	rdx, qword ptr [rbp - 0x10]
	mov	eax, edx
	mov	dword ptr [rbp - 0x8c], eax
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x8c]
	mov	rdx, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	add	eax, dword ptr [rdx + 0x10]
	mov	dword ptr [rdx + 0x10], eax
	nop	
	mov	rdx, qword ptr [rbp - 0x10]
	shr	rdx, 0x1f
	shr	rdx, 1
	mov	rsi, qword ptr [rbp - 0x18]
	mov	eax, dword ptr [rsi + 0x10]
	cmp	eax, dword ptr [rbp - 0x8c]
	mov	rsp, rsp
	setb	cl
	mov	rsp, rsp
	and	cl, 1
	mov	rsp, rsp
	movzx	eax, cl
	movsxd	rsi, eax
	mov	rsp, rsp
	add	rdx, rsi
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	eax, dword ptr [rsi + 0x14]
	lea	rdi, [rdi]
	mov	edi, eax
	add	rdi, rdx
	mov	eax, edi
	mov	dword ptr [rsi + 0x14], eax
.label_1050:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x68]
	cmp	rax, qword ptr [rbp - 0x78]
	mov	rsp, rsp
	jae	.label_1080
	mov	rsp, rsp
	lea	rax, [rbp - 0x60]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x98], rax
	mov	rbp, rbp
	mov	ecx, dword ptr [rbp - 0x7c]
	mov	dword ptr [rbp - 0x9c], ecx
	lea	rsi, [rsi]
	mov	ecx, dword ptr [rbp - 0x80]
	mov	dword ptr [rbp - 0xa0], ecx
	mov	ecx, dword ptr [rbp - 0x84]
	nop	
	mov	dword ptr [rbp - 0xa4], ecx
	lea	rdi, [rdi]
	mov	ecx, dword ptr [rbp - 0x88]
	mov	dword ptr [rbp - 0xa8], ecx
	mov	eax, dword ptr [rbp - 0x88]
	mov	ecx, dword ptr [rbp - 0x80]
	mov	rsp, rsp
	mov	edx, dword ptr [rbp - 0x84]
	lea	rsi, [rsi]
	xor	edx, dword ptr [rbp - 0x88]
	and	ecx, edx
	xor	eax, ecx
	mov	rsi, qword ptr [rbp - 0x68]
	lea	rsi, [rsi]
	mov	ecx, dword ptr [rsi]
	mov	rsi, qword ptr [rbp - 0x98]
	mov	rdi, rsi
	add	rdi, 4
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x98], rdi
	mov	rsp, rsp
	mov	dword ptr [rsi], ecx
	add	eax, ecx
	add	eax, 0xd76aa478
	nop	
	add	eax, dword ptr [rbp - 0x7c]
	nop	
	mov	dword ptr [rbp - 0x7c], eax
	nop	
	mov	rsi, qword ptr [rbp - 0x68]
	add	rsi, 4
	nop	
	mov	qword ptr [rbp - 0x68], rsi
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x7c]
	shl	eax, 7
	mov	ecx, dword ptr [rbp - 0x7c]
	shr	ecx, 0x19
	or	eax, ecx
	mov	dword ptr [rbp - 0x7c], eax
	nop	
	mov	eax, dword ptr [rbp - 0x80]
	add	eax, dword ptr [rbp - 0x7c]
	mov	dword ptr [rbp - 0x7c], eax
	jmp	.label_1090
.label_1090:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x84]
	mov	rsp, rsp
	mov	ecx, dword ptr [rbp - 0x7c]
	mov	rsp, rsp
	mov	edx, dword ptr [rbp - 0x80]
	xor	edx, dword ptr [rbp - 0x84]
	mov	rsp, rsp
	and	ecx, edx
	xor	eax, ecx
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x68]
	mov	rbp, rbp
	mov	ecx, dword ptr [rsi]
	mov	rsi, qword ptr [rbp - 0x98]
	lea	rdi, [rdi]
	mov	rdi, rsi
	mov	rbp, rbp
	add	rdi, 4
	nop	
	mov	qword ptr [rbp - 0x98], rdi
	mov	rsp, rsp
	mov	dword ptr [rsi], ecx
	mov	rsp, rsp
	add	eax, ecx
	add	eax, 0xe8c7b756
	add	eax, dword ptr [rbp - 0x88]
	mov	dword ptr [rbp - 0x88], eax
	mov	rsi, qword ptr [rbp - 0x68]
	mov	rbp, rbp
	add	rsi, 4
	mov	qword ptr [rbp - 0x68], rsi
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x88]
	shl	eax, 0xc
	lea	rsi, [rsi]
	mov	ecx, dword ptr [rbp - 0x88]
	shr	ecx, 0x14
	lea	rsi, [rsi]
	or	eax, ecx
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x88], eax
	mov	eax, dword ptr [rbp - 0x7c]
	add	eax, dword ptr [rbp - 0x88]
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x88], eax
	mov	rsp, rsp
	jmp	.label_1065
.label_1065:
	mov	eax, dword ptr [rbp - 0x80]
	mov	rsp, rsp
	mov	ecx, dword ptr [rbp - 0x88]
	mov	edx, dword ptr [rbp - 0x7c]
	mov	rbp, rbp
	xor	edx, dword ptr [rbp - 0x80]
	and	ecx, edx
	xor	eax, ecx
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x68]
	mov	ecx, dword ptr [rsi]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x98]
	nop	
	mov	rdi, rsi
	lea	rsi, [rsi]
	add	rdi, 4
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x98], rdi
	mov	dword ptr [rsi], ecx
	add	eax, ecx
	add	eax, 0x242070db
	nop	
	add	eax, dword ptr [rbp - 0x84]
	mov	dword ptr [rbp - 0x84], eax
	mov	rsi, qword ptr [rbp - 0x68]
	lea	rsi, [rsi]
	add	rsi, 4
	mov	qword ptr [rbp - 0x68], rsi
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x84]
	lea	rdi, [rdi]
	shl	eax, 0x11
	lea	rdi, [rdi]
	mov	ecx, dword ptr [rbp - 0x84]
	shr	ecx, 0xf
	or	eax, ecx
	mov	dword ptr [rbp - 0x84], eax
	mov	eax, dword ptr [rbp - 0x88]
	add	eax, dword ptr [rbp - 0x84]
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x84], eax
	jmp	.label_1088
.label_1088:
	mov	eax, dword ptr [rbp - 0x7c]
	mov	ecx, dword ptr [rbp - 0x84]
	mov	edx, dword ptr [rbp - 0x88]
	xor	edx, dword ptr [rbp - 0x7c]
	mov	rbp, rbp
	and	ecx, edx
	lea	rsi, [rsi]
	xor	eax, ecx
	mov	rsi, qword ptr [rbp - 0x68]
	mov	ecx, dword ptr [rsi]
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x98]
	lea	rsi, [rsi]
	mov	rdi, rsi
	add	rdi, 4
	mov	qword ptr [rbp - 0x98], rdi
	lea	rsi, [rsi]
	mov	dword ptr [rsi], ecx
	mov	rsp, rsp
	add	eax, ecx
	nop	
	add	eax, 0xc1bdceee
	add	eax, dword ptr [rbp - 0x80]
	mov	dword ptr [rbp - 0x80], eax
	mov	rsi, qword ptr [rbp - 0x68]
	add	rsi, 4
	mov	qword ptr [rbp - 0x68], rsi
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x80]
	shl	eax, 0x16
	mov	rsp, rsp
	mov	ecx, dword ptr [rbp - 0x80]
	shr	ecx, 0xa
	or	eax, ecx
	nop	
	mov	dword ptr [rbp - 0x80], eax
	mov	eax, dword ptr [rbp - 0x84]
	add	eax, dword ptr [rbp - 0x80]
	mov	dword ptr [rbp - 0x80], eax
	jmp	.label_1107
.label_1107:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x88]
	mov	ecx, dword ptr [rbp - 0x80]
	nop	
	mov	edx, dword ptr [rbp - 0x84]
	xor	edx, dword ptr [rbp - 0x88]
	lea	rsi, [rsi]
	and	ecx, edx
	nop	
	xor	eax, ecx
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x68]
	mov	ecx, dword ptr [rsi]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x98]
	lea	rdi, [rdi]
	mov	rdi, rsi
	add	rdi, 4
	mov	qword ptr [rbp - 0x98], rdi
	mov	dword ptr [rsi], ecx
	mov	rbp, rbp
	add	eax, ecx
	add	eax, 0xf57c0faf
	lea	rsi, [rsi]
	add	eax, dword ptr [rbp - 0x7c]
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x7c], eax
	mov	rsi, qword ptr [rbp - 0x68]
	lea	rsi, [rsi]
	add	rsi, 4
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x68], rsi
	mov	eax, dword ptr [rbp - 0x7c]
	shl	eax, 7
	mov	rsp, rsp
	mov	ecx, dword ptr [rbp - 0x7c]
	shr	ecx, 0x19
	mov	rbp, rbp
	or	eax, ecx
	mov	dword ptr [rbp - 0x7c], eax
	mov	eax, dword ptr [rbp - 0x80]
	lea	rdi, [rdi]
	add	eax, dword ptr [rbp - 0x7c]
	mov	dword ptr [rbp - 0x7c], eax
	jmp	.label_1047
.label_1047:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x84]
	lea	rsi, [rsi]
	mov	ecx, dword ptr [rbp - 0x7c]
	mov	edx, dword ptr [rbp - 0x80]
	nop	
	xor	edx, dword ptr [rbp - 0x84]
	and	ecx, edx
	mov	rsp, rsp
	xor	eax, ecx
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x68]
	mov	rbp, rbp
	mov	ecx, dword ptr [rsi]
	mov	rsi, qword ptr [rbp - 0x98]
	mov	rsp, rsp
	mov	rdi, rsi
	lea	rdi, [rdi]
	add	rdi, 4
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x98], rdi
	lea	rsi, [rsi]
	mov	dword ptr [rsi], ecx
	mov	rbp, rbp
	add	eax, ecx
	add	eax, 0x4787c62a
	add	eax, dword ptr [rbp - 0x88]
	nop	
	mov	dword ptr [rbp - 0x88], eax
	nop	
	mov	rsi, qword ptr [rbp - 0x68]
	nop	
	add	rsi, 4
	nop	
	mov	qword ptr [rbp - 0x68], rsi
	mov	eax, dword ptr [rbp - 0x88]
	shl	eax, 0xc
	mov	rsp, rsp
	mov	ecx, dword ptr [rbp - 0x88]
	lea	rsi, [rsi]
	shr	ecx, 0x14
	or	eax, ecx
	mov	dword ptr [rbp - 0x88], eax
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x7c]
	lea	rdi, [rdi]
	add	eax, dword ptr [rbp - 0x88]
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x88], eax
	lea	rsi, [rsi]
	jmp	.label_1060
.label_1060:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x80]
	mov	ecx, dword ptr [rbp - 0x88]
	mov	edx, dword ptr [rbp - 0x7c]
	lea	rsi, [rsi]
	xor	edx, dword ptr [rbp - 0x80]
	nop	
	and	ecx, edx
	xor	eax, ecx
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x68]
	mov	ecx, dword ptr [rsi]
	mov	rsi, qword ptr [rbp - 0x98]
	nop	
	mov	rdi, rsi
	lea	rdi, [rdi]
	add	rdi, 4
	mov	qword ptr [rbp - 0x98], rdi
	lea	rdi, [rdi]
	mov	dword ptr [rsi], ecx
	add	eax, ecx
	add	eax, 0xa8304613
	lea	rsi, [rsi]
	add	eax, dword ptr [rbp - 0x84]
	mov	dword ptr [rbp - 0x84], eax
	mov	rsi, qword ptr [rbp - 0x68]
	lea	rdi, [rdi]
	add	rsi, 4
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x68], rsi
	mov	eax, dword ptr [rbp - 0x84]
	lea	rsi, [rsi]
	shl	eax, 0x11
	nop	
	mov	ecx, dword ptr [rbp - 0x84]
	mov	rbp, rbp
	shr	ecx, 0xf
	or	eax, ecx
	mov	dword ptr [rbp - 0x84], eax
	mov	eax, dword ptr [rbp - 0x88]
	add	eax, dword ptr [rbp - 0x84]
	mov	dword ptr [rbp - 0x84], eax
	nop	
	jmp	.label_1084
.label_1084:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x7c]
	mov	rbp, rbp
	mov	ecx, dword ptr [rbp - 0x84]
	nop	
	mov	edx, dword ptr [rbp - 0x88]
	mov	rbp, rbp
	xor	edx, dword ptr [rbp - 0x7c]
	and	ecx, edx
	mov	rbp, rbp
	xor	eax, ecx
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x68]
	mov	ecx, dword ptr [rsi]
	mov	rsi, qword ptr [rbp - 0x98]
	nop	
	mov	rdi, rsi
	mov	rbp, rbp
	add	rdi, 4
	mov	qword ptr [rbp - 0x98], rdi
	mov	dword ptr [rsi], ecx
	lea	rdi, [rdi]
	add	eax, ecx
	mov	rbp, rbp
	add	eax, 0xfd469501
	mov	rsp, rsp
	add	eax, dword ptr [rbp - 0x80]
	mov	dword ptr [rbp - 0x80], eax
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x68]
	mov	rbp, rbp
	add	rsi, 4
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x68], rsi
	mov	eax, dword ptr [rbp - 0x80]
	lea	rsi, [rsi]
	shl	eax, 0x16
	nop	
	mov	ecx, dword ptr [rbp - 0x80]
	shr	ecx, 0xa
	or	eax, ecx
	mov	dword ptr [rbp - 0x80], eax
	mov	eax, dword ptr [rbp - 0x84]
	add	eax, dword ptr [rbp - 0x80]
	nop	
	mov	dword ptr [rbp - 0x80], eax
	mov	rbp, rbp
	jmp	.label_1102
.label_1102:
	mov	eax, dword ptr [rbp - 0x88]
	mov	ecx, dword ptr [rbp - 0x80]
	mov	edx, dword ptr [rbp - 0x84]
	nop	
	xor	edx, dword ptr [rbp - 0x88]
	and	ecx, edx
	xor	eax, ecx
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x68]
	mov	ecx, dword ptr [rsi]
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x98]
	nop	
	mov	rdi, rsi
	nop	
	add	rdi, 4
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x98], rdi
	mov	dword ptr [rsi], ecx
	mov	rbp, rbp
	add	eax, ecx
	nop	
	add	eax, 0x698098d8
	add	eax, dword ptr [rbp - 0x7c]
	nop	
	mov	dword ptr [rbp - 0x7c], eax
	mov	rsi, qword ptr [rbp - 0x68]
	lea	rdi, [rdi]
	add	rsi, 4
	mov	qword ptr [rbp - 0x68], rsi
	mov	eax, dword ptr [rbp - 0x7c]
	lea	rsi, [rsi]
	shl	eax, 7
	mov	ecx, dword ptr [rbp - 0x7c]
	nop	
	shr	ecx, 0x19
	mov	rbp, rbp
	or	eax, ecx
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x7c], eax
	mov	eax, dword ptr [rbp - 0x80]
	add	eax, dword ptr [rbp - 0x7c]
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x7c], eax
	lea	rdi, [rdi]
	jmp	.label_1052
.label_1052:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x84]
	mov	rsp, rsp
	mov	ecx, dword ptr [rbp - 0x7c]
	mov	edx, dword ptr [rbp - 0x80]
	nop	
	xor	edx, dword ptr [rbp - 0x84]
	mov	rbp, rbp
	and	ecx, edx
	mov	rsp, rsp
	xor	eax, ecx
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x68]
	lea	rdi, [rdi]
	mov	ecx, dword ptr [rsi]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x98]
	mov	rdi, rsi
	add	rdi, 4
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x98], rdi
	lea	rdi, [rdi]
	mov	dword ptr [rsi], ecx
	add	eax, ecx
	add	eax, 0x8b44f7af
	mov	rbp, rbp
	add	eax, dword ptr [rbp - 0x88]
	mov	dword ptr [rbp - 0x88], eax
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x68]
	mov	rbp, rbp
	add	rsi, 4
	mov	qword ptr [rbp - 0x68], rsi
	mov	eax, dword ptr [rbp - 0x88]
	mov	rbp, rbp
	shl	eax, 0xc
	mov	ecx, dword ptr [rbp - 0x88]
	nop	
	shr	ecx, 0x14
	or	eax, ecx
	nop	
	mov	dword ptr [rbp - 0x88], eax
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x7c]
	add	eax, dword ptr [rbp - 0x88]
	mov	dword ptr [rbp - 0x88], eax
	mov	rbp, rbp
	jmp	.label_1063
.label_1063:
	mov	eax, dword ptr [rbp - 0x80]
	lea	rsi, [rsi]
	mov	ecx, dword ptr [rbp - 0x88]
	lea	rsi, [rsi]
	mov	edx, dword ptr [rbp - 0x7c]
	mov	rsp, rsp
	xor	edx, dword ptr [rbp - 0x80]
	and	ecx, edx
	xor	eax, ecx
	mov	rsi, qword ptr [rbp - 0x68]
	lea	rsi, [rsi]
	mov	ecx, dword ptr [rsi]
	mov	rsi, qword ptr [rbp - 0x98]
	lea	rdi, [rdi]
	mov	rdi, rsi
	lea	rsi, [rsi]
	add	rdi, 4
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x98], rdi
	mov	dword ptr [rsi], ecx
	add	eax, ecx
	nop	
	add	eax, 0xffff5bb1
	add	eax, dword ptr [rbp - 0x84]
	mov	dword ptr [rbp - 0x84], eax
	mov	rsi, qword ptr [rbp - 0x68]
	mov	rsp, rsp
	add	rsi, 4
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x68], rsi
	mov	eax, dword ptr [rbp - 0x84]
	lea	rdi, [rdi]
	shl	eax, 0x11
	lea	rsi, [rsi]
	mov	ecx, dword ptr [rbp - 0x84]
	shr	ecx, 0xf
	lea	rdi, [rdi]
	or	eax, ecx
	mov	dword ptr [rbp - 0x84], eax
	mov	eax, dword ptr [rbp - 0x88]
	add	eax, dword ptr [rbp - 0x84]
	mov	dword ptr [rbp - 0x84], eax
	jmp	.label_1082
.label_1082:
	mov	eax, dword ptr [rbp - 0x7c]
	lea	rdi, [rdi]
	mov	ecx, dword ptr [rbp - 0x84]
	mov	edx, dword ptr [rbp - 0x88]
	xor	edx, dword ptr [rbp - 0x7c]
	and	ecx, edx
	xor	eax, ecx
	mov	rsi, qword ptr [rbp - 0x68]
	nop	
	mov	ecx, dword ptr [rsi]
	mov	rsi, qword ptr [rbp - 0x98]
	nop	
	mov	rdi, rsi
	lea	rsi, [rsi]
	add	rdi, 4
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x98], rdi
	lea	rdi, [rdi]
	mov	dword ptr [rsi], ecx
	add	eax, ecx
	add	eax, 0x895cd7be
	add	eax, dword ptr [rbp - 0x80]
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x80], eax
	mov	rsi, qword ptr [rbp - 0x68]
	add	rsi, 4
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x68], rsi
	mov	eax, dword ptr [rbp - 0x80]
	shl	eax, 0x16
	nop	
	mov	ecx, dword ptr [rbp - 0x80]
	shr	ecx, 0xa
	lea	rdi, [rdi]
	or	eax, ecx
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x80], eax
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x84]
	add	eax, dword ptr [rbp - 0x80]
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x80], eax
	lea	rdi, [rdi]
	jmp	.label_1103
.label_1103:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x88]
	lea	rsi, [rsi]
	mov	ecx, dword ptr [rbp - 0x80]
	mov	edx, dword ptr [rbp - 0x84]
	lea	rdi, [rdi]
	xor	edx, dword ptr [rbp - 0x88]
	and	ecx, edx
	xor	eax, ecx
	mov	rsi, qword ptr [rbp - 0x68]
	mov	ecx, dword ptr [rsi]
	mov	rsi, qword ptr [rbp - 0x98]
	nop	
	mov	rdi, rsi
	add	rdi, 4
	mov	qword ptr [rbp - 0x98], rdi
	nop	
	mov	dword ptr [rsi], ecx
	lea	rdi, [rdi]
	add	eax, ecx
	add	eax, 0x6b901122
	lea	rsi, [rsi]
	add	eax, dword ptr [rbp - 0x7c]
	mov	dword ptr [rbp - 0x7c], eax
	mov	rsi, qword ptr [rbp - 0x68]
	mov	rbp, rbp
	add	rsi, 4
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x68], rsi
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x7c]
	mov	rbp, rbp
	shl	eax, 7
	mov	rbp, rbp
	mov	ecx, dword ptr [rbp - 0x7c]
	lea	rdi, [rdi]
	shr	ecx, 0x19
	lea	rdi, [rdi]
	or	eax, ecx
	mov	dword ptr [rbp - 0x7c], eax
	mov	eax, dword ptr [rbp - 0x80]
	add	eax, dword ptr [rbp - 0x7c]
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x7c], eax
	jmp	.label_1056
.label_1056:
	mov	eax, dword ptr [rbp - 0x84]
	mov	ecx, dword ptr [rbp - 0x7c]
	mov	edx, dword ptr [rbp - 0x80]
	xor	edx, dword ptr [rbp - 0x84]
	and	ecx, edx
	xor	eax, ecx
	nop	
	mov	rsi, qword ptr [rbp - 0x68]
	mov	ecx, dword ptr [rsi]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x98]
	mov	rdi, rsi
	add	rdi, 4
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x98], rdi
	mov	dword ptr [rsi], ecx
	add	eax, ecx
	mov	rbp, rbp
	add	eax, 0xfd987193
	lea	rsi, [rsi]
	add	eax, dword ptr [rbp - 0x88]
	mov	dword ptr [rbp - 0x88], eax
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x68]
	add	rsi, 4
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x68], rsi
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x88]
	mov	rbp, rbp
	shl	eax, 0xc
	mov	rbp, rbp
	mov	ecx, dword ptr [rbp - 0x88]
	shr	ecx, 0x14
	or	eax, ecx
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x88], eax
	mov	eax, dword ptr [rbp - 0x7c]
	add	eax, dword ptr [rbp - 0x88]
	mov	dword ptr [rbp - 0x88], eax
	mov	rsp, rsp
	jmp	.label_1061
.label_1061:
	mov	eax, dword ptr [rbp - 0x80]
	mov	ecx, dword ptr [rbp - 0x88]
	lea	rdi, [rdi]
	mov	edx, dword ptr [rbp - 0x7c]
	xor	edx, dword ptr [rbp - 0x80]
	mov	rsp, rsp
	and	ecx, edx
	xor	eax, ecx
	mov	rsi, qword ptr [rbp - 0x68]
	mov	rsp, rsp
	mov	ecx, dword ptr [rsi]
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x98]
	mov	rdi, rsi
	lea	rdi, [rdi]
	add	rdi, 4
	mov	qword ptr [rbp - 0x98], rdi
	mov	dword ptr [rsi], ecx
	mov	rsp, rsp
	add	eax, ecx
	add	eax, 0xa679438e
	add	eax, dword ptr [rbp - 0x84]
	mov	dword ptr [rbp - 0x84], eax
	nop	
	mov	rsi, qword ptr [rbp - 0x68]
	mov	rsp, rsp
	add	rsi, 4
	mov	qword ptr [rbp - 0x68], rsi
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x84]
	mov	rbp, rbp
	shl	eax, 0x11
	mov	ecx, dword ptr [rbp - 0x84]
	mov	rbp, rbp
	shr	ecx, 0xf
	mov	rsp, rsp
	or	eax, ecx
	mov	dword ptr [rbp - 0x84], eax
	mov	eax, dword ptr [rbp - 0x88]
	mov	rbp, rbp
	add	eax, dword ptr [rbp - 0x84]
	mov	dword ptr [rbp - 0x84], eax
	jmp	.label_1078
.label_1078:
	mov	eax, dword ptr [rbp - 0x7c]
	mov	ecx, dword ptr [rbp - 0x84]
	lea	rdi, [rdi]
	mov	edx, dword ptr [rbp - 0x88]
	xor	edx, dword ptr [rbp - 0x7c]
	and	ecx, edx
	xor	eax, ecx
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x68]
	mov	ecx, dword ptr [rsi]
	mov	rsi, qword ptr [rbp - 0x98]
	lea	rdi, [rdi]
	mov	rdi, rsi
	nop	
	add	rdi, 4
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x98], rdi
	lea	rdi, [rdi]
	mov	dword ptr [rsi], ecx
	add	eax, ecx
	mov	rbp, rbp
	add	eax, 0x49b40821
	add	eax, dword ptr [rbp - 0x80]
	mov	dword ptr [rbp - 0x80], eax
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x68]
	mov	rbp, rbp
	add	rsi, 4
	mov	qword ptr [rbp - 0x68], rsi
	mov	eax, dword ptr [rbp - 0x80]
	shl	eax, 0x16
	mov	ecx, dword ptr [rbp - 0x80]
	nop	
	shr	ecx, 0xa
	or	eax, ecx
	mov	dword ptr [rbp - 0x80], eax
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x84]
	mov	rbp, rbp
	add	eax, dword ptr [rbp - 0x80]
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x80], eax
	jmp	.label_1097
.label_1097:
	mov	eax, dword ptr [rbp - 0x84]
	mov	ecx, dword ptr [rbp - 0x88]
	nop	
	mov	edx, dword ptr [rbp - 0x80]
	xor	edx, dword ptr [rbp - 0x84]
	and	ecx, edx
	xor	eax, ecx
	add	eax, dword ptr [rbp - 0x5c]
	add	eax, 0xf61e2562
	mov	rsp, rsp
	add	eax, dword ptr [rbp - 0x7c]
	mov	dword ptr [rbp - 0x7c], eax
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x7c]
	lea	rdi, [rdi]
	shl	eax, 5
	mov	ecx, dword ptr [rbp - 0x7c]
	shr	ecx, 0x1b
	lea	rsi, [rsi]
	or	eax, ecx
	mov	dword ptr [rbp - 0x7c], eax
	nop	
	mov	eax, dword ptr [rbp - 0x80]
	mov	rbp, rbp
	add	eax, dword ptr [rbp - 0x7c]
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x7c], eax
	mov	rsp, rsp
	jmp	.label_1104
.label_1104:
	mov	eax, dword ptr [rbp - 0x80]
	mov	ecx, dword ptr [rbp - 0x84]
	lea	rdi, [rdi]
	mov	edx, dword ptr [rbp - 0x7c]
	lea	rdi, [rdi]
	xor	edx, dword ptr [rbp - 0x80]
	lea	rdi, [rdi]
	and	ecx, edx
	xor	eax, ecx
	add	eax, dword ptr [rbp - 0x48]
	lea	rsi, [rsi]
	add	eax, 0xc040b340
	add	eax, dword ptr [rbp - 0x88]
	mov	dword ptr [rbp - 0x88], eax
	mov	eax, dword ptr [rbp - 0x88]
	shl	eax, 9
	mov	rbp, rbp
	mov	ecx, dword ptr [rbp - 0x88]
	shr	ecx, 0x17
	mov	rbp, rbp
	or	eax, ecx
	mov	dword ptr [rbp - 0x88], eax
	mov	eax, dword ptr [rbp - 0x7c]
	add	eax, dword ptr [rbp - 0x88]
	nop	
	mov	dword ptr [rbp - 0x88], eax
	jmp	.label_1086
.label_1086:
	mov	eax, dword ptr [rbp - 0x7c]
	mov	ecx, dword ptr [rbp - 0x80]
	mov	edx, dword ptr [rbp - 0x88]
	lea	rdi, [rdi]
	xor	edx, dword ptr [rbp - 0x7c]
	nop	
	and	ecx, edx
	xor	eax, ecx
	add	eax, dword ptr [rbp - 0x34]
	add	eax, 0x265e5a51
	add	eax, dword ptr [rbp - 0x84]
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x84], eax
	mov	eax, dword ptr [rbp - 0x84]
	shl	eax, 0xe
	mov	ecx, dword ptr [rbp - 0x84]
	shr	ecx, 0x12
	or	eax, ecx
	mov	dword ptr [rbp - 0x84], eax
	mov	eax, dword ptr [rbp - 0x88]
	add	eax, dword ptr [rbp - 0x84]
	nop	
	mov	dword ptr [rbp - 0x84], eax
	jmp	.label_1077
.label_1077:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x88]
	mov	rbp, rbp
	mov	ecx, dword ptr [rbp - 0x7c]
	lea	rdi, [rdi]
	mov	edx, dword ptr [rbp - 0x84]
	xor	edx, dword ptr [rbp - 0x88]
	and	ecx, edx
	lea	rsi, [rsi]
	xor	eax, ecx
	mov	rsp, rsp
	add	eax, dword ptr [rbp - 0x60]
	add	eax, 0xe9b6c7aa
	mov	rbp, rbp
	add	eax, dword ptr [rbp - 0x80]
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x80], eax
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x80]
	shl	eax, 0x14
	mov	ecx, dword ptr [rbp - 0x80]
	lea	rsi, [rsi]
	shr	ecx, 0xc
	or	eax, ecx
	mov	dword ptr [rbp - 0x80], eax
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x84]
	lea	rsi, [rsi]
	add	eax, dword ptr [rbp - 0x80]
	nop	
	mov	dword ptr [rbp - 0x80], eax
	nop	
	jmp	.label_1053
.label_1053:
	mov	eax, dword ptr [rbp - 0x84]
	lea	rsi, [rsi]
	mov	ecx, dword ptr [rbp - 0x88]
	mov	edx, dword ptr [rbp - 0x80]
	xor	edx, dword ptr [rbp - 0x84]
	lea	rdi, [rdi]
	and	ecx, edx
	mov	rbp, rbp
	xor	eax, ecx
	nop	
	add	eax, dword ptr [rbp - 0x4c]
	mov	rbp, rbp
	add	eax, 0xd62f105d
	mov	rbp, rbp
	add	eax, dword ptr [rbp - 0x7c]
	mov	dword ptr [rbp - 0x7c], eax
	nop	
	mov	eax, dword ptr [rbp - 0x7c]
	shl	eax, 5
	mov	ecx, dword ptr [rbp - 0x7c]
	nop	
	shr	ecx, 0x1b
	or	eax, ecx
	mov	dword ptr [rbp - 0x7c], eax
	mov	eax, dword ptr [rbp - 0x80]
	nop	
	add	eax, dword ptr [rbp - 0x7c]
	nop	
	mov	dword ptr [rbp - 0x7c], eax
	jmp	.label_1048
.label_1048:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x80]
	mov	ecx, dword ptr [rbp - 0x84]
	nop	
	mov	edx, dword ptr [rbp - 0x7c]
	mov	rbp, rbp
	xor	edx, dword ptr [rbp - 0x80]
	and	ecx, edx
	mov	rbp, rbp
	xor	eax, ecx
	add	eax, dword ptr [rbp - 0x38]
	add	eax, 0x2441453
	add	eax, dword ptr [rbp - 0x88]
	nop	
	mov	dword ptr [rbp - 0x88], eax
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x88]
	shl	eax, 9
	mov	ecx, dword ptr [rbp - 0x88]
	shr	ecx, 0x17
	or	eax, ecx
	mov	dword ptr [rbp - 0x88], eax
	mov	eax, dword ptr [rbp - 0x7c]
	mov	rbp, rbp
	add	eax, dword ptr [rbp - 0x88]
	mov	dword ptr [rbp - 0x88], eax
	jmp	.label_1094
.label_1094:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x7c]
	mov	ecx, dword ptr [rbp - 0x80]
	nop	
	mov	edx, dword ptr [rbp - 0x88]
	mov	rbp, rbp
	xor	edx, dword ptr [rbp - 0x7c]
	and	ecx, edx
	mov	rsp, rsp
	xor	eax, ecx
	nop	
	add	eax, dword ptr [rbp - 0x24]
	add	eax, 0xd8a1e681
	add	eax, dword ptr [rbp - 0x84]
	nop	
	mov	dword ptr [rbp - 0x84], eax
	mov	eax, dword ptr [rbp - 0x84]
	shl	eax, 0xe
	lea	rsi, [rsi]
	mov	ecx, dword ptr [rbp - 0x84]
	shr	ecx, 0x12
	or	eax, ecx
	mov	dword ptr [rbp - 0x84], eax
	mov	eax, dword ptr [rbp - 0x88]
	nop	
	add	eax, dword ptr [rbp - 0x84]
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x84], eax
	jmp	.label_1089
.label_1089:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x88]
	mov	rbp, rbp
	mov	ecx, dword ptr [rbp - 0x7c]
	mov	rbp, rbp
	mov	edx, dword ptr [rbp - 0x84]
	xor	edx, dword ptr [rbp - 0x88]
	mov	rsp, rsp
	and	ecx, edx
	xor	eax, ecx
	add	eax, dword ptr [rbp - 0x50]
	add	eax, 0xe7d3fbc8
	add	eax, dword ptr [rbp - 0x80]
	mov	dword ptr [rbp - 0x80], eax
	mov	eax, dword ptr [rbp - 0x80]
	lea	rdi, [rdi]
	shl	eax, 0x14
	mov	ecx, dword ptr [rbp - 0x80]
	shr	ecx, 0xc
	lea	rdi, [rdi]
	or	eax, ecx
	nop	
	mov	dword ptr [rbp - 0x80], eax
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x84]
	lea	rsi, [rsi]
	add	eax, dword ptr [rbp - 0x80]
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x80], eax
	mov	rsp, rsp
	jmp	.label_1071
.label_1071:
	nop	
	mov	eax, dword ptr [rbp - 0x84]
	lea	rsi, [rsi]
	mov	ecx, dword ptr [rbp - 0x88]
	mov	edx, dword ptr [rbp - 0x80]
	xor	edx, dword ptr [rbp - 0x84]
	lea	rdi, [rdi]
	and	ecx, edx
	mov	rbp, rbp
	xor	eax, ecx
	add	eax, dword ptr [rbp - 0x3c]
	nop	
	add	eax, 0x21e1cde6
	add	eax, dword ptr [rbp - 0x7c]
	mov	dword ptr [rbp - 0x7c], eax
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x7c]
	shl	eax, 5
	lea	rdi, [rdi]
	mov	ecx, dword ptr [rbp - 0x7c]
	mov	rsp, rsp
	shr	ecx, 0x1b
	mov	rsp, rsp
	or	eax, ecx
	mov	dword ptr [rbp - 0x7c], eax
	mov	eax, dword ptr [rbp - 0x80]
	add	eax, dword ptr [rbp - 0x7c]
	mov	dword ptr [rbp - 0x7c], eax
	jmp	.label_1059
.label_1059:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x80]
	nop	
	mov	ecx, dword ptr [rbp - 0x84]
	nop	
	mov	edx, dword ptr [rbp - 0x7c]
	xor	edx, dword ptr [rbp - 0x80]
	mov	rbp, rbp
	and	ecx, edx
	lea	rdi, [rdi]
	xor	eax, ecx
	lea	rsi, [rsi]
	add	eax, dword ptr [rbp - 0x28]
	mov	rsp, rsp
	add	eax, 0xc33707d6
	add	eax, dword ptr [rbp - 0x88]
	nop	
	mov	dword ptr [rbp - 0x88], eax
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x88]
	nop	
	shl	eax, 9
	mov	ecx, dword ptr [rbp - 0x88]
	shr	ecx, 0x17
	or	eax, ecx
	mov	dword ptr [rbp - 0x88], eax
	mov	eax, dword ptr [rbp - 0x7c]
	add	eax, dword ptr [rbp - 0x88]
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x88], eax
	lea	rsi, [rsi]
	jmp	.label_1074
.label_1074:
	mov	eax, dword ptr [rbp - 0x7c]
	lea	rsi, [rsi]
	mov	ecx, dword ptr [rbp - 0x80]
	lea	rsi, [rsi]
	mov	edx, dword ptr [rbp - 0x88]
	xor	edx, dword ptr [rbp - 0x7c]
	and	ecx, edx
	lea	rdi, [rdi]
	xor	eax, ecx
	add	eax, dword ptr [rbp - 0x54]
	lea	rdi, [rdi]
	add	eax, 0xf4d50d87
	mov	rsp, rsp
	add	eax, dword ptr [rbp - 0x84]
	mov	dword ptr [rbp - 0x84], eax
	nop	
	mov	eax, dword ptr [rbp - 0x84]
	lea	rdi, [rdi]
	shl	eax, 0xe
	mov	ecx, dword ptr [rbp - 0x84]
	shr	ecx, 0x12
	nop	
	or	eax, ecx
	mov	dword ptr [rbp - 0x84], eax
	mov	eax, dword ptr [rbp - 0x88]
	lea	rsi, [rsi]
	add	eax, dword ptr [rbp - 0x84]
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x84], eax
	jmp	.label_1098
.label_1098:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x88]
	mov	rbp, rbp
	mov	ecx, dword ptr [rbp - 0x7c]
	mov	edx, dword ptr [rbp - 0x84]
	xor	edx, dword ptr [rbp - 0x88]
	and	ecx, edx
	lea	rsi, [rsi]
	xor	eax, ecx
	mov	rbp, rbp
	add	eax, dword ptr [rbp - 0x40]
	mov	rsp, rsp
	add	eax, 0x455a14ed
	lea	rdi, [rdi]
	add	eax, dword ptr [rbp - 0x80]
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x80], eax
	mov	eax, dword ptr [rbp - 0x80]
	lea	rsi, [rsi]
	shl	eax, 0x14
	mov	ecx, dword ptr [rbp - 0x80]
	shr	ecx, 0xc
	mov	rsp, rsp
	or	eax, ecx
	mov	dword ptr [rbp - 0x80], eax
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x84]
	lea	rdi, [rdi]
	add	eax, dword ptr [rbp - 0x80]
	mov	dword ptr [rbp - 0x80], eax
	lea	rsi, [rsi]
	jmp	.label_1049
.label_1049:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x84]
	nop	
	mov	ecx, dword ptr [rbp - 0x88]
	nop	
	mov	edx, dword ptr [rbp - 0x80]
	xor	edx, dword ptr [rbp - 0x84]
	and	ecx, edx
	nop	
	xor	eax, ecx
	add	eax, dword ptr [rbp - 0x2c]
	lea	rsi, [rsi]
	add	eax, 0xa9e3e905
	add	eax, dword ptr [rbp - 0x7c]
	nop	
	mov	dword ptr [rbp - 0x7c], eax
	nop	
	mov	eax, dword ptr [rbp - 0x7c]
	lea	rsi, [rsi]
	shl	eax, 5
	lea	rsi, [rsi]
	mov	ecx, dword ptr [rbp - 0x7c]
	nop	
	shr	ecx, 0x1b
	mov	rbp, rbp
	or	eax, ecx
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x7c], eax
	mov	eax, dword ptr [rbp - 0x80]
	add	eax, dword ptr [rbp - 0x7c]
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x7c], eax
	jmp	.label_1100
.label_1100:
	mov	eax, dword ptr [rbp - 0x80]
	lea	rdi, [rdi]
	mov	ecx, dword ptr [rbp - 0x84]
	mov	edx, dword ptr [rbp - 0x7c]
	nop	
	xor	edx, dword ptr [rbp - 0x80]
	nop	
	and	ecx, edx
	lea	rdi, [rdi]
	xor	eax, ecx
	lea	rsi, [rsi]
	add	eax, dword ptr [rbp - 0x58]
	add	eax, 0xfcefa3f8
	add	eax, dword ptr [rbp - 0x88]
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x88], eax
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x88]
	shl	eax, 9
	mov	rsp, rsp
	mov	ecx, dword ptr [rbp - 0x88]
	shr	ecx, 0x17
	or	eax, ecx
	mov	dword ptr [rbp - 0x88], eax
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x7c]
	add	eax, dword ptr [rbp - 0x88]
	mov	dword ptr [rbp - 0x88], eax
	jmp	.label_1068
.label_1068:
	mov	eax, dword ptr [rbp - 0x7c]
	mov	ecx, dword ptr [rbp - 0x80]
	mov	edx, dword ptr [rbp - 0x88]
	nop	
	xor	edx, dword ptr [rbp - 0x7c]
	nop	
	and	ecx, edx
	lea	rsi, [rsi]
	xor	eax, ecx
	add	eax, dword ptr [rbp - 0x44]
	mov	rsp, rsp
	add	eax, 0x676f02d9
	add	eax, dword ptr [rbp - 0x84]
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x84], eax
	mov	eax, dword ptr [rbp - 0x84]
	shl	eax, 0xe
	mov	rsp, rsp
	mov	ecx, dword ptr [rbp - 0x84]
	lea	rdi, [rdi]
	shr	ecx, 0x12
	or	eax, ecx
	mov	dword ptr [rbp - 0x84], eax
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x88]
	add	eax, dword ptr [rbp - 0x84]
	mov	dword ptr [rbp - 0x84], eax
	mov	rbp, rbp
	jmp	.label_1055
.label_1055:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x88]
	mov	ecx, dword ptr [rbp - 0x7c]
	lea	rdi, [rdi]
	mov	edx, dword ptr [rbp - 0x84]
	xor	edx, dword ptr [rbp - 0x88]
	and	ecx, edx
	xor	eax, ecx
	add	eax, dword ptr [rbp - 0x30]
	lea	rsi, [rsi]
	add	eax, 0x8d2a4c8a
	add	eax, dword ptr [rbp - 0x80]
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x80], eax
	mov	eax, dword ptr [rbp - 0x80]
	lea	rdi, [rdi]
	shl	eax, 0x14
	mov	ecx, dword ptr [rbp - 0x80]
	shr	ecx, 0xc
	or	eax, ecx
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x80], eax
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x84]
	add	eax, dword ptr [rbp - 0x80]
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x80], eax
	jmp	.label_1109
.label_1109:
	mov	eax, dword ptr [rbp - 0x80]
	lea	rdi, [rdi]
	xor	eax, dword ptr [rbp - 0x84]
	xor	eax, dword ptr [rbp - 0x88]
	add	eax, dword ptr [rbp - 0x4c]
	lea	rdi, [rdi]
	add	eax, 0xfffa3942
	add	eax, dword ptr [rbp - 0x7c]
	mov	dword ptr [rbp - 0x7c], eax
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x7c]
	mov	rbp, rbp
	shl	eax, 4
	mov	ecx, dword ptr [rbp - 0x7c]
	mov	rsp, rsp
	shr	ecx, 0x1c
	lea	rsi, [rsi]
	or	eax, ecx
	mov	dword ptr [rbp - 0x7c], eax
	mov	eax, dword ptr [rbp - 0x80]
	nop	
	add	eax, dword ptr [rbp - 0x7c]
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x7c], eax
	lea	rsi, [rsi]
	jmp	.label_1096
.label_1096:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x7c]
	xor	eax, dword ptr [rbp - 0x80]
	mov	rsp, rsp
	xor	eax, dword ptr [rbp - 0x84]
	lea	rsi, [rsi]
	add	eax, dword ptr [rbp - 0x40]
	mov	rbp, rbp
	add	eax, 0x8771f681
	mov	rsp, rsp
	add	eax, dword ptr [rbp - 0x88]
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x88], eax
	nop	
	mov	eax, dword ptr [rbp - 0x88]
	shl	eax, 0xb
	mov	ecx, dword ptr [rbp - 0x88]
	shr	ecx, 0x15
	or	eax, ecx
	mov	dword ptr [rbp - 0x88], eax
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x7c]
	mov	rbp, rbp
	add	eax, dword ptr [rbp - 0x88]
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x88], eax
	mov	rbp, rbp
	jmp	.label_1075
.label_1075:
	nop	
	mov	eax, dword ptr [rbp - 0x88]
	lea	rdi, [rdi]
	xor	eax, dword ptr [rbp - 0x7c]
	xor	eax, dword ptr [rbp - 0x80]
	add	eax, dword ptr [rbp - 0x34]
	add	eax, 0x6d9d6122
	add	eax, dword ptr [rbp - 0x84]
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x84], eax
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x84]
	nop	
	shl	eax, 0x10
	mov	ecx, dword ptr [rbp - 0x84]
	shr	ecx, 0x10
	nop	
	or	eax, ecx
	mov	dword ptr [rbp - 0x84], eax
	mov	eax, dword ptr [rbp - 0x88]
	add	eax, dword ptr [rbp - 0x84]
	mov	dword ptr [rbp - 0x84], eax
	jmp	.label_1066
.label_1066:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x84]
	mov	rsp, rsp
	xor	eax, dword ptr [rbp - 0x88]
	xor	eax, dword ptr [rbp - 0x7c]
	add	eax, dword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	add	eax, 0xfde5380c
	lea	rsi, [rsi]
	add	eax, dword ptr [rbp - 0x80]
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x80], eax
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x80]
	shl	eax, 0x17
	lea	rsi, [rsi]
	mov	ecx, dword ptr [rbp - 0x80]
	mov	rsp, rsp
	shr	ecx, 9
	nop	
	or	eax, ecx
	mov	dword ptr [rbp - 0x80], eax
	mov	eax, dword ptr [rbp - 0x84]
	lea	rdi, [rdi]
	add	eax, dword ptr [rbp - 0x80]
	mov	dword ptr [rbp - 0x80], eax
	jmp	.label_1111
.label_1111:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x80]
	mov	rbp, rbp
	xor	eax, dword ptr [rbp - 0x84]
	mov	rsp, rsp
	xor	eax, dword ptr [rbp - 0x88]
	add	eax, dword ptr [rbp - 0x5c]
	mov	rsp, rsp
	add	eax, 0xa4beea44
	mov	rsp, rsp
	add	eax, dword ptr [rbp - 0x7c]
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x7c], eax
	mov	eax, dword ptr [rbp - 0x7c]
	shl	eax, 4
	mov	rsp, rsp
	mov	ecx, dword ptr [rbp - 0x7c]
	shr	ecx, 0x1c
	or	eax, ecx
	mov	dword ptr [rbp - 0x7c], eax
	mov	eax, dword ptr [rbp - 0x80]
	add	eax, dword ptr [rbp - 0x7c]
	nop	
	mov	dword ptr [rbp - 0x7c], eax
	mov	rbp, rbp
	jmp	.label_1091
.label_1091:
	mov	eax, dword ptr [rbp - 0x7c]
	xor	eax, dword ptr [rbp - 0x80]
	xor	eax, dword ptr [rbp - 0x84]
	mov	rsp, rsp
	add	eax, dword ptr [rbp - 0x50]
	add	eax, 0x4bdecfa9
	mov	rsp, rsp
	add	eax, dword ptr [rbp - 0x88]
	mov	dword ptr [rbp - 0x88], eax
	mov	eax, dword ptr [rbp - 0x88]
	shl	eax, 0xb
	mov	ecx, dword ptr [rbp - 0x88]
	mov	rbp, rbp
	shr	ecx, 0x15
	mov	rsp, rsp
	or	eax, ecx
	mov	dword ptr [rbp - 0x88], eax
	mov	eax, dword ptr [rbp - 0x7c]
	add	eax, dword ptr [rbp - 0x88]
	mov	dword ptr [rbp - 0x88], eax
	jmp	.label_1072
.label_1072:
	nop	
	mov	eax, dword ptr [rbp - 0x88]
	mov	rsp, rsp
	xor	eax, dword ptr [rbp - 0x7c]
	mov	rsp, rsp
	xor	eax, dword ptr [rbp - 0x80]
	add	eax, dword ptr [rbp - 0x44]
	add	eax, 0xf6bb4b60
	add	eax, dword ptr [rbp - 0x84]
	mov	dword ptr [rbp - 0x84], eax
	nop	
	mov	eax, dword ptr [rbp - 0x84]
	mov	rbp, rbp
	shl	eax, 0x10
	mov	ecx, dword ptr [rbp - 0x84]
	mov	rbp, rbp
	shr	ecx, 0x10
	or	eax, ecx
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x84], eax
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x88]
	nop	
	add	eax, dword ptr [rbp - 0x84]
	nop	
	mov	dword ptr [rbp - 0x84], eax
	lea	rsi, [rsi]
	jmp	.label_1051
.label_1051:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x84]
	mov	rbp, rbp
	xor	eax, dword ptr [rbp - 0x88]
	lea	rdi, [rdi]
	xor	eax, dword ptr [rbp - 0x7c]
	mov	rsp, rsp
	add	eax, dword ptr [rbp - 0x38]
	nop	
	add	eax, 0xbebfbc70
	mov	rbp, rbp
	add	eax, dword ptr [rbp - 0x80]
	mov	dword ptr [rbp - 0x80], eax
	nop	
	mov	eax, dword ptr [rbp - 0x80]
	mov	rbp, rbp
	shl	eax, 0x17
	lea	rdi, [rdi]
	mov	ecx, dword ptr [rbp - 0x80]
	lea	rsi, [rsi]
	shr	ecx, 9
	or	eax, ecx
	mov	dword ptr [rbp - 0x80], eax
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x84]
	nop	
	add	eax, dword ptr [rbp - 0x80]
	mov	dword ptr [rbp - 0x80], eax
	jmp	.label_1105
.label_1105:
	nop	
	mov	eax, dword ptr [rbp - 0x80]
	mov	rbp, rbp
	xor	eax, dword ptr [rbp - 0x84]
	xor	eax, dword ptr [rbp - 0x88]
	lea	rdi, [rdi]
	add	eax, dword ptr [rbp - 0x2c]
	add	eax, 0x289b7ec6
	add	eax, dword ptr [rbp - 0x7c]
	mov	dword ptr [rbp - 0x7c], eax
	nop	
	mov	eax, dword ptr [rbp - 0x7c]
	shl	eax, 4
	mov	rbp, rbp
	mov	ecx, dword ptr [rbp - 0x7c]
	mov	rbp, rbp
	shr	ecx, 0x1c
	mov	rsp, rsp
	or	eax, ecx
	nop	
	mov	dword ptr [rbp - 0x7c], eax
	mov	eax, dword ptr [rbp - 0x80]
	nop	
	add	eax, dword ptr [rbp - 0x7c]
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x7c], eax
	nop	
	jmp	.label_1057
.label_1057:
	mov	eax, dword ptr [rbp - 0x7c]
	mov	rbp, rbp
	xor	eax, dword ptr [rbp - 0x80]
	xor	eax, dword ptr [rbp - 0x84]
	add	eax, dword ptr [rbp - 0x60]
	add	eax, 0xeaa127fa
	lea	rsi, [rsi]
	add	eax, dword ptr [rbp - 0x88]
	mov	dword ptr [rbp - 0x88], eax
	mov	eax, dword ptr [rbp - 0x88]
	shl	eax, 0xb
	lea	rsi, [rsi]
	mov	ecx, dword ptr [rbp - 0x88]
	nop	
	shr	ecx, 0x15
	lea	rsi, [rsi]
	or	eax, ecx
	mov	dword ptr [rbp - 0x88], eax
	mov	eax, dword ptr [rbp - 0x7c]
	lea	rdi, [rdi]
	add	eax, dword ptr [rbp - 0x88]
	nop	
	mov	dword ptr [rbp - 0x88], eax
	lea	rdi, [rdi]
	jmp	.label_1067
.label_1067:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x88]
	mov	rsp, rsp
	xor	eax, dword ptr [rbp - 0x7c]
	xor	eax, dword ptr [rbp - 0x80]
	mov	rbp, rbp
	add	eax, dword ptr [rbp - 0x54]
	add	eax, 0xd4ef3085
	nop	
	add	eax, dword ptr [rbp - 0x84]
	mov	dword ptr [rbp - 0x84], eax
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x84]
	shl	eax, 0x10
	mov	ecx, dword ptr [rbp - 0x84]
	nop	
	shr	ecx, 0x10
	or	eax, ecx
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x84], eax
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x88]
	add	eax, dword ptr [rbp - 0x84]
	nop	
	mov	dword ptr [rbp - 0x84], eax
	jmp	.label_1064
.label_1064:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x84]
	xor	eax, dword ptr [rbp - 0x88]
	mov	rbp, rbp
	xor	eax, dword ptr [rbp - 0x7c]
	mov	rsp, rsp
	add	eax, dword ptr [rbp - 0x48]
	lea	rdi, [rdi]
	add	eax, 0x4881d05
	lea	rdi, [rdi]
	add	eax, dword ptr [rbp - 0x80]
	mov	dword ptr [rbp - 0x80], eax
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x80]
	nop	
	shl	eax, 0x17
	nop	
	mov	ecx, dword ptr [rbp - 0x80]
	lea	rdi, [rdi]
	shr	ecx, 9
	or	eax, ecx
	mov	dword ptr [rbp - 0x80], eax
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x84]
	mov	rsp, rsp
	add	eax, dword ptr [rbp - 0x80]
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x80], eax
	jmp	.label_1101
.label_1101:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x80]
	xor	eax, dword ptr [rbp - 0x84]
	xor	eax, dword ptr [rbp - 0x88]
	add	eax, dword ptr [rbp - 0x3c]
	lea	rsi, [rsi]
	add	eax, 0xd9d4d039
	lea	rdi, [rdi]
	add	eax, dword ptr [rbp - 0x7c]
	mov	dword ptr [rbp - 0x7c], eax
	mov	eax, dword ptr [rbp - 0x7c]
	lea	rdi, [rdi]
	shl	eax, 4
	lea	rsi, [rsi]
	mov	ecx, dword ptr [rbp - 0x7c]
	shr	ecx, 0x1c
	lea	rdi, [rdi]
	or	eax, ecx
	nop	
	mov	dword ptr [rbp - 0x7c], eax
	nop	
	mov	eax, dword ptr [rbp - 0x80]
	nop	
	add	eax, dword ptr [rbp - 0x7c]
	mov	dword ptr [rbp - 0x7c], eax
	jmp	.label_1083
.label_1083:
	mov	eax, dword ptr [rbp - 0x7c]
	xor	eax, dword ptr [rbp - 0x80]
	xor	eax, dword ptr [rbp - 0x84]
	lea	rsi, [rsi]
	add	eax, dword ptr [rbp - 0x30]
	mov	rsp, rsp
	add	eax, 0xe6db99e5
	mov	rsp, rsp
	add	eax, dword ptr [rbp - 0x88]
	nop	
	mov	dword ptr [rbp - 0x88], eax
	nop	
	mov	eax, dword ptr [rbp - 0x88]
	shl	eax, 0xb
	mov	ecx, dword ptr [rbp - 0x88]
	mov	rbp, rbp
	shr	ecx, 0x15
	or	eax, ecx
	mov	dword ptr [rbp - 0x88], eax
	mov	eax, dword ptr [rbp - 0x7c]
	add	eax, dword ptr [rbp - 0x88]
	mov	dword ptr [rbp - 0x88], eax
	lea	rsi, [rsi]
	jmp	.label_1062
.label_1062:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x88]
	xor	eax, dword ptr [rbp - 0x7c]
	lea	rsi, [rsi]
	xor	eax, dword ptr [rbp - 0x80]
	mov	rbp, rbp
	add	eax, dword ptr [rbp - 0x24]
	add	eax, 0x1fa27cf8
	add	eax, dword ptr [rbp - 0x84]
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x84], eax
	mov	eax, dword ptr [rbp - 0x84]
	shl	eax, 0x10
	mov	rbp, rbp
	mov	ecx, dword ptr [rbp - 0x84]
	shr	ecx, 0x10
	or	eax, ecx
	nop	
	mov	dword ptr [rbp - 0x84], eax
	mov	eax, dword ptr [rbp - 0x88]
	nop	
	add	eax, dword ptr [rbp - 0x84]
	mov	dword ptr [rbp - 0x84], eax
	jmp	.label_1108
.label_1108:
	mov	eax, dword ptr [rbp - 0x84]
	xor	eax, dword ptr [rbp - 0x88]
	xor	eax, dword ptr [rbp - 0x7c]
	add	eax, dword ptr [rbp - 0x58]
	lea	rdi, [rdi]
	add	eax, 0xc4ac5665
	lea	rdi, [rdi]
	add	eax, dword ptr [rbp - 0x80]
	mov	dword ptr [rbp - 0x80], eax
	mov	eax, dword ptr [rbp - 0x80]
	shl	eax, 0x17
	mov	rbp, rbp
	mov	ecx, dword ptr [rbp - 0x80]
	nop	
	shr	ecx, 9
	mov	rsp, rsp
	or	eax, ecx
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x80], eax
	mov	eax, dword ptr [rbp - 0x84]
	mov	rbp, rbp
	add	eax, dword ptr [rbp - 0x80]
	mov	dword ptr [rbp - 0x80], eax
	mov	rsp, rsp
	jmp	.label_1093
.label_1093:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x84]
	lea	rsi, [rsi]
	mov	ecx, dword ptr [rbp - 0x80]
	mov	edx, dword ptr [rbp - 0x88]
	mov	rsp, rsp
	xor	edx, 0xffffffff
	or	ecx, edx
	xor	eax, ecx
	lea	rsi, [rsi]
	add	eax, dword ptr [rbp - 0x60]
	add	eax, 0xf4292244
	lea	rdi, [rdi]
	add	eax, dword ptr [rbp - 0x7c]
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x7c], eax
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x7c]
	mov	rsp, rsp
	shl	eax, 6
	mov	ecx, dword ptr [rbp - 0x7c]
	mov	rsp, rsp
	shr	ecx, 0x1a
	mov	rsp, rsp
	or	eax, ecx
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x7c], eax
	mov	eax, dword ptr [rbp - 0x80]
	add	eax, dword ptr [rbp - 0x7c]
	mov	dword ptr [rbp - 0x7c], eax
	jmp	.label_1073
.label_1073:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x80]
	mov	ecx, dword ptr [rbp - 0x7c]
	mov	edx, dword ptr [rbp - 0x84]
	xor	edx, 0xffffffff
	or	ecx, edx
	mov	rsp, rsp
	xor	eax, ecx
	mov	rbp, rbp
	add	eax, dword ptr [rbp - 0x44]
	add	eax, 0x432aff97
	add	eax, dword ptr [rbp - 0x88]
	mov	dword ptr [rbp - 0x88], eax
	mov	eax, dword ptr [rbp - 0x88]
	shl	eax, 0xa
	mov	rsp, rsp
	mov	ecx, dword ptr [rbp - 0x88]
	shr	ecx, 0x16
	lea	rsi, [rsi]
	or	eax, ecx
	mov	dword ptr [rbp - 0x88], eax
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x7c]
	add	eax, dword ptr [rbp - 0x88]
	mov	dword ptr [rbp - 0x88], eax
	jmp	.label_1058
.label_1058:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x7c]
	mov	rbp, rbp
	mov	ecx, dword ptr [rbp - 0x88]
	mov	edx, dword ptr [rbp - 0x80]
	xor	edx, 0xffffffff
	lea	rdi, [rdi]
	or	ecx, edx
	mov	rbp, rbp
	xor	eax, ecx
	mov	rbp, rbp
	add	eax, dword ptr [rbp - 0x28]
	mov	rsp, rsp
	add	eax, 0xab9423a7
	add	eax, dword ptr [rbp - 0x84]
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x84], eax
	mov	eax, dword ptr [rbp - 0x84]
	shl	eax, 0xf
	mov	ecx, dword ptr [rbp - 0x84]
	shr	ecx, 0x11
	or	eax, ecx
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x84], eax
	nop	
	mov	eax, dword ptr [rbp - 0x88]
	nop	
	add	eax, dword ptr [rbp - 0x84]
	nop	
	mov	dword ptr [rbp - 0x84], eax
	lea	rsi, [rsi]
	jmp	.label_1110
.label_1110:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x88]
	mov	rbp, rbp
	mov	ecx, dword ptr [rbp - 0x84]
	lea	rsi, [rsi]
	mov	edx, dword ptr [rbp - 0x7c]
	lea	rdi, [rdi]
	xor	edx, 0xffffffff
	or	ecx, edx
	xor	eax, ecx
	lea	rsi, [rsi]
	add	eax, dword ptr [rbp - 0x4c]
	lea	rsi, [rsi]
	add	eax, 0xfc93a039
	mov	rbp, rbp
	add	eax, dword ptr [rbp - 0x80]
	mov	dword ptr [rbp - 0x80], eax
	nop	
	mov	eax, dword ptr [rbp - 0x80]
	mov	rbp, rbp
	shl	eax, 0x15
	mov	ecx, dword ptr [rbp - 0x80]
	shr	ecx, 0xb
	mov	rsp, rsp
	or	eax, ecx
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x80], eax
	mov	eax, dword ptr [rbp - 0x84]
	mov	rsp, rsp
	add	eax, dword ptr [rbp - 0x80]
	mov	dword ptr [rbp - 0x80], eax
	mov	rbp, rbp
	jmp	.label_1070
.label_1070:
	mov	eax, dword ptr [rbp - 0x84]
	lea	rsi, [rsi]
	mov	ecx, dword ptr [rbp - 0x80]
	mov	edx, dword ptr [rbp - 0x88]
	lea	rdi, [rdi]
	xor	edx, 0xffffffff
	or	ecx, edx
	xor	eax, ecx
	add	eax, dword ptr [rbp - 0x30]
	lea	rdi, [rdi]
	add	eax, 0x655b59c3
	add	eax, dword ptr [rbp - 0x7c]
	mov	dword ptr [rbp - 0x7c], eax
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x7c]
	nop	
	shl	eax, 6
	nop	
	mov	ecx, dword ptr [rbp - 0x7c]
	shr	ecx, 0x1a
	or	eax, ecx
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x7c], eax
	nop	
	mov	eax, dword ptr [rbp - 0x80]
	mov	rbp, rbp
	add	eax, dword ptr [rbp - 0x7c]
	mov	dword ptr [rbp - 0x7c], eax
	nop	
	jmp	.label_1079
.label_1079:
	mov	eax, dword ptr [rbp - 0x80]
	nop	
	mov	ecx, dword ptr [rbp - 0x7c]
	lea	rsi, [rsi]
	mov	edx, dword ptr [rbp - 0x84]
	xor	edx, 0xffffffff
	mov	rsp, rsp
	or	ecx, edx
	xor	eax, ecx
	add	eax, dword ptr [rbp - 0x54]
	mov	rsp, rsp
	add	eax, 0x8f0ccc92
	lea	rsi, [rsi]
	add	eax, dword ptr [rbp - 0x88]
	mov	dword ptr [rbp - 0x88], eax
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x88]
	shl	eax, 0xa
	nop	
	mov	ecx, dword ptr [rbp - 0x88]
	shr	ecx, 0x16
	lea	rdi, [rdi]
	or	eax, ecx
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x88], eax
	mov	eax, dword ptr [rbp - 0x7c]
	add	eax, dword ptr [rbp - 0x88]
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x88], eax
	jmp	.label_1076
.label_1076:
	mov	eax, dword ptr [rbp - 0x7c]
	lea	rdi, [rdi]
	mov	ecx, dword ptr [rbp - 0x88]
	mov	rbp, rbp
	mov	edx, dword ptr [rbp - 0x80]
	lea	rsi, [rsi]
	xor	edx, 0xffffffff
	mov	rbp, rbp
	or	ecx, edx
	lea	rdi, [rdi]
	xor	eax, ecx
	add	eax, dword ptr [rbp - 0x38]
	add	eax, 0xffeff47d
	mov	rsp, rsp
	add	eax, dword ptr [rbp - 0x84]
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x84], eax
	mov	eax, dword ptr [rbp - 0x84]
	lea	rdi, [rdi]
	shl	eax, 0xf
	mov	rbp, rbp
	mov	ecx, dword ptr [rbp - 0x84]
	shr	ecx, 0x11
	mov	rbp, rbp
	or	eax, ecx
	mov	dword ptr [rbp - 0x84], eax
	mov	eax, dword ptr [rbp - 0x88]
	add	eax, dword ptr [rbp - 0x84]
	mov	dword ptr [rbp - 0x84], eax
	jmp	.label_1069
.label_1069:
	mov	eax, dword ptr [rbp - 0x88]
	mov	ecx, dword ptr [rbp - 0x84]
	mov	edx, dword ptr [rbp - 0x7c]
	lea	rsi, [rsi]
	xor	edx, 0xffffffff
	or	ecx, edx
	lea	rdi, [rdi]
	xor	eax, ecx
	lea	rdi, [rdi]
	add	eax, dword ptr [rbp - 0x5c]
	add	eax, 0x85845dd1
	add	eax, dword ptr [rbp - 0x80]
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x80], eax
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x80]
	mov	rbp, rbp
	shl	eax, 0x15
	mov	ecx, dword ptr [rbp - 0x80]
	shr	ecx, 0xb
	lea	rsi, [rsi]
	or	eax, ecx
	mov	dword ptr [rbp - 0x80], eax
	mov	eax, dword ptr [rbp - 0x84]
	lea	rsi, [rsi]
	add	eax, dword ptr [rbp - 0x80]
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x80], eax
	lea	rdi, [rdi]
	jmp	.label_1054
.label_1054:
	mov	eax, dword ptr [rbp - 0x84]
	mov	rsp, rsp
	mov	ecx, dword ptr [rbp - 0x80]
	mov	rsp, rsp
	mov	edx, dword ptr [rbp - 0x88]
	mov	rsp, rsp
	xor	edx, 0xffffffff
	or	ecx, edx
	xor	eax, ecx
	lea	rsi, [rsi]
	add	eax, dword ptr [rbp - 0x40]
	lea	rdi, [rdi]
	add	eax, 0x6fa87e4f
	add	eax, dword ptr [rbp - 0x7c]
	mov	dword ptr [rbp - 0x7c], eax
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x7c]
	lea	rsi, [rsi]
	shl	eax, 6
	mov	ecx, dword ptr [rbp - 0x7c]
	lea	rsi, [rsi]
	shr	ecx, 0x1a
	or	eax, ecx
	mov	dword ptr [rbp - 0x7c], eax
	mov	eax, dword ptr [rbp - 0x80]
	add	eax, dword ptr [rbp - 0x7c]
	mov	dword ptr [rbp - 0x7c], eax
	mov	rsp, rsp
	jmp	.label_1081
.label_1081:
	mov	eax, dword ptr [rbp - 0x80]
	mov	ecx, dword ptr [rbp - 0x7c]
	lea	rsi, [rsi]
	mov	edx, dword ptr [rbp - 0x84]
	mov	rsp, rsp
	xor	edx, 0xffffffff
	mov	rbp, rbp
	or	ecx, edx
	nop	
	xor	eax, ecx
	mov	rsp, rsp
	add	eax, dword ptr [rbp - 0x24]
	mov	rsp, rsp
	add	eax, 0xfe2ce6e0
	add	eax, dword ptr [rbp - 0x88]
	mov	dword ptr [rbp - 0x88], eax
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x88]
	shl	eax, 0xa
	mov	rbp, rbp
	mov	ecx, dword ptr [rbp - 0x88]
	shr	ecx, 0x16
	or	eax, ecx
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x88], eax
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x7c]
	add	eax, dword ptr [rbp - 0x88]
	nop	
	mov	dword ptr [rbp - 0x88], eax
	jmp	.label_1085
.label_1085:
	mov	eax, dword ptr [rbp - 0x7c]
	mov	ecx, dword ptr [rbp - 0x88]
	lea	rsi, [rsi]
	mov	edx, dword ptr [rbp - 0x80]
	mov	rsp, rsp
	xor	edx, 0xffffffff
	or	ecx, edx
	xor	eax, ecx
	add	eax, dword ptr [rbp - 0x48]
	add	eax, 0xa3014314
	add	eax, dword ptr [rbp - 0x84]
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x84], eax
	mov	eax, dword ptr [rbp - 0x84]
	lea	rdi, [rdi]
	shl	eax, 0xf
	mov	ecx, dword ptr [rbp - 0x84]
	shr	ecx, 0x11
	or	eax, ecx
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x84], eax
	mov	eax, dword ptr [rbp - 0x88]
	add	eax, dword ptr [rbp - 0x84]
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x84], eax
	lea	rsi, [rsi]
	jmp	.label_1092
.label_1092:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x88]
	mov	ecx, dword ptr [rbp - 0x84]
	mov	edx, dword ptr [rbp - 0x7c]
	lea	rsi, [rsi]
	xor	edx, 0xffffffff
	lea	rsi, [rsi]
	or	ecx, edx
	xor	eax, ecx
	add	eax, dword ptr [rbp - 0x2c]
	lea	rsi, [rsi]
	add	eax, 0x4e0811a1
	mov	rbp, rbp
	add	eax, dword ptr [rbp - 0x80]
	nop	
	mov	dword ptr [rbp - 0x80], eax
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x80]
	shl	eax, 0x15
	mov	rsp, rsp
	mov	ecx, dword ptr [rbp - 0x80]
	shr	ecx, 0xb
	or	eax, ecx
	mov	dword ptr [rbp - 0x80], eax
	mov	eax, dword ptr [rbp - 0x84]
	mov	rbp, rbp
	add	eax, dword ptr [rbp - 0x80]
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x80], eax
	lea	rdi, [rdi]
	jmp	.label_1099
.label_1099:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x84]
	mov	ecx, dword ptr [rbp - 0x80]
	mov	rsp, rsp
	mov	edx, dword ptr [rbp - 0x88]
	lea	rdi, [rdi]
	xor	edx, 0xffffffff
	or	ecx, edx
	xor	eax, ecx
	add	eax, dword ptr [rbp - 0x50]
	lea	rdi, [rdi]
	add	eax, 0xf7537e82
	mov	rbp, rbp
	add	eax, dword ptr [rbp - 0x7c]
	mov	dword ptr [rbp - 0x7c], eax
	mov	eax, dword ptr [rbp - 0x7c]
	shl	eax, 6
	nop	
	mov	ecx, dword ptr [rbp - 0x7c]
	shr	ecx, 0x1a
	or	eax, ecx
	nop	
	mov	dword ptr [rbp - 0x7c], eax
	mov	eax, dword ptr [rbp - 0x80]
	add	eax, dword ptr [rbp - 0x7c]
	mov	dword ptr [rbp - 0x7c], eax
	jmp	.label_1087
.label_1087:
	mov	eax, dword ptr [rbp - 0x80]
	mov	rsp, rsp
	mov	ecx, dword ptr [rbp - 0x7c]
	mov	edx, dword ptr [rbp - 0x84]
	xor	edx, 0xffffffff
	or	ecx, edx
	mov	rsp, rsp
	xor	eax, ecx
	nop	
	add	eax, dword ptr [rbp - 0x34]
	mov	rsp, rsp
	add	eax, 0xbd3af235
	add	eax, dword ptr [rbp - 0x88]
	mov	dword ptr [rbp - 0x88], eax
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x88]
	shl	eax, 0xa
	mov	ecx, dword ptr [rbp - 0x88]
	mov	rsp, rsp
	shr	ecx, 0x16
	or	eax, ecx
	mov	dword ptr [rbp - 0x88], eax
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x7c]
	nop	
	add	eax, dword ptr [rbp - 0x88]
	mov	dword ptr [rbp - 0x88], eax
	jmp	.label_1106
.label_1106:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x7c]
	nop	
	mov	ecx, dword ptr [rbp - 0x88]
	mov	edx, dword ptr [rbp - 0x80]
	mov	rsp, rsp
	xor	edx, 0xffffffff
	or	ecx, edx
	xor	eax, ecx
	add	eax, dword ptr [rbp - 0x58]
	mov	rsp, rsp
	add	eax, 0x2ad7d2bb
	mov	rbp, rbp
	add	eax, dword ptr [rbp - 0x84]
	mov	dword ptr [rbp - 0x84], eax
	mov	eax, dword ptr [rbp - 0x84]
	lea	rdi, [rdi]
	shl	eax, 0xf
	mov	ecx, dword ptr [rbp - 0x84]
	lea	rsi, [rsi]
	shr	ecx, 0x11
	or	eax, ecx
	mov	dword ptr [rbp - 0x84], eax
	mov	eax, dword ptr [rbp - 0x88]
	lea	rdi, [rdi]
	add	eax, dword ptr [rbp - 0x84]
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x84], eax
	jmp	.label_1095
.label_1095:
	mov	eax, dword ptr [rbp - 0x88]
	mov	ecx, dword ptr [rbp - 0x84]
	mov	edx, dword ptr [rbp - 0x7c]
	nop	
	xor	edx, 0xffffffff
	mov	rbp, rbp
	or	ecx, edx
	xor	eax, ecx
	add	eax, dword ptr [rbp - 0x3c]
	mov	rsp, rsp
	add	eax, 0xeb86d391
	mov	rbp, rbp
	add	eax, dword ptr [rbp - 0x80]
	mov	dword ptr [rbp - 0x80], eax
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x80]
	shl	eax, 0x15
	mov	ecx, dword ptr [rbp - 0x80]
	shr	ecx, 0xb
	lea	rdi, [rdi]
	or	eax, ecx
	mov	dword ptr [rbp - 0x80], eax
	mov	eax, dword ptr [rbp - 0x84]
	add	eax, dword ptr [rbp - 0x80]
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x80], eax
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x9c]
	add	eax, dword ptr [rbp - 0x7c]
	mov	dword ptr [rbp - 0x7c], eax
	mov	eax, dword ptr [rbp - 0xa0]
	lea	rsi, [rsi]
	add	eax, dword ptr [rbp - 0x80]
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x80], eax
	mov	eax, dword ptr [rbp - 0xa4]
	add	eax, dword ptr [rbp - 0x84]
	mov	dword ptr [rbp - 0x84], eax
	mov	eax, dword ptr [rbp - 0xa8]
	lea	rdi, [rdi]
	add	eax, dword ptr [rbp - 0x88]
	mov	dword ptr [rbp - 0x88], eax
	jmp	.label_1050
.label_1080:
	mov	eax, dword ptr [rbp - 0x7c]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	dword ptr [rcx], eax
	mov	eax, dword ptr [rbp - 0x80]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x18]
	mov	dword ptr [rcx + 4], eax
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x84]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	dword ptr [rcx + 8], eax
	mov	eax, dword ptr [rbp - 0x88]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	mov	dword ptr [rcx + 0xc], eax
	lea	rdi, [rdi]
	add	rsp, 0x30
	pop	rbp
	nop	
	ret	
	.section	.text
	.align	16
	#Procedure 0x413fb0
	.globl md5_stream
	.type md5_stream, @function
md5_stream:

	push	rbp
	mov	rbp, rbp
	mov	rbp, rsp
	lea	rsi, [rsi]
	sub	rsp, 0x100
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x10], rdi
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x18], rsi
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x10]
	mov	eax, OFFSET FLAT:.str_5
	lea	rdi, [rdi]
	mov	ecx, eax
	mov	eax, 0x10
	mov	rbp, rbp
	mov	edx, eax
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0xd8], rsi
	mov	rsi, rcx
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0xd8]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0xe0], rdx
	lea	rdi, [rdi]
	mov	rdx, rcx
	mov	rcx, qword ptr [rbp - 0xe0]
	lea	rsi, [rsi]
	call	afalg_stream
	lea	rsi, [rsi]
	mov	r8d, eax
	sub	eax, -5
	nop	
	mov	dword ptr [rbp - 0xe4], r8d
	mov	rsp, rsp
	mov	dword ptr [rbp - 0xe8], eax
	lea	rdi, [rdi]
	je	.label_1123
	jmp	.label_1113
.label_1113:
	mov	eax, dword ptr [rbp - 0xe4]
	nop	
	test	eax, eax
	jne	.label_1115
	lea	rsi, [rsi]
	jmp	.label_1120
.label_1120:
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 4], 0
	lea	rdi, [rdi]
	jmp	.label_1112
.label_1123:
	mov	dword ptr [rbp - 4], 1
	jmp	.label_1112
.label_1115:
	mov	eax, 0x8048
	mov	edi, eax
	nop	
	call	malloc
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x20], rax
	cmp	qword ptr [rbp - 0x20], 0
	lea	rdi, [rdi]
	jne	.label_1116
	mov	rbp, rbp
	mov	dword ptr [rbp - 4], 1
	jmp	.label_1112
.label_1116:
	lea	rdi, [rbp - 0xc0]
	call	md5_init_ctx
.label_1119:
	mov	qword ptr [rbp - 0xc8], 0
.label_1126:
	nop	
	mov	rdi, qword ptr [rbp - 0x10]
	call	feof_unlocked
	cmp	eax, 0
	je	.label_1117
	nop	
	jmp	.label_1118
.label_1117:
	lea	rdi, [rdi]
	mov	eax, 1
	mov	esi, eax
	mov	eax, 0x8000
	lea	rdi, [rdi]
	mov	ecx, eax
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	add	rdx, qword ptr [rbp - 0xc8]
	mov	rsp, rsp
	sub	rcx, qword ptr [rbp - 0xc8]
	mov	rdi, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0xf0], rdi
	mov	rdi, rdx
	mov	rdx, rcx
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0xf0]
	call	fread_unlocked
	mov	qword ptr [rbp - 0xd0], rax
	nop	
	mov	rax, qword ptr [rbp - 0xd0]
	lea	rsi, [rsi]
	add	rax, qword ptr [rbp - 0xc8]
	mov	qword ptr [rbp - 0xc8], rax
	cmp	qword ptr [rbp - 0xc8], 0x8000
	jne	.label_1125
	mov	rbp, rbp
	jmp	.label_1122
.label_1125:
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0xd0], 0
	mov	rsp, rsp
	jne	.label_1124
	nop	
	mov	rdi, qword ptr [rbp - 0x10]
	call	ferror_unlocked
	nop	
	cmp	eax, 0
	mov	rbp, rbp
	je	.label_1114
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	call	free
	mov	dword ptr [rbp - 4], 1
	mov	rsp, rsp
	jmp	.label_1112
.label_1114:
	jmp	.label_1118
.label_1124:
	jmp	.label_1126
.label_1122:
	mov	eax, 0x8000
	mov	esi, eax
	mov	rbp, rbp
	lea	rdx, [rbp - 0xc0]
	mov	rdi, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	call	md5_process_block
	jmp	.label_1119
.label_1118:
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0xc8], 0
	lea	rsi, [rsi]
	jbe	.label_1121
	lea	rdi, [rdi]
	lea	rdx, [rbp - 0xc0]
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rsi, qword ptr [rbp - 0xc8]
	nop	
	call	md5_process_bytes
.label_1121:
	lea	rdi, [rbp - 0xc0]
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	call	md5_finish_ctx
	mov	rdi, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0xf8], rax
	call	free
	mov	rsp, rsp
	mov	dword ptr [rbp - 4], 0
.label_1112:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x100
	pop	rbp
	mov	rsp, rsp
	ret	
	.section	.text
	.align	16
	#Procedure 0x414250

	.globl afalg_stream
	.type afalg_stream, @function
afalg_stream:
	push	rbp
	mov	rbp, rsp
	mov	rbp, rbp
	mov	eax, 0xffffff9f
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x20], rcx
	lea	rdi, [rdi]
	pop	rbp
	mov	rbp, rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x414280

	.globl md5_process_bytes
	.type md5_process_bytes, @function
md5_process_bytes:
	push	rbp
	lea	rsi, [rsi]
	mov	rbp, rsp
	sub	rsp, 0x50
	mov	qword ptr [rbp - 8], rdi
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	rdx, qword ptr [rbp - 0x18]
	cmp	dword ptr [rdx + 0x18], 0
	lea	rsi, [rsi]
	je	.label_1127
	mov	rbp, rbp
	mov	eax, 0x80
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	mov	eax, dword ptr [rdx + 0x18]
	mov	rbp, rbp
	mov	edx, eax
	mov	qword ptr [rbp - 0x20], rdx
	sub	rcx, qword ptr [rbp - 0x20]
	cmp	rcx, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	jbe	.label_1134
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x38], rax
	mov	rbp, rbp
	jmp	.label_1130
.label_1134:
	lea	rdi, [rdi]
	mov	eax, 0x80
	lea	rdi, [rdi]
	mov	ecx, eax
	mov	rsp, rsp
	sub	rcx, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x38], rcx
.label_1130:
	mov	rax, qword ptr [rbp - 0x38]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x28], rax
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x18]
	add	rcx, 0x1c
	mov	rbp, rbp
	add	rcx, rax
	mov	rsi, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	mov	rdi, rcx
	call	memcpy
	mov	rax, qword ptr [rbp - 0x28]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	mov	r8d, dword ptr [rcx + 0x18]
	lea	rdi, [rdi]
	mov	edx, r8d
	mov	rsp, rsp
	add	rdx, rax
	nop	
	mov	r8d, edx
	mov	dword ptr [rcx + 0x18], r8d
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x18]
	cmp	dword ptr [rax + 0x18], 0x40
	mov	rsp, rsp
	jbe	.label_1133
	nop	
	mov	rax, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	add	rax, 0x1c
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	edx, dword ptr [rcx + 0x18]
	mov	rsp, rsp
	and	edx, 0xffffffc0
	mov	edx, edx
	mov	esi, edx
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rdi, rax
	call	md5_process_block
	mov	rax, qword ptr [rbp - 0x18]
	mov	r8d, dword ptr [rax + 0x18]
	and	r8d, 0x3f
	lea	rdi, [rdi]
	mov	dword ptr [rax + 0x18], r8d
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 0x1c
	mov	rcx, qword ptr [rbp - 0x20]
	add	rcx, qword ptr [rbp - 0x28]
	and	rcx, 0xffffffffffffffc0
	mov	rdx, qword ptr [rbp - 0x18]
	add	rdx, 0x1c
	add	rdx, rcx
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	mov	r8d, dword ptr [rcx + 0x18]
	mov	ecx, r8d
	mov	rsp, rsp
	mov	rdi, rax
	mov	rbp, rbp
	mov	rsi, rdx
	mov	rbp, rbp
	mov	rdx, rcx
	call	memcpy
.label_1133:
	mov	rax, qword ptr [rbp - 8]
	add	rax, qword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 8], rax
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	sub	rcx, rax
	mov	qword ptr [rbp - 0x10], rcx
.label_1127:
	cmp	qword ptr [rbp - 0x10], 0x40
	mov	rsp, rsp
	jb	.label_1132
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 8]
	and	rax, 3
	cmp	rax, 0
	mov	rbp, rbp
	je	.label_1131
	lea	rsi, [rsi]
	jmp	.label_1136
.label_1136:
	cmp	qword ptr [rbp - 0x10], 0x40
	mov	rbp, rbp
	jbe	.label_1128
	mov	rsp, rsp
	mov	eax, 0x40
	mov	ecx, eax
	nop	
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	add	rdx, 0x1c
	mov	rsi, qword ptr [rbp - 8]
	mov	rdi, rdx
	mov	qword ptr [rbp - 0x40], rdx
	nop	
	mov	rdx, rcx
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x48], rcx
	mov	rbp, rbp
	call	memcpy
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rdi, qword ptr [rbp - 0x40]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x48]
	mov	rbp, rbp
	call	md5_process_block
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 8]
	mov	rsp, rsp
	add	rcx, 0x40
	mov	rsp, rsp
	mov	qword ptr [rbp - 8], rcx
	nop	
	mov	rcx, qword ptr [rbp - 0x10]
	sub	rcx, 0x40
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x10], rcx
	jmp	.label_1136
.label_1128:
	jmp	.label_1129
.label_1131:
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 8]
	mov	rax, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	and	rax, 0xffffffffffffffc0
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rsi, rax
	lea	rsi, [rsi]
	call	md5_process_block
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 8]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	and	rdx, 0xffffffffffffffc0
	add	rax, rdx
	mov	rbp, rbp
	mov	qword ptr [rbp - 8], rax
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x10]
	and	rax, 0x3f
	nop	
	mov	qword ptr [rbp - 0x10], rax
.label_1129:
	lea	rsi, [rsi]
	jmp	.label_1132
.label_1132:
	cmp	qword ptr [rbp - 0x10], 0
	jbe	.label_1135
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x18]
	mov	ecx, dword ptr [rax + 0x18]
	lea	rdi, [rdi]
	mov	eax, ecx
	mov	qword ptr [rbp - 0x30], rax
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x30]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x18]
	add	rdx, 0x1c
	add	rdx, rax
	mov	rsi, qword ptr [rbp - 8]
	mov	rax, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	rdi, rdx
	mov	rdx, rax
	lea	rsi, [rsi]
	call	memcpy
	nop	
	mov	rax, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	add	rax, qword ptr [rbp - 0x30]
	nop	
	mov	qword ptr [rbp - 0x30], rax
	cmp	qword ptr [rbp - 0x30], 0x40
	nop	
	jb	.label_1137
	mov	eax, 0x40
	mov	esi, eax
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x18]
	add	rcx, 0x1c
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	mov	rdi, rcx
	call	md5_process_block
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x30]
	lea	rdi, [rdi]
	sub	rcx, 0x40
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x30], rcx
	mov	rcx, qword ptr [rbp - 0x18]
	add	rcx, 0x1c
	mov	rdx, qword ptr [rbp - 0x18]
	nop	
	add	rdx, 0x1c
	add	rdx, 0x40
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x30]
	mov	rdi, rcx
	mov	qword ptr [rbp - 0x50], rsi
	mov	rsi, rdx
	mov	rdx, qword ptr [rbp - 0x50]
	lea	rsi, [rsi]
	call	memcpy
.label_1137:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x30]
	mov	rbp, rbp
	mov	ecx, eax
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	mov	dword ptr [rax + 0x18], ecx
.label_1135:
	add	rsp, 0x50
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x414630
	.globl md5_buffer
	.type md5_buffer, @function
md5_buffer:

	nop
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0xc0
	lea	rsi, [rsi]
	lea	rax, [rbp - 0xb8]
	nop	
	mov	qword ptr [rbp - 8], rdi
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	rdi, rax
	mov	rsp, rsp
	call	md5_init_ctx
	mov	rbp, rbp
	lea	rdx, [rbp - 0xb8]
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	call	md5_process_bytes
	lea	rdi, [rbp - 0xb8]
	mov	rsi, qword ptr [rbp - 0x18]
	nop	
	call	md5_finish_ctx
	add	rsp, 0xc0
	nop	
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4146a0

	.globl fdadvise
	.type fdadvise, @function
fdadvise:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	dword ptr [rbp - 4], edi
	nop	
	mov	qword ptr [rbp - 0x10], rsi
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x18], rdx
	mov	dword ptr [rbp - 0x1c], ecx
	mov	edi, dword ptr [rbp - 4]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x18]
	mov	ecx, dword ptr [rbp - 0x1c]
	call	posix_fadvise
	nop	
	mov	dword ptr [rbp - 0x20], eax
	lea	rsi, [rsi]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4146e0

	.globl fadvise
	.type fadvise, @function
fadvise:
	lea	rdi, [rdi]
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 8], rdi
	mov	dword ptr [rbp - 0xc], esi
	mov	rsp, rsp
	cmp	qword ptr [rbp - 8], 0
	je	.label_1138
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 8]
	mov	rsp, rsp
	call	fileno
	xor	ecx, ecx
	mov	edi, ecx
	mov	ecx, dword ptr [rbp - 0xc]
	mov	qword ptr [rbp - 0x18], rdi
	mov	edi, eax
	mov	rsi, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x18]
	call	fdadvise
.label_1138:
	add	rsp, 0x20
	lea	rsi, [rsi]
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x414740

	.globl filevercmp
	.type filevercmp, @function
filevercmp:
	push	rbp
	mov	rbp, rbp
	mov	rbp, rsp
	sub	rsp, 0x80
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	nop	
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	call	strcmp
	mov	dword ptr [rbp - 0x50], eax
	cmp	dword ptr [rbp - 0x50], 0
	jne	.label_1156
	mov	dword ptr [rbp - 4], 0
	jmp	.label_1142
.label_1156:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	cmp	byte ptr [rax], 0
	jne	.label_1139
	mov	dword ptr [rbp - 4], 0xffffffff
	jmp	.label_1142
.label_1139:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	cmp	byte ptr [rax], 0
	jne	.label_1146
	mov	dword ptr [rbp - 4], 1
	jmp	.label_1142
.label_1146:
	lea	rdi, [rdi]
	xor	eax, eax
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	ecx, OFFSET FLAT:.str_6
	mov	edi, ecx
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x54], eax
	call	strcmp
	mov	ecx, dword ptr [rbp - 0x54]
	cmp	ecx, eax
	jne	.label_1155
	nop	
	mov	dword ptr [rbp - 4], 0xffffffff
	lea	rdi, [rdi]
	jmp	.label_1142
.label_1155:
	xor	eax, eax
	mov	rsi, qword ptr [rbp - 0x18]
	mov	ecx, OFFSET FLAT:.str_6
	mov	edi, ecx
	mov	dword ptr [rbp - 0x58], eax
	call	strcmp
	mov	ecx, dword ptr [rbp - 0x58]
	mov	rbp, rbp
	cmp	ecx, eax
	mov	rbp, rbp
	jne	.label_1144
	mov	rbp, rbp
	mov	dword ptr [rbp - 4], 1
	jmp	.label_1142
.label_1144:
	xor	eax, eax
	mov	rsi, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	ecx, OFFSET FLAT:.str.1_2
	mov	rsp, rsp
	mov	edi, ecx
	nop	
	mov	dword ptr [rbp - 0x5c], eax
	call	strcmp
	mov	rsp, rsp
	mov	ecx, dword ptr [rbp - 0x5c]
	cmp	ecx, eax
	mov	rsp, rsp
	jne	.label_1152
	mov	dword ptr [rbp - 4], 0xffffffff
	jmp	.label_1142
.label_1152:
	xor	eax, eax
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x18]
	mov	ecx, OFFSET FLAT:.str.1_2
	lea	rdi, [rdi]
	mov	edi, ecx
	mov	dword ptr [rbp - 0x60], eax
	call	strcmp
	lea	rdi, [rdi]
	mov	ecx, dword ptr [rbp - 0x60]
	cmp	ecx, eax
	jne	.label_1140
	mov	rsp, rsp
	mov	dword ptr [rbp - 4], 1
	jmp	.label_1142
.label_1140:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	movsx	ecx, byte ptr [rax]
	mov	rbp, rbp
	cmp	ecx, 0x2e
	lea	rdi, [rdi]
	jne	.label_1145
	mov	rax, qword ptr [rbp - 0x18]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0x2e
	mov	rbp, rbp
	je	.label_1145
	mov	dword ptr [rbp - 4], 0xffffffff
	jmp	.label_1142
.label_1145:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	movsx	ecx, byte ptr [rax]
	nop	
	cmp	ecx, 0x2e
	je	.label_1154
	nop	
	mov	rax, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0x2e
	mov	rbp, rbp
	jne	.label_1154
	mov	dword ptr [rbp - 4], 1
	nop	
	jmp	.label_1142
.label_1154:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	movsx	ecx, byte ptr [rax]
	nop	
	cmp	ecx, 0x2e
	mov	rsp, rsp
	jne	.label_1148
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	movsx	ecx, byte ptr [rax]
	lea	rdi, [rdi]
	cmp	ecx, 0x2e
	lea	rdi, [rdi]
	jne	.label_1148
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x10]
	nop	
	add	rax, 1
	mov	qword ptr [rbp - 0x10], rax
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 1
	mov	qword ptr [rbp - 0x18], rax
.label_1148:
	mov	rbp, rbp
	lea	rdi, [rbp - 0x20]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x20], rax
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x28], rax
	call	match_suffix
	lea	rsi, [rsi]
	lea	rdi, [rbp - 0x28]
	mov	qword ptr [rbp - 0x30], rax
	call	match_suffix
	mov	qword ptr [rbp - 0x38], rax
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x30], 0
	je	.label_1151
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x68], rax
	mov	rbp, rbp
	jmp	.label_1150
.label_1151:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x20]
	nop	
	mov	qword ptr [rbp - 0x68], rax
.label_1150:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x68]
	mov	rcx, qword ptr [rbp - 0x10]
	sub	rax, rcx
	mov	qword ptr [rbp - 0x40], rax
	cmp	qword ptr [rbp - 0x38], 0
	je	.label_1153
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x38]
	nop	
	mov	qword ptr [rbp - 0x70], rax
	jmp	.label_1157
.label_1153:
	mov	rax, qword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x70], rax
.label_1157:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x70]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x18]
	sub	rax, rcx
	mov	qword ptr [rbp - 0x48], rax
	cmp	qword ptr [rbp - 0x30], 0
	mov	rbp, rbp
	jne	.label_1141
	nop	
	cmp	qword ptr [rbp - 0x38], 0
	je	.label_1147
.label_1141:
	mov	rax, qword ptr [rbp - 0x40]
	cmp	rax, qword ptr [rbp - 0x48]
	jne	.label_1147
	nop	
	mov	rdi, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 0x40]
	call	strncmp
	mov	rbp, rbp
	xor	ecx, ecx
	mov	rbp, rbp
	cmp	ecx, eax
	mov	rsp, rsp
	jne	.label_1147
	mov	rax, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	sub	rax, rcx
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x40], rax
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	sub	rax, rcx
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x48], rax
.label_1147:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x40]
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x48]
	call	verrevcmp
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x4c], eax
	cmp	dword ptr [rbp - 0x4c], 0
	lea	rdi, [rdi]
	jne	.label_1149
	mov	eax, dword ptr [rbp - 0x50]
	mov	dword ptr [rbp - 0x74], eax
	nop	
	jmp	.label_1143
.label_1149:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x4c]
	mov	dword ptr [rbp - 0x74], eax
.label_1143:
	mov	eax, dword ptr [rbp - 0x74]
	mov	rsp, rsp
	mov	dword ptr [rbp - 4], eax
.label_1142:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x80
	mov	rbp, rbp
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x414af0

	.globl match_suffix
	.type match_suffix, @function
match_suffix:
	push	rbp
	lea	rdi, [rdi]
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 8], rdi
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x10], 0
	mov	byte ptr [rbp - 0x11], 0
.label_1161:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax]
	cmp	byte ptr [rax], 0
	je	.label_1164
	test	byte ptr [rbp - 0x11], 1
	mov	rsp, rsp
	je	.label_1159
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x11], 0
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax]
	mov	rbp, rbp
	movsx	edi, byte ptr [rax]
	call	c_isalpha
	test	al, 1
	jne	.label_1163
	mov	rsp, rsp
	mov	eax, 0x7e
	mov	rcx, qword ptr [rbp - 8]
	mov	rcx, qword ptr [rcx]
	movsx	edx, byte ptr [rcx]
	cmp	eax, edx
	je	.label_1163
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x10], 0
.label_1163:
	lea	rdi, [rdi]
	jmp	.label_1165
.label_1159:
	lea	rsi, [rsi]
	mov	eax, 0x2e
	mov	rcx, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rcx]
	mov	rsp, rsp
	movsx	edx, byte ptr [rcx]
	cmp	eax, edx
	mov	rsp, rsp
	jne	.label_1166
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x11], 1
	cmp	qword ptr [rbp - 0x10], 0
	jne	.label_1160
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x10], rax
.label_1160:
	lea	rdi, [rdi]
	jmp	.label_1162
.label_1166:
	nop	
	mov	rax, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax]
	movsx	edi, byte ptr [rax]
	lea	rdi, [rdi]
	call	c_isalnum
	test	al, 1
	mov	rbp, rbp
	jne	.label_1158
	lea	rsi, [rsi]
	mov	eax, 0x7e
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	rcx, qword ptr [rcx]
	movsx	edx, byte ptr [rcx]
	cmp	eax, edx
	je	.label_1158
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x10], 0
.label_1158:
	nop	
	jmp	.label_1162
.label_1162:
	jmp	.label_1165
.label_1165:
	nop	
	mov	rax, qword ptr [rbp - 8]
	mov	rcx, qword ptr [rax]
	mov	rbp, rbp
	add	rcx, 1
	mov	qword ptr [rax], rcx
	mov	rsp, rsp
	jmp	.label_1161
.label_1164:
	nop	
	mov	rax, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	add	rsp, 0x20
	nop	
	pop	rbp
	lea	rsi, [rsi]
	ret	
	.section	.text
	.align	16
	#Procedure 0x414c50

	.globl verrevcmp
	.type verrevcmp, @function
verrevcmp:
	nop	
	push	rbp
	mov	rbp, rbp
	mov	rbp, rsp
	sub	rsp, 0x60
	mov	qword ptr [rbp - 0x10], rdi
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x18], rsi
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x20], rdx
	nop	
	mov	qword ptr [rbp - 0x28], rcx
	mov	qword ptr [rbp - 0x30], 0
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x38], 0
.label_1194:
	mov	al, 1
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x30]
	cmp	rcx, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x45], al
	jb	.label_1174
	mov	rax, qword ptr [rbp - 0x38]
	cmp	rax, qword ptr [rbp - 0x28]
	setb	cl
	mov	byte ptr [rbp - 0x45], cl
.label_1174:
	mov	rsp, rsp
	mov	al, byte ptr [rbp - 0x45]
	mov	rbp, rbp
	test	al, 1
	nop	
	jne	.label_1177
	jmp	.label_1182
.label_1177:
	mov	dword ptr [rbp - 0x3c], 0
.label_1170:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x30]
	cmp	rax, qword ptr [rbp - 0x18]
	jae	.label_1185
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x10]
	movsx	edi, byte ptr [rcx + rax]
	mov	rbp, rbp
	call	c_isdigit
	mov	rbp, rbp
	mov	dl, 1
	lea	rsi, [rsi]
	test	al, 1
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x46], dl
	jne	.label_1185
	jmp	.label_1169
.label_1185:
	mov	rsp, rsp
	xor	eax, eax
	mov	cl, al
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x38]
	cmp	rdx, qword ptr [rbp - 0x28]
	mov	byte ptr [rbp - 0x47], cl
	jae	.label_1171
	mov	rax, qword ptr [rbp - 0x38]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x20]
	movsx	edi, byte ptr [rcx + rax]
	nop	
	call	c_isdigit
	xor	al, 0xff
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x47], al
.label_1171:
	mov	al, byte ptr [rbp - 0x47]
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x46], al
.label_1169:
	mov	al, byte ptr [rbp - 0x46]
	lea	rdi, [rdi]
	test	al, 1
	mov	rbp, rbp
	jne	.label_1186
	jmp	.label_1190
.label_1186:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x30]
	cmp	rax, qword ptr [rbp - 0x18]
	jne	.label_1187
	lea	rsi, [rsi]
	xor	eax, eax
	mov	dword ptr [rbp - 0x4c], eax
	jmp	.label_1195
.label_1187:
	mov	rax, qword ptr [rbp - 0x30]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x10]
	movzx	edi, byte ptr [rcx + rax]
	call	order
	mov	dword ptr [rbp - 0x4c], eax
.label_1195:
	mov	eax, dword ptr [rbp - 0x4c]
	mov	dword ptr [rbp - 0x40], eax
	mov	rcx, qword ptr [rbp - 0x38]
	lea	rsi, [rsi]
	cmp	rcx, qword ptr [rbp - 0x28]
	jne	.label_1173
	mov	rbp, rbp
	xor	eax, eax
	mov	dword ptr [rbp - 0x50], eax
	jmp	.label_1178
.label_1173:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x38]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	movzx	edi, byte ptr [rcx + rax]
	call	order
	mov	dword ptr [rbp - 0x50], eax
.label_1178:
	mov	eax, dword ptr [rbp - 0x50]
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x44], eax
	mov	eax, dword ptr [rbp - 0x40]
	nop	
	cmp	eax, dword ptr [rbp - 0x44]
	je	.label_1188
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x40]
	mov	rsp, rsp
	sub	eax, dword ptr [rbp - 0x44]
	mov	rbp, rbp
	mov	dword ptr [rbp - 4], eax
	lea	rsi, [rsi]
	jmp	.label_1168
.label_1188:
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, 1
	mov	qword ptr [rbp - 0x30], rax
	mov	rax, qword ptr [rbp - 0x38]
	add	rax, 1
	mov	qword ptr [rbp - 0x38], rax
	jmp	.label_1170
.label_1190:
	jmp	.label_1175
.label_1175:
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	movsx	edx, byte ptr [rcx + rax]
	nop	
	cmp	edx, 0x30
	jne	.label_1176
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, 1
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_1175
.label_1176:
	lea	rsi, [rsi]
	jmp	.label_1189
.label_1189:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x38]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x20]
	movsx	edx, byte ptr [rcx + rax]
	nop	
	cmp	edx, 0x30
	jne	.label_1191
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x38]
	nop	
	add	rax, 1
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x38], rax
	jmp	.label_1189
.label_1191:
	jmp	.label_1172
.label_1172:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x30]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x10]
	movsx	edi, byte ptr [rcx + rax]
	call	c_isdigit
	xor	edi, edi
	mov	rsp, rsp
	mov	dl, dil
	test	al, 1
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x51], dl
	lea	rsi, [rsi]
	jne	.label_1179
	nop	
	jmp	.label_1183
.label_1179:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	movsx	edi, byte ptr [rcx + rax]
	call	c_isdigit
	mov	byte ptr [rbp - 0x51], al
.label_1183:
	mov	al, byte ptr [rbp - 0x51]
	test	al, 1
	lea	rdi, [rdi]
	jne	.label_1192
	mov	rbp, rbp
	jmp	.label_1197
.label_1192:
	cmp	dword ptr [rbp - 0x3c], 0
	nop	
	jne	.label_1167
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x30]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x10]
	movsx	edx, byte ptr [rcx + rax]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x38]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x20]
	movsx	esi, byte ptr [rcx + rax]
	lea	rsi, [rsi]
	sub	edx, esi
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x3c], edx
.label_1167:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x30]
	mov	rbp, rbp
	add	rax, 1
	mov	qword ptr [rbp - 0x30], rax
	nop	
	mov	rax, qword ptr [rbp - 0x38]
	add	rax, 1
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x38], rax
	jmp	.label_1172
.label_1197:
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x10]
	movsx	edi, byte ptr [rcx + rax]
	call	c_isdigit
	mov	rsp, rsp
	test	al, 1
	jne	.label_1180
	nop	
	jmp	.label_1196
.label_1180:
	mov	dword ptr [rbp - 4], 1
	jmp	.label_1168
.label_1196:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x38]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	movsx	edi, byte ptr [rcx + rax]
	call	c_isdigit
	test	al, 1
	lea	rdi, [rdi]
	jne	.label_1193
	nop	
	jmp	.label_1181
.label_1193:
	mov	dword ptr [rbp - 4], 0xffffffff
	mov	rsp, rsp
	jmp	.label_1168
.label_1181:
	cmp	dword ptr [rbp - 0x3c], 0
	mov	rbp, rbp
	je	.label_1184
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x3c]
	mov	dword ptr [rbp - 4], eax
	mov	rbp, rbp
	jmp	.label_1168
.label_1184:
	mov	rbp, rbp
	jmp	.label_1194
.label_1182:
	mov	rsp, rsp
	mov	dword ptr [rbp - 4], 0
.label_1168:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x60
	mov	rsp, rsp
	pop	rbp
	lea	rsi, [rsi]
	ret	
	.section	.text
	.align	16
	#Procedure 0x415010

	.globl order
	.type order, @function
order:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	nop	
	mov	al, dil
	mov	rsp, rsp
	mov	byte ptr [rbp - 5], al
	movzx	edi, byte ptr [rbp - 5]
	call	c_isdigit
	test	al, 1
	lea	rdi, [rdi]
	jne	.label_1201
	jmp	.label_1199
.label_1201:
	mov	dword ptr [rbp - 4], 0
	jmp	.label_1200
.label_1199:
	lea	rsi, [rsi]
	movzx	edi, byte ptr [rbp - 5]
	mov	rbp, rbp
	call	c_isalpha
	nop	
	test	al, 1
	mov	rsp, rsp
	jne	.label_1202
	jmp	.label_1198
.label_1202:
	mov	rsp, rsp
	movzx	eax, byte ptr [rbp - 5]
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 4], eax
	nop	
	jmp	.label_1200
.label_1198:
	movzx	eax, byte ptr [rbp - 5]
	mov	rsp, rsp
	cmp	eax, 0x7e
	jne	.label_1203
	mov	dword ptr [rbp - 4], 0xffffffff
	mov	rbp, rbp
	jmp	.label_1200
.label_1203:
	movzx	eax, byte ptr [rbp - 5]
	add	eax, 0xff
	add	eax, 1
	mov	dword ptr [rbp - 4], eax
.label_1200:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 4]
	lea	rsi, [rsi]
	add	rsp, 0x10
	pop	rbp
	mov	rbp, rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4150c0

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
	mov	dword ptr [rbp - 4], edi
	mov	byte ptr [rbp - 5], 1
	mov	edi, dword ptr [rbp - 4]
	call	setlocale
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x10], rax
	cmp	qword ptr [rbp - 0x10], 0
	nop	
	je	.label_1205
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	eax, OFFSET FLAT:.str_7
	mov	rsp, rsp
	mov	esi, eax
	call	strcmp
	lea	rdi, [rdi]
	cmp	eax, 0
	je	.label_1206
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x10]
	mov	eax, OFFSET FLAT:.str.1_3
	lea	rsi, [rsi]
	mov	esi, eax
	call	strcmp
	cmp	eax, 0
	jne	.label_1204
.label_1206:
	mov	byte ptr [rbp - 5], 0
.label_1204:
	jmp	.label_1205
.label_1205:
	mov	al, byte ptr [rbp - 5]
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
	.align	16
	#Procedure 0x415160

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
	.align	16
	#Procedure 0x415180

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
	.align	16
	#Procedure 0x4151a0

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
	.align	16
	#Procedure 0x4151c0

	.globl hash_get_max_bucket_length
	.type hash_get_max_bucket_length, @function
hash_get_max_bucket_length:
	push	rbp
	nop	
	mov	rbp, rsp
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 8], rdi
	nop	
	mov	qword ptr [rbp - 0x18], 0
	mov	rdi, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rdi]
	mov	qword ptr [rbp - 0x10], rdi
.label_1212:
	nop	
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 8]
	mov	rbp, rbp
	cmp	rax, qword ptr [rcx + 8]
	lea	rsi, [rsi]
	jae	.label_1207
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x10]
	cmp	qword ptr [rax], 0
	je	.label_1209
	nop	
	mov	rax, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x20], rax
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x28], 1
.label_1213:
	nop	
	mov	rax, qword ptr [rbp - 0x20]
	mov	rax, qword ptr [rax + 8]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x20], rax
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x20], 0
	je	.label_1208
	nop	
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, 1
	mov	qword ptr [rbp - 0x28], rax
	nop	
	jmp	.label_1213
.label_1208:
	mov	rax, qword ptr [rbp - 0x28]
	mov	rbp, rbp
	cmp	rax, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	jbe	.label_1210
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x18], rax
.label_1210:
	jmp	.label_1209
.label_1209:
	mov	rbp, rbp
	jmp	.label_1211
.label_1211:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 0x10
	nop	
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_1212
.label_1207:
	mov	rax, qword ptr [rbp - 0x18]
	pop	rbp
	mov	rbp, rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4152a0
	.globl hash_table_ok
	.type hash_table_ok, @function
hash_table_ok:

	mov	rbp, rbp
	push	rbp
	mov	rbp, rsp
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x10], rdi
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x20], 0
	mov	qword ptr [rbp - 0x28], 0
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	rdi, qword ptr [rdi]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x18], rdi
.label_1214:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rcx + 8]
	lea	rdi, [rdi]
	jae	.label_1219
	mov	rax, qword ptr [rbp - 0x18]
	cmp	qword ptr [rax], 0
	je	.label_1218
	mov	rax, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x30], rax
	mov	rax, qword ptr [rbp - 0x20]
	add	rax, 1
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x20], rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	add	rax, 1
	mov	qword ptr [rbp - 0x28], rax
.label_1215:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x30]
	mov	rbp, rbp
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x30], rax
	cmp	qword ptr [rbp - 0x30], 0
	je	.label_1216
	mov	rax, qword ptr [rbp - 0x28]
	nop	
	add	rax, 1
	mov	qword ptr [rbp - 0x28], rax
	mov	rbp, rbp
	jmp	.label_1215
.label_1216:
	jmp	.label_1218
.label_1218:
	jmp	.label_1221
.label_1221:
	mov	rax, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	add	rax, 0x10
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x18], rax
	lea	rdi, [rdi]
	jmp	.label_1214
.label_1219:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rcx + 0x18]
	lea	rdi, [rdi]
	jne	.label_1220
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rcx + 0x20]
	jne	.label_1220
	mov	byte ptr [rbp - 1], 1
	jmp	.label_1217
.label_1220:
	mov	byte ptr [rbp - 1], 0
.label_1217:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	lea	rdi, [rdi]
	movzx	eax, al
	nop	
	pop	rbp
	lea	rsi, [rsi]
	ret	
	.section	.text
	.align	16
	#Procedure 0x4153d0
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
	movabs	rax, OFFSET FLAT:.str.2_1
	mov	rbp, rbp
	mov	qword ptr [rbp - 8], rdi
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x10], rsi
	mov	rdi, qword ptr [rbp - 8]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x38], rax
	call	hash_get_n_entries
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x18], rax
	mov	rdi, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	call	hash_get_n_buckets
	mov	qword ptr [rbp - 0x20], rax
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 8]
	mov	rsp, rsp
	call	hash_get_n_buckets_used
	mov	qword ptr [rbp - 0x28], rax
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	call	hash_get_max_bucket_length
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x30], rax
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	mov	ecx, OFFSET FLAT:.str_8
	mov	rbp, rbp
	mov	esi, ecx
	lea	rsi, [rsi]
	xor	ecx, ecx
	lea	rsi, [rsi]
	mov	r8b, cl
	mov	rsp, rsp
	mov	al, r8b
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x39], r8b
	call	fprintf
	nop	
	mov	rdi, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x20]
	mov	ecx, OFFSET FLAT:.str.1_4
	mov	esi, ecx
	mov	r8b, byte ptr [rbp - 0x39]
	mov	dword ptr [rbp - 0x40], eax
	mov	al, r8b
	mov	rsp, rsp
	call	fprintf
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	movq	xmm0, rdx
	nop	
	movaps	xmm1,  xmmword ptr [word ptr [rip + label_247]]
	punpckldq	xmm0, xmm1
	mov	rbp, rbp
	movapd	xmm2,  xmmword ptr [word ptr [rip + label_248]]
	subpd	xmm0, xmm2
	pshufd	xmm3, xmm0, 0x4e
	addpd	xmm3, xmm0
	movsd	xmm0,  qword ptr [word ptr [rip + label_260]]
	mulsd	xmm3, xmm0
	movq	xmm0, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	punpckldq	xmm0, xmm1
	subpd	xmm0, xmm2
	pshufd	xmm1, xmm0, 0x4e
	mov	rbp, rbp
	addpd	xmm1, xmm0
	mov	rbp, rbp
	divsd	xmm3, xmm1
	mov	rsi, qword ptr [rbp - 0x38]
	nop	
	movaps	xmm0, xmm3
	mov	dword ptr [rbp - 0x44], eax
	lea	rsi, [rsi]
	mov	al, 1
	mov	rbp, rbp
	call	fprintf
	movabs	rsi, OFFSET FLAT:.str.3_1
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x30]
	mov	dword ptr [rbp - 0x48], eax
	mov	al, 0
	mov	rbp, rbp
	call	fprintf
	mov	dword ptr [rbp - 0x4c], eax
	add	rsp, 0x50
	nop	
	pop	rbp
	nop	
	ret	
	.section	.text
	.align	16
	#Procedure 0x415550
	.globl hash_lookup
	.type hash_lookup, @function
hash_lookup:

	mov	rsp, rsp
	push	rbp
	mov	rbp, rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x18]
	call	safe_hasher
	mov	qword ptr [rbp - 0x20], rax
	mov	rax, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	cmp	qword ptr [rax], 0
	jne	.label_1228
	mov	qword ptr [rbp - 8], 0
	nop	
	jmp	.label_1227
.label_1228:
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x28], rax
.label_1226:
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x28], 0
	je	.label_1223
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x28]
	cmp	rax, qword ptr [rcx]
	je	.label_1222
	mov	rax, qword ptr [rbp - 0x10]
	nop	
	mov	rax, qword ptr [rax + 0x38]
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	rsi, qword ptr [rcx]
	nop	
	call	rax
	lea	rdi, [rdi]
	test	al, 1
	jne	.label_1222
	mov	rsp, rsp
	jmp	.label_1225
.label_1222:
	nop	
	mov	rax, qword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_1227
.label_1225:
	nop	
	jmp	.label_1224
.label_1224:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x28]
	nop	
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x28], rax
	jmp	.label_1226
.label_1223:
	mov	rsp, rsp
	mov	qword ptr [rbp - 8], 0
.label_1227:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	add	rsp, 0x30
	mov	rbp, rbp
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x415640

	.globl safe_hasher
	.type safe_hasher, @function
safe_hasher:
	push	rbp
	mov	rbp, rsp
	mov	rsp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 8], rdi
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsi, qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	rsi, qword ptr [rsi + 0x30]
	mov	rdi, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax + 0x10]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x20], rsi
	nop	
	mov	rsi, rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	call	rax
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x18], rax
	mov	rax, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 8]
	mov	rbp, rbp
	cmp	rax, qword ptr [rsi + 0x10]
	jb	.label_1229
	call	abort
.label_1229:
	nop	
	mov	rax, qword ptr [rbp - 8]
	nop	
	mov	rax, qword ptr [rax]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x18]
	nop	
	shl	rcx, 4
	nop	
	add	rax, rcx
	mov	rbp, rbp
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4156d0
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
	jne	.label_1230
	mov	qword ptr [rbp - 8], 0
	jmp	.label_1234
.label_1230:
	mov	rax, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0x18], rax
.label_1232:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rcx + 8]
	mov	rsp, rsp
	jb	.label_1231
	lea	rsi, [rsi]
	call	abort
.label_1231:
	mov	rax, qword ptr [rbp - 0x18]
	cmp	qword ptr [rax], 0
	lea	rdi, [rdi]
	je	.label_1236
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x18]
	nop	
	mov	rax, qword ptr [rax]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_1234
.label_1236:
	jmp	.label_1235
.label_1235:
	nop	
	jmp	.label_1233
.label_1233:
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 0x10
	nop	
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_1232
.label_1234:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x20
	pop	rbp
	lea	rdi, [rdi]
	ret	
	.section	.text
	.align	16
	#Procedure 0x415790
	.globl hash_get_next
	.type hash_get_next, @function
hash_get_next:

	mov	rsp, rsp
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x18]
	call	safe_hasher
	mov	qword ptr [rbp - 0x20], rax
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x20]
	nop	
	mov	qword ptr [rbp - 0x28], rax
.label_1240:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x28]
	nop	
	mov	rax, qword ptr [rax]
	nop	
	cmp	rax, qword ptr [rbp - 0x18]
	jne	.label_1238
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x28]
	cmp	qword ptr [rax + 8], 0
	je	.label_1238
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x28]
	mov	rax, qword ptr [rax + 8]
	mov	rbp, rbp
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_1242
.label_1238:
	mov	rax, qword ptr [rbp - 0x28]
	mov	rax, qword ptr [rax + 8]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x28], rax
	cmp	qword ptr [rbp - 0x28], 0
	mov	rbp, rbp
	jne	.label_1240
	jmp	.label_1237
.label_1237:
	mov	rax, qword ptr [rbp - 0x20]
	add	rax, 0x10
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x20], rax
	mov	rcx, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rcx + 8]
	jae	.label_1241
	mov	rax, qword ptr [rbp - 0x20]
	nop	
	cmp	qword ptr [rax], 0
	lea	rdi, [rdi]
	je	.label_1239
	mov	rax, qword ptr [rbp - 0x20]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 8], rax
	mov	rbp, rbp
	jmp	.label_1242
.label_1239:
	jmp	.label_1237
.label_1241:
	mov	qword ptr [rbp - 8], 0
.label_1242:
	mov	rax, qword ptr [rbp - 8]
	mov	rbp, rbp
	add	rsp, 0x30
	mov	rsp, rsp
	pop	rbp
	mov	rbp, rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x415890
	.globl hash_get_entries
	.type hash_get_entries, @function
hash_get_entries:

	nop
	push	rbp
	mov	rbp, rsp
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x10], rdi
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], rdx
	nop	
	mov	qword ptr [rbp - 0x28], 0
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rdx]
	mov	qword ptr [rbp - 0x30], rdx
.label_1246:
	mov	rax, qword ptr [rbp - 0x30]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	cmp	rax, qword ptr [rcx + 8]
	mov	rsp, rsp
	jae	.label_1243
	mov	rax, qword ptr [rbp - 0x30]
	lea	rdi, [rdi]
	cmp	qword ptr [rax], 0
	nop	
	je	.label_1245
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x30]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x38], rax
.label_1244:
	cmp	qword ptr [rbp - 0x38], 0
	nop	
	je	.label_1250
	mov	rax, qword ptr [rbp - 0x28]
	cmp	rax, qword ptr [rbp - 0x20]
	jb	.label_1247
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_1249
.label_1247:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x38]
	mov	rax, qword ptr [rax]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	mov	rdx, rcx
	add	rdx, 1
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x28], rdx
	mov	rdx, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	mov	qword ptr [rdx + rcx*8], rax
	mov	rax, qword ptr [rbp - 0x38]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x38], rax
	lea	rsi, [rsi]
	jmp	.label_1244
.label_1250:
	lea	rsi, [rsi]
	jmp	.label_1245
.label_1245:
	jmp	.label_1248
.label_1248:
	mov	rax, qword ptr [rbp - 0x30]
	nop	
	add	rax, 0x10
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x30], rax
	nop	
	jmp	.label_1246
.label_1243:
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 8], rax
.label_1249:
	mov	rax, qword ptr [rbp - 8]
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4159a0
	.globl hash_do_for_each
	.type hash_do_for_each, @function
hash_do_for_each:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x40
	mov	qword ptr [rbp - 0x10], rdi
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], rdx
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x28], 0
	mov	rdx, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rdx]
	mov	qword ptr [rbp - 0x30], rdx
.label_1256:
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rcx + 8]
	mov	rsp, rsp
	jae	.label_1255
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x30]
	nop	
	cmp	qword ptr [rax], 0
	lea	rsi, [rsi]
	je	.label_1252
	mov	rax, qword ptr [rbp - 0x30]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x38], rax
.label_1254:
	cmp	qword ptr [rbp - 0x38], 0
	je	.label_1258
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x38]
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rcx]
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x20]
	call	rax
	mov	rsp, rsp
	test	al, 1
	mov	rsp, rsp
	jne	.label_1253
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_1257
.label_1253:
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, 1
	mov	qword ptr [rbp - 0x28], rax
	mov	rax, qword ptr [rbp - 0x38]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x38], rax
	jmp	.label_1254
.label_1258:
	mov	rbp, rbp
	jmp	.label_1252
.label_1252:
	nop	
	jmp	.label_1251
.label_1251:
	nop	
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, 0x10
	nop	
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_1256
.label_1255:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 8], rax
.label_1257:
	mov	rax, qword ptr [rbp - 8]
	mov	rsp, rsp
	add	rsp, 0x40
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x415ab0
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
.label_1259:
	nop	
	mov	rax, qword ptr [rbp - 8]
	mov	cl, byte ptr [rax]
	nop	
	mov	byte ptr [rbp - 0x19], cl
	cmp	cl, 0
	nop	
	je	.label_1260
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
	jmp	.label_1259
.label_1260:
	mov	rax, qword ptr [rbp - 0x18]
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x415b20
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
	mov	rax,  qword ptr [word ptr [label_1261]]
	mov	qword ptr [rdi + 8], rax
	lea	rsi, [rsi]
	mov	ecx,  dword ptr [dword ptr [label_1262]]
	lea	rsi, [rsi]
	mov	dword ptr [rdi + 0x10], ecx
	pop	rbp
	lea	rsi, [rsi]
	ret	
	.section	.text
	.align	16
	#Procedure 0x415b70

	.globl hash_initialize
	.type hash_initialize, @function
hash_initialize:
	push	rbp
	mov	rbp, rsp
	nop	
	sub	rsp, 0x40
	mov	qword ptr [rbp - 0x10], rdi
	nop	
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], rdx
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x28], rcx
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x30], r8
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0x20], 0
	jne	.label_1270
	lea	rdi, [rdi]
	movabs	rax, OFFSET FLAT:raw_hasher
	mov	qword ptr [rbp - 0x20], rax
.label_1270:
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x28], 0
	jne	.label_1267
	mov	rsp, rsp
	movabs	rax, OFFSET FLAT:raw_comparator
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x28], rax
.label_1267:
	mov	eax, 0x50
	mov	rsp, rsp
	mov	edi, eax
	mov	rsp, rsp
	call	malloc
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x38], rax
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x38], 0
	jne	.label_1269
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 8], 0
	jmp	.label_1264
.label_1269:
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x18], 0
	jne	.label_1266
	movabs	rax, OFFSET FLAT:default_tuning
	mov	qword ptr [rbp - 0x18], rax
.label_1266:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x38]
	mov	qword ptr [rcx + 0x28], rax
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x38]
	call	check_tuning
	test	al, 1
	mov	rbp, rbp
	jne	.label_1263
	jmp	.label_1265
.label_1263:
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	call	compute_bucket_size
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x38]
	mov	qword ptr [rsi + 0x10], rax
	mov	rax, qword ptr [rbp - 0x38]
	cmp	qword ptr [rax + 0x10], 0
	lea	rdi, [rdi]
	jne	.label_1268
	mov	rsp, rsp
	jmp	.label_1265
.label_1268:
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
	jne	.label_1271
	jmp	.label_1265
.label_1271:
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
	mov	rax, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x38]
	mov	qword ptr [rcx + 0x30], rax
	mov	rax, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x38]
	mov	qword ptr [rcx + 0x38], rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x30]
	nop	
	mov	rcx, qword ptr [rbp - 0x38]
	mov	qword ptr [rcx + 0x40], rax
	mov	rax, qword ptr [rbp - 0x38]
	mov	qword ptr [rax + 0x48], 0
	mov	rax, qword ptr [rbp - 0x38]
	mov	rsp, rsp
	mov	qword ptr [rbp - 8], rax
	mov	rbp, rbp
	jmp	.label_1264
.label_1265:
	mov	rax, qword ptr [rbp - 0x38]
	mov	rbp, rbp
	mov	rdi, rax
	call	free
	mov	rbp, rbp
	mov	qword ptr [rbp - 8], 0
.label_1264:
	mov	rax, qword ptr [rbp - 8]
	mov	rbp, rbp
	add	rsp, 0x40
	lea	rdi, [rdi]
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x415d90

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
	.align	16
	#Procedure 0x415de0

	.globl raw_comparator
	.type raw_comparator, @function
raw_comparator:
	lea	rsi, [rsi]
	push	rbp
	mov	rbp, rsp
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsi, qword ptr [rbp - 8]
	cmp	rsi, qword ptr [rbp - 0x10]
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
	.align	16
	#Procedure 0x415e10

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
	jne	.label_1275
	mov	byte ptr [rbp - 1], 1
	jmp	.label_1272
.label_1275:
	movss	xmm0,  dword ptr [dword ptr [label_1273]]
	movss	dword ptr [rbp - 0x1c], xmm0
	movss	xmm0, dword ptr [rbp - 0x1c]
	mov	rax, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	movss	xmm1, dword ptr [rax + 8]
	ucomiss	xmm1, xmm0
	jbe	.label_1274
	mov	rsp, rsp
	movss	xmm0,  dword ptr [dword ptr [label_1276]]
	mov	rax, qword ptr [rbp - 0x18]
	movss	xmm1, dword ptr [rax + 8]
	mov	rsp, rsp
	subss	xmm0, dword ptr [rbp - 0x1c]
	ucomiss	xmm0, xmm1
	jbe	.label_1274
	nop	
	movss	xmm0,  dword ptr [dword ptr [label_1276]]
	addss	xmm0, dword ptr [rbp - 0x1c]
	mov	rax, qword ptr [rbp - 0x18]
	movss	xmm1, dword ptr [rax + 0xc]
	ucomiss	xmm1, xmm0
	lea	rsi, [rsi]
	jbe	.label_1274
	xorps	xmm0, xmm0
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x18]
	movss	xmm1, dword ptr [rax]
	mov	rsp, rsp
	ucomiss	xmm1, xmm0
	jb	.label_1274
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	movss	xmm0, dword ptr [rax]
	addss	xmm0, dword ptr [rbp - 0x1c]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x18]
	movss	xmm1, dword ptr [rax + 4]
	ucomiss	xmm1, xmm0
	jbe	.label_1274
	mov	rsp, rsp
	movss	xmm0,  dword ptr [dword ptr [label_1276]]
	mov	rax, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	ucomiss	xmm0, dword ptr [rax + 4]
	jb	.label_1274
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
	jbe	.label_1274
	mov	byte ptr [rbp - 1], 1
	jmp	.label_1272
.label_1274:
	nop	
	movabs	rax, OFFSET FLAT:default_tuning
	mov	rcx, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	qword ptr [rcx + 0x28], rax
	mov	byte ptr [rbp - 1], 0
.label_1272:
	mov	al, byte ptr [rbp - 1]
	lea	rdi, [rdi]
	and	al, 1
	movzx	eax, al
	mov	rsp, rsp
	pop	rbp
	nop	
	ret	
	.section	.text
	.align	16
	#Procedure 0x415f80

	.globl compute_bucket_size
	.type compute_bucket_size, @function
compute_bucket_size:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	nop	
	mov	qword ptr [rbp - 0x10], rdi
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x18], rsi
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	test	byte ptr [rsi + 0x10], 1
	mov	rbp, rbp
	jne	.label_1277
	lea	rsi, [rsi]
	movss	xmm0,  dword ptr [dword ptr [label_1278]]
	mov	rax, qword ptr [rbp - 0x10]
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
	movss	dword ptr [rbp - 0x20], xmm0
	movss	dword ptr [rbp - 0x24], xmm2
	lea	rdi, [rdi]
	movss	dword ptr [rbp - 0x28], xmm1
	mov	rbp, rbp
	js	.label_1279
	movss	xmm0, dword ptr [rbp - 0x24]
	movss	dword ptr [rbp - 0x28], xmm0
.label_1279:
	mov	rbp, rbp
	movss	xmm0, dword ptr [rbp - 0x28]
	mov	rax, qword ptr [rbp - 0x18]
	divss	xmm0, dword ptr [rax + 8]
	movss	dword ptr [rbp - 0x1c], xmm0
	movss	xmm0, dword ptr [rbp - 0x1c]
	movss	xmm1, dword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	ucomiss	xmm0, xmm1
	lea	rdi, [rdi]
	jb	.label_1283
	mov	qword ptr [rbp - 8], 0
	jmp	.label_1281
.label_1283:
	nop	
	movss	xmm0, dword ptr [rbp - 0x1c]
	nop	
	movss	xmm1,  dword ptr [dword ptr [rip + label_1282]]
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
	mov	qword ptr [rbp - 0x10], rax
.label_1277:
	mov	rdi, qword ptr [rbp - 0x10]
	call	next_prime
	lea	rsi, [rsi]
	movabs	rdi, 0xfffffffffffffff
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x10], rax
	cmp	rdi, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	jae	.label_1280
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 8], 0
	jmp	.label_1281
.label_1280:
	nop	
	mov	rax, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 8], rax
.label_1281:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x30
	lea	rsi, [rsi]
	pop	rbp
	lea	rsi, [rsi]
	ret	
	.section	.text
	.align	16
	#Procedure 0x4160f0
	.globl hash_clear
	.type hash_clear, @function
hash_clear:

	mov	rsp, rsp
	push	rbp
	mov	rsp, rsp
	mov	rbp, rsp
	mov	rsp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 8], rdi
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	rdi, qword ptr [rdi]
	mov	qword ptr [rbp - 0x10], rdi
.label_1290:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 8]
	cmp	rax, qword ptr [rcx + 8]
	lea	rdi, [rdi]
	jae	.label_1289
	nop	
	mov	rax, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	cmp	qword ptr [rax], 0
	lea	rsi, [rsi]
	je	.label_1286
	mov	rax, qword ptr [rbp - 0x10]
	nop	
	mov	rax, qword ptr [rax + 8]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x18], rax
.label_1284:
	cmp	qword ptr [rbp - 0x18], 0
	nop	
	je	.label_1285
	mov	rax, qword ptr [rbp - 8]
	mov	rsp, rsp
	cmp	qword ptr [rax + 0x40], 0
	lea	rdi, [rdi]
	je	.label_1291
	nop	
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax + 0x40]
	mov	rcx, qword ptr [rbp - 0x18]
	nop	
	mov	rdi, qword ptr [rcx]
	call	rax
.label_1291:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rax], 0
	mov	rax, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax + 8]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x20], rax
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax + 0x48]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	qword ptr [rcx + 8], rax
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 8]
	mov	qword ptr [rcx + 0x48], rax
	mov	rax, qword ptr [rbp - 0x20]
	nop	
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_1284
.label_1285:
	mov	rax, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	cmp	qword ptr [rax + 0x40], 0
	je	.label_1288
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax + 0x40]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rcx]
	nop	
	call	rax
.label_1288:
	mov	rax, qword ptr [rbp - 0x10]
	nop	
	mov	qword ptr [rax], 0
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rax + 8], 0
.label_1286:
	jmp	.label_1287
.label_1287:
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 0x10
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_1290
.label_1289:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	qword ptr [rax + 0x18], 0
	nop	
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rax + 0x20], 0
	add	rsp, 0x20
	pop	rbp
	mov	rbp, rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x416260
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
	mov	qword ptr [rbp - 8], rdi
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 8]
	cmp	qword ptr [rdi + 0x40], 0
	lea	rdi, [rdi]
	je	.label_1293
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 8]
	cmp	qword ptr [rax + 0x20], 0
	lea	rsi, [rsi]
	je	.label_1293
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	rax, qword ptr [rax]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x10], rax
.label_1301:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 8]
	cmp	rax, qword ptr [rcx + 8]
	mov	rbp, rbp
	jae	.label_1304
	mov	rax, qword ptr [rbp - 0x10]
	cmp	qword ptr [rax], 0
	mov	rbp, rbp
	je	.label_1292
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x18], rax
.label_1295:
	cmp	qword ptr [rbp - 0x18], 0
	je	.label_1299
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax + 0x40]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rdi, qword ptr [rcx]
	call	rax
	mov	rax, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	mov	rax, qword ptr [rax + 8]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x18], rax
	mov	rbp, rbp
	jmp	.label_1295
.label_1299:
	jmp	.label_1292
.label_1292:
	jmp	.label_1298
.label_1298:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 0x10
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_1301
.label_1304:
	jmp	.label_1293
.label_1293:
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0x10], rax
.label_1303:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	cmp	rax, qword ptr [rcx + 8]
	jae	.label_1294
	mov	rax, qword ptr [rbp - 0x10]
	nop	
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x18], rax
.label_1297:
	nop	
	cmp	qword ptr [rbp - 0x18], 0
	lea	rsi, [rsi]
	je	.label_1302
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	mov	rax, qword ptr [rax + 8]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x20], rax
	mov	rax, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	mov	rdi, rax
	call	free
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_1297
.label_1302:
	jmp	.label_1305
.label_1305:
	mov	rax, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	add	rax, 0x10
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_1303
.label_1294:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax + 0x48]
	nop	
	mov	qword ptr [rbp - 0x18], rax
.label_1296:
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x18], 0
	je	.label_1300
	mov	rax, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x20], rax
	mov	rax, qword ptr [rbp - 0x18]
	mov	rdi, rax
	call	free
	mov	rax, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_1296
.label_1300:
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax]
	mov	rdi, rax
	lea	rsi, [rsi]
	call	free
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 8]
	mov	rbp, rbp
	mov	rdi, rax
	call	free
	add	rsp, 0x20
	mov	rbp, rbp
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x416450

	.globl hash_rehash
	.type hash_rehash, @function
hash_rehash:
	nop	
	push	rbp
	mov	rbp, rbp
	mov	rbp, rsp
	lea	rdi, [rdi]
	sub	rsp, 0x80
	mov	qword ptr [rbp - 0x10], rdi
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x18], rsi
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	rsi, qword ptr [rsi + 0x28]
	mov	rsp, rsp
	call	compute_bucket_size
	mov	qword ptr [rbp - 0x78], rax
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0x78], 0
	nop	
	jne	.label_1306
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 1], 0
	jmp	.label_1307
.label_1306:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x78]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rcx + 0x10]
	jne	.label_1309
	mov	rsp, rsp
	mov	byte ptr [rbp - 1], 1
	mov	rbp, rbp
	jmp	.label_1307
.label_1309:
	nop	
	mov	eax, 0x10
	mov	esi, eax
	mov	rsp, rsp
	lea	rcx, [rbp - 0x68]
	mov	qword ptr [rbp - 0x70], rcx
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x78]
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
	jne	.label_1311
	mov	rbp, rbp
	mov	byte ptr [rbp - 1], 0
	mov	rsp, rsp
	jmp	.label_1307
.label_1311:
	mov	rbp, rbp
	xor	edx, edx
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x78]
	mov	rcx, qword ptr [rbp - 0x70]
	mov	qword ptr [rcx + 0x10], rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x70]
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x78]
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
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x28]
	mov	rcx, qword ptr [rbp - 0x70]
	nop	
	mov	qword ptr [rcx + 0x28], rax
	mov	rax, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax + 0x30]
	mov	rcx, qword ptr [rbp - 0x70]
	mov	rsp, rsp
	mov	qword ptr [rcx + 0x30], rax
	nop	
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x38]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x70]
	mov	qword ptr [rcx + 0x38], rax
	nop	
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x40]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x70]
	lea	rsi, [rsi]
	mov	qword ptr [rcx + 0x40], rax
	mov	rax, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	rax, qword ptr [rax + 0x48]
	mov	rcx, qword ptr [rbp - 0x70]
	nop	
	mov	qword ptr [rcx + 0x48], rax
	mov	rdi, qword ptr [rbp - 0x70]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x10]
	call	transfer_entries
	test	al, 1
	mov	rbp, rbp
	jne	.label_1310
	lea	rsi, [rsi]
	jmp	.label_1314
.label_1310:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	rax, qword ptr [rax]
	mov	rdi, rax
	mov	rbp, rbp
	call	free
	nop	
	mov	rax, qword ptr [rbp - 0x70]
	mov	rax, qword ptr [rax]
	mov	rdi, qword ptr [rbp - 0x10]
	mov	qword ptr [rdi], rax
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x70]
	mov	rax, qword ptr [rax + 8]
	mov	rdi, qword ptr [rbp - 0x10]
	mov	qword ptr [rdi + 8], rax
	nop	
	mov	rax, qword ptr [rbp - 0x70]
	mov	rax, qword ptr [rax + 0x10]
	mov	rdi, qword ptr [rbp - 0x10]
	mov	qword ptr [rdi + 0x10], rax
	mov	rax, qword ptr [rbp - 0x70]
	mov	rax, qword ptr [rax + 0x18]
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	qword ptr [rdi + 0x18], rax
	mov	rax, qword ptr [rbp - 0x70]
	mov	rbp, rbp
	mov	rax, qword ptr [rax + 0x48]
	mov	rdi, qword ptr [rbp - 0x10]
	mov	qword ptr [rdi + 0x48], rax
	mov	byte ptr [rbp - 1], 1
	jmp	.label_1307
.label_1314:
	mov	rsp, rsp
	mov	edx, 1
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x70]
	nop	
	mov	rax, qword ptr [rax + 0x48]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	qword ptr [rcx + 0x48], rax
	mov	rdi, qword ptr [rbp - 0x10]
	nop	
	mov	rsi, qword ptr [rbp - 0x70]
	lea	rsi, [rsi]
	call	transfer_entries
	test	al, 1
	jne	.label_1312
	mov	rbp, rbp
	jmp	.label_1313
.label_1312:
	lea	rdi, [rdi]
	xor	edx, edx
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x70]
	mov	rbp, rbp
	call	transfer_entries
	nop	
	test	al, 1
	jne	.label_1308
.label_1313:
	call	abort
.label_1308:
	mov	rax, qword ptr [rbp - 0x70]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax]
	mov	rdi, rax
	call	free
	nop	
	mov	byte ptr [rbp - 1], 0
.label_1307:
	lea	rdi, [rdi]
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	mov	rbp, rbp
	movzx	eax, al
	mov	rsp, rsp
	add	rsp, 0x80
	lea	rdi, [rdi]
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x416720

	.globl transfer_entries
	.type transfer_entries, @function
transfer_entries:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x50
	mov	al, dl
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	lea	rdi, [rdi]
	and	al, 1
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x19], al
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	mov	rsi, qword ptr [rsi]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x28], rsi
.label_1326:
	nop	
	mov	rax, qword ptr [rbp - 0x28]
	nop	
	mov	rcx, qword ptr [rbp - 0x18]
	nop	
	cmp	rax, qword ptr [rcx + 8]
	jae	.label_1317
	nop	
	mov	rax, qword ptr [rbp - 0x28]
	mov	rbp, rbp
	cmp	qword ptr [rax], 0
	lea	rdi, [rdi]
	je	.label_1324
	mov	rax, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax + 8]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x30], rax
.label_1320:
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x30], 0
	je	.label_1316
	nop	
	mov	rax, qword ptr [rbp - 0x30]
	mov	rsp, rsp
	mov	rax, qword ptr [rax]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x40], rax
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x40]
	call	safe_hasher
	nop	
	mov	qword ptr [rbp - 0x48], rax
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x30]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x38], rax
	mov	rax, qword ptr [rbp - 0x48]
	mov	rsp, rsp
	cmp	qword ptr [rax], 0
	nop	
	je	.label_1328
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x48]
	mov	rax, qword ptr [rax + 8]
	mov	rcx, qword ptr [rbp - 0x30]
	nop	
	mov	qword ptr [rcx + 8], rax
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x48]
	nop	
	mov	qword ptr [rcx + 8], rax
	jmp	.label_1319
.label_1328:
	mov	rax, qword ptr [rbp - 0x40]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x48]
	mov	qword ptr [rcx], rax
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	rcx, qword ptr [rax + 0x18]
	mov	rsp, rsp
	add	rcx, 1
	mov	rsp, rsp
	mov	qword ptr [rax + 0x18], rcx
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x30]
	mov	rbp, rbp
	call	free_entry
.label_1319:
	mov	rbp, rbp
	jmp	.label_1315
.label_1315:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x38]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_1320
.label_1316:
	mov	rax, qword ptr [rbp - 0x28]
	nop	
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0x40], rax
	mov	rax, qword ptr [rbp - 0x28]
	nop	
	mov	qword ptr [rax + 8], 0
	test	byte ptr [rbp - 0x19], 1
	mov	rbp, rbp
	je	.label_1323
	jmp	.label_1325
.label_1323:
	mov	rdi, qword ptr [rbp - 0x10]
	nop	
	mov	rsi, qword ptr [rbp - 0x40]
	nop	
	call	safe_hasher
	nop	
	mov	qword ptr [rbp - 0x48], rax
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x48]
	cmp	qword ptr [rax], 0
	nop	
	je	.label_1321
	mov	rdi, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	call	allocate_entry
	mov	qword ptr [rbp - 0x50], rax
	nop	
	cmp	qword ptr [rbp - 0x50], 0
	mov	rbp, rbp
	jne	.label_1327
	mov	byte ptr [rbp - 1], 0
	mov	rbp, rbp
	jmp	.label_1318
.label_1327:
	nop	
	mov	rax, qword ptr [rbp - 0x40]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x50]
	mov	rbp, rbp
	mov	qword ptr [rcx], rax
	mov	rax, qword ptr [rbp - 0x48]
	mov	rax, qword ptr [rax + 8]
	mov	rcx, qword ptr [rbp - 0x50]
	mov	rbp, rbp
	mov	qword ptr [rcx + 8], rax
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rbp - 0x48]
	nop	
	mov	qword ptr [rcx + 8], rax
	mov	rbp, rbp
	jmp	.label_1322
.label_1321:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x40]
	mov	rcx, qword ptr [rbp - 0x48]
	mov	qword ptr [rcx], rax
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rax + 0x18]
	lea	rsi, [rsi]
	add	rcx, 1
	mov	qword ptr [rax + 0x18], rcx
.label_1322:
	mov	rax, qword ptr [rbp - 0x28]
	mov	rbp, rbp
	mov	qword ptr [rax], 0
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rax + 0x18]
	lea	rsi, [rsi]
	add	rcx, -1
	mov	rbp, rbp
	mov	qword ptr [rax + 0x18], rcx
.label_1324:
	jmp	.label_1325
.label_1325:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x28]
	mov	rbp, rbp
	add	rax, 0x10
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x28], rax
	lea	rsi, [rsi]
	jmp	.label_1326
.label_1317:
	mov	byte ptr [rbp - 1], 1
.label_1318:
	mov	al, byte ptr [rbp - 1]
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
	.align	16
	#Procedure 0x4169b0

	.globl hash_insert_if_absent
	.type hash_insert_if_absent, @function
hash_insert_if_absent:
	mov	rbp, rbp
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0xc0
	mov	qword ptr [rbp - 0x10], rdi
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], rdx
	cmp	qword ptr [rbp - 0x18], 0
	jne	.label_1343
	lea	rsi, [rsi]
	call	abort
.label_1343:
	mov	rbp, rbp
	lea	rdx, [rbp - 0x30]
	xor	ecx, ecx
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	call	hash_find_entry
	nop	
	mov	qword ptr [rbp - 0x28], rax
	mov	rsp, rsp
	cmp	rax, 0
	mov	rsp, rsp
	je	.label_1347
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x20], 0
	je	.label_1336
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x28]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x20]
	mov	qword ptr [rcx], rax
.label_1336:
	nop	
	mov	dword ptr [rbp - 4], 0
	jmp	.label_1337
.label_1347:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x10]
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
	mov	qword ptr [rbp - 0x50], rax
	mov	qword ptr [rbp - 0x58], rcx
	movss	dword ptr [rbp - 0x5c], xmm1
	mov	rsp, rsp
	movss	dword ptr [rbp - 0x60], xmm0
	js	.label_1329
	movss	xmm0, dword ptr [rbp - 0x5c]
	movss	dword ptr [rbp - 0x60], xmm0
.label_1329:
	mov	rsp, rsp
	movss	xmm0, dword ptr [rbp - 0x60]
	mov	rax, qword ptr [rbp - 0x50]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rax + 0x28]
	movss	xmm1, dword ptr [rcx + 8]
	mov	rcx, qword ptr [rbp - 0x58]
	shr	rcx, 1
	nop	
	mov	rdx, qword ptr [rbp - 0x58]
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
	movss	dword ptr [rbp - 0x64], xmm0
	mov	rsp, rsp
	movss	dword ptr [rbp - 0x68], xmm1
	movss	dword ptr [rbp - 0x6c], xmm3
	movss	dword ptr [rbp - 0x70], xmm2
	mov	rsp, rsp
	js	.label_1340
	movss	xmm0, dword ptr [rbp - 0x6c]
	nop	
	movss	dword ptr [rbp - 0x70], xmm0
.label_1340:
	mov	rbp, rbp
	movss	xmm0, dword ptr [rbp - 0x70]
	movss	xmm1, dword ptr [rbp - 0x68]
	mulss	xmm1, xmm0
	movss	xmm0, dword ptr [rbp - 0x64]
	ucomiss	xmm0, xmm1
	jbe	.label_1335
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	call	check_tuning
	mov	rdi, qword ptr [rbp - 0x10]
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
	mov	byte ptr [rbp - 0x71], al
	nop	
	mov	qword ptr [rbp - 0x80], rdi
	nop	
	mov	qword ptr [rbp - 0x88], rcx
	mov	rsp, rsp
	movss	dword ptr [rbp - 0x8c], xmm1
	mov	rbp, rbp
	movss	dword ptr [rbp - 0x90], xmm0
	js	.label_1332
	movss	xmm0, dword ptr [rbp - 0x8c]
	nop	
	movss	dword ptr [rbp - 0x90], xmm0
.label_1332:
	movss	xmm0, dword ptr [rbp - 0x90]
	mov	rax, qword ptr [rbp - 0x80]
	mov	rbp, rbp
	mov	rcx, qword ptr [rax + 0x28]
	movss	xmm1, dword ptr [rcx + 8]
	mov	rcx, qword ptr [rbp - 0x88]
	shr	rcx, 1
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x88]
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
	movss	dword ptr [rbp - 0x94], xmm0
	lea	rsi, [rsi]
	movss	dword ptr [rbp - 0x98], xmm1
	lea	rsi, [rsi]
	movss	dword ptr [rbp - 0x9c], xmm3
	movss	dword ptr [rbp - 0xa0], xmm2
	js	.label_1334
	lea	rdi, [rdi]
	movss	xmm0, dword ptr [rbp - 0x9c]
	movss	dword ptr [rbp - 0xa0], xmm0
.label_1334:
	mov	rbp, rbp
	movss	xmm0, dword ptr [rbp - 0xa0]
	movss	xmm1, dword ptr [rbp - 0x98]
	mov	rsp, rsp
	mulss	xmm1, xmm0
	lea	rsi, [rsi]
	movss	xmm0, dword ptr [rbp - 0x94]
	ucomiss	xmm0, xmm1
	nop	
	jbe	.label_1333
	mov	rax, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	rax, qword ptr [rax + 0x28]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x38], rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x38]
	test	byte ptr [rax + 0x10], 1
	mov	rsp, rsp
	je	.label_1331
	nop	
	mov	rax, qword ptr [rbp - 0x10]
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
	movss	dword ptr [rbp - 0xa4], xmm1
	movss	dword ptr [rbp - 0xa8], xmm0
	nop	
	js	.label_1339
	movss	xmm0, dword ptr [rbp - 0xa4]
	lea	rsi, [rsi]
	movss	dword ptr [rbp - 0xa8], xmm0
.label_1339:
	movss	xmm0, dword ptr [rbp - 0xa8]
	mov	rax, qword ptr [rbp - 0x38]
	nop	
	mulss	xmm0, dword ptr [rax + 0xc]
	mov	rsp, rsp
	movss	dword ptr [rbp - 0xac], xmm0
	mov	rbp, rbp
	jmp	.label_1346
.label_1331:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x10]
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
	movss	dword ptr [rbp - 0xb0], xmm1
	nop	
	movss	dword ptr [rbp - 0xb4], xmm0
	lea	rdi, [rdi]
	js	.label_1342
	movss	xmm0, dword ptr [rbp - 0xb0]
	mov	rbp, rbp
	movss	dword ptr [rbp - 0xb4], xmm0
.label_1342:
	movss	xmm0, dword ptr [rbp - 0xb4]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x38]
	mov	rsp, rsp
	mulss	xmm0, dword ptr [rax + 0xc]
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x38]
	mulss	xmm0, dword ptr [rax + 8]
	mov	rsp, rsp
	movss	dword ptr [rbp - 0xac], xmm0
.label_1346:
	mov	rsp, rsp
	movss	xmm0, dword ptr [rbp - 0xac]
	lea	rdi, [rdi]
	movss	xmm1,  dword ptr [dword ptr [label_1278]]
	mov	rsp, rsp
	movss	dword ptr [rbp - 0x3c], xmm0
	movss	xmm0, dword ptr [rbp - 0x3c]
	mov	rsp, rsp
	ucomiss	xmm0, xmm1
	lea	rsi, [rsi]
	jb	.label_1330
	mov	dword ptr [rbp - 4], 0xffffffff
	lea	rdi, [rdi]
	jmp	.label_1337
.label_1330:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	movss	xmm0, dword ptr [rbp - 0x3c]
	movss	xmm1,  dword ptr [dword ptr [rip + label_1282]]
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
	jne	.label_1341
	mov	rsp, rsp
	mov	dword ptr [rbp - 4], 0xffffffff
	jmp	.label_1337
.label_1341:
	lea	rdx, [rbp - 0x30]
	xor	ecx, ecx
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	call	hash_find_entry
	cmp	rax, 0
	lea	rdi, [rdi]
	je	.label_1345
	call	abort
.label_1345:
	jmp	.label_1333
.label_1333:
	lea	rdi, [rdi]
	jmp	.label_1335
.label_1335:
	mov	rax, qword ptr [rbp - 0x30]
	cmp	qword ptr [rax], 0
	je	.label_1338
	mov	rdi, qword ptr [rbp - 0x10]
	call	allocate_entry
	nop	
	mov	qword ptr [rbp - 0x48], rax
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0x48], 0
	mov	rsp, rsp
	jne	.label_1344
	mov	dword ptr [rbp - 4], 0xffffffff
	mov	rsp, rsp
	jmp	.label_1337
.label_1344:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x48]
	mov	qword ptr [rcx], rax
	mov	rax, qword ptr [rbp - 0x30]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax + 8]
	mov	rcx, qword ptr [rbp - 0x48]
	mov	qword ptr [rcx + 8], rax
	mov	rax, qword ptr [rbp - 0x48]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x30]
	lea	rsi, [rsi]
	mov	qword ptr [rcx + 8], rax
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rax + 0x20]
	add	rcx, 1
	mov	qword ptr [rax + 0x20], rcx
	mov	dword ptr [rbp - 4], 1
	lea	rdi, [rdi]
	jmp	.label_1337
.label_1338:
	mov	rax, qword ptr [rbp - 0x18]
	nop	
	mov	rcx, qword ptr [rbp - 0x30]
	nop	
	mov	qword ptr [rcx], rax
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rax + 0x20]
	lea	rdi, [rdi]
	add	rcx, 1
	mov	rbp, rbp
	mov	qword ptr [rax + 0x20], rcx
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rax + 0x18]
	add	rcx, 1
	mov	rsp, rsp
	mov	qword ptr [rax + 0x18], rcx
	mov	dword ptr [rbp - 4], 1
.label_1337:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0xc0
	mov	rsp, rsp
	pop	rbp
	mov	rbp, rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x416f80

	.globl hash_find_entry
	.type hash_find_entry, @function
hash_find_entry:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x60
	mov	al, cl
	nop	
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x20], rdx
	and	al, 1
	mov	byte ptr [rbp - 0x21], al
	nop	
	mov	rdi, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	call	safe_hasher
	mov	qword ptr [rbp - 0x30], rax
	mov	rax, qword ptr [rbp - 0x30]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x20]
	mov	qword ptr [rdx], rax
	nop	
	mov	rax, qword ptr [rbp - 0x30]
	cmp	qword ptr [rax], 0
	jne	.label_1359
	nop	
	mov	qword ptr [rbp - 8], 0
	jmp	.label_1354
.label_1359:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x30]
	cmp	rax, qword ptr [rcx]
	je	.label_1352
	mov	rax, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	rax, qword ptr [rax + 0x38]
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x30]
	mov	rsi, qword ptr [rcx]
	nop	
	call	rax
	mov	rsp, rsp
	test	al, 1
	jne	.label_1352
	jmp	.label_1356
.label_1352:
	nop	
	mov	rax, qword ptr [rbp - 0x30]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x40], rax
	lea	rsi, [rsi]
	test	byte ptr [rbp - 0x21], 1
	mov	rsp, rsp
	je	.label_1351
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x30]
	nop	
	cmp	qword ptr [rax + 8], 0
	mov	rsp, rsp
	je	.label_1348
	mov	rax, qword ptr [rbp - 0x30]
	mov	rax, qword ptr [rax + 8]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x48], rax
	mov	rax, qword ptr [rbp - 0x30]
	nop	
	mov	rcx, qword ptr [rbp - 0x48]
	nop	
	mov	rdx, qword ptr [rcx]
	mov	qword ptr [rax], rdx
	mov	rcx, qword ptr [rcx + 8]
	mov	qword ptr [rax + 8], rcx
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x48]
	lea	rsi, [rsi]
	call	free_entry
	nop	
	jmp	.label_1353
.label_1348:
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rax], 0
.label_1353:
	jmp	.label_1351
.label_1351:
	mov	rax, qword ptr [rbp - 0x40]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_1354
.label_1356:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x38], rax
.label_1355:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x38]
	lea	rsi, [rsi]
	cmp	qword ptr [rax + 8], 0
	mov	rsp, rsp
	je	.label_1360
	nop	
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rcx + 8]
	cmp	rax, qword ptr [rcx]
	lea	rsi, [rsi]
	je	.label_1350
	nop	
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x38]
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rcx + 8]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rcx]
	nop	
	call	rax
	lea	rsi, [rsi]
	test	al, 1
	lea	rdi, [rdi]
	jne	.label_1350
	lea	rsi, [rsi]
	jmp	.label_1357
.label_1350:
	mov	rax, qword ptr [rbp - 0x38]
	mov	rax, qword ptr [rax + 8]
	mov	rax, qword ptr [rax]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x50], rax
	test	byte ptr [rbp - 0x21], 1
	je	.label_1358
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x38]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax + 8]
	nop	
	mov	qword ptr [rbp - 0x58], rax
	mov	rax, qword ptr [rbp - 0x58]
	mov	rax, qword ptr [rax + 8]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x38]
	mov	rbp, rbp
	mov	qword ptr [rcx + 8], rax
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x58]
	mov	rbp, rbp
	call	free_entry
.label_1358:
	mov	rax, qword ptr [rbp - 0x50]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_1354
.label_1357:
	mov	rbp, rbp
	jmp	.label_1349
.label_1349:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x38]
	nop	
	mov	rax, qword ptr [rax + 8]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x38], rax
	lea	rsi, [rsi]
	jmp	.label_1355
.label_1360:
	mov	qword ptr [rbp - 8], 0
.label_1354:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x60
	pop	rbp
	lea	rdi, [rdi]
	ret	
	.section	.text
	.align	16
	#Procedure 0x4171c0

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
	je	.label_1361
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
	jmp	.label_1362
.label_1361:
	mov	eax, 0x10
	lea	rdi, [rdi]
	mov	edi, eax
	lea	rdi, [rdi]
	call	malloc
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x10], rax
.label_1362:
	mov	rax, qword ptr [rbp - 0x10]
	add	rsp, 0x10
	lea	rsi, [rsi]
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x417240

	.globl hash_insert
	.type hash_insert, @function
hash_insert:
	push	rbp
	lea	rdi, [rdi]
	mov	rbp, rsp
	mov	rsp, rsp
	sub	rsp, 0x30
	lea	rdx, [rbp - 0x18]
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x10]
	call	hash_insert_if_absent
	nop	
	mov	dword ptr [rbp - 0x1c], eax
	mov	rbp, rbp
	cmp	dword ptr [rbp - 0x1c], -1
	lea	rdi, [rdi]
	jne	.label_1365
	xor	eax, eax
	lea	rdi, [rdi]
	mov	ecx, eax
	nop	
	mov	qword ptr [rbp - 0x28], rcx
	lea	rsi, [rsi]
	jmp	.label_1363
.label_1365:
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x1c], 0
	lea	rsi, [rsi]
	jne	.label_1366
	nop	
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_1364
.label_1366:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x10]
	nop	
	mov	qword ptr [rbp - 0x30], rax
.label_1364:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x30]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x28], rax
.label_1363:
	mov	rax, qword ptr [rbp - 0x28]
	nop	
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4172e0

	.globl hash_delete
	.type hash_delete, @function
hash_delete:
	mov	rsp, rsp
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0xc0
	lea	rdx, [rbp - 0x28]
	nop	
	mov	ecx, 1
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	call	hash_find_entry
	mov	qword ptr [rbp - 0x20], rax
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x20], 0
	jne	.label_1371
	mov	qword ptr [rbp - 8], 0
	jmp	.label_1378
.label_1371:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rax + 0x20]
	add	rcx, -1
	nop	
	mov	qword ptr [rax + 0x20], rcx
	mov	rax, qword ptr [rbp - 0x28]
	cmp	qword ptr [rax], 0
	jne	.label_1370
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rax + 0x18]
	dec	rcx
	mov	qword ptr [rax + 0x18], rcx
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x10]
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
	mov	qword ptr [rbp - 0x50], rax
	mov	qword ptr [rbp - 0x58], rcx
	movss	dword ptr [rbp - 0x5c], xmm1
	movss	dword ptr [rbp - 0x60], xmm0
	lea	rsi, [rsi]
	js	.label_1372
	movss	xmm0, dword ptr [rbp - 0x5c]
	movss	dword ptr [rbp - 0x60], xmm0
.label_1372:
	movss	xmm0, dword ptr [rbp - 0x60]
	mov	rax, qword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rax + 0x28]
	movss	xmm1, dword ptr [rcx]
	mov	rcx, qword ptr [rbp - 0x58]
	shr	rcx, 1
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x58]
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
	movss	dword ptr [rbp - 0x64], xmm0
	movss	dword ptr [rbp - 0x68], xmm1
	movss	dword ptr [rbp - 0x6c], xmm3
	lea	rdi, [rdi]
	movss	dword ptr [rbp - 0x70], xmm2
	lea	rsi, [rsi]
	js	.label_1368
	movss	xmm0, dword ptr [rbp - 0x6c]
	movss	dword ptr [rbp - 0x70], xmm0
.label_1368:
	movss	xmm0, dword ptr [rbp - 0x70]
	mov	rsp, rsp
	movss	xmm1, dword ptr [rbp - 0x68]
	lea	rdi, [rdi]
	mulss	xmm1, xmm0
	movss	xmm0, dword ptr [rbp - 0x64]
	ucomiss	xmm1, xmm0
	jbe	.label_1369
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	call	check_tuning
	mov	rdi, qword ptr [rbp - 0x10]
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
	mov	byte ptr [rbp - 0x71], al
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x80], rdi
	mov	qword ptr [rbp - 0x88], rcx
	movss	dword ptr [rbp - 0x8c], xmm1
	movss	dword ptr [rbp - 0x90], xmm0
	nop	
	js	.label_1379
	movss	xmm0, dword ptr [rbp - 0x8c]
	movss	dword ptr [rbp - 0x90], xmm0
.label_1379:
	mov	rsp, rsp
	movss	xmm0, dword ptr [rbp - 0x90]
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x80]
	mov	rcx, qword ptr [rax + 0x28]
	nop	
	movss	xmm1, dword ptr [rcx]
	mov	rcx, qword ptr [rbp - 0x88]
	shr	rcx, 1
	nop	
	mov	rdx, qword ptr [rbp - 0x88]
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
	movss	dword ptr [rbp - 0x94], xmm0
	movss	dword ptr [rbp - 0x98], xmm1
	mov	rsp, rsp
	movss	dword ptr [rbp - 0x9c], xmm3
	movss	dword ptr [rbp - 0xa0], xmm2
	js	.label_1374
	movss	xmm0, dword ptr [rbp - 0x9c]
	mov	rbp, rbp
	movss	dword ptr [rbp - 0xa0], xmm0
.label_1374:
	movss	xmm0, dword ptr [rbp - 0xa0]
	movss	xmm1, dword ptr [rbp - 0x98]
	lea	rsi, [rsi]
	mulss	xmm1, xmm0
	movss	xmm0, dword ptr [rbp - 0x94]
	mov	rbp, rbp
	ucomiss	xmm1, xmm0
	jbe	.label_1367
	mov	rax, qword ptr [rbp - 0x10]
	nop	
	mov	rax, qword ptr [rax + 0x28]
	nop	
	mov	qword ptr [rbp - 0x30], rax
	mov	rax, qword ptr [rbp - 0x30]
	test	byte ptr [rax + 0x10], 1
	je	.label_1373
	mov	rax, qword ptr [rbp - 0x10]
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
	movss	dword ptr [rbp - 0xa4], xmm1
	nop	
	movss	dword ptr [rbp - 0xa8], xmm0
	lea	rsi, [rsi]
	js	.label_1382
	movss	xmm0, dword ptr [rbp - 0xa4]
	movss	dword ptr [rbp - 0xa8], xmm0
.label_1382:
	lea	rdi, [rdi]
	movss	xmm0, dword ptr [rbp - 0xa8]
	mov	rax, qword ptr [rbp - 0x30]
	lea	rdi, [rdi]
	mulss	xmm0, dword ptr [rax + 4]
	movss	dword ptr [rbp - 0xac], xmm0
	jmp	.label_1375
.label_1373:
	mov	rax, qword ptr [rbp - 0x10]
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
	movss	dword ptr [rbp - 0xb0], xmm1
	movss	dword ptr [rbp - 0xb4], xmm0
	js	.label_1381
	mov	rsp, rsp
	movss	xmm0, dword ptr [rbp - 0xb0]
	movss	dword ptr [rbp - 0xb4], xmm0
.label_1381:
	mov	rsp, rsp
	movss	xmm0, dword ptr [rbp - 0xb4]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x30]
	mulss	xmm0, dword ptr [rax + 4]
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x30]
	lea	rdi, [rdi]
	mulss	xmm0, dword ptr [rax + 8]
	mov	rbp, rbp
	movss	dword ptr [rbp - 0xac], xmm0
.label_1375:
	mov	rsp, rsp
	movss	xmm0, dword ptr [rbp - 0xac]
	movss	xmm1,  dword ptr [dword ptr [rip + label_1282]]
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
	mov	qword ptr [rbp - 0x38], rax
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x38]
	lea	rsi, [rsi]
	call	hash_rehash
	test	al, 1
	jne	.label_1377
	mov	rax, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	rax, qword ptr [rax + 0x48]
	mov	qword ptr [rbp - 0x40], rax
.label_1380:
	cmp	qword ptr [rbp - 0x40], 0
	nop	
	je	.label_1376
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax + 8]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x48], rax
	mov	rax, qword ptr [rbp - 0x40]
	lea	rdi, [rdi]
	mov	rdi, rax
	lea	rsi, [rsi]
	call	free
	mov	rax, qword ptr [rbp - 0x48]
	mov	qword ptr [rbp - 0x40], rax
	jmp	.label_1380
.label_1376:
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rax + 0x48], 0
.label_1377:
	lea	rsi, [rsi]
	jmp	.label_1367
.label_1367:
	jmp	.label_1369
.label_1369:
	nop	
	jmp	.label_1370
.label_1370:
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 8], rax
.label_1378:
	mov	rax, qword ptr [rbp - 8]
	mov	rbp, rbp
	add	rsp, 0xc0
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4177b0

	.globl next_prime
	.type next_prime, @function
next_prime:
	nop	
	push	rbp
	lea	rdi, [rdi]
	mov	rbp, rsp
	sub	rsp, 0x10
	nop	
	mov	qword ptr [rbp - 8], rdi
	cmp	qword ptr [rbp - 8], 0xa
	jae	.label_1383
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 8], 0xa
.label_1383:
	mov	rax, qword ptr [rbp - 8]
	or	rax, 1
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 8], rax
.label_1387:
	mov	rbp, rbp
	xor	eax, eax
	nop	
	mov	cl, al
	nop	
	mov	rdx, -1
	cmp	rdx, qword ptr [rbp - 8]
	mov	byte ptr [rbp - 9], cl
	mov	rbp, rbp
	je	.label_1385
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 8]
	nop	
	call	is_prime
	nop	
	xor	al, 0xff
	mov	rsp, rsp
	mov	byte ptr [rbp - 9], al
.label_1385:
	lea	rsi, [rsi]
	mov	al, byte ptr [rbp - 9]
	lea	rsi, [rsi]
	test	al, 1
	lea	rdi, [rdi]
	jne	.label_1386
	jmp	.label_1384
.label_1386:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 8]
	add	rax, 2
	mov	qword ptr [rbp - 8], rax
	mov	rbp, rbp
	jmp	.label_1387
.label_1384:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	add	rsp, 0x10
	pop	rbp
	mov	rbp, rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x417860

	.globl is_prime
	.type is_prime, @function
is_prime:
	lea	rdi, [rdi]
	push	rbp
	nop	
	mov	rbp, rsp
	nop	
	mov	qword ptr [rbp - 8], rdi
	nop	
	mov	qword ptr [rbp - 0x10], 3
	mov	rdi, qword ptr [rbp - 0x10]
	imul	rdi, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x18], rdi
.label_1389:
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x18]
	cmp	rdx, qword ptr [rbp - 8]
	mov	byte ptr [rbp - 0x19], cl
	mov	rbp, rbp
	jae	.label_1388
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 8]
	mov	rbp, rbp
	xor	ecx, ecx
	mov	edx, ecx
	lea	rdi, [rdi]
	div	qword ptr [rbp - 0x10]
	cmp	rdx, 0
	setne	sil
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x19], sil
.label_1388:
	mov	al, byte ptr [rbp - 0x19]
	nop	
	test	al, 1
	lea	rsi, [rsi]
	jne	.label_1391
	jmp	.label_1390
.label_1391:
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 1
	nop	
	mov	qword ptr [rbp - 0x10], rax
	mov	rax, qword ptr [rbp - 0x10]
	shl	rax, 2
	lea	rdi, [rdi]
	add	rax, qword ptr [rbp - 0x18]
	nop	
	mov	qword ptr [rbp - 0x18], rax
	mov	rax, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	add	rax, 1
	nop	
	mov	qword ptr [rbp - 0x10], rax
	lea	rsi, [rsi]
	jmp	.label_1389
.label_1390:
	xor	eax, eax
	mov	ecx, 1
	mov	rdx, qword ptr [rbp - 8]
	mov	dword ptr [rbp - 0x20], eax
	mov	rsp, rsp
	mov	rax, rdx
	mov	rbp, rbp
	xor	esi, esi
	lea	rsi, [rsi]
	mov	edx, esi
	mov	rsp, rsp
	div	qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	cmp	rdx, 0
	mov	esi, dword ptr [rbp - 0x20]
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
	.align	16
	#Procedure 0x417960

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
	.align	16
	#Procedure 0x4179b0

	.globl heap_alloc
	.type heap_alloc, @function
heap_alloc:
	nop	
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	eax, 0x20
	mov	rsp, rsp
	mov	ecx, eax
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	lea	rsi, [rsi]
	mov	rdi, rcx
	call	xmalloc
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x18], rax
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x10], 0
	nop	
	jne	.label_1393
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x10], 1
.label_1393:
	mov	eax, 8
	mov	esi, eax
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	call	xnmalloc
	mov	rsi, qword ptr [rbp - 0x18]
	mov	qword ptr [rsi], rax
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax]
	mov	rsp, rsp
	mov	qword ptr [rax], 0
	mov	rax, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	mov	qword ptr [rsi + 8], rax
	mov	rax, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	mov	qword ptr [rax + 0x10], 0
	cmp	qword ptr [rbp - 8], 0
	je	.label_1394
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x20], rax
	nop	
	jmp	.label_1392
.label_1394:
	mov	rsp, rsp
	movabs	rax, OFFSET FLAT:heap_default_compare
	mov	qword ptr [rbp - 0x20], rax
	jmp	.label_1392
.label_1392:
	mov	rax, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	mov	qword ptr [rcx + 0x18], rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x18]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x417aa0

	.globl heap_default_compare
	.type heap_default_compare, @function
heap_default_compare:
	push	rbp
	mov	rbp, rsp
	xor	eax, eax
	mov	rbp, rbp
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsp, rsp
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x417ac0
	.globl heap_free
	.type heap_free, @function
heap_free:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rdi]
	call	free
	mov	rdi, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	call	free
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x417af0

	.globl heap_insert
	.type heap_insert, @function
heap_insert:
	lea	rdi, [rdi]
	push	rbp
	mov	rbp, rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 8], rdi
	nop	
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rsi + 8]
	lea	rdi, [rdi]
	sub	rsi, 1
	mov	rdi, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	cmp	rsi, qword ptr [rdi + 0x10]
	ja	.label_1395
	mov	eax, 8
	mov	edx, eax
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rcx]
	mov	rsi, qword ptr [rbp - 8]
	add	rsi, 8
	mov	rdi, rcx
	call	x2nrealloc
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	qword ptr [rcx], rax
.label_1395:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 8]
	nop	
	mov	rdx, qword ptr [rcx + 0x10]
	mov	rsi, rdx
	add	rsi, 1
	mov	rbp, rbp
	mov	qword ptr [rcx + 0x10], rsi
	mov	rcx, qword ptr [rbp - 8]
	mov	rcx, qword ptr [rcx]
	mov	qword ptr [rcx + rdx*8 + 8], rax
	nop	
	mov	rax, qword ptr [rbp - 8]
	nop	
	mov	rdi, qword ptr [rax]
	mov	rax, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rax + 0x10]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 8]
	mov	rdx, qword ptr [rax + 0x18]
	call	heapify_up
	xor	eax, eax
	add	rsp, 0x10
	lea	rdi, [rdi]
	pop	rbp
	lea	rsi, [rsi]
	ret	
	.section	.text
	.align	16
	#Procedure 0x417bc0

	.globl heapify_up
	.type heapify_up, @function
heapify_up:
	push	rbp
	mov	rbp, rsp
	lea	rsi, [rsi]
	sub	rsp, 0x30
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 8], rdi
	nop	
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x20], rdx
	nop	
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rsi, qword ptr [rbp - 8]
	mov	rbp, rbp
	mov	rdx, qword ptr [rsi + rdx*8]
	mov	qword ptr [rbp - 0x28], rdx
.label_1396:
	xor	eax, eax
	mov	cl, al
	cmp	qword ptr [rbp - 0x20], 1
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x29], cl
	je	.label_1399
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	shr	rcx, 1
	mov	rdx, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rdx + rcx*8]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	call	rax
	cmp	eax, 0
	setle	r8b
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x29], r8b
.label_1399:
	mov	rbp, rbp
	mov	al, byte ptr [rbp - 0x29]
	test	al, 1
	lea	rdi, [rdi]
	jne	.label_1397
	lea	rdi, [rdi]
	jmp	.label_1398
.label_1397:
	nop	
	mov	rax, qword ptr [rbp - 0x20]
	shr	rax, 1
	mov	rcx, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rcx + rax*8]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rdx, qword ptr [rbp - 8]
	nop	
	mov	qword ptr [rdx + rcx*8], rax
	mov	rax, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	shr	rax, 1
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x20], rax
	nop	
	jmp	.label_1396
.label_1398:
	mov	rax, qword ptr [rbp - 0x28]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 8]
	nop	
	mov	qword ptr [rdx + rcx*8], rax
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x417cc0

	.globl heap_remove_top
	.type heap_remove_top, @function
heap_remove_top:
	mov	rsp, rsp
	push	rbp
	lea	rdi, [rdi]
	mov	rbp, rsp
	sub	rsp, 0x20
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x10], rdi
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	cmp	qword ptr [rdi + 0x10], 0
	lea	rdi, [rdi]
	jne	.label_1400
	mov	qword ptr [rbp - 8], 0
	jmp	.label_1401
.label_1400:
	mov	eax, 1
	mov	edx, eax
	mov	rcx, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rcx]
	nop	
	mov	rcx, qword ptr [rcx + 8]
	mov	qword ptr [rbp - 0x18], rcx
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rcx + 0x10]
	mov	rdi, rsi
	add	rdi, -1
	nop	
	mov	qword ptr [rcx + 0x10], rdi
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	rcx, qword ptr [rcx]
	nop	
	mov	rcx, qword ptr [rcx + rsi*8]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	rsi, qword ptr [rsi]
	mov	qword ptr [rsi + 8], rcx
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rcx]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	rsi, qword ptr [rcx + 0x10]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx + 0x18]
	nop	
	call	heapify_down
	nop	
	mov	rcx, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 8], rcx
	mov	qword ptr [rbp - 0x20], rax
.label_1401:
	mov	rax, qword ptr [rbp - 8]
	mov	rsp, rsp
	add	rsp, 0x20
	lea	rdi, [rdi]
	pop	rbp
	lea	rsi, [rsi]
	ret	
	.section	.text
	.align	16
	#Procedure 0x417da0

	.globl heapify_down
	.type heapify_down, @function
heapify_down:
	nop	
	push	rbp
	lea	rdi, [rdi]
	mov	rbp, rsp
	nop	
	sub	rsp, 0x40
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 8], rdi
	nop	
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x20], rcx
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x18]
	nop	
	mov	rdx, qword ptr [rbp - 8]
	mov	rcx, qword ptr [rdx + rcx*8]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x28], rcx
	nop	
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x30], rcx
.label_1405:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	shr	rcx, 1
	cmp	rax, rcx
	ja	.label_1404
	mov	rax, qword ptr [rbp - 0x30]
	shl	rax, 1
	mov	qword ptr [rbp - 0x38], rax
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x38]
	mov	rbp, rbp
	cmp	rax, qword ptr [rbp - 0x10]
	jae	.label_1402
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x38]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 8]
	nop	
	mov	rdi, qword ptr [rdx + rcx*8]
	mov	rcx, qword ptr [rbp - 0x38]
	mov	rdx, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rdx + rcx*8 + 8]
	call	rax
	cmp	eax, 0
	jge	.label_1402
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x38]
	add	rax, 1
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x38], rax
.label_1402:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x20]
	nop	
	mov	rcx, qword ptr [rbp - 0x38]
	mov	rdx, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rdx + rcx*8]
	mov	rsi, qword ptr [rbp - 0x28]
	nop	
	call	rax
	cmp	eax, 0
	jg	.label_1403
	mov	rsp, rsp
	jmp	.label_1404
.label_1403:
	mov	rax, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rbp - 8]
	mov	rax, qword ptr [rcx + rax*8]
	nop	
	mov	rcx, qword ptr [rbp - 0x30]
	mov	rdx, qword ptr [rbp - 8]
	mov	qword ptr [rdx + rcx*8], rax
	mov	rax, qword ptr [rbp - 0x38]
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_1405
.label_1404:
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x30]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 8]
	mov	rbp, rbp
	mov	qword ptr [rdx + rcx*8], rax
	mov	rax, qword ptr [rbp - 0x30]
	lea	rdi, [rdi]
	add	rsp, 0x40
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x417ee0

	.globl inttostr
	.type inttostr, @function
inttostr:
	lea	rdi, [rdi]
	push	rbp
	mov	rbp, rsp
	nop	
	mov	dword ptr [rbp - 4], edi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsi, qword ptr [rbp - 0x10]
	add	rsi, 0xb
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x18], rsi
	nop	
	mov	rsi, qword ptr [rbp - 0x18]
	mov	byte ptr [rsi], 0
	lea	rsi, [rsi]
	cmp	dword ptr [rbp - 4], 0
	lea	rdi, [rdi]
	jge	.label_1406
	jmp	.label_1409
.label_1409:
	lea	rsi, [rsi]
	mov	eax, 0x30
	mov	rbp, rbp
	mov	ecx, 0xa
	nop	
	mov	edx, dword ptr [rbp - 4]
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x1c], eax
	mov	eax, edx
	nop	
	cdq	
	mov	rsp, rsp
	idiv	ecx
	mov	ecx, dword ptr [rbp - 0x1c]
	sub	ecx, edx
	mov	sil, cl
	nop	
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	mov	r8, rdi
	add	r8, -1
	mov	qword ptr [rbp - 0x18], r8
	mov	byte ptr [rdi - 1], sil
	mov	eax, 0xa
	mov	ecx, dword ptr [rbp - 4]
	mov	dword ptr [rbp - 0x20], eax
	mov	eax, ecx
	cdq	
	mov	ecx, dword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	idiv	ecx
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 4], eax
	cmp	eax, 0
	nop	
	jne	.label_1409
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x18]
	nop	
	mov	rcx, rax
	lea	rsi, [rsi]
	add	rcx, -1
	mov	qword ptr [rbp - 0x18], rcx
	mov	byte ptr [rax - 1], 0x2d
	mov	rbp, rbp
	jmp	.label_1407
.label_1406:
	jmp	.label_1408
.label_1408:
	mov	eax, 0xa
	mov	ecx, dword ptr [rbp - 4]
	mov	dword ptr [rbp - 0x24], eax
	mov	rbp, rbp
	mov	eax, ecx
	mov	rbp, rbp
	cdq	
	mov	rsp, rsp
	mov	ecx, dword ptr [rbp - 0x24]
	idiv	ecx
	add	edx, 0x30
	mov	sil, dl
	mov	rdi, qword ptr [rbp - 0x18]
	mov	r8, rdi
	add	r8, -1
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x18], r8
	lea	rsi, [rsi]
	mov	byte ptr [rdi - 1], sil
	mov	eax, 0xa
	mov	rbp, rbp
	mov	ecx, dword ptr [rbp - 4]
	mov	dword ptr [rbp - 0x28], eax
	mov	eax, ecx
	mov	rbp, rbp
	cdq	
	mov	rbp, rbp
	mov	ecx, dword ptr [rbp - 0x28]
	idiv	ecx
	mov	dword ptr [rbp - 4], eax
	cmp	eax, 0
	lea	rsi, [rsi]
	jne	.label_1408
	mov	rsp, rsp
	jmp	.label_1407
.label_1407:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	pop	rbp
	lea	rdi, [rdi]
	ret	
	.section	.text
	.align	16
	#Procedure 0x418030

	.globl uinttostr
	.type uinttostr, @function
uinttostr:
	push	rbp
	mov	rsp, rsp
	mov	rbp, rsp
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 4], edi
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x10], rsi
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	add	rsi, 0xa
	mov	qword ptr [rbp - 0x18], rsi
	mov	rsi, qword ptr [rbp - 0x18]
	nop	
	mov	byte ptr [rsi], 0
	mov	rsp, rsp
	cmp	dword ptr [rbp - 4], 0
	lea	rsi, [rsi]
	jae	.label_1410
	mov	rsp, rsp
	jmp	.label_1412
.label_1412:
	mov	eax, 0x30
	mov	rsp, rsp
	mov	ecx, 0xa
	lea	rsi, [rsi]
	mov	edx, dword ptr [rbp - 4]
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x1c], eax
	lea	rdi, [rdi]
	mov	eax, edx
	xor	edx, edx
	nop	
	div	ecx
	mov	ecx, dword ptr [rbp - 0x1c]
	sub	ecx, edx
	mov	rsp, rsp
	mov	sil, cl
	mov	rdi, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	mov	r8, rdi
	nop	
	add	r8, -1
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x18], r8
	mov	byte ptr [rdi - 1], sil
	lea	rdi, [rdi]
	mov	eax, 0xa
	mov	ecx, dword ptr [rbp - 4]
	nop	
	mov	dword ptr [rbp - 0x20], eax
	mov	eax, ecx
	lea	rsi, [rsi]
	xor	edx, edx
	nop	
	mov	ecx, dword ptr [rbp - 0x20]
	div	ecx
	mov	dword ptr [rbp - 4], eax
	cmp	eax, 0
	jne	.label_1412
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	mov	rcx, rax
	add	rcx, -1
	mov	qword ptr [rbp - 0x18], rcx
	lea	rsi, [rsi]
	mov	byte ptr [rax - 1], 0x2d
	jmp	.label_1411
.label_1410:
	jmp	.label_1413
.label_1413:
	mov	eax, 0xa
	mov	ecx, dword ptr [rbp - 4]
	mov	dword ptr [rbp - 0x24], eax
	mov	eax, ecx
	lea	rsi, [rsi]
	xor	edx, edx
	lea	rdi, [rdi]
	mov	ecx, dword ptr [rbp - 0x24]
	div	ecx
	mov	rsp, rsp
	add	edx, 0x30
	mov	sil, dl
	mov	rdi, qword ptr [rbp - 0x18]
	mov	r8, rdi
	nop	
	add	r8, -1
	mov	qword ptr [rbp - 0x18], r8
	mov	byte ptr [rdi - 1], sil
	mov	eax, 0xa
	mov	ecx, dword ptr [rbp - 4]
	mov	dword ptr [rbp - 0x28], eax
	mov	eax, ecx
	lea	rsi, [rsi]
	xor	edx, edx
	mov	rsp, rsp
	mov	ecx, dword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	div	ecx
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 4], eax
	cmp	eax, 0
	mov	rbp, rbp
	jne	.label_1413
	mov	rsp, rsp
	jmp	.label_1411
.label_1411:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x18]
	pop	rbp
	nop	
	ret	
	.section	.text
	.align	16
	#Procedure 0x418190

	.globl umaxtostr
	.type umaxtostr, @function
umaxtostr:
	push	rbp
	lea	rdi, [rdi]
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	add	rsi, 0x14
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x18], rsi
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	mov	byte ptr [rsi], 0
	cmp	qword ptr [rbp - 8], 0
	jae	.label_1414
	jmp	.label_1417
.label_1417:
	lea	rsi, [rsi]
	mov	eax, 0x30
	mov	rbp, rbp
	mov	ecx, eax
	mov	eax, 0xa
	mov	edx, eax
	mov	rax, qword ptr [rbp - 8]
	xor	esi, esi
	mov	qword ptr [rbp - 0x20], rdx
	mov	edx, esi
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x20]
	div	rdi
	lea	rdi, [rdi]
	sub	rcx, rdx
	mov	r8b, cl
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rdx, rcx
	add	rdx, -1
	mov	qword ptr [rbp - 0x18], rdx
	mov	rbp, rbp
	mov	byte ptr [rcx - 1], r8b
	mov	eax, 0xa
	nop	
	mov	ecx, eax
	nop	
	mov	rax, qword ptr [rbp - 8]
	xor	edx, edx
	nop	
	div	rcx
	mov	qword ptr [rbp - 8], rax
	mov	rsp, rsp
	cmp	rax, 0
	lea	rdi, [rdi]
	jne	.label_1417
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, rax
	mov	rbp, rbp
	add	rcx, -1
	mov	qword ptr [rbp - 0x18], rcx
	nop	
	mov	byte ptr [rax - 1], 0x2d
	jmp	.label_1416
.label_1414:
	jmp	.label_1415
.label_1415:
	mov	eax, 0xa
	mov	ecx, eax
	mov	rax, qword ptr [rbp - 8]
	xor	edx, edx
	mov	rsp, rsp
	div	rcx
	add	rdx, 0x30
	mov	sil, dl
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rdx, rcx
	lea	rsi, [rsi]
	add	rdx, -1
	mov	qword ptr [rbp - 0x18], rdx
	mov	byte ptr [rcx - 1], sil
	mov	eax, 0xa
	mov	ecx, eax
	mov	rax, qword ptr [rbp - 8]
	xor	edx, edx
	div	rcx
	mov	rsp, rsp
	mov	qword ptr [rbp - 8], rax
	cmp	rax, 0
	nop	
	jne	.label_1415
	jmp	.label_1416
.label_1416:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x18]
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4182d0
	.globl gnu_mbswidth
	.type gnu_mbswidth, @function
gnu_mbswidth:

	push	rbp
	mov	rsp, rsp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 8], rdi
	nop	
	mov	dword ptr [rbp - 0xc], esi
	mov	rdi, qword ptr [rbp - 8]
	nop	
	mov	rax, qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x18], rdi
	mov	rdi, rax
	mov	rsp, rsp
	call	strlen
	mov	edx, dword ptr [rbp - 0xc]
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rsi, rax
	lea	rdi, [rdi]
	call	mbsnwidth
	mov	rbp, rbp
	add	rsp, 0x20
	nop	
	pop	rbp
	nop	
	ret	
	.section	.text
	.align	16
	#Procedure 0x418320

	.globl mbsnwidth
	.type mbsnwidth, @function
mbsnwidth:
	nop	
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x80
	nop	
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x1c], edx
	mov	rsi, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x28], rsi
	mov	rsi, qword ptr [rbp - 0x28]
	add	rsi, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x30], rsi
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x34], 0
	call	__ctype_get_mb_cur_max
	cmp	rax, 1
	jbe	.label_1440
	jmp	.label_1437
.label_1437:
	mov	rax, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	cmp	rax, qword ptr [rbp - 0x30]
	nop	
	jae	.label_1443
	nop	
	mov	rax, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	movsx	ecx, byte ptr [rax]
	mov	rbp, rbp
	add	ecx, -0x20
	mov	eax, ecx
	sub	ecx, 0x5e
	mov	qword ptr [rbp - 0x60], rax
	mov	dword ptr [rbp - 0x64], ecx
	mov	rbp, rbp
	ja	.label_1448
	mov	rax, qword ptr [rbp - 0x60]
	mov	rsp, rsp
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_1429]]
	lea	rdi, [rdi]
	jmp	rcx
.label_2382:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x28]
	mov	rbp, rbp
	add	rax, 1
	mov	qword ptr [rbp - 0x28], rax
	lea	rsi, [rsi]
	mov	ecx, dword ptr [rbp - 0x34]
	add	ecx, 1
	nop	
	mov	dword ptr [rbp - 0x34], ecx
	jmp	.label_1434
.label_1448:
	xor	esi, esi
	mov	eax, 8
	mov	edx, eax
	mov	rbp, rbp
	lea	rcx, [rbp - 0x40]
	mov	rsp, rsp
	mov	rdi, rcx
	call	memset
.label_1431:
	mov	rsp, rsp
	lea	rdi, [rbp - 0x44]
	lea	rsi, [rsi]
	lea	rcx, [rbp - 0x40]
	mov	rsi, qword ptr [rbp - 0x28]
	mov	rax, qword ptr [rbp - 0x30]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	sub	rax, rdx
	mov	rdx, rax
	call	rpl_mbrtowc
	mov	qword ptr [rbp - 0x50], rax
	cmp	qword ptr [rbp - 0x50], -1
	lea	rdi, [rdi]
	jne	.label_1428
	mov	eax, dword ptr [rbp - 0x1c]
	lea	rsi, [rsi]
	and	eax, 1
	cmp	eax, 0
	jne	.label_1433
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, 1
	mov	qword ptr [rbp - 0x28], rax
	mov	rbp, rbp
	mov	ecx, dword ptr [rbp - 0x34]
	add	ecx, 1
	mov	dword ptr [rbp - 0x34], ecx
	lea	rsi, [rsi]
	jmp	.label_1425
.label_1433:
	mov	dword ptr [rbp - 4], 0xffffffff
	jmp	.label_1423
.label_1428:
	cmp	qword ptr [rbp - 0x50], -2
	jne	.label_1445
	mov	eax, dword ptr [rbp - 0x1c]
	lea	rdi, [rdi]
	and	eax, 1
	mov	rsp, rsp
	cmp	eax, 0
	mov	rsp, rsp
	jne	.label_1418
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x28], rax
	mov	rbp, rbp
	mov	ecx, dword ptr [rbp - 0x34]
	nop	
	add	ecx, 1
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x34], ecx
	jmp	.label_1425
.label_1418:
	mov	rbp, rbp
	mov	dword ptr [rbp - 4], 0xffffffff
	jmp	.label_1423
.label_1445:
	cmp	qword ptr [rbp - 0x50], 0
	nop	
	jne	.label_1435
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x50], 1
.label_1435:
	mov	edi, dword ptr [rbp - 0x44]
	call	wcwidth
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x54], eax
	cmp	dword ptr [rbp - 0x54], 0
	lea	rdi, [rdi]
	jl	.label_1442
	mov	eax, 0x7fffffff
	lea	rsi, [rsi]
	mov	ecx, dword ptr [rbp - 0x54]
	nop	
	sub	eax, dword ptr [rbp - 0x34]
	lea	rdi, [rdi]
	cmp	ecx, eax
	jle	.label_1446
	jmp	.label_1424
.label_1446:
	mov	eax, dword ptr [rbp - 0x54]
	add	eax, dword ptr [rbp - 0x34]
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x34], eax
	mov	rsp, rsp
	jmp	.label_1422
.label_1442:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x1c]
	nop	
	and	eax, 2
	mov	rbp, rbp
	cmp	eax, 0
	jne	.label_1430
	mov	edi, dword ptr [rbp - 0x44]
	call	iswcntrl
	cmp	eax, 0
	mov	rbp, rbp
	jne	.label_1436
	cmp	dword ptr [rbp - 0x34], 0x7fffffff
	lea	rsi, [rsi]
	jne	.label_1438
	jmp	.label_1424
.label_1438:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x34]
	nop	
	add	eax, 1
	mov	dword ptr [rbp - 0x34], eax
.label_1436:
	mov	rsp, rsp
	jmp	.label_1420
.label_1430:
	nop	
	mov	dword ptr [rbp - 4], 0xffffffff
	nop	
	jmp	.label_1423
.label_1420:
	jmp	.label_1422
.label_1422:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x50]
	lea	rsi, [rsi]
	add	rax, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x28], rax
	lea	rdi, [rbp - 0x40]
	mov	rsp, rsp
	call	mbsinit
	cmp	eax, 0
	mov	rbp, rbp
	setne	cl
	xor	cl, 0xff
	test	cl, 1
	lea	rsi, [rsi]
	jne	.label_1431
.label_1425:
	mov	rsp, rsp
	jmp	.label_1434
.label_1434:
	jmp	.label_1437
.label_1443:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x34]
	mov	dword ptr [rbp - 4], eax
	jmp	.label_1423
.label_1440:
	jmp	.label_1421
.label_1421:
	mov	rax, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	cmp	rax, qword ptr [rbp - 0x30]
	jae	.label_1447
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, rax
	lea	rdi, [rdi]
	add	rcx, 1
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x28], rcx
	mov	rsp, rsp
	mov	dl, byte ptr [rax]
	mov	byte ptr [rbp - 0x55], dl
	lea	rdi, [rdi]
	movzx	esi, byte ptr [rbp - 0x55]
	nop	
	movsxd	rax, esi
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x70], rax
	lea	rdi, [rdi]
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x70]
	mov	rsp, rsp
	movzx	esi, word ptr [rax + rcx*2]
	and	esi, 0x4000
	lea	rdi, [rdi]
	cmp	esi, 0
	nop	
	je	.label_1432
	cmp	dword ptr [rbp - 0x34], 0x7fffffff
	jne	.label_1439
	jmp	.label_1424
.label_1439:
	mov	eax, dword ptr [rbp - 0x34]
	mov	rbp, rbp
	add	eax, 1
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x34], eax
	nop	
	jmp	.label_1419
.label_1432:
	mov	eax, dword ptr [rbp - 0x1c]
	mov	rsp, rsp
	and	eax, 2
	cmp	eax, 0
	jne	.label_1441
	lea	rdi, [rdi]
	movzx	eax, byte ptr [rbp - 0x55]
	movsxd	rcx, eax
	mov	qword ptr [rbp - 0x78], rcx
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x78]
	movzx	edx, word ptr [rax + rcx*2]
	mov	rbp, rbp
	and	edx, 2
	lea	rsi, [rsi]
	cmp	edx, 0
	lea	rsi, [rsi]
	jne	.label_1427
	mov	rsp, rsp
	cmp	dword ptr [rbp - 0x34], 0x7fffffff
	jne	.label_1426
	mov	rsp, rsp
	jmp	.label_1424
.label_1426:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x34]
	mov	rsp, rsp
	add	eax, 1
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x34], eax
.label_1427:
	jmp	.label_1444
.label_1441:
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 4], 0xffffffff
	jmp	.label_1423
.label_1444:
	jmp	.label_1419
.label_1419:
	lea	rdi, [rdi]
	jmp	.label_1421
.label_1447:
	mov	eax, dword ptr [rbp - 0x34]
	mov	rsp, rsp
	mov	dword ptr [rbp - 4], eax
	lea	rdi, [rdi]
	jmp	.label_1423
.label_1424:
	mov	rsp, rsp
	mov	dword ptr [rbp - 4], 0x7fffffff
.label_1423:
	nop	
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x80
	pop	rbp
	mov	rsp, rsp
	ret	
	.section	.text
	.align	16
	#Procedure 0x418740

	.globl num_processors
	.type num_processors, @function
num_processors:
	mov	rbp, rbp
	push	rbp
	mov	rbp, rsp
	mov	rsp, rsp
	sub	rsp, 0x40
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0xc], edi
	mov	qword ptr [rbp - 0x18], -1
	mov	rbp, rbp
	cmp	dword ptr [rbp - 0xc], 2
	nop	
	jne	.label_1449
	mov	rsp, rsp
	movabs	rdi, OFFSET FLAT:.str_9
	nop	
	call	getenv
	mov	rdi, rax
	call	parse_omp_threads
	mov	rsp, rsp
	movabs	rdi, OFFSET FLAT:.str.1_5
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x20], rax
	nop	
	call	getenv
	mov	rdi, rax
	call	parse_omp_threads
	mov	qword ptr [rbp - 0x18], rax
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x18], 0
	jne	.label_1454
	nop	
	mov	qword ptr [rbp - 0x18], -1
.label_1454:
	nop	
	cmp	qword ptr [rbp - 0x20], 0
	nop	
	je	.label_1450
	nop	
	mov	rax, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	jae	.label_1452
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_1451
.label_1452:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x30], rax
.label_1451:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 8], rax
	mov	rbp, rbp
	jmp	.label_1455
.label_1450:
	mov	rsp, rsp
	mov	dword ptr [rbp - 0xc], 1
.label_1449:
	mov	edi, dword ptr [rbp - 0xc]
	call	num_processors_ignoring_omp
	mov	qword ptr [rbp - 0x28], rax
	mov	rax, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	cmp	rax, qword ptr [rbp - 0x18]
	jae	.label_1453
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x38], rax
	nop	
	jmp	.label_1456
.label_1453:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x38], rax
.label_1456:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x38]
	mov	qword ptr [rbp - 8], rax
.label_1455:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x40
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x418870

	.globl parse_omp_threads
	.type parse_omp_threads, @function
parse_omp_threads:
	mov	rsp, rsp
	push	rbp
	mov	rsp, rsp
	mov	rbp, rsp
	lea	rdi, [rdi]
	sub	rsp, 0x30
	nop	
	mov	qword ptr [rbp - 0x10], rdi
	nop	
	mov	qword ptr [rbp - 0x18], 0
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x10], 0
	mov	rsp, rsp
	jne	.label_1469
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 8], rax
	mov	rsp, rsp
	jmp	.label_1459
.label_1469:
	nop	
	jmp	.label_1457
.label_1457:
	xor	eax, eax
	lea	rdi, [rdi]
	mov	cl, al
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x10]
	movsx	eax, byte ptr [rdx]
	cmp	eax, 0
	mov	byte ptr [rbp - 0x29], cl
	mov	rsp, rsp
	je	.label_1464
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x10]
	movsx	edi, byte ptr [rax]
	call	c_isspace
	mov	byte ptr [rbp - 0x29], al
.label_1464:
	mov	al, byte ptr [rbp - 0x29]
	test	al, 1
	lea	rdi, [rdi]
	jne	.label_1458
	mov	rbp, rbp
	jmp	.label_1472
.label_1458:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	add	rax, 1
	nop	
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_1457
.label_1472:
	mov	rax, qword ptr [rbp - 0x10]
	movsx	edi, byte ptr [rax]
	call	c_isdigit
	test	al, 1
	lea	rsi, [rsi]
	jne	.label_1466
	lea	rdi, [rdi]
	jmp	.label_1467
.label_1466:
	lea	rsi, [rbp - 0x20]
	lea	rdi, [rdi]
	mov	edx, 0xa
	mov	qword ptr [rbp - 0x20], 0
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x10]
	call	strtoul
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x28], rax
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x20], 0
	nop	
	je	.label_1462
	mov	rsp, rsp
	jmp	.label_1468
.label_1468:
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x20]
	movsx	eax, byte ptr [rdx]
	mov	rbp, rbp
	cmp	eax, 0
	mov	byte ptr [rbp - 0x2a], cl
	lea	rsi, [rsi]
	je	.label_1471
	mov	rax, qword ptr [rbp - 0x20]
	movsx	edi, byte ptr [rax]
	nop	
	call	c_isspace
	mov	byte ptr [rbp - 0x2a], al
.label_1471:
	mov	rbp, rbp
	mov	al, byte ptr [rbp - 0x2a]
	lea	rsi, [rsi]
	test	al, 1
	nop	
	jne	.label_1463
	jmp	.label_1470
.label_1463:
	mov	rax, qword ptr [rbp - 0x20]
	add	rax, 1
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x20], rax
	lea	rdi, [rdi]
	jmp	.label_1468
.label_1470:
	mov	rax, qword ptr [rbp - 0x20]
	movsx	ecx, byte ptr [rax]
	mov	rbp, rbp
	cmp	ecx, 0
	lea	rsi, [rsi]
	jne	.label_1461
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	mov	qword ptr [rbp - 8], rax
	jmp	.label_1459
.label_1461:
	nop	
	mov	rax, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0x2c
	jne	.label_1460
	nop	
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 8], rax
	lea	rsi, [rsi]
	jmp	.label_1459
.label_1460:
	lea	rdi, [rdi]
	jmp	.label_1465
.label_1465:
	jmp	.label_1462
.label_1462:
	jmp	.label_1467
.label_1467:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 8], rax
.label_1459:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x30
	pop	rbp
	lea	rsi, [rsi]
	ret	
	.section	.text
	.align	16
	#Procedure 0x418a50

	.globl num_processors_ignoring_omp
	.type num_processors_ignoring_omp, @function
num_processors_ignoring_omp:
	mov	rbp, rbp
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	rsp, rsp
	mov	dword ptr [rbp - 0xc], edi
	mov	rsp, rsp
	cmp	dword ptr [rbp - 0xc], 1
	jne	.label_1478
	mov	rsp, rsp
	call	num_processors_via_affinity_mask
	mov	qword ptr [rbp - 0x18], rax
	nop	
	cmp	qword ptr [rbp - 0x18], 0
	nop	
	jbe	.label_1479
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 8], rax
	lea	rsi, [rsi]
	jmp	.label_1473
.label_1479:
	nop	
	mov	edi, 0x54
	mov	rsp, rsp
	call	sysconf
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x20], rax
	cmp	qword ptr [rbp - 0x20], 0
	lea	rdi, [rdi]
	jle	.label_1477
	nop	
	mov	rax, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	mov	qword ptr [rbp - 8], rax
	lea	rdi, [rdi]
	jmp	.label_1473
.label_1477:
	nop	
	jmp	.label_1474
.label_1478:
	lea	rdi, [rdi]
	mov	edi, 0x53
	call	sysconf
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x28], rax
	cmp	qword ptr [rbp - 0x28], 1
	jne	.label_1475
	call	num_processors_via_affinity_mask
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x30], rax
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x30], 0
	mov	rbp, rbp
	jbe	.label_1480
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x30]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x28], rax
.label_1480:
	jmp	.label_1475
.label_1475:
	cmp	qword ptr [rbp - 0x28], 0
	jle	.label_1476
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 8], rax
	lea	rdi, [rdi]
	jmp	.label_1473
.label_1476:
	jmp	.label_1474
.label_1474:
	mov	rbp, rbp
	mov	qword ptr [rbp - 8], 1
.label_1473:
	nop	
	mov	rax, qword ptr [rbp - 8]
	mov	rsp, rsp
	add	rsp, 0x30
	mov	rsp, rsp
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x418b70

	.globl num_processors_via_affinity_mask
	.type num_processors_via_affinity_mask, @function
num_processors_via_affinity_mask:
	push	rbp
	nop	
	mov	rbp, rsp
	lea	rsi, [rsi]
	sub	rsp, 0x90
	xor	edi, edi
	mov	rbp, rbp
	mov	eax, 0x80
	mov	esi, eax
	lea	rdx, [rbp - 0x88]
	lea	rsi, [rsi]
	call	sched_getaffinity
	cmp	eax, 0
	jne	.label_1481
	mov	eax, 0x80
	mov	edi, eax
	mov	rsp, rsp
	lea	rsi, [rbp - 0x88]
	mov	rbp, rbp
	call	__sched_cpucount
	nop	
	movsxd	rsi, eax
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x90], rsi
	cmp	qword ptr [rbp - 0x90], 0
	mov	rsp, rsp
	jbe	.label_1483
	mov	rax, qword ptr [rbp - 0x90]
	mov	rbp, rbp
	mov	qword ptr [rbp - 8], rax
	lea	rdi, [rdi]
	jmp	.label_1482
.label_1483:
	lea	rsi, [rsi]
	jmp	.label_1481
.label_1481:
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 8], 0
.label_1482:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	add	rsp, 0x90
	nop	
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x418c20

	.globl physmem_total
	.type physmem_total, @function
physmem_total:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x90
	mov	edi, 0x55
	call	sysconf
	mov	rsp, rsp
	mov	edi, 0x1e
	cvtsi2sd	xmm0, rax
	movsd	qword ptr [rbp - 0x10], xmm0
	nop	
	call	sysconf
	xorps	xmm0, xmm0
	cvtsi2sd	xmm1, rax
	movsd	qword ptr [rbp - 0x18], xmm1
	movsd	xmm1, qword ptr [rbp - 0x10]
	ucomisd	xmm1, xmm0
	mov	rbp, rbp
	jb	.label_1487
	xorps	xmm0, xmm0
	movsd	xmm1, qword ptr [rbp - 0x18]
	ucomisd	xmm1, xmm0
	nop	
	jb	.label_1487
	movsd	xmm0, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mulsd	xmm0, qword ptr [rbp - 0x18]
	movsd	qword ptr [rbp - 8], xmm0
	jmp	.label_1485
.label_1487:
	mov	rsp, rsp
	lea	rdi, [rbp - 0x88]
	mov	rsp, rsp
	call	sysinfo
	cmp	eax, 0
	nop	
	jne	.label_1486
	nop	
	movaps	xmm0,  xmmword ptr [word ptr [rip + label_247]]
	mov	rbp, rbp
	movq	xmm1, qword ptr [rbp - 0x68]
	nop	
	punpckldq	xmm1, xmm0
	mov	rbp, rbp
	movapd	xmm0,  xmmword ptr [word ptr [rip + label_248]]
	subpd	xmm1, xmm0
	lea	rdi, [rdi]
	pshufd	xmm0, xmm1, 0x4e
	addpd	xmm0, xmm1
	mov	eax, dword ptr [rbp - 0x20]
	nop	
	mov	ecx, eax
	lea	rsi, [rsi]
	cvtsi2sd	xmm1, rcx
	mulsd	xmm0, xmm1
	lea	rsi, [rsi]
	movsd	qword ptr [rbp - 8], xmm0
	jmp	.label_1485
.label_1486:
	mov	rbp, rbp
	movsd	xmm0,  qword ptr [word ptr [label_1484]]
	mov	rsp, rsp
	movsd	qword ptr [rbp - 8], xmm0
.label_1485:
	movsd	xmm0, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	add	rsp, 0x90
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x418d30

	.globl physmem_available
	.type physmem_available, @function
physmem_available:
	mov	rsp, rsp
	push	rbp
	mov	rbp, rsp
	lea	rsi, [rsi]
	sub	rsp, 0x90
	mov	edi, 0x56
	call	sysconf
	mov	edi, 0x1e
	cvtsi2sd	xmm0, rax
	movsd	qword ptr [rbp - 0x10], xmm0
	call	sysconf
	mov	rbp, rbp
	xorps	xmm0, xmm0
	lea	rdi, [rdi]
	cvtsi2sd	xmm1, rax
	movsd	qword ptr [rbp - 0x18], xmm1
	movsd	xmm1, qword ptr [rbp - 0x10]
	nop	
	ucomisd	xmm1, xmm0
	jb	.label_1488
	xorps	xmm0, xmm0
	movsd	xmm1, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	ucomisd	xmm1, xmm0
	jb	.label_1488
	movsd	xmm0, qword ptr [rbp - 0x10]
	mulsd	xmm0, qword ptr [rbp - 0x18]
	movsd	qword ptr [rbp - 8], xmm0
	jmp	.label_1489
.label_1488:
	lea	rdi, [rbp - 0x88]
	mov	rsp, rsp
	call	sysinfo
	cmp	eax, 0
	mov	rsp, rsp
	jne	.label_1491
	movq	xmm0, qword ptr [rbp - 0x60]
	mov	rbp, rbp
	movaps	xmm1,  xmmword ptr [word ptr [rip + label_247]]
	lea	rsi, [rsi]
	punpckldq	xmm0, xmm1
	movapd	xmm2,  xmmword ptr [word ptr [rip + label_248]]
	subpd	xmm0, xmm2
	pshufd	xmm3, xmm0, 0x4e
	addpd	xmm3, xmm0
	lea	rsi, [rsi]
	movq	xmm0, qword ptr [rbp - 0x50]
	lea	rsi, [rsi]
	punpckldq	xmm0, xmm1
	subpd	xmm0, xmm2
	lea	rsi, [rsi]
	pshufd	xmm1, xmm0, 0x4e
	addpd	xmm1, xmm0
	addsd	xmm3, xmm1
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x20]
	mov	ecx, eax
	cvtsi2sd	xmm0, rcx
	mov	rsp, rsp
	mulsd	xmm3, xmm0
	movsd	qword ptr [rbp - 8], xmm3
	nop	
	jmp	.label_1489
.label_1491:
	call	physmem_total
	movsd	xmm1,  qword ptr [word ptr [label_1490]]
	nop	
	divsd	xmm0, xmm1
	movsd	qword ptr [rbp - 8], xmm0
.label_1489:
	mov	rsp, rsp
	movsd	xmm0, qword ptr [rbp - 8]
	add	rsp, 0x90
	pop	rbp
	lea	rdi, [rdi]
	ret	
	.section	.text
	.align	16
	#Procedure 0x418e60

	.globl rpl_pipe2
	.type rpl_pipe2, @function
rpl_pipe2:
	lea	rsi, [rsi]
	push	rbp
	nop	
	mov	rbp, rsp
	lea	rdi, [rdi]
	sub	rsp, 0x40
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x10], rdi
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x14], esi
	mov	rdi, qword ptr [rbp - 0x10]
	mov	esi, dword ptr [rdi]
	mov	dword ptr [rbp - 0x1c], esi
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x10]
	mov	esi, dword ptr [rdi + 4]
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x18], esi
	cmp	dword ptr [dword ptr [rpl_pipe2.have_pipe2_really]],  0
	mov	rsp, rsp
	jl	.label_1500
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	esi, dword ptr [rbp - 0x14]
	mov	rsp, rsp
	call	pipe2
	mov	dword ptr [rbp - 0x20], eax
	mov	rsp, rsp
	cmp	dword ptr [rbp - 0x20], 0
	mov	rsp, rsp
	jge	.label_1503
	lea	rsi, [rsi]
	call	__errno_location
	lea	rdi, [rdi]
	cmp	dword ptr [rax], 0x26
	mov	rsp, rsp
	je	.label_1497
.label_1503:
	nop	
	mov	dword ptr [dword ptr [rpl_pipe2.have_pipe2_really]],  1
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x20]
	mov	dword ptr [rbp - 4], eax
	jmp	.label_1492
.label_1497:
	mov	dword ptr [dword ptr [rpl_pipe2.have_pipe2_really]],  0xffffffff
.label_1500:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x14]
	and	eax, 0xfff7f7ff
	nop	
	cmp	eax, 0
	je	.label_1493
	call	__errno_location
	mov	dword ptr [rax], 0x16
	mov	dword ptr [rbp - 4], 0xffffffff
	mov	rsp, rsp
	jmp	.label_1492
.label_1493:
	mov	rdi, qword ptr [rbp - 0x10]
	call	pipe
	mov	rbp, rbp
	cmp	eax, 0
	jge	.label_1504
	nop	
	mov	dword ptr [rbp - 4], 0xffffffff
	jmp	.label_1492
.label_1504:
	mov	eax, dword ptr [rbp - 0x14]
	nop	
	and	eax, 0x800
	mov	rsp, rsp
	cmp	eax, 0
	je	.label_1495
	mov	esi, 3
	lea	rdi, [rdi]
	xor	edx, edx
	mov	rax, qword ptr [rbp - 0x10]
	mov	edi, dword ptr [rax + 4]
	nop	
	mov	al, 0
	lea	rdi, [rdi]
	call	rpl_fcntl
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x24], eax
	cmp	eax, 0
	jl	.label_1494
	mov	esi, 4
	mov	rax, qword ptr [rbp - 0x10]
	mov	edi, dword ptr [rax + 4]
	mov	ecx, dword ptr [rbp - 0x24]
	or	ecx, 0x800
	mov	edx, ecx
	mov	al, 0
	mov	rbp, rbp
	call	rpl_fcntl
	cmp	eax, -1
	mov	rsp, rsp
	je	.label_1494
	mov	rsp, rsp
	mov	esi, 3
	nop	
	xor	edx, edx
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x10]
	mov	edi, dword ptr [rax]
	lea	rdi, [rdi]
	mov	al, 0
	call	rpl_fcntl
	mov	dword ptr [rbp - 0x24], eax
	cmp	eax, 0
	jl	.label_1494
	lea	rsi, [rsi]
	mov	esi, 4
	mov	rax, qword ptr [rbp - 0x10]
	mov	edi, dword ptr [rax]
	mov	ecx, dword ptr [rbp - 0x24]
	or	ecx, 0x800
	mov	edx, ecx
	mov	rsp, rsp
	mov	al, 0
	lea	rdi, [rdi]
	call	rpl_fcntl
	cmp	eax, -1
	jne	.label_1498
.label_1494:
	jmp	.label_1499
.label_1498:
	jmp	.label_1495
.label_1495:
	mov	eax, dword ptr [rbp - 0x14]
	lea	rdi, [rdi]
	and	eax, 0x80000
	cmp	eax, 0
	je	.label_1501
	mov	esi, 1
	xor	edx, edx
	mov	rax, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	edi, dword ptr [rax + 4]
	mov	al, 0
	lea	rsi, [rsi]
	call	rpl_fcntl
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x28], eax
	lea	rsi, [rsi]
	cmp	eax, 0
	jl	.label_1496
	mov	rbp, rbp
	mov	esi, 2
	mov	rax, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	edi, dword ptr [rax + 4]
	mov	ecx, dword ptr [rbp - 0x28]
	or	ecx, 1
	lea	rsi, [rsi]
	mov	edx, ecx
	nop	
	mov	al, 0
	call	rpl_fcntl
	lea	rdi, [rdi]
	cmp	eax, -1
	je	.label_1496
	mov	esi, 1
	xor	edx, edx
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x10]
	mov	edi, dword ptr [rax]
	mov	rbp, rbp
	mov	al, 0
	lea	rsi, [rsi]
	call	rpl_fcntl
	mov	dword ptr [rbp - 0x28], eax
	lea	rsi, [rsi]
	cmp	eax, 0
	jl	.label_1496
	lea	rsi, [rsi]
	mov	esi, 2
	mov	rax, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	edi, dword ptr [rax]
	lea	rsi, [rsi]
	mov	ecx, dword ptr [rbp - 0x28]
	or	ecx, 1
	lea	rsi, [rsi]
	mov	edx, ecx
	mov	al, 0
	call	rpl_fcntl
	cmp	eax, -1
	lea	rdi, [rdi]
	jne	.label_1502
.label_1496:
	jmp	.label_1499
.label_1502:
	mov	rsp, rsp
	jmp	.label_1501
.label_1501:
	mov	dword ptr [rbp - 4], 0
	mov	rsp, rsp
	jmp	.label_1492
.label_1499:
	mov	rsp, rsp
	call	__errno_location
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 0x2c], ecx
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x10]
	mov	edi, dword ptr [rax]
	nop	
	call	close
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	edi, dword ptr [rdx + 4]
	mov	dword ptr [rbp - 0x30], eax
	mov	rsp, rsp
	call	close
	mov	ecx, dword ptr [rbp - 0x1c]
	mov	rdx, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	dword ptr [rdx], ecx
	mov	rbp, rbp
	mov	ecx, dword ptr [rbp - 0x18]
	nop	
	mov	rdx, qword ptr [rbp - 0x10]
	nop	
	mov	dword ptr [rdx + 4], ecx
	mov	rsp, rsp
	mov	ecx, dword ptr [rbp - 0x2c]
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x34], eax
	mov	dword ptr [rbp - 0x38], ecx
	call	__errno_location
	lea	rsi, [rsi]
	mov	ecx, dword ptr [rbp - 0x38]
	mov	dword ptr [rax], ecx
	mov	dword ptr [rbp - 4], 0xffffffff
.label_1492:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x40
	nop	
	pop	rbp
	lea	rdi, [rdi]
	ret	
	.section	.text
	.align	16
	#Procedure 0x4191a0

	.globl posix2_version
	.type posix2_version, @function
posix2_version:
	mov	rsp, rsp
	push	rbp
	mov	rbp, rsp
	lea	rdi, [rdi]
	sub	rsp, 0x30
	movabs	rdi, OFFSET FLAT:.str_10
	mov	rbp, rbp
	mov	qword ptr [rbp - 8], 0x31069
	mov	rsp, rsp
	call	getenv
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x10], rax
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x10], 0
	lea	rdi, [rdi]
	je	.label_1508
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0
	je	.label_1508
	lea	rdi, [rdi]
	lea	rsi, [rbp - 0x18]
	lea	rdi, [rdi]
	mov	edx, 0xa
	mov	rdi, qword ptr [rbp - 0x10]
	call	strtol
	nop	
	mov	qword ptr [rbp - 0x20], rax
	mov	rax, qword ptr [rbp - 0x18]
	cmp	byte ptr [rax], 0
	jne	.label_1509
	nop	
	mov	rax, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	mov	qword ptr [rbp - 8], rax
.label_1509:
	nop	
	jmp	.label_1508
.label_1508:
	cmp	qword ptr [rbp - 8], -0x80000000
	jge	.label_1510
	mov	rax, -0x80000000
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x28], rax
	lea	rsi, [rsi]
	jmp	.label_1505
.label_1510:
	cmp	qword ptr [rbp - 8], 0x7fffffff
	mov	rbp, rbp
	jge	.label_1506
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x30], rax
	mov	rsp, rsp
	jmp	.label_1507
.label_1506:
	mov	rsp, rsp
	mov	eax, 0x7fffffff
	mov	ecx, eax
	mov	qword ptr [rbp - 0x30], rcx
	nop	
	jmp	.label_1507
.label_1507:
	mov	rax, qword ptr [rbp - 0x30]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x28], rax
.label_1505:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x28]
	mov	rbp, rbp
	mov	ecx, eax
	mov	eax, ecx
	add	rsp, 0x30
	lea	rdi, [rdi]
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4192b0

	.globl set_program_name
	.type set_program_name, @function
set_program_name:
	lea	rsi, [rsi]
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	qword ptr [rbp - 8], rdi
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 8], 0
	jne	.label_1513
	movabs	rdi, OFFSET FLAT:.str_11
	mov	rbp, rbp
	mov	rsi,  qword ptr [word ptr [stderr]]
	call	fputs
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x1c], eax
	lea	rsi, [rsi]
	call	abort
.label_1513:
	lea	rdi, [rdi]
	mov	esi, 0x2f
	mov	rdi, qword ptr [rbp - 8]
	nop	
	call	strrchr
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x10], rax
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0x10], 0
	je	.label_1511
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 1
	mov	qword ptr [rbp - 0x28], rax
	jmp	.label_1515
.label_1511:
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x28], rax
.label_1515:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x28]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x18], rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	sub	rax, rcx
	nop	
	cmp	rax, 7
	jl	.label_1514
	lea	rsi, [rsi]
	movabs	rsi, OFFSET FLAT:.str.1_6
	mov	rsp, rsp
	mov	eax, 7
	mov	edx, eax
	mov	rcx, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	add	rcx, -7
	lea	rdi, [rdi]
	mov	rdi, rcx
	call	strncmp
	cmp	eax, 0
	mov	rbp, rbp
	jne	.label_1514
	mov	rbp, rbp
	movabs	rsi, OFFSET FLAT:.str.2_2
	lea	rsi, [rsi]
	mov	eax, 3
	mov	edx, eax
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 8], rcx
	mov	rdi, qword ptr [rbp - 0x18]
	call	strncmp
	cmp	eax, 0
	jne	.label_1512
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 3
	mov	rsp, rsp
	mov	qword ptr [rbp - 8], rax
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	mov	qword ptr [word ptr [program_invocation_short_name]],  rax
.label_1512:
	jmp	.label_1514
.label_1514:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [word ptr [program_name]],  rax
	nop	
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [word ptr [__progname_full]],  rax
	add	rsp, 0x30
	lea	rsi, [rsi]
	pop	rbp
	mov	rbp, rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x419430
	.globl clone_quoting_options
	.type clone_quoting_options, @function
clone_quoting_options:

	nop
	push	rbp
	lea	rsi, [rsi]
	mov	rbp, rsp
	mov	rbp, rbp
	sub	rsp, 0x30
	mov	qword ptr [rbp - 8], rdi
	mov	rbp, rbp
	call	__errno_location
	mov	ecx, dword ptr [rax]
	mov	rbp, rbp
	mov	dword ptr [rbp - 0xc], ecx
	cmp	qword ptr [rbp - 8], 0
	je	.label_1516
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x20], rax
	lea	rsi, [rsi]
	jmp	.label_1517
.label_1516:
	movabs	rax, OFFSET FLAT:default_quoting_options
	nop	
	mov	qword ptr [rbp - 0x20], rax
	lea	rsi, [rsi]
	jmp	.label_1517
.label_1517:
	mov	rax, qword ptr [rbp - 0x20]
	mov	ecx, 0x38
	lea	rsi, [rsi]
	mov	esi, ecx
	lea	rsi, [rsi]
	mov	rdi, rax
	call	xmemdup
	mov	qword ptr [rbp - 0x18], rax
	mov	ecx, dword ptr [rbp - 0xc]
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x24], ecx
	lea	rdi, [rdi]
	call	__errno_location
	lea	rdi, [rdi]
	mov	ecx, dword ptr [rbp - 0x24]
	mov	rbp, rbp
	mov	dword ptr [rax], ecx
	nop	
	mov	rax, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4194e0
	.globl get_quoting_style
	.type get_quoting_style, @function
get_quoting_style:

	lea	rsi, [rsi]
	push	rbp
	lea	rdi, [rdi]
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 8], 0
	lea	rsi, [rsi]
	je	.label_1518
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x10], rax
	nop	
	jmp	.label_1519
.label_1518:
	lea	rsi, [rsi]
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_1519
.label_1519:
	mov	rax, qword ptr [rbp - 0x10]
	nop	
	mov	eax, dword ptr [rax]
	mov	rsp, rsp
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x419540
	.globl set_quoting_style
	.type set_quoting_style, @function
set_quoting_style:

	push	rbp
	mov	rbp, rsp
	nop	
	mov	qword ptr [rbp - 8], rdi
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0xc], esi
	mov	esi, dword ptr [rbp - 0xc]
	cmp	qword ptr [rbp - 8], 0
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x10], esi
	je	.label_1520
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_1521
.label_1520:
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 0x18], rax
	lea	rdi, [rdi]
	jmp	.label_1521
.label_1521:
	mov	rax, qword ptr [rbp - 0x18]
	mov	ecx, dword ptr [rbp - 0x10]
	mov	dword ptr [rax], ecx
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4195a0

	.globl set_char_quoting
	.type set_char_quoting, @function
set_char_quoting:
	lea	rsi, [rsi]
	push	rbp
	nop	
	mov	rbp, rsp
	mov	al, sil
	mov	rbp, rbp
	mov	qword ptr [rbp - 8], rdi
	mov	byte ptr [rbp - 9], al
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x10], edx
	mov	rbp, rbp
	mov	al, byte ptr [rbp - 9]
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x11], al
	mov	rsp, rsp
	cmp	qword ptr [rbp - 8], 0
	mov	rsp, rsp
	je	.label_1522
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x30], rax
	mov	rsp, rsp
	jmp	.label_1523
.label_1522:
	mov	rbp, rbp
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x30], rax
	lea	rsi, [rsi]
	jmp	.label_1523
.label_1523:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x30]
	mov	rsp, rsp
	add	rax, 8
	mov	rbp, rbp
	movzx	ecx, byte ptr [rbp - 0x11]
	mov	rbp, rbp
	mov	edx, ecx
	shr	rdx, 5
	mov	rbp, rbp
	shl	rdx, 2
	mov	rsp, rsp
	add	rax, rdx
	mov	qword ptr [rbp - 0x20], rax
	mov	rbp, rbp
	movzx	ecx, byte ptr [rbp - 0x11]
	mov	eax, ecx
	lea	rdi, [rdi]
	and	rax, 0x1f
	mov	rsp, rsp
	mov	ecx, eax
	mov	dword ptr [rbp - 0x24], ecx
	mov	rax, qword ptr [rbp - 0x20]
	mov	ecx, dword ptr [rax]
	mov	rbp, rbp
	mov	esi, dword ptr [rbp - 0x24]
	mov	dword ptr [rbp - 0x34], ecx
	nop	
	mov	ecx, esi
	nop	
	mov	esi, dword ptr [rbp - 0x34]
	shr	esi, cl
	mov	rbp, rbp
	and	esi, 1
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x28], esi
	mov	esi, dword ptr [rbp - 0x10]
	and	esi, 1
	lea	rsi, [rsi]
	xor	esi, dword ptr [rbp - 0x28]
	nop	
	mov	ecx, dword ptr [rbp - 0x24]
	nop	
	shl	esi, cl
	mov	rax, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	xor	esi, dword ptr [rax]
	mov	dword ptr [rax], esi
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x28]
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4196a0
	.globl set_quoting_flags
	.type set_quoting_flags, @function
set_quoting_flags:

	mov	rbp, rbp
	push	rbp
	nop	
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	mov	dword ptr [rbp - 0xc], esi
	mov	rsp, rsp
	cmp	qword ptr [rbp - 8], 0
	jne	.label_1524
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	rbp, rbp
	mov	qword ptr [rbp - 8], rax
.label_1524:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	mov	ecx, dword ptr [rax + 4]
	nop	
	mov	dword ptr [rbp - 0x10], ecx
	mov	ecx, dword ptr [rbp - 0xc]
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 8]
	mov	rbp, rbp
	mov	dword ptr [rax + 4], ecx
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x10]
	nop	
	pop	rbp
	nop	
	ret	
	.section	.text
	.align	16
	#Procedure 0x419700

	.globl set_custom_quoting
	.type set_custom_quoting, @function
set_custom_quoting:
	push	rbp
	mov	rbp, rsp
	lea	rdi, [rdi]
	sub	rsp, 0x20
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	cmp	qword ptr [rbp - 8], 0
	nop	
	jne	.label_1525
	lea	rsi, [rsi]
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 8], rax
.label_1525:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 8]
	mov	dword ptr [rax], 0xa
	nop	
	cmp	qword ptr [rbp - 0x10], 0
	lea	rsi, [rsi]
	je	.label_1527
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0x18], 0
	lea	rsi, [rsi]
	jne	.label_1526
.label_1527:
	call	abort
.label_1526:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 8]
	mov	qword ptr [rcx + 0x28], rax
	mov	rax, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	mov	qword ptr [rcx + 0x30], rax
	add	rsp, 0x20
	pop	rbp
	mov	rbp, rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4197a0
	.globl quotearg_buffer
	.type quotearg_buffer, @function
quotearg_buffer:

	push	rbp
	mov	rbp, rbp
	mov	rbp, rsp
	sub	rsp, 0x70
	mov	rbp, rbp
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	qword ptr [rbp - 0x20], rcx
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x28], r8
	nop	
	cmp	qword ptr [rbp - 0x28], 0
	je	.label_1528
	mov	rax, qword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x48], rax
	jmp	.label_1529
.label_1528:
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 0x48], rax
	mov	rbp, rbp
	jmp	.label_1529
.label_1529:
	nop	
	mov	rax, qword ptr [rbp - 0x48]
	mov	qword ptr [rbp - 0x30], rax
	call	__errno_location
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 0x34], ecx
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x20]
	nop	
	mov	rax, qword ptr [rbp - 0x30]
	mov	r8d, dword ptr [rax]
	mov	rax, qword ptr [rbp - 0x30]
	mov	r9d, dword ptr [rax + 4]
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, 8
	mov	r10, qword ptr [rbp - 0x30]
	mov	r10, qword ptr [r10 + 0x28]
	mov	r11, qword ptr [rbp - 0x30]
	mov	rbp, rbp
	mov	r11, qword ptr [r11 + 0x30]
	nop	
	mov	qword ptr [rsp], rax
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 8], r10
	mov	qword ptr [rsp + 0x10], r11
	call	quotearg_buffer_restyled
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x40], rax
	mov	r8d, dword ptr [rbp - 0x34]
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x4c], r8d
	mov	rbp, rbp
	call	__errno_location
	mov	r8d, dword ptr [rbp - 0x4c]
	mov	dword ptr [rax], r8d
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x40]
	nop	
	add	rsp, 0x70
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4198a0

	.globl quotearg_buffer_restyled
	.type quotearg_buffer_restyled, @function
quotearg_buffer_restyled:
	push	rbp
	mov	rbp, rsp
	push	rbx
	lea	rsi, [rsi]
	sub	rsp, 0x158
	mov	rax, qword ptr [rbp + 0x20]
	mov	rsp, rsp
	mov	r10, qword ptr [rbp + 0x18]
	nop	
	mov	r11, qword ptr [rbp + 0x10]
	mov	qword ptr [rbp - 0x18], rdi
	nop	
	mov	qword ptr [rbp - 0x20], rsi
	mov	qword ptr [rbp - 0x28], rdx
	mov	qword ptr [rbp - 0x30], rcx
	mov	dword ptr [rbp - 0x34], r8d
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x38], r9d
	mov	qword ptr [rbp - 0x40], r11
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x48], r10
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x50], rax
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x60], 0
	mov	qword ptr [rbp - 0x68], 0
	mov	qword ptr [rbp - 0x70], 0
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x78], 0
	mov	byte ptr [rbp - 0x79], 0
	mov	rbp, rbp
	call	__ctype_get_mb_cur_max
	mov	rbp, rbp
	cmp	rax, 1
	nop	
	sete	bl
	and	bl, 1
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x7a], bl
	mov	r8d, dword ptr [rbp - 0x38]
	and	r8d, 2
	mov	rsp, rsp
	cmp	r8d, 0
	setne	bl
	and	bl, 1
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x7b], bl
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x7c], 0
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x7d], 0
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x7e], 1
.label_1547:
	mov	eax, dword ptr [rbp - 0x34]
	mov	rbp, rbp
	mov	ecx, eax
	lea	rsi, [rsi]
	mov	rdx, rcx
	sub	rdx, 0xa
	mov	qword ptr [rbp - 0xc8], rcx
	mov	qword ptr [rbp - 0xd0], rdx
	ja	.label_1610
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0xc8]
	lea	rdi, [rdi]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_1614]]
	jmp	rcx
.label_2371:
	mov	dword ptr [rbp - 0x34], 5
	mov	byte ptr [rbp - 0x7b], 1
.label_2370:
	test	byte ptr [rbp - 0x7b], 1
	mov	rsp, rsp
	jne	.label_1620
	jmp	.label_1624
.label_1624:
	mov	rax, qword ptr [rbp - 0x60]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rbp - 0x20]
	nop	
	jae	.label_1627
	mov	rax, qword ptr [rbp - 0x60]
	nop	
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x22
.label_1627:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	mov	rsp, rsp
	jmp	.label_1620
.label_1620:
	movabs	rax, OFFSET FLAT:.str.10_0
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x79], 1
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x70], rax
	mov	qword ptr [rbp - 0x78], 1
	jmp	.label_1641
.label_2372:
	nop	
	mov	byte ptr [rbp - 0x79], 1
	nop	
	mov	byte ptr [rbp - 0x7b], 0
	jmp	.label_1641
.label_2373:
	cmp	dword ptr [rbp - 0x34], 0xa
	je	.label_1643
	mov	rbp, rbp
	movabs	rdi, OFFSET FLAT:.str.11_0
	mov	rbp, rbp
	mov	esi, dword ptr [rbp - 0x34]
	mov	rsp, rsp
	call	gettext_quote
	lea	rdi, [rdi]
	movabs	rdi, OFFSET FLAT:.str.12_0
	mov	qword ptr [rbp - 0x48], rax
	mov	esi, dword ptr [rbp - 0x34]
	call	gettext_quote
	mov	qword ptr [rbp - 0x50], rax
.label_1643:
	test	byte ptr [rbp - 0x7b], 1
	mov	rsp, rsp
	jne	.label_1655
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x48]
	mov	qword ptr [rbp - 0x70], rax
.label_1674:
	mov	rax, qword ptr [rbp - 0x70]
	lea	rdi, [rdi]
	cmp	byte ptr [rax], 0
	mov	rsp, rsp
	je	.label_1661
	jmp	.label_1663
.label_1663:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x60]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rbp - 0x20]
	nop	
	jae	.label_1665
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x70]
	lea	rdi, [rdi]
	mov	cl, byte ptr [rax]
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x60]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	byte ptr [rdx + rax], cl
.label_1665:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	nop	
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_1553
.label_1553:
	mov	rax, qword ptr [rbp - 0x70]
	lea	rdi, [rdi]
	add	rax, 1
	mov	qword ptr [rbp - 0x70], rax
	jmp	.label_1674
.label_1661:
	mov	rbp, rbp
	jmp	.label_1655
.label_1655:
	mov	byte ptr [rbp - 0x79], 1
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x50]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x70], rax
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x70]
	nop	
	call	strlen
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x78], rax
	mov	rbp, rbp
	jmp	.label_1641
.label_2368:
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x79], 1
.label_2367:
	mov	byte ptr [rbp - 0x7b], 1
.label_2369:
	nop	
	test	byte ptr [rbp - 0x7b], 1
	lea	rsi, [rsi]
	jne	.label_1687
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x79], 1
.label_1687:
	jmp	.label_1692
.label_1692:
	mov	dword ptr [rbp - 0x34], 2
	mov	rsp, rsp
	test	byte ptr [rbp - 0x7b], 1
	jne	.label_1694
	jmp	.label_1700
.label_1700:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	jae	.label_1559
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_1559:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	lea	rdi, [rdi]
	jmp	.label_1694
.label_1694:
	movabs	rax, OFFSET FLAT:.str.12_0
	mov	qword ptr [rbp - 0x70], rax
	mov	qword ptr [rbp - 0x78], 1
	mov	rsp, rsp
	jmp	.label_1641
.label_2366:
	mov	byte ptr [rbp - 0x7b], 0
	jmp	.label_1641
.label_1610:
	call	abort
.label_1641:
	mov	qword ptr [rbp - 0x58], 0
.label_1699:
	cmp	qword ptr [rbp - 0x30], -1
	jne	.label_1725
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rbp - 0x28]
	movsx	edx, byte ptr [rcx + rax]
	cmp	edx, 0
	sete	sil
	and	sil, 1
	nop	
	movzx	edx, sil
	nop	
	mov	dword ptr [rbp - 0xd4], edx
	jmp	.label_1726
.label_1725:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x58]
	cmp	rax, qword ptr [rbp - 0x30]
	nop	
	sete	cl
	and	cl, 1
	movzx	edx, cl
	mov	rbp, rbp
	mov	dword ptr [rbp - 0xd4], edx
.label_1726:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0xd4]
	lea	rdi, [rdi]
	cmp	eax, 0
	setne	cl
	xor	cl, 0xff
	mov	rbp, rbp
	test	cl, 1
	jne	.label_1541
	mov	rbp, rbp
	jmp	.label_1551
.label_1541:
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x81], 0
	nop	
	mov	byte ptr [rbp - 0x82], 0
	mov	byte ptr [rbp - 0x83], 0
	test	byte ptr [rbp - 0x79], 1
	mov	rsp, rsp
	je	.label_1555
	cmp	dword ptr [rbp - 0x34], 2
	lea	rsi, [rsi]
	je	.label_1555
	cmp	qword ptr [rbp - 0x78], 0
	je	.label_1555
	mov	rax, qword ptr [rbp - 0x58]
	lea	rdi, [rdi]
	add	rax, qword ptr [rbp - 0x78]
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0x30], -1
	mov	qword ptr [rbp - 0xe0], rax
	lea	rsi, [rsi]
	jne	.label_1578
	mov	rsp, rsp
	mov	eax, 1
	mov	rbp, rbp
	mov	ecx, eax
	cmp	rcx, qword ptr [rbp - 0x78]
	jae	.label_1578
	mov	rdi, qword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	call	strlen
	mov	qword ptr [rbp - 0x30], rax
	mov	qword ptr [rbp - 0xe8], rax
	jmp	.label_1583
.label_1578:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0xe8], rax
.label_1583:
	mov	rax, qword ptr [rbp - 0xe8]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0xe0]
	cmp	rcx, rax
	mov	rsp, rsp
	ja	.label_1555
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	add	rax, qword ptr [rbp - 0x58]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x70]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x78]
	mov	rdi, rax
	call	memcmp
	cmp	eax, 0
	jne	.label_1555
	nop	
	test	byte ptr [rbp - 0x7b], 1
	mov	rsp, rsp
	je	.label_1601
	jmp	.label_1542
.label_1601:
	nop	
	mov	byte ptr [rbp - 0x81], 1
.label_1555:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	dl, byte ptr [rcx + rax]
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x7f], dl
	movzx	esi, byte ptr [rbp - 0x7f]
	lea	rdi, [rdi]
	mov	eax, esi
	nop	
	mov	rcx, rax
	lea	rsi, [rsi]
	sub	rcx, 0x7e
	mov	qword ptr [rbp - 0xf0], rax
	mov	qword ptr [rbp - 0xf8], rcx
	ja	.label_1604
	mov	rax, qword ptr [rbp - 0xf0]
	lea	rsi, [rsi]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_1615]]
	nop	
	jmp	rcx
.label_2416:
	mov	rbp, rbp
	test	byte ptr [rbp - 0x79], 1
	je	.label_1618
	mov	rsp, rsp
	jmp	.label_1623
.label_1623:
	test	byte ptr [rbp - 0x7b], 1
	je	.label_1657
	jmp	.label_1542
.label_1657:
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x82], 1
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_1632
	mov	rbp, rbp
	test	byte ptr [rbp - 0x7c], 1
	mov	rbp, rbp
	jne	.label_1632
	nop	
	jmp	.label_1634
.label_1634:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x60]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_1635
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x60]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	mov	byte ptr [rcx + rax], 0x27
.label_1635:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	nop	
	mov	qword ptr [rbp - 0x60], rax
	lea	rdi, [rdi]
	jmp	.label_1642
.label_1642:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	jae	.label_1647
	mov	rax, qword ptr [rbp - 0x60]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	mov	byte ptr [rcx + rax], 0x24
.label_1647:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x60]
	mov	rsp, rsp
	add	rax, 1
	nop	
	mov	qword ptr [rbp - 0x60], rax
	lea	rsi, [rsi]
	jmp	.label_1654
.label_1654:
	nop	
	mov	rax, qword ptr [rbp - 0x60]
	mov	rbp, rbp
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_1659
	nop	
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_1659:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	mov	byte ptr [rbp - 0x7c], 1
.label_1632:
	lea	rsi, [rsi]
	jmp	.label_1728
.label_1728:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_1667
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	mov	byte ptr [rcx + rax], 0x5c
.label_1667:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x60]
	mov	rbp, rbp
	add	rax, 1
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_1670
.label_1670:
	cmp	dword ptr [rbp - 0x34], 2
	je	.label_1678
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, 1
	cmp	rax, qword ptr [rbp - 0x30]
	jae	.label_1678
	mov	eax, 0x30
	mov	rcx, qword ptr [rbp - 0x58]
	mov	rdx, qword ptr [rbp - 0x28]
	nop	
	movsx	esi, byte ptr [rdx + rcx + 1]
	cmp	eax, esi
	jg	.label_1678
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x58]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x28]
	mov	rbp, rbp
	movsx	edx, byte ptr [rcx + rax + 1]
	mov	rbp, rbp
	cmp	edx, 0x39
	nop	
	jg	.label_1678
	nop	
	jmp	.label_1691
.label_1691:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x60]
	nop	
	cmp	rax, qword ptr [rbp - 0x20]
	nop	
	jae	.label_1693
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x30
.label_1693:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	nop	
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_1701
.label_1701:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x60]
	mov	rsp, rsp
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_1707
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	mov	byte ptr [rcx + rax], 0x30
.label_1707:
	nop	
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	nop	
	mov	qword ptr [rbp - 0x60], rax
	lea	rdi, [rdi]
	jmp	.label_1678
.label_1678:
	mov	byte ptr [rbp - 0x7f], 0x30
	nop	
	jmp	.label_1688
.label_1618:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x38]
	nop	
	and	eax, 1
	mov	rsp, rsp
	cmp	eax, 0
	je	.label_1718
	mov	rbp, rbp
	jmp	.label_1689
.label_1718:
	jmp	.label_1688
.label_1688:
	jmp	.label_1567
.label_2427:
	mov	eax, dword ptr [rbp - 0x34]
	mov	ecx, eax
	sub	ecx, 2
	mov	dword ptr [rbp - 0xfc], eax
	nop	
	mov	dword ptr [rbp - 0x100], ecx
	mov	rsp, rsp
	je	.label_1727
	mov	rbp, rbp
	jmp	.label_1531
.label_1531:
	mov	eax, dword ptr [rbp - 0xfc]
	mov	rbp, rbp
	sub	eax, 5
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x104], eax
	lea	rsi, [rsi]
	je	.label_1534
	jmp	.label_1543
.label_1727:
	mov	rsp, rsp
	test	byte ptr [rbp - 0x7b], 1
	nop	
	je	.label_1546
	jmp	.label_1542
.label_1546:
	jmp	.label_1549
.label_1534:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x38]
	and	eax, 4
	cmp	eax, 0
	je	.label_1552
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, 2
	cmp	rax, qword ptr [rbp - 0x30]
	nop	
	jae	.label_1552
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x58]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x28]
	movsx	edx, byte ptr [rcx + rax + 1]
	mov	rbp, rbp
	cmp	edx, 0x3f
	lea	rdi, [rdi]
	jne	.label_1552
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	movsx	edx, byte ptr [rax + rcx + 2]
	nop	
	mov	esi, edx
	sub	esi, 0x21
	mov	dword ptr [rbp - 0x108], edx
	mov	dword ptr [rbp - 0x10c], esi
	lea	rdi, [rdi]
	je	.label_1572
	nop	
	jmp	.label_1696
.label_1696:
	nop	
	mov	eax, dword ptr [rbp - 0x108]
	add	eax, -0x27
	sub	eax, 3
	mov	dword ptr [rbp - 0x110], eax
	mov	rsp, rsp
	jb	.label_1572
	jmp	.label_1585
.label_1585:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x108]
	mov	rbp, rbp
	sub	eax, 0x2d
	mov	dword ptr [rbp - 0x114], eax
	mov	rsp, rsp
	je	.label_1572
	jmp	.label_1588
.label_1588:
	mov	eax, dword ptr [rbp - 0x108]
	lea	rsi, [rsi]
	sub	eax, 0x2f
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x118], eax
	je	.label_1572
	jmp	.label_1595
.label_1595:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x108]
	add	eax, -0x3c
	sub	eax, 2
	mov	dword ptr [rbp - 0x11c], eax
	lea	rdi, [rdi]
	ja	.label_1597
	jmp	.label_1572
.label_1572:
	lea	rdi, [rdi]
	test	byte ptr [rbp - 0x7b], 1
	nop	
	je	.label_1720
	jmp	.label_1542
.label_1720:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x58]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	mov	dl, byte ptr [rcx + rax + 2]
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x7f], dl
	mov	rax, qword ptr [rbp - 0x58]
	lea	rdi, [rdi]
	add	rax, 2
	mov	qword ptr [rbp - 0x58], rax
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_1607
	mov	rax, qword ptr [rbp - 0x60]
	nop	
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	mov	byte ptr [rcx + rax], 0x3f
.label_1607:
	nop	
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_1619
.label_1619:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_1626
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	mov	byte ptr [rcx + rax], 0x22
.label_1626:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_1630
.label_1630:
	nop	
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_1633
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x60]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	mov	byte ptr [rcx + rax], 0x22
.label_1633:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_1640
.label_1640:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_1587
	mov	rax, qword ptr [rbp - 0x60]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	mov	byte ptr [rcx + rax], 0x3f
.label_1587:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_1650
.label_1597:
	jmp	.label_1650
.label_1650:
	jmp	.label_1552
.label_1552:
	jmp	.label_1549
.label_1543:
	jmp	.label_1549
.label_1549:
	jmp	.label_1567
.label_2417:
	mov	byte ptr [rbp - 0x80], 0x61
	jmp	.label_1660
.label_2418:
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x80], 0x62
	jmp	.label_1660
.label_2422:
	mov	byte ptr [rbp - 0x80], 0x66
	lea	rdi, [rdi]
	jmp	.label_1660
.label_2420:
	mov	byte ptr [rbp - 0x80], 0x6e
	mov	rbp, rbp
	jmp	.label_1666
.label_2423:
	mov	byte ptr [rbp - 0x80], 0x72
	mov	rbp, rbp
	jmp	.label_1666
.label_2419:
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x80], 0x74
	jmp	.label_1666
.label_2421:
	mov	byte ptr [rbp - 0x80], 0x76
	jmp	.label_1660
.label_2428:
	mov	al, byte ptr [rbp - 0x7f]
	nop	
	mov	byte ptr [rbp - 0x80], al
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_1668
	lea	rdi, [rdi]
	test	byte ptr [rbp - 0x7b], 1
	nop	
	je	.label_1673
	nop	
	jmp	.label_1542
.label_1673:
	lea	rsi, [rsi]
	jmp	.label_1566
.label_1668:
	test	byte ptr [rbp - 0x79], 1
	je	.label_1681
	mov	rsp, rsp
	test	byte ptr [rbp - 0x7b], 1
	lea	rsi, [rsi]
	je	.label_1681
	nop	
	cmp	qword ptr [rbp - 0x78], 0
	mov	rbp, rbp
	je	.label_1681
	jmp	.label_1566
.label_1681:
	jmp	.label_1666
.label_1666:
	mov	rsp, rsp
	cmp	dword ptr [rbp - 0x34], 2
	lea	rsi, [rsi]
	jne	.label_1686
	test	byte ptr [rbp - 0x7b], 1
	je	.label_1686
	jmp	.label_1542
.label_1686:
	mov	rsp, rsp
	jmp	.label_1660
.label_1660:
	test	byte ptr [rbp - 0x79], 1
	lea	rdi, [rdi]
	je	.label_1697
	mov	rsp, rsp
	mov	al, byte ptr [rbp - 0x80]
	mov	byte ptr [rbp - 0x7f], al
	jmp	.label_1590
.label_1697:
	jmp	.label_1567
.label_2429:
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x30], -1
	jne	.label_1704
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x28]
	nop	
	movsx	ecx, byte ptr [rax + 1]
	cmp	ecx, 0
	lea	rsi, [rsi]
	je	.label_1708
	jmp	.label_1712
.label_1704:
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x30], 1
	je	.label_1708
.label_1712:
	nop	
	jmp	.label_1567
.label_1708:
	jmp	.label_1716
.label_1716:
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x58], 0
	mov	rbp, rbp
	je	.label_1649
	lea	rsi, [rsi]
	jmp	.label_1567
.label_1649:
	nop	
	jmp	.label_1724
.label_1724:
	mov	byte ptr [rbp - 0x83], 1
.label_2424:
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_1705
	test	byte ptr [rbp - 0x7b], 1
	lea	rdi, [rdi]
	je	.label_1705
	jmp	.label_1542
.label_1705:
	lea	rsi, [rsi]
	jmp	.label_1567
.label_2426:
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x7d], 1
	mov	byte ptr [rbp - 0x83], 1
	nop	
	cmp	dword ptr [rbp - 0x34], 2
	lea	rdi, [rdi]
	jne	.label_1530
	test	byte ptr [rbp - 0x7b], 1
	nop	
	je	.label_1540
	jmp	.label_1542
.label_1540:
	cmp	qword ptr [rbp - 0x20], 0
	je	.label_1545
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x68], 0
	lea	rdi, [rdi]
	jne	.label_1545
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x68], rax
	mov	qword ptr [rbp - 0x20], 0
.label_1545:
	jmp	.label_1558
.label_1558:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	jae	.label_1561
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x60]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	mov	byte ptr [rcx + rax], 0x27
.label_1561:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_1569
.label_1569:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	jae	.label_1719
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	mov	byte ptr [rcx + rax], 0x5c
.label_1719:
	mov	rax, qword ptr [rbp - 0x60]
	lea	rdi, [rdi]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	nop	
	jmp	.label_1581
.label_1581:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x60]
	mov	rsp, rsp
	cmp	rax, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	jae	.label_1584
	mov	rax, qword ptr [rbp - 0x60]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_1584:
	mov	rax, qword ptr [rbp - 0x60]
	lea	rdi, [rdi]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	mov	byte ptr [rbp - 0x7c], 0
.label_1530:
	lea	rsi, [rsi]
	jmp	.label_1567
.label_2425:
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x83], 1
	jmp	.label_1567
.label_1604:
	lea	rdi, [rdi]
	test	byte ptr [rbp - 0x7a], 1
	je	.label_1598
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x90], 1
	movzx	eax, byte ptr [rbp - 0x7f]
	movsxd	rcx, eax
	mov	qword ptr [rbp - 0x128], rcx
	call	__ctype_b_loc
	mov	rsp, rsp
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x128]
	movzx	edx, word ptr [rax + rcx*2]
	and	edx, 0x4000
	nop	
	cmp	edx, 0
	lea	rdi, [rdi]
	setne	sil
	and	sil, 1
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x91], sil
	lea	rsi, [rsi]
	jmp	.label_1537
.label_1598:
	xor	esi, esi
	mov	eax, 8
	lea	rdi, [rdi]
	mov	edx, eax
	lea	rcx, [rbp - 0xa0]
	mov	rdi, rcx
	call	memset
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x90], 0
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x91], 1
	cmp	qword ptr [rbp - 0x30], -1
	mov	rsp, rsp
	jne	.label_1621
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x28]
	call	strlen
	mov	qword ptr [rbp - 0x30], rax
.label_1621:
	jmp	.label_1577
.label_1577:
	lea	rdi, [rbp - 0xa4]
	lea	rdi, [rdi]
	lea	rcx, [rbp - 0xa0]
	nop	
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, qword ptr [rbp - 0x90]
	add	rax, qword ptr [rbp - 0x28]
	nop	
	mov	rdx, qword ptr [rbp - 0x30]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x58]
	add	rsi, qword ptr [rbp - 0x90]
	sub	rdx, rsi
	nop	
	mov	rsi, rax
	mov	rsp, rsp
	call	rpl_mbrtowc
	mov	rsp, rsp
	mov	qword ptr [rbp - 0xb0], rax
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0xb0], 0
	mov	rbp, rbp
	jne	.label_1644
	jmp	.label_1646
.label_1644:
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0xb0], -1
	jne	.label_1652
	mov	byte ptr [rbp - 0x91], 0
	jmp	.label_1646
.label_1652:
	nop	
	cmp	qword ptr [rbp - 0xb0], -2
	jne	.label_1656
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x91], 0
.label_1676:
	lea	rdi, [rdi]
	xor	eax, eax
	lea	rdi, [rdi]
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x58]
	add	rdx, qword ptr [rbp - 0x90]
	lea	rsi, [rsi]
	cmp	rdx, qword ptr [rbp - 0x30]
	mov	byte ptr [rbp - 0x129], cl
	mov	rsp, rsp
	jae	.label_1573
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, qword ptr [rbp - 0x90]
	mov	rcx, qword ptr [rbp - 0x28]
	movsx	edx, byte ptr [rcx + rax]
	mov	rbp, rbp
	cmp	edx, 0
	setne	sil
	mov	byte ptr [rbp - 0x129], sil
.label_1573:
	mov	al, byte ptr [rbp - 0x129]
	test	al, 1
	jne	.label_1671
	jmp	.label_1675
.label_1671:
	mov	rax, qword ptr [rbp - 0x90]
	add	rax, 1
	mov	qword ptr [rbp - 0x90], rax
	jmp	.label_1676
.label_1675:
	jmp	.label_1646
.label_1656:
	test	byte ptr [rbp - 0x7b], 1
	je	.label_1538
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x34], 2
	mov	rsp, rsp
	jne	.label_1538
	mov	qword ptr [rbp - 0xb8], 1
.label_1730:
	mov	rax, qword ptr [rbp - 0xb8]
	nop	
	cmp	rax, qword ptr [rbp - 0xb0]
	mov	rsp, rsp
	jae	.label_1685
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rbp - 0x90]
	lea	rdi, [rdi]
	add	rax, rcx
	mov	rcx, qword ptr [rbp - 0xb8]
	add	rax, rcx
	mov	rcx, qword ptr [rbp - 0x28]
	movsx	edx, byte ptr [rcx + rax]
	mov	esi, edx
	mov	rsp, rsp
	add	esi, -0x5b
	sub	esi, 2
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x130], edx
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x134], esi
	jb	.label_1690
	jmp	.label_1709
.label_1709:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x130]
	sub	eax, 0x5e
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x138], eax
	je	.label_1690
	jmp	.label_1714
.label_1714:
	mov	eax, dword ptr [rbp - 0x130]
	sub	eax, 0x60
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x13c], eax
	mov	rsp, rsp
	je	.label_1690
	jmp	.label_1721
.label_1721:
	mov	eax, dword ptr [rbp - 0x130]
	lea	rdi, [rdi]
	sub	eax, 0x7c
	mov	dword ptr [rbp - 0x140], eax
	jne	.label_1723
	mov	rsp, rsp
	jmp	.label_1690
.label_1690:
	mov	rsp, rsp
	jmp	.label_1542
.label_1723:
	jmp	.label_1729
.label_1729:
	mov	rsp, rsp
	jmp	.label_1722
.label_1722:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0xb8]
	add	rax, 1
	mov	qword ptr [rbp - 0xb8], rax
	jmp	.label_1730
.label_1685:
	mov	rbp, rbp
	jmp	.label_1538
.label_1538:
	mov	rbp, rbp
	mov	edi, dword ptr [rbp - 0xa4]
	call	iswprint
	cmp	eax, 0
	jne	.label_1544
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x91], 0
.label_1544:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0xb0]
	mov	rsp, rsp
	add	rax, qword ptr [rbp - 0x90]
	mov	qword ptr [rbp - 0x90], rax
	jmp	.label_1548
.label_1548:
	lea	rsi, [rsi]
	jmp	.label_1560
.label_1560:
	jmp	.label_1562
.label_1562:
	lea	rsi, [rsi]
	lea	rdi, [rbp - 0xa0]
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
	jne	.label_1577
.label_1646:
	jmp	.label_1537
.label_1537:
	mov	rsp, rsp
	mov	eax, 1
	mov	rsp, rsp
	mov	ecx, eax
	mov	dl, byte ptr [rbp - 0x91]
	and	dl, 1
	mov	byte ptr [rbp - 0x83], dl
	cmp	rcx, qword ptr [rbp - 0x90]
	nop	
	jb	.label_1575
	lea	rsi, [rsi]
	test	byte ptr [rbp - 0x79], 1
	lea	rdi, [rdi]
	je	.label_1582
	mov	rsp, rsp
	test	byte ptr [rbp - 0x91], 1
	mov	rsp, rsp
	jne	.label_1582
.label_1575:
	mov	rax, qword ptr [rbp - 0x58]
	mov	rbp, rbp
	add	rax, qword ptr [rbp - 0x90]
	nop	
	mov	qword ptr [rbp - 0xc0], rax
.label_1550:
	mov	rbp, rbp
	test	byte ptr [rbp - 0x79], 1
	nop	
	je	.label_1589
	mov	rsp, rsp
	test	byte ptr [rbp - 0x91], 1
	jne	.label_1589
	jmp	.label_1594
.label_1594:
	test	byte ptr [rbp - 0x7b], 1
	lea	rsi, [rsi]
	je	.label_1596
	jmp	.label_1542
.label_1596:
	mov	byte ptr [rbp - 0x82], 1
	nop	
	cmp	dword ptr [rbp - 0x34], 2
	lea	rdi, [rdi]
	jne	.label_1600
	test	byte ptr [rbp - 0x7c], 1
	jne	.label_1600
	lea	rdi, [rdi]
	jmp	.label_1605
.label_1605:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x60]
	mov	rbp, rbp
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_1609
	mov	rax, qword ptr [rbp - 0x60]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_1609:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x60]
	lea	rsi, [rsi]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	lea	rsi, [rsi]
	jmp	.label_1613
.label_1613:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x60]
	mov	rbp, rbp
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_1617
	mov	rax, qword ptr [rbp - 0x60]
	nop	
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x24
.label_1617:
	mov	rax, qword ptr [rbp - 0x60]
	nop	
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	nop	
	jmp	.label_1628
.label_1628:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_1677
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x60]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_1677:
	mov	rax, qword ptr [rbp - 0x60]
	mov	rsp, rsp
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	mov	byte ptr [rbp - 0x7c], 1
.label_1600:
	jmp	.label_1636
.label_1636:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	jae	.label_1638
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	mov	byte ptr [rcx + rax], 0x5c
.label_1638:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_1645
.label_1645:
	jmp	.label_1648
.label_1648:
	mov	rax, qword ptr [rbp - 0x60]
	nop	
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_1622
	nop	
	movzx	eax, byte ptr [rbp - 0x7f]
	nop	
	sar	eax, 6
	mov	rsp, rsp
	add	eax, 0x30
	mov	cl, al
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x60]
	mov	rsi, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	mov	byte ptr [rsi + rdx], cl
.label_1622:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x60]
	mov	rbp, rbp
	add	rax, 1
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x60], rax
	lea	rsi, [rsi]
	jmp	.label_1672
.label_1672:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	nop	
	jae	.label_1710
	mov	rsp, rsp
	movzx	eax, byte ptr [rbp - 0x7f]
	mov	rbp, rbp
	sar	eax, 3
	lea	rsi, [rsi]
	and	eax, 7
	add	eax, 0x30
	lea	rsi, [rsi]
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x60]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	byte ptr [rsi + rdx], cl
.label_1710:
	mov	rax, qword ptr [rbp - 0x60]
	mov	rsp, rsp
	add	rax, 1
	nop	
	mov	qword ptr [rbp - 0x60], rax
	movzx	eax, byte ptr [rbp - 0x7f]
	lea	rsi, [rsi]
	and	eax, 7
	lea	rdi, [rdi]
	add	eax, 0x30
	mov	cl, al
	mov	byte ptr [rbp - 0x7f], cl
	jmp	.label_1669
.label_1589:
	test	byte ptr [rbp - 0x81], 1
	lea	rsi, [rsi]
	je	.label_1680
	lea	rdi, [rdi]
	jmp	.label_1682
.label_1682:
	nop	
	mov	rax, qword ptr [rbp - 0x60]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	jae	.label_1683
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x5c
.label_1683:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x60], rax
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x81], 0
.label_1680:
	nop	
	jmp	.label_1669
.label_1669:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0xc0]
	mov	rcx, qword ptr [rbp - 0x58]
	add	rcx, 1
	cmp	rax, rcx
	mov	rsp, rsp
	ja	.label_1695
	jmp	.label_1702
.label_1695:
	lea	rsi, [rsi]
	jmp	.label_1703
.label_1703:
	test	byte ptr [rbp - 0x7c], 1
	je	.label_1706
	lea	rsi, [rsi]
	test	byte ptr [rbp - 0x82], 1
	jne	.label_1706
	lea	rsi, [rsi]
	jmp	.label_1711
.label_1711:
	mov	rax, qword ptr [rbp - 0x60]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_1713
	nop	
	mov	rax, qword ptr [rbp - 0x60]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x18]
	nop	
	mov	byte ptr [rcx + rax], 0x27
.label_1713:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x60]
	mov	rsp, rsp
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	lea	rsi, [rsi]
	jmp	.label_1717
.label_1717:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	jae	.label_1564
	mov	rax, qword ptr [rbp - 0x60]
	nop	
	mov	rcx, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	mov	byte ptr [rcx + rax], 0x27
.label_1564:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x60], rax
	mov	byte ptr [rbp - 0x7c], 0
.label_1706:
	nop	
	jmp	.label_1533
.label_1533:
	mov	rsp, rsp
	jmp	.label_1535
.label_1535:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	jae	.label_1539
	lea	rdi, [rdi]
	mov	al, byte ptr [rbp - 0x7f]
	mov	rcx, qword ptr [rbp - 0x60]
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	mov	byte ptr [rdx + rcx], al
.label_1539:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, rax
	lea	rdi, [rdi]
	add	rcx, 1
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x58], rcx
	mov	rcx, qword ptr [rbp - 0x28]
	mov	dl, byte ptr [rcx + rax + 1]
	nop	
	mov	byte ptr [rbp - 0x7f], dl
	jmp	.label_1550
.label_1702:
	mov	rsp, rsp
	jmp	.label_1566
.label_1582:
	lea	rsi, [rsi]
	jmp	.label_1567
.label_1567:
	test	byte ptr [rbp - 0x79], 1
	mov	rbp, rbp
	je	.label_1570
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_1574
.label_1570:
	test	byte ptr [rbp - 0x7b], 1
	je	.label_1576
.label_1574:
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x40], 0
	nop	
	je	.label_1576
	movzx	eax, byte ptr [rbp - 0x7f]
	lea	rsi, [rsi]
	mov	ecx, eax
	shr	rcx, 5
	mov	rdx, qword ptr [rbp - 0x40]
	mov	eax, dword ptr [rdx + rcx*4]
	nop	
	movzx	esi, byte ptr [rbp - 0x7f]
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
	jne	.label_1579
.label_1576:
	lea	rdi, [rdi]
	test	byte ptr [rbp - 0x81], 1
	lea	rdi, [rdi]
	jne	.label_1579
	mov	rsp, rsp
	jmp	.label_1566
.label_1579:
	nop	
	jmp	.label_1590
.label_1590:
	jmp	.label_1592
.label_1592:
	test	byte ptr [rbp - 0x7b], 1
	mov	rbp, rbp
	je	.label_1593
	jmp	.label_1542
.label_1593:
	mov	byte ptr [rbp - 0x82], 1
	cmp	dword ptr [rbp - 0x34], 2
	lea	rdi, [rdi]
	jne	.label_1602
	test	byte ptr [rbp - 0x7c], 1
	lea	rdi, [rdi]
	jne	.label_1602
	lea	rdi, [rdi]
	jmp	.label_1603
.label_1603:
	nop	
	mov	rax, qword ptr [rbp - 0x60]
	mov	rsp, rsp
	cmp	rax, qword ptr [rbp - 0x20]
	nop	
	jae	.label_1606
	mov	rax, qword ptr [rbp - 0x60]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x18]
	nop	
	mov	byte ptr [rcx + rax], 0x27
.label_1606:
	mov	rax, qword ptr [rbp - 0x60]
	lea	rdi, [rdi]
	add	rax, 1
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x60], rax
	lea	rdi, [rdi]
	jmp	.label_1612
.label_1612:
	mov	rax, qword ptr [rbp - 0x60]
	lea	rdi, [rdi]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_1616
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	mov	byte ptr [rcx + rax], 0x24
.label_1616:
	nop	
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x60], rax
	lea	rdi, [rdi]
	jmp	.label_1625
.label_1625:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	nop	
	jae	.label_1629
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	mov	byte ptr [rcx + rax], 0x27
.label_1629:
	mov	rax, qword ptr [rbp - 0x60]
	lea	rdi, [rdi]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	mov	byte ptr [rbp - 0x7c], 1
.label_1602:
	jmp	.label_1637
.label_1637:
	nop	
	mov	rax, qword ptr [rbp - 0x60]
	mov	rsp, rsp
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_1639
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	nop	
	mov	byte ptr [rcx + rax], 0x5c
.label_1639:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x60]
	lea	rdi, [rdi]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_1591
.label_1591:
	nop	
	jmp	.label_1566
.label_1566:
	jmp	.label_1651
.label_1651:
	lea	rdi, [rdi]
	test	byte ptr [rbp - 0x7c], 1
	je	.label_1653
	test	byte ptr [rbp - 0x82], 1
	jne	.label_1653
	lea	rdi, [rdi]
	jmp	.label_1662
.label_1662:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_1658
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x60]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_1658:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x60]
	mov	rbp, rbp
	add	rax, 1
	nop	
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_1664
.label_1664:
	mov	rax, qword ptr [rbp - 0x60]
	nop	
	cmp	rax, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	jae	.label_1631
	mov	rax, qword ptr [rbp - 0x60]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	mov	byte ptr [rcx + rax], 0x27
.label_1631:
	mov	rax, qword ptr [rbp - 0x60]
	lea	rdi, [rdi]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	mov	byte ptr [rbp - 0x7c], 0
.label_1653:
	jmp	.label_1608
.label_1608:
	nop	
	jmp	.label_1611
.label_1611:
	mov	rax, qword ptr [rbp - 0x60]
	mov	rsp, rsp
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_1679
	mov	al, byte ptr [rbp - 0x7f]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x60]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	mov	byte ptr [rdx + rcx], al
.label_1679:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	lea	rsi, [rsi]
	test	byte ptr [rbp - 0x83], 1
	jne	.label_1684
	mov	byte ptr [rbp - 0x7e], 0
.label_1684:
	mov	rbp, rbp
	jmp	.label_1689
.label_1689:
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, 1
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x58], rax
	jmp	.label_1699
.label_1551:
	cmp	qword ptr [rbp - 0x60], 0
	mov	rbp, rbp
	jne	.label_1698
	cmp	dword ptr [rbp - 0x34], 2
	nop	
	jne	.label_1698
	mov	rbp, rbp
	test	byte ptr [rbp - 0x7b], 1
	lea	rdi, [rdi]
	je	.label_1698
	nop	
	jmp	.label_1542
.label_1698:
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_1556
	lea	rdi, [rdi]
	test	byte ptr [rbp - 0x7b], 1
	lea	rsi, [rsi]
	jne	.label_1556
	lea	rsi, [rsi]
	test	byte ptr [rbp - 0x7d], 1
	je	.label_1556
	test	byte ptr [rbp - 0x7e], 1
	je	.label_1715
	mov	r8d, 5
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rbp - 0x68]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x30]
	mov	rbp, rbp
	mov	r9d, dword ptr [rbp - 0x38]
	mov	rax, qword ptr [rbp - 0x40]
	mov	rsp, rsp
	mov	r10, qword ptr [rbp - 0x48]
	mov	r11, qword ptr [rbp - 0x50]
	lea	rsi, [rsi]
	mov	qword ptr [rsp], rax
	mov	qword ptr [rsp + 8], r10
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x10], r11
	mov	rbp, rbp
	call	quotearg_buffer_restyled
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x10], rax
	nop	
	jmp	.label_1532
.label_1715:
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x20], 0
	lea	rsi, [rsi]
	jne	.label_1536
	cmp	qword ptr [rbp - 0x68], 0
	lea	rsi, [rsi]
	je	.label_1536
	nop	
	mov	rax, qword ptr [rbp - 0x68]
	mov	qword ptr [rbp - 0x20], rax
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x60], 0
	jmp	.label_1547
.label_1536:
	jmp	.label_1554
.label_1554:
	mov	rbp, rbp
	jmp	.label_1556
.label_1556:
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x70], 0
	je	.label_1557
	lea	rsi, [rsi]
	test	byte ptr [rbp - 0x7b], 1
	jne	.label_1557
	mov	rbp, rbp
	jmp	.label_1563
.label_1563:
	mov	rax, qword ptr [rbp - 0x70]
	cmp	byte ptr [rax], 0
	je	.label_1565
	lea	rdi, [rdi]
	jmp	.label_1568
.label_1568:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	jae	.label_1571
	mov	rax, qword ptr [rbp - 0x70]
	lea	rsi, [rsi]
	mov	cl, byte ptr [rax]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x60]
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	mov	byte ptr [rdx + rax], cl
.label_1571:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	lea	rdi, [rdi]
	jmp	.label_1580
.label_1580:
	mov	rax, qword ptr [rbp - 0x70]
	lea	rdi, [rdi]
	add	rax, 1
	mov	qword ptr [rbp - 0x70], rax
	jmp	.label_1563
.label_1565:
	jmp	.label_1557
.label_1557:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x60]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_1586
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x60]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0
.label_1586:
	mov	rax, qword ptr [rbp - 0x60]
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_1532
.label_1542:
	nop	
	cmp	dword ptr [rbp - 0x34], 2
	mov	rsp, rsp
	jne	.label_1599
	mov	rsp, rsp
	test	byte ptr [rbp - 0x79], 1
	mov	rsp, rsp
	je	.label_1599
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x34], 4
.label_1599:
	mov	rbp, rbp
	xor	eax, eax
	mov	ecx, eax
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rbp - 0x20]
	mov	rdx, qword ptr [rbp - 0x28]
	mov	r8, qword ptr [rbp - 0x30]
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x34]
	nop	
	mov	r9d, dword ptr [rbp - 0x38]
	and	r9d, 0xfffffffd
	lea	rsi, [rsi]
	mov	r10, qword ptr [rbp - 0x48]
	mov	r11, qword ptr [rbp - 0x50]
	mov	qword ptr [rbp - 0x148], rcx
	mov	rcx, r8
	lea	rdi, [rdi]
	mov	r8d, eax
	mov	qword ptr [rsp], 0
	mov	rsp, rsp
	mov	qword ptr [rsp + 8], r10
	mov	qword ptr [rsp + 0x10], r11
	call	quotearg_buffer_restyled
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x10], rax
.label_1532:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	add	rsp, 0x158
	pop	rbx
	pop	rbp
	nop	
	ret	
	.section	.text
	.align	16
	#Procedure 0x41b1c0
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
	mov	qword ptr [rbp - 8], rdi
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x10], rsi
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x18], rdx
	mov	rdi, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x18]
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
	.align	16
	#Procedure 0x41b230

	.globl quotearg_alloc_mem
	.type quotearg_alloc_mem, @function
quotearg_alloc_mem:
	mov	rbp, rbp
	push	rbp
	mov	rbp, rsp
	push	rbx
	sub	rsp, 0x78
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], rdx
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x28], rcx
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0x28], 0
	mov	rsp, rsp
	je	.label_1731
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x50], rax
	mov	rsp, rsp
	jmp	.label_1732
.label_1731:
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 0x50], rax
	lea	rsi, [rsi]
	jmp	.label_1732
.label_1732:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x50]
	mov	qword ptr [rbp - 0x30], rax
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
	mov	dword ptr [rbp - 0x34], edi
	mov	rax, qword ptr [rbp - 0x30]
	mov	edi, dword ptr [rax + 4]
	cmp	qword ptr [rbp - 0x20], 0
	nop	
	cmovne	ecx, esi
	or	edi, ecx
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x38], edi
	mov	rax, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x18]
	mov	r8, qword ptr [rbp - 0x30]
	mov	r8d, dword ptr [r8]
	lea	rsi, [rsi]
	mov	r9d, dword ptr [rbp - 0x38]
	lea	rdi, [rdi]
	mov	r10, qword ptr [rbp - 0x30]
	lea	rdi, [rdi]
	add	r10, 8
	mov	r11, qword ptr [rbp - 0x30]
	lea	rsi, [rsi]
	mov	r11, qword ptr [r11 + 0x28]
	mov	rbx, qword ptr [rbp - 0x30]
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
	mov	qword ptr [rbp - 0x40], rax
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x40]
	call	xcharalloc
	mov	qword ptr [rbp - 0x48], rax
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x48]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x40]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rbp - 0x30]
	mov	r8d, dword ptr [rax]
	mov	r9d, dword ptr [rbp - 0x38]
	mov	rax, qword ptr [rbp - 0x30]
	mov	rsp, rsp
	add	rax, 8
	mov	r10, qword ptr [rbp - 0x30]
	mov	r10, qword ptr [r10 + 0x28]
	mov	r11, qword ptr [rbp - 0x30]
	mov	r11, qword ptr [r11 + 0x30]
	mov	qword ptr [rsp], rax
	mov	qword ptr [rsp + 8], r10
	mov	qword ptr [rsp + 0x10], r11
	lea	rdi, [rdi]
	call	quotearg_buffer_restyled
	lea	rsi, [rsi]
	mov	r8d, dword ptr [rbp - 0x34]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x58], rax
	mov	dword ptr [rbp - 0x5c], r8d
	nop	
	call	__errno_location
	nop	
	mov	r8d, dword ptr [rbp - 0x5c]
	nop	
	mov	dword ptr [rax], r8d
	nop	
	cmp	qword ptr [rbp - 0x20], 0
	je	.label_1733
	mov	rax, qword ptr [rbp - 0x40]
	sub	rax, 1
	nop	
	mov	rcx, qword ptr [rbp - 0x20]
	mov	qword ptr [rcx], rax
.label_1733:
	mov	rax, qword ptr [rbp - 0x48]
	mov	rbp, rbp
	add	rsp, 0x78
	nop	
	pop	rbx
	lea	rsi, [rsi]
	pop	rbp
	lea	rsi, [rsi]
	ret	
	.section	.text
	.align	16
	#Procedure 0x41b400
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
.label_1738:
	mov	eax, dword ptr [rbp - 0xc]
	cmp	eax,  dword ptr [dword ptr [nslots]]
	jge	.label_1737
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
	jmp	.label_1738
.label_1737:
	lea	rdi, [rdi]
	movabs	rax, OFFSET FLAT:slot0
	mov	rcx, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	cmp	qword ptr [rcx + 8], rax
	mov	rsp, rsp
	je	.label_1736
	mov	rax, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rax + 8]
	call	free
	movabs	rax, OFFSET FLAT:slot0
	mov	qword ptr [word ptr [slotvec0]],  0x100
	mov	rbp, rbp
	mov	qword ptr [word ptr [label_1734]],  rax
.label_1736:
	movabs	rax, OFFSET FLAT:slotvec0
	cmp	qword ptr [rbp - 8], rax
	je	.label_1735
	nop	
	mov	rax, qword ptr [rbp - 8]
	mov	rdi, rax
	mov	rsp, rsp
	call	free
	mov	rbp, rbp
	movabs	rax, OFFSET FLAT:slotvec0
	mov	qword ptr [word ptr [slotvec]],  rax
.label_1735:
	mov	dword ptr [dword ptr [nslots]],  1
	add	rsp, 0x10
	mov	rbp, rbp
	pop	rbp
	mov	rsp, rsp
	ret	
	.section	.text
	.align	16
	#Procedure 0x41b510

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
	mov	dword ptr [rbp - 4], edi
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x10], rsi
	mov	edi, dword ptr [rbp - 4]
	mov	rsi, qword ptr [rbp - 0x10]
	call	quotearg_n_options
	add	rsp, 0x10
	mov	rsp, rsp
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x41b560

	.globl quotearg_n_options
	.type quotearg_n_options, @function
quotearg_n_options:
	nop	
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x90
	mov	dword ptr [rbp - 4], edi
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x20], rcx
	nop	
	call	__errno_location
	mov	edi, dword ptr [rax]
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x24], edi
	mov	rax,  qword ptr [word ptr [slotvec]]
	mov	qword ptr [rbp - 0x30], rax
	cmp	dword ptr [rbp - 4], 0
	jge	.label_1740
	call	abort
.label_1740:
	mov	rbp, rbp
	mov	eax,  dword ptr [dword ptr [nslots]]
	cmp	eax, dword ptr [rbp - 4]
	jg	.label_1743
	lea	rdi, [rdi]
	movabs	rax, OFFSET FLAT:slotvec0
	cmp	qword ptr [rbp - 0x30], rax
	lea	rdi, [rdi]
	sete	cl
	mov	rbp, rbp
	and	cl, 1
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x31], cl
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x38], 0x7ffffffe
	mov	edx, dword ptr [rbp - 0x38]
	cmp	edx, dword ptr [rbp - 4]
	mov	rsp, rsp
	jge	.label_1744
	call	xalloc_die
.label_1744:
	test	byte ptr [rbp - 0x31], 1
	je	.label_1745
	mov	rsp, rsp
	xor	eax, eax
	mov	rbp, rbp
	mov	ecx, eax
	mov	qword ptr [rbp - 0x60], rcx
	jmp	.label_1741
.label_1745:
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x60], rax
.label_1741:
	mov	rax, qword ptr [rbp - 0x60]
	mov	ecx, dword ptr [rbp - 4]
	add	ecx, 1
	movsxd	rdx, ecx
	shl	rdx, 4
	mov	rsp, rsp
	mov	rdi, rax
	mov	rsi, rdx
	call	xrealloc
	mov	qword ptr [rbp - 0x30], rax
	mov	qword ptr [word ptr [slotvec]],  rax
	test	byte ptr [rbp - 0x31], 1
	lea	rdi, [rdi]
	je	.label_1739
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx,  qword ptr [word ptr [slotvec0]]
	mov	qword ptr [rax], rcx
	mov	rcx,  qword ptr [word ptr [label_1734]]
	mov	rbp, rbp
	mov	qword ptr [rax + 8], rcx
.label_1739:
	xor	esi, esi
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x30]
	mov	rsp, rsp
	movsxd	rcx,  dword ptr [dword ptr [nslots]]
	mov	rsp, rsp
	shl	rcx, 4
	add	rax, rcx
	mov	edx, dword ptr [rbp - 4]
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
	mov	esi, dword ptr [rbp - 4]
	add	esi, 1
	mov	dword ptr [dword ptr [nslots]],  esi
.label_1743:
	movsxd	rax, dword ptr [rbp - 4]
	lea	rsi, [rsi]
	shl	rax, 4
	lea	rsi, [rsi]
	add	rax, qword ptr [rbp - 0x30]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0x40], rax
	nop	
	movsxd	rax, dword ptr [rbp - 4]
	lea	rdi, [rdi]
	shl	rax, 4
	lea	rdi, [rdi]
	add	rax, qword ptr [rbp - 0x30]
	nop	
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x48], rax
	mov	rax, qword ptr [rbp - 0x20]
	nop	
	mov	ecx, dword ptr [rax + 4]
	lea	rsi, [rsi]
	or	ecx, 1
	mov	dword ptr [rbp - 0x4c], ecx
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x48]
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x40]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	mov	r8d, dword ptr [rax]
	mov	rbp, rbp
	mov	r9d, dword ptr [rbp - 0x4c]
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x20]
	add	rax, 8
	nop	
	mov	r10, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	mov	r10, qword ptr [r10 + 0x28]
	lea	rdi, [rdi]
	mov	r11, qword ptr [rbp - 0x20]
	nop	
	mov	r11, qword ptr [r11 + 0x30]
	mov	qword ptr [rsp], rax
	mov	rsp, rsp
	mov	qword ptr [rsp + 8], r10
	mov	qword ptr [rsp + 0x10], r11
	lea	rdi, [rdi]
	call	quotearg_buffer_restyled
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x58], rax
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x40]
	lea	rdi, [rdi]
	cmp	rax, qword ptr [rbp - 0x58]
	lea	rsi, [rsi]
	ja	.label_1746
	lea	rdi, [rdi]
	movabs	rax, OFFSET FLAT:slot0
	mov	rcx, qword ptr [rbp - 0x58]
	lea	rdi, [rdi]
	add	rcx, 1
	mov	qword ptr [rbp - 0x40], rcx
	lea	rsi, [rsi]
	movsxd	rdx, dword ptr [rbp - 4]
	shl	rdx, 4
	add	rdx, qword ptr [rbp - 0x30]
	mov	qword ptr [rdx], rcx
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x48], rax
	mov	rbp, rbp
	je	.label_1742
	mov	rdi, qword ptr [rbp - 0x48]
	lea	rsi, [rsi]
	call	free
.label_1742:
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x40]
	call	xcharalloc
	mov	qword ptr [rbp - 0x48], rax
	lea	rdi, [rdi]
	movsxd	rdi, dword ptr [rbp - 4]
	lea	rdi, [rdi]
	shl	rdi, 4
	add	rdi, qword ptr [rbp - 0x30]
	lea	rdi, [rdi]
	mov	qword ptr [rdi + 8], rax
	mov	rdi, qword ptr [rbp - 0x48]
	mov	rsi, qword ptr [rbp - 0x40]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rbp - 0x20]
	mov	r8d, dword ptr [rax]
	mov	r9d, dword ptr [rbp - 0x4c]
	mov	rax, qword ptr [rbp - 0x20]
	add	rax, 8
	mov	r10, qword ptr [rbp - 0x20]
	mov	r10, qword ptr [r10 + 0x28]
	mov	r11, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	mov	r11, qword ptr [r11 + 0x30]
	nop	
	mov	qword ptr [rsp], rax
	mov	qword ptr [rsp + 8], r10
	mov	qword ptr [rsp + 0x10], r11
	mov	rsp, rsp
	call	quotearg_buffer_restyled
	mov	qword ptr [rbp - 0x68], rax
.label_1746:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x24]
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x6c], eax
	mov	rbp, rbp
	call	__errno_location
	mov	ecx, dword ptr [rbp - 0x6c]
	mov	dword ptr [rax], ecx
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x48]
	add	rsp, 0x90
	nop	
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x41b890

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
	mov	dword ptr [rbp - 4], edi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	edi, dword ptr [rbp - 4]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x18]
	call	quotearg_n_options
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x41b8d0
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
	.align	16
	#Procedure 0x41b900
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
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x10]
	mov	edi, eax
	mov	rsp, rsp
	call	quotearg_n_mem
	add	rsp, 0x10
	nop	
	pop	rbp
	lea	rdi, [rdi]
	ret	
	.section	.text
	.align	16
	#Procedure 0x41b940

	.globl quotearg_n_style
	.type quotearg_n_style, @function
quotearg_n_style:
	nop	
	push	rbp
	mov	rbp, rbp
	mov	rbp, rsp
	lea	rdi, [rdi]
	sub	rsp, 0x50
	lea	rax, [rbp - 0x48]
	mov	rsp, rsp
	mov	dword ptr [rbp - 4], edi
	mov	dword ptr [rbp - 8], esi
	nop	
	mov	qword ptr [rbp - 0x10], rdx
	lea	rdi, [rdi]
	mov	esi, dword ptr [rbp - 8]
	mov	rdi, rax
	call	quoting_options_from_style
	mov	rdx, -1
	lea	rcx, [rbp - 0x48]
	mov	edi, dword ptr [rbp - 4]
	mov	rsi, qword ptr [rbp - 0x10]
	call	quotearg_n_options
	lea	rdi, [rdi]
	add	rsp, 0x50
	lea	rdi, [rdi]
	pop	rbp
	lea	rsi, [rsi]
	ret	
	.section	.text
	.align	16
	#Procedure 0x41b9a0

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
	mov	dword ptr [rbp - 4], esi
	mov	qword ptr [rbp - 0x48], rdi
	nop	
	mov	rdi, r8
	mov	esi, ecx
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x50], rax
	call	memset
	nop	
	cmp	dword ptr [rbp - 4], 0xa
	jne	.label_1747
	call	abort
.label_1747:
	lea	rsi, [rsi]
	mov	eax, 0x38
	lea	rdi, [rdi]
	mov	edx, eax
	lea	rcx, [rbp - 0x40]
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 4]
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x40], eax
	nop	
	mov	rsi, qword ptr [rbp - 0x48]
	mov	rdi, rsi
	lea	rsi, [rsi]
	mov	rsi, rcx
	lea	rdi, [rdi]
	call	memcpy
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x50]
	mov	rbp, rbp
	add	rsp, 0x50
	mov	rsp, rsp
	pop	rbp
	lea	rsi, [rsi]
	ret	
	.section	.text
	.align	16
	#Procedure 0x41ba40

	.globl quotearg_n_style_mem
	.type quotearg_n_style_mem, @function
quotearg_n_style_mem:
	mov	rbp, rbp
	push	rbp
	lea	rsi, [rsi]
	mov	rbp, rsp
	sub	rsp, 0x50
	mov	rsp, rsp
	lea	rax, [rbp - 0x50]
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 4], edi
	nop	
	mov	dword ptr [rbp - 8], esi
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x10], rdx
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x18], rcx
	lea	rsi, [rsi]
	mov	esi, dword ptr [rbp - 8]
	nop	
	mov	rdi, rax
	call	quoting_options_from_style
	lea	rcx, [rbp - 0x50]
	nop	
	mov	edi, dword ptr [rbp - 4]
	nop	
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x18]
	call	quotearg_n_options
	mov	rsp, rsp
	add	rsp, 0x50
	mov	rsp, rsp
	pop	rbp
	mov	rbp, rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x41bab0

	.globl quotearg_style
	.type quotearg_style, @function
quotearg_style:
	push	rbp
	mov	rbp, rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	xor	eax, eax
	mov	rbp, rbp
	mov	dword ptr [rbp - 4], edi
	mov	qword ptr [rbp - 0x10], rsi
	mov	esi, dword ptr [rbp - 4]
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x10]
	mov	edi, eax
	mov	rbp, rbp
	call	quotearg_n_style
	nop	
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x41baf0
	.globl quotearg_style_mem
	.type quotearg_style_mem, @function
quotearg_style_mem:

	push	rbp
	mov	rbp, rsp
	lea	rsi, [rsi]
	sub	rsp, 0x20
	xor	eax, eax
	mov	dword ptr [rbp - 4], edi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	esi, dword ptr [rbp - 4]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	edi, eax
	call	quotearg_n_style_mem
	add	rsp, 0x20
	mov	rsp, rsp
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x41bb30

	.globl quotearg_char_mem
	.type quotearg_char_mem, @function
quotearg_char_mem:
	push	rbp
	mov	rbp, rsp
	mov	rbp, rbp
	sub	rsp, 0x70
	mov	rbp, rbp
	mov	al, dl
	lea	rcx, [rbp - 0x50]
	lea	rdi, [rdi]
	mov	edx, 1
	movabs	r8, OFFSET FLAT:default_quoting_options
	mov	r9d, 0x38
	mov	r10d, r9d
	nop	
	mov	qword ptr [rbp - 8], rdi
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x10], rsi
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x11], al
	lea	rsi, [rsi]
	mov	rsi, rcx
	nop	
	mov	rdi, rsi
	mov	rsi, r8
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x54], edx
	lea	rsi, [rsi]
	mov	rdx, r10
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x60], rcx
	call	memcpy
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x60]
	lea	rsi, [rsi]
	movsx	esi, byte ptr [rbp - 0x11]
	mov	edx, dword ptr [rbp - 0x54]
	nop	
	call	set_char_quoting
	mov	rsp, rsp
	xor	edi, edi
	lea	rcx, [rbp - 0x50]
	nop	
	mov	rsi, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x10]
	nop	
	mov	dword ptr [rbp - 0x64], eax
	nop	
	call	quotearg_n_options
	lea	rsi, [rsi]
	add	rsp, 0x70
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x41bbe0

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
	.align	16
	#Procedure 0x41bc20

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
	.align	16
	#Procedure 0x41bc50
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
	.align	16
	#Procedure 0x41bc90

	.globl quotearg_n_style_colon
	.type quotearg_n_style_colon, @function
quotearg_n_style_colon:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0xa0
	lea	rax, [rbp - 0x80]
	mov	dword ptr [rbp - 4], edi
	mov	dword ptr [rbp - 8], esi
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x10], rdx
	mov	esi, dword ptr [rbp - 8]
	mov	rbp, rbp
	mov	rdi, rax
	nop	
	call	quoting_options_from_style
	lea	rdi, [rdi]
	lea	rax, [rbp - 0x48]
	mov	rsp, rsp
	mov	esi, 0x3a
	mov	rbp, rbp
	mov	edx, 1
	mov	ecx, 0x38
	mov	edi, ecx
	lea	rsi, [rsi]
	lea	r8, [rbp - 0x80]
	mov	r9, rax
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x88], rdi
	mov	rsp, rsp
	mov	rdi, r9
	nop	
	mov	dword ptr [rbp - 0x8c], esi
	mov	rsi, r8
	mov	r8, qword ptr [rbp - 0x88]
	mov	dword ptr [rbp - 0x90], edx
	nop	
	mov	rdx, r8
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x98], rax
	call	memcpy
	mov	rdi, qword ptr [rbp - 0x98]
	mov	esi, dword ptr [rbp - 0x8c]
	mov	edx, dword ptr [rbp - 0x90]
	lea	rsi, [rsi]
	call	set_char_quoting
	mov	rdx, -1
	mov	rsp, rsp
	lea	rcx, [rbp - 0x48]
	mov	rsp, rsp
	mov	edi, dword ptr [rbp - 4]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x9c], eax
	call	quotearg_n_options
	lea	rsi, [rsi]
	add	rsp, 0xa0
	lea	rdi, [rdi]
	pop	rbp
	mov	rbp, rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x41bd80

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
	mov	dword ptr [rbp - 4], edi
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x20], rcx
	mov	edi, dword ptr [rbp - 4]
	nop	
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	call	quotearg_n_custom_mem
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x41bdd0

	.globl quotearg_n_custom_mem
	.type quotearg_n_custom_mem, @function
quotearg_n_custom_mem:
	mov	rsp, rsp
	push	rbp
	lea	rdi, [rdi]
	mov	rbp, rsp
	sub	rsp, 0x70
	lea	rax, [rbp - 0x60]
	lea	rsi, [rsi]
	movabs	r9, OFFSET FLAT:default_quoting_options
	nop	
	mov	r10d, 0x38
	mov	rbp, rbp
	mov	r11d, r10d
	mov	dword ptr [rbp - 4], edi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	qword ptr [rbp - 0x20], rcx
	mov	qword ptr [rbp - 0x28], r8
	mov	rcx, rax
	mov	rdi, rcx
	mov	rbp, rbp
	mov	rsi, r9
	mov	rbp, rbp
	mov	rdx, r11
	mov	qword ptr [rbp - 0x68], rax
	call	memcpy
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x18]
	nop	
	mov	rdi, qword ptr [rbp - 0x68]
	mov	rbp, rbp
	call	set_custom_quoting
	lea	rcx, [rbp - 0x60]
	mov	rsp, rsp
	mov	edi, dword ptr [rbp - 4]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x20]
	mov	rdx, qword ptr [rbp - 0x28]
	call	quotearg_n_options
	add	rsp, 0x70
	mov	rsp, rsp
	pop	rbp
	nop	
	ret	
	.section	.text
	.align	16
	#Procedure 0x41be70
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
	mov	qword ptr [rbp - 0x10], rsi
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x18], rdx
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 8]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	mov	edi, eax
	lea	rdi, [rdi]
	call	quotearg_n_custom
	add	rsp, 0x20
	mov	rbp, rbp
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x41bec0
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
	mov	qword ptr [rbp - 8], rdi
	nop	
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x18], rdx
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x20], rcx
	mov	rsi, qword ptr [rbp - 8]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	mov	r8, qword ptr [rbp - 0x20]
	mov	edi, eax
	call	quotearg_n_custom_mem
	mov	rbp, rbp
	add	rsp, 0x20
	pop	rbp
	lea	rsi, [rsi]
	ret	
	.section	.text
	.align	16
	#Procedure 0x41bf20

	.globl quote_n_mem
	.type quote_n_mem, @function
quote_n_mem:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	movabs	rcx, OFFSET FLAT:quote_quoting_options
	mov	dword ptr [rbp - 4], edi
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	edi, dword ptr [rbp - 4]
	nop	
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x18]
	call	quotearg_n_options
	lea	rdi, [rdi]
	add	rsp, 0x20
	mov	rbp, rbp
	pop	rbp
	nop	
	ret	
	.section	.text
	.align	16
	#Procedure 0x41bf60
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
	.align	16
	#Procedure 0x41bfa0

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
	.align	16
	#Procedure 0x41bfe0

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
	.align	16
	#Procedure 0x41c020

	.globl gettext_quote
	.type gettext_quote, @function
gettext_quote:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	nop	
	mov	qword ptr [rbp - 0x10], rdi
	mov	dword ptr [rbp - 0x14], esi
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	call	gettext
	mov	qword ptr [rbp - 0x20], rax
	mov	rax, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	cmp	rax, qword ptr [rbp - 0x10]
	je	.label_1751
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	mov	qword ptr [rbp - 8], rax
	jmp	.label_1749
.label_1751:
	call	locale_charset
	mov	rsp, rsp
	movabs	rsi, OFFSET FLAT:.str.13_0
	nop	
	mov	qword ptr [rbp - 0x28], rax
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	call	c_strcasecmp
	cmp	eax, 0
	jne	.label_1750
	movabs	rax, OFFSET FLAT:.str.15_0
	movabs	rcx, OFFSET FLAT:.str.14_0
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	movsx	esi, byte ptr [rdx]
	cmp	esi, 0x60
	cmove	rax, rcx
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_1749
.label_1750:
	nop	
	movabs	rsi, OFFSET FLAT:.str.16_0
	mov	rdi, qword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	call	c_strcasecmp
	cmp	eax, 0
	lea	rdi, [rdi]
	jne	.label_1748
	nop	
	movabs	rax, OFFSET FLAT:.str.18_1
	movabs	rcx, OFFSET FLAT:.str.17_1
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	movsx	esi, byte ptr [rdx]
	cmp	esi, 0x60
	cmove	rax, rcx
	mov	qword ptr [rbp - 8], rax
	mov	rbp, rbp
	jmp	.label_1749
.label_1748:
	nop	
	movabs	rax, OFFSET FLAT:.str.12_0
	movabs	rcx, OFFSET FLAT:.str.10_0
	lea	rsi, [rsi]
	cmp	dword ptr [rbp - 0x14], 9
	lea	rdi, [rdi]
	cmove	rax, rcx
	mov	qword ptr [rbp - 8], rax
.label_1749:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x30
	mov	rsp, rsp
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x41c160

	.globl randread_new
	.type randread_new, @function
randread_new:
	mov	rbp, rbp
	push	rbp
	nop	
	mov	rbp, rsp
	lea	rsi, [rsi]
	sub	rsp, 0x50
	mov	qword ptr [rbp - 0x10], rdi
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x18], rsi
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x18], 0
	mov	rbp, rbp
	jne	.label_1752
	xor	eax, eax
	lea	rsi, [rsi]
	mov	ecx, eax
	mov	rsp, rsp
	mov	rdi, rcx
	nop	
	mov	rsi, rcx
	call	simple_new
	mov	qword ptr [rbp - 8], rax
	jmp	.label_1753
.label_1752:
	nop	
	mov	qword ptr [rbp - 0x20], 0
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x10], 0
	lea	rdi, [rdi]
	je	.label_1755
	nop	
	movabs	rsi, OFFSET FLAT:.str_12
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	call	fopen_safer
	nop	
	mov	qword ptr [rbp - 0x20], rax
	cmp	rax, 0
	jne	.label_1758
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 8], 0
	lea	rdi, [rdi]
	jmp	.label_1753
.label_1758:
	mov	rsp, rsp
	jmp	.label_1755
.label_1755:
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x10]
	call	simple_new
	mov	qword ptr [rbp - 0x28], rax
	cmp	qword ptr [rbp - 0x20], 0
	je	.label_1756
	mov	eax, 0x1000
	lea	rsi, [rsi]
	mov	ecx, eax
	nop	
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rdx, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	add	rdx, 0x18
	cmp	rcx, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x30], rdx
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x38], rdi
	mov	rbp, rbp
	jae	.label_1754
	lea	rdi, [rdi]
	mov	eax, 0x1000
	lea	rdi, [rdi]
	mov	ecx, eax
	mov	qword ptr [rbp - 0x40], rcx
	mov	rsp, rsp
	jmp	.label_1757
.label_1754:
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x40], rax
.label_1757:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x40]
	xor	edx, edx
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x30]
	mov	rcx, rax
	mov	rbp, rbp
	call	setvbuf
	mov	dword ptr [rbp - 0x44], eax
	jmp	.label_1759
.label_1756:
	lea	rdi, [rdi]
	mov	eax, 0x800
	mov	esi, eax
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x28]
	mov	qword ptr [rcx + 0x18], 0
	mov	rcx, qword ptr [rbp - 0x28]
	add	rcx, 0x18
	nop	
	add	rcx, 8
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x18]
	nop	
	mov	rdi, rcx
	lea	rsi, [rsi]
	call	get_nonce
	mov	rcx, qword ptr [rbp - 0x28]
	add	rcx, 0x18
	lea	rsi, [rsi]
	add	rcx, 8
	lea	rsi, [rsi]
	mov	rdi, rcx
	call	isaac_seed
.label_1759:
	mov	rax, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 8], rax
.label_1753:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x50
	mov	rbp, rbp
	pop	rbp
	lea	rsi, [rsi]
	ret	
	.section	.text
	.align	16
	#Procedure 0x41c320

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
	.align	16
	#Procedure 0x41c3a0

	.globl get_nonce
	.type get_nonce, @function
get_nonce:
	push	rbp
	lea	rdi, [rdi]
	mov	rbp, rsp
	nop	
	sub	rsp, 0x100
	movabs	rax, OFFSET FLAT:.str.3_2
	xor	ecx, ecx
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 8], rdi
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	rdx, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x20], rdx
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x28], 0
	nop	
	mov	rdi, rax
	nop	
	mov	esi, ecx
	mov	al, 0
	call	open
	xor	ecx, ecx
	mov	dword ptr [rbp - 0x2c], eax
	lea	rdi, [rdi]
	cmp	ecx, dword ptr [rbp - 0x2c]
	lea	rdi, [rdi]
	jg	.label_1776
	mov	rbp, rbp
	mov	edi, dword ptr [rbp - 0x2c]
	mov	rsi, qword ptr [rbp - 0x20]
	mov	rax, qword ptr [rbp - 0x10]
	nop	
	cmp	rax, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x8c], edi
	mov	qword ptr [rbp - 0x98], rsi
	nop	
	jae	.label_1761
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0xa0], rax
	jmp	.label_1766
.label_1761:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0xa0], rax
.label_1766:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0xa0]
	mov	rbp, rbp
	mov	edi, dword ptr [rbp - 0x8c]
	mov	rsi, qword ptr [rbp - 0x98]
	mov	rdx, rax
	call	read
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x28], rax
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0x28], 0
	lea	rsi, [rsi]
	jge	.label_1777
	mov	qword ptr [rbp - 0x28], 0
.label_1777:
	mov	edi, dword ptr [rbp - 0x2c]
	call	close
	mov	dword ptr [rbp - 0xa4], eax
.label_1776:
	mov	rax, qword ptr [rbp - 0x28]
	cmp	rax, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	jae	.label_1769
	lea	rdi, [rdi]
	mov	eax, 0x10
	lea	rdi, [rdi]
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	sub	rdx, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	cmp	rcx, rdx
	lea	rsi, [rsi]
	jae	.label_1767
	mov	eax, 0x10
	mov	ecx, eax
	mov	qword ptr [rbp - 0xb0], rcx
	mov	rbp, rbp
	jmp	.label_1773
.label_1767:
	mov	rax, qword ptr [rbp - 0x10]
	sub	rax, qword ptr [rbp - 0x28]
	nop	
	mov	qword ptr [rbp - 0xb0], rax
.label_1773:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0xb0]
	lea	rdi, [rbp - 0x40]
	xor	ecx, ecx
	mov	esi, ecx
	mov	qword ptr [rbp - 0x48], rax
	call	gettimeofday
	lea	rsi, [rbp - 0x40]
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x20]
	add	rdi, qword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x48]
	nop	
	mov	dword ptr [rbp - 0xb4], eax
	call	memcpy
	mov	rdx, qword ptr [rbp - 0x48]
	add	rdx, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x28], rdx
.label_1769:
	mov	rax, qword ptr [rbp - 0x28]
	cmp	rax, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	jae	.label_1770
	nop	
	mov	eax, 4
	mov	rbp, rbp
	mov	ecx, eax
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	sub	rdx, qword ptr [rbp - 0x28]
	mov	rbp, rbp
	cmp	rcx, rdx
	mov	rsp, rsp
	jae	.label_1772
	mov	rsp, rsp
	mov	eax, 4
	lea	rdi, [rdi]
	mov	ecx, eax
	mov	qword ptr [rbp - 0xc0], rcx
	mov	rsp, rsp
	jmp	.label_1760
.label_1772:
	mov	rax, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	sub	rax, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0xc0], rax
.label_1760:
	mov	rax, qword ptr [rbp - 0xc0]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x58], rax
	lea	rsi, [rsi]
	call	getpid
	nop	
	lea	rcx, [rbp - 0x4c]
	mov	dword ptr [rbp - 0x4c], eax
	nop	
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	add	rdx, qword ptr [rbp - 0x28]
	nop	
	mov	rsi, qword ptr [rbp - 0x58]
	lea	rsi, [rsi]
	mov	rdi, rdx
	mov	qword ptr [rbp - 0xc8], rsi
	nop	
	mov	rsi, rcx
	mov	rdx, qword ptr [rbp - 0xc8]
	call	memcpy
	nop	
	mov	rcx, qword ptr [rbp - 0x58]
	add	rcx, qword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x28], rcx
.label_1770:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x28]
	cmp	rax, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	jae	.label_1762
	mov	eax, 4
	nop	
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x10]
	nop	
	sub	rdx, qword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	cmp	rcx, rdx
	jae	.label_1765
	mov	eax, 4
	lea	rsi, [rsi]
	mov	ecx, eax
	mov	qword ptr [rbp - 0xd0], rcx
	jmp	.label_1768
.label_1765:
	mov	rax, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	sub	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0xd0], rax
.label_1768:
	mov	rax, qword ptr [rbp - 0xd0]
	mov	qword ptr [rbp - 0x68], rax
	call	getppid
	lea	rcx, [rbp - 0x5c]
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x5c], eax
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x20]
	add	rdx, qword ptr [rbp - 0x28]
	mov	rsi, qword ptr [rbp - 0x68]
	mov	rdi, rdx
	mov	qword ptr [rbp - 0xd8], rsi
	mov	rsi, rcx
	mov	rdx, qword ptr [rbp - 0xd8]
	nop	
	call	memcpy
	mov	rcx, qword ptr [rbp - 0x68]
	add	rcx, qword ptr [rbp - 0x28]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x28], rcx
.label_1762:
	mov	rax, qword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	cmp	rax, qword ptr [rbp - 0x10]
	jae	.label_1774
	mov	eax, 4
	lea	rsi, [rsi]
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x10]
	nop	
	sub	rdx, qword ptr [rbp - 0x28]
	cmp	rcx, rdx
	mov	rbp, rbp
	jae	.label_1771
	lea	rdi, [rdi]
	mov	eax, 4
	lea	rdi, [rdi]
	mov	ecx, eax
	mov	qword ptr [rbp - 0xe0], rcx
	jmp	.label_1775
.label_1771:
	mov	rax, qword ptr [rbp - 0x10]
	sub	rax, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0xe0], rax
.label_1775:
	mov	rax, qword ptr [rbp - 0xe0]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x78], rax
	call	getuid
	mov	rsp, rsp
	lea	rcx, [rbp - 0x6c]
	mov	dword ptr [rbp - 0x6c], eax
	mov	rdx, qword ptr [rbp - 0x20]
	add	rdx, qword ptr [rbp - 0x28]
	mov	rsi, qword ptr [rbp - 0x78]
	mov	rdi, rdx
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0xe8], rsi
	mov	rsp, rsp
	mov	rsi, rcx
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0xe8]
	call	memcpy
	mov	rcx, qword ptr [rbp - 0x78]
	nop	
	add	rcx, qword ptr [rbp - 0x28]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x28], rcx
.label_1774:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rbp - 0x10]
	jae	.label_1778
	mov	eax, 4
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	sub	rdx, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	cmp	rcx, rdx
	jae	.label_1763
	mov	rsp, rsp
	mov	eax, 4
	mov	rsp, rsp
	mov	ecx, eax
	nop	
	mov	qword ptr [rbp - 0xf0], rcx
	mov	rbp, rbp
	jmp	.label_1764
.label_1763:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	sub	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0xf0], rax
.label_1764:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0xf0]
	mov	qword ptr [rbp - 0x88], rax
	nop	
	call	getgid
	lea	rcx, [rbp - 0x7c]
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x7c], eax
	mov	rdx, qword ptr [rbp - 0x20]
	add	rdx, qword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x88]
	mov	rdi, rdx
	nop	
	mov	qword ptr [rbp - 0xf8], rsi
	mov	rsi, rcx
	mov	rdx, qword ptr [rbp - 0xf8]
	mov	rbp, rbp
	call	memcpy
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x88]
	add	rcx, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x28], rcx
.label_1778:
	add	rsp, 0x100
	pop	rbp
	nop	
	ret	
	.section	.text
	.align	16
	#Procedure 0x41c850
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
	.align	16
	#Procedure 0x41c880
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
	.align	16
	#Procedure 0x41c8a0

	.globl randread
	.type randread, @function
randread:
	mov	rsp, rsp
	push	rbp
	mov	rsp, rsp
	mov	rbp, rsp
	nop	
	sub	rsp, 0x20
	mov	qword ptr [rbp - 8], rdi
	nop	
	mov	qword ptr [rbp - 0x10], rsi
	nop	
	mov	qword ptr [rbp - 0x18], rdx
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 8]
	mov	rbp, rbp
	cmp	qword ptr [rdx], 0
	mov	rbp, rbp
	je	.label_1779
	nop	
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x18]
	nop	
	call	readsource
	jmp	.label_1780
.label_1779:
	mov	rax, qword ptr [rbp - 8]
	add	rax, 0x18
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x18]
	nop	
	mov	rdi, rax
	call	readisaac
.label_1780:
	nop	
	add	rsp, 0x20
	mov	rsp, rsp
	pop	rbp
	lea	rdi, [rdi]
	ret	
	.section	.text
	.align	16
	#Procedure 0x41c920

	.globl readsource
	.type readsource, @function
readsource:
	push	rbp
	mov	rbp, rsp
	lea	rdi, [rdi]
	sub	rsp, 0x30
	mov	rsp, rsp
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
.label_1785:
	nop	
	mov	eax, 1
	nop	
	mov	esi, eax
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 8]
	mov	rcx, qword ptr [rcx]
	mov	rbp, rbp
	call	fread_unlocked
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x20], rax
	call	__errno_location
	mov	rbp, rbp
	mov	r8d, dword ptr [rax]
	nop	
	mov	dword ptr [rbp - 0x24], r8d
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	add	rax, qword ptr [rbp - 0x10]
	nop	
	mov	qword ptr [rbp - 0x10], rax
	mov	rax, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x18]
	sub	rcx, rax
	mov	qword ptr [rbp - 0x18], rcx
	cmp	qword ptr [rbp - 0x18], 0
	jne	.label_1782
	jmp	.label_1783
.label_1782:
	mov	rax, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rax]
	lea	rdi, [rdi]
	call	ferror_unlocked
	lea	rsi, [rsi]
	cmp	eax, 0
	nop	
	je	.label_1784
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x24]
	mov	dword ptr [rbp - 0x28], eax
	jmp	.label_1781
.label_1784:
	mov	rbp, rbp
	xor	eax, eax
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x28], eax
	jmp	.label_1781
.label_1781:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x2c], eax
	nop	
	call	__errno_location
	mov	rbp, rbp
	mov	ecx, dword ptr [rbp - 0x2c]
	mov	dword ptr [rax], ecx
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax + 8]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 8]
	nop	
	mov	rdi, qword ptr [rdx + 0x10]
	lea	rsi, [rsi]
	call	rax
	jmp	.label_1785
.label_1783:
	mov	rsp, rsp
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x41ca30

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
.label_1788:
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x28], rax
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x18]
	cmp	rax, qword ptr [rbp - 0x20]
	nop	
	ja	.label_1792
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
	jmp	.label_1791
.label_1792:
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
	jne	.label_1786
	mov	rax, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x30], rax
.label_1789:
	lea	rdi, [rdi]
	mov	eax, 0x800
	mov	ecx, eax
	cmp	rcx, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	ja	.label_1790
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
	jne	.label_1787
	mov	rax, qword ptr [rbp - 8]
	nop	
	mov	qword ptr [rax], 0
	mov	rbp, rbp
	jmp	.label_1791
.label_1787:
	lea	rdi, [rdi]
	jmp	.label_1789
.label_1790:
	nop	
	mov	rax, qword ptr [rbp - 0x30]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x10], rax
.label_1786:
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
	jmp	.label_1788
.label_1791:
	add	rsp, 0x30
	lea	rsi, [rsi]
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x41cc30

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
	mov	qword ptr [rbp - 0x10], rdi
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 8]
	call	explicit_bzero
	mov	rsi, qword ptr [rbp - 8]
	mov	rdi, rsi
	call	free
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x10], 0
	je	.label_1793
	mov	rdi, qword ptr [rbp - 0x10]
	nop	
	call	rpl_fclose
	nop	
	mov	dword ptr [rbp - 0x14], eax
	mov	rsp, rsp
	jmp	.label_1794
.label_1793:
	xor	eax, eax
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x14], eax
	mov	rsp, rsp
	jmp	.label_1794
.label_1794:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x14]
	add	rsp, 0x20
	pop	rbp
	mov	rbp, rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x41ccc0

	.globl randread_error
	.type randread_error, @function
randread_error:
	mov	rsp, rsp
	push	rbp
	nop	
	mov	rbp, rsp
	nop	
	sub	rsp, 0x20
	mov	qword ptr [rbp - 8], rdi
	cmp	qword ptr [rbp - 8], 0
	nop	
	je	.label_1795
	mov	edi,  dword ptr [dword ptr [exit_failure]]
	nop	
	mov	dword ptr [rbp - 0xc], edi
	mov	rsp, rsp
	call	__errno_location
	lea	rsi, [rsi]
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0x10], esi
	call	__errno_location
	cmp	dword ptr [rax], 0
	lea	rdi, [rdi]
	jne	.label_1797
	movabs	rdi, OFFSET FLAT:.str.1_7
	call	gettext
	mov	qword ptr [rbp - 0x18], rax
	mov	rsp, rsp
	jmp	.label_1796
.label_1797:
	mov	rbp, rbp
	movabs	rdi, OFFSET FLAT:.str.2_3
	nop	
	call	gettext
	mov	qword ptr [rbp - 0x18], rax
.label_1796:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rdi, qword ptr [rbp - 8]
	nop	
	mov	qword ptr [rbp - 0x20], rax
	lea	rdi, [rdi]
	call	quote
	mov	edi, dword ptr [rbp - 0xc]
	lea	rsi, [rsi]
	mov	esi, dword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	mov	rcx, rax
	mov	al, 0
	nop	
	call	error
.label_1795:
	mov	rsp, rsp
	call	abort
	.section	.text
	.align	16
	#Procedure 0x41cd80

	.globl isaac_refill
	.type isaac_refill, @function
isaac_refill:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0xd0
	mov	rsp, rsp
	mov	qword ptr [rbp - 8], rdi
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsi, qword ptr [rbp - 8]
	nop	
	mov	rsi, qword ptr [rsi + 0x800]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x18], rsi
	mov	rsi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rsi + 0x808]
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 8]
	mov	rbp, rbp
	mov	rax, qword ptr [rdi + 0x810]
	add	rax, 1
	mov	qword ptr [rdi + 0x810], rax
	add	rsi, rax
	nop	
	mov	qword ptr [rbp - 0x20], rsi
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x28], rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x30], rax
.label_1799:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x18]
	shl	rcx, 0x15
	xor	rax, rcx
	xor	rax, 0xffffffffffffffff
	xor	rax, 0
	mov	rcx, qword ptr [rbp - 0x28]
	nop	
	add	rax, qword ptr [rcx + 0x400]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x18], rax
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0x38], rax
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 8]
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x38]
	mov	rsp, rsp
	call	ind
	add	rax, qword ptr [rbp - 0x18]
	add	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x40], rax
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x28]
	mov	qword ptr [rcx], rax
	mov	rdi, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x40]
	shr	rax, 8
	mov	rsp, rsp
	mov	rsi, rax
	lea	rdi, [rdi]
	call	ind
	lea	rdi, [rdi]
	add	rax, qword ptr [rbp - 0x38]
	nop	
	mov	rdi, rax
	nop	
	call	just
	mov	qword ptr [rbp - 0x20], rax
	mov	rcx, qword ptr [rbp - 0x30]
	mov	qword ptr [rcx], rax
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x18]
	mov	rdi, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0xb8], rax
	mov	rbp, rbp
	call	just
	shr	rax, 5
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0xb8]
	lea	rsi, [rsi]
	xor	rcx, rax
	xor	rcx, 0
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x28]
	add	rcx, qword ptr [rax + 0x408]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x18], rcx
	mov	rax, qword ptr [rbp - 0x28]
	mov	rbp, rbp
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x48], rax
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x48]
	call	ind
	mov	rbp, rbp
	add	rax, qword ptr [rbp - 0x18]
	add	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x50], rax
	mov	rcx, qword ptr [rbp - 0x28]
	mov	qword ptr [rcx + 8], rax
	mov	rdi, qword ptr [rbp - 8]
	mov	rax, qword ptr [rbp - 0x50]
	shr	rax, 8
	mov	rsi, rax
	mov	rsp, rsp
	call	ind
	mov	rbp, rbp
	add	rax, qword ptr [rbp - 0x48]
	mov	rdi, rax
	call	just
	mov	qword ptr [rbp - 0x20], rax
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x30]
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
	mov	rcx, qword ptr [rbp - 0x28]
	add	rax, qword ptr [rcx + 0x410]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x18], rax
	mov	rax, qword ptr [rbp - 0x28]
	mov	rax, qword ptr [rax + 0x10]
	nop	
	mov	qword ptr [rbp - 0x58], rax
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x58]
	call	ind
	add	rax, qword ptr [rbp - 0x18]
	add	rax, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x60], rax
	mov	rcx, qword ptr [rbp - 0x28]
	mov	qword ptr [rcx + 0x10], rax
	nop	
	mov	rdi, qword ptr [rbp - 8]
	nop	
	mov	rax, qword ptr [rbp - 0x60]
	lea	rsi, [rsi]
	shr	rax, 8
	mov	rsi, rax
	lea	rsi, [rsi]
	call	ind
	add	rax, qword ptr [rbp - 0x58]
	lea	rdi, [rdi]
	mov	rdi, rax
	call	just
	mov	qword ptr [rbp - 0x20], rax
	mov	rcx, qword ptr [rbp - 0x30]
	mov	qword ptr [rcx + 0x10], rax
	mov	rax, qword ptr [rbp - 0x18]
	nop	
	mov	rdi, qword ptr [rbp - 0x18]
	nop	
	mov	qword ptr [rbp - 0xc0], rax
	call	just
	nop	
	shr	rax, 0x21
	mov	rcx, qword ptr [rbp - 0xc0]
	xor	rcx, rax
	mov	rsp, rsp
	xor	rcx, 0
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x28]
	add	rcx, qword ptr [rax + 0x418]
	mov	qword ptr [rbp - 0x18], rcx
	mov	rax, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	mov	rax, qword ptr [rax + 0x18]
	mov	qword ptr [rbp - 0x68], rax
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x68]
	call	ind
	add	rax, qword ptr [rbp - 0x18]
	nop	
	add	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x70], rax
	mov	rcx, qword ptr [rbp - 0x28]
	mov	qword ptr [rcx + 0x18], rax
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x70]
	lea	rsi, [rsi]
	shr	rax, 8
	mov	rsi, rax
	lea	rsi, [rsi]
	call	ind
	add	rax, qword ptr [rbp - 0x68]
	mov	rdi, rax
	lea	rdi, [rdi]
	call	just
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x20], rax
	nop	
	mov	rcx, qword ptr [rbp - 0x30]
	lea	rdi, [rdi]
	mov	qword ptr [rcx + 0x18], rax
	mov	rax, qword ptr [rbp - 0x30]
	nop	
	add	rax, 0x20
	mov	qword ptr [rbp - 0x30], rax
	mov	rax, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	add	rax, 0x20
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x28], rax
	mov	rcx, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	add	rcx, 0x400
	cmp	rax, rcx
	lea	rsi, [rsi]
	jb	.label_1799
	jmp	.label_1798
.label_1798:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x18]
	shl	rcx, 0x15
	mov	rbp, rbp
	xor	rax, rcx
	xor	rax, 0xffffffffffffffff
	xor	rax, 0
	mov	rcx, qword ptr [rbp - 0x28]
	nop	
	add	rax, qword ptr [rcx - 0x400]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x18], rax
	mov	rax, qword ptr [rbp - 0x28]
	nop	
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0x78], rax
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x78]
	lea	rsi, [rsi]
	call	ind
	add	rax, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	add	rax, qword ptr [rbp - 0x20]
	nop	
	mov	qword ptr [rbp - 0x80], rax
	mov	rcx, qword ptr [rbp - 0x28]
	mov	qword ptr [rcx], rax
	nop	
	mov	rdi, qword ptr [rbp - 8]
	mov	rax, qword ptr [rbp - 0x80]
	nop	
	shr	rax, 8
	mov	rsi, rax
	call	ind
	add	rax, qword ptr [rbp - 0x78]
	mov	rdi, rax
	lea	rdi, [rdi]
	call	just
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x20], rax
	mov	rcx, qword ptr [rbp - 0x30]
	mov	rbp, rbp
	mov	qword ptr [rcx], rax
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x18]
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0xc8], rax
	lea	rdi, [rdi]
	call	just
	shr	rax, 5
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0xc8]
	mov	rbp, rbp
	xor	rcx, rax
	lea	rdi, [rdi]
	xor	rcx, 0
	mov	rax, qword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	add	rcx, qword ptr [rax - 0x3f8]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x18], rcx
	mov	rax, qword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax + 8]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x88], rax
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x88]
	call	ind
	nop	
	add	rax, qword ptr [rbp - 0x18]
	add	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x90], rax
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x28]
	mov	qword ptr [rcx + 8], rax
	mov	rdi, qword ptr [rbp - 8]
	mov	rax, qword ptr [rbp - 0x90]
	shr	rax, 8
	mov	rsi, rax
	call	ind
	add	rax, qword ptr [rbp - 0x88]
	nop	
	mov	rdi, rax
	lea	rsi, [rsi]
	call	just
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x20], rax
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x30]
	mov	qword ptr [rcx + 8], rax
	mov	rax, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	shl	rcx, 0xc
	xor	rax, rcx
	mov	rbp, rbp
	xor	rax, 0
	mov	rcx, qword ptr [rbp - 0x28]
	add	rax, qword ptr [rcx - 0x3f0]
	mov	qword ptr [rbp - 0x18], rax
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x28]
	mov	rax, qword ptr [rax + 0x10]
	mov	qword ptr [rbp - 0x98], rax
	mov	rdi, qword ptr [rbp - 8]
	nop	
	mov	rsi, qword ptr [rbp - 0x98]
	lea	rdi, [rdi]
	call	ind
	add	rax, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	add	rax, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0xa0], rax
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x28]
	nop	
	mov	qword ptr [rcx + 0x10], rax
	mov	rdi, qword ptr [rbp - 8]
	mov	rax, qword ptr [rbp - 0xa0]
	shr	rax, 8
	mov	rsp, rsp
	mov	rsi, rax
	mov	rbp, rbp
	call	ind
	add	rax, qword ptr [rbp - 0x98]
	mov	rdi, rax
	call	just
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x20], rax
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x30]
	lea	rsi, [rsi]
	mov	qword ptr [rcx + 0x10], rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x18]
	mov	rdi, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0xd0], rax
	lea	rdi, [rdi]
	call	just
	mov	rsp, rsp
	shr	rax, 0x21
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0xd0]
	mov	rsp, rsp
	xor	rcx, rax
	xor	rcx, 0
	mov	rax, qword ptr [rbp - 0x28]
	add	rcx, qword ptr [rax - 0x3e8]
	nop	
	mov	qword ptr [rbp - 0x18], rcx
	mov	rax, qword ptr [rbp - 0x28]
	nop	
	mov	rax, qword ptr [rax + 0x18]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0xa8], rax
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 8]
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0xa8]
	call	ind
	add	rax, qword ptr [rbp - 0x18]
	add	rax, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0xb0], rax
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	qword ptr [rcx + 0x18], rax
	mov	rdi, qword ptr [rbp - 8]
	mov	rax, qword ptr [rbp - 0xb0]
	mov	rsp, rsp
	shr	rax, 8
	mov	rsi, rax
	lea	rdi, [rdi]
	call	ind
	mov	rbp, rbp
	add	rax, qword ptr [rbp - 0xa8]
	mov	rbp, rbp
	mov	rdi, rax
	call	just
	nop	
	mov	qword ptr [rbp - 0x20], rax
	mov	rcx, qword ptr [rbp - 0x30]
	nop	
	mov	qword ptr [rcx + 0x18], rax
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x30]
	lea	rsi, [rsi]
	add	rax, 0x20
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x30], rax
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, 0x20
	mov	qword ptr [rbp - 0x28], rax
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	add	rcx, 0x800
	cmp	rax, rcx
	jb	.label_1798
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	qword ptr [rcx + 0x800], rax
	nop	
	mov	rax, qword ptr [rbp - 0x20]
	nop	
	mov	rcx, qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	qword ptr [rcx + 0x808], rax
	lea	rsi, [rsi]
	add	rsp, 0xd0
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x41d420

	.globl ind
	.type ind, @function
ind:
	push	rbp
	mov	rbp, rsp
	mov	rsp, rsp
	mov	qword ptr [rbp - 8], rdi
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x10], rsi
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x18], rsi
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x18]
	nop	
	mov	qword ptr [rbp - 0x20], rsi
	mov	rsi, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x10]
	nop	
	and	rdi, 0x7f8
	lea	rdi, [rdi]
	add	rsi, rdi
	mov	qword ptr [rbp - 0x28], rsi
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x30], rsi
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x30]
	mov	rbp, rbp
	mov	rax, qword ptr [rsi]
	pop	rbp
	lea	rsi, [rsi]
	ret	
	.section	.text
	.align	16
	#Procedure 0x41d490

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
	.align	16
	#Procedure 0x41d4c0

	.globl isaac_seed
	.type isaac_seed, @function
isaac_seed:
	mov	rsp, rsp
	push	rbp
	lea	rdi, [rdi]
	mov	rbp, rsp
	mov	rsp, rsp
	sub	rsp, 0x50
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
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], r11
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x18], r10
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x20], r9
	mov	qword ptr [rbp - 0x28], r8
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x30], rsi
	mov	qword ptr [rbp - 0x38], rdx
	mov	qword ptr [rbp - 0x40], rcx
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x48], rax
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x4c], 0
.label_1802:
	lea	rsi, [rsi]
	cmp	dword ptr [rbp - 0x4c], 0x100
	mov	rbp, rbp
	jge	.label_1801
	lea	rsi, [rsi]
	movsxd	rax, dword ptr [rbp - 0x4c]
	mov	rcx, qword ptr [rbp - 8]
	mov	rax, qword ptr [rcx + rax*8]
	add	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x10], rax
	mov	edx, dword ptr [rbp - 0x4c]
	mov	rbp, rbp
	add	edx, 1
	movsxd	rax, edx
	nop	
	mov	rcx, qword ptr [rbp - 8]
	mov	rax, qword ptr [rcx + rax*8]
	lea	rdi, [rdi]
	add	rax, qword ptr [rbp - 0x18]
	nop	
	mov	qword ptr [rbp - 0x18], rax
	nop	
	mov	edx, dword ptr [rbp - 0x4c]
	add	edx, 2
	movsxd	rax, edx
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rcx + rax*8]
	add	rax, qword ptr [rbp - 0x20]
	nop	
	mov	qword ptr [rbp - 0x20], rax
	mov	edx, dword ptr [rbp - 0x4c]
	add	edx, 3
	movsxd	rax, edx
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 8]
	mov	rax, qword ptr [rcx + rax*8]
	nop	
	add	rax, qword ptr [rbp - 0x28]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x28], rax
	nop	
	mov	edx, dword ptr [rbp - 0x4c]
	add	edx, 4
	movsxd	rax, edx
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 8]
	mov	rax, qword ptr [rcx + rax*8]
	add	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x30], rax
	mov	rsp, rsp
	mov	edx, dword ptr [rbp - 0x4c]
	mov	rbp, rbp
	add	edx, 5
	mov	rbp, rbp
	movsxd	rax, edx
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 8]
	mov	rax, qword ptr [rcx + rax*8]
	lea	rdi, [rdi]
	add	rax, qword ptr [rbp - 0x38]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x38], rax
	mov	edx, dword ptr [rbp - 0x4c]
	mov	rsp, rsp
	add	edx, 6
	movsxd	rax, edx
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	rax, qword ptr [rcx + rax*8]
	mov	rbp, rbp
	add	rax, qword ptr [rbp - 0x40]
	mov	qword ptr [rbp - 0x40], rax
	mov	edx, dword ptr [rbp - 0x4c]
	nop	
	add	edx, 7
	nop	
	movsxd	rax, edx
	mov	rcx, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rcx + rax*8]
	add	rax, qword ptr [rbp - 0x48]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x48], rax
	mov	rax, qword ptr [rbp - 0x30]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	sub	rcx, rax
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x10], rcx
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x48]
	mov	rbp, rbp
	call	just
	nop	
	shr	rax, 9
	lea	rsi, [rsi]
	xor	rax, qword ptr [rbp - 0x38]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x38], rax
	mov	rax, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	add	rax, qword ptr [rbp - 0x48]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x48], rax
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x38]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x18]
	sub	rcx, rax
	mov	qword ptr [rbp - 0x18], rcx
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x10]
	shl	rax, 9
	xor	rax, qword ptr [rbp - 0x40]
	mov	qword ptr [rbp - 0x40], rax
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x10], rax
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x40]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x20]
	sub	rcx, rax
	mov	qword ptr [rbp - 0x20], rcx
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x18]
	call	just
	shr	rax, 0x17
	xor	rax, qword ptr [rbp - 0x48]
	mov	qword ptr [rbp - 0x48], rax
	mov	rax, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	add	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x18], rax
	mov	rax, qword ptr [rbp - 0x48]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x28]
	sub	rcx, rax
	mov	qword ptr [rbp - 0x28], rcx
	nop	
	mov	rax, qword ptr [rbp - 0x20]
	shl	rax, 0xf
	xor	rax, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x10], rax
	mov	rax, qword ptr [rbp - 0x28]
	mov	rbp, rbp
	add	rax, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x20], rax
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 0x30]
	sub	rcx, rax
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x30], rcx
	mov	rdi, qword ptr [rbp - 0x28]
	call	just
	lea	rdi, [rdi]
	shr	rax, 0xe
	xor	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x18], rax
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x28], rax
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x38]
	mov	rsp, rsp
	sub	rcx, rax
	mov	qword ptr [rbp - 0x38], rcx
	mov	rax, qword ptr [rbp - 0x30]
	lea	rsi, [rsi]
	shl	rax, 0x14
	xor	rax, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x20], rax
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x38]
	add	rax, qword ptr [rbp - 0x30]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x30], rax
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x40]
	sub	rcx, rax
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x40], rcx
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x38]
	call	just
	shr	rax, 0x11
	xor	rax, qword ptr [rbp - 0x28]
	nop	
	mov	qword ptr [rbp - 0x28], rax
	mov	rax, qword ptr [rbp - 0x40]
	add	rax, qword ptr [rbp - 0x38]
	mov	qword ptr [rbp - 0x38], rax
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x28]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x48]
	sub	rcx, rax
	mov	qword ptr [rbp - 0x48], rcx
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x40]
	mov	rsp, rsp
	shl	rax, 0xe
	xor	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x30], rax
	mov	rax, qword ptr [rbp - 0x48]
	add	rax, qword ptr [rbp - 0x40]
	mov	qword ptr [rbp - 0x40], rax
	nop	
	mov	rax, qword ptr [rbp - 0x10]
	movsxd	rcx, dword ptr [rbp - 0x4c]
	mov	rdi, qword ptr [rbp - 8]
	mov	qword ptr [rdi + rcx*8], rax
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	mov	edx, dword ptr [rbp - 0x4c]
	lea	rdi, [rdi]
	add	edx, 1
	mov	rsp, rsp
	movsxd	rcx, edx
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 8]
	mov	rbp, rbp
	mov	qword ptr [rdi + rcx*8], rax
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x20]
	mov	edx, dword ptr [rbp - 0x4c]
	add	edx, 2
	mov	rbp, rbp
	movsxd	rcx, edx
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 8]
	mov	qword ptr [rdi + rcx*8], rax
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x28]
	mov	edx, dword ptr [rbp - 0x4c]
	lea	rsi, [rsi]
	add	edx, 3
	lea	rsi, [rsi]
	movsxd	rcx, edx
	mov	rdi, qword ptr [rbp - 8]
	mov	rbp, rbp
	mov	qword ptr [rdi + rcx*8], rax
	mov	rax, qword ptr [rbp - 0x30]
	lea	rdi, [rdi]
	mov	edx, dword ptr [rbp - 0x4c]
	add	edx, 4
	mov	rbp, rbp
	movsxd	rcx, edx
	mov	rdi, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	qword ptr [rdi + rcx*8], rax
	mov	rax, qword ptr [rbp - 0x38]
	mov	rsp, rsp
	mov	edx, dword ptr [rbp - 0x4c]
	add	edx, 5
	movsxd	rcx, edx
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 8]
	mov	qword ptr [rdi + rcx*8], rax
	mov	rax, qword ptr [rbp - 0x40]
	nop	
	mov	edx, dword ptr [rbp - 0x4c]
	lea	rdi, [rdi]
	add	edx, 6
	movsxd	rcx, edx
	mov	rdi, qword ptr [rbp - 8]
	mov	qword ptr [rdi + rcx*8], rax
	mov	rax, qword ptr [rbp - 0x48]
	lea	rsi, [rsi]
	mov	edx, dword ptr [rbp - 0x4c]
	lea	rsi, [rsi]
	add	edx, 7
	nop	
	movsxd	rcx, edx
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 8]
	mov	qword ptr [rdi + rcx*8], rax
	nop	
	mov	eax, dword ptr [rbp - 0x4c]
	add	eax, 8
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x4c], eax
	jmp	.label_1802
.label_1801:
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x50], 0
.label_1803:
	cmp	dword ptr [rbp - 0x50], 0x100
	mov	rsp, rsp
	jge	.label_1800
	movsxd	rax, dword ptr [rbp - 0x50]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 8]
	mov	rax, qword ptr [rcx + rax*8]
	add	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x10], rax
	mov	edx, dword ptr [rbp - 0x50]
	lea	rdi, [rdi]
	add	edx, 1
	lea	rsi, [rsi]
	movsxd	rax, edx
	mov	rcx, qword ptr [rbp - 8]
	mov	rax, qword ptr [rcx + rax*8]
	add	rax, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x18], rax
	mov	rsp, rsp
	mov	edx, dword ptr [rbp - 0x50]
	add	edx, 2
	lea	rsi, [rsi]
	movsxd	rax, edx
	mov	rcx, qword ptr [rbp - 8]
	mov	rax, qword ptr [rcx + rax*8]
	lea	rdi, [rdi]
	add	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x20], rax
	mov	edx, dword ptr [rbp - 0x50]
	add	edx, 3
	lea	rsi, [rsi]
	movsxd	rax, edx
	mov	rcx, qword ptr [rbp - 8]
	nop	
	mov	rax, qword ptr [rcx + rax*8]
	add	rax, qword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x28], rax
	mov	rsp, rsp
	mov	edx, dword ptr [rbp - 0x50]
	nop	
	add	edx, 4
	movsxd	rax, edx
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	rax, qword ptr [rcx + rax*8]
	mov	rbp, rbp
	add	rax, qword ptr [rbp - 0x30]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x30], rax
	mov	edx, dword ptr [rbp - 0x50]
	add	edx, 5
	movsxd	rax, edx
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 8]
	mov	rax, qword ptr [rcx + rax*8]
	add	rax, qword ptr [rbp - 0x38]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x38], rax
	mov	edx, dword ptr [rbp - 0x50]
	lea	rsi, [rsi]
	add	edx, 6
	movsxd	rax, edx
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 8]
	mov	rax, qword ptr [rcx + rax*8]
	add	rax, qword ptr [rbp - 0x40]
	mov	qword ptr [rbp - 0x40], rax
	nop	
	mov	edx, dword ptr [rbp - 0x50]
	mov	rsp, rsp
	add	edx, 7
	movsxd	rax, edx
	mov	rcx, qword ptr [rbp - 8]
	mov	rax, qword ptr [rcx + rax*8]
	nop	
	add	rax, qword ptr [rbp - 0x48]
	mov	qword ptr [rbp - 0x48], rax
	mov	rax, qword ptr [rbp - 0x30]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x10]
	sub	rcx, rax
	mov	qword ptr [rbp - 0x10], rcx
	mov	rdi, qword ptr [rbp - 0x48]
	mov	rbp, rbp
	call	just
	lea	rdi, [rdi]
	shr	rax, 9
	nop	
	xor	rax, qword ptr [rbp - 0x38]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x38], rax
	nop	
	mov	rax, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	add	rax, qword ptr [rbp - 0x48]
	mov	qword ptr [rbp - 0x48], rax
	mov	rax, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	sub	rcx, rax
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x18], rcx
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x10]
	shl	rax, 9
	lea	rsi, [rsi]
	xor	rax, qword ptr [rbp - 0x40]
	mov	qword ptr [rbp - 0x40], rax
	nop	
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x10], rax
	mov	rax, qword ptr [rbp - 0x40]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	sub	rcx, rax
	mov	qword ptr [rbp - 0x20], rcx
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x18]
	call	just
	mov	rsp, rsp
	shr	rax, 0x17
	mov	rbp, rbp
	xor	rax, qword ptr [rbp - 0x48]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x48], rax
	mov	rax, qword ptr [rbp - 0x20]
	add	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x18], rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rbp - 0x28]
	nop	
	sub	rcx, rax
	mov	qword ptr [rbp - 0x28], rcx
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x20]
	shl	rax, 0xf
	xor	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x10], rax
	mov	rax, qword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	add	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x20], rax
	mov	rax, qword ptr [rbp - 0x10]
	nop	
	mov	rcx, qword ptr [rbp - 0x30]
	sub	rcx, rax
	mov	qword ptr [rbp - 0x30], rcx
	mov	rdi, qword ptr [rbp - 0x28]
	nop	
	call	just
	lea	rsi, [rsi]
	shr	rax, 0xe
	lea	rsi, [rsi]
	xor	rax, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x18], rax
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x28], rax
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x38]
	sub	rcx, rax
	mov	qword ptr [rbp - 0x38], rcx
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x30]
	lea	rdi, [rdi]
	shl	rax, 0x14
	mov	rsp, rsp
	xor	rax, qword ptr [rbp - 0x20]
	nop	
	mov	qword ptr [rbp - 0x20], rax
	mov	rax, qword ptr [rbp - 0x38]
	add	rax, qword ptr [rbp - 0x30]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x30], rax
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x40]
	sub	rcx, rax
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x40], rcx
	mov	rdi, qword ptr [rbp - 0x38]
	call	just
	mov	rbp, rbp
	shr	rax, 0x11
	mov	rsp, rsp
	xor	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x28], rax
	mov	rax, qword ptr [rbp - 0x40]
	add	rax, qword ptr [rbp - 0x38]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x38], rax
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x48]
	lea	rdi, [rdi]
	sub	rcx, rax
	mov	qword ptr [rbp - 0x48], rcx
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x40]
	shl	rax, 0xe
	xor	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x30], rax
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x48]
	add	rax, qword ptr [rbp - 0x40]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x40], rax
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x10]
	movsxd	rcx, dword ptr [rbp - 0x50]
	mov	rdi, qword ptr [rbp - 8]
	mov	qword ptr [rdi + rcx*8], rax
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x18]
	mov	edx, dword ptr [rbp - 0x50]
	mov	rsp, rsp
	add	edx, 1
	mov	rbp, rbp
	movsxd	rcx, edx
	mov	rdi, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	qword ptr [rdi + rcx*8], rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x20]
	mov	edx, dword ptr [rbp - 0x50]
	add	edx, 2
	movsxd	rcx, edx
	mov	rdi, qword ptr [rbp - 8]
	mov	qword ptr [rdi + rcx*8], rax
	mov	rax, qword ptr [rbp - 0x28]
	mov	edx, dword ptr [rbp - 0x50]
	nop	
	add	edx, 3
	mov	rsp, rsp
	movsxd	rcx, edx
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	qword ptr [rdi + rcx*8], rax
	nop	
	mov	rax, qword ptr [rbp - 0x30]
	mov	edx, dword ptr [rbp - 0x50]
	add	edx, 4
	movsxd	rcx, edx
	mov	rdi, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	qword ptr [rdi + rcx*8], rax
	mov	rax, qword ptr [rbp - 0x38]
	mov	edx, dword ptr [rbp - 0x50]
	add	edx, 5
	movsxd	rcx, edx
	mov	rdi, qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	qword ptr [rdi + rcx*8], rax
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x40]
	nop	
	mov	edx, dword ptr [rbp - 0x50]
	nop	
	add	edx, 6
	movsxd	rcx, edx
	nop	
	mov	rdi, qword ptr [rbp - 8]
	mov	qword ptr [rdi + rcx*8], rax
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x48]
	mov	edx, dword ptr [rbp - 0x50]
	add	edx, 7
	mov	rsp, rsp
	movsxd	rcx, edx
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	mov	qword ptr [rdi + rcx*8], rax
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x50]
	nop	
	add	eax, 8
	mov	dword ptr [rbp - 0x50], eax
	mov	rbp, rbp
	jmp	.label_1803
.label_1800:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	qword ptr [rax + 0x810], 0
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	mov	qword ptr [rax + 0x808], 0
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rax + 0x800], 0
	add	rsp, 0x50
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x41dd80

	.globl readtokens0_init
	.type readtokens0_init, @function
readtokens0_init:
	mov	rbp, rbp
	push	rbp
	mov	rbp, rsp
	mov	rsp, rsp
	sub	rsp, 0x30
	lea	rsi, [rsi]
	xor	eax, eax
	mov	ecx, eax
	movabs	rdx, OFFSET FLAT:malloc
	movabs	r8, OFFSET FLAT:free
	mov	qword ptr [rbp - 8], rdi
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 8]
	mov	qword ptr [rdi], 0
	mov	rdi, qword ptr [rbp - 8]
	mov	qword ptr [rdi + 8], 0
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 8]
	mov	qword ptr [rdi + 0x10], 0
	nop	
	mov	rdi, qword ptr [rbp - 8]
	nop	
	add	rdi, 0x18
	mov	rsi, rcx
	mov	qword ptr [rbp - 0x10], rdx
	mov	rsp, rsp
	mov	rdx, rcx
	mov	rcx, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	call	_obstack_begin
	nop	
	xor	r9d, r9d
	mov	ecx, r9d
	movabs	rdx, OFFSET FLAT:malloc
	nop	
	movabs	r8, OFFSET FLAT:free
	mov	rsi, qword ptr [rbp - 8]
	add	rsi, 0x70
	mov	rdi, rsi
	mov	rbp, rbp
	mov	rsi, rcx
	mov	qword ptr [rbp - 0x18], rdx
	mov	rbp, rbp
	mov	rdx, rcx
	nop	
	mov	rcx, qword ptr [rbp - 0x18]
	nop	
	mov	dword ptr [rbp - 0x1c], eax
	call	_obstack_begin
	lea	rdi, [rdi]
	xor	r9d, r9d
	lea	rsi, [rsi]
	mov	ecx, r9d
	lea	rsi, [rsi]
	movabs	rdx, OFFSET FLAT:malloc
	movabs	r8, OFFSET FLAT:free
	nop	
	mov	rsi, qword ptr [rbp - 8]
	mov	rbp, rbp
	add	rsi, 0xc8
	lea	rsi, [rsi]
	mov	rdi, rsi
	mov	rsi, rcx
	mov	qword ptr [rbp - 0x28], rdx
	mov	rdx, rcx
	mov	rcx, qword ptr [rbp - 0x28]
	mov	dword ptr [rbp - 0x2c], eax
	call	_obstack_begin
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x30], eax
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x41dea0
	.globl readtokens0_free
	.type readtokens0_free, @function
readtokens0_free:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x40
	mov	qword ptr [rbp - 8], rdi
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	add	rdi, 0x18
	mov	qword ptr [rbp - 0x10], rdi
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x18], 0
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rbp - 0x10]
	nop	
	mov	rax, qword ptr [rax + 8]
	cmp	rdi, rax
	mov	rbp, rbp
	jbe	.label_1804
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	cmp	rax, qword ptr [rcx + 0x20]
	jae	.label_1804
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x10]
	nop	
	mov	qword ptr [rcx + 0x10], rax
	mov	rcx, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	qword ptr [rcx + 0x18], rax
	nop	
	jmp	.label_1808
.label_1804:
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	call	_obstack_free
.label_1808:
	nop	
	mov	rax, qword ptr [rbp - 8]
	add	rax, 0x70
	mov	qword ptr [rbp - 0x20], rax
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x28], 0
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rcx + 8]
	mov	rbp, rbp
	cmp	rax, rcx
	mov	rbp, rbp
	jbe	.label_1805
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	cmp	rax, qword ptr [rcx + 0x20]
	jae	.label_1805
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	qword ptr [rcx + 0x10], rax
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	mov	qword ptr [rcx + 0x18], rax
	jmp	.label_1809
.label_1805:
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rsi, qword ptr [rbp - 0x28]
	call	_obstack_free
.label_1809:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 8]
	add	rax, 0xc8
	nop	
	mov	qword ptr [rbp - 0x30], rax
	nop	
	mov	qword ptr [rbp - 0x38], 0
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x38]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x30]
	mov	rsp, rsp
	mov	rcx, qword ptr [rcx + 8]
	nop	
	cmp	rax, rcx
	lea	rsi, [rsi]
	jbe	.label_1807
	nop	
	mov	rax, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rbp - 0x30]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rcx + 0x20]
	jae	.label_1807
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x38]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x30]
	lea	rsi, [rsi]
	mov	qword ptr [rcx + 0x10], rax
	mov	rcx, qword ptr [rbp - 0x30]
	mov	qword ptr [rcx + 0x18], rax
	jmp	.label_1806
.label_1807:
	mov	rdi, qword ptr [rbp - 0x30]
	mov	rsi, qword ptr [rbp - 0x38]
	call	_obstack_free
.label_1806:
	add	rsp, 0x40
	mov	rsp, rsp
	pop	rbp
	nop	
	ret	
	.section	.text
	.align	16
	#Procedure 0x41e040

	.globl readtokens0
	.type readtokens0, @function
readtokens0:
	push	rbp
	lea	rdi, [rdi]
	mov	rbp, rsp
	sub	rsp, 0xc0
	mov	rbp, rbp
	mov	qword ptr [rbp - 8], rdi
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x10], rsi
.label_1817:
	mov	rdi, qword ptr [rbp - 8]
	nop	
	call	fgetc
	mov	dword ptr [rbp - 0x14], eax
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x14], -1
	mov	rsp, rsp
	jne	.label_1816
	mov	rax, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	add	rax, 0x18
	mov	qword ptr [rbp - 0x28], rax
	mov	rax, qword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax + 0x18]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rcx + 0x10]
	lea	rdi, [rdi]
	sub	rax, rcx
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x30], rax
	nop	
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x20], rax
	cmp	qword ptr [rbp - 0x20], 0
	mov	rsp, rsp
	je	.label_1821
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 0x18
	mov	qword ptr [rbp - 0x38], rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x38]
	mov	qword ptr [rbp - 0x40], rax
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax + 0x20]
	nop	
	mov	rcx, qword ptr [rbp - 0x40]
	mov	rsp, rsp
	mov	rcx, qword ptr [rcx + 0x18]
	nop	
	sub	rax, rcx
	mov	qword ptr [rbp - 0x48], rax
	cmp	qword ptr [rbp - 0x48], 1
	jae	.label_1810
	mov	eax, 1
	mov	rsp, rsp
	mov	esi, eax
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x38]
	call	_obstack_newchunk
.label_1810:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x38]
	mov	rsp, rsp
	mov	rcx, qword ptr [rax + 0x18]
	lea	rdi, [rdi]
	mov	rdx, rcx
	add	rdx, 1
	nop	
	mov	qword ptr [rax + 0x18], rdx
	lea	rdi, [rdi]
	mov	byte ptr [rcx], 0
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x10]
	call	save_token
.label_1821:
	mov	rsp, rsp
	jmp	.label_1813
.label_1816:
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 0x18
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x50], rax
	mov	rax, qword ptr [rbp - 0x50]
	mov	qword ptr [rbp - 0x58], rax
	mov	rax, qword ptr [rbp - 0x58]
	mov	rbp, rbp
	mov	rax, qword ptr [rax + 0x20]
	nop	
	mov	rcx, qword ptr [rbp - 0x58]
	nop	
	mov	rcx, qword ptr [rcx + 0x18]
	sub	rax, rcx
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x60], rax
	cmp	qword ptr [rbp - 0x60], 1
	jae	.label_1815
	lea	rdi, [rdi]
	mov	eax, 1
	lea	rdi, [rdi]
	mov	esi, eax
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x50]
	call	_obstack_newchunk
.label_1815:
	mov	eax, dword ptr [rbp - 0x14]
	mov	cl, al
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x50]
	mov	rsi, qword ptr [rdx + 0x18]
	mov	rdi, rsi
	mov	rbp, rbp
	add	rdi, 1
	mov	qword ptr [rdx + 0x18], rdi
	nop	
	mov	byte ptr [rsi], cl
	lea	rsi, [rsi]
	cmp	dword ptr [rbp - 0x14], 0
	nop	
	jne	.label_1814
	mov	rdi, qword ptr [rbp - 0x10]
	call	save_token
.label_1814:
	mov	rbp, rbp
	jmp	.label_1817
.label_1813:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	add	rax, 0x70
	mov	qword ptr [rbp - 0x68], rax
	nop	
	mov	rax, qword ptr [rbp - 0x68]
	mov	qword ptr [rbp - 0x70], rax
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x70]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax + 0x20]
	mov	rcx, qword ptr [rbp - 0x70]
	mov	rcx, qword ptr [rcx + 0x18]
	sub	rax, rcx
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x78], rax
	cmp	qword ptr [rbp - 0x78], 8
	jae	.label_1819
	lea	rsi, [rsi]
	mov	eax, 8
	mov	rbp, rbp
	mov	esi, eax
	mov	rdi, qword ptr [rbp - 0x68]
	nop	
	call	_obstack_newchunk
.label_1819:
	nop	
	mov	rax, qword ptr [rbp - 0x68]
	mov	qword ptr [rbp - 0x80], rax
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x80]
	mov	rax, qword ptr [rax + 0x18]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x88], rax
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x88]
	mov	qword ptr [rax], 0
	mov	rax, qword ptr [rbp - 0x80]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rax + 0x18]
	mov	rsp, rsp
	add	rcx, 8
	nop	
	mov	qword ptr [rax + 0x18], rcx
	mov	rax, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	add	rax, 0x70
	mov	qword ptr [rbp - 0x90], rax
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x90]
	mov	rax, qword ptr [rax + 0x10]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x98], rax
	nop	
	mov	rax, qword ptr [rbp - 0x90]
	mov	rax, qword ptr [rax + 0x18]
	mov	rsp, rsp
	cmp	rax, qword ptr [rbp - 0x98]
	jne	.label_1812
	nop	
	mov	rax, qword ptr [rbp - 0x90]
	mov	rbp, rbp
	mov	cl, byte ptr [rax + 0x50]
	mov	rbp, rbp
	and	cl, 0xfd
	lea	rdi, [rdi]
	or	cl, 2
	lea	rsi, [rsi]
	mov	byte ptr [rax + 0x50], cl
.label_1812:
	xor	eax, eax
	lea	rsi, [rsi]
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x90]
	mov	rsp, rsp
	mov	rdx, qword ptr [rdx + 0x18]
	sub	rdx, 0
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x90]
	add	rdx, qword ptr [rsi + 0x30]
	mov	rsi, qword ptr [rbp - 0x90]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rsi + 0x30]
	xor	rsi, 0xffffffffffffffff
	mov	rbp, rbp
	and	rdx, rsi
	mov	rsp, rsp
	add	rcx, rdx
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x90]
	mov	qword ptr [rdx + 0x18], rcx
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x90]
	mov	rcx, qword ptr [rcx + 0x18]
	mov	rdx, qword ptr [rbp - 0x90]
	mov	rbp, rbp
	mov	rdx, qword ptr [rdx + 8]
	sub	rcx, rdx
	nop	
	mov	rdx, qword ptr [rbp - 0x90]
	mov	rdx, qword ptr [rdx + 0x20]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x90]
	mov	rbp, rbp
	mov	rsi, qword ptr [rsi + 8]
	sub	rdx, rsi
	cmp	rcx, rdx
	nop	
	jbe	.label_1820
	nop	
	mov	rax, qword ptr [rbp - 0x90]
	mov	rax, qword ptr [rax + 0x20]
	mov	rcx, qword ptr [rbp - 0x90]
	mov	qword ptr [rcx + 0x18], rax
.label_1820:
	mov	rax, qword ptr [rbp - 0x90]
	mov	rax, qword ptr [rax + 0x18]
	nop	
	mov	rcx, qword ptr [rbp - 0x90]
	mov	qword ptr [rcx + 0x10], rax
	mov	rax, qword ptr [rbp - 0x98]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0xa0], rax
	nop	
	mov	rax, qword ptr [rbp - 0xa0]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rcx + 8], rax
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	add	rax, 0xc8
	mov	rbp, rbp
	mov	qword ptr [rbp - 0xa8], rax
	nop	
	mov	rax, qword ptr [rbp - 0xa8]
	nop	
	mov	rax, qword ptr [rax + 0x10]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0xb0], rax
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0xa8]
	mov	rax, qword ptr [rax + 0x18]
	nop	
	cmp	rax, qword ptr [rbp - 0xb0]
	jne	.label_1818
	mov	rax, qword ptr [rbp - 0xa8]
	mov	cl, byte ptr [rax + 0x50]
	lea	rdi, [rdi]
	and	cl, 0xfd
	or	cl, 2
	lea	rdi, [rdi]
	mov	byte ptr [rax + 0x50], cl
.label_1818:
	xor	eax, eax
	lea	rdi, [rdi]
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0xa8]
	mov	rsp, rsp
	mov	rdx, qword ptr [rdx + 0x18]
	lea	rsi, [rsi]
	sub	rdx, 0
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0xa8]
	nop	
	add	rdx, qword ptr [rsi + 0x30]
	mov	rsi, qword ptr [rbp - 0xa8]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rsi + 0x30]
	xor	rsi, 0xffffffffffffffff
	mov	rbp, rbp
	and	rdx, rsi
	lea	rsi, [rsi]
	add	rcx, rdx
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0xa8]
	mov	rbp, rbp
	mov	qword ptr [rdx + 0x18], rcx
	nop	
	mov	rcx, qword ptr [rbp - 0xa8]
	mov	rcx, qword ptr [rcx + 0x18]
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0xa8]
	mov	rbp, rbp
	mov	rdx, qword ptr [rdx + 8]
	nop	
	sub	rcx, rdx
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0xa8]
	mov	rsp, rsp
	mov	rdx, qword ptr [rdx + 0x20]
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0xa8]
	mov	rsp, rsp
	mov	rsi, qword ptr [rsi + 8]
	lea	rsi, [rsi]
	sub	rdx, rsi
	lea	rsi, [rsi]
	cmp	rcx, rdx
	nop	
	jbe	.label_1811
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0xa8]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax + 0x20]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0xa8]
	mov	qword ptr [rcx + 0x18], rax
.label_1811:
	mov	rax, qword ptr [rbp - 0xa8]
	mov	rax, qword ptr [rax + 0x18]
	mov	rcx, qword ptr [rbp - 0xa8]
	nop	
	mov	qword ptr [rcx + 0x10], rax
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0xb0]
	mov	qword ptr [rbp - 0xb8], rax
	mov	rax, qword ptr [rbp - 0xb8]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rcx + 0x10], rax
	mov	rdi, qword ptr [rbp - 8]
	mov	rsp, rsp
	call	ferror
	cmp	eax, 0
	lea	rdi, [rdi]
	setne	dl
	nop	
	xor	dl, 0xff
	and	dl, 1
	lea	rdi, [rdi]
	movzx	eax, dl
	mov	rsp, rsp
	add	rsp, 0xc0
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x41e580

	.globl save_token
	.type save_token, @function
save_token:
	push	rbp
	mov	rbp, rsp
	lea	rdi, [rdi]
	sub	rsp, 0x90
	nop	
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	mov	rsp, rsp
	add	rdi, 0x18
	nop	
	mov	qword ptr [rbp - 0x18], rdi
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rdi, qword ptr [rdi + 0x18]
	mov	rax, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax + 0x10]
	sub	rdi, rax
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x20], rdi
	mov	rax, qword ptr [rbp - 0x20]
	sub	rax, 1
	mov	qword ptr [rbp - 0x10], rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 8]
	add	rax, 0x18
	mov	qword ptr [rbp - 0x30], rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x30]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax + 0x10]
	mov	qword ptr [rbp - 0x38], rax
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x30]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax + 0x18]
	mov	rsp, rsp
	cmp	rax, qword ptr [rbp - 0x38]
	mov	rbp, rbp
	jne	.label_1822
	mov	rax, qword ptr [rbp - 0x30]
	nop	
	mov	cl, byte ptr [rax + 0x50]
	and	cl, 0xfd
	lea	rdi, [rdi]
	or	cl, 2
	nop	
	mov	byte ptr [rax + 0x50], cl
.label_1822:
	nop	
	xor	eax, eax
	lea	rsi, [rsi]
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x30]
	mov	rdx, qword ptr [rdx + 0x18]
	sub	rdx, 0
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x30]
	mov	rbp, rbp
	add	rdx, qword ptr [rsi + 0x30]
	mov	rsi, qword ptr [rbp - 0x30]
	mov	rsi, qword ptr [rsi + 0x30]
	xor	rsi, 0xffffffffffffffff
	mov	rbp, rbp
	and	rdx, rsi
	add	rcx, rdx
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x30]
	lea	rdi, [rdi]
	mov	qword ptr [rdx + 0x18], rcx
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rcx + 0x18]
	mov	rdx, qword ptr [rbp - 0x30]
	mov	rdx, qword ptr [rdx + 8]
	sub	rcx, rdx
	nop	
	mov	rdx, qword ptr [rbp - 0x30]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rdx + 0x20]
	nop	
	mov	rsi, qword ptr [rbp - 0x30]
	mov	rsi, qword ptr [rsi + 8]
	sub	rdx, rsi
	mov	rbp, rbp
	cmp	rcx, rdx
	lea	rdi, [rdi]
	jbe	.label_1824
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x30]
	mov	rax, qword ptr [rax + 0x20]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x30]
	mov	qword ptr [rcx + 0x18], rax
.label_1824:
	mov	rax, qword ptr [rbp - 0x30]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax + 0x18]
	mov	rcx, qword ptr [rbp - 0x30]
	mov	qword ptr [rcx + 0x10], rax
	mov	rax, qword ptr [rbp - 0x38]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x40], rax
	mov	rax, qword ptr [rbp - 0x40]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x28], rax
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	add	rax, 0x70
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x48], rax
	mov	rax, qword ptr [rbp - 0x48]
	nop	
	mov	qword ptr [rbp - 0x50], rax
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x50]
	mov	rax, qword ptr [rax + 0x20]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x50]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rcx + 0x18]
	mov	rsp, rsp
	sub	rax, rcx
	nop	
	mov	qword ptr [rbp - 0x58], rax
	cmp	qword ptr [rbp - 0x58], 8
	jae	.label_1825
	nop	
	mov	eax, 8
	mov	esi, eax
	mov	rdi, qword ptr [rbp - 0x48]
	call	_obstack_newchunk
.label_1825:
	mov	rax, qword ptr [rbp - 0x48]
	nop	
	mov	qword ptr [rbp - 0x60], rax
	nop	
	mov	rax, qword ptr [rbp - 0x60]
	mov	rsp, rsp
	mov	rax, qword ptr [rax + 0x18]
	mov	qword ptr [rbp - 0x68], rax
	mov	rax, qword ptr [rbp - 0x28]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x68]
	mov	rsp, rsp
	mov	qword ptr [rcx], rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x60]
	mov	rbp, rbp
	mov	rcx, qword ptr [rax + 0x18]
	add	rcx, 8
	mov	qword ptr [rax + 0x18], rcx
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 8]
	mov	rbp, rbp
	add	rax, 0xc8
	mov	qword ptr [rbp - 0x70], rax
	nop	
	mov	qword ptr [rbp - 0x78], 8
	mov	rax, qword ptr [rbp - 0x70]
	mov	qword ptr [rbp - 0x80], rax
	mov	rax, qword ptr [rbp - 0x80]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax + 0x20]
	mov	rcx, qword ptr [rbp - 0x80]
	mov	rsp, rsp
	mov	rcx, qword ptr [rcx + 0x18]
	sub	rax, rcx
	mov	qword ptr [rbp - 0x88], rax
	mov	rax, qword ptr [rbp - 0x88]
	cmp	rax, qword ptr [rbp - 0x78]
	jae	.label_1823
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x70]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x78]
	call	_obstack_newchunk
.label_1823:
	mov	rbp, rbp
	lea	rax, [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 0x70]
	mov	rdi, qword ptr [rcx + 0x18]
	mov	rdx, qword ptr [rbp - 0x78]
	mov	rsi, rax
	lea	rdi, [rdi]
	call	memcpy
	mov	rax, qword ptr [rbp - 0x78]
	mov	rcx, qword ptr [rbp - 0x70]
	add	rax, qword ptr [rcx + 0x18]
	mov	rbp, rbp
	mov	qword ptr [rcx + 0x18], rax
	mov	rax, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rax]
	add	rcx, 1
	lea	rsi, [rsi]
	mov	qword ptr [rax], rcx
	lea	rsi, [rsi]
	add	rsp, 0x90
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x41e840
	.globl mkstemp_safer
	.type mkstemp_safer, @function
mkstemp_safer:

	push	rbp
	mov	rbp, rsp
	lea	rsi, [rsi]
	sub	rsp, 0x10
	mov	qword ptr [rbp - 8], rdi
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 8]
	call	mkstemp
	lea	rsi, [rsi]
	mov	edi, eax
	lea	rsi, [rsi]
	call	fd_safer
	add	rsp, 0x10
	pop	rbp
	mov	rbp, rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x41e880

	.globl mkostemp_safer
	.type mkostemp_safer, @function
mkostemp_safer:
	lea	rdi, [rdi]
	push	rbp
	mov	rbp, rsp
	nop	
	sub	rsp, 0x10
	mov	rsp, rsp
	mov	qword ptr [rbp - 8], rdi
	mov	dword ptr [rbp - 0xc], esi
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 8]
	mov	esi, dword ptr [rbp - 0xc]
	mov	rbp, rbp
	call	mkostemp
	mov	esi, dword ptr [rbp - 0xc]
	mov	rbp, rbp
	mov	edi, eax
	lea	rdi, [rdi]
	call	fd_safer_flag
	mov	rbp, rbp
	add	rsp, 0x10
	lea	rsi, [rsi]
	pop	rbp
	nop	
	ret	
	.section	.text
	.align	16
	#Procedure 0x41e8d0

	.globl strnumcmp
	.type strnumcmp, @function
strnumcmp:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	dword ptr [rbp - 0x14], edx
	mov	dword ptr [rbp - 0x18], ecx
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	edx, dword ptr [rbp - 0x14]
	mov	ecx, dword ptr [rbp - 0x18]
	call	numcompare_0
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x41e900

	.globl numcompare_0
	.type numcompare_0, @function
numcompare_0:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x50
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	dword ptr [rbp - 0x1c], edx
	mov	dword ptr [rbp - 0x20], ecx
	mov	rsi, qword ptr [rbp - 0x10]
	mov	al, byte ptr [rsi]
	mov	byte ptr [rbp - 0x21], al
	mov	rsi, qword ptr [rbp - 0x18]
	mov	al, byte ptr [rsi]
	mov	byte ptr [rbp - 0x22], al
	movzx	ecx, byte ptr [rbp - 0x21]
	cmp	ecx, 0x2d
	jne	.label_1826
	jmp	.label_1847
.label_1847:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 0x10], rcx
	mov	dl, byte ptr [rax + 1]
	mov	byte ptr [rbp - 0x21], dl
	mov	al, 1
	movzx	ecx, byte ptr [rbp - 0x21]
	cmp	ecx, 0x30
	mov	byte ptr [rbp - 0x39], al
	je	.label_1851
	movzx	eax, byte ptr [rbp - 0x21]
	cmp	eax, dword ptr [rbp - 0x20]
	sete	cl
	mov	byte ptr [rbp - 0x39], cl
.label_1851:
	mov	al, byte ptr [rbp - 0x39]
	test	al, 1
	jne	.label_1847
	movzx	eax, byte ptr [rbp - 0x22]
	cmp	eax, 0x2d
	je	.label_1868
	movzx	eax, byte ptr [rbp - 0x21]
	cmp	eax, dword ptr [rbp - 0x1c]
	jne	.label_1870
	jmp	.label_1872
.label_1872:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 0x10], rcx
	mov	dl, byte ptr [rax + 1]
	mov	byte ptr [rbp - 0x21], dl
	movzx	eax, byte ptr [rbp - 0x21]
	cmp	eax, 0x30
	je	.label_1872
	jmp	.label_1870
.label_1870:
	movzx	eax, byte ptr [rbp - 0x21]
	sub	eax, 0x30
	cmp	eax, 9
	ja	.label_1883
	mov	dword ptr [rbp - 4], 0xffffffff
	jmp	.label_1849
.label_1883:
	jmp	.label_1830
.label_1830:
	mov	al, 1
	movzx	ecx, byte ptr [rbp - 0x22]
	cmp	ecx, 0x30
	mov	byte ptr [rbp - 0x3a], al
	je	.label_1891
	movzx	eax, byte ptr [rbp - 0x22]
	cmp	eax, dword ptr [rbp - 0x20]
	sete	cl
	mov	byte ptr [rbp - 0x3a], cl
.label_1891:
	mov	al, byte ptr [rbp - 0x3a]
	test	al, 1
	jne	.label_1899
	jmp	.label_1828
.label_1899:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 0x18], rcx
	mov	dl, byte ptr [rax + 1]
	mov	byte ptr [rbp - 0x22], dl
	jmp	.label_1830
.label_1828:
	movzx	eax, byte ptr [rbp - 0x22]
	cmp	eax, dword ptr [rbp - 0x1c]
	jne	.label_1841
	jmp	.label_1848
.label_1848:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 0x18], rcx
	mov	dl, byte ptr [rax + 1]
	mov	byte ptr [rbp - 0x22], dl
	movzx	eax, byte ptr [rbp - 0x22]
	cmp	eax, 0x30
	je	.label_1848
	jmp	.label_1841
.label_1841:
	xor	eax, eax
	movzx	ecx, byte ptr [rbp - 0x22]
	sub	ecx, 0x30
	cmp	ecx, 9
	setbe	dl
	and	dl, 1
	movzx	ecx, dl
	sub	eax, ecx
	mov	dword ptr [rbp - 4], eax
	jmp	.label_1849
.label_1868:
	jmp	.label_1839
.label_1839:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 0x18], rcx
	mov	dl, byte ptr [rax + 1]
	mov	byte ptr [rbp - 0x22], dl
	mov	al, 1
	movzx	ecx, byte ptr [rbp - 0x22]
	cmp	ecx, 0x30
	mov	byte ptr [rbp - 0x3b], al
	je	.label_1837
	movzx	eax, byte ptr [rbp - 0x22]
	cmp	eax, dword ptr [rbp - 0x20]
	sete	cl
	mov	byte ptr [rbp - 0x3b], cl
.label_1837:
	mov	al, byte ptr [rbp - 0x3b]
	test	al, 1
	jne	.label_1839
	jmp	.label_1856
.label_1856:
	xor	eax, eax
	mov	cl, al
	movzx	eax, byte ptr [rbp - 0x21]
	movzx	edx, byte ptr [rbp - 0x22]
	cmp	eax, edx
	mov	byte ptr [rbp - 0x3c], cl
	jne	.label_1887
	movzx	eax, byte ptr [rbp - 0x21]
	sub	eax, 0x30
	cmp	eax, 9
	setbe	cl
	mov	byte ptr [rbp - 0x3c], cl
.label_1887:
	mov	al, byte ptr [rbp - 0x3c]
	test	al, 1
	jne	.label_1895
	jmp	.label_1898
.label_1895:
	jmp	.label_1827
.label_1827:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 0x10], rcx
	mov	dl, byte ptr [rax + 1]
	mov	byte ptr [rbp - 0x21], dl
	movzx	eax, byte ptr [rbp - 0x21]
	cmp	eax, dword ptr [rbp - 0x20]
	je	.label_1827
	jmp	.label_1840
.label_1840:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 0x18], rcx
	mov	dl, byte ptr [rax + 1]
	mov	byte ptr [rbp - 0x22], dl
	movzx	eax, byte ptr [rbp - 0x22]
	cmp	eax, dword ptr [rbp - 0x20]
	je	.label_1840
	jmp	.label_1856
.label_1898:
	movzx	eax, byte ptr [rbp - 0x21]
	cmp	eax, dword ptr [rbp - 0x1c]
	jne	.label_1858
	movzx	eax, byte ptr [rbp - 0x22]
	sub	eax, 0x30
	cmp	eax, 9
	ja	.label_1862
.label_1858:
	movzx	eax, byte ptr [rbp - 0x22]
	cmp	eax, dword ptr [rbp - 0x1c]
	jne	.label_1864
	movzx	eax, byte ptr [rbp - 0x21]
	sub	eax, 0x30
	cmp	eax, 9
	jbe	.label_1864
.label_1862:
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	eax, dword ptr [rbp - 0x1c]
	mov	cl, al
	movsx	edx, cl
	call	fraccompare
	mov	dword ptr [rbp - 4], eax
	jmp	.label_1849
.label_1864:
	movzx	eax, byte ptr [rbp - 0x22]
	movzx	ecx, byte ptr [rbp - 0x21]
	sub	eax, ecx
	mov	dword ptr [rbp - 0x28], eax
	mov	qword ptr [rbp - 0x30], 0
.label_1894:
	movzx	eax, byte ptr [rbp - 0x21]
	sub	eax, 0x30
	cmp	eax, 9
	ja	.label_1884
	jmp	.label_1890
.label_1890:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 0x10], rcx
	mov	dl, byte ptr [rax + 1]
	mov	byte ptr [rbp - 0x21], dl
	movzx	eax, byte ptr [rbp - 0x21]
	cmp	eax, dword ptr [rbp - 0x20]
	je	.label_1890
	jmp	.label_1888
.label_1888:
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, 1
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_1894
.label_1884:
	mov	qword ptr [rbp - 0x38], 0
.label_1857:
	movzx	eax, byte ptr [rbp - 0x22]
	sub	eax, 0x30
	cmp	eax, 9
	ja	.label_1831
	jmp	.label_1842
.label_1842:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 0x18], rcx
	mov	dl, byte ptr [rax + 1]
	mov	byte ptr [rbp - 0x22], dl
	movzx	eax, byte ptr [rbp - 0x22]
	cmp	eax, dword ptr [rbp - 0x20]
	je	.label_1842
	jmp	.label_1886
.label_1886:
	mov	rax, qword ptr [rbp - 0x38]
	add	rax, 1
	mov	qword ptr [rbp - 0x38], rax
	jmp	.label_1857
.label_1831:
	mov	rax, qword ptr [rbp - 0x30]
	cmp	rax, qword ptr [rbp - 0x38]
	je	.label_1855
	mov	eax, 0xffffffff
	mov	ecx, 1
	mov	rdx, qword ptr [rbp - 0x30]
	cmp	rdx, qword ptr [rbp - 0x38]
	cmovb	eax, ecx
	mov	dword ptr [rbp - 4], eax
	jmp	.label_1849
.label_1855:
	cmp	qword ptr [rbp - 0x30], 0
	jne	.label_1871
	mov	dword ptr [rbp - 4], 0
	jmp	.label_1849
.label_1871:
	mov	eax, dword ptr [rbp - 0x28]
	mov	dword ptr [rbp - 4], eax
	jmp	.label_1849
.label_1826:
	movzx	eax, byte ptr [rbp - 0x22]
	cmp	eax, 0x2d
	jne	.label_1879
	jmp	.label_1881
.label_1881:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 0x18], rcx
	mov	dl, byte ptr [rax + 1]
	mov	byte ptr [rbp - 0x22], dl
	mov	al, 1
	movzx	ecx, byte ptr [rbp - 0x22]
	cmp	ecx, 0x30
	mov	byte ptr [rbp - 0x3d], al
	je	.label_1885
	movzx	eax, byte ptr [rbp - 0x22]
	cmp	eax, dword ptr [rbp - 0x20]
	sete	cl
	mov	byte ptr [rbp - 0x3d], cl
.label_1885:
	mov	al, byte ptr [rbp - 0x3d]
	test	al, 1
	jne	.label_1881
	movzx	eax, byte ptr [rbp - 0x22]
	cmp	eax, dword ptr [rbp - 0x1c]
	jne	.label_1846
	jmp	.label_1829
.label_1829:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 0x18], rcx
	mov	dl, byte ptr [rax + 1]
	mov	byte ptr [rbp - 0x22], dl
	movzx	eax, byte ptr [rbp - 0x22]
	cmp	eax, 0x30
	je	.label_1829
	jmp	.label_1846
.label_1846:
	movzx	eax, byte ptr [rbp - 0x22]
	sub	eax, 0x30
	cmp	eax, 9
	ja	.label_1850
	mov	dword ptr [rbp - 4], 1
	jmp	.label_1849
.label_1850:
	jmp	.label_1859
.label_1859:
	mov	al, 1
	movzx	ecx, byte ptr [rbp - 0x21]
	cmp	ecx, 0x30
	mov	byte ptr [rbp - 0x3e], al
	je	.label_1860
	movzx	eax, byte ptr [rbp - 0x21]
	cmp	eax, dword ptr [rbp - 0x20]
	sete	cl
	mov	byte ptr [rbp - 0x3e], cl
.label_1860:
	mov	al, byte ptr [rbp - 0x3e]
	test	al, 1
	jne	.label_1866
	jmp	.label_1869
.label_1866:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 0x10], rcx
	mov	dl, byte ptr [rax + 1]
	mov	byte ptr [rbp - 0x21], dl
	jmp	.label_1859
.label_1869:
	movzx	eax, byte ptr [rbp - 0x21]
	cmp	eax, dword ptr [rbp - 0x1c]
	jne	.label_1877
	jmp	.label_1880
.label_1880:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 0x10], rcx
	mov	dl, byte ptr [rax + 1]
	mov	byte ptr [rbp - 0x21], dl
	movzx	eax, byte ptr [rbp - 0x21]
	cmp	eax, 0x30
	je	.label_1880
	jmp	.label_1877
.label_1877:
	movzx	eax, byte ptr [rbp - 0x21]
	sub	eax, 0x30
	cmp	eax, 9
	setbe	cl
	and	cl, 1
	movzx	eax, cl
	mov	dword ptr [rbp - 4], eax
	jmp	.label_1849
.label_1879:
	jmp	.label_1843
.label_1843:
	mov	al, 1
	movzx	ecx, byte ptr [rbp - 0x21]
	cmp	ecx, 0x30
	mov	byte ptr [rbp - 0x3f], al
	je	.label_1893
	movzx	eax, byte ptr [rbp - 0x21]
	cmp	eax, dword ptr [rbp - 0x20]
	sete	cl
	mov	byte ptr [rbp - 0x3f], cl
.label_1893:
	mov	al, byte ptr [rbp - 0x3f]
	test	al, 1
	jne	.label_1833
	jmp	.label_1838
.label_1833:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 0x10], rcx
	mov	dl, byte ptr [rax + 1]
	mov	byte ptr [rbp - 0x21], dl
	jmp	.label_1843
.label_1838:
	jmp	.label_1853
.label_1853:
	mov	al, 1
	movzx	ecx, byte ptr [rbp - 0x22]
	cmp	ecx, 0x30
	mov	byte ptr [rbp - 0x40], al
	je	.label_1854
	movzx	eax, byte ptr [rbp - 0x22]
	cmp	eax, dword ptr [rbp - 0x20]
	sete	cl
	mov	byte ptr [rbp - 0x40], cl
.label_1854:
	mov	al, byte ptr [rbp - 0x40]
	test	al, 1
	jne	.label_1863
	jmp	.label_1865
.label_1863:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 0x18], rcx
	mov	dl, byte ptr [rax + 1]
	mov	byte ptr [rbp - 0x22], dl
	jmp	.label_1853
.label_1865:
	jmp	.label_1834
.label_1834:
	xor	eax, eax
	mov	cl, al
	movzx	eax, byte ptr [rbp - 0x21]
	movzx	edx, byte ptr [rbp - 0x22]
	cmp	eax, edx
	mov	byte ptr [rbp - 0x41], cl
	jne	.label_1873
	movzx	eax, byte ptr [rbp - 0x21]
	sub	eax, 0x30
	cmp	eax, 9
	setbe	cl
	mov	byte ptr [rbp - 0x41], cl
.label_1873:
	mov	al, byte ptr [rbp - 0x41]
	test	al, 1
	jne	.label_1867
	jmp	.label_1882
.label_1867:
	jmp	.label_1889
.label_1889:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 0x10], rcx
	mov	dl, byte ptr [rax + 1]
	mov	byte ptr [rbp - 0x21], dl
	movzx	eax, byte ptr [rbp - 0x21]
	cmp	eax, dword ptr [rbp - 0x20]
	je	.label_1889
	jmp	.label_1897
.label_1897:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 0x18], rcx
	mov	dl, byte ptr [rax + 1]
	mov	byte ptr [rbp - 0x22], dl
	movzx	eax, byte ptr [rbp - 0x22]
	cmp	eax, dword ptr [rbp - 0x20]
	je	.label_1897
	jmp	.label_1834
.label_1882:
	movzx	eax, byte ptr [rbp - 0x21]
	cmp	eax, dword ptr [rbp - 0x1c]
	jne	.label_1836
	movzx	eax, byte ptr [rbp - 0x22]
	sub	eax, 0x30
	cmp	eax, 9
	ja	.label_1844
.label_1836:
	movzx	eax, byte ptr [rbp - 0x22]
	cmp	eax, dword ptr [rbp - 0x1c]
	jne	.label_1852
	movzx	eax, byte ptr [rbp - 0x21]
	sub	eax, 0x30
	cmp	eax, 9
	jbe	.label_1852
.label_1844:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	eax, dword ptr [rbp - 0x1c]
	mov	cl, al
	movsx	edx, cl
	call	fraccompare
	mov	dword ptr [rbp - 4], eax
	jmp	.label_1849
.label_1852:
	movzx	eax, byte ptr [rbp - 0x21]
	movzx	ecx, byte ptr [rbp - 0x22]
	sub	eax, ecx
	mov	dword ptr [rbp - 0x28], eax
	mov	qword ptr [rbp - 0x30], 0
.label_1876:
	movzx	eax, byte ptr [rbp - 0x21]
	sub	eax, 0x30
	cmp	eax, 9
	ja	.label_1878
	jmp	.label_1874
.label_1874:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 0x10], rcx
	mov	dl, byte ptr [rax + 1]
	mov	byte ptr [rbp - 0x21], dl
	movzx	eax, byte ptr [rbp - 0x21]
	cmp	eax, dword ptr [rbp - 0x20]
	je	.label_1874
	jmp	.label_1875
.label_1875:
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, 1
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_1876
.label_1878:
	mov	qword ptr [rbp - 0x38], 0
.label_1835:
	movzx	eax, byte ptr [rbp - 0x22]
	sub	eax, 0x30
	cmp	eax, 9
	ja	.label_1892
	jmp	.label_1896
.label_1896:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 0x18], rcx
	mov	dl, byte ptr [rax + 1]
	mov	byte ptr [rbp - 0x22], dl
	movzx	eax, byte ptr [rbp - 0x22]
	cmp	eax, dword ptr [rbp - 0x20]
	je	.label_1896
	jmp	.label_1832
.label_1832:
	mov	rax, qword ptr [rbp - 0x38]
	add	rax, 1
	mov	qword ptr [rbp - 0x38], rax
	jmp	.label_1835
.label_1892:
	mov	rax, qword ptr [rbp - 0x30]
	cmp	rax, qword ptr [rbp - 0x38]
	je	.label_1845
	mov	eax, 1
	mov	ecx, 0xffffffff
	mov	rdx, qword ptr [rbp - 0x30]
	cmp	rdx, qword ptr [rbp - 0x38]
	cmovb	eax, ecx
	mov	dword ptr [rbp - 4], eax
	jmp	.label_1849
.label_1845:
	cmp	qword ptr [rbp - 0x30], 0
	jne	.label_1861
	mov	dword ptr [rbp - 4], 0
	jmp	.label_1849
.label_1861:
	mov	eax, dword ptr [rbp - 0x28]
	mov	dword ptr [rbp - 4], eax
.label_1849:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x50
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x41f090

	.globl fraccompare
	.type fraccompare, @function
fraccompare:
	push	rbp
	mov	rbp, rsp
	mov	al, dl
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	byte ptr [rbp - 0x19], al
	mov	rsi, qword ptr [rbp - 0x10]
	movsx	edx, byte ptr [rsi]
	movsx	ecx, byte ptr [rbp - 0x19]
	cmp	edx, ecx
	jne	.label_1906
	mov	rax, qword ptr [rbp - 0x18]
	movsx	ecx, byte ptr [rax]
	movsx	edx, byte ptr [rbp - 0x19]
	cmp	ecx, edx
	jne	.label_1906
	jmp	.label_1903
.label_1903:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 0x10], rcx
	movsx	edx, byte ptr [rax + 1]
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 0x18], rcx
	movsx	esi, byte ptr [rax + 1]
	cmp	edx, esi
	jne	.label_1905
	mov	rax, qword ptr [rbp - 0x10]
	movsx	ecx, byte ptr [rax]
	sub	ecx, 0x30
	cmp	ecx, 9
	jbe	.label_1916
	mov	dword ptr [rbp - 4], 0
	jmp	.label_1902
.label_1916:
	jmp	.label_1903
.label_1905:
	mov	rax, qword ptr [rbp - 0x10]
	movsx	ecx, byte ptr [rax]
	sub	ecx, 0x30
	cmp	ecx, 9
	ja	.label_1910
	mov	rax, qword ptr [rbp - 0x18]
	movsx	ecx, byte ptr [rax]
	sub	ecx, 0x30
	cmp	ecx, 9
	ja	.label_1910
	mov	rax, qword ptr [rbp - 0x10]
	movsx	ecx, byte ptr [rax]
	mov	rax, qword ptr [rbp - 0x18]
	movsx	edx, byte ptr [rax]
	sub	ecx, edx
	mov	dword ptr [rbp - 4], ecx
	jmp	.label_1902
.label_1910:
	mov	rax, qword ptr [rbp - 0x10]
	movsx	ecx, byte ptr [rax]
	sub	ecx, 0x30
	cmp	ecx, 9
	ja	.label_1908
	jmp	.label_1913
.label_1908:
	mov	rax, qword ptr [rbp - 0x18]
	movsx	ecx, byte ptr [rax]
	sub	ecx, 0x30
	cmp	ecx, 9
	ja	.label_1915
	jmp	.label_1909
.label_1915:
	mov	dword ptr [rbp - 4], 0
	jmp	.label_1902
.label_1906:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 0x10], rcx
	movsx	edx, byte ptr [rax]
	movsx	esi, byte ptr [rbp - 0x19]
	cmp	edx, esi
	jne	.label_1907
	jmp	.label_1913
.label_1913:
	jmp	.label_1901
.label_1901:
	mov	rax, qword ptr [rbp - 0x10]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0x30
	jne	.label_1900
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 1
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_1901
.label_1900:
	mov	rax, qword ptr [rbp - 0x10]
	movsx	ecx, byte ptr [rax]
	sub	ecx, 0x30
	cmp	ecx, 9
	setbe	dl
	and	dl, 1
	movzx	ecx, dl
	mov	dword ptr [rbp - 4], ecx
	jmp	.label_1902
.label_1907:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 0x18], rcx
	movsx	edx, byte ptr [rax]
	movsx	esi, byte ptr [rbp - 0x19]
	cmp	edx, esi
	jne	.label_1917
	jmp	.label_1909
.label_1909:
	jmp	.label_1904
.label_1904:
	mov	rax, qword ptr [rbp - 0x18]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0x30
	jne	.label_1911
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 1
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_1904
.label_1911:
	xor	eax, eax
	mov	rcx, qword ptr [rbp - 0x18]
	movsx	edx, byte ptr [rcx]
	sub	edx, 0x30
	cmp	edx, 9
	setbe	sil
	and	sil, 1
	movzx	edx, sil
	sub	eax, edx
	mov	dword ptr [rbp - 4], eax
	jmp	.label_1902
.label_1917:
	jmp	.label_1912
.label_1912:
	jmp	.label_1914
.label_1914:
	mov	dword ptr [rbp - 4], 0
.label_1902:
	mov	eax, dword ptr [rbp - 4]
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x41f290

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
	jg	.label_1918
	cmp	dword ptr [rbp - 4], 2
	jg	.label_1918
	mov	edi, dword ptr [rbp - 4]
	call	dup_safer
	mov	rsp, rsp
	mov	dword ptr [rbp - 8], eax
	call	__errno_location
	nop	
	mov	edi, dword ptr [rax]
	mov	rsp, rsp
	mov	dword ptr [rbp - 0xc], edi
	mov	edi, dword ptr [rbp - 4]
	call	close
	mov	rsp, rsp
	mov	edi, dword ptr [rbp - 0xc]
	mov	dword ptr [rbp - 0x10], eax
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x14], edi
	lea	rsi, [rsi]
	call	__errno_location
	nop	
	mov	edi, dword ptr [rbp - 0x14]
	mov	dword ptr [rax], edi
	mov	edi, dword ptr [rbp - 8]
	mov	rsp, rsp
	mov	dword ptr [rbp - 4], edi
.label_1918:
	mov	eax, dword ptr [rbp - 4]
	mov	rsp, rsp
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x41f320

	.globl version_etc_arn
	.type version_etc_arn, @function
version_etc_arn:
	nop	
	push	rbp
	mov	rbp, rsp
	push	r14
	mov	rbp, rbp
	push	rbx
	sub	rsp, 0x180
	mov	qword ptr [rbp - 0x18], rdi
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x20], rsi
	mov	qword ptr [rbp - 0x28], rdx
	mov	qword ptr [rbp - 0x30], rcx
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x38], r8
	mov	qword ptr [rbp - 0x40], r9
	cmp	qword ptr [rbp - 0x20], 0
	je	.label_1922
	movabs	rsi, OFFSET FLAT:.str_13
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x18]
	nop	
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	mov	r8, qword ptr [rbp - 0x30]
	lea	rsi, [rsi]
	mov	al, 0
	lea	rdi, [rdi]
	call	fprintf
	mov	dword ptr [rbp - 0x44], eax
	lea	rsi, [rsi]
	jmp	.label_1921
.label_1922:
	lea	rdi, [rdi]
	movabs	rsi, OFFSET FLAT:.str.1_8
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 0x28]
	nop	
	mov	rcx, qword ptr [rbp - 0x30]
	mov	rbp, rbp
	mov	al, 0
	call	fprintf
	mov	dword ptr [rbp - 0x48], eax
.label_1921:
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x18]
	mov	eax, OFFSET FLAT:.str.2_4
	lea	rsi, [rsi]
	mov	ecx, eax
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x50], rdi
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
	mov	rdi, qword ptr [rbp - 0x50]
	lea	rsi, [rsi]
	mov	rdx, rax
	mov	al, r8b
	nop	
	call	fprintf
	nop	
	mov	ecx, OFFSET FLAT:.str.3_3
	mov	rbp, rbp
	mov	edi, ecx
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x54], eax
	lea	rdi, [rdi]
	call	gettext
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rdi, rax
	lea	rsi, [rsi]
	call	fputs_unlocked
	nop	
	mov	rdx, qword ptr [rbp - 0x40]
	lea	rsi, [rsi]
	mov	rsi, rdx
	sub	rsi, 9
	nop	
	mov	dword ptr [rbp - 0x58], eax
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x60], rdx
	mov	qword ptr [rbp - 0x68], rsi
	mov	rbp, rbp
	ja	.label_1923
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_1920]]
	jmp	rcx
.label_2391:
	jmp	.label_1919
.label_2392:
	mov	rbp, rbp
	movabs	rdi, OFFSET FLAT:.str.4_1
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x70], rax
	nop	
	call	gettext
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rdx, qword ptr [rdi]
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x70]
	mov	rsi, rax
	mov	al, 0
	lea	rdi, [rdi]
	call	fprintf
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x74], eax
	jmp	.label_1919
.label_2393:
	movabs	rdi, OFFSET FLAT:.str.5_0
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x80], rax
	lea	rsi, [rsi]
	call	gettext
	mov	rdi, qword ptr [rbp - 0x38]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rdi]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rdi + 8]
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x80]
	mov	rbp, rbp
	mov	rsi, rax
	mov	al, 0
	mov	rsp, rsp
	call	fprintf
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x84], eax
	lea	rsi, [rsi]
	jmp	.label_1919
.label_2394:
	mov	rsp, rsp
	movabs	rdi, OFFSET FLAT:.str.6_0
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x90], rax
	call	gettext
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x38]
	nop	
	mov	rdx, qword ptr [rdi]
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rdi + 8]
	nop	
	mov	rdi, qword ptr [rbp - 0x38]
	mov	r8, qword ptr [rdi + 0x10]
	mov	rdi, qword ptr [rbp - 0x90]
	mov	rbp, rbp
	mov	rsi, rax
	mov	rbp, rbp
	mov	al, 0
	call	fprintf
	nop	
	mov	dword ptr [rbp - 0x94], eax
	lea	rsi, [rsi]
	jmp	.label_1919
.label_2395:
	lea	rdi, [rdi]
	movabs	rdi, OFFSET FLAT:.str.7_0
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0xa0], rax
	call	gettext
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rdx, qword ptr [rdi]
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rdi + 8]
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rsp, rsp
	mov	r8, qword ptr [rdi + 0x10]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rsp, rsp
	mov	r9, qword ptr [rdi + 0x18]
	mov	rdi, qword ptr [rbp - 0xa0]
	nop	
	mov	rsi, rax
	mov	al, 0
	call	fprintf
	mov	dword ptr [rbp - 0xa4], eax
	jmp	.label_1919
.label_2396:
	nop	
	movabs	rdi, OFFSET FLAT:.str.8_0
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0xb0], rax
	mov	rsp, rsp
	call	gettext
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rdx, qword ptr [rdi]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rdi + 8]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rbp, rbp
	mov	r8, qword ptr [rdi + 0x10]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	r9, qword ptr [rdi + 0x18]
	nop	
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rdi, qword ptr [rdi + 0x20]
	mov	rsi, qword ptr [rbp - 0xb0]
	mov	qword ptr [rbp - 0xb8], rdi
	mov	rdi, rsi
	mov	rsi, rax
	mov	rax, qword ptr [rbp - 0xb8]
	mov	qword ptr [rsp], rax
	mov	rbp, rbp
	mov	al, 0
	call	fprintf
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0xbc], eax
	nop	
	jmp	.label_1919
.label_2397:
	nop	
	movabs	rdi, OFFSET FLAT:.str.9_0
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0xc8], rax
	mov	rbp, rbp
	call	gettext
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rdx, qword ptr [rdi]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rdi + 8]
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x38]
	mov	r8, qword ptr [rdi + 0x10]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rbp, rbp
	mov	r9, qword ptr [rdi + 0x18]
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x38]
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rdi + 0x20]
	nop	
	mov	rsi, qword ptr [rbp - 0x38]
	mov	rsi, qword ptr [rsi + 0x28]
	mov	r10, qword ptr [rbp - 0xc8]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0xd0], rdi
	mov	rdi, r10
	mov	qword ptr [rbp - 0xd8], rsi
	lea	rsi, [rsi]
	mov	rsi, rax
	mov	rax, qword ptr [rbp - 0xd0]
	mov	qword ptr [rsp], rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0xd8]
	mov	qword ptr [rsp + 8], rax
	mov	al, 0
	call	fprintf
	mov	dword ptr [rbp - 0xdc], eax
	jmp	.label_1919
.label_2398:
	mov	rbp, rbp
	movabs	rdi, OFFSET FLAT:.str.10_1
	mov	rax, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0xe8], rax
	lea	rsi, [rsi]
	call	gettext
	mov	rdi, qword ptr [rbp - 0x38]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rdi]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rdi + 8]
	mov	rdi, qword ptr [rbp - 0x38]
	nop	
	mov	r8, qword ptr [rdi + 0x10]
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	r9, qword ptr [rdi + 0x18]
	nop	
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rbp, rbp
	mov	rdi, qword ptr [rdi + 0x20]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x38]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rsi + 0x28]
	mov	r10, qword ptr [rbp - 0x38]
	mov	rbp, rbp
	mov	r10, qword ptr [r10 + 0x30]
	mov	r11, qword ptr [rbp - 0xe8]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0xf0], rdi
	mov	rsp, rsp
	mov	rdi, r11
	mov	qword ptr [rbp - 0xf8], rsi
	mov	rsp, rsp
	mov	rsi, rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0xf0]
	nop	
	mov	qword ptr [rsp], rax
	mov	rax, qword ptr [rbp - 0xf8]
	mov	qword ptr [rsp + 8], rax
	mov	qword ptr [rsp + 0x10], r10
	mov	al, 0
	nop	
	call	fprintf
	mov	dword ptr [rbp - 0xfc], eax
	nop	
	jmp	.label_1919
.label_2399:
	movabs	rdi, OFFSET FLAT:.str.11_1
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x108], rax
	call	gettext
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x38]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rdi]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rsp, rsp
	mov	rcx, qword ptr [rdi + 8]
	mov	rdi, qword ptr [rbp - 0x38]
	lea	rsi, [rsi]
	mov	r8, qword ptr [rdi + 0x10]
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x38]
	lea	rsi, [rsi]
	mov	r9, qword ptr [rdi + 0x18]
	mov	rdi, qword ptr [rbp - 0x38]
	nop	
	mov	rdi, qword ptr [rdi + 0x20]
	mov	rsi, qword ptr [rbp - 0x38]
	mov	rsi, qword ptr [rsi + 0x28]
	mov	r10, qword ptr [rbp - 0x38]
	lea	rsi, [rsi]
	mov	r10, qword ptr [r10 + 0x30]
	mov	rsp, rsp
	mov	r11, qword ptr [rbp - 0x38]
	lea	rsi, [rsi]
	mov	r11, qword ptr [r11 + 0x38]
	mov	rsp, rsp
	mov	rbx, qword ptr [rbp - 0x108]
	mov	qword ptr [rbp - 0x110], rdi
	mov	rdi, rbx
	nop	
	mov	qword ptr [rbp - 0x118], rsi
	mov	rsi, rax
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x110]
	mov	qword ptr [rsp], rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x118]
	mov	qword ptr [rsp + 8], rax
	mov	qword ptr [rsp + 0x10], r10
	mov	qword ptr [rsp + 0x18], r11
	lea	rsi, [rsi]
	mov	al, 0
	call	fprintf
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x11c], eax
	jmp	.label_1919
.label_2400:
	movabs	rdi, OFFSET FLAT:.str.12_1
	nop	
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x128], rax
	mov	rbp, rbp
	call	gettext
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rdx, qword ptr [rdi]
	nop	
	mov	rdi, qword ptr [rbp - 0x38]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rdi + 8]
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x38]
	lea	rsi, [rsi]
	mov	r8, qword ptr [rdi + 0x10]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	r9, qword ptr [rdi + 0x18]
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rdi, qword ptr [rdi + 0x20]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x38]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rsi + 0x28]
	mov	rsp, rsp
	mov	r10, qword ptr [rbp - 0x38]
	mov	r10, qword ptr [r10 + 0x30]
	nop	
	mov	r11, qword ptr [rbp - 0x38]
	lea	rdi, [rdi]
	mov	r11, qword ptr [r11 + 0x38]
	mov	rbx, qword ptr [rbp - 0x38]
	lea	rsi, [rsi]
	mov	rbx, qword ptr [rbx + 0x40]
	mov	rbp, rbp
	mov	r14, qword ptr [rbp - 0x128]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x130], rdi
	mov	rdi, r14
	mov	qword ptr [rbp - 0x138], rsi
	mov	rsi, rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x130]
	mov	qword ptr [rsp], rax
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x138]
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
	mov	dword ptr [rbp - 0x13c], eax
	jmp	.label_1919
.label_1923:
	movabs	rdi, OFFSET FLAT:.str.13_1
	mov	rax, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x148], rax
	lea	rdi, [rdi]
	call	gettext
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rsp, rsp
	mov	rdx, qword ptr [rdi]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rsp, rsp
	mov	rcx, qword ptr [rdi + 8]
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x38]
	nop	
	mov	r8, qword ptr [rdi + 0x10]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	r9, qword ptr [rdi + 0x18]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rdi, qword ptr [rdi + 0x20]
	nop	
	mov	rsi, qword ptr [rbp - 0x38]
	mov	rsi, qword ptr [rsi + 0x28]
	nop	
	mov	r10, qword ptr [rbp - 0x38]
	mov	r10, qword ptr [r10 + 0x30]
	mov	r11, qword ptr [rbp - 0x38]
	lea	rdi, [rdi]
	mov	r11, qword ptr [r11 + 0x38]
	mov	rbp, rbp
	mov	rbx, qword ptr [rbp - 0x38]
	mov	rbx, qword ptr [rbx + 0x40]
	mov	rsp, rsp
	mov	r14, qword ptr [rbp - 0x148]
	mov	qword ptr [rbp - 0x150], rdi
	mov	rdi, r14
	mov	qword ptr [rbp - 0x158], rsi
	mov	rsi, rax
	mov	rax, qword ptr [rbp - 0x150]
	mov	qword ptr [rsp], rax
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x158]
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
	mov	dword ptr [rbp - 0x15c], eax
.label_1919:
	lea	rdi, [rdi]
	add	rsp, 0x180
	pop	rbx
	nop	
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x41fa90
	.globl version_etc_ar
	.type version_etc_ar, @function
version_etc_ar:

	nop
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 8], rdi
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x10], rsi
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x18], rdx
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x20], rcx
	nop	
	mov	qword ptr [rbp - 0x28], r8
	mov	qword ptr [rbp - 0x30], 0
.label_1924:
	mov	rax, qword ptr [rbp - 0x30]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x28]
	cmp	qword ptr [rcx + rax*8], 0
	je	.label_1925
	mov	rbp, rbp
	jmp	.label_1926
.label_1926:
	nop	
	mov	rax, qword ptr [rbp - 0x30]
	mov	rbp, rbp
	add	rax, 1
	mov	qword ptr [rbp - 0x30], rax
	lea	rsi, [rsi]
	jmp	.label_1924
.label_1925:
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	mov	r8, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	mov	r9, qword ptr [rbp - 0x30]
	call	version_etc_arn
	nop	
	add	rsp, 0x30
	lea	rdi, [rdi]
	pop	rbp
	mov	rsp, rsp
	ret	
	.section	.text
	.align	16
	#Procedure 0x41fb40

	.globl version_etc_va
	.type version_etc_va, @function
version_etc_va:
	push	rbp
	mov	rbp, rsp
	nop	
	sub	rsp, 0xa0
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x20], rcx
	mov	qword ptr [rbp - 0x28], r8
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x30], 0
.label_1933:
	mov	rsp, rsp
	xor	eax, eax
	mov	rbp, rbp
	mov	cl, al
	nop	
	cmp	qword ptr [rbp - 0x30], 0xa
	mov	byte ptr [rbp - 0x81], cl
	jae	.label_1932
	mov	rax, qword ptr [rbp - 0x28]
	nop	
	mov	ecx, dword ptr [rax]
	nop	
	cmp	ecx, 0x28
	mov	qword ptr [rbp - 0x90], rax
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x94], ecx
	ja	.label_1928
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x94]
	mov	rsp, rsp
	movsxd	rcx, eax
	mov	rdx, qword ptr [rbp - 0x90]
	mov	rbp, rbp
	add	rcx, qword ptr [rdx + 0x10]
	add	eax, 8
	mov	dword ptr [rdx], eax
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0xa0], rcx
	jmp	.label_1929
.label_1928:
	nop	
	mov	rax, qword ptr [rbp - 0x90]
	mov	rsp, rsp
	mov	rcx, qword ptr [rax + 8]
	mov	rdx, rcx
	nop	
	add	rcx, 8
	mov	qword ptr [rax + 8], rcx
	mov	qword ptr [rbp - 0xa0], rdx
.label_1929:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0xa0]
	mov	rbp, rbp
	mov	rax, qword ptr [rax]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp + rcx*8 - 0x80], rax
	mov	rbp, rbp
	cmp	rax, 0
	setne	dl
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x81], dl
.label_1932:
	lea	rsi, [rsi]
	mov	al, byte ptr [rbp - 0x81]
	mov	rsp, rsp
	test	al, 1
	mov	rsp, rsp
	jne	.label_1931
	mov	rsp, rsp
	jmp	.label_1927
.label_1931:
	jmp	.label_1930
.label_1930:
	nop	
	mov	rax, qword ptr [rbp - 0x30]
	mov	rbp, rbp
	add	rax, 1
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_1933
.label_1927:
	nop	
	lea	r8, [rbp - 0x80]
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	mov	r9, qword ptr [rbp - 0x30]
	nop	
	call	version_etc_arn
	add	rsp, 0xa0
	mov	rbp, rbp
	pop	rbp
	mov	rbp, rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x41fca0

	.globl version_etc
	.type version_etc, @function
version_etc:
	push	rbp
	mov	rbp, rsp
	nop	
	sub	rsp, 0x1a0
	mov	rbp, rbp
	test	al, al
	lea	rsi, [rsi]
	movaps	xmmword ptr [rbp - 0x100], xmm7
	nop	
	movaps	xmmword ptr [rbp - 0x110], xmm6
	movaps	xmmword ptr [rbp - 0x120], xmm5
	nop	
	movaps	xmmword ptr [rbp - 0x130], xmm4
	nop	
	movaps	xmmword ptr [rbp - 0x140], xmm3
	movaps	xmmword ptr [rbp - 0x150], xmm2
	lea	rdi, [rdi]
	movaps	xmmword ptr [rbp - 0x160], xmm1
	movaps	xmmword ptr [rbp - 0x170], xmm0
	nop	
	mov	qword ptr [rbp - 0x178], rdi
	mov	qword ptr [rbp - 0x180], r9
	mov	qword ptr [rbp - 0x188], r8
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x190], rcx
	mov	qword ptr [rbp - 0x198], rdx
	mov	qword ptr [rbp - 0x1a0], rsi
	lea	rsi, [rsi]
	je	.label_1934
	movaps	xmm0, xmmword ptr [rbp - 0x170]
	mov	rsp, rsp
	movaps	xmmword ptr [rbp - 0xc0], xmm0
	lea	rdi, [rdi]
	movaps	xmm1, xmmword ptr [rbp - 0x160]
	movaps	xmmword ptr [rbp - 0xb0], xmm1
	lea	rdi, [rdi]
	movaps	xmm2, xmmword ptr [rbp - 0x150]
	mov	rbp, rbp
	movaps	xmmword ptr [rbp - 0xa0], xmm2
	movaps	xmm3, xmmword ptr [rbp - 0x140]
	movaps	xmmword ptr [rbp - 0x90], xmm3
	movaps	xmm4, xmmword ptr [rbp - 0x130]
	mov	rsp, rsp
	movaps	xmmword ptr [rbp - 0x80], xmm4
	lea	rdi, [rdi]
	movaps	xmm5, xmmword ptr [rbp - 0x120]
	mov	rbp, rbp
	movaps	xmmword ptr [rbp - 0x70], xmm5
	mov	rbp, rbp
	movaps	xmm6, xmmword ptr [rbp - 0x110]
	movaps	xmmword ptr [rbp - 0x60], xmm6
	mov	rsp, rsp
	movaps	xmm7, xmmword ptr [rbp - 0x100]
	mov	rbp, rbp
	movaps	xmmword ptr [rbp - 0x50], xmm7
.label_1934:
	mov	rax, qword ptr [rbp - 0x180]
	mov	qword ptr [rbp - 0xc8], rax
	mov	rcx, qword ptr [rbp - 0x188]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0xd0], rcx
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x190]
	mov	rsi, qword ptr [rbp - 0x198]
	mov	rdi, qword ptr [rbp - 0x1a0]
	nop	
	mov	r8, qword ptr [rbp - 0x178]
	mov	qword ptr [rbp - 8], r8
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], rdx
	lea	rdx, [rbp - 0xf0]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x30], rdx
	lea	rdx, [rbp + 0x10]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x38], rdx
	mov	dword ptr [rbp - 0x3c], 0x30
	mov	dword ptr [rbp - 0x40], 0x20
	mov	rdi, qword ptr [rbp - 8]
	nop	
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x20]
	lea	r8, [rbp - 0x40]
	call	version_etc_va
	add	rsp, 0x1a0
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x41fe50
	.globl emit_bug_reporting_address
	.type emit_bug_reporting_address, @function
emit_bug_reporting_address:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	lea	rsi, [rsi]
	movabs	rdi, OFFSET FLAT:.str.14_1
	lea	rsi, [rsi]
	call	gettext
	mov	rsp, rsp
	movabs	rsi, OFFSET FLAT:.str.15_1
	mov	rdi, rax
	mov	al, 0
	call	printf
	movabs	rdi, OFFSET FLAT:.str.16_1
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 4], eax
	call	gettext
	movabs	rsi, OFFSET FLAT:.str.17_0
	movabs	rdx, OFFSET FLAT:.str.18_0
	mov	rsp, rsp
	mov	rdi, rax
	mov	al, 0
	call	printf
	lea	rdi, [rdi]
	movabs	rdi, OFFSET FLAT:.str.19_0
	mov	dword ptr [rbp - 8], eax
	mov	rsp, rsp
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	mov	dword ptr [rbp - 0xc], eax
	mov	rsp, rsp
	add	rsp, 0x10
	mov	rbp, rbp
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x41ff00

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
	jae	.label_1935
	mov	rbp, rbp
	call	xalloc_die
.label_1935:
	mov	rax, qword ptr [rbp - 8]
	imul	rax, qword ptr [rbp - 0x10]
	nop	
	mov	rdi, rax
	call	xmalloc
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x41ff60

	.globl xmalloc
	.type xmalloc, @function
xmalloc:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 8], rdi
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	call	malloc
	mov	qword ptr [rbp - 0x10], rax
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0x10], 0
	mov	rbp, rbp
	jne	.label_1936
	cmp	qword ptr [rbp - 8], 0
	lea	rdi, [rdi]
	je	.label_1936
	lea	rdi, [rdi]
	call	xalloc_die
.label_1936:
	mov	rax, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	add	rsp, 0x10
	pop	rbp
	lea	rsi, [rsi]
	ret	
	.section	.text
	.align	16
	#Procedure 0x41ffc0
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
	mov	qword ptr [rbp - 8], rdi
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	rbp, rbp
	xor	ecx, ecx
	mov	rsp, rsp
	mov	edx, ecx
	div	qword ptr [rbp - 0x18]
	mov	rsp, rsp
	cmp	rax, qword ptr [rbp - 0x10]
	jae	.label_1937
.label_2441:
	mov	rsp, rsp
	call	xalloc_die
.label_1937:
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 8]
	nop	
	mov	rax, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	imul	rax, qword ptr [rbp - 0x18]
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
	.align	16
	#Procedure 0x420040

	.globl xrealloc
	.type xrealloc, @function
xrealloc:
	push	rbp
	mov	rbp, rsp
	nop	
	sub	rsp, 0x20
	mov	qword ptr [rbp - 0x10], rdi
	nop	
	mov	qword ptr [rbp - 0x18], rsi
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x18], 0
	lea	rdi, [rdi]
	jne	.label_1938
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0x10], 0
	lea	rsi, [rsi]
	je	.label_1938
	mov	rdi, qword ptr [rbp - 0x10]
	call	free
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 8], 0
	jmp	.label_1940
.label_1938:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	nop	
	call	realloc
	mov	qword ptr [rbp - 0x10], rax
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x10], 0
	mov	rsp, rsp
	jne	.label_1939
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x18], 0
	lea	rdi, [rdi]
	je	.label_1939
	lea	rsi, [rsi]
	call	xalloc_die
.label_1939:
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 8], rax
.label_1940:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x20
	pop	rbp
	lea	rdi, [rdi]
	ret	
	.section	.text
	.align	16
	#Procedure 0x4200f0

	.globl x2nrealloc
	.type x2nrealloc, @function
x2nrealloc:
	push	rbp
	nop	
	mov	rbp, rsp
	mov	rbp, rbp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x18], rdx
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rdx]
	mov	qword ptr [rbp - 0x20], rdx
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 8], 0
	lea	rdi, [rdi]
	jne	.label_1941
	cmp	qword ptr [rbp - 0x20], 0
	jne	.label_1943
	mov	eax, 0x80
	xor	ecx, ecx
	mov	rbp, rbp
	mov	edx, ecx
	div	qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x20], rax
	cmp	qword ptr [rbp - 0x20], 0
	mov	rbp, rbp
	setne	sil
	mov	rsp, rsp
	xor	sil, 0xff
	and	sil, 1
	movzx	ecx, sil
	movsxd	rax, ecx
	add	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x20], rax
.label_1943:
	mov	rbp, rbp
	movabs	rax, 0x7fffffffffffffff
	nop	
	xor	ecx, ecx
	mov	rbp, rbp
	mov	edx, ecx
	nop	
	div	qword ptr [rbp - 0x18]
	mov	rbp, rbp
	cmp	rax, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	jae	.label_1945
	call	xalloc_die
.label_1945:
	lea	rsi, [rsi]
	jmp	.label_1944
.label_1941:
	nop	
	movabs	rax, 0x5555555555555554
	lea	rsi, [rsi]
	xor	ecx, ecx
	lea	rsi, [rsi]
	mov	edx, ecx
	div	qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rbp - 0x20]
	ja	.label_1942
	call	xalloc_die
.label_1942:
	mov	rax, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	shr	rax, 1
	mov	rbp, rbp
	add	rax, 1
	mov	rbp, rbp
	add	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x20], rax
.label_1944:
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	qword ptr [rcx], rax
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 8]
	mov	rax, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	imul	rax, qword ptr [rbp - 0x18]
	nop	
	mov	rsi, rax
	call	xrealloc
	add	rsp, 0x20
	pop	rbp
	lea	rdi, [rdi]
	ret	
	.section	.text
	.align	16
	#Procedure 0x420220

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
	.align	16
	#Procedure 0x420250
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
	.align	16
	#Procedure 0x420290
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
	.align	16
	#Procedure 0x4202e0

	.globl xcalloc
	.type xcalloc, @function
xcalloc:
	mov	rbp, rbp
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	movabs	rax, 0x7fffffffffffffff
	nop	
	mov	qword ptr [rbp - 8], rdi
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x10], rsi
	nop	
	xor	ecx, ecx
	mov	edx, ecx
	div	qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rbp - 8]
	jb	.label_1946
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	call	calloc
	mov	qword ptr [rbp - 0x18], rax
	cmp	rax, 0
	jne	.label_1947
.label_1946:
	lea	rsi, [rsi]
	call	xalloc_die
.label_1947:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x18]
	nop	
	add	rsp, 0x20
	nop	
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x420350

	.globl xmemdup
	.type xmemdup, @function
xmemdup:
	lea	rsi, [rsi]
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	nop	
	mov	qword ptr [rbp - 8], rdi
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x10], rsi
	mov	rdi, qword ptr [rbp - 0x10]
	call	xmalloc
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 8]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rdi, rax
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x18], rax
	lea	rdi, [rdi]
	call	memcpy
	mov	rax, qword ptr [rbp - 0x18]
	add	rsp, 0x20
	pop	rbp
	mov	rbp, rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4203a0
	.globl xstrdup
	.type xstrdup, @function
xstrdup:

	push	rbp
	lea	rsi, [rsi]
	mov	rbp, rsp
	mov	rsp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x10], rdi
	mov	rbp, rbp
	mov	rdi, rax
	mov	rsp, rsp
	call	strlen
	mov	rsp, rsp
	add	rax, 1
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, rax
	lea	rdi, [rdi]
	call	xmemdup
	mov	rbp, rbp
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x420400

	.globl xalloc_die
	.type xalloc_die, @function
xalloc_die:
	mov	rbp, rbp
	push	rbp
	mov	rbp, rsp
	nop	
	sub	rsp, 0x10
	mov	rbp, rbp
	movabs	rdi, OFFSET FLAT:.str.1_9
	lea	rsi, [rsi]
	mov	eax,  dword ptr [dword ptr [exit_failure]]
	nop	
	mov	dword ptr [rbp - 4], eax
	call	gettext
	mov	rsp, rsp
	xor	esi, esi
	nop	
	movabs	rdx, OFFSET FLAT:.str_1
	mov	edi, dword ptr [rbp - 4]
	mov	rcx, rax
	mov	al, 0
	mov	rbp, rbp
	call	error
	call	abort
	.section	.text
	.align	16
	#Procedure 0x420460
	.globl xmemcoll
	.type xmemcoll, @function
xmemcoll:

	lea	rdi, [rdi]
	push	rbp
	mov	rbp, rsp
	nop	
	sub	rsp, 0x30
	mov	rbp, rbp
	mov	qword ptr [rbp - 8], rdi
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x18], rdx
	mov	qword ptr [rbp - 0x20], rcx
	mov	rdi, qword ptr [rbp - 8]
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	call	memcoll
	mov	dword ptr [rbp - 0x24], eax
	call	__errno_location
	lea	rsi, [rsi]
	mov	r8d, dword ptr [rax]
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x28], r8d
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x28], 0
	mov	rsp, rsp
	je	.label_1948
	mov	edi, dword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 8]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	mov	r8, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	call	collate_error
.label_1948:
	mov	eax, dword ptr [rbp - 0x24]
	mov	rbp, rbp
	add	rsp, 0x30
	mov	rbp, rbp
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x420500

	.globl collate_error
	.type collate_error, @function
collate_error:
	lea	rdi, [rdi]
	push	rbp
	mov	rsp, rsp
	mov	rbp, rsp
	lea	rsi, [rsi]
	sub	rsp, 0x40
	lea	rdi, [rdi]
	movabs	rax, OFFSET FLAT:.str_14
	mov	dword ptr [rbp - 4], edi
	mov	qword ptr [rbp - 0x10], rsi
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x18], rdx
	mov	qword ptr [rbp - 0x20], rcx
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x28], r8
	mov	esi, dword ptr [rbp - 4]
	mov	rbp, rbp
	mov	rdi, rax
	mov	dword ptr [rbp - 0x2c], esi
	mov	rbp, rbp
	call	gettext
	mov	rbp, rbp
	xor	edi, edi
	mov	rsp, rsp
	mov	esi, dword ptr [rbp - 0x2c]
	lea	rdi, [rdi]
	mov	rdx, rax
	mov	al, 0
	call	error
	movabs	rdi, OFFSET FLAT:.str.1_10
	mov	rsp, rsp
	call	gettext
	xor	esi, esi
	mov	edi, esi
	mov	rdx, rax
	lea	rsi, [rsi]
	mov	al, 0
	mov	rbp, rbp
	call	error
	nop	
	movabs	rdi, OFFSET FLAT:.str.2_5
	lea	rdi, [rdi]
	mov	esi,  dword ptr [dword ptr [exit_failure]]
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x30], esi
	lea	rsi, [rsi]
	call	gettext
	xor	edi, edi
	mov	esi, 8
	nop	
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x38], rax
	mov	rbp, rbp
	call	quotearg_n_style_mem
	lea	rsi, [rsi]
	mov	edi, 1
	mov	esi, 8
	nop	
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x40], rax
	mov	rsp, rsp
	call	quotearg_n_style_mem
	mov	rsp, rsp
	xor	esi, esi
	mov	edi, dword ptr [rbp - 0x30]
	mov	rdx, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rbp - 0x40]
	mov	r8, rax
	mov	rsp, rsp
	mov	al, 0
	call	error
	add	rsp, 0x40
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x420610

	.globl xmemcoll0
	.type xmemcoll0, @function
xmemcoll0:
	mov	rsp, rsp
	push	rbp
	lea	rsi, [rsi]
	mov	rbp, rsp
	sub	rsp, 0x30
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x18], rdx
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x20], rcx
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	call	memcoll0
	mov	dword ptr [rbp - 0x24], eax
	call	__errno_location
	nop	
	mov	r8d, dword ptr [rax]
	mov	dword ptr [rbp - 0x28], r8d
	mov	rbp, rbp
	cmp	dword ptr [rbp - 0x28], 0
	lea	rdi, [rdi]
	je	.label_1949
	mov	edi, dword ptr [rbp - 0x28]
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x10]
	nop	
	sub	rax, 1
	mov	rcx, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x20]
	sub	rdx, 1
	mov	qword ptr [rbp - 0x30], rdx
	mov	rdx, rax
	mov	r8, qword ptr [rbp - 0x30]
	call	collate_error
.label_1949:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x24]
	add	rsp, 0x30
	mov	rbp, rbp
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4206c0

	.globl xnanosleep
	.type xnanosleep, @function
xnanosleep:
	push	rbp
	mov	rsp, rsp
	mov	rbp, rsp
	sub	rsp, 0x20
	lea	rdi, [rdi]
	movsd	qword ptr [rbp - 0x10], xmm0
	lea	rdi, [rdi]
	movsd	xmm0, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	call	dtotimespec
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x20], rax
	mov	qword ptr [rbp - 0x18], rdx
.label_1951:
	mov	rsp, rsp
	call	__errno_location
	lea	rdi, [rbp - 0x20]
	mov	rbp, rbp
	xor	ecx, ecx
	mov	esi, ecx
	lea	rsi, [rsi]
	mov	dword ptr [rax], 0
	lea	rsi, [rsi]
	call	rpl_nanosleep
	cmp	eax, 0
	jne	.label_1952
	jmp	.label_1953
.label_1952:
	call	__errno_location
	cmp	dword ptr [rax], 4
	je	.label_1950
	call	__errno_location
	cmp	dword ptr [rax], 0
	je	.label_1950
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 4], 0xffffffff
	mov	rsp, rsp
	jmp	.label_1954
.label_1950:
	jmp	.label_1951
.label_1953:
	mov	dword ptr [rbp - 4], 0
.label_1954:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 4]
	lea	rdi, [rdi]
	add	rsp, 0x20
	nop	
	pop	rbp
	lea	rsi, [rsi]
	ret	
	.section	.text
	.align	16
	#Procedure 0x420770

	.globl xstrtoul
	.type xstrtoul, @function
xstrtoul:
	push	rbp
	mov	rbp, rsp
	nop	
	sub	rsp, 0x100
	lea	rdi, [rdi]
	xor	eax, eax
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	dword ptr [rbp - 0x1c], edx
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x28], rcx
	nop	
	mov	qword ptr [rbp - 0x30], r8
	mov	dword ptr [rbp - 0x4c], 0
	mov	rsp, rsp
	cmp	eax, dword ptr [rbp - 0x1c]
	jg	.label_1989
	lea	rsi, [rsi]
	cmp	dword ptr [rbp - 0x1c], 0x24
	mov	rsp, rsp
	jg	.label_1989
	nop	
	jmp	.label_2006
.label_1989:
	mov	rbp, rbp
	movabs	rdi, OFFSET FLAT:.str_15
	mov	rbp, rbp
	movabs	rsi, OFFSET FLAT:.str.1_11
	mov	edx, 0x54
	lea	rdi, [rdi]
	movabs	rcx, OFFSET FLAT:__PRETTY_FUNCTION__.xstrtoul
	call	__assert_fail
.label_2006:
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x18], 0
	je	.label_2016
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x70], rax
	mov	rbp, rbp
	jmp	.label_1955
.label_2016:
	lea	rdi, [rdi]
	lea	rax, [rbp - 0x38]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x70], rax
	jmp	.label_1955
.label_1955:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x70]
	mov	qword ptr [rbp - 0x40], rax
	lea	rsi, [rsi]
	call	__errno_location
	mov	rsp, rsp
	mov	dword ptr [rax], 0
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x58], rax
	mov	rax, qword ptr [rbp - 0x58]
	mov	cl, byte ptr [rax]
	mov	byte ptr [rbp - 0x59], cl
.label_1996:
	mov	rbp, rbp
	movzx	eax, byte ptr [rbp - 0x59]
	mov	rbp, rbp
	movsxd	rcx, eax
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x78], rcx
	call	__ctype_b_loc
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x78]
	movzx	edx, word ptr [rax + rcx*2]
	and	edx, 0x2000
	lea	rsi, [rsi]
	cmp	edx, 0
	je	.label_1988
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, rax
	mov	rbp, rbp
	add	rcx, 1
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x58], rcx
	mov	dl, byte ptr [rax + 1]
	mov	byte ptr [rbp - 0x59], dl
	jmp	.label_1996
.label_1988:
	lea	rdi, [rdi]
	movzx	eax, byte ptr [rbp - 0x59]
	nop	
	cmp	eax, 0x2d
	mov	rsp, rsp
	jne	.label_2002
	mov	dword ptr [rbp - 4], 4
	nop	
	jmp	.label_1966
.label_2002:
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x40]
	mov	edx, dword ptr [rbp - 0x1c]
	call	strtoul
	mov	qword ptr [rbp - 0x48], rax
	nop	
	mov	rax, qword ptr [rbp - 0x40]
	mov	rsp, rsp
	mov	rax, qword ptr [rax]
	mov	rsp, rsp
	cmp	rax, qword ptr [rbp - 0x10]
	nop	
	jne	.label_2014
	cmp	qword ptr [rbp - 0x30], 0
	mov	rsp, rsp
	je	.label_1957
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax]
	mov	rsp, rsp
	movsx	ecx, byte ptr [rax]
	lea	rdi, [rdi]
	cmp	ecx, 0
	je	.label_1957
	mov	rdi, qword ptr [rbp - 0x30]
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax]
	lea	rsi, [rsi]
	movsx	esi, byte ptr [rax]
	lea	rdi, [rdi]
	call	strchr
	cmp	rax, 0
	je	.label_1957
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x48], 1
	nop	
	jmp	.label_1980
.label_1957:
	mov	rbp, rbp
	mov	dword ptr [rbp - 4], 4
	jmp	.label_1966
.label_1980:
	jmp	.label_1999
.label_2014:
	call	__errno_location
	mov	rsp, rsp
	cmp	dword ptr [rax], 0
	je	.label_1991
	call	__errno_location
	nop	
	cmp	dword ptr [rax], 0x22
	nop	
	je	.label_1995
	mov	dword ptr [rbp - 4], 4
	jmp	.label_1966
.label_1995:
	mov	dword ptr [rbp - 0x4c], 1
.label_1991:
	mov	rbp, rbp
	jmp	.label_1999
.label_1999:
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0x30], 0
	jne	.label_2001
	mov	rax, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	mov	qword ptr [rcx], rax
	mov	rsp, rsp
	mov	edx, dword ptr [rbp - 0x4c]
	mov	dword ptr [rbp - 4], edx
	nop	
	jmp	.label_1966
.label_2001:
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax]
	movsx	ecx, byte ptr [rax]
	mov	rbp, rbp
	cmp	ecx, 0
	je	.label_1969
	mov	dword ptr [rbp - 0x60], 0x400
	nop	
	mov	dword ptr [rbp - 0x64], 1
	mov	rdi, qword ptr [rbp - 0x30]
	mov	rax, qword ptr [rbp - 0x40]
	mov	rsp, rsp
	mov	rax, qword ptr [rax]
	movsx	esi, byte ptr [rax]
	call	strchr
	mov	rbp, rbp
	cmp	rax, 0
	jne	.label_1962
	mov	rax, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	qword ptr [rcx], rax
	mov	edx, dword ptr [rbp - 0x4c]
	nop	
	or	edx, 2
	mov	dword ptr [rbp - 4], edx
	jmp	.label_1966
.label_1962:
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax]
	mov	rbp, rbp
	movsx	ecx, byte ptr [rax]
	mov	edx, ecx
	lea	rdi, [rdi]
	sub	edx, 0x45
	mov	dword ptr [rbp - 0x7c], ecx
	mov	dword ptr [rbp - 0x80], edx
	lea	rdi, [rdi]
	je	.label_1956
	lea	rdi, [rdi]
	jmp	.label_1979
.label_1979:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x7c]
	sub	eax, 0x47
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x84], eax
	je	.label_1956
	nop	
	jmp	.label_1993
.label_1993:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x7c]
	sub	eax, 0x4b
	nop	
	mov	dword ptr [rbp - 0x88], eax
	nop	
	je	.label_1956
	lea	rsi, [rsi]
	jmp	.label_2019
.label_2019:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x7c]
	sub	eax, 0x4d
	mov	dword ptr [rbp - 0x8c], eax
	je	.label_1956
	jmp	.label_2007
.label_2007:
	mov	eax, dword ptr [rbp - 0x7c]
	lea	rsi, [rsi]
	sub	eax, 0x50
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x90], eax
	lea	rdi, [rdi]
	je	.label_1956
	jmp	.label_2013
.label_2013:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x7c]
	mov	rbp, rbp
	sub	eax, 0x54
	nop	
	mov	dword ptr [rbp - 0x94], eax
	lea	rdi, [rdi]
	je	.label_1956
	jmp	.label_2020
.label_2020:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x7c]
	mov	rbp, rbp
	add	eax, -0x59
	sub	eax, 2
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x98], eax
	jb	.label_1956
	mov	rsp, rsp
	jmp	.label_1965
.label_1965:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x7c]
	lea	rdi, [rdi]
	sub	eax, 0x67
	mov	dword ptr [rbp - 0x9c], eax
	lea	rsi, [rsi]
	je	.label_1956
	lea	rsi, [rsi]
	jmp	.label_1976
.label_1976:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x7c]
	sub	eax, 0x6b
	nop	
	mov	dword ptr [rbp - 0xa0], eax
	je	.label_1956
	nop	
	jmp	.label_1977
.label_1977:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x7c]
	nop	
	sub	eax, 0x6d
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0xa4], eax
	nop	
	je	.label_1956
	jmp	.label_1992
.label_1992:
	nop	
	mov	eax, dword ptr [rbp - 0x7c]
	sub	eax, 0x74
	nop	
	mov	dword ptr [rbp - 0xa8], eax
	jne	.label_1967
	jmp	.label_1956
.label_1956:
	lea	rsi, [rsi]
	mov	esi, 0x30
	mov	rdi, qword ptr [rbp - 0x30]
	nop	
	call	strchr
	lea	rsi, [rsi]
	cmp	rax, 0
	je	.label_1968
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax]
	movsx	ecx, byte ptr [rax + 1]
	mov	rbp, rbp
	mov	edx, ecx
	nop	
	sub	edx, 0x42
	mov	rbp, rbp
	mov	dword ptr [rbp - 0xac], ecx
	nop	
	mov	dword ptr [rbp - 0xb0], edx
	mov	rbp, rbp
	je	.label_2008
	mov	rsp, rsp
	jmp	.label_2015
.label_2015:
	mov	eax, dword ptr [rbp - 0xac]
	mov	rbp, rbp
	sub	eax, 0x44
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0xb4], eax
	je	.label_2008
	jmp	.label_1959
.label_1959:
	mov	eax, dword ptr [rbp - 0xac]
	mov	rsp, rsp
	sub	eax, 0x69
	mov	dword ptr [rbp - 0xb8], eax
	jne	.label_1985
	lea	rsi, [rsi]
	jmp	.label_1970
.label_1970:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x40]
	nop	
	mov	rax, qword ptr [rax]
	movsx	ecx, byte ptr [rax + 2]
	cmp	ecx, 0x42
	mov	rbp, rbp
	jne	.label_1973
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x64]
	add	eax, 2
	mov	dword ptr [rbp - 0x64], eax
.label_1973:
	jmp	.label_1985
.label_2008:
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x60], 0x3e8
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x64]
	lea	rdi, [rdi]
	add	eax, 1
	mov	dword ptr [rbp - 0x64], eax
.label_1985:
	lea	rsi, [rsi]
	jmp	.label_1968
.label_1968:
	nop	
	jmp	.label_1967
.label_1967:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax]
	movsx	ecx, byte ptr [rax]
	mov	edx, ecx
	sub	edx, 0x42
	nop	
	mov	dword ptr [rbp - 0xbc], ecx
	mov	dword ptr [rbp - 0xc0], edx
	nop	
	je	.label_1994
	mov	rbp, rbp
	jmp	.label_2000
.label_2000:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0xbc]
	sub	eax, 0x45
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0xc4], eax
	mov	rsp, rsp
	je	.label_2005
	lea	rdi, [rdi]
	jmp	.label_2011
.label_2011:
	mov	eax, dword ptr [rbp - 0xbc]
	sub	eax, 0x47
	mov	rsp, rsp
	mov	dword ptr [rbp - 0xc8], eax
	je	.label_1975
	jmp	.label_2018
.label_2018:
	nop	
	mov	eax, dword ptr [rbp - 0xbc]
	lea	rsi, [rsi]
	sub	eax, 0x4b
	mov	dword ptr [rbp - 0xcc], eax
	je	.label_1964
	lea	rsi, [rsi]
	jmp	.label_1961
.label_1961:
	mov	eax, dword ptr [rbp - 0xbc]
	lea	rsi, [rsi]
	sub	eax, 0x4d
	mov	dword ptr [rbp - 0xd0], eax
	je	.label_1963
	mov	rsp, rsp
	jmp	.label_1971
.label_1971:
	mov	eax, dword ptr [rbp - 0xbc]
	sub	eax, 0x50
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0xd4], eax
	je	.label_1986
	jmp	.label_1981
.label_1981:
	nop	
	mov	eax, dword ptr [rbp - 0xbc]
	mov	rbp, rbp
	sub	eax, 0x54
	nop	
	mov	dword ptr [rbp - 0xd8], eax
	je	.label_1983
	jmp	.label_1990
.label_1990:
	mov	eax, dword ptr [rbp - 0xbc]
	lea	rdi, [rdi]
	sub	eax, 0x59
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0xdc], eax
	je	.label_2010
	nop	
	jmp	.label_1987
.label_1987:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0xbc]
	lea	rsi, [rsi]
	sub	eax, 0x5a
	mov	rbp, rbp
	mov	dword ptr [rbp - 0xe0], eax
	je	.label_1997
	jmp	.label_2004
.label_2004:
	mov	eax, dword ptr [rbp - 0xbc]
	sub	eax, 0x62
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0xe4], eax
	je	.label_1982
	jmp	.label_2017
.label_2017:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0xbc]
	mov	rbp, rbp
	sub	eax, 0x63
	mov	dword ptr [rbp - 0xe8], eax
	mov	rbp, rbp
	je	.label_2012
	nop	
	jmp	.label_2009
.label_2009:
	mov	eax, dword ptr [rbp - 0xbc]
	sub	eax, 0x67
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0xec], eax
	lea	rdi, [rdi]
	je	.label_1975
	mov	rbp, rbp
	jmp	.label_1978
.label_1978:
	mov	eax, dword ptr [rbp - 0xbc]
	sub	eax, 0x6b
	mov	dword ptr [rbp - 0xf0], eax
	lea	rdi, [rdi]
	je	.label_1964
	lea	rsi, [rsi]
	jmp	.label_1974
.label_1974:
	nop	
	mov	eax, dword ptr [rbp - 0xbc]
	nop	
	sub	eax, 0x6d
	mov	dword ptr [rbp - 0xf4], eax
	lea	rsi, [rsi]
	je	.label_1963
	nop	
	jmp	.label_1984
.label_1984:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0xbc]
	mov	rbp, rbp
	sub	eax, 0x74
	mov	dword ptr [rbp - 0xf8], eax
	je	.label_1983
	mov	rbp, rbp
	jmp	.label_2003
.label_2003:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0xbc]
	sub	eax, 0x77
	mov	dword ptr [rbp - 0xfc], eax
	je	.label_1960
	jmp	.label_1998
.label_1982:
	nop	
	lea	rdi, [rbp - 0x48]
	mov	rbp, rbp
	mov	esi, 0x200
	call	bkm_scale
	nop	
	mov	dword ptr [rbp - 0x68], eax
	mov	rsp, rsp
	jmp	.label_1958
.label_1994:
	lea	rsi, [rsi]
	lea	rdi, [rbp - 0x48]
	mov	esi, 0x400
	call	bkm_scale
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x68], eax
	lea	rdi, [rdi]
	jmp	.label_1958
.label_2012:
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x68], 0
	jmp	.label_1958
.label_2005:
	lea	rdi, [rbp - 0x48]
	mov	edx, 6
	mov	rsp, rsp
	mov	esi, dword ptr [rbp - 0x60]
	call	bkm_scale_by_power
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x68], eax
	jmp	.label_1958
.label_1975:
	nop	
	lea	rdi, [rbp - 0x48]
	mov	edx, 3
	mov	esi, dword ptr [rbp - 0x60]
	call	bkm_scale_by_power
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x68], eax
	lea	rdi, [rdi]
	jmp	.label_1958
.label_1964:
	lea	rdi, [rbp - 0x48]
	mov	edx, 1
	mov	esi, dword ptr [rbp - 0x60]
	call	bkm_scale_by_power
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x68], eax
	mov	rbp, rbp
	jmp	.label_1958
.label_1963:
	lea	rdi, [rbp - 0x48]
	lea	rsi, [rsi]
	mov	edx, 2
	lea	rsi, [rsi]
	mov	esi, dword ptr [rbp - 0x60]
	call	bkm_scale_by_power
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x68], eax
	jmp	.label_1958
.label_1986:
	lea	rsi, [rsi]
	lea	rdi, [rbp - 0x48]
	mov	edx, 5
	mov	esi, dword ptr [rbp - 0x60]
	lea	rsi, [rsi]
	call	bkm_scale_by_power
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x68], eax
	jmp	.label_1958
.label_1983:
	mov	rsp, rsp
	lea	rdi, [rbp - 0x48]
	lea	rdi, [rdi]
	mov	edx, 4
	mov	rbp, rbp
	mov	esi, dword ptr [rbp - 0x60]
	call	bkm_scale_by_power
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x68], eax
	jmp	.label_1958
.label_1960:
	mov	rbp, rbp
	lea	rdi, [rbp - 0x48]
	lea	rdi, [rdi]
	mov	esi, 2
	mov	rbp, rbp
	call	bkm_scale
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x68], eax
	jmp	.label_1958
.label_2010:
	lea	rdi, [rbp - 0x48]
	nop	
	mov	edx, 8
	mov	esi, dword ptr [rbp - 0x60]
	lea	rsi, [rsi]
	call	bkm_scale_by_power
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x68], eax
	jmp	.label_1958
.label_1997:
	mov	rsp, rsp
	lea	rdi, [rbp - 0x48]
	mov	edx, 7
	mov	rbp, rbp
	mov	esi, dword ptr [rbp - 0x60]
	call	bkm_scale_by_power
	mov	dword ptr [rbp - 0x68], eax
	jmp	.label_1958
.label_1998:
	nop	
	mov	rax, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	rbp, rbp
	mov	qword ptr [rcx], rax
	nop	
	mov	edx, dword ptr [rbp - 0x4c]
	or	edx, 2
	nop	
	mov	dword ptr [rbp - 4], edx
	mov	rbp, rbp
	jmp	.label_1966
.label_1958:
	mov	eax, dword ptr [rbp - 0x68]
	nop	
	or	eax, dword ptr [rbp - 0x4c]
	mov	dword ptr [rbp - 0x4c], eax
	mov	eax, dword ptr [rbp - 0x64]
	mov	rcx, qword ptr [rbp - 0x40]
	mov	rdx, qword ptr [rcx]
	movsxd	rsi, eax
	add	rdx, rsi
	mov	qword ptr [rcx], rdx
	mov	rcx, qword ptr [rbp - 0x40]
	mov	rcx, qword ptr [rcx]
	cmp	byte ptr [rcx], 0
	lea	rsi, [rsi]
	je	.label_1972
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x4c]
	lea	rdi, [rdi]
	or	eax, 2
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x4c], eax
.label_1972:
	lea	rsi, [rsi]
	jmp	.label_1969
.label_1969:
	mov	rax, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rbp - 0x28]
	nop	
	mov	qword ptr [rcx], rax
	mov	edx, dword ptr [rbp - 0x4c]
	mov	rbp, rbp
	mov	dword ptr [rbp - 4], edx
.label_1966:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 4]
	mov	rbp, rbp
	add	rsp, 0x100
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4210b0

	.globl bkm_scale
	.type bkm_scale, @function
bkm_scale:
	push	rbp
	mov	rsp, rsp
	mov	rbp, rsp
	mov	rax, -1
	mov	qword ptr [rbp - 0x10], rdi
	mov	dword ptr [rbp - 0x14], esi
	movsxd	rdi, dword ptr [rbp - 0x14]
	xor	esi, esi
	mov	rbp, rbp
	mov	edx, esi
	div	rdi
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rdi]
	mov	rbp, rbp
	jae	.label_2021
	mov	rax, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	qword ptr [rax], -1
	mov	dword ptr [rbp - 4], 1
	lea	rsi, [rsi]
	jmp	.label_2022
.label_2021:
	mov	rbp, rbp
	movsxd	rax, dword ptr [rbp - 0x14]
	mov	rcx, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	imul	rax, qword ptr [rcx]
	mov	qword ptr [rcx], rax
	mov	dword ptr [rbp - 4], 0
.label_2022:
	mov	eax, dword ptr [rbp - 4]
	nop	
	pop	rbp
	mov	rbp, rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x421130

	.globl bkm_scale_by_power
	.type bkm_scale_by_power, @function
bkm_scale_by_power:
	lea	rdi, [rdi]
	push	rbp
	mov	rbp, rsp
	nop	
	sub	rsp, 0x20
	mov	qword ptr [rbp - 8], rdi
	mov	dword ptr [rbp - 0xc], esi
	mov	dword ptr [rbp - 0x10], edx
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x14], 0
.label_2024:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	ecx, eax
	mov	rbp, rbp
	add	ecx, -1
	mov	dword ptr [rbp - 0x10], ecx
	cmp	eax, 0
	lea	rdi, [rdi]
	je	.label_2023
	nop	
	mov	rdi, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	mov	esi, dword ptr [rbp - 0xc]
	call	bkm_scale
	lea	rdi, [rdi]
	or	eax, dword ptr [rbp - 0x14]
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x14], eax
	jmp	.label_2024
.label_2023:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x14]
	add	rsp, 0x20
	pop	rbp
	lea	rsi, [rsi]
	ret	
	.section	.text
	.align	16
	#Procedure 0x4211a0

	.globl xstrtol_fatal
	.type xstrtol_fatal, @function
xstrtol_fatal:
	lea	rsi, [rsi]
	push	rbp
	nop	
	mov	rbp, rsp
	sub	rsp, 0x20
	lea	rdi, [rdi]
	mov	al, dl
	mov	rbp, rbp
	mov	dword ptr [rbp - 4], edi
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 8], esi
	mov	byte ptr [rbp - 9], al
	nop	
	mov	qword ptr [rbp - 0x18], rcx
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x20], r8
	nop	
	mov	edi, dword ptr [rbp - 4]
	mov	esi, dword ptr [rbp - 8]
	mov	al, byte ptr [rbp - 9]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	mov	r8, qword ptr [rbp - 0x20]
	mov	r9d,  dword ptr [dword ptr [exit_failure]]
	nop	
	movsx	edx, al
	nop	
	call	xstrtol_error
	lea	rsi, [rsi]
	call	abort
	.section	.text
	.align	16
	#Procedure 0x421200

	.globl xstrtol_error
	.type xstrtol_error, @function
xstrtol_error:
	push	rbp
	nop	
	mov	rbp, rsp
	sub	rsp, 0x60
	mov	al, dl
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 4], edi
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 8], esi
	mov	byte ptr [rbp - 9], al
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x18], rcx
	mov	qword ptr [rbp - 0x20], r8
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x24], r9d
	mov	qword ptr [word ptr [rbp - 48]], OFFSET FLAT:.str_16
	mov	edx, dword ptr [rbp - 4]
	nop	
	mov	esi, edx
	lea	rsi, [rsi]
	sub	esi, 1
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x48], edx
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x4c], esi
	lea	rsi, [rsi]
	je	.label_2025
	nop	
	jmp	.label_2029
.label_2029:
	mov	eax, dword ptr [rbp - 0x48]
	add	eax, -2
	nop	
	sub	eax, 2
	mov	dword ptr [rbp - 0x50], eax
	jb	.label_2031
	lea	rdi, [rdi]
	jmp	.label_2028
.label_2028:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x48]
	sub	eax, 4
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x54], eax
	lea	rsi, [rsi]
	je	.label_2030
	lea	rsi, [rsi]
	jmp	.label_2033
.label_2033:
	call	abort
.label_2030:
	lea	rdi, [rdi]
	movabs	rax, OFFSET FLAT:.str.1_12
	mov	qword ptr [rbp - 0x38], rax
	mov	rsp, rsp
	jmp	.label_2026
.label_2031:
	movabs	rax, OFFSET FLAT:.str.2_6
	nop	
	mov	qword ptr [rbp - 0x38], rax
	jmp	.label_2026
.label_2025:
	mov	rsp, rsp
	movabs	rax, OFFSET FLAT:.str.3_4
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x38], rax
.label_2026:
	cmp	dword ptr [rbp - 8], 0
	mov	rsp, rsp
	jge	.label_2032
	lea	rax, [rbp - 0x42]
	mov	rsp, rsp
	xor	ecx, ecx
	lea	rsi, [rsi]
	mov	edx, ecx
	nop	
	mov	ecx, dword ptr [rbp - 8]
	nop	
	mov	rsi, qword ptr [rbp - 0x30]
	movsxd	rdi, ecx
	lea	rdi, [rdi]
	sub	rdx, rdi
	mov	rsp, rsp
	add	rsi, rdx
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x30], rsi
	mov	r8b, byte ptr [rbp - 9]
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x42], r8b
	mov	byte ptr [rbp - 0x41], 0
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x40], rax
	jmp	.label_2027
.label_2032:
	movsxd	rax, dword ptr [rbp - 8]
	mov	rbp, rbp
	shl	rax, 5
	lea	rsi, [rsi]
	add	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x40], rax
.label_2027:
	lea	rsi, [rsi]
	mov	edi, dword ptr [rbp - 0x24]
	mov	rax, qword ptr [rbp - 0x38]
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x58], edi
	lea	rdi, [rdi]
	mov	rdi, rax
	mov	rbp, rbp
	call	gettext
	lea	rdi, [rdi]
	xor	esi, esi
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x30]
	mov	rsp, rsp
	mov	r8, qword ptr [rbp - 0x40]
	nop	
	mov	r9, qword ptr [rbp - 0x20]
	mov	edi, dword ptr [rbp - 0x58]
	lea	rsi, [rsi]
	mov	rdx, rax
	mov	rsp, rsp
	mov	al, 0
	mov	rsp, rsp
	call	error
	nop	
	add	rsp, 0x60
	lea	rdi, [rdi]
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4213b0

	.globl xstrtoumax
	.type xstrtoumax, @function
xstrtoumax:
	push	rbp
	mov	rsp, rsp
	mov	rbp, rsp
	mov	rsp, rsp
	sub	rsp, 0x100
	xor	eax, eax
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x1c], edx
	mov	qword ptr [rbp - 0x28], rcx
	nop	
	mov	qword ptr [rbp - 0x30], r8
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x4c], 0
	lea	rsi, [rsi]
	cmp	eax, dword ptr [rbp - 0x1c]
	jg	.label_2084
	cmp	dword ptr [rbp - 0x1c], 0x24
	lea	rdi, [rdi]
	jg	.label_2084
	jmp	.label_2098
.label_2084:
	lea	rsi, [rsi]
	movabs	rdi, OFFSET FLAT:.str_15
	movabs	rsi, OFFSET FLAT:.str.1_11
	mov	edx, 0x54
	movabs	rcx, OFFSET FLAT:__PRETTY_FUNCTION__.xstrtoumax
	call	__assert_fail
.label_2098:
	cmp	qword ptr [rbp - 0x18], 0
	je	.label_2053
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x70], rax
	mov	rbp, rbp
	jmp	.label_2056
.label_2053:
	lea	rax, [rbp - 0x38]
	mov	qword ptr [rbp - 0x70], rax
	nop	
	jmp	.label_2056
.label_2056:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x70]
	mov	qword ptr [rbp - 0x40], rax
	mov	rsp, rsp
	call	__errno_location
	mov	dword ptr [rax], 0
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x58], rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x58]
	lea	rdi, [rdi]
	mov	cl, byte ptr [rax]
	mov	byte ptr [rbp - 0x59], cl
.label_2072:
	nop	
	movzx	eax, byte ptr [rbp - 0x59]
	movsxd	rcx, eax
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x78], rcx
	nop	
	call	__ctype_b_loc
	nop	
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x78]
	movzx	edx, word ptr [rax + rcx*2]
	mov	rsp, rsp
	and	edx, 0x2000
	mov	rsp, rsp
	cmp	edx, 0
	je	.label_2078
	mov	rax, qword ptr [rbp - 0x58]
	lea	rsi, [rsi]
	mov	rcx, rax
	add	rcx, 1
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x58], rcx
	mov	dl, byte ptr [rax + 1]
	mov	byte ptr [rbp - 0x59], dl
	lea	rsi, [rsi]
	jmp	.label_2072
.label_2078:
	movzx	eax, byte ptr [rbp - 0x59]
	lea	rdi, [rdi]
	cmp	eax, 0x2d
	jne	.label_2062
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 4], 4
	lea	rsi, [rsi]
	jmp	.label_2040
.label_2062:
	nop	
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x40]
	mov	edx, dword ptr [rbp - 0x1c]
	mov	rsp, rsp
	call	strtoumax
	mov	qword ptr [rbp - 0x48], rax
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax]
	cmp	rax, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	jne	.label_2043
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x30], 0
	mov	rsp, rsp
	je	.label_2054
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x40]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax]
	mov	rbp, rbp
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0
	mov	rsp, rsp
	je	.label_2054
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x30]
	mov	rax, qword ptr [rbp - 0x40]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax]
	movsx	esi, byte ptr [rax]
	call	strchr
	cmp	rax, 0
	nop	
	je	.label_2054
	mov	qword ptr [rbp - 0x48], 1
	jmp	.label_2075
.label_2054:
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 4], 4
	jmp	.label_2040
.label_2075:
	lea	rdi, [rdi]
	jmp	.label_2082
.label_2043:
	mov	rbp, rbp
	call	__errno_location
	lea	rdi, [rdi]
	cmp	dword ptr [rax], 0
	je	.label_2086
	mov	rsp, rsp
	call	__errno_location
	cmp	dword ptr [rax], 0x22
	lea	rdi, [rdi]
	je	.label_2092
	nop	
	mov	dword ptr [rbp - 4], 4
	jmp	.label_2040
.label_2092:
	mov	dword ptr [rbp - 0x4c], 1
.label_2086:
	jmp	.label_2082
.label_2082:
	nop	
	cmp	qword ptr [rbp - 0x30], 0
	jne	.label_2096
	mov	rax, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	rbp, rbp
	mov	qword ptr [rcx], rax
	mov	edx, dword ptr [rbp - 0x4c]
	mov	dword ptr [rbp - 4], edx
	lea	rdi, [rdi]
	jmp	.label_2040
.label_2096:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax]
	movsx	ecx, byte ptr [rax]
	mov	rsp, rsp
	cmp	ecx, 0
	je	.label_2041
	mov	dword ptr [rbp - 0x60], 0x400
	mov	dword ptr [rbp - 0x64], 1
	mov	rdi, qword ptr [rbp - 0x30]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x40]
	mov	rsp, rsp
	mov	rax, qword ptr [rax]
	nop	
	movsx	esi, byte ptr [rax]
	nop	
	call	strchr
	cmp	rax, 0
	jne	.label_2064
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	qword ptr [rcx], rax
	mov	edx, dword ptr [rbp - 0x4c]
	lea	rsi, [rsi]
	or	edx, 2
	mov	rsp, rsp
	mov	dword ptr [rbp - 4], edx
	mov	rbp, rbp
	jmp	.label_2040
.label_2064:
	mov	rax, qword ptr [rbp - 0x40]
	mov	rbp, rbp
	mov	rax, qword ptr [rax]
	mov	rsp, rsp
	movsx	ecx, byte ptr [rax]
	mov	edx, ecx
	sub	edx, 0x45
	mov	dword ptr [rbp - 0x7c], ecx
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x80], edx
	nop	
	je	.label_2045
	jmp	.label_2083
.label_2083:
	nop	
	mov	eax, dword ptr [rbp - 0x7c]
	lea	rdi, [rdi]
	sub	eax, 0x47
	mov	dword ptr [rbp - 0x84], eax
	lea	rdi, [rdi]
	je	.label_2045
	nop	
	jmp	.label_2093
.label_2093:
	mov	eax, dword ptr [rbp - 0x7c]
	nop	
	sub	eax, 0x4b
	mov	dword ptr [rbp - 0x88], eax
	mov	rsp, rsp
	je	.label_2045
	nop	
	jmp	.label_2094
.label_2094:
	mov	eax, dword ptr [rbp - 0x7c]
	lea	rsi, [rsi]
	sub	eax, 0x4d
	mov	dword ptr [rbp - 0x8c], eax
	mov	rbp, rbp
	je	.label_2045
	lea	rsi, [rsi]
	jmp	.label_2038
.label_2038:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x7c]
	sub	eax, 0x50
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x90], eax
	lea	rsi, [rsi]
	je	.label_2045
	jmp	.label_2049
.label_2049:
	mov	eax, dword ptr [rbp - 0x7c]
	lea	rdi, [rdi]
	sub	eax, 0x54
	mov	dword ptr [rbp - 0x94], eax
	je	.label_2045
	jmp	.label_2057
.label_2057:
	mov	eax, dword ptr [rbp - 0x7c]
	lea	rdi, [rdi]
	add	eax, -0x59
	mov	rbp, rbp
	sub	eax, 2
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x98], eax
	lea	rdi, [rdi]
	jb	.label_2045
	mov	rsp, rsp
	jmp	.label_2065
.label_2065:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x7c]
	sub	eax, 0x67
	mov	dword ptr [rbp - 0x9c], eax
	je	.label_2045
	jmp	.label_2074
.label_2074:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x7c]
	mov	rbp, rbp
	sub	eax, 0x6b
	mov	dword ptr [rbp - 0xa0], eax
	lea	rdi, [rdi]
	je	.label_2045
	mov	rsp, rsp
	jmp	.label_2081
.label_2081:
	mov	eax, dword ptr [rbp - 0x7c]
	mov	rbp, rbp
	sub	eax, 0x6d
	mov	dword ptr [rbp - 0xa4], eax
	nop	
	je	.label_2045
	jmp	.label_2090
.label_2090:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x7c]
	sub	eax, 0x74
	mov	rsp, rsp
	mov	dword ptr [rbp - 0xa8], eax
	jne	.label_2079
	jmp	.label_2045
.label_2045:
	mov	esi, 0x30
	mov	rdi, qword ptr [rbp - 0x30]
	call	strchr
	cmp	rax, 0
	lea	rsi, [rsi]
	je	.label_2080
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax]
	movsx	ecx, byte ptr [rax + 1]
	mov	rsp, rsp
	mov	edx, ecx
	sub	edx, 0x42
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0xac], ecx
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0xb0], edx
	mov	rsp, rsp
	je	.label_2091
	lea	rsi, [rsi]
	jmp	.label_2052
.label_2052:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0xac]
	sub	eax, 0x44
	mov	dword ptr [rbp - 0xb4], eax
	je	.label_2091
	jmp	.label_2060
.label_2060:
	mov	eax, dword ptr [rbp - 0xac]
	mov	rbp, rbp
	sub	eax, 0x69
	mov	rbp, rbp
	mov	dword ptr [rbp - 0xb8], eax
	lea	rdi, [rdi]
	jne	.label_2063
	lea	rsi, [rsi]
	jmp	.label_2068
.label_2068:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x40]
	nop	
	mov	rax, qword ptr [rax]
	lea	rdi, [rdi]
	movsx	ecx, byte ptr [rax + 2]
	lea	rsi, [rsi]
	cmp	ecx, 0x42
	jne	.label_2071
	mov	eax, dword ptr [rbp - 0x64]
	nop	
	add	eax, 2
	mov	dword ptr [rbp - 0x64], eax
.label_2071:
	jmp	.label_2063
.label_2091:
	mov	dword ptr [rbp - 0x60], 0x3e8
	mov	eax, dword ptr [rbp - 0x64]
	add	eax, 1
	mov	dword ptr [rbp - 0x64], eax
.label_2063:
	jmp	.label_2080
.label_2080:
	nop	
	jmp	.label_2079
.label_2079:
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax]
	nop	
	movsx	ecx, byte ptr [rax]
	nop	
	mov	edx, ecx
	sub	edx, 0x42
	mov	rbp, rbp
	mov	dword ptr [rbp - 0xbc], ecx
	mov	dword ptr [rbp - 0xc0], edx
	mov	rbp, rbp
	je	.label_2089
	jmp	.label_2067
.label_2067:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0xbc]
	sub	eax, 0x45
	nop	
	mov	dword ptr [rbp - 0xc4], eax
	je	.label_2070
	jmp	.label_2035
.label_2035:
	mov	eax, dword ptr [rbp - 0xbc]
	sub	eax, 0x47
	mov	rbp, rbp
	mov	dword ptr [rbp - 0xc8], eax
	je	.label_2037
	jmp	.label_2047
.label_2047:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0xbc]
	lea	rsi, [rsi]
	sub	eax, 0x4b
	nop	
	mov	dword ptr [rbp - 0xcc], eax
	mov	rsp, rsp
	je	.label_2050
	nop	
	jmp	.label_2059
.label_2059:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0xbc]
	lea	rdi, [rdi]
	sub	eax, 0x4d
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0xd0], eax
	je	.label_2061
	nop	
	jmp	.label_2066
.label_2066:
	mov	eax, dword ptr [rbp - 0xbc]
	sub	eax, 0x50
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0xd4], eax
	je	.label_2099
	mov	rsp, rsp
	jmp	.label_2076
.label_2076:
	nop	
	mov	eax, dword ptr [rbp - 0xbc]
	nop	
	sub	eax, 0x54
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0xd8], eax
	nop	
	je	.label_2042
	jmp	.label_2034
.label_2034:
	mov	eax, dword ptr [rbp - 0xbc]
	sub	eax, 0x59
	mov	rsp, rsp
	mov	dword ptr [rbp - 0xdc], eax
	je	.label_2046
	mov	rbp, rbp
	jmp	.label_2085
.label_2085:
	mov	eax, dword ptr [rbp - 0xbc]
	nop	
	sub	eax, 0x5a
	mov	rbp, rbp
	mov	dword ptr [rbp - 0xe0], eax
	je	.label_2055
	jmp	.label_2095
.label_2095:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0xbc]
	sub	eax, 0x62
	mov	rbp, rbp
	mov	dword ptr [rbp - 0xe4], eax
	je	.label_2097
	jmp	.label_2036
.label_2036:
	mov	eax, dword ptr [rbp - 0xbc]
	sub	eax, 0x63
	mov	dword ptr [rbp - 0xe8], eax
	je	.label_2039
	jmp	.label_2048
.label_2048:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0xbc]
	sub	eax, 0x67
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0xec], eax
	je	.label_2037
	jmp	.label_2058
.label_2058:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0xbc]
	sub	eax, 0x6b
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0xf0], eax
	je	.label_2050
	jmp	.label_2069
.label_2069:
	mov	eax, dword ptr [rbp - 0xbc]
	sub	eax, 0x6d
	mov	dword ptr [rbp - 0xf4], eax
	je	.label_2061
	jmp	.label_2073
.label_2073:
	mov	eax, dword ptr [rbp - 0xbc]
	lea	rsi, [rsi]
	sub	eax, 0x74
	mov	dword ptr [rbp - 0xf8], eax
	je	.label_2042
	jmp	.label_2077
.label_2077:
	mov	eax, dword ptr [rbp - 0xbc]
	sub	eax, 0x77
	mov	dword ptr [rbp - 0xfc], eax
	je	.label_2088
	jmp	.label_2087
.label_2097:
	lea	rdi, [rbp - 0x48]
	mov	esi, 0x200
	call	bkm_scale_0
	nop	
	mov	dword ptr [rbp - 0x68], eax
	jmp	.label_2044
.label_2089:
	lea	rdi, [rbp - 0x48]
	mov	esi, 0x400
	lea	rdi, [rdi]
	call	bkm_scale_0
	mov	dword ptr [rbp - 0x68], eax
	jmp	.label_2044
.label_2039:
	mov	dword ptr [rbp - 0x68], 0
	jmp	.label_2044
.label_2070:
	nop	
	lea	rdi, [rbp - 0x48]
	mov	edx, 6
	mov	rsp, rsp
	mov	esi, dword ptr [rbp - 0x60]
	lea	rdi, [rdi]
	call	bkm_scale_by_power_0
	mov	dword ptr [rbp - 0x68], eax
	jmp	.label_2044
.label_2037:
	lea	rdi, [rbp - 0x48]
	mov	edx, 3
	nop	
	mov	esi, dword ptr [rbp - 0x60]
	call	bkm_scale_by_power_0
	mov	dword ptr [rbp - 0x68], eax
	jmp	.label_2044
.label_2050:
	lea	rdi, [rbp - 0x48]
	mov	edx, 1
	nop	
	mov	esi, dword ptr [rbp - 0x60]
	call	bkm_scale_by_power_0
	mov	dword ptr [rbp - 0x68], eax
	jmp	.label_2044
.label_2061:
	mov	rbp, rbp
	lea	rdi, [rbp - 0x48]
	mov	edx, 2
	mov	rsp, rsp
	mov	esi, dword ptr [rbp - 0x60]
	mov	rbp, rbp
	call	bkm_scale_by_power_0
	mov	dword ptr [rbp - 0x68], eax
	jmp	.label_2044
.label_2099:
	lea	rdi, [rbp - 0x48]
	mov	edx, 5
	mov	rbp, rbp
	mov	esi, dword ptr [rbp - 0x60]
	lea	rsi, [rsi]
	call	bkm_scale_by_power_0
	mov	dword ptr [rbp - 0x68], eax
	mov	rsp, rsp
	jmp	.label_2044
.label_2042:
	lea	rsi, [rsi]
	lea	rdi, [rbp - 0x48]
	lea	rdi, [rdi]
	mov	edx, 4
	mov	rsp, rsp
	mov	esi, dword ptr [rbp - 0x60]
	call	bkm_scale_by_power_0
	mov	dword ptr [rbp - 0x68], eax
	lea	rdi, [rdi]
	jmp	.label_2044
.label_2088:
	lea	rdi, [rbp - 0x48]
	mov	esi, 2
	call	bkm_scale_0
	mov	dword ptr [rbp - 0x68], eax
	jmp	.label_2044
.label_2046:
	lea	rsi, [rsi]
	lea	rdi, [rbp - 0x48]
	mov	edx, 8
	mov	esi, dword ptr [rbp - 0x60]
	mov	rsp, rsp
	call	bkm_scale_by_power_0
	mov	dword ptr [rbp - 0x68], eax
	jmp	.label_2044
.label_2055:
	mov	rsp, rsp
	lea	rdi, [rbp - 0x48]
	mov	edx, 7
	mov	esi, dword ptr [rbp - 0x60]
	call	bkm_scale_by_power_0
	mov	dword ptr [rbp - 0x68], eax
	jmp	.label_2044
.label_2087:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rbp - 0x28]
	nop	
	mov	qword ptr [rcx], rax
	mov	rbp, rbp
	mov	edx, dword ptr [rbp - 0x4c]
	mov	rbp, rbp
	or	edx, 2
	mov	rsp, rsp
	mov	dword ptr [rbp - 4], edx
	jmp	.label_2040
.label_2044:
	mov	eax, dword ptr [rbp - 0x68]
	or	eax, dword ptr [rbp - 0x4c]
	mov	dword ptr [rbp - 0x4c], eax
	mov	eax, dword ptr [rbp - 0x64]
	mov	rcx, qword ptr [rbp - 0x40]
	mov	rdx, qword ptr [rcx]
	movsxd	rsi, eax
	add	rdx, rsi
	mov	qword ptr [rcx], rdx
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x40]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rcx]
	mov	rbp, rbp
	cmp	byte ptr [rcx], 0
	je	.label_2051
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x4c]
	or	eax, 2
	nop	
	mov	dword ptr [rbp - 0x4c], eax
.label_2051:
	jmp	.label_2041
.label_2041:
	mov	rax, qword ptr [rbp - 0x48]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	qword ptr [rcx], rax
	mov	edx, dword ptr [rbp - 0x4c]
	nop	
	mov	dword ptr [rbp - 4], edx
.label_2040:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x100
	nop	
	pop	rbp
	mov	rsp, rsp
	ret	
	.section	.text
	.align	16
	#Procedure 0x421ca0

	.globl bkm_scale_0
	.type bkm_scale_0, @function
bkm_scale_0:
	mov	rsp, rsp
	push	rbp
	mov	rbp, rsp
	mov	rax, -1
	mov	qword ptr [rbp - 0x10], rdi
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x14], esi
	mov	rbp, rbp
	movsxd	rdi, dword ptr [rbp - 0x14]
	mov	rsp, rsp
	xor	esi, esi
	mov	edx, esi
	mov	rsp, rsp
	div	rdi
	mov	rdi, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	cmp	rax, qword ptr [rdi]
	jae	.label_2100
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rax], -1
	mov	rbp, rbp
	mov	dword ptr [rbp - 4], 1
	jmp	.label_2101
.label_2100:
	movsxd	rax, dword ptr [rbp - 0x14]
	mov	rcx, qword ptr [rbp - 0x10]
	imul	rax, qword ptr [rcx]
	mov	rbp, rbp
	mov	qword ptr [rcx], rax
	mov	dword ptr [rbp - 4], 0
.label_2101:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 4]
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x421d20

	.globl bkm_scale_by_power_0
	.type bkm_scale_by_power_0, @function
bkm_scale_by_power_0:
	push	rbp
	mov	rbp, rsp
	lea	rsi, [rsi]
	sub	rsp, 0x20
	mov	qword ptr [rbp - 8], rdi
	mov	dword ptr [rbp - 0xc], esi
	mov	dword ptr [rbp - 0x10], edx
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x14], 0
.label_2102:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	ecx, eax
	lea	rsi, [rsi]
	add	ecx, -1
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x10], ecx
	lea	rdi, [rdi]
	cmp	eax, 0
	nop	
	je	.label_2103
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 8]
	mov	esi, dword ptr [rbp - 0xc]
	lea	rdi, [rdi]
	call	bkm_scale_0
	mov	rsp, rsp
	or	eax, dword ptr [rbp - 0x14]
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x14], eax
	nop	
	jmp	.label_2102
.label_2103:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x14]
	mov	rsp, rsp
	add	rsp, 0x20
	lea	rsi, [rsi]
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x421da0

	.globl explicit_bzero
	.type explicit_bzero, @function
explicit_bzero:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	lea	rdi, [rdi]
	xor	eax, eax
	mov	qword ptr [rbp - 8], rdi
	nop	
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 8]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	esi, eax
	lea	rsi, [rsi]
	call	memset
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x421de0

	.globl rpl_fclose
	.type rpl_fclose, @function
rpl_fclose:
	push	rbp
	lea	rsi, [rsi]
	mov	rbp, rsp
	mov	rsp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 0x10], rdi
	mov	dword ptr [rbp - 0x14], 0
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x1c], 0
	mov	rdi, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	call	fileno
	mov	dword ptr [rbp - 0x18], eax
	mov	rbp, rbp
	cmp	dword ptr [rbp - 0x18], 0
	jge	.label_2107
	mov	rdi, qword ptr [rbp - 0x10]
	call	fclose
	mov	dword ptr [rbp - 4], eax
	lea	rsi, [rsi]
	jmp	.label_2105
.label_2107:
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	call	__freading
	lea	rsi, [rsi]
	cmp	eax, 0
	je	.label_2104
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x10]
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
	je	.label_2106
.label_2104:
	mov	rdi, qword ptr [rbp - 0x10]
	call	rpl_fflush
	cmp	eax, 0
	lea	rsi, [rsi]
	je	.label_2106
	call	__errno_location
	nop	
	mov	ecx, dword ptr [rax]
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x14], ecx
.label_2106:
	mov	rdi, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	call	fclose
	mov	dword ptr [rbp - 0x1c], eax
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x14], 0
	je	.label_2108
	nop	
	mov	eax, dword ptr [rbp - 0x14]
	mov	dword ptr [rbp - 0x20], eax
	call	__errno_location
	nop	
	mov	ecx, dword ptr [rbp - 0x20]
	mov	rsp, rsp
	mov	dword ptr [rax], ecx
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x1c], 0xffffffff
.label_2108:
	mov	eax, dword ptr [rbp - 0x1c]
	mov	dword ptr [rbp - 4], eax
.label_2105:
	mov	eax, dword ptr [rbp - 4]
	nop	
	add	rsp, 0x20
	mov	rsp, rsp
	pop	rbp
	mov	rsp, rsp
	ret	
	.section	.text
	.align	16
	#Procedure 0x421f00

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
	movaps	xmmword ptr [rbp - 0x100], xmm7
	movaps	xmmword ptr [rbp - 0x110], xmm6
	movaps	xmmword ptr [rbp - 0x120], xmm5
	mov	rsp, rsp
	movaps	xmmword ptr [rbp - 0x130], xmm4
	movaps	xmmword ptr [rbp - 0x140], xmm3
	lea	rsi, [rsi]
	movaps	xmmword ptr [rbp - 0x150], xmm2
	lea	rdi, [rdi]
	movaps	xmmword ptr [rbp - 0x160], xmm1
	movaps	xmmword ptr [rbp - 0x170], xmm0
	mov	dword ptr [rbp - 0x174], edi
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x180], r9
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x188], r8
	mov	qword ptr [rbp - 0x190], rcx
	mov	qword ptr [rbp - 0x198], rdx
	nop	
	mov	dword ptr [rbp - 0x19c], esi
	nop	
	je	.label_2109
	mov	rbp, rbp
	movaps	xmm0, xmmword ptr [rbp - 0x170]
	lea	rsi, [rsi]
	movaps	xmmword ptr [rbp - 0xc0], xmm0
	nop	
	movaps	xmm1, xmmword ptr [rbp - 0x160]
	mov	rsp, rsp
	movaps	xmmword ptr [rbp - 0xb0], xmm1
	movaps	xmm2, xmmword ptr [rbp - 0x150]
	mov	rbp, rbp
	movaps	xmmword ptr [rbp - 0xa0], xmm2
	lea	rsi, [rsi]
	movaps	xmm3, xmmword ptr [rbp - 0x140]
	mov	rsp, rsp
	movaps	xmmword ptr [rbp - 0x90], xmm3
	lea	rsi, [rsi]
	movaps	xmm4, xmmword ptr [rbp - 0x130]
	mov	rbp, rbp
	movaps	xmmword ptr [rbp - 0x80], xmm4
	mov	rbp, rbp
	movaps	xmm5, xmmword ptr [rbp - 0x120]
	movaps	xmmword ptr [rbp - 0x70], xmm5
	mov	rsp, rsp
	movaps	xmm6, xmmword ptr [rbp - 0x110]
	lea	rdi, [rdi]
	movaps	xmmword ptr [rbp - 0x60], xmm6
	mov	rsp, rsp
	movaps	xmm7, xmmword ptr [rbp - 0x100]
	movaps	xmmword ptr [rbp - 0x50], xmm7
.label_2109:
	mov	rax, qword ptr [rbp - 0x180]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0xc8], rax
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x188]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0xd0], rcx
	mov	rdx, qword ptr [rbp - 0x190]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0xd8], rdx
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x198]
	mov	qword ptr [rbp - 0xe0], rsi
	mov	edi, dword ptr [rbp - 0x19c]
	mov	r8d, dword ptr [rbp - 0x174]
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 4], r8d
	mov	dword ptr [rbp - 8], edi
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x24], 0xffffffff
	lea	rsi, [rsi]
	lea	r9, [rbp - 0xf0]
	mov	qword ptr [rbp - 0x10], r9
	lea	r9, [rbp + 0x10]
	mov	qword ptr [rbp - 0x18], r9
	mov	dword ptr [rbp - 0x1c], 0x30
	mov	dword ptr [rbp - 0x20], 0x10
	mov	edi, dword ptr [rbp - 8]
	test	edi, edi
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x1a0], edi
	mov	rsp, rsp
	je	.label_2111
	nop	
	jmp	.label_2118
.label_2118:
	nop	
	mov	eax, dword ptr [rbp - 0x1a0]
	sub	eax, 0x406
	mov	dword ptr [rbp - 0x1a4], eax
	je	.label_2126
	jmp	.label_2132
.label_2111:
	lea	rdi, [rdi]
	lea	rax, [rbp - 0x20]
	mov	ecx, dword ptr [rbp - 0x20]
	cmp	ecx, 0x28
	mov	qword ptr [rbp - 0x1b0], rax
	nop	
	mov	dword ptr [rbp - 0x1b4], ecx
	ja	.label_2134
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x1b4]
	movsxd	rcx, eax
	mov	rdx, qword ptr [rbp - 0x1b0]
	add	rcx, qword ptr [rdx + 0x10]
	add	eax, 8
	lea	rsi, [rsi]
	mov	dword ptr [rdx], eax
	mov	qword ptr [rbp - 0x1c0], rcx
	lea	rsi, [rsi]
	jmp	.label_2137
.label_2134:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x1b0]
	mov	rcx, qword ptr [rax + 8]
	mov	rdx, rcx
	mov	rbp, rbp
	add	rcx, 8
	mov	rsp, rsp
	mov	qword ptr [rax + 8], rcx
	mov	qword ptr [rbp - 0x1c0], rdx
.label_2137:
	mov	rax, qword ptr [rbp - 0x1c0]
	mov	ecx, dword ptr [rax]
	nop	
	mov	dword ptr [rbp - 0x28], ecx
	mov	edi, dword ptr [rbp - 4]
	mov	esi, dword ptr [rbp - 0x28]
	call	rpl_fcntl_DUPFD
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x24], eax
	jmp	.label_2130
.label_2126:
	lea	rsi, [rsi]
	lea	rax, [rbp - 0x20]
	nop	
	mov	ecx, dword ptr [rbp - 0x20]
	mov	rsp, rsp
	cmp	ecx, 0x28
	nop	
	mov	qword ptr [rbp - 0x1c8], rax
	mov	dword ptr [rbp - 0x1cc], ecx
	mov	rsp, rsp
	ja	.label_2125
	mov	eax, dword ptr [rbp - 0x1cc]
	lea	rsi, [rsi]
	movsxd	rcx, eax
	mov	rdx, qword ptr [rbp - 0x1c8]
	mov	rsp, rsp
	add	rcx, qword ptr [rdx + 0x10]
	add	eax, 8
	mov	dword ptr [rdx], eax
	mov	qword ptr [rbp - 0x1d8], rcx
	mov	rsp, rsp
	jmp	.label_2117
.label_2125:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x1c8]
	mov	rcx, qword ptr [rax + 8]
	mov	rdx, rcx
	add	rcx, 8
	lea	rdi, [rdi]
	mov	qword ptr [rax + 8], rcx
	mov	qword ptr [rbp - 0x1d8], rdx
.label_2117:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x1d8]
	lea	rdi, [rdi]
	mov	ecx, dword ptr [rax]
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x2c], ecx
	mov	edi, dword ptr [rbp - 4]
	mov	esi, dword ptr [rbp - 0x2c]
	call	rpl_fcntl_DUPFD_CLOEXEC
	mov	dword ptr [rbp - 0x24], eax
	jmp	.label_2130
.label_2132:
	mov	eax, dword ptr [rbp - 8]
	test	eax, eax
	nop	
	mov	dword ptr [rbp - 0x1dc], eax
	lea	rdi, [rdi]
	je	.label_2115
	nop	
	jmp	.label_2120
.label_2120:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x1dc]
	sub	eax, 1
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x1e0], eax
	mov	rsp, rsp
	je	.label_2116
	jmp	.label_2129
.label_2129:
	mov	eax, dword ptr [rbp - 0x1dc]
	sub	eax, 2
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x1e4], eax
	mov	rsp, rsp
	je	.label_2115
	nop	
	jmp	.label_2136
.label_2136:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x1dc]
	sub	eax, 3
	nop	
	mov	dword ptr [rbp - 0x1e8], eax
	lea	rdi, [rdi]
	je	.label_2116
	nop	
	jmp	.label_2113
.label_2113:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x1dc]
	sub	eax, 4
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x1ec], eax
	nop	
	je	.label_2115
	lea	rsi, [rsi]
	jmp	.label_2122
.label_2122:
	mov	eax, dword ptr [rbp - 0x1dc]
	mov	rbp, rbp
	sub	eax, 8
	mov	dword ptr [rbp - 0x1f0], eax
	mov	rsp, rsp
	je	.label_2115
	lea	rsi, [rsi]
	jmp	.label_2131
.label_2131:
	mov	eax, dword ptr [rbp - 0x1dc]
	lea	rsi, [rsi]
	sub	eax, 9
	mov	dword ptr [rbp - 0x1f4], eax
	je	.label_2116
	mov	rsp, rsp
	jmp	.label_2138
.label_2138:
	mov	eax, dword ptr [rbp - 0x1dc]
	sub	eax, 0xa
	mov	dword ptr [rbp - 0x1f8], eax
	je	.label_2115
	jmp	.label_2114
.label_2114:
	mov	eax, dword ptr [rbp - 0x1dc]
	lea	rdi, [rdi]
	sub	eax, 0xb
	nop	
	mov	dword ptr [rbp - 0x1fc], eax
	nop	
	je	.label_2116
	lea	rsi, [rsi]
	jmp	.label_2121
.label_2121:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x1dc]
	sub	eax, 0x400
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x200], eax
	lea	rdi, [rdi]
	je	.label_2115
	jmp	.label_2133
.label_2133:
	nop	
	mov	eax, dword ptr [rbp - 0x1dc]
	sub	eax, 0x401
	mov	dword ptr [rbp - 0x204], eax
	je	.label_2116
	mov	rsp, rsp
	jmp	.label_2139
.label_2139:
	mov	eax, dword ptr [rbp - 0x1dc]
	nop	
	sub	eax, 0x402
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x208], eax
	mov	rsp, rsp
	je	.label_2115
	lea	rsi, [rsi]
	jmp	.label_2119
.label_2119:
	mov	eax, dword ptr [rbp - 0x1dc]
	mov	rsp, rsp
	add	eax, 0xfffffbfa
	sub	eax, 2
	mov	dword ptr [rbp - 0x20c], eax
	jb	.label_2115
	nop	
	jmp	.label_2127
.label_2127:
	nop	
	mov	eax, dword ptr [rbp - 0x1dc]
	lea	rdi, [rdi]
	sub	eax, 0x408
	mov	dword ptr [rbp - 0x210], eax
	lea	rdi, [rdi]
	jne	.label_2128
	lea	rdi, [rdi]
	jmp	.label_2116
.label_2116:
	mov	edi, dword ptr [rbp - 4]
	mov	esi, dword ptr [rbp - 8]
	mov	rsp, rsp
	mov	al, 0
	lea	rdi, [rdi]
	call	fcntl
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x24], eax
	lea	rsi, [rsi]
	jmp	.label_2110
.label_2115:
	nop	
	lea	rax, [rbp - 0x20]
	nop	
	mov	ecx, dword ptr [rbp - 0x20]
	cmp	ecx, 0x28
	mov	qword ptr [rbp - 0x218], rax
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x21c], ecx
	lea	rsi, [rsi]
	ja	.label_2112
	mov	eax, dword ptr [rbp - 0x21c]
	mov	rbp, rbp
	movsxd	rcx, eax
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x218]
	add	rcx, qword ptr [rdx + 0x10]
	nop	
	add	eax, 8
	mov	rbp, rbp
	mov	dword ptr [rdx], eax
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x228], rcx
	mov	rbp, rbp
	jmp	.label_2123
.label_2112:
	mov	rax, qword ptr [rbp - 0x218]
	mov	rcx, qword ptr [rax + 8]
	mov	rdx, rcx
	add	rcx, 8
	mov	qword ptr [rax + 8], rcx
	nop	
	mov	qword ptr [rbp - 0x228], rdx
.label_2123:
	nop	
	mov	rax, qword ptr [rbp - 0x228]
	mov	ecx, dword ptr [rax]
	nop	
	mov	dword ptr [rbp - 0x30], ecx
	mov	rbp, rbp
	mov	edi, dword ptr [rbp - 4]
	nop	
	mov	esi, dword ptr [rbp - 8]
	lea	rdi, [rdi]
	mov	edx, dword ptr [rbp - 0x30]
	nop	
	mov	al, 0
	call	fcntl
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x24], eax
	jmp	.label_2110
.label_2128:
	lea	rax, [rbp - 0x20]
	mov	ecx, dword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	cmp	ecx, 0x28
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x230], rax
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x234], ecx
	lea	rdi, [rdi]
	ja	.label_2124
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x234]
	lea	rdi, [rdi]
	movsxd	rcx, eax
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x230]
	lea	rsi, [rsi]
	add	rcx, qword ptr [rdx + 0x10]
	add	eax, 8
	mov	dword ptr [rdx], eax
	mov	qword ptr [rbp - 0x240], rcx
	mov	rsp, rsp
	jmp	.label_2135
.label_2124:
	mov	rax, qword ptr [rbp - 0x230]
	mov	rbp, rbp
	mov	rcx, qword ptr [rax + 8]
	mov	rdx, rcx
	add	rcx, 8
	mov	qword ptr [rax + 8], rcx
	nop	
	mov	qword ptr [rbp - 0x240], rdx
.label_2135:
	mov	rax, qword ptr [rbp - 0x240]
	mov	rax, qword ptr [rax]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x38], rax
	nop	
	mov	edi, dword ptr [rbp - 4]
	lea	rsi, [rsi]
	mov	esi, dword ptr [rbp - 8]
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x38]
	mov	al, 0
	call	fcntl
	mov	dword ptr [rbp - 0x24], eax
.label_2110:
	jmp	.label_2130
.label_2130:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x24]
	mov	rbp, rbp
	add	rsp, 0x240
	pop	rbp
	mov	rsp, rsp
	ret	
	.section	.text
	.align	16
	#Procedure 0x422580

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
	mov	dword ptr [rbp - 4], edi
	mov	dword ptr [rbp - 8], esi
	lea	rsi, [rsi]
	mov	edi, dword ptr [rbp - 4]
	mov	edx, dword ptr [rbp - 8]
	mov	rsp, rsp
	mov	esi, eax
	nop	
	mov	al, 0
	mov	rsp, rsp
	call	fcntl
	mov	dword ptr [rbp - 0xc], eax
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0xc]
	add	rsp, 0x10
	mov	rbp, rbp
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4225d0

	.globl rpl_fcntl_DUPFD_CLOEXEC
	.type rpl_fcntl_DUPFD_CLOEXEC, @function
rpl_fcntl_DUPFD_CLOEXEC:
	mov	rsp, rsp
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	xor	eax, eax
	mov	dword ptr [rbp - 4], edi
	mov	rsp, rsp
	mov	dword ptr [rbp - 8], esi
	lea	rsi, [rsi]
	cmp	eax,  dword ptr [dword ptr [rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec]]
	jg	.label_2142
	lea	rsi, [rsi]
	mov	esi, 0x406
	nop	
	mov	edi, dword ptr [rbp - 4]
	lea	rsi, [rsi]
	mov	edx, dword ptr [rbp - 8]
	mov	al, 0
	call	fcntl
	lea	rsi, [rsi]
	xor	edx, edx
	nop	
	mov	dword ptr [rbp - 0xc], eax
	nop	
	cmp	edx, dword ptr [rbp - 0xc]
	jle	.label_2141
	nop	
	call	__errno_location
	cmp	dword ptr [rax], 0x16
	je	.label_2144
.label_2141:
	mov	dword ptr [dword ptr [rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec]],  1
	jmp	.label_2146
.label_2144:
	mov	edi, dword ptr [rbp - 4]
	mov	esi, dword ptr [rbp - 8]
	lea	rdi, [rdi]
	call	rpl_fcntl_DUPFD
	mov	dword ptr [rbp - 0xc], eax
	mov	rsp, rsp
	cmp	dword ptr [rbp - 0xc], 0
	mov	rbp, rbp
	jl	.label_2143
	mov	rbp, rbp
	mov	dword ptr [dword ptr [rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec]],  0xffffffff
.label_2143:
	mov	rbp, rbp
	jmp	.label_2146
.label_2146:
	jmp	.label_2147
.label_2142:
	mov	edi, dword ptr [rbp - 4]
	mov	esi, dword ptr [rbp - 8]
	call	rpl_fcntl_DUPFD
	mov	rsp, rsp
	mov	dword ptr [rbp - 0xc], eax
.label_2147:
	xor	eax, eax
	cmp	eax, dword ptr [rbp - 0xc]
	jg	.label_2140
	cmp	dword ptr [dword ptr [rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec]],  -1
	mov	rsp, rsp
	jne	.label_2140
	mov	esi, 1
	mov	edi, dword ptr [rbp - 0xc]
	mov	al, 0
	call	fcntl
	nop	
	mov	dword ptr [rbp - 0x10], eax
	mov	rbp, rbp
	cmp	dword ptr [rbp - 0x10], 0
	jl	.label_2148
	mov	esi, 2
	mov	rsp, rsp
	mov	edi, dword ptr [rbp - 0xc]
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x10]
	mov	rbp, rbp
	or	eax, 1
	lea	rdi, [rdi]
	mov	edx, eax
	mov	al, 0
	call	fcntl
	cmp	eax, -1
	jne	.label_2145
.label_2148:
	lea	rdi, [rdi]
	call	__errno_location
	mov	ecx, dword ptr [rax]
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x14], ecx
	mov	edi, dword ptr [rbp - 0xc]
	call	close
	mov	ecx, dword ptr [rbp - 0x14]
	mov	dword ptr [rbp - 0x18], eax
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x1c], ecx
	call	__errno_location
	mov	rsp, rsp
	mov	ecx, dword ptr [rbp - 0x1c]
	nop	
	mov	dword ptr [rax], ecx
	mov	dword ptr [rbp - 0xc], 0xffffffff
.label_2145:
	jmp	.label_2140
.label_2140:
	mov	eax, dword ptr [rbp - 0xc]
	lea	rsi, [rsi]
	add	rsp, 0x20
	pop	rbp
	nop	
	ret	
	.section	.text
	.align	16
	#Procedure 0x422750

	.globl rpl_fflush
	.type rpl_fflush, @function
rpl_fflush:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 0x10], rdi
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0x10], 0
	mov	rsp, rsp
	je	.label_2149
	mov	rdi, qword ptr [rbp - 0x10]
	call	__freading
	cmp	eax, 0
	jne	.label_2150
.label_2149:
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x10]
	call	fflush
	mov	dword ptr [rbp - 4], eax
	nop	
	jmp	.label_2151
.label_2150:
	mov	rdi, qword ptr [rbp - 0x10]
	call	clear_ungetc_buffer_preserving_position
	mov	rdi, qword ptr [rbp - 0x10]
	call	fflush
	mov	dword ptr [rbp - 4], eax
.label_2151:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x10
	pop	rbp
	nop	
	ret	
	.section	.text
	.align	16
	#Procedure 0x4227c0

	.globl clear_ungetc_buffer_preserving_position
	.type clear_ungetc_buffer_preserving_position, @function
clear_ungetc_buffer_preserving_position:
	push	rbp
	mov	rbp, rbp
	mov	rbp, rsp
	mov	rbp, rbp
	sub	rsp, 0x10
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	mov	eax, dword ptr [rdi]
	and	eax, 0x100
	mov	rsp, rsp
	cmp	eax, 0
	je	.label_2152
	xor	eax, eax
	mov	rbp, rbp
	mov	esi, eax
	nop	
	mov	edx, 1
	mov	rdi, qword ptr [rbp - 8]
	nop	
	call	rpl_fseeko
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0xc], eax
.label_2152:
	mov	rsp, rsp
	add	rsp, 0x10
	mov	rsp, rsp
	pop	rbp
	lea	rsi, [rsi]
	ret	
	.section	.text
	.align	16
	#Procedure 0x422820

	.globl rpl_fseeko
	.type rpl_fseeko, @function
rpl_fseeko:
	lea	rsi, [rsi]
	push	rbp
	mov	rbp, rsp
	mov	rbp, rbp
	sub	rsp, 0x30
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	dword ptr [rbp - 0x1c], edx
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rsi + 0x10]
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	cmp	rsi, qword ptr [rdi + 8]
	jne	.label_2153
	mov	rax, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax + 0x28]
	mov	rcx, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rcx + 0x20]
	mov	rbp, rbp
	jne	.label_2153
	mov	rax, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	cmp	qword ptr [rax + 0x48], 0
	jne	.label_2153
	mov	rdi, qword ptr [rbp - 0x10]
	nop	
	call	fileno
	mov	rsi, qword ptr [rbp - 0x18]
	mov	edx, dword ptr [rbp - 0x1c]
	mov	rbp, rbp
	mov	edi, eax
	lea	rdi, [rdi]
	call	lseek
	mov	qword ptr [rbp - 0x28], rax
	cmp	qword ptr [rbp - 0x28], -1
	jne	.label_2155
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 4], 0xffffffff
	jmp	.label_2154
.label_2155:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	ecx, dword ptr [rax]
	lea	rdi, [rdi]
	and	ecx, 0xffffffef
	mov	dword ptr [rax], ecx
	mov	rax, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x10]
	nop	
	mov	qword ptr [rdx + 0x90], rax
	mov	rsp, rsp
	mov	dword ptr [rbp - 4], 0
	lea	rsi, [rsi]
	jmp	.label_2154
.label_2153:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	mov	edx, dword ptr [rbp - 0x1c]
	lea	rdi, [rdi]
	call	fseeko
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 4], eax
.label_2154:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 4]
	nop	
	add	rsp, 0x30
	pop	rbp
	lea	rdi, [rdi]
	ret	
	.section	.text
	.align	16
	#Procedure 0x422930

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
	mov	qword ptr [rbp - 0x18], rsi
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x20], rdx
	mov	qword ptr [rbp - 0x28], rcx
	cmp	qword ptr [rbp - 0x10], 0
	lea	rsi, [rsi]
	jne	.label_2156
	lea	rax, [rbp - 0x34]
	mov	qword ptr [rbp - 0x10], rax
.label_2156:
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x28]
	nop	
	call	mbrtowc
	mov	rcx, -2
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x30], rax
	mov	rbp, rbp
	cmp	rcx, qword ptr [rbp - 0x30]
	ja	.label_2157
	nop	
	cmp	qword ptr [rbp - 0x20], 0
	lea	rdi, [rdi]
	je	.label_2157
	xor	edi, edi
	lea	rdi, [rdi]
	call	hard_locale
	mov	rbp, rbp
	test	al, 1
	lea	rsi, [rsi]
	jne	.label_2157
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	mov	cl, byte ptr [rax]
	mov	byte ptr [rbp - 0x35], cl
	mov	rbp, rbp
	movzx	edx, byte ptr [rbp - 0x35]
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	dword ptr [rax], edx
	mov	rsp, rsp
	mov	qword ptr [rbp - 8], 1
	jmp	.label_2158
.label_2157:
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 8], rax
.label_2158:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 8]
	mov	rbp, rbp
	add	rsp, 0x40
	lea	rsi, [rsi]
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x422a20

	.globl rpl_nanosleep
	.type rpl_nanosleep, @function
rpl_nanosleep:
	mov	rbp, rbp
	push	rbp
	mov	rbp, rsp
	lea	rdi, [rdi]
	sub	rsp, 0x40
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x10], rdi
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x18], rsi
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x10]
	cmp	qword ptr [rsi + 8], 0
	nop	
	jl	.label_2159
	mov	rbp, rbp
	mov	eax, 0x3b9aca00
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	cmp	rcx, qword ptr [rdx + 8]
	jg	.label_2162
.label_2159:
	call	__errno_location
	mov	rsp, rsp
	mov	dword ptr [rax], 0x16
	nop	
	mov	dword ptr [rbp - 4], 0xffffffff
	mov	rsp, rsp
	jmp	.label_2161
.label_2162:
	mov	qword ptr [rbp - 0x20], 0x1fa400
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax]
	nop	
	mov	qword ptr [rbp - 0x28], rax
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 8]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x30], rax
.label_2163:
	mov	eax, 0x1fa400
	mov	ecx, eax
	cmp	rcx, qword ptr [rbp - 0x28]
	jge	.label_2164
	lea	rdi, [rbp - 0x38]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x38], 0x1fa400
	mov	rsi, qword ptr [rbp - 0x18]
	call	nanosleep
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x3c], eax
	nop	
	mov	rsi, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	sub	rsi, 0x1fa400
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x28], rsi
	cmp	dword ptr [rbp - 0x3c], 0
	je	.label_2165
	cmp	qword ptr [rbp - 0x18], 0
	lea	rdi, [rdi]
	je	.label_2160
	mov	rax, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x18]
	add	rax, qword ptr [rcx]
	mov	qword ptr [rcx], rax
.label_2160:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x3c]
	mov	dword ptr [rbp - 4], eax
	lea	rsi, [rsi]
	jmp	.label_2161
.label_2165:
	nop	
	mov	qword ptr [rbp - 0x30], 0
	mov	rbp, rbp
	jmp	.label_2163
.label_2164:
	mov	rsp, rsp
	lea	rdi, [rbp - 0x38]
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x38], rax
	mov	rsi, qword ptr [rbp - 0x18]
	call	nanosleep
	mov	dword ptr [rbp - 4], eax
.label_2161:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x40
	lea	rdi, [rdi]
	pop	rbp
	nop	
	ret	
	.section	.text
	.align	16
	#Procedure 0x422b80

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
	ja	.label_2166
	jmp	.label_2168
.label_2168:
	mov	eax, dword ptr [rbp - 4]
	sub	eax, 0x27d8
	mov	rbp, rbp
	add	eax, 0x2001a
	mov	rsp, rsp
	mov	dword ptr [rbp - 4], eax
	jmp	.label_2167
.label_2166:
	lea	rsi, [rsi]
	jmp	.label_2167
.label_2167:
	mov	edi, dword ptr [rbp - 4]
	call	nl_langinfo
	add	rsp, 0x10
	nop	
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x422be0

	.globl _obstack_begin
	.type _obstack_begin, @function
_obstack_begin:
	push	rbp
	mov	rbp, rsp
	nop	
	sub	rsp, 0x30
	mov	qword ptr [rbp - 8], rdi
	nop	
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x20], rcx
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x28], r8
	nop	
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	qword ptr [rdx + 0x38], rcx
	mov	rcx, qword ptr [rbp - 0x28]
	mov	rdx, qword ptr [rbp - 8]
	mov	qword ptr [rdx + 0x40], rcx
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	al, byte ptr [rcx + 0x50]
	nop	
	and	al, 0xfe
	mov	rsp, rsp
	mov	byte ptr [rcx + 0x50], al
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	call	_obstack_begin_worker
	add	rsp, 0x30
	pop	rbp
	mov	rbp, rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x422c60

	.globl _obstack_begin_worker
	.type _obstack_begin_worker, @function
_obstack_begin_worker:
	mov	rbp, rbp
	push	rbp
	mov	rbp, rsp
	mov	rsp, rsp
	sub	rsp, 0x30
	mov	rbp, rbp
	mov	qword ptr [rbp - 8], rdi
	nop	
	mov	qword ptr [rbp - 0x10], rsi
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x18], rdx
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x18], 0
	jne	.label_2169
	nop	
	mov	qword ptr [rbp - 0x18], 0x10
.label_2169:
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0x10], 0
	jne	.label_2170
	lea	rsi, [rsi]
	mov	eax, 0x1000
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x24], 0x20
	nop	
	sub	eax, dword ptr [rbp - 0x24]
	lea	rsi, [rsi]
	movsxd	rcx, eax
	mov	qword ptr [rbp - 0x10], rcx
.label_2170:
	nop	
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 8]
	mov	qword ptr [rcx], rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x18]
	sub	rax, 1
	mov	rcx, qword ptr [rbp - 8]
	nop	
	mov	qword ptr [rcx + 0x30], rax
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	rsi, qword ptr [rax]
	call	call_chunkfun
	mov	rcx, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	qword ptr [rcx + 8], rax
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x20], rax
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x20], 0
	mov	rsp, rsp
	jne	.label_2171
	mov	rbp, rbp
	call	qword ptr [word ptr [obstack_alloc_failed_handler]]
.label_2171:
	mov	eax, 1
	xor	ecx, ecx
	mov	edx, ecx
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	add	rsi, 0x10
	sub	rsi, 0
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x18]
	sub	rdi, 1
	add	rsi, rdi
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	sub	rdi, 1
	lea	rsi, [rsi]
	xor	rdi, 0xffffffffffffffff
	and	rsi, rdi
	lea	rsi, [rsi]
	add	rdx, rsi
	mov	rsi, qword ptr [rbp - 8]
	mov	qword ptr [rsi + 0x10], rdx
	mov	rsi, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	qword ptr [rsi + 0x18], rdx
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 8]
	mov	rsp, rsp
	add	rdx, qword ptr [rsi]
	nop	
	mov	rsi, qword ptr [rbp - 0x20]
	mov	qword ptr [rsi], rdx
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 8]
	mov	qword ptr [rsi + 0x20], rdx
	mov	rdx, qword ptr [rbp - 0x20]
	mov	qword ptr [rdx + 8], 0
	mov	rdx, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	r8b, byte ptr [rdx + 0x50]
	mov	rbp, rbp
	and	r8b, 0xfd
	mov	rsp, rsp
	mov	byte ptr [rdx + 0x50], r8b
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 8]
	nop	
	mov	r8b, byte ptr [rdx + 0x50]
	lea	rdi, [rdi]
	and	r8b, 0xfb
	mov	byte ptr [rdx + 0x50], r8b
	lea	rdi, [rdi]
	add	rsp, 0x30
	pop	rbp
	lea	rsi, [rsi]
	ret	
	.section	.text
	.align	16
	#Procedure 0x422df0

	.globl _obstack_begin_1
	.type _obstack_begin_1, @function
_obstack_begin_1:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	rbp, rbp
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	qword ptr [rbp - 0x20], rcx
	mov	qword ptr [rbp - 0x28], r8
	mov	qword ptr [rbp - 0x30], r9
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 8]
	mov	qword ptr [rdx + 0x38], rcx
	mov	rcx, qword ptr [rbp - 0x28]
	mov	rdx, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	mov	qword ptr [rdx + 0x40], rcx
	mov	rcx, qword ptr [rbp - 0x30]
	mov	rdx, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	mov	qword ptr [rdx + 0x48], rcx
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 8]
	mov	rbp, rbp
	mov	al, byte ptr [rcx + 0x50]
	and	al, 0xfe
	or	al, 1
	mov	rbp, rbp
	mov	byte ptr [rcx + 0x50], al
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	nop	
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	call	_obstack_begin_worker
	mov	rsp, rsp
	add	rsp, 0x30
	pop	rbp
	mov	rsp, rsp
	ret	
	.section	.text
	.align	16
	#Procedure 0x422e80

	.globl _obstack_newchunk
	.type _obstack_newchunk, @function
_obstack_newchunk:
	push	rbp
	nop	
	mov	rbp, rsp
	nop	
	sub	rsp, 0x50
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rsi + 8]
	mov	qword ptr [rbp - 0x18], rsi
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x20], 0
	mov	rsi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rsi + 0x18]
	mov	rdi, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rdi + 0x10]
	sub	rsi, rdi
	mov	qword ptr [rbp - 0x28], rsi
	nop	
	mov	rsi, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	add	rsi, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x38], rsi
	mov	rsi, qword ptr [rbp - 0x38]
	mov	rdi, qword ptr [rbp - 8]
	add	rsi, qword ptr [rdi + 0x30]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x40], rsi
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x40]
	mov	rdi, qword ptr [rbp - 0x28]
	nop	
	shr	rdi, 3
	mov	rsp, rsp
	add	rsi, rdi
	add	rsi, 0x64
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x48], rsi
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x48]
	cmp	rsi, qword ptr [rbp - 0x40]
	jae	.label_2172
	mov	rax, qword ptr [rbp - 0x40]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x48], rax
.label_2172:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x48]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 8]
	cmp	rax, qword ptr [rcx]
	jae	.label_2174
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x48], rax
.label_2174:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x28]
	cmp	rax, qword ptr [rbp - 0x38]
	mov	rsp, rsp
	ja	.label_2173
	mov	rax, qword ptr [rbp - 0x38]
	lea	rdi, [rdi]
	cmp	rax, qword ptr [rbp - 0x40]
	mov	rsp, rsp
	ja	.label_2173
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x48]
	call	call_chunkfun
	mov	qword ptr [rbp - 0x20], rax
.label_2173:
	cmp	qword ptr [rbp - 0x20], 0
	jne	.label_2175
	nop	
	call	qword ptr [word ptr [obstack_alloc_failed_handler]]
.label_2175:
	xor	eax, eax
	mov	ecx, eax
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 8]
	mov	qword ptr [rsi + 8], rdx
	mov	rdx, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x20]
	mov	qword ptr [rsi + 8], rdx
	mov	rdx, qword ptr [rbp - 0x20]
	add	rdx, qword ptr [rbp - 0x48]
	mov	rsi, qword ptr [rbp - 8]
	mov	qword ptr [rsi + 0x20], rdx
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x20]
	nop	
	mov	qword ptr [rsi], rdx
	mov	rdx, qword ptr [rbp - 0x20]
	nop	
	add	rdx, 0x10
	lea	rdi, [rdi]
	sub	rdx, 0
	mov	rsi, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	add	rdx, qword ptr [rsi + 0x30]
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rsi + 0x30]
	mov	rsp, rsp
	xor	rsi, 0xffffffffffffffff
	and	rdx, rsi
	add	rcx, rdx
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x30], rcx
	mov	rdi, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rcx + 0x10]
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x28]
	call	memcpy
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 8]
	mov	r8b, byte ptr [rcx + 0x50]
	shr	r8b, 1
	and	r8b, 1
	movzx	eax, r8b
	cmp	eax, 0
	nop	
	jne	.label_2176
	mov	rsp, rsp
	xor	eax, eax
	lea	rsi, [rsi]
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 8]
	mov	rdx, qword ptr [rdx + 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	add	rsi, 0x10
	mov	rsp, rsp
	sub	rsi, 0
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 8]
	nop	
	add	rsi, qword ptr [rdi + 0x30]
	mov	rdi, qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	rdi, qword ptr [rdi + 0x30]
	xor	rdi, 0xffffffffffffffff
	and	rsi, rdi
	add	rcx, rsi
	cmp	rdx, rcx
	jne	.label_2176
	nop	
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax + 8]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	mov	qword ptr [rcx + 8], rax
	mov	rdi, qword ptr [rbp - 8]
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	mov	rsi, rax
	mov	rsp, rsp
	call	call_freefun
.label_2176:
	nop	
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 8]
	mov	qword ptr [rcx + 0x10], rax
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax + 0x10]
	mov	rbp, rbp
	add	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 8]
	mov	qword ptr [rcx + 0x18], rax
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	mov	dl, byte ptr [rax + 0x50]
	and	dl, 0xfd
	mov	byte ptr [rax + 0x50], dl
	add	rsp, 0x50
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x423110

	.globl call_chunkfun
	.type call_chunkfun, @function
call_chunkfun:
	nop	
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 0x10], rdi
	nop	
	mov	qword ptr [rbp - 0x18], rsi
	mov	rsi, qword ptr [rbp - 0x10]
	mov	al, byte ptr [rsi + 0x50]
	lea	rdi, [rdi]
	and	al, 1
	lea	rsi, [rsi]
	movzx	ecx, al
	lea	rdi, [rdi]
	cmp	ecx, 0
	nop	
	je	.label_2177
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x38]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	rdi, qword ptr [rcx + 0x48]
	mov	rsi, qword ptr [rbp - 0x18]
	call	rax
	mov	qword ptr [rbp - 8], rax
	jmp	.label_2178
.label_2177:
	mov	rax, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax + 0x38]
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x18]
	call	rax
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 8], rax
.label_2178:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x20
	mov	rsp, rsp
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x423190

	.globl call_freefun
	.type call_freefun, @function
call_freefun:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 8]
	mov	al, byte ptr [rsi + 0x50]
	and	al, 1
	movzx	ecx, al
	cmp	ecx, 0
	lea	rsi, [rsi]
	je	.label_2179
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax + 0x40]
	mov	rcx, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rcx + 0x48]
	mov	rsi, qword ptr [rbp - 0x10]
	call	rax
	jmp	.label_2180
.label_2179:
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax + 0x40]
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x10]
	call	rax
.label_2180:
	mov	rbp, rbp
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x423200

	.globl _obstack_allocated_p
	.type _obstack_allocated_p, @function
_obstack_allocated_p:
	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rsi + 8]
	mov	qword ptr [rbp - 0x18], rsi
.label_2184:
	lea	rdi, [rdi]
	xor	eax, eax
	mov	cl, al
	cmp	qword ptr [rbp - 0x18], 0
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x21], cl
	je	.label_2185
	mov	al, 1
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	cmp	rcx, qword ptr [rbp - 0x10]
	nop	
	mov	byte ptr [rbp - 0x22], al
	lea	rsi, [rsi]
	jae	.label_2183
	mov	rax, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax]
	lea	rdi, [rdi]
	cmp	rax, qword ptr [rbp - 0x10]
	nop	
	setb	cl
	nop	
	mov	byte ptr [rbp - 0x22], cl
.label_2183:
	nop	
	mov	al, byte ptr [rbp - 0x22]
	mov	byte ptr [rbp - 0x21], al
.label_2185:
	lea	rsi, [rsi]
	mov	al, byte ptr [rbp - 0x21]
	test	al, 1
	lea	rdi, [rdi]
	jne	.label_2181
	jmp	.label_2182
.label_2181:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x20], rax
	mov	rax, qword ptr [rbp - 0x20]
	nop	
	mov	qword ptr [rbp - 0x18], rax
	mov	rbp, rbp
	jmp	.label_2184
.label_2182:
	cmp	qword ptr [rbp - 0x18], 0
	setne	al
	lea	rdi, [rdi]
	and	al, 1
	lea	rsi, [rsi]
	movzx	eax, al
	mov	rbp, rbp
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4232d0

	.globl _obstack_free
	.type _obstack_free, @function
_obstack_free:
	lea	rdi, [rdi]
	push	rbp
	nop	
	mov	rbp, rsp
	lea	rsi, [rsi]
	sub	rsp, 0x30
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	nop	
	mov	rsi, qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	rsi, qword ptr [rsi + 8]
	mov	qword ptr [rbp - 0x18], rsi
.label_2193:
	xor	eax, eax
	mov	rbp, rbp
	mov	cl, al
	cmp	qword ptr [rbp - 0x18], 0
	mov	byte ptr [rbp - 0x21], cl
	je	.label_2189
	lea	rsi, [rsi]
	mov	al, 1
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x18]
	cmp	rcx, qword ptr [rbp - 0x10]
	nop	
	mov	byte ptr [rbp - 0x22], al
	jae	.label_2190
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax]
	cmp	rax, qword ptr [rbp - 0x10]
	setb	cl
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x22], cl
.label_2190:
	mov	rbp, rbp
	mov	al, byte ptr [rbp - 0x22]
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x21], al
.label_2189:
	mov	rsp, rsp
	mov	al, byte ptr [rbp - 0x21]
	test	al, 1
	lea	rsi, [rsi]
	jne	.label_2187
	mov	rbp, rbp
	jmp	.label_2192
.label_2187:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x20], rax
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 8]
	nop	
	mov	rax, qword ptr [rbp - 0x18]
	mov	rsi, rax
	lea	rsi, [rsi]
	call	call_freefun
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x18], rax
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	cl, byte ptr [rax + 0x50]
	lea	rsi, [rsi]
	and	cl, 0xfd
	lea	rsi, [rsi]
	or	cl, 2
	mov	byte ptr [rax + 0x50], cl
	jmp	.label_2193
.label_2192:
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x18], 0
	mov	rsp, rsp
	je	.label_2191
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 8]
	mov	qword ptr [rcx + 0x18], rax
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	qword ptr [rcx + 0x10], rax
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	mov	qword ptr [rcx + 0x20], rax
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x18]
	nop	
	mov	rcx, qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	qword ptr [rcx + 8], rax
	jmp	.label_2186
.label_2191:
	cmp	qword ptr [rbp - 0x10], 0
	nop	
	je	.label_2188
	mov	rbp, rbp
	call	abort
.label_2188:
	jmp	.label_2186
.label_2186:
	lea	rsi, [rsi]
	add	rsp, 0x30
	pop	rbp
	mov	rsp, rsp
	ret	
	.section	.text
	.align	16
	#Procedure 0x423430

	.globl _obstack_memory_used
	.type _obstack_memory_used, @function
_obstack_memory_used:
	mov	rbp, rbp
	push	rbp
	nop	
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x18], 0
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rdi + 8]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x10], rdi
.label_2194:
	nop	
	cmp	qword ptr [rbp - 0x10], 0
	je	.label_2195
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x10]
	nop	
	mov	rax, qword ptr [rax]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x10]
	sub	rax, rcx
	lea	rdi, [rdi]
	add	rax, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x18], rax
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax + 8]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x10], rax
	lea	rsi, [rsi]
	jmp	.label_2194
.label_2195:
	nop	
	mov	rax, qword ptr [rbp - 0x18]
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4234b0

	.globl print_and_abort
	.type print_and_abort, @function
print_and_abort:
	nop
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	lea	rsi, [rsi]
	movabs	rdi, OFFSET FLAT:.str.1_9
	mov	rax,  qword ptr [word ptr [stderr]]
	mov	qword ptr [rbp - 8], rax
	mov	rsp, rsp
	call	gettext
	movabs	rsi, OFFSET FLAT:.str_2
	mov	rdi, qword ptr [rbp - 8]
	nop	
	mov	rdx, rax
	mov	al, 0
	call	fprintf
	mov	edi,  dword ptr [dword ptr [exit_failure]]
	mov	dword ptr [rbp - 0xc], eax
	nop	
	call	exit
	.section	.text
	.align	16
	#Procedure 0x423510
	.globl rotl64
	.type rotl64, @function
rotl64:

	mov	rsp, rsp
	push	rbp
	mov	rbp, rsp
	mov	eax, 0x40
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 8], rdi
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0xc], esi
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	esi, dword ptr [rbp - 0xc]
	mov	ecx, esi
	shl	rdi, cl
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 8]
	sub	eax, dword ptr [rbp - 0xc]
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
	.align	16
	#Procedure 0x423560
	.globl rotr64
	.type rotr64, @function
rotr64:

	push	rbp
	mov	rbp, rsp
	lea	rdi, [rdi]
	mov	eax, 0x40
	mov	qword ptr [rbp - 8], rdi
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0xc], esi
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	esi, dword ptr [rbp - 0xc]
	mov	rsp, rsp
	mov	ecx, esi
	nop	
	shr	rdi, cl
	mov	rdx, qword ptr [rbp - 8]
	sub	eax, dword ptr [rbp - 0xc]
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
	.align	16
	#Procedure 0x4235b0
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
	.align	16
	#Procedure 0x423600
	.globl rotr32
	.type rotr32, @function
rotr32:

	nop
	push	rbp
	mov	rbp, rsp
	mov	eax, 0x20
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 4], edi
	mov	rsp, rsp
	mov	dword ptr [rbp - 8], esi
	lea	rsi, [rsi]
	mov	esi, dword ptr [rbp - 4]
	mov	ecx, dword ptr [rbp - 8]
	mov	rsp, rsp
	shr	esi, cl
	mov	edi, dword ptr [rbp - 4]
	sub	eax, dword ptr [rbp - 8]
	mov	ecx, eax
	shl	edi, cl
	or	esi, edi
	mov	eax, esi
	mov	rsp, rsp
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x423640
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
	.align	16
	#Procedure 0x4236a0

	.globl rotr_sz
	.type rotr_sz, @function
rotr_sz:
	push	rbp
	mov	rbp, rsp
	mov	eax, 0x40
	nop	
	mov	ecx, eax
	mov	qword ptr [rbp - 8], rdi
	mov	dword ptr [rbp - 0xc], esi
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 8]
	mov	eax, dword ptr [rbp - 0xc]
	mov	edx, eax
	mov	qword ptr [rbp - 0x18], rcx
	mov	rsp, rsp
	mov	rcx, rdx
	lea	rdi, [rdi]
	shr	rdi, cl
	nop	
	mov	rdx, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	movsxd	r8, dword ptr [rbp - 0xc]
	mov	r9, qword ptr [rbp - 0x18]
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
	.align	16
	#Procedure 0x423700
	.globl rotl16
	.type rotl16, @function
rotl16:

	push	rbp
	mov	rbp, rsp
	mov	ax, di
	lea	rsi, [rsi]
	mov	edi, 0x10
	mov	rsp, rsp
	mov	word ptr [rbp - 2], ax
	mov	rbp, rbp
	mov	dword ptr [rbp - 8], esi
	movzx	esi, word ptr [rbp - 2]
	mov	rbp, rbp
	mov	ecx, dword ptr [rbp - 8]
	mov	rbp, rbp
	shl	esi, cl
	movzx	edx, word ptr [rbp - 2]
	sub	edi, dword ptr [rbp - 8]
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
	.align	16
	#Procedure 0x423750
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
	.align	16
	#Procedure 0x4237a0
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
	mov	byte ptr [rbp - 1], al
	nop	
	mov	dword ptr [rbp - 8], esi
	lea	rdi, [rdi]
	movzx	esi, byte ptr [rbp - 1]
	mov	ecx, dword ptr [rbp - 8]
	lea	rdi, [rdi]
	shl	esi, cl
	lea	rsi, [rsi]
	movzx	edx, byte ptr [rbp - 1]
	mov	rsp, rsp
	sub	edi, dword ptr [rbp - 8]
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
	.align	16
	#Procedure 0x423800
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
	.align	16
	#Procedure 0x423850

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
	jb	.label_2196
	jmp	.label_2199
.label_2199:
	mov	eax, dword ptr [rbp - 0xc]
	add	eax, -0x41
	sub	eax, 0x1a
	mov	dword ptr [rbp - 0x14], eax
	jb	.label_2196
	jmp	.label_2197
.label_2197:
	mov	eax, dword ptr [rbp - 0xc]
	add	eax, -0x61
	sub	eax, 0x19
	mov	dword ptr [rbp - 0x18], eax
	ja	.label_2198
	jmp	.label_2196
.label_2196:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_2200
.label_2198:
	mov	byte ptr [rbp - 1], 0
.label_2200:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4238c0

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
	jb	.label_2201
	jmp	.label_2204
.label_2204:
	mov	eax, dword ptr [rbp - 0xc]
	add	eax, -0x61
	sub	eax, 0x19
	mov	dword ptr [rbp - 0x14], eax
	ja	.label_2202
	jmp	.label_2201
.label_2201:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_2203
.label_2202:
	mov	byte ptr [rbp - 1], 0
.label_2203:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x423910
	.globl c_isascii
	.type c_isascii, @function
c_isascii:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	sub	edi, 0x7f
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_2205
	jmp	.label_2206
.label_2206:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_2207
.label_2205:
	mov	byte ptr [rbp - 1], 0
.label_2207:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x423940
	.globl c_isblank
	.type c_isblank, @function
c_isblank:

	push	rbp
	mov	rbp, rsp
	mov	al, 1
	mov	dword ptr [rbp - 4], edi
	cmp	dword ptr [rbp - 4], 0x20
	mov	byte ptr [rbp - 5], al
	je	.label_2208
	cmp	dword ptr [rbp - 4], 9
	sete	al
	mov	byte ptr [rbp - 5], al
.label_2208:
	mov	al, byte ptr [rbp - 5]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x423970
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
	jb	.label_2209
	jmp	.label_2211
.label_2211:
	mov	eax, dword ptr [rbp - 0xc]
	sub	eax, 0x7f
	mov	dword ptr [rbp - 0x14], eax
	jne	.label_2212
	jmp	.label_2209
.label_2209:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_2210
.label_2212:
	mov	byte ptr [rbp - 1], 0
.label_2210:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4239c0

	.globl c_isdigit
	.type c_isdigit, @function
c_isdigit:
	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	add	edi, -0x30
	sub	edi, 9
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_2213
	jmp	.label_2215
.label_2215:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_2214
.label_2213:
	mov	byte ptr [rbp - 1], 0
.label_2214:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x423a00
	.globl c_isgraph
	.type c_isgraph, @function
c_isgraph:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	add	edi, -0x21
	sub	edi, 0x5d
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_2216
	jmp	.label_2218
.label_2218:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_2217
.label_2216:
	mov	byte ptr [rbp - 1], 0
.label_2217:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x423a40
	.globl c_islower
	.type c_islower, @function
c_islower:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	add	edi, -0x61
	sub	edi, 0x19
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_2219
	jmp	.label_2221
.label_2221:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_2220
.label_2219:
	mov	byte ptr [rbp - 1], 0
.label_2220:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x423a80
	.globl c_isprint
	.type c_isprint, @function
c_isprint:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	add	edi, -0x20
	sub	edi, 0x5e
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_2222
	jmp	.label_2224
.label_2224:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_2223
.label_2222:
	mov	byte ptr [rbp - 1], 0
.label_2223:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x423ac0
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
	jb	.label_2225
	jmp	.label_2228
.label_2228:
	mov	eax, dword ptr [rbp - 0xc]
	add	eax, -0x3a
	sub	eax, 7
	mov	dword ptr [rbp - 0x14], eax
	jb	.label_2225
	jmp	.label_2229
.label_2229:
	mov	eax, dword ptr [rbp - 0xc]
	add	eax, -0x5b
	sub	eax, 6
	mov	dword ptr [rbp - 0x18], eax
	jb	.label_2225
	jmp	.label_2227
.label_2227:
	mov	eax, dword ptr [rbp - 0xc]
	add	eax, -0x7b
	sub	eax, 3
	mov	dword ptr [rbp - 0x1c], eax
	ja	.label_2230
	jmp	.label_2225
.label_2225:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_2226
.label_2230:
	mov	byte ptr [rbp - 1], 0
.label_2226:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x423b40

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
	jb	.label_2231
	jmp	.label_2234
.label_2234:
	mov	eax, dword ptr [rbp - 0xc]
	sub	eax, 0x20
	mov	dword ptr [rbp - 0x14], eax
	jne	.label_2232
	jmp	.label_2231
.label_2231:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_2233
.label_2232:
	mov	byte ptr [rbp - 1], 0
.label_2233:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x423b90
	.globl c_isupper
	.type c_isupper, @function
c_isupper:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	add	edi, -0x41
	sub	edi, 0x19
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_2235
	jmp	.label_2237
.label_2237:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_2236
.label_2235:
	mov	byte ptr [rbp - 1], 0
.label_2236:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x423bd0
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
	jb	.label_2238
	jmp	.label_2240
.label_2240:
	mov	eax, dword ptr [rbp - 0xc]
	add	eax, -0x41
	sub	eax, 6
	mov	dword ptr [rbp - 0x14], eax
	jb	.label_2238
	jmp	.label_2239
.label_2239:
	mov	eax, dword ptr [rbp - 0xc]
	add	eax, -0x61
	sub	eax, 5
	mov	dword ptr [rbp - 0x18], eax
	ja	.label_2241
	jmp	.label_2238
.label_2238:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_2242
.label_2241:
	mov	byte ptr [rbp - 1], 0
.label_2242:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x423c40

	.globl c_tolower
	.type c_tolower, @function
c_tolower:
	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	add	edi, -0x41
	sub	edi, 0x19
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_2243
	jmp	.label_2245
.label_2245:
	mov	eax, dword ptr [rbp - 8]
	sub	eax, 0x41
	add	eax, 0x61
	mov	dword ptr [rbp - 4], eax
	jmp	.label_2244
.label_2243:
	mov	eax, dword ptr [rbp - 8]
	mov	dword ptr [rbp - 4], eax
.label_2244:
	mov	eax, dword ptr [rbp - 4]
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x423c80
	.globl c_toupper
	.type c_toupper, @function
c_toupper:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	add	edi, -0x61
	sub	edi, 0x19
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_2246
	jmp	.label_2248
.label_2248:
	mov	eax, dword ptr [rbp - 8]
	sub	eax, 0x61
	add	eax, 0x41
	mov	dword ptr [rbp - 4], eax
	jmp	.label_2247
.label_2246:
	mov	eax, dword ptr [rbp - 8]
	mov	dword ptr [rbp - 4], eax
.label_2247:
	mov	eax, dword ptr [rbp - 4]
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x423cc0

	.globl c_strcasecmp
	.type c_strcasecmp, @function
c_strcasecmp:
	mov	rsp, rsp
	push	rbp
	lea	rdi, [rdi]
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x20], rsi
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x28], rsi
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	cmp	rsi, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	jne	.label_2249
	mov	dword ptr [rbp - 4], 0
	lea	rsi, [rsi]
	jmp	.label_2252
.label_2249:
	mov	rbp, rbp
	jmp	.label_2250
.label_2250:
	mov	rax, qword ptr [rbp - 0x20]
	movzx	edi, byte ptr [rax]
	mov	rsp, rsp
	call	c_tolower
	lea	rsi, [rsi]
	mov	cl, al
	mov	byte ptr [rbp - 0x29], cl
	mov	rdx, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	movzx	edi, byte ptr [rdx]
	call	c_tolower
	nop	
	mov	cl, al
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x2a], cl
	lea	rdi, [rdi]
	movzx	eax, byte ptr [rbp - 0x29]
	cmp	eax, 0
	jne	.label_2251
	jmp	.label_2253
.label_2251:
	mov	rax, qword ptr [rbp - 0x20]
	add	rax, 1
	nop	
	mov	qword ptr [rbp - 0x20], rax
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, 1
	mov	qword ptr [rbp - 0x28], rax
	lea	rsi, [rsi]
	movzx	eax, byte ptr [rbp - 0x29]
	movzx	ecx, byte ptr [rbp - 0x2a]
	cmp	eax, ecx
	lea	rdi, [rdi]
	je	.label_2250
.label_2253:
	movzx	eax, byte ptr [rbp - 0x29]
	mov	rsp, rsp
	movzx	ecx, byte ptr [rbp - 0x2a]
	mov	rsp, rsp
	sub	eax, ecx
	mov	dword ptr [rbp - 4], eax
.label_2252:
	mov	eax, dword ptr [rbp - 4]
	nop	
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x423db0

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
	mov	byte ptr [rbp - 0x11], cl
	nop	
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	call	ferror_unlocked
	nop	
	cmp	eax, 0
	setne	cl
	mov	rbp, rbp
	and	cl, 1
	mov	byte ptr [rbp - 0x12], cl
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x10]
	call	rpl_fclose
	mov	rsp, rsp
	cmp	eax, 0
	setne	cl
	mov	rbp, rbp
	and	cl, 1
	mov	byte ptr [rbp - 0x13], cl
	nop	
	test	byte ptr [rbp - 0x12], 1
	lea	rsi, [rsi]
	jne	.label_2256
	test	byte ptr [rbp - 0x13], 1
	je	.label_2255
	test	byte ptr [rbp - 0x11], 1
	lea	rsi, [rsi]
	jne	.label_2256
	mov	rbp, rbp
	call	__errno_location
	lea	rdi, [rdi]
	cmp	dword ptr [rax], 9
	je	.label_2255
.label_2256:
	nop	
	test	byte ptr [rbp - 0x13], 1
	mov	rsp, rsp
	jne	.label_2254
	call	__errno_location
	mov	dword ptr [rax], 0
.label_2254:
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 4], 0xffffffff
	jmp	.label_2257
.label_2255:
	mov	rsp, rsp
	mov	dword ptr [rbp - 4], 0
.label_2257:
	nop	
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x423e90

	.globl dtotimespec
	.type dtotimespec, @function
dtotimespec:
	mov	rbp, rbp
	push	rbp
	lea	rdi, [rdi]
	mov	rbp, rsp
	nop	
	sub	rsp, 0x30
	mov	rbp, rbp
	movsd	xmm1,  qword ptr [word ptr [label_2258]]
	movsd	qword ptr [rbp - 0x18], xmm0
	lea	rsi, [rsi]
	movsd	xmm0, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	ucomisd	xmm0, xmm1
	mov	rsp, rsp
	ja	.label_2259
	lea	rdi, [rdi]
	movabs	rdi, 0x8000000000000000
	xor	eax, eax
	mov	esi, eax
	call	make_timespec
	mov	qword ptr [rbp - 0x10], rax
	mov	rbp, rbp
	mov	qword ptr [rbp - 8], rdx
	jmp	.label_2260
.label_2259:
	movsd	xmm0,  qword ptr [word ptr [label_257]]
	ucomisd	xmm0, qword ptr [rbp - 0x18]
	ja	.label_2263
	lea	rdi, [rdi]
	movabs	rdi, 0x7fffffffffffffff
	mov	eax, 0x3b9ac9ff
	nop	
	mov	esi, eax
	call	make_timespec
	mov	qword ptr [rbp - 0x10], rax
	nop	
	mov	qword ptr [rbp - 8], rdx
	mov	rbp, rbp
	jmp	.label_2260
.label_2263:
	lea	rsi, [rsi]
	mov	eax, 0x3b9aca00
	mov	ecx, eax
	nop	
	movsd	xmm0,  qword ptr [word ptr [label_2261]]
	cvttsd2si	rdx, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x20], rdx
	lea	rdi, [rdi]
	movsd	xmm1, qword ptr [rbp - 0x18]
	cvtsi2sd	xmm2, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	subsd	xmm1, xmm2
	mulsd	xmm0, xmm1
	movsd	qword ptr [rbp - 0x28], xmm0
	lea	rsi, [rsi]
	cvttsd2si	rdx, qword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x30], rdx
	cvtsi2sd	xmm0, qword ptr [rbp - 0x30]
	mov	rbp, rbp
	movsd	xmm1, qword ptr [rbp - 0x28]
	ucomisd	xmm1, xmm0
	nop	
	seta	sil
	lea	rsi, [rsi]
	and	sil, 1
	mov	rsp, rsp
	movzx	eax, sil
	nop	
	movsxd	rdx, eax
	add	rdx, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x30], rdx
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x30]
	mov	rsp, rsp
	cqo	
	idiv	rcx
	lea	rdi, [rdi]
	add	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x20], rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x30]
	mov	rbp, rbp
	cqo	
	mov	rbp, rbp
	idiv	rcx
	mov	qword ptr [rbp - 0x30], rdx
	nop	
	cmp	qword ptr [rbp - 0x30], 0
	jge	.label_2262
	mov	rax, qword ptr [rbp - 0x20]
	add	rax, -1
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x20], rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, 0x3b9aca00
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x30], rax
.label_2262:
	mov	rdi, qword ptr [rbp - 0x20]
	nop	
	mov	rsi, qword ptr [rbp - 0x30]
	mov	rsp, rsp
	call	make_timespec
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x10], rax
	mov	rsp, rsp
	mov	qword ptr [rbp - 8], rdx
.label_2260:
	mov	rax, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 8]
	mov	rsp, rsp
	add	rsp, 0x30
	nop	
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x424040

	.globl fd_safer_flag
	.type fd_safer_flag, @function
fd_safer_flag:
	nop	
	push	rbp
	lea	rsi, [rsi]
	mov	rbp, rsp
	mov	rbp, rbp
	sub	rsp, 0x20
	mov	rbp, rbp
	xor	eax, eax
	mov	dword ptr [rbp - 4], edi
	mov	dword ptr [rbp - 8], esi
	mov	rbp, rbp
	cmp	eax, dword ptr [rbp - 4]
	lea	rdi, [rdi]
	jg	.label_2264
	lea	rsi, [rsi]
	cmp	dword ptr [rbp - 4], 2
	lea	rsi, [rsi]
	jg	.label_2264
	mov	rbp, rbp
	mov	edi, dword ptr [rbp - 4]
	mov	esi, dword ptr [rbp - 8]
	call	dup_safer_flag
	nop	
	mov	dword ptr [rbp - 0xc], eax
	lea	rdi, [rdi]
	call	__errno_location
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0x10], esi
	mov	edi, dword ptr [rbp - 4]
	mov	rsp, rsp
	call	close
	mov	esi, dword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x14], eax
	mov	dword ptr [rbp - 0x18], esi
	call	__errno_location
	mov	esi, dword ptr [rbp - 0x18]
	mov	dword ptr [rax], esi
	mov	esi, dword ptr [rbp - 0xc]
	mov	dword ptr [rbp - 4], esi
.label_2264:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 4]
	mov	rsp, rsp
	add	rsp, 0x20
	pop	rbp
	nop	
	ret	
	.section	.text
	.align	16
	#Procedure 0x4240d0

	.globl dup_safer_flag
	.type dup_safer_flag, @function
dup_safer_flag:
	nop	
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	edx, 3
	xor	eax, eax
	lea	rdi, [rdi]
	mov	ecx, 0x406
	nop	
	mov	dword ptr [rbp - 4], edi
	mov	dword ptr [rbp - 8], esi
	mov	edi, dword ptr [rbp - 4]
	lea	rsi, [rsi]
	mov	esi, dword ptr [rbp - 8]
	nop	
	and	esi, 0x80000
	lea	rsi, [rsi]
	cmp	esi, 0
	lea	rsi, [rsi]
	cmovne	eax, ecx
	mov	esi, eax
	mov	al, 0
	call	rpl_fcntl
	lea	rsi, [rsi]
	add	rsp, 0x10
	pop	rbp
	lea	rsi, [rsi]
	ret	
	.section	.text
	.align	16
	#Procedure 0x424120

	.globl fopen_safer
	.type fopen_safer, @function
fopen_safer:
	lea	rdi, [rdi]
	push	rbp
	mov	rbp, rsp
	lea	rsi, [rsi]
	sub	rsp, 0x40
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x10], rdi
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x18], rsi
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	call	fopen
	mov	qword ptr [rbp - 0x20], rax
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x20], 0
	je	.label_2266
	mov	rdi, qword ptr [rbp - 0x20]
	call	fileno
	mov	rbp, rbp
	xor	ecx, ecx
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x24], eax
	mov	rsp, rsp
	cmp	ecx, dword ptr [rbp - 0x24]
	jg	.label_2269
	cmp	dword ptr [rbp - 0x24], 2
	lea	rsi, [rsi]
	jg	.label_2269
	mov	edi, dword ptr [rbp - 0x24]
	mov	rbp, rbp
	call	dup_safer
	mov	dword ptr [rbp - 0x28], eax
	mov	rsp, rsp
	cmp	dword ptr [rbp - 0x28], 0
	lea	rsi, [rsi]
	jge	.label_2268
	call	__errno_location
	mov	rbp, rbp
	mov	ecx, dword ptr [rax]
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x2c], ecx
	mov	rdi, qword ptr [rbp - 0x20]
	call	rpl_fclose
	mov	ecx, dword ptr [rbp - 0x2c]
	mov	dword ptr [rbp - 0x34], eax
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x38], ecx
	mov	rbp, rbp
	call	__errno_location
	mov	rbp, rbp
	mov	ecx, dword ptr [rbp - 0x38]
	mov	dword ptr [rax], ecx
	mov	rsp, rsp
	mov	qword ptr [rbp - 8], 0
	jmp	.label_2267
.label_2268:
	mov	rdi, qword ptr [rbp - 0x20]
	call	rpl_fclose
	lea	rsi, [rsi]
	cmp	eax, 0
	mov	rsp, rsp
	jne	.label_2265
	mov	edi, dword ptr [rbp - 0x28]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	call	fdopen
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x20], rax
	cmp	rax, 0
	mov	rsp, rsp
	jne	.label_2270
.label_2265:
	lea	rdi, [rdi]
	call	__errno_location
	mov	rbp, rbp
	mov	ecx, dword ptr [rax]
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x30], ecx
	nop	
	mov	edi, dword ptr [rbp - 0x28]
	call	close
	mov	rbp, rbp
	mov	ecx, dword ptr [rbp - 0x30]
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x3c], eax
	mov	dword ptr [rbp - 0x40], ecx
	lea	rsi, [rsi]
	call	__errno_location
	mov	ecx, dword ptr [rbp - 0x40]
	lea	rsi, [rsi]
	mov	dword ptr [rax], ecx
	nop	
	mov	qword ptr [rbp - 8], 0
	jmp	.label_2267
.label_2270:
	jmp	.label_2269
.label_2269:
	jmp	.label_2266
.label_2266:
	nop	
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 8], rax
.label_2267:
	nop	
	mov	rax, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	add	rsp, 0x40
	mov	rbp, rbp
	pop	rbp
	lea	rdi, [rdi]
	ret	
	.section	.text
	.align	16
	#Procedure 0x4242a0

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
	jne	.label_2272
	lea	rsi, [rsi]
	movabs	rax, OFFSET FLAT:.str_0
	nop	
	mov	qword ptr [rbp - 8], rax
.label_2272:
	mov	rax, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	movsx	ecx, byte ptr [rax]
	nop	
	cmp	ecx, 0
	mov	rsp, rsp
	jne	.label_2271
	lea	rsi, [rsi]
	movabs	rax, OFFSET FLAT:.str.1_13
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 8], rax
.label_2271:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 8]
	nop	
	add	rsp, 0x10
	nop	
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x424320

	.globl memcoll
	.type memcoll, @function
memcoll:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	rbp, rbp
	mov	qword ptr [rbp - 8], rdi
	nop	
	mov	qword ptr [rbp - 0x10], rsi
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x18], rdx
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x20], rcx
	nop	
	mov	rcx, qword ptr [rbp - 0x10]
	cmp	rcx, qword ptr [rbp - 0x20]
	jne	.label_2273
	mov	rdi, qword ptr [rbp - 8]
	nop	
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x10]
	call	memcmp
	nop	
	cmp	eax, 0
	jne	.label_2273
	call	__errno_location
	mov	rbp, rbp
	mov	dword ptr [rax], 0
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x24], 0
	mov	rsp, rsp
	jmp	.label_2274
.label_2273:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	dl, byte ptr [rcx + rax]
	mov	byte ptr [rbp - 0x25], dl
	nop	
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	mov	dl, byte ptr [rcx + rax]
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x26], dl
	nop	
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	byte ptr [rcx + rax], 0
	mov	rax, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0
	mov	rdi, qword ptr [rbp - 8]
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 1
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x20]
	nop	
	add	rcx, 1
	mov	rsi, rax
	call	strcoll_loop
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x24], eax
	mov	r8b, byte ptr [rbp - 0x25]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 8]
	mov	byte ptr [rdx + rcx], r8b
	lea	rdi, [rdi]
	mov	r8b, byte ptr [rbp - 0x26]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x20]
	nop	
	mov	rdx, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	mov	byte ptr [rdx + rcx], r8b
.label_2274:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x24]
	lea	rdi, [rdi]
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x424440

	.globl strcoll_loop
	.type strcoll_loop, @function
strcoll_loop:
	push	rbp
	lea	rsi, [rsi]
	mov	rbp, rsp
	sub	rsp, 0x50
	mov	qword ptr [rbp - 0x10], rdi
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x18], rsi
	nop	
	mov	qword ptr [rbp - 0x20], rdx
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x28], rcx
.label_2281:
	call	__errno_location
	mov	dword ptr [rax], 0
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	call	strcoll
	lea	rsi, [rsi]
	mov	cl, 1
	mov	dword ptr [rbp - 0x2c], eax
	cmp	eax, 0
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x41], cl
	jne	.label_2275
	mov	rbp, rbp
	call	__errno_location
	nop	
	cmp	dword ptr [rax], 0
	setne	cl
	mov	byte ptr [rbp - 0x41], cl
.label_2275:
	lea	rdi, [rdi]
	mov	al, byte ptr [rbp - 0x41]
	mov	rbp, rbp
	xor	al, 0xff
	lea	rsi, [rsi]
	test	al, 1
	mov	rbp, rbp
	jne	.label_2279
	jmp	.label_2276
.label_2279:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	call	strlen
	mov	rbp, rbp
	add	rax, 1
	mov	qword ptr [rbp - 0x38], rax
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x20]
	call	strlen
	add	rax, 1
	nop	
	mov	qword ptr [rbp - 0x40], rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x38]
	add	rax, qword ptr [rbp - 0x10]
	nop	
	mov	qword ptr [rbp - 0x10], rax
	mov	rax, qword ptr [rbp - 0x40]
	add	rax, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x20], rax
	mov	rax, qword ptr [rbp - 0x38]
	mov	rdi, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	sub	rdi, rax
	mov	qword ptr [rbp - 0x18], rdi
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x40]
	mov	rdi, qword ptr [rbp - 0x28]
	sub	rdi, rax
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x28], rdi
	nop	
	cmp	qword ptr [rbp - 0x18], 0
	jne	.label_2280
	mov	rbp, rbp
	xor	eax, eax
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x28], 0
	setne	cl
	lea	rdi, [rdi]
	and	cl, 1
	movzx	edx, cl
	sub	eax, edx
	nop	
	mov	dword ptr [rbp - 4], eax
	jmp	.label_2277
.label_2280:
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x28], 0
	lea	rdi, [rdi]
	jne	.label_2278
	mov	dword ptr [rbp - 4], 1
	mov	rbp, rbp
	jmp	.label_2277
.label_2278:
	mov	rsp, rsp
	jmp	.label_2281
.label_2276:
	mov	eax, dword ptr [rbp - 0x2c]
	mov	rsp, rsp
	mov	dword ptr [rbp - 4], eax
.label_2277:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 4]
	mov	rbp, rbp
	add	rsp, 0x50
	pop	rbp
	nop	
	ret	
	.section	.text
	.align	16
	#Procedure 0x4245b0

	.globl memcoll0
	.type memcoll0, @function
memcoll0:
	push	rbp
	mov	rbp, rsp
	nop	
	sub	rsp, 0x30
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x10], rdi
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], rdx
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x28], rcx
	nop	
	mov	rcx, qword ptr [rbp - 0x18]
	cmp	rcx, qword ptr [rbp - 0x28]
	nop	
	jne	.label_2282
	nop	
	mov	rdi, qword ptr [rbp - 0x10]
	nop	
	mov	rsi, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x18]
	call	memcmp
	cmp	eax, 0
	jne	.label_2282
	mov	rbp, rbp
	call	__errno_location
	lea	rsi, [rsi]
	mov	dword ptr [rax], 0
	mov	dword ptr [rbp - 4], 0
	lea	rdi, [rdi]
	jmp	.label_2283
.label_2282:
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x28]
	nop	
	call	strcoll_loop
	mov	dword ptr [rbp - 4], eax
.label_2283:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x424650

	.globl make_timespec
	.type make_timespec, @function
make_timespec:
	push	rbp
	mov	rbp, rsp
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x18], rdi
	mov	qword ptr [rbp - 0x20], rsi
	mov	rsi, qword ptr [rbp - 0x18]
	nop	
	mov	qword ptr [rbp - 0x30], rsi
	mov	rsi, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x28], rsi
	movups	xmm0, xmmword ptr [rbp - 0x30]
	lea	rdi, [rdi]
	movaps	xmmword ptr [rbp - 0x10], xmm0
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	pop	rbp
	lea	rdi, [rdi]
	ret	
	.section	.text
	.align	16
	#Procedure 0x4246a0
	.globl timespec_cmp
	.type timespec_cmp, @function
timespec_cmp:

	lea	rdi, [rdi]
	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 0x18], rdi
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x10], rsi
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x28], rdx
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x20], rcx
	mov	rcx, qword ptr [rbp - 0x18]
	cmp	rcx, qword ptr [rbp - 0x28]
	jge	.label_2284
	nop	
	mov	dword ptr [rbp - 4], 0xffffffff
	mov	rsp, rsp
	jmp	.label_2286
.label_2284:
	nop	
	mov	rax, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	cmp	rax, qword ptr [rbp - 0x28]
	jle	.label_2288
	nop	
	mov	dword ptr [rbp - 4], 1
	jmp	.label_2286
.label_2288:
	mov	rax, -1
	mov	rbp, rbp
	cmp	rax, qword ptr [rbp - 0x10]
	jg	.label_2287
	cmp	qword ptr [rbp - 0x10], 0x77359400
	jg	.label_2287
	mov	rbp, rbp
	jmp	.label_2287
.label_2287:
	mov	rax, -1
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	jg	.label_2285
	cmp	qword ptr [rbp - 0x20], 0x77359400
	lea	rsi, [rsi]
	jg	.label_2285
	lea	rdi, [rdi]
	jmp	.label_2285
.label_2285:
	mov	rax, qword ptr [rbp - 0x10]
	sub	rax, qword ptr [rbp - 0x20]
	nop	
	mov	ecx, eax
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 4], ecx
.label_2286:
	mov	eax, dword ptr [rbp - 4]
	pop	rbp
	lea	rdi, [rdi]
	ret	
	.section	.text
	.align	16
	#Procedure 0x424770
	.globl timespec_sign
	.type timespec_sign, @function
timespec_sign:

	mov	rsp, rsp
	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 8], rsi
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x10], 0
	jge	.label_2289
	mov	eax, 0xffffffff
	mov	dword ptr [rbp - 0x14], eax
	jmp	.label_2291
.label_2289:
	lea	rdi, [rdi]
	mov	al, 1
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x10], 0
	mov	byte ptr [rbp - 0x15], al
	mov	rsp, rsp
	jne	.label_2290
	cmp	qword ptr [rbp - 8], 0
	nop	
	setne	al
	mov	byte ptr [rbp - 0x15], al
.label_2290:
	mov	rbp, rbp
	mov	al, byte ptr [rbp - 0x15]
	and	al, 1
	movzx	ecx, al
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x14], ecx
.label_2291:
	mov	eax, dword ptr [rbp - 0x14]
	nop	
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4247e0
	.globl timespectod
	.type timespectod, @function
timespectod:

	push	rbp
	mov	rbp, rsp
	movsd	xmm0,  qword ptr [word ptr [label_2261]]
	nop	
	mov	qword ptr [rbp - 0x10], rdi
	mov	rsp, rsp
	mov	qword ptr [rbp - 8], rsi
	cvtsi2sd	xmm1, qword ptr [rbp - 0x10]
	cvtsi2sd	xmm2, qword ptr [rbp - 8]
	divsd	xmm2, xmm0
	addsd	xmm1, xmm2
	mov	rsp, rsp
	movaps	xmm0, xmm1
	mov	rsp, rsp
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x424820

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
	.align	16
	#Procedure 0x424910

	.globl stat
	.type stat, @function
stat:
	mov	rdx, rsi
	mov	rsi, rdi
	mov	edi, 1
	jmp	__xstat
	.section	.text
	.align	16
	#Procedure 0x424920

	.globl __fstat
	.type __fstat, @function
__fstat:
	mov	rdx, rsi
	mov	esi, edi
	mov	edi, 1
	jmp	__fxstat