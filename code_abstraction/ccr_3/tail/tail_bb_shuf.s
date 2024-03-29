	.section	.text
	.align	32
	#Procedure 0x401bc9
	.globl sub_401bc9
	.type sub_401bc9, @function
sub_401bc9:

	hlt	
	.section	.text
	.align	32
	#Procedure 0x401bca
	.globl sub_401bca
	.type sub_401bca, @function
sub_401bca:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401c02
	.globl sub_401c02
	.type sub_401c02, @function
sub_401c02:

	nop	dword ptr [rax]
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401c4a
	.globl sub_401c4a
	.type sub_401c4a, @function
sub_401c4a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401c6c
	.globl sub_401c6c
	.type sub_401c6c, @function
sub_401c6c:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x401c7d
	.globl sub_401c7d
	.type sub_401c7d, @function
sub_401c7d:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x401c96
	.globl sub_401c96
	.type sub_401c96, @function
sub_401c96:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401ca0
	.globl hash_get_n_buckets_used
	.type hash_get_n_buckets_used, @function
hash_get_n_buckets_used:

	mov	rax, qword ptr [rdi + 0x18]
	ret	
	.section	.text
	.align	32
	#Procedure 0x401ca5
	.globl sub_401ca5
	.type sub_401ca5, @function
sub_401ca5:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401cb0

	.globl quotearg_colon
	.type quotearg_colon, @function
quotearg_colon:
	sub	rsp, 0x38
	mov	rax, rdi
	mov	rcx, qword ptr [rip + label_9]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0, xmmword ptr [rip + label_10]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_11]
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
	.align	32
	#Procedure 0x401d05
	.globl sub_401d05
	.type sub_401d05, @function
sub_401d05:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401d10

	.globl rpl_fflush
	.type rpl_fflush, @function
rpl_fflush:
	push	rbx
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_12
	mov	rdi, rbx
	call	__freading
	test	eax, eax
	je	.label_12
	test	byte ptr [rbx + 1], 1
	je	.label_12
	xor	esi, esi
	mov	edx, 1
	mov	rdi, rbx
	call	rpl_fseeko
.label_12:
	mov	rdi, rbx
	pop	rbx
	jmp	fflush
	.section	.text
	.align	32
	#Procedure 0x401d43
	.globl sub_401d43
	.type sub_401d43, @function
sub_401d43:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401d50

	.globl main
	.type main, @function
main:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x2178
	mov	r13, rsi
	mov	r14d, edi
	mov	qword ptr [rsp + 0x88], 0xa
	mov	rdi, qword ptr [r13]
	call	set_program_name
	mov	edi, 6
	mov	esi, OFFSET FLAT:label_26
	call	setlocale
	mov	edi, OFFSET FLAT:label_268
	mov	esi, OFFSET FLAT:label_269
	call	bindtextdomain
	mov	edi, OFFSET FLAT:label_268
	call	textdomain
	mov	edi, OFFSET FLAT:close_stdout
	call	atexit
	mov	byte ptr [rip + have_read_stdin],  0
	mov	byte ptr [rip + count_lines],  1
	mov	byte ptr [rip + print_headers],  0
	mov	byte ptr [rip + from_start],  0
	mov	byte ptr [rip + forever],  0
	mov	byte ptr [rip + line_end],  1
	cmp	r14d, 2
	je	.label_279
	cmp	r14d, 3
	jne	.label_286
	mov	rax, qword ptr [r13 + 0x10]
	cmp	byte ptr [rax], 0x2d
	jne	.label_279
	mov	cl, byte ptr [rax + 1]
	test	cl, cl
	jne	.label_196
	jmp	.label_279
.label_286:
	lea	eax, [r14 - 3]
	cmp	eax, 1
	ja	.label_289
	mov	rax, qword ptr [r13 + 0x10]
	cmp	byte ptr [rax], 0x2d
	jne	.label_213
	mov	cl, byte ptr [rax + 1]
.label_196:
	cmp	cl, 0x2d
	jne	.label_213
	cmp	byte ptr [rax + 2], 0
	je	.label_279
	xor	ebx, ebx
	jmp	.label_295
.label_279:
	call	posix2_version
	mov	rcx, qword ptr [r13 + 8]
	lea	rdi, [rcx + 1]
	movsx	edx, byte ptr [rcx]
	cmp	edx, 0x2d
	je	.label_296
	cmp	edx, 0x2b
	jne	.label_289
	add	eax, 0xfffcf250
	mov	bl, 1
	cmp	eax, 0x2b8
	ja	.label_302
	xor	ebx, ebx
	jmp	.label_295
.label_289:
	xor	ebx, ebx
	jmp	.label_295
.label_296:
	cmp	eax, 0x30db0
	jge	.label_308
	xor	ebx, ebx
	jmp	.label_302
.label_213:
	xor	ebx, ebx
	jmp	.label_295
.label_308:
	xor	eax, eax
	cmp	byte ptr [rdi], 0x63
	sete	al
	xor	ebx, ebx
	cmp	byte ptr [rdi + rax], 0
	je	.label_295
.label_302:
	xor	eax, eax
	nop	dword ptr [rax + rax]
.label_337:
	movzx	edx, byte ptr [rcx + rax + 1]
	movsx	esi, dl
	lea	ebp, [rsi - 0x30]
	inc	rax
	cmp	ebp, 0xa
	jb	.label_337
	mov	r15b, 1
	mov	r8d, 0xa
	cmp	esi, 0x6c
	je	.label_351
	cmp	esi, 0x63
	je	.label_321
	cmp	esi, 0x62
	jne	.label_323
	mov	r8d, 0x1400
.label_321:
	xor	r15d, r15d
.label_351:
	lea	rsi, [rcx + rax + 1]
	mov	dl, byte ptr [rcx + rax + 1]
	jmp	.label_324
.label_323:
	add	rcx, rax
	mov	rsi, rcx
.label_324:
	lea	rcx, [rsi + 1]
	cmp	dl, 0x66
	sete	r12b
	cmovne	rcx, rsi
	cmp	byte ptr [rcx], 0
	je	.label_45
	xor	ebx, ebx
	jmp	.label_295
.label_45:
	cmp	rax, 1
	jne	.label_329
	mov	qword ptr [rsp + 0x88], r8
	jmp	.label_331
.label_329:
	lea	rcx, [rsp + 0x88]
	xor	esi, esi
	mov	edx, 0xa
	mov	r8d, OFFSET FLAT:label_332
	call	xstrtoumax
	test	eax, 0xfffffffd
	jne	.label_340
.label_331:
	mov	byte ptr [rip + from_start],  bl
	mov	byte ptr [rip + count_lines],  r15b
	mov	byte ptr [rip + forever],  r12b
	mov	bl, 1
.label_295:
	movzx	eax, bl
	sub	r14d, eax
	lea	r15, [r13 + rax*8]
	movsd	xmm0, qword ptr [rip + label_158]
	movsd	qword ptr [rsp + 0x98], xmm0
	xor	eax, eax
	lea	r13, [rsp + 0x170]
	jmp	.label_17
.label_346:
	mov	byte ptr [rip + reopen_inaccessible_files],  1
	mov	eax, r12d
	jmp	.label_17
.label_1137:
	mov	byte ptr [rip + forever],  1
	mov	dword ptr [rip + follow_mode],  1
	jmp	.label_346
	.section	.text
	.align	32
	#Procedure 0x401f6f
	.globl sub_401f6f
	.type sub_401f6f, @function
sub_401f6f:

	nop	
.label_17:
	mov	r12d, eax
	mov	edx, OFFSET FLAT:label_350
	mov	ecx, OFFSET FLAT:long_options
	xor	r8d, r8d
	mov	edi, r14d
	mov	rsi, r15
	call	getopt_long
	mov	ebx, eax
	lea	ecx, [rbx + 0x83]
	cmp	ecx, 0x108
	ja	.label_354
	mov	eax, 2
	jmp	qword ptr [(rcx * 8) + label_355]
.label_1138:
	cmp	ebx, 0x6e
	sete	byte ptr [rip + count_lines]
	mov	rbp, qword ptr [rip + optarg]
	movzx	eax, byte ptr [rbp]
	cmp	al, 0x2d
	je	.label_356
	cmp	al, 0x2b
	jne	.label_135
	mov	byte ptr [rip + from_start],  1
	jmp	.label_135
.label_1139:
	mov	byte ptr [rip + forever],  1
	mov	rsi, qword ptr [rip + optarg]
	test	rsi, rsi
	je	.label_342
	mov	r9, qword ptr [rip + argmatch_die]
	mov	edi, OFFSET FLAT:label_361
	mov	edx, OFFSET FLAT:follow_mode_string
	mov	ecx, OFFSET FLAT:follow_mode_map
	mov	r8d, 4
	call	__xargmatch_internal
	mov	eax, dword ptr [(rax * 4) + follow_mode_map]
	mov	dword ptr [rip + follow_mode],  eax
	mov	eax, r12d
	jmp	.label_17
.label_1143:
	mov	rbx, qword ptr [rip + optarg]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_21
	mov	edx, 5
	call	dcgettext
	xor	esi, esi
	mov	rdx, -1
	mov	ecx, OFFSET FLAT:label_26
	xor	r9d, r9d
	mov	rdi, rbx
	mov	r8, rax
	call	xdectoumax
	mov	qword ptr [rip + max_n_unchanged_stats_between_opens],  rax
	mov	eax, r12d
	jmp	.label_17
.label_1145:
	mov	byte ptr [rip + presume_input_pipe],  1
	mov	eax, r12d
	jmp	.label_17
.label_1140:
	mov	rdi, qword ptr [rip + optarg]
	xor	esi, esi
	mov	ecx, OFFSET FLAT:cl_strtod
	mov	rdx, r13
	call	xstrtod
	test	al, al
	je	.label_40
	movsd	xmm0, qword ptr [rsp + 0x170]
	movsd	qword ptr [rsp + 0x98], xmm0
	ucomisd	xmm0, qword ptr [label_42]
	jb	.label_40
	mov	eax, r12d
	jmp	.label_17
.label_1142:
	mov	byte ptr [rip + line_end],  0
	mov	eax, r12d
	jmp	.label_17
.label_1141:
	mov	eax, 1
	jmp	.label_17
.label_1144:
	mov	rbx, qword ptr [rip + optarg]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_56
	mov	edx, 5
	call	dcgettext
	xor	esi, esi
	mov	edx, 0x7fffffff
	mov	ecx, OFFSET FLAT:label_26
	xor	r9d, r9d
	mov	rdi, rbx
	mov	r8, rax
	call	xdectoumax
	mov	dword ptr [rip + pid],  eax
	mov	eax, r12d
	jmp	.label_17
.label_1146:
	mov	byte ptr [rip + disable_inotify],  1
	mov	eax, r12d
	jmp	.label_17
.label_342:
	mov	dword ptr [rip + follow_mode],  2
	mov	eax, r12d
	jmp	.label_17
.label_356:
	inc	rbp
	mov	qword ptr [rip + optarg],  rbp
.label_135:
	xor	edi, edi
	cmp	ebx, 0x6e
	jne	.label_75
	mov	esi, OFFSET FLAT:label_77
	jmp	.label_78
.label_75:
	mov	esi, OFFSET FLAT:label_80
.label_78:
	mov	edx, 5
	call	dcgettext
	xor	esi, esi
	mov	rdx, -1
	mov	ecx, OFFSET FLAT:label_84
	xor	r9d, r9d
	mov	rdi, rbp
	mov	r8, rax
	call	xdectoumax
	mov	qword ptr [rsp + 0x88], rax
	mov	eax, r12d
	jmp	.label_17
.label_1135:
	cmp	byte ptr [rip + reopen_inaccessible_files],  1
	jne	.label_95
	cmp	byte ptr [rip + forever],  0
	je	.label_100
	cmp	dword ptr [rip + follow_mode],  2
	jne	.label_95
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_103
	jmp	.label_104
.label_100:
	mov	byte ptr [rip + reopen_inaccessible_files],  0
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_214
.label_104:
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	call	error
.label_95:
	mov	edi, dword ptr [rip + pid]
	test	edi, edi
	je	.label_113
	mov	al, byte ptr [rip + forever]
	test	al, al
	jne	.label_113
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_118
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	call	error
	jmp	.label_123
.label_113:
	test	edi, edi
	je	.label_123
	xor	esi, esi
	call	kill
	test	eax, eax
	je	.label_123
	call	__errno_location
	cmp	dword ptr [rax], 0x26
	jne	.label_123
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_125
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	call	error
	mov	dword ptr [rip + pid],  0
.label_123:
	mov	r8b, byte ptr [rip + from_start]
	mov	r9, qword ptr [rsp + 0x88]
	test	r8b, r8b
	je	.label_114
	test	r9, r9
	je	.label_114
	dec	r9
	mov	qword ptr [rsp + 0x88], r9
.label_114:
	movsxd	rax, dword ptr [rip + optind]
	mov	r13d, OFFSET FLAT:main.dummy_stdin
	mov	ecx, 1
	cmp	r14d, eax
	jle	.label_136
	sub	r14d, eax
	lea	r13, [r15 + rax*8]
	je	.label_142
	movsxd	rcx, r14d
.label_136:
	mov	r10d, ecx
	and	r10d, 1
	xor	esi, esi
	cmp	rcx, 1
	mov	qword ptr [rsp + 0x28], rcx
	jne	.label_102
	xor	ecx, ecx
	jmp	.label_150
.label_102:
	mov	rbp, rcx
	sub	rbp, r10
	xor	esi, esi
	xor	edi, edi
	nop	word ptr cs:[rax + rax]
.label_165:
	mov	rax, qword ptr [r13 + rsi*8]
	movzx	edx, byte ptr [rax]
	mov	ecx, 0x2d
	sub	ecx, edx
	jne	.label_58
	movzx	ecx, byte ptr [rax + 1]
	neg	ecx
.label_58:
	mov	rdx, qword ptr [r13 + rsi*8 + 8]
	movzx	ebx, byte ptr [rdx]
	mov	eax, 0x2d
	sub	eax, ebx
	jne	.label_88
	movzx	eax, byte ptr [rdx + 1]
	neg	eax
.label_88:
	test	ecx, ecx
	mov	cl, 1
	mov	dl, 1
	je	.label_161
	mov	edx, edi
.label_161:
	test	eax, eax
	je	.label_163
	mov	cl, dl
.label_163:
	add	rsi, 2
	cmp	rbp, rsi
	mov	dil, cl
	jne	.label_165
.label_150:
	test	r10, r10
	je	.label_298
	mov	rdx, qword ptr [r13 + rsi*8]
	movzx	esi, byte ptr [rdx]
	mov	eax, 0x2d
	sub	eax, esi
	jne	.label_168
	movzx	eax, byte ptr [rdx + 1]
	neg	eax
.label_168:
	test	eax, eax
	mov	al, 1
	je	.label_177
	mov	eax, ecx
.label_177:
	mov	cl, al
.label_298:
	and	cl, 1
	mov	esi, dword ptr [rip + follow_mode]
	je	.label_175
	cmp	esi, 1
	je	.label_184
.label_175:
	mov	dl, byte ptr [rip + forever]
	test	cl, cl
	sete	al
	mov	dword ptr [rsp + 0x80], 0
	test	dl, dl
	je	.label_191
	test	al, al
	jne	.label_191
	cmp	qword ptr [rsp + 0x28], 1
	jne	.label_193
	mov	eax, dword ptr [rip + pid]
	test	eax, eax
	jne	.label_193
	cmp	esi, 2
	jne	.label_193
	lea	rdx, [rsp + 0x170]
	mov	edi, 1
	xor	esi, esi
	call	__fxstat
	test	eax, eax
	jne	.label_193
	mov	eax, 0xf000
	and	eax, dword ptr [rsp + 0x188]
	cmp	eax, 0x8000
	jne	.label_199
.label_193:
	xor	edi, edi
	call	isatty
	test	eax, eax
	je	.label_199
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_206
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	call	error
.label_199:
	mov	r9, qword ptr [rsp + 0x88]
	mov	dl, byte ptr [rip + forever]
	mov	dword ptr [rsp + 0x80], 0
	mov	r8b, byte ptr [rip + from_start]
	jmp	.label_191
.label_142:
	mov	al, 1
	mov	dword ptr [rsp + 0x80], eax
	mov	dl, byte ptr [rip + forever]
	xor	eax, eax
	mov	qword ptr [rsp + 0x28], rax
.label_191:
	test	r9, r9
	jne	.label_219
	xor	eax, eax
	or	r8b, dl
	je	.label_93
.label_219:
	movabs	rax, 0x155555555555556
	mov	rcx, qword ptr [rsp + 0x28]
	cmp	rcx, rax
	jae	.label_221
	mov	rax, rcx
	shl	rax, 5
	lea	rdi, [rax + rax*2]
	call	xmalloc
	mov	r14, rax
	mov	qword ptr [rsp + 0x38], r14
	mov	eax, dword ptr [rsp + 0x80]
	test	al, al
	jne	.label_227
	mov	rax, qword ptr [rsp + 0x28]
	lea	rdx, [rax - 1]
	and	eax, 3
	xor	ecx, ecx
	cmp	rdx, 3
	jb	.label_228
	mov	rdx, qword ptr [rsp + 0x28]
	sub	rdx, rax
	xor	ecx, ecx
	mov	rsi, qword ptr [rsp + 0x38]
	nop	word ptr cs:[rax + rax]
.label_236:
	mov	rdi, qword ptr [r13 + rcx*8]
	mov	qword ptr [rsi], rdi
	mov	rdi, qword ptr [r13 + rcx*8 + 8]
	mov	qword ptr [rsi + 0x60], rdi
	mov	rdi, qword ptr [r13 + rcx*8 + 0x10]
	mov	qword ptr [rsi + 0xc0], rdi
	mov	rdi, qword ptr [r13 + rcx*8 + 0x18]
	mov	qword ptr [rsi + 0x120], rdi
	add	rcx, 4
	add	rsi, 0x180
	cmp	rdx, rcx
	jne	.label_236
.label_228:
	test	rax, rax
	je	.label_227
	lea	rdx, [rcx + rcx*2]
	shl	rdx, 5
	add	rdx, r14
	lea	rcx, [r13 + rcx*8]
	neg	rax
	nop	word ptr cs:[rax + rax]
.label_246:
	mov	rsi, qword ptr [rcx]
	mov	qword ptr [rdx], rsi
	add	rdx, 0x60
	add	rcx, 8
	inc	rax
	jne	.label_246
.label_227:
	cmp	r12d, 1
	je	.label_250
	test	r12d, r12d
	jne	.label_251
	cmp	qword ptr [rsp + 0x28], 2
	jb	.label_251
.label_250:
	mov	byte ptr [rip + print_headers],  1
.label_251:
	mov	al, 1
	mov	ecx, dword ptr [rsp + 0x80]
	test	cl, cl
	mov	r12, qword ptr [rsp + 0x28]
	mov	qword ptr [rsp + 0x20], r14
	mov	r13, qword ptr [rsp + 0x38]
	jne	.label_253
	mov	al, 1
	xor	r15d, r15d
	mov	qword ptr [rsp + 0x28], r12
	jmp	.label_258
.label_209:
	test	rbx, rbx
	mov	r15d, 0
	je	.label_260
	xor	r15d, r15d
	nop	
.label_275:
	mov	edx, 0x2000
	mov	edi, ebp
	lea	rsi, [rsp + 0x170]
	call	safe_read
	mov	r14b, 1
	test	rax, rax
	je	.label_266
	cmp	rax, -1
	je	.label_270
	add	r15, rax
	mov	rcx, rbx
	sub	rcx, rax
	jb	.label_101
	mov	rbx, rcx
	jne	.label_275
	jmp	.label_260
.label_205:
	mov	r14, -1
	test	al, al
	je	.label_277
	movzx	eax, word ptr [rsp + 0xf8]
	or	eax, 0x2000
	and	eax, 0xf000
	cmp	eax, 0xa000
	jne	.label_280
	mov	rbp, qword ptr [rsp + 0x110]
	jmp	.label_167
.label_277:
	mov	rbp, -1
	jmp	.label_167
.label_101:
	sub	rax, rbx
	je	.label_260
	lea	rdi, [rsp + rbx + 0x170]
	mov	rsi, rax
	call	xwrite_stdout
.label_260:
	mov	rbx, -1
	mov	r14, r15
	jmp	.label_225
.label_280:
	mov	rsi, rbx
	neg	rsi
	mov	edx, 2
	mov	edi, ebp
	call	lseek
	mov	rbx, qword ptr [rsp + 0x18]
	mov	r14, rax
	lea	rbp, [r14 + rbx]
	cmp	r14, -1
	cmove	rbp, r14
.label_167:
	mov	rax, qword ptr [rsp + 0x118]
	movabs	rcx, 0x2000000000000001
	cmp	rax, rcx
	mov	ecx, 0x200
	cmovb	rcx, rax
	test	rax, rax
	mov	eax, 0x200
	cmovle	rcx, rax
	cmp	rbp, rcx
	jle	.label_299
	cmp	r14, -1
	jne	.label_312
	xor	esi, esi
	mov	edx, 1
	mov	rdi, qword ptr [rsp + 8]
	mov	rcx, qword ptr [rsp + 0x40]
	call	xlseek
	mov	rbx, qword ptr [rsp + 0x18]
	mov	r14, rax
.label_312:
	mov	rax, rbp
	sub	rax, r14
	jle	.label_315
	cmp	rax, rbx
	jbe	.label_315
	sub	rbp, rbx
	xor	edx, edx
	mov	r15, qword ptr [rsp + 8]
	mov	edi, r15d
	mov	rsi, rbp
	mov	rcx, qword ptr [rsp + 0x40]
	call	xlseek
	mov	rbx, qword ptr [rsp + 0x18]
	mov	r14, rbp
	mov	rbp, r15
	jmp	.label_225
.label_299:
	mov	edi, 0x2010
	call	xmalloc
	mov	r15, rax
	xorpd	xmm0, xmm0
	movupd	xmmword ptr [r15 + 0x2000], xmm0
	mov	edi, 0x2010
	call	xmalloc
	xor	r13d, r13d
	xor	ecx, ecx
	mov	r14, r15
	jmp	.label_328
.label_315:
	mov	rbp, qword ptr [rsp + 8]
.label_225:
	xor	edi, edi
	mov	rsi, qword ptr [rsp + 0x40]
	mov	edx, ebp
	mov	rcx, rbx
	call	dump_remainder
	mov	r15, rax
	add	r15, r14
	mov	bpl, 1
	jmp	.label_336
.label_263:
	xor	edx, edx
	mov	edi, ebp
	mov	rcx, qword ptr [rsp + 0x40]
	call	xlseek
.label_249:
	mov	edi, 0x2018
	call	xmalloc
	mov	rbx, rax
	xorpd	xmm0, xmm0
	movupd	xmmword ptr [rbx + 0x2000], xmm0
	mov	qword ptr [rbx + 0x2010], 0
	mov	edi, 0x2018
	call	xmalloc
	xor	ecx, ecx
	mov	qword ptr [rsp + 0x68], rcx
	xor	ecx, ecx
	mov	qword ptr [rsp + 0x78], rbx
	jmp	.label_344
.label_270:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	r14d, r14d
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_106
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	mov	edi, 4
	mov	rsi, qword ptr [rsp + 0x40]
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, rbp
	call	error
.label_266:
	mov	rbp, r14
	jmp	.label_336
.label_230:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_106
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	mov	edi, 4
	mov	rsi, qword ptr [rsp + 0x40]
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, rbp
	xor	ebp, ebp
	call	error
	jmp	.label_160
.label_46:
	xor	r15d, r15d
	mov	bpl, 1
	jmp	.label_160
.label_74:
	mov	rax, rdx
	mov	rdx, qword ptr [rdx + 0x2010]
	mov	qword ptr [rsp + 0x78], rdx
	nop	word ptr [rax + rax]
.label_344:
	mov	qword ptr [rsp + 0x48], rcx
	jmp	.label_14
	.section	.text
	.align	32
	#Procedure 0x402807
	.globl sub_402807
	.type sub_402807, @function
sub_402807:

	nop	word ptr [rax + rax]
.label_67:
	mov	edi, 0x2018
	call	xmalloc
.label_14:
	mov	qword ptr [rsp + 0x50], rbx
	mov	rbx, rax
	lea	r14, [rbx + 0x2008]
	jmp	.label_18
	.section	.text
	.align	32
	#Procedure 0x40282b
	.globl sub_40282b
	.type sub_40282b, @function
sub_40282b:

	nop	dword ptr [rax + rax]
.label_61:
	add	rdi, rbp
	mov	rsi, rbx
	mov	rdx, r15
	call	memcpy
	movdqu	xmm0, xmmword ptr [rbx + 0x2000]
	movdqu	xmm1, xmmword ptr [rbp + 0x2000]
	paddq	xmm1, xmm0
	movdqu	xmmword ptr [rbp + 0x2000], xmm1
	mov	rbp, qword ptr [rsp + 8]
.label_18:
	mov	edx, 0x2000
	mov	edi, ebp
	mov	rsi, rbx
	call	safe_read
	mov	r15, rax
	lea	rax, [r15 + 1]
	cmp	rax, 2
	jb	.label_34
	mov	qword ptr [rbx + 0x2000], r15
	xorpd	xmm0, xmm0
	movupd	xmmword ptr [r14], xmm0
	mov	al, byte ptr [rip + line_end]
	test	al, al
	mov	r13d, 0
	mov	eax, 0xa
	cmovne	r13d, eax
	mov	rdi, rbx
	mov	esi, r13d
	mov	rdx, r15
	call	memchr
	test	rax, rax
	mov	r12d, 0
	je	.label_50
	lea	rbp, [rbx + r15]
	xor	r12d, r12d
	nop	word ptr cs:[rax + rax]
.label_60:
	inc	rax
	inc	r12
	mov	qword ptr [r14], r12
	mov	rdx, rbp
	sub	rdx, rax
	mov	rdi, rax
	mov	esi, r13d
	call	memchr
	test	rax, rax
	jne	.label_60
.label_50:
	add	qword ptr [rsp + 0x68], r15
	mov	rsi, qword ptr [rsp + 0x48]
	add	rsi, r12
	mov	rbp, qword ptr [rsp + 0x50]
	mov	rdi, qword ptr [rbp + 0x2000]
	mov	rax, r15
	add	rax, rdi
	cmp	rax, 0x1fff
	mov	qword ptr [rsp + 0x48], rsi
	jbe	.label_61
	mov	qword ptr [rbp + 0x2010], rbx
	mov	rcx, rsi
	mov	rdx, qword ptr [rsp + 0x78]
	sub	rcx, qword ptr [rdx + 0x2008]
	cmp	rcx, qword ptr [rsp + 0x18]
	mov	rbp, qword ptr [rsp + 8]
	jbe	.label_67
	jmp	.label_74
.label_34:
	mov	rdi, rbx
	call	free
	cmp	r15, -1
	je	.label_79
	mov	rdx, qword ptr [rsp + 0x18]
	test	rdx, rdx
	mov	r13b, 1
	mov	r12, qword ptr [rsp + 0x28]
	mov	r14, qword ptr [rsp + 0x20]
	mov	r15, qword ptr [rsp + 0x68]
	je	.label_81
	mov	rsi, qword ptr [rsp + 0x50]
	mov	rax, qword ptr [rsi + 0x2000]
	test	rax, rax
	mov	rdi, qword ptr [rsp + 0x78]
	je	.label_91
	movsx	eax, byte ptr [rsi + rax - 1]
	mov	cl, byte ptr [rip + line_end]
	test	cl, cl
	mov	r15d, 0
	mov	ecx, 0xa
	cmovne	r15d, ecx
	cmp	eax, r15d
	jne	.label_98
	mov	rcx, qword ptr [rsp + 0x48]
	jmp	.label_105
.label_79:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	r13d, r13d
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_106
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	mov	edi, 4
	mov	rsi, qword ptr [rsp + 0x40]
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, rbp
	call	error
	mov	r12, qword ptr [rsp + 0x28]
	jmp	.label_120
.label_98:
	inc	qword ptr [rsi + 0x2008]
	mov	rcx, qword ptr [rsp + 0x48]
	inc	rcx
.label_105:
	mov	rax, rcx
	sub	rax, qword ptr [rdi + 0x2008]
	cmp	rax, rdx
	mov	rbx, rdi
	jbe	.label_122
	mov	rbx, rdi
	nop	word ptr cs:[rax + rax]
.label_126:
	mov	rcx, rax
	mov	rbx, qword ptr [rbx + 0x2010]
	sub	rax, qword ptr [rbx + 0x2008]
	cmp	rax, rdx
	ja	.label_126
.label_122:
	mov	r14, qword ptr [rbx + 0x2000]
	add	r14, rbx
	cmp	rcx, rdx
	mov	rax, rbx
	jbe	.label_132
	mov	rax, rbx
	je	.label_132
	sub	rdx, rcx
	mov	rax, rbx
	nop	word ptr cs:[rax + rax]
.label_139:
	mov	rbp, rdx
	mov	rdx, r14
	sub	rdx, rax
	mov	rdi, rax
	mov	esi, r15d
	call	memchr
	test	rax, rax
	je	.label_137
	inc	rax
	mov	rdx, rbp
	inc	rdx
	jne	.label_139
.label_132:
	sub	r14, rax
	mov	rdi, rax
	mov	rsi, r14
	jmp	.label_144
	.section	.text
	.align	32
	#Procedure 0x402aa3
	.globl sub_402aa3
	.type sub_402aa3, @function
sub_402aa3:

	nop	word ptr cs:[rax + rax]
.label_151:
	mov	rsi, qword ptr [rbx + 0x2000]
	mov	rdi, rbx
.label_144:
	call	xwrite_stdout
	mov	rbx, qword ptr [rbx + 0x2010]
	test	rbx, rbx
	jne	.label_151
.label_120:
	mov	r14, qword ptr [rsp + 0x20]
	mov	r15, qword ptr [rsp + 0x68]
.label_81:
	mov	rdi, qword ptr [rsp + 0x78]
.label_91:
	test	rdi, rdi
	je	.label_154
	nop	
.label_157:
	mov	rbx, qword ptr [rdi + 0x2010]
	call	free
	test	rbx, rbx
	mov	rdi, rbx
	jne	.label_157
.label_154:
	test	r13b, r13b
	setne	bpl
	mov	r13, qword ptr [rsp + 0x38]
	jmp	.label_160
.label_265:
	mov	r15, rax
	jmp	.label_162
.label_284:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_106
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	mov	edi, 4
	mov	rsi, qword ptr [rsp + 0x40]
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, rbp
	call	error
	mov	r15, qword ptr [rsp + 0x90]
	jmp	.label_200
.label_207:
	mov	rax, r14
	mov	r14, qword ptr [r14 + 0x2008]
.label_328:
	mov	rdi, qword ptr [rsp + 8]
	mov	r12, r15
	mov	r15, rax
	mov	rbx, rcx
	jmp	.label_188
	.section	.text
	.align	32
	#Procedure 0x402b6f
	.globl sub_402b6f
	.type sub_402b6f, @function
sub_402b6f:

	nop	
.label_293:
	add	rdi, r12
	mov	rsi, r15
	mov	rdx, rbp
	call	memcpy
	mov	rax, qword ptr [r15 + 0x2000]
	add	qword ptr [r12 + 0x2000], rax
	mov	rdi, qword ptr [rsp + 8]
.label_188:
	mov	edx, 0x2000
	mov	rsi, r15
	call	safe_read
	mov	rbp, rax
	lea	rax, [rbp + 1]
	cmp	rax, 2
	jb	.label_197
	add	r13, rbp
	mov	qword ptr [r15 + 0x2000], rbp
	mov	qword ptr [r15 + 0x2008], 0
	add	rbx, rbp
	mov	rdi, qword ptr [r12 + 0x2000]
	mov	rax, rbp
	add	rax, rdi
	cmp	rax, 0x1fff
	jbe	.label_293
	mov	qword ptr [r12 + 0x2008], r15
	mov	rcx, rbx
	sub	rcx, qword ptr [r14 + 0x2000]
	cmp	rcx, qword ptr [rsp + 0x18]
	ja	.label_207
	mov	edi, 0x2010
	call	xmalloc
	mov	r12, r15
	mov	r15, rax
	mov	rdi, qword ptr [rsp + 8]
	jmp	.label_188
.label_197:
	mov	rdi, r15
	call	free
	cmp	rbp, -1
	je	.label_215
	mov	rsi, qword ptr [r14 + 0x2000]
	mov	rax, rbx
	sub	rax, rsi
	mov	rcx, qword ptr [rsp + 0x18]
	cmp	rax, rcx
	mov	rbp, r14
	mov	r12, qword ptr [rsp + 0x28]
	jbe	.label_218
	nop	
.label_224:
	mov	rbx, rax
	mov	rbp, qword ptr [rbp + 0x2008]
	mov	rsi, qword ptr [rbp + 0x2000]
	sub	rax, rsi
	cmp	rax, rcx
	ja	.label_224
.label_218:
	sub	rbx, rcx
	mov	eax, 0
	cmovbe	rbx, rax
	lea	rdi, [rbp + rbx]
	sub	rsi, rbx
	call	xwrite_stdout
	mov	rbx, qword ptr [rbp + 0x2008]
	mov	bpl, 1
	test	rbx, rbx
	mov	r15, r13
	je	.label_229
	nop	word ptr cs:[rax + rax]
.label_235:
	mov	rsi, qword ptr [rbx + 0x2000]
	mov	rdi, rbx
	call	xwrite_stdout
	mov	rbx, qword ptr [rbx + 0x2008]
	test	rbx, rbx
	jne	.label_235
	jmp	.label_229
.label_215:
	call	__errno_location
	mov	r15d, dword ptr [rax]
	xor	ebp, ebp
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_106
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	edi, 4
	mov	rsi, qword ptr [rsp + 0x40]
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, r15d
	mov	rdx, rbx
	call	error
	mov	r12, qword ptr [rsp + 0x28]
	mov	r15, r13
.label_229:
	mov	r13, qword ptr [rsp + 0x38]
	test	r14, r14
	je	.label_245
	nop	
.label_311:
	mov	rbx, qword ptr [r14 + 0x2008]
	mov	rdi, r14
	call	free
	test	rbx, rbx
	mov	r14, rbx
	jne	.label_311
.label_245:
	test	bpl, bpl
	setne	bpl
.label_336:
	mov	r14, qword ptr [rsp + 0x20]
	jmp	.label_160
.label_190:
	xor	eax, eax
	mov	rbx, qword ptr [rsp + 0x18]
.label_287:
	mov	r14, qword ptr [rsp + 0x50]
	add	r15, r14
.label_310:
	lea	rcx, [rax - 1]
	mov	qword ptr [rsp + 0x18], rcx
	mov	rcx, qword ptr [rsp + 0x90]
	sub	rcx, rax
	mov	qword ptr [rsp + 0x50], r14
	sub	rcx, r14
	mov	qword ptr [rsp + 0x48], rcx
	mov	qword ptr [rsp + 0x78], rax
	mov	r14, rax
.label_288:
	test	r14, r14
	je	.label_262
	movzx	eax, byte ptr [rip + line_end]
	test	al, al
	mov	esi, 0
	mov	eax, 0xa
	cmovne	esi, eax
	lea	rbp, [rsp + 0x170]
	mov	rdi, rbp
	mov	rdx, r14
	call	memrchr
	mov	ecx, 5
	test	rax, rax
	je	.label_271
	mov	r14, rax
	sub	r14, rbp
	xor	ecx, ecx
	test	rbx, rbx
	lea	rbx, [rbx - 1]
	je	.label_272
