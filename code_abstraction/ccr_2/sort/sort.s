	.section	.text
	.align	32
	#Procedure 0x402bc0

	.globl usage
	.type usage, @function
usage:
	push	rbp
	push	rbx
	push	rax
	mov	ebp, edi
	test	ebp, ebp
	jne	.label_25
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_27
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	rdx, qword ptr [rip + program_name]
	mov	edi, 1
	xor	eax, eax
	mov	rsi, rcx
	mov	rcx, rdx
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_18
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_13
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_21
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_14
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_41
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_39
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_20
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_40
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_22
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_38
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_23
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_42
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_24
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_43
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_35
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_33
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_10
	xor	eax, eax
	mov	rsi, rcx
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_9
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_15
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_26
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_37
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_11
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_36
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_30
	mov	ecx, OFFSET FLAT:label_31
	xor	eax, eax
	call	__printf_chk
	mov	edi, 5
	xor	esi, esi
	call	setlocale
	test	rax, rax
	je	.label_32
	mov	esi, OFFSET FLAT:label_17
	mov	edx, 3
	mov	rdi, rax
	call	strncmp
	test	eax, eax
	je	.label_32
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_34
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
.label_32:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_19
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_31
	mov	ecx, OFFSET FLAT:label_28
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_16
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_28
	mov	ecx, OFFSET FLAT:label_29
	xor	eax, eax
	call	__printf_chk
	mov	edi, ebp
	call	exit
.label_25:
	mov	rbx, qword ptr [rip + stderr]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_12
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
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402fb0

	.globl main
	.type main, @function
main:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x358
	mov	rbx, rsi
	mov	r12d, edi
	mov	edi, OFFSET FLAT:label_262
	call	getenv
	mov	qword ptr [rsp + 0x18], rax
	call	posix2_version
	add	eax, 0xfffcf250
	cmp	eax, 0x2b8
	seta	al
	mov	dword ptr [rsp + 0x28], eax
	mov	qword ptr [rsp + 8], rbx
	mov	rdi, qword ptr [rbx]
	call	set_program_name
	mov	edi, 6
	mov	esi, OFFSET FLAT:label_78
	call	setlocale
	mov	qword ptr [rsp + 0xd0], rax
	test	rax, rax
	setne	byte ptr [rsp + 0x40]
	mov	edi, OFFSET FLAT:label_46
	mov	esi, OFFSET FLAT:label_47
	call	bindtextdomain
	mov	edi, OFFSET FLAT:label_46
	call	textdomain
	mov	dword ptr [rip + exit_failure],  2
	mov	edi, 3
	call	hard_locale
	mov	byte ptr [rip + hard_LC_COLLATE],  al
	mov	edi, 2
	call	hard_locale
	mov	byte ptr [rip + hard_LC_TIME],  al
	call	localeconv
	mov	rcx, qword ptr [rax]
	movzx	edx, byte ptr [rcx]
	test	edx, edx
	mov	dword ptr [rip + decimal_point],  edx
	je	.label_69
	cmp	byte ptr [rcx + 1], 0
	je	.label_72
.label_69:
	mov	dword ptr [rip + decimal_point],  0x2e
.label_72:
	mov	rax, qword ptr [rax + 8]
	movzx	ecx, byte ptr [rax]
	test	ecx, ecx
	mov	dword ptr [rip + thousands_sep],  ecx
	je	.label_77
	cmp	byte ptr [rax + 1], 0
	je	.label_81
.label_77:
	mov	dword ptr [rip + thousands_sep],  0xffffffff
.label_81:
	mov	byte ptr [rip + have_read_stdin],  0
	mov	rbx, -0x100
	call	__ctype_b_loc
	mov	r15, rax
	nop	word ptr [rax + rax]
.label_406:
	mov	rcx, qword ptr [r15]
	movzx	eax, word ptr [rcx + rbx*2 + 0x200]
	and	eax, 1
	cmp	bl, 0xa
	sete	dl
	or	dl, al
	mov	byte ptr [rbx + nonprinting],  dl
	movzx	ecx, word ptr [rcx + rbx*2 + 0x200]
	mov	edx, ecx
	shr	edx, 0xe
	not	edx
	and	edx, 1
	mov	byte ptr [rbx + nondictionary],  dl
	test	cl, 8
	jne	.label_288
	cmp	bl, 0xa
	setne	cl
	test	ax, ax
	sete	al
	and	al, cl
	jmp	.label_104
	nop	dword ptr [rax]
.label_288:
	xor	eax, eax
.label_104:
	mov	byte ptr [rbx + fold_toupper],  al
	lea	eax, [rbx + 0x180]
	cmp	eax, 0x180
	jae	.label_109
	call	__ctype_toupper_loc
	mov	rax, qword ptr [rax]
	mov	eax, dword ptr [rax + rbx*4 + 0x400]
	jmp	.label_113
	nop	word ptr cs:[rax + rax]
.label_109:
	lea	rax, [rbx + 0x100]
.label_113:
	mov	byte ptr [rbx + temphead],  al
	inc	rbx
	jne	.label_406
	cmp	byte ptr [rip + hard_LC_TIME],  0
	je	.label_124
	xor	r13d, r13d
	nop	word ptr cs:[rax + rax]
.label_165:
	lea	edi, [r13 + 0x2000e]
	call	rpl_nl_langinfo
	mov	rbp, rax
	mov	rdi, rbp
	call	strlen
	mov	rbx, rax
	lea	rdi, [rbx + 1]
	call	xmalloc
	mov	rcx, r13
	shl	rcx, 4
	mov	qword ptr [rcx + monthtab],  rax
	inc	r13
	mov	dword ptr [rcx + label_129],  r13d
	test	rbx, rbx
	mov	ecx, 0
	je	.label_130
	mov	r8d, ebx
	and	r8d, 1
	cmp	rbx, 1
	mov	ecx, 0
	mov	esi, 0
	je	.label_145
	sub	rbx, r8
	xor	ecx, ecx
	xor	esi, esi
	nop	word ptr [rax + rax]
.label_159:
	movzx	edi, byte ptr [rbp + rsi]
	mov	rdx, qword ptr [r15]
	test	byte ptr [rdx + rdi*2], 1
	jne	.label_151
	movzx	edx, byte ptr [rdi + fold_toupper]
	mov	byte ptr [rax + rcx], dl
	inc	rcx
.label_151:
	movzx	edi, byte ptr [rbp + rsi + 1]
	mov	rdx, qword ptr [r15]
	test	byte ptr [rdx + rdi*2], 1
	jne	.label_154
	movzx	edx, byte ptr [rdi + fold_toupper]
	mov	byte ptr [rax + rcx], dl
	inc	rcx
.label_154:
	add	rsi, 2
	cmp	rbx, rsi
	jne	.label_159
.label_145:
	test	r8, r8
	je	.label_130
	movzx	edx, byte ptr [rbp + rsi]
	mov	rsi, qword ptr [r15]
	test	byte ptr [rsi + rdx*2], 1
	jne	.label_130
	mov	dl, byte ptr [rdx + fold_toupper]
	mov	byte ptr [rax + rcx], dl
	inc	rcx
	nop	
.label_130:
	mov	byte ptr [rax + rcx], 0
	cmp	r13, 0xc
	jne	.label_165
	mov	edi, OFFSET FLAT:monthtab
	mov	esi, 0xc
	mov	edx, 0x10
	mov	ecx, OFFSET FLAT:struct_month_cmp
	call	qsort
.label_124:
	mov	edi, OFFSET FLAT:caught_signals
	call	sigemptyset
	lea	rdx, [rsp + 0x238]
	mov	edi, 0xe
	xor	esi, esi
	call	sigaction
	cmp	qword ptr [rsp + 0x238], 1
	je	.label_178
	mov	edi, OFFSET FLAT:caught_signals
	mov	esi, 0xe
	call	sigaddset
.label_178:
	lea	rdx, [rsp + 0x238]
	mov	edi, 1
	xor	esi, esi
	call	sigaction
	cmp	qword ptr [rsp + 0x238], 1
	je	.label_187
	mov	edi, OFFSET FLAT:caught_signals
	mov	esi, 1
	call	sigaddset
.label_187:
	lea	rdx, [rsp + 0x238]
	mov	edi, 2
	xor	esi, esi
	call	sigaction
	cmp	qword ptr [rsp + 0x238], 1
	je	.label_198
	mov	edi, OFFSET FLAT:caught_signals
	mov	esi, 2
	call	sigaddset
.label_198:
	lea	rdx, [rsp + 0x238]
	mov	edi, 0xd
	xor	esi, esi
	call	sigaction
	cmp	qword ptr [rsp + 0x238], 1
	je	.label_208
	mov	edi, OFFSET FLAT:caught_signals
	mov	esi, 0xd
	call	sigaddset
.label_208:
	lea	rdx, [rsp + 0x238]
	mov	edi, 3
	xor	esi, esi
	call	sigaction
	cmp	qword ptr [rsp + 0x238], 1
	je	.label_218
	mov	edi, OFFSET FLAT:caught_signals
	mov	esi, 3
	call	sigaddset
.label_218:
	lea	rdx, [rsp + 0x238]
	mov	edi, 0xf
	xor	esi, esi
	call	sigaction
	cmp	qword ptr [rsp + 0x238], 1
	je	.label_223
	mov	edi, OFFSET FLAT:caught_signals
	mov	esi, 0xf
	call	sigaddset
.label_223:
	lea	rdx, [rsp + 0x238]
	mov	edi, 0x1d
	xor	esi, esi
	call	sigaction
	cmp	qword ptr [rsp + 0x238], 1
	je	.label_234
	mov	edi, OFFSET FLAT:caught_signals
	mov	esi, 0x1d
	call	sigaddset
.label_234:
	lea	rdx, [rsp + 0x238]
	mov	edi, 0x1b
	xor	esi, esi
	call	sigaction
	cmp	qword ptr [rsp + 0x238], 1
	je	.label_241
	mov	edi, OFFSET FLAT:caught_signals
	mov	esi, 0x1b
	call	sigaddset
.label_241:
	lea	rdx, [rsp + 0x238]
	mov	edi, 0x1a
	xor	esi, esi
	call	sigaction
	cmp	qword ptr [rsp + 0x238], 1
	je	.label_255
	mov	edi, OFFSET FLAT:caught_signals
	mov	esi, 0x1a
	call	sigaddset
.label_255:
	lea	rdx, [rsp + 0x238]
	mov	edi, 0x18
	xor	esi, esi
	call	sigaction
	cmp	qword ptr [rsp + 0x238], 1
	je	.label_261
	mov	edi, OFFSET FLAT:caught_signals
	mov	esi, 0x18
	call	sigaddset
.label_261:
	lea	rdx, [rsp + 0x238]
	mov	edi, 0x19
	xor	esi, esi
	call	sigaction
	cmp	qword ptr [rsp + 0x238], 1
	je	.label_269
	mov	edi, OFFSET FLAT:caught_signals
	mov	esi, 0x19
	call	sigaddset
.label_269:
	mov	qword ptr [rsp + 568], OFFSET FLAT:sighandler
	movups	xmm0, xmmword ptr [rip + label_278]
	movups	xmmword ptr [rsp + 0x2b0], xmm0
	movups	xmm0, xmmword ptr [rip + label_279]
	movups	xmmword ptr [rsp + 0x2a0], xmm0
	movups	xmm0, xmmword ptr [rip + label_280]
	movups	xmmword ptr [rsp + 0x290], xmm0
	movups	xmm0, xmmword ptr [rip + label_281]
	movups	xmmword ptr [rsp + 0x280], xmm0
	movups	xmm0, xmmword ptr [rip + label_282]
	movups	xmmword ptr [rsp + 0x270], xmm0
	movups	xmm0, xmmword ptr [rip + label_283]
	movups	xmmword ptr [rsp + 0x260], xmm0
	movups	xmm0, xmmword ptr [rip + label_284]
	movups	xmmword ptr [rsp + 0x250], xmm0
	movupd	xmm0, xmmword ptr [rip + caught_signals]
	movupd	xmmword ptr [rsp + 0x240], xmm0
	mov	dword ptr [rsp + 0x2c0], 0
	mov	edi, OFFSET FLAT:caught_signals
	mov	esi, 0xe
	call	sigismember
	test	eax, eax
	je	.label_312
	lea	rsi, [rsp + 0x238]
	mov	edi, 0xe
	xor	edx, edx
	call	sigaction
.label_312:
	mov	edi, OFFSET FLAT:caught_signals
	mov	esi, 1
	call	sigismember
	test	eax, eax
	je	.label_317
	lea	rsi, [rsp + 0x238]
	mov	edi, 1
	xor	edx, edx
	call	sigaction
.label_317:
	mov	edi, OFFSET FLAT:caught_signals
	mov	esi, 2
	call	sigismember
	test	eax, eax
	je	.label_324
	lea	rsi, [rsp + 0x238]
	mov	edi, 2
	xor	edx, edx
	call	sigaction
.label_324:
	mov	edi, OFFSET FLAT:caught_signals
	mov	esi, 0xd
	call	sigismember
	test	eax, eax
	je	.label_330
	lea	rsi, [rsp + 0x238]
	mov	edi, 0xd
	xor	edx, edx
	call	sigaction
.label_330:
	mov	edi, OFFSET FLAT:caught_signals
	mov	esi, 3
	call	sigismember
	test	eax, eax
	je	.label_339
	lea	rsi, [rsp + 0x238]
	mov	edi, 3
	xor	edx, edx
	call	sigaction
.label_339:
	mov	edi, OFFSET FLAT:caught_signals
	mov	esi, 0xf
	call	sigismember
	test	eax, eax
	je	.label_343
	lea	rsi, [rsp + 0x238]
	mov	edi, 0xf
	xor	edx, edx
	call	sigaction
.label_343:
	mov	edi, OFFSET FLAT:caught_signals
	mov	esi, 0x1d
	call	sigismember
	test	eax, eax
	je	.label_346
	lea	rsi, [rsp + 0x238]
	mov	edi, 0x1d
	xor	edx, edx
	call	sigaction
.label_346:
	mov	edi, OFFSET FLAT:caught_signals
	mov	esi, 0x1b
	call	sigismember
	test	eax, eax
	je	.label_353
	lea	rsi, [rsp + 0x238]
	mov	edi, 0x1b
	xor	edx, edx
	call	sigaction
.label_353:
	mov	edi, OFFSET FLAT:caught_signals
	mov	esi, 0x1a
	call	sigismember
	test	eax, eax
	je	.label_359
	lea	rsi, [rsp + 0x238]
	mov	edi, 0x1a
	xor	edx, edx
	call	sigaction
.label_359:
	mov	edi, OFFSET FLAT:caught_signals
	mov	esi, 0x18
	call	sigismember
	test	eax, eax
	je	.label_365
	lea	rsi, [rsp + 0x238]
	mov	edi, 0x18
	xor	edx, edx
	call	sigaction
.label_365:
	mov	edi, OFFSET FLAT:caught_signals
	mov	esi, 0x19
	call	sigismember
	test	eax, eax
	je	.label_369
	lea	rsi, [rsp + 0x238]
	mov	edi, 0x19
	xor	edx, edx
	call	sigaction
.label_369:
	xor	ebx, ebx
	mov	edi, 0x11
	xor	esi, esi
	call	signal
	mov	edi, OFFSET FLAT:exit_cleanup
	call	atexit
	xorpd	xmm0, xmm0
	movupd	xmmword ptr [rsp + 0x180], xmm0
	movupd	xmmword ptr [rsp + 0x170], xmm0
	movupd	xmmword ptr [rsp + 0x160], xmm0
	movupd	xmmword ptr [rsp + 0x150], xmm0
	mov	qword ptr [rsp + 0x158], -1
	mov	qword ptr [rsp + 0x148], -1
	test	r12d, r12d
	js	.label_79
	movsxd	rdi, r12d
	shl	rdi, 3
	call	xmalloc
	mov	qword ptr [rsp + 0x20], rax
	cmp	qword ptr [rsp + 0x18], 0
	sete	byte ptr [rsp + 0x38]
	mov	eax, 0
	mov	qword ptr [rsp + 0x50], rax
	mov	eax, 0
	mov	qword ptr [rsp + 0x30], rax
	xor	r13d, r13d
	xor	eax, eax
	mov	qword ptr [rsp + 0x138], rax
	xor	eax, eax
	mov	qword ptr [rsp + 0xd8], rax
	xor	r14d, r14d
	xor	r15d, r15d
	mov	r8, qword ptr [rsp + 8]
	jmp	.label_384
	nop	
.label_49:
	mov	r14b, cl
	mov	ebx, ebp
.label_384:
	mov	dword ptr [rsp + 0xb0], 0xffffffff
	cmp	ebx, -1
	je	.label_400
	cmp	qword ptr [rsp + 0x18], 0
	je	.label_397
	test	r13, r13
	je	.label_397
	mov	eax, dword ptr [rsp + 0x28]
	test	al, 1
	je	.label_338
	test	r15b, r15b
	jne	.label_338
	movsxd	rax, dword ptr [rip + optind]
	cmp	eax, r12d
	je	.label_338
	mov	rcx, qword ptr [r8 + rax*8]
	cmp	byte ptr [rcx], 0x2d
	jne	.label_338
	cmp	byte ptr [rcx + 1], 0x6f
	jne	.label_338
	inc	eax
	cmp	eax, r12d
	jne	.label_397
	mov	al, byte ptr [rcx + 2]
	test	al, al
	je	.label_338
	nop	word ptr cs:[rax + rax]
.label_397:
	mov	edx, OFFSET FLAT:short_options
	mov	ecx, OFFSET FLAT:long_options
	mov	edi, r12d
	mov	rsi, r8
	lea	r8, [rsp + 0xb0]
	call	getopt_long
	mov	r8, qword ptr [rsp + 8]
	lea	edx, [rax + 0x83]
	cmp	edx, 0x10a
	ja	.label_409
	mov	ebp, 0x6d
	mov	cl, 1
	mov	ebx, 0xffffffff
	jmp	qword ptr [(rdx * 8) + label_50]
.label_1949:
	mov	rdi, qword ptr [rip + optarg]
	cmp	byte ptr [rdi], 0x2b
	jne	.label_100
	movsxd	rax, dword ptr [rip + optind]
	cmp	eax, r12d
	je	.label_59
	mov	rax, qword ptr [r8 + rax*8]
	cmp	byte ptr [rax], 0x2d
	jne	.label_59
	movsx	eax, byte ptr [rax + 1]
	add	eax, -0x30
	cmp	eax, 0xa
	setb	bl
	jmp	.label_67
	nop	word ptr cs:[rax + rax]
.label_400:
	mov	ebx, 0xffffffff
.label_338:
	movsxd	rax, dword ptr [rip + optind]
	cmp	eax, r12d
	jge	.label_74
	lea	ecx, [rax + 1]
	mov	dword ptr [rip + optind],  ecx
	mov	rax, qword ptr [r8 + rax*8]
	mov	rcx, qword ptr [rsp + 0x20]
	mov	qword ptr [rcx + r13*8], rax
	inc	r13
	mov	ecx, r14d
	mov	ebp, ebx
	jmp	.label_49
.label_1952:
	mov	rbx, qword ptr [rip + optarg]
	mov	rcx, qword ptr [rip + temp_dir_count]
	cmp	rcx, qword ptr [rip + temp_dir_alloc]
	jne	.label_88
	mov	rdi, qword ptr [rip + temp_dirs]
	test	rdi, rdi
	je	.label_90
	movabs	rax, 0xaaaaaaaaaaaaaaa
	cmp	rcx, rax
	jae	.label_93
	mov	rax, rcx
	shr	rax, 1
	lea	rsi, [rcx + rax + 1]
	jmp	.label_97
.label_1953:
	xorpd	xmm0, xmm0
	movapd	xmmword ptr [rsp + 0x90], xmm0
	movapd	xmmword ptr [rsp + 0x80], xmm0
	movapd	xmmword ptr [rsp + 0x70], xmm0
	movapd	xmmword ptr [rsp + 0x60], xmm0
	mov	qword ptr [rsp + 0xa0], 0
	mov	qword ptr [rsp + 0x70], -1
	mov	rdi, qword ptr [rip + optarg]
	lea	rsi, [rsp + 0x60]
	mov	edx, OFFSET FLAT:label_103
	call	parse_field_count
	mov	rdx, qword ptr [rsp + 0x60]
	lea	rcx, [rdx - 1]
	mov	qword ptr [rsp + 0x60], rcx
	test	rdx, rdx
	je	.label_114
	cmp	byte ptr [rax], 0x2e
	jne	.label_125
	inc	rax
	mov	edx, OFFSET FLAT:label_122
	mov	rdi, rax
	lea	rsi, [rsp + 0x68]
	call	parse_field_count
	mov	rcx, qword ptr [rsp + 0x68]
	lea	rdx, [rcx - 1]
	mov	qword ptr [rsp + 0x68], rdx
	test	rcx, rcx
	je	.label_132
	mov	rcx, qword ptr [rsp + 0x60]
	jmp	.label_138
.label_1959:
	mov	byte ptr [rip + eolchar],  1
	mov	ebp, 0x7a
	jmp	.label_65
.label_1962:
	mov	byte ptr [rip + debug],  1
	mov	ebp, 0x82
	jmp	.label_65
.label_1966:
	mov	rsi, qword ptr [rip + optarg]
	mov	r9, qword ptr [rip + argmatch_die]
	mov	edi, OFFSET FLAT:label_147
	mov	edx, OFFSET FLAT:sort_args
	mov	ecx, OFFSET FLAT:sort_types
	mov	r8d, 1
	call	__xargmatch_internal
	mov	r8, qword ptr [rsp + 8]
	movsx	eax, byte ptr [rax + sort_types]
.label_1950:
	mov	ebp, eax
	mov	byte ptr [rsp + 0x238], bpl
	mov	byte ptr [rsp + 0x239], 0
	test	bpl, bpl
	je	.label_65
	lea	rax, [rsp + 0x239]
	mov	ecx, ebp
	nop	word ptr cs:[rax + rax]
.label_191:
	movsx	ecx, cl
	add	ecx, -0x4d
	cmp	ecx, 0x25
	ja	.label_65
	jmp	qword ptr [(rcx * 8) + label_163]
.label_2003:
	mov	byte ptr [rsp + 0x17e], 1
	jmp	.label_48
.label_2010:
	mov	byte ptr [rsp + 0x17d], 1
	jmp	.label_48
.label_2011:
	cmp	qword ptr [rsp + 0x168], 0
	jne	.label_48
	mov	qword ptr [rsp + 360], OFFSET FLAT:nonprinting
	jmp	.label_48
.label_2006:
	mov	word ptr [rsp + 0x178], 0x101
	jmp	.label_48
.label_2008:
	mov	qword ptr [rsp + 368], OFFSET FLAT:fold_toupper
	jmp	.label_48
.label_2005:
	mov	byte ptr [rsp + 0x180], 1
	jmp	.label_48
.label_2009:
	mov	byte ptr [rsp + 0x17c], 1
	jmp	.label_48
.label_2004:
	mov	byte ptr [rsp + 0x17b], 1
	jmp	.label_48
.label_2007:
	mov	qword ptr [rsp + 360], OFFSET FLAT:nondictionary
	jmp	.label_48
.label_2013:
	mov	byte ptr [rsp + 0x17f], 1
	jmp	.label_48
.label_2012:
	mov	byte ptr [rsp + 0x17a], 1
	nop	
.label_48:
	movzx	ecx, byte ptr [rax]
	inc	rax
	test	cl, cl
	jne	.label_191
	jmp	.label_65
.label_1951:
	mov	rbx, r15
	mov	ebp, dword ptr [rsp + 0xb0]
	mov	r15, qword ptr [rip + optarg]
	lea	rsi, [rsp + 0x190]
	lea	rcx, [rsp + 0x238]
	mov	edx, 0xa
	mov	r8d, OFFSET FLAT:label_102
	mov	rdi, r15
	call	xstrtoumax
	cmp	eax, 2
	je	.label_205
	test	eax, eax
	mov	r8, qword ptr [rsp + 8]
	jne	.label_171
	mov	rax, qword ptr [rsp + 0x190]
	movsx	eax, byte ptr [rax - 1]
	add	eax, -0x30
	cmp	eax, 9
	ja	.label_212
	mov	rcx, qword ptr [rsp + 0x238]
	mov	eax, 1
	mov	rdx, rcx
	shr	rdx, 0x36
	jne	.label_171
	shl	rcx, 0xa
	mov	qword ptr [rsp + 0x238], rcx
	jmp	.label_212
.label_1954:
	mov	rdi, qword ptr [rsp + 0x50]
	test	rdi, rdi
	mov	ebp, 0x6f
	mov	rbx, qword ptr [rip + optarg]
	je	.label_222
	mov	rsi, rbx
	call	strcmp
	mov	r8, qword ptr [rsp + 8]
	test	eax, eax
	mov	qword ptr [rsp + 0x50], rbx
	mov	ecx, r14d
	je	.label_49
	jmp	.label_233
.label_1955:
	mov	byte ptr [rip + stable],  1
	mov	ebp, 0x73
	jmp	.label_65
.label_1956:
	mov	rcx, qword ptr [rip + optarg]
	mov	al, byte ptr [rcx]
	test	al, al
	je	.label_236
	mov	dl, byte ptr [rcx + 1]
	test	dl, dl
	je	.label_239
	cmp	al, 0x5c
	jne	.label_202
	cmp	dl, 0x30
	jne	.label_202
	cmp	byte ptr [rcx + 2], 0
	jne	.label_202
	xor	eax, eax
.label_239:
	mov	ecx, dword ptr [rip + tab]
	cmp	ecx, 0x80
	movsx	eax, al
	je	.label_252
	cmp	ecx, eax
	jne	.label_254
.label_252:
	mov	dword ptr [rip + tab],  eax
	mov	ebp, 0x74
	jmp	.label_65
.label_1957:
	mov	byte ptr [rip + unique],  1
	mov	ebp, 0x75
	jmp	.label_65
.label_1958:
	mov	rcx, qword ptr [rip + optarg]
	movsxd	rax, dword ptr [rip + optind]
	mov	ebp, 0x79
	cmp	rcx, qword ptr [r8 + rax*8 - 8]
	jne	.label_65
	nop	word ptr [rax + rax]
.label_264:
	movsx	edx, byte ptr [rcx]
	lea	esi, [rdx - 0x30]
	inc	rcx
	cmp	esi, 0xa
	jb	.label_264
	cmp	dl, 1
	adc	eax, -1
	mov	dword ptr [rip + optind],  eax
	jmp	.label_65
.label_1960:
	mov	rsi, qword ptr [rip + optarg]
	mov	eax, 0x63
	test	rsi, rsi
	je	.label_272
	mov	r9, qword ptr [rip + argmatch_die]
	mov	edi, OFFSET FLAT:label_285
	mov	edx, OFFSET FLAT:check_args
	mov	ecx, OFFSET FLAT:check_types
	mov	r8d, 1
	call	__xargmatch_internal
	mov	r8, qword ptr [rsp + 8]
	movsx	eax, byte ptr [rax + check_types]
.label_272:
	test	r15b, r15b
	je	.label_293
	movsx	ecx, r15b
	cmp	ecx, eax
	jne	.label_242
.label_293:
	mov	ecx, r14d
	mov	r15b, al
	mov	ebp, eax
	jmp	.label_49
.label_1961:
	mov	rdi, qword ptr [rip + compress_program]
	test	rdi, rdi
	je	.label_296
	mov	rbx, qword ptr [rip + optarg]
	mov	rsi, rbx
	call	strcmp
	mov	r8, qword ptr [rsp + 8]
	test	eax, eax
	je	.label_301
	jmp	.label_305
.label_1963:
	mov	ebp, 0x83
	mov	rax, qword ptr [rip + optarg]
	mov	qword ptr [rsp + 0x30], rax
	jmp	.label_65
.label_1965:
	mov	rdi, qword ptr [rsp + 0xd8]
	test	rdi, rdi
	mov	ebp, 0x85
	mov	rbx, qword ptr [rip + optarg]
	je	.label_310
	mov	rsi, rbx
	call	strcmp
	mov	r8, qword ptr [rsp + 8]
	test	eax, eax
	mov	qword ptr [rsp + 0xd8], rbx
	mov	ecx, r14d
	je	.label_49
	jmp	.label_319
.label_1967:
	mov	ebx, dword ptr [rsp + 0xb0]
	mov	rbp, qword ptr [rip + optarg]
	lea	rcx, [rsp + 0x238]
	xor	esi, esi
	mov	edx, 0xa
	mov	r8d, OFFSET FLAT:label_78
	mov	rdi, rbp
	call	xstrtoul
	test	eax, eax
	je	.label_327
	mov	qword ptr [rsp + 0x138], -1
	cmp	eax, 1
	je	.label_328
	jmp	.label_334
.label_1964:
	mov	qword ptr [rsp + 0xe0], r15
	movsxd	rax, dword ptr [rsp + 0xb0]
	mov	qword ptr [rsp + 0x48], rax
	mov	rbp, qword ptr [rip + optarg]
	lea	rcx, [rsp + 0x100]
	xor	esi, esi
	mov	edx, 0xa
	xor	r8d, r8d
	mov	rdi, rbp
	call	xstrtoumax
	mov	ebx, eax
	lea	rsi, [rsp + 0x238]
	mov	edi, 7
	call	getrlimit
	mov	ecx, dword ptr [rsp + 0x238]
	add	ecx, -3
	test	eax, eax
	mov	r15d, 0x11
	cmove	r15d, ecx
	test	ebx, ebx
	jne	.label_344
	mov	rax, qword ptr [rsp + 0x100]
	mov	dword ptr [rip + nmerge],  eax
	mov	ecx, eax
	cmp	rcx, rax
	mov	r8, qword ptr [rsp + 8]
	jne	.label_297
	cmp	eax, 1
	jbe	.label_352
	cmp	r15d, eax
	jb	.label_297
	mov	ebp, 0x84
	mov	ecx, r14d
	mov	r15, qword ptr [rsp + 0xe0]
	jmp	.label_49
.label_88:
	mov	rax, qword ptr [rip + temp_dirs]
	jmp	.label_357
.label_125:
	mov	rdx, qword ptr [rsp + 0x68]
.label_138:
	or	rdx, rcx
	jne	.label_361
	mov	qword ptr [rsp + 0x60], -1
.label_361:
	mov	cl, byte ptr [rax]
	test	cl, cl
	je	.label_355
	inc	rax
	nop	word ptr [rax + rax]
.label_383:
	movsx	edx, cl
	add	edx, -0x4d
	cmp	edx, 0x25
	ja	.label_366
	jmp	qword ptr [(rdx * 8) + label_367]
.label_2057:
	mov	byte ptr [rsp + 0x96], 1
	jmp	.label_368
.label_2058:
	mov	byte ptr [rsp + 0x93], 1
	jmp	.label_368
.label_2059:
	mov	byte ptr [rsp + 0x98], 1
	jmp	.label_368
.label_2060:
	mov	byte ptr [rsp + 0x90], 1
	jmp	.label_368
.label_2061:
	mov	qword ptr [rsp + 128], OFFSET FLAT:nondictionary
	jmp	.label_368
.label_2062:
	mov	qword ptr [rsp + 136], OFFSET FLAT:fold_toupper
	jmp	.label_368
.label_2063:
	mov	byte ptr [rsp + 0x94], 1
	jmp	.label_368
.label_2064:
	mov	byte ptr [rsp + 0x95], 1
	jmp	.label_368
.label_2065:
	cmp	qword ptr [rsp + 0x80], 0
	jne	.label_368
	mov	qword ptr [rsp + 128], OFFSET FLAT:nonprinting
	jmp	.label_368
.label_2066:
	mov	byte ptr [rsp + 0x92], 1
	jmp	.label_368
.label_2067:
	mov	byte ptr [rsp + 0x97], 1
	nop	dword ptr [rax]
.label_368:
	movzx	ecx, byte ptr [rax]
	inc	rax
	test	cl, cl
	jne	.label_383
	jmp	.label_108
.label_205:
	mov	rcx, qword ptr [rsp + 0x190]
	movsx	edx, byte ptr [rcx - 1]
	add	edx, -0x30
	mov	eax, 2
	cmp	edx, 9
	ja	.label_171
	cmp	byte ptr [rcx + 1], 0
	mov	r8, qword ptr [rsp + 8]
	jne	.label_171
	movsx	ecx, byte ptr [rcx]
	cmp	ecx, 0x62
	je	.label_212
	cmp	ecx, 0x25
	jne	.label_171
	call	physmem_total
	mov	r8, qword ptr [rsp + 8]
	movq	xmm2, qword ptr [rsp + 0x238]
	punpckldq	xmm2, xmmword ptr [rip + label_245]
	subpd	xmm2, xmmword ptr [rip + label_246]
	pshufd	xmm1, xmm2, 0x4e
	addpd	xmm1, xmm2
	mulsd	xmm1, xmm0
	divsd	xmm1, qword ptr [rip + label_391]
	mov	eax, 1
	movsd	xmm0, qword ptr [rip + label_392]
	ucomisd	xmm0, xmm1
	jbe	.label_171
	movsd	xmm0, qword ptr [rip + label_247]
	movapd	xmm2, xmm1
	subsd	xmm2, xmm0
	cvttsd2si	rax, xmm2
	movabs	rcx, 0x8000000000000000
	xor	rcx, rax
	cvttsd2si	rax, xmm1
	ucomisd	xmm1, xmm0
	cmovae	rax, rcx
	mov	qword ptr [rsp + 0x238], rax
.label_212:
	mov	rax, qword ptr [rsp + 0x238]
	cmp	rax, qword ptr [rip + sort_size]
	jb	.label_398
	mov	ecx, dword ptr [rip + nmerge]
	imul	rcx, rcx, 0x22
	cmp	rax, rcx
	cmova	rcx, rax
	mov	qword ptr [rip + sort_size],  rcx
.label_398:
	mov	ebp, 0x53
	mov	ecx, r14d
	mov	r15, rbx
	jmp	.label_49
.label_327:
	mov	rcx, qword ptr [rsp + 0x238]
	mov	rax, rcx
	mov	qword ptr [rsp + 0x138], rax
	test	rcx, rcx
	je	.label_54
.label_328:
	mov	ebp, 0x87
	jmp	.label_62
.label_222:
	mov	qword ptr [rsp + 0x50], rbx
	jmp	.label_65
.label_296:
	mov	rbx, qword ptr [rip + optarg]
.label_301:
	mov	qword ptr [rip + compress_program],  rbx
	mov	ebp, 0x81
	jmp	.label_65
.label_59:
	xor	ebx, ebx
.label_67:
	mov	eax, ebx
	and	al, byte ptr [rsp + 0x38]
	mov	ecx, dword ptr [rsp + 0x28]
	and	cl, 1
	or	cl, al
	mov	dword ptr [rsp + 0x28], ecx
	je	.label_71
	xorpd	xmm0, xmm0
	movapd	xmmword ptr [rsp + 0x90], xmm0
	movapd	xmmword ptr [rsp + 0x80], xmm0
	movapd	xmmword ptr [rsp + 0x70], xmm0
	movapd	xmmword ptr [rsp + 0x60], xmm0
	mov	qword ptr [rsp + 0xa0], 0
	mov	qword ptr [rsp + 0x70], -1
	inc	rdi
	lea	rsi, [rsp + 0x238]
	lea	rcx, [rsp + 0x190]
	mov	edx, 0xa
	mov	r8d, OFFSET FLAT:label_78
	call	xstrtoumax
	mov	ecx, eax
	cmp	eax, 4
	ja	.label_96
	jmp	qword ptr [(rcx * 8) + label_331]
.label_1848:
	mov	rax, qword ptr [rsp + 0x190]
	mov	qword ptr [rsp + 0x60], rax
	jmp	.label_96
.label_310:
	mov	qword ptr [rsp + 0xd8], rbx
	jmp	.label_65
.label_366:
	cmp	cl, 0x2c
	jne	.label_108
	mov	edx, OFFSET FLAT:label_110
	mov	rdi, rax
	lea	rsi, [rsp + 0x70]
	call	parse_field_count
	mov	rcx, qword ptr [rsp + 0x70]
	lea	rdx, [rcx - 1]
	mov	qword ptr [rsp + 0x70], rdx
	test	rcx, rcx
	je	.label_114
	mov	cl, byte ptr [rax]
	cmp	cl, 0x2e
	jne	.label_407
	inc	rax
	mov	edx, OFFSET FLAT:label_122
	mov	rdi, rax
	lea	rsi, [rsp + 0x78]
	call	parse_field_count
	mov	cl, byte ptr [rax]
.label_407:
	test	cl, cl
	je	.label_128
	inc	rax
	nop	dword ptr [rax]
.label_158:
	movsx	ecx, cl
	add	ecx, -0x4d
	cmp	ecx, 0x25
	ja	.label_161
	jmp	qword ptr [(rcx * 8) + label_134]
.label_1985:
	mov	byte ptr [rsp + 0x96], 1
	jmp	.label_135
.label_1986:
	mov	byte ptr [rsp + 0x93], 1
	jmp	.label_135
.label_1987:
	mov	byte ptr [rsp + 0x98], 1
	jmp	.label_135
.label_1988:
	mov	byte ptr [rsp + 0x91], 1
	jmp	.label_135
.label_1989:
	mov	qword ptr [rsp + 128], OFFSET FLAT:nondictionary
	jmp	.label_135
.label_1990:
	mov	qword ptr [rsp + 136], OFFSET FLAT:fold_toupper
	jmp	.label_135
.label_1991:
	mov	byte ptr [rsp + 0x94], 1
	jmp	.label_135
.label_1992:
	mov	byte ptr [rsp + 0x95], 1
	jmp	.label_135
.label_1993:
	cmp	qword ptr [rsp + 0x80], 0
	jne	.label_135
	mov	qword ptr [rsp + 128], OFFSET FLAT:nonprinting
	jmp	.label_135
.label_1994:
	mov	byte ptr [rsp + 0x92], 1
	jmp	.label_135
.label_1995:
	mov	byte ptr [rsp + 0x97], 1
	nop	dword ptr [rax]
.label_135:
	movzx	ecx, byte ptr [rax]
	inc	rax
	test	cl, cl
	jne	.label_158
	jmp	.label_128
.label_108:
	dec	rax
.label_355:
	mov	rcx, -1
	movq	xmm0, rcx
	movapd	xmmword ptr [rsp + 0x70], xmm0
	cmp	byte ptr [rax], 0
	jne	.label_161
.label_128:
	lea	rdi, [rsp + 0x60]
	mov	esi, 0x48
	call	xmemdup
	mov	ecx, OFFSET FLAT:keylist
	nop	word ptr cs:[rax + rax]
.label_170:
	mov	rdx, rcx
	mov	rcx, qword ptr [rdx]
	test	rcx, rcx
	lea	rcx, [rcx + 0x40]
	jne	.label_170
	mov	qword ptr [rdx], rax
	mov	qword ptr [rax + 0x40], 0
	mov	ebp, 0x6b
.label_62:
	mov	ecx, r14d
	mov	r8, qword ptr [rsp + 8]
	jmp	.label_49
.label_90:
	test	rcx, rcx
	mov	esi, 0x10
	cmovne	rsi, rcx
	mov	rax, rsi
	shr	rax, 0x3c
	jne	.label_180
.label_97:
	mov	qword ptr [rip + temp_dir_alloc],  rsi
	shl	rsi, 3
	call	xrealloc
	mov	qword ptr [rip + temp_dirs],  rax
	mov	rcx, qword ptr [rip + temp_dir_count]
	mov	r8, qword ptr [rsp + 8]
.label_357:
	lea	rdx, [rcx + 1]
	mov	qword ptr [rip + temp_dir_count],  rdx
	mov	qword ptr [rax + rcx*8], rbx
	mov	ebp, 0x54
	jmp	.label_65
.label_71:
	mov	dword ptr [rsp + 0x28], 0
	jmp	.label_100
.label_1849:
	mov	qword ptr [rsp + 0x60], -1
.label_96:
	mov	rdi, qword ptr [rsp + 0x238]
	xor	ecx, ecx
	test	rdi, rdi
	mov	r8, qword ptr [rsp + 8]
	je	.label_149
	cmp	byte ptr [rdi], 0x2e
	jne	.label_207
	inc	rdi
	lea	rsi, [rsp + 0x238]
	lea	rcx, [rsp + 0x190]
	mov	edx, 0xa
	mov	r8d, OFFSET FLAT:label_78
	call	xstrtoumax
	mov	r8, qword ptr [rsp + 8]
	xor	ecx, ecx
	mov	edx, eax
	cmp	eax, 4
	ja	.label_214
	jmp	qword ptr [(rdx * 8) + label_231]
.label_1852:
	mov	rax, qword ptr [rsp + 0x190]
	mov	qword ptr [rsp + 0x68], rax
	jmp	.label_214
.label_207:
	mov	rcx, rdi
	jmp	.label_149
.label_1850:
	xor	ecx, ecx
	mov	r8, qword ptr [rsp + 8]
	jmp	.label_149
.label_1853:
	mov	qword ptr [rsp + 0x68], -1
.label_214:
	mov	rcx, qword ptr [rsp + 0x238]
.label_149:
	mov	rax, qword ptr [rsp + 0x60]
	or	rax, qword ptr [rsp + 0x68]
	jne	.label_227
	mov	qword ptr [rsp + 0x60], -1
.label_227:
	test	rcx, rcx
	je	.label_100
	mov	al, byte ptr [rcx]
	test	al, al
	je	.label_232
	inc	rcx
	nop	word ptr cs:[rax + rax]
.label_268:
	movsx	eax, al
	add	eax, -0x4d
	cmp	eax, 0x25
	ja	.label_100
	jmp	qword ptr [(rax * 8) + label_240]
.label_1867:
	mov	byte ptr [rsp + 0x96], 1
	jmp	.label_127
.label_1868:
	mov	byte ptr [rsp + 0x93], 1
	jmp	.label_127
.label_1869:
	mov	byte ptr [rsp + 0x98], 1
	jmp	.label_127
.label_1870:
	mov	byte ptr [rsp + 0x90], 1
	jmp	.label_127
.label_1871:
	mov	qword ptr [rsp + 128], OFFSET FLAT:nondictionary
	jmp	.label_127
.label_1872:
	mov	qword ptr [rsp + 136], OFFSET FLAT:fold_toupper
	jmp	.label_127
.label_1873:
	mov	byte ptr [rsp + 0x94], 1
	jmp	.label_127
.label_1874:
	mov	byte ptr [rsp + 0x95], 1
	jmp	.label_127
.label_1875:
	cmp	qword ptr [rsp + 0x80], 0
	jne	.label_127
	mov	qword ptr [rsp + 128], OFFSET FLAT:nonprinting
	jmp	.label_127
.label_1876:
	mov	byte ptr [rsp + 0x92], 1
	jmp	.label_127
.label_1877:
	mov	byte ptr [rsp + 0x97], 1
	nop	dword ptr [rax]
.label_127:
	movzx	eax, byte ptr [rcx]
	inc	rcx
	test	al, al
	jne	.label_268
.label_232:
	test	bl, bl
	je	.label_271
	movsxd	rax, dword ptr [rip + optind]
	lea	ecx, [rax + 1]
	mov	dword ptr [rip + optind],  ecx
	mov	rbp, qword ptr [r8 + rax*8]
	lea	rdi, [rbp + 1]
	mov	edx, OFFSET FLAT:label_277
	lea	rsi, [rsp + 0x70]
	call	parse_field_count
	test	rax, rax
	je	.label_290
	cmp	byte ptr [rax], 0x2e
	jne	.label_291
	inc	rax
	mov	edx, OFFSET FLAT:label_122
	mov	rdi, rax
	lea	rsi, [rsp + 0x78]
	call	parse_field_count
.label_291:
	cmp	qword ptr [rsp + 0x78], 0
	jne	.label_295
	mov	rcx, qword ptr [rsp + 0x70]
	test	rcx, rcx
	je	.label_295
	dec	rcx
	mov	qword ptr [rsp + 0x70], rcx
.label_295:
	mov	cl, byte ptr [rax]
	test	cl, cl
	je	.label_271
	inc	rax
	nop	word ptr [rax + rax]
.label_105:
	movsx	ecx, cl
	add	ecx, -0x4d
	cmp	ecx, 0x25
	ja	.label_320
	jmp	qword ptr [(rcx * 8) + label_307]
.label_1901:
	mov	byte ptr [rsp + 0x96], 1
	jmp	.label_309
.label_1902:
	mov	byte ptr [rsp + 0x93], 1
	jmp	.label_309
.label_1903:
	mov	byte ptr [rsp + 0x98], 1
	jmp	.label_309
.label_1904:
	mov	byte ptr [rsp + 0x91], 1
	jmp	.label_309
.label_1905:
	mov	qword ptr [rsp + 128], OFFSET FLAT:nondictionary
	jmp	.label_309
.label_1906:
	mov	qword ptr [rsp + 136], OFFSET FLAT:fold_toupper
	jmp	.label_309
.label_1907:
	mov	byte ptr [rsp + 0x94], 1
	jmp	.label_309
.label_1908:
	mov	byte ptr [rsp + 0x95], 1
	jmp	.label_309
.label_1909:
	cmp	qword ptr [rsp + 0x80], 0
	jne	.label_309
	mov	qword ptr [rsp + 128], OFFSET FLAT:nonprinting
	jmp	.label_309
.label_1910:
	mov	byte ptr [rsp + 0x92], 1
	jmp	.label_309
.label_1911:
	mov	byte ptr [rsp + 0x97], 1
	nop	dword ptr [rax]
.label_309:
	movzx	ecx, byte ptr [rax]
	inc	rax
	test	cl, cl
	jne	.label_105
.label_271:
	mov	byte ptr [rsp + 0x99], 1
	lea	rdi, [rsp + 0x60]
	mov	esi, 0x48
	call	xmemdup
	mov	ecx, OFFSET FLAT:keylist
	nop	word ptr [rax + rax]
.label_340:
	mov	rdx, rcx
	mov	rcx, qword ptr [rdx]
	test	rcx, rcx
	lea	rcx, [rcx + 0x40]
	jne	.label_340
	mov	qword ptr [rdx], rax
	mov	qword ptr [rax + 0x40], 0
	mov	ebp, 1
	jmp	.label_62
.label_100:
	mov	rax, qword ptr [rip + optarg]
	mov	rcx, qword ptr [rsp + 0x20]
	mov	qword ptr [rcx + r13*8], rax
	inc	r13
	mov	ebp, 1
	nop	dword ptr [rax]
.label_65:
	mov	ecx, r14d
	jmp	.label_49
.label_74:
	mov	rbp, qword ptr [rsp + 0x30]
	test	rbp, rbp
	mov	qword ptr [rsp + 0x228], r14
	je	.label_347
	test	r13, r13
	jne	.label_350
	mov	esi, OFFSET FLAT:label_289
	mov	rdi, rbp
	call	stream_open
	mov	rbx, rax
	test	rbx, rbx
	mov	r14, qword ptr [rsp + 0x20]
	mov	r13, qword ptr [rsp + 0x50]
	je	.label_354
	lea	r12, [rsp + 0x238]
	mov	rdi, r12
	call	readtokens0_init
	mov	rdi, rbx
	mov	rsi, r12
	call	readtokens0
	test	al, al
	je	.label_362
	mov	rdi, rbx
	mov	rsi, rbp
	call	xfclose
	cmp	qword ptr [rsp + 0x238], 0
	je	.label_364
	mov	rdi, r14
	call	free
	mov	r12, qword ptr [rsp + 0x238]
	mov	r14, qword ptr [rsp + 0x240]
	xor	ebp, ebp
	nop	word ptr cs:[rax + rax]
.label_375:
	cmp	rbp, r12
	jae	.label_372
	mov	rcx, qword ptr [r14 + rbp*8]
	movzx	eax, byte ptr [rcx]
	cmp	al, 0x2d
	jne	.label_373
	cmp	byte ptr [rcx + 1], 0
	je	.label_374
.label_373:
	inc	rbp
	test	al, al
	jne	.label_375
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_377
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	xor	edi, edi
	mov	esi, 3
	mov	rdx, qword ptr [rsp + 0x30]
	call	quotearg_n_style_colon
	mov	rcx, rax
	mov	edi, 2
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rbx
	mov	r8, rbp
	call	error
.label_347:
	mov	r14, qword ptr [rsp + 0x20]
	mov	r12, r13
	mov	r13, qword ptr [rsp + 0x50]
.label_372:
	movabs	r8, 0xff000000000000
	movabs	rcx, 0xffffffffffffff
	mov	rax, qword ptr [rip + keylist]
	test	rax, rax
	mov	qword ptr [rsp + 0x20], r14
	je	.label_382
	xor	r10d, r10d
	lea	r9, [rcx + 1]
	mov	rsi, rax
	nop	dword ptr [rax]
.label_53:
	cmp	qword ptr [rsi + 0x20], 0
	jne	.label_230
	cmp	qword ptr [rsi + 0x28], 0
	jne	.label_230
	mov	rdi, qword ptr [rsi + 0x30]
	test	di, 0xffff
	jne	.label_230
	mov	ebp, edi
	shr	ebp, 0x10
	test	bpl, bpl
	jne	.label_230
	test	rdi, r8
	jne	.label_230
	mov	rbp, rdi
	shr	rbp, 0x20
	test	bpl, bpl
	jne	.label_230
	movzx	ebp, bp
	cmp	ebp, 0xff
	ja	.label_230
	cmp	edi, 0xffffff
	ja	.label_230
	movzx	ebx, byte ptr [rsi + 0x38]
	test	bl, bl
	jne	.label_230
	cmp	rdi, r9
	jae	.label_230
	movupd	xmm0, xmmword ptr [rsp + 0x168]
	movupd	xmmword ptr [rsi + 0x20], xmm0
	movzx	ecx, byte ptr [rsp + 0x17b]
	mov	rbx, qword ptr [rsp + 0x178]
	mov	byte ptr [rsi + 0x30], bl
	mov	byte ptr [rsi + 0x31], bh
	mov	rdi, rbx
	shr	rdi, 0x30
	mov	byte ptr [rsi + 0x36], dil
	mov	edi, ebx
	shr	edi, 0x10
	mov	byte ptr [rsi + 0x32], dil
	mov	rdi, rbx
	shr	rdi, 0x20
	mov	byte ptr [rsi + 0x34], dil
	mov	rdi, rbx
	shr	rdi, 0x28
	mov	byte ptr [rsi + 0x35], dil
	movzx	edx, byte ptr [rsp + 0x180]
	mov	byte ptr [rsi + 0x38], dl
	mov	byte ptr [rsi + 0x33], cl
	shr	rbx, 0x38
	mov	byte ptr [rsi + 0x37], bl
	nop	word ptr cs:[rax + rax]
.label_230:
	or	r10b, byte ptr [rsi + 0x33]
	mov	rsi, qword ptr [rsi + 0x40]
	test	rsi, rsi
	jne	.label_53
	test	rax, rax
	je	.label_57
	mov	dword ptr [rsp + 0x5c], 0
	jmp	.label_58
.label_382:
	xor	r10d, r10d
.label_57:
	mov	rax, qword ptr [rsp + 0x168]
	or	rax, qword ptr [rsp + 0x170]
	jne	.label_63
	mov	rax, qword ptr [rsp + 0x178]
	test	ax, 0xffff
	jne	.label_63
	mov	ecx, eax
	shr	ecx, 0x10
	test	cl, cl
	jne	.label_63
	test	rax, r8
	jne	.label_63
	shr	rax, 0x20
	test	al, al
	jne	.label_63
	movzx	eax, ax
	cmp	eax, 0xff
	ja	.label_63
	cmp	dword ptr [rsp + 0x178], 0xffffff
	ja	.label_63
	mov	al, byte ptr [rsp + 0x180]
	test	al, al
	jne	.label_63
	mov	dword ptr [rsp + 0x5c], 0
	jmp	.label_85
.label_63:
	mov	ebx, r10d
	lea	rdi, [rsp + 0x148]
	mov	esi, 0x48
	call	xmemdup
	mov	ecx, OFFSET FLAT:keylist
	nop	word ptr cs:[rax + rax]
.label_92:
	mov	rdx, rcx
	mov	rcx, qword ptr [rdx]
	test	rcx, rcx
	lea	rcx, [rcx + 0x40]
	jne	.label_92
	mov	qword ptr [rdx], rax
	mov	qword ptr [rax + 0x40], 0
	mov	r10d, ebx
	or	r10b, byte ptr [rsp + 0x17b]
	mov	rax, qword ptr [rip + keylist]
	mov	cl, 1
	mov	dword ptr [rsp + 0x5c], ecx
	jmp	.label_95
.label_374:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_106
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	rsi, qword ptr [r14 + rbp*8]
	mov	edi, 4
.label_169:
	call	quotearg_style
.label_190:
	mov	rcx, rax
	mov	edi, 2
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rbx
	call	error
.label_1947:
	mov	rdi, qword ptr [rip + stdout]
	mov	rcx, qword ptr [rip + Version]
	mov	qword ptr [rsp], 0
	mov	esi, OFFSET FLAT:label_28
	mov	edx, OFFSET FLAT:label_30
	mov	r8d, OFFSET FLAT:label_117
	mov	r9d, OFFSET FLAT:label_118
	xor	eax, eax
	call	version_etc
	xor	edi, edi
	call	exit
.label_1948:
	xor	edi, edi
	call	usage
.label_409:
	mov	edi, 2
	call	usage
.label_161:
	mov	rdi, qword ptr [rip + optarg]
	mov	esi, OFFSET FLAT:label_136
	call	badfieldspec
.label_242:
	mov	edi, OFFSET FLAT:label_139
	call	incompatible_options
.label_171:
	mov	edx, 0x53
	mov	ecx, OFFSET FLAT:long_options
	mov	edi, eax
	mov	esi, ebp
	mov	r8, r15
	call	xstrtol_fatal
.label_79:
	call	xalloc_die
.label_350:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_148
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	rax, qword ptr [rsp + 0x20]
	mov	rsi, qword ptr [rax]
	mov	edi, 4
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rbx
	call	error
	mov	rbx, qword ptr [rip + stderr]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_153
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	esi, 1
	mov	edx, OFFSET FLAT:label_156
	xor	eax, eax
	mov	rdi, rbx
	call	__fprintf_chk
	mov	edi, 2
	call	usage
.label_354:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_162
	mov	edx, 5
	call	dcgettext
	mov	rdi, rax
	mov	rsi, rbp
	call	sort_die
.label_362:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_168
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	edi, 4
	mov	rsi, rbp
	jmp	.label_169
.label_364:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_173
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	edi, 4
	mov	rsi, qword ptr [rsp + 0x30]
	jmp	.label_169
.label_320:
	mov	esi, OFFSET FLAT:label_136
	mov	rdi, rbp
	call	badfieldspec
.label_202:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_183
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	rdi, qword ptr [rip + optarg]
	call	quote
	jmp	.label_190
.label_114:
	mov	rdi, qword ptr [rip + optarg]
	mov	esi, OFFSET FLAT:label_302
	call	badfieldspec
.label_236:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_193
	jmp	.label_194
.label_254:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_197
	jmp	.label_194
.label_334:
	mov	edx, 0xffffff87
	mov	ecx, OFFSET FLAT:long_options
	mov	edi, eax
	mov	esi, ebx
	mov	r8, rbp
	call	xstrtol_fatal
.label_344:
	cmp	ebx, 1
	jne	.label_204
.label_297:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_206
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	rax, qword ptr [rsp + 0x48]
	shl	rax, 5
	mov	r14, qword ptr [rax + long_options]
	mov	rdi, rbp
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
	mov	esi, OFFSET FLAT:label_315
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	lea	rsi, [rsp + 0x190]
	mov	edi, r15d
	call	uinttostr
	jmp	.label_225
.label_352:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_226
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	rax, qword ptr [rsp + 0x48]
	shl	rax, 5
	mov	r14, qword ptr [rax + long_options]
	mov	rdi, rbp
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
	mov	esi, OFFSET FLAT:label_237
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	edi, OFFSET FLAT:label_381
	call	quote
.label_225:
	mov	rbp, rax
	mov	edi, 2
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rbx
	mov	rcx, r14
	mov	r8, rbp
	call	error
.label_233:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_253
	jmp	.label_194
.label_305:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_403
	jmp	.label_194
.label_319:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_256
	jmp	.label_194
.label_132:
	mov	rdi, qword ptr [rip + optarg]
	mov	esi, OFFSET FLAT:label_257
	call	badfieldspec
.label_54:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_259
.label_194:
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 2
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	call	error
.label_204:
	mov	edx, 0xffffff84
	mov	ecx, OFFSET FLAT:long_options
	mov	edi, ebx
	mov	rsi, qword ptr [rsp + 0x48]
	mov	r8, rbp
	call	xstrtol_fatal
.label_93:
	call	xalloc_die
.label_180:
	call	xalloc_die
.label_290:
	mov	edi, OFFSET FLAT:label_273
	mov	esi, OFFSET FLAT:label_274
	mov	edx, 0x1112
	mov	ecx, OFFSET FLAT:label_275
	call	__assert_fail
.label_58:
	movzx	edx, word ptr [rax + 0x32]
	movzx	esi, dl
	mov	ecx, dword ptr [rax + 0x34]
	movzx	edi, cl
	add	edi, esi
	movzx	esi, ch
	add	esi, edi
	shr	ecx, 0x10
	movzx	ecx, cl
	add	ecx, esi
	shr	edx, 8
	or	dl, byte ptr [rax + 0x38]
	mov	rsi, qword ptr [rax + 0x20]
	test	rsi, rsi
	setne	bl
	or	bl, dl
	movzx	edx, bl
	add	edx, ecx
	cmp	edx, 2
	jae	.label_287
	mov	rax, qword ptr [rax + 0x40]
.label_95:
	test	rax, rax
	jne	.label_58
.label_85:
	mov	dword ptr [rsp + 0x144], r10d
	cmp	byte ptr [rip + debug],  1
	mov	qword ptr [rsp + 0x50], r13
	mov	qword ptr [rsp + 0xe0], r15
	jne	.label_189
	test	r13, r13
	jne	.label_303
	test	r15b, r15b
	jne	.label_303
	cmp	qword ptr [rsp + 0xd0], 0
	mov	al, byte ptr [rsp + 0x40]
	je	.label_308
	mov	edi, 3
	mov	esi, OFFSET FLAT:label_78
	call	setlocale
	test	rax, rax
	setne	al
.label_308:
	test	al, al
	jne	.label_313
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_314
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	mov	edx, OFFSET FLAT:label_316
	xor	eax, eax
	call	error
.label_313:
	cmp	byte ptr [rip + hard_LC_COLLATE],  0
	je	.label_318
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_89
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
	jmp	.label_83
.label_318:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_329
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	mov	edx, OFFSET FLAT:label_316
	xor	eax, eax
.label_83:
	call	error
	mov	r10, qword ptr [rsp + 0x168]
	mov	r8, qword ptr [rsp + 0x170]
	mov	rcx, qword ptr [rsp + 0x178]
	mov	edi, ecx
	shr	edi, 8
	mov	r9d, ecx
	shr	r9d, 0x10
	mov	eax, ecx
	shr	eax, 0x18
	mov	dword ptr [rsp + 8], eax
	mov	rbp, rcx
	shr	rbp, 0x20
	mov	rbx, rcx
	shr	rbx, 0x28
	mov	rsi, rcx
	shr	rsi, 0x30
	mov	rax, rcx
	mov	qword ptr [rsp + 0x18], rax
	mov	rdx, rcx
	shr	rdx, 0x38
	mov	al, byte ptr [rsp + 0x180]
	mov	byte ptr [rsp + 0x17], al
	mov	r15, qword ptr [rip + keylist]
	test	r15, r15
	je	.label_337
	mov	qword ptr [rsp + 0xf0], r10
	mov	dword ptr [rsp + 0xf8], edi
	mov	qword ptr [rsp + 0x48], r8
	mov	qword ptr [rsp + 0xd0], rsi
	mov	dword ptr [rsp + 0x40], r9d
	mov	qword ptr [rsp + 0x30], rbp
	mov	qword ptr [rsp + 0x28], rdx
	mov	eax, 1
	mov	qword ptr [rsp + 0xe8], rax
	lea	r10, [rsp + 0xb0]
	mov	qword ptr [rsp + 0x38], r12
	nop	word ptr cs:[rax + rax]
.label_133:
	cmp	byte ptr [r15 + 0x39], 0
	je	.label_363
	mov	qword ptr [rsp + 0x230], rbx
	mov	rbp, qword ptr [r15]
	mov	r14, qword ptr [r15 + 0x10]
	xor	ebx, ebx
	cmp	rbp, -1
	sete	bl
	lea	rdi, [rbx + rbp]
	mov	word ptr [rsp + 0x100], 0x2b
	mov	rsi, r10
	mov	r13, r10
	call	umaxtostr
	mov	edx, 0x2d
	lea	rdi, [rsp + 0x101]
	mov	rsi, rax
	call	__stpcpy_chk
	mov	r12, rax
	mov	dword ptr [rsp + 0x190], 0x206b2d
	lea	rdi, [rbx + rbp + 1]
	mov	rsi, r13
	call	umaxtostr
	mov	edx, 0x2c
	lea	rdi, [rsp + 0x193]
	mov	rsi, rax
	call	__stpcpy_chk
	mov	rbp, rax
	cmp	qword ptr [r15 + 0x10], -1
	je	.label_121
	mov	r13, r14
	mov	r14, r12
	add	r14, 2
	mov	byte ptr [r12 + 2], 0
	mov	word ptr [r12], 0x2d20
	lea	rdi, [r13 + 1]
	lea	rsi, [rsp + 0xb0]
	call	umaxtostr
	mov	rdi, r14
	mov	rsi, rax
	call	stpcpy
	mov	rbx, rbp
	inc	rbx
	mov	word ptr [rbp], 0x2c
	xor	eax, eax
	cmp	qword ptr [r15 + 0x18], -1
	sete	al
	lea	rdi, [rax + r13 + 1]
	lea	r13, [rsp + 0xb0]
	mov	rsi, r13
	call	umaxtostr
	mov	rdi, rbx
	mov	rsi, rax
	call	stpcpy
.label_121:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_389
	mov	edx, 5
	call	dcgettext
	mov	r14, rax
	xor	edi, edi
	lea	rsi, [rsp + 0x100]
	call	quote_n
	mov	rbp, rax
	mov	edi, 1
	lea	rsi, [rsp + 0x190]
	call	quote_n
	mov	rbx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, r14
	mov	rcx, rbp
	mov	r8, rbx
	call	error
	mov	rax, qword ptr [rsp + 0x50]
	mov	r12, qword ptr [rsp + 0x38]
	mov	rbx, qword ptr [rsp + 0x230]
	mov	r10, r13
	mov	r13, rax
.label_363:
	mov	rax, qword ptr [r15]
	cmp	rax, -1
	je	.label_402
	cmp	qword ptr [r15 + 0x10], rax
	jae	.label_402
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_404
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	mov	rcx, qword ptr [rsp + 0xe8]
	call	error
	lea	r10, [rsp + 0xb0]
	mov	cl, 1
	jmp	.label_408
.label_402:
	xor	ecx, ecx
.label_408:
	mov	al, 1
	cmp	byte ptr [r15 + 0x32], 0
	jne	.label_44
	mov	edx, dword ptr [r15 + 0x34]
	movzx	esi, dx
	cmp	esi, 0xff
	ja	.label_44
	test	dl, dl
	jne	.label_44
	test	edx, 0xff0000
	setne	al
	nop	word ptr [rax + rax]
.label_44:
	cmp	qword ptr [r15 + 0x10], 0
	je	.label_112
	xor	edx, edx
	jmp	.label_123
	nop	dword ptr [rax + rax]
.label_112:
	cmp	qword ptr [r15 + 0x18], 0
	setne	dl
.label_123:
	test	cl, cl
	jne	.label_64
	cmp	dword ptr [rip + tab],  0x80
	setne	cl
	mov	esi, dword ptr [rsp + 0x5c]
	or	cl, sil
	or	dl, cl
	jne	.label_64
	movzx	ecx, word ptr [r15 + 0x30]
	test	cl, cl
	setne	dl
	or	al, dl
	cmp	al, 1
	jne	.label_70
	test	cl, cl
	jne	.label_75
	cmp	qword ptr [r15 + 8], 0
	jne	.label_70
.label_75:
	movzx	eax, cx
	cmp	eax, 0xff
	ja	.label_64
	cmp	qword ptr [r15 + 0x18], 0
	je	.label_64
.label_70:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_228
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	mov	rcx, qword ptr [rsp + 0xe8]
	call	error
	lea	r10, [rsp + 0xb0]
	nop	word ptr cs:[rax + rax]
.label_64:
	mov	eax, dword ptr [rsp + 0x5c]
	test	al, al
	jne	.label_101
	cmp	byte ptr [r15 + 0x32], 0
	jne	.label_94
	movzx	eax, word ptr [r15 + 0x34]
	cmp	eax, 0xff
	ja	.label_94
	test	al, al
	je	.label_101
	nop	
.label_94:
	mov	rax, qword ptr [r15]
	lea	rcx, [rax + 1]
	add	rax, 2
	test	rcx, rcx
	cmovne	rax, rcx
	cmp	qword ptr [r15 + 0x10], rax
	jb	.label_101
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_107
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	mov	rcx, qword ptr [rsp + 0xe8]
	call	error
	lea	r10, [rsp + 0xb0]
.label_101:
	mov	rax, qword ptr [rsp + 0xf0]
	test	rax, rax
	mov	r8d, 0
	je	.label_116
	cmp	rax, qword ptr [r15 + 0x20]
	mov	r8d, 0
	cmovne	r8, rax
.label_116:
	mov	rax, qword ptr [rsp + 0x48]
	test	rax, rax
	mov	r11d, 0
	je	.label_216
	cmp	rax, qword ptr [r15 + 0x28]
	mov	r11d, 0
	cmovne	r11, rax
.label_216:
	movzx	r9d, byte ptr [r15 + 0x33]
	mov	r14, qword ptr [r15 + 0x30]
	mov	eax, r14d
	xor	al, 1
	mov	rcx, qword ptr [rsp + 0x18]
	and	cl, al
	mov	qword ptr [rsp + 0x18], rcx
	mov	eax, r14d
	shr	eax, 8
	xor	al, 1
	mov	ecx, dword ptr [rsp + 0xf8]
	and	al, cl
	mov	rdx, r14
	shr	rdx, 0x30
	xor	dl, 1
	mov	rcx, qword ptr [rsp + 0xd0]
	and	dl, cl
	mov	ecx, r14d
	shr	ecx, 0x10
	xor	cl, 1
	mov	esi, dword ptr [rsp + 0x40]
	and	cl, sil
	mov	rbp, r14
	shr	rbp, 0x20
	xor	bpl, 1
	mov	rsi, qword ptr [rsp + 0x30]
	and	bpl, sil
	mov	rdi, r14
	shr	rdi, 0x28
	xor	dil, 1
	and	dil, bl
	xor	r9b, 1
	mov	esi, dword ptr [rsp + 8]
	and	sil, r9b
	mov	dword ptr [rsp + 8], esi
	movzx	ebx, byte ptr [r15 + 0x38]
	xor	bl, 1
	and	byte ptr [rsp + 0x17], bl
	shr	r14, 0x38
	xor	r14b, 1
	mov	rsi, qword ptr [rsp + 0x28]
	and	r14b, sil
	inc	qword ptr [rsp + 0xe8]
	mov	r15, qword ptr [r15 + 0x40]
	test	r15, r15
	mov	qword ptr [rsp + 0xf0], r8
	mov	qword ptr [rsp + 0x48], r11
	mov	sil, dl
	mov	qword ptr [rsp + 0xd0], rsi
	mov	sil, r14b
	mov	qword ptr [rsp + 0x28], rsi
	mov	sil, bpl
	mov	qword ptr [rsp + 0x30], rsi
	mov	bl, dil
	mov	sil, cl
	mov	dword ptr [rsp + 0x40], esi
	mov	sil, al
	mov	dword ptr [rsp + 0xf8], esi
	jne	.label_133
	jmp	.label_172
.label_337:
	mov	al, dil
	mov	cl, r9b
	mov	dil, bl
	mov	r14b, dl
	mov	dl, sil
	mov	r11, r8
	mov	r8, r10
.label_172:
	mov	rsi, r11
	or	rsi, r8
	mov	r15, qword ptr [rsp + 0xe0]
	jne	.label_176
	movzx	esi, al
	shl	esi, 8
	mov	rbx, qword ptr [rsp + 0x18]
	movzx	ebx, bl
	or	ebx, esi
	jne	.label_176
	test	cl, cl
	jne	.label_176
	mov	ebx, edi
	mov	esi, dword ptr [rsp + 8]
	or	bl, sil
	or	bl, bpl
	or	bl, dl
	or	bl, byte ptr [rsp + 0x17]
	jne	.label_176
	test	r14b, r14b
	je	.label_189
	mov	bl, byte ptr [rip + stable]
	test	bl, bl
	je	.label_76
	cmp	qword ptr [rip + keylist],  0
	jne	.label_176
	jmp	.label_189
.label_76:
	mov	r9b, byte ptr [rip + unique]
	mov	r10, qword ptr [rip + keylist]
	cmp	r9b, 1
	jne	.label_195
	test	r10, r10
	je	.label_195
.label_176:
	mov	r9b, byte ptr [rip + stable]
	mov	r10b, byte ptr [rip + unique]
	mov	rsi, qword ptr [rsp + 0x18]
	or	sil, al
	je	.label_201
	lea	rax, [rsp + 0x191]
	mov	byte ptr [rsp + 0x190], 0x62
	jmp	.label_209
.label_201:
	lea	rax, [rsp + 0x190]
.label_209:
	mov	esi, OFFSET FLAT:nondictionary
	cmp	r8, rsi
	jne	.label_213
	mov	byte ptr [rax], 0x64
	inc	rax
.label_213:
	test	r11, r11
	je	.label_217
	mov	byte ptr [rax], 0x66
	inc	rax
.label_217:
	test	bpl, bpl
	je	.label_219
	mov	byte ptr [rax], 0x67
	inc	rax
.label_219:
	test	dil, dil
	je	.label_220
	mov	byte ptr [rax], 0x68
	inc	rax
.label_220:
	mov	esi, OFFSET FLAT:nonprinting
	cmp	r8, rsi
	jne	.label_390
	mov	byte ptr [rax], 0x69
	inc	rax
.label_390:
	test	dl, dl
	je	.label_224
	mov	byte ptr [rax], 0x4d
	inc	rax
.label_224:
	test	cl, cl
	je	.label_175
	mov	byte ptr [rax], 0x6e
	inc	rax
.label_175:
	mov	ecx, dword ptr [rsp + 8]
	test	cl, cl
	je	.label_229
	mov	byte ptr [rax], 0x52
	inc	rax
.label_229:
	test	r14b, r14b
	je	.label_322
	or	r9b, r10b
	xor	r9b, 1
	test	r9b, 1
	jne	.label_322
	mov	byte ptr [rax], 0x72
	inc	rax
.label_322:
	cmp	byte ptr [rsp + 0x17], 0
	je	.label_235
	mov	byte ptr [rax], 0x56
	inc	rax
.label_235:
	mov	byte ptr [rax], 0
	lea	rbp, [rsp + 0x190]
	mov	rdi, rbp
	call	strlen
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_249
	mov	edx, OFFSET FLAT:label_250
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
	test	r14b, r14b
	je	.label_189
	mov	al, byte ptr [rip + stable]
	test	al, al
	jne	.label_189
	mov	r9b, byte ptr [rip + unique]
	mov	r10, qword ptr [rip + keylist]
.label_195:
	test	r10, r10
	je	.label_189
	xor	r9b, 1
	test	r9b, 1
	je	.label_189
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_260
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	call	error
.label_189:
	mov	al, byte ptr [rsp + 0x17f]
	mov	byte ptr [rip + reverse],  al
	mov	eax, dword ptr [rsp + 0x144]
	test	al, 1
	mov	r14, qword ptr [rsp + 0x20]
	je	.label_266
	mov	esi, 0x10
	mov	rdi, qword ptr [rsp + 0xd8]
	call	randread_new
	mov	rbx, rax
	test	rbx, rbx
	je	.label_286
	lea	rsi, [rsp + 0x190]
	mov	edx, 0x10
	mov	rdi, rbx
	call	randread
	mov	rdi, rbx
	call	randread_free
	test	eax, eax
	jne	.label_292
	mov	edi, OFFSET FLAT:random_md5_state
	call	md5_init_ctx
	lea	rdi, [rsp + 0x190]
	mov	esi, 0x10
	mov	edx, OFFSET FLAT:random_md5_state
	call	md5_process_bytes
.label_266:
	cmp	qword ptr [rip + temp_dir_count],  0
	jne	.label_298
	mov	edi, OFFSET FLAT:label_299
	call	getenv
	test	rax, rax
	mov	ebx, OFFSET FLAT:label_10
	cmovne	rbx, rax
	cmp	qword ptr [rip + temp_dir_alloc],  0
	je	.label_300
	mov	rax, qword ptr [rip + temp_dirs]
	xor	ecx, ecx
	jmp	.label_306
.label_300:
	mov	rdi, qword ptr [rip + temp_dirs]
	test	rdi, rdi
	mov	eax, 0x10
	mov	esi, 1
	cmove	rsi, rax
	mov	qword ptr [rip + temp_dir_alloc],  rsi
	shl	rsi, 3
	call	xrealloc
	mov	qword ptr [rip + temp_dirs],  rax
	mov	rcx, qword ptr [rip + temp_dir_count]
.label_306:
	lea	rdx, [rcx + 1]
	mov	qword ptr [rip + temp_dir_count],  rdx
	mov	qword ptr [rax + rcx*8], rbx
.label_298:
	test	r12, r12
	jne	.label_396
	mov	rdi, r14
	call	free
	mov	edi, 8
	call	xmalloc
	mov	r14, rax
	mov	qword ptr [r14], OFFSET FLAT:label_258
	mov	r12d, 1
.label_396:
	mov	rax, qword ptr [rip + sort_size]
	test	rax, rax
	je	.label_325
	mov	ecx, dword ptr [rip + nmerge]
	imul	rcx, rcx, 0x22
	cmp	rax, rcx
	cmova	rcx, rax
	mov	qword ptr [rip + sort_size],  rcx
.label_325:
	test	r15b, r15b
	je	.label_333
	cmp	r12, 2
	jae	.label_335
	test	r13, r13
	jne	.label_336
	mov	r14, qword ptr [r14]
	mov	esi, OFFSET FLAT:label_289
	mov	rdi, r14
	call	stream_open
	mov	r13, rax
	test	r13, r13
	je	.label_341
	mov	rax, qword ptr [rip + keylist]
	mov	qword ptr [rsp + 0x30], rax
	movzx	r12d, byte ptr [rip + unique]
	xor	r12d, 1
	mov	rcx, qword ptr [rip + merge_buffer_size]
	mov	rax, qword ptr [rip + sort_size]
	cmp	rcx, rax
	cmova	rax, rcx
	nop	dword ptr [rax]
.label_351:
	mov	ecx, eax
	and	ecx, 0x1f
	mov	ebx, 0x20
	sub	rbx, rcx
	add	rbx, rax
	mov	rdi, rbx
	call	malloc
	mov	qword ptr [rsp + 0x190], rax
	test	rax, rax
	jne	.label_348
	mov	rax, rbx
	shr	rax, 1
	cmp	rbx, 0x43
	ja	.label_351
	call	xalloc_die
.label_348:
	mov	qword ptr [rsp + 0x1a8], rbx
	mov	eax, 0x20
	movq	xmm0, rax
	pslldq	xmm0, 8
	movdqu	xmmword ptr [rsp + 0x1b0], xmm0
	mov	byte ptr [rsp + 0x1c0], 0
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [rsp + 0x198], xmm0
	mov	qword ptr [rsp + 0x100], 0
	lea	rdi, [rsp + 0x190]
	mov	rsi, r13
	mov	rdx, r14
	call	fillbuf
	xor	ebx, ebx
	test	al, al
	mov	r15d, 0
	je	.label_51
	xor	ebx, ebx
	xor	ebp, ebp
	xor	eax, eax
	mov	qword ptr [rsp + 0x40], rax
	mov	qword ptr [rsp + 0x20], r14
	mov	qword ptr [rsp + 0x38], r13
.label_45:
	mov	qword ptr [rsp + 8], rbx
	mov	rbx, qword ptr [rsp + 0x190]
	mov	rax, qword ptr [rsp + 0x1a0]
	mov	qword ptr [rsp + 0x18], rax
	mov	r15, qword ptr [rsp + 0x1a8]
	lea	rax, [rbx + r15]
	test	rbp, rbp
	mov	qword ptr [rsp + 0x28], rax
	je	.label_371
	lea	rsi, [rax - 0x20]
	lea	rdi, [rsp + 0x100]
	call	compare
	cmp	r12d, eax
	mov	rax, qword ptr [rsp + 0x28]
	mov	r13, rax
	jle	.label_379
.label_371:
	mov	r14, rax
	mov	rax, qword ptr [rsp + 0x18]
	shl	rax, 5
	sub	r14, rax
	lea	rbx, [rbx + r15 - 0x20]
	nop	word ptr cs:[rax + rax]
.label_385:
	cmp	r14, rbx
	jae	.label_370
	lea	r13, [rbx - 0x20]
	mov	rdi, rbx
	mov	rsi, r13
	call	compare
	cmp	r12d, eax
	mov	rbx, r13
	jg	.label_385
	jmp	.label_387
	nop	word ptr cs:[rax + rax]
.label_370:
	mov	rdx, qword ptr [rbx + 8]
	cmp	rbp, rdx
	jae	.label_323
	mov	r14, qword ptr [rsp + 0x20]
	mov	r13, qword ptr [rsp + 0x38]
	nop	word ptr cs:[rax + rax]
.label_401:
	add	rbp, rbp
	je	.label_265
	cmp	rbp, rdx
	jb	.label_401
	jmp	.label_393
.label_323:
	mov	r14, qword ptr [rsp + 0x20]
	mov	r13, qword ptr [rsp + 0x38]
	mov	r15, qword ptr [rsp + 8]
	jmp	.label_394
.label_265:
	mov	rbp, rdx
.label_393:
	mov	rdi, qword ptr [rsp + 8]
	call	free
	mov	rdi, rbp
	call	xmalloc
	mov	r15, rax
	mov	qword ptr [rsp + 0x100], r15
	mov	rdx, qword ptr [rbx + 8]
.label_394:
	mov	rsi, qword ptr [rbx]
	mov	rdi, r15
	call	memcpy
	mov	rax, qword ptr [rbx + 8]
	mov	qword ptr [rsp + 0x108], rax
	cmp	qword ptr [rsp + 0x30], 0
	je	.label_349
	mov	rax, qword ptr [rbx]
	mov	rcx, qword ptr [rbx + 0x10]
	sub	rcx, rax
	add	rcx, r15
	mov	qword ptr [rsp + 0x110], rcx
	mov	rcx, qword ptr [rbx + 0x18]
	sub	rcx, rax
	add	rcx, r15
	mov	qword ptr [rsp + 0x118], rcx
.label_349:
	mov	rax, qword ptr [rsp + 0x18]
	add	qword ptr [rsp + 0x40], rax
	lea	rdi, [rsp + 0x190]
	mov	rsi, r13
	mov	rdx, r14
	call	fillbuf
	mov	rcx, r15
	xor	r15d, r15d
	test	al, al
	mov	rbx, rcx
	jne	.label_45
	jmp	.label_51
.label_333:
	test	r12, r12
	je	.label_52
	xor	ebx, ebx
	nop	word ptr cs:[rax + rax]
.label_66:
	mov	rdi, qword ptr [r14 + rbx*8]
	cmp	byte ptr [rdi], 0x2d
	jne	.label_56
	cmp	byte ptr [rdi + 1], 0
	je	.label_60
.label_56:
	mov	esi, 4
	call	euidaccess
	test	eax, eax
	jne	.label_144
.label_60:
	inc	rbx
	cmp	rbx, r12
	jb	.label_66
.label_52:
	test	r13, r13
	je	.label_68
	mov	esi, 0x80041
	mov	edx, 0x1b6
	xor	eax, eax
	mov	rdi, r13
	call	open
	mov	ebx, eax
	test	ebx, ebx
	js	.label_73
	cmp	ebx, 1
	je	.label_68
	mov	esi, 1
	mov	edi, ebx
	call	dup2
	mov	edi, ebx
	call	close
.label_68:
	mov	rax, qword ptr [rsp + 0x228]
	test	al, 1
	jne	.label_82
	mov	rcx, qword ptr [rsp + 0x138]
	test	rcx, rcx
	jne	.label_86
	mov	edi, 2
	call	num_processors
	cmp	rax, 8
	mov	ecx, 8
	cmovb	rcx, rax
.label_86:
	movabs	rax, 0xffffffffffffff
	cmp	rcx, rax
	cmovb	rax, rcx
	mov	qword ptr [rsp + 0x118], 0
	test	r12, r12
	je	.label_91
	lea	rcx, [rax + rax]
	mov	qword ptr [rsp + 0xf8], rcx
	mov	qword ptr [rsp + 0x48], rax
	shl	rax, 8
	mov	qword ptr [rsp + 0xf0], rax
	xor	eax, eax
	mov	qword ptr [rsp + 0x30], rax
	xor	ebx, ebx
	nop	word ptr cs:[rax + rax]
.label_395:
	mov	qword ptr [rsp + 0x20], r14
	mov	rdi, qword ptr [r14]
	mov	esi, OFFSET FLAT:label_289
	mov	qword ptr [rsp + 0x28], rdi
	call	stream_open
	mov	qword ptr [rsp + 0x18], rax
	test	rax, rax
	je	.label_115
	mov	rcx, qword ptr [rsp + 0x48]
	cmp	rcx, 2
	mov	edx, 0x30
	mov	r14, rbx
	jb	.label_120
	mov	edx, 0x20
	mov	eax, 1
	nop	word ptr cs:[rax + rax]
.label_345:
	add	rax, rax
	add	rdx, 0x20
	cmp	rax, rcx
	jb	.label_345
.label_120:
	mov	rax, rdx
	or	rax, 1
	mov	qword ptr [rsp + 8], rax
	cmp	qword ptr [rsp + 0x118], 0
	mov	qword ptr [rsp + 0xd0], rdx
	jne	.label_99
	mov	rbp, rdx
	or	rbp, 2
	xor	ebx, ebx
	mov	qword ptr [rsp + 0x38], r12
	nop	dword ptr [rax]
.label_55:
	test	rbx, rbx
	je	.label_142
	mov	rax, qword ptr [rsp + 0x20]
	mov	rsi, qword ptr [rax + rbx*8]
	cmp	byte ptr [rsi], 0x2d
	jne	.label_143
	cmp	byte ptr [rsi + 1], 0
	je	.label_181
.label_143:
	mov	edi, 1
	lea	rdx, [rsp + 0x190]
	call	__xstat
	jmp	.label_177
	nop	dword ptr [rax]
.label_142:
	mov	rdi, qword ptr [rsp + 0x18]
	call	fileno
	mov	edi, 1
	mov	esi, eax
	jmp	.label_152
.label_181:
	mov	edi, 1
	xor	esi, esi
.label_152:
	lea	rdx, [rsp + 0x190]
	call	__fxstat
.label_177:
	test	eax, eax
	jne	.label_263
	mov	eax, dword ptr [rsp + 0x1a8]
	mov	ecx, 0xf000
	and	eax, ecx
	cmp	eax, 0x8000
	jne	.label_157
	mov	r15, qword ptr [rsp + 0x1c0]
	jmp	.label_211
	nop	
.label_157:
	mov	rsi, qword ptr [rip + sort_size]
	test	rsi, rsi
	mov	r15d, 0x20000
	jne	.label_164
.label_211:
	mov	rsi, qword ptr [rip + sort_buffer_size.size_bound]
	test	rsi, rsi
	jne	.label_167
	mov	rsi, qword ptr [rip + sort_size]
	mov	qword ptr [rip + sort_buffer_size.size_bound],  rsi
	test	rsi, rsi
	jne	.label_167
	mov	edi, 2
	lea	r13, [rsp + 0xb0]
	mov	rsi, r13
	call	getrlimit
	cmp	eax, 1
	sbb	r12, r12
	not	r12
	or	r12, qword ptr [rsp + 0xb0]
	mov	edi, 9
	mov	rsi, r13
	call	getrlimit
	test	eax, eax
	jne	.label_185
	mov	rax, qword ptr [rsp + 0xb0]
	cmp	rax, r12
	cmovb	r12, rax
.label_185:
	shr	r12, 1
	mov	edi, 5
	lea	rsi, [rsp + 0xb0]
	call	getrlimit
	test	eax, eax
	jne	.label_360
	mov	rax, qword ptr [rsp + 0xb0]
	shr	rax, 4
	lea	rax, [rax + rax*4]
	lea	rax, [rax + rax*2]
	cmp	rax, r12
	cmovb	r12, rax
.label_360:
	call	physmem_available
	movsd	qword ptr [rsp + 0x40], xmm0
	call	physmem_total
	movapd	xmm1, xmm0
	mulsd	xmm1, qword ptr [rip + label_243]
	movsd	xmm6, qword ptr [rsp + 0x40]
	maxsd	xmm6, xmm1
	mulsd	xmm0, qword ptr [rip + label_244]
	movq	xmm1, r12
	movdqa	xmm2, xmmword ptr [rip + label_245]
	movdqa	xmm3, xmm2
	punpckldq	xmm1, xmm3
	movapd	xmm2, xmmword ptr [rip + label_246]
	movapd	xmm4, xmm2
	subpd	xmm1, xmm4
	pshufd	xmm2, xmm1, 0x4e
	addpd	xmm2, xmm1
	movapd	xmm1, xmm0
	movsd	xmm5, qword ptr [rip + label_247]
	subsd	xmm1, xmm5
	cvttsd2si	rax, xmm1
	movabs	rcx, 0x8000000000000000
	mov	rdx, rcx
	xor	rax, rdx
	cvttsd2si	rcx, xmm0
	ucomisd	xmm0, xmm5
	cmovae	rcx, rax
	ucomisd	xmm2, xmm0
	cmovbe	rcx, r12
	movq	xmm0, rcx
	punpckldq	xmm0, xmm3
	subpd	xmm0, xmm4
	pshufd	xmm1, xmm0, 0x4e
	addpd	xmm1, xmm0
	movapd	xmm2, xmm6
	movapd	xmm0, xmm2
	subsd	xmm0, xmm5
	cvttsd2si	rax, xmm0
	xor	rax, rdx
	cvttsd2si	rsi, xmm2
	ucomisd	xmm2, xmm5
	cmovae	rsi, rax
	ucomisd	xmm1, xmm2
	cmovbe	rsi, rcx
	mov	eax, dword ptr [rip + nmerge]
	imul	rax, rax, 0x22
	cmp	rsi, rax
	cmovbe	rsi, rax
	mov	qword ptr [rip + sort_buffer_size.size_bound],  rsi
	mov	r12, qword ptr [rsp + 0x38]
	mov	r13, qword ptr [rsp + 0x50]
	nop	
.label_167:
	mov	rcx, r15
	mov	rdi, qword ptr [rsp + 8]
	imul	rcx, rdi
	inc	rcx
	xor	edx, edx
	mov	rax, rcx
	div	rdi
	cmp	r15, rax
	jne	.label_164
	mov	rax, rsi
	sub	rax, rbp
	cmp	rax, rcx
	jbe	.label_164
	add	rbp, rcx
	inc	rbx
	cmp	rbx, r12
	jb	.label_55
	jmp	.label_131
	nop	dword ptr [rax + rax]
.label_164:
	mov	rbp, rsi
	nop	word ptr cs:[rax + rax]
.label_131:
	mov	eax, ebp
	and	eax, 0x1f
	mov	ebx, 0x20
	sub	rbx, rax
	add	rbx, rbp
	mov	rdi, rbx
	call	malloc
	mov	qword ptr [rsp + 0x100], rax
	test	rax, rax
	jne	.label_267
	shr	rbx, 1
	cmp	rbx, qword ptr [rsp + 8]
	mov	rbp, rbx
	ja	.label_131
	jmp	.label_276
	nop	word ptr [rax + rax]
.label_267:
	mov	rdx, qword ptr [rsp + 0xd0]
	mov	qword ptr [rsp + 0x128], rdx
	mov	qword ptr [rsp + 0x118], rbx
	mov	qword ptr [rsp + 0x120], 0
	mov	byte ptr [rsp + 0x130], 0
	lea	rax, [rsp + 0x108]
	xorpd	xmm0, xmm0
	movupd	xmmword ptr [rax], xmm0
.label_99:
	mov	byte ptr [rsp + 0x130], 0
	add	qword ptr [rsp + 0x20], 8
	dec	r12
	mov	qword ptr [rsp + 0x38], r12
	nop	word ptr cs:[rax + rax]
.label_388:
	lea	rdi, [rsp + 0x100]
	mov	rsi, qword ptr [rsp + 0x18]
	mov	rdx, qword ptr [rsp + 0x28]
	call	fillbuf
	test	al, al
	je	.label_326
	movzx	eax, byte ptr [rsp + 0x130]
	mov	r15, qword ptr [rsp + 0x118]
	test	r12, r12
	je	.label_311
	test	al, al
	je	.label_311
	mov	rcx, qword ptr [rsp + 0x108]
	mov	rdx, r15
	sub	rdx, rcx
	mov	rsi, qword ptr [rsp + 0x110]
	imul	rsi, qword ptr [rsp + 0xd0]
	sub	rdx, rsi
	cmp	qword ptr [rsp + 8], rdx
	jae	.label_311
	mov	qword ptr [rsp + 0x120], rcx
	mov	eax, 7
	jmp	.label_386
	nop	word ptr cs:[rax + rax]
.label_311:
	mov	qword ptr [rip + saved_line],  0
	add	r15, qword ptr [rsp + 0x100]
	test	al, al
	je	.label_321
	mov	rax, r14
	or	rax, r12
	or	rax, qword ptr [rsp + 0x120]
	jne	.label_321
	mov	rdi, qword ptr [rsp + 0x18]
	mov	rsi, qword ptr [rsp + 0x28]
	call	xfclose
	mov	esi, OFFSET FLAT:label_332
	mov	rdi, r13
	call	stream_open
	test	rax, rax
	je	.label_73
	mov	qword ptr [rsp + 0xb0], rax
	mov	al, 1
	mov	qword ptr [rsp + 0x30], rax
	mov	r12, r13
	jmp	.label_141
.label_321:
	inc	r14
	xor	esi, esi
	lea	rdi, [rsp + 0xb0]
	call	maybe_create_temp
	mov	r12, rax
	add	r12, 0xd
.label_141:
	mov	rbx, qword ptr [rsp + 0x110]
	cmp	rbx, 2
	jb	.label_342
	mov	edi, OFFSET FLAT:compare_nodes
	mov	rsi, qword ptr [rsp + 0xf8]
	call	heap_alloc
	mov	qword ptr [rsp + 0x190], rax
	xor	esi, esi
	lea	rdi, [rsp + 0x198]
	call	pthread_mutex_init
	xor	esi, esi
	lea	rdi, [rsp + 0x1c0]
	call	pthread_cond_init
	mov	rdi, qword ptr [rsp + 0xf0]
	call	xmalloc
	mov	rbp, rax
	xorpd	xmm0, xmm0
	movupd	xmmword ptr [rbp + 0x10], xmm0
	movupd	xmmword ptr [rbp], xmm0
	mov	qword ptr [rbp + 0x20], 0
	mov	qword ptr [rbp + 0x30], rbx
	mov	qword ptr [rbp + 0x28], rbx
	mov	qword ptr [rbp + 0x38], 0
	mov	dword ptr [rbp + 0x50], 0
	mov	byte ptr [rbp + 0x54], 0
	lea	rdi, [rbp + 0x58]
	xor	esi, esi
	call	pthread_mutex_init
	mov	r13, rbp
	sub	r13, -0x80
	xor	r9d, r9d
	mov	rdi, rbp
	mov	rsi, r13
	mov	rdx, r15
	mov	qword ptr [rsp + 0x40], r14
	mov	r14, qword ptr [rsp + 0x48]
	mov	rcx, r14
	mov	r8, rbx
	call	init_node
	mov	rbp, qword ptr [rsp + 0xb0]
	mov	qword ptr [rsp], r12
	mov	rdi, r15
	mov	rsi, r14
	mov	r14, qword ptr [rsp + 0x40]
	mov	rdx, rbx
	mov	rcx, r13
	mov	r13, qword ptr [rsp + 0x50]
	lea	r8, [rsp + 0x190]
	mov	r9, rbp
	call	sortlines
	jmp	.label_137
	nop	dword ptr [rax + rax]
.label_342:
	add	r15, -0x20
	mov	rbp, qword ptr [rsp + 0xb0]
	cmp	byte ptr [rip + unique],  1
	jne	.label_376
	cmp	qword ptr [rip + saved_line],  0
	je	.label_378
	mov	esi, OFFSET FLAT:saved_line
	mov	rdi, r15
	call	compare
	test	eax, eax
	je	.label_137
.label_378:
	movupd	xmm0, xmmword ptr [r15]
	movupd	xmm1, xmmword ptr [r15 + 0x10]
	movupd	xmmword ptr [rip + label_380],  xmm1
	movupd	xmmword ptr [rip + saved_line],  xmm0
.label_376:
	mov	rdi, r15
	mov	rsi, rbp
	mov	rdx, r12
	call	write_line
.label_137:
	mov	rdi, rbp
	mov	rsi, r12
	call	xfclose
	mov	rax, qword ptr [rsp + 0x30]
	and	al, 1
	movzx	eax, al
	shl	eax, 3
	mov	r12, qword ptr [rsp + 0x38]
.label_386:
	mov	ecx, eax
	and	cl, 0xf
	je	.label_388
	mov	rbx, r14
	cmp	cl, 7
	je	.label_294
	jmp	.label_215
	nop	dword ptr [rax + rax]
.label_326:
	mov	rbx, r14
.label_294:
	mov	rdi, qword ptr [rsp + 0x18]
	mov	rsi, qword ptr [rsp + 0x28]
	call	xfclose
	xor	eax, eax
.label_215:
	test	r12, r12
	mov	r14, qword ptr [rsp + 0x20]
	je	.label_270
	test	eax, eax
	je	.label_395
.label_270:
	mov	rdi, qword ptr [rsp + 0x100]
	call	free
	mov	rax, qword ptr [rsp + 0x30]
	test	al, 1
	jne	.label_140
	mov	rbp, qword ptr [rip + temphead]
	mov	r14, rbx
	mov	rax, r14
	shr	rax, 0x3b
	je	.label_399
	call	xalloc_die
.label_387:
	add	r13, 0x20
	mov	r14, qword ptr [rsp + 0x20]
.label_379:
	mov	r15d, 1
	mov	rax, qword ptr [rsp + 0xe0]
	cmp	al, 0x63
	jne	.label_358
	add	r13, -0x20
	mov	rbp, qword ptr [rsp + 0x28]
	sub	rbp, r13
	sar	rbp, 5
	add	rbp, qword ptr [rsp + 0x40]
	mov	r12, qword ptr [rip + stderr]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_405
	mov	edx, 5
	call	dcgettext
	mov	qword ptr [rsp + 0x18], rax
	mov	rbx, qword ptr [rip + program_name]
	lea	rsi, [rsp + 0xb0]
	mov	rdi, rbp
	call	umaxtostr
	mov	rbp, rax
	mov	r15d, 1
	mov	esi, 1
	xor	eax, eax
	mov	rdi, r12
	mov	rdx, qword ptr [rsp + 0x18]
	mov	rcx, rbx
	mov	r8, r14
	mov	r9, rbp
	call	__fprintf_chk
	mov	rbx, qword ptr [rip + stderr]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_61
	mov	edx, 5
	call	dcgettext
	mov	rdi, r13
	mov	rsi, rbx
	mov	rdx, rax
	call	write_line
.label_358:
	mov	r13, qword ptr [rsp + 0x38]
	mov	rbx, qword ptr [rsp + 8]
.label_51:
	mov	rdi, r13
	mov	rsi, r14
	call	xfclose
	mov	rdi, qword ptr [rsp + 0x190]
	call	free
	mov	rdi, rbx
	call	free
	jmp	.label_80
.label_82:
	mov	esi, 0x10
	mov	rdi, r12
	call	xcalloc
	test	r12, r12
	je	.label_84
	lea	rsi, [r12 - 1]
	mov	ecx, r12d
	and	ecx, 3
	xor	edx, edx
	cmp	rsi, 3
	jb	.label_87
	mov	rsi, r12
	sub	rsi, rcx
	lea	rdi, [rax + 0x30]
	xor	edx, edx
	nop	word ptr cs:[rax + rax]
.label_304:
	mov	rbp, qword ptr [r14 + rdx*8]
	mov	qword ptr [rdi - 0x30], rbp
	mov	rbp, qword ptr [r14 + rdx*8 + 8]
	mov	qword ptr [rdi - 0x20], rbp
	mov	rbp, qword ptr [r14 + rdx*8 + 0x10]
	mov	qword ptr [rdi - 0x10], rbp
	mov	rbp, qword ptr [r14 + rdx*8 + 0x18]
	mov	qword ptr [rdi], rbp
	add	rdx, 4
	add	rdi, 0x40
	cmp	rsi, rdx
	jne	.label_304
.label_87:
	test	rcx, rcx
	je	.label_84
	lea	rsi, [r14 + rdx*8]
	shl	rdx, 4
	mov	rdi, rax
	add	rdi, rdx
	neg	rcx
	nop	word ptr cs:[rax + rax]
.label_111:
	mov	rdx, qword ptr [rsi]
	mov	qword ptr [rdi], rdx
	add	rdi, 0x10
	add	rsi, 8
	inc	rcx
	jne	.label_111
.label_84:
	xor	esi, esi
	mov	rdi, rax
	mov	rdx, r12
	mov	rcx, r13
	call	merge
	jmp	.label_119
.label_91:
	mov	rbp, qword ptr [rip + temphead]
	xor	r14d, r14d
.label_399:
	mov	rdi, r14
	shl	rdi, 4
	call	xmalloc
	mov	rbx, rax
	test	rbp, rbp
	je	.label_126
	mov	rax, rbx
	add	rax, 8
	nop	word ptr [rax + rax]
.label_356:
	lea	rcx, [rbp + 0xd]
	mov	qword ptr [rax - 8], rcx
	mov	qword ptr [rax], rbp
	mov	rbp, qword ptr [rbp]
	add	rax, 0x10
	test	rbp, rbp
	jne	.label_356
.label_126:
	mov	rdi, rbx
	mov	rsi, r14
	mov	rdx, r14
	mov	rcx, r13
	call	merge
	mov	rdi, rbx
	call	free
	jmp	.label_140
	nop	word ptr cs:[rax + rax]
.label_146:
	mov	edi, 0xffffffff
	call	reap
.label_140:
	cmp	dword ptr [rip + nprocs],  0
	jg	.label_146
.label_119:
	xor	r15d, r15d
	cmp	byte ptr [rip + have_read_stdin],  1
	jne	.label_80
	mov	rdi, qword ptr [rip + stdin]
	call	rpl_fclose
	cmp	eax, -1
	je	.label_150
.label_80:
	mov	eax, r15d
	add	rsp, 0x358
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_276:
	call	xalloc_die
.label_287:
	mov	byte ptr [rax + 0x37], 0
	mov	word ptr [rax + 0x30], 0
	mov	rdx, qword ptr [rax + 0x30]
	movzx	ecx, dx
	cmp	ecx, 0xff
	ja	.label_155
	test	dl, dl
	jne	.label_155
	lea	rcx, [rsp + 0x190]
	jmp	.label_160
.label_73:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_162
	mov	edx, 5
	call	dcgettext
	mov	rdi, rax
	mov	rsi, r13
	call	sort_die
.label_263:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_166
	mov	edx, 5
	call	dcgettext
	mov	rcx, qword ptr [rsp + 0x20]
	mov	rsi, qword ptr [rcx + rbx*8]
	mov	rdi, rax
	call	sort_die
.label_155:
	lea	rcx, [rsp + 0x191]
	mov	byte ptr [rsp + 0x190], 0x62
.label_160:
	shr	rdx, 0x20
	mov	edi, OFFSET FLAT:nondictionary
	cmp	rsi, rdi
	jne	.label_174
	mov	byte ptr [rcx], 0x64
	inc	rcx
.label_174:
	cmp	qword ptr [rax + 0x28], 0
	je	.label_179
	mov	byte ptr [rcx], 0x66
	inc	rcx
	mov	dx, word ptr [rax + 0x34]
.label_179:
	test	dl, dl
	jne	.label_182
	shr	edx, 8
	jmp	.label_184
.label_182:
	mov	byte ptr [rcx], 0x67
	inc	rcx
	mov	dl, byte ptr [rax + 0x35]
.label_184:
	test	dl, dl
	je	.label_186
	mov	byte ptr [rcx], 0x68
	inc	rcx
.label_186:
	mov	edx, OFFSET FLAT:nonprinting
	cmp	qword ptr [rax + 0x20], rdx
	jne	.label_188
	mov	byte ptr [rcx], 0x69
	inc	rcx
.label_188:
	cmp	byte ptr [rax + 0x36], 0
	je	.label_192
	mov	byte ptr [rcx], 0x4d
	inc	rcx
.label_192:
	mov	dx, word ptr [rax + 0x32]
	test	dl, dl
	jne	.label_98
	shr	edx, 8
	jmp	.label_196
.label_98:
	mov	byte ptr [rcx], 0x6e
	inc	rcx
	mov	dl, byte ptr [rax + 0x33]
.label_196:
	test	dl, dl
	je	.label_199
	mov	byte ptr [rcx], 0x52
	inc	rcx
.label_199:
	cmp	byte ptr [rax + 0x37], 0
	je	.label_200
	mov	byte ptr [rcx], 0x72
	inc	rcx
.label_200:
	cmp	byte ptr [rax + 0x38], 0
	je	.label_203
	mov	byte ptr [rcx], 0x56
	inc	rcx
.label_203:
	mov	byte ptr [rcx], 0
	lea	rdi, [rsp + 0x190]
	call	incompatible_options
.label_144:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_210
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [r14 + rbx*8]
	mov	rdi, rax
	call	sort_die
.label_115:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_162
	mov	edx, 5
	call	dcgettext
	mov	rdi, rax
	mov	rsi, qword ptr [rsp + 0x28]
	call	sort_die
.label_335:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_221
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	rsi, qword ptr [r14 + 8]
	mov	edi, 4
	call	quotearg_style
	mov	rcx, rax
	movsx	r8d, r15b
	mov	edi, 2
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rbx
	call	error
.label_336:
	mov	byte ptr [rip + main.opts.64],  r15b
	mov	edi, OFFSET FLAT:main.opts.64
	call	incompatible_options
.label_341:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_162
	mov	edx, 5
	call	dcgettext
	mov	rdi, rax
	mov	rsi, r14
	call	sort_die
.label_303:
	mov	rax, r15
	test	r15b, r15b
	jne	.label_238
	mov	al, 0x6f
.label_238:
	mov	byte ptr [rip + main.opts],  al
	mov	edi, OFFSET FLAT:main.opts
	call	incompatible_options
.label_286:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_162
	jmp	.label_248
.label_292:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_251
.label_248:
	mov	edx, 5
	call	dcgettext
	mov	rdi, rax
	mov	rsi, qword ptr [rsp + 0xd8]
	call	sort_die
.label_150:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_251
	mov	edx, 5
	call	dcgettext
	mov	esi, OFFSET FLAT:label_258
	mov	rdi, rax
	call	sort_die
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x406420

	.globl sighandler
	.type sighandler, @function
sighandler:
	push	rbp
	push	rbx
	push	rax
	mov	ebp, edi
	mov	rbx, qword ptr [rip + temphead]
	jmp	.label_410
	nop	
.label_411:
	lea	rdi, [rbx + 0xd]
	call	unlink
	mov	rbx, qword ptr [rbx]
.label_410:
	test	rbx, rbx
	jne	.label_411
	mov	qword ptr [rip + temphead],  0
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
	.align	32
	#Procedure 0x406470

	.globl exit_cleanup
	.type exit_cleanup, @function
exit_cleanup:
	push	r14
	push	rbx
	sub	rsp, 0x88
	cmp	qword ptr [rip + temphead],  0
	je	.label_412
	lea	r14, [rsp + 8]
	xor	edi, edi
	mov	esi, OFFSET FLAT:caught_signals
	mov	rdx, r14
	call	pthread_sigmask
	test	eax, eax
	sete	al
	sete	byte ptr [rsp]
	mov	rbx, qword ptr [rip + temphead]
	test	rbx, rbx
	je	.label_413
	nop	dword ptr [rax]
.label_414:
	lea	rdi, [rbx + 0xd]
	call	unlink
	mov	rbx, qword ptr [rbx]
	test	rbx, rbx
	jne	.label_414
	mov	al, byte ptr [rsp]
.label_413:
	mov	qword ptr [rip + temphead],  0
	test	al, al
	je	.label_412
	mov	edi, 2
	xor	edx, edx
	mov	rsi, r14
	call	pthread_sigmask
.label_412:
	call	close_stdout
	add	rsp, 0x88
	pop	rbx
	pop	r14
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406500

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
	mov	r8d, OFFSET FLAT:label_78
	call	xstrtoumax
	mov	ecx, eax
	cmp	eax, 4
	ja	.label_416
	jmp	qword ptr [(rcx * 8) + label_417]
.label_1924:
	mov	rax, qword ptr [rsp + 8]
	mov	qword ptr [rbx], rax
	jmp	.label_416
.label_1925:
	mov	qword ptr [rbx], -1
.label_416:
	mov	rax, qword ptr [rsp + 0x10]
.label_418:
	add	rsp, 0x18
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
.label_1926:
	xor	eax, eax
	test	r14, r14
	je	.label_418
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_415
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
	.align	32
	#Procedure 0x4065b0

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
	mov	esi, OFFSET FLAT:label_419
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
	.align	32
	#Procedure 0x406610

	.globl incompatible_options
	.type incompatible_options, @function
incompatible_options:
	push	rbx
	mov	rbx, rdi
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_420
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
	.align	32
	#Procedure 0x406640

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
	je	.label_422
	test	eax, eax
	jne	.label_424
	test	byte ptr [rbx], 0x10
	je	.label_423
	mov	rdi, rbx
	add	rsp, 8
	pop	rbx
	pop	r14
	jmp	clearerr_unlocked
.label_422:
	mov	rdi, rbx
	call	fflush_unlocked
	test	eax, eax
	je	.label_423
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_425
	jmp	.label_426
.label_424:
	mov	rdi, rbx
	call	rpl_fclose
	test	eax, eax
	jne	.label_421
.label_423:
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
.label_421:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_251
.label_426:
	mov	edx, 5
	call	dcgettext
	mov	rdi, rax
	mov	rsi, r14
	call	sort_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4066c0

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
	mov	qword ptr [rsp + 0x18], rcx
	mov	r14, rdx
	mov	rbp, rsi
	mov	r12, rdi
	mov	ebx, dword ptr [rip + nmerge]
	cmp	rbx, r14
	mov	qword ptr [rsp + 0x28], r12
	jae	.label_450
	lea	rax, [r12 + 8]
	mov	qword ptr [rsp + 0x40], rax
	nop	dword ptr [rax]
.label_437:
	mov	qword ptr [rsp], rbp
	mov	ecx, ebx
	cmp	rcx, r14
	mov	qword ptr [rsp + 0x38], r14
	jbe	.label_427
	xor	r13d, r13d
	xor	esi, esi
	mov	rbp, r14
	jmp	.label_432
	nop	dword ptr [rax]
.label_427:
	mov	r15, qword ptr [rsp + 0x40]
	xor	esi, esi
	xor	r13d, r13d
	nop	word ptr [rax + rax]
.label_456:
	mov	qword ptr [rsp + 8], r13
	mov	rbx, rsi
	xor	esi, esi
	lea	rdi, [rsp + 0x10]
	call	maybe_create_temp
	mov	rcx, r12
	mov	r12, rax
	mov	qword ptr [rsp + 0x20], rbx
	shl	rbx, 4
	add	rbx, rcx
	mov	r13d, dword ptr [rip + nmerge]
	mov	rax, qword ptr [rsp + 0x10]
	mov	qword ptr [rsp + 0x30], rax
	mov	rdi, rbx
	mov	rsi, r13
	lea	rdx, [rsp + 0x58]
	call	open_input_files
	mov	rbp, rax
	cmp	rbp, r13
	jae	.label_447
	cmp	rbp, 1
	jbe	.label_461
.label_447:
	mov	qword ptr [rsp + 0x48], r12
	add	r12, 0xd
	mov	r14, qword ptr [rsp]
	cmp	r14, r13
	cmovb	r13, r14
	mov	r9, qword ptr [rsp + 0x58]
	mov	rdi, rbx
	mov	rsi, r13
	mov	rdx, rbp
	mov	rcx, qword ptr [rsp + 0x30]
	mov	r8, r12
	call	mergefps
	cmp	r14, rbp
	mov	rax, rbp
	cmovb	rax, r14
	sub	r14, rax
	mov	qword ptr [rsp], r14
	mov	r14, qword ptr [rsp + 0x38]
	mov	qword ptr [r15 - 8], r12
	mov	r12, qword ptr [rsp + 0x28]
	mov	rax, qword ptr [rsp + 0x48]
	mov	qword ptr [r15], rax
	mov	rsi, qword ptr [rsp + 0x20]
	add	rsi, rbp
	mov	r13, qword ptr [rsp + 8]
	inc	r13
	mov	ebx, dword ptr [rip + nmerge]
	mov	rbp, r14
	sub	rbp, rsi
	add	r15, 0x10
	cmp	rbx, rbp
	mov	rcx, rbx
	jbe	.label_456
.label_432:
	xor	edx, edx
	mov	rax, r13
	div	rcx
	sub	rcx, rdx
	sub	rbp, rcx
	jbe	.label_430
	inc	rbp
	mov	rbx, rsi
	xor	esi, esi
	lea	rdi, [rsp + 0x10]
	call	maybe_create_temp
	mov	r15, rax
	mov	rax, r12
	mov	qword ptr [rsp + 0x20], rbx
	mov	r12, rbx
	shl	r12, 4
	add	r12, rax
	mov	rax, qword ptr [rsp + 0x10]
	mov	qword ptr [rsp + 8], rax
	mov	rdi, r12
	mov	rsi, rbp
	lea	rdx, [rsp + 0x58]
	call	open_input_files
	mov	r14, rax
	cmp	r14, rbp
	jae	.label_443
	cmp	r14, 1
	jbe	.label_444
.label_443:
	mov	rbx, r15
	add	rbx, 0xd
	mov	rax, qword ptr [rsp]
	cmp	rax, rbp
	cmovb	rbp, rax
	mov	r9, qword ptr [rsp + 0x58]
	mov	rdi, r12
	mov	rsi, rbp
	mov	rbp, rax
	mov	rdx, r14
	mov	rcx, qword ptr [rsp + 8]
	mov	r8, rbx
	call	mergefps
	cmp	rbp, r14
	mov	rax, r14
	cmovb	rax, rbp
	sub	rbp, rax
	mov	rax, r13
	shl	rax, 4
	mov	r12, qword ptr [rsp + 0x28]
	mov	qword ptr [r12 + rax], rbx
	inc	r13
	mov	qword ptr [r12 + rax + 8], r15
	mov	rsi, qword ptr [rsp + 0x20]
	add	rsi, r14
	mov	ebx, dword ptr [rip + nmerge]
	mov	r14, qword ptr [rsp + 0x38]
	jmp	.label_454
	nop	dword ptr [rax]
.label_430:
	mov	rbp, qword ptr [rsp]
.label_454:
	mov	rdi, r13
	shl	rdi, 4
	add	rdi, r12
	mov	r15, rsi
	shl	rsi, 4
	add	rsi, r12
	mov	rdx, r14
	sub	rdx, r15
	shl	rdx, 4
	call	memmove
	add	rbp, r13
	add	r13, r14
	sub	r13, r15
	mov	eax, ebx
	cmp	rax, r13
	mov	r14, r13
	jb	.label_437
	jmp	.label_434
.label_450:
	mov	r13, r14
.label_434:
	cmp	rbp, r13
	jae	.label_436
	mov	r15, rbp
	shl	r15, 4
	add	r15, r12
	xor	ebx, ebx
	mov	r14, rbp
	mov	qword ptr [rsp + 8], r13
	jmp	.label_438
.label_433:
	mov	rbx, qword ptr [rsp]
	jmp	.label_440
	nop	dword ptr [rax + rax]
.label_438:
	mov	qword ptr [rsp], rbx
	mov	rsi, qword ptr [r15]
	movzx	eax, byte ptr [rsi]
	mov	ebx, 0x2d
	sub	ebx, eax
	jne	.label_442
	movzx	ebx, byte ptr [rsi + 1]
	neg	ebx
.label_442:
	cmp	qword ptr [rsp + 0x18], 0
	je	.label_445
	mov	rdi, qword ptr [rsp + 0x18]
	call	strcmp
	test	ebx, ebx
	je	.label_445
	test	eax, eax
	je	.label_449
.label_445:
	mov	r13, rbp
	mov	ecx, dword ptr [rip + get_outstatus.outstat_errno]
	test	ecx, ecx
	jne	.label_451
	mov	edi, 1
	mov	esi, 1
	mov	edx, OFFSET FLAT:get_outstatus.outstat
	call	__fxstat
	mov	ecx, 0xffffffff
	test	eax, eax
	je	.label_455
	call	__errno_location
	mov	ecx, dword ptr [rax]
.label_455:
	mov	dword ptr [rip + get_outstatus.outstat_errno],  ecx
.label_451:
	test	ecx, ecx
	mov	ebp, 0
	mov	eax, OFFSET FLAT:get_outstatus.outstat
	cmovs	rbp, rax
	jns	.label_457
	test	ebx, ebx
	je	.label_459
	mov	rsi, qword ptr [r15]
	mov	edi, 1
	lea	rdx, [rsp + 0x58]
	call	__xstat
	jmp	.label_460
	nop	dword ptr [rax]
.label_459:
	mov	edi, 1
	xor	esi, esi
	lea	rdx, [rsp + 0x58]
	call	__fxstat
.label_460:
	mov	rbx, qword ptr [rsp]
	test	eax, eax
	jne	.label_428
	mov	rax, qword ptr [rsp + 0x60]
	cmp	rax, qword ptr [rbp + 8]
	jne	.label_428
	mov	rax, qword ptr [rsp + 0x58]
	cmp	rax, qword ptr [rbp]
	mov	rbp, r13
	mov	r13, qword ptr [rsp + 8]
	jne	.label_433
	nop	word ptr cs:[rax + rax]
.label_449:
	mov	rbx, qword ptr [rsp]
	test	rbx, rbx
	jne	.label_439
	xor	esi, esi
	lea	rdi, [rsp + 0x50]
	call	maybe_create_temp
	mov	rbx, rax
	mov	r12, qword ptr [rsp + 0x50]
	mov	esi, 1
	mov	rdi, r15
	lea	rdx, [rsp + 0x10]
	call	open_input_files
	test	rax, rax
	je	.label_446
	mov	r8, rbx
	add	r8, 0xd
	mov	r9, qword ptr [rsp + 0x10]
	xor	esi, esi
	mov	rdi, r15
	mov	rdx, rax
	mov	rcx, r12
	call	mergefps
	mov	r12, qword ptr [rsp + 0x28]
.label_439:
	lea	rax, [rbx + 0xd]
	mov	qword ptr [r15], rax
	mov	qword ptr [r15 + 8], rbx
	jmp	.label_440
	nop	word ptr cs:[rax + rax]
.label_428:
	mov	rbp, r13
	mov	r13, qword ptr [rsp + 8]
.label_440:
	inc	r14
	add	r15, 0x10
	cmp	r14, r13
	jb	.label_438
	jmp	.label_436
.label_457:
	mov	rbp, r13
	mov	r13, qword ptr [rsp + 8]
.label_436:
	lea	rax, [r12 + 0x10]
	mov	qword ptr [rsp + 0x30], rax
	jmp	.label_458
	nop	
.label_431:
	mov	rax, r12
	cmp	rax, r14
	mov	rsi, r14
	cmovb	rsi, rax
	mov	qword ptr [rsp + 0x20], rsi
	mov	rcx, qword ptr [rsp + 0x10]
	mov	r12, rbx
	add	r12, 0xd
	mov	qword ptr [rsp], rax
	mov	rbp, qword ptr [rsp + 0x28]
	mov	rdi, rbp
	mov	rdx, r14
	mov	r8, r12
	mov	r9, r15
	call	mergefps
	mov	qword ptr [rbp], r12
	mov	r12, rbp
	mov	rbp, qword ptr [rsp]
	mov	qword ptr [r12 + 8], rbx
	mov	rax, qword ptr [rsp + 8]
	sub	rax, r14
	mov	rdx, rax
	shl	rdx, 4
	mov	rdi, qword ptr [rsp + 0x30]
	mov	rsi, r13
	mov	r13, rax
	call	memmove
	inc	rbp
	sub	rbp, qword ptr [rsp + 0x20]
	inc	r13
.label_458:
	mov	rdi, r12
	mov	rsi, r13
	lea	rdx, [rsp + 0x58]
	call	open_input_files
	mov	r14, rax
	cmp	r14, r13
	mov	qword ptr [rsp + 8], r13
	jne	.label_441
	mov	esi, OFFSET FLAT:label_332
	mov	rdi, qword ptr [rsp + 0x18]
	call	stream_open
	test	rax, rax
	jne	.label_448
	mov	rbx, r12
	mov	r12, rbp
	call	__errno_location
	cmp	r13, 3
	jb	.label_452
	cmp	dword ptr [rax], 0x18
	je	.label_453
	jmp	.label_452
	nop	word ptr cs:[rax + rax]
.label_441:
	mov	rbx, r12
	mov	r12, rbp
	cmp	r14, 2
	jbe	.label_435
.label_453:
	mov	r15, qword ptr [rsp + 0x58]
	mov	r13, r14
	shl	r13, 4
	add	r13, rbx
	lea	rbp, [rsp + 0x10]
	nop	word ptr cs:[rax + rax]
.label_429:
	mov	rdi, qword ptr [r15 + r14*8 - 8]
	dec	r14
	mov	rsi, qword ptr [r13 - 0x10]
	add	r13, -0x10
	call	xfclose
	xor	esi, esi
	cmp	r14, 2
	seta	sil
	mov	rdi, rbp
	call	maybe_create_temp
	mov	rbx, rax
	test	rbx, rbx
	je	.label_429
	jmp	.label_431
.label_448:
	mov	r9, qword ptr [rsp + 0x58]
	mov	rdi, r12
	mov	rsi, rbp
	mov	rdx, r13
	mov	rcx, rax
	mov	r8, qword ptr [rsp + 0x18]
	call	mergefps
	add	rsp, 0xe8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_461:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_162
	mov	edx, 5
	call	dcgettext
	shl	rbp, 4
	mov	rsi, qword ptr [rbx + rbp]
	mov	rdi, rax
	call	sort_die
.label_435:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_162
	mov	edx, 5
	call	dcgettext
	shl	r14, 4
	mov	rsi, qword ptr [rbx + r14]
	mov	rdi, rax
	call	sort_die
.label_452:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_162
	mov	edx, 5
	call	dcgettext
	mov	rdi, rax
	mov	rsi, qword ptr [rsp + 0x18]
	call	sort_die
.label_444:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_162
	mov	edx, 5
	call	dcgettext
	shl	r14, 4
	mov	rsi, qword ptr [r12 + r14]
	mov	rdi, rax
	call	sort_die
.label_446:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_162
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [r15]
	mov	rdi, rax
	call	sort_die
	nop	
	.section	.text
	.align	32
	#Procedure 0x406ce0

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
	jne	.label_464
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_462
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
.label_464:
	xor	edi, edi
	mov	esi, 3
	mov	rdx, rbx
	call	quotearg_n_style_colon
	mov	rbx, rax
	mov	edi, 2
	mov	edx, OFFSET FLAT:label_463
	xor	eax, eax
	mov	esi, ebp
	mov	rcx, r14
	mov	r8, rbx
	call	error
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406d40

	.globl struct_month_cmp
	.type struct_month_cmp, @function
struct_month_cmp:
	mov	rdi, qword ptr [rdi]
	mov	rsi, qword ptr [rsi]
	jmp	strcmp
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406d50

	.globl stream_open
	.type stream_open, @function
stream_open:
	push	rbp
	push	r14
	push	rbx
	mov	rbp, rsi
	mov	r14, rdi
	mov	al, byte ptr [rbp]
	cmp	al, 0x77
	je	.label_468
	cmp	al, 0x72
	jne	.label_470
	cmp	byte ptr [r14], 0x2d
	jne	.label_472
	cmp	byte ptr [r14 + 1], 0
	je	.label_473
.label_472:
	xor	ebx, ebx
	mov	esi, 0x80000
	xor	eax, eax
	mov	rdi, r14
	call	open
	test	eax, eax
	js	.label_466
	mov	edi, eax
	mov	rsi, rbp
	call	fdopen
	mov	rbx, rax
	jmp	.label_466
.label_468:
	test	r14, r14
	je	.label_471
	mov	edi, 1
	xor	esi, esi
	call	ftruncate
	test	eax, eax
	je	.label_471
	call	__errno_location
	mov	rbx, rax
	mov	ebp, dword ptr [rbx]
	mov	ecx, dword ptr [rip + get_outstatus.outstat_errno]
	test	ecx, ecx
	jne	.label_478
	mov	edi, 1
	mov	esi, 1
	mov	edx, OFFSET FLAT:get_outstatus.outstat
	call	__fxstat
	mov	ecx, 0xffffffff
	test	eax, eax
	je	.label_469
	mov	ecx, dword ptr [rbx]
.label_469:
	mov	dword ptr [rip + get_outstatus.outstat_errno],  ecx
.label_478:
	test	ecx, ecx
	jns	.label_474
	mov	eax, 0xf000
	and	eax, dword ptr [rip + label_477]
	cmp	eax, 0x8000
	je	.label_474
.label_471:
	mov	rbx, qword ptr [rip + stdout]
	jmp	.label_467
.label_473:
	mov	byte ptr [rip + have_read_stdin],  1
	mov	rbx, qword ptr [rip + stdin]
.label_466:
	mov	esi, 2
	mov	rdi, rbx
	call	fadvise
.label_467:
	mov	rax, rbx
	pop	rbx
	pop	r14
	pop	rbp
	ret	
.label_470:
	mov	edi, OFFSET FLAT:label_475
	mov	esi, OFFSET FLAT:label_274
	mov	edx, 0x3d6
	mov	ecx, OFFSET FLAT:label_476
	call	__assert_fail
.label_474:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_465
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
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406e90

	.globl fillbuf
	.type fillbuf, @function
fillbuf:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x48
	mov	rbx, rdx
	mov	r12, rsi
	mov	r15, rdi
	mov	rax, qword ptr [rip + keylist]
	mov	qword ptr [rsp + 0x30], rax
	mov	dl, byte ptr [rip + eolchar]
	xor	eax, eax
	test	dl, dl
	mov	dword ptr [rsp], 0
	jne	.label_480
	mov	dl, 0xa
	mov	dword ptr [rsp], edx
.label_480:
	cmp	byte ptr [r15 + 0x30], 0
	jne	.label_492
	mov	rax, qword ptr [r15 + 0x28]
	mov	qword ptr [rsp + 0x28], rax
	mov	rbp, qword ptr [rip + merge_buffer_size]
	mov	r8, qword ptr [r15 + 8]
	mov	rdx, qword ptr [r15 + 0x20]
	cmp	r8, rdx
	mov	qword ptr [rsp + 0x10], r12
	mov	qword ptr [rsp + 0x38], rbx
	je	.label_496
	mov	rdi, qword ptr [r15]
	add	r8, rdi
	sub	r8, rdx
	mov	rsi, r8
	call	memmove
	mov	r12, qword ptr [rsp + 0x10]
	mov	r8, qword ptr [r15 + 0x20]
	mov	qword ptr [r15 + 8], r8
	mov	qword ptr [r15 + 0x10], 0
.label_496:
	add	rbp, -0x22
	mov	rax, qword ptr [rsp + 0x28]
	mov	rdx, rax
	neg	rdx
	mov	qword ptr [rsp + 0x40], rdx
	lea	rdi, [rax + 1]
	mov	eax, dword ptr [rsp]
	movzx	eax, al
	mov	dword ptr [rsp + 4], eax
	mov	qword ptr [rsp + 0x18], rdi
	mov	qword ptr [rsp + 0x20], r15
	jmp	.label_486
	nop	word ptr cs:[rax + rax]
.label_485:
	mov	r8, qword ptr [r15 + 8]
.label_486:
	mov	rbx, qword ptr [r15]
	mov	rax, qword ptr [r15 + 0x10]
	add	r8, rbx
	mov	r9, qword ptr [r15 + 0x18]
	add	r9, rbx
	mov	rdx, rax
	shl	rdx, 5
	mov	rsi, r9
	sub	rsi, rdx
	mov	r13, rax
	imul	r13, qword ptr [rsp + 0x40]
	add	r13, r9
	test	rax, rax
	je	.label_499
	neg	rax
	mov	rbx, qword ptr [rsi]
	shl	rax, 5
	add	rbx, qword ptr [r9 + rax + 8]
.label_499:
	mov	qword ptr [rsp + 8], rsi
	sub	r13, r8
	nop	word ptr [rax + rax]
.label_482:
	cmp	rdi, r13
	jae	.label_503
	lea	rax, [r13 - 1]
	xor	edx, edx
	div	rdi
	mov	r14, rax
	mov	esi, 1
	mov	rdi, r8
	mov	rdx, r14
	mov	rcx, r12
	mov	r15, r8
	call	fread_unlocked
	mov	r8, r15
	lea	rdx, [r8 + rax]
	sub	r13, rax
	cmp	rax, r14
	je	.label_483
	mov	eax, dword ptr [r12]
	test	al, 0x20
	jne	.label_500
	test	al, 0x10
	mov	r15, qword ptr [rsp + 0x20]
	je	.label_483
	mov	byte ptr [r15 + 0x30], 1
	mov	eax, 1
	cmp	qword ptr [r15], rdx
	je	.label_504
	cmp	rbx, rdx
	mov	r12, rbx
	je	.label_481
	movsx	eax, byte ptr [rdx - 1]
	cmp	eax, dword ptr [rsp + 4]
	je	.label_483
	mov	eax, dword ptr [rsp]
	mov	byte ptr [rdx], al
	inc	rdx
	nop	dword ptr [rax]
.label_483:
	mov	r12, rdx
.label_481:
	mov	rdx, r12
	sub	rdx, r8
	mov	rdi, r8
	jmp	.label_491
	nop	
.label_488:
	sub	r13, qword ptr [rsp + 0x28]
	mov	rdx, r12
	sub	rdx, rbx
	mov	rdi, rbx
.label_491:
	mov	esi, dword ptr [rsp + 4]
	call	memchr
	test	rax, rax
	je	.label_497
	mov	r14, qword ptr [rsp + 8]
	mov	r15, rbx
	mov	rcx, rbp
	mov	byte ptr [rax], 0
	lea	rbx, [rax + 1]
	lea	rdi, [r14 - 0x20]
	mov	qword ptr [r14 - 0x20], r15
	mov	rbp, rbx
	sub	rbp, r15
	mov	qword ptr [r14 - 0x18], rbp
	cmp	rcx, rbp
	cmova	rbp, rcx
	mov	rsi, qword ptr [rsp + 0x30]
	test	rsi, rsi
	mov	qword ptr [rsp + 8], rdi
	je	.label_488
	cmp	qword ptr [rsi + 0x10], -1
	je	.label_484
	call	limfield
	mov	rdi, qword ptr [rsp + 8]
	mov	rsi, qword ptr [rsp + 0x30]
.label_484:
	mov	qword ptr [r14 - 8], rax
	cmp	qword ptr [rsi], -1
	je	.label_489
	call	begfield
	mov	qword ptr [r14 - 0x10], rax
	jmp	.label_488
	nop	dword ptr [rax + rax]
.label_489:
	cmp	byte ptr [rsi + 0x30], 0
	je	.label_494
	dec	r15
	nop	dword ptr [rax]
.label_493:
	movzx	eax, byte ptr [r15 + 1]
	inc	r15
	cmp	byte ptr [rax + blanks],  0
	jne	.label_493
.label_494:
	mov	qword ptr [r14 - 0x10], r15
	jmp	.label_488
	nop	word ptr [rax + rax]
.label_497:
	mov	r15, qword ptr [rsp + 0x20]
	movzx	eax, byte ptr [r15 + 0x30]
	lea	eax, [rax + rax*4]
	mov	r8, r12
	mov	r12, qword ptr [rsp + 0x10]
.label_504:
	mov	edx, eax
	and	dl, 7
	mov	rdi, qword ptr [rsp + 0x18]
	je	.label_482
	cmp	dl, 5
	jne	.label_487
.label_503:
	mov	rdi, qword ptr [r15]
	mov	rax, r8
	sub	rax, rdi
	mov	qword ptr [r15 + 8], rax
	mov	rax, qword ptr [r15 + 0x18]
	lea	rcx, [rdi + rax]
	sub	rcx, qword ptr [rsp + 8]
	sar	rcx, 5
	mov	qword ptr [r15 + 0x10], rcx
	jne	.label_490
	mov	r14, rax
	shr	r14, 5
	test	rdi, rdi
	je	.label_495
	movabs	rcx, 0x5555555555555540
	cmp	rax, rcx
	jae	.label_498
	shr	rax, 6
	lea	r14, [r14 + rax + 1]
	jmp	.label_502
	nop	dword ptr [rax]
.label_495:
	test	r14, r14
	mov	eax, 4
	cmove	r14, rax
	mov	rax, r14
	shr	rax, 0x3a
	jne	.label_479
.label_502:
	shl	r14, 5
	mov	rsi, r14
	call	xrealloc
	mov	qword ptr [r15], rax
	mov	qword ptr [r15 + 0x18], r14
	mov	r12, qword ptr [rsp + 0x10]
	mov	rdi, qword ptr [rsp + 0x18]
	jmp	.label_485
	nop	word ptr [rax + rax]
.label_487:
	test	eax, eax
	je	.label_485
	xor	eax, eax
	jmp	.label_492
.label_490:
	sub	r8, rbx
	mov	qword ptr [r15 + 0x20], r8
	add	rbp, 0x22
	mov	qword ptr [rip + merge_buffer_size],  rbp
	mov	al, 1
.label_492:
	add	rsp, 0x48
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_500:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_501
	mov	edx, 5
	call	dcgettext
	mov	rdi, rax
	mov	rsi, qword ptr [rsp + 0x38]
	call	sort_die
.label_498:
	call	xalloc_die
.label_479:
	call	xalloc_die
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407220

	.globl compare
	.type compare, @function
compare:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x2138
	mov	r14, rsi
	mov	r15, rdi
	mov	r12, qword ptr [rip + keylist]
	test	r12, r12
	je	.label_513
	mov	rbx, qword ptr [r15 + 0x10]
	mov	r13, qword ptr [r15 + 0x18]
	mov	rbp, qword ptr [r14 + 0x10]
	mov	r8, qword ptr [r14 + 0x18]
	mov	byte ptr [rsp + 6], al
	mov	byte ptr [rsp + 5], al
	mov	qword ptr [rsp + 0x68], rax
	mov	qword ptr [rsp + 0x80], r14
	mov	qword ptr [rsp + 0x78], r15
	jmp	.label_522
	nop	word ptr cs:[rax + rax]
.label_567:
	mov	rdi, r15
	mov	rsi, r12
	mov	rbp, r8
	call	begfield
	mov	rbx, rax
	mov	rdi, r14
	mov	rsi, r12
	call	begfield
	mov	r8, rbp
	mov	rbp, rax
.label_522:
	mov	r15, qword ptr [r12 + 0x20]
	mov	qword ptr [rsp + 0x38], r12
	mov	r12, qword ptr [r12 + 0x28]
	cmp	rbx, r13
	cmova	r13, rbx
	cmp	rbp, r8
	cmova	r8, rbp
	mov	rdx, r13
	mov	r14, r13
	sub	r14, rbx
	mov	r13, r8
	sub	r13, rbp
	cmp	byte ptr [rip + hard_LC_COLLATE],  0
	jne	.label_545
	mov	rax, qword ptr [rsp + 0x38]
	mov	ax, word ptr [rax + 0x32]
	test	al, al
	jne	.label_545
	mov	rcx, qword ptr [rsp + 0x38]
	mov	ecx, dword ptr [rcx + 0x34]
	test	ecx, 0xff00ff
	jne	.label_545
	or	eax, ecx
	movzx	eax, ax
	cmp	eax, 0xff
	ja	.label_545
	mov	rax, qword ptr [rsp + 0x38]
	cmp	byte ptr [rax + 0x38], 0
	je	.label_569
	nop	
.label_545:
	mov	rax, r12
	or	rax, r15
	setne	byte ptr [rsp + 7]
	je	.label_574
	lea	rdi, [r13 + r14 + 2]
	cmp	rdi, 0xfa1
	lea	rax, [rsp + 0x1190]
	mov	rsi, rax
	mov	eax, 0
	mov	qword ptr [rsp + 0x68], rax
	jb	.label_576
	call	xmalloc
	mov	rsi, rax
	mov	qword ptr [rsp + 0x68], rsi
.label_576:
	test	r14, r14
	mov	edi, 0
	je	.label_589
	mov	rax, r14
	xor	edi, edi
.label_606:
	movzx	ecx, byte ptr [rbx]
	movzx	edx, cl
	test	r15, r15
	je	.label_594
	cmp	byte ptr [r15 + rdx], 0
	jne	.label_599
.label_594:
	test	r12, r12
	je	.label_602
	movzx	ecx, byte ptr [r12 + rdx]
.label_602:
	mov	byte ptr [rsi + rdi], cl
	inc	rdi
.label_599:
	inc	rbx
	dec	rax
	jne	.label_606
.label_589:
	lea	rbx, [rsi + r14 + 1]
	mov	byte ptr [rsi + rdi], 0
	test	r13, r13
	mov	eax, 0
	je	.label_609
	xor	eax, eax
	nop	
.label_540:
	movzx	ecx, byte ptr [rbp]
	movzx	edx, cl
	test	r15, r15
	je	.label_621
	cmp	byte ptr [r15 + rdx], 0
	jne	.label_508
.label_621:
	test	r12, r12
	je	.label_618
	movzx	ecx, byte ptr [r12 + rdx]
.label_618:
	mov	byte ptr [rbx + rax], cl
	inc	rax
.label_508:
	inc	rbp
	dec	r13
	jne	.label_540
.label_609:
	mov	byte ptr [rbx + rax], 0
	mov	r13, rax
	jmp	.label_622
	nop	word ptr cs:[rax + rax]
.label_574:
	mov	al, byte ptr [rdx]
	mov	byte ptr [rsp + 6], al
	mov	byte ptr [rdx], 0
	mov	al, byte ptr [r8]
	mov	byte ptr [rsp + 5], al
	mov	byte ptr [r8], 0
	mov	rsi, rbx
	mov	rbx, rbp
	mov	rdi, r14
.label_622:
	mov	qword ptr [rsp + 0x50], rdi
	mov	rdx, qword ptr [rsp + 0x38]
	movzx	eax, word ptr [rdx + 0x32]
	test	al, al
	mov	qword ptr [rsp + 0x30], rsi
	je	.label_631
	lea	rdi, [rsi - 1]
	nop	dword ptr [rax + rax]
.label_597:
	movzx	eax, byte ptr [rdi + 1]
	inc	rdi
	cmp	byte ptr [rax + blanks],  0
	jne	.label_597
	lea	rsi, [rbx - 1]
	nop	word ptr cs:[rax + rax]
.label_578:
	movzx	eax, byte ptr [rsi + 1]
	inc	rsi
	cmp	byte ptr [rax + blanks],  0
	jne	.label_578
.label_560:
	mov	edx, dword ptr [rip + decimal_point]
	mov	ecx, dword ptr [rip + thousands_sep]
	call	strnumcmp
.label_527:
	mov	r15d, eax
	jmp	.label_530
	nop	dword ptr [rax]
.label_631:
	mov	ecx, dword ptr [rdx + 0x34]
	test	cl, cl
	je	.label_533
	mov	rdi, rsi
	lea	rsi, [rsp + 0x90]
	call	strtold
	fstp	xword ptr [rsp + 0x10]
	mov	rdi, rbx
	lea	rsi, [rsp + 0x88]
	call	strtold
	mov	rax, qword ptr [rsp + 0x88]
	mov	rcx, qword ptr [rsp + 0x30]
	cmp	qword ptr [rsp + 0x90], rcx
	je	.label_543
	mov	r15d, 1
	cmp	rax, rbx
	je	.label_550
	fld	xword ptr [rsp + 0x10]
	fxch	st(1)
	fucomi	st(1)
	jbe	.label_556
	fstp	st(0)
	fstp	st(0)
	mov	r15d, 0xffffffff
	jmp	.label_558
.label_533:
	test	ch, 0xff
	mov	qword ptr [rsp + 0x20], rbx
	je	.label_563
	lea	rdi, [rsi - 1]
	nop	word ptr cs:[rax + rax]
.label_506:
	movzx	r11d, byte ptr [rdi + 1]
	inc	rdi
	cmp	byte ptr [r11 + blanks],  0
	jne	.label_506
	lea	rsi, [rbx - 1]
	nop	word ptr cs:[rax + rax]
.label_565:
	movzx	r8d, byte ptr [rsi + 1]
	inc	rsi
	cmp	byte ptr [r8 + blanks],  0
	jne	.label_565
	xor	ebp, ebp
	cmp	r11b, 0x2d
	sete	bpl
	lea	r14, [rbp + rdi + 1]
	mov	cl, byte ptr [rbp + rdi]
	movzx	r15d, cl
	lea	eax, [r15 - 0x30]
	cmp	eax, 9
	ja	.label_582
	add	rbp, rdi
	mov	r9d, dword ptr [rip + thousands_sep]
	xor	edx, edx
	nop	word ptr cs:[rax + rax]
.label_603:
	cmp	dl, cl
	mov	r10b, cl
	jb	.label_601
	mov	r10b, dl
.label_601:
	movsx	eax, byte ptr [r14]
	mov	rbx, rbp
	add	rbx, 2
	cmp	eax, r9d
	mov	rbp, r14
	cmove	rbp, rbx
	lea	r14, [rbp + 1]
	movzx	ecx, byte ptr [rbp]
	movzx	r15d, cl
	lea	edx, [r15 - 0x30]
	cmp	edx, 0xa
	mov	dl, r10b
	jb	.label_603
	cmp	eax, r9d
	jne	.label_628
	jmp	.label_555
.label_543:
	fstp	st(0)
	cmp	rax, rbx
	mov	r15d, 0
	mov	eax, 0xffffffff
	cmovne	r15d, eax
	jmp	.label_558
.label_563:
	test	ecx, 0xff0000
	je	.label_624
	lea	rax, [rsi - 1]
	nop	
.label_627:
	movzx	ecx, byte ptr [rax + 1]
	inc	rax
	cmp	byte ptr [rcx + blanks],  0
	jne	.label_627
	xor	r8d, r8d
	mov	r9d, 0xc
.label_623:
	lea	rsi, [r9 + r8]
	shr	rsi, 1
	mov	rdi, rsi
	shl	rdi, 4
	mov	rbp, qword ptr [rdi + monthtab]
	mov	cl, byte ptr [rbp]
	test	cl, cl
	je	.label_593
	xor	ebx, ebx
	nop	dword ptr [rax + rax]
.label_517:
	movzx	edx, byte ptr [rax + rbx]
	cmp	byte ptr [rdx + fold_toupper],  cl
	jb	.label_553
	ja	.label_516
	movzx	ecx, byte ptr [rbp + rbx + 1]
	inc	rbx
	test	cl, cl
	jne	.label_517
	jmp	.label_593
	nop	
.label_553:
	mov	r9, rsi
	jmp	.label_521
	nop	word ptr cs:[rax + rax]
.label_516:
	inc	rsi
	mov	r8, rsi
.label_521:
	mov	rcx, qword ptr [rsp + 0x20]
	xor	r15d, r15d
	cmp	r8, r9
	jb	.label_623
	jmp	.label_525
.label_556:
	fxch	st(1)
	fucomi	st(1)
	jbe	.label_531
	fstp	st(1)
.label_550:
	fstp	st(0)
.label_558:
	fldz	
	fldz	
.label_615:
	fstp	st(1)
	fstp	st(0)
.label_530:
	cmp	byte ptr [rsp + 7], 0
	je	.label_536
	mov	rdi, qword ptr [rsp + 0x68]
	call	free
	jmp	.label_538
	nop	word ptr cs:[rax + rax]
.label_536:
	mov	al, byte ptr [rsp + 6]
	mov	rcx, qword ptr [rsp + 0x30]
	mov	rdx, qword ptr [rsp + 0x50]
	mov	byte ptr [rcx + rdx], al
	mov	al, byte ptr [rsp + 5]
	mov	byte ptr [rbx + r13], al
.label_538:
	test	r15d, r15d
	jne	.label_529
	mov	r12, qword ptr [rsp + 0x38]
	mov	r12, qword ptr [r12 + 0x40]
	test	r12, r12
	je	.label_554
	cmp	qword ptr [r12 + 0x10], -1
	mov	r14, qword ptr [rsp + 0x80]
	mov	r15, qword ptr [rsp + 0x78]
	je	.label_559
	mov	rdi, r15
	mov	rsi, r12
	call	limfield
	mov	r13, rax
	mov	rdi, r14
	mov	rsi, r12
	call	limfield
	mov	r8, rax
	jmp	.label_570
	nop	dword ptr [rax + rax]
.label_559:
	mov	rax, qword ptr [r15]
	mov	rcx, qword ptr [r15 + 8]
	lea	r13, [rax + rcx - 1]
	mov	rax, qword ptr [r14]
	mov	rcx, qword ptr [r14 + 8]
	lea	r8, [rax + rcx - 1]
.label_570:
	cmp	qword ptr [r12], -1
	jne	.label_567
	mov	rbx, qword ptr [r15]
	mov	rbp, qword ptr [r14]
	cmp	byte ptr [r12 + 0x30], 0
	je	.label_522
	jmp	.label_587
	nop	word ptr [rax + rax]
.label_592:
	inc	rbx
.label_587:
	cmp	rbx, r13
	jae	.label_590
	movzx	eax, byte ptr [rbx]
	cmp	byte ptr [rax + blanks],  0
	jne	.label_592
	jmp	.label_590
	nop	word ptr cs:[rax + rax]
.label_610:
	inc	rbp
.label_590:
	cmp	rbp, r8
	jae	.label_522
	movzx	eax, byte ptr [rbp]
	cmp	byte ptr [rax + blanks],  0
	jne	.label_610
	jmp	.label_522
.label_582:
	xor	r10d, r10d
.label_628:
	cmp	r15d, dword ptr [rip + decimal_point]
	jne	.label_612
	movzx	edx, byte ptr [r14]
	inc	r14
	lea	eax, [rdx - 0x30]
	mov	rbx, r14
	cmp	eax, 9
	ja	.label_555
	nop	dword ptr [rax]
.label_524:
	cmp	r10b, dl
	jb	.label_514
	mov	dl, r10b
.label_514:
	mov	r10b, dl
	movzx	edx, byte ptr [rbx]
	inc	rbx
	mov	eax, edx
	add	eax, -0x30
	cmp	eax, 0xa
	jb	.label_524
	jmp	.label_555
.label_612:
	mov	rbx, r14
.label_555:
	xor	r15d, r15d
	cmp	r10b, 0x31
	jb	.label_557
	movzx	eax, byte ptr [rbx - 1]
	movsx	eax, byte ptr [rax + unit_order]
	mov	r15d, eax
	neg	r15d
	cmp	r11b, 0x2d
	cmovne	r15d, eax
.label_557:
	xor	eax, eax
	cmp	r8b, 0x2d
	sete	al
	lea	r11, [rax + rsi + 1]
	mov	cl, byte ptr [rax + rsi]
	movzx	r14d, cl
	lea	edx, [r14 - 0x30]
	cmp	edx, 9
	ja	.label_630
	add	rax, rsi
	mov	r9d, dword ptr [rip + thousands_sep]
	xor	ebx, ebx
	nop	dword ptr [rax]
.label_515:
	cmp	bl, cl
	mov	r10b, cl
	jb	.label_535
	mov	r10b, bl
.label_535:
	movsx	edx, byte ptr [r11]
	mov	rbp, rax
	add	rbp, 2
	cmp	edx, r9d
	mov	rax, r11
	cmove	rax, rbp
	lea	r11, [rax + 1]
	movzx	ecx, byte ptr [rax]
	movzx	r14d, cl
	lea	ebx, [r14 - 0x30]
	cmp	ebx, 0xa
	mov	bl, r10b
	jb	.label_515
	cmp	edx, r9d
	mov	rbx, qword ptr [rsp + 0x20]
	jne	.label_626
	jmp	.label_534
.label_630:
	xor	r10d, r10d
	mov	rbx, qword ptr [rsp + 0x20]
.label_626:
	cmp	r14d, dword ptr [rip + decimal_point]
	jne	.label_532
	movzx	eax, byte ptr [r11]
	inc	r11
	lea	ecx, [rax - 0x30]
	mov	rbp, r11
	cmp	ecx, 9
	ja	.label_534
	nop	word ptr cs:[rax + rax]
.label_542:
	cmp	r10b, al
	jb	.label_595
	mov	al, r10b
.label_595:
	mov	r10b, al
	movzx	eax, byte ptr [rbp]
	inc	rbp
	mov	ecx, eax
	add	ecx, -0x30
	cmp	ecx, 0xa
	jb	.label_542
	jmp	.label_534
.label_532:
	mov	rbp, r11
.label_534:
	xor	eax, eax
	cmp	r10b, 0x31
	jb	.label_549
	movzx	eax, byte ptr [rbp - 1]
	movsx	ecx, byte ptr [rax + unit_order]
	mov	eax, ecx
	neg	eax
	cmp	r8b, 0x2d
	cmovne	eax, ecx
.label_549:
	sub	r15d, eax
	jne	.label_530
	jmp	.label_560
.label_593:
	mov	r15d, dword ptr [rdi + label_129]
	mov	rcx, qword ptr [rsp + 0x20]
.label_525:
	lea	rax, [rcx - 1]
	nop	dword ptr [rax]
.label_566:
	movzx	ecx, byte ptr [rax + 1]
	inc	rax
	cmp	byte ptr [rcx + blanks],  0
	jne	.label_566
	xor	r8d, r8d
	mov	r9d, 0xc
.label_596:
	lea	rsi, [r9 + r8]
	shr	rsi, 1
	mov	rdi, rsi
	shl	rdi, 4
	mov	rbp, qword ptr [rdi + monthtab]
	mov	cl, byte ptr [rbp]
	test	cl, cl
	je	.label_519
	xor	ebx, ebx
	nop	word ptr [rax + rax]
.label_585:
	movzx	edx, byte ptr [rax + rbx]
	cmp	byte ptr [rdx + fold_toupper],  cl
	jb	.label_581
	ja	.label_584
	movzx	ecx, byte ptr [rbp + rbx + 1]
	inc	rbx
	test	cl, cl
	jne	.label_585
	jmp	.label_519
	nop	dword ptr [rax]
.label_581:
	mov	r9, rsi
	jmp	.label_510
	nop	word ptr cs:[rax + rax]
.label_584:
	inc	rsi
	mov	r8, rsi
.label_510:
	mov	rbx, qword ptr [rsp + 0x20]
	xor	ecx, ecx
	cmp	r8, r9
	jb	.label_596
	jmp	.label_580
.label_519:
	mov	ecx, dword ptr [rdi + label_129]
	mov	rbx, qword ptr [rsp + 0x20]
.label_580:
	sub	r15d, ecx
	jmp	.label_530
.label_569:
	test	r15, r15
	je	.label_608
	test	r12, r12
	mov	rdi, rdx
	jne	.label_611
	jmp	.label_613
.label_531:
	xor	r15d, r15d
	fucomi	st(1)
	jne	.label_614
	jnp	.label_615
.label_614:
	fxch	st(1)
	fucomip	st(0)
	mov	r15d, 0xffffffff
	fldz	
	fxch	st(1)
	jnp	.label_615
	fstp	st(1)
	fucomip	st(0)
	mov	r15d, 1
	fldz	
	fldz	
	jnp	.label_615
	fstp	st(1)
	fstp	st(0)
	xorps	xmm0, xmm0
	movaps	xmmword ptr [rsp + 0x1f0], xmm0
	xor	esi, esi
	mov	rdi, qword ptr [rsp + 0x30]
	call	strtold
	fstp	xword ptr [rsp + 0x1f0]
	xorps	xmm0, xmm0
	movaps	xmmword ptr [rsp + 0xb0], xmm0
	xor	esi, esi
	mov	rdi, rbx
	call	strtold
	fstp	xword ptr [rsp + 0xb0]
	mov	edx, 0x10
	lea	rdi, [rsp + 0x1f0]
	lea	rsi, [rsp + 0xb0]
	call	memcmp
	mov	r15d, eax
	jmp	.label_558
.label_624:
	movzx	eax, ax
	cmp	eax, 0x100
	jae	.label_518
	cmp	byte ptr [rdx + 0x38], 0
	je	.label_605
	mov	rdi, qword ptr [rsp + 0x30]
	mov	rsi, rbx
	call	filevercmp
	jmp	.label_527
.label_608:
	test	r14, r14
	je	.label_528
	mov	r15d, 1
	test	r13, r13
	je	.label_529
	test	r12, r12
	je	.label_551
	nop	dword ptr [rax]
.label_539:
	cmp	rbp, r8
	jae	.label_537
	cmp	rbx, rdx
	jae	.label_537
	movzx	eax, byte ptr [rbx]
	inc	rbx
	movzx	r15d, byte ptr [r12 + rax]
	movzx	eax, byte ptr [rbp]
	inc	rbp
	movzx	eax, byte ptr [r12 + rax]
	sub	r15d, eax
	je	.label_539
	jmp	.label_548
.label_518:
	mov	esi, OFFSET FLAT:random_md5_state
	mov	edx, 0x9c
	lea	rdi, [rsp + 0x14c]
	call	memcpy
	mov	esi, OFFSET FLAT:random_md5_state
	mov	edx, 0x9c
	lea	rdi, [rsp + 0xb0]
	call	memcpy
	xor	eax, eax
	mov	qword ptr [rsp + 0x48], rax
	cmp	byte ptr [rip + hard_LC_COLLATE],  0
	mov	dword ptr [rsp + 0x2c], 0
	mov	r12, r13
	mov	r14, rbx
	mov	r15, qword ptr [rsp + 0x50]
	mov	rdi, qword ptr [rsp + 0x30]
	je	.label_562
	mov	rcx, qword ptr [rsp + 0x30]
	mov	rax, qword ptr [rsp + 0x50]
	lea	rdx, [rcx + rax]
	mov	qword ptr [rsp + 0x60], rdx
	mov	rdx, qword ptr [rsp + 0x20]
	lea	rsi, [rdx + r13]
	mov	qword ptr [rsp + 0x58], rsi
	lea	rax, [r13 + rax]
	lea	rax, [rax + rax*2 + 2]
	mov	qword ptr [rsp + 0x70], rax
	xor	eax, eax
	mov	qword ptr [rsp + 0x48], rax
	mov	r12d, 0xfa0
	lea	r15, [rsp + 0x1f0]
	mov	dword ptr [rsp + 0x2c], 0
	mov	qword ptr [rsp + 0x10], rdx
	mov	qword ptr [rsp + 8], rcx
	jmp	.label_573
.label_620:
	inc	rbx
	inc	rbp
.label_611:
	xor	eax, eax
	cmp	rbx, rdi
	jae	.label_600
	nop	word ptr cs:[rax + rax]
.label_526:
	movzx	esi, byte ptr [rbx]
	mov	dl, 1
	cmp	byte ptr [r15 + rsi], 0
	je	.label_604
	inc	rbx
	cmp	rbx, rdi
	jb	.label_526
	xor	edx, edx
	jmp	.label_604
.label_600:
	xor	edx, edx
	jmp	.label_604
	nop	dword ptr [rax]
.label_617:
	inc	rbp
.label_604:
	cmp	rbp, r8
	jae	.label_577
	movzx	esi, byte ptr [rbp]
	cmp	byte ptr [r15 + rsi], 0
	jne	.label_617
	test	dl, dl
	je	.label_583
	movzx	eax, byte ptr [rbx]
	movzx	edx, byte ptr [r12 + rax]
	movzx	eax, byte ptr [r12 + rsi]
	sub	edx, eax
	je	.label_620
	jmp	.label_625
.label_509:
	cmp	rbp, r14
	cmovb	r14, rbp
	mov	ebp, 0
	seta	bpl
	sbb	ebp, 0
	mov	rdi, r15
	mov	rsi, rbx
	mov	rdx, r14
	call	memcmp
	test	eax, eax
	cmovne	ebp, eax
	mov	dword ptr [rsp + 0x2c], ebp
	nop	
.label_573:
	cmp	r12, qword ptr [rsp + 0x70]
	jae	.label_505
	lea	rbx, [r12 + r12*2]
	shr	rbx, 1
	mov	rax, qword ptr [rsp + 0x70]
	cmp	rax, rbx
	cmova	rbx, rax
	mov	rdi, qword ptr [rsp + 0x48]
	call	free
	mov	rdi, rbx
	call	malloc
	test	rax, rax
	mov	r12d, 0xfa0
	cmovne	r12, rbx
	mov	rbx, rax
	mov	r14, rbx
	lea	rax, [rsp + 0x1f0]
	cmove	r14, rax
	mov	rdi, qword ptr [rsp + 0x10]
	mov	rdx, qword ptr [rsp + 8]
	jmp	.label_571
	nop	word ptr [rax + rax]
.label_505:
	mov	rbx, qword ptr [rsp + 0x48]
	mov	rdi, qword ptr [rsp + 0x10]
	mov	rdx, qword ptr [rsp + 8]
	mov	r14, r15
.label_571:
	cmp	rdx, qword ptr [rsp + 0x60]
	mov	r15d, 0
	jae	.label_547
	mov	rdi, r14
	mov	rsi, qword ptr [rsp + 8]
	mov	rdx, r12
	call	xstrxfrm
	mov	rdx, qword ptr [rsp + 8]
	mov	rdi, qword ptr [rsp + 0x10]
	mov	r15, rax
	inc	r15
.label_547:
	cmp	rdi, qword ptr [rsp + 0x58]
	mov	ebp, 0
	jae	.label_544
	lea	rdi, [r14 + r15]
	mov	rdx, r12
	sub	rdx, r15
	mov	eax, 0
	cmovb	rdi, rax
	cmovb	rdx, rax
	mov	rsi, qword ptr [rsp + 0x10]
	call	xstrxfrm
	mov	rdx, qword ptr [rsp + 8]
	mov	rdi, qword ptr [rsp + 0x10]
	mov	rbp, rax
	inc	rbp
.label_544:
	cmp	r12, r15
	setb	cl
	lea	rax, [rbp + r15]
	cmp	rax, r12
	ja	.label_561
	test	cl, cl
	je	.label_564
.label_561:
	lea	r12, [rax + rax*2]
	shr	r12, 1
	movabs	rcx, 0x5555555555555555
	cmp	rax, rcx
	cmovae	r12, rax
	mov	rdi, rbx
	call	free
	mov	rdi, r12
	call	xmalloc
	mov	rdx, qword ptr [rsp + 8]
	mov	rbx, rax
	cmp	rdx, qword ptr [rsp + 0x60]
	jae	.label_552
	mov	rdi, rbx
	mov	rsi, qword ptr [rsp + 8]
	mov	rdx, r15
	call	strxfrm
	mov	rdx, qword ptr [rsp + 8]
.label_552:
	mov	rdi, qword ptr [rsp + 0x10]
	cmp	rdi, qword ptr [rsp + 0x58]
	jae	.label_568
	mov	rdi, rbx
	add	rdi, r15
	mov	rsi, qword ptr [rsp + 0x10]
	mov	rdx, rbp
	call	strxfrm
	mov	rdx, qword ptr [rsp + 8]
	mov	rdi, qword ptr [rsp + 0x10]
.label_568:
	mov	r14, rbx
.label_564:
	cmp	rdx, qword ptr [rsp + 0x60]
	jae	.label_598
	mov	rdi, rdx
	call	strlen
	mov	rdx, qword ptr [rsp + 8]
	mov	rdi, qword ptr [rsp + 0x10]
	lea	rdx, [rdx + rax + 1]
.label_598:
	cmp	rdi, qword ptr [rsp + 0x58]
	mov	qword ptr [rsp + 0x40], rbp
	mov	rbp, r14
	jae	.label_607
	mov	r14, rdx
	call	strlen
	mov	rdx, r14
	mov	rdi, qword ptr [rsp + 0x10]
	lea	rdi, [rdi + rax + 1]
.label_607:
	mov	qword ptr [rsp + 0x48], rbx
	cmp	rdx, qword ptr [rsp + 0x60]
	jb	.label_616
	cmp	rdi, qword ptr [rsp + 0x58]
	jae	.label_619
.label_616:
	mov	qword ptr [rsp + 8], rdx
	mov	qword ptr [rsp + 0x10], rdi
	mov	rbx, rbp
	mov	rdi, rbx
	mov	rsi, r15
	lea	rdx, [rsp + 0xb0]
	call	md5_process_bytes
	mov	rbp, r15
	mov	r15, rbx
	lea	rbx, [rbx + rbp]
	mov	rdi, rbx
	mov	r14, qword ptr [rsp + 0x40]
	mov	rsi, r14
	lea	rdx, [rsp + 0x14c]
	call	md5_process_bytes
	cmp	dword ptr [rsp + 0x2c], 0
	jne	.label_573
	jmp	.label_509
.label_619:
	mov	rdi, rbp
	lea	r14, [rdi + r15]
	mov	r12, qword ptr [rsp + 0x40]
.label_562:
	mov	qword ptr [rsp + 8], rdi
	mov	qword ptr [rsp + 0x10], r15
	mov	rsi, r15
	lea	rbp, [rsp + 0xb0]
	mov	rdx, rbp
	call	md5_process_bytes
	mov	rdi, rbp
	lea	rbx, [rsp + 0x90]
	mov	rsi, rbx
	call	md5_finish_ctx
	mov	rdi, r14
	mov	qword ptr [rsp + 0x40], r12
	mov	rsi, r12
	lea	rbp, [rsp + 0x14c]
	mov	rdx, rbp
	call	md5_process_bytes
	mov	rdi, rbp
	lea	rbp, [rsp + 0xa0]
	mov	rsi, rbp
	call	md5_finish_ctx
	mov	edx, 0x10
	mov	rdi, rbx
	mov	rsi, rbp
	call	memcmp
	mov	r15d, eax
	test	r15d, r15d
	jne	.label_507
	mov	eax, dword ptr [rsp + 0x2c]
	test	eax, eax
	mov	r15d, eax
	jne	.label_507
	mov	rax, qword ptr [rsp + 0x10]
	mov	rcx, qword ptr [rsp + 0x40]
	cmp	rax, rcx
	mov	rdx, rcx
	cmovb	rdx, rax
	mov	rdi, qword ptr [rsp + 8]
	mov	rsi, r14
	call	memcmp
	mov	r15d, eax
	test	r15d, r15d
	jne	.label_507
	xor	r15d, r15d
	mov	rax, qword ptr [rsp + 0x40]
	cmp	qword ptr [rsp + 0x10], rax
	seta	r15b
	sbb	r15d, 0
.label_507:
	mov	rdi, qword ptr [rsp + 0x48]
	call	free
	mov	rbx, qword ptr [rsp + 0x20]
	jmp	.label_530
.label_586:
	inc	rbx
	inc	rbp
.label_613:
	xor	eax, eax
	cmp	rbx, rdi
	jae	.label_541
	nop	dword ptr [rax + rax]
.label_572:
	movzx	esi, byte ptr [rbx]
	mov	dl, 1
	cmp	byte ptr [r15 + rsi], 0
	je	.label_575
	inc	rbx
	cmp	rbx, rdi
	jb	.label_572
	xor	edx, edx
	jmp	.label_575
.label_541:
	xor	edx, edx
	jmp	.label_575
	nop	dword ptr [rax]
.label_579:
	inc	rbp
.label_575:
	cmp	rbp, r8
	jae	.label_577
	movzx	esi, byte ptr [rbp]
	cmp	byte ptr [r15 + rsi], 0
	jne	.label_579
	test	dl, dl
	je	.label_583
	movzx	eax, byte ptr [rbx]
	sub	eax, esi
	je	.label_586
	jmp	.label_588
.label_528:
	neg	r13
	sbb	r15d, r15d
	jmp	.label_538
.label_605:
	cmp	qword ptr [rsp + 0x50], 0
	je	.label_591
	mov	r15d, 1
	test	r13, r13
	je	.label_530
	mov	rax, qword ptr [rsp + 0x50]
	lea	rsi, [rax + 1]
	lea	rcx, [r13 + 1]
	mov	rdi, qword ptr [rsp + 0x30]
	mov	rdx, rbx
	call	xmemcoll0
	jmp	.label_527
.label_551:
	cmp	r14, r13
	mov	rdx, r13
	cmovb	rdx, r14
	mov	rdi, rbx
	mov	rsi, rbp
	call	memcmp
	mov	r15d, eax
	test	r15d, r15d
	jne	.label_529
.label_537:
	xor	eax, eax
	cmp	r14, r13
	setne	cl
	mov	r15d, 0xffffffff
	jb	.label_529
	mov	al, cl
	mov	r15d, eax
	jmp	.label_538
.label_591:
	mov	rax, r13
	neg	rax
	sbb	r15d, r15d
	jmp	.label_530
.label_583:
	mov	eax, 1
	xor	edx, edx
.label_577:
	movzx	r15d, dl
	sub	r15d, eax
	jmp	.label_538
.label_529:
	mov	rax, qword ptr [rsp + 0x38]
	mov	cl, byte ptr [rax + 0x37]
.label_546:
	mov	eax, r15d
	neg	eax
	test	cl, cl
	cmove	eax, r15d
	jmp	.label_629
.label_554:
	xor	ecx, ecx
	mov	al, byte ptr [rip + unique]
	test	al, al
	mov	r14, qword ptr [rsp + 0x80]
	mov	r15, qword ptr [rsp + 0x78]
	jne	.label_511
	mov	al, byte ptr [rip + stable]
	test	al, al
	jne	.label_511
.label_513:
	mov	rsi, qword ptr [r15 + 8]
	mov	rcx, qword ptr [r14 + 8]
	lea	rbx, [rcx - 1]
	mov	rbp, rsi
	dec	rbp
	je	.label_512
	mov	eax, 1
	test	rbx, rbx
	je	.label_523
	cmp	byte ptr [rip + hard_LC_COLLATE],  0
	mov	rdi, qword ptr [r15]
	mov	rdx, qword ptr [r14]
	je	.label_520
	call	xmemcoll0
	jmp	.label_523
.label_512:
	neg	rbx
	sbb	eax, eax
.label_523:
	mov	ecx, eax
	neg	ecx
	cmp	byte ptr [rip + reverse],  0
	cmove	ecx, eax
.label_511:
	mov	eax, ecx
.label_629:
	add	rsp, 0x2138
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_520:
	cmp	rbp, rbx
	mov	rax, rbx
	cmovb	rax, rbp
	mov	rsi, rdx
	mov	rdx, rax
	call	memcmp
	test	eax, eax
	jne	.label_523
	xor	ecx, ecx
	cmp	rbp, rbx
	setne	cl
	mov	eax, 0xffffffff
	cmovae	eax, ecx
	jmp	.label_523
.label_548:
	shr	ecx, 0x18
	jmp	.label_546
.label_625:
	shr	ecx, 0x18
	mov	r15d, edx
	jmp	.label_546
.label_588:
	shr	ecx, 0x18
	mov	r15d, eax
	jmp	.label_546
	.section	.text
	.align	32
	#Procedure 0x4080c0

	.globl write_line
	.type write_line, @function
write_line:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x18
	mov	r12, rdx
	mov	r15, rsi
	mov	rbp, qword ptr [rdi]
	mov	qword ptr [rsp + 0x10], rdi
	mov	rbx, qword ptr [rdi + 8]
	lea	r13, [rbp + rbx]
	test	r12, r12
	jne	.label_661
	cmp	byte ptr [rip + debug],  1
	jne	.label_661
	test	rbx, rbx
	jle	.label_645
	dec	rbx
	mov	r14d, 0xa
	mov	r12d, 0x3e
	nop	
.label_643:
	test	rbx, rbx
	movsx	ecx, byte ptr [rbp]
	mov	eax, ecx
	cmove	eax, r14d
	cmp	ecx, 9
	cmove	eax, r12d
	mov	rcx, qword ptr [r15 + 0x28]
	cmp	rcx, qword ptr [r15 + 0x30]
	jae	.label_638
	lea	rdx, [rcx + 1]
	mov	qword ptr [r15 + 0x28], rdx
	mov	byte ptr [rcx], al
.label_649:
	inc	rbp
	dec	rbx
	cmp	rbp, r13
	jb	.label_643
	jmp	.label_645
.label_638:
	movzx	esi, al
	mov	rdi, r15
	call	__overflow
	cmp	eax, -1
	jne	.label_649
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_651
	mov	edx, 5
	call	dcgettext
	xor	esi, esi
	mov	rdi, rax
	call	sort_die
.label_661:
	mov	al, byte ptr [rip + eolchar]
	test	al, al
	jne	.label_670
	mov	al, 0xa
	jmp	.label_658
.label_670:
	xor	eax, eax
.label_658:
	mov	byte ptr [rbp + rbx - 1], al
	mov	esi, 1
	mov	rdi, rbp
	mov	rdx, rbx
	mov	rcx, r15
	call	fwrite_unlocked
	cmp	rax, rbx
	jne	.label_668
	mov	byte ptr [r13 - 1], 0
.label_650:
	add	rsp, 0x18
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_645:
	mov	r12, qword ptr [rip + keylist]
	jmp	.label_673
	nop	dword ptr [rax]
.label_680:
	mov	r12, qword ptr [r12 + 0x40]
	test	r12, r12
	jne	.label_673
	mov	al, byte ptr [rip + unique]
	test	al, al
	jne	.label_650
	test	byte ptr [rip + stable],  1
	mov	r12d, 0
	je	.label_673
	jmp	.label_650
.label_664:
	mov	rdx, rsi
.label_642:
	cmp	r10b, 0x30
	mov	rsi, r14
	jb	.label_634
	dec	rdx
	test	r8b, r8b
	je	.label_683
	movzx	eax, byte ptr [rdx]
	cmp	byte ptr [rax + unit_order],  0
	setne	al
	jmp	.label_684
.label_683:
	xor	eax, eax
.label_684:
	movzx	eax, al
	add	rdx, rax
	mov	qword ptr [rsp + 8], rdx
	mov	rsi, rdx
	jmp	.label_634
.label_676:
	mov	esi, 0xa
	call	__overflow
	jmp	.label_640
.label_673:
	mov	rax, qword ptr [rsp + 0x10]
	mov	r15, qword ptr [rax]
	mov	rax, qword ptr [rax + 8]
	lea	r13, [r15 + rax - 1]
	test	r12, r12
	je	.label_641
	mov	rbx, qword ptr [r12]
	cmp	rbx, -1
	mov	r14, r15
	je	.label_647
	mov	rdi, qword ptr [rsp + 0x10]
	mov	rsi, r12
	call	begfield
	mov	r14, rax
.label_647:
	cmp	qword ptr [r12 + 0x10], -1
	je	.label_654
	mov	rdi, qword ptr [rsp + 0x10]
	mov	rsi, r12
	call	limfield
	mov	r13, rax
.label_654:
	mov	rax, qword ptr [r12 + 0x30]
	test	al, al
	sete	cl
	cmp	rbx, -1
	setne	dl
	movabs	rsi, 0xff000000000000
	test	rax, rsi
	jne	.label_660
	or	cl, dl
	je	.label_660
	mov	ecx, eax
	shr	ecx, 0x10
	test	cl, cl
	jne	.label_660
	shr	rax, 0x20
	movzx	ecx, ax
	cmp	ecx, 0xff
	ja	.label_660
	test	al, al
	je	.label_666
	nop	word ptr cs:[rax + rax]
.label_660:
	mov	r11b, byte ptr [r13]
	mov	byte ptr [r13], 0
	dec	r14
	nop	dword ptr [rax]
.label_679:
	mov	rax, r14
	lea	r14, [rax + 1]
	movzx	ecx, byte ptr [rax + 1]
	cmp	byte ptr [rcx + blanks],  0
	jne	.label_679
	mov	qword ptr [rsp + 8], r14
	cmp	r13, r14
	jb	.label_675
	cmp	byte ptr [r12 + 0x36], 0
	je	.label_633
	nop	
.label_685:
	movzx	ecx, byte ptr [rax + 1]
	inc	rax
	cmp	byte ptr [rcx + blanks],  0
	jne	.label_685
	xor	r8d, r8d
	mov	edx, 0xc
.label_663:
	lea	rdi, [rdx + r8]
	shr	rdi, 1
	mov	rcx, rdi
	shl	rcx, 4
	mov	rbx, qword ptr [rcx + monthtab]
	mov	cl, byte ptr [rbx]
	test	cl, cl
	je	.label_639
	inc	rbx
	mov	rsi, rax
	nop	dword ptr [rax]
.label_653:
	movzx	ebp, byte ptr [rsi]
	cmp	byte ptr [rbp + fold_toupper],  cl
	jb	.label_671
	ja	.label_652
	inc	rsi
	movzx	ecx, byte ptr [rbx]
	inc	rbx
	test	cl, cl
	jne	.label_653
	jmp	.label_656
	nop	
.label_671:
	mov	rdx, rdi
	jmp	.label_662
	nop	word ptr cs:[rax + rax]
.label_652:
	inc	rdi
	mov	r8, rdi
.label_662:
	cmp	r8, rdx
	jb	.label_663
	mov	rsi, r14
	jmp	.label_634
.label_641:
	mov	r14, r15
	jmp	.label_666
.label_633:
	movzx	r8d, word ptr [r12 + 0x34]
	test	r8b, r8b
	je	.label_667
	mov	rdi, r14
	lea	rsi, [rsp + 8]
	mov	ebx, r11d
	call	strtold
	fstp	st(0)
	mov	r11d, ebx
	mov	rsi, qword ptr [rsp + 8]
	jmp	.label_634
.label_667:
	shr	r8d, 8
	mov	al, byte ptr [r12 + 0x32]
	or	al, r8b
	je	.label_675
	cmp	r14, r13
	jae	.label_677
	cmp	byte ptr [r14], 0x2d
	sete	al
	jmp	.label_682
	nop	
.label_675:
	mov	qword ptr [rsp + 8], r13
	mov	rsi, r13
	jmp	.label_634
.label_639:
	mov	rsi, rax
.label_656:
	mov	qword ptr [rsp + 8], rsi
.label_634:
	mov	byte ptr [r13], r11b
	mov	r13, rsi
.label_666:
	mov	rsi, r14
	sub	rsi, r15
	xor	edx, edx
	mov	rdi, r15
	call	mbsnwidth
	movsxd	rbp, eax
	cmp	r15, r14
	jae	.label_636
	nop	word ptr cs:[rax + rax]
.label_681:
	xor	eax, eax
	cmp	byte ptr [r15], 9
	lea	r15, [r15 + 1]
	sete	al
	add	rbp, rax
	cmp	r14, r15
	jne	.label_681
.label_636:
	mov	rsi, r13
	sub	rsi, r14
	xor	edx, edx
	mov	rdi, r14
	call	mbsnwidth
	movsxd	rbx, eax
	cmp	r14, r13
	jae	.label_646
	nop	dword ptr [rax]
.label_648:
	xor	eax, eax
	cmp	byte ptr [r14], 9
	lea	r14, [r14 + 1]
	sete	al
	add	rbx, rax
	cmp	r13, r14
	jne	.label_648
	jmp	.label_646
	nop	word ptr [rax + rax]
.label_632:
	lea	rcx, [rax + 1]
	mov	qword ptr [rdi + 0x28], rcx
	mov	byte ptr [rax], 0x20
.label_646:
	test	rbp, rbp
	je	.label_659
	dec	rbp
	mov	rdi, qword ptr [rip + stdout]
	mov	rax, qword ptr [rdi + 0x28]
	cmp	rax, qword ptr [rdi + 0x30]
	jb	.label_632
	mov	esi, 0x20
	call	__overflow
	jmp	.label_646
.label_659:
	test	rbx, rbx
	jne	.label_655
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_672
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	xor	eax, eax
	mov	rsi, rcx
	call	__printf_chk
	jmp	.label_640
.label_677:
	xor	eax, eax
.label_682:
	movzx	edi, al
	lea	rsi, [rdi + r14 + 1]
	mov	bl, byte ptr [rdi + r14]
	movzx	eax, bl
	lea	ecx, [rax - 0x30]
	cmp	ecx, 9
	ja	.label_678
	add	rdi, r14
	mov	r9d, dword ptr [rip + thousands_sep]
	xor	ecx, ecx
	nop	word ptr cs:[rax + rax]
.label_637:
	cmp	cl, bl
	mov	r10b, bl
	jb	.label_635
	mov	r10b, cl
.label_635:
	movsx	ebp, byte ptr [rsi]
	mov	rdx, rdi
	add	rdx, 2
	cmp	ebp, r9d
	mov	rdi, rsi
	cmove	rdi, rdx
	lea	rsi, [rdi + 1]
	movzx	ebx, byte ptr [rdi]
	movzx	eax, bl
	lea	ecx, [rax - 0x30]
	cmp	ecx, 0xa
	mov	cl, r10b
	jb	.label_637
	cmp	ebp, r9d
	je	.label_642
	jmp	.label_644
.label_678:
	xor	r10d, r10d
.label_644:
	cmp	eax, dword ptr [rip + decimal_point]
	jne	.label_664
	movzx	eax, byte ptr [rsi]
	inc	rsi
	lea	ecx, [rax - 0x30]
	mov	rdx, rsi
	cmp	ecx, 9
	ja	.label_642
	nop	word ptr cs:[rax + rax]
.label_657:
	cmp	r10b, al
	jb	.label_674
	mov	al, r10b
.label_674:
	mov	r10b, al
	movzx	eax, byte ptr [rdx]
	inc	rdx
	mov	ecx, eax
	add	ecx, -0x30
	cmp	ecx, 0xa
	jb	.label_657
	jmp	.label_642
.label_665:
	mov	esi, 0x5f
	call	__overflow
	jmp	.label_669
	nop	dword ptr [rax]
.label_655:
	mov	rdi, qword ptr [rip + stdout]
	mov	rax, qword ptr [rdi + 0x28]
	cmp	rax, qword ptr [rdi + 0x30]
	jae	.label_665
	lea	rcx, [rax + 1]
	mov	qword ptr [rdi + 0x28], rcx
	mov	byte ptr [rax], 0x5f
.label_669:
	dec	rbx
	jne	.label_655
	mov	rdi, qword ptr [rip + stdout]
	mov	rax, qword ptr [rdi + 0x28]
	cmp	rax, qword ptr [rdi + 0x30]
	jae	.label_676
	lea	rcx, [rax + 1]
	mov	qword ptr [rdi + 0x28], rcx
	mov	byte ptr [rax], 0xa
.label_640:
	test	r12, r12
	jne	.label_680
	jmp	.label_650
.label_668:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_651
	mov	edx, 5
	call	dcgettext
	mov	rdi, rax
	mov	rsi, r12
	call	sort_die
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408610

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
	mov	edx, dword ptr [rip + tab]
	cmp	edx, 0x80
	je	.label_693
	jmp	.label_698
	nop	dword ptr [rax]
.label_688:
	dec	r9
.label_693:
	cmp	rax, rcx
	jae	.label_687
	test	r9, r9
	jne	.label_690
	jmp	.label_687
	nop	
.label_696:
	inc	rax
.label_690:
	cmp	rax, rcx
	jae	.label_695
	movzx	edx, byte ptr [rax]
	cmp	byte ptr [rdx + blanks],  0
	jne	.label_696
	jmp	.label_695
	nop	word ptr cs:[rax + rax]
.label_699:
	inc	rax
.label_695:
	cmp	rax, rcx
	jae	.label_688
	movzx	edx, byte ptr [rax]
	cmp	byte ptr [rdx + blanks],  0
	je	.label_699
	jmp	.label_688
	nop	word ptr cs:[rax + rax]
.label_700:
	lea	r10, [rax + 1]
	mov	rdi, r9
	or	rdi, r8
	cmovne	rax, r10
.label_698:
	cmp	rax, rcx
	jae	.label_687
	test	r9, r9
	je	.label_687
	dec	r9
	jmp	.label_697
	nop	dword ptr [rax]
.label_691:
	inc	rax
.label_697:
	cmp	rax, rcx
	jae	.label_698
	movsx	edi, byte ptr [rax]
	cmp	edi, edx
	jne	.label_691
	jmp	.label_700
.label_687:
	test	r8, r8
	je	.label_686
	cmp	byte ptr [rsi + 0x31], 0
	jne	.label_689
	jmp	.label_692
	nop	
.label_694:
	inc	rax
.label_689:
	cmp	rax, rcx
	jae	.label_692
	movzx	edx, byte ptr [rax]
	cmp	byte ptr [rdx + blanks],  0
	jne	.label_694
.label_692:
	add	rax, r8
	cmp	rcx, rax
	cmovb	rax, rcx
.label_686:
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x4086f0

	.globl begfield
	.type begfield, @function
begfield:
	mov	rax, qword ptr [rdi]
	mov	rcx, qword ptr [rdi + 8]
	lea	rcx, [rax + rcx - 1]
	mov	r9, qword ptr [rsi]
	mov	r8, qword ptr [rsi + 8]
	mov	edx, dword ptr [rip + tab]
	cmp	edx, 0x80
	je	.label_711
	jmp	.label_709
	nop	word ptr cs:[rax + rax]
.label_705:
	dec	r9
.label_711:
	cmp	rax, rcx
	jae	.label_708
	test	r9, r9
	jne	.label_712
	jmp	.label_708
	nop	
.label_713:
	inc	rax
.label_712:
	cmp	rax, rcx
	jae	.label_702
	movzx	edx, byte ptr [rax]
	cmp	byte ptr [rdx + blanks],  0
	jne	.label_713
	jmp	.label_702
	nop	word ptr cs:[rax + rax]
.label_707:
	inc	rax
.label_702:
	cmp	rax, rcx
	jae	.label_705
	movzx	edx, byte ptr [rax]
	cmp	byte ptr [rdx + blanks],  0
	je	.label_707
	jmp	.label_705
	nop	word ptr cs:[rax + rax]
.label_701:
	dec	r9
.label_709:
	cmp	rax, rcx
	jae	.label_708
	test	r9, r9
	je	.label_708
	nop	dword ptr [rax]
.label_703:
	cmp	rax, rcx
	jae	.label_701
	movsx	edi, byte ptr [rax]
	inc	rax
	cmp	edi, edx
	jne	.label_703
	jmp	.label_701
.label_708:
	cmp	byte ptr [rsi + 0x30], 0
	jne	.label_704
	jmp	.label_706
	nop	dword ptr [rax]
.label_710:
	inc	rax
.label_704:
	cmp	rax, rcx
	jae	.label_706
	movzx	edx, byte ptr [rax]
	cmp	byte ptr [rdx + blanks],  0
	jne	.label_710
.label_706:
	add	rax, r8
	cmp	rcx, rax
	cmovb	rax, rcx
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x4087c0

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
	jne	.label_716
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_716:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_717
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, ebp
	mov	rdx, rcx
	call	error
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_714
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	call	error
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_715
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
	.align	32
	#Procedure 0x408880

	.globl move_fd
	.type move_fd, @function
move_fd:
	push	rbx
	mov	ebx, edi
	cmp	ebx, esi
	jne	.label_718
	pop	rbx
	ret	
.label_718:
	mov	edi, ebx
	call	dup2
	mov	edi, ebx
	pop	rbx
	jmp	close
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4088a0

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
	mov	r12, rdi
	mov	rax, r14
	shr	rax, 0x3c
	jne	.label_722
	lea	rdi, [r14*8]
	call	xmalloc
	mov	r15, rax
	mov	qword ptr [rbx], r15
	xor	ebx, ebx
	test	r14, r14
	je	.label_730
	add	r12, 8
	xor	ebx, ebx
	mov	qword ptr [rsp + 0x10], r15
	jmp	.label_733
	nop	
.label_732:
	inc	rbx
	add	r12, 0x10
	cmp	rbx, r14
	jb	.label_733
	jmp	.label_730
.label_723:
	call	__errno_location
	mov	r15, rax
	mov	ebp, dword ptr [r15]
	cmp	ebp, 0x18
	jne	.label_719
	mov	edi, r13d
	call	close
	mov	dword ptr [r15], 0x18
	xor	eax, eax
	mov	r15, qword ptr [rsp + 0x10]
	jmp	.label_720
.label_733:
	mov	rbp, qword ptr [r12]
	test	rbp, rbp
	je	.label_725
	movzx	eax, byte ptr [rbp + 0xc]
	test	al, al
	je	.label_725
	cmp	al, 1
	jne	.label_728
	mov	r13d, dword ptr [rbp + 8]
	mov	dword ptr [rsp + 8], r13d
	mov	rdi, qword ptr [rip + proctab]
	lea	rsi, [rsp]
	call	hash_delete
	test	rax, rax
	je	.label_728
	mov	byte ptr [rax + 0xc], 2
	mov	edi, r13d
	call	reap
.label_728:
	lea	rdi, [rbp + 0xd]
	xor	esi, esi
	xor	eax, eax
	call	open
	mov	r13d, eax
	test	r13d, r13d
	mov	eax, 0
	js	.label_720
	mov	esi, 9
	lea	rdi, [rsp]
	call	pipe_fork
	cmp	eax, -1
	je	.label_723
	test	eax, eax
	je	.label_724
	mov	dword ptr [rbp + 8], eax
	mov	rax, qword ptr [rip + proctab]
	test	rax, rax
	jne	.label_726
	mov	edi, 0x2f
	xor	esi, esi
	mov	edx, OFFSET FLAT:proctab_hasher
	mov	ecx, OFFSET FLAT:proctab_comparator
	xor	r8d, r8d
	call	hash_initialize
	mov	qword ptr [rip + proctab],  rax
	test	rax, rax
	je	.label_731
.label_726:
	mov	byte ptr [rbp + 0xc], 1
	mov	rdi, rax
	mov	rsi, rbp
	call	hash_insert
	test	rax, rax
	je	.label_731
	mov	edi, r13d
	call	close
	mov	edi, dword ptr [rsp + 4]
	call	close
	mov	edi, dword ptr [rsp]
	mov	esi, OFFSET FLAT:label_289
	call	fdopen
	test	rax, rax
	jne	.label_720
	call	__errno_location
	mov	rbp, rax
	mov	r15d, dword ptr [rbp]
	mov	edi, dword ptr [rsp]
	call	close
	mov	dword ptr [rbp], r15d
	mov	r15, qword ptr [rsp + 0x10]
	xor	eax, eax
	jmp	.label_720
	nop	dword ptr [rax + rax]
.label_725:
	mov	rdi, qword ptr [r12 - 8]
	mov	esi, OFFSET FLAT:label_289
	call	stream_open
.label_720:
	mov	qword ptr [r15 + rbx*8], rax
	test	rax, rax
	jne	.label_732
.label_730:
	mov	rax, rbx
	add	rsp, 0x18
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_724:
	mov	edi, dword ptr [rsp]
	call	close
	xor	esi, esi
	mov	edi, r13d
	call	move_fd
	mov	edi, dword ptr [rsp + 4]
	mov	esi, 1
	call	move_fd
	mov	rdi, qword ptr [rip + compress_program]
	mov	edx, OFFSET FLAT:label_721
	xor	ecx, ecx
	xor	eax, eax
	mov	rsi, rdi
	call	execlp
	call	__errno_location
	mov	edi, dword ptr [rax]
	mov	esi, OFFSET FLAT:label_727
	call	async_safe_die
.label_731:
	call	xalloc_die
.label_719:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_729
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	rsi, qword ptr [rip + compress_program]
	mov	edi, 4
	call	quotearg_style
	mov	rcx, rax
	mov	edi, 2
	xor	eax, eax
	mov	esi, ebp
	mov	rdx, rbx
	call	error
.label_722:
	call	xalloc_die
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408b10

	.globl mergefps
	.type mergefps, @function
mergefps:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x138
	mov	qword ptr [rsp + 0x40], r9
	mov	qword ptr [rsp + 0xa0], r8
	mov	qword ptr [rsp + 0x98], rcx
	mov	rbp, rdx
	mov	qword ptr [rsp + 0x88], rsi
	mov	r15, rdi
	movabs	rax, 0x24924924924924a
	cmp	rbp, rax
	jae	.label_764
	imul	rdi, rbp, 0x38
	call	xmalloc
	mov	r13, rax
	lea	rbx, [rbp*8]
	mov	rdi, rbx
	call	xmalloc
	mov	qword ptr [rsp + 0x20], rax
	mov	rdi, rbx
	call	xmalloc
	mov	qword ptr [rsp + 0x50], rax
	mov	rdi, rbx
	call	xmalloc
	mov	qword ptr [rsp + 0x10], rax
	mov	rax, qword ptr [rip + keylist]
	mov	qword ptr [rsp + 0x130], rax
	mov	qword ptr [rsp + 0xd0], 0
	test	rbp, rbp
	mov	r12, qword ptr [rsp + 0x40]
	je	.label_737
	mov	qword ptr [rsp + 0x18], r13
	lea	rax, [r15 + 0x40]
	mov	qword ptr [rsp + 0x70], rax
	lea	rax, [r12 + 8]
	mov	qword ptr [rsp + 0xb8], rax
	mov	qword ptr [rsp + 0xc8], r15
	lea	rax, [r15 + 0x10]
	mov	qword ptr [rsp + 0xb0], rax
	mov	qword ptr [rsp + 0x68], -1
	xor	eax, eax
	mov	qword ptr [rsp + 0x28], rax
	mov	r12, qword ptr [rsp + 0x40]
.label_785:
	mov	rcx, qword ptr [rsp + 0x28]
	mov	rsi, rcx
	not	rsi
	mov	rdx, -2
	sub	rdx, rcx
	imul	rdi, rcx, 0x38
	mov	rax, qword ptr [rsp + 0x18]
	lea	rbx, [rax + rdi]
	mov	qword ptr [rsp + 0xa8], rdi
	lea	rax, [rax + rdi + 0x18]
	mov	qword ptr [rsp + 0x58], rax
	mov	rdi, rcx
	shl	rdi, 4
	add	rdi, qword ptr [rsp + 0xc8]
	add	rsi, rbp
	mov	qword ptr [rsp + 0x80], rsi
	add	rdx, rbp
	mov	qword ptr [rsp + 0xc0], rdx
	mov	rcx, rbp
	neg	rcx
	mov	rax, qword ptr [rsp + 0x68]
	lea	eax, [rbp + rax]
	xor	edx, edx
	mov	qword ptr [rsp + 0x78], rdi
	nop	
.label_774:
	mov	dword ptr [rsp + 0x90], eax
	and	al, 3
	movzx	r13d, al
	mov	qword ptr [rsp + 0x48], rcx
	lea	r15, [rcx + r13]
	neg	r13
	mov	rax, qword ptr [rsp + 0x80]
	sub	rax, rdx
	mov	qword ptr [rsp + 8], rax
	mov	r14, qword ptr [rsp + 0xc0]
	mov	qword ptr [rsp + 0x38], rdx
	sub	r14, rdx
	mov	rcx, qword ptr [rip + merge_buffer_size]
	mov	rax, qword ptr [rip + sort_size]
	xor	edx, edx
	mov	qword ptr [rsp + 0x30], rbp
	div	rbp
	cmp	rcx, rax
	cmova	rax, rcx
	nop	dword ptr [rax + rax]
.label_786:
	mov	ecx, eax
	and	ecx, 0x1f
	mov	ebp, 0x20
	sub	rbp, rcx
	add	rbp, rax
	mov	rdi, rbp
	call	malloc
	mov	qword ptr [rbx], rax
	test	rax, rax
	jne	.label_803
	mov	rax, rbp
	shr	rax, 1
	cmp	rbp, 0x43
	ja	.label_786
	jmp	.label_804
	nop	word ptr cs:[rax + rax]
.label_803:
	mov	qword ptr [rsp + 0x60], r14
	mov	rcx, qword ptr [rsp + 0x58]
	mov	qword ptr [rcx], rbp
	mov	eax, 0x20
	movq	xmm0, rax
	pslldq	xmm0, 8
	movdqu	xmmword ptr [rcx + 8], xmm0
	mov	byte ptr [rcx + 0x18], 0
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [rcx - 0x10], xmm0
	mov	rbp, qword ptr [rsp + 0x28]
	mov	rsi, qword ptr [r12 + rbp*8]
	mov	r14, qword ptr [rsp + 0x78]
	mov	rdx, qword ptr [r14]
	mov	rdi, rbx
	call	fillbuf
	test	al, al
	jne	.label_759
	mov	rdi, qword ptr [r12 + rbp*8]
	mov	rsi, qword ptr [r14]
	call	xfclose
	mov	rax, qword ptr [rsp + 0x88]
	cmp	rbp, rax
	jae	.label_773
	dec	rax
	mov	qword ptr [rsp + 0x88], rax
	mov	rdi, qword ptr [r14]
	call	zaptemp
.label_773:
	mov	rdi, qword ptr [rbx]
	call	free
	mov	rax, qword ptr [rsp + 0x30]
	dec	rax
	mov	rsi, rax
	cmp	rbp, rax
	jae	.label_784
	mov	rdi, qword ptr [rsp + 8]
	and	edi, 3
	cmp	qword ptr [rsp + 0x60], 3
	mov	rax, rbp
	jb	.label_788
	mov	rcx, qword ptr [rsp + 0x70]
	mov	rax, rbp
	nop	word ptr cs:[rax + rax]
.label_796:
	movups	xmm0, xmmword ptr [rcx - 0x30]
	movups	xmmword ptr [rcx - 0x40], xmm0
	mov	rdx, qword ptr [r12 + rax*8 + 8]
	mov	qword ptr [r12 + rax*8], rdx
	movups	xmm0, xmmword ptr [rcx - 0x20]
	movups	xmmword ptr [rcx - 0x30], xmm0
	mov	rdx, qword ptr [r12 + rax*8 + 0x10]
	mov	qword ptr [r12 + rax*8 + 8], rdx
	movups	xmm0, xmmword ptr [rcx - 0x10]
	movups	xmmword ptr [rcx - 0x20], xmm0
	mov	rdx, qword ptr [r12 + rax*8 + 0x18]
	mov	qword ptr [r12 + rax*8 + 0x10], rdx
	movdqu	xmm0, xmmword ptr [rcx]
	movdqu	xmmword ptr [rcx - 0x10], xmm0
	mov	rdx, qword ptr [r12 + rax*8 + 0x20]
	mov	qword ptr [r12 + rax*8 + 0x18], rdx
	add	rcx, 0x40
	lea	rdx, [r15 + rax + 4]
	lea	rax, [rax + 4]
	cmp	rdx, -1
	jne	.label_796
.label_788:
	test	rdi, rdi
	je	.label_748
	mov	rcx, qword ptr [rsp + 0xb8]
	lea	rcx, [rcx + rax*8]
	shl	rax, 4
	add	rax, qword ptr [rsp + 0xb0]
	nop	dword ptr [rax + rax]
.label_756:
	movdqu	xmm0, xmmword ptr [rax]
	movdqu	xmmword ptr [rax - 0x10], xmm0
	mov	rdx, qword ptr [rcx]
	mov	qword ptr [rcx - 8], rdx
	add	rcx, 8
	add	rax, 0x10
	inc	r13
	jne	.label_756
.label_748:
	mov	rdx, qword ptr [rsp + 0x38]
	inc	rdx
	mov	rcx, qword ptr [rsp + 0x48]
	inc	rcx
	mov	eax, dword ptr [rsp + 0x90]
	add	al, 3
	mov	rbp, rsi
	cmp	qword ptr [rsp + 0x28], rbp
	jb	.label_774
	jmp	.label_738
	nop	word ptr cs:[rax + rax]
.label_759:
	mov	rax, qword ptr [rbx]
	mov	rcx, qword ptr [rsp + 0x58]
	mov	rcx, qword ptr [rcx]
	lea	rdx, [rax + rcx]
	lea	rax, [rax + rcx - 0x20]
	mov	rcx, qword ptr [rsp + 0x20]
	mov	qword ptr [rcx + rbp*8], rax
	mov	rax, qword ptr [rsp + 0x18]
	mov	rcx, qword ptr [rsp + 0xa8]
	mov	rax, qword ptr [rax + rcx + 0x10]
	shl	rax, 5
	sub	rdx, rax
	mov	rax, qword ptr [rsp + 0x50]
	mov	qword ptr [rax + rbp*8], rdx
	inc	rbp
	add	qword ptr [rsp + 0x70], 0x10
	dec	qword ptr [rsp + 0x68]
	mov	rax, rbp
	mov	rbp, qword ptr [rsp + 0x30]
	mov	rcx, rax
	mov	qword ptr [rsp + 0x28], rcx
	cmp	rax, rbp
	jb	.label_785
	jmp	.label_738
.label_784:
	mov	rbp, rsi
.label_738:
	test	rbp, rbp
	mov	r13, qword ptr [rsp + 0x18]
	je	.label_737
	xor	ecx, ecx
	cmp	rbp, 3
	mov	r13, rbp
	mov	rbx, qword ptr [rsp + 0x10]
	jbe	.label_742
	xor	ecx, ecx
	mov	rax, r13
	and	rax, 0xfffffffffffffffc
	je	.label_742
	lea	rdi, [rax - 4]
	mov	rsi, rdi
	shr	rsi, 2
	lea	ecx, [rsi + 1]
	and	ecx, 3
	mov	edx, 1
	cmp	rdi, 0xc
	jae	.label_772
	movq	xmm0, rdx
	pslldq	xmm0, 8
	jmp	.label_739
.label_772:
	lea	rdx, [rcx - 1]
	sub	rdx, rsi
	mov	esi, 1
	movq	xmm0, rsi
	pslldq	xmm0, 8
	movdqa	xmm8, xmmword ptr [rip + label_762]
	movdqa	xmm9, xmmword ptr [rip + label_763]
	movdqa	xmm10, xmmword ptr [rip + label_766]
	movdqa	xmm11, xmmword ptr [rip + label_767]
	movdqa	xmm5, xmmword ptr [rip + label_768]
	movdqa	xmm6, xmmword ptr [rip + label_769]
	movdqa	xmm7, xmmword ptr [rip + label_770]
	movdqa	xmm1, xmmword ptr [rip + label_771]
	nop	word ptr cs:[rax + rax]
.label_802:
	movdqa	xmm2, xmm0
	paddq	xmm2, xmm8
	movdqa	xmm3, xmm0
	paddq	xmm3, xmm9
	movq	rsi, xmm0
	movdqu	xmmword ptr [rbx + rsi*8], xmm0
	movdqu	xmmword ptr [rbx + rsi*8 + 0x10], xmm2
	movdqa	xmm2, xmm0
	paddq	xmm2, xmm10
	movdqa	xmm4, xmm0
	paddq	xmm4, xmm11
	movq	rsi, xmm3
	movdqu	xmmword ptr [rbx + rsi*8], xmm3
	movdqu	xmmword ptr [rbx + rsi*8 + 0x10], xmm2
	movdqa	xmm2, xmm0
	paddq	xmm2, xmm5
	movdqa	xmm3, xmm0
	paddq	xmm3, xmm6
	movq	rsi, xmm4
	movdqu	xmmword ptr [rbx + rsi*8], xmm4
	movdqu	xmmword ptr [rbx + rsi*8 + 0x10], xmm2
	movdqa	xmm2, xmm0
	paddq	xmm2, xmm7
	paddq	xmm0, xmm1
	movq	rsi, xmm3
	movdqu	xmmword ptr [rbx + rsi*8], xmm3
	movdqu	xmmword ptr [rbx + rsi*8 + 0x10], xmm2
	add	rdx, 4
	jne	.label_802
.label_739:
	test	rcx, rcx
	je	.label_761
	neg	rcx
	movdqa	xmm1, xmmword ptr [rip + label_762]
	movdqa	xmm2, xmmword ptr [rip + label_763]
	nop	word ptr cs:[rax + rax]
.label_735:
	movdqa	xmm3, xmm0
	movq	rdx, xmm0
	movdqu	xmmword ptr [rbx + rdx*8], xmm0
	paddq	xmm0, xmm1
	paddq	xmm3, xmm2
	movdqu	xmmword ptr [rbx + rdx*8 + 0x10], xmm0
	inc	rcx
	movdqa	xmm0, xmm3
	jne	.label_735
.label_761:
	cmp	r13, rax
	mov	rcx, rax
	je	.label_787
	nop	dword ptr [rax]
.label_742:
	mov	qword ptr [rbx + rcx*8], rcx
	inc	rcx
	cmp	r13, rcx
	jne	.label_742
.label_787:
	cmp	r13, 2
	jb	.label_792
	mov	ebx, 1
	mov	rbp, qword ptr [rsp + 0x10]
	nop	dword ptr [rax]
.label_809:
	mov	r15, qword ptr [rbp + rbx*8 - 8]
	mov	rax, qword ptr [rsp + 0x20]
	mov	rdi, qword ptr [rax + r15*8]
	mov	r14, qword ptr [rbp + rbx*8]
	mov	rsi, qword ptr [rax + r14*8]
	call	compare
	test	eax, eax
	jle	.label_805
	mov	qword ptr [rbp + rbx*8 - 8], r14
	mov	qword ptr [rbp + rbx*8], r15
	xor	ebx, ebx
.label_805:
	inc	rbx
	cmp	rbx, r13
	jb	.label_809
.label_792:
	test	r13, r13
	mov	rax, r13
	mov	r12, qword ptr [rsp + 0x40]
	mov	r13, qword ptr [rsp + 0x18]
	mov	rbp, qword ptr [rsp + 0xc8]
	je	.label_737
	lea	rcx, [rax - 1]
	mov	rsi, qword ptr [rsp + 0x10]
	mov	rdx, rsi
	add	rdx, 8
	mov	qword ptr [rsp + 0x38], rdx
	mov	rdx, qword ptr [rsp + 0x50]
	add	rdx, 0x10
	mov	qword ptr [rsp + 0x118], rdx
	mov	rdx, qword ptr [rsp + 0x20]
	add	rdx, 0x10
	mov	qword ptr [rsp + 0x110], rdx
	lea	rdx, [r13 + 0x70]
	mov	rdi, rsi
	mov	qword ptr [rsp + 0x108], rdx
	lea	rdx, [rbp + 0x20]
	mov	qword ptr [rsp + 0x100], rdx
	lea	rdx, [r12 + 0x10]
	mov	qword ptr [rsp + 0xf8], rdx
	mov	edx, 1
	sub	rdx, rax
	mov	qword ptr [rsp + 0xf0], rdx
	lea	rsi, [rax - 5]
	xor	r10d, r10d
	mov	qword ptr [rsp + 0x120], rcx
	mov	rbx, rcx
	lea	rcx, [rax - 2]
	mov	qword ptr [rsp + 0x78], rcx
	xor	ecx, ecx
	mov	qword ptr [rsp + 0x48], rcx
	xor	ecx, ecx
	mov	qword ptr [rsp + 0x90], rcx
	nop	dword ptr [rax]
.label_749:
	mov	r15, rax
	mov	qword ptr [rsp + 0xc0], rsi
	mov	rax, rsi
	shr	rax, 2
	lea	edx, [rax + 1]
	and	edx, 3
	mov	rcx, rdx
	neg	rcx
	mov	qword ptr [rsp + 0xb0], rcx
	dec	rdx
	sub	rdx, rax
	mov	qword ptr [rsp + 0x70], rdx
	mov	qword ptr [rsp + 0x80], rbx
	mov	eax, ebx
	and	eax, 1
	mov	rcx, r15
	sub	rcx, rax
	mov	qword ptr [rsp + 0x128], rcx
	mov	rax, qword ptr [rsp + 0x120]
	sub	rax, r10
	mov	qword ptr [rsp + 0x60], rax
	lea	rax, [rax - 4]
	mov	qword ptr [rsp + 0xa8], rax
	shr	rax, 2
	inc	rax
	mov	qword ptr [rsp + 0x68], rax
	mov	rax, qword ptr [rsp + 0x78]
	mov	qword ptr [rsp + 0x58], r10
	sub	rax, r10
	mov	qword ptr [rsp + 0xb8], rax
	lea	rax, [r15 - 1]
	mov	qword ptr [rsp + 0x30], rax
	mov	qword ptr [rsp + 0x28], r15
	jmp	.label_793
	nop	dword ptr [rax]
.label_743:
	mov	rdi, qword ptr [rsp + 0x10]
	mov	qword ptr [rdi + rcx*8], rbp
	mov	r15, qword ptr [rsp + 0x28]
.label_793:
	mov	rbp, qword ptr [rdi]
	mov	rax, qword ptr [rsp + 0x20]
	mov	r13, qword ptr [rax + rbp*8]
	cmp	byte ptr [rip + unique],  1
	jne	.label_775
	mov	rdi, qword ptr [rsp + 0x48]
	test	rdi, rdi
	je	.label_740
	mov	rsi, r13
	call	compare
	test	eax, eax
	je	.label_777
	lea	rdi, [rsp + 0xd0]
	mov	rsi, qword ptr [rsp + 0x98]
	mov	rdx, qword ptr [rsp + 0xa0]
	call	write_line
.label_740:
	mov	rdx, qword ptr [r13 + 8]
	mov	rax, qword ptr [rsp + 0x90]
	cmp	rax, rdx
	jae	.label_791
	nop	dword ptr [rax + rax]
.label_797:
	test	rax, rax
	je	.label_795
	add	rax, rax
	cmp	rax, rdx
	jb	.label_797
	jmp	.label_800
	nop	
.label_775:
	mov	rdi, r13
	mov	rsi, qword ptr [rsp + 0x98]
	mov	rdx, qword ptr [rsp + 0xa0]
	call	write_line
	jmp	.label_777
.label_791:
	mov	rdi, qword ptr [rsp + 0xd0]
	jmp	.label_810
.label_795:
	mov	rax, rdx
.label_800:
	mov	rdi, qword ptr [rsp + 0xd0]
	mov	rbx, rax
	call	free
	mov	rax, rbx
	mov	qword ptr [rsp + 0x90], rax
	mov	rdi, rbx
	call	xmalloc
	mov	rdi, rax
	mov	qword ptr [rsp + 0xd0], rdi
	mov	rdx, qword ptr [r13 + 8]
.label_810:
	mov	qword ptr [rsp + 0xd8], rdx
	mov	rsi, qword ptr [r13]
	call	memcpy
	cmp	qword ptr [rsp + 0x130], 0
	je	.label_755
	mov	rax, qword ptr [rsp + 0xd0]
	mov	rcx, qword ptr [r13]
	mov	rdx, qword ptr [r13 + 0x10]
	sub	rdx, rcx
	add	rdx, rax
	mov	qword ptr [rsp + 0xe0], rdx
	mov	rdx, qword ptr [r13 + 0x18]
	sub	rdx, rcx
	add	rdx, rax
	mov	qword ptr [rsp + 0xe8], rdx
.label_755:
	lea	rax, [rsp + 0xd0]
	mov	qword ptr [rsp + 0x48], rax
.label_777:
	mov	rax, qword ptr [rsp + 0x50]
	cmp	qword ptr [rax + rbp*8], r13
	jae	.label_780
	add	r13, -0x20
	mov	rax, qword ptr [rsp + 0x20]
	mov	qword ptr [rax + rbp*8], r13
	jmp	.label_794
	nop	
.label_780:
	imul	r14, rbp, 0x38
	mov	rbx, rbp
	mov	rbp, qword ptr [rsp + 0x18]
	lea	rdi, [rbp + r14]
	mov	rsi, qword ptr [r12 + rbx*8]
	mov	rax, rbx
	shl	rax, 4
	mov	r13, qword ptr [rsp + 0xc8]
	mov	rdx, qword ptr [r13 + rax]
	call	fillbuf
	test	al, al
	je	.label_801
	mov	rax, qword ptr [rbp + r14]
	mov	rcx, qword ptr [rbp + r14 + 0x18]
	lea	rdx, [rax + rcx]
	lea	r13, [rax + rcx - 0x20]
	mov	rax, qword ptr [rsp + 0x20]
	mov	qword ptr [rax + rbx*8], r13
	mov	rax, qword ptr [rbp + r14 + 0x10]
	shl	rax, 5
	sub	rdx, rax
	mov	rax, qword ptr [rsp + 0x50]
	mov	qword ptr [rax + rbx*8], rdx
	mov	rbp, rbx
.label_794:
	cmp	r15, 2
	mov	ecx, 0
	jb	.label_743
	mov	r14, rbp
	mov	ebx, 1
	mov	rbp, qword ptr [rsp + 0x28]
	mov	r15d, 1
	nop	dword ptr [rax]
.label_778:
	mov	rax, qword ptr [rsp + 0x10]
	mov	r12, qword ptr [rax + rbx*8]
	mov	rax, qword ptr [rsp + 0x20]
	mov	rsi, qword ptr [rax + r12*8]
	mov	rdi, r13
	call	compare
	test	eax, eax
	js	.label_744
	sete	al
	cmp	r14, r12
	setb	cl
	lea	rdx, [rbx + 1]
	and	cl, al
	cmove	r15, rdx
	test	cl, cl
	cmove	rbx, rbp
.label_744:
	mov	rbp, rbx
	lea	rbx, [rbp + r15]
	shr	rbx, 1
	cmp	r15, rbp
	jb	.label_778
	mov	rax, r15
	dec	rax
	mov	ecx, 0
	mov	r12, qword ptr [rsp + 0x40]
	mov	rbp, r14
	je	.label_743
	cmp	rax, 4
	mov	edx, 0
	jb	.label_751
	mov	rcx, rax
	and	rcx, 0xfffffffffffffffc
	mov	edx, 0
	je	.label_751
	lea	rsi, [r15 - 5]
	mov	rbp, rsi
	shr	rbp, 2
	lea	edx, [rbp + 1]
	and	edx, 3
	cmp	rsi, 0xc
	mov	esi, 0
	mov	rbx, qword ptr [rsp + 0x10]
	jb	.label_753
	lea	rdi, [rdx - 1]
	sub	rdi, rbp
	xor	esi, esi
	nop	dword ptr [rax + rax]
.label_746:
	movups	xmm0, xmmword ptr [rbx + rsi*8 + 8]
	movups	xmm1, xmmword ptr [rbx + rsi*8 + 0x18]
	movups	xmmword ptr [rbx + rsi*8], xmm0
	movups	xmmword ptr [rbx + rsi*8 + 0x10], xmm1
	movups	xmm0, xmmword ptr [rbx + rsi*8 + 0x28]
	movups	xmm1, xmmword ptr [rbx + rsi*8 + 0x38]
	movups	xmmword ptr [rbx + rsi*8 + 0x20], xmm0
	movups	xmmword ptr [rbx + rsi*8 + 0x30], xmm1
	movups	xmm0, xmmword ptr [rbx + rsi*8 + 0x48]
	movups	xmm1, xmmword ptr [rbx + rsi*8 + 0x58]
	movups	xmmword ptr [rbx + rsi*8 + 0x40], xmm0
	movups	xmmword ptr [rbx + rsi*8 + 0x50], xmm1
	movdqu	xmm0, xmmword ptr [rbx + rsi*8 + 0x68]
	movdqu	xmm1, xmmword ptr [rbx + rsi*8 + 0x78]
	movdqu	xmmword ptr [rbx + rsi*8 + 0x60], xmm0
	movdqu	xmmword ptr [rbx + rsi*8 + 0x70], xmm1
	add	rsi, 0x10
	add	rdi, 4
	jne	.label_746
.label_753:
	test	rdx, rdx
	je	.label_790
	neg	rdx
	nop	word ptr cs:[rax + rax]
.label_807:
	mov	rdi, rsi
	or	rdi, 1
	movdqu	xmm0, xmmword ptr [rbx + rdi*8]
	movdqu	xmm1, xmmword ptr [rbx + rdi*8 + 0x10]
	movdqu	xmmword ptr [rbx + rsi*8], xmm0
	movdqu	xmmword ptr [rbx + rsi*8 + 0x10], xmm1
	add	rsi, 4
	inc	rdx
	jne	.label_807
.label_790:
	cmp	rax, rcx
	mov	rdx, rcx
	mov	r12, qword ptr [rsp + 0x40]
	mov	rbp, r14
	je	.label_781
	nop	word ptr cs:[rax + rax]
.label_751:
	mov	rcx, qword ptr [rsp + 0x38]
	lea	rcx, [rcx + rdx*8]
	not	rdx
	add	rdx, r15
	nop	
.label_758:
	mov	rsi, qword ptr [rcx]
	mov	qword ptr [rcx - 8], rsi
	add	rcx, 8
	dec	rdx
	jne	.label_758
.label_781:
	mov	rcx, rax
	jmp	.label_743
	nop	dword ptr [rax + rax]
.label_801:
	mov	qword ptr [rsp + 8], rbx
	cmp	r15, 2
	jb	.label_741
	mov	rax, qword ptr [rsp + 0x60]
	and	eax, 1
	mov	rcx, qword ptr [rsp + 0x78]
	cmp	rcx, qword ptr [rsp + 0x58]
	jne	.label_799
	mov	ecx, 1
	mov	rsi, qword ptr [rsp + 8]
	jmp	.label_806
	nop	dword ptr [rax + rax]
.label_741:
	mov	r14, qword ptr [rsp + 0x18]
	jmp	.label_734
	nop	word ptr [rax + rax]
.label_799:
	mov	ecx, 1
	mov	rsi, qword ptr [rsp + 8]
	mov	rdi, qword ptr [rsp + 0x128]
	nop	word ptr cs:[rax + rax]
.label_765:
	mov	rdx, qword ptr [rsp + 0x38]
	mov	rdx, qword ptr [rdx + rcx*8 - 8]
	cmp	rdx, rsi
	jbe	.label_798
	dec	rdx
	mov	rsi, qword ptr [rsp + 0x38]
	mov	qword ptr [rsi + rcx*8 - 8], rdx
.label_798:
	mov	rsi, qword ptr [rsp + 0x10]
	mov	rdx, qword ptr [rsi + rcx*8 + 8]
	cmp	rdx, qword ptr [rsi]
	jbe	.label_754
	dec	rdx
	mov	rsi, qword ptr [rsp + 0x38]
	mov	qword ptr [rsi + rcx*8], rdx
.label_754:
	add	rcx, 2
	mov	rdx, qword ptr [rsp + 0x10]
	mov	rsi, qword ptr [rdx]
	cmp	rdi, rcx
	jne	.label_765
.label_806:
	mov	qword ptr [rsp + 8], rsi
	test	rax, rax
	mov	r14, qword ptr [rsp + 0x18]
	je	.label_734
	mov	rdx, qword ptr [rsp + 0x10]
	mov	rax, qword ptr [rdx + rcx*8]
	cmp	rax, qword ptr [rsp + 8]
	jbe	.label_782
	dec	rax
	mov	qword ptr [rdx + rcx*8], rax
.label_782:
	mov	rax, qword ptr [rdx]
	mov	qword ptr [rsp + 8], rax
.label_734:
	mov	rbx, qword ptr [rsp + 8]
	mov	rdi, qword ptr [r12 + rbx*8]
	mov	r15, rbx
	shl	r15, 4
	mov	rsi, qword ptr [r13 + r15]
	call	xfclose
	mov	rcx, qword ptr [rsp + 0x88]
	cmp	rbx, rcx
	jae	.label_757
	lea	rax, [r13 + r15]
	dec	rcx
	mov	qword ptr [rsp + 0x88], rcx
	mov	rdi, qword ptr [rax]
	call	zaptemp
.label_757:
	mov	rbp, qword ptr [rsp + 8]
	imul	rbx, rbp, 0x38
	mov	rdi, qword ptr [r14 + rbx]
	call	free
	cmp	rbp, qword ptr [rsp + 0x30]
	jae	.label_747
	mov	r8, qword ptr [rsp + 0x60]
	sub	r8d, ebp
	and	r8d, 1
	cmp	qword ptr [rsp + 0xb8], rbp
	je	.label_736
	mov	rax, qword ptr [rsp + 0x118]
	lea	rcx, [rax + rbp*8]
	mov	rax, qword ptr [rsp + 0x110]
	lea	rdx, [rax + rbp*8]
	add	rbx, qword ptr [rsp + 0x108]
	add	r15, qword ptr [rsp + 0x100]
	mov	rax, qword ptr [rsp + 0xf8]
	lea	rsi, [rax + rbp*8]
	mov	r9, qword ptr [rsp + 0x80]
	sub	r9d, ebp
	and	r9d, 1
	add	r9, qword ptr [rsp + 0xf0]
	add	r9, rbp
	xor	eax, eax
	nop	dword ptr [rax]
.label_750:
	mov	rbp, qword ptr [rsi + rax*8 - 8]
	mov	qword ptr [rsi + rax*8 - 0x10], rbp
	movups	xmm0, xmmword ptr [r15 - 0x10]
	movups	xmmword ptr [r15 - 0x20], xmm0
	mov	rbp, qword ptr [rbx - 8]
	mov	qword ptr [rbx - 0x40], rbp
	movups	xmm0, xmmword ptr [rbx - 0x38]
	movups	xmm1, xmmword ptr [rbx - 0x28]
	movups	xmm2, xmmword ptr [rbx - 0x18]
	movups	xmmword ptr [rbx - 0x50], xmm2
	movups	xmmword ptr [rbx - 0x60], xmm1
	movups	xmmword ptr [rbx - 0x70], xmm0
	mov	rbp, qword ptr [rdx + rax*8 - 8]
	mov	qword ptr [rdx + rax*8 - 0x10], rbp
	mov	rbp, qword ptr [rcx + rax*8 - 8]
	mov	qword ptr [rcx + rax*8 - 0x10], rbp
	mov	rbp, qword ptr [rsi + rax*8]
	mov	qword ptr [rsi + rax*8 - 8], rbp
	movups	xmm0, xmmword ptr [r15]
	movups	xmmword ptr [r15 - 0x10], xmm0
	mov	rbp, qword ptr [rbx + 0x30]
	mov	qword ptr [rbx - 8], rbp
	movdqu	xmm0, xmmword ptr [rbx]
	movdqu	xmm1, xmmword ptr [rbx + 0x10]
	movdqu	xmm2, xmmword ptr [rbx + 0x20]
	movdqu	xmmword ptr [rbx - 0x18], xmm2
	movdqu	xmmword ptr [rbx - 0x28], xmm1
	movdqu	xmmword ptr [rbx - 0x38], xmm0
	mov	rbp, qword ptr [rdx + rax*8]
	mov	qword ptr [rdx + rax*8 - 8], rbp
	mov	rbp, qword ptr [rcx + rax*8]
	mov	qword ptr [rcx + rax*8 - 8], rbp
	add	rax, 2
	add	rbx, 0x70
	add	r15, 0x20
	mov	rdi, r9
	add	rdi, rax
	jne	.label_750
	add	qword ptr [rsp + 8], rax
	mov	r12, qword ptr [rsp + 0x40]
	mov	r14, qword ptr [rsp + 0x18]
.label_736:
	test	r8, r8
	mov	rdx, qword ptr [rsp + 8]
	je	.label_747
	lea	rax, [rdx + 1]
	mov	rcx, qword ptr [r12 + rdx*8 + 8]
	mov	qword ptr [r12 + rdx*8], rcx
	mov	rcx, rdx
	shl	rcx, 4
	shl	rax, 4
	movups	xmm0, xmmword ptr [r13 + rax]
	movups	xmmword ptr [r13 + rcx], xmm0
	imul	rax, rdx, 0x38
	mov	rcx, qword ptr [r14 + rax + 0x68]
	mov	qword ptr [r14 + rax + 0x30], rcx
	movdqu	xmm0, xmmword ptr [r14 + rax + 0x38]
	movdqu	xmm1, xmmword ptr [r14 + rax + 0x48]
	movdqu	xmm2, xmmword ptr [r14 + rax + 0x58]
	movdqu	xmmword ptr [r14 + rax + 0x20], xmm2
	movdqu	xmmword ptr [r14 + rax + 0x10], xmm1
	movdqu	xmmword ptr [r14 + rax], xmm0
	mov	rcx, qword ptr [rsp + 0x20]
	mov	rax, qword ptr [rcx + rdx*8 + 8]
	mov	qword ptr [rcx + rdx*8], rax
	mov	rcx, qword ptr [rsp + 0x50]
	mov	rax, qword ptr [rcx + rdx*8 + 8]
	mov	qword ptr [rcx + rdx*8], rax
.label_747:
	cmp	qword ptr [rsp + 0x30], 0
	mov	rsi, qword ptr [rsp + 0xc0]
	mov	r10, qword ptr [rsp + 0x58]
	mov	rbx, qword ptr [rsp + 0x80]
	mov	rdi, qword ptr [rsp + 0x10]
	je	.label_789
	mov	r9, qword ptr [rsp + 0x60]
	cmp	r9, 3
	mov	ecx, 0
	mov	rbp, qword ptr [rsp + 0x28]
	jbe	.label_776
	mov	r8, r9
	and	r8, 0xfffffffffffffffc
	mov	ecx, 0
	je	.label_776
	mov	rdx, qword ptr [rsp + 0x68]
	and	edx, 3
	cmp	qword ptr [rsp + 0xa8], 0xc
	mov	ecx, 0
	mov	rax, qword ptr [rsp + 0x70]
	jb	.label_808
	xor	ecx, ecx
	nop	dword ptr [rax]
.label_745:
	movups	xmm0, xmmword ptr [rdi + rcx*8 + 8]
	movups	xmm1, xmmword ptr [rdi + rcx*8 + 0x18]
	movups	xmmword ptr [rdi + rcx*8], xmm0
	movups	xmmword ptr [rdi + rcx*8 + 0x10], xmm1
	movups	xmm0, xmmword ptr [rdi + rcx*8 + 0x28]
	movups	xmm1, xmmword ptr [rdi + rcx*8 + 0x38]
	movups	xmmword ptr [rdi + rcx*8 + 0x20], xmm0
	movups	xmmword ptr [rdi + rcx*8 + 0x30], xmm1
	movups	xmm0, xmmword ptr [rdi + rcx*8 + 0x48]
	movups	xmm1, xmmword ptr [rdi + rcx*8 + 0x58]
	movups	xmmword ptr [rdi + rcx*8 + 0x40], xmm0
	movups	xmmword ptr [rdi + rcx*8 + 0x50], xmm1
	movdqu	xmm0, xmmword ptr [rdi + rcx*8 + 0x68]
	movdqu	xmm1, xmmword ptr [rdi + rcx*8 + 0x78]
	movdqu	xmmword ptr [rdi + rcx*8 + 0x60], xmm0
	movdqu	xmmword ptr [rdi + rcx*8 + 0x70], xmm1
	add	rcx, 0x10
	add	rax, 4
	jne	.label_745
.label_808:
	test	rdx, rdx
	mov	rax, qword ptr [rsp + 0xb0]
	je	.label_779
	nop	word ptr [rax + rax]
.label_783:
	mov	rdx, rcx
	or	rdx, 1
	movdqu	xmm0, xmmword ptr [rdi + rdx*8]
	movdqu	xmm1, xmmword ptr [rdi + rdx*8 + 0x10]
	movdqu	xmmword ptr [rdi + rcx*8], xmm0
	movdqu	xmmword ptr [rdi + rcx*8 + 0x10], xmm1
	add	rcx, 4
	inc	rax
	jne	.label_783
.label_779:
	cmp	r9, r8
	mov	rcx, r8
	je	.label_752
	nop	
.label_776:
	inc	rcx
	nop	word ptr cs:[rax + rax]
.label_760:
	mov	rax, qword ptr [rdi + rcx*8]
	mov	qword ptr [rdi + rcx*8 - 8], rax
	inc	rcx
	cmp	rbp, rcx
	jne	.label_760
.label_752:
	inc	r10
	inc	qword ptr [rsp + 0xf0]
	dec	rbx
	dec	rsi
	mov	rax, qword ptr [rsp + 0x30]
	test	rax, rax
	jne	.label_749
.label_789:
	cmp	qword ptr [rsp + 0x48], 0
	mov	r13, qword ptr [rsp + 0x18]
	je	.label_737
	test	byte ptr [rip + unique],  1
	je	.label_737
	lea	rdi, [rsp + 0xd0]
	mov	rsi, qword ptr [rsp + 0x98]
	mov	rdx, qword ptr [rsp + 0xa0]
	call	write_line
	mov	rdi, qword ptr [rsp + 0xd0]
	call	free
.label_737:
	mov	rdi, qword ptr [rsp + 0x98]
	mov	rsi, qword ptr [rsp + 0xa0]
	call	xfclose
	mov	rdi, r12
	call	free
	mov	rdi, r13
	call	free
	mov	rdi, qword ptr [rsp + 0x10]
	call	free
	mov	rdi, qword ptr [rsp + 0x50]
	call	free
	mov	rdi, qword ptr [rsp + 0x20]
	call	free
	add	rsp, 0x138
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_804:
	call	xalloc_die
.label_764:
	call	xalloc_die
	nop	
	.section	.text
	.align	32
	#Procedure 0x409aa0

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
	mov	dword ptr [rsp + 0xc], esi
	mov	qword ptr [rsp + 0x18], rdi
	mov	rax, qword ptr [rip + create_temp_file.temp_dir_index]
	mov	rcx, qword ptr [rip + temp_dirs]
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
	mov	rax, qword ptr [rip + create_temp_file.temp_dir_index]
	inc	rax
	xor	ecx, ecx
	cmp	rax, qword ptr [rip + temp_dir_count]
	cmovne	rcx, rax
	mov	qword ptr [rip + create_temp_file.temp_dir_index],  rcx
	lea	rdx, [rsp + 0x28]
	xor	edi, edi
	mov	esi, OFFSET FLAT:caught_signals
	call	pthread_sigmask
	test	eax, eax
	sete	byte ptr [rsp + 0x20]
	mov	esi, 0x80000
	mov	qword ptr [rsp + 0x10], rbx
	mov	rdi, rbx
	call	mkostemp_safer
	mov	ebp, eax
	test	ebp, ebp
	js	.label_811
	mov	rax, qword ptr [rip + temptail]
	mov	qword ptr [rax], r15
	mov	qword ptr [rip + temptail],  r15
.label_811:
	call	__errno_location
	mov	r14, rax
	mov	r13d, dword ptr [r14]
	cmp	byte ptr [rsp + 0x20], 0
	je	.label_824
	mov	edi, 2
	xor	edx, edx
	lea	rsi, [rsp + 0x28]
	call	pthread_sigmask
.label_824:
	mov	dword ptr [r14], r13d
	test	ebp, ebp
	js	.label_817
	xor	eax, eax
	test	r15, r15
	je	.label_818
	mov	byte ptr [r15 + 0xc], 0
	cmp	qword ptr [rip + compress_program],  0
	je	.label_814
	lea	rdi, [rsp + 0x20]
	mov	esi, 4
	call	pipe_fork
	mov	dword ptr [r15 + 8], eax
	test	eax, eax
	jle	.label_816
	mov	edi, ebp
	call	close
	mov	edi, dword ptr [rsp + 0x20]
	call	close
	mov	ebp, dword ptr [rsp + 0x24]
	mov	rdi, qword ptr [rip + proctab]
	test	rdi, rdi
	jne	.label_815
	mov	edi, 0x2f
	xor	esi, esi
	mov	edx, OFFSET FLAT:proctab_hasher
	mov	ecx, OFFSET FLAT:proctab_comparator
	xor	r8d, r8d
	call	hash_initialize
	mov	rdi, rax
	mov	qword ptr [rip + proctab],  rdi
	test	rdi, rdi
	je	.label_813
.label_815:
	mov	byte ptr [r15 + 0xc], 1
	mov	rsi, r15
	call	hash_insert
	test	rax, rax
	jne	.label_814
	call	xalloc_die
.label_817:
	cmp	r13d, 0x18
	jne	.label_812
	mov	eax, dword ptr [rsp + 0xc]
	test	al, al
	je	.label_812
	mov	rdi, r15
	call	free
	xor	eax, eax
	jmp	.label_818
.label_816:
	je	.label_820
.label_814:
	mov	esi, OFFSET FLAT:label_332
	mov	edi, ebp
	call	fdopen
	mov	rcx, qword ptr [rsp + 0x18]
	mov	qword ptr [rcx], rax
	test	rax, rax
	mov	rax, r15
	je	.label_823
.label_818:
	add	rsp, 0xa8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_823:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_822
	mov	edx, 5
	call	dcgettext
	mov	rdi, rax
	mov	rsi, qword ptr [rsp + 0x10]
	call	sort_die
.label_812:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_819
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
.label_820:
	mov	edi, dword ptr [rsp + 0x24]
	call	close
	mov	esi, 1
	mov	edi, ebp
	call	move_fd
	mov	edi, dword ptr [rsp + 0x20]
	xor	esi, esi
	call	move_fd
	mov	rdi, qword ptr [rip + compress_program]
	xor	edx, edx
	xor	eax, eax
	mov	rsi, rdi
	call	execlp
	mov	edi, dword ptr [r14]
	mov	esi, OFFSET FLAT:label_821
	call	async_safe_die
.label_813:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x409d30

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
	mov	r12, rsi
	mov	rbx, rdi
	mov	esi, 0x80000
	call	rpl_pipe2
	mov	r13d, 0xffffffff
	test	eax, eax
	js	.label_826
	mov	eax, dword ptr [rip + nmerge]
	inc	eax
	cmp	eax, dword ptr [rip + nprocs]
	jae	.label_830
	mov	edi, 0xffffffff
	call	reap
	cmp	dword ptr [rip + nprocs],  0
	jle	.label_830
	nop	word ptr cs:[rax + rax]
.label_832:
	xor	edi, edi
	call	reap
	test	eax, eax
	je	.label_830
	mov	eax, dword ptr [rip + nprocs]
	test	eax, eax
	jg	.label_832
.label_830:
	test	r12, r12
	je	.label_825
	mov	qword ptr [rsp + 8], rbx
	movsd	xmm0, qword ptr [rip + label_835]
	movsd	qword ptr [rsp], xmm0
	lea	r15, [rsp + 0x18]
	nop	word ptr cs:[rax + rax]
.label_828:
	xor	edi, edi
	mov	esi, OFFSET FLAT:caught_signals
	mov	rdx, r15
	call	pthread_sigmask
	test	eax, eax
	sete	byte ptr [rsp + 0x10]
	mov	r14, qword ptr [rip + temphead]
	mov	qword ptr [rip + temphead],  0
	call	fork
	mov	r13d, eax
	call	__errno_location
	mov	rbx, rax
	mov	ebp, dword ptr [rbx]
	test	r13d, r13d
	je	.label_827
	mov	qword ptr [rip + temphead],  r14
.label_827:
	cmp	byte ptr [rsp + 0x10], 0
	je	.label_831
	mov	edi, 2
	xor	edx, edx
	mov	rsi, r15
	call	pthread_sigmask
.label_831:
	mov	dword ptr [rbx], ebp
	test	r13d, r13d
	jns	.label_834
	cmp	ebp, 0xb
	jne	.label_834
	dec	r12
	movsd	xmm0, qword ptr [rsp]
	call	xnanosleep
	cmp	dword ptr [rip + nprocs],  0
	jle	.label_829
	nop	
.label_833:
	xor	edi, edi
	call	reap
	test	eax, eax
	je	.label_829
	mov	eax, dword ptr [rip + nprocs]
	test	eax, eax
	jg	.label_833
.label_829:
	movsd	xmm0, qword ptr [rsp]
	addsd	xmm0, xmm0
	movsd	qword ptr [rsp], xmm0
	test	r12, r12
	jne	.label_828
.label_834:
	test	r13d, r13d
	js	.label_836
	je	.label_825
	inc	dword ptr [rip + nprocs]
	jmp	.label_826
.label_825:
	xor	r13d, r13d
	xor	edi, edi
	call	close
	mov	edi, 1
	call	close
	jmp	.label_826
.label_836:
	call	__errno_location
	mov	rbx, rax
	mov	r14d, dword ptr [rbx]
	mov	rbp, qword ptr [rsp + 8]
	mov	edi, dword ptr [rbp]
	call	close
	mov	edi, dword ptr [rbp + 4]
	call	close
	mov	dword ptr [rbx], r14d
.label_826:
	mov	eax, r13d
	add	rsp, 0x98
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
	#Procedure 0x409ee0

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
	je	.label_838
	lea	rsi, [rsp + 0xc]
	mov	edi, ebp
	call	inttostr
	mov	rbx, rax
	mov	edi, 2
	mov	esi, OFFSET FLAT:label_839
	mov	edx, 8
	call	write
	mov	rdi, rbx
	call	strlen
	mov	edi, 2
	mov	rsi, rbx
	mov	rdx, rax
	call	write
.label_838:
	mov	edi, 2
	mov	esi, OFFSET FLAT:label_837
	mov	edx, 1
	call	write
	mov	edi, 2
	call	_exit
	.section	.text
	.align	32
	#Procedure 0x409f60

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
	xor	edx, edx
	test	ebp, ebp
	sete	dl
	lea	rsi, [rsp + 4]
	call	waitpid
	mov	ebx, eax
	test	ebx, ebx
	js	.label_840
	je	.label_841
	test	ebp, ebp
	jg	.label_842
	mov	dword ptr [rsp + 0x10], ebx
	mov	rdi, qword ptr [rip + proctab]
	lea	rsi, [rsp + 8]
	call	hash_delete
	test	rax, rax
	je	.label_841
	mov	byte ptr [rax + 0xc], 2
.label_842:
	movzx	eax, word ptr [rsp + 4]
	test	ax, 0xff7f
	jne	.label_844
	dec	dword ptr [rip + nprocs]
.label_841:
	mov	eax, ebx
	add	rsp, 0x18
	pop	rbx
	pop	rbp
	ret	
.label_840:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_843
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	mov	rsi, qword ptr [rip + compress_program]
	mov	edi, 4
	call	quotearg_style
	mov	rcx, rax
	mov	edi, 2
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, rbp
	call	error
.label_844:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_845
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	rsi, qword ptr [rip + compress_program]
	mov	edi, 4
	call	quotearg_style
	mov	rcx, rax
	mov	edi, 2
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rbx
	call	error
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40a040

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
	.align	32
	#Procedure 0x40a050

	.globl proctab_comparator
	.type proctab_comparator, @function
proctab_comparator:
	mov	eax, dword ptr [rdi + 8]
	cmp	eax, dword ptr [rsi + 8]
	sete	al
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40a060

	.globl zaptemp
	.type zaptemp, @function
zaptemp:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x98
	mov	r14, rdi
	mov	ebx, OFFSET FLAT:temphead
	nop	dword ptr [rax]
.label_846:
	mov	rbp, rbx
	mov	rbx, qword ptr [rbp]
	lea	rax, [rbx + 0xd]
	cmp	rax, r14
	jne	.label_846
	cmp	byte ptr [rbx + 0xc], 1
	jne	.label_848
	mov	r15d, dword ptr [rbx + 8]
	mov	dword ptr [rsp + 0x18], r15d
	mov	rdi, qword ptr [rip + proctab]
	lea	rsi, [rsp + 0x10]
	call	hash_delete
	test	rax, rax
	je	.label_848
	mov	byte ptr [rax + 0xc], 2
	mov	edi, r15d
	call	reap
.label_848:
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
	je	.label_849
	mov	edi, 2
	xor	edx, edx
	mov	rsi, r15
	call	pthread_sigmask
.label_849:
	test	r13d, r13d
	je	.label_851
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_850
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
.label_851:
	test	r12, r12
	jne	.label_847
	mov	qword ptr [rip + temptail],  rbp
.label_847:
	mov	rdi, rbx
	call	free
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
	#Procedure 0x40a170

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
	mov	r14, rcx
	mov	r12, rsi
	mov	rbx, rdi
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	rbp, qword ptr [r14 + 0x28]
	mov	r15, qword ptr [r14 + 0x30]
	mov	r13, r12
	shr	r13, 1
	mov	qword ptr [rsp + 0x80], rbx
	mov	qword ptr [rsp + 0x88], r13
	mov	qword ptr [rsp + 0x50], rdx
	mov	qword ptr [rsp + 0x90], rdx
	mov	rax, qword ptr [r14 + 0x40]
	mov	qword ptr [rsp + 0x98], rax
	mov	qword ptr [rsp + 8], r8
	mov	qword ptr [rsp + 0xa0], r8
	mov	qword ptr [rsp + 0x38], r9
	mov	qword ptr [rsp + 0xa8], r9
	mov	qword ptr [rsp + 0xb0], rcx
	cmp	r12, 2
	jb	.label_883
	lea	rax, [r15 + rbp]
	cmp	rax, 0x20000
	jb	.label_883
	lea	rdi, [rsp + 0x78]
	lea	rcx, [rsp + 0x80]
	xor	esi, esi
	mov	edx, OFFSET FLAT:sortlines_thread
	call	pthread_create
	test	eax, eax
	mov	rbp, qword ptr [r14 + 0x28]
	je	.label_858
	mov	r15, qword ptr [r14 + 0x30]
.label_883:
	mov	rax, qword ptr [rsp + 0x50]
	shl	rax, 5
	mov	r12, rbx
	sub	r12, rax
	cmp	r15, 2
	jb	.label_863
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
.label_863:
	cmp	rbp, 2
	jb	.label_881
	xor	ecx, ecx
	mov	rdi, rbx
	mov	rsi, rbp
	mov	rdx, r12
	call	sequential_sort
.label_881:
	mov	qword ptr [r14], rbx
	shl	rbp, 5
	sub	rbx, rbp
	mov	qword ptr [r14 + 8], rbx
	mov	qword ptr [r14 + 0x10], rbx
	shl	r15, 5
	sub	rbx, r15
	mov	qword ptr [r14 + 0x18], rbx
	mov	r13, qword ptr [rsp + 8]
	lea	rbx, [r13 + 8]
	mov	rdi, rbx
	call	pthread_mutex_lock
	mov	rdi, qword ptr [r13]
	mov	rsi, r14
	call	heap_insert
	mov	byte ptr [r14 + 0x54], 1
	lea	rbp, [r13 + 0x30]
	mov	rdi, rbp
	call	pthread_cond_signal
	mov	rdi, rbx
	call	pthread_mutex_unlock
	mov	qword ptr [rsp + 0x70], rbx
	mov	qword ptr [rsp + 0x68], rbp
	jmp	.label_902
	nop	dword ptr [rax + rax]
.label_876:
	mov	rdi, qword ptr [rsp + 0x60]
	call	pthread_mutex_unlock
.label_902:
	mov	rdi, rbx
	call	pthread_mutex_lock
	jmp	.label_887
	nop	word ptr cs:[rax + rax]
.label_857:
	mov	rdi, rbp
	mov	rsi, rbx
	call	pthread_cond_wait
.label_887:
	mov	rdi, qword ptr [r13]
	call	heap_remove_top
	mov	r12, rax
	test	r12, r12
	je	.label_857
	mov	rdi, rbx
	call	pthread_mutex_unlock
	lea	rdi, [r12 + 0x58]
	mov	qword ptr [rsp + 0x60], rdi
	call	pthread_mutex_lock
	mov	byte ptr [r12 + 0x54], 0
	mov	eax, dword ptr [r12 + 0x50]
	test	eax, eax
	je	.label_868
	mov	rdi, qword ptr [r12]
	mov	rsi, qword ptr [r12 + 8]
	lea	ecx, [rax + rax + 2]
	mov	rdx, qword ptr [rsp + 0x50]
	shr	rdx, cl
	lea	rbx, [rdx + 1]
	cmp	eax, 1
	mov	qword ptr [rsp + 0x48], rsi
	mov	qword ptr [rsp + 0x28], r12
	mov	qword ptr [rsp + 0x58], rdi
	jne	.label_874
	mov	rax, qword ptr [r12 + 0x10]
	mov	qword ptr [rsp + 0x20], rax
	cmp	rdi, rax
	je	.label_886
	mov	rdx, qword ptr [r12 + 0x18]
	mov	qword ptr [rsp + 0x10], rsi
	mov	r14, rdi
	mov	qword ptr [rsp + 0x40], rdi
	mov	qword ptr [rsp + 0x30], rsi
	mov	rbp, rsi
	mov	r12, rdi
	mov	qword ptr [rsp + 0x18], rdx
	nop	dword ptr [rax]
.label_896:
	mov	r15, rbx
	cmp	rbp, rdx
	je	.label_895
	test	r15, r15
	je	.label_898
	lea	r13, [r12 - 0x20]
	mov	rbx, rbp
	lea	rbp, [rbx - 0x20]
	mov	rdi, r13
	mov	rsi, rbp
	call	compare
	test	eax, eax
	jle	.label_909
	mov	rax, qword ptr [rsp + 0x28]
	mov	qword ptr [rax + 8], rbp
	cmp	byte ptr [rip + unique],  1
	jne	.label_872
	cmp	qword ptr [rip + saved_line],  0
	je	.label_893
	mov	esi, OFFSET FLAT:saved_line
	mov	rdi, rbp
	call	compare
	test	eax, eax
	je	.label_869
.label_893:
	movups	xmm0, xmmword ptr [rbp]
	movups	xmm1, xmmword ptr [rbp + 0x10]
	movups	xmmword ptr [rip + label_380],  xmm1
	movups	xmmword ptr [rip + saved_line],  xmm0
.label_872:
	mov	rdi, rbp
	mov	rsi, qword ptr [rsp + 0x38]
	mov	rdx, qword ptr [rsp + 0xf0]
	call	write_line
.label_869:
	mov	qword ptr [rsp + 0x10], rbp
	mov	qword ptr [rsp + 0x30], rbp
	mov	r13, r12
	jmp	.label_871
	nop	word ptr [rax + rax]
.label_909:
	mov	rax, qword ptr [rsp + 0x28]
	mov	qword ptr [rax], r13
	cmp	byte ptr [rip + unique],  1
	mov	rbp, rbx
	jne	.label_875
	cmp	qword ptr [rip + saved_line],  0
	je	.label_882
	mov	esi, OFFSET FLAT:saved_line
	mov	rdi, r13
	call	compare
	test	eax, eax
	je	.label_888
.label_882:
	movups	xmm0, xmmword ptr [r13]
	movups	xmm1, xmmword ptr [r13 + 0x10]
	movups	xmmword ptr [rip + label_380],  xmm1
	movups	xmmword ptr [rip + saved_line],  xmm0
.label_875:
	mov	rdi, r13
	mov	rsi, qword ptr [rsp + 0x38]
	mov	rdx, qword ptr [rsp + 0xf0]
	call	write_line
.label_888:
	mov	r14, r13
	mov	qword ptr [rsp + 0x40], r13
.label_871:
	mov	rdx, qword ptr [rsp + 0x18]
	lea	rbx, [r15 - 1]
	cmp	r13, qword ptr [rsp + 0x20]
	mov	r12, r13
	jne	.label_896
	mov	r12, qword ptr [rsp + 0x20]
.label_898:
	dec	r15
	mov	rdx, rbp
.label_895:
	mov	rbx, r15
	mov	rsi, qword ptr [rsp + 0x48]
	mov	rbp, qword ptr [rsp + 0x40]
	mov	rax, qword ptr [rsp + 0x30]
	jmp	.label_907
	nop	dword ptr [rax]
.label_874:
	mov	r8, qword ptr [r12 + 0x10]
	mov	rcx, qword ptr [r12 + 0x20]
	mov	rax, qword ptr [rcx]
	cmp	rdi, r8
	mov	qword ptr [rsp + 0x30], rcx
	je	.label_913
	mov	rbp, qword ptr [r12 + 0x18]
	mov	qword ptr [rsp + 0x18], rbp
	cmp	rsi, rbp
	je	.label_855
	neg	rdx
	mov	r15, rsi
	mov	r14, rdi
	mov	rbp, rdi
	mov	qword ptr [rsp + 0x10], r8
	nop	
.label_905:
	mov	r13, rax
	mov	rbx, rdx
	cmp	rbx, 1
	je	.label_867
	mov	r12, rbx
	mov	qword ptr [rsp + 0x20], rbp
	lea	rbp, [rbp - 0x20]
	lea	rbx, [r15 - 0x20]
	mov	rdi, rbp
	mov	rsi, rbx
	call	compare
	test	eax, eax
	jle	.label_877
	mov	rax, qword ptr [rsp + 0x28]
	mov	qword ptr [rax + 8], rbx
	movups	xmm0, xmmword ptr [rbx]
	movups	xmm1, xmmword ptr [rbx + 0x10]
	movups	xmmword ptr [r13 - 0x10], xmm1
	movups	xmmword ptr [r13 - 0x20], xmm0
	mov	r15, rbx
	mov	rbx, r12
	mov	r12, rax
	mov	r8, qword ptr [rsp + 0x10]
	mov	rbp, qword ptr [rsp + 0x20]
	jmp	.label_879
	nop	
.label_877:
	mov	rax, qword ptr [rsp + 0x28]
	mov	qword ptr [rax], rbp
	movups	xmm0, xmmword ptr [rbp]
	movups	xmm1, xmmword ptr [rbp + 0x10]
	movups	xmmword ptr [r13 - 0x10], xmm1
	movups	xmmword ptr [r13 - 0x20], xmm0
	mov	r14, rbp
	mov	rbx, r12
	mov	r12, rax
	mov	r8, qword ptr [rsp + 0x10]
.label_879:
	cmp	rbp, r8
	je	.label_897
	lea	rax, [r13 - 0x20]
	lea	rdx, [rbx + 1]
	cmp	r15, qword ptr [rsp + 0x18]
	jne	.label_905
	mov	rax, rbp
	jmp	.label_906
.label_886:
	mov	qword ptr [rsp + 0x10], rsi
	mov	r14, rdi
	mov	r12, rdi
	mov	rdx, rsi
	mov	rbp, rdi
	mov	rax, rsi
.label_907:
	mov	rdi, rsi
	sub	rdi, rax
	sar	rdi, 5
	mov	rcx, qword ptr [rsp + 0x28]
	mov	rsi, qword ptr [rcx + 0x30]
	cmp	rsi, rdi
	jne	.label_891
	cmp	r12, qword ptr [rsp + 0x20]
	je	.label_856
	test	rbx, rbx
	mov	r13, qword ptr [rsp + 8]
	je	.label_859
	mov	qword ptr [rsp + 0x18], rdi
	add	r12, -0x20
	mov	ebp, 1
	sub	rbp, rbx
	mov	r14, r12
	mov	r15, qword ptr [rsp + 0x10]
	mov	r12, qword ptr [rsp + 0x28]
	mov	rbx, qword ptr [rsp + 0x20]
	nop	dword ptr [rax + rax]
.label_894:
	mov	qword ptr [r12], r14
	cmp	byte ptr [rip + unique],  1
	jne	.label_910
	cmp	qword ptr [rip + saved_line],  0
	je	.label_878
	mov	esi, OFFSET FLAT:saved_line
	mov	rdi, r14
	call	compare
	test	eax, eax
	je	.label_885
.label_878:
	movups	xmm0, xmmword ptr [r14]
	movups	xmm1, xmmword ptr [r14 + 0x10]
	movups	xmmword ptr [rip + label_380],  xmm1
	movups	xmmword ptr [rip + saved_line],  xmm0
.label_910:
	mov	rdi, r14
	mov	rsi, qword ptr [rsp + 0x38]
	mov	rdx, qword ptr [rsp + 0xf0]
	call	write_line
.label_885:
	cmp	rbx, r14
	lea	r14, [r14 - 0x20]
	je	.label_892
	test	rbp, rbp
	lea	rbp, [rbp + 1]
	jne	.label_894
.label_892:
	add	r14, 0x20
	mov	rdi, qword ptr [rsp + 0x18]
	jmp	.label_873
	nop	word ptr cs:[rax + rax]
.label_891:
	mov	rax, qword ptr [rsp + 0x58]
	sub	rax, rbp
	sar	rax, 5
	cmp	qword ptr [rcx + 0x28], rax
	mov	r12, rcx
	jne	.label_904
	test	rbx, rbx
	je	.label_904
	mov	r13, qword ptr [r12 + 0x18]
	cmp	rdx, r13
	je	.label_904
	mov	qword ptr [rsp + 0x20], rsi
	add	rdx, -0x20
	mov	ebp, 1
	sub	rbp, rbx
	mov	rbx, rdx
	nop	word ptr cs:[rax + rax]
.label_914:
	mov	qword ptr [r12 + 8], rbx
	cmp	byte ptr [rip + unique],  1
	jne	.label_900
	cmp	qword ptr [rip + saved_line],  0
	je	.label_866
	mov	esi, OFFSET FLAT:saved_line
	mov	rdi, rbx
	call	compare
	test	eax, eax
	je	.label_908
.label_866:
	movups	xmm0, xmmword ptr [rbx]
	movups	xmm1, xmmword ptr [rbx + 0x10]
	movups	xmmword ptr [rip + label_380],  xmm1
	movups	xmmword ptr [rip + saved_line],  xmm0
.label_900:
	mov	rdi, rbx
	mov	rsi, qword ptr [rsp + 0x38]
	mov	rdx, qword ptr [rsp + 0xf0]
	call	write_line
.label_908:
	cmp	r13, rbx
	lea	rbx, [rbx - 0x20]
	je	.label_916
	test	rbp, rbp
	lea	rbp, [rbp + 1]
	jne	.label_914
.label_916:
	mov	r15, rbx
	add	r15, 0x20
	mov	rdi, qword ptr [rsp + 0x20]
	mov	r13, qword ptr [rsp + 8]
	jmp	.label_873
.label_913:
	mov	r15, rsi
	mov	r14, rdi
	mov	rdx, rdi
	mov	rbp, rdi
	mov	rcx, rdi
	jmp	.label_889
.label_904:
	mov	rdi, rsi
	mov	r13, qword ptr [rsp + 8]
	mov	r15, qword ptr [rsp + 0x10]
	jmp	.label_873
.label_855:
	mov	r15, rsi
	mov	r14, rdi
	mov	rbp, rdi
	mov	rcx, rdi
	jmp	.label_899
.label_867:
	mov	rcx, rbp
	jmp	.label_903
.label_897:
	mov	rax, r8
.label_906:
	mov	rcx, rbp
	add	r13, -0x20
	mov	rbp, rax
.label_903:
	neg	rbx
	mov	rax, r13
.label_899:
	mov	rdx, r8
	mov	rsi, qword ptr [rsp + 0x48]
.label_889:
	sub	rsi, r15
	sar	rsi, 5
	mov	rdi, qword ptr [r12 + 0x30]
	cmp	rdi, rsi
	jne	.label_912
	cmp	rbp, rdx
	je	.label_853
	test	rbx, rbx
	je	.label_853
	add	rbp, -0x20
	mov	ecx, 1
	sub	rcx, rbx
	mov	r14, rbp
	nop	
.label_911:
	movups	xmm0, xmmword ptr [r14]
	movups	xmm1, xmmword ptr [r14 + 0x10]
	movups	xmmword ptr [rax - 0x10], xmm1
	movups	xmmword ptr [rax - 0x20], xmm0
	lea	rax, [rax - 0x20]
	cmp	r8, r14
	lea	r14, [r14 - 0x20]
	je	.label_860
	test	rcx, rcx
	lea	rcx, [rcx + 1]
	jne	.label_911
.label_860:
	add	r14, 0x20
	mov	qword ptr [r12], r14
	jmp	.label_853
	nop	word ptr cs:[rax + rax]
.label_912:
	mov	rdx, qword ptr [rsp + 0x58]
	sub	rdx, rcx
	sar	rdx, 5
	cmp	qword ptr [r12 + 0x28], rdx
	jne	.label_853
	test	rbx, rbx
	mov	r13, qword ptr [rsp + 8]
	je	.label_884
	mov	rcx, qword ptr [r12 + 0x18]
	cmp	r15, rcx
	je	.label_884
	add	r15, -0x20
	mov	edx, 1
	sub	rdx, rbx
	nop	word ptr cs:[rax + rax]
.label_915:
	movups	xmm0, xmmword ptr [r15]
	movups	xmm1, xmmword ptr [r15 + 0x10]
	movups	xmmword ptr [rax - 0x10], xmm1
	movups	xmmword ptr [rax - 0x20], xmm0
	lea	rax, [rax - 0x20]
	cmp	rcx, r15
	lea	r15, [r15 - 0x20]
	je	.label_880
	test	rdx, rdx
	lea	rdx, [rdx + 1]
	jne	.label_915
.label_880:
	add	r15, 0x20
	mov	qword ptr [r12 + 8], r15
	jmp	.label_884
	nop	word ptr cs:[rax + rax]
.label_853:
	mov	r13, qword ptr [rsp + 8]
.label_884:
	mov	rcx, qword ptr [rsp + 0x30]
	mov	qword ptr [rcx], rax
	jmp	.label_873
.label_856:
	mov	r13, qword ptr [rsp + 8]
.label_859:
	mov	r15, qword ptr [rsp + 0x10]
	mov	r12, qword ptr [rsp + 0x28]
	nop	
.label_873:
	mov	rcx, qword ptr [rsp + 0x58]
	sub	rcx, r14
	sar	rcx, 5
	mov	rax, qword ptr [rsp + 0x48]
	sub	rax, r15
	sar	rax, 5
	sub	qword ptr [r12 + 0x28], rcx
	sub	rdi, rax
	mov	qword ptr [r12 + 0x30], rdi
	cmp	byte ptr [r12 + 0x54], 0
	mov	rbx, qword ptr [rsp + 0x70]
	mov	rbp, qword ptr [rsp + 0x68]
	jne	.label_852
	mov	rcx, qword ptr [r12]
	mov	rax, qword ptr [r12 + 8]
	cmp	rcx, qword ptr [r12 + 0x10]
	mov	rcx, qword ptr [r12 + 0x18]
	jne	.label_870
	cmp	rax, rcx
	je	.label_852
	cmp	qword ptr [r12 + 0x28], 0
	jne	.label_852
	jmp	.label_862
.label_870:
	cmp	rax, rcx
	jne	.label_862
	cmp	qword ptr [r12 + 0x30], 0
	jne	.label_852
.label_862:
	mov	rdi, rbx
	call	pthread_mutex_lock
	mov	rdi, qword ptr [r13]
	mov	rsi, r12
	call	heap_insert
	mov	byte ptr [r12 + 0x54], 1
	mov	rdi, rbp
	call	pthread_cond_signal
	mov	rdi, rbx
	call	pthread_mutex_unlock
	nop	word ptr cs:[rax + rax]
.label_852:
	cmp	dword ptr [r12 + 0x50], 2
	jb	.label_890
	mov	rdi, qword ptr [r12 + 0x38]
	add	rdi, 0x58
	call	pthread_mutex_lock
	mov	r14, qword ptr [r12 + 0x38]
	cmp	byte ptr [r14 + 0x54], 0
	jne	.label_861
	mov	rcx, qword ptr [r14]
	mov	rax, qword ptr [r14 + 8]
	cmp	rcx, qword ptr [r14 + 0x10]
	mov	rcx, qword ptr [r14 + 0x18]
	jne	.label_901
	cmp	rax, rcx
	je	.label_861
	cmp	qword ptr [r14 + 0x28], 0
	jne	.label_861
	jmp	.label_864
	nop	dword ptr [rax]
.label_890:
	mov	rax, qword ptr [r12 + 0x28]
	add	rax, qword ptr [r12 + 0x30]
	jne	.label_876
	mov	r14, qword ptr [r12 + 0x38]
	mov	rdi, rbx
	call	pthread_mutex_lock
	mov	rdi, qword ptr [r13]
	mov	rsi, r14
	call	heap_insert
	mov	byte ptr [r14 + 0x54], 1
	mov	rdi, rbp
	call	pthread_cond_signal
	mov	rdi, rbx
	jmp	.label_865
.label_901:
	cmp	rax, rcx
	jne	.label_864
	cmp	qword ptr [r14 + 0x30], 0
	jne	.label_861
.label_864:
	mov	rdi, rbx
	call	pthread_mutex_lock
	mov	rdi, qword ptr [r13]
	mov	rsi, r14
	call	heap_insert
	mov	byte ptr [r14 + 0x54], 1
	mov	rdi, rbp
	call	pthread_cond_signal
	mov	rdi, rbx
	call	pthread_mutex_unlock
	mov	r14, qword ptr [r12 + 0x38]
	nop	word ptr cs:[rax + rax]
.label_861:
	add	r14, 0x58
	mov	rdi, r14
.label_865:
	call	pthread_mutex_unlock
	jmp	.label_876
.label_868:
	mov	rdi, qword ptr [rsp + 0x60]
	call	pthread_mutex_unlock
	mov	rdi, rbx
	call	pthread_mutex_lock
	mov	rdi, qword ptr [r13]
	mov	rsi, r12
	call	heap_insert
	mov	byte ptr [r12 + 0x54], 1
	mov	rdi, rbp
	call	pthread_cond_signal
	mov	rdi, rbx
	call	pthread_mutex_unlock
.label_854:
	add	rsp, 0xb8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_858:
	sub	r12, r13
	shl	rbp, 5
	sub	rbx, rbp
	mov	rcx, qword ptr [r14 + 0x48]
	mov	rax, qword ptr [rsp + 0xf0]
	mov	qword ptr [rsp], rax
	mov	rdi, rbx
	mov	rsi, r12
	mov	rdx, qword ptr [rsp + 0x50]
	mov	r8, qword ptr [rsp + 8]
	mov	r9, qword ptr [rsp + 0x38]
	call	sortlines
	mov	rdi, qword ptr [rsp + 0x78]
	xor	esi, esi
	call	pthread_join
	jmp	.label_854
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40ab10

	.globl compare_nodes
	.type compare_nodes, @function
compare_nodes:
	mov	eax, dword ptr [rsi + 0x50]
	cmp	dword ptr [rdi + 0x50], eax
	jne	.label_917
	mov	rax, qword ptr [rdi + 0x30]
	add	rax, qword ptr [rdi + 0x28]
	mov	rcx, qword ptr [rsi + 0x30]
	add	rcx, qword ptr [rsi + 0x28]
	cmp	rax, rcx
.label_917:
	setb	al
	movzx	eax, al
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40ab40

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
	mov	r15, rcx
	mov	r12, rdx
	mov	r13, rsi
	mov	qword ptr [rsp], r14
	neg	r14
	shl	r14, 5
	jmp	.label_918
	nop	word ptr cs:[rax + rax]
.label_919:
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
.label_918:
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
	mov	rbp, r13
	sub	rbp, -0x80
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
	jae	.label_919
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
	.align	32
	#Procedure 0x40ac50

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
	.align	32
	#Procedure 0x40ac80

	.globl sequential_sort
	.type sequential_sort, @function
sequential_sort:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x18
	mov	r13d, ecx
	mov	rbx, rdx
	mov	r14, rsi
	mov	r12, rdi
	cmp	r14, 2
	jne	.label_920
	lea	rbp, [r12 - 0x20]
	lea	r14, [r12 - 0x40]
	mov	rdi, rbp
	mov	rsi, r14
	call	compare
	test	r13b, r13b
	je	.label_929
	xor	ecx, ecx
	test	eax, eax
	setg	cl
	mov	rax, rcx
	not	rax
	shl	rax, 5
	movups	xmm0, xmmword ptr [r12 + rax]
	movups	xmm1, xmmword ptr [r12 + rax + 0x10]
	movups	xmmword ptr [rbx - 0x10], xmm1
	movups	xmmword ptr [rbx - 0x20], xmm0
	shl	rcx, 5
	movups	xmm0, xmmword ptr [r12 + rcx - 0x40]
	movups	xmm1, xmmword ptr [r12 + rcx - 0x30]
	movups	xmmword ptr [rbx - 0x30], xmm1
	movups	xmmword ptr [rbx - 0x40], xmm0
	jmp	.label_923
.label_920:
	mov	rbp, r14
	shr	rbp, 1
	mov	r15, r14
	sub	r15, rbp
	mov	rcx, rbp
	neg	rcx
	mov	rax, rbp
	shl	rax, 5
	mov	rdi, r12
	sub	rdi, rax
	xor	edx, edx
	test	r13b, r13b
	mov	qword ptr [rsp + 8], rcx
	cmovne	rdx, rcx
	shl	rdx, 5
	add	rdx, rbx
	movzx	ecx, r13b
	mov	rsi, r15
	call	sequential_sort
	cmp	r14, 4
	mov	qword ptr [rsp + 0x10], rbp
	jb	.label_932
	mov	eax, r13d
	xor	al, 1
	movzx	ecx, al
	mov	rdi, r12
	mov	rsi, rbp
	mov	rdx, rbx
	call	sequential_sort
	jmp	.label_921
.label_929:
	test	eax, eax
	jle	.label_923
	movups	xmm0, xmmword ptr [rbp]
	movups	xmm1, xmmword ptr [rbp + 0x10]
	movups	xmmword ptr [rbx - 0x10], xmm1
	movups	xmmword ptr [rbx - 0x20], xmm0
	movups	xmm0, xmmword ptr [r14]
	movups	xmm1, xmmword ptr [r14 + 0x10]
	movups	xmmword ptr [rbp + 0x10], xmm1
	movups	xmmword ptr [rbp], xmm0
	movups	xmm0, xmmword ptr [rbx - 0x20]
	movups	xmm1, xmmword ptr [rbx - 0x10]
	movups	xmmword ptr [r14 + 0x10], xmm1
	movups	xmmword ptr [r14], xmm0
	jmp	.label_923
.label_932:
	test	r13b, r13b
	jne	.label_921
	movups	xmm0, xmmword ptr [r12 - 0x20]
	movups	xmm1, xmmword ptr [r12 - 0x10]
	movups	xmmword ptr [rbx - 0x10], xmm1
	movups	xmmword ptr [rbx - 0x20], xmm0
.label_921:
	test	r13b, r13b
	mov	rbp, r12
	cmovne	rbp, rbx
	cmovne	rbx, r12
	mov	rax, qword ptr [rsp + 8]
	mov	r13, rax
	shl	r13, 5
	add	r13, rbp
.label_926:
	mov	qword ptr [rsp + 8], rax
	lea	r12, [rbx - 0x20]
	xor	r14d, r14d
	nop	word ptr cs:[rax + rax]
.label_922:
	lea	rsi, [r13 + r14 - 0x20]
	mov	rdi, r12
	call	compare
	lea	rcx, [rbp + r14 - 0x20]
	test	eax, eax
	jle	.label_931
	movups	xmm0, xmmword ptr [r13 + r14 - 0x20]
	movups	xmm1, xmmword ptr [r13 + r14 - 0x10]
	movups	xmmword ptr [rcx + 0x10], xmm1
	movups	xmmword ptr [rcx], xmm0
	add	r14, -0x20
	dec	r15
	jne	.label_922
	jmp	.label_924
	nop	word ptr cs:[rax + rax]
.label_931:
	movups	xmm0, xmmword ptr [r12]
	movups	xmm1, xmmword ptr [r12 + 0x10]
	movups	xmmword ptr [rbp + r14 - 0x10], xmm1
	movups	xmmword ptr [rbp + r14 - 0x20], xmm0
	mov	rax, qword ptr [rsp + 8]
	inc	rax
	add	r13, r14
	dec	qword ptr [rsp + 0x10]
	mov	rbp, rcx
	mov	rbx, r12
	jne	.label_926
	jmp	.label_923
.label_924:
	mov	rdx, qword ptr [rsp + 0x10]
	lea	rcx, [rdx - 1]
	mov	eax, edx
	and	eax, 7
	cmp	rcx, 7
	jae	.label_928
	add	rbp, r14
	jmp	.label_930
.label_928:
	mov	ecx, edx
	and	cl, 7
	movzx	ecx, cl
	mov	rdx, qword ptr [rsp + 8]
	add	rdx, rcx
	add	rbp, r14
	xor	ecx, ecx
	nop	dword ptr [rax]
.label_925:
	movups	xmm0, xmmword ptr [rbx + rcx - 0x20]
	movups	xmm1, xmmword ptr [rbx + rcx - 0x10]
	movups	xmmword ptr [rbp + rcx - 0x10], xmm1
	movups	xmmword ptr [rbp + rcx - 0x20], xmm0
	movups	xmm0, xmmword ptr [rbx + rcx - 0x40]
	movups	xmm1, xmmword ptr [rbx + rcx - 0x30]
	movups	xmmword ptr [rbp + rcx - 0x30], xmm1
	movups	xmmword ptr [rbp + rcx - 0x40], xmm0
	movups	xmm0, xmmword ptr [rbx + rcx - 0x60]
	movups	xmm1, xmmword ptr [rbx + rcx - 0x50]
	movups	xmmword ptr [rbp + rcx - 0x50], xmm1
	movups	xmmword ptr [rbp + rcx - 0x60], xmm0
	movups	xmm0, xmmword ptr [rbx + rcx - 0x80]
	movups	xmm1, xmmword ptr [rbx + rcx - 0x70]
	movups	xmmword ptr [rbp + rcx - 0x70], xmm1
	movups	xmmword ptr [rbp + rcx - 0x80], xmm0
	movups	xmm0, xmmword ptr [rbx + rcx - 0xa0]
	movups	xmm1, xmmword ptr [rbx + rcx - 0x90]
	movups	xmmword ptr [rbp + rcx - 0x90], xmm1
	movups	xmmword ptr [rbp + rcx - 0xa0], xmm0
	movups	xmm0, xmmword ptr [rbx + rcx - 0xc0]
	movups	xmm1, xmmword ptr [rbx + rcx - 0xb0]
	movups	xmmword ptr [rbp + rcx - 0xb0], xmm1
	movups	xmmword ptr [rbp + rcx - 0xc0], xmm0
	movups	xmm0, xmmword ptr [rbx + rcx - 0xe0]
	movups	xmm1, xmmword ptr [rbx + rcx - 0xd0]
	movups	xmmword ptr [rbp + rcx - 0xd0], xmm1
	movups	xmmword ptr [rbp + rcx - 0xe0], xmm0
	movups	xmm0, xmmword ptr [rbx + rcx - 0x100]
	movups	xmm1, xmmword ptr [rbx + rcx - 0xf0]
	movups	xmmword ptr [rbp + rcx - 0xf0], xmm1
	movups	xmmword ptr [rbp + rcx - 0x100], xmm0
	add	rcx, -0x100
	add	rdx, 8
	jne	.label_925
	add	rbp, rcx
	add	rbx, rcx
.label_930:
	test	rax, rax
	je	.label_923
	add	rbp, -0x20
	add	rbx, -0x20
	mov	rax, qword ptr [rsp + 0x10]
	and	al, 7
	movzx	eax, al
	neg	rax
	nop	word ptr cs:[rax + rax]
.label_927:
	movups	xmm0, xmmword ptr [rbx]
	movups	xmm1, xmmword ptr [rbx + 0x10]
	movups	xmmword ptr [rbp + 0x10], xmm1
	movups	xmmword ptr [rbp], xmm0
	add	rbp, -0x20
	add	rbx, -0x20
	inc	rax
	jne	.label_927
.label_923:
	add	rsp, 0x18
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40afe0

	.globl __argmatch_die
	.type __argmatch_die, @function
__argmatch_die:
	mov	edi, 1
	jmp	usage
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40aff0

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
	je	.label_936
	mov	qword ptr [rsp + 8], -1
	xor	eax, eax
	mov	qword ptr [rsp + 0x10], rax
	mov	qword ptr [rsp + 0x18], r14
	xor	ebp, ebp
	nop	dword ptr [rax + rax]
.label_933:
	mov	rdi, r15
	mov	rsi, r12
	mov	rdx, rbx
	call	strncmp
	test	eax, eax
	jne	.label_934
	mov	rdi, r15
	call	strlen
	cmp	rax, rbx
	je	.label_938
	cmp	qword ptr [rsp + 8], -1
	je	.label_939
	mov	rax, qword ptr [rsp + 0x18]
	test	rax, rax
	je	.label_935
	mov	rdi, qword ptr [rsp + 8]
	imul	rdi, r13
	add	rdi, rax
	mov	rsi, r14
	mov	rdx, r13
	call	memcmp
	test	eax, eax
	je	.label_934
.label_935:
	mov	al, 1
	mov	qword ptr [rsp + 0x10], rax
	jmp	.label_934
.label_939:
	mov	qword ptr [rsp + 8], rbp
	nop	word ptr [rax + rax]
.label_934:
	mov	rax, qword ptr [rsp + 0x20]
	mov	r15, qword ptr [rax + rbp*8 + 8]
	inc	rbp
	add	r14, r13
	test	r15, r15
	jne	.label_933
	jmp	.label_937
.label_936:
	mov	qword ptr [rsp + 8], -1
	xor	eax, eax
	mov	qword ptr [rsp + 0x10], rax
.label_937:
	mov	rax, qword ptr [rsp + 0x10]
	test	al, 1
	mov	rbp, -2
	cmove	rbp, qword ptr [rsp + 8]
.label_938:
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
	#Procedure 0x40b0f0

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
	je	.label_940
	mov	esi, OFFSET FLAT:label_941
	jmp	.label_942
.label_940:
	mov	esi, OFFSET FLAT:label_943
.label_942:
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
	#Procedure 0x40b160

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
	mov	esi, OFFSET FLAT:label_944
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stderr]
	mov	rdi, rax
	call	fputs_unlocked
	mov	rbx, qword ptr [rbp]
	test	rbx, rbx
	je	.label_949
	xor	r13d, r13d
	xor	r15d, r15d
	mov	qword ptr [rsp], rbp
	nop	dword ptr [rax + rax]
.label_946:
	test	r15, r15
	je	.label_948
	mov	rdi, r13
	mov	rsi, r12
	mov	rdx, r14
	call	memcmp
	test	eax, eax
	je	.label_945
.label_948:
	mov	r13, qword ptr [rip + stderr]
	mov	rdi, rbx
	call	quote
	mov	rcx, rax
	mov	esi, 1
	mov	edx, OFFSET FLAT:label_950
	xor	eax, eax
	mov	rdi, r13
	call	__fprintf_chk
	mov	r13, r12
	jmp	.label_947
	nop	word ptr cs:[rax + rax]
.label_945:
	mov	rbp, qword ptr [rip + stderr]
	mov	rdi, rbx
	call	quote
	mov	rcx, rax
	mov	esi, 1
	mov	edx, OFFSET FLAT:label_951
	xor	eax, eax
	mov	rdi, rbp
	mov	rbp, qword ptr [rsp]
	call	__fprintf_chk
.label_947:
	mov	rbx, qword ptr [rbp + r15*8 + 8]
	inc	r15
	add	r12, r14
	test	rbx, rbx
	jne	.label_946
.label_949:
	mov	rdi, qword ptr [rip + stderr]
	mov	rax, qword ptr [rdi + 0x28]
	cmp	rax, qword ptr [rdi + 0x30]
	jae	.label_952
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
.label_952:
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
	.align	32
	#Procedure 0x40b290

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
	jns	.label_953
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
.label_953:
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
	#Procedure 0x40b300
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
	je	.label_954
	add	rbx, 8
	nop	word ptr cs:[rax + rax]
.label_955:
	mov	rdi, r12
	mov	rsi, r15
	mov	rdx, r14
	call	memcmp
	test	eax, eax
	mov	rax, r13
	je	.label_954
	mov	r13, qword ptr [rbx]
	add	rbx, 8
	add	r15, r14
	test	r13, r13
	mov	eax, 0
	jne	.label_955
.label_954:
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40b370
	.globl close_stdout_set_file_name
	.type close_stdout_set_file_name, @function
close_stdout_set_file_name:

	mov	qword ptr [rip + file_name],  rdi
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40b380
	.globl close_stdout_set_ignore_EPIPE
	.type close_stdout_set_ignore_EPIPE, @function
close_stdout_set_ignore_EPIPE:

	mov	byte ptr [rip + ignore_EPIPE],  dil
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40b390

	.globl close_stdout
	.type close_stdout, @function
close_stdout:
	push	rbp
	push	rbx
	push	rax
	mov	rdi, qword ptr [rip + stdout]
	call	close_stream
	test	eax, eax
	je	.label_960
	mov	bl, byte ptr [rip + ignore_EPIPE]
	call	__errno_location
	mov	rbp, rax
	cmp	bl, 0
	je	.label_958
	cmp	dword ptr [rbp], 0x20
	jne	.label_958
.label_960:
	mov	rdi, qword ptr [rip + stderr]
	call	close_stream
	test	eax, eax
	jne	.label_957
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
.label_958:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_959
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	rdi, qword ptr [rip + file_name]
	test	rdi, rdi
	mov	ebp, dword ptr [rbp]
	jne	.label_956
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_316
	xor	eax, eax
	mov	esi, ebp
	mov	rcx, rbx
	call	error
	mov	edi, dword ptr [rip + exit_failure]
	call	_exit
.label_957:
	mov	edi, dword ptr [rip + exit_failure]
	call	_exit
.label_956:
	call	quotearg_colon
	mov	rcx, rax
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_463
	xor	eax, eax
	mov	esi, ebp
	mov	r8, rbx
	call	error
	mov	edi, dword ptr [rip + exit_failure]
	call	_exit
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40b450

	.globl md5_init_ctx
	.type md5_init_ctx, @function
md5_init_ctx:
	movaps	xmm0, xmmword ptr [rip + label_961]
	movups	xmmword ptr [rdi], xmm0
	mov	dword ptr [rdi + 0x14], 0
	mov	dword ptr [rdi + 0x10], 0
	mov	dword ptr [rdi + 0x18], 0
	ret	
	.section	.text
	.align	32
	#Procedure 0x40b470
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
	.align	32
	#Procedure 0x40b490

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
	jae	.label_962
	inc	dword ptr [rbx + 0x14]
.label_962:
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
	.align	32
	#Procedure 0x40b540

	.globl md5_process_block
	.type md5_process_block, @function
md5_process_block:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	r8, rsi
	and	r8, 0xfffffffffffffffc
	add	r8, rdi
	mov	r10d, dword ptr [rdx]
	mov	ebx, dword ptr [rdx + 4]
	mov	r9d, dword ptr [rdx + 8]
	mov	ebp, dword ptr [rdx + 0xc]
	mov	rax, rsi
	shr	rax, 0x20
	mov	ecx, dword ptr [rdx + 0x10]
	add	ecx, esi
	mov	dword ptr [rdx + 0x10], ecx
	adc	eax, 0
	mov	qword ptr [rsp - 0x28], rdx
	add	dword ptr [rdx + 0x14], eax
	cmp	rdi, r8
	jae	.label_963
	mov	qword ptr [rsp - 0x20], r8
	nop	word ptr [rax + rax]
.label_964:
	mov	qword ptr [rsp - 0x78], rbx
	mov	qword ptr [rsp - 8], rbp
	mov	qword ptr [rsp], r9
	mov	dword ptr [rsp - 0x34], r10d
	mov	eax, r9d
	xor	eax, ebp
	and	eax, ebx
	xor	eax, ebp
	add	eax, r10d
	mov	ecx, dword ptr [rdi]
	mov	esi, dword ptr [rdi + 4]
	mov	qword ptr [rsp - 0x58], rsi
	lea	edx, [rcx + rax - 0x28955b88]
	mov	r10, rcx
	mov	qword ptr [rsp - 0x10], r10
	rol	edx, 7
	mov	rax, qword ptr [rsp - 0x78]
	add	edx, eax
	mov	rax, qword ptr [rsp - 0x78]
	xor	eax, r9d
	and	eax, edx
	xor	eax, r9d
	lea	ecx, [rbp + rsi]
	lea	ebp, [rax + rcx - 0x173848aa]
	rol	ebp, 0xc
	add	ebp, edx
	mov	eax, edx
	mov	rcx, qword ptr [rsp - 0x78]
	xor	eax, ecx
	and	eax, ebp
	mov	rcx, qword ptr [rsp - 0x78]
	xor	eax, ecx
	mov	ecx, dword ptr [rdi + 8]
	mov	qword ptr [rsp - 0x30], rcx
	lea	ecx, [r9 + rcx]
	lea	ebx, [rax + rcx + 0x242070db]
	rol	ebx, 0x11
	add	ebx, ebp
	mov	eax, ebp
	xor	eax, edx
	and	eax, ebx
	xor	eax, edx
	mov	esi, dword ptr [rdi + 0xc]
	mov	rcx, qword ptr [rsp - 0x78]
	lea	ecx, [rcx + rsi]
	mov	r12, rsi
	mov	qword ptr [rsp - 0x18], r12
	lea	eax, [rax + rcx - 0x3e423112]
	rol	eax, 0x16
	add	eax, ebx
	mov	ecx, ebx
	xor	ecx, ebp
	and	ecx, eax
	xor	ecx, ebp
	mov	esi, dword ptr [rdi + 0x10]
	mov	dword ptr [rsp - 0x64], esi
	add	edx, esi
	lea	ecx, [rcx + rdx - 0xa83f051]
	rol	ecx, 7
	add	ecx, eax
	mov	edx, eax
	xor	edx, ebx
	and	edx, ecx
	xor	edx, ebx
	mov	esi, dword ptr [rdi + 0x14]
	mov	dword ptr [rsp - 0x6c], esi
	add	ebp, esi
	lea	r8d, [rdx + rbp + 0x4787c62a]
	rol	r8d, 0xc
	add	r8d, ecx
	mov	edx, ecx
	xor	edx, eax
	and	edx, r8d
	xor	edx, eax
	mov	esi, dword ptr [rdi + 0x18]
	add	ebx, esi
	mov	dword ptr [rsp - 0x38], esi
	lea	ebx, [rdx + rbx - 0x57cfb9ed]
	rol	ebx, 0x11
	add	ebx, r8d
	mov	ebp, r8d
	xor	ebp, ecx
	and	ebp, ebx
	xor	ebp, ecx
	mov	edx, dword ptr [rdi + 0x1c]
	mov	dword ptr [rsp - 0x60], edx
	add	eax, edx
	lea	r9d, [rbp + rax - 0x2b96aff]
	rol	r9d, 0x16
	add	r9d, ebx
	mov	eax, ebx
	xor	eax, r8d
	and	eax, r9d
	xor	eax, r8d
	mov	edx, dword ptr [rdi + 0x20]
	mov	dword ptr [rsp - 0x68], edx
	add	ecx, edx
	lea	ecx, [rax + rcx + 0x698098d8]
	rol	ecx, 7
	add	ecx, r9d
	mov	eax, r9d
	xor	eax, ebx
	and	eax, ecx
	xor	eax, ebx
	mov	edx, dword ptr [rdi + 0x24]
	mov	dword ptr [rsp - 0x7c], edx
	add	r8d, edx
	lea	ebp, [rax + r8 - 0x74bb0851]
	rol	ebp, 0xc
	add	ebp, ecx
	mov	eax, ecx
	xor	eax, r9d
	and	eax, ebp
	xor	eax, r9d
	mov	edx, dword ptr [rdi + 0x28]
	add	ebx, edx
	mov	r13d, edx
	mov	dword ptr [rsp - 0x48], r13d
	lea	r15d, [rax + rbx - 0xa44f]
	rol	r15d, 0x11
	add	r15d, ebp
	mov	eax, ebp
	xor	eax, ecx
	and	eax, r15d
	xor	eax, ecx
	mov	edx, dword ptr [rdi + 0x2c]
	add	r9d, edx
	mov	dword ptr [rsp - 0x5c], edx
	lea	r11d, [rax + r9 - 0x76a32842]
	rol	r11d, 0x16
	add	r11d, r15d
	mov	eax, r15d
	xor	eax, ebp
	and	eax, r11d
	xor	eax, ebp
	mov	ebx, dword ptr [rdi + 0x30]
	mov	dword ptr [rsp - 0x40], ebx
	add	ecx, ebx
	lea	ecx, [rax + rcx + 0x6b901122]
	rol	ecx, 7
	add	ecx, r11d
	mov	eax, r11d
	xor	eax, r15d
	and	eax, ecx
	xor	eax, r15d
	mov	ebx, dword ptr [rdi + 0x34]
	add	ebp, ebx
	lea	r9d, [rax + rbp - 0x2678e6d]
	rol	r9d, 0xc
	add	r9d, ecx
	mov	eax, ecx
	xor	eax, r11d
	and	eax, r9d
	xor	eax, r11d
	mov	r14d, dword ptr [rdi + 0x38]
	add	r15d, r14d
	lea	r8d, [rax + r15 - 0x5986bc72]
	rol	r8d, 0x11
	add	r8d, r9d
	mov	eax, r9d
	xor	eax, ecx
	and	eax, r8d
	xor	eax, ecx
	mov	ebp, dword ptr [rdi + 0x3c]
	add	r11d, ebp
	mov	r15d, ebp
	mov	dword ptr [rsp - 0x3c], r15d
	lea	r11d, [rax + r11 + 0x49b40821]
	rol	r11d, 0x16
	add	r11d, r8d
	mov	eax, r11d
	xor	eax, r8d
	and	eax, r9d
	xor	eax, r8d
	mov	rbp, qword ptr [rsp - 0x58]
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
	mov	r9d, dword ptr [rsp - 0x6c]
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
	mov	r10d, dword ptr [rsp - 0x64]
	add	r11d, r10d
	lea	r11d, [rax + r11 - 0x182c0438]
	rol	r11d, 0x14
	add	r11d, r8d
	mov	eax, r11d
	xor	eax, r8d
	and	eax, ebp
	xor	eax, r8d
	add	ecx, dword ptr [rsp - 0x7c]
	lea	ecx, [rax + rcx + 0x21e1cde6]
	rol	ecx, 5
	add	ecx, r11d
	mov	eax, ecx
	xor	eax, r11d
	and	eax, r8d
	xor	eax, r11d
	mov	r13d, r14d
	mov	dword ptr [rsp - 0x4c], r13d
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
	mov	esi, dword ptr [rsp - 0x68]
	add	r11d, esi
	lea	r11d, [rax + r11 + 0x455a14ed]
	rol	r11d, 0x14
	add	r11d, r8d
	mov	eax, r11d
	xor	eax, r8d
	and	eax, ebp
	xor	eax, r8d
	add	ecx, ebx
	mov	dword ptr [rsp - 0x44], ebx
	lea	ecx, [rax + rcx - 0x561c16fb]
	rol	ecx, 5
	add	ecx, r11d
	mov	eax, ecx
	xor	eax, r11d
	and	eax, r8d
	xor	eax, r11d
	mov	rdx, qword ptr [rsp - 0x30]
	add	ebp, edx
	lea	r14d, [rax + rbp - 0x3105c08]
	rol	r14d, 9
	add	r14d, ecx
	mov	eax, r14d
	xor	eax, ecx
	and	eax, r11d
	xor	eax, ecx
	mov	edx, dword ptr [rsp - 0x60]
	add	r8d, edx
	lea	r8d, [rax + r8 + 0x676f02d9]
	rol	r8d, 0xe
	add	r8d, r14d
	mov	ebp, r8d
	xor	ebp, r14d
	mov	eax, ebp
	and	eax, ecx
	xor	eax, r14d
	mov	r15d, dword ptr [rsp - 0x40]
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
	add	r8d, dword ptr [rsp - 0x5c]
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
	mov	rcx, qword ptr [rsp - 0x58]
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
	mov	r10d, dword ptr [rsp - 0x48]
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
	mov	rsi, qword ptr [rsp - 0x10]
	add	r14d, esi
	lea	r11d, [rcx + r14 - 0x155ed806]
	rol	r11d, 0xb
	add	r11d, eax
	mov	ecx, eax
	xor	ecx, r8d
	xor	ecx, r11d
	mov	r9, qword ptr [rsp - 0x18]
	add	ebp, r9d
	lea	r14d, [rcx + rbp - 0x2b10cf7b]
	rol	r14d, 0x10
	add	r14d, r11d
	mov	ecx, r11d
	xor	ecx, eax
	xor	ecx, r14d
	mov	r12d, dword ptr [rsp - 0x38]
	add	r8d, r12d
	lea	r8d, [rcx + r8 + 0x4881d05]
	rol	r8d, 0x17
	add	r8d, r14d
	mov	ecx, r14d
	xor	ecx, r11d
	xor	ecx, r8d
	add	eax, dword ptr [rsp - 0x7c]
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
	mov	r13d, dword ptr [rsp - 0x3c]
	add	r14d, r13d
	lea	r11d, [rbp + r14 + 0x1fa27cf8]
	rol	r11d, 0x10
	add	r11d, edx
	mov	ebp, edx
	xor	ebp, ecx
	xor	ebp, r11d
	mov	rax, qword ptr [rsp - 0x30]
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
	add	edx, dword ptr [rsp - 0x60]
	rol	ecx, 6
	add	ecx, r8d
	mov	eax, r11d
	not	eax
	or	eax, ecx
	xor	eax, r8d
	lea	ebp, [rax + rdx + 0x432aff97]
	add	r11d, dword ptr [rsp - 0x4c]
	rol	ebp, 0xa
	add	ebp, ecx
	mov	eax, r8d
	not	eax
	or	eax, ebp
	xor	eax, ecx
	lea	eax, [rax + r11 - 0x546bdc59]
	add	r8d, dword ptr [rsp - 0x6c]
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
	mov	rbx, qword ptr [rsp - 0x78]
	rol	ebp, 0xa
	add	ebp, ecx
	mov	edx, esi
	not	edx
	or	edx, ebp
	xor	edx, ecx
	lea	eax, [rdx + rax - 0x100b83]
	rol	eax, 0xf
	add	eax, ebp
	mov	rdx, qword ptr [rsp - 0x58]
	add	esi, edx
	mov	edx, ecx
	not	edx
	or	edx, eax
	xor	edx, ebp
	lea	r8d, [rdx + rsi - 0x7a7ba22f]
	rol	r8d, 0x15
	add	r8d, eax
	add	ecx, dword ptr [rsp - 0x68]
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
	add	r8d, dword ptr [rsp - 0x44]
	mov	eax, ecx
	not	eax
	or	eax, ebp
	xor	eax, edx
	lea	esi, [rax + r8 + 0x4e0811a1]
	mov	r8, qword ptr [rsp - 0x20]
	mov	r10d, dword ptr [rsp - 0x34]
	rol	esi, 0x15
	add	esi, ebp
	add	ecx, dword ptr [rsp - 0x64]
	mov	eax, edx
	not	eax
	or	eax, esi
	xor	eax, ebp
	lea	ecx, [rax + rcx - 0x8ac817e]
	rol	ecx, 6
	add	ecx, esi
	add	edx, dword ptr [rsp - 0x5c]
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
	add	esi, dword ptr [rsp - 0x7c]
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
	mov	rcx, qword ptr [rsp]
	add	eax, ecx
	mov	rcx, qword ptr [rsp - 8]
	add	edx, ecx
	add	rdi, 0x40
	cmp	rdi, r8
	mov	r9d, eax
	mov	ebp, edx
	jb	.label_964
	jmp	.label_965
.label_963:
	mov	edx, ebp
	mov	eax, r9d
.label_965:
	mov	rcx, qword ptr [rsp - 0x28]
	mov	dword ptr [rcx], r10d
	mov	dword ptr [rcx + 4], ebx
	mov	dword ptr [rcx + 8], eax
	mov	dword ptr [rcx + 0xc], edx
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
	#Procedure 0x40bd50
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
	je	.label_966
	movaps	xmm0, xmmword ptr [rip + label_961]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp + 0x14], 0
	mov	dword ptr [rsp + 0x10], 0
	mov	dword ptr [rsp + 0x18], 0
	lea	r13, [rsp]
	jmp	.label_968
	nop	word ptr [rax + rax]
.label_971:
	mov	esi, 0x8000
	mov	rdi, r15
	mov	rdx, r13
	call	md5_process_block
.label_968:
	xor	ebx, ebx
	nop	word ptr cs:[rax + rax]
.label_973:
	test	byte ptr [r12], 0x10
	jne	.label_970
	lea	rdi, [r15 + rbx]
	mov	edx, 0x8000
	sub	rdx, rbx
	mov	esi, 1
	mov	rcx, r12
	call	fread_unlocked
	add	rbx, rax
	cmp	rbx, 0x8000
	je	.label_971
	test	rax, rax
	jne	.label_973
	test	byte ptr [r12], 0x20
	jne	.label_967
.label_970:
	test	rbx, rbx
	je	.label_969
	lea	rdx, [rsp]
	mov	rdi, r15
	mov	rsi, rbx
	call	md5_process_bytes
.label_969:
	mov	eax, dword ptr [rsp + 0x18]
	cmp	rax, 0x38
	mov	ecx, 0x10
	mov	ebx, 0x20
	cmovb	rbx, rcx
	mov	ecx, dword ptr [rsp + 0x10]
	add	ecx, eax
	mov	dword ptr [rsp + 0x10], ecx
	jae	.label_972
	inc	dword ptr [rsp + 0x14]
.label_972:
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
	jmp	.label_966
.label_967:
	mov	rdi, r15
	call	free
	mov	eax, 1
.label_966:
	add	rsp, 0xa0
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40bed0

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
	je	.label_977
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
	jb	.label_976
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
.label_976:
	add	r15, r13
	sub	r12, r13
.label_977:
	cmp	r12, 0x40
	jb	.label_974
	mov	rbx, r12
	and	rbx, 0xffffffffffffffc0
	mov	rdi, r15
	mov	rsi, rbx
	mov	rdx, r14
	call	md5_process_block
	add	r15, rbx
	and	r12d, 0x3f
.label_974:
	test	r12, r12
	je	.label_978
	mov	ebx, dword ptr [r14 + 0x18]
	lea	rdi, [r14 + rbx + 0x1c]
	mov	rsi, r15
	mov	rdx, r12
	call	memcpy
	add	rbx, r12
	cmp	rbx, 0x40
	jb	.label_975
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
.label_975:
	mov	dword ptr [r14 + 0x18], ebx
.label_978:
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
	.align	32
	#Procedure 0x40bfd0
	.globl md5_buffer
	.type md5_buffer, @function
md5_buffer:

	push	r15
	push	r14
	push	rbx
	sub	rsp, 0xa0
	mov	r14, rdx
	movaps	xmm0, xmmword ptr [rip + label_961]
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
	mov	edx, dword ptr [rsp + 0x14]
	jae	.label_979
	inc	edx
	mov	dword ptr [rsp + 0x14], edx
.label_979:
	lea	esi, [rcx*8]
	lea	r15, [rsp + 0x1c]
	mov	dword ptr [rsp + rbx*4 + 0x14], esi
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
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40c0a0
	.globl fdadvise
	.type fdadvise, @function
fdadvise:

	jmp	posix_fadvise
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40c0b0

	.globl fadvise
	.type fadvise, @function
fadvise:
	push	rbx
	mov	ebx, esi
	test	rdi, rdi
	je	.label_980
	call	fileno
	xor	esi, esi
	xor	edx, edx
	mov	edi, eax
	mov	ecx, ebx
	pop	rbx
	jmp	posix_fadvise
.label_980:
	pop	rbx
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40c0d0

	.globl filevercmp
	.type filevercmp, @function
filevercmp:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x38
	mov	r12, rsi
	mov	rbx, rdi
	call	strcmp
	mov	r11d, eax
	xor	eax, eax
	test	r11d, r11d
	je	.label_987
	mov	dl, byte ptr [rbx]
	mov	eax, 0xffffffff
	test	dl, dl
	je	.label_987
	mov	cl, byte ptr [r12]
	test	cl, cl
	je	.label_983
	cmp	dl, 0x2e
	jne	.label_985
	cmp	byte ptr [rbx + 1], 0
	je	.label_987
.label_985:
	cmp	cl, 0x2e
	jne	.label_989
	cmp	byte ptr [r12 + 1], 0
	je	.label_990
.label_989:
	cmp	dl, 0x2e
	jne	.label_992
	cmp	byte ptr [rbx + 1], 0x2e
	jne	.label_992
	cmp	byte ptr [rbx + 2], 0
	je	.label_987
.label_992:
	cmp	cl, 0x2e
	jne	.label_998
	cmp	byte ptr [r12 + 1], 0x2e
	jne	.label_998
	cmp	byte ptr [r12 + 2], 0
	je	.label_1000
.label_998:
	cmp	dl, 0x2e
	jne	.label_1002
	cmp	cl, 0x2e
	jne	.label_987
	inc	r12
	mov	dl, byte ptr [rbx + 1]
	inc	rbx
	jmp	.label_1003
.label_983:
	mov	eax, 1
	jmp	.label_987
.label_1002:
	cmp	cl, 0x2e
	mov	eax, 1
	je	.label_987
.label_1003:
	movabs	r15, 0x3ffffff03ffffff
	xor	r10d, r10d
	test	dl, dl
	mov	qword ptr [rsp], rbx
	mov	rbp, rbx
	je	.label_1013
	xor	r8d, r8d
	movabs	rsi, 0x3ffffffffffffff
	and	rsi, r15
	mov	rbp, qword ptr [rsp]
	xor	edi, edi
	xor	r10d, r10d
	nop	word ptr cs:[rax + rax]
.label_997:
	test	dil, 1
	jne	.label_1007
	cmp	dl, 0x2e
	jne	.label_1022
	test	r10, r10
	cmove	r10, rbp
	mov	dil, 1
	jmp	.label_981
	nop	word ptr [rax + rax]
.label_1007:
	movsx	edi, dl
	add	edi, -0x41
	cmp	edi, 0x39
	ja	.label_994
	bt	rsi, rdi
	jb	.label_1024
.label_994:
	xor	edi, edi
	cmp	dl, 0x7e
	cmovne	r10, rdi
	jmp	.label_981
	nop	dword ptr [rax]
.label_1022:
	movsx	ebx, dl
	lea	eax, [rbx - 0x41]
	cmp	eax, 0x39
	ja	.label_986
	bt	r15, rax
	jb	.label_981
.label_986:
	add	ebx, -0x30
	cmp	ebx, 0xa
	jb	.label_981
	cmp	dl, 0x7e
	cmovne	r10, r8
	jmp	.label_981
.label_1024:
	xor	edi, edi
	nop	word ptr cs:[rax + rax]
.label_981:
	movzx	edx, byte ptr [rbp + 1]
	inc	rbp
	test	dl, dl
	jne	.label_997
.label_1013:
	mov	dl, byte ptr [r12]
	xor	eax, eax
	test	dl, dl
	mov	rbx, r12
	je	.label_999
	xor	r8d, r8d
	movabs	r9, 0x3ffffffffffffff
	and	r9, r15
	mov	rbx, r12
	xor	edi, edi
	xor	eax, eax
	nop	word ptr cs:[rax + rax]
.label_1018:
	test	dil, 1
	jne	.label_1008
	cmp	dl, 0x2e
	jne	.label_1010
	test	rax, rax
	cmove	rax, rbx
	mov	dil, 1
	jmp	.label_1012
	nop	word ptr [rax + rax]
.label_1008:
	movsx	esi, dl
	add	esi, -0x41
	cmp	esi, 0x39
	ja	.label_1017
	bt	r9, rsi
	jb	.label_1020
.label_1017:
	xor	edi, edi
	cmp	dl, 0x7e
	cmovne	rax, rdi
	jmp	.label_1012
	nop	dword ptr [rax]
.label_1010:
	movsx	esi, dl
	lea	ecx, [rsi - 0x41]
	cmp	ecx, 0x39
	ja	.label_1009
	bt	r15, rcx
	jb	.label_1012
.label_1009:
	add	esi, -0x30
	cmp	esi, 0xa
	jb	.label_1012
	cmp	dl, 0x7e
	cmovne	rax, r8
	jmp	.label_1012
.label_1020:
	xor	edi, edi
	nop	word ptr cs:[rax + rax]
.label_1012:
	movzx	edx, byte ptr [rbx + 1]
	inc	rbx
	test	dl, dl
	jne	.label_1018
.label_999:
	test	r10, r10
	mov	r13, rbp
	cmovne	r13, r10
	sub	r13, qword ptr [rsp]
	test	rax, rax
	mov	rdi, rbx
	cmovne	rdi, rax
	sub	rdi, r12
	or	r10, rax
	mov	dword ptr [rsp + 0x14], r11d
	mov	qword ptr [rsp + 0x18], r13
	je	.label_991
	cmp	r13, rdi
	jne	.label_991
	mov	r14, qword ptr [rsp]
	mov	rdi, r14
	mov	rsi, r12
	mov	rdx, r13
	call	strncmp
	test	eax, eax
	mov	rdi, r13
	jne	.label_996
	sub	rbp, r14
	sub	rbx, r12
	mov	rdi, rbx
	mov	qword ptr [rsp + 0x18], rbp
	jmp	.label_996
.label_990:
	mov	eax, 1
	jmp	.label_987
.label_991:
	mov	r14, qword ptr [rsp]
.label_996:
	lea	rax, [r12 + 1]
	mov	qword ptr [rsp + 0x30], rax
	lea	rax, [r14 + 1]
	mov	qword ptr [rsp + 0x28], rax
	xor	ecx, ecx
	movabs	rax, 0x3ffffffffffffff
	and	r15, rax
	mov	qword ptr [rsp + 0x20], r15
	xor	r13d, r13d
	mov	rbx, r14
	mov	qword ptr [rsp + 8], rdi
.label_1015:
	cmp	rcx, rdi
	mov	rbp, qword ptr [rsp + 0x18]
	jb	.label_1006
	cmp	r13, rbp
	jae	.label_1016
.label_1006:
	lea	r9, [r13 - 1]
	lea	r10, [rcx - 1]
	lea	r15, [rcx + 1]
	mov	rax, qword ptr [rsp + 0x30]
	lea	r11, [rax + rcx]
	lea	r14, [r13 + 1]
	mov	rax, qword ptr [rsp + 0x28]
	lea	r8, [rax + r13]
	jmp	.label_1019
	nop	word ptr [rax + rax]
.label_1021:
	inc	r13
	inc	rcx
	inc	r9
	inc	r10
	inc	r15
	inc	r11
	inc	r14
	inc	r8
.label_1019:
	cmp	r13, rbp
	jae	.label_1025
	movsx	eax, byte ptr [rbx + r13]
	add	eax, -0x30
	cmp	eax, 9
	ja	.label_1026
.label_1025:
	cmp	rcx, rdi
	jae	.label_982
	movsx	eax, byte ptr [r12 + rcx]
	add	eax, -0x30
	cmp	eax, 0xa
	jb	.label_982
.label_1026:
	xor	edx, edx
	cmp	rbp, r13
	mov	eax, 0
	je	.label_988
	movzx	esi, byte ptr [rbx + r13]
	lea	eax, [rsi - 0x30]
	cmp	eax, 0xa
	mov	eax, 0
	jb	.label_988
	lea	eax, [rsi - 0x41]
	cmp	eax, 0x39
	ja	.label_993
	mov	rdi, qword ptr [rsp + 0x20]
	bt	rdi, rax
	mov	rdi, qword ptr [rsp + 8]
	jb	.label_995
.label_993:
	mov	eax, esi
	or	eax, 0x100
	cmp	sil, 0x7e
	mov	esi, 0xffffffff
	cmove	eax, esi
	jmp	.label_988
.label_995:
	mov	eax, esi
	nop	word ptr cs:[rax + rax]
.label_988:
	cmp	rdi, rcx
	je	.label_1005
	movzx	esi, byte ptr [r12 + rcx]
	lea	edi, [rsi - 0x30]
	cmp	edi, 0xa
	mov	rdi, qword ptr [rsp + 8]
	jb	.label_1005
	lea	edx, [rsi - 0x41]
	cmp	edx, 0x39
	ja	.label_1011
	mov	rdi, qword ptr [rsp + 0x20]
	bt	rdi, rdx
	mov	rdi, qword ptr [rsp + 8]
	jb	.label_1014
.label_1011:
	mov	edx, esi
	or	edx, 0x100
	cmp	sil, 0x7e
	mov	esi, 0xffffffff
	cmove	edx, esi
	jmp	.label_1005
.label_1014:
	mov	edx, esi
	nop	word ptr [rax + rax]
.label_1005:
	sub	eax, edx
	je	.label_1021
	jmp	.label_1004
.label_982:
	mov	r13, r9
.label_1023:
	mov	rax, r14
	mov	rsi, r8
	movsx	r9d, byte ptr [rbx + r13 + 1]
	inc	r13
	lea	r14, [rax + 1]
	lea	r8, [rsi + 1]
	cmp	r9d, 0x30
	je	.label_1023
	mov	rcx, r10
.label_1027:
	mov	rdi, r15
	mov	rdx, r11
	movsx	ebp, byte ptr [r12 + rcx + 1]
	inc	rcx
	lea	r15, [rdi + 1]
	lea	r11, [rdx + 1]
	cmp	ebp, 0x30
	je	.label_1027
	lea	ebx, [r9 - 0x30]
	xor	r8d, r8d
	cmp	ebx, 9
	ja	.label_984
	lea	ebx, [rbp - 0x30]
	cmp	ebx, 9
	ja	.label_984
	xor	r8d, r8d
	mov	ebx, r9d
	nop	word ptr cs:[rax + rax]
.label_1001:
	mov	r9d, r8d
	mov	rcx, rdi
	mov	r13, rax
	sub	ebx, ebp
	test	r9d, r9d
	mov	r8d, ebx
	cmovne	r8d, r9d
	mov	r9b, byte ptr [rsi]
	movsx	ebx, r9b
	lea	eax, [rbx - 0x30]
	cmp	eax, 9
	ja	.label_984
	movsx	ebp, byte ptr [rdx]
	lea	r10d, [rbp - 0x30]
	lea	rdi, [rcx + 1]
	inc	rdx
	lea	rax, [r13 + 1]
	inc	rsi
	cmp	r10d, 0xa
	jb	.label_1001
.label_984:
	movsx	edx, r9b
	add	edx, -0x30
	mov	eax, 1
	cmp	edx, 0xa
	mov	rbx, qword ptr [rsp]
	mov	rdi, qword ptr [rsp + 8]
	jb	.label_1004
	movsx	edx, byte ptr [r12 + rcx]
	add	edx, -0x30
	mov	eax, 0xffffffff
	cmp	edx, 0xa
	jb	.label_1004
	test	r8d, r8d
	mov	eax, r8d
	je	.label_1015
	jmp	.label_1004
.label_1000:
	mov	eax, 1
	jmp	.label_987
.label_1016:
	xor	eax, eax
.label_1004:
	test	eax, eax
	mov	ecx, dword ptr [rsp + 0x14]
	cmovne	ecx, eax
	mov	eax, ecx
.label_987:
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
	.align	32
	#Procedure 0x40c5d0

	.globl hard_locale
	.type hard_locale, @function
hard_locale:
	push	rbx
	xor	esi, esi
	call	setlocale
	mov	bl, 1
	test	rax, rax
	je	.label_1029
	cmp	byte ptr [rax], 0x43
	jne	.label_1031
	cmp	byte ptr [rax + 1], 0
	je	.label_1028
.label_1031:
	mov	esi, OFFSET FLAT:label_1030
	mov	rdi, rax
	call	strcmp
	test	eax, eax
	jne	.label_1029
.label_1028:
	xor	ebx, ebx
.label_1029:
	mov	eax, ebx
	pop	rbx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40c610
	.globl hash_get_n_buckets
	.type hash_get_n_buckets, @function
hash_get_n_buckets:

	mov	rax, qword ptr [rdi + 0x10]
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40c620
	.globl hash_get_n_buckets_used
	.type hash_get_n_buckets_used, @function
hash_get_n_buckets_used:

	mov	rax, qword ptr [rdi + 0x18]
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40c630
	.globl hash_get_n_entries
	.type hash_get_n_entries, @function
hash_get_n_entries:

	mov	rax, qword ptr [rdi + 0x20]
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40c640
	.globl hash_get_max_bucket_length
	.type hash_get_max_bucket_length, @function
hash_get_max_bucket_length:

	mov	rcx, qword ptr [rdi]
	mov	rdi, qword ptr [rdi + 8]
	xor	eax, eax
	cmp	rcx, rdi
	jae	.label_1032
	mov	rax, rcx
	not	rax
	add	rdi, rax
	shr	rdi, 4
	lea	rsi, [rdi + 1]
	mov	r8d, esi
	and	r8d, 1
	xor	eax, eax
	test	rdi, rdi
	je	.label_1036
	sub	rsi, r8
	xor	eax, eax
	nop	word ptr cs:[rax + rax]
.label_1037:
	cmp	qword ptr [rcx], 0
	je	.label_1033
	xor	edi, edi
	mov	rdx, rcx
	nop	dword ptr [rax + rax]
.label_1035:
	mov	rdx, qword ptr [rdx + 8]
	inc	rdi
	test	rdx, rdx
	jne	.label_1035
	cmp	rdi, rax
	cmova	rax, rdi
.label_1033:
	cmp	qword ptr [rcx + 0x10], 0
	je	.label_1034
	lea	rdx, [rcx + 0x10]
	xor	edi, edi
.label_1038:
	mov	rdx, qword ptr [rdx + 8]
	inc	rdi
	test	rdx, rdx
	jne	.label_1038
	cmp	rdi, rax
	cmova	rax, rdi
.label_1034:
	add	rcx, 0x20
	add	rsi, -2
	jne	.label_1037
.label_1036:
	test	r8, r8
	je	.label_1032
	cmp	qword ptr [rcx], 0
	je	.label_1032
	xor	edx, edx
	nop	word ptr [rax + rax]
.label_1039:
	mov	rcx, qword ptr [rcx + 8]
	inc	rdx
	test	rcx, rcx
	jne	.label_1039
	cmp	rdx, rax
	cmova	rax, rdx
.label_1032:
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40c700
	.globl hash_table_ok
	.type hash_table_ok, @function
hash_table_ok:

	mov	rax, qword ptr [rdi]
	mov	r9, qword ptr [rdi + 8]
	xor	r10d, r10d
	cmp	rax, r9
	mov	ecx, 0
	jae	.label_1040
	mov	rcx, rax
	not	rcx
	add	r9, rcx
	shr	r9, 4
	lea	rsi, [r9 + 1]
	mov	r8d, esi
	and	r8d, 1
	xor	ecx, ecx
	test	r9, r9
	je	.label_1044
	sub	rsi, r8
	xor	ecx, ecx
	xor	r10d, r10d
	nop	
.label_1050:
	cmp	qword ptr [rax], 0
	je	.label_1041
	mov	rdx, rax
	nop	dword ptr [rax]
.label_1043:
	inc	rcx
	mov	rdx, qword ptr [rdx + 8]
	test	rdx, rdx
	jne	.label_1043
	inc	r10
.label_1041:
	cmp	qword ptr [rax + 0x10], 0
	je	.label_1045
	lea	rdx, [rax + 0x10]
	nop	word ptr [rax + rax]
.label_1048:
	inc	rcx
	mov	rdx, qword ptr [rdx + 8]
	test	rdx, rdx
	jne	.label_1048
	inc	r10
.label_1045:
	add	rax, 0x20
	add	rsi, -2
	jne	.label_1050
	jmp	.label_1042
.label_1044:
	xor	r10d, r10d
.label_1042:
	test	r8, r8
	je	.label_1040
	cmp	qword ptr [rax], 0
	je	.label_1040
	nop	dword ptr [rax]
.label_1046:
	inc	rcx
	mov	rax, qword ptr [rax + 8]
	test	rax, rax
	jne	.label_1046
	inc	r10
.label_1040:
	cmp	r10, qword ptr [rdi + 0x18]
	jne	.label_1047
	mov	al, 1
	cmp	rcx, qword ptr [rdi + 0x20]
	je	.label_1049
.label_1047:
	xor	eax, eax
.label_1049:
	ret	
	.section	.text
	.align	32
	#Procedure 0x40c7c0
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
	mov	rdi, qword ptr [rdi + 8]
	xor	ebx, ebx
	cmp	rax, rdi
	jae	.label_1051
	mov	rdx, rax
	not	rdx
	add	rdi, rdx
	shr	rdi, 4
	lea	rsi, [rdi + 1]
	mov	r8d, esi
	and	r8d, 1
	xor	ebx, ebx
	test	rdi, rdi
	je	.label_1056
	sub	rsi, r8
	xor	ebx, ebx
	nop	dword ptr [rax]
.label_1054:
	cmp	qword ptr [rax], 0
	je	.label_1059
	xor	edi, edi
	mov	rdx, rax
	nop	dword ptr [rax + rax]
.label_1055:
	mov	rdx, qword ptr [rdx + 8]
	inc	rdi
	test	rdx, rdx
	jne	.label_1055
	cmp	rdi, rbx
	cmova	rbx, rdi
.label_1059:
	cmp	qword ptr [rax + 0x10], 0
	je	.label_1060
	lea	rdx, [rax + 0x10]
	xor	edi, edi
.label_1062:
	mov	rdx, qword ptr [rdx + 8]
	inc	rdi
	test	rdx, rdx
	jne	.label_1062
	cmp	rdi, rbx
	cmova	rbx, rdi
.label_1060:
	add	rax, 0x20
	add	rsi, -2
	jne	.label_1054
.label_1056:
	test	r8, r8
	je	.label_1051
	cmp	qword ptr [rax], 0
	je	.label_1051
	xor	edx, edx
	nop	word ptr [rax + rax]
.label_1052:
	mov	rax, qword ptr [rax + 8]
	inc	rdx
	test	rax, rax
	jne	.label_1052
	cmp	rdx, rbx
	cmova	rbx, rdx
.label_1051:
	mov	esi, 1
	mov	edx, OFFSET FLAT:label_1053
	xor	eax, eax
	mov	rdi, r15
	call	__fprintf_chk
	mov	esi, 1
	mov	edx, OFFSET FLAT:label_1061
	xor	eax, eax
	mov	rdi, r15
	mov	rcx, r12
	call	__fprintf_chk
	movq	xmm1, r14
	movdqa	xmm2, xmmword ptr [rip + label_245]
	punpckldq	xmm1, xmm2
	movapd	xmm3, xmmword ptr [rip + label_246]
	subpd	xmm1, xmm3
	pshufd	xmm0, xmm1, 0x4e
	addpd	xmm0, xmm1
	mulsd	xmm0, qword ptr [rip + label_391]
	movq	xmm1, r12
	punpckldq	xmm1, xmm2
	subpd	xmm1, xmm3
	pshufd	xmm2, xmm1, 0x4e
	addpd	xmm2, xmm1
	divsd	xmm0, xmm2
	mov	esi, 1
	mov	edx, OFFSET FLAT:label_1058
	mov	al, 1
	mov	rdi, r15
	mov	rcx, r14
	call	__fprintf_chk
	mov	esi, 1
	mov	edx, OFFSET FLAT:label_1057
	xor	eax, eax
	mov	rdi, r15
	mov	rcx, rbx
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	jmp	__fprintf_chk
	nop	
	.section	.text
	.align	32
	#Procedure 0x40c930
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
	jae	.label_1066
	mov	rbx, qword ptr [r14]
	shl	rax, 4
	mov	rsi, qword ptr [rbx + rax]
	xor	r15d, r15d
	test	rsi, rsi
	je	.label_1063
	add	rbx, rax
	je	.label_1063
	cmp	rsi, r12
	je	.label_1065
	xor	r15d, r15d
	nop	
.label_1064:
	mov	rdi, r12
	call	qword ptr [r14 + 0x38]
	test	al, al
	jne	.label_1067
	mov	rbx, qword ptr [rbx + 8]
	test	rbx, rbx
	je	.label_1063
	mov	rsi, qword ptr [rbx]
	cmp	rsi, r12
	jne	.label_1064
.label_1065:
	mov	r15, r12
	jmp	.label_1063
.label_1067:
	mov	r15, qword ptr [rbx]
.label_1063:
	mov	rax, r15
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
.label_1066:
	call	abort
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40c9b0
	.globl hash_get_first
	.type hash_get_first, @function
hash_get_first:

	xor	eax, eax
	cmp	qword ptr [rdi + 0x20], 0
	je	.label_1068
	mov	rcx, qword ptr [rdi]
	mov	rdx, qword ptr [rdi + 8]
	jmp	.label_1071
	nop	word ptr cs:[rax + rax]
.label_1070:
	add	rcx, 0x10
.label_1071:
	cmp	rcx, rdx
	jae	.label_1069
	mov	rax, qword ptr [rcx]
	test	rax, rax
	je	.label_1070
.label_1068:
	ret	
.label_1069:
	push	rax
	call	abort
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40c9f0
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
	jae	.label_1074
	mov	rcx, qword ptr [r14]
	shl	rax, 4
	lea	rdx, [rcx + rax]
	nop	word ptr cs:[rax + rax]
.label_1075:
	cmp	qword ptr [rdx], rbx
	mov	rdx, qword ptr [rdx + 8]
	je	.label_1072
	test	rdx, rdx
	jne	.label_1075
	jmp	.label_1073
.label_1072:
	test	rdx, rdx
	je	.label_1073
	mov	rax, qword ptr [rdx]
	jmp	.label_1076
.label_1073:
	mov	rdx, qword ptr [r14 + 8]
	lea	rcx, [rcx + rax + 0x10]
	nop	word ptr cs:[rax + rax]
.label_1077:
	cmp	rcx, rdx
	mov	eax, 0
	jae	.label_1076
	mov	rax, qword ptr [rcx]
	add	rcx, 0x10
	test	rax, rax
	je	.label_1077
.label_1076:
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
.label_1074:
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40ca80
	.globl hash_get_entries
	.type hash_get_entries, @function
hash_get_entries:

	mov	r9, qword ptr [rdi]
	mov	r8, qword ptr [rdi + 8]
	xor	eax, eax
	cmp	r9, r8
	jae	.label_1078
	xor	eax, eax
.label_1080:
	cmp	qword ptr [r9], 0
	je	.label_1079
	test	r9, r9
	je	.label_1079
	mov	r8, r9
	nop	
.label_1081:
	cmp	rax, rdx
	jae	.label_1078
	mov	rcx, qword ptr [r8]
	mov	qword ptr [rsi + rax*8], rcx
	inc	rax
	mov	r8, qword ptr [r8 + 8]
	test	r8, r8
	jne	.label_1081
	mov	r8, qword ptr [rdi + 8]
.label_1079:
	add	r9, 0x10
	cmp	r9, r8
	jb	.label_1080
.label_1078:
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40cad0
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
	cmp	r13, rax
	jae	.label_1085
	xor	ebx, ebx
.label_1084:
	mov	rdi, qword ptr [r13]
	test	rdi, rdi
	je	.label_1086
	test	r13, r13
	je	.label_1086
	mov	rsi, r14
	call	r15
	test	al, al
	je	.label_1085
	mov	rbp, r13
	nop	word ptr cs:[rax + rax]
.label_1083:
	mov	rbp, qword ptr [rbp + 8]
	test	rbp, rbp
	je	.label_1082
	inc	rbx
	mov	rdi, qword ptr [rbp]
	mov	rsi, r14
	call	r15
	test	al, al
	jne	.label_1083
	jmp	.label_1085
	nop	dword ptr [rax]
.label_1082:
	mov	rax, qword ptr [r12 + 8]
	inc	rbx
.label_1086:
	add	r13, 0x10
	cmp	r13, rax
	jb	.label_1084
.label_1085:
	mov	rax, rbx
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
	#Procedure 0x40cb70
	.globl hash_string
	.type hash_string, @function
hash_string:

	mov	al, byte ptr [rdi]
	xor	edx, edx
	test	al, al
	je	.label_1087
	inc	rdi
	xor	edx, edx
	nop	dword ptr [rax]
.label_1088:
	mov	rcx, rdx
	shl	rcx, 5
	sub	rcx, rdx
	movzx	eax, al
	add	rax, rcx
	xor	edx, edx
	div	rsi
	movzx	eax, byte ptr [rdi]
	inc	rdi
	test	al, al
	jne	.label_1088
.label_1087:
	mov	rax, rdx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40cbb0
	.globl hash_reset_tuning
	.type hash_reset_tuning, @function
hash_reset_tuning:

	mov	eax, dword ptr [rip + label_1089]
	mov	dword ptr [rdi + 0x10], eax
	movups	xmm0, xmmword ptr [rip + default_tuning]
	movups	xmmword ptr [rdi], xmm0
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40cbd0

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
	je	.label_1092
	test	rbx, rbx
	mov	eax, OFFSET FLAT:default_tuning
	cmove	rbx, rax
	mov	qword ptr [r15 + 0x28], rbx
	cmp	rbx, rax
	je	.label_1097
	movss	xmm0, dword ptr [rbx + 8]
	ucomiss	xmm0, dword ptr [rip + label_1102]
	jbe	.label_1091
	movss	xmm1, dword ptr [rip + label_1105]
	ucomiss	xmm1, xmm0
	jbe	.label_1091
	movss	xmm1, dword ptr [rbx + 0xc]
	ucomiss	xmm1, dword ptr [rip + label_1096]
	jbe	.label_1091
	movss	xmm1, dword ptr [rbx]
	xorps	xmm2, xmm2
	ucomiss	xmm1, xmm2
	jb	.label_1091
	addss	xmm1, dword ptr [rip + label_1102]
	ucomiss	xmm0, xmm1
	jbe	.label_1091
	movss	xmm0, dword ptr [rbx + 4]
	movss	xmm2, dword ptr [rip + label_1090]
	ucomiss	xmm2, xmm0
	jb	.label_1091
	ucomiss	xmm0, xmm1
	jbe	.label_1091
.label_1097:
	cmp	byte ptr [rbx + 0x10], 0
	jne	.label_1104
	mov	eax, r12d
	and	eax, 1
	test	r12, r12
	js	.label_1101
	xorps	xmm0, xmm0
	cvtsi2ss	xmm0, r12
	jmp	.label_1103
.label_1101:
	shr	r12, 1
	or	rax, r12
	xorps	xmm0, xmm0
	cvtsi2ss	xmm0, rax
	addss	xmm0, xmm0
.label_1103:
	divss	xmm0, dword ptr [rbx + 8]
	movss	xmm1, dword ptr [rip + label_1094]
	movaps	xmm2, xmm0
	subss	xmm2, xmm1
	cvttss2si	rax, xmm2
	movabs	rcx, 0x8000000000000000
	xor	rcx, rax
	cvttss2si	r12, xmm0
	ucomiss	xmm0, xmm1
	cmovae	r12, rcx
	ucomiss	xmm0, dword ptr [rip + label_1095]
	jae	.label_1091
.label_1104:
	cmp	r12, 0xa
	mov	ebx, 0xa
	cmovae	rbx, r12
	or	rbx, 1
	jmp	.label_1093
	nop	
.label_1098:
	add	rbx, 2
.label_1093:
	cmp	rbx, -1
	je	.label_1091
	cmp	rbx, 0xa
	mov	ecx, 3
	jb	.label_1100
	mov	esi, 0xc
	mov	edi, 9
	mov	ecx, 3
	nop	dword ptr [rax + rax]
.label_1099:
	xor	edx, edx
	mov	rax, rbx
	div	rcx
	test	rdx, rdx
	je	.label_1100
	lea	rdi, [rdi + rsi + 4]
	add	rcx, 2
	add	rsi, 8
	cmp	rdi, rbx
	jb	.label_1099
.label_1100:
	xor	edx, edx
	mov	rax, rbx
	div	rcx
	test	rdx, rdx
	je	.label_1098
	mov	rax, rbx
	shr	rax, 0x3c
	jne	.label_1091
	mov	qword ptr [r15 + 0x10], rbx
	test	rbx, rbx
	je	.label_1091
	mov	esi, 0x10
	mov	rdi, rbx
	call	rpl_calloc
	mov	qword ptr [r15], rax
	test	rax, rax
	je	.label_1091
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
	jmp	.label_1092
.label_1091:
	mov	rdi, r15
	call	free
	xor	eax, eax
.label_1092:
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
	#Procedure 0x40cdf0

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
	.align	32
	#Procedure 0x40ce00

	.globl raw_comparator
	.type raw_comparator, @function
raw_comparator:
	cmp	rdi, rsi
	sete	al
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40ce10
	.globl hash_clear
	.type hash_clear, @function
hash_clear:

	push	r15
	push	r14
	push	rbx
	mov	r15, rdi
	mov	r14, qword ptr [r15]
	mov	rax, qword ptr [r15 + 8]
	jmp	.label_1108
	nop	word ptr cs:[rax + rax]
.label_1111:
	add	r14, 0x10
.label_1108:
	cmp	r14, rax
	jae	.label_1110
	cmp	qword ptr [r14], 0
	je	.label_1111
	mov	rbx, qword ptr [r14 + 8]
	mov	rax, qword ptr [r15 + 0x40]
	test	rax, rax
	setne	cl
	test	rbx, rbx
	je	.label_1112
	nop	word ptr cs:[rax + rax]
.label_1107:
	test	cl, 1
	je	.label_1106
	mov	rdi, qword ptr [rbx]
	call	rax
	mov	rax, qword ptr [r15 + 0x40]
.label_1106:
	mov	qword ptr [rbx], 0
	mov	rdx, qword ptr [rbx + 8]
	mov	rcx, qword ptr [r15 + 0x48]
	mov	qword ptr [rbx + 8], rcx
	mov	qword ptr [r15 + 0x48], rbx
	test	rax, rax
	setne	cl
	test	rdx, rdx
	mov	rbx, rdx
	jne	.label_1107
.label_1112:
	test	cl, cl
	je	.label_1109
	mov	rdi, qword ptr [r14]
	call	rax
.label_1109:
	xorps	xmm0, xmm0
	movups	xmmword ptr [r14], xmm0
	mov	rax, qword ptr [r15 + 8]
	jmp	.label_1111
.label_1110:
	xorps	xmm0, xmm0
	movups	xmmword ptr [r15 + 0x18], xmm0
	pop	rbx
	pop	r14
	pop	r15
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40cec0
	.globl hash_free
	.type hash_free, @function
hash_free:

	push	r15
	push	r14
	push	rbx
	mov	r14, rdi
	cmp	qword ptr [r14 + 0x40], 0
	je	.label_1113
	cmp	qword ptr [r14 + 0x20], 0
	je	.label_1113
	mov	r15, qword ptr [r14]
	mov	rax, qword ptr [r14 + 8]
	jmp	.label_1119
	nop	
.label_1117:
	add	r15, 0x10
.label_1119:
	cmp	r15, rax
	jae	.label_1113
	mov	rdi, qword ptr [r15]
	test	rdi, rdi
	je	.label_1117
	test	r15, r15
	je	.label_1117
	call	qword ptr [r14 + 0x40]
	mov	rbx, qword ptr [r15 + 8]
	jmp	.label_1122
.label_1116:
	mov	rdi, qword ptr [rbx]
	call	qword ptr [r14 + 0x40]
	mov	rbx, qword ptr [rbx + 8]
.label_1122:
	test	rbx, rbx
	jne	.label_1116
	mov	rax, qword ptr [r14 + 8]
	jmp	.label_1117
.label_1113:
	mov	r15, qword ptr [r14]
	mov	rax, qword ptr [r14 + 8]
	jmp	.label_1114
	nop	
.label_1118:
	add	r15, 0x10
.label_1114:
	cmp	r15, rax
	jae	.label_1121
	mov	rdi, qword ptr [r15 + 8]
	test	rdi, rdi
	je	.label_1118
	nop	word ptr cs:[rax + rax]
.label_1115:
	mov	rbx, qword ptr [rdi + 8]
	call	free
	test	rbx, rbx
	mov	rdi, rbx
	jne	.label_1115
	mov	rax, qword ptr [r14 + 8]
	jmp	.label_1118
.label_1121:
	mov	rdi, qword ptr [r14 + 0x48]
	test	rdi, rdi
	je	.label_1120
.label_1123:
	mov	rbx, qword ptr [rdi + 8]
	call	free
	test	rbx, rbx
	mov	rdi, rbx
	jne	.label_1123
.label_1120:
	mov	rdi, qword ptr [r14]
	call	free
	mov	rdi, r14
	pop	rbx
	pop	r14
	pop	r15
	jmp	free
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40cf90

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
	jne	.label_1130
	mov	ecx, esi
	and	ecx, 1
	test	rsi, rsi
	js	.label_1135
	cvtsi2ss	xmm0, rsi
	jmp	.label_1140
.label_1135:
	shr	rsi, 1
	or	rcx, rsi
	cvtsi2ss	xmm0, rcx
	addss	xmm0, xmm0
.label_1140:
	divss	xmm0, dword ptr [rax + 8]
	movss	xmm1, dword ptr [rip + label_1094]
	movaps	xmm2, xmm0
	subss	xmm2, xmm1
	cvttss2si	rax, xmm2
	movabs	rcx, 0x8000000000000000
	xor	rcx, rax
	cvttss2si	rsi, xmm0
	ucomiss	xmm0, xmm1
	cmovae	rsi, rcx
	ucomiss	xmm0, dword ptr [rip + label_1095]
	jae	.label_1126
.label_1130:
	cmp	rsi, 0xa
	mov	ebx, 0xa
	cmovae	rbx, rsi
	or	rbx, 1
	jmp	.label_1125
	nop	dword ptr [rax + rax]
.label_1137:
	add	rbx, 2
.label_1125:
	cmp	rbx, -1
	je	.label_1126
	cmp	rbx, 0xa
	mov	ecx, 3
	jb	.label_1134
	mov	esi, 0xc
	mov	edi, 9
	mov	ecx, 3
	nop	dword ptr [rax + rax]
.label_1133:
	xor	edx, edx
	mov	rax, rbx
	div	rcx
	test	rdx, rdx
	je	.label_1134
	lea	rdi, [rdi + rsi + 4]
	add	rcx, 2
	add	rsi, 8
	cmp	rdi, rbx
	jb	.label_1133
.label_1134:
	xor	edx, edx
	mov	rax, rbx
	div	rcx
	test	rdx, rdx
	je	.label_1137
	lea	rax, [rbx - 1]
	movabs	rcx, 0xffffffffffffffe
	cmp	rax, rcx
	ja	.label_1126
	mov	bpl, 1
	cmp	rbx, qword ptr [r14 + 0x10]
	je	.label_1127
	mov	esi, 0x10
	mov	rdi, rbx
	call	rpl_calloc
	mov	qword ptr [rsp], rax
	test	rax, rax
	je	.label_1126
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
	je	.label_1142
	mov	rdi, qword ptr [r14]
	call	free
	movaps	xmm0, xmmword ptr [rsp]
	movups	xmmword ptr [r14], xmm0
	movaps	xmm0, xmmword ptr [rsp + 0x10]
	movups	xmmword ptr [r14 + 0x10], xmm0
	mov	rax, qword ptr [rsp + 0x48]
	mov	qword ptr [r14 + 0x48], rax
	jmp	.label_1127
.label_1142:
	mov	rax, qword ptr [rsp + 0x48]
	mov	qword ptr [r14 + 0x48], rax
	mov	r12, qword ptr [rsp]
	mov	r15, qword ptr [rsp + 8]
	jmp	.label_1136
	nop	
.label_1128:
	add	r12, 0x10
.label_1136:
	cmp	r12, r15
	jae	.label_1124
	cmp	qword ptr [r12], 0
	je	.label_1128
	mov	rbp, qword ptr [r12 + 8]
	test	rbp, rbp
	je	.label_1131
	mov	rsi, qword ptr [r14 + 0x10]
	nop	word ptr cs:[rax + rax]
.label_1129:
	mov	rbx, qword ptr [rbp]
	mov	rdi, rbx
	call	qword ptr [r14 + 0x30]
	mov	rsi, qword ptr [r14 + 0x10]
	cmp	rax, rsi
	jae	.label_1141
	mov	rdx, qword ptr [r14]
	mov	rcx, qword ptr [rbp + 8]
	shl	rax, 4
	cmp	qword ptr [rdx + rax], 0
	je	.label_1138
	mov	rdi, qword ptr [rdx + rax + 8]
	mov	qword ptr [rbp + 8], rdi
	mov	qword ptr [rdx + rax + 8], rbp
	jmp	.label_1132
	nop	word ptr [rax + rax]
.label_1138:
	add	rdx, rax
	mov	qword ptr [rdx], rbx
	inc	qword ptr [r14 + 0x18]
	mov	qword ptr [rbp], 0
	mov	rax, qword ptr [r14 + 0x48]
	mov	qword ptr [rbp + 8], rax
	mov	qword ptr [r14 + 0x48], rbp
.label_1132:
	test	rcx, rcx
	mov	rbp, rcx
	jne	.label_1129
.label_1131:
	mov	qword ptr [r12 + 8], 0
	jmp	.label_1128
.label_1124:
	lea	rsi, [rsp]
	xor	edx, edx
	mov	rdi, r14
	call	transfer_entries
	test	al, al
	je	.label_1139
	mov	rdi, qword ptr [rsp]
	call	free
.label_1126:
	xor	ebp, ebp
.label_1127:
	mov	eax, ebp
	add	rsp, 0x50
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_1141:
	call	abort
.label_1139:
	call	abort
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40d220

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
	jae	.label_1143
	nop	word ptr cs:[rax + rax]
.label_1149:
	mov	r13, qword ptr [r14]
	test	r13, r13
	je	.label_1147
	mov	r15, qword ptr [r14 + 8]
	test	r15, r15
	je	.label_1151
	mov	rsi, qword ptr [rbp + 0x10]
	nop	dword ptr [rax]
.label_1145:
	mov	rbx, qword ptr [r15]
	mov	rdi, rbx
	call	qword ptr [rbp + 0x30]
	mov	rsi, qword ptr [rbp + 0x10]
	cmp	rax, rsi
	jae	.label_1155
	mov	rdx, qword ptr [rbp]
	mov	rcx, qword ptr [r15 + 8]
	shl	rax, 4
	cmp	qword ptr [rdx + rax], 0
	je	.label_1146
	mov	rdi, qword ptr [rdx + rax + 8]
	mov	qword ptr [r15 + 8], rdi
	mov	qword ptr [rdx + rax + 8], r15
	jmp	.label_1150
	nop	dword ptr [rax]
.label_1146:
	add	rdx, rax
	mov	qword ptr [rdx], rbx
	inc	qword ptr [rbp + 0x18]
	mov	qword ptr [r15], 0
	mov	rax, qword ptr [rbp + 0x48]
	mov	qword ptr [r15 + 8], rax
	mov	qword ptr [rbp + 0x48], r15
.label_1150:
	test	rcx, rcx
	mov	r15, rcx
	jne	.label_1145
	mov	r13, qword ptr [r14]
.label_1151:
	mov	qword ptr [r14 + 8], 0
	mov	eax, dword ptr [rsp + 4]
	test	al, al
	jne	.label_1147
	mov	rsi, qword ptr [rbp + 0x10]
	mov	rdi, r13
	call	qword ptr [rbp + 0x30]
	mov	rbx, rax
	cmp	rbx, qword ptr [rbp + 0x10]
	jae	.label_1153
	mov	r15, qword ptr [rbp]
	shl	rbx, 4
	cmp	qword ptr [r15 + rbx], 0
	je	.label_1156
	mov	rax, qword ptr [rbp + 0x48]
	test	rax, rax
	je	.label_1148
	mov	rcx, qword ptr [rax + 8]
	mov	qword ptr [rbp + 0x48], rcx
	jmp	.label_1144
.label_1156:
	add	r15, rbx
	mov	qword ptr [r15], r13
	inc	qword ptr [rbp + 0x18]
	jmp	.label_1152
.label_1148:
	mov	edi, 0x10
	call	malloc
	test	rax, rax
	je	.label_1154
.label_1144:
	mov	qword ptr [rax], r13
	mov	rcx, qword ptr [r15 + rbx + 8]
	mov	qword ptr [rax + 8], rcx
	mov	qword ptr [r15 + rbx + 8], rax
.label_1152:
	mov	qword ptr [r14], 0
	dec	qword ptr [r12 + 0x18]
.label_1147:
	add	r14, 0x10
	cmp	r14, qword ptr [r12 + 8]
	jb	.label_1149
	mov	al, 1
.label_1143:
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_1154:
	xor	eax, eax
	jmp	.label_1143
.label_1155:
	call	abort
.label_1153:
	call	abort
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40d390

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
	je	.label_1164
	mov	rsi, qword ptr [r13 + 0x10]
	mov	rdi, r14
	call	qword ptr [r13 + 0x30]
	mov	rbp, rax
	cmp	rbp, qword ptr [r13 + 0x10]
	jae	.label_1164
	mov	rbx, qword ptr [r13]
	shl	rbp, 4
	lea	r12, [rbx + rbp]
	mov	rsi, qword ptr [rbx + rbp]
	test	rsi, rsi
	je	.label_1162
	cmp	rsi, r14
	je	.label_1178
	mov	rdi, r14
	call	qword ptr [r13 + 0x38]
	test	al, al
	je	.label_1181
	mov	rax, qword ptr [r12]
.label_1177:
	test	rax, rax
	jne	.label_1183
	jmp	.label_1162
.label_1178:
	mov	rax, r14
.label_1183:
	xor	ebp, ebp
	test	r15, r15
	je	.label_1159
	mov	qword ptr [r15], rax
	jmp	.label_1159
.label_1181:
	mov	rax, qword ptr [rbx + rbp + 8]
	test	rax, rax
	je	.label_1162
	lea	rbp, [rbx + rbp + 8]
	nop	word ptr [rax + rax]
.label_1174:
	mov	rsi, qword ptr [rax]
	cmp	rsi, r14
	je	.label_1168
	mov	rdi, r14
	call	qword ptr [r13 + 0x38]
	mov	rbp, qword ptr [rbp]
	test	al, al
	jne	.label_1172
	mov	rax, qword ptr [rbp + 8]
	add	rbp, 8
	test	rax, rax
	jne	.label_1174
.label_1162:
	mov	rcx, qword ptr [r13 + 0x10]
	mov	rax, qword ptr [r13 + 0x18]
	mov	edx, eax
	and	edx, 1
	test	rax, rax
	js	.label_1175
	cvtsi2ss	xmm1, rax
	jmp	.label_1180
.label_1175:
	shr	rax, 1
	or	rdx, rax
	cvtsi2ss	xmm1, rdx
	addss	xmm1, xmm1
.label_1180:
	mov	rax, qword ptr [r13 + 0x28]
	movss	xmm2, dword ptr [rax + 8]
	mov	edx, ecx
	and	edx, 1
	test	rcx, rcx
	js	.label_1185
	cvtsi2ss	xmm0, rcx
	jmp	.label_1161
.label_1185:
	shr	rcx, 1
	or	rdx, rcx
	cvtsi2ss	xmm0, rdx
	addss	xmm0, xmm0
.label_1161:
	movaps	xmm3, xmm2
	mulss	xmm3, xmm0
	ucomiss	xmm1, xmm3
	jbe	.label_1166
	mov	ecx, OFFSET FLAT:default_tuning
	cmp	rax, rcx
	je	.label_1171
	ucomiss	xmm2, dword ptr [rip + label_1102]
	jbe	.label_1173
	movss	xmm3, dword ptr [rip + label_1105]
	ucomiss	xmm3, xmm2
	jbe	.label_1173
	movss	xmm3, dword ptr [rax + 0xc]
	ucomiss	xmm3, dword ptr [rip + label_1096]
	jbe	.label_1173
	movss	xmm3, dword ptr [rax]
	xorps	xmm4, xmm4
	ucomiss	xmm3, xmm4
	jb	.label_1173
	addss	xmm3, dword ptr [rip + label_1102]
	ucomiss	xmm2, xmm3
	jbe	.label_1173
	movss	xmm4, dword ptr [rax + 4]
	movss	xmm5, dword ptr [rip + label_1090]
	ucomiss	xmm5, xmm4
	jb	.label_1173
	ucomiss	xmm4, xmm3
	ja	.label_1160
.label_1173:
	mov	qword ptr [r13 + 40], OFFSET FLAT:default_tuning
	mov	eax, OFFSET FLAT:default_tuning
	movss	xmm2, dword ptr [rip + label_1182]
	jmp	.label_1160
.label_1171:
	mov	eax, OFFSET FLAT:default_tuning
.label_1160:
	movaps	xmm3, xmm2
	mulss	xmm3, xmm0
	ucomiss	xmm1, xmm3
	jbe	.label_1166
	cmp	byte ptr [rax + 0x10], 0
	mulss	xmm0, dword ptr [rax + 0xc]
	jne	.label_1169
	mulss	xmm0, xmm2
.label_1169:
	mov	ebp, 0xffffffff
	ucomiss	xmm0, dword ptr [rip + label_1095]
	jae	.label_1159
	movss	xmm1, dword ptr [rip + label_1094]
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
	je	.label_1159
	mov	rsi, qword ptr [r13 + 0x10]
	mov	rdi, r14
	call	qword ptr [r13 + 0x30]
	mov	rbp, rax
	cmp	rbp, qword ptr [r13 + 0x10]
	jae	.label_1164
	mov	rbx, qword ptr [r13]
	shl	rbp, 4
	lea	r12, [rbx + rbp]
	mov	rsi, qword ptr [rbx + rbp]
	test	rsi, rsi
	je	.label_1166
	cmp	rsi, r14
	mov	rax, r14
	je	.label_1167
	mov	rdi, r14
	call	qword ptr [r13 + 0x38]
	test	al, al
	je	.label_1176
	mov	rax, qword ptr [r12]
.label_1167:
	test	rax, rax
	jne	.label_1179
.label_1166:
	cmp	qword ptr [r12], 0
	je	.label_1170
	mov	rax, qword ptr [r13 + 0x48]
	test	rax, rax
	je	.label_1187
	mov	rcx, qword ptr [rax + 8]
	mov	qword ptr [r13 + 0x48], rcx
	jmp	.label_1186
.label_1170:
	mov	qword ptr [r12], r14
	movdqu	xmm0, xmmword ptr [r13 + 0x18]
	paddq	xmm0, xmmword ptr [rip + label_1157]
	movdqu	xmmword ptr [r13 + 0x18], xmm0
	jmp	.label_1158
.label_1187:
	mov	edi, 0x10
	call	malloc
	mov	ebp, 0xffffffff
	test	rax, rax
	je	.label_1159
.label_1186:
	mov	qword ptr [rax], r14
	mov	rcx, qword ptr [r12 + 8]
	mov	qword ptr [rax + 8], rcx
	mov	qword ptr [r12 + 8], rax
	inc	qword ptr [r13 + 0x20]
.label_1158:
	mov	ebp, 1
.label_1159:
	mov	eax, ebp
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_1168:
	mov	rax, r14
	jmp	.label_1177
.label_1172:
	mov	rax, qword ptr [rbp]
	jmp	.label_1177
.label_1176:
	mov	rax, qword ptr [rbx + rbp + 8]
	test	rax, rax
	je	.label_1166
	lea	rbp, [rbx + rbp + 8]
.label_1165:
	mov	rsi, qword ptr [rax]
	cmp	rsi, r14
	je	.label_1184
	mov	rdi, r14
	call	qword ptr [r13 + 0x38]
	mov	rbp, qword ptr [rbp]
	test	al, al
	jne	.label_1163
	mov	rax, qword ptr [rbp + 8]
	add	rbp, 8
	test	rax, rax
	jne	.label_1165
	jmp	.label_1166
.label_1184:
	mov	rax, r14
	jmp	.label_1167
.label_1163:
	mov	rax, qword ptr [rbp]
	jmp	.label_1167
.label_1164:
	call	abort
.label_1179:
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40d6d0

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
	je	.label_1188
	test	ecx, ecx
	cmove	rbx, qword ptr [rsp + 8]
	mov	rax, rbx
.label_1188:
	add	rsp, 0x10
	pop	rbx
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40d700

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
	jae	.label_1195
	mov	rbp, qword ptr [r15]
	shl	rbx, 4
	mov	rsi, qword ptr [rbp + rbx]
	xor	r12d, r12d
	test	rsi, rsi
	je	.label_1189
	lea	r13, [rbp + rbx]
	cmp	rsi, r14
	je	.label_1203
	mov	rdi, r14
	call	qword ptr [r15 + 0x38]
	test	al, al
	je	.label_1205
	mov	r14, qword ptr [r13]
.label_1203:
	mov	rax, qword ptr [rbp + rbx + 8]
	test	rax, rax
	je	.label_1196
	movups	xmm0, xmmword ptr [rax]
	movups	xmmword ptr [r13], xmm0
	mov	qword ptr [rax], 0
	mov	rcx, qword ptr [r15 + 0x48]
	mov	qword ptr [rax + 8], rcx
	mov	qword ptr [r15 + 0x48], rax
	jmp	.label_1204
.label_1205:
	mov	rax, qword ptr [rbp + rbx + 8]
	xor	r12d, r12d
	test	rax, rax
	je	.label_1189
	lea	rbx, [rbp + rbx + 8]
	xor	r12d, r12d
	nop	word ptr [rax + rax]
.label_1201:
	mov	rsi, qword ptr [rax]
	cmp	rsi, r14
	je	.label_1197
	mov	rdi, r14
	call	qword ptr [r15 + 0x38]
	mov	rcx, qword ptr [rbx]
	test	al, al
	jne	.label_1199
	mov	rax, qword ptr [rcx + 8]
	add	rcx, 8
	test	rax, rax
	mov	rbx, rcx
	jne	.label_1201
	jmp	.label_1189
.label_1196:
	mov	qword ptr [r13], 0
	jmp	.label_1204
.label_1197:
	mov	rcx, rax
	jmp	.label_1207
.label_1199:
	mov	r14, qword ptr [rcx]
.label_1207:
	mov	rax, qword ptr [rcx + 8]
	mov	qword ptr [rbx], rax
	mov	qword ptr [rcx], 0
	mov	rax, qword ptr [r15 + 0x48]
	mov	qword ptr [rcx + 8], rax
	mov	qword ptr [r15 + 0x48], rcx
.label_1204:
	xor	r12d, r12d
	test	r14, r14
	je	.label_1189
	dec	qword ptr [r15 + 0x20]
	cmp	qword ptr [r13], 0
	jne	.label_1191
	mov	rax, qword ptr [r15 + 0x18]
	dec	rax
	mov	qword ptr [r15 + 0x18], rax
	mov	ecx, eax
	and	ecx, 1
	test	rax, rax
	js	.label_1193
	cvtsi2ss	xmm1, rax
	jmp	.label_1198
.label_1193:
	shr	rax, 1
	or	rcx, rax
	cvtsi2ss	xmm1, rcx
	addss	xmm1, xmm1
.label_1198:
	mov	rcx, qword ptr [r15 + 0x10]
	mov	rax, qword ptr [r15 + 0x28]
	movss	xmm2, dword ptr [rax]
	mov	edx, ecx
	and	edx, 1
	test	rcx, rcx
	js	.label_1202
	xorps	xmm0, xmm0
	cvtsi2ss	xmm0, rcx
	jmp	.label_1206
.label_1202:
	shr	rcx, 1
	or	rdx, rcx
	xorps	xmm0, xmm0
	cvtsi2ss	xmm0, rdx
	addss	xmm0, xmm0
.label_1206:
	movaps	xmm3, xmm2
	mulss	xmm3, xmm0
	ucomiss	xmm3, xmm1
	jbe	.label_1191
	mov	ecx, OFFSET FLAT:default_tuning
	cmp	rax, rcx
	je	.label_1209
	movss	xmm3, dword ptr [rax + 8]
	ucomiss	xmm3, dword ptr [rip + label_1102]
	jbe	.label_1192
	movss	xmm4, dword ptr [rip + label_1105]
	ucomiss	xmm4, xmm3
	jbe	.label_1192
	xorps	xmm4, xmm4
	ucomiss	xmm2, xmm4
	jb	.label_1192
	movss	xmm4, dword ptr [rax + 0xc]
	ucomiss	xmm4, dword ptr [rip + label_1096]
	jbe	.label_1192
	movss	xmm4, dword ptr [rip + label_1102]
	addss	xmm4, xmm2
	ucomiss	xmm3, xmm4
	jbe	.label_1192
	movss	xmm3, dword ptr [rax + 4]
	movss	xmm5, dword ptr [rip + label_1090]
	ucomiss	xmm5, xmm3
	jb	.label_1192
	ucomiss	xmm3, xmm4
	ja	.label_1200
.label_1192:
	mov	qword ptr [r15 + 40], OFFSET FLAT:default_tuning
	mov	eax, OFFSET FLAT:default_tuning
	xorps	xmm2, xmm2
	jmp	.label_1200
.label_1209:
	mov	eax, OFFSET FLAT:default_tuning
.label_1200:
	mulss	xmm2, xmm0
	ucomiss	xmm2, xmm1
	jbe	.label_1191
	mulss	xmm0, dword ptr [rax + 4]
	cmp	byte ptr [rax + 0x10], 0
	jne	.label_1190
	mulss	xmm0, dword ptr [rax + 8]
.label_1190:
	movss	xmm1, dword ptr [rip + label_1094]
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
	jne	.label_1191
	mov	rdi, qword ptr [r15 + 0x48]
	test	rdi, rdi
	je	.label_1194
	nop	word ptr cs:[rax + rax]
.label_1208:
	mov	rbx, qword ptr [rdi + 8]
	call	free
	test	rbx, rbx
	mov	rdi, rbx
	jne	.label_1208
.label_1194:
	mov	qword ptr [r15 + 0x48], 0
.label_1191:
	mov	r12, r14
.label_1189:
	mov	rax, r12
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_1195:
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40d9a0

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
	jne	.label_1210
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
.label_1210:
	call	xalloc_die
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40da20

	.globl heap_default_compare
	.type heap_default_compare, @function
heap_default_compare:
	xor	eax, eax
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40da30
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
	.align	32
	#Procedure 0x40da50

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
	jbe	.label_1214
	mov	rax, qword ptr [r15]
	jmp	.label_1215
.label_1214:
	mov	rdi, qword ptr [r15]
	test	rdi, rdi
	je	.label_1217
	movabs	rcx, 0xaaaaaaaaaaaaaaa
	cmp	rax, rcx
	jae	.label_1218
	mov	rcx, rax
	shr	rcx, 1
	lea	rsi, [rax + rcx + 1]
	jmp	.label_1213
.label_1217:
	test	rax, rax
	mov	esi, 0x10
	cmovne	rsi, rax
	mov	rax, rsi
	shr	rax, 0x3c
	jne	.label_1219
.label_1213:
	mov	qword ptr [r15 + 8], rsi
	shl	rsi, 3
	call	xrealloc
	mov	qword ptr [r15], rax
	mov	rcx, qword ptr [r15 + 0x10]
.label_1215:
	lea	rbx, [rcx + 1]
	mov	qword ptr [r15 + 0x10], rbx
	mov	qword ptr [rax + rcx*8 + 8], r14
	mov	r12, qword ptr [r15]
	mov	r14, qword ptr [r12 + rcx*8 + 8]
	mov	r13d, 1
	test	rcx, rcx
	je	.label_1212
	mov	r15, qword ptr [r15 + 0x18]
	mov	r13d, 1
	nop	word ptr cs:[rax + rax]
.label_1216:
	mov	rbp, rbx
	shr	rbp, 1
	mov	rdi, qword ptr [r12 + rbp*8]
	mov	rsi, r14
	call	r15
	test	eax, eax
	jg	.label_1211
	mov	rax, qword ptr [r12 + rbp*8]
	mov	qword ptr [r12 + rbx*8], rax
	cmp	rbp, 1
	mov	rbx, rbp
	jne	.label_1216
	jmp	.label_1212
.label_1211:
	mov	r13, rbx
.label_1212:
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
.label_1218:
	call	xalloc_die
.label_1219:
	call	xalloc_die
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40db50

	.globl heap_remove_top
	.type heap_remove_top, @function
heap_remove_top:
	mov	rdx, qword ptr [rdi + 0x10]
	xor	eax, eax
	test	rdx, rdx
	je	.label_1223
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x18
	mov	rcx, qword ptr [rdi]
	mov	rax, qword ptr [rcx + 8]
	mov	qword ptr [rsp + 8], rax
	lea	r13, [rdx - 1]
	mov	qword ptr [rdi + 0x10], r13
	mov	rax, qword ptr [rcx + rdx*8]
	mov	qword ptr [rcx + 8], rax
	mov	rbx, qword ptr [rdi]
	mov	r12, qword ptr [rbx + 8]
	mov	r14, r13
	shr	r14, 1
	mov	ebp, 1
	je	.label_1221
	mov	rax, qword ptr [rdi + 0x18]
	mov	r15d, 1
	mov	qword ptr [rsp], rax
	mov	qword ptr [rsp + 0x10], r14
.label_1224:
	lea	rbp, [r15 + r15]
	cmp	rbp, r13
	jae	.label_1220
	mov	rdi, qword ptr [rbx + rbp*8]
	mov	r14, r13
	mov	r13, r12
	mov	r12, rbp
	or	r12, 1
	mov	rsi, qword ptr [rbx + r12*8]
	call	qword ptr [rsp]
	test	eax, eax
	mov	rax, qword ptr [rsp]
	cmovs	rbp, r12
	mov	r12, r13
	mov	r13, r14
	mov	r14, qword ptr [rsp + 0x10]
.label_1220:
	mov	rdi, qword ptr [rbx + rbp*8]
	mov	rsi, r12
	call	rax
	test	eax, eax
	jle	.label_1222
	mov	rax, qword ptr [rbx + rbp*8]
	mov	qword ptr [rbx + r15*8], rax
	cmp	rbp, r14
	mov	r15, rbp
	mov	rax, qword ptr [rsp]
	jbe	.label_1224
	jmp	.label_1221
.label_1222:
	mov	rbp, r15
.label_1221:
	mov	qword ptr [rbx + rbp*8], r12
	mov	rax, qword ptr [rsp + 8]
	add	rsp, 0x18
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
.label_1223:
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40dc30

	.globl inttostr
	.type inttostr, @function
inttostr:
	mov	byte ptr [rsi + 0xb], 0
	test	edi, edi
	js	.label_1225
	add	rsi, 0xb
	nop	dword ptr [rax]
.label_1227:
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
	ja	.label_1227
	jmp	.label_1228
.label_1225:
	add	rsi, 0xa
	nop	dword ptr [rax]
.label_1226:
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
	mov	byte ptr [rsi], cl
	add	eax, 9
	dec	rsi
	cmp	eax, 0x12
	ja	.label_1226
	mov	byte ptr [rsi], 0x2d
.label_1228:
	mov	rax, rsi
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40dcc0

	.globl uinttostr
	.type uinttostr, @function
uinttostr:
	mov	byte ptr [rsi + 0xa], 0
	add	rsi, 0xa
	mov	r8d, 0xcccccccd
	nop	
.label_1229:
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
	ja	.label_1229
	mov	rax, rsi
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40dd00

	.globl umaxtostr
	.type umaxtostr, @function
umaxtostr:
	mov	rcx, rdi
	mov	byte ptr [rsi + 0x14], 0
	add	rsi, 0x14
	movabs	r8, 0xcccccccccccccccd
	nop	word ptr cs:[rax + rax]
.label_1230:
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
	ja	.label_1230
	mov	rax, rsi
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40dd50
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
	.align	32
	#Procedure 0x40dd70

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
	jbe	.label_1233
	xor	ebp, ebp
	test	r15, r15
	jle	.label_1236
	mov	eax, r14d
	and	eax, 2
	mov	dword ptr [rsp + 4], eax
	and	r14d, 1
	mov	eax, r14d
	xor	eax, 1
	mov	dword ptr [rsp + 0xc], eax
	lea	eax, [r14*4]
	xor	eax, 5
	mov	dword ptr [rsp + 8], eax
	xor	ebp, ebp
	lea	r15, [rsp + 0x10]
	nop	word ptr cs:[rax + rax]
.label_1249:
	movsx	eax, byte ptr [rbx]
	add	eax, -0x20
	cmp	eax, 0x5e
	ja	.label_1245
	jmp	qword ptr [(rax * 8) + label_1247]
.label_2045:
	inc	rbx
	inc	ebp
.label_1250:
	cmp	rbx, r12
	jb	.label_1249
	jmp	.label_1236
.label_1245:
	mov	qword ptr [rsp + 0x10], 0
	nop	word ptr [rax + rax]
.label_1248:
	mov	rdx, r12
	sub	rdx, rbx
	lea	rdi, [rsp]
	mov	rsi, rbx
	mov	rcx, r15
	call	rpl_mbrtowc
	mov	r13, rax
	cmp	r13, -2
	je	.label_1238
	test	r13, r13
	je	.label_1239
	cmp	r13, -1
	jne	.label_1241
	mov	ecx, 1
	test	r14d, r14d
	jne	.label_1234
	inc	rbx
	inc	ebp
	mov	ecx, 5
	jmp	.label_1234
	nop	word ptr cs:[rax + rax]
.label_1238:
	add	ebp, dword ptr [rsp + 0xc]
	test	r14d, r14d
	cmove	rbx, r12
	mov	ecx, dword ptr [rsp + 8]
	jmp	.label_1234
	nop	word ptr cs:[rax + rax]
.label_1239:
	mov	r13d, 1
.label_1241:
	mov	edi, dword ptr [rsp]
	call	wcwidth
	test	eax, eax
	js	.label_1232
	mov	edx, 0x7fffffff
	sub	edx, ebp
	mov	ecx, 7
	cmp	eax, edx
	jg	.label_1234
	add	ebp, eax
	jmp	.label_1237
.label_1232:
	mov	ecx, 1
	cmp	dword ptr [rsp + 4], 0
	jne	.label_1234
	mov	edi, dword ptr [rsp]
	call	iswcntrl
	test	eax, eax
	jne	.label_1237
	cmp	ebp, 0x7fffffff
	jne	.label_1242
	mov	ecx, 7
	mov	ebp, 0x7fffffff
	jmp	.label_1234
.label_1242:
	inc	ebp
	nop	word ptr cs:[rax + rax]
.label_1237:
	add	rbx, r13
	xor	ecx, ecx
.label_1234:
	and	cl, 7
	jne	.label_1246
	mov	rdi, r15
	call	mbsinit
	test	eax, eax
	je	.label_1248
	jmp	.label_1250
.label_1246:
	cmp	cl, 5
	je	.label_1250
	cmp	cl, 7
	mov	ecx, 0x7fffffff
	mov	eax, 0xffffffff
	cmove	eax, ecx
	jmp	.label_1231
.label_1233:
	and	r14d, 2
	xor	r15d, r15d
	jmp	.label_1235
.label_1244:
	inc	r15d
	nop	word ptr cs:[rax + rax]
.label_1235:
	cmp	rbx, r12
	jae	.label_1240
	movzx	ebp, byte ptr [rbx]
	inc	rbx
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	movzx	eax, word ptr [rax + rbp*2]
	test	ah, 0x40
	jne	.label_1243
	mov	ebp, 0xffffffff
	test	r14d, r14d
	jne	.label_1236
	test	al, 2
	jne	.label_1235
.label_1243:
	mov	ebp, 0x7fffffff
	cmp	r15d, 0x7fffffff
	jne	.label_1244
	jmp	.label_1236
.label_1240:
	mov	ebp, r15d
.label_1236:
	mov	eax, ebp
.label_1231:
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
	.align	32
	#Procedure 0x40df80

	.globl num_processors
	.type num_processors, @function
num_processors:
	push	r14
	push	rbx
	sub	rsp, 0x88
	mov	r14, -1
	cmp	edi, 2
	jne	.label_1251
	mov	edi, OFFSET FLAT:label_1253
	call	getenv
	mov	rdi, rax
	call	parse_omp_threads
	mov	rbx, rax
	mov	edi, OFFSET FLAT:label_1258
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
	jne	.label_1259
.label_1251:
	cmp	edi, 1
	jne	.label_1257
	lea	rdx, [rsp + 8]
	xor	edi, edi
	mov	esi, 0x80
	call	sched_getaffinity
	test	eax, eax
	jne	.label_1254
	lea	rsi, [rsp + 8]
	mov	edi, 0x80
	call	__sched_cpucount
	test	eax, eax
	je	.label_1254
	cdqe	
	jmp	.label_1255
.label_1257:
	mov	edi, 0x53
	call	sysconf
	cmp	rax, 1
	jne	.label_1256
	lea	rdx, [rsp + 8]
	xor	edi, edi
	mov	esi, 0x80
	call	sched_getaffinity
	test	eax, eax
	jne	.label_1252
	lea	rsi, [rsp + 8]
	mov	edi, 0x80
	call	__sched_cpucount
	test	eax, eax
	je	.label_1252
	cdqe	
	jmp	.label_1256
.label_1254:
	mov	edi, 0x54
	call	sysconf
.label_1256:
	test	rax, rax
	jg	.label_1255
.label_1252:
	mov	eax, 1
.label_1255:
	cmp	rax, r14
	cmovb	r14, rax
	mov	rax, r14
.label_1259:
	add	rsp, 0x88
	pop	rbx
	pop	r14
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40e080

	.globl parse_omp_threads
	.type parse_omp_threads, @function
parse_omp_threads:
	push	rax
	xor	eax, eax
	test	rdi, rdi
	je	.label_1260
	mov	al, byte ptr [rdi]
	test	al, al
	je	.label_1263
	mov	ecx, 0x80001f
	nop	word ptr [rax + rax]
.label_1264:
	movsx	edx, al
	add	edx, -9
	cmp	edx, 0x17
	ja	.label_1261
	bt	ecx, edx
	jae	.label_1261
	mov	al, byte ptr [rdi + 1]
	inc	rdi
	test	al, al
	jne	.label_1264
.label_1263:
	xor	eax, eax
.label_1261:
	movsx	ecx, al
	add	ecx, -0x30
	xor	eax, eax
	cmp	ecx, 9
	ja	.label_1260
	mov	qword ptr [rsp], 0
	lea	rsi, [rsp]
	mov	edx, 0xa
	call	strtoul
	mov	rcx, qword ptr [rsp]
	test	rcx, rcx
	je	.label_1266
	mov	dl, byte ptr [rcx]
	test	dl, dl
	je	.label_1260
	inc	rcx
	mov	esi, 0x80001f
	nop	word ptr cs:[rax + rax]
.label_1265:
	movsx	edi, dl
	add	edi, -9
	cmp	edi, 0x17
	ja	.label_1262
	bt	esi, edi
	jae	.label_1262
	mov	qword ptr [rsp], rcx
	movzx	edx, byte ptr [rcx]
	inc	rcx
	test	dl, dl
	jne	.label_1265
	jmp	.label_1260
.label_1262:
	cmp	dl, 0x2c
	je	.label_1260
.label_1266:
	xor	eax, eax
.label_1260:
	pop	rcx
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40e130

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
	js	.label_1269
	cvtsi2sd	xmm1, rax
	cvtsi2sd	xmm0, rbx
.label_1268:
	mulsd	xmm0, xmm1
	jmp	.label_1271
.label_1269:
	lea	rdi, [rsp]
	call	sysinfo
	test	eax, eax
	je	.label_1270
	movsd	xmm0, qword ptr [rip + label_1267]
.label_1271:
	add	rsp, 0x70
	pop	rbx
	ret	
.label_1270:
	movq	xmm0, qword ptr [rsp + 0x20]
	punpckldq	xmm0, xmmword ptr [rip + label_245]
	subpd	xmm0, xmmword ptr [rip + label_246]
	pshufd	xmm1, xmm0, 0x4e
	addpd	xmm1, xmm0
	mov	eax, dword ptr [rsp + 0x68]
	xorps	xmm0, xmm0
	cvtsi2sd	xmm0, rax
	jmp	.label_1268
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40e1b0

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
	js	.label_1276
	cvtsi2sd	xmm1, rax
	cvtsi2sd	xmm0, rbx
	mulsd	xmm0, xmm1
	jmp	.label_1274
.label_1276:
	lea	rdi, [rsp]
	call	sysinfo
	test	eax, eax
	je	.label_1273
	mov	edi, 0x55
	call	sysconf
	mov	rbx, rax
	mov	edi, 0x1e
	call	sysconf
	mov	rcx, rax
	or	rcx, rbx
	js	.label_1275
	cvtsi2sd	xmm1, rax
	cvtsi2sd	xmm0, rbx
.label_1277:
	mulsd	xmm0, xmm1
	jmp	.label_1278
.label_1273:
	movq	xmm0, qword ptr [rsp + 0x28]
	movdqa	xmm1, xmmword ptr [rip + label_245]
	punpckldq	xmm0, xmm1
	movapd	xmm2, xmmword ptr [rip + label_246]
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
	jmp	.label_1274
.label_1275:
	lea	rdi, [rsp]
	call	sysinfo
	test	eax, eax
	je	.label_1272
	movsd	xmm0, qword ptr [rip + label_1267]
.label_1278:
	mulsd	xmm0, qword ptr [rip + label_835]
.label_1274:
	add	rsp, 0x70
	pop	rbx
	ret	
.label_1272:
	movq	xmm0, qword ptr [rsp + 0x20]
	punpckldq	xmm0, xmmword ptr [rip + label_245]
	subpd	xmm0, xmmword ptr [rip + label_246]
	pshufd	xmm1, xmm0, 0x4e
	addpd	xmm1, xmm0
	mov	eax, dword ptr [rsp + 0x68]
	xorps	xmm0, xmm0
	cvtsi2sd	xmm0, rax
	jmp	.label_1277
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40e2d0

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
	cmp	dword ptr [rip + rpl_pipe2.have_pipe2_really],  0
	js	.label_1282
	mov	rdi, rbx
	mov	r12d, esi
	call	pipe2
	mov	ebp, eax
	test	ebp, ebp
	jns	.label_1279
	call	__errno_location
	cmp	dword ptr [rax], 0x26
	jne	.label_1279
	mov	dword ptr [rip + rpl_pipe2.have_pipe2_really],  0xffffffff
	mov	esi, r12d
.label_1282:
	test	esi, 0xfff7f7ff
	je	.label_1283
	call	__errno_location
	mov	dword ptr [rax], 0x16
.label_1285:
	mov	ebp, 0xffffffff
	jmp	.label_1281
.label_1279:
	mov	dword ptr [rip + rpl_pipe2.have_pipe2_really],  1
.label_1281:
	mov	eax, ebp
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_1283:
	mov	r12d, esi
	mov	rdi, rbx
	call	pipe
	mov	ebp, 0xffffffff
	test	eax, eax
	js	.label_1281
	mov	eax, r12d
	test	ah, 8
	je	.label_1284
	mov	edi, dword ptr [rbx + 4]
	mov	esi, 3
	xor	edx, edx
	xor	eax, eax
	call	rpl_fcntl
	mov	ecx, eax
	test	ecx, ecx
	js	.label_1280
	mov	edi, dword ptr [rbx + 4]
	or	ecx, 0x800
	mov	esi, 4
	xor	eax, eax
	mov	edx, ecx
	call	rpl_fcntl
	cmp	eax, -1
	je	.label_1280
	mov	edi, dword ptr [rbx]
	mov	esi, 3
	xor	edx, edx
	xor	eax, eax
	call	rpl_fcntl
	mov	ecx, eax
	test	ecx, ecx
	js	.label_1280
	mov	edi, dword ptr [rbx]
	or	ecx, 0x800
	mov	esi, 4
	xor	eax, eax
	mov	edx, ecx
	call	rpl_fcntl
	cmp	eax, -1
	je	.label_1280
.label_1284:
	xor	ebp, ebp
	test	r12d, 0x80000
	je	.label_1281
	mov	edi, dword ptr [rbx + 4]
	mov	esi, 1
	xor	edx, edx
	xor	eax, eax
	call	rpl_fcntl
	mov	ecx, eax
	test	ecx, ecx
	js	.label_1280
	mov	edi, dword ptr [rbx + 4]
	or	ecx, 1
	mov	esi, 2
	xor	eax, eax
	mov	edx, ecx
	call	rpl_fcntl
	cmp	eax, -1
	je	.label_1280
	mov	edi, dword ptr [rbx]
	xor	ebp, ebp
	mov	esi, 1
	xor	edx, edx
	xor	eax, eax
	call	rpl_fcntl
	mov	ecx, eax
	test	ecx, ecx
	js	.label_1280
	mov	edi, dword ptr [rbx]
	or	ecx, 1
	mov	esi, 2
	xor	eax, eax
	mov	edx, ecx
	call	rpl_fcntl
	cmp	eax, -1
	jne	.label_1281
.label_1280:
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
	jmp	.label_1285
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40e470

	.globl posix2_version
	.type posix2_version, @function
posix2_version:
	push	rax
	mov	edi, OFFSET FLAT:label_1286
	call	getenv
	mov	ecx, 0x31069
	test	rax, rax
	je	.label_1287
	mov	ecx, 0x31069
	cmp	byte ptr [rax], 0
	je	.label_1287
	lea	rsi, [rsp]
	mov	edx, 0xa
	mov	rdi, rax
	call	strtol
	mov	rcx, qword ptr [rsp]
	cmp	byte ptr [rcx], 0
	mov	ecx, 0x31069
	cmove	rcx, rax
.label_1287:
	cmp	rcx, 0x7fffffff
	mov	edx, 0x7fffffff
	cmovl	edx, ecx
	cmp	rcx, -0x80000000
	mov	eax, 0x80000000
	cmovge	eax, edx
	pop	rcx
	ret	
	.section	.text
	.align	32
	#Procedure 0x40e4d0

	.globl set_program_name
	.type set_program_name, @function
set_program_name:
	push	r14
	push	rbx
	push	rax
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_1290
	mov	esi, 0x2f
	mov	rdi, rbx
	call	strrchr
	test	rax, rax
	lea	r14, [rax + 1]
	cmove	r14, rbx
	mov	rax, r14
	sub	rax, rbx
	cmp	rax, 7
	jl	.label_1289
	lea	rdi, [r14 - 7]
	mov	esi, OFFSET FLAT:label_1288
	mov	edx, 7
	call	strncmp
	test	eax, eax
	jne	.label_1289
	mov	esi, OFFSET FLAT:label_1292
	mov	edx, 3
	mov	rdi, r14
	call	strncmp
	test	eax, eax
	jne	.label_1293
	add	r14, 3
	mov	qword ptr [rip + __progname],  r14
.label_1293:
	mov	rbx, r14
.label_1289:
	mov	qword ptr [rip + program_name],  rbx
	mov	qword ptr [rip + __progname_full],  rbx
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
.label_1290:
	mov	rcx, qword ptr [rip + stderr]
	mov	edi, OFFSET FLAT:label_1291
	mov	esi, 0x37
	mov	edx, 1
	call	fwrite
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40e580
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
	#Procedure 0x40e5c0
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
	#Procedure 0x40e5d0
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
	#Procedure 0x40e5e0
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
	#Procedure 0x40e620
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
	#Procedure 0x40e640
	.globl set_custom_quoting
	.type set_custom_quoting, @function
set_custom_quoting:

	test	rdi, rdi
	mov	eax, OFFSET FLAT:default_quoting_options
	cmovne	rax, rdi
	mov	dword ptr [rax], 0xa
	test	rsi, rsi
	je	.label_1294
	test	rdx, rdx
	je	.label_1294
	mov	qword ptr [rax + 0x28], rsi
	mov	qword ptr [rax + 0x30], rdx
	ret	
.label_1294:
	push	rax
	call	abort
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40e670
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
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40e6f0

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
.label_1397:
	mov	r11, rbp
	xor	r14d, r14d
	mov	ecx, r15d
	cmp	r15d, 0xa
	ja	.label_1395
	mov	edi, 7
	mov	r13b, 1
	xor	esi, esi
	mov	r8, qword ptr [rsp + 0x30]
	jmp	qword ptr [(rcx * 8) + label_1400]
.label_1835:
	mov	byte ptr [rsp + 7], r10b
	mov	edi, OFFSET FLAT:label_1402
	mov	esi, r15d
	mov	rbx, r11
	mov	ebp, r9d
	call	gettext_quote
	mov	qword ptr [rsp + 0x78], rax
	mov	edi, OFFSET FLAT:label_1343
	mov	esi, r15d
	call	gettext_quote
	mov	r9d, ebp
	mov	r10b, byte ptr [rsp + 7]
	mov	r11, rbx
	mov	qword ptr [rsp + 0x70], rax
.label_1836:
	mov	dword ptr [rsp + 0x50], r9d
	mov	byte ptr [rsp + 7], r10b
	test	r12b, 1
	mov	r14d, 0
	mov	rcx, qword ptr [rsp + 0x78]
	jne	.label_1302
	mov	al, byte ptr [rcx]
	test	al, al
	mov	r14d, 0
	je	.label_1302
	xor	r14d, r14d
	nop	word ptr cs:[rax + rax]
.label_1313:
	cmp	r14, r11
	jae	.label_1367
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + r14], al
.label_1367:
	movzx	eax, byte ptr [rcx + r14 + 1]
	inc	r14
	test	al, al
	jne	.label_1313
.label_1302:
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
	jmp	.label_1307
.label_1828:
	xor	edi, edi
	xor	r14d, r14d
	mov	r13d, eax
	xor	esi, esi
	jmp	.label_1307
.label_1831:
	mov	al, 1
.label_1829:
	mov	r12b, 1
.label_1832:
	test	r12b, 1
	mov	cl, 1
	je	.label_1334
	mov	ecx, eax
.label_1334:
	mov	al, cl
.label_1830:
	test	r12b, 1
	jne	.label_1337
	test	r11, r11
	je	.label_1297
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx], 0x27
.label_1297:
	mov	r14d, 1
	jmp	.label_1340
.label_1337:
	xor	r14d, r14d
.label_1340:
	mov	ecx, OFFSET FLAT:label_1343
	mov	qword ptr [rsp + 0x48], rcx
	mov	ecx, 1
	mov	qword ptr [rsp + 0x40], rcx
	mov	r13d, eax
	mov	sil, r12b
	mov	edi, 2
	jmp	.label_1307
.label_1833:
	test	r12b, 1
	jne	.label_1353
	test	r11, r11
	je	.label_1355
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax], 0x22
.label_1355:
	mov	r14d, 1
	jmp	.label_1357
.label_1834:
	mov	r13b, 1
	mov	edi, 5
	xor	r14d, r14d
	mov	eax, OFFSET FLAT:label_1359
	mov	qword ptr [rsp + 0x48], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0x40], rax
	mov	sil, 1
	jmp	.label_1307
.label_1353:
	xor	r14d, r14d
.label_1357:
	mov	eax, OFFSET FLAT:label_1359
	mov	qword ptr [rsp + 0x48], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0x40], rax
	mov	r13b, 1
	mov	sil, r12b
	mov	edi, 5
	nop	word ptr cs:[rax + rax]
.label_1307:
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
	jmp	.label_1379
	nop	dword ptr [rax]
.label_1314:
	inc	rsi
.label_1379:
	cmp	rbp, -1
	je	.label_1412
	cmp	rsi, rbp
	jne	.label_1413
	jmp	.label_1414
	nop	word ptr cs:[rax + rax]
.label_1412:
	mov	rcx, -1
	cmp	byte ptr [rdi + rsi], 0
	je	.label_1295
.label_1413:
	cmp	byte ptr [rsp + 0x2f], 0
	je	.label_1300
	mov	rax, qword ptr [rsp + 0x40]
	lea	rbx, [rsi + rax]
	cmp	rax, 2
	jb	.label_1304
	cmp	rbp, -1
	jne	.label_1304
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
.label_1304:
	cmp	rbx, rbp
	jbe	.label_1321
.label_1300:
	xor	r8d, r8d
.label_1332:
	movzx	r15d, byte ptr [rdi + rsi]
	cmp	r15, 0x7e
	ja	.label_1322
	xor	edx, edx
	mov	r13b, 1
	mov	cl, 0x6e
	mov	bl, 0x61
	xor	eax, eax
	jmp	qword ptr [(r15 * 8) + label_1327]
.label_1798:
	test	rsi, rsi
	jne	.label_1316
	jmp	.label_1333
	nop	word ptr cs:[rax + rax]
.label_1321:
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
	jne	.label_1344
	cmp	byte ptr [rsp + 6], 0
	mov	rdi, qword ptr [rsp + 0x30]
	mov	r11, rbx
	mov	r10d, r15d
	mov	rax, qword ptr [rsp + 0x38]
	mov	r9d, ebp
	mov	rsi, r12
	mov	r12, rax
	mov	rbp, qword ptr [rsp + 0x20]
	je	.label_1332
	jmp	.label_1347
.label_1344:
	mov	rdi, qword ptr [rsp + 0x30]
	mov	r11, rbx
	mov	r10d, r15d
	mov	rax, qword ptr [rsp + 0x38]
	mov	r9d, ebp
	mov	rsi, r12
	mov	r12, rax
	mov	rbp, qword ptr [rsp + 0x20]
	jmp	.label_1332
.label_1802:
	xor	eax, eax
	cmp	rbp, -1
	je	.label_1366
	test	rsi, rsi
	jne	.label_1368
	cmp	rbp, 1
	je	.label_1333
	xor	r13d, r13d
	jmp	.label_1296
.label_1791:
	cmp	byte ptr [rsp + 0x17], 0
	je	.label_1376
	cmp	byte ptr [rsp + 6], 0
	jne	.label_1378
	cmp	r12d, 2
	jne	.label_1382
	mov	eax, r9d
	and	al, 1
	jne	.label_1382
	cmp	r14, r11
	jae	.label_1385
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_1385:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_1388
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x24
.label_1388:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_1371
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_1371:
	add	r14, 3
	mov	r9b, 1
.label_1382:
	mov	rcx, r14
	cmp	rcx, r11
	jae	.label_1404
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + rcx], 0x5c
.label_1404:
	lea	r14, [rcx + 1]
	mov	al, 1
	mov	r15b, 0x30
	cmp	r12d, 2
	je	.label_1336
	lea	rdx, [rsi + 1]
	cmp	rdx, rbp
	jae	.label_1336
	mov	dl, byte ptr [rdi + rdx]
	add	dl, 0xd0
	cmp	dl, 9
	ja	.label_1336
	cmp	r14, r11
	jae	.label_1377
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + r14], 0x30
.label_1377:
	lea	rdx, [rcx + 2]
	cmp	rdx, r11
	jae	.label_1406
	mov	rbx, qword ptr [rsp + 8]
	mov	byte ptr [rbx + rdx], 0x30
.label_1406:
	add	rcx, 3
	xor	r13d, r13d
	mov	r14, rcx
	jmp	.label_1296
.label_1792:
	mov	bl, 0x62
	jmp	.label_1306
.label_1793:
	mov	cl, 0x74
	jmp	.label_1309
.label_1794:
	mov	bl, 0x76
	jmp	.label_1306
.label_1795:
	mov	bl, 0x66
	jmp	.label_1306
.label_1796:
	mov	cl, 0x72
	jmp	.label_1309
.label_1799:
	mov	r15b, 0x27
	mov	al, 1
	mov	qword ptr [rsp + 0xa0], rax
	cmp	r12d, 2
	jne	.label_1312
	cmp	byte ptr [rsp + 6], 0
	jne	.label_1315
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
	jae	.label_1320
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_1320:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_1331
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x5c
.label_1331:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_1335
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_1335:
	add	r14, 3
	xor	r9d, r9d
.label_1312:
	xor	eax, eax
	mov	r13b, 1
	jmp	.label_1296
.label_1800:
	mov	r15b, 0x3f
	cmp	r12d, 5
	je	.label_1341
	cmp	r12d, 2
	jne	.label_1316
	cmp	byte ptr [rsp + 6], 0
	je	.label_1316
	jmp	.label_1315
.label_1801:
	cmp	r12d, 2
	jne	.label_1354
	cmp	byte ptr [rsp + 6], 0
	jne	.label_1315
	mov	r15b, 0x5c
	xor	eax, eax
	xor	r13d, r13d
	jmp	.label_1301
.label_1322:
	mov	dword ptr [rsp + 0x54], r8d
	mov	dword ptr [rsp + 0x50], r9d
	mov	byte ptr [rsp + 7], r10b
	mov	qword ptr [rsp + 0x98], r11
	cmp	qword ptr [rsp + 0xa8], 1
	jne	.label_1362
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
.label_1310:
	and	r13b, 1
	mov	r8d, r13d
	or	r8b, byte ptr [rsp + 0x2a]
	mov	qword ptr [rsp + 0x60], r12
	cmp	r12, 1
	mov	r11, qword ptr [rsp + 0x98]
	mov	r10b, byte ptr [rsp + 7]
	mov	r12, qword ptr [rsp + 0x38]
	mov	r9d, dword ptr [rsp + 0x50]
	ja	.label_1381
	test	r8b, r8b
	je	.label_1381
	xor	eax, eax
	mov	rbp, qword ptr [rsp + 0x20]
	mov	r8d, dword ptr [rsp + 0x54]
	jmp	.label_1296
.label_1366:
	test	rsi, rsi
	jne	.label_1399
	mov	cl, byte ptr [rdi + 1]
	test	cl, cl
	jne	.label_1399
.label_1333:
	mov	dl, 1
.label_1797:
	cmp	byte ptr [rsp + 0x1f], 0
	je	.label_1315
	xor	eax, eax
	mov	r13b, dl
	nop	word ptr [rax + rax]
.label_1296:
	cmp	byte ptr [rsp + 0x2e], 0
	je	.label_1405
	cmp	qword ptr [rsp + 0xf0], 0
	jne	.label_1407
	jmp	.label_1411
	nop	word ptr cs:[rax + rax]
.label_1405:
	cmp	byte ptr [rsp + 0x2d], 0
	je	.label_1411
.label_1407:
	mov	ebx, r8d
	mov	r8, rsi
	mov	ecx, r15d
	shr	cl, 5
	movzx	edx, cl
	mov	esi, 1
	mov	ecx, r15d
	shl	esi, cl
	test	bl, bl
	jne	.label_1415
	mov	rcx, qword ptr [rsp + 0xf0]
	and	esi, dword ptr [rcx + rdx*4]
	mov	ebx, r15d
	mov	rsi, r8
	je	.label_1301
	jmp	.label_1308
	nop	dword ptr [rax]
.label_1411:
	test	r8b, r8b
	mov	ebx, r15d
	jne	.label_1308
	jmp	.label_1301
.label_1415:
	mov	ebx, r15d
	mov	rsi, r8
	jmp	.label_1308
.label_1376:
	cmp	dword ptr [rsp + 0x90], 0
	jne	.label_1314
	xor	r15d, r15d
	jmp	.label_1316
.label_1354:
	mov	cl, 0x5c
	cmp	byte ptr [rsp + 0x29], 0
	je	.label_1309
	xor	eax, eax
	mov	r15b, 0x5c
	xor	r13d, r13d
	jmp	.label_1301
.label_1309:
	cmp	byte ptr [rsp + 0x1f], 0
	mov	ebx, ecx
	je	.label_1315
.label_1306:
	xor	eax, eax
	cmp	byte ptr [rsp + 0x17], 0
	mov	r13d, 0
	je	.label_1296
	nop	word ptr cs:[rax + rax]
.label_1308:
	cmp	byte ptr [rsp + 6], 0
	jne	.label_1378
	cmp	r12d, 2
	jne	.label_1338
	mov	eax, r9d
	and	al, 1
	jne	.label_1338
	cmp	r14, r11
	jae	.label_1319
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_1319:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_1345
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x24
.label_1345:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_1365
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_1365:
	add	r14, 3
	mov	r9b, 1
.label_1338:
	cmp	r14, r11
	jae	.label_1356
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x5c
.label_1356:
	inc	r14
	jmp	.label_1360
.label_1362:
	mov	qword ptr [rsp + 0x80], 0
	cmp	rbp, -1
	jne	.label_1363
	mov	rbx, rsi
	call	strlen
	mov	rsi, rbx
	mov	rdi, qword ptr [rsp + 0x30]
	mov	rbp, rax
.label_1363:
	lea	rax, [rdi + rsi]
	mov	qword ptr [rsp + 0x60], rax
	mov	r13b, 1
	xor	r12d, r12d
	lea	rax, [rsp + 0x80]
	mov	rcx, rax
	mov	qword ptr [rsp + 0x20], rbp
	mov	qword ptr [rsp + 0x58], rsi
.label_1330:
	lea	rbx, [r12 + rsi]
	lea	rsi, [rdi + rbx]
	mov	rdx, rbp
	sub	rdx, rbx
	lea	rdi, [rsp + 0x94]
	call	rpl_mbrtowc
	mov	rbp, rax
	test	rbp, rbp
	je	.label_1387
	cmp	rbp, -1
	movabs	rsi, 0x20000002b
	je	.label_1349
	cmp	rbp, -2
	je	.label_1394
	cmp	rbp, 1
	seta	al
	and	al, byte ptr [rsp + 0x2b]
	cmp	al, 1
	mov	rdi, qword ptr [rsp + 0x30]
	mov	r11, qword ptr [rsp + 0x98]
	jne	.label_1392
	mov	rax, qword ptr [rsp + 0x60]
	lea	rax, [rax + r12]
	mov	ecx, 1
	nop	word ptr cs:[rax + rax]
.label_1384:
	movsx	edx, byte ptr [rax + rcx]
	add	edx, -0x5b
	cmp	edx, 0x21
	ja	.label_1352
	bt	rsi, rdx
	jb	.label_1409
.label_1352:
	inc	rcx
	cmp	rcx, rbp
	jb	.label_1384
.label_1392:
	mov	edi, dword ptr [rsp + 0x94]
	call	iswprint
	test	eax, eax
	jne	.label_1329
	xor	r13d, r13d
.label_1329:
	lea	rdi, [rsp + 0x80]
	add	r12, rbp
	mov	rbx, rdi
	call	mbsinit
	mov	rcx, rbx
	test	eax, eax
	mov	rdi, qword ptr [rsp + 0x30]
	mov	rbp, qword ptr [rsp + 0x20]
	mov	rsi, qword ptr [rsp + 0x58]
	je	.label_1330
	jmp	.label_1310
.label_1336:
	xor	r13d, r13d
	jmp	.label_1296
.label_1399:
	mov	rbp, -1
	xor	r13d, r13d
	jmp	.label_1296
.label_1341:
	cmp	dword ptr [rsp + 0x8c], 0
	je	.label_1316
	lea	rcx, [rsi + 2]
	cmp	rcx, rbp
	jae	.label_1316
	cmp	byte ptr [rdi + rsi + 1], 0x3f
	jne	.label_1316
	movsx	edx, byte ptr [rdi + rcx]
	xor	eax, eax
	cmp	edx, 0x3e
	ja	.label_1326
	mov	rbx, rsi
	movabs	rsi, 0x7000a38200000000
	bt	rsi, rdx
	jae	.label_1324
	cmp	byte ptr [rsp + 6], 0
	jne	.label_1390
	cmp	r14, r11
	jae	.label_1323
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x3f
.label_1323:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_1364
	mov	rsi, qword ptr [rsp + 8]
	mov	byte ptr [rsi + rax], 0x22
.label_1364:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_1342
	mov	rsi, qword ptr [rsp + 8]
	mov	byte ptr [rsi + rax], 0x22
.label_1342:
	lea	rax, [r14 + 3]
	cmp	rax, r11
	jae	.label_1358
	mov	rsi, qword ptr [rsp + 8]
	mov	byte ptr [rsi + rax], 0x3f
.label_1358:
	add	r14, 4
	xor	eax, eax
	mov	rsi, rcx
	mov	r15b, dl
	xor	r13d, r13d
	jmp	.label_1296
.label_1316:
	xor	eax, eax
.label_1368:
	xor	r13d, r13d
	jmp	.label_1296
.label_1381:
	add	qword ptr [rsp + 0x60], rsi
	xor	eax, eax
	mov	rbp, qword ptr [rsp + 0x20]
	jmp	.label_1361
	nop	word ptr cs:[rax + rax]
.label_1317:
	inc	r14
	mov	r15b, byte ptr [rdi + rsi + 1]
	mov	rsi, rdx
.label_1361:
	test	r8b, r8b
	je	.label_1369
	mov	ecx, dword ptr [rsp + 0x54]
	test	cl, 1
	je	.label_1370
	cmp	r14, r11
	jae	.label_1373
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + r14], 0x5c
.label_1373:
	inc	r14
	mov	dword ptr [rsp + 0x54], 0
	jmp	.label_1370
	nop	dword ptr [rax]
.label_1369:
	cmp	byte ptr [rsp + 6], 0
	jne	.label_1347
	cmp	r12d, 2
	jne	.label_1386
	mov	eax, r9d
	and	al, 1
	jne	.label_1386
	cmp	r14, r11
	jae	.label_1389
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_1389:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_1391
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + rax], 0x24
.label_1391:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_1396
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + rax], 0x27
.label_1396:
	add	r14, 3
	mov	r9b, 1
.label_1386:
	cmp	r14, r11
	jae	.label_1325
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x5c
.label_1325:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_1311
	mov	edx, r15d
	shr	dl, 6
	or	dl, 0x30
	mov	rbx, qword ptr [rsp + 8]
	mov	byte ptr [rbx + rax], dl
.label_1311:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_1408
	mov	edx, r15d
	shr	dl, 3
	and	dl, 7
	or	dl, 0x30
	mov	rbx, qword ptr [rsp + 8]
	mov	byte ptr [rbx + rax], dl
.label_1408:
	add	r14, 3
	and	r15b, 7
	or	r15b, 0x30
	mov	al, 1
.label_1370:
	lea	rdx, [rsi + 1]
	cmp	qword ptr [rsp + 0x60], rdx
	jbe	.label_1301
	test	r9b, 1
	je	.label_1303
	mov	ebx, eax
	and	bl, 1
	jne	.label_1303
	mov	rbx, rsi
	cmp	r14, r11
	jae	.label_1305
	mov	rsi, qword ptr [rsp + 8]
	mov	byte ptr [rsi + r14], 0x27
.label_1305:
	lea	rsi, [r14 + 1]
	cmp	rsi, r11
	jae	.label_1318
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rsi], 0x27
.label_1318:
	add	r14, 2
	xor	r9d, r9d
	mov	rsi, rbx
.label_1303:
	cmp	r14, r11
	jae	.label_1317
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + r14], r15b
	jmp	.label_1317
	nop	word ptr cs:[rax + rax]
.label_1301:
	test	r9b, 1
	je	.label_1328
	and	al, 1
	jne	.label_1328
	cmp	r14, r11
	jae	.label_1351
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_1351:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_1372
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_1372:
	add	r14, 2
	xor	r9d, r9d
.label_1328:
	mov	ebx, r15d
.label_1360:
	cmp	r14, r11
	jae	.label_1410
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], bl
.label_1410:
	inc	r14
	shl	r13b, 7
	sar	r13b, 7
	and	r13b, r10b
	mov	r10d, r13d
	jmp	.label_1314
.label_1349:
	xor	r13d, r13d
.label_1387:
	mov	rdi, qword ptr [rsp + 0x30]
	mov	rsi, qword ptr [rsp + 0x58]
	jmp	.label_1310
.label_1394:
	mov	rbp, qword ptr [rsp + 0x20]
	cmp	rbp, rbx
	mov	rdi, qword ptr [rsp + 0x30]
	jbe	.label_1350
	mov	rsi, qword ptr [rsp + 0x58]
.label_1339:
	mov	rax, qword ptr [rsp + 0x60]
	cmp	byte ptr [rax + r12], 0
	je	.label_1398
	lea	rax, [rsi + r12 + 1]
	inc	r12
	cmp	rax, rbp
	jb	.label_1339
	xor	r13d, r13d
	jmp	.label_1310
.label_1350:
	xor	r13d, r13d
	mov	rsi, qword ptr [rsp + 0x58]
	jmp	.label_1310
.label_1398:
	xor	r13d, r13d
	jmp	.label_1310
.label_1326:
	xor	r13d, r13d
	jmp	.label_1296
.label_1324:
	xor	r13d, r13d
	mov	rsi, rbx
	jmp	.label_1296
	nop	dword ptr [rax + rax]
.label_1414:
	mov	rcx, rsi
.label_1295:
	cmp	r12d, 2
	setne	al
	test	r14, r14
	setne	dl
	cmp	byte ptr [rsp + 6], 0
	je	.label_1375
	or	al, dl
	je	.label_1380
.label_1375:
	cmp	r12d, 2
	setne	al
	cmp	byte ptr [rsp + 6], 0
	setne	dl
	mov	rsi, qword ptr [rsp + 0xa0]
	test	sil, 1
	mov	bl, byte ptr [rsp + 0x2c]
	mov	rsi, qword ptr [rsp + 0xb0]
	je	.label_1383
	or	al, dl
	jne	.label_1383
	test	r10b, 1
	jne	.label_1393
	cmp	qword ptr [rsp + 0x68], 0
	je	.label_1383
	test	r11, r11
	mov	r15d, r12d
	mov	al, bl
	mov	qword ptr [rsp + 0x20], rcx
	mov	r12d, esi
	mov	rbp, qword ptr [rsp + 0x68]
	je	.label_1397
.label_1383:
	mov	rdx, qword ptr [rsp + 0x48]
	test	rdx, rdx
	je	.label_1401
	cmp	byte ptr [rsp + 6], 0
	mov	rcx, qword ptr [rsp + 8]
	jne	.label_1298
	mov	al, byte ptr [rdx]
	test	al, al
	je	.label_1298
	inc	rdx
	nop	word ptr cs:[rax + rax]
.label_1416:
	cmp	r14, r11
	jae	.label_1403
	mov	byte ptr [rcx + r14], al
.label_1403:
	inc	r14
	movzx	eax, byte ptr [rdx]
	inc	rdx
	test	al, al
	jne	.label_1416
	jmp	.label_1298
.label_1378:
	mov	qword ptr [rsp + 0x20], rbp
.label_1347:
	mov	rdx, rdi
	jmp	.label_1299
.label_1315:
	mov	qword ptr [rsp + 0x20], rbp
.label_1409:
	mov	rdx, rdi
	mov	eax, 2
.label_1374:
	mov	qword ptr [rsp + 0x38], rax
.label_1299:
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
.label_1346:
	mov	r14, rax
.label_1348:
	mov	rax, r14
	add	rsp, 0xb8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_1380:
	mov	rdx, rdi
	mov	qword ptr [rsp + 0x20], rcx
	jmp	.label_1299
.label_1393:
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
	jmp	.label_1346
.label_1401:
	mov	rcx, qword ptr [rsp + 8]
.label_1298:
	cmp	r14, r11
	jae	.label_1348
	mov	byte ptr [rcx + r14], 0
	jmp	.label_1348
.label_1390:
	mov	qword ptr [rsp + 0x20], rbp
	mov	rdx, rdi
	mov	eax, 5
	jmp	.label_1374
.label_1395:
	call	abort
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40f500
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
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40f5d0
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
	je	.label_1417
	mov	qword ptr [rax], rbx
.label_1417:
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
	#Procedure 0x40f6c0
	.globl quotearg_free
	.type quotearg_free, @function
quotearg_free:

	push	r15
	push	r14
	push	rbx
	mov	r14, qword ptr [rip + slotvec]
	cmp	dword ptr [rip + nslots],  2
	jl	.label_1418
	lea	r15, [r14 + 0x18]
	mov	ebx, 1
	nop	
.label_1421:
	mov	rdi, qword ptr [r15]
	call	free
	inc	rbx
	movsxd	rax, dword ptr [rip + nslots]
	add	r15, 0x10
	cmp	rbx, rax
	jl	.label_1421
.label_1418:
	mov	rdi, qword ptr [r14 + 8]
	mov	eax, OFFSET FLAT:slot0
	cmp	rdi, rax
	je	.label_1422
	call	free
	mov	qword ptr [rip + slotvec0],  0x100
	mov	qword ptr [rip + label_1419], OFFSET FLAT:slot0
.label_1422:
	mov	eax, OFFSET FLAT:slotvec0
	cmp	r14, rax
	je	.label_1420
	mov	rdi, r14
	call	free
	mov	qword ptr [rip + slotvec], OFFSET FLAT:slotvec0
.label_1420:
	mov	dword ptr [rip + nslots],  1
	pop	rbx
	pop	r14
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40f760
	.globl quotearg_n
	.type quotearg_n, @function
quotearg_n:

	mov	rdx, -1
	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	nop	
	.section	.text
	.align	32
	#Procedure 0x40f770

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
	js	.label_1426
	mov	eax, dword ptr [r13]
	mov	rbp, qword ptr [rip + slotvec]
	cmp	dword ptr [rip + nslots],  r12d
	mov	qword ptr [rsp + 0x18], r13
	mov	dword ptr [rsp], eax
	mov	qword ptr [rsp + 0x10], rbx
	mov	qword ptr [rsp + 8], r15
	jg	.label_1429
	cmp	r12d, 0x7fffffff
	je	.label_1424
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
	jne	.label_1427
	movups	xmm0, xmmword ptr [rip + slotvec0]
	movups	xmmword ptr [r14], xmm0
.label_1427:
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
.label_1429:
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
	jbe	.label_1425
	mov	rax, qword ptr [rsp + 0x18]
	mov	ebp, dword ptr [rsp]
	jmp	.label_1428
.label_1425:
	lea	rax, [rbp + r13]
	lea	r12, [rbp + r13 + 8]
	inc	r15
	mov	qword ptr [rax], r15
	mov	eax, OFFSET FLAT:slot0
	cmp	r14, rax
	mov	ebp, dword ptr [rsp]
	je	.label_1423
	mov	rdi, r14
	call	free
.label_1423:
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
.label_1428:
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
.label_1426:
	call	abort
.label_1424:
	call	xalloc_die
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40f930
	.globl quotearg_n_mem
	.type quotearg_n_mem, @function
quotearg_n_mem:

	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40f940
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
	.align	32
	#Procedure 0x40f960
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
	.align	32
	#Procedure 0x40f980

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
	je	.label_1430
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
.label_1430:
	call	abort
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40f9f0

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
	je	.label_1431
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
.label_1431:
	call	abort
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40fa60

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
	je	.label_1432
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
.label_1432:
	call	abort
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40fad0
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
	je	.label_1433
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
.label_1433:
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40fb40
	.globl quotearg_char_mem
	.type quotearg_char_mem, @function
quotearg_char_mem:

	sub	rsp, 0x38
	mov	ecx, edx
	mov	r8, rsi
	mov	rdx, rdi
	mov	rsi, qword ptr [rip + label_1434]
	mov	qword ptr [rsp + 0x30], rsi
	movups	xmm0, xmmword ptr [rip + label_1435]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_1436]
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
	nop	
	.section	.text
	.align	32
	#Procedure 0x40fbb0
	.globl quotearg_char
	.type quotearg_char, @function
quotearg_char:

	sub	rsp, 0x38
	mov	ecx, esi
	mov	rax, rdi
	mov	rdx, qword ptr [rip + label_1434]
	mov	qword ptr [rsp + 0x30], rdx
	movups	xmm0, xmmword ptr [rip + label_1435]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_1436]
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
	nop	
	.section	.text
	.align	32
	#Procedure 0x40fc20

	.globl quotearg_colon
	.type quotearg_colon, @function
quotearg_colon:
	sub	rsp, 0x38
	mov	rax, rdi
	mov	rcx, qword ptr [rip + label_1434]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0, xmmword ptr [rip + label_1435]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_1436]
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
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40fc80
	.globl quotearg_colon_mem
	.type quotearg_colon_mem, @function
quotearg_colon_mem:

	sub	rsp, 0x38
	mov	rax, rsi
	mov	rdx, rdi
	mov	rcx, qword ptr [rip + label_1434]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0, xmmword ptr [rip + label_1435]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_1436]
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
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40fce0

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
	je	.label_1437
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
.label_1437:
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40fd80
	.globl quotearg_n_custom
	.type quotearg_n_custom, @function
quotearg_n_custom:

	sub	rsp, 0x38
	mov	rax, qword ptr [rip + label_1434]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0, xmmword ptr [rip + label_1435]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_1436]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rsi, rsi
	je	.label_1438
	test	rdx, rdx
	je	.label_1438
	mov	qword ptr [rsp + 0x28], rsi
	mov	qword ptr [rsp + 0x30], rdx
	lea	rax, [rsp]
	mov	rdx, -1
	mov	rsi, rcx
	mov	rcx, rax
	call	quotearg_n_options
	add	rsp, 0x38
	ret	
.label_1438:
	call	abort
	nop	
	.section	.text
	.align	32
	#Procedure 0x40fdf0
	.globl quotearg_n_custom_mem
	.type quotearg_n_custom_mem, @function
quotearg_n_custom_mem:

	sub	rsp, 0x38
	mov	rax, qword ptr [rip + label_1434]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0, xmmword ptr [rip + label_1435]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_1436]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rsi, rsi
	je	.label_1439
	test	rdx, rdx
	je	.label_1439
	mov	qword ptr [rsp + 0x28], rsi
	mov	qword ptr [rsp + 0x30], rdx
	lea	rax, [rsp]
	mov	rsi, rcx
	mov	rdx, r8
	mov	rcx, rax
	call	quotearg_n_options
	add	rsp, 0x38
	ret	
.label_1439:
	call	abort
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40fe60
	.globl quotearg_custom
	.type quotearg_custom, @function
quotearg_custom:

	sub	rsp, 0x38
	mov	rax, rdx
	mov	rcx, qword ptr [rip + label_1434]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0, xmmword ptr [rip + label_1435]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_1436]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rdi, rdi
	je	.label_1440
	test	rsi, rsi
	je	.label_1440
	mov	qword ptr [rsp + 0x28], rdi
	mov	qword ptr [rsp + 0x30], rsi
	lea	rcx, [rsp]
	xor	edi, edi
	mov	rdx, -1
	mov	rsi, rax
	call	quotearg_n_options
	add	rsp, 0x38
	ret	
.label_1440:
	call	abort
	.section	.text
	.align	32
	#Procedure 0x40fed0
	.globl quotearg_custom_mem
	.type quotearg_custom_mem, @function
quotearg_custom_mem:

	sub	rsp, 0x38
	mov	rax, qword ptr [rip + label_1434]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0, xmmword ptr [rip + label_1435]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_1436]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rdi, rdi
	je	.label_1441
	test	rsi, rsi
	je	.label_1441
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
.label_1441:
	call	abort
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40ff40
	.globl quote_n_mem
	.type quote_n_mem, @function
quote_n_mem:

	mov	ecx, OFFSET FLAT:quote_quoting_options
	jmp	quotearg_n_options
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40ff50
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
	.align	32
	#Procedure 0x40ff70

	.globl quote_n
	.type quote_n, @function
quote_n:
	mov	rdx, -1
	mov	ecx, OFFSET FLAT:quote_quoting_options
	jmp	quotearg_n_options
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40ff90

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
	.align	32
	#Procedure 0x40ffb0

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
	jne	.label_1443
	call	locale_charset
	movsx	ecx, byte ptr [rax]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x47
	je	.label_1448
	cmp	ecx, 0x55
	jne	.label_1442
	movsx	ecx, byte ptr [rax + 1]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x54
	jne	.label_1442
	movsx	ecx, byte ptr [rax + 2]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x46
	jne	.label_1442
	cmp	byte ptr [rax + 3], 0x2d
.label_2026:
	jne	.label_1442
	cmp	byte ptr [rax + 4], 0x38
	jne	.label_1442
	cmp	byte ptr [rax + 5], 0
	jne	.label_1442
	cmp	byte ptr [rbx], 0x60
	mov	ecx, OFFSET FLAT:label_1445
	mov	eax, OFFSET FLAT:label_1446
	jmp	.label_1447
.label_1448:
	movsx	ecx, byte ptr [rax + 1]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x42
	jne	.label_1442
	cmp	byte ptr [rax + 2], 0x31
	jne	.label_1442
	cmp	byte ptr [rax + 3], 0x38
	jne	.label_1442
	cmp	byte ptr [rax + 4], 0x30
	jne	.label_1442
	cmp	byte ptr [rax + 5], 0x33
	jne	.label_1442
	cmp	byte ptr [rax + 6], 0x30
	jne	.label_1442
	cmp	byte ptr [rax + 7], 0
	je	.label_1444
.label_1442:
	cmp	ebp, 9
	mov	ecx, OFFSET FLAT:label_1359
	mov	eax, OFFSET FLAT:label_1343
.label_1447:
	cmove	rax, rcx
.label_1443:
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
.label_1444:
	cmp	byte ptr [rbx], 0x60
	mov	ecx, OFFSET FLAT:label_1449
	mov	eax, OFFSET FLAT:label_1450
	jmp	.label_1447
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x410080

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
	je	.label_1451
	xor	ebx, ebx
	test	r14, r14
	je	.label_1457
	mov	esi, OFFSET FLAT:label_1458
	mov	rdi, r14
	call	fopen_safer
	mov	rbx, rax
	xor	r15d, r15d
	test	rbx, rbx
	je	.label_1455
.label_1457:
	mov	edi, 0x1038
	call	xmalloc
	mov	r15, rax
	mov	qword ptr [r15], rbx
	mov	qword ptr [r15 + 8], OFFSET FLAT:randread_error
	mov	qword ptr [r15 + 0x10], r14
	test	rbx, rbx
	je	.label_1453
	mov	rsi, r15
	add	rsi, 0x18
	cmp	r12, 0x1000
	mov	ecx, 0x1000
	cmovbe	rcx, r12
	xor	edx, edx
	mov	rdi, rbx
	call	setvbuf
	jmp	.label_1455
.label_1451:
	mov	edi, 0x1038
	call	xmalloc
	mov	r15, rax
	mov	qword ptr [r15], 0
	mov	qword ptr [r15 + 8], OFFSET FLAT:randread_error
	mov	qword ptr [r15 + 0x10], 0
	jmp	.label_1455
.label_1453:
	mov	qword ptr [r15 + 0x18], 0
	mov	r14, r15
	add	r14, 0x20
	xor	r13d, r13d
	mov	edi, OFFSET FLAT:label_1452
	xor	esi, esi
	xor	eax, eax
	call	open
	mov	ebx, eax
	test	ebx, ebx
	js	.label_1454
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
	js	.label_1454
	cmp	r12, 0x7ff
	mov	r13, r12
	ja	.label_1456
.label_1454:
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
	ja	.label_1456
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
	ja	.label_1456
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
	ja	.label_1456
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
	ja	.label_1456
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
.label_1456:
	mov	rdi, r14
	call	isaac_seed
.label_1455:
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
	.align	32
	#Procedure 0x4102d0
	.globl randread_set_handler
	.type randread_set_handler, @function
randread_set_handler:

	mov	qword ptr [rdi + 8], rsi
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4102e0
	.globl randread_set_handler_arg
	.type randread_set_handler_arg, @function
randread_set_handler_arg:

	mov	qword ptr [rdi + 0x10], rsi
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4102f0

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
	mov	r15, rdx
	mov	rbx, rsi
	mov	r14, rdi
	mov	rcx, qword ptr [r14]
	test	rcx, rcx
	je	.label_1466
	mov	esi, 1
	mov	rdi, rbx
	mov	rdx, r15
	call	fread_unlocked
	mov	rbp, rax
	call	__errno_location
	mov	r12, rax
	jmp	.label_1462
	nop	dword ptr [rax]
.label_1461:
	add	rbx, rbp
	mov	rax, qword ptr [r14]
	mov	eax, dword ptr [rax]
	and	eax, 0x20
	cmovne	eax, dword ptr [r12]
	mov	dword ptr [r12], eax
	mov	rdi, qword ptr [r14 + 0x10]
	call	qword ptr [r14 + 8]
	mov	rcx, qword ptr [r14]
	mov	esi, 1
	mov	rdi, rbx
	mov	rdx, r15
	call	fread_unlocked
	mov	rbp, rax
.label_1462:
	sub	r15, rbp
	jne	.label_1461
	jmp	.label_1463
.label_1466:
	mov	r12, qword ptr [r14 + 0x18]
	lea	r13, [r14 + 0x838]
	mov	rsi, r13
	sub	rsi, r12
	add	rsi, 0x800
	cmp	r12, r15
	jae	.label_1464
	lea	rbp, [r14 + 0x20]
	mov	rdi, rbx
	mov	rdx, r12
	call	memcpy
	add	rbx, r12
	sub	r15, r12
	xor	r12d, r12d
	nop	word ptr cs:[rax + rax]
.label_1459:
	cmp	r15, 0x800
	jb	.label_1465
	mov	rdi, rbp
	mov	rsi, rbx
	call	isaac_refill
	add	rbx, 0x800
	add	r15, -0x800
	jne	.label_1459
	jmp	.label_1460
.label_1465:
	mov	rdi, rbp
	mov	rsi, r13
	call	isaac_refill
	mov	r12d, 0x800
	mov	rsi, r13
.label_1464:
	mov	rdi, rbx
	mov	rdx, r15
	call	memcpy
	sub	r12, r15
.label_1460:
	mov	qword ptr [r14 + 0x18], r12
.label_1463:
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
	#Procedure 0x410410

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
	je	.label_1467
	mov	rdi, r14
	add	rsp, 8
	pop	rbx
	pop	r14
	jmp	rpl_fclose
.label_1467:
	xor	eax, eax
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x410450

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
	je	.label_1468
	mov	r14d, dword ptr [rip + exit_failure]
	call	__errno_location
	mov	r15d, dword ptr [rax]
	xor	edi, edi
	test	r15d, r15d
	jne	.label_1471
	mov	esi, OFFSET FLAT:label_1469
	jmp	.label_1470
.label_1471:
	mov	esi, OFFSET FLAT:label_1472
.label_1470:
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
.label_1468:
	call	abort
	nop	
	.section	.text
	.align	32
	#Procedure 0x4104b0

	.globl isaac_refill
	.type isaac_refill, @function
isaac_refill:
	push	r14
	push	rbx
	mov	rdx, qword ptr [rdi + 0x800]
	mov	rax, qword ptr [rdi + 0x810]
	inc	rax
	mov	rcx, qword ptr [rdi + 0x808]
	add	rcx, rax
	mov	qword ptr [rdi + 0x810], rax
	lea	r9, [rdi + 0x400]
	lea	r8, [rdi + 0x20]
	cmp	r9, r8
	cmova	r8, r9
	mov	rax, rdi
	not	rax
	add	rax, r8
	shr	rax, 5
	lea	r8, [rax*4]
	shl	rax, 5
	lea	r10, [rsi + rax + 0x20]
	mov	r11, rdi
	nop	dword ptr [rax + rax]
.label_1473:
	mov	rax, rdx
	shl	rax, 0x15
	xor	rax, rdx
	not	rax
	add	rax, qword ptr [r11 + 0x400]
	mov	rdx, qword ptr [r11]
	mov	ebx, edx
	and	ebx, 0x7f8
	add	rcx, qword ptr [rdi + rbx]
	add	rcx, rax
	mov	qword ptr [r11], rcx
	shr	rcx, 8
	and	ecx, 0x7f8
	add	rdx, qword ptr [rdi + rcx]
	mov	qword ptr [rsi], rdx
	mov	rbx, rax
	shr	rbx, 5
	xor	rbx, rax
	add	rbx, qword ptr [r11 + 0x408]
	mov	rcx, qword ptr [r11 + 8]
	mov	eax, ecx
	and	eax, 0x7f8
	add	rdx, rbx
	add	rdx, qword ptr [rdi + rax]
	mov	qword ptr [r11 + 8], rdx
	shr	rdx, 8
	and	edx, 0x7f8
	add	rcx, qword ptr [rdi + rdx]
	mov	qword ptr [rsi + 8], rcx
	mov	r14, rbx
	shl	r14, 0xc
	xor	r14, rbx
	add	r14, qword ptr [r11 + 0x410]
	mov	rax, qword ptr [r11 + 0x10]
	mov	edx, eax
	and	edx, 0x7f8
	add	rcx, r14
	add	rcx, qword ptr [rdi + rdx]
	mov	qword ptr [r11 + 0x10], rcx
	shr	rcx, 8
	and	ecx, 0x7f8
	add	rax, qword ptr [rdi + rcx]
	mov	qword ptr [rsi + 0x10], rax
	mov	rdx, r14
	shr	rdx, 0x21
	xor	rdx, r14
	add	rdx, qword ptr [r11 + 0x418]
	mov	rcx, qword ptr [r11 + 0x18]
	mov	ebx, ecx
	and	ebx, 0x7f8
	add	rax, rdx
	add	rax, qword ptr [rdi + rbx]
	mov	qword ptr [r11 + 0x18], rax
	shr	rax, 8
	and	eax, 0x7f8
	add	rcx, qword ptr [rdi + rax]
	mov	qword ptr [rsi + 0x18], rcx
	add	r11, 0x20
	add	rsi, 0x20
	cmp	r11, r9
	jb	.label_1473
	lea	r9, [rdi + 0x800]
	lea	rsi, [rdi + r8*8 + 0x38]
	nop	word ptr cs:[rax + rax]
.label_1474:
	mov	rbx, rdx
	shl	rbx, 0x15
	xor	rbx, rdx
	not	rbx
	add	rbx, qword ptr [rsi - 0x418]
	mov	rax, qword ptr [rsi - 0x18]
	mov	edx, eax
	and	edx, 0x7f8
	add	rcx, qword ptr [rdi + rdx]
	add	rcx, rbx
	mov	qword ptr [rsi - 0x18], rcx
	shr	rcx, 8
	and	ecx, 0x7f8
	add	rax, qword ptr [rdi + rcx]
	mov	qword ptr [r10], rax
	mov	rdx, rbx
	shr	rdx, 5
	xor	rdx, rbx
	add	rdx, qword ptr [rsi - 0x410]
	mov	rcx, qword ptr [rsi - 0x10]
	mov	ebx, ecx
	and	ebx, 0x7f8
	add	rax, rdx
	add	rax, qword ptr [rdi + rbx]
	mov	qword ptr [rsi - 0x10], rax
	shr	rax, 8
	and	eax, 0x7f8
	add	rcx, qword ptr [rdi + rax]
	mov	qword ptr [r10 + 8], rcx
	mov	rbx, rdx
	shl	rbx, 0xc
	xor	rbx, rdx
	add	rbx, qword ptr [rsi - 0x408]
	mov	rax, qword ptr [rsi - 8]
	mov	edx, eax
	and	edx, 0x7f8
	add	rcx, rbx
	add	rcx, qword ptr [rdi + rdx]
	mov	qword ptr [rsi - 8], rcx
	shr	rcx, 8
	and	ecx, 0x7f8
	add	rax, qword ptr [rdi + rcx]
	mov	qword ptr [r10 + 0x10], rax
	mov	rdx, rbx
	shr	rdx, 0x21
	xor	rdx, rbx
	add	rdx, qword ptr [rsi - 0x400]
	mov	rcx, qword ptr [rsi]
	mov	ebx, ecx
	and	ebx, 0x7f8
	add	rax, rdx
	add	rax, qword ptr [rdi + rbx]
	mov	qword ptr [rsi], rax
	shr	rax, 8
	and	eax, 0x7f8
	add	rcx, qword ptr [rdi + rax]
	mov	qword ptr [r10 + 0x18], rcx
	lea	rax, [rsi + 0x20]
	add	rsi, 8
	add	r10, 0x20
	cmp	rsi, r9
	mov	rsi, rax
	jb	.label_1474
	mov	qword ptr [rdi + 0x800], rdx
	mov	qword ptr [rdi + 0x808], rcx
	pop	rbx
	pop	r14
	ret	
	.section	.text
	.align	32
	#Procedure 0x410730

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
.label_1475:
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
	jl	.label_1475
	xor	ebx, ebx
	nop	dword ptr [rax + rax]
.label_1476:
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
	jl	.label_1476
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
	.align	32
	#Procedure 0x410990

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
	.align	32
	#Procedure 0x410a00
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
	.align	32
	#Procedure 0x410a30

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
	je	.label_1477
	lea	r12, [rbx + 0x30]
	lea	r15, [rbx + 0x18]
	nop	word ptr cs:[rax + rax]
.label_1481:
	mov	rax, qword ptr [rbx + 0x30]
	cmp	qword ptr [rbx + 0x38], rax
	jne	.label_1484
	mov	esi, 1
	mov	rdi, r15
	call	_obstack_newchunk
	mov	rax, qword ptr [r12]
.label_1484:
	lea	rcx, [rax + 1]
	mov	qword ptr [r12], rcx
	mov	byte ptr [rax], bpl
	test	ebp, ebp
	jne	.label_1482
	mov	rdi, rbx
	call	save_token
.label_1482:
	mov	rdi, r14
	call	fgetc
	mov	ebp, eax
	cmp	ebp, -1
	jne	.label_1481
	jmp	.label_1478
.label_1477:
	lea	r15, [rbx + 0x18]
	lea	r12, [rbx + 0x30]
.label_1478:
	mov	rax, qword ptr [rbx + 0x30]
	cmp	rax, qword ptr [rbx + 0x28]
	je	.label_1485
	cmp	qword ptr [rbx + 0x38], rax
	jne	.label_1487
	mov	esi, 1
	mov	rdi, r15
	call	_obstack_newchunk
	mov	rax, qword ptr [r12]
.label_1487:
	lea	rcx, [rax + 1]
	mov	qword ptr [rbx + 0x30], rcx
	mov	byte ptr [rax], 0
	mov	rdi, rbx
	call	save_token
.label_1485:
	mov	rax, qword ptr [rbx + 0x88]
	mov	rcx, qword ptr [rbx + 0x90]
	sub	rcx, rax
	cmp	rcx, 8
	jae	.label_1483
	lea	rdi, [rbx + 0x70]
	mov	esi, 8
	call	_obstack_newchunk
	mov	rax, qword ptr [rbx + 0x88]
.label_1483:
	mov	qword ptr [rax], 0
	mov	rdx, qword ptr [rbx + 0x88]
	add	rdx, 8
	mov	qword ptr [rbx + 0x88], rdx
	mov	rax, qword ptr [rbx + 0x80]
	cmp	rdx, rax
	jne	.label_1479
	or	byte ptr [rbx + 0xc0], 2
.label_1479:
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
	jbe	.label_1488
	mov	qword ptr [rbx + 0x88], rbp
	mov	rcx, rbp
.label_1488:
	mov	qword ptr [rbx + 0x80], rcx
	mov	qword ptr [rbx + 8], rax
	mov	rax, qword ptr [rbx + 0xd8]
	mov	rdx, qword ptr [rbx + 0xe0]
	cmp	rdx, rax
	jne	.label_1486
	or	byte ptr [rbx + 0x118], 2
.label_1486:
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
	jbe	.label_1480
	mov	qword ptr [rbx + 0xe0], rbp
	mov	rcx, rbp
.label_1480:
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
	.align	32
	#Procedure 0x410c00

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
	jne	.label_1489
	or	byte ptr [rbx + 0x68], 2
.label_1489:
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
	jbe	.label_1490
	mov	qword ptr [rbx + 0x30], rcx
	mov	rax, rcx
.label_1490:
	dec	r14
	mov	qword ptr [rbx + 0x28], rax
	mov	rax, qword ptr [rbx + 0x88]
	mov	rcx, qword ptr [rbx + 0x90]
	sub	rcx, rax
	cmp	rcx, 8
	jae	.label_1491
	lea	rdi, [rbx + 0x70]
	mov	esi, 8
	call	_obstack_newchunk
	mov	rax, qword ptr [rbx + 0x88]
.label_1491:
	sub	r14, r15
	mov	qword ptr [rax], r15
	add	qword ptr [rbx + 0x88], 8
	mov	rax, qword ptr [rbx + 0xe0]
	mov	rcx, qword ptr [rbx + 0xe8]
	sub	rcx, rax
	cmp	rcx, 8
	jae	.label_1492
	lea	rdi, [rbx + 0xc8]
	mov	esi, 8
	call	_obstack_newchunk
	mov	rax, qword ptr [rbx + 0xe0]
.label_1492:
	mov	qword ptr [rax], r14
	add	qword ptr [rbx + 0xe0], 8
	inc	qword ptr [rbx]
	pop	rbx
	pop	r14
	pop	r15
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x410cd0
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
	.align	32
	#Procedure 0x410ce0

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
	.section	.text
	.align	32
	#Procedure 0x410d00

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
	jne	.label_1493
	nop	dword ptr [rax]
.label_1502:
	movzx	r11d, byte ptr [rdi + 1]
	inc	rdi
	cmp	r11d, 0x30
	je	.label_1502
	cmp	r11d, ecx
	je	.label_1502
	movzx	r8d, r9b
	cmp	r8d, 0x2d
	jne	.label_1507
	nop	word ptr cs:[rax + rax]
.label_1516:
	movzx	eax, byte ptr [rsi + 1]
	inc	rsi
	cmp	eax, 0x30
	je	.label_1516
	cmp	eax, ecx
	je	.label_1516
	lea	ebp, [r11 - 0x30]
	cmp	ebp, 0xa
	setb	r10b
	cmp	ebp, 9
	ja	.label_1517
	movzx	ebp, r11b
	movzx	ebx, al
	cmp	ebx, ebp
	jne	.label_1517
	nop	word ptr cs:[rax + rax]
.label_1532:
	mov	r9b, byte ptr [rdi + 1]
	inc	rdi
	movzx	r11d, r9b
	cmp	r11d, ecx
	je	.label_1532
.label_1535:
	movzx	eax, byte ptr [rsi + 1]
	inc	rsi
	cmp	eax, ecx
	je	.label_1535
	lea	ebp, [r11 - 0x30]
	cmp	ebp, 0xa
	setb	r10b
	cmp	ebp, 9
	ja	.label_1526
	movzx	ebp, r9b
	movzx	ebx, al
	cmp	ebx, ebp
	je	.label_1532
	jmp	.label_1526
.label_1493:
	movzx	eax, r9b
	cmp	eax, 0x2d
	jne	.label_1545
	nop	dword ptr [rax]
.label_1530:
	movzx	eax, byte ptr [rsi + 1]
	inc	rsi
	cmp	eax, 0x30
	je	.label_1530
	cmp	eax, ecx
	je	.label_1530
	cmp	eax, edx
	jne	.label_1553
	inc	rsi
	nop	word ptr [rax + rax]
.label_1494:
	movzx	eax, byte ptr [rsi]
	inc	rsi
	cmp	eax, 0x30
	je	.label_1494
.label_1553:
	movzx	esi, al
	add	esi, -0x30
	mov	eax, 1
	cmp	esi, 0xa
	jb	.label_1495
	movzx	eax, r8b
	cmp	eax, 0x30
	jne	.label_1501
	jmp	.label_1505
.label_1507:
	cmp	r11d, edx
	jne	.label_1506
	inc	rdi
	nop	dword ptr [rax]
.label_1528:
	movzx	r11d, byte ptr [rdi]
	inc	rdi
	cmp	r11d, 0x30
	je	.label_1528
.label_1506:
	movzx	edi, r11b
	add	edi, -0x30
	mov	eax, 0xffffffff
	cmp	edi, 0xa
	jb	.label_1495
	cmp	r8d, 0x30
	je	.label_1519
	cmp	r10d, ecx
	jne	.label_1522
	nop	dword ptr [rax]
.label_1519:
	movzx	r10d, byte ptr [rsi + 1]
	inc	rsi
	cmp	r10d, 0x30
	je	.label_1519
	cmp	r10d, ecx
	mov	r9b, r10b
	je	.label_1519
.label_1522:
	cmp	r10d, edx
	jne	.label_1529
	inc	rsi
	nop	
.label_1518:
	movzx	r9d, byte ptr [rsi]
	inc	rsi
	cmp	r9d, 0x30
	je	.label_1518
.label_1529:
	movzx	eax, r9b
	jmp	.label_1534
.label_1545:
	movzx	ebp, r8b
	cmp	ebp, 0x30
	jne	.label_1504
	jmp	.label_1509
.label_1517:
	mov	r9b, r11b
.label_1526:
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
	jne	.label_1539
	or	bl, r14b
	je	.label_1539
	movzx	eax, r9b
	add	eax, -0x30
	xor	edx, edx
	cmp	eax, 9
	ja	.label_1551
	nop	word ptr cs:[rax + rax]
.label_1513:
	movzx	ebx, byte ptr [rdi + 1]
	inc	rdi
	cmp	ebx, ecx
	je	.label_1513
	inc	rdx
	add	ebx, -0x30
	cmp	ebx, 0xa
	jb	.label_1513
.label_1551:
	xor	edi, edi
	cmp	ebp, 0xa
	jae	.label_1499
	nop	dword ptr [rax]
.label_1508:
	movzx	eax, byte ptr [rsi + 1]
	inc	rsi
	cmp	eax, ecx
	je	.label_1508
	inc	rdi
	add	eax, -0x30
	cmp	eax, 0xa
	jb	.label_1508
.label_1499:
	cmp	rdx, rdi
	jne	.label_1547
	sub	r8d, r11d
	xor	eax, eax
	test	rdx, rdx
	cmovne	eax, r8d
	jmp	.label_1495
.label_1539:
	movzx	ecx, dl
	cmp	r8d, ecx
	jne	.label_1515
	movzx	eax, r9b
	inc	rsi
	cmp	eax, ecx
	jne	.label_1543
	inc	rdi
	nop	word ptr cs:[rax + rax]
.label_1521:
	movzx	ebp, byte ptr [rsi]
	movsx	eax, bpl
	movzx	edx, byte ptr [rdi]
	lea	ecx, [rax - 0x30]
	cmp	ebp, edx
	jne	.label_1523
	inc	rsi
	inc	rdi
	xor	eax, eax
	cmp	ecx, 0xa
	jb	.label_1521
	jmp	.label_1495
.label_1547:
	mov	ecx, 1
	mov	eax, 0xffffffff
	cmovb	eax, ecx
	jmp	.label_1495
.label_1515:
	xor	eax, eax
	movzx	edx, r9b
	cmp	edx, ecx
	jne	.label_1495
	inc	rdi
	nop	word ptr cs:[rax + rax]
.label_1540:
	movsx	eax, byte ptr [rdi]
	inc	rdi
	cmp	eax, 0x30
	je	.label_1540
	jmp	.label_1534
.label_1523:
	movsx	ebx, dl
	lea	edx, [rbx - 0x30]
	cmp	ecx, 9
	ja	.label_1544
	cmp	edx, 9
	ja	.label_1544
	sub	eax, ebx
	jmp	.label_1495
.label_1544:
	cmp	ecx, 0xa
	jae	.label_1549
	nop	dword ptr [rax]
.label_1543:
	movsx	eax, byte ptr [rsi]
	inc	rsi
	cmp	eax, 0x30
	je	.label_1543
	jmp	.label_1500
.label_1549:
	xor	eax, eax
	cmp	edx, 0xa
	jb	.label_1540
	jmp	.label_1495
.label_1500:
	add	eax, -0x30
	cmp	eax, 0xa
	sbb	eax, eax
	and	eax, 1
	jmp	.label_1495
.label_1534:
	add	eax, -0x30
	cmp	eax, 0xa
	sbb	eax, eax
	jmp	.label_1495
.label_1504:
	cmp	r8d, ecx
	jne	.label_1503
.label_1509:
	movzx	r8d, byte ptr [rdi + 1]
	inc	rdi
	cmp	r8d, 0x30
	jne	.label_1504
	jmp	.label_1509
.label_1503:
	cmp	eax, 0x30
	je	.label_1510
	cmp	r10d, ecx
	jne	.label_1512
	nop	word ptr cs:[rax + rax]
.label_1510:
	movzx	r9d, byte ptr [rsi + 1]
	inc	rsi
	cmp	r9d, 0x30
	je	.label_1510
	cmp	r9d, ecx
	je	.label_1510
.label_1512:
	movzx	r10d, r8b
	jmp	.label_1520
	nop	dword ptr [rax]
.label_1533:
	mov	r8b, byte ptr [rdi + 1]
	inc	rdi
	movzx	r10d, r8b
	cmp	r10d, ecx
	je	.label_1533
.label_1527:
	movzx	r9d, byte ptr [rsi + 1]
	inc	rsi
	cmp	r9d, ecx
	je	.label_1527
.label_1520:
	lea	ebp, [r10 - 0x30]
	cmp	ebp, 0xa
	setb	al
	cmp	ebp, 9
	ja	.label_1531
	movzx	ebp, r9b
	movzx	ebx, r8b
	cmp	ebx, ebp
	je	.label_1533
.label_1531:
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
	jne	.label_1537
	or	r14b, bpl
	je	.label_1537
	movzx	eax, r8b
	add	eax, -0x30
	xor	edx, edx
	cmp	eax, 9
	ja	.label_1548
	nop	word ptr cs:[rax + rax]
.label_1536:
	movzx	eax, byte ptr [rdi + 1]
	inc	rdi
	cmp	eax, ecx
	je	.label_1536
	inc	rdx
	add	eax, -0x30
	cmp	eax, 0xa
	jb	.label_1536
.label_1548:
	xor	eax, eax
	cmp	r11d, 0xa
	jae	.label_1496
	nop	
.label_1524:
	movzx	edi, byte ptr [rsi + 1]
	inc	rsi
	cmp	edi, ecx
	je	.label_1524
	inc	rax
	add	edi, -0x30
	cmp	edi, 0xa
	jb	.label_1524
.label_1496:
	cmp	rdx, rax
	jne	.label_1550
	sub	r10d, r9d
	xor	eax, eax
	test	rdx, rdx
	cmovne	eax, r10d
	jmp	.label_1495
.label_1537:
	movzx	eax, r8b
	movzx	ecx, dl
	cmp	eax, ecx
	jne	.label_1511
	inc	rdi
	cmp	r9d, eax
	jne	.label_1514
	inc	rsi
	nop	word ptr cs:[rax + rax]
.label_1525:
	movzx	ebp, byte ptr [rdi]
	movsx	eax, bpl
	movzx	edx, byte ptr [rsi]
	lea	ecx, [rax - 0x30]
	cmp	ebp, edx
	jne	.label_1546
	inc	rdi
	inc	rsi
	xor	eax, eax
	cmp	ecx, 0xa
	jb	.label_1525
	jmp	.label_1495
.label_1550:
	mov	ecx, 0xffffffff
	mov	eax, 1
	cmovb	eax, ecx
	jmp	.label_1495
.label_1511:
	xor	eax, eax
	cmp	r9d, ecx
	jne	.label_1495
	inc	rsi
	nop	dword ptr [rax]
.label_1541:
	movsx	eax, byte ptr [rsi]
	inc	rsi
	cmp	eax, 0x30
	je	.label_1541
	jmp	.label_1534
.label_1546:
	movsx	ebx, dl
	lea	edx, [rbx - 0x30]
	cmp	ecx, 9
	ja	.label_1538
	cmp	edx, 9
	ja	.label_1538
	sub	eax, ebx
	jmp	.label_1495
.label_1538:
	cmp	ecx, 0xa
	jae	.label_1542
	nop	dword ptr [rax]
.label_1514:
	movsx	eax, byte ptr [rdi]
	inc	rdi
	cmp	eax, 0x30
	je	.label_1514
	jmp	.label_1500
.label_1542:
	xor	eax, eax
	cmp	edx, 0xa
	jb	.label_1541
.label_1495:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
.label_1501:
	cmp	r8d, ecx
	jne	.label_1552
.label_1505:
	movzx	r8d, byte ptr [rdi + 1]
	inc	rdi
	cmp	r8d, 0x30
	jne	.label_1501
	jmp	.label_1505
.label_1552:
	cmp	r8d, edx
	jne	.label_1497
	inc	rdi
	nop	dword ptr [rax]
.label_1498:
	movzx	r8d, byte ptr [rdi]
	inc	rdi
	cmp	r8d, 0x30
	je	.label_1498
.label_1497:
	movzx	eax, r8b
	jmp	.label_1500
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x411230

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
	ja	.label_1554
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
	jmp	.label_1555
.label_1554:
	mov	eax, ebx
.label_1555:
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x411280

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
	je	.label_1556
	mov	edx, OFFSET FLAT:label_1566
	xor	eax, eax
	mov	rdi, r14
	mov	r8, rbx
	call	__fprintf_chk
	jmp	.label_1572
.label_1556:
	mov	edx, OFFSET FLAT:label_1573
	xor	eax, eax
	mov	rdi, r14
	mov	rcx, rbx
	mov	r8, r9
	call	__fprintf_chk
.label_1572:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_1559
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
	mov	esi, OFFSET FLAT:label_1574
	mov	edx, 5
	call	dcgettext
	mov	rdi, rax
	mov	rsi, r14
	call	fputs_unlocked
	cmp	r12, 9
	ja	.label_1561
	jmp	qword ptr [(r12 * 8) + label_1562]
.label_1890:
	add	rsp, 8
	jmp	.label_1560
.label_1561:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_1569
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
	jmp	.label_1560
.label_1891:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_1557
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
.label_1892:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_1570
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
.label_1893:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_1567
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
.label_1894:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_1564
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
	jmp	.label_1560
.label_1895:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_1563
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
	jmp	.label_1560
.label_1896:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_1565
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
	jmp	.label_1560
.label_1897:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_1568
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
	jmp	.label_1560
.label_1899:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_1571
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
	jmp	.label_1560
.label_1898:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_1558
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
.label_1560:
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4115e0
	.globl version_etc_ar
	.type version_etc_ar, @function
version_etc_ar:

	mov	r9, -1
	nop	word ptr [rax + rax]
.label_1575:
	cmp	qword ptr [r8 + r9*8 + 8], 0
	lea	r9, [r9 + 1]
	jne	.label_1575
	jmp	version_etc_arn
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x411610

	.globl version_etc_va
	.type version_etc_va, @function
version_etc_va:
	movsxd	r10, dword ptr [r8]
	cmp	r10, 0x28
	ja	.label_1580
	mov	r9, r10
	add	r9, qword ptr [r8 + 0x10]
	lea	r10d, [r10 + 8]
	mov	dword ptr [r8], r10d
	jmp	.label_1583
.label_1580:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_1583:
	sub	rsp, 0x58
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp], rax
	xor	r9d, r9d
	test	rax, rax
	je	.label_1582
	cmp	r10d, 0x29
	jae	.label_1579
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_1581
.label_1579:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_1581:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 8], rax
	mov	r9d, 1
	test	rax, rax
	je	.label_1582
	cmp	r10d, 0x29
	jae	.label_1577
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_1578
.label_1577:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_1578:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x10], rax
	mov	r9d, 2
	test	rax, rax
	je	.label_1582
	cmp	r10d, 0x29
	jae	.label_1588
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_1576
.label_1588:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_1576:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x18], rax
	mov	r9d, 3
	test	rax, rax
	je	.label_1582
	cmp	r10d, 0x29
	jae	.label_1586
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_1587
.label_1586:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_1587:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x20], rax
	mov	r9d, 4
	test	rax, rax
	je	.label_1582
	cmp	r10d, 0x29
	jae	.label_1584
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_1585
.label_1584:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_1585:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x28], rax
	mov	r9d, 5
	test	rax, rax
	je	.label_1582
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x30], rax
	mov	r9d, 6
	test	rax, rax
	je	.label_1582
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x38], rax
	mov	r9d, 7
	test	rax, rax
	je	.label_1582
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x40], rax
	mov	r9d, 8
	test	rax, rax
	je	.label_1582
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x48], rax
	cmp	rax, 1
	mov	r9d, 9
	sbb	r9, -1
.label_1582:
	lea	r8, [rsp]
	call	version_etc_arn
	add	rsp, 0x58
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x411800

	.globl version_etc
	.type version_etc, @function
version_etc:
	sub	rsp, 0xd8
	test	al, al
	je	.label_1589
	movaps	xmmword ptr [rsp + 0x50], xmm0
	movaps	xmmword ptr [rsp + 0x60], xmm1
	movaps	xmmword ptr [rsp + 0x70], xmm2
	movaps	xmmword ptr [rsp + 0x80], xmm3
	movaps	xmmword ptr [rsp + 0x90], xmm4
	movaps	xmmword ptr [rsp + 0xa0], xmm5
	movaps	xmmword ptr [rsp + 0xb0], xmm6
	movaps	xmmword ptr [rsp + 0xc0], xmm7
.label_1589:
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
	#Procedure 0x411890
	.globl emit_bug_reporting_address
	.type emit_bug_reporting_address, @function
emit_bug_reporting_address:

	push	rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_1590
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_1591
	xor	eax, eax
	mov	rsi, rcx
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_1593
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_30
	mov	ecx, OFFSET FLAT:label_31
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_1592
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	pop	rax
	jmp	fputs_unlocked
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x411910
	.globl xnmalloc
	.type xnmalloc, @function
xnmalloc:

	push	rbx
	mov	rbx, rsi
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rdi
	jb	.label_1594
	imul	rbx, rdi
	mov	rdi, rbx
	call	malloc
	test	rbx, rbx
	je	.label_1595
	test	rax, rax
	je	.label_1594
.label_1595:
	pop	rbx
	ret	
.label_1594:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x411950

	.globl xmalloc
	.type xmalloc, @function
xmalloc:
	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	je	.label_1596
	test	rax, rax
	je	.label_1597
.label_1596:
	pop	rbx
	ret	
.label_1597:
	call	xalloc_die
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x411970
	.globl xnrealloc
	.type xnrealloc, @function
xnrealloc:

	push	rbx
	mov	rbx, rdx
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rsi
	jb	.label_1598
	imul	rbx, rsi
	test	rdi, rdi
	je	.label_1599
	test	rbx, rbx
	jne	.label_1599
	call	free
	xor	eax, eax
	pop	rbx
	ret	
.label_1599:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_1600
	test	rax, rax
	je	.label_1598
.label_1600:
	pop	rbx
	ret	
.label_1598:
	call	xalloc_die
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4119c0

	.globl xrealloc
	.type xrealloc, @function
xrealloc:
	push	rbx
	mov	rbx, rsi
	test	rdi, rdi
	je	.label_1601
	test	rbx, rbx
	jne	.label_1601
	call	free
	xor	eax, eax
	pop	rbx
	ret	
.label_1601:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_1603
	test	rax, rax
	je	.label_1602
.label_1603:
	pop	rbx
	ret	
.label_1602:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x4119f0
	.globl x2nrealloc
	.type x2nrealloc, @function
x2nrealloc:

	push	rbx
	mov	rbx, rdx
	mov	rcx, qword ptr [rsi]
	test	rdi, rdi
	je	.label_1607
	movabs	rax, 0x5555555555555554
	xor	edx, edx
	div	rbx
	cmp	rax, rcx
	jbe	.label_1609
	mov	rax, rcx
	shr	rax, 1
	lea	rcx, [rcx + rax + 1]
	jmp	.label_1604
.label_1607:
	test	rcx, rcx
	jne	.label_1610
	mov	eax, 0x80
	xor	edx, edx
	div	rbx
	xor	ecx, ecx
	cmp	rbx, 0x80
	seta	cl
	add	rcx, rax
.label_1610:
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rcx
	jb	.label_1605
.label_1604:
	mov	qword ptr [rsi], rcx
	imul	rbx, rcx
	test	rdi, rdi
	je	.label_1606
	test	rbx, rbx
	jne	.label_1606
	call	free
	xor	eax, eax
	pop	rbx
	ret	
.label_1606:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_1608
	test	rax, rax
	je	.label_1609
.label_1608:
	pop	rbx
	ret	
.label_1609:
	call	xalloc_die
.label_1605:
	call	xalloc_die
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x411a90
	.globl xcharalloc
	.type xcharalloc, @function
xcharalloc:

	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	je	.label_1611
	test	rax, rax
	je	.label_1612
.label_1611:
	pop	rbx
	ret	
.label_1612:
	call	xalloc_die
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x411ab0
	.globl x2realloc
	.type x2realloc, @function
x2realloc:

	push	rbx
	mov	rax, qword ptr [rsi]
	test	rdi, rdi
	je	.label_1615
	movabs	rcx, 0x5555555555555554
	cmp	rax, rcx
	jae	.label_1617
	mov	rbx, rax
	shr	rbx, 1
	add	rbx, rax
	inc	rbx
	mov	qword ptr [rsi], rbx
	jne	.label_1614
	call	free
	xor	eax, eax
	jmp	.label_1616
.label_1615:
	test	rax, rax
	mov	ebx, 0x80
	cmovne	rbx, rax
	test	rbx, rbx
	js	.label_1613
	mov	qword ptr [rsi], rbx
.label_1614:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_1616
	test	rax, rax
	je	.label_1613
.label_1616:
	pop	rbx
	ret	
.label_1613:
	call	xalloc_die
.label_1617:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x411b20
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
	je	.label_1619
	test	r14, r14
	je	.label_1618
.label_1619:
	xor	esi, esi
	mov	rdi, r14
	mov	rdx, rbx
	call	memset
	mov	rax, r14
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
.label_1618:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x411b60

	.globl xcalloc
	.type xcalloc, @function
xcalloc:
	push	rax
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	jb	.label_1620
	call	rpl_calloc
	test	rax, rax
	je	.label_1620
	pop	rcx
	ret	
.label_1620:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x411b90

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
	je	.label_1621
	test	r15, r15
	je	.label_1622
.label_1621:
	mov	rdi, r15
	mov	rsi, r14
	mov	rdx, rbx
	call	memcpy
	mov	rax, r15
	pop	rbx
	pop	r14
	pop	r15
	ret	
.label_1622:
	call	xalloc_die
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x411bd0
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
	je	.label_1624
	test	r15, r15
	je	.label_1623
.label_1624:
	mov	rdi, r15
	mov	rsi, r14
	mov	rdx, rbx
	call	memcpy
	mov	rax, r15
	pop	rbx
	pop	r14
	pop	r15
	ret	
.label_1623:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x411c20

	.globl xalloc_die
	.type xalloc_die, @function
xalloc_die:
	push	rbx
	mov	ebx, dword ptr [rip + exit_failure]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_1625
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	esi, esi
	mov	edx, OFFSET FLAT:label_316
	xor	eax, eax
	mov	edi, ebx
	call	error
	call	abort
	.section	.text
	.align	32
	#Procedure 0x411c50
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
	je	.label_1626
	mov	rsi, rbx
	mov	rdx, r12
	mov	rcx, r15
	mov	r8, r14
	call	collate_error
.label_1626:
	mov	eax, ebp
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x411ca0

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
	mov	esi, OFFSET FLAT:label_1627
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, ebp
	mov	rdx, rcx
	call	error
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_1628
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	call	error
	mov	r14d, dword ptr [rip + exit_failure]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_1629
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
	.align	32
	#Procedure 0x411d70

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
	je	.label_1630
	dec	rbx
	dec	r15
	mov	rsi, r12
	mov	rdx, rbx
	mov	rcx, r14
	mov	r8, r15
	call	collate_error
.label_1630:
	mov	eax, ebp
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x411dc0

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
	je	.label_1631
	lea	r15, [rsp]
	nop	dword ptr [rax + rax]
.label_1632:
	mov	eax, dword ptr [r14]
	mov	ebx, 0xffffffff
	or	eax, 4
	cmp	eax, 4
	jne	.label_1631
	mov	dword ptr [r14], 0
	xor	ebx, ebx
	xor	esi, esi
	mov	rdi, r15
	call	rpl_nanosleep
	test	eax, eax
	jne	.label_1632
.label_1631:
	mov	eax, ebx
	add	rsp, 0x10
	pop	rbx
	pop	r14
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x411e40

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
	jae	.label_1644
	mov	qword ptr [rsp], rcx
	call	__errno_location
	mov	r15, rax
	mov	dword ptr [r15], 0
	call	__ctype_b_loc
	mov	rcx, qword ptr [rax]
	mov	rdx, rbx
	nop	word ptr cs:[rax + rax]
.label_1634:
	movzx	eax, byte ptr [rdx]
	inc	rdx
	test	byte ptr [rcx + rax*2 + 1], 0x20
	jne	.label_1634
	test	rbp, rbp
	lea	rsi, [rsp + 0x10]
	cmovne	rsi, rbp
	mov	r13d, 4
	cmp	al, 0x2d
	je	.label_1633
	mov	rdi, rbx
	mov	edx, r12d
	mov	qword ptr [rsp + 8], rsi
	call	strtoul
	mov	rbp, rax
	mov	rax, qword ptr [rsp + 8]
	mov	r12, qword ptr [rax]
	cmp	r12, rbx
	je	.label_1639
	mov	eax, dword ptr [r15]
	xor	ebx, ebx
	test	eax, eax
	je	.label_1651
	cmp	eax, 0x22
	jne	.label_1633
	mov	ebx, 1
.label_1651:
	test	r14, r14
	jne	.label_1653
	jmp	.label_1638
.label_1639:
	test	r14, r14
	je	.label_1633
	movsx	esi, byte ptr [rbx]
	test	esi, esi
	je	.label_1633
	mov	rdi, r14
	call	strchr
	xor	ebx, ebx
	mov	ebp, 1
	test	rax, rax
	je	.label_1633
.label_1653:
	movsx	r13d, byte ptr [r12]
	test	r13d, r13d
	je	.label_1638
	mov	rdi, r14
	mov	esi, r13d
	call	strchr
	test	rax, rax
	je	.label_1643
	mov	r15d, 1
	mov	esi, 0x400
	lea	eax, [r13 - 0x45]
	cmp	eax, 0x2f
	ja	.label_1637
	movabs	rdx, 0x814400308945
	bt	rdx, rax
	jae	.label_1637
	mov	esi, 0x30
	mov	rdi, r14
	call	strchr
	mov	r15d, 1
	mov	esi, 0x400
	test	rax, rax
	je	.label_1637
	movsx	eax, byte ptr [r12 + 1]
	mov	r15d, 1
	mov	esi, 0x400
	cmp	eax, 0x42
	je	.label_1640
	cmp	eax, 0x44
	je	.label_1640
	cmp	eax, 0x69
	jne	.label_1637
	xor	eax, eax
	cmp	byte ptr [r12 + 2], 0x42
	sete	al
	lea	r15, [rax + rax + 1]
	mov	esi, 0x400
	jmp	.label_1637
.label_1640:
	mov	r15d, 2
	mov	esi, 0x3e8
.label_1637:
	add	r13d, -0x42
	cmp	r13d, 0x35
	ja	.label_1643
	xor	eax, eax
	jmp	qword ptr [(r13 * 8) + label_1650]
.label_1857:
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
	jmp	.label_1652
.label_1643:
	mov	rax, qword ptr [rsp]
	mov	qword ptr [rax], rbp
	or	ebx, 2
	jmp	.label_1641
.label_1858:
	mov	rdi, -1
	mov	rax, -1
	xor	edx, edx
	div	rsi
	imul	rsi, rbp
	cmp	rax, rbp
	cmovb	rsi, rdi
	sbb	eax, eax
	jmp	.label_1645
.label_1859:
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
	jmp	.label_1652
.label_1861:
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
	jmp	.label_1652
.label_1855:
	xor	eax, eax
	mov	rdx, rbp
	shr	rdx, 0x36
	setne	al
	shl	rbp, 0xa
	jmp	.label_1635
.label_1856:
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
.label_1652:
	and	dl, 1
	movzx	eax, dl
	jmp	.label_1642
.label_1860:
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
	jmp	.label_1642
.label_1862:
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
	jmp	.label_1649
.label_1863:
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
.label_1649:
	movzx	eax, dl
.label_1645:
	and	eax, 1
.label_1642:
	mov	rbp, rsi
.label_1636:
	or	eax, ebx
	lea	rcx, [r12 + r15]
	mov	rdx, qword ptr [rsp + 8]
	mov	qword ptr [rdx], rcx
	lea	ebx, [rax + 2]
	cmp	byte ptr [r12 + r15], 0
	cmove	ebx, eax
.label_1638:
	mov	rax, qword ptr [rsp]
	mov	qword ptr [rax], rbp
.label_1641:
	mov	r13d, ebx
.label_1633:
	mov	eax, r13d
	add	rsp, 0x18
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_1864:
	xor	eax, eax
	mov	rdx, rbp
	shr	rdx, 0x37
	setne	al
	shl	rbp, 9
.label_1635:
	cmp	rdx, 1
	sbb	rdx, rdx
	not	rdx
	or	rbp, rdx
	jmp	.label_1636
.label_1865:
	lea	rax, [rbp + rbp]
	test	rbp, rbp
	mov	rcx, -1
	cmovns	rcx, rax
	shr	rbp, 0x3f
	mov	eax, ebp
	mov	rbp, rcx
	jmp	.label_1636
.label_1644:
	mov	edi, OFFSET FLAT:label_1646
	mov	esi, OFFSET FLAT:label_1647
	mov	edx, 0x54
	mov	ecx, OFFSET FLAT:label_1648
	call	__assert_fail
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x412460

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
	mov	ebp, dword ptr [rip + exit_failure]
	dec	edi
	cmp	edi, 4
	jae	.label_1654
	movsxd	rsi, edi
	mov	rsi, qword ptr [(rsi * 8) + label_1656]
	cdqe	
	test	eax, eax
	jns	.label_1657
	lea	r14, [rsp + 6]
	mov	ebx, OFFSET FLAT:label_1655
	sub	rbx, rax
	mov	byte ptr [rsp + 6], dl
	mov	byte ptr [rsp + 7], 0
	jmp	.label_1658
.label_1657:
	shl	rax, 5
	mov	r14, qword ptr [rcx + rax]
	mov	ebx, OFFSET FLAT:label_1655
.label_1658:
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
.label_1654:
	call	abort
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4124e0

	.globl xstrtoumax
	.type xstrtoumax, @function
xstrtoumax:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x28
	mov	r14, r8
	mov	r12d, edx
	mov	rbp, rsi
	mov	rbx, rdi
	cmp	r12d, 0x25
	jae	.label_1669
	mov	qword ptr [rsp + 8], rcx
	call	__errno_location
	mov	r15, rax
	mov	dword ptr [r15], 0
	call	__ctype_b_loc
	mov	rcx, qword ptr [rax]
	mov	rdx, rbx
	nop	word ptr cs:[rax + rax]
.label_1665:
	movzx	eax, byte ptr [rdx]
	inc	rdx
	test	byte ptr [rcx + rax*2 + 1], 0x20
	jne	.label_1665
	test	rbp, rbp
	lea	rsi, [rsp + 0x20]
	cmovne	rsi, rbp
	mov	r13d, 4
	cmp	al, 0x2d
	je	.label_1659
	xor	ebp, ebp
	xor	ecx, ecx
	mov	rdi, rbx
	mov	qword ptr [rsp + 0x18], rsi
	mov	edx, r12d
	call	__strtoul_internal
	mov	r12, rax
	mov	rax, qword ptr [rsp + 0x18]
	mov	rcx, qword ptr [rax]
	cmp	rcx, rbx
	je	.label_1672
	mov	eax, dword ptr [r15]
	test	eax, eax
	je	.label_1678
	cmp	eax, 0x22
	jne	.label_1659
	mov	ebp, 1
.label_1678:
	test	r14, r14
	mov	r15d, ebp
	jne	.label_1662
	jmp	.label_1663
.label_1672:
	test	r14, r14
	je	.label_1659
	movsx	esi, byte ptr [rbx]
	test	esi, esi
	je	.label_1659
	mov	rdi, r14
	mov	rbx, rcx
	call	strchr
	mov	rcx, rbx
	xor	r15d, r15d
	mov	r12d, 1
	test	rax, rax
	je	.label_1659
.label_1662:
	movsx	r13d, byte ptr [rcx]
	test	r13d, r13d
	je	.label_1663
	mov	qword ptr [rsp + 0x10], rcx
	mov	rdi, r14
	mov	esi, r13d
	call	strchr
	test	rax, rax
	je	.label_1673
	mov	ecx, 1
	mov	esi, 0x400
	lea	eax, [r13 - 0x45]
	cmp	eax, 0x2f
	ja	.label_1661
	movabs	rdx, 0x814400308945
	bt	rdx, rax
	jae	.label_1661
	mov	esi, 0x30
	mov	rdi, r14
	call	strchr
	mov	ecx, 1
	mov	esi, 0x400
	test	rax, rax
	je	.label_1661
	mov	rax, qword ptr [rsp + 0x10]
	movsx	eax, byte ptr [rax + 1]
	mov	ecx, 1
	mov	esi, 0x400
	cmp	eax, 0x42
	je	.label_1666
	cmp	eax, 0x44
	je	.label_1666
	cmp	eax, 0x69
	jne	.label_1661
	xor	eax, eax
	mov	rcx, qword ptr [rsp + 0x10]
	cmp	byte ptr [rcx + 2], 0x42
	sete	al
	lea	rcx, [rax + rax + 1]
	mov	esi, 0x400
	jmp	.label_1661
.label_1666:
	mov	ecx, 2
	mov	esi, 0x3e8
.label_1661:
	add	r13d, -0x42
	cmp	r13d, 0x35
	ja	.label_1673
	xor	eax, eax
	jmp	qword ptr [(r13 * 8) + label_1660]
.label_2032:
	mov	rdi, -1
	mov	rax, -1
	xor	edx, edx
	div	rsi
	cmp	rax, r12
	sbb	r8b, r8b
	mov	rbx, r12
	imul	rbx, rsi
	cmp	rax, r12
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
	jmp	.label_1670
.label_1673:
	mov	rax, qword ptr [rsp + 8]
	mov	qword ptr [rax], r12
	or	r15d, 2
	jmp	.label_1671
.label_2033:
	mov	rdi, -1
	mov	rax, -1
	xor	edx, edx
	div	rsi
	imul	rsi, r12
	cmp	rax, r12
	cmovb	rsi, rdi
	sbb	eax, eax
	jmp	.label_1675
.label_2034:
	mov	rdi, -1
	mov	rax, -1
	xor	edx, edx
	div	rsi
	cmp	rax, r12
	sbb	r8b, r8b
	mov	rbx, r12
	imul	rbx, rsi
	cmp	rax, r12
	cmovb	rbx, rdi
	cmp	rax, rbx
	sbb	dl, dl
	imul	rsi, rbx
	cmp	rax, rbx
	cmovb	rsi, rdi
	or	dl, r8b
	jmp	.label_1664
.label_2036:
	mov	r9, -1
	mov	rax, -1
	xor	edx, edx
	div	rsi
	cmp	rax, r12
	sbb	r8b, r8b
	mov	rbx, r12
	imul	rbx, rsi
	cmp	rax, r12
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
	jmp	.label_1674
.label_2030:
	xor	eax, eax
	mov	rdx, r12
	shr	rdx, 0x36
	setne	al
	shl	r12, 0xa
	jmp	.label_1668
.label_2031:
	mov	rdi, -1
	mov	rax, -1
	xor	edx, edx
	div	rsi
	cmp	rax, r12
	sbb	r8b, r8b
	mov	rbx, r12
	imul	rbx, rsi
	cmp	rax, r12
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
	jmp	.label_1664
.label_2035:
	mov	rdi, -1
	mov	rax, -1
	xor	edx, edx
	div	rsi
	cmp	rax, r12
	sbb	r8b, r8b
	mov	rbx, r12
	imul	rbx, rsi
	cmp	rax, r12
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
.label_1674:
	or	dl, r10b
.label_1670:
	or	dl, bl
.label_1664:
	and	dl, 1
	movzx	eax, dl
	mov	r12, rsi
	jmp	.label_1667
.label_2037:
	mov	rdi, -1
	mov	rax, -1
	xor	edx, edx
	div	rsi
	cmp	rax, r12
	sbb	r8b, r8b
	mov	rbx, r12
	imul	rbx, rsi
	cmp	rax, r12
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
	mov	r13d, r15d
	sbb	r15b, r15b
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
	or	dl, r15b
	mov	r15d, r13d
	or	dl, bpl
	jmp	.label_1676
.label_2038:
	mov	rdi, -1
	mov	rax, -1
	xor	edx, edx
	div	rsi
	cmp	rax, r12
	sbb	r8b, r8b
	mov	rbx, r12
	imul	rbx, rsi
	cmp	rax, r12
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
.label_1676:
	movzx	eax, dl
.label_1675:
	and	eax, 1
	mov	r12, rsi
	jmp	.label_1667
.label_2039:
	xor	eax, eax
	mov	rdx, r12
	shr	rdx, 0x37
	setne	al
	shl	r12, 9
.label_1668:
	cmp	rdx, 1
	sbb	rdx, rdx
	not	rdx
	or	r12, rdx
	jmp	.label_1667
.label_2040:
	lea	rax, [r12 + r12]
	test	r12, r12
	mov	rdx, -1
	cmovns	rdx, rax
	shr	r12, 0x3f
	mov	eax, r12d
	mov	r12, rdx
.label_1667:
	or	eax, r15d
	mov	rdi, qword ptr [rsp + 0x10]
	lea	rdx, [rdi + rcx]
	mov	rsi, qword ptr [rsp + 0x18]
	mov	qword ptr [rsi], rdx
	lea	r15d, [rax + 2]
	cmp	byte ptr [rdi + rcx], 0
	cmove	r15d, eax
.label_1663:
	mov	rax, qword ptr [rsp + 8]
	mov	qword ptr [rax], r12
.label_1671:
	mov	r13d, r15d
.label_1659:
	mov	eax, r13d
	add	rsp, 0x28
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_1669:
	mov	edi, OFFSET FLAT:label_1646
	mov	esi, OFFSET FLAT:label_1647
	mov	edx, 0x54
	mov	ecx, OFFSET FLAT:label_1677
	call	__assert_fail
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x412b20

	.globl rpl_calloc
	.type rpl_calloc, @function
rpl_calloc:
	test	rdi, rdi
	mov	eax, 1
	je	.label_1679
	test	rsi, rsi
	mov	ecx, 1
	je	.label_1680
	mov	rax, rsi
	imul	rax, rdi
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	mov	rax, rsi
	mov	rcx, rdi
	je	.label_1680
	push	rax
	call	__errno_location
	mov	dword ptr [rax], 0xc
	xor	eax, eax
	pop	rcx
	ret	
.label_1679:
	mov	ecx, 1
.label_1680:
	mov	rdi, rcx
	mov	rsi, rax
	jmp	calloc
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x412b70

	.globl explicit_bzero
	.type explicit_bzero, @function
explicit_bzero:
	mov	rax, rsi
	xor	esi, esi
	mov	rdx, rax
	jmp	memset
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x412b80

	.globl rpl_fclose
	.type rpl_fclose, @function
rpl_fclose:
	push	rbp
	push	r14
	push	rbx
	mov	rbx, rdi
	call	fileno
	test	eax, eax
	js	.label_1681
	mov	rdi, rbx
	call	__freading
	test	eax, eax
	je	.label_1682
	mov	rdi, rbx
	call	fileno
	xor	esi, esi
	mov	edx, 1
	mov	edi, eax
	call	lseek
	cmp	rax, -1
	je	.label_1681
.label_1682:
	mov	rdi, rbx
	call	rpl_fflush
	test	eax, eax
	je	.label_1681
	call	__errno_location
	mov	r14, rax
	mov	ebp, dword ptr [r14]
	mov	rdi, rbx
	call	fclose
	test	ebp, ebp
	je	.label_1683
	mov	dword ptr [r14], ebp
	mov	eax, 0xffffffff
.label_1683:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
.label_1681:
	mov	rdi, rbx
	pop	rbx
	pop	r14
	pop	rbp
	jmp	fclose
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x412c00

	.globl rpl_fcntl
	.type rpl_fcntl, @function
rpl_fcntl:
	push	rbp
	push	r14
	push	rbx
	sub	rsp, 0xd0
	mov	ebx, edi
	test	al, al
	je	.label_1684
	movaps	xmmword ptr [rsp + 0x50], xmm0
	movaps	xmmword ptr [rsp + 0x60], xmm1
	movaps	xmmword ptr [rsp + 0x70], xmm2
	movaps	xmmword ptr [rsp + 0x80], xmm3
	movaps	xmmword ptr [rsp + 0x90], xmm4
	movaps	xmmword ptr [rsp + 0xa0], xmm5
	movaps	xmmword ptr [rsp + 0xb0], xmm6
	movaps	xmmword ptr [rsp + 0xc0], xmm7
.label_1684:
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
	ja	.label_1691
	mov	eax, 0xa0a
	bt	eax, esi
	jb	.label_1687
	mov	eax, 0x514
	bt	eax, esi
	jb	.label_1688
	test	esi, esi
	jne	.label_1691
	movsxd	rcx, dword ptr [rsp]
	cmp	rcx, 0x28
	ja	.label_1692
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0x10]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp], ecx
	jmp	.label_1693
.label_1691:
	lea	eax, [rsi - 0x400]
	cmp	eax, 8
	ja	.label_1694
	mov	ecx, 0x85
	bt	ecx, eax
	jb	.label_1688
	mov	ecx, 0x102
	bt	ecx, eax
	jae	.label_1698
.label_1687:
	xor	eax, eax
	mov	edi, ebx
	call	fcntl
	jmp	.label_1689
.label_1688:
	movsxd	rcx, dword ptr [rsp]
	cmp	rcx, 0x28
	ja	.label_1702
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0x10]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp], ecx
	jmp	.label_1703
.label_1702:
	mov	rax, qword ptr [rsp + 8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 8], rcx
.label_1703:
	mov	edx, dword ptr [rax]
	xor	eax, eax
	mov	edi, ebx
.label_1704:
	call	fcntl
.label_1689:
	mov	ebp, eax
.label_1686:
	mov	eax, ebp
	add	rsp, 0xd0
	pop	rbx
	pop	r14
	pop	rbp
	ret	
.label_1698:
	cmp	eax, 6
	jne	.label_1694
	movsxd	rcx, dword ptr [rsp]
	cmp	rcx, 0x28
	ja	.label_1696
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0x10]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp], ecx
	jmp	.label_1685
.label_1694:
	movsxd	rcx, dword ptr [rsp]
	cmp	rcx, 0x28
	ja	.label_1697
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0x10]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp], ecx
	jmp	.label_1700
.label_1692:
	mov	rax, qword ptr [rsp + 8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 8], rcx
.label_1693:
	mov	edx, dword ptr [rax]
	xor	esi, esi
	xor	eax, eax
	mov	edi, ebx
	jmp	.label_1704
.label_1696:
	mov	rax, qword ptr [rsp + 8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 8], rcx
.label_1685:
	mov	r14d, dword ptr [rax]
	cmp	dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec],  0
	js	.label_1690
	mov	esi, 0x406
	xor	eax, eax
	mov	edi, ebx
	mov	edx, r14d
	call	fcntl
	mov	ebp, eax
	test	ebp, ebp
	jns	.label_1695
	call	__errno_location
	cmp	dword ptr [rax], 0x16
	jne	.label_1695
	xor	esi, esi
	xor	eax, eax
	mov	edi, ebx
	mov	edx, r14d
	call	fcntl
	mov	ebp, eax
	test	ebp, ebp
	js	.label_1686
	mov	dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec],  0xffffffff
	mov	al, 1
	jmp	.label_1699
.label_1695:
	mov	dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec],  1
	jmp	.label_1686
.label_1697:
	mov	rax, qword ptr [rsp + 8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 8], rcx
.label_1700:
	mov	rdx, qword ptr [rax]
	xor	eax, eax
	mov	edi, ebx
	call	fcntl
	jmp	.label_1689
.label_1690:
	xor	esi, esi
	xor	eax, eax
	mov	edi, ebx
	mov	edx, r14d
	call	fcntl
	mov	ebp, eax
	cmp	dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec],  -1
	sete	al
.label_1699:
	test	al, al
	je	.label_1686
	test	ebp, ebp
	js	.label_1686
	mov	esi, 1
	xor	eax, eax
	mov	edi, ebp
	call	fcntl
	mov	ecx, eax
	test	ecx, ecx
	js	.label_1701
	or	ecx, 1
	mov	esi, 2
	xor	eax, eax
	mov	edi, ebp
	mov	edx, ecx
	call	fcntl
	cmp	eax, -1
	jne	.label_1686
.label_1701:
	call	__errno_location
	mov	rbx, rax
	mov	r14d, dword ptr [rbx]
	mov	edi, ebp
	call	close
	mov	dword ptr [rbx], r14d
	mov	ebp, 0xffffffff
	jmp	.label_1686
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x412ea0

	.globl rpl_fflush
	.type rpl_fflush, @function
rpl_fflush:
	push	rbx
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_1705
	mov	rdi, rbx
	call	__freading
	test	eax, eax
	je	.label_1705
	test	byte ptr [rbx + 1], 1
	je	.label_1705
	xor	esi, esi
	mov	edx, 1
	mov	rdi, rbx
	call	rpl_fseeko
.label_1705:
	mov	rdi, rbx
	pop	rbx
	jmp	fflush
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x412ee0

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
	jne	.label_1706
	mov	rax, qword ptr [rbx + 0x28]
	cmp	rax, qword ptr [rbx + 0x20]
	jne	.label_1706
	cmp	qword ptr [rbx + 0x48], 0
	je	.label_1707
.label_1706:
	mov	rdi, rbx
	mov	rsi, rbp
	mov	edx, r14d
	pop	rbx
	pop	r14
	pop	rbp
	jmp	fseeko
.label_1707:
	mov	rdi, rbx
	call	fileno
	mov	edi, eax
	mov	rsi, rbp
	mov	edx, r14d
	call	lseek
	mov	rcx, rax
	mov	eax, 0xffffffff
	cmp	rcx, -1
	je	.label_1708
	and	byte ptr [rbx], 0xef
	mov	qword ptr [rbx + 0x90], rcx
	xor	eax, eax
.label_1708:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x412f50

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
	je	.label_1709
	cmp	r15, -2
	jb	.label_1709
	xor	edi, edi
	call	hard_locale
	test	al, al
	jne	.label_1709
	movzx	eax, byte ptr [r14]
	mov	dword ptr [rbx], eax
	mov	r15d, 1
.label_1709:
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
	#Procedure 0x412fb0

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
	jb	.label_1710
	call	__errno_location
	mov	dword ptr [rax], 0x16
	mov	eax, 0xffffffff
	jmp	.label_1712
.label_1710:
	mov	rbx, qword ptr [rdi]
	lea	r14, [rsp]
	nop	word ptr cs:[rax + rax]
.label_1713:
	mov	qword ptr [rsp + 8], rcx
	cmp	rbx, 0x1fa401
	jl	.label_1711
	mov	qword ptr [rsp], 0x1fa400
	mov	rdi, r14
	mov	rsi, r15
	call	nanosleep
	add	rbx, -0x1fa400
	test	eax, eax
	mov	ecx, 0
	je	.label_1713
	test	r15, r15
	je	.label_1712
	add	qword ptr [r15], rbx
	jmp	.label_1712
.label_1711:
	mov	qword ptr [rsp], rbx
	lea	rdi, [rsp]
	mov	rsi, r15
	call	nanosleep
.label_1712:
	add	rsp, 0x10
	pop	rbx
	pop	r14
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x413050

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
	.align	32
	#Procedure 0x413070

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
	je	.label_1714
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
.label_1714:
	call	qword ptr [rip + obstack_alloc_failed_handler]
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x413100

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
	je	.label_1715
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
.label_1715:
	call	qword ptr [rip + obstack_alloc_failed_handler]
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x413190

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
	jb	.label_1717
	test	al, al
	jne	.label_1717
	mov	r15, qword ptr [r12 + 8]
	test	byte ptr [r12 + 0x50], 1
	jne	.label_1716
	mov	rdi, rbx
	call	qword ptr [r12 + 0x38]
	jmp	.label_1720
.label_1716:
	mov	rdi, qword ptr [r12 + 0x48]
	mov	rsi, rbx
	call	qword ptr [r12 + 0x38]
.label_1720:
	mov	r13, rax
	test	r13, r13
	je	.label_1717
	mov	qword ptr [r12 + 8], r13
	mov	qword ptr [r13 + 8], r15
	add	rbx, r13
	mov	qword ptr [r12 + 0x20], rbx
	mov	qword ptr [r13], rbx
	mov	rsi, qword ptr [r12 + 0x10]
	mov	rbp, qword ptr [r12 + 0x30]
	lea	rbx, [rbp + r13 + 0x10]
	mov	qword ptr [rsp + 8], r15
	mov	r15, rbp
	not	r15
	and	rbx, r15
	mov	rdi, rbx
	mov	qword ptr [rsp + 0x10], rsi
	mov	rdx, r14
	call	memcpy
	test	byte ptr [r12 + 0x50], 2
	jne	.label_1719
	mov	rax, qword ptr [rsp + 8]
	lea	rax, [rbp + rax + 0x10]
	and	rax, r15
	cmp	qword ptr [rsp + 0x10], rax
	jne	.label_1719
	mov	rax, qword ptr [rsp + 8]
	mov	rcx, rax
	mov	rax, qword ptr [rcx + 8]
	mov	qword ptr [r13 + 8], rax
	test	byte ptr [r12 + 0x50], 1
	mov	rsi, rcx
	jne	.label_1718
	mov	rdi, rsi
	call	qword ptr [r12 + 0x40]
	jmp	.label_1719
.label_1718:
	mov	rdi, qword ptr [r12 + 0x48]
	call	qword ptr [r12 + 0x40]
.label_1719:
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
.label_1717:
	call	qword ptr [rip + obstack_alloc_failed_handler]
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4132d0

	.globl _obstack_allocated_p
	.type _obstack_allocated_p, @function
_obstack_allocated_p:
	mov	rcx, qword ptr [rdi + 8]
	jmp	.label_1721
	nop	word ptr cs:[rax + rax]
.label_1724:
	mov	rcx, qword ptr [rcx + 8]
.label_1721:
	test	rcx, rcx
	je	.label_1722
	cmp	rcx, rsi
	jae	.label_1724
	mov	eax, 1
	cmp	qword ptr [rcx], rsi
	jb	.label_1724
	jmp	.label_1723
.label_1722:
	xor	eax, eax
.label_1723:
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x413300

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
	je	.label_1725
	nop	word ptr cs:[rax + rax]
.label_1728:
	cmp	rsi, r14
	jae	.label_1726
	cmp	qword ptr [rsi], r14
	jae	.label_1727
.label_1726:
	mov	rbx, qword ptr [rsi + 8]
	test	byte ptr [r15 + 0x50], 1
	jne	.label_1729
	mov	rdi, rsi
	call	qword ptr [r15 + 0x40]
	jmp	.label_1731
	nop	
.label_1729:
	mov	rdi, qword ptr [r15 + 0x48]
	call	qword ptr [r15 + 0x40]
.label_1731:
	or	byte ptr [r15 + 0x50], 2
	test	rbx, rbx
	mov	rsi, rbx
	jne	.label_1728
.label_1725:
	test	r14, r14
	je	.label_1730
	call	abort
.label_1727:
	mov	qword ptr [r15 + 0x18], r14
	mov	qword ptr [r15 + 0x10], r14
	mov	rax, qword ptr [rsi]
	mov	qword ptr [r15 + 0x20], rax
	mov	qword ptr [r15 + 8], rsi
.label_1730:
	pop	rbx
	pop	r14
	pop	r15
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x413380

	.globl _obstack_memory_used
	.type _obstack_memory_used, @function
_obstack_memory_used:
	mov	rcx, qword ptr [rdi + 8]
	xor	eax, eax
	test	rcx, rcx
	je	.label_1732
	xor	eax, eax
	nop	dword ptr [rax]
.label_1733:
	sub	rax, rcx
	add	rax, qword ptr [rcx]
	mov	rcx, qword ptr [rcx + 8]
	test	rcx, rcx
	jne	.label_1733
.label_1732:
	ret	
	.section	.text
	.align	32
	#Procedure 0x4133a0

	.globl print_and_abort
	.type print_and_abort, @function
print_and_abort:
	push	rbx
	mov	rbx, qword ptr [rip + stderr]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_1625
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	esi, 1
	mov	edx, OFFSET FLAT:label_156
	xor	eax, eax
	mov	rdi, rbx
	call	__fprintf_chk
	mov	edi, dword ptr [rip + exit_failure]
	call	exit
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4133e0

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
	jne	.label_1735
	test	eax, eax
	sete	cl
	neg	eax
	sbb	ebx, ebx
	test	r14, r14
	jne	.label_1734
	test	cl, cl
	jne	.label_1734
	call	__errno_location
	xor	ecx, ecx
	cmp	dword ptr [rax], 9
	mov	ebx, 0xffffffff
	cmove	ebx, ecx
	jmp	.label_1734
.label_1735:
	mov	ebx, 0xffffffff
	test	eax, eax
	jne	.label_1734
	call	__errno_location
	mov	dword ptr [rax], 0
.label_1734:
	mov	eax, ebx
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x413440

	.globl dtotimespec
	.type dtotimespec, @function
dtotimespec:
	movabs	rcx, 0x7fffffffffffffff
	xor	edx, edx
	ucomisd	xmm0, qword ptr [rip + label_1736]
	jbe	.label_1737
	mov	edx, 0x3b9ac9ff
	movsd	xmm1, qword ptr [rip + label_247]
	ucomisd	xmm1, xmm0
	jbe	.label_1738
	cvttsd2si	rsi, xmm0
	xorps	xmm1, xmm1
	cvtsi2sd	xmm1, rsi
	subsd	xmm0, xmm1
	mulsd	xmm0, qword ptr [rip + label_1739]
	cvttsd2si	rax, xmm0
	xorps	xmm1, xmm1
	cvtsi2sd	xmm1, rax
	xor	ecx, ecx
	ucomisd	xmm0, xmm1
	seta	cl
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
.label_1738:
	mov	rax, rcx
	ret	
.label_1737:
	inc	rcx
	mov	rax, rcx
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4134f0

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
	ja	.label_1740
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
	jmp	.label_1741
.label_1740:
	mov	eax, ebx
.label_1741:
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x413540

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
	.align	32
	#Procedure 0x413560

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
	je	.label_1742
	mov	rdi, rbx
	call	fileno
	cmp	eax, 2
	ja	.label_1746
	mov	edi, eax
	call	dup_safer
	mov	ebp, eax
	test	ebp, ebp
	js	.label_1743
	mov	rdi, rbx
	call	rpl_fclose
	test	eax, eax
	jne	.label_1744
	mov	edi, ebp
	mov	rsi, r14
	call	fdopen
	test	rax, rax
	jne	.label_1742
.label_1744:
	call	__errno_location
	mov	rbx, rax
	mov	r14d, dword ptr [rbx]
	mov	edi, ebp
	call	close
	mov	dword ptr [rbx], r14d
	jmp	.label_1745
.label_1746:
	mov	rax, rbx
	jmp	.label_1742
.label_1743:
	call	__errno_location
	mov	rbp, rax
	mov	r14d, dword ptr [rbp]
	mov	rdi, rbx
	call	rpl_fclose
	mov	dword ptr [rbp], r14d
.label_1745:
	xor	eax, eax
.label_1742:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4135f0

	.globl locale_charset
	.type locale_charset, @function
locale_charset:
	push	rax
	mov	edi, 0xe
	call	rpl_nl_langinfo
	test	rax, rax
	mov	ecx, OFFSET FLAT:label_78
	cmovne	rcx, rax
	cmp	byte ptr [rcx], 0
	mov	eax, OFFSET FLAT:label_1747
	cmovne	rax, rcx
	pop	rcx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x413620

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
	jne	.label_1748
	mov	rdi, r12
	mov	rsi, r14
	mov	rdx, rbp
	call	memcmp
	test	eax, eax
	je	.label_1752
.label_1748:
	mov	al, byte ptr [r12 + rbp]
	mov	byte ptr [rsp + 7], al
	mov	al, byte ptr [r14 + rbx]
	mov	byte ptr [rsp + 6], al
	mov	byte ptr [r12 + rbp], 0
	mov	byte ptr [r14 + rbx], 0
	mov	qword ptr [rsp + 0x10], rbp
	lea	r13, [rbp + 1]
	mov	qword ptr [rsp + 0x20], rbx
	lea	r15, [rbx + 1]
	call	__errno_location
	mov	rbx, rax
	mov	qword ptr [rsp + 0x18], r14
	mov	rbp, r14
	mov	qword ptr [rsp + 8], r12
	mov	r14, r12
	nop	dword ptr [rax]
.label_1750:
	mov	dword ptr [rbx], 0
	mov	rdi, r14
	mov	rsi, rbp
	call	strcoll
	test	eax, eax
	jne	.label_1749
	mov	rdi, r14
	call	strlen
	mov	r12, rax
	inc	r12
	mov	rdi, rbp
	call	strlen
	inc	rax
	sub	r15, rax
	sub	r13, r12
	je	.label_1751
	add	rbp, rax
	add	r14, r12
	mov	eax, 1
	test	r15, r15
	jne	.label_1750
	jmp	.label_1749
.label_1751:
	neg	r15
	sbb	eax, eax
.label_1749:
	mov	rcx, qword ptr [rsp + 0x10]
	mov	rdx, qword ptr [rsp + 8]
	mov	bl, byte ptr [rsp + 7]
	mov	byte ptr [rdx + rcx], bl
	mov	rcx, qword ptr [rsp + 0x20]
	mov	rdx, qword ptr [rsp + 0x18]
	mov	bl, byte ptr [rsp + 6]
	mov	byte ptr [rdx + rcx], bl
	jmp	.label_1753
.label_1752:
	call	__errno_location
	mov	dword ptr [rax], 0
	xor	eax, eax
.label_1753:
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
	#Procedure 0x413730

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
	jne	.label_1755
	mov	rdi, rbx
	mov	rsi, r12
	mov	rdx, r15
	call	memcmp
	test	eax, eax
	je	.label_1757
.label_1755:
	call	__errno_location
	mov	r13, rax
	nop	word ptr cs:[rax + rax]
.label_1754:
	mov	dword ptr [r13], 0
	mov	rdi, rbx
	mov	rsi, r12
	call	strcoll
	test	eax, eax
	jne	.label_1756
	mov	rdi, rbx
	call	strlen
	mov	rbp, rax
	inc	rbp
	mov	rdi, r12
	call	strlen
	inc	rax
	sub	r14, rax
	sub	r15, rbp
	je	.label_1758
	add	r12, rax
	add	rbx, rbp
	mov	eax, 1
	test	r14, r14
	jne	.label_1754
	jmp	.label_1756
.label_1758:
	neg	r14
	sbb	eax, eax
	jmp	.label_1756
.label_1757:
	call	__errno_location
	mov	dword ptr [rax], 0
	xor	eax, eax
.label_1756:
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	dword ptr [rax]
	.section .text
	.align	32
	#Procedure 0x4137e0

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
	nop	word ptr cs:[rax + rax]
