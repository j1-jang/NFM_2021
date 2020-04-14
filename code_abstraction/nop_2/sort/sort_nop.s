	.section	.text
	.align	16
	#Procedure 0x402b90

	.globl usage
	.type usage, @function
usage:
	mov	rsp, rsp
	push	rbp
	lea	rdi, [rdi]
	push	rbx
	mov	rsp, rsp
	push	rax
	lea	rsi, [rsi]
	mov	ebp, edi
	test	ebp, ebp
	mov	rsp, rsp
	jne	.label_7
	xor	edi, edi
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.1
	mov	edx, 5
	call	dcgettext
	mov	rsp, rsp
	mov	rcx, rax
	mov	rdx,  qword ptr [word ptr [rip + program_name]]
	nop	
	mov	edi, 1
	mov	rbp, rbp
	xor	eax, eax
	mov	rsi, rcx
	mov	rcx, rdx
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.2
	mov	edx, 5
	call	dcgettext
	mov	rbp, rbp
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	mov	rsp, rsp
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.66
	mov	edx, 5
	lea	rdi, [rdi]
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	lea	rsi, [rsi]
	mov	rdi, rax
	mov	rbp, rbp
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.67
	mov	rsp, rsp
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	nop	
	mov	rdi, rax
	mov	rbp, rbp
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.3
	mov	rbp, rbp
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	lea	rdi, [rdi]
	call	fputs_unlocked
	nop	
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.4
	mov	edx, 5
	mov	rbp, rbp
	call	dcgettext
	lea	rdi, [rdi]
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	lea	rdi, [rdi]
	mov	esi, OFFSET FLAT:.str.5
	mov	rsp, rsp
	mov	edx, 5
	call	dcgettext
	mov	rsp, rsp
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.6
	lea	rdi, [rdi]
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	lea	rdi, [rdi]
	mov	rdi, rax
	call	fputs_unlocked
	mov	rsp, rsp
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.7
	mov	rsp, rsp
	mov	edx, 5
	call	dcgettext
	lea	rdi, [rdi]
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	lea	rsi, [rsi]
	mov	rdi, rax
	lea	rdi, [rdi]
	call	fputs_unlocked
	mov	rsp, rsp
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.8
	mov	rsp, rsp
	mov	edx, 5
	call	dcgettext
	mov	rbp, rbp
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rbp, rbp
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.9
	lea	rdi, [rdi]
	mov	edx, 5
	lea	rsi, [rsi]
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rsp, rsp
	mov	rdi, rax
	lea	rsi, [rsi]
	call	fputs_unlocked
	mov	rsp, rsp
	xor	edi, edi
	nop	
	mov	esi, OFFSET FLAT:.str.10
	lea	rsi, [rsi]
	mov	edx, 5
	call	dcgettext
	lea	rsi, [rsi]
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rbp, rbp
	mov	rdi, rax
	call	fputs_unlocked
	mov	rsp, rsp
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.11
	mov	edx, 5
	nop	
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.12
	nop	
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.13
	mov	edx, 5
	lea	rdi, [rdi]
	call	dcgettext
	nop	
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	lea	rdi, [rdi]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	rbp, rbp
	mov	esi, OFFSET FLAT:.str.14
	mov	rsp, rsp
	mov	edx, 5
	mov	rsp, rsp
	call	dcgettext
	mov	rbp, rbp
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rsp, rsp
	mov	rdi, rax
	call	fputs_unlocked
	lea	rsi, [rsi]
	xor	edi, edi
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.15
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	mov	rbp, rbp
	mov	edx, OFFSET FLAT:.str.16
	lea	rdi, [rdi]
	xor	eax, eax
	mov	rsi, rcx
	call	__printf_chk
	mov	rbp, rbp
	xor	edi, edi
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.17_0
	lea	rsi, [rsi]
	mov	edx, 5
	call	dcgettext
	mov	rsp, rsp
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	lea	rsi, [rsi]
	call	fputs_unlocked
	mov	rsp, rsp
	xor	edi, edi
	lea	rsi, [rsi]
	mov	esi, OFFSET FLAT:.str.18
	mov	rbp, rbp
	mov	edx, 5
	call	dcgettext
	mov	rbp, rbp
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	lea	rsi, [rsi]
	call	fputs_unlocked
	xor	edi, edi
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.19
	nop	
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	lea	rsi, [rsi]
	mov	rdi, rax
	mov	rsp, rsp
	call	fputs_unlocked
	xor	edi, edi
	mov	rbp, rbp
	mov	esi, OFFSET FLAT:.str.20
	mov	edx, 5
	lea	rsi, [rsi]
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	lea	rdi, [rdi]
	xor	edi, edi
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.21
	mov	edx, 5
	nop	
	call	dcgettext
	lea	rdi, [rdi]
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	lea	rdi, [rdi]
	call	fputs_unlocked
	mov	rsp, rsp
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.76
	mov	rbp, rbp
	mov	edx, 5
	mov	rbp, rbp
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	lea	rdi, [rdi]
	mov	edx, OFFSET FLAT:.str.17
	mov	ecx, OFFSET FLAT:.str.18_0
	xor	eax, eax
	call	__printf_chk
	mov	rbp, rbp
	mov	edi, 5
	xor	esi, esi
	call	setlocale
	test	rax, rax
	lea	rsi, [rsi]
	je	.label_8
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.78
	mov	edx, 3
	lea	rdi, [rdi]
	mov	rdi, rax
	mov	rbp, rbp
	call	strncmp
	lea	rsi, [rsi]
	test	eax, eax
	mov	rsp, rsp
	je	.label_8
	xor	edi, edi
	mov	rbp, rbp
	mov	esi, OFFSET FLAT:.str.79
	nop	
	mov	edx, 5
	call	dcgettext
	lea	rsi, [rsi]
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
.label_8:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.80
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:.str.18_0
	mov	rsp, rsp
	mov	ecx, OFFSET FLAT:.str.22
	xor	eax, eax
	call	__printf_chk
	lea	rdi, [rdi]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.81
	mov	edx, 5
	lea	rsi, [rsi]
	call	dcgettext
	mov	rsi, rax
	nop	
	mov	edi, 1
	mov	edx, OFFSET FLAT:.str.22
	mov	ecx, OFFSET FLAT:.str.82
	xor	eax, eax
	nop	
	call	__printf_chk
	mov	edi, ebp
	call	exit
.label_7:
	mov	rbx,  qword ptr [word ptr [rip + stderr]]
	mov	rsp, rsp
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str
	mov	edx, 5
	call	dcgettext
	nop	
	mov	rdx, rax
	nop	
	mov	rcx,  qword ptr [word ptr [rip + program_name]]
	mov	esi, 1
	lea	rsi, [rsi]
	xor	eax, eax
	mov	rsp, rsp
	mov	rdi, rbx
	call	__fprintf_chk
	lea	rsi, [rsi]
	mov	edi, ebp
	mov	rbp, rbp
	call	exit
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4030a0

	.globl main
	.type main, @function
main:
	push	rbp
	push	r15
	lea	rsi, [rsi]
	push	r14
	push	r13
	nop	
	push	r12
	lea	rdi, [rdi]
	push	rbx
	lea	rsi, [rsi]
	sub	rsp, 0x3a8
	mov	rbx, rsi
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x210], rbx
	lea	rsi, [rsi]
	mov	r15d, edi
	mov	edi, OFFSET FLAT:.str.23
	lea	rsi, [rsi]
	call	getenv
	mov	qword ptr [rsp + 0x38], rax
	call	posix2_version
	mov	rsp, rsp
	add	eax, 0xfffcf250
	cmp	eax, 0x2b8
	seta	al
	mov	rsp, rsp
	mov	dword ptr [rsp + 0x3a0], eax
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbx]
	call	set_program_name
	lea	rsi, [rsi]
	mov	edi, 6
	lea	rdi, [rdi]
	mov	esi, OFFSET FLAT:.str_1
	call	setlocale
	mov	qword ptr [rsp + 0x170], rax
	mov	rbp, rbp
	test	rax, rax
	setne	byte ptr [rsp + 0x110]
	lea	rsi, [rsi]
	mov	edi, OFFSET FLAT:.str.25
	mov	esi, OFFSET FLAT:.str.26
	nop	
	call	bindtextdomain
	lea	rdi, [rdi]
	mov	edi, OFFSET FLAT:.str.25
	mov	rsp, rsp
	call	textdomain
	mov	rbp, rbp
	mov	dword ptr [dword ptr [rip + exit_failure]],  2
	mov	rbp, rbp
	mov	edi, 3
	nop	
	call	hard_locale
	nop	
	mov	byte ptr [byte ptr [rip + hard_LC_COLLATE]],  al
	mov	edi, 2
	call	hard_locale
	lea	rdi, [rdi]
	mov	byte ptr [byte ptr [rip + hard_LC_TIME]],  al
	mov	rsp, rsp
	call	localeconv
	mov	rcx, qword ptr [rax]
	lea	rdi, [rdi]
	movzx	edx, byte ptr [rcx]
	lea	rdi, [rdi]
	test	edx, edx
	lea	rdi, [rdi]
	mov	dword ptr [dword ptr [rip + decimal_point]],  edx
	je	.label_85
	nop	
	cmp	byte ptr [rcx + 1], 0
	je	.label_92
.label_85:
	mov	dword ptr [dword ptr [rip + decimal_point]],  0x2e
.label_92:
	mov	rax, qword ptr [rax + 8]
	movzx	ecx, byte ptr [rax]
	nop	
	test	ecx, ecx
	mov	dword ptr [dword ptr [rip + thousands_sep]],  ecx
	je	.label_94
	cmp	byte ptr [rax + 1], 0
	je	.label_95
.label_94:
	nop	
	mov	dword ptr [dword ptr [rip + thousands_sep]],  0xffffffff
.label_95:
	nop	
	mov	byte ptr [byte ptr [rip + have_read_stdin]],  0
	mov	rsp, rsp
	mov	rbp, -0x100
	call	__ctype_b_loc
	mov	r13, rax
	nop	dword ptr [rax]
.label_132:
	mov	rcx, qword ptr [r13]
	lea	rsi, [rsi]
	movzx	eax, word ptr [rcx + rbp*2 + 0x200]
	and	eax, 1
	movzx	edx, bpl
	cmp	edx, 0xa
	sete	dl
	lea	rdi, [rdi]
	or	dl, al
	mov	rsp, rsp
	mov	byte ptr [byte ptr [rbp + nonprinting]],  dl
	movzx	ecx, word ptr [rcx + rbp*2 + 0x200]
	mov	rsp, rsp
	mov	edx, ecx
	nop	
	shr	edx, 0xe
	not	edx
	and	edx, 1
	mov	byte ptr [byte ptr [rbp + nondictionary]],  dl
	test	cl, 8
	jne	.label_243
	mov	rsp, rsp
	movzx	ecx, bpl
	cmp	ecx, 0xa
	mov	rbp, rbp
	setne	cl
	mov	rsp, rsp
	test	ax, ax
	sete	al
	mov	rbp, rbp
	and	al, cl
	jmp	.label_111
	nop	dword ptr [rax + rax]
.label_243:
	lea	rsi, [rsi]
	xor	eax, eax
.label_111:
	lea	rdi, [rdi]
	mov	byte ptr [byte ptr [rbp + fold_toupper]],  al
	lea	rsi, [rsi]
	lea	eax, [rbp + 0x180]
	cmp	eax, 0x180
	jae	.label_119
	lea	rdi, [rdi]
	call	__ctype_toupper_loc
	nop	
	mov	rax, qword ptr [rax]
	mov	rbp, rbp
	mov	eax, dword ptr [rax + rbp*4 + 0x400]
	mov	rbp, rbp
	jmp	.label_127
	nop	dword ptr [rax]
.label_119:
	lea	rdi, [rdi]
	lea	rax, [rbp + 0x100]
.label_127:
	lea	rsi, [rsi]
	mov	byte ptr [byte ptr [rbp + temphead]],  al
	inc	rbp
	jne	.label_132
	mov	rbp, rbp
	xor	r12d, r12d
	cmp	byte ptr [byte ptr [rip + hard_LC_TIME]],  0
	nop	
	je	.label_136
.label_183:
	mov	rsp, rsp
	lea	edi, [r12 + 0x2000e]
	lea	rsi, [rsi]
	call	rpl_nl_langinfo
	mov	r14, rax
	nop	
	mov	rdi, r14
	mov	rsp, rsp
	call	strlen
	nop	
	mov	rbp, rax
	lea	rsi, [rsi]
	lea	rdi, [rbp + 1]
	nop	
	call	xmalloc
	mov	rcx, r12
	lea	rdi, [rdi]
	shl	rcx, 4
	nop	
	mov	qword ptr [word ptr [rcx + monthtab]],  rax
	inc	r12
	mov	dword ptr [dword ptr [rcx + label_145]],  r12d
	test	rbp, rbp
	mov	rsp, rsp
	mov	ecx, 0
	je	.label_146
	lea	rdi, [rdi]
	test	bpl, 1
	mov	esi, 0
	mov	edx, 0
	je	.label_162
	movzx	edi, byte ptr [r14]
	mov	rcx, qword ptr [r13]
	lea	rdi, [rdi]
	test	byte ptr [rcx + rdi*2], 1
	lea	rdi, [rdi]
	mov	ecx, 0
	mov	esi, 0
	mov	edx, 1
	mov	rsp, rsp
	jne	.label_162
	mov	cl,  byte ptr [byte ptr [rdi + fold_toupper]]
	mov	rbp, rbp
	mov	byte ptr [rax], cl
	nop	
	mov	ecx, 1
	mov	esi, 1
	mov	edx, 1
.label_162:
	mov	rbp, rbp
	cmp	rbp, 1
	je	.label_146
	mov	rsp, rsp
	sub	rbp, rdx
	lea	rdx, [r14 + rdx + 1]
	mov	rcx, rsi
	nop	dword ptr [rax + rax]
.label_320:
	movzx	esi, byte ptr [rdx - 1]
	lea	rsi, [rsi]
	mov	rdi, qword ptr [r13]
	lea	rsi, [rsi]
	test	byte ptr [rdi + rsi*2], 1
	nop	
	jne	.label_26
	lea	rsi, [rsi]
	mov	bl,  byte ptr [byte ptr [rsi + fold_toupper]]
	lea	rdi, [rdi]
	mov	byte ptr [rax + rcx], bl
	inc	rcx
.label_26:
	lea	rdi, [rdi]
	movzx	esi, byte ptr [rdx]
	mov	rdi, qword ptr [r13]
	lea	rdi, [rdi]
	test	byte ptr [rdi + rsi*2], 1
	nop	
	jne	.label_291
	mov	bl,  byte ptr [byte ptr [rsi + fold_toupper]]
	nop	
	mov	byte ptr [rax + rcx], bl
	inc	rcx
.label_291:
	mov	rsp, rsp
	add	rdx, 2
	add	rbp, -2
	jne	.label_320
.label_146:
	mov	rsp, rsp
	mov	byte ptr [rax + rcx], 0
	nop	
	cmp	r12, 0xc
	mov	rsp, rsp
	jne	.label_183
	mov	edi, OFFSET FLAT:monthtab
	mov	rbp, rbp
	mov	esi, 0xc
	mov	rsp, rsp
	mov	edx, 0x10
	mov	ecx, OFFSET FLAT:struct_month_cmp
	call	qsort
.label_136:
	lea	rdi, [rdi]
	mov	edi, OFFSET FLAT:caught_signals
	nop	
	call	sigemptyset
	lea	rdx, [rsp + 0x70]
	mov	edi, 0xe
	xor	esi, esi
	mov	rbp, rbp
	call	sigaction
	cmp	qword ptr [rsp + 0x70], 1
	mov	rsp, rsp
	je	.label_194
	mov	rsp, rsp
	mov	edi, OFFSET FLAT:caught_signals
	lea	rdi, [rdi]
	mov	esi, 0xe
	nop	
	call	sigaddset
.label_194:
	lea	rdx, [rsp + 0x70]
	mov	rsp, rsp
	mov	edi, 1
	xor	esi, esi
	call	sigaction
	cmp	qword ptr [rsp + 0x70], 1
	nop	
	je	.label_205
	mov	edi, OFFSET FLAT:caught_signals
	mov	esi, 1
	call	sigaddset
.label_205:
	lea	rdi, [rdi]
	lea	rdx, [rsp + 0x70]
	nop	
	mov	edi, 2
	mov	rbp, rbp
	xor	esi, esi
	lea	rsi, [rsi]
	call	sigaction
	cmp	qword ptr [rsp + 0x70], 1
	nop	
	je	.label_212
	mov	edi, OFFSET FLAT:caught_signals
	mov	esi, 2
	lea	rdi, [rdi]
	call	sigaddset
.label_212:
	mov	rbp, rbp
	lea	rdx, [rsp + 0x70]
	mov	edi, 0xd
	xor	esi, esi
	lea	rsi, [rsi]
	call	sigaction
	cmp	qword ptr [rsp + 0x70], 1
	je	.label_219
	lea	rdi, [rdi]
	mov	edi, OFFSET FLAT:caught_signals
	mov	esi, 0xd
	mov	rsp, rsp
	call	sigaddset
.label_219:
	lea	rdx, [rsp + 0x70]
	mov	edi, 3
	xor	esi, esi
	nop	
	call	sigaction
	cmp	qword ptr [rsp + 0x70], 1
	lea	rsi, [rsi]
	je	.label_230
	mov	edi, OFFSET FLAT:caught_signals
	lea	rdi, [rdi]
	mov	esi, 3
	mov	rsp, rsp
	call	sigaddset
.label_230:
	mov	rbp, rbp
	lea	rdx, [rsp + 0x70]
	mov	edi, 0xf
	nop	
	xor	esi, esi
	call	sigaction
	nop	
	cmp	qword ptr [rsp + 0x70], 1
	je	.label_236
	mov	rbp, rbp
	mov	edi, OFFSET FLAT:caught_signals
	mov	esi, 0xf
	call	sigaddset
.label_236:
	lea	rdx, [rsp + 0x70]
	mov	rsp, rsp
	mov	edi, 0x1d
	xor	esi, esi
	nop	
	call	sigaction
	cmp	qword ptr [rsp + 0x70], 1
	lea	rdi, [rdi]
	je	.label_66
	mov	edi, OFFSET FLAT:caught_signals
	mov	esi, 0x1d
	call	sigaddset
.label_66:
	lea	rdx, [rsp + 0x70]
	mov	edi, 0x1b
	lea	rdi, [rdi]
	xor	esi, esi
	mov	rsp, rsp
	call	sigaction
	nop	
	cmp	qword ptr [rsp + 0x70], 1
	nop	
	je	.label_246
	mov	edi, OFFSET FLAT:caught_signals
	mov	esi, 0x1b
	call	sigaddset
.label_246:
	lea	rdi, [rdi]
	lea	rdx, [rsp + 0x70]
	mov	rbp, rbp
	mov	edi, 0x1a
	nop	
	xor	esi, esi
	lea	rdi, [rdi]
	call	sigaction
	cmp	qword ptr [rsp + 0x70], 1
	lea	rdi, [rdi]
	je	.label_251
	mov	edi, OFFSET FLAT:caught_signals
	lea	rdi, [rdi]
	mov	esi, 0x1a
	call	sigaddset
.label_251:
	nop	
	lea	rdx, [rsp + 0x70]
	lea	rsi, [rsi]
	mov	edi, 0x18
	lea	rdi, [rdi]
	xor	esi, esi
	call	sigaction
	mov	rsp, rsp
	cmp	qword ptr [rsp + 0x70], 1
	je	.label_256
	mov	edi, OFFSET FLAT:caught_signals
	mov	esi, 0x18
	call	sigaddset
.label_256:
	lea	rdx, [rsp + 0x70]
	mov	rbp, rbp
	mov	edi, 0x19
	xor	esi, esi
	lea	rsi, [rsi]
	call	sigaction
	mov	rsp, rsp
	cmp	qword ptr [rsp + 0x70], 1
	je	.label_308
	mov	rbp, rbp
	mov	edi, OFFSET FLAT:caught_signals
	mov	esi, 0x19
	lea	rsi, [rsi]
	call	sigaddset
.label_308:
	mov	qword ptr [word ptr [rsp + 112]], OFFSET FLAT:sighandler
	lea	rdi, [rdi]
	movups	xmm0,  xmmword ptr [word ptr [rip + label_267]]
	mov	rsp, rsp
	movups	xmmword ptr [rsp + 0xe8], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_268]]
	lea	rdi, [rdi]
	movups	xmmword ptr [rsp + 0xd8], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_269]]
	movups	xmmword ptr [rsp + 0xc8], xmm0
	lea	rdi, [rdi]
	movups	xmm0,  xmmword ptr [word ptr [rip + label_270]]
	mov	rsp, rsp
	movups	xmmword ptr [rsp + 0xb8], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_271]]
	movups	xmmword ptr [rsp + 0xa8], xmm0
	mov	rbp, rbp
	movups	xmm0,  xmmword ptr [word ptr [rip + label_272]]
	lea	rdi, [rdi]
	movups	xmmword ptr [rsp + 0x98], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_273]]
	movups	xmmword ptr [rsp + 0x88], xmm0
	mov	rsp, rsp
	movups	xmm0,  xmmword ptr [word ptr [rip + caught_signals]]
	lea	rsi, [rsi]
	movups	xmmword ptr [rsp + 0x78], xmm0
	lea	rdi, [rdi]
	mov	dword ptr [rsp + 0xf8], 0
	mov	rbp, rbp
	mov	edi, OFFSET FLAT:caught_signals
	mov	esi, 0xe
	mov	rsp, rsp
	call	sigismember
	mov	rsp, rsp
	test	eax, eax
	je	.label_294
	lea	rdi, [rdi]
	lea	rsi, [rsp + 0x70]
	mov	edi, 0xe
	mov	rbp, rbp
	xor	edx, edx
	call	sigaction
.label_294:
	lea	rdi, [rdi]
	mov	edi, OFFSET FLAT:caught_signals
	mov	esi, 1
	call	sigismember
	test	eax, eax
	mov	rsp, rsp
	je	.label_290
	lea	rsi, [rsp + 0x70]
	mov	edi, 1
	xor	edx, edx
	lea	rdi, [rdi]
	call	sigaction
.label_290:
	mov	edi, OFFSET FLAT:caught_signals
	nop	
	mov	esi, 2
	lea	rsi, [rsi]
	call	sigismember
	test	eax, eax
	nop	
	je	.label_307
	lea	rsi, [rsp + 0x70]
	mov	edi, 2
	lea	rsi, [rsi]
	xor	edx, edx
	lea	rdi, [rdi]
	call	sigaction
.label_307:
	mov	edi, OFFSET FLAT:caught_signals
	lea	rdi, [rdi]
	mov	esi, 0xd
	call	sigismember
	mov	rbp, rbp
	test	eax, eax
	mov	rsp, rsp
	je	.label_316
	lea	rsi, [rsp + 0x70]
	mov	edi, 0xd
	xor	edx, edx
	call	sigaction
.label_316:
	mov	edi, OFFSET FLAT:caught_signals
	lea	rdi, [rdi]
	mov	esi, 3
	call	sigismember
	test	eax, eax
	mov	rsp, rsp
	je	.label_323
	lea	rsi, [rsp + 0x70]
	mov	rbp, rbp
	mov	edi, 3
	mov	rbp, rbp
	xor	edx, edx
	mov	rbp, rbp
	call	sigaction
.label_323:
	mov	edi, OFFSET FLAT:caught_signals
	mov	esi, 0xf
	lea	rsi, [rsi]
	call	sigismember
	test	eax, eax
	je	.label_16
	lea	rdi, [rdi]
	lea	rsi, [rsp + 0x70]
	mov	edi, 0xf
	xor	edx, edx
	mov	rsp, rsp
	call	sigaction
.label_16:
	mov	edi, OFFSET FLAT:caught_signals
	lea	rsi, [rsi]
	mov	esi, 0x1d
	lea	rdi, [rdi]
	call	sigismember
	test	eax, eax
	mov	rbp, rbp
	je	.label_29
	lea	rdi, [rdi]
	lea	rsi, [rsp + 0x70]
	mov	edi, 0x1d
	xor	edx, edx
	call	sigaction
.label_29:
	mov	edi, OFFSET FLAT:caught_signals
	mov	esi, 0x1b
	lea	rsi, [rsi]
	call	sigismember
	test	eax, eax
	je	.label_32
	mov	rbp, rbp
	lea	rsi, [rsp + 0x70]
	lea	rsi, [rsi]
	mov	edi, 0x1b
	xor	edx, edx
	lea	rdi, [rdi]
	call	sigaction
.label_32:
	mov	edi, OFFSET FLAT:caught_signals
	nop	
	mov	esi, 0x1a
	mov	rbp, rbp
	call	sigismember
	test	eax, eax
	mov	rbp, rbp
	je	.label_43
	lea	rsi, [rsi]
	lea	rsi, [rsp + 0x70]
	mov	edi, 0x1a
	mov	rbp, rbp
	xor	edx, edx
	call	sigaction
.label_43:
	lea	rdi, [rdi]
	mov	edi, OFFSET FLAT:caught_signals
	mov	esi, 0x18
	call	sigismember
	test	eax, eax
	lea	rsi, [rsi]
	je	.label_56
	lea	rsi, [rsp + 0x70]
	mov	edi, 0x18
	xor	edx, edx
	mov	rsp, rsp
	call	sigaction
.label_56:
	lea	rdi, [rdi]
	mov	edi, OFFSET FLAT:caught_signals
	lea	rdi, [rdi]
	mov	esi, 0x19
	call	sigismember
	test	eax, eax
	je	.label_62
	lea	rsi, [rsp + 0x70]
	mov	rbp, rbp
	mov	edi, 0x19
	lea	rdi, [rdi]
	xor	edx, edx
	lea	rdi, [rdi]
	call	sigaction
.label_62:
	xor	ebp, ebp
	mov	rbp, rbp
	mov	edi, 0x11
	xor	esi, esi
	mov	rsp, rsp
	call	signal
	lea	rsi, [rsi]
	mov	edi, OFFSET FLAT:exit_cleanup
	call	atexit
	lea	rsi, [rsi]
	xorps	xmm0, xmm0
	nop	
	movaps	xmmword ptr [rsp + 0x380], xmm0
	mov	rbp, rbp
	movaps	xmmword ptr [rsp + 0x370], xmm0
	nop	
	movaps	xmmword ptr [rsp + 0x360], xmm0
	movaps	xmmword ptr [rsp + 0x350], xmm0
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x390], 0
	mov	qword ptr [rsp + 0x360], -1
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x350], -1
	lea	rdi, [rdi]
	test	r15d, r15d
	js	.label_315
	movsxd	rdi, r15d
	mov	rbp, rbp
	shl	rdi, 3
	call	xmalloc
	mov	qword ptr [rsp + 0x178], rax
	lea	rsi, [rsi]
	cmp	qword ptr [rsp + 0x38], 0
	mov	rbp, rbp
	sete	byte ptr [rsp + 0x58]
	lea	rax, [rsp + 0x70]
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x180], rax
	mov	rax, -1
	movq	xmm0, rax
	movapd	xmmword ptr [rsp + 0x1a0], xmm0
	mov	eax, 0
	mov	qword ptr [rsp + 0x348], rax
	mov	eax, 0
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x218], rax
	xor	r12d, r12d
	xor	eax, eax
	mov	qword ptr [rsp + 0x398], rax
	lea	rdi, [rdi]
	xor	eax, eax
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x200], rax
	xor	r13d, r13d
	lea	rsi, [rsi]
	xor	r14d, r14d
	mov	r8, qword ptr [rsp + 0x210]
	lea	rsi, [rsi]
	jmp	.label_37
	nop	word ptr [rax + rax]
.label_33:
	lea	rsi, [rsi]
	mov	r13b, cl
.label_37:
	mov	dword ptr [rsp + 0x118], 0xffffffff
	mov	rbp, rbp
	cmp	ebp, -1
	mov	rbp, rbp
	je	.label_115
	cmp	qword ptr [rsp + 0x38], 0
	mov	rsp, rsp
	je	.label_82
	mov	rsp, rsp
	test	r12, r12
	lea	rsi, [rsi]
	je	.label_82
	mov	eax, dword ptr [rsp + 0x3a0]
	lea	rsi, [rsi]
	test	al, 1
	je	.label_38
	nop	
	test	r14b, r14b
	lea	rsi, [rsi]
	jne	.label_38
	lea	rsi, [rsi]
	movsxd	rax,  dword ptr [dword ptr [rip + optind]]
	cmp	eax, r15d
	mov	rsp, rsp
	je	.label_38
	mov	rcx, qword ptr [r8 + rax*8]
	lea	rsi, [rsi]
	movzx	edx, byte ptr [rcx]
	lea	rsi, [rsi]
	cmp	edx, 0x2d
	mov	rbp, rbp
	jne	.label_38
	movzx	edx, byte ptr [rcx + 1]
	lea	rdi, [rdi]
	cmp	edx, 0x6f
	nop	
	jne	.label_38
	mov	rbp, rbp
	inc	eax
	cmp	eax, r15d
	lea	rsi, [rsi]
	jne	.label_82
	mov	al, byte ptr [rcx + 2]
	mov	rbp, rbp
	test	al, al
	je	.label_38
	nop	dword ptr [rax + rax]
.label_82:
	mov	rbp, rbp
	mov	edx, OFFSET FLAT:short_options
	lea	rdi, [rdi]
	mov	ecx, OFFSET FLAT:long_options
	mov	rsp, rsp
	mov	edi, r15d
	mov	rsp, rsp
	mov	rsi, r8
	mov	rbx, r8
	lea	r8, [rsp + 0x118]
	lea	rdi, [rdi]
	call	getopt_long
	lea	rsi, [rsi]
	test	eax, eax
	jle	.label_156
	lea	rsi, [rsi]
	lea	edx, [rax - 0x43]
	cmp	edx, 0x44
	ja	.label_159
	nop	
	mov	ebp, 0x6d
	mov	rbp, rbp
	mov	cl, 1
	lea	rsi, [rsi]
	mov	r8, rbx
	lea	rsi, [rsi]
	jmp	qword ptr [word ptr [+ (rdx * 8) + label_164]]
.label_1658:
	mov	rbx, r8
	nop	
	mov	eax, dword ptr [rsp + 0x118]
	mov	dword ptr [rsp + 0x108], eax
	mov	rbp,  qword ptr [word ptr [rip + optarg]]
	lea	rsi, [rsi]
	mov	edx, 0xa
	mov	r8d, OFFSET FLAT:.str.140
	mov	rdi, rbp
	mov	rbp, rbp
	lea	rsi, [rsp + 0x1b0]
	lea	rcx, [rsp + 0x70]
	lea	rdi, [rdi]
	call	xstrtoumax
	cmp	eax, 2
	je	.label_261
	test	eax, eax
	nop	
	mov	r8, rbx
	mov	rsp, rsp
	jne	.label_171
	mov	rax, qword ptr [rsp + 0x1b0]
	movsx	eax, byte ptr [rax - 1]
	nop	
	add	eax, -0x30
	mov	rsp, rsp
	cmp	eax, 9
	ja	.label_21
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rsp + 0x70]
	mov	eax, 1
	lea	rdi, [rdi]
	mov	rdx, rcx
	shr	rdx, 0x36
	lea	rdi, [rdi]
	jne	.label_171
	shl	rcx, 0xa
	jmp	.label_184
	nop	word ptr cs:[rax + rax]
.label_115:
	mov	ebp, 0xffffffff
.label_38:
	movsxd	rax,  dword ptr [dword ptr [rip + optind]]
	mov	rbp, rbp
	cmp	eax, r15d
	jge	.label_189
	nop	
	lea	ecx, [rax + 1]
	lea	rsi, [rsi]
	mov	dword ptr [dword ptr [rip + optind]],  ecx
	mov	rsp, rsp
	mov	rax, qword ptr [r8 + rax*8]
	mov	rsp, rsp
	mov	rcx, qword ptr [rsp + 0x178]
	mov	qword ptr [rcx + r12*8], rax
	inc	r12
.label_41:
	mov	rbp, rbp
	mov	cl, r13b
	jmp	.label_33
.label_156:
	cmp	eax, -1
	lea	rsi, [rsi]
	mov	ebp, 0xffffffff
	mov	rsp, rsp
	mov	r8, rbx
	lea	rsi, [rsi]
	je	.label_38
	lea	rsi, [rsi]
	jmp	.label_203
.label_159:
	lea	rsi, [rsi]
	cmp	eax, 1
	lea	rdi, [rdi]
	mov	rcx, rbx
	jne	.label_10
	mov	rdi,  qword ptr [word ptr [rip + optarg]]
	movzx	eax, byte ptr [rdi]
	nop	
	cmp	eax, 0x2b
	nop	
	jne	.label_206
	mov	qword ptr [rsp + 0x108], r13
	mov	rbp, rbp
	movsxd	rax,  dword ptr [dword ptr [rip + optind]]
	cmp	eax, r15d
	jne	.label_262
	xor	ebx, ebx
	jmp	.label_54
.label_1659:
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x18], r14
	lea	rdi, [rdi]
	mov	rbx,  qword ptr [word ptr [rip + optarg]]
	mov	rsi,  qword ptr [word ptr [rip + temp_dir_count]]
	cmp	rsi,  qword ptr [word ptr [rip + temp_dir_alloc]]
	jne	.label_214
	mov	rdi,  qword ptr [word ptr [rip + temp_dirs]]
	test	rdi, rdi
	mov	rbp, rbp
	je	.label_220
	lea	rdi, [rdi]
	movabs	rax, 0xaaaaaaaaaaaaaaa
	lea	rdi, [rdi]
	cmp	rsi, rax
	jae	.label_224
	mov	rbp, rbp
	mov	rbp, r8
	mov	rax, rsi
	mov	rsp, rsp
	shr	rax, 1
	mov	rsp, rsp
	lea	rsi, [rsi + rax + 1]
	nop	
	jmp	.label_229
.label_1667:
	mov	rsi,  qword ptr [word ptr [rip + optarg]]
	mov	eax, 0x63
	test	rsi, rsi
	je	.label_234
	mov	r9,  qword ptr [word ptr [rip + argmatch_die]]
	mov	edi, OFFSET FLAT:.str.33
	mov	edx, OFFSET FLAT:check_args
	mov	ecx, OFFSET FLAT:check_types
	mov	rbx, r8
	mov	r8d, 1
	mov	rsp, rsp
	call	__xargmatch_internal
	mov	r8, rbx
	mov	rsp, rsp
	movsx	eax,  byte ptr [byte ptr [rax + check_types]]
.label_234:
	test	r14b, r14b
	mov	rsp, rsp
	je	.label_240
	movsx	ecx, r14b
	lea	rdi, [rdi]
	cmp	ecx, eax
	nop	
	jne	.label_241
.label_240:
	lea	rdi, [rdi]
	mov	cl, r13b
	nop	
	mov	r14b, al
	mov	ebp, eax
	jmp	.label_37
.label_1669:
	mov	rsp, rsp
	mov	byte ptr [byte ptr [rip + debug]],  1
	nop	
	mov	ebp, 0x82
	mov	rsp, rsp
	jmp	.label_41
.label_1670:
	mov	ebp, 0x83
	lea	rdi, [rdi]
	mov	rax,  qword ptr [word ptr [rip + optarg]]
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x218], rax
	jmp	.label_41
.label_1673:
	mov	rsi,  qword ptr [word ptr [rip + optarg]]
	mov	r9,  qword ptr [word ptr [rip + argmatch_die]]
	mov	rbp, rbp
	mov	edi, OFFSET FLAT:.str.32
	nop	
	mov	edx, OFFSET FLAT:sort_args
	mov	rsp, rsp
	mov	ecx, OFFSET FLAT:sort_types
	mov	rbx, r8
	mov	r8d, 1
	lea	rsi, [rsi]
	call	__xargmatch_internal
	mov	r8, rbx
	movsx	eax,  byte ptr [byte ptr [rax + sort_types]]
.label_1657:
	mov	ebp, eax
	nop	
	mov	byte ptr [rsp + 0x70], bpl
	mov	byte ptr [rsp + 0x71], 0
	lea	rsi, [rsi]
	test	bpl, bpl
	lea	rax, [rsp + 0x71]
	mov	cl, bpl
	je	.label_41
	nop	word ptr cs:[rax + rax]
.label_299:
	nop	
	movsx	ecx, cl
	mov	rbp, rbp
	cmp	ecx, 0x61
	jle	.label_263
	add	ecx, -0x62
	cmp	ecx, 0x10
	lea	rsi, [rsi]
	ja	.label_41
	nop	
	jmp	qword ptr [word ptr [+ (rcx * 8) + label_266]]
.label_1727:
	lea	rsi, [rsi]
	mov	word ptr [rsp + 0x380], 0x101
	jmp	.label_28
	nop	word ptr cs:[rax + rax]
.label_263:
	cmp	ecx, 0x4d
	mov	rsp, rsp
	je	.label_275
	cmp	ecx, 0x52
	mov	rbp, rbp
	je	.label_277
	lea	rsi, [rsi]
	cmp	ecx, 0x56
	lea	rdi, [rdi]
	jne	.label_41
	mov	byte ptr [rsp + 0x388], 1
	jmp	.label_28
.label_1729:
	nop	
	mov	qword ptr [word ptr [rsp + 888]], OFFSET FLAT:fold_toupper
	jmp	.label_28
.label_1730:
	mov	byte ptr [rsp + 0x384], 1
	jmp	.label_28
.label_1733:
	mov	rbp, rbp
	mov	byte ptr [rsp + 0x382], 1
	jmp	.label_28
.label_1728:
	lea	rdi, [rdi]
	mov	qword ptr [word ptr [rsp + 880]], OFFSET FLAT:nondictionary
	jmp	.label_28
.label_1731:
	lea	rsi, [rsi]
	mov	byte ptr [rsp + 0x385], 1
	jmp	.label_28
.label_1732:
	lea	rsi, [rsi]
	cmp	qword ptr [rsp + 0x370], 0
	mov	rsp, rsp
	jne	.label_28
	lea	rsi, [rsi]
	mov	qword ptr [word ptr [rsp + 880]], OFFSET FLAT:nonprinting
	jmp	.label_28
.label_1734:
	mov	byte ptr [rsp + 0x387], 1
	jmp	.label_28
.label_275:
	mov	rsp, rsp
	mov	byte ptr [rsp + 0x386], 1
	jmp	.label_28
.label_277:
	mov	rbp, rbp
	mov	byte ptr [rsp + 0x383], 1
	nop	dword ptr [rax]
.label_28:
	mov	cl, byte ptr [rax]
	lea	rdi, [rdi]
	inc	rax
	test	cl, cl
	jne	.label_299
	mov	rbp, rbp
	jmp	.label_41
.label_1660:
	mov	rsp, rsp
	xorpd	xmm0, xmm0
	movapd	xmmword ptr [rsp + 0x150], xmm0
	nop	
	movapd	xmmword ptr [rsp + 0x140], xmm0
	movapd	xmmword ptr [rsp + 0x130], xmm0
	movapd	xmmword ptr [rsp + 0x120], xmm0
	nop	
	mov	qword ptr [rsp + 0x160], 0
	mov	qword ptr [rsp + 0x130], -1
	mov	rdi,  qword ptr [word ptr [rip + optarg]]
	mov	edx, OFFSET FLAT:.str.36
	lea	rsi, [rsp + 0x120]
	lea	rsi, [rsi]
	call	parse_field_count
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rsp + 0x120]
	lea	rcx, [rdx - 1]
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x120], rcx
	test	rdx, rdx
	je	.label_281
	movzx	edx, byte ptr [rax]
	nop	
	cmp	edx, 0x2e
	nop	
	jne	.label_324
	inc	rax
	mov	edx, OFFSET FLAT:.str.30
	mov	rdi, rax
	lea	rsi, [rsp + 0x128]
	call	parse_field_count
	mov	rcx, qword ptr [rsp + 0x128]
	lea	rdx, [rcx - 1]
	mov	qword ptr [rsp + 0x128], rdx
	test	rcx, rcx
	lea	rdi, [rdi]
	je	.label_13
	mov	rcx, qword ptr [rsp + 0x120]
	jmp	.label_20
.label_1661:
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x18], r14
	mov	rdi, qword ptr [rsp + 0x348]
	lea	rdi, [rdi]
	test	rdi, rdi
	mov	ebp, 0x6f
	mov	rsp, rsp
	mov	rbx,  qword ptr [word ptr [rip + optarg]]
	mov	rsp, rsp
	je	.label_25
	mov	rsi, rbx
	lea	rdi, [rdi]
	mov	r14, r8
	mov	rsp, rsp
	call	strcmp
	mov	r8, r14
	nop	
	test	eax, eax
	mov	qword ptr [rsp + 0x348], rbx
	mov	cl, r13b
	mov	rbp, rbp
	mov	r14, qword ptr [rsp + 0x18]
	je	.label_33
	mov	rsp, rsp
	jmp	.label_39
.label_1662:
	mov	rbp, rbp
	mov	byte ptr [byte ptr [rip + stable]],  1
	mov	rbp, rbp
	mov	ebp, 0x73
	jmp	.label_41
.label_1663:
	lea	rsi, [rsi]
	mov	rax,  qword ptr [word ptr [rip + optarg]]
	mov	rsp, rsp
	mov	cl, byte ptr [rax]
	test	cl, cl
	mov	rbp, rbp
	je	.label_48
	mov	rbp, rbp
	mov	dl, byte ptr [rax + 1]
	test	dl, dl
	je	.label_55
	movzx	ecx, cl
	cmp	ecx, 0x5c
	jne	.label_58
	lea	rdi, [rdi]
	movzx	ecx, dl
	lea	rdi, [rdi]
	cmp	ecx, 0x30
	jne	.label_58
	cmp	byte ptr [rax + 2], 0
	jne	.label_58
	xor	ecx, ecx
.label_55:
	mov	edx,  dword ptr [dword ptr [rip + tab]]
	cmp	edx, 0x80
	mov	rbp, rbp
	movsx	eax, cl
	je	.label_259
	cmp	edx, eax
	jne	.label_64
.label_259:
	lea	rdi, [rdi]
	mov	dword ptr [dword ptr [rip + tab]],  eax
	nop	
	mov	ebp, 0x74
	mov	rsp, rsp
	jmp	.label_41
.label_1664:
	lea	rsi, [rsi]
	mov	byte ptr [byte ptr [rip + unique]],  1
	nop	
	mov	ebp, 0x75
	jmp	.label_41
.label_1665:
	mov	rsp, rsp
	mov	rcx,  qword ptr [word ptr [rip + optarg]]
	movsxd	rax,  dword ptr [dword ptr [rip + optind]]
	mov	ebp, 0x79
	cmp	rcx, qword ptr [r8 + rax*8 - 8]
	mov	rbp, rbp
	jne	.label_41
	nop	word ptr cs:[rax + rax]
.label_80:
	movsx	edx, byte ptr [rcx]
	nop	
	lea	esi, [rdx - 0x30]
	mov	rbp, rbp
	inc	rcx
	mov	rbp, rbp
	cmp	esi, 0xa
	jb	.label_80
	cmp	dl, 1
	lea	rdi, [rdi]
	adc	eax, -1
	mov	dword ptr [dword ptr [rip + optind]],  eax
	jmp	.label_41
.label_1666:
	mov	byte ptr [byte ptr [rip + eolchar]],  1
	nop	
	mov	ebp, 0x7a
	jmp	.label_41
.label_1668:
	mov	qword ptr [rsp + 0x18], r14
	nop	
	mov	rdi,  qword ptr [word ptr [rip + compress_program]]
	test	rdi, rdi
	je	.label_93
	mov	rbx,  qword ptr [word ptr [rip + optarg]]
	mov	rbp, rbp
	mov	rsi, rbx
	mov	rbp, r8
	call	strcmp
	mov	rsp, rsp
	mov	r8, rbp
	nop	
	test	eax, eax
	je	.label_97
	jmp	.label_100
.label_1671:
	mov	rbx, r8
	mov	qword ptr [rsp + 0x18], r14
	mov	rbp, r12
	movsxd	rax, dword ptr [rsp + 0x118]
	mov	qword ptr [rsp + 0x10], rax
	mov	rdi,  qword ptr [word ptr [rip + optarg]]
	mov	qword ptr [rsp + 0x108], rdi
	xor	esi, esi
	mov	edx, 0xa
	lea	rsi, [rsi]
	xor	r8d, r8d
	lea	rsi, [rsi]
	lea	rcx, [rsp + 0x40]
	call	xstrtoumax
	nop	
	mov	r12d, eax
	nop	
	mov	edi, 7
	lea	rdi, [rdi]
	lea	rsi, [rsp + 0x70]
	nop	
	call	getrlimit
	mov	r14d, dword ptr [rsp + 0x70]
	add	r14d, -3
	test	eax, eax
	mov	eax, 0x11
	lea	rdi, [rdi]
	cmovne	r14d, eax
	lea	rsi, [rsi]
	test	r12d, r12d
	jne	.label_113
	mov	rax, qword ptr [rsp + 0x40]
	mov	dword ptr [dword ptr [rip + nmerge]],  eax
	mov	ecx, eax
	cmp	rcx, rax
	mov	r12, rbp
	mov	r8, rbx
	jne	.label_120
	lea	rdi, [rdi]
	cmp	eax, 1
	jbe	.label_125
	nop	
	cmp	r14d, eax
	mov	rbp, rbp
	jb	.label_120
	lea	rdi, [rdi]
	mov	ebp, 0x84
	mov	rsp, rsp
	jmp	.label_130
.label_1672:
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x18], r14
	mov	rdi, qword ptr [rsp + 0x200]
	test	rdi, rdi
	lea	rsi, [rsi]
	mov	ebp, 0x85
	lea	rdi, [rdi]
	mov	rbx,  qword ptr [word ptr [rip + optarg]]
	lea	rsi, [rsi]
	je	.label_133
	mov	rsi, rbx
	nop	
	call	strcmp
	test	eax, eax
	mov	qword ptr [rsp + 0x200], rbx
	mov	cl, r13b
	mov	rbp, rbp
	mov	r14, qword ptr [rsp + 0x18]
	lea	rsi, [rsi]
	mov	r8, qword ptr [rsp + 0x210]
	je	.label_33
	jmp	.label_149
.label_1674:
	nop	
	mov	rbx, r8
	nop	
	mov	qword ptr [rsp + 0x18], r14
	mov	rsp, rsp
	mov	r14d, dword ptr [rsp + 0x118]
	mov	rbp,  qword ptr [word ptr [rip + optarg]]
	xor	esi, esi
	mov	edx, 0xa
	mov	r8d, OFFSET FLAT:.str_1
	nop	
	mov	rdi, rbp
	mov	rsp, rsp
	lea	rcx, [rsp + 0x70]
	nop	
	call	xstrtoul
	lea	rdi, [rdi]
	test	eax, eax
	lea	rdi, [rdi]
	je	.label_163
	mov	qword ptr [rsp + 0x398], -1
	cmp	eax, 1
	mov	r8, rbx
	nop	
	je	.label_198
	jmp	.label_167
.label_214:
	mov	rax,  qword ptr [word ptr [rip + temp_dirs]]
	lea	rsi, [rsi]
	jmp	.label_170
.label_261:
	nop	
	mov	rcx, qword ptr [rsp + 0x1b0]
	movsx	edx, byte ptr [rcx - 1]
	nop	
	add	edx, -0x30
	mov	eax, 2
	cmp	edx, 9
	lea	rsi, [rsi]
	mov	r8, rbx
	ja	.label_171
	lea	rsi, [rsi]
	cmp	byte ptr [rcx + 1], 0
	jne	.label_171
	mov	rsp, rsp
	movsx	ecx, byte ptr [rcx]
	cmp	ecx, 0x62
	je	.label_21
	mov	rbp, rbp
	cmp	ecx, 0x25
	nop	
	jne	.label_171
	mov	rbx, r8
	call	physmem_total
	mov	r8, rbx
	mov	rsp, rsp
	movq	xmm2, qword ptr [rsp + 0x70]
	punpckldq	xmm2,  xmmword ptr [word ptr [rip + label_89]]
	subpd	xmm2,  xmmword ptr [word ptr [rip + label_90]]
	pshufd	xmm1, xmm2, 0x4e
	mov	rsp, rsp
	addpd	xmm1, xmm2
	mulsd	xmm1, xmm0
	lea	rdi, [rdi]
	divsd	xmm1,  qword ptr [word ptr [rip + label_179]]
	mov	eax, 1
	movsd	xmm0,  qword ptr [word ptr [rip + label_180]]
	ucomisd	xmm0, xmm1
	jbe	.label_171
	movapd	xmm0, xmm1
	movsd	xmm2,  qword ptr [word ptr [rip + label_91]]
	nop	
	subsd	xmm0, xmm2
	lea	rdi, [rdi]
	cvttsd2si	rax, xmm0
	movabs	rcx, 0x8000000000000000
	xor	rax, rcx
	lea	rdi, [rdi]
	cvttsd2si	rcx, xmm1
	ucomisd	xmm1, xmm2
	cmovae	rcx, rax
.label_184:
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x70], rcx
.label_21:
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 0x70]
	cmp	rax,  qword ptr [word ptr [rip + sort_size]]
	jb	.label_202
	mov	ecx,  dword ptr [dword ptr [rip + nmerge]]
	imul	rcx, rcx, 0x22
	cmp	rax, rcx
	nop	
	cmova	rcx, rax
	mov	rsp, rsp
	mov	qword ptr [word ptr [rip + sort_size]],  rcx
.label_202:
	lea	rdi, [rdi]
	mov	ebp, 0x53
	jmp	.label_41
.label_324:
	mov	rdx, qword ptr [rsp + 0x128]
.label_20:
	lea	rsi, [rsi]
	or	rdx, rcx
	jne	.label_209
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x120], -1
.label_209:
	lea	rdi, [rdi]
	mov	cl, byte ptr [rax]
	mov	rbp, rbp
	jmp	.label_213
	nop	dword ptr [rax + rax]
.label_63:
	mov	rbp, rbp
	mov	cl, byte ptr [rax + 1]
	nop	
	inc	rax
.label_213:
	lea	rdi, [rdi]
	test	cl, cl
	je	.label_218
	mov	rbp, rbp
	movsx	edx, cl
	lea	rsi, [rsi]
	cmp	edx, 0x61
	lea	rdi, [rdi]
	jle	.label_247
	nop	
	add	edx, -0x62
	mov	rsp, rsp
	cmp	edx, 0x10
	ja	.label_223
	jmp	qword ptr [word ptr [+ (rdx * 8) + label_227]]
.label_1687:
	mov	byte ptr [rsp + 0x150], 1
	jmp	.label_63
	nop	word ptr [rax + rax]
.label_247:
	cmp	edx, 0x4d
	je	.label_233
	lea	rdi, [rdi]
	cmp	edx, 0x52
	je	.label_300
	nop	
	cmp	edx, 0x56
	jne	.label_223
	mov	rbp, rbp
	mov	byte ptr [rsp + 0x158], 1
	mov	rbp, rbp
	jmp	.label_63
.label_1688:
	mov	qword ptr [word ptr [rsp + 320]], OFFSET FLAT:nondictionary
	jmp	.label_63
.label_1689:
	nop	
	mov	qword ptr [word ptr [rsp + 328]], OFFSET FLAT:fold_toupper
	jmp	.label_63
.label_1690:
	mov	byte ptr [rsp + 0x154], 1
	jmp	.label_63
.label_1691:
	mov	byte ptr [rsp + 0x155], 1
	jmp	.label_63
.label_1692:
	mov	rbp, rbp
	cmp	qword ptr [rsp + 0x140], 0
	lea	rsi, [rsi]
	jne	.label_63
	lea	rsi, [rsi]
	mov	qword ptr [word ptr [rsp + 320]], OFFSET FLAT:nonprinting
	lea	rdi, [rdi]
	jmp	.label_63
.label_1693:
	mov	rbp, rbp
	mov	byte ptr [rsp + 0x152], 1
	lea	rsi, [rsi]
	jmp	.label_63
.label_1694:
	mov	rbp, rbp
	mov	byte ptr [rsp + 0x157], 1
	jmp	.label_63
.label_233:
	mov	byte ptr [rsp + 0x156], 1
	nop	
	jmp	.label_63
.label_300:
	mov	byte ptr [rsp + 0x153], 1
	jmp	.label_63
.label_163:
	nop	
	mov	rax, qword ptr [rsp + 0x70]
	mov	qword ptr [rsp + 0x398], rax
	test	rax, rax
	nop	
	mov	r8, rbx
	je	.label_253
.label_198:
	mov	ebp, 0x87
	nop	
	jmp	.label_130
.label_206:
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x108], r13
	lea	rdi, [rdi]
	jmp	.label_104
.label_25:
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x348], rbx
	jmp	.label_130
.label_93:
	lea	rsi, [rsi]
	mov	rbx,  qword ptr [word ptr [rip + optarg]]
.label_97:
	lea	rdi, [rdi]
	mov	qword ptr [word ptr [rip + compress_program]],  rbx
	nop	
	mov	ebp, 0x81
	nop	
	jmp	.label_130
.label_133:
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x200], rbx
	mov	cl, r13b
	mov	r14, qword ptr [rsp + 0x18]
	mov	r8, qword ptr [rsp + 0x210]
	jmp	.label_37
.label_223:
	mov	rsp, rsp
	movzx	ecx, cl
	lea	rdi, [rdi]
	cmp	ecx, 0x2c
	jne	.label_218
	nop	
	inc	rax
	mov	edx, OFFSET FLAT:.str.39
	mov	rbp, rbp
	mov	rdi, rax
	lea	rdi, [rdi]
	lea	rsi, [rsp + 0x130]
	call	parse_field_count
	mov	rcx, qword ptr [rsp + 0x130]
	lea	rdx, [rcx - 1]
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x130], rdx
	test	rcx, rcx
	je	.label_281
	movzx	ecx, byte ptr [rax]
	cmp	ecx, 0x2e
	jne	.label_286
	inc	rax
	lea	rsi, [rsi]
	mov	edx, OFFSET FLAT:.str.30
	mov	rdi, rax
	lea	rsi, [rsp + 0x138]
	lea	rsi, [rsi]
	call	parse_field_count
	mov	cl, byte ptr [rax]
.label_286:
	test	cl, cl
	je	.label_71
	mov	rsp, rsp
	inc	rax
	nop	word ptr cs:[rax + rax]
.label_50:
	movsx	ecx, cl
	mov	rbp, rbp
	cmp	ecx, 0x61
	mov	rsp, rsp
	jle	.label_293
	lea	rdi, [rdi]
	add	ecx, -0x62
	cmp	ecx, 0x10
	ja	.label_23
	lea	rsi, [rsi]
	jmp	qword ptr [word ptr [+ (rcx * 8) + label_295]]
.label_1678:
	mov	byte ptr [rsp + 0x151], 1
	jmp	.label_9
	nop	word ptr cs:[rax + rax]
.label_293:
	mov	rbp, rbp
	cmp	ecx, 0x4d
	mov	rbp, rbp
	je	.label_192
	cmp	ecx, 0x52
	mov	rsp, rsp
	je	.label_303
	cmp	ecx, 0x56
	lea	rsi, [rsi]
	jne	.label_23
	nop	
	mov	byte ptr [rsp + 0x158], 1
	mov	rsp, rsp
	jmp	.label_9
.label_1679:
	mov	qword ptr [word ptr [rsp + 320]], OFFSET FLAT:nondictionary
	jmp	.label_9
.label_1680:
	mov	qword ptr [word ptr [rsp + 328]], OFFSET FLAT:fold_toupper
	jmp	.label_9
.label_1681:
	mov	byte ptr [rsp + 0x154], 1
	nop	
	jmp	.label_9
.label_1682:
	mov	byte ptr [rsp + 0x155], 1
	mov	rsp, rsp
	jmp	.label_9
.label_1683:
	cmp	qword ptr [rsp + 0x140], 0
	mov	rbp, rbp
	jne	.label_9
	mov	rsp, rsp
	mov	qword ptr [word ptr [rsp + 320]], OFFSET FLAT:nonprinting
	jmp	.label_9
.label_1684:
	lea	rdi, [rdi]
	mov	byte ptr [rsp + 0x152], 1
	jmp	.label_9
.label_1685:
	mov	byte ptr [rsp + 0x157], 1
	jmp	.label_9
.label_192:
	mov	byte ptr [rsp + 0x156], 1
	jmp	.label_9
.label_303:
	mov	byte ptr [rsp + 0x153], 1
	nop	word ptr cs:[rax + rax]
.label_9:
	lea	rdi, [rdi]
	mov	cl, byte ptr [rax]
	nop	
	inc	rax
	lea	rsi, [rsi]
	test	cl, cl
	mov	rsp, rsp
	jne	.label_50
	lea	rdi, [rdi]
	jmp	.label_71
.label_218:
	lea	rsi, [rsi]
	movapd	xmm0, xmmword ptr [rsp + 0x1a0]
	movapd	xmmword ptr [rsp + 0x130], xmm0
	cmp	byte ptr [rax], 0
	jne	.label_23
.label_71:
	mov	rsp, rsp
	mov	esi, 0x48
	lea	rdi, [rsp + 0x120]
	lea	rdi, [rdi]
	call	xmemdup
	nop	
	mov	edx, OFFSET FLAT:keylist
	nop	dword ptr [rax + rax]
.label_34:
	mov	rcx, rdx
	mov	rdx, qword ptr [rcx]
	lea	rdi, [rdi]
	test	rdx, rdx
	lea	rdx, [rdx + 0x40]
	jne	.label_34
	lea	rdi, [rdi]
	mov	qword ptr [rcx], rax
	lea	rdi, [rdi]
	mov	qword ptr [rax + 0x40], 0
	lea	rsi, [rsi]
	mov	ebp, 0x6b
	mov	rsp, rsp
	mov	cl, r13b
	mov	r8, qword ptr [rsp + 0x210]
	jmp	.label_37
.label_262:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rcx + rax*8]
	movzx	ecx, byte ptr [rax]
	cmp	ecx, 0x2d
	mov	rsp, rsp
	jne	.label_49
	mov	rsp, rsp
	movsx	eax, byte ptr [rax + 1]
	mov	rsp, rsp
	add	eax, -0x30
	cmp	eax, 0xa
	nop	
	setb	bl
	jmp	.label_54
.label_220:
	mov	rbp, r8
	lea	rdi, [rdi]
	test	rsi, rsi
	lea	rsi, [rsi]
	mov	eax, 0x10
	cmove	rsi, rax
	mov	rbp, rbp
	mov	rax, rsi
	shr	rax, 0x3c
	mov	rbp, rbp
	jne	.label_59
.label_229:
	mov	qword ptr [word ptr [rip + temp_dir_alloc]],  rsi
	shl	rsi, 3
	call	xrealloc
	mov	rsp, rsp
	mov	qword ptr [word ptr [rip + temp_dirs]],  rax
	mov	rbp, rbp
	mov	rsi,  qword ptr [word ptr [rip + temp_dir_count]]
	mov	r8, rbp
.label_170:
	lea	rcx, [rsi + 1]
	mov	qword ptr [word ptr [rip + temp_dir_count]],  rcx
	mov	rbp, rbp
	mov	qword ptr [rax + rsi*8], rbx
	mov	ebp, 0x54
.label_130:
	mov	cl, r13b
	nop	
	mov	r14, qword ptr [rsp + 0x18]
	jmp	.label_37
.label_49:
	nop	
	xor	ebx, ebx
.label_54:
	nop	
	mov	al, bl
	mov	rsp, rsp
	and	al, byte ptr [rsp + 0x58]
	lea	rsi, [rsi]
	mov	ecx, dword ptr [rsp + 0x3a0]
	and	cl, 1
	or	cl, al
	mov	dword ptr [rsp + 0x3a0], ecx
	je	.label_75
	xorpd	xmm0, xmm0
	movapd	xmmword ptr [rsp + 0x150], xmm0
	movapd	xmmword ptr [rsp + 0x140], xmm0
	nop	
	movapd	xmmword ptr [rsp + 0x130], xmm0
	movapd	xmmword ptr [rsp + 0x120], xmm0
	nop	
	mov	qword ptr [rsp + 0x160], 0
	mov	qword ptr [rsp + 0x130], -1
	inc	rdi
	mov	rsp, rsp
	mov	edx, 0xa
	nop	
	mov	r8d, OFFSET FLAT:.str_1
	lea	rsi, [rsp + 0x70]
	nop	
	lea	rcx, [rsp + 0x1b0]
	nop	
	call	xstrtoumax
	mov	ecx, eax
	cmp	eax, 4
	lea	rsi, [rsi]
	ja	.label_99
	jmp	qword ptr [word ptr [+ (rcx * 8) + label_101]]
.label_1675:
	mov	rax, qword ptr [rsp + 0x1b0]
	mov	qword ptr [rsp + 0x120], rax
	mov	rsp, rsp
	jmp	.label_99
.label_75:
	lea	rdi, [rdi]
	mov	dword ptr [rsp + 0x3a0], 0
	mov	rbp, rbp
	jmp	.label_104
.label_1676:
	mov	qword ptr [rsp + 0x120], -1
.label_99:
	mov	rdi, qword ptr [rsp + 0x70]
	mov	rsp, rsp
	test	rdi, rdi
	lea	rsi, [rsi]
	mov	ecx, 0
	lea	rsi, [rsi]
	je	.label_109
	nop	
	movzx	eax, byte ptr [rdi]
	cmp	eax, 0x2e
	mov	rbp, rbp
	jne	.label_112
	nop	
	inc	rdi
	mov	edx, 0xa
	nop	
	mov	r8d, OFFSET FLAT:.str_1
	lea	rsi, [rsp + 0x70]
	lea	rcx, [rsp + 0x1b0]
	mov	rsp, rsp
	call	xstrtoumax
	xor	ecx, ecx
	mov	edx, eax
	nop	
	cmp	eax, 4
	ja	.label_123
	nop	
	jmp	qword ptr [word ptr [+ (rdx * 8) + label_124]]
.label_1748:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp + 0x1b0]
	mov	qword ptr [rsp + 0x128], rax
	lea	rdi, [rdi]
	jmp	.label_123
.label_112:
	mov	rcx, rdi
	jmp	.label_109
.label_1677:
	xor	ecx, ecx
	jmp	.label_109
.label_1749:
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x128], -1
.label_123:
	nop	
	mov	rcx, qword ptr [rsp + 0x70]
.label_109:
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 0x120]
	or	rax, qword ptr [rsp + 0x128]
	lea	rdi, [rdi]
	jne	.label_135
	mov	qword ptr [rsp + 0x120], -1
.label_135:
	test	rcx, rcx
	je	.label_104
	lea	rsi, [rsi]
	mov	al, byte ptr [rcx]
	mov	rbp, rbp
	test	al, al
	nop	
	je	.label_139
	lea	rsi, [rsi]
	inc	rcx
	nop	dword ptr [rax]
.label_186:
	lea	rdi, [rdi]
	movsx	eax, al
	cmp	eax, 0x61
	jle	.label_143
	mov	rsp, rsp
	add	eax, -0x62
	lea	rsi, [rsi]
	cmp	eax, 0x10
	ja	.label_104
	nop	
	jmp	qword ptr [word ptr [+ (rax * 8) + label_154]]
.label_1820:
	mov	rsp, rsp
	mov	byte ptr [rsp + 0x150], 1
	lea	rsi, [rsi]
	jmp	.label_155
	nop	dword ptr [rax + rax]
.label_143:
	nop	
	cmp	eax, 0x4d
	je	.label_178
	cmp	eax, 0x52
	lea	rdi, [rdi]
	je	.label_165
	cmp	eax, 0x56
	jne	.label_104
	mov	byte ptr [rsp + 0x158], 1
	jmp	.label_155
.label_1821:
	mov	qword ptr [word ptr [rsp + 320]], OFFSET FLAT:nondictionary
	mov	rbp, rbp
	jmp	.label_155
.label_1822:
	mov	qword ptr [word ptr [rsp + 328]], OFFSET FLAT:fold_toupper
	jmp	.label_155
.label_1823:
	lea	rsi, [rsi]
	mov	byte ptr [rsp + 0x154], 1
	jmp	.label_155
.label_1824:
	lea	rsi, [rsi]
	mov	byte ptr [rsp + 0x155], 1
	jmp	.label_155
.label_1825:
	mov	rsp, rsp
	cmp	qword ptr [rsp + 0x140], 0
	jne	.label_155
	mov	qword ptr [word ptr [rsp + 320]], OFFSET FLAT:nonprinting
	jmp	.label_155
.label_1826:
	mov	rsp, rsp
	mov	byte ptr [rsp + 0x152], 1
	mov	rbp, rbp
	jmp	.label_155
.label_1827:
	mov	rbp, rbp
	mov	byte ptr [rsp + 0x157], 1
	lea	rdi, [rdi]
	jmp	.label_155
.label_178:
	mov	byte ptr [rsp + 0x156], 1
	lea	rsi, [rsi]
	jmp	.label_155
.label_165:
	lea	rdi, [rdi]
	mov	byte ptr [rsp + 0x153], 1
	nop	dword ptr [rax]
.label_155:
	nop	
	mov	al, byte ptr [rcx]
	lea	rdi, [rdi]
	inc	rcx
	test	al, al
	nop	
	jne	.label_186
.label_139:
	nop	
	test	bl, bl
	lea	rsi, [rsi]
	je	.label_114
	mov	rbp, rbp
	movsxd	rax,  dword ptr [dword ptr [rip + optind]]
	mov	rsp, rsp
	lea	ecx, [rax + 1]
	mov	dword ptr [dword ptr [rip + optind]],  ecx
	mov	rcx, qword ptr [rsp + 0x210]
	lea	rsi, [rsi]
	mov	rbx, qword ptr [rcx + rax*8]
	lea	rdi, [rbx + 1]
	mov	edx, OFFSET FLAT:.str.27
	lea	rsi, [rsp + 0x130]
	call	parse_field_count
	test	rax, rax
	je	.label_121
	lea	rsi, [rsi]
	movzx	ecx, byte ptr [rax]
	mov	rbp, rbp
	cmp	ecx, 0x2e
	lea	rdi, [rdi]
	jne	.label_201
	mov	rsp, rsp
	inc	rax
	lea	rsi, [rsi]
	mov	edx, OFFSET FLAT:.str.30
	mov	rdi, rax
	lea	rsi, [rsp + 0x138]
	call	parse_field_count
.label_201:
	mov	rbp, rbp
	cmp	qword ptr [rsp + 0x138], 0
	jne	.label_131
	nop	
	mov	rcx, qword ptr [rsp + 0x130]
	test	rcx, rcx
	je	.label_131
	nop	
	dec	rcx
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x130], rcx
.label_131:
	mov	cl, byte ptr [rax]
	mov	rsp, rsp
	test	cl, cl
	lea	rsi, [rsi]
	je	.label_114
	inc	rax
	nop	
.label_250:
	movsx	ecx, cl
	cmp	ecx, 0x61
	jle	.label_215
	nop	
	add	ecx, -0x62
	cmp	ecx, 0x10
	lea	rdi, [rdi]
	ja	.label_217
	lea	rdi, [rdi]
	jmp	qword ptr [word ptr [+ (rcx * 8) + label_221]]
.label_1812:
	mov	byte ptr [rsp + 0x151], 1
	lea	rsi, [rsi]
	jmp	.label_22
.label_215:
	cmp	ecx, 0x4d
	mov	rsp, rsp
	je	.label_226
	cmp	ecx, 0x52
	mov	rbp, rbp
	je	.label_228
	lea	rdi, [rdi]
	cmp	ecx, 0x56
	mov	rbp, rbp
	jne	.label_217
	mov	byte ptr [rsp + 0x158], 1
	mov	rbp, rbp
	jmp	.label_22
.label_1813:
	nop	
	mov	qword ptr [word ptr [rsp + 320]], OFFSET FLAT:nondictionary
	lea	rdi, [rdi]
	jmp	.label_22
.label_1814:
	lea	rdi, [rdi]
	mov	qword ptr [word ptr [rsp + 328]], OFFSET FLAT:fold_toupper
	mov	rsp, rsp
	jmp	.label_22
.label_1815:
	lea	rdi, [rdi]
	mov	byte ptr [rsp + 0x154], 1
	jmp	.label_22
.label_1816:
	mov	byte ptr [rsp + 0x155], 1
	mov	rbp, rbp
	jmp	.label_22
.label_1817:
	cmp	qword ptr [rsp + 0x140], 0
	jne	.label_22
	mov	qword ptr [word ptr [rsp + 320]], OFFSET FLAT:nonprinting
	mov	rsp, rsp
	jmp	.label_22
.label_1818:
	lea	rdi, [rdi]
	mov	byte ptr [rsp + 0x152], 1
	jmp	.label_22
.label_1819:
	lea	rsi, [rsi]
	mov	byte ptr [rsp + 0x157], 1
	mov	rsp, rsp
	jmp	.label_22
.label_226:
	mov	byte ptr [rsp + 0x156], 1
	jmp	.label_22
.label_228:
	lea	rdi, [rdi]
	mov	byte ptr [rsp + 0x153], 1
	nop	word ptr [rax + rax]
.label_22:
	mov	cl, byte ptr [rax]
	mov	rbp, rbp
	inc	rax
	test	cl, cl
	nop	
	jne	.label_250
.label_114:
	mov	byte ptr [rsp + 0x159], 1
	mov	esi, 0x48
	mov	rsp, rsp
	lea	rdi, [rsp + 0x120]
	call	xmemdup
	mov	edx, OFFSET FLAT:keylist
	nop	word ptr cs:[rax + rax]
.label_255:
	mov	rsp, rsp
	mov	rcx, rdx
	mov	rbp, rbp
	mov	rdx, qword ptr [rcx]
	test	rdx, rdx
	nop	
	lea	rdx, [rdx + 0x40]
	lea	rdi, [rdi]
	jne	.label_255
	lea	rdi, [rdi]
	mov	qword ptr [rcx], rax
	mov	rsp, rsp
	mov	qword ptr [rax + 0x40], 0
	jmp	.label_258
.label_104:
	lea	rdi, [rdi]
	mov	rax,  qword ptr [word ptr [rip + optarg]]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rsp + 0x178]
	mov	qword ptr [rcx + r12*8], rax
	lea	rsi, [rsi]
	inc	r12
.label_258:
	mov	rsp, rsp
	mov	ebp, 1
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 0x108]
	mov	cl, al
	mov	rbp, rbp
	mov	r8, qword ptr [rsp + 0x210]
	mov	rbp, rbp
	mov	r13b, cl
	jmp	.label_37
.label_189:
	mov	rbp, rbp
	cmp	qword ptr [rsp + 0x218], 0
	nop	
	je	.label_276
	test	r12, r12
	jne	.label_278
	mov	esi, OFFSET FLAT:.str.52
	mov	rdi, qword ptr [rsp + 0x218]
	lea	rsi, [rsi]
	call	stream_open
	nop	
	mov	rbx, rax
	lea	rsi, [rsi]
	test	rbx, rbx
	je	.label_283
	lea	rbp, [rsp + 0x228]
	nop	
	mov	rdi, rbp
	lea	rsi, [rsi]
	call	readtokens0_init
	mov	rdi, rbx
	lea	rsi, [rsi]
	mov	rsi, rbp
	nop	
	call	readtokens0
	mov	rsp, rsp
	test	al, al
	je	.label_289
	mov	rdi, rbx
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rsp + 0x218]
	nop	
	call	xfclose
	lea	rdi, [rdi]
	cmp	qword ptr [rsp + 0x228], 0
	je	.label_128
	mov	rdi, qword ptr [rsp + 0x178]
	call	free
	mov	r12, qword ptr [rsp + 0x228]
	mov	rbx, qword ptr [rsp + 0x230]
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x178], rbx
	xor	ebp, ebp
	nop	word ptr cs:[rax + rax]
.label_305:
	cmp	rbp, r12
	jae	.label_276
	mov	rcx, qword ptr [rbx]
	lea	rdi, [rdi]
	movzx	eax, byte ptr [rcx]
	cmp	eax, 0x2d
	jne	.label_301
	cmp	byte ptr [rcx + 1], 0
	mov	rbp, rbp
	je	.label_304
.label_301:
	mov	rsp, rsp
	inc	rbp
	lea	rdi, [rdi]
	add	rbx, 8
	test	al, al
	lea	rsi, [rsi]
	jne	.label_305
	mov	rsp, rsp
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.56
	mov	edx, 5
	call	dcgettext
	lea	rdi, [rdi]
	mov	rbx, rax
	xor	edi, edi
	mov	rsp, rsp
	mov	esi, 3
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rsp + 0x218]
	call	quotearg_n_style_colon
	lea	rsi, [rsi]
	mov	rcx, rax
	mov	edi, 2
	mov	rbp, rbp
	xor	esi, esi
	nop	
	xor	eax, eax
	mov	rdx, rbx
	mov	r8, rbp
	call	error
.label_276:
	mov	qword ptr [rsp + 0x208], r12
	movabs	r8, 0xff000000000000
	lea	rdi, [rdi]
	movabs	rcx, 0xffffffffffffff
	lea	rsi, [rsi]
	mov	rax,  qword ptr [word ptr [rip + keylist]]
	lea	rsi, [rsi]
	xor	ebp, ebp
	test	rax, rax
	je	.label_76
	lea	r9, [rcx + 1]
	nop	word ptr cs:[rax + rax]
.label_322:
	mov	rsp, rsp
	cmp	qword ptr [rax + 0x20], 0
	jne	.label_19
	cmp	qword ptr [rax + 0x28], 0
	jne	.label_19
	mov	rsi, qword ptr [rax + 0x30]
	test	si, 0xffff
	jne	.label_19
	mov	edi, esi
	shr	edi, 0x10
	mov	rsp, rsp
	test	dil, dil
	lea	rsi, [rsi]
	jne	.label_19
	test	rsi, r8
	jne	.label_19
	mov	rdi, rsi
	shr	rdi, 0x20
	mov	rbp, rbp
	test	dil, dil
	mov	rsp, rsp
	jne	.label_19
	movzx	edi, di
	cmp	edi, 0xff
	ja	.label_19
	mov	rsp, rsp
	cmp	esi, 0xffffff
	lea	rsi, [rsi]
	ja	.label_19
	nop	
	mov	bl, byte ptr [rax + 0x38]
	nop	
	test	bl, bl
	nop	
	jne	.label_19
	lea	rdi, [rdi]
	cmp	rsi, r9
	nop	
	jae	.label_19
	movapd	xmm0, xmmword ptr [rsp + 0x370]
	movupd	xmmword ptr [rax + 0x20], xmm0
	mov	cl, byte ptr [rsp + 0x383]
	mov	rbp, rbp
	mov	rbx, qword ptr [rsp + 0x380]
	lea	rsi, [rsi]
	mov	byte ptr [rax + 0x30], bl
	mov	byte ptr [rax + 0x31], bh
	mov	rsi, rbx
	mov	rbp, rbp
	shr	rsi, 0x30
	mov	byte ptr [rax + 0x36], sil
	mov	rbp, rbp
	mov	esi, ebx
	shr	esi, 0x10
	mov	byte ptr [rax + 0x32], sil
	nop	
	mov	rsi, rbx
	shr	rsi, 0x20
	mov	byte ptr [rax + 0x34], sil
	mov	rbp, rbp
	mov	rsi, rbx
	shr	rsi, 0x28
	mov	rbp, rbp
	mov	byte ptr [rax + 0x35], sil
	lea	rdi, [rdi]
	mov	dl, byte ptr [rsp + 0x388]
	mov	rbp, rbp
	mov	byte ptr [rax + 0x38], dl
	lea	rsi, [rsi]
	mov	byte ptr [rax + 0x33], cl
	shr	rbx, 0x38
	mov	rbp, rbp
	mov	byte ptr [rax + 0x37], bl
	nop	word ptr [rax + rax]
.label_19:
	or	bpl, byte ptr [rax + 0x33]
	mov	rbp, rbp
	mov	rax, qword ptr [rax + 0x40]
	test	rax, rax
	jne	.label_322
	lea	rsi, [rsi]
	mov	rax,  qword ptr [word ptr [rip + keylist]]
	lea	rdi, [rdi]
	test	rax, rax
	je	.label_76
	mov	dword ptr [rsp + 0x6c], ebp
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x18], r14
	mov	dword ptr [rsp + 0x1f0], 0
	mov	rbp, rbp
	jmp	.label_51
.label_76:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0x370]
	or	rax, qword ptr [rsp + 0x378]
	mov	rbp, rbp
	jne	.label_84
	nop	
	mov	rax, qword ptr [rsp + 0x380]
	mov	rsp, rsp
	test	ax, 0xffff
	jne	.label_84
	mov	ecx, eax
	lea	rdi, [rdi]
	shr	ecx, 0x10
	mov	rsp, rsp
	test	cl, cl
	jne	.label_84
	test	rax, r8
	jne	.label_84
	lea	rdi, [rdi]
	shr	rax, 0x20
	test	al, al
	jne	.label_84
	lea	rsi, [rsi]
	movzx	eax, ax
	mov	rbp, rbp
	cmp	eax, 0xff
	lea	rdi, [rdi]
	ja	.label_84
	lea	rdi, [rdi]
	cmp	dword ptr [rsp + 0x380], 0xffffff
	lea	rdi, [rdi]
	ja	.label_84
	mov	al, byte ptr [rsp + 0x388]
	mov	rbp, rbp
	test	al, al
	jne	.label_84
	mov	rbp, rbp
	mov	dword ptr [rsp + 0x6c], ebp
	mov	qword ptr [rsp + 0x18], r14
	mov	rbp, rbp
	mov	dword ptr [rsp + 0x1f0], 0
	jmp	.label_105
.label_84:
	mov	qword ptr [rsp + 0x18], r14
	lea	rdi, [rsp + 0x350]
	lea	rdi, [rdi]
	mov	esi, 0x48
	lea	rdi, [rdi]
	call	xmemdup
	nop	
	mov	ecx, OFFSET FLAT:keylist
	nop	dword ptr [rax + rax]
.label_116:
	mov	rdx, rcx
	mov	rcx, qword ptr [rdx]
	nop	
	test	rcx, rcx
	nop	
	lea	rcx, [rcx + 0x40]
	nop	
	jne	.label_116
	mov	rbp, rbp
	mov	qword ptr [rdx], rax
	mov	qword ptr [rax + 0x40], 0
	or	bpl, byte ptr [rsp + 0x383]
	mov	dword ptr [rsp + 0x6c], ebp
	mov	rbp, rbp
	mov	rax,  qword ptr [word ptr [rip + keylist]]
	mov	cl, 1
	mov	dword ptr [rsp + 0x1f0], ecx
	jmp	.label_118
.label_203:
	cmp	eax, 0xffffff7d
	je	.label_129
	cmp	eax, 0xffffff7e
	jne	.label_10
	mov	rsp, rsp
	xor	edi, edi
	mov	rsp, rsp
	call	usage
.label_129:
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	nop	
	mov	rcx,  qword ptr [word ptr [rip + Version]]
	mov	qword ptr [rsp], 0
	mov	esi, OFFSET FLAT:.str.22
	lea	rdi, [rdi]
	mov	edx, OFFSET FLAT:.str.17
	mov	r8d, OFFSET FLAT:.str.47
	mov	r9d, OFFSET FLAT:.str.48
	mov	rbp, rbp
	xor	eax, eax
	call	version_etc
	lea	rdi, [rdi]
	xor	edi, edi
	mov	rbp, rbp
	call	exit
.label_304:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.55
	mov	rbp, rbp
	mov	edx, 5
	mov	rbp, rbp
	call	dcgettext
	mov	rbp, rbp
	mov	rbp, rax
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbx]
	mov	edi, 4
	lea	rdi, [rdi]
	call	quotearg_style
	lea	rdi, [rdi]
	mov	rcx, rax
	mov	edi, 2
	xor	esi, esi
	xor	eax, eax
	mov	rbp, rbp
	mov	rdx, rbp
	call	error
.label_10:
	mov	edi, 2
	call	usage
.label_23:
	lea	rdi, [rdi]
	mov	rdi,  qword ptr [word ptr [rip + optarg]]
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.31
	nop	
	call	badfieldspec
.label_241:
	lea	rdi, [rdi]
	mov	edi, OFFSET FLAT:.str.34
	nop	
	call	incompatible_options
.label_171:
	mov	edx, 0x53
	mov	ecx, OFFSET FLAT:long_options
	mov	rbp, rbp
	mov	edi, eax
	mov	rbp, rbp
	mov	esi, dword ptr [rsp + 0x108]
	mov	r8, rbp
	mov	rsp, rsp
	call	xstrtol_fatal
.label_315:
	lea	rdi, [rdi]
	call	xalloc_die
.label_278:
	lea	rsi, [rsi]
	xor	edi, edi
	lea	rsi, [rsi]
	mov	esi, OFFSET FLAT:.str.49
	mov	edx, 5
	call	dcgettext
	lea	rsi, [rsi]
	mov	rbx, rax
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0x178]
	mov	rsi, qword ptr [rax]
	lea	rdi, [rdi]
	mov	edi, 4
	call	quotearg_style
	mov	rcx, rax
	mov	rbp, rbp
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	nop	
	mov	rdx, rbx
	call	error
	lea	rsi, [rsi]
	mov	rbx,  qword ptr [word ptr [rip + stderr]]
	lea	rsi, [rsi]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.51
	lea	rdi, [rdi]
	mov	edx, 5
	lea	rdi, [rdi]
	call	dcgettext
	lea	rsi, [rsi]
	mov	rcx, rax
	mov	esi, 1
	lea	rsi, [rsi]
	mov	edx, OFFSET FLAT:.str_2
	xor	eax, eax
	mov	rdi, rbx
	call	__fprintf_chk
	mov	edi, 2
	call	usage
.label_283:
	nop	
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.142
	lea	rdi, [rdi]
	mov	edx, 5
	call	dcgettext
	nop	
	mov	rdi, rax
	mov	rsi, qword ptr [rsp + 0x218]
	call	sort_die
.label_289:
	mov	rbp, rbp
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.53
	jmp	.label_200
.label_128:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.57
.label_200:
	mov	edx, 5
	lea	rdi, [rdi]
	call	dcgettext
	lea	rsi, [rsi]
	mov	rbx, rax
	mov	edi, 4
	mov	rsi, qword ptr [rsp + 0x218]
	lea	rsi, [rsi]
	call	quotearg_style
	mov	rsp, rsp
	jmp	.label_207
.label_217:
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.31
	mov	rbp, rbp
	mov	rdi, rbx
	lea	rdi, [rdi]
	call	badfieldspec
.label_58:
	lea	rsi, [rsi]
	xor	edi, edi
	mov	rbp, rbp
	mov	esi, OFFSET FLAT:.str.44
	mov	edx, 5
	mov	rbp, rbp
	call	dcgettext
	mov	rbp, rbp
	mov	rbx, rax
	mov	rdi,  qword ptr [word ptr [rip + optarg]]
	nop	
	call	quote
.label_207:
	mov	rcx, rax
	mov	rsp, rsp
	mov	edi, 2
	xor	esi, esi
	lea	rdi, [rdi]
	xor	eax, eax
	mov	rdx, rbx
	mov	rbp, rbp
	call	error
.label_281:
	mov	rbp, rbp
	mov	rdi,  qword ptr [word ptr [rip + optarg]]
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.37
	nop	
	call	badfieldspec
.label_48:
	nop	
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.42
	jmp	.label_60
.label_64:
	xor	edi, edi
	nop	
	mov	esi, OFFSET FLAT:.str.45
	jmp	.label_60
.label_113:
	mov	rbp, rbp
	cmp	r12d, 1
	jne	.label_235
.label_120:
	xor	edi, edi
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.138
	mov	rsp, rsp
	mov	edx, 5
	lea	rsi, [rsi]
	call	dcgettext
	nop	
	mov	rbx, rax
	mov	rax, qword ptr [rsp + 0x10]
	shl	rax, 5
	lea	rdi, [rdi]
	mov	r15,  qword ptr [word ptr [rax + long_options]]
	mov	rdi, qword ptr [rsp + 0x108]
	mov	rsp, rsp
	call	quote
	mov	rbp, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rbx
	mov	rcx, r15
	lea	rdi, [rdi]
	mov	r8, rbp
	mov	rsp, rsp
	call	error
	xor	edi, edi
	lea	rsi, [rsi]
	mov	esi, OFFSET FLAT:.str.139
	nop	
	mov	edx, 5
	mov	rsp, rsp
	call	dcgettext
	mov	rbx, rax
	mov	rbp, rbp
	lea	rsi, [rsp + 0x1b0]
	mov	edi, r14d
	lea	rdi, [rdi]
	call	uinttostr
	nop	
	mov	rbp, rax
	mov	edi, 2
	lea	rdi, [rdi]
	xor	esi, esi
	mov	rsp, rsp
	xor	eax, eax
	nop	
	mov	rdx, rbx
	mov	rbp, rbp
	mov	rcx, r15
	lea	rsi, [rsi]
	mov	r8, rbp
	mov	rbp, rbp
	call	error
.label_125:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.135
	mov	rbp, rbp
	mov	edx, 5
	nop	
	call	dcgettext
	mov	rbx, rax
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0x10]
	mov	rsp, rsp
	shl	rax, 5
	mov	r14,  qword ptr [word ptr [rax + long_options]]
	nop	
	mov	rdi, qword ptr [rsp + 0x108]
	call	quote
	mov	rbp, rbp
	mov	rbp, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rbx
	lea	rdi, [rdi]
	mov	rcx, r14
	mov	r8, rbp
	call	error
	xor	edi, edi
	lea	rdi, [rdi]
	mov	esi, OFFSET FLAT:.str.136
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	rsp, rsp
	mov	edi, OFFSET FLAT:.str.137
	call	quote
	nop	
	mov	rbp, rax
	mov	edi, 2
	xor	esi, esi
	mov	rsp, rsp
	xor	eax, eax
	mov	rbp, rbp
	mov	rdx, rbx
	mov	rcx, r14
	mov	r8, rbp
	call	error
.label_167:
	mov	rbp, rbp
	mov	edx, 0xffffff87
	lea	rdi, [rdi]
	mov	ecx, OFFSET FLAT:long_options
	mov	edi, eax
	mov	esi, r14d
	lea	rdi, [rdi]
	mov	r8, rbp
	call	xstrtol_fatal
.label_39:
	nop	
	xor	edi, edi
	mov	rbp, rbp
	mov	esi, OFFSET FLAT:.str.40
	jmp	.label_60
.label_100:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.35
	lea	rdi, [rdi]
	jmp	.label_60
.label_149:
	xor	edi, edi
	mov	rbp, rbp
	mov	esi, OFFSET FLAT:.str.41
	lea	rsi, [rsi]
	jmp	.label_60
.label_13:
	mov	rdi,  qword ptr [word ptr [rip + optarg]]
	lea	rsi, [rsi]
	mov	esi, OFFSET FLAT:.str.38
	nop	
	call	badfieldspec
.label_253:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.141
.label_60:
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 2
	xor	esi, esi
	lea	rdi, [rdi]
	xor	eax, eax
	mov	rdx, rcx
	mov	rbp, rbp
	call	error
.label_235:
	lea	rsi, [rsi]
	mov	edx, 0xffffff84
	lea	rsi, [rsi]
	mov	ecx, OFFSET FLAT:long_options
	mov	edi, r12d
	mov	rsi, qword ptr [rsp + 0x10]
	mov	r8, qword ptr [rsp + 0x108]
	mov	rsp, rsp
	call	xstrtol_fatal
.label_224:
	lea	rdi, [rdi]
	call	xalloc_die
.label_59:
	lea	rdi, [rdi]
	call	xalloc_die
.label_121:
	mov	edi, OFFSET FLAT:.str.28
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.29
	mov	edx, 0x1112
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.main
	call	__assert_fail
.label_105:
	mov	qword ptr [rsp + 0x108], r13
	mov	rsp, rsp
	movzx	eax,  byte ptr [byte ptr [rip + debug]]
	and	eax, 1
	mov	rsp, rsp
	cmp	eax, 1
	mov	rbp, rbp
	jne	.label_57
	mov	rax, qword ptr [rsp + 0x348]
	test	rax, rax
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 0x18]
	jne	.label_312
	test	al, al
	jne	.label_312
	lea	rsi, [rsi]
	cmp	qword ptr [rsp + 0x170], 0
	mov	al, byte ptr [rsp + 0x110]
	lea	rdi, [rdi]
	je	.label_181
	mov	edi, 3
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str_1
	call	setlocale
	test	rax, rax
	lea	rdi, [rdi]
	setne	al
.label_181:
	test	al, al
	mov	rsp, rsp
	jne	.label_326
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.59
	mov	edx, 5
	nop	
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	lea	rsi, [rsi]
	xor	esi, esi
	mov	edx, OFFSET FLAT:.str_0
	nop	
	xor	eax, eax
	mov	rsp, rsp
	call	error
.label_326:
	lea	rsi, [rsi]
	cmp	byte ptr [byte ptr [rip + hard_LC_COLLATE]],  0
	je	.label_18
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.60
	mov	edx, 5
	call	dcgettext
	nop	
	mov	rbx, rax
	lea	rdi, [rdi]
	mov	edi, 3
	mov	rbp, rbp
	xor	esi, esi
	call	setlocale
	mov	rbp, rbp
	mov	rdi, rax
	call	quote
	mov	rcx, rax
	xor	edi, edi
	nop	
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rbx
	mov	rbp, rbp
	jmp	.label_31
.label_18:
	mov	rsp, rsp
	xor	edi, edi
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.61
	mov	edx, 5
	call	dcgettext
	lea	rdi, [rdi]
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	mov	edx, OFFSET FLAT:.str_0
	xor	eax, eax
.label_31:
	lea	rdi, [rdi]
	call	error
	mov	rbp, rbp
	mov	rbp, qword ptr [rsp + 0x370]
	lea	rsi, [rsi]
	mov	r11, qword ptr [rsp + 0x378]
	lea	rsi, [rsi]
	mov	r10, qword ptr [rsp + 0x380]
	mov	edi, r10d
	shr	edi, 8
	mov	ecx, r10d
	shr	ecx, 0x10
	mov	eax, r10d
	shr	eax, 0x18
	mov	dword ptr [rsp + 0x38], eax
	mov	r9, r10
	shr	r9, 0x20
	mov	rsi, r10
	shr	rsi, 0x28
	mov	rdx, r10
	shr	rdx, 0x30
	nop	
	mov	rbx, r10
	shr	rbx, 0x38
	mov	al, byte ptr [rsp + 0x388]
	lea	rdi, [rdi]
	mov	byte ptr [rsp + 0x20], al
	lea	rsi, [rsi]
	mov	r14,  qword ptr [word ptr [rip + keylist]]
	test	r14, r14
	je	.label_44
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x170], rbp
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x110], r11
	mov	qword ptr [rsp + 0x210], rdx
	mov	dword ptr [rsp + 0x218], edi
	lea	rdi, [rdi]
	mov	dword ptr [rsp + 0x3a0], ecx
	mov	eax, 1
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x198], rax
.label_244:
	mov	qword ptr [rsp + 0x10], r9
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x180], rsi
	mov	qword ptr [rsp + 0x58], rbx
	mov	qword ptr [rsp + 0x1a0], r10
	mov	rbp, rbp
	cmp	byte ptr [r14 + 0x39], 0
	mov	rbx, qword ptr [rsp + 0x108]
	je	.label_74
	lea	rsi, [rsi]
	mov	rbp, qword ptr [r14]
	mov	rbp, rbp
	mov	r12, qword ptr [r14 + 0x10]
	cmp	rbp, -1
	mov	rbp, rbp
	sete	al
	movzx	ebx, al
	lea	rdi, [rbx + rbp]
	nop	
	mov	word ptr [rsp + 0x1b0], 0x2b
	lea	r13, [rsp + 0x40]
	mov	rsi, r13
	mov	rsp, rsp
	call	umaxtostr
	nop	
	mov	edx, 0x2d
	mov	rbp, rbp
	lea	rdi, [rsp + 0x1b1]
	mov	rbp, rbp
	mov	rsi, rax
	call	__stpcpy_chk
	mov	rsp, rsp
	mov	r15, rax
	mov	dword ptr [rsp + 0x70], 0x206b2d
	mov	rsp, rsp
	lea	rdi, [rbx + rbp + 1]
	mov	rsi, r13
	lea	rdi, [rdi]
	call	umaxtostr
	mov	edx, 0x2c
	lea	rsi, [rsi]
	lea	rdi, [rsp + 0x73]
	mov	rsi, rax
	lea	rdi, [rdi]
	call	__stpcpy_chk
	lea	rdi, [rdi]
	mov	rbp, rax
	lea	rdi, [rdi]
	cmp	qword ptr [r14 + 0x10], -1
	je	.label_106
	lea	rdi, [rdi]
	mov	rax, r12
	lea	rdi, [rdi]
	mov	r12, r15
	add	r12, 2
	mov	rsp, rsp
	mov	byte ptr [r15 + 2], 0
	mov	word ptr [r15], 0x2d20
	lea	rdi, [rax + 1]
	nop	
	mov	r15, rax
	lea	rsi, [rsi]
	mov	rsi, r13
	mov	rbp, rbp
	call	umaxtostr
	mov	rdi, r12
	mov	rsi, rax
	call	stpcpy
	mov	rbx, rbp
	mov	rbp, rbp
	inc	rbx
	mov	word ptr [rbp], 0x2c
	mov	rsp, rsp
	cmp	qword ptr [r14 + 0x18], -1
	sete	al
	mov	rbp, rbp
	movzx	eax, al
	lea	rdi, [rax + r15 + 1]
	mov	rsi, r13
	call	umaxtostr
	mov	rdi, rbx
	mov	rsi, rax
	lea	rsi, [rsi]
	call	stpcpy
.label_106:
	xor	edi, edi
	lea	rdi, [rdi]
	mov	esi, OFFSET FLAT:.str.150
	mov	edx, 5
	mov	rbp, rbp
	call	dcgettext
	mov	r12, rax
	mov	rbp, rbp
	xor	edi, edi
	lea	rsi, [rsp + 0x1b0]
	call	quote_n
	lea	rsi, [rsi]
	mov	rbp, rax
	mov	edi, 1
	lea	rsi, [rsp + 0x70]
	lea	rsi, [rsi]
	call	quote_n
	mov	rbx, rax
	xor	edi, edi
	lea	rsi, [rsi]
	xor	esi, esi
	xor	eax, eax
	mov	rdx, r12
	mov	rbp, rbp
	mov	rcx, rbp
	mov	r8, rbx
	call	error
	nop	
	mov	rbx, qword ptr [rsp + 0x108]
.label_74:
	mov	rax, qword ptr [r14]
	cmp	rax, -1
	nop	
	je	.label_148
	cmp	qword ptr [r14 + 0x10], rax
	mov	r12d, dword ptr [rsp + 0x218]
	mov	r13, qword ptr [rsp + 0x210]
	nop	
	mov	r15, qword ptr [rsp + 0x110]
	lea	rsi, [rsi]
	mov	rbp, qword ptr [rsp + 0x170]
	lea	rsi, [rsi]
	jae	.label_150
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.151
	mov	edx, 5
	mov	rbp, rbp
	call	dcgettext
	nop	
	mov	rcx, rax
	lea	rsi, [rsi]
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	mov	rsp, rsp
	mov	rcx, qword ptr [rsp + 0x198]
	call	error
	mov	cl, 1
	jmp	.label_168
	nop	word ptr cs:[rax + rax]
.label_148:
	xor	ecx, ecx
	mov	r12d, dword ptr [rsp + 0x218]
	mov	rbp, rbp
	mov	r13, qword ptr [rsp + 0x210]
	mov	rsp, rsp
	mov	r15, qword ptr [rsp + 0x110]
	nop	
	mov	rbp, qword ptr [rsp + 0x170]
	jmp	.label_168
	nop	dword ptr [rax + rax]
.label_150:
	lea	rsi, [rsi]
	xor	ecx, ecx
.label_168:
	nop	
	mov	al, 1
	cmp	byte ptr [r14 + 0x32], 0
	nop	
	jne	.label_175
	lea	rsi, [rsi]
	mov	edx, dword ptr [r14 + 0x34]
	mov	rbp, rbp
	movzx	esi, dx
	cmp	esi, 0xff
	ja	.label_175
	test	dl, dl
	jne	.label_175
	mov	rsp, rsp
	test	edx, 0xff0000
	mov	rsp, rsp
	setne	al
	nop	dword ptr [rax + rax]
.label_175:
	lea	rsi, [rsi]
	cmp	qword ptr [r14 + 0x10], 0
	je	.label_182
	xor	edx, edx
	jmp	.label_24
	nop	
.label_182:
	mov	rbp, rbp
	cmp	qword ptr [r14 + 0x18], 0
	lea	rsi, [rsi]
	setne	dl
.label_24:
	mov	rbp, rbp
	test	cl, cl
	jne	.label_126
	cmp	dword ptr [dword ptr [rip + tab]],  0x80
	setne	cl
	nop	
	mov	esi, dword ptr [rsp + 0x1f0]
	nop	
	or	cl, sil
	or	dl, cl
	jne	.label_126
	mov	rbp, rbp
	mov	cx, word ptr [r14 + 0x30]
	test	cl, cl
	setne	dl
	or	al, dl
	movzx	eax, al
	mov	rbp, rbp
	cmp	eax, 1
	jne	.label_193
	test	cl, cl
	jne	.label_196
	cmp	qword ptr [r14 + 8], 0
	lea	rdi, [rdi]
	jne	.label_193
.label_196:
	mov	rbp, rbp
	movzx	eax, cx
	cmp	eax, 0xff
	ja	.label_126
	cmp	qword ptr [r14 + 0x18], 0
	nop	
	je	.label_126
.label_193:
	xor	edi, edi
	mov	rbp, rbp
	mov	esi, OFFSET FLAT:.str.152
	mov	edx, 5
	mov	rbp, rbp
	call	dcgettext
	lea	rsi, [rsi]
	mov	rcx, rax
	xor	edi, edi
	mov	rsp, rsp
	xor	esi, esi
	xor	eax, eax
	lea	rsi, [rsi]
	mov	rdx, rcx
	mov	rcx, qword ptr [rsp + 0x198]
	call	error
	nop	dword ptr [rax]
.label_126:
	nop	
	mov	eax, dword ptr [rsp + 0x1f0]
	test	al, al
	jne	.label_211
	lea	rdi, [rdi]
	cmp	byte ptr [r14 + 0x32], 0
	jne	.label_137
	mov	rbp, rbp
	movzx	eax, word ptr [r14 + 0x34]
	mov	rbp, rbp
	cmp	eax, 0xff
	ja	.label_137
	test	al, al
	nop	
	je	.label_211
	nop	dword ptr [rax]
.label_137:
	nop	
	mov	rax, qword ptr [r14]
	lea	rcx, [rax + 1]
	add	rax, 2
	test	rcx, rcx
	cmovne	rax, rcx
	cmp	qword ptr [r14 + 0x10], rax
	lea	rsi, [rsi]
	jb	.label_211
	lea	rsi, [rsi]
	xor	edi, edi
	mov	rbp, rbp
	mov	esi, OFFSET FLAT:.str.153
	mov	edx, 5
	call	dcgettext
	lea	rsi, [rsi]
	mov	rcx, rax
	xor	edi, edi
	lea	rdi, [rdi]
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rsp + 0x198]
	mov	rbp, rbp
	call	error
.label_211:
	test	rbp, rbp
	mov	r8d, 0
	lea	rsi, [rsi]
	mov	r10, qword ptr [rsp + 0x1a0]
	lea	rdi, [rdi]
	je	.label_27
	mov	rsp, rsp
	cmp	rbp, qword ptr [r14 + 0x20]
	mov	r8d, 0
	nop	
	je	.label_27
	mov	rsp, rsp
	mov	r8, rbp
.label_27:
	mov	qword ptr [rsp + 0x108], rbx
	lea	rsi, [rsi]
	test	r15, r15
	mov	r11d, 0
	je	.label_242
	mov	rbp, rbp
	cmp	r15, qword ptr [r14 + 0x28]
	mov	r11d, 0
	je	.label_242
	mov	r11, r15
.label_242:
	mov	r9b, byte ptr [r14 + 0x33]
	mov	r15, qword ptr [r14 + 0x30]
	lea	rsi, [rsi]
	mov	al, r15b
	lea	rdi, [rdi]
	xor	al, 1
	lea	rsi, [rsi]
	and	r10b, al
	mov	eax, r15d
	mov	rbp, rbp
	shr	eax, 8
	xor	al, 1
	mov	rsp, rsp
	and	al, r12b
	nop	
	mov	rdx, r15
	lea	rsi, [rsi]
	shr	rdx, 0x30
	xor	dl, 1
	and	dl, r13b
	mov	rbp, rbp
	mov	r13d, r15d
	mov	rsp, rsp
	shr	r13d, 0x10
	xor	r13b, 1
	mov	rsp, rsp
	mov	ecx, dword ptr [rsp + 0x3a0]
	and	r13b, cl
	lea	rsi, [rsi]
	mov	rbp, r15
	shr	rbp, 0x20
	xor	bpl, 1
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rsp + 0x10]
	and	bpl, sil
	nop	
	mov	rdi, r15
	mov	rsp, rsp
	shr	rdi, 0x28
	xor	dil, 1
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rsp + 0x180]
	lea	rdi, [rdi]
	and	dil, sil
	xor	r9b, 1
	mov	ebx, dword ptr [rsp + 0x38]
	and	bl, r9b
	mov	rbp, rbp
	mov	dword ptr [rsp + 0x38], ebx
	mov	bl, byte ptr [r14 + 0x38]
	xor	bl, 1
	and	byte ptr [rsp + 0x20], bl
	shr	r15, 0x38
	lea	rsi, [rsi]
	xor	r15b, 1
	nop	
	mov	rbx, qword ptr [rsp + 0x58]
	nop	
	and	r15b, bl
	inc	qword ptr [rsp + 0x198]
	mov	r14, qword ptr [r14 + 0x40]
	nop	
	test	r14, r14
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x170], r8
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x110], r11
	mov	rsp, rsp
	mov	cl, dl
	mov	qword ptr [rsp + 0x210], rcx
	mov	rsp, rsp
	mov	bl, r15b
	mov	rbp, rbp
	mov	r9b, bpl
	mov	sil, dil
	nop	
	mov	cl, r13b
	mov	rsp, rsp
	mov	dword ptr [rsp + 0x3a0], ecx
	nop	
	mov	cl, al
	mov	dword ptr [rsp + 0x218], ecx
	mov	rbp, rbp
	mov	r12, qword ptr [rsp + 0x208]
	nop	
	jne	.label_244
	nop	
	jmp	.label_284
.label_44:
	mov	eax, edi
	mov	r8, rbp
	mov	r15b, bl
	mov	bpl, r9b
	mov	dil, sil
	lea	rsi, [rsi]
	mov	r13b, cl
.label_284:
	mov	rbx, r8
	lea	rdi, [rdi]
	or	rbx, r11
	jne	.label_287
	nop	
	test	r13b, r13b
	jne	.label_287
	nop	
	movzx	r9d, al
	nop	
	shl	r9d, 8
	mov	rbp, rbp
	movzx	ebx, r10b
	or	ebx, r9d
	mov	rsp, rsp
	test	ebx, ebx
	lea	rsi, [rsi]
	jne	.label_287
	mov	bl, dl
	mov	rbp, rbp
	or	bl, byte ptr [rsp + 0x20]
	nop	
	or	bl, bpl
	mov	rsp, rsp
	or	bl, dil
	lea	rdi, [rdi]
	mov	esi, dword ptr [rsp + 0x38]
	nop	
	or	bl, sil
	mov	rsp, rsp
	jne	.label_287
	test	r15b, r15b
	nop	
	je	.label_57
	mov	bl,  byte ptr [byte ptr [rip + stable]]
	and	bl, 1
	je	.label_297
	cmp	qword ptr [word ptr [rip + keylist]],  0
	mov	rsp, rsp
	jne	.label_287
	jmp	.label_57
.label_297:
	mov	rsp, rsp
	mov	r9b,  byte ptr [byte ptr [rip + unique]]
	nop	
	and	r9b, 1
	lea	rsi, [rsi]
	mov	rsi,  qword ptr [word ptr [rip + keylist]]
	movzx	ebx, r9b
	cmp	ebx, 1
	jne	.label_199
	test	rsi, rsi
	mov	rbp, rbp
	je	.label_199
.label_287:
	mov	r9b,  byte ptr [byte ptr [rip + stable]]
	mov	rsp, rsp
	mov	r14b,  byte ptr [byte ptr [rip + unique]]
	lea	rdi, [rdi]
	or	al, r10b
	je	.label_309
	lea	rax, [rsp + 0x71]
	nop	
	mov	byte ptr [rsp + 0x70], 0x62
	mov	rbp, rbp
	jmp	.label_314
.label_309:
	lea	rax, [rsp + 0x70]
.label_314:
	mov	ebx, OFFSET FLAT:nondictionary
	mov	rbp, rbp
	cmp	r8, rbx
	jne	.label_317
	mov	byte ptr [rax], 0x64
	mov	rbp, rbp
	inc	rax
.label_317:
	test	r11, r11
	lea	rsi, [rsi]
	je	.label_321
	mov	byte ptr [rax], 0x66
	mov	rbp, rbp
	inc	rax
.label_321:
	lea	rsi, [rsi]
	test	bpl, bpl
	je	.label_325
	lea	rdi, [rdi]
	mov	byte ptr [rax], 0x67
	lea	rsi, [rsi]
	inc	rax
.label_325:
	test	dil, dil
	lea	rsi, [rsi]
	je	.label_11
	mov	byte ptr [rax], 0x68
	mov	rbp, rbp
	inc	rax
.label_11:
	nop	
	mov	esi, OFFSET FLAT:nonprinting
	cmp	r8, rsi
	jne	.label_14
	mov	rsp, rsp
	mov	byte ptr [rax], 0x69
	mov	rbp, rbp
	inc	rax
.label_14:
	test	dl, dl
	mov	rsp, rsp
	je	.label_17
	mov	rbp, rbp
	mov	byte ptr [rax], 0x4d
	mov	rsp, rsp
	inc	rax
.label_17:
	lea	rsi, [rsi]
	test	r13b, r13b
	je	.label_79
	mov	byte ptr [rax], 0x6e
	inc	rax
.label_79:
	mov	ecx, dword ptr [rsp + 0x38]
	test	cl, cl
	je	.label_177
	mov	rbp, rbp
	mov	byte ptr [rax], 0x52
	mov	rbp, rbp
	inc	rax
.label_177:
	test	r15b, r15b
	lea	rsi, [rsi]
	je	.label_117
	or	r9b, r14b
	xor	r9b, 1
	lea	rdi, [rdi]
	test	r9b, 1
	lea	rdi, [rdi]
	jne	.label_117
	mov	byte ptr [rax], 0x72
	inc	rax
.label_117:
	cmp	byte ptr [rsp + 0x20], 0
	je	.label_141
	mov	byte ptr [rax], 0x56
	inc	rax
.label_141:
	mov	rsp, rsp
	mov	byte ptr [rax], 0
	lea	rdi, [rdi]
	lea	rbp, [rsp + 0x70]
	mov	rdi, rbp
	lea	rsi, [rsi]
	call	strlen
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.154
	lea	rsi, [rsi]
	mov	edx, OFFSET FLAT:.str.155
	mov	r8d, 5
	lea	rsi, [rsi]
	mov	rcx, rax
	call	dcngettext
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	mov	rcx, rbp
	mov	rbp, rbp
	call	error
	test	r15b, r15b
	lea	rsi, [rsi]
	je	.label_57
	mov	al,  byte ptr [byte ptr [rip + stable]]
	mov	rsp, rsp
	and	al, 1
	jne	.label_57
	mov	rbp, rbp
	mov	r9b,  byte ptr [byte ptr [rip + unique]]
	mov	rsi,  qword ptr [word ptr [rip + keylist]]
.label_199:
	lea	rsi, [rsi]
	test	rsi, rsi
	je	.label_57
	xor	r9b, 1
	nop	
	test	r9b, 1
	je	.label_57
	lea	rdi, [rdi]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.156
	nop	
	mov	edx, 5
	mov	rbp, rbp
	call	dcgettext
	lea	rsi, [rsi]
	mov	rcx, rax
	mov	rsp, rsp
	xor	edi, edi
	mov	rsp, rsp
	xor	esi, esi
	xor	eax, eax
	mov	rbp, rbp
	mov	rdx, rcx
	mov	rbp, rbp
	call	error
.label_57:
	mov	al, byte ptr [rsp + 0x387]
	mov	byte ptr [byte ptr [rip + reverse]],  al
	mov	rsp, rsp
	mov	eax, dword ptr [rsp + 0x6c]
	test	al, 1
	mov	rbp, rbp
	mov	r14, qword ptr [rsp + 0x108]
	je	.label_72
	mov	esi, 0x10
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rsp + 0x200]
	call	randread_new
	mov	rsp, rsp
	mov	rbx, rax
	test	rbx, rbx
	nop	
	je	.label_81
	mov	rbp, rbp
	lea	rsi, [rsp + 0x70]
	mov	edx, 0x10
	mov	rbp, rbp
	mov	rdi, rbx
	call	randread
	mov	rdi, rbx
	call	randread_free
	mov	rbp, rbp
	test	eax, eax
	mov	rbp, rbp
	jne	.label_110
	mov	edi, OFFSET FLAT:random_md5_state
	call	md5_init_ctx
	lea	rsi, [rsi]
	lea	rdi, [rsp + 0x70]
	mov	esi, 0x10
	mov	edx, OFFSET FLAT:random_md5_state
	mov	rsp, rsp
	call	md5_process_bytes
.label_72:
	nop	
	cmp	qword ptr [word ptr [rip + temp_dir_count]],  0
	lea	rdi, [rdi]
	jne	.label_98
	mov	edi, OFFSET FLAT:.str.62
	call	getenv
	lea	rdi, [rdi]
	test	rax, rax
	mov	rsp, rsp
	mov	ebx, OFFSET FLAT:.str.16
	lea	rsi, [rsi]
	cmovne	rbx, rax
	cmp	qword ptr [word ptr [rip + temp_dir_alloc]],  0
	je	.label_102
	nop	
	mov	rax,  qword ptr [word ptr [rip + temp_dirs]]
	xor	ecx, ecx
	mov	rsp, rsp
	jmp	.label_107
.label_102:
	mov	rdi,  qword ptr [word ptr [rip + temp_dirs]]
	test	rdi, rdi
	mov	eax, 0x10
	mov	esi, 1
	cmove	rsi, rax
	mov	rbp, rbp
	mov	qword ptr [word ptr [rip + temp_dir_alloc]],  rsi
	shl	rsi, 3
	call	xrealloc
	nop	
	mov	qword ptr [word ptr [rip + temp_dirs]],  rax
	mov	rcx,  qword ptr [word ptr [rip + temp_dir_count]]
.label_107:
	lea	rdx, [rcx + 1]
	lea	rsi, [rsi]
	mov	qword ptr [word ptr [rip + temp_dir_count]],  rdx
	mov	qword ptr [rax + rcx*8], rbx
.label_98:
	test	r12, r12
	mov	r15, qword ptr [rsp + 0x348]
	jne	.label_122
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rsp + 0x178]
	mov	rbp, rbp
	call	free
	mov	edi, 8
	call	xmalloc
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x178], rax
	mov	rsp, rsp
	mov	qword ptr [word ptr [rax]], OFFSET FLAT:.str.54
	lea	rsi, [rsi]
	mov	r12d, 1
.label_122:
	lea	rsi, [rsi]
	mov	rbx, qword ptr [rsp + 0x18]
	nop	
	mov	rax,  qword ptr [word ptr [rip + sort_size]]
	mov	rsp, rsp
	test	rax, rax
	mov	rsp, rsp
	je	.label_134
	mov	ecx,  dword ptr [dword ptr [rip + nmerge]]
	imul	rcx, rcx, 0x22
	cmp	rax, rcx
	lea	rsi, [rsi]
	cmova	rcx, rax
	mov	qword ptr [word ptr [rip + sort_size]],  rcx
.label_134:
	test	bl, bl
	je	.label_140
	cmp	r12, 2
	mov	rsp, rsp
	jae	.label_142
	test	r15, r15
	jne	.label_144
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0x178]
	lea	rdi, [rdi]
	mov	r15, qword ptr [rax]
	mov	qword ptr [rsp + 0x178], r15
	mov	esi, OFFSET FLAT:.str.52
	mov	rdi, r15
	call	stream_open
	mov	r14, rax
	mov	qword ptr [rsp + 0x38], r14
	mov	rbp, rbp
	test	r14, r14
	lea	rsi, [rsi]
	je	.label_157
	mov	rax,  qword ptr [word ptr [rip + keylist]]
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x3a0], rax
	movzx	r12d,  byte ptr [byte ptr [rip + unique]]
	and	r12d, 1
	mov	rcx,  qword ptr [word ptr [rip + merge_buffer_size]]
	lea	rsi, [rsi]
	mov	rax,  qword ptr [word ptr [rip + sort_size]]
	cmp	rcx, rax
	lea	rsi, [rsi]
	cmova	rax, rcx
.label_173:
	mov	ecx, eax
	and	ecx, 0x1f
	mov	ebx, 0x20
	sub	rbx, rcx
	add	rbx, rax
	mov	rsp, rsp
	mov	rdi, rbx
	lea	rdi, [rdi]
	call	malloc
	lea	rsi, [rsi]
	test	rax, rax
	jne	.label_172
	mov	rbp, rbp
	mov	rax, rbx
	nop	
	shr	rax, 1
	mov	rbp, rbp
	cmp	rbx, 0x43
	mov	rsp, rsp
	ja	.label_173
	lea	rdi, [rdi]
	call	xalloc_die
.label_172:
	mov	qword ptr [rsp + 0x70], rax
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x88], rbx
	nop	
	mov	eax, 0x20
	lea	rsi, [rsi]
	movq	xmm0, rax
	lea	rdi, [rdi]
	pslldq	xmm0, 8
	mov	rbp, rbp
	movdqu	xmmword ptr [rsp + 0x90], xmm0
	mov	byte ptr [rsp + 0xa0], 0
	pxor	xmm0, xmm0
	nop	
	movdqu	xmmword ptr [rsp + 0x78], xmm0
	mov	qword ptr [rsp + 0x1b0], 0
	lea	rdi, [rsp + 0x70]
	mov	rsi, r14
	mov	rdx, r15
	call	fillbuf
	xor	r13d, r13d
	test	al, al
	lea	rdi, [rdi]
	mov	ebx, 0
	lea	rdi, [rdi]
	je	.label_68
	xor	r12d, 1
	mov	rbp, rbp
	xor	r13d, r13d
	xor	ebp, ebp
	nop	
	xor	eax, eax
	mov	qword ptr [rsp + 0x210], rax
.label_252:
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x108], r13
	mov	rbp, rbp
	mov	r15, qword ptr [rsp + 0x70]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0x80]
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x218], rax
	mov	rbp, rbp
	add	r15, qword ptr [rsp + 0x88]
	mov	rbp, rbp
	shl	rax, 5
	lea	rdi, [rdi]
	mov	r13, r15
	mov	rsp, rsp
	sub	r13, rax
	mov	rsp, rsp
	test	rbp, rbp
	mov	rbx, r15
	lea	rdi, [rdi]
	je	.label_197
	lea	rsi, [r15 - 0x20]
	nop	
	lea	rdi, [rsp + 0x1b0]
	mov	rbp, rbp
	call	compare
	lea	rdi, [rdi]
	cmp	r12d, eax
	mov	r14, r15
	mov	rbx, r15
	jle	.label_147
	nop	
.label_197:
	lea	rdi, [rdi]
	lea	r14, [rbx - 0x20]
	cmp	r13, r14
	mov	rbp, rbp
	jae	.label_238
	add	rbx, -0x40
	nop	
	mov	rdi, r14
	mov	rsi, rbx
	call	compare
	cmp	r12d, eax
	mov	rsp, rsp
	mov	rbx, r14
	jg	.label_197
	jmp	.label_147
	nop	
.label_238:
	mov	rdx, qword ptr [rbx - 0x18]
	mov	rbp, rbp
	cmp	rbp, rdx
	nop	
	mov	r15, qword ptr [rsp + 0x178]
	mov	r14, qword ptr [rsp + 0x38]
	mov	r13, qword ptr [rsp + 0x108]
	jae	.label_225
	nop	word ptr cs:[rax + rax]
.label_310:
	add	rbp, rbp
	je	.label_45
	cmp	rbp, rdx
	lea	rsi, [rsi]
	jb	.label_310
	jmp	.label_319
.label_45:
	mov	rbp, rdx
.label_319:
	mov	rbp, rbp
	mov	rdi, r13
	call	free
	mov	rdi, rbp
	lea	rsi, [rsi]
	call	xmalloc
	mov	r13, rax
	mov	qword ptr [rsp + 0x1b0], r13
	mov	rbp, rbp
	mov	rdx, qword ptr [rbx - 0x18]
.label_225:
	mov	rsi, qword ptr [rbx - 0x20]
	lea	rsi, [rsi]
	mov	rdi, r13
	call	memcpy
	mov	rax, qword ptr [rbx - 0x18]
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x1b8], rax
	mov	rsp, rsp
	cmp	qword ptr [rsp + 0x3a0], 0
	mov	rbp, rbp
	je	.label_69
	mov	rax, qword ptr [rbx - 0x20]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbx - 0x10]
	sub	rcx, rax
	lea	rsi, [rsi]
	add	rcx, r13
	nop	
	mov	qword ptr [rsp + 0x1c0], rcx
	nop	
	mov	rcx, qword ptr [rbx - 8]
	sub	rcx, rax
	add	rcx, r13
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x1c8], rcx
.label_69:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp + 0x218]
	nop	
	add	qword ptr [rsp + 0x210], rax
	lea	rdi, [rsp + 0x70]
	mov	rsi, r14
	nop	
	mov	rdx, r15
	mov	rbp, rbp
	call	fillbuf
	mov	rbp, rbp
	xor	ebx, ebx
	lea	rdi, [rdi]
	test	al, al
	nop	
	jne	.label_252
	lea	rsi, [rsi]
	jmp	.label_68
.label_140:
	xor	ebp, ebp
	nop	
	test	r12, r12
	je	.label_254
	mov	rsp, rsp
	mov	rbx, qword ptr [rsp + 0x178]
.label_265:
	mov	rdi, qword ptr [rbx]
	mov	rsp, rsp
	movzx	eax, byte ptr [rdi]
	cmp	eax, 0x2d
	jne	.label_257
	lea	rdi, [rdi]
	cmp	byte ptr [rdi + 1], 0
	je	.label_260
.label_257:
	mov	esi, 4
	lea	rsi, [rsi]
	call	euidaccess
	test	eax, eax
	jne	.label_264
.label_260:
	inc	rbp
	add	rbx, 8
	lea	rdi, [rdi]
	cmp	rbp, r12
	jb	.label_265
.label_254:
	test	r15, r15
	je	.label_174
	mov	esi, 0x80041
	mov	edx, 0x1b6
	xor	eax, eax
	mov	rdi, r15
	lea	rsi, [rsi]
	call	open
	nop	
	mov	ebx, eax
	lea	rsi, [rsi]
	test	ebx, ebx
	js	.label_157
	lea	rsi, [rsi]
	cmp	ebx, 1
	lea	rsi, [rsi]
	je	.label_174
	mov	esi, 1
	mov	edi, ebx
	nop	
	call	dup2
	lea	rsi, [rsi]
	mov	edi, ebx
	call	close
.label_174:
	test	r14b, 1
	lea	rdi, [rdi]
	jne	.label_280
	mov	rcx, qword ptr [rsp + 0x398]
	test	rcx, rcx
	jne	.label_282
	lea	rsi, [rsi]
	mov	edi, 2
	nop	
	call	num_processors
	cmp	rax, 8
	mov	ecx, 8
	cmovb	rcx, rax
.label_282:
	movabs	rax, 0xffffffffffffff
	cmp	rcx, rax
	mov	rsp, rsp
	cmovb	rax, rcx
	nop	
	mov	qword ptr [rsp + 0x1c8], 0
	test	r12, r12
	je	.label_288
	nop	
	lea	rcx, [rax + rax]
	mov	qword ptr [rsp + 0x1a0], rcx
	mov	rcx, rax
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x220], rax
	lea	rsi, [rsi]
	shl	rcx, 8
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x58], rcx
	xor	ebx, ebx
	xor	r13d, r13d
.label_185:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp + 0x178]
	mov	rbp, rbp
	mov	rbp, qword ptr [rax]
	mov	qword ptr [rsp + 0x170], rbp
	nop	
	mov	esi, OFFSET FLAT:.str.52
	mov	rdi, rbp
	call	stream_open
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x218], rax
	lea	rdi, [rdi]
	test	rax, rax
	mov	rsp, rsp
	je	.label_302
	mov	rsp, rsp
	mov	rdx, qword ptr [rsp + 0x220]
	cmp	rdx, 2
	lea	rdi, [rdi]
	mov	eax, 1
	mov	ecx, 1
	mov	esi, 0x30
	nop	
	jb	.label_306
	nop	word ptr [rax + rax]
.label_313:
	add	rcx, rcx
	lea	rdi, [rdi]
	inc	rax
	lea	rsi, [rsi]
	cmp	rcx, rdx
	lea	rdi, [rdi]
	jb	.label_313
	shl	rax, 5
	mov	rsi, rax
.label_306:
	mov	rax, rsi
	mov	rsp, rsp
	or	rax, 1
	mov	qword ptr [rsp + 0x3a0], rax
	nop	
	cmp	qword ptr [rsp + 0x1c8], 0
	jne	.label_318
	nop	
	mov	qword ptr [rsp + 0x210], rbx
	mov	rbp, rsi
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x110], rsi
	or	rbp, 2
	mov	rbp, rbp
	xor	ebx, ebx
	nop	dword ptr [rax]
.label_296:
	test	rbx, rbx
	mov	rbp, rbp
	je	.label_12
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0x178]
	mov	rsi, qword ptr [rax + rbx*8]
	movzx	eax, byte ptr [rsi]
	cmp	eax, 0x2d
	lea	rsi, [rsi]
	jne	.label_15
	cmp	byte ptr [rsi + 1], 0
	je	.label_65
.label_15:
	nop	
	mov	edi, 1
	mov	rbp, rbp
	lea	rdx, [rsp + 0x70]
	call	__xstat
	lea	rsi, [rsi]
	jmp	.label_187
.label_12:
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rsp + 0x218]
	call	fileno
	nop	
	mov	edi, 1
	mov	esi, eax
	lea	rsi, [rsi]
	jmp	.label_30
.label_65:
	lea	rdi, [rdi]
	mov	edi, 1
	nop	
	xor	esi, esi
.label_30:
	lea	rdx, [rsp + 0x70]
	call	__fxstat
.label_187:
	test	eax, eax
	jne	.label_35
	nop	
	mov	eax, dword ptr [rsp + 0x88]
	mov	ecx, 0xf000
	and	eax, ecx
	mov	rsp, rsp
	cmp	eax, 0x8000
	jne	.label_36
	mov	r14, qword ptr [rsp + 0xa0]
	mov	rsp, rsp
	jmp	.label_40
.label_36:
	mov	rsi,  qword ptr [word ptr [rip + sort_size]]
	test	rsi, rsi
	mov	r14d, 0x20000
	jne	.label_86
.label_40:
	lea	rsi, [rsi]
	mov	rsi,  qword ptr [word ptr [rip + sort_buffer_size.size_bound]]
	mov	rbp, rbp
	test	rsi, rsi
	mov	rbp, rbp
	jne	.label_52
	mov	rsi,  qword ptr [word ptr [rip + sort_size]]
	mov	qword ptr [word ptr [rip + sort_buffer_size.size_bound]],  rsi
	mov	rbp, rbp
	test	rsi, rsi
	jne	.label_52
	mov	qword ptr [rsp + 0x208], r12
	mov	edi, 2
	nop	
	lea	r12, [rsp + 0x40]
	mov	rsp, rsp
	mov	rsi, r12
	call	getrlimit
	cmp	eax, 1
	mov	rsp, rsp
	sbb	r15, r15
	lea	rsi, [rsi]
	not	r15
	or	r15, qword ptr [rsp + 0x40]
	mov	edi, 9
	mov	rsi, r12
	lea	rdi, [rdi]
	call	getrlimit
	test	eax, eax
	mov	rbp, rbp
	jne	.label_67
	mov	rax, qword ptr [rsp + 0x40]
	cmp	rax, r15
	mov	rsp, rsp
	cmovb	r15, rax
.label_67:
	mov	rsp, rsp
	shr	r15, 1
	lea	rdi, [rdi]
	mov	edi, 5
	lea	rsi, [rsp + 0x40]
	call	getrlimit
	test	eax, eax
	mov	rbp, rbp
	jne	.label_77
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0x40]
	shr	rax, 4
	lea	rax, [rax + rax*4]
	lea	rax, [rax + rax*2]
	cmp	rax, r15
	lea	rdi, [rdi]
	cmovb	r15, rax
.label_77:
	call	physmem_available
	movsd	qword ptr [rsp + 0x38], xmm0
	mov	rbp, rbp
	call	physmem_total
	movapd	xmm1, xmm0
	mov	rsp, rsp
	mulsd	xmm1,  qword ptr [word ptr [rip + label_87]]
	mov	rsp, rsp
	movsd	xmm6, qword ptr [rsp + 0x38]
	maxsd	xmm6, xmm1
	mulsd	xmm0,  qword ptr [word ptr [rip + label_88]]
	movq	xmm1, r15
	lea	rsi, [rsi]
	movdqa	xmm2,  xmmword ptr [word ptr [rip + label_89]]
	movdqa	xmm3, xmm2
	mov	rbp, rbp
	punpckldq	xmm1, xmm3
	movapd	xmm2,  xmmword ptr [word ptr [rip + label_90]]
	lea	rsi, [rsi]
	movapd	xmm5, xmm2
	nop	
	subpd	xmm1, xmm5
	pshufd	xmm2, xmm1, 0x4e
	nop	
	addpd	xmm2, xmm1
	movapd	xmm1, xmm0
	mov	rbp, rbp
	movsd	xmm4,  qword ptr [word ptr [rip + label_91]]
	subsd	xmm1, xmm4
	nop	
	cvttsd2si	rax, xmm1
	movabs	rcx, 0x8000000000000000
	mov	rdx, rcx
	xor	rax, rdx
	cvttsd2si	rcx, xmm0
	mov	rbp, rbp
	ucomisd	xmm0, xmm4
	lea	rsi, [rsi]
	cmovae	rcx, rax
	lea	rsi, [rsi]
	ucomisd	xmm2, xmm0
	cmovbe	rcx, r15
	movq	xmm0, rcx
	mov	rbp, rbp
	punpckldq	xmm0, xmm3
	mov	rsp, rsp
	subpd	xmm0, xmm5
	pshufd	xmm1, xmm0, 0x4e
	addpd	xmm1, xmm0
	lea	rdi, [rdi]
	movapd	xmm2, xmm6
	movapd	xmm0, xmm2
	subsd	xmm0, xmm4
	mov	rbp, rbp
	cvttsd2si	rax, xmm0
	xor	rax, rdx
	cvttsd2si	rsi, xmm2
	mov	rsp, rsp
	ucomisd	xmm2, xmm4
	lea	rdi, [rdi]
	cmovae	rsi, rax
	ucomisd	xmm1, xmm2
	nop	
	cmovbe	rsi, rcx
	lea	rsi, [rsi]
	mov	eax,  dword ptr [dword ptr [rip + nmerge]]
	lea	rdi, [rdi]
	imul	rax, rax, 0x22
	mov	rbp, rbp
	cmp	rsi, rax
	nop	
	cmovbe	rsi, rax
	lea	rdi, [rdi]
	mov	qword ptr [word ptr [rip + sort_buffer_size.size_bound]],  rsi
	mov	rbp, rbp
	mov	r15, qword ptr [rsp + 0x348]
	mov	rsp, rsp
	mov	r12, qword ptr [rsp + 0x208]
	nop	word ptr cs:[rax + rax]
.label_52:
	mov	rbp, rbp
	mov	rcx, r14
	mov	rdi, qword ptr [rsp + 0x3a0]
	nop	
	imul	rcx, rdi
	inc	rcx
	xor	edx, edx
	mov	rax, rcx
	lea	rsi, [rsi]
	div	rdi
	cmp	r14, rax
	nop	
	jne	.label_86
	mov	rax, rsi
	sub	rax, rbp
	cmp	rax, rcx
	mov	rsp, rsp
	jbe	.label_86
	add	rbp, rcx
	inc	rbx
	cmp	rbx, r12
	jb	.label_296
	jmp	.label_151
.label_86:
	mov	rbp, rsi
	nop	dword ptr [rax]
.label_151:
	mov	rbp, rbp
	mov	eax, ebp
	and	eax, 0x1f
	nop	
	mov	ebx, 0x20
	sub	rbx, rax
	lea	rsi, [rsi]
	add	rbx, rbp
	mov	rdi, rbx
	mov	rsp, rsp
	call	malloc
	test	rax, rax
	lea	rsi, [rsi]
	jne	.label_161
	mov	rbp, rbp
	shr	rbx, 1
	cmp	rbx, qword ptr [rsp + 0x3a0]
	mov	rbp, rbx
	ja	.label_151
	mov	rsp, rsp
	jmp	.label_166
.label_161:
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x1b0], rax
	mov	rsi, qword ptr [rsp + 0x110]
	mov	qword ptr [rsp + 0x1d8], rsi
	mov	qword ptr [rsp + 0x1c8], rbx
	mov	qword ptr [rsp + 0x1d0], 0
	mov	byte ptr [rsp + 0x1e0], 0
	nop	
	lea	rax, [rsp + 0x1b8]
	xorpd	xmm0, xmm0
	mov	rbp, rbp
	movupd	xmmword ptr [rax], xmm0
	nop	
	mov	rbx, qword ptr [rsp + 0x210]
	mov	rsp, rsp
	mov	rbp, qword ptr [rsp + 0x170]
.label_318:
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x110], rsi
	mov	byte ptr [rsp + 0x1e0], 0
	lea	rsi, [rsi]
	add	qword ptr [rsp + 0x178], 8
	dec	r12
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x208], r12
	nop	word ptr cs:[rax + rax]
.label_292:
	lea	rdi, [rsp + 0x1b0]
	mov	rsi, qword ptr [rsp + 0x218]
	mov	rsp, rsp
	mov	rdx, rbp
	call	fillbuf
	lea	rsi, [rsi]
	test	al, al
	mov	rsp, rsp
	je	.label_190
	lea	rdi, [rdi]
	mov	al, byte ptr [rsp + 0x1e0]
	nop	
	mov	r14, qword ptr [rsp + 0x1c8]
	mov	rsp, rsp
	test	r12, r12
	je	.label_73
	lea	rsi, [rsi]
	test	al, al
	nop	
	je	.label_73
	mov	rcx, qword ptr [rsp + 0x1b8]
	mov	rdx, r14
	sub	rdx, rcx
	mov	rsi, qword ptr [rsp + 0x1c0]
	imul	rsi, qword ptr [rsp + 0x110]
	sub	rdx, rsi
	cmp	qword ptr [rsp + 0x3a0], rdx
	mov	rbp, rbp
	jb	.label_195
.label_73:
	mov	qword ptr [word ptr [rip + saved_line]],  0
	mov	rcx, qword ptr [rsp + 0x1b0]
	nop	
	mov	qword ptr [rsp + 0x38], rcx
	mov	rsp, rsp
	test	al, al
	je	.label_204
	mov	rax, r13
	or	rax, r12
	or	rax, qword ptr [rsp + 0x1d0]
	nop	
	jne	.label_204
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rsp + 0x218]
	lea	rdi, [rdi]
	mov	rsi, rbp
	call	xfclose
	mov	rbp, rbp
	mov	esi, OFFSET FLAT:.str.166
	lea	rdi, [rdi]
	mov	rdi, r15
	mov	rsp, rsp
	call	stream_open
	lea	rsi, [rsi]
	test	rax, rax
	je	.label_157
	mov	qword ptr [rsp + 0x118], rax
	mov	bl, 1
	mov	rbp, rbp
	jmp	.label_249
	nop	word ptr [rax + rax]
.label_204:
	inc	r13
	lea	rdi, [rdi]
	xor	esi, esi
	lea	rdi, [rsp + 0x118]
	mov	rsp, rsp
	call	maybe_create_temp
	mov	rsp, rsp
	mov	r15, rax
	add	r15, 0xd
.label_249:
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x108], r13
	nop	
	add	r14, qword ptr [rsp + 0x38]
	mov	rsp, rsp
	mov	r12, qword ptr [rsp + 0x1c0]
	cmp	r12, 2
	jb	.label_298
	mov	edi, OFFSET FLAT:compare_nodes
	mov	rsi, qword ptr [rsp + 0x1a0]
	lea	rsi, [rsi]
	call	heap_alloc
	mov	qword ptr [rsp + 0x70], rax
	xor	esi, esi
	mov	rbp, rbp
	lea	rdi, [rsp + 0x78]
	call	pthread_mutex_init
	xor	esi, esi
	nop	
	lea	rdi, [rsp + 0xa0]
	nop	
	call	pthread_cond_init
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rsp + 0x58]
	call	xmalloc
	mov	qword ptr [rsp + 0x210], rbx
	mov	rbx, rax
	xorpd	xmm0, xmm0
	movupd	xmmword ptr [rbx + 0x10], xmm0
	mov	rbp, rbp
	movupd	xmmword ptr [rbx], xmm0
	mov	qword ptr [rbx + 0x20], 0
	mov	rbp, rbp
	mov	qword ptr [rbx + 0x30], r12
	lea	rdi, [rdi]
	mov	qword ptr [rbx + 0x28], r12
	mov	rsp, rsp
	mov	qword ptr [rbx + 0x38], 0
	mov	rsp, rsp
	mov	dword ptr [rbx + 0x50], 0
	mov	byte ptr [rbx + 0x54], 0
	lea	rdi, [rbx + 0x58]
	nop	
	xor	esi, esi
	call	pthread_mutex_init
	lea	rbp, [rbx + 0x80]
	nop	
	xor	r9d, r9d
	mov	rsp, rsp
	mov	rdi, rbx
	mov	rsi, rbp
	mov	rdx, r14
	lea	rdi, [rdi]
	mov	rbx, qword ptr [rsp + 0x220]
	mov	rbp, rbp
	mov	rcx, rbx
	mov	r8, r12
	mov	rbp, rbp
	call	init_node
	mov	r13, qword ptr [rsp + 0x118]
	lea	rdi, [rdi]
	mov	qword ptr [rsp], r15
	mov	rsp, rsp
	mov	rdi, r14
	mov	rsi, rbx
	mov	rbx, qword ptr [rsp + 0x210]
	mov	rdx, r12
	mov	rcx, rbp
	mov	rbp, qword ptr [rsp + 0x170]
	lea	r8, [rsp + 0x70]
	nop	
	mov	r9, r13
	lea	rsi, [rsi]
	call	sortlines
	mov	r12, qword ptr [rsp + 0x208]
	jmp	.label_46
	nop	word ptr cs:[rax + rax]
.label_298:
	lea	rdi, [rdi]
	add	r14, -0x20
	mov	r13, qword ptr [rsp + 0x118]
	mov	rbp, rbp
	movzx	eax,  byte ptr [byte ptr [rip + unique]]
	and	eax, 1
	mov	rbp, rbp
	cmp	eax, 1
	mov	r12, qword ptr [rsp + 0x208]
	jne	.label_274
	cmp	qword ptr [word ptr [rip + saved_line]],  0
	lea	rdi, [rdi]
	je	.label_279
	mov	esi, OFFSET FLAT:saved_line
	mov	rsp, rsp
	mov	rdi, r14
	call	compare
	test	eax, eax
	lea	rsi, [rsi]
	je	.label_46
.label_279:
	mov	rsp, rsp
	movupd	xmm0, xmmword ptr [r14]
	mov	rsp, rsp
	movupd	xmm1, xmmword ptr [r14 + 0x10]
	nop	
	movupd	xmmword ptr [word ptr [rip + label_285]],  xmm1
	nop	
	movupd	xmmword ptr [word ptr [rip + saved_line]],  xmm0
.label_274:
	nop	
	mov	rdi, r14
	lea	rdi, [rdi]
	mov	rsi, r13
	mov	rdx, r15
	lea	rsi, [rsi]
	call	write_line
.label_46:
	lea	rsi, [rsi]
	mov	rdi, r13
	lea	rdi, [rdi]
	mov	rsi, r15
	lea	rsi, [rsi]
	call	xfclose
	test	bl, 1
	lea	rsi, [rsi]
	mov	r15, qword ptr [rsp + 0x348]
	mov	r13, qword ptr [rsp + 0x108]
	je	.label_292
	mov	rbp, rbp
	jmp	.label_160
.label_195:
	mov	qword ptr [rsp + 0x1d0], rcx
.label_190:
	nop	
	mov	rdi, qword ptr [rsp + 0x218]
	mov	rsi, rbp
	nop	
	call	xfclose
	test	r12, r12
	jne	.label_185
	mov	rax, qword ptr [rsp + 0x1b0]
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x38], rax
.label_160:
	mov	rdi, qword ptr [rsp + 0x38]
	lea	rdi, [rdi]
	call	free
	test	bl, 1
	jne	.label_138
	mov	rbp,  qword ptr [word ptr [rip + temphead]]
	mov	rax, r13
	mov	rbp, rbp
	shr	rax, 0x3b
	je	.label_231
	call	xalloc_die
.label_147:
	mov	ebx, 1
	nop	
	mov	rax, qword ptr [rsp + 0x18]
	nop	
	movzx	eax, al
	cmp	eax, 0x63
	mov	r13, qword ptr [rsp + 0x108]
	mov	rsp, rsp
	jne	.label_311
	lea	rsi, [rsi]
	add	r14, -0x20
	lea	rsi, [rsi]
	sub	r15, r14
	sar	r15, 5
	add	r15, qword ptr [rsp + 0x210]
	mov	rax,  qword ptr [word ptr [rip + stderr]]
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x3a0], rax
	mov	rsp, rsp
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.157
	mov	rbp, rbp
	mov	edx, 5
	lea	rsi, [rsi]
	call	dcgettext
	mov	qword ptr [rsp + 0x218], rax
	lea	rsi, [rsi]
	mov	r12,  qword ptr [word ptr [rip + program_name]]
	lea	rsi, [rsi]
	lea	rsi, [rsp + 0x40]
	mov	rdi, r15
	call	umaxtostr
	nop	
	mov	rbp, rax
	mov	ebx, 1
	mov	rsp, rsp
	mov	esi, 1
	lea	rsi, [rsi]
	xor	eax, eax
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rsp + 0x3a0]
	mov	rdx, qword ptr [rsp + 0x218]
	lea	rsi, [rsi]
	mov	rcx, r12
	mov	rbp, rbp
	mov	r15, qword ptr [rsp + 0x178]
	mov	rbp, rbp
	mov	r8, r15
	mov	r9, rbp
	call	__fprintf_chk
	mov	rbp,  qword ptr [word ptr [rip + stderr]]
	lea	rdi, [rdi]
	xor	edi, edi
	lea	rdi, [rdi]
	mov	esi, OFFSET FLAT:.str.158
	lea	rdi, [rdi]
	mov	edx, 5
	call	dcgettext
	mov	rdi, r14
	lea	rdi, [rdi]
	mov	rsi, rbp
	mov	rdx, rax
	mov	rsp, rsp
	call	write_line
	jmp	.label_42
.label_280:
	mov	esi, 0x10
	mov	rdi, r12
	call	xcalloc
	nop	
	xor	ecx, ecx
	lea	rdi, [rdi]
	test	r12, r12
	mov	rdi, qword ptr [rsp + 0x178]
	je	.label_47
	nop	
	mov	rdx, rax
	nop	
.label_53:
	mov	rsi, qword ptr [rdi + rcx*8]
	mov	rsp, rsp
	mov	qword ptr [rdx], rsi
	lea	rdi, [rdi]
	inc	rcx
	lea	rdi, [rdi]
	add	rdx, 0x10
	mov	rbp, rbp
	cmp	rcx, r12
	jb	.label_53
.label_47:
	xor	esi, esi
	mov	rdi, rax
	mov	rsp, rsp
	mov	rdx, r12
	mov	rsp, rsp
	mov	rcx, r15
	mov	rbp, rbp
	call	merge
	lea	rsi, [rsi]
	jmp	.label_61
.label_311:
	lea	rsi, [rsi]
	mov	r15, qword ptr [rsp + 0x178]
.label_42:
	mov	r14, qword ptr [rsp + 0x38]
.label_68:
	mov	rdi, r14
	mov	rsi, r15
	nop	
	call	xfclose
	mov	rsp, rsp
	mov	rdi, qword ptr [rsp + 0x70]
	mov	rsp, rsp
	call	free
	mov	rbp, rbp
	mov	rdi, r13
	lea	rdi, [rdi]
	call	free
	lea	rdi, [rdi]
	jmp	.label_70
.label_288:
	mov	rbp,  qword ptr [word ptr [rip + temphead]]
	xor	r13d, r13d
.label_231:
	mov	rdi, r13
	mov	rsp, rsp
	shl	rdi, 4
	call	xmalloc
	lea	rdi, [rdi]
	mov	rbx, rax
	test	rbp, rbp
	je	.label_78
	mov	rbp, rbp
	mov	rax, rbx
	nop	
	add	rax, 8
	nop	word ptr cs:[rax + rax]
.label_83:
	lea	rcx, [rbp + 0xd]
	nop	
	mov	qword ptr [rax - 8], rcx
	mov	rbp, rbp
	mov	qword ptr [rax], rbp
	lea	rsi, [rsi]
	mov	rbp, qword ptr [rbp]
	lea	rdi, [rdi]
	add	rax, 0x10
	test	rbp, rbp
	jne	.label_83
.label_78:
	mov	rdi, rbx
	mov	rsi, r13
	mov	rdx, r13
	mov	rcx, r15
	call	merge
	mov	rdi, rbx
	lea	rdi, [rdi]
	call	free
	jmp	.label_138
.label_96:
	mov	edi, 0xffffffff
	call	reap
.label_138:
	cmp	dword ptr [dword ptr [rip + nprocs]],  0
	nop	
	jg	.label_96
.label_61:
	xor	ebx, ebx
	movzx	eax,  byte ptr [byte ptr [rip + have_read_stdin]]
	and	eax, 1
	lea	rsi, [rsi]
	cmp	eax, 1
	lea	rdi, [rdi]
	jne	.label_70
	lea	rdi, [rdi]
	mov	rdi,  qword ptr [word ptr [rip + stdin]]
	lea	rsi, [rsi]
	call	rpl_fclose
	lea	rdi, [rdi]
	cmp	eax, -1
	mov	rbp, rbp
	je	.label_103
.label_70:
	mov	eax, ebx
	lea	rdi, [rdi]
	add	rsp, 0x3a8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_264:
	xor	edi, edi
	lea	rsi, [rsi]
	mov	esi, OFFSET FLAT:.str.165
	nop	
	mov	edx, 5
	call	dcgettext
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbx]
	lea	rsi, [rsi]
	mov	rdi, rax
	call	sort_die
.label_166:
	mov	rsp, rsp
	call	xalloc_die
.label_157:
	xor	edi, edi
	lea	rsi, [rsi]
	mov	esi, OFFSET FLAT:.str.142
	lea	rdi, [rdi]
	mov	edx, 5
	call	dcgettext
	nop	
	mov	rdi, rax
	mov	rsi, r15
	call	sort_die
.label_35:
	xor	edi, edi
	mov	rbp, rbp
	mov	esi, OFFSET FLAT:.str.178
	mov	edx, 5
	mov	rsp, rsp
	call	dcgettext
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rsp + 0x178]
	nop	
	mov	rsi, qword ptr [rcx + rbx*8]
	mov	rsp, rsp
	mov	rdi, rax
	lea	rsi, [rsi]
	call	sort_die
.label_142:
	lea	rsi, [rsi]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.63
	mov	edx, 5
	nop	
	call	dcgettext
	mov	rbp, rax
	nop	
	mov	rax, qword ptr [rsp + 0x178]
	mov	rsi, qword ptr [rax + 8]
	mov	rsp, rsp
	mov	edi, 4
	lea	rsi, [rsi]
	call	quotearg_style
	mov	rcx, rax
	movsx	r8d, bl
	mov	rsp, rsp
	mov	edi, 2
	mov	rbp, rbp
	xor	esi, esi
	xor	eax, eax
	mov	rbp, rbp
	mov	rdx, rbp
	call	error
.label_144:
	lea	rdi, [rdi]
	mov	byte ptr [byte ptr [rip + main.opts.64]],  bl
	mov	rsp, rsp
	mov	edi, OFFSET FLAT:main.opts.64
	lea	rsi, [rsi]
	call	incompatible_options
.label_312:
	mov	rsp, rsp
	test	al, al
	jne	.label_152
	mov	al, 0x6f
.label_152:
	mov	byte ptr [byte ptr [rip + main.opts]],  al
	mov	edi, OFFSET FLAT:main.opts
	call	incompatible_options
.label_81:
	xor	edi, edi
	lea	rdi, [rdi]
	mov	esi, OFFSET FLAT:.str.142
	lea	rdi, [rdi]
	jmp	.label_158
.label_110:
	mov	rsp, rsp
	xor	edi, edi
	nop	
	mov	esi, OFFSET FLAT:.str.65
.label_158:
	mov	edx, 5
	lea	rsi, [rsi]
	call	dcgettext
	mov	rdi, rax
	mov	rsi, qword ptr [rsp + 0x200]
	mov	rbp, rbp
	call	sort_die
.label_302:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.142
	lea	rsi, [rsi]
	mov	edx, 5
	call	dcgettext
	mov	rdi, rax
	mov	rbp, rbp
	mov	rsi, rbp
	call	sort_die
.label_103:
	mov	rsp, rsp
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.65
	mov	edx, 5
	call	dcgettext
	lea	rsi, [rsi]
	mov	esi, OFFSET FLAT:.str.54
	lea	rsi, [rsi]
	mov	rdi, rax
	call	sort_die
.label_118:
	test	rax, rax
	je	.label_105
.label_51:
	movzx	edx, word ptr [rax + 0x32]
	movzx	esi, dl
	mov	ecx, dword ptr [rax + 0x34]
	movzx	edi, cl
	add	edi, esi
	mov	rsp, rsp
	movzx	esi, ch
	lea	rsi, [rsi]
	add	esi, edi
	nop	
	shr	ecx, 0x10
	movzx	edi, cl
	lea	rdi, [rdi]
	add	edi, esi
	shr	edx, 8
	nop	
	or	dl, byte ptr [rax + 0x38]
	mov	rcx, qword ptr [rax + 0x20]
	test	rcx, rcx
	setne	bl
	or	bl, dl
	nop	
	movzx	edx, bl
	add	edx, edi
	mov	rbp, rbp
	cmp	edx, 2
	nop	
	jae	.label_176
	mov	rax, qword ptr [rax + 0x40]
	jmp	.label_118
.label_176:
	nop	
	mov	byte ptr [rax + 0x37], 0
	lea	rsi, [rsi]
	mov	word ptr [rax + 0x30], 0
	xor	edx, edx
	lea	rsi, [rsi]
	test	dl, dl
	lea	rdi, [rdi]
	jne	.label_188
	mov	dl, 1
	test	dl, dl
	lea	rdi, [rdi]
	jne	.label_191
.label_188:
	mov	byte ptr [rsp + 0x70], 0x62
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rax + 0x20]
	mov	rbp, rbp
	lea	rdx, [rsp + 0x71]
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x180], rdx
.label_191:
	nop	
	mov	edx, OFFSET FLAT:nondictionary
	cmp	rcx, rdx
	jne	.label_108
	mov	rbp, rbp
	mov	rcx, qword ptr [rsp + 0x180]
	mov	byte ptr [rcx], 0x64
	lea	rsi, [rsi]
	inc	rcx
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x180], rcx
.label_108:
	cmp	qword ptr [rax + 0x28], 0
	lea	rdi, [rdi]
	je	.label_153
	mov	rsp, rsp
	mov	rcx, qword ptr [rsp + 0x180]
	mov	rbp, rbp
	mov	byte ptr [rcx], 0x66
	nop	
	inc	rcx
	mov	qword ptr [rsp + 0x180], rcx
.label_153:
	mov	rbp, rbp
	mov	cx, word ptr [rax + 0x34]
	mov	rsp, rsp
	test	cl, cl
	jne	.label_208
	shr	ecx, 8
	mov	rbp, rbp
	jmp	.label_210
.label_208:
	nop	
	mov	rcx, qword ptr [rsp + 0x180]
	mov	byte ptr [rcx], 0x67
	inc	rcx
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x180], rcx
	nop	
	mov	cl, byte ptr [rax + 0x35]
.label_210:
	test	cl, cl
	mov	rbp, rbp
	je	.label_216
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rsp + 0x180]
	mov	byte ptr [rcx], 0x68
	lea	rdi, [rdi]
	inc	rcx
	mov	qword ptr [rsp + 0x180], rcx
.label_216:
	lea	rdi, [rdi]
	mov	ecx, OFFSET FLAT:nonprinting
	cmp	qword ptr [rax + 0x20], rcx
	jne	.label_222
	nop	
	mov	rcx, qword ptr [rsp + 0x180]
	mov	byte ptr [rcx], 0x69
	inc	rcx
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x180], rcx
.label_222:
	nop	
	cmp	byte ptr [rax + 0x36], 0
	je	.label_232
	nop	
	mov	rcx, qword ptr [rsp + 0x180]
	mov	rbp, rbp
	mov	byte ptr [rcx], 0x4d
	nop	
	inc	rcx
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x180], rcx
.label_232:
	mov	cx, word ptr [rax + 0x32]
	nop	
	test	cl, cl
	mov	rsp, rsp
	jne	.label_169
	mov	rbp, rbp
	shr	ecx, 8
	jmp	.label_237
.label_169:
	mov	rsp, rsp
	mov	rcx, qword ptr [rsp + 0x180]
	mov	byte ptr [rcx], 0x6e
	inc	rcx
	mov	qword ptr [rsp + 0x180], rcx
	mov	cl, byte ptr [rax + 0x33]
.label_237:
	mov	rbp, rbp
	test	cl, cl
	je	.label_239
	mov	rcx, qword ptr [rsp + 0x180]
	nop	
	mov	byte ptr [rcx], 0x52
	inc	rcx
	mov	qword ptr [rsp + 0x180], rcx
.label_239:
	cmp	byte ptr [rax + 0x37], 0
	lea	rdi, [rdi]
	je	.label_245
	mov	rcx, qword ptr [rsp + 0x180]
	mov	byte ptr [rcx], 0x72
	mov	rsp, rsp
	inc	rcx
	mov	qword ptr [rsp + 0x180], rcx
.label_245:
	cmp	byte ptr [rax + 0x38], 0
	mov	rbp, rbp
	je	.label_248
	mov	rax, qword ptr [rsp + 0x180]
	lea	rdi, [rdi]
	mov	byte ptr [rax], 0x56
	lea	rsi, [rsi]
	inc	rax
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x180], rax
.label_248:
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 0x180]
	mov	byte ptr [rax], 0
	lea	rdi, [rsp + 0x70]
	lea	rdi, [rdi]
	call	incompatible_options
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x407610

	.globl sighandler
	.type sighandler, @function
sighandler:
	mov	rsp, rsp
	push	rbp
	push	rbx
	push	rax
	nop	
	mov	ebp, edi
	lea	rdi, [rdi]
	mov	rbx,  qword ptr [word ptr [rip + temphead]]
	mov	rsp, rsp
	jmp	.label_327
	nop	dword ptr [rax + rax]
.label_328:
	lea	rsi, [rsi]
	lea	rdi, [rbx + 0xd]
	call	unlink
	mov	rsp, rsp
	mov	rbx, qword ptr [rbx]
.label_327:
	test	rbx, rbx
	mov	rsp, rsp
	jne	.label_328
	mov	qword ptr [word ptr [rip + temphead]],  0
	xor	esi, esi
	mov	edi, ebp
	call	signal
	lea	rsi, [rsi]
	mov	edi, ebp
	add	rsp, 8
	pop	rbx
	pop	rbp
	mov	rbp, rbp
	jmp	raise
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x407680

	.globl exit_cleanup
	.type exit_cleanup, @function
exit_cleanup:
	lea	rdi, [rdi]
	push	r14
	push	rbx
	lea	rsi, [rsi]
	sub	rsp, 0x88
	lea	rdi, [rdi]
	cmp	qword ptr [word ptr [rip + temphead]],  0
	lea	rdi, [rdi]
	je	.label_329
	lea	rdi, [rdi]
	lea	r14, [rsp + 8]
	xor	edi, edi
	lea	rdi, [rdi]
	mov	esi, OFFSET FLAT:caught_signals
	lea	rdi, [rdi]
	mov	rdx, r14
	mov	rsp, rsp
	call	pthread_sigmask
	nop	
	test	eax, eax
	mov	rbp, rbp
	sete	byte ptr [rsp]
	mov	rsp, rsp
	mov	rbx,  qword ptr [word ptr [rip + temphead]]
	mov	rbp, rbp
	jmp	.label_330
	nop	dword ptr [rax]
.label_331:
	lea	rdi, [rbx + 0xd]
	lea	rsi, [rsi]
	call	unlink
	mov	rbx, qword ptr [rbx]
.label_330:
	test	rbx, rbx
	mov	rsp, rsp
	jne	.label_331
	lea	rsi, [rsi]
	mov	qword ptr [word ptr [rip + temphead]],  0
	lea	rdi, [rdi]
	cmp	byte ptr [rsp], 0
	je	.label_329
	mov	rsp, rsp
	mov	edi, 2
	xor	edx, edx
	lea	rdi, [rdi]
	mov	rsi, r14
	mov	rbp, rbp
	call	pthread_sigmask
.label_329:
	mov	rbp, rbp
	call	close_stdout
	mov	rsp, rsp
	add	rsp, 0x88
	pop	rbx
	pop	r14
	lea	rdi, [rdi]
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x407740

	.globl parse_field_count
	.type parse_field_count, @function
parse_field_count:
	lea	rsi, [rsi]
	push	r15
	lea	rdi, [rdi]
	push	r14
	mov	rsp, rsp
	push	r12
	lea	rdi, [rdi]
	push	rbx
	sub	rsp, 0x18
	nop	
	mov	r14, rdx
	mov	rbx, rsi
	nop	
	mov	r15, rdi
	lea	rsi, [rsp + 0x10]
	lea	rcx, [rsp + 8]
	nop	
	mov	edx, 0xa
	lea	rsi, [rsi]
	mov	r8d, OFFSET FLAT:.str_1
	mov	rsp, rsp
	call	xstrtoumax
	mov	rbp, rbp
	mov	ecx, eax
	mov	rsp, rsp
	cmp	eax, 4
	ja	.label_332
	jmp	qword ptr [word ptr [+ (rcx * 8) + label_334]]
.label_1808:
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 8]
	nop	
	mov	qword ptr [rbx], rax
	jmp	.label_332
.label_1809:
	lea	rdi, [rdi]
	mov	qword ptr [rbx], -1
.label_332:
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 0x10]
.label_333:
	mov	rsp, rsp
	add	rsp, 0x18
	mov	rbp, rbp
	pop	rbx
	lea	rsi, [rsi]
	pop	r12
	pop	r14
	mov	rsp, rsp
	pop	r15
	ret	
.label_1810:
	nop	
	xor	eax, eax
	lea	rdi, [rdi]
	test	r14, r14
	mov	rsp, rsp
	je	.label_333
	xor	edi, edi
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.124
	mov	edx, 5
	call	dcgettext
	mov	r12, rax
	lea	rsi, [rsi]
	xor	edi, edi
	lea	rdi, [rdi]
	mov	edx, 5
	mov	rsi, r14
	call	dcgettext
	mov	r14, rax
	nop	
	mov	rdi, r15
	lea	rsi, [rsi]
	call	quote
	mov	rbx, rax
	mov	edi, 2
	mov	rbp, rbp
	xor	esi, esi
	lea	rsi, [rsi]
	xor	eax, eax
	mov	rbp, rbp
	mov	rdx, r12
	mov	rcx, r14
	lea	rdi, [rdi]
	mov	r8, rbx
	call	error
	nop	
	.section	.text
	.align	16
	#Procedure 0x407840

	.globl badfieldspec
	.type badfieldspec, @function
badfieldspec:
	push	r15
	push	r14
	push	r12
	lea	rdi, [rdi]
	push	rbx
	push	rax
	lea	rdi, [rdi]
	mov	rbx, rsi
	mov	rsp, rsp
	mov	r14, rdi
	xor	edi, edi
	mov	rbp, rbp
	mov	esi, OFFSET FLAT:.str.125
	mov	edx, 5
	mov	rbp, rbp
	call	dcgettext
	mov	rsp, rsp
	mov	r15, rax
	lea	rsi, [rsi]
	xor	edi, edi
	mov	edx, 5
	lea	rsi, [rsi]
	mov	rsi, rbx
	call	dcgettext
	mov	rbp, rbp
	mov	r12, rax
	mov	rsp, rsp
	mov	rdi, r14
	mov	rbp, rbp
	call	quote
	nop	
	mov	rbx, rax
	mov	edi, 2
	xor	esi, esi
	xor	eax, eax
	mov	rsp, rsp
	mov	rdx, r15
	mov	rsp, rsp
	mov	rcx, r12
	mov	r8, rbx
	call	error
	nop	
	.section	.text
	.align	16
	#Procedure 0x4078c0

	.globl incompatible_options
	.type incompatible_options, @function
incompatible_options:
	push	rbx
	mov	rbx, rdi
	lea	rsi, [rsi]
	xor	edi, edi
	nop	
	mov	esi, OFFSET FLAT:.str.134
	lea	rdi, [rdi]
	mov	edx, 5
	call	dcgettext
	mov	rbp, rbp
	mov	rcx, rax
	lea	rsi, [rsi]
	mov	edi, 2
	xor	esi, esi
	mov	rbp, rbp
	xor	eax, eax
	mov	rsp, rsp
	mov	rdx, rcx
	nop	
	mov	rcx, rbx
	lea	rdi, [rdi]
	call	error
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x407910

	.globl xfclose
	.type xfclose, @function
xfclose:
	mov	rsp, rsp
	push	r14
	mov	rsp, rsp
	push	rbx
	push	rax
	mov	r14, rsi
	mov	rbx, rdi
	call	fileno
	cmp	eax, 1
	je	.label_336
	mov	rsp, rsp
	test	eax, eax
	jne	.label_337
	test	byte ptr [rbx], 0x10
	je	.label_338
	nop	
	mov	rdi, rbx
	lea	rdi, [rdi]
	add	rsp, 8
	pop	rbx
	lea	rdi, [rdi]
	pop	r14
	nop	
	jmp	clearerr_unlocked
.label_336:
	lea	rsi, [rsi]
	mov	rdi, rbx
	nop	
	call	fflush_unlocked
	lea	rsi, [rsi]
	test	eax, eax
	je	.label_338
	xor	edi, edi
	lea	rsi, [rsi]
	mov	esi, OFFSET FLAT:.str.145
	lea	rdi, [rdi]
	jmp	.label_335
.label_337:
	nop	
	mov	rdi, rbx
	lea	rdi, [rdi]
	call	rpl_fclose
	lea	rsi, [rsi]
	test	eax, eax
	jne	.label_339
.label_338:
	lea	rsi, [rsi]
	add	rsp, 8
	mov	rsp, rsp
	pop	rbx
	lea	rsi, [rsi]
	pop	r14
	ret	
.label_339:
	mov	rbp, rbp
	xor	edi, edi
	mov	rbp, rbp
	mov	esi, OFFSET FLAT:.str.65
.label_335:
	mov	edx, 5
	call	dcgettext
	nop	
	mov	rdi, rax
	mov	rbp, rbp
	mov	rsi, r14
	call	sort_die
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4079c0

	.globl merge
	.type merge, @function
merge:
	nop	
	push	rbp
	nop	
	push	r15
	lea	rdi, [rdi]
	push	r14
	push	r13
	push	r12
	push	rbx
	lea	rdi, [rdi]
	sub	rsp, 0xe8
	mov	qword ptr [rsp + 8], rcx
	mov	rbx, rdx
	lea	rsi, [rsi]
	mov	r15, rsi
	mov	rbp, rbp
	mov	r12, rdi
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x30], r12
	lea	rsi, [rsi]
	mov	edi,  dword ptr [dword ptr [rip + nmerge]]
	lea	rsi, [rsi]
	cmp	rdi, rbx
	lea	rdi, [rdi]
	jae	.label_359
	mov	rbp, rbp
	lea	rax, [r12 + 8]
	mov	qword ptr [rsp + 0x50], rax
	nop	word ptr [rax + rax]
.label_364:
	nop	
	mov	qword ptr [rsp + 0x40], rbx
	mov	qword ptr [rsp + 0x20], r15
	mov	ecx, edi
	nop	
	cmp	rcx, rbx
	mov	r15, qword ptr [rsp + 0x50]
	mov	r14, r12
	mov	r12d, 0
	lea	rsi, [rsi]
	mov	r13d, 0
	mov	rbp, rbx
	nop	
	ja	.label_345
	nop	word ptr cs:[rax + rax]
.label_361:
	mov	qword ptr [rsp + 0x18], r12
	mov	qword ptr [rsp + 0x28], r13
	xor	esi, esi
	mov	rbp, rbp
	lea	rdi, [rsp + 0x10]
	call	maybe_create_temp
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x48], rax
	lea	rsi, [rsi]
	mov	rbx, r12
	mov	rbp, rbp
	shl	rbx, 4
	add	rbx, r14
	mov	rbp, rbp
	mov	r13d,  dword ptr [dword ptr [rip + nmerge]]
	lea	rsi, [rsi]
	mov	r14, qword ptr [rsp + 0x10]
	mov	rdi, rbx
	mov	rsi, r13
	lea	rdx, [rsp + 0x58]
	call	open_input_files
	mov	rbp, rax
	lea	rdi, [rdi]
	cmp	rbp, r13
	mov	rbp, rbp
	jae	.label_353
	mov	rbp, rbp
	cmp	rbp, 1
	lea	rsi, [rsi]
	jbe	.label_360
.label_353:
	nop	
	mov	r12, qword ptr [rsp + 0x48]
	add	r12, 0xd
	mov	rcx, r14
	mov	rbp, rbp
	mov	r14, qword ptr [rsp + 0x20]
	cmp	r14, r13
	cmovb	r13, r14
	lea	rsi, [rsi]
	mov	r9, qword ptr [rsp + 0x58]
	nop	
	mov	rdi, rbx
	lea	rdi, [rdi]
	mov	rsi, r13
	mov	rdx, rbp
	mov	rsp, rsp
	mov	r8, r12
	call	mergefps
	cmp	r14, rbp
	mov	rax, rbp
	cmovb	rax, r14
	sub	r14, rax
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x20], r14
	mov	qword ptr [r15 - 8], r12
	lea	rsi, [rsi]
	mov	r14, qword ptr [rsp + 0x30]
	mov	rax, qword ptr [rsp + 0x48]
	mov	qword ptr [r15], rax
	mov	r12, qword ptr [rsp + 0x18]
	add	r12, rbp
	nop	
	mov	r13, qword ptr [rsp + 0x28]
	inc	r13
	mov	edi,  dword ptr [dword ptr [rip + nmerge]]
	mov	rbx, qword ptr [rsp + 0x40]
	mov	rbp, rbp
	mov	rbp, rbx
	mov	rsp, rsp
	sub	rbp, r12
	add	r15, 0x10
	cmp	rdi, rbp
	mov	rbp, rbp
	mov	rcx, rdi
	jbe	.label_361
.label_345:
	mov	qword ptr [rsp + 0x18], r12
	xor	edx, edx
	mov	rax, r13
	mov	rsp, rsp
	div	rcx
	sub	rcx, rdx
	mov	rbp, rbp
	sub	rbp, rcx
	mov	rsp, rsp
	jbe	.label_368
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x40], rbx
	lea	rsi, [rsi]
	inc	rbp
	xor	esi, esi
	nop	
	lea	rdi, [rsp + 0x10]
	nop	
	call	maybe_create_temp
	mov	rbx, rax
	mov	r12, qword ptr [rsp + 0x18]
	shl	r12, 4
	nop	
	add	r12, qword ptr [rsp + 0x30]
	mov	rax, qword ptr [rsp + 0x10]
	mov	qword ptr [rsp + 0x48], rax
	mov	rsp, rsp
	mov	rdi, r12
	mov	rsi, rbp
	mov	rsp, rsp
	lea	rdx, [rsp + 0x58]
	call	open_input_files
	mov	r14, rax
	cmp	r14, rbp
	lea	rdi, [rdi]
	jae	.label_363
	cmp	r14, 1
	jbe	.label_366
.label_363:
	mov	qword ptr [rsp + 0x28], rbx
	mov	rsp, rsp
	add	rbx, 0xd
	mov	r15, qword ptr [rsp + 0x20]
	nop	
	cmp	r15, rbp
	lea	rdi, [rdi]
	cmovb	rbp, r15
	mov	r9, qword ptr [rsp + 0x58]
	lea	rdi, [rdi]
	mov	rdi, r12
	nop	
	mov	rsi, rbp
	lea	rsi, [rsi]
	mov	rdx, r14
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rsp + 0x48]
	mov	r8, rbx
	mov	rsp, rsp
	call	mergefps
	cmp	r15, r14
	mov	rax, r14
	lea	rdi, [rdi]
	cmovb	rax, r15
	sub	r15, rax
	mov	rsp, rsp
	mov	rax, r13
	shl	rax, 4
	mov	r12, qword ptr [rsp + 0x30]
	mov	rsp, rsp
	mov	qword ptr [r12 + rax], rbx
	inc	r13
	mov	rbp, rbp
	mov	rcx, qword ptr [rsp + 0x28]
	mov	rsp, rsp
	mov	qword ptr [r12 + rax + 8], rcx
	mov	rsp, rsp
	mov	rbp, qword ptr [rsp + 0x18]
	lea	rsi, [rsi]
	add	rbp, r14
	mov	rbp, rbp
	mov	r14d,  dword ptr [dword ptr [rip + nmerge]]
	lea	rsi, [rsi]
	mov	rbx, qword ptr [rsp + 0x40]
	jmp	.label_357
	nop	word ptr cs:[rax + rax]
.label_368:
	lea	rdi, [rdi]
	mov	r12, qword ptr [rsp + 0x30]
	mov	r15, qword ptr [rsp + 0x20]
	mov	rbp, qword ptr [rsp + 0x18]
	mov	r14, rdi
.label_357:
	mov	rdi, r13
	shl	rdi, 4
	add	rdi, r12
	lea	rsi, [rsi]
	mov	rsi, rbp
	mov	rbp, rbp
	shl	rsi, 4
	lea	rsi, [rsi]
	add	rsi, r12
	mov	rdx, rbx
	sub	rdx, rbp
	nop	
	shl	rdx, 4
	call	memmove
	mov	rsp, rsp
	add	r15, r13
	add	r13, rbx
	lea	rdi, [rdi]
	sub	r13, rbp
	mov	rbp, rbp
	mov	eax, r14d
	mov	rbp, rbp
	cmp	rax, r13
	mov	rbp, rbp
	mov	rbx, r13
	lea	rdi, [rdi]
	mov	rdi, r14
	jb	.label_364
	lea	rdi, [rdi]
	jmp	.label_344
.label_359:
	mov	r13, rbx
.label_344:
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x30], r12
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x20], r15
	cmp	r15, r13
	nop	
	jae	.label_346
	mov	r14, qword ptr [rsp + 0x20]
	mov	r15, r14
	lea	rdi, [rdi]
	shl	r15, 4
	add	r15, qword ptr [rsp + 0x30]
	lea	rdi, [rdi]
	xor	ebx, ebx
	nop	word ptr [rax + rax]
.label_350:
	nop	
	mov	rsi, qword ptr [r15]
	movzx	eax, byte ptr [rsi]
	mov	r12d, 0x2d
	lea	rdi, [rdi]
	sub	r12d, eax
	jne	.label_362
	movzx	r12d, byte ptr [rsi + 1]
	lea	rsi, [rsi]
	neg	r12d
.label_362:
	nop	
	cmp	qword ptr [rsp + 8], 0
	lea	rsi, [rsi]
	je	.label_341
	mov	rdi, qword ptr [rsp + 8]
	nop	
	call	strcmp
	mov	rsp, rsp
	test	r12d, r12d
	je	.label_341
	test	eax, eax
	mov	rbp, rbp
	je	.label_354
.label_341:
	mov	ecx,  dword ptr [dword ptr [rip + get_outstatus.outstat_errno]]
	nop	
	test	ecx, ecx
	lea	rsi, [rsi]
	jne	.label_348
	mov	edi, 1
	lea	rsi, [rsi]
	mov	esi, 1
	mov	edx, OFFSET FLAT:get_outstatus.outstat
	call	__fxstat
	mov	rsp, rsp
	mov	ecx, 0xffffffff
	test	eax, eax
	je	.label_358
	call	__errno_location
	mov	ecx, dword ptr [rax]
.label_358:
	lea	rsi, [rsi]
	mov	dword ptr [dword ptr [rip + get_outstatus.outstat_errno]],  ecx
.label_348:
	test	ecx, ecx
	lea	rsi, [rsi]
	mov	ebp, 0
	mov	eax, OFFSET FLAT:get_outstatus.outstat
	cmovs	rbp, rax
	lea	rsi, [rsi]
	jns	.label_346
	test	r12d, r12d
	nop	
	je	.label_369
	lea	rsi, [rsi]
	mov	rsi, qword ptr [r15]
	mov	edi, 1
	lea	rdx, [rsp + 0x58]
	call	__xstat
	jmp	.label_370
	nop	word ptr cs:[rax + rax]
.label_369:
	mov	edi, 1
	nop	
	xor	esi, esi
	lea	rsi, [rsi]
	lea	rdx, [rsp + 0x58]
	lea	rsi, [rsi]
	call	__fxstat
.label_370:
	test	eax, eax
	jne	.label_355
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 0x60]
	lea	rdi, [rdi]
	cmp	rax, qword ptr [rbp + 8]
	jne	.label_355
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp + 0x58]
	cmp	rax, qword ptr [rbp]
	jne	.label_355
	nop	word ptr [rax + rax]
.label_354:
	test	rbx, rbx
	jne	.label_347
	mov	rsp, rsp
	xor	esi, esi
	mov	rbp, rbp
	lea	rdi, [rsp + 0x38]
	call	maybe_create_temp
	lea	rsi, [rsi]
	mov	rbx, rax
	mov	rsp, rsp
	mov	r12, qword ptr [rsp + 0x38]
	lea	rdi, [rdi]
	mov	esi, 1
	mov	rdi, r15
	mov	rsp, rsp
	lea	rdx, [rsp + 0x10]
	call	open_input_files
	lea	rsi, [rsi]
	test	rax, rax
	lea	rsi, [rsi]
	je	.label_365
	mov	rbp, rbp
	mov	r8, rbx
	lea	rsi, [rsi]
	add	r8, 0xd
	mov	r9, qword ptr [rsp + 0x10]
	mov	rsp, rsp
	xor	esi, esi
	mov	rsp, rsp
	mov	rdi, r15
	lea	rdi, [rdi]
	mov	rdx, rax
	nop	
	mov	rcx, r12
	mov	rbp, rbp
	call	mergefps
.label_347:
	lea	rax, [rbx + 0xd]
	mov	qword ptr [r15], rax
	mov	rsp, rsp
	mov	qword ptr [r15 + 8], rbx
.label_355:
	lea	rsi, [rsi]
	inc	r14
	add	r15, 0x10
	cmp	r14, r13
	jb	.label_350
.label_346:
	mov	r12, qword ptr [rsp + 0x30]
	lea	rax, [r12 + 0x10]
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x40], rax
	jmp	.label_343
	nop	word ptr cs:[rax + rax]
.label_356:
	mov	r12, qword ptr [rsp + 0x20]
	mov	rsp, rsp
	cmp	r12, rbp
	mov	rbp, rbp
	mov	rsi, rbp
	mov	rsp, rsp
	cmovb	rsi, r12
	mov	qword ptr [rsp + 0x48], rsi
	mov	rcx, qword ptr [rsp + 0x10]
	mov	r8, rbx
	add	r8, 0xd
	mov	qword ptr [rsp + 0x18], r8
	mov	rdi, qword ptr [rsp + 0x30]
	mov	rdx, rbp
	lea	rsi, [rsi]
	mov	r9, r15
	call	mergefps
	mov	rax, qword ptr [rsp + 0x30]
	mov	rsp, rsp
	mov	rcx, qword ptr [rsp + 0x18]
	mov	rsp, rsp
	mov	qword ptr [rax], rcx
	mov	rbp, rbp
	mov	r15, rax
	mov	qword ptr [r15 + 8], rbx
	mov	rbx, qword ptr [rsp + 0x28]
	mov	rdx, rbx
	mov	rsp, rsp
	sub	rdx, rbp
	lea	rsi, [rsi]
	shl	rdx, 4
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rsp + 0x40]
	mov	rsi, r13
	call	memmove
	inc	r12
	nop	
	sub	r12, qword ptr [rsp + 0x48]
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x20], r12
	mov	rsp, rsp
	mov	r12, r15
	lea	rdi, [rdi]
	mov	r13, rbx
	add	r13, 2
	sub	r13, r14
.label_343:
	mov	rsp, rsp
	mov	rdi, r12
	mov	rsi, r13
	lea	rdx, [rsp + 0x58]
	mov	rsp, rsp
	call	open_input_files
	mov	rbp, rax
	nop	
	cmp	rbp, r13
	lea	rdi, [rdi]
	jne	.label_367
	mov	esi, OFFSET FLAT:.str.166
	mov	rdi, qword ptr [rsp + 8]
	call	stream_open
	mov	rbp, rbp
	test	rax, rax
	jne	.label_342
	lea	rsi, [rsi]
	call	__errno_location
	mov	rsp, rsp
	cmp	r13, 3
	nop	
	mov	qword ptr [rsp + 0x28], r13
	mov	rsp, rsp
	jb	.label_349
	cmp	dword ptr [rax], 0x18
	je	.label_352
	nop	
	jmp	.label_349
	nop	dword ptr [rax]
.label_367:
	mov	qword ptr [rsp + 0x28], r13
	nop	
	cmp	rbp, 2
	mov	rbp, rbp
	jbe	.label_340
.label_352:
	mov	r15, qword ptr [rsp + 0x58]
	lea	rsi, [rsi]
	mov	r13, rbp
	mov	rsp, rsp
	shl	r13, 4
	add	r13, r12
	lea	rdi, [rdi]
	lea	r12, [rsp + 0x10]
.label_351:
	mov	r14, rbp
	mov	rbp, rbp
	lea	rbp, [r14 - 1]
	mov	rdi, qword ptr [r15 + r14*8 - 8]
	mov	rbp, rbp
	mov	rsi, qword ptr [r13 - 0x10]
	mov	rbp, rbp
	add	r13, -0x10
	mov	rbp, rbp
	call	xfclose
	cmp	rbp, 2
	seta	al
	mov	rbp, rbp
	movzx	esi, al
	mov	rdi, r12
	nop	
	call	maybe_create_temp
	mov	rbx, rax
	lea	rsi, [rsi]
	test	rbx, rbx
	lea	rsi, [rsi]
	je	.label_351
	nop	
	jmp	.label_356
.label_342:
	mov	r9, qword ptr [rsp + 0x58]
	mov	rdi, r12
	mov	rsi, qword ptr [rsp + 0x20]
	mov	rdx, r13
	mov	rcx, rax
	mov	r8, qword ptr [rsp + 8]
	call	mergefps
	add	rsp, 0xe8
	pop	rbx
	lea	rdi, [rdi]
	pop	r12
	nop	
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_360:
	xor	edi, edi
	lea	rsi, [rsi]
	mov	esi, OFFSET FLAT:.str.142
	mov	edx, 5
	mov	rbp, rbp
	call	dcgettext
	mov	rsp, rsp
	shl	rbp, 4
	mov	rsi, qword ptr [rbx + rbp]
	mov	rdi, rax
	mov	rbp, rbp
	call	sort_die
.label_340:
	lea	rdi, [rdi]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.142
	mov	edx, 5
	call	dcgettext
	shl	rbp, 4
	nop	
	mov	rsi, qword ptr [r12 + rbp]
	lea	rsi, [rsi]
	mov	rdi, rax
	nop	
	call	sort_die
.label_349:
	mov	rsp, rsp
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.142
	lea	rdi, [rdi]
	mov	edx, 5
	mov	rsp, rsp
	call	dcgettext
	mov	rdi, rax
	mov	rsi, qword ptr [rsp + 8]
	call	sort_die
.label_366:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.142
	mov	edx, 5
	mov	rsp, rsp
	call	dcgettext
	mov	rbp, rbp
	shl	r14, 4
	nop	
	mov	rsi, qword ptr [r12 + r14]
	mov	rbp, rbp
	mov	rdi, rax
	nop	
	call	sort_die
.label_365:
	xor	edi, edi
	lea	rsi, [rsi]
	mov	esi, OFFSET FLAT:.str.142
	mov	rbp, rbp
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [r15]
	nop	
	mov	rdi, rax
	lea	rsi, [rsi]
	call	sort_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4081d0

	.globl sort_die
	.type sort_die, @function
sort_die:
	push	rbp
	push	r14
	push	rbx
	mov	rbx, rsi
	mov	r14, rdi
	mov	rsp, rsp
	call	__errno_location
	mov	ebp, dword ptr [rax]
	test	rbx, rbx
	lea	rdi, [rdi]
	jne	.label_371
	mov	rsp, rsp
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.180
	mov	edx, 5
	lea	rsi, [rsi]
	call	dcgettext
	mov	rbx, rax
.label_371:
	lea	rdi, [rdi]
	xor	edi, edi
	lea	rsi, [rsi]
	mov	esi, 3
	mov	rdx, rbx
	call	quotearg_n_style_colon
	mov	rbx, rax
	mov	edi, 2
	mov	rsp, rsp
	mov	edx, OFFSET FLAT:.str.1_0
	xor	eax, eax
	nop	
	mov	esi, ebp
	lea	rsi, [rsi]
	mov	rcx, r14
	mov	r8, rbx
	mov	rsp, rsp
	call	error
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x408250

	.globl struct_month_cmp
	.type struct_month_cmp, @function
struct_month_cmp:
	mov	rdi, qword ptr [rdi]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rsi]
	lea	rdi, [rdi]
	jmp	strcmp
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x408270

	.globl stream_open
	.type stream_open, @function
stream_open:
	push	rbp
	push	r14
	lea	rsi, [rsi]
	push	rbx
	nop	
	mov	rbp, rsi
	mov	rbp, rbp
	mov	r14, rdi
	movzx	eax, byte ptr [rbp]
	cmp	eax, 0x77
	nop	
	je	.label_382
	mov	rbp, rbp
	movzx	eax, al
	nop	
	cmp	eax, 0x72
	nop	
	jne	.label_374
	movzx	eax, byte ptr [r14]
	cmp	eax, 0x2d
	mov	rbp, rbp
	jne	.label_377
	cmp	byte ptr [r14 + 1], 0
	je	.label_381
.label_377:
	mov	rsp, rsp
	xor	ebx, ebx
	lea	rdi, [rdi]
	mov	esi, 0x80000
	mov	rbp, rbp
	xor	eax, eax
	mov	rdi, r14
	mov	rsp, rsp
	call	open
	test	eax, eax
	mov	rbp, rbp
	js	.label_376
	mov	edi, eax
	nop	
	mov	rsi, rbp
	nop	
	call	fdopen
	mov	rbx, rax
	mov	rsp, rsp
	jmp	.label_376
.label_382:
	lea	rdi, [rdi]
	test	r14, r14
	je	.label_375
	nop	
	mov	edi, 1
	mov	rbp, rbp
	xor	esi, esi
	call	ftruncate
	test	eax, eax
	mov	rbp, rbp
	je	.label_375
	lea	rdi, [rdi]
	call	__errno_location
	mov	rbx, rax
	mov	ebp, dword ptr [rbx]
	nop	
	mov	ecx,  dword ptr [dword ptr [rip + get_outstatus.outstat_errno]]
	mov	rbp, rbp
	test	ecx, ecx
	jne	.label_378
	nop	
	mov	edi, 1
	lea	rsi, [rsi]
	mov	esi, 1
	mov	edx, OFFSET FLAT:get_outstatus.outstat
	call	__fxstat
	nop	
	mov	ecx, 0xffffffff
	test	eax, eax
	je	.label_373
	lea	rdi, [rdi]
	mov	ecx, dword ptr [rbx]
.label_373:
	lea	rdi, [rdi]
	mov	dword ptr [dword ptr [rip + get_outstatus.outstat_errno]],  ecx
.label_378:
	test	ecx, ecx
	mov	rbp, rbp
	jns	.label_379
	lea	rsi, [rsi]
	mov	eax, 0xf000
	lea	rsi, [rsi]
	and	eax,  dword ptr [dword ptr [rip + label_380]]
	cmp	eax, 0x8000
	lea	rsi, [rsi]
	je	.label_379
.label_375:
	mov	rbx,  qword ptr [word ptr [rip + stdout]]
	jmp	.label_372
.label_381:
	nop	
	mov	byte ptr [byte ptr [rip + have_read_stdin]],  1
	mov	rbx,  qword ptr [word ptr [rip + stdin]]
.label_376:
	mov	esi, 2
	mov	rbp, rbp
	mov	rdi, rbx
	nop	
	call	fadvise
.label_372:
	mov	rbp, rbp
	mov	rax, rbx
	pop	rbx
	pop	r14
	mov	rsp, rsp
	pop	rbp
	mov	rsp, rsp
	ret	
.label_374:
	mov	edi, OFFSET FLAT:.str.144
	mov	esi, OFFSET FLAT:.str.29
	mov	rbp, rbp
	mov	edx, 0x3d6
	mov	rsp, rsp
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.stream_open
	call	__assert_fail
.label_379:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.143
	mov	edx, 5
	call	dcgettext
	mov	rsp, rsp
	mov	rbx, rax
	xor	edi, edi
	mov	esi, 3
	mov	rdx, r14
	call	quotearg_n_style_colon
	mov	rcx, rax
	nop	
	mov	edi, 2
	xor	eax, eax
	mov	esi, ebp
	mov	rsp, rsp
	mov	rdx, rbx
	lea	rsi, [rsi]
	call	error
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x408420

	.globl fillbuf
	.type fillbuf, @function
fillbuf:
	lea	rsi, [rsi]
	push	rbp
	mov	rsp, rsp
	push	r15
	nop	
	push	r14
	push	r13
	push	r12
	lea	rsi, [rsi]
	push	rbx
	nop	
	sub	rsp, 0x68
	mov	qword ptr [rsp + 0x30], rsi
	mov	r15, rdi
	mov	qword ptr [rsp + 0x18], r15
	lea	rsi, [rsi]
	mov	rbx,  qword ptr [word ptr [rip + keylist]]
	mov	cl,  byte ptr [byte ptr [rip + eolchar]]
	xor	eax, eax
	and	cl, 1
	mov	dword ptr [rsp + 0x3c], 0
	jne	.label_395
	lea	rsi, [rsi]
	mov	cl, 0xa
	mov	dword ptr [rsp + 0x3c], ecx
.label_395:
	nop	
	cmp	byte ptr [r15 + 0x30], 0
	jne	.label_398
	mov	qword ptr [rsp + 0x58], rdx
	mov	rbp, rbp
	mov	rbp, qword ptr [r15 + 0x28]
	mov	r12,  qword ptr [word ptr [rip + merge_buffer_size]]
	lea	rsi, [rsi]
	mov	r8, qword ptr [r15 + 8]
	nop	
	mov	rdx, qword ptr [r15 + 0x20]
	cmp	r8, rdx
	jne	.label_408
	nop	
	lea	rax, [r15 + 0x10]
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x60], rax
	jmp	.label_390
.label_408:
	mov	rbp, rbp
	mov	rdi, qword ptr [r15]
	nop	
	add	r8, rdi
	lea	rdi, [rdi]
	sub	r8, rdx
	mov	rsi, r8
	call	memmove
	lea	rsi, [rsi]
	mov	r8, qword ptr [r15 + 0x20]
	mov	qword ptr [r15 + 8], r8
	lea	rax, [r15 + 0x10]
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x60], rax
	lea	rdi, [rdi]
	mov	qword ptr [r15 + 0x10], 0
.label_390:
	mov	rbp, rbp
	add	r12, -0x22
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x10], rbp
	mov	rax, rbp
	mov	rsp, rsp
	neg	rax
	mov	qword ptr [rsp + 8], rax
	lea	rax, [rbp + 1]
	mov	qword ptr [rsp + 0x20], rax
	lea	rdi, [rdi]
	mov	eax, dword ptr [rsp + 0x3c]
	lea	rsi, [rsi]
	movzx	r13d, al
	mov	rsp, rsp
	mov	dword ptr [rsp + 0x2c], r13d
	mov	rdx, qword ptr [r15]
	mov	r14, qword ptr [r15 + 0x18]
	jmp	.label_404
	nop	dword ptr [rax]
.label_385:
	shl	r14, 5
	mov	rsp, rsp
	mov	rsi, r14
	lea	rsi, [rsi]
	call	xrealloc
	mov	rdx, rax
	mov	rbp, rbp
	mov	qword ptr [r15], rdx
	mov	rsp, rsp
	mov	qword ptr [r15 + 0x18], r14
	mov	r8, qword ptr [r15 + 8]
.label_404:
	mov	rbp, rbp
	add	r8, rdx
	add	r14, rdx
	nop	
	mov	rax, qword ptr [rsp + 0x60]
	mov	rsp, rsp
	mov	rax, qword ptr [rax]
	mov	rcx, rax
	shl	rcx, 5
	mov	rsi, r14
	nop	
	sub	rsi, rcx
	lea	rdi, [rdi]
	mov	rcx, rax
	nop	
	imul	rcx, qword ptr [rsp + 8]
	mov	rbp, rbp
	add	rcx, r14
	mov	rbp, rbp
	sub	rcx, r8
	lea	rdi, [rdi]
	test	rax, rax
	lea	rsi, [rsi]
	je	.label_400
	nop	
	neg	rax
	mov	qword ptr [rsp + 0x50], rsi
	mov	rdx, qword ptr [rsi]
	shl	rax, 5
	add	rdx, qword ptr [r14 + rax + 8]
	mov	rsp, rsp
	jmp	.label_389
	nop	word ptr [rax + rax]
.label_400:
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x50], rsi
.label_389:
	nop	
	mov	qword ptr [rsp], rdx
	mov	rsi, qword ptr [rsp + 0x20]
	lea	rdi, [rdi]
	mov	r14, rcx
	nop	dword ptr [rax + rax]
.label_383:
	nop	
	cmp	rsi, r14
	lea	rsi, [rsi]
	jae	.label_402
	lea	rax, [r14 - 1]
	mov	qword ptr [rsp + 0x40], r14
	xor	edx, edx
	div	rsi
	lea	rsi, [rsi]
	mov	r14, rax
	nop	
	mov	esi, 1
	mov	rsp, rsp
	mov	rdi, r8
	mov	rbp, rbp
	mov	rdx, r14
	mov	rbp, qword ptr [rsp + 0x30]
	nop	
	mov	rcx, rbp
	mov	r15, r8
	call	fread_unlocked
	mov	rbp, rbp
	mov	rdi, r15
	mov	rbp, rbp
	lea	rcx, [rdi + rax]
	cmp	rax, r14
	mov	rsp, rsp
	jne	.label_391
	nop	
	mov	rdx, rcx
	lea	rdi, [rdi]
	mov	r15, qword ptr [rsp]
	mov	r14, qword ptr [rsp + 0x40]
	mov	rsp, rsp
	jmp	.label_393
	nop	
.label_391:
	mov	edx, dword ptr [rbp]
	test	dl, 0x20
	mov	rsp, rsp
	jne	.label_399
	test	dl, 0x10
	mov	rbp, rbp
	mov	r15, qword ptr [rsp]
	mov	r14, qword ptr [rsp + 0x40]
	lea	rsi, [rsi]
	je	.label_384
	mov	rdx, qword ptr [rsp + 0x18]
	mov	byte ptr [rdx + 0x30], 1
	cmp	qword ptr [rdx], rcx
	lea	rsi, [rsi]
	je	.label_407
	mov	rbp, rbp
	cmp	r15, rcx
	mov	rdx, r15
	mov	rsp, rsp
	je	.label_393
	movsx	edx, byte ptr [rcx - 1]
	lea	rsi, [rsi]
	cmp	edx, r13d
	lea	rdi, [rdi]
	je	.label_384
	mov	edx, dword ptr [rsp + 0x3c]
	mov	rbp, rbp
	mov	byte ptr [rcx], dl
	lea	rdi, [rdi]
	inc	rcx
	nop	word ptr cs:[rax + rax]
.label_384:
	mov	rdx, rcx
.label_393:
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x48], rdx
	lea	rdi, [rdi]
	sub	r14, rax
	lea	rsi, [rsi]
	sub	rdx, rdi
	jmp	.label_396
	nop	dword ptr [rax]
.label_388:
	lea	rsi, [rsi]
	mov	r14, qword ptr [rsp + 0x40]
	sub	r14, qword ptr [rsp + 0x10]
	mov	rbp, rbp
	mov	rdx, qword ptr [rsp + 0x48]
	mov	r15, rbp
	mov	rbp, rbp
	sub	rdx, r15
	lea	rdi, [rdi]
	mov	rdi, r15
.label_396:
	mov	esi, r13d
	call	memchr
	nop	
	test	rax, rax
	je	.label_386
	mov	qword ptr [rsp + 0x40], r14
	mov	r14, qword ptr [rsp + 0x50]
	mov	rcx, r12
	lea	rsi, [rsi]
	mov	byte ptr [rax], 0
	lea	rdx, [rax + 1]
	lea	rsi, [r14 - 0x20]
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x50], rsi
	mov	rsp, rsp
	mov	qword ptr [r14 - 0x20], r15
	nop	
	mov	r12, rdx
	lea	rsi, [rsi]
	mov	rbp, rdx
	sub	r12, r15
	mov	qword ptr [r14 - 0x18], r12
	lea	rdi, [rdi]
	cmp	rcx, r12
	mov	rbp, rbp
	cmova	r12, rcx
	mov	rbp, rbp
	test	rbx, rbx
	nop	
	je	.label_388
	cmp	qword ptr [rbx + 0x10], -1
	nop	
	je	.label_405
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rsp + 0x50]
	mov	r13, r12
	mov	r12, rbx
	nop	
	mov	rsi, r12
	call	limfield
	nop	
	mov	rbx, r12
	mov	r12, r13
	mov	r13d, dword ptr [rsp + 0x2c]
.label_405:
	mov	rbp, rbp
	mov	qword ptr [r14 - 8], rax
	cmp	qword ptr [rbx], -1
	je	.label_387
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rsp + 0x50]
	mov	rsi, rbx
	call	begfield
	lea	rdi, [rdi]
	mov	qword ptr [r14 - 0x10], rax
	jmp	.label_388
	nop	
.label_387:
	cmp	byte ptr [rbx + 0x30], 0
	lea	rdi, [rdi]
	je	.label_397
	lea	rsi, [rsi]
	dec	r15
	nop	
.label_403:
	lea	rdi, [rdi]
	movzx	eax, byte ptr [r15 + 1]
	nop	
	inc	r15
	mov	rsp, rsp
	cmp	byte ptr [byte ptr [rax + blanks]],  0
	jne	.label_403
.label_397:
	nop	
	mov	qword ptr [r14 - 0x10], r15
	jmp	.label_388
	nop	word ptr cs:[rax + rax]
.label_386:
	mov	qword ptr [rsp], r15
	mov	r15, qword ptr [rsp + 0x18]
	lea	rdi, [rdi]
	cmp	byte ptr [r15 + 0x30], 0
	mov	rdx, qword ptr [rsp + 0x48]
	mov	rsp, rsp
	mov	r8, rdx
	mov	rsi, qword ptr [rsp + 0x20]
	lea	rdi, [rdi]
	je	.label_383
	jmp	.label_392
	nop	dword ptr [rax]
.label_402:
	mov	rdx, r8
.label_392:
	mov	rdi, qword ptr [r15]
	mov	rbp, rbp
	mov	rax, rdx
	sub	rax, rdi
	mov	qword ptr [r15 + 8], rax
	mov	rbp, rbp
	mov	rax, qword ptr [r15 + 0x18]
	lea	rcx, [rdi + rax]
	sub	rcx, qword ptr [rsp + 0x50]
	sar	rcx, 5
	mov	qword ptr [r15 + 0x10], rcx
	jne	.label_394
	lea	rsi, [rsi]
	mov	r14, rax
	mov	rsp, rsp
	shr	r14, 5
	lea	rsi, [rsi]
	test	rdi, rdi
	je	.label_401
	mov	rbp, rbp
	movabs	rcx, 0x5555555555555540
	cmp	rax, rcx
	jae	.label_406
	mov	qword ptr [rsp + 0x20], rsi
	shr	rax, 6
	lea	rdi, [rdi]
	lea	r14, [r14 + rax + 1]
	jmp	.label_385
	nop	
.label_401:
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x20], rsi
	test	r14, r14
	mov	rsp, rsp
	mov	eax, 4
	nop	
	cmove	r14, rax
	mov	rbp, rbp
	mov	rax, r14
	shr	rax, 0x3a
	je	.label_385
	call	xalloc_die
.label_407:
	lea	rdi, [rdi]
	xor	eax, eax
	jmp	.label_398
.label_394:
	sub	rdx, qword ptr [rsp]
	nop	
	mov	qword ptr [r15 + 0x20], rdx
	add	r12, 0x22
	lea	rsi, [rsi]
	mov	qword ptr [word ptr [rip + merge_buffer_size]],  r12
	mov	rbp, rbp
	mov	al, 1
.label_398:
	add	rsp, 0x68
	pop	rbx
	lea	rsi, [rsi]
	pop	r12
	pop	r13
	pop	r14
	lea	rsi, [rsi]
	pop	r15
	mov	rbp, rbp
	pop	rbp
	ret	
.label_399:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.159
	mov	rbp, rbp
	mov	edx, 5
	lea	rsi, [rsi]
	call	dcgettext
	mov	rsp, rsp
	mov	rdi, rax
	mov	rsi, qword ptr [rsp + 0x58]
	call	sort_die
.label_406:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x408940

	.globl compare
	.type compare, @function
compare:
	nop	
	push	rbp
	push	r15
	push	r14
	mov	rsp, rsp
	push	r13
	push	r12
	push	rbx
	nop	
	sub	rsp, 0x2178
	mov	r12, rsi
	mov	rsp, rsp
	mov	r13, rdi
	lea	rdi, [rdi]
	mov	r14,  qword ptr [word ptr [rip + keylist]]
	test	r14, r14
	lea	rsi, [rsi]
	je	.label_492
	nop	
	mov	rbx, qword ptr [r13 + 0x10]
	lea	rsi, [rsi]
	mov	r15, qword ptr [r13 + 0x18]
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x2168], r13
	mov	rsp, rsp
	mov	rbp, qword ptr [r12 + 0x10]
	mov	r11, qword ptr [r12 + 0x18]
	nop	
	mov	qword ptr [rsp + 0x18], r12
	mov	byte ptr [rsp + 0x2137], al
	nop	
	mov	byte ptr [rsp + 0x17], al
	mov	qword ptr [rsp + 0x1c0], rax
	jmp	.label_427
	nop	word ptr cs:[rax + rax]
.label_529:
	lea	rsi, [rsi]
	mov	rdi, r13
	mov	rbp, rbp
	mov	rsi, r14
	lea	rsi, [rsi]
	mov	rbp, r11
	lea	rdi, [rdi]
	call	begfield
	nop	
	mov	rbx, rax
	mov	rdi, r12
	mov	rsi, r14
	call	begfield
	nop	
	mov	r11, rbp
	mov	rbp, rax
.label_427:
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x1b8], r14
	mov	rax, r14
	mov	r14, qword ptr [rax + 0x20]
	mov	r12, qword ptr [rax + 0x28]
	lea	rdi, [rdi]
	cmp	rbx, r15
	cmova	r15, rbx
	cmp	rbp, r11
	cmova	r11, rbp
	mov	rbp, rbp
	mov	r13, r15
	mov	rsp, rsp
	sub	r13, rbx
	lea	rdi, [rdi]
	mov	r10, r11
	mov	rsp, rsp
	sub	r10, rbp
	cmp	byte ptr [byte ptr [rip + hard_LC_COLLATE]],  0
	jne	.label_424
	mov	rax, qword ptr [rsp + 0x1b8]
	lea	rsi, [rsi]
	mov	ax, word ptr [rax + 0x32]
	test	al, al
	jne	.label_424
	mov	rcx, qword ptr [rsp + 0x1b8]
	mov	ecx, dword ptr [rcx + 0x34]
	mov	rbp, rbp
	test	ecx, 0xff00ff
	mov	rsp, rsp
	jne	.label_424
	or	eax, ecx
	mov	rsp, rsp
	movzx	eax, ax
	cmp	eax, 0xff
	lea	rdi, [rdi]
	ja	.label_424
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp + 0x1b8]
	cmp	byte ptr [rax + 0x38], 0
	nop	
	je	.label_466
	nop	dword ptr [rax]
.label_424:
	mov	rax, r12
	lea	rdi, [rdi]
	or	rax, r14
	setne	r9b
	mov	rsp, rsp
	je	.label_500
	lea	rsi, [rsi]
	lea	rdi, [r10 + r13 + 2]
	mov	rsp, rsp
	cmp	rdi, 0xfa1
	lea	rax, [rsp + 0x1190]
	mov	r8, rax
	mov	rsp, rsp
	mov	eax, 0
	mov	qword ptr [rsp + 0x1c0], rax
	jb	.label_456
	mov	rbp, rbp
	mov	byte ptr [rsp + 0x2147], r9b
	mov	qword ptr [rsp + 0x2170], r10
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x2160], r11
	call	xmalloc
	mov	r11, qword ptr [rsp + 0x2160]
	mov	r10, qword ptr [rsp + 0x2170]
	nop	
	mov	r9b, byte ptr [rsp + 0x2147]
	nop	
	mov	r8, rax
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x1c0], r8
.label_456:
	cmp	r15, rbx
	mov	eax, 0
	mov	edi, 0
	lea	rsi, [rsi]
	je	.label_485
	nop	word ptr cs:[rax + rax]
.label_502:
	mov	cl, byte ptr [rbx + rax]
	movzx	edx, cl
	nop	
	test	r14, r14
	je	.label_510
	nop	
	cmp	byte ptr [r14 + rdx], 0
	jne	.label_494
.label_510:
	test	r12, r12
	je	.label_497
	lea	rsi, [rsi]
	mov	cl, byte ptr [r12 + rdx]
.label_497:
	nop	
	mov	byte ptr [r8 + rdi], cl
	inc	rdi
.label_494:
	inc	rax
	nop	
	cmp	rax, r13
	mov	rsp, rsp
	jb	.label_502
.label_485:
	mov	rbp, rbp
	lea	rbx, [r8 + r13 + 1]
	nop	
	mov	byte ptr [r8 + rdi], 0
	cmp	r11, rbp
	mov	ecx, 0
	mov	eax, 0
	je	.label_505
	nop	word ptr cs:[rax + rax]
.label_524:
	nop	
	mov	dl, byte ptr [rbp + rcx]
	movzx	esi, dl
	test	r14, r14
	je	.label_515
	cmp	byte ptr [r14 + rsi], 0
	mov	rsp, rsp
	jne	.label_518
.label_515:
	mov	rsp, rsp
	test	r12, r12
	lea	rsi, [rsi]
	je	.label_520
	nop	
	mov	dl, byte ptr [r12 + rsi]
.label_520:
	mov	byte ptr [rbx + rax], dl
	nop	
	inc	rax
.label_518:
	inc	rcx
	cmp	rcx, r10
	lea	rdi, [rdi]
	jb	.label_524
.label_505:
	mov	byte ptr [rbx + rax], 0
	mov	r10, rax
	jmp	.label_526
	nop	word ptr cs:[rax + rax]
.label_500:
	mov	al, byte ptr [r15]
	mov	rbp, rbp
	mov	byte ptr [rsp + 0x2137], al
	mov	byte ptr [r15], 0
	mov	al, byte ptr [r11]
	mov	byte ptr [rsp + 0x17], al
	mov	byte ptr [r11], 0
	mov	r8, rbx
	lea	rdi, [rdi]
	mov	rbx, rbp
	mov	rdi, r13
.label_526:
	lea	rdi, [rdi]
	mov	r14, qword ptr [rsp + 0x1b8]
	mov	rsp, rsp
	mov	ax, word ptr [r14 + 0x32]
	nop	
	test	al, al
	mov	rbp, rbp
	je	.label_415
	mov	qword ptr [rsp + 0x2160], rdi
	mov	rsp, rsp
	lea	rdi, [r8 - 1]
	nop	word ptr cs:[rax + rax]
.label_430:
	movzx	eax, byte ptr [rdi + 1]
	inc	rdi
	nop	
	cmp	byte ptr [byte ptr [rax + blanks]],  0
	jne	.label_430
	mov	r15b, r9b
	nop	
	mov	qword ptr [rsp + 0x1a8], r8
	lea	rsi, [rsi]
	mov	rbp, r10
	lea	rsi, [rbx - 1]
	mov	qword ptr [rsp + 0x1b0], rbx
	nop	
.label_444:
	movzx	eax, byte ptr [rsi + 1]
	inc	rsi
	lea	rdi, [rdi]
	cmp	byte ptr [byte ptr [rax + blanks]],  0
	jne	.label_444
	mov	edx,  dword ptr [dword ptr [rip + decimal_point]]
	mov	ecx,  dword ptr [dword ptr [rip + thousands_sep]]
	call	strnumcmp
	mov	r9d, eax
	lea	rdi, [rdi]
	mov	r10, rbp
	nop	
	jmp	.label_414
	nop	word ptr cs:[rax + rax]
.label_415:
	mov	qword ptr [rsp + 0x1b0], rbx
	mov	ecx, dword ptr [r14 + 0x34]
	lea	rsi, [rsi]
	test	cl, cl
	je	.label_426
	mov	r15b, r9b
	mov	qword ptr [rsp + 0x2160], rdi
	mov	rsp, rsp
	mov	r12, r10
	lea	rsi, [rsi]
	mov	rdi, r8
	mov	rbp, rbp
	lea	rsi, [rsp + 0x180]
	mov	rbp, r8
	lea	rdi, [rdi]
	call	strtold
	lea	rsi, [rsi]
	fstp	xword ptr [rsp + 0x1180]
	mov	rbx, qword ptr [rsp + 0x1b0]
	mov	rdi, rbx
	lea	rsi, [rsp + 0x2138]
	call	strtold
	mov	rcx, rbp
	nop	
	mov	rax, qword ptr [rsp + 0x2138]
	cmp	qword ptr [rsp + 0x180], rcx
	je	.label_487
	mov	r9d, 1
	cmp	rax, rbx
	je	.label_508
	mov	rbp, rbp
	fld	xword ptr [rsp + 0x1180]
	fxch	st(1)
	fucomi	st(1)
	mov	r10, r12
	lea	rdi, [rdi]
	jbe	.label_495
	fstp	st(0)
	fstp	st(0)
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x1a8], rcx
	mov	r9d, 0xffffffff
	mov	rbp, rbp
	jmp	.label_417
.label_426:
	test	ch, 0xff
	nop	
	je	.label_511
	mov	qword ptr [rsp + 0x2160], rdi
	mov	rbp, rbp
	lea	rdi, [r8 - 1]
	nop	
.label_522:
	lea	rdi, [rdi]
	movzx	eax, byte ptr [rdi + 1]
	lea	rsi, [rsi]
	inc	rdi
	mov	rbp, rbp
	cmp	byte ptr [byte ptr [rax + blanks]],  0
	nop	
	jne	.label_522
	mov	qword ptr [rsp + 0x1a8], r8
	mov	r12b, r9b
	mov	rcx, qword ptr [rsp + 0x1b0]
	lea	rdi, [rdi]
	lea	rsi, [rcx - 1]
	nop	word ptr cs:[rax + rax]
.label_527:
	lea	rdi, [rdi]
	movzx	r11d, byte ptr [rsi + 1]
	lea	rdi, [rdi]
	inc	rsi
	cmp	byte ptr [byte ptr [r11 + blanks]],  0
	mov	rsp, rsp
	jne	.label_527
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x2170], r10
	movzx	r8d, al
	lea	rsi, [rsi]
	cmp	r8d, 0x2d
	mov	rsp, rsp
	sete	al
	movzx	ebp, al
	lea	r14, [rdi + rbp + 1]
	lea	rsi, [rsi]
	mov	dl, byte ptr [rdi + rbp]
	movzx	r15d, dl
	lea	eax, [r15 - 0x30]
	cmp	eax, 9
	mov	rsp, rsp
	ja	.label_533
	mov	rsp, rsp
	add	rbp, rdi
	mov	r9d,  dword ptr [dword ptr [rip + thousands_sep]]
	xor	ecx, ecx
	nop	dword ptr [rax + rax]
.label_433:
	movzx	eax, dl
	movzx	ebx, cl
	cmp	ebx, eax
	mov	rbp, rbp
	mov	r10b, dl
	nop	
	jb	.label_528
	mov	r10b, cl
.label_528:
	movsx	eax, byte ptr [r14]
	lea	rsi, [rsi]
	mov	rbx, rbp
	add	rbx, 2
	lea	rdi, [rdi]
	cmp	eax, r9d
	mov	rbp, r14
	cmove	rbp, rbx
	nop	
	lea	r14, [rbp + 1]
	mov	dl, byte ptr [rbp]
	movzx	r15d, dl
	mov	rbp, rbp
	lea	ecx, [r15 - 0x30]
	mov	rsp, rsp
	cmp	ecx, 0xa
	mov	cl, r10b
	jb	.label_433
	cmp	eax, r9d
	lea	rdi, [rdi]
	je	.label_452
	lea	rsi, [rsi]
	jmp	.label_458
.label_487:
	mov	rsp, rsp
	fstp	st(0)
	mov	qword ptr [rsp + 0x1a8], rcx
	cmp	rax, rbx
	mov	r9d, 0
	mov	eax, 0xffffffff
	mov	rsp, rsp
	cmovne	r9d, eax
	lea	rsi, [rsi]
	mov	r10, r12
	jmp	.label_417
.label_508:
	fstp	st(0)
	mov	qword ptr [rsp + 0x1a8], rcx
	mov	r10, r12
	lea	rsi, [rsi]
	jmp	.label_417
.label_511:
	test	ecx, 0xff0000
	nop	
	je	.label_474
	mov	r15b, r9b
	nop	
	mov	qword ptr [rsp + 0x2160], rdi
	lea	rdi, [rdi]
	lea	rbx, [r8 - 1]
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x1a8], r8
	nop	
.label_465:
	lea	rsi, [rsi]
	movzx	eax, byte ptr [rbx + 1]
	lea	rdi, [rdi]
	inc	rbx
	nop	
	cmp	byte ptr [byte ptr [rax + blanks]],  0
	mov	rbp, rbp
	jne	.label_465
	xor	r8d, r8d
	mov	rbp, rbp
	mov	r9d, 0xc
.label_532:
	lea	rsi, [r9 + r8]
	shr	rsi, 1
	mov	rsp, rsp
	mov	rdi, rsi
	shl	rdi, 4
	mov	rbp,  qword ptr [word ptr [rdi + monthtab]]
	mov	cl, byte ptr [rbp]
	mov	rsp, rsp
	test	cl, cl
	je	.label_480
	inc	rbp
	mov	rax, rbx
	nop	word ptr cs:[rax + rax]
.label_523:
	movzx	edx, byte ptr [rax]
	lea	rdi, [rdi]
	movzx	edx,  byte ptr [byte ptr [rdx + fold_toupper]]
	nop	
	movzx	ecx, cl
	cmp	edx, ecx
	jb	.label_509
	lea	rsi, [rsi]
	movzx	edx, dl
	cmp	edx, ecx
	lea	rsi, [rsi]
	ja	.label_514
	mov	rbp, rbp
	inc	rax
	mov	cl, byte ptr [rbp]
	lea	rsi, [rsi]
	inc	rbp
	test	cl, cl
	jne	.label_523
	lea	rsi, [rsi]
	jmp	.label_480
	nop	dword ptr [rax]
.label_509:
	lea	rdi, [rdi]
	mov	r9, rsi
	jmp	.label_490
	nop	dword ptr [rax + rax]
.label_514:
	inc	rsi
	mov	rsp, rsp
	mov	r8, rsi
.label_490:
	xor	r11d, r11d
	mov	rsp, rsp
	cmp	r8, r9
	jb	.label_532
	jmp	.label_530
.label_495:
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x1a8], rcx
	nop	
	fxch	st(1)
	nop	
	fucomi	st(1)
	lea	rsi, [rsi]
	jbe	.label_531
	mov	rbp, rbp
	fstp	st(1)
	fstp	st(0)
	nop	
.label_417:
	mov	rsp, rsp
	fldz	
	fldz	
.label_506:
	lea	rsi, [rsi]
	fstp	st(1)
	fstp	st(0)
	jmp	.label_414
.label_533:
	xor	r10d, r10d
.label_458:
	lea	rdi, [rdi]
	cmp	r15d,  dword ptr [dword ptr [rip + decimal_point]]
	jne	.label_418
	nop	
	movzx	edx, byte ptr [r14]
	inc	r14
	mov	eax, edx
	lea	rsi, [rsi]
	add	eax, -0x30
	cmp	eax, 9
	mov	rbx, r14
	ja	.label_452
	nop	word ptr [rax + rax]
.label_436:
	nop	
	movzx	eax, dl
	nop	
	movzx	ecx, r10b
	cmp	ecx, eax
	mov	rsp, rsp
	jb	.label_469
	lea	rsi, [rsi]
	mov	dl, r10b
.label_469:
	mov	r10b, dl
	movzx	edx, byte ptr [rbx]
	inc	rbx
	mov	eax, edx
	add	eax, -0x30
	nop	
	cmp	eax, 0xa
	mov	rsp, rsp
	jb	.label_436
	mov	rbp, rbp
	jmp	.label_452
.label_418:
	mov	rbx, r14
.label_452:
	nop	
	xor	r9d, r9d
	lea	rdi, [rdi]
	movzx	eax, r10b
	cmp	eax, 0x31
	lea	rdi, [rdi]
	jb	.label_484
	movzx	eax, byte ptr [rbx - 1]
	movsx	eax,  byte ptr [byte ptr [rax + unit_order]]
	nop	
	mov	r9d, eax
	mov	rbp, rbp
	neg	r9d
	nop	
	cmp	r8d, 0x2d
	cmovne	r9d, eax
.label_484:
	movzx	r8d, r11b
	lea	rdi, [rdi]
	cmp	r8d, 0x2d
	mov	rbp, rbp
	sete	al
	movzx	edx, al
	mov	rbp, rbp
	lea	r11, [rsi + rdx + 1]
	mov	rbp, rbp
	mov	al, byte ptr [rsi + rdx]
	movzx	r14d, al
	mov	rbp, rbp
	lea	ecx, [r14 - 0x30]
	mov	rbp, rbp
	cmp	ecx, 9
	mov	rbp, rbp
	mov	r15b, r12b
	ja	.label_461
	mov	r12d, r9d
	add	rdx, rsi
	mov	r9d,  dword ptr [dword ptr [rip + thousands_sep]]
	lea	rdi, [rdi]
	xor	ebx, ebx
	nop	word ptr cs:[rax + rax]
.label_488:
	lea	rdi, [rdi]
	movzx	ecx, al
	nop	
	movzx	ebp, bl
	mov	rsp, rsp
	cmp	ebp, ecx
	mov	r10b, al
	mov	rsp, rsp
	jb	.label_482
	mov	r10b, bl
.label_482:
	movsx	ecx, byte ptr [r11]
	lea	rdi, [rdi]
	mov	rbp, rdx
	lea	rdi, [rdi]
	add	rbp, 2
	cmp	ecx, r9d
	mov	rdx, r11
	cmove	rdx, rbp
	lea	r11, [rdx + 1]
	mov	al, byte ptr [rdx]
	movzx	r14d, al
	mov	rsp, rsp
	lea	ebx, [r14 - 0x30]
	cmp	ebx, 0xa
	mov	bl, r10b
	jb	.label_488
	lea	rdi, [rdi]
	cmp	ecx, r9d
	mov	r9d, r12d
	je	.label_423
	lea	rdi, [rdi]
	jmp	.label_440
.label_461:
	xor	r10d, r10d
.label_440:
	mov	rsp, rsp
	cmp	r14d,  dword ptr [dword ptr [rip + decimal_point]]
	jne	.label_504
	mov	rbp, rbp
	movzx	eax, byte ptr [r11]
	nop	
	inc	r11
	mov	ecx, eax
	lea	rsi, [rsi]
	add	ecx, -0x30
	cmp	ecx, 9
	mov	rbp, r11
	ja	.label_423
	nop	dword ptr [rax + rax]
.label_519:
	lea	rsi, [rsi]
	movzx	ecx, al
	mov	rbp, rbp
	movzx	edx, r10b
	cmp	edx, ecx
	jb	.label_496
	mov	al, r10b
.label_496:
	mov	r10b, al
	movzx	eax, byte ptr [rbp]
	mov	rbp, rbp
	inc	rbp
	mov	ecx, eax
	add	ecx, -0x30
	cmp	ecx, 0xa
	jb	.label_519
	lea	rsi, [rsi]
	jmp	.label_423
.label_504:
	lea	rsi, [rsi]
	mov	rbp, r11
.label_423:
	nop	
	xor	eax, eax
	lea	rdi, [rdi]
	movzx	ecx, r10b
	cmp	ecx, 0x31
	jb	.label_516
	mov	rsp, rsp
	movzx	eax, byte ptr [rbp - 1]
	movsx	ecx,  byte ptr [byte ptr [rax + unit_order]]
	mov	eax, ecx
	lea	rdi, [rdi]
	neg	eax
	mov	rbp, rbp
	cmp	r8d, 0x2d
	cmovne	eax, ecx
.label_516:
	mov	rsp, rsp
	sub	r9d, eax
	nop	
	mov	r14, qword ptr [rsp + 0x1b8]
	jne	.label_409
	mov	edx,  dword ptr [dword ptr [rip + decimal_point]]
	lea	rdi, [rdi]
	mov	ecx,  dword ptr [dword ptr [rip + thousands_sep]]
	call	strnumcmp
.label_447:
	nop	
	mov	r9d, eax
	nop	
	mov	r10, qword ptr [rsp + 0x2170]
	jmp	.label_414
.label_409:
	mov	rbp, rbp
	mov	r10, qword ptr [rsp + 0x2170]
	nop	
	jmp	.label_414
.label_480:
	mov	r11d,  dword ptr [dword ptr [rdi + label_145]]
.label_530:
	mov	rax, qword ptr [rsp + 0x1b0]
	mov	rbp, rbp
	lea	rbx, [rax - 1]
	nop	word ptr cs:[rax + rax]
.label_454:
	lea	rdi, [rdi]
	movzx	eax, byte ptr [rbx + 1]
	mov	rsp, rsp
	inc	rbx
	cmp	byte ptr [byte ptr [rax + blanks]],  0
	jne	.label_454
	mov	rbp, rbp
	xor	r8d, r8d
	lea	rdi, [rdi]
	mov	r9d, 0xc
.label_476:
	mov	rsp, rsp
	lea	rsi, [r9 + r8]
	shr	rsi, 1
	mov	rdi, rsi
	shl	rdi, 4
	lea	rsi, [rsi]
	mov	rbp,  qword ptr [word ptr [rdi + monthtab]]
	mov	cl, byte ptr [rbp]
	test	cl, cl
	je	.label_450
	mov	rbp, rbp
	inc	rbp
	mov	rsp, rsp
	mov	rax, rbx
	nop	word ptr [rax + rax]
.label_473:
	movzx	edx, byte ptr [rax]
	movzx	edx,  byte ptr [byte ptr [rdx + fold_toupper]]
	movzx	ecx, cl
	lea	rdi, [rdi]
	cmp	edx, ecx
	jb	.label_475
	movzx	edx, dl
	mov	rsp, rsp
	cmp	edx, ecx
	ja	.label_470
	inc	rax
	lea	rdi, [rdi]
	mov	cl, byte ptr [rbp]
	inc	rbp
	test	cl, cl
	nop	
	jne	.label_473
	lea	rsi, [rsi]
	jmp	.label_450
	nop	word ptr cs:[rax + rax]
.label_475:
	lea	rdi, [rdi]
	mov	r9, rsi
	jmp	.label_442
	nop	dword ptr [rax + rax]
.label_470:
	mov	rbp, rbp
	inc	rsi
	nop	
	mov	r8, rsi
.label_442:
	xor	eax, eax
	cmp	r8, r9
	jb	.label_476
	jmp	.label_429
.label_450:
	mov	eax,  dword ptr [dword ptr [rdi + label_145]]
.label_429:
	nop	
	mov	r9d, r11d
	sub	r9d, eax
	jmp	.label_414
.label_466:
	nop	
	test	r14, r14
	mov	rbp, rbp
	je	.label_493
	test	r12, r12
	mov	r13, qword ptr [rsp + 0x2168]
	jne	.label_498
	jmp	.label_501
.label_531:
	xor	r9d, r9d
	mov	rbp, rbp
	fucomi	st(1)
	lea	rdi, [rdi]
	jne	.label_503
	nop	
	jnp	.label_506
.label_503:
	fxch	st(1)
	fucomip	st(0)
	mov	r9d, 0xffffffff
	mov	rsp, rsp
	fldz	
	nop	
	fxch	st(1)
	lea	rdi, [rdi]
	jnp	.label_506
	lea	rsi, [rsi]
	fstp	st(1)
	fucomip	st(0)
	lea	rsi, [rsi]
	mov	r9d, 1
	fldz	
	fldz	
	jnp	.label_506
	mov	rbp, rbp
	fstp	st(1)
	lea	rdi, [rdi]
	fstp	st(0)
	xorps	xmm0, xmm0
	movaps	xmmword ptr [rsp + 0x1d0], xmm0
	nop	
	xor	esi, esi
	mov	rdi, qword ptr [rsp + 0x1a8]
	nop	
	mov	rbx, r10
	call	strtold
	fstp	xword ptr [rsp + 0x1d0]
	xorps	xmm0, xmm0
	mov	rbp, rbp
	movaps	xmmword ptr [rsp + 0x30], xmm0
	nop	
	xor	esi, esi
	mov	rbp, rbp
	mov	rdi, qword ptr [rsp + 0x1b0]
	lea	rsi, [rsi]
	call	strtold
	fstp	xword ptr [rsp + 0x30]
	mov	edx, 0x10
	lea	rdi, [rsp + 0x1d0]
	lea	rsi, [rsp + 0x30]
	lea	rsi, [rsi]
	call	memcmp
	mov	rbp, rbp
	mov	r10, rbx
	mov	r9d, eax
	jmp	.label_417
.label_474:
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x2160], rdi
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x1a8], r8
	mov	qword ptr [rsp + 0x2170], r10
	mov	rsp, rsp
	movzx	eax, ax
	lea	rsi, [rsi]
	cmp	eax, 0x100
	nop	
	jae	.label_422
	nop	
	cmp	byte ptr [r14 + 0x38], 0
	lea	rdi, [rdi]
	je	.label_435
	mov	r15b, r9b
	mov	rdi, qword ptr [rsp + 0x1a8]
	mov	rsi, qword ptr [rsp + 0x1b0]
	call	filevercmp
	jmp	.label_447
.label_493:
	mov	rbp, rbp
	cmp	r15, rbx
	lea	rsi, [rsi]
	je	.label_449
	mov	r9d, 1
	lea	rsi, [rsi]
	cmp	r11, rbp
	mov	r14, qword ptr [rsp + 0x1b8]
	je	.label_453
	test	r12, r12
	nop	
	je	.label_462
	nop	word ptr cs:[rax + rax]
.label_471:
	cmp	rbp, r11
	jae	.label_468
	mov	rsp, rsp
	cmp	rbx, r15
	jae	.label_468
	mov	rsp, rsp
	movzx	eax, byte ptr [rbx]
	mov	rbp, rbp
	inc	rbx
	mov	rsp, rsp
	movzx	r9d, byte ptr [r12 + rax]
	mov	rsp, rsp
	movzx	eax, byte ptr [rbp]
	inc	rbp
	lea	rsi, [rsi]
	movzx	eax, byte ptr [r12 + rax]
	lea	rdi, [rdi]
	sub	r9d, eax
	lea	rdi, [rdi]
	je	.label_471
	mov	rbp, rbp
	jmp	.label_445
.label_422:
	mov	byte ptr [rsp + 0x2147], r9b
	mov	esi, OFFSET FLAT:random_md5_state
	lea	rdi, [rdi]
	mov	edx, 0x9c
	lea	rdi, [rdi]
	lea	rdi, [rsp + 0xcc]
	call	memcpy
	mov	esi, OFFSET FLAT:random_md5_state
	lea	rdi, [rdi]
	mov	edx, 0x9c
	lea	rdi, [rsp + 0x30]
	call	memcpy
	lea	rdi, [rdi]
	xor	eax, eax
	cmp	byte ptr [byte ptr [rip + hard_LC_COLLATE]],  0
	mov	dword ptr [rsp + 0x17c], 0
	lea	rsi, [rsi]
	mov	r12, qword ptr [rsp + 0x2170]
	lea	rsi, [rsi]
	mov	r13, qword ptr [rsp + 0x1b0]
	mov	rbp, rbp
	mov	r15, qword ptr [rsp + 0x2160]
	nop	
	mov	rdi, qword ptr [rsp + 0x1a8]
	mov	rsp, rsp
	je	.label_499
	nop	
	mov	rbp, qword ptr [rsp + 0x1a8]
	mov	rbp, rbp
	mov	rsi, qword ptr [rsp + 0x2160]
	lea	rax, [rbp + rsi]
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x28], rax
	mov	rax, qword ptr [rsp + 0x2170]
	mov	rdx, qword ptr [rsp + 0x1b0]
	lea	rdi, [rdx + rax]
	mov	qword ptr [rsp + 0x2150], rdi
	lea	rax, [rax + rsi]
	lea	rsi, [rax + rax*2 + 2]
	mov	rbp, rbp
	mov	qword ptr [rsp + 8], rsi
	xor	r14d, r14d
	mov	r13d, 0xfa0
	mov	rsp, rsp
	lea	rax, [rsp + 0x1d0]
	mov	qword ptr [rsp + 0x2158], rax
	mov	dword ptr [rsp + 0x17c], 0
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x1178], rdx
	jmp	.label_432
.label_451:
	inc	rbx
	inc	rbp
.label_498:
	xor	eax, eax
	nop	
	cmp	rbx, r15
	mov	edx, 0
	lea	rsi, [rsi]
	jae	.label_419
	nop	
.label_431:
	mov	rsp, rsp
	movzx	esi, byte ptr [rbx]
	lea	rsi, [rsi]
	mov	dl, 1
	mov	rsp, rsp
	cmp	byte ptr [r14 + rsi], 0
	je	.label_419
	lea	rsi, [rsi]
	inc	rbx
	cmp	rbx, r15
	jb	.label_431
	xor	edx, edx
	jmp	.label_419
	nop	word ptr cs:[rax + rax]
.label_477:
	lea	rdi, [rdi]
	inc	rbp
.label_419:
	nop	
	cmp	rbp, r11
	jae	.label_439
	nop	
	movzx	esi, byte ptr [rbp]
	cmp	byte ptr [r14 + rsi], 0
	lea	rsi, [rsi]
	jne	.label_477
	test	dl, dl
	lea	rsi, [rsi]
	je	.label_448
	mov	rsp, rsp
	movzx	eax, byte ptr [rbx]
	movzx	r9d, byte ptr [r12 + rax]
	movzx	eax, byte ptr [r12 + rsi]
	sub	r9d, eax
	je	.label_451
	jmp	.label_459
.label_525:
	cmp	r12, r15
	cmovb	r15, r12
	seta	al
	mov	rsp, rsp
	movzx	r12d, al
	sbb	r12d, 0
	mov	rdi, qword ptr [rsp + 0x2158]
	mov	rsi, rbx
	mov	rdx, r15
	call	memcmp
	mov	rsi, qword ptr [rsp + 8]
	test	eax, eax
	cmovne	r12d, eax
	lea	rsi, [rsi]
	mov	dword ptr [rsp + 0x17c], r12d
	nop	word ptr cs:[rax + rax]
.label_432:
	cmp	r13, rsi
	mov	rsp, rsp
	jae	.label_464
	lea	rsi, [rsi]
	lea	rbx, [r13 + r13*2]
	shr	rbx, 1
	lea	rdi, [rdi]
	cmp	rsi, rbx
	mov	rbp, rbp
	cmova	rbx, rsi
	mov	rdi, r14
	call	free
	mov	rdi, rbx
	call	malloc
	mov	qword ptr [rsp + 0x1180], rax
	lea	rdi, [rdi]
	test	rax, rax
	mov	r13d, 0xfa0
	lea	rdi, [rdi]
	cmovne	r13, rbx
	lea	rdi, [rdi]
	mov	rcx, rax
	mov	rbp, rbp
	lea	rax, [rsp + 0x1d0]
	cmove	rcx, rax
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x2158], rcx
	jmp	.label_486
	nop	dword ptr [rax]
.label_464:
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x1180], r14
.label_486:
	lea	rsi, [rsi]
	mov	rbx, qword ptr [rsp + 0x1178]
	nop	
	mov	r14, qword ptr [rsp + 0x28]
	lea	rdi, [rdi]
	mov	r12, qword ptr [rsp + 0x2150]
	mov	rsp, rsp
	cmp	rbp, r14
	mov	rbp, rbp
	mov	r15d, 0
	lea	rsi, [rsi]
	jae	.label_507
	mov	rsp, rsp
	mov	rdi, qword ptr [rsp + 0x2158]
	mov	rsi, rbp
	mov	rdx, r13
	call	xstrxfrm
	mov	r15, rax
	inc	r15
.label_507:
	cmp	rbx, r12
	lea	rsi, [rsi]
	mov	eax, 0
	lea	rdi, [rdi]
	jae	.label_413
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp + 0x2158]
	lea	rdi, [rax + r15]
	mov	rdx, r13
	sub	rdx, r15
	lea	rsi, [rsi]
	mov	eax, 0
	lea	rdi, [rdi]
	cmovb	rdi, rax
	cmovb	rdx, rax
	mov	rbp, rbp
	mov	rsi, rbx
	lea	rsi, [rsi]
	call	xstrxfrm
	lea	rdi, [rdi]
	inc	rax
.label_413:
	mov	rbp, rbp
	cmp	r13, r15
	setb	cl
	lea	rdx, [rax + r15]
	cmp	rdx, r13
	mov	rsp, rsp
	ja	.label_411
	nop	
	test	cl, cl
	mov	rsp, rsp
	jne	.label_411
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x20], rax
	lea	rdi, [rdi]
	jmp	.label_420
.label_411:
	mov	qword ptr [rsp + 0x20], rax
	lea	rdi, [rdi]
	lea	r13, [rdx + rdx*2]
	nop	
	shr	r13, 1
	movabs	rcx, 0x5555555555555555
	cmp	rdx, rcx
	nop	
	cmovae	r13, rdx
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rsp + 0x1180]
	nop	
	call	free
	mov	rbp, rbp
	mov	rdi, r13
	nop	
	call	xmalloc
	cmp	rbp, r14
	jae	.label_443
	mov	rdi, rax
	lea	rdi, [rdi]
	mov	rsi, rbp
	nop	
	mov	rdx, r15
	nop	
	mov	qword ptr [rsp + 0x1180], rax
	call	strxfrm
	mov	rax, qword ptr [rsp + 0x1180]
.label_443:
	cmp	rbx, r12
	jae	.label_457
	lea	rsi, [rsi]
	mov	rdi, rax
	lea	rdi, [rdi]
	add	rdi, r15
	mov	rsi, rbx
	mov	rdx, qword ptr [rsp + 0x20]
	mov	qword ptr [rsp + 0x1180], rax
	lea	rsi, [rsi]
	call	strxfrm
	mov	rax, qword ptr [rsp + 0x1180]
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x2158], rax
	lea	rdi, [rdi]
	jmp	.label_420
	nop	dword ptr [rax + rax]
.label_457:
	mov	qword ptr [rsp + 0x2158], rax
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x1180], rax
.label_420:
	lea	rsi, [rsi]
	cmp	rbp, r14
	jae	.label_479
	mov	rdi, rbp
	call	strlen
	lea	rbp, [rax + rbp + 1]
.label_479:
	cmp	rbx, r12
	jae	.label_483
	lea	rsi, [rsi]
	mov	rdi, rbx
	call	strlen
	lea	rbx, [rax + rbx + 1]
.label_483:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp + 0x1180]
	lea	rsi, [rsi]
	cmp	rbp, r14
	lea	rsi, [rsi]
	jb	.label_481
	mov	rsp, rsp
	cmp	rbx, r12
	nop	
	jae	.label_513
.label_481:
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x2150], r12
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x28], r14
	mov	qword ptr [rsp + 0x1178], rbx
	lea	rdi, [rdi]
	mov	r14, rax
	mov	rbx, qword ptr [rsp + 0x2158]
	lea	rsi, [rsi]
	mov	rdi, rbx
	mov	rsi, r15
	mov	rsp, rsp
	lea	rdx, [rsp + 0x30]
	call	md5_process_bytes
	nop	
	lea	rbx, [rbx + r15]
	mov	rsp, rsp
	mov	rdi, rbx
	nop	
	mov	r12, r15
	lea	rdi, [rdi]
	mov	r15, qword ptr [rsp + 0x20]
	mov	rsi, r15
	lea	rdi, [rdi]
	lea	rdx, [rsp + 0xcc]
	call	md5_process_bytes
	cmp	dword ptr [rsp + 0x17c], 0
	mov	rsp, rsp
	mov	rsi, qword ptr [rsp + 8]
	jne	.label_432
	mov	rbp, rbp
	jmp	.label_525
.label_513:
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rsp + 0x2158]
	lea	r13, [rdi + r15]
	nop	
	mov	r14, qword ptr [rsp + 0x1b8]
	mov	r12, qword ptr [rsp + 0x20]
.label_499:
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x2158], rdi
	mov	qword ptr [rsp + 0x20], r13
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x1180], rax
	mov	rsi, r15
	lea	rbp, [rsp + 0x30]
	mov	rdx, rbp
	mov	rsp, rsp
	call	md5_process_bytes
	mov	rdi, rbp
	mov	rsp, rsp
	lea	rbx, [rsp + 0x180]
	mov	rbp, rbp
	mov	rsi, rbx
	call	md5_finish_ctx
	mov	rdi, r13
	mov	rsi, r12
	lea	rbp, [rsp + 0xcc]
	lea	rsi, [rsi]
	mov	rdx, rbp
	call	md5_process_bytes
	lea	rsi, [rsi]
	mov	rdi, rbp
	lea	rdi, [rdi]
	lea	rbp, [rsp + 0x190]
	lea	rdi, [rdi]
	mov	rsi, rbp
	call	md5_finish_ctx
	mov	edx, 0x10
	lea	rsi, [rsi]
	mov	rdi, rbx
	mov	rsi, rbp
	lea	rsi, [rsi]
	call	memcmp
	lea	rsi, [rsi]
	test	eax, eax
	mov	rbp, rbp
	jne	.label_463
	mov	rsp, rsp
	mov	eax, dword ptr [rsp + 0x17c]
	test	eax, eax
	jne	.label_463
	mov	rbp, rbp
	cmp	r15, r12
	mov	rdx, r12
	cmovb	rdx, r15
	mov	rdi, qword ptr [rsp + 0x2158]
	mov	rsi, qword ptr [rsp + 0x20]
	call	memcmp
	mov	rsp, rsp
	test	eax, eax
	jne	.label_463
	cmp	r15, r12
	seta	al
	movzx	eax, al
	sbb	eax, 0
.label_463:
	mov	rbp, rbp
	mov	rdi, qword ptr [rsp + 0x1180]
	mov	ebx, eax
	lea	rdi, [rdi]
	call	free
	nop	
	mov	r9d, ebx
	mov	r10, qword ptr [rsp + 0x2170]
	mov	rsp, rsp
	mov	r15b, byte ptr [rsp + 0x2147]
	nop	dword ptr [rax]
.label_414:
	lea	rdi, [rdi]
	test	r15b, r15b
	mov	rbp, rbp
	mov	r13, qword ptr [rsp + 0x2160]
	mov	rsp, rsp
	je	.label_441
	mov	rdi, qword ptr [rsp + 0x1c0]
	mov	ebx, r9d
	mov	rsp, rsp
	call	free
	mov	r9d, ebx
	jmp	.label_410
	nop	
.label_441:
	mov	al, byte ptr [rsp + 0x2137]
	mov	rbp, rbp
	mov	rcx, qword ptr [rsp + 0x1a8]
	mov	byte ptr [rcx + r13], al
	lea	rsi, [rsi]
	mov	al, byte ptr [rsp + 0x17]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rsp + 0x1b0]
	lea	rdi, [rdi]
	mov	byte ptr [rcx + r10], al
.label_410:
	test	r9d, r9d
	jne	.label_453
	mov	r14, qword ptr [r14 + 0x40]
	lea	rdi, [rdi]
	test	r14, r14
	mov	r12, qword ptr [rsp + 0x18]
	mov	rbp, rbp
	mov	r13, qword ptr [rsp + 0x2168]
	je	.label_438
	lea	rdi, [rdi]
	cmp	qword ptr [r14 + 0x10], -1
	mov	rsp, rsp
	je	.label_512
	mov	rdi, r13
	nop	
	mov	rsi, r14
	nop	
	call	limfield
	mov	rsp, rsp
	mov	r15, rax
	mov	rdi, r12
	mov	rbp, rbp
	mov	rsi, r14
	mov	rbp, rbp
	call	limfield
	mov	r11, rax
	nop	
	jmp	.label_521
	nop	
.label_512:
	mov	rax, qword ptr [r13]
	mov	rsp, rsp
	mov	rcx, qword ptr [r13 + 8]
	lea	r15, [rax + rcx - 1]
	mov	rsp, rsp
	mov	rax, qword ptr [r12]
	mov	rcx, qword ptr [r12 + 8]
	mov	rsp, rsp
	lea	r11, [rax + rcx - 1]
.label_521:
	cmp	qword ptr [r14], -1
	jne	.label_529
	nop	
	mov	rbx, qword ptr [r13]
	mov	rbp, qword ptr [r12]
	lea	rsi, [rsi]
	cmp	byte ptr [r14 + 0x30], 0
	lea	rdi, [rdi]
	je	.label_427
	nop	
	jmp	.label_421
	nop	dword ptr [rax + rax]
.label_416:
	nop	
	inc	rbx
.label_421:
	lea	rsi, [rsi]
	cmp	rbx, r15
	mov	rbp, rbp
	jae	.label_412
	movzx	eax, byte ptr [rbx]
	mov	rbp, rbp
	cmp	byte ptr [byte ptr [rax + blanks]],  0
	lea	rsi, [rsi]
	jne	.label_416
	nop	
	jmp	.label_412
	nop	word ptr cs:[rax + rax]
.label_428:
	inc	rbp
.label_412:
	cmp	rbp, r11
	nop	
	jae	.label_427
	movzx	eax, byte ptr [rbp]
	cmp	byte ptr [byte ptr [rax + blanks]],  0
	lea	rsi, [rsi]
	jne	.label_428
	jmp	.label_427
.label_472:
	lea	rsi, [rsi]
	inc	rbx
	inc	rbp
.label_501:
	mov	rsp, rsp
	xor	eax, eax
	cmp	rbx, r15
	mov	edx, 0
	mov	rsp, rsp
	mov	r12, qword ptr [rsp + 0x18]
	jae	.label_437
	nop	word ptr cs:[rax + rax]
.label_517:
	movzx	esi, byte ptr [rbx]
	nop	
	mov	dl, 1
	mov	rbp, rbp
	cmp	byte ptr [r14 + rsi], 0
	je	.label_437
	inc	rbx
	cmp	rbx, r15
	mov	rbp, rbp
	jb	.label_517
	nop	
	xor	edx, edx
	nop	
	jmp	.label_437
	nop	word ptr cs:[rax + rax]
.label_467:
	nop	
	inc	rbp
.label_437:
	cmp	rbp, r11
	mov	rbp, rbp
	jae	.label_439
	movzx	esi, byte ptr [rbp]
	mov	rsp, rsp
	cmp	byte ptr [r14 + rsi], 0
	jne	.label_467
	mov	rsp, rsp
	test	dl, dl
	lea	rdi, [rdi]
	je	.label_448
	mov	rbp, rbp
	movzx	r9d, byte ptr [rbx]
	lea	rdi, [rdi]
	sub	r9d, esi
	lea	rdi, [rdi]
	je	.label_472
	jmp	.label_478
.label_449:
	mov	rbp, rbp
	cmp	r11, rbp
	mov	r9d, 0
	mov	eax, 0xffffffff
	mov	rsp, rsp
	cmovne	r9d, eax
	mov	r14, qword ptr [rsp + 0x1b8]
	mov	rbp, rbp
	jmp	.label_410
.label_435:
	mov	r15b, r9b
	mov	rax, qword ptr [rsp + 0x2160]
	nop	
	test	rax, rax
	je	.label_489
	lea	rsi, [rsi]
	mov	r9d, 1
	mov	r10, qword ptr [rsp + 0x2170]
	test	r10, r10
	je	.label_414
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0x2160]
	lea	rsi, [rax + 1]
	lea	rcx, [r10 + 1]
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rsp + 0x1a8]
	mov	rdx, qword ptr [rsp + 0x1b0]
	lea	rdi, [rdi]
	mov	rbx, r10
	lea	rsi, [rsi]
	call	xmemcoll0
	mov	r10, rbx
	lea	rsi, [rsi]
	mov	r9d, eax
	jmp	.label_414
.label_462:
	cmp	r13, r10
	mov	rdx, r10
	cmovb	rdx, r13
	lea	rsi, [rsi]
	mov	rdi, rbx
	mov	rsi, rbp
	nop	
	mov	rbx, r10
	lea	rsi, [rsi]
	call	memcmp
	nop	
	mov	r10, rbx
	mov	r9d, eax
	test	r9d, r9d
	jne	.label_453
.label_468:
	cmp	r13, r10
	setne	al
	mov	rsp, rsp
	mov	r9d, 0xffffffff
	jb	.label_453
	lea	rsi, [rsi]
	movzx	r9d, al
	mov	rbp, rbp
	jmp	.label_410
.label_489:
	mov	r10, qword ptr [rsp + 0x2170]
	mov	rax, r10
	neg	rax
	sbb	r9d, r9d
	jmp	.label_414
.label_448:
	mov	eax, 1
	xor	edx, edx
.label_439:
	mov	rsp, rsp
	mov	r14, qword ptr [rsp + 0x1b8]
	mov	rsp, rsp
	movzx	r9d, dl
	mov	rbp, rbp
	sub	r9d, eax
	jmp	.label_410
.label_453:
	mov	cl, byte ptr [r14 + 0x37]
.label_491:
	lea	rsi, [rsi]
	mov	r12, qword ptr [rsp + 0x18]
	lea	rdi, [rdi]
	mov	r13, qword ptr [rsp + 0x2168]
.label_434:
	lea	rdi, [rdi]
	mov	eax, r9d
	lea	rdi, [rdi]
	neg	eax
	test	cl, cl
	mov	rsp, rsp
	cmove	eax, r9d
	mov	rbp, rbp
	test	eax, eax
	lea	rsi, [rsi]
	jne	.label_425
.label_438:
	mov	cl,  byte ptr [byte ptr [rip + unique]]
	mov	rsp, rsp
	xor	eax, eax
	lea	rsi, [rsi]
	and	cl, 1
	jne	.label_425
	mov	rsp, rsp
	mov	cl,  byte ptr [byte ptr [rip + stable]]
	nop	
	and	cl, 1
	mov	rbp, rbp
	jne	.label_425
.label_492:
	mov	rsi, qword ptr [r13 + 8]
	nop	
	mov	rcx, qword ptr [r12 + 8]
	lea	rbx, [rcx - 1]
	mov	rbp, rsi
	dec	rbp
	nop	
	je	.label_446
	lea	rsi, [rsi]
	mov	eax, 1
	mov	rsp, rsp
	test	rbx, rbx
	lea	rdi, [rdi]
	je	.label_455
	cmp	byte ptr [byte ptr [rip + hard_LC_COLLATE]],  0
	nop	
	mov	rdi, qword ptr [r13]
	mov	rbp, rbp
	mov	rdx, qword ptr [r12]
	je	.label_460
	nop	
	call	xmemcoll0
	jmp	.label_455
.label_446:
	neg	rbx
	sbb	eax, eax
	mov	rsp, rsp
	jmp	.label_455
.label_460:
	mov	rsp, rsp
	cmp	rbp, rbx
	lea	rdi, [rdi]
	mov	rax, rbx
	cmovb	rax, rbp
	mov	rsp, rsp
	mov	rsi, rdx
	nop	
	mov	rdx, rax
	lea	rdi, [rdi]
	call	memcmp
	test	eax, eax
	lea	rdi, [rdi]
	jne	.label_455
	cmp	rbp, rbx
	setne	al
	movzx	ecx, al
	nop	
	mov	eax, 0xffffffff
	cmovae	eax, ecx
.label_455:
	mov	rsp, rsp
	cmp	byte ptr [byte ptr [rip + reverse]],  0
	nop	
	je	.label_425
	neg	eax
.label_425:
	add	rsp, 0x2178
	lea	rdi, [rdi]
	pop	rbx
	pop	r12
	pop	r13
	mov	rsp, rsp
	pop	r14
	pop	r15
	pop	rbp
	nop	
	ret	
.label_445:
	lea	rsi, [rsi]
	shr	ecx, 0x18
	lea	rsi, [rsi]
	jmp	.label_491
.label_459:
	mov	rsp, rsp
	shr	ecx, 0x18
	nop	
	mov	r12, qword ptr [rsp + 0x18]
	lea	rsi, [rsi]
	jmp	.label_434
.label_478:
	shr	ecx, 0x18
	lea	rdi, [rdi]
	jmp	.label_434
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x409f70

	.globl write_line
	.type write_line, @function
write_line:
	nop	
	push	rbp
	push	r15
	lea	rsi, [rsi]
	push	r14
	push	r13
	push	r12
	lea	rdi, [rdi]
	push	rbx
	lea	rdi, [rdi]
	sub	rsp, 0x38
	mov	r12, rdx
	mov	r15, rsi
	mov	qword ptr [rsp + 8], rdi
	lea	rsi, [rsi]
	mov	rbp, qword ptr [rdi]
	mov	rbx, qword ptr [rdi + 8]
	lea	rsi, [rsi]
	lea	r14, [rbp + rbx]
	mov	rsp, rsp
	test	r12, r12
	jne	.label_563
	movzx	eax,  byte ptr [byte ptr [rip + debug]]
	mov	rbp, rbp
	and	eax, 1
	cmp	eax, 1
	nop	
	jne	.label_563
	nop	
	test	rbx, rbx
	lea	rsi, [rsi]
	jle	.label_551
	dec	rbx
	nop	
	mov	r12d, 0xa
	mov	r13d, 0x3e
	nop	word ptr cs:[rax + rax]
.label_545:
	lea	rsi, [rsi]
	test	rbx, rbx
	movsx	ecx, byte ptr [rbp]
	mov	rsp, rsp
	mov	eax, ecx
	nop	
	cmove	eax, r12d
	cmp	ecx, 9
	cmove	eax, r13d
	mov	rcx, qword ptr [r15 + 0x28]
	cmp	rcx, qword ptr [r15 + 0x30]
	mov	rbp, rbp
	jae	.label_592
	lea	rdx, [rcx + 1]
	mov	qword ptr [r15 + 0x28], rdx
	mov	rbp, rbp
	mov	byte ptr [rcx], al
.label_557:
	inc	rbp
	dec	rbx
	lea	rdi, [rdi]
	cmp	rbp, r14
	mov	rbp, rbp
	jb	.label_545
	mov	rsp, rsp
	jmp	.label_551
.label_592:
	mov	rsp, rsp
	movzx	esi, al
	mov	rdi, r15
	lea	rdi, [rdi]
	call	__overflow
	lea	rdi, [rdi]
	cmp	eax, -1
	jne	.label_557
	mov	rsp, rsp
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.163
	nop	
	mov	edx, 5
	call	dcgettext
	mov	rsp, rsp
	xor	esi, esi
	mov	rsp, rsp
	mov	rdi, rax
	call	sort_die
.label_563:
	lea	rsi, [rsi]
	mov	al,  byte ptr [byte ptr [rip + eolchar]]
	and	al, 1
	lea	rsi, [rsi]
	jne	.label_566
	lea	rdi, [rdi]
	mov	al, 0xa
	lea	rsi, [rsi]
	jmp	.label_569
.label_566:
	xor	eax, eax
.label_569:
	mov	byte ptr [rbp + rbx - 1], al
	mov	esi, 1
	mov	rbp, rbp
	mov	rdi, rbp
	mov	rdx, rbx
	mov	rbp, rbp
	mov	rcx, r15
	mov	rsp, rsp
	call	fwrite_unlocked
	lea	rsi, [rsi]
	cmp	rax, rbx
	jne	.label_578
	lea	rdi, [rdi]
	mov	byte ptr [r14 - 1], 0
.label_537:
	nop	
	add	rsp, 0x38
	lea	rdi, [rdi]
	pop	rbx
	nop	
	pop	r12
	mov	rsp, rsp
	pop	r13
	pop	r14
	pop	r15
	lea	rsi, [rsi]
	pop	rbp
	ret	
.label_551:
	mov	rbp, rbp
	mov	r12,  qword ptr [word ptr [rip + keylist]]
	jmp	.label_559
	nop	word ptr cs:[rax + rax]
.label_554:
	mov	r12, qword ptr [r12 + 0x40]
	lea	rsi, [rsi]
	test	r12, r12
	jne	.label_559
	lea	rdi, [rdi]
	mov	al,  byte ptr [byte ptr [rip + unique]]
	and	al, 1
	jne	.label_537
	nop	
	test	byte ptr [byte ptr [rip + stable]],  1
	nop	
	mov	r12d, 0
	je	.label_559
	nop	
	jmp	.label_537
.label_579:
	nop	
	mov	esi, 0xa
	call	__overflow
	mov	rbp, rbp
	jmp	.label_565
.label_594:
	xor	eax, eax
.label_535:
	lea	rsi, [rsi]
	movzx	edi, al
	lea	r11, [rbx + rdi + 1]
	mov	al, byte ptr [rbx + rdi]
	movzx	r14d, al
	lea	ecx, [r14 - 0x30]
	cmp	ecx, 9
	lea	rsi, [rsi]
	ja	.label_556
	add	rdi, rbx
	mov	r9d,  dword ptr [dword ptr [rip + thousands_sep]]
	xor	esi, esi
	nop	word ptr cs:[rax + rax]
.label_560:
	movzx	ecx, al
	nop	
	movzx	edx, sil
	mov	rbp, rbp
	cmp	edx, ecx
	mov	r10b, al
	jb	.label_540
	nop	
	mov	r10b, sil
.label_540:
	lea	rdi, [rdi]
	movsx	edx, byte ptr [r11]
	mov	rcx, rdi
	add	rcx, 2
	lea	rdi, [rdi]
	cmp	edx, r9d
	mov	rdi, r11
	cmove	rdi, rcx
	nop	
	lea	r11, [rdi + 1]
	mov	rsp, rsp
	mov	al, byte ptr [rdi]
	mov	rsp, rsp
	movzx	r14d, al
	lea	esi, [r14 - 0x30]
	mov	rbp, rbp
	cmp	esi, 0xa
	mov	rbp, rbp
	mov	sil, r10b
	jb	.label_560
	nop	
	cmp	edx, r9d
	je	.label_586
	lea	rdi, [rdi]
	jmp	.label_588
.label_556:
	mov	rbp, rbp
	xor	r10d, r10d
.label_588:
	mov	rsp, rsp
	cmp	r14d,  dword ptr [dword ptr [rip + decimal_point]]
	jne	.label_591
	mov	rsp, rsp
	movzx	eax, byte ptr [r11]
	mov	rsp, rsp
	inc	r11
	mov	rsp, rsp
	mov	ecx, eax
	add	ecx, -0x30
	cmp	ecx, 9
	mov	rsp, rsp
	mov	rcx, r11
	nop	
	ja	.label_586
	nop	word ptr cs:[rax + rax]
.label_552:
	lea	rsi, [rsi]
	movzx	edx, al
	mov	rbp, rbp
	movzx	esi, r10b
	nop	
	cmp	esi, edx
	lea	rsi, [rsi]
	jb	.label_587
	mov	al, r10b
.label_587:
	mov	r10b, al
	movzx	eax, byte ptr [rcx]
	inc	rcx
	lea	rdi, [rdi]
	mov	edx, eax
	add	edx, -0x30
	nop	
	cmp	edx, 0xa
	jb	.label_552
	nop	
	jmp	.label_586
.label_591:
	lea	rsi, [rsi]
	mov	rcx, r11
.label_586:
	mov	rbp, rbp
	movzx	eax, r10b
	lea	rdi, [rdi]
	cmp	eax, 0x30
	mov	rsi, rbx
	jb	.label_561
	dec	rcx
	test	r8b, r8b
	je	.label_562
	movzx	eax, byte ptr [rcx]
	lea	rsi, [rsi]
	cmp	byte ptr [byte ptr [rax + unit_order]],  0
	setne	al
	jmp	.label_582
.label_562:
	xor	eax, eax
.label_582:
	lea	rsi, [rsi]
	movzx	eax, al
	add	rcx, rax
	mov	qword ptr [rsp], rcx
	lea	rsi, [rsi]
	mov	rsi, rcx
	jmp	.label_561
	nop	word ptr cs:[rax + rax]
.label_559:
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 8]
	mov	rbp, qword ptr [rax]
	mov	rax, qword ptr [rax + 8]
	lea	rsi, [rsi]
	lea	r13, [rbp + rax - 1]
	test	r12, r12
	lea	rdi, [rdi]
	je	.label_544
	mov	r14, qword ptr [r12]
	cmp	r14, -1
	mov	rsp, rsp
	mov	rbx, rbp
	lea	rsi, [rsi]
	je	.label_585
	mov	rsp, rsp
	mov	rdi, qword ptr [rsp + 8]
	mov	rsp, rsp
	mov	rsi, r12
	call	begfield
	lea	rsi, [rsi]
	mov	rbx, rax
.label_585:
	cmp	qword ptr [r12 + 0x10], -1
	je	.label_595
	mov	rdi, qword ptr [rsp + 8]
	lea	rdi, [rdi]
	mov	rsi, r12
	mov	rsp, rsp
	call	limfield
	lea	rdi, [rdi]
	mov	r13, rax
.label_595:
	lea	rsi, [rsi]
	mov	rax, qword ptr [r12 + 0x30]
	test	al, al
	lea	rdi, [rdi]
	sete	cl
	cmp	r14, -1
	setne	dl
	movabs	rsi, 0xff000000000000
	nop	
	test	rax, rsi
	jne	.label_543
	lea	rsi, [rsi]
	or	cl, dl
	je	.label_543
	lea	rdi, [rdi]
	mov	ecx, eax
	mov	rbp, rbp
	shr	ecx, 0x10
	test	cl, cl
	jne	.label_543
	shr	rax, 0x20
	mov	rsp, rsp
	movzx	ecx, ax
	lea	rdi, [rdi]
	cmp	ecx, 0xff
	mov	rsp, rsp
	ja	.label_543
	test	al, al
	nop	
	je	.label_564
	nop	
.label_543:
	mov	r15b, byte ptr [r13]
	mov	byte ptr [r13], 0
	dec	rbx
	nop	dword ptr [rax]
.label_570:
	movzx	eax, byte ptr [rbx + 1]
	inc	rbx
	mov	rsp, rsp
	cmp	byte ptr [byte ptr [rax + blanks]],  0
	mov	rbp, rbp
	jne	.label_570
	mov	qword ptr [rsp], rbx
	nop	
	cmp	r13, rbx
	lea	rdi, [rdi]
	jb	.label_574
	cmp	byte ptr [r12 + 0x36], 0
	nop	
	je	.label_577
	lea	rax, [rbx - 1]
	nop	dword ptr [rax + rax]
.label_584:
	mov	rsp, rsp
	movzx	ecx, byte ptr [rax + 1]
	inc	rax
	cmp	byte ptr [byte ptr [rcx + blanks]],  0
	nop	
	jne	.label_584
	mov	rsp, rsp
	xor	r8d, r8d
	mov	rsp, rsp
	mov	r9d, 0xc
.label_590:
	lea	rdi, [rdi]
	lea	r10, [r9 + r8]
	mov	rsp, rsp
	shr	r10, 1
	mov	rcx, r10
	shl	rcx, 4
	mov	rcx,  qword ptr [word ptr [rcx + monthtab]]
	lea	rdi, [rdi]
	mov	dl, byte ptr [rcx]
	mov	rbp, rbp
	test	dl, dl
	je	.label_593
	inc	rcx
	mov	rsi, rax
	nop	word ptr cs:[rax + rax]
.label_536:
	movzx	edi, byte ptr [rsi]
	nop	
	movzx	edi,  byte ptr [byte ptr [rdi + fold_toupper]]
	nop	
	movzx	edx, dl
	mov	rsp, rsp
	cmp	edi, edx
	mov	rbp, rbp
	jb	.label_583
	mov	rbp, rbp
	movzx	edi, dil
	cmp	edi, edx
	mov	rsp, rsp
	ja	.label_576
	lea	rsi, [rsi]
	inc	rsi
	mov	dl, byte ptr [rcx]
	lea	rdi, [rdi]
	inc	rcx
	test	dl, dl
	jne	.label_536
	mov	rsp, rsp
	jmp	.label_567
	nop	word ptr cs:[rax + rax]
.label_583:
	mov	rsp, rsp
	mov	r9, r10
	lea	rsi, [rsi]
	jmp	.label_546
	nop	dword ptr [rax + rax]
.label_576:
	inc	r10
	mov	r8, r10
.label_546:
	lea	rdi, [rdi]
	cmp	r8, r9
	jb	.label_590
	mov	rsi, rbx
	jmp	.label_561
	nop	word ptr [rax + rax]
.label_544:
	lea	rdi, [rdi]
	mov	rbx, rbp
	mov	rbp, rbp
	jmp	.label_564
.label_577:
	mov	rsp, rsp
	movzx	r8d, word ptr [r12 + 0x34]
	lea	rsi, [rsi]
	test	r8b, r8b
	mov	rbp, rbp
	je	.label_580
	mov	rdi, rbx
	nop	
	lea	rsi, [rsp]
	call	strtold
	lea	rsi, [rsi]
	fstp	st(0)
	mov	rsi, qword ptr [rsp]
	jmp	.label_561
.label_580:
	shr	r8d, 8
	mov	al, byte ptr [r12 + 0x32]
	mov	rbp, rbp
	or	al, r8b
	je	.label_574
	nop	
	cmp	rbx, r13
	jae	.label_594
	movzx	eax, byte ptr [rbx]
	cmp	eax, 0x2d
	sete	al
	mov	rsp, rsp
	jmp	.label_535
	nop	word ptr cs:[rax + rax]
.label_574:
	lea	rsi, [rsi]
	mov	qword ptr [rsp], r13
	mov	rsi, r13
	jmp	.label_561
.label_593:
	mov	rsp, rsp
	mov	rsi, rax
.label_567:
	lea	rsi, [rsi]
	mov	qword ptr [rsp], rsi
.label_561:
	mov	byte ptr [r13], r15b
	lea	rdi, [rdi]
	mov	r13, rsi
.label_564:
	mov	r15, rbx
	sub	r15, rbp
	xor	edx, edx
	nop	
	mov	rdi, rbp
	lea	rsi, [rsi]
	mov	rsi, r15
	call	mbsnwidth
	movsxd	r14, eax
	mov	rbp, rbp
	cmp	rbp, rbx
	jae	.label_542
	cmp	r15, 4
	lea	rsi, [rsi]
	jb	.label_534
	lea	rsi, [rsi]
	mov	rax, r15
	and	rax, 0xfffffffffffffffc
	nop	
	mov	rcx, r15
	lea	rsi, [rsi]
	and	rcx, 0xfffffffffffffffc
	mov	rsp, rsp
	je	.label_534
	movq	xmm2, r14
	mov	rbp, rbp
	pxor	xmm0, xmm0
	lea	rsi, [r15 - 4]
	mov	rdx, rsi
	shr	rdx, 2
	bt	rsi, 2
	nop	
	jb	.label_571
	movzx	esi, word ptr [rbp]
	movd	xmm1, esi
	pxor	xmm5, xmm5
	punpcklbw	xmm1, xmm5
	lea	rdi, [rdi]
	punpcklwd	xmm1, xmm5
	punpckldq	xmm1, xmm5
	lea	rsi, [rsi]
	movzx	esi, word ptr [rbp + 2]
	movd	xmm0, esi
	punpcklbw	xmm0, xmm5
	punpcklwd	xmm0, xmm5
	mov	rbp, rbp
	punpckldq	xmm0, xmm5
	movdqa	xmm6,  xmmword ptr [word ptr [rip + label_548]]
	pcmpeqd	xmm1, xmm6
	pshufd	xmm3, xmm1, 0xb1
	movdqa	xmm7,  xmmword ptr [word ptr [rip + label_549]]
	lea	rsi, [rsi]
	pand	xmm1, xmm7
	pand	xmm1, xmm3
	pcmpeqd	xmm0, xmm6
	pshufd	xmm3, xmm0, 0xb1
	pand	xmm0, xmm7
	pand	xmm0, xmm3
	mov	rbp, rbp
	paddq	xmm1, xmm2
	lea	rdi, [rdi]
	mov	esi, 4
	movdqa	xmm2, xmm1
	jmp	.label_575
.label_571:
	xor	esi, esi
	pxor	xmm5, xmm5
	movdqa	xmm6,  xmmword ptr [word ptr [rip + label_548]]
	movdqa	xmm7,  xmmword ptr [word ptr [rip + label_549]]
.label_575:
	test	rdx, rdx
	mov	rsp, rsp
	je	.label_555
	mov	rdx, rcx
	nop	
	sub	rdx, rsi
	mov	rbp, rbp
	lea	rsi, [rbp + rsi + 6]
	movdqa	xmm1, xmm2
	nop	word ptr [rax + rax]
.label_572:
	lea	rdi, [rdi]
	movzx	edi, word ptr [rsi - 6]
	movd	xmm2, edi
	punpcklbw	xmm2, xmm5
	punpcklwd	xmm2, xmm5
	nop	
	punpckldq	xmm2, xmm5
	movzx	edi, word ptr [rsi - 4]
	movd	xmm3, edi
	mov	rsp, rsp
	punpcklbw	xmm3, xmm5
	lea	rdi, [rdi]
	punpcklwd	xmm3, xmm5
	nop	
	punpckldq	xmm3, xmm5
	pcmpeqd	xmm2, xmm6
	lea	rsi, [rsi]
	pshufd	xmm4, xmm2, 0xb1
	mov	rbp, rbp
	pand	xmm2, xmm7
	pand	xmm2, xmm4
	lea	rdi, [rdi]
	pcmpeqd	xmm3, xmm6
	lea	rsi, [rsi]
	pshufd	xmm4, xmm3, 0xb1
	pand	xmm3, xmm7
	mov	rbp, rbp
	pand	xmm3, xmm4
	paddq	xmm2, xmm1
	nop	
	paddq	xmm3, xmm0
	mov	rbp, rbp
	movzx	edi, word ptr [rsi - 2]
	mov	rsp, rsp
	movd	xmm1, edi
	punpcklbw	xmm1, xmm5
	mov	rsp, rsp
	punpcklwd	xmm1, xmm5
	punpckldq	xmm1, xmm5
	movzx	edi, word ptr [rsi]
	movd	xmm0, edi
	punpcklbw	xmm0, xmm5
	nop	
	punpcklwd	xmm0, xmm5
	punpckldq	xmm0, xmm5
	pcmpeqd	xmm1, xmm6
	lea	rsi, [rsi]
	pshufd	xmm4, xmm1, 0xb1
	pand	xmm1, xmm7
	pand	xmm1, xmm4
	lea	rdi, [rdi]
	pcmpeqd	xmm0, xmm6
	pshufd	xmm4, xmm0, 0xb1
	pand	xmm0, xmm7
	pand	xmm0, xmm4
	lea	rsi, [rsi]
	paddq	xmm1, xmm2
	paddq	xmm0, xmm3
	mov	rbp, rbp
	add	rsi, 8
	lea	rdi, [rdi]
	add	rdx, -8
	lea	rsi, [rsi]
	jne	.label_572
.label_555:
	paddq	xmm0, xmm1
	pshufd	xmm1, xmm0, 0x4e
	paddq	xmm1, xmm0
	movq	r14, xmm1
	cmp	r15, rcx
	mov	rsp, rsp
	je	.label_542
	add	rbp, rax
	nop	word ptr cs:[rax + rax]
.label_534:
	movzx	eax, byte ptr [rbp]
	inc	rbp
	cmp	eax, 9
	sete	al
	movzx	eax, al
	add	r14, rax
	lea	rdi, [rdi]
	cmp	rbx, rbp
	jne	.label_534
.label_542:
	mov	rbp, rbp
	mov	r15, r13
	sub	r15, rbx
	nop	
	xor	edx, edx
	mov	rdi, rbx
	mov	rsi, r15
	nop	
	call	mbsnwidth
	movsxd	rbp, eax
	cmp	rbx, r13
	jae	.label_550
	cmp	r15, 4
	pxor	xmm5, xmm5
	nop	
	movdqa	xmm0,  xmmword ptr [word ptr [rip + label_548]]
	mov	rbp, rbp
	movdqa	xmm6, xmm0
	nop	
	movdqa	xmm0,  xmmword ptr [word ptr [rip + label_549]]
	mov	rsp, rsp
	movdqa	xmm7, xmm0
	nop	
	jb	.label_581
	lea	rdi, [rdi]
	mov	rax, r15
	lea	rsi, [rsi]
	and	rax, 0xfffffffffffffffc
	mov	rcx, r15
	lea	rsi, [rsi]
	and	rcx, 0xfffffffffffffffc
	nop	
	je	.label_581
	lea	rsi, [rsi]
	movq	xmm2, rbp
	pxor	xmm0, xmm0
	mov	rbp, rbp
	lea	rsi, [r15 - 4]
	mov	rdx, rsi
	mov	rbp, rbp
	shr	rdx, 2
	bt	rsi, 2
	nop	
	jb	.label_538
	movzx	esi, word ptr [rbx]
	movd	xmm1, esi
	punpcklbw	xmm1, xmm5
	nop	
	punpcklwd	xmm1, xmm5
	punpckldq	xmm1, xmm5
	lea	rdi, [rdi]
	movzx	esi, word ptr [rbx + 2]
	mov	rsp, rsp
	movd	xmm0, esi
	mov	rsp, rsp
	punpcklbw	xmm0, xmm5
	punpcklwd	xmm0, xmm5
	punpckldq	xmm0, xmm5
	pcmpeqd	xmm1, xmm6
	lea	rdi, [rdi]
	pshufd	xmm3, xmm1, 0xb1
	lea	rdi, [rdi]
	pand	xmm1, xmm7
	lea	rdi, [rdi]
	pand	xmm1, xmm3
	mov	rbp, rbp
	pcmpeqd	xmm0, xmm6
	pshufd	xmm3, xmm0, 0xb1
	pand	xmm0, xmm7
	lea	rsi, [rsi]
	pand	xmm0, xmm3
	paddq	xmm1, xmm2
	mov	esi, 4
	movdqa	xmm2, xmm1
	nop	
	jmp	.label_547
.label_538:
	xor	esi, esi
.label_547:
	test	rdx, rdx
	je	.label_573
	mov	rbp, rbp
	mov	rdx, rcx
	mov	rbp, rbp
	sub	rdx, rsi
	lea	rsi, [rbx + rsi + 6]
	mov	rbp, rbp
	movdqa	xmm1, xmm2
	nop	word ptr cs:[rax + rax]
.label_589:
	lea	rsi, [rsi]
	movzx	edi, word ptr [rsi - 6]
	mov	rbp, rbp
	movd	xmm2, edi
	punpcklbw	xmm2, xmm5
	punpcklwd	xmm2, xmm5
	punpckldq	xmm2, xmm5
	mov	rbp, rbp
	movzx	edi, word ptr [rsi - 4]
	lea	rdi, [rdi]
	movd	xmm3, edi
	lea	rdi, [rdi]
	punpcklbw	xmm3, xmm5
	punpcklwd	xmm3, xmm5
	punpckldq	xmm3, xmm5
	lea	rsi, [rsi]
	pcmpeqd	xmm2, xmm6
	nop	
	pshufd	xmm4, xmm2, 0xb1
	mov	rbp, rbp
	pand	xmm2, xmm7
	nop	
	pand	xmm2, xmm4
	mov	rsp, rsp
	pcmpeqd	xmm3, xmm6
	mov	rsp, rsp
	pshufd	xmm4, xmm3, 0xb1
	pand	xmm3, xmm7
	pand	xmm3, xmm4
	paddq	xmm2, xmm1
	paddq	xmm3, xmm0
	movzx	edi, word ptr [rsi - 2]
	movd	xmm1, edi
	punpcklbw	xmm1, xmm5
	punpcklwd	xmm1, xmm5
	punpckldq	xmm1, xmm5
	lea	rsi, [rsi]
	movzx	edi, word ptr [rsi]
	lea	rsi, [rsi]
	movd	xmm0, edi
	punpcklbw	xmm0, xmm5
	punpcklwd	xmm0, xmm5
	punpckldq	xmm0, xmm5
	pcmpeqd	xmm1, xmm6
	nop	
	pshufd	xmm4, xmm1, 0xb1
	mov	rbp, rbp
	pand	xmm1, xmm7
	pand	xmm1, xmm4
	pcmpeqd	xmm0, xmm6
	mov	rsp, rsp
	pshufd	xmm4, xmm0, 0xb1
	pand	xmm0, xmm7
	lea	rdi, [rdi]
	pand	xmm0, xmm4
	mov	rsp, rsp
	paddq	xmm1, xmm2
	nop	
	paddq	xmm0, xmm3
	add	rsi, 8
	add	rdx, -8
	lea	rsi, [rsi]
	jne	.label_589
.label_573:
	lea	rdi, [rdi]
	paddq	xmm0, xmm1
	pshufd	xmm1, xmm0, 0x4e
	lea	rdi, [rdi]
	paddq	xmm1, xmm0
	mov	rsp, rsp
	movq	rbp, xmm1
	cmp	r15, rcx
	mov	rbp, rbp
	je	.label_550
	add	rbx, rax
	nop	dword ptr [rax + rax]
.label_581:
	mov	rbp, rbp
	movzx	eax, byte ptr [rbx]
	inc	rbx
	lea	rsi, [rsi]
	cmp	eax, 9
	sete	al
	movzx	eax, al
	nop	
	add	rbp, rax
	cmp	r13, rbx
	jne	.label_581
	jmp	.label_550
.label_541:
	lea	rcx, [rax + 1]
	mov	qword ptr [rdi + 0x28], rcx
	mov	rbp, rbp
	mov	byte ptr [rax], 0x20
.label_550:
	test	r14, r14
	je	.label_539
	dec	r14
	lea	rdi, [rdi]
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rdi + 0x28]
	cmp	rax, qword ptr [rdi + 0x30]
	lea	rsi, [rsi]
	jb	.label_541
	lea	rsi, [rsi]
	mov	esi, 0x20
	call	__overflow
	jmp	.label_550
	nop	
.label_539:
	test	rbp, rbp
	jne	.label_553
	nop	
	xor	edi, edi
	lea	rsi, [rsi]
	mov	esi, OFFSET FLAT:.str.164
	mov	edx, 5
	call	dcgettext
	lea	rdi, [rdi]
	mov	rcx, rax
	lea	rsi, [rsi]
	mov	edi, 1
	xor	eax, eax
	mov	rbp, rbp
	mov	rsi, rcx
	mov	rsp, rsp
	call	__printf_chk
	jmp	.label_565
.label_558:
	mov	esi, 0x5f
	nop	
	call	__overflow
	mov	rsp, rsp
	jmp	.label_568
	nop	word ptr [rax + rax]
.label_553:
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	mov	rsp, rsp
	mov	rax, qword ptr [rdi + 0x28]
	cmp	rax, qword ptr [rdi + 0x30]
	jae	.label_558
	lea	rcx, [rax + 1]
	mov	rbp, rbp
	mov	qword ptr [rdi + 0x28], rcx
	mov	byte ptr [rax], 0x5f
.label_568:
	mov	rsp, rsp
	dec	rbp
	jne	.label_553
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	mov	rax, qword ptr [rdi + 0x28]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rdi + 0x30]
	jae	.label_579
	mov	rsp, rsp
	lea	rcx, [rax + 1]
	mov	qword ptr [rdi + 0x28], rcx
	mov	byte ptr [rax], 0xa
.label_565:
	lea	rsi, [rsi]
	test	r12, r12
	jne	.label_554
	mov	rbp, rbp
	jmp	.label_537
.label_578:
	xor	edi, edi
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.163
	mov	edx, 5
	lea	rdi, [rdi]
	call	dcgettext
	lea	rsi, [rsi]
	mov	rdi, rax
	mov	rsi, r12
	call	sort_die
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x40ab20

	.globl limfield
	.type limfield, @function
limfield:
	mov	rax, qword ptr [rdi]
	mov	rcx, qword ptr [rdi + 8]
	nop	
	lea	rcx, [rax + rcx - 1]
	lea	rsi, [rsi]
	mov	r9, qword ptr [rsi + 0x10]
	lea	rdi, [rdi]
	mov	r8, qword ptr [rsi + 0x18]
	cmp	r8, 1
	adc	r9, 0
	lea	rsi, [rsi]
	mov	edx,  dword ptr [dword ptr [rip + tab]]
	mov	rbp, rbp
	cmp	edx, 0x80
	lea	rdi, [rdi]
	je	.label_603
	jmp	.label_598
	nop	
.label_597:
	dec	r9
.label_603:
	cmp	rax, rcx
	mov	rsp, rsp
	jae	.label_604
	test	r9, r9
	jne	.label_607
	mov	rsp, rsp
	jmp	.label_604
	nop	dword ptr [rax]
.label_599:
	mov	rsp, rsp
	inc	rax
.label_607:
	lea	rsi, [rsi]
	cmp	rax, rcx
	mov	rsp, rsp
	jae	.label_596
	nop	
	movzx	edx, byte ptr [rax]
	cmp	byte ptr [byte ptr [rdx + blanks]],  0
	jne	.label_599
	lea	rdi, [rdi]
	jmp	.label_596
	nop	word ptr cs:[rax + rax]
.label_609:
	lea	rsi, [rsi]
	inc	rax
.label_596:
	cmp	rax, rcx
	jae	.label_597
	movzx	edx, byte ptr [rax]
	nop	
	cmp	byte ptr [byte ptr [rdx + blanks]],  0
	mov	rsp, rsp
	je	.label_609
	mov	rbp, rbp
	jmp	.label_597
.label_605:
	lea	rsi, [rsi]
	lea	r10, [rax + 1]
	lea	rdi, [rdi]
	mov	rdi, r9
	nop	
	or	rdi, r8
	lea	rsi, [rsi]
	cmovne	rax, r10
.label_598:
	lea	rsi, [rsi]
	cmp	rax, rcx
	lea	rsi, [rsi]
	jae	.label_604
	nop	
	test	r9, r9
	je	.label_604
	dec	r9
	lea	rsi, [rsi]
	jmp	.label_608
	nop	word ptr cs:[rax + rax]
.label_601:
	inc	rax
.label_608:
	cmp	rax, rcx
	nop	
	jae	.label_598
	mov	rbp, rbp
	movsx	edi, byte ptr [rax]
	nop	
	cmp	edi, edx
	mov	rbp, rbp
	jne	.label_601
	lea	rsi, [rsi]
	jmp	.label_605
.label_604:
	mov	rbp, rbp
	test	r8, r8
	je	.label_606
	mov	rbp, rbp
	cmp	byte ptr [rsi + 0x31], 0
	jne	.label_610
	lea	rsi, [rsi]
	jmp	.label_600
	nop	word ptr cs:[rax + rax]
.label_602:
	inc	rax
.label_610:
	cmp	rax, rcx
	mov	rsp, rsp
	jae	.label_600
	movzx	edx, byte ptr [rax]
	cmp	byte ptr [byte ptr [rdx + blanks]],  0
	jne	.label_602
.label_600:
	lea	rsi, [rsi]
	add	rax, r8
	lea	rsi, [rsi]
	cmp	rcx, rax
	cmovb	rax, rcx
.label_606:
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40ac80

	.globl begfield
	.type begfield, @function
begfield:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rdi]
	mov	rsp, rsp
	mov	rcx, qword ptr [rdi + 8]
	lea	rcx, [rax + rcx - 1]
	mov	r9, qword ptr [rsi]
	mov	r8, qword ptr [rsi + 8]
	lea	rdi, [rdi]
	mov	edx,  dword ptr [dword ptr [rip + tab]]
	cmp	edx, 0x80
	mov	rbp, rbp
	je	.label_611
	lea	rsi, [rsi]
	jmp	.label_623
	nop	word ptr cs:[rax + rax]
.label_614:
	dec	r9
.label_611:
	cmp	rax, rcx
	mov	rbp, rbp
	jae	.label_613
	test	r9, r9
	jne	.label_617
	jmp	.label_613
	nop	dword ptr [rax]
.label_622:
	lea	rdi, [rdi]
	inc	rax
.label_617:
	nop	
	cmp	rax, rcx
	nop	
	jae	.label_621
	mov	rsp, rsp
	movzx	edx, byte ptr [rax]
	cmp	byte ptr [byte ptr [rdx + blanks]],  0
	jne	.label_622
	jmp	.label_621
	nop	
.label_616:
	lea	rsi, [rsi]
	inc	rax
.label_621:
	lea	rdi, [rdi]
	cmp	rax, rcx
	jae	.label_614
	nop	
	movzx	edx, byte ptr [rax]
	nop	
	cmp	byte ptr [byte ptr [rdx + blanks]],  0
	je	.label_616
	jmp	.label_614
	nop	
.label_618:
	mov	rsp, rsp
	dec	r9
.label_623:
	mov	rbp, rbp
	cmp	rax, rcx
	jae	.label_613
	test	r9, r9
	je	.label_613
	nop	word ptr cs:[rax + rax]
.label_615:
	cmp	rax, rcx
	lea	rsi, [rsi]
	jae	.label_618
	movsx	edi, byte ptr [rax]
	inc	rax
	mov	rbp, rbp
	cmp	edi, edx
	jne	.label_615
	nop	
	jmp	.label_618
.label_613:
	nop	
	cmp	byte ptr [rsi + 0x30], 0
	lea	rdi, [rdi]
	jne	.label_619
	lea	rdi, [rdi]
	jmp	.label_620
	nop	word ptr [rax + rax]
.label_612:
	mov	rbp, rbp
	inc	rax
.label_619:
	lea	rsi, [rsi]
	cmp	rax, rcx
	lea	rsi, [rsi]
	jae	.label_620
	lea	rdi, [rdi]
	movzx	edx, byte ptr [rax]
	lea	rsi, [rsi]
	cmp	byte ptr [byte ptr [rdx + blanks]],  0
	lea	rsi, [rsi]
	jne	.label_612
.label_620:
	mov	rsp, rsp
	add	rax, r8
	lea	rsi, [rsi]
	cmp	rcx, rax
	mov	rsp, rsp
	cmovb	rax, rcx
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40adb0

	.globl xstrxfrm
	.type xstrxfrm, @function
xstrxfrm:
	lea	rsi, [rsi]
	push	rbp
	lea	rsi, [rsi]
	push	r15
	nop	
	push	r14
	mov	rsp, rsp
	push	rbx
	push	rax
	mov	r15, rdx
	mov	r14, rsi
	mov	rbx, rdi
	call	__errno_location
	mov	rbp, rax
	mov	dword ptr [rbp], 0
	mov	rsp, rsp
	mov	rdi, rbx
	lea	rdi, [rdi]
	mov	rsi, r14
	mov	rsp, rsp
	mov	rdx, r15
	mov	rbp, rbp
	call	strxfrm
	nop	
	mov	ebp, dword ptr [rbp]
	lea	rsi, [rsi]
	test	ebp, ebp
	lea	rsi, [rsi]
	jne	.label_624
	lea	rsi, [rsi]
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	mov	rsp, rsp
	pop	rbp
	mov	rsp, rsp
	ret	
.label_624:
	lea	rdi, [rdi]
	xor	edi, edi
	mov	rbp, rbp
	mov	esi, OFFSET FLAT:.str.160
	lea	rdi, [rdi]
	mov	edx, 5
	mov	rbp, rbp
	call	dcgettext
	lea	rdi, [rdi]
	mov	rcx, rax
	lea	rsi, [rsi]
	xor	edi, edi
	xor	eax, eax
	mov	esi, ebp
	mov	rdx, rcx
	call	error
	xor	edi, edi
	lea	rsi, [rsi]
	mov	esi, OFFSET FLAT:.str.161
	mov	edx, 5
	call	dcgettext
	mov	rbp, rbp
	mov	rcx, rax
	lea	rsi, [rsi]
	xor	edi, edi
	xor	esi, esi
	nop	
	xor	eax, eax
	lea	rsi, [rsi]
	mov	rdx, rcx
	mov	rbp, rbp
	call	error
	xor	edi, edi
	lea	rsi, [rsi]
	mov	esi, OFFSET FLAT:.str.162
	mov	edx, 5
	nop	
	call	dcgettext
	lea	rsi, [rsi]
	mov	rbx, rax
	lea	rdi, [rdi]
	xor	edi, edi
	mov	esi, 8
	mov	rsp, rsp
	mov	rdx, r14
	mov	rbp, rbp
	call	quotearg_n_style
	lea	rdi, [rdi]
	mov	rcx, rax
	mov	edi, 2
	xor	esi, esi
	xor	eax, eax
	mov	rbp, rbp
	mov	rdx, rbx
	lea	rdi, [rdi]
	call	error
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40aed0

	.globl open_input_files
	.type open_input_files, @function
open_input_files:
	push	rbp
	mov	rsp, rsp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x18
	lea	rsi, [rsi]
	mov	rbx, rdx
	mov	rbp, rbp
	mov	r14, rsi
	lea	rsi, [rsi]
	mov	r13, rdi
	mov	rax, r14
	lea	rsi, [rsi]
	shr	rax, 0x3c
	jne	.label_632
	lea	rdi, [r14*8]
	call	xmalloc
	mov	r15, rax
	nop	
	mov	qword ptr [rbx], r15
	mov	rbp, rbp
	xor	ebx, ebx
	test	r14, r14
	mov	rsp, rsp
	je	.label_628
	add	r13, 8
	lea	rdi, [rdi]
	xor	ebx, ebx
	nop	word ptr cs:[rax + rax]
.label_630:
	mov	r12, qword ptr [r13]
	lea	rdi, [rdi]
	test	r12, r12
	lea	rsi, [rsi]
	je	.label_631
	mov	al, byte ptr [r12 + 0xc]
	test	al, al
	lea	rsi, [rsi]
	je	.label_631
	movzx	eax, al
	mov	rbp, rbp
	cmp	eax, 1
	lea	rdi, [rdi]
	jne	.label_627
	mov	rsp, rsp
	mov	ebp, dword ptr [r12 + 8]
	mov	dword ptr [rsp + 8], ebp
	nop	
	mov	rdi,  qword ptr [word ptr [rip + proctab]]
	lea	rsi, [rsp]
	call	hash_delete
	mov	rsp, rsp
	test	rax, rax
	lea	rdi, [rdi]
	je	.label_627
	mov	rsp, rsp
	mov	byte ptr [rax + 0xc], 2
	mov	edi, ebp
	call	reap
.label_627:
	mov	rsp, rsp
	lea	rdi, [r12 + 0xd]
	mov	rbp, rbp
	xor	esi, esi
	lea	rsi, [rsi]
	xor	eax, eax
	mov	rsp, rsp
	call	open
	lea	rdi, [rdi]
	mov	ebp, eax
	test	ebp, ebp
	mov	rbp, rbp
	mov	eax, 0
	js	.label_626
	nop	
	mov	esi, 9
	lea	rdi, [rsp + 0x10]
	lea	rdi, [rdi]
	call	pipe_fork
	cmp	eax, -1
	mov	rbp, rbp
	je	.label_633
	lea	rsi, [rsi]
	test	eax, eax
	je	.label_635
	mov	dword ptr [r12 + 8], eax
	mov	rax,  qword ptr [word ptr [rip + proctab]]
	lea	rdi, [rdi]
	test	rax, rax
	jne	.label_625
	mov	edi, 0x2f
	xor	esi, esi
	nop	
	mov	edx, OFFSET FLAT:proctab_hasher
	mov	rbp, rbp
	mov	ecx, OFFSET FLAT:proctab_comparator
	mov	rsp, rsp
	xor	r8d, r8d
	call	hash_initialize
	mov	qword ptr [word ptr [rip + proctab]],  rax
	test	rax, rax
	je	.label_629
.label_625:
	mov	byte ptr [r12 + 0xc], 1
	lea	rdi, [rdi]
	mov	rdi, rax
	mov	rsi, r12
	call	hash_insert
	lea	rdi, [rdi]
	test	rax, rax
	mov	rbp, rbp
	je	.label_629
	mov	edi, ebp
	mov	rbp, rbp
	call	close
	mov	edi, dword ptr [rsp + 0x14]
	lea	rsi, [rsi]
	call	close
	mov	edi, dword ptr [rsp + 0x10]
	mov	esi, OFFSET FLAT:.str.52
	call	fdopen
	test	rax, rax
	jne	.label_626
	call	__errno_location
	mov	rbp, rax
	mov	rbp, rbp
	mov	r12, r14
	nop	
	mov	r14, r15
	mov	r15d, dword ptr [rbp]
	lea	rsi, [rsi]
	mov	edi, dword ptr [rsp + 0x10]
	lea	rsi, [rsi]
	call	close
	mov	rbp, rbp
	mov	dword ptr [rbp], r15d
	lea	rsi, [rsi]
	mov	r15, r14
	mov	r14, r12
	xor	eax, eax
	lea	rsi, [rsi]
	jmp	.label_626
.label_631:
	mov	rdi, qword ptr [r13 - 8]
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.52
	mov	rsp, rsp
	call	stream_open
	jmp	.label_626
.label_633:
	lea	rdi, [rdi]
	mov	r12, r14
	mov	r14, r15
	call	__errno_location
	mov	r15, rax
	mov	eax, dword ptr [r15]
	lea	rdi, [rdi]
	cmp	eax, 0x18
	nop	
	jne	.label_634
	mov	edi, ebp
	mov	rbp, rbp
	call	close
	lea	rsi, [rsi]
	mov	dword ptr [r15], 0x18
	xor	eax, eax
	lea	rdi, [rdi]
	mov	r15, r14
	mov	r14, r12
	nop	word ptr cs:[rax + rax]
.label_626:
	mov	rsp, rsp
	mov	qword ptr [r15 + rbx*8], rax
	test	rax, rax
	nop	
	je	.label_628
	nop	
	inc	rbx
	lea	rsi, [rsi]
	add	r13, 0x10
	cmp	rbx, r14
	nop	
	jb	.label_630
.label_628:
	mov	rax, rbx
	lea	rsi, [rsi]
	add	rsp, 0x18
	mov	rbp, rbp
	pop	rbx
	mov	rbp, rbp
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	mov	rsp, rsp
	pop	rbp
	ret	
.label_635:
	mov	edi, dword ptr [rsp + 0x10]
	lea	rsi, [rsi]
	call	close
	test	ebp, ebp
	je	.label_637
	xor	esi, esi
	nop	
	mov	edi, ebp
	call	dup2
	lea	rsi, [rsi]
	mov	edi, ebp
	call	close
.label_637:
	mov	ebx, dword ptr [rsp + 0x14]
	lea	rdi, [rdi]
	cmp	ebx, 1
	lea	rsi, [rsi]
	je	.label_636
	mov	esi, 1
	mov	edi, ebx
	lea	rsi, [rsi]
	call	dup2
	mov	edi, ebx
	nop	
	call	close
.label_636:
	mov	rdi,  qword ptr [word ptr [rip + compress_program]]
	mov	edx, OFFSET FLAT:.str.168
	lea	rsi, [rsi]
	xor	ecx, ecx
	xor	eax, eax
	mov	rsp, rsp
	mov	rsi, rdi
	mov	rsp, rsp
	call	execlp
	call	__errno_location
	lea	rsi, [rsi]
	mov	edi, dword ptr [rax]
	mov	esi, OFFSET FLAT:.str.169
	call	async_safe_die
.label_629:
	call	xalloc_die
.label_634:
	lea	rsi, [rsi]
	xor	edi, edi
	lea	rsi, [rsi]
	mov	ebp, eax
	mov	esi, OFFSET FLAT:.str.167
	mov	rsp, rsp
	mov	edx, 5
	call	dcgettext
	lea	rsi, [rsi]
	mov	rbx, rax
	mov	rsi,  qword ptr [word ptr [rip + compress_program]]
	nop	
	mov	edi, 4
	call	quotearg_style
	lea	rdi, [rdi]
	mov	rcx, rax
	mov	edi, 2
	xor	eax, eax
	mov	rbp, rbp
	mov	esi, ebp
	mov	rdx, rbx
	call	error
.label_632:
	call	xalloc_die
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40b250

	.globl mergefps
	.type mergefps, @function
mergefps:
	push	rbp
	push	r15
	push	r14
	lea	rsi, [rsi]
	push	r13
	mov	rsp, rsp
	push	r12
	push	rbx
	mov	rbp, rbp
	sub	rsp, 0x118
	mov	qword ptr [rsp + 0x28], r9
	mov	rbp, rbp
	mov	qword ptr [rsp + 0xd0], r8
	mov	qword ptr [rsp + 0x20], rcx
	mov	r13, rdx
	mov	qword ptr [rsp + 0x60], rsi
	lea	rsi, [rsi]
	mov	rbx, rdi
	mov	rbp, rbp
	movabs	rax, 0x24924924924924a
	lea	rsi, [rsi]
	cmp	r13, rax
	lea	rdi, [rdi]
	jae	.label_654
	nop	
	imul	rdi, r13, 0x38
	call	xmalloc
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x70], rax
	lea	rbp, [r13*8]
	mov	rdi, rbp
	mov	rsp, rsp
	call	xmalloc
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x58], rax
	mov	rdi, rbp
	call	xmalloc
	mov	qword ptr [rsp], rax
	mov	rdi, rbp
	call	xmalloc
	mov	qword ptr [rsp + 8], rax
	nop	
	mov	rax,  qword ptr [word ptr [rip + keylist]]
	mov	qword ptr [rsp + 0x100], rax
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0xe0], 0
	nop	
	test	r13, r13
	lea	rdi, [rdi]
	je	.label_639
	mov	qword ptr [rsp + 0xc0], rbx
	lea	rdi, [rdi]
	lea	rax, [rbx + 0x10]
	nop	
	mov	qword ptr [rsp + 0x80], rax
	lea	rax, [rbx + 0x40]
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x38], rax
	mov	rbp, rbp
	xor	ebp, ebp
.label_645:
	mov	qword ptr [rsp + 0x48], rbp
	lea	rsi, [rsi]
	mov	rdx, rbp
	xor	rdx, 3
	mov	rsi, -2
	sub	rsi, rbp
	imul	rcx, rbp, 0x38
	mov	qword ptr [rsp + 0x10], rcx
	mov	rax, qword ptr [rsp + 0x70]
	lea	rdi, [rax + rcx]
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x88], rdi
	lea	rdi, [rax + rcx + 0x18]
	mov	qword ptr [rsp + 0x18], rdi
	lea	rdi, [rax + rcx + 0x20]
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x78], rdi
	lea	rdi, [rax + rcx + 8]
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x108], rdi
	lea	rax, [rax + rcx + 0x30]
	nop	
	mov	qword ptr [rsp + 0xc8], rax
	mov	rax, rbp
	shl	rax, 4
	lea	rsi, [rsi]
	add	rax, qword ptr [rsp + 0xc0]
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x50], rax
	add	rdx, r13
	nop	
	mov	qword ptr [rsp + 0x110], rdx
	lea	rsi, [rsi]
	add	rsi, r13
	mov	qword ptr [rsp + 0x30], rsi
	mov	al, dl
	lea	rdi, [rdi]
	xor	ecx, ecx
	mov	r9, r13
	nop	word ptr [rax + rax]
.label_669:
	mov	rbp, rbp
	mov	qword ptr [rsp + 0xd8], rcx
	lea	rdi, [rdi]
	mov	byte ptr [rsp + 0xb8], al
	mov	r13, r9
	mov	rbp, rbp
	and	al, 3
	movzx	r12d, al
	mov	rbp, rbp
	neg	r12
	mov	r15, qword ptr [rsp + 0x110]
	sub	r15, rcx
	mov	rax, qword ptr [rsp + 0x30]
	mov	rbp, rbp
	sub	rax, rcx
	mov	qword ptr [rsp + 0xb0], rax
	lea	rax, [r13 - 1]
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x90], rax
	lea	rdi, [rdi]
	mov	rcx,  qword ptr [word ptr [rip + merge_buffer_size]]
	mov	rax,  qword ptr [word ptr [rip + sort_size]]
	xor	edx, edx
	div	r13
	cmp	rcx, rax
	nop	
	cmova	rax, rcx
	nop	word ptr cs:[rax + rax]
.label_676:
	lea	rdi, [rdi]
	mov	ecx, eax
	nop	
	and	ecx, 0x1f
	nop	
	mov	ebp, 0x20
	sub	rbp, rcx
	add	rbp, rax
	mov	rdi, rbp
	call	malloc
	test	rax, rax
	jne	.label_674
	mov	rax, rbp
	shr	rax, 1
	cmp	rbp, 0x43
	ja	.label_676
	jmp	.label_679
	nop	word ptr cs:[rax + rax]
.label_674:
	mov	rdi, qword ptr [rsp + 0x88]
	lea	rdi, [rdi]
	mov	qword ptr [rdi], rax
	mov	rax, qword ptr [rsp + 0x18]
	mov	rbp, rbp
	mov	qword ptr [rax], rbp
	mov	eax, 0x20
	lea	rsi, [rsi]
	movq	xmm0, rax
	pslldq	xmm0, 8
	mov	rax, qword ptr [rsp + 0x78]
	movdqu	xmmword ptr [rax], xmm0
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 0xc8]
	mov	byte ptr [rax], 0
	pxor	xmm0, xmm0
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0x108]
	movdqu	xmmword ptr [rax], xmm0
	mov	rbx, qword ptr [rsp + 0x28]
	mov	rbp, qword ptr [rsp + 0x48]
	mov	rsi, qword ptr [rbx + rbp*8]
	mov	r14, qword ptr [rsp + 0x50]
	mov	rdx, qword ptr [r14]
	call	fillbuf
	test	al, al
	lea	rsi, [rsi]
	jne	.label_644
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbx + rbp*8]
	mov	rsi, qword ptr [r14]
	nop	
	call	xfclose
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 0x60]
	cmp	rbp, rax
	mov	rbp, rbp
	jae	.label_650
	lea	rdi, [rdi]
	dec	rax
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x60], rax
	mov	rbp, rbp
	mov	rdi, qword ptr [r14]
	call	zaptemp
.label_650:
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 0x88]
	mov	rdi, qword ptr [rax]
	call	free
	nop	
	mov	r9, qword ptr [rsp + 0x90]
	cmp	rbp, r9
	jae	.label_684
	test	r15b, 3
	mov	rsp, rsp
	mov	rcx, qword ptr [rsp + 0x80]
	mov	rbp, rbp
	mov	rax, rbp
	mov	rsi, qword ptr [rsp + 0x28]
	je	.label_673
	nop	word ptr cs:[rax + rax]
.label_655:
	nop	
	movdqu	xmm0, xmmword ptr [rcx]
	movdqu	xmmword ptr [rcx - 0x10], xmm0
	mov	rdx, qword ptr [rsi + rax*8 + 8]
	lea	rsi, [rsi]
	mov	qword ptr [rsi + rax*8], rdx
	lea	rsi, [rsi]
	inc	rax
	lea	rsi, [rsi]
	add	rcx, 0x10
	mov	rbp, rbp
	inc	r12
	jne	.label_655
.label_673:
	lea	rsi, [rsi]
	cmp	qword ptr [rsp + 0xb0], 3
	lea	rsi, [rsi]
	jb	.label_646
	dec	r13
	mov	rbp, rbp
	mov	rcx, rax
	shl	rcx, 4
	nop	
	add	rcx, qword ptr [rsp + 0x38]
	nop	word ptr cs:[rax + rax]
.label_640:
	movups	xmm0, xmmword ptr [rcx - 0x30]
	mov	rsp, rsp
	movups	xmmword ptr [rcx - 0x40], xmm0
	mov	rdx, qword ptr [rsi + rax*8 + 8]
	mov	qword ptr [rsi + rax*8], rdx
	movups	xmm0, xmmword ptr [rcx - 0x20]
	nop	
	movups	xmmword ptr [rcx - 0x30], xmm0
	mov	rdx, qword ptr [rsi + rax*8 + 0x10]
	lea	rsi, [rsi]
	mov	qword ptr [rsi + rax*8 + 8], rdx
	movups	xmm0, xmmword ptr [rcx - 0x10]
	lea	rsi, [rsi]
	movups	xmmword ptr [rcx - 0x20], xmm0
	mov	rdx, qword ptr [rsi + rax*8 + 0x18]
	mov	qword ptr [rsi + rax*8 + 0x10], rdx
	movdqu	xmm0, xmmword ptr [rcx]
	lea	rdi, [rdi]
	movdqu	xmmword ptr [rcx - 0x10], xmm0
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rsi + rax*8 + 0x20]
	lea	rdi, [rdi]
	mov	qword ptr [rsi + rax*8 + 0x18], rdx
	nop	
	lea	rax, [rax + 4]
	lea	rdi, [rdi]
	add	rcx, 0x40
	cmp	r13, rax
	mov	rsp, rsp
	jne	.label_640
.label_646:
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rsp + 0xd8]
	lea	rsi, [rsi]
	inc	rcx
	nop	
	mov	al, byte ptr [rsp + 0xb8]
	nop	
	add	al, 3
	mov	rbp, rbp
	cmp	rbp, r9
	lea	rsi, [rsi]
	jb	.label_669
	jmp	.label_684
	nop	dword ptr [rax]
.label_644:
	nop	
	mov	rax, qword ptr [rsp + 0x88]
	mov	rsp, rsp
	mov	rax, qword ptr [rax]
	nop	
	mov	rcx, qword ptr [rsp + 0x18]
	mov	rcx, qword ptr [rcx]
	mov	rsp, rsp
	lea	rdx, [rax + rcx]
	lea	rax, [rax + rcx - 0x20]
	mov	rcx, qword ptr [rsp + 0x58]
	nop	
	mov	qword ptr [rcx + rbp*8], rax
	nop	
	mov	rax, qword ptr [rsp + 0x70]
	mov	rcx, qword ptr [rsp + 0x10]
	mov	rax, qword ptr [rax + rcx + 0x10]
	mov	rbp, rbp
	shl	rax, 5
	sub	rdx, rax
	mov	rsp, rsp
	mov	rax, qword ptr [rsp]
	mov	qword ptr [rax + rbp*8], rdx
	inc	rbp
	nop	
	add	qword ptr [rsp + 0x80], 0x10
	cmp	rbp, r13
	mov	r9, r13
	jb	.label_645
.label_684:
	lea	rsi, [rsi]
	test	r9, r9
	je	.label_639
	xor	ecx, ecx
	lea	rdi, [rdi]
	cmp	r9, 4
	lea	rsi, [rsi]
	mov	rbp, qword ptr [rsp + 8]
	lea	rdi, [rdi]
	jb	.label_648
	xor	ecx, ecx
	lea	rdi, [rdi]
	mov	rax, r9
	and	rax, 0xfffffffffffffffc
	je	.label_648
	mov	rsp, rsp
	lea	rsi, [r9 - 4]
	mov	rsp, rsp
	mov	rdx, rsi
	shr	rdx, 2
	mov	rsp, rsp
	xor	ecx, ecx
	mov	rbp, rbp
	bt	rsi, 2
	jb	.label_656
	mov	rbp, rbp
	mov	ecx, 1
	lea	rdi, [rdi]
	movq	xmm0, rcx
	lea	rdi, [rdi]
	pslldq	xmm0, 8
	movdqu	xmmword ptr [rbp], xmm0
	lea	rsi, [rsi]
	movdqa	xmm0,  xmmword ptr [word ptr [rip + label_657]]
	lea	rsi, [rsi]
	movdqu	xmmword ptr [rbp + 0x10], xmm0
	mov	ecx, 4
.label_656:
	test	rdx, rdx
	nop	
	je	.label_683
	mov	edx, 1
	movq	xmm0, rdx
	pslldq	xmm0, 8
	mov	rsp, rsp
	movdqa	xmm1,  xmmword ptr [word ptr [rip + label_657]]
	nop	dword ptr [rax]
.label_692:
	mov	rsp, rsp
	movq	xmm2, rcx
	mov	rbp, rbp
	pshufd	xmm2, xmm2, 0x44
	lea	rdi, [rdi]
	movdqa	xmm3, xmm2
	mov	rsp, rsp
	paddq	xmm3, xmm0
	paddq	xmm2, xmm1
	lea	rdi, [rdi]
	movdqu	xmmword ptr [rbp + rcx*8], xmm3
	nop	
	movdqu	xmmword ptr [rbp + rcx*8 + 0x10], xmm2
	lea	rdx, [rcx + 4]
	mov	rsp, rsp
	movq	xmm2, rdx
	pshufd	xmm2, xmm2, 0x44
	movdqa	xmm3, xmm2
	nop	
	paddq	xmm3, xmm0
	paddq	xmm2, xmm1
	movdqu	xmmword ptr [rbp + rcx*8 + 0x20], xmm3
	mov	rbp, rbp
	movdqu	xmmword ptr [rbp + rcx*8 + 0x30], xmm2
	add	rcx, 8
	mov	rbp, rbp
	cmp	rcx, rax
	nop	
	jne	.label_692
.label_683:
	cmp	r9, rax
	lea	rdi, [rdi]
	mov	rcx, rax
	je	.label_651
	nop	word ptr [rax + rax]
.label_648:
	mov	rsp, rsp
	mov	qword ptr [rbp + rcx*8], rcx
	inc	rcx
	mov	rbp, rbp
	cmp	r9, rcx
	jne	.label_648
.label_651:
	mov	rbp, rbp
	mov	ebx, 1
	cmp	r9, 1
	lea	rsi, [rsi]
	jbe	.label_662
	nop	word ptr cs:[rax + rax]
.label_688:
	mov	r12, r9
	nop	
	mov	r15, qword ptr [rbp + rbx*8 - 8]
	mov	rax, qword ptr [rsp + 0x58]
	mov	rdi, qword ptr [rax + r15*8]
	lea	rdi, [rdi]
	mov	r14, qword ptr [rbp + rbx*8]
	mov	rsi, qword ptr [rax + r14*8]
	lea	rdi, [rdi]
	call	compare
	lea	rsi, [rsi]
	test	eax, eax
	jle	.label_682
	mov	qword ptr [rbp + rbx*8 - 8], r14
	mov	qword ptr [rbp + rbx*8], r15
	xor	ebx, ebx
.label_682:
	nop	
	mov	r9, r12
	inc	rbx
	cmp	rbx, r9
	jb	.label_688
.label_662:
	mov	qword ptr [rsp + 8], rbp
	lea	rsi, [rsi]
	test	r9, r9
	je	.label_639
	mov	rbp, rbp
	lea	rcx, [r9 - 1]
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x10], rcx
	mov	r14, qword ptr [rsp + 8]
	mov	rax, r14
	lea	rdi, [rdi]
	add	rax, 8
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x18], rax
	mov	rax, qword ptr [rsp]
	add	rax, 0x10
	mov	qword ptr [rsp + 0x40], rax
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 0x58]
	lea	rdi, [rdi]
	add	rax, 0x10
	mov	qword ptr [rsp + 0x68], rax
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 0x70]
	lea	rdi, [rdi]
	lea	rax, [rax + 0x70]
	mov	qword ptr [rsp + 0xa0], rax
	nop	
	mov	rax, qword ptr [rsp + 0xc0]
	mov	rsp, rsp
	lea	rax, [rax + 0x20]
	nop	
	mov	qword ptr [rsp + 0x98], rax
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 0x28]
	mov	rsp, rsp
	lea	rax, [rax + 0x10]
	mov	qword ptr [rsp + 0xa8], rax
	lea	rbx, [r9 - 5]
	mov	rsp, rsp
	xor	esi, esi
	mov	r10, rcx
	lea	rdi, [rdi]
	lea	rax, [r9 - 2]
	mov	qword ptr [rsp + 0x108], rax
	lea	rsi, [rsi]
	xor	eax, eax
	mov	rbp, rbp
	mov	qword ptr [rsp + 0xd8], rax
	mov	rbp, rbp
	xor	eax, eax
	mov	qword ptr [rsp + 0xb0], rax
	nop	dword ptr [rax]
.label_671:
	mov	qword ptr [rsp + 0x78], r10
	mov	qword ptr [rsp + 0x110], rsi
	mov	qword ptr [rsp + 0x48], rbx
	mov	qword ptr [rsp + 0xb8], r9
	mov	rsp, rsp
	mov	r13d, ebx
	nop	
	shr	r13d, 2
	inc	r13d
	and	r13d, 3
	lea	rdi, [rdi]
	neg	r13
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x50], r13
	mov	rax, qword ptr [rsp + 0x10]
	mov	rsp, rsp
	sub	rax, rsi
	mov	qword ptr [rsp + 0x30], rax
	mov	rsp, rsp
	lea	rax, [rax - 4]
	mov	qword ptr [rsp + 0x80], rax
	mov	rsp, rsp
	shr	rax, 2
	lea	rdi, [rdi]
	inc	rax
	mov	qword ptr [rsp + 0x38], rax
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0x108]
	sub	rax, rsi
	mov	qword ptr [rsp + 0xc8], rax
	lea	rax, [r9 - 1]
	mov	qword ptr [rsp + 0x90], rax
	mov	rbp, rbp
	jmp	.label_680
	nop	word ptr cs:[rax + rax]
.label_649:
	mov	rax, qword ptr [rsp + 0x88]
	lea	rdi, [rdi]
	mov	qword ptr [r14 + rcx*8], rax
.label_680:
	mov	rbp, rbp
	mov	rbp, qword ptr [r14]
	mov	rax, qword ptr [rsp + 0x58]
	mov	r13, qword ptr [rax + rbp*8]
	movzx	eax,  byte ptr [byte ptr [rip + unique]]
	and	eax, 1
	mov	rbp, rbp
	cmp	eax, 1
	jne	.label_695
	mov	rax, qword ptr [rsp + 0xd8]
	nop	
	test	rax, rax
	mov	rsp, rsp
	je	.label_664
	mov	rdi, rax
	mov	rsi, r13
	mov	rsp, rsp
	call	compare
	lea	rdi, [rdi]
	test	eax, eax
	lea	rsi, [rsi]
	je	.label_642
	lea	rsi, [rsi]
	lea	rdi, [rsp + 0xe0]
	mov	rsi, qword ptr [rsp + 0x20]
	mov	rdx, qword ptr [rsp + 0xd0]
	lea	rsi, [rsi]
	call	write_line
.label_664:
	mov	rdx, qword ptr [r13 + 8]
	mov	rax, qword ptr [rsp + 0xb0]
	cmp	rax, rdx
	jae	.label_689
	nop	word ptr cs:[rax + rax]
.label_700:
	mov	rbp, rbp
	test	rax, rax
	nop	
	je	.label_698
	add	rax, rax
	cmp	rax, rdx
	mov	rbp, rbp
	jb	.label_700
	jmp	.label_702
	nop	word ptr cs:[rax + rax]
.label_695:
	mov	rbp, rbp
	mov	rdi, r13
	nop	
	mov	rsi, qword ptr [rsp + 0x20]
	mov	rdx, qword ptr [rsp + 0xd0]
	call	write_line
	mov	rbp, rbp
	jmp	.label_642
.label_689:
	mov	rdi, qword ptr [rsp + 0xe0]
	jmp	.label_690
.label_698:
	mov	rax, rdx
.label_702:
	mov	qword ptr [rsp + 0xb0], rax
	mov	rbx, rax
	mov	rdi, qword ptr [rsp + 0xe0]
	call	free
	mov	rdi, rbx
	lea	rsi, [rsi]
	call	xmalloc
	mov	rdi, rax
	mov	rsp, rsp
	mov	qword ptr [rsp + 0xe0], rdi
	lea	rsi, [rsi]
	mov	rdx, qword ptr [r13 + 8]
.label_690:
	nop	
	mov	qword ptr [rsp + 0xe8], rdx
	lea	rdi, [rdi]
	mov	rsi, qword ptr [r13]
	mov	rsp, rsp
	call	memcpy
	cmp	qword ptr [rsp + 0x100], 0
	je	.label_668
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [r13]
	mov	rdx, qword ptr [r13 + 0x10]
	nop	
	sub	rdx, rcx
	add	rdx, rax
	mov	qword ptr [rsp + 0xf0], rdx
	mov	rdx, qword ptr [r13 + 0x18]
	mov	rbp, rbp
	sub	rdx, rcx
	add	rdx, rax
	mov	qword ptr [rsp + 0xf8], rdx
.label_668:
	lea	rax, [rsp + 0xe0]
	mov	qword ptr [rsp + 0xd8], rax
.label_642:
	mov	rax, qword ptr [rsp]
	cmp	qword ptr [rax + rbp*8], r13
	jae	.label_691
	mov	rbp, rbp
	add	r13, -0x20
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0x58]
	lea	rdi, [rdi]
	mov	qword ptr [rax + rbp*8], r13
	jmp	.label_694
	nop	word ptr cs:[rax + rax]
.label_691:
	mov	rbp, rbp
	imul	rbx, rbp, 0x38
	mov	rsp, rsp
	mov	r13, qword ptr [rsp + 0x70]
	mov	rbp, rbp
	lea	rdi, [r13 + rbx]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0x28]
	mov	rsi, qword ptr [rax + rbp*8]
	lea	rsi, [rsi]
	mov	rax, rbp
	mov	rbp, rbp
	shl	rax, 4
	mov	r12, qword ptr [rsp + 0xc0]
	mov	rdx, qword ptr [r12 + rax]
	mov	rbp, rbp
	call	fillbuf
	test	al, al
	mov	rsp, rsp
	je	.label_677
	mov	rax, qword ptr [r13 + rbx]
	mov	rbp, rbp
	mov	rcx, qword ptr [r13 + rbx + 0x18]
	mov	rsp, rsp
	lea	rdx, [rax + rcx]
	mov	rsi, r13
	lea	r13, [rax + rcx - 0x20]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0x58]
	nop	
	mov	qword ptr [rax + rbp*8], r13
	mov	rax, qword ptr [rsi + rbx + 0x10]
	shl	rax, 5
	lea	rsi, [rsi]
	sub	rdx, rax
	mov	rsp, rsp
	mov	rax, qword ptr [rsp]
	nop	
	mov	qword ptr [rax + rbp*8], rdx
.label_694:
	mov	qword ptr [rsp + 0x88], rbp
	mov	r12, qword ptr [rsp + 0xb8]
	lea	rdi, [rdi]
	cmp	r12, 2
	lea	rsi, [rsi]
	mov	ebx, 1
	mov	r15d, 1
	mov	ecx, 0
	mov	rsp, rsp
	jb	.label_649
	nop	word ptr cs:[rax + rax]
.label_693:
	mov	rbp, qword ptr [r14 + rbx*8]
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0x58]
	mov	rsi, qword ptr [rax + rbp*8]
	lea	rsi, [rsi]
	mov	rdi, r13
	nop	
	call	compare
	mov	rbp, rbp
	test	eax, eax
	js	.label_701
	sete	al
	mov	rsp, rsp
	cmp	qword ptr [rsp + 0x88], rbp
	setb	cl
	lea	rdi, [rdi]
	lea	rdx, [rbx + 1]
	mov	rbp, rbp
	and	cl, al
	lea	rdi, [rdi]
	cmove	r15, rdx
	lea	rdi, [rdi]
	test	cl, cl
	lea	rdi, [rdi]
	cmove	rbx, r12
.label_701:
	mov	r12, rbx
	lea	rbx, [r12 + r15]
	mov	rsp, rsp
	shr	rbx, 1
	cmp	r15, r12
	jb	.label_693
	lea	rsi, [rsi]
	mov	rax, r15
	dec	rax
	mov	ecx, 0
	lea	rsi, [rsi]
	je	.label_649
	lea	rdi, [rdi]
	lea	rcx, [r15 - 1]
	cmp	rcx, 4
	mov	rsp, rsp
	mov	esi, 0
	jb	.label_663
	lea	rsi, [rsi]
	mov	rdx, rcx
	lea	rdi, [rdi]
	and	rdx, 0xfffffffffffffffc
	mov	esi, 0
	je	.label_663
	mov	rbp, rbp
	lea	rbp, [r15 - 5]
	lea	rdi, [rdi]
	mov	esi, ebp
	shr	esi, 2
	inc	esi
	test	sil, 3
	mov	rbp, rbp
	mov	esi, 0
	nop	
	je	.label_667
	lea	rdi, [rdi]
	add	r15d, -5
	shr	r15d, 2
	mov	rbp, rbp
	inc	r15d
	and	r15d, 3
	neg	r15
	xor	esi, esi
	nop	word ptr [rax + rax]
.label_670:
	movdqu	xmm0, xmmword ptr [r14 + rsi*8 + 8]
	movdqu	xmm1, xmmword ptr [r14 + rsi*8 + 0x18]
	movdqu	xmmword ptr [r14 + rsi*8], xmm0
	movdqu	xmmword ptr [r14 + rsi*8 + 0x10], xmm1
	add	rsi, 4
	inc	r15
	jne	.label_670
.label_667:
	mov	rbp, rbp
	cmp	rbp, 0xc
	jb	.label_675
	nop	word ptr cs:[rax + rax]
.label_704:
	lea	rdi, [rdi]
	mov	rbp, rsi
	nop	
	or	rbp, 1
	lea	rsi, [rsi]
	movups	xmm0, xmmword ptr [r14 + rbp*8]
	lea	rdi, [rdi]
	movups	xmm1, xmmword ptr [r14 + rbp*8 + 0x10]
	movups	xmmword ptr [r14 + rsi*8], xmm0
	nop	
	movups	xmmword ptr [r14 + rsi*8 + 0x10], xmm1
	lea	rbp, [rsi + 4]
	mov	rsp, rsp
	or	rbp, 1
	mov	rbp, rbp
	movups	xmm0, xmmword ptr [r14 + rbp*8]
	movups	xmm1, xmmword ptr [r14 + rbp*8 + 0x10]
	mov	rbp, rbp
	movups	xmmword ptr [r14 + rsi*8 + 0x20], xmm0
	movups	xmmword ptr [r14 + rsi*8 + 0x30], xmm1
	lea	rbp, [rsi + 8]
	or	rbp, 1
	mov	rbp, rbp
	movups	xmm0, xmmword ptr [r14 + rbp*8]
	mov	rbp, rbp
	movups	xmm1, xmmword ptr [r14 + rbp*8 + 0x10]
	lea	rsi, [rsi]
	movups	xmmword ptr [r14 + rsi*8 + 0x40], xmm0
	mov	rbp, rbp
	movups	xmmword ptr [r14 + rsi*8 + 0x50], xmm1
	lea	rbp, [rsi + 0xc]
	or	rbp, 1
	lea	rsi, [rsi]
	movdqu	xmm0, xmmword ptr [r14 + rbp*8]
	mov	rbp, rbp
	movdqu	xmm1, xmmword ptr [r14 + rbp*8 + 0x10]
	nop	
	movdqu	xmmword ptr [r14 + rsi*8 + 0x60], xmm0
	mov	rbp, rbp
	movdqu	xmmword ptr [r14 + rsi*8 + 0x70], xmm1
	lea	rdi, [rdi]
	add	rsi, 0x10
	cmp	rsi, rdx
	jne	.label_704
.label_675:
	cmp	rcx, rdx
	mov	rbp, rbp
	mov	rsi, rdx
	je	.label_687
	nop	word ptr cs:[rax + rax]
.label_663:
	sub	rcx, rsi
	mov	rdx, qword ptr [rsp + 0x18]
	lea	rdx, [rdx + rsi*8]
	nop	dword ptr [rax]
.label_652:
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rdx]
	mov	rsp, rsp
	mov	qword ptr [rdx - 8], rsi
	nop	
	add	rdx, 8
	mov	rbp, rbp
	dec	rcx
	jne	.label_652
.label_687:
	nop	
	mov	rcx, rax
	nop	
	jmp	.label_649
	nop	word ptr cs:[rax + rax]
.label_677:
	mov	rsi, qword ptr [rsp + 0xb8]
	cmp	rsi, 2
	mov	rbp, rbp
	jb	.label_660
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0x30]
	lea	rsi, [rsi]
	test	al, 1
	lea	rdi, [rdi]
	jne	.label_696
	mov	eax, 1
	mov	rbp, rbp
	mov	rdx, qword ptr [rsp + 0x28]
	mov	rcx, qword ptr [rsp + 0x110]
	lea	rsi, [rsi]
	jmp	.label_703
	nop	dword ptr [rax]
.label_660:
	mov	rdx, qword ptr [rsp + 0x28]
	mov	rsp, rsp
	jmp	.label_659
	nop	dword ptr [rax]
.label_696:
	mov	rax, qword ptr [r14 + 8]
	mov	rsp, rsp
	cmp	rax, rbp
	mov	rcx, qword ptr [rsp + 0x110]
	jbe	.label_653
	nop	
	dec	rax
	mov	rbp, rbp
	mov	qword ptr [r14 + 8], rax
.label_653:
	mov	rbp, rbp
	mov	rbp, qword ptr [r14]
	mov	rsp, rsp
	mov	eax, 2
	mov	rdx, qword ptr [rsp + 0x28]
.label_703:
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x110], rcx
	cmp	qword ptr [rsp + 0x108], rcx
	je	.label_659
	nop	word ptr [rax + rax]
.label_699:
	lea	rsi, [rsi]
	mov	rcx, qword ptr [r14 + rax*8]
	cmp	rcx, rbp
	mov	rsp, rsp
	jbe	.label_658
	dec	rcx
	mov	rbp, rbp
	mov	qword ptr [r14 + rax*8], rcx
.label_658:
	lea	rsi, [rsi]
	mov	rcx, qword ptr [r14 + rax*8 + 8]
	cmp	rcx, qword ptr [r14]
	lea	rsi, [rsi]
	jbe	.label_686
	mov	rsp, rsp
	dec	rcx
	mov	qword ptr [r14 + rax*8 + 8], rcx
.label_686:
	add	rax, 2
	lea	rdi, [rdi]
	mov	rbp, qword ptr [r14]
	mov	rsp, rsp
	cmp	rsi, rax
	mov	rsp, rsp
	jne	.label_699
.label_659:
	mov	qword ptr [rsp + 0x28], rdx
	mov	rdi, qword ptr [rdx + rbp*8]
	mov	rbp, rbp
	mov	r15, rbp
	shl	r15, 4
	mov	rbp, rbp
	mov	rsi, qword ptr [r12 + r15]
	lea	rsi, [rsi]
	call	xfclose
	mov	rcx, qword ptr [rsp + 0x60]
	cmp	rbp, rcx
	lea	rdi, [rdi]
	mov	rbx, rbp
	jae	.label_681
	lea	rax, [r12 + r15]
	dec	rcx
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x60], rcx
	mov	rdi, qword ptr [rax]
	nop	
	call	zaptemp
.label_681:
	mov	rbp, rbx
	lea	rdi, [rdi]
	imul	rbx, rbp, 0x38
	mov	rdi, qword ptr [r13 + rbx]
	call	free
	mov	r9, qword ptr [rsp + 0x90]
	lea	rsi, [rsi]
	cmp	rbp, r9
	mov	r10, qword ptr [rsp + 0x78]
	mov	r11, qword ptr [rsp + 0x30]
	lea	rdi, [rdi]
	jae	.label_643
	lea	rsi, [rsi]
	mov	eax, r11d
	mov	rbp, rbp
	sub	eax, ebp
	lea	rdi, [rdi]
	test	al, 1
	mov	rbp, rbp
	mov	rax, rbp
	je	.label_666
	lea	rax, [rbp + 1]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rsp + 0x28]
	mov	rcx, qword ptr [rdx + rbp*8 + 8]
	mov	rbp, rbp
	mov	qword ptr [rdx + rbp*8], rcx
	mov	rcx, rax
	shl	rcx, 4
	movups	xmm0, xmmword ptr [r12 + rcx]
	movups	xmmword ptr [r12 + r15], xmm0
	mov	rsp, rsp
	mov	rcx, qword ptr [r13 + rbx + 0x68]
	lea	rsi, [rsi]
	mov	qword ptr [r13 + rbx + 0x30], rcx
	movdqu	xmm0, xmmword ptr [r13 + rbx + 0x38]
	nop	
	movdqu	xmm1, xmmword ptr [r13 + rbx + 0x48]
	movdqu	xmm2, xmmword ptr [r13 + rbx + 0x58]
	movdqu	xmmword ptr [r13 + rbx + 0x20], xmm2
	mov	rbp, rbp
	movdqu	xmmword ptr [r13 + rbx + 0x10], xmm1
	nop	
	movdqu	xmmword ptr [r13 + rbx], xmm0
	mov	rbp, rbp
	mov	rdx, qword ptr [rsp + 0x58]
	mov	rcx, qword ptr [rdx + rbp*8 + 8]
	mov	qword ptr [rdx + rbp*8], rcx
	mov	rdx, qword ptr [rsp]
	mov	rcx, qword ptr [rdx + rbp*8 + 8]
	mov	rsp, rsp
	mov	qword ptr [rdx + rbp*8], rcx
.label_666:
	cmp	qword ptr [rsp + 0xc8], rbp
	mov	rsp, rsp
	je	.label_643
	mov	r8, r10
	mov	rbp, rbp
	sub	r8, rax
	mov	rcx, qword ptr [rsp + 0x40]
	lea	rdi, [rdi]
	lea	rdx, [rcx + rax*8]
	mov	rcx, qword ptr [rsp + 0x68]
	lea	rsi, [rcx + rax*8]
	imul	rdi, rax, 0x38
	add	rdi, qword ptr [rsp + 0xa0]
	mov	rcx, qword ptr [rsp + 0xa8]
	lea	rbp, [rcx + rax*8]
	lea	rdi, [rdi]
	shl	rax, 4
	add	rax, qword ptr [rsp + 0x98]
	xor	ecx, ecx
	nop	word ptr cs:[rax + rax]
.label_641:
	mov	rbp, rbp
	mov	rbx, qword ptr [rbp + rcx*8 - 8]
	mov	qword ptr [rbp + rcx*8 - 0x10], rbx
	mov	rbp, rbp
	movups	xmm0, xmmword ptr [rax - 0x10]
	movups	xmmword ptr [rax - 0x20], xmm0
	nop	
	mov	rbx, qword ptr [rdi - 8]
	mov	qword ptr [rdi - 0x40], rbx
	lea	rdi, [rdi]
	movups	xmm0, xmmword ptr [rdi - 0x38]
	movups	xmm1, xmmword ptr [rdi - 0x28]
	lea	rsi, [rsi]
	movups	xmm2, xmmword ptr [rdi - 0x18]
	movups	xmmword ptr [rdi - 0x50], xmm2
	movups	xmmword ptr [rdi - 0x60], xmm1
	movups	xmmword ptr [rdi - 0x70], xmm0
	lea	rdi, [rdi]
	mov	rbx, qword ptr [rsi + rcx*8 - 8]
	mov	qword ptr [rsi + rcx*8 - 0x10], rbx
	nop	
	mov	rbx, qword ptr [rdx + rcx*8 - 8]
	mov	rsp, rsp
	mov	qword ptr [rdx + rcx*8 - 0x10], rbx
	lea	rsi, [rsi]
	mov	rbx, qword ptr [rbp + rcx*8]
	mov	rsp, rsp
	mov	qword ptr [rbp + rcx*8 - 8], rbx
	movups	xmm0, xmmword ptr [rax]
	movups	xmmword ptr [rax - 0x10], xmm0
	mov	rsp, rsp
	mov	rbx, qword ptr [rdi + 0x30]
	lea	rdi, [rdi]
	mov	qword ptr [rdi - 8], rbx
	movdqu	xmm0, xmmword ptr [rdi]
	mov	rbp, rbp
	movdqu	xmm1, xmmword ptr [rdi + 0x10]
	movdqu	xmm2, xmmword ptr [rdi + 0x20]
	mov	rsp, rsp
	movdqu	xmmword ptr [rdi - 0x18], xmm2
	mov	rbp, rbp
	movdqu	xmmword ptr [rdi - 0x28], xmm1
	movdqu	xmmword ptr [rdi - 0x38], xmm0
	nop	
	mov	rbx, qword ptr [rsi + rcx*8]
	mov	qword ptr [rsi + rcx*8 - 8], rbx
	nop	
	mov	rbx, qword ptr [rdx + rcx*8]
	mov	qword ptr [rdx + rcx*8 - 8], rbx
	add	rcx, 2
	mov	rbp, rbp
	add	rdi, 0x70
	mov	rbp, rbp
	add	rax, 0x20
	cmp	r8, rcx
	lea	rsi, [rsi]
	jne	.label_641
.label_643:
	mov	rsp, rsp
	test	r9, r9
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rsp + 0x110]
	mov	rbx, qword ptr [rsp + 0x48]
	lea	rsi, [rsi]
	je	.label_638
	cmp	r11, 3
	mov	ecx, 0
	lea	rdi, [rdi]
	mov	rbp, qword ptr [rsp + 0xb8]
	jbe	.label_665
	mov	rax, r11
	and	rax, 0xfffffffffffffffc
	mov	rsp, rsp
	mov	ecx, 0
	je	.label_665
	mov	rcx, qword ptr [rsp + 0x38]
	mov	rsp, rsp
	test	cl, 3
	mov	rbp, rbp
	mov	ecx, 0
	mov	rdx, qword ptr [rsp + 0x50]
	je	.label_697
	nop	
.label_678:
	lea	rdi, [rdi]
	movdqu	xmm0, xmmword ptr [r14 + rcx*8 + 8]
	movdqu	xmm1, xmmword ptr [r14 + rcx*8 + 0x18]
	mov	rbp, rbp
	movdqu	xmmword ptr [r14 + rcx*8], xmm0
	mov	rbp, rbp
	movdqu	xmmword ptr [r14 + rcx*8 + 0x10], xmm1
	add	rcx, 4
	lea	rsi, [rsi]
	inc	rdx
	jne	.label_678
.label_697:
	cmp	qword ptr [rsp + 0x80], 0xc
	lea	rsi, [rsi]
	jb	.label_661
	nop	word ptr cs:[rax + rax]
.label_647:
	mov	rdx, rcx
	or	rdx, 1
	movups	xmm0, xmmword ptr [r14 + rdx*8]
	movups	xmm1, xmmword ptr [r14 + rdx*8 + 0x10]
	movups	xmmword ptr [r14 + rcx*8], xmm0
	lea	rdi, [rdi]
	movups	xmmword ptr [r14 + rcx*8 + 0x10], xmm1
	lea	rdx, [rcx + 4]
	or	rdx, 1
	movups	xmm0, xmmword ptr [r14 + rdx*8]
	movups	xmm1, xmmword ptr [r14 + rdx*8 + 0x10]
	movups	xmmword ptr [r14 + rcx*8 + 0x20], xmm0
	movups	xmmword ptr [r14 + rcx*8 + 0x30], xmm1
	lea	rdx, [rcx + 8]
	lea	rdi, [rdi]
	or	rdx, 1
	lea	rdi, [rdi]
	movups	xmm0, xmmword ptr [r14 + rdx*8]
	movups	xmm1, xmmword ptr [r14 + rdx*8 + 0x10]
	lea	rsi, [rsi]
	movups	xmmword ptr [r14 + rcx*8 + 0x40], xmm0
	nop	
	movups	xmmword ptr [r14 + rcx*8 + 0x50], xmm1
	lea	rdx, [rcx + 0xc]
	mov	rbp, rbp
	or	rdx, 1
	movdqu	xmm0, xmmword ptr [r14 + rdx*8]
	lea	rdi, [rdi]
	movdqu	xmm1, xmmword ptr [r14 + rdx*8 + 0x10]
	movdqu	xmmword ptr [r14 + rcx*8 + 0x60], xmm0
	movdqu	xmmword ptr [r14 + rcx*8 + 0x70], xmm1
	add	rcx, 0x10
	cmp	rcx, rax
	lea	rdi, [rdi]
	jne	.label_647
.label_661:
	nop	
	cmp	r11, rax
	mov	rcx, rax
	nop	
	je	.label_685
	nop	dword ptr [rax + rax]
.label_665:
	inc	rcx
	nop	word ptr cs:[rax + rax]
.label_672:
	mov	rax, qword ptr [r14 + rcx*8]
	mov	qword ptr [r14 + rcx*8 - 8], rax
	inc	rcx
	cmp	rbp, rcx
	jne	.label_672
.label_685:
	inc	rsi
	dec	r10
	mov	rsp, rsp
	dec	rbx
	test	r9, r9
	jne	.label_671
.label_638:
	mov	rbp, rbp
	mov	qword ptr [rsp + 8], r14
	cmp	qword ptr [rsp + 0xd8], 0
	mov	rbp, rbp
	je	.label_639
	lea	rdi, [rdi]
	test	byte ptr [byte ptr [rip + unique]],  1
	je	.label_639
	lea	rdi, [rsp + 0xe0]
	mov	rsi, qword ptr [rsp + 0x20]
	mov	rsp, rsp
	mov	rdx, qword ptr [rsp + 0xd0]
	call	write_line
	mov	rdi, qword ptr [rsp + 0xe0]
	mov	rbp, rbp
	call	free
.label_639:
	mov	rsp, rsp
	mov	rdi, qword ptr [rsp + 0x20]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rsp + 0xd0]
	call	xfclose
	mov	rdi, qword ptr [rsp + 0x28]
	lea	rsi, [rsi]
	call	free
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rsp + 0x70]
	call	free
	nop	
	mov	rdi, qword ptr [rsp + 8]
	mov	rbp, rbp
	call	free
	mov	rdi, qword ptr [rsp]
	call	free
	mov	rdi, qword ptr [rsp + 0x58]
	call	free
	add	rsp, 0x118
	pop	rbx
	mov	rbp, rbp
	pop	r12
	pop	r13
	mov	rsp, rsp
	pop	r14
	mov	rbp, rbp
	pop	r15
	pop	rbp
	ret	
.label_679:
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 0x88]
	lea	rdi, [rdi]
	mov	qword ptr [rax], 0
	call	xalloc_die
.label_654:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40c4e0

	.globl maybe_create_temp
	.type maybe_create_temp, @function
maybe_create_temp:
	push	rbp
	nop	
	push	r15
	push	r14
	mov	rbp, rbp
	push	r13
	push	r12
	lea	rdi, [rdi]
	push	rbx
	sub	rsp, 0xa8
	mov	dword ptr [rsp + 0x9c], esi
	mov	qword ptr [rsp + 0xa0], rdi
	mov	rax,  qword ptr [word ptr [rip + create_temp_file.temp_dir_index]]
	mov	rcx,  qword ptr [word ptr [rip + temp_dirs]]
	mov	r12, qword ptr [rcx + rax*8]
	mov	rdi, r12
	lea	rdi, [rdi]
	call	strlen
	nop	
	mov	rbp, rax
	lea	rdi, [rbp + 0x20]
	and	rdi, 0xfffffffffffffff8
	call	xmalloc
	nop	
	mov	r15, rax
	mov	rsp, rsp
	lea	rbx, [r15 + 0xd]
	mov	rdi, rbx
	mov	rsi, r12
	mov	rdx, rbp
	call	memcpy
	lea	rdi, [rdi]
	movabs	rax, 0x58585874726f732f
	mov	rsp, rsp
	mov	qword ptr [r15 + rbp + 0xd], rax
	nop	
	mov	dword ptr [r15 + rbp + 0x15], 0x585858
	mov	qword ptr [r15], 0
	mov	rbp, rbp
	mov	rax,  qword ptr [word ptr [rip + create_temp_file.temp_dir_index]]
	lea	rsi, [rsi]
	inc	rax
	xor	ecx, ecx
	cmp	rax,  qword ptr [word ptr [rip + temp_dir_count]]
	je	.label_713
	mov	rbp, rbp
	mov	rcx, rax
.label_713:
	lea	rdi, [rdi]
	mov	qword ptr [word ptr [rip + create_temp_file.temp_dir_index]],  rcx
	lea	rdx, [rsp + 0x18]
	xor	edi, edi
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:caught_signals
	call	pthread_sigmask
	lea	rdi, [rdi]
	test	eax, eax
	mov	rsp, rsp
	sete	byte ptr [rsp + 0x10]
	mov	esi, 0x80000
	mov	rdi, rbx
	nop	
	mov	qword ptr [rsp + 8], rbx
	lea	rdi, [rdi]
	call	mkostemp_safer
	lea	rdi, [rdi]
	mov	ebp, eax
	nop	
	test	ebp, ebp
	js	.label_714
	lea	rdi, [rdi]
	mov	rax,  qword ptr [word ptr [rip + temptail]]
	mov	qword ptr [rax], r15
	mov	qword ptr [word ptr [rip + temptail]],  r15
.label_714:
	mov	rsp, rsp
	call	__errno_location
	mov	r14, rax
	mov	r13d, dword ptr [r14]
	cmp	byte ptr [rsp + 0x10], 0
	je	.label_717
	mov	edi, 2
	mov	rsp, rsp
	xor	edx, edx
	lea	rdi, [rdi]
	lea	rsi, [rsp + 0x18]
	call	pthread_sigmask
.label_717:
	mov	dword ptr [r14], r13d
	lea	rdi, [rdi]
	test	ebp, ebp
	js	.label_708
	xor	eax, eax
	test	r15, r15
	lea	rdi, [rdi]
	je	.label_705
	mov	rbp, rbp
	mov	byte ptr [r15 + 0xc], 0
	cmp	qword ptr [word ptr [rip + compress_program]],  0
	nop	
	je	.label_711
	lea	rdi, [rsp + 0x10]
	lea	rsi, [rsi]
	mov	esi, 4
	mov	rsp, rsp
	call	pipe_fork
	mov	rbp, rbp
	mov	dword ptr [r15 + 8], eax
	mov	rsp, rsp
	test	eax, eax
	lea	rsi, [rsi]
	jle	.label_718
	mov	rbp, rbp
	mov	edi, ebp
	nop	
	call	close
	lea	rsi, [rsi]
	mov	edi, dword ptr [rsp + 0x10]
	call	close
	mov	rsp, rsp
	mov	ebp, dword ptr [rsp + 0x14]
	mov	rdi,  qword ptr [word ptr [rip + proctab]]
	test	rdi, rdi
	mov	rbp, rbp
	jne	.label_707
	mov	edi, 0x2f
	xor	esi, esi
	mov	rsp, rsp
	mov	edx, OFFSET FLAT:proctab_hasher
	mov	ecx, OFFSET FLAT:proctab_comparator
	mov	rbp, rbp
	xor	r8d, r8d
	lea	rsi, [rsi]
	call	hash_initialize
	lea	rsi, [rsi]
	mov	rdi, rax
	lea	rsi, [rsi]
	mov	qword ptr [word ptr [rip + proctab]],  rdi
	mov	rsp, rsp
	test	rdi, rdi
	je	.label_716
.label_707:
	lea	rdi, [rdi]
	mov	byte ptr [r15 + 0xc], 1
	lea	rsi, [rsi]
	mov	rsi, r15
	mov	rsp, rsp
	call	hash_insert
	mov	rbp, rbp
	test	rax, rax
	mov	rsp, rsp
	jne	.label_711
	call	xalloc_die
.label_708:
	mov	rsp, rsp
	cmp	r13d, 0x18
	mov	rsp, rsp
	jne	.label_706
	mov	eax, dword ptr [rsp + 0x9c]
	lea	rdi, [rdi]
	test	al, al
	mov	rbp, rbp
	je	.label_706
	lea	rdi, [rdi]
	mov	rdi, r15
	mov	rsp, rsp
	call	free
	mov	rsp, rsp
	xor	eax, eax
	jmp	.label_705
.label_718:
	je	.label_712
.label_711:
	lea	rdi, [rdi]
	mov	esi, OFFSET FLAT:.str.166
	lea	rdi, [rdi]
	mov	edi, ebp
	mov	rsp, rsp
	call	fdopen
	mov	rcx, qword ptr [rsp + 0xa0]
	mov	qword ptr [rcx], rax
	test	rax, rax
	lea	rsi, [rsi]
	mov	rax, r15
	je	.label_715
.label_705:
	add	rsp, 0xa8
	pop	rbx
	pop	r12
	nop	
	pop	r13
	mov	rbp, rbp
	pop	r14
	pop	r15
	nop	
	pop	rbp
	mov	rsp, rsp
	ret	
.label_715:
	nop	
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.176
	mov	edx, 5
	lea	rdi, [rdi]
	call	dcgettext
	mov	rdi, rax
	mov	rbp, rbp
	mov	rsi, qword ptr [rsp + 8]
	call	sort_die
.label_706:
	mov	rbp, rbp
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.177
	mov	edx, 5
	call	dcgettext
	nop	
	mov	rbx, rax
	lea	rsi, [rsi]
	mov	edi, 4
	lea	rsi, [rsi]
	mov	rsi, r12
	nop	
	call	quotearg_style
	mov	rcx, rax
	mov	edi, 2
	xor	eax, eax
	mov	esi, r13d
	lea	rsi, [rsi]
	mov	rdx, rbx
	call	error
.label_712:
	mov	edi, dword ptr [rsp + 0x14]
	mov	rsp, rsp
	call	close
	cmp	ebp, 1
	je	.label_710
	mov	esi, 1
	lea	rdi, [rdi]
	mov	edi, ebp
	call	dup2
	mov	edi, ebp
	lea	rsi, [rsi]
	call	close
.label_710:
	nop	
	mov	ebx, dword ptr [rsp + 0x10]
	test	ebx, ebx
	mov	rbp, rbp
	je	.label_709
	lea	rsi, [rsi]
	xor	esi, esi
	mov	rsp, rsp
	mov	edi, ebx
	call	dup2
	mov	rsp, rsp
	mov	edi, ebx
	nop	
	call	close
.label_709:
	mov	rdi,  qword ptr [word ptr [rip + compress_program]]
	mov	rsp, rsp
	xor	edx, edx
	xor	eax, eax
	lea	rsi, [rsi]
	mov	rsi, rdi
	call	execlp
	mov	edi, dword ptr [r14]
	mov	esi, OFFSET FLAT:.str.175
	mov	rsp, rsp
	call	async_safe_die
.label_716:
	lea	rdi, [rdi]
	call	xalloc_die
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x40c880

	.globl pipe_fork
	.type pipe_fork, @function
pipe_fork:
	mov	rbp, rbp
	push	rbp
	nop	
	push	r15
	push	r14
	push	r13
	lea	rdi, [rdi]
	push	r12
	push	rbx
	mov	rbp, rbp
	sub	rsp, 0x98
	lea	rdi, [rdi]
	mov	r13, rsi
	mov	rbx, rdi
	lea	rsi, [rsi]
	mov	esi, 0x80000
	lea	rsi, [rsi]
	call	rpl_pipe2
	mov	ebp, 0xffffffff
	test	eax, eax
	nop	
	js	.label_727
	lea	rdi, [rdi]
	mov	eax,  dword ptr [dword ptr [rip + nmerge]]
	lea	rsi, [rsi]
	inc	eax
	nop	
	cmp	eax,  dword ptr [dword ptr [rip + nprocs]]
	jae	.label_719
	mov	edi, 0xffffffff
	call	reap
	lea	rdi, [rdi]
	cmp	dword ptr [dword ptr [rip + nprocs]],  0
	jle	.label_719
	nop	
.label_720:
	mov	rsp, rsp
	xor	edi, edi
	call	reap
	lea	rsi, [rsi]
	test	eax, eax
	lea	rsi, [rsi]
	je	.label_719
	mov	rbp, rbp
	mov	eax,  dword ptr [dword ptr [rip + nprocs]]
	test	eax, eax
	mov	rbp, rbp
	jg	.label_720
.label_719:
	nop	
	test	r13, r13
	lea	rdi, [rdi]
	je	.label_721
	mov	qword ptr [rsp], rbx
	lea	r15, [rsp + 0x10]
	lea	rsi, [rsi]
	movsd	xmm0,  qword ptr [word ptr [rip + label_728]]
	movsd	qword ptr [rsp + 0x90], xmm0
	lea	rsi, [rsi]
	call	__errno_location
	mov	r12, rax
	nop	dword ptr [rax]
.label_722:
	xor	edi, edi
	mov	esi, OFFSET FLAT:caught_signals
	mov	rdx, r15
	call	pthread_sigmask
	test	eax, eax
	lea	rdi, [rdi]
	sete	byte ptr [rsp + 8]
	nop	
	mov	r14,  qword ptr [word ptr [rip + temphead]]
	mov	rsp, rsp
	mov	qword ptr [word ptr [rip + temphead]],  0
	call	fork
	mov	ebp, eax
	mov	rsp, rsp
	mov	ebx, dword ptr [r12]
	test	ebp, ebp
	je	.label_724
	mov	qword ptr [word ptr [rip + temphead]],  r14
.label_724:
	nop	
	cmp	byte ptr [rsp + 8], 0
	je	.label_723
	mov	edi, 2
	xor	edx, edx
	mov	rsi, r15
	call	pthread_sigmask
.label_723:
	lea	rsi, [rsi]
	mov	dword ptr [r12], ebx
	mov	rsp, rsp
	test	ebp, ebp
	jns	.label_726
	lea	rdi, [rdi]
	cmp	ebx, 0xb
	nop	
	jne	.label_726
	dec	r13
	movsd	xmm0, qword ptr [rsp + 0x90]
	mov	rbp, rbp
	call	xnanosleep
	cmp	dword ptr [dword ptr [rip + nprocs]],  0
	jle	.label_725
	nop	word ptr cs:[rax + rax]
.label_730:
	mov	rbp, rbp
	xor	edi, edi
	call	reap
	test	eax, eax
	je	.label_725
	mov	eax,  dword ptr [dword ptr [rip + nprocs]]
	mov	rbp, rbp
	test	eax, eax
	mov	rsp, rsp
	jg	.label_730
.label_725:
	mov	rbp, rbp
	movsd	xmm0, qword ptr [rsp + 0x90]
	addsd	xmm0, xmm0
	movsd	qword ptr [rsp + 0x90], xmm0
	test	r13, r13
	jne	.label_722
.label_726:
	mov	rbp, rbp
	test	ebp, ebp
	js	.label_729
	je	.label_721
	inc	dword ptr [dword ptr [rip + nprocs]]
	nop	
	jmp	.label_727
.label_721:
	xor	ebp, ebp
	xor	edi, edi
	nop	
	call	close
	mov	rbp, rbp
	mov	edi, 1
	mov	rbp, rbp
	call	close
	jmp	.label_727
.label_729:
	call	__errno_location
	mov	rsp, rsp
	mov	r15, rax
	lea	rdi, [rdi]
	mov	r14d, dword ptr [r15]
	lea	rdi, [rdi]
	mov	rbx, qword ptr [rsp]
	lea	rdi, [rdi]
	mov	edi, dword ptr [rbx]
	lea	rdi, [rdi]
	call	close
	nop	
	mov	edi, dword ptr [rbx + 4]
	mov	rsp, rsp
	call	close
	mov	rbp, rbp
	mov	dword ptr [r15], r14d
.label_727:
	mov	rbp, rbp
	mov	eax, ebp
	nop	
	add	rsp, 0x98
	lea	rsi, [rsi]
	pop	rbx
	pop	r12
	pop	r13
	mov	rbp, rbp
	pop	r14
	pop	r15
	nop	
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40cac0

	.globl async_safe_die
	.type async_safe_die, @function
async_safe_die:
	push	rbp
	push	rbx
	lea	rdi, [rdi]
	sub	rsp, 0x18
	mov	rbx, rsi
	mov	ebp, edi
	lea	rsi, [rsi]
	mov	rdi, rbx
	call	strlen
	mov	edi, 2
	mov	rsi, rbx
	lea	rdi, [rdi]
	mov	rdx, rax
	lea	rsi, [rsi]
	call	write
	lea	rdi, [rdi]
	test	ebp, ebp
	mov	rbp, rbp
	je	.label_731
	nop	
	lea	rsi, [rsp + 0xc]
	nop	
	mov	edi, ebp
	lea	rsi, [rsi]
	call	inttostr
	lea	rsi, [rsi]
	mov	rbx, rax
	mov	edi, 2
	lea	rsi, [rsi]
	mov	esi, OFFSET FLAT:.str.172
	nop	
	mov	edx, 8
	mov	rsp, rsp
	call	write
	mov	rdi, rbx
	call	strlen
	mov	edi, 2
	mov	rsp, rsp
	mov	rsi, rbx
	mov	rdx, rax
	call	write
.label_731:
	mov	edi, 2
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.173
	mov	rsp, rsp
	mov	edx, 1
	call	write
	mov	rsp, rsp
	mov	edi, 2
	mov	rbp, rbp
	call	_exit
	.section	.text
	.align	16
	#Procedure 0x40cb70

	.globl reap
	.type reap, @function
reap:
	mov	rbp, rbp
	push	rbp
	lea	rsi, [rsi]
	push	rbx
	mov	rsp, rsp
	sub	rsp, 0x18
	nop	
	mov	ebp, edi
	cmp	ebp, 1
	sbb	edi, edi
	mov	rbp, rbp
	or	edi, ebp
	test	ebp, ebp
	sete	al
	movzx	edx, al
	lea	rsi, [rsp + 4]
	mov	rbp, rbp
	call	waitpid
	lea	rsi, [rsi]
	mov	ebx, eax
	lea	rdi, [rdi]
	test	ebx, ebx
	js	.label_732
	jle	.label_734
	test	ebp, ebp
	mov	rbp, rbp
	jg	.label_735
	mov	dword ptr [rsp + 0x10], ebx
	mov	rbp, rbp
	mov	rdi,  qword ptr [word ptr [rip + proctab]]
	lea	rsi, [rsi]
	lea	rsi, [rsp + 8]
	mov	rbp, rbp
	call	hash_delete
	lea	rsi, [rsi]
	test	rax, rax
	je	.label_734
	lea	rsi, [rsi]
	mov	byte ptr [rax + 0xc], 2
.label_735:
	movzx	eax, word ptr [rsp + 4]
	test	ax, 0xff7f
	jne	.label_733
	dec	dword ptr [dword ptr [rip + nprocs]]
.label_734:
	lea	rdi, [rdi]
	mov	eax, ebx
	add	rsp, 0x18
	pop	rbx
	pop	rbp
	ret	
.label_732:
	mov	rsp, rsp
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.170
	lea	rdi, [rdi]
	mov	edx, 5
	lea	rdi, [rdi]
	call	dcgettext
	mov	rbp, rax
	mov	rsp, rsp
	mov	rsi,  qword ptr [word ptr [rip + compress_program]]
	mov	rbp, rbp
	mov	edi, 4
	call	quotearg_style
	mov	rsp, rsp
	mov	rcx, rax
	mov	rsp, rsp
	mov	edi, 2
	xor	eax, eax
	mov	esi, ebx
	mov	rsp, rsp
	mov	rdx, rbp
	lea	rdi, [rdi]
	call	error
.label_733:
	mov	rbp, rbp
	xor	edi, edi
	mov	rbp, rbp
	mov	esi, OFFSET FLAT:.str.171
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	rsi,  qword ptr [word ptr [rip + compress_program]]
	mov	edi, 4
	call	quotearg_style
	mov	rcx, rax
	lea	rdi, [rdi]
	mov	edi, 2
	xor	esi, esi
	mov	rsp, rsp
	xor	eax, eax
	mov	rdx, rbx
	nop	
	call	error
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40ccb0

	.globl proctab_hasher
	.type proctab_hasher, @function
proctab_hasher:
	mov	rsp, rsp
	movsxd	rax, dword ptr [rdi + 8]
	mov	rsp, rsp
	xor	edx, edx
	div	rsi
	mov	rax, rdx
	lea	rdi, [rdi]
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40ccd0

	.globl proctab_comparator
	.type proctab_comparator, @function
proctab_comparator:
	mov	rsp, rsp
	mov	eax, dword ptr [rdi + 8]
	cmp	eax, dword ptr [rsi + 8]
	nop	
	sete	al
	mov	rbp, rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40ccf0

	.globl zaptemp
	.type zaptemp, @function
zaptemp:
	push	rbp
	nop	
	push	r15
	nop	
	push	r14
	push	r13
	lea	rsi, [rsi]
	push	r12
	push	rbx
	sub	rsp, 0xa8
	mov	r14, rdi
	lea	rsi, [rsi]
	mov	ebx, OFFSET FLAT:temphead
	nop	word ptr cs:[rax + rax]
.label_736:
	mov	rbp, rbx
	mov	rbx, qword ptr [rbp]
	lea	rax, [rbx + 0xd]
	lea	rdi, [rdi]
	cmp	rax, r14
	mov	rsp, rsp
	jne	.label_736
	mov	rbp, rbp
	movzx	eax, byte ptr [rbx + 0xc]
	cmp	eax, 1
	nop	
	jne	.label_738
	mov	rbp, rbp
	mov	r15d, dword ptr [rbx + 8]
	mov	dword ptr [rsp + 0x98], r15d
	mov	rdi,  qword ptr [word ptr [rip + proctab]]
	lea	rsi, [rsp + 0x90]
	mov	rsp, rsp
	call	hash_delete
	test	rax, rax
	mov	rsp, rsp
	je	.label_738
	mov	rbp, rbp
	mov	byte ptr [rax + 0xc], 2
	mov	edi, r15d
	nop	
	call	reap
.label_738:
	mov	r12, qword ptr [rbx]
	lea	r15, [rsp + 0x10]
	lea	rdi, [rdi]
	xor	edi, edi
	mov	esi, OFFSET FLAT:caught_signals
	mov	rdx, r15
	lea	rsi, [rsi]
	call	pthread_sigmask
	mov	rbp, rbp
	test	eax, eax
	mov	rsp, rsp
	sete	byte ptr [rsp + 8]
	mov	rdi, r14
	lea	rsi, [rsi]
	call	unlink
	mov	rbp, rbp
	mov	r13d, eax
	lea	rsi, [rsi]
	call	__errno_location
	mov	eax, dword ptr [rax]
	mov	rbp, rbp
	mov	dword ptr [rsp + 0xa4], eax
	mov	rbp, rbp
	mov	qword ptr [rbp], r12
	cmp	byte ptr [rsp + 8], 0
	nop	
	je	.label_737
	mov	edi, 2
	xor	edx, edx
	mov	rsi, r15
	call	pthread_sigmask
.label_737:
	test	r13d, r13d
	lea	rdi, [rdi]
	je	.label_740
	lea	rdi, [rdi]
	xor	edi, edi
	mov	rbp, rbp
	mov	esi, OFFSET FLAT:.str.174
	mov	rbp, rbp
	mov	edx, 5
	call	dcgettext
	lea	rdi, [rdi]
	mov	r15, rax
	lea	rdi, [rdi]
	xor	edi, edi
	lea	rsi, [rsi]
	mov	esi, 3
	mov	rdx, r14
	lea	rsi, [rsi]
	call	quotearg_n_style_colon
	mov	rsp, rsp
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, dword ptr [rsp + 0xa4]
	mov	rsp, rsp
	mov	rdx, r15
	lea	rsi, [rsi]
	call	error
.label_740:
	test	r12, r12
	lea	rsi, [rsi]
	jne	.label_739
	mov	rbp, rbp
	mov	qword ptr [word ptr [rip + temptail]],  rbp
.label_739:
	mov	rdi, rbx
	call	free
	add	rsp, 0xa8
	mov	rsp, rsp
	pop	rbx
	mov	rsp, rsp
	pop	r12
	lea	rdi, [rdi]
	pop	r13
	lea	rsi, [rsi]
	pop	r14
	mov	rsp, rsp
	pop	r15
	pop	rbp
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40ce90

	.globl sortlines
	.type sortlines, @function
sortlines:
	push	rbp
	mov	rsp, rsp
	push	r15
	mov	rbp, rbp
	push	r14
	mov	rsp, rsp
	push	r13
	nop	
	push	r12
	mov	rsp, rsp
	push	rbx
	lea	rsi, [rsi]
	sub	rsp, 0xb8
	mov	qword ptr [rsp + 0x78], r9
	mov	qword ptr [rsp + 0x88], r8
	mov	r14, rcx
	nop	
	mov	qword ptr [rsp + 0x38], rdx
	mov	r12, rsi
	mov	rbx, rdi
	mov	rcx, qword ptr [rsp + 0xf0]
	nop	
	mov	rbp, qword ptr [r14 + 0x28]
	mov	r15, qword ptr [r14 + 0x30]
	mov	r13, r12
	shr	r13, 1
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x40], rbx
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x48], r13
	mov	qword ptr [rsp + 0x50], rdx
	mov	rax, qword ptr [r14 + 0x40]
	mov	qword ptr [rsp + 0x58], rax
	mov	qword ptr [rsp + 0x60], r8
	mov	qword ptr [rsp + 0x68], r9
	mov	qword ptr [rsp + 0x70], rcx
	cmp	r12, 2
	jb	.label_748
	lea	rax, [r15 + rbp]
	mov	rbp, rbp
	cmp	rax, 0x20000
	jb	.label_748
	lea	rdi, [rsp + 0xa0]
	lea	rcx, [rsp + 0x40]
	mov	rsp, rsp
	xor	esi, esi
	mov	edx, OFFSET FLAT:sortlines_thread
	lea	rsi, [rsi]
	call	pthread_create
	lea	rsi, [rsi]
	test	eax, eax
	mov	rbp, qword ptr [r14 + 0x28]
	mov	rsp, rsp
	je	.label_765
	mov	r15, qword ptr [r14 + 0x30]
.label_748:
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0x38]
	shl	rax, 5
	mov	r12, rbx
	sub	r12, rax
	cmp	r15, 2
	mov	rbp, rbp
	jb	.label_771
	mov	rax, rbp
	mov	rbp, rbp
	shl	rax, 5
	mov	rdi, rbx
	mov	rsp, rsp
	sub	rdi, rax
	mov	rax, rbp
	mov	rsp, rsp
	shl	rax, 4
	and	rax, 0xffffffffffffffe0
	mov	rdx, r12
	lea	rsi, [rsi]
	sub	rdx, rax
	nop	
	xor	ecx, ecx
	mov	rsi, r15
	mov	rsp, rsp
	call	sequential_sort
.label_771:
	mov	rbp, rbp
	cmp	rbp, 2
	mov	rsp, rsp
	jb	.label_784
	lea	rdi, [rdi]
	xor	ecx, ecx
	nop	
	mov	rdi, rbx
	mov	rsp, rsp
	mov	rsi, rbp
	lea	rdi, [rdi]
	mov	rdx, r12
	mov	rsp, rsp
	call	sequential_sort
.label_784:
	mov	rsp, rsp
	mov	qword ptr [r14], rbx
	lea	rsi, [rsi]
	shl	rbp, 5
	sub	rbx, rbp
	lea	rsi, [rsi]
	mov	qword ptr [r14 + 8], rbx
	mov	qword ptr [r14 + 0x10], rbx
	lea	rdi, [rdi]
	shl	r15, 5
	lea	rsi, [rsi]
	sub	rbx, r15
	mov	rsp, rsp
	mov	qword ptr [r14 + 0x18], rbx
	lea	rsi, [rsi]
	mov	rbx, qword ptr [rsp + 0x88]
	lea	r15, [rbx + 8]
	nop	
	mov	qword ptr [rsp + 0xb0], r15
	lea	rdi, [rdi]
	mov	rdi, r15
	call	pthread_mutex_lock
	mov	rdi, qword ptr [rbx]
	mov	rsi, r14
	call	heap_insert
	mov	byte ptr [r14 + 0x54], 1
	lea	r13, [rbx + 0x30]
	mov	qword ptr [rsp + 0xa8], r13
	nop	
	mov	rdi, r13
	lea	rdi, [rdi]
	call	pthread_cond_signal
	mov	rbp, rbp
	mov	rdi, r15
	lea	rdi, [rdi]
	jmp	.label_768
	nop	dword ptr [rax]
.label_796:
	mov	rdi, rbp
.label_768:
	lea	rdi, [rdi]
	call	pthread_mutex_unlock
	lea	rdi, [rdi]
	mov	rdi, r15
	call	pthread_mutex_lock
	nop	
	jmp	.label_793
	nop	dword ptr [rax]
.label_779:
	mov	rdi, r13
	lea	rdi, [rdi]
	mov	rsi, r15
	mov	rsp, rsp
	call	pthread_cond_wait
.label_793:
	mov	rdi, qword ptr [rbx]
	mov	rbp, rbp
	call	heap_remove_top
	mov	r12, rax
	mov	rbp, rbp
	test	r12, r12
	mov	rsp, rsp
	je	.label_779
	mov	rdi, r15
	call	pthread_mutex_unlock
	mov	rsp, rsp
	lea	rbp, [r12 + 0x58]
	nop	
	mov	rdi, rbp
	call	pthread_mutex_lock
	mov	byte ptr [r12 + 0x54], 0
	lea	rsi, [rsi]
	mov	eax, dword ptr [r12 + 0x50]
	test	eax, eax
	mov	rsp, rsp
	je	.label_791
	lea	rdi, [rdi]
	mov	rdi, qword ptr [r12]
	mov	rsi, qword ptr [r12 + 8]
	lea	ecx, [rax + rax + 2]
	mov	rsp, rsp
	mov	rdx, qword ptr [rsp + 0x38]
	mov	rbp, rbp
	shr	rdx, cl
	lea	r14, [rdx + 1]
	cmp	eax, 1
	mov	rsp, rsp
	jbe	.label_801
	mov	rsp, rsp
	mov	rcx, qword ptr [r12 + 0x10]
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x90], rcx
	mov	rbp, rbp
	mov	rax, qword ptr [r12 + 0x20]
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x80], rax
	mov	rax, qword ptr [rax]
	cmp	rdi, rcx
	je	.label_761
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x10], rbp
	mov	rcx, qword ptr [r12 + 0x18]
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x98], rcx
	cmp	rsi, rcx
	mov	qword ptr [rsp + 0x20], rsi
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x30], rdi
	mov	rbp, rbp
	mov	rcx, rsi
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x18], rsi
	mov	r15, rdi
	mov	rbp, rdi
	mov	rsp, rsp
	mov	qword ptr [rsp + 8], rdi
	mov	rbp, rbp
	je	.label_760
	nop	dword ptr [rax]
.label_766:
	mov	rsp, rsp
	mov	r13, rax
	mov	r14, rdx
	mov	rsp, rsp
	cmp	r14, -1
	mov	rsp, rsp
	je	.label_775
	lea	rsi, [rsi]
	lea	rbp, [r15 - 0x20]
	lea	rbx, [rcx - 0x20]
	mov	rdi, rbp
	mov	rsi, rbx
	mov	qword ptr [rsp + 0x28], rcx
	call	compare
	lea	rdi, [rdi]
	test	eax, eax
	lea	rdi, [rdi]
	jle	.label_792
	mov	rsp, rsp
	mov	qword ptr [r12 + 8], rbx
	movups	xmm0, xmmword ptr [rbx]
	mov	rbp, rbp
	movups	xmm1, xmmword ptr [rbx + 0x10]
	movups	xmmword ptr [r13 - 0x10], xmm1
	lea	rdi, [rdi]
	movups	xmmword ptr [r13 - 0x20], xmm0
	nop	
	mov	qword ptr [rsp + 0x20], rbx
	nop	
	mov	rcx, rbx
	lea	rsi, [rsi]
	jmp	.label_795
	nop	dword ptr [rax]
.label_792:
	mov	qword ptr [r12], rbp
	movups	xmm0, xmmword ptr [rbp]
	mov	rsp, rsp
	movups	xmm1, xmmword ptr [rbp + 0x10]
	movups	xmmword ptr [r13 - 0x10], xmm1
	movups	xmmword ptr [r13 - 0x20], xmm0
	nop	
	mov	qword ptr [rsp + 0x30], rbp
	mov	r15, rbp
	nop	
	mov	rcx, qword ptr [rsp + 0x28]
.label_795:
	mov	rsp, rsp
	cmp	r15, qword ptr [rsp + 0x90]
	je	.label_753
	lea	rax, [r13 - 0x20]
	mov	rsp, rsp
	lea	rdx, [r14 - 1]
	cmp	rcx, qword ptr [rsp + 0x98]
	mov	rbp, rbp
	jne	.label_766
	mov	rax, r15
	jmp	.label_808
	nop	dword ptr [rax]
.label_801:
	mov	r13, qword ptr [r12 + 0x10]
	cmp	rdi, r13
	mov	rbp, rbp
	je	.label_772
	mov	qword ptr [rsp + 0x90], r13
	nop	
	mov	qword ptr [rsp + 0x10], rbp
	mov	rbp, rbp
	mov	rcx, qword ptr [r12 + 0x18]
	mov	qword ptr [rsp + 0x28], rcx
	lea	rdi, [rdi]
	mov	rbx, r12
	mov	qword ptr [rsp + 0x20], rsi
	mov	qword ptr [rsp + 0x30], rdi
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x80], rdi
	nop	
	mov	qword ptr [rsp + 0x98], rsi
	lea	rdi, [rdi]
	mov	rbp, rsi
	mov	qword ptr [rsp + 0x18], rsi
	mov	r12, rdi
	mov	rsp, rsp
	mov	qword ptr [rsp + 8], rdi
	nop	word ptr cs:[rax + rax]
.label_802:
	mov	r15, r14
	lea	rsi, [rsi]
	cmp	rbp, rcx
	nop	
	je	.label_797
	test	r15, r15
	je	.label_764
	mov	rsp, rsp
	lea	r13, [r12 - 0x20]
	nop	
	mov	r14, rbp
	lea	rbp, [r14 - 0x20]
	mov	rsp, rsp
	mov	rdi, r13
	mov	rsp, rsp
	mov	rsi, rbp
	nop	
	call	compare
	test	eax, eax
	lea	rsi, [rsi]
	jle	.label_744
	mov	qword ptr [rbx + 8], rbp
	lea	rsi, [rsi]
	movzx	eax,  byte ptr [byte ptr [rip + unique]]
	lea	rdi, [rdi]
	and	eax, 1
	cmp	eax, 1
	lea	rsi, [rsi]
	jne	.label_747
	cmp	qword ptr [word ptr [rip + saved_line]],  0
	je	.label_755
	lea	rsi, [rsi]
	mov	esi, OFFSET FLAT:saved_line
	mov	rbp, rbp
	mov	rdi, rbp
	call	compare
	test	eax, eax
	lea	rdi, [rdi]
	je	.label_800
.label_755:
	nop	
	movups	xmm0, xmmword ptr [rbp]
	movups	xmm1, xmmword ptr [rbp + 0x10]
	movups	xmmword ptr [word ptr [rip + label_285]],  xmm1
	movups	xmmword ptr [word ptr [rip + saved_line]],  xmm0
.label_747:
	lea	rdi, [rdi]
	mov	rdi, rbp
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rsp + 0x78]
	mov	rsp, rsp
	mov	rdx, qword ptr [rsp + 0xf0]
	mov	rbp, rbp
	call	write_line
.label_800:
	mov	qword ptr [rsp + 0x20], rbp
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x98], rbp
	mov	r13, r12
	lea	rsi, [rsi]
	jmp	.label_770
	nop	dword ptr [rax]
.label_744:
	lea	rsi, [rsi]
	mov	qword ptr [rbx], r13
	movzx	eax,  byte ptr [byte ptr [rip + unique]]
	lea	rdi, [rdi]
	and	eax, 1
	cmp	eax, 1
	mov	rbp, r14
	mov	rsp, rsp
	jne	.label_786
	lea	rsi, [rsi]
	cmp	qword ptr [word ptr [rip + saved_line]],  0
	mov	rbp, rbp
	je	.label_798
	mov	esi, OFFSET FLAT:saved_line
	lea	rsi, [rsi]
	mov	rdi, r13
	call	compare
	nop	
	test	eax, eax
	je	.label_805
.label_798:
	mov	rsp, rsp
	movups	xmm0, xmmword ptr [r13]
	movups	xmm1, xmmword ptr [r13 + 0x10]
	movups	xmmword ptr [word ptr [rip + label_285]],  xmm1
	movups	xmmword ptr [word ptr [rip + saved_line]],  xmm0
.label_786:
	mov	rdi, r13
	mov	rsi, qword ptr [rsp + 0x78]
	mov	rbp, rbp
	mov	rdx, qword ptr [rsp + 0xf0]
	lea	rdi, [rdi]
	call	write_line
.label_805:
	mov	qword ptr [rsp + 0x30], r13
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x80], r13
.label_770:
	mov	rcx, qword ptr [rsp + 0x28]
	lea	r14, [r15 - 1]
	lea	rsi, [rsi]
	cmp	r13, qword ptr [rsp + 0x90]
	lea	rdi, [rdi]
	mov	r12, r13
	jne	.label_802
	mov	r13, qword ptr [rsp + 0x90]
	mov	r12, r13
	nop	
	mov	rsi, qword ptr [rsp + 0x18]
	mov	rdi, qword ptr [rsp + 8]
	mov	rsp, rsp
	jmp	.label_781
.label_761:
	mov	qword ptr [rsp + 0x10], rbp
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x20], rsi
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x30], rdi
	mov	qword ptr [rsp + 0x90], rdi
	mov	rsp, rsp
	mov	r15, rdi
	lea	rdi, [rdi]
	mov	rcx, rsi
	mov	rsp, rsp
	mov	rbp, rdi
	jmp	.label_777
.label_772:
	mov	rbx, r12
	mov	qword ptr [rsp + 0x10], rbp
	mov	qword ptr [rsp + 0x20], rsi
	nop	
	mov	qword ptr [rsp + 0x30], rdi
	nop	
	mov	r12, rdi
	nop	
	mov	rcx, rsi
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x80], rdi
	mov	rdx, rsi
	lea	rsi, [rsi]
	jmp	.label_783
.label_797:
	mov	r14, r15
	nop	
	mov	rsi, qword ptr [rsp + 0x18]
	mov	rsp, rsp
	mov	rdi, qword ptr [rsp + 8]
	lea	rdi, [rdi]
	mov	r13, qword ptr [rsp + 0x90]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rsp + 0x98]
	mov	rbp, rbp
	jmp	.label_783
.label_764:
	mov	rsi, qword ptr [rsp + 0x18]
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rsp + 8]
	mov	r13, qword ptr [rsp + 0x90]
.label_781:
	mov	rdx, qword ptr [rsp + 0x98]
	lea	rsi, [rsi]
	dec	r15
	lea	rdi, [rdi]
	mov	rcx, rbp
	lea	rdi, [rdi]
	mov	r14, r15
.label_783:
	mov	rax, rsi
	mov	rbp, rbp
	sub	rax, rdx
	nop	
	sar	rax, 5
	mov	r15, qword ptr [rbx + 0x30]
	lea	rdi, [rdi]
	cmp	r15, rax
	jne	.label_757
	mov	qword ptr [rsp + 0x28], rax
	mov	qword ptr [rsp + 0x90], rbx
	nop	
	cmp	r12, r13
	lea	rsi, [rsi]
	je	.label_769
	mov	rbp, rbp
	test	r14, r14
	lea	rsi, [rsi]
	je	.label_769
	mov	qword ptr [rsp + 8], rdi
	mov	qword ptr [rsp + 0x18], rsi
	nop	
	add	r12, -0x20
	nop	
	mov	ebp, 1
	sub	rbp, r14
	nop	word ptr cs:[rax + rax]
.label_746:
	mov	rbp, rbp
	mov	rbx, r12
	lea	rdi, [rdi]
	movzx	eax,  byte ptr [byte ptr [rip + unique]]
	mov	rbp, rbp
	and	eax, 1
	cmp	eax, 1
	jne	.label_780
	cmp	qword ptr [word ptr [rip + saved_line]],  0
	je	.label_789
	nop	
	mov	esi, OFFSET FLAT:saved_line
	mov	rdi, rbx
	mov	rsp, rsp
	call	compare
	test	eax, eax
	lea	rdi, [rdi]
	je	.label_794
.label_789:
	movups	xmm0, xmmword ptr [rbx]
	mov	rsp, rsp
	movups	xmm1, xmmword ptr [rbx + 0x10]
	movups	xmmword ptr [word ptr [rip + label_285]],  xmm1
	movups	xmmword ptr [word ptr [rip + saved_line]],  xmm0
.label_780:
	mov	rdi, rbx
	mov	rsi, qword ptr [rsp + 0x78]
	mov	rdx, qword ptr [rsp + 0xf0]
	call	write_line
.label_794:
	mov	rsp, rsp
	cmp	r13, rbx
	mov	rsp, rsp
	je	.label_803
	lea	r12, [rbx - 0x20]
	test	rbp, rbp
	nop	
	lea	rbp, [rbp + 1]
	jne	.label_746
.label_803:
	lea	rsi, [rsi]
	mov	r12, qword ptr [rsp + 0x90]
	mov	qword ptr [r12], rbx
	mov	r15, qword ptr [rsp + 0xb0]
	mov	rbp, rbp
	mov	r13, qword ptr [rsp + 0xa8]
	mov	rbp, qword ptr [rsp + 0x20]
	lea	rdi, [rdi]
	jmp	.label_752
	nop	word ptr cs:[rax + rax]
.label_757:
	nop	
	mov	rax, rdi
	sub	rax, qword ptr [rsp + 0x80]
	sar	rax, 5
	mov	rsp, rsp
	cmp	qword ptr [rbx + 0x28], rax
	mov	r12, rbx
	jne	.label_778
	test	r14, r14
	mov	rsp, rsp
	je	.label_778
	nop	
	mov	r13, qword ptr [r12 + 0x18]
	mov	rsp, rsp
	cmp	rcx, r13
	nop	
	je	.label_778
	mov	qword ptr [rsp + 8], rdi
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x18], rsi
	mov	rbp, rbp
	add	rcx, -0x20
	mov	ebx, 1
	lea	rsi, [rsi]
	sub	rbx, r14
	nop	
.label_758:
	lea	rsi, [rsi]
	mov	rbp, rcx
	movzx	eax,  byte ptr [byte ptr [rip + unique]]
	and	eax, 1
	nop	
	cmp	eax, 1
	jne	.label_790
	cmp	qword ptr [word ptr [rip + saved_line]],  0
	lea	rdi, [rdi]
	je	.label_799
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:saved_line
	nop	
	mov	rdi, rbp
	call	compare
	test	eax, eax
	je	.label_806
.label_799:
	lea	rdi, [rdi]
	movups	xmm0, xmmword ptr [rbp]
	movups	xmm1, xmmword ptr [rbp + 0x10]
	lea	rdi, [rdi]
	movups	xmmword ptr [word ptr [rip + label_285]],  xmm1
	movups	xmmword ptr [word ptr [rip + saved_line]],  xmm0
.label_790:
	nop	
	mov	rdi, rbp
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rsp + 0x78]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rsp + 0xf0]
	lea	rsi, [rsi]
	call	write_line
.label_806:
	cmp	r13, rbp
	nop	
	je	.label_788
	lea	rcx, [rbp - 0x20]
	lea	rsi, [rsi]
	test	rbx, rbx
	lea	rbx, [rbx + 1]
	lea	rsi, [rsi]
	jne	.label_758
.label_788:
	lea	rdi, [rdi]
	mov	qword ptr [r12 + 8], rbp
	mov	r8, r15
	lea	rsi, [rsi]
	mov	r15, qword ptr [rsp + 0xb0]
	lea	rsi, [rsi]
	mov	r13, qword ptr [rsp + 0xa8]
	mov	rbx, qword ptr [rsp + 0x30]
	jmp	.label_751
.label_778:
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 8], rdi
	mov	qword ptr [rsp + 0x18], rsi
	mov	r8, r15
	lea	rdi, [rdi]
	mov	r15, qword ptr [rsp + 0xb0]
	mov	r13, qword ptr [rsp + 0xa8]
	mov	rbp, qword ptr [rsp + 0x20]
	lea	rsi, [rsi]
	mov	rbx, qword ptr [rsp + 0x30]
	mov	rsp, rsp
	jmp	.label_751
.label_769:
	mov	qword ptr [rsp + 8], rdi
	mov	qword ptr [rsp + 0x18], rsi
	mov	rsp, rsp
	mov	r15, qword ptr [rsp + 0xb0]
	lea	rdi, [rdi]
	mov	r13, qword ptr [rsp + 0xa8]
	mov	rbp, qword ptr [rsp + 0x20]
	mov	rsp, rsp
	mov	rbx, qword ptr [rsp + 0x30]
	mov	r12, qword ptr [rsp + 0x90]
.label_752:
	mov	r8, qword ptr [rsp + 0x28]
	mov	rbp, rbp
	jmp	.label_751
.label_775:
	mov	rbp, r15
	jmp	.label_807
.label_753:
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0x90]
.label_808:
	mov	rbp, r15
	nop	
	add	r13, -0x20
	nop	
	mov	r15, rax
.label_807:
	mov	rax, r13
.label_760:
	mov	rsi, qword ptr [rsp + 0x18]
	mov	rdi, qword ptr [rsp + 8]
.label_777:
	mov	rsp, rsp
	mov	rdx, rsi
	lea	rdi, [rdi]
	sub	rdx, rcx
	mov	rbp, rbp
	sar	rdx, 5
	mov	r8, qword ptr [r12 + 0x30]
	lea	rdi, [rdi]
	cmp	r8, rdx
	jne	.label_750
	cmp	r15, qword ptr [rsp + 0x90]
	je	.label_741
	test	r14, r14
	je	.label_741
	mov	qword ptr [rsp + 8], rdi
	mov	qword ptr [rsp + 0x18], rsi
	nop	
	mov	rcx, qword ptr [r12 + 0x10]
	lea	rdi, [rdi]
	add	r15, -0x20
	mov	rbp, rbp
	mov	edx, 1
	mov	rsp, rsp
	sub	rdx, r14
	nop	
.label_782:
	mov	rbp, rbp
	mov	rbx, r15
	movups	xmm0, xmmword ptr [rbx]
	lea	rsi, [rsi]
	movups	xmm1, xmmword ptr [rbx + 0x10]
	nop	
	movups	xmmword ptr [rax - 0x10], xmm1
	movups	xmmword ptr [rax - 0x20], xmm0
	lea	rax, [rax - 0x20]
	cmp	rcx, rbx
	mov	rbp, rbp
	je	.label_767
	lea	r15, [rbx - 0x20]
	test	rdx, rdx
	nop	
	lea	rdx, [rdx + 1]
	jne	.label_782
.label_767:
	nop	
	mov	qword ptr [r12], rbx
	nop	
	mov	r15, qword ptr [rsp + 0xb0]
	lea	rdi, [rdi]
	mov	r13, qword ptr [rsp + 0xa8]
	lea	rsi, [rsi]
	mov	rbp, qword ptr [rsp + 0x20]
	jmp	.label_756
	nop	dword ptr [rax]
.label_750:
	lea	rdi, [rdi]
	mov	rdx, rdi
	lea	rsi, [rsi]
	sub	rdx, rbp
	lea	rsi, [rsi]
	sar	rdx, 5
	mov	rbp, rbp
	cmp	qword ptr [r12 + 0x28], rdx
	jne	.label_741
	mov	rsp, rsp
	test	r14, r14
	je	.label_741
	mov	rbx, qword ptr [r12 + 0x18]
	mov	rbp, rbp
	cmp	rcx, rbx
	mov	rsp, rsp
	je	.label_741
	mov	qword ptr [rsp + 8], rdi
	mov	qword ptr [rsp + 0x18], rsi
	add	rcx, -0x20
	lea	rsi, [rsi]
	mov	edx, 1
	sub	rdx, r14
	nop	word ptr cs:[rax + rax]
.label_774:
	mov	rsp, rsp
	mov	rbp, rcx
	movups	xmm0, xmmword ptr [rbp]
	lea	rsi, [rsi]
	movups	xmm1, xmmword ptr [rbp + 0x10]
	movups	xmmword ptr [rax - 0x10], xmm1
	movups	xmmword ptr [rax - 0x20], xmm0
	lea	rax, [rax - 0x20]
	cmp	rbx, rbp
	je	.label_763
	lea	rcx, [rbp - 0x20]
	lea	rsi, [rsi]
	test	rdx, rdx
	lea	rdx, [rdx + 1]
	lea	rsi, [rsi]
	jne	.label_774
.label_763:
	mov	qword ptr [r12 + 8], rbp
	mov	r15, qword ptr [rsp + 0xb0]
	mov	rsp, rsp
	mov	r13, qword ptr [rsp + 0xa8]
	jmp	.label_776
	nop	
.label_741:
	mov	rbp, rbp
	mov	qword ptr [rsp + 8], rdi
	mov	qword ptr [rsp + 0x18], rsi
	nop	
	mov	r15, qword ptr [rsp + 0xb0]
	lea	rsi, [rsi]
	mov	r13, qword ptr [rsp + 0xa8]
	mov	rbp, qword ptr [rsp + 0x20]
.label_776:
	nop	
	mov	rbx, qword ptr [rsp + 0x30]
.label_756:
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rsp + 0x80]
	mov	qword ptr [rcx], rax
.label_751:
	mov	rcx, qword ptr [rsp + 8]
	sub	rcx, rbx
	sar	rcx, 5
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0x18]
	sub	rax, rbp
	mov	rsp, rsp
	sar	rax, 5
	lea	rdi, [rdi]
	sub	qword ptr [r12 + 0x28], rcx
	mov	rsp, rsp
	sub	r8, rax
	lea	rdi, [rdi]
	mov	qword ptr [r12 + 0x30], r8
	cmp	byte ptr [r12 + 0x54], 0
	jne	.label_754
	mov	rcx, qword ptr [r12]
	mov	rax, qword ptr [r12 + 8]
	nop	
	cmp	rcx, qword ptr [r12 + 0x10]
	mov	rsp, rsp
	mov	rcx, qword ptr [r12 + 0x18]
	lea	rsi, [rsi]
	jne	.label_743
	cmp	rax, rcx
	je	.label_754
	cmp	qword ptr [r12 + 0x28], 0
	mov	rbp, rbp
	jne	.label_754
	lea	rsi, [rsi]
	jmp	.label_759
.label_743:
	cmp	rax, rcx
	jne	.label_759
	lea	rsi, [rsi]
	cmp	qword ptr [r12 + 0x30], 0
	mov	rbp, rbp
	jne	.label_754
.label_759:
	mov	rdi, r15
	lea	rdi, [rdi]
	call	pthread_mutex_lock
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0x88]
	mov	rdi, qword ptr [rax]
	mov	rsi, r12
	mov	rbp, rbp
	call	heap_insert
	mov	byte ptr [r12 + 0x54], 1
	mov	rdi, r13
	mov	rbp, rbp
	call	pthread_cond_signal
	mov	rdi, r15
	call	pthread_mutex_unlock
	nop	dword ptr [rax + rax]
.label_754:
	cmp	dword ptr [r12 + 0x50], 2
	mov	rbp, qword ptr [rsp + 0x10]
	jb	.label_773
	lea	rsi, [rsi]
	mov	rdi, qword ptr [r12 + 0x38]
	add	rdi, 0x58
	nop	
	call	pthread_mutex_lock
	lea	rsi, [rsi]
	mov	r14, qword ptr [r12 + 0x38]
	cmp	byte ptr [r14 + 0x54], 0
	je	.label_785
	nop	
	mov	rbx, qword ptr [rsp + 0x88]
	jmp	.label_742
	nop	dword ptr [rax]
.label_773:
	lea	rdi, [rdi]
	mov	rax, qword ptr [r12 + 0x28]
	add	rax, qword ptr [r12 + 0x30]
	mov	rsp, rsp
	mov	rbx, qword ptr [rsp + 0x88]
	jne	.label_796
	mov	r14, qword ptr [r12 + 0x38]
	mov	rdi, r15
	call	pthread_mutex_lock
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbx]
	mov	rsi, r14
	call	heap_insert
	mov	byte ptr [r14 + 0x54], 1
	mov	rdi, r13
	mov	rbp, rbp
	call	pthread_cond_signal
	lea	rdi, [rdi]
	mov	rdi, r15
	lea	rdi, [rdi]
	jmp	.label_749
.label_785:
	mov	rcx, qword ptr [r14]
	lea	rdi, [rdi]
	mov	rax, qword ptr [r14 + 8]
	cmp	rcx, qword ptr [r14 + 0x10]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [r14 + 0x18]
	jne	.label_804
	cmp	rax, rcx
	lea	rdi, [rdi]
	je	.label_762
	cmp	qword ptr [r14 + 0x28], 0
	mov	rbx, qword ptr [rsp + 0x88]
	jne	.label_742
	jmp	.label_745
.label_804:
	lea	rsi, [rsi]
	cmp	rax, rcx
	mov	rbx, qword ptr [rsp + 0x88]
	mov	rbp, rbp
	jne	.label_745
	lea	rdi, [rdi]
	cmp	qword ptr [r14 + 0x30], 0
	jne	.label_742
.label_745:
	nop	
	mov	rdi, r15
	lea	rsi, [rsi]
	call	pthread_mutex_lock
	mov	rdi, qword ptr [rbx]
	nop	
	mov	rsi, r14
	mov	rsp, rsp
	call	heap_insert
	mov	byte ptr [r14 + 0x54], 1
	mov	rdi, r13
	mov	rsp, rsp
	call	pthread_cond_signal
	lea	rdi, [rdi]
	mov	rdi, r15
	mov	rbp, rbp
	call	pthread_mutex_unlock
	mov	r14, qword ptr [r12 + 0x38]
	lea	rdi, [rdi]
	jmp	.label_742
.label_762:
	mov	rbx, qword ptr [rsp + 0x88]
	nop	
.label_742:
	lea	rsi, [rsi]
	add	r14, 0x58
	mov	rdi, r14
.label_749:
	call	pthread_mutex_unlock
	lea	rsi, [rsi]
	jmp	.label_796
.label_791:
	nop	
	mov	rdi, rbp
	lea	rsi, [rsi]
	call	pthread_mutex_unlock
	mov	rdi, r15
	lea	rsi, [rsi]
	call	pthread_mutex_lock
	mov	rsp, rsp
	mov	rdi, qword ptr [rbx]
	mov	rsi, r12
	call	heap_insert
	mov	byte ptr [r12 + 0x54], 1
	lea	rsi, [rsi]
	mov	rdi, r13
	lea	rsi, [rsi]
	call	pthread_cond_signal
	lea	rdi, [rdi]
	mov	rdi, r15
	mov	rbp, rbp
	call	pthread_mutex_unlock
	mov	rsp, rsp
	jmp	.label_787
.label_765:
	sub	r12, r13
	shl	rbp, 5
	sub	rbx, rbp
	mov	rcx, qword ptr [r14 + 0x48]
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rdi, [rdi]
	mov	qword ptr [rsp], rax
	nop	
	mov	rdi, rbx
	mov	rsp, rsp
	mov	rsi, r12
	mov	rdx, qword ptr [rsp + 0x38]
	nop	
	mov	r8, qword ptr [rsp + 0x88]
	mov	r9, qword ptr [rsp + 0x78]
	mov	rsp, rsp
	call	sortlines
	nop	
	mov	rdi, qword ptr [rsp + 0xa0]
	xor	esi, esi
	mov	rbp, rbp
	call	pthread_join
.label_787:
	lea	rsi, [rsi]
	add	rsp, 0xb8
	pop	rbx
	pop	r12
	mov	rsp, rsp
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40dca0

	.globl compare_nodes
	.type compare_nodes, @function
compare_nodes:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rsi + 0x50]
	cmp	dword ptr [rdi + 0x50], eax
	mov	rbp, rbp
	jne	.label_809
	mov	rax, qword ptr [rdi + 0x30]
	add	rax, qword ptr [rdi + 0x28]
	mov	rcx, qword ptr [rsi + 0x30]
	add	rcx, qword ptr [rsi + 0x28]
	nop	
	cmp	rax, rcx
.label_809:
	nop	
	setb	al
	lea	rsi, [rsi]
	movzx	eax, al
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x40dcd0

	.globl init_node
	.type init_node, @function
init_node:
	push	rbp
	push	r15
	lea	rdi, [rdi]
	push	r14
	nop	
	push	r13
	nop	
	push	r12
	lea	rsi, [rsi]
	push	rbx
	push	rax
	mov	r14, r8
	mov	qword ptr [rsp], r14
	mov	r15, rcx
	mov	r12, rdx
	lea	rsi, [rsi]
	mov	r13, rsi
	neg	r14
	shl	r14, 5
	nop	
	jmp	.label_810
.label_811:
	mov	rcx, r15
	shr	rcx, 1
	lea	rsi, [rsi]
	sub	r15, rcx
	lea	rsi, [rsi]
	mov	qword ptr [r13 + 0x40], rbp
	mov	r9d, 1
	lea	rsi, [rsi]
	mov	rdi, r13
	mov	rsi, rbp
	lea	rdi, [rdi]
	mov	rdx, rbx
	mov	r8, qword ptr [rsp]
	call	init_node
	mov	rsp, rsp
	mov	qword ptr [r13 + 0x48], rax
	xor	r9d, r9d
	mov	rbp, rbp
	mov	rdi, r13
	mov	r13, rax
.label_810:
	lea	rax, [rdi + 0x28]
	lea	rcx, [rdi + 0x30]
	nop	
	lea	rdx, [rdi + 0x10]
	lea	rsi, [rdi + 0x18]
	lea	rsi, [rsi]
	and	r9b, 1
	lea	rsi, [rsi]
	cmovne	rsi, rdx
	test	r9b, r9b
	cmovne	rcx, rax
	mov	rax, qword ptr [rcx]
	mov	rcx, rax
	mov	rbp, rbp
	shr	rcx, 1
	mov	rsp, rsp
	sub	rax, rcx
	mov	rbp, rbp
	mov	rbx, r12
	lea	rsi, [rsi]
	add	rbx, r14
	mov	rbp, rbp
	mov	rdx, rcx
	lea	rsi, [rsi]
	shl	rdx, 5
	lea	rsi, [rsi]
	mov	r12, rbx
	mov	rbp, rbp
	sub	r12, rdx
	mov	rbp, rbp
	lea	rbp, [r13 + 0x80]
	nop	
	mov	qword ptr [r13 + 0x10], rbx
	mov	qword ptr [r13], rbx
	mov	qword ptr [r13 + 0x18], r12
	mov	qword ptr [r13 + 8], r12
	mov	qword ptr [r13 + 0x20], rsi
	lea	rsi, [rsi]
	mov	qword ptr [r13 + 0x28], rcx
	lea	rsi, [rsi]
	mov	qword ptr [r13 + 0x30], rax
	lea	rdi, [rdi]
	mov	qword ptr [r13 + 0x38], rdi
	mov	eax, dword ptr [rdi + 0x50]
	inc	eax
	mov	dword ptr [r13 + 0x50], eax
	mov	byte ptr [r13 + 0x54], 0
	lea	rdi, [r13 + 0x58]
	mov	rsp, rsp
	xor	esi, esi
	call	pthread_mutex_init
	cmp	r15, 2
	jae	.label_811
	xorps	xmm0, xmm0
	lea	rsi, [rsi]
	movups	xmmword ptr [r13 + 0x40], xmm0
	nop	
	mov	rax, rbp
	add	rsp, 8
	pop	rbx
	mov	rsp, rsp
	pop	r12
	lea	rsi, [rsi]
	pop	r13
	pop	r14
	mov	rbp, rbp
	pop	r15
	lea	rdi, [rdi]
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40de30

	.globl sortlines_thread
	.type sortlines_thread, @function
sortlines_thread:
	push	rax
	mov	rbp, rbp
	mov	rax, qword ptr [rdi]
	nop	
	mov	rsi, qword ptr [rdi + 8]
	nop	
	mov	rdx, qword ptr [rdi + 0x10]
	mov	rsp, rsp
	mov	rcx, qword ptr [rdi + 0x18]
	mov	r8, qword ptr [rdi + 0x20]
	mov	r9, qword ptr [rdi + 0x28]
	mov	rdi, qword ptr [rdi + 0x30]
	mov	rbp, rbp
	mov	qword ptr [rsp], rdi
	mov	rdi, rax
	lea	rsi, [rsi]
	call	sortlines
	mov	rbp, rbp
	xor	eax, eax
	lea	rsi, [rsi]
	pop	rcx
	ret	
	.section	.text
	.align	16
	#Procedure 0x40de70

	.globl sequential_sort
	.type sequential_sort, @function
sequential_sort:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	mov	rbp, rbp
	push	rbx
	push	rax
	mov	rbp, rbp
	mov	ebx, ecx
	mov	r13, rdx
	lea	rdi, [rdi]
	mov	rbp, rsi
	mov	rsp, rsp
	cmp	rbp, 2
	jne	.label_822
	nop	
	lea	rbp, [rdi - 0x20]
	mov	rsp, rsp
	lea	r14, [rdi - 0x40]
	mov	r15, rdi
	mov	rbp, rbp
	mov	rdi, rbp
	mov	rsi, r14
	call	compare
	lea	rdi, [rdi]
	test	bl, bl
	mov	rbp, rbp
	je	.label_815
	lea	rsi, [rsi]
	test	eax, eax
	mov	rbp, rbp
	setg	al
	mov	rsp, rsp
	movzx	eax, al
	mov	rsp, rsp
	mov	rcx, rax
	lea	rsi, [rsi]
	not	rcx
	mov	rbp, rbp
	shl	rcx, 5
	movups	xmm0, xmmword ptr [r15 + rcx]
	mov	rbp, rbp
	movups	xmm1, xmmword ptr [r15 + rcx + 0x10]
	lea	rdi, [rdi]
	movups	xmmword ptr [r13 - 0x10], xmm1
	mov	rsp, rsp
	movups	xmmword ptr [r13 - 0x20], xmm0
	shl	rax, 5
	lea	rdi, [rdi]
	movups	xmm0, xmmword ptr [rax + r15 - 0x40]
	lea	rsi, [rsi]
	movups	xmm1, xmmword ptr [rax + r15 - 0x30]
	lea	rsi, [rsi]
	movups	xmmword ptr [r13 - 0x30], xmm1
	movups	xmmword ptr [r13 - 0x40], xmm0
	jmp	.label_814
.label_822:
	nop	
	mov	r14, rbp
	shr	r14, 1
	mov	r15, rbp
	sub	r15, r14
	lea	rdi, [rdi]
	mov	r12, r14
	neg	r12
	mov	rax, r14
	shl	rax, 5
	mov	qword ptr [rsp], rdi
	nop	
	sub	rdi, rax
	xor	edx, edx
	test	bl, bl
	cmovne	rdx, r12
	shl	rdx, 5
	add	rdx, r13
	movzx	ecx, bl
	mov	rsi, r15
	call	sequential_sort
	cmp	rbp, 4
	jb	.label_820
	mov	al, bl
	mov	rsp, rsp
	xor	al, 1
	movzx	ecx, al
	mov	rbp, qword ptr [rsp]
	mov	rbp, rbp
	mov	rdi, rbp
	nop	
	mov	rsi, r14
	mov	rdx, r13
	mov	rbp, rbp
	call	sequential_sort
	lea	rsi, [rsi]
	mov	rax, rbp
	jmp	.label_812
.label_815:
	lea	rsi, [rsi]
	test	eax, eax
	jle	.label_814
	lea	rdi, [rdi]
	movups	xmm0, xmmword ptr [rbp]
	movups	xmm1, xmmword ptr [rbp + 0x10]
	mov	rsp, rsp
	movups	xmmword ptr [r13 - 0x10], xmm1
	mov	rbp, rbp
	movups	xmmword ptr [r13 - 0x20], xmm0
	lea	rdi, [rdi]
	movups	xmm0, xmmword ptr [r14]
	mov	rsp, rsp
	movups	xmm1, xmmword ptr [r14 + 0x10]
	lea	rsi, [rsi]
	movups	xmmword ptr [rbp + 0x10], xmm1
	mov	rsp, rsp
	movups	xmmword ptr [rbp], xmm0
	movups	xmm0, xmmword ptr [r13 - 0x20]
	movups	xmm1, xmmword ptr [r13 - 0x10]
	mov	rbp, rbp
	movups	xmmword ptr [r14 + 0x10], xmm1
	movups	xmmword ptr [r14], xmm0
	jmp	.label_814
.label_820:
	mov	rbp, rbp
	test	bl, bl
	mov	rax, qword ptr [rsp]
	nop	
	jne	.label_812
	nop	
	movups	xmm0, xmmword ptr [rax - 0x20]
	nop	
	movups	xmm1, xmmword ptr [rax - 0x10]
	movups	xmmword ptr [r13 - 0x10], xmm1
	movups	xmmword ptr [r13 - 0x20], xmm0
.label_812:
	nop	
	test	bl, bl
	mov	rbx, rax
	mov	rbp, rbp
	cmovne	rbx, r13
	cmovne	r13, rax
	lea	rdi, [rdi]
	shl	r12, 5
	mov	rbp, rbp
	add	r12, rbx
.label_813:
	lea	rax, [r13 - 0x20]
	mov	qword ptr [rsp], rax
	nop	word ptr cs:[rax + rax]
.label_823:
	mov	rsp, rsp
	lea	rbp, [r12 - 0x20]
	mov	rsp, rsp
	mov	rdi, qword ptr [rsp]
	nop	
	mov	rsi, rbp
	call	compare
	mov	rsp, rsp
	add	rbx, -0x20
	test	eax, eax
	mov	rbp, rbp
	jle	.label_819
	mov	rbp, rbp
	movups	xmm0, xmmword ptr [r12 - 0x20]
	movups	xmm1, xmmword ptr [r12 - 0x10]
	movups	xmmword ptr [rbx + 0x10], xmm1
	lea	rsi, [rsi]
	movups	xmmword ptr [rbx], xmm0
	dec	r15
	mov	r12, rbp
	jne	.label_823
	lea	rdi, [rdi]
	jmp	.label_817
	nop	dword ptr [rax]
.label_819:
	mov	r13, qword ptr [rsp]
	movups	xmm0, xmmword ptr [r13]
	lea	rdi, [rdi]
	movups	xmm1, xmmword ptr [r13 + 0x10]
	movups	xmmword ptr [rbx + 0x10], xmm1
	movups	xmmword ptr [rbx], xmm0
	lea	rsi, [rsi]
	dec	r14
	jne	.label_813
	nop	
	jmp	.label_814
.label_817:
	lea	rax, [r14 - 1]
	test	r14b, 7
	je	.label_816
	nop	
	mov	ecx, r14d
	lea	rsi, [rsi]
	and	ecx, 7
	lea	rsi, [rsi]
	neg	rcx
	nop	word ptr cs:[rax + rax]
.label_818:
	mov	rbp, rbp
	movups	xmm0, xmmword ptr [r13 - 0x20]
	movups	xmm1, xmmword ptr [r13 - 0x10]
	lea	r13, [r13 - 0x20]
	movups	xmmword ptr [rbx - 0x10], xmm1
	movups	xmmword ptr [rbx - 0x20], xmm0
	lea	rbx, [rbx - 0x20]
	dec	r14
	lea	rdi, [rdi]
	inc	rcx
	jne	.label_818
.label_816:
	mov	rbp, rbp
	xor	ecx, ecx
	cmp	rax, 7
	mov	rbp, rbp
	jb	.label_814
	nop	word ptr [rax + rax]
.label_821:
	nop	
	movups	xmm0, xmmword ptr [r13 + rcx - 0x20]
	lea	rdi, [rdi]
	movups	xmm1, xmmword ptr [r13 + rcx - 0x10]
	lea	rsi, [rsi]
	movups	xmmword ptr [rbx + rcx - 0x10], xmm1
	movups	xmmword ptr [rbx + rcx - 0x20], xmm0
	mov	rsp, rsp
	movups	xmm0, xmmword ptr [r13 + rcx - 0x40]
	mov	rsp, rsp
	movups	xmm1, xmmword ptr [r13 + rcx - 0x30]
	lea	rdi, [rdi]
	movups	xmmword ptr [rbx + rcx - 0x30], xmm1
	movups	xmmword ptr [rbx + rcx - 0x40], xmm0
	movups	xmm0, xmmword ptr [r13 + rcx - 0x60]
	mov	rbp, rbp
	movups	xmm1, xmmword ptr [r13 + rcx - 0x50]
	movups	xmmword ptr [rbx + rcx - 0x50], xmm1
	movups	xmmword ptr [rbx + rcx - 0x60], xmm0
	lea	rsi, [rsi]
	movups	xmm0, xmmword ptr [r13 + rcx - 0x80]
	lea	rsi, [rsi]
	movups	xmm1, xmmword ptr [r13 + rcx - 0x70]
	movups	xmmword ptr [rbx + rcx - 0x70], xmm1
	movups	xmmword ptr [rbx + rcx - 0x80], xmm0
	lea	rsi, [rsi]
	movups	xmm0, xmmword ptr [r13 + rcx - 0xa0]
	movups	xmm1, xmmword ptr [r13 + rcx - 0x90]
	movups	xmmword ptr [rbx + rcx - 0x90], xmm1
	movups	xmmword ptr [rbx + rcx - 0xa0], xmm0
	lea	rdi, [rdi]
	movups	xmm0, xmmword ptr [r13 + rcx - 0xc0]
	movups	xmm1, xmmword ptr [r13 + rcx - 0xb0]
	movups	xmmword ptr [rbx + rcx - 0xb0], xmm1
	lea	rsi, [rsi]
	movups	xmmword ptr [rbx + rcx - 0xc0], xmm0
	movups	xmm0, xmmword ptr [r13 + rcx - 0xe0]
	movups	xmm1, xmmword ptr [r13 + rcx - 0xd0]
	lea	rdi, [rdi]
	movups	xmmword ptr [rbx + rcx - 0xd0], xmm1
	mov	rsp, rsp
	movups	xmmword ptr [rbx + rcx - 0xe0], xmm0
	movups	xmm0, xmmword ptr [r13 + rcx - 0x100]
	mov	rbp, rbp
	movups	xmm1, xmmword ptr [r13 + rcx - 0xf0]
	movups	xmmword ptr [rbx + rcx - 0xf0], xmm1
	nop	
	movups	xmmword ptr [rbx + rcx - 0x100], xmm0
	mov	rsp, rsp
	add	rcx, -0x100
	add	r14, -8
	nop	
	jne	.label_821
.label_814:
	mov	rbp, rbp
	add	rsp, 8
	pop	rbx
	lea	rdi, [rdi]
	pop	r12
	pop	r13
	pop	r14
	mov	rbp, rbp
	pop	r15
	lea	rsi, [rsi]
	pop	rbp
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x40e270

	.globl __argmatch_die
	.type __argmatch_die, @function
__argmatch_die:
	mov	rbp, rbp
	mov	edi, 1
	mov	rsp, rsp
	jmp	usage
	.section	.text
	.align	16
	#Procedure 0x40e280

	.globl argmatch
	.type argmatch, @function
argmatch:
	push	rbp
	lea	rdi, [rdi]
	push	r15
	nop	
	push	r14
	lea	rdi, [rdi]
	push	r13
	mov	rsp, rsp
	push	r12
	mov	rbp, rbp
	push	rbx
	sub	rsp, 0x28
	mov	rsp, rsp
	mov	r13, rcx
	mov	r14, rdx
	lea	rsi, [rsi]
	mov	rbp, rsi
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x20], rbp
	lea	rsi, [rsi]
	mov	r12, rdi
	call	strlen
	mov	rbx, rax
	lea	rsi, [rsi]
	mov	r15, qword ptr [rbp]
	test	r15, r15
	je	.label_830
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x18], -1
	nop	
	xor	eax, eax
	mov	qword ptr [rsp + 0x10], rax
	mov	rax, r14
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 8], rax
	xor	ebp, ebp
	nop	word ptr cs:[rax + rax]
.label_824:
	mov	rbp, rbp
	mov	rdi, r15
	mov	rsi, r12
	lea	rdi, [rdi]
	mov	rdx, rbx
	lea	rsi, [rsi]
	call	strncmp
	test	eax, eax
	jne	.label_827
	mov	rdi, r15
	mov	rsp, rsp
	call	strlen
	mov	rbp, rbp
	cmp	rax, rbx
	lea	rsi, [rsi]
	je	.label_825
	lea	rsi, [rsi]
	cmp	qword ptr [rsp + 0x18], -1
	je	.label_828
	mov	rax, qword ptr [rsp + 8]
	mov	rbp, rbp
	test	rax, rax
	je	.label_829
	mov	rsp, rsp
	mov	rdi, qword ptr [rsp + 0x18]
	imul	rdi, r13
	lea	rdi, [rdi]
	add	rdi, rax
	mov	rsi, r14
	mov	rbp, rbp
	mov	rdx, r13
	lea	rdi, [rdi]
	call	memcmp
	test	eax, eax
	je	.label_827
.label_829:
	mov	rsp, rsp
	mov	al, 1
	mov	qword ptr [rsp + 0x10], rax
	jmp	.label_827
.label_828:
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x18], rbp
	nop	dword ptr [rax + rax]
.label_827:
	nop	
	mov	rax, qword ptr [rsp + 0x20]
	mov	r15, qword ptr [rax + rbp*8 + 8]
	lea	rsi, [rsi]
	inc	rbp
	add	r14, r13
	test	r15, r15
	nop	
	jne	.label_824
	lea	rsi, [rsi]
	jmp	.label_826
.label_830:
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x18], -1
	mov	rsp, rsp
	xor	eax, eax
	nop	
	mov	qword ptr [rsp + 0x10], rax
.label_826:
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 0x10]
	test	al, 1
	mov	rbp, -2
	mov	rsp, rsp
	cmove	rbp, qword ptr [rsp + 0x18]
.label_825:
	mov	rax, rbp
	add	rsp, 0x28
	mov	rsp, rsp
	pop	rbx
	pop	r12
	pop	r13
	mov	rbp, rbp
	pop	r14
	pop	r15
	mov	rbp, rbp
	pop	rbp
	nop	
	ret	
	.section	.text
	.align	16
	#Procedure 0x40e400
	.globl argmatch_invalid
	.type argmatch_invalid, @function
argmatch_invalid:

	mov	rbp, rbp
	push	r15
	mov	rsp, rsp
	push	r14
	push	r12
	lea	rdi, [rdi]
	push	rbx
	mov	rbp, rbp
	push	rax
	mov	r15, rsi
	lea	rdi, [rdi]
	mov	r14, rdi
	xor	edi, edi
	cmp	rdx, -1
	je	.label_831
	mov	esi, OFFSET FLAT:.str.1_1
	nop	
	jmp	.label_832
.label_831:
	nop	
	mov	esi, OFFSET FLAT:.str_3
.label_832:
	mov	rbp, rbp
	mov	edx, 5
	call	dcgettext
	mov	r12, rax
	xor	edi, edi
	mov	rbp, rbp
	mov	esi, 8
	lea	rsi, [rsi]
	mov	rdx, r15
	call	quotearg_n_style
	nop	
	mov	r15, rax
	mov	edi, 1
	lea	rsi, [rsi]
	mov	rsi, r14
	call	quote_n
	mov	rbx, rax
	xor	edi, edi
	mov	rsp, rsp
	xor	esi, esi
	xor	eax, eax
	mov	rdx, r12
	mov	rcx, r15
	nop	
	mov	r8, rbx
	add	rsp, 8
	pop	rbx
	lea	rdi, [rdi]
	pop	r12
	lea	rdi, [rdi]
	pop	r14
	mov	rbp, rbp
	pop	r15
	lea	rsi, [rsi]
	jmp	error
	nop	
	.section	.text
	.align	16
	#Procedure 0x40e4a0

	.globl argmatch_valid
	.type argmatch_valid, @function
argmatch_valid:
	mov	rsp, rsp
	push	rbp
	push	r15
	nop	
	push	r14
	nop	
	push	r13
	push	r12
	push	rbx
	nop	
	push	rax
	mov	r14, rdx
	mov	rsp, rsp
	mov	r12, rsi
	mov	rbx, rdi
	mov	qword ptr [rsp], rbx
	mov	rbp, rbp
	xor	edi, edi
	lea	rsi, [rsi]
	mov	esi, OFFSET FLAT:.str.2_0
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stderr]]
	mov	rbp, rbp
	mov	rdi, rax
	mov	rsp, rsp
	call	fputs_unlocked
	lea	rsi, [rsi]
	mov	rbx, qword ptr [rbx]
	nop	
	test	rbx, rbx
	je	.label_835
	lea	rdi, [rdi]
	xor	r13d, r13d
	xor	r15d, r15d
	nop	word ptr cs:[rax + rax]
.label_838:
	test	r15, r15
	mov	rbp, rbp
	je	.label_837
	lea	rsi, [rsi]
	mov	rdi, r13
	mov	rsi, r12
	mov	rdx, r14
	lea	rdi, [rdi]
	call	memcmp
	test	eax, eax
	lea	rsi, [rsi]
	je	.label_834
.label_837:
	mov	r13,  qword ptr [word ptr [rip + stderr]]
	mov	rdi, rbx
	lea	rsi, [rsi]
	call	quote
	lea	rsi, [rsi]
	mov	rcx, rax
	mov	rbp, rbp
	mov	esi, 1
	mov	rbp, rbp
	mov	edx, OFFSET FLAT:.str.3_0
	lea	rdi, [rdi]
	xor	eax, eax
	mov	rdi, r13
	call	__fprintf_chk
	mov	r13, r12
	jmp	.label_833
	nop	dword ptr [rax]
.label_834:
	mov	rbp,  qword ptr [word ptr [rip + stderr]]
	mov	rdi, rbx
	call	quote
	mov	rsp, rsp
	mov	rcx, rax
	mov	esi, 1
	mov	rbp, rbp
	mov	edx, OFFSET FLAT:.str.4_0
	xor	eax, eax
	mov	rdi, rbp
	call	__fprintf_chk
.label_833:
	mov	rsp, rsp
	mov	rax, qword ptr [rsp]
	mov	rsp, rsp
	mov	rbx, qword ptr [rax + r15*8 + 8]
	inc	r15
	add	r12, r14
	lea	rsi, [rsi]
	test	rbx, rbx
	jne	.label_838
.label_835:
	mov	rdi,  qword ptr [word ptr [rip + stderr]]
	mov	rax, qword ptr [rdi + 0x28]
	cmp	rax, qword ptr [rdi + 0x30]
	jae	.label_836
	lea	rcx, [rax + 1]
	lea	rsi, [rsi]
	mov	qword ptr [rdi + 0x28], rcx
	mov	byte ptr [rax], 0xa
	add	rsp, 8
	lea	rsi, [rsi]
	pop	rbx
	lea	rdi, [rdi]
	pop	r12
	pop	r13
	mov	rbp, rbp
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_836:
	mov	rsp, rsp
	mov	esi, 0xa
	add	rsp, 8
	lea	rdi, [rdi]
	pop	rbx
	pop	r12
	nop	
	pop	r13
	pop	r14
	lea	rdi, [rdi]
	pop	r15
	pop	rbp
	jmp	__overflow
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40e620

	.globl __xargmatch_internal
	.type __xargmatch_internal, @function
__xargmatch_internal:
	push	rbp
	mov	rsp, rsp
	push	r15
	push	r14
	push	r13
	push	r12
	mov	rbp, rbp
	push	rbx
	sub	rsp, 0x18
	mov	rbx, r9
	lea	rsi, [rsi]
	mov	r15, r8
	mov	r12, rcx
	mov	r13, rdx
	mov	r14, rsi
	mov	rbp, rdi
	mov	rbp, rbp
	mov	rdi, r14
	lea	rsi, [rsi]
	mov	rsi, r13
	mov	rsp, rsp
	mov	rdx, r12
	mov	rcx, r15
	lea	rdi, [rdi]
	call	argmatch
	mov	rsp, rsp
	test	rax, rax
	jns	.label_840
	mov	qword ptr [rsp + 8], rbp
	mov	rbp, rbp
	xor	edi, edi
	cmp	rax, -1
	je	.label_841
	mov	esi, OFFSET FLAT:.str.1_1
	mov	rsp, rsp
	jmp	.label_839
.label_841:
	lea	rdi, [rdi]
	mov	esi, OFFSET FLAT:.str_3
.label_839:
	mov	edx, 5
	mov	rsp, rsp
	call	dcgettext
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x10], rax
	nop	
	xor	edi, edi
	mov	rsp, rsp
	mov	esi, 8
	mov	rbp, rbp
	mov	rdx, r14
	call	quotearg_n_style
	nop	
	mov	r14, rax
	nop	
	mov	edi, 1
	mov	rsi, qword ptr [rsp + 8]
	lea	rsi, [rsi]
	call	quote_n
	mov	rbp, rax
	xor	edi, edi
	mov	rbp, rbp
	xor	esi, esi
	lea	rdi, [rdi]
	xor	eax, eax
	mov	rsp, rsp
	mov	rdx, qword ptr [rsp + 0x10]
	lea	rsi, [rsi]
	mov	rcx, r14
	mov	r8, rbp
	call	error
	mov	rsp, rsp
	mov	rdi, r13
	mov	rbp, rbp
	mov	rsi, r12
	mov	rdx, r15
	mov	rbp, rbp
	call	argmatch_valid
	mov	rsp, rsp
	call	rbx
	mov	rbp, rbp
	mov	rax, -1
.label_840:
	add	rsp, 0x18
	pop	rbx
	pop	r12
	mov	rbp, rbp
	pop	r13
	pop	r14
	nop	
	pop	r15
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40e740
	.globl argmatch_to_argument
	.type argmatch_to_argument, @function
argmatch_to_argument:

	push	r15
	push	r14
	mov	rsp, rsp
	push	r13
	mov	rbp, rbp
	push	r12
	mov	rbp, rbp
	push	rbx
	nop	
	mov	r14, rcx
	mov	r15, rdx
	lea	rdi, [rdi]
	mov	rbx, rsi
	nop	
	mov	r12, rdi
	lea	rsi, [rsi]
	mov	r13, qword ptr [rbx]
	xor	eax, eax
	mov	rsp, rsp
	test	r13, r13
	lea	rsi, [rsi]
	je	.label_842
	lea	rsi, [rsi]
	add	rbx, 8
	nop	dword ptr [rax]
.label_843:
	mov	rdi, r12
	mov	rsp, rsp
	mov	rsi, r15
	nop	
	mov	rdx, r14
	call	memcmp
	mov	rbp, rbp
	test	eax, eax
	mov	rsp, rsp
	mov	rax, r13
	nop	
	je	.label_842
	lea	rsi, [rsi]
	mov	r13, qword ptr [rbx]
	add	rbx, 8
	add	r15, r14
	mov	rbp, rbp
	test	r13, r13
	mov	eax, 0
	jne	.label_843
.label_842:
	lea	rdi, [rdi]
	pop	rbx
	pop	r12
	mov	rbp, rbp
	pop	r13
	pop	r14
	pop	r15
	nop	
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40e7d0
	.globl close_stdout_set_file_name
	.type close_stdout_set_file_name, @function
close_stdout_set_file_name:

	mov	rbp, rbp
	mov	qword ptr [word ptr [rip + file_name]],  rdi
	lea	rsi, [rsi]
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x40e7e0
	.globl close_stdout_set_ignore_EPIPE
	.type close_stdout_set_ignore_EPIPE, @function
close_stdout_set_ignore_EPIPE:

	mov	byte ptr [byte ptr [rip + ignore_EPIPE]],  dil
	lea	rdi, [rdi]
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40e7f0

	.globl close_stdout
	.type close_stdout, @function
close_stdout:
	push	rbp
	lea	rsi, [rsi]
	push	rbx
	mov	rsp, rsp
	push	rax
	lea	rdi, [rdi]
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	mov	rsp, rsp
	call	close_stream
	test	eax, eax
	je	.label_845
	mov	bl,  byte ptr [byte ptr [rip + ignore_EPIPE]]
	call	__errno_location
	mov	rbp, rbp
	mov	rbp, rax
	mov	rsp, rsp
	cmp	bl, 0
	je	.label_844
	mov	rsp, rsp
	cmp	dword ptr [rbp], 0x20
	jne	.label_844
.label_845:
	mov	rdi,  qword ptr [word ptr [rip + stderr]]
	call	close_stream
	test	eax, eax
	nop	
	jne	.label_847
	nop	
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
.label_844:
	nop	
	xor	edi, edi
	lea	rsi, [rsi]
	mov	esi, OFFSET FLAT:.str_4
	mov	rbp, rbp
	mov	edx, 5
	call	dcgettext
	lea	rdi, [rdi]
	mov	rbx, rax
	mov	rdi,  qword ptr [word ptr [rip + file_name]]
	test	rdi, rdi
	mov	ebp, dword ptr [rbp]
	jne	.label_846
	lea	rdi, [rdi]
	xor	edi, edi
	mov	rsp, rsp
	mov	edx, OFFSET FLAT:.str_0
	xor	eax, eax
	nop	
	mov	esi, ebp
	lea	rdi, [rdi]
	mov	rcx, rbx
	mov	rsp, rsp
	call	error
	mov	edi,  dword ptr [dword ptr [rip + exit_failure]]
	mov	rsp, rsp
	call	_exit
.label_847:
	mov	edi,  dword ptr [dword ptr [rip + exit_failure]]
	mov	rbp, rbp
	call	_exit
.label_846:
	nop	
	call	quotearg_colon
	mov	rcx, rax
	lea	rdi, [rdi]
	xor	edi, edi
	mov	edx, OFFSET FLAT:.str.1_0
	lea	rdi, [rdi]
	xor	eax, eax
	nop	
	mov	esi, ebp
	lea	rsi, [rsi]
	mov	r8, rbx
	call	error
	mov	rsp, rsp
	mov	edi,  dword ptr [dword ptr [rip + exit_failure]]
	mov	rbp, rbp
	call	_exit
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40e8f0

	.globl md5_init_ctx
	.type md5_init_ctx, @function
md5_init_ctx:
	movaps	xmm0,  xmmword ptr [word ptr [rip + label_848]]
	lea	rsi, [rsi]
	movups	xmmword ptr [rdi], xmm0
	lea	rdi, [rdi]
	mov	dword ptr [rdi + 0x14], 0
	mov	dword ptr [rdi + 0x10], 0
	mov	rsp, rsp
	mov	dword ptr [rdi + 0x18], 0
	lea	rdi, [rdi]
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x40e920
	.globl md5_read_ctx
	.type md5_read_ctx, @function
md5_read_ctx:

	nop
	mov	eax, dword ptr [rdi]
	mov	dword ptr [rsi], eax
	mov	eax, dword ptr [rdi + 4]
	nop	
	mov	dword ptr [rsi + 4], eax
	mov	eax, dword ptr [rdi + 8]
	lea	rdi, [rdi]
	mov	dword ptr [rsi + 8], eax
	lea	rdi, [rdi]
	mov	eax, dword ptr [rdi + 0xc]
	mov	rsp, rsp
	mov	dword ptr [rsi + 0xc], eax
	lea	rsi, [rsi]
	mov	rax, rsi
	lea	rsi, [rsi]
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40e950

	.globl md5_finish_ctx
	.type md5_finish_ctx, @function
md5_finish_ctx:
	lea	rdi, [rdi]
	push	r15
	push	r14
	mov	rsp, rsp
	push	r12
	mov	rsp, rsp
	push	rbx
	push	rax
	mov	r14, rsi
	mov	rbx, rdi
	mov	eax, dword ptr [rbx + 0x18]
	mov	rsp, rsp
	cmp	rax, 0x38
	mov	ecx, 0x10
	nop	
	mov	r15d, 0x20
	cmovb	r15, rcx
	nop	
	mov	ecx, dword ptr [rbx + 0x10]
	add	ecx, eax
	mov	dword ptr [rbx + 0x10], ecx
	jae	.label_849
	inc	dword ptr [rbx + 0x14]
.label_849:
	lea	edx, [rcx*8]
	lea	r12, [rbx + 0x1c]
	mov	dword ptr [rbx + r15*4 + 0x14], edx
	mov	rbp, rbp
	mov	edx, dword ptr [rbx + 0x14]
	shld	edx, ecx, 3
	mov	rbp, rbp
	mov	dword ptr [rbx + r15*4 + 0x18], edx
	mov	rsp, rsp
	lea	rdi, [rbx + rax + 0x1c]
	mov	rsp, rsp
	lea	rdx, [r15*4 - 8]
	mov	rsp, rsp
	sub	rdx, rax
	mov	esi, OFFSET FLAT:fillbuf_0
	call	memcpy
	mov	rsp, rsp
	shl	r15, 2
	mov	rdi, r12
	nop	
	mov	rsi, r15
	mov	rdx, rbx
	call	md5_process_block
	mov	eax, dword ptr [rbx]
	mov	dword ptr [r14], eax
	mov	eax, dword ptr [rbx + 4]
	mov	dword ptr [r14 + 4], eax
	nop	
	mov	eax, dword ptr [rbx + 8]
	lea	rsi, [rsi]
	mov	dword ptr [r14 + 8], eax
	nop	
	mov	eax, dword ptr [rbx + 0xc]
	mov	rbp, rbp
	mov	dword ptr [r14 + 0xc], eax
	lea	rsi, [rsi]
	mov	rax, r14
	lea	rsi, [rsi]
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40ea30

	.globl md5_process_block
	.type md5_process_block, @function
md5_process_block:
	lea	rsi, [rsi]
	push	rbp
	push	r15
	nop	
	push	r14
	push	r13
	push	r12
	lea	rdi, [rdi]
	push	rbx
	mov	qword ptr [rsp - 0x58], rdx
	mov	rax, rsi
	nop	
	and	rax, 0xfffffffffffffffc
	add	rax, rdi
	mov	qword ptr [rsp - 8], rax
	lea	rdi, [rdi]
	mov	r10d, dword ptr [rdx]
	mov	ebx, dword ptr [rdx + 4]
	mov	rbp, rbp
	mov	r9d, dword ptr [rdx + 8]
	mov	ebp, dword ptr [rdx + 0xc]
	mov	r8, rsi
	nop	
	shr	r8, 0x20
	mov	ecx, dword ptr [rdx + 0x10]
	add	ecx, esi
	lea	rdi, [rdi]
	mov	dword ptr [rdx + 0x10], ecx
	mov	rbp, rbp
	adc	r8d, 0
	mov	rsp, rsp
	add	dword ptr [rdx + 0x14], r8d
	cmp	rdi, rax
	mov	rsp, rsp
	jae	.label_852
	nop	word ptr cs:[rax + rax]
.label_851:
	nop	
	mov	qword ptr [rsp - 0x50], rbx
	mov	qword ptr [rsp - 0x70], r9
	mov	qword ptr [rsp - 0x48], rbp
	nop	
	mov	dword ptr [rsp - 0x34], r10d
	mov	eax, r9d
	xor	eax, ebp
	and	eax, ebx
	mov	rbp, rbp
	xor	eax, ebp
	add	eax, r10d
	lea	rdi, [rdi]
	mov	ecx, dword ptr [rdi]
	mov	qword ptr [rsp - 0x80], rcx
	nop	
	mov	esi, dword ptr [rdi + 4]
	mov	qword ptr [rsp - 0x10], rsi
	lea	edx, [rcx + rax - 0x28955b88]
	mov	r10, rcx
	rol	edx, 7
	mov	rax, qword ptr [rsp - 0x50]
	mov	rsp, rsp
	add	edx, eax
	mov	rsp, rsp
	mov	rax, qword ptr [rsp - 0x50]
	mov	rsp, rsp
	xor	eax, r9d
	and	eax, edx
	mov	rsp, rsp
	xor	eax, r9d
	lea	rsi, [rsi]
	lea	ecx, [rbp + rsi]
	lea	ebp, [rax + rcx - 0x173848aa]
	lea	rdi, [rdi]
	rol	ebp, 0xc
	add	ebp, edx
	mov	eax, edx
	mov	rcx, qword ptr [rsp - 0x50]
	lea	rdi, [rdi]
	xor	eax, ecx
	and	eax, ebp
	mov	rsp, rsp
	mov	rcx, qword ptr [rsp - 0x50]
	mov	rsp, rsp
	xor	eax, ecx
	lea	rdi, [rdi]
	mov	ecx, dword ptr [rdi + 8]
	mov	rbp, rbp
	mov	qword ptr [rsp - 0x78], rcx
	lea	ecx, [r9 + rcx]
	lea	rsi, [rsi]
	lea	ebx, [rax + rcx + 0x242070db]
	rol	ebx, 0x11
	add	ebx, ebp
	nop	
	mov	eax, ebp
	lea	rdi, [rdi]
	xor	eax, edx
	and	eax, ebx
	xor	eax, edx
	mov	esi, dword ptr [rdi + 0xc]
	mov	rsp, rsp
	mov	qword ptr [rsp - 0x20], rsi
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rsp - 0x50]
	lea	ecx, [rcx + rsi]
	mov	r12, rsi
	lea	eax, [rax + rcx - 0x3e423112]
	lea	rsi, [rsi]
	rol	eax, 0x16
	add	eax, ebx
	mov	ecx, ebx
	xor	ecx, ebp
	mov	rsp, rsp
	and	ecx, eax
	mov	rsp, rsp
	xor	ecx, ebp
	mov	esi, dword ptr [rdi + 0x10]
	mov	dword ptr [rsp - 0x40], esi
	nop	
	add	edx, esi
	nop	
	lea	ecx, [rcx + rdx - 0xa83f051]
	nop	
	rol	ecx, 7
	add	ecx, eax
	nop	
	mov	edx, eax
	lea	rsi, [rsi]
	xor	edx, ebx
	and	edx, ecx
	xor	edx, ebx
	mov	esi, dword ptr [rdi + 0x14]
	mov	dword ptr [rsp - 0x14], esi
	add	ebp, esi
	nop	
	lea	r8d, [rdx + rbp + 0x4787c62a]
	rol	r8d, 0xc
	add	r8d, ecx
	mov	edx, ecx
	lea	rdi, [rdi]
	xor	edx, eax
	mov	rsp, rsp
	and	edx, r8d
	mov	rsp, rsp
	xor	edx, eax
	mov	esi, dword ptr [rdi + 0x18]
	mov	rsp, rsp
	mov	dword ptr [rsp - 0x64], esi
	add	ebx, esi
	mov	rsp, rsp
	lea	ebx, [rdx + rbx - 0x57cfb9ed]
	mov	rbp, rbp
	rol	ebx, 0x11
	add	ebx, r8d
	lea	rdi, [rdi]
	mov	ebp, r8d
	mov	rbp, rbp
	xor	ebp, ecx
	nop	
	and	ebp, ebx
	mov	rsp, rsp
	xor	ebp, ecx
	mov	rsp, rsp
	mov	edx, dword ptr [rdi + 0x1c]
	mov	dword ptr [rsp - 0x2c], edx
	add	eax, edx
	lea	r9d, [rbp + rax - 0x2b96aff]
	rol	r9d, 0x16
	mov	rbp, rbp
	add	r9d, ebx
	mov	eax, ebx
	mov	rbp, rbp
	xor	eax, r8d
	and	eax, r9d
	lea	rsi, [rsi]
	xor	eax, r8d
	mov	edx, dword ptr [rdi + 0x20]
	lea	rsi, [rsi]
	mov	dword ptr [rsp - 0x60], edx
	mov	rsp, rsp
	add	ecx, edx
	lea	ecx, [rax + rcx + 0x698098d8]
	rol	ecx, 7
	mov	rbp, rbp
	add	ecx, r9d
	mov	rsp, rsp
	mov	eax, r9d
	xor	eax, ebx
	mov	rsp, rsp
	and	eax, ecx
	xor	eax, ebx
	mov	rbp, rbp
	mov	edx, dword ptr [rdi + 0x24]
	mov	dword ptr [rsp - 0x38], edx
	add	r8d, edx
	lea	rsi, [rsi]
	lea	ebp, [rax + r8 - 0x74bb0851]
	rol	ebp, 0xc
	lea	rdi, [rdi]
	add	ebp, ecx
	nop	
	mov	eax, ecx
	lea	rsi, [rsi]
	xor	eax, r9d
	mov	rsp, rsp
	and	eax, ebp
	xor	eax, r9d
	mov	edx, dword ptr [rdi + 0x28]
	mov	dword ptr [rsp - 0x18], edx
	nop	
	add	ebx, edx
	mov	r13d, edx
	lea	r15d, [rax + rbx - 0xa44f]
	lea	rsi, [rsi]
	rol	r15d, 0x11
	add	r15d, ebp
	mov	rbp, rbp
	mov	eax, ebp
	lea	rdi, [rdi]
	xor	eax, ecx
	lea	rdi, [rdi]
	and	eax, r15d
	xor	eax, ecx
	mov	edx, dword ptr [rdi + 0x2c]
	mov	dword ptr [rsp - 0x3c], edx
	add	r9d, edx
	lea	r11d, [rax + r9 - 0x76a32842]
	lea	rsi, [rsi]
	rol	r11d, 0x16
	add	r11d, r15d
	mov	eax, r15d
	xor	eax, ebp
	and	eax, r11d
	xor	eax, ebp
	mov	rbp, rbp
	mov	ebx, dword ptr [rdi + 0x30]
	lea	rsi, [rsi]
	mov	dword ptr [rsp - 0x24], ebx
	add	ecx, ebx
	lea	ecx, [rax + rcx + 0x6b901122]
	mov	rsp, rsp
	rol	ecx, 7
	lea	rsi, [rsi]
	add	ecx, r11d
	mov	eax, r11d
	xor	eax, r15d
	lea	rsi, [rsi]
	and	eax, ecx
	mov	rsp, rsp
	xor	eax, r15d
	nop	
	mov	ebx, dword ptr [rdi + 0x34]
	mov	dword ptr [rsp - 0x28], ebx
	add	ebp, ebx
	lea	r9d, [rax + rbp - 0x2678e6d]
	rol	r9d, 0xc
	add	r9d, ecx
	lea	rdi, [rdi]
	mov	eax, ecx
	xor	eax, r11d
	mov	rsp, rsp
	and	eax, r9d
	xor	eax, r11d
	mov	r14d, dword ptr [rdi + 0x38]
	nop	
	mov	dword ptr [rsp - 0x5c], r14d
	add	r15d, r14d
	lea	r8d, [rax + r15 - 0x5986bc72]
	rol	r8d, 0x11
	add	r8d, r9d
	mov	rbp, rbp
	mov	eax, r9d
	xor	eax, ecx
	nop	
	and	eax, r8d
	xor	eax, ecx
	lea	rsi, [rsi]
	mov	ebp, dword ptr [rdi + 0x3c]
	nop	
	mov	dword ptr [rsp - 0x30], ebp
	mov	rbp, rbp
	add	r11d, ebp
	mov	r15d, ebp
	lea	rsi, [rsi]
	lea	r11d, [rax + r11 + 0x49b40821]
	lea	rdi, [rdi]
	rol	r11d, 0x16
	add	r11d, r8d
	mov	eax, r11d
	xor	eax, r8d
	mov	rbp, rbp
	and	eax, r9d
	xor	eax, r8d
	lea	rsi, [rsi]
	mov	rbp, qword ptr [rsp - 0x10]
	mov	rbp, rbp
	add	ecx, ebp
	lea	ecx, [rax + rcx - 0x9e1da9e]
	lea	rsi, [rsi]
	rol	ecx, 5
	lea	rdi, [rdi]
	add	ecx, r11d
	mov	eax, ecx
	xor	eax, r11d
	mov	rsp, rsp
	and	eax, r8d
	xor	eax, r11d
	mov	rbp, rbp
	add	r9d, esi
	lea	ebp, [rax + r9 - 0x3fbf4cc0]
	rol	ebp, 9
	lea	rdi, [rdi]
	add	ebp, ecx
	mov	eax, ebp
	xor	eax, ecx
	lea	rsi, [rsi]
	and	eax, r11d
	lea	rsi, [rsi]
	xor	eax, ecx
	add	r8d, edx
	nop	
	lea	r8d, [rax + r8 + 0x265e5a51]
	rol	r8d, 0xe
	mov	rsp, rsp
	add	r8d, ebp
	mov	rsp, rsp
	mov	eax, r8d
	mov	rbp, rbp
	xor	eax, ebp
	and	eax, ecx
	mov	rsp, rsp
	xor	eax, ebp
	lea	rdi, [rdi]
	add	r11d, r10d
	mov	rsp, rsp
	lea	r11d, [rax + r11 - 0x16493856]
	lea	rsi, [rsi]
	rol	r11d, 0x14
	mov	rbp, rbp
	add	r11d, r8d
	mov	eax, r11d
	xor	eax, r8d
	nop	
	and	eax, ebp
	nop	
	xor	eax, r8d
	nop	
	mov	r9d, dword ptr [rsp - 0x14]
	nop	
	add	ecx, r9d
	lea	ecx, [rax + rcx - 0x29d0efa3]
	rol	ecx, 5
	mov	rsp, rsp
	add	ecx, r11d
	lea	rsi, [rsi]
	mov	eax, ecx
	xor	eax, r11d
	and	eax, r8d
	lea	rsi, [rsi]
	xor	eax, r11d
	lea	rdi, [rdi]
	add	ebp, r13d
	lea	rdi, [rdi]
	lea	ebp, [rax + rbp + 0x2441453]
	lea	rsi, [rsi]
	rol	ebp, 9
	mov	rbp, rbp
	add	ebp, ecx
	mov	eax, ebp
	xor	eax, ecx
	lea	rsi, [rsi]
	and	eax, r11d
	nop	
	xor	eax, ecx
	add	r8d, r15d
	mov	rbp, rbp
	lea	r8d, [rax + r8 - 0x275e197f]
	rol	r8d, 0xe
	add	r8d, ebp
	nop	
	mov	eax, r8d
	lea	rdi, [rdi]
	xor	eax, ebp
	and	eax, ecx
	lea	rdi, [rdi]
	xor	eax, ebp
	mov	r10d, dword ptr [rsp - 0x40]
	add	r11d, r10d
	lea	rsi, [rsi]
	lea	r11d, [rax + r11 - 0x182c0438]
	rol	r11d, 0x14
	add	r11d, r8d
	lea	rdi, [rdi]
	mov	eax, r11d
	mov	rbp, rbp
	xor	eax, r8d
	and	eax, ebp
	lea	rsi, [rsi]
	xor	eax, r8d
	nop	
	add	ecx, dword ptr [rsp - 0x38]
	mov	rbp, rbp
	lea	ecx, [rax + rcx + 0x21e1cde6]
	rol	ecx, 5
	add	ecx, r11d
	mov	eax, ecx
	xor	eax, r11d
	and	eax, r8d
	nop	
	xor	eax, r11d
	lea	rdi, [rdi]
	mov	r13d, r14d
	mov	rbp, rbp
	add	ebp, r13d
	nop	
	lea	ebp, [rax + rbp - 0x3cc8f82a]
	mov	rbp, rbp
	rol	ebp, 9
	add	ebp, ecx
	mov	rbp, rbp
	mov	eax, ebp
	mov	rbp, rbp
	xor	eax, ecx
	and	eax, r11d
	xor	eax, ecx
	nop	
	add	r8d, r12d
	mov	rbp, rbp
	lea	r8d, [rax + r8 - 0xb2af279]
	rol	r8d, 0xe
	add	r8d, ebp
	lea	rdi, [rdi]
	mov	eax, r8d
	mov	rbp, rbp
	xor	eax, ebp
	mov	rsp, rsp
	and	eax, ecx
	xor	eax, ebp
	lea	rsi, [rsi]
	mov	esi, dword ptr [rsp - 0x60]
	mov	rbp, rbp
	add	r11d, esi
	lea	rdi, [rdi]
	lea	r11d, [rax + r11 + 0x455a14ed]
	rol	r11d, 0x14
	lea	rsi, [rsi]
	add	r11d, r8d
	nop	
	mov	eax, r11d
	xor	eax, r8d
	and	eax, ebp
	xor	eax, r8d
	add	ecx, ebx
	lea	ecx, [rax + rcx - 0x561c16fb]
	nop	
	rol	ecx, 5
	mov	rbp, rbp
	add	ecx, r11d
	mov	eax, ecx
	xor	eax, r11d
	and	eax, r8d
	nop	
	xor	eax, r11d
	mov	rdx, qword ptr [rsp - 0x78]
	add	ebp, edx
	lea	rsi, [rsi]
	lea	r14d, [rax + rbp - 0x3105c08]
	rol	r14d, 9
	mov	rsp, rsp
	add	r14d, ecx
	nop	
	mov	eax, r14d
	nop	
	xor	eax, ecx
	lea	rdi, [rdi]
	and	eax, r11d
	xor	eax, ecx
	mov	rbp, rbp
	mov	edx, dword ptr [rsp - 0x2c]
	nop	
	add	r8d, edx
	lea	r8d, [rax + r8 + 0x676f02d9]
	nop	
	rol	r8d, 0xe
	add	r8d, r14d
	lea	rdi, [rdi]
	mov	ebp, r8d
	xor	ebp, r14d
	mov	eax, ebp
	lea	rsi, [rsi]
	and	eax, ecx
	xor	eax, r14d
	nop	
	mov	r15d, dword ptr [rsp - 0x24]
	mov	rbp, rbp
	add	r11d, r15d
	mov	rsp, rsp
	lea	eax, [rax + r11 - 0x72d5b376]
	rol	eax, 0x14
	add	eax, r8d
	lea	rsi, [rsi]
	xor	ebp, eax
	lea	rdi, [rdi]
	add	ecx, r9d
	mov	rbp, rbp
	lea	r11d, [rbp + rcx - 0x5c6be]
	mov	rsp, rsp
	rol	r11d, 4
	add	r11d, eax
	nop	
	mov	ecx, eax
	mov	rbp, rbp
	xor	ecx, r8d
	mov	rsp, rsp
	xor	ecx, r11d
	lea	rdi, [rdi]
	add	r14d, esi
	lea	rdi, [rdi]
	lea	r14d, [rcx + r14 - 0x788e097f]
	lea	rdi, [rdi]
	rol	r14d, 0xb
	add	r14d, r11d
	mov	ebp, r11d
	lea	rdi, [rdi]
	xor	ebp, eax
	lea	rdi, [rdi]
	xor	ebp, r14d
	add	r8d, dword ptr [rsp - 0x3c]
	lea	ebp, [rbp + r8 + 0x6d9d6122]
	mov	rbp, rbp
	rol	ebp, 0x10
	add	ebp, r14d
	lea	rsi, [rsi]
	mov	ecx, r14d
	mov	rbp, rbp
	xor	ecx, r11d
	xor	ecx, ebp
	add	eax, r13d
	mov	rbp, rbp
	lea	r8d, [rcx + rax - 0x21ac7f4]
	rol	r8d, 0x17
	nop	
	add	r8d, ebp
	mov	eax, ebp
	nop	
	xor	eax, r14d
	mov	rsp, rsp
	xor	eax, r8d
	mov	rcx, qword ptr [rsp - 0x10]
	add	r11d, ecx
	mov	rbp, rbp
	lea	r11d, [rax + r11 - 0x5b4115bc]
	rol	r11d, 4
	lea	rsi, [rsi]
	add	r11d, r8d
	lea	rsi, [rsi]
	mov	ecx, r8d
	mov	rsp, rsp
	xor	ecx, ebp
	xor	ecx, r11d
	add	r14d, r10d
	lea	r14d, [rcx + r14 + 0x4bdecfa9]
	lea	rsi, [rsi]
	rol	r14d, 0xb
	add	r14d, r11d
	lea	rdi, [rdi]
	mov	eax, r11d
	lea	rsi, [rsi]
	xor	eax, r8d
	mov	rsp, rsp
	xor	eax, r14d
	add	ebp, edx
	lea	ebp, [rax + rbp - 0x944b4a0]
	nop	
	rol	ebp, 0x10
	add	ebp, r14d
	mov	eax, r14d
	xor	eax, r11d
	mov	rsp, rsp
	xor	eax, ebp
	mov	rsp, rsp
	mov	r10d, dword ptr [rsp - 0x18]
	add	r8d, r10d
	lea	rdi, [rdi]
	lea	r8d, [rax + r8 - 0x41404390]
	lea	rsi, [rsi]
	rol	r8d, 0x17
	add	r8d, ebp
	lea	rdi, [rdi]
	mov	eax, ebp
	xor	eax, r14d
	xor	eax, r8d
	add	r11d, ebx
	lea	eax, [rax + r11 + 0x289b7ec6]
	rol	eax, 4
	add	eax, r8d
	lea	rdi, [rdi]
	mov	ecx, r8d
	xor	ecx, ebp
	xor	ecx, eax
	mov	rsi, qword ptr [rsp - 0x80]
	add	r14d, esi
	lea	r11d, [rcx + r14 - 0x155ed806]
	nop	
	rol	r11d, 0xb
	add	r11d, eax
	nop	
	mov	ecx, eax
	lea	rsi, [rsi]
	xor	ecx, r8d
	mov	rsp, rsp
	xor	ecx, r11d
	lea	rdi, [rdi]
	mov	r9, qword ptr [rsp - 0x20]
	add	ebp, r9d
	lea	r14d, [rcx + rbp - 0x2b10cf7b]
	rol	r14d, 0x10
	lea	rsi, [rsi]
	add	r14d, r11d
	mov	ecx, r11d
	xor	ecx, eax
	mov	rsp, rsp
	xor	ecx, r14d
	mov	r12d, dword ptr [rsp - 0x64]
	add	r8d, r12d
	nop	
	lea	r8d, [rcx + r8 + 0x4881d05]
	rol	r8d, 0x17
	lea	rdi, [rdi]
	add	r8d, r14d
	mov	rbp, rbp
	mov	ecx, r14d
	lea	rsi, [rsi]
	xor	ecx, r11d
	xor	ecx, r8d
	lea	rdi, [rdi]
	add	eax, dword ptr [rsp - 0x38]
	lea	rdi, [rdi]
	lea	ecx, [rcx + rax - 0x262b2fc7]
	mov	rbp, rbp
	rol	ecx, 4
	lea	rsi, [rsi]
	add	ecx, r8d
	mov	eax, r8d
	lea	rdi, [rdi]
	xor	eax, r14d
	xor	eax, ecx
	add	r11d, r15d
	lea	edx, [rax + r11 - 0x1924661b]
	rol	edx, 0xb
	add	edx, ecx
	nop	
	mov	ebp, ecx
	xor	ebp, r8d
	xor	ebp, edx
	nop	
	mov	r13d, dword ptr [rsp - 0x30]
	lea	rdi, [rdi]
	add	r14d, r13d
	lea	r11d, [rbp + r14 + 0x1fa27cf8]
	lea	rsi, [rsi]
	rol	r11d, 0x10
	add	r11d, edx
	mov	ebp, edx
	mov	rbp, rbp
	xor	ebp, ecx
	mov	rsp, rsp
	xor	ebp, r11d
	mov	rbp, rbp
	mov	rax, qword ptr [rsp - 0x78]
	mov	rbp, rbp
	add	r8d, eax
	mov	rbp, rbp
	mov	r14, rax
	lea	rdi, [rdi]
	lea	r8d, [rbp + r8 - 0x3b53a99b]
	lea	rdi, [rdi]
	add	ecx, esi
	rol	r8d, 0x17
	add	r8d, r11d
	mov	eax, edx
	lea	rsi, [rsi]
	not	eax
	or	eax, r8d
	xor	eax, r11d
	lea	ecx, [rax + rcx - 0xbd6ddbc]
	add	edx, dword ptr [rsp - 0x2c]
	rol	ecx, 6
	add	ecx, r8d
	mov	eax, r11d
	nop	
	not	eax
	or	eax, ecx
	lea	rdi, [rdi]
	xor	eax, r8d
	lea	ebp, [rax + rdx + 0x432aff97]
	add	r11d, dword ptr [rsp - 0x5c]
	mov	rsp, rsp
	rol	ebp, 0xa
	add	ebp, ecx
	mov	eax, r8d
	mov	rbp, rbp
	not	eax
	lea	rsi, [rsi]
	or	eax, ebp
	xor	eax, ecx
	mov	rsp, rsp
	lea	eax, [rax + r11 - 0x546bdc59]
	add	r8d, dword ptr [rsp - 0x14]
	mov	rsp, rsp
	rol	eax, 0xf
	lea	rsi, [rsi]
	add	eax, ebp
	mov	rbp, rbp
	mov	edx, ecx
	mov	rbp, rbp
	not	edx
	or	edx, eax
	xor	edx, ebp
	mov	rbp, rbp
	lea	esi, [rdx + r8 - 0x36c5fc7]
	add	ecx, r15d
	rol	esi, 0x15
	add	esi, eax
	mov	rsp, rsp
	mov	edx, ebp
	not	edx
	or	edx, esi
	lea	rdi, [rdi]
	xor	edx, eax
	lea	ecx, [rdx + rcx + 0x655b59c3]
	mov	rsp, rsp
	add	ebp, r9d
	rol	ecx, 6
	add	ecx, esi
	mov	rsp, rsp
	mov	edx, eax
	mov	rbp, rbp
	not	edx
	or	edx, ecx
	lea	rdi, [rdi]
	xor	edx, esi
	lea	ebp, [rdx + rbp - 0x70f3336e]
	add	eax, r10d
	mov	rsp, rsp
	mov	rbx, qword ptr [rsp - 0x50]
	rol	ebp, 0xa
	add	ebp, ecx
	mov	edx, esi
	nop	
	not	edx
	mov	rsp, rsp
	or	edx, ebp
	xor	edx, ecx
	lea	rdi, [rdi]
	lea	eax, [rdx + rax - 0x100b83]
	mov	rbp, rbp
	rol	eax, 0xf
	add	eax, ebp
	mov	rbp, rbp
	mov	rdx, qword ptr [rsp - 0x10]
	mov	rsp, rsp
	add	esi, edx
	mov	edx, ecx
	not	edx
	mov	rbp, rbp
	or	edx, eax
	xor	edx, ebp
	lea	r8d, [rdx + rsi - 0x7a7ba22f]
	rol	r8d, 0x15
	add	r8d, eax
	lea	rdi, [rdi]
	add	ecx, dword ptr [rsp - 0x60]
	mov	edx, ebp
	not	edx
	or	edx, r8d
	lea	rsi, [rsi]
	xor	edx, eax
	lea	ecx, [rdx + rcx + 0x6fa87e4f]
	rol	ecx, 6
	lea	rdi, [rdi]
	add	ecx, r8d
	nop	
	add	ebp, r13d
	lea	rdi, [rdi]
	mov	edx, eax
	lea	rdi, [rdi]
	not	edx
	or	edx, ecx
	mov	rbp, rbp
	xor	edx, r8d
	lea	edx, [rdx + rbp - 0x1d31920]
	rol	edx, 0xa
	mov	rbp, rbp
	add	edx, ecx
	mov	rbp, rbp
	add	eax, r12d
	mov	esi, r8d
	not	esi
	or	esi, edx
	xor	esi, ecx
	nop	
	lea	ebp, [rsi + rax - 0x5cfebcec]
	rol	ebp, 0xf
	add	ebp, edx
	mov	rbp, rbp
	add	r8d, dword ptr [rsp - 0x28]
	mov	rbp, rbp
	mov	eax, ecx
	lea	rdi, [rdi]
	not	eax
	or	eax, ebp
	xor	eax, edx
	lea	esi, [rax + r8 + 0x4e0811a1]
	nop	
	mov	r8, qword ptr [rsp - 8]
	mov	r10d, dword ptr [rsp - 0x34]
	rol	esi, 0x15
	add	esi, ebp
	add	ecx, dword ptr [rsp - 0x40]
	mov	eax, edx
	mov	rsp, rsp
	not	eax
	or	eax, esi
	mov	rsp, rsp
	xor	eax, ebp
	lea	rdi, [rdi]
	lea	ecx, [rax + rcx - 0x8ac817e]
	rol	ecx, 6
	add	ecx, esi
	lea	rsi, [rsi]
	add	edx, dword ptr [rsp - 0x3c]
	mov	eax, ebp
	nop	
	not	eax
	mov	rbp, rbp
	or	eax, ecx
	lea	rdi, [rdi]
	xor	eax, esi
	mov	rsp, rsp
	lea	edx, [rax + rdx - 0x42c50dcb]
	rol	edx, 0xa
	add	edx, ecx
	lea	rdi, [rdi]
	add	ebp, r14d
	lea	rdi, [rdi]
	mov	eax, esi
	lea	rdi, [rdi]
	not	eax
	or	eax, edx
	xor	eax, ecx
	lea	rsi, [rsi]
	lea	eax, [rax + rbp + 0x2ad7d2bb]
	add	esi, dword ptr [rsp - 0x38]
	rol	eax, 0xf
	add	eax, edx
	add	r10d, ecx
	mov	rbp, rbp
	not	ecx
	or	ecx, eax
	mov	rbp, rbp
	xor	ecx, edx
	lea	ecx, [rcx + rsi - 0x14792c6f]
	rol	ecx, 0x15
	add	ebx, eax
	nop	
	add	ebx, ecx
	mov	rcx, qword ptr [rsp - 0x70]
	add	eax, ecx
	mov	rcx, qword ptr [rsp - 0x48]
	add	edx, ecx
	lea	rdi, [rdi]
	add	rdi, 0x40
	nop	
	cmp	rdi, r8
	mov	r9d, eax
	mov	ebp, edx
	jb	.label_851
	jmp	.label_850
.label_852:
	mov	rsp, rsp
	mov	eax, r9d
	mov	edx, ebp
.label_850:
	mov	rcx, qword ptr [rsp - 0x58]
	mov	dword ptr [rcx], r10d
	mov	dword ptr [rcx + 4], ebx
	mov	dword ptr [rcx + 8], eax
	mov	dword ptr [rcx + 0xc], edx
	pop	rbx
	pop	r12
	nop	
	pop	r13
	pop	r14
	mov	rsp, rsp
	pop	r15
	mov	rbp, rbp
	pop	rbp
	lea	rdi, [rdi]
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40f530
	.globl md5_stream
	.type md5_stream, @function
md5_stream:

	push	r15
	mov	rbp, rbp
	push	r14
	lea	rsi, [rsi]
	push	r13
	mov	rsp, rsp
	push	r12
	mov	rbp, rbp
	push	rbx
	lea	rsi, [rsi]
	sub	rsp, 0xa0
	mov	r14, rsi
	lea	rdi, [rdi]
	mov	r12, rdi
	mov	edi, 0x8048
	mov	rbp, rbp
	call	malloc
	lea	rsi, [rsi]
	mov	r15, rax
	mov	eax, 1
	mov	rsp, rsp
	test	r15, r15
	mov	rbp, rbp
	je	.label_858
	lea	rdi, [rdi]
	movaps	xmm0,  xmmword ptr [word ptr [rip + label_848]]
	movaps	xmmword ptr [rsp], xmm0
	lea	rsi, [rsi]
	mov	dword ptr [rsp + 0x14], 0
	lea	rsi, [rsi]
	mov	dword ptr [rsp + 0x10], 0
	mov	dword ptr [rsp + 0x18], 0
	nop	
	xor	ebx, ebx
	mov	rsp, rsp
	test	byte ptr [r12], 0x10
	lea	rdi, [rdi]
	jne	.label_855
	lea	r13, [rsp]
	nop	word ptr cs:[rax + rax]
.label_856:
	lea	rdi, [r15 + rbx]
	nop	
	mov	edx, 0x8000
	sub	rdx, rbx
	lea	rsi, [rsi]
	mov	esi, 1
	lea	rsi, [rsi]
	mov	rcx, r12
	lea	rdi, [rdi]
	call	fread_unlocked
	add	rbx, rax
	cmp	rbx, 0x8000
	jne	.label_861
	mov	esi, 0x8000
	nop	
	mov	rdi, r15
	lea	rdi, [rdi]
	mov	rdx, r13
	call	md5_process_block
	lea	rdi, [rdi]
	xor	ebx, ebx
	mov	rbp, rbp
	jmp	.label_853
	nop	dword ptr [rax]
.label_861:
	test	rax, rax
	je	.label_857
.label_853:
	test	byte ptr [r12], 0x10
	je	.label_856
	nop	
	jmp	.label_859
.label_857:
	test	byte ptr [r12], 0x20
	jne	.label_860
.label_859:
	test	rbx, rbx
	nop	
	je	.label_855
	lea	rdi, [rdi]
	lea	rdx, [rsp]
	mov	rdi, r15
	mov	rsi, rbx
	lea	rdi, [rdi]
	call	md5_process_bytes
.label_855:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rsp + 0x18]
	mov	rsp, rsp
	cmp	rax, 0x38
	mov	rsp, rsp
	mov	ecx, 0x10
	mov	ebx, 0x20
	cmovb	rbx, rcx
	mov	ecx, dword ptr [rsp + 0x10]
	add	ecx, eax
	mov	rsp, rsp
	mov	dword ptr [rsp + 0x10], ecx
	jae	.label_854
	inc	dword ptr [rsp + 0x14]
.label_854:
	nop	
	lea	edx, [rcx*8]
	lea	rsi, [rsi]
	lea	r12, [rsp + 0x1c]
	mov	dword ptr [rsp + rbx*4 + 0x14], edx
	mov	edx, dword ptr [rsp + 0x14]
	shld	edx, ecx, 3
	mov	rbp, rbp
	mov	dword ptr [rsp + rbx*4 + 0x18], edx
	mov	rsp, rsp
	lea	rdi, [rsp + rax + 0x1c]
	mov	rsp, rsp
	lea	rdx, [rbx*4 - 8]
	nop	
	sub	rdx, rax
	mov	esi, OFFSET FLAT:fillbuf_0
	nop	
	call	memcpy
	mov	rbp, rbp
	shl	rbx, 2
	mov	rsp, rsp
	lea	rdx, [rsp]
	mov	rbp, rbp
	mov	rdi, r12
	mov	rsi, rbx
	mov	rsp, rsp
	call	md5_process_block
	movaps	xmm0, xmmword ptr [rsp]
	movups	xmmword ptr [r14], xmm0
	mov	rdi, r15
	call	free
	mov	rbp, rbp
	xor	eax, eax
.label_858:
	add	rsp, 0xa0
	lea	rdi, [rdi]
	pop	rbx
	pop	r12
	mov	rbp, rbp
	pop	r13
	lea	rsi, [rsi]
	pop	r14
	lea	rdi, [rdi]
	pop	r15
	mov	rbp, rbp
	ret	
.label_860:
	mov	rdi, r15
	nop	
	call	free
	mov	eax, 1
	mov	rsp, rsp
	jmp	.label_858
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40f740

	.globl md5_process_bytes
	.type md5_process_bytes, @function
md5_process_bytes:
	push	rbp
	lea	rsi, [rsi]
	push	r15
	push	r14
	push	r13
	mov	rbp, rbp
	push	r12
	push	rbx
	push	rax
	mov	r14, rdx
	lea	rsi, [rsi]
	mov	r12, rsi
	mov	rbp, rbp
	mov	r15, rdi
	mov	ebx, dword ptr [r14 + 0x18]
	test	rbx, rbx
	lea	rdi, [rdi]
	je	.label_862
	mov	rbp, rbp
	mov	r13d, 0x80
	sub	r13, rbx
	cmp	r13, r12
	cmova	r13, r12
	lea	rsi, [rsi]
	lea	rdi, [r14 + rbx + 0x1c]
	mov	rbp, rbp
	mov	rsi, r15
	mov	rbp, rbp
	mov	rdx, r13
	mov	rbp, rbp
	call	memcpy
	lea	rdi, [rdi]
	add	rbx, r13
	lea	rdi, [rdi]
	mov	dword ptr [r14 + 0x18], ebx
	mov	rsp, rsp
	cmp	ebx, 0x41
	jb	.label_866
	lea	rbp, [r14 + 0x1c]
	mov	rsp, rsp
	mov	esi, ebx
	and	esi, 0xffffffc0
	mov	rdi, rbp
	mov	rdx, r14
	mov	rbp, rbp
	call	md5_process_block
	mov	edx, dword ptr [r14 + 0x18]
	lea	rdi, [rdi]
	and	edx, 0x3f
	lea	rsi, [rsi]
	mov	dword ptr [r14 + 0x18], edx
	and	rbx, 0xffffffffffffffc0
	add	rbx, rbp
	mov	rbp, rbp
	mov	rdi, rbp
	mov	rbp, rbp
	mov	rsi, rbx
	lea	rdi, [rdi]
	call	memcpy
.label_866:
	mov	rsp, rsp
	add	r15, r13
	nop	
	sub	r12, r13
.label_862:
	cmp	r12, 0x40
	lea	rsi, [rsi]
	jb	.label_863
	mov	rbx, r12
	mov	rsp, rsp
	and	rbx, 0xffffffffffffffc0
	nop	
	mov	rdi, r15
	mov	rbp, rbp
	mov	rsi, rbx
	lea	rsi, [rsi]
	mov	rdx, r14
	call	md5_process_block
	mov	rsp, rsp
	add	r15, rbx
	and	r12d, 0x3f
.label_863:
	test	r12, r12
	je	.label_865
	mov	ebx, dword ptr [r14 + 0x18]
	lea	rdi, [r14 + rbx + 0x1c]
	mov	rsi, r15
	mov	rdx, r12
	call	memcpy
	lea	rdi, [rdi]
	add	rbx, r12
	lea	rsi, [rsi]
	cmp	rbx, 0x40
	jb	.label_864
	lea	rbp, [r14 + 0x1c]
	mov	esi, 0x40
	mov	rdi, rbp
	mov	rdx, r14
	call	md5_process_block
	add	rbx, -0x40
	mov	rsp, rsp
	lea	rsi, [r14 + 0x5c]
	mov	rbp, rbp
	mov	rdi, rbp
	mov	rdx, rbx
	mov	rsp, rsp
	call	memcpy
.label_864:
	mov	rbp, rbp
	mov	dword ptr [r14 + 0x18], ebx
.label_865:
	mov	rbp, rbp
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	lea	rdi, [rdi]
	pop	r14
	mov	rbp, rbp
	pop	r15
	pop	rbp
	lea	rsi, [rsi]
	ret	
	.section	.text
	.align	16
	#Procedure 0x40f8b0
	.globl md5_buffer
	.type md5_buffer, @function
md5_buffer:

	nop
	push	r15
	push	r14
	push	rbx
	lea	rsi, [rsi]
	sub	rsp, 0xa0
	nop	
	mov	r14, rdx
	lea	rsi, [rsi]
	movaps	xmm0,  xmmword ptr [word ptr [rip + label_848]]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp + 0x14], 0
	mov	rsp, rsp
	mov	dword ptr [rsp + 0x10], 0
	mov	rbp, rbp
	mov	dword ptr [rsp + 0x18], 0
	mov	rsp, rsp
	lea	rdx, [rsp]
	call	md5_process_bytes
	mov	eax, dword ptr [rsp + 0x18]
	cmp	rax, 0x38
	mov	ecx, 0x10
	nop	
	mov	ebx, 0x20
	cmovb	rbx, rcx
	nop	
	mov	ecx, dword ptr [rsp + 0x10]
	add	ecx, eax
	mov	dword ptr [rsp + 0x10], ecx
	lea	rdi, [rdi]
	jae	.label_867
	mov	rsp, rsp
	inc	dword ptr [rsp + 0x14]
.label_867:
	lea	rdi, [rdi]
	lea	edx, [rcx*8]
	mov	rsp, rsp
	lea	r15, [rsp + 0x1c]
	mov	rsp, rsp
	mov	dword ptr [rsp + rbx*4 + 0x14], edx
	mov	edx, dword ptr [rsp + 0x14]
	lea	rsi, [rsi]
	shld	edx, ecx, 3
	nop	
	mov	dword ptr [rsp + rbx*4 + 0x18], edx
	nop	
	lea	rdi, [rsp + rax + 0x1c]
	mov	rbp, rbp
	lea	rdx, [rbx*4 - 8]
	lea	rdi, [rdi]
	sub	rdx, rax
	lea	rdi, [rdi]
	mov	esi, OFFSET FLAT:fillbuf_0
	call	memcpy
	shl	rbx, 2
	lea	rdx, [rsp]
	lea	rdi, [rdi]
	mov	rdi, r15
	mov	rsi, rbx
	call	md5_process_block
	mov	rsp, rsp
	movaps	xmm0, xmmword ptr [rsp]
	lea	rsi, [rsi]
	movups	xmmword ptr [r14], xmm0
	mov	rax, r14
	add	rsp, 0xa0
	pop	rbx
	pop	r14
	pop	r15
	ret	
	nop	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x40f9b0
	.globl fdadvise
	.type fdadvise, @function
fdadvise:

	jmp	posix_fadvise
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40f9c0

	.globl fadvise
	.type fadvise, @function
fadvise:
	lea	rdi, [rdi]
	push	rbx
	mov	ebx, esi
	test	rdi, rdi
	je	.label_868
	call	fileno
	mov	rsp, rsp
	xor	esi, esi
	xor	edx, edx
	mov	rbp, rbp
	mov	edi, eax
	mov	rsp, rsp
	mov	ecx, ebx
	pop	rbx
	jmp	posix_fadvise
.label_868:
	pop	rbx
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x40f9f0

	.globl filevercmp
	.type filevercmp, @function
filevercmp:
	push	rbp
	mov	rbp, rbp
	push	r15
	push	r14
	mov	rsp, rsp
	push	r13
	push	r12
	nop	
	push	rbx
	push	rax
	mov	r13, rsi
	mov	r15, rdi
	call	strcmp
	mov	r10d, eax
	xor	eax, eax
	test	r10d, r10d
	lea	rsi, [rsi]
	je	.label_872
	lea	rsi, [rsi]
	mov	dl, byte ptr [r15]
	mov	eax, 0xffffffff
	test	dl, dl
	je	.label_872
	mov	rbp, rbp
	mov	bl, byte ptr [r13]
	mov	rbp, rbp
	test	bl, bl
	je	.label_882
	movzx	ecx, dl
	cmp	ecx, 0x2e
	lea	rdi, [rdi]
	jne	.label_888
	lea	rdi, [rdi]
	cmp	byte ptr [r15 + 1], 0
	je	.label_872
.label_888:
	movzx	esi, bl
	lea	rdi, [rdi]
	cmp	esi, 0x2e
	jne	.label_893
	cmp	byte ptr [r13 + 1], 0
	je	.label_896
.label_893:
	cmp	ecx, 0x2e
	nop	
	jne	.label_898
	lea	rdi, [rdi]
	movzx	edi, byte ptr [r15 + 1]
	cmp	edi, 0x2e
	jne	.label_898
	cmp	byte ptr [r15 + 2], 0
	je	.label_872
.label_898:
	cmp	esi, 0x2e
	jne	.label_895
	movzx	edi, byte ptr [r13 + 1]
	mov	rbp, rbp
	cmp	edi, 0x2e
	mov	rbp, rbp
	jne	.label_895
	mov	rbp, rbp
	cmp	byte ptr [r13 + 2], 0
	je	.label_907
.label_895:
	cmp	ecx, 0x2e
	jne	.label_910
	lea	rsi, [rsi]
	cmp	esi, 0x2e
	mov	rsp, rsp
	jne	.label_872
	nop	
	inc	r13
	mov	dl, byte ptr [r15 + 1]
	mov	rsp, rsp
	inc	r15
	jmp	.label_914
.label_882:
	mov	rsp, rsp
	mov	eax, 1
	jmp	.label_872
.label_910:
	cmp	esi, 0x2e
	mov	eax, 1
	mov	rbp, rbp
	je	.label_872
.label_914:
	movabs	r11, 0x3ffffff03ffffff
	lea	rdi, [rdi]
	xor	ecx, ecx
	test	dl, dl
	je	.label_917
	lea	rdi, [rdi]
	xor	r8d, r8d
	movabs	rsi, 0x3ffffffffffffff
	and	rsi, r11
	mov	rsp, rsp
	mov	rbp, r15
	xor	edi, edi
	nop	word ptr [rax + rax]
.label_876:
	mov	rbp, rbp
	test	dil, 1
	mov	rbp, rbp
	jne	.label_881
	mov	rbp, rbp
	movzx	ebx, dl
	lea	rdi, [rdi]
	cmp	ebx, 0x2e
	jne	.label_884
	test	rcx, rcx
	cmove	rcx, rbp
	mov	rbp, rbp
	mov	dil, 1
	jmp	.label_873
	nop	dword ptr [rax]
.label_881:
	movsx	edi, dl
	lea	rdi, [rdi]
	add	edi, -0x41
	mov	rbp, rbp
	cmp	edi, 0x39
	nop	
	ja	.label_894
	bt	rsi, rdi
	nop	
	jb	.label_909
.label_894:
	lea	rsi, [rsi]
	movzx	eax, dl
	xor	edi, edi
	mov	rbp, rbp
	cmp	eax, 0x7e
	cmovne	rcx, rdi
	nop	
	jmp	.label_873
	nop	
.label_884:
	lea	rdi, [rdi]
	movsx	edx, dl
	mov	rbp, rbp
	lea	eax, [rdx - 0x41]
	nop	
	cmp	eax, 0x39
	mov	rsp, rsp
	ja	.label_904
	lea	rsi, [rsi]
	bt	r11, rax
	mov	rbp, rbp
	jb	.label_873
.label_904:
	lea	rdi, [rdi]
	add	edx, -0x30
	lea	rdi, [rdi]
	cmp	edx, 0xa
	lea	rdi, [rdi]
	jb	.label_873
	nop	
	cmp	ebx, 0x7e
	cmovne	rcx, r8
	mov	rbp, rbp
	jmp	.label_873
.label_909:
	xor	edi, edi
	nop	word ptr cs:[rax + rax]
.label_873:
	mov	dl, byte ptr [rbp + 1]
	mov	rbp, rbp
	inc	rbp
	lea	rsi, [rsi]
	test	dl, dl
	jne	.label_876
	lea	rdi, [rdi]
	jmp	.label_899
.label_896:
	lea	rdi, [rdi]
	mov	eax, 1
	jmp	.label_872
.label_917:
	lea	rsi, [rsi]
	mov	rbp, r15
.label_899:
	mov	bl, byte ptr [r13]
	xor	edx, edx
	test	bl, bl
	mov	rsp, rsp
	je	.label_871
	xor	r8d, r8d
	movabs	r9, 0x3ffffffffffffff
	and	r9, r11
	mov	rbp, rbp
	mov	r12, r13
	lea	rdi, [rdi]
	xor	edi, edi
	nop	dword ptr [rax + rax]
.label_915:
	nop	
	test	dil, 1
	mov	rsp, rsp
	jne	.label_886
	movzx	eax, bl
	cmp	eax, 0x2e
	jne	.label_889
	test	rdx, rdx
	cmove	rdx, r12
	mov	rsp, rsp
	mov	dil, 1
	nop	
	jmp	.label_892
	nop	word ptr cs:[rax + rax]
.label_886:
	movsx	eax, bl
	add	eax, -0x41
	lea	rdi, [rdi]
	cmp	eax, 0x39
	mov	rbp, rbp
	ja	.label_897
	lea	rsi, [rsi]
	bt	r9, rax
	jb	.label_901
.label_897:
	movzx	eax, bl
	xor	edi, edi
	mov	rbp, rbp
	cmp	eax, 0x7e
	nop	
	cmovne	rdx, rdi
	jmp	.label_892
	nop	dword ptr [rax]
.label_889:
	movsx	ebx, bl
	lea	esi, [rbx - 0x41]
	cmp	esi, 0x39
	nop	
	ja	.label_906
	lea	rdi, [rdi]
	bt	r11, rsi
	jb	.label_892
.label_906:
	add	ebx, -0x30
	mov	rbp, rbp
	cmp	ebx, 0xa
	mov	rbp, rbp
	jb	.label_892
	mov	rsp, rsp
	cmp	eax, 0x7e
	cmovne	rdx, r8
	mov	rbp, rbp
	jmp	.label_892
.label_901:
	lea	rdi, [rdi]
	xor	edi, edi
	nop	word ptr [rax + rax]
.label_892:
	lea	rsi, [rsi]
	mov	bl, byte ptr [r12 + 1]
	inc	r12
	test	bl, bl
	mov	rsp, rsp
	jne	.label_915
	mov	rsp, rsp
	jmp	.label_918
.label_871:
	mov	r12, r13
.label_918:
	test	rcx, rcx
	mov	rsp, rsp
	mov	r14, rbp
	cmovne	r14, rcx
	sub	r14, r15
	mov	rbp, rbp
	test	rdx, rdx
	mov	r9, r12
	lea	rdi, [rdi]
	cmovne	r9, rdx
	sub	r9, r13
	or	rcx, rdx
	nop	
	je	.label_919
	mov	rsp, rsp
	cmp	r14, r9
	jne	.label_877
	mov	dword ptr [rsp + 4], r10d
	mov	rsp, rsp
	mov	rdi, r15
	mov	rsi, r13
	mov	rdx, r14
	mov	rbp, rbp
	mov	rbx, r11
	call	strncmp
	mov	r11, rbx
	test	eax, eax
	mov	r9, r14
	lea	rdi, [rdi]
	jne	.label_890
	sub	rbp, r15
	sub	r12, r13
	mov	r9, r12
	lea	rsi, [rsi]
	mov	r14, rbp
	lea	rdi, [rdi]
	jmp	.label_890
.label_919:
	mov	rbp, rbp
	mov	dword ptr [rsp + 4], r10d
	lea	rdi, [rdi]
	jmp	.label_890
.label_877:
	nop	
	mov	dword ptr [rsp + 4], r10d
.label_890:
	lea	rdi, [rdi]
	xor	edx, edx
	movabs	rax, 0x3ffffffffffffff
	and	r11, rax
	mov	r8d, 0xffffffff
	xor	esi, esi
.label_916:
	cmp	rdx, r9
	jb	.label_905
	lea	rdi, [rdi]
	cmp	rsi, r14
	lea	rsi, [rsi]
	jb	.label_905
	jmp	.label_908
	nop	
.label_912:
	mov	rbp, rbp
	inc	rsi
	inc	rdx
.label_905:
	mov	rsp, rsp
	cmp	rsi, r14
	jae	.label_911
	movsx	eax, byte ptr [r15 + rsi]
	lea	rdi, [rdi]
	add	eax, -0x30
	cmp	eax, 9
	mov	rbp, rbp
	ja	.label_913
.label_911:
	cmp	rdx, r9
	lea	rsi, [rsi]
	jae	.label_883
	lea	rsi, [rsi]
	movsx	eax, byte ptr [r13 + rdx]
	add	eax, -0x30
	lea	rdi, [rdi]
	cmp	eax, 0xa
	mov	rbp, rbp
	jb	.label_883
.label_913:
	xor	ecx, ecx
	mov	rbp, rbp
	cmp	r14, rsi
	mov	edi, 0
	je	.label_870
	lea	rdi, [rdi]
	movzx	eax, byte ptr [r15 + rsi]
	lea	edi, [rax - 0x30]
	nop	
	cmp	edi, 0xa
	mov	rbp, rbp
	mov	edi, 0
	jb	.label_870
	mov	rsp, rsp
	lea	edi, [rax - 0x41]
	cmp	edi, 0x39
	ja	.label_875
	lea	rsi, [rsi]
	bt	r11, rdi
	jb	.label_880
.label_875:
	mov	rsp, rsp
	lea	edi, [rax + 0x100]
	lea	rdi, [rdi]
	cmp	eax, 0x7e
	lea	rdi, [rdi]
	cmove	edi, r8d
	mov	rsp, rsp
	jmp	.label_870
.label_880:
	mov	edi, eax
	nop	word ptr cs:[rax + rax]
.label_870:
	lea	rsi, [rsi]
	cmp	r9, rdx
	mov	rbp, rbp
	je	.label_887
	mov	rsp, rsp
	movzx	eax, byte ptr [r13 + rdx]
	nop	
	lea	ebp, [rax - 0x30]
	mov	rbp, rbp
	cmp	ebp, 0xa
	jb	.label_887
	mov	rbp, rbp
	lea	ecx, [rax - 0x41]
	mov	rsp, rsp
	cmp	ecx, 0x39
	ja	.label_900
	mov	rsp, rsp
	bt	r11, rcx
	lea	rsi, [rsi]
	jb	.label_903
.label_900:
	lea	rsi, [rsi]
	lea	ecx, [rax + 0x100]
	mov	rbp, rbp
	cmp	eax, 0x7e
	cmove	ecx, r8d
	lea	rsi, [rsi]
	jmp	.label_887
.label_903:
	mov	ecx, eax
	nop	word ptr cs:[rax + rax]
.label_887:
	mov	rsp, rsp
	sub	edi, ecx
	nop	
	je	.label_912
	mov	rsp, rsp
	jmp	.label_879
.label_883:
	lea	rdi, [rdi]
	dec	rsi
	nop	word ptr [rax + rax]
.label_885:
	lea	rsi, [rsi]
	movsx	ebp, byte ptr [r15 + rsi + 1]
	mov	rsp, rsp
	inc	rsi
	cmp	ebp, 0x30
	je	.label_885
	lea	rdi, [rdi]
	mov	r12, r11
	lea	rsi, [rsi]
	dec	rdx
.label_869:
	movsx	edi, byte ptr [r13 + rdx + 1]
	lea	rdi, [rdi]
	inc	rdx
	cmp	edi, 0x30
	je	.label_869
	lea	rdi, [rdi]
	lea	eax, [rbp - 0x30]
	xor	ecx, ecx
	lea	rdi, [rdi]
	cmp	eax, 9
	lea	rdi, [rdi]
	ja	.label_874
	lea	eax, [rdi - 0x30]
	mov	rsp, rsp
	cmp	eax, 9
	lea	rsi, [rsi]
	ja	.label_878
	inc	rdx
	nop	
	inc	rsi
	xor	ecx, ecx
	mov	r11, rsi
	lea	rdi, [rdi]
	mov	rax, rdx
	nop	dword ptr [rax + rax]
.label_902:
	mov	ebx, ecx
	nop	
	mov	rdx, rax
	lea	rdi, [rdi]
	mov	rsi, r11
	sub	ebp, edi
	nop	
	test	ebx, ebx
	nop	
	mov	ecx, ebp
	cmovne	ecx, ebx
	mov	rsp, rsp
	mov	r10b, byte ptr [r15 + rsi]
	lea	rdi, [rdi]
	movsx	ebp, r10b
	mov	rbp, rbp
	lea	eax, [rbp - 0x30]
	mov	rbp, rbp
	cmp	eax, 9
	mov	rsp, rsp
	ja	.label_891
	lea	rsi, [rsi]
	movsx	edi, byte ptr [r13 + rdx]
	lea	rdi, [rdi]
	lea	ebx, [rdi - 0x30]
	lea	rax, [rdx + 1]
	lea	r11, [rsi + 1]
	mov	rsp, rsp
	cmp	ebx, 0xa
	lea	rsi, [rsi]
	jb	.label_902
	jmp	.label_891
.label_874:
	mov	r10b, bpl
	jmp	.label_891
.label_878:
	mov	r10b, bpl
.label_891:
	lea	rsi, [rsi]
	movsx	eax, r10b
	mov	rsp, rsp
	add	eax, -0x30
	mov	rbp, rbp
	mov	edi, 1
	lea	rdi, [rdi]
	cmp	eax, 0xa
	lea	rdi, [rdi]
	mov	r11, r12
	jb	.label_879
	lea	rsi, [rsi]
	movsx	eax, byte ptr [r13 + rdx]
	add	eax, -0x30
	mov	edi, 0xffffffff
	cmp	eax, 0xa
	nop	
	jb	.label_879
	test	ecx, ecx
	mov	edi, ecx
	je	.label_916
	lea	rdi, [rdi]
	jmp	.label_879
.label_907:
	mov	eax, 1
.label_1833:
	jmp	.label_872
.label_908:
	mov	rbp, rbp
	xor	edi, edi
.label_879:
	nop	
	test	edi, edi
	lea	rsi, [rsi]
	mov	eax, dword ptr [rsp + 4]
	mov	rsp, rsp
	cmovne	eax, edi
.label_872:
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	mov	rbp, rbp
	pop	rbp
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x410030

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
	je	.label_921
	movzx	ecx, byte ptr [rax]
	cmp	ecx, 0x43
	jne	.label_920
	mov	rsp, rsp
	cmp	byte ptr [rax + 1], 0
	je	.label_922
.label_920:
	nop	
	mov	esi, OFFSET FLAT:.str.1_2
	mov	rsp, rsp
	mov	rdi, rax
	lea	rsi, [rsi]
	call	strcmp
	mov	rsp, rsp
	test	eax, eax
	jne	.label_921
.label_922:
	lea	rdi, [rdi]
	xor	ebx, ebx
.label_921:
	mov	al, bl
	lea	rdi, [rdi]
	pop	rbx
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x410080
	.globl hash_get_n_buckets
	.type hash_get_n_buckets, @function
hash_get_n_buckets:

	mov	rax, qword ptr [rdi + 0x10]
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x410090
	.globl hash_get_n_buckets_used
	.type hash_get_n_buckets_used, @function
hash_get_n_buckets_used:

	mov	rax, qword ptr [rdi + 0x18]
	lea	rsi, [rsi]
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4100a0
	.globl hash_get_n_entries
	.type hash_get_n_entries, @function
hash_get_n_entries:

	mov	rax, qword ptr [rdi + 0x20]
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4100b0
	.globl hash_get_max_bucket_length
	.type hash_get_max_bucket_length, @function
hash_get_max_bucket_length:

	mov	rcx, qword ptr [rdi]
	nop	
	mov	rdx, qword ptr [rdi + 8]
	lea	rsi, [rsi]
	xor	eax, eax
	nop	
	cmp	rcx, rdx
	jae	.label_929
	mov	rdi, rcx
	not	rdi
	nop	
	add	rdi, rdx
	mov	rsi, rdi
	mov	rbp, rbp
	shr	rsi, 4
	lea	rsi, [rsi]
	xor	eax, eax
	lea	rsi, [rsi]
	bt	rdi, 4
	jb	.label_925
	xor	eax, eax
	nop	
	cmp	qword ptr [rcx], 0
	mov	rsp, rsp
	je	.label_926
	mov	rbp, rbp
	mov	rdi, rcx
	nop	dword ptr [rax]
.label_923:
	nop	
	mov	rdi, qword ptr [rdi + 8]
	inc	rax
	mov	rsp, rsp
	test	rdi, rdi
	lea	rdi, [rdi]
	jne	.label_923
.label_926:
	add	rcx, 0x10
.label_925:
	nop	
	test	rsi, rsi
	je	.label_929
	nop	word ptr cs:[rax + rax]
.label_924:
	cmp	qword ptr [rcx], 0
	nop	
	mov	esi, 0
	mov	rdi, rcx
	mov	rbp, rbp
	je	.label_928
	nop	word ptr cs:[rax + rax]
.label_930:
	mov	rsp, rsp
	mov	rdi, qword ptr [rdi + 8]
	inc	rsi
	test	rdi, rdi
	jne	.label_930
	mov	rbp, rbp
	cmp	rsi, rax
	lea	rsi, [rsi]
	cmova	rax, rsi
.label_928:
	cmp	qword ptr [rcx + 0x10], 0
	nop	
	je	.label_927
	lea	rdi, [rcx + 0x10]
	xor	esi, esi
	nop	word ptr [rax + rax]
.label_931:
	mov	rdi, qword ptr [rdi + 8]
	mov	rbp, rbp
	inc	rsi
	lea	rsi, [rsi]
	test	rdi, rdi
	lea	rsi, [rsi]
	jne	.label_931
	mov	rsp, rsp
	cmp	rsi, rax
	nop	
	cmova	rax, rsi
.label_927:
	mov	rsp, rsp
	add	rcx, 0x20
	mov	rsp, rsp
	cmp	rcx, rdx
	mov	rsp, rsp
	jb	.label_924
.label_929:
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4101c0
	.globl hash_table_ok
	.type hash_table_ok, @function
hash_table_ok:

	mov	rbp, rbp
	mov	rcx, qword ptr [rdi]
	mov	r9, qword ptr [rdi + 8]
	lea	rdi, [rdi]
	xor	edx, edx
	mov	rsp, rsp
	cmp	rcx, r9
	mov	esi, 0
	jae	.label_932
	mov	rbp, rbp
	mov	rax, rcx
	mov	rbp, rbp
	not	rax
	lea	rdi, [rdi]
	add	rax, r9
	mov	rbp, rbp
	mov	r8, rax
	shr	r8, 4
	lea	rdi, [rdi]
	xor	edx, edx
	bt	rax, 4
	jb	.label_937
	xor	edx, edx
	cmp	qword ptr [rcx], 0
	mov	rsp, rsp
	je	.label_933
	mov	esi, 1
	mov	rax, rcx
	nop	dword ptr [rax + rax]
.label_935:
	mov	rbp, rbp
	inc	rdx
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax + 8]
	lea	rsi, [rsi]
	test	rax, rax
	jne	.label_935
	mov	rsp, rsp
	jmp	.label_942
.label_937:
	mov	rbp, rbp
	xor	esi, esi
	jmp	.label_944
.label_933:
	xor	esi, esi
.label_942:
	add	rcx, 0x10
.label_944:
	test	r8, r8
	nop	
	je	.label_932
	nop	dword ptr [rax]
.label_939:
	cmp	qword ptr [rcx], 0
	mov	rbp, rbp
	mov	rax, rcx
	je	.label_934
	nop	dword ptr [rax]
.label_936:
	inc	rdx
	mov	rax, qword ptr [rax + 8]
	lea	rdi, [rdi]
	test	rax, rax
	mov	rsp, rsp
	jne	.label_936
	lea	rdi, [rdi]
	inc	rsi
.label_934:
	lea	rdi, [rdi]
	cmp	qword ptr [rcx + 0x10], 0
	je	.label_943
	lea	rax, [rcx + 0x10]
	nop	word ptr cs:[rax + rax]
.label_938:
	lea	rdi, [rdi]
	inc	rdx
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax + 8]
	test	rax, rax
	jne	.label_938
	inc	rsi
.label_943:
	add	rcx, 0x20
	cmp	rcx, r9
	jb	.label_939
.label_932:
	cmp	rsi, qword ptr [rdi + 0x18]
	jne	.label_940
	lea	rdi, [rdi]
	mov	al, 1
	nop	
	cmp	rdx, qword ptr [rdi + 0x20]
	lea	rsi, [rsi]
	je	.label_941
.label_940:
	xor	eax, eax
.label_941:
	mov	rsp, rsp
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4102d0
	.globl hash_print_statistics
	.type hash_print_statistics, @function
hash_print_statistics:

	lea	rsi, [rsi]
	push	r15
	mov	rbp, rbp
	push	r14
	lea	rsi, [rsi]
	push	r12
	nop	
	push	rbx
	mov	rbp, rbp
	push	rax
	mov	rbp, rbp
	mov	r15, rsi
	mov	rcx, qword ptr [rdi + 0x20]
	mov	rbp, rbp
	mov	r12, qword ptr [rdi + 0x10]
	mov	r14, qword ptr [rdi + 0x18]
	mov	rsp, rsp
	mov	rax, qword ptr [rdi]
	mov	rdx, qword ptr [rdi + 8]
	lea	rsi, [rsi]
	xor	ebx, ebx
	cmp	rax, rdx
	lea	rdi, [rdi]
	jae	.label_951
	mov	rsp, rsp
	mov	rdi, rax
	not	rdi
	mov	rbp, rbp
	add	rdi, rdx
	lea	rsi, [rsi]
	mov	rsi, rdi
	mov	rsp, rsp
	shr	rsi, 4
	mov	rsp, rsp
	xor	ebx, ebx
	bt	rdi, 4
	mov	rbp, rbp
	jb	.label_952
	mov	rbp, rbp
	xor	ebx, ebx
	lea	rsi, [rsi]
	cmp	qword ptr [rax], 0
	lea	rsi, [rsi]
	je	.label_945
	mov	rsp, rsp
	mov	rdi, rax
	nop	word ptr [rax + rax]
.label_946:
	mov	rbp, rbp
	mov	rdi, qword ptr [rdi + 8]
	inc	rbx
	nop	
	test	rdi, rdi
	lea	rdi, [rdi]
	jne	.label_946
.label_945:
	add	rax, 0x10
.label_952:
	test	rsi, rsi
	je	.label_951
	nop	dword ptr [rax]
.label_950:
	cmp	qword ptr [rax], 0
	mov	esi, 0
	mov	rsp, rsp
	mov	rdi, rax
	mov	rbp, rbp
	je	.label_947
	nop	word ptr cs:[rax + rax]
.label_948:
	mov	rdi, qword ptr [rdi + 8]
	lea	rsi, [rsi]
	inc	rsi
	nop	
	test	rdi, rdi
	jne	.label_948
	mov	rbp, rbp
	cmp	rsi, rbx
	cmova	rbx, rsi
.label_947:
	cmp	qword ptr [rax + 0x10], 0
	je	.label_953
	lea	rdi, [rax + 0x10]
	xor	esi, esi
	nop	word ptr [rax + rax]
.label_949:
	mov	rdi, qword ptr [rdi + 8]
	mov	rsp, rsp
	inc	rsi
	test	rdi, rdi
	jne	.label_949
	mov	rbp, rbp
	cmp	rsi, rbx
	mov	rbp, rbp
	cmova	rbx, rsi
.label_953:
	add	rax, 0x20
	nop	
	cmp	rax, rdx
	jb	.label_950
.label_951:
	lea	rsi, [rsi]
	mov	esi, 1
	mov	rbp, rbp
	mov	edx, OFFSET FLAT:.str_5
	xor	eax, eax
	mov	rdi, r15
	call	__fprintf_chk
	mov	esi, 1
	mov	edx, OFFSET FLAT:.str.1_3
	mov	rbp, rbp
	xor	eax, eax
	mov	rdi, r15
	mov	rcx, r12
	nop	
	call	__fprintf_chk
	nop	
	movq	xmm1, r14
	movdqa	xmm2,  xmmword ptr [word ptr [rip + label_89]]
	punpckldq	xmm1, xmm2
	lea	rsi, [rsi]
	movapd	xmm3,  xmmword ptr [word ptr [rip + label_90]]
	nop	
	subpd	xmm1, xmm3
	lea	rdi, [rdi]
	pshufd	xmm0, xmm1, 0x4e
	addpd	xmm0, xmm1
	lea	rsi, [rsi]
	mulsd	xmm0,  qword ptr [word ptr [rip + label_179]]
	mov	rsp, rsp
	movq	xmm1, r12
	mov	rbp, rbp
	punpckldq	xmm1, xmm2
	mov	rbp, rbp
	subpd	xmm1, xmm3
	pshufd	xmm2, xmm1, 0x4e
	addpd	xmm2, xmm1
	mov	rsp, rsp
	divsd	xmm0, xmm2
	mov	esi, 1
	mov	edx, OFFSET FLAT:.str.2_1
	mov	al, 1
	lea	rsi, [rsi]
	mov	rdi, r15
	mov	rcx, r14
	call	__fprintf_chk
	lea	rsi, [rsi]
	mov	esi, 1
	mov	edx, OFFSET FLAT:.str.3_1
	nop	
	xor	eax, eax
	mov	rsp, rsp
	mov	rdi, r15
	lea	rsi, [rsi]
	mov	rcx, rbx
	lea	rdi, [rdi]
	add	rsp, 8
	mov	rsp, rsp
	pop	rbx
	lea	rsi, [rsi]
	pop	r12
	pop	r14
	pop	r15
	jmp	__fprintf_chk
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4104e0
	.globl hash_lookup
	.type hash_lookup, @function
hash_lookup:

	mov	rsp, rsp
	push	r15
	mov	rbp, rbp
	push	r14
	push	r12
	lea	rsi, [rsi]
	push	rbx
	push	rax
	mov	rsp, rsp
	mov	r12, rsi
	mov	rsp, rsp
	mov	r14, rdi
	mov	rsi, qword ptr [r14 + 0x10]
	mov	rdi, r12
	call	qword ptr [r14 + 0x30]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [r14 + 0x10]
	jae	.label_958
	mov	rbx, qword ptr [r14]
	nop	
	shl	rax, 4
	mov	rsi, qword ptr [rbx + rax]
	xor	r15d, r15d
	mov	rsp, rsp
	test	rsi, rsi
	je	.label_955
	lea	rsi, [rsi]
	add	rbx, rax
	je	.label_955
	cmp	rsi, r12
	je	.label_956
	xor	r15d, r15d
	nop	dword ptr [rax + rax]
.label_957:
	nop	
	mov	rdi, r12
	call	qword ptr [r14 + 0x38]
	test	al, al
	jne	.label_954
	nop	
	mov	rbx, qword ptr [rbx + 8]
	lea	rdi, [rdi]
	test	rbx, rbx
	je	.label_955
	mov	rsp, rsp
	mov	rsi, qword ptr [rbx]
	nop	
	cmp	rsi, r12
	lea	rdi, [rdi]
	jne	.label_957
.label_956:
	mov	r15, r12
	jmp	.label_955
.label_954:
	nop	
	mov	r15, qword ptr [rbx]
.label_955:
	lea	rsi, [rsi]
	mov	rax, r15
	nop	
	add	rsp, 8
	pop	rbx
	pop	r12
	mov	rsp, rsp
	pop	r14
	lea	rsi, [rsi]
	pop	r15
	lea	rsi, [rsi]
	ret	
.label_958:
	mov	rbp, rbp
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4105a0
	.globl hash_get_first
	.type hash_get_first, @function
hash_get_first:

	xor	eax, eax
	cmp	qword ptr [rdi + 0x20], 0
	mov	rbp, rbp
	je	.label_959
	nop	
	mov	rcx, qword ptr [rdi]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rdi + 8]
	mov	rbp, rbp
	jmp	.label_962
	nop	dword ptr [rax]
.label_960:
	add	rcx, 0x10
.label_962:
	cmp	rcx, rdx
	jae	.label_961
	mov	rax, qword ptr [rcx]
	lea	rdi, [rdi]
	test	rax, rax
	je	.label_960
.label_959:
	mov	rsp, rsp
	ret	
.label_961:
	push	rax
	call	abort
	nop	
	.section	.text
	.align	16
	#Procedure 0x4105e0
	.globl hash_get_next
	.type hash_get_next, @function
hash_get_next:

	mov	rsp, rsp
	push	r14
	push	rbx
	push	rax
	mov	rbx, rsi
	mov	r14, rdi
	lea	rdi, [rdi]
	mov	rsi, qword ptr [r14 + 0x10]
	mov	rbp, rbp
	mov	rdi, rbx
	call	qword ptr [r14 + 0x30]
	cmp	rax, qword ptr [r14 + 0x10]
	mov	rsp, rsp
	jae	.label_968
	nop	
	mov	rcx, qword ptr [r14]
	lea	rdi, [rdi]
	shl	rax, 4
	nop	
	lea	rdx, [rcx + rax]
	nop	word ptr [rax + rax]
.label_964:
	nop	
	cmp	qword ptr [rdx], rbx
	mov	rdx, qword ptr [rdx + 8]
	lea	rsi, [rsi]
	je	.label_963
	test	rdx, rdx
	jne	.label_964
	lea	rdi, [rdi]
	jmp	.label_966
.label_963:
	test	rdx, rdx
	mov	rbp, rbp
	je	.label_966
	mov	rax, qword ptr [rdx]
	jmp	.label_965
.label_966:
	mov	rdx, qword ptr [r14 + 8]
	lea	rcx, [rax + rcx + 0x10]
	nop	dword ptr [rax]
.label_967:
	mov	rbp, rbp
	cmp	rcx, rdx
	mov	eax, 0
	mov	rbp, rbp
	jae	.label_965
	mov	rax, qword ptr [rcx]
	add	rcx, 0x10
	test	rax, rax
	lea	rsi, [rsi]
	je	.label_967
.label_965:
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
.label_968:
	nop	
	call	abort
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x410680
	.globl hash_get_entries
	.type hash_get_entries, @function
hash_get_entries:

	nop
	mov	r9, qword ptr [rdi]
	mov	r8, qword ptr [rdi + 8]
	lea	rsi, [rsi]
	xor	eax, eax
	mov	rbp, rbp
	jmp	.label_969
	nop	word ptr cs:[rax + rax]
.label_971:
	add	r9, 0x10
.label_969:
	nop	
	cmp	r9, r8
	lea	rdi, [rdi]
	jae	.label_970
	lea	rsi, [rsi]
	cmp	qword ptr [r9], 0
	je	.label_971
	test	r9, r9
	mov	rbp, rbp
	mov	r10, r9
	mov	rbp, rbp
	je	.label_971
	nop	word ptr cs:[rax + rax]
.label_972:
	mov	rsp, rsp
	cmp	rax, rdx
	jae	.label_970
	lea	rdi, [rdi]
	mov	rcx, qword ptr [r10]
	nop	
	mov	qword ptr [rsi + rax*8], rcx
	lea	rdi, [rdi]
	inc	rax
	mov	rsp, rsp
	mov	r10, qword ptr [r10 + 8]
	test	r10, r10
	nop	
	jne	.label_972
	mov	r8, qword ptr [rdi + 8]
	jmp	.label_971
.label_970:
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x410700
	.globl hash_do_for_each
	.type hash_do_for_each, @function
hash_do_for_each:

	push	rbp
	push	r15
	push	r14
	push	r13
	mov	rsp, rsp
	push	r12
	push	rbx
	mov	rsp, rsp
	push	rax
	mov	r14, rdx
	lea	rdi, [rdi]
	mov	r15, rsi
	mov	r12, rdi
	mov	r13, qword ptr [r12]
	mov	rax, qword ptr [r12 + 8]
	xor	ebx, ebx
	mov	rsp, rsp
	jmp	.label_973
	nop	dword ptr [rax]
.label_974:
	lea	rsi, [rsi]
	add	r13, 0x10
.label_973:
	nop	
	cmp	r13, rax
	lea	rsi, [rsi]
	jae	.label_975
	mov	rdi, qword ptr [r13]
	mov	rbp, rbp
	test	rdi, rdi
	je	.label_974
	test	r13, r13
	lea	rdi, [rdi]
	je	.label_974
	mov	rsi, r14
	lea	rsi, [rsi]
	call	r15
	mov	rbp, rbp
	test	al, al
	mov	rbp, r13
	mov	rsp, rsp
	je	.label_975
	nop	word ptr [rax + rax]
.label_977:
	mov	rsp, rsp
	inc	rbx
	mov	rbp, rbp
	mov	rbp, qword ptr [rbp + 8]
	lea	rsi, [rsi]
	test	rbp, rbp
	je	.label_976
	mov	rdi, qword ptr [rbp]
	mov	rsi, r14
	call	r15
	test	al, al
	jne	.label_977
	jmp	.label_975
	nop	word ptr cs:[rax + rax]
.label_976:
	mov	rax, qword ptr [r12 + 8]
	mov	rbp, rbp
	jmp	.label_974
.label_975:
	nop	
	mov	rax, rbx
	nop	
	add	rsp, 8
	pop	rbx
	nop	
	pop	r12
	pop	r13
	lea	rsi, [rsi]
	pop	r14
	pop	r15
	pop	rbp
	mov	rsp, rsp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4107d0
	.globl hash_string
	.type hash_string, @function
hash_string:

	nop
	mov	al, byte ptr [rdi]
	nop	
	xor	edx, edx
	test	al, al
	je	.label_979
	inc	rdi
	nop	
	xor	edx, edx
.label_978:
	mov	rcx, rdx
	nop	
	shl	rcx, 5
	sub	rcx, rdx
	nop	
	movzx	eax, al
	add	rax, rcx
	lea	rsi, [rsi]
	xor	edx, edx
	div	rsi
	mov	al, byte ptr [rdi]
	inc	rdi
	test	al, al
	jne	.label_978
.label_979:
	mov	rax, rdx
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x410810
	.globl hash_reset_tuning
	.type hash_reset_tuning, @function
hash_reset_tuning:

	nop
	mov	eax,  dword ptr [dword ptr [rip + label_980]]
	mov	dword ptr [rdi + 0x10], eax
	lea	rdi, [rdi]
	movups	xmm0,  xmmword ptr [word ptr [rip + default_tuning]]
	movups	xmmword ptr [rdi], xmm0
	mov	rsp, rsp
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x410830

	.globl hash_initialize
	.type hash_initialize, @function
hash_initialize:
	push	rbp
	push	r15
	nop	
	push	r14
	push	r13
	nop	
	push	r12
	push	rbx
	mov	rsp, rsp
	push	rax
	lea	rsi, [rsi]
	mov	r14, r8
	lea	rsi, [rsi]
	mov	rbx, rsi
	mov	r12, rdi
	lea	rdi, [rdi]
	test	rdx, rdx
	mov	r13d, OFFSET FLAT:raw_hasher
	lea	rdi, [rdi]
	cmovne	r13, rdx
	test	rcx, rcx
	mov	rsp, rsp
	mov	ebp, OFFSET FLAT:raw_comparator
	lea	rdi, [rdi]
	cmovne	rbp, rcx
	mov	edi, 0x50
	mov	rsp, rsp
	call	malloc
	mov	rsp, rsp
	mov	r15, rax
	mov	rsp, rsp
	xor	eax, eax
	mov	rbp, rbp
	test	r15, r15
	je	.label_981
	lea	rdi, [rdi]
	test	rbx, rbx
	mov	eax, OFFSET FLAT:default_tuning
	mov	rbp, rbp
	cmove	rbx, rax
	mov	qword ptr [r15 + 0x28], rbx
	cmp	rbx, rax
	je	.label_991
	movss	xmm0, dword ptr [rbx + 8]
	mov	rsp, rsp
	ucomiss	xmm0,  dword ptr [dword ptr [rip + label_989]]
	jbe	.label_986
	lea	rsi, [rsi]
	movss	xmm1,  dword ptr [dword ptr [rip + label_987]]
	ucomiss	xmm1, xmm0
	jbe	.label_986
	mov	rbp, rbp
	movss	xmm1, dword ptr [rbx + 0xc]
	ucomiss	xmm1,  dword ptr [dword ptr [rip + label_994]]
	lea	rsi, [rsi]
	jbe	.label_986
	movss	xmm1, dword ptr [rbx]
	lea	rsi, [rsi]
	xorps	xmm2, xmm2
	lea	rsi, [rsi]
	ucomiss	xmm1, xmm2
	jb	.label_986
	addss	xmm1,  dword ptr [dword ptr [rip + label_989]]
	ucomiss	xmm0, xmm1
	lea	rdi, [rdi]
	jbe	.label_986
	mov	rsp, rsp
	movss	xmm0, dword ptr [rbx + 4]
	lea	rdi, [rdi]
	movss	xmm2,  dword ptr [dword ptr [rip + label_996]]
	ucomiss	xmm2, xmm0
	jb	.label_986
	mov	rsp, rsp
	ucomiss	xmm0, xmm1
	mov	rsp, rsp
	jbe	.label_986
.label_991:
	cmp	byte ptr [rbx + 0x10], 0
	jne	.label_988
	lea	rsi, [rsi]
	mov	eax, r12d
	and	eax, 1
	nop	
	test	r12, r12
	js	.label_990
	mov	rbp, rbp
	xorps	xmm0, xmm0
	cvtsi2ss	xmm0, r12
	jmp	.label_995
.label_990:
	shr	r12, 1
	mov	rsp, rsp
	or	rax, r12
	xorps	xmm0, xmm0
	cvtsi2ss	xmm0, rax
	lea	rdi, [rdi]
	addss	xmm0, xmm0
.label_995:
	divss	xmm0, dword ptr [rbx + 8]
	movss	xmm1,  dword ptr [dword ptr [rip + label_984]]
	mov	rbp, rbp
	movaps	xmm2, xmm0
	mov	rbp, rbp
	subss	xmm2, xmm1
	cvttss2si	rax, xmm2
	mov	rbp, rbp
	movabs	rcx, 0x8000000000000000
	xor	rcx, rax
	cvttss2si	r12, xmm0
	mov	rsp, rsp
	ucomiss	xmm0, xmm1
	cmovae	r12, rcx
	lea	rsi, [rsi]
	ucomiss	xmm0,  dword ptr [dword ptr [rip + label_985]]
	nop	
	jae	.label_986
.label_988:
	cmp	r12, 0xa
	mov	ebx, 0xa
	cmovae	rbx, r12
	or	rbx, 1
	mov	rsp, rsp
	jmp	.label_993
.label_992:
	mov	rbp, rbp
	add	rbx, 2
.label_993:
	cmp	rbx, -1
	mov	rbp, rbp
	je	.label_986
	cmp	rbx, 0xa
	mov	rbp, rbp
	mov	esi, 0xc
	mov	edi, 9
	mov	rbp, rbp
	mov	ecx, 3
	lea	rdi, [rdi]
	jb	.label_982
	nop	word ptr cs:[rax + rax]
.label_983:
	xor	edx, edx
	mov	rax, rbx
	lea	rsi, [rsi]
	div	rcx
	test	rdx, rdx
	nop	
	je	.label_982
	mov	rbp, rbp
	lea	rdi, [rdi + rsi + 4]
	add	rcx, 2
	mov	rsp, rsp
	add	rsi, 8
	cmp	rdi, rbx
	jb	.label_983
.label_982:
	xor	edx, edx
	lea	rdi, [rdi]
	mov	rax, rbx
	div	rcx
	test	rdx, rdx
	mov	rbp, rbp
	je	.label_992
	mov	rbp, rbp
	mov	rax, rbx
	lea	rdi, [rdi]
	shr	rax, 0x3c
	jne	.label_986
	mov	rbp, rbp
	mov	qword ptr [r15 + 0x10], rbx
	test	rbx, rbx
	je	.label_986
	mov	esi, 0x10
	lea	rdi, [rdi]
	mov	rdi, rbx
	call	rpl_calloc
	lea	rsi, [rsi]
	mov	qword ptr [r15], rax
	mov	rsp, rsp
	test	rax, rax
	mov	rbp, rbp
	je	.label_986
	mov	rsp, rsp
	shl	rbx, 4
	nop	
	add	rax, rbx
	mov	qword ptr [r15 + 8], rax
	xorps	xmm0, xmm0
	lea	rsi, [rsi]
	movups	xmmword ptr [r15 + 0x18], xmm0
	mov	rbp, rbp
	mov	qword ptr [r15 + 0x30], r13
	mov	rsp, rsp
	mov	qword ptr [r15 + 0x38], rbp
	mov	qword ptr [r15 + 0x40], r14
	mov	qword ptr [r15 + 0x48], 0
	mov	rax, r15
	lea	rdi, [rdi]
	jmp	.label_981
.label_986:
	nop	
	mov	rdi, r15
	call	free
	nop	
	xor	eax, eax
.label_981:
	add	rsp, 8
	pop	rbx
	nop	
	pop	r12
	mov	rsp, rsp
	pop	r13
	mov	rsp, rsp
	pop	r14
	lea	rsi, [rsi]
	pop	r15
	lea	rsi, [rsi]
	pop	rbp
	mov	rbp, rbp
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x410b10

	.globl raw_hasher
	.type raw_hasher, @function
raw_hasher:
	rol	rdi, 0x3d
	mov	rbp, rbp
	xor	edx, edx
	mov	rsp, rsp
	mov	rax, rdi
	mov	rsp, rsp
	div	rsi
	lea	rdi, [rdi]
	mov	rax, rdx
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x410b30

	.globl raw_comparator
	.type raw_comparator, @function
raw_comparator:
	lea	rsi, [rsi]
	cmp	rdi, rsi
	sete	al
	lea	rdi, [rdi]
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x410b40
	.globl hash_clear
	.type hash_clear, @function
hash_clear:

	mov	rsp, rsp
	push	r15
	mov	rsp, rsp
	push	r14
	mov	rsp, rsp
	push	rbx
	mov	r15, rdi
	mov	rsp, rsp
	mov	r14, qword ptr [r15]
	mov	rsp, rsp
	mov	rax, qword ptr [r15 + 8]
	jmp	.label_997
.label_1001:
	mov	rsp, rsp
	add	r14, 0x10
.label_997:
	cmp	r14, rax
	jae	.label_999
	lea	rdi, [rdi]
	cmp	qword ptr [r14], 0
	nop	
	je	.label_1001
	mov	rsp, rsp
	mov	rbx, qword ptr [r14 + 8]
	lea	rsi, [rsi]
	mov	rax, qword ptr [r15 + 0x40]
	test	rax, rax
	nop	
	setne	cl
	lea	rsi, [rsi]
	test	rbx, rbx
	je	.label_1003
	nop	word ptr [rax + rax]
.label_1002:
	nop	
	test	cl, 1
	je	.label_998
	mov	rsp, rsp
	mov	rdi, qword ptr [rbx]
	lea	rdi, [rdi]
	call	rax
	nop	
	mov	rax, qword ptr [r15 + 0x40]
.label_998:
	mov	qword ptr [rbx], 0
	mov	rdx, qword ptr [rbx + 8]
	nop	
	mov	rcx, qword ptr [r15 + 0x48]
	mov	qword ptr [rbx + 8], rcx
	lea	rsi, [rsi]
	mov	qword ptr [r15 + 0x48], rbx
	test	rax, rax
	setne	cl
	lea	rdi, [rdi]
	test	rdx, rdx
	mov	rbp, rbp
	mov	rbx, rdx
	lea	rdi, [rdi]
	jne	.label_1002
.label_1003:
	test	cl, cl
	je	.label_1000
	mov	rdi, qword ptr [r14]
	call	rax
.label_1000:
	xorps	xmm0, xmm0
	movups	xmmword ptr [r14], xmm0
	mov	rax, qword ptr [r15 + 8]
	nop	
	jmp	.label_1001
.label_999:
	xorps	xmm0, xmm0
	movups	xmmword ptr [r15 + 0x18], xmm0
	lea	rsi, [rsi]
	pop	rbx
	pop	r14
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x410c20
	.globl hash_free
	.type hash_free, @function
hash_free:

	mov	rbp, rbp
	push	r15
	lea	rsi, [rsi]
	push	r14
	mov	rsp, rsp
	push	rbx
	lea	rsi, [rsi]
	mov	r14, rdi
	mov	rsp, rsp
	cmp	qword ptr [r14 + 0x40], 0
	je	.label_1009
	lea	rdi, [rdi]
	cmp	qword ptr [r14 + 0x20], 0
	lea	rdi, [rdi]
	je	.label_1009
	mov	r15, qword ptr [r14]
	lea	rsi, [rsi]
	mov	rax, qword ptr [r14 + 8]
	mov	rbp, rbp
	jmp	.label_1005
	nop	word ptr [rax + rax]
.label_1007:
	mov	rsp, rsp
	add	r15, 0x10
.label_1005:
	lea	rdi, [rdi]
	cmp	r15, rax
	jae	.label_1009
	mov	rdi, qword ptr [r15]
	test	rdi, rdi
	mov	rbp, rbp
	je	.label_1007
	test	r15, r15
	je	.label_1007
	mov	rbp, rbp
	call	qword ptr [r14 + 0x40]
	mov	rbx, qword ptr [r15 + 8]
	jmp	.label_1011
	nop	dword ptr [rax]
.label_1010:
	mov	rdi, qword ptr [rbx]
	call	qword ptr [r14 + 0x40]
	mov	rbx, qword ptr [rbx + 8]
.label_1011:
	test	rbx, rbx
	mov	rbp, rbp
	jne	.label_1010
	mov	rax, qword ptr [r14 + 8]
	jmp	.label_1007
.label_1009:
	mov	r15, qword ptr [r14]
	mov	rsp, rsp
	mov	rax, qword ptr [r14 + 8]
	lea	rsi, [rsi]
	jmp	.label_1013
	nop	dword ptr [rax + rax]
.label_1006:
	mov	rbp, rbp
	add	r15, 0x10
.label_1013:
	cmp	r15, rax
	jae	.label_1004
	lea	rdi, [rdi]
	mov	rdi, qword ptr [r15 + 8]
	test	rdi, rdi
	lea	rdi, [rdi]
	je	.label_1006
	nop	dword ptr [rax + rax]
.label_1012:
	mov	rbx, qword ptr [rdi + 8]
	call	free
	test	rbx, rbx
	mov	rdi, rbx
	jne	.label_1012
	lea	rsi, [rsi]
	mov	rax, qword ptr [r14 + 8]
	jmp	.label_1006
.label_1004:
	lea	rdi, [rdi]
	mov	rdi, qword ptr [r14 + 0x48]
	test	rdi, rdi
	je	.label_1014
	nop	word ptr cs:[rax + rax]
.label_1008:
	nop	
	mov	rbx, qword ptr [rdi + 8]
	call	free
	nop	
	test	rbx, rbx
	lea	rsi, [rsi]
	mov	rdi, rbx
	lea	rsi, [rsi]
	jne	.label_1008
.label_1014:
	mov	rbp, rbp
	mov	rdi, qword ptr [r14]
	mov	rbp, rbp
	call	free
	mov	rdi, r14
	lea	rsi, [rsi]
	pop	rbx
	pop	r14
	mov	rbp, rbp
	pop	r15
	mov	rsp, rsp
	jmp	free
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x410d50

	.globl hash_rehash
	.type hash_rehash, @function
hash_rehash:
	nop	
	push	rbp
	mov	rbp, rbp
	push	r15
	lea	rdi, [rdi]
	push	r14
	push	r12
	lea	rdi, [rdi]
	push	rbx
	sub	rsp, 0x50
	mov	r14, rdi
	mov	rsp, rsp
	mov	rax, qword ptr [r14 + 0x28]
	mov	rsp, rsp
	cmp	byte ptr [rax + 0x10], 0
	jne	.label_1023
	lea	rsi, [rsi]
	mov	ecx, esi
	nop	
	and	ecx, 1
	lea	rsi, [rsi]
	test	rsi, rsi
	js	.label_1032
	lea	rdi, [rdi]
	cvtsi2ss	xmm0, rsi
	lea	rdi, [rdi]
	jmp	.label_1022
.label_1032:
	shr	rsi, 1
	or	rcx, rsi
	mov	rsp, rsp
	cvtsi2ss	xmm0, rcx
	mov	rbp, rbp
	addss	xmm0, xmm0
.label_1022:
	nop	
	divss	xmm0, dword ptr [rax + 8]
	movss	xmm1,  dword ptr [dword ptr [rip + label_984]]
	mov	rsp, rsp
	movaps	xmm2, xmm0
	subss	xmm2, xmm1
	mov	rsp, rsp
	cvttss2si	rax, xmm2
	movabs	rcx, 0x8000000000000000
	mov	rbp, rbp
	xor	rcx, rax
	lea	rsi, [rsi]
	cvttss2si	rsi, xmm0
	lea	rsi, [rsi]
	ucomiss	xmm0, xmm1
	mov	rbp, rbp
	cmovae	rsi, rcx
	mov	rbp, rbp
	ucomiss	xmm0,  dword ptr [dword ptr [rip + label_985]]
	mov	rbp, rbp
	jae	.label_1021
.label_1023:
	mov	rsp, rsp
	cmp	rsi, 0xa
	mov	rbp, rbp
	mov	ebx, 0xa
	mov	rbp, rbp
	cmovae	rbx, rsi
	or	rbx, 1
	jmp	.label_1019
	nop	word ptr cs:[rax + rax]
.label_1017:
	lea	rsi, [rsi]
	add	rbx, 2
.label_1019:
	cmp	rbx, -1
	je	.label_1021
	cmp	rbx, 0xa
	mov	rbp, rbp
	mov	esi, 0xc
	nop	
	mov	edi, 9
	lea	rsi, [rsi]
	mov	ecx, 3
	lea	rsi, [rsi]
	jb	.label_1015
.label_1024:
	nop	
	xor	edx, edx
	mov	rax, rbx
	nop	
	div	rcx
	test	rdx, rdx
	je	.label_1015
	lea	rdi, [rdi + rsi + 4]
	nop	
	add	rcx, 2
	add	rsi, 8
	lea	rsi, [rsi]
	cmp	rdi, rbx
	jb	.label_1024
.label_1015:
	mov	rsp, rsp
	xor	edx, edx
	nop	
	mov	rax, rbx
	div	rcx
	mov	rsp, rsp
	test	rdx, rdx
	je	.label_1017
	nop	
	lea	rax, [rbx - 1]
	movabs	rcx, 0xffffffffffffffe
	mov	rsp, rsp
	cmp	rax, rcx
	lea	rsi, [rsi]
	ja	.label_1021
	mov	bpl, 1
	mov	rbp, rbp
	cmp	rbx, qword ptr [r14 + 0x10]
	je	.label_1020
	nop	
	mov	esi, 0x10
	mov	rdi, rbx
	lea	rdi, [rdi]
	call	rpl_calloc
	mov	qword ptr [rsp], rax
	test	rax, rax
	mov	rbp, rbp
	je	.label_1021
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x10], rbx
	shl	rbx, 4
	mov	rsp, rsp
	add	rax, rbx
	mov	qword ptr [rsp + 8], rax
	mov	rbp, rbp
	xorps	xmm0, xmm0
	nop	
	movups	xmmword ptr [rsp + 0x18], xmm0
	movups	xmm0, xmmword ptr [r14 + 0x28]
	movups	xmmword ptr [rsp + 0x28], xmm0
	movups	xmm0, xmmword ptr [r14 + 0x38]
	lea	rdi, [rdi]
	movups	xmmword ptr [rsp + 0x38], xmm0
	mov	rax, qword ptr [r14 + 0x48]
	mov	qword ptr [rsp + 0x48], rax
	lea	rdi, [rsp]
	nop	
	xor	edx, edx
	mov	rsi, r14
	call	transfer_entries
	test	al, al
	je	.label_1031
	mov	rdi, qword ptr [r14]
	lea	rdi, [rdi]
	call	free
	mov	rbp, rbp
	movaps	xmm0, xmmword ptr [rsp]
	movups	xmmword ptr [r14], xmm0
	mov	rbp, rbp
	movaps	xmm0, xmmword ptr [rsp + 0x10]
	movups	xmmword ptr [r14 + 0x10], xmm0
	mov	rax, qword ptr [rsp + 0x48]
	mov	qword ptr [r14 + 0x48], rax
	jmp	.label_1020
.label_1031:
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0x48]
	lea	rdi, [rdi]
	mov	qword ptr [r14 + 0x48], rax
	nop	
	mov	r12, qword ptr [rsp]
	mov	rsp, rsp
	mov	r15, qword ptr [rsp + 8]
	lea	rsi, [rsi]
	jmp	.label_1028
.label_1026:
	add	r12, 0x10
.label_1028:
	nop	
	cmp	r12, r15
	lea	rsi, [rsi]
	jae	.label_1030
	cmp	qword ptr [r12], 0
	je	.label_1026
	mov	rbp, rbp
	mov	rbp, qword ptr [r12 + 8]
	lea	rdi, [rdi]
	test	rbp, rbp
	je	.label_1029
	mov	rbp, rbp
	mov	rsi, qword ptr [r14 + 0x10]
	nop	word ptr cs:[rax + rax]
.label_1016:
	mov	rbp, rbp
	mov	rbx, qword ptr [rbp]
	nop	
	mov	rdi, rbx
	call	qword ptr [r14 + 0x30]
	mov	rsi, qword ptr [r14 + 0x10]
	cmp	rax, rsi
	lea	rsi, [rsi]
	jae	.label_1027
	mov	rdx, qword ptr [r14]
	mov	rcx, qword ptr [rbp + 8]
	nop	
	shl	rax, 4
	lea	rdi, [rdi]
	cmp	qword ptr [rdx + rax], 0
	je	.label_1018
	mov	rbp, rbp
	mov	rdi, qword ptr [rdx + rax + 8]
	mov	rsp, rsp
	mov	qword ptr [rbp + 8], rdi
	lea	rdi, [rdi]
	mov	qword ptr [rdx + rax + 8], rbp
	jmp	.label_1025
	nop	
.label_1018:
	lea	rdi, [rdi]
	add	rdx, rax
	mov	qword ptr [rdx], rbx
	mov	rbp, rbp
	inc	qword ptr [r14 + 0x18]
	mov	rbp, rbp
	mov	qword ptr [rbp], 0
	mov	rsp, rsp
	mov	rax, qword ptr [r14 + 0x48]
	mov	qword ptr [rbp + 8], rax
	lea	rdi, [rdi]
	mov	qword ptr [r14 + 0x48], rbp
.label_1025:
	mov	rbp, rbp
	test	rcx, rcx
	mov	rbp, rcx
	nop	
	jne	.label_1016
.label_1029:
	nop	
	mov	qword ptr [r12 + 8], 0
	nop	
	jmp	.label_1026
.label_1030:
	nop	
	lea	rsi, [rsp]
	xor	edx, edx
	mov	rbp, rbp
	mov	rdi, r14
	call	transfer_entries
	test	al, al
	je	.label_1033
	mov	rsp, rsp
	mov	rdi, qword ptr [rsp]
	call	free
.label_1021:
	mov	rbp, rbp
	xor	ebp, ebp
.label_1020:
	mov	al, bpl
	add	rsp, 0x50
	pop	rbx
	pop	r12
	pop	r14
	mov	rsp, rsp
	pop	r15
	pop	rbp
	ret	
.label_1027:
	mov	rbp, rbp
	call	abort
.label_1033:
	lea	rsi, [rsi]
	call	abort
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4110c0

	.globl transfer_entries
	.type transfer_entries, @function
transfer_entries:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	lea	rdi, [rdi]
	push	rax
	mov	rbp, rbp
	mov	dword ptr [rsp + 4], edx
	mov	r12, rsi
	mov	rbp, rbp
	mov	rbp, rdi
	mov	rbp, rbp
	mov	r14, qword ptr [r12]
	nop	
	mov	al, 1
	nop	
	cmp	r14, qword ptr [r12 + 8]
	nop	
	jae	.label_1034
	nop	word ptr cs:[rax + rax]
.label_1046:
	mov	r13, qword ptr [r14]
	nop	
	test	r13, r13
	mov	rbp, rbp
	je	.label_1035
	lea	rdi, [rdi]
	mov	r15, qword ptr [r14 + 8]
	test	r15, r15
	lea	rsi, [rsi]
	je	.label_1041
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp + 0x10]
	nop	word ptr [rax + rax]
.label_1036:
	lea	rdi, [rdi]
	mov	rbx, qword ptr [r15]
	mov	rdi, rbx
	nop	
	call	qword ptr [rbp + 0x30]
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp + 0x10]
	lea	rdi, [rdi]
	cmp	rax, rsi
	jae	.label_1047
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp]
	mov	rcx, qword ptr [r15 + 8]
	nop	
	shl	rax, 4
	mov	rsp, rsp
	cmp	qword ptr [rdx + rax], 0
	lea	rsi, [rsi]
	je	.label_1039
	mov	rdi, qword ptr [rdx + rax + 8]
	mov	qword ptr [r15 + 8], rdi
	mov	rsp, rsp
	mov	qword ptr [rdx + rax + 8], r15
	nop	
	jmp	.label_1043
	nop	word ptr cs:[rax + rax]
.label_1039:
	mov	rbp, rbp
	add	rdx, rax
	mov	qword ptr [rdx], rbx
	inc	qword ptr [rbp + 0x18]
	nop	
	mov	qword ptr [r15], 0
	mov	rbp, rbp
	mov	rax, qword ptr [rbp + 0x48]
	mov	qword ptr [r15 + 8], rax
	nop	
	mov	qword ptr [rbp + 0x48], r15
.label_1043:
	test	rcx, rcx
	mov	r15, rcx
	mov	rsp, rsp
	jne	.label_1036
	mov	r13, qword ptr [r14]
.label_1041:
	lea	rdi, [rdi]
	mov	qword ptr [r14 + 8], 0
	mov	rsp, rsp
	mov	eax, dword ptr [rsp + 4]
	mov	rsp, rsp
	test	al, al
	mov	rsp, rsp
	jne	.label_1035
	mov	rsi, qword ptr [rbp + 0x10]
	mov	rdi, r13
	mov	rbp, rbp
	call	qword ptr [rbp + 0x30]
	mov	rbp, rbp
	mov	rbx, rax
	mov	rsp, rsp
	cmp	rbx, qword ptr [rbp + 0x10]
	lea	rdi, [rdi]
	jae	.label_1045
	mov	r15, qword ptr [rbp]
	shl	rbx, 4
	nop	
	cmp	qword ptr [r15 + rbx], 0
	je	.label_1037
	mov	rax, qword ptr [rbp + 0x48]
	nop	
	test	rax, rax
	je	.label_1040
	mov	rbp, rbp
	mov	rcx, qword ptr [rax + 8]
	mov	qword ptr [rbp + 0x48], rcx
	jmp	.label_1042
.label_1037:
	nop	
	add	r15, rbx
	nop	
	mov	qword ptr [r15], r13
	nop	
	inc	qword ptr [rbp + 0x18]
	mov	rsp, rsp
	jmp	.label_1044
.label_1040:
	mov	edi, 0x10
	nop	
	call	malloc
	test	rax, rax
	lea	rdi, [rdi]
	je	.label_1038
.label_1042:
	mov	qword ptr [rax], r13
	nop	
	mov	rcx, qword ptr [r15 + rbx + 8]
	mov	rbp, rbp
	mov	qword ptr [rax + 8], rcx
	mov	qword ptr [r15 + rbx + 8], rax
.label_1044:
	mov	rbp, rbp
	mov	qword ptr [r14], 0
	nop	
	dec	qword ptr [r12 + 0x18]
.label_1035:
	mov	rbp, rbp
	add	r14, 0x10
	mov	rbp, rbp
	cmp	r14, qword ptr [r12 + 8]
	jb	.label_1046
	mov	al, 1
.label_1034:
	add	rsp, 8
	mov	rbp, rbp
	pop	rbx
	mov	rbp, rbp
	pop	r12
	pop	r13
	nop	
	pop	r14
	mov	rbp, rbp
	pop	r15
	mov	rbp, rbp
	pop	rbp
	ret	
.label_1038:
	xor	eax, eax
	lea	rdi, [rdi]
	jmp	.label_1034
.label_1047:
	call	abort
.label_1045:
	lea	rsi, [rsi]
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4112d0

	.globl hash_insert_if_absent
	.type hash_insert_if_absent, @function
hash_insert_if_absent:
	mov	rbp, rbp
	push	rbp
	push	r15
	push	r14
	push	r13
	mov	rbp, rbp
	push	r12
	push	rbx
	push	rax
	mov	r15, rdx
	lea	rsi, [rsi]
	mov	r14, rsi
	mov	rbp, rbp
	mov	r13, rdi
	test	r14, r14
	lea	rsi, [rsi]
	je	.label_1054
	lea	rsi, [rsi]
	mov	rsi, qword ptr [r13 + 0x10]
	mov	rsp, rsp
	mov	rdi, r14
	nop	
	call	qword ptr [r13 + 0x30]
	mov	rsp, rsp
	mov	rbp, rax
	mov	rsp, rsp
	cmp	rbp, qword ptr [r13 + 0x10]
	mov	rbp, rbp
	jae	.label_1054
	mov	rbx, qword ptr [r13]
	mov	rbp, rbp
	shl	rbp, 4
	mov	rbp, rbp
	lea	r12, [rbx + rbp]
	mov	rsi, qword ptr [rbx + rbp]
	nop	
	test	rsi, rsi
	je	.label_1055
	mov	rsp, rsp
	cmp	rsi, r14
	je	.label_1066
	mov	rdi, r14
	nop	
	call	qword ptr [r13 + 0x38]
	test	al, al
	lea	rdi, [rdi]
	je	.label_1067
	mov	rax, qword ptr [r12]
	lea	rdi, [rdi]
	jmp	.label_1062
.label_1066:
	mov	rax, r14
	jmp	.label_1070
.label_1067:
	mov	rax, qword ptr [rbx + rbp + 8]
	mov	rsp, rsp
	test	rax, rax
	lea	rsi, [rsi]
	je	.label_1055
	lea	rbp, [rbx + rbp + 8]
	nop	
.label_1060:
	mov	rsi, qword ptr [rax]
	cmp	rsi, r14
	mov	rsp, rsp
	je	.label_1048
	mov	rdi, r14
	call	qword ptr [r13 + 0x38]
	mov	rbp, qword ptr [rbp]
	mov	rsp, rsp
	test	al, al
	jne	.label_1056
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp + 8]
	add	rbp, 8
	test	rax, rax
	jne	.label_1060
	nop	
	jmp	.label_1055
.label_1048:
	mov	rbp, rbp
	mov	rax, r14
	jmp	.label_1062
.label_1056:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp]
.label_1062:
	mov	rsp, rsp
	test	rax, rax
	mov	rbp, rbp
	je	.label_1055
.label_1070:
	lea	rdi, [rdi]
	xor	ebp, ebp
	test	r15, r15
	je	.label_1050
	lea	rsi, [rsi]
	mov	qword ptr [r15], rax
	mov	rsp, rsp
	jmp	.label_1050
.label_1055:
	mov	rcx, qword ptr [r13 + 0x10]
	mov	rax, qword ptr [r13 + 0x18]
	mov	rsp, rsp
	mov	edx, eax
	and	edx, 1
	nop	
	test	rax, rax
	mov	rbp, rbp
	js	.label_1059
	cvtsi2ss	xmm1, rax
	jmp	.label_1077
.label_1059:
	shr	rax, 1
	or	rdx, rax
	cvtsi2ss	xmm1, rdx
	lea	rdi, [rdi]
	addss	xmm1, xmm1
.label_1077:
	mov	rsp, rsp
	mov	rax, qword ptr [r13 + 0x28]
	movss	xmm2, dword ptr [rax + 8]
	lea	rsi, [rsi]
	mov	edx, ecx
	and	edx, 1
	mov	rbp, rbp
	test	rcx, rcx
	mov	rbp, rbp
	js	.label_1058
	cvtsi2ss	xmm0, rcx
	jmp	.label_1065
.label_1058:
	shr	rcx, 1
	or	rdx, rcx
	lea	rsi, [rsi]
	cvtsi2ss	xmm0, rdx
	lea	rdi, [rdi]
	addss	xmm0, xmm0
.label_1065:
	lea	rdi, [rdi]
	movaps	xmm3, xmm2
	mulss	xmm3, xmm0
	lea	rdi, [rdi]
	ucomiss	xmm1, xmm3
	nop	
	jbe	.label_1052
	nop	
	mov	ecx, OFFSET FLAT:default_tuning
	mov	rsp, rsp
	cmp	rax, rcx
	mov	rbp, rbp
	je	.label_1074
	ucomiss	xmm2,  dword ptr [dword ptr [rip + label_989]]
	jbe	.label_1057
	nop	
	movss	xmm3,  dword ptr [dword ptr [rip + label_987]]
	ucomiss	xmm3, xmm2
	jbe	.label_1057
	mov	rbp, rbp
	movss	xmm3, dword ptr [rax + 0xc]
	ucomiss	xmm3,  dword ptr [dword ptr [rip + label_994]]
	jbe	.label_1057
	movss	xmm3, dword ptr [rax]
	lea	rsi, [rsi]
	xorps	xmm4, xmm4
	ucomiss	xmm3, xmm4
	lea	rdi, [rdi]
	jb	.label_1057
	addss	xmm3,  dword ptr [dword ptr [rip + label_989]]
	ucomiss	xmm2, xmm3
	jbe	.label_1057
	movss	xmm4, dword ptr [rax + 4]
	movss	xmm5,  dword ptr [dword ptr [rip + label_996]]
	ucomiss	xmm5, xmm4
	mov	rbp, rbp
	jb	.label_1057
	lea	rsi, [rsi]
	ucomiss	xmm4, xmm3
	lea	rsi, [rsi]
	ja	.label_1068
.label_1057:
	mov	qword ptr [word ptr [r13 + 40]], OFFSET FLAT:default_tuning
	mov	eax, OFFSET FLAT:default_tuning
	lea	rdi, [rdi]
	movss	xmm2,  dword ptr [dword ptr [rip + label_1072]]
	jmp	.label_1068
.label_1074:
	mov	rbp, rbp
	mov	eax, OFFSET FLAT:default_tuning
.label_1068:
	movaps	xmm3, xmm2
	mov	rsp, rsp
	mulss	xmm3, xmm0
	lea	rsi, [rsi]
	ucomiss	xmm1, xmm3
	jbe	.label_1052
	nop	
	cmp	byte ptr [rax + 0x10], 0
	mulss	xmm0, dword ptr [rax + 0xc]
	mov	rbp, rbp
	jne	.label_1061
	mov	rbp, rbp
	mulss	xmm0, xmm2
.label_1061:
	lea	rsi, [rsi]
	mov	ebp, 0xffffffff
	ucomiss	xmm0,  dword ptr [dword ptr [rip + label_985]]
	mov	rsp, rsp
	jae	.label_1050
	nop	
	movss	xmm1,  dword ptr [dword ptr [rip + label_984]]
	movaps	xmm2, xmm0
	subss	xmm2, xmm1
	lea	rdi, [rdi]
	cvttss2si	rax, xmm2
	movabs	rcx, 0x8000000000000000
	xor	rcx, rax
	cvttss2si	rsi, xmm0
	ucomiss	xmm0, xmm1
	cmovae	rsi, rcx
	mov	rdi, r13
	call	hash_rehash
	test	al, al
	lea	rdi, [rdi]
	je	.label_1050
	mov	rsi, qword ptr [r13 + 0x10]
	nop	
	mov	rdi, r14
	call	qword ptr [r13 + 0x30]
	lea	rsi, [rsi]
	mov	rbp, rax
	cmp	rbp, qword ptr [r13 + 0x10]
	jae	.label_1054
	nop	
	mov	r15, qword ptr [r13]
	mov	rsp, rsp
	shl	rbp, 4
	mov	rbp, rbp
	lea	r12, [r15 + rbp]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [r15 + rbp]
	test	rsi, rsi
	je	.label_1052
	cmp	rsi, r14
	mov	rbp, rbp
	mov	rax, r14
	lea	rdi, [rdi]
	je	.label_1049
	mov	rdi, r14
	mov	rbp, rbp
	call	qword ptr [r13 + 0x38]
	test	al, al
	je	.label_1073
	mov	rbp, rbp
	mov	rax, qword ptr [r12]
	mov	rbp, rbp
	jmp	.label_1049
.label_1073:
	mov	rax, qword ptr [r15 + rbp + 8]
	nop	
	test	rax, rax
	lea	rdi, [rdi]
	je	.label_1052
	lea	rbp, [r15 + rbp + 8]
.label_1064:
	mov	rbp, rbp
	mov	rsi, qword ptr [rax]
	cmp	rsi, r14
	lea	rdi, [rdi]
	je	.label_1053
	mov	rsp, rsp
	mov	rdi, r14
	mov	rsp, rsp
	call	qword ptr [r13 + 0x38]
	mov	rbp, qword ptr [rbp]
	mov	rsp, rsp
	test	al, al
	mov	rsp, rsp
	jne	.label_1063
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp + 8]
	mov	rsp, rsp
	add	rbp, 8
	test	rax, rax
	mov	rsp, rsp
	jne	.label_1064
	lea	rsi, [rsi]
	jmp	.label_1052
.label_1053:
	mov	rax, r14
	lea	rdi, [rdi]
	jmp	.label_1049
.label_1063:
	mov	rax, qword ptr [rbp]
.label_1049:
	mov	rsp, rsp
	test	rax, rax
	jne	.label_1069
.label_1052:
	cmp	qword ptr [r12], 0
	je	.label_1071
	mov	rax, qword ptr [r13 + 0x48]
	test	rax, rax
	mov	rbp, rbp
	je	.label_1075
	mov	rcx, qword ptr [rax + 8]
	lea	rdi, [rdi]
	mov	qword ptr [r13 + 0x48], rcx
	nop	
	jmp	.label_1076
.label_1071:
	lea	rsi, [rsi]
	mov	qword ptr [r12], r14
	movdqu	xmm0, xmmword ptr [r13 + 0x18]
	paddq	xmm0,  xmmword ptr [word ptr [rip + label_549]]
	movdqu	xmmword ptr [r13 + 0x18], xmm0
	mov	rsp, rsp
	jmp	.label_1051
.label_1075:
	mov	edi, 0x10
	call	malloc
	mov	ebp, 0xffffffff
	test	rax, rax
	je	.label_1050
.label_1076:
	mov	qword ptr [rax], r14
	mov	rcx, qword ptr [r12 + 8]
	lea	rdi, [rdi]
	mov	qword ptr [rax + 8], rcx
	mov	qword ptr [r12 + 8], rax
	inc	qword ptr [r13 + 0x20]
.label_1051:
	lea	rdi, [rdi]
	mov	ebp, 1
.label_1050:
	mov	eax, ebp
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	nop	
	pop	r14
	lea	rsi, [rsi]
	pop	r15
	mov	rsp, rsp
	pop	rbp
	ret	
.label_1054:
	mov	rsp, rsp
	call	abort
.label_1069:
	lea	rsi, [rsi]
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x411710

	.globl hash_insert
	.type hash_insert, @function
hash_insert:
	push	rbx
	lea	rdi, [rdi]
	sub	rsp, 0x10
	mov	rsp, rsp
	mov	rbx, rsi
	lea	rdx, [rsp + 8]
	call	hash_insert_if_absent
	mov	ecx, eax
	mov	rsp, rsp
	xor	eax, eax
	lea	rdi, [rdi]
	cmp	ecx, -1
	je	.label_1078
	nop	
	test	ecx, ecx
	mov	rbp, rbp
	cmove	rbx, qword ptr [rsp + 8]
	lea	rdi, [rdi]
	mov	rax, rbx
.label_1078:
	add	rsp, 0x10
	lea	rdi, [rdi]
	pop	rbx
	nop	
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x411760

	.globl hash_delete
	.type hash_delete, @function
hash_delete:
	mov	rsp, rsp
	push	rbp
	push	r15
	push	r14
	push	r13
	nop	
	push	r12
	lea	rdi, [rdi]
	push	rbx
	push	rax
	mov	r14, rsi
	mov	r15, rdi
	mov	rbp, rbp
	mov	rsi, qword ptr [r15 + 0x10]
	mov	rdi, r14
	mov	rbp, rbp
	call	qword ptr [r15 + 0x30]
	mov	rbx, rax
	cmp	rbx, qword ptr [r15 + 0x10]
	jae	.label_1080
	mov	rbp, rbp
	mov	rbp, qword ptr [r15]
	shl	rbx, 4
	mov	rsi, qword ptr [rbp + rbx]
	nop	
	xor	r12d, r12d
	test	rsi, rsi
	je	.label_1081
	lea	r13, [rbp + rbx]
	cmp	rsi, r14
	je	.label_1085
	mov	rdi, r14
	call	qword ptr [r15 + 0x38]
	mov	rsp, rsp
	test	al, al
	nop	
	je	.label_1091
	mov	r14, qword ptr [r13]
.label_1085:
	nop	
	mov	rax, qword ptr [rbp + rbx + 8]
	test	rax, rax
	je	.label_1094
	mov	rsp, rsp
	movups	xmm0, xmmword ptr [rax]
	lea	rsi, [rsi]
	movups	xmmword ptr [r13], xmm0
	mov	rbp, rbp
	mov	qword ptr [rax], 0
	mov	rbp, rbp
	mov	rcx, qword ptr [r15 + 0x48]
	mov	rsp, rsp
	mov	qword ptr [rax + 8], rcx
	mov	qword ptr [r15 + 0x48], rax
	jmp	.label_1097
.label_1091:
	mov	rax, qword ptr [rbp + rbx + 8]
	xor	r12d, r12d
	test	rax, rax
	je	.label_1081
	lea	rsi, [rsi]
	lea	rbx, [rbp + rbx + 8]
	xor	r12d, r12d
	nop	dword ptr [rax]
.label_1093:
	mov	rsi, qword ptr [rax]
	cmp	rsi, r14
	je	.label_1084
	mov	rdi, r14
	call	qword ptr [r15 + 0x38]
	mov	rcx, qword ptr [rbx]
	test	al, al
	mov	rsp, rsp
	jne	.label_1087
	mov	rax, qword ptr [rcx + 8]
	lea	rsi, [rsi]
	add	rcx, 8
	test	rax, rax
	mov	rbx, rcx
	lea	rsi, [rsi]
	jne	.label_1093
	lea	rsi, [rsi]
	jmp	.label_1081
.label_1094:
	mov	qword ptr [r13], 0
	lea	rsi, [rsi]
	jmp	.label_1097
.label_1084:
	mov	rcx, rax
	jmp	.label_1086
.label_1087:
	mov	r14, qword ptr [rcx]
.label_1086:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rcx + 8]
	lea	rsi, [rsi]
	mov	qword ptr [rbx], rax
	mov	qword ptr [rcx], 0
	mov	rax, qword ptr [r15 + 0x48]
	mov	qword ptr [rcx + 8], rax
	mov	rsp, rsp
	mov	qword ptr [r15 + 0x48], rcx
.label_1097:
	lea	rdi, [rdi]
	xor	r12d, r12d
	test	r14, r14
	je	.label_1081
	dec	qword ptr [r15 + 0x20]
	cmp	qword ptr [r13], 0
	mov	rbp, rbp
	jne	.label_1083
	mov	rax, qword ptr [r15 + 0x18]
	mov	rsp, rsp
	dec	rax
	mov	qword ptr [r15 + 0x18], rax
	mov	ecx, eax
	and	ecx, 1
	test	rax, rax
	lea	rdi, [rdi]
	js	.label_1088
	mov	rsp, rsp
	cvtsi2ss	xmm1, rax
	jmp	.label_1095
.label_1088:
	shr	rax, 1
	mov	rsp, rsp
	or	rcx, rax
	mov	rsp, rsp
	cvtsi2ss	xmm1, rcx
	addss	xmm1, xmm1
.label_1095:
	mov	rcx, qword ptr [r15 + 0x10]
	lea	rsi, [rsi]
	mov	rax, qword ptr [r15 + 0x28]
	movss	xmm2, dword ptr [rax]
	mov	edx, ecx
	and	edx, 1
	nop	
	test	rcx, rcx
	js	.label_1099
	cvtsi2ss	xmm0, rcx
	mov	rsp, rsp
	jmp	.label_1082
.label_1099:
	mov	rbp, rbp
	shr	rcx, 1
	or	rdx, rcx
	nop	
	cvtsi2ss	xmm0, rdx
	addss	xmm0, xmm0
.label_1082:
	movaps	xmm3, xmm2
	nop	
	mulss	xmm3, xmm0
	ucomiss	xmm3, xmm1
	jbe	.label_1083
	mov	ecx, OFFSET FLAT:default_tuning
	cmp	rax, rcx
	lea	rsi, [rsi]
	je	.label_1090
	lea	rdi, [rdi]
	movss	xmm3, dword ptr [rax + 8]
	ucomiss	xmm3,  dword ptr [dword ptr [rip + label_989]]
	nop	
	jbe	.label_1079
	mov	rsp, rsp
	movss	xmm4,  dword ptr [dword ptr [rip + label_987]]
	ucomiss	xmm4, xmm3
	mov	rsp, rsp
	jbe	.label_1079
	xorps	xmm4, xmm4
	ucomiss	xmm2, xmm4
	jb	.label_1079
	mov	rbp, rbp
	movss	xmm4, dword ptr [rax + 0xc]
	ucomiss	xmm4,  dword ptr [dword ptr [rip + label_994]]
	jbe	.label_1079
	lea	rsi, [rsi]
	movss	xmm4,  dword ptr [dword ptr [rip + label_989]]
	addss	xmm4, xmm2
	mov	rbp, rbp
	ucomiss	xmm3, xmm4
	jbe	.label_1079
	movss	xmm3, dword ptr [rax + 4]
	nop	
	movss	xmm5,  dword ptr [dword ptr [rip + label_996]]
	nop	
	ucomiss	xmm5, xmm3
	jb	.label_1079
	ucomiss	xmm3, xmm4
	ja	.label_1089
.label_1079:
	mov	qword ptr [word ptr [r15 + 40]], OFFSET FLAT:default_tuning
	mov	eax, OFFSET FLAT:default_tuning
	xorps	xmm2, xmm2
	jmp	.label_1089
.label_1090:
	mov	eax, OFFSET FLAT:default_tuning
.label_1089:
	mulss	xmm2, xmm0
	lea	rdi, [rdi]
	ucomiss	xmm2, xmm1
	jbe	.label_1083
	mulss	xmm0, dword ptr [rax + 4]
	mov	rbp, rbp
	cmp	byte ptr [rax + 0x10], 0
	mov	rsp, rsp
	jne	.label_1098
	mulss	xmm0, dword ptr [rax + 8]
.label_1098:
	movss	xmm1,  dword ptr [dword ptr [rip + label_984]]
	nop	
	movaps	xmm2, xmm0
	lea	rsi, [rsi]
	subss	xmm2, xmm1
	cvttss2si	rax, xmm2
	movabs	rcx, 0x8000000000000000
	lea	rdi, [rdi]
	xor	rcx, rax
	cvttss2si	rsi, xmm0
	lea	rdi, [rdi]
	ucomiss	xmm0, xmm1
	cmovae	rsi, rcx
	mov	rdi, r15
	call	hash_rehash
	mov	rbp, rbp
	test	al, al
	jne	.label_1083
	mov	rsp, rsp
	mov	rdi, qword ptr [r15 + 0x48]
	test	rdi, rdi
	je	.label_1092
.label_1096:
	nop	
	mov	rbx, qword ptr [rdi + 8]
	mov	rsp, rsp
	call	free
	test	rbx, rbx
	lea	rsi, [rsi]
	mov	rdi, rbx
	mov	rsp, rsp
	jne	.label_1096
.label_1092:
	nop	
	mov	qword ptr [r15 + 0x48], 0
.label_1083:
	nop	
	mov	r12, r14
.label_1081:
	mov	rax, r12
	add	rsp, 8
	mov	rsp, rsp
	pop	rbx
	pop	r12
	mov	rsp, rsp
	pop	r13
	lea	rdi, [rdi]
	pop	r14
	pop	r15
	mov	rbp, rbp
	pop	rbp
	lea	rdi, [rdi]
	ret	
.label_1080:
	mov	rbp, rbp
	call	abort
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x411ab0

	.globl heap_alloc
	.type heap_alloc, @function
heap_alloc:
	nop	
	push	r15
	push	r14
	push	r12
	push	rbx
	mov	rsp, rsp
	push	rax
	lea	rdi, [rdi]
	mov	r15, rsi
	mov	r14, rdi
	lea	rsi, [rsi]
	mov	edi, 0x20
	call	xmalloc
	mov	rbp, rbp
	mov	r12, rax
	mov	rsp, rsp
	test	r15, r15
	nop	
	mov	ebx, 1
	lea	rdi, [rdi]
	cmovne	rbx, r15
	mov	rax, rbx
	shr	rax, 0x3c
	jne	.label_1100
	mov	rsp, rsp
	lea	rdi, [rbx*8]
	call	xmalloc
	mov	qword ptr [r12], rax
	lea	rdi, [rdi]
	mov	qword ptr [rax], 0
	mov	qword ptr [r12 + 8], rbx
	mov	rsp, rsp
	mov	qword ptr [r12 + 0x10], 0
	test	r14, r14
	mov	rbp, rbp
	mov	eax, OFFSET FLAT:heap_default_compare
	lea	rdi, [rdi]
	cmovne	rax, r14
	mov	qword ptr [r12 + 0x18], rax
	mov	rbp, rbp
	mov	rax, r12
	add	rsp, 8
	pop	rbx
	mov	rsp, rsp
	pop	r12
	pop	r14
	nop	
	pop	r15
	mov	rsp, rsp
	ret	
.label_1100:
	call	xalloc_die
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x411b60

	.globl heap_default_compare
	.type heap_default_compare, @function
heap_default_compare:
	xor	eax, eax
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x411b70
	.globl heap_free
	.type heap_free, @function
heap_free:

	push	rbx
	mov	rbx, rdi
	mov	rdi, qword ptr [rbx]
	call	free
	mov	rdi, rbx
	lea	rdi, [rdi]
	pop	rbx
	jmp	free
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x411b90

	.globl heap_insert
	.type heap_insert, @function
heap_insert:
	lea	rdi, [rdi]
	push	rbp
	mov	rbp, rbp
	push	r15
	push	r14
	push	r13
	nop	
	push	r12
	push	rbx
	push	rax
	lea	rdi, [rdi]
	mov	r14, rsi
	mov	r15, rdi
	lea	rsi, [rsi]
	mov	rax, qword ptr [r15 + 8]
	mov	rcx, qword ptr [r15 + 0x10]
	lea	rdx, [rax - 1]
	cmp	rdx, rcx
	lea	rdi, [rdi]
	jbe	.label_1108
	lea	rdi, [rdi]
	mov	rax, qword ptr [r15]
	jmp	.label_1101
.label_1108:
	mov	rdi, qword ptr [r15]
	test	rdi, rdi
	je	.label_1104
	lea	rdi, [rdi]
	movabs	rcx, 0xaaaaaaaaaaaaaaa
	mov	rsp, rsp
	cmp	rax, rcx
	lea	rsi, [rsi]
	jae	.label_1105
	mov	rcx, rax
	nop	
	shr	rcx, 1
	lea	rsi, [rax + rcx + 1]
	jmp	.label_1106
.label_1104:
	mov	rbp, rbp
	test	rax, rax
	mov	esi, 0x10
	cmovne	rsi, rax
	mov	rax, rsi
	nop	
	shr	rax, 0x3c
	nop	
	jne	.label_1109
.label_1106:
	mov	qword ptr [r15 + 8], rsi
	shl	rsi, 3
	lea	rdi, [rdi]
	call	xrealloc
	mov	qword ptr [r15], rax
	mov	rcx, qword ptr [r15 + 0x10]
.label_1101:
	lea	rbx, [rcx + 1]
	mov	qword ptr [r15 + 0x10], rbx
	lea	rdi, [rdi]
	mov	qword ptr [rax + rcx*8 + 8], r14
	lea	rsi, [rsi]
	mov	r12, qword ptr [r15]
	mov	r14, qword ptr [r12 + rcx*8 + 8]
	mov	r13d, 1
	test	rcx, rcx
	je	.label_1103
	mov	rbp, rbp
	mov	r15, qword ptr [r15 + 0x18]
	lea	rsi, [rsi]
	mov	r13d, 1
	nop	word ptr [rax + rax]
.label_1107:
	mov	rbp, rbx
	shr	rbp, 1
	lea	rsi, [rsi]
	mov	rdi, qword ptr [r12 + rbp*8]
	nop	
	mov	rsi, r14
	mov	rbp, rbp
	call	r15
	nop	
	test	eax, eax
	lea	rdi, [rdi]
	jg	.label_1102
	mov	rsp, rsp
	mov	rax, qword ptr [r12 + rbp*8]
	mov	qword ptr [r12 + rbx*8], rax
	cmp	rbp, 1
	mov	rbp, rbp
	mov	rbx, rbp
	mov	rsp, rsp
	jne	.label_1107
	nop	
	jmp	.label_1103
.label_1102:
	lea	rdi, [rdi]
	mov	r13, rbx
.label_1103:
	mov	qword ptr [r12 + r13*8], r14
	xor	eax, eax
	add	rsp, 8
	pop	rbx
	mov	rsp, rsp
	pop	r12
	mov	rsp, rsp
	pop	r13
	lea	rsi, [rsi]
	pop	r14
	lea	rdi, [rdi]
	pop	r15
	nop	
	pop	rbp
	ret	
.label_1105:
	call	xalloc_die
.label_1109:
	lea	rsi, [rsi]
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x411cf0

	.globl heap_remove_top
	.type heap_remove_top, @function
heap_remove_top:
	mov	rsp, rsp
	mov	rsi, qword ptr [rdi + 0x10]
	lea	rdi, [rdi]
	xor	eax, eax
	test	rsi, rsi
	lea	rsi, [rsi]
	je	.label_1113
	push	rbp
	mov	rsp, rsp
	push	r15
	lea	rdi, [rdi]
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x18
	mov	rcx, qword ptr [rdi]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rcx + 8]
	nop	
	lea	r13, [rsi - 1]
	mov	qword ptr [rsp + 0x10], r13
	mov	rsp, rsp
	mov	qword ptr [rdi + 0x10], r13
	mov	rax, qword ptr [rcx + rsi*8]
	mov	qword ptr [rcx + 8], rax
	mov	rbx, qword ptr [rdi]
	nop	
	mov	rax, qword ptr [rbx + 8]
	lea	rsi, [rsi]
	mov	qword ptr [rsp], rax
	mov	rsp, rsp
	shr	r13, 1
	nop	
	mov	r14d, 1
	je	.label_1111
	mov	rbp, rbp
	mov	qword ptr [rsp + 8], rdx
	mov	r15, qword ptr [rdi + 0x18]
	nop	dword ptr [rax]
.label_1115:
	mov	rbp, rbp
	lea	rbp, [r14 + r14]
	lea	rsi, [rsi]
	cmp	rbp, qword ptr [rsp + 0x10]
	jae	.label_1110
	mov	rbp, rbp
	mov	rdi, qword ptr [rbx + rbp*8]
	lea	rsi, [rsi]
	mov	r12, rbp
	or	r12, 1
	nop	
	mov	rsi, qword ptr [rbx + r12*8]
	nop	
	call	r15
	test	eax, eax
	cmovs	rbp, r12
.label_1110:
	mov	rdi, qword ptr [rbx + rbp*8]
	mov	rsp, rsp
	mov	rsi, qword ptr [rsp]
	lea	rdi, [rdi]
	call	r15
	lea	rsi, [rsi]
	test	eax, eax
	nop	
	jle	.label_1114
	mov	rax, qword ptr [rbx + rbp*8]
	mov	qword ptr [rbx + r14*8], rax
	cmp	rbp, r13
	mov	r14, rbp
	jbe	.label_1115
	lea	rdi, [rdi]
	jmp	.label_1112
.label_1111:
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 8], rdx
	mov	rsp, rsp
	mov	ebp, 1
	mov	rbp, rbp
	jmp	.label_1112
.label_1114:
	mov	rbp, r14
.label_1112:
	mov	rax, qword ptr [rsp]
	nop	
	mov	qword ptr [rbx + rbp*8], rax
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 8]
	add	rsp, 0x18
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	lea	rdi, [rdi]
	pop	r15
	mov	rbp, rbp
	pop	rbp
.label_1113:
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x411e10

	.globl inttostr
	.type inttostr, @function
inttostr:
	lea	rdi, [rdi]
	mov	byte ptr [rsi + 0xb], 0
	test	edi, edi
	nop	
	js	.label_1116
	add	rsi, 0xb
.label_1118:
	movsxd	rax, edi
	imul	rcx, rax, 0x66666667
	lea	rdi, [rdi]
	mov	rdx, rcx
	nop	
	shr	rdx, 0x3f
	sar	rcx, 0x22
	lea	rsi, [rsi]
	add	ecx, edx
	lea	rdi, [rdi]
	lea	edx, [rcx + rcx]
	lea	edx, [rdx + rdx*4]
	lea	rsi, [rsi]
	neg	edx
	mov	rbp, rbp
	lea	edx, [rdi + rdx + 0x30]
	nop	
	mov	byte ptr [rsi - 1], dl
	lea	rdi, [rdi]
	dec	rsi
	add	eax, 9
	nop	
	cmp	eax, 0x12
	mov	rsp, rsp
	mov	edi, ecx
	ja	.label_1118
	jmp	.label_1119
.label_1116:
	add	rsi, 0xc
	nop	word ptr cs:[rax + rax]
.label_1117:
	nop	
	movsxd	rax, edi
	mov	rsp, rsp
	imul	rdi, rax, 0x66666667
	mov	rcx, rdi
	shr	rcx, 0x3f
	sar	rdi, 0x22
	add	edi, ecx
	lea	ecx, [rdi + rdi]
	lea	ecx, [rcx + rcx*4]
	mov	edx, eax
	sub	edx, ecx
	mov	ecx, 0x30
	lea	rdi, [rdi]
	sub	ecx, edx
	lea	rdi, [rdi]
	mov	byte ptr [rsi - 2], cl
	add	eax, 9
	nop	
	dec	rsi
	mov	rbp, rbp
	cmp	eax, 0x12
	nop	
	ja	.label_1117
	lea	rsi, [rsi]
	mov	byte ptr [rsi - 2], 0x2d
	add	rsi, -2
.label_1119:
	mov	rax, rsi
	mov	rbp, rbp
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x411ee0

	.globl uinttostr
	.type uinttostr, @function
uinttostr:
	mov	byte ptr [rsi + 0xa], 0
	mov	rsp, rsp
	add	rsi, 0xa
	lea	rdi, [rdi]
	mov	r8d, 0xcccccccd
	nop	word ptr cs:[rax + rax]
.label_1120:
	mov	rsp, rsp
	mov	ecx, edi
	lea	rdi, [rdi]
	imul	rcx, r8
	lea	rdi, [rdi]
	shr	rcx, 0x23
	lea	edx, [rcx + rcx]
	lea	edx, [rdx + rdx*4]
	nop	
	mov	eax, edi
	mov	rsp, rsp
	sub	eax, edx
	lea	rsi, [rsi]
	or	eax, 0x30
	mov	rsp, rsp
	mov	byte ptr [rsi - 1], al
	dec	rsi
	mov	rsp, rsp
	cmp	edi, 9
	lea	rsi, [rsi]
	mov	edi, ecx
	mov	rsp, rsp
	ja	.label_1120
	lea	rdi, [rdi]
	mov	rax, rsi
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x411f50

	.globl umaxtostr
	.type umaxtostr, @function
umaxtostr:
	mov	rcx, rdi
	lea	rdi, [rdi]
	mov	byte ptr [rsi + 0x14], 0
	add	rsi, 0x14
	movabs	r8, 0xcccccccccccccccd
	nop	dword ptr [rax + rax]
.label_1121:
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
	ja	.label_1121
	mov	rax, rsi
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x411fb0
	.globl gnu_mbswidth
	.type gnu_mbswidth, @function
gnu_mbswidth:

	push	rbp
	mov	rsp, rsp
	push	rbx
	push	rax
	mov	ebp, esi
	nop	
	mov	rbx, rdi
	call	strlen
	nop	
	mov	rdi, rbx
	mov	rsp, rsp
	mov	rsi, rax
	mov	edx, ebp
	mov	rsp, rsp
	add	rsp, 8
	pop	rbx
	pop	rbp
	jmp	mbsnwidth
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x411fe0

	.globl mbsnwidth
	.type mbsnwidth, @function
mbsnwidth:
	nop	
	push	rbp
	push	r15
	push	r14
	nop	
	push	r13
	push	r12
	lea	rsi, [rsi]
	push	rbx
	sub	rsp, 0x28
	mov	r14d, edx
	mov	r15, rsi
	mov	rbx, rdi
	lea	r12, [rbx + r15]
	lea	rsi, [rsi]
	call	__ctype_get_mb_cur_max
	cmp	rax, 1
	jbe	.label_1123
	xor	ebp, ebp
	test	r15, r15
	jle	.label_1130
	mov	rsp, rsp
	mov	eax, r14d
	nop	
	and	eax, 2
	nop	
	mov	dword ptr [rsp + 0x20], eax
	lea	rsi, [rsi]
	and	r14d, 1
	mov	rbp, rbp
	mov	edx, r14d
	xor	edx, 1
	lea	esi, [r14*4]
	xor	esi, 5
	xor	r15d, r15d
	mov	rbp, rbp
	lea	r13, [rsp + 0x10]
	mov	ebp, 0x7fffffff
	nop	word ptr [rax + rax]
.label_1122:
	mov	rsp, rsp
	movsx	eax, byte ptr [rbx]
	lea	rdi, [rdi]
	add	eax, -0x20
	mov	rbp, rbp
	cmp	eax, 0x5e
	mov	rbp, rbp
	ja	.label_1136
	jmp	qword ptr [word ptr [+ (rax * 8) + label_1142]]
.label_1638:
	lea	rsi, [rsi]
	inc	rbx
	inc	r15d
.label_1127:
	nop	
	cmp	rbx, r12
	jb	.label_1122
	jmp	.label_1125
.label_1136:
	mov	dword ptr [rsp + 0x1c], esi
	mov	dword ptr [rsp + 0x24], edx
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x10], 0
	nop	word ptr cs:[rax + rax]
.label_1128:
	mov	rsp, rsp
	mov	rdx, r12
	sub	rdx, rbx
	mov	rsp, rsp
	lea	rdi, [rsp + 0xc]
	lea	rsi, [rsi]
	mov	rsi, rbx
	mov	rcx, r13
	call	rpl_mbrtowc
	lea	rsi, [rsi]
	mov	r13, rax
	mov	rsp, rsp
	test	r13, r13
	je	.label_1134
	cmp	r13, -2
	je	.label_1135
	cmp	r13, -1
	lea	rdi, [rdi]
	jne	.label_1138
	jmp	.label_1141
	nop	word ptr cs:[rax + rax]
.label_1134:
	lea	rsi, [rsi]
	mov	r13d, 1
.label_1138:
	mov	edi, dword ptr [rsp + 0xc]
	call	wcwidth
	lea	rdi, [rdi]
	test	eax, eax
	js	.label_1140
	mov	edx, 0x7fffffff
	mov	rbp, rbp
	sub	edx, r15d
	mov	ecx, 7
	cmp	eax, edx
	lea	rsi, [rsi]
	jg	.label_1129
	add	r15d, eax
	jmp	.label_1131
	nop	dword ptr [rax]
.label_1140:
	mov	ecx, 1
	cmp	dword ptr [rsp + 0x20], 0
	jne	.label_1129
	lea	rdi, [rdi]
	mov	edi, dword ptr [rsp + 0xc]
	mov	rsp, rsp
	call	iswcntrl
	mov	rsp, rsp
	test	eax, eax
	jne	.label_1131
	cmp	r15d, 0x7fffffff
	mov	rbp, rbp
	je	.label_1137
	nop	
	inc	r15d
	nop	word ptr [rax + rax]
.label_1131:
	mov	rsp, rsp
	add	rbx, r13
	lea	r13, [rsp + 0x10]
	mov	rbp, rbp
	mov	rdi, r13
	call	mbsinit
	test	eax, eax
	nop	
	mov	rax, rbx
	mov	rsp, rsp
	je	.label_1128
	jmp	.label_1132
.label_1135:
	add	r15d, dword ptr [rsp + 0x24]
	mov	rsp, rsp
	test	r14d, r14d
	mov	rax, r12
	lea	rdi, [rdi]
	mov	ecx, dword ptr [rsp + 0x1c]
	lea	r13, [rsp + 0x10]
	lea	rsi, [rsi]
	jne	.label_1133
	nop	
	jmp	.label_1132
.label_1141:
	lea	rdi, [rdi]
	mov	ecx, 1
	test	r14d, r14d
	lea	r13, [rsp + 0x10]
	jne	.label_1133
	inc	rbx
	mov	rbp, rbp
	inc	r15d
	mov	rsp, rsp
	mov	rax, rbx
.label_1132:
	lea	rdi, [rdi]
	mov	rbx, rax
	nop	
	mov	edx, dword ptr [rsp + 0x24]
	mov	rbp, rbp
	mov	esi, dword ptr [rsp + 0x1c]
	jmp	.label_1127
.label_1137:
	mov	ecx, 7
	mov	r15d, 0x7fffffff
.label_1129:
	lea	r13, [rsp + 0x10]
.label_1133:
	mov	rbp, rbp
	test	ecx, ecx
	mov	edx, dword ptr [rsp + 0x24]
	lea	rsi, [rsi]
	mov	esi, dword ptr [rsp + 0x1c]
	je	.label_1127
	lea	rdi, [rdi]
	mov	r15d, 0xffffffff
	nop	
	cmp	ecx, 7
	jne	.label_1125
	mov	rsp, rsp
	jmp	.label_1130
.label_1123:
	nop	
	and	r14d, 2
	nop	
	xor	r15d, r15d
	jmp	.label_1124
.label_1126:
	mov	rsp, rsp
	inc	r15d
	nop	dword ptr [rax]
.label_1124:
	lea	rsi, [rsi]
	cmp	rbx, r12
	lea	rsi, [rsi]
	jae	.label_1125
	movzx	ebp, byte ptr [rbx]
	mov	rsp, rsp
	inc	rbx
	call	__ctype_b_loc
	mov	rbp, rbp
	mov	rax, qword ptr [rax]
	movzx	eax, word ptr [rax + rbp*2]
	test	ah, 0x40
	lea	rsi, [rsi]
	jne	.label_1139
	mov	rsp, rsp
	mov	ebp, 0xffffffff
	test	r14d, r14d
	mov	rbp, rbp
	jne	.label_1130
	test	al, 2
	jne	.label_1124
.label_1139:
	mov	ebp, 0x7fffffff
	cmp	r15d, 0x7fffffff
	mov	rsp, rsp
	jne	.label_1126
	jmp	.label_1130
.label_1125:
	mov	ebp, r15d
.label_1130:
	mov	eax, ebp
	lea	rdi, [rdi]
	add	rsp, 0x28
	mov	rsp, rsp
	pop	rbx
	mov	rsp, rsp
	pop	r12
	pop	r13
	lea	rdi, [rdi]
	pop	r14
	nop	
	pop	r15
	mov	rbp, rbp
	pop	rbp
	lea	rdi, [rdi]
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4122d0

	.globl num_processors
	.type num_processors, @function
num_processors:
	mov	rbp, rbp
	push	r14
	push	rbx
	mov	rsp, rsp
	sub	rsp, 0x88
	lea	rdi, [rdi]
	mov	r14, -1
	cmp	edi, 2
	mov	rbp, rbp
	jne	.label_1145
	nop	
	mov	edi, OFFSET FLAT:.str_6
	mov	rsp, rsp
	call	getenv
	nop	
	mov	rdi, rax
	call	parse_omp_threads
	mov	rbx, rax
	mov	rsp, rsp
	mov	edi, OFFSET FLAT:.str.1_4
	lea	rdi, [rdi]
	call	getenv
	nop	
	mov	rdi, rax
	call	parse_omp_threads
	cmp	rax, 1
	sbb	r14, r14
	lea	rdi, [rdi]
	or	r14, rax
	cmp	rbx, r14
	nop	
	mov	rax, r14
	nop	
	cmovb	rax, rbx
	nop	
	mov	edi, 1
	nop	
	test	rbx, rbx
	lea	rsi, [rsi]
	jne	.label_1149
.label_1145:
	lea	rsi, [rsi]
	cmp	edi, 1
	lea	rsi, [rsi]
	jne	.label_1146
	lea	rsi, [rsi]
	lea	rdx, [rsp + 8]
	xor	edi, edi
	lea	rsi, [rsi]
	mov	esi, 0x80
	call	sched_getaffinity
	mov	rbp, rbp
	test	eax, eax
	jne	.label_1144
	mov	rbp, rbp
	lea	rsi, [rsp + 8]
	mov	rsp, rsp
	mov	edi, 0x80
	call	__sched_cpucount
	test	eax, eax
	je	.label_1144
	cdqe	
	mov	rsp, rsp
	jmp	.label_1147
.label_1146:
	mov	edi, 0x53
	call	sysconf
	cmp	rax, 1
	nop	
	jne	.label_1148
	lea	rdi, [rdi]
	lea	rdx, [rsp + 8]
	xor	edi, edi
	lea	rdi, [rdi]
	mov	esi, 0x80
	call	sched_getaffinity
	mov	rsp, rsp
	test	eax, eax
	jne	.label_1143
	lea	rsi, [rsp + 8]
	mov	edi, 0x80
	call	__sched_cpucount
	mov	rbp, rbp
	test	eax, eax
	je	.label_1143
	cdqe	
	mov	rbp, rbp
	jmp	.label_1148
.label_1144:
	lea	rdi, [rdi]
	mov	edi, 0x54
	mov	rbp, rbp
	call	sysconf
.label_1148:
	test	rax, rax
	jg	.label_1147
.label_1143:
	mov	eax, 1
.label_1147:
	lea	rdi, [rdi]
	cmp	rax, r14
	cmovb	r14, rax
	mov	rax, r14
.label_1149:
	add	rsp, 0x88
	mov	rbp, rbp
	pop	rbx
	mov	rsp, rsp
	pop	r14
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x412420

	.globl parse_omp_threads
	.type parse_omp_threads, @function
parse_omp_threads:
	mov	rsp, rsp
	push	rax
	mov	rsp, rsp
	xor	eax, eax
	lea	rdi, [rdi]
	test	rdi, rdi
	nop	
	je	.label_1150
	nop	
	mov	al, byte ptr [rdi]
	mov	rsp, rsp
	test	al, al
	mov	rsp, rsp
	je	.label_1156
	lea	rsi, [rsi]
	mov	ecx, 0x80001f
	nop	dword ptr [rax + rax]
.label_1152:
	movsx	edx, al
	mov	rsp, rsp
	add	edx, -9
	nop	
	cmp	edx, 0x17
	ja	.label_1154
	lea	rdi, [rdi]
	bt	ecx, edx
	lea	rdi, [rdi]
	jae	.label_1154
	mov	al, byte ptr [rdi + 1]
	inc	rdi
	test	al, al
	mov	rsp, rsp
	jne	.label_1152
.label_1156:
	mov	rsp, rsp
	xor	eax, eax
.label_1154:
	movsx	ecx, al
	add	ecx, -0x30
	xor	eax, eax
	cmp	ecx, 9
	ja	.label_1150
	lea	rdi, [rdi]
	mov	qword ptr [rsp], 0
	mov	rbp, rbp
	lea	rsi, [rsp]
	mov	edx, 0xa
	mov	rsp, rsp
	call	strtoul
	nop	
	mov	rcx, qword ptr [rsp]
	test	rcx, rcx
	je	.label_1153
	mov	dl, byte ptr [rcx]
	test	dl, dl
	je	.label_1150
	lea	rsi, [rsi]
	inc	rcx
	lea	rdi, [rdi]
	mov	esi, 0x80001f
	nop	word ptr [rax + rax]
.label_1155:
	movsx	edi, dl
	lea	rdi, [rdi]
	add	edi, -9
	cmp	edi, 0x17
	lea	rdi, [rdi]
	ja	.label_1151
	bt	esi, edi
	lea	rdi, [rdi]
	jae	.label_1151
	mov	rsp, rsp
	mov	qword ptr [rsp], rcx
	nop	
	mov	dl, byte ptr [rcx]
	mov	rsp, rsp
	inc	rcx
	test	dl, dl
	jne	.label_1155
	jmp	.label_1150
.label_1151:
	movzx	ecx, dl
	mov	rbp, rbp
	cmp	ecx, 0x2c
	je	.label_1150
.label_1153:
	lea	rsi, [rsi]
	xor	eax, eax
.label_1150:
	pop	rcx
	ret	
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x412520

	.globl physmem_total
	.type physmem_total, @function
physmem_total:
	push	rbx
	sub	rsp, 0x70
	mov	edi, 0x55
	call	sysconf
	mov	rbx, rax
	mov	rsp, rsp
	mov	edi, 0x1e
	call	sysconf
	mov	rcx, rax
	nop	
	or	rcx, rbx
	js	.label_1160
	cvtsi2sd	xmm1, rax
	cvtsi2sd	xmm0, rbx
	mulsd	xmm0, xmm1
	jmp	.label_1158
.label_1160:
	mov	rbp, rbp
	lea	rdi, [rsp]
	call	sysinfo
	test	eax, eax
	je	.label_1157
	nop	
	movsd	xmm0,  qword ptr [word ptr [rip + label_1159]]
	jmp	.label_1158
.label_1157:
	mov	rsp, rsp
	movq	xmm0, qword ptr [rsp + 0x20]
	punpckldq	xmm0,  xmmword ptr [word ptr [rip + label_89]]
	subpd	xmm0,  xmmword ptr [word ptr [rip + label_90]]
	mov	rsp, rsp
	pshufd	xmm1, xmm0, 0x4e
	mov	rsp, rsp
	addpd	xmm1, xmm0
	mov	eax, dword ptr [rsp + 0x68]
	nop	
	xorps	xmm0, xmm0
	nop	
	cvtsi2sd	xmm0, rax
	mov	rbp, rbp
	mulsd	xmm0, xmm1
.label_1158:
	nop	
	add	rsp, 0x70
	mov	rbp, rbp
	pop	rbx
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4125c0

	.globl physmem_available
	.type physmem_available, @function
physmem_available:
	mov	rsp, rsp
	push	rbx
	sub	rsp, 0x70
	lea	rsi, [rsi]
	mov	edi, 0x56
	call	sysconf
	mov	rbx, rax
	mov	edi, 0x1e
	call	sysconf
	mov	rcx, rax
	or	rcx, rbx
	mov	rbp, rbp
	js	.label_1161
	lea	rdi, [rdi]
	cvtsi2sd	xmm1, rax
	cvtsi2sd	xmm0, rbx
	mulsd	xmm0, xmm1
	nop	
	jmp	.label_1162
.label_1161:
	lea	rdi, [rsp]
	call	sysinfo
	test	eax, eax
	mov	rsp, rsp
	je	.label_1164
	mov	edi, 0x55
	call	sysconf
	mov	rbx, rax
	mov	edi, 0x1e
	call	sysconf
	mov	rcx, rax
	mov	rsp, rsp
	or	rcx, rbx
	js	.label_1163
	mov	rsp, rsp
	cvtsi2sd	xmm1, rax
	cvtsi2sd	xmm0, rbx
	mov	rbp, rbp
	jmp	.label_1166
.label_1164:
	lea	rsi, [rsi]
	movq	xmm0, qword ptr [rsp + 0x28]
	movdqa	xmm1,  xmmword ptr [word ptr [rip + label_89]]
	punpckldq	xmm0, xmm1
	movapd	xmm2,  xmmword ptr [word ptr [rip + label_90]]
	subpd	xmm0, xmm2
	lea	rsi, [rsi]
	pshufd	xmm3, xmm0, 0x4e
	lea	rsi, [rsi]
	addpd	xmm3, xmm0
	movq	xmm0, qword ptr [rsp + 0x38]
	lea	rsi, [rsi]
	punpckldq	xmm0, xmm1
	subpd	xmm0, xmm2
	pshufd	xmm1, xmm0, 0x4e
	lea	rsi, [rsi]
	addpd	xmm1, xmm0
	addsd	xmm1, xmm3
	mov	eax, dword ptr [rsp + 0x68]
	mov	rsp, rsp
	xorps	xmm0, xmm0
	cvtsi2sd	xmm0, rax
	nop	
	mulsd	xmm0, xmm1
	jmp	.label_1162
.label_1163:
	lea	rdi, [rsp]
	nop	
	call	sysinfo
	test	eax, eax
	mov	rsp, rsp
	je	.label_1167
	movsd	xmm0,  qword ptr [word ptr [rip + label_1159]]
	jmp	.label_1165
.label_1167:
	lea	rdi, [rdi]
	movq	xmm0, qword ptr [rsp + 0x20]
	lea	rsi, [rsi]
	punpckldq	xmm0,  xmmword ptr [word ptr [rip + label_89]]
	subpd	xmm0,  xmmword ptr [word ptr [rip + label_90]]
	mov	rsp, rsp
	pshufd	xmm1, xmm0, 0x4e
	lea	rsi, [rsi]
	addpd	xmm1, xmm0
	mov	eax, dword ptr [rsp + 0x68]
	xorps	xmm0, xmm0
	cvtsi2sd	xmm0, rax
.label_1166:
	mulsd	xmm0, xmm1
.label_1165:
	mulsd	xmm0,  qword ptr [word ptr [rip + label_728]]
.label_1162:
	mov	rsp, rsp
	add	rsp, 0x70
	lea	rdi, [rdi]
	pop	rbx
	lea	rdi, [rdi]
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x412720

	.globl rpl_pipe2
	.type rpl_pipe2, @function
rpl_pipe2:
	lea	rsi, [rsi]
	push	rbp
	nop	
	push	r15
	lea	rdi, [rdi]
	push	r14
	mov	rbp, rbp
	push	r12
	mov	rsp, rsp
	push	rbx
	mov	rbx, rdi
	mov	r14d, dword ptr [rbx]
	mov	r15d, dword ptr [rbx + 4]
	mov	rbp, rbp
	cmp	dword ptr [dword ptr [rip + rpl_pipe2.have_pipe2_really]],  0
	js	.label_1174
	lea	rdi, [rdi]
	mov	rdi, rbx
	mov	r12d, esi
	mov	rsp, rsp
	call	pipe2
	mov	ebp, eax
	mov	rbp, rbp
	test	ebp, ebp
	mov	rsp, rsp
	jns	.label_1172
	call	__errno_location
	mov	rsp, rsp
	cmp	dword ptr [rax], 0x26
	mov	rsp, rsp
	jne	.label_1172
	lea	rsi, [rsi]
	mov	dword ptr [dword ptr [rip + rpl_pipe2.have_pipe2_really]],  0xffffffff
	lea	rdi, [rdi]
	mov	esi, r12d
.label_1174:
	mov	rsp, rsp
	test	esi, 0xfff7f7ff
	nop	
	je	.label_1170
	mov	rsp, rsp
	call	__errno_location
	mov	dword ptr [rax], 0x16
	jmp	.label_1173
.label_1172:
	mov	dword ptr [dword ptr [rip + rpl_pipe2.have_pipe2_really]],  1
	mov	rbp, rbp
	jmp	.label_1169
.label_1170:
	mov	r12d, esi
	nop	
	mov	rdi, rbx
	call	pipe
	mov	ebp, 0xffffffff
	test	eax, eax
	js	.label_1169
	mov	rsp, rsp
	mov	eax, r12d
	test	ah, 8
	je	.label_1171
	mov	rbp, rbp
	mov	edi, dword ptr [rbx + 4]
	mov	esi, 3
	nop	
	xor	edx, edx
	xor	eax, eax
	call	rpl_fcntl
	nop	
	mov	ecx, eax
	mov	rsp, rsp
	test	ecx, ecx
	js	.label_1168
	mov	edi, dword ptr [rbx + 4]
	lea	rdi, [rdi]
	or	ecx, 0x800
	mov	esi, 4
	xor	eax, eax
	nop	
	mov	edx, ecx
	lea	rdi, [rdi]
	call	rpl_fcntl
	lea	rdi, [rdi]
	cmp	eax, -1
	je	.label_1168
	mov	edi, dword ptr [rbx]
	mov	esi, 3
	xor	edx, edx
	xor	eax, eax
	call	rpl_fcntl
	mov	ecx, eax
	test	ecx, ecx
	js	.label_1168
	mov	rbp, rbp
	mov	edi, dword ptr [rbx]
	or	ecx, 0x800
	mov	rsp, rsp
	mov	esi, 4
	mov	rsp, rsp
	xor	eax, eax
	nop	
	mov	edx, ecx
	mov	rbp, rbp
	call	rpl_fcntl
	cmp	eax, -1
	lea	rdi, [rdi]
	je	.label_1168
.label_1171:
	xor	ebp, ebp
	test	r12d, 0x80000
	je	.label_1169
	mov	edi, dword ptr [rbx + 4]
	lea	rsi, [rsi]
	mov	esi, 1
	xor	edx, edx
	xor	eax, eax
	call	rpl_fcntl
	mov	ecx, eax
	test	ecx, ecx
	mov	rsp, rsp
	js	.label_1168
	lea	rdi, [rdi]
	mov	edi, dword ptr [rbx + 4]
	or	ecx, 1
	mov	esi, 2
	xor	eax, eax
	mov	edx, ecx
	call	rpl_fcntl
	lea	rdi, [rdi]
	cmp	eax, -1
	je	.label_1168
	mov	edi, dword ptr [rbx]
	xor	ebp, ebp
	mov	esi, 1
	xor	edx, edx
	mov	rbp, rbp
	xor	eax, eax
	call	rpl_fcntl
	lea	rsi, [rsi]
	mov	ecx, eax
	lea	rdi, [rdi]
	test	ecx, ecx
	lea	rsi, [rsi]
	js	.label_1168
	mov	edi, dword ptr [rbx]
	mov	rbp, rbp
	or	ecx, 1
	mov	esi, 2
	mov	rsp, rsp
	xor	eax, eax
	mov	edx, ecx
	call	rpl_fcntl
	lea	rsi, [rsi]
	cmp	eax, -1
	nop	
	jne	.label_1169
.label_1168:
	call	__errno_location
	lea	rdi, [rdi]
	mov	rbp, rax
	mov	r12d, dword ptr [rbp]
	mov	edi, dword ptr [rbx]
	call	close
	mov	rsp, rsp
	mov	edi, dword ptr [rbx + 4]
	call	close
	mov	rbp, rbp
	mov	dword ptr [rbx], r14d
	lea	rsi, [rsi]
	mov	dword ptr [rbx + 4], r15d
	mov	dword ptr [rbp], r12d
.label_1173:
	lea	rsi, [rsi]
	mov	ebp, 0xffffffff
.label_1169:
	mov	eax, ebp
	lea	rsi, [rsi]
	pop	rbx
	pop	r12
	mov	rsp, rsp
	pop	r14
	lea	rsi, [rsi]
	pop	r15
	pop	rbp
	lea	rsi, [rsi]
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x412960

	.globl posix2_version
	.type posix2_version, @function
posix2_version:
	mov	rsp, rsp
	push	rax
	mov	edi, OFFSET FLAT:.str_7
	lea	rdi, [rdi]
	call	getenv
	mov	rcx, rax
	mov	rbp, rbp
	mov	eax, 0x31069
	mov	rsp, rsp
	test	rcx, rcx
	mov	rbp, rbp
	je	.label_1175
	mov	rbp, rbp
	mov	eax, 0x31069
	lea	rdi, [rdi]
	cmp	byte ptr [rcx], 0
	lea	rsi, [rsi]
	je	.label_1175
	mov	rsp, rsp
	lea	rsi, [rsp]
	mov	edx, 0xa
	mov	rdi, rcx
	lea	rdi, [rdi]
	call	strtol
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rsp]
	cmp	byte ptr [rcx], 0
	je	.label_1175
	nop	
	mov	eax, 0x31069
.label_1175:
	cmp	rax, 0x7fffffff
	mov	ecx, 0x7fffffff
	cmovl	ecx, eax
	nop	
	cmp	rax, -0x80000000
	mov	rbp, rbp
	mov	eax, 0x80000000
	nop	
	cmovge	eax, ecx
	pop	rcx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4129f0

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
	je	.label_1176
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
	jl	.label_1178
	lea	rdi, [r14 - 7]
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.1_5
	mov	edx, 7
	call	strncmp
	test	eax, eax
	jne	.label_1178
	mov	esi, OFFSET FLAT:.str.2_2
	lea	rdi, [rdi]
	mov	edx, 3
	mov	rbp, rbp
	mov	rdi, r14
	lea	rsi, [rsi]
	call	strncmp
	mov	rbp, rbp
	test	eax, eax
	lea	rdi, [rdi]
	jne	.label_1177
	nop	
	add	r14, 3
	mov	qword ptr [word ptr [rip + program_invocation_short_name]],  r14
.label_1177:
	lea	rsi, [rsi]
	mov	rbx, r14
.label_1178:
	mov	rsp, rsp
	mov	qword ptr [word ptr [rip + program_name]],  rbx
	mov	qword ptr [word ptr [rip + __progname_full]],  rbx
	add	rsp, 8
	lea	rsi, [rsi]
	pop	rbx
	lea	rdi, [rdi]
	pop	r14
	ret	
.label_1176:
	mov	rcx,  qword ptr [word ptr [rip + stderr]]
	mov	rbp, rbp
	mov	edi, OFFSET FLAT:.str_8
	mov	rbp, rbp
	mov	esi, 0x37
	lea	rsi, [rsi]
	mov	edx, 1
	call	fwrite
	lea	rsi, [rsi]
	call	abort
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x412ae0
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
	.align	16
	#Procedure 0x412b30
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
	.align	16
	#Procedure 0x412b50
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
	.align	16
	#Procedure 0x412b70
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
	.align	16
	#Procedure 0x412be0
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
	.align	16
	#Procedure 0x412c00
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
	je	.label_1179
	test	rdx, rdx
	nop	
	je	.label_1179
	lea	rsi, [rsi]
	mov	qword ptr [rax + 0x28], rsi
	mov	qword ptr [rax + 0x30], rdx
	lea	rdi, [rdi]
	ret	
.label_1179:
	push	rax
	nop	
	call	abort
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x412c40
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
	mov	r8, qword ptr [rbp]
	mov	rax, qword ptr [rbp + 0x28]
	mov	r9, r8
	shr	r9, 0x20
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp + 0x30]
	mov	rsp, rsp
	add	rbp, 8
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x10], rcx
	mov	qword ptr [rsp + 8], rax
	nop	
	mov	qword ptr [rsp], rbp
	mov	rdi, r13
	mov	rsi, r12
	mov	rdx, r15
	mov	rcx, qword ptr [rsp + 0x20]
	call	quotearg_buffer_restyled
	mov	dword ptr [rbx], r14d
	add	rsp, 0x28
	pop	rbx
	mov	rbp, rbp
	pop	r12
	nop	
	pop	r13
	lea	rdi, [rdi]
	pop	r14
	pop	r15
	pop	rbp
	mov	rbp, rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x412cf0

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
	sub	rsp, 0x118
	mov	ebx, r9d
	nop	
	mov	dword ptr [rsp + 0x38], ebx
	mov	r15d, r8d
	mov	r13, rcx
	mov	qword ptr [rsp + 0x88], rdx
	mov	rbp, rbp
	mov	rbp, rsi
	mov	qword ptr [rsp + 0xb0], rdi
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 0x160]
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x100], rax
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 0x158]
	mov	qword ptr [rsp + 0x78], rax
	call	__ctype_get_mb_cur_max
	mov	rsp, rsp
	mov	qword ptr [rsp + 0xb8], rax
	mov	r12b, bl
	mov	rbp, rbp
	shr	r12b, 1
	mov	rbp, rbp
	and	r12b, 1
	nop	
	mov	eax, ebx
	and	eax, 1
	mov	rbp, rbp
	mov	dword ptr [rsp + 0x3c], eax
	and	ebx, 4
	mov	dword ptr [rsp + 0x44], ebx
	mov	rsp, rsp
	mov	r8b, 1
	mov	eax, 0
	mov	qword ptr [rsp + 0xd8], rax
	lea	rsi, [rsi]
	mov	eax, 0
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x20], rax
	lea	rsi, [rsi]
	mov	eax, 0
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0xf0], rax
	mov	eax, 0
	mov	rbp, rbp
	mov	dword ptr [rsp + 0xe8], 0
	lea	rsi, [rsi]
	xor	ecx, ecx
	mov	qword ptr [rsp + 0x68], rcx
.label_1274:
	mov	r10, rbp
	xor	ecx, ecx
	mov	qword ptr [rsp + 0x58], rcx
	lea	rsi, [rsi]
	mov	ecx, r15d
	lea	rdi, [rdi]
	cmp	r15d, 0xa
	ja	.label_1295
	mov	r9d, 7
	mov	dil, 1
	xor	esi, esi
	mov	rsp, rsp
	mov	r11, qword ptr [rsp + 0x88]
	mov	rbp, r13
	jmp	qword ptr [word ptr [+ (rcx * 8) + label_1301]]
.label_1704:
	lea	rsi, [rsi]
	mov	edi, OFFSET FLAT:.str.11_0
	nop	
	mov	esi, r15d
	mov	r14, r10
	nop	
	mov	bl, r8b
	call	gettext_quote
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x78], rax
	mov	edi, OFFSET FLAT:.str.12_0
	mov	esi, r15d
	mov	rsp, rsp
	call	gettext_quote
	mov	r8b, bl
	mov	rsp, rsp
	mov	r10, r14
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x100], rax
.label_1705:
	mov	byte ptr [rsp + 0x43], r8b
	mov	r13, rbp
	nop	
	test	r12b, 1
	nop	
	mov	eax, 0
	mov	qword ptr [rsp + 0x58], rax
	mov	rdx, qword ptr [rsp + 0x78]
	jne	.label_1204
	mov	rbp, rbp
	mov	al, byte ptr [rdx]
	mov	rbp, rbp
	test	al, al
	mov	rsp, rsp
	mov	ecx, 0
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x58], rcx
	je	.label_1204
	xor	ecx, ecx
	mov	qword ptr [rsp + 0x58], rcx
	nop	dword ptr [rax]
.label_1226:
	cmp	qword ptr [rsp + 0x58], r10
	jae	.label_1221
	mov	rsp, rsp
	mov	rcx, qword ptr [rsp + 0xb0]
	mov	rsp, rsp
	mov	rsi, qword ptr [rsp + 0x58]
	mov	byte ptr [rcx + rsi], al
.label_1221:
	mov	rcx, qword ptr [rsp + 0x58]
	lea	rdi, [rdi]
	mov	al, byte ptr [rdx + rcx + 1]
	mov	rsp, rsp
	inc	rcx
	mov	qword ptr [rsp + 0x58], rcx
	mov	rbp, rbp
	test	al, al
	lea	rsi, [rsi]
	jne	.label_1226
.label_1204:
	nop	
	mov	rbp, qword ptr [rsp + 0x100]
	lea	rdi, [rdi]
	mov	rdi, rbp
	lea	rdi, [rdi]
	mov	rbx, r10
	mov	rbp, rbp
	call	strlen
	mov	r10, rbx
	mov	qword ptr [rsp + 0xf0], rax
	mov	rbp, rbp
	mov	r9d, r15d
	mov	qword ptr [rsp + 0x20], rbp
	nop	
	mov	dil, 1
	mov	sil, r12b
	mov	rbp, r13
	lea	rdi, [rdi]
	mov	r8b, byte ptr [rsp + 0x43]
	mov	r11, qword ptr [rsp + 0x88]
	jmp	.label_1190
.label_1697:
	mov	rbp, rbp
	xor	r9d, r9d
	xor	ecx, ecx
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x58], rcx
	lea	rsi, [rsi]
	mov	dil, al
	lea	rsi, [rsi]
	xor	esi, esi
	nop	
	jmp	.label_1190
.label_1700:
	lea	rsi, [rsi]
	mov	al, 1
.label_1698:
	mov	rbp, rbp
	mov	r12b, 1
.label_1701:
	mov	rbp, rbp
	test	r12b, 1
	mov	cl, 1
	nop	
	je	.label_1260
	lea	rsi, [rsi]
	mov	cl, al
.label_1260:
	mov	rsp, rsp
	mov	al, cl
.label_1699:
	mov	r9d, 2
	test	r12b, 1
	mov	rsp, rsp
	jne	.label_1267
	test	r10, r10
	je	.label_1273
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rsp + 0xb0]
	mov	byte ptr [rcx], 0x27
	mov	rsp, rsp
	mov	ecx, 1
	mov	rsp, rsp
	jmp	.label_1233
.label_1267:
	xor	ecx, ecx
	jmp	.label_1233
.label_1702:
	mov	rsp, rsp
	mov	r9d, 5
	test	r12b, 1
	jne	.label_1285
	lea	rdi, [rdi]
	test	r10, r10
	je	.label_1289
	mov	rax, qword ptr [rsp + 0xb0]
	mov	byte ptr [rax], 0x22
	mov	rsp, rsp
	mov	eax, 1
	jmp	.label_1200
.label_1703:
	mov	dil, 1
	mov	r9d, 5
	xor	eax, eax
	mov	qword ptr [rsp + 0x58], rax
	mov	eax, OFFSET FLAT:.str.10_0
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x20], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0xf0], rax
	mov	sil, 1
	jmp	.label_1190
.label_1273:
	mov	ecx, 1
	nop	word ptr cs:[rax + rax]
.label_1233:
	nop	
	mov	qword ptr [rsp + 0x58], rcx
	nop	
	mov	ecx, OFFSET FLAT:.str.12_0
	mov	qword ptr [rsp + 0x20], rcx
	mov	rbp, rbp
	mov	ecx, 1
	mov	qword ptr [rsp + 0xf0], rcx
	nop	
	mov	dil, al
	mov	sil, r12b
	jmp	.label_1190
.label_1285:
	mov	rbp, rbp
	xor	eax, eax
	lea	rdi, [rdi]
	jmp	.label_1200
.label_1289:
	lea	rdi, [rdi]
	mov	eax, 1
.label_1200:
	mov	qword ptr [rsp + 0x58], rax
	mov	eax, OFFSET FLAT:.str.10_0
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x20], rax
	mov	eax, 1
	mov	rbp, rbp
	mov	qword ptr [rsp + 0xf0], rax
	mov	rbp, rbp
	mov	dil, 1
	nop	
	mov	sil, r12b
	nop	dword ptr [rax + rax]
.label_1190:
	mov	qword ptr [rsp + 0x30], rsi
	mov	byte ptr [rsp + 0xa7], dil
	mov	rsp, rsp
	cmp	qword ptr [rsp + 0x150], 0
	setne	dl
	lea	rsi, [rsi]
	cmp	r9d, 2
	setne	r15b
	sete	al
	mov	cl, dil
	lea	rdi, [rdi]
	and	cl, 1
	lea	rsi, [rsi]
	mov	byte ptr [rsp + 0xc3], cl
	sete	byte ptr [rsp + 0x97]
	lea	rsi, [rsi]
	mov	bl, r15b
	mov	rsp, rsp
	and	bl, cl
	mov	rbp, rbp
	mov	byte ptr [rsp + 0x65], bl
	cmp	qword ptr [rsp + 0xf0], 0
	setne	r13b
	mov	r12b, r13b
	lea	rdi, [rdi]
	and	r12b, bl
	mov	byte ptr [rsp + 0x67], r12b
	mov	bl, sil
	and	bl, 1
	mov	rsp, rsp
	mov	byte ptr [rsp + 0xe7], bl
	sete	cl
	and	al, bl
	mov	rbp, rbp
	mov	byte ptr [rsp + 0x77], al
	and	dl, bl
	mov	rsp, rsp
	mov	byte ptr [rsp + 0xd7], dl
	mov	rsp, rsp
	or	cl, r15b
	mov	rsp, rsp
	mov	byte ptr [rsp + 0x66], cl
	lea	rdi, [rdi]
	and	dil, sil
	lea	rsi, [rsi]
	and	dil, r13b
	mov	byte ptr [rsp + 0x57], dil
	xor	edi, edi
	mov	r14d, dword ptr [rsp + 0xe8]
	jmp	.label_1217
	nop	word ptr cs:[rax + rax]
.label_1214:
	nop	
	inc	rdi
.label_1217:
	mov	rsp, rsp
	cmp	rbp, -1
	je	.label_1263
	nop	
	cmp	rdi, rbp
	mov	rsp, rsp
	jne	.label_1216
	jmp	.label_1269
	nop	dword ptr [rax + rax]
.label_1263:
	mov	r13, -1
	lea	rsi, [rsi]
	cmp	byte ptr [r11 + rdi], 0
	je	.label_1272
.label_1216:
	lea	rdi, [rdi]
	test	r12b, r12b
	nop	
	je	.label_1279
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rbx, [rdi + rax]
	cmp	rax, 2
	jb	.label_1282
	cmp	rbp, -1
	lea	rsi, [rsi]
	jne	.label_1282
	nop	
	mov	eax, r14d
	mov	rbp, rbp
	mov	r14, rdi
	mov	rdi, r11
	mov	rsp, rsp
	mov	rbp, r10
	mov	r15b, r8b
	mov	r13, r9
	mov	dword ptr [rsp + 0xe8], eax
	mov	rsp, rsp
	mov	r12, r11
	lea	rdi, [rdi]
	call	strlen
	mov	rdi, r14
	mov	rbp, rbp
	mov	r11, r12
	mov	rbp, rbp
	mov	r12b, byte ptr [rsp + 0x67]
	nop	
	mov	r14d, dword ptr [rsp + 0xe8]
	lea	rsi, [rsi]
	mov	r9, r13
	lea	rsi, [rsi]
	mov	r8b, r15b
	mov	r10, rbp
	lea	rdi, [rdi]
	mov	rbp, rax
.label_1282:
	mov	rsp, rsp
	cmp	rbx, rbp
	lea	rsi, [rsi]
	jbe	.label_1188
	mov	dword ptr [rsp + 0x10c], 0
	jmp	.label_1192
	nop	dword ptr [rax + rax]
.label_1279:
	nop	
	mov	dword ptr [rsp + 0x10c], 0
	lea	rdi, [rdi]
	jmp	.label_1192
	nop	word ptr cs:[rax + rax]
.label_1188:
	mov	rbp, rbp
	mov	dword ptr [rsp + 0xe8], r14d
	mov	r12, rbp
	lea	rsi, [rsi]
	mov	r13, r9
	mov	r15b, r8b
	mov	rbp, rbp
	mov	rbx, r10
	mov	rsp, rsp
	mov	r14, rdi
	mov	rsp, rsp
	lea	rdi, [r11 + r14]
	mov	rsp, rsp
	mov	rbp, r11
	nop	
	mov	rsi, qword ptr [rsp + 0x20]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rsp + 0xf0]
	nop	
	call	memcmp
	mov	rbp, rbp
	test	eax, eax
	sete	al
	nop	
	mov	dword ptr [rsp + 0x10c], eax
	jne	.label_1264
	cmp	byte ptr [rsp + 0xe7], 0
	mov	r10, rbx
	mov	r8b, r15b
	mov	r9, r13
	mov	r11, rbp
	lea	rsi, [rsi]
	mov	rbp, r12
	lea	rdi, [rdi]
	mov	r12b, byte ptr [rsp + 0x67]
	mov	rdi, r14
	mov	r14d, dword ptr [rsp + 0xe8]
	je	.label_1192
	jmp	.label_1195
.label_1264:
	mov	rsp, rsp
	mov	r10, rbx
	mov	rsp, rsp
	mov	r8b, r15b
	mov	rbp, rbp
	mov	r9, r13
	mov	rsp, rsp
	mov	r11, rbp
	mov	rbp, r12
	mov	r12b, byte ptr [rsp + 0x67]
	mov	rdi, r14
	mov	r14d, dword ptr [rsp + 0xe8]
	nop	dword ptr [rax + rax]
.label_1192:
	movzx	r15d, byte ptr [r11 + rdi]
	cmp	r15, 0x7e
	ja	.label_1247
	xor	edx, edx
	mov	r13b, 1
	mov	cl, 0x6e
	nop	
	mov	bl, 0x61
	xor	eax, eax
	jmp	qword ptr [word ptr [+ (r15 * 8) + label_1251]]
.label_1841:
	mov	rsp, rsp
	test	rdi, rdi
	mov	rbp, rbp
	jne	.label_1218
	mov	rbp, rbp
	jmp	.label_1257
.label_1845:
	mov	rbp, rbp
	xor	eax, eax
	nop	
	cmp	rbp, -1
	nop	
	je	.label_1259
	lea	rdi, [rdi]
	test	rdi, rdi
	nop	
	jne	.label_1265
	nop	
	cmp	rbp, 1
	je	.label_1257
	xor	r13d, r13d
	jmp	.label_1199
.label_1834:
	lea	rsi, [rsi]
	cmp	byte ptr [rsp + 0xc3], 0
	je	.label_1275
	nop	
	cmp	byte ptr [rsp + 0xe7], 0
	jne	.label_1195
	lea	rsi, [rsi]
	cmp	r9d, 2
	mov	rsp, rsp
	jne	.label_1286
	mov	al, r14b
	and	al, 1
	jne	.label_1288
	lea	rsi, [rsi]
	cmp	qword ptr [rsp + 0x58], r10
	nop	
	jae	.label_1222
	mov	rax, qword ptr [rsp + 0xb0]
	nop	
	mov	rcx, qword ptr [rsp + 0x58]
	lea	rdi, [rdi]
	mov	byte ptr [rax + rcx], 0x27
.label_1222:
	mov	rax, qword ptr [rsp + 0x58]
	nop	
	inc	rax
	mov	rsp, rsp
	cmp	rax, r10
	nop	
	jae	.label_1297
	mov	rsp, rsp
	mov	rcx, qword ptr [rsp + 0xb0]
	mov	byte ptr [rcx + rax], 0x24
.label_1297:
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 0x58]
	lea	rax, [rax + 2]
	cmp	rax, r10
	jae	.label_1183
	mov	rcx, qword ptr [rsp + 0xb0]
	mov	byte ptr [rcx + rax], 0x27
.label_1183:
	mov	rax, qword ptr [rsp + 0x58]
	nop	
	add	rax, 3
	mov	rsp, rsp
	mov	r14b, 1
	mov	rbp, rbp
	mov	rcx, rax
	jmp	.label_1182
.label_1835:
	mov	rbp, rbp
	mov	bl, 0x62
	mov	rsp, rsp
	jmp	.label_1198
.label_1836:
	lea	rsi, [rsi]
	mov	cl, 0x74
	jmp	.label_1202
.label_1837:
	mov	rsp, rsp
	mov	bl, 0x76
	nop	
	jmp	.label_1198
.label_1838:
	mov	bl, 0x66
	jmp	.label_1198
.label_1839:
	lea	rsi, [rsi]
	mov	cl, 0x72
	jmp	.label_1202
.label_1842:
	mov	al, 1
	mov	qword ptr [rsp + 0x68], rax
	lea	rdi, [rdi]
	cmp	r9d, 2
	jne	.label_1211
	cmp	byte ptr [rsp + 0xe7], 0
	nop	
	jne	.label_1213
	mov	rsp, rsp
	test	r10, r10
	lea	rsi, [rsi]
	sete	al
	mov	rcx, qword ptr [rsp + 0xd8]
	mov	rbp, rbp
	mov	rdx, rcx
	lea	rdi, [rdi]
	test	rdx, rdx
	setne	cl
	or	cl, al
	lea	rdi, [rdi]
	cmove	rdx, r10
	nop	
	mov	qword ptr [rsp + 0xd8], rdx
	mov	eax, 0
	cmove	r10, rax
	cmp	qword ptr [rsp + 0x58], r10
	lea	rdi, [rdi]
	jae	.label_1299
	nop	
	mov	rax, qword ptr [rsp + 0xb0]
	nop	
	mov	rcx, qword ptr [rsp + 0x58]
	mov	byte ptr [rax + rcx], 0x27
.label_1299:
	mov	rax, qword ptr [rsp + 0x58]
	inc	rax
	mov	rsp, rsp
	cmp	rax, r10
	jae	.label_1281
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rsp + 0xb0]
	mov	rbp, rbp
	mov	byte ptr [rcx + rax], 0x5c
.label_1281:
	mov	rax, qword ptr [rsp + 0x58]
	mov	rsp, rsp
	lea	rax, [rax + 2]
	cmp	rax, r10
	jae	.label_1244
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rsp + 0xb0]
	mov	rsp, rsp
	mov	byte ptr [rcx + rax], 0x27
.label_1244:
	add	qword ptr [rsp + 0x58], 3
	xor	r14d, r14d
.label_1211:
	lea	rdi, [rdi]
	xor	eax, eax
	mov	r13b, 1
	jmp	.label_1199
.label_1843:
	cmp	r9d, 5
	lea	rdi, [rdi]
	je	.label_1256
	cmp	r9d, 2
	lea	rdi, [rdi]
	jne	.label_1218
	nop	
	cmp	byte ptr [rsp + 0xe7], 0
	je	.label_1218
	mov	rbp, rbp
	jmp	.label_1268
.label_1844:
	lea	rdi, [rdi]
	cmp	r9d, 2
	lea	rdi, [rdi]
	jne	.label_1270
	mov	rsp, rsp
	cmp	byte ptr [rsp + 0xe7], 0
	je	.label_1276
	lea	rdi, [rdi]
	jmp	.label_1280
.label_1247:
	mov	qword ptr [rsp + 0x80], r9
	mov	rbp, rbp
	mov	byte ptr [rsp + 0x43], r8b
	mov	qword ptr [rsp + 0x110], r10
	cmp	qword ptr [rsp + 0xb8], 1
	jne	.label_1284
	nop	
	mov	r13d, r14d
	mov	rsp, rsp
	mov	r14, r11
	nop	
	mov	rbx, rdi
	call	__ctype_b_loc
	mov	rdi, rbx
	mov	r11, r14
	lea	rsi, [rsi]
	mov	r14d, r13d
	mov	rax, qword ptr [rax]
	movzx	r13d, word ptr [rax + r15*2]
	shr	r13d, 0xe
	and	r13b, 1
	lea	rsi, [rsi]
	mov	eax, 1
.label_1235:
	mov	rbp, rbp
	and	r13b, 1
	mov	cl, r13b
	mov	rsp, rsp
	or	cl, byte ptr [rsp + 0x97]
	cmp	rax, 1
	nop	
	mov	r10, qword ptr [rsp + 0x110]
	mov	r8b, byte ptr [rsp + 0x43]
	mov	r9, qword ptr [rsp + 0x80]
	mov	rsp, rsp
	ja	.label_1181
	lea	rdi, [rdi]
	test	cl, cl
	lea	rsi, [rsi]
	je	.label_1181
	lea	rdi, [rdi]
	xor	eax, eax
	jmp	.label_1199
.label_1259:
	test	rdi, rdi
	jne	.label_1191
	mov	cl, byte ptr [r11 + 1]
	test	cl, cl
	jne	.label_1191
.label_1257:
	mov	dl, 1
.label_1840:
	lea	rdi, [rdi]
	cmp	byte ptr [rsp + 0x66], 0
	lea	rsi, [rsi]
	je	.label_1209
	lea	rdi, [rdi]
	xor	eax, eax
	mov	r13b, dl
	mov	rsp, rsp
	jmp	.label_1199
.label_1275:
	cmp	dword ptr [rsp + 0x3c], 0
	jne	.label_1214
	jmp	.label_1218
.label_1270:
	cmp	byte ptr [rsp + 0x57], 0
	mov	cl, r15b
	je	.label_1202
.label_1276:
	xor	eax, eax
	xor	r13d, r13d
	mov	rbp, rbp
	jmp	.label_1197
.label_1202:
	cmp	byte ptr [rsp + 0x66], 0
	mov	bl, cl
	lea	rdi, [rdi]
	je	.label_1224
.label_1198:
	xor	eax, eax
	mov	rbp, rbp
	cmp	byte ptr [rsp + 0xc3], 0
	mov	r13d, 0
	mov	rbp, rbp
	je	.label_1199
	lea	rsi, [rsi]
	jmp	.label_1201
.label_1284:
	mov	qword ptr [rsp + 0x98], 0
	cmp	rbp, -1
	jne	.label_1236
	mov	rbp, rdi
	nop	
	mov	rdi, r11
	lea	rdi, [rdi]
	mov	rbx, r11
	call	strlen
	lea	rdi, [rdi]
	mov	rdi, rbp
	nop	
	mov	r11, rbx
	nop	
	mov	rbp, rax
.label_1236:
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0xc8], rbp
	lea	rax, [r11 + rdi]
	mov	qword ptr [rsp + 0x28], rax
	mov	rsp, rsp
	mov	r13b, 1
	lea	rsi, [rsi]
	xor	eax, eax
	nop	
	lea	rbx, [rsp + 0x98]
.label_1249:
	mov	rbp, rbp
	mov	qword ptr [rsp + 0xe8], rax
	mov	qword ptr [rsp + 0xa8], rdi
	lea	rax, [rax + rdi]
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x48], rax
	lea	rsi, [rsi]
	lea	rsi, [r11 + rax]
	mov	rdx, rbp
	sub	rdx, rax
	lea	rdi, [rsp + 0xc4]
	mov	rsp, rsp
	mov	rcx, rbx
	call	rpl_mbrtowc
	lea	rdi, [rdi]
	mov	rbp, rax
	mov	rsp, rsp
	test	rbp, rbp
	je	.label_1271
	cmp	rbp, -1
	mov	r10, qword ptr [rsp + 0x110]
	mov	rsp, rsp
	movabs	rsi, 0x20000002b
	je	.label_1278
	lea	rsi, [rsi]
	cmp	rbp, -2
	nop	
	mov	rdi, qword ptr [rsp + 0xa8]
	je	.label_1287
	lea	rsi, [rsi]
	cmp	rbp, 1
	seta	al
	lea	rdi, [rdi]
	and	al, byte ptr [rsp + 0x77]
	movzx	eax, al
	nop	
	cmp	eax, 1
	jne	.label_1292
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 0xe8]
	mov	rbp, rbp
	mov	rcx, qword ptr [rsp + 0x28]
	lea	rsi, [rsi]
	lea	rax, [rcx + rax]
	nop	
	mov	ecx, 1
	nop	
.label_1223:
	movsx	edx, byte ptr [rax + rcx]
	lea	rdi, [rdi]
	add	edx, -0x5b
	cmp	edx, 0x21
	ja	.label_1180
	lea	rdi, [rdi]
	bt	rsi, rdx
	jb	.label_1302
.label_1180:
	lea	rsi, [rsi]
	inc	rcx
	mov	rbp, rbp
	cmp	rcx, rbp
	jb	.label_1223
.label_1292:
	nop	
	mov	edi, dword ptr [rsp + 0xc4]
	lea	rdi, [rdi]
	call	iswprint
	test	eax, eax
	nop	
	jne	.label_1261
	xor	r13d, r13d
.label_1261:
	mov	rax, qword ptr [rsp + 0xe8]
	add	rax, rbp
	lea	rdi, [rdi]
	mov	rdi, rbx
	lea	rdi, [rdi]
	mov	rbp, rax
	mov	rbp, rbp
	call	mbsinit
	test	eax, eax
	mov	rax, rbp
	mov	r11, qword ptr [rsp + 0x88]
	lea	rsi, [rsi]
	mov	rbp, qword ptr [rsp + 0xc8]
	mov	rdi, qword ptr [rsp + 0xa8]
	lea	rdi, [rdi]
	je	.label_1249
	mov	rsp, rsp
	jmp	.label_1235
.label_1191:
	lea	rsi, [rsi]
	mov	rbp, -1
	mov	rbp, rbp
	xor	r13d, r13d
	jmp	.label_1199
.label_1256:
	cmp	dword ptr [rsp + 0x44], 0
	lea	rdi, [rdi]
	je	.label_1218
	lea	rcx, [rdi + 2]
	mov	rsp, rsp
	cmp	rcx, rbp
	jae	.label_1218
	mov	rbp, rbp
	movzx	eax, byte ptr [rdi + r11 + 1]
	mov	rsp, rsp
	cmp	eax, 0x3f
	jne	.label_1218
	lea	rsi, [rsi]
	movsx	edx, byte ptr [r11 + rcx]
	xor	eax, eax
	lea	rdi, [rdi]
	cmp	edx, 0x3e
	ja	.label_1234
	nop	
	movabs	rsi, 0x7000a38200000000
	mov	rsp, rsp
	bt	rsi, rdx
	mov	rsp, rsp
	jae	.label_1238
	lea	rsi, [rsi]
	cmp	byte ptr [rsp + 0xe7], 0
	jne	.label_1242
	lea	rdi, [rdi]
	cmp	qword ptr [rsp + 0x58], r10
	jae	.label_1246
	mov	rax, qword ptr [rsp + 0xb0]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rsp + 0x58]
	mov	byte ptr [rax + rsi], 0x3f
.label_1246:
	mov	rax, qword ptr [rsp + 0x58]
	lea	rsi, [rsi]
	inc	rax
	lea	rdi, [rdi]
	cmp	rax, r10
	jae	.label_1253
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rsp + 0xb0]
	mov	byte ptr [rsi + rax], 0x22
.label_1253:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0x58]
	lea	rax, [rax + 2]
	cmp	rax, r10
	jae	.label_1193
	mov	rsi, qword ptr [rsp + 0xb0]
	mov	rsp, rsp
	mov	byte ptr [rsi + rax], 0x22
.label_1193:
	mov	rax, qword ptr [rsp + 0x58]
	lea	rax, [rax + 3]
	cmp	rax, r10
	nop	
	jae	.label_1237
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rsp + 0xb0]
	mov	byte ptr [rsi + rax], 0x3f
.label_1237:
	mov	rbp, rbp
	add	qword ptr [rsp + 0x58], 4
	lea	rsi, [rsi]
	xor	eax, eax
	mov	rdi, rcx
	mov	r15b, dl
	lea	rdi, [rdi]
	xor	r13d, r13d
	jmp	.label_1199
.label_1218:
	xor	eax, eax
	xor	r13d, r13d
	nop	dword ptr [rax + rax]
.label_1199:
	mov	rsp, rsp
	cmp	byte ptr [rsp + 0x65], 0
	lea	rsi, [rsi]
	je	.label_1300
	cmp	qword ptr [rsp + 0x150], 0
	mov	rsp, rsp
	jne	.label_1294
	lea	rsi, [rsi]
	jmp	.label_1296
.label_1300:
	cmp	byte ptr [rsp + 0xd7], 0
	je	.label_1296
.label_1294:
	mov	cl, r15b
	shr	cl, 5
	lea	rdi, [rdi]
	movzx	edx, cl
	nop	
	mov	esi, 1
	mov	cl, r15b
	shl	esi, cl
	nop	
	mov	ecx, dword ptr [rsp + 0x10c]
	lea	rsi, [rsi]
	test	cl, cl
	jne	.label_1298
	mov	rcx, qword ptr [rsp + 0x150]
	nop	
	and	esi, dword ptr [rcx + rdx*4]
	mov	rsp, rsp
	jmp	.label_1184
	nop	word ptr cs:[rax + rax]
.label_1296:
	mov	rsp, rsp
	mov	ecx, dword ptr [rsp + 0x10c]
	lea	rdi, [rdi]
	test	cl, cl
.label_1184:
	mov	rbp, rbp
	mov	bl, r15b
	je	.label_1197
	mov	rsp, rsp
	jmp	.label_1201
.label_1298:
	mov	bl, r15b
.label_1201:
	cmp	byte ptr [rsp + 0xe7], 0
	jne	.label_1195
	nop	
	cmp	r9d, 2
	jne	.label_1207
	lea	rdi, [rdi]
	mov	al, r14b
	lea	rdi, [rdi]
	and	al, 1
	lea	rdi, [rdi]
	jne	.label_1207
	cmp	qword ptr [rsp + 0x58], r10
	jae	.label_1230
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp + 0xb0]
	mov	rcx, qword ptr [rsp + 0x58]
	mov	rsp, rsp
	mov	byte ptr [rax + rcx], 0x27
.label_1230:
	mov	rax, qword ptr [rsp + 0x58]
	inc	rax
	cmp	rax, r10
	jae	.label_1219
	mov	rbp, rbp
	mov	rcx, qword ptr [rsp + 0xb0]
	mov	byte ptr [rcx + rax], 0x24
.label_1219:
	mov	rax, qword ptr [rsp + 0x58]
	lea	rax, [rax + 2]
	cmp	rax, r10
	jae	.label_1194
	mov	rcx, qword ptr [rsp + 0xb0]
	mov	byte ptr [rcx + rax], 0x27
.label_1194:
	add	qword ptr [rsp + 0x58], 3
	mov	r14b, 1
.label_1207:
	cmp	qword ptr [rsp + 0x58], r10
	jae	.label_1231
	mov	rax, qword ptr [rsp + 0xb0]
	mov	rcx, qword ptr [rsp + 0x58]
	lea	rdi, [rdi]
	mov	byte ptr [rax + rcx], 0x5c
.label_1231:
	mov	rsp, rsp
	inc	qword ptr [rsp + 0x58]
	jmp	.label_1304
.label_1265:
	xor	r13d, r13d
	nop	
	jmp	.label_1199
.label_1181:
	mov	rsp, rsp
	add	rax, rdi
	mov	qword ptr [rsp + 0xe8], rax
	xor	eax, eax
	lea	rdi, [rdi]
	jmp	.label_1241
	nop	dword ptr [rax + rax]
.label_1220:
	inc	qword ptr [rsp + 0x58]
	mov	r15b, byte ptr [r11 + rdi + 1]
	mov	rdi, rdx
.label_1241:
	test	cl, cl
	je	.label_1250
	mov	rsp, rsp
	mov	edx, dword ptr [rsp + 0x10c]
	test	dl, 1
	mov	rbp, rbp
	je	.label_1205
	mov	rbp, rbp
	cmp	qword ptr [rsp + 0x58], r10
	jae	.label_1255
	mov	rdx, qword ptr [rsp + 0xb0]
	mov	rbp, rbp
	mov	rsi, qword ptr [rsp + 0x58]
	mov	byte ptr [rdx + rsi], 0x5c
.label_1255:
	lea	rsi, [rsi]
	inc	qword ptr [rsp + 0x58]
	mov	dword ptr [rsp + 0x10c], 0
	jmp	.label_1205
	nop	dword ptr [rax]
.label_1250:
	cmp	byte ptr [rsp + 0xe7], 0
	jne	.label_1195
	lea	rsi, [rsi]
	cmp	r9d, 2
	mov	rsp, rsp
	jne	.label_1277
	mov	al, r14b
	and	al, 1
	lea	rdi, [rdi]
	jne	.label_1277
	cmp	qword ptr [rsp + 0x58], r10
	jae	.label_1245
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0xb0]
	mov	rsp, rsp
	mov	rdx, qword ptr [rsp + 0x58]
	mov	byte ptr [rax + rdx], 0x27
.label_1245:
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0x58]
	mov	rbp, rbp
	inc	rax
	cmp	rax, r10
	jae	.label_1290
	mov	rdx, qword ptr [rsp + 0xb0]
	mov	rbp, rbp
	mov	byte ptr [rdx + rax], 0x24
.label_1290:
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 0x58]
	lea	rax, [rax + 2]
	cmp	rax, r10
	jae	.label_1258
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rsp + 0xb0]
	mov	rsp, rsp
	mov	byte ptr [rdx + rax], 0x27
.label_1258:
	mov	rsp, rsp
	add	qword ptr [rsp + 0x58], 3
	mov	r14b, 1
.label_1277:
	cmp	qword ptr [rsp + 0x58], r10
	lea	rsi, [rsi]
	jae	.label_1185
	mov	rax, qword ptr [rsp + 0xb0]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rsp + 0x58]
	nop	
	mov	byte ptr [rax + rdx], 0x5c
.label_1185:
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 0x58]
	mov	rsp, rsp
	inc	rax
	lea	rdi, [rdi]
	cmp	rax, r10
	lea	rdi, [rdi]
	jae	.label_1196
	mov	dl, r15b
	shr	dl, 6
	mov	rsp, rsp
	or	dl, 0x30
	mov	rsp, rsp
	mov	rsi, qword ptr [rsp + 0xb0]
	mov	byte ptr [rsi + rax], dl
.label_1196:
	mov	rax, qword ptr [rsp + 0x58]
	lea	rax, [rax + 2]
	cmp	rax, r10
	nop	
	jae	.label_1208
	lea	rsi, [rsi]
	mov	dl, r15b
	lea	rdi, [rdi]
	shr	dl, 3
	mov	rsp, rsp
	and	dl, 7
	mov	rsp, rsp
	or	dl, 0x30
	mov	rsi, qword ptr [rsp + 0xb0]
	mov	rbp, rbp
	mov	byte ptr [rsi + rax], dl
.label_1208:
	nop	
	add	qword ptr [rsp + 0x58], 3
	mov	rbp, rbp
	and	r15b, 7
	nop	
	or	r15b, 0x30
	mov	rsp, rsp
	mov	al, 1
.label_1205:
	lea	rdx, [rdi + 1]
	cmp	qword ptr [rsp + 0xe8], rdx
	jbe	.label_1197
	lea	rsi, [rsi]
	test	r14b, 1
	je	.label_1227
	mov	bl, al
	nop	
	and	bl, 1
	lea	rdi, [rdi]
	jne	.label_1227
	cmp	qword ptr [rsp + 0x58], r10
	jae	.label_1232
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rsp + 0xb0]
	lea	rdi, [rdi]
	mov	rbx, rdi
	mov	rbp, rbp
	mov	rdi, qword ptr [rsp + 0x58]
	mov	byte ptr [rsi + rdi], 0x27
	mov	rdi, rbx
.label_1232:
	mov	rsp, rsp
	mov	rsi, qword ptr [rsp + 0x58]
	inc	rsi
	mov	rsp, rsp
	cmp	rsi, r10
	lea	rsi, [rsi]
	jae	.label_1303
	mov	rbx, rdi
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rsp + 0xb0]
	mov	rbp, rbp
	mov	byte ptr [rdi + rsi], 0x27
	mov	rbp, rbp
	mov	rdi, rbx
.label_1303:
	add	qword ptr [rsp + 0x58], 2
	xor	r14d, r14d
.label_1227:
	nop	
	cmp	qword ptr [rsp + 0x58], r10
	jae	.label_1220
	mov	rsi, qword ptr [rsp + 0xb0]
	nop	
	mov	rbx, rdi
	mov	rdi, qword ptr [rsp + 0x58]
	nop	
	mov	byte ptr [rsi + rdi], r15b
	lea	rdi, [rdi]
	mov	rdi, rbx
	jmp	.label_1220
	nop	word ptr cs:[rax + rax]
.label_1197:
	test	r14b, 1
	lea	rsi, [rsi]
	je	.label_1266
	mov	rsp, rsp
	and	al, 1
	jne	.label_1266
	cmp	qword ptr [rsp + 0x58], r10
	mov	rsp, rsp
	jae	.label_1240
	mov	rax, qword ptr [rsp + 0xb0]
	mov	rcx, qword ptr [rsp + 0x58]
	mov	byte ptr [rax + rcx], 0x27
.label_1240:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0x58]
	inc	rax
	lea	rdi, [rdi]
	cmp	rax, r10
	jae	.label_1187
	mov	rcx, qword ptr [rsp + 0xb0]
	lea	rsi, [rsi]
	mov	byte ptr [rcx + rax], 0x27
.label_1187:
	add	qword ptr [rsp + 0x58], 2
	xor	r14d, r14d
.label_1266:
	mov	rsp, rsp
	mov	bl, r15b
.label_1304:
	cmp	qword ptr [rsp + 0x58], r10
	jae	.label_1229
	mov	rax, qword ptr [rsp + 0xb0]
	nop	
	mov	rcx, qword ptr [rsp + 0x58]
	mov	byte ptr [rax + rcx], bl
.label_1229:
	nop	
	inc	qword ptr [rsp + 0x58]
	nop	
	shl	r13b, 7
	mov	rsp, rsp
	sar	r13b, 7
	and	r13b, r8b
	mov	rbp, rbp
	mov	r8b, r13b
	jmp	.label_1214
.label_1286:
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rsp + 0x58]
	lea	rsi, [rsi]
	jmp	.label_1182
.label_1288:
	mov	rbp, rbp
	mov	rcx, qword ptr [rsp + 0x58]
.label_1182:
	lea	rsi, [rsi]
	cmp	rcx, r10
	lea	rsi, [rsi]
	jae	.label_1186
	mov	rax, qword ptr [rsp + 0xb0]
	mov	byte ptr [rax + rcx], 0x5c
.label_1186:
	nop	
	lea	rax, [rcx + 1]
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x58], rax
	mov	rbp, rbp
	mov	al, 1
	lea	rsi, [rsi]
	mov	r15b, 0x30
	cmp	r9d, 2
	lea	rsi, [rsi]
	je	.label_1248
	lea	rdx, [rdi + 1]
	cmp	rdx, rbp
	jae	.label_1203
	mov	dl, byte ptr [r11 + rdx]
	mov	rsp, rsp
	add	dl, 0xd0
	nop	
	movzx	edx, dl
	cmp	edx, 9
	lea	rsi, [rsi]
	ja	.label_1212
	lea	rdi, [rdi]
	cmp	qword ptr [rsp + 0x58], r10
	jae	.label_1210
	mov	rdx, qword ptr [rsp + 0xb0]
	mov	rsi, qword ptr [rsp + 0x58]
	mov	byte ptr [rdx + rsi], 0x30
.label_1210:
	lea	rsi, [rsi]
	lea	rdx, [rcx + 2]
	lea	rdi, [rdi]
	cmp	rdx, r10
	nop	
	jae	.label_1215
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rsp + 0xb0]
	lea	rsi, [rsi]
	mov	byte ptr [rsi + rdx], 0x30
.label_1215:
	add	rcx, 3
	xor	r13d, r13d
	mov	qword ptr [rsp + 0x58], rcx
	jmp	.label_1199
.label_1248:
	xor	r13d, r13d
	mov	rbp, rbp
	jmp	.label_1199
.label_1203:
	lea	rdi, [rdi]
	xor	r13d, r13d
	nop	
	jmp	.label_1199
.label_1212:
	lea	rsi, [rsi]
	xor	r13d, r13d
	jmp	.label_1199
.label_1278:
	xor	r13d, r13d
.label_1271:
	mov	r11, qword ptr [rsp + 0x88]
	mov	rsp, rsp
	mov	rbp, qword ptr [rsp + 0xc8]
	mov	rdi, qword ptr [rsp + 0xa8]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp + 0xe8]
	jmp	.label_1235
.label_1287:
	mov	rbp, qword ptr [rsp + 0xc8]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rsp + 0x48]
	cmp	rbp, rcx
	lea	rsi, [rsi]
	jbe	.label_1243
	mov	r11, qword ptr [rsp + 0x88]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp + 0xe8]
.label_1254:
	cmp	byte ptr [r11 + rcx], 0
	nop	
	je	.label_1252
	mov	rbp, rbp
	lea	rcx, [rax + rdi + 1]
	nop	
	inc	rax
	mov	rbp, rbp
	cmp	rcx, rbp
	mov	rsp, rsp
	jb	.label_1254
	xor	r13d, r13d
	lea	rsi, [rsi]
	jmp	.label_1235
.label_1243:
	mov	rsp, rsp
	xor	r13d, r13d
	mov	r11, qword ptr [rsp + 0x88]
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0xe8]
	jmp	.label_1235
.label_1252:
	nop	
	xor	r13d, r13d
	lea	rdi, [rdi]
	jmp	.label_1235
.label_1234:
	xor	r13d, r13d
	jmp	.label_1199
.label_1238:
	lea	rsi, [rsi]
	xor	r13d, r13d
	jmp	.label_1199
.label_1269:
	nop	
	mov	r13, rdi
.label_1272:
	mov	rsp, rsp
	cmp	r9d, 2
	mov	rsp, rsp
	setne	al
	cmp	qword ptr [rsp + 0x58], 0
	lea	rsi, [rsi]
	setne	dl
	lea	rdi, [rdi]
	cmp	byte ptr [rsp + 0xe7], 0
	je	.label_1283
	mov	rsp, rsp
	or	al, dl
	mov	rbp, rbp
	je	.label_1293
.label_1283:
	mov	rbp, rbp
	mov	dword ptr [rsp + 0xe8], r14d
	mov	qword ptr [rsp + 0x88], r11
	cmp	r9d, 2
	lea	rsi, [rsi]
	setne	al
	cmp	byte ptr [rsp + 0xe7], 0
	lea	rdi, [rdi]
	setne	dl
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rsp + 0x68]
	test	sil, 1
	mov	bl, byte ptr [rsp + 0xa7]
	nop	
	mov	rsi, qword ptr [rsp + 0x30]
	je	.label_1189
	mov	rsp, rsp
	or	al, dl
	lea	rsi, [rsi]
	jne	.label_1189
	test	r8b, 1
	mov	rbp, rbp
	jne	.label_1239
	cmp	qword ptr [rsp + 0xd8], 0
	je	.label_1189
	test	r10, r10
	mov	r15d, r9d
	mov	rbp, rbp
	mov	al, bl
	nop	
	mov	r12b, sil
	mov	rbp, qword ptr [rsp + 0xd8]
	lea	rsi, [rsi]
	je	.label_1274
.label_1189:
	mov	rdx, qword ptr [rsp + 0x20]
	test	rdx, rdx
	je	.label_1206
	nop	
	cmp	byte ptr [rsp + 0xe7], 0
	lea	rsi, [rsi]
	jne	.label_1206
	mov	al, byte ptr [rdx]
	lea	rdi, [rdi]
	test	al, al
	je	.label_1206
	inc	rdx
	nop	word ptr cs:[rax + rax]
.label_1225:
	lea	rdi, [rdi]
	cmp	qword ptr [rsp + 0x58], r10
	jae	.label_1262
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rsp + 0xb0]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rsp + 0x58]
	lea	rdi, [rdi]
	mov	byte ptr [rcx + rsi], al
.label_1262:
	mov	rsp, rsp
	inc	qword ptr [rsp + 0x58]
	nop	
	mov	al, byte ptr [rdx]
	inc	rdx
	test	al, al
	mov	rbp, rbp
	jne	.label_1225
.label_1206:
	cmp	qword ptr [rsp + 0x58], r10
	jae	.label_1228
	mov	rax, qword ptr [rsp + 0xb0]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rsp + 0x58]
	mov	byte ptr [rax + rcx], 0
	lea	rdi, [rdi]
	jmp	.label_1228
.label_1209:
	lea	rdi, [rdi]
	mov	r9d, 2
	nop	
	jmp	.label_1195
.label_1302:
	mov	rsp, rsp
	mov	r9d, 2
	nop	
	mov	r11, qword ptr [rsp + 0x88]
	mov	rbp, qword ptr [rsp + 0xc8]
	lea	rdi, [rdi]
	jmp	.label_1195
.label_1293:
	nop	
	mov	rbp, r13
	jmp	.label_1195
.label_1224:
	lea	rdi, [rdi]
	mov	r9d, 2
.label_1195:
	lea	rdi, [rdi]
	cmp	byte ptr [rsp + 0xc3], 0
	lea	rdi, [rdi]
	mov	r8d, 4
	cmove	r8d, r9d
	lea	rdi, [rdi]
	cmp	r9d, 2
	cmovne	r8d, r9d
	mov	r9d, dword ptr [rsp + 0x38]
	and	r9d, 0xfffffffd
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0x100]
	nop	
	mov	qword ptr [rsp + 0x10], rax
	mov	rax, qword ptr [rsp + 0x78]
	mov	rsp, rsp
	mov	qword ptr [rsp + 8], rax
	lea	rdi, [rdi]
	mov	qword ptr [rsp], 0
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rsp + 0xb0]
	mov	rsi, r10
	nop	
	mov	rdx, r11
	lea	rdi, [rdi]
	mov	rcx, rbp
.label_1291:
	call	quotearg_buffer_restyled
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x58], rax
.label_1228:
	mov	rax, qword ptr [rsp + 0x58]
	lea	rdi, [rdi]
	add	rsp, 0x118
	pop	rbx
	pop	r12
	pop	r13
	nop	
	pop	r14
	mov	rsp, rsp
	pop	r15
	pop	rbp
	mov	rbp, rbp
	ret	
.label_1239:
	mov	rax, qword ptr [rsp + 0x100]
	nop	
	mov	qword ptr [rsp + 0x10], rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp + 0x78]
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 8], rax
	mov	rax, qword ptr [rsp + 0x150]
	mov	qword ptr [rsp], rax
	nop	
	mov	r8d, 5
	mov	rdi, qword ptr [rsp + 0xb0]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rsp + 0xd8]
	mov	rdx, qword ptr [rsp + 0x88]
	mov	rcx, r13
	mov	r9d, dword ptr [rsp + 0x38]
	lea	rdi, [rdi]
	jmp	.label_1291
.label_1213:
	lea	rsi, [rsi]
	mov	r9d, 2
	jmp	.label_1195
.label_1280:
	mov	r9d, 2
	lea	rsi, [rsi]
	jmp	.label_1195
.label_1268:
	lea	rsi, [rsi]
	mov	r9d, 2
	jmp	.label_1195
.label_1242:
	lea	rsi, [rsi]
	mov	r9d, 5
	mov	rbp, rbp
	jmp	.label_1195
.label_1295:
	nop	
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x414270
	.globl quotearg_alloc
	.type quotearg_alloc, @function
quotearg_alloc:

	lea	rdi, [rdi]
	push	rbp
	lea	rsi, [rsi]
	push	r15
	push	r14
	mov	rbp, rbp
	push	r13
	lea	rdi, [rdi]
	push	r12
	nop	
	push	rbx
	mov	rbp, rbp
	sub	rsp, 0x38
	lea	rsi, [rsi]
	mov	r12, rsi
	mov	rbx, rdi
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x30], rbx
	mov	rbp, rbp
	test	rdx, rdx
	lea	rdi, [rdi]
	mov	r14d, OFFSET FLAT:default_quoting_options
	lea	rsi, [rsi]
	cmovne	r14, rdx
	lea	rsi, [rsi]
	call	__errno_location
	mov	qword ptr [rsp + 0x28], rax
	mov	ecx, dword ptr [rax]
	lea	rdi, [rdi]
	mov	dword ptr [rsp + 0x24], ecx
	mov	rsp, rsp
	mov	r8d, dword ptr [r14]
	mov	ebp, dword ptr [r14 + 4]
	mov	rbp, rbp
	or	ebp, 1
	mov	rbp, rbp
	lea	r15, [r14 + 8]
	mov	rax, qword ptr [r14 + 0x28]
	mov	rbp, rbp
	mov	rcx, qword ptr [r14 + 0x30]
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x10], rcx
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 8], rax
	mov	rbp, rbp
	mov	qword ptr [rsp], r15
	xor	edi, edi
	mov	rsp, rsp
	xor	esi, esi
	nop	
	mov	rdx, rbx
	lea	rsi, [rsi]
	mov	rcx, r12
	lea	rdi, [rdi]
	mov	r9d, ebp
	nop	
	call	quotearg_buffer_restyled
	mov	rsp, rsp
	mov	rbx, rax
	lea	rdi, [rdi]
	inc	rbx
	mov	rdi, rbx
	call	xmalloc
	lea	rsi, [rsi]
	mov	r13, rax
	nop	
	mov	r8d, dword ptr [r14]
	mov	rax, qword ptr [r14 + 0x28]
	nop	
	mov	rcx, qword ptr [r14 + 0x30]
	mov	qword ptr [rsp + 0x10], rcx
	mov	qword ptr [rsp + 8], rax
	mov	rsp, rsp
	mov	qword ptr [rsp], r15
	mov	rdi, r13
	mov	rsi, rbx
	mov	rdx, qword ptr [rsp + 0x30]
	mov	rbp, rbp
	mov	rcx, r12
	mov	r9d, ebp
	lea	rsi, [rsi]
	call	quotearg_buffer_restyled
	lea	rdi, [rdi]
	mov	eax, dword ptr [rsp + 0x24]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rsp + 0x28]
	mov	dword ptr [rcx], eax
	mov	rax, r13
	mov	rsp, rsp
	add	rsp, 0x38
	pop	rbx
	mov	rsp, rsp
	pop	r12
	mov	rbp, rbp
	pop	r13
	mov	rsp, rsp
	pop	r14
	lea	rdi, [rdi]
	pop	r15
	pop	rbp
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4143b0
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
	mov	qword ptr [rsp + 0x40], r14
	mov	r15, rdi
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x28], r15
	test	rcx, rcx
	mov	r12d, OFFSET FLAT:default_quoting_options
	lea	rsi, [rsi]
	cmovne	r12, rcx
	mov	rbp, rbp
	call	__errno_location
	mov	qword ptr [rsp + 0x20], rax
	mov	rsp, rsp
	mov	ecx, dword ptr [rax]
	mov	rbp, rbp
	mov	dword ptr [rsp + 0x3c], ecx
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
	call	xmalloc
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
	mov	rdx, qword ptr [rsp + 0x28]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rsp + 0x40]
	mov	r9d, ebp
	call	quotearg_buffer_restyled
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp + 0x30]
	lea	rdi, [rdi]
	test	rax, rax
	mov	ecx, dword ptr [rsp + 0x3c]
	mov	rdx, qword ptr [rsp + 0x20]
	mov	dword ptr [rdx], ecx
	je	.label_1305
	mov	qword ptr [rax], rbx
.label_1305:
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
	.align	16
	#Procedure 0x414500
	.globl quotearg_free
	.type quotearg_free, @function
quotearg_free:

	push	r15
	push	r14
	push	rbx
	nop	
	mov	r14,  qword ptr [word ptr [rip + slotvec]]
	cmp	dword ptr [dword ptr [rip + nslots]],  2
	jl	.label_1306
	lea	r15, [r14 + 0x18]
	mov	ebx, 1
	nop	
.label_1310:
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
	jl	.label_1310
.label_1306:
	nop	
	mov	rdi, qword ptr [r14 + 8]
	lea	rsi, [rsi]
	mov	eax, OFFSET FLAT:slot0
	mov	rsp, rsp
	cmp	rdi, rax
	lea	rdi, [rdi]
	je	.label_1309
	call	free
	lea	rdi, [rdi]
	mov	qword ptr [word ptr [rip + slotvec0]],  0x100
	mov	rsp, rsp
	mov	qword ptr [word ptr [rip + label_1307]], OFFSET FLAT:slot0
.label_1309:
	mov	eax, OFFSET FLAT:slotvec0
	cmp	r14, rax
	je	.label_1308
	mov	rdi, r14
	call	free
	mov	rbp, rbp
	mov	qword ptr [word ptr [rip + slotvec]], OFFSET FLAT:slotvec0
.label_1308:
	mov	dword ptr [dword ptr [rip + nslots]],  1
	pop	rbx
	pop	r14
	nop	
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4145c0
	.globl quotearg_n
	.type quotearg_n, @function
quotearg_n:

	mov	rdx, -1
	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	nop	
	.section	.text
	.align	16
	#Procedure 0x4145d0

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
	mov	qword ptr [rsp + 0x20], rsi
	mov	ebx, edi
	call	__errno_location
	test	ebx, ebx
	js	.label_1317
	mov	ecx, dword ptr [rax]
	mov	rbp, rbp
	mov	rbp,  qword ptr [word ptr [rip + slotvec]]
	cmp	dword ptr [dword ptr [rip + nslots]],  ebx
	jle	.label_1312
	lea	rdi, [rdi]
	mov	dword ptr [rsp + 0x1c], ecx
	mov	qword ptr [rsp + 0x28], rax
	lea	rdi, [rdi]
	jmp	.label_1314
.label_1312:
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x38], r14
	mov	rsp, rsp
	cmp	ebx, 0x7fffffff
	mov	rsp, rsp
	je	.label_1311
	mov	dword ptr [rsp + 0x1c], ecx
	mov	qword ptr [rsp + 0x28], rax
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
	jne	.label_1316
	movups	xmm0,  xmmword ptr [word ptr [rip + slotvec0]]
	movups	xmmword ptr [r14], xmm0
.label_1316:
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
.label_1314:
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
	mov	qword ptr [rsp + 0x30], rcx
	mov	r8d, dword ptr [rcx]
	mov	r12d, dword ptr [rcx + 4]
	or	r12d, 1
	mov	rsp, rsp
	lea	rdx, [rcx + 8]
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x40], rdx
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
	mov	rdx, qword ptr [rsp + 0x20]
	nop	
	mov	rcx, r14
	lea	rdi, [rdi]
	mov	r9d, r12d
	lea	rdi, [rdi]
	call	quotearg_buffer_restyled
	nop	
	mov	r14, rax
	cmp	r15, r14
	ja	.label_1315
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
	je	.label_1313
	mov	rdi, rbx
	lea	rsi, [rsi]
	call	free
.label_1313:
	mov	rbp, rbp
	mov	rdi, r14
	mov	rsp, rsp
	call	xmalloc
	mov	rbx, rax
	nop	
	mov	qword ptr [rbp], rbx
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rsp + 0x30]
	lea	rdi, [rdi]
	mov	r8d, dword ptr [rcx]
	nop	
	mov	rax, qword ptr [rcx + 0x28]
	mov	rcx, qword ptr [rcx + 0x30]
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x10], rcx
	mov	qword ptr [rsp + 8], rax
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0x40]
	mov	rbp, rbp
	mov	qword ptr [rsp], rax
	lea	rdi, [rdi]
	mov	rdi, rbx
	lea	rdi, [rdi]
	mov	rsi, r14
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rsp + 0x20]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rsp + 0x38]
	mov	r9d, r12d
	lea	rdi, [rdi]
	call	quotearg_buffer_restyled
.label_1315:
	mov	rax, qword ptr [rsp + 0x28]
	lea	rsi, [rsi]
	mov	ecx, dword ptr [rsp + 0x1c]
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
.label_1317:
	lea	rdi, [rdi]
	call	abort
.label_1311:
	lea	rdi, [rdi]
	call	xalloc_die
	nop	
	.section	.text
	.align	16
	#Procedure 0x414840
	.globl quotearg_n_mem
	.type quotearg_n_mem, @function
quotearg_n_mem:

	mov	rsp, rsp
	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x414850
	.globl quotearg
	.type quotearg, @function
quotearg:

	nop
	mov	rax, rdi
	lea	rsi, [rsi]
	xor	edi, edi
	lea	rsi, [rsi]
	mov	rdx, -1
	mov	ecx, OFFSET FLAT:default_quoting_options
	nop	
	mov	rsi, rax
	jmp	quotearg_n_options
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x414880
	.globl quotearg_mem
	.type quotearg_mem, @function
quotearg_mem:

	mov	rax, rsi
	lea	rdi, [rdi]
	mov	rdx, rdi
	lea	rdi, [rdi]
	xor	edi, edi
	mov	ecx, OFFSET FLAT:default_quoting_options
	lea	rsi, [rsi]
	mov	rsi, rdx
	mov	rdx, rax
	lea	rdi, [rdi]
	jmp	quotearg_n_options
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4148b0

	.globl quotearg_n_style
	.type quotearg_n_style, @function
quotearg_n_style:
	nop	
	sub	rsp, 0x78
	mov	rbp, rbp
	mov	rax, rdx
	lea	rdi, [rdi]
	xorps	xmm0, xmm0
	movaps	xmmword ptr [rsp + 0x20], xmm0
	mov	rsp, rsp
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movaps	xmmword ptr [rsp], xmm0
	nop	
	mov	dword ptr [rsp + 0x30], 0
	lea	rdi, [rdi]
	cmp	esi, 0xa
	je	.label_1318
	mov	dword ptr [rsp + 0x40], esi
	mov	ecx, dword ptr [rsp + 0x30]
	mov	dword ptr [rsp + 0x74], ecx
	movaps	xmm0, xmmword ptr [rsp]
	movaps	xmm1, xmmword ptr [rsp + 0x10]
	movaps	xmm2, xmmword ptr [rsp + 0x20]
	lea	rdi, [rdi]
	movups	xmmword ptr [rsp + 0x64], xmm2
	lea	rdi, [rdi]
	movups	xmmword ptr [rsp + 0x54], xmm1
	lea	rsi, [rsi]
	movups	xmmword ptr [rsp + 0x44], xmm0
	mov	rbp, rbp
	lea	rcx, [rsp + 0x40]
	mov	rdx, -1
	mov	rsp, rsp
	mov	rsi, rax
	call	quotearg_n_options
	add	rsp, 0x78
	ret	
.label_1318:
	lea	rdi, [rdi]
	call	abort
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x414940

	.globl quotearg_n_style_mem
	.type quotearg_n_style_mem, @function
quotearg_n_style_mem:
	mov	rbp, rbp
	sub	rsp, 0x78
	lea	rsi, [rsi]
	xorps	xmm0, xmm0
	movaps	xmmword ptr [rsp + 0x20], xmm0
	mov	rsp, rsp
	movaps	xmmword ptr [rsp + 0x10], xmm0
	lea	rdi, [rdi]
	movaps	xmmword ptr [rsp], xmm0
	nop	
	mov	dword ptr [rsp + 0x30], 0
	lea	rdi, [rdi]
	cmp	esi, 0xa
	lea	rsi, [rsi]
	je	.label_1319
	lea	rsi, [rsi]
	mov	dword ptr [rsp + 0x40], esi
	nop	
	mov	eax, dword ptr [rsp + 0x30]
	mov	dword ptr [rsp + 0x74], eax
	movaps	xmm0, xmmword ptr [rsp]
	nop	
	movaps	xmm1, xmmword ptr [rsp + 0x10]
	nop	
	movaps	xmm2, xmmword ptr [rsp + 0x20]
	movups	xmmword ptr [rsp + 0x64], xmm2
	movups	xmmword ptr [rsp + 0x54], xmm1
	mov	rsp, rsp
	movups	xmmword ptr [rsp + 0x44], xmm0
	mov	rsp, rsp
	lea	rax, [rsp + 0x40]
	mov	rbp, rbp
	mov	rsi, rdx
	nop	
	mov	rdx, rcx
	mov	rbp, rbp
	mov	rcx, rax
	call	quotearg_n_options
	add	rsp, 0x78
	ret	
.label_1319:
	mov	rsp, rsp
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4149e0

	.globl quotearg_style
	.type quotearg_style, @function
quotearg_style:
	sub	rsp, 0x78
	mov	rbp, rbp
	xorps	xmm0, xmm0
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movaps	xmmword ptr [rsp + 0x10], xmm0
	mov	rbp, rbp
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp + 0x30], 0
	cmp	edi, 0xa
	mov	rsp, rsp
	je	.label_1320
	mov	dword ptr [rsp + 0x40], edi
	mov	rbp, rbp
	mov	eax, dword ptr [rsp + 0x30]
	nop	
	mov	dword ptr [rsp + 0x74], eax
	movaps	xmm0, xmmword ptr [rsp]
	movaps	xmm1, xmmword ptr [rsp + 0x10]
	mov	rsp, rsp
	movaps	xmm2, xmmword ptr [rsp + 0x20]
	movups	xmmword ptr [rsp + 0x64], xmm2
	movups	xmmword ptr [rsp + 0x54], xmm1
	movups	xmmword ptr [rsp + 0x44], xmm0
	lea	rcx, [rsp + 0x40]
	nop	
	xor	edi, edi
	mov	rdx, -1
	call	quotearg_n_options
	mov	rsp, rsp
	add	rsp, 0x78
	lea	rsi, [rsi]
	ret	
.label_1320:
	mov	rbp, rbp
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x414a70
	.globl quotearg_style_mem
	.type quotearg_style_mem, @function
quotearg_style_mem:

	sub	rsp, 0x78
	xorps	xmm0, xmm0
	lea	rsi, [rsi]
	movaps	xmmword ptr [rsp + 0x60], xmm0
	movaps	xmmword ptr [rsp + 0x50], xmm0
	movaps	xmmword ptr [rsp + 0x40], xmm0
	mov	dword ptr [rsp + 0x70], 0
	cmp	edi, 0xa
	je	.label_1321
	mov	dword ptr [rsp + 8], edi
	mov	eax, dword ptr [rsp + 0x70]
	mov	dword ptr [rsp + 0x3c], eax
	movaps	xmm0, xmmword ptr [rsp + 0x40]
	movaps	xmm1, xmmword ptr [rsp + 0x50]
	mov	rsp, rsp
	movaps	xmm2, xmmword ptr [rsp + 0x60]
	movups	xmmword ptr [rsp + 0x2c], xmm2
	mov	rsp, rsp
	movups	xmmword ptr [rsp + 0x1c], xmm1
	movups	xmmword ptr [rsp + 0xc], xmm0
	nop	
	lea	rcx, [rsp + 8]
	xor	edi, edi
	call	quotearg_n_options
	lea	rsi, [rsi]
	add	rsp, 0x78
	ret	
.label_1321:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x414ae0
	.globl quotearg_char_mem
	.type quotearg_char_mem, @function
quotearg_char_mem:

	sub	rsp, 0x38
	mov	ecx, edx
	mov	rbp, rbp
	mov	r8, rsi
	mov	rbp, rbp
	mov	rdx, rdi
	mov	rsi,  qword ptr [word ptr [rip + label_1322]]
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x30], rsi
	movups	xmm0,  xmmword ptr [word ptr [rip + label_1323]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_1324]]
	nop	
	movaps	xmmword ptr [rsp + 0x10], xmm0
	lea	rdi, [rdi]
	movups	xmm0,  xmmword ptr [word ptr [rip + default_quoting_options]]
	lea	rdi, [rdi]
	movaps	xmmword ptr [rsp], xmm0
	lea	rsi, [rsi]
	mov	al, cl
	nop	
	shr	al, 5
	movzx	eax, al
	mov	rbp, rbp
	mov	esi, dword ptr [rsp + rax*4 + 8]
	lea	rsi, [rsi]
	mov	edi, esi
	mov	rsp, rsp
	shr	edi, cl
	not	edi
	mov	rbp, rbp
	and	edi, 1
	lea	rsi, [rsi]
	shl	edi, cl
	xor	edi, esi
	nop	
	mov	dword ptr [rsp + rax*4 + 8], edi
	mov	rsp, rsp
	lea	rcx, [rsp]
	xor	edi, edi
	nop	
	mov	rsi, rdx
	lea	rsi, [rsi]
	mov	rdx, r8
	nop	
	call	quotearg_n_options
	nop	
	add	rsp, 0x38
	lea	rsi, [rsi]
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x414b80
	.globl quotearg_char
	.type quotearg_char, @function
quotearg_char:

	sub	rsp, 0x38
	lea	rdi, [rdi]
	mov	ecx, esi
	lea	rdi, [rdi]
	mov	rax, rdi
	mov	rbp, rbp
	mov	rdx,  qword ptr [word ptr [rip + label_1322]]
	mov	qword ptr [rsp + 0x30], rdx
	movups	xmm0,  xmmword ptr [word ptr [rip + label_1323]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	nop	
	movups	xmm0,  xmmword ptr [word ptr [rip + label_1324]]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + default_quoting_options]]
	movaps	xmmword ptr [rsp], xmm0
	mov	dl, cl
	mov	rbp, rbp
	shr	dl, 5
	lea	rsi, [rsi]
	movzx	edx, dl
	lea	rsi, [rsi]
	mov	esi, dword ptr [rsp + rdx*4 + 8]
	lea	rdi, [rdi]
	mov	edi, esi
	shr	edi, cl
	nop	
	not	edi
	mov	rsp, rsp
	and	edi, 1
	shl	edi, cl
	xor	edi, esi
	mov	dword ptr [rsp + rdx*4 + 8], edi
	mov	rsp, rsp
	lea	rcx, [rsp]
	lea	rsi, [rsi]
	xor	edi, edi
	mov	rsp, rsp
	mov	rdx, -1
	mov	rbp, rbp
	mov	rsi, rax
	call	quotearg_n_options
	add	rsp, 0x38
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x414c20

	.globl quotearg_colon
	.type quotearg_colon, @function
quotearg_colon:
	nop	
	sub	rsp, 0x38
	mov	rbp, rbp
	mov	rax, rdi
	lea	rdi, [rdi]
	mov	rcx,  qword ptr [word ptr [rip + label_1322]]
	nop	
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0,  xmmword ptr [word ptr [rip + label_1323]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_1324]]
	lea	rsi, [rsi]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	lea	rsi, [rsi]
	movups	xmm0,  xmmword ptr [word ptr [rip + default_quoting_options]]
	movaps	xmmword ptr [rsp], xmm0
	or	byte ptr [rsp + 0xf], 4
	mov	rsp, rsp
	lea	rcx, [rsp]
	lea	rsi, [rsi]
	xor	edi, edi
	mov	rdx, -1
	nop	
	mov	rsi, rax
	mov	rsp, rsp
	call	quotearg_n_options
	add	rsp, 0x38
	mov	rbp, rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x414c90
	.globl quotearg_colon_mem
	.type quotearg_colon_mem, @function
quotearg_colon_mem:

	sub	rsp, 0x38
	mov	rax, rsi
	lea	rdi, [rdi]
	mov	rdx, rdi
	lea	rsi, [rsi]
	mov	rcx,  qword ptr [word ptr [rip + label_1322]]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0,  xmmword ptr [word ptr [rip + label_1323]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_1324]]
	lea	rdi, [rdi]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	mov	rsp, rsp
	movups	xmm0,  xmmword ptr [word ptr [rip + default_quoting_options]]
	lea	rsi, [rsi]
	movaps	xmmword ptr [rsp], xmm0
	or	byte ptr [rsp + 0xf], 4
	lea	rsi, [rsi]
	lea	rcx, [rsp]
	xor	edi, edi
	nop	
	mov	rsi, rdx
	lea	rsi, [rsi]
	mov	rdx, rax
	lea	rdi, [rdi]
	call	quotearg_n_options
	add	rsp, 0x38
	mov	rbp, rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x414d00

	.globl quotearg_n_style_colon
	.type quotearg_n_style_colon, @function
quotearg_n_style_colon:
	sub	rsp, 0xb8
	mov	rax, rdx
	xorps	xmm0, xmm0
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movaps	xmmword ptr [rsp], xmm0
	lea	rsi, [rsi]
	mov	dword ptr [rsp + 0x30], 0
	cmp	esi, 0xa
	mov	rbp, rbp
	je	.label_1325
	nop	
	mov	ecx, dword ptr [rsp + 0x30]
	lea	rdi, [rdi]
	mov	dword ptr [rsp + 0x70], ecx
	mov	rsp, rsp
	movaps	xmm0, xmmword ptr [rsp]
	mov	rbp, rbp
	movaps	xmm1, xmmword ptr [rsp + 0x10]
	movaps	xmm2, xmmword ptr [rsp + 0x20]
	movaps	xmmword ptr [rsp + 0x60], xmm2
	lea	rsi, [rsi]
	movaps	xmmword ptr [rsp + 0x50], xmm1
	movaps	xmmword ptr [rsp + 0x40], xmm0
	mov	rsp, rsp
	mov	dword ptr [rsp + 0x80], esi
	mov	rsp, rsp
	mov	ecx, dword ptr [rsp + 0x70]
	nop	
	mov	dword ptr [rsp + 0xb4], ecx
	movaps	xmm0, xmmword ptr [rsp + 0x40]
	movaps	xmm1, xmmword ptr [rsp + 0x50]
	movaps	xmm2, xmmword ptr [rsp + 0x60]
	nop	
	movups	xmmword ptr [rsp + 0xa4], xmm2
	lea	rsi, [rsi]
	movups	xmmword ptr [rsp + 0x94], xmm1
	movups	xmmword ptr [rsp + 0x84], xmm0
	or	byte ptr [rsp + 0x8f], 4
	lea	rcx, [rsp + 0x80]
	mov	rdx, -1
	lea	rsi, [rsi]
	mov	rsi, rax
	call	quotearg_n_options
	mov	rsp, rsp
	add	rsp, 0xb8
	mov	rsp, rsp
	ret	
.label_1325:
	lea	rsi, [rsi]
	call	abort
	.section	.text
	.align	16
	#Procedure 0x414de0
	.globl quotearg_n_custom
	.type quotearg_n_custom, @function
quotearg_n_custom:

	lea	rsi, [rsi]
	sub	rsp, 0x38
	nop	
	mov	rax,  qword ptr [word ptr [rip + label_1322]]
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x30], rax
	mov	rbp, rbp
	movups	xmm0,  xmmword ptr [word ptr [rip + label_1323]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	mov	rsp, rsp
	movups	xmm0,  xmmword ptr [word ptr [rip + label_1324]]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	lea	rdi, [rdi]
	movups	xmm0,  xmmword ptr [word ptr [rip + default_quoting_options]]
	movaps	xmmword ptr [rsp], xmm0
	nop	
	mov	dword ptr [rsp], 0xa
	test	rsi, rsi
	mov	rsp, rsp
	je	.label_1326
	mov	rbp, rbp
	test	rdx, rdx
	je	.label_1326
	mov	qword ptr [rsp + 0x28], rsi
	mov	qword ptr [rsp + 0x30], rdx
	lea	rax, [rsp]
	lea	rsi, [rsi]
	mov	rdx, -1
	lea	rsi, [rsi]
	mov	rsi, rcx
	mov	rcx, rax
	mov	rbp, rbp
	call	quotearg_n_options
	nop	
	add	rsp, 0x38
	ret	
.label_1326:
	nop	
	call	abort
	.section	.text
	.align	16
	#Procedure 0x414e70
	.globl quotearg_n_custom_mem
	.type quotearg_n_custom_mem, @function
quotearg_n_custom_mem:

	mov	rsp, rsp
	sub	rsp, 0x38
	lea	rdi, [rdi]
	mov	rax,  qword ptr [word ptr [rip + label_1322]]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0,  xmmword ptr [word ptr [rip + label_1323]]
	lea	rsi, [rsi]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	nop	
	movups	xmm0,  xmmword ptr [word ptr [rip + label_1324]]
	mov	rbp, rbp
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + default_quoting_options]]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rsi, rsi
	je	.label_1327
	test	rdx, rdx
	je	.label_1327
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x28], rsi
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x30], rdx
	lea	rax, [rsp]
	mov	rsi, rcx
	mov	rdx, r8
	mov	rcx, rax
	nop	
	call	quotearg_n_options
	mov	rbp, rbp
	add	rsp, 0x38
	ret	
.label_1327:
	mov	rsp, rsp
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x414f00
	.globl quotearg_custom
	.type quotearg_custom, @function
quotearg_custom:

	mov	rsp, rsp
	sub	rsp, 0x38
	mov	rsp, rsp
	mov	rax, rdx
	mov	rcx,  qword ptr [word ptr [rip + label_1322]]
	nop	
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0,  xmmword ptr [word ptr [rip + label_1323]]
	lea	rdi, [rdi]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	mov	rbp, rbp
	movups	xmm0,  xmmword ptr [word ptr [rip + label_1324]]
	lea	rsi, [rsi]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + default_quoting_options]]
	movaps	xmmword ptr [rsp], xmm0
	lea	rdi, [rdi]
	mov	dword ptr [rsp], 0xa
	lea	rdi, [rdi]
	test	rdi, rdi
	je	.label_1328
	mov	rbp, rbp
	test	rsi, rsi
	je	.label_1328
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x28], rdi
	mov	qword ptr [rsp + 0x30], rsi
	lea	rdi, [rdi]
	lea	rcx, [rsp]
	xor	edi, edi
	mov	rbp, rbp
	mov	rdx, -1
	mov	rsi, rax
	call	quotearg_n_options
	mov	rsp, rsp
	add	rsp, 0x38
	lea	rsi, [rsi]
	ret	
.label_1328:
	call	abort
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x414fa0
	.globl quotearg_custom_mem
	.type quotearg_custom_mem, @function
quotearg_custom_mem:

	lea	rdi, [rdi]
	sub	rsp, 0x38
	mov	rax,  qword ptr [word ptr [rip + label_1322]]
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x30], rax
	mov	rsp, rsp
	movups	xmm0,  xmmword ptr [word ptr [rip + label_1323]]
	mov	rbp, rbp
	movaps	xmmword ptr [rsp + 0x20], xmm0
	nop	
	movups	xmm0,  xmmword ptr [word ptr [rip + label_1324]]
	mov	rsp, rsp
	movaps	xmmword ptr [rsp + 0x10], xmm0
	lea	rsi, [rsi]
	movups	xmm0,  xmmword ptr [word ptr [rip + default_quoting_options]]
	movaps	xmmword ptr [rsp], xmm0
	mov	rbp, rbp
	mov	dword ptr [rsp], 0xa
	test	rdi, rdi
	lea	rdi, [rdi]
	je	.label_1329
	test	rsi, rsi
	je	.label_1329
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x28], rdi
	mov	qword ptr [rsp + 0x30], rsi
	lea	rsi, [rsi]
	lea	rax, [rsp]
	xor	edi, edi
	mov	rsi, rdx
	lea	rdi, [rdi]
	mov	rdx, rcx
	lea	rdi, [rdi]
	mov	rcx, rax
	call	quotearg_n_options
	lea	rsi, [rsi]
	add	rsp, 0x38
	mov	rsp, rsp
	ret	
.label_1329:
	call	abort
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x415040
	.globl quote_n_mem
	.type quote_n_mem, @function
quote_n_mem:

	mov	ecx, OFFSET FLAT:quote_quoting_options
	jmp	quotearg_n_options
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x415050
	.globl quote_mem
	.type quote_mem, @function
quote_mem:

	mov	rax, rsi
	nop	
	mov	rdx, rdi
	xor	edi, edi
	lea	rdi, [rdi]
	mov	ecx, OFFSET FLAT:quote_quoting_options
	mov	rsi, rdx
	lea	rsi, [rsi]
	mov	rdx, rax
	jmp	quotearg_n_options
	nop	
	.section	.text
	.align	16
	#Procedure 0x415070

	.globl quote_n
	.type quote_n, @function
quote_n:
	mov	rdx, -1
	mov	ecx, OFFSET FLAT:quote_quoting_options
	mov	rsp, rsp
	jmp	quotearg_n_options
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x415090

	.globl quote
	.type quote, @function
quote:
	mov	rax, rdi
	lea	rsi, [rsi]
	xor	edi, edi
	mov	rdx, -1
	lea	rdi, [rdi]
	mov	ecx, OFFSET FLAT:quote_quoting_options
	lea	rdi, [rdi]
	mov	rsi, rax
	jmp	quotearg_n_options
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4150c0

	.globl gettext_quote
	.type gettext_quote, @function
gettext_quote:
	push	rbp
	push	rbx
	push	rax
	nop	
	mov	ebp, esi
	mov	rbx, rdi
	lea	rsi, [rsi]
	xor	edi, edi
	lea	rsi, [rsi]
	mov	edx, 5
	mov	rsi, rbx
	call	dcgettext
	mov	rbp, rbp
	cmp	rax, rbx
	jne	.label_1331
	mov	rsp, rsp
	call	locale_charset
	mov	rsp, rsp
	movsx	ecx, byte ptr [rax]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x47
	mov	rsp, rsp
	je	.label_1333
	nop	
	cmp	ecx, 0x55
	mov	rbp, rbp
	jne	.label_1330
	mov	rsp, rsp
	movsx	ecx, byte ptr [rax + 1]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x54
	jne	.label_1330
	movsx	ecx, byte ptr [rax + 2]
	mov	rbp, rbp
	and	ecx, 0xffffffdf
	lea	rdi, [rdi]
	cmp	ecx, 0x46
	jne	.label_1330
	movzx	ecx, byte ptr [rax + 3]
	lea	rdi, [rdi]
	cmp	ecx, 0x2d
	jne	.label_1330
	nop	
	movzx	ecx, byte ptr [rax + 4]
	cmp	ecx, 0x38
	lea	rdi, [rdi]
	jne	.label_1330
	cmp	byte ptr [rax + 5], 0
	lea	rdi, [rdi]
	jne	.label_1330
	nop	
	mov	eax, OFFSET FLAT:.str.14_0
	movzx	ecx, byte ptr [rbx]
	mov	rbp, rbp
	cmp	ecx, 0x60
	mov	rsp, rsp
	je	.label_1331
	mov	eax, OFFSET FLAT:.str.15_0
	jmp	.label_1331
.label_1333:
	movsx	ecx, byte ptr [rax + 1]
	mov	rbp, rbp
	and	ecx, 0xffffffdf
	nop	
	cmp	ecx, 0x42
	jne	.label_1330
	lea	rsi, [rsi]
	movzx	ecx, byte ptr [rax + 2]
	lea	rdi, [rdi]
	cmp	ecx, 0x31
	jne	.label_1330
	movzx	ecx, byte ptr [rax + 3]
	cmp	ecx, 0x38
	mov	rsp, rsp
	jne	.label_1330
	movzx	ecx, byte ptr [rax + 4]
	lea	rsi, [rsi]
	cmp	ecx, 0x30
	jne	.label_1330
	movzx	ecx, byte ptr [rax + 5]
	lea	rsi, [rsi]
	cmp	ecx, 0x33
	lea	rsi, [rsi]
	jne	.label_1330
	lea	rsi, [rsi]
	movzx	ecx, byte ptr [rax + 6]
	mov	rbp, rbp
	cmp	ecx, 0x30
	nop	
	jne	.label_1330
	lea	rsi, [rsi]
	cmp	byte ptr [rax + 7], 0
	lea	rsi, [rsi]
	je	.label_1332
.label_1330:
	lea	rsi, [rsi]
	cmp	ebp, 9
	mov	rbp, rbp
	mov	ecx, OFFSET FLAT:.str.10_0
	mov	eax, OFFSET FLAT:.str.12_0
	cmove	rax, rcx
.label_1331:
	lea	rsi, [rsi]
	add	rsp, 8
	lea	rsi, [rsi]
	pop	rbx
	lea	rsi, [rsi]
	pop	rbp
	mov	rbp, rbp
	ret	
.label_1332:
	mov	eax, OFFSET FLAT:.str.17_1
	movzx	ecx, byte ptr [rbx]
	cmp	ecx, 0x60
	mov	rbp, rbp
	je	.label_1331
	mov	eax, OFFSET FLAT:.str.18_1
	jmp	.label_1331
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x415230

	.globl randread_new
	.type randread_new, @function
randread_new:
	mov	rbp, rbp
	push	r15
	nop	
	push	r14
	lea	rsi, [rsi]
	push	r13
	push	r12
	lea	rsi, [rsi]
	push	rbx
	mov	rbp, rbp
	sub	rsp, 0x10
	mov	rbp, rbp
	mov	r12, rsi
	mov	r14, rdi
	lea	rsi, [rsi]
	test	r12, r12
	mov	rsp, rsp
	je	.label_1337
	nop	
	xor	ebx, ebx
	test	r14, r14
	je	.label_1338
	mov	esi, OFFSET FLAT:.str_9
	nop	
	mov	rdi, r14
	mov	rsp, rsp
	call	fopen_safer
	lea	rdi, [rdi]
	mov	rbx, rax
	nop	
	xor	r15d, r15d
	lea	rsi, [rsi]
	test	rbx, rbx
	lea	rsi, [rsi]
	je	.label_1339
.label_1338:
	nop	
	mov	edi, 0x1038
	call	xmalloc
	mov	r15, rax
	lea	rdi, [rdi]
	mov	qword ptr [r15], rbx
	lea	rdi, [rdi]
	mov	qword ptr [word ptr [r15 + 8]], OFFSET FLAT:randread_error
	mov	rsp, rsp
	mov	qword ptr [r15 + 0x10], r14
	test	rbx, rbx
	mov	rsp, rsp
	je	.label_1336
	mov	rsi, r15
	add	rsi, 0x18
	cmp	r12, 0x1000
	mov	ecx, 0x1000
	cmovbe	rcx, r12
	lea	rsi, [rsi]
	xor	edx, edx
	nop	
	mov	rdi, rbx
	call	setvbuf
	mov	rsp, rsp
	jmp	.label_1339
.label_1337:
	mov	edi, 0x1038
	mov	rbp, rbp
	call	xmalloc
	mov	rsp, rsp
	mov	r15, rax
	mov	rbp, rbp
	mov	qword ptr [r15], 0
	lea	rdi, [rdi]
	mov	qword ptr [word ptr [r15 + 8]], OFFSET FLAT:randread_error
	lea	rdi, [rdi]
	mov	qword ptr [r15 + 0x10], 0
	jmp	.label_1339
.label_1336:
	mov	rsp, rsp
	mov	qword ptr [r15 + 0x18], 0
	mov	r14, r15
	add	r14, 0x20
	mov	rsp, rsp
	xor	r13d, r13d
	mov	edi, OFFSET FLAT:.str.3_2
	lea	rsi, [rsi]
	xor	esi, esi
	mov	rbp, rbp
	xor	eax, eax
	call	open
	mov	rbp, rbp
	mov	ebx, eax
	test	ebx, ebx
	js	.label_1335
	lea	rdi, [rdi]
	cmp	r12, 0x800
	mov	edx, 0x800
	mov	rsp, rsp
	cmovbe	rdx, r12
	mov	edi, ebx
	mov	rsi, r14
	call	read
	nop	
	mov	r12, rax
	mov	rbp, rbp
	mov	edi, ebx
	nop	
	call	close
	lea	rsi, [rsi]
	xor	r13d, r13d
	test	r12, r12
	js	.label_1335
	lea	rsi, [rsi]
	cmp	r12, 0x7ff
	lea	rsi, [rsi]
	mov	r13, r12
	ja	.label_1334
.label_1335:
	mov	eax, 0x800
	lea	rsi, [rsi]
	sub	rax, r13
	cmp	rax, 0x10
	mov	ebx, 0x10
	mov	rbp, rbp
	cmovbe	rbx, rax
	lea	rsi, [rsi]
	lea	r12, [rsp]
	xor	esi, esi
	mov	rdi, r12
	lea	rdi, [rdi]
	call	gettimeofday
	mov	rsp, rsp
	lea	rdi, [r14 + r13]
	mov	rsi, r12
	lea	rsi, [rsi]
	mov	rdx, rbx
	call	memcpy
	add	rbx, r13
	cmp	rbx, 0x7ff
	ja	.label_1334
	mov	eax, 0x800
	mov	rsp, rsp
	sub	rax, rbx
	mov	rsp, rsp
	cmp	rax, 4
	lea	rdi, [rdi]
	mov	r12d, 4
	lea	rdi, [rdi]
	cmovbe	r12, rax
	nop	
	call	getpid
	mov	rbp, rbp
	mov	dword ptr [rsp], eax
	nop	
	lea	rdi, [r14 + rbx]
	lea	rsi, [rsi]
	lea	rsi, [rsp]
	mov	rdx, r12
	mov	rbp, rbp
	call	memcpy
	mov	rbp, rbp
	add	r12, rbx
	lea	rsi, [rsi]
	cmp	r12, 0x7ff
	mov	rsp, rsp
	ja	.label_1334
	mov	eax, 0x800
	mov	rbp, rbp
	sub	rax, r12
	cmp	rax, 4
	mov	ebx, 4
	cmovbe	rbx, rax
	call	getppid
	mov	dword ptr [rsp], eax
	mov	rsp, rsp
	lea	rdi, [r14 + r12]
	nop	
	lea	rsi, [rsp]
	mov	rdx, rbx
	call	memcpy
	mov	rbp, rbp
	add	rbx, r12
	cmp	rbx, 0x7ff
	ja	.label_1334
	mov	eax, 0x800
	nop	
	sub	rax, rbx
	cmp	rax, 4
	lea	rdi, [rdi]
	mov	r12d, 4
	lea	rsi, [rsi]
	cmovbe	r12, rax
	call	getuid
	mov	dword ptr [rsp], eax
	mov	rsp, rsp
	lea	rdi, [r14 + rbx]
	lea	rsi, [rsp]
	nop	
	mov	rdx, r12
	mov	rbp, rbp
	call	memcpy
	add	r12, rbx
	nop	
	cmp	r12, 0x7ff
	lea	rdi, [rdi]
	ja	.label_1334
	mov	rbp, rbp
	mov	eax, 0x800
	lea	rsi, [rsi]
	sub	rax, r12
	nop	
	cmp	rax, 4
	mov	rbp, rbp
	mov	ebx, 4
	cmovbe	rbx, rax
	mov	rbp, rbp
	call	getgid
	mov	rsp, rsp
	mov	dword ptr [rsp], eax
	mov	rbp, rbp
	add	r12, r14
	lea	rdi, [rdi]
	lea	rsi, [rsp]
	mov	rdi, r12
	mov	rsp, rsp
	mov	rdx, rbx
	call	memcpy
.label_1334:
	mov	rdi, r14
	nop	
	call	isaac_seed
.label_1339:
	mov	rax, r15
	add	rsp, 0x10
	pop	rbx
	pop	r12
	lea	rdi, [rdi]
	pop	r13
	mov	rbp, rbp
	pop	r14
	pop	r15
	lea	rdi, [rdi]
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x415560
	.globl randread_set_handler
	.type randread_set_handler, @function
randread_set_handler:

	mov	rsp, rsp
	mov	qword ptr [rdi + 8], rsi
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x415570
	.globl randread_set_handler_arg
	.type randread_set_handler_arg, @function
randread_set_handler_arg:

	mov	qword ptr [rdi + 0x10], rsi
	mov	rsp, rsp
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x415580

	.globl randread
	.type randread, @function
randread:
	mov	rsp, rsp
	push	rbp
	mov	rsp, rsp
	push	r15
	nop	
	push	r14
	push	r13
	nop	
	push	r12
	nop	
	push	rbx
	mov	rbp, rbp
	push	rax
	mov	rbp, rbp
	mov	rbx, rdx
	mov	rbp, rbp
	mov	r15, rsi
	nop	
	mov	r14, rdi
	mov	rcx, qword ptr [r14]
	mov	rsp, rsp
	test	rcx, rcx
	nop	
	je	.label_1340
	mov	esi, 1
	mov	rdi, r15
	mov	rdx, rbx
	mov	rbp, rbp
	call	fread_unlocked
	mov	rbp, rax
	nop	
	call	__errno_location
	mov	r12, rax
	nop	
	cmp	rbp, rbx
	mov	rsp, rsp
	je	.label_1342
	nop	
.label_1344:
	lea	rdi, [rdi]
	sub	rbx, rbp
	add	r15, rbp
	mov	rax, qword ptr [r14]
	mov	eax, dword ptr [rax]
	and	eax, 0x20
	mov	rbp, rbp
	cmovne	eax, dword ptr [r12]
	mov	dword ptr [r12], eax
	mov	rdi, qword ptr [r14 + 0x10]
	call	qword ptr [r14 + 8]
	mov	rbp, rbp
	mov	rcx, qword ptr [r14]
	mov	rsp, rsp
	mov	esi, 1
	lea	rdi, [rdi]
	mov	rdi, r15
	mov	rdx, rbx
	call	fread_unlocked
	mov	rbp, rax
	cmp	rbx, rbp
	jne	.label_1344
	mov	rsp, rsp
	jmp	.label_1342
.label_1340:
	mov	r12, qword ptr [r14 + 0x18]
	mov	rsp, rsp
	lea	r13, [r14 + 0x838]
	mov	rsi, r13
	sub	rsi, r12
	add	rsi, 0x800
	lea	rsi, [rsi]
	cmp	r12, rbx
	nop	
	jae	.label_1346
	lea	rbp, [r14 + 0x20]
	mov	rdi, r15
	lea	rdi, [rdi]
	mov	rdx, r12
	lea	rdi, [rdi]
	call	memcpy
	add	r15, r12
	lea	rsi, [rsi]
	sub	rbx, r12
	xor	r12d, r12d
	nop	word ptr cs:[rax + rax]
.label_1343:
	nop	
	cmp	rbx, 0x800
	jb	.label_1341
	mov	rdi, rbp
	mov	rsi, r15
	call	isaac_refill
	add	r15, 0x800
	mov	rbp, rbp
	add	rbx, -0x800
	jne	.label_1343
	mov	rbp, rbp
	jmp	.label_1345
.label_1341:
	mov	rdi, rbp
	mov	rsi, r13
	mov	rsp, rsp
	call	isaac_refill
	lea	rdi, [rdi]
	mov	r12d, 0x800
	mov	rsi, r13
.label_1346:
	mov	rdi, r15
	mov	rdx, rbx
	call	memcpy
	sub	r12, rbx
.label_1345:
	mov	rsp, rsp
	mov	qword ptr [r14 + 0x18], r12
.label_1342:
	add	rsp, 8
	pop	rbx
	lea	rsi, [rsi]
	pop	r12
	pop	r13
	pop	r14
	lea	rdi, [rdi]
	pop	r15
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x415700

	.globl randread_free
	.type randread_free, @function
randread_free:
	mov	rsp, rsp
	push	r14
	push	rbx
	push	rax
	mov	rbx, rdi
	mov	r14, qword ptr [rbx]
	lea	rsi, [rsi]
	mov	esi, 0x1038
	nop	
	call	explicit_bzero
	lea	rsi, [rsi]
	mov	rdi, rbx
	call	free
	mov	rbp, rbp
	test	r14, r14
	je	.label_1347
	mov	rdi, r14
	add	rsp, 8
	pop	rbx
	mov	rbp, rbp
	pop	r14
	jmp	rpl_fclose
.label_1347:
	xor	eax, eax
	nop	
	add	rsp, 8
	nop	
	pop	rbx
	mov	rsp, rsp
	pop	r14
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x415750

	.globl randread_error
	.type randread_error, @function
randread_error:
	mov	rsp, rsp
	push	rbp
	nop	
	push	r15
	nop	
	push	r14
	push	rbx
	push	rax
	nop	
	mov	rbx, rdi
	test	rbx, rbx
	nop	
	je	.label_1348
	mov	rsp, rsp
	mov	r14d,  dword ptr [dword ptr [rip + exit_failure]]
	lea	rsi, [rsi]
	call	__errno_location
	mov	r15d, dword ptr [rax]
	xor	edi, edi
	test	r15d, r15d
	lea	rdi, [rdi]
	jne	.label_1350
	mov	esi, OFFSET FLAT:.str.1_6
	jmp	.label_1349
.label_1350:
	mov	esi, OFFSET FLAT:.str.2_3
.label_1349:
	mov	rsp, rsp
	mov	edx, 5
	mov	rbp, rbp
	call	dcgettext
	nop	
	mov	rbp, rax
	mov	rdi, rbx
	call	quote
	mov	rcx, rax
	nop	
	xor	eax, eax
	lea	rdi, [rdi]
	mov	edi, r14d
	mov	esi, r15d
	lea	rsi, [rsi]
	mov	rdx, rbp
	mov	rbp, rbp
	call	error
.label_1348:
	lea	rdi, [rdi]
	call	abort
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4157e0

	.globl isaac_refill
	.type isaac_refill, @function
isaac_refill:
	mov	rax, qword ptr [rdi + 0x800]
	mov	rdx, qword ptr [rdi + 0x810]
	inc	rdx
	mov	rsp, rsp
	mov	rcx, qword ptr [rdi + 0x808]
	mov	rbp, rbp
	add	rcx, rdx
	mov	qword ptr [rdi + 0x810], rdx
	nop	
	lea	r9, [rdi + 0x400]
	mov	rsp, rsp
	mov	r8, rsi
	mov	r10, rdi
	nop	dword ptr [rax]
.label_1352:
	mov	r11, rax
	lea	rdi, [rdi]
	shl	r11, 0x15
	mov	rbp, rbp
	xor	r11, rax
	not	r11
	add	r11, qword ptr [r10 + 0x400]
	mov	rdx, qword ptr [r10]
	nop	
	mov	eax, edx
	and	eax, 0x7f8
	add	rcx, qword ptr [rdi + rax]
	lea	rsi, [rsi]
	add	rcx, r11
	mov	qword ptr [r10], rcx
	lea	rsi, [rsi]
	shr	rcx, 8
	and	ecx, 0x7f8
	add	rdx, qword ptr [rdi + rcx]
	mov	qword ptr [r8], rdx
	mov	rax, r11
	shr	rax, 5
	xor	rax, r11
	nop	
	add	rax, qword ptr [r10 + 0x408]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [r10 + 8]
	lea	rdi, [rdi]
	mov	r11d, ecx
	lea	rdi, [rdi]
	and	r11d, 0x7f8
	add	rdx, rax
	lea	rsi, [rsi]
	add	rdx, qword ptr [rdi + r11]
	mov	rbp, rbp
	mov	qword ptr [r10 + 8], rdx
	mov	rsp, rsp
	shr	rdx, 8
	and	edx, 0x7f8
	add	rcx, qword ptr [rdi + rdx]
	mov	qword ptr [r8 + 8], rcx
	mov	rsp, rsp
	mov	r11, rax
	shl	r11, 0xc
	xor	r11, rax
	lea	rdi, [rdi]
	add	r11, qword ptr [r10 + 0x410]
	mov	rdx, qword ptr [r10 + 0x10]
	mov	rsp, rsp
	mov	eax, edx
	lea	rdi, [rdi]
	and	eax, 0x7f8
	lea	rdi, [rdi]
	add	rcx, r11
	nop	
	add	rcx, qword ptr [rdi + rax]
	nop	
	mov	qword ptr [r10 + 0x10], rcx
	shr	rcx, 8
	and	ecx, 0x7f8
	add	rdx, qword ptr [rdi + rcx]
	mov	rbp, rbp
	mov	qword ptr [r8 + 0x10], rdx
	mov	rax, r11
	shr	rax, 0x21
	mov	rbp, rbp
	xor	rax, r11
	add	rax, qword ptr [r10 + 0x418]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [r10 + 0x18]
	lea	rsi, [rsi]
	mov	r11d, ecx
	and	r11d, 0x7f8
	lea	rsi, [rsi]
	add	rdx, rax
	add	rdx, qword ptr [rdi + r11]
	lea	rsi, [rsi]
	mov	qword ptr [r10 + 0x18], rdx
	shr	rdx, 8
	mov	rbp, rbp
	and	edx, 0x7f8
	add	rcx, qword ptr [rdi + rdx]
	mov	qword ptr [r8 + 0x18], rcx
	add	r10, 0x20
	add	r8, 0x20
	mov	rbp, rbp
	cmp	r10, r9
	jb	.label_1352
	add	rsi, 0x400
	lea	r8, [rdi + 0x800]
	nop	word ptr cs:[rax + rax]
.label_1351:
	mov	r10, rax
	shl	r10, 0x15
	xor	r10, rax
	not	r10
	add	r10, qword ptr [r9 - 0x400]
	mov	rsp, rsp
	mov	rdx, qword ptr [r9]
	mov	rbp, rbp
	mov	eax, edx
	and	eax, 0x7f8
	add	rcx, qword ptr [rdi + rax]
	add	rcx, r10
	mov	rsp, rsp
	mov	qword ptr [r9], rcx
	shr	rcx, 8
	and	ecx, 0x7f8
	nop	
	add	rdx, qword ptr [rdi + rcx]
	mov	rbp, rbp
	mov	qword ptr [rsi], rdx
	mov	rax, r10
	nop	
	shr	rax, 5
	lea	rsi, [rsi]
	xor	rax, r10
	add	rax, qword ptr [r9 - 0x3f8]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [r9 + 8]
	mov	r10d, ecx
	and	r10d, 0x7f8
	nop	
	add	rdx, rax
	add	rdx, qword ptr [rdi + r10]
	mov	qword ptr [r9 + 8], rdx
	shr	rdx, 8
	and	edx, 0x7f8
	add	rcx, qword ptr [rdi + rdx]
	lea	rsi, [rsi]
	mov	qword ptr [rsi + 8], rcx
	mov	r10, rax
	shl	r10, 0xc
	nop	
	xor	r10, rax
	nop	
	add	r10, qword ptr [r9 - 0x3f0]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [r9 + 0x10]
	mov	eax, edx
	lea	rsi, [rsi]
	and	eax, 0x7f8
	add	rcx, r10
	lea	rdi, [rdi]
	add	rcx, qword ptr [rdi + rax]
	mov	qword ptr [r9 + 0x10], rcx
	shr	rcx, 8
	and	ecx, 0x7f8
	add	rdx, qword ptr [rdi + rcx]
	mov	qword ptr [rsi + 0x10], rdx
	nop	
	mov	rax, r10
	nop	
	shr	rax, 0x21
	xor	rax, r10
	nop	
	add	rax, qword ptr [r9 - 0x3e8]
	mov	rcx, qword ptr [r9 + 0x18]
	mov	r10d, ecx
	mov	rsp, rsp
	and	r10d, 0x7f8
	mov	rbp, rbp
	add	rdx, rax
	add	rdx, qword ptr [rdi + r10]
	mov	qword ptr [r9 + 0x18], rdx
	shr	rdx, 8
	mov	rsp, rsp
	and	edx, 0x7f8
	add	rcx, qword ptr [rdi + rdx]
	mov	qword ptr [rsi + 0x18], rcx
	add	r9, 0x20
	add	rsi, 0x20
	cmp	r9, r8
	nop	
	jb	.label_1351
	mov	qword ptr [rdi + 0x800], rax
	mov	qword ptr [rdi + 0x808], rcx
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x415ac0

	.globl isaac_seed
	.type isaac_seed, @function
isaac_seed:
	mov	rsp, rsp
	push	r15
	lea	rdi, [rdi]
	push	r14
	mov	rsp, rsp
	push	r13
	push	r12
	mov	rsp, rsp
	push	rbx
	movabs	rdx, 0x647c4677a2884b7c
	nop	
	movabs	r8, 0xb9f8b322c73ac862
	mov	rbp, rbp
	movabs	rsi, 0x8c0ea5053d4712a0
	movabs	rcx, 0xb29b2e824a595524
	movabs	rax, 0x82f053db8355e0ce
	movabs	r11, 0x48fe4a0fa5a09315
	mov	rbp, rbp
	movabs	r10, 0xae985bf2cbfc89ed
	movabs	r9, 0x98f5704f6c44c0ab
	lea	rdi, [rdi]
	xor	ebx, ebx
	nop	word ptr cs:[rax + rax]
.label_1353:
	mov	rbp, rbp
	add	rdx, qword ptr [rdi + rbx*8]
	add	r8, qword ptr [rdi + rbx*8 + 8]
	mov	rbp, rbp
	add	rsi, qword ptr [rdi + rbx*8 + 0x10]
	add	rcx, qword ptr [rdi + rbx*8 + 0x18]
	add	rax, qword ptr [rdi + rbx*8 + 0x20]
	lea	rdi, [rdi]
	add	r11, qword ptr [rdi + rbx*8 + 0x28]
	mov	rbp, rbp
	add	r10, qword ptr [rdi + rbx*8 + 0x30]
	lea	rsi, [rsi]
	add	r9, qword ptr [rdi + rbx*8 + 0x38]
	mov	rbp, rbp
	sub	rdx, rax
	lea	rsi, [rsi]
	mov	r14, r9
	shr	r14, 9
	xor	r14, r11
	add	r9, rdx
	sub	r8, r14
	lea	r11, [r8 + rdx]
	mov	rbp, rbp
	shl	rdx, 9
	mov	r15, rdx
	nop	
	xor	r15, r10
	sub	rsi, r15
	lea	rdi, [rdi]
	mov	r10, r8
	nop	
	shr	r8, 0x17
	nop	
	xor	r9, r8
	add	r10, rsi
	sub	rcx, r9
	mov	rbp, rbp
	lea	r12, [rcx + rsi]
	lea	rsi, [rsi]
	shl	rsi, 0xf
	mov	rdx, rsi
	nop	
	xor	rdx, r11
	sub	rax, rdx
	mov	r8, rcx
	shr	r8, 0xe
	mov	rsp, rsp
	xor	r8, r10
	mov	r10, rcx
	nop	
	add	r10, rax
	mov	rbp, rbp
	sub	r14, r8
	nop	
	lea	r13, [r14 + rax]
	shl	rax, 0x14
	mov	rsi, rax
	mov	rsp, rsp
	xor	rsi, r12
	sub	r15, rsi
	mov	rcx, r14
	shr	rcx, 0x11
	mov	rsp, rsp
	xor	rcx, r10
	mov	rbp, rbp
	mov	r11, r14
	mov	rbp, rbp
	add	r11, r15
	mov	rbp, rbp
	sub	r9, rcx
	lea	r10, [r9 + r15]
	lea	rdi, [rdi]
	shl	r15, 0xe
	mov	rsp, rsp
	mov	rax, r15
	xor	rax, r13
	mov	rsp, rsp
	mov	qword ptr [rdi + rbx*8], rdx
	mov	qword ptr [rdi + rbx*8 + 8], r8
	lea	rsi, [rsi]
	mov	qword ptr [rdi + rbx*8 + 0x10], rsi
	mov	rsp, rsp
	mov	qword ptr [rdi + rbx*8 + 0x18], rcx
	mov	rbp, rbp
	mov	qword ptr [rdi + rbx*8 + 0x20], rax
	mov	qword ptr [rdi + rbx*8 + 0x28], r11
	mov	qword ptr [rdi + rbx*8 + 0x30], r10
	nop	
	mov	qword ptr [rdi + rbx*8 + 0x38], r9
	nop	
	add	rbx, 8
	cmp	rbx, 0x100
	lea	rdi, [rdi]
	jl	.label_1353
	xor	ebx, ebx
	nop	
.label_1354:
	mov	rsp, rsp
	add	rdx, qword ptr [rdi + rbx*8]
	add	r8, qword ptr [rdi + rbx*8 + 8]
	lea	rdi, [rdi]
	add	rsi, qword ptr [rdi + rbx*8 + 0x10]
	lea	rsi, [rsi]
	add	rcx, qword ptr [rdi + rbx*8 + 0x18]
	mov	rbp, rbp
	add	rax, qword ptr [rdi + rbx*8 + 0x20]
	lea	rsi, [rsi]
	add	r11, qword ptr [rdi + rbx*8 + 0x28]
	mov	rbp, rbp
	add	r10, qword ptr [rdi + rbx*8 + 0x30]
	nop	
	add	r9, qword ptr [rdi + rbx*8 + 0x38]
	lea	rsi, [rsi]
	sub	rdx, rax
	mov	rsp, rsp
	mov	r14, r9
	shr	r14, 9
	mov	rbp, rbp
	xor	r14, r11
	mov	rbp, rbp
	add	r9, rdx
	lea	rdi, [rdi]
	sub	r8, r14
	lea	rsi, [rsi]
	lea	r12, [r8 + rdx]
	shl	rdx, 9
	xor	rdx, r10
	lea	rdi, [rdi]
	sub	rsi, rdx
	mov	r11, r8
	shr	r11, 0x17
	xor	r11, r9
	mov	rsp, rsp
	add	r8, rsi
	sub	rcx, r11
	mov	rbp, rbp
	lea	r9, [rcx + rsi]
	lea	rdi, [rdi]
	shl	rsi, 0xf
	mov	rsp, rsp
	mov	r15, rsi
	xor	r15, r12
	sub	rax, r15
	lea	rsi, [rsi]
	mov	rsi, rcx
	shr	rsi, 0xe
	xor	r8, rsi
	add	rcx, rax
	sub	r14, r8
	lea	r12, [r14 + rax]
	lea	rsi, [rsi]
	shl	rax, 0x14
	mov	rsi, rax
	xor	rsi, r9
	lea	rdi, [rdi]
	sub	rdx, rsi
	mov	rax, r14
	shr	rax, 0x11
	nop	
	xor	rcx, rax
	add	r14, rdx
	sub	r11, rcx
	mov	rsp, rsp
	lea	r10, [r11 + rdx]
	shl	rdx, 0xe
	mov	rbp, rbp
	xor	rdx, r12
	lea	rdi, [rdi]
	mov	qword ptr [rdi + rbx*8], r15
	mov	qword ptr [rdi + rbx*8 + 8], r8
	mov	qword ptr [rdi + rbx*8 + 0x10], rsi
	mov	qword ptr [rdi + rbx*8 + 0x18], rcx
	lea	rdi, [rdi]
	mov	qword ptr [rdi + rbx*8 + 0x20], rdx
	mov	qword ptr [rdi + rbx*8 + 0x28], r14
	mov	qword ptr [rdi + rbx*8 + 0x30], r10
	lea	rdi, [rdi]
	mov	qword ptr [rdi + rbx*8 + 0x38], r11
	add	rbx, 8
	cmp	rbx, 0x100
	mov	r9, r11
	mov	r11, r14
	mov	rax, rdx
	mov	rdx, r15
	jl	.label_1354
	mov	rsp, rsp
	xorps	xmm0, xmm0
	movups	xmmword ptr [rdi + 0x800], xmm0
	mov	qword ptr [rdi + 0x810], 0
	lea	rsi, [rsi]
	pop	rbx
	pop	r12
	mov	rbp, rbp
	pop	r13
	mov	rbp, rbp
	pop	r14
	pop	r15
	mov	rsp, rsp
	ret	
	nop	word ptr cs:[rax + rax]
	nop	
	.section	.text
	.align	16
	#Procedure 0x415df0

	.globl readtokens0_init
	.type readtokens0_init, @function
readtokens0_init:
	mov	rbp, rbp
	push	rbx
	mov	rbx, rdi
	mov	rsp, rsp
	lea	rdi, [rbx + 0x18]
	lea	rsi, [rsi]
	xorps	xmm0, xmm0
	movups	xmmword ptr [rbx], xmm0
	mov	qword ptr [rbx + 0x10], 0
	xor	esi, esi
	xor	edx, edx
	lea	rdi, [rdi]
	mov	ecx, OFFSET FLAT:malloc
	mov	r8d, OFFSET FLAT:free
	call	_obstack_begin
	lea	rdi, [rbx + 0x70]
	lea	rsi, [rsi]
	xor	esi, esi
	xor	edx, edx
	nop	
	mov	ecx, OFFSET FLAT:malloc
	nop	
	mov	r8d, OFFSET FLAT:free
	call	_obstack_begin
	add	rbx, 0xc8
	mov	rsp, rsp
	xor	esi, esi
	xor	edx, edx
	lea	rdi, [rdi]
	mov	ecx, OFFSET FLAT:malloc
	nop	
	mov	r8d, OFFSET FLAT:free
	mov	rdi, rbx
	pop	rbx
	nop	
	jmp	_obstack_begin
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x415e70
	.globl readtokens0_free
	.type readtokens0_free, @function
readtokens0_free:

	push	rbx
	mov	rbx, rdi
	lea	rdi, [rbx + 0x18]
	xor	esi, esi
	lea	rdi, [rdi]
	call	_obstack_free
	lea	rdi, [rdi]
	lea	rdi, [rbx + 0x70]
	xor	esi, esi
	lea	rsi, [rsi]
	call	_obstack_free
	add	rbx, 0xc8
	xor	esi, esi
	nop	
	mov	rdi, rbx
	pop	rbx
	mov	rbp, rbp
	jmp	_obstack_free
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x415eb0

	.globl readtokens0
	.type readtokens0, @function
readtokens0:
	push	rbp
	lea	rdi, [rdi]
	push	r15
	push	r14
	mov	rbp, rbp
	push	r12
	mov	rsp, rsp
	push	rbx
	mov	rbx, rsi
	nop	
	mov	r14, rdi
	call	fgetc
	lea	rdi, [rdi]
	mov	ebp, eax
	mov	rsp, rsp
	cmp	ebp, -1
	je	.label_1356
	lea	rdi, [rdi]
	lea	r12, [rbx + 0x30]
	lea	r15, [rbx + 0x18]
	nop	word ptr cs:[rax + rax]
.label_1355:
	mov	rax, qword ptr [rbx + 0x30]
	lea	rdi, [rdi]
	cmp	qword ptr [rbx + 0x38], rax
	lea	rdi, [rdi]
	jne	.label_1365
	lea	rdi, [rdi]
	mov	esi, 1
	lea	rdi, [rdi]
	mov	rdi, r15
	mov	rsp, rsp
	call	_obstack_newchunk
	nop	
	mov	rax, qword ptr [r12]
.label_1365:
	lea	rcx, [rax + 1]
	mov	qword ptr [r12], rcx
	mov	rsp, rsp
	mov	byte ptr [rax], bpl
	mov	rbp, rbp
	test	ebp, ebp
	jne	.label_1360
	mov	rdi, rbx
	lea	rsi, [rsi]
	call	save_token
.label_1360:
	mov	rdi, r14
	lea	rdi, [rdi]
	call	fgetc
	mov	ebp, eax
	nop	
	cmp	ebp, -1
	mov	rsp, rsp
	jne	.label_1355
	nop	
	jmp	.label_1358
.label_1356:
	lea	r15, [rbx + 0x18]
	lea	r12, [rbx + 0x30]
.label_1358:
	mov	rax, qword ptr [rbx + 0x30]
	cmp	rax, qword ptr [rbx + 0x28]
	mov	rsp, rsp
	je	.label_1361
	lea	rsi, [rsi]
	cmp	qword ptr [rbx + 0x38], rax
	jne	.label_1364
	lea	rdi, [rdi]
	mov	esi, 1
	mov	rsp, rsp
	mov	rdi, r15
	lea	rdi, [rdi]
	call	_obstack_newchunk
	mov	rax, qword ptr [r12]
.label_1364:
	nop	
	lea	rcx, [rax + 1]
	lea	rdi, [rdi]
	mov	qword ptr [rbx + 0x30], rcx
	lea	rdi, [rdi]
	mov	byte ptr [rax], 0
	mov	rdi, rbx
	mov	rsp, rsp
	call	save_token
.label_1361:
	mov	rax, qword ptr [rbx + 0x88]
	mov	rcx, qword ptr [rbx + 0x90]
	lea	rsi, [rsi]
	sub	rcx, rax
	cmp	rcx, 8
	jae	.label_1366
	lea	rdi, [rbx + 0x70]
	mov	rbp, rbp
	mov	esi, 8
	nop	
	call	_obstack_newchunk
	nop	
	mov	rax, qword ptr [rbx + 0x88]
.label_1366:
	mov	qword ptr [rax], 0
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbx + 0x88]
	add	rdx, 8
	mov	qword ptr [rbx + 0x88], rdx
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbx + 0x80]
	lea	rdi, [rdi]
	cmp	rdx, rax
	mov	rbp, rbp
	jne	.label_1362
	or	byte ptr [rbx + 0xc0], 2
.label_1362:
	mov	rcx, qword ptr [rbx + 0xa0]
	add	rdx, rcx
	lea	rsi, [rsi]
	not	rcx
	and	rcx, rdx
	mov	qword ptr [rbx + 0x88], rcx
	mov	rbp, rbp
	mov	rsi, qword ptr [rbx + 0x78]
	mov	rbp, qword ptr [rbx + 0x90]
	nop	
	mov	rdi, rcx
	lea	rsi, [rsi]
	sub	rdi, rsi
	nop	
	mov	rdx, rbp
	sub	rdx, rsi
	cmp	rdi, rdx
	mov	rbp, rbp
	jbe	.label_1359
	mov	qword ptr [rbx + 0x88], rbp
	mov	rbp, rbp
	mov	rcx, rbp
.label_1359:
	mov	qword ptr [rbx + 0x80], rcx
	nop	
	mov	qword ptr [rbx + 8], rax
	mov	rax, qword ptr [rbx + 0xd8]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbx + 0xe0]
	lea	rsi, [rsi]
	cmp	rdx, rax
	jne	.label_1363
	or	byte ptr [rbx + 0x118], 2
.label_1363:
	mov	rcx, qword ptr [rbx + 0xf8]
	mov	rsp, rsp
	add	rdx, rcx
	not	rcx
	and	rcx, rdx
	lea	rsi, [rsi]
	mov	qword ptr [rbx + 0xe0], rcx
	mov	rbp, rbp
	mov	rsi, qword ptr [rbx + 0xd0]
	mov	rbp, qword ptr [rbx + 0xe8]
	nop	
	mov	rdi, rcx
	nop	
	sub	rdi, rsi
	mov	rdx, rbp
	lea	rdi, [rdi]
	sub	rdx, rsi
	cmp	rdi, rdx
	lea	rsi, [rsi]
	jbe	.label_1357
	mov	rsp, rsp
	mov	qword ptr [rbx + 0xe0], rbp
	mov	rcx, rbp
.label_1357:
	mov	qword ptr [rbx + 0xd8], rcx
	lea	rsi, [rsi]
	mov	qword ptr [rbx + 0x10], rax
	mov	rsp, rsp
	mov	rdi, r14
	nop	
	call	ferror
	test	eax, eax
	mov	rbp, rbp
	sete	al
	pop	rbx
	lea	rdi, [rdi]
	pop	r12
	pop	r14
	mov	rbp, rbp
	pop	r15
	nop	
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x416120

	.globl save_token
	.type save_token, @function
save_token:
	push	r15
	push	r14
	lea	rdi, [rdi]
	push	rbx
	nop	
	mov	rbx, rdi
	mov	r15, qword ptr [rbx + 0x28]
	mov	rsp, rsp
	mov	r14, qword ptr [rbx + 0x30]
	nop	
	cmp	r14, r15
	lea	rsi, [rsi]
	jne	.label_1367
	or	byte ptr [rbx + 0x68], 2
.label_1367:
	mov	rax, qword ptr [rbx + 0x48]
	lea	rsi, [rsi]
	lea	rcx, [rax + r14]
	not	rax
	lea	rsi, [rsi]
	and	rax, rcx
	mov	qword ptr [rbx + 0x30], rax
	mov	rdx, qword ptr [rbx + 0x20]
	mov	rcx, qword ptr [rbx + 0x38]
	lea	rsi, [rsi]
	mov	rsi, rax
	sub	rsi, rdx
	mov	rdi, rcx
	lea	rsi, [rsi]
	sub	rdi, rdx
	lea	rdi, [rdi]
	cmp	rsi, rdi
	jbe	.label_1368
	mov	rbp, rbp
	mov	qword ptr [rbx + 0x30], rcx
	lea	rdi, [rdi]
	mov	rax, rcx
.label_1368:
	mov	rsp, rsp
	dec	r14
	mov	rbp, rbp
	mov	qword ptr [rbx + 0x28], rax
	mov	rax, qword ptr [rbx + 0x88]
	nop	
	mov	rcx, qword ptr [rbx + 0x90]
	sub	rcx, rax
	lea	rdi, [rdi]
	cmp	rcx, 8
	nop	
	jae	.label_1369
	nop	
	lea	rdi, [rbx + 0x70]
	lea	rsi, [rsi]
	mov	esi, 8
	call	_obstack_newchunk
	mov	rax, qword ptr [rbx + 0x88]
.label_1369:
	sub	r14, r15
	mov	rsp, rsp
	mov	qword ptr [rax], r15
	mov	rbp, rbp
	add	qword ptr [rbx + 0x88], 8
	mov	rax, qword ptr [rbx + 0xe0]
	mov	rcx, qword ptr [rbx + 0xe8]
	sub	rcx, rax
	mov	rbp, rbp
	cmp	rcx, 8
	jae	.label_1370
	lea	rdi, [rdi]
	lea	rdi, [rbx + 0xc8]
	lea	rdi, [rdi]
	mov	esi, 8
	lea	rsi, [rsi]
	call	_obstack_newchunk
	mov	rax, qword ptr [rbx + 0xe0]
.label_1370:
	mov	qword ptr [rax], r14
	add	qword ptr [rbx + 0xe0], 8
	inc	qword ptr [rbx]
	nop	
	pop	rbx
	lea	rsi, [rsi]
	pop	r14
	nop	
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	nop	
	.section	.text
	.align	16
	#Procedure 0x416240
	.globl mkstemp_safer
	.type mkstemp_safer, @function
mkstemp_safer:

	push	rax
	call	mkstemp
	lea	rsi, [rsi]
	mov	edi, eax
	pop	rax
	lea	rsi, [rsi]
	jmp	fd_safer
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x416260

	.globl mkostemp_safer
	.type mkostemp_safer, @function
mkostemp_safer:
	lea	rdi, [rdi]
	push	rbx
	mov	ebx, esi
	nop	
	call	mkostemp
	mov	rsp, rsp
	mov	edi, eax
	mov	esi, ebx
	mov	rsp, rsp
	pop	rbx
	jmp	fd_safer_flag
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x416280

	.globl strnumcmp
	.type strnumcmp, @function
strnumcmp:
	push	rbp
	push	r14
	push	rbx
	movzx	r8d, byte ptr [rdi]
	cmp	r8d, 0x2d
	mov	r9b, byte ptr [rsi]
	movzx	r10d, r9b
	jne	.label_1407
	nop	dword ptr [rax]
.label_1412:
	movzx	r11d, byte ptr [rdi + 1]
	inc	rdi
	cmp	r11d, 0x30
	je	.label_1412
	cmp	r11d, ecx
	je	.label_1412
	movzx	r8d, r9b
	cmp	r8d, 0x2d
	jne	.label_1416
	nop	word ptr cs:[rax + rax]
.label_1422:
	movzx	eax, byte ptr [rsi + 1]
	inc	rsi
	cmp	eax, 0x30
	je	.label_1422
	cmp	eax, ecx
	je	.label_1422
	lea	ebp, [r11 - 0x30]
	cmp	ebp, 0xa
	setb	r10b
	cmp	ebp, 9
	ja	.label_1391
	movzx	ebp, r11b
	movzx	ebx, al
	cmp	ebx, ebp
	jne	.label_1391
	nop	word ptr cs:[rax + rax]
.label_1377:
	mov	r9b, byte ptr [rdi + 1]
	inc	rdi
	movzx	r11d, r9b
	cmp	r11d, ecx
	je	.label_1377
.label_1381:
	movzx	eax, byte ptr [rsi + 1]
	inc	rsi
	cmp	eax, ecx
	je	.label_1381
	lea	ebp, [r11 - 0x30]
	cmp	ebp, 0xa
	setb	r10b
	cmp	ebp, 9
	ja	.label_1385
	movzx	ebp, r9b
	movzx	ebx, al
	cmp	ebx, ebp
	je	.label_1377
	jmp	.label_1385
.label_1407:
	movzx	eax, r9b
	cmp	eax, 0x2d
	jne	.label_1394
	nop	dword ptr [rax]
.label_1400:
	movzx	eax, byte ptr [rsi + 1]
	inc	rsi
	cmp	eax, 0x30
	je	.label_1400
	cmp	eax, ecx
	je	.label_1400
	cmp	eax, edx
	jne	.label_1411
	inc	rsi
	nop	word ptr [rax + rax]
.label_1372:
	movzx	eax, byte ptr [rsi]
	inc	rsi
	cmp	eax, 0x30
	je	.label_1372
.label_1411:
	movzx	esi, al
	add	esi, -0x30
	mov	eax, 1
	cmp	esi, 0xa
	jb	.label_1373
	movzx	eax, r8b
	cmp	eax, 0x30
	jne	.label_1405
	jmp	.label_1406
.label_1416:
	cmp	r11d, edx
	jne	.label_1415
	inc	rdi
	nop	dword ptr [rax]
.label_1413:
	movzx	r11d, byte ptr [rdi]
	inc	rdi
	cmp	r11d, 0x30
	je	.label_1413
.label_1415:
	movzx	edi, r11b
	add	edi, -0x30
	mov	eax, 0xffffffff
	cmp	edi, 0xa
	jb	.label_1373
	cmp	r8d, 0x30
	je	.label_1425
	cmp	r10d, ecx
	jne	.label_1428
	nop	dword ptr [rax]
.label_1425:
	movzx	r10d, byte ptr [rsi + 1]
	inc	rsi
	cmp	r10d, 0x30
	je	.label_1425
	cmp	r10d, ecx
	mov	r9b, r10b
	je	.label_1425
.label_1428:
	cmp	r10d, edx
	jne	.label_1374
	inc	rsi
	nop	
.label_1401:
	movzx	r9d, byte ptr [rsi]
	inc	rsi
	cmp	r9d, 0x30
	je	.label_1401
.label_1374:
	movzx	eax, r9b
	jmp	.label_1380
.label_1394:
	movzx	ebp, r8b
	cmp	ebp, 0x30
	jne	.label_1382
	jmp	.label_1387
.label_1391:
	mov	r9b, r11b
.label_1385:
	movzx	r8d, al
	cmp	r11d, edx
	setne	bl
	lea	ebp, [r8 - 0x30]
	cmp	ebp, 0xa
	setb	r14b
	cmp	r8d, edx
	setne	al
	or	al, r10b
	movzx	eax, al
	cmp	eax, 1
	jne	.label_1389
	or	bl, r14b
	je	.label_1389
	movzx	eax, r9b
	add	eax, -0x30
	xor	edx, edx
	cmp	eax, 9
	ja	.label_1403
	nop	word ptr cs:[rax + rax]
.label_1384:
	movzx	ebx, byte ptr [rdi + 1]
	inc	rdi
	cmp	ebx, ecx
	je	.label_1384
	inc	rdx
	add	ebx, -0x30
	cmp	ebx, 0xa
	jb	.label_1384
.label_1403:
	xor	edi, edi
	cmp	ebp, 0xa
	jae	.label_1410
	nop	dword ptr [rax]
.label_1388:
	movzx	eax, byte ptr [rsi + 1]
	inc	rsi
	cmp	eax, ecx
	je	.label_1388
	inc	rdi
	add	eax, -0x30
	cmp	eax, 0xa
	jb	.label_1388
.label_1410:
	cmp	rdx, rdi
	jne	.label_1421
	sub	r8d, r11d
	xor	eax, eax
	test	rdx, rdx
	cmovne	eax, r8d
	jmp	.label_1373
.label_1389:
	movzx	ecx, dl
	cmp	r8d, ecx
	jne	.label_1420
	movzx	eax, r9b
	inc	rsi
	cmp	eax, ecx
	jne	.label_1396
	inc	rdi
	nop	word ptr cs:[rax + rax]
.label_1375:
	movzx	ebp, byte ptr [rsi]
	movsx	eax, bpl
	movzx	edx, byte ptr [rdi]
	lea	ecx, [rax - 0x30]
	cmp	ebp, edx
	jne	.label_1393
	inc	rsi
	inc	rdi
	xor	eax, eax
	cmp	ecx, 0xa
	jb	.label_1375
	jmp	.label_1373
.label_1421:
	mov	ecx, 1
	mov	eax, 0xffffffff
	cmovb	eax, ecx
	jmp	.label_1373
.label_1420:
	xor	eax, eax
	movzx	edx, r9b
	cmp	edx, ecx
	jne	.label_1373
	inc	rdi
	nop	word ptr cs:[rax + rax]
.label_1390:
	movsx	eax, byte ptr [rdi]
	inc	rdi
	cmp	eax, 0x30
	je	.label_1390
	jmp	.label_1380
.label_1393:
	movsx	ebx, dl
	lea	edx, [rbx - 0x30]
	cmp	ecx, 9
	ja	.label_1398
	cmp	edx, 9
	ja	.label_1398
	sub	eax, ebx
	jmp	.label_1373
.label_1398:
	cmp	ecx, 0xa
	jae	.label_1402
	nop	dword ptr [rax]
.label_1396:
	movsx	eax, byte ptr [rsi]
	inc	rsi
	cmp	eax, 0x30
	je	.label_1396
	jmp	.label_1399
.label_1402:
	xor	eax, eax
	cmp	edx, 0xa
	jb	.label_1390
	jmp	.label_1373
.label_1399:
	add	eax, -0x30
	cmp	eax, 0xa
	sbb	eax, eax
	and	eax, 1
	jmp	.label_1373
.label_1380:
	add	eax, -0x30
	cmp	eax, 0xa
	sbb	eax, eax
	jmp	.label_1373
.label_1382:
	cmp	r8d, ecx
	jne	.label_1414
.label_1387:
	movzx	r8d, byte ptr [rdi + 1]
	inc	rdi
	cmp	r8d, 0x30
	jne	.label_1382
	jmp	.label_1387
.label_1414:
	cmp	eax, 0x30
	je	.label_1417
	cmp	r10d, ecx
	jne	.label_1419
	nop	word ptr cs:[rax + rax]
.label_1417:
	movzx	r9d, byte ptr [rsi + 1]
	inc	rsi
	cmp	r9d, 0x30
	je	.label_1417
	cmp	r9d, ecx
	je	.label_1417
.label_1419:
	movzx	r10d, r8b
	jmp	.label_1426
	nop	dword ptr [rax]
.label_1379:
	mov	r8b, byte ptr [rdi + 1]
	inc	rdi
	movzx	r10d, r8b
	cmp	r10d, ecx
	je	.label_1379
.label_1371:
	movzx	r9d, byte ptr [rsi + 1]
	inc	rsi
	cmp	r9d, ecx
	je	.label_1371
.label_1426:
	lea	ebp, [r10 - 0x30]
	cmp	ebp, 0xa
	setb	al
	cmp	ebp, 9
	ja	.label_1376
	movzx	ebp, r9b
	movzx	ebx, r8b
	cmp	ebx, ebp
	je	.label_1379
.label_1376:
	movzx	r9d, r9b
	cmp	r10d, edx
	setne	r14b
	lea	r11d, [r9 - 0x30]
	cmp	r11d, 0xa
	setb	bpl
	cmp	r9d, edx
	setne	bl
	or	bl, al
	movzx	eax, bl
	cmp	eax, 1
	jne	.label_1383
	or	r14b, bpl
	je	.label_1383
	movzx	eax, r8b
	add	eax, -0x30
	xor	edx, edx
	cmp	eax, 9
	ja	.label_1397
	nop	word ptr cs:[rax + rax]
.label_1404:
	movzx	eax, byte ptr [rdi + 1]
	inc	rdi
	cmp	eax, ecx
	je	.label_1404
	inc	rdx
	add	eax, -0x30
	cmp	eax, 0xa
	jb	.label_1404
.label_1397:
	xor	eax, eax
	cmp	r11d, 0xa
	jae	.label_1430
	nop	
.label_1378:
	movzx	edi, byte ptr [rsi + 1]
	inc	rsi
	cmp	edi, ecx
	je	.label_1378
	inc	rax
	add	edi, -0x30
	cmp	edi, 0xa
	jb	.label_1378
.label_1430:
	cmp	rdx, rax
	jne	.label_1427
	sub	r10d, r9d
	xor	eax, eax
	test	rdx, rdx
	cmovne	eax, r10d
	jmp	.label_1373
.label_1383:
	movzx	eax, r8b
	movzx	ecx, dl
	cmp	eax, ecx
	jne	.label_1418
	inc	rdi
	cmp	r9d, eax
	jne	.label_1395
	inc	rsi
	nop	word ptr cs:[rax + rax]
.label_1431:
	movzx	ebp, byte ptr [rdi]
	movsx	eax, bpl
	movzx	edx, byte ptr [rsi]
	lea	ecx, [rax - 0x30]
	cmp	ebp, edx
	jne	.label_1424
	inc	rdi
	inc	rsi
	xor	eax, eax
	cmp	ecx, 0xa
	jb	.label_1431
	jmp	.label_1373
.label_1427:
	mov	ecx, 0xffffffff
	mov	eax, 1
	cmovb	eax, ecx
	jmp	.label_1373
.label_1418:
	xor	eax, eax
	cmp	r9d, ecx
	jne	.label_1373
	inc	rsi
	nop	dword ptr [rax]
.label_1423:
	movsx	eax, byte ptr [rsi]
	inc	rsi
	cmp	eax, 0x30
	je	.label_1423
	jmp	.label_1380
.label_1424:
	movsx	ebx, dl
	lea	edx, [rbx - 0x30]
	cmp	ecx, 9
	ja	.label_1386
	cmp	edx, 9
	ja	.label_1386
	sub	eax, ebx
	jmp	.label_1373
.label_1386:
	cmp	ecx, 0xa
	jae	.label_1392
	nop	dword ptr [rax]
.label_1395:
	movsx	eax, byte ptr [rdi]
	inc	rdi
	cmp	eax, 0x30
	je	.label_1395
	jmp	.label_1399
.label_1392:
	xor	eax, eax
	cmp	edx, 0xa
	jb	.label_1423
.label_1373:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
.label_1405:
	cmp	r8d, ecx
	jne	.label_1429
.label_1406:
	movzx	r8d, byte ptr [rdi + 1]
	inc	rdi
	cmp	r8d, 0x30
	jne	.label_1405
	jmp	.label_1406
.label_1429:
	cmp	r8d, edx
	jne	.label_1408
	inc	rdi
	nop	dword ptr [rax]
.label_1409:
	movzx	r8d, byte ptr [rdi]
	inc	rdi
	cmp	r8d, 0x30
	je	.label_1409
.label_1408:
	movzx	eax, r8b
	jmp	.label_1399
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4167b0

	.globl fd_safer
	.type fd_safer, @function
fd_safer:
	lea	rdi, [rdi]
	push	rbp
	push	r15
	lea	rsi, [rsi]
	push	r14
	nop	
	push	rbx
	mov	rsp, rsp
	push	rax
	mov	rbp, rbp
	mov	ebx, edi
	mov	rbp, rbp
	cmp	ebx, 2
	ja	.label_1433
	mov	edi, ebx
	call	dup_safer
	mov	r14d, eax
	mov	rsp, rsp
	call	__errno_location
	mov	rbp, rax
	nop	
	mov	r15d, dword ptr [rbp]
	mov	rsp, rsp
	mov	edi, ebx
	call	close
	mov	dword ptr [rbp], r15d
	mov	rsp, rsp
	mov	eax, r14d
	jmp	.label_1432
.label_1433:
	lea	rsi, [rsi]
	mov	eax, ebx
.label_1432:
	lea	rsi, [rsi]
	add	rsp, 8
	nop	
	pop	rbx
	pop	r14
	pop	r15
	mov	rsp, rsp
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	nop	
	.section	.text
	.align	16
	#Procedure 0x416820

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
	je	.label_1439
	lea	rsi, [rsi]
	mov	edx, OFFSET FLAT:.str_10
	nop	
	xor	eax, eax
	mov	rdi, r14
	mov	rsp, rsp
	mov	r8, rbx
	lea	rsi, [rsi]
	call	__fprintf_chk
	lea	rdi, [rdi]
	jmp	.label_1441
.label_1439:
	mov	edx, OFFSET FLAT:.str.1_7
	lea	rsi, [rsi]
	xor	eax, eax
	lea	rdi, [rdi]
	mov	rdi, r14
	mov	rsp, rsp
	mov	rcx, rbx
	mov	r8, r9
	nop	
	call	__fprintf_chk
.label_1441:
	mov	rbp, rbp
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.2_4
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
	mov	esi, OFFSET FLAT:.str.3_3
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
	ja	.label_1442
	lea	rsi, [rsi]
	jmp	qword ptr [word ptr [+ (r12 * 8) + label_1434]]
.label_1763:
	lea	rdi, [rdi]
	xor	edi, edi
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.4_1
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
.label_1442:
	mov	rbp, rbp
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.13_0
	jmp	.label_1436
.label_1764:
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
.label_1765:
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
.label_1766:
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
	jmp	.label_1438
.label_1767:
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
	jmp	.label_1437
.label_1768:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.9_0
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
	jmp	.label_1435
.label_1769:
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
.label_1435:
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x10], rdi
.label_1437:
	nop	
	mov	qword ptr [rsp + 8], rsi
.label_1438:
	nop	
	mov	qword ptr [rsp], rax
	mov	esi, 1
	xor	eax, eax
	mov	rbp, rbp
	mov	rdi, r14
	mov	rbp, rbp
	jmp	.label_1443
.label_1771:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.12_1
.label_1436:
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
	jmp	.label_1440
.label_1770:
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
.label_1440:
	lea	rsi, [rsi]
	mov	esi, 1
	xor	eax, eax
	mov	rbp, rbp
	mov	rdi, r14
	mov	rdx, r10
.label_1443:
	mov	rbp, rbp
	call	__fprintf_chk
.label_1762:
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
	.align	16
	#Procedure 0x416c10
	.globl version_etc_ar
	.type version_etc_ar, @function
version_etc_ar:

	nop
	mov	r9, -1
	nop	dword ptr [rax + rax]
.label_1444:
	cmp	qword ptr [r8 + r9*8 + 8], 0
	lea	r9, [r9 + 1]
	lea	rdi, [rdi]
	jne	.label_1444
	lea	rdi, [rdi]
	jmp	version_etc_arn
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x416c40
	.globl version_etc_va
	.type version_etc_va, @function
version_etc_va:

	sub	rsp, 0x58
	mov	r10d, dword ptr [r8]
	nop	
	xor	r9d, r9d
	nop	dword ptr [rax + rax]
.label_1446:
	lea	rdi, [rdi]
	cmp	r10d, 0x28
	ja	.label_1445
	movsxd	r11, r10d
	mov	rbp, rbp
	add	r11, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	rbp, rbp
	mov	dword ptr [r8], r10d
	mov	rsp, rsp
	jmp	.label_1447
	nop	word ptr cs:[rax + rax]
.label_1445:
	mov	rbp, rbp
	mov	r11, qword ptr [r8 + 8]
	nop	
	lea	rax, [r11 + 8]
	mov	qword ptr [r8 + 8], rax
.label_1447:
	mov	rax, qword ptr [r11]
	mov	qword ptr [rsp + r9*8], rax
	nop	
	test	rax, rax
	nop	
	je	.label_1448
	inc	r9
	lea	rdi, [rdi]
	cmp	r9, 0xa
	jb	.label_1446
.label_1448:
	lea	rdi, [rdi]
	lea	r8, [rsp]
	mov	rsp, rsp
	call	version_etc_arn
	add	rsp, 0x58
	mov	rbp, rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x416cd0

	.globl version_etc
	.type version_etc, @function
version_etc:
	sub	rsp, 0x118
	test	al, al
	nop	
	je	.label_1449
	mov	rbp, rbp
	movaps	xmmword ptr [rsp + 0x80], xmm0
	lea	rsi, [rsi]
	movaps	xmmword ptr [rsp + 0x90], xmm1
	nop	
	movaps	xmmword ptr [rsp + 0xa0], xmm2
	movaps	xmmword ptr [rsp + 0xb0], xmm3
	nop	
	movaps	xmmword ptr [rsp + 0xc0], xmm4
	nop	
	movaps	xmmword ptr [rsp + 0xd0], xmm5
	movaps	xmmword ptr [rsp + 0xe0], xmm6
	lea	rdi, [rdi]
	movaps	xmmword ptr [rsp + 0xf0], xmm7
.label_1449:
	mov	qword ptr [rsp + 0x78], r9
	nop	
	mov	qword ptr [rsp + 0x70], r8
	lea	rax, [rsp + 0x50]
	mov	qword ptr [rsp + 0x110], rax
	mov	rbp, rbp
	lea	rax, [rsp + 0x120]
	mov	qword ptr [rsp + 0x108], rax
	mov	dword ptr [rsp + 0x104], 0x30
	lea	rsi, [rsi]
	mov	dword ptr [rsp + 0x100], 0x20
	xor	r9d, r9d
	mov	rsp, rsp
	mov	r8d, dword ptr [rsp + 0x100]
	nop	word ptr [rax + rax]
.label_1451:
	lea	rdi, [rdi]
	cmp	r8d, 0x28
	ja	.label_1450
	lea	rdi, [rdi]
	movsxd	r10, r8d
	mov	rbp, rbp
	add	r10, qword ptr [rsp + 0x110]
	add	r8d, 8
	mov	dword ptr [rsp + 0x100], r8d
	jmp	.label_1452
	nop	dword ptr [rax + rax]
.label_1450:
	mov	rsp, rsp
	mov	r10, qword ptr [rsp + 0x108]
	lea	rdi, [rdi]
	lea	rax, [r10 + 8]
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x108], rax
.label_1452:
	mov	rbp, rbp
	mov	rax, qword ptr [r10]
	mov	qword ptr [rsp + r9*8], rax
	mov	rsp, rsp
	test	rax, rax
	mov	rbp, rbp
	je	.label_1453
	inc	r9
	cmp	r9, 0xa
	jb	.label_1451
.label_1453:
	mov	rsp, rsp
	lea	r8, [rsp]
	mov	rbp, rbp
	call	version_etc_arn
	add	rsp, 0x118
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x416e10
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
	.align	16
	#Procedure 0x416ea0
	.globl xnmalloc
	.type xnmalloc, @function
xnmalloc:

	lea	rdi, [rdi]
	push	rbx
	lea	rdi, [rdi]
	mov	rbx, rsi
	mov	rsp, rsp
	movabs	rax, 0x7fffffffffffffff
	mov	rbp, rbp
	xor	edx, edx
	mov	rbp, rbp
	div	rbx
	cmp	rax, rdi
	jb	.label_1454
	imul	rbx, rdi
	nop	
	mov	rdi, rbx
	call	malloc
	test	rbx, rbx
	mov	rbp, rbp
	je	.label_1455
	test	rax, rax
	je	.label_1454
.label_1455:
	nop	
	pop	rbx
	ret	
.label_1454:
	call	xalloc_die
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x416ef0

	.globl xmalloc
	.type xmalloc, @function
xmalloc:
	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	mov	rsp, rsp
	je	.label_1456
	lea	rsi, [rsi]
	test	rax, rax
	je	.label_1457
.label_1456:
	lea	rsi, [rsi]
	pop	rbx
	mov	rbp, rbp
	ret	
.label_1457:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x416f20
	.globl xnrealloc
	.type xnrealloc, @function
xnrealloc:

	lea	rdi, [rdi]
	push	rbx
	lea	rsi, [rsi]
	mov	rbx, rdx
	nop	
	movabs	rax, 0x7fffffffffffffff
	nop	
	xor	edx, edx
	div	rbx
	mov	rbp, rbp
	cmp	rax, rsi
	jb	.label_1459
	mov	rbp, rbp
	imul	rbx, rsi
	mov	rsp, rsp
	test	rdi, rdi
	je	.label_1458
	mov	rsp, rsp
	test	rbx, rbx
	jne	.label_1458
	mov	rsp, rsp
	call	free
	mov	rsp, rsp
	xor	eax, eax
	nop	
	pop	rbx
	lea	rsi, [rsi]
	ret	
.label_1458:
	mov	rsp, rsp
	mov	rsi, rbx
	lea	rdi, [rdi]
	call	realloc
	lea	rdi, [rdi]
	test	rbx, rbx
	lea	rdi, [rdi]
	je	.label_1460
	test	rax, rax
	je	.label_1459
.label_1460:
	mov	rsp, rsp
	pop	rbx
	ret	
.label_1459:
	lea	rsi, [rsi]
	call	xalloc_die
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x416fa0

	.globl xrealloc
	.type xrealloc, @function
xrealloc:
	push	rbx
	mov	rbx, rsi
	nop	
	test	rdi, rdi
	je	.label_1461
	nop	
	test	rbx, rbx
	lea	rdi, [rdi]
	jne	.label_1461
	lea	rdi, [rdi]
	call	free
	lea	rsi, [rsi]
	xor	eax, eax
	lea	rsi, [rsi]
	pop	rbx
	ret	
.label_1461:
	mov	rsi, rbx
	lea	rdi, [rdi]
	call	realloc
	test	rbx, rbx
	je	.label_1462
	test	rax, rax
	nop	
	je	.label_1463
.label_1462:
	pop	rbx
	mov	rbp, rbp
	ret	
.label_1463:
	mov	rsp, rsp
	call	xalloc_die
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x416ff0
	.globl x2nrealloc
	.type x2nrealloc, @function
x2nrealloc:

	push	rbx
	nop	
	mov	rbx, rdx
	mov	rbp, rbp
	mov	rcx, qword ptr [rsi]
	test	rdi, rdi
	je	.label_1468
	lea	rsi, [rsi]
	movabs	rax, 0x5555555555555554
	xor	edx, edx
	div	rbx
	cmp	rax, rcx
	lea	rsi, [rsi]
	jbe	.label_1464
	lea	rdi, [rdi]
	mov	rax, rcx
	shr	rax, 1
	lea	rcx, [rcx + rax + 1]
	jmp	.label_1470
.label_1468:
	test	rcx, rcx
	mov	rbp, rbp
	jne	.label_1467
	mov	eax, 0x80
	xor	edx, edx
	div	rbx
	mov	rbp, rbp
	mov	rcx, rax
	mov	rsp, rsp
	cmp	rcx, 1
	adc	rcx, 0
.label_1467:
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rcx
	mov	rbp, rbp
	jb	.label_1469
.label_1470:
	nop	
	mov	qword ptr [rsi], rcx
	mov	rbp, rbp
	imul	rbx, rcx
	nop	
	test	rdi, rdi
	mov	rbp, rbp
	je	.label_1466
	lea	rdi, [rdi]
	test	rbx, rbx
	jne	.label_1466
	lea	rsi, [rsi]
	call	free
	nop	
	xor	eax, eax
	lea	rsi, [rsi]
	pop	rbx
	lea	rsi, [rsi]
	ret	
.label_1466:
	mov	rsi, rbx
	lea	rsi, [rsi]
	call	realloc
	test	rbx, rbx
	je	.label_1465
	test	rax, rax
	mov	rbp, rbp
	je	.label_1464
.label_1465:
	mov	rbp, rbp
	pop	rbx
	mov	rbp, rbp
	ret	
.label_1464:
	call	xalloc_die
.label_1469:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4170d0
	.globl xcharalloc
	.type xcharalloc, @function
xcharalloc:

	mov	rbp, rbp
	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	je	.label_1471
	test	rax, rax
	mov	rbp, rbp
	je	.label_1472
.label_1471:
	pop	rbx
	ret	
.label_1472:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x4170f0
	.globl x2realloc
	.type x2realloc, @function
x2realloc:

	push	rbx
	mov	rsp, rsp
	mov	rax, qword ptr [rsi]
	nop	
	test	rdi, rdi
	je	.label_1476
	movabs	rcx, 0x5555555555555554
	lea	rdi, [rdi]
	cmp	rax, rcx
	jae	.label_1477
	mov	rbx, rax
	mov	rbp, rbp
	shr	rbx, 1
	add	rbx, rax
	inc	rbx
	mov	qword ptr [rsi], rbx
	jne	.label_1475
	call	free
	xor	eax, eax
	jmp	.label_1473
.label_1476:
	mov	rbp, rbp
	test	rax, rax
	mov	ebx, 0x80
	cmovne	rbx, rax
	mov	rsp, rsp
	test	rbx, rbx
	js	.label_1474
	mov	rsp, rsp
	mov	qword ptr [rsi], rbx
.label_1475:
	mov	rsi, rbx
	call	realloc
	nop	
	test	rbx, rbx
	lea	rsi, [rsi]
	je	.label_1473
	lea	rdi, [rdi]
	test	rax, rax
	mov	rsp, rsp
	je	.label_1474
.label_1473:
	lea	rsi, [rsi]
	pop	rbx
	lea	rsi, [rsi]
	ret	
.label_1474:
	mov	rbp, rbp
	call	xalloc_die
.label_1477:
	mov	rsp, rsp
	call	xalloc_die
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x417180
	.globl xzalloc
	.type xzalloc, @function
xzalloc:

	push	r14
	lea	rsi, [rsi]
	push	rbx
	push	rax
	mov	rbx, rdi
	nop	
	call	malloc
	mov	r14, rax
	test	rbx, rbx
	mov	rbp, rbp
	je	.label_1478
	lea	rsi, [rsi]
	test	r14, r14
	je	.label_1479
.label_1478:
	xor	esi, esi
	mov	rdi, r14
	mov	rdx, rbx
	lea	rdi, [rdi]
	call	memset
	lea	rdi, [rdi]
	mov	rax, r14
	nop	
	add	rsp, 8
	mov	rsp, rsp
	pop	rbx
	lea	rdi, [rdi]
	pop	r14
	lea	rdi, [rdi]
	ret	
.label_1479:
	nop	
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4171e0

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
	jb	.label_1480
	nop	
	call	rpl_calloc
	test	rax, rax
	je	.label_1480
	pop	rcx
	ret	
.label_1480:
	call	xalloc_die
	nop	
	.section	.text
	.align	16
	#Procedure 0x417210

	.globl xmemdup
	.type xmemdup, @function
xmemdup:
	lea	rsi, [rsi]
	push	r15
	push	r14
	push	rbx
	nop	
	mov	rbx, rsi
	lea	rsi, [rsi]
	mov	r14, rdi
	mov	rdi, rbx
	call	malloc
	mov	rsp, rsp
	mov	r15, rax
	mov	rbp, rbp
	test	rbx, rbx
	je	.label_1482
	mov	rbp, rbp
	test	r15, r15
	lea	rdi, [rdi]
	je	.label_1481
.label_1482:
	mov	rdi, r15
	mov	rsi, r14
	mov	rdx, rbx
	mov	rbp, rbp
	call	memcpy
	mov	rax, r15
	pop	rbx
	lea	rdi, [rdi]
	pop	r14
	mov	rbp, rbp
	pop	r15
	ret	
.label_1481:
	nop	
	call	xalloc_die
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x417270
	.globl xstrdup
	.type xstrdup, @function
xstrdup:

	push	r15
	lea	rsi, [rsi]
	push	r14
	mov	rsp, rsp
	push	rbx
	mov	r14, rdi
	call	strlen
	mov	rbp, rbp
	mov	rbx, rax
	lea	rdi, [rbx + 1]
	mov	rbp, rbp
	call	malloc
	mov	rsp, rsp
	mov	r15, rax
	mov	rsp, rsp
	inc	rbx
	lea	rsi, [rsi]
	je	.label_1483
	test	r15, r15
	lea	rdi, [rdi]
	je	.label_1484
.label_1483:
	mov	rbp, rbp
	mov	rdi, r15
	mov	rsi, r14
	mov	rdx, rbx
	call	memcpy
	mov	rax, r15
	pop	rbx
	pop	r14
	nop	
	pop	r15
	nop	
	ret	
.label_1484:
	call	xalloc_die
	nop	
	.section	.text
	.align	16
	#Procedure 0x4172d0

	.globl xalloc_die
	.type xalloc_die, @function
xalloc_die:
	mov	rbp, rbp
	push	rbx
	mov	ebx,  dword ptr [dword ptr [rip + exit_failure]]
	nop	
	xor	edi, edi
	mov	rbp, rbp
	mov	esi, OFFSET FLAT:.str.1_8
	lea	rsi, [rsi]
	mov	edx, 5
	nop	
	call	dcgettext
	mov	rcx, rax
	mov	rsp, rsp
	xor	esi, esi
	nop	
	mov	edx, OFFSET FLAT:.str_0
	xor	eax, eax
	mov	edi, ebx
	call	error
	mov	rbp, rbp
	call	abort
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x417320
	.globl xmemcoll
	.type xmemcoll, @function
xmemcoll:

	lea	rdi, [rdi]
	push	rbp
	push	r15
	nop	
	push	r14
	mov	rbp, rbp
	push	r12
	lea	rdi, [rdi]
	push	rbx
	mov	rsp, rsp
	mov	r14, rcx
	mov	r15, rdx
	mov	r12, rsi
	mov	rbp, rbp
	mov	rbx, rdi
	call	memcoll
	mov	ebp, eax
	lea	rsi, [rsi]
	call	__errno_location
	mov	edi, dword ptr [rax]
	test	edi, edi
	lea	rsi, [rsi]
	je	.label_1485
	lea	rsi, [rsi]
	mov	rsi, rbx
	lea	rdi, [rdi]
	mov	rdx, r12
	mov	rsp, rsp
	mov	rcx, r15
	mov	r8, r14
	lea	rsi, [rsi]
	call	collate_error
.label_1485:
	mov	eax, ebp
	pop	rbx
	lea	rsi, [rsi]
	pop	r12
	lea	rdi, [rdi]
	pop	r14
	pop	r15
	mov	rbp, rbp
	pop	rbp
	mov	rbp, rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x417390

	.globl collate_error
	.type collate_error, @function
collate_error:
	lea	rdi, [rdi]
	push	rbp
	mov	rsp, rsp
	push	r15
	lea	rsi, [rsi]
	push	r14
	lea	rdi, [rdi]
	push	r13
	push	r12
	push	rbx
	lea	rsi, [rsi]
	push	rax
	mov	qword ptr [rsp], r8
	mov	rsp, rsp
	mov	rbx, rcx
	mov	r12, rdx
	mov	rbp, rbp
	mov	r13, rsi
	mov	ebp, edi
	mov	rbp, rbp
	xor	edi, edi
	mov	rbp, rbp
	mov	esi, OFFSET FLAT:.str_11
	mov	rsp, rsp
	mov	edx, 5
	lea	rdi, [rdi]
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	rsp, rsp
	mov	esi, ebp
	mov	rdx, rcx
	call	error
	xor	edi, edi
	lea	rsi, [rsi]
	mov	esi, OFFSET FLAT:.str.1_9
	mov	rbp, rbp
	mov	edx, 5
	nop	
	call	dcgettext
	lea	rdi, [rdi]
	mov	rcx, rax
	mov	rbp, rbp
	xor	edi, edi
	lea	rsi, [rsi]
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	nop	
	call	error
	mov	r14d,  dword ptr [dword ptr [rip + exit_failure]]
	xor	edi, edi
	mov	rbp, rbp
	mov	esi, OFFSET FLAT:.str.2_5
	lea	rsi, [rsi]
	mov	edx, 5
	call	dcgettext
	nop	
	mov	r15, rax
	xor	edi, edi
	mov	esi, 8
	mov	rsp, rsp
	mov	rdx, r13
	mov	rsp, rsp
	mov	rcx, r12
	call	quotearg_n_style_mem
	mov	rbp, rax
	mov	edi, 1
	mov	esi, 8
	mov	rsp, rsp
	mov	rdx, rbx
	mov	rcx, qword ptr [rsp]
	call	quotearg_n_style_mem
	mov	rbx, rax
	xor	esi, esi
	lea	rsi, [rsi]
	xor	eax, eax
	nop	
	mov	edi, r14d
	mov	rdx, r15
	mov	rcx, rbp
	mov	rsp, rsp
	mov	r8, rbx
	lea	rdi, [rdi]
	add	rsp, 8
	pop	rbx
	pop	r12
	mov	rsp, rsp
	pop	r13
	nop	
	pop	r14
	mov	rsp, rsp
	pop	r15
	mov	rbp, rbp
	pop	rbp
	mov	rbp, rbp
	jmp	error
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4174c0

	.globl xmemcoll0
	.type xmemcoll0, @function
xmemcoll0:
	mov	rsp, rsp
	push	rbp
	lea	rsi, [rsi]
	push	r15
	push	r14
	lea	rsi, [rsi]
	push	r12
	push	rbx
	mov	rsp, rsp
	mov	r15, rcx
	lea	rsi, [rsi]
	mov	r14, rdx
	lea	rdi, [rdi]
	mov	rbx, rsi
	lea	rdi, [rdi]
	mov	r12, rdi
	lea	rsi, [rsi]
	call	memcoll0
	mov	ebp, eax
	lea	rsi, [rsi]
	call	__errno_location
	mov	edi, dword ptr [rax]
	test	edi, edi
	nop	
	je	.label_1486
	dec	rbx
	mov	rbp, rbp
	dec	r15
	lea	rdi, [rdi]
	mov	rsi, r12
	mov	rdx, rbx
	mov	rsp, rsp
	mov	rcx, r14
	mov	rsp, rsp
	mov	r8, r15
	nop	
	call	collate_error
.label_1486:
	mov	eax, ebp
	lea	rdi, [rdi]
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	nop	
	.section	.text
	.align	16
	#Procedure 0x417540

	.globl xnanosleep
	.type xnanosleep, @function
xnanosleep:
	push	r15
	mov	rsp, rsp
	push	r14
	push	rbx
	lea	rdi, [rdi]
	sub	rsp, 0x10
	lea	rdi, [rdi]
	call	dtotimespec
	mov	rsp, rsp
	mov	qword ptr [rsp], rax
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 8], rdx
	call	__errno_location
	mov	rsp, rsp
	mov	r14, rax
	mov	dword ptr [r14], 0
	mov	rbp, rbp
	xor	ebx, ebx
	lea	rdi, [rsp]
	lea	rsi, [rsi]
	xor	esi, esi
	lea	rsi, [rsi]
	call	rpl_nanosleep
	test	eax, eax
	je	.label_1487
	lea	r15, [rsp]
	nop	word ptr cs:[rax + rax]
.label_1488:
	mov	eax, dword ptr [r14]
	mov	ebx, 0xffffffff
	or	eax, 4
	cmp	eax, 4
	jne	.label_1487
	mov	dword ptr [r14], 0
	lea	rdi, [rdi]
	xor	ebx, ebx
	mov	rsp, rsp
	xor	esi, esi
	mov	rdi, r15
	call	rpl_nanosleep
	lea	rsi, [rsi]
	test	eax, eax
	lea	rdi, [rdi]
	jne	.label_1488
.label_1487:
	nop	
	mov	eax, ebx
	lea	rsi, [rsi]
	add	rsp, 0x10
	pop	rbx
	mov	rbp, rbp
	pop	r14
	pop	r15
	mov	rsp, rsp
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4175f0

	.globl xstrtoul
	.type xstrtoul, @function
xstrtoul:
	push	rbp
	push	r15
	nop	
	push	r14
	lea	rdi, [rdi]
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x18
	lea	rsi, [rsi]
	mov	r14, r8
	nop	
	mov	r12d, edx
	mov	rbp, rsi
	mov	rsp, rsp
	mov	rbx, rdi
	cmp	r12d, 0x25
	lea	rsi, [rsi]
	jae	.label_1512
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x10], rcx
	nop	
	call	__errno_location
	mov	rbp, rbp
	mov	r15, rax
	mov	rbp, rbp
	mov	dword ptr [r15], 0
	call	__ctype_b_loc
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rax]
	mov	rdx, rbx
	nop	
.label_1507:
	mov	rbp, rbp
	movzx	eax, byte ptr [rdx]
	inc	rdx
	mov	rbp, rbp
	test	byte ptr [rcx + rax*2 + 1], 0x20
	lea	rdi, [rdi]
	jne	.label_1507
	mov	rbp, rbp
	test	rbp, rbp
	lea	rdi, [rdi]
	lea	rsi, [rsp + 8]
	lea	rsi, [rsi]
	cmovne	rsi, rbp
	movzx	eax, al
	mov	rsp, rsp
	mov	r13d, 4
	cmp	eax, 0x2d
	lea	rsi, [rsi]
	je	.label_1493
	mov	rsp, rsp
	mov	rdi, rbx
	mov	edx, r12d
	mov	rbp, rsi
	call	strtoul
	mov	rcx, rbp
	mov	rbp, rax
	mov	rbp, rbp
	mov	r12, qword ptr [rcx]
	mov	rbp, rbp
	cmp	r12, rbx
	mov	rbp, rbp
	je	.label_1497
	mov	eax, dword ptr [r15]
	lea	rsi, [rsi]
	xor	ebx, ebx
	lea	rsi, [rsi]
	test	eax, eax
	je	.label_1504
	cmp	eax, 0x22
	lea	rsi, [rsi]
	jne	.label_1493
	mov	ebx, 1
.label_1504:
	test	r14, r14
	jne	.label_1509
	mov	rbp, rbp
	jmp	.label_1500
.label_1497:
	mov	rsp, rsp
	test	r14, r14
	je	.label_1493
	movsx	esi, byte ptr [rbx]
	test	esi, esi
	lea	rdi, [rdi]
	je	.label_1493
	nop	
	mov	rdi, r14
	mov	rsp, rsp
	mov	rbx, rcx
	call	strchr
	nop	
	mov	rcx, rbx
	mov	rbp, rbp
	xor	ebx, ebx
	mov	rbp, rbp
	mov	ebp, 1
	test	rax, rax
	je	.label_1493
.label_1509:
	movsx	r13d, byte ptr [r12]
	nop	
	test	r13d, r13d
	mov	rsp, rsp
	je	.label_1500
	mov	rsp, rsp
	mov	qword ptr [rsp], rcx
	nop	
	mov	rdi, r14
	mov	esi, r13d
	mov	rsp, rsp
	call	strchr
	test	rax, rax
	je	.label_1494
	mov	rsp, rsp
	mov	r15d, 1
	lea	rdi, [rdi]
	mov	esi, 0x400
	lea	eax, [r13 - 0x45]
	cmp	eax, 0x2f
	ja	.label_1495
	movabs	rdx, 0x814400308945
	lea	rsi, [rsi]
	bt	rdx, rax
	lea	rdi, [rdi]
	jae	.label_1495
	mov	esi, 0x30
	mov	rdi, r14
	lea	rdi, [rdi]
	call	strchr
	nop	
	mov	r15d, 1
	mov	rbp, rbp
	mov	esi, 0x400
	test	rax, rax
	je	.label_1495
	movsx	eax, byte ptr [r12 + 1]
	mov	rsp, rsp
	mov	r15d, 1
	mov	esi, 0x400
	cmp	eax, 0x42
	nop	
	je	.label_1502
	nop	
	cmp	eax, 0x44
	je	.label_1502
	cmp	eax, 0x69
	jne	.label_1495
	mov	rbp, rbp
	movzx	eax, byte ptr [r12 + 2]
	lea	rsi, [rsi]
	mov	r15d, 3
	cmp	eax, 0x42
	je	.label_1508
	mov	r15d, 1
.label_1508:
	lea	rdi, [rdi]
	mov	esi, 0x400
	mov	rsp, rsp
	jmp	.label_1495
.label_1502:
	mov	r15d, 2
	nop	
	mov	esi, 0x3e8
.label_1495:
	cmp	r13d, 0x59
	jg	.label_1492
	lea	eax, [r13 - 0x42]
	mov	rbp, rbp
	cmp	eax, 0xe
	ja	.label_1513
	jmp	qword ptr [word ptr [+ (rax * 8) + label_1496]]
.label_1717:
	nop	
	mov	rax, rbp
	shr	rax, 0x36
	setne	dl
	mov	rsp, rsp
	shl	rbp, 0xa
	jmp	.label_1499
.label_1492:
	cmp	r13d, 0x73
	mov	rbp, rbp
	jg	.label_1505
	lea	edx, [r13 - 0x62]
	cmp	edx, 0xb
	ja	.label_1503
	xor	eax, eax
	jmp	qword ptr [word ptr [+ (rdx * 8) + label_1489]]
.label_1850:
	nop	
	mov	rax, rbp
	shr	rax, 0x37
	setne	dl
	shl	rbp, 9
.label_1499:
	cmp	rax, 1
	mov	rbp, rbp
	sbb	rax, rax
	not	rax
	lea	rdi, [rdi]
	or	rbp, rax
	movzx	eax, dl
	jmp	.label_1511
.label_1513:
	lea	rdi, [rdi]
	cmp	r13d, 0x54
	lea	rdi, [rdi]
	je	.label_1491
	mov	rbp, rbp
	cmp	r13d, 0x59
	jne	.label_1494
	mov	rsp, rsp
	mov	rdi, -1
	mov	rax, -1
	nop	
	xor	edx, edx
	mov	rsp, rsp
	div	rsi
	cmp	rax, rbp
	nop	
	sbb	r8b, r8b
	nop	
	mov	rcx, rbp
	lea	rsi, [rsi]
	imul	rcx, rsi
	lea	rdi, [rdi]
	cmp	rax, rbp
	cmovb	rcx, rdi
	cmp	rax, rcx
	sbb	dl, dl
	mov	rbp, rcx
	imul	rbp, rsi
	lea	rsi, [rsi]
	cmp	rax, rcx
	lea	rsi, [rsi]
	cmovb	rbp, rdi
	lea	rdi, [rdi]
	cmp	rax, rbp
	sbb	r9b, r9b
	lea	rdi, [rdi]
	mov	rcx, rbp
	mov	rbp, rbp
	imul	rcx, rsi
	nop	
	cmp	rax, rbp
	lea	rdi, [rdi]
	cmovb	rcx, rdi
	cmp	rax, rcx
	lea	rsi, [rsi]
	sbb	r10b, r10b
	mov	rbp, rbp
	mov	rbp, rcx
	imul	rbp, rsi
	lea	rdi, [rdi]
	cmp	rax, rcx
	cmovb	rbp, rdi
	mov	rsp, rsp
	cmp	rax, rbp
	mov	rsp, rsp
	sbb	r11b, r11b
	lea	rdi, [rdi]
	mov	rcx, rbp
	imul	rcx, rsi
	lea	rsi, [rsi]
	cmp	rax, rbp
	lea	rsi, [rsi]
	cmovb	rcx, rdi
	lea	rdi, [rdi]
	cmp	rax, rcx
	sbb	r14b, r14b
	nop	
	mov	rbp, rcx
	imul	rbp, rsi
	nop	
	cmp	rax, rcx
	mov	rsp, rsp
	cmovb	rbp, rdi
	nop	
	cmp	rax, rbp
	lea	rsi, [rsi]
	sbb	r13b, r13b
	nop	
	mov	rcx, rbp
	imul	rcx, rsi
	nop	
	cmp	rax, rbp
	cmovb	rcx, rdi
	nop	
	cmp	rax, rcx
	sbb	bpl, bpl
	imul	rsi, rcx
	lea	rsi, [rsi]
	cmp	rax, rcx
	cmovb	rsi, rdi
	nop	
	or	dl, r8b
	lea	rsi, [rsi]
	or	dl, r9b
	or	dl, r10b
	mov	rsp, rsp
	or	dl, r11b
	and	dl, 1
	or	dl, r14b
	mov	rbp, rbp
	or	dl, r13b
	nop	
	or	dl, bpl
	mov	rbp, rbp
	jmp	.label_1498
.label_1505:
	nop	
	cmp	r13d, 0x74
	mov	rbp, rbp
	je	.label_1491
	mov	rsp, rsp
	cmp	r13d, 0x77
	jne	.label_1494
	mov	rbp, rbp
	lea	rax, [rbp + rbp]
	lea	rsi, [rsi]
	test	rbp, rbp
	mov	rcx, -1
	cmovns	rcx, rax
	shr	rbp, 0x3f
	mov	rsp, rsp
	mov	eax, ebp
	mov	rbp, rcx
	jmp	.label_1511
.label_1719:
	lea	rsi, [rsi]
	mov	r8, -1
	mov	rbp, rbp
	mov	rax, -1
	nop	
	xor	edx, edx
	div	rsi
	cmp	rax, rbp
	mov	rbp, rbp
	sbb	r9b, r9b
	mov	rsp, rsp
	mov	rdi, rbp
	imul	rdi, rsi
	cmp	rax, rbp
	cmovb	rdi, r8
	mov	rsp, rsp
	cmp	rax, rdi
	lea	rsi, [rsi]
	sbb	dl, dl
	lea	rdi, [rdi]
	mov	rbp, rdi
	imul	rbp, rsi
	lea	rsi, [rsi]
	cmp	rax, rdi
	nop	
	cmovb	rbp, r8
	lea	rsi, [rsi]
	cmp	rax, rbp
	sbb	dil, dil
	imul	rsi, rbp
	cmp	rax, rbp
	cmovb	rsi, r8
	nop	
	or	dl, r9b
	or	dl, dil
	nop	
	jmp	.label_1506
.label_1720:
	mov	rbp, rbp
	mov	rdi, -1
	lea	rdi, [rdi]
	mov	rax, -1
	xor	edx, edx
	lea	rsi, [rsi]
	div	rsi
	mov	rsp, rsp
	imul	rsi, rbp
	lea	rdi, [rdi]
	cmp	rax, rbp
	cmovb	rsi, rdi
	sbb	eax, eax
	mov	rsp, rsp
	and	eax, 1
	jmp	.label_1490
.label_1721:
	mov	r8, -1
	nop	
	mov	rax, -1
	lea	rsi, [rsi]
	xor	edx, edx
	div	rsi
	cmp	rax, rbp
	lea	rsi, [rsi]
	sbb	r9b, r9b
	mov	rdi, rbp
	lea	rsi, [rsi]
	imul	rdi, rsi
	cmp	rax, rbp
	cmovb	rdi, r8
	mov	rsp, rsp
	cmp	rax, rdi
	sbb	dl, dl
	imul	rsi, rdi
	lea	rdi, [rdi]
	cmp	rax, rdi
	cmovb	rsi, r8
	or	dl, r9b
	nop	
	jmp	.label_1506
.label_1491:
	mov	rbp, rbp
	mov	r9, -1
	nop	
	mov	rax, -1
	xor	edx, edx
	div	rsi
	cmp	rax, rbp
	lea	rdi, [rdi]
	sbb	r8b, r8b
	lea	rdi, [rdi]
	mov	rdi, rbp
	imul	rdi, rsi
	nop	
	cmp	rax, rbp
	mov	rbp, rbp
	cmovb	rdi, r9
	lea	rsi, [rsi]
	cmp	rax, rdi
	mov	rbp, rbp
	sbb	dl, dl
	mov	rbp, rdi
	imul	rbp, rsi
	cmp	rax, rdi
	cmovb	rbp, r9
	lea	rdi, [rdi]
	cmp	rax, rbp
	sbb	r10b, r10b
	mov	rdi, rbp
	mov	rsp, rsp
	imul	rdi, rsi
	mov	rbp, rbp
	cmp	rax, rbp
	cmovb	rdi, r9
	mov	rbp, rbp
	cmp	rax, rdi
	nop	
	sbb	cl, cl
	imul	rsi, rdi
	cmp	rax, rdi
	lea	rsi, [rsi]
	cmovb	rsi, r9
	lea	rdi, [rdi]
	or	dl, r8b
	mov	rbp, rbp
	or	dl, r10b
	or	dl, cl
	jmp	.label_1506
.label_1503:
	cmp	r13d, 0x5a
	lea	rdi, [rdi]
	jne	.label_1494
	lea	rsi, [rsi]
	mov	rdi, -1
	nop	
	mov	rax, -1
	nop	
	xor	edx, edx
	div	rsi
	lea	rsi, [rsi]
	cmp	rax, rbp
	nop	
	sbb	r8b, r8b
	mov	rbp, rbp
	mov	rcx, rbp
	mov	rbp, rbp
	imul	rcx, rsi
	cmp	rax, rbp
	cmovb	rcx, rdi
	mov	rbp, rbp
	cmp	rax, rcx
	lea	rdi, [rdi]
	sbb	dl, dl
	mov	rbp, rcx
	imul	rbp, rsi
	cmp	rax, rcx
	cmovb	rbp, rdi
	nop	
	cmp	rax, rbp
	mov	rbp, rbp
	sbb	r9b, r9b
	mov	rcx, rbp
	nop	
	imul	rcx, rsi
	mov	rsp, rsp
	cmp	rax, rbp
	lea	rsi, [rsi]
	cmovb	rcx, rdi
	cmp	rax, rcx
	sbb	r10b, r10b
	mov	rbp, rbp
	mov	rbp, rcx
	lea	rdi, [rdi]
	imul	rbp, rsi
	lea	rsi, [rsi]
	cmp	rax, rcx
	cmovb	rbp, rdi
	cmp	rax, rbp
	sbb	r11b, r11b
	mov	rsp, rsp
	mov	rcx, rbp
	imul	rcx, rsi
	lea	rdi, [rdi]
	cmp	rax, rbp
	cmovb	rcx, rdi
	nop	
	cmp	rax, rcx
	sbb	r14b, r14b
	mov	rbp, rcx
	imul	rbp, rsi
	mov	rbp, rbp
	cmp	rax, rcx
	lea	rdi, [rdi]
	cmovb	rbp, rdi
	cmp	rax, rbp
	sbb	cl, cl
	imul	rsi, rbp
	cmp	rax, rbp
	lea	rsi, [rsi]
	cmovb	rsi, rdi
	mov	rbp, rbp
	or	dl, r8b
	or	dl, r9b
	lea	rsi, [rsi]
	or	dl, r10b
	lea	rsi, [rsi]
	and	dl, 1
	or	dl, r11b
	mov	rbp, rbp
	or	dl, r14b
	or	dl, cl
.label_1498:
	lea	rsi, [rsi]
	movzx	eax, dl
	and	eax, 1
	jmp	.label_1490
.label_1494:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp + 0x10]
	lea	rdi, [rdi]
	mov	qword ptr [rax], rbp
	or	ebx, 2
	mov	rsp, rsp
	jmp	.label_1501
.label_1718:
	lea	rdi, [rdi]
	mov	r9, -1
	mov	rbp, rbp
	mov	rax, -1
	xor	edx, edx
	mov	rbp, rbp
	div	rsi
	cmp	rax, rbp
	mov	rbp, rbp
	sbb	r8b, r8b
	lea	rdi, [rdi]
	mov	rdi, rbp
	mov	rbp, rbp
	imul	rdi, rsi
	mov	rsp, rsp
	cmp	rax, rbp
	cmovb	rdi, r9
	cmp	rax, rdi
	nop	
	sbb	dl, dl
	mov	rbp, rdi
	lea	rsi, [rsi]
	imul	rbp, rsi
	mov	rsp, rsp
	cmp	rax, rdi
	cmovb	rbp, r9
	mov	rsp, rsp
	cmp	rax, rbp
	sbb	r10b, r10b
	mov	rbp, rbp
	mov	rdi, rbp
	imul	rdi, rsi
	cmp	rax, rbp
	cmovb	rdi, r9
	nop	
	cmp	rax, rdi
	sbb	r11b, r11b
	mov	rbp, rbp
	mov	rbp, rdi
	nop	
	imul	rbp, rsi
	cmp	rax, rdi
	nop	
	cmovb	rbp, r9
	mov	rbp, rbp
	cmp	rax, rbp
	sbb	r14b, r14b
	nop	
	mov	rdi, rbp
	imul	rdi, rsi
	cmp	rax, rbp
	cmovb	rdi, r9
	cmp	rax, rdi
	sbb	bpl, bpl
	imul	rsi, rdi
	cmp	rax, rdi
	cmovb	rsi, r9
	or	dl, r8b
	or	dl, r10b
	lea	rsi, [rsi]
	or	dl, r11b
	lea	rsi, [rsi]
	or	dl, r14b
	lea	rdi, [rdi]
	or	dl, bpl
.label_1506:
	lea	rdi, [rdi]
	and	dl, 1
	lea	rsi, [rsi]
	movzx	eax, dl
.label_1490:
	mov	rbp, rsi
.label_1511:
	or	eax, ebx
	nop	
	lea	rcx, [r12 + r15]
	mov	rdx, qword ptr [rsp]
	mov	rbp, rbp
	mov	qword ptr [rdx], rcx
	lea	rdi, [rdi]
	cmp	byte ptr [r12 + r15], 0
	mov	rbp, rbp
	je	.label_1510
	or	eax, 2
.label_1510:
	mov	ebx, eax
.label_1500:
	mov	rax, qword ptr [rsp + 0x10]
	nop	
	mov	qword ptr [rax], rbp
.label_1501:
	mov	r13d, ebx
.label_1493:
	mov	eax, r13d
	mov	rsp, rsp
	add	rsp, 0x18
	pop	rbx
	mov	rsp, rsp
	pop	r12
	mov	rbp, rbp
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_1722:
	mov	rdi, -1
	mov	rax, -1
	xor	edx, edx
	div	rsi
	cmp	rax, rbp
	mov	rbp, rbp
	sbb	r8b, r8b
	mov	rdx, rbp
	lea	rsi, [rsi]
	imul	rdx, rsi
	nop	
	cmp	rax, rbp
	lea	rdi, [rdi]
	cmovb	rdx, rdi
	cmp	rax, rdx
	sbb	cl, cl
	lea	rdi, [rdi]
	mov	rbp, rdx
	nop	
	imul	rbp, rsi
	mov	rbp, rbp
	cmp	rax, rdx
	cmovb	rbp, rdi
	cmp	rax, rbp
	nop	
	sbb	r9b, r9b
	lea	rsi, [rsi]
	mov	rdx, rbp
	lea	rsi, [rsi]
	imul	rdx, rsi
	nop	
	cmp	rax, rbp
	mov	rbp, rbp
	cmovb	rdx, rdi
	nop	
	cmp	rax, rdx
	mov	rsp, rsp
	sbb	r10b, r10b
	mov	rbp, rbp
	mov	rbp, rdx
	mov	rbp, rbp
	imul	rbp, rsi
	lea	rdi, [rdi]
	cmp	rax, rdx
	cmovb	rbp, rdi
	nop	
	cmp	rax, rbp
	sbb	dl, dl
	lea	rsi, [rsi]
	imul	rsi, rbp
	cmp	rax, rbp
	lea	rdi, [rdi]
	cmovb	rsi, rdi
	mov	rbp, rbp
	or	cl, r8b
	or	cl, r9b
	or	cl, r10b
	nop	
	or	cl, dl
	and	cl, 1
	lea	rdi, [rdi]
	movzx	eax, cl
	jmp	.label_1490
.label_1512:
	mov	edi, OFFSET FLAT:.str_12
	lea	rdi, [rdi]
	mov	esi, OFFSET FLAT:.str.1_10
	mov	edx, 0x54
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.xstrtoul
	call	__assert_fail
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x417ed0

	.globl xstrtol_fatal
	.type xstrtol_fatal, @function
xstrtol_fatal:
	lea	rsi, [rsi]
	push	rbp
	nop	
	push	r15
	push	r14
	lea	rdi, [rdi]
	push	rbx
	mov	rbp, rbp
	push	rax
	lea	rdi, [rdi]
	mov	r15, r8
	mov	eax, esi
	nop	
	mov	ebp,  dword ptr [dword ptr [rip + exit_failure]]
	lea	rsi, [rsi]
	dec	edi
	nop	
	cmp	edi, 4
	jae	.label_1514
	movsxd	rsi, edi
	mov	rsi,  qword ptr [word ptr [+ (rsi * 8) + label_1516]]
	mov	rbp, rbp
	cdqe	
	test	eax, eax
	nop	
	jns	.label_1517
	nop	
	lea	r14, [rsp + 6]
	lea	rsi, [rsi]
	mov	ebx, OFFSET FLAT:.str_13
	mov	rsp, rsp
	sub	rbx, rax
	mov	byte ptr [rsp + 6], dl
	mov	byte ptr [rsp + 7], 0
	mov	rsp, rsp
	jmp	.label_1515
.label_1517:
	mov	rbp, rbp
	shl	rax, 5
	mov	r14, qword ptr [rcx + rax]
	lea	rdi, [rdi]
	mov	ebx, OFFSET FLAT:.str_13
.label_1515:
	xor	edi, edi
	nop	
	mov	edx, 5
	call	dcgettext
	lea	rdi, [rdi]
	mov	rcx, rax
	lea	rdi, [rdi]
	xor	esi, esi
	xor	eax, eax
	mov	edi, ebp
	mov	rdx, rcx
	mov	rcx, rbx
	mov	r8, r14
	mov	r9, r15
	mov	rbp, rbp
	call	error
.label_1514:
	call	abort
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x417f80

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
	mov	r14, r8
	nop	
	mov	r12d, edx
	mov	rsp, rsp
	mov	rbp, rsi
	lea	rsi, [rsi]
	mov	rbx, rdi
	cmp	r12d, 0x25
	jae	.label_1518
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x10], rcx
	call	__errno_location
	lea	rsi, [rsi]
	mov	r15, rax
	mov	dword ptr [r15], 0
	call	__ctype_b_loc
	mov	rcx, qword ptr [rax]
	mov	rdx, rbx
	nop	dword ptr [rax]
.label_1532:
	movzx	eax, byte ptr [rdx]
	inc	rdx
	lea	rdi, [rdi]
	test	byte ptr [rcx + rax*2 + 1], 0x20
	jne	.label_1532
	mov	rbp, rbp
	test	rbp, rbp
	lea	rsi, [rsp + 8]
	cmovne	rsi, rbp
	nop	
	movzx	eax, al
	mov	rbp, rbp
	mov	r13d, 4
	cmp	eax, 0x2d
	mov	rsp, rsp
	je	.label_1521
	mov	dword ptr [rsp + 4], 0
	xor	ecx, ecx
	mov	rdi, rbx
	lea	rsi, [rsi]
	mov	rbp, rsi
	lea	rdi, [rdi]
	mov	edx, r12d
	call	__strtoul_internal
	nop	
	mov	rcx, rbp
	mov	rbp, rax
	lea	rsi, [rsi]
	mov	r12, qword ptr [rcx]
	nop	
	cmp	r12, rbx
	nop	
	je	.label_1528
	mov	eax, dword ptr [r15]
	test	eax, eax
	mov	rsp, rsp
	je	.label_1535
	mov	rsp, rsp
	cmp	eax, 0x22
	jne	.label_1521
	mov	dword ptr [rsp + 4], 1
.label_1535:
	lea	rsi, [rsi]
	test	r14, r14
	jne	.label_1543
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0x10]
	mov	qword ptr [rax], rbp
	mov	r13d, dword ptr [rsp + 4]
	lea	rsi, [rsi]
	jmp	.label_1521
.label_1528:
	test	r14, r14
	lea	rdi, [rdi]
	je	.label_1521
	movsx	esi, byte ptr [rbx]
	lea	rsi, [rsi]
	test	esi, esi
	lea	rsi, [rsi]
	je	.label_1521
	nop	
	mov	rdi, r14
	mov	rsp, rsp
	mov	rbx, rcx
	call	strchr
	mov	rsp, rsp
	mov	rcx, rbx
	mov	dword ptr [rsp + 4], 0
	mov	ebp, 1
	test	rax, rax
	je	.label_1521
.label_1543:
	lea	rdi, [rdi]
	movsx	r13d, byte ptr [r12]
	mov	rbp, rbp
	test	r13d, r13d
	mov	rsp, rsp
	je	.label_1537
	lea	rdi, [rdi]
	mov	r15, rcx
	lea	rdi, [rdi]
	mov	rdi, r14
	mov	rbp, rbp
	mov	esi, r13d
	call	strchr
	mov	rsp, rsp
	test	rax, rax
	mov	rsp, rsp
	je	.label_1530
	mov	ecx, 1
	lea	rdi, [rdi]
	mov	esi, 0x400
	lea	eax, [r13 - 0x45]
	cmp	eax, 0x2f
	ja	.label_1520
	nop	
	movabs	rdx, 0x814400308945
	bt	rdx, rax
	jae	.label_1520
	lea	rdi, [rdi]
	mov	esi, 0x30
	mov	rdi, r14
	lea	rdi, [rdi]
	call	strchr
	mov	rbp, rbp
	mov	ecx, 1
	lea	rdi, [rdi]
	mov	esi, 0x400
	test	rax, rax
	mov	rsp, rsp
	je	.label_1520
	movsx	eax, byte ptr [r12 + 1]
	lea	rdi, [rdi]
	mov	ecx, 1
	nop	
	mov	esi, 0x400
	cmp	eax, 0x42
	je	.label_1529
	cmp	eax, 0x44
	nop	
	je	.label_1529
	cmp	eax, 0x69
	jne	.label_1520
	movzx	eax, byte ptr [r12 + 2]
	mov	rbp, rbp
	mov	ecx, 3
	cmp	eax, 0x42
	je	.label_1522
	lea	rdi, [rdi]
	mov	ecx, 1
.label_1522:
	mov	rsp, rsp
	mov	esi, 0x400
	jmp	.label_1520
.label_1537:
	mov	rax, qword ptr [rsp + 0x10]
	mov	rsp, rsp
	mov	r13d, dword ptr [rsp + 4]
	jmp	.label_1526
.label_1529:
	mov	ecx, 2
	mov	esi, 0x3e8
.label_1520:
	cmp	r13d, 0x59
	lea	rdi, [rdi]
	jg	.label_1536
	mov	rsp, rsp
	lea	eax, [r13 - 0x42]
	nop	
	cmp	eax, 0xe
	nop	
	ja	.label_1538
	jmp	qword ptr [word ptr [+ (rax * 8) + label_1542]]
.label_1646:
	mov	rax, rbp
	mov	rsp, rsp
	shr	rax, 0x36
	setne	dl
	shl	rbp, 0xa
	jmp	.label_1519
.label_1536:
	lea	rsi, [rsi]
	cmp	r13d, 0x73
	mov	rsp, rsp
	jg	.label_1544
	mov	rbp, rbp
	lea	edx, [r13 - 0x62]
	cmp	edx, 0xb
	mov	rbp, rbp
	ja	.label_1523
	mov	rsp, rsp
	xor	eax, eax
	jmp	qword ptr [word ptr [+ (rdx * 8) + label_1524]]
.label_1629:
	mov	rax, rbp
	shr	rax, 0x37
	lea	rsi, [rsi]
	setne	dl
	nop	
	shl	rbp, 9
.label_1519:
	cmp	rax, 1
	nop	
	sbb	rax, rax
	lea	rdi, [rdi]
	not	rax
	or	rbp, rax
	lea	rdi, [rdi]
	movzx	eax, dl
	nop	
	jmp	.label_1525
.label_1538:
	cmp	r13d, 0x54
	nop	
	je	.label_1539
	cmp	r13d, 0x59
	mov	rsp, rsp
	jne	.label_1530
	nop	
	mov	rdi, -1
	mov	rax, -1
	lea	rsi, [rsi]
	xor	edx, edx
	div	rsi
	mov	rbp, rbp
	cmp	rax, rbp
	lea	rsi, [rsi]
	sbb	r8b, r8b
	mov	rbp, rbp
	mov	rbx, rbp
	imul	rbx, rsi
	lea	rdi, [rdi]
	cmp	rax, rbp
	lea	rsi, [rsi]
	cmovb	rbx, rdi
	cmp	rax, rbx
	sbb	dl, dl
	lea	rdi, [rdi]
	mov	rbp, rbx
	imul	rbp, rsi
	cmp	rax, rbx
	cmovb	rbp, rdi
	cmp	rax, rbp
	lea	rdi, [rdi]
	sbb	r9b, r9b
	mov	rbp, rbp
	mov	rbx, rbp
	lea	rsi, [rsi]
	imul	rbx, rsi
	lea	rdi, [rdi]
	cmp	rax, rbp
	mov	rsp, rsp
	cmovb	rbx, rdi
	lea	rsi, [rsi]
	cmp	rax, rbx
	sbb	r10b, r10b
	mov	rbp, rbx
	imul	rbp, rsi
	cmp	rax, rbx
	lea	rsi, [rsi]
	cmovb	rbp, rdi
	mov	rbp, rbp
	cmp	rax, rbp
	sbb	r11b, r11b
	lea	rdi, [rdi]
	mov	rbx, rbp
	mov	rsp, rsp
	imul	rbx, rsi
	cmp	rax, rbp
	mov	rbp, rbp
	cmovb	rbx, rdi
	cmp	rax, rbx
	nop	
	sbb	r14b, r14b
	mov	rbp, rbx
	lea	rdi, [rdi]
	imul	rbp, rsi
	cmp	rax, rbx
	mov	rsp, rsp
	cmovb	rbp, rdi
	cmp	rax, rbp
	sbb	r13b, r13b
	mov	rbx, rbp
	imul	rbx, rsi
	cmp	rax, rbp
	cmovb	rbx, rdi
	lea	rsi, [rsi]
	cmp	rax, rbx
	sbb	bpl, bpl
	imul	rsi, rbx
	cmp	rax, rbx
	mov	rsp, rsp
	cmovb	rsi, rdi
	or	dl, r8b
	lea	rsi, [rsi]
	or	dl, r9b
	lea	rdi, [rdi]
	or	dl, r10b
	mov	rsp, rsp
	or	dl, r11b
	lea	rsi, [rsi]
	and	dl, 1
	lea	rdi, [rdi]
	or	dl, r14b
	or	dl, r13b
	or	dl, bpl
	jmp	.label_1531
.label_1544:
	cmp	r13d, 0x74
	je	.label_1539
	mov	rbp, rbp
	cmp	r13d, 0x77
	mov	rbp, rbp
	jne	.label_1530
	lea	rdi, [rdi]
	lea	rax, [rbp + rbp]
	lea	rsi, [rsi]
	test	rbp, rbp
	lea	rsi, [rsi]
	mov	rdx, -1
	nop	
	cmovns	rdx, rax
	lea	rdi, [rdi]
	shr	rbp, 0x3f
	lea	rsi, [rsi]
	mov	eax, ebp
	mov	rbp, rdx
	jmp	.label_1525
.label_1630:
	nop	
	mov	rdi, -1
	mov	rax, -1
	xor	edx, edx
	div	rsi
	cmp	rax, rbp
	sbb	r8b, r8b
	mov	rbx, rbp
	imul	rbx, rsi
	nop	
	cmp	rax, rbp
	cmovb	rbx, rdi
	cmp	rax, rbx
	nop	
	sbb	dl, dl
	nop	
	mov	rbp, rbx
	imul	rbp, rsi
	mov	rbp, rbp
	cmp	rax, rbx
	cmovb	rbp, rdi
	mov	rbp, rbp
	cmp	rax, rbp
	sbb	bl, bl
	lea	rdi, [rdi]
	imul	rsi, rbp
	cmp	rax, rbp
	nop	
	cmovb	rsi, rdi
	or	dl, r8b
	jmp	.label_1540
.label_1631:
	mov	rdi, -1
	mov	rax, -1
	mov	rbp, rbp
	xor	edx, edx
	div	rsi
	imul	rsi, rbp
	mov	rbp, rbp
	cmp	rax, rbp
	lea	rsi, [rsi]
	cmovb	rsi, rdi
	nop	
	sbb	eax, eax
	mov	rsp, rsp
	and	eax, 1
	nop	
	jmp	.label_1533
.label_1632:
	mov	rbp, rbp
	mov	rdi, -1
	lea	rdi, [rdi]
	mov	rax, -1
	lea	rsi, [rsi]
	xor	edx, edx
	div	rsi
	nop	
	cmp	rax, rbp
	sbb	r8b, r8b
	mov	rbx, rbp
	lea	rdi, [rdi]
	imul	rbx, rsi
	cmp	rax, rbp
	mov	rsp, rsp
	cmovb	rbx, rdi
	nop	
	cmp	rax, rbx
	nop	
	sbb	dl, dl
	lea	rsi, [rsi]
	imul	rsi, rbx
	nop	
	cmp	rax, rbx
	cmovb	rsi, rdi
	or	dl, r8b
	jmp	.label_1527
.label_1539:
	mov	rsp, rsp
	mov	r9, -1
	mov	rax, -1
	mov	rbp, rbp
	xor	edx, edx
	div	rsi
	nop	
	cmp	rax, rbp
	mov	rbp, rbp
	sbb	r8b, r8b
	mov	rbx, rbp
	imul	rbx, rsi
	mov	rbp, rbp
	cmp	rax, rbp
	cmovb	rbx, r9
	mov	rbp, rbp
	cmp	rax, rbx
	sbb	dl, dl
	mov	rbp, rbx
	imul	rbp, rsi
	cmp	rax, rbx
	cmovb	rbp, r9
	cmp	rax, rbp
	sbb	r10b, r10b
	mov	rsp, rsp
	mov	rdi, rbp
	imul	rdi, rsi
	lea	rsi, [rsi]
	cmp	rax, rbp
	cmovb	rdi, r9
	cmp	rax, rdi
	mov	rbp, rbp
	sbb	bl, bl
	imul	rsi, rdi
	lea	rdi, [rdi]
	cmp	rax, rdi
	cmovb	rsi, r9
	or	dl, r8b
	jmp	.label_1534
.label_1523:
	cmp	r13d, 0x5a
	jne	.label_1530
	mov	rdi, -1
	mov	rax, -1
	xor	edx, edx
	lea	rsi, [rsi]
	div	rsi
	cmp	rax, rbp
	sbb	r8b, r8b
	mov	rbx, rbp
	imul	rbx, rsi
	cmp	rax, rbp
	cmovb	rbx, rdi
	cmp	rax, rbx
	sbb	dl, dl
	mov	rbp, rbx
	imul	rbp, rsi
	cmp	rax, rbx
	nop	
	cmovb	rbp, rdi
	cmp	rax, rbp
	sbb	r9b, r9b
	mov	rbx, rbp
	lea	rdi, [rdi]
	imul	rbx, rsi
	cmp	rax, rbp
	cmovb	rbx, rdi
	cmp	rax, rbx
	sbb	r10b, r10b
	nop	
	mov	rbp, rbx
	imul	rbp, rsi
	mov	rsp, rsp
	cmp	rax, rbx
	lea	rdi, [rdi]
	cmovb	rbp, rdi
	cmp	rax, rbp
	sbb	r11b, r11b
	mov	rbx, rbp
	imul	rbx, rsi
	nop	
	cmp	rax, rbp
	cmovb	rbx, rdi
	cmp	rax, rbx
	sbb	r14b, r14b
	mov	rbp, rbx
	imul	rbp, rsi
	nop	
	cmp	rax, rbx
	cmovb	rbp, rdi
	cmp	rax, rbp
	sbb	bl, bl
	mov	rbp, rbp
	imul	rsi, rbp
	cmp	rax, rbp
	mov	rsp, rsp
	cmovb	rsi, rdi
	mov	rbp, rbp
	or	dl, r8b
	or	dl, r9b
	or	dl, r10b
	and	dl, 1
	or	dl, r11b
	mov	rbp, rbp
	or	dl, r14b
	lea	rsi, [rsi]
	or	dl, bl
.label_1531:
	movzx	eax, dl
	mov	rsp, rsp
	and	eax, 1
	lea	rsi, [rsi]
	jmp	.label_1533
.label_1530:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0x10]
	mov	rsp, rsp
	mov	qword ptr [rax], rbp
	mov	eax, dword ptr [rsp + 4]
	or	eax, 2
	lea	rdi, [rdi]
	mov	r13d, eax
	jmp	.label_1521
.label_1647:
	mov	rdi, -1
	mov	rax, -1
	xor	edx, edx
	div	rsi
	lea	rsi, [rsi]
	cmp	rax, rbp
	sbb	r8b, r8b
	mov	rbx, rbp
	mov	rsp, rsp
	imul	rbx, rsi
	cmp	rax, rbp
	cmovb	rbx, rdi
	mov	rsp, rsp
	cmp	rax, rbx
	sbb	dl, dl
	mov	rbp, rbx
	imul	rbp, rsi
	cmp	rax, rbx
	cmovb	rbp, rdi
	lea	rsi, [rsi]
	cmp	rax, rbp
	sbb	r9b, r9b
	nop	
	mov	rbx, rbp
	mov	rbp, rbp
	imul	rbx, rsi
	mov	rbp, rbp
	cmp	rax, rbp
	mov	rsp, rsp
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
	lea	rdi, [rdi]
	cmp	rax, rbp
	lea	rsi, [rsi]
	cmovb	rbx, rdi
	mov	rbp, rbp
	cmp	rax, rbx
	sbb	bpl, bpl
	lea	rsi, [rsi]
	imul	rsi, rbx
	cmp	rax, rbx
	nop	
	cmovb	rsi, rdi
	or	dl, r8b
	or	dl, r9b
	lea	rdi, [rdi]
	or	dl, r10b
	or	dl, r11b
	or	dl, bpl
	nop	
	jmp	.label_1527
.label_1648:
	mov	rdi, -1
	mov	rax, -1
	nop	
	xor	edx, edx
	mov	rsp, rsp
	div	rsi
	lea	rsi, [rsi]
	cmp	rax, rbp
	sbb	r8b, r8b
	mov	rbp, rbp
	mov	rbx, rbp
	imul	rbx, rsi
	cmp	rax, rbp
	cmovb	rbx, rdi
	cmp	rax, rbx
	sbb	dl, dl
	mov	rbp, rbx
	imul	rbp, rsi
	mov	rbp, rbp
	cmp	rax, rbx
	lea	rsi, [rsi]
	cmovb	rbp, rdi
	cmp	rax, rbp
	lea	rsi, [rsi]
	sbb	r9b, r9b
	mov	rbp, rbp
	mov	rbx, rbp
	imul	rbx, rsi
	cmp	rax, rbp
	cmovb	rbx, rdi
	lea	rsi, [rsi]
	cmp	rax, rbx
	sbb	r10b, r10b
	mov	rbp, rbx
	imul	rbp, rsi
	mov	rbp, rbp
	cmp	rax, rbx
	nop	
	cmovb	rbp, rdi
	mov	rbp, rbp
	cmp	rax, rbp
	sbb	bl, bl
	imul	rsi, rbp
	lea	rsi, [rsi]
	cmp	rax, rbp
	nop	
	cmovb	rsi, rdi
	or	dl, r8b
	lea	rdi, [rdi]
	or	dl, r9b
.label_1534:
	or	dl, r10b
.label_1540:
	lea	rsi, [rsi]
	or	dl, bl
.label_1527:
	and	dl, 1
	lea	rdi, [rdi]
	movzx	eax, dl
.label_1533:
	mov	rsp, rsp
	mov	rbp, rsi
.label_1525:
	lea	rsi, [rsi]
	or	eax, dword ptr [rsp + 4]
	lea	rdx, [r12 + rcx]
	mov	qword ptr [r15], rdx
	lea	rdi, [rdi]
	cmp	byte ptr [r12 + rcx], 0
	je	.label_1541
	or	eax, 2
.label_1541:
	lea	rdi, [rdi]
	mov	r13d, eax
	mov	rax, qword ptr [rsp + 0x10]
.label_1526:
	mov	qword ptr [rax], rbp
.label_1521:
	nop	
	mov	eax, r13d
	mov	rbp, rbp
	add	rsp, 0x18
	pop	rbx
	pop	r12
	pop	r13
	lea	rdi, [rdi]
	pop	r14
	lea	rdi, [rdi]
	pop	r15
	lea	rsi, [rsi]
	pop	rbp
	ret	
.label_1518:
	mov	edi, OFFSET FLAT:.str_12
	lea	rdi, [rdi]
	mov	esi, OFFSET FLAT:.str.1_10
	mov	edx, 0x54
	lea	rdi, [rdi]
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.xstrtoumax
	call	__assert_fail
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x418840

	.globl rpl_calloc
	.type rpl_calloc, @function
rpl_calloc:
	test	rdi, rdi
	lea	rsi, [rsi]
	mov	eax, 1
	nop	
	je	.label_1545
	nop	
	test	rsi, rsi
	mov	ecx, 1
	je	.label_1546
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
	je	.label_1546
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
.label_1545:
	mov	ecx, 1
.label_1546:
	mov	rdi, rcx
	lea	rdi, [rdi]
	mov	rsi, rax
	lea	rdi, [rdi]
	jmp	calloc
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4188b0

	.globl explicit_bzero
	.type explicit_bzero, @function
explicit_bzero:
	mov	rax, rsi
	xor	esi, esi
	mov	rdx, rax
	lea	rdi, [rdi]
	jmp	memset
	.section	.text
	.align	16
	#Procedure 0x4188c0

	.globl rpl_fclose
	.type rpl_fclose, @function
rpl_fclose:
	push	rbp
	lea	rsi, [rsi]
	push	r14
	mov	rsp, rsp
	push	rbx
	mov	rbx, rdi
	call	fileno
	mov	rbp, rbp
	test	eax, eax
	js	.label_1547
	lea	rsi, [rsi]
	mov	rdi, rbx
	call	__freading
	mov	rbp, rbp
	test	eax, eax
	je	.label_1549
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
	je	.label_1547
.label_1549:
	lea	rsi, [rsi]
	mov	rdi, rbx
	call	rpl_fflush
	test	eax, eax
	lea	rsi, [rsi]
	je	.label_1547
	call	__errno_location
	mov	r14, rax
	mov	rbp, rbp
	mov	ebp, dword ptr [r14]
	lea	rsi, [rsi]
	mov	rdi, rbx
	lea	rsi, [rsi]
	call	fclose
	test	ebp, ebp
	je	.label_1548
	mov	dword ptr [r14], ebp
	lea	rsi, [rsi]
	mov	eax, 0xffffffff
.label_1548:
	pop	rbx
	nop	
	pop	r14
	lea	rsi, [rsi]
	pop	rbp
	ret	
.label_1547:
	lea	rsi, [rsi]
	mov	rdi, rbx
	pop	rbx
	lea	rdi, [rdi]
	pop	r14
	pop	rbp
	nop	
	jmp	fclose
	.section	.text
	.align	16
	#Procedure 0x418970

	.globl rpl_fcntl
	.type rpl_fcntl, @function
rpl_fcntl:
	push	rbp
	push	r14
	mov	rbp, rbp
	push	rbx
	lea	rdi, [rdi]
	sub	rsp, 0xd0
	mov	rsp, rsp
	mov	ebx, edi
	test	al, al
	je	.label_1568
	mov	rsp, rsp
	movaps	xmmword ptr [rsp + 0x30], xmm0
	movaps	xmmword ptr [rsp + 0x40], xmm1
	lea	rsi, [rsi]
	movaps	xmmword ptr [rsp + 0x50], xmm2
	lea	rdi, [rdi]
	movaps	xmmword ptr [rsp + 0x60], xmm3
	movaps	xmmword ptr [rsp + 0x70], xmm4
	movaps	xmmword ptr [rsp + 0x80], xmm5
	lea	rsi, [rsi]
	movaps	xmmword ptr [rsp + 0x90], xmm6
	mov	rsp, rsp
	movaps	xmmword ptr [rsp + 0xa0], xmm7
.label_1568:
	mov	qword ptr [rsp + 0x28], r9
	mov	qword ptr [rsp + 0x20], r8
	nop	
	mov	qword ptr [rsp + 0x18], rcx
	nop	
	mov	qword ptr [rsp + 0x10], rdx
	mov	rbp, rbp
	lea	rax, [rsp]
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0xc0], rax
	nop	
	lea	rax, [rsp + 0xf0]
	mov	rsp, rsp
	mov	qword ptr [rsp + 0xb8], rax
	mov	dword ptr [rsp + 0xb4], 0x30
	mov	rbp, rbp
	mov	dword ptr [rsp + 0xb0], 0x10
	lea	rsi, [rsi]
	cmp	esi, 0xb
	mov	rsp, rsp
	ja	.label_1561
	lea	rsi, [rsi]
	mov	eax, 0xa0a
	mov	rbp, rbp
	bt	eax, esi
	mov	rbp, rbp
	jb	.label_1556
	mov	eax, 0x514
	mov	rsp, rsp
	bt	eax, esi
	lea	rdi, [rdi]
	jb	.label_1554
	mov	rsp, rsp
	test	esi, esi
	jne	.label_1561
	movsxd	rcx, dword ptr [rsp + 0xb0]
	mov	rbp, rbp
	cmp	rcx, 0x28
	lea	rsi, [rsi]
	ja	.label_1562
	lea	rdi, [rdi]
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0xc0]
	lea	rdi, [rdi]
	lea	ecx, [rcx + 8]
	lea	rdi, [rdi]
	mov	dword ptr [rsp + 0xb0], ecx
	jmp	.label_1567
.label_1561:
	lea	eax, [rsi - 0x400]
	cmp	eax, 8
	lea	rdi, [rdi]
	ja	.label_1553
	mov	ecx, 0x85
	mov	rbp, rbp
	bt	ecx, eax
	lea	rsi, [rsi]
	jb	.label_1554
	mov	ecx, 0x102
	bt	ecx, eax
	jae	.label_1555
.label_1556:
	xor	eax, eax
	mov	edi, ebx
	call	fcntl
	jmp	.label_1552
.label_1554:
	mov	rbp, rbp
	movsxd	rcx, dword ptr [rsp + 0xb0]
	mov	rsp, rsp
	cmp	rcx, 0x28
	nop	
	ja	.label_1560
	nop	
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0xc0]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp + 0xb0], ecx
	jmp	.label_1564
.label_1560:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0xb8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 0xb8], rcx
.label_1564:
	mov	edx, dword ptr [rax]
.label_1557:
	nop	
	xor	eax, eax
	mov	edi, ebx
	mov	rsp, rsp
	call	fcntl
.label_1552:
	mov	ebp, eax
.label_1550:
	mov	eax, ebp
	add	rsp, 0xd0
	pop	rbx
	lea	rsi, [rsi]
	pop	r14
	pop	rbp
	lea	rsi, [rsi]
	ret	
.label_1555:
	lea	rsi, [rsi]
	cmp	eax, 6
	jne	.label_1553
	movsxd	rcx, dword ptr [rsp + 0xb0]
	mov	rbp, rbp
	cmp	rcx, 0x28
	mov	rsp, rsp
	ja	.label_1558
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0xc0]
	lea	ecx, [rcx + 8]
	nop	
	mov	dword ptr [rsp + 0xb0], ecx
	jmp	.label_1559
.label_1553:
	movsxd	rcx, dword ptr [rsp + 0xb0]
	cmp	rcx, 0x28
	mov	rsp, rsp
	ja	.label_1566
	mov	rax, rcx
	lea	rsi, [rsi]
	add	rax, qword ptr [rsp + 0xc0]
	nop	
	lea	ecx, [rcx + 8]
	mov	rsp, rsp
	mov	dword ptr [rsp + 0xb0], ecx
	nop	
	jmp	.label_1569
.label_1562:
	mov	rax, qword ptr [rsp + 0xb8]
	mov	rsp, rsp
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 0xb8], rcx
.label_1567:
	lea	rsi, [rsi]
	mov	edx, dword ptr [rax]
	xor	esi, esi
	mov	rsp, rsp
	jmp	.label_1557
.label_1558:
	mov	rax, qword ptr [rsp + 0xb8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 0xb8], rcx
.label_1559:
	mov	rsp, rsp
	mov	r14d, dword ptr [rax]
	lea	rsi, [rsi]
	cmp	dword ptr [dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec]],  0
	js	.label_1570
	mov	esi, 0x406
	xor	eax, eax
	lea	rdi, [rdi]
	mov	edi, ebx
	mov	edx, r14d
	lea	rsi, [rsi]
	call	fcntl
	lea	rdi, [rdi]
	mov	ebp, eax
	lea	rsi, [rsi]
	test	ebp, ebp
	jns	.label_1551
	call	__errno_location
	cmp	dword ptr [rax], 0x16
	jne	.label_1551
	xor	esi, esi
	xor	eax, eax
	mov	edi, ebx
	nop	
	mov	edx, r14d
	lea	rdi, [rdi]
	call	fcntl
	nop	
	mov	ebp, eax
	lea	rdi, [rdi]
	test	ebp, ebp
	js	.label_1550
	lea	rsi, [rsi]
	mov	dword ptr [dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec]],  0xffffffff
	mov	rsp, rsp
	mov	al, 1
	jmp	.label_1563
.label_1551:
	mov	dword ptr [dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec]],  1
	jmp	.label_1550
.label_1566:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0xb8]
	mov	rsp, rsp
	lea	rcx, [rax + 8]
	nop	
	mov	qword ptr [rsp + 0xb8], rcx
.label_1569:
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rax]
	xor	eax, eax
	nop	
	mov	edi, ebx
	lea	rdi, [rdi]
	call	fcntl
	nop	
	jmp	.label_1552
.label_1570:
	mov	rsp, rsp
	xor	esi, esi
	xor	eax, eax
	lea	rsi, [rsi]
	mov	edi, ebx
	nop	
	mov	edx, r14d
	lea	rsi, [rsi]
	call	fcntl
	mov	ebp, eax
	mov	rbp, rbp
	cmp	dword ptr [dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec]],  -1
	sete	al
.label_1563:
	mov	rsp, rsp
	test	al, al
	lea	rsi, [rsi]
	je	.label_1550
	test	ebp, ebp
	lea	rsi, [rsi]
	js	.label_1550
	mov	esi, 1
	xor	eax, eax
	mov	rsp, rsp
	mov	edi, ebp
	call	fcntl
	mov	ecx, eax
	test	ecx, ecx
	js	.label_1565
	or	ecx, 1
	mov	esi, 2
	lea	rdi, [rdi]
	xor	eax, eax
	nop	
	mov	edi, ebp
	nop	
	mov	edx, ecx
	lea	rsi, [rsi]
	call	fcntl
	lea	rdi, [rdi]
	cmp	eax, -1
	jne	.label_1550
.label_1565:
	mov	rsp, rsp
	call	__errno_location
	lea	rdi, [rdi]
	mov	rbx, rax
	mov	r14d, dword ptr [rbx]
	nop	
	mov	edi, ebp
	call	close
	mov	dword ptr [rbx], r14d
	mov	ebp, 0xffffffff
	mov	rsp, rsp
	jmp	.label_1550
	nop	word ptr cs:[rax + rax]
	nop	
	.section	.text
	.align	16
	#Procedure 0x418d40

	.globl rpl_fflush
	.type rpl_fflush, @function
rpl_fflush:
	push	rbx
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_1571
	lea	rsi, [rsi]
	mov	rdi, rbx
	mov	rsp, rsp
	call	__freading
	test	eax, eax
	je	.label_1571
	test	byte ptr [rbx + 1], 1
	je	.label_1571
	mov	rsp, rsp
	xor	esi, esi
	mov	edx, 1
	mov	rdi, rbx
	nop	
	call	rpl_fseeko
.label_1571:
	mov	rdi, rbx
	pop	rbx
	jmp	fflush
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x418d80

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
	jne	.label_1572
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbx + 0x28]
	cmp	rax, qword ptr [rbx + 0x20]
	jne	.label_1572
	lea	rsi, [rsi]
	cmp	qword ptr [rbx + 0x48], 0
	je	.label_1573
.label_1572:
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
.label_1573:
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
	je	.label_1574
	lea	rsi, [rsi]
	and	byte ptr [rbx], 0xef
	lea	rdi, [rdi]
	mov	qword ptr [rbx + 0x90], rcx
	xor	eax, eax
.label_1574:
	pop	rbx
	mov	rsp, rsp
	pop	r14
	nop	
	pop	rbp
	mov	rsp, rsp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x418e30

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
	je	.label_1575
	nop	
	cmp	r15, -2
	jb	.label_1575
	mov	rsp, rsp
	xor	edi, edi
	mov	rbp, rbp
	call	hard_locale
	test	al, al
	nop	
	jne	.label_1575
	lea	rdi, [rdi]
	movzx	eax, byte ptr [r14]
	mov	dword ptr [rbx], eax
	lea	rdi, [rdi]
	mov	r15d, 1
.label_1575:
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
	.align	16
	#Procedure 0x418ec0

	.globl rpl_nanosleep
	.type rpl_nanosleep, @function
rpl_nanosleep:
	mov	rbp, rbp
	push	r15
	push	r14
	lea	rdi, [rdi]
	push	rbx
	mov	rbp, rbp
	sub	rsp, 0x10
	lea	rdi, [rdi]
	mov	r15, rsi
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rdi + 8]
	cmp	rcx, 0x3b9aca00
	nop	
	jb	.label_1576
	mov	rbp, rbp
	call	__errno_location
	mov	dword ptr [rax], 0x16
	mov	eax, 0xffffffff
	mov	rbp, rbp
	jmp	.label_1577
.label_1576:
	mov	rbx, qword ptr [rdi]
	lea	r14, [rsp]
	nop	dword ptr [rax + rax]
.label_1578:
	mov	rsp, rsp
	mov	qword ptr [rsp + 8], rcx
	nop	
	cmp	rbx, 0x1fa401
	mov	rsp, rsp
	jl	.label_1579
	mov	qword ptr [rsp], 0x1fa400
	lea	rdi, [rdi]
	mov	rdi, r14
	lea	rsi, [rsi]
	mov	rsi, r15
	nop	
	call	nanosleep
	lea	rdi, [rdi]
	add	rbx, -0x1fa400
	test	eax, eax
	lea	rsi, [rsi]
	mov	ecx, 0
	je	.label_1578
	test	r15, r15
	je	.label_1577
	add	qword ptr [r15], rbx
	jmp	.label_1577
.label_1579:
	mov	rsp, rsp
	mov	qword ptr [rsp], rbx
	lea	rdi, [rsp]
	mov	rsi, r15
	lea	rdi, [rdi]
	call	nanosleep
.label_1577:
	nop	
	add	rsp, 0x10
	mov	rsp, rsp
	pop	rbx
	lea	rdi, [rdi]
	pop	r14
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x418f90

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
	.section	.text
	.align	16
	#Procedure 0x418fb0

	.globl _obstack_begin
	.type _obstack_begin, @function
_obstack_begin:
	push	r15
	push	r14
	nop	
	push	rbx
	mov	r14, rdi
	nop	
	mov	qword ptr [r14 + 0x38], rcx
	mov	qword ptr [r14 + 0x40], r8
	mov	rsp, rsp
	and	byte ptr [r14 + 0x50], 0xfe
	mov	rsp, rsp
	test	rdx, rdx
	nop	
	mov	ebx, 0x10
	mov	rbp, rbp
	cmovne	rbx, rdx
	lea	rsi, [rsi]
	test	rsi, rsi
	mov	edi, 0xfe0
	cmovne	rdi, rsi
	mov	qword ptr [r14], rdi
	lea	rsi, [rsi]
	lea	r15, [rbx - 1]
	mov	rsp, rsp
	mov	qword ptr [r14 + 0x30], r15
	nop	
	call	rcx
	mov	rsp, rsp
	mov	qword ptr [r14 + 8], rax
	test	rax, rax
	je	.label_1580
	lea	rcx, [rax + r15 + 0x10]
	mov	rsp, rsp
	neg	rbx
	and	rbx, rcx
	mov	qword ptr [r14 + 0x10], rbx
	mov	rbp, rbp
	mov	qword ptr [r14 + 0x18], rbx
	mov	rcx, qword ptr [r14]
	lea	rsi, [rsi]
	add	rcx, rax
	mov	qword ptr [rax], rcx
	mov	rbp, rbp
	mov	qword ptr [r14 + 0x20], rcx
	nop	
	mov	qword ptr [rax + 8], 0
	nop	
	and	byte ptr [r14 + 0x50], 0xf9
	mov	eax, 1
	pop	rbx
	lea	rsi, [rsi]
	pop	r14
	pop	r15
	ret	
.label_1580:
	call	qword ptr [word ptr [rip + obstack_alloc_failed_handler]]
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x419060

	.globl _obstack_begin_1
	.type _obstack_begin_1, @function
_obstack_begin_1:
	push	r15
	push	r14
	push	rbx
	mov	rbp, rbp
	mov	rbx, rdi
	mov	qword ptr [rbx + 0x38], rcx
	mov	qword ptr [rbx + 0x40], r8
	mov	qword ptr [rbx + 0x48], r9
	or	byte ptr [rbx + 0x50], 1
	test	rdx, rdx
	mov	rsp, rsp
	mov	r14d, 0x10
	mov	rbp, rbp
	cmovne	r14, rdx
	test	rsi, rsi
	mov	eax, 0xfe0
	cmovne	rax, rsi
	lea	rdi, [rdi]
	mov	qword ptr [rbx], rax
	lea	r15, [r14 - 1]
	mov	qword ptr [rbx + 0x30], r15
	lea	rdi, [rdi]
	mov	rdi, r9
	mov	rsp, rsp
	mov	rsi, rax
	mov	rbp, rbp
	call	rcx
	mov	qword ptr [rbx + 8], rax
	test	rax, rax
	mov	rbp, rbp
	je	.label_1581
	mov	rsp, rsp
	lea	rcx, [rax + r15 + 0x10]
	neg	r14
	nop	
	and	r14, rcx
	mov	rsp, rsp
	mov	qword ptr [rbx + 0x10], r14
	mov	rsp, rsp
	mov	qword ptr [rbx + 0x18], r14
	mov	rcx, qword ptr [rbx]
	mov	rsp, rsp
	add	rcx, rax
	lea	rsi, [rsi]
	mov	qword ptr [rax], rcx
	mov	qword ptr [rbx + 0x20], rcx
	mov	rsp, rsp
	mov	qword ptr [rax + 8], 0
	mov	rbp, rbp
	and	byte ptr [rbx + 0x50], 0xf9
	mov	eax, 1
	pop	rbx
	nop	
	pop	r14
	pop	r15
	nop	
	ret	
.label_1581:
	mov	rsp, rsp
	call	qword ptr [word ptr [rip + obstack_alloc_failed_handler]]
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x419120

	.globl _obstack_newchunk
	.type _obstack_newchunk, @function
_obstack_newchunk:
	push	rbp
	nop	
	push	r15
	nop	
	push	r14
	lea	rsi, [rsi]
	push	r13
	push	r12
	mov	rsp, rsp
	push	rbx
	sub	rsp, 0x18
	mov	r12, rdi
	mov	rbp, rbp
	mov	rcx, qword ptr [r12]
	mov	r14, qword ptr [r12 + 0x18]
	sub	r14, qword ptr [r12 + 0x10]
	lea	rdx, [r14 + rsi]
	add	rdx, qword ptr [r12 + 0x30]
	setb	al
	mov	rbx, r14
	nop	
	shr	rbx, 3
	lea	rsi, [rsi]
	add	rbx, 0x64
	add	rbx, rdx
	cmovb	rbx, rdx
	cmp	rbx, rcx
	cmovb	rbx, rcx
	lea	rsi, [rsi]
	add	rsi, r14
	mov	rsp, rsp
	jb	.label_1582
	test	al, al
	nop	
	jne	.label_1582
	mov	rsp, rsp
	mov	r15, qword ptr [r12 + 8]
	test	byte ptr [r12 + 0x50], 1
	mov	rsp, rsp
	jne	.label_1585
	lea	rsi, [rsi]
	mov	rdi, rbx
	call	qword ptr [r12 + 0x38]
	jmp	.label_1584
.label_1585:
	mov	rdi, qword ptr [r12 + 0x48]
	mov	rsp, rsp
	mov	rsi, rbx
	mov	rsp, rsp
	call	qword ptr [r12 + 0x38]
.label_1584:
	lea	rsi, [rsi]
	mov	r13, rax
	test	r13, r13
	je	.label_1582
	mov	rsp, rsp
	mov	qword ptr [r12 + 8], r13
	mov	qword ptr [r13 + 8], r15
	mov	rsp, rsp
	add	rbx, r13
	lea	rdi, [rdi]
	mov	qword ptr [r12 + 0x20], rbx
	mov	qword ptr [r13], rbx
	mov	rsp, rsp
	mov	rsi, qword ptr [r12 + 0x10]
	mov	qword ptr [rsp + 0x10], rsi
	lea	rdi, [rdi]
	mov	rbp, qword ptr [r12 + 0x30]
	mov	rsp, rsp
	lea	rbx, [r13 + rbp + 0x10]
	mov	rsp, rsp
	mov	qword ptr [rsp + 8], r15
	lea	rdi, [rdi]
	mov	r15, rbp
	not	r15
	and	rbx, r15
	mov	rdi, rbx
	mov	rdx, r14
	nop	
	call	memcpy
	test	byte ptr [r12 + 0x50], 2
	jne	.label_1583
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp + 8]
	mov	rbp, rbp
	lea	rax, [rax + rbp + 0x10]
	and	rax, r15
	cmp	qword ptr [rsp + 0x10], rax
	lea	rsi, [rsi]
	jne	.label_1583
	mov	rcx, qword ptr [rsp + 8]
	mov	rax, qword ptr [rcx + 8]
	mov	qword ptr [r13 + 8], rax
	test	byte ptr [r12 + 0x50], 1
	mov	rsi, rcx
	mov	rsp, rsp
	jne	.label_1586
	nop	
	mov	rdi, rsi
	call	qword ptr [r12 + 0x40]
	nop	
	jmp	.label_1583
.label_1586:
	lea	rdi, [rdi]
	mov	rdi, qword ptr [r12 + 0x48]
	call	qword ptr [r12 + 0x40]
.label_1583:
	lea	rsi, [rsi]
	mov	qword ptr [r12 + 0x10], rbx
	mov	rsp, rsp
	add	r14, rbx
	mov	qword ptr [r12 + 0x18], r14
	mov	rsp, rsp
	and	byte ptr [r12 + 0x50], 0xfd
	add	rsp, 0x18
	pop	rbx
	mov	rbp, rbp
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	mov	rsp, rsp
	pop	rbp
	ret	
.label_1582:
	mov	rsp, rsp
	call	qword ptr [word ptr [rip + obstack_alloc_failed_handler]]
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4192c0

	.globl _obstack_allocated_p
	.type _obstack_allocated_p, @function
_obstack_allocated_p:
	mov	rcx, qword ptr [rdi + 8]
	jmp	.label_1587
	nop	word ptr cs:[rax + rax]
.label_1590:
	mov	rcx, qword ptr [rcx + 8]
.label_1587:
	test	rcx, rcx
	mov	rbp, rbp
	je	.label_1588
	lea	rsi, [rsi]
	cmp	rcx, rsi
	jae	.label_1590
	lea	rdi, [rdi]
	mov	eax, 1
	cmp	qword ptr [rcx], rsi
	jb	.label_1590
	mov	rbp, rbp
	jmp	.label_1589
.label_1588:
	xor	eax, eax
.label_1589:
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x419300

	.globl _obstack_free
	.type _obstack_free, @function
_obstack_free:
	lea	rdi, [rdi]
	push	r15
	nop	
	push	r14
	lea	rsi, [rsi]
	push	rbx
	mov	r14, rsi
	mov	r15, rdi
	nop	
	mov	rsi, qword ptr [r15 + 8]
	mov	rsp, rsp
	test	rsi, rsi
	je	.label_1591
	nop	
.label_1597:
	cmp	rsi, r14
	mov	rbp, rbp
	jae	.label_1592
	cmp	qword ptr [rsi], r14
	jae	.label_1594
.label_1592:
	mov	rbx, qword ptr [rsi + 8]
	lea	rsi, [rsi]
	test	byte ptr [r15 + 0x50], 1
	mov	rsp, rsp
	jne	.label_1596
	mov	rdi, rsi
	nop	
	call	qword ptr [r15 + 0x40]
	jmp	.label_1593
	nop	dword ptr [rax + rax]
.label_1596:
	mov	rdi, qword ptr [r15 + 0x48]
	call	qword ptr [r15 + 0x40]
.label_1593:
	or	byte ptr [r15 + 0x50], 2
	test	rbx, rbx
	mov	rsp, rsp
	mov	rsi, rbx
	mov	rbp, rbp
	jne	.label_1597
.label_1591:
	lea	rsi, [rsi]
	test	r14, r14
	mov	rsp, rsp
	je	.label_1595
	call	abort
.label_1594:
	lea	rsi, [rsi]
	mov	qword ptr [r15 + 0x18], r14
	mov	rbp, rbp
	mov	qword ptr [r15 + 0x10], r14
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsi]
	mov	qword ptr [r15 + 0x20], rax
	mov	qword ptr [r15 + 8], rsi
.label_1595:
	lea	rsi, [rsi]
	pop	rbx
	nop	
	pop	r14
	pop	r15
	lea	rsi, [rsi]
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4193b0

	.globl _obstack_memory_used
	.type _obstack_memory_used, @function
_obstack_memory_used:
	mov	rbp, rbp
	mov	rcx, qword ptr [rdi + 8]
	nop	
	xor	eax, eax
	jmp	.label_1598
	nop	dword ptr [rax]
.label_1599:
	sub	rax, rcx
	mov	rsp, rsp
	add	rax, qword ptr [rcx]
	mov	rcx, qword ptr [rcx + 8]
.label_1598:
	mov	rbp, rbp
	test	rcx, rcx
	nop	
	jne	.label_1599
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4193e0

	.globl print_and_abort
	.type print_and_abort, @function
print_and_abort:
	nop
	push	rbx
	mov	rbx,  qword ptr [word ptr [rip + stderr]]
	xor	edi, edi
	lea	rsi, [rsi]
	mov	esi, OFFSET FLAT:.str.1_8
	mov	edx, 5
	call	dcgettext
	mov	rsp, rsp
	mov	rcx, rax
	mov	esi, 1
	mov	edx, OFFSET FLAT:.str_2
	nop	
	xor	eax, eax
	mov	rdi, rbx
	call	__fprintf_chk
	mov	edi,  dword ptr [dword ptr [rip + exit_failure]]
	call	exit
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x419430

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
	mov	ebp, dword ptr [rbx]
	mov	rbp, rbp
	mov	rdi, rbx
	call	rpl_fclose
	test	bpl, 0x20
	nop	
	jne	.label_1600
	mov	rbp, rbp
	test	eax, eax
	nop	
	sete	cl
	neg	eax
	mov	rbp, rbp
	sbb	ebx, ebx
	test	r14, r14
	lea	rsi, [rsi]
	jne	.label_1601
	test	cl, cl
	mov	rsp, rsp
	jne	.label_1601
	call	__errno_location
	mov	rbp, rbp
	xor	ecx, ecx
	cmp	dword ptr [rax], 9
	nop	
	mov	ebx, 0xffffffff
	lea	rsi, [rsi]
	cmove	ebx, ecx
	jmp	.label_1601
.label_1600:
	mov	ebx, 0xffffffff
	test	eax, eax
	lea	rsi, [rsi]
	jne	.label_1601
	mov	rbp, rbp
	call	__errno_location
	lea	rdi, [rdi]
	mov	dword ptr [rax], 0
.label_1601:
	mov	eax, ebx
	nop	
	pop	rbx
	mov	rsp, rsp
	pop	r14
	pop	rbp
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4194c0

	.globl dtotimespec
	.type dtotimespec, @function
dtotimespec:
	mov	rbp, rbp
	movabs	rcx, 0x7fffffffffffffff
	lea	rdi, [rdi]
	xor	edx, edx
	nop	
	ucomisd	xmm0,  qword ptr [word ptr [rip + label_1602]]
	mov	rbp, rbp
	jbe	.label_1603
	mov	edx, 0x3b9ac9ff
	lea	rsi, [rsi]
	movsd	xmm1,  qword ptr [word ptr [rip + label_91]]
	lea	rsi, [rsi]
	ucomisd	xmm1, xmm0
	mov	rsp, rsp
	jbe	.label_1604
	lea	rdi, [rdi]
	cvttsd2si	rsi, xmm0
	xorps	xmm1, xmm1
	cvtsi2sd	xmm1, rsi
	subsd	xmm0, xmm1
	mulsd	xmm0,  qword ptr [word ptr [rip + label_1605]]
	mov	rbp, rbp
	cvttsd2si	rax, xmm0
	xorps	xmm1, xmm1
	cvtsi2sd	xmm1, rax
	ucomisd	xmm0, xmm1
	seta	cl
	lea	rdi, [rdi]
	movzx	ecx, cl
	add	rcx, rax
	nop	
	movabs	rdx, 0x112e0be826d694b3
	mov	rax, rcx
	imul	rdx
	nop	
	mov	rax, rdx
	mov	rbp, rbp
	shr	rdx, 0x3f
	lea	rsi, [rsi]
	sar	rax, 0x1a
	add	rax, rdx
	nop	
	imul	rdi, rax, 0x3b9aca00
	mov	rdx, rcx
	mov	rbp, rbp
	sub	rdx, rdi
	lea	rdi, [rdi]
	add	rdx, 0x3b9aca00
	sub	rcx, rdi
	lea	rdi, [rdi]
	cmovns	rdx, rcx
	add	rax, rsi
	sar	rcx, 0x3f
	lea	rsi, [rsi]
	add	rcx, rax
.label_1604:
	lea	rdi, [rdi]
	mov	rax, rcx
	ret	
.label_1603:
	mov	rbp, rbp
	inc	rcx
	mov	rax, rcx
	nop	
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4195b0

	.globl fd_safer_flag
	.type fd_safer_flag, @function
fd_safer_flag:
	nop
	push	rbp
	lea	rsi, [rsi]
	push	r15
	mov	rbp, rbp
	push	r14
	mov	rbp, rbp
	push	rbx
	push	rax
	mov	ebx, edi
	mov	rbp, rbp
	cmp	ebx, 2
	lea	rdi, [rdi]
	ja	.label_1606
	lea	rsi, [rsi]
	mov	edi, ebx
	lea	rsi, [rsi]
	call	dup_safer_flag
	mov	rbp, rbp
	mov	r14d, eax
	call	__errno_location
	mov	rbp, rax
	nop	
	mov	r15d, dword ptr [rbp]
	lea	rdi, [rdi]
	mov	edi, ebx
	call	close
	mov	dword ptr [rbp], r15d
	mov	eax, r14d
	mov	rsp, rsp
	jmp	.label_1607
.label_1606:
	mov	eax, ebx
.label_1607:
	lea	rsi, [rsi]
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	nop	
	.section	.text
	.align	16
	#Procedure 0x419620

	.globl dup_safer_flag
	.type dup_safer_flag, @function
dup_safer_flag:
	nop	
	and	esi, 0x80000
	mov	eax, 0x406
	cmovne	esi, eax
	mov	edx, 3
	xor	eax, eax
	lea	rdi, [rdi]
	jmp	rpl_fcntl
	nop	
	.section	.text
	.align	16
	#Procedure 0x419640

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
	je	.label_1610
	mov	rsp, rsp
	mov	rdi, rbx
	call	fileno
	cmp	eax, 2
	ja	.label_1611
	mov	rbp, rbp
	mov	edi, eax
	mov	rsp, rsp
	call	dup_safer
	mov	rsp, rsp
	mov	ebp, eax
	test	ebp, ebp
	js	.label_1608
	lea	rsi, [rsi]
	mov	rdi, rbx
	call	rpl_fclose
	mov	rbp, rbp
	test	eax, eax
	jne	.label_1612
	mov	rsp, rsp
	mov	edi, ebp
	lea	rsi, [rsi]
	mov	rsi, r14
	call	fdopen
	mov	rbp, rbp
	test	rax, rax
	lea	rdi, [rdi]
	jne	.label_1610
.label_1612:
	call	__errno_location
	mov	rbx, rax
	mov	r14d, dword ptr [rbx]
	mov	edi, ebp
	lea	rdi, [rdi]
	call	close
	mov	rbp, rbp
	mov	dword ptr [rbx], r14d
	mov	rbp, rbp
	jmp	.label_1609
.label_1611:
	mov	rax, rbx
	mov	rsp, rsp
	jmp	.label_1610
.label_1608:
	call	__errno_location
	mov	rbp, rax
	mov	r14d, dword ptr [rbp]
	lea	rsi, [rsi]
	mov	rdi, rbx
	mov	rsp, rsp
	call	rpl_fclose
	mov	dword ptr [rbp], r14d
.label_1609:
	xor	eax, eax
.label_1610:
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
	.align	16
	#Procedure 0x419720

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
	mov	ecx, OFFSET FLAT:.str_1
	nop	
	cmovne	rcx, rax
	mov	eax, OFFSET FLAT:.str.1_11
	cmp	byte ptr [rcx], 0
	lea	rsi, [rsi]
	je	.label_1613
	nop	
	mov	rax, rcx
.label_1613:
	pop	rcx
	lea	rsi, [rsi]
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x419760

	.globl memcoll
	.type memcoll, @function
memcoll:
	push	rbp
	push	r15
	push	r14
	mov	rbp, rbp
	push	r13
	nop	
	push	r12
	lea	rdi, [rdi]
	push	rbx
	lea	rdi, [rdi]
	sub	rsp, 0x38
	nop	
	mov	rbx, rcx
	mov	r14, rdx
	mov	rbp, rsi
	mov	r12, rdi
	nop	
	cmp	rbp, rbx
	mov	rbp, rbp
	jne	.label_1614
	mov	rdi, r12
	nop	
	mov	rsi, r14
	mov	rdx, rbp
	call	memcmp
	mov	rbp, rbp
	test	eax, eax
	lea	rdi, [rdi]
	je	.label_1619
.label_1614:
	mov	rsp, rsp
	mov	al, byte ptr [r12 + rbp]
	mov	byte ptr [rsp + 0x37], al
	mov	al, byte ptr [r14 + rbx]
	mov	rsp, rsp
	mov	byte ptr [rsp + 0x17], al
	mov	byte ptr [r12 + rbp], 0
	nop	
	mov	byte ptr [r14 + rbx], 0
	lea	r13, [rbp + 1]
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x28], rbp
	mov	rbp, rbp
	lea	r15, [rbx + 1]
	nop	
	mov	qword ptr [rsp + 0x18], rbx
	call	__errno_location
	lea	rsi, [rsi]
	mov	rbx, rax
	mov	rbp, r14
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 8], r14
	mov	r14, r12
	mov	qword ptr [rsp + 0x20], r12
	nop	word ptr cs:[rax + rax]
.label_1617:
	mov	dword ptr [rbx], 0
	mov	rdi, r14
	mov	rsi, rbp
	call	strcoll
	nop	
	test	eax, eax
	jne	.label_1615
	mov	rdi, r14
	lea	rdi, [rdi]
	call	strlen
	mov	r12, rax
	mov	rsp, rsp
	inc	r12
	mov	rdi, rbp
	call	strlen
	lea	rdi, [rdi]
	inc	rax
	mov	rbp, rbp
	sub	r13, r12
	nop	
	je	.label_1616
	lea	rsi, [rsi]
	add	rbp, rax
	lea	rdi, [rdi]
	add	r14, r12
	lea	rdi, [rdi]
	sub	r15, rax
	mov	eax, 1
	jne	.label_1617
	lea	rdi, [rdi]
	jmp	.label_1615
.label_1616:
	nop	
	xor	ecx, ecx
	cmp	r15, rax
	mov	rbp, rbp
	mov	eax, 0xffffffff
	cmove	eax, ecx
.label_1615:
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rsp + 0x28]
	mov	rdx, qword ptr [rsp + 0x20]
	mov	bl, byte ptr [rsp + 0x37]
	mov	byte ptr [rdx + rcx], bl
	mov	rcx, qword ptr [rsp + 0x18]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rsp + 8]
	mov	bl, byte ptr [rsp + 0x17]
	mov	rbp, rbp
	mov	byte ptr [rdx + rcx], bl
	lea	rdi, [rdi]
	jmp	.label_1618
.label_1619:
	call	__errno_location
	nop	
	mov	dword ptr [rax], 0
	xor	eax, eax
.label_1618:
	lea	rsi, [rsi]
	add	rsp, 0x38
	mov	rsp, rsp
	pop	rbx
	pop	r12
	lea	rsi, [rsi]
	pop	r13
	mov	rbp, rbp
	pop	r14
	mov	rbp, rbp
	pop	r15
	pop	rbp
	lea	rdi, [rdi]
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x4198e0

	.globl memcoll0
	.type memcoll0, @function
memcoll0:
	push	rbp
	push	r15
	nop	
	push	r14
	mov	rbp, rbp
	push	r13
	mov	rbp, rbp
	push	r12
	push	rbx
	lea	rsi, [rsi]
	push	rax
	nop	
	mov	r14, rcx
	mov	r12, rdx
	nop	
	mov	r15, rsi
	nop	
	mov	rbx, rdi
	nop	
	cmp	r15, r14
	mov	rsp, rsp
	jne	.label_1620
	mov	rdi, rbx
	mov	rsi, r12
	mov	rdx, r15
	mov	rbp, rbp
	call	memcmp
	lea	rsi, [rsi]
	test	eax, eax
	je	.label_1624
.label_1620:
	lea	rdi, [rdi]
	call	__errno_location
	mov	rsp, rsp
	mov	r13, rax
	nop	word ptr [rax + rax]
.label_1621:
	mov	rsp, rsp
	mov	dword ptr [r13], 0
	mov	rdi, rbx
	mov	rsi, r12
	nop	
	call	strcoll
	test	eax, eax
	jne	.label_1622
	mov	rdi, rbx
	call	strlen
	mov	rbp, rax
	lea	rdi, [rdi]
	inc	rbp
	lea	rsi, [rsi]
	mov	rdi, r12
	call	strlen
	lea	rsi, [rsi]
	inc	rax
	sub	r15, rbp
	lea	rdi, [rdi]
	je	.label_1623
	nop	
	add	r12, rax
	nop	
	add	rbx, rbp
	lea	rsi, [rsi]
	sub	r14, rax
	nop	
	mov	eax, 1
	mov	rbp, rbp
	jne	.label_1621
	nop	
	jmp	.label_1622
.label_1623:
	mov	rsp, rsp
	xor	ecx, ecx
	lea	rdi, [rdi]
	cmp	r14, rax
	mov	eax, 0xffffffff
	lea	rdi, [rdi]
	cmove	eax, ecx
	mov	rsp, rsp
	jmp	.label_1622
.label_1624:
	call	__errno_location
	mov	dword ptr [rax], 0
	xor	eax, eax
.label_1622:
	mov	rbp, rbp
	add	rsp, 8
	lea	rsi, [rsi]
	pop	rbx
	pop	r12
	lea	rsi, [rsi]
	pop	r13
	nop	
	pop	r14
	pop	r15
	nop	
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax]
	.section .text
	.align	16
	#Procedure 0x4199f0

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
	nop	
	nop	word ptr cs:[rax + rax]
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax]
	nop	word ptr cs:[rax + rax]