.label_271:
	mov	rbp, qword ptr [rsp + 8]
	jmp	.label_278
	.section	.text
	.align	32
	#Procedure 0x402db4
	.globl sub_402db4
	.type sub_402db4, @function
sub_402db4:

	nop	word ptr cs:[rax + rax]
.label_272:
	mov	rsi, qword ptr [rsp + 0x18]
	sub	rsi, r14
	mov	rbp, qword ptr [rsp + 8]
	je	.label_282
	inc	rax
	mov	rdi, rax
	call	xwrite_stdout
.label_282:
	xor	edi, edi
	mov	rsi, qword ptr [rsp + 0x40]
	mov	edx, ebp
	mov	rcx, qword ptr [rsp + 0x48]
	call	dump_remainder
	add	r15, rax
	mov	ecx, 1
.label_278:
	mov	eax, ecx
	and	al, 7
	je	.label_288
	cmp	al, 5
	jne	.label_291
.label_262:
	mov	r14, qword ptr [rsp + 0x50]
	mov	rsi, qword ptr [rsp + 0x68]
	cmp	r14, rsi
	je	.label_292
	add	r14, -0x2000
	xor	edx, edx
	mov	edi, ebp
	mov	rsi, r14
	mov	rcx, qword ptr [rsp + 0x40]
	call	xlseek
	mov	edx, 0x2000
	mov	edi, ebp
	lea	rsi, [rsp + 0x170]
	call	safe_read
	cmp	rax, -1
	je	.label_303
	mov	r15, rax
	add	r15, r14
	jmp	.label_305
.label_291:
	test	ecx, ecx
	mov	r14, qword ptr [rsp + 0x50]
	mov	rax, qword ptr [rsp + 0x78]
	jne	.label_162
.label_305:
	test	rax, rax
	jne	.label_310
	jmp	.label_162
.label_292:
	xor	edx, edx
	mov	edi, ebp
	mov	rbx, qword ptr [rsp + 0x40]
	mov	r14, rsi
	mov	rcx, rbx
	call	xlseek
	xor	edi, edi
	mov	rsi, rbx
	mov	edx, ebp
	mov	rcx, qword ptr [rsp + 0x90]
	call	dump_remainder
	mov	r15, rax
	add	r15, r14
.label_162:
	mov	r14, qword ptr [rsp + 0x20]
	mov	bpl, 1
	jmp	.label_160
.label_303:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_106
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	mov	edi, 4
	mov	rsi, qword ptr [rsp + 0x40]
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, rbp
	call	error
	mov	r14, qword ptr [rsp + 0x20]
	jmp	.label_200
	.section	.text
	.align	32
	#Procedure 0x402ee5
	.globl sub_402ee5
	.type sub_402ee5, @function
sub_402ee5:

	nop	word ptr cs:[rax + rax]
.label_258:
	mov	byte ptr [rsp + 0x17], al
	mov	rax, qword ptr [rsp + 0x88]
	mov	qword ptr [rsp + 0x18], rax
	lea	rax, [r15 + r15*2]
	shl	rax, 5
	mov	qword ptr [rsp + 0x60], rax
	mov	rdi, qword ptr [r13 + rax]
	cmp	byte ptr [rdi], 0x2d
	jne	.label_334
	cmp	byte ptr [rdi + 1], 0
	je	.label_141
.label_334:
	mov	dword ptr [rsp + 0x74], 0
	xor	esi, esi
	xor	eax, eax
	call	open_safer
	mov	ebp, eax
.label_317:
	mov	rcx, qword ptr [rsp + 0x60]
	lea	rax, [r14 + rcx]
	mov	qword ptr [rsp + 0x30], rax
	mov	bl, byte ptr [rip + reopen_inaccessible_files]
	cmp	ebp, -1
	sete	al
	and	al, bl
	xor	al, 1
	cmp	ebp, -1
	mov	byte ptr [r13 + rcx + 0x36], al
	mov	qword ptr [rsp + 0x58], r15
	je	.label_343
	cmp	byte ptr [rip + print_headers],  1
	jne	.label_348
	mov	rax, qword ptr [rsp + 0x30]
	mov	rcx, qword ptr [rax]
	cmp	byte ptr [rcx], 0x2d
	jne	.label_234
	cmp	byte ptr [rcx + 1], 0
	jne	.label_234
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_119
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	nop	word ptr cs:[rax + rax]
.label_234:
	mov	al, byte ptr [rip + write_header.first_file]
	test	al, al
	mov	edx, OFFSET FLAT:label_26
	mov	eax, OFFSET FLAT:label_210
	cmovne	rdx, rax
	mov	edi, 1
	mov	esi, OFFSET FLAT:label_211
	xor	eax, eax
	call	__printf_chk
	mov	byte ptr [rip + write_header.first_file],  1
.label_348:
	mov	rax, qword ptr [rsp + 0x30]
	mov	rax, qword ptr [rax]
	cmp	byte ptr [rax], 0x2d
	jne	.label_171
	cmp	byte ptr [rax + 1], 0
	jne	.label_171
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_119
	mov	edx, 5
	call	dcgettext
	nop	word ptr cs:[rax + rax]
.label_171:
	mov	qword ptr [rsp + 0x40], rax
	cmp	byte ptr [rip + count_lines],  0
	mov	qword ptr [rsp + 8], rbp
	mov	edi, 1
	mov	esi, ebp
	lea	rdx, [rsp + 0xe0]
	je	.label_13
	call	__fxstat
	test	eax, eax
	jne	.label_22
	cmp	byte ptr [rip + from_start],  0
	je	.label_23
	cmp	qword ptr [rsp + 0x18], 0
	mov	r15d, 0
	je	.label_25
	xor	r15d, r15d
	jmp	.label_31
	.section	.text
	.align	32
	#Procedure 0x40305a
	.globl sub_40305a
	.type sub_40305a, @function
sub_40305a:

	nop	word ptr [rax + rax]
.label_343:
	cmp	byte ptr [rip + forever],  0
	je	.label_32
	mov	r12, r14
	mov	r14, r13
	mov	rbp, qword ptr [rsp + 0x60]
	mov	dword ptr [r14 + rbp + 0x38], 0xffffffff
	call	__errno_location
	mov	ecx, dword ptr [rax]
	mov	dword ptr [r14 + rbp + 0x3c], ecx
	xor	bl, 1
	mov	byte ptr [r14 + rbp + 0x34], bl
	xorpd	xmm0, xmm0
	movupd	xmmword ptr [r14 + rbp + 0x20], xmm0
	jmp	.label_38
	.section	.text
	.align	32
	#Procedure 0x4030a5
	.globl sub_4030a5
	.type sub_4030a5, @function
sub_4030a5:

	nop	word ptr cs:[rax + rax]
.label_13:
	call	__fxstat
	test	eax, eax
	je	.label_51
.label_22:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	r15d, r15d
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_233
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	mov	edi, 4
	mov	rsi, qword ptr [rsp + 0x40]
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, rbp
	call	error
.label_200:
	xor	ebp, ebp
.label_160:
	cmp	byte ptr [rip + forever],  0
	je	.label_63
	mov	rbx, rbp
	mov	eax, ebp
	not	al
	movzx	eax, al
	shl	eax, 0x1f
	sar	eax, 0x1f
	mov	rcx, qword ptr [rsp + 0x60]
	lea	rbp, [r14 + rcx + 0x3c]
	mov	dword ptr [r13 + rcx + 0x3c], eax
	mov	edi, 1
	mov	rsi, qword ptr [rsp + 8]
	lea	rdx, [rsp + 0x170]
	call	__fxstat
	test	eax, eax
	js	.label_73
	mov	eax, dword ptr [rsp + 0x188]
	mov	ecx, eax
	and	ecx, 0xfffff000
	movsx	edx, cx
	movzx	ecx, cx
	cmp	edx, 0xfff
	jg	.label_76
	cmp	ecx, 0x8000
	je	.label_87
	cmp	ecx, 0xc000
	je	.label_87
	jmp	.label_92
	.section	.text
	.align	32
	#Procedure 0x403186
	.globl sub_403186
	.type sub_403186, @function
sub_403186:

	nop	word ptr cs:[rax + rax]
.label_63:
	mov	eax, dword ptr [rsp + 0x74]
	test	al, al
	jne	.label_96
	mov	rdi, qword ptr [rsp + 8]
	call	close
	test	eax, eax
	je	.label_96
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_106
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	mov	rax, qword ptr [rsp + 0x30]
	mov	rsi, qword ptr [rax]
	cmp	byte ptr [rsi], 0x2d
	jne	.label_108
	cmp	byte ptr [rsi + 1], 0
	jne	.label_108
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_119
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
.label_108:
	mov	edi, 4
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, rbp
	xor	ebp, ebp
	call	error
	jmp	.label_96
.label_141:
	mov	byte ptr [rip + have_read_stdin],  1
	xor	ebp, ebp
	mov	al, 1
	mov	dword ptr [rsp + 0x74], eax
	jmp	.label_317
.label_73:
	call	__errno_location
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp], ecx
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_106
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	mov	rax, qword ptr [rsp + 0x30]
	mov	rsi, qword ptr [rax]
	cmp	byte ptr [rsi], 0x2d
	jne	.label_131
	cmp	byte ptr [rsi + 1], 0
	jne	.label_131
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_119
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
.label_131:
	mov	edi, 4
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, rbp
	call	error
	jmp	.label_138
.label_32:
	mov	r12, r14
	call	__errno_location
.label_38:
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_143
	mov	edx, 5
	call	dcgettext
	mov	r14, rax
	mov	rax, qword ptr [rsp + 0x30]
	mov	rsi, qword ptr [rax]
	cmp	byte ptr [rsi], 0x2d
	jne	.label_30
	cmp	byte ptr [rsi + 1], 0
	jne	.label_30
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_119
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	nop	word ptr cs:[rax + rax]
.label_30:
	mov	edi, 4
	call	quotearg_style
	mov	rcx, rax
	xor	ebp, ebp
	xor	edi, edi
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, r14
	call	error
	mov	r14, r12
	mov	r12, qword ptr [rsp + 0x28]
	jmp	.label_96
.label_76:
	cmp	ecx, 0x1000
	je	.label_87
	cmp	ecx, 0x2000
	jne	.label_92
.label_87:
	mov	rbp, rbx
	test	bpl, bpl
	je	.label_138
	mov	ecx, dword ptr [rsp + 0x74]
	test	cl, cl
	mov	ecx, 1
	mov	edx, 0xffffffff
	cmovne	ecx, edx
	mov	rdx, qword ptr [rsp + 0x60]
	mov	rbx, qword ptr [rsp + 8]
	mov	dword ptr [r13 + rdx + 0x38], ebx
	mov	qword ptr [r13 + rdx + 8], r15
	movups	xmm0, xmmword ptr [rsp + 0x1c8]
	movups	xmmword ptr [r13 + rdx + 0x10], xmm0
	movapd	xmm0, xmmword ptr [rsp + 0x170]
	movupd	xmmword ptr [r13 + rdx + 0x20], xmm0
	mov	dword ptr [r13 + rdx + 0x30], eax
	mov	dword ptr [r13 + rdx + 0x40], ecx
	mov	qword ptr [r13 + rdx + 0x58], 0
	mov	byte ptr [r13 + rdx + 0x34], 0
	mov	rax, qword ptr [rsp + 0x30]
	mov	rsi, qword ptr [rax]
	cmp	byte ptr [rsi], 0x2d
	jne	.label_170
	cmp	byte ptr [rsi + 1], 0
	jne	.label_170
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_119
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
.label_170:
	mov	edi, ebx
	call	fremote
	mov	rcx, qword ptr [rsp + 0x60]
	mov	byte ptr [r13 + rcx + 0x35], al
	jmp	.label_96
.label_51:
	mov	cl, byte ptr [rip + presume_input_pipe]
	xor	cl, 1
	mov	rbx, qword ptr [rsp + 0x18]
	test	rbx, rbx
	setns	al
	and	al, cl
	cmp	byte ptr [rip + from_start],  0
	je	.label_205
	test	al, al
	je	.label_209
	mov	eax, dword ptr [rsp + 0xf8]
	mov	ecx, 0xf000
	and	eax, ecx
	cmp	eax, 0x8000
	jne	.label_212
	mov	edx, 1
	mov	edi, ebp
	mov	rsi, rbx
	mov	rcx, qword ptr [rsp + 0x40]
	call	xlseek
	mov	rbx, qword ptr [rsp + 0x18]
	test	rax, rax
	jns	.label_216
.label_212:
	mov	edx, 1
	mov	edi, ebp
	mov	rsi, rbx
	call	lseek
	mov	rbx, qword ptr [rsp + 0x18]
	cmp	rax, -1
	je	.label_209
.label_216:
	mov	r14, rbx
	mov	rbx, -1
	jmp	.label_225
.label_240:
	mov	rbp, qword ptr [rsp + 8]
.label_31:
	mov	edx, 0x2000
	mov	edi, ebp
	lea	rsi, [rsp + 0x170]
	call	safe_read
	mov	bpl, 1
	test	rax, rax
	je	.label_160
	cmp	rax, -1
	mov	rcx, qword ptr [rsp + 0x18]
	je	.label_230
	lea	rbx, [rsp + rax + 0x170]
	add	r15, rax
	mov	al, byte ptr [rip + line_end]
	test	al, al
	mov	ebp, 0
	mov	eax, 0xa
	cmovne	ebp, eax
	lea	rax, [rsp + 0x170]
	nop	dword ptr [rax]
.label_241:
	mov	qword ptr [rsp + 0x18], rcx
	mov	rdx, rbx
	sub	rdx, rax
	mov	rdi, rax
	mov	esi, ebp
	call	memchr
	test	rax, rax
	je	.label_240
	inc	rax
	mov	rcx, qword ptr [rsp + 0x18]
	dec	rcx
	jne	.label_241
	cmp	rax, rbx
	mov	rbp, qword ptr [rsp + 8]
	jae	.label_25
	sub	rbx, rax
	mov	rdi, rax
	mov	rsi, rbx
	call	xwrite_stdout
.label_25:
	xor	edi, edi
	mov	rcx, -1
	mov	rsi, qword ptr [rsp + 0x40]
	mov	edx, ebp
	call	dump_remainder
	add	r15, rax
	mov	bpl, 1
	jmp	.label_160
.label_23:
	mov	al, byte ptr [rip + presume_input_pipe]
	test	al, al
	jne	.label_249
	mov	eax, dword ptr [rsp + 0xf8]
	mov	ecx, 0xf000
	and	eax, ecx
	cmp	eax, 0x8000
	jne	.label_249
	xor	esi, esi
	mov	edx, 1
	mov	edi, ebp
	call	lseek
	cmp	rax, -1
	je	.label_249
	xor	esi, esi
	mov	edx, 2
	mov	edi, ebp
	mov	qword ptr [rsp + 0x68], rax
	call	lseek
	mov	rsi, qword ptr [rsp + 0x68]
	mov	rdx, rax
	sub	rdx, rsi
	jle	.label_263
	test	rax, rax
	je	.label_46
	cmp	qword ptr [rsp + 0x18], 0
	je	.label_265
	mov	rcx, rdx
	sar	rcx, 0x3f
	shr	rcx, 0x33
	add	rcx, rdx
	and	rcx, 0xffffffffffffe000
	sub	rdx, rcx
	mov	ebx, 0x2000
	cmovne	rbx, rdx
	mov	qword ptr [rsp + 0x90], rax
	mov	rsi, rax
	sub	rsi, rbx
	xor	edx, edx
	mov	edi, ebp
	mov	qword ptr [rsp + 0x50], rsi
	mov	rcx, qword ptr [rsp + 0x40]
	call	xlseek
	mov	edi, ebp
	lea	rsi, [rsp + 0x170]
	mov	rdx, rbx
	call	safe_read
	mov	r15, rax
	cmp	r15, -1
	je	.label_284
	test	r15, r15
	je	.label_190
	movsx	eax, byte ptr [rsp + r15 + 0x16f]
	mov	cl, byte ptr [rip + line_end]
	test	cl, cl
	mov	ecx, 0
	mov	edx, 0xa
	cmovne	ecx, edx
	xor	edx, edx
	cmp	eax, ecx
	setne	dl
	mov	rbx, qword ptr [rsp + 0x18]
	sub	rbx, rdx
	mov	rax, r15
	jmp	.label_287
.label_92:
	mov	rcx, qword ptr [rsp + 0x60]
	lea	rbx, [r14 + rcx + 0x36]
	mov	dword ptr [rbp], 0xffffffff
	mov	byte ptr [rbx], 0
	mov	al, byte ptr [rip + reopen_inaccessible_files]
	xor	al, 1
	mov	byte ptr [r13 + rcx + 0x34], al
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_297
	mov	edx, 5
	call	dcgettext
	mov	r14, rax
	mov	rax, qword ptr [rsp + 0x30]
	mov	rdx, qword ptr [rax]
	cmp	byte ptr [rdx], 0x2d
	jne	.label_309
	cmp	byte ptr [rdx + 1], 0
	jne	.label_309
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_119
	mov	edx, 5
	call	dcgettext
	mov	rdx, rax
.label_309:
	xor	edi, edi
	mov	esi, 3
	call	quotearg_n_style_colon
	mov	rbp, rax
	cmp	byte ptr [rbx - 2], 0
	mov	r8d, OFFSET FLAT:label_26
	je	.label_318
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_320
	mov	edx, 5
	call	dcgettext
	mov	r8, rax
.label_318:
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, r14
	mov	rcx, rbp
	call	error
	mov	r14, qword ptr [rsp + 0x20]
	nop	word ptr [rax + rax]
.label_138:
	mov	al, byte ptr [rip + reopen_inaccessible_files]
	xor	al, 1
	mov	rcx, qword ptr [rsp + 0x60]
	mov	byte ptr [r13 + rcx + 0x34], al
	mov	rax, qword ptr [rsp + 0x30]
	mov	rbx, qword ptr [rax]
	cmp	byte ptr [rbx], 0x2d
	mov	rbp, qword ptr [rsp + 8]
	jne	.label_326
	cmp	byte ptr [rbx + 1], 0
	jne	.label_326
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_119
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	nop	
.label_326:
	lea	eax, [rbp + 1]
	cmp	eax, 2
	jb	.label_341
	mov	edi, ebp
	call	close
	test	eax, eax
	je	.label_341
	call	__errno_location
	mov	r14d, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_155
	mov	edx, 5
	call	dcgettext
	mov	r15, rbp
	mov	rbp, rax
	mov	edi, 4
	mov	rsi, rbx
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, r14d
	mov	r14, qword ptr [rsp + 0x20]
	mov	rdx, rbp
	mov	r8d, r15d
	call	error
.label_341:
	mov	rax, qword ptr [rsp + 0x60]
	mov	dword ptr [r13 + rax + 0x38], 0xffffffff
	xor	ebp, ebp
.label_96:
	test	bpl, bpl
	setne	al
	mov	cl, byte ptr [rsp + 0x17]
	and	cl, al
	mov	eax, ecx
	mov	r15, qword ptr [rsp + 0x58]
	inc	r15
	cmp	r15, r12
	jb	.label_258
.label_253:
	mov	byte ptr [rsp + 0x17], al
	cmp	byte ptr [rip + forever],  0
	sete	al
	mov	ecx, dword ptr [rsp + 0x80]
	or	al, cl
	jne	.label_19
	lea	rcx, [r14 + 0x38]
	xor	eax, eax
	mov	edx, 0xf000
	mov	rsi, r12
	nop	word ptr cs:[rax + rax]
.label_16:
	mov	rdi, qword ptr [rcx - 0x38]
	cmp	byte ptr [rdi], 0x2d
	jne	.label_330
	cmp	byte ptr [rdi + 1], 0
	jne	.label_330
	cmp	byte ptr [rcx - 4], 0
	jne	.label_330
	cmp	dword ptr [rcx], 0
	js	.label_330
	mov	edi, dword ptr [rcx - 8]
	and	edi, edx
	cmp	edi, 0x1000
	jne	.label_330
	mov	dword ptr [rcx], 0xffffffff
	mov	byte ptr [rcx - 4], 1
	jmp	.label_362
	.section	.text
	.align	32
	#Procedure 0x403803
	.globl sub_403803
	.type sub_403803, @function
sub_403803:

	nop	word ptr cs:[rax + rax]
.label_330:
	inc	rax
.label_362:
	add	rcx, 0x60
	dec	rsi
	jne	.label_16
	test	rax, rax
	je	.label_19
	lea	rdx, [rsp + 0xe0]
	mov	edi, 1
	mov	esi, 1
	call	__fxstat
	test	eax, eax
	js	.label_24
	mov	eax, 0xf000
	and	eax, dword ptr [rsp + 0xf8]
	cmp	eax, 0x1000
	sete	byte ptr [rip + monitor_output]
	mov	al, byte ptr [rip + disable_inotify]
	test	al, al
	jne	.label_28
	xor	eax, eax
	mov	rcx, r13
	nop	
.label_39:
	cmp	byte ptr [rcx + 0x34], 0
	jne	.label_35
	mov	rdx, qword ptr [rcx]
	cmp	byte ptr [rdx], 0x2d
	jne	.label_35
	cmp	byte ptr [rdx + 1], 0
	je	.label_37
	nop	word ptr cs:[rax + rax]
.label_35:
	inc	rax
	add	rcx, 0x60
	cmp	rax, r12
	jb	.label_39
	lea	rax, [r14 + 0x38]
	xor	ecx, ecx
	nop	word ptr cs:[rax + rax]
.label_52:
	cmp	dword ptr [rax], 0
	js	.label_49
	cmp	byte ptr [rax - 3], 0
	jne	.label_37
.label_49:
	inc	rcx
	add	rax, 0x60
	cmp	rcx, r12
	jb	.label_52
	lea	rax, [r14 + 0x38]
	xor	ecx, ecx
	nop	dword ptr [rax]
.label_57:
	cmp	dword ptr [rax], 0
	js	.label_243
	cmp	byte ptr [rax - 3], 0
	je	.label_55
.label_243:
	inc	rcx
	add	rax, 0x60
	cmp	rcx, r12
	jb	.label_57
.label_37:
	mov	byte ptr [rip + disable_inotify],  1
.label_28:
	mov	byte ptr [rip + disable_inotify],  1
	xor	eax, eax
	cmp	r12, 1
	jne	.label_62
	mov	ecx, dword ptr [rip + pid]
	test	ecx, ecx
	jne	.label_62
	cmp	dword ptr [rip + follow_mode],  2
	jne	.label_62
	cmp	dword ptr [r13 + 0x38], -1
	je	.label_66
	mov	eax, 0xf000
	and	eax, dword ptr [r13 + 0x30]
	cmp	eax, 0x8000
	setne	al
	jmp	.label_62
.label_66:
	xor	eax, eax
.label_62:
	lea	rcx, [r12 - 1]
	mov	qword ptr [rsp + 0x30], rcx
	movzx	eax, al
	xor	ecx, ecx
	mov	dword ptr [rsp + 0x18], eax
	test	al, al
	sete	cl
	shl	ecx, 0xb
	mov	dword ptr [rsp + 0x48], ecx
	add	r14, 0x38
	mov	qword ptr [rsp + 0x20], r14
	mov	dword ptr [rsp + 0x58], 0
.label_276:
	xor	r14d, r14d
	mov	rbp, r13
	xor	eax, eax
	mov	qword ptr [rsp + 8], rax
	jmp	.label_82
.label_176:
	mov	rax, qword ptr [rip + max_n_unchanged_stats_between_opens]
	mov	rcx, qword ptr [rbp + 0x58]
	lea	rdx, [rcx + 1]
	mov	qword ptr [rbp + 0x58], rdx
	cmp	rax, rcx
	ja	.label_90
	cmp	dword ptr [rip + follow_mode],  1
	mov	r13, qword ptr [rsp + 0x38]
	jne	.label_94
	xor	esi, esi
	cmp	dword ptr [rbp + 0x40], 0
	setne	sil
	mov	rdi, rbp
	call	recheck
	mov	qword ptr [rbp + 0x58], 0
	jmp	.label_94
.label_90:
	mov	r13, qword ptr [rsp + 0x38]
	jmp	.label_94
	.section	.text
	.align	32
	#Procedure 0x4039c2
	.globl sub_4039c2
	.type sub_4039c2, @function
sub_4039c2:

	nop	word ptr cs:[rax + rax]
.label_82:
	cmp	byte ptr [rbp + 0x34], 0
	jne	.label_94
	mov	ebx, dword ptr [rbp + 0x38]
	test	ebx, ebx
	js	.label_112
	mov	r15, qword ptr [rbp]
	cmp	byte ptr [r15], 0x2d
	jne	.label_115
	cmp	byte ptr [r15 + 1], 0
	jne	.label_115
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_119
	mov	edx, 5
	call	dcgettext
	mov	r15, rax
	nop	word ptr cs:[rax + rax]
.label_115:
	mov	eax, dword ptr [rbp + 0x30]
	mov	dword ptr [rsp + 0x60], eax
	mov	eax, dword ptr [rsp + 0x18]
	cmp	dword ptr [rbp + 0x40], eax
	je	.label_121
	mov	esi, 3
	xor	eax, eax
	mov	edi, ebx
	call	rpl_fcntl
	test	eax, eax
	js	.label_127
	mov	edx, eax
	or	edx, dword ptr [rsp + 0x48]
	cmp	edx, eax
	je	.label_128
	mov	esi, 4
	xor	eax, eax
	mov	edi, ebx
	call	rpl_fcntl
	cmp	eax, -1
	je	.label_127
.label_128:
	mov	eax, dword ptr [rsp + 0x18]
	mov	dword ptr [rbp + 0x40], eax
	jmp	.label_121
.label_112:
	mov	rdi, rbp
	mov	esi, dword ptr [rsp + 0x18]
	call	recheck
	jmp	.label_94
.label_127:
	mov	r12d, dword ptr [rbp + 0x30]
	and	r12d, 0xf000
	call	__errno_location
	mov	r13d, dword ptr [rax]
	cmp	r12d, 0x8000
	jne	.label_314
	cmp	r13d, 1
	jne	.label_314
	mov	eax, dword ptr [rbp + 0x40]
	mov	r12, qword ptr [rsp + 0x28]
	mov	r13, qword ptr [rsp + 0x38]
.label_121:
	test	eax, eax
	jne	.label_149
	mov	edi, 1
	mov	esi, ebx
	lea	rdx, [rsp + 0x170]
	call	__fxstat
	test	eax, eax
	je	.label_152
	mov	dword ptr [rbp + 0x38], 0xffffffff
	call	__errno_location
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp + 0x3c], ecx
	mov	r13d, dword ptr [rax]
	xor	edi, edi
	mov	esi, 3
	mov	rdx, r15
	call	quotearg_n_style_colon
	mov	rcx, rax
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_156
	xor	eax, eax
	mov	esi, r13d
	call	error
	mov	edi, ebx
	call	close
	mov	r13, qword ptr [rsp + 0x38]
	jmp	.label_94
.label_152:
	mov	ecx, dword ptr [rbp + 0x30]
	mov	eax, dword ptr [rsp + 0x188]
	cmp	ecx, eax
	jne	.label_164
	and	ecx, 0xf000
	cmp	ecx, 0x8000
	jne	.label_145
	mov	rcx, qword ptr [rbp + 8]
	cmp	rcx, qword ptr [rsp + 0x1a0]
	jne	.label_164
.label_145:
	mov	rcx, qword ptr [rbp + 0x10]
	cmp	rcx, qword ptr [rsp + 0x1c8]
	jne	.label_164
	mov	ecx, dword ptr [rbp + 0x18]
	cmp	ecx, dword ptr [rsp + 0x1d0]
	je	.label_176
.label_164:
	movupd	xmm0, xmmword ptr [rsp + 0x1c8]
	movupd	xmmword ptr [rbp + 0x10], xmm0
	mov	dword ptr [rbp + 0x30], eax
	mov	qword ptr [rbp + 0x58], 0
	mov	eax, dword ptr [rsp + 0x60]
	and	eax, 0xf000
	cmp	eax, 0x8000
	jne	.label_187
	mov	rax, qword ptr [rsp + 0x1a0]
	cmp	rax, qword ptr [rbp + 8]
	jge	.label_187
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_195
	mov	edx, 5
	call	dcgettext
	mov	r13, rax
	xor	edi, edi
	mov	esi, 3
	mov	rdx, r15
	call	quotearg_n_style_colon
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, r13
	call	error
	xor	esi, esi
	xor	edx, edx
	mov	edi, ebx
	mov	rcx, r15
	call	xlseek
	mov	qword ptr [rbp + 8], 0
.label_187:
	cmp	r14, qword ptr [rsp + 0x30]
	mov	r13, qword ptr [rsp + 0x38]
	je	.label_149
	cmp	byte ptr [rip + print_headers],  1
	mov	qword ptr [rsp + 0x30], r14
	jne	.label_149
	movzx	eax, byte ptr [rip + write_header.first_file]
	test	al, al
	mov	edx, OFFSET FLAT:label_26
	mov	eax, OFFSET FLAT:label_210
	cmovne	rdx, rax
	mov	edi, 1
	mov	esi, OFFSET FLAT:label_211
	xor	eax, eax
	mov	rcx, r15
	call	__printf_chk
	mov	byte ptr [rip + write_header.first_file],  1
	mov	qword ptr [rsp + 0x30], r14
.label_149:
	mov	rcx, -2
	cmp	dword ptr [rbp + 0x40], 0
	jne	.label_222
	mov	eax, dword ptr [rsp + 0x60]
	and	eax, 0xf000
	mov	rcx, -1
	cmp	eax, 0x8000
	jne	.label_222
	cmp	byte ptr [rbp + 0x35], 0
	je	.label_222
	mov	rcx, qword ptr [rsp + 0x1a0]
	sub	rcx, qword ptr [rbp + 8]
.label_222:
	xor	edi, edi
	mov	rsi, r15
	mov	edx, ebx
	call	dump_remainder
	test	rax, rax
	setne	cl
	mov	rdx, qword ptr [rsp + 8]
	and	dl, 1
	or	dl, cl
	mov	qword ptr [rsp + 8], rdx
	add	qword ptr [rbp + 8], rax
	nop	word ptr cs:[rax + rax]
.label_94:
	inc	r14
	add	rbp, 0x60
	cmp	r14, r12
	jb	.label_82
	mov	al, byte ptr [rip + reopen_inaccessible_files]
	cmp	al, 1
	mov	rcx, qword ptr [rsp + 0x20]
	mov	rbp, qword ptr [rsp + 8]
	jne	.label_204
	cmp	dword ptr [rip + follow_mode],  1
	je	.label_238
.label_204:
	test	al, al
	je	.label_239
	mov	rax, rcx
	xor	ecx, ecx
	nop	word ptr cs:[rax + rax]
.label_242:
	cmp	dword ptr [rax], 0
	jns	.label_238
	cmp	byte ptr [rax - 4], 0
	je	.label_238
	inc	rcx
	add	rax, 0x60
	cmp	rcx, r12
	jb	.label_242
	jmp	.label_244
.label_239:
	mov	rax, rcx
	xor	ecx, ecx
	nop	word ptr cs:[rax + rax]
.label_248:
	cmp	dword ptr [rax], 0
	jns	.label_238
	inc	rcx
	add	rax, 0x60
	cmp	rcx, r12
	jb	.label_248
	jmp	.label_244
	.section	.text
	.align	32
	#Procedure 0x403d16
	.globl sub_403d16
	.type sub_403d16, @function
sub_403d16:

	nop	word ptr cs:[rax + rax]
.label_238:
	and	bpl, 1
	sete	al
	cmp	dword ptr [rsp + 0x18], 0
	jne	.label_252
	test	al, al
	je	.label_254
.label_252:
	mov	rdi, qword ptr [rip + stdout]
	call	fflush_unlocked
	test	eax, eax
	jne	.label_255
.label_254:
	cmp	byte ptr [rip + monitor_output],  0
	je	.label_256
	xorpd	xmm0, xmm0
	movapd	xmmword ptr [rsp + 0xa0], xmm0
	xor	eax, eax
	mov	ecx, 0x10
	lea	rbx, [rsp + 0x170]
	mov	rdi, rbx
	cld	
	rep stosq	qword ptr [rdi], rax
	mov	edi, 1
	call	__fdelt_chk
	or	byte ptr [rsp + rax*8 + 0x170], 2
	mov	edi, 2
	xor	edx, edx
	xor	ecx, ecx
	mov	rsi, rbx
	lea	r8, [rsp + 0xa0]
	call	select
	cmp	eax, 1
	je	.label_273
.label_256:
	test	bpl, bpl
	jne	.label_276
	mov	eax, dword ptr [rsp + 0x58]
	test	al, 1
	jne	.label_19
	mov	edi, dword ptr [rip + pid]
	test	edi, edi
	je	.label_281
	mov	dword ptr [rsp + 0x58], 0
	xor	esi, esi
	call	kill
	test	eax, eax
	je	.label_202
	call	__errno_location
	cmp	dword ptr [rax], 1
	setne	al
	mov	dword ptr [rsp + 0x58], eax
	jne	.label_276
	jmp	.label_202
.label_281:
	mov	dword ptr [rsp + 0x58], 0
.label_202:
	movsd	xmm0, qword ptr [rsp + 0x98]
	call	xnanosleep
	test	eax, eax
	je	.label_276
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_294
	jmp	.label_148
.label_244:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_85
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	call	error
.label_19:
	cmp	byte ptr [rip + have_read_stdin],  1
	jne	.label_304
	xor	edi, edi
	call	close
	test	eax, eax
	js	.label_307
.label_304:
	movzx	eax, byte ptr [rsp + 0x17]
	xor	eax, 1
.label_93:
	add	rsp, 0x2178
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_55:
	xor	ebp, ebp
	lea	r15, [rsp + 0x170]
	mov	r14d, 0xf000
	mov	rbx, r13
	nop	word ptr [rax + rax]
.label_325:
	mov	rsi, qword ptr [rbx]
	mov	edi, 1
	mov	rdx, r15
	call	__lxstat
	test	eax, eax
	jne	.label_358
	mov	eax, dword ptr [rsp + 0x188]
	and	eax, r14d
	cmp	eax, 0xa000
	je	.label_322
.label_358:
	inc	rbp
	add	rbx, 0x60
	cmp	rbp, r12
	jb	.label_325
	mov	r14, qword ptr [rsp + 0x20]
	lea	rax, [r14 + 0x38]
	xor	ecx, ecx
.label_335:
	cmp	dword ptr [rax], 0
	js	.label_327
	movzx	edx, word ptr [rax - 8]
	and	edx, 0xf000
	cmp	edx, 0x1000
	je	.label_327
	movzx	edx, dx
	cmp	edx, 0x8000
	jne	.label_37
.label_327:
	inc	rcx
	add	rax, 0x60
	cmp	rcx, r12
	jb	.label_335
	cmp	dword ptr [rip + follow_mode],  2
	jne	.label_338
	mov	al, byte ptr [rsp + 0x17]
	xor	al, 1
	jne	.label_37
