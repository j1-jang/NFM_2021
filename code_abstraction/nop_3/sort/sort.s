	.section	.text
	.align	16
	#Procedure 0x402b90

	.globl usage
	.type usage, @function
usage:
	push	rbp
	push	rbx
	push	rax
	mov	ebp, edi
	test	ebp, ebp
	jne	.label_7
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.1
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
	mov	esi, OFFSET FLAT:.str.2
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.66
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.67
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.3
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.4
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.5
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.6
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.7
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.8
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.9
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.10
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.11
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.12
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.13
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.14
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.15
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:.str.16
	xor	eax, eax
	mov	rsi, rcx
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.17
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.18_0
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.19
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.20
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.21
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.76
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:.str.17_0
	mov	ecx, OFFSET FLAT:.str.18
	xor	eax, eax
	call	__printf_chk
	mov	edi, 5
	xor	esi, esi
	call	setlocale
	test	rax, rax
	je	.label_8
	mov	esi, OFFSET FLAT:.str.78
	mov	edx, 3
	mov	rdi, rax
	call	strncmp
	test	eax, eax
	je	.label_8
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.79
	mov	edx, 5
	call	dcgettext
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
	mov	edx, OFFSET FLAT:.str.18
	mov	ecx, OFFSET FLAT:.str.22
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.81
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:.str.22
	mov	ecx, OFFSET FLAT:.str.82
	xor	eax, eax
	call	__printf_chk
	mov	edi, ebp
	call	exit
.label_7:
	mov	rbx,  qword ptr [word ptr [rip + stderr]]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str
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
	.align	16
	#Procedure 0x402f80

	.globl main
	.type main, @function
main:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x3b8
	mov	rbx, rsi
	mov	qword ptr [rsp + 0xd0], rbx
	mov	r15d, edi
	mov	edi, OFFSET FLAT:.str.23
	call	getenv
	mov	qword ptr [rsp + 0xf0], rax
	call	posix2_version
	add	eax, 0xfffcf250
	cmp	eax, 0x2b8
	seta	al
	mov	dword ptr [rsp + 0xe0], eax
	mov	rdi, qword ptr [rbx]
	call	set_program_name
	mov	edi, 6
	mov	esi, OFFSET FLAT:.str_1
	call	setlocale
	mov	qword ptr [rsp + 0xc0], rax
	test	rax, rax
	setne	byte ptr [rsp + 0xc8]
	mov	edi, OFFSET FLAT:.str.25
	mov	esi, OFFSET FLAT:.str.26
	call	bindtextdomain
	mov	edi, OFFSET FLAT:.str.25
	call	textdomain
	mov	dword ptr [dword ptr [rip + exit_failure]],  2
	mov	edi, 3
	call	hard_locale
	mov	byte ptr [byte ptr [rip + hard_LC_COLLATE]],  al
	mov	edi, 2
	call	hard_locale
	mov	byte ptr [byte ptr [rip + hard_LC_TIME]],  al
	call	localeconv
	mov	rcx, qword ptr [rax]
	movzx	edx, byte ptr [rcx]
	test	edx, edx
	mov	dword ptr [dword ptr [rip + decimal_point]],  edx
	je	.label_21
	cmp	byte ptr [rcx + 1], 0
	je	.label_28
.label_21:
	mov	dword ptr [dword ptr [rip + decimal_point]],  0x2e
.label_28:
	mov	rax, qword ptr [rax + 8]
	movzx	ecx, byte ptr [rax]
	test	ecx, ecx
	mov	dword ptr [dword ptr [rip + thousands_sep]],  ecx
	je	.label_29
	cmp	byte ptr [rax + 1], 0
	je	.label_35
.label_29:
	mov	dword ptr [dword ptr [rip + thousands_sep]],  0xffffffff
.label_35:
	mov	byte ptr [byte ptr [rip + have_read_stdin]],  0
	mov	rbp, -0x100
	call	__ctype_b_loc
	mov	r13, rax
	nop	word ptr cs:[rax + rax]
.label_63:
	mov	rcx, qword ptr [r13]
	movzx	eax, word ptr [rcx + rbp*2 + 0x200]
	and	eax, 1
	movzx	edx, bpl
	cmp	edx, 0xa
	sete	dl
	or	dl, al
	mov	byte ptr [byte ptr [rbp + nonprinting]],  dl
	movzx	ecx, word ptr [rcx + rbp*2 + 0x200]
	mov	edx, ecx
	shr	edx, 0xe
	not	edx
	and	edx, 1
	mov	byte ptr [byte ptr [rbp + nondictionary]],  dl
	test	cl, 8
	jne	.label_40
	movzx	ecx, bpl
	cmp	ecx, 0xa
	setne	cl
	test	ax, ax
	sete	al
	and	al, cl
	jmp	.label_230
	nop	word ptr cs:[rax + rax]
.label_40:
	xor	eax, eax
.label_230:
	mov	byte ptr [byte ptr [rbp + fold_toupper]],  al
	lea	eax, [rbp + 0x180]
	cmp	eax, 0x180
	jae	.label_53
	call	__ctype_toupper_loc
	mov	rax, qword ptr [rax]
	mov	eax, dword ptr [rax + rbp*4 + 0x400]
	jmp	.label_57
	nop	word ptr cs:[rax + rax]
.label_53:
	lea	rax, [rbp + 0x100]
.label_57:
	mov	byte ptr [byte ptr [rbp + temphead]],  al
	inc	rbp
	jne	.label_63
	xor	r12d, r12d
	cmp	byte ptr [byte ptr [rip + hard_LC_TIME]],  0
	je	.label_66
	nop	word ptr cs:[rax + rax]
.label_246:
	lea	edi, [r12 + 0x2000e]
	call	rpl_nl_langinfo
	mov	r14, rax
	mov	rdi, r14
	call	strlen
	mov	rbp, rax
	lea	rdi, [rbp + 1]
	call	xmalloc
	mov	rcx, r12
	shl	rcx, 4
	mov	qword ptr [word ptr [rcx + monthtab]],  rax
	inc	r12
	mov	dword ptr [dword ptr [rcx + label_77]],  r12d
	test	rbp, rbp
	mov	ecx, 0
	je	.label_78
	test	bpl, 1
	mov	esi, 0
	mov	edx, 0
	je	.label_87
	movzx	edi, byte ptr [r14]
	mov	rcx, qword ptr [r13]
	test	byte ptr [rcx + rdi*2], 1
	mov	ecx, 0
	mov	esi, 0
	mov	edx, 1
	jne	.label_87
	mov	cl,  byte ptr [byte ptr [rdi + fold_toupper]]
	mov	byte ptr [rax], cl
	mov	ecx, 1
	mov	esi, 1
	mov	edx, 1
.label_87:
	cmp	rbp, 1
	je	.label_78
	sub	rbp, rdx
	lea	rdx, [r14 + rdx + 1]
	mov	rcx, rsi
	nop	
.label_228:
	movzx	esi, byte ptr [rdx - 1]
	mov	rdi, qword ptr [r13]
	test	byte ptr [rdi + rsi*2], 1
	jne	.label_101
	mov	bl,  byte ptr [byte ptr [rsi + fold_toupper]]
	mov	byte ptr [rax + rcx], bl
	inc	rcx
.label_101:
	movzx	esi, byte ptr [rdx]
	mov	rdi, qword ptr [r13]
	test	byte ptr [rdi + rsi*2], 1
	jne	.label_109
	mov	bl,  byte ptr [byte ptr [rsi + fold_toupper]]
	mov	byte ptr [rax + rcx], bl
	inc	rcx
.label_109:
	add	rdx, 2
	add	rbp, -2
	jne	.label_228
.label_78:
	mov	byte ptr [rax + rcx], 0
	cmp	r12, 0xc
	jne	.label_246
	mov	edi, OFFSET FLAT:monthtab
	mov	esi, 0xc
	mov	edx, 0x10
	mov	ecx, OFFSET FLAT:struct_month_cmp
	call	qsort
.label_66:
	mov	edi, OFFSET FLAT:caught_signals
	call	sigemptyset
	lea	rdx, [rsp + 0x100]
	mov	edi, 0xe
	xor	esi, esi
	call	sigaction
	cmp	qword ptr [rsp + 0x100], 1
	je	.label_126
	mov	edi, OFFSET FLAT:caught_signals
	mov	esi, 0xe
	call	sigaddset
.label_126:
	lea	rdx, [rsp + 0x100]
	mov	edi, 1
	xor	esi, esi
	call	sigaction
	cmp	qword ptr [rsp + 0x100], 1
	je	.label_146
	mov	edi, OFFSET FLAT:caught_signals
	mov	esi, 1
	call	sigaddset
.label_146:
	lea	rdx, [rsp + 0x100]
	mov	edi, 2
	xor	esi, esi
	call	sigaction
	cmp	qword ptr [rsp + 0x100], 1
	je	.label_134
	mov	edi, OFFSET FLAT:caught_signals
	mov	esi, 2
	call	sigaddset
.label_134:
	lea	rdx, [rsp + 0x100]
	mov	edi, 0xd
	xor	esi, esi
	call	sigaction
	cmp	qword ptr [rsp + 0x100], 1
	je	.label_142
	mov	edi, OFFSET FLAT:caught_signals
	mov	esi, 0xd
	call	sigaddset
.label_142:
	lea	rdx, [rsp + 0x100]
	mov	edi, 3
	xor	esi, esi
	call	sigaction
	cmp	qword ptr [rsp + 0x100], 1
	je	.label_147
	mov	edi, OFFSET FLAT:caught_signals
	mov	esi, 3
	call	sigaddset
.label_147:
	lea	rdx, [rsp + 0x100]
	mov	edi, 0xf
	xor	esi, esi
	call	sigaction
	cmp	qword ptr [rsp + 0x100], 1
	je	.label_154
	mov	edi, OFFSET FLAT:caught_signals
	mov	esi, 0xf
	call	sigaddset
.label_154:
	lea	rdx, [rsp + 0x100]
	mov	edi, 0x1d
	xor	esi, esi
	call	sigaction
	cmp	qword ptr [rsp + 0x100], 1
	je	.label_163
	mov	edi, OFFSET FLAT:caught_signals
	mov	esi, 0x1d
	call	sigaddset
.label_163:
	lea	rdx, [rsp + 0x100]
	mov	edi, 0x1b
	xor	esi, esi
	call	sigaction
	cmp	qword ptr [rsp + 0x100], 1
	je	.label_166
	mov	edi, OFFSET FLAT:caught_signals
	mov	esi, 0x1b
	call	sigaddset
.label_166:
	lea	rdx, [rsp + 0x100]
	mov	edi, 0x1a
	xor	esi, esi
	call	sigaction
	cmp	qword ptr [rsp + 0x100], 1
	je	.label_172
	mov	edi, OFFSET FLAT:caught_signals
	mov	esi, 0x1a
	call	sigaddset
.label_172:
	lea	rdx, [rsp + 0x100]
	mov	edi, 0x18
	xor	esi, esi
	call	sigaction
	cmp	qword ptr [rsp + 0x100], 1
	je	.label_178
	mov	edi, OFFSET FLAT:caught_signals
	mov	esi, 0x18
	call	sigaddset
.label_178:
	lea	rdx, [rsp + 0x100]
	mov	edi, 0x19
	xor	esi, esi
	call	sigaction
	cmp	qword ptr [rsp + 0x100], 1
	je	.label_186
	mov	edi, OFFSET FLAT:caught_signals
	mov	esi, 0x19
	call	sigaddset
.label_186:
	mov	qword ptr [word ptr [rsp + 256]], OFFSET FLAT:sighandler
	movups	xmm0,  xmmword ptr [word ptr [rip + label_191]]
	movups	xmmword ptr [rsp + 0x178], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_192]]
	movups	xmmword ptr [rsp + 0x168], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_193]]
	movups	xmmword ptr [rsp + 0x158], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_194]]
	movups	xmmword ptr [rsp + 0x148], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_195]]
	movups	xmmword ptr [rsp + 0x138], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_196]]
	movups	xmmword ptr [rsp + 0x128], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_197]]
	movups	xmmword ptr [rsp + 0x118], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + caught_signals]]
	movups	xmmword ptr [rsp + 0x108], xmm0
	mov	dword ptr [rsp + 0x188], 0
	mov	edi, OFFSET FLAT:caught_signals
	mov	esi, 0xe
	call	sigismember
	test	eax, eax
	je	.label_221
	lea	rsi, [rsp + 0x100]
	mov	edi, 0xe
	xor	edx, edx
	call	sigaction
.label_221:
	mov	edi, OFFSET FLAT:caught_signals
	mov	esi, 1
	call	sigismember
	test	eax, eax
	je	.label_227
	lea	rsi, [rsp + 0x100]
	mov	edi, 1
	xor	edx, edx
	call	sigaction
.label_227:
	mov	edi, OFFSET FLAT:caught_signals
	mov	esi, 2
	call	sigismember
	test	eax, eax
	je	.label_241
	lea	rsi, [rsp + 0x100]
	mov	edi, 2
	xor	edx, edx
	call	sigaction
.label_241:
	mov	edi, OFFSET FLAT:caught_signals
	mov	esi, 0xd
	call	sigismember
	test	eax, eax
	je	.label_248
	lea	rsi, [rsp + 0x100]
	mov	edi, 0xd
	xor	edx, edx
	call	sigaction
.label_248:
	mov	edi, OFFSET FLAT:caught_signals
	mov	esi, 3
	call	sigismember
	test	eax, eax
	je	.label_92
	lea	rsi, [rsp + 0x100]
	mov	edi, 3
	xor	edx, edx
	call	sigaction
.label_92:
	mov	edi, OFFSET FLAT:caught_signals
	mov	esi, 0xf
	call	sigismember
	test	eax, eax
	je	.label_257
	lea	rsi, [rsp + 0x100]
	mov	edi, 0xf
	xor	edx, edx
	call	sigaction
.label_257:
	mov	edi, OFFSET FLAT:caught_signals
	mov	esi, 0x1d
	call	sigismember
	test	eax, eax
	je	.label_261
	lea	rsi, [rsp + 0x100]
	mov	edi, 0x1d
	xor	edx, edx
	call	sigaction
.label_261:
	mov	edi, OFFSET FLAT:caught_signals
	mov	esi, 0x1b
	call	sigismember
	test	eax, eax
	je	.label_265
	lea	rsi, [rsp + 0x100]
	mov	edi, 0x1b
	xor	edx, edx
	call	sigaction
.label_265:
	mov	edi, OFFSET FLAT:caught_signals
	mov	esi, 0x1a
	call	sigismember
	test	eax, eax
	je	.label_220
	lea	rsi, [rsp + 0x100]
	mov	edi, 0x1a
	xor	edx, edx
	call	sigaction
.label_220:
	mov	edi, OFFSET FLAT:caught_signals
	mov	esi, 0x18
	call	sigismember
	test	eax, eax
	je	.label_278
	lea	rsi, [rsp + 0x100]
	mov	edi, 0x18
	xor	edx, edx
	call	sigaction
.label_278:
	mov	edi, OFFSET FLAT:caught_signals
	mov	esi, 0x19
	call	sigismember
	test	eax, eax
	je	.label_284
	lea	rsi, [rsp + 0x100]
	mov	edi, 0x19
	xor	edx, edx
	call	sigaction
.label_284:
	xor	ebp, ebp
	mov	edi, 0x11
	xor	esi, esi
	call	signal
	mov	edi, OFFSET FLAT:exit_cleanup
	call	atexit
	xorps	xmm0, xmm0
	movaps	xmmword ptr [rsp + 0x2f0], xmm0
	movaps	xmmword ptr [rsp + 0x2e0], xmm0
	movaps	xmmword ptr [rsp + 0x2d0], xmm0
	movaps	xmmword ptr [rsp + 0x2c0], xmm0
	mov	qword ptr [rsp + 0x300], 0
	mov	qword ptr [rsp + 0x2d0], -1
	mov	qword ptr [rsp + 0x2c0], -1
	test	r15d, r15d
	js	.label_295
	movsxd	rdi, r15d
	shl	rdi, 3
	call	xmalloc
	mov	qword ptr [rsp + 0xf8], rax
	cmp	qword ptr [rsp + 0xf0], 0
	sete	byte ptr [rsp + 0xa8]
	lea	rax, [rsp + 0x100]
	mov	qword ptr [rsp + 0x90], rax
	mov	rax, -1
	movq	xmm0, rax
	movapd	xmmword ptr [rsp + 0xb0], xmm0
	mov	eax, 0
	mov	qword ptr [rsp + 0x40], rax
	mov	eax, 0
	mov	qword ptr [rsp + 0xd8], rax
	xor	r12d, r12d
	xor	eax, eax
	mov	qword ptr [rsp + 0x20], rax
	xor	eax, eax
	mov	qword ptr [rsp + 0x38], rax
	xor	r13d, r13d
	xor	r14d, r14d
	mov	r8, qword ptr [rsp + 0xd0]
	jmp	.label_73
	nop	
.label_54:
	mov	r13b, cl
.label_73:
	mov	dword ptr [rsp + 0x358], 0xffffffff
	cmp	ebp, -1
	je	.label_320
	cmp	qword ptr [rsp + 0xf0], 0
	je	.label_269
	test	r12, r12
	je	.label_269
	mov	eax, dword ptr [rsp + 0xe0]
	test	al, 1
	je	.label_11
	test	r14b, r14b
	jne	.label_11
	movsxd	rax,  dword ptr [dword ptr [rip + optind]]
	cmp	eax, r15d
	je	.label_11
	mov	rcx, qword ptr [r8 + rax*8]
	movzx	edx, byte ptr [rcx]
	cmp	edx, 0x2d
	jne	.label_11
	movzx	edx, byte ptr [rcx + 1]
	cmp	edx, 0x6f
	jne	.label_11
	inc	eax
	cmp	eax, r15d
	jne	.label_269
	mov	al, byte ptr [rcx + 2]
	test	al, al
	je	.label_11
	nop	
.label_269:
	mov	edx, OFFSET FLAT:short_options
	mov	ecx, OFFSET FLAT:long_options
	mov	edi, r15d
	mov	rsi, r8
	mov	rbx, r8
	lea	r8, [rsp + 0x358]
	call	getopt_long
	test	eax, eax
	jle	.label_17
	lea	edx, [rax - 0x43]
	cmp	edx, 0x44
	ja	.label_20
	mov	ebp, 0x6d
	mov	cl, 1
	mov	r8, rbx
	jmp	qword ptr [word ptr [+ (rdx * 8) + label_25]]
.label_1679:
	mov	rbx, r8
	mov	eax, dword ptr [rsp + 0x358]
	mov	dword ptr [rsp + 0xe8], eax
	mov	rbp,  qword ptr [word ptr [rip + optarg]]
	mov	edx, 0xa
	mov	r8d, OFFSET FLAT:.str.140
	mov	rdi, rbp
	lea	rsi, [rsp + 0x360]
	lea	rcx, [rsp + 0x100]
	call	xstrtoumax
	cmp	eax, 2
	je	.label_38
	test	eax, eax
	mov	r8, rbx
	jne	.label_39
	mov	rax, qword ptr [rsp + 0x360]
	movsx	eax, byte ptr [rax - 1]
	add	eax, -0x30
	cmp	eax, 9
	ja	.label_42
	mov	rcx, qword ptr [rsp + 0x100]
	mov	eax, 1
	mov	rdx, rcx
	shr	rdx, 0x36
	jne	.label_39
	shl	rcx, 0xa
	jmp	.label_48
	nop	
.label_320:
	mov	ebp, 0xffffffff
.label_11:
	movsxd	rax,  dword ptr [dword ptr [rip + optind]]
	cmp	eax, r15d
	jge	.label_50
	lea	ecx, [rax + 1]
	mov	dword ptr [dword ptr [rip + optind]],  ecx
	mov	rax, qword ptr [r8 + rax*8]
	mov	rcx, qword ptr [rsp + 0xf8]
	mov	qword ptr [rcx + r12*8], rax
	inc	r12
.label_110:
	mov	cl, r13b
	jmp	.label_54
.label_17:
	cmp	eax, -1
	mov	ebp, 0xffffffff
	mov	r8, rbx
	je	.label_11
	jmp	.label_59
.label_20:
	cmp	eax, 1
	mov	rcx, rbx
	jne	.label_60
	mov	rdi,  qword ptr [word ptr [rip + optarg]]
	movzx	eax, byte ptr [rdi]
	cmp	eax, 0x2b
	jne	.label_313
	mov	qword ptr [rsp + 0xe8], r13
	movsxd	rax,  dword ptr [dword ptr [rip + optind]]
	cmp	eax, r15d
	jne	.label_68
	xor	ebx, ebx
	jmp	.label_72
.label_1680:
	mov	qword ptr [rsp + 0x48], r14
	mov	rbx,  qword ptr [word ptr [rip + optarg]]
	mov	rsi,  qword ptr [word ptr [rip + temp_dir_count]]
	cmp	rsi,  qword ptr [word ptr [rip + temp_dir_alloc]]
	jne	.label_74
	mov	rdi,  qword ptr [word ptr [rip + temp_dirs]]
	test	rdi, rdi
	je	.label_79
	movabs	rax, 0xaaaaaaaaaaaaaaa
	cmp	rsi, rax
	jae	.label_83
	mov	rbp, r8
	mov	rax, rsi
	shr	rax, 1
	lea	rsi, [rsi + rax + 1]
	jmp	.label_88
.label_1688:
	mov	rsi,  qword ptr [word ptr [rip + optarg]]
	mov	eax, 0x63
	test	rsi, rsi
	je	.label_90
	mov	r9,  qword ptr [word ptr [rip + argmatch_die]]
	mov	edi, OFFSET FLAT:.str.33
	mov	edx, OFFSET FLAT:check_args
	mov	ecx, OFFSET FLAT:check_types
	mov	rbx, r8
	mov	r8d, 1
	call	__xargmatch_internal
	mov	r8, rbx
	movsx	eax,  byte ptr [byte ptr [rax + check_types]]
.label_90:
	test	r14b, r14b
	je	.label_100
	movsx	ecx, r14b
	cmp	ecx, eax
	jne	.label_103
.label_100:
	mov	cl, r13b
	mov	r14b, al
	mov	ebp, eax
	jmp	.label_73
.label_1690:
	mov	byte ptr [byte ptr [rip + debug]],  1
	mov	ebp, 0x82
	jmp	.label_110
.label_1691:
	mov	rax,  qword ptr [word ptr [rip + optarg]]
	mov	qword ptr [rsp + 0xd8], rax
	mov	ebp, 0x83
	jmp	.label_110
.label_1694:
	mov	rsi,  qword ptr [word ptr [rip + optarg]]
	mov	r9,  qword ptr [word ptr [rip + argmatch_die]]
	mov	edi, OFFSET FLAT:.str.32
	mov	edx, OFFSET FLAT:sort_args
	mov	ecx, OFFSET FLAT:sort_types
	mov	rbx, r8
	mov	r8d, 1
	call	__xargmatch_internal
	mov	r8, rbx
	movsx	eax,  byte ptr [byte ptr [rax + sort_types]]
.label_1678:
	mov	ebp, eax
	mov	byte ptr [rsp + 0x100], bpl
	mov	byte ptr [rsp + 0x101], 0
	test	bpl, bpl
	lea	rax, [rsp + 0x101]
	mov	cl, bpl
	je	.label_110
	nop	word ptr cs:[rax + rax]
.label_155:
	movsx	ecx, cl
	cmp	ecx, 0x61
	jle	.label_201
	add	ecx, -0x62
	cmp	ecx, 0x10
	ja	.label_110
	jmp	qword ptr [word ptr [+ (rcx * 8) + label_214]]
.label_1734:
	mov	word ptr [rsp + 0x2f0], 0x101
	jmp	.label_89
	nop	word ptr [rax + rax]
.label_201:
	cmp	ecx, 0x4d
	je	.label_136
	cmp	ecx, 0x52
	je	.label_138
	cmp	ecx, 0x56
	jne	.label_110
	mov	byte ptr [rsp + 0x2f8], 1
	jmp	.label_89
.label_1736:
	mov	qword ptr [word ptr [rsp + 744]], OFFSET FLAT:fold_toupper
	jmp	.label_89
.label_1737:
	mov	byte ptr [rsp + 0x2f4], 1
	jmp	.label_89
.label_1740:
	mov	byte ptr [rsp + 0x2f2], 1
	jmp	.label_89
.label_1735:
	mov	qword ptr [word ptr [rsp + 736]], OFFSET FLAT:nondictionary
	jmp	.label_89
.label_1738:
	mov	byte ptr [rsp + 0x2f5], 1
	jmp	.label_89
.label_1739:
	cmp	qword ptr [rsp + 0x2e0], 0
	jne	.label_89
	mov	qword ptr [word ptr [rsp + 736]], OFFSET FLAT:nonprinting
	jmp	.label_89
.label_1741:
	mov	byte ptr [rsp + 0x2f7], 1
	jmp	.label_89
.label_136:
	mov	byte ptr [rsp + 0x2f6], 1
	jmp	.label_89
.label_138:
	mov	byte ptr [rsp + 0x2f3], 1
	nop	dword ptr [rax]
.label_89:
	mov	cl, byte ptr [rax]
	inc	rax
	test	cl, cl
	jne	.label_155
	jmp	.label_110
.label_1681:
	xorpd	xmm0, xmm0
	movapd	xmmword ptr [rsp + 0x340], xmm0
	movapd	xmmword ptr [rsp + 0x330], xmm0
	movapd	xmmword ptr [rsp + 0x320], xmm0
	movapd	xmmword ptr [rsp + 0x310], xmm0
	mov	qword ptr [rsp + 0x350], 0
	mov	qword ptr [rsp + 0x320], -1
	mov	rdi,  qword ptr [word ptr [rip + optarg]]
	mov	edx, OFFSET FLAT:.str.36
	lea	rsi, [rsp + 0x310]
	call	parse_field_count
	mov	rdx, qword ptr [rsp + 0x310]
	lea	rcx, [rdx - 1]
	mov	qword ptr [rsp + 0x310], rcx
	test	rdx, rdx
	je	.label_86
	movzx	edx, byte ptr [rax]
	cmp	edx, 0x2e
	jne	.label_173
	inc	rax
	mov	edx, OFFSET FLAT:.str.30
	mov	rdi, rax
	lea	rsi, [rsp + 0x318]
	call	parse_field_count
	mov	rcx, qword ptr [rsp + 0x318]
	lea	rdx, [rcx - 1]
	mov	qword ptr [rsp + 0x318], rdx
	test	rcx, rcx
	je	.label_177
	mov	rcx, qword ptr [rsp + 0x310]
	jmp	.label_182
.label_1682:
	mov	qword ptr [rsp + 0x48], r14
	mov	rdi, qword ptr [rsp + 0x40]
	test	rdi, rdi
	mov	ebp, 0x6f
	mov	rbx,  qword ptr [word ptr [rip + optarg]]
	je	.label_185
	mov	rsi, rbx
	mov	r14, r8
	call	strcmp
	mov	r8, r14
	test	eax, eax
	mov	qword ptr [rsp + 0x40], rbx
	mov	cl, r13b
	mov	r14, qword ptr [rsp + 0x48]
	je	.label_54
	jmp	.label_203
.label_1683:
	mov	byte ptr [byte ptr [rip + stable]],  1
	mov	ebp, 0x73
	jmp	.label_110
.label_1684:
	mov	rax,  qword ptr [word ptr [rip + optarg]]
	mov	cl, byte ptr [rax]
	test	cl, cl
	je	.label_204
	mov	dl, byte ptr [rax + 1]
	test	dl, dl
	je	.label_207
	movzx	ecx, cl
	cmp	ecx, 0x5c
	jne	.label_184
	movzx	ecx, dl
	cmp	ecx, 0x30
	jne	.label_184
	cmp	byte ptr [rax + 2], 0
	jne	.label_184
	xor	ecx, ecx
.label_207:
	mov	edx,  dword ptr [dword ptr [rip + tab]]
	cmp	edx, 0x80
	movsx	eax, cl
	je	.label_215
	cmp	edx, eax
	jne	.label_218
.label_215:
	mov	dword ptr [dword ptr [rip + tab]],  eax
	mov	ebp, 0x74
	jmp	.label_110
.label_1685:
	mov	byte ptr [byte ptr [rip + unique]],  1
	mov	ebp, 0x75
	jmp	.label_110
.label_1686:
	mov	rcx,  qword ptr [word ptr [rip + optarg]]
	movsxd	rax,  dword ptr [dword ptr [rip + optind]]
	mov	ebp, 0x79
	cmp	rcx, qword ptr [r8 + rax*8 - 8]
	jne	.label_110
	nop	word ptr cs:[rax + rax]
.label_236:
	movsx	edx, byte ptr [rcx]
	lea	esi, [rdx - 0x30]
	inc	rcx
	cmp	esi, 0xa
	jb	.label_236
	cmp	dl, 1
	adc	eax, -1
	mov	dword ptr [dword ptr [rip + optind]],  eax
	jmp	.label_110
.label_1687:
	mov	byte ptr [byte ptr [rip + eolchar]],  1
	mov	ebp, 0x7a
	jmp	.label_110
.label_1689:
	mov	qword ptr [rsp + 0x48], r14
	mov	rdi,  qword ptr [word ptr [rip + compress_program]]
	test	rdi, rdi
	je	.label_247
	mov	rbx,  qword ptr [word ptr [rip + optarg]]
	mov	rsi, rbx
	mov	rbp, r8
	call	strcmp
	mov	r8, rbp
	test	eax, eax
	je	.label_251
	jmp	.label_253
.label_1692:
	mov	rbx, r8
	mov	qword ptr [rsp + 0x48], r14
	mov	rbp, r12
	movsxd	rax, dword ptr [rsp + 0x358]
	mov	qword ptr [rsp + 0x88], rax
	mov	rdi,  qword ptr [word ptr [rip + optarg]]
	mov	qword ptr [rsp + 0xe8], rdi
	xor	esi, esi
	mov	edx, 0xa
	xor	r8d, r8d
	lea	rcx, [rsp + 0x3a0]
	call	xstrtoumax
	mov	r12d, eax
	mov	edi, 7
	lea	rsi, [rsp + 0x100]
	call	getrlimit
	mov	r14d, dword ptr [rsp + 0x100]
	add	r14d, -3
	test	eax, eax
	mov	eax, 0x11
	cmovne	r14d, eax
	test	r12d, r12d
	jne	.label_262
	mov	rax, qword ptr [rsp + 0x3a0]
	mov	dword ptr [dword ptr [rip + nmerge]],  eax
	mov	ecx, eax
	cmp	rcx, rax
	mov	r12, rbp
	mov	r8, rbx
	jne	.label_266
	cmp	eax, 1
	jbe	.label_271
	cmp	r14d, eax
	jb	.label_266
	mov	ebp, 0x84
	jmp	.label_65
.label_1693:
	mov	qword ptr [rsp + 0x48], r14
	mov	rdi, qword ptr [rsp + 0x38]
	test	rdi, rdi
	mov	ebp, 0x85
	mov	rbx,  qword ptr [word ptr [rip + optarg]]
	je	.label_275
	mov	rsi, rbx
	call	strcmp
	test	eax, eax
	mov	qword ptr [rsp + 0x38], rbx
	mov	cl, r13b
	mov	r14, qword ptr [rsp + 0x48]
	mov	r8, qword ptr [rsp + 0xd0]
	je	.label_54
	jmp	.label_288
.label_1695:
	mov	rbx, r8
	mov	qword ptr [rsp + 0x48], r14
	mov	r14d, dword ptr [rsp + 0x358]
	mov	rbp,  qword ptr [word ptr [rip + optarg]]
	xor	esi, esi
	mov	edx, 0xa
	mov	r8d, OFFSET FLAT:.str_1
	mov	rdi, rbp
	lea	rcx, [rsp + 0x100]
	call	xstrtoul
	test	eax, eax
	je	.label_298
	mov	qword ptr [rsp + 0x20], -1
	cmp	eax, 1
	mov	r8, rbx
	je	.label_61
	jmp	.label_303
.label_74:
	mov	rax,  qword ptr [word ptr [rip + temp_dirs]]
	jmp	.label_304
.label_38:
	mov	rcx, qword ptr [rsp + 0x360]
	movsx	edx, byte ptr [rcx - 1]
	add	edx, -0x30
	mov	eax, 2
	cmp	edx, 9
	mov	r8, rbx
	ja	.label_39
	cmp	byte ptr [rcx + 1], 0
	jne	.label_39
	movsx	ecx, byte ptr [rcx]
	cmp	ecx, 0x62
	je	.label_42
	cmp	ecx, 0x25
	jne	.label_39
	mov	rbx, r8
	call	physmem_total
	mov	r8, rbx
	movq	xmm2, qword ptr [rsp + 0x100]
	punpckldq	xmm2,  xmmword ptr [word ptr [rip + label_233]]
	subpd	xmm2,  xmmword ptr [word ptr [rip + label_234]]
	pshufd	xmm1, xmm2, 0x4e
	addpd	xmm1, xmm2
	mulsd	xmm1, xmm0
	divsd	xmm1,  qword ptr [word ptr [rip + label_311]]
	mov	eax, 1
	movsd	xmm0,  qword ptr [word ptr [rip + label_312]]
	ucomisd	xmm0, xmm1
	jbe	.label_39
	movapd	xmm0, xmm1
	movsd	xmm2,  qword ptr [word ptr [rip + label_235]]
	subsd	xmm0, xmm2
	cvttsd2si	rax, xmm0
	movabs	rcx, 0x8000000000000000
	xor	rax, rcx
	cvttsd2si	rcx, xmm1
	ucomisd	xmm1, xmm2
	cmovae	rcx, rax
.label_48:
	mov	qword ptr [rsp + 0x100], rcx
.label_42:
	mov	rax, qword ptr [rsp + 0x100]
	cmp	rax,  qword ptr [word ptr [rip + sort_size]]
	jb	.label_293
	mov	ecx,  dword ptr [dword ptr [rip + nmerge]]
	imul	rcx, rcx, 0x22
	cmp	rax, rcx
	cmova	rcx, rax
	mov	qword ptr [word ptr [rip + sort_size]],  rcx
.label_293:
	mov	ebp, 0x53
	jmp	.label_110
.label_173:
	mov	rdx, qword ptr [rsp + 0x318]
.label_182:
	or	rdx, rcx
	jne	.label_9
	mov	qword ptr [rsp + 0x310], -1
.label_9:
	mov	cl, byte ptr [rax]
	jmp	.label_12
	nop	dword ptr [rax]
.label_27:
	mov	cl, byte ptr [rax + 1]
	inc	rax
.label_12:
	test	cl, cl
	je	.label_14
	movsx	edx, cl
	cmp	edx, 0x61
	jle	.label_16
	add	edx, -0x62
	cmp	edx, 0x10
	ja	.label_18
	jmp	qword ptr [word ptr [+ (rdx * 8) + label_24]]
.label_1709:
	mov	byte ptr [rsp + 0x340], 1
	jmp	.label_27
	nop	word ptr cs:[rax + rax]
.label_16:
	cmp	edx, 0x4d
	je	.label_30
	cmp	edx, 0x52
	je	.label_34
	cmp	edx, 0x56
	jne	.label_18
	mov	byte ptr [rsp + 0x348], 1
	jmp	.label_27
.label_1710:
	mov	qword ptr [word ptr [rsp + 816]], OFFSET FLAT:nondictionary
	jmp	.label_27
.label_1711:
	mov	qword ptr [word ptr [rsp + 824]], OFFSET FLAT:fold_toupper
	jmp	.label_27
.label_1712:
	mov	byte ptr [rsp + 0x344], 1
	jmp	.label_27
.label_1713:
	mov	byte ptr [rsp + 0x345], 1
	jmp	.label_27
.label_1714:
	cmp	qword ptr [rsp + 0x330], 0
	jne	.label_27
	mov	qword ptr [word ptr [rsp + 816]], OFFSET FLAT:nonprinting
	jmp	.label_27
.label_1715:
	mov	byte ptr [rsp + 0x342], 1
	jmp	.label_27
.label_1716:
	mov	byte ptr [rsp + 0x347], 1
	jmp	.label_27
.label_30:
	mov	byte ptr [rsp + 0x346], 1
	jmp	.label_27
.label_34:
	mov	byte ptr [rsp + 0x343], 1
	jmp	.label_27
.label_298:
	mov	rax, qword ptr [rsp + 0x100]
	mov	qword ptr [rsp + 0x20], rax
	test	rax, rax
	mov	r8, rbx
	je	.label_55
.label_61:
	mov	ebp, 0x87
	jmp	.label_65
.label_313:
	mov	qword ptr [rsp + 0xe8], r13
	jmp	.label_62
.label_185:
	mov	qword ptr [rsp + 0x40], rbx
	jmp	.label_65
.label_247:
	mov	rbx,  qword ptr [word ptr [rip + optarg]]
.label_251:
	mov	qword ptr [word ptr [rip + compress_program]],  rbx
	mov	ebp, 0x81
	jmp	.label_65
.label_275:
	mov	qword ptr [rsp + 0x38], rbx
	mov	cl, r13b
	mov	r14, qword ptr [rsp + 0x48]
	mov	r8, qword ptr [rsp + 0xd0]
	jmp	.label_73
.label_18:
	movzx	ecx, cl
	cmp	ecx, 0x2c
	jne	.label_14
	inc	rax
	mov	edx, OFFSET FLAT:.str.39
	mov	rdi, rax
	lea	rsi, [rsp + 0x320]
	call	parse_field_count
	mov	rcx, qword ptr [rsp + 0x320]
	lea	rdx, [rcx - 1]
	mov	qword ptr [rsp + 0x320], rdx
	test	rcx, rcx
	je	.label_86
	movzx	ecx, byte ptr [rax]
	cmp	ecx, 0x2e
	jne	.label_124
	inc	rax
	mov	edx, OFFSET FLAT:.str.30
	mov	rdi, rax
	lea	rsi, [rsp + 0x328]
	call	parse_field_count
	mov	cl, byte ptr [rax]
.label_124:
	test	cl, cl
	je	.label_131
	inc	rax
	nop	dword ptr [rax]
.label_129:
	movsx	ecx, cl
	cmp	ecx, 0x61
	jle	.label_98
	add	ecx, -0x62
	cmp	ecx, 0x10
	ja	.label_99
	jmp	qword ptr [word ptr [+ (rcx * 8) + label_104]]
.label_1836:
	mov	byte ptr [rsp + 0x341], 1
	jmp	.label_106
	nop	dword ptr [rax + rax]
.label_98:
	cmp	ecx, 0x4d
	je	.label_111
	cmp	ecx, 0x52
	je	.label_112
	cmp	ecx, 0x56
	jne	.label_99
	mov	byte ptr [rsp + 0x348], 1
	jmp	.label_106
.label_1837:
	mov	qword ptr [word ptr [rsp + 816]], OFFSET FLAT:nondictionary
	jmp	.label_106
.label_1838:
	mov	qword ptr [word ptr [rsp + 824]], OFFSET FLAT:fold_toupper
	jmp	.label_106
.label_1839:
	mov	byte ptr [rsp + 0x344], 1
	jmp	.label_106
.label_1840:
	mov	byte ptr [rsp + 0x345], 1
	jmp	.label_106
.label_1841:
	cmp	qword ptr [rsp + 0x330], 0
	jne	.label_106
	mov	qword ptr [word ptr [rsp + 816]], OFFSET FLAT:nonprinting
	jmp	.label_106
.label_1842:
	mov	byte ptr [rsp + 0x342], 1
	jmp	.label_106
.label_1843:
	mov	byte ptr [rsp + 0x347], 1
	jmp	.label_106
.label_111:
	mov	byte ptr [rsp + 0x346], 1
	jmp	.label_106
.label_112:
	mov	byte ptr [rsp + 0x343], 1
	nop	dword ptr [rax]
.label_106:
	mov	cl, byte ptr [rax]
	inc	rax
	test	cl, cl
	jne	.label_129
	jmp	.label_131
.label_14:
	movapd	xmm0, xmmword ptr [rsp + 0xb0]
	movapd	xmmword ptr [rsp + 0x320], xmm0
	cmp	byte ptr [rax], 0
	jne	.label_99
.label_131:
	mov	esi, 0x48
	lea	rdi, [rsp + 0x310]
	call	xmemdup
	mov	edx, OFFSET FLAT:keylist
	nop	word ptr cs:[rax + rax]
.label_102:
	mov	rcx, rdx
	mov	rdx, qword ptr [rcx]
	test	rdx, rdx
	lea	rdx, [rdx + 0x40]
	jne	.label_102
	mov	qword ptr [rcx], rax
	mov	qword ptr [rax + 0x40], 0
	mov	ebp, 0x6b
	mov	cl, r13b
	mov	r8, qword ptr [rsp + 0xd0]
	jmp	.label_73
.label_68:
	mov	rax, qword ptr [rcx + rax*8]
	movzx	ecx, byte ptr [rax]
	cmp	ecx, 0x2d
	jne	.label_144
	movsx	eax, byte ptr [rax + 1]
	add	eax, -0x30
	cmp	eax, 0xa
	setb	bl
	jmp	.label_72
.label_79:
	mov	rbp, r8
	test	rsi, rsi
	mov	eax, 0x10
	cmove	rsi, rax
	mov	rax, rsi
	shr	rax, 0x3c
	jne	.label_148
.label_88:
	mov	qword ptr [word ptr [rip + temp_dir_alloc]],  rsi
	shl	rsi, 3
	call	xrealloc
	mov	qword ptr [word ptr [rip + temp_dirs]],  rax
	mov	rsi,  qword ptr [word ptr [rip + temp_dir_count]]
	mov	r8, rbp
.label_304:
	lea	rcx, [rsi + 1]
	mov	qword ptr [word ptr [rip + temp_dir_count]],  rcx
	mov	qword ptr [rax + rsi*8], rbx
	mov	ebp, 0x54
.label_65:
	mov	cl, r13b
	mov	r14, qword ptr [rsp + 0x48]
	jmp	.label_73
.label_144:
	xor	ebx, ebx
.label_72:
	mov	al, bl
	and	al, byte ptr [rsp + 0xa8]
	mov	ecx, dword ptr [rsp + 0xe0]
	and	cl, 1
	or	cl, al
	mov	dword ptr [rsp + 0xe0], ecx
	je	.label_165
	xorpd	xmm0, xmm0
	movapd	xmmword ptr [rsp + 0x340], xmm0
	movapd	xmmword ptr [rsp + 0x330], xmm0
	movapd	xmmword ptr [rsp + 0x320], xmm0
	movapd	xmmword ptr [rsp + 0x310], xmm0
	mov	qword ptr [rsp + 0x350], 0
	mov	qword ptr [rsp + 0x320], -1
	inc	rdi
	mov	edx, 0xa
	mov	r8d, OFFSET FLAT:.str_1
	lea	rsi, [rsp + 0x100]
	lea	rcx, [rsp + 0x360]
	call	xstrtoumax
	mov	ecx, eax
	cmp	eax, 4
	ja	.label_180
	jmp	qword ptr [word ptr [+ (rcx * 8) + label_181]]
.label_1644:
	mov	rax, qword ptr [rsp + 0x360]
	mov	qword ptr [rsp + 0x310], rax
	jmp	.label_180
.label_165:
	mov	dword ptr [rsp + 0xe0], 0
	jmp	.label_62
.label_1645:
	mov	qword ptr [rsp + 0x310], -1
.label_180:
	mov	rdi, qword ptr [rsp + 0x100]
	test	rdi, rdi
	mov	ecx, 0
	je	.label_199
	movzx	eax, byte ptr [rdi]
	cmp	eax, 0x2e
	jne	.label_140
	inc	rdi
	mov	edx, 0xa
	mov	r8d, OFFSET FLAT:.str_1
	lea	rsi, [rsp + 0x100]
	lea	rcx, [rsp + 0x360]
	call	xstrtoumax
	xor	ecx, ecx
	mov	edx, eax
	cmp	eax, 4
	ja	.label_171
	jmp	qword ptr [word ptr [+ (rdx * 8) + label_208]]
.label_1718:
	mov	rax, qword ptr [rsp + 0x360]
	mov	qword ptr [rsp + 0x318], rax
	jmp	.label_171
.label_140:
	mov	rcx, rdi
	jmp	.label_199
.label_1646:
	xor	ecx, ecx
	jmp	.label_199
.label_1719:
	mov	qword ptr [rsp + 0x318], -1
.label_171:
	mov	rcx, qword ptr [rsp + 0x100]
.label_199:
	mov	rax, qword ptr [rsp + 0x310]
	or	rax, qword ptr [rsp + 0x318]
	jne	.label_217
	mov	qword ptr [rsp + 0x310], -1
.label_217:
	test	rcx, rcx
	je	.label_62
	mov	al, byte ptr [rcx]
	test	al, al
	je	.label_224
	inc	rcx
	nop	dword ptr [rax + rax]
.label_258:
	movsx	eax, al
	cmp	eax, 0x61
	jle	.label_225
	add	eax, -0x62
	cmp	eax, 0x10
	ja	.label_62
	jmp	qword ptr [word ptr [+ (rax * 8) + label_229]]
.label_1749:
	mov	byte ptr [rsp + 0x340], 1
	jmp	.label_49
	nop	dword ptr [rax + rax]
.label_225:
	cmp	eax, 0x4d
	je	.label_239
	cmp	eax, 0x52
	je	.label_242
	cmp	eax, 0x56
	jne	.label_62
	mov	byte ptr [rsp + 0x348], 1
	jmp	.label_49
.label_1750:
	mov	qword ptr [word ptr [rsp + 816]], OFFSET FLAT:nondictionary
	jmp	.label_49
.label_1751:
	mov	qword ptr [word ptr [rsp + 824]], OFFSET FLAT:fold_toupper
	jmp	.label_49
.label_1752:
	mov	byte ptr [rsp + 0x344], 1
	jmp	.label_49
.label_1753:
	mov	byte ptr [rsp + 0x345], 1
	jmp	.label_49
.label_1754:
	cmp	qword ptr [rsp + 0x330], 0
	jne	.label_49
	mov	qword ptr [word ptr [rsp + 816]], OFFSET FLAT:nonprinting
	jmp	.label_49
.label_1755:
	mov	byte ptr [rsp + 0x342], 1
	jmp	.label_49
.label_1756:
	mov	byte ptr [rsp + 0x347], 1
	jmp	.label_49
.label_239:
	mov	byte ptr [rsp + 0x346], 1
	jmp	.label_49
.label_242:
	mov	byte ptr [rsp + 0x343], 1
	nop	dword ptr [rax]
.label_49:
	mov	al, byte ptr [rcx]
	inc	rcx
	test	al, al
	jne	.label_258
.label_224:
	test	bl, bl
	je	.label_159
	movsxd	rax,  dword ptr [dword ptr [rip + optind]]
	lea	ecx, [rax + 1]
	mov	dword ptr [dword ptr [rip + optind]],  ecx
	mov	rcx, qword ptr [rsp + 0xd0]
	mov	rbx, qword ptr [rcx + rax*8]
	lea	rdi, [rbx + 1]
	mov	edx, OFFSET FLAT:.str.27
	lea	rsi, [rsp + 0x320]
	call	parse_field_count
	test	rax, rax
	je	.label_268
	movzx	ecx, byte ptr [rax]
	cmp	ecx, 0x2e
	jne	.label_270
	inc	rax
	mov	edx, OFFSET FLAT:.str.30
	mov	rdi, rax
	lea	rsi, [rsp + 0x328]
	call	parse_field_count
.label_270:
	cmp	qword ptr [rsp + 0x328], 0
	jne	.label_274
	mov	rcx, qword ptr [rsp + 0x320]
	test	rcx, rcx
	je	.label_274
	dec	rcx
	mov	qword ptr [rsp + 0x320], rcx
.label_274:
	mov	cl, byte ptr [rax]
	test	cl, cl
	je	.label_159
	inc	rax
.label_310:
	movsx	ecx, cl
	cmp	ecx, 0x61
	jle	.label_281
	add	ecx, -0x62
	cmp	ecx, 0x10
	ja	.label_282
	jmp	qword ptr [word ptr [+ (rcx * 8) + label_285]]
.label_1764:
	mov	byte ptr [rsp + 0x341], 1
	jmp	.label_287
.label_281:
	cmp	ecx, 0x4d
	je	.label_291
	cmp	ecx, 0x52
	je	.label_292
	cmp	ecx, 0x56
	jne	.label_282
	mov	byte ptr [rsp + 0x348], 1
	jmp	.label_287
.label_1765:
	mov	qword ptr [word ptr [rsp + 816]], OFFSET FLAT:nondictionary
	jmp	.label_287
.label_1766:
	mov	qword ptr [word ptr [rsp + 824]], OFFSET FLAT:fold_toupper
	jmp	.label_287
.label_1767:
	mov	byte ptr [rsp + 0x344], 1
	jmp	.label_287
.label_1768:
	mov	byte ptr [rsp + 0x345], 1
	jmp	.label_287
.label_1769:
	cmp	qword ptr [rsp + 0x330], 0
	jne	.label_287
	mov	qword ptr [word ptr [rsp + 816]], OFFSET FLAT:nonprinting
	jmp	.label_287
.label_1770:
	mov	byte ptr [rsp + 0x342], 1
	jmp	.label_287
.label_1771:
	mov	byte ptr [rsp + 0x347], 1
	jmp	.label_287
.label_291:
	mov	byte ptr [rsp + 0x346], 1
	jmp	.label_287
.label_292:
	mov	byte ptr [rsp + 0x343], 1
	nop	word ptr cs:[rax + rax]
.label_287:
	mov	cl, byte ptr [rax]
	inc	rax
	test	cl, cl
	jne	.label_310
.label_159:
	mov	byte ptr [rsp + 0x349], 1
	mov	esi, 0x48
	lea	rdi, [rsp + 0x310]
	call	xmemdup
	mov	edx, OFFSET FLAT:keylist
	nop	dword ptr [rax]
.label_316:
	mov	rcx, rdx
	mov	rdx, qword ptr [rcx]
	test	rdx, rdx
	lea	rdx, [rdx + 0x40]
	jne	.label_316
	mov	qword ptr [rcx], rax
	mov	qword ptr [rax + 0x40], 0
	jmp	.label_318
.label_62:
	mov	rax,  qword ptr [word ptr [rip + optarg]]
	mov	rcx, qword ptr [rsp + 0xf8]
	mov	qword ptr [rcx + r12*8], rax
	inc	r12
.label_318:
	mov	ebp, 1
	mov	rax, qword ptr [rsp + 0xe8]
	mov	cl, al
	mov	r8, qword ptr [rsp + 0xd0]
	mov	r13b, cl
	jmp	.label_73
.label_50:
	cmp	qword ptr [rsp + 0xd8], 0
	je	.label_115
	test	r12, r12
	jne	.label_324
	mov	esi, OFFSET FLAT:.str.52
	mov	rdi, qword ptr [rsp + 0xd8]
	call	stream_open
	mov	rbx, rax
	test	rbx, rbx
	je	.label_326
	lea	rbp, [rsp + 0x1a0]
	mov	rdi, rbp
	call	readtokens0_init
	mov	rdi, rbx
	mov	rsi, rbp
	call	readtokens0
	test	al, al
	je	.label_10
	mov	rdi, rbx
	mov	rsi, qword ptr [rsp + 0xd8]
	call	xfclose
	cmp	qword ptr [rsp + 0x1a0], 0
	je	.label_15
	mov	rdi, qword ptr [rsp + 0xf8]
	call	free
	mov	r12, qword ptr [rsp + 0x1a0]
	mov	rbx, qword ptr [rsp + 0x1a8]
	mov	qword ptr [rsp + 0xf8], rbx
	xor	ebp, ebp
.label_37:
	cmp	rbp, r12
	jae	.label_115
	mov	rcx, qword ptr [rbx]
	movzx	eax, byte ptr [rcx]
	cmp	eax, 0x2d
	jne	.label_33
	cmp	byte ptr [rcx + 1], 0
	je	.label_36
.label_33:
	inc	rbp
	add	rbx, 8
	test	al, al
	jne	.label_37
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.56
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	xor	edi, edi
	mov	esi, 3
	mov	rdx, qword ptr [rsp + 0xd8]
	call	quotearg_n_style_colon
	mov	rcx, rax
	mov	edi, 2
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rbx
	mov	r8, rbp
	call	error
.label_115:
	mov	qword ptr [rsp + 0x68], r12
	movabs	r8, 0xff000000000000
	movabs	rcx, 0xffffffffffffff
	mov	rax,  qword ptr [word ptr [rip + keylist]]
	xor	ebp, ebp
	test	rax, rax
	je	.label_47
	lea	r9, [rcx + 1]
	nop	word ptr cs:[rax + rax]
.label_94:
	cmp	qword ptr [rax + 0x20], 0
	jne	.label_52
	cmp	qword ptr [rax + 0x28], 0
	jne	.label_52
	mov	rsi, qword ptr [rax + 0x30]
	test	si, 0xffff
	jne	.label_52
	mov	edi, esi
	shr	edi, 0x10
	test	dil, dil
	jne	.label_52
	test	rsi, r8
	jne	.label_52
	mov	rdi, rsi
	shr	rdi, 0x20
	test	dil, dil
	jne	.label_52
	movzx	edi, di
	cmp	edi, 0xff
	ja	.label_52
	cmp	esi, 0xffffff
	ja	.label_52
	mov	bl, byte ptr [rax + 0x38]
	test	bl, bl
	jne	.label_52
	cmp	rsi, r9
	jae	.label_52
	movapd	xmm0, xmmword ptr [rsp + 0x2e0]
	movupd	xmmword ptr [rax + 0x20], xmm0
	mov	cl, byte ptr [rsp + 0x2f3]
	mov	rbx, qword ptr [rsp + 0x2f0]
	mov	byte ptr [rax + 0x30], bl
	mov	byte ptr [rax + 0x31], bh
	mov	rsi, rbx
	shr	rsi, 0x30
	mov	byte ptr [rax + 0x36], sil
	mov	esi, ebx
	shr	esi, 0x10
	mov	byte ptr [rax + 0x32], sil
	mov	rsi, rbx
	shr	rsi, 0x20
	mov	byte ptr [rax + 0x34], sil
	mov	rsi, rbx
	shr	rsi, 0x28
	mov	byte ptr [rax + 0x35], sil
	mov	dl, byte ptr [rsp + 0x2f8]
	mov	byte ptr [rax + 0x38], dl
	mov	byte ptr [rax + 0x33], cl
	shr	rbx, 0x38
	mov	byte ptr [rax + 0x37], bl
.label_52:
	or	bpl, byte ptr [rax + 0x33]
	mov	rax, qword ptr [rax + 0x40]
	test	rax, rax
	jne	.label_94
	mov	rax,  qword ptr [word ptr [rip + keylist]]
	test	rax, rax
	je	.label_47
	mov	dword ptr [rsp + 0x2c], ebp
	mov	qword ptr [rsp + 0x48], r14
	mov	dword ptr [rsp + 0x70], 0
	jmp	.label_97
.label_47:
	mov	rax, qword ptr [rsp + 0x2e0]
	or	rax, qword ptr [rsp + 0x2e8]
	jne	.label_108
	mov	rax, qword ptr [rsp + 0x2f0]
	test	ax, 0xffff
	jne	.label_108
	mov	ecx, eax
	shr	ecx, 0x10
	test	cl, cl
	jne	.label_108
	test	rax, r8
	jne	.label_108
	shr	rax, 0x20
	test	al, al
	jne	.label_108
	movzx	eax, ax
	cmp	eax, 0xff
	ja	.label_108
	cmp	dword ptr [rsp + 0x2f0], 0xffffff
	ja	.label_108
	mov	al, byte ptr [rsp + 0x2f8]
	test	al, al
	jne	.label_108
	mov	dword ptr [rsp + 0x2c], ebp
	mov	qword ptr [rsp + 0x48], r14
	mov	dword ptr [rsp + 0x70], 0
	jmp	.label_237
.label_108:
	mov	qword ptr [rsp + 0x48], r14
	lea	rdi, [rsp + 0x2c0]
	mov	esi, 0x48
	call	xmemdup
	mov	edx, OFFSET FLAT:keylist
	nop	dword ptr [rax]
.label_127:
	mov	rcx, rdx
	mov	rdx, qword ptr [rcx]
	test	rdx, rdx
	lea	rdx, [rdx + 0x40]
	jne	.label_127
	mov	qword ptr [rcx], rax
	mov	qword ptr [rax + 0x40], 0
	or	bpl, byte ptr [rsp + 0x2f3]
	mov	dword ptr [rsp + 0x2c], ebp
	mov	rax,  qword ptr [word ptr [rip + keylist]]
	mov	cl, 1
	mov	dword ptr [rsp + 0x70], ecx
	jmp	.label_64
.label_59:
	cmp	eax, 0xffffff7d
	je	.label_133
	cmp	eax, 0xffffff7e
	jne	.label_60
	xor	edi, edi
	call	usage
.label_133:
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	mov	rcx,  qword ptr [word ptr [rip + Version]]
	mov	qword ptr [rsp], 0
	mov	esi, OFFSET FLAT:.str.22
	mov	edx, OFFSET FLAT:.str.17_0
	mov	r8d, OFFSET FLAT:.str.47
	mov	r9d, OFFSET FLAT:.str.48
	xor	eax, eax
	call	version_etc
	xor	edi, edi
	call	exit
.label_36:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.55
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	mov	rsi, qword ptr [rbx]
	mov	edi, 4
	call	quotearg_style
	mov	rcx, rax
	mov	edi, 2
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rbp
	call	error
.label_60:
	mov	edi, 2
	call	usage
.label_99:
	mov	rdi,  qword ptr [word ptr [rip + optarg]]
	mov	esi, OFFSET FLAT:.str.31
	call	badfieldspec
.label_103:
	mov	edi, OFFSET FLAT:.str.34
	call	incompatible_options
.label_39:
	mov	edx, 0x53
	mov	ecx, OFFSET FLAT:long_options
	mov	edi, eax
	mov	esi, dword ptr [rsp + 0xe8]
	mov	r8, rbp
	call	xstrtol_fatal
.label_295:
	call	xalloc_die
.label_324:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.49
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	rax, qword ptr [rsp + 0xf8]
	mov	rsi, qword ptr [rax]
	mov	edi, 4
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rbx
	call	error
	mov	rbx,  qword ptr [word ptr [rip + stderr]]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.51
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	esi, 1
	mov	edx, OFFSET FLAT:.str_2
	xor	eax, eax
	mov	rdi, rbx
	call	__fprintf_chk
	mov	edi, 2
	call	usage
.label_326:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.142
	mov	edx, 5
	call	dcgettext
	mov	rdi, rax
	mov	rsi, qword ptr [rsp + 0xd8]
	call	sort_die
.label_10:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.53
	jmp	.label_179
.label_15:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.57
.label_179:
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	edi, 4
	mov	rsi, qword ptr [rsp + 0xd8]
	call	quotearg_style
	jmp	.label_187
.label_282:
	mov	esi, OFFSET FLAT:.str.31
	mov	rdi, rbx
	call	badfieldspec
.label_184:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.44
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	rdi,  qword ptr [word ptr [rip + optarg]]
	call	quote
.label_187:
	mov	rcx, rax
	mov	edi, 2
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rbx
	call	error
.label_86:
	mov	rdi,  qword ptr [word ptr [rip + optarg]]
	mov	esi, OFFSET FLAT:.str.37
	call	badfieldspec
.label_204:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.42
	jmp	.label_205
.label_218:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.45
	jmp	.label_205
.label_262:
	cmp	r12d, 1
	jne	.label_210
.label_266:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.138
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	rax, qword ptr [rsp + 0x88]
	shl	rax, 5
	mov	r15,  qword ptr [word ptr [rax + long_options]]
	mov	rdi, qword ptr [rsp + 0xe8]
	call	quote
	mov	rbp, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rbx
	mov	rcx, r15
	mov	r8, rbp
	call	error
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.139
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	lea	rsi, [rsp + 0x360]
	mov	edi, r14d
	call	uinttostr
	mov	rbp, rax
	mov	edi, 2
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rbx
	mov	rcx, r15
	mov	r8, rbp
	call	error
.label_271:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.135
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	rax, qword ptr [rsp + 0x88]
	shl	rax, 5
	mov	r14,  qword ptr [word ptr [rax + long_options]]
	mov	rdi, qword ptr [rsp + 0xe8]
	call	quote
	mov	rbp, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rbx
	mov	rcx, r14
	mov	r8, rbp
	call	error
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.136
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	edi, OFFSET FLAT:.str.137
	call	quote
	mov	rbp, rax
	mov	edi, 2
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rbx
	mov	rcx, r14
	mov	r8, rbp
	call	error
.label_303:
	mov	edx, 0xffffff87
	mov	ecx, OFFSET FLAT:long_options
	mov	edi, eax
	mov	esi, r14d
	mov	r8, rbp
	call	xstrtol_fatal
.label_203:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.40
	jmp	.label_205
.label_253:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.35
	jmp	.label_205
.label_288:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.41
	jmp	.label_205
.label_177:
	mov	rdi,  qword ptr [word ptr [rip + optarg]]
	mov	esi, OFFSET FLAT:.str.38
	call	badfieldspec
.label_55:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.141
.label_205:
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 2
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	call	error
.label_210:
	mov	edx, 0xffffff84
	mov	ecx, OFFSET FLAT:long_options
	mov	edi, r12d
	mov	rsi, qword ptr [rsp + 0x88]
	mov	r8, qword ptr [rsp + 0xe8]
	call	xstrtol_fatal
.label_83:
	call	xalloc_die
.label_148:
	call	xalloc_die
.label_268:
	mov	edi, OFFSET FLAT:.str.28
	mov	esi, OFFSET FLAT:.str.29
	mov	edx, 0x1112
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.main
	call	__assert_fail
.label_237:
	mov	qword ptr [rsp + 0xe8], r13
	movzx	eax,  byte ptr [byte ptr [rip + debug]]
	and	eax, 1
	cmp	eax, 1
	jne	.label_206
	mov	rax, qword ptr [rsp + 0x40]
	test	rax, rax
	mov	rax, qword ptr [rsp + 0x48]
	jne	.label_289
	test	al, al
	jne	.label_289
	cmp	qword ptr [rsp + 0xc0], 0
	mov	al, byte ptr [rsp + 0xc8]
	je	.label_294
	mov	edi, 3
	mov	esi, OFFSET FLAT:.str_1
	call	setlocale
	test	rax, rax
	setne	al
.label_294:
	test	al, al
	jne	.label_300
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.59
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	mov	edx, OFFSET FLAT:.str_0
	xor	eax, eax
	call	error
.label_300:
	cmp	byte ptr [byte ptr [rip + hard_LC_COLLATE]],  0
	je	.label_305
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.60
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	edi, 3
	xor	esi, esi
	call	setlocale
	mov	rdi, rax
	call	quote
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rbx
	jmp	.label_151
.label_305:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.61
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	mov	edx, OFFSET FLAT:.str_0
	xor	eax, eax
.label_151:
	call	error
	mov	rbp, qword ptr [rsp + 0x2e0]
	mov	r11, qword ptr [rsp + 0x2e8]
	mov	r10, qword ptr [rsp + 0x2f0]
	mov	edi, r10d
	shr	edi, 8
	mov	ecx, r10d
	shr	ecx, 0x10
	mov	eax, r10d
	shr	eax, 0x18
	mov	dword ptr [rsp + 0xf0], eax
	mov	r9, r10
	shr	r9, 0x20
	mov	rsi, r10
	shr	rsi, 0x28
	mov	rdx, r10
	shr	rdx, 0x30
	mov	rbx, r10
	shr	rbx, 0x38
	mov	al, byte ptr [rsp + 0x2f8]
	mov	byte ptr [rsp + 0x50], al
	mov	r14,  qword ptr [word ptr [rip + keylist]]
	test	r14, r14
	je	.label_314
	mov	qword ptr [rsp + 0xc0], rbp
	mov	qword ptr [rsp + 0xc8], r11
	mov	qword ptr [rsp + 0xd0], rdx
	mov	dword ptr [rsp + 0xd8], edi
	mov	dword ptr [rsp + 0xe0], ecx
	mov	eax, 1
	mov	qword ptr [rsp + 0x80], rax
	nop	word ptr cs:[rax + rax]
.label_211:
	mov	qword ptr [rsp + 0x88], r9
	mov	qword ptr [rsp + 0x90], rsi
	mov	qword ptr [rsp + 0xa8], rbx
	mov	qword ptr [rsp + 0xb0], r10
	cmp	byte ptr [r14 + 0x39], 0
	mov	rbx, qword ptr [rsp + 0xe8]
	je	.label_31
	mov	rbp, qword ptr [r14]
	mov	r12, qword ptr [r14 + 0x10]
	cmp	rbp, -1
	sete	al
	movzx	ebx, al
	lea	rdi, [rbx + rbp]
	mov	word ptr [rsp + 0x360], 0x2b
	lea	r13, [rsp + 0x3a0]
	mov	rsi, r13
	call	umaxtostr
	mov	edx, 0x2d
	lea	rdi, [rsp + 0x361]
	mov	rsi, rax
	call	__stpcpy_chk
	mov	r15, rax
	mov	dword ptr [rsp + 0x100], 0x206b2d
	lea	rdi, [rbx + rbp + 1]
	mov	rsi, r13
	call	umaxtostr
	mov	edx, 0x2c
	lea	rdi, [rsp + 0x103]
	mov	rsi, rax
	call	__stpcpy_chk
	mov	rbp, rax
	cmp	qword ptr [r14 + 0x10], -1
	je	.label_46
	mov	rax, r12
	mov	r12, r15
	add	r12, 2
	mov	byte ptr [r15 + 2], 0
	mov	word ptr [r15], 0x2d20
	lea	rdi, [rax + 1]
	mov	r15, rax
	mov	rsi, r13
	call	umaxtostr
	mov	rdi, r12
	mov	rsi, rax
	call	stpcpy
	mov	rbx, rbp
	inc	rbx
	mov	word ptr [rbp], 0x2c
	cmp	qword ptr [r14 + 0x18], -1
	sete	al
	movzx	eax, al
	lea	rdi, [rax + r15 + 1]
	mov	rsi, r13
	call	umaxtostr
	mov	rdi, rbx
	mov	rsi, rax
	call	stpcpy
.label_46:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.150
	mov	edx, 5
	call	dcgettext
	mov	r12, rax
	xor	edi, edi
	lea	rsi, [rsp + 0x360]
	call	quote_n
	mov	rbp, rax
	mov	edi, 1
	lea	rsi, [rsp + 0x100]
	call	quote_n
	mov	rbx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, r12
	mov	rcx, rbp
	mov	r8, rbx
	call	error
	mov	rbx, qword ptr [rsp + 0xe8]
.label_31:
	mov	rax, qword ptr [r14]
	cmp	rax, -1
	je	.label_75
	cmp	qword ptr [r14 + 0x10], rax
	mov	r12d, dword ptr [rsp + 0xd8]
	mov	r13, qword ptr [rsp + 0xd0]
	mov	r15, qword ptr [rsp + 0xc8]
	mov	rbp, qword ptr [rsp + 0xc0]
	jae	.label_76
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.151
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	mov	rcx, qword ptr [rsp + 0x80]
	call	error
	mov	cl, 1
	jmp	.label_93
	nop	word ptr cs:[rax + rax]
.label_75:
	xor	ecx, ecx
	mov	r12d, dword ptr [rsp + 0xd8]
	mov	r13, qword ptr [rsp + 0xd0]
	mov	r15, qword ptr [rsp + 0xc8]
	mov	rbp, qword ptr [rsp + 0xc0]
	jmp	.label_93
	nop	word ptr cs:[rax + rax]
.label_76:
	xor	ecx, ecx
.label_93:
	mov	al, 1
	cmp	byte ptr [r14 + 0x32], 0
	jne	.label_107
	mov	edx, dword ptr [r14 + 0x34]
	movzx	esi, dx
	cmp	esi, 0xff
	ja	.label_107
	test	dl, dl
	jne	.label_107
	test	edx, 0xff0000
	setne	al
	nop	word ptr [rax + rax]
.label_107:
	cmp	qword ptr [r14 + 0x10], 0
	je	.label_114
	xor	edx, edx
	jmp	.label_116
	nop	dword ptr [rax + rax]
.label_114:
	cmp	qword ptr [r14 + 0x18], 0
	setne	dl
.label_116:
	test	cl, cl
	jne	.label_118
	cmp	dword ptr [dword ptr [rip + tab]],  0x80
	setne	cl
	mov	esi, dword ptr [rsp + 0x70]
	or	cl, sil
	or	dl, cl
	jne	.label_118
	mov	cx, word ptr [r14 + 0x30]
	test	cl, cl
	setne	dl
	or	al, dl
	movzx	eax, al
	cmp	eax, 1
	jne	.label_123
	test	cl, cl
	jne	.label_283
	cmp	qword ptr [r14 + 8], 0
	jne	.label_123
.label_283:
	movzx	eax, cx
	cmp	eax, 0xff
	ja	.label_118
	cmp	qword ptr [r14 + 0x18], 0
	je	.label_118
.label_123:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.152
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	mov	rcx, qword ptr [rsp + 0x80]
	call	error
	nop	
.label_118:
	mov	eax, dword ptr [rsp + 0x70]
	test	al, al
	jne	.label_85
	cmp	byte ptr [r14 + 0x32], 0
	jne	.label_135
	movzx	eax, word ptr [r14 + 0x34]
	cmp	eax, 0xff
	ja	.label_135
	test	al, al
	je	.label_85
	nop	
.label_135:
	mov	rax, qword ptr [r14]
	lea	rcx, [rax + 1]
	add	rax, 2
	test	rcx, rcx
	cmovne	rax, rcx
	cmp	qword ptr [r14 + 0x10], rax
	jb	.label_85
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.153
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	mov	rcx, qword ptr [rsp + 0x80]
	call	error
.label_85:
	test	rbp, rbp
	mov	r8d, 0
	mov	r10, qword ptr [rsp + 0xb0]
	je	.label_145
	cmp	rbp, qword ptr [r14 + 0x20]
	mov	r8d, 0
	je	.label_145
	mov	r8, rbp
.label_145:
	mov	qword ptr [rsp + 0xe8], rbx
	test	r15, r15
	mov	r11d, 0
	je	.label_45
	cmp	r15, qword ptr [r14 + 0x28]
	mov	r11d, 0
	je	.label_45
	mov	r11, r15
.label_45:
	mov	r9b, byte ptr [r14 + 0x33]
	mov	r15, qword ptr [r14 + 0x30]
	mov	al, r15b
	xor	al, 1
	and	r10b, al
	mov	eax, r15d
	shr	eax, 8
	xor	al, 1
	and	al, r12b
	mov	rdx, r15
	shr	rdx, 0x30
	xor	dl, 1
	and	dl, r13b
	mov	r13d, r15d
	shr	r13d, 0x10
	xor	r13b, 1
	mov	ecx, dword ptr [rsp + 0xe0]
	and	r13b, cl
	mov	rbp, r15
	shr	rbp, 0x20
	xor	bpl, 1
	mov	rsi, qword ptr [rsp + 0x88]
	and	bpl, sil
	mov	rdi, r15
	shr	rdi, 0x28
	xor	dil, 1
	mov	rsi, qword ptr [rsp + 0x90]
	and	dil, sil
	xor	r9b, 1
	mov	ebx, dword ptr [rsp + 0xf0]
	and	bl, r9b
	mov	dword ptr [rsp + 0xf0], ebx
	mov	bl, byte ptr [r14 + 0x38]
	xor	bl, 1
	and	byte ptr [rsp + 0x50], bl
	shr	r15, 0x38
	xor	r15b, 1
	mov	rbx, qword ptr [rsp + 0xa8]
	and	r15b, bl
	inc	qword ptr [rsp + 0x80]
	mov	r14, qword ptr [r14 + 0x40]
	test	r14, r14
	mov	qword ptr [rsp + 0xc0], r8
	mov	qword ptr [rsp + 0xc8], r11
	mov	cl, dl
	mov	qword ptr [rsp + 0xd0], rcx
	mov	bl, r15b
	mov	r9b, bpl
	mov	sil, dil
	mov	cl, r13b
	mov	dword ptr [rsp + 0xe0], ecx
	mov	cl, al
	mov	dword ptr [rsp + 0xd8], ecx
	mov	r12, qword ptr [rsp + 0x68]
	jne	.label_211
	jmp	.label_190
.label_314:
	mov	eax, edi
	mov	r8, rbp
	mov	r15b, bl
	mov	bpl, r9b
	mov	dil, sil
	mov	r13b, cl
.label_190:
	mov	rbx, r8
	or	rbx, r11
	jne	.label_200
	test	r13b, r13b
	jne	.label_200
	movzx	r9d, al
	shl	r9d, 8
	movzx	ebx, r10b
	or	ebx, r9d
	test	ebx, ebx
	jne	.label_200
	mov	bl, dl
	or	bl, byte ptr [rsp + 0x50]
	or	bl, bpl
	or	bl, dil
	mov	esi, dword ptr [rsp + 0xf0]
	or	bl, sil
	jne	.label_200
	test	r15b, r15b
	je	.label_206
	mov	bl,  byte ptr [byte ptr [rip + stable]]
	and	bl, 1
	je	.label_209
	cmp	qword ptr [word ptr [rip + keylist]],  0
	jne	.label_200
	jmp	.label_206
.label_209:
	mov	r9b,  byte ptr [byte ptr [rip + unique]]
	and	r9b, 1
	mov	rsi,  qword ptr [word ptr [rip + keylist]]
	movzx	ebx, r9b
	cmp	ebx, 1
	jne	.label_212
	test	rsi, rsi
	je	.label_212
.label_200:
	mov	r9b,  byte ptr [byte ptr [rip + stable]]
	mov	r14b,  byte ptr [byte ptr [rip + unique]]
	or	al, r10b
	je	.label_219
	lea	rax, [rsp + 0x101]
	mov	byte ptr [rsp + 0x100], 0x62
	jmp	.label_223
.label_219:
	lea	rax, [rsp + 0x100]
.label_223:
	mov	ebx, OFFSET FLAT:nondictionary
	cmp	r8, rbx
	jne	.label_226
	mov	byte ptr [rax], 0x64
	inc	rax
.label_226:
	test	r11, r11
	je	.label_309
	mov	byte ptr [rax], 0x66
	inc	rax
.label_309:
	test	bpl, bpl
	je	.label_319
	mov	byte ptr [rax], 0x67
	inc	rax
.label_319:
	test	dil, dil
	je	.label_238
	mov	byte ptr [rax], 0x68
	inc	rax
.label_238:
	mov	esi, OFFSET FLAT:nonprinting
	cmp	r8, rsi
	jne	.label_243
	mov	byte ptr [rax], 0x69
	inc	rax
.label_243:
	test	dl, dl
	je	.label_244
	mov	byte ptr [rax], 0x4d
	inc	rax
.label_244:
	test	r13b, r13b
	je	.label_41
	mov	byte ptr [rax], 0x6e
	inc	rax
.label_41:
	mov	ecx, dword ptr [rsp + 0xf0]
	test	cl, cl
	je	.label_164
	mov	byte ptr [rax], 0x52
	inc	rax
.label_164:
	test	r15b, r15b
	je	.label_249
	or	r9b, r14b
	xor	r9b, 1
	test	r9b, 1
	jne	.label_249
	mov	byte ptr [rax], 0x72
	inc	rax
.label_249:
	cmp	byte ptr [rsp + 0x50], 0
	je	.label_254
	mov	byte ptr [rax], 0x56
	inc	rax
.label_254:
	mov	byte ptr [rax], 0
	lea	rbp, [rsp + 0x100]
	mov	rdi, rbp
	call	strlen
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.154
	mov	edx, OFFSET FLAT:.str.155
	mov	r8d, 5
	mov	rcx, rax
	call	dcngettext
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	mov	rcx, rbp
	call	error
	test	r15b, r15b
	je	.label_206
	mov	al,  byte ptr [byte ptr [rip + stable]]
	and	al, 1
	jne	.label_206
	mov	r9b,  byte ptr [byte ptr [rip + unique]]
	mov	rsi,  qword ptr [word ptr [rip + keylist]]
.label_212:
	test	rsi, rsi
	je	.label_206
	xor	r9b, 1
	test	r9b, 1
	je	.label_206
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.156
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	call	error
.label_206:
	mov	al, byte ptr [rsp + 0x2f7]
	mov	byte ptr [byte ptr [rip + reverse]],  al
	mov	eax, dword ptr [rsp + 0x2c]
	test	al, 1
	mov	r14, qword ptr [rsp + 0xe8]
	je	.label_273
	mov	esi, 0x10
	mov	rdi, qword ptr [rsp + 0x38]
	call	randread_new
	mov	rbx, rax
	test	rbx, rbx
	je	.label_279
	lea	rsi, [rsp + 0x100]
	mov	edx, 0x10
	mov	rdi, rbx
	call	randread
	mov	rdi, rbx
	call	randread_free
	test	eax, eax
	jne	.label_286
	mov	edi, OFFSET FLAT:random_md5_state
	call	md5_init_ctx
	lea	rdi, [rsp + 0x100]
	mov	esi, 0x10
	mov	edx, OFFSET FLAT:random_md5_state
	call	md5_process_bytes
.label_273:
	cmp	qword ptr [word ptr [rip + temp_dir_count]],  0
	jne	.label_296
	mov	edi, OFFSET FLAT:.str.62
	call	getenv
	test	rax, rax
	mov	ebx, OFFSET FLAT:.str.16
	cmovne	rbx, rax
	cmp	qword ptr [word ptr [rip + temp_dir_alloc]],  0
	je	.label_297
	mov	rax,  qword ptr [word ptr [rip + temp_dirs]]
	xor	ecx, ecx
	jmp	.label_301
.label_297:
	mov	rdi,  qword ptr [word ptr [rip + temp_dirs]]
	test	rdi, rdi
	mov	eax, 0x10
	mov	esi, 1
	cmove	rsi, rax
	mov	qword ptr [word ptr [rip + temp_dir_alloc]],  rsi
	shl	rsi, 3
	call	xrealloc
	mov	qword ptr [word ptr [rip + temp_dirs]],  rax
	mov	rcx,  qword ptr [word ptr [rip + temp_dir_count]]
.label_301:
	lea	rdx, [rcx + 1]
	mov	qword ptr [word ptr [rip + temp_dir_count]],  rdx
	mov	qword ptr [rax + rcx*8], rbx
.label_296:
	test	r12, r12
	mov	r15, qword ptr [rsp + 0x40]
	jne	.label_308
	mov	rdi, qword ptr [rsp + 0xf8]
	call	free
	mov	edi, 8
	call	xmalloc
	mov	qword ptr [rsp + 0xf8], rax
	mov	qword ptr [word ptr [rax]], OFFSET FLAT:.str.54
	mov	r12d, 1
.label_308:
	mov	rbx, qword ptr [rsp + 0x48]
	mov	rax,  qword ptr [word ptr [rip + sort_size]]
	test	rax, rax
	je	.label_315
	mov	ecx,  dword ptr [dword ptr [rip + nmerge]]
	imul	rcx, rcx, 0x22
	cmp	rax, rcx
	cmova	rcx, rax
	mov	qword ptr [word ptr [rip + sort_size]],  rcx
.label_315:
	test	bl, bl
	je	.label_321
	cmp	r12, 2
	jae	.label_255
	test	r15, r15
	jne	.label_322
	mov	rax, qword ptr [rsp + 0xf8]
	mov	r15, qword ptr [rax]
	mov	qword ptr [rsp + 0xf8], r15
	mov	esi, OFFSET FLAT:.str.52
	mov	rdi, r15
	call	stream_open
	mov	r14, rax
	mov	qword ptr [rsp + 0xf0], r14
	test	r14, r14
	je	.label_128
	mov	rax,  qword ptr [word ptr [rip + keylist]]
	mov	qword ptr [rsp + 0xe0], rax
	movzx	r12d,  byte ptr [byte ptr [rip + unique]]
	and	r12d, 1
	mov	rcx,  qword ptr [word ptr [rip + merge_buffer_size]]
	mov	rax,  qword ptr [word ptr [rip + sort_size]]
	cmp	rcx, rax
	cmova	rax, rcx
	nop	word ptr cs:[rax + rax]
.label_22:
	mov	ecx, eax
	and	ecx, 0x1f
	mov	ebx, 0x20
	sub	rbx, rcx
	add	rbx, rax
	mov	rdi, rbx
	call	malloc
	test	rax, rax
	jne	.label_69
	mov	rax, rbx
	shr	rax, 1
	cmp	rbx, 0x43
	ja	.label_22
	call	xalloc_die
.label_69:
	mov	qword ptr [rsp + 0x100], rax
	mov	qword ptr [rsp + 0x118], rbx
	mov	eax, 0x20
	movq	xmm0, rax
	pslldq	xmm0, 8
	movdqu	xmmword ptr [rsp + 0x120], xmm0
	mov	byte ptr [rsp + 0x130], 0
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [rsp + 0x108], xmm0
	mov	qword ptr [rsp + 0x360], 0
	lea	rdi, [rsp + 0x100]
	mov	rsi, r14
	mov	rdx, r15
	call	fillbuf
	xor	r13d, r13d
	test	al, al
	mov	ebx, 0
	je	.label_43
	xor	r12d, 1
	xor	r13d, r13d
	xor	ebp, ebp
	xor	eax, eax
	mov	qword ptr [rsp + 0xd0], rax
.label_222:
	mov	qword ptr [rsp + 0xe8], r13
	mov	r15, qword ptr [rsp + 0x100]
	mov	rax, qword ptr [rsp + 0x110]
	mov	qword ptr [rsp + 0xd8], rax
	add	r15, qword ptr [rsp + 0x118]
	shl	rax, 5
	mov	r13, r15
	sub	r13, rax
	test	rbp, rbp
	mov	rbx, r15
	je	.label_67
	lea	rsi, [r15 - 0x20]
	lea	rdi, [rsp + 0x360]
	call	compare
	cmp	r12d, eax
	mov	r14, r15
	mov	rbx, r15
	jle	.label_56
	nop	word ptr [rax + rax]
.label_67:
	lea	r14, [rbx - 0x20]
	cmp	r13, r14
	jae	.label_307
	add	rbx, -0x40
	mov	rdi, r14
	mov	rsi, rbx
	call	compare
	cmp	r12d, eax
	mov	rbx, r14
	jg	.label_67
	jmp	.label_56
	nop	word ptr cs:[rax + rax]
.label_307:
	mov	rdx, qword ptr [rbx - 0x18]
	cmp	rbp, rdx
	mov	r15, qword ptr [rsp + 0xf8]
	mov	r14, qword ptr [rsp + 0xf0]
	mov	r13, qword ptr [rsp + 0xe8]
	jae	.label_23
	nop	word ptr cs:[rax + rax]
.label_82:
	add	rbp, rbp
	je	.label_81
	cmp	rbp, rdx
	jb	.label_82
	jmp	.label_84
.label_81:
	mov	rbp, rdx
.label_84:
	mov	rdi, r13
	call	free
	mov	rdi, rbp
	call	xmalloc
	mov	r13, rax
	mov	qword ptr [rsp + 0x360], r13
	mov	rdx, qword ptr [rbx - 0x18]
.label_23:
	mov	rsi, qword ptr [rbx - 0x20]
	mov	rdi, r13
	call	memcpy
	mov	rax, qword ptr [rbx - 0x18]
	mov	qword ptr [rsp + 0x368], rax
	cmp	qword ptr [rsp + 0xe0], 0
	je	.label_91
	mov	rax, qword ptr [rbx - 0x20]
	mov	rcx, qword ptr [rbx - 0x10]
	sub	rcx, rax
	add	rcx, r13
	mov	qword ptr [rsp + 0x370], rcx
	mov	rcx, qword ptr [rbx - 8]
	sub	rcx, rax
	add	rcx, r13
	mov	qword ptr [rsp + 0x378], rcx
.label_91:
	mov	rax, qword ptr [rsp + 0xd8]
	add	qword ptr [rsp + 0xd0], rax
	lea	rdi, [rsp + 0x100]
	mov	rsi, r14
	mov	rdx, r15
	call	fillbuf
	xor	ebx, ebx
	test	al, al
	jne	.label_222
	jmp	.label_43
.label_321:
	xor	ebp, ebp
	test	r12, r12
	je	.label_113
	mov	rbx, qword ptr [rsp + 0xf8]
	nop	word ptr [rax + rax]
.label_122:
	mov	rdi, qword ptr [rbx]
	movzx	eax, byte ptr [rdi]
	cmp	eax, 0x2d
	jne	.label_117
	cmp	byte ptr [rdi + 1], 0
	je	.label_119
.label_117:
	mov	esi, 4
	call	euidaccess
	test	eax, eax
	jne	.label_120
.label_119:
	inc	rbp
	add	rbx, 8
	cmp	rbp, r12
	jb	.label_122
.label_113:
	test	r15, r15
	je	.label_125
	mov	esi, 0x80041
	mov	edx, 0x1b6
	xor	eax, eax
	mov	rdi, r15
	call	open
	mov	ebx, eax
	test	ebx, ebx
	js	.label_128
	cmp	ebx, 1
	je	.label_125
	mov	esi, 1
	mov	edi, ebx
	call	dup2
	mov	edi, ebx
	call	close
.label_125:
	test	r14b, 1
	jne	.label_130
	mov	rcx, qword ptr [rsp + 0x20]
	test	rcx, rcx
	jne	.label_132
	mov	edi, 2
	call	num_processors
	cmp	rax, 8
	mov	ecx, 8
	cmovb	rcx, rax
.label_132:
	movabs	rax, 0xffffffffffffff
	cmp	rcx, rax
	cmovb	rax, rcx
	mov	qword ptr [rsp + 0x378], 0
	test	r12, r12
	je	.label_71
	lea	rcx, [rax + rax]
	mov	qword ptr [rsp + 0xb0], rcx
	mov	rcx, rax
	mov	qword ptr [rsp + 0x30], rax
	shl	rcx, 8
	mov	qword ptr [rsp + 0xa8], rcx
	xor	ebx, ebx
	xor	r13d, r13d
.label_317:
	mov	rax, qword ptr [rsp + 0xf8]
	mov	rbp, qword ptr [rax]
	mov	qword ptr [rsp + 0xc0], rbp
	mov	esi, OFFSET FLAT:.str.52
	mov	rdi, rbp
	call	stream_open
	mov	qword ptr [rsp + 0xd8], rax
	test	rax, rax
	je	.label_150
	mov	rdx, qword ptr [rsp + 0x30]
	cmp	rdx, 2
	mov	eax, 1
	mov	ecx, 1
	mov	esi, 0x30
	jb	.label_153
	nop	dword ptr [rax + rax]
.label_157:
	add	rcx, rcx
	inc	rax
	cmp	rcx, rdx
	jb	.label_157
	shl	rax, 5
	mov	rsi, rax
.label_153:
	mov	rax, rsi
	or	rax, 1
	mov	qword ptr [rsp + 0xe0], rax
	cmp	qword ptr [rsp + 0x378], 0
	jne	.label_161
	mov	qword ptr [rsp + 0xd0], rbx
	mov	rbp, rsi
	mov	qword ptr [rsp + 0xc8], rsi
	or	rbp, 2
	xor	ebx, ebx
	nop	dword ptr [rax]
.label_276:
	test	rbx, rbx
	je	.label_167
	mov	rax, qword ptr [rsp + 0xf8]
	mov	rsi, qword ptr [rax + rbx*8]
	movzx	eax, byte ptr [rsi]
	cmp	eax, 0x2d
	jne	.label_168
	cmp	byte ptr [rsi + 1], 0
	je	.label_170
.label_168:
	mov	edi, 1
	lea	rdx, [rsp + 0x100]
	call	__xstat
	jmp	.label_175
	nop	word ptr cs:[rax + rax]
.label_167:
	mov	rdi, qword ptr [rsp + 0xd8]
	call	fileno
	mov	edi, 1
	mov	esi, eax
	jmp	.label_44
.label_170:
	mov	edi, 1
	xor	esi, esi
.label_44:
	lea	rdx, [rsp + 0x100]
	call	__fxstat
.label_175:
	test	eax, eax
	jne	.label_70
	mov	eax, dword ptr [rsp + 0x118]
	mov	ecx, 0xf000
	and	eax, ecx
	cmp	eax, 0x8000
	jne	.label_183
	mov	r14, qword ptr [rsp + 0x130]
	jmp	.label_188
	nop	word ptr cs:[rax + rax]
.label_183:
	mov	rsi,  qword ptr [word ptr [rip + sort_size]]
	test	rsi, rsi
	mov	r14d, 0x20000
	jne	.label_26
.label_188:
	mov	rsi,  qword ptr [word ptr [rip + sort_buffer_size.size_bound]]
	test	rsi, rsi
	jne	.label_158
	mov	rsi,  qword ptr [word ptr [rip + sort_size]]
	mov	qword ptr [word ptr [rip + sort_buffer_size.size_bound]],  rsi
	test	rsi, rsi
	jne	.label_158
	mov	qword ptr [rsp + 0x68], r12
	mov	edi, 2
	lea	r12, [rsp + 0x3a0]
	mov	rsi, r12
	call	getrlimit
	cmp	eax, 1
	sbb	r15, r15
	not	r15
	or	r15, qword ptr [rsp + 0x3a0]
	mov	edi, 9
	mov	rsi, r12
	call	getrlimit
	test	eax, eax
	jne	.label_216
	mov	rax, qword ptr [rsp + 0x3a0]
	cmp	rax, r15
	cmovb	r15, rax
.label_216:
	shr	r15, 1
	mov	edi, 5
	lea	rsi, [rsp + 0x3a0]
	call	getrlimit
	test	eax, eax
	jne	.label_189
	mov	rax, qword ptr [rsp + 0x3a0]
	shr	rax, 4
	lea	rax, [rax + rax*4]
	lea	rax, [rax + rax*2]
	cmp	rax, r15
	cmovb	r15, rax
.label_189:
	call	physmem_available
	movsd	qword ptr [rsp + 0xf0], xmm0
	call	physmem_total
	movapd	xmm1, xmm0
	mulsd	xmm1,  qword ptr [word ptr [rip + label_231]]
	movsd	xmm6, qword ptr [rsp + 0xf0]
	maxsd	xmm6, xmm1
	mulsd	xmm0,  qword ptr [word ptr [rip + label_232]]
	movq	xmm1, r15
	movdqa	xmm2,  xmmword ptr [word ptr [rip + label_233]]
	movdqa	xmm3, xmm2
	punpckldq	xmm1, xmm3
	movapd	xmm2,  xmmword ptr [word ptr [rip + label_234]]
	movapd	xmm5, xmm2
	subpd	xmm1, xmm5
	pshufd	xmm2, xmm1, 0x4e
	addpd	xmm2, xmm1
	movapd	xmm1, xmm0
	movsd	xmm4,  qword ptr [word ptr [rip + label_235]]
	subsd	xmm1, xmm4
	cvttsd2si	rax, xmm1
	movabs	rcx, 0x8000000000000000
	mov	rdx, rcx
	xor	rax, rdx
	cvttsd2si	rcx, xmm0
	ucomisd	xmm0, xmm4
	cmovae	rcx, rax
	ucomisd	xmm2, xmm0
	cmovbe	rcx, r15
	movq	xmm0, rcx
	punpckldq	xmm0, xmm3
	subpd	xmm0, xmm5
	pshufd	xmm1, xmm0, 0x4e
	addpd	xmm1, xmm0
	movapd	xmm2, xmm6
	movapd	xmm0, xmm2
	subsd	xmm0, xmm4
	cvttsd2si	rax, xmm0
	xor	rax, rdx
	cvttsd2si	rsi, xmm2
	ucomisd	xmm2, xmm4
	cmovae	rsi, rax
	ucomisd	xmm1, xmm2
	cmovbe	rsi, rcx
	mov	eax,  dword ptr [dword ptr [rip + nmerge]]
	imul	rax, rax, 0x22
	cmp	rsi, rax
	cmovbe	rsi, rax
	mov	qword ptr [word ptr [rip + sort_buffer_size.size_bound]],  rsi
	mov	r15, qword ptr [rsp + 0x40]
	mov	r12, qword ptr [rsp + 0x68]
	nop	dword ptr [rax]
.label_158:
	mov	rcx, r14
	mov	rdi, qword ptr [rsp + 0xe0]
	imul	rcx, rdi
	inc	rcx
	xor	edx, edx
	mov	rax, rcx
	div	rdi
	cmp	r14, rax
	jne	.label_26
	mov	rax, rsi
	sub	rax, rbp
	cmp	rax, rcx
	jbe	.label_26
	add	rbp, rcx
	inc	rbx
	cmp	rbx, r12
	jb	.label_276
	jmp	.label_139
.label_26:
	mov	rbp, rsi
	nop	
.label_139:
	mov	eax, ebp
	and	eax, 0x1f
	mov	ebx, 0x20
	sub	rbx, rax
	add	rbx, rbp
	mov	rdi, rbx
	call	malloc
	test	rax, rax
	jne	.label_302
	shr	rbx, 1
	cmp	rbx, qword ptr [rsp + 0xe0]
	mov	rbp, rbx
	ja	.label_139
	jmp	.label_323
.label_302:
	mov	qword ptr [rsp + 0x360], rax
	mov	rsi, qword ptr [rsp + 0xc8]
	mov	qword ptr [rsp + 0x388], rsi
	mov	qword ptr [rsp + 0x378], rbx
	mov	qword ptr [rsp + 0x380], 0
	mov	byte ptr [rsp + 0x390], 0
	lea	rax, [rsp + 0x368]
	xorpd	xmm0, xmm0
	movupd	xmmword ptr [rax], xmm0
	mov	rbx, qword ptr [rsp + 0xd0]
	mov	rbp, qword ptr [rsp + 0xc0]
.label_161:
	mov	qword ptr [rsp + 0xc8], rsi
	mov	byte ptr [rsp + 0x390], 0
	add	qword ptr [rsp + 0xf8], 8
	dec	r12
	mov	qword ptr [rsp + 0x68], r12
	nop	word ptr [rax + rax]
.label_80:
	lea	rdi, [rsp + 0x360]
	mov	rsi, qword ptr [rsp + 0xd8]
	mov	rdx, rbp
	call	fillbuf
	test	al, al
	je	.label_95
	mov	al, byte ptr [rsp + 0x390]
	mov	r14, qword ptr [rsp + 0x378]
	test	r12, r12
	je	.label_202
	test	al, al
	je	.label_202
	mov	rcx, qword ptr [rsp + 0x368]
	mov	rdx, r14
	sub	rdx, rcx
	mov	rsi, qword ptr [rsp + 0x370]
	imul	rsi, qword ptr [rsp + 0xc8]
	sub	rdx, rsi
	cmp	qword ptr [rsp + 0xe0], rdx
	jb	.label_176
.label_202:
	mov	qword ptr [word ptr [rip + saved_line]],  0
	mov	rcx, qword ptr [rsp + 0x360]
	mov	qword ptr [rsp + 0xf0], rcx
	test	al, al
	je	.label_260
	mov	rax, r13
	or	rax, r12
	or	rax, qword ptr [rsp + 0x380]
	jne	.label_260
	mov	rdi, qword ptr [rsp + 0xd8]
	mov	rsi, rbp
	call	xfclose
	mov	esi, OFFSET FLAT:.str.166
	mov	rdi, r15
	call	stream_open
	test	rax, rax
	je	.label_128
	mov	qword ptr [rsp + 0x358], rax
	mov	bl, 1
	jmp	.label_325
	nop	dword ptr [rax]
.label_260:
	inc	r13
	xor	esi, esi
	lea	rdi, [rsp + 0x358]
	call	maybe_create_temp
	mov	r15, rax
	add	r15, 0xd
.label_325:
	mov	qword ptr [rsp + 0xe8], r13
	add	r14, qword ptr [rsp + 0xf0]
	mov	r12, qword ptr [rsp + 0x370]
	cmp	r12, 2
	jb	.label_19
	mov	edi, OFFSET FLAT:compare_nodes
	mov	rsi, qword ptr [rsp + 0xb0]
	call	heap_alloc
	mov	qword ptr [rsp + 0x100], rax
	xor	esi, esi
	lea	rdi, [rsp + 0x108]
	call	pthread_mutex_init
	xor	esi, esi
	lea	rdi, [rsp + 0x130]
	call	pthread_cond_init
	mov	rdi, qword ptr [rsp + 0xa8]
	call	xmalloc
	mov	qword ptr [rsp + 0xd0], rbx
	mov	rbx, rax
	xorpd	xmm0, xmm0
	movupd	xmmword ptr [rbx + 0x10], xmm0
	movupd	xmmword ptr [rbx], xmm0
	mov	qword ptr [rbx + 0x20], 0
	mov	qword ptr [rbx + 0x30], r12
	mov	qword ptr [rbx + 0x28], r12
	mov	qword ptr [rbx + 0x38], 0
	mov	dword ptr [rbx + 0x50], 0
	mov	byte ptr [rbx + 0x54], 0
	lea	rdi, [rbx + 0x58]
	xor	esi, esi
	call	pthread_mutex_init
	lea	rbp, [rbx + 0x80]
	xor	r9d, r9d
	mov	rdi, rbx
	mov	rsi, rbp
	mov	rdx, r14
	mov	rbx, qword ptr [rsp + 0x30]
	mov	rcx, rbx
	mov	r8, r12
	call	init_node
	mov	r13, qword ptr [rsp + 0x358]
	mov	qword ptr [rsp], r15
	mov	rdi, r14
	mov	rsi, rbx
	mov	rbx, qword ptr [rsp + 0xd0]
	mov	rdx, r12
	mov	rcx, rbp
	mov	rbp, qword ptr [rsp + 0xc0]
	lea	r8, [rsp + 0x100]
	mov	r9, r13
	call	sortlines
	mov	r12, qword ptr [rsp + 0x68]
	jmp	.label_121
	nop	dword ptr [rax + rax]
.label_19:
	add	r14, -0x20
	mov	r13, qword ptr [rsp + 0x358]
	movzx	eax,  byte ptr [byte ptr [rip + unique]]
	and	eax, 1
	cmp	eax, 1
	mov	r12, qword ptr [rsp + 0x68]
	jne	.label_58
	cmp	qword ptr [word ptr [rip + saved_line]],  0
	je	.label_149
	mov	esi, OFFSET FLAT:saved_line
	mov	rdi, r14
	call	compare
	test	eax, eax
	je	.label_121
.label_149:
	movupd	xmm0, xmmword ptr [r14]
	movupd	xmm1, xmmword ptr [r14 + 0x10]
	movupd	xmmword ptr [word ptr [rip + label_13]],  xmm1
	movupd	xmmword ptr [word ptr [rip + saved_line]],  xmm0
.label_58:
	mov	rdi, r14
	mov	rsi, r13
	mov	rdx, r15
	call	write_line
.label_121:
	mov	rdi, r13
	mov	rsi, r15
	call	xfclose
	test	bl, 1
	mov	r15, qword ptr [rsp + 0x40]
	mov	r13, qword ptr [rsp + 0xe8]
	je	.label_80
	jmp	.label_198
.label_176:
	mov	qword ptr [rsp + 0x380], rcx
.label_95:
	mov	rdi, qword ptr [rsp + 0xd8]
	mov	rsi, rbp
	call	xfclose
	test	r12, r12
	jne	.label_317
	mov	rax, qword ptr [rsp + 0x360]
	mov	qword ptr [rsp + 0xf0], rax
.label_198:
	mov	rdi, qword ptr [rsp + 0xf0]
	call	free
	test	bl, 1
	jne	.label_96
	mov	rbp,  qword ptr [word ptr [rip + temphead]]
	mov	rax, r13
	shr	rax, 0x3b
	je	.label_162
	call	xalloc_die
.label_56:
	mov	ebx, 1
	mov	rax, qword ptr [rsp + 0x48]
	movzx	eax, al
	cmp	eax, 0x63
	mov	r13, qword ptr [rsp + 0xe8]
	jne	.label_105
	add	r14, -0x20
	sub	r15, r14
	sar	r15, 5
	add	r15, qword ptr [rsp + 0xd0]
	mov	rax,  qword ptr [word ptr [rip + stderr]]
	mov	qword ptr [rsp + 0xe0], rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.157
	mov	edx, 5
	call	dcgettext
	mov	qword ptr [rsp + 0xd8], rax
	mov	r12,  qword ptr [word ptr [rip + program_name]]
	lea	rsi, [rsp + 0x3a0]
	mov	rdi, r15
	call	umaxtostr
	mov	rbp, rax
	mov	ebx, 1
	mov	esi, 1
	xor	eax, eax
	mov	rdi, qword ptr [rsp + 0xe0]
	mov	rdx, qword ptr [rsp + 0xd8]
	mov	rcx, r12
	mov	r15, qword ptr [rsp + 0xf8]
	mov	r8, r15
	mov	r9, rbp
	call	__fprintf_chk
	mov	rbp,  qword ptr [word ptr [rip + stderr]]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.158
	mov	edx, 5
	call	dcgettext
	mov	rdi, r14
	mov	rsi, rbp
	mov	rdx, rax
	call	write_line
	jmp	.label_51
.label_130:
	mov	esi, 0x10
	mov	rdi, r12
	call	xcalloc
	xor	ecx, ecx
	test	r12, r12
	mov	rdi, qword ptr [rsp + 0xf8]
	je	.label_137
	mov	rdx, rax
	nop	word ptr cs:[rax + rax]
.label_141:
	mov	rsi, qword ptr [rdi + rcx*8]
	mov	qword ptr [rdx], rsi
	inc	rcx
	add	rdx, 0x10
	cmp	rcx, r12
	jb	.label_141
.label_137:
	xor	esi, esi
	mov	rdi, rax
	mov	rdx, r12
	mov	rcx, r15
	call	merge
	jmp	.label_143
.label_105:
	mov	r15, qword ptr [rsp + 0xf8]
.label_51:
	mov	r14, qword ptr [rsp + 0xf0]
.label_43:
	mov	rdi, r14
	mov	rsi, r15
	call	xfclose
	mov	rdi, qword ptr [rsp + 0x100]
	call	free
	mov	rdi, r13
	call	free
	jmp	.label_152
.label_71:
	mov	rbp,  qword ptr [word ptr [rip + temphead]]
	xor	r13d, r13d
.label_162:
	mov	rdi, r13
	shl	rdi, 4
	call	xmalloc
	mov	rbx, rax
	test	rbp, rbp
	je	.label_156
	mov	rax, rbx
	add	rax, 8
	nop	word ptr cs:[rax + rax]
.label_160:
	lea	rcx, [rbp + 0xd]
	mov	qword ptr [rax - 8], rcx
	mov	qword ptr [rax], rbp
	mov	rbp, qword ptr [rbp]
	add	rax, 0x10
	test	rbp, rbp
	jne	.label_160
.label_156:
	mov	rdi, rbx
	mov	rsi, r13
	mov	rdx, r13
	mov	rcx, r15
	call	merge
	mov	rdi, rbx
	call	free
	jmp	.label_96
	nop	word ptr cs:[rax + rax]
.label_169:
	mov	edi, 0xffffffff
	call	reap
.label_96:
	cmp	dword ptr [dword ptr [rip + nprocs]],  0
	jg	.label_169
.label_143:
	xor	ebx, ebx
	movzx	eax,  byte ptr [byte ptr [rip + have_read_stdin]]
	and	eax, 1
	cmp	eax, 1
	jne	.label_152
	mov	rdi,  qword ptr [word ptr [rip + stdin]]
	call	rpl_fclose
	cmp	eax, -1
	je	.label_174
.label_152:
	mov	eax, ebx
	add	rsp, 0x3b8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_120:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.165
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rbx]
	mov	rdi, rax
	call	sort_die
.label_323:
	call	xalloc_die
.label_128:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.142
	mov	edx, 5
	call	dcgettext
	mov	rdi, rax
	mov	rsi, r15
	call	sort_die
.label_70:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.178
	mov	edx, 5
	call	dcgettext
	mov	rcx, qword ptr [rsp + 0xf8]
	mov	rsi, qword ptr [rcx + rbx*8]
	mov	rdi, rax
	call	sort_die
.label_255:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.63
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	mov	rax, qword ptr [rsp + 0xf8]
	mov	rsi, qword ptr [rax + 8]
	mov	edi, 4
	call	quotearg_style
	mov	rcx, rax
	movsx	r8d, bl
	mov	edi, 2
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rbp
	call	error
.label_322:
	mov	byte ptr [byte ptr [rip + main.opts.64]],  bl
	mov	edi, OFFSET FLAT:main.opts.64
	call	incompatible_options
.label_289:
	test	al, al
	jne	.label_213
	mov	al, 0x6f
.label_213:
	mov	byte ptr [byte ptr [rip + main.opts]],  al
	mov	edi, OFFSET FLAT:main.opts
	call	incompatible_options
.label_279:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.142
	jmp	.label_245
.label_286:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.65
.label_245:
	mov	edx, 5
	call	dcgettext
	mov	rdi, rax
	mov	rsi, qword ptr [rsp + 0x38]
	call	sort_die
.label_150:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.142
	mov	edx, 5
	call	dcgettext
	mov	rdi, rax
	mov	rsi, rbp
	call	sort_die
.label_174:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.65
	mov	edx, 5
	call	dcgettext
	mov	esi, OFFSET FLAT:.str.54
	mov	rdi, rax
	call	sort_die
.label_64:
	test	rax, rax
	je	.label_237
.label_97:
	movzx	edx, word ptr [rax + 0x32]
	movzx	esi, dl
	mov	ecx, dword ptr [rax + 0x34]
	movzx	edi, cl
	add	edi, esi
	movzx	esi, ch
	add	esi, edi
	shr	ecx, 0x10
	movzx	edi, cl
	add	edi, esi
	shr	edx, 8
	or	dl, byte ptr [rax + 0x38]
	mov	rcx, qword ptr [rax + 0x20]
	test	rcx, rcx
	setne	bl
	or	bl, dl
	movzx	edx, bl
	add	edx, edi
	cmp	edx, 2
	jae	.label_240
	mov	rax, qword ptr [rax + 0x40]
	jmp	.label_64
.label_240:
	mov	byte ptr [rax + 0x37], 0
	mov	word ptr [rax + 0x30], 0
	xor	edx, edx
	test	dl, dl
	jne	.label_250
	mov	dl, 1
	test	dl, dl
	jne	.label_252
.label_250:
	mov	byte ptr [rsp + 0x100], 0x62
	mov	rcx, qword ptr [rax + 0x20]
	lea	rdx, [rsp + 0x101]
	mov	qword ptr [rsp + 0x90], rdx
.label_252:
	mov	edx, OFFSET FLAT:nondictionary
	cmp	rcx, rdx
	jne	.label_256
	mov	rcx, qword ptr [rsp + 0x90]
	mov	byte ptr [rcx], 0x64
	inc	rcx
	mov	qword ptr [rsp + 0x90], rcx
.label_256:
	cmp	qword ptr [rax + 0x28], 0
	je	.label_259
	mov	rcx, qword ptr [rsp + 0x90]
	mov	byte ptr [rcx], 0x66
	inc	rcx
	mov	qword ptr [rsp + 0x90], rcx
.label_259:
	mov	cx, word ptr [rax + 0x34]
	test	cl, cl
	jne	.label_263
	shr	ecx, 8
	jmp	.label_264
.label_263:
	mov	rcx, qword ptr [rsp + 0x90]
	mov	byte ptr [rcx], 0x67
	inc	rcx
	mov	qword ptr [rsp + 0x90], rcx
	mov	cl, byte ptr [rax + 0x35]
.label_264:
	test	cl, cl
	je	.label_267
	mov	rcx, qword ptr [rsp + 0x90]
	mov	byte ptr [rcx], 0x68
	inc	rcx
	mov	qword ptr [rsp + 0x90], rcx
.label_267:
	mov	ecx, OFFSET FLAT:nonprinting
	cmp	qword ptr [rax + 0x20], rcx
	jne	.label_272
	mov	rcx, qword ptr [rsp + 0x90]
	mov	byte ptr [rcx], 0x69
	inc	rcx
	mov	qword ptr [rsp + 0x90], rcx
.label_272:
	cmp	byte ptr [rax + 0x36], 0
	je	.label_277
	mov	rcx, qword ptr [rsp + 0x90]
	mov	byte ptr [rcx], 0x4d
	inc	rcx
	mov	qword ptr [rsp + 0x90], rcx
.label_277:
	mov	cx, word ptr [rax + 0x32]
	test	cl, cl
	jne	.label_280
	shr	ecx, 8
	jmp	.label_306
.label_280:
	mov	rcx, qword ptr [rsp + 0x90]
	mov	byte ptr [rcx], 0x6e
	inc	rcx
	mov	qword ptr [rsp + 0x90], rcx
	mov	cl, byte ptr [rax + 0x33]
.label_306:
	test	cl, cl
	je	.label_290
	mov	rcx, qword ptr [rsp + 0x90]
	mov	byte ptr [rcx], 0x52
	inc	rcx
	mov	qword ptr [rsp + 0x90], rcx
.label_290:
	cmp	byte ptr [rax + 0x37], 0
	je	.label_32
	mov	rcx, qword ptr [rsp + 0x90]
	mov	byte ptr [rcx], 0x72
	inc	rcx
	mov	qword ptr [rsp + 0x90], rcx
.label_32:
	cmp	byte ptr [rax + 0x38], 0
	je	.label_299
	mov	rax, qword ptr [rsp + 0x90]
	mov	byte ptr [rax], 0x56
	inc	rax
	mov	qword ptr [rsp + 0x90], rax
.label_299:
	mov	rax, qword ptr [rsp + 0x90]
	mov	byte ptr [rax], 0
	lea	rdi, [rsp + 0x100]
	call	incompatible_options
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406710

	.globl sighandler
	.type sighandler, @function
sighandler:
	push	rbp
	push	rbx
	push	rax
	mov	ebp, edi
	mov	rbx,  qword ptr [word ptr [rip + temphead]]
	jmp	.label_327
	nop	
.label_328:
	lea	rdi, [rbx + 0xd]
	call	unlink
	mov	rbx, qword ptr [rbx]
.label_327:
	test	rbx, rbx
	jne	.label_328
	mov	qword ptr [word ptr [rip + temphead]],  0
	xor	esi, esi
	mov	edi, ebp
	call	signal
	mov	edi, ebp
	add	rsp, 8
	pop	rbx
	pop	rbp
	jmp	raise
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406760

	.globl exit_cleanup
	.type exit_cleanup, @function
exit_cleanup:
	push	r14
	push	rbx
	sub	rsp, 0x88
	cmp	qword ptr [word ptr [rip + temphead]],  0
	je	.label_329
	lea	r14, [rsp + 8]
	xor	edi, edi
	mov	esi, OFFSET FLAT:caught_signals
	mov	rdx, r14
	call	pthread_sigmask
	test	eax, eax
	sete	byte ptr [rsp]
	mov	rbx,  qword ptr [word ptr [rip + temphead]]
	jmp	.label_330
	nop	word ptr [rax + rax]
.label_331:
	lea	rdi, [rbx + 0xd]
	call	unlink
	mov	rbx, qword ptr [rbx]
.label_330:
	test	rbx, rbx
	jne	.label_331
	mov	qword ptr [word ptr [rip + temphead]],  0
	cmp	byte ptr [rsp], 0
	je	.label_329
	mov	edi, 2
	xor	edx, edx
	mov	rsi, r14
	call	pthread_sigmask
.label_329:
	call	close_stdout
	add	rsp, 0x88
	pop	rbx
	pop	r14
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4067f0

	.globl parse_field_count
	.type parse_field_count, @function
parse_field_count:
	push	r15
	push	r14
	push	r12
	push	rbx
	sub	rsp, 0x18
	mov	r14, rdx
	mov	rbx, rsi
	mov	r15, rdi
	lea	rsi, [rsp + 0x10]
	lea	rcx, [rsp + 8]
	mov	edx, 0xa
	mov	r8d, OFFSET FLAT:.str_1
	call	xstrtoumax
	mov	ecx, eax
	cmp	eax, 4
	ja	.label_333
	jmp	qword ptr [word ptr [+ (rcx * 8) + label_332]]
.label_1790:
	mov	rax, qword ptr [rsp + 8]
	mov	qword ptr [rbx], rax
	jmp	.label_333
.label_1791:
	mov	qword ptr [rbx], -1
.label_333:
	mov	rax, qword ptr [rsp + 0x10]
.label_334:
	add	rsp, 0x18
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
.label_1792:
	xor	eax, eax
	test	r14, r14
	je	.label_334
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.124
	mov	edx, 5
	call	dcgettext
	mov	r12, rax
	xor	edi, edi
	mov	edx, 5
	mov	rsi, r14
	call	dcgettext
	mov	r14, rax
	mov	rdi, r15
	call	quote
	mov	rbx, rax
	mov	edi, 2
	xor	esi, esi
	xor	eax, eax
	mov	rdx, r12
	mov	rcx, r14
	mov	r8, rbx
	call	error
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4068a0

	.globl badfieldspec
	.type badfieldspec, @function
badfieldspec:
	push	r15
	push	r14
	push	r12
	push	rbx
	push	rax
	mov	rbx, rsi
	mov	r14, rdi
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.125
	mov	edx, 5
	call	dcgettext
	mov	r15, rax
	xor	edi, edi
	mov	edx, 5
	mov	rsi, rbx
	call	dcgettext
	mov	r12, rax
	mov	rdi, r14
	call	quote
	mov	rbx, rax
	mov	edi, 2
	xor	esi, esi
	xor	eax, eax
	mov	rdx, r15
	mov	rcx, r12
	mov	r8, rbx
	call	error
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406900

	.globl incompatible_options
	.type incompatible_options, @function
incompatible_options:
	push	rbx
	mov	rbx, rdi
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.134
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 2
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	mov	rcx, rbx
	call	error
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x406930

	.globl xfclose
	.type xfclose, @function
xfclose:
	push	r14
	push	rbx
	push	rax
	mov	r14, rsi
	mov	rbx, rdi
	call	fileno
	cmp	eax, 1
	je	.label_339
	test	eax, eax
	jne	.label_336
	test	byte ptr [rbx], 0x10
	je	.label_337
	mov	rdi, rbx
	add	rsp, 8
	pop	rbx
	pop	r14
	jmp	clearerr_unlocked
.label_339:
	mov	rdi, rbx
	call	fflush_unlocked
	test	eax, eax
	je	.label_337
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.145
	jmp	.label_335
.label_336:
	mov	rdi, rbx
	call	rpl_fclose
	test	eax, eax
	jne	.label_338
.label_337:
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
.label_338:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.65
.label_335:
	mov	edx, 5
	call	dcgettext
	mov	rdi, rax
	mov	rsi, r14
	call	sort_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4069b0

	.globl merge
	.type merge, @function
merge:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0xe8
	mov	qword ptr [rsp + 0x10], rcx
	mov	rbx, rdx
	mov	r15, rsi
	mov	r12, rdi
	mov	qword ptr [rsp + 0x20], r12
	mov	edi,  dword ptr [dword ptr [rip + nmerge]]
	cmp	rdi, rbx
	jae	.label_351
	lea	rax, [r12 + 8]
	mov	qword ptr [rsp + 8], rax
	nop	dword ptr [rax]
.label_345:
	mov	qword ptr [rsp + 0x18], rbx
	mov	qword ptr [rsp + 0x38], r15
	mov	ecx, edi
	cmp	rcx, rbx
	mov	r15, qword ptr [rsp + 8]
	mov	r14, r12
	mov	r12d, 0
	mov	r13d, 0
	mov	rbp, rbx
	ja	.label_367
	nop	dword ptr [rax]
.label_365:
	mov	qword ptr [rsp + 0x28], r12
	mov	qword ptr [rsp + 0x30], r13
	xor	esi, esi
	lea	rdi, [rsp + 0xe0]
	call	maybe_create_temp
	mov	qword ptr [rsp + 0x40], rax
	mov	rbx, r12
	shl	rbx, 4
	add	rbx, r14
	mov	r13d,  dword ptr [dword ptr [rip + nmerge]]
	mov	r14, qword ptr [rsp + 0xe0]
	mov	rdi, rbx
	mov	rsi, r13
	lea	rdx, [rsp + 0x50]
	call	open_input_files
	mov	rbp, rax
	cmp	rbp, r13
	jae	.label_363
	cmp	rbp, 1
	jbe	.label_366
.label_363:
	mov	r12, qword ptr [rsp + 0x40]
	add	r12, 0xd
	mov	rcx, r14
	mov	r14, qword ptr [rsp + 0x38]
	cmp	r14, r13
	cmovb	r13, r14
	mov	r9, qword ptr [rsp + 0x50]
	mov	rdi, rbx
	mov	rsi, r13
	mov	rdx, rbp
	mov	r8, r12
	call	mergefps
	cmp	r14, rbp
	mov	rax, rbp
	cmovb	rax, r14
	sub	r14, rax
	mov	qword ptr [rsp + 0x38], r14
	mov	qword ptr [r15 - 8], r12
	mov	r14, qword ptr [rsp + 0x20]
	mov	rax, qword ptr [rsp + 0x40]
	mov	qword ptr [r15], rax
	mov	r12, qword ptr [rsp + 0x28]
	add	r12, rbp
	mov	r13, qword ptr [rsp + 0x30]
	inc	r13
	mov	edi,  dword ptr [dword ptr [rip + nmerge]]
	mov	rbx, qword ptr [rsp + 0x18]
	mov	rbp, rbx
	sub	rbp, r12
	add	r15, 0x10
	cmp	rdi, rbp
	mov	rcx, rdi
	jbe	.label_365
.label_367:
	mov	qword ptr [rsp + 0x28], r12
	xor	edx, edx
	mov	rax, r13
	div	rcx
	sub	rcx, rdx
	sub	rbp, rcx
	jbe	.label_369
	mov	qword ptr [rsp + 0x18], rbx
	inc	rbp
	xor	esi, esi
	lea	rdi, [rsp + 0xe0]
	call	maybe_create_temp
	mov	rbx, rax
	mov	r12, qword ptr [rsp + 0x28]
	shl	r12, 4
	add	r12, qword ptr [rsp + 0x20]
	mov	rax, qword ptr [rsp + 0xe0]
	mov	qword ptr [rsp + 0x40], rax
	mov	rdi, r12
	mov	rsi, rbp
	lea	rdx, [rsp + 0x50]
	call	open_input_files
	mov	r14, rax
	cmp	r14, rbp
	jae	.label_359
	cmp	r14, 1
	jbe	.label_361
.label_359:
	mov	qword ptr [rsp + 0x30], rbx
	add	rbx, 0xd
	mov	r15, qword ptr [rsp + 0x38]
	cmp	r15, rbp
	cmovb	rbp, r15
	mov	r9, qword ptr [rsp + 0x50]
	mov	rdi, r12
	mov	rsi, rbp
	mov	rdx, r14
	mov	rcx, qword ptr [rsp + 0x40]
	mov	r8, rbx
	call	mergefps
	cmp	r15, r14
	mov	rax, r14
	cmovb	rax, r15
	sub	r15, rax
	mov	rax, r13
	shl	rax, 4
	mov	r12, qword ptr [rsp + 0x20]
	mov	qword ptr [r12 + rax], rbx
	inc	r13
	mov	rcx, qword ptr [rsp + 0x30]
	mov	qword ptr [r12 + rax + 8], rcx
	mov	rbp, qword ptr [rsp + 0x28]
	add	rbp, r14
	mov	r14d,  dword ptr [dword ptr [rip + nmerge]]
	mov	rbx, qword ptr [rsp + 0x18]
	jmp	.label_347
	nop	dword ptr [rax + rax]
.label_369:
	mov	r12, qword ptr [rsp + 0x20]
	mov	r15, qword ptr [rsp + 0x38]
	mov	rbp, qword ptr [rsp + 0x28]
	mov	r14, rdi
.label_347:
	mov	rdi, r13
	shl	rdi, 4
	add	rdi, r12
	mov	rsi, rbp
	shl	rsi, 4
	add	rsi, r12
	mov	rdx, rbx
	sub	rdx, rbp
	shl	rdx, 4
	call	memmove
	add	r15, r13
	add	r13, rbx
	sub	r13, rbp
	mov	eax, r14d
	cmp	rax, r13
	mov	rbx, r13
	mov	rdi, r14
	jb	.label_345
	jmp	.label_354
.label_351:
	mov	r13, rbx
.label_354:
	mov	qword ptr [rsp + 0x20], r12
	mov	qword ptr [rsp + 0x38], r15
	cmp	r15, r13
	jae	.label_352
	mov	r14, qword ptr [rsp + 0x38]
	mov	r15, r14
	shl	r15, 4
	add	r15, qword ptr [rsp + 0x20]
	xor	ebx, ebx
	nop	dword ptr [rax + rax]
.label_370:
	mov	rsi, qword ptr [r15]
	movzx	eax, byte ptr [rsi]
	mov	r12d, 0x2d
	sub	r12d, eax
	jne	.label_355
	movzx	r12d, byte ptr [rsi + 1]
	neg	r12d
.label_355:
	cmp	qword ptr [rsp + 0x10], 0
	je	.label_342
	mov	rdi, qword ptr [rsp + 0x10]
	call	strcmp
	test	r12d, r12d
	je	.label_342
	test	eax, eax
	je	.label_357
.label_342:
	mov	ecx,  dword ptr [dword ptr [rip + get_outstatus.outstat_errno]]
	test	ecx, ecx
	jne	.label_346
	mov	edi, 1
	mov	esi, 1
	mov	edx, OFFSET FLAT:get_outstatus.outstat
	call	__fxstat
	mov	ecx, 0xffffffff
	test	eax, eax
	je	.label_353
	call	__errno_location
	mov	ecx, dword ptr [rax]
.label_353:
	mov	dword ptr [dword ptr [rip + get_outstatus.outstat_errno]],  ecx
.label_346:
	test	ecx, ecx
	mov	ebp, 0
	mov	eax, OFFSET FLAT:get_outstatus.outstat
	cmovs	rbp, rax
	jns	.label_352
	test	r12d, r12d
	je	.label_362
	mov	rsi, qword ptr [r15]
	mov	edi, 1
	lea	rdx, [rsp + 0x50]
	call	__xstat
	jmp	.label_349
	nop	dword ptr [rax + rax]
.label_362:
	mov	edi, 1
	xor	esi, esi
	lea	rdx, [rsp + 0x50]
	call	__fxstat
.label_349:
	test	eax, eax
	jne	.label_350
	mov	rax, qword ptr [rsp + 0x58]
	cmp	rax, qword ptr [rbp + 8]
	jne	.label_350
	mov	rax, qword ptr [rsp + 0x50]
	cmp	rax, qword ptr [rbp]
	jne	.label_350
	nop	dword ptr [rax + rax]
.label_357:
	test	rbx, rbx
	jne	.label_343
	xor	esi, esi
	lea	rdi, [rsp + 0x48]
	call	maybe_create_temp
	mov	rbx, rax
	mov	r12, qword ptr [rsp + 0x48]
	mov	esi, 1
	mov	rdi, r15
	lea	rdx, [rsp + 0xe0]
	call	open_input_files
	test	rax, rax
	je	.label_360
	mov	r8, rbx
	add	r8, 0xd
	mov	r9, qword ptr [rsp + 0xe0]
	xor	esi, esi
	mov	rdi, r15
	mov	rdx, rax
	mov	rcx, r12
	call	mergefps
.label_343:
	lea	rax, [rbx + 0xd]
	mov	qword ptr [r15], rax
	mov	qword ptr [r15 + 8], rbx
.label_350:
	inc	r14
	add	r15, 0x10
	cmp	r14, r13
	jb	.label_370
.label_352:
	mov	r12, qword ptr [rsp + 0x20]
	lea	rax, [r12 + 0x10]
	mov	qword ptr [rsp + 0x18], rax
	jmp	.label_348
	nop	word ptr cs:[rax + rax]
.label_368:
	mov	r12, qword ptr [rsp + 0x38]
	cmp	r12, rbp
	mov	rsi, rbp
	cmovb	rsi, r12
	mov	qword ptr [rsp + 0x40], rsi
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	r8, rbx
	add	r8, 0xd
	mov	qword ptr [rsp + 0x28], r8
	mov	rdi, qword ptr [rsp + 0x20]
	mov	rdx, rbp
	mov	r9, r15
	call	mergefps
	mov	rax, qword ptr [rsp + 0x20]
	mov	rcx, qword ptr [rsp + 0x28]
	mov	qword ptr [rax], rcx
	mov	r15, rax
	mov	qword ptr [r15 + 8], rbx
	mov	rbx, qword ptr [rsp + 0x30]
	mov	rdx, rbx
	sub	rdx, rbp
	shl	rdx, 4
	mov	rdi, qword ptr [rsp + 0x18]
	mov	rsi, r13
	call	memmove
	inc	r12
	sub	r12, qword ptr [rsp + 0x40]
	mov	qword ptr [rsp + 0x38], r12
	mov	r12, r15
	mov	r13, rbx
	add	r13, 2
	sub	r13, r14
.label_348:
	mov	rdi, r12
	mov	rsi, r13
	lea	rdx, [rsp + 0x50]
	call	open_input_files
	mov	rbp, rax
	cmp	rbp, r13
	jne	.label_358
	mov	esi, OFFSET FLAT:.str.166
	mov	rdi, qword ptr [rsp + 0x10]
	call	stream_open
	test	rax, rax
	jne	.label_364
	call	__errno_location
	cmp	r13, 3
	mov	qword ptr [rsp + 0x30], r13
	jb	.label_356
	cmp	dword ptr [rax], 0x18
	je	.label_341
	jmp	.label_356
.label_358:
	mov	qword ptr [rsp + 0x30], r13
	cmp	rbp, 2
	jbe	.label_344
.label_341:
	mov	r15, qword ptr [rsp + 0x50]
	mov	r13, rbp
	shl	r13, 4
	add	r13, r12
	lea	r12, [rsp + 0xe0]
	nop	word ptr cs:[rax + rax]
.label_340:
	mov	r14, rbp
	lea	rbp, [r14 - 1]
	mov	rdi, qword ptr [r15 + r14*8 - 8]
	mov	rsi, qword ptr [r13 - 0x10]
	add	r13, -0x10
	call	xfclose
	cmp	rbp, 2
	seta	al
	movzx	esi, al
	mov	rdi, r12
	call	maybe_create_temp
	mov	rbx, rax
	test	rbx, rbx
	je	.label_340
	jmp	.label_368
.label_364:
	mov	r9, qword ptr [rsp + 0x50]
	mov	rdi, r12
	mov	rsi, qword ptr [rsp + 0x38]
	mov	rdx, r13
	mov	rcx, rax
	mov	r8, qword ptr [rsp + 0x10]
	call	mergefps
	add	rsp, 0xe8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_366:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.142
	mov	edx, 5
	call	dcgettext
	shl	rbp, 4
	mov	rsi, qword ptr [rbx + rbp]
	mov	rdi, rax
	call	sort_die
.label_344:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.142
	mov	edx, 5
	call	dcgettext
	shl	rbp, 4
	mov	rsi, qword ptr [r12 + rbp]
	mov	rdi, rax
	call	sort_die
.label_356:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.142
	mov	edx, 5
	call	dcgettext
	mov	rdi, rax
	mov	rsi, qword ptr [rsp + 0x10]
	call	sort_die
.label_361:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.142
	mov	edx, 5
	call	dcgettext
	shl	r14, 4
	mov	rsi, qword ptr [r12 + r14]
	mov	rdi, rax
	call	sort_die
.label_360:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.142
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [r15]
	mov	rdi, rax
	call	sort_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406fd0

	.globl sort_die
	.type sort_die, @function
sort_die:
	push	rbp
	push	r14
	push	rbx
	mov	rbx, rsi
	mov	r14, rdi
	call	__errno_location
	mov	ebp, dword ptr [rax]
	test	rbx, rbx
	jne	.label_371
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.180
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
.label_371:
	xor	edi, edi
	mov	esi, 3
	mov	rdx, rbx
	call	quotearg_n_style_colon
	mov	rbx, rax
	mov	edi, 2
	mov	edx, OFFSET FLAT:.str.1_0
	xor	eax, eax
	mov	esi, ebp
	mov	rcx, r14
	mov	r8, rbx
	call	error
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x407030

	.globl struct_month_cmp
	.type struct_month_cmp, @function
struct_month_cmp:
	mov	rdi, qword ptr [rdi]
	mov	rsi, qword ptr [rsi]
	jmp	strcmp
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x407040

	.globl stream_open
	.type stream_open, @function
stream_open:
	push	rbp
	push	r14
	push	rbx
	mov	rbp, rsi
	mov	r14, rdi
	movzx	eax, byte ptr [rbp]
	cmp	eax, 0x77
	je	.label_372
	movzx	eax, al
	cmp	eax, 0x72
	jne	.label_374
	movzx	eax, byte ptr [r14]
	cmp	eax, 0x2d
	jne	.label_377
	cmp	byte ptr [r14 + 1], 0
	je	.label_378
.label_377:
	xor	ebx, ebx
	mov	esi, 0x80000
	xor	eax, eax
	mov	rdi, r14
	call	open
	test	eax, eax
	js	.label_373
	mov	edi, eax
	mov	rsi, rbp
	call	fdopen
	mov	rbx, rax
	jmp	.label_373
.label_372:
	test	r14, r14
	je	.label_376
	mov	edi, 1
	xor	esi, esi
	call	ftruncate
	test	eax, eax
	je	.label_376
	call	__errno_location
	mov	rbx, rax
	mov	ebp, dword ptr [rbx]
	mov	ecx,  dword ptr [dword ptr [rip + get_outstatus.outstat_errno]]
	test	ecx, ecx
	jne	.label_381
	mov	edi, 1
	mov	esi, 1
	mov	edx, OFFSET FLAT:get_outstatus.outstat
	call	__fxstat
	mov	ecx, 0xffffffff
	test	eax, eax
	je	.label_375
	mov	ecx, dword ptr [rbx]
.label_375:
	mov	dword ptr [dword ptr [rip + get_outstatus.outstat_errno]],  ecx
.label_381:
	test	ecx, ecx
	jns	.label_379
	mov	eax, 0xf000
	and	eax,  dword ptr [dword ptr [rip + label_380]]
	cmp	eax, 0x8000
	je	.label_379
.label_376:
	mov	rbx,  qword ptr [word ptr [rip + stdout]]
	jmp	.label_382
.label_378:
	mov	byte ptr [byte ptr [rip + have_read_stdin]],  1
	mov	rbx,  qword ptr [word ptr [rip + stdin]]
.label_373:
	mov	esi, 2
	mov	rdi, rbx
	call	fadvise
.label_382:
	mov	rax, rbx
	pop	rbx
	pop	r14
	pop	rbp
	ret	
.label_374:
	mov	edi, OFFSET FLAT:.str.144
	mov	esi, OFFSET FLAT:.str.29
	mov	edx, 0x3d6
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.stream_open
	call	__assert_fail
.label_379:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.143
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	xor	edi, edi
	mov	esi, 3
	mov	rdx, r14
	call	quotearg_n_style_colon
	mov	rcx, rax
	mov	edi, 2
	xor	eax, eax
	mov	esi, ebp
	mov	rdx, rbx
	call	error
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x407180

	.globl fillbuf
	.type fillbuf, @function
fillbuf:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x68
	mov	qword ptr [rsp + 0x20], rsi
	mov	r15, rdi
	mov	qword ptr [rsp + 0x30], r15
	mov	rbx,  qword ptr [word ptr [rip + keylist]]
	mov	cl,  byte ptr [byte ptr [rip + eolchar]]
	xor	eax, eax
	and	cl, 1
	mov	dword ptr [rsp + 0x1c], 0
	jne	.label_383
	mov	cl, 0xa
	mov	dword ptr [rsp + 0x1c], ecx
.label_383:
	cmp	byte ptr [r15 + 0x30], 0
	jne	.label_396
	mov	qword ptr [rsp], rdx
	mov	rbp, qword ptr [r15 + 0x28]
	mov	r12,  qword ptr [word ptr [rip + merge_buffer_size]]
	mov	r8, qword ptr [r15 + 8]
	mov	rdx, qword ptr [r15 + 0x20]
	cmp	r8, rdx
	jne	.label_401
	lea	rax, [r15 + 0x10]
	mov	qword ptr [rsp + 0x10], rax
	jmp	.label_407
.label_401:
	mov	rdi, qword ptr [r15]
	add	r8, rdi
	sub	r8, rdx
	mov	rsi, r8
	call	memmove
	mov	r8, qword ptr [r15 + 0x20]
	mov	qword ptr [r15 + 8], r8
	lea	rax, [r15 + 0x10]
	mov	qword ptr [rsp + 0x10], rax
	mov	qword ptr [r15 + 0x10], 0
.label_407:
	add	r12, -0x22
	mov	qword ptr [rsp + 0x48], rbp
	mov	rax, rbp
	neg	rax
	mov	qword ptr [rsp + 8], rax
	lea	rax, [rbp + 1]
	mov	qword ptr [rsp + 0x28], rax
	mov	eax, dword ptr [rsp + 0x1c]
	movzx	r13d, al
	mov	dword ptr [rsp + 0x44], r13d
	mov	rdx, qword ptr [r15]
	mov	r14, qword ptr [r15 + 0x18]
	jmp	.label_390
	nop	dword ptr [rax]
.label_404:
	shl	r14, 5
	mov	rsi, r14
	call	xrealloc
	mov	rdx, rax
	mov	qword ptr [r15], rdx
	mov	qword ptr [r15 + 0x18], r14
	mov	r8, qword ptr [r15 + 8]
.label_390:
	add	r8, rdx
	add	r14, rdx
	mov	rax, qword ptr [rsp + 0x10]
	mov	rax, qword ptr [rax]
	mov	rcx, rax
	shl	rcx, 5
	mov	rsi, r14
	sub	rsi, rcx
	mov	rcx, rax
	imul	rcx, qword ptr [rsp + 8]
	add	rcx, r14
	sub	rcx, r8
	test	rax, rax
	je	.label_408
	neg	rax
	mov	qword ptr [rsp + 0x60], rsi
	mov	rdx, qword ptr [rsi]
	shl	rax, 5
	add	rdx, qword ptr [r14 + rax + 8]
	jmp	.label_389
	nop	
.label_408:
	mov	qword ptr [rsp + 0x60], rsi
.label_389:
	mov	qword ptr [rsp + 0x38], rdx
	mov	rsi, qword ptr [rsp + 0x28]
	mov	r14, rcx
	nop	word ptr cs:[rax + rax]
.label_405:
	cmp	rsi, r14
	jae	.label_403
	lea	rax, [r14 - 1]
	mov	qword ptr [rsp + 0x58], r14
	xor	edx, edx
	div	rsi
	mov	r14, rax
	mov	esi, 1
	mov	rdi, r8
	mov	rdx, r14
	mov	rbp, qword ptr [rsp + 0x20]
	mov	rcx, rbp
	mov	r15, r8
	call	fread_unlocked
	mov	rdi, r15
	lea	rcx, [rdi + rax]
	cmp	rax, r14
	jne	.label_385
	mov	rdx, rcx
	mov	r15, qword ptr [rsp + 0x38]
	mov	r14, qword ptr [rsp + 0x58]
	jmp	.label_387
.label_385:
	mov	edx, dword ptr [rbp]
	test	dl, 0x20
	jne	.label_392
	test	dl, 0x10
	mov	r15, qword ptr [rsp + 0x38]
	mov	r14, qword ptr [rsp + 0x58]
	je	.label_393
	mov	rdx, qword ptr [rsp + 0x30]
	mov	byte ptr [rdx + 0x30], 1
	cmp	qword ptr [rdx], rcx
	je	.label_395
	cmp	r15, rcx
	mov	rdx, r15
	je	.label_387
	movsx	edx, byte ptr [rcx - 1]
	cmp	edx, r13d
	je	.label_393
	mov	edx, dword ptr [rsp + 0x1c]
	mov	byte ptr [rcx], dl
	inc	rcx
	nop	word ptr [rax + rax]
.label_393:
	mov	rdx, rcx
.label_387:
	mov	qword ptr [rsp + 0x50], rdx
	sub	r14, rax
	sub	rdx, rdi
	jmp	.label_394
.label_391:
	mov	r14, qword ptr [rsp + 0x58]
	sub	r14, qword ptr [rsp + 0x48]
	mov	rdx, qword ptr [rsp + 0x50]
	mov	r15, rbp
	sub	rdx, r15
	mov	rdi, r15
.label_394:
	mov	esi, r13d
	call	memchr
	test	rax, rax
	je	.label_398
	mov	qword ptr [rsp + 0x58], r14
	mov	r14, qword ptr [rsp + 0x60]
	mov	rcx, r12
	mov	byte ptr [rax], 0
	lea	rdx, [rax + 1]
	lea	rsi, [r14 - 0x20]
	mov	qword ptr [rsp + 0x60], rsi
	mov	qword ptr [r14 - 0x20], r15
	mov	r12, rdx
	mov	rbp, rdx
	sub	r12, r15
	mov	qword ptr [r14 - 0x18], r12
	cmp	rcx, r12
	cmova	r12, rcx
	test	rbx, rbx
	je	.label_391
	cmp	qword ptr [rbx + 0x10], -1
	je	.label_406
	mov	rdi, qword ptr [rsp + 0x60]
	mov	r13, r12
	mov	r12, rbx
	mov	rsi, r12
	call	limfield
	mov	rbx, r12
	mov	r12, r13
	mov	r13d, dword ptr [rsp + 0x44]
.label_406:
	mov	qword ptr [r14 - 8], rax
	cmp	qword ptr [rbx], -1
	je	.label_386
	mov	rdi, qword ptr [rsp + 0x60]
	mov	rsi, rbx
	call	begfield
	mov	qword ptr [r14 - 0x10], rax
	jmp	.label_391
	nop	dword ptr [rax + rax]
.label_386:
	cmp	byte ptr [rbx + 0x30], 0
	je	.label_400
	dec	r15
	nop	dword ptr [rax]
.label_397:
	movzx	eax, byte ptr [r15 + 1]
	inc	r15
	cmp	byte ptr [byte ptr [rax + blanks]],  0
	jne	.label_397
.label_400:
	mov	qword ptr [r14 - 0x10], r15
	jmp	.label_391
	nop	word ptr [rax + rax]
.label_398:
	mov	qword ptr [rsp + 0x38], r15
	mov	r15, qword ptr [rsp + 0x30]
	cmp	byte ptr [r15 + 0x30], 0
	mov	rdx, qword ptr [rsp + 0x50]
	mov	r8, rdx
	mov	rsi, qword ptr [rsp + 0x28]
	je	.label_405
	jmp	.label_384
	nop	word ptr cs:[rax + rax]
.label_403:
	mov	rdx, r8
.label_384:
	mov	rdi, qword ptr [r15]
	mov	rax, rdx
	sub	rax, rdi
	mov	qword ptr [r15 + 8], rax
	mov	rax, qword ptr [r15 + 0x18]
	lea	rcx, [rdi + rax]
	sub	rcx, qword ptr [rsp + 0x60]
	sar	rcx, 5
	mov	qword ptr [r15 + 0x10], rcx
	jne	.label_388
	mov	r14, rax
	shr	r14, 5
	test	rdi, rdi
	je	.label_402
	movabs	rcx, 0x5555555555555540
	cmp	rax, rcx
	jae	.label_399
	mov	qword ptr [rsp + 0x28], rsi
	shr	rax, 6
	lea	r14, [r14 + rax + 1]
	jmp	.label_404
	nop	dword ptr [rax]
.label_402:
	mov	qword ptr [rsp + 0x28], rsi
	test	r14, r14
	mov	eax, 4
	cmove	r14, rax
	mov	rax, r14
	shr	rax, 0x3a
	je	.label_404
	call	xalloc_die
.label_395:
	xor	eax, eax
	jmp	.label_396
.label_388:
	sub	rdx, qword ptr [rsp + 0x38]
	mov	qword ptr [r15 + 0x20], rdx
	add	r12, 0x22
	mov	qword ptr [word ptr [rip + merge_buffer_size]],  r12
	mov	al, 1
.label_396:
	add	rsp, 0x68
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_392:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.159
	mov	edx, 5
	call	dcgettext
	mov	rdi, rax
	mov	rsi, qword ptr [rsp]
	call	sort_die
.label_399:
	call	xalloc_die
	nop	
	.section	.text
	.align	16
	#Procedure 0x407560

	.globl compare
	.type compare, @function
compare:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x2158
	mov	r12, rsi
	mov	r13, rdi
	mov	r14,  qword ptr [word ptr [rip + keylist]]
	test	r14, r14
	je	.label_476
	mov	rbx, qword ptr [r13 + 0x10]
	mov	r15, qword ptr [r13 + 0x18]
	mov	qword ptr [rsp + 0x80], r13
	mov	rbp, qword ptr [r12 + 0x10]
	mov	r11, qword ptr [r12 + 0x18]
	mov	qword ptr [rsp + 0x78], r12
	mov	byte ptr [rsp + 0x77], al
	mov	byte ptr [rsp + 0x76], al
	mov	qword ptr [rsp + 0x88], rax
	jmp	.label_509
	nop	dword ptr [rax + rax]
.label_507:
	mov	rdi, r13
	mov	rsi, r14
	mov	rbp, r11
	call	begfield
	mov	rbx, rax
	mov	rdi, r12
	mov	rsi, r14
	call	begfield
	mov	r11, rbp
	mov	rbp, rax
.label_509:
	mov	qword ptr [rsp + 0xa8], r14
	mov	rax, r14
	mov	r14, qword ptr [rax + 0x20]
	mov	r12, qword ptr [rax + 0x28]
	cmp	rbx, r15
	cmova	r15, rbx
	cmp	rbp, r11
	cmova	r11, rbp
	mov	r13, r15
	sub	r13, rbx
	mov	r10, r11
	sub	r10, rbp
	cmp	byte ptr [byte ptr [rip + hard_LC_COLLATE]],  0
	jne	.label_418
	mov	rax, qword ptr [rsp + 0xa8]
	mov	ax, word ptr [rax + 0x32]
	test	al, al
	jne	.label_418
	mov	rcx, qword ptr [rsp + 0xa8]
	mov	ecx, dword ptr [rcx + 0x34]
	test	ecx, 0xff00ff
	jne	.label_418
	or	eax, ecx
	movzx	eax, ax
	cmp	eax, 0xff
	ja	.label_418
	mov	rax, qword ptr [rsp + 0xa8]
	cmp	byte ptr [rax + 0x38], 0
	je	.label_429
	nop	dword ptr [rax]
.label_418:
	mov	rax, r12
	or	rax, r14
	setne	r9b
	je	.label_428
	lea	rdi, [r10 + r13 + 2]
	cmp	rdi, 0xfa1
	lea	rax, [rsp + 0xb0]
	mov	r8, rax
	mov	eax, 0
	mov	qword ptr [rsp + 0x88], rax
	jb	.label_442
	mov	byte ptr [rsp + 0x57], r9b
	mov	qword ptr [rsp + 0x60], r10
	mov	qword ptr [rsp + 0xa0], r11
	call	xmalloc
	mov	r11, qword ptr [rsp + 0xa0]
	mov	r10, qword ptr [rsp + 0x60]
	mov	r9b, byte ptr [rsp + 0x57]
	mov	r8, rax
	mov	qword ptr [rsp + 0x88], r8
.label_442:
	cmp	r15, rbx
	mov	eax, 0
	mov	edi, 0
	je	.label_467
	nop	dword ptr [rax]
.label_481:
	mov	cl, byte ptr [rbx + rax]
	movzx	edx, cl
	test	r14, r14
	je	.label_471
	cmp	byte ptr [r14 + rdx], 0
	jne	.label_473
.label_471:
	test	r12, r12
	je	.label_477
	mov	cl, byte ptr [r12 + rdx]
.label_477:
	mov	byte ptr [r8 + rdi], cl
	inc	rdi
.label_473:
	inc	rax
	cmp	rax, r13
	jb	.label_481
.label_467:
	lea	rbx, [r8 + r13 + 1]
	mov	byte ptr [r8 + rdi], 0
	cmp	r11, rbp
	mov	ecx, 0
	mov	eax, 0
	je	.label_484
	nop	word ptr cs:[rax + rax]
.label_529:
	mov	dl, byte ptr [rbp + rcx]
	movzx	esi, dl
	test	r14, r14
	je	.label_495
	cmp	byte ptr [r14 + rsi], 0
	jne	.label_498
.label_495:
	test	r12, r12
	je	.label_500
	mov	dl, byte ptr [r12 + rsi]
.label_500:
	mov	byte ptr [rbx + rax], dl
	inc	rax
.label_498:
	inc	rcx
	cmp	rcx, r10
	jb	.label_529
.label_484:
	mov	byte ptr [rbx + rax], 0
	mov	r10, rax
	jmp	.label_503
	nop	word ptr cs:[rax + rax]
.label_428:
	mov	al, byte ptr [r15]
	mov	byte ptr [rsp + 0x77], al
	mov	byte ptr [r15], 0
	mov	al, byte ptr [r11]
	mov	byte ptr [rsp + 0x76], al
	mov	byte ptr [r11], 0
	mov	r8, rbx
	mov	rbx, rbp
	mov	rdi, r13
.label_503:
	mov	r14, qword ptr [rsp + 0xa8]
	mov	ax, word ptr [r14 + 0x32]
	test	al, al
	je	.label_512
	mov	qword ptr [rsp + 0xa0], rdi
	lea	rdi, [r8 - 1]
	nop	dword ptr [rax]
.label_519:
	movzx	eax, byte ptr [rdi + 1]
	inc	rdi
	cmp	byte ptr [byte ptr [rax + blanks]],  0
	jne	.label_519
	mov	r15b, r9b
	mov	qword ptr [rsp + 0x90], r8
	mov	rbp, r10
	lea	rsi, [rbx - 1]
	mov	qword ptr [rsp + 0x98], rbx
	nop	word ptr [rax + rax]
.label_525:
	movzx	eax, byte ptr [rsi + 1]
	inc	rsi
	cmp	byte ptr [byte ptr [rax + blanks]],  0
	jne	.label_525
	mov	edx,  dword ptr [dword ptr [rip + decimal_point]]
	mov	ecx,  dword ptr [dword ptr [rip + thousands_sep]]
	call	strnumcmp
	mov	r9d, eax
	mov	r10, rbp
	jmp	.label_412
	nop	dword ptr [rax]
.label_512:
	mov	qword ptr [rsp + 0x98], rbx
	mov	ecx, dword ptr [r14 + 0x34]
	test	cl, cl
	je	.label_416
	mov	r15b, r9b
	mov	qword ptr [rsp + 0xa0], rdi
	mov	r12, r10
	mov	rdi, r8
	lea	rsi, [rsp + 0x1190]
	mov	rbp, r8
	call	strtold
	fstp	xword ptr [rsp + 0x68]
	mov	rbx, qword ptr [rsp + 0x98]
	mov	rdi, rbx
	lea	rsi, [rsp + 0x2150]
	call	strtold
	mov	rcx, rbp
	mov	rax, qword ptr [rsp + 0x2150]
	cmp	qword ptr [rsp + 0x1190], rcx
	je	.label_439
	mov	r9d, 1
	cmp	rax, rbx
	je	.label_445
	fld	xword ptr [rsp + 0x68]
	fxch	st(1)
	fucomi	st(1)
	mov	r10, r12
	jbe	.label_448
	fstp	st(0)
	fstp	st(0)
	mov	qword ptr [rsp + 0x90], rcx
	mov	r9d, 0xffffffff
	jmp	.label_452
.label_416:
	test	ch, 0xff
	je	.label_460
	mov	qword ptr [rsp + 0xa0], rdi
	lea	rdi, [r8 - 1]
	nop	word ptr cs:[rax + rax]
.label_468:
	movzx	eax, byte ptr [rdi + 1]
	inc	rdi
	cmp	byte ptr [byte ptr [rax + blanks]],  0
	jne	.label_468
	mov	qword ptr [rsp + 0x90], r8
	mov	r12b, r9b
	mov	rcx, qword ptr [rsp + 0x98]
	lea	rsi, [rcx - 1]
	nop	word ptr [rax + rax]
.label_410:
	movzx	r11d, byte ptr [rsi + 1]
	inc	rsi
	cmp	byte ptr [byte ptr [r11 + blanks]],  0
	jne	.label_410
	mov	qword ptr [rsp + 0x60], r10
	movzx	r8d, al
	cmp	r8d, 0x2d
	sete	al
	movzx	ebp, al
	lea	r14, [rdi + rbp + 1]
	mov	dl, byte ptr [rdi + rbp]
	movzx	r15d, dl
	lea	eax, [r15 - 0x30]
	cmp	eax, 9
	ja	.label_486
	add	rbp, rdi
	mov	r9d,  dword ptr [dword ptr [rip + thousands_sep]]
	xor	ecx, ecx
	nop	word ptr [rax + rax]
.label_485:
	movzx	eax, dl
	movzx	ebx, cl
	cmp	ebx, eax
	mov	r10b, dl
	jb	.label_501
	mov	r10b, cl
.label_501:
	movsx	eax, byte ptr [r14]
	mov	rbx, rbp
	add	rbx, 2
	cmp	eax, r9d
	mov	rbp, r14
	cmove	rbp, rbx
	lea	r14, [rbp + 1]
	mov	dl, byte ptr [rbp]
	movzx	r15d, dl
	lea	ecx, [r15 - 0x30]
	cmp	ecx, 0xa
	mov	cl, r10b
	jb	.label_485
	cmp	eax, r9d
	je	.label_466
	jmp	.label_513
.label_439:
	fstp	st(0)
	mov	qword ptr [rsp + 0x90], rcx
	cmp	rax, rbx
	mov	r9d, 0
	mov	eax, 0xffffffff
	cmovne	r9d, eax
	mov	r10, r12
	jmp	.label_452
.label_445:
	fstp	st(0)
	mov	qword ptr [rsp + 0x90], rcx
	mov	r10, r12
	jmp	.label_452
.label_460:
	test	ecx, 0xff0000
	je	.label_523
	mov	r15b, r9b
	mov	qword ptr [rsp + 0xa0], rdi
	lea	rbx, [r8 - 1]
	mov	qword ptr [rsp + 0x90], r8
	nop	word ptr cs:[rax + rax]
.label_524:
	movzx	eax, byte ptr [rbx + 1]
	inc	rbx
	cmp	byte ptr [byte ptr [rax + blanks]],  0
	jne	.label_524
	xor	r8d, r8d
	mov	r9d, 0xc
.label_447:
	lea	rsi, [r9 + r8]
	shr	rsi, 1
	mov	rdi, rsi
	shl	rdi, 4
	mov	rbp,  qword ptr [word ptr [rdi + monthtab]]
	mov	cl, byte ptr [rbp]
	test	cl, cl
	je	.label_419
	inc	rbp
	mov	rax, rbx
	nop	
.label_436:
	movzx	edx, byte ptr [rax]
	movzx	edx,  byte ptr [byte ptr [rdx + fold_toupper]]
	movzx	ecx, cl
	cmp	edx, ecx
	jb	.label_427
	movzx	edx, dl
	cmp	edx, ecx
	ja	.label_433
	inc	rax
	mov	cl, byte ptr [rbp]
	inc	rbp
	test	cl, cl
	jne	.label_436
	jmp	.label_419
	nop	word ptr [rax + rax]
.label_427:
	mov	r9, rsi
	jmp	.label_457
	nop	word ptr cs:[rax + rax]
.label_433:
	inc	rsi
	mov	r8, rsi
.label_457:
	xor	r11d, r11d
	cmp	r8, r9
	jb	.label_447
	jmp	.label_449
.label_448:
	mov	qword ptr [rsp + 0x90], rcx
	fxch	st(1)
	fucomi	st(1)
	jbe	.label_451
	fstp	st(1)
	fstp	st(0)
	nop	dword ptr [rax]
.label_452:
	fldz	
	fldz	
.label_493:
	fstp	st(1)
	fstp	st(0)
	jmp	.label_412
.label_486:
	xor	r10d, r10d
.label_513:
	cmp	r15d,  dword ptr [dword ptr [rip + decimal_point]]
	jne	.label_465
	movzx	edx, byte ptr [r14]
	inc	r14
	mov	eax, edx
	add	eax, -0x30
	cmp	eax, 9
	mov	rbx, r14
	ja	.label_466
	nop	dword ptr [rax]
.label_475:
	movzx	eax, dl
	movzx	ecx, r10b
	cmp	ecx, eax
	jb	.label_420
	mov	dl, r10b
.label_420:
	mov	r10b, dl
	movzx	edx, byte ptr [rbx]
	inc	rbx
	mov	eax, edx
	add	eax, -0x30
	cmp	eax, 0xa
	jb	.label_475
	jmp	.label_466
.label_465:
	mov	rbx, r14
.label_466:
	xor	r9d, r9d
	movzx	eax, r10b
	cmp	eax, 0x31
	jb	.label_482
	movzx	eax, byte ptr [rbx - 1]
	movsx	eax,  byte ptr [byte ptr [rax + unit_order]]
	mov	r9d, eax
	neg	r9d
	cmp	r8d, 0x2d
	cmovne	r9d, eax
.label_482:
	movzx	r8d, r11b
	cmp	r8d, 0x2d
	sete	al
	movzx	edx, al
	lea	r11, [rsi + rdx + 1]
	mov	al, byte ptr [rsi + rdx]
	movzx	r14d, al
	lea	ecx, [r14 - 0x30]
	cmp	ecx, 9
	mov	r15b, r12b
	ja	.label_494
	mov	r12d, r9d
	add	rdx, rsi
	mov	r9d,  dword ptr [dword ptr [rip + thousands_sep]]
	xor	ebx, ebx
.label_492:
	movzx	ecx, al
	movzx	ebp, bl
	cmp	ebp, ecx
	mov	r10b, al
	jb	.label_491
	mov	r10b, bl
.label_491:
	movsx	ecx, byte ptr [r11]
	mov	rbp, rdx
	add	rbp, 2
	cmp	ecx, r9d
	mov	rdx, r11
	cmove	rdx, rbp
	lea	r11, [rdx + 1]
	mov	al, byte ptr [rdx]
	movzx	r14d, al
	lea	ebx, [r14 - 0x30]
	cmp	ebx, 0xa
	mov	bl, r10b
	jb	.label_492
	cmp	ecx, r9d
	mov	r9d, r12d
	je	.label_422
	jmp	.label_478
.label_494:
	xor	r10d, r10d
.label_478:
	cmp	r14d,  dword ptr [dword ptr [rip + decimal_point]]
	jne	.label_531
	movzx	eax, byte ptr [r11]
	inc	r11
	mov	ecx, eax
	add	ecx, -0x30
	cmp	ecx, 9
	mov	rbp, r11
	ja	.label_422
	nop	word ptr cs:[rax + rax]
.label_528:
	movzx	ecx, al
	movzx	edx, r10b
	cmp	edx, ecx
	jb	.label_506
	mov	al, r10b
.label_506:
	mov	r10b, al
	movzx	eax, byte ptr [rbp]
	inc	rbp
	mov	ecx, eax
	add	ecx, -0x30
	cmp	ecx, 0xa
	jb	.label_528
	jmp	.label_422
.label_531:
	mov	rbp, r11
.label_422:
	xor	eax, eax
	movzx	ecx, r10b
	cmp	ecx, 0x31
	jb	.label_533
	movzx	eax, byte ptr [rbp - 1]
	movsx	ecx,  byte ptr [byte ptr [rax + unit_order]]
	mov	eax, ecx
	neg	eax
	cmp	r8d, 0x2d
	cmovne	eax, ecx
.label_533:
	sub	r9d, eax
	mov	r14, qword ptr [rsp + 0xa8]
	jne	.label_450
	mov	edx,  dword ptr [dword ptr [rip + decimal_point]]
	mov	ecx,  dword ptr [dword ptr [rip + thousands_sep]]
	call	strnumcmp
.label_413:
	mov	r9d, eax
	mov	r10, qword ptr [rsp + 0x60]
	jmp	.label_412
.label_450:
	mov	r10, qword ptr [rsp + 0x60]
	jmp	.label_412
.label_419:
	mov	r11d,  dword ptr [dword ptr [rdi + label_77]]
.label_449:
	mov	rax, qword ptr [rsp + 0x98]
	lea	rbx, [rax - 1]
.label_438:
	movzx	eax, byte ptr [rbx + 1]
	inc	rbx
	cmp	byte ptr [byte ptr [rax + blanks]],  0
	jne	.label_438
	xor	r8d, r8d
	mov	r9d, 0xc
.label_472:
	lea	rsi, [r9 + r8]
	shr	rsi, 1
	mov	rdi, rsi
	shl	rdi, 4
	mov	rbp,  qword ptr [word ptr [rdi + monthtab]]
	mov	cl, byte ptr [rbp]
	test	cl, cl
	je	.label_444
	inc	rbp
	mov	rax, rbx
	nop	dword ptr [rax + rax]
.label_462:
	movzx	edx, byte ptr [rax]
	movzx	edx,  byte ptr [byte ptr [rdx + fold_toupper]]
	movzx	ecx, cl
	cmp	edx, ecx
	jb	.label_456
	movzx	edx, dl
	cmp	edx, ecx
	ja	.label_459
	inc	rax
	mov	cl, byte ptr [rbp]
	inc	rbp
	test	cl, cl
	jne	.label_462
	jmp	.label_444
	nop	word ptr [rax + rax]
.label_456:
	mov	r9, rsi
	jmp	.label_515
	nop	word ptr cs:[rax + rax]
.label_459:
	inc	rsi
	mov	r8, rsi
.label_515:
	xor	eax, eax
	cmp	r8, r9
	jb	.label_472
	jmp	.label_474
.label_444:
	mov	eax,  dword ptr [dword ptr [rdi + label_77]]
.label_474:
	mov	r9d, r11d
	sub	r9d, eax
	jmp	.label_412
.label_429:
	test	r14, r14
	je	.label_480
	test	r12, r12
	mov	r13, qword ptr [rsp + 0x80]
	jne	.label_483
	jmp	.label_488
.label_451:
	xor	r9d, r9d
	fucomi	st(1)
	jne	.label_490
	jnp	.label_493
.label_490:
	fxch	st(1)
	fucomip	st(0)
	mov	r9d, 0xffffffff
	fldz	
	fxch	st(1)
	jnp	.label_493
	fstp	st(1)
	fucomip	st(0)
	mov	r9d, 1
	fldz	
	fldz	
	jnp	.label_493
	fstp	st(1)
	fstp	st(0)
	xorps	xmm0, xmm0
	movaps	xmmword ptr [rsp + 0x11b0], xmm0
	xor	esi, esi
	mov	rdi, qword ptr [rsp + 0x90]
	mov	rbx, r10
	call	strtold
	fstp	xword ptr [rsp + 0x11b0]
	xorps	xmm0, xmm0
	movaps	xmmword ptr [rsp + 0x1050], xmm0
	xor	esi, esi
	mov	rdi, qword ptr [rsp + 0x98]
	call	strtold
	fstp	xword ptr [rsp + 0x1050]
	mov	edx, 0x10
	lea	rdi, [rsp + 0x11b0]
	lea	rsi, [rsp + 0x1050]
	call	memcmp
	mov	r10, rbx
	mov	r9d, eax
	jmp	.label_452
.label_523:
	mov	qword ptr [rsp + 0xa0], rdi
	mov	qword ptr [rsp + 0x90], r8
	mov	qword ptr [rsp + 0x60], r10
	movzx	eax, ax
	cmp	eax, 0x100
	jae	.label_521
	cmp	byte ptr [r14 + 0x38], 0
	je	.label_526
	mov	r15b, r9b
	mov	rdi, qword ptr [rsp + 0x90]
	mov	rsi, qword ptr [rsp + 0x98]
	call	filevercmp
	jmp	.label_413
.label_480:
	cmp	r15, rbx
	je	.label_415
	mov	r9d, 1
	cmp	r11, rbp
	mov	r14, qword ptr [rsp + 0xa8]
	je	.label_417
	test	r12, r12
	je	.label_424
	nop	word ptr cs:[rax + rax]
.label_434:
	cmp	rbp, r11
	jae	.label_431
	cmp	rbx, r15
	jae	.label_431
	movzx	eax, byte ptr [rbx]
	inc	rbx
	movzx	r9d, byte ptr [r12 + rax]
	movzx	eax, byte ptr [rbp]
	inc	rbp
	movzx	eax, byte ptr [r12 + rax]
	sub	r9d, eax
	je	.label_434
	jmp	.label_441
.label_521:
	mov	byte ptr [rsp + 0x57], r9b
	mov	esi, OFFSET FLAT:random_md5_state
	mov	edx, 0x9c
	lea	rdi, [rsp + 0x10ec]
	call	memcpy
	mov	esi, OFFSET FLAT:random_md5_state
	mov	edx, 0x9c
	lea	rdi, [rsp + 0x1050]
	call	memcpy
	xor	eax, eax
	cmp	byte ptr [byte ptr [rip + hard_LC_COLLATE]],  0
	mov	dword ptr [rsp + 0x2c], 0
	mov	r12, qword ptr [rsp + 0x60]
	mov	r13, qword ptr [rsp + 0x98]
	mov	r15, qword ptr [rsp + 0xa0]
	mov	rdi, qword ptr [rsp + 0x90]
	je	.label_458
	mov	rbp, qword ptr [rsp + 0x90]
	mov	rsi, qword ptr [rsp + 0xa0]
	lea	rax, [rbp + rsi]
	mov	qword ptr [rsp + 0x40], rax
	mov	rax, qword ptr [rsp + 0x60]
	mov	rdx, qword ptr [rsp + 0x98]
	lea	rdi, [rdx + rax]
	mov	qword ptr [rsp + 0x38], rdi
	lea	rax, [rax + rsi]
	lea	rsi, [rax + rax*2 + 2]
	mov	qword ptr [rsp + 0x20], rsi
	xor	r14d, r14d
	mov	r13d, 0xfa0
	lea	rax, [rsp + 0x11b0]
	mov	qword ptr [rsp + 0x58], rax
	mov	dword ptr [rsp + 0x2c], 0
	mov	qword ptr [rsp + 0x30], rdx
	jmp	.label_470
.label_516:
	inc	rbx
	inc	rbp
.label_483:
	xor	eax, eax
	cmp	rbx, r15
	mov	edx, 0
	jae	.label_499
	nop	word ptr cs:[rax + rax]
.label_505:
	movzx	esi, byte ptr [rbx]
	mov	dl, 1
	cmp	byte ptr [r14 + rsi], 0
	je	.label_499
	inc	rbx
	cmp	rbx, r15
	jb	.label_505
	xor	edx, edx
	jmp	.label_499
	nop	dword ptr [rax + rax]
.label_511:
	inc	rbp
.label_499:
	cmp	rbp, r11
	jae	.label_469
	movzx	esi, byte ptr [rbp]
	cmp	byte ptr [r14 + rsi], 0
	jne	.label_511
	test	dl, dl
	je	.label_425
	movzx	eax, byte ptr [rbx]
	movzx	r9d, byte ptr [r12 + rax]
	movzx	eax, byte ptr [r12 + rsi]
	sub	r9d, eax
	je	.label_516
	jmp	.label_520
.label_527:
	cmp	r12, r15
	cmovb	r15, r12
	seta	al
	movzx	r12d, al
	sbb	r12d, 0
	mov	rdi, qword ptr [rsp + 0x58]
	mov	rsi, rbx
	mov	rdx, r15
	call	memcmp
	mov	rsi, qword ptr [rsp + 0x20]
	test	eax, eax
	cmovne	r12d, eax
	mov	dword ptr [rsp + 0x2c], r12d
	nop	dword ptr [rax + rax]
.label_470:
	cmp	r13, rsi
	jae	.label_530
	lea	rbx, [r13 + r13*2]
	shr	rbx, 1
	cmp	rsi, rbx
	cmova	rbx, rsi
	mov	rdi, r14
	call	free
	mov	rdi, rbx
	call	malloc
	mov	qword ptr [rsp + 0x68], rax
	test	rax, rax
	mov	r13d, 0xfa0
	cmovne	r13, rbx
	mov	rcx, rax
	lea	rax, [rsp + 0x11b0]
	cmove	rcx, rax
	mov	qword ptr [rsp + 0x58], rcx
	jmp	.label_437
	nop	dword ptr [rax]
.label_530:
	mov	qword ptr [rsp + 0x68], r14
.label_437:
	mov	rbx, qword ptr [rsp + 0x30]
	mov	r14, qword ptr [rsp + 0x40]
	mov	r12, qword ptr [rsp + 0x38]
	cmp	rbp, r14
	mov	r15d, 0
	jae	.label_421
	mov	rdi, qword ptr [rsp + 0x58]
	mov	rsi, rbp
	mov	rdx, r13
	call	xstrxfrm
	mov	r15, rax
	inc	r15
.label_421:
	cmp	rbx, r12
	mov	eax, 0
	jae	.label_464
	mov	rax, qword ptr [rsp + 0x58]
	lea	rdi, [rax + r15]
	mov	rdx, r13
	sub	rdx, r15
	mov	eax, 0
	cmovb	rdi, rax
	cmovb	rdx, rax
	mov	rsi, rbx
	call	xstrxfrm
	inc	rax
.label_464:
	cmp	r13, r15
	setb	cl
	lea	rdx, [rax + r15]
	cmp	rdx, r13
	ja	.label_461
	test	cl, cl
	jne	.label_461
	mov	qword ptr [rsp + 0x48], rax
	jmp	.label_463
	nop	word ptr cs:[rax + rax]
.label_461:
	mov	qword ptr [rsp + 0x48], rax
	lea	r13, [rdx + rdx*2]
	shr	r13, 1
	movabs	rcx, 0x5555555555555555
	cmp	rdx, rcx
	cmovae	r13, rdx
	mov	rdi, qword ptr [rsp + 0x68]
	call	free
	mov	rdi, r13
	call	xmalloc
	cmp	rbp, r14
	jae	.label_479
	mov	rdi, rax
	mov	rsi, rbp
	mov	rdx, r15
	mov	qword ptr [rsp + 0x68], rax
	call	strxfrm
	mov	rax, qword ptr [rsp + 0x68]
.label_479:
	cmp	rbx, r12
	jae	.label_489
	mov	rdi, rax
	add	rdi, r15
	mov	rsi, rbx
	mov	rdx, qword ptr [rsp + 0x48]
	mov	qword ptr [rsp + 0x68], rax
	call	strxfrm
	mov	rax, qword ptr [rsp + 0x68]
	mov	qword ptr [rsp + 0x58], rax
	jmp	.label_463
	nop	word ptr cs:[rax + rax]
.label_489:
	mov	qword ptr [rsp + 0x58], rax
	mov	qword ptr [rsp + 0x68], rax
.label_463:
	cmp	rbp, r14
	jae	.label_454
	mov	rdi, rbp
	call	strlen
	lea	rbp, [rax + rbp + 1]
.label_454:
	cmp	rbx, r12
	jae	.label_497
	mov	rdi, rbx
	call	strlen
	lea	rbx, [rax + rbx + 1]
.label_497:
	mov	rax, qword ptr [rsp + 0x68]
	cmp	rbp, r14
	jb	.label_508
	cmp	rbx, r12
	jae	.label_496
.label_508:
	mov	qword ptr [rsp + 0x38], r12
	mov	qword ptr [rsp + 0x40], r14
	mov	qword ptr [rsp + 0x30], rbx
	mov	r14, rax
	mov	rbx, qword ptr [rsp + 0x58]
	mov	rdi, rbx
	mov	rsi, r15
	lea	rdx, [rsp + 0x1050]
	call	md5_process_bytes
	lea	rbx, [rbx + r15]
	mov	rdi, rbx
	mov	r12, r15
	mov	r15, qword ptr [rsp + 0x48]
	mov	rsi, r15
	lea	rdx, [rsp + 0x10ec]
	call	md5_process_bytes
	cmp	dword ptr [rsp + 0x2c], 0
	mov	rsi, qword ptr [rsp + 0x20]
	jne	.label_470
	jmp	.label_527
.label_496:
	mov	rdi, qword ptr [rsp + 0x58]
	lea	r13, [rdi + r15]
	mov	r14, qword ptr [rsp + 0xa8]
	mov	r12, qword ptr [rsp + 0x48]
.label_458:
	mov	qword ptr [rsp + 0x58], rdi
	mov	qword ptr [rsp + 0x48], r13
	mov	qword ptr [rsp + 0x68], rax
	mov	rsi, r15
	lea	rbp, [rsp + 0x1050]
	mov	rdx, rbp
	call	md5_process_bytes
	mov	rdi, rbp
	lea	rbx, [rsp + 0x1190]
	mov	rsi, rbx
	call	md5_finish_ctx
	mov	rdi, r13
	mov	rsi, r12
	lea	rbp, [rsp + 0x10ec]
	mov	rdx, rbp
	call	md5_process_bytes
	mov	rdi, rbp
	lea	rbp, [rsp + 0x11a0]
	mov	rsi, rbp
	call	md5_finish_ctx
	mov	edx, 0x10
	mov	rdi, rbx
	mov	rsi, rbp
	call	memcmp
	test	eax, eax
	jne	.label_453
	mov	eax, dword ptr [rsp + 0x2c]
	test	eax, eax
	jne	.label_453
	cmp	r15, r12
	mov	rdx, r12
	cmovb	rdx, r15
	mov	rdi, qword ptr [rsp + 0x58]
	mov	rsi, qword ptr [rsp + 0x48]
	call	memcmp
	test	eax, eax
	jne	.label_453
	cmp	r15, r12
	seta	al
	movzx	eax, al
	sbb	eax, 0
.label_453:
	mov	rdi, qword ptr [rsp + 0x68]
	mov	ebx, eax
	call	free
	mov	r9d, ebx
	mov	r10, qword ptr [rsp + 0x60]
	mov	r15b, byte ptr [rsp + 0x57]
	nop	dword ptr [rax]
.label_412:
	test	r15b, r15b
	mov	r13, qword ptr [rsp + 0xa0]
	je	.label_446
	mov	rdi, qword ptr [rsp + 0x88]
	mov	ebx, r9d
	call	free
	mov	r9d, ebx
	jmp	.label_432
	nop	word ptr cs:[rax + rax]
.label_446:
	mov	al, byte ptr [rsp + 0x77]
	mov	rcx, qword ptr [rsp + 0x90]
	mov	byte ptr [rcx + r13], al
	mov	al, byte ptr [rsp + 0x76]
	mov	rcx, qword ptr [rsp + 0x98]
	mov	byte ptr [rcx + r10], al
.label_432:
	test	r9d, r9d
	jne	.label_417
	mov	r14, qword ptr [r14 + 0x40]
	test	r14, r14
	mov	r12, qword ptr [rsp + 0x78]
	mov	r13, qword ptr [rsp + 0x80]
	je	.label_487
	cmp	qword ptr [r14 + 0x10], -1
	je	.label_455
	mov	rdi, r13
	mov	rsi, r14
	call	limfield
	mov	r15, rax
	mov	rdi, r12
	mov	rsi, r14
	call	limfield
	mov	r11, rax
	jmp	.label_532
	nop	dword ptr [rax + rax]
.label_455:
	mov	rax, qword ptr [r13]
	mov	rcx, qword ptr [r13 + 8]
	lea	r15, [rax + rcx - 1]
	mov	rax, qword ptr [r12]
	mov	rcx, qword ptr [r12 + 8]
	lea	r11, [rax + rcx - 1]
.label_532:
	cmp	qword ptr [r14], -1
	jne	.label_507
	mov	rbx, qword ptr [r13]
	mov	rbp, qword ptr [r12]
	cmp	byte ptr [r14 + 0x30], 0
	je	.label_509
	jmp	.label_514
	nop	word ptr [rax + rax]
.label_518:
	inc	rbx
.label_514:
	cmp	rbx, r15
	jae	.label_517
	movzx	eax, byte ptr [rbx]
	cmp	byte ptr [byte ptr [rax + blanks]],  0
	jne	.label_518
	jmp	.label_517
	nop	word ptr cs:[rax + rax]
.label_522:
	inc	rbp
.label_517:
	cmp	rbp, r11
	jae	.label_509
	movzx	eax, byte ptr [rbp]
	cmp	byte ptr [byte ptr [rax + blanks]],  0
	jne	.label_522
	jmp	.label_509
.label_426:
	inc	rbx
	inc	rbp
.label_488:
	xor	eax, eax
	cmp	rbx, r15
	mov	edx, 0
	mov	r12, qword ptr [rsp + 0x78]
	jae	.label_409
	nop	word ptr cs:[rax + rax]
.label_414:
	movzx	esi, byte ptr [rbx]
	mov	dl, 1
	cmp	byte ptr [r14 + rsi], 0
	je	.label_409
	inc	rbx
	cmp	rbx, r15
	jb	.label_414
	xor	edx, edx
	jmp	.label_409
	nop	dword ptr [rax + rax]
.label_423:
	inc	rbp
.label_409:
	cmp	rbp, r11
	jae	.label_469
	movzx	esi, byte ptr [rbp]
	cmp	byte ptr [r14 + rsi], 0
	jne	.label_423
	test	dl, dl
	je	.label_425
	movzx	r9d, byte ptr [rbx]
	sub	r9d, esi
	je	.label_426
	jmp	.label_430
.label_415:
	cmp	r11, rbp
	mov	r9d, 0
	mov	eax, 0xffffffff
	cmovne	r9d, eax
	mov	r14, qword ptr [rsp + 0xa8]
	jmp	.label_432
.label_526:
	mov	r15b, r9b
	mov	rax, qword ptr [rsp + 0xa0]
	test	rax, rax
	je	.label_440
	mov	r9d, 1
	mov	r10, qword ptr [rsp + 0x60]
	test	r10, r10
	je	.label_412
	mov	rax, qword ptr [rsp + 0xa0]
	lea	rsi, [rax + 1]
	lea	rcx, [r10 + 1]
	mov	rdi, qword ptr [rsp + 0x90]
	mov	rdx, qword ptr [rsp + 0x98]
	mov	rbx, r10
	call	xmemcoll0
	mov	r10, rbx
	mov	r9d, eax
	jmp	.label_412
.label_424:
	cmp	r13, r10
	mov	rdx, r10
	cmovb	rdx, r13
	mov	rdi, rbx
	mov	rsi, rbp
	mov	rbx, r10
	call	memcmp
	mov	r10, rbx
	mov	r9d, eax
	test	r9d, r9d
	jne	.label_417
.label_431:
	cmp	r13, r10
	setne	al
	mov	r9d, 0xffffffff
	jb	.label_417
	movzx	r9d, al
	jmp	.label_432
.label_440:
	mov	r10, qword ptr [rsp + 0x60]
	mov	rax, r10
	neg	rax
	sbb	r9d, r9d
	jmp	.label_412
.label_425:
	mov	eax, 1
	xor	edx, edx
.label_469:
	mov	r14, qword ptr [rsp + 0xa8]
	movzx	r9d, dl
	sub	r9d, eax
	jmp	.label_432
.label_417:
	mov	cl, byte ptr [r14 + 0x37]
.label_435:
	mov	r12, qword ptr [rsp + 0x78]
	mov	r13, qword ptr [rsp + 0x80]
.label_411:
	mov	eax, r9d
	neg	eax
	test	cl, cl
	cmove	eax, r9d
	test	eax, eax
	jne	.label_502
.label_487:
	mov	cl,  byte ptr [byte ptr [rip + unique]]
	xor	eax, eax
	and	cl, 1
	jne	.label_502
	mov	cl,  byte ptr [byte ptr [rip + stable]]
	and	cl, 1
	jne	.label_502
.label_476:
	mov	rsi, qword ptr [r13 + 8]
	mov	rcx, qword ptr [r12 + 8]
	lea	rbx, [rcx - 1]
	mov	rbp, rsi
	dec	rbp
	je	.label_504
	mov	eax, 1
	test	rbx, rbx
	je	.label_443
	cmp	byte ptr [byte ptr [rip + hard_LC_COLLATE]],  0
	mov	rdi, qword ptr [r13]
	mov	rdx, qword ptr [r12]
	je	.label_510
	call	xmemcoll0
	jmp	.label_443
.label_504:
	neg	rbx
	sbb	eax, eax
	jmp	.label_443
.label_510:
	cmp	rbp, rbx
	mov	rax, rbx
	cmovb	rax, rbp
	mov	rsi, rdx
	mov	rdx, rax
	call	memcmp
	test	eax, eax
	jne	.label_443
	cmp	rbp, rbx
	setne	al
	movzx	ecx, al
	mov	eax, 0xffffffff
	cmovae	eax, ecx
.label_443:
	cmp	byte ptr [byte ptr [rip + reverse]],  0
	je	.label_502
	neg	eax
.label_502:
	add	rsp, 0x2158
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_441:
	shr	ecx, 0x18
	jmp	.label_435
.label_520:
	shr	ecx, 0x18
	mov	r12, qword ptr [rsp + 0x78]
	jmp	.label_411
.label_430:
	shr	ecx, 0x18
	jmp	.label_411
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x408610

	.globl write_line
	.type write_line, @function
write_line:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x38
	mov	r12, rdx
	mov	r15, rsi
	mov	qword ptr [rsp + 0x28], rdi
	mov	rbp, qword ptr [rdi]
	mov	rbx, qword ptr [rdi + 8]
	lea	r14, [rbp + rbx]
	test	r12, r12
	jne	.label_551
	movzx	eax,  byte ptr [byte ptr [rip + debug]]
	and	eax, 1
	cmp	eax, 1
	jne	.label_551
	test	rbx, rbx
	jle	.label_557
	dec	rbx
	mov	r12d, 0xa
	mov	r13d, 0x3e
	nop	dword ptr [rax]
.label_577:
	test	rbx, rbx
	movsx	ecx, byte ptr [rbp]
	mov	eax, ecx
	cmove	eax, r12d
	cmp	ecx, 9
	cmove	eax, r13d
	mov	rcx, qword ptr [r15 + 0x28]
	cmp	rcx, qword ptr [r15 + 0x30]
	jae	.label_561
	lea	rdx, [rcx + 1]
	mov	qword ptr [r15 + 0x28], rdx
	mov	byte ptr [rcx], al
.label_582:
	inc	rbp
	dec	rbx
	cmp	rbp, r14
	jb	.label_577
	jmp	.label_557
.label_561:
	movzx	esi, al
	mov	rdi, r15
	call	__overflow
	cmp	eax, -1
	jne	.label_582
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.163
	mov	edx, 5
	call	dcgettext
	xor	esi, esi
	mov	rdi, rax
	call	sort_die
.label_551:
	mov	al,  byte ptr [byte ptr [rip + eolchar]]
	and	al, 1
	jne	.label_590
	mov	al, 0xa
	jmp	.label_593
.label_590:
	xor	eax, eax
.label_593:
	mov	byte ptr [rbp + rbx - 1], al
	mov	esi, 1
	mov	rdi, rbp
	mov	rdx, rbx
	mov	rcx, r15
	call	fwrite_unlocked
	cmp	rax, rbx
	jne	.label_588
	mov	byte ptr [r14 - 1], 0
.label_540:
	add	rsp, 0x38
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_557:
	mov	r12,  qword ptr [word ptr [rip + keylist]]
	jmp	.label_539
.label_583:
	mov	r12, qword ptr [r12 + 0x40]
	test	r12, r12
	jne	.label_539
	mov	al,  byte ptr [byte ptr [rip + unique]]
	and	al, 1
	jne	.label_540
	test	byte ptr [byte ptr [rip + stable]],  1
	mov	r12d, 0
	je	.label_539
	jmp	.label_540
.label_575:
	mov	esi, 0xa
	call	__overflow
	jmp	.label_560
.label_569:
	xor	eax, eax
.label_589:
	movzx	edi, al
	lea	r11, [rbx + rdi + 1]
	mov	al, byte ptr [rbx + rdi]
	movzx	r14d, al
	lea	ecx, [r14 - 0x30]
	cmp	ecx, 9
	ja	.label_563
	add	rdi, rbx
	mov	r9d,  dword ptr [dword ptr [rip + thousands_sep]]
	xor	esi, esi
	nop	word ptr cs:[rax + rax]
.label_565:
	movzx	ecx, al
	movzx	edx, sil
	cmp	edx, ecx
	mov	r10b, al
	jb	.label_542
	mov	r10b, sil
.label_542:
	movsx	edx, byte ptr [r11]
	mov	rcx, rdi
	add	rcx, 2
	cmp	edx, r9d
	mov	rdi, r11
	cmove	rdi, rcx
	lea	r11, [rdi + 1]
	mov	al, byte ptr [rdi]
	movzx	r14d, al
	lea	esi, [r14 - 0x30]
	cmp	esi, 0xa
	mov	sil, r10b
	jb	.label_565
	cmp	edx, r9d
	je	.label_544
	jmp	.label_591
.label_563:
	xor	r10d, r10d
.label_591:
	cmp	r14d,  dword ptr [dword ptr [rip + decimal_point]]
	jne	.label_592
	movzx	eax, byte ptr [r11]
	inc	r11
	mov	ecx, eax
	add	ecx, -0x30
	cmp	ecx, 9
	mov	rcx, r11
	ja	.label_544
	nop	word ptr cs:[rax + rax]
.label_558:
	movzx	edx, al
	movzx	esi, r10b
	cmp	esi, edx
	jb	.label_587
	mov	al, r10b
.label_587:
	mov	r10b, al
	movzx	eax, byte ptr [rcx]
	inc	rcx
	mov	edx, eax
	add	edx, -0x30
	cmp	edx, 0xa
	jb	.label_558
	jmp	.label_544
.label_592:
	mov	rcx, r11
.label_544:
	movzx	eax, r10b
	cmp	eax, 0x30
	mov	rsi, rbx
	jb	.label_545
	dec	rcx
	test	r8b, r8b
	je	.label_550
	movzx	eax, byte ptr [rcx]
	cmp	byte ptr [byte ptr [rax + unit_order]],  0
	setne	al
	jmp	.label_573
.label_550:
	xor	eax, eax
.label_573:
	movzx	eax, al
	add	rcx, rax
	mov	qword ptr [rsp + 0x30], rcx
	mov	rsi, rcx
	jmp	.label_545
	nop	word ptr cs:[rax + rax]
.label_539:
	mov	rax, qword ptr [rsp + 0x28]
	mov	rbp, qword ptr [rax]
	mov	rax, qword ptr [rax + 8]
	lea	r13, [rbp + rax - 1]
	test	r12, r12
	je	.label_579
	mov	r14, qword ptr [r12]
	cmp	r14, -1
	mov	rbx, rbp
	je	.label_572
	mov	rdi, qword ptr [rsp + 0x28]
	mov	rsi, r12
	call	begfield
	mov	rbx, rax
.label_572:
	cmp	qword ptr [r12 + 0x10], -1
	je	.label_580
	mov	rdi, qword ptr [rsp + 0x28]
	mov	rsi, r12
	call	limfield
	mov	r13, rax
.label_580:
	mov	rax, qword ptr [r12 + 0x30]
	test	al, al
	sete	cl
	cmp	r14, -1
	setne	dl
	movabs	rsi, 0xff000000000000
	test	rax, rsi
	jne	.label_584
	or	cl, dl
	je	.label_584
	mov	ecx, eax
	shr	ecx, 0x10
	test	cl, cl
	jne	.label_584
	shr	rax, 0x20
	movzx	ecx, ax
	cmp	ecx, 0xff
	ja	.label_584
	test	al, al
	je	.label_576
	nop	word ptr cs:[rax + rax]
.label_584:
	mov	r15b, byte ptr [r13]
	mov	byte ptr [r13], 0
	dec	rbx
	nop	dword ptr [rax]
.label_541:
	movzx	eax, byte ptr [rbx + 1]
	inc	rbx
	cmp	byte ptr [byte ptr [rax + blanks]],  0
	jne	.label_541
	mov	qword ptr [rsp + 0x30], rbx
	cmp	r13, rbx
	jb	.label_534
	cmp	byte ptr [r12 + 0x36], 0
	je	.label_568
	lea	rax, [rbx - 1]
	nop	
.label_556:
	movzx	ecx, byte ptr [rax + 1]
	inc	rax
	cmp	byte ptr [byte ptr [rcx + blanks]],  0
	jne	.label_556
	xor	r8d, r8d
	mov	r9d, 0xc
.label_546:
	lea	r10, [r9 + r8]
	shr	r10, 1
	mov	rcx, r10
	shl	rcx, 4
	mov	rcx,  qword ptr [word ptr [rcx + monthtab]]
	mov	dl, byte ptr [rcx]
	test	dl, dl
	je	.label_566
	inc	rcx
	mov	rsi, rax
	nop	
.label_581:
	movzx	edi, byte ptr [rsi]
	movzx	edi,  byte ptr [byte ptr [rdi + fold_toupper]]
	movzx	edx, dl
	cmp	edi, edx
	jb	.label_574
	movzx	edi, dil
	cmp	edi, edx
	ja	.label_549
	inc	rsi
	mov	dl, byte ptr [rcx]
	inc	rcx
	test	dl, dl
	jne	.label_581
	jmp	.label_552
	nop	word ptr [rax + rax]
.label_574:
	mov	r9, r10
	jmp	.label_585
	nop	word ptr cs:[rax + rax]
.label_549:
	inc	r10
	mov	r8, r10
.label_585:
	cmp	r8, r9
	jb	.label_546
	mov	rsi, rbx
	jmp	.label_545
.label_579:
	mov	rbx, rbp
	jmp	.label_576
.label_568:
	movzx	r8d, word ptr [r12 + 0x34]
	test	r8b, r8b
	je	.label_594
	mov	rdi, rbx
	lea	rsi, [rsp + 0x30]
	call	strtold
	fstp	st(0)
	mov	rsi, qword ptr [rsp + 0x30]
	jmp	.label_545
.label_594:
	shr	r8d, 8
	mov	al, byte ptr [r12 + 0x32]
	or	al, r8b
	je	.label_534
	cmp	rbx, r13
	jae	.label_569
	movzx	eax, byte ptr [rbx]
	cmp	eax, 0x2d
	sete	al
	jmp	.label_589
	nop	dword ptr [rax + rax]
.label_534:
	mov	qword ptr [rsp + 0x30], r13
	mov	rsi, r13
	jmp	.label_545
.label_566:
	mov	rsi, rax
.label_552:
	mov	qword ptr [rsp + 0x30], rsi
.label_545:
	mov	byte ptr [r13], r15b
	mov	r13, rsi
.label_576:
	mov	r15, rbx
	sub	r15, rbp
	xor	edx, edx
	mov	rdi, rbp
	mov	rsi, r15
	call	mbsnwidth
	movsxd	r14, eax
	cmp	rbp, rbx
	jae	.label_562
	cmp	r15, 4
	jb	.label_538
	mov	rax, r15
	and	rax, 0xfffffffffffffffc
	mov	rcx, r15
	and	rcx, 0xfffffffffffffffc
	je	.label_538
	movq	xmm2, r14
	pxor	xmm0, xmm0
	lea	rsi, [r15 - 4]
	mov	rdx, rsi
	shr	rdx, 2
	bt	rsi, 2
	jb	.label_571
	movzx	esi, word ptr [rbp]
	movd	xmm1, esi
	pxor	xmm5, xmm5
	punpcklbw	xmm1, xmm5
	punpcklwd	xmm1, xmm5
	punpckldq	xmm1, xmm5
	movzx	esi, word ptr [rbp + 2]
	movd	xmm0, esi
	punpcklbw	xmm0, xmm5
	punpcklwd	xmm0, xmm5
	punpckldq	xmm0, xmm5
	movdqa	xmm6,  xmmword ptr [word ptr [rip + label_536]]
	pcmpeqd	xmm1, xmm6
	pshufd	xmm3, xmm1, 0xb1
	movdqa	xmm7,  xmmword ptr [word ptr [rip + label_537]]
	pand	xmm1, xmm7
	pand	xmm1, xmm3
	pcmpeqd	xmm0, xmm6
	pshufd	xmm3, xmm0, 0xb1
	pand	xmm0, xmm7
	pand	xmm0, xmm3
	paddq	xmm1, xmm2
	mov	esi, 4
	movdqa	xmm2, xmm1
	jmp	.label_586
.label_571:
	xor	esi, esi
	pxor	xmm5, xmm5
	movdqa	xmm6,  xmmword ptr [word ptr [rip + label_536]]
	movdqa	xmm7,  xmmword ptr [word ptr [rip + label_537]]
.label_586:
	test	rdx, rdx
	je	.label_543
	mov	rdx, rcx
	sub	rdx, rsi
	lea	rsi, [rbp + rsi + 6]
	movdqa	xmm1, xmm2
	nop	dword ptr [rax]
.label_553:
	movzx	edi, word ptr [rsi - 6]
	movd	xmm2, edi
	punpcklbw	xmm2, xmm5
	punpcklwd	xmm2, xmm5
	punpckldq	xmm2, xmm5
	movzx	edi, word ptr [rsi - 4]
	movd	xmm3, edi
	punpcklbw	xmm3, xmm5
	punpcklwd	xmm3, xmm5
	punpckldq	xmm3, xmm5
	pcmpeqd	xmm2, xmm6
	pshufd	xmm4, xmm2, 0xb1
	pand	xmm2, xmm7
	pand	xmm2, xmm4
	pcmpeqd	xmm3, xmm6
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
	movzx	edi, word ptr [rsi]
	movd	xmm0, edi
	punpcklbw	xmm0, xmm5
	punpcklwd	xmm0, xmm5
	punpckldq	xmm0, xmm5
	pcmpeqd	xmm1, xmm6
	pshufd	xmm4, xmm1, 0xb1
	pand	xmm1, xmm7
	pand	xmm1, xmm4
	pcmpeqd	xmm0, xmm6
	pshufd	xmm4, xmm0, 0xb1
	pand	xmm0, xmm7
	pand	xmm0, xmm4
	paddq	xmm1, xmm2
	paddq	xmm0, xmm3
	add	rsi, 8
	add	rdx, -8
	jne	.label_553
.label_543:
	paddq	xmm0, xmm1
	pshufd	xmm1, xmm0, 0x4e
	paddq	xmm1, xmm0
	movq	r14, xmm1
	cmp	r15, rcx
	je	.label_562
	add	rbp, rax
	nop	dword ptr [rax + rax]
.label_538:
	movzx	eax, byte ptr [rbp]
	inc	rbp
	cmp	eax, 9
	sete	al
	movzx	eax, al
	add	r14, rax
	cmp	rbx, rbp
	jne	.label_538
.label_562:
	mov	r15, r13
	sub	r15, rbx
	xor	edx, edx
	mov	rdi, rbx
	mov	rsi, r15
	call	mbsnwidth
	movsxd	rbp, eax
	cmp	rbx, r13
	jae	.label_547
	cmp	r15, 4
	pxor	xmm5, xmm5
	movdqa	xmm0,  xmmword ptr [word ptr [rip + label_536]]
	movdqa	xmm6, xmm0
	movdqa	xmm0,  xmmword ptr [word ptr [rip + label_537]]
	movdqa	xmm7, xmm0
	jb	.label_554
	mov	rax, r15
	and	rax, 0xfffffffffffffffc
	mov	rcx, r15
	and	rcx, 0xfffffffffffffffc
	je	.label_554
	movq	xmm2, rbp
	pxor	xmm0, xmm0
	lea	rsi, [r15 - 4]
	mov	rdx, rsi
	shr	rdx, 2
	bt	rsi, 2
	jb	.label_570
	movzx	esi, word ptr [rbx]
	movd	xmm1, esi
	punpcklbw	xmm1, xmm5
	punpcklwd	xmm1, xmm5
	punpckldq	xmm1, xmm5
	movzx	esi, word ptr [rbx + 2]
	movd	xmm0, esi
	punpcklbw	xmm0, xmm5
	punpcklwd	xmm0, xmm5
	punpckldq	xmm0, xmm5
	pcmpeqd	xmm1, xmm6
	pshufd	xmm3, xmm1, 0xb1
	pand	xmm1, xmm7
	pand	xmm1, xmm3
	pcmpeqd	xmm0, xmm6
	pshufd	xmm3, xmm0, 0xb1
	pand	xmm0, xmm7
	pand	xmm0, xmm3
	paddq	xmm1, xmm2
	mov	esi, 4
	movdqa	xmm2, xmm1
	jmp	.label_578
.label_570:
	xor	esi, esi
.label_578:
	test	rdx, rdx
	je	.label_595
	mov	rdx, rcx
	sub	rdx, rsi
	lea	rsi, [rbx + rsi + 6]
	movdqa	xmm1, xmm2
	nop	
.label_555:
	movzx	edi, word ptr [rsi - 6]
	movd	xmm2, edi
	punpcklbw	xmm2, xmm5
	punpcklwd	xmm2, xmm5
	punpckldq	xmm2, xmm5
	movzx	edi, word ptr [rsi - 4]
	movd	xmm3, edi
	punpcklbw	xmm3, xmm5
	punpcklwd	xmm3, xmm5
	punpckldq	xmm3, xmm5
	pcmpeqd	xmm2, xmm6
	pshufd	xmm4, xmm2, 0xb1
	pand	xmm2, xmm7
	pand	xmm2, xmm4
	pcmpeqd	xmm3, xmm6
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
	movzx	edi, word ptr [rsi]
	movd	xmm0, edi
	punpcklbw	xmm0, xmm5
	punpcklwd	xmm0, xmm5
	punpckldq	xmm0, xmm5
	pcmpeqd	xmm1, xmm6
	pshufd	xmm4, xmm1, 0xb1
	pand	xmm1, xmm7
	pand	xmm1, xmm4
	pcmpeqd	xmm0, xmm6
	pshufd	xmm4, xmm0, 0xb1
	pand	xmm0, xmm7
	pand	xmm0, xmm4
	paddq	xmm1, xmm2
	paddq	xmm0, xmm3
	add	rsi, 8
	add	rdx, -8
	jne	.label_555
.label_595:
	paddq	xmm0, xmm1
	pshufd	xmm1, xmm0, 0x4e
	paddq	xmm1, xmm0
	movq	rbp, xmm1
	cmp	r15, rcx
	je	.label_547
	add	rbx, rax
	nop	dword ptr [rax + rax]
.label_554:
	movzx	eax, byte ptr [rbx]
	inc	rbx
	cmp	eax, 9
	sete	al
	movzx	eax, al
	add	rbp, rax
	cmp	r13, rbx
	jne	.label_554
	jmp	.label_547
	nop	dword ptr [rax]
.label_559:
	lea	rcx, [rax + 1]
	mov	qword ptr [rdi + 0x28], rcx
	mov	byte ptr [rax], 0x20
.label_547:
	test	r14, r14
	je	.label_535
	dec	r14
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	mov	rax, qword ptr [rdi + 0x28]
	cmp	rax, qword ptr [rdi + 0x30]
	jb	.label_559
	mov	esi, 0x20
	call	__overflow
	jmp	.label_547
.label_535:
	test	rbp, rbp
	jne	.label_548
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.164
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	xor	eax, eax
	mov	rsi, rcx
	call	__printf_chk
	jmp	.label_560
.label_567:
	mov	esi, 0x5f
	call	__overflow
	jmp	.label_564
	nop	word ptr cs:[rax + rax]
.label_548:
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	mov	rax, qword ptr [rdi + 0x28]
	cmp	rax, qword ptr [rdi + 0x30]
	jae	.label_567
	lea	rcx, [rax + 1]
	mov	qword ptr [rdi + 0x28], rcx
	mov	byte ptr [rax], 0x5f
.label_564:
	dec	rbp
	jne	.label_548
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	mov	rax, qword ptr [rdi + 0x28]
	cmp	rax, qword ptr [rdi + 0x30]
	jae	.label_575
	lea	rcx, [rax + 1]
	mov	qword ptr [rdi + 0x28], rcx
	mov	byte ptr [rax], 0xa
.label_560:
	test	r12, r12
	jne	.label_583
	jmp	.label_540
.label_588:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.163
	mov	edx, 5
	call	dcgettext
	mov	rdi, rax
	mov	rsi, r12
	call	sort_die
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x408ee0

	.globl limfield
	.type limfield, @function
limfield:
	mov	rax, qword ptr [rdi]
	mov	rcx, qword ptr [rdi + 8]
	lea	rcx, [rax + rcx - 1]
	mov	r9, qword ptr [rsi + 0x10]
	mov	r8, qword ptr [rsi + 0x18]
	cmp	r8, 1
	adc	r9, 0
	mov	edx,  dword ptr [dword ptr [rip + tab]]
	cmp	edx, 0x80
	je	.label_605
	jmp	.label_598
	nop	dword ptr [rax]
.label_596:
	dec	r9
.label_605:
	cmp	rax, rcx
	jae	.label_601
	test	r9, r9
	jne	.label_603
	jmp	.label_601
	nop	
.label_607:
	inc	rax
.label_603:
	cmp	rax, rcx
	jae	.label_606
	movzx	edx, byte ptr [rax]
	cmp	byte ptr [byte ptr [rdx + blanks]],  0
	jne	.label_607
	jmp	.label_606
	nop	word ptr cs:[rax + rax]
.label_597:
	inc	rax
.label_606:
	cmp	rax, rcx
	jae	.label_596
	movzx	edx, byte ptr [rax]
	cmp	byte ptr [byte ptr [rdx + blanks]],  0
	je	.label_597
	jmp	.label_596
	nop	word ptr cs:[rax + rax]
.label_599:
	lea	r10, [rax + 1]
	mov	rdi, r9
	or	rdi, r8
	cmovne	rax, r10
.label_598:
	cmp	rax, rcx
	jae	.label_601
	test	r9, r9
	je	.label_601
	dec	r9
	jmp	.label_610
	nop	dword ptr [rax]
.label_609:
	inc	rax
.label_610:
	cmp	rax, rcx
	jae	.label_598
	movsx	edi, byte ptr [rax]
	cmp	edi, edx
	jne	.label_609
	jmp	.label_599
.label_601:
	test	r8, r8
	je	.label_600
	cmp	byte ptr [rsi + 0x31], 0
	jne	.label_602
	jmp	.label_604
	nop	
.label_608:
	inc	rax
.label_602:
	cmp	rax, rcx
	jae	.label_604
	movzx	edx, byte ptr [rax]
	cmp	byte ptr [byte ptr [rdx + blanks]],  0
	jne	.label_608
.label_604:
	add	rax, r8
	cmp	rcx, rax
	cmovb	rax, rcx
.label_600:
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x408fc0

	.globl begfield
	.type begfield, @function
begfield:
	mov	rax, qword ptr [rdi]
	mov	rcx, qword ptr [rdi + 8]
	lea	rcx, [rax + rcx - 1]
	mov	r9, qword ptr [rsi]
	mov	r8, qword ptr [rsi + 8]
	mov	edx,  dword ptr [dword ptr [rip + tab]]
	cmp	edx, 0x80
	je	.label_611
	jmp	.label_618
	nop	word ptr cs:[rax + rax]
.label_619:
	dec	r9
.label_611:
	cmp	rax, rcx
	jae	.label_612
	test	r9, r9
	jne	.label_615
	jmp	.label_612
	nop	
.label_622:
	inc	rax
.label_615:
	cmp	rax, rcx
	jae	.label_616
	movzx	edx, byte ptr [rax]
	cmp	byte ptr [byte ptr [rdx + blanks]],  0
	jne	.label_622
	jmp	.label_616
	nop	word ptr cs:[rax + rax]
.label_621:
	inc	rax
.label_616:
	cmp	rax, rcx
	jae	.label_619
	movzx	edx, byte ptr [rax]
	cmp	byte ptr [byte ptr [rdx + blanks]],  0
	je	.label_621
	jmp	.label_619
	nop	word ptr cs:[rax + rax]
.label_614:
	dec	r9
.label_618:
	cmp	rax, rcx
	jae	.label_612
	test	r9, r9
	je	.label_612
	nop	dword ptr [rax]
.label_617:
	cmp	rax, rcx
	jae	.label_614
	movsx	edi, byte ptr [rax]
	inc	rax
	cmp	edi, edx
	jne	.label_617
	jmp	.label_614
.label_612:
	cmp	byte ptr [rsi + 0x30], 0
	jne	.label_613
	jmp	.label_620
	nop	dword ptr [rax]
.label_623:
	inc	rax
.label_613:
	cmp	rax, rcx
	jae	.label_620
	movzx	edx, byte ptr [rax]
	cmp	byte ptr [byte ptr [rdx + blanks]],  0
	jne	.label_623
.label_620:
	add	rax, r8
	cmp	rcx, rax
	cmovb	rax, rcx
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x409090

	.globl xstrxfrm
	.type xstrxfrm, @function
xstrxfrm:
	push	rbp
	push	r15
	push	r14
	push	rbx
	push	rax
	mov	r15, rdx
	mov	r14, rsi
	mov	rbx, rdi
	call	__errno_location
	mov	rbp, rax
	mov	dword ptr [rbp], 0
	mov	rdi, rbx
	mov	rsi, r14
	mov	rdx, r15
	call	strxfrm
	mov	ebp, dword ptr [rbp]
	test	ebp, ebp
	jne	.label_624
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_624:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.160
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, ebp
	mov	rdx, rcx
	call	error
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.161
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	call	error
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.162
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	xor	edi, edi
	mov	esi, 8
	mov	rdx, r14
	call	quotearg_n_style
	mov	rcx, rax
	mov	edi, 2
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rbx
	call	error
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x409150

	.globl open_input_files
	.type open_input_files, @function
open_input_files:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x18
	mov	rbx, rdx
	mov	r14, rsi
	mov	r13, rdi
	mov	rax, r14
	shr	rax, 0x3c
	jne	.label_636
	lea	rdi, [r14*8]
	call	xmalloc
	mov	r15, rax
	mov	qword ptr [rbx], r15
	xor	ebx, ebx
	test	r14, r14
	je	.label_625
	add	r13, 8
	xor	ebx, ebx
	nop	dword ptr [rax + rax]
.label_628:
	mov	r12, qword ptr [r13]
	test	r12, r12
	je	.label_631
	mov	al, byte ptr [r12 + 0xc]
	test	al, al
	je	.label_631
	movzx	eax, al
	cmp	eax, 1
	jne	.label_633
	mov	ebp, dword ptr [r12 + 8]
	mov	dword ptr [rsp + 0x10], ebp
	mov	rdi,  qword ptr [word ptr [rip + proctab]]
	lea	rsi, [rsp + 8]
	call	hash_delete
	test	rax, rax
	je	.label_633
	mov	byte ptr [rax + 0xc], 2
	mov	edi, ebp
	call	reap
.label_633:
	lea	rdi, [r12 + 0xd]
	xor	esi, esi
	xor	eax, eax
	call	open
	mov	ebp, eax
	test	ebp, ebp
	mov	eax, 0
	js	.label_626
	mov	esi, 9
	lea	rdi, [rsp]
	call	pipe_fork
	cmp	eax, -1
	je	.label_627
	test	eax, eax
	je	.label_629
	mov	dword ptr [r12 + 8], eax
	mov	rax,  qword ptr [word ptr [rip + proctab]]
	test	rax, rax
	jne	.label_630
	mov	edi, 0x2f
	xor	esi, esi
	mov	edx, OFFSET FLAT:proctab_hasher
	mov	ecx, OFFSET FLAT:proctab_comparator
	xor	r8d, r8d
	call	hash_initialize
	mov	qword ptr [word ptr [rip + proctab]],  rax
	test	rax, rax
	je	.label_632
.label_630:
	mov	byte ptr [r12 + 0xc], 1
	mov	rdi, rax
	mov	rsi, r12
	call	hash_insert
	test	rax, rax
	je	.label_632
	mov	edi, ebp
	call	close
	mov	edi, dword ptr [rsp + 4]
	call	close
	mov	edi, dword ptr [rsp]
	mov	esi, OFFSET FLAT:.str.52
	call	fdopen
	test	rax, rax
	jne	.label_626
	call	__errno_location
	mov	rbp, rax
	mov	r12, r14
	mov	r14, r15
	mov	r15d, dword ptr [rbp]
	mov	edi, dword ptr [rsp]
	call	close
	mov	dword ptr [rbp], r15d
	mov	r15, r14
	mov	r14, r12
	xor	eax, eax
	jmp	.label_626
	nop	word ptr cs:[rax + rax]
.label_631:
	mov	rdi, qword ptr [r13 - 8]
	mov	esi, OFFSET FLAT:.str.52
	call	stream_open
	jmp	.label_626
.label_627:
	mov	r12, r14
	mov	r14, r15
	call	__errno_location
	mov	r15, rax
	mov	eax, dword ptr [r15]
	cmp	eax, 0x18
	jne	.label_637
	mov	edi, ebp
	call	close
	mov	dword ptr [r15], 0x18
	xor	eax, eax
	mov	r15, r14
	mov	r14, r12
.label_626:
	mov	qword ptr [r15 + rbx*8], rax
	test	rax, rax
	je	.label_625
	inc	rbx
	add	r13, 0x10
	cmp	rbx, r14
	jb	.label_628
.label_625:
	mov	rax, rbx
	add	rsp, 0x18
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_629:
	mov	edi, dword ptr [rsp]
	call	close
	test	ebp, ebp
	je	.label_634
	xor	esi, esi
	mov	edi, ebp
	call	dup2
	mov	edi, ebp
	call	close
.label_634:
	mov	ebx, dword ptr [rsp + 4]
	cmp	ebx, 1
	je	.label_635
	mov	esi, 1
	mov	edi, ebx
	call	dup2
	mov	edi, ebx
	call	close
.label_635:
	mov	rdi,  qword ptr [word ptr [rip + compress_program]]
	mov	edx, OFFSET FLAT:.str.168
	xor	ecx, ecx
	xor	eax, eax
	mov	rsi, rdi
	call	execlp
	call	__errno_location
	mov	edi, dword ptr [rax]
	mov	esi, OFFSET FLAT:.str.169
	call	async_safe_die
.label_632:
	call	xalloc_die
.label_637:
	xor	edi, edi
	mov	ebp, eax
	mov	esi, OFFSET FLAT:.str.167
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	rsi,  qword ptr [word ptr [rip + compress_program]]
	mov	edi, 4
	call	quotearg_style
	mov	rcx, rax
	mov	edi, 2
	xor	eax, eax
	mov	esi, ebp
	mov	rdx, rbx
	call	error
.label_636:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4093f0

	.globl mergefps
	.type mergefps, @function
mergefps:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x118
	mov	qword ptr [rsp + 0xb8], r9
	mov	qword ptr [rsp + 0xc8], r8
	mov	qword ptr [rsp + 0xc0], rcx
	mov	r13, rdx
	mov	qword ptr [rsp + 0x80], rsi
	mov	rbx, rdi
	movabs	rax, 0x24924924924924a
	cmp	r13, rax
	jae	.label_702
	imul	rdi, r13, 0x38
	call	xmalloc
	mov	qword ptr [rsp + 0xa8], rax
	lea	rbp, [r13*8]
	mov	rdi, rbp
	call	xmalloc
	mov	qword ptr [rsp + 0xf0], rax
	mov	rdi, rbp
	call	xmalloc
	mov	qword ptr [rsp + 0xe0], rax
	mov	rdi, rbp
	call	xmalloc
	mov	qword ptr [rsp + 0x28], rax
	mov	rax,  qword ptr [word ptr [rip + keylist]]
	mov	qword ptr [rsp + 0x98], rax
	mov	qword ptr [rsp + 0xf8], 0
	test	r13, r13
	je	.label_640
	mov	qword ptr [rsp + 0xa0], rbx
	lea	rax, [rbx + 0x10]
	mov	qword ptr [rsp + 0x40], rax
	lea	rax, [rbx + 0x40]
	mov	qword ptr [rsp + 0x38], rax
	xor	ebp, ebp
.label_667:
	mov	qword ptr [rsp + 0x68], rbp
	mov	rdx, rbp
	xor	rdx, 3
	mov	rsi, -2
	sub	rsi, rbp
	imul	rcx, rbp, 0x38
	mov	qword ptr [rsp + 0x30], rcx
	mov	rax, qword ptr [rsp + 0xa8]
	lea	rdi, [rax + rcx]
	mov	qword ptr [rsp + 0xe8], rdi
	lea	rdi, [rax + rcx + 0x18]
	mov	qword ptr [rsp + 0x90], rdi
	lea	rdi, [rax + rcx + 0x20]
	mov	qword ptr [rsp + 0x60], rdi
	lea	rdi, [rax + rcx + 8]
	mov	qword ptr [rsp + 0x58], rdi
	lea	rax, [rax + rcx + 0x30]
	mov	qword ptr [rsp + 0x50], rax
	mov	rax, rbp
	shl	rax, 4
	add	rax, qword ptr [rsp + 0xa0]
	mov	qword ptr [rsp + 0x48], rax
	add	rdx, r13
	mov	qword ptr [rsp + 0x78], rdx
	add	rsi, r13
	mov	qword ptr [rsp + 0x70], rsi
	mov	al, dl
	xor	ecx, ecx
	mov	r9, r13
	nop	dword ptr [rax]
.label_655:
	mov	qword ptr [rsp + 0xd0], rcx
	mov	byte ptr [rsp + 0xd8], al
	mov	r13, r9
	and	al, 3
	movzx	r12d, al
	neg	r12
	mov	r15, qword ptr [rsp + 0x78]
	sub	r15, rcx
	mov	rax, qword ptr [rsp + 0x70]
	sub	rax, rcx
	mov	qword ptr [rsp + 0xb0], rax
	lea	rax, [r13 - 1]
	mov	qword ptr [rsp + 0x88], rax
	mov	rcx,  qword ptr [word ptr [rip + merge_buffer_size]]
	mov	rax,  qword ptr [word ptr [rip + sort_size]]
	xor	edx, edx
	div	r13
	cmp	rcx, rax
	cmova	rax, rcx
	nop	dword ptr [rax]
.label_693:
	mov	ecx, eax
	and	ecx, 0x1f
	mov	ebp, 0x20
	sub	rbp, rcx
	add	rbp, rax
	mov	rdi, rbp
	call	malloc
	test	rax, rax
	jne	.label_689
	mov	rax, rbp
	shr	rax, 1
	cmp	rbp, 0x43
	ja	.label_693
	jmp	.label_645
	nop	
.label_689:
	mov	rdi, qword ptr [rsp + 0xe8]
	mov	qword ptr [rdi], rax
	mov	rax, qword ptr [rsp + 0x90]
	mov	qword ptr [rax], rbp
	mov	eax, 0x20
	movq	xmm0, rax
	pslldq	xmm0, 8
	mov	rax, qword ptr [rsp + 0x60]
	movdqu	xmmword ptr [rax], xmm0
	mov	rax, qword ptr [rsp + 0x50]
	mov	byte ptr [rax], 0
	pxor	xmm0, xmm0
	mov	rax, qword ptr [rsp + 0x58]
	movdqu	xmmword ptr [rax], xmm0
	mov	rbx, qword ptr [rsp + 0xb8]
	mov	rbp, qword ptr [rsp + 0x68]
	mov	rsi, qword ptr [rbx + rbp*8]
	mov	r14, qword ptr [rsp + 0x48]
	mov	rdx, qword ptr [r14]
	call	fillbuf
	test	al, al
	jne	.label_654
	mov	rdi, qword ptr [rbx + rbp*8]
	mov	rsi, qword ptr [r14]
	call	xfclose
	mov	rax, qword ptr [rsp + 0x80]
	cmp	rbp, rax
	jae	.label_658
	dec	rax
	mov	qword ptr [rsp + 0x80], rax
	mov	rdi, qword ptr [r14]
	call	zaptemp
.label_658:
	mov	rax, qword ptr [rsp + 0xe8]
	mov	rdi, qword ptr [rax]
	call	free
	mov	r9, qword ptr [rsp + 0x88]
	cmp	rbp, r9
	jae	.label_664
	test	r15b, 3
	mov	rcx, qword ptr [rsp + 0x40]
	mov	rax, rbp
	mov	rsi, qword ptr [rsp + 0xb8]
	je	.label_673
	nop	dword ptr [rax]
.label_683:
	movdqu	xmm0, xmmword ptr [rcx]
	movdqu	xmmword ptr [rcx - 0x10], xmm0
	mov	rdx, qword ptr [rsi + rax*8 + 8]
	mov	qword ptr [rsi + rax*8], rdx
	inc	rax
	add	rcx, 0x10
	inc	r12
	jne	.label_683
.label_673:
	cmp	qword ptr [rsp + 0xb0], 3
	jb	.label_692
	dec	r13
	mov	rcx, rax
	shl	rcx, 4
	add	rcx, qword ptr [rsp + 0x38]
	nop	dword ptr [rax + rax]
.label_677:
	movups	xmm0, xmmword ptr [rcx - 0x30]
	movups	xmmword ptr [rcx - 0x40], xmm0
	mov	rdx, qword ptr [rsi + rax*8 + 8]
	mov	qword ptr [rsi + rax*8], rdx
	movups	xmm0, xmmword ptr [rcx - 0x20]
	movups	xmmword ptr [rcx - 0x30], xmm0
	mov	rdx, qword ptr [rsi + rax*8 + 0x10]
	mov	qword ptr [rsi + rax*8 + 8], rdx
	movups	xmm0, xmmword ptr [rcx - 0x10]
	movups	xmmword ptr [rcx - 0x20], xmm0
	mov	rdx, qword ptr [rsi + rax*8 + 0x18]
	mov	qword ptr [rsi + rax*8 + 0x10], rdx
	movdqu	xmm0, xmmword ptr [rcx]
	movdqu	xmmword ptr [rcx - 0x10], xmm0
	mov	rdx, qword ptr [rsi + rax*8 + 0x20]
	mov	qword ptr [rsi + rax*8 + 0x18], rdx
	lea	rax, [rax + 4]
	add	rcx, 0x40
	cmp	r13, rax
	jne	.label_677
.label_692:
	mov	rcx, qword ptr [rsp + 0xd0]
	inc	rcx
	mov	al, byte ptr [rsp + 0xd8]
	add	al, 3
	cmp	rbp, r9
	jb	.label_655
	jmp	.label_664
	nop	word ptr cs:[rax + rax]
.label_654:
	mov	rax, qword ptr [rsp + 0xe8]
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rsp + 0x90]
	mov	rcx, qword ptr [rcx]
	lea	rdx, [rax + rcx]
	lea	rax, [rax + rcx - 0x20]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	qword ptr [rcx + rbp*8], rax
	mov	rax, qword ptr [rsp + 0xa8]
	mov	rcx, qword ptr [rsp + 0x30]
	mov	rax, qword ptr [rax + rcx + 0x10]
	shl	rax, 5
	sub	rdx, rax
	mov	rax, qword ptr [rsp + 0xe0]
	mov	qword ptr [rax + rbp*8], rdx
	inc	rbp
	add	qword ptr [rsp + 0x40], 0x10
	cmp	rbp, r13
	mov	r9, r13
	jb	.label_667
.label_664:
	test	r9, r9
	je	.label_640
	xor	ecx, ecx
	cmp	r9, 4
	mov	rbp, qword ptr [rsp + 0x28]
	jb	.label_686
	xor	ecx, ecx
	mov	rax, r9
	and	rax, 0xfffffffffffffffc
	je	.label_686
	lea	rsi, [r9 - 4]
	mov	rdx, rsi
	shr	rdx, 2
	xor	ecx, ecx
	bt	rsi, 2
	jb	.label_704
	mov	ecx, 1
	movq	xmm0, rcx
	pslldq	xmm0, 8
	movdqu	xmmword ptr [rbp], xmm0
	movdqa	xmm0,  xmmword ptr [word ptr [rip + label_643]]
	movdqu	xmmword ptr [rbp + 0x10], xmm0
	mov	ecx, 4
.label_704:
	test	rdx, rdx
	je	.label_652
	mov	edx, 1
	movq	xmm0, rdx
	pslldq	xmm0, 8
	movdqa	xmm1,  xmmword ptr [word ptr [rip + label_643]]
	nop	word ptr cs:[rax + rax]
.label_662:
	movq	xmm2, rcx
	pshufd	xmm2, xmm2, 0x44
	movdqa	xmm3, xmm2
	paddq	xmm3, xmm0
	paddq	xmm2, xmm1
	movdqu	xmmword ptr [rbp + rcx*8], xmm3
	movdqu	xmmword ptr [rbp + rcx*8 + 0x10], xmm2
	lea	rdx, [rcx + 4]
	movq	xmm2, rdx
	pshufd	xmm2, xmm2, 0x44
	movdqa	xmm3, xmm2
	paddq	xmm3, xmm0
	paddq	xmm2, xmm1
	movdqu	xmmword ptr [rbp + rcx*8 + 0x20], xmm3
	movdqu	xmmword ptr [rbp + rcx*8 + 0x30], xmm2
	add	rcx, 8
	cmp	rcx, rax
	jne	.label_662
.label_652:
	cmp	r9, rax
	mov	rcx, rax
	je	.label_681
	nop	dword ptr [rax]
.label_686:
	mov	qword ptr [rbp + rcx*8], rcx
	inc	rcx
	cmp	r9, rcx
	jne	.label_686
.label_681:
	mov	ebx, 1
	cmp	r9, 1
	jbe	.label_695
	nop	dword ptr [rax + rax]
.label_666:
	mov	r12, r9
	mov	r15, qword ptr [rbp + rbx*8 - 8]
	mov	rax, qword ptr [rsp + 0xf0]
	mov	rdi, qword ptr [rax + r15*8]
	mov	r14, qword ptr [rbp + rbx*8]
	mov	rsi, qword ptr [rax + r14*8]
	call	compare
	test	eax, eax
	jle	.label_639
	mov	qword ptr [rbp + rbx*8 - 8], r14
	mov	qword ptr [rbp + rbx*8], r15
	xor	ebx, ebx
.label_639:
	mov	r9, r12
	inc	rbx
	cmp	rbx, r9
	jb	.label_666
.label_695:
	mov	qword ptr [rsp + 0x28], rbp
	test	r9, r9
	je	.label_640
	lea	rcx, [r9 - 1]
	mov	qword ptr [rsp + 0x30], rcx
	mov	r14, qword ptr [rsp + 0x28]
	mov	rax, r14
	add	rax, 8
	mov	qword ptr [rsp + 0x90], rax
	mov	rax, qword ptr [rsp + 0xe0]
	add	rax, 0x10
	mov	qword ptr [rsp + 0x20], rax
	mov	rax, qword ptr [rsp + 0xf0]
	add	rax, 0x10
	mov	qword ptr [rsp + 0x18], rax
	mov	rax, qword ptr [rsp + 0xa8]
	lea	rax, [rax + 0x70]
	mov	qword ptr [rsp + 0x10], rax
	mov	rax, qword ptr [rsp + 0xa0]
	lea	rax, [rax + 0x20]
	mov	qword ptr [rsp + 8], rax
	mov	rax, qword ptr [rsp + 0xb8]
	lea	rax, [rax + 0x10]
	mov	qword ptr [rsp], rax
	lea	rbx, [r9 - 5]
	xor	esi, esi
	mov	r10, rcx
	lea	rax, [r9 - 2]
	mov	qword ptr [rsp + 0x58], rax
	xor	eax, eax
	mov	qword ptr [rsp + 0xd0], rax
	xor	eax, eax
	mov	qword ptr [rsp + 0xb0], rax
	nop	word ptr cs:[rax + rax]
.label_703:
	mov	qword ptr [rsp + 0x60], r10
	mov	qword ptr [rsp + 0x78], rsi
	mov	qword ptr [rsp + 0x68], rbx
	mov	qword ptr [rsp + 0xd8], r9
	mov	r13d, ebx
	shr	r13d, 2
	inc	r13d
	and	r13d, 3
	neg	r13
	mov	qword ptr [rsp + 0x48], r13
	mov	rax, qword ptr [rsp + 0x30]
	sub	rax, rsi
	mov	qword ptr [rsp + 0x70], rax
	lea	rax, [rax - 4]
	mov	qword ptr [rsp + 0x40], rax
	shr	rax, 2
	inc	rax
	mov	qword ptr [rsp + 0x38], rax
	mov	rax, qword ptr [rsp + 0x58]
	sub	rax, rsi
	mov	qword ptr [rsp + 0x50], rax
	lea	rax, [r9 - 1]
	mov	qword ptr [rsp + 0x88], rax
	jmp	.label_698
	nop	word ptr [rax + rax]
.label_638:
	mov	rax, qword ptr [rsp + 0xe8]
	mov	qword ptr [r14 + rcx*8], rax
.label_698:
	mov	rbp, qword ptr [r14]
	mov	rax, qword ptr [rsp + 0xf0]
	mov	r13, qword ptr [rax + rbp*8]
	movzx	eax,  byte ptr [byte ptr [rip + unique]]
	and	eax, 1
	cmp	eax, 1
	jne	.label_657
	mov	rax, qword ptr [rsp + 0xd0]
	test	rax, rax
	je	.label_665
	mov	rdi, rax
	mov	rsi, r13
	call	compare
	test	eax, eax
	je	.label_669
	lea	rdi, [rsp + 0xf8]
	mov	rsi, qword ptr [rsp + 0xc0]
	mov	rdx, qword ptr [rsp + 0xc8]
	call	write_line
.label_665:
	mov	rdx, qword ptr [r13 + 8]
	mov	rax, qword ptr [rsp + 0xb0]
	cmp	rax, rdx
	jae	.label_679
	nop	dword ptr [rax + rax]
.label_688:
	test	rax, rax
	je	.label_660
	add	rax, rax
	cmp	rax, rdx
	jb	.label_688
	jmp	.label_691
	nop	
.label_657:
	mov	rdi, r13
	mov	rsi, qword ptr [rsp + 0xc0]
	mov	rdx, qword ptr [rsp + 0xc8]
	call	write_line
	jmp	.label_669
.label_679:
	mov	rdi, qword ptr [rsp + 0xf8]
	jmp	.label_701
.label_660:
	mov	rax, rdx
.label_691:
	mov	qword ptr [rsp + 0xb0], rax
	mov	rbx, rax
	mov	rdi, qword ptr [rsp + 0xf8]
	call	free
	mov	rdi, rbx
	call	xmalloc
	mov	rdi, rax
	mov	qword ptr [rsp + 0xf8], rdi
	mov	rdx, qword ptr [r13 + 8]
.label_701:
	mov	qword ptr [rsp + 0x100], rdx
	mov	rsi, qword ptr [r13]
	call	memcpy
	cmp	qword ptr [rsp + 0x98], 0
	je	.label_661
	mov	rax, qword ptr [rsp + 0xf8]
	mov	rcx, qword ptr [r13]
	mov	rdx, qword ptr [r13 + 0x10]
	sub	rdx, rcx
	add	rdx, rax
	mov	qword ptr [rsp + 0x108], rdx
	mov	rdx, qword ptr [r13 + 0x18]
	sub	rdx, rcx
	add	rdx, rax
	mov	qword ptr [rsp + 0x110], rdx
.label_661:
	lea	rax, [rsp + 0xf8]
	mov	qword ptr [rsp + 0xd0], rax
.label_669:
	mov	rax, qword ptr [rsp + 0xe0]
	cmp	qword ptr [rax + rbp*8], r13
	jae	.label_647
	add	r13, -0x20
	mov	rax, qword ptr [rsp + 0xf0]
	mov	qword ptr [rax + rbp*8], r13
	jmp	.label_672
	nop	dword ptr [rax + rax]
.label_647:
	imul	rbx, rbp, 0x38
	mov	r13, qword ptr [rsp + 0xa8]
	lea	rdi, [r13 + rbx]
	mov	rax, qword ptr [rsp + 0xb8]
	mov	rsi, qword ptr [rax + rbp*8]
	mov	rax, rbp
	shl	rax, 4
	mov	r12, qword ptr [rsp + 0xa0]
	mov	rdx, qword ptr [r12 + rax]
	call	fillbuf
	test	al, al
	je	.label_699
	mov	rax, qword ptr [r13 + rbx]
	mov	rcx, qword ptr [r13 + rbx + 0x18]
	lea	rdx, [rax + rcx]
	mov	rsi, r13
	lea	r13, [rax + rcx - 0x20]
	mov	rax, qword ptr [rsp + 0xf0]
	mov	qword ptr [rax + rbp*8], r13
	mov	rax, qword ptr [rsi + rbx + 0x10]
	shl	rax, 5
	sub	rdx, rax
	mov	rax, qword ptr [rsp + 0xe0]
	mov	qword ptr [rax + rbp*8], rdx
.label_672:
	mov	qword ptr [rsp + 0xe8], rbp
	mov	r12, qword ptr [rsp + 0xd8]
	cmp	r12, 2
	mov	ebx, 1
	mov	r15d, 1
	mov	ecx, 0
	jb	.label_638
	nop	word ptr cs:[rax + rax]
.label_674:
	mov	rbp, qword ptr [r14 + rbx*8]
	mov	rax, qword ptr [rsp + 0xf0]
	mov	rsi, qword ptr [rax + rbp*8]
	mov	rdi, r13
	call	compare
	test	eax, eax
	js	.label_694
	sete	al
	cmp	qword ptr [rsp + 0xe8], rbp
	setb	cl
	lea	rdx, [rbx + 1]
	and	cl, al
	cmove	r15, rdx
	test	cl, cl
	cmove	rbx, r12
.label_694:
	mov	r12, rbx
	lea	rbx, [r12 + r15]
	shr	rbx, 1
	cmp	r15, r12
	jb	.label_674
	mov	rax, r15
	dec	rax
	mov	ecx, 0
	je	.label_638
	lea	rcx, [r15 - 1]
	cmp	rcx, 4
	mov	esi, 0
	jb	.label_684
	mov	rdx, rcx
	and	rdx, 0xfffffffffffffffc
	mov	esi, 0
	je	.label_684
	lea	rbp, [r15 - 5]
	mov	esi, ebp
	shr	esi, 2
	inc	esi
	test	sil, 3
	mov	esi, 0
	je	.label_697
	add	r15d, -5
	shr	r15d, 2
	inc	r15d
	and	r15d, 3
	neg	r15
	xor	esi, esi
	nop	dword ptr [rax]
.label_663:
	movdqu	xmm0, xmmword ptr [r14 + rsi*8 + 8]
	movdqu	xmm1, xmmword ptr [r14 + rsi*8 + 0x18]
	movdqu	xmmword ptr [r14 + rsi*8], xmm0
	movdqu	xmmword ptr [r14 + rsi*8 + 0x10], xmm1
	add	rsi, 4
	inc	r15
	jne	.label_663
.label_697:
	cmp	rbp, 0xc
	jb	.label_651
	nop	
.label_687:
	mov	rbp, rsi
	or	rbp, 1
	movups	xmm0, xmmword ptr [r14 + rbp*8]
	movups	xmm1, xmmword ptr [r14 + rbp*8 + 0x10]
	movups	xmmword ptr [r14 + rsi*8], xmm0
	movups	xmmword ptr [r14 + rsi*8 + 0x10], xmm1
	lea	rbp, [rsi + 4]
	or	rbp, 1
	movups	xmm0, xmmword ptr [r14 + rbp*8]
	movups	xmm1, xmmword ptr [r14 + rbp*8 + 0x10]
	movups	xmmword ptr [r14 + rsi*8 + 0x20], xmm0
	movups	xmmword ptr [r14 + rsi*8 + 0x30], xmm1
	lea	rbp, [rsi + 8]
	or	rbp, 1
	movups	xmm0, xmmword ptr [r14 + rbp*8]
	movups	xmm1, xmmword ptr [r14 + rbp*8 + 0x10]
	movups	xmmword ptr [r14 + rsi*8 + 0x40], xmm0
	movups	xmmword ptr [r14 + rsi*8 + 0x50], xmm1
	lea	rbp, [rsi + 0xc]
	or	rbp, 1
	movdqu	xmm0, xmmword ptr [r14 + rbp*8]
	movdqu	xmm1, xmmword ptr [r14 + rbp*8 + 0x10]
	movdqu	xmmword ptr [r14 + rsi*8 + 0x60], xmm0
	movdqu	xmmword ptr [r14 + rsi*8 + 0x70], xmm1
	add	rsi, 0x10
	cmp	rsi, rdx
	jne	.label_687
.label_651:
	cmp	rcx, rdx
	mov	rsi, rdx
	je	.label_690
	nop	word ptr cs:[rax + rax]
.label_684:
	sub	rcx, rsi
	mov	rdx, qword ptr [rsp + 0x90]
	lea	rdx, [rdx + rsi*8]
	nop	
.label_644:
	mov	rsi, qword ptr [rdx]
	mov	qword ptr [rdx - 8], rsi
	add	rdx, 8
	dec	rcx
	jne	.label_644
.label_690:
	mov	rcx, rax
	jmp	.label_638
	nop	dword ptr [rax + rax]
.label_699:
	mov	rsi, qword ptr [rsp + 0xd8]
	cmp	rsi, 2
	jb	.label_642
	mov	rax, qword ptr [rsp + 0x70]
	test	al, 1
	jne	.label_646
	mov	eax, 1
	mov	rdx, qword ptr [rsp + 0xb8]
	mov	rcx, qword ptr [rsp + 0x78]
	jmp	.label_700
	nop	dword ptr [rax + rax]
.label_642:
	mov	rdx, qword ptr [rsp + 0xb8]
	jmp	.label_668
	nop	word ptr [rax + rax]
.label_646:
	mov	rax, qword ptr [r14 + 8]
	cmp	rax, rbp
	mov	rcx, qword ptr [rsp + 0x78]
	jbe	.label_659
	dec	rax
	mov	qword ptr [r14 + 8], rax
.label_659:
	mov	rbp, qword ptr [r14]
	mov	eax, 2
	mov	rdx, qword ptr [rsp + 0xb8]
.label_700:
	mov	qword ptr [rsp + 0x78], rcx
	cmp	qword ptr [rsp + 0x58], rcx
	je	.label_668
	nop	word ptr cs:[rax + rax]
.label_682:
	mov	rcx, qword ptr [r14 + rax*8]
	cmp	rcx, rbp
	jbe	.label_671
	dec	rcx
	mov	qword ptr [r14 + rax*8], rcx
.label_671:
	mov	rcx, qword ptr [r14 + rax*8 + 8]
	cmp	rcx, qword ptr [r14]
	jbe	.label_676
	dec	rcx
	mov	qword ptr [r14 + rax*8 + 8], rcx
.label_676:
	add	rax, 2
	mov	rbp, qword ptr [r14]
	cmp	rsi, rax
	jne	.label_682
.label_668:
	mov	qword ptr [rsp + 0xb8], rdx
	mov	rdi, qword ptr [rdx + rbp*8]
	mov	r15, rbp
	shl	r15, 4
	mov	rsi, qword ptr [r12 + r15]
	call	xfclose
	mov	rcx, qword ptr [rsp + 0x80]
	cmp	rbp, rcx
	mov	rbx, rbp
	jae	.label_696
	lea	rax, [r12 + r15]
	dec	rcx
	mov	qword ptr [rsp + 0x80], rcx
	mov	rdi, qword ptr [rax]
	call	zaptemp
.label_696:
	mov	rbp, rbx
	imul	rbx, rbp, 0x38
	mov	rdi, qword ptr [r13 + rbx]
	call	free
	mov	r9, qword ptr [rsp + 0x88]
	cmp	rbp, r9
	mov	r10, qword ptr [rsp + 0x60]
	mov	r11, qword ptr [rsp + 0x70]
	jae	.label_680
	mov	eax, r11d
	sub	eax, ebp
	test	al, 1
	mov	rax, rbp
	je	.label_649
	lea	rax, [rbp + 1]
	mov	rdx, qword ptr [rsp + 0xb8]
	mov	rcx, qword ptr [rdx + rbp*8 + 8]
	mov	qword ptr [rdx + rbp*8], rcx
	mov	rcx, rax
	shl	rcx, 4
	movups	xmm0, xmmword ptr [r12 + rcx]
	movups	xmmword ptr [r12 + r15], xmm0
	mov	rcx, qword ptr [r13 + rbx + 0x68]
	mov	qword ptr [r13 + rbx + 0x30], rcx
	movdqu	xmm0, xmmword ptr [r13 + rbx + 0x38]
	movdqu	xmm1, xmmword ptr [r13 + rbx + 0x48]
	movdqu	xmm2, xmmword ptr [r13 + rbx + 0x58]
	movdqu	xmmword ptr [r13 + rbx + 0x20], xmm2
	movdqu	xmmword ptr [r13 + rbx + 0x10], xmm1
	movdqu	xmmword ptr [r13 + rbx], xmm0
	mov	rdx, qword ptr [rsp + 0xf0]
	mov	rcx, qword ptr [rdx + rbp*8 + 8]
	mov	qword ptr [rdx + rbp*8], rcx
	mov	rdx, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rdx + rbp*8 + 8]
	mov	qword ptr [rdx + rbp*8], rcx
.label_649:
	cmp	qword ptr [rsp + 0x50], rbp
	je	.label_680
	mov	r8, r10
	sub	r8, rax
	mov	rcx, qword ptr [rsp + 0x20]
	lea	rdx, [rcx + rax*8]
	mov	rcx, qword ptr [rsp + 0x18]
	lea	rsi, [rcx + rax*8]
	imul	rdi, rax, 0x38
	add	rdi, qword ptr [rsp + 0x10]
	mov	rcx, qword ptr [rsp]
	lea	rbp, [rcx + rax*8]
	shl	rax, 4
	add	rax, qword ptr [rsp + 8]
	xor	ecx, ecx
	nop	word ptr cs:[rax + rax]
.label_656:
	mov	rbx, qword ptr [rbp + rcx*8 - 8]
	mov	qword ptr [rbp + rcx*8 - 0x10], rbx
	movups	xmm0, xmmword ptr [rax - 0x10]
	movups	xmmword ptr [rax - 0x20], xmm0
	mov	rbx, qword ptr [rdi - 8]
	mov	qword ptr [rdi - 0x40], rbx
	movups	xmm0, xmmword ptr [rdi - 0x38]
	movups	xmm1, xmmword ptr [rdi - 0x28]
	movups	xmm2, xmmword ptr [rdi - 0x18]
	movups	xmmword ptr [rdi - 0x50], xmm2
	movups	xmmword ptr [rdi - 0x60], xmm1
	movups	xmmword ptr [rdi - 0x70], xmm0
	mov	rbx, qword ptr [rsi + rcx*8 - 8]
	mov	qword ptr [rsi + rcx*8 - 0x10], rbx
	mov	rbx, qword ptr [rdx + rcx*8 - 8]
	mov	qword ptr [rdx + rcx*8 - 0x10], rbx
	mov	rbx, qword ptr [rbp + rcx*8]
	mov	qword ptr [rbp + rcx*8 - 8], rbx
	movups	xmm0, xmmword ptr [rax]
	movups	xmmword ptr [rax - 0x10], xmm0
	mov	rbx, qword ptr [rdi + 0x30]
	mov	qword ptr [rdi - 8], rbx
	movdqu	xmm0, xmmword ptr [rdi]
	movdqu	xmm1, xmmword ptr [rdi + 0x10]
	movdqu	xmm2, xmmword ptr [rdi + 0x20]
	movdqu	xmmword ptr [rdi - 0x18], xmm2
	movdqu	xmmword ptr [rdi - 0x28], xmm1
	movdqu	xmmword ptr [rdi - 0x38], xmm0
	mov	rbx, qword ptr [rsi + rcx*8]
	mov	qword ptr [rsi + rcx*8 - 8], rbx
	mov	rbx, qword ptr [rdx + rcx*8]
	mov	qword ptr [rdx + rcx*8 - 8], rbx
	add	rcx, 2
	add	rdi, 0x70
	add	rax, 0x20
	cmp	r8, rcx
	jne	.label_656
.label_680:
	test	r9, r9
	mov	rsi, qword ptr [rsp + 0x78]
	mov	rbx, qword ptr [rsp + 0x68]
	je	.label_678
	cmp	r11, 3
	mov	ecx, 0
	mov	rbp, qword ptr [rsp + 0xd8]
	jbe	.label_670
	mov	rax, r11
	and	rax, 0xfffffffffffffffc
	mov	ecx, 0
	je	.label_670
	mov	rcx, qword ptr [rsp + 0x38]
	test	cl, 3
	mov	ecx, 0
	mov	rdx, qword ptr [rsp + 0x48]
	je	.label_653
	nop	word ptr cs:[rax + rax]
.label_641:
	movdqu	xmm0, xmmword ptr [r14 + rcx*8 + 8]
	movdqu	xmm1, xmmword ptr [r14 + rcx*8 + 0x18]
	movdqu	xmmword ptr [r14 + rcx*8], xmm0
	movdqu	xmmword ptr [r14 + rcx*8 + 0x10], xmm1
	add	rcx, 4
	inc	rdx
	jne	.label_641
.label_653:
	cmp	qword ptr [rsp + 0x40], 0xc
	jb	.label_648
.label_650:
	mov	rdx, rcx
	or	rdx, 1
	movups	xmm0, xmmword ptr [r14 + rdx*8]
	movups	xmm1, xmmword ptr [r14 + rdx*8 + 0x10]
	movups	xmmword ptr [r14 + rcx*8], xmm0
	movups	xmmword ptr [r14 + rcx*8 + 0x10], xmm1
	lea	rdx, [rcx + 4]
	or	rdx, 1
	movups	xmm0, xmmword ptr [r14 + rdx*8]
	movups	xmm1, xmmword ptr [r14 + rdx*8 + 0x10]
	movups	xmmword ptr [r14 + rcx*8 + 0x20], xmm0
	movups	xmmword ptr [r14 + rcx*8 + 0x30], xmm1
	lea	rdx, [rcx + 8]
	or	rdx, 1
	movups	xmm0, xmmword ptr [r14 + rdx*8]
	movups	xmm1, xmmword ptr [r14 + rdx*8 + 0x10]
	movups	xmmword ptr [r14 + rcx*8 + 0x40], xmm0
	movups	xmmword ptr [r14 + rcx*8 + 0x50], xmm1
	lea	rdx, [rcx + 0xc]
	or	rdx, 1
	movdqu	xmm0, xmmword ptr [r14 + rdx*8]
	movdqu	xmm1, xmmword ptr [r14 + rdx*8 + 0x10]
	movdqu	xmmword ptr [r14 + rcx*8 + 0x60], xmm0
	movdqu	xmmword ptr [r14 + rcx*8 + 0x70], xmm1
	add	rcx, 0x10
	cmp	rcx, rax
	jne	.label_650
.label_648:
	cmp	r11, rax
	mov	rcx, rax
	je	.label_685
	nop	word ptr cs:[rax + rax]
.label_670:
	inc	rcx
	nop	word ptr cs:[rax + rax]
.label_675:
	mov	rax, qword ptr [r14 + rcx*8]
	mov	qword ptr [r14 + rcx*8 - 8], rax
	inc	rcx
	cmp	rbp, rcx
	jne	.label_675
.label_685:
	inc	rsi
	dec	r10
	dec	rbx
	test	r9, r9
	jne	.label_703
.label_678:
	mov	qword ptr [rsp + 0x28], r14
	cmp	qword ptr [rsp + 0xd0], 0
	je	.label_640
	test	byte ptr [byte ptr [rip + unique]],  1
	je	.label_640
	lea	rdi, [rsp + 0xf8]
	mov	rsi, qword ptr [rsp + 0xc0]
	mov	rdx, qword ptr [rsp + 0xc8]
	call	write_line
	mov	rdi, qword ptr [rsp + 0xf8]
	call	free
.label_640:
	mov	rdi, qword ptr [rsp + 0xc0]
	mov	rsi, qword ptr [rsp + 0xc8]
	call	xfclose
	mov	rdi, qword ptr [rsp + 0xb8]
	call	free
	mov	rdi, qword ptr [rsp + 0xa8]
	call	free
	mov	rdi, qword ptr [rsp + 0x28]
	call	free
	mov	rdi, qword ptr [rsp + 0xe0]
	call	free
	mov	rdi, qword ptr [rsp + 0xf0]
	call	free
	add	rsp, 0x118
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_645:
	mov	rax, qword ptr [rsp + 0xe8]
	mov	qword ptr [rax], 0
	call	xalloc_die
.label_702:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40a2d0

	.globl maybe_create_temp
	.type maybe_create_temp, @function
maybe_create_temp:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0xa8
	mov	dword ptr [rsp + 0x14], esi
	mov	qword ptr [rsp + 0x18], rdi
	mov	rax,  qword ptr [word ptr [rip + create_temp_file.temp_dir_index]]
	mov	rcx,  qword ptr [word ptr [rip + temp_dirs]]
	mov	r12, qword ptr [rcx + rax*8]
	mov	rdi, r12
	call	strlen
	mov	rbp, rax
	lea	rdi, [rbp + 0x20]
	and	rdi, 0xfffffffffffffff8
	call	xmalloc
	mov	r15, rax
	lea	rbx, [r15 + 0xd]
	mov	rdi, rbx
	mov	rsi, r12
	mov	rdx, rbp
	call	memcpy
	movabs	rax, 0x58585874726f732f
	mov	qword ptr [r15 + rbp + 0xd], rax
	mov	dword ptr [r15 + rbp + 0x15], 0x585858
	mov	qword ptr [r15], 0
	mov	rax,  qword ptr [word ptr [rip + create_temp_file.temp_dir_index]]
	inc	rax
	xor	ecx, ecx
	cmp	rax,  qword ptr [word ptr [rip + temp_dir_count]]
	je	.label_712
	mov	rcx, rax
.label_712:
	mov	qword ptr [word ptr [rip + create_temp_file.temp_dir_index]],  rcx
	lea	rdx, [rsp + 0x28]
	xor	edi, edi
	mov	esi, OFFSET FLAT:caught_signals
	call	pthread_sigmask
	test	eax, eax
	sete	byte ptr [rsp + 0x20]
	mov	esi, 0x80000
	mov	rdi, rbx
	mov	qword ptr [rsp + 8], rbx
	call	mkostemp_safer
	mov	ebp, eax
	test	ebp, ebp
	js	.label_707
	mov	rax,  qword ptr [word ptr [rip + temptail]]
	mov	qword ptr [rax], r15
	mov	qword ptr [word ptr [rip + temptail]],  r15
.label_707:
	call	__errno_location
	mov	r14, rax
	mov	r13d, dword ptr [r14]
	cmp	byte ptr [rsp + 0x20], 0
	je	.label_713
	mov	edi, 2
	xor	edx, edx
	lea	rsi, [rsp + 0x28]
	call	pthread_sigmask
.label_713:
	mov	dword ptr [r14], r13d
	test	ebp, ebp
	js	.label_716
	xor	eax, eax
	test	r15, r15
	je	.label_708
	mov	byte ptr [r15 + 0xc], 0
	cmp	qword ptr [word ptr [rip + compress_program]],  0
	je	.label_717
	lea	rdi, [rsp + 0x20]
	mov	esi, 4
	call	pipe_fork
	mov	dword ptr [r15 + 8], eax
	test	eax, eax
	jle	.label_705
	mov	edi, ebp
	call	close
	mov	edi, dword ptr [rsp + 0x20]
	call	close
	mov	ebp, dword ptr [rsp + 0x24]
	mov	rdi,  qword ptr [word ptr [rip + proctab]]
	test	rdi, rdi
	jne	.label_710
	mov	edi, 0x2f
	xor	esi, esi
	mov	edx, OFFSET FLAT:proctab_hasher
	mov	ecx, OFFSET FLAT:proctab_comparator
	xor	r8d, r8d
	call	hash_initialize
	mov	rdi, rax
	mov	qword ptr [word ptr [rip + proctab]],  rdi
	test	rdi, rdi
	je	.label_715
.label_710:
	mov	byte ptr [r15 + 0xc], 1
	mov	rsi, r15
	call	hash_insert
	test	rax, rax
	jne	.label_717
	call	xalloc_die
.label_716:
	cmp	r13d, 0x18
	jne	.label_718
	mov	eax, dword ptr [rsp + 0x14]
	test	al, al
	je	.label_718
	mov	rdi, r15
	call	free
	xor	eax, eax
	jmp	.label_708
.label_705:
	je	.label_706
.label_717:
	mov	esi, OFFSET FLAT:.str.166
	mov	edi, ebp
	call	fdopen
	mov	rcx, qword ptr [rsp + 0x18]
	mov	qword ptr [rcx], rax
	test	rax, rax
	mov	rax, r15
	je	.label_709
.label_708:
	add	rsp, 0xa8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_709:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.176
	mov	edx, 5
	call	dcgettext
	mov	rdi, rax
	mov	rsi, qword ptr [rsp + 8]
	call	sort_die
.label_718:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.177
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	edi, 4
	mov	rsi, r12
	call	quotearg_style
	mov	rcx, rax
	mov	edi, 2
	xor	eax, eax
	mov	esi, r13d
	mov	rdx, rbx
	call	error
.label_706:
	mov	edi, dword ptr [rsp + 0x24]
	call	close
	cmp	ebp, 1
	je	.label_711
	mov	esi, 1
	mov	edi, ebp
	call	dup2
	mov	edi, ebp
	call	close
.label_711:
	mov	ebx, dword ptr [rsp + 0x20]
	test	ebx, ebx
	je	.label_714
	xor	esi, esi
	mov	edi, ebx
	call	dup2
	mov	edi, ebx
	call	close
.label_714:
	mov	rdi,  qword ptr [word ptr [rip + compress_program]]
	xor	edx, edx
	xor	eax, eax
	mov	rsi, rdi
	call	execlp
	mov	edi, dword ptr [r14]
	mov	esi, OFFSET FLAT:.str.175
	call	async_safe_die
.label_715:
	call	xalloc_die
	nop	
	.section	.text
	.align	16
	#Procedure 0x40a570

	.globl pipe_fork
	.type pipe_fork, @function
pipe_fork:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x98
	mov	r13, rsi
	mov	rbx, rdi
	mov	esi, 0x80000
	call	rpl_pipe2
	mov	ebp, 0xffffffff
	test	eax, eax
	js	.label_719
	mov	eax,  dword ptr [dword ptr [rip + nmerge]]
	inc	eax
	cmp	eax,  dword ptr [dword ptr [rip + nprocs]]
	jae	.label_723
	mov	edi, 0xffffffff
	call	reap
	cmp	dword ptr [dword ptr [rip + nprocs]],  0
	jle	.label_723
	nop	word ptr cs:[rax + rax]
.label_724:
	xor	edi, edi
	call	reap
	test	eax, eax
	je	.label_723
	mov	eax,  dword ptr [dword ptr [rip + nprocs]]
	test	eax, eax
	jg	.label_724
.label_723:
	test	r13, r13
	je	.label_721
	mov	qword ptr [rsp], rbx
	lea	r15, [rsp + 0x18]
	movsd	xmm0,  qword ptr [word ptr [rip + label_727]]
	movsd	qword ptr [rsp + 8], xmm0
	call	__errno_location
	mov	r12, rax
	nop	dword ptr [rax]
.label_728:
	xor	edi, edi
	mov	esi, OFFSET FLAT:caught_signals
	mov	rdx, r15
	call	pthread_sigmask
	test	eax, eax
	sete	byte ptr [rsp + 0x10]
	mov	r14,  qword ptr [word ptr [rip + temphead]]
	mov	qword ptr [word ptr [rip + temphead]],  0
	call	fork
	mov	ebp, eax
	mov	ebx, dword ptr [r12]
	test	ebp, ebp
	je	.label_729
	mov	qword ptr [word ptr [rip + temphead]],  r14
.label_729:
	cmp	byte ptr [rsp + 0x10], 0
	je	.label_722
	mov	edi, 2
	xor	edx, edx
	mov	rsi, r15
	call	pthread_sigmask
.label_722:
	mov	dword ptr [r12], ebx
	test	ebp, ebp
	jns	.label_726
	cmp	ebx, 0xb
	jne	.label_726
	dec	r13
	movsd	xmm0, qword ptr [rsp + 8]
	call	xnanosleep
	cmp	dword ptr [dword ptr [rip + nprocs]],  0
	jle	.label_720
	nop	dword ptr [rax + rax]
.label_725:
	xor	edi, edi
	call	reap
	test	eax, eax
	je	.label_720
	mov	eax,  dword ptr [dword ptr [rip + nprocs]]
	test	eax, eax
	jg	.label_725
.label_720:
	movsd	xmm0, qword ptr [rsp + 8]
	addsd	xmm0, xmm0
	movsd	qword ptr [rsp + 8], xmm0
	test	r13, r13
	jne	.label_728
.label_726:
	test	ebp, ebp
	js	.label_730
	je	.label_721
	inc	dword ptr [dword ptr [rip + nprocs]]
	jmp	.label_719
.label_721:
	xor	ebp, ebp
	xor	edi, edi
	call	close
	mov	edi, 1
	call	close
	jmp	.label_719
.label_730:
	call	__errno_location
	mov	r15, rax
	mov	r14d, dword ptr [r15]
	mov	rbx, qword ptr [rsp]
	mov	edi, dword ptr [rbx]
	call	close
	mov	edi, dword ptr [rbx + 4]
	call	close
	mov	dword ptr [r15], r14d
.label_719:
	mov	eax, ebp
	add	rsp, 0x98
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
	#Procedure 0x40a720

	.globl async_safe_die
	.type async_safe_die, @function
async_safe_die:
	push	rbp
	push	rbx
	sub	rsp, 0x18
	mov	rbx, rsi
	mov	ebp, edi
	mov	rdi, rbx
	call	strlen
	mov	edi, 2
	mov	rsi, rbx
	mov	rdx, rax
	call	write
	test	ebp, ebp
	je	.label_731
	lea	rsi, [rsp + 0xc]
	mov	edi, ebp
	call	inttostr
	mov	rbx, rax
	mov	edi, 2
	mov	esi, OFFSET FLAT:.str.172
	mov	edx, 8
	call	write
	mov	rdi, rbx
	call	strlen
	mov	edi, 2
	mov	rsi, rbx
	mov	rdx, rax
	call	write
.label_731:
	mov	edi, 2
	mov	esi, OFFSET FLAT:.str.173
	mov	edx, 1
	call	write
	mov	edi, 2
	call	_exit
	.section	.text
	.align	16
	#Procedure 0x40a7a0

	.globl reap
	.type reap, @function
reap:
	push	rbp
	push	rbx
	sub	rsp, 0x18
	mov	ebp, edi
	cmp	ebp, 1
	sbb	edi, edi
	or	edi, ebp
	test	ebp, ebp
	sete	al
	movzx	edx, al
	lea	rsi, [rsp + 4]
	call	waitpid
	mov	ebx, eax
	test	ebx, ebx
	js	.label_732
	jle	.label_733
	test	ebp, ebp
	jg	.label_734
	mov	dword ptr [rsp + 0x10], ebx
	mov	rdi,  qword ptr [word ptr [rip + proctab]]
	lea	rsi, [rsp + 8]
	call	hash_delete
	test	rax, rax
	je	.label_733
	mov	byte ptr [rax + 0xc], 2
.label_734:
	movzx	eax, word ptr [rsp + 4]
	test	ax, 0xff7f
	jne	.label_735
	dec	dword ptr [dword ptr [rip + nprocs]]
.label_733:
	mov	eax, ebx
	add	rsp, 0x18
	pop	rbx
	pop	rbp
	ret	
.label_732:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.170
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	mov	rsi,  qword ptr [word ptr [rip + compress_program]]
	mov	edi, 4
	call	quotearg_style
	mov	rcx, rax
	mov	edi, 2
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, rbp
	call	error
.label_735:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.171
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	rsi,  qword ptr [word ptr [rip + compress_program]]
	mov	edi, 4
	call	quotearg_style
	mov	rcx, rax
	mov	edi, 2
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rbx
	call	error
	nop	
	.section	.text
	.align	16
	#Procedure 0x40a880

	.globl proctab_hasher
	.type proctab_hasher, @function
proctab_hasher:
	movsxd	rax, dword ptr [rdi + 8]
	xor	edx, edx
	div	rsi
	mov	rax, rdx
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x40a890

	.globl proctab_comparator
	.type proctab_comparator, @function
proctab_comparator:
	mov	eax, dword ptr [rdi + 8]
	cmp	eax, dword ptr [rsi + 8]
	sete	al
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40a8a0

	.globl zaptemp
	.type zaptemp, @function
zaptemp:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0xa8
	mov	r14, rdi
	mov	ebx, OFFSET FLAT:temphead
	nop	dword ptr [rax]
.label_736:
	mov	rbp, rbx
	mov	rbx, qword ptr [rbp]
	lea	rax, [rbx + 0xd]
	cmp	rax, r14
	jne	.label_736
	movzx	eax, byte ptr [rbx + 0xc]
	cmp	eax, 1
	jne	.label_737
	mov	r15d, dword ptr [rbx + 8]
	mov	dword ptr [rsp + 0xa0], r15d
	mov	rdi,  qword ptr [word ptr [rip + proctab]]
	lea	rsi, [rsp + 0x98]
	call	hash_delete
	test	rax, rax
	je	.label_737
	mov	byte ptr [rax + 0xc], 2
	mov	edi, r15d
	call	reap
.label_737:
	mov	r12, qword ptr [rbx]
	lea	r15, [rsp + 0x18]
	xor	edi, edi
	mov	esi, OFFSET FLAT:caught_signals
	mov	rdx, r15
	call	pthread_sigmask
	test	eax, eax
	sete	byte ptr [rsp + 0x10]
	mov	rdi, r14
	call	unlink
	mov	r13d, eax
	call	__errno_location
	mov	eax, dword ptr [rax]
	mov	dword ptr [rsp + 0xc], eax
	mov	qword ptr [rbp], r12
	cmp	byte ptr [rsp + 0x10], 0
	je	.label_740
	mov	edi, 2
	xor	edx, edx
	mov	rsi, r15
	call	pthread_sigmask
.label_740:
	test	r13d, r13d
	je	.label_738
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.174
	mov	edx, 5
	call	dcgettext
	mov	r15, rax
	xor	edi, edi
	mov	esi, 3
	mov	rdx, r14
	call	quotearg_n_style_colon
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, dword ptr [rsp + 0xc]
	mov	rdx, r15
	call	error
.label_738:
	test	r12, r12
	jne	.label_739
	mov	qword ptr [word ptr [rip + temptail]],  rbp
.label_739:
	mov	rdi, rbx
	call	free
	add	rsp, 0xa8
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
	#Procedure 0x40a9c0

	.globl sortlines
	.type sortlines, @function
sortlines:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0xb8
	mov	qword ptr [rsp + 0x70], r9
	mov	qword ptr [rsp + 0x20], r8
	mov	r14, rcx
	mov	qword ptr [rsp + 0x18], rdx
	mov	r12, rsi
	mov	rbx, rdi
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	rbp, qword ptr [r14 + 0x28]
	mov	r15, qword ptr [r14 + 0x30]
	mov	r13, r12
	shr	r13, 1
	mov	qword ptr [rsp + 0x78], rbx
	mov	qword ptr [rsp + 0x80], r13
	mov	qword ptr [rsp + 0x88], rdx
	mov	rax, qword ptr [r14 + 0x40]
	mov	qword ptr [rsp + 0x90], rax
	mov	qword ptr [rsp + 0x98], r8
	mov	qword ptr [rsp + 0xa0], r9
	mov	qword ptr [rsp + 0xa8], rcx
	cmp	r12, 2
	jb	.label_763
	lea	rax, [r15 + rbp]
	cmp	rax, 0x20000
	jb	.label_763
	lea	rdi, [rsp + 0xb0]
	lea	rcx, [rsp + 0x78]
	xor	esi, esi
	mov	edx, OFFSET FLAT:sortlines_thread
	call	pthread_create
	test	eax, eax
	mov	rbp, qword ptr [r14 + 0x28]
	je	.label_772
	mov	r15, qword ptr [r14 + 0x30]
.label_763:
	mov	rax, qword ptr [rsp + 0x18]
	shl	rax, 5
	mov	r12, rbx
	sub	r12, rax
	cmp	r15, 2
	jb	.label_806
	mov	rax, rbp
	shl	rax, 5
	mov	rdi, rbx
	sub	rdi, rax
	mov	rax, rbp
	shl	rax, 4
	and	rax, 0xffffffffffffffe0
	mov	rdx, r12
	sub	rdx, rax
	xor	ecx, ecx
	mov	rsi, r15
	call	sequential_sort
.label_806:
	cmp	rbp, 2
	jb	.label_788
	xor	ecx, ecx
	mov	rdi, rbx
	mov	rsi, rbp
	mov	rdx, r12
	call	sequential_sort
.label_788:
	mov	qword ptr [r14], rbx
	shl	rbp, 5
	sub	rbx, rbp
	mov	qword ptr [r14 + 8], rbx
	mov	qword ptr [r14 + 0x10], rbx
	shl	r15, 5
	sub	rbx, r15
	mov	qword ptr [r14 + 0x18], rbx
	mov	rbx, qword ptr [rsp + 0x20]
	lea	r15, [rbx + 8]
	mov	qword ptr [rsp + 0x10], r15
	mov	rdi, r15
	call	pthread_mutex_lock
	mov	rdi, qword ptr [rbx]
	mov	rsi, r14
	call	heap_insert
	mov	byte ptr [r14 + 0x54], 1
	lea	r13, [rbx + 0x30]
	mov	qword ptr [rsp + 8], r13
	mov	rdi, r13
	call	pthread_cond_signal
	mov	rdi, r15
	jmp	.label_750
	nop	
.label_749:
	mov	rdi, rbp
.label_750:
	call	pthread_mutex_unlock
	mov	rdi, r15
	call	pthread_mutex_lock
	jmp	.label_758
	nop	word ptr cs:[rax + rax]
.label_768:
	mov	rdi, r13
	mov	rsi, r15
	call	pthread_cond_wait
.label_758:
	mov	rdi, qword ptr [rbx]
	call	heap_remove_top
	mov	r12, rax
	test	r12, r12
	je	.label_768
	mov	rdi, r15
	call	pthread_mutex_unlock
	lea	rbp, [r12 + 0x58]
	mov	rdi, rbp
	call	pthread_mutex_lock
	mov	byte ptr [r12 + 0x54], 0
	mov	eax, dword ptr [r12 + 0x50]
	test	eax, eax
	je	.label_793
	mov	rdi, qword ptr [r12]
	mov	rsi, qword ptr [r12 + 8]
	lea	ecx, [rax + rax + 2]
	mov	rdx, qword ptr [rsp + 0x18]
	shr	rdx, cl
	lea	r14, [rdx + 1]
	cmp	eax, 1
	jbe	.label_781
	mov	rcx, qword ptr [r12 + 0x10]
	mov	qword ptr [rsp + 0x60], rcx
	mov	rax, qword ptr [r12 + 0x20]
	mov	qword ptr [rsp + 0x28], rax
	mov	rax, qword ptr [rax]
	cmp	rdi, rcx
	je	.label_786
	mov	qword ptr [rsp + 0x30], rbp
	mov	rcx, qword ptr [r12 + 0x18]
	mov	qword ptr [rsp + 0x38], rcx
	cmp	rsi, rcx
	mov	qword ptr [rsp + 0x68], rsi
	mov	qword ptr [rsp + 0x58], rdi
	mov	rcx, rsi
	mov	qword ptr [rsp + 0x48], rsi
	mov	r15, rdi
	mov	rbp, rdi
	mov	qword ptr [rsp + 0x40], rdi
	je	.label_795
	nop	word ptr [rax + rax]
.label_779:
	mov	r13, rax
	mov	r14, rdx
	cmp	r14, -1
	je	.label_741
	lea	rbp, [r15 - 0x20]
	lea	rbx, [rcx - 0x20]
	mov	rdi, rbp
	mov	rsi, rbx
	mov	qword ptr [rsp + 0x50], rcx
	call	compare
	test	eax, eax
	jle	.label_805
	mov	qword ptr [r12 + 8], rbx
	movups	xmm0, xmmword ptr [rbx]
	movups	xmm1, xmmword ptr [rbx + 0x10]
	movups	xmmword ptr [r13 - 0x10], xmm1
	movups	xmmword ptr [r13 - 0x20], xmm0
	mov	qword ptr [rsp + 0x68], rbx
	mov	rcx, rbx
	jmp	.label_756
	nop	dword ptr [rax]
.label_805:
	mov	qword ptr [r12], rbp
	movups	xmm0, xmmword ptr [rbp]
	movups	xmm1, xmmword ptr [rbp + 0x10]
	movups	xmmword ptr [r13 - 0x10], xmm1
	movups	xmmword ptr [r13 - 0x20], xmm0
	mov	qword ptr [rsp + 0x58], rbp
	mov	r15, rbp
	mov	rcx, qword ptr [rsp + 0x50]
.label_756:
	cmp	r15, qword ptr [rsp + 0x60]
	je	.label_777
	lea	rax, [r13 - 0x20]
	lea	rdx, [r14 - 1]
	cmp	rcx, qword ptr [rsp + 0x38]
	jne	.label_779
	mov	rax, r15
	jmp	.label_773
	nop	dword ptr [rax]
.label_781:
	mov	r13, qword ptr [r12 + 0x10]
	cmp	rdi, r13
	je	.label_785
	mov	qword ptr [rsp + 0x60], r13
	mov	qword ptr [rsp + 0x30], rbp
	mov	rcx, qword ptr [r12 + 0x18]
	mov	qword ptr [rsp + 0x50], rcx
	mov	rbx, r12
	mov	qword ptr [rsp + 0x68], rsi
	mov	qword ptr [rsp + 0x58], rdi
	mov	qword ptr [rsp + 0x28], rdi
	mov	qword ptr [rsp + 0x38], rsi
	mov	rbp, rsi
	mov	qword ptr [rsp + 0x48], rsi
	mov	r12, rdi
	mov	qword ptr [rsp + 0x40], rdi
	nop	dword ptr [rax]
.label_807:
	mov	r15, r14
	cmp	rbp, rcx
	je	.label_782
	test	r15, r15
	je	.label_808
	lea	r13, [r12 - 0x20]
	mov	r14, rbp
	lea	rbp, [r14 - 0x20]
	mov	rdi, r13
	mov	rsi, rbp
	call	compare
	test	eax, eax
	jle	.label_751
	mov	qword ptr [rbx + 8], rbp
	movzx	eax,  byte ptr [byte ptr [rip + unique]]
	and	eax, 1
	cmp	eax, 1
	jne	.label_752
	cmp	qword ptr [word ptr [rip + saved_line]],  0
	je	.label_759
	mov	esi, OFFSET FLAT:saved_line
	mov	rdi, rbp
	call	compare
	test	eax, eax
	je	.label_790
.label_759:
	movups	xmm0, xmmword ptr [rbp]
	movups	xmm1, xmmword ptr [rbp + 0x10]
	movups	xmmword ptr [word ptr [rip + label_13]],  xmm1
	movups	xmmword ptr [word ptr [rip + saved_line]],  xmm0
.label_752:
	mov	rdi, rbp
	mov	rsi, qword ptr [rsp + 0x70]
	mov	rdx, qword ptr [rsp + 0xf0]
	call	write_line
.label_790:
	mov	qword ptr [rsp + 0x68], rbp
	mov	qword ptr [rsp + 0x38], rbp
	mov	r13, r12
	jmp	.label_778
	nop	dword ptr [rax + rax]
.label_751:
	mov	qword ptr [rbx], r13
	movzx	eax,  byte ptr [byte ptr [rip + unique]]
	and	eax, 1
	cmp	eax, 1
	mov	rbp, r14
	jne	.label_771
	cmp	qword ptr [word ptr [rip + saved_line]],  0
	je	.label_801
	mov	esi, OFFSET FLAT:saved_line
	mov	rdi, r13
	call	compare
	test	eax, eax
	je	.label_792
.label_801:
	movups	xmm0, xmmword ptr [r13]
	movups	xmm1, xmmword ptr [r13 + 0x10]
	movups	xmmword ptr [word ptr [rip + label_13]],  xmm1
	movups	xmmword ptr [word ptr [rip + saved_line]],  xmm0
.label_771:
	mov	rdi, r13
	mov	rsi, qword ptr [rsp + 0x70]
	mov	rdx, qword ptr [rsp + 0xf0]
	call	write_line
.label_792:
	mov	qword ptr [rsp + 0x58], r13
	mov	qword ptr [rsp + 0x28], r13
.label_778:
	mov	rcx, qword ptr [rsp + 0x50]
	lea	r14, [r15 - 1]
	cmp	r13, qword ptr [rsp + 0x60]
	mov	r12, r13
	jne	.label_807
	mov	r13, qword ptr [rsp + 0x60]
	mov	r12, r13
	mov	rsi, qword ptr [rsp + 0x48]
	mov	rdi, qword ptr [rsp + 0x40]
	jmp	.label_747
.label_786:
	mov	qword ptr [rsp + 0x30], rbp
	mov	qword ptr [rsp + 0x68], rsi
	mov	qword ptr [rsp + 0x58], rdi
	mov	qword ptr [rsp + 0x60], rdi
	mov	r15, rdi
	mov	rcx, rsi
	mov	rbp, rdi
	jmp	.label_753
.label_785:
	mov	rbx, r12
	mov	qword ptr [rsp + 0x30], rbp
	mov	qword ptr [rsp + 0x68], rsi
	mov	qword ptr [rsp + 0x58], rdi
	mov	r12, rdi
	mov	rcx, rsi
	mov	qword ptr [rsp + 0x28], rdi
	mov	rdx, rsi
	jmp	.label_764
.label_782:
	mov	r14, r15
	mov	rsi, qword ptr [rsp + 0x48]
	mov	rdi, qword ptr [rsp + 0x40]
	mov	r13, qword ptr [rsp + 0x60]
	mov	rdx, qword ptr [rsp + 0x38]
	jmp	.label_764
.label_808:
	mov	rsi, qword ptr [rsp + 0x48]
	mov	rdi, qword ptr [rsp + 0x40]
	mov	r13, qword ptr [rsp + 0x60]
.label_747:
	mov	rdx, qword ptr [rsp + 0x38]
	dec	r15
	mov	rcx, rbp
	mov	r14, r15
.label_764:
	mov	rax, rsi
	sub	rax, rdx
	sar	rax, 5
	mov	r15, qword ptr [rbx + 0x30]
	cmp	r15, rax
	jne	.label_784
	mov	qword ptr [rsp + 0x50], rax
	mov	qword ptr [rsp + 0x60], rbx
	cmp	r12, r13
	je	.label_789
	test	r14, r14
	je	.label_789
	mov	qword ptr [rsp + 0x40], rdi
	mov	qword ptr [rsp + 0x48], rsi
	add	r12, -0x20
	mov	ebp, 1
	sub	rbp, r14
	nop	word ptr cs:[rax + rax]
.label_796:
	mov	rbx, r12
	movzx	eax,  byte ptr [byte ptr [rip + unique]]
	and	eax, 1
	cmp	eax, 1
	jne	.label_804
	cmp	qword ptr [word ptr [rip + saved_line]],  0
	je	.label_742
	mov	esi, OFFSET FLAT:saved_line
	mov	rdi, rbx
	call	compare
	test	eax, eax
	je	.label_774
.label_742:
	movups	xmm0, xmmword ptr [rbx]
	movups	xmm1, xmmword ptr [rbx + 0x10]
	movups	xmmword ptr [word ptr [rip + label_13]],  xmm1
	movups	xmmword ptr [word ptr [rip + saved_line]],  xmm0
.label_804:
	mov	rdi, rbx
	mov	rsi, qword ptr [rsp + 0x70]
	mov	rdx, qword ptr [rsp + 0xf0]
	call	write_line
.label_774:
	cmp	r13, rbx
	je	.label_798
	lea	r12, [rbx - 0x20]
	test	rbp, rbp
	lea	rbp, [rbp + 1]
	jne	.label_796
.label_798:
	mov	r12, qword ptr [rsp + 0x60]
	mov	qword ptr [r12], rbx
	mov	r15, qword ptr [rsp + 0x10]
	mov	r13, qword ptr [rsp + 8]
	mov	rbp, qword ptr [rsp + 0x68]
	jmp	.label_769
	nop	word ptr cs:[rax + rax]
.label_784:
	mov	rax, rdi
	sub	rax, qword ptr [rsp + 0x28]
	sar	rax, 5
	cmp	qword ptr [rbx + 0x28], rax
	mov	r12, rbx
	jne	.label_780
	test	r14, r14
	je	.label_780
	mov	r13, qword ptr [r12 + 0x18]
	cmp	rcx, r13
	je	.label_780
	mov	qword ptr [rsp + 0x40], rdi
	mov	qword ptr [rsp + 0x48], rsi
	add	rcx, -0x20
	mov	ebx, 1
	sub	rbx, r14
	nop	word ptr cs:[rax + rax]
.label_757:
	mov	rbp, rcx
	movzx	eax,  byte ptr [byte ptr [rip + unique]]
	and	eax, 1
	cmp	eax, 1
	jne	.label_803
	cmp	qword ptr [word ptr [rip + saved_line]],  0
	je	.label_802
	mov	esi, OFFSET FLAT:saved_line
	mov	rdi, rbp
	call	compare
	test	eax, eax
	je	.label_800
.label_802:
	movups	xmm0, xmmword ptr [rbp]
	movups	xmm1, xmmword ptr [rbp + 0x10]
	movups	xmmword ptr [word ptr [rip + label_13]],  xmm1
	movups	xmmword ptr [word ptr [rip + saved_line]],  xmm0
.label_803:
	mov	rdi, rbp
	mov	rsi, qword ptr [rsp + 0x70]
	mov	rdx, qword ptr [rsp + 0xf0]
	call	write_line
.label_800:
	cmp	r13, rbp
	je	.label_760
	lea	rcx, [rbp - 0x20]
	test	rbx, rbx
	lea	rbx, [rbx + 1]
	jne	.label_757
.label_760:
	mov	qword ptr [r12 + 8], rbp
	mov	r8, r15
	mov	r15, qword ptr [rsp + 0x10]
	mov	r13, qword ptr [rsp + 8]
	mov	rbx, qword ptr [rsp + 0x58]
	jmp	.label_762
.label_780:
	mov	qword ptr [rsp + 0x40], rdi
	mov	qword ptr [rsp + 0x48], rsi
	mov	r8, r15
	mov	r15, qword ptr [rsp + 0x10]
	mov	r13, qword ptr [rsp + 8]
	mov	rbp, qword ptr [rsp + 0x68]
	mov	rbx, qword ptr [rsp + 0x58]
	jmp	.label_762
.label_789:
	mov	qword ptr [rsp + 0x40], rdi
	mov	qword ptr [rsp + 0x48], rsi
	mov	r15, qword ptr [rsp + 0x10]
	mov	r13, qword ptr [rsp + 8]
	mov	rbp, qword ptr [rsp + 0x68]
	mov	rbx, qword ptr [rsp + 0x58]
	mov	r12, qword ptr [rsp + 0x60]
.label_769:
	mov	r8, qword ptr [rsp + 0x50]
	jmp	.label_762
.label_741:
	mov	rbp, r15
	jmp	.label_787
.label_777:
	mov	rax, qword ptr [rsp + 0x60]
.label_773:
	mov	rbp, r15
	add	r13, -0x20
	mov	r15, rax
.label_787:
	mov	rax, r13
.label_795:
	mov	rsi, qword ptr [rsp + 0x48]
	mov	rdi, qword ptr [rsp + 0x40]
.label_753:
	mov	rdx, rsi
	sub	rdx, rcx
	sar	rdx, 5
	mov	r8, qword ptr [r12 + 0x30]
	cmp	r8, rdx
	jne	.label_797
	cmp	r15, qword ptr [rsp + 0x60]
	je	.label_766
	test	r14, r14
	je	.label_766
	mov	qword ptr [rsp + 0x40], rdi
	mov	qword ptr [rsp + 0x48], rsi
	mov	rcx, qword ptr [r12 + 0x10]
	add	r15, -0x20
	mov	edx, 1
	sub	rdx, r14
	nop	dword ptr [rax]
.label_755:
	mov	rbx, r15
	movups	xmm0, xmmword ptr [rbx]
	movups	xmm1, xmmword ptr [rbx + 0x10]
	movups	xmmword ptr [rax - 0x10], xmm1
	movups	xmmword ptr [rax - 0x20], xmm0
	lea	rax, [rax - 0x20]
	cmp	rcx, rbx
	je	.label_775
	lea	r15, [rbx - 0x20]
	test	rdx, rdx
	lea	rdx, [rdx + 1]
	jne	.label_755
.label_775:
	mov	qword ptr [r12], rbx
	mov	r15, qword ptr [rsp + 0x10]
	mov	r13, qword ptr [rsp + 8]
	mov	rbp, qword ptr [rsp + 0x68]
	jmp	.label_761
.label_797:
	mov	rdx, rdi
	sub	rdx, rbp
	sar	rdx, 5
	cmp	qword ptr [r12 + 0x28], rdx
	jne	.label_766
	test	r14, r14
	je	.label_766
	mov	rbx, qword ptr [r12 + 0x18]
	cmp	rcx, rbx
	je	.label_766
	mov	qword ptr [rsp + 0x40], rdi
	mov	qword ptr [rsp + 0x48], rsi
	add	rcx, -0x20
	mov	edx, 1
	sub	rdx, r14
	nop	word ptr cs:[rax + rax]
.label_745:
	mov	rbp, rcx
	movups	xmm0, xmmword ptr [rbp]
	movups	xmm1, xmmword ptr [rbp + 0x10]
	movups	xmmword ptr [rax - 0x10], xmm1
	movups	xmmword ptr [rax - 0x20], xmm0
	lea	rax, [rax - 0x20]
	cmp	rbx, rbp
	je	.label_776
	lea	rcx, [rbp - 0x20]
	test	rdx, rdx
	lea	rdx, [rdx + 1]
	jne	.label_745
.label_776:
	mov	qword ptr [r12 + 8], rbp
	mov	r15, qword ptr [rsp + 0x10]
	mov	r13, qword ptr [rsp + 8]
	jmp	.label_791
	nop	word ptr [rax + rax]
.label_766:
	mov	qword ptr [rsp + 0x40], rdi
	mov	qword ptr [rsp + 0x48], rsi
	mov	r15, qword ptr [rsp + 0x10]
	mov	r13, qword ptr [rsp + 8]
	mov	rbp, qword ptr [rsp + 0x68]
.label_791:
	mov	rbx, qword ptr [rsp + 0x58]
.label_761:
	mov	rcx, qword ptr [rsp + 0x28]
	mov	qword ptr [rcx], rax
.label_762:
	mov	rcx, qword ptr [rsp + 0x40]
	sub	rcx, rbx
	sar	rcx, 5
	mov	rax, qword ptr [rsp + 0x48]
	sub	rax, rbp
	sar	rax, 5
	sub	qword ptr [r12 + 0x28], rcx
	sub	r8, rax
	mov	qword ptr [r12 + 0x30], r8
	cmp	byte ptr [r12 + 0x54], 0
	jne	.label_767
	mov	rcx, qword ptr [r12]
	mov	rax, qword ptr [r12 + 8]
	cmp	rcx, qword ptr [r12 + 0x10]
	mov	rcx, qword ptr [r12 + 0x18]
	jne	.label_799
	cmp	rax, rcx
	je	.label_767
	cmp	qword ptr [r12 + 0x28], 0
	jne	.label_767
	jmp	.label_765
.label_799:
	cmp	rax, rcx
	jne	.label_765
	cmp	qword ptr [r12 + 0x30], 0
	jne	.label_767
.label_765:
	mov	rdi, r15
	call	pthread_mutex_lock
	mov	rax, qword ptr [rsp + 0x20]
	mov	rdi, qword ptr [rax]
	mov	rsi, r12
	call	heap_insert
	mov	byte ptr [r12 + 0x54], 1
	mov	rdi, r13
	call	pthread_cond_signal
	mov	rdi, r15
	call	pthread_mutex_unlock
	nop	word ptr cs:[rax + rax]
.label_767:
	cmp	dword ptr [r12 + 0x50], 2
	mov	rbp, qword ptr [rsp + 0x30]
	jb	.label_783
	mov	rdi, qword ptr [r12 + 0x38]
	add	rdi, 0x58
	call	pthread_mutex_lock
	mov	r14, qword ptr [r12 + 0x38]
	cmp	byte ptr [r14 + 0x54], 0
	je	.label_743
	mov	rbx, qword ptr [rsp + 0x20]
	jmp	.label_744
	nop	word ptr cs:[rax + rax]
.label_783:
	mov	rax, qword ptr [r12 + 0x28]
	add	rax, qword ptr [r12 + 0x30]
	mov	rbx, qword ptr [rsp + 0x20]
	jne	.label_749
	mov	r14, qword ptr [r12 + 0x38]
	mov	rdi, r15
	call	pthread_mutex_lock
	mov	rdi, qword ptr [rbx]
	mov	rsi, r14
	call	heap_insert
	mov	byte ptr [r14 + 0x54], 1
	mov	rdi, r13
	call	pthread_cond_signal
	mov	rdi, r15
	jmp	.label_746
.label_743:
	mov	rcx, qword ptr [r14]
	mov	rax, qword ptr [r14 + 8]
	cmp	rcx, qword ptr [r14 + 0x10]
	mov	rcx, qword ptr [r14 + 0x18]
	jne	.label_748
	cmp	rax, rcx
	je	.label_770
	cmp	qword ptr [r14 + 0x28], 0
	mov	rbx, qword ptr [rsp + 0x20]
	jne	.label_744
	jmp	.label_754
.label_748:
	cmp	rax, rcx
	mov	rbx, qword ptr [rsp + 0x20]
	jne	.label_754
	cmp	qword ptr [r14 + 0x30], 0
	jne	.label_744
.label_754:
	mov	rdi, r15
	call	pthread_mutex_lock
	mov	rdi, qword ptr [rbx]
	mov	rsi, r14
	call	heap_insert
	mov	byte ptr [r14 + 0x54], 1
	mov	rdi, r13
	call	pthread_cond_signal
	mov	rdi, r15
	call	pthread_mutex_unlock
	mov	r14, qword ptr [r12 + 0x38]
	jmp	.label_744
.label_770:
	mov	rbx, qword ptr [rsp + 0x20]
	nop	dword ptr [rax + rax]
.label_744:
	add	r14, 0x58
	mov	rdi, r14
.label_746:
	call	pthread_mutex_unlock
	jmp	.label_749
.label_793:
	mov	rdi, rbp
	call	pthread_mutex_unlock
	mov	rdi, r15
	call	pthread_mutex_lock
	mov	rdi, qword ptr [rbx]
	mov	rsi, r12
	call	heap_insert
	mov	byte ptr [r12 + 0x54], 1
	mov	rdi, r13
	call	pthread_cond_signal
	mov	rdi, r15
	call	pthread_mutex_unlock
	jmp	.label_794
.label_772:
	sub	r12, r13
	shl	rbp, 5
	sub	rbx, rbp
	mov	rcx, qword ptr [r14 + 0x48]
	mov	rax, qword ptr [rsp + 0xf0]
	mov	qword ptr [rsp], rax
	mov	rdi, rbx
	mov	rsi, r12
	mov	rdx, qword ptr [rsp + 0x18]
	mov	r8, qword ptr [rsp + 0x20]
	mov	r9, qword ptr [rsp + 0x70]
	call	sortlines
	mov	rdi, qword ptr [rsp + 0xb0]
	xor	esi, esi
	call	pthread_join
.label_794:
	add	rsp, 0xb8
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
	#Procedure 0x40b420

	.globl compare_nodes
	.type compare_nodes, @function
compare_nodes:
	mov	eax, dword ptr [rsi + 0x50]
	cmp	dword ptr [rdi + 0x50], eax
	jne	.label_809
	mov	rax, qword ptr [rdi + 0x30]
	add	rax, qword ptr [rdi + 0x28]
	mov	rcx, qword ptr [rsi + 0x30]
	add	rcx, qword ptr [rsi + 0x28]
	cmp	rax, rcx
.label_809:
	setb	al
	movzx	eax, al
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40b450

	.globl init_node
	.type init_node, @function
init_node:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	r14, r8
	mov	qword ptr [rsp], r14
	mov	r15, rcx
	mov	r12, rdx
	mov	r13, rsi
	neg	r14
	shl	r14, 5
	jmp	.label_810
	nop	word ptr cs:[rax + rax]
.label_811:
	mov	rcx, r15
	shr	rcx, 1
	sub	r15, rcx
	mov	qword ptr [r13 + 0x40], rbp
	mov	r9d, 1
	mov	rdi, r13
	mov	rsi, rbp
	mov	rdx, rbx
	mov	r8, qword ptr [rsp]
	call	init_node
	mov	qword ptr [r13 + 0x48], rax
	xor	r9d, r9d
	mov	rdi, r13
	mov	r13, rax
.label_810:
	lea	rax, [rdi + 0x28]
	lea	rcx, [rdi + 0x30]
	lea	rdx, [rdi + 0x10]
	lea	rsi, [rdi + 0x18]
	and	r9b, 1
	cmovne	rsi, rdx
	test	r9b, r9b
	cmovne	rcx, rax
	mov	rax, qword ptr [rcx]
	mov	rcx, rax
	shr	rcx, 1
	sub	rax, rcx
	mov	rbx, r12
	add	rbx, r14
	mov	rdx, rcx
	shl	rdx, 5
	mov	r12, rbx
	sub	r12, rdx
	lea	rbp, [r13 + 0x80]
	mov	qword ptr [r13 + 0x10], rbx
	mov	qword ptr [r13], rbx
	mov	qword ptr [r13 + 0x18], r12
	mov	qword ptr [r13 + 8], r12
	mov	qword ptr [r13 + 0x20], rsi
	mov	qword ptr [r13 + 0x28], rcx
	mov	qword ptr [r13 + 0x30], rax
	mov	qword ptr [r13 + 0x38], rdi
	mov	eax, dword ptr [rdi + 0x50]
	inc	eax
	mov	dword ptr [r13 + 0x50], eax
	mov	byte ptr [r13 + 0x54], 0
	lea	rdi, [r13 + 0x58]
	xor	esi, esi
	call	pthread_mutex_init
	cmp	r15, 2
	jae	.label_811
	xorps	xmm0, xmm0
	movups	xmmword ptr [r13 + 0x40], xmm0
	mov	rax, rbp
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
	.align	16
	#Procedure 0x40b560

	.globl sortlines_thread
	.type sortlines_thread, @function
sortlines_thread:
	push	rax
	mov	rax, qword ptr [rdi]
	mov	rsi, qword ptr [rdi + 8]
	mov	rdx, qword ptr [rdi + 0x10]
	mov	rcx, qword ptr [rdi + 0x18]
	mov	r8, qword ptr [rdi + 0x20]
	mov	r9, qword ptr [rdi + 0x28]
	mov	rdi, qword ptr [rdi + 0x30]
	mov	qword ptr [rsp], rdi
	mov	rdi, rax
	call	sortlines
	xor	eax, eax
	pop	rcx
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x40b590

	.globl sequential_sort
	.type sequential_sort, @function
sequential_sort:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	ebx, ecx
	mov	r13, rdx
	mov	rbp, rsi
	cmp	rbp, 2
	jne	.label_815
	lea	rbp, [rdi - 0x20]
	lea	r14, [rdi - 0x40]
	mov	r15, rdi
	mov	rdi, rbp
	mov	rsi, r14
	call	compare
	test	bl, bl
	je	.label_823
	test	eax, eax
	setg	al
	movzx	eax, al
	mov	rcx, rax
	not	rcx
	shl	rcx, 5
	movups	xmm0, xmmword ptr [r15 + rcx]
	movups	xmm1, xmmword ptr [r15 + rcx + 0x10]
	movups	xmmword ptr [r13 - 0x10], xmm1
	movups	xmmword ptr [r13 - 0x20], xmm0
	shl	rax, 5
	movups	xmm0, xmmword ptr [rax + r15 - 0x40]
	movups	xmm1, xmmword ptr [rax + r15 - 0x30]
	movups	xmmword ptr [r13 - 0x30], xmm1
	movups	xmmword ptr [r13 - 0x40], xmm0
	jmp	.label_813
.label_815:
	mov	r14, rbp
	shr	r14, 1
	mov	r15, rbp
	sub	r15, r14
	mov	r12, r14
	neg	r12
	mov	rax, r14
	shl	rax, 5
	mov	qword ptr [rsp], rdi
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
	jb	.label_822
	mov	al, bl
	xor	al, 1
	movzx	ecx, al
	mov	rbp, qword ptr [rsp]
	mov	rdi, rbp
	mov	rsi, r14
	mov	rdx, r13
	call	sequential_sort
	mov	rax, rbp
	jmp	.label_821
.label_823:
	test	eax, eax
	jle	.label_813
	movups	xmm0, xmmword ptr [rbp]
	movups	xmm1, xmmword ptr [rbp + 0x10]
	movups	xmmword ptr [r13 - 0x10], xmm1
	movups	xmmword ptr [r13 - 0x20], xmm0
	movups	xmm0, xmmword ptr [r14]
	movups	xmm1, xmmword ptr [r14 + 0x10]
	movups	xmmword ptr [rbp + 0x10], xmm1
	movups	xmmword ptr [rbp], xmm0
	movups	xmm0, xmmword ptr [r13 - 0x20]
	movups	xmm1, xmmword ptr [r13 - 0x10]
	movups	xmmword ptr [r14 + 0x10], xmm1
	movups	xmmword ptr [r14], xmm0
	jmp	.label_813
.label_822:
	test	bl, bl
	mov	rax, qword ptr [rsp]
	jne	.label_821
	movups	xmm0, xmmword ptr [rax - 0x20]
	movups	xmm1, xmmword ptr [rax - 0x10]
	movups	xmmword ptr [r13 - 0x10], xmm1
	movups	xmmword ptr [r13 - 0x20], xmm0
.label_821:
	test	bl, bl
	mov	rbx, rax
	cmovne	rbx, r13
	cmovne	r13, rax
	shl	r12, 5
	add	r12, rbx
.label_819:
	lea	rax, [r13 - 0x20]
	mov	qword ptr [rsp], rax
	nop	word ptr cs:[rax + rax]
.label_814:
	lea	rbp, [r12 - 0x20]
	mov	rdi, qword ptr [rsp]
	mov	rsi, rbp
	call	compare
	add	rbx, -0x20
	test	eax, eax
	jle	.label_812
	movups	xmm0, xmmword ptr [r12 - 0x20]
	movups	xmm1, xmmword ptr [r12 - 0x10]
	movups	xmmword ptr [rbx + 0x10], xmm1
	movups	xmmword ptr [rbx], xmm0
	dec	r15
	mov	r12, rbp
	jne	.label_814
	jmp	.label_820
	nop	word ptr cs:[rax + rax]
.label_812:
	mov	r13, qword ptr [rsp]
	movups	xmm0, xmmword ptr [r13]
	movups	xmm1, xmmword ptr [r13 + 0x10]
	movups	xmmword ptr [rbx + 0x10], xmm1
	movups	xmmword ptr [rbx], xmm0
	dec	r14
	jne	.label_819
	jmp	.label_813
.label_820:
	lea	rax, [r14 - 1]
	test	r14b, 7
	je	.label_817
	mov	ecx, r14d
	and	ecx, 7
	neg	rcx
	nop	word ptr cs:[rax + rax]
.label_816:
	movups	xmm0, xmmword ptr [r13 - 0x20]
	movups	xmm1, xmmword ptr [r13 - 0x10]
	lea	r13, [r13 - 0x20]
	movups	xmmword ptr [rbx - 0x10], xmm1
	movups	xmmword ptr [rbx - 0x20], xmm0
	lea	rbx, [rbx - 0x20]
	dec	r14
	inc	rcx
	jne	.label_816
.label_817:
	xor	ecx, ecx
	cmp	rax, 7
	jb	.label_813
	nop	
.label_818:
	movups	xmm0, xmmword ptr [r13 + rcx - 0x20]
	movups	xmm1, xmmword ptr [r13 + rcx - 0x10]
	movups	xmmword ptr [rbx + rcx - 0x10], xmm1
	movups	xmmword ptr [rbx + rcx - 0x20], xmm0
	movups	xmm0, xmmword ptr [r13 + rcx - 0x40]
	movups	xmm1, xmmword ptr [r13 + rcx - 0x30]
	movups	xmmword ptr [rbx + rcx - 0x30], xmm1
	movups	xmmword ptr [rbx + rcx - 0x40], xmm0
	movups	xmm0, xmmword ptr [r13 + rcx - 0x60]
	movups	xmm1, xmmword ptr [r13 + rcx - 0x50]
	movups	xmmword ptr [rbx + rcx - 0x50], xmm1
	movups	xmmword ptr [rbx + rcx - 0x60], xmm0
	movups	xmm0, xmmword ptr [r13 + rcx - 0x80]
	movups	xmm1, xmmword ptr [r13 + rcx - 0x70]
	movups	xmmword ptr [rbx + rcx - 0x70], xmm1
	movups	xmmword ptr [rbx + rcx - 0x80], xmm0
	movups	xmm0, xmmword ptr [r13 + rcx - 0xa0]
	movups	xmm1, xmmword ptr [r13 + rcx - 0x90]
	movups	xmmword ptr [rbx + rcx - 0x90], xmm1
	movups	xmmword ptr [rbx + rcx - 0xa0], xmm0
	movups	xmm0, xmmword ptr [r13 + rcx - 0xc0]
	movups	xmm1, xmmword ptr [r13 + rcx - 0xb0]
	movups	xmmword ptr [rbx + rcx - 0xb0], xmm1
	movups	xmmword ptr [rbx + rcx - 0xc0], xmm0
	movups	xmm0, xmmword ptr [r13 + rcx - 0xe0]
	movups	xmm1, xmmword ptr [r13 + rcx - 0xd0]
	movups	xmmword ptr [rbx + rcx - 0xd0], xmm1
	movups	xmmword ptr [rbx + rcx - 0xe0], xmm0
	movups	xmm0, xmmword ptr [r13 + rcx - 0x100]
	movups	xmm1, xmmword ptr [r13 + rcx - 0xf0]
	movups	xmmword ptr [rbx + rcx - 0xf0], xmm1
	movups	xmmword ptr [rbx + rcx - 0x100], xmm0
	add	rcx, -0x100
	add	r14, -8
	jne	.label_818
.label_813:
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
	#Procedure 0x40b8a0

	.globl __argmatch_die
	.type __argmatch_die, @function
__argmatch_die:
	mov	edi, 1
	jmp	usage
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40b8b0

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
	mov	qword ptr [rsp + 0x20], rbp
	mov	r12, rdi
	call	strlen
	mov	rbx, rax
	mov	r15, qword ptr [rbp]
	test	r15, r15
	je	.label_827
	mov	qword ptr [rsp + 0x18], -1
	xor	eax, eax
	mov	qword ptr [rsp + 0x10], rax
	mov	rax, r14
	mov	qword ptr [rsp + 8], rax
	xor	ebp, ebp
	nop	
.label_824:
	mov	rdi, r15
	mov	rsi, r12
	mov	rdx, rbx
	call	strncmp
	test	eax, eax
	jne	.label_825
	mov	rdi, r15
	call	strlen
	cmp	rax, rbx
	je	.label_829
	cmp	qword ptr [rsp + 0x18], -1
	je	.label_830
	mov	rax, qword ptr [rsp + 8]
	test	rax, rax
	je	.label_826
	mov	rdi, qword ptr [rsp + 0x18]
	imul	rdi, r13
	add	rdi, rax
	mov	rsi, r14
	mov	rdx, r13
	call	memcmp
	test	eax, eax
	je	.label_825
.label_826:
	mov	al, 1
	mov	qword ptr [rsp + 0x10], rax
	jmp	.label_825
.label_830:
	mov	qword ptr [rsp + 0x18], rbp
	nop	word ptr [rax + rax]
.label_825:
	mov	rax, qword ptr [rsp + 0x20]
	mov	r15, qword ptr [rax + rbp*8 + 8]
	inc	rbp
	add	r14, r13
	test	r15, r15
	jne	.label_824
	jmp	.label_828
.label_827:
	mov	qword ptr [rsp + 0x18], -1
	xor	eax, eax
	mov	qword ptr [rsp + 0x10], rax
.label_828:
	mov	rax, qword ptr [rsp + 0x10]
	test	al, 1
	mov	rbp, -2
	cmove	rbp, qword ptr [rsp + 0x18]
.label_829:
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
	.align	16
	#Procedure 0x40b9b0
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
	je	.label_831
	mov	esi, OFFSET FLAT:.str.1_1
	jmp	.label_832
.label_831:
	mov	esi, OFFSET FLAT:.str_3
.label_832:
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
	#Procedure 0x40ba20

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
	mov	rbx, rdi
	mov	qword ptr [rsp], rbx
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.2_0
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stderr]]
	mov	rdi, rax
	call	fputs_unlocked
	mov	rbx, qword ptr [rbx]
	test	rbx, rbx
	je	.label_837
	xor	r13d, r13d
	xor	r15d, r15d
	nop	word ptr [rax + rax]
.label_834:
	test	r15, r15
	je	.label_836
	mov	rdi, r13
	mov	rsi, r12
	mov	rdx, r14
	call	memcmp
	test	eax, eax
	je	.label_833
.label_836:
	mov	r13,  qword ptr [word ptr [rip + stderr]]
	mov	rdi, rbx
	call	quote
	mov	rcx, rax
	mov	esi, 1
	mov	edx, OFFSET FLAT:.str.3_0
	xor	eax, eax
	mov	rdi, r13
	call	__fprintf_chk
	mov	r13, r12
	jmp	.label_835
	nop	word ptr cs:[rax + rax]
.label_833:
	mov	rbp,  qword ptr [word ptr [rip + stderr]]
	mov	rdi, rbx
	call	quote
	mov	rcx, rax
	mov	esi, 1
	mov	edx, OFFSET FLAT:.str.4_0
	xor	eax, eax
	mov	rdi, rbp
	call	__fprintf_chk
.label_835:
	mov	rax, qword ptr [rsp]
	mov	rbx, qword ptr [rax + r15*8 + 8]
	inc	r15
	add	r12, r14
	test	rbx, rbx
	jne	.label_834
.label_837:
	mov	rdi,  qword ptr [word ptr [rip + stderr]]
	mov	rax, qword ptr [rdi + 0x28]
	cmp	rax, qword ptr [rdi + 0x30]
	jae	.label_838
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
.label_838:
	mov	esi, 0xa
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	jmp	__overflow
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40bb50

	.globl __xargmatch_internal
	.type __xargmatch_internal, @function
__xargmatch_internal:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x18
	mov	rbx, r9
	mov	r15, r8
	mov	r12, rcx
	mov	r13, rdx
	mov	r14, rsi
	mov	rbp, rdi
	mov	rdi, r14
	mov	rsi, r13
	mov	rdx, r12
	mov	rcx, r15
	call	argmatch
	test	rax, rax
	jns	.label_839
	mov	qword ptr [rsp + 0x10], rbp
	xor	edi, edi
	cmp	rax, -1
	je	.label_840
	mov	esi, OFFSET FLAT:.str.1_1
	jmp	.label_841
.label_840:
	mov	esi, OFFSET FLAT:.str_3
.label_841:
	mov	edx, 5
	call	dcgettext
	mov	qword ptr [rsp + 8], rax
	xor	edi, edi
	mov	esi, 8
	mov	rdx, r14
	call	quotearg_n_style
	mov	r14, rax
	mov	edi, 1
	mov	rsi, qword ptr [rsp + 0x10]
	call	quote_n
	mov	rbp, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, qword ptr [rsp + 8]
	mov	rcx, r14
	mov	r8, rbp
	call	error
	mov	rdi, r13
	mov	rsi, r12
	mov	rdx, r15
	call	argmatch_valid
	call	rbx
	mov	rax, -1
.label_839:
	add	rsp, 0x18
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x40bc10
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
	je	.label_842
	add	rbx, 8
	nop	word ptr cs:[rax + rax]
.label_843:
	mov	rdi, r12
	mov	rsi, r15
	mov	rdx, r14
	call	memcmp
	test	eax, eax
	mov	rax, r13
	je	.label_842
	mov	r13, qword ptr [rbx]
	add	rbx, 8
	add	r15, r14
	test	r13, r13
	mov	eax, 0
	jne	.label_843
.label_842:
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x40bc80
	.globl close_stdout_set_file_name
	.type close_stdout_set_file_name, @function
close_stdout_set_file_name:

	mov	qword ptr [word ptr [rip + file_name]],  rdi
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40bc90
	.globl close_stdout_set_ignore_EPIPE
	.type close_stdout_set_ignore_EPIPE, @function
close_stdout_set_ignore_EPIPE:

	mov	byte ptr [byte ptr [rip + ignore_EPIPE]],  dil
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40bca0

	.globl close_stdout
	.type close_stdout, @function
close_stdout:
	push	rbp
	push	rbx
	push	rax
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	call	close_stream
	test	eax, eax
	je	.label_847
	mov	bl,  byte ptr [byte ptr [rip + ignore_EPIPE]]
	call	__errno_location
	mov	rbp, rax
	cmp	bl, 0
	je	.label_844
	cmp	dword ptr [rbp], 0x20
	jne	.label_844
.label_847:
	mov	rdi,  qword ptr [word ptr [rip + stderr]]
	call	close_stream
	test	eax, eax
	jne	.label_846
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
.label_844:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str_4
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	rdi,  qword ptr [word ptr [rip + file_name]]
	test	rdi, rdi
	mov	ebp, dword ptr [rbp]
	jne	.label_845
	xor	edi, edi
	mov	edx, OFFSET FLAT:.str_0
	xor	eax, eax
	mov	esi, ebp
	mov	rcx, rbx
	call	error
	mov	edi,  dword ptr [dword ptr [rip + exit_failure]]
	call	_exit
.label_846:
	mov	edi,  dword ptr [dword ptr [rip + exit_failure]]
	call	_exit
.label_845:
	call	quotearg_colon
	mov	rcx, rax
	xor	edi, edi
	mov	edx, OFFSET FLAT:.str.1_0
	xor	eax, eax
	mov	esi, ebp
	mov	r8, rbx
	call	error
	mov	edi,  dword ptr [dword ptr [rip + exit_failure]]
	call	_exit
	nop	word ptr cs:[rax + rax]
	nop	
	.section	.text
	.align	16
	#Procedure 0x40bd60

	.globl md5_init_ctx
	.type md5_init_ctx, @function
md5_init_ctx:
	movaps	xmm0,  xmmword ptr [word ptr [rip + label_848]]
	movups	xmmword ptr [rdi], xmm0
	mov	dword ptr [rdi + 0x14], 0
	mov	dword ptr [rdi + 0x10], 0
	mov	dword ptr [rdi + 0x18], 0
	ret	
	.section	.text
	.align	16
	#Procedure 0x40bd80
	.globl md5_read_ctx
	.type md5_read_ctx, @function
md5_read_ctx:

	mov	eax, dword ptr [rdi]
	mov	dword ptr [rsi], eax
	mov	eax, dword ptr [rdi + 4]
	mov	dword ptr [rsi + 4], eax
	mov	eax, dword ptr [rdi + 8]
	mov	dword ptr [rsi + 8], eax
	mov	eax, dword ptr [rdi + 0xc]
	mov	dword ptr [rsi + 0xc], eax
	mov	rax, rsi
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40bda0

	.globl md5_finish_ctx
	.type md5_finish_ctx, @function
md5_finish_ctx:
	push	r15
	push	r14
	push	r12
	push	rbx
	push	rax
	mov	r14, rsi
	mov	rbx, rdi
	mov	eax, dword ptr [rbx + 0x18]
	cmp	rax, 0x38
	mov	ecx, 0x10
	mov	r15d, 0x20
	cmovb	r15, rcx
	mov	ecx, dword ptr [rbx + 0x10]
	add	ecx, eax
	mov	dword ptr [rbx + 0x10], ecx
	jae	.label_849
	inc	dword ptr [rbx + 0x14]
.label_849:
	lea	edx, [rcx*8]
	lea	r12, [rbx + 0x1c]
	mov	dword ptr [rbx + r15*4 + 0x14], edx
	mov	edx, dword ptr [rbx + 0x14]
	shld	edx, ecx, 3
	mov	dword ptr [rbx + r15*4 + 0x18], edx
	lea	rdi, [rbx + rax + 0x1c]
	lea	rdx, [r15*4 - 8]
	sub	rdx, rax
	mov	esi, OFFSET FLAT:fillbuf_0
	call	memcpy
	shl	r15, 2
	mov	rdi, r12
	mov	rsi, r15
	mov	rdx, rbx
	call	md5_process_block
	mov	eax, dword ptr [rbx]
	mov	dword ptr [r14], eax
	mov	eax, dword ptr [rbx + 4]
	mov	dword ptr [r14 + 4], eax
	mov	eax, dword ptr [rbx + 8]
	mov	dword ptr [r14 + 8], eax
	mov	eax, dword ptr [rbx + 0xc]
	mov	dword ptr [r14 + 0xc], eax
	mov	rax, r14
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40be50

	.globl md5_process_block
	.type md5_process_block, @function
md5_process_block:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x10
	mov	qword ptr [rsp - 0x80], rdx
	mov	rax, rsi
	and	rax, 0xfffffffffffffffc
	add	rax, rdi
	mov	qword ptr [rsp - 0x78], rax
	mov	r10d, dword ptr [rdx]
	mov	ebx, dword ptr [rdx + 4]
	mov	r9d, dword ptr [rdx + 8]
	mov	ebp, dword ptr [rdx + 0xc]
	mov	r8, rsi
	shr	r8, 0x20
	mov	ecx, dword ptr [rdx + 0x10]
	add	ecx, esi
	mov	dword ptr [rdx + 0x10], ecx
	adc	r8d, 0
	add	dword ptr [rdx + 0x14], r8d
	cmp	rdi, rax
	jae	.label_851
	nop	
.label_850:
	mov	qword ptr [rsp + 8], rbx
	mov	qword ptr [rsp - 0x40], r9
	mov	qword ptr [rsp - 0x38], rbp
	mov	dword ptr [rsp - 0x2c], r10d
	mov	eax, r9d
	xor	eax, ebp
	and	eax, ebx
	xor	eax, ebp
	add	eax, r10d
	mov	ecx, dword ptr [rdi]
	mov	qword ptr [rsp - 0x50], rcx
	mov	esi, dword ptr [rdi + 4]
	mov	qword ptr [rsp - 8], rsi
	lea	edx, [rcx + rax - 0x28955b88]
	mov	r10, rcx
	rol	edx, 7
	mov	rax, qword ptr [rsp + 8]
	add	edx, eax
	mov	rax, qword ptr [rsp + 8]
	xor	eax, r9d
	and	eax, edx
	xor	eax, r9d
	lea	ecx, [rbp + rsi]
	lea	ebp, [rax + rcx - 0x173848aa]
	rol	ebp, 0xc
	add	ebp, edx
	mov	eax, edx
	mov	rcx, qword ptr [rsp + 8]
	xor	eax, ecx
	and	eax, ebp
	mov	rcx, qword ptr [rsp + 8]
	xor	eax, ecx
	mov	ecx, dword ptr [rdi + 8]
	mov	qword ptr [rsp - 0x18], rcx
	lea	ecx, [r9 + rcx]
	lea	ebx, [rax + rcx + 0x242070db]
	rol	ebx, 0x11
	add	ebx, ebp
	mov	eax, ebp
	xor	eax, edx
	and	eax, ebx
	xor	eax, edx
	mov	esi, dword ptr [rdi + 0xc]
	mov	qword ptr [rsp - 0x68], rsi
	mov	rcx, qword ptr [rsp + 8]
	lea	ecx, [rcx + rsi]
	mov	r12, rsi
	lea	eax, [rax + rcx - 0x3e423112]
	rol	eax, 0x16
	add	eax, ebx
	mov	ecx, ebx
	xor	ecx, ebp
	and	ecx, eax
	xor	ecx, ebp
	mov	esi, dword ptr [rdi + 0x10]
	mov	dword ptr [rsp - 0x20], esi
	add	edx, esi
	lea	ecx, [rcx + rdx - 0xa83f051]
	rol	ecx, 7
	add	ecx, eax
	mov	edx, eax
	xor	edx, ebx
	and	edx, ecx
	xor	edx, ebx
	mov	esi, dword ptr [rdi + 0x14]
	mov	dword ptr [rsp - 0x28], esi
	add	ebp, esi
	lea	r8d, [rdx + rbp + 0x4787c62a]
	rol	r8d, 0xc
	add	r8d, ecx
	mov	edx, ecx
	xor	edx, eax
	and	edx, r8d
	xor	edx, eax
	mov	esi, dword ptr [rdi + 0x18]
	mov	dword ptr [rsp - 0x44], esi
	add	ebx, esi
	lea	ebx, [rdx + rbx - 0x57cfb9ed]
	rol	ebx, 0x11
	add	ebx, r8d
	mov	ebp, r8d
	xor	ebp, ecx
	and	ebp, ebx
	xor	ebp, ecx
	mov	edx, dword ptr [rdi + 0x1c]
	mov	dword ptr [rsp - 0x1c], edx
	add	eax, edx
	lea	r9d, [rbp + rax - 0x2b96aff]
	rol	r9d, 0x16
	add	r9d, ebx
	mov	eax, ebx
	xor	eax, r8d
	and	eax, r9d
	xor	eax, r8d
	mov	edx, dword ptr [rdi + 0x20]
	mov	dword ptr [rsp - 0x24], edx
	add	ecx, edx
	lea	ecx, [rax + rcx + 0x698098d8]
	rol	ecx, 7
	add	ecx, r9d
	mov	eax, r9d
	xor	eax, ebx
	and	eax, ecx
	xor	eax, ebx
	mov	edx, dword ptr [rdi + 0x24]
	mov	dword ptr [rsp + 4], edx
	add	r8d, edx
	lea	ebp, [rax + r8 - 0x74bb0851]
	rol	ebp, 0xc
	add	ebp, ecx
	mov	eax, ecx
	xor	eax, r9d
	and	eax, ebp
	xor	eax, r9d
	mov	edx, dword ptr [rdi + 0x28]
	mov	dword ptr [rsp - 0x5c], edx
	add	ebx, edx
	mov	r13d, edx
	lea	r15d, [rax + rbx - 0xa44f]
	rol	r15d, 0x11
	add	r15d, ebp
	mov	eax, ebp
	xor	eax, ecx
	and	eax, r15d
	xor	eax, ecx
	mov	edx, dword ptr [rdi + 0x2c]
	mov	dword ptr [rsp - 0xc], edx
	add	r9d, edx
	lea	r11d, [rax + r9 - 0x76a32842]
	rol	r11d, 0x16
	add	r11d, r15d
	mov	eax, r15d
	xor	eax, ebp
	and	eax, r11d
	xor	eax, ebp
	mov	ebx, dword ptr [rdi + 0x30]
	mov	dword ptr [rsp - 0x54], ebx
	add	ecx, ebx
	lea	ecx, [rax + rcx + 0x6b901122]
	rol	ecx, 7
	add	ecx, r11d
	mov	eax, r11d
	xor	eax, r15d
	and	eax, ecx
	xor	eax, r15d
	mov	ebx, dword ptr [rdi + 0x34]
	mov	dword ptr [rsp - 0x58], ebx
	add	ebp, ebx
	lea	r9d, [rax + rbp - 0x2678e6d]
	rol	r9d, 0xc
	add	r9d, ecx
	mov	eax, ecx
	xor	eax, r11d
	and	eax, r9d
	xor	eax, r11d
	mov	r14d, dword ptr [rdi + 0x38]
	mov	dword ptr [rsp - 0x6c], r14d
	add	r15d, r14d
	lea	r8d, [rax + r15 - 0x5986bc72]
	rol	r8d, 0x11
	add	r8d, r9d
	mov	eax, r9d
	xor	eax, ecx
	and	eax, r8d
	xor	eax, ecx
	mov	ebp, dword ptr [rdi + 0x3c]
	mov	dword ptr [rsp - 0x48], ebp
	add	r11d, ebp
	mov	r15d, ebp
	lea	r11d, [rax + r11 + 0x49b40821]
	rol	r11d, 0x16
	add	r11d, r8d
	mov	eax, r11d
	xor	eax, r8d
	and	eax, r9d
	xor	eax, r8d
	mov	rbp, qword ptr [rsp - 8]
	add	ecx, ebp
	lea	ecx, [rax + rcx - 0x9e1da9e]
	rol	ecx, 5
	add	ecx, r11d
	mov	eax, ecx
	xor	eax, r11d
	and	eax, r8d
	xor	eax, r11d
	add	r9d, esi
	lea	ebp, [rax + r9 - 0x3fbf4cc0]
	rol	ebp, 9
	add	ebp, ecx
	mov	eax, ebp
	xor	eax, ecx
	and	eax, r11d
	xor	eax, ecx
	add	r8d, edx
	lea	r8d, [rax + r8 + 0x265e5a51]
	rol	r8d, 0xe
	add	r8d, ebp
	mov	eax, r8d
	xor	eax, ebp
	and	eax, ecx
	xor	eax, ebp
	add	r11d, r10d
	lea	r11d, [rax + r11 - 0x16493856]
	rol	r11d, 0x14
	add	r11d, r8d
	mov	eax, r11d
	xor	eax, r8d
	and	eax, ebp
	xor	eax, r8d
	mov	r9d, dword ptr [rsp - 0x28]
	add	ecx, r9d
	lea	ecx, [rax + rcx - 0x29d0efa3]
	rol	ecx, 5
	add	ecx, r11d
	mov	eax, ecx
	xor	eax, r11d
	and	eax, r8d
	xor	eax, r11d
	add	ebp, r13d
	lea	ebp, [rax + rbp + 0x2441453]
	rol	ebp, 9
	add	ebp, ecx
	mov	eax, ebp
	xor	eax, ecx
	and	eax, r11d
	xor	eax, ecx
	add	r8d, r15d
	lea	r8d, [rax + r8 - 0x275e197f]
	rol	r8d, 0xe
	add	r8d, ebp
	mov	eax, r8d
	xor	eax, ebp
	and	eax, ecx
	xor	eax, ebp
	mov	r10d, dword ptr [rsp - 0x20]
	add	r11d, r10d
	lea	r11d, [rax + r11 - 0x182c0438]
	rol	r11d, 0x14
	add	r11d, r8d
	mov	eax, r11d
	xor	eax, r8d
	and	eax, ebp
	xor	eax, r8d
	add	ecx, dword ptr [rsp + 4]
	lea	ecx, [rax + rcx + 0x21e1cde6]
	rol	ecx, 5
	add	ecx, r11d
	mov	eax, ecx
	xor	eax, r11d
	and	eax, r8d
	xor	eax, r11d
	mov	r13d, r14d
	add	ebp, r13d
	lea	ebp, [rax + rbp - 0x3cc8f82a]
	rol	ebp, 9
	add	ebp, ecx
	mov	eax, ebp
	xor	eax, ecx
	and	eax, r11d
	xor	eax, ecx
	add	r8d, r12d
	lea	r8d, [rax + r8 - 0xb2af279]
	rol	r8d, 0xe
	add	r8d, ebp
	mov	eax, r8d
	xor	eax, ebp
	and	eax, ecx
	xor	eax, ebp
	mov	esi, dword ptr [rsp - 0x24]
	add	r11d, esi
	lea	r11d, [rax + r11 + 0x455a14ed]
	rol	r11d, 0x14
	add	r11d, r8d
	mov	eax, r11d
	xor	eax, r8d
	and	eax, ebp
	xor	eax, r8d
	add	ecx, ebx
	lea	ecx, [rax + rcx - 0x561c16fb]
	rol	ecx, 5
	add	ecx, r11d
	mov	eax, ecx
	xor	eax, r11d
	and	eax, r8d
	xor	eax, r11d
	mov	rdx, qword ptr [rsp - 0x18]
	add	ebp, edx
	lea	r14d, [rax + rbp - 0x3105c08]
	rol	r14d, 9
	add	r14d, ecx
	mov	eax, r14d
	xor	eax, ecx
	and	eax, r11d
	xor	eax, ecx
	mov	edx, dword ptr [rsp - 0x1c]
	add	r8d, edx
	lea	r8d, [rax + r8 + 0x676f02d9]
	rol	r8d, 0xe
	add	r8d, r14d
	mov	ebp, r8d
	xor	ebp, r14d
	mov	eax, ebp
	and	eax, ecx
	xor	eax, r14d
	mov	r15d, dword ptr [rsp - 0x54]
	add	r11d, r15d
	lea	eax, [rax + r11 - 0x72d5b376]
	rol	eax, 0x14
	add	eax, r8d
	xor	ebp, eax
	add	ecx, r9d
	lea	r11d, [rbp + rcx - 0x5c6be]
	rol	r11d, 4
	add	r11d, eax
	mov	ecx, eax
	xor	ecx, r8d
	xor	ecx, r11d
	add	r14d, esi
	lea	r14d, [rcx + r14 - 0x788e097f]
	rol	r14d, 0xb
	add	r14d, r11d
	mov	ebp, r11d
	xor	ebp, eax
	xor	ebp, r14d
	add	r8d, dword ptr [rsp - 0xc]
	lea	ebp, [rbp + r8 + 0x6d9d6122]
	rol	ebp, 0x10
	add	ebp, r14d
	mov	ecx, r14d
	xor	ecx, r11d
	xor	ecx, ebp
	add	eax, r13d
	lea	r8d, [rcx + rax - 0x21ac7f4]
	rol	r8d, 0x17
	add	r8d, ebp
	mov	eax, ebp
	xor	eax, r14d
	xor	eax, r8d
	mov	rcx, qword ptr [rsp - 8]
	add	r11d, ecx
	lea	r11d, [rax + r11 - 0x5b4115bc]
	rol	r11d, 4
	add	r11d, r8d
	mov	ecx, r8d
	xor	ecx, ebp
	xor	ecx, r11d
	add	r14d, r10d
	lea	r14d, [rcx + r14 + 0x4bdecfa9]
	rol	r14d, 0xb
	add	r14d, r11d
	mov	eax, r11d
	xor	eax, r8d
	xor	eax, r14d
	add	ebp, edx
	lea	ebp, [rax + rbp - 0x944b4a0]
	rol	ebp, 0x10
	add	ebp, r14d
	mov	eax, r14d
	xor	eax, r11d
	xor	eax, ebp
	mov	r10d, dword ptr [rsp - 0x5c]
	add	r8d, r10d
	lea	r8d, [rax + r8 - 0x41404390]
	rol	r8d, 0x17
	add	r8d, ebp
	mov	eax, ebp
	xor	eax, r14d
	xor	eax, r8d
	add	r11d, ebx
	lea	eax, [rax + r11 + 0x289b7ec6]
	rol	eax, 4
	add	eax, r8d
	mov	ecx, r8d
	xor	ecx, ebp
	xor	ecx, eax
	mov	rsi, qword ptr [rsp - 0x50]
	add	r14d, esi
	lea	r11d, [rcx + r14 - 0x155ed806]
	rol	r11d, 0xb
	add	r11d, eax
	mov	ecx, eax
	xor	ecx, r8d
	xor	ecx, r11d
	mov	r9, qword ptr [rsp - 0x68]
	add	ebp, r9d
	lea	r14d, [rcx + rbp - 0x2b10cf7b]
	rol	r14d, 0x10
	add	r14d, r11d
	mov	ecx, r11d
	xor	ecx, eax
	xor	ecx, r14d
	mov	r12d, dword ptr [rsp - 0x44]
	add	r8d, r12d
	lea	r8d, [rcx + r8 + 0x4881d05]
	rol	r8d, 0x17
	add	r8d, r14d
	mov	ecx, r14d
	xor	ecx, r11d
	xor	ecx, r8d
	add	eax, dword ptr [rsp + 4]
	lea	ecx, [rcx + rax - 0x262b2fc7]
	rol	ecx, 4
	add	ecx, r8d
	mov	eax, r8d
	xor	eax, r14d
	xor	eax, ecx
	add	r11d, r15d
	lea	edx, [rax + r11 - 0x1924661b]
	rol	edx, 0xb
	add	edx, ecx
	mov	ebp, ecx
	xor	ebp, r8d
	xor	ebp, edx
	mov	r13d, dword ptr [rsp - 0x48]
	add	r14d, r13d
	lea	r11d, [rbp + r14 + 0x1fa27cf8]
	rol	r11d, 0x10
	add	r11d, edx
	mov	ebp, edx
	xor	ebp, ecx
	xor	ebp, r11d
	mov	rax, qword ptr [rsp - 0x18]
	add	r8d, eax
	mov	r14, rax
	lea	r8d, [rbp + r8 - 0x3b53a99b]
	add	ecx, esi
	rol	r8d, 0x17
	add	r8d, r11d
	mov	eax, edx
	not	eax
	or	eax, r8d
	xor	eax, r11d
	lea	ecx, [rax + rcx - 0xbd6ddbc]
	add	edx, dword ptr [rsp - 0x1c]
	rol	ecx, 6
	add	ecx, r8d
	mov	eax, r11d
	not	eax
	or	eax, ecx
	xor	eax, r8d
	lea	ebp, [rax + rdx + 0x432aff97]
	add	r11d, dword ptr [rsp - 0x6c]
	rol	ebp, 0xa
	add	ebp, ecx
	mov	eax, r8d
	not	eax
	or	eax, ebp
	xor	eax, ecx
	lea	eax, [rax + r11 - 0x546bdc59]
	add	r8d, dword ptr [rsp - 0x28]
	rol	eax, 0xf
	add	eax, ebp
	mov	edx, ecx
	not	edx
	or	edx, eax
	xor	edx, ebp
	lea	esi, [rdx + r8 - 0x36c5fc7]
	add	ecx, r15d
	rol	esi, 0x15
	add	esi, eax
	mov	edx, ebp
	not	edx
	or	edx, esi
	xor	edx, eax
	lea	ecx, [rdx + rcx + 0x655b59c3]
	add	ebp, r9d
	rol	ecx, 6
	add	ecx, esi
	mov	edx, eax
	not	edx
	or	edx, ecx
	xor	edx, esi
	lea	ebp, [rdx + rbp - 0x70f3336e]
	add	eax, r10d
	mov	rbx, qword ptr [rsp + 8]
	rol	ebp, 0xa
	add	ebp, ecx
	mov	edx, esi
	not	edx
	or	edx, ebp
	xor	edx, ecx
	lea	eax, [rdx + rax - 0x100b83]
	rol	eax, 0xf
	add	eax, ebp
	mov	rdx, qword ptr [rsp - 8]
	add	esi, edx
	mov	edx, ecx
	not	edx
	or	edx, eax
	xor	edx, ebp
	lea	r8d, [rdx + rsi - 0x7a7ba22f]
	rol	r8d, 0x15
	add	r8d, eax
	add	ecx, dword ptr [rsp - 0x24]
	mov	edx, ebp
	not	edx
	or	edx, r8d
	xor	edx, eax
	lea	ecx, [rdx + rcx + 0x6fa87e4f]
	rol	ecx, 6
	add	ecx, r8d
	add	ebp, r13d
	mov	edx, eax
	not	edx
	or	edx, ecx
	xor	edx, r8d
	lea	edx, [rdx + rbp - 0x1d31920]
	rol	edx, 0xa
	add	edx, ecx
	add	eax, r12d
	mov	esi, r8d
	not	esi
	or	esi, edx
	xor	esi, ecx
	lea	ebp, [rsi + rax - 0x5cfebcec]
	rol	ebp, 0xf
	add	ebp, edx
	add	r8d, dword ptr [rsp - 0x58]
	mov	eax, ecx
	not	eax
	or	eax, ebp
	xor	eax, edx
	lea	esi, [rax + r8 + 0x4e0811a1]
	mov	r8, qword ptr [rsp - 0x78]
	mov	r10d, dword ptr [rsp - 0x2c]
	rol	esi, 0x15
	add	esi, ebp
	add	ecx, dword ptr [rsp - 0x20]
	mov	eax, edx
	not	eax
	or	eax, esi
	xor	eax, ebp
	lea	ecx, [rax + rcx - 0x8ac817e]
	rol	ecx, 6
	add	ecx, esi
	add	edx, dword ptr [rsp - 0xc]
	mov	eax, ebp
	not	eax
	or	eax, ecx
	xor	eax, esi
	lea	edx, [rax + rdx - 0x42c50dcb]
	rol	edx, 0xa
	add	edx, ecx
	add	ebp, r14d
	mov	eax, esi
	not	eax
	or	eax, edx
	xor	eax, ecx
	lea	eax, [rax + rbp + 0x2ad7d2bb]
	add	esi, dword ptr [rsp + 4]
	rol	eax, 0xf
	add	eax, edx
	add	r10d, ecx
	not	ecx
	or	ecx, eax
	xor	ecx, edx
	lea	ecx, [rcx + rsi - 0x14792c6f]
	rol	ecx, 0x15
	add	ebx, eax
	add	ebx, ecx
	mov	rcx, qword ptr [rsp - 0x40]
	add	eax, ecx
	mov	rcx, qword ptr [rsp - 0x38]
	add	edx, ecx
	add	rdi, 0x40
	cmp	rdi, r8
	mov	r9d, eax
	mov	ebp, edx
	jb	.label_850
	jmp	.label_852
.label_851:
	mov	eax, r9d
	mov	edx, ebp
.label_852:
	mov	rcx, qword ptr [rsp - 0x80]
	mov	dword ptr [rcx], r10d
	mov	dword ptr [rcx + 4], ebx
	mov	dword ptr [rcx + 8], eax
	mov	dword ptr [rcx + 0xc], edx
	add	rsp, 0x10
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
	#Procedure 0x40c660
	.globl md5_stream
	.type md5_stream, @function
md5_stream:

	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0xa0
	mov	r14, rsi
	mov	r12, rdi
	mov	edi, 0x8048
	call	malloc
	mov	r15, rax
	mov	eax, 1
	test	r15, r15
	je	.label_853
	movaps	xmm0,  xmmword ptr [word ptr [rip + label_848]]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp + 0x14], 0
	mov	dword ptr [rsp + 0x10], 0
	mov	dword ptr [rsp + 0x18], 0
	xor	ebx, ebx
	test	byte ptr [r12], 0x10
	jne	.label_856
	lea	r13, [rsp]
	nop	word ptr cs:[rax + rax]
.label_857:
	lea	rdi, [r15 + rbx]
	mov	edx, 0x8000
	sub	rdx, rbx
	mov	esi, 1
	mov	rcx, r12
	call	fread_unlocked
	add	rbx, rax
	cmp	rbx, 0x8000
	jne	.label_860
	mov	esi, 0x8000
	mov	rdi, r15
	mov	rdx, r13
	call	md5_process_block
	xor	ebx, ebx
	jmp	.label_854
	nop	dword ptr [rax]
.label_860:
	test	rax, rax
	je	.label_855
.label_854:
	test	byte ptr [r12], 0x10
	je	.label_857
	jmp	.label_858
.label_855:
	test	byte ptr [r12], 0x20
	jne	.label_859
.label_858:
	test	rbx, rbx
	je	.label_856
	lea	rdx, [rsp]
	mov	rdi, r15
	mov	rsi, rbx
	call	md5_process_bytes
.label_856:
	mov	eax, dword ptr [rsp + 0x18]
	cmp	rax, 0x38
	mov	ecx, 0x10
	mov	ebx, 0x20
	cmovb	rbx, rcx
	mov	ecx, dword ptr [rsp + 0x10]
	add	ecx, eax
	mov	dword ptr [rsp + 0x10], ecx
	jae	.label_861
	inc	dword ptr [rsp + 0x14]
.label_861:
	lea	edx, [rcx*8]
	lea	r12, [rsp + 0x1c]
	mov	dword ptr [rsp + rbx*4 + 0x14], edx
	mov	edx, dword ptr [rsp + 0x14]
	shld	edx, ecx, 3
	mov	dword ptr [rsp + rbx*4 + 0x18], edx
	lea	rdi, [rsp + rax + 0x1c]
	lea	rdx, [rbx*4 - 8]
	sub	rdx, rax
	mov	esi, OFFSET FLAT:fillbuf_0
	call	memcpy
	shl	rbx, 2
	lea	rdx, [rsp]
	mov	rdi, r12
	mov	rsi, rbx
	call	md5_process_block
	movaps	xmm0, xmmword ptr [rsp]
	movups	xmmword ptr [r14], xmm0
	mov	rdi, r15
	call	free
	xor	eax, eax
.label_853:
	add	rsp, 0xa0
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	ret	
.label_859:
	mov	rdi, r15
	call	free
	mov	eax, 1
	jmp	.label_853
	nop	
	.section	.text
	.align	16
	#Procedure 0x40c7e0

	.globl md5_process_bytes
	.type md5_process_bytes, @function
md5_process_bytes:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	r14, rdx
	mov	r12, rsi
	mov	r15, rdi
	mov	ebx, dword ptr [r14 + 0x18]
	test	rbx, rbx
	je	.label_862
	mov	r13d, 0x80
	sub	r13, rbx
	cmp	r13, r12
	cmova	r13, r12
	lea	rdi, [r14 + rbx + 0x1c]
	mov	rsi, r15
	mov	rdx, r13
	call	memcpy
	add	rbx, r13
	mov	dword ptr [r14 + 0x18], ebx
	cmp	ebx, 0x41
	jb	.label_866
	lea	rbp, [r14 + 0x1c]
	mov	esi, ebx
	and	esi, 0xffffffc0
	mov	rdi, rbp
	mov	rdx, r14
	call	md5_process_block
	mov	edx, dword ptr [r14 + 0x18]
	and	edx, 0x3f
	mov	dword ptr [r14 + 0x18], edx
	and	rbx, 0xffffffffffffffc0
	add	rbx, rbp
	mov	rdi, rbp
	mov	rsi, rbx
	call	memcpy
.label_866:
	add	r15, r13
	sub	r12, r13
.label_862:
	cmp	r12, 0x40
	jb	.label_863
	mov	rbx, r12
	and	rbx, 0xffffffffffffffc0
	mov	rdi, r15
	mov	rsi, rbx
	mov	rdx, r14
	call	md5_process_block
	add	r15, rbx
	and	r12d, 0x3f
.label_863:
	test	r12, r12
	je	.label_864
	mov	ebx, dword ptr [r14 + 0x18]
	lea	rdi, [r14 + rbx + 0x1c]
	mov	rsi, r15
	mov	rdx, r12
	call	memcpy
	add	rbx, r12
	cmp	rbx, 0x40
	jb	.label_865
	lea	rbp, [r14 + 0x1c]
	mov	esi, 0x40
	mov	rdi, rbp
	mov	rdx, r14
	call	md5_process_block
	add	rbx, -0x40
	lea	rsi, [r14 + 0x5c]
	mov	rdi, rbp
	mov	rdx, rbx
	call	memcpy
.label_865:
	mov	dword ptr [r14 + 0x18], ebx
.label_864:
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x40c8e0
	.globl md5_buffer
	.type md5_buffer, @function
md5_buffer:

	push	r15
	push	r14
	push	rbx
	sub	rsp, 0xa0
	mov	r14, rdx
	movaps	xmm0,  xmmword ptr [word ptr [rip + label_848]]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp + 0x14], 0
	mov	dword ptr [rsp + 0x10], 0
	mov	dword ptr [rsp + 0x18], 0
	lea	rdx, [rsp]
	call	md5_process_bytes
	mov	eax, dword ptr [rsp + 0x18]
	cmp	rax, 0x38
	mov	ecx, 0x10
	mov	ebx, 0x20
	cmovb	rbx, rcx
	mov	ecx, dword ptr [rsp + 0x10]
	add	ecx, eax
	mov	dword ptr [rsp + 0x10], ecx
	jae	.label_867
	inc	dword ptr [rsp + 0x14]
.label_867:
	lea	edx, [rcx*8]
	lea	r15, [rsp + 0x1c]
	mov	dword ptr [rsp + rbx*4 + 0x14], edx
	mov	edx, dword ptr [rsp + 0x14]
	shld	edx, ecx, 3
	mov	dword ptr [rsp + rbx*4 + 0x18], edx
	lea	rdi, [rsp + rax + 0x1c]
	lea	rdx, [rbx*4 - 8]
	sub	rdx, rax
	mov	esi, OFFSET FLAT:fillbuf_0
	call	memcpy
	shl	rbx, 2
	lea	rdx, [rsp]
	mov	rdi, r15
	mov	rsi, rbx
	call	md5_process_block
	movaps	xmm0, xmmword ptr [rsp]
	movups	xmmword ptr [r14], xmm0
	mov	rax, r14
	add	rsp, 0xa0
	pop	rbx
	pop	r14
	pop	r15
	ret	
	nop	
	nop	word ptr cs:[rax + rax]
	nop	
	.section	.text
	.align	16
	#Procedure 0x40c9b0
	.globl fdadvise
	.type fdadvise, @function
fdadvise:

	jmp	posix_fadvise
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40c9c0

	.globl fadvise
	.type fadvise, @function
fadvise:
	push	rbx
	mov	ebx, esi
	test	rdi, rdi
	je	.label_868
	call	fileno
	xor	esi, esi
	xor	edx, edx
	mov	edi, eax
	mov	ecx, ebx
	pop	rbx
	jmp	posix_fadvise
.label_868:
	pop	rbx
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x40c9e0

	.globl filevercmp
	.type filevercmp, @function
filevercmp:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	r13, rsi
	mov	r15, rdi
	call	strcmp
	mov	r10d, eax
	xor	eax, eax
	test	r10d, r10d
	je	.label_872
	mov	dl, byte ptr [r15]
	mov	eax, 0xffffffff
	test	dl, dl
	je	.label_872
	mov	bl, byte ptr [r13]
	test	bl, bl
	je	.label_878
	movzx	ecx, dl
	cmp	ecx, 0x2e
	jne	.label_880
	cmp	byte ptr [r15 + 1], 0
	je	.label_872
.label_880:
	movzx	esi, bl
	cmp	esi, 0x2e
	jne	.label_884
	cmp	byte ptr [r13 + 1], 0
	je	.label_886
.label_884:
	cmp	ecx, 0x2e
	jne	.label_889
	movzx	edi, byte ptr [r15 + 1]
	cmp	edi, 0x2e
	jne	.label_889
	cmp	byte ptr [r15 + 2], 0
	je	.label_872
.label_889:
	cmp	esi, 0x2e
	jne	.label_893
	movzx	edi, byte ptr [r13 + 1]
	cmp	edi, 0x2e
	jne	.label_893
	cmp	byte ptr [r13 + 2], 0
	je	.label_897
.label_893:
	cmp	ecx, 0x2e
	jne	.label_898
	cmp	esi, 0x2e
	jne	.label_872
	inc	r13
	mov	dl, byte ptr [r15 + 1]
	inc	r15
	jmp	.label_902
.label_878:
	mov	eax, 1
	jmp	.label_872
.label_898:
	cmp	esi, 0x2e
	mov	eax, 1
	je	.label_872
.label_902:
	movabs	r11, 0x3ffffff03ffffff
	xor	ecx, ecx
	test	dl, dl
	je	.label_910
	xor	r8d, r8d
	movabs	rsi, 0x3ffffffffffffff
	and	rsi, r11
	mov	rbp, r15
	xor	edi, edi
	nop	word ptr cs:[rax + rax]
.label_891:
	test	dil, 1
	jne	.label_887
	movzx	ebx, dl
	cmp	ebx, 0x2e
	jne	.label_917
	test	rcx, rcx
	cmove	rcx, rbp
	mov	dil, 1
	jmp	.label_871
	nop	word ptr [rax + rax]
.label_887:
	movsx	edi, dl
	add	edi, -0x41
	cmp	edi, 0x39
	ja	.label_869
	bt	rsi, rdi
	jb	.label_874
.label_869:
	movzx	eax, dl
	xor	edi, edi
	cmp	eax, 0x7e
	cmovne	rcx, rdi
	jmp	.label_871
	nop	
.label_917:
	movsx	edx, dl
	lea	eax, [rdx - 0x41]
	cmp	eax, 0x39
	ja	.label_881
	bt	r11, rax
	jb	.label_871
.label_881:
	add	edx, -0x30
	cmp	edx, 0xa
	jb	.label_871
	cmp	ebx, 0x7e
	cmovne	rcx, r8
	jmp	.label_871
.label_874:
	xor	edi, edi
	nop	word ptr cs:[rax + rax]
.label_871:
	mov	dl, byte ptr [rbp + 1]
	inc	rbp
	test	dl, dl
	jne	.label_891
	jmp	.label_892
.label_886:
	mov	eax, 1
	jmp	.label_872
.label_910:
	mov	rbp, r15
.label_892:
	mov	bl, byte ptr [r13]
	xor	edx, edx
	test	bl, bl
	je	.label_896
	xor	r8d, r8d
	movabs	r9, 0x3ffffffffffffff
	and	r9, r11
	mov	r12, r13
	xor	edi, edi
	nop	dword ptr [rax]
.label_870:
	test	dil, 1
	jne	.label_900
	movzx	eax, bl
	cmp	eax, 0x2e
	jne	.label_906
	test	rdx, rdx
	cmove	rdx, r12
	mov	dil, 1
	jmp	.label_908
	nop	word ptr [rax + rax]
.label_900:
	movsx	eax, bl
	add	eax, -0x41
	cmp	eax, 0x39
	ja	.label_912
	bt	r9, rax
	jb	.label_913
.label_912:
	movzx	eax, bl
	xor	edi, edi
	cmp	eax, 0x7e
	cmovne	rdx, rdi
	jmp	.label_908
	nop	
.label_906:
	movsx	ebx, bl
	lea	esi, [rbx - 0x41]
	cmp	esi, 0x39
	ja	.label_914
	bt	r11, rsi
	jb	.label_908
.label_914:
	add	ebx, -0x30
	cmp	ebx, 0xa
	jb	.label_908
	cmp	eax, 0x7e
	cmovne	rdx, r8
	jmp	.label_908
.label_913:
	xor	edi, edi
	nop	word ptr cs:[rax + rax]
.label_908:
	mov	bl, byte ptr [r12 + 1]
	inc	r12
	test	bl, bl
	jne	.label_870
	jmp	.label_875
.label_896:
	mov	r12, r13
.label_875:
	test	rcx, rcx
	mov	r14, rbp
	cmovne	r14, rcx
	sub	r14, r15
	test	rdx, rdx
	mov	r9, r12
	cmovne	r9, rdx
	sub	r9, r13
	or	rcx, rdx
	je	.label_877
	cmp	r14, r9
	jne	.label_885
	mov	dword ptr [rsp + 4], r10d
	mov	rdi, r15
	mov	rsi, r13
	mov	rdx, r14
	mov	rbx, r11
	call	strncmp
	mov	r11, rbx
	test	eax, eax
	mov	r9, r14
	jne	.label_890
	sub	rbp, r15
	sub	r12, r13
	mov	r9, r12
	mov	r14, rbp
	jmp	.label_890
.label_877:
	mov	dword ptr [rsp + 4], r10d
	jmp	.label_890
.label_885:
	mov	dword ptr [rsp + 4], r10d
.label_890:
	xor	edx, edx
	movabs	rax, 0x3ffffffffffffff
	and	r11, rax
	mov	r8d, 0xffffffff
	xor	esi, esi
.label_879:
	cmp	rdx, r9
	jb	.label_903
	cmp	rsi, r14
	jb	.label_903
	jmp	.label_895
	nop	word ptr cs:[rax + rax]
.label_888:
	inc	rsi
	inc	rdx
.label_903:
	cmp	rsi, r14
	jae	.label_909
	movsx	eax, byte ptr [r15 + rsi]
	add	eax, -0x30
	cmp	eax, 9
	ja	.label_911
.label_909:
	cmp	rdx, r9
	jae	.label_904
	movsx	eax, byte ptr [r13 + rdx]
	add	eax, -0x30
	cmp	eax, 0xa
	jb	.label_904
.label_911:
	xor	ecx, ecx
	cmp	r14, rsi
	mov	edi, 0
	je	.label_916
	movzx	eax, byte ptr [r15 + rsi]
	lea	edi, [rax - 0x30]
	cmp	edi, 0xa
	mov	edi, 0
	jb	.label_916
	lea	edi, [rax - 0x41]
	cmp	edi, 0x39
	ja	.label_918
	bt	r11, rdi
	jb	.label_919
.label_918:
	lea	edi, [rax + 0x100]
	cmp	eax, 0x7e
	cmove	edi, r8d
	jmp	.label_916
.label_919:
	mov	edi, eax
.label_916:
	cmp	r9, rdx
	je	.label_876
	movzx	eax, byte ptr [r13 + rdx]
	lea	ebp, [rax - 0x30]
	cmp	ebp, 0xa
	jb	.label_876
	lea	ecx, [rax - 0x41]
	cmp	ecx, 0x39
	ja	.label_883
	bt	r11, rcx
	jb	.label_899
.label_883:
	lea	ecx, [rax + 0x100]
	cmp	eax, 0x7e
	cmove	ecx, r8d
	jmp	.label_876
.label_899:
	mov	ecx, eax
	nop	word ptr cs:[rax + rax]
.label_876:
	sub	edi, ecx
	je	.label_888
	jmp	.label_873
.label_904:
	dec	rsi
.label_894:
	movsx	ebp, byte ptr [r15 + rsi + 1]
	inc	rsi
	cmp	ebp, 0x30
	je	.label_894
	mov	r12, r11
	dec	rdx
	nop	word ptr cs:[rax + rax]
.label_901:
	movsx	edi, byte ptr [r13 + rdx + 1]
	inc	rdx
	cmp	edi, 0x30
	je	.label_901
	lea	eax, [rbp - 0x30]
	xor	ecx, ecx
	cmp	eax, 9
	ja	.label_905
	lea	eax, [rdi - 0x30]
	cmp	eax, 9
	ja	.label_907
	inc	rdx
	inc	rsi
	xor	ecx, ecx
	mov	r11, rsi
	mov	rax, rdx
	nop	
.label_915:
	mov	ebx, ecx
	mov	rdx, rax
	mov	rsi, r11
	sub	ebp, edi
	test	ebx, ebx
	mov	ecx, ebp
	cmovne	ecx, ebx
	mov	r10b, byte ptr [r15 + rsi]
	movsx	ebp, r10b
	lea	eax, [rbp - 0x30]
	cmp	eax, 9
	ja	.label_882
	movsx	edi, byte ptr [r13 + rdx]
	lea	ebx, [rdi - 0x30]
	lea	rax, [rdx + 1]
	lea	r11, [rsi + 1]
	cmp	ebx, 0xa
	jb	.label_915
	jmp	.label_882
.label_905:
	mov	r10b, bpl
	jmp	.label_882
.label_907:
	mov	r10b, bpl
.label_882:
	movsx	eax, r10b
	add	eax, -0x30
	mov	edi, 1
	cmp	eax, 0xa
	mov	r11, r12
	jb	.label_873
	movsx	eax, byte ptr [r13 + rdx]
	add	eax, -0x30
	mov	edi, 0xffffffff
	cmp	eax, 0xa
	jb	.label_873
	test	ecx, ecx
	mov	edi, ecx
	je	.label_879
	jmp	.label_873
.label_897:
	mov	eax, 1
	jmp	.label_872
.label_895:
	xor	edi, edi
.label_873:
	test	edi, edi
	mov	eax, dword ptr [rsp + 4]
	cmovne	eax, edi
.label_872:
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	nop	
	.section	.text
	.align	16
	#Procedure 0x40ce50

	.globl hard_locale
	.type hard_locale, @function
hard_locale:
	push	rbx
	xor	esi, esi
	call	setlocale
	mov	bl, 1
	test	rax, rax
	je	.label_921
	movzx	ecx, byte ptr [rax]
	cmp	ecx, 0x43
	jne	.label_922
	cmp	byte ptr [rax + 1], 0
	je	.label_920
.label_922:
	mov	esi, OFFSET FLAT:.str.1_2
	mov	rdi, rax
	call	strcmp
	test	eax, eax
	jne	.label_921
.label_920:
	xor	ebx, ebx
.label_921:
	mov	al, bl
	pop	rbx
	ret	
	nop	word ptr cs:[rax + rax]
	nop	
	.section	.text
	.align	16
	#Procedure 0x40ce90
	.globl hash_get_n_buckets
	.type hash_get_n_buckets, @function
hash_get_n_buckets:

	mov	rax, qword ptr [rdi + 0x10]
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40cea0
	.globl hash_get_n_buckets_used
	.type hash_get_n_buckets_used, @function
hash_get_n_buckets_used:

	mov	rax, qword ptr [rdi + 0x18]
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40ceb0
	.globl hash_get_n_entries
	.type hash_get_n_entries, @function
hash_get_n_entries:

	mov	rax, qword ptr [rdi + 0x20]
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40cec0
	.globl hash_get_max_bucket_length
	.type hash_get_max_bucket_length, @function
hash_get_max_bucket_length:

	mov	rcx, qword ptr [rdi]
	mov	rdx, qword ptr [rdi + 8]
	xor	eax, eax
	cmp	rcx, rdx
	jae	.label_923
	mov	rdi, rcx
	not	rdi
	add	rdi, rdx
	mov	rsi, rdi
	shr	rsi, 4
	xor	eax, eax
	bt	rdi, 4
	jb	.label_928
	xor	eax, eax
	cmp	qword ptr [rcx], 0
	je	.label_926
	mov	rdi, rcx
	nop	word ptr cs:[rax + rax]
.label_924:
	mov	rdi, qword ptr [rdi + 8]
	inc	rax
	test	rdi, rdi
	jne	.label_924
.label_926:
	add	rcx, 0x10
.label_928:
	test	rsi, rsi
	je	.label_923
	nop	word ptr cs:[rax + rax]
.label_930:
	cmp	qword ptr [rcx], 0
	mov	esi, 0
	mov	rdi, rcx
	je	.label_931
	nop	
.label_927:
	mov	rdi, qword ptr [rdi + 8]
	inc	rsi
	test	rdi, rdi
	jne	.label_927
	cmp	rsi, rax
	cmova	rax, rsi
.label_931:
	cmp	qword ptr [rcx + 0x10], 0
	je	.label_925
	lea	rdi, [rcx + 0x10]
	xor	esi, esi
.label_929:
	mov	rdi, qword ptr [rdi + 8]
	inc	rsi
	test	rdi, rdi
	jne	.label_929
	cmp	rsi, rax
	cmova	rax, rsi
.label_925:
	add	rcx, 0x20
	cmp	rcx, rdx
	jb	.label_930
.label_923:
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x40cf70
	.globl hash_table_ok
	.type hash_table_ok, @function
hash_table_ok:

	mov	rcx, qword ptr [rdi]
	mov	r9, qword ptr [rdi + 8]
	xor	edx, edx
	cmp	rcx, r9
	mov	esi, 0
	jae	.label_935
	mov	rax, rcx
	not	rax
	add	rax, r9
	mov	r8, rax
	shr	r8, 4
	xor	edx, edx
	bt	rax, 4
	jb	.label_934
	xor	edx, edx
	cmp	qword ptr [rcx], 0
	je	.label_940
	mov	esi, 1
	mov	rax, rcx
.label_942:
	inc	rdx
	mov	rax, qword ptr [rax + 8]
	test	rax, rax
	jne	.label_942
	jmp	.label_943
.label_934:
	xor	esi, esi
	jmp	.label_944
.label_940:
	xor	esi, esi
.label_943:
	add	rcx, 0x10
.label_944:
	test	r8, r8
	je	.label_935
	nop	dword ptr [rax]
.label_936:
	cmp	qword ptr [rcx], 0
	mov	rax, rcx
	je	.label_937
	nop	dword ptr [rax]
.label_933:
	inc	rdx
	mov	rax, qword ptr [rax + 8]
	test	rax, rax
	jne	.label_933
	inc	rsi
.label_937:
	cmp	qword ptr [rcx + 0x10], 0
	je	.label_941
	lea	rax, [rcx + 0x10]
	nop	word ptr [rax + rax]
.label_932:
	inc	rdx
	mov	rax, qword ptr [rax + 8]
	test	rax, rax
	jne	.label_932
	inc	rsi
.label_941:
	add	rcx, 0x20
	cmp	rcx, r9
	jb	.label_936
.label_935:
	cmp	rsi, qword ptr [rdi + 0x18]
	jne	.label_938
	mov	al, 1
	cmp	rdx, qword ptr [rdi + 0x20]
	je	.label_939
.label_938:
	xor	eax, eax
.label_939:
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x40d030
	.globl hash_print_statistics
	.type hash_print_statistics, @function
hash_print_statistics:

	push	r15
	push	r14
	push	r12
	push	rbx
	push	rax
	mov	r15, rsi
	mov	rcx, qword ptr [rdi + 0x20]
	mov	r12, qword ptr [rdi + 0x10]
	mov	r14, qword ptr [rdi + 0x18]
	mov	rax, qword ptr [rdi]
	mov	rdx, qword ptr [rdi + 8]
	xor	ebx, ebx
	cmp	rax, rdx
	jae	.label_945
	mov	rdi, rax
	not	rdi
	add	rdi, rdx
	mov	rsi, rdi
	shr	rsi, 4
	xor	ebx, ebx
	bt	rdi, 4
	jb	.label_952
	xor	ebx, ebx
	cmp	qword ptr [rax], 0
	je	.label_950
	mov	rdi, rax
	nop	dword ptr [rax]
.label_947:
	mov	rdi, qword ptr [rdi + 8]
	inc	rbx
	test	rdi, rdi
	jne	.label_947
.label_950:
	add	rax, 0x10
.label_952:
	test	rsi, rsi
	je	.label_945
	nop	word ptr cs:[rax + rax]
.label_951:
	cmp	qword ptr [rax], 0
	mov	esi, 0
	mov	rdi, rax
	je	.label_948
	nop	
.label_953:
	mov	rdi, qword ptr [rdi + 8]
	inc	rsi
	test	rdi, rdi
	jne	.label_953
	cmp	rsi, rbx
	cmova	rbx, rsi
.label_948:
	cmp	qword ptr [rax + 0x10], 0
	je	.label_946
	lea	rdi, [rax + 0x10]
	xor	esi, esi
.label_949:
	mov	rdi, qword ptr [rdi + 8]
	inc	rsi
	test	rdi, rdi
	jne	.label_949
	cmp	rsi, rbx
	cmova	rbx, rsi
.label_946:
	add	rax, 0x20
	cmp	rax, rdx
	jb	.label_951
.label_945:
	mov	esi, 1
	mov	edx, OFFSET FLAT:.str_5
	xor	eax, eax
	mov	rdi, r15
	call	__fprintf_chk
	mov	esi, 1
	mov	edx, OFFSET FLAT:.str.1_3
	xor	eax, eax
	mov	rdi, r15
	mov	rcx, r12
	call	__fprintf_chk
	movq	xmm1, r14
	movdqa	xmm2,  xmmword ptr [word ptr [rip + label_233]]
	punpckldq	xmm1, xmm2
	movapd	xmm3,  xmmword ptr [word ptr [rip + label_234]]
	subpd	xmm1, xmm3
	pshufd	xmm0, xmm1, 0x4e
	addpd	xmm0, xmm1
	mulsd	xmm0,  qword ptr [word ptr [rip + label_311]]
	movq	xmm1, r12
	punpckldq	xmm1, xmm2
	subpd	xmm1, xmm3
	pshufd	xmm2, xmm1, 0x4e
	addpd	xmm2, xmm1
	divsd	xmm0, xmm2
	mov	esi, 1
	mov	edx, OFFSET FLAT:.str.2_1
	mov	al, 1
	mov	rdi, r15
	mov	rcx, r14
	call	__fprintf_chk
	mov	esi, 1
	mov	edx, OFFSET FLAT:.str.3_1
	xor	eax, eax
	mov	rdi, r15
	mov	rcx, rbx
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	jmp	__fprintf_chk
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40d1a0
	.globl hash_lookup
	.type hash_lookup, @function
hash_lookup:

	push	r15
	push	r14
	push	r12
	push	rbx
	push	rax
	mov	r12, rsi
	mov	r14, rdi
	mov	rsi, qword ptr [r14 + 0x10]
	mov	rdi, r12
	call	qword ptr [r14 + 0x30]
	cmp	rax, qword ptr [r14 + 0x10]
	jae	.label_958
	mov	rbx, qword ptr [r14]
	shl	rax, 4
	mov	rsi, qword ptr [rbx + rax]
	xor	r15d, r15d
	test	rsi, rsi
	je	.label_955
	add	rbx, rax
	je	.label_955
	cmp	rsi, r12
	je	.label_957
	xor	r15d, r15d
	nop	
.label_956:
	mov	rdi, r12
	call	qword ptr [r14 + 0x38]
	test	al, al
	jne	.label_954
	mov	rbx, qword ptr [rbx + 8]
	test	rbx, rbx
	je	.label_955
	mov	rsi, qword ptr [rbx]
	cmp	rsi, r12
	jne	.label_956
.label_957:
	mov	r15, r12
	jmp	.label_955
.label_954:
	mov	r15, qword ptr [rbx]
.label_955:
	mov	rax, r15
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
.label_958:
	call	abort
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40d220
	.globl hash_get_first
	.type hash_get_first, @function
hash_get_first:

	xor	eax, eax
	cmp	qword ptr [rdi + 0x20], 0
	je	.label_959
	mov	rcx, qword ptr [rdi]
	mov	rdx, qword ptr [rdi + 8]
	jmp	.label_962
	nop	word ptr cs:[rax + rax]
.label_961:
	add	rcx, 0x10
.label_962:
	cmp	rcx, rdx
	jae	.label_960
	mov	rax, qword ptr [rcx]
	test	rax, rax
	je	.label_961
.label_959:
	ret	
.label_960:
	push	rax
	call	abort
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40d260
	.globl hash_get_next
	.type hash_get_next, @function
hash_get_next:

	push	r14
	push	rbx
	push	rax
	mov	rbx, rsi
	mov	r14, rdi
	mov	rsi, qword ptr [r14 + 0x10]
	mov	rdi, rbx
	call	qword ptr [r14 + 0x30]
	cmp	rax, qword ptr [r14 + 0x10]
	jae	.label_966
	mov	rcx, qword ptr [r14]
	shl	rax, 4
	lea	rdx, [rcx + rax]
	nop	word ptr cs:[rax + rax]
.label_967:
	cmp	qword ptr [rdx], rbx
	mov	rdx, qword ptr [rdx + 8]
	je	.label_965
	test	rdx, rdx
	jne	.label_967
	jmp	.label_963
.label_965:
	test	rdx, rdx
	je	.label_963
	mov	rax, qword ptr [rdx]
	jmp	.label_964
.label_963:
	mov	rdx, qword ptr [r14 + 8]
	lea	rcx, [rax + rcx + 0x10]
	nop	word ptr cs:[rax + rax]
.label_968:
	cmp	rcx, rdx
	mov	eax, 0
	jae	.label_964
	mov	rax, qword ptr [rcx]
	add	rcx, 0x10
	test	rax, rax
	je	.label_968
.label_964:
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
.label_966:
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40d2f0
	.globl hash_get_entries
	.type hash_get_entries, @function
hash_get_entries:

	mov	r9, qword ptr [rdi]
	mov	r8, qword ptr [rdi + 8]
	xor	eax, eax
	jmp	.label_969
	nop	dword ptr [rax + rax]
.label_972:
	add	r9, 0x10
.label_969:
	cmp	r9, r8
	jae	.label_970
	cmp	qword ptr [r9], 0
	je	.label_972
	test	r9, r9
	mov	r10, r9
	je	.label_972
	nop	word ptr [rax + rax]
.label_971:
	cmp	rax, rdx
	jae	.label_970
	mov	rcx, qword ptr [r10]
	mov	qword ptr [rsi + rax*8], rcx
	inc	rax
	mov	r10, qword ptr [r10 + 8]
	test	r10, r10
	jne	.label_971
	mov	r8, qword ptr [rdi + 8]
	jmp	.label_972
.label_970:
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x40d340
	.globl hash_do_for_each
	.type hash_do_for_each, @function
hash_do_for_each:

	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	r14, rdx
	mov	r15, rsi
	mov	r12, rdi
	mov	r13, qword ptr [r12]
	mov	rax, qword ptr [r12 + 8]
	xor	ebx, ebx
	jmp	.label_973
	nop	word ptr cs:[rax + rax]
.label_975:
	add	r13, 0x10
.label_973:
	cmp	r13, rax
	jae	.label_976
	mov	rdi, qword ptr [r13]
	test	rdi, rdi
	je	.label_975
	test	r13, r13
	je	.label_975
	mov	rsi, r14
	call	r15
	test	al, al
	mov	rbp, r13
	je	.label_976
	nop	word ptr cs:[rax + rax]
.label_977:
	inc	rbx
	mov	rbp, qword ptr [rbp + 8]
	test	rbp, rbp
	je	.label_974
	mov	rdi, qword ptr [rbp]
	mov	rsi, r14
	call	r15
	test	al, al
	jne	.label_977
	jmp	.label_976
	nop	dword ptr [rax]
.label_974:
	mov	rax, qword ptr [r12 + 8]
	jmp	.label_975
.label_976:
	mov	rax, rbx
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
	.align	16
	#Procedure 0x40d3e0
	.globl hash_string
	.type hash_string, @function
hash_string:

	mov	al, byte ptr [rdi]
	xor	edx, edx
	test	al, al
	je	.label_978
	inc	rdi
	xor	edx, edx
	nop	dword ptr [rax]
.label_979:
	mov	rcx, rdx
	shl	rcx, 5
	sub	rcx, rdx
	movzx	eax, al
	add	rax, rcx
	xor	edx, edx
	div	rsi
	mov	al, byte ptr [rdi]
	inc	rdi
	test	al, al
	jne	.label_979
.label_978:
	mov	rax, rdx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40d420
	.globl hash_reset_tuning
	.type hash_reset_tuning, @function
hash_reset_tuning:

	mov	eax,  dword ptr [dword ptr [rip + label_980]]
	mov	dword ptr [rdi + 0x10], eax
	movups	xmm0,  xmmword ptr [word ptr [rip + default_tuning]]
	movups	xmmword ptr [rdi], xmm0
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40d440

	.globl hash_initialize
	.type hash_initialize, @function
hash_initialize:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	r14, r8
	mov	rbx, rsi
	mov	r12, rdi
	test	rdx, rdx
	mov	r13d, OFFSET FLAT:raw_hasher
	cmovne	r13, rdx
	test	rcx, rcx
	mov	ebp, OFFSET FLAT:raw_comparator
	cmovne	rbp, rcx
	mov	edi, 0x50
	call	malloc
	mov	r15, rax
	xor	eax, eax
	test	r15, r15
	je	.label_985
	test	rbx, rbx
	mov	eax, OFFSET FLAT:default_tuning
	cmove	rbx, rax
	mov	qword ptr [r15 + 0x28], rbx
	cmp	rbx, rax
	je	.label_982
	movss	xmm0, dword ptr [rbx + 8]
	ucomiss	xmm0,  dword ptr [dword ptr [rip + label_987]]
	jbe	.label_983
	movss	xmm1,  dword ptr [dword ptr [rip + label_991]]
	ucomiss	xmm1, xmm0
	jbe	.label_983
	movss	xmm1, dword ptr [rbx + 0xc]
	ucomiss	xmm1,  dword ptr [dword ptr [rip + label_996]]
	jbe	.label_983
	movss	xmm1, dword ptr [rbx]
	xorps	xmm2, xmm2
	ucomiss	xmm1, xmm2
	jb	.label_983
	addss	xmm1,  dword ptr [dword ptr [rip + label_987]]
	ucomiss	xmm0, xmm1
	jbe	.label_983
	movss	xmm0, dword ptr [rbx + 4]
	movss	xmm2,  dword ptr [dword ptr [rip + label_992]]
	ucomiss	xmm2, xmm0
	jb	.label_983
	ucomiss	xmm0, xmm1
	jbe	.label_983
.label_982:
	cmp	byte ptr [rbx + 0x10], 0
	jne	.label_988
	mov	eax, r12d
	and	eax, 1
	test	r12, r12
	js	.label_986
	xorps	xmm0, xmm0
	cvtsi2ss	xmm0, r12
	jmp	.label_989
.label_986:
	shr	r12, 1
	or	rax, r12
	xorps	xmm0, xmm0
	cvtsi2ss	xmm0, rax
	addss	xmm0, xmm0
.label_989:
	divss	xmm0, dword ptr [rbx + 8]
	movss	xmm1,  dword ptr [dword ptr [rip + label_994]]
	movaps	xmm2, xmm0
	subss	xmm2, xmm1
	cvttss2si	rax, xmm2
	movabs	rcx, 0x8000000000000000
	xor	rcx, rax
	cvttss2si	r12, xmm0
	ucomiss	xmm0, xmm1
	cmovae	r12, rcx
	ucomiss	xmm0,  dword ptr [dword ptr [rip + label_995]]
	jae	.label_983
.label_988:
	cmp	r12, 0xa
	mov	ebx, 0xa
	cmovae	rbx, r12
	or	rbx, 1
	jmp	.label_990
	nop	
.label_993:
	add	rbx, 2
.label_990:
	cmp	rbx, -1
	je	.label_983
	cmp	rbx, 0xa
	mov	esi, 0xc
	mov	edi, 9
	mov	ecx, 3
	jb	.label_981
	nop	word ptr cs:[rax + rax]
.label_984:
	xor	edx, edx
	mov	rax, rbx
	div	rcx
	test	rdx, rdx
	je	.label_981
	lea	rdi, [rdi + rsi + 4]
	add	rcx, 2
	add	rsi, 8
	cmp	rdi, rbx
	jb	.label_984
.label_981:
	xor	edx, edx
	mov	rax, rbx
	div	rcx
	test	rdx, rdx
	je	.label_993
	mov	rax, rbx
	shr	rax, 0x3c
	jne	.label_983
	mov	qword ptr [r15 + 0x10], rbx
	test	rbx, rbx
	je	.label_983
	mov	esi, 0x10
	mov	rdi, rbx
	call	rpl_calloc
	mov	qword ptr [r15], rax
	test	rax, rax
	je	.label_983
	shl	rbx, 4
	add	rax, rbx
	mov	qword ptr [r15 + 8], rax
	xorps	xmm0, xmm0
	movups	xmmword ptr [r15 + 0x18], xmm0
	mov	qword ptr [r15 + 0x30], r13
	mov	qword ptr [r15 + 0x38], rbp
	mov	qword ptr [r15 + 0x40], r14
	mov	qword ptr [r15 + 0x48], 0
	mov	rax, r15
	jmp	.label_985
.label_983:
	mov	rdi, r15
	call	free
	xor	eax, eax
.label_985:
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
	.align	16
	#Procedure 0x40d660

	.globl raw_hasher
	.type raw_hasher, @function
raw_hasher:
	rol	rdi, 0x3d
	xor	edx, edx
	mov	rax, rdi
	div	rsi
	mov	rax, rdx
	ret	
	.section	.text
	.align	16
	#Procedure 0x40d670

	.globl raw_comparator
	.type raw_comparator, @function
raw_comparator:
	cmp	rdi, rsi
	sete	al
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40d680
	.globl hash_clear
	.type hash_clear, @function
hash_clear:

	push	r15
	push	r14
	push	rbx
	mov	r15, rdi
	mov	r14, qword ptr [r15]
	mov	rax, qword ptr [r15 + 8]
	jmp	.label_997
	nop	word ptr cs:[rax + rax]
.label_1000:
	add	r14, 0x10
.label_997:
	cmp	r14, rax
	jae	.label_999
	cmp	qword ptr [r14], 0
	je	.label_1000
	mov	rbx, qword ptr [r14 + 8]
	mov	rax, qword ptr [r15 + 0x40]
	test	rax, rax
	setne	cl
	test	rbx, rbx
	je	.label_1001
	nop	word ptr cs:[rax + rax]
.label_1003:
	test	cl, 1
	je	.label_1002
	mov	rdi, qword ptr [rbx]
	call	rax
	mov	rax, qword ptr [r15 + 0x40]
.label_1002:
	mov	qword ptr [rbx], 0
	mov	rdx, qword ptr [rbx + 8]
	mov	rcx, qword ptr [r15 + 0x48]
	mov	qword ptr [rbx + 8], rcx
	mov	qword ptr [r15 + 0x48], rbx
	test	rax, rax
	setne	cl
	test	rdx, rdx
	mov	rbx, rdx
	jne	.label_1003
.label_1001:
	test	cl, cl
	je	.label_998
	mov	rdi, qword ptr [r14]
	call	rax
.label_998:
	xorps	xmm0, xmm0
	movups	xmmword ptr [r14], xmm0
	mov	rax, qword ptr [r15 + 8]
	jmp	.label_1000
.label_999:
	xorps	xmm0, xmm0
	movups	xmmword ptr [r15 + 0x18], xmm0
	pop	rbx
	pop	r14
	pop	r15
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40d730
	.globl hash_free
	.type hash_free, @function
hash_free:

	push	r15
	push	r14
	push	rbx
	mov	r14, rdi
	cmp	qword ptr [r14 + 0x40], 0
	je	.label_1010
	cmp	qword ptr [r14 + 0x20], 0
	je	.label_1010
	mov	r15, qword ptr [r14]
	mov	rax, qword ptr [r14 + 8]
	jmp	.label_1006
	nop	
.label_1005:
	add	r15, 0x10
.label_1006:
	cmp	r15, rax
	jae	.label_1010
	mov	rdi, qword ptr [r15]
	test	rdi, rdi
	je	.label_1005
	test	r15, r15
	je	.label_1005
	call	qword ptr [r14 + 0x40]
	mov	rbx, qword ptr [r15 + 8]
	jmp	.label_1012
.label_1014:
	mov	rdi, qword ptr [rbx]
	call	qword ptr [r14 + 0x40]
	mov	rbx, qword ptr [rbx + 8]
.label_1012:
	test	rbx, rbx
	jne	.label_1014
	mov	rax, qword ptr [r14 + 8]
	jmp	.label_1005
.label_1010:
	mov	r15, qword ptr [r14]
	mov	rax, qword ptr [r14 + 8]
	jmp	.label_1011
	nop	
.label_1004:
	add	r15, 0x10
.label_1011:
	cmp	r15, rax
	jae	.label_1008
	mov	rdi, qword ptr [r15 + 8]
	test	rdi, rdi
	je	.label_1004
	nop	word ptr cs:[rax + rax]
.label_1013:
	mov	rbx, qword ptr [rdi + 8]
	call	free
	test	rbx, rbx
	mov	rdi, rbx
	jne	.label_1013
	mov	rax, qword ptr [r14 + 8]
	jmp	.label_1004
.label_1008:
	mov	rdi, qword ptr [r14 + 0x48]
	test	rdi, rdi
	je	.label_1007
.label_1009:
	mov	rbx, qword ptr [rdi + 8]
	call	free
	test	rbx, rbx
	mov	rdi, rbx
	jne	.label_1009
.label_1007:
	mov	rdi, qword ptr [r14]
	call	free
	mov	rdi, r14
	pop	rbx
	pop	r14
	pop	r15
	jmp	free
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40d800

	.globl hash_rehash
	.type hash_rehash, @function
hash_rehash:
	push	rbp
	push	r15
	push	r14
	push	r12
	push	rbx
	sub	rsp, 0x50
	mov	r14, rdi
	mov	rax, qword ptr [r14 + 0x28]
	cmp	byte ptr [rax + 0x10], 0
	jne	.label_1015
	mov	ecx, esi
	and	ecx, 1
	test	rsi, rsi
	js	.label_1024
	cvtsi2ss	xmm0, rsi
	jmp	.label_1028
.label_1024:
	shr	rsi, 1
	or	rcx, rsi
	cvtsi2ss	xmm0, rcx
	addss	xmm0, xmm0
.label_1028:
	divss	xmm0, dword ptr [rax + 8]
	movss	xmm1,  dword ptr [dword ptr [rip + label_994]]
	movaps	xmm2, xmm0
	subss	xmm2, xmm1
	cvttss2si	rax, xmm2
	movabs	rcx, 0x8000000000000000
	xor	rcx, rax
	cvttss2si	rsi, xmm0
	ucomiss	xmm0, xmm1
	cmovae	rsi, rcx
	ucomiss	xmm0,  dword ptr [dword ptr [rip + label_995]]
	jae	.label_1023
.label_1015:
	cmp	rsi, 0xa
	mov	ebx, 0xa
	cmovae	rbx, rsi
	or	rbx, 1
	jmp	.label_1032
	nop	dword ptr [rax + rax]
.label_1026:
	add	rbx, 2
.label_1032:
	cmp	rbx, -1
	je	.label_1023
	cmp	rbx, 0xa
	mov	esi, 0xc
	mov	edi, 9
	mov	ecx, 3
	jb	.label_1016
	nop	word ptr cs:[rax + rax]
.label_1021:
	xor	edx, edx
	mov	rax, rbx
	div	rcx
	test	rdx, rdx
	je	.label_1016
	lea	rdi, [rdi + rsi + 4]
	add	rcx, 2
	add	rsi, 8
	cmp	rdi, rbx
	jb	.label_1021
.label_1016:
	xor	edx, edx
	mov	rax, rbx
	div	rcx
	test	rdx, rdx
	je	.label_1026
	lea	rax, [rbx - 1]
	movabs	rcx, 0xffffffffffffffe
	cmp	rax, rcx
	ja	.label_1023
	mov	bpl, 1
	cmp	rbx, qword ptr [r14 + 0x10]
	je	.label_1017
	mov	esi, 0x10
	mov	rdi, rbx
	call	rpl_calloc
	mov	qword ptr [rsp], rax
	test	rax, rax
	je	.label_1023
	mov	qword ptr [rsp + 0x10], rbx
	shl	rbx, 4
	add	rax, rbx
	mov	qword ptr [rsp + 8], rax
	xorps	xmm0, xmm0
	movups	xmmword ptr [rsp + 0x18], xmm0
	movups	xmm0, xmmword ptr [r14 + 0x28]
	movups	xmmword ptr [rsp + 0x28], xmm0
	movups	xmm0, xmmword ptr [r14 + 0x38]
	movups	xmmword ptr [rsp + 0x38], xmm0
	mov	rax, qword ptr [r14 + 0x48]
	mov	qword ptr [rsp + 0x48], rax
	lea	rdi, [rsp]
	xor	edx, edx
	mov	rsi, r14
	call	transfer_entries
	test	al, al
	je	.label_1030
	mov	rdi, qword ptr [r14]
	call	free
	movaps	xmm0, xmmword ptr [rsp]
	movups	xmmword ptr [r14], xmm0
	movaps	xmm0, xmmword ptr [rsp + 0x10]
	movups	xmmword ptr [r14 + 0x10], xmm0
	mov	rax, qword ptr [rsp + 0x48]
	mov	qword ptr [r14 + 0x48], rax
	jmp	.label_1017
.label_1030:
	mov	rax, qword ptr [rsp + 0x48]
	mov	qword ptr [r14 + 0x48], rax
	mov	r12, qword ptr [rsp]
	mov	r15, qword ptr [rsp + 8]
	jmp	.label_1025
	nop	
.label_1019:
	add	r12, 0x10
.label_1025:
	cmp	r12, r15
	jae	.label_1031
	cmp	qword ptr [r12], 0
	je	.label_1019
	mov	rbp, qword ptr [r12 + 8]
	test	rbp, rbp
	je	.label_1018
	mov	rsi, qword ptr [r14 + 0x10]
	nop	word ptr cs:[rax + rax]
.label_1033:
	mov	rbx, qword ptr [rbp]
	mov	rdi, rbx
	call	qword ptr [r14 + 0x30]
	mov	rsi, qword ptr [r14 + 0x10]
	cmp	rax, rsi
	jae	.label_1029
	mov	rdx, qword ptr [r14]
	mov	rcx, qword ptr [rbp + 8]
	shl	rax, 4
	cmp	qword ptr [rdx + rax], 0
	je	.label_1022
	mov	rdi, qword ptr [rdx + rax + 8]
	mov	qword ptr [rbp + 8], rdi
	mov	qword ptr [rdx + rax + 8], rbp
	jmp	.label_1020
	nop	word ptr [rax + rax]
.label_1022:
	add	rdx, rax
	mov	qword ptr [rdx], rbx
	inc	qword ptr [r14 + 0x18]
	mov	qword ptr [rbp], 0
	mov	rax, qword ptr [r14 + 0x48]
	mov	qword ptr [rbp + 8], rax
	mov	qword ptr [r14 + 0x48], rbp
.label_1020:
	test	rcx, rcx
	mov	rbp, rcx
	jne	.label_1033
.label_1018:
	mov	qword ptr [r12 + 8], 0
	jmp	.label_1019
.label_1031:
	lea	rsi, [rsp]
	xor	edx, edx
	mov	rdi, r14
	call	transfer_entries
	test	al, al
	je	.label_1027
	mov	rdi, qword ptr [rsp]
	call	free
.label_1023:
	xor	ebp, ebp
.label_1017:
	mov	al, bpl
	add	rsp, 0x50
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_1029:
	call	abort
.label_1027:
	call	abort
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40da90

	.globl transfer_entries
	.type transfer_entries, @function
transfer_entries:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	dword ptr [rsp + 4], edx
	mov	r12, rsi
	mov	rbp, rdi
	mov	r14, qword ptr [r12]
	mov	al, 1
	cmp	r14, qword ptr [r12 + 8]
	jae	.label_1038
	nop	word ptr cs:[rax + rax]
.label_1036:
	mov	r13, qword ptr [r14]
	test	r13, r13
	je	.label_1034
	mov	r15, qword ptr [r14 + 8]
	test	r15, r15
	je	.label_1037
	mov	rsi, qword ptr [rbp + 0x10]
	nop	dword ptr [rax]
.label_1046:
	mov	rbx, qword ptr [r15]
	mov	rdi, rbx
	call	qword ptr [rbp + 0x30]
	mov	rsi, qword ptr [rbp + 0x10]
	cmp	rax, rsi
	jae	.label_1042
	mov	rdx, qword ptr [rbp]
	mov	rcx, qword ptr [r15 + 8]
	shl	rax, 4
	cmp	qword ptr [rdx + rax], 0
	je	.label_1044
	mov	rdi, qword ptr [rdx + rax + 8]
	mov	qword ptr [r15 + 8], rdi
	mov	qword ptr [rdx + rax + 8], r15
	jmp	.label_1045
	nop	dword ptr [rax]
.label_1044:
	add	rdx, rax
	mov	qword ptr [rdx], rbx
	inc	qword ptr [rbp + 0x18]
	mov	qword ptr [r15], 0
	mov	rax, qword ptr [rbp + 0x48]
	mov	qword ptr [r15 + 8], rax
	mov	qword ptr [rbp + 0x48], r15
.label_1045:
	test	rcx, rcx
	mov	r15, rcx
	jne	.label_1046
	mov	r13, qword ptr [r14]
.label_1037:
	mov	qword ptr [r14 + 8], 0
	mov	eax, dword ptr [rsp + 4]
	test	al, al
	jne	.label_1034
	mov	rsi, qword ptr [rbp + 0x10]
	mov	rdi, r13
	call	qword ptr [rbp + 0x30]
	mov	rbx, rax
	cmp	rbx, qword ptr [rbp + 0x10]
	jae	.label_1040
	mov	r15, qword ptr [rbp]
	shl	rbx, 4
	cmp	qword ptr [r15 + rbx], 0
	je	.label_1043
	mov	rax, qword ptr [rbp + 0x48]
	test	rax, rax
	je	.label_1047
	mov	rcx, qword ptr [rax + 8]
	mov	qword ptr [rbp + 0x48], rcx
	jmp	.label_1035
.label_1043:
	add	r15, rbx
	mov	qword ptr [r15], r13
	inc	qword ptr [rbp + 0x18]
	jmp	.label_1039
.label_1047:
	mov	edi, 0x10
	call	malloc
	test	rax, rax
	je	.label_1041
.label_1035:
	mov	qword ptr [rax], r13
	mov	rcx, qword ptr [r15 + rbx + 8]
	mov	qword ptr [rax + 8], rcx
	mov	qword ptr [r15 + rbx + 8], rax
.label_1039:
	mov	qword ptr [r14], 0
	dec	qword ptr [r12 + 0x18]
.label_1034:
	add	r14, 0x10
	cmp	r14, qword ptr [r12 + 8]
	jb	.label_1036
	mov	al, 1
.label_1038:
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_1041:
	xor	eax, eax
	jmp	.label_1038
.label_1042:
	call	abort
.label_1040:
	call	abort
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40dc00

	.globl hash_insert_if_absent
	.type hash_insert_if_absent, @function
hash_insert_if_absent:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	r15, rdx
	mov	r14, rsi
	mov	r13, rdi
	test	r14, r14
	je	.label_1048
	mov	rsi, qword ptr [r13 + 0x10]
	mov	rdi, r14
	call	qword ptr [r13 + 0x30]
	mov	rbp, rax
	cmp	rbp, qword ptr [r13 + 0x10]
	jae	.label_1048
	mov	rbx, qword ptr [r13]
	shl	rbp, 4
	lea	r12, [rbx + rbp]
	mov	rsi, qword ptr [rbx + rbp]
	test	rsi, rsi
	je	.label_1064
	cmp	rsi, r14
	je	.label_1070
	mov	rdi, r14
	call	qword ptr [r13 + 0x38]
	test	al, al
	je	.label_1072
	mov	rax, qword ptr [r12]
	jmp	.label_1065
.label_1070:
	mov	rax, r14
	jmp	.label_1075
.label_1072:
	mov	rax, qword ptr [rbx + rbp + 8]
	test	rax, rax
	je	.label_1064
	lea	rbp, [rbx + rbp + 8]
	nop	word ptr cs:[rax + rax]
.label_1059:
	mov	rsi, qword ptr [rax]
	cmp	rsi, r14
	je	.label_1049
	mov	rdi, r14
	call	qword ptr [r13 + 0x38]
	mov	rbp, qword ptr [rbp]
	test	al, al
	jne	.label_1057
	mov	rax, qword ptr [rbp + 8]
	add	rbp, 8
	test	rax, rax
	jne	.label_1059
	jmp	.label_1064
.label_1049:
	mov	rax, r14
	jmp	.label_1065
.label_1057:
	mov	rax, qword ptr [rbp]
.label_1065:
	test	rax, rax
	je	.label_1064
.label_1075:
	xor	ebp, ebp
	test	r15, r15
	je	.label_1054
	mov	qword ptr [r15], rax
	jmp	.label_1054
.label_1064:
	mov	rcx, qword ptr [r13 + 0x10]
	mov	rax, qword ptr [r13 + 0x18]
	mov	edx, eax
	and	edx, 1
	test	rax, rax
	js	.label_1069
	cvtsi2ss	xmm1, rax
	jmp	.label_1073
.label_1069:
	shr	rax, 1
	or	rdx, rax
	cvtsi2ss	xmm1, rdx
	addss	xmm1, xmm1
.label_1073:
	mov	rax, qword ptr [r13 + 0x28]
	movss	xmm2, dword ptr [rax + 8]
	mov	edx, ecx
	and	edx, 1
	test	rcx, rcx
	js	.label_1062
	cvtsi2ss	xmm0, rcx
	jmp	.label_1050
.label_1062:
	shr	rcx, 1
	or	rdx, rcx
	cvtsi2ss	xmm0, rdx
	addss	xmm0, xmm0
.label_1050:
	movaps	xmm3, xmm2
	mulss	xmm3, xmm0
	ucomiss	xmm1, xmm3
	jbe	.label_1060
	mov	ecx, OFFSET FLAT:default_tuning
	cmp	rax, rcx
	je	.label_1076
	ucomiss	xmm2,  dword ptr [dword ptr [rip + label_987]]
	jbe	.label_1051
	movss	xmm3,  dword ptr [dword ptr [rip + label_991]]
	ucomiss	xmm3, xmm2
	jbe	.label_1051
	movss	xmm3, dword ptr [rax + 0xc]
	ucomiss	xmm3,  dword ptr [dword ptr [rip + label_996]]
	jbe	.label_1051
	movss	xmm3, dword ptr [rax]
	xorps	xmm4, xmm4
	ucomiss	xmm3, xmm4
	jb	.label_1051
	addss	xmm3,  dword ptr [dword ptr [rip + label_987]]
	ucomiss	xmm2, xmm3
	jbe	.label_1051
	movss	xmm4, dword ptr [rax + 4]
	movss	xmm5,  dword ptr [dword ptr [rip + label_992]]
	ucomiss	xmm5, xmm4
	jb	.label_1051
	ucomiss	xmm4, xmm3
	ja	.label_1053
.label_1051:
	mov	qword ptr [word ptr [r13 + 40]], OFFSET FLAT:default_tuning
	mov	eax, OFFSET FLAT:default_tuning
	movss	xmm2,  dword ptr [dword ptr [rip + label_1052]]
	jmp	.label_1053
.label_1076:
	mov	eax, OFFSET FLAT:default_tuning
.label_1053:
	movaps	xmm3, xmm2
	mulss	xmm3, xmm0
	ucomiss	xmm1, xmm3
	jbe	.label_1060
	cmp	byte ptr [rax + 0x10], 0
	mulss	xmm0, dword ptr [rax + 0xc]
	jne	.label_1067
	mulss	xmm0, xmm2
.label_1067:
	mov	ebp, 0xffffffff
	ucomiss	xmm0,  dword ptr [dword ptr [rip + label_995]]
	jae	.label_1054
	movss	xmm1,  dword ptr [dword ptr [rip + label_994]]
	movaps	xmm2, xmm0
	subss	xmm2, xmm1
	cvttss2si	rax, xmm2
	movabs	rcx, 0x8000000000000000
	xor	rcx, rax
	cvttss2si	rsi, xmm0
	ucomiss	xmm0, xmm1
	cmovae	rsi, rcx
	mov	rdi, r13
	call	hash_rehash
	test	al, al
	je	.label_1054
	mov	rsi, qword ptr [r13 + 0x10]
	mov	rdi, r14
	call	qword ptr [r13 + 0x30]
	mov	rbp, rax
	cmp	rbp, qword ptr [r13 + 0x10]
	jae	.label_1048
	mov	r15, qword ptr [r13]
	shl	rbp, 4
	lea	r12, [r15 + rbp]
	mov	rsi, qword ptr [r15 + rbp]
	test	rsi, rsi
	je	.label_1060
	cmp	rsi, r14
	mov	rax, r14
	je	.label_1055
	mov	rdi, r14
	call	qword ptr [r13 + 0x38]
	test	al, al
	je	.label_1071
	mov	rax, qword ptr [r12]
	jmp	.label_1055
.label_1071:
	mov	rax, qword ptr [r15 + rbp + 8]
	test	rax, rax
	je	.label_1060
	lea	rbp, [r15 + rbp + 8]
.label_1077:
	mov	rsi, qword ptr [rax]
	cmp	rsi, r14
	je	.label_1074
	mov	rdi, r14
	call	qword ptr [r13 + 0x38]
	mov	rbp, qword ptr [rbp]
	test	al, al
	jne	.label_1056
	mov	rax, qword ptr [rbp + 8]
	add	rbp, 8
	test	rax, rax
	jne	.label_1077
	jmp	.label_1060
.label_1074:
	mov	rax, r14
	jmp	.label_1055
.label_1056:
	mov	rax, qword ptr [rbp]
.label_1055:
	test	rax, rax
	jne	.label_1058
.label_1060:
	cmp	qword ptr [r12], 0
	je	.label_1061
	mov	rax, qword ptr [r13 + 0x48]
	test	rax, rax
	je	.label_1063
	mov	rcx, qword ptr [rax + 8]
	mov	qword ptr [r13 + 0x48], rcx
	jmp	.label_1066
.label_1061:
	mov	qword ptr [r12], r14
	movdqu	xmm0, xmmword ptr [r13 + 0x18]
	paddq	xmm0,  xmmword ptr [word ptr [rip + label_537]]
	movdqu	xmmword ptr [r13 + 0x18], xmm0
	jmp	.label_1068
.label_1063:
	mov	edi, 0x10
	call	malloc
	mov	ebp, 0xffffffff
	test	rax, rax
	je	.label_1054
.label_1066:
	mov	qword ptr [rax], r14
	mov	rcx, qword ptr [r12 + 8]
	mov	qword ptr [rax + 8], rcx
	mov	qword ptr [r12 + 8], rax
	inc	qword ptr [r13 + 0x20]
.label_1068:
	mov	ebp, 1
.label_1054:
	mov	eax, ebp
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_1048:
	call	abort
.label_1058:
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40df20

	.globl hash_insert
	.type hash_insert, @function
hash_insert:
	push	rbx
	sub	rsp, 0x10
	mov	rbx, rsi
	lea	rdx, [rsp + 8]
	call	hash_insert_if_absent
	mov	ecx, eax
	xor	eax, eax
	cmp	ecx, -1
	je	.label_1078
	test	ecx, ecx
	cmove	rbx, qword ptr [rsp + 8]
	mov	rax, rbx
.label_1078:
	add	rsp, 0x10
	pop	rbx
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x40df50

	.globl hash_delete
	.type hash_delete, @function
hash_delete:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	r14, rsi
	mov	r15, rdi
	mov	rsi, qword ptr [r15 + 0x10]
	mov	rdi, r14
	call	qword ptr [r15 + 0x30]
	mov	rbx, rax
	cmp	rbx, qword ptr [r15 + 0x10]
	jae	.label_1094
	mov	rbp, qword ptr [r15]
	shl	rbx, 4
	mov	rsi, qword ptr [rbp + rbx]
	xor	r12d, r12d
	test	rsi, rsi
	je	.label_1084
	lea	r13, [rbp + rbx]
	cmp	rsi, r14
	je	.label_1082
	mov	rdi, r14
	call	qword ptr [r15 + 0x38]
	test	al, al
	je	.label_1085
	mov	r14, qword ptr [r13]
.label_1082:
	mov	rax, qword ptr [rbp + rbx + 8]
	test	rax, rax
	je	.label_1098
	movups	xmm0, xmmword ptr [rax]
	movups	xmmword ptr [r13], xmm0
	mov	qword ptr [rax], 0
	mov	rcx, qword ptr [r15 + 0x48]
	mov	qword ptr [rax + 8], rcx
	mov	qword ptr [r15 + 0x48], rax
	jmp	.label_1086
.label_1085:
	mov	rax, qword ptr [rbp + rbx + 8]
	xor	r12d, r12d
	test	rax, rax
	je	.label_1084
	lea	rbx, [rbp + rbx + 8]
	xor	r12d, r12d
	nop	word ptr [rax + rax]
.label_1080:
	mov	rsi, qword ptr [rax]
	cmp	rsi, r14
	je	.label_1095
	mov	rdi, r14
	call	qword ptr [r15 + 0x38]
	mov	rcx, qword ptr [rbx]
	test	al, al
	jne	.label_1099
	mov	rax, qword ptr [rcx + 8]
	add	rcx, 8
	test	rax, rax
	mov	rbx, rcx
	jne	.label_1080
	jmp	.label_1084
.label_1098:
	mov	qword ptr [r13], 0
	jmp	.label_1086
.label_1095:
	mov	rcx, rax
	jmp	.label_1087
.label_1099:
	mov	r14, qword ptr [rcx]
.label_1087:
	mov	rax, qword ptr [rcx + 8]
	mov	qword ptr [rbx], rax
	mov	qword ptr [rcx], 0
	mov	rax, qword ptr [r15 + 0x48]
	mov	qword ptr [rcx + 8], rax
	mov	qword ptr [r15 + 0x48], rcx
.label_1086:
	xor	r12d, r12d
	test	r14, r14
	je	.label_1084
	dec	qword ptr [r15 + 0x20]
	cmp	qword ptr [r13], 0
	jne	.label_1090
	mov	rax, qword ptr [r15 + 0x18]
	dec	rax
	mov	qword ptr [r15 + 0x18], rax
	mov	ecx, eax
	and	ecx, 1
	test	rax, rax
	js	.label_1093
	cvtsi2ss	xmm1, rax
	jmp	.label_1097
.label_1093:
	shr	rax, 1
	or	rcx, rax
	cvtsi2ss	xmm1, rcx
	addss	xmm1, xmm1
.label_1097:
	mov	rcx, qword ptr [r15 + 0x10]
	mov	rax, qword ptr [r15 + 0x28]
	movss	xmm2, dword ptr [rax]
	mov	edx, ecx
	and	edx, 1
	test	rcx, rcx
	js	.label_1081
	cvtsi2ss	xmm0, rcx
	jmp	.label_1096
.label_1081:
	shr	rcx, 1
	or	rdx, rcx
	cvtsi2ss	xmm0, rdx
	addss	xmm0, xmm0
.label_1096:
	movaps	xmm3, xmm2
	mulss	xmm3, xmm0
	ucomiss	xmm3, xmm1
	jbe	.label_1090
	mov	ecx, OFFSET FLAT:default_tuning
	cmp	rax, rcx
	je	.label_1091
	movss	xmm3, dword ptr [rax + 8]
	ucomiss	xmm3,  dword ptr [dword ptr [rip + label_987]]
	jbe	.label_1079
	movss	xmm4,  dword ptr [dword ptr [rip + label_991]]
	ucomiss	xmm4, xmm3
	jbe	.label_1079
	xorps	xmm4, xmm4
	ucomiss	xmm2, xmm4
	jb	.label_1079
	movss	xmm4, dword ptr [rax + 0xc]
	ucomiss	xmm4,  dword ptr [dword ptr [rip + label_996]]
	jbe	.label_1079
	movss	xmm4,  dword ptr [dword ptr [rip + label_987]]
	addss	xmm4, xmm2
	ucomiss	xmm3, xmm4
	jbe	.label_1079
	movss	xmm3, dword ptr [rax + 4]
	movss	xmm5,  dword ptr [dword ptr [rip + label_992]]
	ucomiss	xmm5, xmm3
	jb	.label_1079
	ucomiss	xmm3, xmm4
	ja	.label_1088
.label_1079:
	mov	qword ptr [word ptr [r15 + 40]], OFFSET FLAT:default_tuning
	mov	eax, OFFSET FLAT:default_tuning
	xorps	xmm2, xmm2
	jmp	.label_1088
.label_1091:
	mov	eax, OFFSET FLAT:default_tuning
.label_1088:
	mulss	xmm2, xmm0
	ucomiss	xmm2, xmm1
	jbe	.label_1090
	mulss	xmm0, dword ptr [rax + 4]
	cmp	byte ptr [rax + 0x10], 0
	jne	.label_1092
	mulss	xmm0, dword ptr [rax + 8]
.label_1092:
	movss	xmm1,  dword ptr [dword ptr [rip + label_994]]
	movaps	xmm2, xmm0
	subss	xmm2, xmm1
	cvttss2si	rax, xmm2
	movabs	rcx, 0x8000000000000000
	xor	rcx, rax
	cvttss2si	rsi, xmm0
	ucomiss	xmm0, xmm1
	cmovae	rsi, rcx
	mov	rdi, r15
	call	hash_rehash
	test	al, al
	jne	.label_1090
	mov	rdi, qword ptr [r15 + 0x48]
	test	rdi, rdi
	je	.label_1083
	nop	
.label_1089:
	mov	rbx, qword ptr [rdi + 8]
	call	free
	test	rbx, rbx
	mov	rdi, rbx
	jne	.label_1089
.label_1083:
	mov	qword ptr [r15 + 0x48], 0
.label_1090:
	mov	r12, r14
.label_1084:
	mov	rax, r12
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_1094:
	call	abort
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x40e1e0

	.globl heap_alloc
	.type heap_alloc, @function
heap_alloc:
	push	r15
	push	r14
	push	r12
	push	rbx
	push	rax
	mov	r15, rsi
	mov	r14, rdi
	mov	edi, 0x20
	call	xmalloc
	mov	r12, rax
	test	r15, r15
	mov	ebx, 1
	cmovne	rbx, r15
	mov	rax, rbx
	shr	rax, 0x3c
	jne	.label_1100
	lea	rdi, [rbx*8]
	call	xmalloc
	mov	qword ptr [r12], rax
	mov	qword ptr [rax], 0
	mov	qword ptr [r12 + 8], rbx
	mov	qword ptr [r12 + 0x10], 0
	test	r14, r14
	mov	eax, OFFSET FLAT:heap_default_compare
	cmovne	rax, r14
	mov	qword ptr [r12 + 0x18], rax
	mov	rax, r12
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
.label_1100:
	call	xalloc_die
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40e260

	.globl heap_default_compare
	.type heap_default_compare, @function
heap_default_compare:
	xor	eax, eax
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40e270
	.globl heap_free
	.type heap_free, @function
heap_free:

	push	rbx
	mov	rbx, rdi
	mov	rdi, qword ptr [rbx]
	call	free
	mov	rdi, rbx
	pop	rbx
	jmp	free
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40e290

	.globl heap_insert
	.type heap_insert, @function
heap_insert:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	r14, rsi
	mov	r15, rdi
	mov	rax, qword ptr [r15 + 8]
	mov	rcx, qword ptr [r15 + 0x10]
	lea	rdx, [rax - 1]
	cmp	rdx, rcx
	jbe	.label_1104
	mov	rax, qword ptr [r15]
	jmp	.label_1105
.label_1104:
	mov	rdi, qword ptr [r15]
	test	rdi, rdi
	je	.label_1107
	movabs	rcx, 0xaaaaaaaaaaaaaaa
	cmp	rax, rcx
	jae	.label_1108
	mov	rcx, rax
	shr	rcx, 1
	lea	rsi, [rax + rcx + 1]
	jmp	.label_1103
.label_1107:
	test	rax, rax
	mov	esi, 0x10
	cmovne	rsi, rax
	mov	rax, rsi
	shr	rax, 0x3c
	jne	.label_1109
.label_1103:
	mov	qword ptr [r15 + 8], rsi
	shl	rsi, 3
	call	xrealloc
	mov	qword ptr [r15], rax
	mov	rcx, qword ptr [r15 + 0x10]
.label_1105:
	lea	rbx, [rcx + 1]
	mov	qword ptr [r15 + 0x10], rbx
	mov	qword ptr [rax + rcx*8 + 8], r14
	mov	r12, qword ptr [r15]
	mov	r14, qword ptr [r12 + rcx*8 + 8]
	mov	r13d, 1
	test	rcx, rcx
	je	.label_1102
	mov	r15, qword ptr [r15 + 0x18]
	mov	r13d, 1
	nop	word ptr cs:[rax + rax]
.label_1106:
	mov	rbp, rbx
	shr	rbp, 1
	mov	rdi, qword ptr [r12 + rbp*8]
	mov	rsi, r14
	call	r15
	test	eax, eax
	jg	.label_1101
	mov	rax, qword ptr [r12 + rbp*8]
	mov	qword ptr [r12 + rbx*8], rax
	cmp	rbp, 1
	mov	rbx, rbp
	jne	.label_1106
	jmp	.label_1102
.label_1101:
	mov	r13, rbx
.label_1102:
	mov	qword ptr [r12 + r13*8], r14
	xor	eax, eax
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_1108:
	call	xalloc_die
.label_1109:
	call	xalloc_die
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x40e390

	.globl heap_remove_top
	.type heap_remove_top, @function
heap_remove_top:
	mov	rsi, qword ptr [rdi + 0x10]
	xor	eax, eax
	test	rsi, rsi
	je	.label_1112
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x18
	mov	rcx, qword ptr [rdi]
	mov	rdx, qword ptr [rcx + 8]
	lea	r13, [rsi - 1]
	mov	qword ptr [rsp + 8], r13
	mov	qword ptr [rdi + 0x10], r13
	mov	rax, qword ptr [rcx + rsi*8]
	mov	qword ptr [rcx + 8], rax
	mov	rbx, qword ptr [rdi]
	mov	rax, qword ptr [rbx + 8]
	mov	qword ptr [rsp + 0x10], rax
	shr	r13, 1
	mov	r14d, 1
	je	.label_1111
	mov	qword ptr [rsp], rdx
	mov	r15, qword ptr [rdi + 0x18]
	nop	dword ptr [rax + rax]
.label_1114:
	lea	rbp, [r14 + r14]
	cmp	rbp, qword ptr [rsp + 8]
	jae	.label_1110
	mov	rdi, qword ptr [rbx + rbp*8]
	mov	r12, rbp
	or	r12, 1
	mov	rsi, qword ptr [rbx + r12*8]
	call	r15
	test	eax, eax
	cmovs	rbp, r12
.label_1110:
	mov	rdi, qword ptr [rbx + rbp*8]
	mov	rsi, qword ptr [rsp + 0x10]
	call	r15
	test	eax, eax
	jle	.label_1115
	mov	rax, qword ptr [rbx + rbp*8]
	mov	qword ptr [rbx + r14*8], rax
	cmp	rbp, r13
	mov	r14, rbp
	jbe	.label_1114
	jmp	.label_1113
.label_1111:
	mov	qword ptr [rsp], rdx
	mov	ebp, 1
	jmp	.label_1113
.label_1115:
	mov	rbp, r14
.label_1113:
	mov	rax, qword ptr [rsp + 0x10]
	mov	qword ptr [rbx + rbp*8], rax
	mov	rax, qword ptr [rsp]
	add	rsp, 0x18
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
.label_1112:
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x40e460

	.globl inttostr
	.type inttostr, @function
inttostr:
	mov	byte ptr [rsi + 0xb], 0
	test	edi, edi
	js	.label_1116
	add	rsi, 0xb
	nop	dword ptr [rax]
.label_1119:
	movsxd	rax, edi
	imul	rcx, rax, 0x66666667
	mov	rdx, rcx
	shr	rdx, 0x3f
	sar	rcx, 0x22
	add	ecx, edx
	lea	edx, [rcx + rcx]
	lea	edx, [rdx + rdx*4]
	neg	edx
	lea	edx, [rdi + rdx + 0x30]
	mov	byte ptr [rsi - 1], dl
	dec	rsi
	add	eax, 9
	cmp	eax, 0x12
	mov	edi, ecx
	ja	.label_1119
	jmp	.label_1118
.label_1116:
	add	rsi, 0xc
	nop	dword ptr [rax]
.label_1117:
	movsxd	rax, edi
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
	sub	ecx, edx
	mov	byte ptr [rsi - 2], cl
	add	eax, 9
	dec	rsi
	cmp	eax, 0x12
	ja	.label_1117
	mov	byte ptr [rsi - 2], 0x2d
	add	rsi, -2
.label_1118:
	mov	rax, rsi
	ret	
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x40e500

	.globl uinttostr
	.type uinttostr, @function
uinttostr:
	mov	byte ptr [rsi + 0xa], 0
	add	rsi, 0xa
	mov	r8d, 0xcccccccd
	nop	
.label_1120:
	mov	ecx, edi
	imul	rcx, r8
	shr	rcx, 0x23
	lea	edx, [rcx + rcx]
	lea	edx, [rdx + rdx*4]
	mov	eax, edi
	sub	eax, edx
	or	eax, 0x30
	mov	byte ptr [rsi - 1], al
	dec	rsi
	cmp	edi, 9
	mov	edi, ecx
	ja	.label_1120
	mov	rax, rsi
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40e540

	.globl umaxtostr
	.type umaxtostr, @function
umaxtostr:
	mov	rcx, rdi
	mov	byte ptr [rsi + 0x14], 0
	add	rsi, 0x14
	movabs	r8, 0xcccccccccccccccd
	nop	word ptr cs:[rax + rax]
.label_1121:
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
	ja	.label_1121
	mov	rax, rsi
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40e590
	.globl gnu_mbswidth
	.type gnu_mbswidth, @function
gnu_mbswidth:

	push	rbp
	push	rbx
	push	rax
	mov	ebp, esi
	mov	rbx, rdi
	call	strlen
	mov	rdi, rbx
	mov	rsi, rax
	mov	edx, ebp
	add	rsp, 8
	pop	rbx
	pop	rbp
	jmp	mbsnwidth
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x40e5b0

	.globl mbsnwidth
	.type mbsnwidth, @function
mbsnwidth:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x18
	mov	r14d, edx
	mov	r15, rsi
	mov	rbx, rdi
	lea	r12, [rbx + r15]
	call	__ctype_get_mb_cur_max
	cmp	rax, 1
	jbe	.label_1139
	xor	ebp, ebp
	test	r15, r15
	jle	.label_1122
	mov	eax, r14d
	and	eax, 2
	mov	dword ptr [rsp + 8], eax
	and	r14d, 1
	mov	edx, r14d
	xor	edx, 1
	lea	esi, [r14*4]
	xor	esi, 5
	xor	r15d, r15d
	lea	r13, [rsp + 0x10]
	mov	ebp, 0x7fffffff
	nop	word ptr cs:[rax + rax]
.label_1134:
	movsx	eax, byte ptr [rbx]
	add	eax, -0x20
	cmp	eax, 0x5e
	ja	.label_1128
	jmp	qword ptr [word ptr [+ (rax * 8) + label_1131]]
.label_1854:
	inc	rbx
	inc	r15d
.label_1138:
	cmp	rbx, r12
	jb	.label_1134
	jmp	.label_1135
.label_1128:
	mov	dword ptr [rsp], esi
	mov	dword ptr [rsp + 4], edx
	mov	qword ptr [rsp + 0x10], 0
	nop	word ptr cs:[rax + rax]
.label_1127:
	mov	rdx, r12
	sub	rdx, rbx
	lea	rdi, [rsp + 0xc]
	mov	rsi, rbx
	mov	rcx, r13
	call	rpl_mbrtowc
	mov	r13, rax
	test	r13, r13
	je	.label_1141
	cmp	r13, -2
	je	.label_1142
	cmp	r13, -1
	jne	.label_1124
	jmp	.label_1125
	nop	word ptr cs:[rax + rax]
.label_1141:
	mov	r13d, 1
.label_1124:
	mov	edi, dword ptr [rsp + 0xc]
	call	wcwidth
	test	eax, eax
	js	.label_1132
	mov	edx, 0x7fffffff
	sub	edx, r15d
	mov	ecx, 7
	cmp	eax, edx
	jg	.label_1133
	add	r15d, eax
	jmp	.label_1136
	nop	dword ptr [rax]
.label_1132:
	mov	ecx, 1
	cmp	dword ptr [rsp + 8], 0
	jne	.label_1133
	mov	edi, dword ptr [rsp + 0xc]
	call	iswcntrl
	test	eax, eax
	jne	.label_1136
	cmp	r15d, 0x7fffffff
	je	.label_1140
	inc	r15d
	nop	dword ptr [rax]
.label_1136:
	add	rbx, r13
	lea	r13, [rsp + 0x10]
	mov	rdi, r13
	call	mbsinit
	test	eax, eax
	mov	rax, rbx
	je	.label_1127
	jmp	.label_1126
.label_1142:
	add	r15d, dword ptr [rsp + 4]
	test	r14d, r14d
	mov	rax, r12
	mov	ecx, dword ptr [rsp]
	lea	r13, [rsp + 0x10]
	jne	.label_1130
	jmp	.label_1126
.label_1125:
	mov	ecx, 1
	test	r14d, r14d
	lea	r13, [rsp + 0x10]
	jne	.label_1130
	inc	rbx
	inc	r15d
	mov	rax, rbx
.label_1126:
	mov	rbx, rax
	mov	edx, dword ptr [rsp + 4]
	mov	esi, dword ptr [rsp]
	jmp	.label_1138
.label_1140:
	mov	ecx, 7
	mov	r15d, 0x7fffffff
.label_1133:
	lea	r13, [rsp + 0x10]
.label_1130:
	test	ecx, ecx
	mov	edx, dword ptr [rsp + 4]
	mov	esi, dword ptr [rsp]
	je	.label_1138
	mov	r15d, 0xffffffff
	cmp	ecx, 7
	jne	.label_1135
	jmp	.label_1122
.label_1139:
	and	r14d, 2
	xor	r15d, r15d
	jmp	.label_1123
.label_1137:
	inc	r15d
	nop	word ptr cs:[rax + rax]
.label_1123:
	cmp	rbx, r12
	jae	.label_1135
	movzx	ebp, byte ptr [rbx]
	inc	rbx
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	movzx	eax, word ptr [rax + rbp*2]
	test	ah, 0x40
	jne	.label_1129
	mov	ebp, 0xffffffff
	test	r14d, r14d
	jne	.label_1122
	test	al, 2
	jne	.label_1123
.label_1129:
	mov	ebp, 0x7fffffff
	cmp	r15d, 0x7fffffff
	jne	.label_1137
	jmp	.label_1122
.label_1135:
	mov	ebp, r15d
.label_1122:
	mov	eax, ebp
	add	rsp, 0x18
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x40e7f0

	.globl num_processors
	.type num_processors, @function
num_processors:
	push	r14
	push	rbx
	sub	rsp, 0x88
	mov	r14, -1
	cmp	edi, 2
	jne	.label_1148
	mov	edi, OFFSET FLAT:.str_6
	call	getenv
	mov	rdi, rax
	call	parse_omp_threads
	mov	rbx, rax
	mov	edi, OFFSET FLAT:.str.1_4
	call	getenv
	mov	rdi, rax
	call	parse_omp_threads
	cmp	rax, 1
	sbb	r14, r14
	or	r14, rax
	cmp	rbx, r14
	mov	rax, r14
	cmovb	rax, rbx
	mov	edi, 1
	test	rbx, rbx
	jne	.label_1147
.label_1148:
	cmp	edi, 1
	jne	.label_1144
	lea	rdx, [rsp + 8]
	xor	edi, edi
	mov	esi, 0x80
	call	sched_getaffinity
	test	eax, eax
	jne	.label_1146
	lea	rsi, [rsp + 8]
	mov	edi, 0x80
	call	__sched_cpucount
	test	eax, eax
	je	.label_1146
	cdqe	
	jmp	.label_1149
.label_1144:
	mov	edi, 0x53
	call	sysconf
	cmp	rax, 1
	jne	.label_1143
	lea	rdx, [rsp + 8]
	xor	edi, edi
	mov	esi, 0x80
	call	sched_getaffinity
	test	eax, eax
	jne	.label_1145
	lea	rsi, [rsp + 8]
	mov	edi, 0x80
	call	__sched_cpucount
	test	eax, eax
	je	.label_1145
	cdqe	
	jmp	.label_1143
.label_1146:
	mov	edi, 0x54
	call	sysconf
.label_1143:
	test	rax, rax
	jg	.label_1149
.label_1145:
	mov	eax, 1
.label_1149:
	cmp	rax, r14
	cmovb	r14, rax
	mov	rax, r14
.label_1147:
	add	rsp, 0x88
	pop	rbx
	pop	r14
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40e8f0

	.globl parse_omp_threads
	.type parse_omp_threads, @function
parse_omp_threads:
	push	rax
	xor	eax, eax
	test	rdi, rdi
	je	.label_1153
	mov	al, byte ptr [rdi]
	test	al, al
	je	.label_1156
	mov	ecx, 0x80001f
	nop	word ptr [rax + rax]
.label_1150:
	movsx	edx, al
	add	edx, -9
	cmp	edx, 0x17
	ja	.label_1151
	bt	ecx, edx
	jae	.label_1151
	mov	al, byte ptr [rdi + 1]
	inc	rdi
	test	al, al
	jne	.label_1150
.label_1156:
	xor	eax, eax
.label_1151:
	movsx	ecx, al
	add	ecx, -0x30
	xor	eax, eax
	cmp	ecx, 9
	ja	.label_1153
	mov	qword ptr [rsp], 0
	lea	rsi, [rsp]
	mov	edx, 0xa
	call	strtoul
	mov	rcx, qword ptr [rsp]
	test	rcx, rcx
	je	.label_1154
	mov	dl, byte ptr [rcx]
	test	dl, dl
	je	.label_1153
	inc	rcx
	mov	esi, 0x80001f
	nop	word ptr cs:[rax + rax]
.label_1155:
	movsx	edi, dl
	add	edi, -9
	cmp	edi, 0x17
	ja	.label_1152
	bt	esi, edi
	jae	.label_1152
	mov	qword ptr [rsp], rcx
	mov	dl, byte ptr [rcx]
	inc	rcx
	test	dl, dl
	jne	.label_1155
	jmp	.label_1153
.label_1152:
	movzx	ecx, dl
	cmp	ecx, 0x2c
	je	.label_1153
.label_1154:
	xor	eax, eax
.label_1153:
	pop	rcx
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40e9a0

	.globl physmem_total
	.type physmem_total, @function
physmem_total:
	push	rbx
	sub	rsp, 0x70
	mov	edi, 0x55
	call	sysconf
	mov	rbx, rax
	mov	edi, 0x1e
	call	sysconf
	mov	rcx, rax
	or	rcx, rbx
	js	.label_1159
	cvtsi2sd	xmm1, rax
	cvtsi2sd	xmm0, rbx
	mulsd	xmm0, xmm1
	jmp	.label_1158
.label_1159:
	lea	rdi, [rsp]
	call	sysinfo
	test	eax, eax
	je	.label_1160
	movsd	xmm0,  qword ptr [word ptr [rip + label_1157]]
	jmp	.label_1158
.label_1160:
	movq	xmm0, qword ptr [rsp + 0x20]
	punpckldq	xmm0,  xmmword ptr [word ptr [rip + label_233]]
	subpd	xmm0,  xmmword ptr [word ptr [rip + label_234]]
	pshufd	xmm1, xmm0, 0x4e
	addpd	xmm1, xmm0
	mov	eax, dword ptr [rsp + 0x68]
	xorps	xmm0, xmm0
	cvtsi2sd	xmm0, rax
	mulsd	xmm0, xmm1
.label_1158:
	add	rsp, 0x70
	pop	rbx
	ret	
	.section	.text
	.align	16
	#Procedure 0x40ea20

	.globl physmem_available
	.type physmem_available, @function
physmem_available:
	push	rbx
	sub	rsp, 0x70
	mov	edi, 0x56
	call	sysconf
	mov	rbx, rax
	mov	edi, 0x1e
	call	sysconf
	mov	rcx, rax
	or	rcx, rbx
	js	.label_1166
	cvtsi2sd	xmm1, rax
	cvtsi2sd	xmm0, rbx
	mulsd	xmm0, xmm1
	jmp	.label_1163
.label_1166:
	lea	rdi, [rsp]
	call	sysinfo
	test	eax, eax
	je	.label_1161
	mov	edi, 0x55
	call	sysconf
	mov	rbx, rax
	mov	edi, 0x1e
	call	sysconf
	mov	rcx, rax
	or	rcx, rbx
	js	.label_1165
	cvtsi2sd	xmm1, rax
	cvtsi2sd	xmm0, rbx
	jmp	.label_1162
.label_1161:
	movq	xmm0, qword ptr [rsp + 0x28]
	movdqa	xmm1,  xmmword ptr [word ptr [rip + label_233]]
	punpckldq	xmm0, xmm1
	movapd	xmm2,  xmmword ptr [word ptr [rip + label_234]]
	subpd	xmm0, xmm2
	pshufd	xmm3, xmm0, 0x4e
	addpd	xmm3, xmm0
	movq	xmm0, qword ptr [rsp + 0x38]
	punpckldq	xmm0, xmm1
	subpd	xmm0, xmm2
	pshufd	xmm1, xmm0, 0x4e
	addpd	xmm1, xmm0
	addsd	xmm1, xmm3
	mov	eax, dword ptr [rsp + 0x68]
	xorps	xmm0, xmm0
	cvtsi2sd	xmm0, rax
	mulsd	xmm0, xmm1
	jmp	.label_1163
.label_1165:
	lea	rdi, [rsp]
	call	sysinfo
	test	eax, eax
	je	.label_1167
	movsd	xmm0,  qword ptr [word ptr [rip + label_1157]]
	jmp	.label_1164
.label_1167:
	movq	xmm0, qword ptr [rsp + 0x20]
	punpckldq	xmm0,  xmmword ptr [word ptr [rip + label_233]]
	subpd	xmm0,  xmmword ptr [word ptr [rip + label_234]]
	pshufd	xmm1, xmm0, 0x4e
	addpd	xmm1, xmm0
	mov	eax, dword ptr [rsp + 0x68]
	xorps	xmm0, xmm0
	cvtsi2sd	xmm0, rax
.label_1162:
	mulsd	xmm0, xmm1
.label_1164:
	mulsd	xmm0,  qword ptr [word ptr [rip + label_727]]
.label_1163:
	add	rsp, 0x70
	pop	rbx
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40eb40

	.globl rpl_pipe2
	.type rpl_pipe2, @function
rpl_pipe2:
	push	rbp
	push	r15
	push	r14
	push	r12
	push	rbx
	mov	rbx, rdi
	mov	r14d, dword ptr [rbx]
	mov	r15d, dword ptr [rbx + 4]
	cmp	dword ptr [dword ptr [rip + rpl_pipe2.have_pipe2_really]],  0
	js	.label_1168
	mov	rdi, rbx
	mov	r12d, esi
	call	pipe2
	mov	ebp, eax
	test	ebp, ebp
	jns	.label_1174
	call	__errno_location
	cmp	dword ptr [rax], 0x26
	jne	.label_1174
	mov	dword ptr [dword ptr [rip + rpl_pipe2.have_pipe2_really]],  0xffffffff
	mov	esi, r12d
.label_1168:
	test	esi, 0xfff7f7ff
	je	.label_1170
	call	__errno_location
	mov	dword ptr [rax], 0x16
	jmp	.label_1172
.label_1174:
	mov	dword ptr [dword ptr [rip + rpl_pipe2.have_pipe2_really]],  1
	jmp	.label_1171
.label_1170:
	mov	r12d, esi
	mov	rdi, rbx
	call	pipe
	mov	ebp, 0xffffffff
	test	eax, eax
	js	.label_1171
	mov	eax, r12d
	test	ah, 8
	je	.label_1169
	mov	edi, dword ptr [rbx + 4]
	mov	esi, 3
	xor	edx, edx
	xor	eax, eax
	call	rpl_fcntl
	mov	ecx, eax
	test	ecx, ecx
	js	.label_1173
	mov	edi, dword ptr [rbx + 4]
	or	ecx, 0x800
	mov	esi, 4
	xor	eax, eax
	mov	edx, ecx
	call	rpl_fcntl
	cmp	eax, -1
	je	.label_1173
	mov	edi, dword ptr [rbx]
	mov	esi, 3
	xor	edx, edx
	xor	eax, eax
	call	rpl_fcntl
	mov	ecx, eax
	test	ecx, ecx
	js	.label_1173
	mov	edi, dword ptr [rbx]
	or	ecx, 0x800
	mov	esi, 4
	xor	eax, eax
	mov	edx, ecx
	call	rpl_fcntl
	cmp	eax, -1
	je	.label_1173
.label_1169:
	xor	ebp, ebp
	test	r12d, 0x80000
	je	.label_1171
	mov	edi, dword ptr [rbx + 4]
	mov	esi, 1
	xor	edx, edx
	xor	eax, eax
	call	rpl_fcntl
	mov	ecx, eax
	test	ecx, ecx
	js	.label_1173
	mov	edi, dword ptr [rbx + 4]
	or	ecx, 1
	mov	esi, 2
	xor	eax, eax
	mov	edx, ecx
	call	rpl_fcntl
	cmp	eax, -1
	je	.label_1173
	mov	edi, dword ptr [rbx]
	xor	ebp, ebp
	mov	esi, 1
	xor	edx, edx
	xor	eax, eax
	call	rpl_fcntl
	mov	ecx, eax
	test	ecx, ecx
	js	.label_1173
	mov	edi, dword ptr [rbx]
	or	ecx, 1
	mov	esi, 2
	xor	eax, eax
	mov	edx, ecx
	call	rpl_fcntl
	cmp	eax, -1
	jne	.label_1171
.label_1173:
	call	__errno_location
	mov	rbp, rax
	mov	r12d, dword ptr [rbp]
	mov	edi, dword ptr [rbx]
	call	close
	mov	edi, dword ptr [rbx + 4]
	call	close
	mov	dword ptr [rbx], r14d
	mov	dword ptr [rbx + 4], r15d
	mov	dword ptr [rbp], r12d
.label_1172:
	mov	ebp, 0xffffffff
.label_1171:
	mov	eax, ebp
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x40ece0

	.globl posix2_version
	.type posix2_version, @function
posix2_version:
	push	rax
	mov	edi, OFFSET FLAT:.str_7
	call	getenv
	mov	rcx, rax
	mov	eax, 0x31069
	test	rcx, rcx
	je	.label_1175
	mov	eax, 0x31069
	cmp	byte ptr [rcx], 0
	je	.label_1175
	lea	rsi, [rsp]
	mov	edx, 0xa
	mov	rdi, rcx
	call	strtol
	mov	rcx, qword ptr [rsp]
	cmp	byte ptr [rcx], 0
	je	.label_1175
	mov	eax, 0x31069
.label_1175:
	cmp	rax, 0x7fffffff
	mov	ecx, 0x7fffffff
	cmovl	ecx, eax
	cmp	rax, -0x80000000
	mov	eax, 0x80000000
	cmovge	eax, ecx
	pop	rcx
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x40ed40

	.globl set_program_name
	.type set_program_name, @function
set_program_name:
	push	r14
	push	rbx
	push	rax
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_1176
	mov	esi, 0x2f
	mov	rdi, rbx
	call	strrchr
	test	rax, rax
	lea	r14, [rax + 1]
	cmove	r14, rbx
	mov	rax, r14
	sub	rax, rbx
	cmp	rax, 7
	jl	.label_1177
	lea	rdi, [r14 - 7]
	mov	esi, OFFSET FLAT:.str.1_5
	mov	edx, 7
	call	strncmp
	test	eax, eax
	jne	.label_1177
	mov	esi, OFFSET FLAT:.str.2_2
	mov	edx, 3
	mov	rdi, r14
	call	strncmp
	test	eax, eax
	jne	.label_1178
	add	r14, 3
	mov	qword ptr [word ptr [rip + program_invocation_short_name]],  r14
.label_1178:
	mov	rbx, r14
.label_1177:
	mov	qword ptr [word ptr [rip + program_name]],  rbx
	mov	qword ptr [word ptr [rip + __progname_full]],  rbx
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
.label_1176:
	mov	rcx,  qword ptr [word ptr [rip + stderr]]
	mov	edi, OFFSET FLAT:.str_8
	mov	esi, 0x37
	mov	edx, 1
	call	fwrite
	call	abort
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40edf0
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
	.align	16
	#Procedure 0x40ee30
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
	.align	16
	#Procedure 0x40ee40
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
	.align	16
	#Procedure 0x40ee50
	.globl set_char_quoting
	.type set_char_quoting, @function
set_char_quoting:

	mov	ecx, esi
	test	rdi, rdi
	mov	esi, OFFSET FLAT:default_quoting_options
	cmovne	rsi, rdi
	mov	al, cl
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
	.align	16
	#Procedure 0x40ee90
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
	.align	16
	#Procedure 0x40eeb0
	.globl set_custom_quoting
	.type set_custom_quoting, @function
set_custom_quoting:

	test	rdi, rdi
	mov	eax, OFFSET FLAT:default_quoting_options
	cmovne	rax, rdi
	mov	dword ptr [rax], 0xa
	test	rsi, rsi
	je	.label_1179
	test	rdx, rdx
	je	.label_1179
	mov	qword ptr [rax + 0x28], rsi
	mov	qword ptr [rax + 0x30], rdx
	ret	
.label_1179:
	push	rax
	call	abort
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40eee0
	.globl quotearg_buffer
	.type quotearg_buffer, @function
quotearg_buffer:

	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x28
	mov	qword ptr [rsp + 0x20], rcx
	mov	r15, rdx
	mov	r12, rsi
	mov	r13, rdi
	test	r8, r8
	mov	ebp, OFFSET FLAT:default_quoting_options
	cmovne	rbp, r8
	call	__errno_location
	mov	rbx, rax
	mov	r14d, dword ptr [rbx]
	mov	r8, qword ptr [rbp]
	mov	rax, qword ptr [rbp + 0x28]
	mov	r9, r8
	shr	r9, 0x20
	mov	rcx, qword ptr [rbp + 0x30]
	add	rbp, 8
	mov	qword ptr [rsp + 0x10], rcx
	mov	qword ptr [rsp + 8], rax
	mov	qword ptr [rsp], rbp
	mov	rdi, r13
	mov	rsi, r12
	mov	rdx, r15
	mov	rcx, qword ptr [rsp + 0x20]
	call	quotearg_buffer_restyled
	mov	dword ptr [rbx], r14d
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
	#Procedure 0x40ef60

	.globl quotearg_buffer_restyled
	.type quotearg_buffer_restyled, @function
quotearg_buffer_restyled:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x108
	mov	ebx, r9d
	mov	dword ptr [rsp + 0x6c], ebx
	mov	r15d, r8d
	mov	r13, rcx
	mov	qword ptr [rsp + 0xa8], rdx
	mov	rbp, rsi
	mov	qword ptr [rsp + 0xe0], rdi
	mov	rax, qword ptr [rsp + 0x150]
	mov	qword ptr [rsp + 0x98], rax
	mov	rax, qword ptr [rsp + 0x148]
	mov	qword ptr [rsp + 0xa0], rax
	call	__ctype_get_mb_cur_max
	mov	qword ptr [rsp + 0x60], rax
	mov	r12b, bl
	shr	r12b, 1
	and	r12b, 1
	mov	eax, ebx
	and	eax, 1
	mov	dword ptr [rsp + 0x5c], eax
	and	ebx, 4
	mov	dword ptr [rsp + 0x58], ebx
	mov	r8b, 1
	mov	eax, 0
	mov	qword ptr [rsp + 0x90], rax
	mov	eax, 0
	mov	qword ptr [rsp + 0xb8], rax
	mov	eax, 0
	mov	qword ptr [rsp + 0xc8], rax
	mov	eax, 0
	mov	dword ptr [rsp + 0xd8], 0
	xor	ecx, ecx
	mov	qword ptr [rsp + 0x70], rcx
.label_1259:
	mov	r10, rbp
	xor	ecx, ecx
	mov	qword ptr [rsp + 0xf0], rcx
	mov	ecx, r15d
	cmp	r15d, 0xa
	ja	.label_1187
	mov	r9d, 7
	mov	dil, 1
	xor	esi, esi
	mov	r11, qword ptr [rsp + 0xa8]
	mov	rbp, r13
	jmp	qword ptr [word ptr [+ (rcx * 8) + label_1193]]
.label_1780:
	mov	edi, OFFSET FLAT:.str.11_0
	mov	esi, r15d
	mov	r14, r10
	mov	bl, r8b
	call	gettext_quote
	mov	qword ptr [rsp + 0xa0], rax
	mov	edi, OFFSET FLAT:.str.12_0
	mov	esi, r15d
	call	gettext_quote
	mov	r8b, bl
	mov	r10, r14
	mov	qword ptr [rsp + 0x98], rax
.label_1781:
	mov	byte ptr [rsp + 0x69], r8b
	mov	r13, rbp
	test	r12b, 1
	mov	eax, 0
	mov	qword ptr [rsp + 0xf0], rax
	mov	rdx, qword ptr [rsp + 0xa0]
	jne	.label_1220
	mov	al, byte ptr [rdx]
	test	al, al
	mov	ecx, 0
	mov	qword ptr [rsp + 0xf0], rcx
	je	.label_1220
	xor	ecx, ecx
	mov	qword ptr [rsp + 0xf0], rcx
	nop	word ptr cs:[rax + rax]
.label_1245:
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_1242
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	rsi, qword ptr [rsp + 0xf0]
	mov	byte ptr [rcx + rsi], al
.label_1242:
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	al, byte ptr [rdx + rcx + 1]
	inc	rcx
	mov	qword ptr [rsp + 0xf0], rcx
	test	al, al
	jne	.label_1245
.label_1220:
	mov	rbp, qword ptr [rsp + 0x98]
	mov	rdi, rbp
	mov	rbx, r10
	call	strlen
	mov	r10, rbx
	mov	qword ptr [rsp + 0xc8], rax
	mov	r9d, r15d
	mov	qword ptr [rsp + 0xb8], rbp
	mov	dil, 1
	mov	sil, r12b
	mov	rbp, r13
	mov	r8b, byte ptr [rsp + 0x69]
	mov	r11, qword ptr [rsp + 0xa8]
	jmp	.label_1180
.label_1773:
	xor	r9d, r9d
	xor	ecx, ecx
	mov	qword ptr [rsp + 0xf0], rcx
	mov	dil, al
	xor	esi, esi
	jmp	.label_1180
.label_1776:
	mov	al, 1
.label_1774:
	mov	r12b, 1
.label_1777:
	test	r12b, 1
	mov	cl, 1
	je	.label_1271
	mov	cl, al
.label_1271:
	mov	al, cl
.label_1775:
	mov	r9d, 2
	test	r12b, 1
	jne	.label_1273
	test	r10, r10
	je	.label_1276
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx], 0x27
	mov	ecx, 1
	jmp	.label_1277
.label_1273:
	xor	ecx, ecx
	jmp	.label_1277
.label_1778:
	mov	r9d, 5
	test	r12b, 1
	jne	.label_1284
	test	r10, r10
	je	.label_1289
	mov	rax, qword ptr [rsp + 0xe0]
	mov	byte ptr [rax], 0x22
	mov	eax, 1
	jmp	.label_1191
.label_1779:
	mov	dil, 1
	mov	r9d, 5
	mov	eax, 0
	mov	qword ptr [rsp + 0xf0], rax
	mov	eax, OFFSET FLAT:.str.10_0
	mov	qword ptr [rsp + 0xb8], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0xc8], rax
	mov	sil, 1
	jmp	.label_1180
.label_1276:
	mov	ecx, 1
.label_1277:
	mov	qword ptr [rsp + 0xf0], rcx
	mov	ecx, OFFSET FLAT:.str.12_0
	mov	qword ptr [rsp + 0xb8], rcx
	mov	ecx, 1
	mov	qword ptr [rsp + 0xc8], rcx
	mov	dil, al
	mov	sil, r12b
	jmp	.label_1180
.label_1284:
	xor	eax, eax
	jmp	.label_1191
.label_1289:
	mov	eax, 1
.label_1191:
	mov	qword ptr [rsp + 0xf0], rax
	mov	eax, OFFSET FLAT:.str.10_0
	mov	qword ptr [rsp + 0xb8], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0xc8], rax
	mov	dil, 1
	mov	sil, r12b
	nop	dword ptr [rax + rax]
.label_1180:
	mov	qword ptr [rsp + 0x80], rsi
	mov	byte ptr [rsp + 0x8f], dil
	cmp	qword ptr [rsp + 0x140], 0
	setne	dl
	cmp	r9d, 2
	setne	r15b
	sete	al
	mov	cl, dil
	and	cl, 1
	mov	byte ptr [rsp + 0xb6], cl
	sete	byte ptr [rsp + 0x6b]
	mov	bl, r15b
	and	bl, cl
	mov	byte ptr [rsp + 0xd7], bl
	cmp	qword ptr [rsp + 0xc8], 0
	setne	r13b
	mov	r12b, r13b
	and	r12b, bl
	mov	byte ptr [rsp + 0xc6], r12b
	mov	bl, sil
	and	bl, 1
	mov	byte ptr [rsp + 0xc7], bl
	sete	cl
	and	al, bl
	mov	byte ptr [rsp + 0x7f], al
	and	dl, bl
	mov	byte ptr [rsp + 0xc5], dl
	or	cl, r15b
	mov	byte ptr [rsp + 0xb7], cl
	and	dil, sil
	and	dil, r13b
	mov	byte ptr [rsp + 0x6a], dil
	xor	edi, edi
	mov	r14d, dword ptr [rsp + 0xd8]
	jmp	.label_1200
.label_1230:
	inc	rdi
.label_1200:
	cmp	rbp, -1
	je	.label_1251
	cmp	rdi, rbp
	jne	.label_1253
	jmp	.label_1254
	nop	word ptr cs:[rax + rax]
.label_1251:
	mov	r13, -1
	cmp	byte ptr [r11 + rdi], 0
	je	.label_1257
.label_1253:
	test	r12b, r12b
	je	.label_1261
	mov	rax, qword ptr [rsp + 0xc8]
	lea	rbx, [rdi + rax]
	cmp	rax, 2
	jb	.label_1263
	cmp	rbp, -1
	jne	.label_1263
	mov	eax, r14d
	mov	r14, rdi
	mov	rdi, r11
	mov	rbp, r10
	mov	r15b, r8b
	mov	r13, r9
	mov	dword ptr [rsp + 0xd8], eax
	mov	r12, r11
	call	strlen
	mov	rdi, r14
	mov	r11, r12
	mov	r12b, byte ptr [rsp + 0xc6]
	mov	r14d, dword ptr [rsp + 0xd8]
	mov	r9, r13
	mov	r8b, r15b
	mov	r10, rbp
	mov	rbp, rax
.label_1263:
	cmp	rbx, rbp
	jbe	.label_1281
	mov	dword ptr [rsp + 0xec], 0
	jmp	.label_1181
	nop	word ptr [rax + rax]
.label_1261:
	mov	dword ptr [rsp + 0xec], 0
	jmp	.label_1181
.label_1281:
	mov	dword ptr [rsp + 0xd8], r14d
	mov	r12, rbp
	mov	r13, r9
	mov	r15b, r8b
	mov	rbx, r10
	mov	r14, rdi
	lea	rdi, [r11 + r14]
	mov	rbp, r11
	mov	rsi, qword ptr [rsp + 0xb8]
	mov	rdx, qword ptr [rsp + 0xc8]
	call	memcmp
	test	eax, eax
	sete	al
	mov	dword ptr [rsp + 0xec], eax
	jne	.label_1304
	cmp	byte ptr [rsp + 0xc7], 0
	mov	r10, rbx
	mov	r8b, r15b
	mov	r9, r13
	mov	r11, rbp
	mov	rbp, r12
	mov	r12b, byte ptr [rsp + 0xc6]
	mov	rdi, r14
	mov	r14d, dword ptr [rsp + 0xd8]
	je	.label_1181
	jmp	.label_1188
.label_1304:
	mov	r10, rbx
	mov	r8b, r15b
	mov	r9, r13
	mov	r11, rbp
	mov	rbp, r12
	mov	r12b, byte ptr [rsp + 0xc6]
	mov	rdi, r14
	mov	r14d, dword ptr [rsp + 0xd8]
	nop	word ptr cs:[rax + rax]
.label_1181:
	movzx	r15d, byte ptr [r11 + rdi]
	cmp	r15, 0x7e
	ja	.label_1244
	xor	edx, edx
	mov	r13b, 1
	mov	cl, 0x6e
	mov	bl, 0x61
	xor	eax, eax
	jmp	qword ptr [word ptr [+ (r15 * 8) + label_1213]]
.label_1660:
	test	rdi, rdi
	jne	.label_1197
	jmp	.label_1222
.label_1664:
	xor	eax, eax
	cmp	rbp, -1
	je	.label_1223
	test	rdi, rdi
	jne	.label_1225
	cmp	rbp, 1
	je	.label_1222
	xor	r13d, r13d
	jmp	.label_1182
.label_1653:
	cmp	byte ptr [rsp + 0xb6], 0
	je	.label_1228
	cmp	byte ptr [rsp + 0xc7], 0
	jne	.label_1188
	cmp	r9d, 2
	jne	.label_1234
	mov	al, r14b
	and	al, 1
	jne	.label_1238
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_1243
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rcx], 0x27
.label_1243:
	mov	rax, qword ptr [rsp + 0xf0]
	inc	rax
	cmp	rax, r10
	jae	.label_1209
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx + rax], 0x24
.label_1209:
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 2]
	cmp	rax, r10
	jae	.label_1233
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx + rax], 0x27
.label_1233:
	mov	rax, qword ptr [rsp + 0xf0]
	add	rax, 3
	mov	r14b, 1
	mov	rcx, rax
	jmp	.label_1218
.label_1654:
	mov	bl, 0x62
	jmp	.label_1268
.label_1655:
	mov	cl, 0x74
	jmp	.label_1192
.label_1656:
	mov	bl, 0x76
	jmp	.label_1268
.label_1657:
	mov	bl, 0x66
	jmp	.label_1268
.label_1658:
	mov	cl, 0x72
	jmp	.label_1192
.label_1661:
	mov	al, 1
	mov	qword ptr [rsp + 0x70], rax
	cmp	r9d, 2
	jne	.label_1274
	cmp	byte ptr [rsp + 0xc7], 0
	jne	.label_1278
	test	r10, r10
	sete	al
	mov	rcx, qword ptr [rsp + 0x90]
	mov	rdx, rcx
	test	rdx, rdx
	setne	cl
	or	cl, al
	cmove	rdx, r10
	mov	qword ptr [rsp + 0x90], rdx
	mov	eax, 0
	cmove	r10, rax
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_1283
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rcx], 0x27
.label_1283:
	mov	rax, qword ptr [rsp + 0xf0]
	inc	rax
	cmp	rax, r10
	jae	.label_1298
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx + rax], 0x5c
.label_1298:
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 2]
	cmp	rax, r10
	jae	.label_1232
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx + rax], 0x27
.label_1232:
	add	qword ptr [rsp + 0xf0], 3
	xor	r14d, r14d
.label_1274:
	xor	eax, eax
	mov	r13b, 1
	jmp	.label_1182
.label_1662:
	cmp	r9d, 5
	je	.label_1262
	cmp	r9d, 2
	jne	.label_1197
	cmp	byte ptr [rsp + 0xc7], 0
	je	.label_1197
	jmp	.label_1203
.label_1663:
	cmp	r9d, 2
	jne	.label_1206
	cmp	byte ptr [rsp + 0xc7], 0
	je	.label_1210
	jmp	.label_1214
.label_1244:
	mov	qword ptr [rsp + 0x30], r9
	mov	byte ptr [rsp + 0x69], r8b
	mov	qword ptr [rsp + 0x48], r10
	cmp	qword ptr [rsp + 0x60], 1
	jne	.label_1216
	mov	r13d, r14d
	mov	r14, r11
	mov	rbx, rdi
	call	__ctype_b_loc
	mov	rdi, rbx
	mov	r11, r14
	mov	r14d, r13d
	mov	rax, qword ptr [rax]
	movzx	r13d, word ptr [rax + r15*2]
	shr	r13d, 0xe
	and	r13b, 1
	mov	eax, 1
.label_1189:
	and	r13b, 1
	mov	cl, r13b
	or	cl, byte ptr [rsp + 0x6b]
	cmp	rax, 1
	mov	r10, qword ptr [rsp + 0x48]
	mov	r8b, byte ptr [rsp + 0x69]
	mov	r9, qword ptr [rsp + 0x30]
	ja	.label_1229
	test	cl, cl
	je	.label_1229
	xor	eax, eax
	jmp	.label_1182
.label_1223:
	test	rdi, rdi
	jne	.label_1249
	mov	cl, byte ptr [r11 + 1]
	test	cl, cl
	jne	.label_1249
.label_1222:
	mov	dl, 1
.label_1659:
	cmp	byte ptr [rsp + 0xb7], 0
	je	.label_1194
	xor	eax, eax
	mov	r13b, dl
	jmp	.label_1182
.label_1228:
	cmp	dword ptr [rsp + 0x5c], 0
	jne	.label_1230
	jmp	.label_1197
.label_1206:
	cmp	byte ptr [rsp + 0x6a], 0
	mov	cl, r15b
	je	.label_1192
.label_1210:
	xor	eax, eax
	xor	r13d, r13d
	jmp	.label_1184
.label_1192:
	cmp	byte ptr [rsp + 0xb7], 0
	mov	bl, cl
	je	.label_1264
.label_1268:
	xor	eax, eax
	cmp	byte ptr [rsp + 0xb6], 0
	mov	r13d, 0
	je	.label_1182
	jmp	.label_1185
.label_1216:
	mov	qword ptr [rsp + 0x100], 0
	cmp	rbp, -1
	jne	.label_1272
	mov	rbp, rdi
	mov	rdi, r11
	mov	rbx, r11
	call	strlen
	mov	rdi, rbp
	mov	r11, rbx
	mov	rbp, rax
.label_1272:
	mov	qword ptr [rsp + 0x40], rbp
	lea	rax, [r11 + rdi]
	mov	qword ptr [rsp + 0x28], rax
	mov	r13b, 1
	xor	eax, eax
	lea	rbx, [rsp + 0x100]
.label_1221:
	mov	qword ptr [rsp + 0xd8], rax
	mov	qword ptr [rsp + 0x50], rdi
	lea	rax, [rax + rdi]
	mov	qword ptr [rsp + 0x38], rax
	lea	rsi, [r11 + rax]
	mov	rdx, rbp
	sub	rdx, rax
	lea	rdi, [rsp + 0xfc]
	mov	rcx, rbx
	call	rpl_mbrtowc
	mov	rbp, rax
	test	rbp, rbp
	je	.label_1297
	cmp	rbp, -1
	mov	r10, qword ptr [rsp + 0x48]
	movabs	rsi, 0x20000002b
	je	.label_1303
	cmp	rbp, -2
	mov	rdi, qword ptr [rsp + 0x50]
	je	.label_1183
	cmp	rbp, 1
	seta	al
	and	al, byte ptr [rsp + 0x7f]
	movzx	eax, al
	cmp	eax, 1
	jne	.label_1217
	mov	rax, qword ptr [rsp + 0xd8]
	mov	rcx, qword ptr [rsp + 0x28]
	lea	rax, [rcx + rax]
	mov	ecx, 1
.label_1204:
	movsx	edx, byte ptr [rax + rcx]
	add	edx, -0x5b
	cmp	edx, 0x21
	ja	.label_1199
	bt	rsi, rdx
	jb	.label_1202
.label_1199:
	inc	rcx
	cmp	rcx, rbp
	jb	.label_1204
.label_1217:
	mov	edi, dword ptr [rsp + 0xfc]
	call	iswprint
	test	eax, eax
	jne	.label_1195
	xor	r13d, r13d
.label_1195:
	mov	rax, qword ptr [rsp + 0xd8]
	add	rax, rbp
	mov	rdi, rbx
	mov	rbp, rax
	call	mbsinit
	test	eax, eax
	mov	rax, rbp
	mov	r11, qword ptr [rsp + 0xa8]
	mov	rbp, qword ptr [rsp + 0x40]
	mov	rdi, qword ptr [rsp + 0x50]
	je	.label_1221
	jmp	.label_1189
.label_1249:
	mov	rbp, -1
	xor	r13d, r13d
	jmp	.label_1182
.label_1262:
	cmp	dword ptr [rsp + 0x58], 0
	je	.label_1197
	lea	rcx, [rdi + 2]
	cmp	rcx, rbp
	jae	.label_1197
	movzx	eax, byte ptr [rdi + r11 + 1]
	cmp	eax, 0x3f
	jne	.label_1197
	movsx	edx, byte ptr [r11 + rcx]
	xor	eax, eax
	cmp	edx, 0x3e
	ja	.label_1240
	movabs	rsi, 0x7000a38200000000
	bt	rsi, rdx
	jae	.label_1247
	cmp	byte ptr [rsp + 0xc7], 0
	jne	.label_1186
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_1255
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rsi, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rsi], 0x3f
.label_1255:
	mov	rax, qword ptr [rsp + 0xf0]
	inc	rax
	cmp	rax, r10
	jae	.label_1260
	mov	rsi, qword ptr [rsp + 0xe0]
	mov	byte ptr [rsi + rax], 0x22
.label_1260:
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 2]
	cmp	rax, r10
	jae	.label_1266
	mov	rsi, qword ptr [rsp + 0xe0]
	mov	byte ptr [rsi + rax], 0x22
.label_1266:
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 3]
	cmp	rax, r10
	jae	.label_1201
	mov	rsi, qword ptr [rsp + 0xe0]
	mov	byte ptr [rsi + rax], 0x3f
.label_1201:
	add	qword ptr [rsp + 0xf0], 4
	xor	eax, eax
	mov	rdi, rcx
	mov	r15b, dl
	xor	r13d, r13d
	jmp	.label_1182
.label_1197:
	xor	eax, eax
	xor	r13d, r13d
.label_1182:
	cmp	byte ptr [rsp + 0xd7], 0
	je	.label_1286
	cmp	qword ptr [rsp + 0x140], 0
	jne	.label_1288
	jmp	.label_1291
	nop	word ptr [rax + rax]
.label_1286:
	cmp	byte ptr [rsp + 0xc5], 0
	je	.label_1291
.label_1288:
	mov	cl, r15b
	shr	cl, 5
	movzx	edx, cl
	mov	esi, 1
	mov	cl, r15b
	shl	esi, cl
	mov	ecx, dword ptr [rsp + 0xec]
	test	cl, cl
	jne	.label_1294
	mov	rcx, qword ptr [rsp + 0x140]
	and	esi, dword ptr [rcx + rdx*4]
	jmp	.label_1301
	nop	word ptr cs:[rax + rax]
.label_1291:
	mov	ecx, dword ptr [rsp + 0xec]
	test	cl, cl
.label_1301:
	mov	bl, r15b
	je	.label_1184
	jmp	.label_1185
.label_1294:
	mov	bl, r15b
.label_1185:
	cmp	byte ptr [rsp + 0xc7], 0
	jne	.label_1188
	cmp	r9d, 2
	jne	.label_1190
	mov	al, r14b
	and	al, 1
	jne	.label_1190
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_1196
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rcx], 0x27
.label_1196:
	mov	rax, qword ptr [rsp + 0xf0]
	inc	rax
	cmp	rax, r10
	jae	.label_1296
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx + rax], 0x24
.label_1296:
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 2]
	cmp	rax, r10
	jae	.label_1212
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx + rax], 0x27
.label_1212:
	add	qword ptr [rsp + 0xf0], 3
	mov	r14b, 1
.label_1190:
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_1224
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rcx], 0x5c
.label_1224:
	inc	qword ptr [rsp + 0xf0]
	jmp	.label_1235
.label_1225:
	xor	r13d, r13d
	jmp	.label_1182
.label_1229:
	add	rax, rdi
	mov	qword ptr [rsp + 0xd8], rax
	xor	eax, eax
	jmp	.label_1231
	nop	word ptr [rax + rax]
.label_1226:
	inc	qword ptr [rsp + 0xf0]
	mov	r15b, byte ptr [r11 + rdi + 1]
	mov	rdi, rdx
.label_1231:
	test	cl, cl
	je	.label_1248
	mov	edx, dword ptr [rsp + 0xec]
	test	dl, 1
	je	.label_1250
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_1252
	mov	rdx, qword ptr [rsp + 0xe0]
	mov	rsi, qword ptr [rsp + 0xf0]
	mov	byte ptr [rdx + rsi], 0x5c
.label_1252:
	inc	qword ptr [rsp + 0xf0]
	mov	dword ptr [rsp + 0xec], 0
	jmp	.label_1250
	nop	word ptr [rax + rax]
.label_1248:
	cmp	byte ptr [rsp + 0xc7], 0
	jne	.label_1188
	cmp	r9d, 2
	jne	.label_1267
	mov	al, r14b
	and	al, 1
	jne	.label_1267
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_1270
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rdx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rdx], 0x27
.label_1270:
	mov	rax, qword ptr [rsp + 0xf0]
	inc	rax
	cmp	rax, r10
	jae	.label_1236
	mov	rdx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rdx + rax], 0x24
.label_1236:
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 2]
	cmp	rax, r10
	jae	.label_1282
	mov	rdx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rdx + rax], 0x27
.label_1282:
	add	qword ptr [rsp + 0xf0], 3
	mov	r14b, 1
.label_1267:
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_1293
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rdx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rdx], 0x5c
.label_1293:
	mov	rax, qword ptr [rsp + 0xf0]
	inc	rax
	cmp	rax, r10
	jae	.label_1295
	mov	dl, r15b
	shr	dl, 6
	or	dl, 0x30
	mov	rsi, qword ptr [rsp + 0xe0]
	mov	byte ptr [rsi + rax], dl
.label_1295:
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 2]
	cmp	rax, r10
	jae	.label_1300
	mov	dl, r15b
	shr	dl, 3
	and	dl, 7
	or	dl, 0x30
	mov	rsi, qword ptr [rsp + 0xe0]
	mov	byte ptr [rsi + rax], dl
.label_1300:
	add	qword ptr [rsp + 0xf0], 3
	and	r15b, 7
	or	r15b, 0x30
	mov	al, 1
.label_1250:
	lea	rdx, [rdi + 1]
	cmp	qword ptr [rsp + 0xd8], rdx
	jbe	.label_1184
	test	r14b, 1
	je	.label_1246
	mov	bl, al
	and	bl, 1
	jne	.label_1246
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_1215
	mov	rsi, qword ptr [rsp + 0xe0]
	mov	rbx, rdi
	mov	rdi, qword ptr [rsp + 0xf0]
	mov	byte ptr [rsi + rdi], 0x27
	mov	rdi, rbx
.label_1215:
	mov	rsi, qword ptr [rsp + 0xf0]
	inc	rsi
	cmp	rsi, r10
	jae	.label_1219
	mov	rbx, rdi
	mov	rdi, qword ptr [rsp + 0xe0]
	mov	byte ptr [rdi + rsi], 0x27
	mov	rdi, rbx
.label_1219:
	add	qword ptr [rsp + 0xf0], 2
	xor	r14d, r14d
.label_1246:
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_1226
	mov	rsi, qword ptr [rsp + 0xe0]
	mov	rbx, rdi
	mov	rdi, qword ptr [rsp + 0xf0]
	mov	byte ptr [rsi + rdi], r15b
	mov	rdi, rbx
	jmp	.label_1226
	nop	dword ptr [rax]
.label_1184:
	test	r14b, 1
	je	.label_1241
	and	al, 1
	jne	.label_1241
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_1269
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rcx], 0x27
.label_1269:
	mov	rax, qword ptr [rsp + 0xf0]
	inc	rax
	cmp	rax, r10
	jae	.label_1239
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx + rax], 0x27
.label_1239:
	add	qword ptr [rsp + 0xf0], 2
	xor	r14d, r14d
.label_1241:
	mov	bl, r15b
.label_1235:
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_1302
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rcx], bl
.label_1302:
	inc	qword ptr [rsp + 0xf0]
	shl	r13b, 7
	sar	r13b, 7
	and	r13b, r8b
	mov	r8b, r13b
	jmp	.label_1230
.label_1234:
	mov	rcx, qword ptr [rsp + 0xf0]
	jmp	.label_1218
.label_1238:
	mov	rcx, qword ptr [rsp + 0xf0]
.label_1218:
	cmp	rcx, r10
	jae	.label_1275
	mov	rax, qword ptr [rsp + 0xe0]
	mov	byte ptr [rax + rcx], 0x5c
.label_1275:
	lea	rax, [rcx + 1]
	mov	qword ptr [rsp + 0xf0], rax
	mov	al, 1
	mov	r15b, 0x30
	cmp	r9d, 2
	je	.label_1280
	lea	rdx, [rdi + 1]
	cmp	rdx, rbp
	jae	.label_1287
	mov	dl, byte ptr [r11 + rdx]
	add	dl, 0xd0
	movzx	edx, dl
	cmp	edx, 9
	ja	.label_1290
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_1292
	mov	rdx, qword ptr [rsp + 0xe0]
	mov	rsi, qword ptr [rsp + 0xf0]
	mov	byte ptr [rdx + rsi], 0x30
.label_1292:
	lea	rdx, [rcx + 2]
	cmp	rdx, r10
	jae	.label_1258
	mov	rsi, qword ptr [rsp + 0xe0]
	mov	byte ptr [rsi + rdx], 0x30
.label_1258:
	add	rcx, 3
	xor	r13d, r13d
	mov	qword ptr [rsp + 0xf0], rcx
	jmp	.label_1182
.label_1280:
	xor	r13d, r13d
	jmp	.label_1182
.label_1287:
	xor	r13d, r13d
	jmp	.label_1182
.label_1290:
	xor	r13d, r13d
	jmp	.label_1182
.label_1303:
	xor	r13d, r13d
.label_1297:
	mov	r11, qword ptr [rsp + 0xa8]
	mov	rbp, qword ptr [rsp + 0x40]
	mov	rdi, qword ptr [rsp + 0x50]
	mov	rax, qword ptr [rsp + 0xd8]
	jmp	.label_1189
.label_1183:
	mov	rbp, qword ptr [rsp + 0x40]
	mov	rcx, qword ptr [rsp + 0x38]
	cmp	rbp, rcx
	jbe	.label_1198
	mov	r11, qword ptr [rsp + 0xa8]
	mov	rax, qword ptr [rsp + 0xd8]
.label_1205:
	cmp	byte ptr [r11 + rcx], 0
	je	.label_1208
	lea	rcx, [rax + rdi + 1]
	inc	rax
	cmp	rcx, rbp
	jb	.label_1205
	xor	r13d, r13d
	jmp	.label_1189
.label_1198:
	xor	r13d, r13d
	mov	r11, qword ptr [rsp + 0xa8]
	mov	rax, qword ptr [rsp + 0xd8]
	jmp	.label_1189
.label_1208:
	xor	r13d, r13d
	jmp	.label_1189
.label_1240:
	xor	r13d, r13d
	jmp	.label_1182
.label_1247:
	xor	r13d, r13d
	jmp	.label_1182
	nop	dword ptr [rax]
.label_1254:
	mov	r13, rdi
.label_1257:
	cmp	r9d, 2
	setne	al
	cmp	qword ptr [rsp + 0xf0], 0
	setne	dl
	cmp	byte ptr [rsp + 0xc7], 0
	je	.label_1227
	or	al, dl
	je	.label_1207
.label_1227:
	mov	dword ptr [rsp + 0xd8], r14d
	mov	qword ptr [rsp + 0xa8], r11
	cmp	r9d, 2
	setne	al
	cmp	byte ptr [rsp + 0xc7], 0
	setne	dl
	mov	rsi, qword ptr [rsp + 0x70]
	test	sil, 1
	mov	bl, byte ptr [rsp + 0x8f]
	mov	rsi, qword ptr [rsp + 0x80]
	je	.label_1237
	or	al, dl
	jne	.label_1237
	test	r8b, 1
	jne	.label_1256
	cmp	qword ptr [rsp + 0x90], 0
	je	.label_1237
	test	r10, r10
	mov	r15d, r9d
	mov	al, bl
	mov	r12b, sil
	mov	rbp, qword ptr [rsp + 0x90]
	je	.label_1259
.label_1237:
	mov	rdx, qword ptr [rsp + 0xb8]
	test	rdx, rdx
	je	.label_1265
	cmp	byte ptr [rsp + 0xc7], 0
	jne	.label_1265
	mov	al, byte ptr [rdx]
	test	al, al
	je	.label_1265
	inc	rdx
	nop	word ptr cs:[rax + rax]
.label_1279:
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_1299
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	rsi, qword ptr [rsp + 0xf0]
	mov	byte ptr [rcx + rsi], al
.label_1299:
	inc	qword ptr [rsp + 0xf0]
	mov	al, byte ptr [rdx]
	inc	rdx
	test	al, al
	jne	.label_1279
.label_1265:
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_1285
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rcx], 0
	jmp	.label_1285
.label_1194:
	mov	r9d, 2
	jmp	.label_1188
.label_1202:
	mov	r9d, 2
	mov	r11, qword ptr [rsp + 0xa8]
	mov	rbp, qword ptr [rsp + 0x40]
	jmp	.label_1188
.label_1207:
	mov	rbp, r13
	jmp	.label_1188
.label_1264:
	mov	r9d, 2
.label_1188:
	cmp	byte ptr [rsp + 0xb6], 0
	mov	r8d, 4
	cmove	r8d, r9d
	cmp	r9d, 2
.label_1835:
	cmovne	r8d, r9d
	mov	r9d, dword ptr [rsp + 0x6c]
	and	r9d, 0xfffffffd
	mov	rax, qword ptr [rsp + 0x98]
	mov	qword ptr [rsp + 0x10], rax
	mov	rax, qword ptr [rsp + 0xa0]
	mov	qword ptr [rsp + 8], rax
	mov	qword ptr [rsp], 0
	mov	rdi, qword ptr [rsp + 0xe0]
	mov	rsi, r10
	mov	rdx, r11
	mov	rcx, rbp
.label_1211:
	call	quotearg_buffer_restyled
	mov	qword ptr [rsp + 0xf0], rax
.label_1285:
	mov	rax, qword ptr [rsp + 0xf0]
	add	rsp, 0x108
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_1256:
	mov	rax, qword ptr [rsp + 0x98]
	mov	qword ptr [rsp + 0x10], rax
	mov	rax, qword ptr [rsp + 0xa0]
	mov	qword ptr [rsp + 8], rax
	mov	rax, qword ptr [rsp + 0x140]
	mov	qword ptr [rsp], rax
	mov	r8d, 5
	mov	rdi, qword ptr [rsp + 0xe0]
	mov	rsi, qword ptr [rsp + 0x90]
	mov	rdx, qword ptr [rsp + 0xa8]
	mov	rcx, r13
	mov	r9d, dword ptr [rsp + 0x6c]
	jmp	.label_1211
.label_1278:
	mov	r9d, 2
	jmp	.label_1188
.label_1214:
	mov	r9d, 2
	jmp	.label_1188
.label_1203:
	mov	r9d, 2
	jmp	.label_1188
.label_1186:
	mov	r9d, 5
	jmp	.label_1188
.label_1187:
	call	abort
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4100f0
	.globl quotearg_alloc
	.type quotearg_alloc, @function
quotearg_alloc:

	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x38
	mov	r12, rsi
	mov	rbx, rdi
	mov	qword ptr [rsp + 0x20], rbx
	test	rdx, rdx
	mov	r14d, OFFSET FLAT:default_quoting_options
	cmovne	r14, rdx
	call	__errno_location
	mov	qword ptr [rsp + 0x28], rax
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rsp + 0x34], ecx
	mov	r8d, dword ptr [r14]
	mov	ebp, dword ptr [r14 + 4]
	or	ebp, 1
	lea	r15, [r14 + 8]
	mov	rax, qword ptr [r14 + 0x28]
	mov	rcx, qword ptr [r14 + 0x30]
	mov	qword ptr [rsp + 0x10], rcx
	mov	qword ptr [rsp + 8], rax
	mov	qword ptr [rsp], r15
	xor	edi, edi
	xor	esi, esi
	mov	rdx, rbx
	mov	rcx, r12
	mov	r9d, ebp
	call	quotearg_buffer_restyled
	mov	rbx, rax
	inc	rbx
	mov	rdi, rbx
	call	xmalloc
	mov	r13, rax
	mov	r8d, dword ptr [r14]
	mov	rax, qword ptr [r14 + 0x28]
	mov	rcx, qword ptr [r14 + 0x30]
	mov	qword ptr [rsp + 0x10], rcx
	mov	qword ptr [rsp + 8], rax
	mov	qword ptr [rsp], r15
	mov	rdi, r13
	mov	rsi, rbx
	mov	rdx, qword ptr [rsp + 0x20]
	mov	rcx, r12
	mov	r9d, ebp
	call	quotearg_buffer_restyled
	mov	eax, dword ptr [rsp + 0x34]
	mov	rcx, qword ptr [rsp + 0x28]
	mov	dword ptr [rcx], eax
	mov	rax, r13
	add	rsp, 0x38
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
	#Procedure 0x4101c0
	.globl quotearg_alloc_mem
	.type quotearg_alloc_mem, @function
quotearg_alloc_mem:

	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x48
	mov	rbx, rdx
	mov	qword ptr [rsp + 0x30], rbx
	mov	r14, rsi
	mov	qword ptr [rsp + 0x28], r14
	mov	r15, rdi
	mov	qword ptr [rsp + 0x20], r15
	test	rcx, rcx
	mov	r12d, OFFSET FLAT:default_quoting_options
	cmovne	r12, rcx
	call	__errno_location
	mov	qword ptr [rsp + 0x38], rax
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rsp + 0x44], ecx
	test	rbx, rbx
	sete	al
	movzx	ebp, al
	or	ebp, dword ptr [r12 + 4]
	mov	r8d, dword ptr [r12]
	lea	r13, [r12 + 8]
	mov	rax, qword ptr [r12 + 0x28]
	mov	rcx, qword ptr [r12 + 0x30]
	mov	qword ptr [rsp + 0x10], rcx
	mov	qword ptr [rsp + 8], rax
	mov	qword ptr [rsp], r13
	xor	edi, edi
	xor	esi, esi
	mov	rdx, r15
	mov	rcx, r14
	mov	r9d, ebp
	call	quotearg_buffer_restyled
	mov	rbx, rax
	lea	r15, [rbx + 1]
	mov	rdi, r15
	call	xmalloc
	mov	r14, rax
	mov	r8d, dword ptr [r12]
	mov	rax, qword ptr [r12 + 0x28]
	mov	rcx, qword ptr [r12 + 0x30]
	mov	qword ptr [rsp + 0x10], rcx
	mov	qword ptr [rsp + 8], rax
	mov	qword ptr [rsp], r13
	mov	rdi, r14
	mov	rsi, r15
	mov	rdx, qword ptr [rsp + 0x20]
	mov	rcx, qword ptr [rsp + 0x28]
	mov	r9d, ebp
	call	quotearg_buffer_restyled
	mov	rax, qword ptr [rsp + 0x30]
	test	rax, rax
	mov	ecx, dword ptr [rsp + 0x44]
	mov	rdx, qword ptr [rsp + 0x38]
	mov	dword ptr [rdx], ecx
	je	.label_1305
	mov	qword ptr [rax], rbx
.label_1305:
	mov	rax, r14
	add	rsp, 0x48
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
	#Procedure 0x4102c0
	.globl quotearg_free
	.type quotearg_free, @function
quotearg_free:

	push	r15
	push	r14
	push	rbx
	mov	r14,  qword ptr [word ptr [rip + slotvec]]
	cmp	dword ptr [dword ptr [rip + nslots]],  2
	jl	.label_1306
	lea	r15, [r14 + 0x18]
	mov	ebx, 1
	nop	
.label_1309:
	mov	rdi, qword ptr [r15]
	call	free
	inc	rbx
	movsxd	rax,  dword ptr [dword ptr [rip + nslots]]
	add	r15, 0x10
	cmp	rbx, rax
	jl	.label_1309
.label_1306:
	mov	rdi, qword ptr [r14 + 8]
	mov	eax, OFFSET FLAT:slot0
	cmp	rdi, rax
	je	.label_1310
	call	free
	mov	qword ptr [word ptr [rip + slotvec0]],  0x100
	mov	qword ptr [word ptr [rip + label_1307]], OFFSET FLAT:slot0
.label_1310:
	mov	eax, OFFSET FLAT:slotvec0
	cmp	r14, rax
	je	.label_1308
	mov	rdi, r14
	call	free
	mov	qword ptr [word ptr [rip + slotvec]], OFFSET FLAT:slotvec0
.label_1308:
	mov	dword ptr [dword ptr [rip + nslots]],  1
	pop	rbx
	pop	r14
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x410360
	.globl quotearg_n
	.type quotearg_n, @function
quotearg_n:

	mov	rdx, -1
	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	nop	
	.section	.text
	.align	16
	#Procedure 0x410370

	.globl quotearg_n_options
	.type quotearg_n_options, @function
quotearg_n_options:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x48
	mov	r12, rcx
	mov	r14, rdx
	mov	qword ptr [rsp + 0x40], rsi
	mov	ebx, edi
	call	__errno_location
	test	ebx, ebx
	js	.label_1311
	mov	ecx, dword ptr [rax]
	mov	rbp,  qword ptr [word ptr [rip + slotvec]]
	cmp	dword ptr [dword ptr [rip + nslots]],  ebx
	jle	.label_1316
	mov	dword ptr [rsp + 0x2c], ecx
	mov	qword ptr [rsp + 0x30], rax
	jmp	.label_1312
.label_1316:
	mov	qword ptr [rsp + 0x38], r14
	cmp	ebx, 0x7fffffff
	je	.label_1315
	mov	dword ptr [rsp + 0x2c], ecx
	mov	qword ptr [rsp + 0x30], rax
	mov	r13d, OFFSET FLAT:slotvec0
	xor	edi, edi
	cmp	rbp, r13
	cmovne	rdi, rbp
	lea	r15d, [rbx + 1]
	movsxd	rsi, ebx
	shl	rsi, 4
	add	rsi, 0x10
	call	xrealloc
	mov	r14, rax
	cmp	rbp, r13
	mov	qword ptr [word ptr [rip + slotvec]],  r14
	jne	.label_1314
	movups	xmm0,  xmmword ptr [word ptr [rip + slotvec0]]
	movups	xmmword ptr [r14], xmm0
.label_1314:
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
	mov	r14, qword ptr [rsp + 0x38]
.label_1312:
	mov	qword ptr [rsp + 0x38], r14
	movsxd	r13, ebx
	shl	r13, 4
	mov	r15, qword ptr [rbp + r13]
	mov	rbx, qword ptr [rbp + r13 + 8]
	mov	rcx, r12
	mov	qword ptr [rsp + 0x20], rcx
	mov	r8d, dword ptr [rcx]
	mov	r12d, dword ptr [rcx + 4]
	or	r12d, 1
	lea	rdx, [rcx + 8]
	mov	qword ptr [rsp + 0x18], rdx
	mov	rax, qword ptr [rcx + 0x28]
	mov	rcx, qword ptr [rcx + 0x30]
	mov	qword ptr [rsp + 0x10], rcx
	mov	qword ptr [rsp + 8], rax
	mov	qword ptr [rsp], rdx
	mov	rdi, rbx
	mov	rsi, r15
	mov	rdx, qword ptr [rsp + 0x40]
	mov	rcx, r14
	mov	r9d, r12d
	call	quotearg_buffer_restyled
	mov	r14, rax
	cmp	r15, r14
	ja	.label_1317
	lea	rax, [rbp + r13]
	lea	rbp, [rbp + r13 + 8]
	inc	r14
	mov	qword ptr [rax], r14
	mov	eax, OFFSET FLAT:slot0
	cmp	rbx, rax
	je	.label_1313
	mov	rdi, rbx
	call	free
.label_1313:
	mov	rdi, r14
	call	xmalloc
	mov	rbx, rax
	mov	qword ptr [rbp], rbx
	mov	rcx, qword ptr [rsp + 0x20]
	mov	r8d, dword ptr [rcx]
	mov	rax, qword ptr [rcx + 0x28]
	mov	rcx, qword ptr [rcx + 0x30]
	mov	qword ptr [rsp + 0x10], rcx
	mov	qword ptr [rsp + 8], rax
	mov	rax, qword ptr [rsp + 0x18]
	mov	qword ptr [rsp], rax
	mov	rdi, rbx
	mov	rsi, r14
	mov	rdx, qword ptr [rsp + 0x40]
	mov	rcx, qword ptr [rsp + 0x38]
	mov	r9d, r12d
	call	quotearg_buffer_restyled
.label_1317:
	mov	rax, qword ptr [rsp + 0x30]
	mov	ecx, dword ptr [rsp + 0x2c]
	mov	dword ptr [rax], ecx
	mov	rax, rbx
	add	rsp, 0x48
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_1311:
	call	abort
.label_1315:
	call	xalloc_die
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x410540
	.globl quotearg_n_mem
	.type quotearg_n_mem, @function
quotearg_n_mem:

	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x410550
	.globl quotearg
	.type quotearg, @function
quotearg:

	mov	rax, rdi
	xor	edi, edi
	mov	rdx, -1
	mov	ecx, OFFSET FLAT:default_quoting_options
	mov	rsi, rax
	jmp	quotearg_n_options
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x410570
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
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x410590

	.globl quotearg_n_style
	.type quotearg_n_style, @function
quotearg_n_style:
	sub	rsp, 0x78
	mov	rax, rdx
	xorps	xmm0, xmm0
	movaps	xmmword ptr [rsp + 0x60], xmm0
	movaps	xmmword ptr [rsp + 0x50], xmm0
	movaps	xmmword ptr [rsp + 0x40], xmm0
	mov	dword ptr [rsp + 0x70], 0
	cmp	esi, 0xa
	je	.label_1318
	mov	dword ptr [rsp + 8], esi
	mov	ecx, dword ptr [rsp + 0x70]
	mov	dword ptr [rsp + 0x3c], ecx
	movaps	xmm0, xmmword ptr [rsp + 0x40]
	movaps	xmm1, xmmword ptr [rsp + 0x50]
	movaps	xmm2, xmmword ptr [rsp + 0x60]
	movups	xmmword ptr [rsp + 0x2c], xmm2
	movups	xmmword ptr [rsp + 0x1c], xmm1
	movups	xmmword ptr [rsp + 0xc], xmm0
	lea	rcx, [rsp + 8]
	mov	rdx, -1
	mov	rsi, rax
	call	quotearg_n_options
	add	rsp, 0x78
	ret	
.label_1318:
	call	abort
	nop	
	.section	.text
	.align	16
	#Procedure 0x410600

	.globl quotearg_n_style_mem
	.type quotearg_n_style_mem, @function
quotearg_n_style_mem:
	sub	rsp, 0x78
	xorps	xmm0, xmm0
	movaps	xmmword ptr [rsp + 0x60], xmm0
	movaps	xmmword ptr [rsp + 0x50], xmm0
	movaps	xmmword ptr [rsp + 0x40], xmm0
	mov	dword ptr [rsp + 0x70], 0
	cmp	esi, 0xa
	je	.label_1319
	mov	dword ptr [rsp + 8], esi
	mov	eax, dword ptr [rsp + 0x70]
	mov	dword ptr [rsp + 0x3c], eax
	movaps	xmm0, xmmword ptr [rsp + 0x40]
	movaps	xmm1, xmmword ptr [rsp + 0x50]
	movaps	xmm2, xmmword ptr [rsp + 0x60]
	movups	xmmword ptr [rsp + 0x2c], xmm2
	movups	xmmword ptr [rsp + 0x1c], xmm1
	movups	xmmword ptr [rsp + 0xc], xmm0
	lea	rax, [rsp + 8]
	mov	rsi, rdx
	mov	rdx, rcx
	mov	rcx, rax
	call	quotearg_n_options
	add	rsp, 0x78
	ret	
.label_1319:
	call	abort
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x410670

	.globl quotearg_style
	.type quotearg_style, @function
quotearg_style:
	sub	rsp, 0x78
	xorps	xmm0, xmm0
	movaps	xmmword ptr [rsp + 0x60], xmm0
	movaps	xmmword ptr [rsp + 0x50], xmm0
	movaps	xmmword ptr [rsp + 0x40], xmm0
	mov	dword ptr [rsp + 0x70], 0
	cmp	edi, 0xa
	je	.label_1320
	mov	dword ptr [rsp + 8], edi
	mov	eax, dword ptr [rsp + 0x70]
	mov	dword ptr [rsp + 0x3c], eax
	movaps	xmm0, xmmword ptr [rsp + 0x40]
	movaps	xmm1, xmmword ptr [rsp + 0x50]
	movaps	xmm2, xmmword ptr [rsp + 0x60]
	movups	xmmword ptr [rsp + 0x2c], xmm2
	movups	xmmword ptr [rsp + 0x1c], xmm1
	movups	xmmword ptr [rsp + 0xc], xmm0
	lea	rcx, [rsp + 8]
	xor	edi, edi
	mov	rdx, -1
	call	quotearg_n_options
	add	rsp, 0x78
	ret	
.label_1320:
	call	abort
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4106e0
	.globl quotearg_style_mem
	.type quotearg_style_mem, @function
quotearg_style_mem:

	sub	rsp, 0x78
	xorps	xmm0, xmm0
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
	movaps	xmm2, xmmword ptr [rsp + 0x60]
	movups	xmmword ptr [rsp + 0x2c], xmm2
	movups	xmmword ptr [rsp + 0x1c], xmm1
	movups	xmmword ptr [rsp + 0xc], xmm0
	lea	rcx, [rsp + 8]
	xor	edi, edi
	call	quotearg_n_options
	add	rsp, 0x78
	ret	
.label_1321:
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x410750
	.globl quotearg_char_mem
	.type quotearg_char_mem, @function
quotearg_char_mem:

	sub	rsp, 0x38
	mov	ecx, edx
	mov	r8, rsi
	mov	rdx, rdi
	mov	rsi,  qword ptr [word ptr [rip + label_1322]]
	mov	qword ptr [rsp + 0x30], rsi
	movups	xmm0,  xmmword ptr [word ptr [rip + label_1323]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_1324]]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + default_quoting_options]]
	movaps	xmmword ptr [rsp], xmm0
	mov	al, cl
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
	nop	
	.section	.text
	.align	16
	#Procedure 0x4107c0
	.globl quotearg_char
	.type quotearg_char, @function
quotearg_char:

	sub	rsp, 0x38
	mov	ecx, esi
	mov	rax, rdi
	mov	rdx,  qword ptr [word ptr [rip + label_1322]]
	mov	qword ptr [rsp + 0x30], rdx
	movups	xmm0,  xmmword ptr [word ptr [rip + label_1323]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_1324]]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + default_quoting_options]]
	movaps	xmmword ptr [rsp], xmm0
	mov	dl, cl
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
	nop	
	.section	.text
	.align	16
	#Procedure 0x410830

	.globl quotearg_colon
	.type quotearg_colon, @function
quotearg_colon:
	sub	rsp, 0x38
	mov	rax, rdi
	mov	rcx,  qword ptr [word ptr [rip + label_1322]]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0,  xmmword ptr [word ptr [rip + label_1323]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_1324]]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + default_quoting_options]]
	movaps	xmmword ptr [rsp], xmm0
	or	byte ptr [rsp + 0xf], 4
	lea	rcx, [rsp]
	xor	edi, edi
	mov	rdx, -1
	mov	rsi, rax
	call	quotearg_n_options
	add	rsp, 0x38
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x410890
	.globl quotearg_colon_mem
	.type quotearg_colon_mem, @function
quotearg_colon_mem:

	sub	rsp, 0x38
	mov	rax, rsi
	mov	rdx, rdi
	mov	rcx,  qword ptr [word ptr [rip + label_1322]]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0,  xmmword ptr [word ptr [rip + label_1323]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_1324]]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + default_quoting_options]]
	movaps	xmmword ptr [rsp], xmm0
	or	byte ptr [rsp + 0xf], 4
	lea	rcx, [rsp]
	xor	edi, edi
	mov	rsi, rdx
	mov	rdx, rax
	call	quotearg_n_options
	add	rsp, 0x38
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4108f0

	.globl quotearg_n_style_colon
	.type quotearg_n_style_colon, @function
quotearg_n_style_colon:
	sub	rsp, 0xa8
	mov	rax, rdx
	xorps	xmm0, xmm0
	movaps	xmmword ptr [rsp + 0x90], xmm0
	movaps	xmmword ptr [rsp + 0x80], xmm0
	movaps	xmmword ptr [rsp + 0x70], xmm0
	mov	dword ptr [rsp + 0xa0], 0
	cmp	esi, 0xa
	je	.label_1325
	mov	ecx, dword ptr [rsp + 0xa0]
	mov	dword ptr [rsp + 0x30], ecx
	movaps	xmm0, xmmword ptr [rsp + 0x70]
	movaps	xmm1, xmmword ptr [rsp + 0x80]
	movaps	xmm2, xmmword ptr [rsp + 0x90]
	movaps	xmmword ptr [rsp + 0x20], xmm2
	movaps	xmmword ptr [rsp + 0x10], xmm1
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp + 0x38], esi
	mov	ecx, dword ptr [rsp + 0x30]
	mov	dword ptr [rsp + 0x6c], ecx
	movaps	xmm0, xmmword ptr [rsp]
	movaps	xmm1, xmmword ptr [rsp + 0x10]
	movaps	xmm2, xmmword ptr [rsp + 0x20]
	movups	xmmword ptr [rsp + 0x5c], xmm2
	movups	xmmword ptr [rsp + 0x4c], xmm1
	movups	xmmword ptr [rsp + 0x3c], xmm0
	or	byte ptr [rsp + 0x47], 4
	lea	rcx, [rsp + 0x38]
	mov	rdx, -1
	mov	rsi, rax
	call	quotearg_n_options
	add	rsp, 0xa8
	ret	
.label_1325:
	call	abort
	nop	
	.section	.text
	.align	16
	#Procedure 0x4109a0
	.globl quotearg_n_custom
	.type quotearg_n_custom, @function
quotearg_n_custom:

	sub	rsp, 0x38
	mov	rax,  qword ptr [word ptr [rip + label_1322]]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0,  xmmword ptr [word ptr [rip + label_1323]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_1324]]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + default_quoting_options]]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rsi, rsi
	je	.label_1326
	test	rdx, rdx
	je	.label_1326
	mov	qword ptr [rsp + 0x28], rsi
	mov	qword ptr [rsp + 0x30], rdx
	lea	rax, [rsp]
	mov	rdx, -1
	mov	rsi, rcx
	mov	rcx, rax
	call	quotearg_n_options
	add	rsp, 0x38
	ret	
.label_1326:
	call	abort
	nop	
	.section	.text
	.align	16
	#Procedure 0x410a10
	.globl quotearg_n_custom_mem
	.type quotearg_n_custom_mem, @function
quotearg_n_custom_mem:

	sub	rsp, 0x38
	mov	rax,  qword ptr [word ptr [rip + label_1322]]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0,  xmmword ptr [word ptr [rip + label_1323]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_1324]]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + default_quoting_options]]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rsi, rsi
	je	.label_1327
	test	rdx, rdx
	je	.label_1327
	mov	qword ptr [rsp + 0x28], rsi
	mov	qword ptr [rsp + 0x30], rdx
	lea	rax, [rsp]
	mov	rsi, rcx
	mov	rdx, r8
	mov	rcx, rax
	call	quotearg_n_options
	add	rsp, 0x38
	ret	
.label_1327:
	call	abort
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x410a80
	.globl quotearg_custom
	.type quotearg_custom, @function
quotearg_custom:

	sub	rsp, 0x38
	mov	rax, rdx
	mov	rcx,  qword ptr [word ptr [rip + label_1322]]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0,  xmmword ptr [word ptr [rip + label_1323]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_1324]]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + default_quoting_options]]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rdi, rdi
	je	.label_1328
	test	rsi, rsi
	je	.label_1328
	mov	qword ptr [rsp + 0x28], rdi
	mov	qword ptr [rsp + 0x30], rsi
	lea	rcx, [rsp]
	xor	edi, edi
	mov	rdx, -1
	mov	rsi, rax
	call	quotearg_n_options
	add	rsp, 0x38
	ret	
.label_1328:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x410af0
	.globl quotearg_custom_mem
	.type quotearg_custom_mem, @function
quotearg_custom_mem:

	sub	rsp, 0x38
	mov	rax,  qword ptr [word ptr [rip + label_1322]]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0,  xmmword ptr [word ptr [rip + label_1323]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_1324]]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + default_quoting_options]]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rdi, rdi
	je	.label_1329
	test	rsi, rsi
	je	.label_1329
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
.label_1329:
	call	abort
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x410b60
	.globl quote_n_mem
	.type quote_n_mem, @function
quote_n_mem:

	mov	ecx, OFFSET FLAT:quote_quoting_options
	jmp	quotearg_n_options
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x410b70
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
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x410b90

	.globl quote_n
	.type quote_n, @function
quote_n:
	mov	rdx, -1
	mov	ecx, OFFSET FLAT:quote_quoting_options
	jmp	quotearg_n_options
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x410bb0

	.globl quote
	.type quote, @function
quote:
	mov	rax, rdi
	xor	edi, edi
	mov	rdx, -1
	mov	ecx, OFFSET FLAT:quote_quoting_options
	mov	rsi, rax
	jmp	quotearg_n_options
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x410bd0

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
	jne	.label_1332
	call	locale_charset
	movsx	ecx, byte ptr [rax]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x47
	je	.label_1333
	cmp	ecx, 0x55
	jne	.label_1330
	movsx	ecx, byte ptr [rax + 1]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x54
	jne	.label_1330
	movsx	ecx, byte ptr [rax + 2]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x46
	jne	.label_1330
	movzx	ecx, byte ptr [rax + 3]
	cmp	ecx, 0x2d
	jne	.label_1330
	movzx	ecx, byte ptr [rax + 4]
	cmp	ecx, 0x38
	jne	.label_1330
	cmp	byte ptr [rax + 5], 0
	jne	.label_1330
	mov	eax, OFFSET FLAT:.str.14_0
	movzx	ecx, byte ptr [rbx]
	cmp	ecx, 0x60
	je	.label_1332
	mov	eax, OFFSET FLAT:.str.15_0
	jmp	.label_1332
.label_1333:
	movsx	ecx, byte ptr [rax + 1]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x42
	jne	.label_1330
	movzx	ecx, byte ptr [rax + 2]
	cmp	ecx, 0x31
	jne	.label_1330
	movzx	ecx, byte ptr [rax + 3]
	cmp	ecx, 0x38
	jne	.label_1330
	movzx	ecx, byte ptr [rax + 4]
	cmp	ecx, 0x30
	jne	.label_1330
	movzx	ecx, byte ptr [rax + 5]
	cmp	ecx, 0x33
	jne	.label_1330
	movzx	ecx, byte ptr [rax + 6]
	cmp	ecx, 0x30
	jne	.label_1330
	cmp	byte ptr [rax + 7], 0
	je	.label_1331
.label_1330:
	cmp	ebp, 9
	mov	ecx, OFFSET FLAT:.str.10_0
	mov	eax, OFFSET FLAT:.str.12_0
	cmove	rax, rcx
.label_1332:
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
.label_1331:
	mov	eax, OFFSET FLAT:.str.17_1
	movzx	ecx, byte ptr [rbx]
	cmp	ecx, 0x60
	je	.label_1332
	mov	eax, OFFSET FLAT:.str.18_1
	jmp	.label_1332
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x410cc0

	.globl randread_new
	.type randread_new, @function
randread_new:
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x10
	mov	r12, rsi
	mov	r14, rdi
	test	r12, r12
	je	.label_1334
	xor	ebx, ebx
	test	r14, r14
	je	.label_1338
	mov	esi, OFFSET FLAT:.str_9
	mov	rdi, r14
	call	fopen_safer
	mov	rbx, rax
	xor	r15d, r15d
	test	rbx, rbx
	je	.label_1337
.label_1338:
	mov	edi, 0x1038
	call	xmalloc
	mov	r15, rax
	mov	qword ptr [r15], rbx
	mov	qword ptr [word ptr [r15 + 8]], OFFSET FLAT:randread_error
	mov	qword ptr [r15 + 0x10], r14
	test	rbx, rbx
	je	.label_1335
	mov	rsi, r15
	add	rsi, 0x18
	cmp	r12, 0x1000
	mov	ecx, 0x1000
	cmovbe	rcx, r12
	xor	edx, edx
	mov	rdi, rbx
	call	setvbuf
	jmp	.label_1337
.label_1334:
	mov	edi, 0x1038
	call	xmalloc
	mov	r15, rax
	mov	qword ptr [r15], 0
	mov	qword ptr [word ptr [r15 + 8]], OFFSET FLAT:randread_error
	mov	qword ptr [r15 + 0x10], 0
	jmp	.label_1337
.label_1335:
	mov	qword ptr [r15 + 0x18], 0
	mov	r14, r15
	add	r14, 0x20
	xor	r13d, r13d
	mov	edi, OFFSET FLAT:.str.3_2
	xor	esi, esi
	xor	eax, eax
	call	open
	mov	ebx, eax
	test	ebx, ebx
	js	.label_1336
	cmp	r12, 0x800
	mov	edx, 0x800
	cmovbe	rdx, r12
	mov	edi, ebx
	mov	rsi, r14
	call	read
	mov	r12, rax
	mov	edi, ebx
	call	close
	xor	r13d, r13d
	test	r12, r12
	js	.label_1336
	cmp	r12, 0x7ff
	mov	r13, r12
	ja	.label_1339
.label_1336:
	mov	eax, 0x800
	sub	rax, r13
	cmp	rax, 0x10
	mov	ebx, 0x10
	cmovbe	rbx, rax
	lea	r12, [rsp]
	xor	esi, esi
	mov	rdi, r12
	call	gettimeofday
	lea	rdi, [r14 + r13]
	mov	rsi, r12
	mov	rdx, rbx
	call	memcpy
	add	rbx, r13
	cmp	rbx, 0x7ff
	ja	.label_1339
	mov	eax, 0x800
	sub	rax, rbx
	cmp	rax, 4
	mov	r12d, 4
	cmovbe	r12, rax
	call	getpid
	mov	dword ptr [rsp], eax
	lea	rdi, [r14 + rbx]
	lea	rsi, [rsp]
	mov	rdx, r12
	call	memcpy
	add	r12, rbx
	cmp	r12, 0x7ff
	ja	.label_1339
	mov	eax, 0x800
	sub	rax, r12
	cmp	rax, 4
	mov	ebx, 4
	cmovbe	rbx, rax
	call	getppid
	mov	dword ptr [rsp], eax
	lea	rdi, [r14 + r12]
	lea	rsi, [rsp]
	mov	rdx, rbx
	call	memcpy
	add	rbx, r12
	cmp	rbx, 0x7ff
	ja	.label_1339
	mov	eax, 0x800
	sub	rax, rbx
	cmp	rax, 4
	mov	r12d, 4
	cmovbe	r12, rax
	call	getuid
	mov	dword ptr [rsp], eax
	lea	rdi, [r14 + rbx]
	lea	rsi, [rsp]
	mov	rdx, r12
	call	memcpy
	add	r12, rbx
	cmp	r12, 0x7ff
	ja	.label_1339
	mov	eax, 0x800
	sub	rax, r12
	cmp	rax, 4
	mov	ebx, 4
	cmovbe	rbx, rax
	call	getgid
	mov	dword ptr [rsp], eax
	add	r12, r14
	lea	rsi, [rsp]
	mov	rdi, r12
	mov	rdx, rbx
	call	memcpy
.label_1339:
	mov	rdi, r14
	call	isaac_seed
.label_1337:
	mov	rax, r15
	add	rsp, 0x10
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x410f10
	.globl randread_set_handler
	.type randread_set_handler, @function
randread_set_handler:

	mov	qword ptr [rdi + 8], rsi
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x410f20
	.globl randread_set_handler_arg
	.type randread_set_handler_arg, @function
randread_set_handler_arg:

	mov	qword ptr [rdi + 0x10], rsi
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x410f30

	.globl randread
	.type randread, @function
randread:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	rbx, rdx
	mov	r15, rsi
	mov	r14, rdi
	mov	rcx, qword ptr [r14]
	test	rcx, rcx
	je	.label_1344
	mov	esi, 1
	mov	rdi, r15
	mov	rdx, rbx
	call	fread_unlocked
	mov	rbp, rax
	call	__errno_location
	mov	r12, rax
	cmp	rbp, rbx
	je	.label_1342
.label_1341:
	sub	rbx, rbp
	add	r15, rbp
	mov	rax, qword ptr [r14]
	mov	eax, dword ptr [rax]
	and	eax, 0x20
	cmovne	eax, dword ptr [r12]
	mov	dword ptr [r12], eax
	mov	rdi, qword ptr [r14 + 0x10]
	call	qword ptr [r14 + 8]
	mov	rcx, qword ptr [r14]
	mov	esi, 1
	mov	rdi, r15
	mov	rdx, rbx
	call	fread_unlocked
	mov	rbp, rax
	cmp	rbx, rbp
	jne	.label_1341
	jmp	.label_1342
.label_1344:
	mov	r12, qword ptr [r14 + 0x18]
	lea	r13, [r14 + 0x838]
	mov	rsi, r13
	sub	rsi, r12
	add	rsi, 0x800
	cmp	r12, rbx
	jae	.label_1343
	lea	rbp, [r14 + 0x20]
	mov	rdi, r15
	mov	rdx, r12
	call	memcpy
	add	r15, r12
	sub	rbx, r12
	xor	r12d, r12d
	nop	word ptr cs:[rax + rax]
.label_1346:
	cmp	rbx, 0x800
	jb	.label_1340
	mov	rdi, rbp
	mov	rsi, r15
	call	isaac_refill
	add	r15, 0x800
	add	rbx, -0x800
	jne	.label_1346
	jmp	.label_1345
.label_1340:
	mov	rdi, rbp
	mov	rsi, r13
	call	isaac_refill
	mov	r12d, 0x800
	mov	rsi, r13
.label_1343:
	mov	rdi, r15
	mov	rdx, rbx
	call	memcpy
	sub	r12, rbx
.label_1345:
	mov	qword ptr [r14 + 0x18], r12
.label_1342:
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
	.align	16
	#Procedure 0x411050

	.globl randread_free
	.type randread_free, @function
randread_free:
	push	r14
	push	rbx
	push	rax
	mov	rbx, rdi
	mov	r14, qword ptr [rbx]
	mov	esi, 0x1038
	call	explicit_bzero
	mov	rdi, rbx
	call	free
	test	r14, r14
	je	.label_1347
	mov	rdi, r14
	add	rsp, 8
	pop	rbx
	pop	r14
	jmp	rpl_fclose
.label_1347:
	xor	eax, eax
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x411090

	.globl randread_error
	.type randread_error, @function
randread_error:
	push	rbp
	push	r15
	push	r14
	push	rbx
	push	rax
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_1348
	mov	r14d,  dword ptr [dword ptr [rip + exit_failure]]
	call	__errno_location
	mov	r15d, dword ptr [rax]
	xor	edi, edi
	test	r15d, r15d
	jne	.label_1350
	mov	esi, OFFSET FLAT:.str.1_6
	jmp	.label_1349
.label_1350:
	mov	esi, OFFSET FLAT:.str.2_3
.label_1349:
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	mov	rdi, rbx
	call	quote
	mov	rcx, rax
	xor	eax, eax
	mov	edi, r14d
	mov	esi, r15d
	mov	rdx, rbp
	call	error
.label_1348:
	call	abort
	nop	
	.section	.text
	.align	16
	#Procedure 0x4110f0

	.globl isaac_refill
	.type isaac_refill, @function
isaac_refill:
	mov	rax, qword ptr [rdi + 0x800]
	mov	rdx, qword ptr [rdi + 0x810]
	inc	rdx
	mov	rcx, qword ptr [rdi + 0x808]
	add	rcx, rdx
	mov	qword ptr [rdi + 0x810], rdx
	lea	r9, [rdi + 0x400]
	mov	r8, rsi
	mov	r10, rdi
	nop	
.label_1351:
	mov	r11, rax
	shl	r11, 0x15
	xor	r11, rax
	not	r11
	add	r11, qword ptr [r10 + 0x400]
	mov	rdx, qword ptr [r10]
	mov	eax, edx
	and	eax, 0x7f8
	add	rcx, qword ptr [rdi + rax]
	add	rcx, r11
	mov	qword ptr [r10], rcx
	shr	rcx, 8
	and	ecx, 0x7f8
	add	rdx, qword ptr [rdi + rcx]
	mov	qword ptr [r8], rdx
	mov	rax, r11
	shr	rax, 5
	xor	rax, r11
	add	rax, qword ptr [r10 + 0x408]
	mov	rcx, qword ptr [r10 + 8]
	mov	r11d, ecx
	and	r11d, 0x7f8
	add	rdx, rax
	add	rdx, qword ptr [rdi + r11]
	mov	qword ptr [r10 + 8], rdx
	shr	rdx, 8
	and	edx, 0x7f8
	add	rcx, qword ptr [rdi + rdx]
	mov	qword ptr [r8 + 8], rcx
	mov	r11, rax
	shl	r11, 0xc
	xor	r11, rax
	add	r11, qword ptr [r10 + 0x410]
	mov	rdx, qword ptr [r10 + 0x10]
	mov	eax, edx
	and	eax, 0x7f8
	add	rcx, r11
	add	rcx, qword ptr [rdi + rax]
	mov	qword ptr [r10 + 0x10], rcx
	shr	rcx, 8
	and	ecx, 0x7f8
	add	rdx, qword ptr [rdi + rcx]
	mov	qword ptr [r8 + 0x10], rdx
	mov	rax, r11
	shr	rax, 0x21
	xor	rax, r11
	add	rax, qword ptr [r10 + 0x418]
	mov	rcx, qword ptr [r10 + 0x18]
	mov	r11d, ecx
	and	r11d, 0x7f8
	add	rdx, rax
	add	rdx, qword ptr [rdi + r11]
	mov	qword ptr [r10 + 0x18], rdx
	shr	rdx, 8
	and	edx, 0x7f8
	add	rcx, qword ptr [rdi + rdx]
	mov	qword ptr [r8 + 0x18], rcx
	add	r10, 0x20
	add	r8, 0x20
	cmp	r10, r9
	jb	.label_1351
	add	rsi, 0x400
	lea	r8, [rdi + 0x800]
	nop	dword ptr [rax]
.label_1352:
	mov	r10, rax
	shl	r10, 0x15
	xor	r10, rax
	not	r10
	add	r10, qword ptr [r9 - 0x400]
	mov	rdx, qword ptr [r9]
	mov	eax, edx
	and	eax, 0x7f8
	add	rcx, qword ptr [rdi + rax]
	add	rcx, r10
	mov	qword ptr [r9], rcx
	shr	rcx, 8
	and	ecx, 0x7f8
	add	rdx, qword ptr [rdi + rcx]
	mov	qword ptr [rsi], rdx
	mov	rax, r10
	shr	rax, 5
	xor	rax, r10
	add	rax, qword ptr [r9 - 0x3f8]
	mov	rcx, qword ptr [r9 + 8]
	mov	r10d, ecx
	and	r10d, 0x7f8
	add	rdx, rax
	add	rdx, qword ptr [rdi + r10]
	mov	qword ptr [r9 + 8], rdx
	shr	rdx, 8
	and	edx, 0x7f8
	add	rcx, qword ptr [rdi + rdx]
	mov	qword ptr [rsi + 8], rcx
	mov	r10, rax
	shl	r10, 0xc
	xor	r10, rax
	add	r10, qword ptr [r9 - 0x3f0]
	mov	rdx, qword ptr [r9 + 0x10]
	mov	eax, edx
	and	eax, 0x7f8
	add	rcx, r10
	add	rcx, qword ptr [rdi + rax]
	mov	qword ptr [r9 + 0x10], rcx
	shr	rcx, 8
	and	ecx, 0x7f8
	add	rdx, qword ptr [rdi + rcx]
	mov	qword ptr [rsi + 0x10], rdx
	mov	rax, r10
	shr	rax, 0x21
	xor	rax, r10
	add	rax, qword ptr [r9 - 0x3e8]
	mov	rcx, qword ptr [r9 + 0x18]
	mov	r10d, ecx
	and	r10d, 0x7f8
	add	rdx, rax
	add	rdx, qword ptr [rdi + r10]
	mov	qword ptr [r9 + 0x18], rdx
	shr	rdx, 8
	and	edx, 0x7f8
	add	rcx, qword ptr [rdi + rdx]
	mov	qword ptr [rsi + 0x18], rcx
	add	r9, 0x20
	add	rsi, 0x20
	cmp	r9, r8
	jb	.label_1352
	mov	qword ptr [rdi + 0x800], rax
	mov	qword ptr [rdi + 0x808], rcx
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x411340

	.globl isaac_seed
	.type isaac_seed, @function
isaac_seed:
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	movabs	rdx, 0x647c4677a2884b7c
	movabs	r8, 0xb9f8b322c73ac862
	movabs	rsi, 0x8c0ea5053d4712a0
	movabs	rcx, 0xb29b2e824a595524
	movabs	rax, 0x82f053db8355e0ce
	movabs	r11, 0x48fe4a0fa5a09315
	movabs	r10, 0xae985bf2cbfc89ed
	movabs	r9, 0x98f5704f6c44c0ab
	xor	ebx, ebx
	nop	dword ptr [rax + rax]
.label_1353:
	add	rdx, qword ptr [rdi + rbx*8]
	add	r8, qword ptr [rdi + rbx*8 + 8]
	add	rsi, qword ptr [rdi + rbx*8 + 0x10]
	add	rcx, qword ptr [rdi + rbx*8 + 0x18]
	add	rax, qword ptr [rdi + rbx*8 + 0x20]
	add	r11, qword ptr [rdi + rbx*8 + 0x28]
	add	r10, qword ptr [rdi + rbx*8 + 0x30]
	add	r9, qword ptr [rdi + rbx*8 + 0x38]
	sub	rdx, rax
	mov	r14, r9
	shr	r14, 9
	xor	r14, r11
	add	r9, rdx
	sub	r8, r14
	lea	r11, [r8 + rdx]
	shl	rdx, 9
	mov	r15, rdx
	xor	r15, r10
	sub	rsi, r15
	mov	r10, r8
	shr	r8, 0x17
	xor	r9, r8
	add	r10, rsi
	sub	rcx, r9
	lea	r12, [rcx + rsi]
	shl	rsi, 0xf
	mov	rdx, rsi
	xor	rdx, r11
	sub	rax, rdx
	mov	r8, rcx
	shr	r8, 0xe
	xor	r8, r10
	mov	r10, rcx
	add	r10, rax
	sub	r14, r8
	lea	r13, [r14 + rax]
	shl	rax, 0x14
	mov	rsi, rax
	xor	rsi, r12
	sub	r15, rsi
	mov	rcx, r14
	shr	rcx, 0x11
	xor	rcx, r10
	mov	r11, r14
	add	r11, r15
	sub	r9, rcx
	lea	r10, [r9 + r15]
	shl	r15, 0xe
	mov	rax, r15
	xor	rax, r13
	mov	qword ptr [rdi + rbx*8], rdx
	mov	qword ptr [rdi + rbx*8 + 8], r8
	mov	qword ptr [rdi + rbx*8 + 0x10], rsi
	mov	qword ptr [rdi + rbx*8 + 0x18], rcx
	mov	qword ptr [rdi + rbx*8 + 0x20], rax
	mov	qword ptr [rdi + rbx*8 + 0x28], r11
	mov	qword ptr [rdi + rbx*8 + 0x30], r10
	mov	qword ptr [rdi + rbx*8 + 0x38], r9
	add	rbx, 8
	cmp	rbx, 0x100
	jl	.label_1353
	xor	ebx, ebx
	nop	dword ptr [rax + rax]
.label_1354:
	add	rdx, qword ptr [rdi + rbx*8]
	add	r8, qword ptr [rdi + rbx*8 + 8]
	add	rsi, qword ptr [rdi + rbx*8 + 0x10]
	add	rcx, qword ptr [rdi + rbx*8 + 0x18]
	add	rax, qword ptr [rdi + rbx*8 + 0x20]
	add	r11, qword ptr [rdi + rbx*8 + 0x28]
	add	r10, qword ptr [rdi + rbx*8 + 0x30]
	add	r9, qword ptr [rdi + rbx*8 + 0x38]
	sub	rdx, rax
	mov	r14, r9
	shr	r14, 9
	xor	r14, r11
	add	r9, rdx
	sub	r8, r14
	lea	r12, [r8 + rdx]
	shl	rdx, 9
	xor	rdx, r10
	sub	rsi, rdx
	mov	r11, r8
	shr	r11, 0x17
	xor	r11, r9
	add	r8, rsi
	sub	rcx, r11
	lea	r9, [rcx + rsi]
	shl	rsi, 0xf
	mov	r15, rsi
	xor	r15, r12
	sub	rax, r15
	mov	rsi, rcx
	shr	rsi, 0xe
	xor	r8, rsi
	add	rcx, rax
	sub	r14, r8
	lea	r12, [r14 + rax]
	shl	rax, 0x14
	mov	rsi, rax
	xor	rsi, r9
	sub	rdx, rsi
	mov	rax, r14
	shr	rax, 0x11
	xor	rcx, rax
	add	r14, rdx
	sub	r11, rcx
	lea	r10, [r11 + rdx]
	shl	rdx, 0xe
	xor	rdx, r12
	mov	qword ptr [rdi + rbx*8], r15
	mov	qword ptr [rdi + rbx*8 + 8], r8
	mov	qword ptr [rdi + rbx*8 + 0x10], rsi
	mov	qword ptr [rdi + rbx*8 + 0x18], rcx
	mov	qword ptr [rdi + rbx*8 + 0x20], rdx
	mov	qword ptr [rdi + rbx*8 + 0x28], r14
	mov	qword ptr [rdi + rbx*8 + 0x30], r10
	mov	qword ptr [rdi + rbx*8 + 0x38], r11
	add	rbx, 8
	cmp	rbx, 0x100
	mov	r9, r11
	mov	r11, r14
	mov	rax, rdx
	mov	rdx, r15
	jl	.label_1354
	xorps	xmm0, xmm0
	movups	xmmword ptr [rdi + 0x800], xmm0
	mov	qword ptr [rdi + 0x810], 0
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4115a0

	.globl readtokens0_init
	.type readtokens0_init, @function
readtokens0_init:
	push	rbx
	mov	rbx, rdi
	lea	rdi, [rbx + 0x18]
	xorps	xmm0, xmm0
	movups	xmmword ptr [rbx], xmm0
	mov	qword ptr [rbx + 0x10], 0
	xor	esi, esi
	xor	edx, edx
	mov	ecx, OFFSET FLAT:malloc
	mov	r8d, OFFSET FLAT:free
	call	_obstack_begin
	lea	rdi, [rbx + 0x70]
	xor	esi, esi
	xor	edx, edx
	mov	ecx, OFFSET FLAT:malloc
	mov	r8d, OFFSET FLAT:free
	call	_obstack_begin
	add	rbx, 0xc8
	xor	esi, esi
	xor	edx, edx
	mov	ecx, OFFSET FLAT:malloc
	mov	r8d, OFFSET FLAT:free
	mov	rdi, rbx
	pop	rbx
	jmp	_obstack_begin
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x411610
	.globl readtokens0_free
	.type readtokens0_free, @function
readtokens0_free:

	push	rbx
	mov	rbx, rdi
	lea	rdi, [rbx + 0x18]
	xor	esi, esi
	call	_obstack_free
	lea	rdi, [rbx + 0x70]
	xor	esi, esi
	call	_obstack_free
	add	rbx, 0xc8
	xor	esi, esi
	mov	rdi, rbx
	pop	rbx
	jmp	_obstack_free
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x411640

	.globl readtokens0
	.type readtokens0, @function
readtokens0:
	push	rbp
	push	r15
	push	r14
	push	r12
	push	rbx
	mov	rbx, rsi
	mov	r14, rdi
	call	fgetc
	mov	ebp, eax
	cmp	ebp, -1
	je	.label_1358
	lea	r12, [rbx + 0x30]
	lea	r15, [rbx + 0x18]
	nop	word ptr cs:[rax + rax]
.label_1361:
	mov	rax, qword ptr [rbx + 0x30]
	cmp	qword ptr [rbx + 0x38], rax
	jne	.label_1364
	mov	esi, 1
	mov	rdi, r15
	call	_obstack_newchunk
	mov	rax, qword ptr [r12]
.label_1364:
	lea	rcx, [rax + 1]
	mov	qword ptr [r12], rcx
	mov	byte ptr [rax], bpl
	test	ebp, ebp
	jne	.label_1355
	mov	rdi, rbx
	call	save_token
.label_1355:
	mov	rdi, r14
	call	fgetc
	mov	ebp, eax
	cmp	ebp, -1
	jne	.label_1361
	jmp	.label_1365
.label_1358:
	lea	r15, [rbx + 0x18]
	lea	r12, [rbx + 0x30]
.label_1365:
	mov	rax, qword ptr [rbx + 0x30]
	cmp	rax, qword ptr [rbx + 0x28]
	je	.label_1366
	cmp	qword ptr [rbx + 0x38], rax
	jne	.label_1357
	mov	esi, 1
	mov	rdi, r15
	call	_obstack_newchunk
	mov	rax, qword ptr [r12]
.label_1357:
	lea	rcx, [rax + 1]
	mov	qword ptr [rbx + 0x30], rcx
	mov	byte ptr [rax], 0
	mov	rdi, rbx
	call	save_token
.label_1366:
	mov	rax, qword ptr [rbx + 0x88]
	mov	rcx, qword ptr [rbx + 0x90]
	sub	rcx, rax
	cmp	rcx, 8
	jae	.label_1363
	lea	rdi, [rbx + 0x70]
	mov	esi, 8
	call	_obstack_newchunk
	mov	rax, qword ptr [rbx + 0x88]
.label_1363:
	mov	qword ptr [rax], 0
	mov	rdx, qword ptr [rbx + 0x88]
	add	rdx, 8
	mov	qword ptr [rbx + 0x88], rdx
	mov	rax, qword ptr [rbx + 0x80]
	cmp	rdx, rax
	jne	.label_1359
	or	byte ptr [rbx + 0xc0], 2
.label_1359:
	mov	rcx, qword ptr [rbx + 0xa0]
	add	rdx, rcx
	not	rcx
	and	rcx, rdx
	mov	qword ptr [rbx + 0x88], rcx
	mov	rsi, qword ptr [rbx + 0x78]
	mov	rbp, qword ptr [rbx + 0x90]
	mov	rdi, rcx
	sub	rdi, rsi
	mov	rdx, rbp
	sub	rdx, rsi
	cmp	rdi, rdx
	jbe	.label_1362
	mov	qword ptr [rbx + 0x88], rbp
	mov	rcx, rbp
.label_1362:
	mov	qword ptr [rbx + 0x80], rcx
	mov	qword ptr [rbx + 8], rax
	mov	rax, qword ptr [rbx + 0xd8]
	mov	rdx, qword ptr [rbx + 0xe0]
	cmp	rdx, rax
	jne	.label_1356
	or	byte ptr [rbx + 0x118], 2
.label_1356:
	mov	rcx, qword ptr [rbx + 0xf8]
	add	rdx, rcx
	not	rcx
	and	rcx, rdx
	mov	qword ptr [rbx + 0xe0], rcx
	mov	rsi, qword ptr [rbx + 0xd0]
	mov	rbp, qword ptr [rbx + 0xe8]
	mov	rdi, rcx
	sub	rdi, rsi
	mov	rdx, rbp
	sub	rdx, rsi
	cmp	rdi, rdx
	jbe	.label_1360
	mov	qword ptr [rbx + 0xe0], rbp
	mov	rcx, rbp
.label_1360:
	mov	qword ptr [rbx + 0xd8], rcx
	mov	qword ptr [rbx + 0x10], rax
	mov	rdi, r14
	call	ferror
	test	eax, eax
	sete	al
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x411810

	.globl save_token
	.type save_token, @function
save_token:
	push	r15
	push	r14
	push	rbx
	mov	rbx, rdi
	mov	r15, qword ptr [rbx + 0x28]
	mov	r14, qword ptr [rbx + 0x30]
	cmp	r14, r15
	jne	.label_1367
	or	byte ptr [rbx + 0x68], 2
.label_1367:
	mov	rax, qword ptr [rbx + 0x48]
	lea	rcx, [rax + r14]
	not	rax
	and	rax, rcx
	mov	qword ptr [rbx + 0x30], rax
	mov	rdx, qword ptr [rbx + 0x20]
	mov	rcx, qword ptr [rbx + 0x38]
	mov	rsi, rax
	sub	rsi, rdx
	mov	rdi, rcx
	sub	rdi, rdx
	cmp	rsi, rdi
	jbe	.label_1368
	mov	qword ptr [rbx + 0x30], rcx
	mov	rax, rcx
.label_1368:
	dec	r14
	mov	qword ptr [rbx + 0x28], rax
	mov	rax, qword ptr [rbx + 0x88]
	mov	rcx, qword ptr [rbx + 0x90]
	sub	rcx, rax
	cmp	rcx, 8
	jae	.label_1369
	lea	rdi, [rbx + 0x70]
	mov	esi, 8
	call	_obstack_newchunk
	mov	rax, qword ptr [rbx + 0x88]
.label_1369:
	sub	r14, r15
	mov	qword ptr [rax], r15
	add	qword ptr [rbx + 0x88], 8
	mov	rax, qword ptr [rbx + 0xe0]
	mov	rcx, qword ptr [rbx + 0xe8]
	sub	rcx, rax
	cmp	rcx, 8
	jae	.label_1370
	lea	rdi, [rbx + 0xc8]
	mov	esi, 8
	call	_obstack_newchunk
	mov	rax, qword ptr [rbx + 0xe0]
.label_1370:
	mov	qword ptr [rax], r14
	add	qword ptr [rbx + 0xe0], 8
	inc	qword ptr [rbx]
	pop	rbx
	pop	r14
	pop	r15
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x4118e0
	.globl mkstemp_safer
	.type mkstemp_safer, @function
mkstemp_safer:

	push	rax
	call	mkstemp
	mov	edi, eax
	pop	rax
	jmp	fd_safer
	nop	
	.section	.text
	.align	16
	#Procedure 0x4118f0

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
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x411910

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
	jne	.label_1377
	nop	dword ptr [rax]
.label_1387:
	movzx	r11d, byte ptr [rdi + 1]
	inc	rdi
	cmp	r11d, 0x30
	je	.label_1387
	cmp	r11d, ecx
	je	.label_1387
	movzx	r8d, r9b
	cmp	r8d, 0x2d
	jne	.label_1391
	nop	word ptr cs:[rax + rax]
.label_1402:
	movzx	eax, byte ptr [rsi + 1]
	inc	rsi
	cmp	eax, 0x30
	je	.label_1402
	cmp	eax, ecx
	je	.label_1402
	lea	ebp, [r11 - 0x30]
	cmp	ebp, 0xa
	setb	r10b
	cmp	ebp, 9
	ja	.label_1409
	movzx	ebp, r11b
	movzx	ebx, al
	cmp	ebx, ebp
	jne	.label_1409
	nop	word ptr cs:[rax + rax]
.label_1413:
	mov	r9b, byte ptr [rdi + 1]
	inc	rdi
	movzx	r11d, r9b
	cmp	r11d, ecx
	je	.label_1413
.label_1417:
	movzx	eax, byte ptr [rsi + 1]
	inc	rsi
	cmp	eax, ecx
	je	.label_1417
	lea	ebp, [r11 - 0x30]
	cmp	ebp, 0xa
	setb	r10b
	cmp	ebp, 9
	ja	.label_1419
	movzx	ebp, r9b
	movzx	ebx, al
	cmp	ebx, ebp
	je	.label_1413
	jmp	.label_1419
.label_1377:
	movzx	eax, r9b
	cmp	eax, 0x2d
	jne	.label_1380
	nop	dword ptr [rax]
.label_1428:
	movzx	eax, byte ptr [rsi + 1]
	inc	rsi
	cmp	eax, 0x30
	je	.label_1428
	cmp	eax, ecx
	je	.label_1428
	cmp	eax, edx
	jne	.label_1371
	inc	rsi
	nop	word ptr [rax + rax]
.label_1399:
	movzx	eax, byte ptr [rsi]
	inc	rsi
	cmp	eax, 0x30
	je	.label_1399
.label_1371:
	movzx	esi, al
	add	esi, -0x30
	mov	eax, 1
	cmp	esi, 0xa
	jb	.label_1379
	movzx	eax, r8b
	cmp	eax, 0x30
	jne	.label_1372
	jmp	.label_1376
.label_1391:
	cmp	r11d, edx
	jne	.label_1390
	inc	rdi
	nop	dword ptr [rax]
.label_1425:
	movzx	r11d, byte ptr [rdi]
	inc	rdi
	cmp	r11d, 0x30
	je	.label_1425
.label_1390:
	movzx	edi, r11b
	add	edi, -0x30
	mov	eax, 0xffffffff
	cmp	edi, 0xa
	jb	.label_1379
	cmp	r8d, 0x30
	je	.label_1404
	cmp	r10d, ecx
	jne	.label_1406
	nop	dword ptr [rax]
.label_1404:
	movzx	r10d, byte ptr [rsi + 1]
	inc	rsi
	cmp	r10d, 0x30
	je	.label_1404
	cmp	r10d, ecx
	mov	r9b, r10b
	je	.label_1404
.label_1406:
	cmp	r10d, edx
	jne	.label_1411
	inc	rsi
	nop	
.label_1421:
	movzx	r9d, byte ptr [rsi]
	inc	rsi
	cmp	r9d, 0x30
	je	.label_1421
.label_1411:
	movzx	eax, r9b
	jmp	.label_1416
.label_1380:
	movzx	ebp, r8b
	cmp	ebp, 0x30
	jne	.label_1389
	jmp	.label_1393
.label_1409:
	mov	r9b, r11b
.label_1419:
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
	jne	.label_1422
	or	bl, r14b
	je	.label_1422
	movzx	eax, r9b
	add	eax, -0x30
	xor	edx, edx
	cmp	eax, 9
	ja	.label_1430
	nop	word ptr cs:[rax + rax]
.label_1373:
	movzx	ebx, byte ptr [rdi + 1]
	inc	rdi
	cmp	ebx, ecx
	je	.label_1373
	inc	rdx
	add	ebx, -0x30
	cmp	ebx, 0xa
	jb	.label_1373
.label_1430:
	xor	edi, edi
	cmp	ebp, 0xa
	jae	.label_1384
	nop	dword ptr [rax]
.label_1407:
	movzx	eax, byte ptr [rsi + 1]
	inc	rsi
	cmp	eax, ecx
	je	.label_1407
	inc	rdi
	add	eax, -0x30
	cmp	eax, 0xa
	jb	.label_1407
.label_1384:
	cmp	rdx, rdi
	jne	.label_1414
	sub	r8d, r11d
	xor	eax, eax
	test	rdx, rdx
	cmovne	eax, r8d
	jmp	.label_1379
.label_1422:
	movzx	ecx, dl
	cmp	r8d, ecx
	jne	.label_1398
	movzx	eax, r9b
	inc	rsi
	cmp	eax, ecx
	jne	.label_1400
	inc	rdi
	nop	word ptr cs:[rax + rax]
.label_1401:
	movzx	ebp, byte ptr [rsi]
	movsx	eax, bpl
	movzx	edx, byte ptr [rdi]
	lea	ecx, [rax - 0x30]
	cmp	ebp, edx
	jne	.label_1426
	inc	rsi
	inc	rdi
	xor	eax, eax
	cmp	ecx, 0xa
	jb	.label_1401
	jmp	.label_1379
.label_1414:
	mov	ecx, 1
	mov	eax, 0xffffffff
	cmovb	eax, ecx
	jmp	.label_1379
.label_1398:
	xor	eax, eax
	movzx	edx, r9b
	cmp	edx, ecx
	jne	.label_1379
	inc	rdi
	nop	word ptr cs:[rax + rax]
.label_1375:
	movsx	eax, byte ptr [rdi]
	inc	rdi
	cmp	eax, 0x30
	je	.label_1375
	jmp	.label_1416
.label_1426:
	movsx	ebx, dl
	lea	edx, [rbx - 0x30]
	cmp	ecx, 9
	ja	.label_1424
	cmp	edx, 9
	ja	.label_1424
	sub	eax, ebx
	jmp	.label_1379
.label_1424:
	cmp	ecx, 0xa
	jae	.label_1429
	nop	dword ptr [rax]
.label_1400:
	movsx	eax, byte ptr [rsi]
	inc	rsi
	cmp	eax, 0x30
	je	.label_1400
	jmp	.label_1386
.label_1429:
	xor	eax, eax
	cmp	edx, 0xa
	jb	.label_1375
	jmp	.label_1379
.label_1386:
	add	eax, -0x30
	cmp	eax, 0xa
	sbb	eax, eax
	and	eax, 1
	jmp	.label_1379
.label_1416:
	add	eax, -0x30
	cmp	eax, 0xa
	sbb	eax, eax
	jmp	.label_1379
.label_1389:
	cmp	r8d, ecx
	jne	.label_1388
.label_1393:
	movzx	r8d, byte ptr [rdi + 1]
	inc	rdi
	cmp	r8d, 0x30
	jne	.label_1389
	jmp	.label_1393
.label_1388:
	cmp	eax, 0x30
	je	.label_1394
	cmp	r10d, ecx
	jne	.label_1396
	nop	word ptr cs:[rax + rax]
.label_1394:
	movzx	r9d, byte ptr [rsi + 1]
	inc	rsi
	cmp	r9d, 0x30
	je	.label_1394
	cmp	r9d, ecx
	je	.label_1394
.label_1396:
	movzx	r10d, r8b
	jmp	.label_1405
	nop	dword ptr [rax]
.label_1415:
	mov	r8b, byte ptr [rdi + 1]
	inc	rdi
	movzx	r10d, r8b
	cmp	r10d, ecx
	je	.label_1415
.label_1410:
	movzx	r9d, byte ptr [rsi + 1]
	inc	rsi
	cmp	r9d, ecx
	je	.label_1410
.label_1405:
	lea	ebp, [r10 - 0x30]
	cmp	ebp, 0xa
	setb	al
	cmp	ebp, 9
	ja	.label_1412
	movzx	ebp, r9b
	movzx	ebx, r8b
	cmp	ebx, ebp
	je	.label_1415
.label_1412:
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
	jne	.label_1418
	or	r14b, bpl
	je	.label_1418
	movzx	eax, r8b
	add	eax, -0x30
	xor	edx, edx
	cmp	eax, 9
	ja	.label_1427
	nop	word ptr cs:[rax + rax]
.label_1374:
	movzx	eax, byte ptr [rdi + 1]
	inc	rdi
	cmp	eax, ecx
	je	.label_1374
	inc	rdx
	add	eax, -0x30
	cmp	eax, 0xa
	jb	.label_1374
.label_1427:
	xor	eax, eax
	cmp	r11d, 0xa
	jae	.label_1381
	nop	
.label_1385:
	movzx	edi, byte ptr [rsi + 1]
	inc	rsi
	cmp	edi, ecx
	je	.label_1385
	inc	rax
	add	edi, -0x30
	cmp	edi, 0xa
	jb	.label_1385
.label_1381:
	cmp	rdx, rax
	jne	.label_1392
	sub	r10d, r9d
	xor	eax, eax
	test	rdx, rdx
	cmovne	eax, r10d
	jmp	.label_1379
.label_1418:
	movzx	eax, r8b
	movzx	ecx, dl
	cmp	eax, ecx
	jne	.label_1395
	inc	rdi
	cmp	r9d, eax
	jne	.label_1397
	inc	rsi
	nop	word ptr cs:[rax + rax]
.label_1408:
	movzx	ebp, byte ptr [rdi]
	movsx	eax, bpl
	movzx	edx, byte ptr [rsi]
	lea	ecx, [rax - 0x30]
	cmp	ebp, edx
	jne	.label_1403
	inc	rdi
	inc	rsi
	xor	eax, eax
	cmp	ecx, 0xa
	jb	.label_1408
	jmp	.label_1379
.label_1392:
	mov	ecx, 0xffffffff
	mov	eax, 1
	cmovb	eax, ecx
	jmp	.label_1379
.label_1395:
	xor	eax, eax
	cmp	r9d, ecx
	jne	.label_1379
	inc	rsi
	nop	dword ptr [rax]
.label_1383:
	movsx	eax, byte ptr [rsi]
	inc	rsi
	cmp	eax, 0x30
	je	.label_1383
	jmp	.label_1416
.label_1403:
	movsx	ebx, dl
	lea	edx, [rbx - 0x30]
	cmp	ecx, 9
	ja	.label_1420
	cmp	edx, 9
	ja	.label_1420
	sub	eax, ebx
	jmp	.label_1379
.label_1420:
	cmp	ecx, 0xa
	jae	.label_1423
	nop	dword ptr [rax]
.label_1397:
	movsx	eax, byte ptr [rdi]
	inc	rdi
	cmp	eax, 0x30
	je	.label_1397
	jmp	.label_1386
.label_1423:
	xor	eax, eax
	cmp	edx, 0xa
	jb	.label_1383
.label_1379:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
.label_1372:
	cmp	r8d, ecx
	jne	.label_1431
.label_1376:
	movzx	r8d, byte ptr [rdi + 1]
	inc	rdi
	cmp	r8d, 0x30
	jne	.label_1372
	jmp	.label_1376
.label_1431:
	cmp	r8d, edx
	jne	.label_1378
	inc	rdi
	nop	dword ptr [rax]
.label_1382:
	movzx	r8d, byte ptr [rdi]
	inc	rdi
	cmp	r8d, 0x30
	je	.label_1382
.label_1378:
	movzx	eax, r8b
	jmp	.label_1386
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x411e40

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
	ja	.label_1432
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
	jmp	.label_1433
.label_1432:
	mov	eax, ebx
.label_1433:
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x411e90

	.globl version_etc_arn
	.type version_etc_arn, @function
version_etc_arn:
	push	r15
	push	r14
	push	r12
	push	rbx
	sub	rsp, 0x38
	mov	r12, r9
	mov	r15, r8
	mov	r9, rcx
	mov	rbx, rdx
	mov	rcx, rsi
	mov	r14, rdi
	mov	esi, 1
	test	rcx, rcx
	je	.label_1436
	mov	edx, OFFSET FLAT:.str_10
	xor	eax, eax
	mov	rdi, r14
	mov	r8, rbx
	call	__fprintf_chk
	jmp	.label_1435
.label_1436:
	mov	edx, OFFSET FLAT:.str.1_7
	xor	eax, eax
	mov	rdi, r14
	mov	rcx, rbx
	mov	r8, r9
	call	__fprintf_chk
.label_1435:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.2_4
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
	mov	esi, OFFSET FLAT:.str.3_3
	mov	edx, 5
	call	dcgettext
	mov	rdi, rax
	mov	rsi, r14
	call	fputs_unlocked
	cmp	r12, 9
	ja	.label_1443
	jmp	qword ptr [word ptr [+ (r12 * 8) + label_1442]]
.label_1666:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.4_1
	mov	edx, 5
	call	dcgettext
	mov	rdx, rax
	mov	rcx, qword ptr [r15]
	mov	esi, 1
	xor	eax, eax
	mov	rdi, r14
	add	rsp, 0x38
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	jmp	__fprintf_chk
.label_1443:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.13_0
	jmp	.label_1440
.label_1667:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.5_0
	mov	edx, 5
	call	dcgettext
	mov	rdx, rax
	mov	rcx, qword ptr [r15]
	mov	r8, qword ptr [r15 + 8]
	mov	esi, 1
	xor	eax, eax
	mov	rdi, r14
	add	rsp, 0x38
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	jmp	__fprintf_chk
.label_1668:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.6_0
	mov	edx, 5
	call	dcgettext
	mov	rdx, rax
	mov	rcx, qword ptr [r15]
	mov	r8, qword ptr [r15 + 8]
	mov	r9, qword ptr [r15 + 0x10]
	mov	esi, 1
	xor	eax, eax
	mov	rdi, r14
	add	rsp, 0x38
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	jmp	__fprintf_chk
.label_1669:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.7_0
	mov	edx, 5
	call	dcgettext
	mov	rdx, rax
	mov	rcx, qword ptr [r15]
	mov	r8, qword ptr [r15 + 8]
	mov	r9, qword ptr [r15 + 0x10]
	mov	rax, qword ptr [r15 + 0x18]
	jmp	.label_1439
.label_1670:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.8_0
	mov	edx, 5
	call	dcgettext
	mov	rdx, rax
	mov	rcx, qword ptr [r15]
	mov	r8, qword ptr [r15 + 8]
	mov	r9, qword ptr [r15 + 0x10]
	mov	rax, qword ptr [r15 + 0x18]
	mov	rsi, qword ptr [r15 + 0x20]
	jmp	.label_1438
.label_1671:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.9_0
	mov	edx, 5
	call	dcgettext
	mov	rdx, rax
	mov	rcx, qword ptr [r15]
	mov	r8, qword ptr [r15 + 8]
	mov	r9, qword ptr [r15 + 0x10]
	mov	rax, qword ptr [r15 + 0x18]
	mov	rsi, qword ptr [r15 + 0x20]
	mov	rdi, qword ptr [r15 + 0x28]
	jmp	.label_1434
.label_1672:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.10_1
	mov	edx, 5
	call	dcgettext
	mov	rdx, rax
	mov	rcx, qword ptr [r15]
	mov	r8, qword ptr [r15 + 8]
	mov	r9, qword ptr [r15 + 0x10]
	mov	rax, qword ptr [r15 + 0x18]
	mov	rsi, qword ptr [r15 + 0x20]
	mov	rdi, qword ptr [r15 + 0x28]
	mov	rbx, qword ptr [r15 + 0x30]
	mov	qword ptr [rsp + 0x18], rbx
.label_1434:
	mov	qword ptr [rsp + 0x10], rdi
.label_1438:
	mov	qword ptr [rsp + 8], rsi
.label_1439:
	mov	qword ptr [rsp], rax
	mov	esi, 1
	xor	eax, eax
	mov	rdi, r14
	jmp	.label_1441
.label_1674:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.12_1
.label_1440:
	mov	edx, 5
	call	dcgettext
	mov	r10, rax
	mov	rcx, qword ptr [r15]
	mov	r8, qword ptr [r15 + 8]
	mov	r9, qword ptr [r15 + 0x10]
	mov	r11, qword ptr [r15 + 0x18]
	mov	rsi, qword ptr [r15 + 0x20]
	mov	rdi, qword ptr [r15 + 0x28]
	mov	rbx, qword ptr [r15 + 0x30]
	mov	rdx, qword ptr [r15 + 0x38]
	mov	rax, qword ptr [r15 + 0x40]
	mov	qword ptr [rsp + 0x28], rax
	mov	qword ptr [rsp + 0x20], rdx
	mov	qword ptr [rsp + 0x18], rbx
	mov	qword ptr [rsp + 0x10], rdi
	mov	qword ptr [rsp + 8], rsi
	mov	qword ptr [rsp], r11
	jmp	.label_1437
.label_1673:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.11_1
	mov	edx, 5
	call	dcgettext
	mov	r10, rax
	mov	rcx, qword ptr [r15]
	mov	r8, qword ptr [r15 + 8]
	mov	r9, qword ptr [r15 + 0x10]
	mov	rax, qword ptr [r15 + 0x18]
	mov	rsi, qword ptr [r15 + 0x20]
	mov	rdi, qword ptr [r15 + 0x28]
	mov	rbx, qword ptr [r15 + 0x30]
	mov	rdx, qword ptr [r15 + 0x38]
	mov	qword ptr [rsp + 0x20], rdx
	mov	qword ptr [rsp + 0x18], rbx
	mov	qword ptr [rsp + 0x10], rdi
	mov	qword ptr [rsp + 8], rsi
	mov	qword ptr [rsp], rax
.label_1437:
	mov	esi, 1
	xor	eax, eax
	mov	rdi, r14
	mov	rdx, r10
.label_1441:
	call	__fprintf_chk
.label_1665:
	add	rsp, 0x38
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x412180
	.globl version_etc_ar
	.type version_etc_ar, @function
version_etc_ar:

	mov	r9, -1
	nop	word ptr [rax + rax]
.label_1444:
	cmp	qword ptr [r8 + r9*8 + 8], 0
	lea	r9, [r9 + 1]
	jne	.label_1444
	jmp	version_etc_arn
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4121b0
	.globl version_etc_va
	.type version_etc_va, @function
version_etc_va:

	sub	rsp, 0x58
	mov	r10d, dword ptr [r8]
	xor	r9d, r9d
	nop	word ptr [rax + rax]
.label_1447:
	cmp	r10d, 0x28
	ja	.label_1445
	movsxd	r11, r10d
	add	r11, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_1446
	nop	word ptr cs:[rax + rax]
.label_1445:
	mov	r11, qword ptr [r8 + 8]
	lea	rax, [r11 + 8]
	mov	qword ptr [r8 + 8], rax
.label_1446:
	mov	rax, qword ptr [r11]
	mov	qword ptr [rsp + r9*8], rax
	test	rax, rax
	je	.label_1448
	inc	r9
	cmp	r9, 0xa
	jb	.label_1447
.label_1448:
	lea	r8, [rsp]
	call	version_etc_arn
	add	rsp, 0x58
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x412210

	.globl version_etc
	.type version_etc, @function
version_etc:
	sub	rsp, 0x128
	test	al, al
	je	.label_1449
	movaps	xmmword ptr [rsp + 0x30], xmm0
	movaps	xmmword ptr [rsp + 0x40], xmm1
	movaps	xmmword ptr [rsp + 0x50], xmm2
	movaps	xmmword ptr [rsp + 0x60], xmm3
	movaps	xmmword ptr [rsp + 0x70], xmm4
	movaps	xmmword ptr [rsp + 0x80], xmm5
	movaps	xmmword ptr [rsp + 0x90], xmm6
	movaps	xmmword ptr [rsp + 0xa0], xmm7
.label_1449:
	mov	qword ptr [rsp + 0x28], r9
	mov	qword ptr [rsp + 0x20], r8
	lea	rax, [rsp]
	mov	qword ptr [rsp + 0xc0], rax
	lea	rax, [rsp + 0x130]
	mov	qword ptr [rsp + 0xb8], rax
	mov	dword ptr [rsp + 0xb4], 0x30
	mov	dword ptr [rsp + 0xb0], 0x20
	xor	r9d, r9d
	mov	r8d, dword ptr [rsp + 0xb0]
	nop	word ptr cs:[rax + rax]
.label_1453:
	cmp	r8d, 0x28
	ja	.label_1450
	movsxd	r10, r8d
	add	r10, qword ptr [rsp + 0xc0]
	add	r8d, 8
	mov	dword ptr [rsp + 0xb0], r8d
	jmp	.label_1452
	nop	
.label_1450:
	mov	r10, qword ptr [rsp + 0xb8]
	lea	rax, [r10 + 8]
	mov	qword ptr [rsp + 0xb8], rax
.label_1452:
	mov	rax, qword ptr [r10]
	mov	qword ptr [rsp + r9*8 + 0xd0], rax
	test	rax, rax
	je	.label_1451
	inc	r9
	cmp	r9, 0xa
	jb	.label_1453
.label_1451:
	lea	r8, [rsp + 0xd0]
	call	version_etc_arn
	add	rsp, 0x128
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x412310
	.globl emit_bug_reporting_address
	.type emit_bug_reporting_address, @function
emit_bug_reporting_address:

	push	rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.14_1
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:.str.15_1
	xor	eax, eax
	mov	rsi, rcx
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.16_0
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:.str.17_0
	mov	ecx, OFFSET FLAT:.str.18
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.19_0
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	pop	rax
	jmp	fputs_unlocked
	nop	word ptr cs:[rax + rax]
	nop	
	.section	.text
	.align	16
	#Procedure 0x412390
	.globl xnmalloc
	.type xnmalloc, @function
xnmalloc:

	push	rbx
	mov	rbx, rsi
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rdi
	jb	.label_1454
	imul	rbx, rdi
	mov	rdi, rbx
	call	malloc
	test	rbx, rbx
	je	.label_1455
	test	rax, rax
	je	.label_1454
.label_1455:
	pop	rbx
	ret	
.label_1454:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4123d0

	.globl xmalloc
	.type xmalloc, @function
xmalloc:
	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	je	.label_1456
	test	rax, rax
	je	.label_1457
.label_1456:
	pop	rbx
	ret	
.label_1457:
	call	xalloc_die
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4123f0
	.globl xnrealloc
	.type xnrealloc, @function
xnrealloc:

	push	rbx
	mov	rbx, rdx
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rsi
	jb	.label_1458
	imul	rbx, rsi
	test	rdi, rdi
	je	.label_1459
	test	rbx, rbx
	jne	.label_1459
	call	free
	xor	eax, eax
	pop	rbx
	ret	
.label_1459:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_1460
	test	rax, rax
	je	.label_1458
.label_1460:
	pop	rbx
	ret	
.label_1458:
	call	xalloc_die
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x412440

	.globl xrealloc
	.type xrealloc, @function
xrealloc:
	push	rbx
	mov	rbx, rsi
	test	rdi, rdi
	je	.label_1461
	test	rbx, rbx
	jne	.label_1461
	call	free
	xor	eax, eax
	pop	rbx
	ret	
.label_1461:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_1463
	test	rax, rax
	je	.label_1462
.label_1463:
	pop	rbx
	ret	
.label_1462:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x412470
	.globl x2nrealloc
	.type x2nrealloc, @function
x2nrealloc:

	push	rbx
	mov	rbx, rdx
	mov	rcx, qword ptr [rsi]
	test	rdi, rdi
	je	.label_1468
	movabs	rax, 0x5555555555555554
	xor	edx, edx
	div	rbx
	cmp	rax, rcx
	jbe	.label_1469
	mov	rax, rcx
	shr	rax, 1
	lea	rcx, [rcx + rax + 1]
	jmp	.label_1464
.label_1468:
	test	rcx, rcx
	jne	.label_1470
	mov	eax, 0x80
	xor	edx, edx
	div	rbx
	mov	rcx, rax
	cmp	rcx, 1
	adc	rcx, 0
.label_1470:
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rcx
	jb	.label_1466
.label_1464:
	mov	qword ptr [rsi], rcx
	imul	rbx, rcx
	test	rdi, rdi
	je	.label_1465
	test	rbx, rbx
	jne	.label_1465
	call	free
	xor	eax, eax
	pop	rbx
	ret	
.label_1465:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_1467
	test	rax, rax
	je	.label_1469
.label_1467:
	pop	rbx
	ret	
.label_1469:
	call	xalloc_die
.label_1466:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x412510
	.globl xcharalloc
	.type xcharalloc, @function
xcharalloc:

	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	je	.label_1471
	test	rax, rax
	je	.label_1472
.label_1471:
	pop	rbx
	ret	
.label_1472:
	call	xalloc_die
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x412530
	.globl x2realloc
	.type x2realloc, @function
x2realloc:

	push	rbx
	mov	rax, qword ptr [rsi]
	test	rdi, rdi
	je	.label_1475
	movabs	rcx, 0x5555555555555554
	cmp	rax, rcx
	jae	.label_1477
	mov	rbx, rax
	shr	rbx, 1
	add	rbx, rax
	inc	rbx
	mov	qword ptr [rsi], rbx
	jne	.label_1474
	call	free
	xor	eax, eax
	jmp	.label_1476
.label_1475:
	test	rax, rax
	mov	ebx, 0x80
	cmovne	rbx, rax
	test	rbx, rbx
	js	.label_1473
	mov	qword ptr [rsi], rbx
.label_1474:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_1476
	test	rax, rax
	je	.label_1473
.label_1476:
	pop	rbx
	ret	
.label_1473:
	call	xalloc_die
.label_1477:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4125a0
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
	je	.label_1479
	test	r14, r14
	je	.label_1478
.label_1479:
	xor	esi, esi
	mov	rdi, r14
	mov	rdx, rbx
	call	memset
	mov	rax, r14
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
.label_1478:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4125e0

	.globl xcalloc
	.type xcalloc, @function
xcalloc:
	push	rax
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	jb	.label_1480
	call	rpl_calloc
	test	rax, rax
	je	.label_1480
	pop	rcx
	ret	
.label_1480:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x412610

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
	je	.label_1481
	test	r15, r15
	je	.label_1482
.label_1481:
	mov	rdi, r15
	mov	rsi, r14
	mov	rdx, rbx
	call	memcpy
	mov	rax, r15
	pop	rbx
	pop	r14
	pop	r15
	ret	
.label_1482:
	call	xalloc_die
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x412650
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
	je	.label_1484
	test	r15, r15
	je	.label_1483
.label_1484:
	mov	rdi, r15
	mov	rsi, r14
	mov	rdx, rbx
	call	memcpy
	mov	rax, r15
	pop	rbx
	pop	r14
	pop	r15
	ret	
.label_1483:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4126a0

	.globl xalloc_die
	.type xalloc_die, @function
xalloc_die:
	push	rbx
	mov	ebx,  dword ptr [dword ptr [rip + exit_failure]]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.1_8
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	esi, esi
	mov	edx, OFFSET FLAT:.str_0
	xor	eax, eax
	mov	edi, ebx
	call	error
	call	abort
	.section	.text
	.align	16
	#Procedure 0x4126d0
	.globl xmemcoll
	.type xmemcoll, @function
xmemcoll:

	push	rbp
	push	r15
	push	r14
	push	r12
	push	rbx
	mov	r14, rcx
	mov	r15, rdx
	mov	r12, rsi
	mov	rbx, rdi
	call	memcoll
	mov	ebp, eax
	call	__errno_location
	mov	edi, dword ptr [rax]
	test	edi, edi
	je	.label_1485
	mov	rsi, rbx
	mov	rdx, r12
	mov	rcx, r15
	mov	r8, r14
	call	collate_error
.label_1485:
	mov	eax, ebp
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x412720

	.globl collate_error
	.type collate_error, @function
collate_error:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	qword ptr [rsp], r8
	mov	rbx, rcx
	mov	r12, rdx
	mov	r13, rsi
	mov	ebp, edi
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str_11
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, ebp
	mov	rdx, rcx
	call	error
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.1_9
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	call	error
	mov	r14d,  dword ptr [dword ptr [rip + exit_failure]]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.2_5
	mov	edx, 5
	call	dcgettext
	mov	r15, rax
	xor	edi, edi
	mov	esi, 8
	mov	rdx, r13
	mov	rcx, r12
	call	quotearg_n_style_mem
	mov	rbp, rax
	mov	edi, 1
	mov	esi, 8
	mov	rdx, rbx
	mov	rcx, qword ptr [rsp]
	call	quotearg_n_style_mem
	mov	rbx, rax
	xor	esi, esi
	xor	eax, eax
	mov	edi, r14d
	mov	rdx, r15
	mov	rcx, rbp
	mov	r8, rbx
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	jmp	error
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4127f0

	.globl xmemcoll0
	.type xmemcoll0, @function
xmemcoll0:
	push	rbp
	push	r15
	push	r14
	push	r12
	push	rbx
	mov	r15, rcx
	mov	r14, rdx
	mov	rbx, rsi
	mov	r12, rdi
	call	memcoll0
	mov	ebp, eax
	call	__errno_location
	mov	edi, dword ptr [rax]
	test	edi, edi
	je	.label_1486
	dec	rbx
	dec	r15
	mov	rsi, r12
	mov	rdx, rbx
	mov	rcx, r14
	mov	r8, r15
	call	collate_error
.label_1486:
	mov	eax, ebp
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x412840

	.globl xnanosleep
	.type xnanosleep, @function
xnanosleep:
	push	r15
	push	r14
	push	rbx
	sub	rsp, 0x10
	call	dtotimespec
	mov	qword ptr [rsp], rax
	mov	qword ptr [rsp + 8], rdx
	call	__errno_location
	mov	r14, rax
	mov	dword ptr [r14], 0
	xor	ebx, ebx
	lea	rdi, [rsp]
	xor	esi, esi
	call	rpl_nanosleep
	test	eax, eax
	je	.label_1487
	lea	r15, [rsp]
	nop	dword ptr [rax + rax]
.label_1488:
	mov	eax, dword ptr [r14]
	mov	ebx, 0xffffffff
	or	eax, 4
	cmp	eax, 4
	jne	.label_1487
	mov	dword ptr [r14], 0
	xor	ebx, ebx
	xor	esi, esi
	mov	rdi, r15
	call	rpl_nanosleep
	test	eax, eax
	jne	.label_1488
.label_1487:
	mov	eax, ebx
	add	rsp, 0x10
	pop	rbx
	pop	r14
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4128c0

	.globl xstrtoul
	.type xstrtoul, @function
xstrtoul:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x18
	mov	r14, r8
	mov	r12d, edx
	mov	rbp, rsi
	mov	rbx, rdi
	cmp	r12d, 0x25
	jae	.label_1503
	mov	qword ptr [rsp + 8], rcx
	call	__errno_location
	mov	r15, rax
	mov	dword ptr [r15], 0
	call	__ctype_b_loc
	mov	rcx, qword ptr [rax]
	mov	rdx, rbx
	nop	word ptr cs:[rax + rax]
.label_1494:
	movzx	eax, byte ptr [rdx]
	inc	rdx
	test	byte ptr [rcx + rax*2 + 1], 0x20
	jne	.label_1494
	test	rbp, rbp
	lea	rsi, [rsp + 0x10]
	cmovne	rsi, rbp
	movzx	eax, al
	mov	r13d, 4
	cmp	eax, 0x2d
	je	.label_1490
	mov	rdi, rbx
	mov	edx, r12d
	mov	rbp, rsi
	call	strtoul
	mov	rcx, rbp
	mov	rbp, rax
	mov	r12, qword ptr [rcx]
	cmp	r12, rbx
	je	.label_1505
	mov	eax, dword ptr [r15]
	xor	ebx, ebx
	test	eax, eax
	je	.label_1508
	cmp	eax, 0x22
	jne	.label_1490
	mov	ebx, 1
.label_1508:
	test	r14, r14
	jne	.label_1511
	jmp	.label_1499
.label_1505:
	test	r14, r14
	je	.label_1490
	movsx	esi, byte ptr [rbx]
	test	esi, esi
	je	.label_1490
	mov	rdi, r14
	mov	rbx, rcx
	call	strchr
	mov	rcx, rbx
	xor	ebx, ebx
	mov	ebp, 1
	test	rax, rax
	je	.label_1490
.label_1511:
	movsx	r13d, byte ptr [r12]
	test	r13d, r13d
	je	.label_1499
	mov	qword ptr [rsp], rcx
	mov	rdi, r14
	mov	esi, r13d
	call	strchr
	test	rax, rax
	je	.label_1500
	mov	r15d, 1
	mov	esi, 0x400
	lea	eax, [r13 - 0x45]
	cmp	eax, 0x2f
	ja	.label_1491
	movabs	rdx, 0x814400308945
	bt	rdx, rax
	jae	.label_1491
	mov	esi, 0x30
	mov	rdi, r14
	call	strchr
	mov	r15d, 1
	mov	esi, 0x400
	test	rax, rax
	je	.label_1491
	movsx	eax, byte ptr [r12 + 1]
	mov	r15d, 1
	mov	esi, 0x400
	cmp	eax, 0x42
	je	.label_1495
	cmp	eax, 0x44
	je	.label_1495
	cmp	eax, 0x69
	jne	.label_1491
	movzx	eax, byte ptr [r12 + 2]
	cmp	eax, 0x42
	mov	r15d, 3
	je	.label_1501
	mov	r15d, 1
.label_1501:
	mov	esi, 0x400
	jmp	.label_1491
.label_1495:
	mov	r15d, 2
	mov	esi, 0x3e8
.label_1491:
	cmp	r13d, 0x59
	jg	.label_1509
	lea	eax, [r13 - 0x42]
	cmp	eax, 0xe
	ja	.label_1510
	jmp	qword ptr [word ptr [+ (rax * 8) + label_1513]]
.label_1728:
	mov	rax, rbp
	shr	rax, 0x36
	setne	dl
	shl	rbp, 0xa
	jmp	.label_1512
.label_1509:
	cmp	r13d, 0x73
	jg	.label_1489
	lea	edx, [r13 - 0x62]
	cmp	edx, 0xb
	ja	.label_1492
	xor	eax, eax
	jmp	qword ptr [word ptr [+ (rdx * 8) + label_1497]]
.label_1743:
	mov	rax, rbp
	shr	rax, 0x37
	setne	dl
	shl	rbp, 9
.label_1512:
	cmp	rax, 1
	sbb	rax, rax
	not	rax
	or	rbp, rax
	movzx	eax, dl
	jmp	.label_1502
.label_1510:
	cmp	r13d, 0x54
	je	.label_1496
	cmp	r13d, 0x59
	jne	.label_1500
	mov	rdi, -1
	mov	rax, -1
	xor	edx, edx
	div	rsi
	cmp	rax, rbp
	sbb	r8b, r8b
	mov	rcx, rbp
	imul	rcx, rsi
	cmp	rax, rbp
	cmovb	rcx, rdi
	cmp	rax, rcx
	sbb	dl, dl
	mov	rbp, rcx
	imul	rbp, rsi
	cmp	rax, rcx
	cmovb	rbp, rdi
	cmp	rax, rbp
	sbb	r9b, r9b
	mov	rcx, rbp
	imul	rcx, rsi
	cmp	rax, rbp
	cmovb	rcx, rdi
	cmp	rax, rcx
	sbb	r10b, r10b
	mov	rbp, rcx
	imul	rbp, rsi
	cmp	rax, rcx
	cmovb	rbp, rdi
	cmp	rax, rbp
	sbb	r11b, r11b
	mov	rcx, rbp
	imul	rcx, rsi
	cmp	rax, rbp
	cmovb	rcx, rdi
	cmp	rax, rcx
	sbb	r14b, r14b
	mov	rbp, rcx
	imul	rbp, rsi
	cmp	rax, rcx
	cmovb	rbp, rdi
	cmp	rax, rbp
	sbb	r13b, r13b
	mov	rcx, rbp
	imul	rcx, rsi
	cmp	rax, rbp
	cmovb	rcx, rdi
	cmp	rax, rcx
	sbb	bpl, bpl
	imul	rsi, rcx
	cmp	rax, rcx
	cmovb	rsi, rdi
	or	dl, r8b
	or	dl, r9b
	or	dl, r10b
	or	dl, r11b
	and	dl, 1
	or	dl, r14b
	or	dl, r13b
	or	dl, bpl
	jmp	.label_1493
.label_1489:
	cmp	r13d, 0x74
	je	.label_1496
	cmp	r13d, 0x77
	jne	.label_1500
	lea	rax, [rbp + rbp]
	test	rbp, rbp
	mov	rcx, -1
	cmovns	rcx, rax
	shr	rbp, 0x3f
	mov	eax, ebp
	mov	rbp, rcx
	jmp	.label_1502
.label_1730:
	mov	r8, -1
	mov	rax, -1
	xor	edx, edx
	div	rsi
	cmp	rax, rbp
	sbb	r9b, r9b
	mov	rdi, rbp
	imul	rdi, rsi
	cmp	rax, rbp
	cmovb	rdi, r8
	cmp	rax, rdi
	sbb	dl, dl
	mov	rbp, rdi
	imul	rbp, rsi
	cmp	rax, rdi
	cmovb	rbp, r8
	cmp	rax, rbp
	sbb	dil, dil
	imul	rsi, rbp
	cmp	rax, rbp
	cmovb	rsi, r8
	or	dl, r9b
	or	dl, dil
	jmp	.label_1507
.label_1731:
	mov	rdi, -1
	mov	rax, -1
	xor	edx, edx
	div	rsi
	imul	rsi, rbp
	cmp	rax, rbp
	cmovb	rsi, rdi
	sbb	eax, eax
	and	eax, 1
	jmp	.label_1498
.label_1732:
	mov	r8, -1
	mov	rax, -1
	xor	edx, edx
	div	rsi
	cmp	rax, rbp
	sbb	r9b, r9b
	mov	rdi, rbp
	imul	rdi, rsi
	cmp	rax, rbp
	cmovb	rdi, r8
	cmp	rax, rdi
	sbb	dl, dl
	imul	rsi, rdi
	cmp	rax, rdi
	cmovb	rsi, r8
	or	dl, r9b
	jmp	.label_1507
.label_1496:
	mov	r9, -1
	mov	rax, -1
	xor	edx, edx
	div	rsi
	cmp	rax, rbp
	sbb	r8b, r8b
	mov	rdi, rbp
	imul	rdi, rsi
	cmp	rax, rbp
	cmovb	rdi, r9
	cmp	rax, rdi
	sbb	dl, dl
	mov	rbp, rdi
	imul	rbp, rsi
	cmp	rax, rdi
	cmovb	rbp, r9
	cmp	rax, rbp
	sbb	r10b, r10b
	mov	rdi, rbp
	imul	rdi, rsi
	cmp	rax, rbp
	cmovb	rdi, r9
	cmp	rax, rdi
	sbb	cl, cl
	imul	rsi, rdi
	cmp	rax, rdi
	cmovb	rsi, r9
	or	dl, r8b
	or	dl, r10b
	or	dl, cl
	jmp	.label_1507
.label_1492:
	cmp	r13d, 0x5a
	jne	.label_1500
	mov	rdi, -1
	mov	rax, -1
	xor	edx, edx
	div	rsi
	cmp	rax, rbp
	sbb	r8b, r8b
	mov	rcx, rbp
	imul	rcx, rsi
	cmp	rax, rbp
	cmovb	rcx, rdi
	cmp	rax, rcx
	sbb	dl, dl
	mov	rbp, rcx
	imul	rbp, rsi
	cmp	rax, rcx
	cmovb	rbp, rdi
	cmp	rax, rbp
	sbb	r9b, r9b
	mov	rcx, rbp
	imul	rcx, rsi
	cmp	rax, rbp
	cmovb	rcx, rdi
	cmp	rax, rcx
	sbb	r10b, r10b
	mov	rbp, rcx
	imul	rbp, rsi
	cmp	rax, rcx
	cmovb	rbp, rdi
	cmp	rax, rbp
	sbb	r11b, r11b
	mov	rcx, rbp
	imul	rcx, rsi
	cmp	rax, rbp
	cmovb	rcx, rdi
	cmp	rax, rcx
	sbb	r14b, r14b
	mov	rbp, rcx
	imul	rbp, rsi
	cmp	rax, rcx
	cmovb	rbp, rdi
	cmp	rax, rbp
	sbb	cl, cl
	imul	rsi, rbp
	cmp	rax, rbp
	cmovb	rsi, rdi
	or	dl, r8b
	or	dl, r9b
	or	dl, r10b
	and	dl, 1
	or	dl, r11b
	or	dl, r14b
	or	dl, cl
.label_1493:
	movzx	eax, dl
	and	eax, 1
	jmp	.label_1498
.label_1500:
	mov	rax, qword ptr [rsp + 8]
	mov	qword ptr [rax], rbp
	or	ebx, 2
	jmp	.label_1504
.label_1729:
	mov	r9, -1
	mov	rax, -1
	xor	edx, edx
	div	rsi
	cmp	rax, rbp
	sbb	r8b, r8b
	mov	rdi, rbp
	imul	rdi, rsi
	cmp	rax, rbp
	cmovb	rdi, r9
	cmp	rax, rdi
	sbb	dl, dl
	mov	rbp, rdi
	imul	rbp, rsi
	cmp	rax, rdi
	cmovb	rbp, r9
	cmp	rax, rbp
	sbb	r10b, r10b
	mov	rdi, rbp
	imul	rdi, rsi
	cmp	rax, rbp
	cmovb	rdi, r9
	cmp	rax, rdi
	sbb	r11b, r11b
	mov	rbp, rdi
	imul	rbp, rsi
	cmp	rax, rdi
	cmovb	rbp, r9
	cmp	rax, rbp
	sbb	r14b, r14b
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
	or	dl, r11b
	or	dl, r14b
	or	dl, bpl
.label_1507:
	and	dl, 1
	movzx	eax, dl
.label_1498:
	mov	rbp, rsi
.label_1502:
	or	eax, ebx
	lea	rcx, [r12 + r15]
	mov	rdx, qword ptr [rsp]
	mov	qword ptr [rdx], rcx
	cmp	byte ptr [r12 + r15], 0
	je	.label_1506
	or	eax, 2
.label_1506:
	mov	ebx, eax
.label_1499:
	mov	rax, qword ptr [rsp + 8]
	mov	qword ptr [rax], rbp
.label_1504:
	mov	r13d, ebx
.label_1490:
	mov	eax, r13d
	add	rsp, 0x18
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_1733:
	mov	rdi, -1
	mov	rax, -1
	xor	edx, edx
	div	rsi
	cmp	rax, rbp
	sbb	r8b, r8b
	mov	rdx, rbp
	imul	rdx, rsi
	cmp	rax, rbp
	cmovb	rdx, rdi
	cmp	rax, rdx
	sbb	cl, cl
	mov	rbp, rdx
	imul	rbp, rsi
	cmp	rax, rdx
	cmovb	rbp, rdi
	cmp	rax, rbp
	sbb	r9b, r9b
	mov	rdx, rbp
	imul	rdx, rsi
	cmp	rax, rbp
	cmovb	rdx, rdi
	cmp	rax, rdx
	sbb	r10b, r10b
	mov	rbp, rdx
	imul	rbp, rsi
	cmp	rax, rdx
	cmovb	rbp, rdi
	cmp	rax, rbp
	sbb	dl, dl
	imul	rsi, rbp
	cmp	rax, rbp
	cmovb	rsi, rdi
	or	cl, r8b
	or	cl, r9b
	or	cl, r10b
	or	cl, dl
	and	cl, 1
	movzx	eax, cl
	jmp	.label_1498
.label_1503:
	mov	edi, OFFSET FLAT:.str_12
	mov	esi, OFFSET FLAT:.str.1_10
	mov	edx, 0x54
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.xstrtoul
	call	__assert_fail
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x412f50

	.globl xstrtol_fatal
	.type xstrtol_fatal, @function
xstrtol_fatal:
	push	rbp
	push	r15
	push	r14
	push	rbx
	push	rax
	mov	r15, r8
	mov	eax, esi
	mov	ebp,  dword ptr [dword ptr [rip + exit_failure]]
	dec	edi
	cmp	edi, 4
	jae	.label_1514
	movsxd	rsi, edi
	mov	rsi,  qword ptr [word ptr [+ (rsi * 8) + label_1515]]
	cdqe	
	test	eax, eax
	jns	.label_1516
	lea	r14, [rsp + 6]
	mov	ebx, OFFSET FLAT:.str_13
	sub	rbx, rax
	mov	byte ptr [rsp + 6], dl
	mov	byte ptr [rsp + 7], 0
	jmp	.label_1517
.label_1516:
	shl	rax, 5
	mov	r14, qword ptr [rcx + rax]
	mov	ebx, OFFSET FLAT:.str_13
.label_1517:
	xor	edi, edi
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	esi, esi
	xor	eax, eax
	mov	edi, ebp
	mov	rdx, rcx
	mov	rcx, rbx
	mov	r8, r14
	mov	r9, r15
	call	error
.label_1514:
	call	abort
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x412fd0

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
	mov	r14, r8
	mov	r12d, edx
	mov	rbp, rsi
	mov	rbx, rdi
	cmp	r12d, 0x25
	jae	.label_1535
	mov	qword ptr [rsp + 8], rcx
	call	__errno_location
	mov	r15, rax
	mov	dword ptr [r15], 0
	call	__ctype_b_loc
	mov	rcx, qword ptr [rax]
	mov	rdx, rbx
	nop	word ptr cs:[rax + rax]
.label_1532:
	movzx	eax, byte ptr [rdx]
	inc	rdx
	test	byte ptr [rcx + rax*2 + 1], 0x20
	jne	.label_1532
	test	rbp, rbp
	lea	rsi, [rsp + 0x10]
	cmovne	rsi, rbp
	movzx	eax, al
	mov	r13d, 4
	cmp	eax, 0x2d
	je	.label_1523
	mov	dword ptr [rsp + 4], 0
	xor	ecx, ecx
	mov	rdi, rbx
	mov	rbp, rsi
	mov	edx, r12d
	call	__strtoul_internal
	mov	rcx, rbp
	mov	rbp, rax
	mov	r12, qword ptr [rcx]
	cmp	r12, rbx
	je	.label_1540
	mov	eax, dword ptr [r15]
	test	eax, eax
	je	.label_1542
	cmp	eax, 0x22
	jne	.label_1523
	mov	dword ptr [rsp + 4], 1
.label_1542:
	test	r14, r14
	jne	.label_1521
	mov	rax, qword ptr [rsp + 8]
	mov	qword ptr [rax], rbp
	mov	r13d, dword ptr [rsp + 4]
	jmp	.label_1523
.label_1540:
	test	r14, r14
	je	.label_1523
	movsx	esi, byte ptr [rbx]
	test	esi, esi
	je	.label_1523
	mov	rdi, r14
	mov	rbx, rcx
	call	strchr
	mov	rcx, rbx
	mov	dword ptr [rsp + 4], 0
	mov	ebp, 1
	test	rax, rax
	je	.label_1523
.label_1521:
	movsx	r13d, byte ptr [r12]
	test	r13d, r13d
	je	.label_1537
	mov	r15, rcx
	mov	rdi, r14
	mov	esi, r13d
	call	strchr
	test	rax, rax
	je	.label_1519
	mov	ecx, 1
	mov	esi, 0x400
	lea	eax, [r13 - 0x45]
	cmp	eax, 0x2f
	ja	.label_1526
	movabs	rdx, 0x814400308945
	bt	rdx, rax
	jae	.label_1526
	mov	esi, 0x30
	mov	rdi, r14
	call	strchr
	mov	ecx, 1
	mov	esi, 0x400
	test	rax, rax
	je	.label_1526
	movsx	eax, byte ptr [r12 + 1]
	mov	ecx, 1
	mov	esi, 0x400
	cmp	eax, 0x42
	je	.label_1531
	cmp	eax, 0x44
	je	.label_1531
	cmp	eax, 0x69
	jne	.label_1526
	movzx	eax, byte ptr [r12 + 2]
	cmp	eax, 0x42
	mov	ecx, 3
	je	.label_1539
	mov	ecx, 1
.label_1539:
	mov	esi, 0x400
	jmp	.label_1526
.label_1537:
	mov	rax, qword ptr [rsp + 8]
	mov	r13d, dword ptr [rsp + 4]
	jmp	.label_1544
.label_1531:
	mov	ecx, 2
	mov	esi, 0x3e8
.label_1526:
	cmp	r13d, 0x59
	jg	.label_1543
	lea	eax, [r13 - 0x42]
	cmp	eax, 0xe
	ja	.label_1527
	jmp	qword ptr [word ptr [+ (rax * 8) + label_1528]]
.label_1785:
	mov	rax, rbp
	shr	rax, 0x36
	setne	dl
	shl	rbp, 0xa
	jmp	.label_1529
.label_1543:
	cmp	r13d, 0x73
	jg	.label_1530
	lea	edx, [r13 - 0x62]
	cmp	edx, 0xb
	ja	.label_1533
	xor	eax, eax
	jmp	qword ptr [word ptr [+ (rdx * 8) + label_1536]]
.label_1722:
	mov	rax, rbp
	shr	rax, 0x37
	setne	dl
	shl	rbp, 9
.label_1529:
	cmp	rax, 1
	sbb	rax, rax
	not	rax
	or	rbp, rax
	movzx	eax, dl
	jmp	.label_1520
.label_1527:
	cmp	r13d, 0x54
	je	.label_1538
	cmp	r13d, 0x59
	jne	.label_1519
	mov	rdi, -1
	mov	rax, -1
	xor	edx, edx
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
	sbb	r13b, r13b
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
	or	dl, r13b
	or	dl, bpl
	jmp	.label_1524
.label_1530:
	cmp	r13d, 0x74
	je	.label_1538
	cmp	r13d, 0x77
	jne	.label_1519
	lea	rax, [rbp + rbp]
	test	rbp, rbp
	mov	rdx, -1
	cmovns	rdx, rax
	shr	rbp, 0x3f
	mov	eax, ebp
	mov	rbp, rdx
	jmp	.label_1520
.label_1723:
	mov	rdi, -1
	mov	rax, -1
	xor	edx, edx
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
	cmovb	rbp, rdi
	cmp	rax, rbp
	sbb	bl, bl
	imul	rsi, rbp
	cmp	rax, rbp
	cmovb	rsi, rdi
	or	dl, r8b
	jmp	.label_1525
.label_1724:
	mov	rdi, -1
	mov	rax, -1
	xor	edx, edx
	div	rsi
	imul	rsi, rbp
	cmp	rax, rbp
	cmovb	rsi, rdi
	sbb	eax, eax
	and	eax, 1
	jmp	.label_1541
.label_1725:
	mov	rdi, -1
	mov	rax, -1
	xor	edx, edx
	div	rsi
	cmp	rax, rbp
	sbb	r8b, r8b
	mov	rbx, rbp
	imul	rbx, rsi
	cmp	rax, rbp
	cmovb	rbx, rdi
	cmp	rax, rbx
	sbb	dl, dl
	imul	rsi, rbx
	cmp	rax, rbx
	cmovb	rsi, rdi
	or	dl, r8b
	jmp	.label_1522
.label_1538:
	mov	r9, -1
	mov	rax, -1
	xor	edx, edx
	div	rsi
	cmp	rax, rbp
	sbb	r8b, r8b
	mov	rbx, rbp
	imul	rbx, rsi
	cmp	rax, rbp
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
	jmp	.label_1534
.label_1533:
	cmp	r13d, 0x5a
	jne	.label_1519
	mov	rdi, -1
	mov	rax, -1
	xor	edx, edx
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
.label_1524:
	movzx	eax, dl
	and	eax, 1
	jmp	.label_1541
.label_1519:
	mov	rax, qword ptr [rsp + 8]
	mov	qword ptr [rax], rbp
	mov	eax, dword ptr [rsp + 4]
	or	eax, 2
	mov	r13d, eax
	jmp	.label_1523
.label_1786:
	mov	rdi, -1
	mov	rax, -1
	xor	edx, edx
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
	jmp	.label_1522
.label_1787:
	mov	rdi, -1
	mov	rax, -1
	xor	edx, edx
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
.label_1534:
	or	dl, r10b
.label_1525:
	or	dl, bl
.label_1522:
	and	dl, 1
	movzx	eax, dl
.label_1541:
	mov	rbp, rsi
.label_1520:
	or	eax, dword ptr [rsp + 4]
	lea	rdx, [r12 + rcx]
	mov	qword ptr [r15], rdx
	cmp	byte ptr [r12 + rcx], 0
	je	.label_1518
	or	eax, 2
.label_1518:
	mov	r13d, eax
	mov	rax, qword ptr [rsp + 8]
.label_1544:
	mov	qword ptr [rax], rbp
.label_1523:
	mov	eax, r13d
	add	rsp, 0x18
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_1535:
	mov	edi, OFFSET FLAT:.str_12
	mov	esi, OFFSET FLAT:.str.1_10
	mov	edx, 0x54
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.xstrtoumax
	call	__assert_fail
	nop	word ptr cs:[rax + rax]
	nop	
	.section	.text
	.align	16
	#Procedure 0x413680

	.globl rpl_calloc
	.type rpl_calloc, @function
rpl_calloc:
	test	rdi, rdi
	mov	eax, 1
	je	.label_1545
	test	rsi, rsi
	mov	ecx, 1
	je	.label_1546
	mov	rax, rsi
	imul	rax, rdi
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	mov	rax, rsi
	mov	rcx, rdi
	je	.label_1546
	push	rax
	call	__errno_location
	mov	dword ptr [rax], 0xc
	xor	eax, eax
	pop	rcx
	ret	
.label_1545:
	mov	ecx, 1
.label_1546:
	mov	rdi, rcx
	mov	rsi, rax
	jmp	calloc
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4136d0

	.globl explicit_bzero
	.type explicit_bzero, @function
explicit_bzero:
	mov	rax, rsi
	xor	esi, esi
	mov	rdx, rax
	jmp	memset
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4136e0

	.globl rpl_fclose
	.type rpl_fclose, @function
rpl_fclose:
	push	rbp
	push	r14
	push	rbx
	mov	rbx, rdi
	call	fileno
	test	eax, eax
	js	.label_1547
	mov	rdi, rbx
	call	__freading
	test	eax, eax
	je	.label_1548
	mov	rdi, rbx
	call	fileno
	xor	esi, esi
	mov	edx, 1
	mov	edi, eax
	call	lseek
	cmp	rax, -1
	je	.label_1547
.label_1548:
	mov	rdi, rbx
	call	rpl_fflush
	test	eax, eax
	je	.label_1547
	call	__errno_location
	mov	r14, rax
	mov	ebp, dword ptr [r14]
	mov	rdi, rbx
	call	fclose
	test	ebp, ebp
	je	.label_1549
	mov	dword ptr [r14], ebp
	mov	eax, 0xffffffff
.label_1549:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
.label_1547:
	mov	rdi, rbx
	pop	rbx
	pop	r14
	pop	rbp
	jmp	fclose
	nop	word ptr cs:[rax + rax]
	nop	
	.section	.text
	.align	16
	#Procedure 0x413760

	.globl rpl_fcntl
	.type rpl_fcntl, @function
rpl_fcntl:
	push	rbp
	push	r14
	push	rbx
	sub	rsp, 0xd0
	mov	ebx, edi
	test	al, al
	je	.label_1566
	movaps	xmmword ptr [rsp + 0x30], xmm0
	movaps	xmmword ptr [rsp + 0x40], xmm1
	movaps	xmmword ptr [rsp + 0x50], xmm2
	movaps	xmmword ptr [rsp + 0x60], xmm3
	movaps	xmmword ptr [rsp + 0x70], xmm4
	movaps	xmmword ptr [rsp + 0x80], xmm5
	movaps	xmmword ptr [rsp + 0x90], xmm6
	movaps	xmmword ptr [rsp + 0xa0], xmm7
.label_1566:
	mov	qword ptr [rsp + 0x28], r9
	mov	qword ptr [rsp + 0x20], r8
	mov	qword ptr [rsp + 0x18], rcx
	mov	qword ptr [rsp + 0x10], rdx
	lea	rax, [rsp]
	mov	qword ptr [rsp + 0xc0], rax
	lea	rax, [rsp + 0xf0]
	mov	qword ptr [rsp + 0xb8], rax
	mov	dword ptr [rsp + 0xb4], 0x30
	mov	dword ptr [rsp + 0xb0], 0x10
	cmp	esi, 0xb
	ja	.label_1550
	mov	eax, 0xa0a
	bt	eax, esi
	jb	.label_1553
	mov	eax, 0x514
	bt	eax, esi
	jb	.label_1561
	test	esi, esi
	jne	.label_1550
	movsxd	rcx, dword ptr [rsp + 0xb0]
	cmp	rcx, 0x28
	ja	.label_1551
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0xc0]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp + 0xb0], ecx
	jmp	.label_1554
.label_1550:
	lea	eax, [rsi - 0x400]
	cmp	eax, 8
	ja	.label_1557
	mov	ecx, 0x85
	bt	ecx, eax
	jb	.label_1561
	mov	ecx, 0x102
	bt	ecx, eax
	jae	.label_1563
.label_1553:
	xor	eax, eax
	mov	edi, ebx
	call	fcntl
	jmp	.label_1560
.label_1561:
	movsxd	rcx, dword ptr [rsp + 0xb0]
	cmp	rcx, 0x28
	ja	.label_1565
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0xc0]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp + 0xb0], ecx
	jmp	.label_1567
.label_1565:
	mov	rax, qword ptr [rsp + 0xb8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 0xb8], rcx
.label_1567:
	mov	edx, dword ptr [rax]
.label_1555:
	xor	eax, eax
	mov	edi, ebx
	call	fcntl
.label_1560:
	mov	ebp, eax
.label_1552:
	mov	eax, ebp
	add	rsp, 0xd0
	pop	rbx
	pop	r14
	pop	rbp
	ret	
.label_1563:
	cmp	eax, 6
	jne	.label_1557
	movsxd	rcx, dword ptr [rsp + 0xb0]
	cmp	rcx, 0x28
	ja	.label_1558
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0xc0]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp + 0xb0], ecx
	jmp	.label_1562
.label_1557:
	movsxd	rcx, dword ptr [rsp + 0xb0]
	cmp	rcx, 0x28
	ja	.label_1556
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0xc0]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp + 0xb0], ecx
	jmp	.label_1568
.label_1551:
	mov	rax, qword ptr [rsp + 0xb8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 0xb8], rcx
.label_1554:
	mov	edx, dword ptr [rax]
	xor	esi, esi
	jmp	.label_1555
.label_1558:
	mov	rax, qword ptr [rsp + 0xb8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 0xb8], rcx
.label_1562:
	mov	r14d, dword ptr [rax]
	cmp	dword ptr [dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec]],  0
	js	.label_1559
	mov	esi, 0x406
	xor	eax, eax
	mov	edi, ebx
	mov	edx, r14d
	call	fcntl
	mov	ebp, eax
	test	ebp, ebp
	jns	.label_1564
	call	__errno_location
	cmp	dword ptr [rax], 0x16
	jne	.label_1564
	xor	esi, esi
	xor	eax, eax
	mov	edi, ebx
	mov	edx, r14d
	call	fcntl
	mov	ebp, eax
	test	ebp, ebp
	js	.label_1552
	mov	dword ptr [dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec]],  0xffffffff
	mov	al, 1
	jmp	.label_1570
.label_1564:
	mov	dword ptr [dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec]],  1
	jmp	.label_1552
.label_1556:
	mov	rax, qword ptr [rsp + 0xb8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 0xb8], rcx
.label_1568:
	mov	rdx, qword ptr [rax]
	xor	eax, eax
	mov	edi, ebx
	call	fcntl
	jmp	.label_1560
.label_1559:
	xor	esi, esi
	xor	eax, eax
	mov	edi, ebx
	mov	edx, r14d
	call	fcntl
	mov	ebp, eax
	cmp	dword ptr [dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec]],  -1
	sete	al
.label_1570:
	test	al, al
	je	.label_1552
	test	ebp, ebp
	js	.label_1552
	mov	esi, 1
	xor	eax, eax
	mov	edi, ebp
	call	fcntl
	mov	ecx, eax
	test	ecx, ecx
	js	.label_1569
	or	ecx, 1
	mov	esi, 2
	xor	eax, eax
	mov	edi, ebp
	mov	edx, ecx
	call	fcntl
	cmp	eax, -1
	jne	.label_1552
.label_1569:
	call	__errno_location
	mov	rbx, rax
	mov	r14d, dword ptr [rbx]
	mov	edi, ebp
	call	close
	mov	dword ptr [rbx], r14d
	mov	ebp, 0xffffffff
	jmp	.label_1552
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x413a40

	.globl rpl_fflush
	.type rpl_fflush, @function
rpl_fflush:
	push	rbx
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_1571
	mov	rdi, rbx
	call	__freading
	test	eax, eax
	je	.label_1571
	test	byte ptr [rbx + 1], 1
	je	.label_1571
	xor	esi, esi
	mov	edx, 1
	mov	rdi, rbx
	call	rpl_fseeko
.label_1571:
	mov	rdi, rbx
	pop	rbx
	jmp	fflush
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x413a80

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
	jne	.label_1572
	mov	rax, qword ptr [rbx + 0x28]
	cmp	rax, qword ptr [rbx + 0x20]
	jne	.label_1572
	cmp	qword ptr [rbx + 0x48], 0
	je	.label_1573
.label_1572:
	mov	rdi, rbx
	mov	rsi, rbp
	mov	edx, r14d
	pop	rbx
	pop	r14
	pop	rbp
	jmp	fseeko
.label_1573:
	mov	rdi, rbx
	call	fileno
	mov	edi, eax
	mov	rsi, rbp
	mov	edx, r14d
	call	lseek
	mov	rcx, rax
	mov	eax, 0xffffffff
	cmp	rcx, -1
	je	.label_1574
	and	byte ptr [rbx], 0xef
	mov	qword ptr [rbx + 0x90], rcx
	xor	eax, eax
.label_1574:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x413af0

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
	je	.label_1575
	cmp	r15, -2
	jb	.label_1575
	xor	edi, edi
	call	hard_locale
	test	al, al
	jne	.label_1575
	movzx	eax, byte ptr [r14]
	mov	dword ptr [rbx], eax
	mov	r15d, 1
.label_1575:
	mov	rax, r15
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x413b50

	.globl rpl_nanosleep
	.type rpl_nanosleep, @function
rpl_nanosleep:
	push	r15
	push	r14
	push	rbx
	sub	rsp, 0x10
	mov	r15, rsi
	mov	rcx, qword ptr [rdi + 8]
	cmp	rcx, 0x3b9aca00
	jb	.label_1576
	call	__errno_location
	mov	dword ptr [rax], 0x16
	mov	eax, 0xffffffff
	jmp	.label_1578
.label_1576:
	mov	rbx, qword ptr [rdi]
	lea	r14, [rsp]
	nop	word ptr cs:[rax + rax]
.label_1579:
	mov	qword ptr [rsp + 8], rcx
	cmp	rbx, 0x1fa401
	jl	.label_1577
	mov	qword ptr [rsp], 0x1fa400
	mov	rdi, r14
	mov	rsi, r15
	call	nanosleep
	add	rbx, -0x1fa400
	test	eax, eax
	mov	ecx, 0
	je	.label_1579
	test	r15, r15
	je	.label_1578
	add	qword ptr [r15], rbx
	jmp	.label_1578
.label_1577:
	mov	qword ptr [rsp], rbx
	lea	rdi, [rsp]
	mov	rsi, r15
	call	nanosleep
.label_1578:
	add	rsp, 0x10
	pop	rbx
	pop	r14
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	nop	
	.section	.text
	.align	16
	#Procedure 0x413bf0

	.globl rpl_nl_langinfo
	.type rpl_nl_langinfo, @function
rpl_nl_langinfo:
	lea	eax, [rdi - 0x27d8]
	lea	ecx, [rdi + 0x1d842]
	cmp	eax, 0xc
	cmovb	edi, ecx
	jmp	nl_langinfo
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x413c10

	.globl _obstack_begin
	.type _obstack_begin, @function
_obstack_begin:
	push	r15
	push	r14
	push	rbx
	mov	r14, rdi
	mov	qword ptr [r14 + 0x38], rcx
	mov	qword ptr [r14 + 0x40], r8
	and	byte ptr [r14 + 0x50], 0xfe
	test	rdx, rdx
	mov	ebx, 0x10
	cmovne	rbx, rdx
	test	rsi, rsi
	mov	edi, 0xfe0
	cmovne	rdi, rsi
	mov	qword ptr [r14], rdi
	lea	r15, [rbx - 1]
	mov	qword ptr [r14 + 0x30], r15
	call	rcx
	mov	qword ptr [r14 + 8], rax
	test	rax, rax
	je	.label_1580
	lea	rcx, [rax + r15 + 0x10]
	neg	rbx
	and	rbx, rcx
	mov	qword ptr [r14 + 0x10], rbx
	mov	qword ptr [r14 + 0x18], rbx
	mov	rcx, qword ptr [r14]
	add	rcx, rax
	mov	qword ptr [rax], rcx
	mov	qword ptr [r14 + 0x20], rcx
	mov	qword ptr [rax + 8], 0
	and	byte ptr [r14 + 0x50], 0xf9
	mov	eax, 1
	pop	rbx
	pop	r14
	pop	r15
	ret	
.label_1580:
	call	qword ptr [word ptr [rip + obstack_alloc_failed_handler]]
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x413ca0

	.globl _obstack_begin_1
	.type _obstack_begin_1, @function
_obstack_begin_1:
	push	r15
	push	r14
	push	rbx
	mov	rbx, rdi
	mov	qword ptr [rbx + 0x38], rcx
	mov	qword ptr [rbx + 0x40], r8
	mov	qword ptr [rbx + 0x48], r9
	or	byte ptr [rbx + 0x50], 1
	test	rdx, rdx
	mov	r14d, 0x10
	cmovne	r14, rdx
	test	rsi, rsi
	mov	eax, 0xfe0
	cmovne	rax, rsi
	mov	qword ptr [rbx], rax
	lea	r15, [r14 - 1]
	mov	qword ptr [rbx + 0x30], r15
	mov	rdi, r9
	mov	rsi, rax
	call	rcx
	mov	qword ptr [rbx + 8], rax
	test	rax, rax
	je	.label_1581
	lea	rcx, [rax + r15 + 0x10]
	neg	r14
	and	r14, rcx
	mov	qword ptr [rbx + 0x10], r14
	mov	qword ptr [rbx + 0x18], r14
	mov	rcx, qword ptr [rbx]
	add	rcx, rax
	mov	qword ptr [rax], rcx
	mov	qword ptr [rbx + 0x20], rcx
	mov	qword ptr [rax + 8], 0
	and	byte ptr [rbx + 0x50], 0xf9
	mov	eax, 1
	pop	rbx
	pop	r14
	pop	r15
	ret	
.label_1581:
	call	qword ptr [word ptr [rip + obstack_alloc_failed_handler]]
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x413d30

	.globl _obstack_newchunk
	.type _obstack_newchunk, @function
_obstack_newchunk:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x18
	mov	r12, rdi
	mov	rcx, qword ptr [r12]
	mov	r14, qword ptr [r12 + 0x18]
	sub	r14, qword ptr [r12 + 0x10]
	lea	rdx, [r14 + rsi]
	add	rdx, qword ptr [r12 + 0x30]
	setb	al
	mov	rbx, r14
	shr	rbx, 3
	add	rbx, 0x64
	add	rbx, rdx
	cmovb	rbx, rdx
	cmp	rbx, rcx
	cmovb	rbx, rcx
	add	rsi, r14
	jb	.label_1583
	test	al, al
	jne	.label_1583
	mov	r15, qword ptr [r12 + 8]
	test	byte ptr [r12 + 0x50], 1
	jne	.label_1582
	mov	rdi, rbx
	call	qword ptr [r12 + 0x38]
	jmp	.label_1586
.label_1582:
	mov	rdi, qword ptr [r12 + 0x48]
	mov	rsi, rbx
	call	qword ptr [r12 + 0x38]
.label_1586:
	mov	r13, rax
	test	r13, r13
	je	.label_1583
	mov	qword ptr [r12 + 8], r13
	mov	qword ptr [r13 + 8], r15
	add	rbx, r13
	mov	qword ptr [r12 + 0x20], rbx
	mov	qword ptr [r13], rbx
	mov	rsi, qword ptr [r12 + 0x10]
	mov	qword ptr [rsp + 8], rsi
	mov	rbp, qword ptr [r12 + 0x30]
	lea	rbx, [r13 + rbp + 0x10]
	mov	qword ptr [rsp + 0x10], r15
	mov	r15, rbp
	not	r15
	and	rbx, r15
	mov	rdi, rbx
	mov	rdx, r14
	call	memcpy
	test	byte ptr [r12 + 0x50], 2
	jne	.label_1584
	mov	rax, qword ptr [rsp + 0x10]
	lea	rax, [rax + rbp + 0x10]
	and	rax, r15
	cmp	qword ptr [rsp + 8], rax
	jne	.label_1584
	mov	rcx, qword ptr [rsp + 0x10]
	mov	rax, qword ptr [rcx + 8]
	mov	qword ptr [r13 + 8], rax
	test	byte ptr [r12 + 0x50], 1
	mov	rsi, rcx
	jne	.label_1585
	mov	rdi, rsi
	call	qword ptr [r12 + 0x40]
	jmp	.label_1584
.label_1585:
	mov	rdi, qword ptr [r12 + 0x48]
	call	qword ptr [r12 + 0x40]
.label_1584:
	mov	qword ptr [r12 + 0x10], rbx
	add	r14, rbx
	mov	qword ptr [r12 + 0x18], r14
	and	byte ptr [r12 + 0x50], 0xfd
	add	rsp, 0x18
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_1583:
	call	qword ptr [word ptr [rip + obstack_alloc_failed_handler]]
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x413e70

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
	je	.label_1588
	cmp	rcx, rsi
	jae	.label_1590
	mov	eax, 1
	cmp	qword ptr [rcx], rsi
	jb	.label_1590
	jmp	.label_1589
.label_1588:
	xor	eax, eax
.label_1589:
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x413ea0

	.globl _obstack_free
	.type _obstack_free, @function
_obstack_free:
	push	r15
	push	r14
	push	rbx
	mov	r14, rsi
	mov	r15, rdi
	mov	rsi, qword ptr [r15 + 8]
	test	rsi, rsi
	je	.label_1591
	nop	word ptr cs:[rax + rax]
.label_1594:
	cmp	rsi, r14
	jae	.label_1592
	cmp	qword ptr [rsi], r14
	jae	.label_1593
.label_1592:
	mov	rbx, qword ptr [rsi + 8]
	test	byte ptr [r15 + 0x50], 1
	jne	.label_1595
	mov	rdi, rsi
	call	qword ptr [r15 + 0x40]
	jmp	.label_1597
	nop	
.label_1595:
	mov	rdi, qword ptr [r15 + 0x48]
	call	qword ptr [r15 + 0x40]
.label_1597:
	or	byte ptr [r15 + 0x50], 2
	test	rbx, rbx
	mov	rsi, rbx
	jne	.label_1594
.label_1591:
	test	r14, r14
	je	.label_1596
	call	abort
.label_1593:
	mov	qword ptr [r15 + 0x18], r14
	mov	qword ptr [r15 + 0x10], r14
	mov	rax, qword ptr [rsi]
	mov	qword ptr [r15 + 0x20], rax
	mov	qword ptr [r15 + 8], rsi
.label_1596:
	pop	rbx
	pop	r14
	pop	r15
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x413f20

	.globl _obstack_memory_used
	.type _obstack_memory_used, @function
_obstack_memory_used:
	mov	rcx, qword ptr [rdi + 8]
	xor	eax, eax
	jmp	.label_1598
	nop	dword ptr [rax + rax]
.label_1599:
	sub	rax, rcx
	add	rax, qword ptr [rcx]
	mov	rcx, qword ptr [rcx + 8]
.label_1598:
	test	rcx, rcx
	jne	.label_1599
	ret	
	.section	.text
	.align	16
	#Procedure 0x413f40

	.globl print_and_abort
	.type print_and_abort, @function
print_and_abort:
	push	rbx
	mov	rbx,  qword ptr [word ptr [rip + stderr]]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.1_8
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	esi, 1
	mov	edx, OFFSET FLAT:.str_2
	xor	eax, eax
	mov	rdi, rbx
	call	__fprintf_chk
	mov	edi,  dword ptr [dword ptr [rip + exit_failure]]
	call	exit
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x413f80

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
	jne	.label_1601
	test	eax, eax
	sete	cl
	neg	eax
	sbb	ebx, ebx
	test	r14, r14
	jne	.label_1600
	test	cl, cl
	jne	.label_1600
	call	__errno_location
	xor	ecx, ecx
	cmp	dword ptr [rax], 9
	mov	ebx, 0xffffffff
	cmove	ebx, ecx
	jmp	.label_1600
.label_1601:
	mov	ebx, 0xffffffff
	test	eax, eax
	jne	.label_1600
	call	__errno_location
	mov	dword ptr [rax], 0
.label_1600:
	mov	eax, ebx
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x413fe0

	.globl dtotimespec
	.type dtotimespec, @function
dtotimespec:
	movabs	rcx, 0x7fffffffffffffff
	xor	edx, edx
	ucomisd	xmm0,  qword ptr [word ptr [rip + label_1602]]
	jbe	.label_1603
	mov	edx, 0x3b9ac9ff
	movsd	xmm1,  qword ptr [word ptr [rip + label_235]]
	ucomisd	xmm1, xmm0
	jbe	.label_1604
	cvttsd2si	rsi, xmm0
	xorps	xmm1, xmm1
	cvtsi2sd	xmm1, rsi
	subsd	xmm0, xmm1
	mulsd	xmm0,  qword ptr [word ptr [rip + label_1605]]
	cvttsd2si	rax, xmm0
	xorps	xmm1, xmm1
	cvtsi2sd	xmm1, rax
	ucomisd	xmm0, xmm1
	seta	cl
	movzx	ecx, cl
	add	rcx, rax
	movabs	rdx, 0x112e0be826d694b3
	mov	rax, rcx
	imul	rdx
	mov	rax, rdx
	shr	rdx, 0x3f
	sar	rax, 0x1a
	add	rax, rdx
	imul	rdi, rax, 0x3b9aca00
	mov	rdx, rcx
	sub	rdx, rdi
	add	rdx, 0x3b9aca00
	sub	rcx, rdi
	cmovns	rdx, rcx
	add	rax, rsi
	sar	rcx, 0x3f
	add	rcx, rax
.label_1604:
	mov	rax, rcx
	ret	
.label_1603:
	inc	rcx
	mov	rax, rcx
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x414090

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
	ja	.label_1606
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
	jmp	.label_1607
.label_1606:
	mov	eax, ebx
.label_1607:
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4140e0

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
	.section	.text
	.align	16
	#Procedure 0x414100

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
	je	.label_1608
	mov	rdi, rbx
	call	fileno
	cmp	eax, 2
	ja	.label_1612
	mov	edi, eax
	call	dup_safer
	mov	ebp, eax
	test	ebp, ebp
	js	.label_1609
	mov	rdi, rbx
	call	rpl_fclose
	test	eax, eax
	jne	.label_1610
	mov	edi, ebp
	mov	rsi, r14
	call	fdopen
	test	rax, rax
	jne	.label_1608
.label_1610:
	call	__errno_location
	mov	rbx, rax
	mov	r14d, dword ptr [rbx]
	mov	edi, ebp
	call	close
	mov	dword ptr [rbx], r14d
	jmp	.label_1611
.label_1612:
	mov	rax, rbx
	jmp	.label_1608
.label_1609:
	call	__errno_location
	mov	rbp, rax
	mov	r14d, dword ptr [rbp]
	mov	rdi, rbx
	call	rpl_fclose
	mov	dword ptr [rbp], r14d
.label_1611:
	xor	eax, eax
.label_1608:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x414190

	.globl locale_charset
	.type locale_charset, @function
locale_charset:
	push	rax
	mov	edi, 0xe
	call	rpl_nl_langinfo
	test	rax, rax
	mov	ecx, OFFSET FLAT:.str_1
	cmovne	rcx, rax
	mov	eax, OFFSET FLAT:.str.1_11
	cmp	byte ptr [rcx], 0
	je	.label_1613
	mov	rax, rcx
.label_1613:
	add	rsp, 8
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4141c0

	.globl memcoll
	.type memcoll, @function
memcoll:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x28
	mov	rbx, rcx
	mov	r14, rdx
	mov	rbp, rsi
	mov	r12, rdi
	cmp	rbp, rbx
	jne	.label_1614
	mov	rdi, r12
	mov	rsi, r14
	mov	rdx, rbp
	call	memcmp
	test	eax, eax
	je	.label_1616
.label_1614:
	mov	al, byte ptr [r12 + rbp]
	mov	byte ptr [rsp + 7], al
	mov	al, byte ptr [r14 + rbx]
	mov	byte ptr [rsp + 6], al
	mov	byte ptr [r12 + rbp], 0
	mov	byte ptr [r14 + rbx], 0
	lea	r13, [rbp + 1]
	mov	qword ptr [rsp + 0x10], rbp
	lea	r15, [rbx + 1]
	mov	qword ptr [rsp + 0x20], rbx
	call	__errno_location
	mov	rbx, rax
	mov	rbp, r14
	mov	qword ptr [rsp + 0x18], r14
	mov	r14, r12
	mov	qword ptr [rsp + 8], r12
	nop	dword ptr [rax]
.label_1619:
	mov	dword ptr [rbx], 0
	mov	rdi, r14
	mov	rsi, rbp
	call	strcoll
	test	eax, eax
	jne	.label_1617
	mov	rdi, r14
	call	strlen
	mov	r12, rax
	inc	r12
	mov	rdi, rbp
	call	strlen
	inc	rax
	sub	r13, r12
	je	.label_1615
	add	rbp, rax
	add	r14, r12
	sub	r15, rax
	mov	eax, 1
	jne	.label_1619
	jmp	.label_1617
.label_1615:
	xor	ecx, ecx
	cmp	r15, rax
	mov	eax, 0xffffffff
	cmove	eax, ecx
.label_1617:
	mov	rcx, qword ptr [rsp + 0x10]
	mov	rdx, qword ptr [rsp + 8]
	mov	bl, byte ptr [rsp + 7]
	mov	byte ptr [rdx + rcx], bl
	mov	rcx, qword ptr [rsp + 0x20]
	mov	rdx, qword ptr [rsp + 0x18]
	mov	bl, byte ptr [rsp + 6]
	mov	byte ptr [rdx + rcx], bl
	jmp	.label_1618
.label_1616:
	call	__errno_location
	mov	dword ptr [rax], 0
	xor	eax, eax
.label_1618:
	add	rsp, 0x28
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
	#Procedure 0x4142e0

	.globl memcoll0
	.type memcoll0, @function
memcoll0:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	r14, rcx
	mov	r12, rdx
	mov	r15, rsi
	mov	rbx, rdi
	cmp	r15, r14
	jne	.label_1620
	mov	rdi, rbx
	mov	rsi, r12
	mov	rdx, r15
	call	memcmp
	test	eax, eax
	je	.label_1622
.label_1620:
	call	__errno_location
	mov	r13, rax
	nop	word ptr cs:[rax + rax]
.label_1624:
	mov	dword ptr [r13], 0
	mov	rdi, rbx
	mov	rsi, r12
	call	strcoll
	test	eax, eax
	jne	.label_1621
	mov	rdi, rbx
	call	strlen
	mov	rbp, rax
	inc	rbp
	mov	rdi, r12
	call	strlen
	inc	rax
	sub	r15, rbp
	je	.label_1623
	add	r12, rax
	add	rbx, rbp
	sub	r14, rax
	mov	eax, 1
	jne	.label_1624
	jmp	.label_1621
.label_1623:
	xor	ecx, ecx
	cmp	r14, rax
	mov	eax, 0xffffffff
	cmove	eax, ecx
	jmp	.label_1621
.label_1622:
	call	__errno_location
	mov	dword ptr [rax], 0
	xor	eax, eax
.label_1621:
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax]
	.section .text
	.align	16
	#Procedure 0x4143a0

	.globl dup_safer
	.type dup_safer, @function
dup_safer:
	xor	esi, esi
	mov	edx, 3
	xor	eax, eax
	jmp	rpl_fcntl
	nop
	nop	
	nop	word ptr cs:[rax + rax]
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax]
	nop	word ptr cs:[rax + rax]