.label_338:
	mov	al, byte ptr [rip + disable_inotify]
	test	al, al
	jne	.label_28
	call	inotify_init
	mov	r15d, eax
	test	r15d, r15d
	js	.label_169
	mov	rdi, qword ptr [rip + stdout]
	call	fflush_unlocked
	test	eax, eax
	jne	.label_255
	xor	esi, esi
	mov	edx, OFFSET FLAT:wd_hasher
	mov	ecx, OFFSET FLAT:wd_comparator
	xor	r8d, r8d
	mov	rdi, r12
	call	hash_initialize
	mov	qword ptr [rsp + 0x48], rax
	test	rax, rax
	je	.label_347
	cmp	dword ptr [rip + follow_mode],  1
	mov	eax, 0xc06
	mov	ecx, 2
	cmove	ecx, eax
	mov	dword ptr [rsp + 0x60], ecx
	mov	rbp, r13
	xor	r12d, r12d
	xor	eax, eax
	mov	qword ptr [rsp + 0x30], rax
	xor	eax, eax
	mov	qword ptr [rsp + 0x18], rax
	xor	r13d, r13d
	mov	dword ptr [rsp + 8], r15d
.label_54:
	cmp	byte ptr [rbp + 0x34], 0
	jne	.label_130
	mov	rbx, qword ptr [rbp]
	mov	rdi, rbx
	call	strlen
	mov	rcx, qword ptr [rsp + 0x18]
	cmp	rcx, rax
	cmovb	rcx, rax
	mov	qword ptr [rsp + 0x18], rcx
	mov	dword ptr [rbp + 0x44], 0xffffffff
	cmp	dword ptr [rip + follow_mode],  1
	jne	.label_357
	mov	rdi, rbx
	call	dir_len
	mov	r15, rax
	movzx	r14d, byte ptr [rbx + r15]
	mov	rdi, rbx
	call	last_component
	sub	rax, rbx
	mov	qword ptr [rbp + 0x50], rax
	mov	byte ptr [rbx + r15], 0
	test	r15, r15
	mov	esi, OFFSET FLAT:label_359
	je	.label_360
	mov	rsi, qword ptr [rbp]
.label_360:
	mov	edx, 0x784
	mov	edi, dword ptr [rsp + 8]
	call	inotify_add_watch
	mov	dword ptr [rbp + 0x48], eax
	mov	rax, qword ptr [rbp]
	mov	byte ptr [rax + r15], r14b
	cmp	dword ptr [rbp + 0x48], 0
	js	.label_44
	mov	rbx, qword ptr [rbp]
	mov	r14, qword ptr [rsp + 0x20]
	mov	r15d, dword ptr [rsp + 8]
.label_357:
	mov	edi, r15d
	mov	rsi, rbx
	mov	edx, dword ptr [rsp + 0x60]
	call	inotify_add_watch
	mov	dword ptr [rbp + 0x44], eax
	test	eax, eax
	js	.label_29
	mov	rdi, qword ptr [rsp + 0x48]
	mov	rsi, rbp
	call	hash_insert
	mov	r12b, 1
	test	rax, rax
	jne	.label_130
	jmp	.label_33
.label_29:
	cmp	dword ptr [rbp + 0x38], -1
	je	.label_140
	mov	al, 1
	mov	qword ptr [rsp + 0x30], rax
.label_140:
	call	__errno_location
	mov	rbx, rax
	mov	r15d, dword ptr [rbx]
	mov	eax, r15d
	or	eax, 0x10
	cmp	eax, 0x1c
	je	.label_237
	cmp	r15d, dword ptr [rbp + 0x3c]
	je	.label_41
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_43
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	rsi, qword ptr [rbp]
	mov	edi, 4
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, r15d
	mov	rdx, rbx
	call	error
.label_41:
	mov	r15d, dword ptr [rsp + 8]
.label_130:
	inc	r13
	add	rbp, 0x60
	cmp	r13, qword ptr [rsp + 0x28]
	jb	.label_54
	mov	eax, dword ptr [rip + follow_mode]
	mov	rcx, qword ptr [rsp + 0x30]
	test	cl, 1
	je	.label_59
	cmp	eax, 2
	jne	.label_59
	call	__errno_location
	mov	rbx, rax
	mov	r12, qword ptr [rsp + 0x28]
	mov	r13, qword ptr [rsp + 0x38]
	jmp	.label_64
.label_322:
	mov	r14, qword ptr [rsp + 0x20]
	jmp	.label_37
.label_59:
	test	r12b, 1
	mov	rdx, qword ptr [rsp + 0x38]
	jne	.label_174
	cmp	eax, 2
	je	.label_69
.label_174:
	mov	rcx, r14
	mov	r14, qword ptr [rsp + 0x28]
	lea	rax, [r14 + r14*2]
	shl	rax, 5
	lea	rax, [rcx + rax - 0x60]
	mov	qword ptr [rsp + 0xb8], rax
	xor	ebp, ebp
	lea	r15, [rsp + 0xb8]
	lea	r12, [rsp + 0x170]
	mov	rbx, rdx
.label_107:
	cmp	byte ptr [rbx + 0x34], 0
	jne	.label_83
	cmp	dword ptr [rip + follow_mode],  1
	jne	.label_86
	xor	esi, esi
	mov	rdi, rbx
	call	recheck
	jmp	.label_89
.label_86:
	cmp	dword ptr [rbx + 0x38], -1
	je	.label_89
	mov	rsi, qword ptr [rbx]
	mov	edi, 1
	mov	rdx, r12
	call	__xstat
	test	eax, eax
	jne	.label_89
	mov	rax, qword ptr [rbx + 0x20]
	cmp	rax, qword ptr [rsp + 0x170]
	jne	.label_99
	mov	rax, qword ptr [rbx + 0x28]
	cmp	rax, qword ptr [rsp + 0x178]
	jne	.label_99
.label_89:
	mov	rdi, rbx
	mov	rsi, r15
	call	check_fspec
.label_83:
	inc	rbp
	add	rbx, 0x60
	cmp	rbp, r14
	jb	.label_107
	mov	rdi, qword ptr [rsp + 0x18]
	add	rdi, 0x11
	mov	qword ptr [rsp + 0x18], rdi
	call	xmalloc
	mov	qword ptr [rsp + 0x68], rax
	mov	r15d, dword ptr [rsp + 8]
	mov	eax, r15d
	sar	eax, 0x1f
	shr	eax, 0x1a
	add	eax, r15d
	and	eax, 0xc0
	mov	ecx, r15d
	sub	ecx, eax
	mov	eax, 1
	shl	rax, cl
	mov	qword ptr [rsp + 0x40], rax
	movsxd	rax, r15d
	mov	qword ptr [rsp + 0x80], rax
	test	r15d, r15d
	mov	eax, 1
	cmovg	eax, r15d
	inc	eax
	mov	dword ptr [rsp + 0x78], eax
	movsd	xmm1, qword ptr [rsp + 0x98]
	cvttsd2si	rax, xmm1
	mov	qword ptr [rsp + 0xc8], rax
	cvtsi2sd	xmm0, rax
	subsd	xmm1, xmm0
	mulsd	xmm1, qword ptr [rip + label_117]
	cvttsd2si	rax, xmm1
	mov	qword ptr [rsp + 0xc0], rax
	mov	r14, qword ptr [rsp + 0x20]
	lea	rax, [r14 + 0x48]
	mov	qword ptr [rsp + 0xd0], rax
	lea	rax, [r14 + 0x50]
	mov	qword ptr [rsp + 0x90], rax
	mov	eax, 3
	mov	ecx, 0
	mov	qword ptr [rsp + 0x30], rcx
	xor	ecx, ecx
	mov	dword ptr [rsp + 0x74], 0
	jmp	.label_27
.label_44:
	call	__errno_location
	mov	rbx, rax
	mov	r12d, dword ptr [rbx]
	cmp	r12d, 0x1c
	mov	r14, qword ptr [rsp + 0x20]
	jne	.label_146
.label_237:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_159
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	call	error
	jmp	.label_189
.label_146:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_153
	mov	edx, 5
	call	dcgettext
	mov	r15, rax
	mov	rsi, qword ptr [rbp]
	mov	edi, 4
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, r12d
	mov	rdx, r15
	call	error
.label_189:
	mov	r12, qword ptr [rsp + 0x28]
	mov	r13, qword ptr [rsp + 0x38]
	mov	r15d, dword ptr [rsp + 8]
.label_64:
	mov	rdi, qword ptr [rsp + 0x48]
	call	hash_free
	mov	dword ptr [rbx], 0
	jmp	.label_169
.label_99:
	call	__errno_location
	mov	rbp, rax
	mov	r12d, dword ptr [rbp]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_173
	mov	edx, 5
	call	dcgettext
	mov	r13, rax
	mov	rsi, qword ptr [rbx]
	cmp	byte ptr [rsi], 0x2d
	jne	.label_185
	cmp	byte ptr [rsi + 1], 0
	jne	.label_185
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_119
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
.label_185:
	mov	edi, 4
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, r12d
	mov	rdx, r13
	call	error
	mov	rdi, qword ptr [rsp + 0x48]
	call	hash_free
	mov	dword ptr [rbp], 0
.label_166:
	mov	r12, qword ptr [rsp + 0x28]
	mov	r14, qword ptr [rsp + 0x20]
	mov	r13, qword ptr [rsp + 0x38]
	mov	r15d, dword ptr [rsp + 8]
	jmp	.label_169
.label_48:
	mov	r14, qword ptr [rsp + 0x20]
	mov	r15d, dword ptr [rsp + 8]
	mov	rax, qword ptr [rsp + 0x50]
	mov	rcx, qword ptr [rsp + 0x58]
	jmp	.label_27
.label_203:
	mov	rdi, r12
	lea	rsi, [rsp + 0xb8]
	call	check_fspec
	jmp	.label_48
.label_27:
	mov	qword ptr [rsp + 0x58], rcx
	mov	ebx, eax
	jmp	.label_208
.label_274:
	mov	rsi, qword ptr [rsp + 0x18]
	add	rsi, rsi
	mov	rdi, qword ptr [rsp + 0x68]
	mov	qword ptr [rsp + 0x18], rsi
	call	xrealloc
	mov	qword ptr [rsp + 0x68], rax
	xor	eax, eax
	mov	qword ptr [rsp + 0x30], rax
	xor	eax, eax
	mov	qword ptr [rsp + 0x58], rax
.label_208:
	mov	eax, ebx
	mov	qword ptr [rsp + 0x50], rax
	mov	r12, qword ptr [rsp + 0x28]
.label_313:
	cmp	dword ptr [rip + follow_mode],  1
	jne	.label_217
	mov	al, byte ptr [rip + reopen_inaccessible_files]
	test	al, al
	jne	.label_217
	mov	rdi, qword ptr [rsp + 0x48]
	call	hash_get_n_entries
	test	rax, rax
	je	.label_223
.label_217:
	mov	rbp, qword ptr [rsp + 0x58]
	cmp	qword ptr [rsp + 0x30], rbp
	jbe	.label_226
	mov	r8, qword ptr [rsp + 0x50]
	jmp	.label_194
.label_226:
	lea	rbx, [rsp + 0x170]
	mov	r13, rbx
	mov	rbp, qword ptr [rsp + 0x50]
	mov	ebx, dword ptr [rsp + 0x74]
.label_316:
	mov	edi, dword ptr [rip + pid]
	test	edi, edi
	je	.label_198
	test	bl, 1
	jne	.label_231
	xor	ebx, ebx
	xor	esi, esi
	call	kill
	test	eax, eax
	je	.label_232
	call	__errno_location
	cmp	dword ptr [rax], 1
	setne	bl
	je	.label_232
	xorpd	xmm0, xmm0
	movapd	xmmword ptr [rsp + 0xa0], xmm0
	jmp	.label_198
.label_232:
	mov	rax, qword ptr [rsp + 0xc8]
	mov	qword ptr [rsp + 0xa0], rax
	mov	rax, qword ptr [rsp + 0xc0]
	mov	qword ptr [rsp + 0xa8], rax
.label_198:
	xor	eax, eax
	mov	ecx, 0x10
	mov	rdi, r13
	cld	
	rep stosq	qword ptr [rdi], rax
	mov	rdi, qword ptr [rsp + 0x80]
	call	__fdelt_chk
	mov	rcx, qword ptr [rsp + 0x40]
	or	qword ptr [rsp + rax*8 + 0x170], rcx
	cmp	byte ptr [rip + monitor_output],  0
	je	.label_247
	mov	edi, 1
	call	__fdelt_chk
	or	byte ptr [rsp + rax*8 + 0x170], 2
.label_247:
	cmp	dword ptr [rip + pid],  0
	mov	r8d, 0
	lea	rax, [rsp + 0xa0]
	cmovne	r8, rax
	xor	edx, edx
	xor	ecx, ecx
	mov	edi, dword ptr [rsp + 0x78]
	mov	rsi, r13
	call	select
	test	eax, eax
	je	.label_316
	cmp	eax, -1
	je	.label_352
	mov	dword ptr [rsp + 0x74], ebx
	mov	edi, 1
	call	__fdelt_chk
	test	byte ptr [rsp + rax*8 + 0x170], 2
	jne	.label_259
	mov	edi, r15d
	mov	rsi, qword ptr [rsp + 0x68]
	mov	rdx, qword ptr [rsp + 0x18]
	call	safe_read
	mov	rcx, rax
	mov	qword ptr [rsp + 0x30], rcx
	test	rax, rax
	mov	r8, rbp
	je	.label_264
	cmp	qword ptr [rsp + 0x30], -1
	jne	.label_267
	call	__errno_location
	mov	r8, rbp
	cmp	dword ptr [rax], 0x16
	jne	.label_124
.label_264:
	lea	ebx, [r8 - 1]
	test	r8d, r8d
	jne	.label_274
	mov	r8d, ebx
.label_267:
	mov	rax, qword ptr [rsp + 0x30]
	inc	rax
	cmp	rax, 1
	mov	ebp, 0
	jbe	.label_124
.label_194:
	mov	rax, qword ptr [rsp + 0x68]
	lea	rdi, [rax + rbp]
	mov	r13d, dword ptr [rax + rbp + 4]
	mov	eax, dword ptr [rax + rbp + 0xc]
	test	rax, rax
	jne	.label_285
	mov	ecx, r13d
	and	ecx, 0x400
	je	.label_285
	mov	ecx, dword ptr [rdi]
	mov	rdx, qword ptr [rsp + 0xd0]
	xor	esi, esi
.label_290:
	cmp	ecx, dword ptr [rdx]
	je	.label_201
	inc	rsi
	add	rdx, 0x60
	cmp	rsi, r12
	jb	.label_290
.label_285:
	mov	qword ptr [rsp + 0x50], r8
	lea	rbp, [rbp + rax + 0x10]
	mov	qword ptr [rsp + 0x58], rbp
	test	eax, eax
	mov	qword ptr [rsp + 0xd8], rdi
	je	.label_220
	lea	r12, [rdi + 0x10]
	mov	ebx, dword ptr [rdi]
	mov	r15, qword ptr [rsp + 0x90]
	xor	ebp, ebp
.label_306:
	cmp	dword ptr [r15 - 8], ebx
	jne	.label_301
	mov	rsi, qword ptr [r15 - 0x50]
	add	rsi, qword ptr [r15]
	mov	rdi, r12
	call	strcmp
	test	eax, eax
	je	.label_283
.label_301:
	inc	rbp
	add	r15, 0x60
	cmp	rbp, qword ptr [rsp + 0x28]
	jb	.label_306
.label_283:
	mov	r12, qword ptr [rsp + 0x28]
	cmp	rbp, r12
	mov	r15d, dword ptr [rsp + 8]
	je	.label_313
	lea	rbx, [rbp + rbp*2]
	shl	rbx, 5
	lea	r12, [r14 + rbx]
	mov	eax, r13d
	test	ah, 2
	jne	.label_116
	mov	rsi, qword ptr [r12]
	mov	edi, dword ptr [rsp + 8]
	mov	edx, dword ptr [rsp + 0x60]
	call	inotify_add_watch
	mov	ebp, eax
	test	ebp, ebp
	jns	.label_319
	call	__errno_location
	mov	r14, rax
	mov	r15d, dword ptr [r14]
	mov	eax, r15d
	or	eax, 0x10
	xor	edi, edi
	cmp	eax, 0x1c
	je	.label_97
	mov	esi, OFFSET FLAT:label_43
	mov	edx, 5
	call	dcgettext
	mov	r14, rax
	mov	rsi, qword ptr [r12]
	mov	edi, 4
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, r15d
	mov	rdx, r14
	call	error
.label_319:
	mov	rax, qword ptr [rsp + 0x38]
	mov	esi, dword ptr [rax + rbx + 0x44]
	test	esi, esi
	js	.label_333
	cmp	ebp, esi
	je	.label_116
.label_333:
	mov	rax, qword ptr [rsp + 0x20]
	lea	rbx, [rax + rbx + 0x44]
	test	esi, esi
	js	.label_339
	mov	edi, dword ptr [rsp + 8]
	call	inotify_rm_watch
	mov	rdi, qword ptr [rsp + 0x48]
	mov	rsi, r12
	call	hash_delete
.label_339:
	mov	dword ptr [rbx], ebp
	cmp	ebp, -1
	mov	r14, qword ptr [rsp + 0x20]
	mov	r15d, dword ptr [rsp + 8]
	mov	rax, qword ptr [rsp + 0x50]
	mov	rcx, qword ptr [rsp + 0x58]
	je	.label_27
	mov	rdi, qword ptr [rsp + 0x48]
	mov	rsi, r12
	call	hash_delete
	mov	rbp, rax
	test	rbp, rbp
	je	.label_345
	cmp	rbp, r12
	je	.label_345
	cmp	dword ptr [rip + follow_mode],  1
	jne	.label_349
	xor	esi, esi
	mov	rdi, rbp
	call	recheck
.label_349:
	mov	dword ptr [rbp + 0x44], 0xffffffff
	mov	ebx, dword ptr [rbp + 0x38]
	mov	rbp, qword ptr [rbp]
	cmp	byte ptr [rbp], 0x2d
	jne	.label_353
	cmp	byte ptr [rbp + 1], 0
	jne	.label_353
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_119
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
.label_353:
	lea	eax, [rbx + 1]
	cmp	eax, 2
	jb	.label_345
	mov	edi, ebx
	call	close
	test	eax, eax
	je	.label_345
	call	__errno_location
	mov	r14d, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_155
	mov	edx, 5
	call	dcgettext
	mov	r15, rax
	mov	edi, 4
	mov	rsi, rbp
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, r14d
	mov	rdx, r15
	mov	r8d, ebx
	call	error
.label_345:
	mov	rdi, qword ptr [rsp + 0x48]
	mov	rsi, r12
	call	hash_insert
	test	rax, rax
	je	.label_15
.label_116:
	cmp	dword ptr [rip + follow_mode],  1
	jne	.label_20
	xor	esi, esi
	mov	rdi, r12
	call	recheck
	jmp	.label_20
.label_220:
	mov	eax, dword ptr [rdi]
	mov	dword ptr [rsp + 0x1b4], eax
	mov	rdi, qword ptr [rsp + 0x48]
	lea	rsi, [rsp + 0x170]
	call	hash_lookup
	mov	r12, rax
.label_20:
	test	r12, r12
	mov	r14, qword ptr [rsp + 0x20]
	mov	r15d, dword ptr [rsp + 8]
	mov	rax, qword ptr [rsp + 0x50]
	mov	rcx, qword ptr [rsp + 0x58]
	je	.label_27
	mov	rax, qword ptr [rsp + 0xd8]
	mov	eax, dword ptr [rax + 4]
	test	ax, 0xe04
	je	.label_203
	test	ah, 4
	je	.label_36
	mov	esi, dword ptr [r12 + 0x44]
	mov	edi, dword ptr [rsp + 8]
	call	inotify_rm_watch
	mov	rdi, qword ptr [rsp + 0x48]
	mov	rsi, r12
	call	hash_delete
.label_36:
	xor	esi, esi
	mov	rdi, r12
	call	recheck
	jmp	.label_48
.label_201:
	mov	rdi, qword ptr [rsp + 0x48]
	call	hash_free
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_47
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	call	error
	call	__errno_location
	mov	dword ptr [rax], 0
	mov	r13, qword ptr [rsp + 0x38]
.label_169:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_261
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, rcx
	call	error
	lea	rbx, [r14 + 0x48]
	mov	rbp, r12
.label_70:
	mov	esi, dword ptr [rbx - 4]
	cmp	esi, -1
	je	.label_65
	mov	edi, r15d
	call	inotify_rm_watch
.label_65:
	mov	esi, dword ptr [rbx]
	cmp	esi, -1
	je	.label_68
	mov	edi, r15d
	call	inotify_rm_watch
.label_68:
	add	rbx, 0x60
	dec	rbp
	jne	.label_70
	jmp	.label_28
.label_1136:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_72
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	mov	ecx, ebx
	call	error
.label_223:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_85
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	call	error
.label_69:
	mov	eax, 1
	jmp	.label_93
.label_314:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_71
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	xor	edi, edi
	mov	esi, 3
	mov	rdx, r15
	call	quotearg_n_style_colon
	mov	rcx, rax
	mov	edi, 1
	xor	eax, eax
	mov	esi, r13d
	mov	rdx, rbx
	call	error
.label_137:
	mov	edi, OFFSET FLAT:label_109
	mov	esi, OFFSET FLAT:label_110
	mov	edx, 0x2e0
	mov	ecx, OFFSET FLAT:label_111
	call	__assert_fail
.label_1133:
	mov	rdi, qword ptr [rip + stdout]
	mov	rcx, qword ptr [rip + Version]
	sub	rsp, 8
	mov	esi, OFFSET FLAT:label_178
	mov	edx, OFFSET FLAT:label_179
	mov	r8d, OFFSET FLAT:label_180
	mov	r9d, OFFSET FLAT:label_181
	mov	eax, 0
	push	0
	push	OFFSET FLAT:label_182
	push	OFFSET FLAT:label_183
	call	version_etc
	add	rsp, 0x20
	xor	edi, edi
	call	exit
.label_1134:
	xor	edi, edi
	call	usage
.label_354:
	mov	edi, 1
	call	usage
.label_40:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_129
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	rdi, qword ptr [rip + optarg]
	call	quote
	jmp	.label_133
.label_184:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_300
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	edi, 4
	mov	esi, OFFSET FLAT:label_134
	call	quotearg_style
.label_133:
	mov	rcx, rax
	mov	edi, 1
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rbx
	call	error
.label_221:
	call	xalloc_die
.label_273:
	call	die_pipe
.label_255:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_147
	jmp	.label_148
.label_307:
	call	__errno_location
	mov	esi, dword ptr [rax]
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_134
	xor	eax, eax
	call	error
.label_24:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_53
.label_148:
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, rcx
	call	error
.label_97:
	mov	esi, OFFSET FLAT:label_159
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	call	error
	mov	rdi, qword ptr [rsp + 0x48]
	call	hash_free
	mov	dword ptr [r14], 0
	jmp	.label_166
.label_340:
	call	__errno_location
	mov	r14d, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_172
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	rdi, qword ptr [r13 + 8]
	call	quote
	mov	rbp, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_186
	xor	eax, eax
	mov	esi, r14d
	mov	rcx, rbx
	mov	r8, rbp
	call	error
.label_33:
	call	xalloc_die
.label_347:
	call	xalloc_die
.label_352:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_192
	jmp	.label_148
.label_124:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_257
	jmp	.label_148
.label_231:
	xor	edi, edi
	call	exit
.label_259:
	call	die_pipe
.label_15:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x404bab
	.globl sub_404bab
	.type sub_404bab, @function
sub_404bab:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404bb0
	.globl mdir_name
	.type mdir_name, @function
mdir_name:

	push	r15
	push	r14
	push	r12
	push	rbx
	push	rax
	mov	r14, rdi
	xor	r15d, r15d
	cmp	byte ptr [r14], 0x2f
	sete	r15b
	call	last_component
	inc	rax
	sub	rax, r14
	nop	word ptr cs:[rax + rax]
.label_366:
	mov	rbx, rax
	lea	r12, [rbx - 1]
	cmp	r15, r12
	jae	.label_363
	lea	rax, [rbx - 1]
	cmp	byte ptr [r14 + rbx - 2], 0x2f
	je	.label_366
.label_363:
	xor	edi, edi
	cmp	rbx, 1
	sete	dil
	add	rdi, rbx
	call	malloc
	mov	r15, rax
	xor	eax, eax
	test	r15, r15
	je	.label_365
	mov	rdi, r15
	mov	rsi, r14
	mov	rdx, r12
	call	memcpy
	cmp	rbx, 1
	jne	.label_364
	mov	byte ptr [r15], 0x2e
	mov	r12d, 1
.label_364:
	mov	byte ptr [r15 + r12], 0
	mov	rax, r15
.label_365:
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	32
	#Procedure 0x404c46
	.globl sub_404c46
	.type sub_404c46, @function
sub_404c46:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404c50
	.globl close_stdout_set_file_name
	.type close_stdout_set_file_name, @function
close_stdout_set_file_name:

	mov	qword ptr [rip + file_name],  rdi
	ret	
	.section	.text
	.align	32
	#Procedure 0x404c58
	.globl sub_404c58
	.type sub_404c58, @function
sub_404c58:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404c60
	.globl quotearg_char_mem
	.type quotearg_char_mem, @function
quotearg_char_mem:

	sub	rsp, 0x38
	mov	ecx, edx
	mov	r8, rsi
	mov	rdx, rdi
	mov	rsi, qword ptr [rip + label_9]
	mov	qword ptr [rsp + 0x30], rsi
	movups	xmm0, xmmword ptr [rip + label_10]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_11]
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
	.align	32
	#Procedure 0x404cce
	.globl sub_404cce
	.type sub_404cce, @function
sub_404cce:

	nop	
	.section	.text
	.align	32
	#Procedure 0x404cd0

	.globl __argmatch_die
	.type __argmatch_die, @function
__argmatch_die:
	mov	edi, 1
	jmp	usage
	.section	.text
	.align	32
	#Procedure 0x404cda
	.globl sub_404cda
	.type sub_404cda, @function
sub_404cda:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404ce0

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
	#Procedure 0x404cf0

	.globl rpl_calloc
	.type rpl_calloc, @function
rpl_calloc:
	test	rdi, rdi
	mov	eax, 1
	je	.label_367
	test	rsi, rsi
	mov	ecx, 1
	je	.label_368
	mov	rax, rsi
	imul	rax, rdi
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	mov	rax, rsi
	mov	rcx, rdi
	je	.label_368
	push	rax
	call	__errno_location
	mov	dword ptr [rax], 0xc
	xor	eax, eax
	pop	rcx
	ret	
.label_367:
	mov	ecx, 1
.label_368:
	mov	rdi, rcx
	mov	rsi, rax
	jmp	calloc
	.section	.text
	.align	32
	#Procedure 0x404d3b
	.globl sub_404d3b
	.type sub_404d3b, @function
sub_404d3b:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404d40

	.globl rpl_fcntl
	.type rpl_fcntl, @function
rpl_fcntl:
	push	rbp
	push	r14
	push	rbx
	sub	rsp, 0xd0
	mov	ebx, edi
	test	al, al
	je	.label_382
	movaps	xmmword ptr [rsp + 0x50], xmm0
	movaps	xmmword ptr [rsp + 0x60], xmm1
	movaps	xmmword ptr [rsp + 0x70], xmm2
	movaps	xmmword ptr [rsp + 0x80], xmm3
	movaps	xmmword ptr [rsp + 0x90], xmm4
	movaps	xmmword ptr [rsp + 0xa0], xmm5
	movaps	xmmword ptr [rsp + 0xb0], xmm6
	movaps	xmmword ptr [rsp + 0xc0], xmm7
.label_382:
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
	ja	.label_371
	mov	eax, 0xa0a
	bt	eax, esi
	jb	.label_383
	mov	eax, 0x514
	bt	eax, esi
	jb	.label_372
	test	esi, esi
	jne	.label_371
	movsxd	rcx, dword ptr [rsp]
	cmp	rcx, 0x28
	ja	.label_385
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0x10]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp], ecx
	jmp	.label_387
.label_371:
	lea	eax, [rsi - 0x400]
	cmp	eax, 8
	ja	.label_369
	mov	ecx, 0x85
	bt	ecx, eax
	jb	.label_372
	mov	ecx, 0x102
	bt	ecx, eax
	jae	.label_375
.label_383:
	xor	eax, eax
	mov	edi, ebx
	call	fcntl
	jmp	.label_378
.label_372:
	movsxd	rcx, dword ptr [rsp]
	cmp	rcx, 0x28
	ja	.label_379
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0x10]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp], ecx
	jmp	.label_380
.label_379:
	mov	rax, qword ptr [rsp + 8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 8], rcx
.label_380:
	mov	edx, dword ptr [rax]
	xor	eax, eax
	mov	edi, ebx
.label_381:
	call	fcntl
.label_378:
	mov	ebp, eax
.label_374:
	mov	eax, ebp
	add	rsp, 0xd0
	pop	rbx
	pop	r14
	pop	rbp
	ret	
.label_375:
	cmp	eax, 6
	jne	.label_369
	movsxd	rcx, dword ptr [rsp]
	cmp	rcx, 0x28
	ja	.label_389
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0x10]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp], ecx
	jmp	.label_370
.label_369:
	movsxd	rcx, dword ptr [rsp]
	cmp	rcx, 0x28
	ja	.label_373
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0x10]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp], ecx
	jmp	.label_377
.label_385:
	mov	rax, qword ptr [rsp + 8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 8], rcx
.label_387:
	mov	edx, dword ptr [rax]
	xor	esi, esi
	xor	eax, eax
	mov	edi, ebx
	jmp	.label_381
.label_389:
	mov	rax, qword ptr [rsp + 8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 8], rcx
.label_370:
	mov	r14d, dword ptr [rax]
	cmp	dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec],  0
	js	.label_384
	mov	esi, 0x406
	xor	eax, eax
	mov	edi, ebx
	mov	edx, r14d
	call	fcntl
	mov	ebp, eax
	test	ebp, ebp
	jns	.label_388
	call	__errno_location
	cmp	dword ptr [rax], 0x16
	jne	.label_388
	xor	esi, esi
	xor	eax, eax
	mov	edi, ebx
	mov	edx, r14d
	call	fcntl
	mov	ebp, eax
	test	ebp, ebp
	js	.label_374
	mov	dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec],  0xffffffff
	mov	al, 1
	jmp	.label_376
.label_388:
	mov	dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec],  1
	jmp	.label_374
.label_373:
	mov	rax, qword ptr [rsp + 8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 8], rcx
.label_377:
	mov	rdx, qword ptr [rax]
	xor	eax, eax
	mov	edi, ebx
	call	fcntl
	jmp	.label_378
.label_384:
	xor	esi, esi
	xor	eax, eax
	mov	edi, ebx
	mov	edx, r14d
	call	fcntl
	mov	ebp, eax
	cmp	dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec],  -1
	sete	al
.label_376:
	test	al, al
	je	.label_374
	test	ebp, ebp
	js	.label_374
	mov	esi, 1
	xor	eax, eax
	mov	edi, ebp
	call	fcntl
	mov	ecx, eax
	test	ecx, ecx
	js	.label_386
	or	ecx, 1
	mov	esi, 2
	xor	eax, eax
	mov	edi, ebp
	mov	edx, ecx
	call	fcntl
	cmp	eax, -1
	jne	.label_374
.label_386:
	call	__errno_location
	mov	rbx, rax
	mov	r14d, dword ptr [rbx]
	mov	edi, ebp
	call	close
	mov	dword ptr [rbx], r14d
	mov	ebp, 0xffffffff
	jmp	.label_374
	.section	.text
	.align	32
	#Procedure 0x404fd1
	.globl sub_404fd1
	.type sub_404fd1, @function
sub_404fd1:

	nop	word ptr cs:[rax + rax]
.label_391:
	mov	ebx, 0xffffffff
	test	eax, eax
	jne	.label_390
	call	__errno_location
	mov	dword ptr [rax], 0
.label_390:
	mov	eax, ebx
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x404ffb

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
	jne	.label_391
	test	eax, eax
	sete	cl
	neg	eax
	sbb	ebx, ebx
	test	r14, r14
	jne	.label_390
	test	cl, cl
	jne	.label_390
	call	__errno_location
	xor	ecx, ecx
	cmp	dword ptr [rax], 9
	mov	ebx, 0xffffffff
	cmove	ebx, ecx
	jmp	.label_390
	.section	.text
	.align	32
	#Procedure 0x405040

	.globl safe_read
	.type safe_read, @function
safe_read:
	push	rbp
	push	r15
	push	r14
	push	rbx
	push	rax
	mov	rbx, rdx
	mov	r14, rsi
	mov	r15d, edi
.label_393:
	mov	edi, r15d
	mov	rsi, r14
	mov	rdx, rbx
	call	read
	mov	rbp, rax
	test	rbp, rbp
	jns	.label_392
	call	__errno_location
	mov	eax, dword ptr [rax]
	cmp	eax, 4
	je	.label_393
	cmp	rbx, 0x7ff00001
	jb	.label_392
	cmp	eax, 0x16
	mov	ebx, 0x7ff00000
	je	.label_393
.label_392:
	mov	rax, rbp
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x405093
	.globl sub_405093
	.type sub_405093, @function
sub_405093:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4050a0

	.globl wd_comparator
	.type wd_comparator, @function
wd_comparator:
	mov	eax, dword ptr [rdi + 0x44]
	cmp	eax, dword ptr [rsi + 0x44]
	sete	al
	ret	
	.section	.text
	.align	32
	#Procedure 0x4050aa
	.globl sub_4050aa
	.type sub_4050aa, @function
sub_4050aa:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4050b0
	.globl quotearg_custom
	.type quotearg_custom, @function
quotearg_custom:

	sub	rsp, 0x38
	mov	rax, rdx
	mov	rcx, qword ptr [rip + label_9]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0, xmmword ptr [rip + label_10]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_11]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rdi, rdi
	je	.label_394
	test	rsi, rsi
	je	.label_394
	mov	qword ptr [rsp + 0x28], rdi
	mov	qword ptr [rsp + 0x30], rsi
	lea	rcx, [rsp]
	xor	edi, edi
	mov	rdx, -1
	mov	rsi, rax
	call	quotearg_n_options
	add	rsp, 0x38
	ret	
.label_394:
	call	abort
	.section	.text
	.align	32
	#Procedure 0x405120
	.globl quotearg_n_mem
	.type quotearg_n_mem, @function
quotearg_n_mem:

	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	.section	.text
	.align	32
	#Procedure 0x40512a
	.globl sub_40512a
	.type sub_40512a, @function
sub_40512a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405130

	.globl dump_remainder
	.type dump_remainder, @function
dump_remainder:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x2018
	mov	rbp, rcx
	mov	r15d, edx
	mov	qword ptr [rsp + 8], rsi
	mov	r12d, edi
	cmp	rbp, -2
	je	.label_401
	xor	ebx, ebx
	cmp	rbp, -1
	jne	.label_400
	lea	r14, [rsp + 0x10]
	mov	r13d, OFFSET FLAT:label_210
	jmp	.label_402
	.section	.text
	.align	32
	#Procedure 0x405172
	.globl sub_405172
	.type sub_405172, @function
sub_405172:

	nop	word ptr cs:[rax + rax]
.label_403:
	mov	rdi, r14
	mov	rsi, rbp
	call	xwrite_stdout
	add	rbx, rbp
.label_402:
	mov	edx, 0x2000
	mov	edi, r15d
	mov	rsi, r14
	call	safe_read
	mov	rbp, rax
	cmp	rbp, -1
	je	.label_395
	test	rbp, rbp
	je	.label_397
	test	r12b, 1
	je	.label_403
	movzx	eax, byte ptr [rip + write_header.first_file]
	test	al, al
	mov	edx, OFFSET FLAT:label_26
	cmovne	rdx, r13
	xor	r12d, r12d
	mov	edi, 1
	mov	esi, OFFSET FLAT:label_211
	xor	eax, eax
	mov	rcx, qword ptr [rsp + 8]
	call	__printf_chk
	mov	byte ptr [rip + write_header.first_file],  1
	jmp	.label_403
.label_401:
	lea	rsi, [rsp + 0x10]
	mov	edx, 0x2000
	mov	edi, r15d
	call	safe_read
	mov	rbp, rax
	xor	ebx, ebx
	cmp	rbp, -1
	je	.label_395
	test	rbp, rbp
	je	.label_397
	test	r12b, r12b
	je	.label_399
	mov	al, byte ptr [rip + write_header.first_file]
	mov	ecx, OFFSET FLAT:label_210
	mov	edx, OFFSET FLAT:label_26
	test	al, al
	cmovne	rdx, rcx
	mov	edi, 1
	mov	esi, OFFSET FLAT:label_211
	xor	eax, eax
	mov	rcx, qword ptr [rsp + 8]
	call	__printf_chk
	mov	byte ptr [rip + write_header.first_file],  1
.label_399:
	lea	rdi, [rsp + 0x10]
	mov	rsi, rbp
	call	xwrite_stdout
	mov	rbx, rbp
	jmp	.label_397
.label_400:
	lea	r13, [rsp + 0x10]
	nop	word ptr [rax + rax]
.label_396:
	cmp	rbp, 0x2000
	mov	edx, 0x2000
	cmovb	rdx, rbp
	mov	edi, r15d
	mov	rsi, r13
	call	safe_read
	mov	r14, rax
	test	r14, r14
	je	.label_397
	cmp	r14, -1
	je	.label_395
	test	r12b, 1
	je	.label_398
	movzx	eax, byte ptr [rip + write_header.first_file]
	test	al, al
	mov	edx, OFFSET FLAT:label_26
	mov	eax, OFFSET FLAT:label_210
	cmovne	rdx, rax
	xor	r12d, r12d
	mov	edi, 1
	mov	esi, OFFSET FLAT:label_211
	xor	eax, eax
	mov	rcx, qword ptr [rsp + 8]
	call	__printf_chk
	mov	byte ptr [rip + write_header.first_file],  1
.label_398:
	mov	rdi, r13
	mov	rsi, r14
	call	xwrite_stdout
	add	rbx, r14
	sub	rbp, r14
	jne	.label_396
	jmp	.label_397
.label_395:
	call	__errno_location
	mov	ebp, dword ptr [rax]
	cmp	ebp, 0xb
	jne	.label_404
.label_397:
	mov	rax, rbx
	add	rsp, 0x2018
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_404:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_106
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	edi, 4
	mov	rsi, qword ptr [rsp + 8]
	call	quotearg_style
	mov	rcx, rax
	mov	edi, 1
	xor	eax, eax
	mov	esi, ebp
	mov	rdx, rbx
	call	error
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405350

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
	jne	.label_417
	mov	ecx, esi
	and	ecx, 1
	test	rsi, rsi
	js	.label_423
	cvtsi2ss	xmm0, rsi
	jmp	.label_422
.label_423:
	shr	rsi, 1
	or	rcx, rsi
	cvtsi2ss	xmm0, rcx
	addss	xmm0, xmm0
.label_422:
	divss	xmm0, dword ptr [rax + 8]
	movss	xmm1, dword ptr [rip + label_407]
	movaps	xmm2, xmm0
	subss	xmm2, xmm1
	cvttss2si	rax, xmm2
	movabs	rcx, 0x8000000000000000
	xor	rcx, rax
	cvttss2si	rsi, xmm0
	ucomiss	xmm0, xmm1
	cmovae	rsi, rcx
	ucomiss	xmm0, dword ptr [rip + label_408]
	jae	.label_409
.label_417:
	cmp	rsi, 0xa
	mov	ebx, 0xa
	cmovae	rbx, rsi
	or	rbx, 1
	jmp	.label_406
	.section	.text
	.align	32
	#Procedure 0x4053db
	.globl sub_4053db
	.type sub_4053db, @function
sub_4053db:

	nop	dword ptr [rax + rax]
.label_419:
	add	rbx, 2
.label_406:
	cmp	rbx, -1
	je	.label_409
	cmp	rbx, 0xa
	mov	ecx, 3
	jb	.label_414
	mov	esi, 0xc
	mov	edi, 9
	mov	ecx, 3
	nop	dword ptr [rax + rax]
.label_411:
	xor	edx, edx
	mov	rax, rbx
	div	rcx
	test	rdx, rdx
	je	.label_414
	lea	rdi, [rdi + rsi + 4]
	add	rcx, 2
	add	rsi, 8
	cmp	rdi, rbx
	jb	.label_411
.label_414:
	xor	edx, edx
	mov	rax, rbx
	div	rcx
	test	rdx, rdx
	je	.label_419
	lea	rax, [rbx - 1]
	movabs	rcx, 0xffffffffffffffe
	cmp	rax, rcx
	ja	.label_409
	mov	bpl, 1
	cmp	rbx, qword ptr [r14 + 0x10]
	je	.label_410
	mov	esi, 0x10
	mov	rdi, rbx
	call	rpl_calloc
	mov	qword ptr [rsp], rax
	test	rax, rax
	je	.label_409
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
	je	.label_425
	mov	rdi, qword ptr [r14]
	call	free
	movaps	xmm0, xmmword ptr [rsp]
	movups	xmmword ptr [r14], xmm0
	movaps	xmm0, xmmword ptr [rsp + 0x10]
	movups	xmmword ptr [r14 + 0x10], xmm0
	mov	rax, qword ptr [rsp + 0x48]
	mov	qword ptr [r14 + 0x48], rax
	jmp	.label_410
.label_425:
	mov	rax, qword ptr [rsp + 0x48]
	mov	qword ptr [r14 + 0x48], rax
	mov	r12, qword ptr [rsp]
	mov	r15, qword ptr [rsp + 8]
	jmp	.label_418
	.section	.text
	.align	32
	#Procedure 0x4054fe
	.globl sub_4054fe
	.type sub_4054fe, @function
sub_4054fe:

	nop	
.label_412:
	add	r12, 0x10
.label_418:
	cmp	r12, r15
	jae	.label_405
	cmp	qword ptr [r12], 0
	je	.label_412
	mov	rbp, qword ptr [r12 + 8]
	test	rbp, rbp
	je	.label_415
	mov	rsi, qword ptr [r14 + 0x10]
	nop	word ptr cs:[rax + rax]
.label_413:
	mov	rbx, qword ptr [rbp]
	mov	rdi, rbx
	call	qword ptr [r14 + 0x30]
	mov	rsi, qword ptr [r14 + 0x10]
	cmp	rax, rsi
	jae	.label_424
	mov	rdx, qword ptr [r14]
	mov	rcx, qword ptr [rbp + 8]
	shl	rax, 4
	cmp	qword ptr [rdx + rax], 0
	je	.label_420
	mov	rdi, qword ptr [rdx + rax + 8]
	mov	qword ptr [rbp + 8], rdi
	mov	qword ptr [rdx + rax + 8], rbp
	jmp	.label_416
	.section	.text
	.align	32
	#Procedure 0x40556a
	.globl sub_40556a
	.type sub_40556a, @function
sub_40556a:

	nop	word ptr [rax + rax]
.label_420:
	add	rdx, rax
	mov	qword ptr [rdx], rbx
	inc	qword ptr [r14 + 0x18]
	mov	qword ptr [rbp], 0
	mov	rax, qword ptr [r14 + 0x48]
	mov	qword ptr [rbp + 8], rax
	mov	qword ptr [r14 + 0x48], rbp
.label_416:
	test	rcx, rcx
	mov	rbp, rcx
	jne	.label_413
.label_415:
	mov	qword ptr [r12 + 8], 0
	jmp	.label_412
.label_405:
	lea	rsi, [rsp]
	xor	edx, edx
	mov	rdi, r14
	call	transfer_entries
	test	al, al
	je	.label_421
	mov	rdi, qword ptr [rsp]
	call	free
.label_409:
	xor	ebp, ebp
.label_410:
	mov	eax, ebp
	add	rsp, 0x50
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_424:
	call	abort
.label_421:
	call	abort
	.section	.text
	.align	32
	#Procedure 0x4055da
	.globl sub_4055da
	.type sub_4055da, @function
sub_4055da:

	nop	word ptr [rax + rax]
.label_426:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x4055e5
	.globl sub_4055e5
	.type sub_4055e5, @function
sub_4055e5:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4055ef
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
	je	.label_427
	test	r14, r14
	je	.label_426
.label_427:
	xor	esi, esi
	mov	rdi, r14
	mov	rdx, rbx
	call	memset
	mov	rax, r14
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	.section	.text
	.align	32
	#Procedure 0x405620

	.globl xmalloc
	.type xmalloc, @function
xmalloc:
	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	je	.label_428
	test	rax, rax
	je	.label_429
.label_428:
	pop	rbx
	ret	
.label_429:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x40563a
	.globl sub_40563a
	.type sub_40563a, @function
sub_40563a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405640

	.globl rpl_nl_langinfo
	.type rpl_nl_langinfo, @function
rpl_nl_langinfo:
	lea	eax, [rdi - 0x27d8]
	lea	ecx, [rdi + 0x1d842]
	cmp	eax, 0xc
	cmovb	edi, ecx
	jmp	nl_langinfo
	.section	.text
	.align	32
	#Procedure 0x405657
	.globl sub_405657
	.type sub_405657, @function
sub_405657:

	nop	word ptr [rax + rax]
.label_430:
	call	abort
	.section	.text
	.align	32
	#Procedure 0x405665
	.globl sub_405665
	.type sub_405665, @function
sub_405665:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40566b
	.globl quotearg_n_custom_mem
	.type quotearg_n_custom_mem, @function
quotearg_n_custom_mem:

	sub	rsp, 0x38
	mov	rax, qword ptr [rip + label_9]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0, xmmword ptr [rip + label_10]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_11]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rsi, rsi
	je	.label_430
	test	rdx, rdx
	je	.label_430
	mov	qword ptr [rsp + 0x28], rsi
	mov	qword ptr [rsp + 0x30], rdx
	lea	rax, [rsp]
	mov	rsi, rcx
	mov	rdx, r8
	mov	rcx, rax
	call	quotearg_n_options
	add	rsp, 0x38
	ret	
	.section	.text
	.align	32
	#Procedure 0x4056d0

	.globl dir_len
	.type dir_len, @function
dir_len:
	push	r14
	push	rbx
	push	rax
	mov	rbx, rdi
	xor	r14d, r14d
	cmp	byte ptr [rbx], 0x2f
	sete	r14b
	call	last_component
	mov	rcx, rax
	sub	rcx, rbx
	nop	dword ptr [rax]
.label_432:
	mov	rax, rcx
	cmp	r14, rax
	jae	.label_431
	lea	rcx, [rax - 1]
	cmp	byte ptr [rbx + rax - 1], 0x2f
	je	.label_432
.label_431:
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	.section	.text
	.align	32
	#Procedure 0x40570b
	.globl sub_40570b
	.type sub_40570b, @function
sub_40570b:

	nop	dword ptr [rax + rax]
.label_437:
	mov	rdi, qword ptr [r14 + 0x48]
	test	rdi, rdi
	je	.label_433
.label_434:
	mov	rbx, qword ptr [rdi + 8]
	call	free
	test	rbx, rbx
	mov	rdi, rbx
	jne	.label_434
.label_433:
	mov	rdi, qword ptr [r14]
	call	free
	mov	rdi, r14
	pop	rbx
	pop	r14
	pop	r15
	jmp	free
	.section	.text
	.align	32
	#Procedure 0x40573f
	.globl sub_40573f
	.type sub_40573f, @function
sub_40573f:

	nop	word ptr cs:[rax + rax]
.label_435:
	add	r15, 0x10
.label_439:
	cmp	r15, rax
	jae	.label_437
	mov	rdi, qword ptr [r15 + 8]
	test	rdi, rdi
	je	.label_435
	nop	word ptr cs:[rax + rax]
.label_436:
	mov	rbx, qword ptr [rdi + 8]
	call	free
	test	rbx, rbx
	mov	rdi, rbx
	jne	.label_436
	mov	rax, qword ptr [r14 + 8]
	jmp	.label_435
	.section	.text
	.align	32
	#Procedure 0x405780

	.globl hash_free
	.type hash_free, @function
hash_free:
	push	r15
	push	r14
	push	rbx
	mov	r14, rdi
	cmp	qword ptr [r14 + 0x40], 0
	je	.label_438
	cmp	qword ptr [r14 + 0x20], 0
	je	.label_438
	mov	r15, qword ptr [r14]
	mov	rax, qword ptr [r14 + 8]
	jmp	.label_442
	.section	.text
	.align	32
	#Procedure 0x40579f
	.globl sub_40579f
	.type sub_40579f, @function
sub_40579f:

	nop	
.label_438:
	mov	r15, qword ptr [r14]
	mov	rax, qword ptr [r14 + 8]
	jmp	.label_439
	.section	.text
	.align	32
	#Procedure 0x4057a9
	.globl sub_4057a9
	.type sub_4057a9, @function
sub_4057a9:

	nop	
.label_440:
	add	r15, 0x10
.label_442:
	cmp	r15, rax
	jae	.label_438
	mov	rdi, qword ptr [r15]
	test	rdi, rdi
	je	.label_440
	test	r15, r15
	je	.label_440
	call	qword ptr [r14 + 0x40]
	mov	rbx, qword ptr [r15 + 8]
	jmp	.label_443
.label_441:
	mov	rdi, qword ptr [rbx]
	call	qword ptr [r14 + 0x40]
	mov	rbx, qword ptr [rbx + 8]
.label_443:
	test	rbx, rbx
	jne	.label_441
	mov	rax, qword ptr [r14 + 8]
	jmp	.label_440
	.section	.text
	.align	32
	#Procedure 0x4057e0

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
	je	.label_456
	mov	edx, OFFSET FLAT:label_447
	xor	eax, eax
	mov	rdi, r14
	mov	r8, rbx
	call	__fprintf_chk
	jmp	.label_453
.label_456:
	mov	edx, OFFSET FLAT:label_454
	xor	eax, eax
	mov	rdi, r14
	mov	rcx, rbx
	mov	r8, r9
	call	__fprintf_chk
.label_453:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_458
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
	mov	esi, OFFSET FLAT:label_455
	mov	edx, 5
	call	dcgettext
	mov	rdi, rax
	mov	rsi, r14
	call	fputs_unlocked
	cmp	r12, 9
	ja	.label_459
	jmp	qword ptr [(r12 * 8) + label_460]
.label_1227:
	add	rsp, 8
	jmp	.label_446
.label_459:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_450
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
	jmp	.label_446
.label_1228:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_445
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
.label_1229:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_451
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
.label_1230:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_448
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
.label_1231:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_462
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
	jmp	.label_446
.label_1232:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_461
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
	jmp	.label_446
.label_1233:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_444
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
	jmp	.label_446
.label_1234:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_449
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
	jmp	.label_446
.label_1236:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_452
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
	jmp	.label_446
.label_1235:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_457
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
.label_446:
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	32
	#Procedure 0x405b38
	.globl sub_405b38
	.type sub_405b38, @function
sub_405b38:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405b40
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
	je	.label_463
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
.label_463:
	call	abort
	.section	.text
	.align	32
	#Procedure 0x405ba1
	.globl sub_405ba1
	.type sub_405ba1, @function
sub_405ba1:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405bb0

	.globl die_pipe
	.type die_pipe, @function
die_pipe:
	push	rax
	mov	edi, 0xd
	call	raise
	mov	edi, 1
	call	exit
	.section	.text
	.align	32
	#Procedure 0x405bc5
	.globl sub_405bc5
	.type sub_405bc5, @function
sub_405bc5:

	nop	dword ptr [rax]
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405bd0

	.globl hard_locale
	.type hard_locale, @function
hard_locale:
	push	rbx
	xor	esi, esi
	call	setlocale
	mov	bl, 1
	test	rax, rax
	je	.label_465
	cmp	byte ptr [rax], 0x43
	jne	.label_467
	cmp	byte ptr [rax + 1], 0
	je	.label_464
.label_467:
	mov	esi, OFFSET FLAT:label_466
	mov	rdi, rax
	call	strcmp
	test	eax, eax
	jne	.label_465
.label_464:
	xor	ebx, ebx
.label_465:
	mov	eax, ebx
	pop	rbx
	ret	
	.section	.text
	.align	32
	#Procedure 0x405c01
	.globl sub_405c01
	.type sub_405c01, @function
sub_405c01:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405c10

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
	je	.label_475
	mov	rsi, qword ptr [r13 + 0x10]
	mov	rdi, r14
	call	qword ptr [r13 + 0x30]
	mov	rbp, rax
	cmp	rbp, qword ptr [r13 + 0x10]
	jae	.label_475
	mov	rbx, qword ptr [r13]
	shl	rbp, 4
	lea	r12, [rbx + rbp]
	mov	rsi, qword ptr [rbx + rbp]
	test	rsi, rsi
	je	.label_473
	cmp	rsi, r14
	je	.label_493
	mov	rdi, r14
	call	qword ptr [r13 + 0x38]
	test	al, al
	je	.label_496
	mov	rax, qword ptr [r12]
.label_492:
	test	rax, rax
	jne	.label_498
	jmp	.label_473
.label_493:
	mov	rax, r14
.label_498:
	xor	ebp, ebp
	test	r15, r15
	je	.label_470
	mov	qword ptr [r15], rax
	jmp	.label_470
.label_496:
	mov	rax, qword ptr [rbx + rbp + 8]
	test	rax, rax
	je	.label_473
	lea	rbp, [rbx + rbp + 8]
	nop	word ptr [rax + rax]
.label_502:
	mov	rsi, qword ptr [rax]
	cmp	rsi, r14
	je	.label_479
	mov	rdi, r14
	call	qword ptr [r13 + 0x38]
	mov	rbp, qword ptr [rbp]
	test	al, al
	jne	.label_482
	mov	rax, qword ptr [rbp + 8]
	add	rbp, 8
	test	rax, rax
	jne	.label_502
.label_473:
	mov	rcx, qword ptr [r13 + 0x10]
	mov	rax, qword ptr [r13 + 0x18]
	mov	edx, eax
	and	edx, 1
	test	rax, rax
	js	.label_489
	cvtsi2ss	xmm1, rax
	jmp	.label_495
.label_489:
	shr	rax, 1
	or	rdx, rax
	cvtsi2ss	xmm1, rdx
	addss	xmm1, xmm1
.label_495:
	mov	rax, qword ptr [r13 + 0x28]
	movss	xmm2, dword ptr [rax + 8]
	mov	edx, ecx
	and	edx, 1
	test	rcx, rcx
	js	.label_500
	cvtsi2ss	xmm0, rcx
	jmp	.label_472
.label_500:
	shr	rcx, 1
	or	rdx, rcx
	cvtsi2ss	xmm0, rdx
	addss	xmm0, xmm0
.label_472:
	movaps	xmm3, xmm2
	mulss	xmm3, xmm0
	ucomiss	xmm1, xmm3
	jbe	.label_478
	mov	ecx, OFFSET FLAT:default_tuning
	cmp	rax, rcx
	je	.label_481
	ucomiss	xmm2, dword ptr [rip + label_483]
	jbe	.label_484
	movss	xmm3, dword ptr [rip + label_488]
	ucomiss	xmm3, xmm2
	jbe	.label_484
	movss	xmm3, dword ptr [rax + 0xc]
	ucomiss	xmm3, dword ptr [rip + label_490]
	jbe	.label_484
	movss	xmm3, dword ptr [rax]
	xorps	xmm4, xmm4
	ucomiss	xmm3, xmm4
	jb	.label_484
	addss	xmm3, dword ptr [rip + label_483]
	ucomiss	xmm2, xmm3
	jbe	.label_484
	movss	xmm4, dword ptr [rax + 4]
	movss	xmm5, dword ptr [rip + label_485]
	ucomiss	xmm5, xmm4
	jb	.label_484
	ucomiss	xmm4, xmm3
	ja	.label_471
.label_484:
	mov	qword ptr [r13 + 40], OFFSET FLAT:default_tuning
	mov	eax, OFFSET FLAT:default_tuning
	movss	xmm2, dword ptr [rip + label_486]
	jmp	.label_471
.label_481:
	mov	eax, OFFSET FLAT:default_tuning
.label_471:
	movaps	xmm3, xmm2
	mulss	xmm3, xmm0
	ucomiss	xmm1, xmm3
	jbe	.label_478
	cmp	byte ptr [rax + 0x10], 0
	mulss	xmm0, dword ptr [rax + 0xc]
	jne	.label_476
	mulss	xmm0, xmm2
.label_476:
	mov	ebp, 0xffffffff
	ucomiss	xmm0, dword ptr [rip + label_408]
	jae	.label_470
	movss	xmm1, dword ptr [rip + label_407]
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
	je	.label_470
	mov	rsi, qword ptr [r13 + 0x10]
	mov	rdi, r14
	call	qword ptr [r13 + 0x30]
	mov	rbp, rax
	cmp	rbp, qword ptr [r13 + 0x10]
	jae	.label_475
	mov	rbx, qword ptr [r13]
	shl	rbp, 4
	lea	r12, [rbx + rbp]
	mov	rsi, qword ptr [rbx + rbp]
	test	rsi, rsi
	je	.label_478
	cmp	rsi, r14
	mov	rax, r14
	je	.label_480
	mov	rdi, r14
	call	qword ptr [r13 + 0x38]
	test	al, al
	je	.label_491
	mov	rax, qword ptr [r12]
.label_480:
	test	rax, rax
	jne	.label_494
.label_478:
	cmp	qword ptr [r12], 0
	je	.label_497
	mov	rax, qword ptr [r13 + 0x48]
	test	rax, rax
	je	.label_487
	mov	rcx, qword ptr [rax + 8]
	mov	qword ptr [r13 + 0x48], rcx
	jmp	.label_501
.label_497:
	mov	qword ptr [r12], r14
	movdqu	xmm0, xmmword ptr [r13 + 0x18]
	paddq	xmm0, xmmword ptr [rip + label_468]
	movdqu	xmmword ptr [r13 + 0x18], xmm0
	jmp	.label_469
.label_487:
	mov	edi, 0x10
	call	malloc
	mov	ebp, 0xffffffff
	test	rax, rax
	je	.label_470
.label_501:
	mov	qword ptr [rax], r14
	mov	rcx, qword ptr [r12 + 8]
	mov	qword ptr [rax + 8], rcx
	mov	qword ptr [r12 + 8], rax
	inc	qword ptr [r13 + 0x20]
.label_469:
	mov	ebp, 1
.label_470:
	mov	eax, ebp
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_479:
	mov	rax, r14
	jmp	.label_492
.label_482:
	mov	rax, qword ptr [rbp]
	jmp	.label_492
.label_491:
	mov	rax, qword ptr [rbx + rbp + 8]
	test	rax, rax
	je	.label_478
	lea	rbp, [rbx + rbp + 8]
.label_477:
	mov	rsi, qword ptr [rax]
	cmp	rsi, r14
	je	.label_499
	mov	rdi, r14
	call	qword ptr [r13 + 0x38]
	mov	rbp, qword ptr [rbp]
	test	al, al
	jne	.label_474
	mov	rax, qword ptr [rbp + 8]
	add	rbp, 8
	test	rax, rax
	jne	.label_477
	jmp	.label_478
.label_499:
	mov	rax, r14
	jmp	.label_480
.label_474:
	mov	rax, qword ptr [rbp]
	jmp	.label_480
.label_475:
	call	abort
.label_494:
	call	abort
	.section	.text
	.align	32
	#Procedure 0x405f41
	.globl sub_405f41
	.type sub_405f41, @function
sub_405f41:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405f50
	.globl set_quoting_style
	.type set_quoting_style, @function
set_quoting_style:

	test	rdi, rdi
	mov	eax, OFFSET FLAT:default_quoting_options
	cmovne	rax, rdi
	mov	dword ptr [rax], esi
	ret	
	.section	.text
	.align	32
	#Procedure 0x405f5f
	.globl sub_405f5f
	.type sub_405f5f, @function
sub_405f5f:

	nop	
.label_503:
	push	rax
	call	abort
	.section	.text
	.align	32
	#Procedure 0x405f66
	.globl sub_405f66
	.type sub_405f66, @function
sub_405f66:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405f6b
	.globl set_custom_quoting
	.type set_custom_quoting, @function
set_custom_quoting:

	test	rdi, rdi
	mov	eax, OFFSET FLAT:default_quoting_options
	cmovne	rax, rdi
	mov	dword ptr [rax], 0xa
	test	rsi, rsi
	je	.label_503
	test	rdx, rdx
	je	.label_503
	mov	qword ptr [rax + 0x28], rsi
	mov	qword ptr [rax + 0x30], rdx
	ret	
.label_506:
	call	xalloc_die
.label_507:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x405f9a
	.globl sub_405f9a
	.type sub_405f9a, @function
sub_405f9a:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405fa6
	.globl x2realloc
	.type x2realloc, @function
x2realloc:

	push	rbx
	mov	rax, qword ptr [rsi]
	test	rdi, rdi
	je	.label_504
	movabs	rcx, 0x5555555555555554
	cmp	rax, rcx
	jae	.label_507
	mov	rbx, rax
	shr	rbx, 1
	add	rbx, rax
	inc	rbx
	mov	qword ptr [rsi], rbx
	jne	.label_508
	call	free
	xor	eax, eax
	jmp	.label_505
.label_504:
	test	rax, rax
	mov	ebx, 0x80
	cmovne	rbx, rax
	test	rbx, rbx
	js	.label_506
	mov	qword ptr [rsi], rbx
.label_508:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_505
	test	rax, rax
	je	.label_506
.label_505:
	pop	rbx
	ret	
	.section	.text
	.align	32
	#Procedure 0x406000

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
	mov	rbx, rsi
	mov	r15, rdi
	call	strlen
	mov	r12, rax
	mov	qword ptr [rsp + 0x18], rbx
	mov	rbp, qword ptr [rbx]
	test	rbp, rbp
	je	.label_517
	test	r14, r14
	je	.label_516
	mov	qword ptr [rsp + 8], -1
	xor	eax, eax
	mov	qword ptr [rsp + 0x10], rax
	mov	qword ptr [rsp + 0x20], r14
	xor	ebx, ebx
	nop	word ptr cs:[rax + rax]
.label_509:
	mov	rdi, rbp
	mov	rsi, r15
	mov	rdx, r12
	call	strncmp
	test	eax, eax
	jne	.label_515
	mov	rdi, rbp
	call	strlen
	cmp	rax, r12
	je	.label_514
	mov	rax, qword ptr [rsp + 8]
	cmp	rax, -1
	je	.label_510
	mov	rdi, rax
	imul	rdi, r13
	add	rdi, qword ptr [rsp + 0x20]
	mov	rsi, r14
	mov	rdx, r13
	call	memcmp
	test	eax, eax
	je	.label_515
	mov	al, 1
	mov	qword ptr [rsp + 0x10], rax
	jmp	.label_515
.label_510:
	mov	qword ptr [rsp + 8], rbx
	nop	word ptr [rax + rax]
.label_515:
	mov	rax, qword ptr [rsp + 0x18]
	mov	rbp, qword ptr [rax + rbx*8 + 8]
	inc	rbx
	add	r14, r13
	test	rbp, rbp
	jne	.label_509
	jmp	.label_513
.label_517:
	mov	qword ptr [rsp + 8], -1
	xor	eax, eax
	mov	qword ptr [rsp + 0x10], rax
	jmp	.label_513
.label_516:
	mov	qword ptr [rsp + 8], -1
	xor	eax, eax
	mov	qword ptr [rsp + 0x10], rax
	xor	ebx, ebx
	nop	dword ptr [rax + rax]
.label_512:
	mov	rdi, rbp
	mov	rsi, r15
	mov	rdx, r12
	call	strncmp
	test	eax, eax
	jne	.label_511
	mov	rdi, rbp
	call	strlen
	cmp	rax, r12
	je	.label_514
	mov	rax, qword ptr [rsp + 8]
	cmp	rax, -1
	cmove	rax, rbx
	mov	qword ptr [rsp + 8], rax
	je	.label_511
	mov	al, 1
	mov	qword ptr [rsp + 0x10], rax
	nop	word ptr [rax + rax]
.label_511:
	mov	rax, qword ptr [rsp + 0x18]
	mov	rbp, qword ptr [rax + rbx*8 + 8]
	inc	rbx
	test	rbp, rbp
	jne	.label_512
.label_513:
	mov	rax, qword ptr [rsp + 0x10]
	test	al, 1
	mov	rbx, -2
	cmove	rbx, qword ptr [rsp + 8]
.label_514:
	mov	rax, rbx
	add	rsp, 0x28
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x406178
	.globl sub_406178
	.type sub_406178, @function
sub_406178:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406180

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
	mov	esi, OFFSET FLAT:label_518
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stderr]
	mov	rdi, rax
	call	fputs_unlocked
	mov	rbx, qword ptr [rbp]
	test	rbx, rbx
	je	.label_523
	xor	r13d, r13d
	xor	r15d, r15d
	mov	qword ptr [rsp], rbp
	nop	dword ptr [rax + rax]
.label_520:
	test	r15, r15
	je	.label_522
	mov	rdi, r13
	mov	rsi, r12
	mov	rdx, r14
	call	memcmp
	test	eax, eax
	je	.label_519
.label_522:
	mov	r13, qword ptr [rip + stderr]
	mov	rdi, rbx
	call	quote
	mov	rcx, rax
	mov	esi, 1
	mov	edx, OFFSET FLAT:label_524
	xor	eax, eax
	mov	rdi, r13
	call	__fprintf_chk
	mov	r13, r12
	jmp	.label_521
	.section	.text
	.align	32
	#Procedure 0x406212
	.globl sub_406212
	.type sub_406212, @function
sub_406212:

	nop	word ptr cs:[rax + rax]
.label_519:
	mov	rbp, qword ptr [rip + stderr]
	mov	rdi, rbx
	call	quote
	mov	rcx, rax
	mov	esi, 1
	mov	edx, OFFSET FLAT:label_525
	xor	eax, eax
	mov	rdi, rbp
	mov	rbp, qword ptr [rsp]
	call	__fprintf_chk
.label_521:
	mov	rbx, qword ptr [rbp + r15*8 + 8]
	inc	r15
	add	r12, r14
	test	rbx, rbx
	jne	.label_520
.label_523:
	mov	rdi, qword ptr [rip + stderr]
	mov	rax, qword ptr [rdi + 0x28]
	cmp	rax, qword ptr [rdi + 0x30]
	jae	.label_526
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
.label_526:
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
	.align	32
	#Procedure 0x4062a1
	.globl sub_4062a1
	.type sub_4062a1, @function
sub_4062a1:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4062b0

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
	jae	.label_535
	mov	qword ptr [rsp + 8], rcx
	call	__errno_location
	mov	r15, rax
	mov	dword ptr [r15], 0
	call	__ctype_b_loc
	mov	rcx, qword ptr [rax]
	mov	rdx, rbx
	nop	word ptr cs:[rax + rax]
.label_527:
	movzx	eax, byte ptr [rdx]
	inc	rdx
	test	byte ptr [rcx + rax*2 + 1], 0x20
	jne	.label_527
	test	rbp, rbp
	lea	rsi, [rsp + 0x20]
	cmovne	rsi, rbp
	mov	r13d, 4
	cmp	al, 0x2d
	je	.label_530
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
	je	.label_537
	mov	eax, dword ptr [r15]
	test	eax, eax
	je	.label_545
	cmp	eax, 0x22
	jne	.label_530
	mov	ebp, 1
.label_545:
	test	r14, r14
	mov	r15d, ebp
	jne	.label_548
	jmp	.label_531
.label_537:
	test	r14, r14
	je	.label_530
	movsx	esi, byte ptr [rbx]
	test	esi, esi
	je	.label_530
	mov	rdi, r14
	mov	rbx, rcx
	call	strchr
	mov	rcx, rbx
	xor	r15d, r15d
	mov	r12d, 1
	test	rax, rax
	je	.label_530
.label_548:
	movsx	r13d, byte ptr [rcx]
	test	r13d, r13d
	je	.label_531
	mov	qword ptr [rsp + 0x10], rcx
	mov	rdi, r14
	mov	esi, r13d
	call	strchr
	test	rax, rax
	je	.label_538
	mov	ecx, 1
	mov	esi, 0x400
	lea	eax, [r13 - 0x45]
	cmp	eax, 0x2f
	ja	.label_533
	movabs	rdx, 0x814400308945
	bt	rdx, rax
	jae	.label_533
	mov	esi, 0x30
	mov	rdi, r14
	call	strchr
	mov	ecx, 1
	mov	esi, 0x400
	test	rax, rax
	je	.label_533
	mov	rax, qword ptr [rsp + 0x10]
	movsx	eax, byte ptr [rax + 1]
	mov	ecx, 1
	mov	esi, 0x400
	cmp	eax, 0x42
	je	.label_528
	cmp	eax, 0x44
	je	.label_528
	cmp	eax, 0x69
	jne	.label_533
	xor	eax, eax
	mov	rcx, qword ptr [rsp + 0x10]
	cmp	byte ptr [rcx + 2], 0x42
	sete	al
	lea	rcx, [rax + rax + 1]
	mov	esi, 0x400
	jmp	.label_533
.label_528:
	mov	ecx, 2
	mov	esi, 0x3e8
.label_533:
	add	r13d, -0x42
	cmp	r13d, 0x35
	ja	.label_538
	xor	eax, eax
	jmp	qword ptr [(r13 * 8) + label_547]
.label_1218:
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
	jmp	.label_539
.label_538:
	mov	rax, qword ptr [rsp + 8]
	mov	qword ptr [rax], r12
	or	r15d, 2
	jmp	.label_536
.label_1219:
	mov	rdi, -1
	mov	rax, -1
	xor	edx, edx
	div	rsi
	imul	rsi, r12
	cmp	rax, r12
	cmovb	rsi, rdi
	sbb	eax, eax
	jmp	.label_540
.label_1220:
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
	jmp	.label_532
.label_1222:
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
	jmp	.label_534
.label_1216:
	xor	eax, eax
	mov	rdx, r12
	shr	rdx, 0x36
	setne	al
	shl	r12, 0xa
	jmp	.label_546
.label_1217:
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
	jmp	.label_532
.label_1221:
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
.label_534:
	or	dl, r10b
.label_539:
	or	dl, bl
.label_532:
	and	dl, 1
	movzx	eax, dl
	mov	r12, rsi
	jmp	.label_529
.label_1223:
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
	jmp	.label_541
.label_1224:
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
.label_541:
	movzx	eax, dl
.label_540:
	and	eax, 1
	mov	r12, rsi
	jmp	.label_529
.label_1225:
	xor	eax, eax
	mov	rdx, r12
	shr	rdx, 0x37
	setne	al
	shl	r12, 9
.label_546:
	cmp	rdx, 1
	sbb	rdx, rdx
	not	rdx
	or	r12, rdx
	jmp	.label_529
.label_1226:
	lea	rax, [r12 + r12]
	test	r12, r12
	mov	rdx, -1
	cmovns	rdx, rax
	shr	r12, 0x3f
	mov	eax, r12d
	mov	r12, rdx
.label_529:
	or	eax, r15d
	mov	rdi, qword ptr [rsp + 0x10]
	lea	rdx, [rdi + rcx]
	mov	rsi, qword ptr [rsp + 0x18]
	mov	qword ptr [rsi], rdx
	lea	r15d, [rax + 2]
	cmp	byte ptr [rdi + rcx], 0
	cmove	r15d, eax
.label_531:
	mov	rax, qword ptr [rsp + 8]
	mov	qword ptr [rax], r12
.label_536:
	mov	r13d, r15d
.label_530:
	mov	eax, r13d
	add	rsp, 0x28
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_535:
	mov	edi, OFFSET FLAT:label_542
	mov	esi, OFFSET FLAT:label_543
	mov	edx, 0x54
	mov	ecx, OFFSET FLAT:label_544
	call	__assert_fail
	.section	.text
	.align	32
	#Procedure 0x4068e1
	.globl sub_4068e1
	.type sub_4068e1, @function
sub_4068e1:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4068f0
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
	.align	32
	#Procedure 0x406965
	.globl sub_406965
	.type sub_406965, @function
sub_406965:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406970

	.globl rpl_fclose
	.type rpl_fclose, @function
rpl_fclose:
	push	rbp
	push	r14
	push	rbx
	mov	rbx, rdi
	call	fileno
	test	eax, eax
	js	.label_549
	mov	rdi, rbx
	call	__freading
	test	eax, eax
	je	.label_551
	mov	rdi, rbx
	call	fileno
	xor	esi, esi
	mov	edx, 1
	mov	edi, eax
	call	lseek
	cmp	rax, -1
	je	.label_549
.label_551:
	mov	rdi, rbx
	call	rpl_fflush
	test	eax, eax
	je	.label_549
	call	__errno_location
	mov	r14, rax
	mov	ebp, dword ptr [r14]
	mov	rdi, rbx
	call	fclose
	test	ebp, ebp
	je	.label_550
	mov	dword ptr [r14], ebp
	mov	eax, 0xffffffff
.label_550:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
.label_549:
	mov	rdi, rbx
	pop	rbx
	pop	r14
	pop	rbp
	jmp	fclose
	.section	.text
	.align	32
	#Procedure 0x4069e4
	.globl sub_4069e4
	.type sub_4069e4, @function
sub_4069e4:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4069f0

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
	jne	.label_552
	mov	rax, qword ptr [rbx + 0x28]
	cmp	rax, qword ptr [rbx + 0x20]
	jne	.label_552
	cmp	qword ptr [rbx + 0x48], 0
	je	.label_553
.label_552:
	mov	rdi, rbx
	mov	rsi, rbp
	mov	edx, r14d
	pop	rbx
	pop	r14
	pop	rbp
	jmp	fseeko
.label_553:
	mov	rdi, rbx
	call	fileno
	mov	edi, eax
	mov	rsi, rbp
	mov	edx, r14d
	call	lseek
	mov	rcx, rax
	mov	eax, 0xffffffff
	cmp	rcx, -1
	je	.label_554
	and	byte ptr [rbx], 0xef
	mov	qword ptr [rbx + 0x90], rcx
	xor	eax, eax
.label_554:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x406a5e
	.globl sub_406a5e
	.type sub_406a5e, @function
sub_406a5e:

	nop	
	.section	.text
	.align	32
	#Procedure 0x406a60

	.globl open_safer
	.type open_safer, @function
open_safer:
	sub	rsp, 0xd8
	test	al, al
	je	.label_555
	movaps	xmmword ptr [rsp + 0x50], xmm0
	movaps	xmmword ptr [rsp + 0x60], xmm1
	movaps	xmmword ptr [rsp + 0x70], xmm2
	movaps	xmmword ptr [rsp + 0x80], xmm3
	movaps	xmmword ptr [rsp + 0x90], xmm4
	movaps	xmmword ptr [rsp + 0xa0], xmm5
	movaps	xmmword ptr [rsp + 0xb0], xmm6
	movaps	xmmword ptr [rsp + 0xc0], xmm7
.label_555:
	mov	qword ptr [rsp + 0x48], r9
	mov	qword ptr [rsp + 0x40], r8
	mov	qword ptr [rsp + 0x38], rcx
	mov	qword ptr [rsp + 0x30], rdx
	xor	edx, edx
	test	sil, 0x40
	je	.label_557
	lea	rax, [rsp + 0x20]
	mov	qword ptr [rsp + 0x10], rax
	lea	rax, [rsp + 0xe0]
	mov	qword ptr [rsp + 8], rax
	mov	dword ptr [rsp + 4], 0x30
	mov	dword ptr [rsp], 0x10
	movsxd	rcx, dword ptr [rsp]
	cmp	rcx, 0x28
	ja	.label_558
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0x10]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp], ecx
	jmp	.label_556
.label_558:
	mov	rax, qword ptr [rsp + 8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 8], rcx
.label_556:
	mov	edx, dword ptr [rax]
.label_557:
	xor	eax, eax
	call	open
	mov	edi, eax
	call	fd_safer
	add	rsp, 0xd8
	ret	
	.section	.text
	.align	32
	#Procedure 0x406b24
	.globl sub_406b24
	.type sub_406b24, @function
sub_406b24:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406b30
	.globl hash_table_ok
	.type hash_table_ok, @function
hash_table_ok:

	mov	rax, qword ptr [rdi]
	mov	r9, qword ptr [rdi + 8]
	xor	r10d, r10d
	cmp	rax, r9
	mov	ecx, 0
	jae	.label_560
	mov	rcx, rax
	not	rcx
	add	r9, rcx
	shr	r9, 4
	lea	rsi, [r9 + 1]
	mov	r8d, esi
	and	r8d, 1
	xor	ecx, ecx
	test	r9, r9
	je	.label_561
	sub	rsi, r8
	xor	ecx, ecx
	xor	r10d, r10d
	nop	
.label_567:
	cmp	qword ptr [rax], 0
	je	.label_568
	mov	rdx, rax
	nop	dword ptr [rax]
.label_559:
	inc	rcx
	mov	rdx, qword ptr [rdx + 8]
	test	rdx, rdx
	jne	.label_559
	inc	r10
.label_568:
	cmp	qword ptr [rax + 0x10], 0
	je	.label_562
	lea	rdx, [rax + 0x10]
	nop	word ptr [rax + rax]
.label_565:
	inc	rcx
	mov	rdx, qword ptr [rdx + 8]
	test	rdx, rdx
	jne	.label_565
	inc	r10
.label_562:
	add	rax, 0x20
	add	rsi, -2
	jne	.label_567
	jmp	.label_569
.label_561:
	xor	r10d, r10d
.label_569:
	test	r8, r8
	je	.label_560
	cmp	qword ptr [rax], 0
	je	.label_560
	nop	dword ptr [rax]
.label_563:
	inc	rcx
	mov	rax, qword ptr [rax + 8]
	test	rax, rax
	jne	.label_563
	inc	r10
.label_560:
	cmp	r10, qword ptr [rdi + 0x18]
	jne	.label_564
	mov	al, 1
	cmp	rcx, qword ptr [rdi + 0x20]
	je	.label_566
.label_564:
	xor	eax, eax
.label_566:
	ret	
	.section	.text
	.align	32
	#Procedure 0x406bf0

	.globl hash_get_n_entries
	.type hash_get_n_entries, @function
hash_get_n_entries:
	mov	rax, qword ptr [rdi + 0x20]
	ret	
	.section	.text
	.align	32
	#Procedure 0x406bf5
	.globl sub_406bf5
	.type sub_406bf5, @function
sub_406bf5:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406c00
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
	.align	32
	#Procedure 0x406c33
	.globl sub_406c33
	.type sub_406c33, @function
sub_406c33:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406c40

	.globl wd_hasher
	.type wd_hasher, @function
wd_hasher:
	movsxd	rax, dword ptr [rdi + 0x44]
	xor	edx, edx
	div	rsi
	mov	rax, rdx
	ret	
	.section	.text
	.align	32
	#Procedure 0x406c4d
	.globl sub_406c4d
	.type sub_406c4d, @function
sub_406c4d:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x406c50

	.globl raw_comparator
	.type raw_comparator, @function
raw_comparator:
	cmp	rdi, rsi
	sete	al
	ret	
	.section	.text
	.align	32
	#Procedure 0x406c57
	.globl sub_406c57
	.type sub_406c57, @function
sub_406c57:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406c60
	.globl quotearg_free
	.type quotearg_free, @function
quotearg_free:

	push	r15
	push	r14
	push	rbx
	mov	r14, qword ptr [rip + slotvec]
	cmp	dword ptr [rip + nslots],  2
	jl	.label_570
	lea	r15, [r14 + 0x18]
	mov	ebx, 1
	nop	
.label_572:
	mov	rdi, qword ptr [r15]
	call	free
	inc	rbx
	movsxd	rax, dword ptr [rip + nslots]
	add	r15, 0x10
	cmp	rbx, rax
	jl	.label_572
.label_570:
	mov	rdi, qword ptr [r14 + 8]
	mov	eax, OFFSET FLAT:slot0
	cmp	rdi, rax
	je	.label_573
	call	free
	mov	qword ptr [rip + slotvec0],  0x100
	mov	qword ptr [rip + label_574], OFFSET FLAT:slot0
.label_573:
	mov	eax, OFFSET FLAT:slotvec0
	cmp	r14, rax
	je	.label_571
	mov	rdi, r14
	call	free
	mov	qword ptr [rip + slotvec], OFFSET FLAT:slotvec0
.label_571:
	mov	dword ptr [rip + nslots],  1
	pop	rbx
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	32
	#Procedure 0x406cf1
	.globl sub_406cf1
	.type sub_406cf1, @function
sub_406cf1:

	nop	word ptr cs:[rax + rax]
.label_578:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_575
	jmp	.label_576
	.section	.text
	.align	32
	#Procedure 0x406d10

	.globl xlseek
	.type xlseek, @function
xlseek:
	push	rbp
	push	r15
	push	r14
	push	rbx
	sub	rsp, 0x18
	mov	r15, rcx
	mov	ebp, edx
	mov	rbx, rsi
	call	lseek
	test	rax, rax
	js	.label_579
	add	rsp, 0x18
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_579:
	lea	rsi, [rsp]
	mov	rdi, rbx
	call	offtostr
	mov	r14, rax
	cmp	ebp, 2
	je	.label_578
	cmp	ebp, 1
	je	.label_581
	test	ebp, ebp
	jne	.label_577
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_582
	jmp	.label_576
.label_581:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_580
.label_576:
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	xor	edi, edi
	mov	esi, 3
	mov	rdx, r15
	call	quotearg_n_style_colon
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, rbp
	mov	r8, r14
	call	error
	mov	edi, 1
	call	exit
.label_577:
	call	abort
	.section	.text
	.align	32
	#Procedure 0x406db1
	.globl sub_406db1
	.type sub_406db1, @function
sub_406db1:

	nop	word ptr cs:[rax + rax]
.label_584:
	inc	rcx
	mov	rax, rcx
	ret	
	.section	.text
	.align	32
	#Procedure 0x406dc7
	.globl sub_406dc7
	.type sub_406dc7, @function
sub_406dc7:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x406dca

	.globl dtotimespec
	.type dtotimespec, @function
dtotimespec:
	movabs	rcx, 0x7fffffffffffffff
	xor	edx, edx
	ucomisd	xmm0, qword ptr [rip + label_583]
	jbe	.label_584
	mov	edx, 0x3b9ac9ff
	movsd	xmm1, qword ptr [rip + label_585]
	ucomisd	xmm1, xmm0
	jbe	.label_586
	cvttsd2si	rsi, xmm0
	xorps	xmm1, xmm1
	cvtsi2sd	xmm1, rsi
	subsd	xmm0, xmm1
	mulsd	xmm0, qword ptr [rip + label_587]
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
.label_586:
	mov	rax, rcx
	ret	
	.section	.text
	.align	32
	#Procedure 0x406e70
	.globl hash_get_first
	.type hash_get_first, @function
hash_get_first:

	xor	eax, eax
	cmp	qword ptr [rdi + 0x20], 0
	je	.label_588
	mov	rcx, qword ptr [rdi]
	mov	rdx, qword ptr [rdi + 8]
	jmp	.label_591
	.section	.text
	.align	32
	#Procedure 0x406e82
	.globl sub_406e82
	.type sub_406e82, @function
sub_406e82:

	nop	word ptr cs:[rax + rax]
.label_589:
	push	rax
	call	abort
	.section	.text
	.align	32
	#Procedure 0x406e96
	.globl sub_406e96
	.type sub_406e96, @function
sub_406e96:

	nop	dword ptr [rax + rax]
.label_590:
	add	rcx, 0x10
.label_591:
	cmp	rcx, rdx
	jae	.label_589
	mov	rax, qword ptr [rcx]
	test	rax, rax
	je	.label_590
.label_588:
	ret	
	.section	.text
	.align	32
	#Procedure 0x406eb0
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
	.align	32
	#Procedure 0x406f71
	.globl sub_406f71
	.type sub_406f71, @function
sub_406f71:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406f80
	.globl hash_string
	.type hash_string, @function
hash_string:

	mov	al, byte ptr [rdi]
	xor	edx, edx
	test	al, al
	je	.label_592
	inc	rdi
	xor	edx, edx
	nop	dword ptr [rax]
.label_593:
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
	jne	.label_593
.label_592:
	mov	rax, rdx
	ret	
	.section	.text
	.align	32
	#Procedure 0x406fb3
	.globl sub_406fb3
	.type sub_406fb3, @function
sub_406fb3:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406fc0

	.globl last_component
	.type last_component, @function
last_component:
	dec	rdi
	nop	word ptr cs:[rax + rax]
.label_594:
	movzx	edx, byte ptr [rdi + 1]
	inc	rdi
	cmp	dl, 0x2f
	je	.label_594
	xor	esi, esi
	mov	rax, rdi
	jmp	.label_597
	.section	.text
	.align	32
	#Procedure 0x406fe3
	.globl sub_406fe3
	.type sub_406fe3, @function
sub_406fe3:

	nop	word ptr cs:[rax + rax]
.label_596:
	mov	rax, rdi
	ret	
	.section	.text
	.align	32
	#Procedure 0x406ff4
	.globl sub_406ff4
	.type sub_406ff4, @function
sub_406ff4:

	nop	dword ptr [rax]
.label_595:
	movzx	edx, byte ptr [rax + 1]
	inc	rax
	mov	sil, cl
.label_597:
	mov	cl, 1
	cmp	dl, 0x2f
	je	.label_595
	test	dl, dl
	je	.label_596
	mov	ecx, esi
	and	cl, 1
	je	.label_598
	xor	esi, esi
.label_598:
	test	cl, cl
	cmovne	rdi, rax
	mov	ecx, esi
	jmp	.label_595
	.section	.text
	.align	32
	#Procedure 0x407020

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
	ja	.label_599
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
	jmp	.label_600
.label_599:
	mov	eax, ebx
.label_600:
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x407061
	.globl sub_407061
	.type sub_407061, @function
sub_407061:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407070
	.globl quote_n_mem
	.type quote_n_mem, @function
quote_n_mem:

	mov	ecx, OFFSET FLAT:quote_quoting_options
	jmp	quotearg_n_options
	.section	.text
	.align	32
	#Procedure 0x40707a
	.globl sub_40707a
	.type sub_40707a, @function
sub_40707a:

	nop	word ptr [rax + rax]
.label_605:
	cmp	byte ptr [rbx], 0x60
	mov	ecx, OFFSET FLAT:label_601
	mov	eax, OFFSET FLAT:label_602
	jmp	.label_603
	.section	.text
	.align	32
	#Procedure 0x40708f
	.globl sub_40708f
	.type sub_40708f, @function
sub_40708f:

	nop	word ptr cs:[rax + rax]
.label_610:
	movsx	ecx, byte ptr [rax + 1]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x42
	jne	.label_604
	cmp	byte ptr [rax + 2], 0x31
	jne	.label_604
	cmp	byte ptr [rax + 3], 0x38
	jne	.label_604
	cmp	byte ptr [rax + 4], 0x30
	jne	.label_604
	cmp	byte ptr [rax + 5], 0x33
	jne	.label_604
	cmp	byte ptr [rax + 6], 0x30
	jne	.label_604
	cmp	byte ptr [rax + 7], 0
	je	.label_605
.label_604:
	cmp	ebp, 9
	mov	ecx, OFFSET FLAT:label_606
	mov	eax, OFFSET FLAT:label_607
.label_603:
	cmove	rax, rcx
.label_611:
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4070e2

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
	jne	.label_611
	call	locale_charset
	movsx	ecx, byte ptr [rax]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x47
	je	.label_610
	cmp	ecx, 0x55
	jne	.label_604
	movsx	ecx, byte ptr [rax + 1]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x54
	jne	.label_604
	movsx	ecx, byte ptr [rax + 2]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x46
	jne	.label_604
	cmp	byte ptr [rax + 3], 0x2d
	jne	.label_604
	cmp	byte ptr [rax + 4], 0x38
	jne	.label_604
	cmp	byte ptr [rax + 5], 0
	jne	.label_604
	cmp	byte ptr [rbx], 0x60
	mov	ecx, OFFSET FLAT:label_608
	mov	eax, OFFSET FLAT:label_609
	jmp	.label_603
	.section	.text
	.align	32
	#Procedure 0x407150

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
	je	.label_612
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
.label_612:
	call	abort
	.section	.text
	.align	32
	#Procedure 0x4071bc
	.globl sub_4071bc
	.type sub_4071bc, @function
sub_4071bc:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4071c0

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
	je	.label_613
	test	ecx, ecx
	cmove	rbx, qword ptr [rsp + 8]
	mov	rax, rbx
.label_613:
	add	rsp, 0x10
	pop	rbx
	ret	
	.section	.text
	.align	32
	#Procedure 0x4071ec
	.globl sub_4071ec
	.type sub_4071ec, @function
sub_4071ec:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4071f0
	.globl hash_get_entries
	.type hash_get_entries, @function
hash_get_entries:

	mov	r9, qword ptr [rdi]
	mov	r8, qword ptr [rdi + 8]
	xor	eax, eax
	cmp	r9, r8
	jae	.label_614
	xor	eax, eax
.label_616:
	cmp	qword ptr [r9], 0
	je	.label_615
	test	r9, r9
	je	.label_615
	mov	r8, r9
	nop	
.label_617:
	cmp	rax, rdx
	jae	.label_614
	mov	rcx, qword ptr [r8]
	mov	qword ptr [rsi + rax*8], rcx
	inc	rax
	mov	r8, qword ptr [r8 + 8]
	test	r8, r8
	jne	.label_617
	mov	r8, qword ptr [rdi + 8]
.label_615:
	add	r9, 0x10
	cmp	r9, r8
	jb	.label_616
.label_614:
	ret	
	.section	.text
	.align	32
	#Procedure 0x407236
	.globl sub_407236
	.type sub_407236, @function
sub_407236:

	nop	word ptr cs:[rax + rax]
.label_621:
	mov	esi, OFFSET FLAT:label_618
.label_620:
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
	#Procedure 0x407293
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
	je	.label_621
	mov	esi, OFFSET FLAT:label_619
	jmp	.label_620
	.section	.text
	.align	32
	#Procedure 0x4072b0
	.globl get_quoting_style
	.type get_quoting_style, @function
get_quoting_style:

	test	rdi, rdi
	mov	eax, OFFSET FLAT:default_quoting_options
	cmovne	rax, rdi
	mov	eax, dword ptr [rax]
	ret	
	.section	.text
	.align	32
	#Procedure 0x4072bf
	.globl sub_4072bf
	.type sub_4072bf, @function
sub_4072bf:

	nop	
	.section	.text
	.align	32
	#Procedure 0x4072c0
	.globl emit_bug_reporting_address
	.type emit_bug_reporting_address, @function
emit_bug_reporting_address:

	push	rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_622
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_623
	xor	eax, eax
	mov	rsi, rcx
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_625
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_179
	mov	ecx, OFFSET FLAT:label_626
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_624
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	pop	rax
	jmp	fputs_unlocked
	.section	.text
	.align	32
	#Procedure 0x407334
	.globl sub_407334
	.type sub_407334, @function
sub_407334:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407340

	.globl check_fspec
	.type check_fspec, @function
check_fspec:
	push	rbp
	push	r15
	push	r14
	push	r12
	push	rbx
	sub	rsp, 0x90
	mov	r15, rsi
	mov	rbx, rdi
	mov	esi, dword ptr [rbx + 0x38]
	cmp	esi, -1
	je	.label_627
	mov	r14, qword ptr [rbx]
	cmp	byte ptr [r14], 0x2d
	jne	.label_633
	cmp	byte ptr [r14 + 1], 0
	jne	.label_633
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_119
	mov	edx, 5
	call	dcgettext
	mov	r14, rax
	mov	esi, dword ptr [rbx + 0x38]
.label_633:
	lea	rdx, [rsp]
	mov	edi, 1
	call	__fxstat
	test	eax, eax
	je	.label_631
	call	__errno_location
	mov	r12, rax
	mov	eax, dword ptr [r12]
	mov	dword ptr [rbx + 0x3c], eax
	mov	r15d, dword ptr [rbx + 0x38]
	lea	eax, [r15 + 1]
	cmp	eax, 2
	jb	.label_635
	mov	edi, r15d
	call	close
	test	eax, eax
	je	.label_635
	mov	r12d, dword ptr [r12]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_155
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	mov	edi, 4
	mov	rsi, r14
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, r12d
	mov	rdx, rbp
	mov	r8d, r15d
	call	error
.label_635:
	mov	dword ptr [rbx + 0x38], 0xffffffff
	jmp	.label_627
.label_631:
	mov	eax, 0xf000
	and	eax, dword ptr [rbx + 0x30]
	cmp	eax, 0x8000
	jne	.label_634
	mov	rax, qword ptr [rsp + 0x30]
	cmp	rax, qword ptr [rbx + 8]
	jge	.label_628
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_195
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	xor	edi, edi
	mov	esi, 3
	mov	rdx, r14
	call	quotearg_n_style_colon
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rbp
	call	error
	mov	edi, dword ptr [rbx + 0x38]
	xor	esi, esi
	xor	edx, edx
	mov	rcx, r14
	call	xlseek
	mov	qword ptr [rbx + 8], 0
	jmp	.label_634
.label_628:
	mov	rax, qword ptr [rsp + 0x30]
	cmp	rax, qword ptr [rbx + 8]
	jne	.label_634
	mov	rax, qword ptr [rbx + 0x10]
	cmp	rax, qword ptr [rsp + 0x58]
	jne	.label_634
	mov	eax, dword ptr [rbx + 0x18]
	cmp	eax, dword ptr [rsp + 0x60]
	je	.label_627
.label_634:
	cmp	byte ptr [rip + print_headers],  1
	jne	.label_629
	cmp	qword ptr [r15], rbx
	setne	al
	jmp	.label_632
.label_629:
	xor	eax, eax
.label_632:
	mov	edx, dword ptr [rbx + 0x38]
	movzx	edi, al
	mov	rcx, -1
	mov	rsi, r14
	call	dump_remainder
	add	qword ptr [rbx + 8], rax
	test	rax, rax
	je	.label_627
	mov	qword ptr [r15], rbx
	mov	rdi, qword ptr [rip + stdout]
	call	fflush_unlocked
	test	eax, eax
	jne	.label_630
.label_627:
	add	rsp, 0x90
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_630:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_147
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, rcx
	call	error
	nop	
.label_636:
	call	abort
	.section	.text
	.align	32
	#Procedure 0x407515
	.globl sub_407515
	.type sub_407515, @function
sub_407515:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407520

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
	je	.label_636
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
.label_639:
	mov	dword ptr [r15], ebp
	movsd	xmm0, qword ptr [rsp + 0x10]
.label_637:
	test	r14, r14
	je	.label_638
	mov	qword ptr [r14], r12
.label_638:
	add	rsp, 0x20
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4075ce
	.globl sub_4075ce
	.type sub_4075ce, @function
sub_4075ce:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4075d6

	.globl cl_strtod
	.type cl_strtod, @function
cl_strtod:
	push	rbp
	push	r15
	push	r14
	push	r12
	push	rbx
	sub	rsp, 0x20
	mov	r14, rsi
	mov	rbx, rdi
	lea	rsi, [rsp + 8]
	call	strtod
	mov	r12, qword ptr [rsp + 8]
	cmp	byte ptr [r12], 0
	je	.label_637
	movsd	qword ptr [rsp + 0x10], xmm0
	call	__errno_location
	mov	r15, rax
	mov	ebp, dword ptr [r15]
	lea	rsi, [rsp + 0x18]
	mov	rdi, rbx
	call	c_strtod
	mov	rax, qword ptr [rsp + 0x18]
	cmp	r12, rax
	jae	.label_639
	mov	qword ptr [rsp + 8], rax
	mov	r12, rax
	jmp	.label_637
.label_640:
	call	abort
	.section	.text
	.align	32
	#Procedure 0x407635
	.globl sub_407635
	.type sub_407635, @function
sub_407635:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40763d
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
	je	.label_640
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
.label_642:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_643
	test	rax, rax
	je	.label_641
.label_643:
	pop	rbx
	ret	
.label_641:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x4076b9
	.globl sub_4076b9
	.type sub_4076b9, @function
sub_4076b9:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4076c1
	.globl xnrealloc
	.type xnrealloc, @function
xnrealloc:

	push	rbx
	mov	rbx, rdx
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rsi
	jb	.label_641
	imul	rbx, rsi
	test	rdi, rdi
	je	.label_642
	test	rbx, rbx
	jne	.label_642
	call	free
	xor	eax, eax
	pop	rbx
	ret	
.label_647:
	call	__errno_location
	mov	dword ptr [rax], 0x4b
	jmp	.label_644
	.section	.text
	.align	32
	#Procedure 0x4076fd

	.globl xnumtoumax
	.type xnumtoumax, @function
xnumtoumax:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	r14, r9
	mov	r15, rcx
	mov	r13, rdx
	mov	eax, esi
	mov	r12, rdi
	lea	rcx, [rsp]
	xor	esi, esi
	mov	edx, eax
	call	xstrtoumax
	test	eax, eax
	je	.label_645
	cmp	eax, 1
	je	.label_647
	cmp	eax, 3
	jne	.label_648
	call	__errno_location
	mov	dword ptr [rax], 0
	jmp	.label_644
.label_648:
	call	__errno_location
	jmp	.label_644
.label_645:
	mov	rbx, qword ptr [rsp]
	cmp	rbx, r13
	jb	.label_646
	cmp	rbx, r15
	jbe	.label_649
.label_646:
	call	__errno_location
	cmp	rbx, 0x40000000
	jb	.label_650
	mov	dword ptr [rax], 0x4b
	jmp	.label_644
.label_650:
	mov	dword ptr [rax], 0x22
.label_644:
	mov	ecx, dword ptr [rsp + 0x40]
	test	ecx, ecx
	mov	ebx, 1
	cmovne	ebx, ecx
	mov	ebp, dword ptr [rax]
	xor	eax, eax
	cmp	ebp, 0x16
	cmove	ebp, eax
	mov	rdi, r12
	call	quote
	mov	r8, rax
	mov	edx, OFFSET FLAT:label_186
	xor	eax, eax
	mov	edi, ebx
	mov	esi, ebp
	mov	rcx, r14
	call	error
	mov	rbx, qword ptr [rsp]
.label_649:
	mov	rax, rbx
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4077bb
	.globl sub_4077bb
	.type sub_4077bb, @function
sub_4077bb:

	nop	dword ptr [rax + rax]
.label_654:
	xor	eax, eax
.label_652:
	test	r15, r15
	je	.label_651
	mov	qword ptr [r15], rcx
.label_651:
	movsd	qword ptr [r14], xmm0
	add	rsp, 0x10
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	ret	
.label_653:
	mov	al, 1
	xorps	xmm1, xmm1
	ucomisd	xmm0, xmm1
	jne	.label_655
	jnp	.label_652
.label_655:
	cmp	dword ptr [r12], 0x22
	setne	al
	jmp	.label_652
	.section	.text
	.align	32
	#Procedure 0x4077f4

	.globl xstrtod
	.type xstrtod, @function
xstrtod:
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x10
	mov	r13, rcx
	mov	r14, rdx
	mov	r15, rsi
	mov	rbx, rdi
	call	__errno_location
	mov	r12, rax
	mov	dword ptr [r12], 0
	lea	rsi, [rsp + 8]
	mov	rdi, rbx
	call	r13
	mov	rcx, qword ptr [rsp + 8]
	cmp	rcx, rbx
	je	.label_654
	test	r15, r15
	jne	.label_653
	cmp	byte ptr [rcx], 0
	je	.label_653
	xor	eax, eax
	jmp	.label_651
.label_656:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x407845
	.globl sub_407845
	.type sub_407845, @function
sub_407845:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407850
	.globl xnmalloc
	.type xnmalloc, @function
xnmalloc:

	push	rbx
	mov	rbx, rsi
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rdi
	jb	.label_656
	imul	rbx, rdi
	mov	rdi, rbx
	call	malloc
	test	rbx, rbx
	je	.label_657
	test	rax, rax
	je	.label_656
.label_657:
	pop	rbx
	ret	
	.section	.text
	.align	32
	#Procedure 0x407880

	.globl locale_charset
	.type locale_charset, @function
locale_charset:
	push	rax
	mov	edi, 0xe
	call	rpl_nl_langinfo
	test	rax, rax
	mov	ecx, OFFSET FLAT:label_26
	cmovne	rcx, rax
	cmp	byte ptr [rcx], 0
	mov	eax, OFFSET FLAT:label_658
	cmovne	rax, rcx
	pop	rcx
	ret	
	.section	.text
	.align	32
	#Procedure 0x4078a5
	.globl sub_4078a5
	.type sub_4078a5, @function
sub_4078a5:

	nop	word ptr cs:[rax + rax]
.label_661:
	test	rbx, rbx
	je	.label_659
	mov	qword ptr [rbx], r14
.label_659:
	xorps	xmm0, xmm0
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	.section	.text
	.align	32
	#Procedure 0x4078c3
	.globl sub_4078c3
	.type sub_4078c3, @function
sub_4078c3:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4078c6

	.globl c_strtod
	.type c_strtod, @function
c_strtod:
	push	r14
	push	rbx
	push	rax
	mov	rbx, rsi
	mov	r14, rdi
	cmp	qword ptr [rip + c_locale_cache],  0
	jne	.label_662
	mov	edi, 0x1fbf
	mov	esi, OFFSET FLAT:label_660
	xor	edx, edx
	call	newlocale
	mov	qword ptr [rip + c_locale_cache],  rax
.label_662:
	mov	rdx, qword ptr [rip + c_locale_cache]
	test	rdx, rdx
	je	.label_661
	mov	rdi, r14
	mov	rsi, rbx
	add	rsp, 8
	pop	rbx
	pop	r14
	jmp	strtod_l
	.section	.text
	.align	32
	#Procedure 0x407910
	.globl quotearg_n
	.type quotearg_n, @function
quotearg_n:

	mov	rdx, -1
	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	.section	.text
	.align	32
	#Procedure 0x40791e
	.globl sub_40791e
	.type sub_40791e, @function
sub_40791e:

	nop	
	.section	.text
	.align	32
	#Procedure 0x407920

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
	js	.label_663
	mov	eax, dword ptr [r13]
	mov	rbp, qword ptr [rip + slotvec]
	cmp	dword ptr [rip + nslots],  r12d
	mov	qword ptr [rsp + 0x18], r13
	mov	dword ptr [rsp], eax
	mov	qword ptr [rsp + 0x10], rbx
	mov	qword ptr [rsp + 8], r15
	jg	.label_666
	cmp	r12d, 0x7fffffff
	je	.label_668
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
	jne	.label_664
	movups	xmm0, xmmword ptr [rip + slotvec0]
	movups	xmmword ptr [r14], xmm0
.label_664:
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
.label_666:
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
	jbe	.label_669
	mov	rax, qword ptr [rsp + 0x18]
	mov	ebp, dword ptr [rsp]
	jmp	.label_665
.label_669:
	lea	rax, [rbp + r13]
	lea	r12, [rbp + r13 + 8]
	inc	r15
	mov	qword ptr [rax], r15
	mov	eax, OFFSET FLAT:slot0
	cmp	r14, rax
	mov	ebp, dword ptr [rsp]
	je	.label_667
	mov	rdi, r14
	call	free
.label_667:
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
.label_665:
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
.label_663:
	call	abort
.label_668:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x407add
	.globl sub_407add
	.type sub_407add, @function
sub_407add:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x407ae0

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
	je	.label_670
	test	r15, r15
	je	.label_671
.label_670:
	mov	rdi, r15
	mov	rsi, r14
	mov	rdx, rbx
	call	memcpy
	mov	rax, r15
	pop	rbx
	pop	r14
	pop	r15
	ret	
.label_671:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x407b1c
	.globl sub_407b1c
	.type sub_407b1c, @function
sub_407b1c:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x407b20

	.globl quotearg_buffer_restyled
	.type quotearg_buffer_restyled, @function
quotearg_buffer_restyled:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0xc8
	mov	ebx, r9d
	mov	r15d, r8d
	mov	qword ptr [rsp + 0x48], rcx
	mov	qword ptr [rsp + 0x28], rdx
	mov	r13, rsi
	mov	qword ptr [rsp + 0x10], rdi
	mov	rax, qword ptr [rsp + 0x110]
	mov	qword ptr [rsp + 0x78], rax
	mov	rax, qword ptr [rsp + 0x108]
	mov	qword ptr [rsp + 0x80], rax
	call	__ctype_get_mb_cur_max
	mov	qword ptr [rsp + 0xb8], rax
	mov	r12d, ebx
	shr	r12b, 1
	and	r12b, 1
	mov	eax, ebx
	and	eax, 1
	mov	dword ptr [rsp + 0x9c], eax
	mov	dword ptr [rsp + 0x20], ebx
	and	ebx, 4
	mov	dword ptr [rsp + 0x98], ebx
	mov	dil, 1
	mov	eax, 0
	mov	qword ptr [rsp + 0x68], rax
	mov	eax, 0
	mov	qword ptr [rsp + 0x58], rax
	mov	eax, 0
	mov	qword ptr [rsp + 0x50], rax
	mov	eax, 0
	xor	r9d, r9d
	xor	ecx, ecx
	mov	qword ptr [rsp + 0xa8], rcx
	jmp	.label_681
	.section	.text
	.align	32
	#Procedure 0x407bcf
	.globl sub_407bcf
	.type sub_407bcf, @function
sub_407bcf:

	nop	
.label_679:
	cmp	r8d, 2
	setne	al
	cmp	byte ptr [rsp + 0xf], 0
	setne	dl
	mov	rsi, qword ptr [rsp + 0xa8]
	test	sil, 1
	mov	bl, byte ptr [rsp + 0x34]
	mov	rsi, qword ptr [rsp + 0xc0]
	je	.label_678
	or	al, dl
	jne	.label_678
	test	dil, 1
	jne	.label_674
	cmp	qword ptr [rsp + 0x68], 0
	je	.label_678
	test	rbp, rbp
	mov	r15d, r8d
	mov	al, bl
	mov	qword ptr [rsp + 0x48], rcx
	mov	r12d, esi
	mov	r13, qword ptr [rsp + 0x68]
	je	.label_681
	jmp	.label_678
.label_1192:
	mov	r8d, 5
	test	r12b, 1
	jne	.label_687
	test	rbp, rbp
	je	.label_691
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax], 0x22
.label_691:
	mov	r14d, 1
	jmp	.label_694
.label_1193:
	mov	r13b, 1
	mov	r8d, 5
	xor	r14d, r14d
	mov	eax, OFFSET FLAT:label_606
	mov	qword ptr [rsp + 0x58], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0x50], rax
	mov	sil, 1
	jmp	.label_696
.label_687:
	xor	r14d, r14d
.label_694:
	mov	eax, OFFSET FLAT:label_606
	mov	qword ptr [rsp + 0x58], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0x50], rax
	mov	r13b, 1
	jmp	.label_749
	.section	.text
	.align	32
	#Procedure 0x407c9f
	.globl sub_407c9f
	.type sub_407c9f, @function
sub_407c9f:

	nop	
.label_681:
	mov	rbp, r13
	xor	r14d, r14d
	mov	ecx, r15d
	cmp	r15d, 0xa
	ja	.label_720
	mov	r8d, 7
	mov	r13b, 1
	xor	esi, esi
	mov	r10, qword ptr [rsp + 0x28]
	mov	r11, qword ptr [rsp + 0x48]
	jmp	qword ptr [(rcx * 8) + label_739]
.label_1194:
	mov	r14d, edi
	mov	edi, OFFSET FLAT:label_732
	mov	esi, r15d
	mov	ebx, r9d
	call	gettext_quote
	mov	qword ptr [rsp + 0x80], rax
	mov	edi, OFFSET FLAT:label_607
	mov	esi, r15d
	call	gettext_quote
	mov	r9d, ebx
	mov	edi, r14d
	mov	qword ptr [rsp + 0x78], rax
.label_1195:
	mov	byte ptr [rsp + 0x1e], dil
	mov	dword ptr [rsp + 0x60], r9d
	test	r12b, 1
	mov	r14d, 0
	mov	rcx, qword ptr [rsp + 0x80]
	jne	.label_747
	mov	al, byte ptr [rcx]
	test	al, al
	mov	r14d, 0
	je	.label_747
	xor	r14d, r14d
	nop	
.label_768:
	cmp	r14, rbp
	jae	.label_757
	mov	rdx, qword ptr [rsp + 0x10]
	mov	byte ptr [rdx + r14], al
.label_757:
	movzx	eax, byte ptr [rcx + r14 + 1]
	inc	r14
	test	al, al
	jne	.label_768
.label_747:
	mov	rbx, qword ptr [rsp + 0x78]
	mov	rdi, rbx
	call	strlen
	mov	qword ptr [rsp + 0x50], rax
	mov	r8d, r15d
	mov	qword ptr [rsp + 0x58], rbx
	mov	r13b, 1
	mov	sil, r12b
	mov	r10, qword ptr [rsp + 0x28]
	mov	r11, qword ptr [rsp + 0x48]
	mov	dil, byte ptr [rsp + 0x1e]
	mov	r9d, dword ptr [rsp + 0x60]
	jmp	.label_696
.label_1187:
	xor	r8d, r8d
	xor	r14d, r14d
	mov	r13d, eax
	xor	esi, esi
	jmp	.label_696
.label_1190:
	mov	al, 1
.label_1188:
	mov	r12b, 1
.label_1191:
	test	r12b, 1
	mov	cl, 1
	je	.label_774
	mov	ecx, eax
.label_774:
	mov	al, cl
.label_1189:
	mov	r8d, 2
	test	r12b, 1
	jne	.label_776
	test	rbp, rbp
	je	.label_782
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx], 0x27
.label_782:
	mov	r14d, 1
	jmp	.label_783
.label_776:
	xor	r14d, r14d
.label_783:
	mov	ecx, OFFSET FLAT:label_607
	mov	qword ptr [rsp + 0x58], rcx
	mov	ecx, 1
	mov	qword ptr [rsp + 0x50], rcx
	mov	r13d, eax
.label_749:
	mov	sil, r12b
.label_696:
	cmp	qword ptr [rsp + 0x100], 0
	setne	r12b
	cmp	r8d, 2
	setne	r15b
	sete	al
	mov	ecx, r13d
	and	cl, 1
	sete	byte ptr [rsp + 0x33]
	mov	ebx, r15d
	mov	byte ptr [rsp + 0x1f], cl
	and	bl, cl
	cmp	qword ptr [rsp + 0x50], 0
	setne	cl
	mov	edx, ecx
	mov	byte ptr [rsp + 0x36], bl
	and	dl, bl
	mov	byte ptr [rsp + 0x37], dl
	mov	ebx, esi
	and	bl, 1
	sete	dl
	and	al, bl
	mov	byte ptr [rsp + 0x31], al
	mov	byte ptr [rsp + 0xf], bl
	and	r12b, bl
	mov	byte ptr [rsp + 0x35], r12b
	or	dl, r15b
	mov	byte ptr [rsp + 0x27], dl
	mov	byte ptr [rsp + 0x34], r13b
	mov	qword ptr [rsp + 0xc0], rsi
	and	r13b, sil
	and	r13b, cl
	mov	byte ptr [rsp + 0x32], r13b
	xor	r12d, r12d
	mov	qword ptr [rsp + 0x38], r8
	jmp	.label_791
	.section	.text
	.align	32
	#Procedure 0x407e61
	.globl sub_407e61
	.type sub_407e61, @function
sub_407e61:

	nop	word ptr cs:[rax + rax]
.label_790:
	inc	r12
.label_791:
	cmp	r11, -1
	je	.label_707
	cmp	r12, r11
	jne	.label_709
	jmp	.label_711
	.section	.text
	.align	32
	#Procedure 0x407e83
	.globl sub_407e83
	.type sub_407e83, @function
sub_407e83:

	nop	word ptr cs:[rax + rax]
.label_707:
	mov	rcx, -1
	cmp	byte ptr [r10 + r12], 0
	je	.label_715
.label_709:
	cmp	byte ptr [rsp + 0x37], 0
	je	.label_721
	mov	rax, qword ptr [rsp + 0x50]
	lea	rbx, [r12 + rax]
	cmp	rax, 2
	jb	.label_728
	cmp	r11, -1
	jne	.label_728
	mov	r15d, edi
	mov	rdi, r10
	mov	r13d, r9d
	call	strlen
	mov	r9d, r13d
	mov	r8, qword ptr [rsp + 0x38]
	mov	edi, r15d
	mov	r10, qword ptr [rsp + 0x28]
	mov	r11, rax
.label_728:
	cmp	rbx, r11
	jbe	.label_737
.label_721:
	xor	esi, esi
.label_762:
	movzx	r15d, byte ptr [r10 + r12]
	cmp	r15, 0x7e
	ja	.label_740
	xor	edx, edx
	mov	r13b, 1
	mov	cl, 0x6e
	mov	bl, 0x61
	xor	eax, eax
	jmp	qword ptr [(r15 * 8) + label_744]
.label_1116:
	test	r12, r12
	jne	.label_690
	jmp	.label_748
	.section	.text
	.align	32
	#Procedure 0x407f16
	.globl sub_407f16
	.type sub_407f16, @function
sub_407f16:

	nop	word ptr cs:[rax + rax]
.label_737:
	mov	r13d, r9d
	mov	r15d, edi
	mov	rbx, r11
	lea	rdi, [r10 + r12]
	mov	rsi, qword ptr [rsp + 0x58]
	mov	rdx, qword ptr [rsp + 0x50]
	call	memcmp
	test	eax, eax
	sete	sil
	jne	.label_759
	cmp	byte ptr [rsp + 0xf], 0
	mov	r10, qword ptr [rsp + 0x28]
	mov	r11, rbx
	mov	edi, r15d
	mov	r8, qword ptr [rsp + 0x38]
	mov	r9d, r13d
	je	.label_762
	jmp	.label_685
.label_759:
	mov	r10, qword ptr [rsp + 0x28]
	mov	r11, rbx
	mov	edi, r15d
	mov	r8, qword ptr [rsp + 0x38]
	mov	r9d, r13d
	jmp	.label_762
.label_1120:
	xor	eax, eax
	cmp	r11, -1
	je	.label_770
	test	r12, r12
	jne	.label_773
	cmp	r11, 1
	je	.label_748
	xor	r13d, r13d
	jmp	.label_677
.label_1109:
	cmp	byte ptr [rsp + 0x1f], 0
	je	.label_778
	cmp	byte ptr [rsp + 0xf], 0
	jne	.label_685
	cmp	r8d, 2
	jne	.label_706
	mov	eax, r9d
	and	al, 1
	jne	.label_706
	cmp	r14, rbp
	jae	.label_786
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x27
.label_786:
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	jae	.label_788
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx + rax], 0x24
.label_788:
	lea	rax, [r14 + 2]
	cmp	rax, rbp
	jae	.label_794
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx + rax], 0x27
.label_794:
	add	r14, 3
	mov	r9b, 1
.label_706:
	mov	rcx, r14
	cmp	rcx, rbp
	jae	.label_796
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + rcx], 0x5c
.label_796:
	lea	r14, [rcx + 1]
	mov	al, 1
	mov	r15b, 0x30
	cmp	r8d, 2
	je	.label_683
	lea	rdx, [r12 + 1]
	cmp	rdx, r11
	jae	.label_683
	mov	dl, byte ptr [r10 + rdx]
	add	dl, 0xd0
	cmp	dl, 9
	ja	.label_683
	cmp	r14, rbp
	jae	.label_699
	mov	rdx, qword ptr [rsp + 0x10]
	mov	byte ptr [rdx + r14], 0x30
.label_699:
	lea	rdx, [rcx + 2]
	cmp	rdx, rbp
	jae	.label_793
	mov	ebx, esi
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + rdx], 0x30
	mov	esi, ebx
.label_793:
	add	rcx, 3
	xor	r13d, r13d
	mov	r14, rcx
	jmp	.label_677
.label_1110:
	mov	bl, 0x62
	jmp	.label_708
.label_1111:
	mov	cl, 0x74
	jmp	.label_697
.label_1112:
	mov	bl, 0x76
	jmp	.label_708
.label_1113:
	mov	bl, 0x66
	jmp	.label_708
.label_1114:
	mov	cl, 0x72
	jmp	.label_697
.label_1117:
	mov	r15b, 0x27
	mov	al, 1
	mov	qword ptr [rsp + 0xa8], rax
	cmp	r8d, 2
	jne	.label_718
	cmp	byte ptr [rsp + 0xf], 0
	jne	.label_705
	test	rbp, rbp
	sete	al
	mov	rcx, qword ptr [rsp + 0x68]
	mov	rdx, rcx
	test	rdx, rdx
	setne	cl
	or	cl, al
	cmove	rdx, rbp
	mov	qword ptr [rsp + 0x68], rdx
	mov	eax, 0
	cmove	rbp, rax
	cmp	r14, rbp
	jae	.label_726
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x27
.label_726:
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	jae	.label_741
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx + rax], 0x5c
.label_741:
	lea	rax, [r14 + 2]
	cmp	rax, rbp
	jae	.label_746
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx + rax], 0x27
.label_746:
	add	r14, 3
	xor	r9d, r9d
.label_718:
	xor	eax, eax
	mov	r13b, 1
	jmp	.label_677
.label_1118:
	mov	r15b, 0x3f
	cmp	r8d, 5
	je	.label_753
	cmp	r8d, 2
	jne	.label_690
	cmp	byte ptr [rsp + 0xf], 0
	je	.label_690
	jmp	.label_705
.label_1119:
	cmp	r8d, 2
	jne	.label_764
	cmp	byte ptr [rsp + 0xf], 0
	jne	.label_705
	mov	r15b, 0x5c
	xor	eax, eax
	jmp	.label_686
.label_740:
	cmp	qword ptr [rsp + 0xb8], 1
	mov	qword ptr [rsp + 0xa0], rbp
	mov	byte ptr [rsp + 0x1e], dil
	mov	dword ptr [rsp + 0x60], r9d
	mov	dword ptr [rsp + 0x94], esi
	jne	.label_767
	mov	qword ptr [rsp + 0x48], r11
	call	__ctype_b_loc
	mov	r10, qword ptr [rsp + 0x28]
	mov	rax, qword ptr [rax]
	movzx	r13d, word ptr [rax + r15*2]
	shr	r13d, 0xe
	and	r13b, 1
	mov	ebx, 1
	jmp	.label_775
.label_770:
	test	r12, r12
	jne	.label_784
	mov	cl, byte ptr [r10 + 1]
	test	cl, cl
	jne	.label_784
.label_748:
	mov	dl, 1
.label_1115:
	cmp	byte ptr [rsp + 0x27], 0
	je	.label_705
	xor	eax, eax
	mov	r13b, dl
.label_677:
	cmp	byte ptr [rsp + 0x36], 0
	je	.label_792
	cmp	qword ptr [rsp + 0x100], 0
	jne	.label_795
	jmp	.label_672
	.section	.text
	.align	32
	#Procedure 0x4081f4
	.globl sub_4081f4
	.type sub_4081f4, @function
sub_4081f4:

	nop	word ptr cs:[rax + rax]
.label_792:
	cmp	byte ptr [rsp + 0x35], 0
	je	.label_672
.label_795:
	mov	ecx, r15d
	shr	cl, 5
	movzx	edx, cl
	mov	ebx, esi
	mov	esi, 1
	mov	ecx, r15d
	shl	esi, cl
	test	bl, bl
	jne	.label_675
	mov	rcx, qword ptr [rsp + 0x100]
	and	esi, dword ptr [rcx + rdx*4]
	jmp	.label_682
	.section	.text
	.align	32
	#Procedure 0x40822d
	.globl sub_40822d
	.type sub_40822d, @function
sub_40822d:

	nop	dword ptr [rax]
.label_672:
	test	sil, sil
.label_682:
	mov	ebx, r15d
	je	.label_702
	jmp	.label_689
.label_675:
	mov	ebx, r15d
	jmp	.label_689
.label_778:
	cmp	dword ptr [rsp + 0x9c], 0
	jne	.label_790
	xor	r15d, r15d
	jmp	.label_690
.label_764:
	mov	cl, 0x5c
	cmp	byte ptr [rsp + 0x32], 0
	je	.label_697
	xor	eax, eax
	mov	r15b, 0x5c
.label_686:
	xor	r13d, r13d
	jmp	.label_702
.label_697:
	cmp	byte ptr [rsp + 0x27], 0
	mov	ebx, ecx
	je	.label_705
.label_708:
	xor	eax, eax
	cmp	byte ptr [rsp + 0x1f], 0
	mov	r13d, 0
	je	.label_677
	nop	
.label_689:
	cmp	byte ptr [rsp + 0xf], 0
	jne	.label_685
	cmp	r8d, 2
	jne	.label_719
	mov	eax, r9d
	and	al, 1
	jne	.label_719
	cmp	r14, rbp
	jae	.label_724
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x27
.label_724:
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	jae	.label_727
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx + rax], 0x24
.label_727:
	lea	rax, [r14 + 2]
	cmp	rax, rbp
	jae	.label_731
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx + rax], 0x27
.label_731:
	add	r14, 3
	mov	r9b, 1
.label_719:
	cmp	r14, rbp
	jae	.label_738
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x5c
.label_738:
	inc	r14
	jmp	.label_779
.label_767:
	mov	qword ptr [rsp + 0x70], 0
	cmp	r11, -1
	jne	.label_745
	mov	rdi, r10
	call	strlen
	mov	r10, qword ptr [rsp + 0x28]
	mov	r11, rax
.label_745:
	cmp	byte ptr [rsp + 0x31], 0
	mov	qword ptr [rsp + 0x48], r11
	mov	qword ptr [rsp + 0x88], r12
	je	.label_742
	lea	rax, [r10 + r12]
	mov	qword ptr [rsp + 0xb0], rax
	mov	r13b, 1
	xor	r12d, r12d
	lea	rbp, [rsp + 0x70]
.label_700:
	mov	rax, r12
	mov	qword ptr [rsp + 0x40], rax
	mov	rcx, qword ptr [rsp + 0x88]
	lea	rax, [r12 + rcx]
	mov	r12, rcx
	lea	rsi, [r10 + rax]
	mov	rdx, r11
	sub	rdx, rax
	lea	rdi, [rsp + 0x64]
	mov	rcx, rbp
	call	rpl_mbrtowc
	mov	rbx, rax
	cmp	rbx, -2
	je	.label_729
	cmp	rbx, -1
	mov	r10, qword ptr [rsp + 0x28]
	movabs	rsi, 0x20000002b
	je	.label_771
	test	rbx, rbx
	mov	r11, qword ptr [rsp + 0x48]
	je	.label_701
	cmp	rbx, 2
	mov	rbp, qword ptr [rsp + 0xa0]
	jb	.label_780
	mov	rax, qword ptr [rsp + 0x40]
	mov	rcx, qword ptr [rsp + 0xb0]
	lea	rax, [rcx + rax]
	mov	ecx, 1
	nop	dword ptr [rax]
.label_752:
	movsx	edx, byte ptr [rax + rcx]
	add	edx, -0x5b
	cmp	edx, 0x21
	ja	.label_712
	bt	rsi, rdx
	jb	.label_705
.label_712:
	inc	rcx
	cmp	rcx, rbx
	jb	.label_752
.label_780:
	mov	edi, dword ptr [rsp + 0x64]
	call	iswprint
	test	eax, eax
	jne	.label_751
	xor	r13d, r13d
.label_751:
	lea	rbp, [rsp + 0x70]
	mov	r12, qword ptr [rsp + 0x40]
	add	r12, rbx
	mov	rdi, rbp
	call	mbsinit
	test	eax, eax
	mov	r10, qword ptr [rsp + 0x28]
	mov	r11, qword ptr [rsp + 0x48]
	je	.label_700
	jmp	.label_684
.label_683:
	xor	r13d, r13d
	jmp	.label_677
.label_784:
	mov	r11, -1
	xor	r13d, r13d
	jmp	.label_677
.label_753:
	cmp	dword ptr [rsp + 0x98], 0
	je	.label_690
	lea	rcx, [r12 + 2]
	cmp	rcx, r11
	jae	.label_690
	cmp	byte ptr [r10 + r12 + 1], 0x3f
	jne	.label_690
	movsx	edx, byte ptr [r10 + rcx]
	xor	eax, eax
	cmp	edx, 0x3e
	ja	.label_703
	mov	ebx, esi
	movabs	rsi, 0x7000a38200000000
	bt	rsi, rdx
	jae	.label_735
	cmp	byte ptr [rsp + 0xf], 0
	jne	.label_714
	cmp	r14, rbp
	jae	.label_716
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x3f
.label_716:
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	jae	.label_723
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + rax], 0x22
.label_723:
	lea	rax, [r14 + 2]
	cmp	rax, rbp
	jae	.label_692
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + rax], 0x22
.label_692:
	lea	rax, [r14 + 3]
	cmp	rax, rbp
	jae	.label_785
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + rax], 0x3f
.label_785:
	add	r14, 4
	xor	eax, eax
	mov	r12, rcx
	mov	r15b, dl
.label_735:
	xor	r13d, r13d
	mov	esi, ebx
	jmp	.label_677
.label_690:
	xor	eax, eax
.label_773:
	xor	r13d, r13d
	jmp	.label_677
.label_742:
	mov	r13b, 1
	xor	r12d, r12d
	lea	rbx, [rsp + 0x70]
	nop	word ptr cs:[rax + rax]
.label_769:
	mov	rax, r12
	mov	qword ptr [rsp + 0x40], rax
	mov	rcx, qword ptr [rsp + 0x88]
	lea	rax, [r12 + rcx]
	mov	r12, rcx
	lea	rsi, [r10 + rax]
	mov	rdx, r11
	sub	rdx, rax
	lea	rdi, [rsp + 0x64]
	mov	rcx, rbx
	call	rpl_mbrtowc
	mov	rbp, rax
	test	rbp, rbp
	je	.label_760
	cmp	rbp, -1
	je	.label_763
	cmp	rbp, -2
	je	.label_729
	mov	edi, dword ptr [rsp + 0x64]
	call	iswprint
	test	eax, eax
	mov	r12, qword ptr [rsp + 0x40]
	jne	.label_766
	xor	r13d, r13d
.label_766:
	add	r12, rbp
	lea	rbx, [rsp + 0x70]
	mov	rdi, rbx
	call	mbsinit
	test	eax, eax
	mov	r10, qword ptr [rsp + 0x28]
	mov	r11, qword ptr [rsp + 0x48]
	je	.label_769
	jmp	.label_684
.label_729:
	mov	r10, qword ptr [rsp + 0x28]
	mov	rsi, qword ptr [rsp + 0x40]
	lea	rax, [rsi + r12]
	mov	rdx, qword ptr [rsp + 0x48]
	cmp	rax, rdx
	jae	.label_755
	lea	rax, [r10 + r12]
.label_673:
	cmp	byte ptr [rax + rsi], 0
	je	.label_755
	lea	rcx, [r12 + rsi + 1]
	inc	rsi
	cmp	rcx, rdx
	jb	.label_673
.label_755:
	mov	qword ptr [rsp + 0x40], rsi
.label_771:
	xor	r13d, r13d
	jmp	.label_701
.label_763:
	xor	r13d, r13d
.label_760:
	mov	r10, qword ptr [rsp + 0x28]
.label_701:
	mov	r12, qword ptr [rsp + 0x40]
.label_684:
	mov	rbx, r12
	mov	r12, qword ptr [rsp + 0x88]
.label_775:
	and	r13b, 1
	mov	eax, r13d
	or	al, byte ptr [rsp + 0x33]
	cmp	rbx, 1
	mov	rbp, qword ptr [rsp + 0xa0]
	mov	dil, byte ptr [rsp + 0x1e]
	mov	r8, qword ptr [rsp + 0x38]
	mov	r9d, dword ptr [rsp + 0x60]
	mov	esi, dword ptr [rsp + 0x94]
	ja	.label_765
	test	al, al
	je	.label_765
	xor	eax, eax
	mov	r11, qword ptr [rsp + 0x48]
	jmp	.label_677
.label_765:
	mov	byte ptr [rsp + 0x40], al
	add	rbx, r12
	xor	eax, eax
	mov	r11, qword ptr [rsp + 0x48]
	jmp	.label_680
	.section	.text
	.align	32
	#Procedure 0x408627
	.globl sub_408627
	.type sub_408627, @function
sub_408627:

	nop	word ptr [rax + rax]
.label_772:
	inc	r14
	mov	r15b, byte ptr [r10 + r12 + 1]
	mov	r12, rdx
.label_680:
	cmp	byte ptr [rsp + 0x40], 0
	je	.label_688
	test	sil, 1
	je	.label_698
	cmp	r14, rbp
	jae	.label_693
	mov	rdx, qword ptr [rsp + 0x10]
	mov	byte ptr [rdx + r14], 0x5c
.label_693:
	inc	r14
	xor	esi, esi
	jmp	.label_698
	.section	.text
	.align	32
	#Procedure 0x408665
	.globl sub_408665
	.type sub_408665, @function
sub_408665:

	nop	word ptr cs:[rax + rax]
.label_688:
	cmp	byte ptr [rsp + 0xf], 0
	jne	.label_685
	cmp	r8d, 2
	jne	.label_722
	mov	eax, r9d
	and	al, 1
	jne	.label_722
	cmp	r14, rbp
	jae	.label_713
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x27
.label_713:
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	jae	.label_717
	mov	rdx, qword ptr [rsp + 0x10]
	mov	byte ptr [rdx + rax], 0x24
.label_717:
	lea	rax, [r14 + 2]
	cmp	rax, rbp
	jae	.label_676
	mov	rdx, qword ptr [rsp + 0x10]
	mov	byte ptr [rdx + rax], 0x27
.label_676:
	add	r14, 3
	mov	r9b, 1
.label_722:
	cmp	r14, rbp
	jae	.label_730
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x5c
.label_730:
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	jae	.label_734
	mov	edx, r15d
	shr	dl, 6
	or	dl, 0x30
	mov	ecx, esi
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + rax], dl
	mov	esi, ecx
.label_734:
	lea	rax, [r14 + 2]
	cmp	rax, rbp
	jae	.label_743
	mov	edx, r15d
	shr	dl, 3
	and	dl, 7
	or	dl, 0x30
	mov	ecx, esi
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + rax], dl
	mov	esi, ecx
.label_743:
	add	r14, 3
	and	r15b, 7
	or	r15b, 0x30
	mov	al, 1
.label_698:
	lea	rdx, [r12 + 1]
	cmp	rbx, rdx
	jbe	.label_702
	test	r9b, 1
	je	.label_754
	mov	rcx, rbx
	mov	ebx, eax
	and	bl, 1
	jne	.label_750
	mov	r8, r12
	mov	r12d, esi
	cmp	r14, rbp
	jae	.label_758
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + r14], 0x27
.label_758:
	lea	rsi, [r14 + 1]
	cmp	rsi, rbp
	jae	.label_787
	mov	rbx, qword ptr [rsp + 0x10]
	mov	byte ptr [rbx + rsi], 0x27
.label_787:
	add	r14, 2
	xor	r9d, r9d
	mov	esi, r12d
	mov	rbx, rcx
	mov	r12, r8
	mov	r8, qword ptr [rsp + 0x38]
	jmp	.label_754
	.section	.text
	.align	32
	#Procedure 0x408776
	.globl sub_408776
	.type sub_408776, @function
sub_408776:

	nop	word ptr cs:[rax + rax]
.label_750:
	mov	rbx, rcx
.label_754:
	cmp	r14, rbp
	jae	.label_772
	mov	ecx, esi
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + r14], r15b
	mov	esi, ecx
	jmp	.label_772
	.section	.text
	.align	32
	#Procedure 0x40879e
	.globl sub_40879e
	.type sub_40879e, @function
sub_40879e:

	nop	
.label_702:
	test	r9b, 1
	je	.label_777
	and	al, 1
	jne	.label_777
	cmp	r14, rbp
	jae	.label_781
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x27
.label_781:
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	jae	.label_695
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx + rax], 0x27
.label_695:
	add	r14, 2
	xor	r9d, r9d
.label_777:
	mov	ebx, r15d
.label_779:
	cmp	r14, rbp
	jae	.label_789
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], bl
.label_789:
	inc	r14
	shl	r13b, 7
	sar	r13b, 7
	and	r13b, dil
	mov	edi, r13d
	jmp	.label_790
.label_703:
	xor	r13d, r13d
	jmp	.label_677
	.section	.text
	.align	32
	#Procedure 0x408801
	.globl sub_408801
	.type sub_408801, @function
sub_408801:

	nop	word ptr cs:[rax + rax]
.label_711:
	mov	rcx, r12
.label_715:
	cmp	r8d, 2
	setne	al
	test	r14, r14
	setne	dl
	cmp	byte ptr [rsp + 0xf], 0
	je	.label_679
	or	al, dl
	jne	.label_679
	mov	r11, rcx
	jmp	.label_685
.label_705:
	mov	eax, 2
.label_761:
	mov	qword ptr [rsp + 0x38], rax
.label_685:
	mov	r9d, dword ptr [rsp + 0x20]
	cmp	byte ptr [rsp + 0x1f], 0
	mov	r8d, 4
	mov	rax, qword ptr [rsp + 0x38]
	cmove	r8d, eax
	cmp	eax, 2
	cmovne	r8d, eax
	and	r9d, 0xfffffffd
	sub	rsp, 8
	mov	rdi, qword ptr [rsp + 0x18]
	mov	rsi, rbp
	mov	rdx, r10
	mov	rcx, r11
	push	qword ptr [rsp + 0x80]
	push	qword ptr [rsp + 0x90]
	push	0
	call	quotearg_buffer_restyled
	add	rsp, 0x20
.label_704:
	mov	r14, rax
.label_756:
	mov	rax, r14
	add	rsp, 0xc8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_678:
	mov	rdx, qword ptr [rsp + 0x58]
	test	rdx, rdx
	je	.label_725
	cmp	byte ptr [rsp + 0xf], 0
	mov	rcx, qword ptr [rsp + 0x10]
	jne	.label_710
	mov	al, byte ptr [rdx]
	test	al, al
	je	.label_710
	inc	rdx
	nop	dword ptr [rax + rax]
.label_736:
	cmp	r14, rbp
	jae	.label_733
	mov	byte ptr [rcx + r14], al
.label_733:
	inc	r14
	movzx	eax, byte ptr [rdx]
	inc	rdx
	test	al, al
	jne	.label_736
	jmp	.label_710
.label_674:
	sub	rsp, 8
	mov	r8d, 5
	mov	rdi, qword ptr [rsp + 0x18]
	mov	rsi, qword ptr [rsp + 0x70]
	mov	rdx, qword ptr [rsp + 0x30]
	mov	r9d, dword ptr [rsp + 0x28]
	push	qword ptr [rsp + 0x80]
	push	qword ptr [rsp + 0x90]
	push	qword ptr [rsp + 0x118]
	call	quotearg_buffer_restyled
	add	rsp, 0x20
	jmp	.label_704
.label_725:
	mov	rcx, qword ptr [rsp + 0x10]
.label_710:
	cmp	r14, rbp
	jae	.label_756
	mov	byte ptr [rcx + r14], 0
	jmp	.label_756
.label_714:
	mov	eax, 5
	jmp	.label_761
.label_720:
	call	abort
	.section	.text
	.align	32
	#Procedure 0x408950

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
	je	.label_798
	test	rbx, rbx
	mov	eax, OFFSET FLAT:default_tuning
	cmove	rbx, rax
	mov	qword ptr [r15 + 0x28], rbx
	cmp	rbx, rax
	je	.label_800
	movss	xmm0, dword ptr [rbx + 8]
	ucomiss	xmm0, dword ptr [rip + label_483]
	jbe	.label_797
	movss	xmm1, dword ptr [rip + label_488]
	ucomiss	xmm1, xmm0
	jbe	.label_797
	movss	xmm1, dword ptr [rbx + 0xc]
	ucomiss	xmm1, dword ptr [rip + label_490]
	jbe	.label_797
	movss	xmm1, dword ptr [rbx]
	xorps	xmm2, xmm2
	ucomiss	xmm1, xmm2
	jb	.label_797
	addss	xmm1, dword ptr [rip + label_483]
	ucomiss	xmm0, xmm1
	jbe	.label_797
	movss	xmm0, dword ptr [rbx + 4]
	movss	xmm2, dword ptr [rip + label_485]
	ucomiss	xmm2, xmm0
	jb	.label_797
	ucomiss	xmm0, xmm1
	jbe	.label_797
.label_800:
	cmp	byte ptr [rbx + 0x10], 0
	jne	.label_806
	mov	eax, r12d
	and	eax, 1
	test	r12, r12
	js	.label_804
	xorps	xmm0, xmm0
	cvtsi2ss	xmm0, r12
	jmp	.label_805
.label_804:
	shr	r12, 1
	or	rax, r12
	xorps	xmm0, xmm0
	cvtsi2ss	xmm0, rax
	addss	xmm0, xmm0
.label_805:
	divss	xmm0, dword ptr [rbx + 8]
	movss	xmm1, dword ptr [rip + label_407]
	movaps	xmm2, xmm0
	subss	xmm2, xmm1
	cvttss2si	rax, xmm2
	movabs	rcx, 0x8000000000000000
	xor	rcx, rax
	cvttss2si	r12, xmm0
	ucomiss	xmm0, xmm1
	cmovae	r12, rcx
	ucomiss	xmm0, dword ptr [rip + label_408]
	jae	.label_797
.label_806:
	cmp	r12, 0xa
	mov	ebx, 0xa
	cmovae	rbx, r12
	or	rbx, 1
	jmp	.label_799
	.section	.text
	.align	32
	#Procedure 0x408a9e
	.globl sub_408a9e
	.type sub_408a9e, @function
sub_408a9e:

	nop	
.label_801:
	add	rbx, 2
.label_799:
	cmp	rbx, -1
	je	.label_797
	cmp	rbx, 0xa
	mov	ecx, 3
	jb	.label_803
	mov	esi, 0xc
	mov	edi, 9
	mov	ecx, 3
	nop	dword ptr [rax + rax]
.label_802:
	xor	edx, edx
	mov	rax, rbx
	div	rcx
	test	rdx, rdx
	je	.label_803
	lea	rdi, [rdi + rsi + 4]
	add	rcx, 2
	add	rsi, 8
	cmp	rdi, rbx
	jb	.label_802
.label_803:
	xor	edx, edx
	mov	rax, rbx
	div	rcx
	test	rdx, rdx
	je	.label_801
	mov	rax, rbx
	shr	rax, 0x3c
	jne	.label_797
	mov	qword ptr [r15 + 0x10], rbx
	test	rbx, rbx
	je	.label_797
	mov	esi, 0x10
	mov	rdi, rbx
	call	rpl_calloc
	mov	qword ptr [r15], rax
	test	rax, rax
	je	.label_797
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
	jmp	.label_798
.label_797:
	mov	rdi, r15
	call	free
	xor	eax, eax
.label_798:
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x408b68
	.globl sub_408b68
	.type sub_408b68, @function
sub_408b68:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408b70

	.globl version_etc_va
	.type version_etc_va, @function
version_etc_va:
	movsxd	r10, dword ptr [r8]
	cmp	r10, 0x28
	ja	.label_817
	mov	r9, r10
	add	r9, qword ptr [r8 + 0x10]
	lea	r10d, [r10 + 8]
	mov	dword ptr [r8], r10d
	jmp	.label_819
.label_817:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_819:
	sub	rsp, 0x58
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp], rax
	xor	r9d, r9d
	test	rax, rax
	je	.label_807
	cmp	r10d, 0x29
	jae	.label_816
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_818
.label_816:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_818:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 8], rax
	mov	r9d, 1
	test	rax, rax
	je	.label_807
	cmp	r10d, 0x29
	jae	.label_814
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_815
.label_814:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_815:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x10], rax
	mov	r9d, 2
	test	rax, rax
	je	.label_807
	cmp	r10d, 0x29
	jae	.label_812
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_813
.label_812:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_813:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x18], rax
	mov	r9d, 3
	test	rax, rax
	je	.label_807
	cmp	r10d, 0x29
	jae	.label_810
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_811
.label_810:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_811:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x20], rax
	mov	r9d, 4
	test	rax, rax
	je	.label_807
	cmp	r10d, 0x29
	jae	.label_808
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_809
.label_808:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_809:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x28], rax
	mov	r9d, 5
	test	rax, rax
	je	.label_807
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x30], rax
	mov	r9d, 6
	test	rax, rax
	je	.label_807
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x38], rax
	mov	r9d, 7
	test	rax, rax
	je	.label_807
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x40], rax
	mov	r9d, 8
	test	rax, rax
	je	.label_807
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x48], rax
	cmp	rax, 1
	mov	r9d, 9
	sbb	r9, -1
.label_807:
	lea	r8, [rsp]
	call	version_etc_arn
	add	rsp, 0x58
	ret	
	.section	.text
	.align	32
	#Procedure 0x408d52
	.globl sub_408d52
	.type sub_408d52, @function
sub_408d52:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408d60
	.globl quotearg_colon_mem
	.type quotearg_colon_mem, @function
quotearg_colon_mem:

	sub	rsp, 0x38
	mov	rax, rsi
	mov	rdx, rdi
	mov	rcx, qword ptr [rip + label_9]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0, xmmword ptr [rip + label_10]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_11]
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
	.align	32
	#Procedure 0x408db4
	.globl sub_408db4
	.type sub_408db4, @function
sub_408db4:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408dc0

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
	je	.label_820
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
.label_820:
	call	abort
	.section	.text
	.align	32
	#Procedure 0x408e28
	.globl sub_408e28
	.type sub_408e28, @function
sub_408e28:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408e30

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
	mov	r14, r9
	mov	r15, r8
	mov	r12, rcx
	mov	r13, rdx
	mov	rbp, rsi
	mov	rbx, rdi
	mov	rdi, rbp
	mov	rsi, r13
	mov	rdx, r12
	mov	rcx, r15
	call	argmatch
	test	rax, rax
	jns	.label_821
	cmp	rax, -1
	mov	qword ptr [rsp + 0x10], rbx
	mov	rbx, r14
	je	.label_822
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_619
	jmp	.label_823
.label_822:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_618
.label_823:
	mov	edx, 5
	call	dcgettext
	mov	qword ptr [rsp + 8], rax
	xor	edi, edi
	mov	esi, 8
	mov	rdx, rbp
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
.label_821:
	add	rsp, 0x18
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x408ef3
	.globl sub_408ef3
	.type sub_408ef3, @function
sub_408ef3:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408f00
	.globl close_stdout_set_ignore_EPIPE
	.type close_stdout_set_ignore_EPIPE, @function
close_stdout_set_ignore_EPIPE:

	mov	byte ptr [rip + ignore_EPIPE],  dil
	ret	
	.section	.text
	.align	32
	#Procedure 0x408f08
	.globl sub_408f08
	.type sub_408f08, @function
sub_408f08:

	nop	dword ptr [rax + rax]
.label_825:
	add	rsi, 0x13
	movabs	r8, 0x6666666666666667
	nop	dword ptr [rax]
.label_824:
	mov	rax, rcx
	imul	r8
	mov	r10, rdx
	shr	r10, 0x3f
	sar	rdx, 2
	lea	edi, [rdx + r10]
	add	edi, edi
	lea	r9d, [rdi + rdi*4]
	mov	edi, ecx
	sub	edi, r9d
	mov	eax, 0x30
	sub	eax, edi
	mov	byte ptr [rsi], al
	add	rdx, r10
	add	rcx, 9
	dec	rsi
	cmp	rcx, 0x12
	mov	rcx, rdx
	ja	.label_824
	mov	byte ptr [rsi], 0x2d
.label_826:
	mov	rax, rsi
	ret	
	.section	.text
	.align	32
	#Procedure 0x408f68
	.globl sub_408f68
	.type sub_408f68, @function
sub_408f68:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408f75

	.globl offtostr
	.type offtostr, @function
offtostr:
	mov	rcx, rdi
	mov	byte ptr [rsi + 0x14], 0
	test	rcx, rcx
	js	.label_825
	add	rsi, 0x14
	movabs	r8, 0x6666666666666667
	nop	word ptr [rax + rax]
.label_827:
	mov	rax, rcx
	imul	r8
	mov	rax, rdx
	shr	rax, 0x3f
	sar	rdx, 2
	lea	edi, [rdx + rax]
	add	edi, edi
	lea	r9d, [rdi + rdi*4]
	mov	edi, ecx
	sub	edi, r9d
	add	edi, 0x30
	mov	byte ptr [rsi - 1], dil
	dec	rsi
	add	rdx, rax
	add	rcx, 9
	cmp	rcx, 0x12
	mov	rcx, rdx
	ja	.label_827
	jmp	.label_826
	.section	.text
	.align	32
	#Procedure 0x408fd0

	.globl xwrite_stdout
	.type xwrite_stdout, @function
xwrite_stdout:
	push	rbp
	push	rbx
	push	rax
	mov	rbx, rsi
	test	rbx, rbx
	je	.label_828
	mov	rcx, qword ptr [rip + stdout]
	mov	esi, 1
	mov	rdx, rbx
	call	fwrite_unlocked
	cmp	rax, rbx
	jb	.label_830
.label_828:
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
.label_830:
	mov	rdi, qword ptr [rip + stdout]
	call	clearerr_unlocked
	call	__errno_location
	mov	ebp, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_829
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	edi, 4
	mov	esi, OFFSET FLAT:label_53
	call	quotearg_style
	mov	rcx, rax
	mov	edi, 1
	xor	eax, eax
	mov	esi, ebp
	mov	rdx, rbx
	call	error
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x409050

	.globl posix2_version
	.type posix2_version, @function
posix2_version:
	push	rax
	mov	edi, OFFSET FLAT:label_831
	call	getenv
	mov	ecx, 0x31069
	test	rax, rax
	je	.label_832
	mov	ecx, 0x31069
	cmp	byte ptr [rax], 0
	je	.label_832
	lea	rsi, [rsp]
	mov	edx, 0xa
	mov	rdi, rax
	call	strtol
	mov	rcx, qword ptr [rsp]
	cmp	byte ptr [rcx], 0
	mov	ecx, 0x31069
	cmove	rcx, rax
.label_832:
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
	#Procedure 0x4090b0
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
	.align	32
	#Procedure 0x4090c8
	.globl sub_4090c8
	.type sub_4090c8, @function
sub_4090c8:

	nop	dword ptr [rax + rax]
.label_834:
	mov	rbx, qword ptr [rip + stderr]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_847
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
	.align	32
	#Procedure 0x409108
	.globl sub_409108
	.type sub_409108, @function
sub_409108:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40910b

	.globl usage
	.type usage, @function
usage:
	push	rbp
	push	rbx
	push	rax
	mov	ebp, edi
	test	ebp, ebp
	jne	.label_834
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_837
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	rdx, qword ptr [rip + program_name]
	mov	edi, 1
	xor	eax, eax
	mov	rsi, rcx
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_844
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	mov	edx, 0xa
	xor	eax, eax
	mov	rsi, rcx
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_849
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_833
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_855
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_846
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_854
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, 0xa
	mov	ecx, 5
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_836
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_843
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_850
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_851
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_853
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_841
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_848
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_842
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_179
	mov	ecx, OFFSET FLAT:label_626
	xor	eax, eax
	call	__printf_chk
	mov	edi, 5
	xor	esi, esi
	call	setlocale
	test	rax, rax
	je	.label_839
	mov	esi, OFFSET FLAT:label_840
	mov	edx, 3
	mov	rdi, rax
	call	strncmp
	test	eax, eax
	je	.label_839
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_845
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
.label_839:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_852
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_626
	mov	ecx, OFFSET FLAT:label_178
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_835
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_178
	mov	ecx, OFFSET FLAT:label_838
	xor	eax, eax
	call	__printf_chk
	mov	edi, ebp
	call	exit
.label_856:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x4093c5
	.globl sub_4093c5
	.type sub_4093c5, @function
sub_4093c5:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4093d3
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
	je	.label_857
	test	r15, r15
	je	.label_856
.label_857:
	mov	rdi, r15
	mov	rsi, r14
	mov	rdx, rbx
	call	memcpy
	mov	rax, r15
	pop	rbx
	pop	r14
	pop	r15
	ret	
.label_862:
	call	abort
	.section	.text
	.align	32
	#Procedure 0x409415
	.globl sub_409415
	.type sub_409415, @function
sub_409415:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x409422
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
	jae	.label_862
	mov	rcx, qword ptr [r14]
	shl	rax, 4
	lea	rdx, [rcx + rax]
	nop	word ptr cs:[rax + rax]
.label_859:
	cmp	qword ptr [rdx], rbx
	mov	rdx, qword ptr [rdx + 8]
	je	.label_861
	test	rdx, rdx
	jne	.label_859
	jmp	.label_858
.label_858:
	mov	rdx, qword ptr [r14 + 8]
	lea	rcx, [rcx + rax + 0x10]
	nop	word ptr cs:[rax + rax]
.label_860:
	cmp	rcx, rdx
	mov	eax, 0
	jae	.label_863
	mov	rax, qword ptr [rcx]
	add	rcx, 0x10
	test	rax, rax
	je	.label_860
.label_863:
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
.label_861:
	test	rdx, rdx
	je	.label_858
	mov	rax, qword ptr [rdx]
	jmp	.label_863
	.section	.text
	.align	32
	#Procedure 0x4094a0
	.globl hash_clear
	.type hash_clear, @function
hash_clear:

	push	r15
	push	r14
	push	rbx
	mov	r15, rdi
	mov	r14, qword ptr [r15]
	mov	rax, qword ptr [r15 + 8]
	jmp	.label_864
	.section	.text
	.align	32
	#Procedure 0x4094b1
	.globl sub_4094b1
	.type sub_4094b1, @function
sub_4094b1:

	nop	word ptr cs:[rax + rax]
.label_870:
	xorps	xmm0, xmm0
	movups	xmmword ptr [r15 + 0x18], xmm0
	pop	rbx
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	32
	#Procedure 0x4094ce
	.globl sub_4094ce
	.type sub_4094ce, @function
sub_4094ce:

	nop	word ptr [rax + rax]
.label_865:
	add	r14, 0x10
.label_864:
	cmp	r14, rax
	jae	.label_870
	cmp	qword ptr [r14], 0
	je	.label_865
	mov	rbx, qword ptr [r14 + 8]
	mov	rax, qword ptr [r15 + 0x40]
	test	rax, rax
	setne	cl
	test	rbx, rbx
	je	.label_866
	nop	word ptr cs:[rax + rax]
.label_868:
	test	cl, 1
	je	.label_867
	mov	rdi, qword ptr [rbx]
	call	rax
	mov	rax, qword ptr [r15 + 0x40]
.label_867:
	mov	qword ptr [rbx], 0
	mov	rdx, qword ptr [rbx + 8]
	mov	rcx, qword ptr [r15 + 0x48]
	mov	qword ptr [rbx + 8], rcx
	mov	qword ptr [r15 + 0x48], rbx
	test	rax, rax
	setne	cl
	test	rdx, rdx
	mov	rbx, rdx
	jne	.label_868
.label_866:
	test	cl, cl
	je	.label_869
	mov	rdi, qword ptr [r14]
	call	rax
.label_869:
	xorps	xmm0, xmm0
	movups	xmmword ptr [r14], xmm0
	mov	rax, qword ptr [r15 + 8]
	jmp	.label_865
	.section	.text
	.align	32
	#Procedure 0x409550
	.globl hash_get_n_buckets
	.type hash_get_n_buckets, @function
hash_get_n_buckets:

	mov	rax, qword ptr [rdi + 0x10]
	ret	
	.section	.text
	.align	32
	#Procedure 0x409555
	.globl sub_409555
	.type sub_409555, @function
sub_409555:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x409560

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
	je	.label_871
	cmp	r15, -2
	jb	.label_871
	xor	edi, edi
	call	hard_locale
	test	al, al
	jne	.label_871
	movzx	eax, byte ptr [r14]
	mov	dword ptr [rbx], eax
	mov	r15d, 1
.label_871:
	mov	rax, r15
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	32
	#Procedure 0x4095b6
	.globl sub_4095b6
	.type sub_4095b6, @function
sub_4095b6:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4095c0
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
	jae	.label_872
	xor	ebx, ebx
.label_876:
	mov	rdi, qword ptr [r13]
	test	rdi, rdi
	je	.label_874
	test	r13, r13
	je	.label_874
	mov	rsi, r14
	call	r15
	test	al, al
	je	.label_872
	mov	rbp, r13
	nop	word ptr cs:[rax + rax]
.label_873:
	mov	rbp, qword ptr [rbp + 8]
	test	rbp, rbp
	je	.label_875
	inc	rbx
	mov	rdi, qword ptr [rbp]
	mov	rsi, r14
	call	r15
	test	al, al
	jne	.label_873
	jmp	.label_872
	.section	.text
	.align	32
	#Procedure 0x40962c
	.globl sub_40962c
	.type sub_40962c, @function
sub_40962c:

	nop	dword ptr [rax]
.label_875:
	mov	rax, qword ptr [r12 + 8]
	inc	rbx
.label_874:
	add	r13, 0x10
	cmp	r13, rax
	jb	.label_876
.label_872:
	mov	rax, rbx
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x409653
	.globl sub_409653
	.type sub_409653, @function
sub_409653:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x409660
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
	.align	32
	#Procedure 0x409696
	.globl sub_409696
	.type sub_409696, @function
sub_409696:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4096a0
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
	je	.label_877
	add	rbx, 8
	nop	word ptr cs:[rax + rax]
.label_878:
	mov	rdi, r12
	mov	rsi, r15
	mov	rdx, r14
	call	memcmp
	test	eax, eax
	mov	rax, r13
	je	.label_877
	mov	r13, qword ptr [rbx]
	add	rbx, 8
	add	r15, r14
	test	r13, r13
	mov	eax, 0
	jne	.label_878
.label_877:
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	32
	#Procedure 0x409703
	.globl sub_409703
	.type sub_409703, @function
sub_409703:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x409710

	.globl set_program_name
	.type set_program_name, @function
set_program_name:
	push	r14
	push	rbx
	push	rax
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_882
	mov	esi, 0x2f
	mov	rdi, rbx
	call	strrchr
	test	rax, rax
	lea	r14, [rax + 1]
	cmove	r14, rbx
	mov	rax, r14
	sub	rax, rbx
	cmp	rax, 7
	jl	.label_880
	lea	rdi, [r14 - 7]
	mov	esi, OFFSET FLAT:label_879
	mov	edx, 7
	call	strncmp
	test	eax, eax
	jne	.label_880
	mov	esi, OFFSET FLAT:label_884
	mov	edx, 3
	mov	rdi, r14
	call	strncmp
	test	eax, eax
	jne	.label_881
	add	r14, 3
	mov	qword ptr [rip + __progname],  r14
.label_881:
	mov	rbx, r14
.label_880:
	mov	qword ptr [rip + program_name],  rbx
	mov	qword ptr [rip + __progname_full],  rbx
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
.label_882:
	mov	rcx, qword ptr [rip + stderr]
	mov	edi, OFFSET FLAT:label_883
	mov	esi, 0x37
	mov	edx, 1
	call	fwrite
	call	abort
	.section	.text
	.align	32
	#Procedure 0x4097b1
	.globl sub_4097b1
	.type sub_4097b1, @function
sub_4097b1:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4097c0

	.globl dup_safer
	.type dup_safer, @function
dup_safer:
	xor	esi, esi
	mov	edx, 3
	xor	eax, eax
	jmp	rpl_fcntl
	.section	.text
	.align	32
	#Procedure 0x4097ce
	.globl sub_4097ce
	.type sub_4097ce, @function
sub_4097ce:

	nop	
.label_890:
	test	rcx, rcx
	jne	.label_888
	mov	eax, 0x80
	xor	edx, edx
	div	rbx
	xor	ecx, ecx
	cmp	rbx, 0x80
	seta	cl
	add	rcx, rax
.label_888:
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rcx
	jb	.label_887
.label_891:
	mov	qword ptr [rsi], rcx
	imul	rbx, rcx
	test	rdi, rdi
	je	.label_885
	test	rbx, rbx
	jne	.label_885
	call	free
	xor	eax, eax
	pop	rbx
	ret	
.label_887:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x409821
	.globl sub_409821
	.type sub_409821, @function
sub_409821:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40982a
	.globl x2nrealloc
	.type x2nrealloc, @function
x2nrealloc:

	push	rbx
	mov	rbx, rdx
	mov	rcx, qword ptr [rsi]
	test	rdi, rdi
	je	.label_890
	movabs	rax, 0x5555555555555554
	xor	edx, edx
	div	rbx
	cmp	rax, rcx
	jbe	.label_886
	mov	rax, rcx
	shr	rax, 1
	lea	rcx, [rcx + rax + 1]
	jmp	.label_891
.label_885:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_889
	test	rax, rax
	je	.label_886
.label_889:
	pop	rbx
	ret	
.label_886:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x409870

	.globl fremote
	.type fremote, @function
fremote:
	push	rbp
	push	r15
	push	r14
	push	rbx
	sub	rsp, 0x78
	mov	r14, rsi
	lea	rsi, [rsp]
	call	fstatfs
	test	eax, eax
	je	.label_909
	call	__errno_location
	mov	ebp, dword ptr [rax]
	mov	bl, 1
	cmp	ebp, 0x26
	je	.label_911
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_913
	mov	edx, 5
	call	dcgettext
	mov	r15, rax
	mov	edi, 4
	mov	rsi, r14
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, ebp
	mov	rdx, r15
	call	error
	jmp	.label_911
.label_909:
	mov	cl, 2
	mov	rax, qword ptr [rsp]
	cmp	rax, 0x2fc12fc0
	jg	.label_919
	cmp	rax, 0xadfe
	jle	.label_920
	cmp	rax, 0x13111a7
	jg	.label_922
	cmp	rax, 0x1021993
	jg	.label_924
	cmp	rax, 0x11953
	jle	.label_926
	cmp	rax, 0x414a52
	jle	.label_927
	cmp	rax, 0x414a53
	je	.label_893
	cmp	rax, 0xc0ffee
	je	.label_893
	cmp	rax, 0xc36400
	je	.label_898
	jmp	.label_892
.label_919:
	cmp	rax, 0x65735542
	jle	.label_932
	mov	edx, 0x858458f5
	cmp	rax, rdx
	jle	.label_933
	mov	edx, 0xc97e8167
	cmp	rax, rdx
	jg	.label_934
	mov	edx, 0xaad7aae9
	cmp	rax, rdx
	jg	.label_937
	mov	edx, 0x958458f5
	cmp	rax, rdx
	jg	.label_939
	mov	edx, 0x858458f6
	cmp	rax, rdx
	je	.label_893
	mov	edx, 0x9123683e
	jmp	.label_899
.label_920:
	cmp	rax, 0x482a
	jg	.label_941
	cmp	rax, 0x2467
	jg	.label_943
	cmp	rax, 0x1372
	jle	.label_945
	lea	rdx, [rax - 0x1373]
	cmp	rdx, 0x1c
	ja	.label_914
	mov	esi, 0x10001401
	bt	rsi, rdx
	jb	.label_893
.label_914:
	cmp	rax, 0x1cd1
	je	.label_893
	jmp	.label_892
.label_932:
	cmp	rax, 0x541900ff
	jg	.label_949
	cmp	rax, 0x47504652
	jle	.label_950
	cmp	rax, 0x5346414e
	jg	.label_895
	cmp	rax, 0x52654972
	jg	.label_896
	cmp	rax, 0x47504653
	je	.label_898
	cmp	rax, 0x50495045
	je	.label_898
	jmp	.label_892
.label_933:
	cmp	rax, 0x73636672
	jle	.label_902
	cmp	rax, 0x7461636e
	jg	.label_903
	cmp	rax, 0x73727278
	jg	.label_905
	cmp	rax, 0x73636673
	je	.label_893
	cmp	rax, 0x73717368
	je	.label_893
	jmp	.label_892
.label_941:
	cmp	rax, 0x6968
	jle	.label_907
	cmp	rax, 0x965f
	jg	.label_910
	cmp	rax, 0x6969
	je	.label_898
	cmp	rax, 0x7275
	je	.label_893
	cmp	rax, 0x72b6
	je	.label_893
	jmp	.label_892
.label_949:
	cmp	rax, 0x6165676b
	jle	.label_916
	cmp	rax, 0x62656571
	jg	.label_918
	cmp	rax, 0x62646575
	jg	.label_936
	cmp	rax, 0x6165676c
	je	.label_893
	cmp	rax, 0x61756673
	je	.label_898
	jmp	.label_892
.label_922:
	cmp	rax, 0x15013345
	jg	.label_925
	cmp	rax, 0xbad1de9
	jle	.label_906
	cmp	rax, 0x11307853
	jg	.label_929
	cmp	rax, 0xbad1dea
	je	.label_893
	cmp	rax, 0xbd00bd0
	je	.label_898
	jmp	.label_892
.label_924:
	cmp	rax, 0x12fd16c
	jg	.label_931
	cmp	rax, 0x1021994
	je	.label_893
	cmp	rax, 0x1021997
	je	.label_893
	cmp	rax, 0x1161970
	je	.label_898
	jmp	.label_892
.label_934:
	mov	edx, 0xf97cff8b
	cmp	rax, rdx
	jg	.label_938
	mov	edx, 0xde5e81e3
	cmp	rax, rdx
	jg	.label_940
	mov	edx, 0xc97e8168
	cmp	rax, rdx
	je	.label_893
	mov	edx, 0xcafe4a11
	jmp	.label_899
.label_943:
	cmp	rax, 0x3fff
	jle	.label_942
	lea	rdx, [rax - 0x4000]
	cmp	rdx, 6
	ja	.label_944
	mov	esi, 0x51
	bt	rsi, rdx
	jb	.label_893
.label_944:
	cmp	rax, 0x4244
	je	.label_893
	jmp	.label_892
.label_950:
	cmp	rax, 0x42494e4c
	jle	.label_947
	cmp	rax, 0x453dcd27
	jg	.label_948
	cmp	rax, 0x42494e4d
	je	.label_893
	cmp	rax, 0x43415d53
	je	.label_893
	jmp	.label_892
.label_902:
	cmp	rax, 0x68191121
	jle	.label_897
	cmp	rax, 0x6e667363
	jg	.label_900
	cmp	rax, 0x68191122
	je	.label_893
	cmp	rax, 0x6b414653
	je	.label_898
	jmp	.label_892
.label_907:
	cmp	rax, 0x4d59
	jle	.label_904
	cmp	rax, 0x564b
	jg	.label_901
	cmp	rax, 0x4d5a
	je	.label_893
	cmp	rax, 0x517b
	je	.label_898
	jmp	.label_892
.label_916:
	cmp	rax, 0x58465341
	jle	.label_908
	cmp	rax, 0x5dca2df4
	jg	.label_912
	cmp	rax, 0x58465342
	je	.label_893
	cmp	rax, 0x5a3c69f0
	je	.label_893
	jmp	.label_892
.label_925:
	cmp	rax, 0x1badfacd
	jle	.label_915
	cmp	rax, 0x28cd3d44
	jg	.label_917
	cmp	rax, 0x1badface
	je	.label_893
	cmp	rax, 0x24051905
	je	.label_893
	jmp	.label_892
.label_926:
	cmp	rax, 0xef52
	jg	.label_923
	cmp	rax, 0xadff
	je	.label_893
	cmp	rax, 0xef51
	je	.label_893
	jmp	.label_892
.label_937:
	mov	edx, 0xbacbacbb
	cmp	rax, rdx
	jg	.label_928
	mov	edx, 0xaad7aaea
	cmp	rax, rdx
	je	.label_898
	mov	edx, 0xabba1974
	jmp	.label_899
.label_895:
	cmp	rax, 0x5346544d
	jg	.label_930
	cmp	rax, 0x5346414f
	je	.label_898
	cmp	rax, 0x53464846
	je	.label_893
	jmp	.label_892
.label_903:
	cmp	rax, 0x794c762f
	jg	.label_935
	cmp	rax, 0x7461636f
	je	.label_898
	cmp	rax, 0x74726163
	je	.label_893
	jmp	.label_892
.label_910:
	lea	rdx, [rax - 0x9fa0]
	cmp	rdx, 3
	jb	.label_893
	cmp	rax, 0x9660
	je	.label_893
	cmp	rax, 0xadf5
	je	.label_893
	jmp	.label_892
.label_918:
	cmp	rax, 0x6462671f
	jg	.label_946
	cmp	rax, 0x62656572
	je	.label_893
	cmp	rax, 0x63677270
	je	.label_893
	jmp	.label_892
.label_931:
	lea	rdx, [rax - 0x12ff7b4]
	cmp	rdx, 4
	jb	.label_893
	cmp	rax, 0x12fd16d
	je	.label_893
	jmp	.label_892
.label_938:
	mov	edx, 0xfe534d41
	cmp	rax, rdx
	jg	.label_894
	mov	edx, 0xf97cff8c
	cmp	rax, rdx
	je	.label_893
	mov	edx, 0xf995e849
	jmp	.label_899
.label_945:
	cmp	rax, 0x2f
	je	.label_893
	cmp	rax, 0x187
	je	.label_893
	cmp	rax, 0x7c0
	je	.label_893
	jmp	.label_892
.label_906:
	cmp	rax, 0x13111a8
	je	.label_898
	cmp	rax, 0x7655821
	je	.label_893
	cmp	rax, 0x9041934
	je	.label_893
	jmp	.label_892
.label_942:
	cmp	rax, 0x2468
	je	.label_893
	cmp	rax, 0x2478
	je	.label_893
	cmp	rax, 0x3434
	je	.label_893
	jmp	.label_892
.label_947:
	cmp	rax, 0x2fc12fc1
	je	.label_893
	cmp	rax, 0x3153464a
	je	.label_893
	cmp	rax, 0x42465331
	je	.label_893
	jmp	.label_892
.label_897:
	cmp	rax, 0x65735543
	je	.label_898
	cmp	rax, 0x65735546
	je	.label_898
	cmp	rax, 0x67596969
	je	.label_893
	jmp	.label_892
.label_904:
	cmp	rax, 0x482b
	je	.label_893
	cmp	rax, 0x4858
	je	.label_893
	cmp	rax, 0x4d44
	je	.label_893
	jmp	.label_892
.label_908:
	cmp	rax, 0x54190100
	je	.label_893
	cmp	rax, 0x565a4653
	je	.label_893
	cmp	rax, 0x58295829
	je	.label_893
	jmp	.label_892
.label_915:
	cmp	rax, 0x15013346
	je	.label_893
	cmp	rax, 0x19800202
	je	.label_893
	cmp	rax, 0x19830326
	je	.label_898
	jmp	.label_892
.label_927:
	cmp	rax, 0x11954
	je	.label_893
	cmp	rax, 0x27e0eb
	je	.label_893
	jmp	.label_892
.label_939:
	mov	edx, 0x958458f6
	cmp	rax, rdx
	je	.label_893
	mov	ecx, 0xa501fcf5
	jmp	.label_921
.label_896:
	cmp	rax, 0x52654973
	je	.label_893
	cmp	rax, 0x5346314d
	je	.label_893
	jmp	.label_892
.label_905:
	cmp	rax, 0x73727279
	je	.label_893
	cmp	rax, 0x73757245
	je	.label_898
	jmp	.label_892
.label_936:
	cmp	rax, 0x62646576
	je	.label_893
	cmp	rax, 0x62656570
	je	.label_893
	jmp	.label_892
.label_929:
	cmp	rax, 0x11307854
	je	.label_893
	cmp	rax, 0x13661366
	je	.label_893
	jmp	.label_892
.label_940:
	mov	edx, 0xde5e81e4
	cmp	rax, rdx
	je	.label_893
	mov	edx, 0xf2f52010
.label_899:
	cmp	rax, rdx
	je	.label_893
	jmp	.label_892
.label_948:
	cmp	rax, 0x453dcd28
	je	.label_893
	cmp	rax, 0x45584653
	je	.label_893
	jmp	.label_892
.label_900:
	cmp	rax, 0x6e667364
	je	.label_898
	cmp	rax, 0x6e736673
	je	.label_893
	jmp	.label_892
.label_901:
	cmp	rax, 0x564c
	je	.label_898
	cmp	rax, 0x5df5
	je	.label_893
	jmp	.label_892
.label_912:
	cmp	rax, 0x5dca2df5
	je	.label_893
	cmp	rax, 0x61636673
	je	.label_898
	jmp	.label_892
.label_917:
	cmp	rax, 0x28cd3d45
	je	.label_893
	cmp	rax, 0x2bad1dea
	je	.label_893
	jmp	.label_892
.label_923:
	cmp	rax, 0xef53
	je	.label_893
	cmp	rax, 0xf15f
	je	.label_893
	jmp	.label_892
.label_928:
	mov	ecx, 0xbacbacbc
	cmp	rax, rcx
	je	.label_898
	mov	ecx, 0xbeefdead
	jmp	.label_921
.label_930:
	cmp	rax, 0x5346544e
	je	.label_893
	cmp	rax, 0x534f434b
	je	.label_893
	jmp	.label_892
.label_935:
	cmp	rax, 0x794c7630
	je	.label_898
	cmp	rax, 0x7c7c6673
	je	.label_898
	jmp	.label_892
.label_946:
	cmp	rax, 0x64626720
	je	.label_893
	cmp	rax, 0x64646178
	je	.label_893
	jmp	.label_892
.label_894:
	mov	ecx, 0xfe534d42
	cmp	rax, rcx
	je	.label_898
	mov	ecx, 0xff534d42
.label_921:
	cmp	rax, rcx
	jne	.label_892
.label_898:
	mov	cl, 1
.label_893:
	and	cl, 7
	mov	bl, 3
	shr	bl, cl
	and	bl, 1
.label_911:
	mov	eax, ebx
	add	rsp, 0x78
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_892:
	xor	ecx, ecx
	jmp	.label_893
	.section	.text
	.align	32
	#Procedure 0x40a152
	.globl sub_40a152
	.type sub_40a152, @function
sub_40a152:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40a160

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
	jae	.label_971
	mov	rbp, qword ptr [r15]
	shl	rbx, 4
	mov	rsi, qword ptr [rbp + rbx]
	xor	r12d, r12d
	test	rsi, rsi
	je	.label_954
	lea	r13, [rbp + rbx]
	cmp	rsi, r14
	je	.label_960
	mov	rdi, r14
	call	qword ptr [r15 + 0x38]
	test	al, al
	je	.label_963
	mov	r14, qword ptr [r13]
.label_960:
	mov	rax, qword ptr [rbp + rbx + 8]
	test	rax, rax
	je	.label_968
	movups	xmm0, xmmword ptr [rax]
	movups	xmmword ptr [r13], xmm0
	mov	qword ptr [rax], 0
	mov	rcx, qword ptr [r15 + 0x48]
	mov	qword ptr [rax + 8], rcx
	mov	qword ptr [r15 + 0x48], rax
	jmp	.label_961
.label_963:
	mov	rax, qword ptr [rbp + rbx + 8]
	xor	r12d, r12d
	test	rax, rax
	je	.label_954
	lea	rbx, [rbp + rbx + 8]
	xor	r12d, r12d
	nop	word ptr [rax + rax]
.label_957:
	mov	rsi, qword ptr [rax]
	cmp	rsi, r14
	je	.label_951
	mov	rdi, r14
	call	qword ptr [r15 + 0x38]
	mov	rcx, qword ptr [rbx]
	test	al, al
	jne	.label_956
	mov	rax, qword ptr [rcx + 8]
	add	rcx, 8
	test	rax, rax
	mov	rbx, rcx
	jne	.label_957
	jmp	.label_954
.label_968:
	mov	qword ptr [r13], 0
	jmp	.label_961
.label_951:
	mov	rcx, rax
	jmp	.label_965
.label_956:
	mov	r14, qword ptr [rcx]
.label_965:
	mov	rax, qword ptr [rcx + 8]
	mov	qword ptr [rbx], rax
	mov	qword ptr [rcx], 0
	mov	rax, qword ptr [r15 + 0x48]
	mov	qword ptr [rcx + 8], rax
	mov	qword ptr [r15 + 0x48], rcx
.label_961:
	xor	r12d, r12d
	test	r14, r14
	je	.label_954
	dec	qword ptr [r15 + 0x20]
	cmp	qword ptr [r13], 0
	jne	.label_958
	mov	rax, qword ptr [r15 + 0x18]
	dec	rax
	mov	qword ptr [r15 + 0x18], rax
	mov	ecx, eax
	and	ecx, 1
	test	rax, rax
	js	.label_962
	cvtsi2ss	xmm1, rax
	jmp	.label_953
.label_962:
	shr	rax, 1
	or	rcx, rax
	cvtsi2ss	xmm1, rcx
	addss	xmm1, xmm1
.label_953:
	mov	rcx, qword ptr [r15 + 0x10]
	mov	rax, qword ptr [r15 + 0x28]
	movss	xmm2, dword ptr [rax]
	mov	edx, ecx
	and	edx, 1
	test	rcx, rcx
	js	.label_959
	xorps	xmm0, xmm0
	cvtsi2ss	xmm0, rcx
	jmp	.label_964
.label_959:
	shr	rcx, 1
	or	rdx, rcx
	xorps	xmm0, xmm0
	cvtsi2ss	xmm0, rdx
	addss	xmm0, xmm0
.label_964:
	movaps	xmm3, xmm2
	mulss	xmm3, xmm0
	ucomiss	xmm3, xmm1
	jbe	.label_958
	mov	ecx, OFFSET FLAT:default_tuning
	cmp	rax, rcx
	je	.label_969
	movss	xmm3, dword ptr [rax + 8]
	ucomiss	xmm3, dword ptr [rip + label_483]
	jbe	.label_952
	movss	xmm4, dword ptr [rip + label_488]
	ucomiss	xmm4, xmm3
	jbe	.label_952
	xorps	xmm4, xmm4
	ucomiss	xmm2, xmm4
	jb	.label_952
	movss	xmm4, dword ptr [rax + 0xc]
	ucomiss	xmm4, dword ptr [rip + label_490]
	jbe	.label_952
	movss	xmm4, dword ptr [rip + label_483]
	addss	xmm4, xmm2
	ucomiss	xmm3, xmm4
	jbe	.label_952
	movss	xmm3, dword ptr [rax + 4]
	movss	xmm5, dword ptr [rip + label_485]
	ucomiss	xmm5, xmm3
	jb	.label_952
	ucomiss	xmm3, xmm4
	ja	.label_966
.label_952:
	mov	qword ptr [r15 + 40], OFFSET FLAT:default_tuning
	mov	eax, OFFSET FLAT:default_tuning
	xorps	xmm2, xmm2
	jmp	.label_966
.label_969:
	mov	eax, OFFSET FLAT:default_tuning
.label_966:
	mulss	xmm2, xmm0
	ucomiss	xmm2, xmm1
	jbe	.label_958
	mulss	xmm0, dword ptr [rax + 4]
	cmp	byte ptr [rax + 0x10], 0
	jne	.label_970
	mulss	xmm0, dword ptr [rax + 8]
.label_970:
	movss	xmm1, dword ptr [rip + label_407]
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
	jne	.label_958
	mov	rdi, qword ptr [r15 + 0x48]
	test	rdi, rdi
	je	.label_955
	nop	word ptr cs:[rax + rax]
.label_967:
	mov	rbx, qword ptr [rdi + 8]
	call	free
	test	rbx, rbx
	mov	rdi, rbx
	jne	.label_967
.label_955:
	mov	qword ptr [r15 + 0x48], 0
.label_958:
	mov	r12, r14
.label_954:
	mov	rax, r12
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_971:
	call	abort
	.section	.text
	.align	32
	#Procedure 0x40a3f3
	.globl sub_40a3f3
	.type sub_40a3f3, @function
sub_40a3f3:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40a400
	.globl base_len
	.type base_len, @function
base_len:

	push	rbx
	mov	rbx, rdi
	call	strlen
	mov	rcx, rax
	nop	dword ptr [rax]
.label_973:
	mov	rax, rcx
	cmp	rax, 2
	jb	.label_972
	lea	rcx, [rax - 1]
	cmp	byte ptr [rbx + rax - 1], 0x2f
	je	.label_973
.label_972:
	pop	rbx
	ret	
	.section	.text
	.align	32
	#Procedure 0x40a426
	.globl sub_40a426
	.type sub_40a426, @function
sub_40a426:

	nop	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40a430

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
	.align	32
	#Procedure 0x40a449
	.globl sub_40a449
	.type sub_40a449, @function
sub_40a449:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40a450
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
	jae	.label_980
	mov	rdx, rax
	not	rdx
	add	rdi, rdx
	shr	rdi, 4
	lea	rsi, [rdi + 1]
	mov	r8d, esi
	and	r8d, 1
	xor	ebx, ebx
	test	rdi, rdi
	je	.label_983
	sub	rsi, r8
	xor	ebx, ebx
	nop	dword ptr [rax]
.label_982:
	cmp	qword ptr [rax], 0
	je	.label_974
	xor	edi, edi
	mov	rdx, rax
	nop	dword ptr [rax + rax]
.label_979:
	mov	rdx, qword ptr [rdx + 8]
	inc	rdi
	test	rdx, rdx
	jne	.label_979
	cmp	rdi, rbx
	cmova	rbx, rdi
.label_974:
	cmp	qword ptr [rax + 0x10], 0
	je	.label_976
	lea	rdx, [rax + 0x10]
	xor	edi, edi
.label_977:
	mov	rdx, qword ptr [rdx + 8]
	inc	rdi
	test	rdx, rdx
	jne	.label_977
	cmp	rdi, rbx
	cmova	rbx, rdi
.label_976:
	add	rax, 0x20
	add	rsi, -2
	jne	.label_982
.label_983:
	test	r8, r8
	je	.label_980
	cmp	qword ptr [rax], 0
	je	.label_980
	xor	edx, edx
	nop	word ptr [rax + rax]
.label_975:
	mov	rax, qword ptr [rax + 8]
	inc	rdx
	test	rax, rax
	jne	.label_975
	cmp	rdx, rbx
	cmova	rbx, rdx
.label_980:
	mov	esi, 1
	mov	edx, OFFSET FLAT:label_981
	xor	eax, eax
	mov	rdi, r15
	call	__fprintf_chk
	mov	esi, 1
	mov	edx, OFFSET FLAT:label_978
	xor	eax, eax
	mov	rdi, r15
	mov	rcx, r12
	call	__fprintf_chk
	movq	xmm1, r14
	movdqa	xmm2, xmmword ptr [rip + label_985]
	punpckldq	xmm1, xmm2
	movapd	xmm3, xmmword ptr [rip + label_986]
	subpd	xmm1, xmm3
	pshufd	xmm0, xmm1, 0x4e
	addpd	xmm0, xmm1
	mulsd	xmm0, qword ptr [rip + label_987]
	movq	xmm1, r12
	punpckldq	xmm1, xmm2
	subpd	xmm1, xmm3
	pshufd	xmm2, xmm1, 0x4e
	addpd	xmm2, xmm1
	divsd	xmm0, xmm2
	mov	esi, 1
	mov	edx, OFFSET FLAT:label_988
	mov	al, 1
	mov	rdi, r15
	mov	rcx, r14
	call	__fprintf_chk
	mov	esi, 1
	mov	edx, OFFSET FLAT:label_984
	xor	eax, eax
	mov	rdi, r15
	mov	rcx, rbx
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	jmp	__fprintf_chk
	.section	.text
	.align	32
	#Procedure 0x40a5bf
	.globl sub_40a5bf
	.type sub_40a5bf, @function
sub_40a5bf:

	nop	
	.section	.text
	.align	32
	#Procedure 0x40a5c0

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
	mov	r15, rsi
	mov	r14, rdi
	mov	r13, qword ptr [r15]
	mov	rax, qword ptr [r15 + 8]
	cmp	r13, rax
	jae	.label_989
	test	dl, dl
	je	.label_1001
	nop	dword ptr [rax]
.label_990:
	cmp	qword ptr [r13], 0
	je	.label_1005
	mov	rbp, qword ptr [r13 + 8]
	test	rbp, rbp
	je	.label_1009
	mov	rsi, qword ptr [r14 + 0x10]
	nop	dword ptr [rax + rax]
.label_1004:
	mov	rbx, qword ptr [rbp]
	mov	rdi, rbx
	call	qword ptr [r14 + 0x30]
	mov	rsi, qword ptr [r14 + 0x10]
	cmp	rax, rsi
	jae	.label_993
	mov	rdx, qword ptr [r14]
	mov	rcx, qword ptr [rbp + 8]
	shl	rax, 4
	cmp	qword ptr [rdx + rax], 0
	je	.label_1002
	mov	rdi, qword ptr [rdx + rax + 8]
	mov	qword ptr [rbp + 8], rdi
	mov	qword ptr [rdx + rax + 8], rbp
	jmp	.label_991
	.section	.text
	.align	32
	#Procedure 0x40a64a
	.globl sub_40a64a
	.type sub_40a64a, @function
sub_40a64a:

	nop	word ptr [rax + rax]
.label_1002:
	add	rdx, rax
	mov	qword ptr [rdx], rbx
	inc	qword ptr [r14 + 0x18]
	mov	qword ptr [rbp], 0
	mov	rax, qword ptr [r14 + 0x48]
	mov	qword ptr [rbp + 8], rax
	mov	qword ptr [r14 + 0x48], rbp
.label_991:
	test	rcx, rcx
	mov	rbp, rcx
	jne	.label_1004
	mov	rax, qword ptr [r15 + 8]
.label_1009:
	mov	qword ptr [r13 + 8], 0
.label_1005:
	add	r13, 0x10
	cmp	r13, rax
	jb	.label_990
	jmp	.label_989
	.section	.text
	.align	32
	#Procedure 0x40a694
	.globl sub_40a694
	.type sub_40a694, @function
sub_40a694:

	nop	word ptr cs:[rax + rax]
.label_1001:
	mov	r12, qword ptr [r13]
	test	r12, r12
	je	.label_1000
	mov	rbp, qword ptr [r13 + 8]
	test	rbp, rbp
	mov	rsi, qword ptr [r14 + 0x10]
	je	.label_996
	nop	word ptr [rax + rax]
.label_1006:
	mov	rbx, qword ptr [rbp]
	mov	rdi, rbx
	call	qword ptr [r14 + 0x30]
	mov	rsi, qword ptr [r14 + 0x10]
	cmp	rax, rsi
	jae	.label_993
	mov	rdx, qword ptr [r14]
	mov	rcx, qword ptr [rbp + 8]
	shl	rax, 4
	cmp	qword ptr [rdx + rax], 0
	je	.label_998
	mov	rdi, qword ptr [rdx + rax + 8]
	mov	qword ptr [rbp + 8], rdi
	mov	qword ptr [rdx + rax + 8], rbp
	jmp	.label_1007
	.section	.text
	.align	32
	#Procedure 0x40a6fa
	.globl sub_40a6fa
	.type sub_40a6fa, @function
sub_40a6fa:

	nop	word ptr [rax + rax]
.label_998:
	add	rdx, rax
	mov	qword ptr [rdx], rbx
	inc	qword ptr [r14 + 0x18]
	mov	qword ptr [rbp], 0
	mov	rax, qword ptr [r14 + 0x48]
	mov	qword ptr [rbp + 8], rax
	mov	qword ptr [r14 + 0x48], rbp
.label_1007:
	test	rcx, rcx
	mov	rbp, rcx
	jne	.label_1006
	mov	r12, qword ptr [r13]
.label_996:
	mov	qword ptr [r13 + 8], 0
	mov	rdi, r12
	call	qword ptr [r14 + 0x30]
	mov	rbx, rax
	cmp	rbx, qword ptr [r14 + 0x10]
	jae	.label_1008
	mov	rbp, qword ptr [r14]
	shl	rbx, 4
	cmp	qword ptr [rbp + rbx], 0
	je	.label_992
	mov	rax, qword ptr [r14 + 0x48]
	test	rax, rax
	je	.label_997
	mov	rcx, qword ptr [rax + 8]
	mov	qword ptr [r14 + 0x48], rcx
	jmp	.label_999
	.section	.text
	.align	32
	#Procedure 0x40a768
	.globl sub_40a768
	.type sub_40a768, @function
sub_40a768:

	nop	dword ptr [rax + rax]
.label_992:
	add	rbp, rbx
	mov	qword ptr [rbp], r12
	inc	qword ptr [r14 + 0x18]
	jmp	.label_994
.label_997:
	mov	edi, 0x10
	call	malloc
	test	rax, rax
	je	.label_1003
.label_999:
	mov	qword ptr [rax], r12
	mov	rcx, qword ptr [rbp + rbx + 8]
	mov	qword ptr [rax + 8], rcx
	mov	qword ptr [rbp + rbx + 8], rax
.label_994:
	mov	qword ptr [r13], 0
	dec	qword ptr [r15 + 0x18]
	mov	rax, qword ptr [r15 + 8]
.label_1000:
	add	r13, 0x10
	cmp	r13, rax
	jb	.label_1001
.label_989:
	mov	al, 1
.label_995:
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_1003:
	xor	eax, eax
	jmp	.label_995
.label_993:
	call	abort
.label_1008:
	call	abort
	.section	.text
	.align	32
	#Procedure 0x40a7d9
	.globl sub_40a7d9
	.type sub_40a7d9, @function
sub_40a7d9:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40a7e0
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
	.align	32
	#Procedure 0x40a7f8
	.globl sub_40a7f8
	.type sub_40a7f8, @function
sub_40a7f8:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40a800

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
	je	.label_1010
	lea	r15, [rsp]
	nop	dword ptr [rax + rax]
.label_1011:
	mov	eax, dword ptr [r14]
	mov	ebx, 0xffffffff
	or	eax, 4
	cmp	eax, 4
	jne	.label_1010
	mov	dword ptr [r14], 0
	xor	ebx, ebx
	xor	esi, esi
	mov	rdi, r15
	call	rpl_nanosleep
	test	eax, eax
	jne	.label_1011
.label_1010:
	mov	eax, ebx
	add	rsp, 0x10
	pop	rbx
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	32
	#Procedure 0x40a873
	.globl sub_40a873
	.type sub_40a873, @function
sub_40a873:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40a880
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
	.align	32
	#Procedure 0x40a899
	.globl sub_40a899
	.type sub_40a899, @function
sub_40a899:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40a8a0

	.globl quote_n
	.type quote_n, @function
quote_n:
	mov	rdx, -1
	mov	ecx, OFFSET FLAT:quote_quoting_options
	jmp	quotearg_n_options
	.section	.text
	.align	32
	#Procedure 0x40a8b1
	.globl sub_40a8b1
	.type sub_40a8b1, @function
sub_40a8b1:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40a8c0

	.globl close_stdout
	.type close_stdout, @function
close_stdout:
	push	rbp
	push	rbx
	push	rax
	mov	rdi, qword ptr [rip + stdout]
	call	close_stream
	test	eax, eax
	je	.label_1013
	mov	bl, byte ptr [rip + ignore_EPIPE]
	call	__errno_location
	mov	rbp, rax
	cmp	bl, 0
	je	.label_1012
	cmp	dword ptr [rbp], 0x20
	jne	.label_1012
.label_1013:
	mov	rdi, qword ptr [rip + stderr]
	call	close_stream
	test	eax, eax
	jne	.label_1015
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
.label_1012:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_147
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	rdi, qword ptr [rip + file_name]
	test	rdi, rdi
	mov	ebp, dword ptr [rbp]
	jne	.label_1014
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_156
	xor	eax, eax
	mov	esi, ebp
	mov	rcx, rbx
	call	error
	mov	edi, dword ptr [rip + exit_failure]
	call	_exit
.label_1014:
	call	quotearg_colon
	mov	rcx, rax
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_186
	xor	eax, eax
	mov	esi, ebp
	mov	r8, rbx
	call	error
	mov	edi, dword ptr [rip + exit_failure]
	call	_exit
	nop	word ptr cs:[rax + rax]
.label_1015:
	mov	edi, dword ptr [rip + exit_failure]
	call	_exit
	.section	.text
	.align	32
	#Procedure 0x40a980
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
	.align	32
	#Procedure 0x40a993
	.globl sub_40a993
	.type sub_40a993, @function
sub_40a993:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40a9a0
	.globl xcalloc
	.type xcalloc, @function
xcalloc:

	push	rax
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	jb	.label_1016
	call	rpl_calloc
	test	rax, rax
	je	.label_1016
	pop	rcx
	ret	
.label_1016:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x40a9c6
	.globl sub_40a9c6
	.type sub_40a9c6, @function
sub_40a9c6:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40a9d0
	.globl xcharalloc
	.type xcharalloc, @function
xcharalloc:

	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	je	.label_1017
	test	rax, rax
	je	.label_1018
.label_1017:
	pop	rbx
	ret	
.label_1018:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x40a9ea
	.globl sub_40a9ea
	.type sub_40a9ea, @function
sub_40a9ea:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40a9f0

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
	jae	.label_1022
	mov	rbx, qword ptr [r14]
	shl	rax, 4
	mov	rsi, qword ptr [rbx + rax]
	xor	r15d, r15d
	test	rsi, rsi
	je	.label_1019
	add	rbx, rax
	je	.label_1019
	cmp	rsi, r12
	je	.label_1021
	xor	r15d, r15d
	nop	
.label_1020:
	mov	rdi, r12
	call	qword ptr [r14 + 0x38]
	test	al, al
	jne	.label_1023
	mov	rbx, qword ptr [rbx + 8]
	test	rbx, rbx
	je	.label_1019
	mov	rsi, qword ptr [rbx]
	cmp	rsi, r12
	jne	.label_1020
.label_1021:
	mov	r15, r12
	jmp	.label_1019
.label_1023:
	mov	r15, qword ptr [rbx]
.label_1019:
	mov	rax, r15
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
.label_1022:
	call	abort
	.section	.text
	.align	32
	#Procedure 0x40aa68
	.globl sub_40aa68
	.type sub_40aa68, @function
sub_40aa68:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40aa70

	.globl recheck
	.type recheck, @function
recheck:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0xa8
	mov	ebp, esi
	mov	r12, rdi
	mov	rdi, qword ptr [r12]
	cmp	byte ptr [rdi], 0x2d
	jne	.label_1059
	lea	r14, [r12 + 0x36]
	lea	rbx, [r12 + 0x3c]
	cmp	byte ptr [rdi + 1], 0
	mov	r13b, byte ptr [r12 + 0x36]
	mov	r15d, dword ptr [r12 + 0x3c]
	jne	.label_1052
	xor	esi, esi
	mov	al, 1
	mov	dword ptr [rsp + 0xc], eax
	jmp	.label_1066
.label_1059:
	lea	r14, [r12 + 0x36]
	mov	r13b, byte ptr [r12 + 0x36]
	lea	rbx, [r12 + 0x3c]
	mov	r15d, dword ptr [r12 + 0x3c]
.label_1052:
	xor	esi, esi
	test	bpl, bpl
	sete	sil
	shl	esi, 0xb
	mov	dword ptr [rsp + 0xc], 0
	xor	eax, eax
	call	open_safer
	mov	esi, eax
.label_1066:
	mov	rax, qword ptr [r12 + 0x38]
	cmp	eax, -1
	sete	cl
	shr	rax, 0x20
	sete	al
	xor	al, cl
	je	.label_1051
	cmp	esi, -1
	sete	al
	and	al, byte ptr [rip + reopen_inaccessible_files]
	xor	al, 1
	mov	byte ptr [r14], al
	mov	al, byte ptr [rip + disable_inotify]
	test	al, al
	mov	qword ptr [rsp], rsi
	jne	.label_1040
	mov	rsi, qword ptr [r12]
	lea	rdx, [rsp + 0x10]
	mov	edi, 1
	call	__lxstat
	mov	rsi, qword ptr [rsp]
	test	eax, eax
	jne	.label_1040
	mov	eax, 0xf000
	and	eax, dword ptr [rsp + 0x28]
	cmp	eax, 0xa000
	jne	.label_1040
	mov	dword ptr [rbx], 0xffffffff
	mov	byte ptr [r12 + 0x34], 1
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_1047
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	rsi, qword ptr [r12]
	cmp	byte ptr [rsi], 0x2d
	jne	.label_1057
	cmp	byte ptr [rsi + 1], 0
	jne	.label_1057
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_119
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
.label_1057:
	mov	edi, 4
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	jmp	.label_1063
.label_1040:
	cmp	esi, -1
	je	.label_1065
	lea	rdx, [rsp + 0x10]
	mov	edi, 1
	call	__fxstat
	mov	rdi, qword ptr [rsp]
	test	eax, eax
	js	.label_1065
	movzx	eax, word ptr [rsp + 0x28]
	and	eax, 0xf000
	movsx	ecx, ax
	movzx	eax, ax
	cmp	ecx, 0xfff
	jg	.label_1070
	cmp	eax, 0x8000
	je	.label_1062
	cmp	eax, 0xc000
	je	.label_1062
	jmp	.label_1068
.label_1065:
	call	__errno_location
	mov	ebp, dword ptr [rax]
	mov	dword ptr [rbx], ebp
	cmp	byte ptr [r14], 0
	je	.label_1075
	mov	ebx, dword ptr [rax]
	cmp	r15d, ebx
	mov	rdi, qword ptr [rsp]
	je	.label_1028
	mov	rdx, qword ptr [r12]
	cmp	byte ptr [rdx], 0x2d
	jne	.label_1036
	cmp	byte ptr [rdx + 1], 0
	jne	.label_1036
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_119
	mov	edx, 5
	call	dcgettext
	mov	rdx, rax
.label_1036:
	xor	edi, edi
	mov	esi, 3
	call	quotearg_n_style_colon
	mov	rcx, rax
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_156
	xor	eax, eax
	mov	esi, ebx
	call	error
	jmp	.label_1041
.label_1075:
	test	r13b, r13b
	mov	rdi, qword ptr [rsp]
	je	.label_1028
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_1058
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	rsi, qword ptr [r12]
	cmp	byte ptr [rsi], 0x2d
	jne	.label_1060
	cmp	byte ptr [rsi + 1], 0
	jne	.label_1060
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_119
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
.label_1060:
	mov	edi, 4
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, ebp
.label_1063:
	mov	rdx, rbx
	call	error
	jmp	.label_1041
.label_1070:
	cmp	eax, 0x1000
	je	.label_1062
	cmp	eax, 0x2000
	jne	.label_1068
.label_1062:
	mov	rsi, qword ptr [r12]
	cmp	byte ptr [rsi], 0x2d
	jne	.label_1073
	cmp	byte ptr [rsi + 1], 0
	jne	.label_1073
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_119
	mov	edx, 5
	call	dcgettext
	mov	rdi, qword ptr [rsp]
	mov	rsi, rax
.label_1073:
	call	fremote
	mov	byte ptr [r12 + 0x35], al
	test	al, al
	je	.label_1024
	mov	al, byte ptr [rip + disable_inotify]
	test	al, al
	je	.label_1029
.label_1024:
	mov	dword ptr [rbx], 0
	or	r15d, 2
	cmp	r15d, 2
	jne	.label_1031
	cmp	dword ptr [r12 + 0x38], -1
	je	.label_1038
	mov	rax, qword ptr [r12 + 0x28]
	cmp	rax, qword ptr [rsp + 0x18]
	jne	.label_1046
	mov	rax, qword ptr [r12 + 0x20]
	cmp	rax, qword ptr [rsp + 0x10]
	jne	.label_1046
	mov	rbx, qword ptr [r12]
	cmp	byte ptr [rbx], 0x2d
	jne	.label_1050
	cmp	byte ptr [rbx + 1], 0
	mov	rdi, qword ptr [rsp]
	jne	.label_1055
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_119
	mov	edx, 5
	call	dcgettext
	mov	rdi, qword ptr [rsp]
	mov	rbx, rax
	jmp	.label_1055
.label_1068:
	mov	dword ptr [rbx], 0xffffffff
	mov	byte ptr [r14], 0
	cmp	dword ptr [rip + follow_mode],  1
	sete	al
	and	al, byte ptr [rip + reopen_inaccessible_files]
	xor	al, 1
	mov	byte ptr [r12 + 0x34], al
	test	r13b, r13b
	jne	.label_1061
	cmp	r15d, -1
	je	.label_1028
.label_1061:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_1069
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	mov	rsi, qword ptr [r12]
	cmp	byte ptr [rsi], 0x2d
	jne	.label_1072
	cmp	byte ptr [rsi + 1], 0
	jne	.label_1072
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_119
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
.label_1072:
	mov	edi, 4
	call	quotearg_style
	mov	rbx, rax
	mov	r8d, OFFSET FLAT:label_26
	cmp	byte ptr [r12 + 0x34], 0
	je	.label_1027
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_320
	mov	edx, 5
	call	dcgettext
	mov	r8, rax
.label_1027:
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rbp
	mov	rcx, rbx
	call	error
	jmp	.label_1041
.label_1029:
	mov	dword ptr [rbx], 0xffffffff
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_1042
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	rsi, qword ptr [r12]
	cmp	byte ptr [rsi], 0x2d
	jne	.label_1048
	cmp	byte ptr [rsi + 1], 0
	jne	.label_1048
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_119
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
.label_1048:
	mov	edi, 4
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rbx
	call	error
	mov	word ptr [r12 + 0x34], 0x101
.label_1041:
	mov	rdi, qword ptr [rsp]
.label_1028:
	mov	rbp, qword ptr [r12]
	cmp	byte ptr [rbp], 0x2d
	jne	.label_1064
	cmp	byte ptr [rbp + 1], 0
	jne	.label_1064
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_119
	mov	edx, 5
	call	dcgettext
	mov	rdi, qword ptr [rsp]
	mov	rbp, rax
.label_1064:
	lea	eax, [rdi + 1]
	cmp	eax, 2
	jb	.label_1071
	call	close
	mov	rcx, qword ptr [rsp]
	test	eax, eax
	je	.label_1071
	mov	r14, rcx
	call	__errno_location
	mov	r15d, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_155
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	edi, 4
	mov	rsi, rbp
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, r15d
	mov	rdx, rbx
	mov	r8d, r14d
	call	error
.label_1071:
	mov	ebp, dword ptr [r12 + 0x38]
	mov	rbx, qword ptr [r12]
	cmp	byte ptr [rbx], 0x2d
	jne	.label_1033
	cmp	byte ptr [rbx + 1], 0
	jne	.label_1033
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_119
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
.label_1033:
	lea	eax, [rbp + 1]
	cmp	eax, 2
	jb	.label_1044
	mov	edi, ebp
	call	close
	test	eax, eax
	je	.label_1044
	call	__errno_location
	mov	r14d, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_155
	mov	edx, 5
	call	dcgettext
	mov	r15, rax
	mov	edi, 4
	mov	rsi, rbx
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, r14d
	mov	rdx, r15
	mov	r8d, ebp
	call	error
.label_1044:
	mov	dword ptr [r12 + 0x38], 0xffffffff
.label_1030:
	add	rsp, 0xa8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_1031:
	cmp	dword ptr [r12 + 0x38], -1
	jne	.label_1067
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_1053
	jmp	.label_1054
.label_1046:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_1074
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	rsi, qword ptr [r12]
	cmp	byte ptr [rsi], 0x2d
	jne	.label_1043
	cmp	byte ptr [rsi + 1], 0
	jne	.label_1043
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_119
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
.label_1043:
	mov	edi, 4
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rbx
	call	error
	mov	r15d, dword ptr [r12 + 0x38]
	mov	rbx, qword ptr [r12]
	cmp	byte ptr [rbx], 0x2d
	jne	.label_1032
	cmp	byte ptr [rbx + 1], 0
	mov	rdi, qword ptr [rsp]
	jne	.label_1037
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_119
	mov	edx, 5
	call	dcgettext
	mov	rdi, qword ptr [rsp]
	mov	rbx, rax
	jmp	.label_1037
.label_1038:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_1049
.label_1054:
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	rsi, qword ptr [r12]
	cmp	byte ptr [rsi], 0x2d
	jne	.label_1056
	cmp	byte ptr [rsi + 1], 0
	jne	.label_1056
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_119
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
.label_1056:
	mov	edi, 4
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rbx
	call	error
.label_1045:
	mov	rdi, qword ptr [rsp]
.label_1035:
	movzx	eax, bpl
	mov	ecx, dword ptr [rsp + 0xc]
	test	cl, cl
	mov	ecx, 0xffffffff
	cmove	ecx, eax
	mov	dword ptr [r12 + 0x38], edi
	mov	qword ptr [r12 + 8], 0
	movups	xmm0, xmmword ptr [rsp + 0x68]
	movups	xmmword ptr [r12 + 0x10], xmm0
	movaps	xmm0, xmmword ptr [rsp + 0x10]
	movups	xmmword ptr [r12 + 0x20], xmm0
	mov	eax, dword ptr [rsp + 0x28]
	mov	dword ptr [r12 + 0x30], eax
	mov	dword ptr [r12 + 0x40], ecx
	mov	qword ptr [r12 + 0x58], 0
	mov	byte ptr [r12 + 0x34], 0
	mov	rcx, qword ptr [r12]
	cmp	byte ptr [rcx], 0x2d
	jne	.label_1039
	cmp	byte ptr [rcx + 1], 0
	jne	.label_1039
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_119
	mov	edx, 5
	call	dcgettext
	mov	rdi, qword ptr [rsp]
	mov	rcx, rax
.label_1039:
	xor	esi, esi
	xor	edx, edx
	call	xlseek
	jmp	.label_1030
.label_1032:
	mov	rdi, qword ptr [rsp]
.label_1037:
	lea	eax, [r15 + 1]
	cmp	eax, 2
	jb	.label_1035
	mov	edi, r15d
	call	close
	mov	rdi, qword ptr [rsp]
	test	eax, eax
	je	.label_1035
	call	__errno_location
	mov	r14d, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_155
	mov	edx, 5
	call	dcgettext
	mov	r13, rax
	mov	edi, 4
	mov	rsi, rbx
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, r14d
	mov	rdx, r13
	mov	r8d, r15d
	call	error
	jmp	.label_1045
.label_1050:
	mov	rdi, qword ptr [rsp]
.label_1055:
	lea	eax, [rdi + 1]
	cmp	eax, 2
	jb	.label_1030
	call	close
	mov	rcx, qword ptr [rsp]
	test	eax, eax
	je	.label_1030
	mov	r14, rcx
	call	__errno_location
	mov	r15d, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_155
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	mov	edi, 4
	mov	rsi, rbx
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, r15d
	mov	rdx, rbp
	mov	r8d, r14d
	call	error
	jmp	.label_1030
.label_1051:
	mov	edi, OFFSET FLAT:label_1025
	mov	esi, OFFSET FLAT:label_110
	mov	edx, 0x3df
	mov	ecx, OFFSET FLAT:label_1026
	call	__assert_fail
.label_1067:
	mov	edi, OFFSET FLAT:label_1034
	mov	esi, OFFSET FLAT:label_110
	mov	edx, 0x42c
	mov	ecx, OFFSET FLAT:label_1026
	call	__assert_fail
	.section	.text
	.align	32
	#Procedure 0x40b235
	.globl sub_40b235
	.type sub_40b235, @function
sub_40b235:

	nop	word ptr cs:[rax + rax]
.label_1076:
	call	abort
	.section	.text
	.align	32
	#Procedure 0x40b245
	.globl sub_40b245
	.type sub_40b245, @function
sub_40b245:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40b249
	.globl quotearg_custom_mem
	.type quotearg_custom_mem, @function
quotearg_custom_mem:

	sub	rsp, 0x38
	mov	rax, qword ptr [rip + label_9]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0, xmmword ptr [rip + label_10]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_11]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rdi, rdi
	je	.label_1076
	test	rsi, rsi
	je	.label_1076
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
	.section	.text
	.align	32
	#Procedure 0x40b2b0

	.globl version_etc
	.type version_etc, @function
version_etc:
	sub	rsp, 0xd8
	test	al, al
	je	.label_1077
	movaps	xmmword ptr [rsp + 0x50], xmm0
	movaps	xmmword ptr [rsp + 0x60], xmm1
	movaps	xmmword ptr [rsp + 0x70], xmm2
	movaps	xmmword ptr [rsp + 0x80], xmm3
	movaps	xmmword ptr [rsp + 0x90], xmm4
	movaps	xmmword ptr [rsp + 0xa0], xmm5
	movaps	xmmword ptr [rsp + 0xb0], xmm6
	movaps	xmmword ptr [rsp + 0xc0], xmm7
.label_1077:
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
	.align	32
	#Procedure 0x40b333
	.globl sub_40b333
	.type sub_40b333, @function
sub_40b333:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40b340
	.globl quotearg_n_custom
	.type quotearg_n_custom, @function
quotearg_n_custom:

	sub	rsp, 0x38
	mov	rax, qword ptr [rip + label_9]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0, xmmword ptr [rip + label_10]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_11]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rsi, rsi
	je	.label_1078
	test	rdx, rdx
	je	.label_1078
	mov	qword ptr [rsp + 0x28], rsi
	mov	qword ptr [rsp + 0x30], rdx
	lea	rax, [rsp]
	mov	rdx, -1
	mov	rsi, rcx
	mov	rcx, rax
	call	quotearg_n_options
	add	rsp, 0x38
	ret	
.label_1078:
	call	abort
	.section	.text
	.align	32
	#Procedure 0x40b3ae
	.globl sub_40b3ae
	.type sub_40b3ae, @function
sub_40b3ae:

	nop	
	.section	.text
	.align	32
	#Procedure 0x40b3b0
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
	je	.label_1079
	mov	qword ptr [rax], rbx
.label_1079:
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
	.align	32
	#Procedure 0x40b49c
	.globl sub_40b49c
	.type sub_40b49c, @function
sub_40b49c:

	nop	dword ptr [rax]
.label_1080:
	call	xalloc_die
.label_1081:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_1082
	test	rax, rax
	je	.label_1080
.label_1082:
	pop	rbx
	ret	
	.section	.text
	.align	32
	#Procedure 0x40b4b9

	.globl xrealloc
	.type xrealloc, @function
xrealloc:
	push	rbx
	mov	rbx, rsi
	test	rdi, rdi
	je	.label_1081
	test	rbx, rbx
	jne	.label_1081
	call	free
	xor	eax, eax
	pop	rbx
	ret	
	.section	.text
	.align	32
	#Procedure 0x40b4d0
	.globl version_etc_ar
	.type version_etc_ar, @function
version_etc_ar:

	mov	r9, -1
	nop	word ptr [rax + rax]
.label_1083:
	cmp	qword ptr [r8 + r9*8 + 8], 0
	lea	r9, [r9 + 1]
	jne	.label_1083
	jmp	version_etc_arn
	.section	.text
	.align	32
	#Procedure 0x40b4f1
	.globl sub_40b4f1
	.type sub_40b4f1, @function
sub_40b4f1:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40b500
	.globl hash_reset_tuning
	.type hash_reset_tuning, @function
hash_reset_tuning:

	mov	eax, dword ptr [rip + label_1084]
	mov	dword ptr [rdi + 0x10], eax
	movups	xmm0, xmmword ptr [rip + default_tuning]
	movups	xmmword ptr [rdi], xmm0
	ret	
	.section	.text
	.align	32
	#Procedure 0x40b514
	.globl sub_40b514
	.type sub_40b514, @function
sub_40b514:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40b520
	.globl quotearg_char
	.type quotearg_char, @function
quotearg_char:

	sub	rsp, 0x38
	mov	ecx, esi
	mov	rax, rdi
	mov	rdx, qword ptr [rip + label_9]
	mov	qword ptr [rsp + 0x30], rdx
	movups	xmm0, xmmword ptr [rip + label_10]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_11]
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
	.align	32
	#Procedure 0x40b58f
	.globl sub_40b58f
	.type sub_40b58f, @function
sub_40b58f:

	nop	
	.section	.text
	.align	32
	#Procedure 0x40b590
	.globl hash_get_max_bucket_length
	.type hash_get_max_bucket_length, @function
hash_get_max_bucket_length:

	mov	rcx, qword ptr [rdi]
	mov	rdi, qword ptr [rdi + 8]
	xor	eax, eax
	cmp	rcx, rdi
	jae	.label_1087
	mov	rax, rcx
	not	rax
	add	rdi, rax
	shr	rdi, 4
	lea	rsi, [rdi + 1]
	mov	r8d, esi
	and	r8d, 1
	xor	eax, eax
	test	rdi, rdi
	je	.label_1086
	sub	rsi, r8
	xor	eax, eax
	nop	word ptr cs:[rax + rax]
.label_1092:
	cmp	qword ptr [rcx], 0
	je	.label_1090
	xor	edi, edi
	mov	rdx, rcx
	nop	dword ptr [rax + rax]
.label_1085:
	mov	rdx, qword ptr [rdx + 8]
	inc	rdi
	test	rdx, rdx
	jne	.label_1085
	cmp	rdi, rax
	cmova	rax, rdi
.label_1090:
	cmp	qword ptr [rcx + 0x10], 0
	je	.label_1089
	lea	rdx, [rcx + 0x10]
	xor	edi, edi
.label_1088:
	mov	rdx, qword ptr [rdx + 8]
	inc	rdi
	test	rdx, rdx
	jne	.label_1088
	cmp	rdi, rax
	cmova	rax, rdi
.label_1089:
	add	rcx, 0x20
	add	rsi, -2
	jne	.label_1092
.label_1086:
	test	r8, r8
	je	.label_1087
	cmp	qword ptr [rcx], 0
	je	.label_1087
	xor	edx, edx
	nop	word ptr [rax + rax]
.label_1091:
	mov	rcx, qword ptr [rcx + 8]
	inc	rdx
	test	rcx, rcx
	jne	.label_1091
	cmp	rdx, rax
	cmova	rax, rdx
.label_1087:
	ret	
	.section	.text
	.align	32
	#Procedure 0x40b644
	.globl sub_40b644
	.type sub_40b644, @function
sub_40b644:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40b650

	.globl xdectoumax
	.type xdectoumax, @function
xdectoumax:
	push	rax
	mov	r10, r8
	mov	rax, rcx
	mov	rcx, rdx
	mov	rdx, rsi
	mov	dword ptr [rsp], r9d
	mov	esi, 0xa
	mov	r8, rax
	mov	r9, r10
	call	xnumtoumax
	pop	rcx
	ret	
	.section	.text
	.align	32
	#Procedure 0x40b673
	.globl sub_40b673
	.type sub_40b673, @function
sub_40b673:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40b680

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
	jb	.label_1093
	call	__errno_location
	mov	dword ptr [rax], 0x16
	mov	eax, 0xffffffff
	jmp	.label_1094
.label_1095:
	mov	qword ptr [rsp], rbx
	lea	rdi, [rsp]
	mov	rsi, r15
	call	nanosleep
.label_1094:
	add	rsp, 0x10
	pop	rbx
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	32
	#Procedure 0x40b6c5
	.globl sub_40b6c5
	.type sub_40b6c5, @function
sub_40b6c5:

	nop	word ptr cs:[rax + rax]
.label_1093:
	mov	rbx, qword ptr [rdi]
	lea	r14, [rsp]
	nop	word ptr cs:[rax + rax]
.label_1096:
	mov	qword ptr [rsp + 8], rcx
	cmp	rbx, 0x1fa401
	jl	.label_1095
	mov	qword ptr [rsp], 0x1fa400
	mov	rdi, r14
	mov	rsi, r15
	call	nanosleep
	add	rbx, -0x1fa400
	test	eax, eax
	mov	ecx, 0
	je	.label_1096
	test	r15, r15
	je	.label_1094
	add	qword ptr [r15], rbx
	jmp	.label_1094
	.section	.text
	.align	32
	#Procedure 0x40b720

	.globl xalloc_die
	.type xalloc_die, @function
xalloc_die:
	push	rbx
	mov	ebx, dword ptr [rip + exit_failure]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_1097
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	esi, esi
	mov	edx, OFFSET FLAT:label_156
	xor	eax, eax
	mov	edi, ebx
	call	error
	call	abort
	.section	.text
	.align	32
	#Procedure 0x40b7b5
	.globl sub_40b7b5
	.type sub_40b7b5, @function
sub_40b7b5:

	nop	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40b7c2
	.globl sub_40b7c2
	.type sub_40b7c2, @function
sub_40b7c2:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40b7e6
	.globl sub_40b7e6
	.type sub_40b7e6, @function
sub_40b7e6:

	nop	word ptr cs:[rax + rax]
